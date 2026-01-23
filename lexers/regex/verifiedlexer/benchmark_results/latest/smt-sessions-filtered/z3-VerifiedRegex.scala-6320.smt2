; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!320498 () Bool)

(assert start!320498)

(declare-fun b!3449897 () Bool)

(declare-fun b_free!89545 () Bool)

(declare-fun b_next!90249 () Bool)

(assert (=> b!3449897 (= b_free!89545 (not b_next!90249))))

(declare-fun tp!1076218 () Bool)

(declare-fun b_and!242211 () Bool)

(assert (=> b!3449897 (= tp!1076218 b_and!242211)))

(declare-fun b_free!89547 () Bool)

(declare-fun b_next!90251 () Bool)

(assert (=> b!3449897 (= b_free!89547 (not b_next!90251))))

(declare-fun tp!1076230 () Bool)

(declare-fun b_and!242213 () Bool)

(assert (=> b!3449897 (= tp!1076230 b_and!242213)))

(declare-fun b!3449883 () Bool)

(declare-fun b_free!89549 () Bool)

(declare-fun b_next!90253 () Bool)

(assert (=> b!3449883 (= b_free!89549 (not b_next!90253))))

(declare-fun tp!1076219 () Bool)

(declare-fun b_and!242215 () Bool)

(assert (=> b!3449883 (= tp!1076219 b_and!242215)))

(declare-fun b_free!89551 () Bool)

(declare-fun b_next!90255 () Bool)

(assert (=> b!3449883 (= b_free!89551 (not b_next!90255))))

(declare-fun tp!1076224 () Bool)

(declare-fun b_and!242217 () Bool)

(assert (=> b!3449883 (= tp!1076224 b_and!242217)))

(declare-fun b!3449880 () Bool)

(declare-fun b_free!89553 () Bool)

(declare-fun b_next!90257 () Bool)

(assert (=> b!3449880 (= b_free!89553 (not b_next!90257))))

(declare-fun tp!1076223 () Bool)

(declare-fun b_and!242219 () Bool)

(assert (=> b!3449880 (= tp!1076223 b_and!242219)))

(declare-fun b_free!89555 () Bool)

(declare-fun b_next!90259 () Bool)

(assert (=> b!3449880 (= b_free!89555 (not b_next!90259))))

(declare-fun tp!1076222 () Bool)

(declare-fun b_and!242221 () Bool)

(assert (=> b!3449880 (= tp!1076222 b_and!242221)))

(declare-fun b!3449873 () Bool)

(declare-fun e!2136953 () Bool)

(declare-fun e!2136952 () Bool)

(assert (=> b!3449873 (= e!2136953 e!2136952)))

(declare-fun res!1391193 () Bool)

(assert (=> b!3449873 (=> res!1391193 e!2136952)))

(declare-datatypes ((C!20544 0))(
  ( (C!20545 (val!12320 Int)) )
))
(declare-datatypes ((Regex!10179 0))(
  ( (ElementMatch!10179 (c!590466 C!20544)) (Concat!15829 (regOne!20870 Regex!10179) (regTwo!20870 Regex!10179)) (EmptyExpr!10179) (Star!10179 (reg!10508 Regex!10179)) (EmptyLang!10179) (Union!10179 (regOne!20871 Regex!10179) (regTwo!20871 Regex!10179)) )
))
(declare-datatypes ((List!37202 0))(
  ( (Nil!37078) (Cons!37078 (h!42498 (_ BitVec 16)) (t!271611 List!37202)) )
))
(declare-datatypes ((TokenValue!5650 0))(
  ( (FloatLiteralValue!11300 (text!39995 List!37202)) (TokenValueExt!5649 (__x!23517 Int)) (Broken!28250 (value!174904 List!37202)) (Object!5773) (End!5650) (Def!5650) (Underscore!5650) (Match!5650) (Else!5650) (Error!5650) (Case!5650) (If!5650) (Extends!5650) (Abstract!5650) (Class!5650) (Val!5650) (DelimiterValue!11300 (del!5710 List!37202)) (KeywordValue!5656 (value!174905 List!37202)) (CommentValue!11300 (value!174906 List!37202)) (WhitespaceValue!11300 (value!174907 List!37202)) (IndentationValue!5650 (value!174908 List!37202)) (String!41583) (Int32!5650) (Broken!28251 (value!174909 List!37202)) (Boolean!5651) (Unit!52397) (OperatorValue!5653 (op!5710 List!37202)) (IdentifierValue!11300 (value!174910 List!37202)) (IdentifierValue!11301 (value!174911 List!37202)) (WhitespaceValue!11301 (value!174912 List!37202)) (True!11300) (False!11300) (Broken!28252 (value!174913 List!37202)) (Broken!28253 (value!174914 List!37202)) (True!11301) (RightBrace!5650) (RightBracket!5650) (Colon!5650) (Null!5650) (Comma!5650) (LeftBracket!5650) (False!11301) (LeftBrace!5650) (ImaginaryLiteralValue!5650 (text!39996 List!37202)) (StringLiteralValue!16950 (value!174915 List!37202)) (EOFValue!5650 (value!174916 List!37202)) (IdentValue!5650 (value!174917 List!37202)) (DelimiterValue!11301 (value!174918 List!37202)) (DedentValue!5650 (value!174919 List!37202)) (NewLineValue!5650 (value!174920 List!37202)) (IntegerValue!16950 (value!174921 (_ BitVec 32)) (text!39997 List!37202)) (IntegerValue!16951 (value!174922 Int) (text!39998 List!37202)) (Times!5650) (Or!5650) (Equal!5650) (Minus!5650) (Broken!28254 (value!174923 List!37202)) (And!5650) (Div!5650) (LessEqual!5650) (Mod!5650) (Concat!15830) (Not!5650) (Plus!5650) (SpaceValue!5650 (value!174924 List!37202)) (IntegerValue!16952 (value!174925 Int) (text!39999 List!37202)) (StringLiteralValue!16951 (text!40000 List!37202)) (FloatLiteralValue!11301 (text!40001 List!37202)) (BytesLiteralValue!5650 (value!174926 List!37202)) (CommentValue!11301 (value!174927 List!37202)) (StringLiteralValue!16952 (value!174928 List!37202)) (ErrorTokenValue!5650 (msg!5711 List!37202)) )
))
(declare-datatypes ((List!37203 0))(
  ( (Nil!37079) (Cons!37079 (h!42499 C!20544) (t!271612 List!37203)) )
))
(declare-datatypes ((IArray!22435 0))(
  ( (IArray!22436 (innerList!11275 List!37203)) )
))
(declare-datatypes ((Conc!11215 0))(
  ( (Node!11215 (left!28915 Conc!11215) (right!29245 Conc!11215) (csize!22660 Int) (cheight!11426 Int)) (Leaf!17536 (xs!14389 IArray!22435) (csize!22661 Int)) (Empty!11215) )
))
(declare-datatypes ((BalanceConc!22044 0))(
  ( (BalanceConc!22045 (c!590467 Conc!11215)) )
))
(declare-datatypes ((String!41584 0))(
  ( (String!41585 (value!174929 String)) )
))
(declare-datatypes ((TokenValueInjection!10728 0))(
  ( (TokenValueInjection!10729 (toValue!7640 Int) (toChars!7499 Int)) )
))
(declare-datatypes ((Rule!10640 0))(
  ( (Rule!10641 (regex!5420 Regex!10179) (tag!6018 String!41584) (isSeparator!5420 Bool) (transformation!5420 TokenValueInjection!10728)) )
))
(declare-datatypes ((Token!10206 0))(
  ( (Token!10207 (value!174930 TokenValue!5650) (rule!8000 Rule!10640) (size!28100 Int) (originalCharacters!6134 List!37203)) )
))
(declare-datatypes ((List!37204 0))(
  ( (Nil!37080) (Cons!37080 (h!42500 Token!10206) (t!271613 List!37204)) )
))
(declare-fun tokens!494 () List!37204)

(assert (=> b!3449873 (= res!1391193 (or (isSeparator!5420 (rule!8000 (h!42500 tokens!494))) (isSeparator!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))))

(declare-datatypes ((Unit!52398 0))(
  ( (Unit!52399) )
))
(declare-fun lt!1170949 () Unit!52398)

(declare-fun lambda!121525 () Int)

(declare-fun forallContained!1367 (List!37204 Int Token!10206) Unit!52398)

(assert (=> b!3449873 (= lt!1170949 (forallContained!1367 tokens!494 lambda!121525 (h!42500 (t!271613 tokens!494))))))

(declare-fun lt!1170950 () Unit!52398)

(assert (=> b!3449873 (= lt!1170950 (forallContained!1367 tokens!494 lambda!121525 (h!42500 tokens!494)))))

(declare-fun b!3449874 () Bool)

(declare-fun res!1391181 () Bool)

(declare-fun e!2136963 () Bool)

(assert (=> b!3449874 (=> (not res!1391181) (not e!2136963))))

(get-info :version)

(assert (=> b!3449874 (= res!1391181 (and (not ((_ is Nil!37080) tokens!494)) (not ((_ is Nil!37080) (t!271613 tokens!494)))))))

(declare-fun e!2136956 () Bool)

(declare-fun e!2136958 () Bool)

(declare-fun tp!1076229 () Bool)

(declare-fun b!3449875 () Bool)

(declare-fun inv!50235 (String!41584) Bool)

(declare-fun inv!50238 (TokenValueInjection!10728) Bool)

(assert (=> b!3449875 (= e!2136958 (and tp!1076229 (inv!50235 (tag!6018 (rule!8000 (h!42500 tokens!494)))) (inv!50238 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) e!2136956))))

(declare-fun b!3449876 () Bool)

(declare-fun e!2136976 () Bool)

(declare-fun e!2136960 () Bool)

(assert (=> b!3449876 (= e!2136976 e!2136960)))

(declare-fun res!1391182 () Bool)

(assert (=> b!3449876 (=> res!1391182 e!2136960)))

(declare-fun separatorToken!241 () Token!10206)

(declare-fun lt!1170948 () C!20544)

(declare-fun contains!6842 (List!37203 C!20544) Bool)

(declare-fun usedCharacters!654 (Regex!10179) List!37203)

(assert (=> b!3449876 (= res!1391182 (contains!6842 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))) lt!1170948))))

(declare-fun lt!1170945 () List!37203)

(declare-fun head!7289 (List!37203) C!20544)

(assert (=> b!3449876 (= lt!1170948 (head!7289 lt!1170945))))

(declare-fun e!2136971 () Bool)

(assert (=> b!3449876 e!2136971))

(declare-fun res!1391188 () Bool)

(assert (=> b!3449876 (=> (not res!1391188) (not e!2136971))))

(declare-datatypes ((Option!7485 0))(
  ( (None!7484) (Some!7484 (v!36758 Rule!10640)) )
))
(declare-fun lt!1170943 () Option!7485)

(declare-fun isDefined!5774 (Option!7485) Bool)

(assert (=> b!3449876 (= res!1391188 (isDefined!5774 lt!1170943))))

(declare-datatypes ((LexerInterface!5009 0))(
  ( (LexerInterfaceExt!5006 (__x!23518 Int)) (Lexer!5007) )
))
(declare-fun thiss!18206 () LexerInterface!5009)

(declare-datatypes ((List!37205 0))(
  ( (Nil!37081) (Cons!37081 (h!42501 Rule!10640) (t!271614 List!37205)) )
))
(declare-fun rules!2135 () List!37205)

(declare-fun getRuleFromTag!1063 (LexerInterface!5009 List!37205 String!41584) Option!7485)

(assert (=> b!3449876 (= lt!1170943 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))

(declare-fun lt!1170935 () Unit!52398)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1063 (LexerInterface!5009 List!37205 List!37203 Token!10206) Unit!52398)

(assert (=> b!3449876 (= lt!1170935 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1063 thiss!18206 rules!2135 lt!1170945 separatorToken!241))))

(declare-fun lt!1170946 () BalanceConc!22044)

(declare-fun lt!1170951 () List!37203)

(declare-datatypes ((tuple2!36760 0))(
  ( (tuple2!36761 (_1!21514 Token!10206) (_2!21514 List!37203)) )
))
(declare-datatypes ((Option!7486 0))(
  ( (None!7485) (Some!7485 (v!36759 tuple2!36760)) )
))
(declare-fun maxPrefixOneRule!1716 (LexerInterface!5009 Rule!10640 List!37203) Option!7486)

(declare-fun apply!8691 (TokenValueInjection!10728 BalanceConc!22044) TokenValue!5650)

(declare-fun size!28101 (List!37203) Int)

(assert (=> b!3449876 (= (maxPrefixOneRule!1716 thiss!18206 (rule!8000 (h!42500 tokens!494)) lt!1170951) (Some!7485 (tuple2!36761 (Token!10207 (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) lt!1170946) (rule!8000 (h!42500 tokens!494)) (size!28101 lt!1170951) lt!1170951) Nil!37079)))))

(declare-fun lt!1170932 () Unit!52398)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!809 (LexerInterface!5009 List!37205 List!37203 List!37203 List!37203 Rule!10640) Unit!52398)

(assert (=> b!3449876 (= lt!1170932 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!809 thiss!18206 rules!2135 lt!1170951 lt!1170951 Nil!37079 (rule!8000 (h!42500 tokens!494))))))

(declare-fun e!2136959 () Bool)

(assert (=> b!3449876 e!2136959))

(declare-fun res!1391191 () Bool)

(assert (=> b!3449876 (=> (not res!1391191) (not e!2136959))))

(declare-fun lt!1170929 () Option!7485)

(assert (=> b!3449876 (= res!1391191 (isDefined!5774 lt!1170929))))

(assert (=> b!3449876 (= lt!1170929 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun lt!1170930 () Unit!52398)

(assert (=> b!3449876 (= lt!1170930 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1063 thiss!18206 rules!2135 lt!1170951 (h!42500 tokens!494)))))

(declare-fun lt!1170940 () Unit!52398)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!998 (LexerInterface!5009 List!37205 List!37204 Token!10206) Unit!52398)

(assert (=> b!3449876 (= lt!1170940 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!998 thiss!18206 rules!2135 tokens!494 (h!42500 tokens!494)))))

(declare-fun b!3449877 () Bool)

(declare-fun e!2136970 () Bool)

(assert (=> b!3449877 (= e!2136970 e!2136976)))

(declare-fun res!1391190 () Bool)

(assert (=> b!3449877 (=> res!1391190 e!2136976)))

(declare-fun lt!1170939 () List!37203)

(declare-fun lt!1170942 () List!37203)

(assert (=> b!3449877 (= res!1391190 (not (= lt!1170939 lt!1170942)))))

(declare-fun lt!1170952 () List!37203)

(assert (=> b!3449877 (= lt!1170952 lt!1170942)))

(declare-fun lt!1170944 () List!37203)

(declare-fun ++!9125 (List!37203 List!37203) List!37203)

(assert (=> b!3449877 (= lt!1170942 (++!9125 lt!1170951 lt!1170944))))

(declare-fun lt!1170936 () Unit!52398)

(declare-fun lt!1170933 () List!37203)

(declare-fun lemmaConcatAssociativity!1936 (List!37203 List!37203 List!37203) Unit!52398)

(assert (=> b!3449877 (= lt!1170936 (lemmaConcatAssociativity!1936 lt!1170951 lt!1170945 lt!1170933))))

(declare-fun tp!1076221 () Bool)

(declare-fun b!3449878 () Bool)

(declare-fun e!2136968 () Bool)

(declare-fun e!2136967 () Bool)

(assert (=> b!3449878 (= e!2136968 (and tp!1076221 (inv!50235 (tag!6018 (h!42501 rules!2135))) (inv!50238 (transformation!5420 (h!42501 rules!2135))) e!2136967))))

(declare-fun b!3449879 () Bool)

(declare-fun res!1391180 () Bool)

(assert (=> b!3449879 (=> res!1391180 e!2136960)))

(declare-fun validRegex!4634 (Regex!10179) Bool)

(assert (=> b!3449879 (= res!1391180 (not (validRegex!4634 (regex!5420 (rule!8000 separatorToken!241)))))))

(assert (=> b!3449880 (= e!2136967 (and tp!1076223 tp!1076222))))

(declare-fun b!3449881 () Bool)

(declare-fun res!1391198 () Bool)

(assert (=> b!3449881 (=> (not res!1391198) (not e!2136963))))

(declare-datatypes ((IArray!22437 0))(
  ( (IArray!22438 (innerList!11276 List!37204)) )
))
(declare-datatypes ((Conc!11216 0))(
  ( (Node!11216 (left!28916 Conc!11216) (right!29246 Conc!11216) (csize!22662 Int) (cheight!11427 Int)) (Leaf!17537 (xs!14390 IArray!22437) (csize!22663 Int)) (Empty!11216) )
))
(declare-datatypes ((BalanceConc!22046 0))(
  ( (BalanceConc!22047 (c!590468 Conc!11216)) )
))
(declare-fun rulesProduceEachTokenIndividually!1460 (LexerInterface!5009 List!37205 BalanceConc!22046) Bool)

(declare-fun seqFromList!3893 (List!37204) BalanceConc!22046)

(assert (=> b!3449881 (= res!1391198 (rulesProduceEachTokenIndividually!1460 thiss!18206 rules!2135 (seqFromList!3893 tokens!494)))))

(declare-fun b!3449882 () Bool)

(declare-fun res!1391189 () Bool)

(assert (=> b!3449882 (=> (not res!1391189) (not e!2136963))))

(assert (=> b!3449882 (= res!1391189 (isSeparator!5420 (rule!8000 separatorToken!241)))))

(assert (=> b!3449883 (= e!2136956 (and tp!1076219 tp!1076224))))

(declare-fun b!3449884 () Bool)

(declare-fun e!2136964 () Bool)

(declare-fun e!2136974 () Bool)

(assert (=> b!3449884 (= e!2136964 e!2136974)))

(declare-fun res!1391184 () Bool)

(assert (=> b!3449884 (=> res!1391184 e!2136974)))

(declare-fun lt!1170937 () List!37203)

(declare-fun lt!1170947 () List!37203)

(assert (=> b!3449884 (= res!1391184 (or (not (= lt!1170947 lt!1170951)) (not (= lt!1170937 lt!1170951))))))

(declare-fun list!13483 (BalanceConc!22044) List!37203)

(declare-fun charsOf!3434 (Token!10206) BalanceConc!22044)

(assert (=> b!3449884 (= lt!1170951 (list!13483 (charsOf!3434 (h!42500 tokens!494))))))

(declare-fun b!3449885 () Bool)

(declare-fun tp!1076225 () Bool)

(declare-fun e!2136972 () Bool)

(declare-fun e!2136957 () Bool)

(declare-fun inv!50239 (Token!10206) Bool)

(assert (=> b!3449885 (= e!2136957 (and (inv!50239 (h!42500 tokens!494)) e!2136972 tp!1076225))))

(declare-fun tp!1076226 () Bool)

(declare-fun b!3449886 () Bool)

(declare-fun inv!21 (TokenValue!5650) Bool)

(assert (=> b!3449886 (= e!2136972 (and (inv!21 (value!174930 (h!42500 tokens!494))) e!2136958 tp!1076226))))

(declare-fun b!3449887 () Bool)

(declare-fun e!2136973 () Bool)

(assert (=> b!3449887 (= e!2136952 e!2136973)))

(declare-fun res!1391185 () Bool)

(assert (=> b!3449887 (=> res!1391185 e!2136973)))

(declare-fun printWithSeparatorTokenList!296 (LexerInterface!5009 List!37204 Token!10206) List!37203)

(assert (=> b!3449887 (= res!1391185 (not (= lt!1170933 (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(assert (=> b!3449887 (= lt!1170944 (++!9125 lt!1170945 lt!1170933))))

(assert (=> b!3449887 (= lt!1170945 (list!13483 (charsOf!3434 separatorToken!241)))))

(assert (=> b!3449887 (= lt!1170933 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241))))

(assert (=> b!3449887 (= lt!1170939 (printWithSeparatorTokenList!296 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3449888 () Bool)

(assert (=> b!3449888 (= e!2136974 e!2136953)))

(declare-fun res!1391202 () Bool)

(assert (=> b!3449888 (=> res!1391202 e!2136953)))

(declare-fun isEmpty!21394 (BalanceConc!22046) Bool)

(declare-datatypes ((tuple2!36762 0))(
  ( (tuple2!36763 (_1!21515 BalanceConc!22046) (_2!21515 BalanceConc!22044)) )
))
(declare-fun lex!2335 (LexerInterface!5009 List!37205 BalanceConc!22044) tuple2!36762)

(assert (=> b!3449888 (= res!1391202 (isEmpty!21394 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946))))))

(declare-fun seqFromList!3894 (List!37203) BalanceConc!22044)

(assert (=> b!3449888 (= lt!1170946 (seqFromList!3894 lt!1170951))))

(declare-fun e!2136977 () Bool)

(declare-fun b!3449889 () Bool)

(declare-fun tp!1076220 () Bool)

(declare-fun e!2136951 () Bool)

(assert (=> b!3449889 (= e!2136977 (and tp!1076220 (inv!50235 (tag!6018 (rule!8000 separatorToken!241))) (inv!50238 (transformation!5420 (rule!8000 separatorToken!241))) e!2136951))))

(declare-fun b!3449872 () Bool)

(declare-fun e!2136961 () Bool)

(assert (=> b!3449872 (= e!2136959 e!2136961)))

(declare-fun res!1391194 () Bool)

(assert (=> b!3449872 (=> (not res!1391194) (not e!2136961))))

(declare-fun lt!1170934 () Rule!10640)

(declare-fun matchR!4763 (Regex!10179 List!37203) Bool)

(assert (=> b!3449872 (= res!1391194 (matchR!4763 (regex!5420 lt!1170934) lt!1170951))))

(declare-fun get!11855 (Option!7485) Rule!10640)

(assert (=> b!3449872 (= lt!1170934 (get!11855 lt!1170929))))

(declare-fun res!1391200 () Bool)

(assert (=> start!320498 (=> (not res!1391200) (not e!2136963))))

(assert (=> start!320498 (= res!1391200 ((_ is Lexer!5007) thiss!18206))))

(assert (=> start!320498 e!2136963))

(assert (=> start!320498 true))

(declare-fun e!2136954 () Bool)

(assert (=> start!320498 e!2136954))

(assert (=> start!320498 e!2136957))

(declare-fun e!2136965 () Bool)

(assert (=> start!320498 (and (inv!50239 separatorToken!241) e!2136965)))

(declare-fun b!3449890 () Bool)

(declare-fun e!2136969 () Bool)

(declare-fun lt!1170938 () Rule!10640)

(assert (=> b!3449890 (= e!2136969 (= (rule!8000 separatorToken!241) lt!1170938))))

(declare-fun b!3449891 () Bool)

(assert (=> b!3449891 (= e!2136963 (not e!2136964))))

(declare-fun res!1391183 () Bool)

(assert (=> b!3449891 (=> res!1391183 e!2136964)))

(assert (=> b!3449891 (= res!1391183 (not (= lt!1170937 lt!1170947)))))

(declare-fun printList!1557 (LexerInterface!5009 List!37204) List!37203)

(assert (=> b!3449891 (= lt!1170947 (printList!1557 thiss!18206 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))

(declare-fun lt!1170941 () BalanceConc!22044)

(assert (=> b!3449891 (= lt!1170937 (list!13483 lt!1170941))))

(declare-fun lt!1170931 () BalanceConc!22046)

(declare-fun printTailRec!1504 (LexerInterface!5009 BalanceConc!22046 Int BalanceConc!22044) BalanceConc!22044)

(assert (=> b!3449891 (= lt!1170941 (printTailRec!1504 thiss!18206 lt!1170931 0 (BalanceConc!22045 Empty!11215)))))

(declare-fun print!2074 (LexerInterface!5009 BalanceConc!22046) BalanceConc!22044)

(assert (=> b!3449891 (= lt!1170941 (print!2074 thiss!18206 lt!1170931))))

(declare-fun singletonSeq!2516 (Token!10206) BalanceConc!22046)

(assert (=> b!3449891 (= lt!1170931 (singletonSeq!2516 (h!42500 tokens!494)))))

(declare-fun b!3449892 () Bool)

(declare-fun res!1391201 () Bool)

(assert (=> b!3449892 (=> (not res!1391201) (not e!2136963))))

(declare-fun rulesProduceIndividualToken!2501 (LexerInterface!5009 List!37205 Token!10206) Bool)

(assert (=> b!3449892 (= res!1391201 (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3449893 () Bool)

(declare-fun res!1391195 () Bool)

(assert (=> b!3449893 (=> (not res!1391195) (not e!2136963))))

(declare-fun isEmpty!21395 (List!37205) Bool)

(assert (=> b!3449893 (= res!1391195 (not (isEmpty!21395 rules!2135)))))

(declare-fun b!3449894 () Bool)

(declare-fun res!1391199 () Bool)

(assert (=> b!3449894 (=> (not res!1391199) (not e!2136963))))

(declare-fun rulesInvariant!4406 (LexerInterface!5009 List!37205) Bool)

(assert (=> b!3449894 (= res!1391199 (rulesInvariant!4406 thiss!18206 rules!2135))))

(declare-fun b!3449895 () Bool)

(assert (=> b!3449895 (= e!2136973 e!2136970)))

(declare-fun res!1391196 () Bool)

(assert (=> b!3449895 (=> res!1391196 e!2136970)))

(assert (=> b!3449895 (= res!1391196 (not (= lt!1170939 lt!1170952)))))

(assert (=> b!3449895 (= lt!1170952 (++!9125 (++!9125 lt!1170951 lt!1170945) lt!1170933))))

(declare-fun tp!1076227 () Bool)

(declare-fun b!3449896 () Bool)

(assert (=> b!3449896 (= e!2136965 (and (inv!21 (value!174930 separatorToken!241)) e!2136977 tp!1076227))))

(assert (=> b!3449897 (= e!2136951 (and tp!1076218 tp!1076230))))

(declare-fun b!3449898 () Bool)

(assert (=> b!3449898 (= e!2136971 e!2136969)))

(declare-fun res!1391187 () Bool)

(assert (=> b!3449898 (=> (not res!1391187) (not e!2136969))))

(assert (=> b!3449898 (= res!1391187 (matchR!4763 (regex!5420 lt!1170938) lt!1170945))))

(assert (=> b!3449898 (= lt!1170938 (get!11855 lt!1170943))))

(declare-fun b!3449899 () Bool)

(declare-fun res!1391197 () Bool)

(assert (=> b!3449899 (=> (not res!1391197) (not e!2136963))))

(declare-fun forall!7885 (List!37204 Int) Bool)

(assert (=> b!3449899 (= res!1391197 (forall!7885 tokens!494 lambda!121525))))

(declare-fun b!3449900 () Bool)

(assert (=> b!3449900 (= e!2136961 (= (rule!8000 (h!42500 tokens!494)) lt!1170934))))

(declare-fun b!3449901 () Bool)

(declare-fun tp!1076228 () Bool)

(assert (=> b!3449901 (= e!2136954 (and e!2136968 tp!1076228))))

(declare-fun b!3449902 () Bool)

(declare-fun res!1391192 () Bool)

(assert (=> b!3449902 (=> res!1391192 e!2136974)))

(assert (=> b!3449902 (= res!1391192 (not (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 tokens!494))))))

(declare-fun b!3449903 () Bool)

(declare-fun res!1391186 () Bool)

(assert (=> b!3449903 (=> (not res!1391186) (not e!2136963))))

(declare-fun sepAndNonSepRulesDisjointChars!1614 (List!37205 List!37205) Bool)

(assert (=> b!3449903 (= res!1391186 (sepAndNonSepRulesDisjointChars!1614 rules!2135 rules!2135))))

(declare-fun b!3449904 () Bool)

(assert (=> b!3449904 (= e!2136960 (contains!6842 lt!1170945 lt!1170948))))

(assert (= (and start!320498 res!1391200) b!3449893))

(assert (= (and b!3449893 res!1391195) b!3449894))

(assert (= (and b!3449894 res!1391199) b!3449881))

(assert (= (and b!3449881 res!1391198) b!3449892))

(assert (= (and b!3449892 res!1391201) b!3449882))

(assert (= (and b!3449882 res!1391189) b!3449899))

(assert (= (and b!3449899 res!1391197) b!3449903))

(assert (= (and b!3449903 res!1391186) b!3449874))

(assert (= (and b!3449874 res!1391181) b!3449891))

(assert (= (and b!3449891 (not res!1391183)) b!3449884))

(assert (= (and b!3449884 (not res!1391184)) b!3449902))

(assert (= (and b!3449902 (not res!1391192)) b!3449888))

(assert (= (and b!3449888 (not res!1391202)) b!3449873))

(assert (= (and b!3449873 (not res!1391193)) b!3449887))

(assert (= (and b!3449887 (not res!1391185)) b!3449895))

(assert (= (and b!3449895 (not res!1391196)) b!3449877))

(assert (= (and b!3449877 (not res!1391190)) b!3449876))

(assert (= (and b!3449876 res!1391191) b!3449872))

(assert (= (and b!3449872 res!1391194) b!3449900))

(assert (= (and b!3449876 res!1391188) b!3449898))

(assert (= (and b!3449898 res!1391187) b!3449890))

(assert (= (and b!3449876 (not res!1391182)) b!3449879))

(assert (= (and b!3449879 (not res!1391180)) b!3449904))

(assert (= b!3449878 b!3449880))

(assert (= b!3449901 b!3449878))

(assert (= (and start!320498 ((_ is Cons!37081) rules!2135)) b!3449901))

(assert (= b!3449875 b!3449883))

(assert (= b!3449886 b!3449875))

(assert (= b!3449885 b!3449886))

(assert (= (and start!320498 ((_ is Cons!37080) tokens!494)) b!3449885))

(assert (= b!3449889 b!3449897))

(assert (= b!3449896 b!3449889))

(assert (= start!320498 b!3449896))

(declare-fun m!3846785 () Bool)

(assert (=> b!3449879 m!3846785))

(declare-fun m!3846787 () Bool)

(assert (=> b!3449886 m!3846787))

(declare-fun m!3846789 () Bool)

(assert (=> b!3449892 m!3846789))

(declare-fun m!3846791 () Bool)

(assert (=> b!3449884 m!3846791))

(assert (=> b!3449884 m!3846791))

(declare-fun m!3846793 () Bool)

(assert (=> b!3449884 m!3846793))

(declare-fun m!3846795 () Bool)

(assert (=> b!3449873 m!3846795))

(declare-fun m!3846797 () Bool)

(assert (=> b!3449873 m!3846797))

(declare-fun m!3846799 () Bool)

(assert (=> b!3449876 m!3846799))

(declare-fun m!3846801 () Bool)

(assert (=> b!3449876 m!3846801))

(declare-fun m!3846803 () Bool)

(assert (=> b!3449876 m!3846803))

(declare-fun m!3846805 () Bool)

(assert (=> b!3449876 m!3846805))

(declare-fun m!3846807 () Bool)

(assert (=> b!3449876 m!3846807))

(declare-fun m!3846809 () Bool)

(assert (=> b!3449876 m!3846809))

(declare-fun m!3846811 () Bool)

(assert (=> b!3449876 m!3846811))

(assert (=> b!3449876 m!3846801))

(declare-fun m!3846813 () Bool)

(assert (=> b!3449876 m!3846813))

(declare-fun m!3846815 () Bool)

(assert (=> b!3449876 m!3846815))

(declare-fun m!3846817 () Bool)

(assert (=> b!3449876 m!3846817))

(declare-fun m!3846819 () Bool)

(assert (=> b!3449876 m!3846819))

(declare-fun m!3846821 () Bool)

(assert (=> b!3449876 m!3846821))

(declare-fun m!3846823 () Bool)

(assert (=> b!3449876 m!3846823))

(declare-fun m!3846825 () Bool)

(assert (=> b!3449876 m!3846825))

(declare-fun m!3846827 () Bool)

(assert (=> b!3449877 m!3846827))

(declare-fun m!3846829 () Bool)

(assert (=> b!3449877 m!3846829))

(declare-fun m!3846831 () Bool)

(assert (=> b!3449881 m!3846831))

(assert (=> b!3449881 m!3846831))

(declare-fun m!3846833 () Bool)

(assert (=> b!3449881 m!3846833))

(declare-fun m!3846835 () Bool)

(assert (=> b!3449898 m!3846835))

(declare-fun m!3846837 () Bool)

(assert (=> b!3449898 m!3846837))

(declare-fun m!3846839 () Bool)

(assert (=> b!3449894 m!3846839))

(declare-fun m!3846841 () Bool)

(assert (=> b!3449891 m!3846841))

(declare-fun m!3846843 () Bool)

(assert (=> b!3449891 m!3846843))

(declare-fun m!3846845 () Bool)

(assert (=> b!3449891 m!3846845))

(declare-fun m!3846847 () Bool)

(assert (=> b!3449891 m!3846847))

(declare-fun m!3846849 () Bool)

(assert (=> b!3449891 m!3846849))

(declare-fun m!3846851 () Bool)

(assert (=> b!3449875 m!3846851))

(declare-fun m!3846853 () Bool)

(assert (=> b!3449875 m!3846853))

(declare-fun m!3846855 () Bool)

(assert (=> b!3449904 m!3846855))

(declare-fun m!3846857 () Bool)

(assert (=> b!3449902 m!3846857))

(declare-fun m!3846859 () Bool)

(assert (=> b!3449889 m!3846859))

(declare-fun m!3846861 () Bool)

(assert (=> b!3449889 m!3846861))

(declare-fun m!3846863 () Bool)

(assert (=> b!3449888 m!3846863))

(declare-fun m!3846865 () Bool)

(assert (=> b!3449888 m!3846865))

(declare-fun m!3846867 () Bool)

(assert (=> b!3449888 m!3846867))

(declare-fun m!3846869 () Bool)

(assert (=> b!3449895 m!3846869))

(assert (=> b!3449895 m!3846869))

(declare-fun m!3846871 () Bool)

(assert (=> b!3449895 m!3846871))

(declare-fun m!3846873 () Bool)

(assert (=> start!320498 m!3846873))

(declare-fun m!3846875 () Bool)

(assert (=> b!3449899 m!3846875))

(declare-fun m!3846877 () Bool)

(assert (=> b!3449885 m!3846877))

(declare-fun m!3846879 () Bool)

(assert (=> b!3449887 m!3846879))

(declare-fun m!3846881 () Bool)

(assert (=> b!3449887 m!3846881))

(declare-fun m!3846883 () Bool)

(assert (=> b!3449887 m!3846883))

(declare-fun m!3846885 () Bool)

(assert (=> b!3449887 m!3846885))

(assert (=> b!3449887 m!3846881))

(declare-fun m!3846887 () Bool)

(assert (=> b!3449887 m!3846887))

(declare-fun m!3846889 () Bool)

(assert (=> b!3449887 m!3846889))

(assert (=> b!3449887 m!3846887))

(declare-fun m!3846891 () Bool)

(assert (=> b!3449887 m!3846891))

(declare-fun m!3846893 () Bool)

(assert (=> b!3449887 m!3846893))

(declare-fun m!3846895 () Bool)

(assert (=> b!3449887 m!3846895))

(assert (=> b!3449887 m!3846893))

(assert (=> b!3449887 m!3846891))

(assert (=> b!3449887 m!3846889))

(declare-fun m!3846897 () Bool)

(assert (=> b!3449887 m!3846897))

(declare-fun m!3846899 () Bool)

(assert (=> b!3449896 m!3846899))

(declare-fun m!3846901 () Bool)

(assert (=> b!3449878 m!3846901))

(declare-fun m!3846903 () Bool)

(assert (=> b!3449878 m!3846903))

(declare-fun m!3846905 () Bool)

(assert (=> b!3449893 m!3846905))

(declare-fun m!3846907 () Bool)

(assert (=> b!3449903 m!3846907))

(declare-fun m!3846909 () Bool)

(assert (=> b!3449872 m!3846909))

(declare-fun m!3846911 () Bool)

(assert (=> b!3449872 m!3846911))

(check-sat b_and!242221 (not b!3449889) b_and!242219 (not b!3449887) (not b!3449876) (not b!3449873) (not b!3449904) (not b_next!90255) (not b!3449894) b_and!242211 b_and!242215 (not b_next!90257) (not b!3449888) (not b!3449895) (not b!3449878) (not b!3449879) (not b_next!90259) (not b!3449898) (not b!3449903) (not b_next!90251) (not start!320498) (not b!3449891) (not b!3449881) (not b!3449896) (not b!3449877) (not b!3449872) (not b!3449901) (not b!3449884) (not b!3449899) (not b_next!90249) (not b!3449886) (not b!3449902) (not b!3449892) b_and!242217 (not b_next!90253) b_and!242213 (not b!3449875) (not b!3449893) (not b!3449885))
(check-sat b_and!242221 (not b_next!90257) (not b_next!90259) b_and!242219 (not b_next!90251) (not b_next!90255) (not b_next!90249) b_and!242211 b_and!242217 b_and!242215 (not b_next!90253) b_and!242213)
(get-model)

(declare-fun d!991881 () Bool)

(declare-fun res!1391282 () Bool)

(declare-fun e!2137060 () Bool)

(assert (=> d!991881 (=> (not res!1391282) (not e!2137060))))

(declare-fun rulesValid!2032 (LexerInterface!5009 List!37205) Bool)

(assert (=> d!991881 (= res!1391282 (rulesValid!2032 thiss!18206 rules!2135))))

(assert (=> d!991881 (= (rulesInvariant!4406 thiss!18206 rules!2135) e!2137060)))

(declare-fun b!3450039 () Bool)

(declare-datatypes ((List!37206 0))(
  ( (Nil!37082) (Cons!37082 (h!42502 String!41584) (t!271709 List!37206)) )
))
(declare-fun noDuplicateTag!2028 (LexerInterface!5009 List!37205 List!37206) Bool)

(assert (=> b!3450039 (= e!2137060 (noDuplicateTag!2028 thiss!18206 rules!2135 Nil!37082))))

(assert (= (and d!991881 res!1391282) b!3450039))

(declare-fun m!3847031 () Bool)

(assert (=> d!991881 m!3847031))

(declare-fun m!3847033 () Bool)

(assert (=> b!3450039 m!3847033))

(assert (=> b!3449894 d!991881))

(declare-fun b!3450078 () Bool)

(declare-fun e!2137082 () Bool)

(declare-fun lt!1170972 () Bool)

(declare-fun call!249015 () Bool)

(assert (=> b!3450078 (= e!2137082 (= lt!1170972 call!249015))))

(declare-fun b!3450079 () Bool)

(declare-fun res!1391307 () Bool)

(declare-fun e!2137083 () Bool)

(assert (=> b!3450079 (=> (not res!1391307) (not e!2137083))))

(declare-fun isEmpty!21402 (List!37203) Bool)

(declare-fun tail!5411 (List!37203) List!37203)

(assert (=> b!3450079 (= res!1391307 (isEmpty!21402 (tail!5411 lt!1170951)))))

(declare-fun b!3450080 () Bool)

(declare-fun e!2137087 () Bool)

(declare-fun derivativeStep!3031 (Regex!10179 C!20544) Regex!10179)

(assert (=> b!3450080 (= e!2137087 (matchR!4763 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)) (tail!5411 lt!1170951)))))

(declare-fun b!3450081 () Bool)

(assert (=> b!3450081 (= e!2137083 (= (head!7289 lt!1170951) (c!590466 (regex!5420 lt!1170934))))))

(declare-fun b!3450083 () Bool)

(declare-fun res!1391306 () Bool)

(declare-fun e!2137085 () Bool)

(assert (=> b!3450083 (=> res!1391306 e!2137085)))

(assert (=> b!3450083 (= res!1391306 e!2137083)))

(declare-fun res!1391305 () Bool)

(assert (=> b!3450083 (=> (not res!1391305) (not e!2137083))))

(assert (=> b!3450083 (= res!1391305 lt!1170972)))

(declare-fun b!3450084 () Bool)

(declare-fun nullable!3478 (Regex!10179) Bool)

(assert (=> b!3450084 (= e!2137087 (nullable!3478 (regex!5420 lt!1170934)))))

(declare-fun b!3450085 () Bool)

(declare-fun res!1391308 () Bool)

(assert (=> b!3450085 (=> (not res!1391308) (not e!2137083))))

(assert (=> b!3450085 (= res!1391308 (not call!249015))))

(declare-fun b!3450086 () Bool)

(declare-fun e!2137081 () Bool)

(assert (=> b!3450086 (= e!2137082 e!2137081)))

(declare-fun c!590509 () Bool)

(assert (=> b!3450086 (= c!590509 ((_ is EmptyLang!10179) (regex!5420 lt!1170934)))))

(declare-fun b!3450087 () Bool)

(declare-fun res!1391312 () Bool)

(assert (=> b!3450087 (=> res!1391312 e!2137085)))

(assert (=> b!3450087 (= res!1391312 (not ((_ is ElementMatch!10179) (regex!5420 lt!1170934))))))

(assert (=> b!3450087 (= e!2137081 e!2137085)))

(declare-fun d!991883 () Bool)

(assert (=> d!991883 e!2137082))

(declare-fun c!590510 () Bool)

(assert (=> d!991883 (= c!590510 ((_ is EmptyExpr!10179) (regex!5420 lt!1170934)))))

(assert (=> d!991883 (= lt!1170972 e!2137087)))

(declare-fun c!590508 () Bool)

(assert (=> d!991883 (= c!590508 (isEmpty!21402 lt!1170951))))

(assert (=> d!991883 (validRegex!4634 (regex!5420 lt!1170934))))

(assert (=> d!991883 (= (matchR!4763 (regex!5420 lt!1170934) lt!1170951) lt!1170972)))

(declare-fun b!3450082 () Bool)

(declare-fun e!2137086 () Bool)

(assert (=> b!3450082 (= e!2137086 (not (= (head!7289 lt!1170951) (c!590466 (regex!5420 lt!1170934)))))))

(declare-fun b!3450088 () Bool)

(assert (=> b!3450088 (= e!2137081 (not lt!1170972))))

(declare-fun bm!249010 () Bool)

(assert (=> bm!249010 (= call!249015 (isEmpty!21402 lt!1170951))))

(declare-fun b!3450089 () Bool)

(declare-fun res!1391311 () Bool)

(assert (=> b!3450089 (=> res!1391311 e!2137086)))

(assert (=> b!3450089 (= res!1391311 (not (isEmpty!21402 (tail!5411 lt!1170951))))))

(declare-fun b!3450090 () Bool)

(declare-fun e!2137084 () Bool)

(assert (=> b!3450090 (= e!2137084 e!2137086)))

(declare-fun res!1391309 () Bool)

(assert (=> b!3450090 (=> res!1391309 e!2137086)))

(assert (=> b!3450090 (= res!1391309 call!249015)))

(declare-fun b!3450091 () Bool)

(assert (=> b!3450091 (= e!2137085 e!2137084)))

(declare-fun res!1391310 () Bool)

(assert (=> b!3450091 (=> (not res!1391310) (not e!2137084))))

(assert (=> b!3450091 (= res!1391310 (not lt!1170972))))

(assert (= (and d!991883 c!590508) b!3450084))

(assert (= (and d!991883 (not c!590508)) b!3450080))

(assert (= (and d!991883 c!590510) b!3450078))

(assert (= (and d!991883 (not c!590510)) b!3450086))

(assert (= (and b!3450086 c!590509) b!3450088))

(assert (= (and b!3450086 (not c!590509)) b!3450087))

(assert (= (and b!3450087 (not res!1391312)) b!3450083))

(assert (= (and b!3450083 res!1391305) b!3450085))

(assert (= (and b!3450085 res!1391308) b!3450079))

(assert (= (and b!3450079 res!1391307) b!3450081))

(assert (= (and b!3450083 (not res!1391306)) b!3450091))

(assert (= (and b!3450091 res!1391310) b!3450090))

(assert (= (and b!3450090 (not res!1391309)) b!3450089))

(assert (= (and b!3450089 (not res!1391311)) b!3450082))

(assert (= (or b!3450078 b!3450085 b!3450090) bm!249010))

(declare-fun m!3847035 () Bool)

(assert (=> b!3450081 m!3847035))

(declare-fun m!3847037 () Bool)

(assert (=> bm!249010 m!3847037))

(declare-fun m!3847039 () Bool)

(assert (=> b!3450089 m!3847039))

(assert (=> b!3450089 m!3847039))

(declare-fun m!3847041 () Bool)

(assert (=> b!3450089 m!3847041))

(assert (=> d!991883 m!3847037))

(declare-fun m!3847043 () Bool)

(assert (=> d!991883 m!3847043))

(assert (=> b!3450082 m!3847035))

(declare-fun m!3847045 () Bool)

(assert (=> b!3450084 m!3847045))

(assert (=> b!3450079 m!3847039))

(assert (=> b!3450079 m!3847039))

(assert (=> b!3450079 m!3847041))

(assert (=> b!3450080 m!3847035))

(assert (=> b!3450080 m!3847035))

(declare-fun m!3847049 () Bool)

(assert (=> b!3450080 m!3847049))

(assert (=> b!3450080 m!3847039))

(assert (=> b!3450080 m!3847049))

(assert (=> b!3450080 m!3847039))

(declare-fun m!3847059 () Bool)

(assert (=> b!3450080 m!3847059))

(assert (=> b!3449872 d!991883))

(declare-fun d!991885 () Bool)

(assert (=> d!991885 (= (get!11855 lt!1170929) (v!36758 lt!1170929))))

(assert (=> b!3449872 d!991885))

(declare-fun d!991889 () Bool)

(assert (=> d!991889 (= (isEmpty!21395 rules!2135) ((_ is Nil!37081) rules!2135))))

(assert (=> b!3449893 d!991889))

(declare-fun d!991891 () Bool)

(declare-fun lt!1170985 () Bool)

(declare-fun e!2137105 () Bool)

(assert (=> d!991891 (= lt!1170985 e!2137105)))

(declare-fun res!1391330 () Bool)

(assert (=> d!991891 (=> (not res!1391330) (not e!2137105))))

(declare-fun list!13486 (BalanceConc!22046) List!37204)

(assert (=> d!991891 (= res!1391330 (= (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))) (list!13486 (singletonSeq!2516 separatorToken!241))))))

(declare-fun e!2137104 () Bool)

(assert (=> d!991891 (= lt!1170985 e!2137104)))

(declare-fun res!1391331 () Bool)

(assert (=> d!991891 (=> (not res!1391331) (not e!2137104))))

(declare-fun lt!1170984 () tuple2!36762)

(declare-fun size!28104 (BalanceConc!22046) Int)

(assert (=> d!991891 (= res!1391331 (= (size!28104 (_1!21515 lt!1170984)) 1))))

(assert (=> d!991891 (= lt!1170984 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))))

(assert (=> d!991891 (not (isEmpty!21395 rules!2135))))

(assert (=> d!991891 (= (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 separatorToken!241) lt!1170985)))

(declare-fun b!3450115 () Bool)

(declare-fun res!1391329 () Bool)

(assert (=> b!3450115 (=> (not res!1391329) (not e!2137104))))

(declare-fun apply!8694 (BalanceConc!22046 Int) Token!10206)

(assert (=> b!3450115 (= res!1391329 (= (apply!8694 (_1!21515 lt!1170984) 0) separatorToken!241))))

(declare-fun b!3450116 () Bool)

(declare-fun isEmpty!21403 (BalanceConc!22044) Bool)

(assert (=> b!3450116 (= e!2137104 (isEmpty!21403 (_2!21515 lt!1170984)))))

(declare-fun b!3450117 () Bool)

(assert (=> b!3450117 (= e!2137105 (isEmpty!21403 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))))))

(assert (= (and d!991891 res!1391331) b!3450115))

(assert (= (and b!3450115 res!1391329) b!3450116))

(assert (= (and d!991891 res!1391330) b!3450117))

(declare-fun m!3847099 () Bool)

(assert (=> d!991891 m!3847099))

(assert (=> d!991891 m!3846905))

(declare-fun m!3847101 () Bool)

(assert (=> d!991891 m!3847101))

(declare-fun m!3847103 () Bool)

(assert (=> d!991891 m!3847103))

(declare-fun m!3847105 () Bool)

(assert (=> d!991891 m!3847105))

(assert (=> d!991891 m!3847101))

(assert (=> d!991891 m!3847103))

(declare-fun m!3847107 () Bool)

(assert (=> d!991891 m!3847107))

(assert (=> d!991891 m!3847101))

(declare-fun m!3847109 () Bool)

(assert (=> d!991891 m!3847109))

(declare-fun m!3847111 () Bool)

(assert (=> b!3450115 m!3847111))

(declare-fun m!3847113 () Bool)

(assert (=> b!3450116 m!3847113))

(assert (=> b!3450117 m!3847101))

(assert (=> b!3450117 m!3847101))

(assert (=> b!3450117 m!3847103))

(assert (=> b!3450117 m!3847103))

(assert (=> b!3450117 m!3847105))

(declare-fun m!3847115 () Bool)

(assert (=> b!3450117 m!3847115))

(assert (=> b!3449892 d!991891))

(declare-fun d!991903 () Bool)

(assert (=> d!991903 (= (inv!50235 (tag!6018 (rule!8000 (h!42500 tokens!494)))) (= (mod (str.len (value!174929 (tag!6018 (rule!8000 (h!42500 tokens!494))))) 2) 0))))

(assert (=> b!3449875 d!991903))

(declare-fun d!991905 () Bool)

(declare-fun res!1391334 () Bool)

(declare-fun e!2137108 () Bool)

(assert (=> d!991905 (=> (not res!1391334) (not e!2137108))))

(declare-fun semiInverseModEq!2273 (Int Int) Bool)

(assert (=> d!991905 (= res!1391334 (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> d!991905 (= (inv!50238 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) e!2137108)))

(declare-fun b!3450120 () Bool)

(declare-fun equivClasses!2172 (Int Int) Bool)

(assert (=> b!3450120 (= e!2137108 (equivClasses!2172 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))))))

(assert (= (and d!991905 res!1391334) b!3450120))

(declare-fun m!3847117 () Bool)

(assert (=> d!991905 m!3847117))

(declare-fun m!3847119 () Bool)

(assert (=> b!3450120 m!3847119))

(assert (=> b!3449875 d!991905))

(declare-fun b!3450131 () Bool)

(declare-fun e!2137116 () Bool)

(declare-fun inv!15 (TokenValue!5650) Bool)

(assert (=> b!3450131 (= e!2137116 (inv!15 (value!174930 separatorToken!241)))))

(declare-fun b!3450132 () Bool)

(declare-fun e!2137117 () Bool)

(declare-fun e!2137115 () Bool)

(assert (=> b!3450132 (= e!2137117 e!2137115)))

(declare-fun c!590519 () Bool)

(assert (=> b!3450132 (= c!590519 ((_ is IntegerValue!16951) (value!174930 separatorToken!241)))))

(declare-fun b!3450133 () Bool)

(declare-fun inv!16 (TokenValue!5650) Bool)

(assert (=> b!3450133 (= e!2137117 (inv!16 (value!174930 separatorToken!241)))))

(declare-fun d!991907 () Bool)

(declare-fun c!590518 () Bool)

(assert (=> d!991907 (= c!590518 ((_ is IntegerValue!16950) (value!174930 separatorToken!241)))))

(assert (=> d!991907 (= (inv!21 (value!174930 separatorToken!241)) e!2137117)))

(declare-fun b!3450134 () Bool)

(declare-fun res!1391337 () Bool)

(assert (=> b!3450134 (=> res!1391337 e!2137116)))

(assert (=> b!3450134 (= res!1391337 (not ((_ is IntegerValue!16952) (value!174930 separatorToken!241))))))

(assert (=> b!3450134 (= e!2137115 e!2137116)))

(declare-fun b!3450135 () Bool)

(declare-fun inv!17 (TokenValue!5650) Bool)

(assert (=> b!3450135 (= e!2137115 (inv!17 (value!174930 separatorToken!241)))))

(assert (= (and d!991907 c!590518) b!3450133))

(assert (= (and d!991907 (not c!590518)) b!3450132))

(assert (= (and b!3450132 c!590519) b!3450135))

(assert (= (and b!3450132 (not c!590519)) b!3450134))

(assert (= (and b!3450134 (not res!1391337)) b!3450131))

(declare-fun m!3847121 () Bool)

(assert (=> b!3450131 m!3847121))

(declare-fun m!3847123 () Bool)

(assert (=> b!3450133 m!3847123))

(declare-fun m!3847125 () Bool)

(assert (=> b!3450135 m!3847125))

(assert (=> b!3449896 d!991907))

(declare-fun b!3450146 () Bool)

(declare-fun res!1391342 () Bool)

(declare-fun e!2137123 () Bool)

(assert (=> b!3450146 (=> (not res!1391342) (not e!2137123))))

(declare-fun lt!1170988 () List!37203)

(assert (=> b!3450146 (= res!1391342 (= (size!28101 lt!1170988) (+ (size!28101 (++!9125 lt!1170951 lt!1170945)) (size!28101 lt!1170933))))))

(declare-fun b!3450147 () Bool)

(assert (=> b!3450147 (= e!2137123 (or (not (= lt!1170933 Nil!37079)) (= lt!1170988 (++!9125 lt!1170951 lt!1170945))))))

(declare-fun d!991909 () Bool)

(assert (=> d!991909 e!2137123))

(declare-fun res!1391343 () Bool)

(assert (=> d!991909 (=> (not res!1391343) (not e!2137123))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5161 (List!37203) (InoxSet C!20544))

(assert (=> d!991909 (= res!1391343 (= (content!5161 lt!1170988) ((_ map or) (content!5161 (++!9125 lt!1170951 lt!1170945)) (content!5161 lt!1170933))))))

(declare-fun e!2137122 () List!37203)

(assert (=> d!991909 (= lt!1170988 e!2137122)))

(declare-fun c!590522 () Bool)

(assert (=> d!991909 (= c!590522 ((_ is Nil!37079) (++!9125 lt!1170951 lt!1170945)))))

(assert (=> d!991909 (= (++!9125 (++!9125 lt!1170951 lt!1170945) lt!1170933) lt!1170988)))

(declare-fun b!3450144 () Bool)

(assert (=> b!3450144 (= e!2137122 lt!1170933)))

(declare-fun b!3450145 () Bool)

(assert (=> b!3450145 (= e!2137122 (Cons!37079 (h!42499 (++!9125 lt!1170951 lt!1170945)) (++!9125 (t!271612 (++!9125 lt!1170951 lt!1170945)) lt!1170933)))))

(assert (= (and d!991909 c!590522) b!3450144))

(assert (= (and d!991909 (not c!590522)) b!3450145))

(assert (= (and d!991909 res!1391343) b!3450146))

(assert (= (and b!3450146 res!1391342) b!3450147))

(declare-fun m!3847127 () Bool)

(assert (=> b!3450146 m!3847127))

(assert (=> b!3450146 m!3846869))

(declare-fun m!3847129 () Bool)

(assert (=> b!3450146 m!3847129))

(declare-fun m!3847131 () Bool)

(assert (=> b!3450146 m!3847131))

(declare-fun m!3847133 () Bool)

(assert (=> d!991909 m!3847133))

(assert (=> d!991909 m!3846869))

(declare-fun m!3847135 () Bool)

(assert (=> d!991909 m!3847135))

(declare-fun m!3847137 () Bool)

(assert (=> d!991909 m!3847137))

(declare-fun m!3847139 () Bool)

(assert (=> b!3450145 m!3847139))

(assert (=> b!3449895 d!991909))

(declare-fun b!3450150 () Bool)

(declare-fun res!1391344 () Bool)

(declare-fun e!2137125 () Bool)

(assert (=> b!3450150 (=> (not res!1391344) (not e!2137125))))

(declare-fun lt!1170989 () List!37203)

(assert (=> b!3450150 (= res!1391344 (= (size!28101 lt!1170989) (+ (size!28101 lt!1170951) (size!28101 lt!1170945))))))

(declare-fun b!3450151 () Bool)

(assert (=> b!3450151 (= e!2137125 (or (not (= lt!1170945 Nil!37079)) (= lt!1170989 lt!1170951)))))

(declare-fun d!991911 () Bool)

(assert (=> d!991911 e!2137125))

(declare-fun res!1391345 () Bool)

(assert (=> d!991911 (=> (not res!1391345) (not e!2137125))))

(assert (=> d!991911 (= res!1391345 (= (content!5161 lt!1170989) ((_ map or) (content!5161 lt!1170951) (content!5161 lt!1170945))))))

(declare-fun e!2137124 () List!37203)

(assert (=> d!991911 (= lt!1170989 e!2137124)))

(declare-fun c!590523 () Bool)

(assert (=> d!991911 (= c!590523 ((_ is Nil!37079) lt!1170951))))

(assert (=> d!991911 (= (++!9125 lt!1170951 lt!1170945) lt!1170989)))

(declare-fun b!3450148 () Bool)

(assert (=> b!3450148 (= e!2137124 lt!1170945)))

(declare-fun b!3450149 () Bool)

(assert (=> b!3450149 (= e!2137124 (Cons!37079 (h!42499 lt!1170951) (++!9125 (t!271612 lt!1170951) lt!1170945)))))

(assert (= (and d!991911 c!590523) b!3450148))

(assert (= (and d!991911 (not c!590523)) b!3450149))

(assert (= (and d!991911 res!1391345) b!3450150))

(assert (= (and b!3450150 res!1391344) b!3450151))

(declare-fun m!3847141 () Bool)

(assert (=> b!3450150 m!3847141))

(assert (=> b!3450150 m!3846815))

(declare-fun m!3847143 () Bool)

(assert (=> b!3450150 m!3847143))

(declare-fun m!3847145 () Bool)

(assert (=> d!991911 m!3847145))

(declare-fun m!3847147 () Bool)

(assert (=> d!991911 m!3847147))

(declare-fun m!3847149 () Bool)

(assert (=> d!991911 m!3847149))

(declare-fun m!3847151 () Bool)

(assert (=> b!3450149 m!3847151))

(assert (=> b!3449895 d!991911))

(declare-fun d!991913 () Bool)

(declare-fun dynLambda!15569 (Int Token!10206) Bool)

(assert (=> d!991913 (dynLambda!15569 lambda!121525 (h!42500 (t!271613 tokens!494)))))

(declare-fun lt!1170992 () Unit!52398)

(declare-fun choose!19922 (List!37204 Int Token!10206) Unit!52398)

(assert (=> d!991913 (= lt!1170992 (choose!19922 tokens!494 lambda!121525 (h!42500 (t!271613 tokens!494))))))

(declare-fun e!2137128 () Bool)

(assert (=> d!991913 e!2137128))

(declare-fun res!1391348 () Bool)

(assert (=> d!991913 (=> (not res!1391348) (not e!2137128))))

(assert (=> d!991913 (= res!1391348 (forall!7885 tokens!494 lambda!121525))))

(assert (=> d!991913 (= (forallContained!1367 tokens!494 lambda!121525 (h!42500 (t!271613 tokens!494))) lt!1170992)))

(declare-fun b!3450154 () Bool)

(declare-fun contains!6845 (List!37204 Token!10206) Bool)

(assert (=> b!3450154 (= e!2137128 (contains!6845 tokens!494 (h!42500 (t!271613 tokens!494))))))

(assert (= (and d!991913 res!1391348) b!3450154))

(declare-fun b_lambda!98997 () Bool)

(assert (=> (not b_lambda!98997) (not d!991913)))

(declare-fun m!3847153 () Bool)

(assert (=> d!991913 m!3847153))

(declare-fun m!3847155 () Bool)

(assert (=> d!991913 m!3847155))

(assert (=> d!991913 m!3846875))

(declare-fun m!3847157 () Bool)

(assert (=> b!3450154 m!3847157))

(assert (=> b!3449873 d!991913))

(declare-fun d!991915 () Bool)

(assert (=> d!991915 (dynLambda!15569 lambda!121525 (h!42500 tokens!494))))

(declare-fun lt!1170993 () Unit!52398)

(assert (=> d!991915 (= lt!1170993 (choose!19922 tokens!494 lambda!121525 (h!42500 tokens!494)))))

(declare-fun e!2137129 () Bool)

(assert (=> d!991915 e!2137129))

(declare-fun res!1391349 () Bool)

(assert (=> d!991915 (=> (not res!1391349) (not e!2137129))))

(assert (=> d!991915 (= res!1391349 (forall!7885 tokens!494 lambda!121525))))

(assert (=> d!991915 (= (forallContained!1367 tokens!494 lambda!121525 (h!42500 tokens!494)) lt!1170993)))

(declare-fun b!3450155 () Bool)

(assert (=> b!3450155 (= e!2137129 (contains!6845 tokens!494 (h!42500 tokens!494)))))

(assert (= (and d!991915 res!1391349) b!3450155))

(declare-fun b_lambda!98999 () Bool)

(assert (=> (not b_lambda!98999) (not d!991915)))

(declare-fun m!3847159 () Bool)

(assert (=> d!991915 m!3847159))

(declare-fun m!3847161 () Bool)

(assert (=> d!991915 m!3847161))

(assert (=> d!991915 m!3846875))

(declare-fun m!3847163 () Bool)

(assert (=> b!3450155 m!3847163))

(assert (=> b!3449873 d!991915))

(declare-fun lt!1170996 () Bool)

(declare-fun d!991917 () Bool)

(declare-fun isEmpty!21404 (List!37204) Bool)

(assert (=> d!991917 (= lt!1170996 (isEmpty!21404 (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))))))

(declare-fun isEmpty!21405 (Conc!11216) Bool)

(assert (=> d!991917 (= lt!1170996 (isEmpty!21405 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))))))

(assert (=> d!991917 (= (isEmpty!21394 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946))) lt!1170996)))

(declare-fun bs!559718 () Bool)

(assert (= bs!559718 d!991917))

(declare-fun m!3847165 () Bool)

(assert (=> bs!559718 m!3847165))

(assert (=> bs!559718 m!3847165))

(declare-fun m!3847167 () Bool)

(assert (=> bs!559718 m!3847167))

(declare-fun m!3847169 () Bool)

(assert (=> bs!559718 m!3847169))

(assert (=> b!3449888 d!991917))

(declare-fun d!991919 () Bool)

(declare-fun e!2137137 () Bool)

(assert (=> d!991919 e!2137137))

(declare-fun res!1391357 () Bool)

(assert (=> d!991919 (=> (not res!1391357) (not e!2137137))))

(declare-fun e!2137138 () Bool)

(assert (=> d!991919 (= res!1391357 e!2137138)))

(declare-fun c!590526 () Bool)

(declare-fun lt!1170999 () tuple2!36762)

(assert (=> d!991919 (= c!590526 (> (size!28104 (_1!21515 lt!1170999)) 0))))

(declare-fun lexTailRecV2!1046 (LexerInterface!5009 List!37205 BalanceConc!22044 BalanceConc!22044 BalanceConc!22044 BalanceConc!22046) tuple2!36762)

(assert (=> d!991919 (= lt!1170999 (lexTailRecV2!1046 thiss!18206 rules!2135 lt!1170946 (BalanceConc!22045 Empty!11215) lt!1170946 (BalanceConc!22047 Empty!11216)))))

(assert (=> d!991919 (= (lex!2335 thiss!18206 rules!2135 lt!1170946) lt!1170999)))

(declare-fun b!3450166 () Bool)

(declare-datatypes ((tuple2!36768 0))(
  ( (tuple2!36769 (_1!21518 List!37204) (_2!21518 List!37203)) )
))
(declare-fun lexList!1438 (LexerInterface!5009 List!37205 List!37203) tuple2!36768)

(assert (=> b!3450166 (= e!2137137 (= (list!13483 (_2!21515 lt!1170999)) (_2!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 lt!1170946)))))))

(declare-fun b!3450167 () Bool)

(assert (=> b!3450167 (= e!2137138 (= (_2!21515 lt!1170999) lt!1170946))))

(declare-fun b!3450168 () Bool)

(declare-fun e!2137136 () Bool)

(assert (=> b!3450168 (= e!2137138 e!2137136)))

(declare-fun res!1391358 () Bool)

(declare-fun size!28105 (BalanceConc!22044) Int)

(assert (=> b!3450168 (= res!1391358 (< (size!28105 (_2!21515 lt!1170999)) (size!28105 lt!1170946)))))

(assert (=> b!3450168 (=> (not res!1391358) (not e!2137136))))

(declare-fun b!3450169 () Bool)

(assert (=> b!3450169 (= e!2137136 (not (isEmpty!21394 (_1!21515 lt!1170999))))))

(declare-fun b!3450170 () Bool)

(declare-fun res!1391356 () Bool)

(assert (=> b!3450170 (=> (not res!1391356) (not e!2137137))))

(assert (=> b!3450170 (= res!1391356 (= (list!13486 (_1!21515 lt!1170999)) (_1!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 lt!1170946)))))))

(assert (= (and d!991919 c!590526) b!3450168))

(assert (= (and d!991919 (not c!590526)) b!3450167))

(assert (= (and b!3450168 res!1391358) b!3450169))

(assert (= (and d!991919 res!1391357) b!3450170))

(assert (= (and b!3450170 res!1391356) b!3450166))

(declare-fun m!3847171 () Bool)

(assert (=> d!991919 m!3847171))

(declare-fun m!3847173 () Bool)

(assert (=> d!991919 m!3847173))

(declare-fun m!3847175 () Bool)

(assert (=> b!3450168 m!3847175))

(declare-fun m!3847177 () Bool)

(assert (=> b!3450168 m!3847177))

(declare-fun m!3847179 () Bool)

(assert (=> b!3450170 m!3847179))

(declare-fun m!3847181 () Bool)

(assert (=> b!3450170 m!3847181))

(assert (=> b!3450170 m!3847181))

(declare-fun m!3847183 () Bool)

(assert (=> b!3450170 m!3847183))

(declare-fun m!3847185 () Bool)

(assert (=> b!3450166 m!3847185))

(assert (=> b!3450166 m!3847181))

(assert (=> b!3450166 m!3847181))

(assert (=> b!3450166 m!3847183))

(declare-fun m!3847187 () Bool)

(assert (=> b!3450169 m!3847187))

(assert (=> b!3449888 d!991919))

(declare-fun d!991921 () Bool)

(declare-fun fromListB!1762 (List!37203) BalanceConc!22044)

(assert (=> d!991921 (= (seqFromList!3894 lt!1170951) (fromListB!1762 lt!1170951))))

(declare-fun bs!559719 () Bool)

(assert (= bs!559719 d!991921))

(declare-fun m!3847189 () Bool)

(assert (=> bs!559719 m!3847189))

(assert (=> b!3449888 d!991921))

(declare-fun d!991923 () Bool)

(declare-fun c!590529 () Bool)

(assert (=> d!991923 (= c!590529 ((_ is Cons!37080) tokens!494))))

(declare-fun e!2137141 () List!37203)

(assert (=> d!991923 (= (printWithSeparatorTokenList!296 thiss!18206 tokens!494 separatorToken!241) e!2137141)))

(declare-fun b!3450175 () Bool)

(assert (=> b!3450175 (= e!2137141 (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241)))))

(declare-fun b!3450176 () Bool)

(assert (=> b!3450176 (= e!2137141 Nil!37079)))

(assert (= (and d!991923 c!590529) b!3450175))

(assert (= (and d!991923 (not c!590529)) b!3450176))

(assert (=> b!3450175 m!3846893))

(assert (=> b!3450175 m!3846895))

(assert (=> b!3450175 m!3846791))

(declare-fun m!3847191 () Bool)

(assert (=> b!3450175 m!3847191))

(assert (=> b!3450175 m!3846885))

(declare-fun m!3847193 () Bool)

(assert (=> b!3450175 m!3847193))

(assert (=> b!3450175 m!3846791))

(assert (=> b!3450175 m!3846793))

(assert (=> b!3450175 m!3846793))

(assert (=> b!3450175 m!3846895))

(assert (=> b!3450175 m!3847191))

(assert (=> b!3450175 m!3846885))

(assert (=> b!3450175 m!3846893))

(assert (=> b!3449887 d!991923))

(declare-fun b!3450179 () Bool)

(declare-fun res!1391359 () Bool)

(declare-fun e!2137143 () Bool)

(assert (=> b!3450179 (=> (not res!1391359) (not e!2137143))))

(declare-fun lt!1171000 () List!37203)

(assert (=> b!3450179 (= res!1391359 (= (size!28101 lt!1171000) (+ (size!28101 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun b!3450180 () Bool)

(assert (=> b!3450180 (= e!2137143 (or (not (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241) Nil!37079)) (= lt!1171000 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))))))

(declare-fun d!991925 () Bool)

(assert (=> d!991925 e!2137143))

(declare-fun res!1391360 () Bool)

(assert (=> d!991925 (=> (not res!1391360) (not e!2137143))))

(assert (=> d!991925 (= res!1391360 (= (content!5161 lt!1171000) ((_ map or) (content!5161 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun e!2137142 () List!37203)

(assert (=> d!991925 (= lt!1171000 e!2137142)))

(declare-fun c!590530 () Bool)

(assert (=> d!991925 (= c!590530 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))

(assert (=> d!991925 (= (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) lt!1171000)))

(declare-fun b!3450177 () Bool)

(assert (=> b!3450177 (= e!2137142 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))

(declare-fun b!3450178 () Bool)

(assert (=> b!3450178 (= e!2137142 (Cons!37079 (h!42499 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) (++!9125 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))))

(assert (= (and d!991925 c!590530) b!3450177))

(assert (= (and d!991925 (not c!590530)) b!3450178))

(assert (= (and d!991925 res!1391360) b!3450179))

(assert (= (and b!3450179 res!1391359) b!3450180))

(declare-fun m!3847195 () Bool)

(assert (=> b!3450179 m!3847195))

(assert (=> b!3450179 m!3846891))

(declare-fun m!3847197 () Bool)

(assert (=> b!3450179 m!3847197))

(assert (=> b!3450179 m!3846889))

(declare-fun m!3847199 () Bool)

(assert (=> b!3450179 m!3847199))

(declare-fun m!3847201 () Bool)

(assert (=> d!991925 m!3847201))

(assert (=> d!991925 m!3846891))

(declare-fun m!3847203 () Bool)

(assert (=> d!991925 m!3847203))

(assert (=> d!991925 m!3846889))

(declare-fun m!3847205 () Bool)

(assert (=> d!991925 m!3847205))

(assert (=> b!3450178 m!3846889))

(declare-fun m!3847207 () Bool)

(assert (=> b!3450178 m!3847207))

(assert (=> b!3449887 d!991925))

(declare-fun d!991927 () Bool)

(declare-fun lt!1171003 () BalanceConc!22044)

(assert (=> d!991927 (= (list!13483 lt!1171003) (originalCharacters!6134 separatorToken!241))))

(declare-fun dynLambda!15570 (Int TokenValue!5650) BalanceConc!22044)

(assert (=> d!991927 (= lt!1171003 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))

(assert (=> d!991927 (= (charsOf!3434 separatorToken!241) lt!1171003)))

(declare-fun b_lambda!99001 () Bool)

(assert (=> (not b_lambda!99001) (not d!991927)))

(declare-fun t!271637 () Bool)

(declare-fun tb!187641 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271637) tb!187641))

(declare-fun b!3450185 () Bool)

(declare-fun e!2137146 () Bool)

(declare-fun tp!1076238 () Bool)

(declare-fun inv!50242 (Conc!11215) Bool)

(assert (=> b!3450185 (= e!2137146 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))) tp!1076238))))

(declare-fun result!231480 () Bool)

(declare-fun inv!50243 (BalanceConc!22044) Bool)

(assert (=> tb!187641 (= result!231480 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))) e!2137146))))

(assert (= tb!187641 b!3450185))

(declare-fun m!3847209 () Bool)

(assert (=> b!3450185 m!3847209))

(declare-fun m!3847211 () Bool)

(assert (=> tb!187641 m!3847211))

(assert (=> d!991927 t!271637))

(declare-fun b_and!242247 () Bool)

(assert (= b_and!242213 (and (=> t!271637 result!231480) b_and!242247)))

(declare-fun t!271639 () Bool)

(declare-fun tb!187643 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271639) tb!187643))

(declare-fun result!231484 () Bool)

(assert (= result!231484 result!231480))

(assert (=> d!991927 t!271639))

(declare-fun b_and!242249 () Bool)

(assert (= b_and!242217 (and (=> t!271639 result!231484) b_and!242249)))

(declare-fun t!271641 () Bool)

(declare-fun tb!187645 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271641) tb!187645))

(declare-fun result!231486 () Bool)

(assert (= result!231486 result!231480))

(assert (=> d!991927 t!271641))

(declare-fun b_and!242251 () Bool)

(assert (= b_and!242221 (and (=> t!271641 result!231486) b_and!242251)))

(declare-fun m!3847213 () Bool)

(assert (=> d!991927 m!3847213))

(declare-fun m!3847215 () Bool)

(assert (=> d!991927 m!3847215))

(assert (=> b!3449887 d!991927))

(declare-fun d!991929 () Bool)

(declare-fun list!13487 (Conc!11215) List!37203)

(assert (=> d!991929 (= (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13487 (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(declare-fun bs!559720 () Bool)

(assert (= bs!559720 d!991929))

(declare-fun m!3847217 () Bool)

(assert (=> bs!559720 m!3847217))

(assert (=> b!3449887 d!991929))

(declare-fun b!3450188 () Bool)

(declare-fun res!1391361 () Bool)

(declare-fun e!2137148 () Bool)

(assert (=> b!3450188 (=> (not res!1391361) (not e!2137148))))

(declare-fun lt!1171004 () List!37203)

(assert (=> b!3450188 (= res!1391361 (= (size!28101 lt!1171004) (+ (size!28101 lt!1170945) (size!28101 lt!1170933))))))

(declare-fun b!3450189 () Bool)

(assert (=> b!3450189 (= e!2137148 (or (not (= lt!1170933 Nil!37079)) (= lt!1171004 lt!1170945)))))

(declare-fun d!991931 () Bool)

(assert (=> d!991931 e!2137148))

(declare-fun res!1391362 () Bool)

(assert (=> d!991931 (=> (not res!1391362) (not e!2137148))))

(assert (=> d!991931 (= res!1391362 (= (content!5161 lt!1171004) ((_ map or) (content!5161 lt!1170945) (content!5161 lt!1170933))))))

(declare-fun e!2137147 () List!37203)

(assert (=> d!991931 (= lt!1171004 e!2137147)))

(declare-fun c!590531 () Bool)

(assert (=> d!991931 (= c!590531 ((_ is Nil!37079) lt!1170945))))

(assert (=> d!991931 (= (++!9125 lt!1170945 lt!1170933) lt!1171004)))

(declare-fun b!3450186 () Bool)

(assert (=> b!3450186 (= e!2137147 lt!1170933)))

(declare-fun b!3450187 () Bool)

(assert (=> b!3450187 (= e!2137147 (Cons!37079 (h!42499 lt!1170945) (++!9125 (t!271612 lt!1170945) lt!1170933)))))

(assert (= (and d!991931 c!590531) b!3450186))

(assert (= (and d!991931 (not c!590531)) b!3450187))

(assert (= (and d!991931 res!1391362) b!3450188))

(assert (= (and b!3450188 res!1391361) b!3450189))

(declare-fun m!3847219 () Bool)

(assert (=> b!3450188 m!3847219))

(assert (=> b!3450188 m!3847143))

(assert (=> b!3450188 m!3847131))

(declare-fun m!3847221 () Bool)

(assert (=> d!991931 m!3847221))

(assert (=> d!991931 m!3847149))

(assert (=> d!991931 m!3847137))

(declare-fun m!3847223 () Bool)

(assert (=> b!3450187 m!3847223))

(assert (=> b!3449887 d!991931))

(declare-fun b!3450192 () Bool)

(declare-fun res!1391363 () Bool)

(declare-fun e!2137150 () Bool)

(assert (=> b!3450192 (=> (not res!1391363) (not e!2137150))))

(declare-fun lt!1171005 () List!37203)

(assert (=> b!3450192 (= res!1391363 (= (size!28101 lt!1171005) (+ (size!28101 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (size!28101 lt!1170945))))))

(declare-fun b!3450193 () Bool)

(assert (=> b!3450193 (= e!2137150 (or (not (= lt!1170945 Nil!37079)) (= lt!1171005 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun d!991933 () Bool)

(assert (=> d!991933 e!2137150))

(declare-fun res!1391364 () Bool)

(assert (=> d!991933 (=> (not res!1391364) (not e!2137150))))

(assert (=> d!991933 (= res!1391364 (= (content!5161 lt!1171005) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (content!5161 lt!1170945))))))

(declare-fun e!2137149 () List!37203)

(assert (=> d!991933 (= lt!1171005 e!2137149)))

(declare-fun c!590532 () Bool)

(assert (=> d!991933 (= c!590532 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!991933 (= (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945) lt!1171005)))

(declare-fun b!3450190 () Bool)

(assert (=> b!3450190 (= e!2137149 lt!1170945)))

(declare-fun b!3450191 () Bool)

(assert (=> b!3450191 (= e!2137149 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) lt!1170945)))))

(assert (= (and d!991933 c!590532) b!3450190))

(assert (= (and d!991933 (not c!590532)) b!3450191))

(assert (= (and d!991933 res!1391364) b!3450192))

(assert (= (and b!3450192 res!1391363) b!3450193))

(declare-fun m!3847225 () Bool)

(assert (=> b!3450192 m!3847225))

(assert (=> b!3450192 m!3846887))

(declare-fun m!3847227 () Bool)

(assert (=> b!3450192 m!3847227))

(assert (=> b!3450192 m!3847143))

(declare-fun m!3847229 () Bool)

(assert (=> d!991933 m!3847229))

(assert (=> d!991933 m!3846887))

(declare-fun m!3847231 () Bool)

(assert (=> d!991933 m!3847231))

(assert (=> d!991933 m!3847149))

(declare-fun m!3847233 () Bool)

(assert (=> b!3450191 m!3847233))

(assert (=> b!3449887 d!991933))

(declare-fun d!991935 () Bool)

(declare-fun c!590533 () Bool)

(assert (=> d!991935 (= c!590533 ((_ is Cons!37080) (t!271613 (t!271613 tokens!494))))))

(declare-fun e!2137151 () List!37203)

(assert (=> d!991935 (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241) e!2137151)))

(declare-fun b!3450194 () Bool)

(assert (=> b!3450194 (= e!2137151 (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241)))))

(declare-fun b!3450195 () Bool)

(assert (=> b!3450195 (= e!2137151 Nil!37079)))

(assert (= (and d!991935 c!590533) b!3450194))

(assert (= (and d!991935 (not c!590533)) b!3450195))

(assert (=> b!3450194 m!3846893))

(assert (=> b!3450194 m!3846895))

(declare-fun m!3847235 () Bool)

(assert (=> b!3450194 m!3847235))

(declare-fun m!3847237 () Bool)

(assert (=> b!3450194 m!3847237))

(declare-fun m!3847239 () Bool)

(assert (=> b!3450194 m!3847239))

(declare-fun m!3847241 () Bool)

(assert (=> b!3450194 m!3847241))

(assert (=> b!3450194 m!3847235))

(declare-fun m!3847243 () Bool)

(assert (=> b!3450194 m!3847243))

(assert (=> b!3450194 m!3847243))

(assert (=> b!3450194 m!3846895))

(assert (=> b!3450194 m!3847237))

(assert (=> b!3450194 m!3847239))

(assert (=> b!3450194 m!3846893))

(assert (=> b!3449887 d!991935))

(declare-fun d!991937 () Bool)

(declare-fun c!590534 () Bool)

(assert (=> d!991937 (= c!590534 ((_ is Cons!37080) (t!271613 tokens!494)))))

(declare-fun e!2137152 () List!37203)

(assert (=> d!991937 (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241) e!2137152)))

(declare-fun b!3450196 () Bool)

(assert (=> b!3450196 (= e!2137152 (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))

(declare-fun b!3450197 () Bool)

(assert (=> b!3450197 (= e!2137152 Nil!37079)))

(assert (= (and d!991937 c!590534) b!3450196))

(assert (= (and d!991937 (not c!590534)) b!3450197))

(assert (=> b!3450196 m!3846893))

(assert (=> b!3450196 m!3846895))

(assert (=> b!3450196 m!3846881))

(declare-fun m!3847245 () Bool)

(assert (=> b!3450196 m!3847245))

(assert (=> b!3450196 m!3846889))

(declare-fun m!3847247 () Bool)

(assert (=> b!3450196 m!3847247))

(assert (=> b!3450196 m!3846881))

(assert (=> b!3450196 m!3846887))

(assert (=> b!3450196 m!3846887))

(assert (=> b!3450196 m!3846895))

(assert (=> b!3450196 m!3847245))

(assert (=> b!3450196 m!3846889))

(assert (=> b!3450196 m!3846893))

(assert (=> b!3449887 d!991937))

(declare-fun d!991939 () Bool)

(assert (=> d!991939 (= (list!13483 (charsOf!3434 separatorToken!241)) (list!13487 (c!590467 (charsOf!3434 separatorToken!241))))))

(declare-fun bs!559721 () Bool)

(assert (= bs!559721 d!991939))

(declare-fun m!3847249 () Bool)

(assert (=> bs!559721 m!3847249))

(assert (=> b!3449887 d!991939))

(declare-fun d!991941 () Bool)

(declare-fun lt!1171006 () BalanceConc!22044)

(assert (=> d!991941 (= (list!13483 lt!1171006) (originalCharacters!6134 (h!42500 (t!271613 tokens!494))))))

(assert (=> d!991941 (= lt!1171006 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))

(assert (=> d!991941 (= (charsOf!3434 (h!42500 (t!271613 tokens!494))) lt!1171006)))

(declare-fun b_lambda!99003 () Bool)

(assert (=> (not b_lambda!99003) (not d!991941)))

(declare-fun tb!187647 () Bool)

(declare-fun t!271643 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271643) tb!187647))

(declare-fun b!3450198 () Bool)

(declare-fun e!2137153 () Bool)

(declare-fun tp!1076239 () Bool)

(assert (=> b!3450198 (= e!2137153 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))) tp!1076239))))

(declare-fun result!231488 () Bool)

(assert (=> tb!187647 (= result!231488 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))) e!2137153))))

(assert (= tb!187647 b!3450198))

(declare-fun m!3847251 () Bool)

(assert (=> b!3450198 m!3847251))

(declare-fun m!3847253 () Bool)

(assert (=> tb!187647 m!3847253))

(assert (=> d!991941 t!271643))

(declare-fun b_and!242253 () Bool)

(assert (= b_and!242247 (and (=> t!271643 result!231488) b_and!242253)))

(declare-fun t!271645 () Bool)

(declare-fun tb!187649 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271645) tb!187649))

(declare-fun result!231490 () Bool)

(assert (= result!231490 result!231488))

(assert (=> d!991941 t!271645))

(declare-fun b_and!242255 () Bool)

(assert (= b_and!242249 (and (=> t!271645 result!231490) b_and!242255)))

(declare-fun tb!187651 () Bool)

(declare-fun t!271647 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271647) tb!187651))

(declare-fun result!231492 () Bool)

(assert (= result!231492 result!231488))

(assert (=> d!991941 t!271647))

(declare-fun b_and!242257 () Bool)

(assert (= b_and!242251 (and (=> t!271647 result!231492) b_and!242257)))

(declare-fun m!3847255 () Bool)

(assert (=> d!991941 m!3847255))

(declare-fun m!3847257 () Bool)

(assert (=> d!991941 m!3847257))

(assert (=> b!3449887 d!991941))

(declare-fun d!991943 () Bool)

(declare-fun lt!1171009 () BalanceConc!22044)

(assert (=> d!991943 (= (list!13483 lt!1171009) (printList!1557 thiss!18206 (list!13486 lt!1170931)))))

(assert (=> d!991943 (= lt!1171009 (printTailRec!1504 thiss!18206 lt!1170931 0 (BalanceConc!22045 Empty!11215)))))

(assert (=> d!991943 (= (print!2074 thiss!18206 lt!1170931) lt!1171009)))

(declare-fun bs!559722 () Bool)

(assert (= bs!559722 d!991943))

(declare-fun m!3847259 () Bool)

(assert (=> bs!559722 m!3847259))

(declare-fun m!3847261 () Bool)

(assert (=> bs!559722 m!3847261))

(assert (=> bs!559722 m!3847261))

(declare-fun m!3847263 () Bool)

(assert (=> bs!559722 m!3847263))

(assert (=> bs!559722 m!3846845))

(assert (=> b!3449891 d!991943))

(declare-fun d!991945 () Bool)

(assert (=> d!991945 (= (list!13483 lt!1170941) (list!13487 (c!590467 lt!1170941)))))

(declare-fun bs!559723 () Bool)

(assert (= bs!559723 d!991945))

(declare-fun m!3847265 () Bool)

(assert (=> bs!559723 m!3847265))

(assert (=> b!3449891 d!991945))

(declare-fun d!991947 () Bool)

(declare-fun lt!1171026 () BalanceConc!22044)

(declare-fun printListTailRec!678 (LexerInterface!5009 List!37204 List!37203) List!37203)

(declare-fun dropList!1195 (BalanceConc!22046 Int) List!37204)

(assert (=> d!991947 (= (list!13483 lt!1171026) (printListTailRec!678 thiss!18206 (dropList!1195 lt!1170931 0) (list!13483 (BalanceConc!22045 Empty!11215))))))

(declare-fun e!2137159 () BalanceConc!22044)

(assert (=> d!991947 (= lt!1171026 e!2137159)))

(declare-fun c!590537 () Bool)

(assert (=> d!991947 (= c!590537 (>= 0 (size!28104 lt!1170931)))))

(declare-fun e!2137158 () Bool)

(assert (=> d!991947 e!2137158))

(declare-fun res!1391367 () Bool)

(assert (=> d!991947 (=> (not res!1391367) (not e!2137158))))

(assert (=> d!991947 (= res!1391367 (>= 0 0))))

(assert (=> d!991947 (= (printTailRec!1504 thiss!18206 lt!1170931 0 (BalanceConc!22045 Empty!11215)) lt!1171026)))

(declare-fun b!3450205 () Bool)

(assert (=> b!3450205 (= e!2137158 (<= 0 (size!28104 lt!1170931)))))

(declare-fun b!3450206 () Bool)

(assert (=> b!3450206 (= e!2137159 (BalanceConc!22045 Empty!11215))))

(declare-fun b!3450207 () Bool)

(declare-fun ++!9127 (BalanceConc!22044 BalanceConc!22044) BalanceConc!22044)

(assert (=> b!3450207 (= e!2137159 (printTailRec!1504 thiss!18206 lt!1170931 (+ 0 1) (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0)))))))

(declare-fun lt!1171028 () List!37204)

(assert (=> b!3450207 (= lt!1171028 (list!13486 lt!1170931))))

(declare-fun lt!1171029 () Unit!52398)

(declare-fun lemmaDropApply!1153 (List!37204 Int) Unit!52398)

(assert (=> b!3450207 (= lt!1171029 (lemmaDropApply!1153 lt!1171028 0))))

(declare-fun head!7291 (List!37204) Token!10206)

(declare-fun drop!2001 (List!37204 Int) List!37204)

(declare-fun apply!8695 (List!37204 Int) Token!10206)

(assert (=> b!3450207 (= (head!7291 (drop!2001 lt!1171028 0)) (apply!8695 lt!1171028 0))))

(declare-fun lt!1171027 () Unit!52398)

(assert (=> b!3450207 (= lt!1171027 lt!1171029)))

(declare-fun lt!1171025 () List!37204)

(assert (=> b!3450207 (= lt!1171025 (list!13486 lt!1170931))))

(declare-fun lt!1171024 () Unit!52398)

(declare-fun lemmaDropTail!1037 (List!37204 Int) Unit!52398)

(assert (=> b!3450207 (= lt!1171024 (lemmaDropTail!1037 lt!1171025 0))))

(declare-fun tail!5413 (List!37204) List!37204)

(assert (=> b!3450207 (= (tail!5413 (drop!2001 lt!1171025 0)) (drop!2001 lt!1171025 (+ 0 1)))))

(declare-fun lt!1171030 () Unit!52398)

(assert (=> b!3450207 (= lt!1171030 lt!1171024)))

(assert (= (and d!991947 res!1391367) b!3450205))

(assert (= (and d!991947 c!590537) b!3450206))

(assert (= (and d!991947 (not c!590537)) b!3450207))

(declare-fun m!3847267 () Bool)

(assert (=> d!991947 m!3847267))

(declare-fun m!3847269 () Bool)

(assert (=> d!991947 m!3847269))

(declare-fun m!3847271 () Bool)

(assert (=> d!991947 m!3847271))

(assert (=> d!991947 m!3847267))

(declare-fun m!3847273 () Bool)

(assert (=> d!991947 m!3847273))

(declare-fun m!3847275 () Bool)

(assert (=> d!991947 m!3847275))

(assert (=> d!991947 m!3847271))

(assert (=> b!3450205 m!3847269))

(declare-fun m!3847277 () Bool)

(assert (=> b!3450207 m!3847277))

(declare-fun m!3847279 () Bool)

(assert (=> b!3450207 m!3847279))

(declare-fun m!3847281 () Bool)

(assert (=> b!3450207 m!3847281))

(declare-fun m!3847283 () Bool)

(assert (=> b!3450207 m!3847283))

(assert (=> b!3450207 m!3847279))

(declare-fun m!3847285 () Bool)

(assert (=> b!3450207 m!3847285))

(assert (=> b!3450207 m!3847261))

(declare-fun m!3847287 () Bool)

(assert (=> b!3450207 m!3847287))

(declare-fun m!3847289 () Bool)

(assert (=> b!3450207 m!3847289))

(declare-fun m!3847291 () Bool)

(assert (=> b!3450207 m!3847291))

(declare-fun m!3847293 () Bool)

(assert (=> b!3450207 m!3847293))

(declare-fun m!3847295 () Bool)

(assert (=> b!3450207 m!3847295))

(assert (=> b!3450207 m!3847283))

(declare-fun m!3847297 () Bool)

(assert (=> b!3450207 m!3847297))

(assert (=> b!3450207 m!3847291))

(assert (=> b!3450207 m!3847297))

(declare-fun m!3847299 () Bool)

(assert (=> b!3450207 m!3847299))

(assert (=> b!3450207 m!3847281))

(assert (=> b!3449891 d!991947))

(declare-fun d!991949 () Bool)

(declare-fun e!2137162 () Bool)

(assert (=> d!991949 e!2137162))

(declare-fun res!1391370 () Bool)

(assert (=> d!991949 (=> (not res!1391370) (not e!2137162))))

(declare-fun lt!1171033 () BalanceConc!22046)

(assert (=> d!991949 (= res!1391370 (= (list!13486 lt!1171033) (Cons!37080 (h!42500 tokens!494) Nil!37080)))))

(declare-fun singleton!1110 (Token!10206) BalanceConc!22046)

(assert (=> d!991949 (= lt!1171033 (singleton!1110 (h!42500 tokens!494)))))

(assert (=> d!991949 (= (singletonSeq!2516 (h!42500 tokens!494)) lt!1171033)))

(declare-fun b!3450210 () Bool)

(declare-fun isBalanced!3401 (Conc!11216) Bool)

(assert (=> b!3450210 (= e!2137162 (isBalanced!3401 (c!590468 lt!1171033)))))

(assert (= (and d!991949 res!1391370) b!3450210))

(declare-fun m!3847301 () Bool)

(assert (=> d!991949 m!3847301))

(declare-fun m!3847303 () Bool)

(assert (=> d!991949 m!3847303))

(declare-fun m!3847305 () Bool)

(assert (=> b!3450210 m!3847305))

(assert (=> b!3449891 d!991949))

(declare-fun d!991951 () Bool)

(declare-fun c!590540 () Bool)

(assert (=> d!991951 (= c!590540 ((_ is Cons!37080) (Cons!37080 (h!42500 tokens!494) Nil!37080)))))

(declare-fun e!2137165 () List!37203)

(assert (=> d!991951 (= (printList!1557 thiss!18206 (Cons!37080 (h!42500 tokens!494) Nil!37080)) e!2137165)))

(declare-fun b!3450215 () Bool)

(assert (=> b!3450215 (= e!2137165 (++!9125 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))) (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))))

(declare-fun b!3450216 () Bool)

(assert (=> b!3450216 (= e!2137165 Nil!37079)))

(assert (= (and d!991951 c!590540) b!3450215))

(assert (= (and d!991951 (not c!590540)) b!3450216))

(declare-fun m!3847307 () Bool)

(assert (=> b!3450215 m!3847307))

(assert (=> b!3450215 m!3847307))

(declare-fun m!3847309 () Bool)

(assert (=> b!3450215 m!3847309))

(declare-fun m!3847311 () Bool)

(assert (=> b!3450215 m!3847311))

(assert (=> b!3450215 m!3847309))

(assert (=> b!3450215 m!3847311))

(declare-fun m!3847313 () Bool)

(assert (=> b!3450215 m!3847313))

(assert (=> b!3449891 d!991951))

(declare-fun d!991953 () Bool)

(assert (=> d!991953 (= (inv!50235 (tag!6018 (rule!8000 separatorToken!241))) (= (mod (str.len (value!174929 (tag!6018 (rule!8000 separatorToken!241)))) 2) 0))))

(assert (=> b!3449889 d!991953))

(declare-fun d!991955 () Bool)

(declare-fun res!1391371 () Bool)

(declare-fun e!2137166 () Bool)

(assert (=> d!991955 (=> (not res!1391371) (not e!2137166))))

(assert (=> d!991955 (= res!1391371 (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))))))

(assert (=> d!991955 (= (inv!50238 (transformation!5420 (rule!8000 separatorToken!241))) e!2137166)))

(declare-fun b!3450217 () Bool)

(assert (=> b!3450217 (= e!2137166 (equivClasses!2172 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))))))

(assert (= (and d!991955 res!1391371) b!3450217))

(declare-fun m!3847315 () Bool)

(assert (=> d!991955 m!3847315))

(declare-fun m!3847317 () Bool)

(assert (=> b!3450217 m!3847317))

(assert (=> b!3449889 d!991955))

(declare-fun d!991957 () Bool)

(declare-fun lt!1171036 () Bool)

(assert (=> d!991957 (= lt!1171036 (select (content!5161 lt!1170945) lt!1170948))))

(declare-fun e!2137171 () Bool)

(assert (=> d!991957 (= lt!1171036 e!2137171)))

(declare-fun res!1391376 () Bool)

(assert (=> d!991957 (=> (not res!1391376) (not e!2137171))))

(assert (=> d!991957 (= res!1391376 ((_ is Cons!37079) lt!1170945))))

(assert (=> d!991957 (= (contains!6842 lt!1170945 lt!1170948) lt!1171036)))

(declare-fun b!3450222 () Bool)

(declare-fun e!2137172 () Bool)

(assert (=> b!3450222 (= e!2137171 e!2137172)))

(declare-fun res!1391377 () Bool)

(assert (=> b!3450222 (=> res!1391377 e!2137172)))

(assert (=> b!3450222 (= res!1391377 (= (h!42499 lt!1170945) lt!1170948))))

(declare-fun b!3450223 () Bool)

(assert (=> b!3450223 (= e!2137172 (contains!6842 (t!271612 lt!1170945) lt!1170948))))

(assert (= (and d!991957 res!1391376) b!3450222))

(assert (= (and b!3450222 (not res!1391377)) b!3450223))

(assert (=> d!991957 m!3847149))

(declare-fun m!3847319 () Bool)

(assert (=> d!991957 m!3847319))

(declare-fun m!3847321 () Bool)

(assert (=> b!3450223 m!3847321))

(assert (=> b!3449904 d!991957))

(declare-fun d!991959 () Bool)

(declare-fun res!1391382 () Bool)

(declare-fun e!2137175 () Bool)

(assert (=> d!991959 (=> (not res!1391382) (not e!2137175))))

(assert (=> d!991959 (= res!1391382 (not (isEmpty!21402 (originalCharacters!6134 separatorToken!241))))))

(assert (=> d!991959 (= (inv!50239 separatorToken!241) e!2137175)))

(declare-fun b!3450228 () Bool)

(declare-fun res!1391383 () Bool)

(assert (=> b!3450228 (=> (not res!1391383) (not e!2137175))))

(assert (=> b!3450228 (= res!1391383 (= (originalCharacters!6134 separatorToken!241) (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(declare-fun b!3450229 () Bool)

(assert (=> b!3450229 (= e!2137175 (= (size!28100 separatorToken!241) (size!28101 (originalCharacters!6134 separatorToken!241))))))

(assert (= (and d!991959 res!1391382) b!3450228))

(assert (= (and b!3450228 res!1391383) b!3450229))

(declare-fun b_lambda!99005 () Bool)

(assert (=> (not b_lambda!99005) (not b!3450228)))

(assert (=> b!3450228 t!271637))

(declare-fun b_and!242259 () Bool)

(assert (= b_and!242253 (and (=> t!271637 result!231480) b_and!242259)))

(assert (=> b!3450228 t!271639))

(declare-fun b_and!242261 () Bool)

(assert (= b_and!242255 (and (=> t!271639 result!231484) b_and!242261)))

(assert (=> b!3450228 t!271641))

(declare-fun b_and!242263 () Bool)

(assert (= b_and!242257 (and (=> t!271641 result!231486) b_and!242263)))

(declare-fun m!3847323 () Bool)

(assert (=> d!991959 m!3847323))

(assert (=> b!3450228 m!3847215))

(assert (=> b!3450228 m!3847215))

(declare-fun m!3847325 () Bool)

(assert (=> b!3450228 m!3847325))

(declare-fun m!3847327 () Bool)

(assert (=> b!3450229 m!3847327))

(assert (=> start!320498 d!991959))

(declare-fun d!991961 () Bool)

(declare-fun res!1391388 () Bool)

(declare-fun e!2137180 () Bool)

(assert (=> d!991961 (=> res!1391388 e!2137180)))

(assert (=> d!991961 (= res!1391388 (not ((_ is Cons!37081) rules!2135)))))

(assert (=> d!991961 (= (sepAndNonSepRulesDisjointChars!1614 rules!2135 rules!2135) e!2137180)))

(declare-fun b!3450234 () Bool)

(declare-fun e!2137181 () Bool)

(assert (=> b!3450234 (= e!2137180 e!2137181)))

(declare-fun res!1391389 () Bool)

(assert (=> b!3450234 (=> (not res!1391389) (not e!2137181))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!709 (Rule!10640 List!37205) Bool)

(assert (=> b!3450234 (= res!1391389 (ruleDisjointCharsFromAllFromOtherType!709 (h!42501 rules!2135) rules!2135))))

(declare-fun b!3450235 () Bool)

(assert (=> b!3450235 (= e!2137181 (sepAndNonSepRulesDisjointChars!1614 rules!2135 (t!271614 rules!2135)))))

(assert (= (and d!991961 (not res!1391388)) b!3450234))

(assert (= (and b!3450234 res!1391389) b!3450235))

(declare-fun m!3847329 () Bool)

(assert (=> b!3450234 m!3847329))

(declare-fun m!3847331 () Bool)

(assert (=> b!3450235 m!3847331))

(assert (=> b!3449903 d!991961))

(declare-fun bs!559731 () Bool)

(declare-fun d!991963 () Bool)

(assert (= bs!559731 (and d!991963 b!3449899)))

(declare-fun lambda!121535 () Int)

(assert (=> bs!559731 (not (= lambda!121535 lambda!121525))))

(declare-fun b!3450378 () Bool)

(declare-fun e!2137274 () Bool)

(assert (=> b!3450378 (= e!2137274 true)))

(declare-fun b!3450377 () Bool)

(declare-fun e!2137273 () Bool)

(assert (=> b!3450377 (= e!2137273 e!2137274)))

(declare-fun b!3450376 () Bool)

(declare-fun e!2137272 () Bool)

(assert (=> b!3450376 (= e!2137272 e!2137273)))

(assert (=> d!991963 e!2137272))

(assert (= b!3450377 b!3450378))

(assert (= b!3450376 b!3450377))

(assert (= (and d!991963 ((_ is Cons!37081) rules!2135)) b!3450376))

(declare-fun order!19681 () Int)

(declare-fun order!19683 () Int)

(declare-fun dynLambda!15571 (Int Int) Int)

(declare-fun dynLambda!15572 (Int Int) Int)

(assert (=> b!3450378 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15572 order!19683 lambda!121535))))

(declare-fun order!19685 () Int)

(declare-fun dynLambda!15573 (Int Int) Int)

(assert (=> b!3450378 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15572 order!19683 lambda!121535))))

(assert (=> d!991963 true))

(declare-fun e!2137261 () Bool)

(assert (=> d!991963 e!2137261))

(declare-fun res!1391446 () Bool)

(assert (=> d!991963 (=> (not res!1391446) (not e!2137261))))

(declare-fun lt!1171080 () Bool)

(assert (=> d!991963 (= res!1391446 (= lt!1171080 (forall!7885 (list!13486 (seqFromList!3893 tokens!494)) lambda!121535)))))

(declare-fun forall!7887 (BalanceConc!22046 Int) Bool)

(assert (=> d!991963 (= lt!1171080 (forall!7887 (seqFromList!3893 tokens!494) lambda!121535))))

(assert (=> d!991963 (not (isEmpty!21395 rules!2135))))

(assert (=> d!991963 (= (rulesProduceEachTokenIndividually!1460 thiss!18206 rules!2135 (seqFromList!3893 tokens!494)) lt!1171080)))

(declare-fun b!3450361 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1845 (LexerInterface!5009 List!37205 List!37204) Bool)

(assert (=> b!3450361 (= e!2137261 (= lt!1171080 (rulesProduceEachTokenIndividuallyList!1845 thiss!18206 rules!2135 (list!13486 (seqFromList!3893 tokens!494)))))))

(assert (= (and d!991963 res!1391446) b!3450361))

(assert (=> d!991963 m!3846831))

(declare-fun m!3847485 () Bool)

(assert (=> d!991963 m!3847485))

(assert (=> d!991963 m!3847485))

(declare-fun m!3847487 () Bool)

(assert (=> d!991963 m!3847487))

(assert (=> d!991963 m!3846831))

(declare-fun m!3847489 () Bool)

(assert (=> d!991963 m!3847489))

(assert (=> d!991963 m!3846905))

(assert (=> b!3450361 m!3846831))

(assert (=> b!3450361 m!3847485))

(assert (=> b!3450361 m!3847485))

(declare-fun m!3847491 () Bool)

(assert (=> b!3450361 m!3847491))

(assert (=> b!3449881 d!991963))

(declare-fun d!992021 () Bool)

(declare-fun fromListB!1763 (List!37204) BalanceConc!22046)

(assert (=> d!992021 (= (seqFromList!3893 tokens!494) (fromListB!1763 tokens!494))))

(declare-fun bs!559732 () Bool)

(assert (= bs!559732 d!992021))

(declare-fun m!3847493 () Bool)

(assert (=> bs!559732 m!3847493))

(assert (=> b!3449881 d!992021))

(declare-fun b!3450393 () Bool)

(declare-fun e!2137280 () Bool)

(assert (=> b!3450393 (= e!2137280 (inv!15 (value!174930 (h!42500 tokens!494))))))

(declare-fun b!3450394 () Bool)

(declare-fun e!2137281 () Bool)

(declare-fun e!2137279 () Bool)

(assert (=> b!3450394 (= e!2137281 e!2137279)))

(declare-fun c!590572 () Bool)

(assert (=> b!3450394 (= c!590572 ((_ is IntegerValue!16951) (value!174930 (h!42500 tokens!494))))))

(declare-fun b!3450395 () Bool)

(assert (=> b!3450395 (= e!2137281 (inv!16 (value!174930 (h!42500 tokens!494))))))

(declare-fun d!992023 () Bool)

(declare-fun c!590571 () Bool)

(assert (=> d!992023 (= c!590571 ((_ is IntegerValue!16950) (value!174930 (h!42500 tokens!494))))))

(assert (=> d!992023 (= (inv!21 (value!174930 (h!42500 tokens!494))) e!2137281)))

(declare-fun b!3450396 () Bool)

(declare-fun res!1391461 () Bool)

(assert (=> b!3450396 (=> res!1391461 e!2137280)))

(assert (=> b!3450396 (= res!1391461 (not ((_ is IntegerValue!16952) (value!174930 (h!42500 tokens!494)))))))

(assert (=> b!3450396 (= e!2137279 e!2137280)))

(declare-fun b!3450397 () Bool)

(assert (=> b!3450397 (= e!2137279 (inv!17 (value!174930 (h!42500 tokens!494))))))

(assert (= (and d!992023 c!590571) b!3450395))

(assert (= (and d!992023 (not c!590571)) b!3450394))

(assert (= (and b!3450394 c!590572) b!3450397))

(assert (= (and b!3450394 (not c!590572)) b!3450396))

(assert (= (and b!3450396 (not res!1391461)) b!3450393))

(declare-fun m!3847495 () Bool)

(assert (=> b!3450393 m!3847495))

(declare-fun m!3847497 () Bool)

(assert (=> b!3450395 m!3847497))

(declare-fun m!3847499 () Bool)

(assert (=> b!3450397 m!3847499))

(assert (=> b!3449886 d!992023))

(declare-fun d!992025 () Bool)

(declare-fun res!1391462 () Bool)

(declare-fun e!2137282 () Bool)

(assert (=> d!992025 (=> (not res!1391462) (not e!2137282))))

(assert (=> d!992025 (= res!1391462 (not (isEmpty!21402 (originalCharacters!6134 (h!42500 tokens!494)))))))

(assert (=> d!992025 (= (inv!50239 (h!42500 tokens!494)) e!2137282)))

(declare-fun b!3450398 () Bool)

(declare-fun res!1391463 () Bool)

(assert (=> b!3450398 (=> (not res!1391463) (not e!2137282))))

(assert (=> b!3450398 (= res!1391463 (= (originalCharacters!6134 (h!42500 tokens!494)) (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(declare-fun b!3450399 () Bool)

(assert (=> b!3450399 (= e!2137282 (= (size!28100 (h!42500 tokens!494)) (size!28101 (originalCharacters!6134 (h!42500 tokens!494)))))))

(assert (= (and d!992025 res!1391462) b!3450398))

(assert (= (and b!3450398 res!1391463) b!3450399))

(declare-fun b_lambda!99009 () Bool)

(assert (=> (not b_lambda!99009) (not b!3450398)))

(declare-fun t!271658 () Bool)

(declare-fun tb!187653 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271658) tb!187653))

(declare-fun b!3450400 () Bool)

(declare-fun e!2137283 () Bool)

(declare-fun tp!1076240 () Bool)

(assert (=> b!3450400 (= e!2137283 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))) tp!1076240))))

(declare-fun result!231494 () Bool)

(assert (=> tb!187653 (= result!231494 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))) e!2137283))))

(assert (= tb!187653 b!3450400))

(declare-fun m!3847501 () Bool)

(assert (=> b!3450400 m!3847501))

(declare-fun m!3847503 () Bool)

(assert (=> tb!187653 m!3847503))

(assert (=> b!3450398 t!271658))

(declare-fun b_and!242271 () Bool)

(assert (= b_and!242259 (and (=> t!271658 result!231494) b_and!242271)))

(declare-fun t!271660 () Bool)

(declare-fun tb!187655 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271660) tb!187655))

(declare-fun result!231496 () Bool)

(assert (= result!231496 result!231494))

(assert (=> b!3450398 t!271660))

(declare-fun b_and!242273 () Bool)

(assert (= b_and!242261 (and (=> t!271660 result!231496) b_and!242273)))

(declare-fun t!271662 () Bool)

(declare-fun tb!187657 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271662) tb!187657))

(declare-fun result!231498 () Bool)

(assert (= result!231498 result!231494))

(assert (=> b!3450398 t!271662))

(declare-fun b_and!242275 () Bool)

(assert (= b_and!242263 (and (=> t!271662 result!231498) b_and!242275)))

(declare-fun m!3847505 () Bool)

(assert (=> d!992025 m!3847505))

(declare-fun m!3847507 () Bool)

(assert (=> b!3450398 m!3847507))

(assert (=> b!3450398 m!3847507))

(declare-fun m!3847509 () Bool)

(assert (=> b!3450398 m!3847509))

(declare-fun m!3847511 () Bool)

(assert (=> b!3450399 m!3847511))

(assert (=> b!3449885 d!992025))

(declare-fun d!992027 () Bool)

(assert (=> d!992027 (= (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13487 (c!590467 (charsOf!3434 (h!42500 tokens!494)))))))

(declare-fun bs!559733 () Bool)

(assert (= bs!559733 d!992027))

(declare-fun m!3847513 () Bool)

(assert (=> bs!559733 m!3847513))

(assert (=> b!3449884 d!992027))

(declare-fun d!992029 () Bool)

(declare-fun lt!1171091 () BalanceConc!22044)

(assert (=> d!992029 (= (list!13483 lt!1171091) (originalCharacters!6134 (h!42500 tokens!494)))))

(assert (=> d!992029 (= lt!1171091 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))

(assert (=> d!992029 (= (charsOf!3434 (h!42500 tokens!494)) lt!1171091)))

(declare-fun b_lambda!99011 () Bool)

(assert (=> (not b_lambda!99011) (not d!992029)))

(assert (=> d!992029 t!271658))

(declare-fun b_and!242277 () Bool)

(assert (= b_and!242271 (and (=> t!271658 result!231494) b_and!242277)))

(assert (=> d!992029 t!271660))

(declare-fun b_and!242279 () Bool)

(assert (= b_and!242273 (and (=> t!271660 result!231496) b_and!242279)))

(assert (=> d!992029 t!271662))

(declare-fun b_and!242281 () Bool)

(assert (= b_and!242275 (and (=> t!271662 result!231498) b_and!242281)))

(declare-fun m!3847515 () Bool)

(assert (=> d!992029 m!3847515))

(assert (=> d!992029 m!3847507))

(assert (=> b!3449884 d!992029))

(declare-fun d!992031 () Bool)

(assert (=> d!992031 (= (inv!50235 (tag!6018 (h!42501 rules!2135))) (= (mod (str.len (value!174929 (tag!6018 (h!42501 rules!2135)))) 2) 0))))

(assert (=> b!3449878 d!992031))

(declare-fun d!992033 () Bool)

(declare-fun res!1391464 () Bool)

(declare-fun e!2137284 () Bool)

(assert (=> d!992033 (=> (not res!1391464) (not e!2137284))))

(assert (=> d!992033 (= res!1391464 (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (h!42501 rules!2135)))))))

(assert (=> d!992033 (= (inv!50238 (transformation!5420 (h!42501 rules!2135))) e!2137284)))

(declare-fun b!3450401 () Bool)

(assert (=> b!3450401 (= e!2137284 (equivClasses!2172 (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (h!42501 rules!2135)))))))

(assert (= (and d!992033 res!1391464) b!3450401))

(declare-fun m!3847517 () Bool)

(assert (=> d!992033 m!3847517))

(declare-fun m!3847519 () Bool)

(assert (=> b!3450401 m!3847519))

(assert (=> b!3449878 d!992033))

(declare-fun d!992035 () Bool)

(declare-fun res!1391469 () Bool)

(declare-fun e!2137289 () Bool)

(assert (=> d!992035 (=> res!1391469 e!2137289)))

(assert (=> d!992035 (= res!1391469 ((_ is Nil!37080) tokens!494))))

(assert (=> d!992035 (= (forall!7885 tokens!494 lambda!121525) e!2137289)))

(declare-fun b!3450406 () Bool)

(declare-fun e!2137290 () Bool)

(assert (=> b!3450406 (= e!2137289 e!2137290)))

(declare-fun res!1391470 () Bool)

(assert (=> b!3450406 (=> (not res!1391470) (not e!2137290))))

(assert (=> b!3450406 (= res!1391470 (dynLambda!15569 lambda!121525 (h!42500 tokens!494)))))

(declare-fun b!3450407 () Bool)

(assert (=> b!3450407 (= e!2137290 (forall!7885 (t!271613 tokens!494) lambda!121525))))

(assert (= (and d!992035 (not res!1391469)) b!3450406))

(assert (= (and b!3450406 res!1391470) b!3450407))

(declare-fun b_lambda!99013 () Bool)

(assert (=> (not b_lambda!99013) (not b!3450406)))

(assert (=> b!3450406 m!3847159))

(declare-fun m!3847521 () Bool)

(assert (=> b!3450407 m!3847521))

(assert (=> b!3449899 d!992035))

(declare-fun b!3450410 () Bool)

(declare-fun res!1391471 () Bool)

(declare-fun e!2137292 () Bool)

(assert (=> b!3450410 (=> (not res!1391471) (not e!2137292))))

(declare-fun lt!1171092 () List!37203)

(assert (=> b!3450410 (= res!1391471 (= (size!28101 lt!1171092) (+ (size!28101 lt!1170951) (size!28101 lt!1170944))))))

(declare-fun b!3450411 () Bool)

(assert (=> b!3450411 (= e!2137292 (or (not (= lt!1170944 Nil!37079)) (= lt!1171092 lt!1170951)))))

(declare-fun d!992037 () Bool)

(assert (=> d!992037 e!2137292))

(declare-fun res!1391472 () Bool)

(assert (=> d!992037 (=> (not res!1391472) (not e!2137292))))

(assert (=> d!992037 (= res!1391472 (= (content!5161 lt!1171092) ((_ map or) (content!5161 lt!1170951) (content!5161 lt!1170944))))))

(declare-fun e!2137291 () List!37203)

(assert (=> d!992037 (= lt!1171092 e!2137291)))

(declare-fun c!590573 () Bool)

(assert (=> d!992037 (= c!590573 ((_ is Nil!37079) lt!1170951))))

(assert (=> d!992037 (= (++!9125 lt!1170951 lt!1170944) lt!1171092)))

(declare-fun b!3450408 () Bool)

(assert (=> b!3450408 (= e!2137291 lt!1170944)))

(declare-fun b!3450409 () Bool)

(assert (=> b!3450409 (= e!2137291 (Cons!37079 (h!42499 lt!1170951) (++!9125 (t!271612 lt!1170951) lt!1170944)))))

(assert (= (and d!992037 c!590573) b!3450408))

(assert (= (and d!992037 (not c!590573)) b!3450409))

(assert (= (and d!992037 res!1391472) b!3450410))

(assert (= (and b!3450410 res!1391471) b!3450411))

(declare-fun m!3847523 () Bool)

(assert (=> b!3450410 m!3847523))

(assert (=> b!3450410 m!3846815))

(declare-fun m!3847525 () Bool)

(assert (=> b!3450410 m!3847525))

(declare-fun m!3847527 () Bool)

(assert (=> d!992037 m!3847527))

(assert (=> d!992037 m!3847147))

(declare-fun m!3847529 () Bool)

(assert (=> d!992037 m!3847529))

(declare-fun m!3847531 () Bool)

(assert (=> b!3450409 m!3847531))

(assert (=> b!3449877 d!992037))

(declare-fun d!992039 () Bool)

(assert (=> d!992039 (= (++!9125 (++!9125 lt!1170951 lt!1170945) lt!1170933) (++!9125 lt!1170951 (++!9125 lt!1170945 lt!1170933)))))

(declare-fun lt!1171100 () Unit!52398)

(declare-fun choose!19923 (List!37203 List!37203 List!37203) Unit!52398)

(assert (=> d!992039 (= lt!1171100 (choose!19923 lt!1170951 lt!1170945 lt!1170933))))

(assert (=> d!992039 (= (lemmaConcatAssociativity!1936 lt!1170951 lt!1170945 lt!1170933) lt!1171100)))

(declare-fun bs!559734 () Bool)

(assert (= bs!559734 d!992039))

(assert (=> bs!559734 m!3846869))

(assert (=> bs!559734 m!3846879))

(declare-fun m!3847577 () Bool)

(assert (=> bs!559734 m!3847577))

(assert (=> bs!559734 m!3846879))

(declare-fun m!3847579 () Bool)

(assert (=> bs!559734 m!3847579))

(assert (=> bs!559734 m!3846869))

(assert (=> bs!559734 m!3846871))

(assert (=> b!3449877 d!992039))

(declare-fun b!3450421 () Bool)

(declare-fun e!2137298 () Bool)

(declare-fun lt!1171101 () Bool)

(declare-fun call!249029 () Bool)

(assert (=> b!3450421 (= e!2137298 (= lt!1171101 call!249029))))

(declare-fun b!3450422 () Bool)

(declare-fun res!1391482 () Bool)

(declare-fun e!2137299 () Bool)

(assert (=> b!3450422 (=> (not res!1391482) (not e!2137299))))

(assert (=> b!3450422 (= res!1391482 (isEmpty!21402 (tail!5411 lt!1170945)))))

(declare-fun b!3450423 () Bool)

(declare-fun e!2137303 () Bool)

(assert (=> b!3450423 (= e!2137303 (matchR!4763 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)) (tail!5411 lt!1170945)))))

(declare-fun b!3450424 () Bool)

(assert (=> b!3450424 (= e!2137299 (= (head!7289 lt!1170945) (c!590466 (regex!5420 lt!1170938))))))

(declare-fun b!3450426 () Bool)

(declare-fun res!1391481 () Bool)

(declare-fun e!2137301 () Bool)

(assert (=> b!3450426 (=> res!1391481 e!2137301)))

(assert (=> b!3450426 (= res!1391481 e!2137299)))

(declare-fun res!1391480 () Bool)

(assert (=> b!3450426 (=> (not res!1391480) (not e!2137299))))

(assert (=> b!3450426 (= res!1391480 lt!1171101)))

(declare-fun b!3450427 () Bool)

(assert (=> b!3450427 (= e!2137303 (nullable!3478 (regex!5420 lt!1170938)))))

(declare-fun b!3450428 () Bool)

(declare-fun res!1391483 () Bool)

(assert (=> b!3450428 (=> (not res!1391483) (not e!2137299))))

(assert (=> b!3450428 (= res!1391483 (not call!249029))))

(declare-fun b!3450429 () Bool)

(declare-fun e!2137297 () Bool)

(assert (=> b!3450429 (= e!2137298 e!2137297)))

(declare-fun c!590576 () Bool)

(assert (=> b!3450429 (= c!590576 ((_ is EmptyLang!10179) (regex!5420 lt!1170938)))))

(declare-fun b!3450430 () Bool)

(declare-fun res!1391487 () Bool)

(assert (=> b!3450430 (=> res!1391487 e!2137301)))

(assert (=> b!3450430 (= res!1391487 (not ((_ is ElementMatch!10179) (regex!5420 lt!1170938))))))

(assert (=> b!3450430 (= e!2137297 e!2137301)))

(declare-fun d!992043 () Bool)

(assert (=> d!992043 e!2137298))

(declare-fun c!590577 () Bool)

(assert (=> d!992043 (= c!590577 ((_ is EmptyExpr!10179) (regex!5420 lt!1170938)))))

(assert (=> d!992043 (= lt!1171101 e!2137303)))

(declare-fun c!590575 () Bool)

(assert (=> d!992043 (= c!590575 (isEmpty!21402 lt!1170945))))

(assert (=> d!992043 (validRegex!4634 (regex!5420 lt!1170938))))

(assert (=> d!992043 (= (matchR!4763 (regex!5420 lt!1170938) lt!1170945) lt!1171101)))

(declare-fun b!3450425 () Bool)

(declare-fun e!2137302 () Bool)

(assert (=> b!3450425 (= e!2137302 (not (= (head!7289 lt!1170945) (c!590466 (regex!5420 lt!1170938)))))))

(declare-fun b!3450431 () Bool)

(assert (=> b!3450431 (= e!2137297 (not lt!1171101))))

(declare-fun bm!249024 () Bool)

(assert (=> bm!249024 (= call!249029 (isEmpty!21402 lt!1170945))))

(declare-fun b!3450432 () Bool)

(declare-fun res!1391486 () Bool)

(assert (=> b!3450432 (=> res!1391486 e!2137302)))

(assert (=> b!3450432 (= res!1391486 (not (isEmpty!21402 (tail!5411 lt!1170945))))))

(declare-fun b!3450433 () Bool)

(declare-fun e!2137300 () Bool)

(assert (=> b!3450433 (= e!2137300 e!2137302)))

(declare-fun res!1391484 () Bool)

(assert (=> b!3450433 (=> res!1391484 e!2137302)))

(assert (=> b!3450433 (= res!1391484 call!249029)))

(declare-fun b!3450434 () Bool)

(assert (=> b!3450434 (= e!2137301 e!2137300)))

(declare-fun res!1391485 () Bool)

(assert (=> b!3450434 (=> (not res!1391485) (not e!2137300))))

(assert (=> b!3450434 (= res!1391485 (not lt!1171101))))

(assert (= (and d!992043 c!590575) b!3450427))

(assert (= (and d!992043 (not c!590575)) b!3450423))

(assert (= (and d!992043 c!590577) b!3450421))

(assert (= (and d!992043 (not c!590577)) b!3450429))

(assert (= (and b!3450429 c!590576) b!3450431))

(assert (= (and b!3450429 (not c!590576)) b!3450430))

(assert (= (and b!3450430 (not res!1391487)) b!3450426))

(assert (= (and b!3450426 res!1391480) b!3450428))

(assert (= (and b!3450428 res!1391483) b!3450422))

(assert (= (and b!3450422 res!1391482) b!3450424))

(assert (= (and b!3450426 (not res!1391481)) b!3450434))

(assert (= (and b!3450434 res!1391485) b!3450433))

(assert (= (and b!3450433 (not res!1391484)) b!3450432))

(assert (= (and b!3450432 (not res!1391486)) b!3450425))

(assert (= (or b!3450421 b!3450428 b!3450433) bm!249024))

(assert (=> b!3450424 m!3846811))

(declare-fun m!3847581 () Bool)

(assert (=> bm!249024 m!3847581))

(declare-fun m!3847583 () Bool)

(assert (=> b!3450432 m!3847583))

(assert (=> b!3450432 m!3847583))

(declare-fun m!3847585 () Bool)

(assert (=> b!3450432 m!3847585))

(assert (=> d!992043 m!3847581))

(declare-fun m!3847587 () Bool)

(assert (=> d!992043 m!3847587))

(assert (=> b!3450425 m!3846811))

(declare-fun m!3847589 () Bool)

(assert (=> b!3450427 m!3847589))

(assert (=> b!3450422 m!3847583))

(assert (=> b!3450422 m!3847583))

(assert (=> b!3450422 m!3847585))

(assert (=> b!3450423 m!3846811))

(assert (=> b!3450423 m!3846811))

(declare-fun m!3847591 () Bool)

(assert (=> b!3450423 m!3847591))

(assert (=> b!3450423 m!3847583))

(assert (=> b!3450423 m!3847591))

(assert (=> b!3450423 m!3847583))

(declare-fun m!3847593 () Bool)

(assert (=> b!3450423 m!3847593))

(assert (=> b!3449898 d!992043))

(declare-fun d!992045 () Bool)

(assert (=> d!992045 (= (get!11855 lt!1170943) (v!36758 lt!1170943))))

(assert (=> b!3449898 d!992045))

(declare-fun d!992047 () Bool)

(declare-fun lt!1171105 () Int)

(assert (=> d!992047 (>= lt!1171105 0)))

(declare-fun e!2137311 () Int)

(assert (=> d!992047 (= lt!1171105 e!2137311)))

(declare-fun c!590580 () Bool)

(assert (=> d!992047 (= c!590580 ((_ is Nil!37079) lt!1170951))))

(assert (=> d!992047 (= (size!28101 lt!1170951) lt!1171105)))

(declare-fun b!3450443 () Bool)

(assert (=> b!3450443 (= e!2137311 0)))

(declare-fun b!3450444 () Bool)

(assert (=> b!3450444 (= e!2137311 (+ 1 (size!28101 (t!271612 lt!1170951))))))

(assert (= (and d!992047 c!590580) b!3450443))

(assert (= (and d!992047 (not c!590580)) b!3450444))

(declare-fun m!3847605 () Bool)

(assert (=> b!3450444 m!3847605))

(assert (=> b!3449876 d!992047))

(declare-fun d!992053 () Bool)

(declare-fun lt!1171106 () Bool)

(assert (=> d!992053 (= lt!1171106 (select (content!5161 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) lt!1170948))))

(declare-fun e!2137312 () Bool)

(assert (=> d!992053 (= lt!1171106 e!2137312)))

(declare-fun res!1391490 () Bool)

(assert (=> d!992053 (=> (not res!1391490) (not e!2137312))))

(assert (=> d!992053 (= res!1391490 ((_ is Cons!37079) (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))))))

(assert (=> d!992053 (= (contains!6842 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))) lt!1170948) lt!1171106)))

(declare-fun b!3450445 () Bool)

(declare-fun e!2137313 () Bool)

(assert (=> b!3450445 (= e!2137312 e!2137313)))

(declare-fun res!1391493 () Bool)

(assert (=> b!3450445 (=> res!1391493 e!2137313)))

(assert (=> b!3450445 (= res!1391493 (= (h!42499 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) lt!1170948))))

(declare-fun b!3450446 () Bool)

(assert (=> b!3450446 (= e!2137313 (contains!6842 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) lt!1170948))))

(assert (= (and d!992053 res!1391490) b!3450445))

(assert (= (and b!3450445 (not res!1391493)) b!3450446))

(assert (=> d!992053 m!3846801))

(declare-fun m!3847607 () Bool)

(assert (=> d!992053 m!3847607))

(declare-fun m!3847609 () Bool)

(assert (=> d!992053 m!3847609))

(declare-fun m!3847611 () Bool)

(assert (=> b!3450446 m!3847611))

(assert (=> b!3449876 d!992053))

(declare-fun b!3450472 () Bool)

(declare-fun e!2137336 () Option!7485)

(assert (=> b!3450472 (= e!2137336 (Some!7484 (h!42501 rules!2135)))))

(declare-fun b!3450473 () Bool)

(declare-fun e!2137335 () Option!7485)

(assert (=> b!3450473 (= e!2137335 None!7484)))

(declare-fun b!3450474 () Bool)

(declare-fun e!2137333 () Bool)

(declare-fun lt!1171118 () Option!7485)

(assert (=> b!3450474 (= e!2137333 (= (tag!6018 (get!11855 lt!1171118)) (tag!6018 (rule!8000 separatorToken!241))))))

(declare-fun b!3450475 () Bool)

(declare-fun e!2137334 () Bool)

(assert (=> b!3450475 (= e!2137334 e!2137333)))

(declare-fun res!1391508 () Bool)

(assert (=> b!3450475 (=> (not res!1391508) (not e!2137333))))

(declare-fun contains!6846 (List!37205 Rule!10640) Bool)

(assert (=> b!3450475 (= res!1391508 (contains!6846 rules!2135 (get!11855 lt!1171118)))))

(declare-fun b!3450476 () Bool)

(declare-fun lt!1171119 () Unit!52398)

(declare-fun lt!1171117 () Unit!52398)

(assert (=> b!3450476 (= lt!1171119 lt!1171117)))

(assert (=> b!3450476 (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!422 (LexerInterface!5009 Rule!10640 List!37205) Unit!52398)

(assert (=> b!3450476 (= lt!1171117 (lemmaInvariantOnRulesThenOnTail!422 thiss!18206 (h!42501 rules!2135) (t!271614 rules!2135)))))

(assert (=> b!3450476 (= e!2137335 (getRuleFromTag!1063 thiss!18206 (t!271614 rules!2135) (tag!6018 (rule!8000 separatorToken!241))))))

(declare-fun b!3450477 () Bool)

(assert (=> b!3450477 (= e!2137336 e!2137335)))

(declare-fun c!590586 () Bool)

(assert (=> b!3450477 (= c!590586 (and ((_ is Cons!37081) rules!2135) (not (= (tag!6018 (h!42501 rules!2135)) (tag!6018 (rule!8000 separatorToken!241))))))))

(declare-fun d!992055 () Bool)

(assert (=> d!992055 e!2137334))

(declare-fun res!1391507 () Bool)

(assert (=> d!992055 (=> res!1391507 e!2137334)))

(declare-fun isEmpty!21406 (Option!7485) Bool)

(assert (=> d!992055 (= res!1391507 (isEmpty!21406 lt!1171118))))

(assert (=> d!992055 (= lt!1171118 e!2137336)))

(declare-fun c!590587 () Bool)

(assert (=> d!992055 (= c!590587 (and ((_ is Cons!37081) rules!2135) (= (tag!6018 (h!42501 rules!2135)) (tag!6018 (rule!8000 separatorToken!241)))))))

(assert (=> d!992055 (rulesInvariant!4406 thiss!18206 rules!2135)))

(assert (=> d!992055 (= (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))) lt!1171118)))

(assert (= (and d!992055 c!590587) b!3450472))

(assert (= (and d!992055 (not c!590587)) b!3450477))

(assert (= (and b!3450477 c!590586) b!3450476))

(assert (= (and b!3450477 (not c!590586)) b!3450473))

(assert (= (and d!992055 (not res!1391507)) b!3450475))

(assert (= (and b!3450475 res!1391508) b!3450474))

(declare-fun m!3847635 () Bool)

(assert (=> b!3450474 m!3847635))

(assert (=> b!3450475 m!3847635))

(assert (=> b!3450475 m!3847635))

(declare-fun m!3847637 () Bool)

(assert (=> b!3450475 m!3847637))

(declare-fun m!3847639 () Bool)

(assert (=> b!3450476 m!3847639))

(declare-fun m!3847641 () Bool)

(assert (=> b!3450476 m!3847641))

(declare-fun m!3847643 () Bool)

(assert (=> b!3450476 m!3847643))

(declare-fun m!3847645 () Bool)

(assert (=> d!992055 m!3847645))

(assert (=> d!992055 m!3846839))

(assert (=> b!3449876 d!992055))

(declare-fun d!992065 () Bool)

(declare-fun e!2137339 () Bool)

(assert (=> d!992065 e!2137339))

(declare-fun res!1391513 () Bool)

(assert (=> d!992065 (=> (not res!1391513) (not e!2137339))))

(assert (=> d!992065 (= res!1391513 (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))

(declare-fun lt!1171125 () Unit!52398)

(declare-fun choose!19924 (LexerInterface!5009 List!37205 List!37203 Token!10206) Unit!52398)

(assert (=> d!992065 (= lt!1171125 (choose!19924 thiss!18206 rules!2135 lt!1170945 separatorToken!241))))

(assert (=> d!992065 (rulesInvariant!4406 thiss!18206 rules!2135)))

(assert (=> d!992065 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1063 thiss!18206 rules!2135 lt!1170945 separatorToken!241) lt!1171125)))

(declare-fun b!3450482 () Bool)

(declare-fun res!1391514 () Bool)

(assert (=> b!3450482 (=> (not res!1391514) (not e!2137339))))

(assert (=> b!3450482 (= res!1391514 (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))) (list!13483 (charsOf!3434 separatorToken!241))))))

(declare-fun b!3450483 () Bool)

(assert (=> b!3450483 (= e!2137339 (= (rule!8000 separatorToken!241) (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))

(assert (= (and d!992065 res!1391513) b!3450482))

(assert (= (and b!3450482 res!1391514) b!3450483))

(assert (=> d!992065 m!3846807))

(assert (=> d!992065 m!3846807))

(declare-fun m!3847653 () Bool)

(assert (=> d!992065 m!3847653))

(declare-fun m!3847655 () Bool)

(assert (=> d!992065 m!3847655))

(assert (=> d!992065 m!3846839))

(assert (=> b!3450482 m!3846893))

(assert (=> b!3450482 m!3846895))

(assert (=> b!3450482 m!3846895))

(declare-fun m!3847657 () Bool)

(assert (=> b!3450482 m!3847657))

(assert (=> b!3450482 m!3846807))

(assert (=> b!3450482 m!3846893))

(assert (=> b!3450482 m!3846807))

(declare-fun m!3847659 () Bool)

(assert (=> b!3450482 m!3847659))

(assert (=> b!3450483 m!3846807))

(assert (=> b!3450483 m!3846807))

(assert (=> b!3450483 m!3847659))

(assert (=> b!3449876 d!992065))

(declare-fun d!992069 () Bool)

(declare-fun dynLambda!15574 (Int BalanceConc!22044) TokenValue!5650)

(assert (=> d!992069 (= (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) lt!1170946) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946))))

(declare-fun b_lambda!99017 () Bool)

(assert (=> (not b_lambda!99017) (not d!992069)))

(declare-fun t!271670 () Bool)

(declare-fun tb!187665 () Bool)

(assert (=> (and b!3449897 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271670) tb!187665))

(declare-fun result!231508 () Bool)

(assert (=> tb!187665 (= result!231508 (inv!21 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(declare-fun m!3847661 () Bool)

(assert (=> tb!187665 m!3847661))

(assert (=> d!992069 t!271670))

(declare-fun b_and!242289 () Bool)

(assert (= b_and!242211 (and (=> t!271670 result!231508) b_and!242289)))

(declare-fun t!271672 () Bool)

(declare-fun tb!187667 () Bool)

(assert (=> (and b!3449883 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271672) tb!187667))

(declare-fun result!231512 () Bool)

(assert (= result!231512 result!231508))

(assert (=> d!992069 t!271672))

(declare-fun b_and!242291 () Bool)

(assert (= b_and!242215 (and (=> t!271672 result!231512) b_and!242291)))

(declare-fun tb!187669 () Bool)

(declare-fun t!271674 () Bool)

(assert (=> (and b!3449880 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271674) tb!187669))

(declare-fun result!231514 () Bool)

(assert (= result!231514 result!231508))

(assert (=> d!992069 t!271674))

(declare-fun b_and!242293 () Bool)

(assert (= b_and!242219 (and (=> t!271674 result!231514) b_and!242293)))

(declare-fun m!3847663 () Bool)

(assert (=> d!992069 m!3847663))

(assert (=> b!3449876 d!992069))

(declare-fun d!992071 () Bool)

(assert (=> d!992071 (= (isDefined!5774 lt!1170943) (not (isEmpty!21406 lt!1170943)))))

(declare-fun bs!559737 () Bool)

(assert (= bs!559737 d!992071))

(declare-fun m!3847665 () Bool)

(assert (=> bs!559737 m!3847665))

(assert (=> b!3449876 d!992071))

(declare-fun d!992073 () Bool)

(declare-fun c!590599 () Bool)

(assert (=> d!992073 (= c!590599 (or ((_ is EmptyExpr!10179) (regex!5420 (rule!8000 separatorToken!241))) ((_ is EmptyLang!10179) (regex!5420 (rule!8000 separatorToken!241)))))))

(declare-fun e!2137354 () List!37203)

(assert (=> d!992073 (= (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))) e!2137354)))

(declare-fun b!3450502 () Bool)

(declare-fun e!2137351 () List!37203)

(assert (=> b!3450502 (= e!2137351 (Cons!37079 (c!590466 (regex!5420 (rule!8000 separatorToken!241))) Nil!37079))))

(declare-fun bm!249033 () Bool)

(declare-fun call!249040 () List!37203)

(declare-fun c!590598 () Bool)

(assert (=> bm!249033 (= call!249040 (usedCharacters!654 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(declare-fun bm!249034 () Bool)

(declare-fun call!249039 () List!37203)

(declare-fun c!590596 () Bool)

(assert (=> bm!249034 (= call!249039 (usedCharacters!654 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3450503 () Bool)

(assert (=> b!3450503 (= e!2137354 Nil!37079)))

(declare-fun b!3450504 () Bool)

(assert (=> b!3450504 (= e!2137354 e!2137351)))

(declare-fun c!590597 () Bool)

(assert (=> b!3450504 (= c!590597 ((_ is ElementMatch!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(declare-fun b!3450505 () Bool)

(declare-fun e!2137353 () List!37203)

(assert (=> b!3450505 (= e!2137353 call!249039)))

(declare-fun bm!249035 () Bool)

(declare-fun call!249038 () List!37203)

(declare-fun call!249041 () List!37203)

(assert (=> bm!249035 (= call!249038 (++!9125 (ite c!590598 call!249040 call!249041) (ite c!590598 call!249041 call!249040)))))

(declare-fun b!3450506 () Bool)

(declare-fun e!2137352 () List!37203)

(assert (=> b!3450506 (= e!2137352 call!249038)))

(declare-fun bm!249036 () Bool)

(assert (=> bm!249036 (= call!249041 call!249039)))

(declare-fun b!3450507 () Bool)

(assert (=> b!3450507 (= e!2137352 call!249038)))

(declare-fun b!3450508 () Bool)

(assert (=> b!3450508 (= c!590596 ((_ is Star!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(assert (=> b!3450508 (= e!2137351 e!2137353)))

(declare-fun b!3450509 () Bool)

(assert (=> b!3450509 (= e!2137353 e!2137352)))

(assert (=> b!3450509 (= c!590598 ((_ is Union!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(assert (= (and d!992073 c!590599) b!3450503))

(assert (= (and d!992073 (not c!590599)) b!3450504))

(assert (= (and b!3450504 c!590597) b!3450502))

(assert (= (and b!3450504 (not c!590597)) b!3450508))

(assert (= (and b!3450508 c!590596) b!3450505))

(assert (= (and b!3450508 (not c!590596)) b!3450509))

(assert (= (and b!3450509 c!590598) b!3450507))

(assert (= (and b!3450509 (not c!590598)) b!3450506))

(assert (= (or b!3450507 b!3450506) bm!249036))

(assert (= (or b!3450507 b!3450506) bm!249033))

(assert (= (or b!3450507 b!3450506) bm!249035))

(assert (= (or b!3450505 bm!249036) bm!249034))

(declare-fun m!3847667 () Bool)

(assert (=> bm!249033 m!3847667))

(declare-fun m!3847669 () Bool)

(assert (=> bm!249034 m!3847669))

(declare-fun m!3847671 () Bool)

(assert (=> bm!249035 m!3847671))

(assert (=> b!3449876 d!992073))

(declare-fun d!992075 () Bool)

(assert (=> d!992075 (= (maxPrefixOneRule!1716 thiss!18206 (rule!8000 (h!42500 tokens!494)) lt!1170951) (Some!7485 (tuple2!36761 (Token!10207 (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 lt!1170951)) (rule!8000 (h!42500 tokens!494)) (size!28101 lt!1170951) lt!1170951) Nil!37079)))))

(declare-fun lt!1171152 () Unit!52398)

(declare-fun choose!19925 (LexerInterface!5009 List!37205 List!37203 List!37203 List!37203 Rule!10640) Unit!52398)

(assert (=> d!992075 (= lt!1171152 (choose!19925 thiss!18206 rules!2135 lt!1170951 lt!1170951 Nil!37079 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992075 (not (isEmpty!21395 rules!2135))))

(assert (=> d!992075 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!809 thiss!18206 rules!2135 lt!1170951 lt!1170951 Nil!37079 (rule!8000 (h!42500 tokens!494))) lt!1171152)))

(declare-fun bs!559739 () Bool)

(assert (= bs!559739 d!992075))

(assert (=> bs!559739 m!3846815))

(assert (=> bs!559739 m!3846867))

(declare-fun m!3847715 () Bool)

(assert (=> bs!559739 m!3847715))

(declare-fun m!3847717 () Bool)

(assert (=> bs!559739 m!3847717))

(assert (=> bs!559739 m!3846809))

(assert (=> bs!559739 m!3846905))

(assert (=> bs!559739 m!3846867))

(assert (=> b!3449876 d!992075))

(declare-fun d!992083 () Bool)

(assert (=> d!992083 (= (isDefined!5774 lt!1170929) (not (isEmpty!21406 lt!1170929)))))

(declare-fun bs!559740 () Bool)

(assert (= bs!559740 d!992083))

(declare-fun m!3847719 () Bool)

(assert (=> bs!559740 m!3847719))

(assert (=> b!3449876 d!992083))

(declare-fun d!992085 () Bool)

(assert (=> d!992085 (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 tokens!494))))

(declare-fun lt!1171155 () Unit!52398)

(declare-fun choose!19926 (LexerInterface!5009 List!37205 List!37204 Token!10206) Unit!52398)

(assert (=> d!992085 (= lt!1171155 (choose!19926 thiss!18206 rules!2135 tokens!494 (h!42500 tokens!494)))))

(assert (=> d!992085 (not (isEmpty!21395 rules!2135))))

(assert (=> d!992085 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!998 thiss!18206 rules!2135 tokens!494 (h!42500 tokens!494)) lt!1171155)))

(declare-fun bs!559743 () Bool)

(assert (= bs!559743 d!992085))

(assert (=> bs!559743 m!3846857))

(declare-fun m!3847741 () Bool)

(assert (=> bs!559743 m!3847741))

(assert (=> bs!559743 m!3846905))

(assert (=> b!3449876 d!992085))

(declare-fun b!3450599 () Bool)

(declare-fun e!2137415 () Bool)

(declare-datatypes ((tuple2!36770 0))(
  ( (tuple2!36771 (_1!21519 List!37203) (_2!21519 List!37203)) )
))
(declare-fun findLongestMatchInner!899 (Regex!10179 List!37203 Int List!37203 List!37203 Int) tuple2!36770)

(assert (=> b!3450599 (= e!2137415 (matchR!4763 (regex!5420 (rule!8000 (h!42500 tokens!494))) (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(declare-fun d!992091 () Bool)

(declare-fun e!2137416 () Bool)

(assert (=> d!992091 e!2137416))

(declare-fun res!1391537 () Bool)

(assert (=> d!992091 (=> res!1391537 e!2137416)))

(declare-fun lt!1171168 () Option!7486)

(declare-fun isEmpty!21407 (Option!7486) Bool)

(assert (=> d!992091 (= res!1391537 (isEmpty!21407 lt!1171168))))

(declare-fun e!2137417 () Option!7486)

(assert (=> d!992091 (= lt!1171168 e!2137417)))

(declare-fun c!590608 () Bool)

(declare-fun lt!1171170 () tuple2!36770)

(assert (=> d!992091 (= c!590608 (isEmpty!21402 (_1!21519 lt!1171170)))))

(declare-fun findLongestMatch!814 (Regex!10179 List!37203) tuple2!36770)

(assert (=> d!992091 (= lt!1171170 (findLongestMatch!814 (regex!5420 (rule!8000 (h!42500 tokens!494))) lt!1170951))))

(declare-fun ruleValid!1728 (LexerInterface!5009 Rule!10640) Bool)

(assert (=> d!992091 (ruleValid!1728 thiss!18206 (rule!8000 (h!42500 tokens!494)))))

(assert (=> d!992091 (= (maxPrefixOneRule!1716 thiss!18206 (rule!8000 (h!42500 tokens!494)) lt!1170951) lt!1171168)))

(declare-fun b!3450600 () Bool)

(declare-fun e!2137414 () Bool)

(assert (=> b!3450600 (= e!2137416 e!2137414)))

(declare-fun res!1391540 () Bool)

(assert (=> b!3450600 (=> (not res!1391540) (not e!2137414))))

(declare-fun get!11857 (Option!7486) tuple2!36760)

(assert (=> b!3450600 (= res!1391540 (matchR!4763 (regex!5420 (rule!8000 (h!42500 tokens!494))) (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))

(declare-fun b!3450601 () Bool)

(assert (=> b!3450601 (= e!2137417 None!7485)))

(declare-fun b!3450602 () Bool)

(assert (=> b!3450602 (= e!2137417 (Some!7485 (tuple2!36761 (Token!10207 (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 (_1!21519 lt!1171170))) (rule!8000 (h!42500 tokens!494)) (size!28105 (seqFromList!3894 (_1!21519 lt!1171170))) (_1!21519 lt!1171170)) (_2!21519 lt!1171170))))))

(declare-fun lt!1171167 () Unit!52398)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!872 (Regex!10179 List!37203) Unit!52398)

(assert (=> b!3450602 (= lt!1171167 (longestMatchIsAcceptedByMatchOrIsEmpty!872 (regex!5420 (rule!8000 (h!42500 tokens!494))) lt!1170951))))

(declare-fun res!1391538 () Bool)

(assert (=> b!3450602 (= res!1391538 (isEmpty!21402 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(assert (=> b!3450602 (=> res!1391538 e!2137415)))

(assert (=> b!3450602 e!2137415))

(declare-fun lt!1171166 () Unit!52398)

(assert (=> b!3450602 (= lt!1171166 lt!1171167)))

(declare-fun lt!1171169 () Unit!52398)

(declare-fun lemmaSemiInverse!1249 (TokenValueInjection!10728 BalanceConc!22044) Unit!52398)

(assert (=> b!3450602 (= lt!1171169 (lemmaSemiInverse!1249 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 (_1!21519 lt!1171170))))))

(declare-fun b!3450603 () Bool)

(declare-fun res!1391541 () Bool)

(assert (=> b!3450603 (=> (not res!1391541) (not e!2137414))))

(assert (=> b!3450603 (= res!1391541 (= (value!174930 (_1!21514 (get!11857 lt!1171168))) (apply!8691 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))) (seqFromList!3894 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))))))))

(declare-fun b!3450604 () Bool)

(assert (=> b!3450604 (= e!2137414 (= (size!28100 (_1!21514 (get!11857 lt!1171168))) (size!28101 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168))))))))

(declare-fun b!3450605 () Bool)

(declare-fun res!1391535 () Bool)

(assert (=> b!3450605 (=> (not res!1391535) (not e!2137414))))

(assert (=> b!3450605 (= res!1391535 (= (rule!8000 (_1!21514 (get!11857 lt!1171168))) (rule!8000 (h!42500 tokens!494))))))

(declare-fun b!3450606 () Bool)

(declare-fun res!1391539 () Bool)

(assert (=> b!3450606 (=> (not res!1391539) (not e!2137414))))

(assert (=> b!3450606 (= res!1391539 (< (size!28101 (_2!21514 (get!11857 lt!1171168))) (size!28101 lt!1170951)))))

(declare-fun b!3450607 () Bool)

(declare-fun res!1391536 () Bool)

(assert (=> b!3450607 (=> (not res!1391536) (not e!2137414))))

(assert (=> b!3450607 (= res!1391536 (= (++!9125 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))) (_2!21514 (get!11857 lt!1171168))) lt!1170951))))

(assert (= (and d!992091 c!590608) b!3450601))

(assert (= (and d!992091 (not c!590608)) b!3450602))

(assert (= (and b!3450602 (not res!1391538)) b!3450599))

(assert (= (and d!992091 (not res!1391537)) b!3450600))

(assert (= (and b!3450600 res!1391540) b!3450607))

(assert (= (and b!3450607 res!1391536) b!3450606))

(assert (= (and b!3450606 res!1391539) b!3450605))

(assert (= (and b!3450605 res!1391535) b!3450603))

(assert (= (and b!3450603 res!1391541) b!3450604))

(declare-fun m!3847743 () Bool)

(assert (=> b!3450606 m!3847743))

(declare-fun m!3847745 () Bool)

(assert (=> b!3450606 m!3847745))

(assert (=> b!3450606 m!3846815))

(assert (=> b!3450604 m!3847743))

(declare-fun m!3847747 () Bool)

(assert (=> b!3450604 m!3847747))

(assert (=> b!3450605 m!3847743))

(assert (=> b!3450600 m!3847743))

(declare-fun m!3847749 () Bool)

(assert (=> b!3450600 m!3847749))

(assert (=> b!3450600 m!3847749))

(declare-fun m!3847751 () Bool)

(assert (=> b!3450600 m!3847751))

(assert (=> b!3450600 m!3847751))

(declare-fun m!3847753 () Bool)

(assert (=> b!3450600 m!3847753))

(declare-fun m!3847755 () Bool)

(assert (=> b!3450602 m!3847755))

(declare-fun m!3847757 () Bool)

(assert (=> b!3450602 m!3847757))

(declare-fun m!3847759 () Bool)

(assert (=> b!3450602 m!3847759))

(declare-fun m!3847761 () Bool)

(assert (=> b!3450602 m!3847761))

(assert (=> b!3450602 m!3847755))

(declare-fun m!3847763 () Bool)

(assert (=> b!3450602 m!3847763))

(declare-fun m!3847765 () Bool)

(assert (=> b!3450602 m!3847765))

(assert (=> b!3450602 m!3847755))

(assert (=> b!3450602 m!3847761))

(assert (=> b!3450602 m!3846815))

(declare-fun m!3847767 () Bool)

(assert (=> b!3450602 m!3847767))

(assert (=> b!3450602 m!3847755))

(declare-fun m!3847769 () Bool)

(assert (=> b!3450602 m!3847769))

(assert (=> b!3450602 m!3846815))

(declare-fun m!3847771 () Bool)

(assert (=> d!992091 m!3847771))

(declare-fun m!3847773 () Bool)

(assert (=> d!992091 m!3847773))

(declare-fun m!3847775 () Bool)

(assert (=> d!992091 m!3847775))

(declare-fun m!3847777 () Bool)

(assert (=> d!992091 m!3847777))

(assert (=> b!3450607 m!3847743))

(assert (=> b!3450607 m!3847749))

(assert (=> b!3450607 m!3847749))

(assert (=> b!3450607 m!3847751))

(assert (=> b!3450607 m!3847751))

(declare-fun m!3847779 () Bool)

(assert (=> b!3450607 m!3847779))

(assert (=> b!3450603 m!3847743))

(declare-fun m!3847781 () Bool)

(assert (=> b!3450603 m!3847781))

(assert (=> b!3450603 m!3847781))

(declare-fun m!3847783 () Bool)

(assert (=> b!3450603 m!3847783))

(assert (=> b!3450599 m!3847761))

(assert (=> b!3450599 m!3846815))

(assert (=> b!3450599 m!3847761))

(assert (=> b!3450599 m!3846815))

(assert (=> b!3450599 m!3847767))

(declare-fun m!3847785 () Bool)

(assert (=> b!3450599 m!3847785))

(assert (=> b!3449876 d!992091))

(declare-fun b!3450608 () Bool)

(declare-fun e!2137421 () Option!7485)

(assert (=> b!3450608 (= e!2137421 (Some!7484 (h!42501 rules!2135)))))

(declare-fun b!3450609 () Bool)

(declare-fun e!2137420 () Option!7485)

(assert (=> b!3450609 (= e!2137420 None!7484)))

(declare-fun b!3450610 () Bool)

(declare-fun e!2137418 () Bool)

(declare-fun lt!1171172 () Option!7485)

(assert (=> b!3450610 (= e!2137418 (= (tag!6018 (get!11855 lt!1171172)) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3450611 () Bool)

(declare-fun e!2137419 () Bool)

(assert (=> b!3450611 (= e!2137419 e!2137418)))

(declare-fun res!1391543 () Bool)

(assert (=> b!3450611 (=> (not res!1391543) (not e!2137418))))

(assert (=> b!3450611 (= res!1391543 (contains!6846 rules!2135 (get!11855 lt!1171172)))))

(declare-fun b!3450612 () Bool)

(declare-fun lt!1171173 () Unit!52398)

(declare-fun lt!1171171 () Unit!52398)

(assert (=> b!3450612 (= lt!1171173 lt!1171171)))

(assert (=> b!3450612 (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135))))

(assert (=> b!3450612 (= lt!1171171 (lemmaInvariantOnRulesThenOnTail!422 thiss!18206 (h!42501 rules!2135) (t!271614 rules!2135)))))

(assert (=> b!3450612 (= e!2137420 (getRuleFromTag!1063 thiss!18206 (t!271614 rules!2135) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3450613 () Bool)

(assert (=> b!3450613 (= e!2137421 e!2137420)))

(declare-fun c!590609 () Bool)

(assert (=> b!3450613 (= c!590609 (and ((_ is Cons!37081) rules!2135) (not (= (tag!6018 (h!42501 rules!2135)) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(declare-fun d!992093 () Bool)

(assert (=> d!992093 e!2137419))

(declare-fun res!1391542 () Bool)

(assert (=> d!992093 (=> res!1391542 e!2137419)))

(assert (=> d!992093 (= res!1391542 (isEmpty!21406 lt!1171172))))

(assert (=> d!992093 (= lt!1171172 e!2137421)))

(declare-fun c!590610 () Bool)

(assert (=> d!992093 (= c!590610 (and ((_ is Cons!37081) rules!2135) (= (tag!6018 (h!42501 rules!2135)) (tag!6018 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> d!992093 (rulesInvariant!4406 thiss!18206 rules!2135)))

(assert (=> d!992093 (= (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))) lt!1171172)))

(assert (= (and d!992093 c!590610) b!3450608))

(assert (= (and d!992093 (not c!590610)) b!3450613))

(assert (= (and b!3450613 c!590609) b!3450612))

(assert (= (and b!3450613 (not c!590609)) b!3450609))

(assert (= (and d!992093 (not res!1391542)) b!3450611))

(assert (= (and b!3450611 res!1391543) b!3450610))

(declare-fun m!3847787 () Bool)

(assert (=> b!3450610 m!3847787))

(assert (=> b!3450611 m!3847787))

(assert (=> b!3450611 m!3847787))

(declare-fun m!3847789 () Bool)

(assert (=> b!3450611 m!3847789))

(assert (=> b!3450612 m!3847639))

(assert (=> b!3450612 m!3847641))

(declare-fun m!3847791 () Bool)

(assert (=> b!3450612 m!3847791))

(declare-fun m!3847793 () Bool)

(assert (=> d!992093 m!3847793))

(assert (=> d!992093 m!3846839))

(assert (=> b!3449876 d!992093))

(declare-fun d!992095 () Bool)

(declare-fun e!2137422 () Bool)

(assert (=> d!992095 e!2137422))

(declare-fun res!1391544 () Bool)

(assert (=> d!992095 (=> (not res!1391544) (not e!2137422))))

(assert (=> d!992095 (= res!1391544 (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))

(declare-fun lt!1171174 () Unit!52398)

(assert (=> d!992095 (= lt!1171174 (choose!19924 thiss!18206 rules!2135 lt!1170951 (h!42500 tokens!494)))))

(assert (=> d!992095 (rulesInvariant!4406 thiss!18206 rules!2135)))

(assert (=> d!992095 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1063 thiss!18206 rules!2135 lt!1170951 (h!42500 tokens!494)) lt!1171174)))

(declare-fun b!3450614 () Bool)

(declare-fun res!1391545 () Bool)

(assert (=> b!3450614 (=> (not res!1391545) (not e!2137422))))

(assert (=> b!3450614 (= res!1391545 (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))) (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))

(declare-fun b!3450615 () Bool)

(assert (=> b!3450615 (= e!2137422 (= (rule!8000 (h!42500 tokens!494)) (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(assert (= (and d!992095 res!1391544) b!3450614))

(assert (= (and b!3450614 res!1391545) b!3450615))

(assert (=> d!992095 m!3846805))

(assert (=> d!992095 m!3846805))

(declare-fun m!3847795 () Bool)

(assert (=> d!992095 m!3847795))

(declare-fun m!3847797 () Bool)

(assert (=> d!992095 m!3847797))

(assert (=> d!992095 m!3846839))

(assert (=> b!3450614 m!3846791))

(assert (=> b!3450614 m!3846793))

(assert (=> b!3450614 m!3846793))

(declare-fun m!3847799 () Bool)

(assert (=> b!3450614 m!3847799))

(assert (=> b!3450614 m!3846805))

(assert (=> b!3450614 m!3846791))

(assert (=> b!3450614 m!3846805))

(declare-fun m!3847801 () Bool)

(assert (=> b!3450614 m!3847801))

(assert (=> b!3450615 m!3846805))

(assert (=> b!3450615 m!3846805))

(assert (=> b!3450615 m!3847801))

(assert (=> b!3449876 d!992095))

(declare-fun d!992097 () Bool)

(assert (=> d!992097 (= (head!7289 lt!1170945) (h!42499 lt!1170945))))

(assert (=> b!3449876 d!992097))

(declare-fun d!992099 () Bool)

(declare-fun lt!1171176 () Bool)

(declare-fun e!2137424 () Bool)

(assert (=> d!992099 (= lt!1171176 e!2137424)))

(declare-fun res!1391547 () Bool)

(assert (=> d!992099 (=> (not res!1391547) (not e!2137424))))

(assert (=> d!992099 (= res!1391547 (= (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))) (list!13486 (singletonSeq!2516 (h!42500 tokens!494)))))))

(declare-fun e!2137423 () Bool)

(assert (=> d!992099 (= lt!1171176 e!2137423)))

(declare-fun res!1391548 () Bool)

(assert (=> d!992099 (=> (not res!1391548) (not e!2137423))))

(declare-fun lt!1171175 () tuple2!36762)

(assert (=> d!992099 (= res!1391548 (= (size!28104 (_1!21515 lt!1171175)) 1))))

(assert (=> d!992099 (= lt!1171175 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))))

(assert (=> d!992099 (not (isEmpty!21395 rules!2135))))

(assert (=> d!992099 (= (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 tokens!494)) lt!1171176)))

(declare-fun b!3450616 () Bool)

(declare-fun res!1391546 () Bool)

(assert (=> b!3450616 (=> (not res!1391546) (not e!2137423))))

(assert (=> b!3450616 (= res!1391546 (= (apply!8694 (_1!21515 lt!1171175) 0) (h!42500 tokens!494)))))

(declare-fun b!3450617 () Bool)

(assert (=> b!3450617 (= e!2137423 (isEmpty!21403 (_2!21515 lt!1171175)))))

(declare-fun b!3450618 () Bool)

(assert (=> b!3450618 (= e!2137424 (isEmpty!21403 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))))))

(assert (= (and d!992099 res!1391548) b!3450616))

(assert (= (and b!3450616 res!1391546) b!3450617))

(assert (= (and d!992099 res!1391547) b!3450618))

(declare-fun m!3847803 () Bool)

(assert (=> d!992099 m!3847803))

(assert (=> d!992099 m!3846905))

(assert (=> d!992099 m!3846843))

(declare-fun m!3847805 () Bool)

(assert (=> d!992099 m!3847805))

(declare-fun m!3847807 () Bool)

(assert (=> d!992099 m!3847807))

(assert (=> d!992099 m!3846843))

(assert (=> d!992099 m!3847805))

(declare-fun m!3847809 () Bool)

(assert (=> d!992099 m!3847809))

(assert (=> d!992099 m!3846843))

(declare-fun m!3847811 () Bool)

(assert (=> d!992099 m!3847811))

(declare-fun m!3847813 () Bool)

(assert (=> b!3450616 m!3847813))

(declare-fun m!3847815 () Bool)

(assert (=> b!3450617 m!3847815))

(assert (=> b!3450618 m!3846843))

(assert (=> b!3450618 m!3846843))

(assert (=> b!3450618 m!3847805))

(assert (=> b!3450618 m!3847805))

(assert (=> b!3450618 m!3847807))

(declare-fun m!3847817 () Bool)

(assert (=> b!3450618 m!3847817))

(assert (=> b!3449902 d!992099))

(declare-fun bm!249043 () Bool)

(declare-fun call!249050 () Bool)

(declare-fun c!590615 () Bool)

(assert (=> bm!249043 (= call!249050 (validRegex!4634 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(declare-fun d!992101 () Bool)

(declare-fun res!1391563 () Bool)

(declare-fun e!2137441 () Bool)

(assert (=> d!992101 (=> res!1391563 e!2137441)))

(assert (=> d!992101 (= res!1391563 ((_ is ElementMatch!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(assert (=> d!992101 (= (validRegex!4634 (regex!5420 (rule!8000 separatorToken!241))) e!2137441)))

(declare-fun b!3450637 () Bool)

(declare-fun res!1391561 () Bool)

(declare-fun e!2137443 () Bool)

(assert (=> b!3450637 (=> res!1391561 e!2137443)))

(assert (=> b!3450637 (= res!1391561 (not ((_ is Concat!15829) (regex!5420 (rule!8000 separatorToken!241)))))))

(declare-fun e!2137442 () Bool)

(assert (=> b!3450637 (= e!2137442 e!2137443)))

(declare-fun call!249049 () Bool)

(declare-fun bm!249044 () Bool)

(declare-fun c!590616 () Bool)

(assert (=> bm!249044 (= call!249049 (validRegex!4634 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3450638 () Bool)

(declare-fun e!2137440 () Bool)

(declare-fun call!249048 () Bool)

(assert (=> b!3450638 (= e!2137440 call!249048)))

(declare-fun b!3450639 () Bool)

(declare-fun res!1391560 () Bool)

(declare-fun e!2137445 () Bool)

(assert (=> b!3450639 (=> (not res!1391560) (not e!2137445))))

(assert (=> b!3450639 (= res!1391560 call!249050)))

(assert (=> b!3450639 (= e!2137442 e!2137445)))

(declare-fun b!3450640 () Bool)

(assert (=> b!3450640 (= e!2137445 call!249048)))

(declare-fun bm!249045 () Bool)

(assert (=> bm!249045 (= call!249048 call!249049)))

(declare-fun b!3450641 () Bool)

(declare-fun e!2137444 () Bool)

(declare-fun e!2137439 () Bool)

(assert (=> b!3450641 (= e!2137444 e!2137439)))

(declare-fun res!1391562 () Bool)

(assert (=> b!3450641 (= res!1391562 (not (nullable!3478 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))))))))

(assert (=> b!3450641 (=> (not res!1391562) (not e!2137439))))

(declare-fun b!3450642 () Bool)

(assert (=> b!3450642 (= e!2137441 e!2137444)))

(assert (=> b!3450642 (= c!590616 ((_ is Star!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(declare-fun b!3450643 () Bool)

(assert (=> b!3450643 (= e!2137444 e!2137442)))

(assert (=> b!3450643 (= c!590615 ((_ is Union!10179) (regex!5420 (rule!8000 separatorToken!241))))))

(declare-fun b!3450644 () Bool)

(assert (=> b!3450644 (= e!2137443 e!2137440)))

(declare-fun res!1391559 () Bool)

(assert (=> b!3450644 (=> (not res!1391559) (not e!2137440))))

(assert (=> b!3450644 (= res!1391559 call!249050)))

(declare-fun b!3450645 () Bool)

(assert (=> b!3450645 (= e!2137439 call!249049)))

(assert (= (and d!992101 (not res!1391563)) b!3450642))

(assert (= (and b!3450642 c!590616) b!3450641))

(assert (= (and b!3450642 (not c!590616)) b!3450643))

(assert (= (and b!3450641 res!1391562) b!3450645))

(assert (= (and b!3450643 c!590615) b!3450639))

(assert (= (and b!3450643 (not c!590615)) b!3450637))

(assert (= (and b!3450639 res!1391560) b!3450640))

(assert (= (and b!3450637 (not res!1391561)) b!3450644))

(assert (= (and b!3450644 res!1391559) b!3450638))

(assert (= (or b!3450640 b!3450638) bm!249045))

(assert (= (or b!3450639 b!3450644) bm!249043))

(assert (= (or b!3450645 bm!249045) bm!249044))

(declare-fun m!3847819 () Bool)

(assert (=> bm!249043 m!3847819))

(declare-fun m!3847821 () Bool)

(assert (=> bm!249044 m!3847821))

(declare-fun m!3847823 () Bool)

(assert (=> b!3450641 m!3847823))

(assert (=> b!3449879 d!992101))

(declare-fun e!2137448 () Bool)

(assert (=> b!3449878 (= tp!1076221 e!2137448)))

(declare-fun b!3450657 () Bool)

(declare-fun tp!1076310 () Bool)

(declare-fun tp!1076309 () Bool)

(assert (=> b!3450657 (= e!2137448 (and tp!1076310 tp!1076309))))

(declare-fun b!3450656 () Bool)

(declare-fun tp_is_empty!17537 () Bool)

(assert (=> b!3450656 (= e!2137448 tp_is_empty!17537)))

(declare-fun b!3450659 () Bool)

(declare-fun tp!1076311 () Bool)

(declare-fun tp!1076308 () Bool)

(assert (=> b!3450659 (= e!2137448 (and tp!1076311 tp!1076308))))

(declare-fun b!3450658 () Bool)

(declare-fun tp!1076307 () Bool)

(assert (=> b!3450658 (= e!2137448 tp!1076307)))

(assert (= (and b!3449878 ((_ is ElementMatch!10179) (regex!5420 (h!42501 rules!2135)))) b!3450656))

(assert (= (and b!3449878 ((_ is Concat!15829) (regex!5420 (h!42501 rules!2135)))) b!3450657))

(assert (= (and b!3449878 ((_ is Star!10179) (regex!5420 (h!42501 rules!2135)))) b!3450658))

(assert (= (and b!3449878 ((_ is Union!10179) (regex!5420 (h!42501 rules!2135)))) b!3450659))

(declare-fun b!3450664 () Bool)

(declare-fun e!2137451 () Bool)

(declare-fun tp!1076314 () Bool)

(assert (=> b!3450664 (= e!2137451 (and tp_is_empty!17537 tp!1076314))))

(assert (=> b!3449886 (= tp!1076226 e!2137451)))

(assert (= (and b!3449886 ((_ is Cons!37079) (originalCharacters!6134 (h!42500 tokens!494)))) b!3450664))

(declare-fun e!2137452 () Bool)

(assert (=> b!3449875 (= tp!1076229 e!2137452)))

(declare-fun b!3450666 () Bool)

(declare-fun tp!1076318 () Bool)

(declare-fun tp!1076317 () Bool)

(assert (=> b!3450666 (= e!2137452 (and tp!1076318 tp!1076317))))

(declare-fun b!3450665 () Bool)

(assert (=> b!3450665 (= e!2137452 tp_is_empty!17537)))

(declare-fun b!3450668 () Bool)

(declare-fun tp!1076319 () Bool)

(declare-fun tp!1076316 () Bool)

(assert (=> b!3450668 (= e!2137452 (and tp!1076319 tp!1076316))))

(declare-fun b!3450667 () Bool)

(declare-fun tp!1076315 () Bool)

(assert (=> b!3450667 (= e!2137452 tp!1076315)))

(assert (= (and b!3449875 ((_ is ElementMatch!10179) (regex!5420 (rule!8000 (h!42500 tokens!494))))) b!3450665))

(assert (= (and b!3449875 ((_ is Concat!15829) (regex!5420 (rule!8000 (h!42500 tokens!494))))) b!3450666))

(assert (= (and b!3449875 ((_ is Star!10179) (regex!5420 (rule!8000 (h!42500 tokens!494))))) b!3450667))

(assert (= (and b!3449875 ((_ is Union!10179) (regex!5420 (rule!8000 (h!42500 tokens!494))))) b!3450668))

(declare-fun b!3450669 () Bool)

(declare-fun e!2137453 () Bool)

(declare-fun tp!1076320 () Bool)

(assert (=> b!3450669 (= e!2137453 (and tp_is_empty!17537 tp!1076320))))

(assert (=> b!3449896 (= tp!1076227 e!2137453)))

(assert (= (and b!3449896 ((_ is Cons!37079) (originalCharacters!6134 separatorToken!241))) b!3450669))

(declare-fun b!3450680 () Bool)

(declare-fun b_free!89565 () Bool)

(declare-fun b_next!90269 () Bool)

(assert (=> b!3450680 (= b_free!89565 (not b_next!90269))))

(declare-fun t!271694 () Bool)

(declare-fun tb!187687 () Bool)

(assert (=> (and b!3450680 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271694) tb!187687))

(declare-fun result!231546 () Bool)

(assert (= result!231546 result!231508))

(assert (=> d!992069 t!271694))

(declare-fun tp!1076331 () Bool)

(declare-fun b_and!242303 () Bool)

(assert (=> b!3450680 (= tp!1076331 (and (=> t!271694 result!231546) b_and!242303))))

(declare-fun b_free!89567 () Bool)

(declare-fun b_next!90271 () Bool)

(assert (=> b!3450680 (= b_free!89567 (not b_next!90271))))

(declare-fun t!271696 () Bool)

(declare-fun tb!187689 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271696) tb!187689))

(declare-fun result!231548 () Bool)

(assert (= result!231548 result!231480))

(assert (=> d!991927 t!271696))

(assert (=> b!3450228 t!271696))

(declare-fun t!271698 () Bool)

(declare-fun tb!187691 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271698) tb!187691))

(declare-fun result!231550 () Bool)

(assert (= result!231550 result!231488))

(assert (=> d!991941 t!271698))

(declare-fun t!271700 () Bool)

(declare-fun tb!187693 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271700) tb!187693))

(declare-fun result!231552 () Bool)

(assert (= result!231552 result!231494))

(assert (=> b!3450398 t!271700))

(assert (=> d!992029 t!271700))

(declare-fun b_and!242305 () Bool)

(declare-fun tp!1076332 () Bool)

(assert (=> b!3450680 (= tp!1076332 (and (=> t!271698 result!231550) (=> t!271700 result!231552) (=> t!271696 result!231548) b_and!242305))))

(declare-fun e!2137465 () Bool)

(assert (=> b!3450680 (= e!2137465 (and tp!1076331 tp!1076332))))

(declare-fun tp!1076330 () Bool)

(declare-fun b!3450679 () Bool)

(declare-fun e!2137463 () Bool)

(assert (=> b!3450679 (= e!2137463 (and tp!1076330 (inv!50235 (tag!6018 (h!42501 (t!271614 rules!2135)))) (inv!50238 (transformation!5420 (h!42501 (t!271614 rules!2135)))) e!2137465))))

(declare-fun b!3450678 () Bool)

(declare-fun e!2137464 () Bool)

(declare-fun tp!1076329 () Bool)

(assert (=> b!3450678 (= e!2137464 (and e!2137463 tp!1076329))))

(assert (=> b!3449901 (= tp!1076228 e!2137464)))

(assert (= b!3450679 b!3450680))

(assert (= b!3450678 b!3450679))

(assert (= (and b!3449901 ((_ is Cons!37081) (t!271614 rules!2135))) b!3450678))

(declare-fun m!3847825 () Bool)

(assert (=> b!3450679 m!3847825))

(declare-fun m!3847827 () Bool)

(assert (=> b!3450679 m!3847827))

(declare-fun b!3450694 () Bool)

(declare-fun b_free!89569 () Bool)

(declare-fun b_next!90273 () Bool)

(assert (=> b!3450694 (= b_free!89569 (not b_next!90273))))

(declare-fun t!271702 () Bool)

(declare-fun tb!187695 () Bool)

(assert (=> (and b!3450694 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271702) tb!187695))

(declare-fun result!231556 () Bool)

(assert (= result!231556 result!231508))

(assert (=> d!992069 t!271702))

(declare-fun tp!1076343 () Bool)

(declare-fun b_and!242307 () Bool)

(assert (=> b!3450694 (= tp!1076343 (and (=> t!271702 result!231556) b_and!242307))))

(declare-fun b_free!89571 () Bool)

(declare-fun b_next!90275 () Bool)

(assert (=> b!3450694 (= b_free!89571 (not b_next!90275))))

(declare-fun t!271704 () Bool)

(declare-fun tb!187697 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271704) tb!187697))

(declare-fun result!231558 () Bool)

(assert (= result!231558 result!231480))

(assert (=> d!991927 t!271704))

(assert (=> b!3450228 t!271704))

(declare-fun t!271706 () Bool)

(declare-fun tb!187699 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271706) tb!187699))

(declare-fun result!231560 () Bool)

(assert (= result!231560 result!231488))

(assert (=> d!991941 t!271706))

(declare-fun t!271708 () Bool)

(declare-fun tb!187701 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271708) tb!187701))

(declare-fun result!231562 () Bool)

(assert (= result!231562 result!231494))

(assert (=> b!3450398 t!271708))

(assert (=> d!992029 t!271708))

(declare-fun b_and!242309 () Bool)

(declare-fun tp!1076344 () Bool)

(assert (=> b!3450694 (= tp!1076344 (and (=> t!271704 result!231558) (=> t!271708 result!231562) (=> t!271706 result!231560) b_and!242309))))

(declare-fun b!3450692 () Bool)

(declare-fun e!2137479 () Bool)

(declare-fun e!2137482 () Bool)

(declare-fun tp!1076346 () Bool)

(assert (=> b!3450692 (= e!2137479 (and (inv!21 (value!174930 (h!42500 (t!271613 tokens!494)))) e!2137482 tp!1076346))))

(declare-fun e!2137480 () Bool)

(assert (=> b!3449885 (= tp!1076225 e!2137480)))

(declare-fun tp!1076345 () Bool)

(declare-fun e!2137483 () Bool)

(declare-fun b!3450693 () Bool)

(assert (=> b!3450693 (= e!2137482 (and tp!1076345 (inv!50235 (tag!6018 (rule!8000 (h!42500 (t!271613 tokens!494))))) (inv!50238 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) e!2137483))))

(assert (=> b!3450694 (= e!2137483 (and tp!1076343 tp!1076344))))

(declare-fun tp!1076347 () Bool)

(declare-fun b!3450691 () Bool)

(assert (=> b!3450691 (= e!2137480 (and (inv!50239 (h!42500 (t!271613 tokens!494))) e!2137479 tp!1076347))))

(assert (= b!3450693 b!3450694))

(assert (= b!3450692 b!3450693))

(assert (= b!3450691 b!3450692))

(assert (= (and b!3449885 ((_ is Cons!37080) (t!271613 tokens!494))) b!3450691))

(declare-fun m!3847829 () Bool)

(assert (=> b!3450692 m!3847829))

(declare-fun m!3847831 () Bool)

(assert (=> b!3450693 m!3847831))

(declare-fun m!3847833 () Bool)

(assert (=> b!3450693 m!3847833))

(declare-fun m!3847835 () Bool)

(assert (=> b!3450691 m!3847835))

(declare-fun e!2137484 () Bool)

(assert (=> b!3449889 (= tp!1076220 e!2137484)))

(declare-fun b!3450696 () Bool)

(declare-fun tp!1076351 () Bool)

(declare-fun tp!1076350 () Bool)

(assert (=> b!3450696 (= e!2137484 (and tp!1076351 tp!1076350))))

(declare-fun b!3450695 () Bool)

(assert (=> b!3450695 (= e!2137484 tp_is_empty!17537)))

(declare-fun b!3450698 () Bool)

(declare-fun tp!1076352 () Bool)

(declare-fun tp!1076349 () Bool)

(assert (=> b!3450698 (= e!2137484 (and tp!1076352 tp!1076349))))

(declare-fun b!3450697 () Bool)

(declare-fun tp!1076348 () Bool)

(assert (=> b!3450697 (= e!2137484 tp!1076348)))

(assert (= (and b!3449889 ((_ is ElementMatch!10179) (regex!5420 (rule!8000 separatorToken!241)))) b!3450695))

(assert (= (and b!3449889 ((_ is Concat!15829) (regex!5420 (rule!8000 separatorToken!241)))) b!3450696))

(assert (= (and b!3449889 ((_ is Star!10179) (regex!5420 (rule!8000 separatorToken!241)))) b!3450697))

(assert (= (and b!3449889 ((_ is Union!10179) (regex!5420 (rule!8000 separatorToken!241)))) b!3450698))

(declare-fun b_lambda!99037 () Bool)

(assert (= b_lambda!99017 (or (and b!3449883 b_free!89549) (and b!3449897 b_free!89545 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89569 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89565 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449880 b_free!89553 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99037)))

(declare-fun b_lambda!99039 () Bool)

(assert (= b_lambda!98997 (or b!3449899 b_lambda!99039)))

(declare-fun bs!559744 () Bool)

(declare-fun d!992103 () Bool)

(assert (= bs!559744 (and d!992103 b!3449899)))

(assert (=> bs!559744 (= (dynLambda!15569 lambda!121525 (h!42500 (t!271613 tokens!494))) (not (isSeparator!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!991913 d!992103))

(declare-fun b_lambda!99041 () Bool)

(assert (= b_lambda!99013 (or b!3449899 b_lambda!99041)))

(declare-fun bs!559745 () Bool)

(declare-fun d!992105 () Bool)

(assert (= bs!559745 (and d!992105 b!3449899)))

(assert (=> bs!559745 (= (dynLambda!15569 lambda!121525 (h!42500 tokens!494)) (not (isSeparator!5420 (rule!8000 (h!42500 tokens!494)))))))

(assert (=> b!3450406 d!992105))

(declare-fun b_lambda!99043 () Bool)

(assert (= b_lambda!99001 (or (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3449883 b_free!89551 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3449897 b_free!89547) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) b_lambda!99043)))

(declare-fun b_lambda!99045 () Bool)

(assert (= b_lambda!99009 (or (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449883 b_free!89551) (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99045)))

(declare-fun b_lambda!99047 () Bool)

(assert (= b_lambda!98999 (or b!3449899 b_lambda!99047)))

(assert (=> d!991915 d!992105))

(declare-fun b_lambda!99049 () Bool)

(assert (= b_lambda!99011 (or (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449883 b_free!89551) (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99049)))

(declare-fun b_lambda!99051 () Bool)

(assert (= b_lambda!99005 (or (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3449883 b_free!89551 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) (and b!3449897 b_free!89547) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))))) b_lambda!99051)))

(declare-fun b_lambda!99053 () Bool)

(assert (= b_lambda!99003 (or (and b!3450694 b_free!89571) (and b!3449883 b_free!89551 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) b_lambda!99053)))

(check-sat (not b!3450191) (not b!3450407) (not b!3450616) (not b!3450667) (not d!991931) (not b!3450205) (not b!3450602) (not b_next!90257) (not b!3450698) b_and!242277 (not b!3450474) (not d!991913) (not b_lambda!99041) (not tb!187647) (not b!3450089) (not b!3450669) (not d!992043) (not d!992029) (not b!3450084) b_and!242305 (not b!3450401) (not b!3450168) (not b!3450604) (not b!3450600) (not b_lambda!99053) (not b!3450697) (not b_next!90259) (not d!991933) (not d!991947) (not b!3450187) (not b!3450149) (not b!3450664) (not b!3450082) (not bm!249034) (not b!3450617) (not b_lambda!99043) (not b!3450223) b_and!242289 (not b!3450427) (not b!3450376) (not b!3450178) (not b_next!90271) (not b!3450185) (not tb!187641) (not b!3450169) (not d!991883) (not d!991915) (not b!3450170) (not b_next!90251) (not b!3450155) (not b_next!90275) (not d!992099) (not b!3450131) (not d!992039) (not b!3450393) (not d!991939) (not d!991925) (not b!3450175) (not d!991911) (not b!3450607) (not b!3450599) (not d!992095) b_and!242281 (not b!3450039) (not b!3450235) (not b!3450116) (not b!3450610) (not d!992037) (not b!3450081) (not b!3450196) (not b_next!90255) (not b!3450194) b_and!242291 (not b!3450696) (not b!3450146) (not b!3450482) (not bm!249043) b_and!242279 (not b!3450409) (not b!3450614) (not d!991919) (not b!3450476) b_and!242293 (not b!3450198) (not d!992093) (not b!3450188) (not b!3450432) (not b!3450658) (not b_lambda!99049) (not b!3450424) (not b!3450154) (not d!991917) (not bm!249033) (not b!3450192) (not bm!249024) (not bm!249010) (not d!991881) (not d!992033) (not d!991929) (not b!3450666) (not b!3450210) (not b!3450475) (not d!992091) (not b_lambda!99037) (not d!992027) (not d!991909) (not d!992071) b_and!242307 (not b!3450400) (not d!992053) (not d!991959) (not b!3450641) (not d!992083) (not b!3450217) (not b!3450612) (not b!3450115) (not b!3450425) (not d!992021) (not b_lambda!99045) (not b!3450133) (not b!3450618) (not d!991957) (not b!3450080) (not b!3450611) (not b!3450228) (not b_next!90249) (not b!3450117) (not bm!249035) (not b!3450399) (not b!3450605) (not b!3450659) (not d!992075) b_and!242303 (not b!3450693) (not b!3450423) (not tb!187653) (not b!3450207) (not d!992085) (not b!3450483) (not d!992025) (not b_lambda!99051) (not tb!187665) (not b_next!90273) (not d!991941) (not b!3450361) (not b_lambda!99047) (not b!3450668) (not b!3450422) tp_is_empty!17537 (not b!3450166) (not b!3450135) (not bm!249044) (not d!991963) (not b!3450678) (not b!3450606) (not b!3450398) (not d!991921) (not b!3450229) (not d!991927) (not b!3450657) (not d!991905) (not b!3450215) (not b!3450615) (not b!3450410) (not d!991955) (not b!3450603) (not b!3450679) (not d!991891) (not b!3450150) (not b!3450179) (not b_next!90253) (not b!3450444) (not b!3450691) (not b!3450692) (not b!3450446) (not d!992065) b_and!242309 (not b_next!90269) (not d!991945) (not b!3450145) (not b!3450395) (not b!3450397) (not b!3450079) (not b!3450234) (not b_lambda!99039) (not b!3450120) (not d!991949) (not d!992055) (not d!991943))
(check-sat b_and!242289 (not b_next!90271) (not b_next!90251) (not b_next!90275) b_and!242281 b_and!242293 b_and!242307 (not b_next!90249) b_and!242303 (not b_next!90273) (not b_next!90253) (not b_next!90257) b_and!242277 b_and!242305 (not b_next!90259) (not b_next!90255) b_and!242291 b_and!242279 b_and!242309 (not b_next!90269))
(get-model)

(declare-fun d!992317 () Bool)

(declare-fun res!1391660 () Bool)

(declare-fun e!2137632 () Bool)

(assert (=> d!992317 (=> res!1391660 e!2137632)))

(assert (=> d!992317 (= res!1391660 ((_ is Nil!37080) (list!13486 (seqFromList!3893 tokens!494))))))

(assert (=> d!992317 (= (forall!7885 (list!13486 (seqFromList!3893 tokens!494)) lambda!121535) e!2137632)))

(declare-fun b!3450957 () Bool)

(declare-fun e!2137633 () Bool)

(assert (=> b!3450957 (= e!2137632 e!2137633)))

(declare-fun res!1391661 () Bool)

(assert (=> b!3450957 (=> (not res!1391661) (not e!2137633))))

(assert (=> b!3450957 (= res!1391661 (dynLambda!15569 lambda!121535 (h!42500 (list!13486 (seqFromList!3893 tokens!494)))))))

(declare-fun b!3450958 () Bool)

(assert (=> b!3450958 (= e!2137633 (forall!7885 (t!271613 (list!13486 (seqFromList!3893 tokens!494))) lambda!121535))))

(assert (= (and d!992317 (not res!1391660)) b!3450957))

(assert (= (and b!3450957 res!1391661) b!3450958))

(declare-fun b_lambda!99065 () Bool)

(assert (=> (not b_lambda!99065) (not b!3450957)))

(declare-fun m!3848303 () Bool)

(assert (=> b!3450957 m!3848303))

(declare-fun m!3848305 () Bool)

(assert (=> b!3450958 m!3848305))

(assert (=> d!991963 d!992317))

(declare-fun d!992319 () Bool)

(declare-fun list!13489 (Conc!11216) List!37204)

(assert (=> d!992319 (= (list!13486 (seqFromList!3893 tokens!494)) (list!13489 (c!590468 (seqFromList!3893 tokens!494))))))

(declare-fun bs!559784 () Bool)

(assert (= bs!559784 d!992319))

(declare-fun m!3848307 () Bool)

(assert (=> bs!559784 m!3848307))

(assert (=> d!991963 d!992319))

(declare-fun d!992321 () Bool)

(declare-fun lt!1171267 () Bool)

(assert (=> d!992321 (= lt!1171267 (forall!7885 (list!13486 (seqFromList!3893 tokens!494)) lambda!121535))))

(declare-fun forall!7888 (Conc!11216 Int) Bool)

(assert (=> d!992321 (= lt!1171267 (forall!7888 (c!590468 (seqFromList!3893 tokens!494)) lambda!121535))))

(assert (=> d!992321 (= (forall!7887 (seqFromList!3893 tokens!494) lambda!121535) lt!1171267)))

(declare-fun bs!559785 () Bool)

(assert (= bs!559785 d!992321))

(assert (=> bs!559785 m!3846831))

(assert (=> bs!559785 m!3847485))

(assert (=> bs!559785 m!3847485))

(assert (=> bs!559785 m!3847487))

(declare-fun m!3848309 () Bool)

(assert (=> bs!559785 m!3848309))

(assert (=> d!991963 d!992321))

(assert (=> d!991963 d!991889))

(declare-fun b!3450961 () Bool)

(declare-fun res!1391662 () Bool)

(declare-fun e!2137635 () Bool)

(assert (=> b!3450961 (=> (not res!1391662) (not e!2137635))))

(declare-fun lt!1171268 () List!37203)

(assert (=> b!3450961 (= res!1391662 (= (size!28101 lt!1171268) (+ (size!28101 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (size!28101 (_2!21514 (get!11857 lt!1171168))))))))

(declare-fun b!3450962 () Bool)

(assert (=> b!3450962 (= e!2137635 (or (not (= (_2!21514 (get!11857 lt!1171168)) Nil!37079)) (= lt!1171268 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))))))))

(declare-fun d!992323 () Bool)

(assert (=> d!992323 e!2137635))

(declare-fun res!1391663 () Bool)

(assert (=> d!992323 (=> (not res!1391663) (not e!2137635))))

(assert (=> d!992323 (= res!1391663 (= (content!5161 lt!1171268) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (content!5161 (_2!21514 (get!11857 lt!1171168))))))))

(declare-fun e!2137634 () List!37203)

(assert (=> d!992323 (= lt!1171268 e!2137634)))

(declare-fun c!590694 () Bool)

(assert (=> d!992323 (= c!590694 ((_ is Nil!37079) (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))

(assert (=> d!992323 (= (++!9125 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))) (_2!21514 (get!11857 lt!1171168))) lt!1171268)))

(declare-fun b!3450959 () Bool)

(assert (=> b!3450959 (= e!2137634 (_2!21514 (get!11857 lt!1171168)))))

(declare-fun b!3450960 () Bool)

(assert (=> b!3450960 (= e!2137634 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (_2!21514 (get!11857 lt!1171168)))))))

(assert (= (and d!992323 c!590694) b!3450959))

(assert (= (and d!992323 (not c!590694)) b!3450960))

(assert (= (and d!992323 res!1391663) b!3450961))

(assert (= (and b!3450961 res!1391662) b!3450962))

(declare-fun m!3848311 () Bool)

(assert (=> b!3450961 m!3848311))

(assert (=> b!3450961 m!3847751))

(declare-fun m!3848313 () Bool)

(assert (=> b!3450961 m!3848313))

(assert (=> b!3450961 m!3847745))

(declare-fun m!3848315 () Bool)

(assert (=> d!992323 m!3848315))

(assert (=> d!992323 m!3847751))

(declare-fun m!3848317 () Bool)

(assert (=> d!992323 m!3848317))

(declare-fun m!3848319 () Bool)

(assert (=> d!992323 m!3848319))

(declare-fun m!3848321 () Bool)

(assert (=> b!3450960 m!3848321))

(assert (=> b!3450607 d!992323))

(declare-fun d!992325 () Bool)

(assert (=> d!992325 (= (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))) (list!13487 (c!590467 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))

(declare-fun bs!559786 () Bool)

(assert (= bs!559786 d!992325))

(declare-fun m!3848323 () Bool)

(assert (=> bs!559786 m!3848323))

(assert (=> b!3450607 d!992325))

(declare-fun d!992327 () Bool)

(declare-fun lt!1171269 () BalanceConc!22044)

(assert (=> d!992327 (= (list!13483 lt!1171269) (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168))))))

(assert (=> d!992327 (= lt!1171269 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168))))) (value!174930 (_1!21514 (get!11857 lt!1171168)))))))

(assert (=> d!992327 (= (charsOf!3434 (_1!21514 (get!11857 lt!1171168))) lt!1171269)))

(declare-fun b_lambda!99067 () Bool)

(assert (=> (not b_lambda!99067) (not d!992327)))

(declare-fun tb!187743 () Bool)

(declare-fun t!271753 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271753) tb!187743))

(declare-fun b!3450963 () Bool)

(declare-fun e!2137636 () Bool)

(declare-fun tp!1076355 () Bool)

(assert (=> b!3450963 (= e!2137636 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168))))) (value!174930 (_1!21514 (get!11857 lt!1171168)))))) tp!1076355))))

(declare-fun result!231604 () Bool)

(assert (=> tb!187743 (= result!231604 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168))))) (value!174930 (_1!21514 (get!11857 lt!1171168))))) e!2137636))))

(assert (= tb!187743 b!3450963))

(declare-fun m!3848325 () Bool)

(assert (=> b!3450963 m!3848325))

(declare-fun m!3848327 () Bool)

(assert (=> tb!187743 m!3848327))

(assert (=> d!992327 t!271753))

(declare-fun b_and!242361 () Bool)

(assert (= b_and!242279 (and (=> t!271753 result!231604) b_and!242361)))

(declare-fun t!271755 () Bool)

(declare-fun tb!187745 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271755) tb!187745))

(declare-fun result!231606 () Bool)

(assert (= result!231606 result!231604))

(assert (=> d!992327 t!271755))

(declare-fun b_and!242363 () Bool)

(assert (= b_and!242281 (and (=> t!271755 result!231606) b_and!242363)))

(declare-fun tb!187747 () Bool)

(declare-fun t!271757 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271757) tb!187747))

(declare-fun result!231608 () Bool)

(assert (= result!231608 result!231604))

(assert (=> d!992327 t!271757))

(declare-fun b_and!242365 () Bool)

(assert (= b_and!242305 (and (=> t!271757 result!231608) b_and!242365)))

(declare-fun t!271759 () Bool)

(declare-fun tb!187749 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271759) tb!187749))

(declare-fun result!231610 () Bool)

(assert (= result!231610 result!231604))

(assert (=> d!992327 t!271759))

(declare-fun b_and!242367 () Bool)

(assert (= b_and!242309 (and (=> t!271759 result!231610) b_and!242367)))

(declare-fun tb!187751 () Bool)

(declare-fun t!271761 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271761) tb!187751))

(declare-fun result!231612 () Bool)

(assert (= result!231612 result!231604))

(assert (=> d!992327 t!271761))

(declare-fun b_and!242369 () Bool)

(assert (= b_and!242277 (and (=> t!271761 result!231612) b_and!242369)))

(declare-fun m!3848329 () Bool)

(assert (=> d!992327 m!3848329))

(declare-fun m!3848331 () Bool)

(assert (=> d!992327 m!3848331))

(assert (=> b!3450607 d!992327))

(declare-fun d!992329 () Bool)

(assert (=> d!992329 (= (get!11857 lt!1171168) (v!36759 lt!1171168))))

(assert (=> b!3450607 d!992329))

(declare-fun d!992331 () Bool)

(declare-fun charsToBigInt!0 (List!37202 Int) Int)

(assert (=> d!992331 (= (inv!15 (value!174930 separatorToken!241)) (= (charsToBigInt!0 (text!39999 (value!174930 separatorToken!241)) 0) (value!174925 (value!174930 separatorToken!241))))))

(declare-fun bs!559787 () Bool)

(assert (= bs!559787 d!992331))

(declare-fun m!3848333 () Bool)

(assert (=> bs!559787 m!3848333))

(assert (=> b!3450131 d!992331))

(declare-fun d!992333 () Bool)

(declare-fun charsToBigInt!1 (List!37202) Int)

(assert (=> d!992333 (= (inv!17 (value!174930 separatorToken!241)) (= (charsToBigInt!1 (text!39998 (value!174930 separatorToken!241))) (value!174922 (value!174930 separatorToken!241))))))

(declare-fun bs!559788 () Bool)

(assert (= bs!559788 d!992333))

(declare-fun m!3848335 () Bool)

(assert (=> bs!559788 m!3848335))

(assert (=> b!3450135 d!992333))

(declare-fun d!992335 () Bool)

(declare-fun lt!1171270 () BalanceConc!22044)

(assert (=> d!992335 (= (list!13483 lt!1171270) (originalCharacters!6134 (apply!8694 lt!1170931 0)))))

(assert (=> d!992335 (= lt!1171270 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0)))) (value!174930 (apply!8694 lt!1170931 0))))))

(assert (=> d!992335 (= (charsOf!3434 (apply!8694 lt!1170931 0)) lt!1171270)))

(declare-fun b_lambda!99069 () Bool)

(assert (=> (not b_lambda!99069) (not d!992335)))

(declare-fun tb!187753 () Bool)

(declare-fun t!271763 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271763) tb!187753))

(declare-fun b!3450964 () Bool)

(declare-fun e!2137637 () Bool)

(declare-fun tp!1076356 () Bool)

(assert (=> b!3450964 (= e!2137637 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0)))) (value!174930 (apply!8694 lt!1170931 0))))) tp!1076356))))

(declare-fun result!231614 () Bool)

(assert (=> tb!187753 (= result!231614 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0)))) (value!174930 (apply!8694 lt!1170931 0)))) e!2137637))))

(assert (= tb!187753 b!3450964))

(declare-fun m!3848337 () Bool)

(assert (=> b!3450964 m!3848337))

(declare-fun m!3848339 () Bool)

(assert (=> tb!187753 m!3848339))

(assert (=> d!992335 t!271763))

(declare-fun b_and!242371 () Bool)

(assert (= b_and!242367 (and (=> t!271763 result!231614) b_and!242371)))

(declare-fun t!271765 () Bool)

(declare-fun tb!187755 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271765) tb!187755))

(declare-fun result!231616 () Bool)

(assert (= result!231616 result!231614))

(assert (=> d!992335 t!271765))

(declare-fun b_and!242373 () Bool)

(assert (= b_and!242361 (and (=> t!271765 result!231616) b_and!242373)))

(declare-fun t!271767 () Bool)

(declare-fun tb!187757 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271767) tb!187757))

(declare-fun result!231618 () Bool)

(assert (= result!231618 result!231614))

(assert (=> d!992335 t!271767))

(declare-fun b_and!242375 () Bool)

(assert (= b_and!242369 (and (=> t!271767 result!231618) b_and!242375)))

(declare-fun tb!187759 () Bool)

(declare-fun t!271769 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271769) tb!187759))

(declare-fun result!231620 () Bool)

(assert (= result!231620 result!231614))

(assert (=> d!992335 t!271769))

(declare-fun b_and!242377 () Bool)

(assert (= b_and!242363 (and (=> t!271769 result!231620) b_and!242377)))

(declare-fun t!271771 () Bool)

(declare-fun tb!187761 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271771) tb!187761))

(declare-fun result!231622 () Bool)

(assert (= result!231622 result!231614))

(assert (=> d!992335 t!271771))

(declare-fun b_and!242379 () Bool)

(assert (= b_and!242365 (and (=> t!271771 result!231622) b_and!242379)))

(declare-fun m!3848341 () Bool)

(assert (=> d!992335 m!3848341))

(declare-fun m!3848343 () Bool)

(assert (=> d!992335 m!3848343))

(assert (=> b!3450207 d!992335))

(declare-fun d!992337 () Bool)

(assert (=> d!992337 (= (tail!5413 (drop!2001 lt!1171025 0)) (t!271613 (drop!2001 lt!1171025 0)))))

(assert (=> b!3450207 d!992337))

(declare-fun b!3450995 () Bool)

(declare-fun e!2137654 () Bool)

(declare-fun lt!1171341 () List!37204)

(declare-fun e!2137658 () Int)

(declare-fun size!28108 (List!37204) Int)

(assert (=> b!3450995 (= e!2137654 (= (size!28108 lt!1171341) e!2137658))))

(declare-fun c!590710 () Bool)

(assert (=> b!3450995 (= c!590710 (<= 0 0))))

(declare-fun b!3450996 () Bool)

(declare-fun e!2137656 () List!37204)

(assert (=> b!3450996 (= e!2137656 Nil!37080)))

(declare-fun b!3450997 () Bool)

(declare-fun e!2137657 () Int)

(declare-fun call!249073 () Int)

(assert (=> b!3450997 (= e!2137657 (- call!249073 0))))

(declare-fun d!992339 () Bool)

(assert (=> d!992339 e!2137654))

(declare-fun res!1391666 () Bool)

(assert (=> d!992339 (=> (not res!1391666) (not e!2137654))))

(declare-fun content!5162 (List!37204) (InoxSet Token!10206))

(assert (=> d!992339 (= res!1391666 (= ((_ map implies) (content!5162 lt!1171341) (content!5162 lt!1171025)) ((as const (InoxSet Token!10206)) true)))))

(assert (=> d!992339 (= lt!1171341 e!2137656)))

(declare-fun c!590711 () Bool)

(assert (=> d!992339 (= c!590711 ((_ is Nil!37080) lt!1171025))))

(assert (=> d!992339 (= (drop!2001 lt!1171025 0) lt!1171341)))

(declare-fun b!3450998 () Bool)

(declare-fun e!2137655 () List!37204)

(assert (=> b!3450998 (= e!2137656 e!2137655)))

(declare-fun c!590709 () Bool)

(assert (=> b!3450998 (= c!590709 (<= 0 0))))

(declare-fun b!3450999 () Bool)

(assert (=> b!3450999 (= e!2137655 lt!1171025)))

(declare-fun b!3451000 () Bool)

(assert (=> b!3451000 (= e!2137657 0)))

(declare-fun b!3451001 () Bool)

(assert (=> b!3451001 (= e!2137655 (drop!2001 (t!271613 lt!1171025) (- 0 1)))))

(declare-fun b!3451002 () Bool)

(assert (=> b!3451002 (= e!2137658 call!249073)))

(declare-fun bm!249068 () Bool)

(assert (=> bm!249068 (= call!249073 (size!28108 lt!1171025))))

(declare-fun b!3451003 () Bool)

(assert (=> b!3451003 (= e!2137658 e!2137657)))

(declare-fun c!590712 () Bool)

(assert (=> b!3451003 (= c!590712 (>= 0 call!249073))))

(assert (= (and d!992339 c!590711) b!3450996))

(assert (= (and d!992339 (not c!590711)) b!3450998))

(assert (= (and b!3450998 c!590709) b!3450999))

(assert (= (and b!3450998 (not c!590709)) b!3451001))

(assert (= (and d!992339 res!1391666) b!3450995))

(assert (= (and b!3450995 c!590710) b!3451002))

(assert (= (and b!3450995 (not c!590710)) b!3451003))

(assert (= (and b!3451003 c!590712) b!3451000))

(assert (= (and b!3451003 (not c!590712)) b!3450997))

(assert (= (or b!3451002 b!3451003 b!3450997) bm!249068))

(declare-fun m!3848345 () Bool)

(assert (=> b!3450995 m!3848345))

(declare-fun m!3848347 () Bool)

(assert (=> d!992339 m!3848347))

(declare-fun m!3848349 () Bool)

(assert (=> d!992339 m!3848349))

(declare-fun m!3848351 () Bool)

(assert (=> b!3451001 m!3848351))

(declare-fun m!3848353 () Bool)

(assert (=> bm!249068 m!3848353))

(assert (=> b!3450207 d!992339))

(declare-fun b!3451004 () Bool)

(declare-fun e!2137659 () Bool)

(declare-fun lt!1171342 () List!37204)

(declare-fun e!2137663 () Int)

(assert (=> b!3451004 (= e!2137659 (= (size!28108 lt!1171342) e!2137663))))

(declare-fun c!590714 () Bool)

(assert (=> b!3451004 (= c!590714 (<= (+ 0 1) 0))))

(declare-fun b!3451005 () Bool)

(declare-fun e!2137661 () List!37204)

(assert (=> b!3451005 (= e!2137661 Nil!37080)))

(declare-fun b!3451006 () Bool)

(declare-fun e!2137662 () Int)

(declare-fun call!249074 () Int)

(assert (=> b!3451006 (= e!2137662 (- call!249074 (+ 0 1)))))

(declare-fun d!992341 () Bool)

(assert (=> d!992341 e!2137659))

(declare-fun res!1391667 () Bool)

(assert (=> d!992341 (=> (not res!1391667) (not e!2137659))))

(assert (=> d!992341 (= res!1391667 (= ((_ map implies) (content!5162 lt!1171342) (content!5162 lt!1171025)) ((as const (InoxSet Token!10206)) true)))))

(assert (=> d!992341 (= lt!1171342 e!2137661)))

(declare-fun c!590715 () Bool)

(assert (=> d!992341 (= c!590715 ((_ is Nil!37080) lt!1171025))))

(assert (=> d!992341 (= (drop!2001 lt!1171025 (+ 0 1)) lt!1171342)))

(declare-fun b!3451007 () Bool)

(declare-fun e!2137660 () List!37204)

(assert (=> b!3451007 (= e!2137661 e!2137660)))

(declare-fun c!590713 () Bool)

(assert (=> b!3451007 (= c!590713 (<= (+ 0 1) 0))))

(declare-fun b!3451008 () Bool)

(assert (=> b!3451008 (= e!2137660 lt!1171025)))

(declare-fun b!3451009 () Bool)

(assert (=> b!3451009 (= e!2137662 0)))

(declare-fun b!3451010 () Bool)

(assert (=> b!3451010 (= e!2137660 (drop!2001 (t!271613 lt!1171025) (- (+ 0 1) 1)))))

(declare-fun b!3451011 () Bool)

(assert (=> b!3451011 (= e!2137663 call!249074)))

(declare-fun bm!249069 () Bool)

(assert (=> bm!249069 (= call!249074 (size!28108 lt!1171025))))

(declare-fun b!3451012 () Bool)

(assert (=> b!3451012 (= e!2137663 e!2137662)))

(declare-fun c!590716 () Bool)

(assert (=> b!3451012 (= c!590716 (>= (+ 0 1) call!249074))))

(assert (= (and d!992341 c!590715) b!3451005))

(assert (= (and d!992341 (not c!590715)) b!3451007))

(assert (= (and b!3451007 c!590713) b!3451008))

(assert (= (and b!3451007 (not c!590713)) b!3451010))

(assert (= (and d!992341 res!1391667) b!3451004))

(assert (= (and b!3451004 c!590714) b!3451011))

(assert (= (and b!3451004 (not c!590714)) b!3451012))

(assert (= (and b!3451012 c!590716) b!3451009))

(assert (= (and b!3451012 (not c!590716)) b!3451006))

(assert (= (or b!3451011 b!3451012 b!3451006) bm!249069))

(declare-fun m!3848355 () Bool)

(assert (=> b!3451004 m!3848355))

(declare-fun m!3848357 () Bool)

(assert (=> d!992341 m!3848357))

(assert (=> d!992341 m!3848349))

(declare-fun m!3848359 () Bool)

(assert (=> b!3451010 m!3848359))

(assert (=> bm!249069 m!3848353))

(assert (=> b!3450207 d!992341))

(declare-fun d!992343 () Bool)

(assert (=> d!992343 (= (head!7291 (drop!2001 lt!1171028 0)) (h!42500 (drop!2001 lt!1171028 0)))))

(assert (=> b!3450207 d!992343))

(declare-fun b!3451033 () Bool)

(declare-fun e!2137672 () Bool)

(declare-fun lt!1171379 () BalanceConc!22044)

(assert (=> b!3451033 (= e!2137672 (= (list!13483 lt!1171379) (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) (list!13483 (charsOf!3434 (apply!8694 lt!1170931 0))))))))

(declare-fun b!3451030 () Bool)

(declare-fun res!1391682 () Bool)

(assert (=> b!3451030 (=> (not res!1391682) (not e!2137672))))

(declare-fun isBalanced!3403 (Conc!11215) Bool)

(declare-fun ++!9128 (Conc!11215 Conc!11215) Conc!11215)

(assert (=> b!3451030 (= res!1391682 (isBalanced!3403 (++!9128 (c!590467 (BalanceConc!22045 Empty!11215)) (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0))))))))

(declare-fun b!3451032 () Bool)

(declare-fun res!1391681 () Bool)

(assert (=> b!3451032 (=> (not res!1391681) (not e!2137672))))

(declare-fun height!1689 (Conc!11215) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3451032 (= res!1391681 (>= (height!1689 (++!9128 (c!590467 (BalanceConc!22045 Empty!11215)) (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0))))) (max!0 (height!1689 (c!590467 (BalanceConc!22045 Empty!11215))) (height!1689 (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0)))))))))

(declare-fun b!3451031 () Bool)

(declare-fun res!1391679 () Bool)

(assert (=> b!3451031 (=> (not res!1391679) (not e!2137672))))

(assert (=> b!3451031 (= res!1391679 (<= (height!1689 (++!9128 (c!590467 (BalanceConc!22045 Empty!11215)) (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0))))) (+ (max!0 (height!1689 (c!590467 (BalanceConc!22045 Empty!11215))) (height!1689 (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0))))) 1)))))

(declare-fun d!992345 () Bool)

(assert (=> d!992345 e!2137672))

(declare-fun res!1391680 () Bool)

(assert (=> d!992345 (=> (not res!1391680) (not e!2137672))))

(declare-fun appendAssocInst!800 (Conc!11215 Conc!11215) Bool)

(assert (=> d!992345 (= res!1391680 (appendAssocInst!800 (c!590467 (BalanceConc!22045 Empty!11215)) (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0)))))))

(assert (=> d!992345 (= lt!1171379 (BalanceConc!22045 (++!9128 (c!590467 (BalanceConc!22045 Empty!11215)) (c!590467 (charsOf!3434 (apply!8694 lt!1170931 0))))))))

(assert (=> d!992345 (= (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0))) lt!1171379)))

(assert (= (and d!992345 res!1391680) b!3451030))

(assert (= (and b!3451030 res!1391682) b!3451031))

(assert (= (and b!3451031 res!1391679) b!3451032))

(assert (= (and b!3451032 res!1391681) b!3451033))

(declare-fun m!3848361 () Bool)

(assert (=> b!3451033 m!3848361))

(assert (=> b!3451033 m!3847267))

(assert (=> b!3451033 m!3847283))

(declare-fun m!3848363 () Bool)

(assert (=> b!3451033 m!3848363))

(assert (=> b!3451033 m!3847267))

(assert (=> b!3451033 m!3848363))

(declare-fun m!3848365 () Bool)

(assert (=> b!3451033 m!3848365))

(declare-fun m!3848367 () Bool)

(assert (=> b!3451032 m!3848367))

(declare-fun m!3848369 () Bool)

(assert (=> b!3451032 m!3848369))

(declare-fun m!3848371 () Bool)

(assert (=> b!3451032 m!3848371))

(declare-fun m!3848373 () Bool)

(assert (=> b!3451032 m!3848373))

(declare-fun m!3848375 () Bool)

(assert (=> b!3451032 m!3848375))

(assert (=> b!3451032 m!3848373))

(assert (=> b!3451032 m!3848369))

(assert (=> b!3451032 m!3848367))

(declare-fun m!3848377 () Bool)

(assert (=> d!992345 m!3848377))

(assert (=> d!992345 m!3848373))

(assert (=> b!3451031 m!3848367))

(assert (=> b!3451031 m!3848369))

(assert (=> b!3451031 m!3848371))

(assert (=> b!3451031 m!3848373))

(assert (=> b!3451031 m!3848375))

(assert (=> b!3451031 m!3848373))

(assert (=> b!3451031 m!3848369))

(assert (=> b!3451031 m!3848367))

(assert (=> b!3451030 m!3848373))

(assert (=> b!3451030 m!3848373))

(declare-fun m!3848379 () Bool)

(assert (=> b!3451030 m!3848379))

(assert (=> b!3450207 d!992345))

(declare-fun d!992347 () Bool)

(declare-fun lt!1171382 () BalanceConc!22044)

(assert (=> d!992347 (= (list!13483 lt!1171382) (printListTailRec!678 thiss!18206 (dropList!1195 lt!1170931 (+ 0 1)) (list!13483 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0))))))))

(declare-fun e!2137674 () BalanceConc!22044)

(assert (=> d!992347 (= lt!1171382 e!2137674)))

(declare-fun c!590723 () Bool)

(assert (=> d!992347 (= c!590723 (>= (+ 0 1) (size!28104 lt!1170931)))))

(declare-fun e!2137673 () Bool)

(assert (=> d!992347 e!2137673))

(declare-fun res!1391683 () Bool)

(assert (=> d!992347 (=> (not res!1391683) (not e!2137673))))

(assert (=> d!992347 (= res!1391683 (>= (+ 0 1) 0))))

(assert (=> d!992347 (= (printTailRec!1504 thiss!18206 lt!1170931 (+ 0 1) (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0)))) lt!1171382)))

(declare-fun b!3451034 () Bool)

(assert (=> b!3451034 (= e!2137673 (<= (+ 0 1) (size!28104 lt!1170931)))))

(declare-fun b!3451035 () Bool)

(assert (=> b!3451035 (= e!2137674 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0))))))

(declare-fun b!3451036 () Bool)

(assert (=> b!3451036 (= e!2137674 (printTailRec!1504 thiss!18206 lt!1170931 (+ 0 1 1) (++!9127 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (apply!8694 lt!1170931 0))) (charsOf!3434 (apply!8694 lt!1170931 (+ 0 1))))))))

(declare-fun lt!1171384 () List!37204)

(assert (=> b!3451036 (= lt!1171384 (list!13486 lt!1170931))))

(declare-fun lt!1171385 () Unit!52398)

(assert (=> b!3451036 (= lt!1171385 (lemmaDropApply!1153 lt!1171384 (+ 0 1)))))

(assert (=> b!3451036 (= (head!7291 (drop!2001 lt!1171384 (+ 0 1))) (apply!8695 lt!1171384 (+ 0 1)))))

(declare-fun lt!1171383 () Unit!52398)

(assert (=> b!3451036 (= lt!1171383 lt!1171385)))

(declare-fun lt!1171381 () List!37204)

(assert (=> b!3451036 (= lt!1171381 (list!13486 lt!1170931))))

(declare-fun lt!1171380 () Unit!52398)

(assert (=> b!3451036 (= lt!1171380 (lemmaDropTail!1037 lt!1171381 (+ 0 1)))))

(assert (=> b!3451036 (= (tail!5413 (drop!2001 lt!1171381 (+ 0 1))) (drop!2001 lt!1171381 (+ 0 1 1)))))

(declare-fun lt!1171386 () Unit!52398)

(assert (=> b!3451036 (= lt!1171386 lt!1171380)))

(assert (= (and d!992347 res!1391683) b!3451034))

(assert (= (and d!992347 c!590723) b!3451035))

(assert (= (and d!992347 (not c!590723)) b!3451036))

(assert (=> d!992347 m!3847297))

(declare-fun m!3848397 () Bool)

(assert (=> d!992347 m!3848397))

(assert (=> d!992347 m!3847269))

(declare-fun m!3848403 () Bool)

(assert (=> d!992347 m!3848403))

(assert (=> d!992347 m!3848397))

(declare-fun m!3848409 () Bool)

(assert (=> d!992347 m!3848409))

(declare-fun m!3848413 () Bool)

(assert (=> d!992347 m!3848413))

(assert (=> d!992347 m!3848403))

(assert (=> b!3451034 m!3847269))

(declare-fun m!3848415 () Bool)

(assert (=> b!3451036 m!3848415))

(declare-fun m!3848421 () Bool)

(assert (=> b!3451036 m!3848421))

(declare-fun m!3848423 () Bool)

(assert (=> b!3451036 m!3848423))

(declare-fun m!3848425 () Bool)

(assert (=> b!3451036 m!3848425))

(assert (=> b!3451036 m!3848421))

(declare-fun m!3848427 () Bool)

(assert (=> b!3451036 m!3848427))

(assert (=> b!3451036 m!3847261))

(declare-fun m!3848433 () Bool)

(assert (=> b!3451036 m!3848433))

(declare-fun m!3848435 () Bool)

(assert (=> b!3451036 m!3848435))

(declare-fun m!3848439 () Bool)

(assert (=> b!3451036 m!3848439))

(declare-fun m!3848441 () Bool)

(assert (=> b!3451036 m!3848441))

(declare-fun m!3848447 () Bool)

(assert (=> b!3451036 m!3848447))

(assert (=> b!3451036 m!3847297))

(assert (=> b!3451036 m!3848425))

(declare-fun m!3848455 () Bool)

(assert (=> b!3451036 m!3848455))

(assert (=> b!3451036 m!3848439))

(assert (=> b!3451036 m!3848455))

(declare-fun m!3848465 () Bool)

(assert (=> b!3451036 m!3848465))

(assert (=> b!3451036 m!3848423))

(assert (=> b!3450207 d!992347))

(declare-fun d!992349 () Bool)

(declare-fun lt!1171391 () Token!10206)

(assert (=> d!992349 (contains!6845 lt!1171028 lt!1171391)))

(declare-fun e!2137682 () Token!10206)

(assert (=> d!992349 (= lt!1171391 e!2137682)))

(declare-fun c!590727 () Bool)

(assert (=> d!992349 (= c!590727 (= 0 0))))

(declare-fun e!2137681 () Bool)

(assert (=> d!992349 e!2137681))

(declare-fun res!1391688 () Bool)

(assert (=> d!992349 (=> (not res!1391688) (not e!2137681))))

(assert (=> d!992349 (= res!1391688 (<= 0 0))))

(assert (=> d!992349 (= (apply!8695 lt!1171028 0) lt!1171391)))

(declare-fun b!3451045 () Bool)

(assert (=> b!3451045 (= e!2137681 (< 0 (size!28108 lt!1171028)))))

(declare-fun b!3451046 () Bool)

(assert (=> b!3451046 (= e!2137682 (head!7291 lt!1171028))))

(declare-fun b!3451047 () Bool)

(assert (=> b!3451047 (= e!2137682 (apply!8695 (tail!5413 lt!1171028) (- 0 1)))))

(assert (= (and d!992349 res!1391688) b!3451045))

(assert (= (and d!992349 c!590727) b!3451046))

(assert (= (and d!992349 (not c!590727)) b!3451047))

(declare-fun m!3848501 () Bool)

(assert (=> d!992349 m!3848501))

(declare-fun m!3848503 () Bool)

(assert (=> b!3451045 m!3848503))

(declare-fun m!3848505 () Bool)

(assert (=> b!3451046 m!3848505))

(declare-fun m!3848507 () Bool)

(assert (=> b!3451047 m!3848507))

(assert (=> b!3451047 m!3848507))

(declare-fun m!3848509 () Bool)

(assert (=> b!3451047 m!3848509))

(assert (=> b!3450207 d!992349))

(declare-fun d!992353 () Bool)

(declare-fun lt!1171397 () Token!10206)

(assert (=> d!992353 (= lt!1171397 (apply!8695 (list!13486 lt!1170931) 0))))

(declare-fun apply!8697 (Conc!11216 Int) Token!10206)

(assert (=> d!992353 (= lt!1171397 (apply!8697 (c!590468 lt!1170931) 0))))

(declare-fun e!2137693 () Bool)

(assert (=> d!992353 e!2137693))

(declare-fun res!1391700 () Bool)

(assert (=> d!992353 (=> (not res!1391700) (not e!2137693))))

(assert (=> d!992353 (= res!1391700 (<= 0 0))))

(assert (=> d!992353 (= (apply!8694 lt!1170931 0) lt!1171397)))

(declare-fun b!3451065 () Bool)

(assert (=> b!3451065 (= e!2137693 (< 0 (size!28104 lt!1170931)))))

(assert (= (and d!992353 res!1391700) b!3451065))

(assert (=> d!992353 m!3847261))

(assert (=> d!992353 m!3847261))

(declare-fun m!3848533 () Bool)

(assert (=> d!992353 m!3848533))

(declare-fun m!3848535 () Bool)

(assert (=> d!992353 m!3848535))

(assert (=> b!3451065 m!3847269))

(assert (=> b!3450207 d!992353))

(declare-fun d!992361 () Bool)

(assert (=> d!992361 (= (tail!5413 (drop!2001 lt!1171025 0)) (drop!2001 lt!1171025 (+ 0 1)))))

(declare-fun lt!1171410 () Unit!52398)

(declare-fun choose!19928 (List!37204 Int) Unit!52398)

(assert (=> d!992361 (= lt!1171410 (choose!19928 lt!1171025 0))))

(declare-fun e!2137698 () Bool)

(assert (=> d!992361 e!2137698))

(declare-fun res!1391703 () Bool)

(assert (=> d!992361 (=> (not res!1391703) (not e!2137698))))

(assert (=> d!992361 (= res!1391703 (>= 0 0))))

(assert (=> d!992361 (= (lemmaDropTail!1037 lt!1171025 0) lt!1171410)))

(declare-fun b!3451072 () Bool)

(assert (=> b!3451072 (= e!2137698 (< 0 (size!28108 lt!1171025)))))

(assert (= (and d!992361 res!1391703) b!3451072))

(assert (=> d!992361 m!3847291))

(assert (=> d!992361 m!3847291))

(assert (=> d!992361 m!3847293))

(assert (=> d!992361 m!3847295))

(declare-fun m!3848537 () Bool)

(assert (=> d!992361 m!3848537))

(assert (=> b!3451072 m!3848353))

(assert (=> b!3450207 d!992361))

(declare-fun b!3451073 () Bool)

(declare-fun e!2137699 () Bool)

(declare-fun lt!1171411 () List!37204)

(declare-fun e!2137703 () Int)

(assert (=> b!3451073 (= e!2137699 (= (size!28108 lt!1171411) e!2137703))))

(declare-fun c!590734 () Bool)

(assert (=> b!3451073 (= c!590734 (<= 0 0))))

(declare-fun b!3451074 () Bool)

(declare-fun e!2137701 () List!37204)

(assert (=> b!3451074 (= e!2137701 Nil!37080)))

(declare-fun b!3451075 () Bool)

(declare-fun e!2137702 () Int)

(declare-fun call!249076 () Int)

(assert (=> b!3451075 (= e!2137702 (- call!249076 0))))

(declare-fun d!992363 () Bool)

(assert (=> d!992363 e!2137699))

(declare-fun res!1391704 () Bool)

(assert (=> d!992363 (=> (not res!1391704) (not e!2137699))))

(assert (=> d!992363 (= res!1391704 (= ((_ map implies) (content!5162 lt!1171411) (content!5162 lt!1171028)) ((as const (InoxSet Token!10206)) true)))))

(assert (=> d!992363 (= lt!1171411 e!2137701)))

(declare-fun c!590735 () Bool)

(assert (=> d!992363 (= c!590735 ((_ is Nil!37080) lt!1171028))))

(assert (=> d!992363 (= (drop!2001 lt!1171028 0) lt!1171411)))

(declare-fun b!3451076 () Bool)

(declare-fun e!2137700 () List!37204)

(assert (=> b!3451076 (= e!2137701 e!2137700)))

(declare-fun c!590733 () Bool)

(assert (=> b!3451076 (= c!590733 (<= 0 0))))

(declare-fun b!3451077 () Bool)

(assert (=> b!3451077 (= e!2137700 lt!1171028)))

(declare-fun b!3451078 () Bool)

(assert (=> b!3451078 (= e!2137702 0)))

(declare-fun b!3451079 () Bool)

(assert (=> b!3451079 (= e!2137700 (drop!2001 (t!271613 lt!1171028) (- 0 1)))))

(declare-fun b!3451080 () Bool)

(assert (=> b!3451080 (= e!2137703 call!249076)))

(declare-fun bm!249071 () Bool)

(assert (=> bm!249071 (= call!249076 (size!28108 lt!1171028))))

(declare-fun b!3451081 () Bool)

(assert (=> b!3451081 (= e!2137703 e!2137702)))

(declare-fun c!590736 () Bool)

(assert (=> b!3451081 (= c!590736 (>= 0 call!249076))))

(assert (= (and d!992363 c!590735) b!3451074))

(assert (= (and d!992363 (not c!590735)) b!3451076))

(assert (= (and b!3451076 c!590733) b!3451077))

(assert (= (and b!3451076 (not c!590733)) b!3451079))

(assert (= (and d!992363 res!1391704) b!3451073))

(assert (= (and b!3451073 c!590734) b!3451080))

(assert (= (and b!3451073 (not c!590734)) b!3451081))

(assert (= (and b!3451081 c!590736) b!3451078))

(assert (= (and b!3451081 (not c!590736)) b!3451075))

(assert (= (or b!3451080 b!3451081 b!3451075) bm!249071))

(declare-fun m!3848539 () Bool)

(assert (=> b!3451073 m!3848539))

(declare-fun m!3848541 () Bool)

(assert (=> d!992363 m!3848541))

(declare-fun m!3848543 () Bool)

(assert (=> d!992363 m!3848543))

(declare-fun m!3848545 () Bool)

(assert (=> b!3451079 m!3848545))

(assert (=> bm!249071 m!3848503))

(assert (=> b!3450207 d!992363))

(declare-fun d!992365 () Bool)

(assert (=> d!992365 (= (list!13486 lt!1170931) (list!13489 (c!590468 lt!1170931)))))

(declare-fun bs!559790 () Bool)

(assert (= bs!559790 d!992365))

(declare-fun m!3848547 () Bool)

(assert (=> bs!559790 m!3848547))

(assert (=> b!3450207 d!992365))

(declare-fun d!992367 () Bool)

(assert (=> d!992367 (= (head!7291 (drop!2001 lt!1171028 0)) (apply!8695 lt!1171028 0))))

(declare-fun lt!1171419 () Unit!52398)

(declare-fun choose!19929 (List!37204 Int) Unit!52398)

(assert (=> d!992367 (= lt!1171419 (choose!19929 lt!1171028 0))))

(declare-fun e!2137707 () Bool)

(assert (=> d!992367 e!2137707))

(declare-fun res!1391707 () Bool)

(assert (=> d!992367 (=> (not res!1391707) (not e!2137707))))

(assert (=> d!992367 (= res!1391707 (>= 0 0))))

(assert (=> d!992367 (= (lemmaDropApply!1153 lt!1171028 0) lt!1171419)))

(declare-fun b!3451086 () Bool)

(assert (=> b!3451086 (= e!2137707 (< 0 (size!28108 lt!1171028)))))

(assert (= (and d!992367 res!1391707) b!3451086))

(assert (=> d!992367 m!3847279))

(assert (=> d!992367 m!3847279))

(assert (=> d!992367 m!3847285))

(assert (=> d!992367 m!3847287))

(declare-fun m!3848579 () Bool)

(assert (=> d!992367 m!3848579))

(assert (=> b!3451086 m!3848503))

(assert (=> b!3450207 d!992367))

(declare-fun d!992377 () Bool)

(assert (=> d!992377 (= (isEmpty!21406 lt!1171172) (not ((_ is Some!7484) lt!1171172)))))

(assert (=> d!992093 d!992377))

(assert (=> d!992093 d!991881))

(declare-fun d!992379 () Bool)

(assert (=> d!992379 (= (isEmpty!21402 lt!1170945) ((_ is Nil!37079) lt!1170945))))

(assert (=> bm!249024 d!992379))

(declare-fun d!992381 () Bool)

(declare-fun e!2137723 () Bool)

(assert (=> d!992381 e!2137723))

(declare-fun res!1391713 () Bool)

(assert (=> d!992381 (=> (not res!1391713) (not e!2137723))))

(declare-fun lt!1171423 () BalanceConc!22046)

(assert (=> d!992381 (= res!1391713 (= (list!13486 lt!1171423) tokens!494))))

(declare-fun fromList!738 (List!37204) Conc!11216)

(assert (=> d!992381 (= lt!1171423 (BalanceConc!22047 (fromList!738 tokens!494)))))

(assert (=> d!992381 (= (fromListB!1763 tokens!494) lt!1171423)))

(declare-fun b!3451112 () Bool)

(assert (=> b!3451112 (= e!2137723 (isBalanced!3401 (fromList!738 tokens!494)))))

(assert (= (and d!992381 res!1391713) b!3451112))

(declare-fun m!3848611 () Bool)

(assert (=> d!992381 m!3848611))

(declare-fun m!3848615 () Bool)

(assert (=> d!992381 m!3848615))

(assert (=> b!3451112 m!3848615))

(assert (=> b!3451112 m!3848615))

(declare-fun m!3848617 () Bool)

(assert (=> b!3451112 m!3848617))

(assert (=> d!992021 d!992381))

(declare-fun d!992399 () Bool)

(declare-fun res!1391714 () Bool)

(declare-fun e!2137725 () Bool)

(assert (=> d!992399 (=> res!1391714 e!2137725)))

(assert (=> d!992399 (= res!1391714 ((_ is Nil!37080) (t!271613 tokens!494)))))

(assert (=> d!992399 (= (forall!7885 (t!271613 tokens!494) lambda!121525) e!2137725)))

(declare-fun b!3451115 () Bool)

(declare-fun e!2137726 () Bool)

(assert (=> b!3451115 (= e!2137725 e!2137726)))

(declare-fun res!1391715 () Bool)

(assert (=> b!3451115 (=> (not res!1391715) (not e!2137726))))

(assert (=> b!3451115 (= res!1391715 (dynLambda!15569 lambda!121525 (h!42500 (t!271613 tokens!494))))))

(declare-fun b!3451116 () Bool)

(assert (=> b!3451116 (= e!2137726 (forall!7885 (t!271613 (t!271613 tokens!494)) lambda!121525))))

(assert (= (and d!992399 (not res!1391714)) b!3451115))

(assert (= (and b!3451115 res!1391715) b!3451116))

(declare-fun b_lambda!99071 () Bool)

(assert (=> (not b_lambda!99071) (not b!3451115)))

(assert (=> b!3451115 m!3847153))

(declare-fun m!3848625 () Bool)

(assert (=> b!3451116 m!3848625))

(assert (=> b!3450407 d!992399))

(assert (=> b!3450603 d!992329))

(declare-fun d!992405 () Bool)

(assert (=> d!992405 (= (apply!8691 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))) (seqFromList!3894 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168))))) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168))))) (seqFromList!3894 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168))))))))

(declare-fun b_lambda!99073 () Bool)

(assert (=> (not b_lambda!99073) (not d!992405)))

(declare-fun tb!187763 () Bool)

(declare-fun t!271774 () Bool)

(assert (=> (and b!3449897 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271774) tb!187763))

(declare-fun result!231624 () Bool)

(assert (=> tb!187763 (= result!231624 (inv!21 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168))))) (seqFromList!3894 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))))))))

(declare-fun m!3848639 () Bool)

(assert (=> tb!187763 m!3848639))

(assert (=> d!992405 t!271774))

(declare-fun b_and!242381 () Bool)

(assert (= b_and!242289 (and (=> t!271774 result!231624) b_and!242381)))

(declare-fun t!271776 () Bool)

(declare-fun tb!187765 () Bool)

(assert (=> (and b!3449883 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271776) tb!187765))

(declare-fun result!231626 () Bool)

(assert (= result!231626 result!231624))

(assert (=> d!992405 t!271776))

(declare-fun b_and!242383 () Bool)

(assert (= b_and!242291 (and (=> t!271776 result!231626) b_and!242383)))

(declare-fun tb!187767 () Bool)

(declare-fun t!271778 () Bool)

(assert (=> (and b!3449880 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271778) tb!187767))

(declare-fun result!231628 () Bool)

(assert (= result!231628 result!231624))

(assert (=> d!992405 t!271778))

(declare-fun b_and!242385 () Bool)

(assert (= b_and!242293 (and (=> t!271778 result!231628) b_and!242385)))

(declare-fun t!271780 () Bool)

(declare-fun tb!187769 () Bool)

(assert (=> (and b!3450694 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271780) tb!187769))

(declare-fun result!231630 () Bool)

(assert (= result!231630 result!231624))

(assert (=> d!992405 t!271780))

(declare-fun b_and!242387 () Bool)

(assert (= b_and!242307 (and (=> t!271780 result!231630) b_and!242387)))

(declare-fun t!271782 () Bool)

(declare-fun tb!187771 () Bool)

(assert (=> (and b!3450680 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271782) tb!187771))

(declare-fun result!231632 () Bool)

(assert (= result!231632 result!231624))

(assert (=> d!992405 t!271782))

(declare-fun b_and!242389 () Bool)

(assert (= b_and!242303 (and (=> t!271782 result!231632) b_and!242389)))

(assert (=> d!992405 m!3847781))

(declare-fun m!3848649 () Bool)

(assert (=> d!992405 m!3848649))

(assert (=> b!3450603 d!992405))

(declare-fun d!992413 () Bool)

(assert (=> d!992413 (= (seqFromList!3894 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))) (fromListB!1762 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))))))

(declare-fun bs!559798 () Bool)

(assert (= bs!559798 d!992413))

(declare-fun m!3848651 () Bool)

(assert (=> bs!559798 m!3848651))

(assert (=> b!3450603 d!992413))

(declare-fun d!992415 () Bool)

(assert (=> d!992415 (= (inv!50235 (tag!6018 (rule!8000 (h!42500 (t!271613 tokens!494))))) (= (mod (str.len (value!174929 (tag!6018 (rule!8000 (h!42500 (t!271613 tokens!494)))))) 2) 0))))

(assert (=> b!3450693 d!992415))

(declare-fun d!992417 () Bool)

(declare-fun res!1391718 () Bool)

(declare-fun e!2137732 () Bool)

(assert (=> d!992417 (=> (not res!1391718) (not e!2137732))))

(assert (=> d!992417 (= res!1391718 (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))))))

(assert (=> d!992417 (= (inv!50238 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) e!2137732)))

(declare-fun b!3451125 () Bool)

(assert (=> b!3451125 (= e!2137732 (equivClasses!2172 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))))))

(assert (= (and d!992417 res!1391718) b!3451125))

(declare-fun m!3848653 () Bool)

(assert (=> d!992417 m!3848653))

(declare-fun m!3848655 () Bool)

(assert (=> b!3451125 m!3848655))

(assert (=> b!3450693 d!992417))

(declare-fun b!3451128 () Bool)

(declare-fun res!1391719 () Bool)

(declare-fun e!2137734 () Bool)

(assert (=> b!3451128 (=> (not res!1391719) (not e!2137734))))

(declare-fun lt!1171426 () List!37203)

(assert (=> b!3451128 (= res!1391719 (= (size!28101 lt!1171426) (+ (size!28101 (t!271612 lt!1170945)) (size!28101 lt!1170933))))))

(declare-fun b!3451129 () Bool)

(assert (=> b!3451129 (= e!2137734 (or (not (= lt!1170933 Nil!37079)) (= lt!1171426 (t!271612 lt!1170945))))))

(declare-fun d!992419 () Bool)

(assert (=> d!992419 e!2137734))

(declare-fun res!1391720 () Bool)

(assert (=> d!992419 (=> (not res!1391720) (not e!2137734))))

(assert (=> d!992419 (= res!1391720 (= (content!5161 lt!1171426) ((_ map or) (content!5161 (t!271612 lt!1170945)) (content!5161 lt!1170933))))))

(declare-fun e!2137733 () List!37203)

(assert (=> d!992419 (= lt!1171426 e!2137733)))

(declare-fun c!590753 () Bool)

(assert (=> d!992419 (= c!590753 ((_ is Nil!37079) (t!271612 lt!1170945)))))

(assert (=> d!992419 (= (++!9125 (t!271612 lt!1170945) lt!1170933) lt!1171426)))

(declare-fun b!3451126 () Bool)

(assert (=> b!3451126 (= e!2137733 lt!1170933)))

(declare-fun b!3451127 () Bool)

(assert (=> b!3451127 (= e!2137733 (Cons!37079 (h!42499 (t!271612 lt!1170945)) (++!9125 (t!271612 (t!271612 lt!1170945)) lt!1170933)))))

(assert (= (and d!992419 c!590753) b!3451126))

(assert (= (and d!992419 (not c!590753)) b!3451127))

(assert (= (and d!992419 res!1391720) b!3451128))

(assert (= (and b!3451128 res!1391719) b!3451129))

(declare-fun m!3848659 () Bool)

(assert (=> b!3451128 m!3848659))

(declare-fun m!3848661 () Bool)

(assert (=> b!3451128 m!3848661))

(assert (=> b!3451128 m!3847131))

(declare-fun m!3848663 () Bool)

(assert (=> d!992419 m!3848663))

(declare-fun m!3848665 () Bool)

(assert (=> d!992419 m!3848665))

(assert (=> d!992419 m!3847137))

(declare-fun m!3848667 () Bool)

(assert (=> b!3451127 m!3848667))

(assert (=> b!3450187 d!992419))

(declare-fun d!992423 () Bool)

(declare-fun lt!1171431 () Int)

(assert (=> d!992423 (= lt!1171431 (size!28108 (list!13486 lt!1170931)))))

(declare-fun size!28109 (Conc!11216) Int)

(assert (=> d!992423 (= lt!1171431 (size!28109 (c!590468 lt!1170931)))))

(assert (=> d!992423 (= (size!28104 lt!1170931) lt!1171431)))

(declare-fun bs!559803 () Bool)

(assert (= bs!559803 d!992423))

(assert (=> bs!559803 m!3847261))

(assert (=> bs!559803 m!3847261))

(declare-fun m!3848681 () Bool)

(assert (=> bs!559803 m!3848681))

(declare-fun m!3848683 () Bool)

(assert (=> bs!559803 m!3848683))

(assert (=> d!991947 d!992423))

(declare-fun d!992435 () Bool)

(assert (=> d!992435 (= (list!13483 lt!1171026) (list!13487 (c!590467 lt!1171026)))))

(declare-fun bs!559804 () Bool)

(assert (= bs!559804 d!992435))

(declare-fun m!3848685 () Bool)

(assert (=> bs!559804 m!3848685))

(assert (=> d!991947 d!992435))

(declare-fun d!992437 () Bool)

(assert (=> d!992437 (= (dropList!1195 lt!1170931 0) (drop!2001 (list!13489 (c!590468 lt!1170931)) 0))))

(declare-fun bs!559806 () Bool)

(assert (= bs!559806 d!992437))

(assert (=> bs!559806 m!3848547))

(assert (=> bs!559806 m!3848547))

(declare-fun m!3848691 () Bool)

(assert (=> bs!559806 m!3848691))

(assert (=> d!991947 d!992437))

(declare-fun d!992441 () Bool)

(declare-fun lt!1171450 () List!37203)

(assert (=> d!992441 (= lt!1171450 (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) (printList!1557 thiss!18206 (dropList!1195 lt!1170931 0))))))

(declare-fun e!2137750 () List!37203)

(assert (=> d!992441 (= lt!1171450 e!2137750)))

(declare-fun c!590760 () Bool)

(assert (=> d!992441 (= c!590760 ((_ is Cons!37080) (dropList!1195 lt!1170931 0)))))

(assert (=> d!992441 (= (printListTailRec!678 thiss!18206 (dropList!1195 lt!1170931 0) (list!13483 (BalanceConc!22045 Empty!11215))) lt!1171450)))

(declare-fun b!3451153 () Bool)

(assert (=> b!3451153 (= e!2137750 (printListTailRec!678 thiss!18206 (t!271613 (dropList!1195 lt!1170931 0)) (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) (list!13483 (charsOf!3434 (h!42500 (dropList!1195 lt!1170931 0)))))))))

(declare-fun lt!1171447 () List!37203)

(assert (=> b!3451153 (= lt!1171447 (list!13483 (charsOf!3434 (h!42500 (dropList!1195 lt!1170931 0)))))))

(declare-fun lt!1171449 () List!37203)

(assert (=> b!3451153 (= lt!1171449 (printList!1557 thiss!18206 (t!271613 (dropList!1195 lt!1170931 0))))))

(declare-fun lt!1171448 () Unit!52398)

(assert (=> b!3451153 (= lt!1171448 (lemmaConcatAssociativity!1936 (list!13483 (BalanceConc!22045 Empty!11215)) lt!1171447 lt!1171449))))

(assert (=> b!3451153 (= (++!9125 (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) lt!1171447) lt!1171449) (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) (++!9125 lt!1171447 lt!1171449)))))

(declare-fun lt!1171451 () Unit!52398)

(assert (=> b!3451153 (= lt!1171451 lt!1171448)))

(declare-fun b!3451154 () Bool)

(assert (=> b!3451154 (= e!2137750 (list!13483 (BalanceConc!22045 Empty!11215)))))

(assert (= (and d!992441 c!590760) b!3451153))

(assert (= (and d!992441 (not c!590760)) b!3451154))

(assert (=> d!992441 m!3847271))

(declare-fun m!3848713 () Bool)

(assert (=> d!992441 m!3848713))

(assert (=> d!992441 m!3847267))

(assert (=> d!992441 m!3848713))

(declare-fun m!3848715 () Bool)

(assert (=> d!992441 m!3848715))

(declare-fun m!3848717 () Bool)

(assert (=> b!3451153 m!3848717))

(declare-fun m!3848719 () Bool)

(assert (=> b!3451153 m!3848719))

(assert (=> b!3451153 m!3847267))

(declare-fun m!3848721 () Bool)

(assert (=> b!3451153 m!3848721))

(assert (=> b!3451153 m!3847267))

(assert (=> b!3451153 m!3848717))

(declare-fun m!3848723 () Bool)

(assert (=> b!3451153 m!3848723))

(declare-fun m!3848725 () Bool)

(assert (=> b!3451153 m!3848725))

(declare-fun m!3848727 () Bool)

(assert (=> b!3451153 m!3848727))

(declare-fun m!3848729 () Bool)

(assert (=> b!3451153 m!3848729))

(declare-fun m!3848731 () Bool)

(assert (=> b!3451153 m!3848731))

(declare-fun m!3848733 () Bool)

(assert (=> b!3451153 m!3848733))

(assert (=> b!3451153 m!3847267))

(assert (=> b!3451153 m!3848731))

(assert (=> b!3451153 m!3848725))

(assert (=> b!3451153 m!3847267))

(assert (=> b!3451153 m!3848723))

(declare-fun m!3848735 () Bool)

(assert (=> b!3451153 m!3848735))

(assert (=> b!3451153 m!3848729))

(assert (=> d!991947 d!992441))

(declare-fun d!992461 () Bool)

(assert (=> d!992461 (= (list!13483 (BalanceConc!22045 Empty!11215)) (list!13487 (c!590467 (BalanceConc!22045 Empty!11215))))))

(declare-fun bs!559811 () Bool)

(assert (= bs!559811 d!992461))

(declare-fun m!3848737 () Bool)

(assert (=> bs!559811 m!3848737))

(assert (=> d!991947 d!992461))

(declare-fun d!992463 () Bool)

(declare-fun nullableFct!1008 (Regex!10179) Bool)

(assert (=> d!992463 (= (nullable!3478 (regex!5420 lt!1170934)) (nullableFct!1008 (regex!5420 lt!1170934)))))

(declare-fun bs!559812 () Bool)

(assert (= bs!559812 d!992463))

(declare-fun m!3848751 () Bool)

(assert (=> bs!559812 m!3848751))

(assert (=> b!3450084 d!992463))

(declare-fun d!992469 () Bool)

(declare-fun e!2137766 () Bool)

(assert (=> d!992469 e!2137766))

(declare-fun res!1391741 () Bool)

(assert (=> d!992469 (=> (not res!1391741) (not e!2137766))))

(declare-fun lt!1171455 () BalanceConc!22044)

(assert (=> d!992469 (= res!1391741 (= (list!13483 lt!1171455) lt!1170951))))

(declare-fun fromList!739 (List!37203) Conc!11215)

(assert (=> d!992469 (= lt!1171455 (BalanceConc!22045 (fromList!739 lt!1170951)))))

(assert (=> d!992469 (= (fromListB!1762 lt!1170951) lt!1171455)))

(declare-fun b!3451178 () Bool)

(assert (=> b!3451178 (= e!2137766 (isBalanced!3403 (fromList!739 lt!1170951)))))

(assert (= (and d!992469 res!1391741) b!3451178))

(declare-fun m!3848765 () Bool)

(assert (=> d!992469 m!3848765))

(declare-fun m!3848767 () Bool)

(assert (=> d!992469 m!3848767))

(assert (=> b!3451178 m!3848767))

(assert (=> b!3451178 m!3848767))

(declare-fun m!3848769 () Bool)

(assert (=> b!3451178 m!3848769))

(assert (=> d!991921 d!992469))

(declare-fun d!992475 () Bool)

(assert (=> d!992475 (= (list!13483 lt!1171006) (list!13487 (c!590467 lt!1171006)))))

(declare-fun bs!559813 () Bool)

(assert (= bs!559813 d!992475))

(declare-fun m!3848771 () Bool)

(assert (=> bs!559813 m!3848771))

(assert (=> d!991941 d!992475))

(declare-fun d!992477 () Bool)

(declare-fun lt!1171456 () Bool)

(assert (=> d!992477 (= lt!1171456 (isEmpty!21404 (list!13486 (_1!21515 lt!1170999))))))

(assert (=> d!992477 (= lt!1171456 (isEmpty!21405 (c!590468 (_1!21515 lt!1170999))))))

(assert (=> d!992477 (= (isEmpty!21394 (_1!21515 lt!1170999)) lt!1171456)))

(declare-fun bs!559814 () Bool)

(assert (= bs!559814 d!992477))

(assert (=> bs!559814 m!3847179))

(assert (=> bs!559814 m!3847179))

(declare-fun m!3848773 () Bool)

(assert (=> bs!559814 m!3848773))

(declare-fun m!3848775 () Bool)

(assert (=> bs!559814 m!3848775))

(assert (=> b!3450169 d!992477))

(declare-fun d!992479 () Bool)

(declare-fun c!590771 () Bool)

(assert (=> d!992479 (= c!590771 ((_ is Nil!37079) lt!1170988))))

(declare-fun e!2137773 () (InoxSet C!20544))

(assert (=> d!992479 (= (content!5161 lt!1170988) e!2137773)))

(declare-fun b!3451195 () Bool)

(assert (=> b!3451195 (= e!2137773 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451196 () Bool)

(assert (=> b!3451196 (= e!2137773 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170988) true) (content!5161 (t!271612 lt!1170988))))))

(assert (= (and d!992479 c!590771) b!3451195))

(assert (= (and d!992479 (not c!590771)) b!3451196))

(declare-fun m!3848777 () Bool)

(assert (=> b!3451196 m!3848777))

(declare-fun m!3848779 () Bool)

(assert (=> b!3451196 m!3848779))

(assert (=> d!991909 d!992479))

(declare-fun d!992481 () Bool)

(declare-fun c!590772 () Bool)

(assert (=> d!992481 (= c!590772 ((_ is Nil!37079) (++!9125 lt!1170951 lt!1170945)))))

(declare-fun e!2137774 () (InoxSet C!20544))

(assert (=> d!992481 (= (content!5161 (++!9125 lt!1170951 lt!1170945)) e!2137774)))

(declare-fun b!3451197 () Bool)

(assert (=> b!3451197 (= e!2137774 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451198 () Bool)

(assert (=> b!3451198 (= e!2137774 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 (++!9125 lt!1170951 lt!1170945)) true) (content!5161 (t!271612 (++!9125 lt!1170951 lt!1170945)))))))

(assert (= (and d!992481 c!590772) b!3451197))

(assert (= (and d!992481 (not c!590772)) b!3451198))

(declare-fun m!3848781 () Bool)

(assert (=> b!3451198 m!3848781))

(declare-fun m!3848783 () Bool)

(assert (=> b!3451198 m!3848783))

(assert (=> d!991909 d!992481))

(declare-fun d!992483 () Bool)

(declare-fun c!590773 () Bool)

(assert (=> d!992483 (= c!590773 ((_ is Nil!37079) lt!1170933))))

(declare-fun e!2137775 () (InoxSet C!20544))

(assert (=> d!992483 (= (content!5161 lt!1170933) e!2137775)))

(declare-fun b!3451199 () Bool)

(assert (=> b!3451199 (= e!2137775 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451200 () Bool)

(assert (=> b!3451200 (= e!2137775 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170933) true) (content!5161 (t!271612 lt!1170933))))))

(assert (= (and d!992483 c!590773) b!3451199))

(assert (= (and d!992483 (not c!590773)) b!3451200))

(declare-fun m!3848785 () Bool)

(assert (=> b!3451200 m!3848785))

(declare-fun m!3848787 () Bool)

(assert (=> b!3451200 m!3848787))

(assert (=> d!991909 d!992483))

(declare-fun d!992485 () Bool)

(assert (=> d!992485 (= (nullable!3478 (regex!5420 lt!1170938)) (nullableFct!1008 (regex!5420 lt!1170938)))))

(declare-fun bs!559815 () Bool)

(assert (= bs!559815 d!992485))

(declare-fun m!3848789 () Bool)

(assert (=> bs!559815 m!3848789))

(assert (=> b!3450427 d!992485))

(declare-fun d!992487 () Bool)

(assert (=> d!992487 (= (get!11855 lt!1171118) (v!36758 lt!1171118))))

(assert (=> b!3450474 d!992487))

(declare-fun d!992489 () Bool)

(declare-fun lt!1171460 () Bool)

(assert (=> d!992489 (= lt!1171460 (select (content!5162 tokens!494) (h!42500 tokens!494)))))

(declare-fun e!2137792 () Bool)

(assert (=> d!992489 (= lt!1171460 e!2137792)))

(declare-fun res!1391772 () Bool)

(assert (=> d!992489 (=> (not res!1391772) (not e!2137792))))

(assert (=> d!992489 (= res!1391772 ((_ is Cons!37080) tokens!494))))

(assert (=> d!992489 (= (contains!6845 tokens!494 (h!42500 tokens!494)) lt!1171460)))

(declare-fun b!3451224 () Bool)

(declare-fun e!2137791 () Bool)

(assert (=> b!3451224 (= e!2137792 e!2137791)))

(declare-fun res!1391771 () Bool)

(assert (=> b!3451224 (=> res!1391771 e!2137791)))

(assert (=> b!3451224 (= res!1391771 (= (h!42500 tokens!494) (h!42500 tokens!494)))))

(declare-fun b!3451225 () Bool)

(assert (=> b!3451225 (= e!2137791 (contains!6845 (t!271613 tokens!494) (h!42500 tokens!494)))))

(assert (= (and d!992489 res!1391772) b!3451224))

(assert (= (and b!3451224 (not res!1391771)) b!3451225))

(declare-fun m!3848815 () Bool)

(assert (=> d!992489 m!3848815))

(declare-fun m!3848817 () Bool)

(assert (=> d!992489 m!3848817))

(declare-fun m!3848819 () Bool)

(assert (=> b!3451225 m!3848819))

(assert (=> b!3450155 d!992489))

(declare-fun b!3451245 () Bool)

(declare-fun e!2137804 () List!37203)

(assert (=> b!3451245 (= e!2137804 (++!9125 (list!13487 (left!28915 (c!590467 (charsOf!3434 separatorToken!241)))) (list!13487 (right!29245 (c!590467 (charsOf!3434 separatorToken!241))))))))

(declare-fun b!3451243 () Bool)

(declare-fun e!2137803 () List!37203)

(assert (=> b!3451243 (= e!2137803 e!2137804)))

(declare-fun c!590783 () Bool)

(assert (=> b!3451243 (= c!590783 ((_ is Leaf!17536) (c!590467 (charsOf!3434 separatorToken!241))))))

(declare-fun d!992497 () Bool)

(declare-fun c!590782 () Bool)

(assert (=> d!992497 (= c!590782 ((_ is Empty!11215) (c!590467 (charsOf!3434 separatorToken!241))))))

(assert (=> d!992497 (= (list!13487 (c!590467 (charsOf!3434 separatorToken!241))) e!2137803)))

(declare-fun b!3451242 () Bool)

(assert (=> b!3451242 (= e!2137803 Nil!37079)))

(declare-fun b!3451244 () Bool)

(declare-fun list!13490 (IArray!22435) List!37203)

(assert (=> b!3451244 (= e!2137804 (list!13490 (xs!14389 (c!590467 (charsOf!3434 separatorToken!241)))))))

(assert (= (and d!992497 c!590782) b!3451242))

(assert (= (and d!992497 (not c!590782)) b!3451243))

(assert (= (and b!3451243 c!590783) b!3451244))

(assert (= (and b!3451243 (not c!590783)) b!3451245))

(declare-fun m!3848831 () Bool)

(assert (=> b!3451245 m!3848831))

(declare-fun m!3848833 () Bool)

(assert (=> b!3451245 m!3848833))

(assert (=> b!3451245 m!3848831))

(assert (=> b!3451245 m!3848833))

(declare-fun m!3848835 () Bool)

(assert (=> b!3451245 m!3848835))

(declare-fun m!3848837 () Bool)

(assert (=> b!3451244 m!3848837))

(assert (=> d!991939 d!992497))

(declare-fun d!992501 () Bool)

(declare-fun lt!1171465 () Int)

(assert (=> d!992501 (= lt!1171465 (size!28108 (list!13486 (_1!21515 lt!1170999))))))

(assert (=> d!992501 (= lt!1171465 (size!28109 (c!590468 (_1!21515 lt!1170999))))))

(assert (=> d!992501 (= (size!28104 (_1!21515 lt!1170999)) lt!1171465)))

(declare-fun bs!559816 () Bool)

(assert (= bs!559816 d!992501))

(assert (=> bs!559816 m!3847179))

(assert (=> bs!559816 m!3847179))

(declare-fun m!3848845 () Bool)

(assert (=> bs!559816 m!3848845))

(declare-fun m!3848847 () Bool)

(assert (=> bs!559816 m!3848847))

(assert (=> d!991919 d!992501))

(declare-fun lt!1171613 () tuple2!36762)

(declare-fun b!3451442 () Bool)

(declare-fun e!2137928 () Bool)

(declare-fun lexRec!747 (LexerInterface!5009 List!37205 BalanceConc!22044) tuple2!36762)

(assert (=> b!3451442 (= e!2137928 (= (list!13483 (_2!21515 lt!1171613)) (list!13483 (_2!21515 (lexRec!747 thiss!18206 rules!2135 lt!1170946)))))))

(declare-fun b!3451443 () Bool)

(declare-fun e!2137926 () tuple2!36762)

(assert (=> b!3451443 (= e!2137926 (tuple2!36763 (BalanceConc!22047 Empty!11216) lt!1170946))))

(declare-fun lt!1171611 () tuple2!36762)

(declare-datatypes ((tuple2!36774 0))(
  ( (tuple2!36775 (_1!21521 Token!10206) (_2!21521 BalanceConc!22044)) )
))
(declare-datatypes ((Option!7488 0))(
  ( (None!7487) (Some!7487 (v!36771 tuple2!36774)) )
))
(declare-fun lt!1171599 () Option!7488)

(declare-fun b!3451444 () Bool)

(assert (=> b!3451444 (= lt!1171611 (lexRec!747 thiss!18206 rules!2135 (_2!21521 (v!36771 lt!1171599))))))

(declare-fun e!2137925 () tuple2!36762)

(declare-fun prepend!1259 (BalanceConc!22046 Token!10206) BalanceConc!22046)

(assert (=> b!3451444 (= e!2137925 (tuple2!36763 (prepend!1259 (_1!21515 lt!1171611) (_1!21521 (v!36771 lt!1171599))) (_2!21515 lt!1171611)))))

(declare-fun lt!1171601 () Option!7488)

(declare-fun lt!1171590 () tuple2!36762)

(declare-fun b!3451445 () Bool)

(assert (=> b!3451445 (= lt!1171590 (lexRec!747 thiss!18206 rules!2135 (_2!21521 (v!36771 lt!1171601))))))

(declare-fun e!2137927 () tuple2!36762)

(assert (=> b!3451445 (= e!2137927 (tuple2!36763 (prepend!1259 (_1!21515 lt!1171590) (_1!21521 (v!36771 lt!1171601))) (_2!21515 lt!1171590)))))

(declare-fun b!3451446 () Bool)

(declare-fun lt!1171608 () BalanceConc!22044)

(assert (=> b!3451446 (= e!2137927 (tuple2!36763 (BalanceConc!22047 Empty!11216) lt!1171608))))

(declare-fun b!3451447 () Bool)

(assert (=> b!3451447 (= e!2137925 (tuple2!36763 (BalanceConc!22047 Empty!11216) lt!1170946))))

(declare-fun d!992505 () Bool)

(assert (=> d!992505 e!2137928))

(declare-fun res!1391846 () Bool)

(assert (=> d!992505 (=> (not res!1391846) (not e!2137928))))

(assert (=> d!992505 (= res!1391846 (= (list!13486 (_1!21515 lt!1171613)) (list!13486 (_1!21515 (lexRec!747 thiss!18206 rules!2135 lt!1170946)))))))

(assert (=> d!992505 (= lt!1171613 e!2137926)))

(declare-fun c!590850 () Bool)

(declare-fun lt!1171591 () Option!7488)

(assert (=> d!992505 (= c!590850 ((_ is Some!7487) lt!1171591))))

(declare-fun maxPrefixZipperSequenceV2!534 (LexerInterface!5009 List!37205 BalanceConc!22044 BalanceConc!22044) Option!7488)

(assert (=> d!992505 (= lt!1171591 (maxPrefixZipperSequenceV2!534 thiss!18206 rules!2135 lt!1170946 lt!1170946))))

(declare-fun lt!1171603 () Unit!52398)

(declare-fun lt!1171609 () Unit!52398)

(assert (=> d!992505 (= lt!1171603 lt!1171609)))

(declare-fun lt!1171617 () List!37203)

(declare-fun lt!1171606 () List!37203)

(declare-fun isSuffix!909 (List!37203 List!37203) Bool)

(assert (=> d!992505 (isSuffix!909 lt!1171617 (++!9125 lt!1171606 lt!1171617))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!594 (List!37203 List!37203) Unit!52398)

(assert (=> d!992505 (= lt!1171609 (lemmaConcatTwoListThenFSndIsSuffix!594 lt!1171606 lt!1171617))))

(assert (=> d!992505 (= lt!1171617 (list!13483 lt!1170946))))

(assert (=> d!992505 (= lt!1171606 (list!13483 (BalanceConc!22045 Empty!11215)))))

(assert (=> d!992505 (= (lexTailRecV2!1046 thiss!18206 rules!2135 lt!1170946 (BalanceConc!22045 Empty!11215) lt!1170946 (BalanceConc!22047 Empty!11216)) lt!1171613)))

(declare-fun lt!1171620 () BalanceConc!22044)

(declare-fun b!3451448 () Bool)

(declare-fun append!963 (BalanceConc!22046 Token!10206) BalanceConc!22046)

(assert (=> b!3451448 (= e!2137926 (lexTailRecV2!1046 thiss!18206 rules!2135 lt!1170946 lt!1171620 (_2!21521 (v!36771 lt!1171591)) (append!963 (BalanceConc!22047 Empty!11216) (_1!21521 (v!36771 lt!1171591)))))))

(declare-fun lt!1171589 () tuple2!36762)

(assert (=> b!3451448 (= lt!1171589 (lexRec!747 thiss!18206 rules!2135 (_2!21521 (v!36771 lt!1171591))))))

(declare-fun lt!1171602 () List!37203)

(assert (=> b!3451448 (= lt!1171602 (list!13483 (BalanceConc!22045 Empty!11215)))))

(declare-fun lt!1171616 () List!37203)

(assert (=> b!3451448 (= lt!1171616 (list!13483 (charsOf!3434 (_1!21521 (v!36771 lt!1171591)))))))

(declare-fun lt!1171610 () List!37203)

(assert (=> b!3451448 (= lt!1171610 (list!13483 (_2!21521 (v!36771 lt!1171591))))))

(declare-fun lt!1171592 () Unit!52398)

(assert (=> b!3451448 (= lt!1171592 (lemmaConcatAssociativity!1936 lt!1171602 lt!1171616 lt!1171610))))

(assert (=> b!3451448 (= (++!9125 (++!9125 lt!1171602 lt!1171616) lt!1171610) (++!9125 lt!1171602 (++!9125 lt!1171616 lt!1171610)))))

(declare-fun lt!1171604 () Unit!52398)

(assert (=> b!3451448 (= lt!1171604 lt!1171592)))

(declare-fun maxPrefixZipperSequence!1140 (LexerInterface!5009 List!37205 BalanceConc!22044) Option!7488)

(assert (=> b!3451448 (= lt!1171599 (maxPrefixZipperSequence!1140 thiss!18206 rules!2135 lt!1170946))))

(declare-fun c!590848 () Bool)

(assert (=> b!3451448 (= c!590848 ((_ is Some!7487) lt!1171599))))

(assert (=> b!3451448 (= (lexRec!747 thiss!18206 rules!2135 lt!1170946) e!2137925)))

(declare-fun lt!1171614 () Unit!52398)

(declare-fun Unit!52402 () Unit!52398)

(assert (=> b!3451448 (= lt!1171614 Unit!52402)))

(declare-fun lt!1171598 () List!37204)

(assert (=> b!3451448 (= lt!1171598 (list!13486 (BalanceConc!22047 Empty!11216)))))

(declare-fun lt!1171618 () List!37204)

(assert (=> b!3451448 (= lt!1171618 (Cons!37080 (_1!21521 (v!36771 lt!1171591)) Nil!37080))))

(declare-fun lt!1171615 () List!37204)

(assert (=> b!3451448 (= lt!1171615 (list!13486 (_1!21515 lt!1171589)))))

(declare-fun lt!1171596 () Unit!52398)

(declare-fun lemmaConcatAssociativity!1938 (List!37204 List!37204 List!37204) Unit!52398)

(assert (=> b!3451448 (= lt!1171596 (lemmaConcatAssociativity!1938 lt!1171598 lt!1171618 lt!1171615))))

(declare-fun ++!9130 (List!37204 List!37204) List!37204)

(assert (=> b!3451448 (= (++!9130 (++!9130 lt!1171598 lt!1171618) lt!1171615) (++!9130 lt!1171598 (++!9130 lt!1171618 lt!1171615)))))

(declare-fun lt!1171588 () Unit!52398)

(assert (=> b!3451448 (= lt!1171588 lt!1171596)))

(declare-fun lt!1171607 () List!37203)

(assert (=> b!3451448 (= lt!1171607 (++!9125 (list!13483 (BalanceConc!22045 Empty!11215)) (list!13483 (charsOf!3434 (_1!21521 (v!36771 lt!1171591))))))))

(declare-fun lt!1171597 () List!37203)

(assert (=> b!3451448 (= lt!1171597 (list!13483 (_2!21521 (v!36771 lt!1171591))))))

(declare-fun lt!1171619 () List!37204)

(assert (=> b!3451448 (= lt!1171619 (list!13486 (append!963 (BalanceConc!22047 Empty!11216) (_1!21521 (v!36771 lt!1171591)))))))

(declare-fun lt!1171594 () Unit!52398)

(declare-fun lemmaLexThenLexPrefix!512 (LexerInterface!5009 List!37205 List!37203 List!37203 List!37204 List!37204 List!37203) Unit!52398)

(assert (=> b!3451448 (= lt!1171594 (lemmaLexThenLexPrefix!512 thiss!18206 rules!2135 lt!1171607 lt!1171597 lt!1171619 (list!13486 (_1!21515 lt!1171589)) (list!13483 (_2!21515 lt!1171589))))))

(assert (=> b!3451448 (= (lexList!1438 thiss!18206 rules!2135 lt!1171607) (tuple2!36769 lt!1171619 Nil!37079))))

(declare-fun lt!1171593 () Unit!52398)

(assert (=> b!3451448 (= lt!1171593 lt!1171594)))

(assert (=> b!3451448 (= lt!1171608 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (_1!21521 (v!36771 lt!1171591)))))))

(assert (=> b!3451448 (= lt!1171601 (maxPrefixZipperSequence!1140 thiss!18206 rules!2135 lt!1171608))))

(declare-fun c!590849 () Bool)

(assert (=> b!3451448 (= c!590849 ((_ is Some!7487) lt!1171601))))

(assert (=> b!3451448 (= (lexRec!747 thiss!18206 rules!2135 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (_1!21521 (v!36771 lt!1171591))))) e!2137927)))

(declare-fun lt!1171600 () Unit!52398)

(declare-fun Unit!52403 () Unit!52398)

(assert (=> b!3451448 (= lt!1171600 Unit!52403)))

(assert (=> b!3451448 (= lt!1171620 (++!9127 (BalanceConc!22045 Empty!11215) (charsOf!3434 (_1!21521 (v!36771 lt!1171591)))))))

(declare-fun lt!1171621 () List!37203)

(assert (=> b!3451448 (= lt!1171621 (list!13483 lt!1171620))))

(declare-fun lt!1171612 () List!37203)

(assert (=> b!3451448 (= lt!1171612 (list!13483 (_2!21521 (v!36771 lt!1171591))))))

(declare-fun lt!1171605 () Unit!52398)

(assert (=> b!3451448 (= lt!1171605 (lemmaConcatTwoListThenFSndIsSuffix!594 lt!1171621 lt!1171612))))

(assert (=> b!3451448 (isSuffix!909 lt!1171612 (++!9125 lt!1171621 lt!1171612))))

(declare-fun lt!1171595 () Unit!52398)

(assert (=> b!3451448 (= lt!1171595 lt!1171605)))

(assert (= (and d!992505 c!590850) b!3451448))

(assert (= (and d!992505 (not c!590850)) b!3451443))

(assert (= (and b!3451448 c!590848) b!3451444))

(assert (= (and b!3451448 (not c!590848)) b!3451447))

(assert (= (and b!3451448 c!590849) b!3451445))

(assert (= (and b!3451448 (not c!590849)) b!3451446))

(assert (= (and d!992505 res!1391846) b!3451442))

(declare-fun m!3849121 () Bool)

(assert (=> b!3451442 m!3849121))

(declare-fun m!3849123 () Bool)

(assert (=> b!3451442 m!3849123))

(declare-fun m!3849125 () Bool)

(assert (=> b!3451442 m!3849125))

(declare-fun m!3849127 () Bool)

(assert (=> b!3451444 m!3849127))

(declare-fun m!3849129 () Bool)

(assert (=> b!3451444 m!3849129))

(declare-fun m!3849131 () Bool)

(assert (=> b!3451445 m!3849131))

(declare-fun m!3849133 () Bool)

(assert (=> b!3451445 m!3849133))

(declare-fun m!3849135 () Bool)

(assert (=> b!3451448 m!3849135))

(declare-fun m!3849137 () Bool)

(assert (=> b!3451448 m!3849137))

(declare-fun m!3849139 () Bool)

(assert (=> b!3451448 m!3849139))

(declare-fun m!3849141 () Bool)

(assert (=> b!3451448 m!3849141))

(assert (=> b!3451448 m!3849123))

(declare-fun m!3849143 () Bool)

(assert (=> b!3451448 m!3849143))

(declare-fun m!3849145 () Bool)

(assert (=> b!3451448 m!3849145))

(declare-fun m!3849147 () Bool)

(assert (=> b!3451448 m!3849147))

(declare-fun m!3849149 () Bool)

(assert (=> b!3451448 m!3849149))

(declare-fun m!3849151 () Bool)

(assert (=> b!3451448 m!3849151))

(declare-fun m!3849155 () Bool)

(assert (=> b!3451448 m!3849155))

(declare-fun m!3849159 () Bool)

(assert (=> b!3451448 m!3849159))

(assert (=> b!3451448 m!3849147))

(declare-fun m!3849161 () Bool)

(assert (=> b!3451448 m!3849161))

(declare-fun m!3849165 () Bool)

(assert (=> b!3451448 m!3849165))

(declare-fun m!3849167 () Bool)

(assert (=> b!3451448 m!3849167))

(declare-fun m!3849169 () Bool)

(assert (=> b!3451448 m!3849169))

(declare-fun m!3849171 () Bool)

(assert (=> b!3451448 m!3849171))

(assert (=> b!3451448 m!3849165))

(declare-fun m!3849173 () Bool)

(assert (=> b!3451448 m!3849173))

(assert (=> b!3451448 m!3849139))

(assert (=> b!3451448 m!3849159))

(declare-fun m!3849175 () Bool)

(assert (=> b!3451448 m!3849175))

(assert (=> b!3451448 m!3849167))

(declare-fun m!3849177 () Bool)

(assert (=> b!3451448 m!3849177))

(declare-fun m!3849179 () Bool)

(assert (=> b!3451448 m!3849179))

(assert (=> b!3451448 m!3849159))

(assert (=> b!3451448 m!3847267))

(assert (=> b!3451448 m!3849175))

(declare-fun m!3849181 () Bool)

(assert (=> b!3451448 m!3849181))

(declare-fun m!3849183 () Bool)

(assert (=> b!3451448 m!3849183))

(declare-fun m!3849185 () Bool)

(assert (=> b!3451448 m!3849185))

(declare-fun m!3849187 () Bool)

(assert (=> b!3451448 m!3849187))

(assert (=> b!3451448 m!3849167))

(declare-fun m!3849189 () Bool)

(assert (=> b!3451448 m!3849189))

(declare-fun m!3849191 () Bool)

(assert (=> b!3451448 m!3849191))

(declare-fun m!3849193 () Bool)

(assert (=> b!3451448 m!3849193))

(assert (=> b!3451448 m!3849185))

(declare-fun m!3849195 () Bool)

(assert (=> b!3451448 m!3849195))

(assert (=> b!3451448 m!3849135))

(declare-fun m!3849197 () Bool)

(assert (=> b!3451448 m!3849197))

(declare-fun m!3849199 () Bool)

(assert (=> b!3451448 m!3849199))

(assert (=> b!3451448 m!3849177))

(assert (=> b!3451448 m!3849191))

(assert (=> b!3451448 m!3847267))

(assert (=> b!3451448 m!3849183))

(declare-fun m!3849201 () Bool)

(assert (=> b!3451448 m!3849201))

(declare-fun m!3849203 () Bool)

(assert (=> d!992505 m!3849203))

(declare-fun m!3849205 () Bool)

(assert (=> d!992505 m!3849205))

(assert (=> d!992505 m!3847267))

(declare-fun m!3849207 () Bool)

(assert (=> d!992505 m!3849207))

(assert (=> d!992505 m!3849123))

(declare-fun m!3849209 () Bool)

(assert (=> d!992505 m!3849209))

(assert (=> d!992505 m!3847181))

(declare-fun m!3849211 () Bool)

(assert (=> d!992505 m!3849211))

(assert (=> d!992505 m!3849211))

(declare-fun m!3849213 () Bool)

(assert (=> d!992505 m!3849213))

(assert (=> d!991919 d!992505))

(declare-fun d!992611 () Bool)

(declare-fun c!590852 () Bool)

(assert (=> d!992611 (= c!590852 ((_ is Nil!37079) lt!1170945))))

(declare-fun e!2137932 () (InoxSet C!20544))

(assert (=> d!992611 (= (content!5161 lt!1170945) e!2137932)))

(declare-fun b!3451452 () Bool)

(assert (=> b!3451452 (= e!2137932 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451453 () Bool)

(assert (=> b!3451453 (= e!2137932 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170945) true) (content!5161 (t!271612 lt!1170945))))))

(assert (= (and d!992611 c!590852) b!3451452))

(assert (= (and d!992611 (not c!590852)) b!3451453))

(declare-fun m!3849215 () Bool)

(assert (=> b!3451453 m!3849215))

(assert (=> b!3451453 m!3848665))

(assert (=> d!991957 d!992611))

(declare-fun b!3451457 () Bool)

(declare-fun e!2137934 () List!37203)

(assert (=> b!3451457 (= e!2137934 (++!9125 (list!13487 (left!28915 (c!590467 lt!1170941))) (list!13487 (right!29245 (c!590467 lt!1170941)))))))

(declare-fun b!3451455 () Bool)

(declare-fun e!2137933 () List!37203)

(assert (=> b!3451455 (= e!2137933 e!2137934)))

(declare-fun c!590854 () Bool)

(assert (=> b!3451455 (= c!590854 ((_ is Leaf!17536) (c!590467 lt!1170941)))))

(declare-fun d!992613 () Bool)

(declare-fun c!590853 () Bool)

(assert (=> d!992613 (= c!590853 ((_ is Empty!11215) (c!590467 lt!1170941)))))

(assert (=> d!992613 (= (list!13487 (c!590467 lt!1170941)) e!2137933)))

(declare-fun b!3451454 () Bool)

(assert (=> b!3451454 (= e!2137933 Nil!37079)))

(declare-fun b!3451456 () Bool)

(assert (=> b!3451456 (= e!2137934 (list!13490 (xs!14389 (c!590467 lt!1170941))))))

(assert (= (and d!992613 c!590853) b!3451454))

(assert (= (and d!992613 (not c!590853)) b!3451455))

(assert (= (and b!3451455 c!590854) b!3451456))

(assert (= (and b!3451455 (not c!590854)) b!3451457))

(declare-fun m!3849217 () Bool)

(assert (=> b!3451457 m!3849217))

(declare-fun m!3849219 () Bool)

(assert (=> b!3451457 m!3849219))

(assert (=> b!3451457 m!3849217))

(assert (=> b!3451457 m!3849219))

(declare-fun m!3849221 () Bool)

(assert (=> b!3451457 m!3849221))

(declare-fun m!3849223 () Bool)

(assert (=> b!3451456 m!3849223))

(assert (=> d!991945 d!992613))

(declare-fun d!992615 () Bool)

(assert (=> d!992615 (= (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))) (v!36758 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> b!3450615 d!992615))

(assert (=> b!3450615 d!992093))

(declare-fun d!992617 () Bool)

(assert (=> d!992617 (= (isEmpty!21402 (tail!5411 lt!1170951)) ((_ is Nil!37079) (tail!5411 lt!1170951)))))

(assert (=> b!3450079 d!992617))

(declare-fun d!992619 () Bool)

(assert (=> d!992619 (= (tail!5411 lt!1170951) (t!271612 lt!1170951))))

(assert (=> b!3450079 d!992619))

(declare-fun d!992621 () Bool)

(declare-fun lt!1171625 () Int)

(assert (=> d!992621 (>= lt!1171625 0)))

(declare-fun e!2137935 () Int)

(assert (=> d!992621 (= lt!1171625 e!2137935)))

(declare-fun c!590855 () Bool)

(assert (=> d!992621 (= c!590855 ((_ is Nil!37079) lt!1170989))))

(assert (=> d!992621 (= (size!28101 lt!1170989) lt!1171625)))

(declare-fun b!3451458 () Bool)

(assert (=> b!3451458 (= e!2137935 0)))

(declare-fun b!3451459 () Bool)

(assert (=> b!3451459 (= e!2137935 (+ 1 (size!28101 (t!271612 lt!1170989))))))

(assert (= (and d!992621 c!590855) b!3451458))

(assert (= (and d!992621 (not c!590855)) b!3451459))

(declare-fun m!3849225 () Bool)

(assert (=> b!3451459 m!3849225))

(assert (=> b!3450150 d!992621))

(assert (=> b!3450150 d!992047))

(declare-fun d!992623 () Bool)

(declare-fun lt!1171626 () Int)

(assert (=> d!992623 (>= lt!1171626 0)))

(declare-fun e!2137936 () Int)

(assert (=> d!992623 (= lt!1171626 e!2137936)))

(declare-fun c!590856 () Bool)

(assert (=> d!992623 (= c!590856 ((_ is Nil!37079) lt!1170945))))

(assert (=> d!992623 (= (size!28101 lt!1170945) lt!1171626)))

(declare-fun b!3451460 () Bool)

(assert (=> b!3451460 (= e!2137936 0)))

(declare-fun b!3451461 () Bool)

(assert (=> b!3451461 (= e!2137936 (+ 1 (size!28101 (t!271612 lt!1170945))))))

(assert (= (and d!992623 c!590856) b!3451460))

(assert (= (and d!992623 (not c!590856)) b!3451461))

(assert (=> b!3451461 m!3848661))

(assert (=> b!3450150 d!992623))

(declare-fun d!992625 () Bool)

(assert (=> d!992625 (dynLambda!15569 lambda!121525 (h!42500 tokens!494))))

(assert (=> d!992625 true))

(declare-fun _$7!1288 () Unit!52398)

(assert (=> d!992625 (= (choose!19922 tokens!494 lambda!121525 (h!42500 tokens!494)) _$7!1288)))

(declare-fun b_lambda!99083 () Bool)

(assert (=> (not b_lambda!99083) (not d!992625)))

(declare-fun bs!559831 () Bool)

(assert (= bs!559831 d!992625))

(assert (=> bs!559831 m!3847159))

(assert (=> d!991915 d!992625))

(assert (=> d!991915 d!992035))

(declare-fun d!992627 () Bool)

(assert (=> d!992627 true))

(declare-fun lambda!121554 () Int)

(declare-fun order!19691 () Int)

(declare-fun dynLambda!15577 (Int Int) Int)

(assert (=> d!992627 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (dynLambda!15577 order!19691 lambda!121554))))

(declare-fun Forall2!932 (Int) Bool)

(assert (=> d!992627 (= (equivClasses!2172 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (Forall2!932 lambda!121554))))

(declare-fun bs!559832 () Bool)

(assert (= bs!559832 d!992627))

(declare-fun m!3849227 () Bool)

(assert (=> bs!559832 m!3849227))

(assert (=> b!3450120 d!992627))

(assert (=> d!992039 d!991909))

(assert (=> d!992039 d!991931))

(assert (=> d!992039 d!991911))

(declare-fun d!992629 () Bool)

(assert (=> d!992629 (= (++!9125 (++!9125 lt!1170951 lt!1170945) lt!1170933) (++!9125 lt!1170951 (++!9125 lt!1170945 lt!1170933)))))

(assert (=> d!992629 true))

(declare-fun _$52!1868 () Unit!52398)

(assert (=> d!992629 (= (choose!19923 lt!1170951 lt!1170945 lt!1170933) _$52!1868)))

(declare-fun bs!559833 () Bool)

(assert (= bs!559833 d!992629))

(assert (=> bs!559833 m!3846869))

(assert (=> bs!559833 m!3846869))

(assert (=> bs!559833 m!3846871))

(assert (=> bs!559833 m!3846879))

(assert (=> bs!559833 m!3846879))

(assert (=> bs!559833 m!3847577))

(assert (=> d!992039 d!992629))

(declare-fun b!3451468 () Bool)

(declare-fun res!1391852 () Bool)

(declare-fun e!2137940 () Bool)

(assert (=> b!3451468 (=> (not res!1391852) (not e!2137940))))

(declare-fun lt!1171627 () List!37203)

(assert (=> b!3451468 (= res!1391852 (= (size!28101 lt!1171627) (+ (size!28101 lt!1170951) (size!28101 (++!9125 lt!1170945 lt!1170933)))))))

(declare-fun b!3451469 () Bool)

(assert (=> b!3451469 (= e!2137940 (or (not (= (++!9125 lt!1170945 lt!1170933) Nil!37079)) (= lt!1171627 lt!1170951)))))

(declare-fun d!992631 () Bool)

(assert (=> d!992631 e!2137940))

(declare-fun res!1391853 () Bool)

(assert (=> d!992631 (=> (not res!1391853) (not e!2137940))))

(assert (=> d!992631 (= res!1391853 (= (content!5161 lt!1171627) ((_ map or) (content!5161 lt!1170951) (content!5161 (++!9125 lt!1170945 lt!1170933)))))))

(declare-fun e!2137939 () List!37203)

(assert (=> d!992631 (= lt!1171627 e!2137939)))

(declare-fun c!590857 () Bool)

(assert (=> d!992631 (= c!590857 ((_ is Nil!37079) lt!1170951))))

(assert (=> d!992631 (= (++!9125 lt!1170951 (++!9125 lt!1170945 lt!1170933)) lt!1171627)))

(declare-fun b!3451466 () Bool)

(assert (=> b!3451466 (= e!2137939 (++!9125 lt!1170945 lt!1170933))))

(declare-fun b!3451467 () Bool)

(assert (=> b!3451467 (= e!2137939 (Cons!37079 (h!42499 lt!1170951) (++!9125 (t!271612 lt!1170951) (++!9125 lt!1170945 lt!1170933))))))

(assert (= (and d!992631 c!590857) b!3451466))

(assert (= (and d!992631 (not c!590857)) b!3451467))

(assert (= (and d!992631 res!1391853) b!3451468))

(assert (= (and b!3451468 res!1391852) b!3451469))

(declare-fun m!3849229 () Bool)

(assert (=> b!3451468 m!3849229))

(assert (=> b!3451468 m!3846815))

(assert (=> b!3451468 m!3846879))

(declare-fun m!3849231 () Bool)

(assert (=> b!3451468 m!3849231))

(declare-fun m!3849233 () Bool)

(assert (=> d!992631 m!3849233))

(assert (=> d!992631 m!3847147))

(assert (=> d!992631 m!3846879))

(declare-fun m!3849235 () Bool)

(assert (=> d!992631 m!3849235))

(assert (=> b!3451467 m!3846879))

(declare-fun m!3849237 () Bool)

(assert (=> b!3451467 m!3849237))

(assert (=> d!992039 d!992631))

(declare-fun d!992633 () Bool)

(declare-fun lt!1171630 () Bool)

(assert (=> d!992633 (= lt!1171630 (isEmpty!21402 (list!13483 (_2!21515 lt!1170984))))))

(declare-fun isEmpty!21409 (Conc!11215) Bool)

(assert (=> d!992633 (= lt!1171630 (isEmpty!21409 (c!590467 (_2!21515 lt!1170984))))))

(assert (=> d!992633 (= (isEmpty!21403 (_2!21515 lt!1170984)) lt!1171630)))

(declare-fun bs!559834 () Bool)

(assert (= bs!559834 d!992633))

(declare-fun m!3849239 () Bool)

(assert (=> bs!559834 m!3849239))

(assert (=> bs!559834 m!3849239))

(declare-fun m!3849241 () Bool)

(assert (=> bs!559834 m!3849241))

(declare-fun m!3849243 () Bool)

(assert (=> bs!559834 m!3849243))

(assert (=> b!3450116 d!992633))

(declare-fun d!992635 () Bool)

(declare-fun c!590860 () Bool)

(assert (=> d!992635 (= c!590860 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun e!2137945 () Bool)

(assert (=> d!992635 (= (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))) e!2137945)))

(declare-fun b!3451476 () Bool)

(declare-fun inv!50246 (Conc!11215) Bool)

(assert (=> b!3451476 (= e!2137945 (inv!50246 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun b!3451477 () Bool)

(declare-fun e!2137946 () Bool)

(assert (=> b!3451477 (= e!2137945 e!2137946)))

(declare-fun res!1391856 () Bool)

(assert (=> b!3451477 (= res!1391856 (not ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))))))

(assert (=> b!3451477 (=> res!1391856 e!2137946)))

(declare-fun b!3451478 () Bool)

(declare-fun inv!50247 (Conc!11215) Bool)

(assert (=> b!3451478 (= e!2137946 (inv!50247 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))))

(assert (= (and d!992635 c!590860) b!3451476))

(assert (= (and d!992635 (not c!590860)) b!3451477))

(assert (= (and b!3451477 (not res!1391856)) b!3451478))

(declare-fun m!3849245 () Bool)

(assert (=> b!3451476 m!3849245))

(declare-fun m!3849247 () Bool)

(assert (=> b!3451478 m!3849247))

(assert (=> b!3450198 d!992635))

(declare-fun d!992637 () Bool)

(declare-fun c!590864 () Bool)

(assert (=> d!992637 (= c!590864 (or ((_ is EmptyExpr!10179) (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) ((_ is EmptyLang!10179) (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun e!2137950 () List!37203)

(assert (=> d!992637 (= (usedCharacters!654 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) e!2137950)))

(declare-fun b!3451479 () Bool)

(declare-fun e!2137947 () List!37203)

(assert (=> b!3451479 (= e!2137947 (Cons!37079 (c!590466 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) Nil!37079))))

(declare-fun call!249107 () List!37203)

(declare-fun c!590863 () Bool)

(declare-fun bm!249100 () Bool)

(assert (=> bm!249100 (= call!249107 (usedCharacters!654 (ite c!590863 (regOne!20871 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) (regTwo!20870 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))

(declare-fun c!590861 () Bool)

(declare-fun call!249106 () List!37203)

(declare-fun bm!249101 () Bool)

(assert (=> bm!249101 (= call!249106 (usedCharacters!654 (ite c!590861 (reg!10508 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) (ite c!590863 (regTwo!20871 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) (regOne!20870 (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))))

(declare-fun b!3451480 () Bool)

(assert (=> b!3451480 (= e!2137950 Nil!37079)))

(declare-fun b!3451481 () Bool)

(assert (=> b!3451481 (= e!2137950 e!2137947)))

(declare-fun c!590862 () Bool)

(assert (=> b!3451481 (= c!590862 ((_ is ElementMatch!10179) (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(declare-fun b!3451482 () Bool)

(declare-fun e!2137949 () List!37203)

(assert (=> b!3451482 (= e!2137949 call!249106)))

(declare-fun call!249108 () List!37203)

(declare-fun bm!249102 () Bool)

(declare-fun call!249105 () List!37203)

(assert (=> bm!249102 (= call!249105 (++!9125 (ite c!590863 call!249107 call!249108) (ite c!590863 call!249108 call!249107)))))

(declare-fun b!3451483 () Bool)

(declare-fun e!2137948 () List!37203)

(assert (=> b!3451483 (= e!2137948 call!249105)))

(declare-fun bm!249103 () Bool)

(assert (=> bm!249103 (= call!249108 call!249106)))

(declare-fun b!3451484 () Bool)

(assert (=> b!3451484 (= e!2137948 call!249105)))

(declare-fun b!3451485 () Bool)

(assert (=> b!3451485 (= c!590861 ((_ is Star!10179) (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(assert (=> b!3451485 (= e!2137947 e!2137949)))

(declare-fun b!3451486 () Bool)

(assert (=> b!3451486 (= e!2137949 e!2137948)))

(assert (=> b!3451486 (= c!590863 ((_ is Union!10179) (ite c!590598 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(assert (= (and d!992637 c!590864) b!3451480))

(assert (= (and d!992637 (not c!590864)) b!3451481))

(assert (= (and b!3451481 c!590862) b!3451479))

(assert (= (and b!3451481 (not c!590862)) b!3451485))

(assert (= (and b!3451485 c!590861) b!3451482))

(assert (= (and b!3451485 (not c!590861)) b!3451486))

(assert (= (and b!3451486 c!590863) b!3451484))

(assert (= (and b!3451486 (not c!590863)) b!3451483))

(assert (= (or b!3451484 b!3451483) bm!249103))

(assert (= (or b!3451484 b!3451483) bm!249100))

(assert (= (or b!3451484 b!3451483) bm!249102))

(assert (= (or b!3451482 bm!249103) bm!249101))

(declare-fun m!3849249 () Bool)

(assert (=> bm!249100 m!3849249))

(declare-fun m!3849251 () Bool)

(assert (=> bm!249101 m!3849251))

(declare-fun m!3849253 () Bool)

(assert (=> bm!249102 m!3849253))

(assert (=> bm!249033 d!992637))

(declare-fun b!3451490 () Bool)

(declare-fun e!2137952 () List!37203)

(assert (=> b!3451490 (= e!2137952 (++!9125 (list!13487 (left!28915 (c!590467 (charsOf!3434 (h!42500 tokens!494))))) (list!13487 (right!29245 (c!590467 (charsOf!3434 (h!42500 tokens!494)))))))))

(declare-fun b!3451488 () Bool)

(declare-fun e!2137951 () List!37203)

(assert (=> b!3451488 (= e!2137951 e!2137952)))

(declare-fun c!590866 () Bool)

(assert (=> b!3451488 (= c!590866 ((_ is Leaf!17536) (c!590467 (charsOf!3434 (h!42500 tokens!494)))))))

(declare-fun d!992639 () Bool)

(declare-fun c!590865 () Bool)

(assert (=> d!992639 (= c!590865 ((_ is Empty!11215) (c!590467 (charsOf!3434 (h!42500 tokens!494)))))))

(assert (=> d!992639 (= (list!13487 (c!590467 (charsOf!3434 (h!42500 tokens!494)))) e!2137951)))

(declare-fun b!3451487 () Bool)

(assert (=> b!3451487 (= e!2137951 Nil!37079)))

(declare-fun b!3451489 () Bool)

(assert (=> b!3451489 (= e!2137952 (list!13490 (xs!14389 (c!590467 (charsOf!3434 (h!42500 tokens!494))))))))

(assert (= (and d!992639 c!590865) b!3451487))

(assert (= (and d!992639 (not c!590865)) b!3451488))

(assert (= (and b!3451488 c!590866) b!3451489))

(assert (= (and b!3451488 (not c!590866)) b!3451490))

(declare-fun m!3849255 () Bool)

(assert (=> b!3451490 m!3849255))

(declare-fun m!3849257 () Bool)

(assert (=> b!3451490 m!3849257))

(assert (=> b!3451490 m!3849255))

(assert (=> b!3451490 m!3849257))

(declare-fun m!3849259 () Bool)

(assert (=> b!3451490 m!3849259))

(declare-fun m!3849261 () Bool)

(assert (=> b!3451489 m!3849261))

(assert (=> d!992027 d!992639))

(declare-fun d!992641 () Bool)

(assert (=> d!992641 (= (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))) (not (isEmpty!21406 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))

(declare-fun bs!559835 () Bool)

(assert (= bs!559835 d!992641))

(assert (=> bs!559835 m!3846807))

(declare-fun m!3849263 () Bool)

(assert (=> bs!559835 m!3849263))

(assert (=> d!992065 d!992641))

(assert (=> d!992065 d!992055))

(declare-fun d!992643 () Bool)

(declare-fun e!2137955 () Bool)

(assert (=> d!992643 e!2137955))

(declare-fun res!1391861 () Bool)

(assert (=> d!992643 (=> (not res!1391861) (not e!2137955))))

(assert (=> d!992643 (= res!1391861 (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))

(assert (=> d!992643 true))

(declare-fun _$52!1871 () Unit!52398)

(assert (=> d!992643 (= (choose!19924 thiss!18206 rules!2135 lt!1170945 separatorToken!241) _$52!1871)))

(declare-fun b!3451495 () Bool)

(declare-fun res!1391862 () Bool)

(assert (=> b!3451495 (=> (not res!1391862) (not e!2137955))))

(assert (=> b!3451495 (= res!1391862 (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))) (list!13483 (charsOf!3434 separatorToken!241))))))

(declare-fun b!3451496 () Bool)

(assert (=> b!3451496 (= e!2137955 (= (rule!8000 separatorToken!241) (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))

(assert (= (and d!992643 res!1391861) b!3451495))

(assert (= (and b!3451495 res!1391862) b!3451496))

(assert (=> d!992643 m!3846807))

(assert (=> d!992643 m!3846807))

(assert (=> d!992643 m!3847653))

(assert (=> b!3451495 m!3846895))

(assert (=> b!3451495 m!3847657))

(assert (=> b!3451495 m!3846807))

(assert (=> b!3451495 m!3846807))

(assert (=> b!3451495 m!3847659))

(assert (=> b!3451495 m!3846893))

(assert (=> b!3451495 m!3846895))

(assert (=> b!3451495 m!3846893))

(assert (=> b!3451496 m!3846807))

(assert (=> b!3451496 m!3846807))

(assert (=> b!3451496 m!3847659))

(assert (=> d!992065 d!992643))

(assert (=> d!992065 d!991881))

(declare-fun call!249111 () Bool)

(declare-fun bm!249104 () Bool)

(declare-fun c!590867 () Bool)

(assert (=> bm!249104 (= call!249111 (validRegex!4634 (ite c!590867 (regOne!20871 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) (regOne!20870 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))

(declare-fun d!992645 () Bool)

(declare-fun res!1391867 () Bool)

(declare-fun e!2137958 () Bool)

(assert (=> d!992645 (=> res!1391867 e!2137958)))

(assert (=> d!992645 (= res!1391867 ((_ is ElementMatch!10179) (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(assert (=> d!992645 (= (validRegex!4634 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) e!2137958)))

(declare-fun b!3451497 () Bool)

(declare-fun res!1391865 () Bool)

(declare-fun e!2137960 () Bool)

(assert (=> b!3451497 (=> res!1391865 e!2137960)))

(assert (=> b!3451497 (= res!1391865 (not ((_ is Concat!15829) (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun e!2137959 () Bool)

(assert (=> b!3451497 (= e!2137959 e!2137960)))

(declare-fun bm!249105 () Bool)

(declare-fun call!249110 () Bool)

(declare-fun c!590868 () Bool)

(assert (=> bm!249105 (= call!249110 (validRegex!4634 (ite c!590868 (reg!10508 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) (ite c!590867 (regTwo!20871 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) (regTwo!20870 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))))

(declare-fun b!3451498 () Bool)

(declare-fun e!2137957 () Bool)

(declare-fun call!249109 () Bool)

(assert (=> b!3451498 (= e!2137957 call!249109)))

(declare-fun b!3451499 () Bool)

(declare-fun res!1391864 () Bool)

(declare-fun e!2137962 () Bool)

(assert (=> b!3451499 (=> (not res!1391864) (not e!2137962))))

(assert (=> b!3451499 (= res!1391864 call!249111)))

(assert (=> b!3451499 (= e!2137959 e!2137962)))

(declare-fun b!3451500 () Bool)

(assert (=> b!3451500 (= e!2137962 call!249109)))

(declare-fun bm!249106 () Bool)

(assert (=> bm!249106 (= call!249109 call!249110)))

(declare-fun b!3451501 () Bool)

(declare-fun e!2137961 () Bool)

(declare-fun e!2137956 () Bool)

(assert (=> b!3451501 (= e!2137961 e!2137956)))

(declare-fun res!1391866 () Bool)

(assert (=> b!3451501 (= res!1391866 (not (nullable!3478 (reg!10508 (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))

(assert (=> b!3451501 (=> (not res!1391866) (not e!2137956))))

(declare-fun b!3451502 () Bool)

(assert (=> b!3451502 (= e!2137958 e!2137961)))

(assert (=> b!3451502 (= c!590868 ((_ is Star!10179) (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(declare-fun b!3451503 () Bool)

(assert (=> b!3451503 (= e!2137961 e!2137959)))

(assert (=> b!3451503 (= c!590867 ((_ is Union!10179) (ite c!590615 (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))

(declare-fun b!3451504 () Bool)

(assert (=> b!3451504 (= e!2137960 e!2137957)))

(declare-fun res!1391863 () Bool)

(assert (=> b!3451504 (=> (not res!1391863) (not e!2137957))))

(assert (=> b!3451504 (= res!1391863 call!249111)))

(declare-fun b!3451505 () Bool)

(assert (=> b!3451505 (= e!2137956 call!249110)))

(assert (= (and d!992645 (not res!1391867)) b!3451502))

(assert (= (and b!3451502 c!590868) b!3451501))

(assert (= (and b!3451502 (not c!590868)) b!3451503))

(assert (= (and b!3451501 res!1391866) b!3451505))

(assert (= (and b!3451503 c!590867) b!3451499))

(assert (= (and b!3451503 (not c!590867)) b!3451497))

(assert (= (and b!3451499 res!1391864) b!3451500))

(assert (= (and b!3451497 (not res!1391865)) b!3451504))

(assert (= (and b!3451504 res!1391863) b!3451498))

(assert (= (or b!3451500 b!3451498) bm!249106))

(assert (= (or b!3451499 b!3451504) bm!249104))

(assert (= (or b!3451505 bm!249106) bm!249105))

(declare-fun m!3849265 () Bool)

(assert (=> bm!249104 m!3849265))

(declare-fun m!3849267 () Bool)

(assert (=> bm!249105 m!3849267))

(declare-fun m!3849269 () Bool)

(assert (=> b!3451501 m!3849269))

(assert (=> bm!249043 d!992645))

(declare-fun b!3451506 () Bool)

(declare-fun e!2137964 () Bool)

(declare-fun lt!1171631 () Bool)

(declare-fun call!249112 () Bool)

(assert (=> b!3451506 (= e!2137964 (= lt!1171631 call!249112))))

(declare-fun b!3451507 () Bool)

(declare-fun res!1391870 () Bool)

(declare-fun e!2137965 () Bool)

(assert (=> b!3451507 (=> (not res!1391870) (not e!2137965))))

(assert (=> b!3451507 (= res!1391870 (isEmpty!21402 (tail!5411 (tail!5411 lt!1170945))))))

(declare-fun b!3451508 () Bool)

(declare-fun e!2137969 () Bool)

(assert (=> b!3451508 (= e!2137969 (matchR!4763 (derivativeStep!3031 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)) (head!7289 (tail!5411 lt!1170945))) (tail!5411 (tail!5411 lt!1170945))))))

(declare-fun b!3451509 () Bool)

(assert (=> b!3451509 (= e!2137965 (= (head!7289 (tail!5411 lt!1170945)) (c!590466 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)))))))

(declare-fun b!3451511 () Bool)

(declare-fun res!1391869 () Bool)

(declare-fun e!2137967 () Bool)

(assert (=> b!3451511 (=> res!1391869 e!2137967)))

(assert (=> b!3451511 (= res!1391869 e!2137965)))

(declare-fun res!1391868 () Bool)

(assert (=> b!3451511 (=> (not res!1391868) (not e!2137965))))

(assert (=> b!3451511 (= res!1391868 lt!1171631)))

(declare-fun b!3451512 () Bool)

(assert (=> b!3451512 (= e!2137969 (nullable!3478 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945))))))

(declare-fun b!3451513 () Bool)

(declare-fun res!1391871 () Bool)

(assert (=> b!3451513 (=> (not res!1391871) (not e!2137965))))

(assert (=> b!3451513 (= res!1391871 (not call!249112))))

(declare-fun b!3451514 () Bool)

(declare-fun e!2137963 () Bool)

(assert (=> b!3451514 (= e!2137964 e!2137963)))

(declare-fun c!590870 () Bool)

(assert (=> b!3451514 (= c!590870 ((_ is EmptyLang!10179) (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945))))))

(declare-fun b!3451515 () Bool)

(declare-fun res!1391875 () Bool)

(assert (=> b!3451515 (=> res!1391875 e!2137967)))

(assert (=> b!3451515 (= res!1391875 (not ((_ is ElementMatch!10179) (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)))))))

(assert (=> b!3451515 (= e!2137963 e!2137967)))

(declare-fun d!992647 () Bool)

(assert (=> d!992647 e!2137964))

(declare-fun c!590871 () Bool)

(assert (=> d!992647 (= c!590871 ((_ is EmptyExpr!10179) (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945))))))

(assert (=> d!992647 (= lt!1171631 e!2137969)))

(declare-fun c!590869 () Bool)

(assert (=> d!992647 (= c!590869 (isEmpty!21402 (tail!5411 lt!1170945)))))

(assert (=> d!992647 (validRegex!4634 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)))))

(assert (=> d!992647 (= (matchR!4763 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)) (tail!5411 lt!1170945)) lt!1171631)))

(declare-fun b!3451510 () Bool)

(declare-fun e!2137968 () Bool)

(assert (=> b!3451510 (= e!2137968 (not (= (head!7289 (tail!5411 lt!1170945)) (c!590466 (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945))))))))

(declare-fun b!3451516 () Bool)

(assert (=> b!3451516 (= e!2137963 (not lt!1171631))))

(declare-fun bm!249107 () Bool)

(assert (=> bm!249107 (= call!249112 (isEmpty!21402 (tail!5411 lt!1170945)))))

(declare-fun b!3451517 () Bool)

(declare-fun res!1391874 () Bool)

(assert (=> b!3451517 (=> res!1391874 e!2137968)))

(assert (=> b!3451517 (= res!1391874 (not (isEmpty!21402 (tail!5411 (tail!5411 lt!1170945)))))))

(declare-fun b!3451518 () Bool)

(declare-fun e!2137966 () Bool)

(assert (=> b!3451518 (= e!2137966 e!2137968)))

(declare-fun res!1391872 () Bool)

(assert (=> b!3451518 (=> res!1391872 e!2137968)))

(assert (=> b!3451518 (= res!1391872 call!249112)))

(declare-fun b!3451519 () Bool)

(assert (=> b!3451519 (= e!2137967 e!2137966)))

(declare-fun res!1391873 () Bool)

(assert (=> b!3451519 (=> (not res!1391873) (not e!2137966))))

(assert (=> b!3451519 (= res!1391873 (not lt!1171631))))

(assert (= (and d!992647 c!590869) b!3451512))

(assert (= (and d!992647 (not c!590869)) b!3451508))

(assert (= (and d!992647 c!590871) b!3451506))

(assert (= (and d!992647 (not c!590871)) b!3451514))

(assert (= (and b!3451514 c!590870) b!3451516))

(assert (= (and b!3451514 (not c!590870)) b!3451515))

(assert (= (and b!3451515 (not res!1391875)) b!3451511))

(assert (= (and b!3451511 res!1391868) b!3451513))

(assert (= (and b!3451513 res!1391871) b!3451507))

(assert (= (and b!3451507 res!1391870) b!3451509))

(assert (= (and b!3451511 (not res!1391869)) b!3451519))

(assert (= (and b!3451519 res!1391873) b!3451518))

(assert (= (and b!3451518 (not res!1391872)) b!3451517))

(assert (= (and b!3451517 (not res!1391874)) b!3451510))

(assert (= (or b!3451506 b!3451513 b!3451518) bm!249107))

(assert (=> b!3451509 m!3847583))

(declare-fun m!3849271 () Bool)

(assert (=> b!3451509 m!3849271))

(assert (=> bm!249107 m!3847583))

(assert (=> bm!249107 m!3847585))

(assert (=> b!3451517 m!3847583))

(declare-fun m!3849273 () Bool)

(assert (=> b!3451517 m!3849273))

(assert (=> b!3451517 m!3849273))

(declare-fun m!3849275 () Bool)

(assert (=> b!3451517 m!3849275))

(assert (=> d!992647 m!3847583))

(assert (=> d!992647 m!3847585))

(assert (=> d!992647 m!3847591))

(declare-fun m!3849277 () Bool)

(assert (=> d!992647 m!3849277))

(assert (=> b!3451510 m!3847583))

(assert (=> b!3451510 m!3849271))

(assert (=> b!3451512 m!3847591))

(declare-fun m!3849279 () Bool)

(assert (=> b!3451512 m!3849279))

(assert (=> b!3451507 m!3847583))

(assert (=> b!3451507 m!3849273))

(assert (=> b!3451507 m!3849273))

(assert (=> b!3451507 m!3849275))

(assert (=> b!3451508 m!3847583))

(assert (=> b!3451508 m!3849271))

(assert (=> b!3451508 m!3847591))

(assert (=> b!3451508 m!3849271))

(declare-fun m!3849281 () Bool)

(assert (=> b!3451508 m!3849281))

(assert (=> b!3451508 m!3847583))

(assert (=> b!3451508 m!3849273))

(assert (=> b!3451508 m!3849281))

(assert (=> b!3451508 m!3849273))

(declare-fun m!3849283 () Bool)

(assert (=> b!3451508 m!3849283))

(assert (=> b!3450423 d!992647))

(declare-fun bm!249116 () Bool)

(declare-fun c!590884 () Bool)

(declare-fun call!249122 () Regex!10179)

(assert (=> bm!249116 (= call!249122 (derivativeStep!3031 (ite c!590884 (regOne!20871 (regex!5420 lt!1170938)) (regTwo!20870 (regex!5420 lt!1170938))) (head!7289 lt!1170945)))))

(declare-fun bm!249117 () Bool)

(declare-fun call!249124 () Regex!10179)

(declare-fun call!249121 () Regex!10179)

(assert (=> bm!249117 (= call!249124 call!249121)))

(declare-fun b!3451540 () Bool)

(declare-fun e!2137984 () Regex!10179)

(assert (=> b!3451540 (= e!2137984 (ite (= (head!7289 lt!1170945) (c!590466 (regex!5420 lt!1170938))) EmptyExpr!10179 EmptyLang!10179))))

(declare-fun b!3451541 () Bool)

(declare-fun e!2137981 () Regex!10179)

(assert (=> b!3451541 (= e!2137981 (Union!10179 (Concat!15829 call!249124 (regTwo!20870 (regex!5420 lt!1170938))) call!249122))))

(declare-fun b!3451542 () Bool)

(declare-fun e!2137982 () Regex!10179)

(assert (=> b!3451542 (= e!2137982 EmptyLang!10179)))

(declare-fun b!3451543 () Bool)

(declare-fun e!2137980 () Regex!10179)

(assert (=> b!3451543 (= e!2137980 (Concat!15829 call!249121 (regex!5420 lt!1170938)))))

(declare-fun b!3451544 () Bool)

(declare-fun e!2137983 () Regex!10179)

(declare-fun call!249123 () Regex!10179)

(assert (=> b!3451544 (= e!2137983 (Union!10179 call!249122 call!249123))))

(declare-fun b!3451545 () Bool)

(declare-fun c!590885 () Bool)

(assert (=> b!3451545 (= c!590885 (nullable!3478 (regOne!20870 (regex!5420 lt!1170938))))))

(assert (=> b!3451545 (= e!2137980 e!2137981)))

(declare-fun b!3451546 () Bool)

(assert (=> b!3451546 (= c!590884 ((_ is Union!10179) (regex!5420 lt!1170938)))))

(assert (=> b!3451546 (= e!2137984 e!2137983)))

(declare-fun b!3451547 () Bool)

(assert (=> b!3451547 (= e!2137981 (Union!10179 (Concat!15829 call!249124 (regTwo!20870 (regex!5420 lt!1170938))) EmptyLang!10179))))

(declare-fun b!3451548 () Bool)

(assert (=> b!3451548 (= e!2137982 e!2137984)))

(declare-fun c!590886 () Bool)

(assert (=> b!3451548 (= c!590886 ((_ is ElementMatch!10179) (regex!5420 lt!1170938)))))

(declare-fun c!590883 () Bool)

(declare-fun bm!249119 () Bool)

(assert (=> bm!249119 (= call!249123 (derivativeStep!3031 (ite c!590884 (regTwo!20871 (regex!5420 lt!1170938)) (ite c!590883 (reg!10508 (regex!5420 lt!1170938)) (regOne!20870 (regex!5420 lt!1170938)))) (head!7289 lt!1170945)))))

(declare-fun b!3451549 () Bool)

(assert (=> b!3451549 (= e!2137983 e!2137980)))

(assert (=> b!3451549 (= c!590883 ((_ is Star!10179) (regex!5420 lt!1170938)))))

(declare-fun d!992649 () Bool)

(declare-fun lt!1171634 () Regex!10179)

(assert (=> d!992649 (validRegex!4634 lt!1171634)))

(assert (=> d!992649 (= lt!1171634 e!2137982)))

(declare-fun c!590882 () Bool)

(assert (=> d!992649 (= c!590882 (or ((_ is EmptyExpr!10179) (regex!5420 lt!1170938)) ((_ is EmptyLang!10179) (regex!5420 lt!1170938))))))

(assert (=> d!992649 (validRegex!4634 (regex!5420 lt!1170938))))

(assert (=> d!992649 (= (derivativeStep!3031 (regex!5420 lt!1170938) (head!7289 lt!1170945)) lt!1171634)))

(declare-fun bm!249118 () Bool)

(assert (=> bm!249118 (= call!249121 call!249123)))

(assert (= (and d!992649 c!590882) b!3451542))

(assert (= (and d!992649 (not c!590882)) b!3451548))

(assert (= (and b!3451548 c!590886) b!3451540))

(assert (= (and b!3451548 (not c!590886)) b!3451546))

(assert (= (and b!3451546 c!590884) b!3451544))

(assert (= (and b!3451546 (not c!590884)) b!3451549))

(assert (= (and b!3451549 c!590883) b!3451543))

(assert (= (and b!3451549 (not c!590883)) b!3451545))

(assert (= (and b!3451545 c!590885) b!3451541))

(assert (= (and b!3451545 (not c!590885)) b!3451547))

(assert (= (or b!3451541 b!3451547) bm!249117))

(assert (= (or b!3451543 bm!249117) bm!249118))

(assert (= (or b!3451544 b!3451541) bm!249116))

(assert (= (or b!3451544 bm!249118) bm!249119))

(assert (=> bm!249116 m!3846811))

(declare-fun m!3849285 () Bool)

(assert (=> bm!249116 m!3849285))

(declare-fun m!3849287 () Bool)

(assert (=> b!3451545 m!3849287))

(assert (=> bm!249119 m!3846811))

(declare-fun m!3849289 () Bool)

(assert (=> bm!249119 m!3849289))

(declare-fun m!3849291 () Bool)

(assert (=> d!992649 m!3849291))

(assert (=> d!992649 m!3847587))

(assert (=> b!3450423 d!992649))

(assert (=> b!3450423 d!992097))

(declare-fun d!992651 () Bool)

(assert (=> d!992651 (= (tail!5411 lt!1170945) (t!271612 lt!1170945))))

(assert (=> b!3450423 d!992651))

(declare-fun d!992653 () Bool)

(assert (=> d!992653 (= (isEmpty!21402 lt!1170951) ((_ is Nil!37079) lt!1170951))))

(assert (=> bm!249010 d!992653))

(declare-fun d!992655 () Bool)

(declare-fun lt!1171635 () Int)

(assert (=> d!992655 (>= lt!1171635 0)))

(declare-fun e!2137985 () Int)

(assert (=> d!992655 (= lt!1171635 e!2137985)))

(declare-fun c!590887 () Bool)

(assert (=> d!992655 (= c!590887 ((_ is Nil!37079) lt!1171004))))

(assert (=> d!992655 (= (size!28101 lt!1171004) lt!1171635)))

(declare-fun b!3451550 () Bool)

(assert (=> b!3451550 (= e!2137985 0)))

(declare-fun b!3451551 () Bool)

(assert (=> b!3451551 (= e!2137985 (+ 1 (size!28101 (t!271612 lt!1171004))))))

(assert (= (and d!992655 c!590887) b!3451550))

(assert (= (and d!992655 (not c!590887)) b!3451551))

(declare-fun m!3849293 () Bool)

(assert (=> b!3451551 m!3849293))

(assert (=> b!3450188 d!992655))

(assert (=> b!3450188 d!992623))

(declare-fun d!992657 () Bool)

(declare-fun lt!1171636 () Int)

(assert (=> d!992657 (>= lt!1171636 0)))

(declare-fun e!2137986 () Int)

(assert (=> d!992657 (= lt!1171636 e!2137986)))

(declare-fun c!590888 () Bool)

(assert (=> d!992657 (= c!590888 ((_ is Nil!37079) lt!1170933))))

(assert (=> d!992657 (= (size!28101 lt!1170933) lt!1171636)))

(declare-fun b!3451552 () Bool)

(assert (=> b!3451552 (= e!2137986 0)))

(declare-fun b!3451553 () Bool)

(assert (=> b!3451553 (= e!2137986 (+ 1 (size!28101 (t!271612 lt!1170933))))))

(assert (= (and d!992657 c!590888) b!3451552))

(assert (= (and d!992657 (not c!590888)) b!3451553))

(declare-fun m!3849295 () Bool)

(assert (=> b!3451553 m!3849295))

(assert (=> b!3450188 d!992657))

(declare-fun d!992659 () Bool)

(declare-fun res!1391880 () Bool)

(declare-fun e!2137991 () Bool)

(assert (=> d!992659 (=> res!1391880 e!2137991)))

(assert (=> d!992659 (= res!1391880 ((_ is Nil!37081) rules!2135))))

(assert (=> d!992659 (= (noDuplicateTag!2028 thiss!18206 rules!2135 Nil!37082) e!2137991)))

(declare-fun b!3451558 () Bool)

(declare-fun e!2137992 () Bool)

(assert (=> b!3451558 (= e!2137991 e!2137992)))

(declare-fun res!1391881 () Bool)

(assert (=> b!3451558 (=> (not res!1391881) (not e!2137992))))

(declare-fun contains!6848 (List!37206 String!41584) Bool)

(assert (=> b!3451558 (= res!1391881 (not (contains!6848 Nil!37082 (tag!6018 (h!42501 rules!2135)))))))

(declare-fun b!3451559 () Bool)

(assert (=> b!3451559 (= e!2137992 (noDuplicateTag!2028 thiss!18206 (t!271614 rules!2135) (Cons!37082 (tag!6018 (h!42501 rules!2135)) Nil!37082)))))

(assert (= (and d!992659 (not res!1391880)) b!3451558))

(assert (= (and b!3451558 res!1391881) b!3451559))

(declare-fun m!3849297 () Bool)

(assert (=> b!3451558 m!3849297))

(declare-fun m!3849299 () Bool)

(assert (=> b!3451559 m!3849299))

(assert (=> b!3450039 d!992659))

(declare-fun b!3451563 () Bool)

(declare-fun e!2137994 () List!37203)

(assert (=> b!3451563 (= e!2137994 (++!9125 (list!13487 (left!28915 (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))) (list!13487 (right!29245 (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))))

(declare-fun b!3451561 () Bool)

(declare-fun e!2137993 () List!37203)

(assert (=> b!3451561 (= e!2137993 e!2137994)))

(declare-fun c!590890 () Bool)

(assert (=> b!3451561 (= c!590890 ((_ is Leaf!17536) (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(declare-fun d!992661 () Bool)

(declare-fun c!590889 () Bool)

(assert (=> d!992661 (= c!590889 ((_ is Empty!11215) (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!992661 (= (list!13487 (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) e!2137993)))

(declare-fun b!3451560 () Bool)

(assert (=> b!3451560 (= e!2137993 Nil!37079)))

(declare-fun b!3451562 () Bool)

(assert (=> b!3451562 (= e!2137994 (list!13490 (xs!14389 (c!590467 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))))))

(assert (= (and d!992661 c!590889) b!3451560))

(assert (= (and d!992661 (not c!590889)) b!3451561))

(assert (= (and b!3451561 c!590890) b!3451562))

(assert (= (and b!3451561 (not c!590890)) b!3451563))

(declare-fun m!3849301 () Bool)

(assert (=> b!3451563 m!3849301))

(declare-fun m!3849303 () Bool)

(assert (=> b!3451563 m!3849303))

(assert (=> b!3451563 m!3849301))

(assert (=> b!3451563 m!3849303))

(declare-fun m!3849305 () Bool)

(assert (=> b!3451563 m!3849305))

(declare-fun m!3849307 () Bool)

(assert (=> b!3451562 m!3849307))

(assert (=> d!991929 d!992661))

(declare-fun d!992663 () Bool)

(declare-fun lt!1171637 () Bool)

(assert (=> d!992663 (= lt!1171637 (select (content!5161 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))))) lt!1170948))))

(declare-fun e!2137995 () Bool)

(assert (=> d!992663 (= lt!1171637 e!2137995)))

(declare-fun res!1391882 () Bool)

(assert (=> d!992663 (=> (not res!1391882) (not e!2137995))))

(assert (=> d!992663 (= res!1391882 ((_ is Cons!37079) (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))))))))

(assert (=> d!992663 (= (contains!6842 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) lt!1170948) lt!1171637)))

(declare-fun b!3451564 () Bool)

(declare-fun e!2137996 () Bool)

(assert (=> b!3451564 (= e!2137995 e!2137996)))

(declare-fun res!1391883 () Bool)

(assert (=> b!3451564 (=> res!1391883 e!2137996)))

(assert (=> b!3451564 (= res!1391883 (= (h!42499 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))))) lt!1170948))))

(declare-fun b!3451565 () Bool)

(assert (=> b!3451565 (= e!2137996 (contains!6842 (t!271612 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241))))) lt!1170948))))

(assert (= (and d!992663 res!1391882) b!3451564))

(assert (= (and b!3451564 (not res!1391883)) b!3451565))

(declare-fun m!3849309 () Bool)

(assert (=> d!992663 m!3849309))

(declare-fun m!3849311 () Bool)

(assert (=> d!992663 m!3849311))

(declare-fun m!3849313 () Bool)

(assert (=> b!3451565 m!3849313))

(assert (=> b!3450446 d!992663))

(declare-fun d!992665 () Bool)

(assert (=> d!992665 (= (isEmpty!21402 (originalCharacters!6134 separatorToken!241)) ((_ is Nil!37079) (originalCharacters!6134 separatorToken!241)))))

(assert (=> d!991959 d!992665))

(declare-fun b!3451568 () Bool)

(declare-fun res!1391884 () Bool)

(declare-fun e!2137998 () Bool)

(assert (=> b!3451568 (=> (not res!1391884) (not e!2137998))))

(declare-fun lt!1171638 () List!37203)

(assert (=> b!3451568 (= res!1391884 (= (size!28101 lt!1171638) (+ (size!28101 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))) (size!28101 lt!1170945))))))

(declare-fun b!3451569 () Bool)

(assert (=> b!3451569 (= e!2137998 (or (not (= lt!1170945 Nil!37079)) (= lt!1171638 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))))

(declare-fun d!992667 () Bool)

(assert (=> d!992667 e!2137998))

(declare-fun res!1391885 () Bool)

(assert (=> d!992667 (=> (not res!1391885) (not e!2137998))))

(assert (=> d!992667 (= res!1391885 (= (content!5161 lt!1171638) ((_ map or) (content!5161 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))) (content!5161 lt!1170945))))))

(declare-fun e!2137997 () List!37203)

(assert (=> d!992667 (= lt!1171638 e!2137997)))

(declare-fun c!590891 () Bool)

(assert (=> d!992667 (= c!590891 ((_ is Nil!37079) (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))))))

(assert (=> d!992667 (= (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) lt!1170945) lt!1171638)))

(declare-fun b!3451566 () Bool)

(assert (=> b!3451566 (= e!2137997 lt!1170945)))

(declare-fun b!3451567 () Bool)

(assert (=> b!3451567 (= e!2137997 (Cons!37079 (h!42499 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))) (++!9125 (t!271612 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))) lt!1170945)))))

(assert (= (and d!992667 c!590891) b!3451566))

(assert (= (and d!992667 (not c!590891)) b!3451567))

(assert (= (and d!992667 res!1391885) b!3451568))

(assert (= (and b!3451568 res!1391884) b!3451569))

(declare-fun m!3849315 () Bool)

(assert (=> b!3451568 m!3849315))

(declare-fun m!3849317 () Bool)

(assert (=> b!3451568 m!3849317))

(assert (=> b!3451568 m!3847143))

(declare-fun m!3849319 () Bool)

(assert (=> d!992667 m!3849319))

(declare-fun m!3849321 () Bool)

(assert (=> d!992667 m!3849321))

(assert (=> d!992667 m!3847149))

(declare-fun m!3849323 () Bool)

(assert (=> b!3451567 m!3849323))

(assert (=> b!3450191 d!992667))

(declare-fun b!3451578 () Bool)

(declare-fun e!2138005 () Bool)

(declare-fun call!249127 () Bool)

(assert (=> b!3451578 (= e!2138005 call!249127)))

(declare-fun b!3451579 () Bool)

(declare-fun e!2138006 () Bool)

(assert (=> b!3451579 (= e!2138006 e!2138005)))

(declare-fun res!1391891 () Bool)

(declare-fun rulesUseDisjointChars!338 (Rule!10640 Rule!10640) Bool)

(assert (=> b!3451579 (= res!1391891 (rulesUseDisjointChars!338 (h!42501 rules!2135) (h!42501 rules!2135)))))

(assert (=> b!3451579 (=> (not res!1391891) (not e!2138005))))

(declare-fun b!3451580 () Bool)

(declare-fun e!2138007 () Bool)

(assert (=> b!3451580 (= e!2138006 e!2138007)))

(declare-fun res!1391890 () Bool)

(assert (=> b!3451580 (= res!1391890 (not ((_ is Cons!37081) rules!2135)))))

(assert (=> b!3451580 (=> res!1391890 e!2138007)))

(declare-fun bm!249122 () Bool)

(assert (=> bm!249122 (= call!249127 (ruleDisjointCharsFromAllFromOtherType!709 (h!42501 rules!2135) (t!271614 rules!2135)))))

(declare-fun d!992669 () Bool)

(declare-fun c!590894 () Bool)

(assert (=> d!992669 (= c!590894 (and ((_ is Cons!37081) rules!2135) (not (= (isSeparator!5420 (h!42501 rules!2135)) (isSeparator!5420 (h!42501 rules!2135))))))))

(assert (=> d!992669 (= (ruleDisjointCharsFromAllFromOtherType!709 (h!42501 rules!2135) rules!2135) e!2138006)))

(declare-fun b!3451581 () Bool)

(assert (=> b!3451581 (= e!2138007 call!249127)))

(assert (= (and d!992669 c!590894) b!3451579))

(assert (= (and d!992669 (not c!590894)) b!3451580))

(assert (= (and b!3451579 res!1391891) b!3451578))

(assert (= (and b!3451580 (not res!1391890)) b!3451581))

(assert (= (or b!3451578 b!3451581) bm!249122))

(declare-fun m!3849325 () Bool)

(assert (=> b!3451579 m!3849325))

(declare-fun m!3849327 () Bool)

(assert (=> bm!249122 m!3849327))

(assert (=> b!3450234 d!992669))

(declare-fun d!992671 () Bool)

(assert (=> d!992671 (= (get!11855 lt!1171172) (v!36758 lt!1171172))))

(assert (=> b!3450610 d!992671))

(declare-fun d!992673 () Bool)

(assert (=> d!992673 (= (list!13483 (_2!21515 lt!1170999)) (list!13487 (c!590467 (_2!21515 lt!1170999))))))

(declare-fun bs!559836 () Bool)

(assert (= bs!559836 d!992673))

(declare-fun m!3849329 () Bool)

(assert (=> bs!559836 m!3849329))

(assert (=> b!3450166 d!992673))

(declare-fun b!3451620 () Bool)

(declare-fun e!2138030 () Bool)

(declare-fun e!2138032 () Bool)

(assert (=> b!3451620 (= e!2138030 e!2138032)))

(declare-fun res!1391898 () Bool)

(declare-fun lt!1171703 () tuple2!36768)

(assert (=> b!3451620 (= res!1391898 (< (size!28101 (_2!21518 lt!1171703)) (size!28101 (list!13483 lt!1170946))))))

(assert (=> b!3451620 (=> (not res!1391898) (not e!2138032))))

(declare-fun d!992675 () Bool)

(assert (=> d!992675 e!2138030))

(declare-fun c!590911 () Bool)

(assert (=> d!992675 (= c!590911 (> (size!28108 (_1!21518 lt!1171703)) 0))))

(declare-fun e!2138031 () tuple2!36768)

(assert (=> d!992675 (= lt!1171703 e!2138031)))

(declare-fun c!590912 () Bool)

(declare-fun lt!1171701 () Option!7486)

(assert (=> d!992675 (= c!590912 ((_ is Some!7485) lt!1171701))))

(declare-fun maxPrefix!2565 (LexerInterface!5009 List!37205 List!37203) Option!7486)

(assert (=> d!992675 (= lt!1171701 (maxPrefix!2565 thiss!18206 rules!2135 (list!13483 lt!1170946)))))

(assert (=> d!992675 (= (lexList!1438 thiss!18206 rules!2135 (list!13483 lt!1170946)) lt!1171703)))

(declare-fun b!3451621 () Bool)

(declare-fun lt!1171702 () tuple2!36768)

(assert (=> b!3451621 (= e!2138031 (tuple2!36769 (Cons!37080 (_1!21514 (v!36759 lt!1171701)) (_1!21518 lt!1171702)) (_2!21518 lt!1171702)))))

(assert (=> b!3451621 (= lt!1171702 (lexList!1438 thiss!18206 rules!2135 (_2!21514 (v!36759 lt!1171701))))))

(declare-fun b!3451622 () Bool)

(assert (=> b!3451622 (= e!2138030 (= (_2!21518 lt!1171703) (list!13483 lt!1170946)))))

(declare-fun b!3451623 () Bool)

(assert (=> b!3451623 (= e!2138031 (tuple2!36769 Nil!37080 (list!13483 lt!1170946)))))

(declare-fun b!3451624 () Bool)

(assert (=> b!3451624 (= e!2138032 (not (isEmpty!21404 (_1!21518 lt!1171703))))))

(assert (= (and d!992675 c!590912) b!3451621))

(assert (= (and d!992675 (not c!590912)) b!3451623))

(assert (= (and d!992675 c!590911) b!3451620))

(assert (= (and d!992675 (not c!590911)) b!3451622))

(assert (= (and b!3451620 res!1391898) b!3451624))

(declare-fun m!3849331 () Bool)

(assert (=> b!3451620 m!3849331))

(assert (=> b!3451620 m!3847181))

(declare-fun m!3849333 () Bool)

(assert (=> b!3451620 m!3849333))

(declare-fun m!3849335 () Bool)

(assert (=> d!992675 m!3849335))

(assert (=> d!992675 m!3847181))

(declare-fun m!3849337 () Bool)

(assert (=> d!992675 m!3849337))

(declare-fun m!3849339 () Bool)

(assert (=> b!3451621 m!3849339))

(declare-fun m!3849341 () Bool)

(assert (=> b!3451624 m!3849341))

(assert (=> b!3450166 d!992675))

(declare-fun d!992677 () Bool)

(assert (=> d!992677 (= (list!13483 lt!1170946) (list!13487 (c!590467 lt!1170946)))))

(declare-fun bs!559837 () Bool)

(assert (= bs!559837 d!992677))

(declare-fun m!3849343 () Bool)

(assert (=> bs!559837 m!3849343))

(assert (=> b!3450166 d!992677))

(declare-fun d!992679 () Bool)

(declare-fun lt!1171704 () Token!10206)

(assert (=> d!992679 (= lt!1171704 (apply!8695 (list!13486 (_1!21515 lt!1171175)) 0))))

(assert (=> d!992679 (= lt!1171704 (apply!8697 (c!590468 (_1!21515 lt!1171175)) 0))))

(declare-fun e!2138033 () Bool)

(assert (=> d!992679 e!2138033))

(declare-fun res!1391899 () Bool)

(assert (=> d!992679 (=> (not res!1391899) (not e!2138033))))

(assert (=> d!992679 (= res!1391899 (<= 0 0))))

(assert (=> d!992679 (= (apply!8694 (_1!21515 lt!1171175) 0) lt!1171704)))

(declare-fun b!3451625 () Bool)

(assert (=> b!3451625 (= e!2138033 (< 0 (size!28104 (_1!21515 lt!1171175))))))

(assert (= (and d!992679 res!1391899) b!3451625))

(declare-fun m!3849345 () Bool)

(assert (=> d!992679 m!3849345))

(assert (=> d!992679 m!3849345))

(declare-fun m!3849347 () Bool)

(assert (=> d!992679 m!3849347))

(declare-fun m!3849349 () Bool)

(assert (=> d!992679 m!3849349))

(assert (=> b!3451625 m!3847803))

(assert (=> b!3450616 d!992679))

(declare-fun d!992681 () Bool)

(assert (=> d!992681 (= (isEmpty!21404 (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))) ((_ is Nil!37080) (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))))))

(assert (=> d!991917 d!992681))

(declare-fun d!992683 () Bool)

(assert (=> d!992683 (= (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946))) (list!13489 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))))))

(declare-fun bs!559838 () Bool)

(assert (= bs!559838 d!992683))

(declare-fun m!3849351 () Bool)

(assert (=> bs!559838 m!3849351))

(assert (=> d!991917 d!992683))

(declare-fun lt!1171707 () Bool)

(declare-fun d!992685 () Bool)

(assert (=> d!992685 (= lt!1171707 (isEmpty!21404 (list!13489 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946))))))))

(assert (=> d!992685 (= lt!1171707 (= (size!28109 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))) 0))))

(assert (=> d!992685 (= (isEmpty!21405 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 lt!1170946)))) lt!1171707)))

(declare-fun bs!559839 () Bool)

(assert (= bs!559839 d!992685))

(assert (=> bs!559839 m!3849351))

(assert (=> bs!559839 m!3849351))

(declare-fun m!3849353 () Bool)

(assert (=> bs!559839 m!3849353))

(declare-fun m!3849355 () Bool)

(assert (=> bs!559839 m!3849355))

(assert (=> d!991917 d!992685))

(declare-fun d!992687 () Bool)

(assert (=> d!992687 (= (list!13486 (_1!21515 lt!1170999)) (list!13489 (c!590468 (_1!21515 lt!1170999))))))

(declare-fun bs!559840 () Bool)

(assert (= bs!559840 d!992687))

(declare-fun m!3849357 () Bool)

(assert (=> bs!559840 m!3849357))

(assert (=> b!3450170 d!992687))

(assert (=> b!3450170 d!992675))

(assert (=> b!3450170 d!992677))

(assert (=> b!3450604 d!992329))

(declare-fun d!992689 () Bool)

(declare-fun lt!1171708 () Int)

(assert (=> d!992689 (>= lt!1171708 0)))

(declare-fun e!2138034 () Int)

(assert (=> d!992689 (= lt!1171708 e!2138034)))

(declare-fun c!590913 () Bool)

(assert (=> d!992689 (= c!590913 ((_ is Nil!37079) (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))))))

(assert (=> d!992689 (= (size!28101 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))) lt!1171708)))

(declare-fun b!3451626 () Bool)

(assert (=> b!3451626 (= e!2138034 0)))

(declare-fun b!3451627 () Bool)

(assert (=> b!3451627 (= e!2138034 (+ 1 (size!28101 (t!271612 (originalCharacters!6134 (_1!21514 (get!11857 lt!1171168)))))))))

(assert (= (and d!992689 c!590913) b!3451626))

(assert (= (and d!992689 (not c!590913)) b!3451627))

(declare-fun m!3849359 () Bool)

(assert (=> b!3451627 m!3849359))

(assert (=> b!3450604 d!992689))

(declare-fun d!992691 () Bool)

(assert (=> d!992691 (= (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))) (list!13487 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(declare-fun bs!559841 () Bool)

(assert (= bs!559841 d!992691))

(declare-fun m!3849361 () Bool)

(assert (=> bs!559841 m!3849361))

(assert (=> b!3450228 d!992691))

(declare-fun d!992693 () Bool)

(declare-fun c!590914 () Bool)

(assert (=> d!992693 (= c!590914 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(declare-fun e!2138035 () Bool)

(assert (=> d!992693 (= (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))) e!2138035)))

(declare-fun b!3451628 () Bool)

(assert (=> b!3451628 (= e!2138035 (inv!50246 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(declare-fun b!3451629 () Bool)

(declare-fun e!2138036 () Bool)

(assert (=> b!3451629 (= e!2138035 e!2138036)))

(declare-fun res!1391900 () Bool)

(assert (=> b!3451629 (= res!1391900 (not ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))))))

(assert (=> b!3451629 (=> res!1391900 e!2138036)))

(declare-fun b!3451630 () Bool)

(assert (=> b!3451630 (= e!2138036 (inv!50247 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(assert (= (and d!992693 c!590914) b!3451628))

(assert (= (and d!992693 (not c!590914)) b!3451629))

(assert (= (and b!3451629 (not res!1391900)) b!3451630))

(declare-fun m!3849363 () Bool)

(assert (=> b!3451628 m!3849363))

(declare-fun m!3849365 () Bool)

(assert (=> b!3451630 m!3849365))

(assert (=> b!3450400 d!992693))

(declare-fun d!992695 () Bool)

(assert (=> d!992695 (= (isEmpty!21402 (tail!5411 lt!1170945)) ((_ is Nil!37079) (tail!5411 lt!1170945)))))

(assert (=> b!3450432 d!992695))

(assert (=> b!3450432 d!992651))

(declare-fun d!992697 () Bool)

(declare-fun c!590917 () Bool)

(assert (=> d!992697 (= c!590917 ((_ is Nil!37079) lt!1171004))))

(declare-fun e!2138038 () (InoxSet C!20544))

(assert (=> d!992697 (= (content!5161 lt!1171004) e!2138038)))

(declare-fun b!3451631 () Bool)

(assert (=> b!3451631 (= e!2138038 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451632 () Bool)

(assert (=> b!3451632 (= e!2138038 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1171004) true) (content!5161 (t!271612 lt!1171004))))))

(assert (= (and d!992697 c!590917) b!3451631))

(assert (= (and d!992697 (not c!590917)) b!3451632))

(declare-fun m!3849367 () Bool)

(assert (=> b!3451632 m!3849367))

(declare-fun m!3849369 () Bool)

(assert (=> b!3451632 m!3849369))

(assert (=> d!991931 d!992697))

(assert (=> d!991931 d!992611))

(assert (=> d!991931 d!992483))

(declare-fun d!992699 () Bool)

(assert (=> d!992699 true))

(declare-fun lt!1171739 () Bool)

(declare-fun rulesValidInductive!1850 (LexerInterface!5009 List!37205) Bool)

(assert (=> d!992699 (= lt!1171739 (rulesValidInductive!1850 thiss!18206 rules!2135))))

(declare-fun lambda!121557 () Int)

(declare-fun forall!7889 (List!37205 Int) Bool)

(assert (=> d!992699 (= lt!1171739 (forall!7889 rules!2135 lambda!121557))))

(assert (=> d!992699 (= (rulesValid!2032 thiss!18206 rules!2135) lt!1171739)))

(declare-fun bs!559842 () Bool)

(assert (= bs!559842 d!992699))

(declare-fun m!3849417 () Bool)

(assert (=> bs!559842 m!3849417))

(declare-fun m!3849421 () Bool)

(assert (=> bs!559842 m!3849421))

(assert (=> d!991881 d!992699))

(declare-fun b!3451661 () Bool)

(declare-fun e!2138051 () Bool)

(declare-fun e!2138050 () Bool)

(assert (=> b!3451661 (= e!2138051 e!2138050)))

(declare-fun res!1391919 () Bool)

(assert (=> b!3451661 (=> (not res!1391919) (not e!2138050))))

(declare-fun height!1691 (Conc!11216) Int)

(assert (=> b!3451661 (= res!1391919 (<= (- 1) (- (height!1691 (left!28916 (c!590468 lt!1171033))) (height!1691 (right!29246 (c!590468 lt!1171033))))))))

(declare-fun b!3451662 () Bool)

(declare-fun res!1391918 () Bool)

(assert (=> b!3451662 (=> (not res!1391918) (not e!2138050))))

(assert (=> b!3451662 (= res!1391918 (isBalanced!3401 (right!29246 (c!590468 lt!1171033))))))

(declare-fun b!3451663 () Bool)

(declare-fun res!1391917 () Bool)

(assert (=> b!3451663 (=> (not res!1391917) (not e!2138050))))

(assert (=> b!3451663 (= res!1391917 (isBalanced!3401 (left!28916 (c!590468 lt!1171033))))))

(declare-fun b!3451664 () Bool)

(assert (=> b!3451664 (= e!2138050 (not (isEmpty!21405 (right!29246 (c!590468 lt!1171033)))))))

(declare-fun b!3451665 () Bool)

(declare-fun res!1391920 () Bool)

(assert (=> b!3451665 (=> (not res!1391920) (not e!2138050))))

(assert (=> b!3451665 (= res!1391920 (not (isEmpty!21405 (left!28916 (c!590468 lt!1171033)))))))

(declare-fun b!3451666 () Bool)

(declare-fun res!1391915 () Bool)

(assert (=> b!3451666 (=> (not res!1391915) (not e!2138050))))

(assert (=> b!3451666 (= res!1391915 (<= (- (height!1691 (left!28916 (c!590468 lt!1171033))) (height!1691 (right!29246 (c!590468 lt!1171033)))) 1))))

(declare-fun d!992703 () Bool)

(declare-fun res!1391916 () Bool)

(assert (=> d!992703 (=> res!1391916 e!2138051)))

(assert (=> d!992703 (= res!1391916 (not ((_ is Node!11216) (c!590468 lt!1171033))))))

(assert (=> d!992703 (= (isBalanced!3401 (c!590468 lt!1171033)) e!2138051)))

(assert (= (and d!992703 (not res!1391916)) b!3451661))

(assert (= (and b!3451661 res!1391919) b!3451666))

(assert (= (and b!3451666 res!1391915) b!3451663))

(assert (= (and b!3451663 res!1391917) b!3451662))

(assert (= (and b!3451662 res!1391918) b!3451665))

(assert (= (and b!3451665 res!1391920) b!3451664))

(declare-fun m!3849423 () Bool)

(assert (=> b!3451664 m!3849423))

(declare-fun m!3849425 () Bool)

(assert (=> b!3451663 m!3849425))

(declare-fun m!3849427 () Bool)

(assert (=> b!3451662 m!3849427))

(declare-fun m!3849429 () Bool)

(assert (=> b!3451666 m!3849429))

(declare-fun m!3849431 () Bool)

(assert (=> b!3451666 m!3849431))

(assert (=> b!3451661 m!3849429))

(assert (=> b!3451661 m!3849431))

(declare-fun m!3849433 () Bool)

(assert (=> b!3451665 m!3849433))

(assert (=> b!3450210 d!992703))

(declare-fun d!992705 () Bool)

(assert (=> d!992705 (= (list!13483 lt!1171091) (list!13487 (c!590467 lt!1171091)))))

(declare-fun bs!559843 () Bool)

(assert (= bs!559843 d!992705))

(declare-fun m!3849435 () Bool)

(assert (=> bs!559843 m!3849435))

(assert (=> d!992029 d!992705))

(declare-fun c!590926 () Bool)

(declare-fun d!992707 () Bool)

(assert (=> d!992707 (= c!590926 (or ((_ is EmptyExpr!10179) (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) ((_ is EmptyLang!10179) (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))

(declare-fun e!2138058 () List!37203)

(assert (=> d!992707 (= (usedCharacters!654 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) e!2138058)))

(declare-fun e!2138055 () List!37203)

(declare-fun b!3451672 () Bool)

(assert (=> b!3451672 (= e!2138055 (Cons!37079 (c!590466 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) Nil!37079))))

(declare-fun c!590925 () Bool)

(declare-fun bm!249147 () Bool)

(declare-fun call!249154 () List!37203)

(assert (=> bm!249147 (= call!249154 (usedCharacters!654 (ite c!590925 (regOne!20871 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (regTwo!20870 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))))

(declare-fun c!590923 () Bool)

(declare-fun call!249153 () List!37203)

(declare-fun bm!249148 () Bool)

(assert (=> bm!249148 (= call!249153 (usedCharacters!654 (ite c!590923 (reg!10508 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (ite c!590925 (regTwo!20871 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (regOne!20870 (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))))

(declare-fun b!3451673 () Bool)

(assert (=> b!3451673 (= e!2138058 Nil!37079)))

(declare-fun b!3451674 () Bool)

(assert (=> b!3451674 (= e!2138058 e!2138055)))

(declare-fun c!590924 () Bool)

(assert (=> b!3451674 (= c!590924 ((_ is ElementMatch!10179) (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3451675 () Bool)

(declare-fun e!2138057 () List!37203)

(assert (=> b!3451675 (= e!2138057 call!249153)))

(declare-fun bm!249149 () Bool)

(declare-fun call!249152 () List!37203)

(declare-fun call!249155 () List!37203)

(assert (=> bm!249149 (= call!249152 (++!9125 (ite c!590925 call!249154 call!249155) (ite c!590925 call!249155 call!249154)))))

(declare-fun b!3451676 () Bool)

(declare-fun e!2138056 () List!37203)

(assert (=> b!3451676 (= e!2138056 call!249152)))

(declare-fun bm!249150 () Bool)

(assert (=> bm!249150 (= call!249155 call!249153)))

(declare-fun b!3451677 () Bool)

(assert (=> b!3451677 (= e!2138056 call!249152)))

(declare-fun b!3451678 () Bool)

(assert (=> b!3451678 (= c!590923 ((_ is Star!10179) (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(assert (=> b!3451678 (= e!2138055 e!2138057)))

(declare-fun b!3451679 () Bool)

(assert (=> b!3451679 (= e!2138057 e!2138056)))

(assert (=> b!3451679 (= c!590925 ((_ is Union!10179) (ite c!590596 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590598 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(assert (= (and d!992707 c!590926) b!3451673))

(assert (= (and d!992707 (not c!590926)) b!3451674))

(assert (= (and b!3451674 c!590924) b!3451672))

(assert (= (and b!3451674 (not c!590924)) b!3451678))

(assert (= (and b!3451678 c!590923) b!3451675))

(assert (= (and b!3451678 (not c!590923)) b!3451679))

(assert (= (and b!3451679 c!590925) b!3451677))

(assert (= (and b!3451679 (not c!590925)) b!3451676))

(assert (= (or b!3451677 b!3451676) bm!249150))

(assert (= (or b!3451677 b!3451676) bm!249147))

(assert (= (or b!3451677 b!3451676) bm!249149))

(assert (= (or b!3451675 bm!249150) bm!249148))

(declare-fun m!3849437 () Bool)

(assert (=> bm!249147 m!3849437))

(declare-fun m!3849439 () Bool)

(assert (=> bm!249148 m!3849439))

(declare-fun m!3849441 () Bool)

(assert (=> bm!249149 m!3849441))

(assert (=> bm!249034 d!992707))

(declare-fun lt!1171743 () Bool)

(declare-fun d!992709 () Bool)

(assert (=> d!992709 (= lt!1171743 (isEmpty!21402 (list!13483 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))))

(assert (=> d!992709 (= lt!1171743 (isEmpty!21409 (c!590467 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))))

(assert (=> d!992709 (= (isEmpty!21403 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))) lt!1171743)))

(declare-fun bs!559847 () Bool)

(assert (= bs!559847 d!992709))

(declare-fun m!3849443 () Bool)

(assert (=> bs!559847 m!3849443))

(assert (=> bs!559847 m!3849443))

(declare-fun m!3849445 () Bool)

(assert (=> bs!559847 m!3849445))

(declare-fun m!3849447 () Bool)

(assert (=> bs!559847 m!3849447))

(assert (=> b!3450117 d!992709))

(declare-fun d!992711 () Bool)

(declare-fun e!2138061 () Bool)

(assert (=> d!992711 e!2138061))

(declare-fun res!1391922 () Bool)

(assert (=> d!992711 (=> (not res!1391922) (not e!2138061))))

(declare-fun e!2138062 () Bool)

(assert (=> d!992711 (= res!1391922 e!2138062)))

(declare-fun c!590927 () Bool)

(declare-fun lt!1171744 () tuple2!36762)

(assert (=> d!992711 (= c!590927 (> (size!28104 (_1!21515 lt!1171744)) 0))))

(assert (=> d!992711 (= lt!1171744 (lexTailRecV2!1046 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)) (BalanceConc!22045 Empty!11215) (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)) (BalanceConc!22047 Empty!11216)))))

(assert (=> d!992711 (= (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))) lt!1171744)))

(declare-fun b!3451681 () Bool)

(assert (=> b!3451681 (= e!2138061 (= (list!13483 (_2!21515 lt!1171744)) (_2!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))))

(declare-fun b!3451682 () Bool)

(assert (=> b!3451682 (= e!2138062 (= (_2!21515 lt!1171744) (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))))

(declare-fun b!3451683 () Bool)

(declare-fun e!2138060 () Bool)

(assert (=> b!3451683 (= e!2138062 e!2138060)))

(declare-fun res!1391923 () Bool)

(assert (=> b!3451683 (= res!1391923 (< (size!28105 (_2!21515 lt!1171744)) (size!28105 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))

(assert (=> b!3451683 (=> (not res!1391923) (not e!2138060))))

(declare-fun b!3451684 () Bool)

(assert (=> b!3451684 (= e!2138060 (not (isEmpty!21394 (_1!21515 lt!1171744))))))

(declare-fun b!3451685 () Bool)

(declare-fun res!1391921 () Bool)

(assert (=> b!3451685 (=> (not res!1391921) (not e!2138061))))

(assert (=> b!3451685 (= res!1391921 (= (list!13486 (_1!21515 lt!1171744)) (_1!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))))

(assert (= (and d!992711 c!590927) b!3451683))

(assert (= (and d!992711 (not c!590927)) b!3451682))

(assert (= (and b!3451683 res!1391923) b!3451684))

(assert (= (and d!992711 res!1391922) b!3451685))

(assert (= (and b!3451685 res!1391921) b!3451681))

(declare-fun m!3849453 () Bool)

(assert (=> d!992711 m!3849453))

(assert (=> d!992711 m!3847103))

(assert (=> d!992711 m!3847103))

(declare-fun m!3849455 () Bool)

(assert (=> d!992711 m!3849455))

(declare-fun m!3849457 () Bool)

(assert (=> b!3451683 m!3849457))

(assert (=> b!3451683 m!3847103))

(declare-fun m!3849459 () Bool)

(assert (=> b!3451683 m!3849459))

(declare-fun m!3849461 () Bool)

(assert (=> b!3451685 m!3849461))

(assert (=> b!3451685 m!3847103))

(declare-fun m!3849465 () Bool)

(assert (=> b!3451685 m!3849465))

(assert (=> b!3451685 m!3849465))

(declare-fun m!3849467 () Bool)

(assert (=> b!3451685 m!3849467))

(declare-fun m!3849469 () Bool)

(assert (=> b!3451681 m!3849469))

(assert (=> b!3451681 m!3847103))

(assert (=> b!3451681 m!3849465))

(assert (=> b!3451681 m!3849465))

(assert (=> b!3451681 m!3849467))

(declare-fun m!3849471 () Bool)

(assert (=> b!3451684 m!3849471))

(assert (=> b!3450117 d!992711))

(declare-fun d!992713 () Bool)

(declare-fun lt!1171745 () BalanceConc!22044)

(assert (=> d!992713 (= (list!13483 lt!1171745) (printList!1557 thiss!18206 (list!13486 (singletonSeq!2516 separatorToken!241))))))

(assert (=> d!992713 (= lt!1171745 (printTailRec!1504 thiss!18206 (singletonSeq!2516 separatorToken!241) 0 (BalanceConc!22045 Empty!11215)))))

(assert (=> d!992713 (= (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)) lt!1171745)))

(declare-fun bs!559848 () Bool)

(assert (= bs!559848 d!992713))

(declare-fun m!3849473 () Bool)

(assert (=> bs!559848 m!3849473))

(assert (=> bs!559848 m!3847101))

(assert (=> bs!559848 m!3847109))

(assert (=> bs!559848 m!3847109))

(declare-fun m!3849475 () Bool)

(assert (=> bs!559848 m!3849475))

(assert (=> bs!559848 m!3847101))

(declare-fun m!3849477 () Bool)

(assert (=> bs!559848 m!3849477))

(assert (=> b!3450117 d!992713))

(declare-fun d!992715 () Bool)

(declare-fun e!2138064 () Bool)

(assert (=> d!992715 e!2138064))

(declare-fun res!1391924 () Bool)

(assert (=> d!992715 (=> (not res!1391924) (not e!2138064))))

(declare-fun lt!1171746 () BalanceConc!22046)

(assert (=> d!992715 (= res!1391924 (= (list!13486 lt!1171746) (Cons!37080 separatorToken!241 Nil!37080)))))

(assert (=> d!992715 (= lt!1171746 (singleton!1110 separatorToken!241))))

(assert (=> d!992715 (= (singletonSeq!2516 separatorToken!241) lt!1171746)))

(declare-fun b!3451686 () Bool)

(assert (=> b!3451686 (= e!2138064 (isBalanced!3401 (c!590468 lt!1171746)))))

(assert (= (and d!992715 res!1391924) b!3451686))

(declare-fun m!3849481 () Bool)

(assert (=> d!992715 m!3849481))

(declare-fun m!3849483 () Bool)

(assert (=> d!992715 m!3849483))

(declare-fun m!3849487 () Bool)

(assert (=> b!3451686 m!3849487))

(assert (=> b!3450117 d!992715))

(declare-fun b!3451689 () Bool)

(declare-fun res!1391925 () Bool)

(declare-fun e!2138066 () Bool)

(assert (=> b!3451689 (=> (not res!1391925) (not e!2138066))))

(declare-fun lt!1171747 () List!37203)

(assert (=> b!3451689 (= res!1391925 (= (size!28101 lt!1171747) (+ (size!28101 (ite c!590598 call!249040 call!249041)) (size!28101 (ite c!590598 call!249041 call!249040)))))))

(declare-fun b!3451690 () Bool)

(assert (=> b!3451690 (= e!2138066 (or (not (= (ite c!590598 call!249041 call!249040) Nil!37079)) (= lt!1171747 (ite c!590598 call!249040 call!249041))))))

(declare-fun d!992717 () Bool)

(assert (=> d!992717 e!2138066))

(declare-fun res!1391926 () Bool)

(assert (=> d!992717 (=> (not res!1391926) (not e!2138066))))

(assert (=> d!992717 (= res!1391926 (= (content!5161 lt!1171747) ((_ map or) (content!5161 (ite c!590598 call!249040 call!249041)) (content!5161 (ite c!590598 call!249041 call!249040)))))))

(declare-fun e!2138065 () List!37203)

(assert (=> d!992717 (= lt!1171747 e!2138065)))

(declare-fun c!590928 () Bool)

(assert (=> d!992717 (= c!590928 ((_ is Nil!37079) (ite c!590598 call!249040 call!249041)))))

(assert (=> d!992717 (= (++!9125 (ite c!590598 call!249040 call!249041) (ite c!590598 call!249041 call!249040)) lt!1171747)))

(declare-fun b!3451687 () Bool)

(assert (=> b!3451687 (= e!2138065 (ite c!590598 call!249041 call!249040))))

(declare-fun b!3451688 () Bool)

(assert (=> b!3451688 (= e!2138065 (Cons!37079 (h!42499 (ite c!590598 call!249040 call!249041)) (++!9125 (t!271612 (ite c!590598 call!249040 call!249041)) (ite c!590598 call!249041 call!249040))))))

(assert (= (and d!992717 c!590928) b!3451687))

(assert (= (and d!992717 (not c!590928)) b!3451688))

(assert (= (and d!992717 res!1391926) b!3451689))

(assert (= (and b!3451689 res!1391925) b!3451690))

(declare-fun m!3849495 () Bool)

(assert (=> b!3451689 m!3849495))

(declare-fun m!3849497 () Bool)

(assert (=> b!3451689 m!3849497))

(declare-fun m!3849499 () Bool)

(assert (=> b!3451689 m!3849499))

(declare-fun m!3849501 () Bool)

(assert (=> d!992717 m!3849501))

(declare-fun m!3849503 () Bool)

(assert (=> d!992717 m!3849503))

(declare-fun m!3849505 () Bool)

(assert (=> d!992717 m!3849505))

(declare-fun m!3849507 () Bool)

(assert (=> b!3451688 m!3849507))

(assert (=> bm!249035 d!992717))

(declare-fun b!3451691 () Bool)

(declare-fun e!2138068 () Bool)

(declare-fun lt!1171748 () Bool)

(declare-fun call!249156 () Bool)

(assert (=> b!3451691 (= e!2138068 (= lt!1171748 call!249156))))

(declare-fun b!3451692 () Bool)

(declare-fun res!1391929 () Bool)

(declare-fun e!2138069 () Bool)

(assert (=> b!3451692 (=> (not res!1391929) (not e!2138069))))

(assert (=> b!3451692 (= res!1391929 (isEmpty!21402 (tail!5411 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951))))))))

(declare-fun b!3451693 () Bool)

(declare-fun e!2138073 () Bool)

(assert (=> b!3451693 (= e!2138073 (matchR!4763 (derivativeStep!3031 (regex!5420 (rule!8000 (h!42500 tokens!494))) (head!7289 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951))))) (tail!5411 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951))))))))

(declare-fun b!3451694 () Bool)

(assert (=> b!3451694 (= e!2138069 (= (head!7289 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))) (c!590466 (regex!5420 (rule!8000 (h!42500 tokens!494))))))))

(declare-fun b!3451696 () Bool)

(declare-fun res!1391928 () Bool)

(declare-fun e!2138071 () Bool)

(assert (=> b!3451696 (=> res!1391928 e!2138071)))

(assert (=> b!3451696 (= res!1391928 e!2138069)))

(declare-fun res!1391927 () Bool)

(assert (=> b!3451696 (=> (not res!1391927) (not e!2138069))))

(assert (=> b!3451696 (= res!1391927 lt!1171748)))

(declare-fun b!3451697 () Bool)

(assert (=> b!3451697 (= e!2138073 (nullable!3478 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3451698 () Bool)

(declare-fun res!1391930 () Bool)

(assert (=> b!3451698 (=> (not res!1391930) (not e!2138069))))

(assert (=> b!3451698 (= res!1391930 (not call!249156))))

(declare-fun b!3451699 () Bool)

(declare-fun e!2138067 () Bool)

(assert (=> b!3451699 (= e!2138068 e!2138067)))

(declare-fun c!590930 () Bool)

(assert (=> b!3451699 (= c!590930 ((_ is EmptyLang!10179) (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3451700 () Bool)

(declare-fun res!1391934 () Bool)

(assert (=> b!3451700 (=> res!1391934 e!2138071)))

(assert (=> b!3451700 (= res!1391934 (not ((_ is ElementMatch!10179) (regex!5420 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> b!3451700 (= e!2138067 e!2138071)))

(declare-fun d!992721 () Bool)

(assert (=> d!992721 e!2138068))

(declare-fun c!590931 () Bool)

(assert (=> d!992721 (= c!590931 ((_ is EmptyExpr!10179) (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(assert (=> d!992721 (= lt!1171748 e!2138073)))

(declare-fun c!590929 () Bool)

(assert (=> d!992721 (= c!590929 (isEmpty!21402 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(assert (=> d!992721 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992721 (= (matchR!4763 (regex!5420 (rule!8000 (h!42500 tokens!494))) (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))) lt!1171748)))

(declare-fun b!3451695 () Bool)

(declare-fun e!2138072 () Bool)

(assert (=> b!3451695 (= e!2138072 (not (= (head!7289 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))) (c!590466 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))))

(declare-fun b!3451701 () Bool)

(assert (=> b!3451701 (= e!2138067 (not lt!1171748))))

(declare-fun bm!249151 () Bool)

(assert (=> bm!249151 (= call!249156 (isEmpty!21402 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(declare-fun b!3451702 () Bool)

(declare-fun res!1391933 () Bool)

(assert (=> b!3451702 (=> res!1391933 e!2138072)))

(assert (=> b!3451702 (= res!1391933 (not (isEmpty!21402 (tail!5411 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))))

(declare-fun b!3451703 () Bool)

(declare-fun e!2138070 () Bool)

(assert (=> b!3451703 (= e!2138070 e!2138072)))

(declare-fun res!1391931 () Bool)

(assert (=> b!3451703 (=> res!1391931 e!2138072)))

(assert (=> b!3451703 (= res!1391931 call!249156)))

(declare-fun b!3451704 () Bool)

(assert (=> b!3451704 (= e!2138071 e!2138070)))

(declare-fun res!1391932 () Bool)

(assert (=> b!3451704 (=> (not res!1391932) (not e!2138070))))

(assert (=> b!3451704 (= res!1391932 (not lt!1171748))))

(assert (= (and d!992721 c!590929) b!3451697))

(assert (= (and d!992721 (not c!590929)) b!3451693))

(assert (= (and d!992721 c!590931) b!3451691))

(assert (= (and d!992721 (not c!590931)) b!3451699))

(assert (= (and b!3451699 c!590930) b!3451701))

(assert (= (and b!3451699 (not c!590930)) b!3451700))

(assert (= (and b!3451700 (not res!1391934)) b!3451696))

(assert (= (and b!3451696 res!1391927) b!3451698))

(assert (= (and b!3451698 res!1391930) b!3451692))

(assert (= (and b!3451692 res!1391929) b!3451694))

(assert (= (and b!3451696 (not res!1391928)) b!3451704))

(assert (= (and b!3451704 res!1391932) b!3451703))

(assert (= (and b!3451703 (not res!1391931)) b!3451702))

(assert (= (and b!3451702 (not res!1391933)) b!3451695))

(assert (= (or b!3451691 b!3451698 b!3451703) bm!249151))

(declare-fun m!3849509 () Bool)

(assert (=> b!3451694 m!3849509))

(assert (=> bm!249151 m!3847765))

(declare-fun m!3849511 () Bool)

(assert (=> b!3451702 m!3849511))

(assert (=> b!3451702 m!3849511))

(declare-fun m!3849513 () Bool)

(assert (=> b!3451702 m!3849513))

(assert (=> d!992721 m!3847765))

(declare-fun m!3849515 () Bool)

(assert (=> d!992721 m!3849515))

(assert (=> b!3451695 m!3849509))

(declare-fun m!3849517 () Bool)

(assert (=> b!3451697 m!3849517))

(assert (=> b!3451692 m!3849511))

(assert (=> b!3451692 m!3849511))

(assert (=> b!3451692 m!3849513))

(assert (=> b!3451693 m!3849509))

(assert (=> b!3451693 m!3849509))

(declare-fun m!3849519 () Bool)

(assert (=> b!3451693 m!3849519))

(assert (=> b!3451693 m!3849511))

(assert (=> b!3451693 m!3849519))

(assert (=> b!3451693 m!3849511))

(declare-fun m!3849521 () Bool)

(assert (=> b!3451693 m!3849521))

(assert (=> b!3450599 d!992721))

(declare-fun bm!249169 () Bool)

(declare-fun call!249176 () Unit!52398)

(declare-fun lemmaIsPrefixRefl!1800 (List!37203 List!37203) Unit!52398)

(assert (=> bm!249169 (= call!249176 (lemmaIsPrefixRefl!1800 lt!1170951 lt!1170951))))

(declare-fun bm!249170 () Bool)

(declare-fun call!249178 () Regex!10179)

(declare-fun call!249181 () C!20544)

(assert (=> bm!249170 (= call!249178 (derivativeStep!3031 (regex!5420 (rule!8000 (h!42500 tokens!494))) call!249181))))

(declare-fun b!3451860 () Bool)

(declare-fun e!2138152 () Unit!52398)

(declare-fun Unit!52404 () Unit!52398)

(assert (=> b!3451860 (= e!2138152 Unit!52404)))

(declare-fun lt!1171830 () Unit!52398)

(assert (=> b!3451860 (= lt!1171830 call!249176)))

(declare-fun call!249179 () Bool)

(assert (=> b!3451860 call!249179))

(declare-fun lt!1171835 () Unit!52398)

(assert (=> b!3451860 (= lt!1171835 lt!1171830)))

(declare-fun lt!1171836 () Unit!52398)

(declare-fun call!249174 () Unit!52398)

(assert (=> b!3451860 (= lt!1171836 call!249174)))

(assert (=> b!3451860 (= lt!1170951 Nil!37079)))

(declare-fun lt!1171831 () Unit!52398)

(assert (=> b!3451860 (= lt!1171831 lt!1171836)))

(assert (=> b!3451860 false))

(declare-fun b!3451861 () Bool)

(declare-fun e!2138157 () Bool)

(declare-fun e!2138154 () Bool)

(assert (=> b!3451861 (= e!2138157 e!2138154)))

(declare-fun res!1391958 () Bool)

(assert (=> b!3451861 (=> res!1391958 e!2138154)))

(declare-fun lt!1171842 () tuple2!36770)

(assert (=> b!3451861 (= res!1391958 (isEmpty!21402 (_1!21519 lt!1171842)))))

(declare-fun b!3451862 () Bool)

(declare-fun e!2138155 () tuple2!36770)

(assert (=> b!3451862 (= e!2138155 (tuple2!36771 Nil!37079 lt!1170951))))

(declare-fun b!3451864 () Bool)

(declare-fun e!2138156 () tuple2!36770)

(assert (=> b!3451864 (= e!2138156 (tuple2!36771 Nil!37079 lt!1170951))))

(declare-fun b!3451865 () Bool)

(declare-fun e!2138153 () tuple2!36770)

(assert (=> b!3451865 (= e!2138153 (tuple2!36771 Nil!37079 lt!1170951))))

(declare-fun b!3451866 () Bool)

(declare-fun lt!1171838 () tuple2!36770)

(assert (=> b!3451866 (= e!2138153 lt!1171838)))

(declare-fun bm!249171 () Bool)

(assert (=> bm!249171 (= call!249181 (head!7289 lt!1170951))))

(declare-fun b!3451867 () Bool)

(declare-fun e!2138158 () tuple2!36770)

(declare-fun call!249175 () tuple2!36770)

(assert (=> b!3451867 (= e!2138158 call!249175)))

(declare-fun d!992723 () Bool)

(assert (=> d!992723 e!2138157))

(declare-fun res!1391959 () Bool)

(assert (=> d!992723 (=> (not res!1391959) (not e!2138157))))

(assert (=> d!992723 (= res!1391959 (= (++!9125 (_1!21519 lt!1171842) (_2!21519 lt!1171842)) lt!1170951))))

(assert (=> d!992723 (= lt!1171842 e!2138155)))

(declare-fun c!590953 () Bool)

(declare-fun lostCause!921 (Regex!10179) Bool)

(assert (=> d!992723 (= c!590953 (lostCause!921 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun lt!1171841 () Unit!52398)

(declare-fun Unit!52405 () Unit!52398)

(assert (=> d!992723 (= lt!1171841 Unit!52405)))

(declare-fun getSuffix!1489 (List!37203 List!37203) List!37203)

(assert (=> d!992723 (= (getSuffix!1489 lt!1170951 Nil!37079) lt!1170951)))

(declare-fun lt!1171824 () Unit!52398)

(declare-fun lt!1171817 () Unit!52398)

(assert (=> d!992723 (= lt!1171824 lt!1171817)))

(declare-fun lt!1171819 () List!37203)

(assert (=> d!992723 (= lt!1170951 lt!1171819)))

(declare-fun lemmaSamePrefixThenSameSuffix!1271 (List!37203 List!37203 List!37203 List!37203 List!37203) Unit!52398)

(assert (=> d!992723 (= lt!1171817 (lemmaSamePrefixThenSameSuffix!1271 Nil!37079 lt!1170951 Nil!37079 lt!1171819 lt!1170951))))

(assert (=> d!992723 (= lt!1171819 (getSuffix!1489 lt!1170951 Nil!37079))))

(declare-fun lt!1171821 () Unit!52398)

(declare-fun lt!1171820 () Unit!52398)

(assert (=> d!992723 (= lt!1171821 lt!1171820)))

(declare-fun isPrefix!2841 (List!37203 List!37203) Bool)

(assert (=> d!992723 (isPrefix!2841 Nil!37079 (++!9125 Nil!37079 lt!1170951))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1805 (List!37203 List!37203) Unit!52398)

(assert (=> d!992723 (= lt!1171820 (lemmaConcatTwoListThenFirstIsPrefix!1805 Nil!37079 lt!1170951))))

(assert (=> d!992723 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992723 (= (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)) lt!1171842)))

(declare-fun b!3451863 () Bool)

(declare-fun c!590950 () Bool)

(declare-fun call!249177 () Bool)

(assert (=> b!3451863 (= c!590950 call!249177)))

(declare-fun lt!1171826 () Unit!52398)

(declare-fun lt!1171839 () Unit!52398)

(assert (=> b!3451863 (= lt!1171826 lt!1171839)))

(declare-fun lt!1171828 () C!20544)

(declare-fun lt!1171834 () List!37203)

(assert (=> b!3451863 (= (++!9125 (++!9125 Nil!37079 (Cons!37079 lt!1171828 Nil!37079)) lt!1171834) lt!1170951)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1159 (List!37203 C!20544 List!37203 List!37203) Unit!52398)

(assert (=> b!3451863 (= lt!1171839 (lemmaMoveElementToOtherListKeepsConcatEq!1159 Nil!37079 lt!1171828 lt!1171834 lt!1170951))))

(assert (=> b!3451863 (= lt!1171834 (tail!5411 lt!1170951))))

(assert (=> b!3451863 (= lt!1171828 (head!7289 lt!1170951))))

(declare-fun lt!1171816 () Unit!52398)

(declare-fun lt!1171827 () Unit!52398)

(assert (=> b!3451863 (= lt!1171816 lt!1171827)))

(assert (=> b!3451863 (isPrefix!2841 (++!9125 Nil!37079 (Cons!37079 (head!7289 (getSuffix!1489 lt!1170951 Nil!37079)) Nil!37079)) lt!1170951)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!547 (List!37203 List!37203) Unit!52398)

(assert (=> b!3451863 (= lt!1171827 (lemmaAddHeadSuffixToPrefixStillPrefix!547 Nil!37079 lt!1170951))))

(declare-fun lt!1171822 () Unit!52398)

(declare-fun lt!1171818 () Unit!52398)

(assert (=> b!3451863 (= lt!1171822 lt!1171818)))

(assert (=> b!3451863 (= lt!1171818 (lemmaAddHeadSuffixToPrefixStillPrefix!547 Nil!37079 lt!1170951))))

(declare-fun lt!1171837 () List!37203)

(assert (=> b!3451863 (= lt!1171837 (++!9125 Nil!37079 (Cons!37079 (head!7289 lt!1170951) Nil!37079)))))

(declare-fun lt!1171825 () Unit!52398)

(assert (=> b!3451863 (= lt!1171825 e!2138152)))

(declare-fun c!590951 () Bool)

(assert (=> b!3451863 (= c!590951 (= (size!28101 Nil!37079) (size!28101 lt!1170951)))))

(declare-fun lt!1171840 () Unit!52398)

(declare-fun lt!1171823 () Unit!52398)

(assert (=> b!3451863 (= lt!1171840 lt!1171823)))

(assert (=> b!3451863 (<= (size!28101 Nil!37079) (size!28101 lt!1170951))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!355 (List!37203 List!37203) Unit!52398)

(assert (=> b!3451863 (= lt!1171823 (lemmaIsPrefixThenSmallerEqSize!355 Nil!37079 lt!1170951))))

(declare-fun e!2138151 () tuple2!36770)

(assert (=> b!3451863 (= e!2138151 e!2138158)))

(declare-fun bm!249172 () Bool)

(assert (=> bm!249172 (= call!249177 (nullable!3478 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3451868 () Bool)

(assert (=> b!3451868 (= e!2138155 e!2138151)))

(declare-fun c!590954 () Bool)

(assert (=> b!3451868 (= c!590954 (= (size!28101 Nil!37079) (size!28101 lt!1170951)))))

(declare-fun b!3451869 () Bool)

(declare-fun c!590952 () Bool)

(assert (=> b!3451869 (= c!590952 call!249177)))

(declare-fun lt!1171832 () Unit!52398)

(declare-fun lt!1171843 () Unit!52398)

(assert (=> b!3451869 (= lt!1171832 lt!1171843)))

(assert (=> b!3451869 (= lt!1170951 Nil!37079)))

(assert (=> b!3451869 (= lt!1171843 call!249174)))

(declare-fun lt!1171833 () Unit!52398)

(declare-fun lt!1171829 () Unit!52398)

(assert (=> b!3451869 (= lt!1171833 lt!1171829)))

(assert (=> b!3451869 call!249179))

(assert (=> b!3451869 (= lt!1171829 call!249176)))

(assert (=> b!3451869 (= e!2138151 e!2138156)))

(declare-fun bm!249173 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!554 (List!37203 List!37203 List!37203) Unit!52398)

(assert (=> bm!249173 (= call!249174 (lemmaIsPrefixSameLengthThenSameList!554 lt!1170951 Nil!37079 lt!1170951))))

(declare-fun b!3451870 () Bool)

(assert (=> b!3451870 (= e!2138158 e!2138153)))

(assert (=> b!3451870 (= lt!1171838 call!249175)))

(declare-fun c!590949 () Bool)

(assert (=> b!3451870 (= c!590949 (isEmpty!21402 (_1!21519 lt!1171838)))))

(declare-fun b!3451871 () Bool)

(declare-fun Unit!52406 () Unit!52398)

(assert (=> b!3451871 (= e!2138152 Unit!52406)))

(declare-fun bm!249174 () Bool)

(declare-fun call!249180 () List!37203)

(assert (=> bm!249174 (= call!249180 (tail!5411 lt!1170951))))

(declare-fun bm!249175 () Bool)

(assert (=> bm!249175 (= call!249175 (findLongestMatchInner!899 call!249178 lt!1171837 (+ (size!28101 Nil!37079) 1) call!249180 lt!1170951 (size!28101 lt!1170951)))))

(declare-fun b!3451872 () Bool)

(assert (=> b!3451872 (= e!2138154 (>= (size!28101 (_1!21519 lt!1171842)) (size!28101 Nil!37079)))))

(declare-fun bm!249176 () Bool)

(assert (=> bm!249176 (= call!249179 (isPrefix!2841 lt!1170951 lt!1170951))))

(declare-fun b!3451873 () Bool)

(assert (=> b!3451873 (= e!2138156 (tuple2!36771 Nil!37079 Nil!37079))))

(assert (= (and d!992723 c!590953) b!3451862))

(assert (= (and d!992723 (not c!590953)) b!3451868))

(assert (= (and b!3451868 c!590954) b!3451869))

(assert (= (and b!3451868 (not c!590954)) b!3451863))

(assert (= (and b!3451869 c!590952) b!3451873))

(assert (= (and b!3451869 (not c!590952)) b!3451864))

(assert (= (and b!3451863 c!590951) b!3451860))

(assert (= (and b!3451863 (not c!590951)) b!3451871))

(assert (= (and b!3451863 c!590950) b!3451870))

(assert (= (and b!3451863 (not c!590950)) b!3451867))

(assert (= (and b!3451870 c!590949) b!3451865))

(assert (= (and b!3451870 (not c!590949)) b!3451866))

(assert (= (or b!3451870 b!3451867) bm!249171))

(assert (= (or b!3451870 b!3451867) bm!249174))

(assert (= (or b!3451870 b!3451867) bm!249170))

(assert (= (or b!3451870 b!3451867) bm!249175))

(assert (= (or b!3451869 b!3451860) bm!249169))

(assert (= (or b!3451869 b!3451860) bm!249176))

(assert (= (or b!3451869 b!3451860) bm!249173))

(assert (= (or b!3451869 b!3451863) bm!249172))

(assert (= (and d!992723 res!1391959) b!3451861))

(assert (= (and b!3451861 (not res!1391958)) b!3451872))

(assert (=> bm!249174 m!3847039))

(declare-fun m!3849601 () Bool)

(assert (=> b!3451861 m!3849601))

(declare-fun m!3849603 () Bool)

(assert (=> b!3451870 m!3849603))

(assert (=> bm!249172 m!3849517))

(assert (=> b!3451863 m!3847761))

(declare-fun m!3849605 () Bool)

(assert (=> b!3451863 m!3849605))

(declare-fun m!3849607 () Bool)

(assert (=> b!3451863 m!3849607))

(declare-fun m!3849609 () Bool)

(assert (=> b!3451863 m!3849609))

(declare-fun m!3849611 () Bool)

(assert (=> b!3451863 m!3849611))

(assert (=> b!3451863 m!3849609))

(declare-fun m!3849613 () Bool)

(assert (=> b!3451863 m!3849613))

(assert (=> b!3451863 m!3846815))

(declare-fun m!3849615 () Bool)

(assert (=> b!3451863 m!3849615))

(declare-fun m!3849617 () Bool)

(assert (=> b!3451863 m!3849617))

(assert (=> b!3451863 m!3849615))

(assert (=> b!3451863 m!3847035))

(assert (=> b!3451863 m!3849607))

(declare-fun m!3849619 () Bool)

(assert (=> b!3451863 m!3849619))

(declare-fun m!3849621 () Bool)

(assert (=> b!3451863 m!3849621))

(declare-fun m!3849623 () Bool)

(assert (=> b!3451863 m!3849623))

(assert (=> b!3451863 m!3847039))

(declare-fun m!3849625 () Bool)

(assert (=> bm!249169 m!3849625))

(declare-fun m!3849627 () Bool)

(assert (=> b!3451872 m!3849627))

(assert (=> b!3451872 m!3847761))

(declare-fun m!3849629 () Bool)

(assert (=> bm!249170 m!3849629))

(declare-fun m!3849631 () Bool)

(assert (=> d!992723 m!3849631))

(declare-fun m!3849633 () Bool)

(assert (=> d!992723 m!3849633))

(declare-fun m!3849635 () Bool)

(assert (=> d!992723 m!3849635))

(declare-fun m!3849637 () Bool)

(assert (=> d!992723 m!3849637))

(assert (=> d!992723 m!3849633))

(declare-fun m!3849639 () Bool)

(assert (=> d!992723 m!3849639))

(assert (=> d!992723 m!3849515))

(declare-fun m!3849641 () Bool)

(assert (=> d!992723 m!3849641))

(assert (=> d!992723 m!3849609))

(declare-fun m!3849643 () Bool)

(assert (=> bm!249173 m!3849643))

(assert (=> bm!249171 m!3847035))

(assert (=> bm!249175 m!3846815))

(declare-fun m!3849645 () Bool)

(assert (=> bm!249175 m!3849645))

(declare-fun m!3849647 () Bool)

(assert (=> bm!249176 m!3849647))

(assert (=> b!3450599 d!992723))

(declare-fun d!992763 () Bool)

(declare-fun lt!1171844 () Int)

(assert (=> d!992763 (>= lt!1171844 0)))

(declare-fun e!2138159 () Int)

(assert (=> d!992763 (= lt!1171844 e!2138159)))

(declare-fun c!590955 () Bool)

(assert (=> d!992763 (= c!590955 ((_ is Nil!37079) Nil!37079))))

(assert (=> d!992763 (= (size!28101 Nil!37079) lt!1171844)))

(declare-fun b!3451874 () Bool)

(assert (=> b!3451874 (= e!2138159 0)))

(declare-fun b!3451875 () Bool)

(assert (=> b!3451875 (= e!2138159 (+ 1 (size!28101 (t!271612 Nil!37079))))))

(assert (= (and d!992763 c!590955) b!3451874))

(assert (= (and d!992763 (not c!590955)) b!3451875))

(declare-fun m!3849649 () Bool)

(assert (=> b!3451875 m!3849649))

(assert (=> b!3450599 d!992763))

(assert (=> b!3450599 d!992047))

(declare-fun b!3451876 () Bool)

(declare-fun e!2138161 () Bool)

(declare-fun lt!1171845 () Bool)

(declare-fun call!249182 () Bool)

(assert (=> b!3451876 (= e!2138161 (= lt!1171845 call!249182))))

(declare-fun b!3451877 () Bool)

(declare-fun res!1391962 () Bool)

(declare-fun e!2138162 () Bool)

(assert (=> b!3451877 (=> (not res!1391962) (not e!2138162))))

(assert (=> b!3451877 (= res!1391962 (isEmpty!21402 (tail!5411 (tail!5411 lt!1170951))))))

(declare-fun b!3451878 () Bool)

(declare-fun e!2138166 () Bool)

(assert (=> b!3451878 (= e!2138166 (matchR!4763 (derivativeStep!3031 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)) (head!7289 (tail!5411 lt!1170951))) (tail!5411 (tail!5411 lt!1170951))))))

(declare-fun b!3451879 () Bool)

(assert (=> b!3451879 (= e!2138162 (= (head!7289 (tail!5411 lt!1170951)) (c!590466 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)))))))

(declare-fun b!3451881 () Bool)

(declare-fun res!1391961 () Bool)

(declare-fun e!2138164 () Bool)

(assert (=> b!3451881 (=> res!1391961 e!2138164)))

(assert (=> b!3451881 (= res!1391961 e!2138162)))

(declare-fun res!1391960 () Bool)

(assert (=> b!3451881 (=> (not res!1391960) (not e!2138162))))

(assert (=> b!3451881 (= res!1391960 lt!1171845)))

(declare-fun b!3451882 () Bool)

(assert (=> b!3451882 (= e!2138166 (nullable!3478 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951))))))

(declare-fun b!3451883 () Bool)

(declare-fun res!1391963 () Bool)

(assert (=> b!3451883 (=> (not res!1391963) (not e!2138162))))

(assert (=> b!3451883 (= res!1391963 (not call!249182))))

(declare-fun b!3451884 () Bool)

(declare-fun e!2138160 () Bool)

(assert (=> b!3451884 (= e!2138161 e!2138160)))

(declare-fun c!590957 () Bool)

(assert (=> b!3451884 (= c!590957 ((_ is EmptyLang!10179) (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951))))))

(declare-fun b!3451885 () Bool)

(declare-fun res!1391967 () Bool)

(assert (=> b!3451885 (=> res!1391967 e!2138164)))

(assert (=> b!3451885 (= res!1391967 (not ((_ is ElementMatch!10179) (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)))))))

(assert (=> b!3451885 (= e!2138160 e!2138164)))

(declare-fun d!992765 () Bool)

(assert (=> d!992765 e!2138161))

(declare-fun c!590958 () Bool)

(assert (=> d!992765 (= c!590958 ((_ is EmptyExpr!10179) (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951))))))

(assert (=> d!992765 (= lt!1171845 e!2138166)))

(declare-fun c!590956 () Bool)

(assert (=> d!992765 (= c!590956 (isEmpty!21402 (tail!5411 lt!1170951)))))

(assert (=> d!992765 (validRegex!4634 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)))))

(assert (=> d!992765 (= (matchR!4763 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)) (tail!5411 lt!1170951)) lt!1171845)))

(declare-fun b!3451880 () Bool)

(declare-fun e!2138165 () Bool)

(assert (=> b!3451880 (= e!2138165 (not (= (head!7289 (tail!5411 lt!1170951)) (c!590466 (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951))))))))

(declare-fun b!3451886 () Bool)

(assert (=> b!3451886 (= e!2138160 (not lt!1171845))))

(declare-fun bm!249177 () Bool)

(assert (=> bm!249177 (= call!249182 (isEmpty!21402 (tail!5411 lt!1170951)))))

(declare-fun b!3451887 () Bool)

(declare-fun res!1391966 () Bool)

(assert (=> b!3451887 (=> res!1391966 e!2138165)))

(assert (=> b!3451887 (= res!1391966 (not (isEmpty!21402 (tail!5411 (tail!5411 lt!1170951)))))))

(declare-fun b!3451888 () Bool)

(declare-fun e!2138163 () Bool)

(assert (=> b!3451888 (= e!2138163 e!2138165)))

(declare-fun res!1391964 () Bool)

(assert (=> b!3451888 (=> res!1391964 e!2138165)))

(assert (=> b!3451888 (= res!1391964 call!249182)))

(declare-fun b!3451889 () Bool)

(assert (=> b!3451889 (= e!2138164 e!2138163)))

(declare-fun res!1391965 () Bool)

(assert (=> b!3451889 (=> (not res!1391965) (not e!2138163))))

(assert (=> b!3451889 (= res!1391965 (not lt!1171845))))

(assert (= (and d!992765 c!590956) b!3451882))

(assert (= (and d!992765 (not c!590956)) b!3451878))

(assert (= (and d!992765 c!590958) b!3451876))

(assert (= (and d!992765 (not c!590958)) b!3451884))

(assert (= (and b!3451884 c!590957) b!3451886))

(assert (= (and b!3451884 (not c!590957)) b!3451885))

(assert (= (and b!3451885 (not res!1391967)) b!3451881))

(assert (= (and b!3451881 res!1391960) b!3451883))

(assert (= (and b!3451883 res!1391963) b!3451877))

(assert (= (and b!3451877 res!1391962) b!3451879))

(assert (= (and b!3451881 (not res!1391961)) b!3451889))

(assert (= (and b!3451889 res!1391965) b!3451888))

(assert (= (and b!3451888 (not res!1391964)) b!3451887))

(assert (= (and b!3451887 (not res!1391966)) b!3451880))

(assert (= (or b!3451876 b!3451883 b!3451888) bm!249177))

(assert (=> b!3451879 m!3847039))

(declare-fun m!3849651 () Bool)

(assert (=> b!3451879 m!3849651))

(assert (=> bm!249177 m!3847039))

(assert (=> bm!249177 m!3847041))

(assert (=> b!3451887 m!3847039))

(declare-fun m!3849653 () Bool)

(assert (=> b!3451887 m!3849653))

(assert (=> b!3451887 m!3849653))

(declare-fun m!3849655 () Bool)

(assert (=> b!3451887 m!3849655))

(assert (=> d!992765 m!3847039))

(assert (=> d!992765 m!3847041))

(assert (=> d!992765 m!3847049))

(declare-fun m!3849657 () Bool)

(assert (=> d!992765 m!3849657))

(assert (=> b!3451880 m!3847039))

(assert (=> b!3451880 m!3849651))

(assert (=> b!3451882 m!3847049))

(declare-fun m!3849659 () Bool)

(assert (=> b!3451882 m!3849659))

(assert (=> b!3451877 m!3847039))

(assert (=> b!3451877 m!3849653))

(assert (=> b!3451877 m!3849653))

(assert (=> b!3451877 m!3849655))

(assert (=> b!3451878 m!3847039))

(assert (=> b!3451878 m!3849651))

(assert (=> b!3451878 m!3847049))

(assert (=> b!3451878 m!3849651))

(declare-fun m!3849661 () Bool)

(assert (=> b!3451878 m!3849661))

(assert (=> b!3451878 m!3847039))

(assert (=> b!3451878 m!3849653))

(assert (=> b!3451878 m!3849661))

(assert (=> b!3451878 m!3849653))

(declare-fun m!3849663 () Bool)

(assert (=> b!3451878 m!3849663))

(assert (=> b!3450080 d!992765))

(declare-fun bm!249178 () Bool)

(declare-fun c!590961 () Bool)

(declare-fun call!249184 () Regex!10179)

(assert (=> bm!249178 (= call!249184 (derivativeStep!3031 (ite c!590961 (regOne!20871 (regex!5420 lt!1170934)) (regTwo!20870 (regex!5420 lt!1170934))) (head!7289 lt!1170951)))))

(declare-fun bm!249179 () Bool)

(declare-fun call!249186 () Regex!10179)

(declare-fun call!249183 () Regex!10179)

(assert (=> bm!249179 (= call!249186 call!249183)))

(declare-fun b!3451890 () Bool)

(declare-fun e!2138171 () Regex!10179)

(assert (=> b!3451890 (= e!2138171 (ite (= (head!7289 lt!1170951) (c!590466 (regex!5420 lt!1170934))) EmptyExpr!10179 EmptyLang!10179))))

(declare-fun e!2138168 () Regex!10179)

(declare-fun b!3451891 () Bool)

(assert (=> b!3451891 (= e!2138168 (Union!10179 (Concat!15829 call!249186 (regTwo!20870 (regex!5420 lt!1170934))) call!249184))))

(declare-fun b!3451892 () Bool)

(declare-fun e!2138169 () Regex!10179)

(assert (=> b!3451892 (= e!2138169 EmptyLang!10179)))

(declare-fun b!3451893 () Bool)

(declare-fun e!2138167 () Regex!10179)

(assert (=> b!3451893 (= e!2138167 (Concat!15829 call!249183 (regex!5420 lt!1170934)))))

(declare-fun b!3451894 () Bool)

(declare-fun e!2138170 () Regex!10179)

(declare-fun call!249185 () Regex!10179)

(assert (=> b!3451894 (= e!2138170 (Union!10179 call!249184 call!249185))))

(declare-fun b!3451895 () Bool)

(declare-fun c!590962 () Bool)

(assert (=> b!3451895 (= c!590962 (nullable!3478 (regOne!20870 (regex!5420 lt!1170934))))))

(assert (=> b!3451895 (= e!2138167 e!2138168)))

(declare-fun b!3451896 () Bool)

(assert (=> b!3451896 (= c!590961 ((_ is Union!10179) (regex!5420 lt!1170934)))))

(assert (=> b!3451896 (= e!2138171 e!2138170)))

(declare-fun b!3451897 () Bool)

(assert (=> b!3451897 (= e!2138168 (Union!10179 (Concat!15829 call!249186 (regTwo!20870 (regex!5420 lt!1170934))) EmptyLang!10179))))

(declare-fun b!3451898 () Bool)

(assert (=> b!3451898 (= e!2138169 e!2138171)))

(declare-fun c!590963 () Bool)

(assert (=> b!3451898 (= c!590963 ((_ is ElementMatch!10179) (regex!5420 lt!1170934)))))

(declare-fun bm!249181 () Bool)

(declare-fun c!590960 () Bool)

(assert (=> bm!249181 (= call!249185 (derivativeStep!3031 (ite c!590961 (regTwo!20871 (regex!5420 lt!1170934)) (ite c!590960 (reg!10508 (regex!5420 lt!1170934)) (regOne!20870 (regex!5420 lt!1170934)))) (head!7289 lt!1170951)))))

(declare-fun b!3451899 () Bool)

(assert (=> b!3451899 (= e!2138170 e!2138167)))

(assert (=> b!3451899 (= c!590960 ((_ is Star!10179) (regex!5420 lt!1170934)))))

(declare-fun d!992767 () Bool)

(declare-fun lt!1171846 () Regex!10179)

(assert (=> d!992767 (validRegex!4634 lt!1171846)))

(assert (=> d!992767 (= lt!1171846 e!2138169)))

(declare-fun c!590959 () Bool)

(assert (=> d!992767 (= c!590959 (or ((_ is EmptyExpr!10179) (regex!5420 lt!1170934)) ((_ is EmptyLang!10179) (regex!5420 lt!1170934))))))

(assert (=> d!992767 (validRegex!4634 (regex!5420 lt!1170934))))

(assert (=> d!992767 (= (derivativeStep!3031 (regex!5420 lt!1170934) (head!7289 lt!1170951)) lt!1171846)))

(declare-fun bm!249180 () Bool)

(assert (=> bm!249180 (= call!249183 call!249185)))

(assert (= (and d!992767 c!590959) b!3451892))

(assert (= (and d!992767 (not c!590959)) b!3451898))

(assert (= (and b!3451898 c!590963) b!3451890))

(assert (= (and b!3451898 (not c!590963)) b!3451896))

(assert (= (and b!3451896 c!590961) b!3451894))

(assert (= (and b!3451896 (not c!590961)) b!3451899))

(assert (= (and b!3451899 c!590960) b!3451893))

(assert (= (and b!3451899 (not c!590960)) b!3451895))

(assert (= (and b!3451895 c!590962) b!3451891))

(assert (= (and b!3451895 (not c!590962)) b!3451897))

(assert (= (or b!3451891 b!3451897) bm!249179))

(assert (= (or b!3451893 bm!249179) bm!249180))

(assert (= (or b!3451894 b!3451891) bm!249178))

(assert (= (or b!3451894 bm!249180) bm!249181))

(assert (=> bm!249178 m!3847035))

(declare-fun m!3849665 () Bool)

(assert (=> bm!249178 m!3849665))

(declare-fun m!3849667 () Bool)

(assert (=> b!3451895 m!3849667))

(assert (=> bm!249181 m!3847035))

(declare-fun m!3849669 () Bool)

(assert (=> bm!249181 m!3849669))

(declare-fun m!3849671 () Bool)

(assert (=> d!992767 m!3849671))

(assert (=> d!992767 m!3847043))

(assert (=> b!3450080 d!992767))

(declare-fun d!992769 () Bool)

(assert (=> d!992769 (= (head!7289 lt!1170951) (h!42499 lt!1170951))))

(assert (=> b!3450080 d!992769))

(assert (=> b!3450080 d!992619))

(declare-fun d!992771 () Bool)

(assert (=> d!992771 true))

(declare-fun lambda!121563 () Int)

(declare-fun order!19693 () Int)

(declare-fun dynLambda!15578 (Int Int) Int)

(assert (=> d!992771 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (dynLambda!15578 order!19693 lambda!121563))))

(assert (=> d!992771 true))

(assert (=> d!992771 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (dynLambda!15578 order!19693 lambda!121563))))

(declare-fun Forall!1335 (Int) Bool)

(assert (=> d!992771 (= (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (Forall!1335 lambda!121563))))

(declare-fun bs!559858 () Bool)

(assert (= bs!559858 d!992771))

(declare-fun m!3849673 () Bool)

(assert (=> bs!559858 m!3849673))

(assert (=> d!991905 d!992771))

(declare-fun d!992773 () Bool)

(assert (=> d!992773 (= (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))) (isBalanced!3403 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(declare-fun bs!559859 () Bool)

(assert (= bs!559859 d!992773))

(declare-fun m!3849675 () Bool)

(assert (=> bs!559859 m!3849675))

(assert (=> tb!187653 d!992773))

(declare-fun d!992775 () Bool)

(declare-fun charsToInt!0 (List!37202) (_ BitVec 32))

(assert (=> d!992775 (= (inv!16 (value!174930 (h!42500 tokens!494))) (= (charsToInt!0 (text!39997 (value!174930 (h!42500 tokens!494)))) (value!174921 (value!174930 (h!42500 tokens!494)))))))

(declare-fun bs!559860 () Bool)

(assert (= bs!559860 d!992775))

(declare-fun m!3849677 () Bool)

(assert (=> bs!559860 m!3849677))

(assert (=> b!3450395 d!992775))

(declare-fun d!992777 () Bool)

(declare-fun lt!1171849 () Bool)

(declare-fun content!5165 (List!37205) (InoxSet Rule!10640))

(assert (=> d!992777 (= lt!1171849 (select (content!5165 rules!2135) (get!11855 lt!1171118)))))

(declare-fun e!2138176 () Bool)

(assert (=> d!992777 (= lt!1171849 e!2138176)))

(declare-fun res!1391973 () Bool)

(assert (=> d!992777 (=> (not res!1391973) (not e!2138176))))

(assert (=> d!992777 (= res!1391973 ((_ is Cons!37081) rules!2135))))

(assert (=> d!992777 (= (contains!6846 rules!2135 (get!11855 lt!1171118)) lt!1171849)))

(declare-fun b!3451908 () Bool)

(declare-fun e!2138177 () Bool)

(assert (=> b!3451908 (= e!2138176 e!2138177)))

(declare-fun res!1391972 () Bool)

(assert (=> b!3451908 (=> res!1391972 e!2138177)))

(assert (=> b!3451908 (= res!1391972 (= (h!42501 rules!2135) (get!11855 lt!1171118)))))

(declare-fun b!3451909 () Bool)

(assert (=> b!3451909 (= e!2138177 (contains!6846 (t!271614 rules!2135) (get!11855 lt!1171118)))))

(assert (= (and d!992777 res!1391973) b!3451908))

(assert (= (and b!3451908 (not res!1391972)) b!3451909))

(declare-fun m!3849679 () Bool)

(assert (=> d!992777 m!3849679))

(assert (=> d!992777 m!3847635))

(declare-fun m!3849681 () Bool)

(assert (=> d!992777 m!3849681))

(assert (=> b!3451909 m!3847635))

(declare-fun m!3849683 () Bool)

(assert (=> b!3451909 m!3849683))

(assert (=> b!3450475 d!992777))

(assert (=> b!3450475 d!992487))

(declare-fun d!992779 () Bool)

(assert (=> d!992779 (= (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 lt!1170951)) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 lt!1170951)))))

(declare-fun b_lambda!99115 () Bool)

(assert (=> (not b_lambda!99115) (not d!992779)))

(declare-fun t!271880 () Bool)

(declare-fun tb!187861 () Bool)

(assert (=> (and b!3449883 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271880) tb!187861))

(declare-fun result!231724 () Bool)

(assert (=> tb!187861 (= result!231724 (inv!21 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 lt!1170951))))))

(declare-fun m!3849685 () Bool)

(assert (=> tb!187861 m!3849685))

(assert (=> d!992779 t!271880))

(declare-fun b_and!242449 () Bool)

(assert (= b_and!242383 (and (=> t!271880 result!231724) b_and!242449)))

(declare-fun tb!187863 () Bool)

(declare-fun t!271882 () Bool)

(assert (=> (and b!3449897 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271882) tb!187863))

(declare-fun result!231726 () Bool)

(assert (= result!231726 result!231724))

(assert (=> d!992779 t!271882))

(declare-fun b_and!242451 () Bool)

(assert (= b_and!242381 (and (=> t!271882 result!231726) b_and!242451)))

(declare-fun t!271884 () Bool)

(declare-fun tb!187865 () Bool)

(assert (=> (and b!3450694 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271884) tb!187865))

(declare-fun result!231728 () Bool)

(assert (= result!231728 result!231724))

(assert (=> d!992779 t!271884))

(declare-fun b_and!242453 () Bool)

(assert (= b_and!242387 (and (=> t!271884 result!231728) b_and!242453)))

(declare-fun t!271886 () Bool)

(declare-fun tb!187867 () Bool)

(assert (=> (and b!3449880 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271886) tb!187867))

(declare-fun result!231730 () Bool)

(assert (= result!231730 result!231724))

(assert (=> d!992779 t!271886))

(declare-fun b_and!242455 () Bool)

(assert (= b_and!242385 (and (=> t!271886 result!231730) b_and!242455)))

(declare-fun t!271888 () Bool)

(declare-fun tb!187869 () Bool)

(assert (=> (and b!3450680 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271888) tb!187869))

(declare-fun result!231732 () Bool)

(assert (= result!231732 result!231724))

(assert (=> d!992779 t!271888))

(declare-fun b_and!242457 () Bool)

(assert (= b_and!242389 (and (=> t!271888 result!231732) b_and!242457)))

(assert (=> d!992779 m!3846867))

(declare-fun m!3849687 () Bool)

(assert (=> d!992779 m!3849687))

(assert (=> d!992075 d!992779))

(assert (=> d!992075 d!992091))

(assert (=> d!992075 d!992047))

(declare-fun d!992781 () Bool)

(assert (=> d!992781 (= (maxPrefixOneRule!1716 thiss!18206 (rule!8000 (h!42500 tokens!494)) lt!1170951) (Some!7485 (tuple2!36761 (Token!10207 (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 lt!1170951)) (rule!8000 (h!42500 tokens!494)) (size!28101 lt!1170951) lt!1170951) Nil!37079)))))

(assert (=> d!992781 true))

(declare-fun _$59!493 () Unit!52398)

(assert (=> d!992781 (= (choose!19925 thiss!18206 rules!2135 lt!1170951 lt!1170951 Nil!37079 (rule!8000 (h!42500 tokens!494))) _$59!493)))

(declare-fun bs!559861 () Bool)

(assert (= bs!559861 d!992781))

(assert (=> bs!559861 m!3846809))

(assert (=> bs!559861 m!3846867))

(assert (=> bs!559861 m!3846867))

(assert (=> bs!559861 m!3847715))

(assert (=> bs!559861 m!3846815))

(assert (=> d!992075 d!992781))

(assert (=> d!992075 d!991921))

(assert (=> d!992075 d!991889))

(declare-fun b!3451912 () Bool)

(declare-fun res!1391974 () Bool)

(declare-fun e!2138180 () Bool)

(assert (=> b!3451912 (=> (not res!1391974) (not e!2138180))))

(declare-fun lt!1171850 () List!37203)

(assert (=> b!3451912 (= res!1391974 (= (size!28101 lt!1171850) (+ (size!28101 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (size!28101 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun b!3451913 () Bool)

(assert (=> b!3451913 (= e!2138180 (or (not (= (list!13483 (charsOf!3434 separatorToken!241)) Nil!37079)) (= lt!1171850 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun d!992783 () Bool)

(assert (=> d!992783 e!2138180))

(declare-fun res!1391975 () Bool)

(assert (=> d!992783 (=> (not res!1391975) (not e!2138180))))

(assert (=> d!992783 (= res!1391975 (= (content!5161 lt!1171850) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (content!5161 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun e!2138179 () List!37203)

(assert (=> d!992783 (= lt!1171850 e!2138179)))

(declare-fun c!590964 () Bool)

(assert (=> d!992783 (= c!590964 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!992783 (= (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241))) lt!1171850)))

(declare-fun b!3451910 () Bool)

(assert (=> b!3451910 (= e!2138179 (list!13483 (charsOf!3434 separatorToken!241)))))

(declare-fun b!3451911 () Bool)

(assert (=> b!3451911 (= e!2138179 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (= (and d!992783 c!590964) b!3451910))

(assert (= (and d!992783 (not c!590964)) b!3451911))

(assert (= (and d!992783 res!1391975) b!3451912))

(assert (= (and b!3451912 res!1391974) b!3451913))

(declare-fun m!3849689 () Bool)

(assert (=> b!3451912 m!3849689))

(assert (=> b!3451912 m!3846887))

(assert (=> b!3451912 m!3847227))

(assert (=> b!3451912 m!3846895))

(declare-fun m!3849691 () Bool)

(assert (=> b!3451912 m!3849691))

(declare-fun m!3849693 () Bool)

(assert (=> d!992783 m!3849693))

(assert (=> d!992783 m!3846887))

(assert (=> d!992783 m!3847231))

(assert (=> d!992783 m!3846895))

(declare-fun m!3849695 () Bool)

(assert (=> d!992783 m!3849695))

(assert (=> b!3451911 m!3846895))

(declare-fun m!3849697 () Bool)

(assert (=> b!3451911 m!3849697))

(assert (=> b!3450196 d!992783))

(assert (=> b!3450196 d!991935))

(assert (=> b!3450196 d!991927))

(assert (=> b!3450196 d!991929))

(declare-fun b!3451916 () Bool)

(declare-fun res!1391976 () Bool)

(declare-fun e!2138182 () Bool)

(assert (=> b!3451916 (=> (not res!1391976) (not e!2138182))))

(declare-fun lt!1171851 () List!37203)

(assert (=> b!3451916 (= res!1391976 (= (size!28101 lt!1171851) (+ (size!28101 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))) (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun b!3451917 () Bool)

(assert (=> b!3451917 (= e!2138182 (or (not (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241) Nil!37079)) (= lt!1171851 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun d!992785 () Bool)

(assert (=> d!992785 e!2138182))

(declare-fun res!1391977 () Bool)

(assert (=> d!992785 (=> (not res!1391977) (not e!2138182))))

(assert (=> d!992785 (= res!1391977 (= (content!5161 lt!1171851) ((_ map or) (content!5161 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))) (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun e!2138181 () List!37203)

(assert (=> d!992785 (= lt!1171851 e!2138181)))

(declare-fun c!590965 () Bool)

(assert (=> d!992785 (= c!590965 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (=> d!992785 (= (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) lt!1171851)))

(declare-fun b!3451914 () Bool)

(assert (=> b!3451914 (= e!2138181 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))

(declare-fun b!3451915 () Bool)

(assert (=> b!3451915 (= e!2138181 (Cons!37079 (h!42499 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))) (++!9125 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))))

(assert (= (and d!992785 c!590965) b!3451914))

(assert (= (and d!992785 (not c!590965)) b!3451915))

(assert (= (and d!992785 res!1391977) b!3451916))

(assert (= (and b!3451916 res!1391976) b!3451917))

(declare-fun m!3849699 () Bool)

(assert (=> b!3451916 m!3849699))

(assert (=> b!3451916 m!3847245))

(declare-fun m!3849701 () Bool)

(assert (=> b!3451916 m!3849701))

(assert (=> b!3451916 m!3846889))

(assert (=> b!3451916 m!3847199))

(declare-fun m!3849703 () Bool)

(assert (=> d!992785 m!3849703))

(assert (=> d!992785 m!3847245))

(declare-fun m!3849705 () Bool)

(assert (=> d!992785 m!3849705))

(assert (=> d!992785 m!3846889))

(assert (=> d!992785 m!3847205))

(assert (=> b!3451915 m!3846889))

(declare-fun m!3849707 () Bool)

(assert (=> b!3451915 m!3849707))

(assert (=> b!3450196 d!992785))

(assert (=> b!3450196 d!991939))

(assert (=> b!3450196 d!991941))

(declare-fun d!992787 () Bool)

(assert (=> d!992787 (= (list!13486 (singletonSeq!2516 separatorToken!241)) (list!13489 (c!590468 (singletonSeq!2516 separatorToken!241))))))

(declare-fun bs!559862 () Bool)

(assert (= bs!559862 d!992787))

(declare-fun m!3849709 () Bool)

(assert (=> bs!559862 m!3849709))

(assert (=> d!991891 d!992787))

(declare-fun d!992789 () Bool)

(assert (=> d!992789 (= (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241))))) (list!13489 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 separatorToken!241)))))))))

(declare-fun bs!559863 () Bool)

(assert (= bs!559863 d!992789))

(declare-fun m!3849711 () Bool)

(assert (=> bs!559863 m!3849711))

(assert (=> d!991891 d!992789))

(assert (=> d!991891 d!992715))

(declare-fun d!992791 () Bool)

(declare-fun lt!1171852 () Int)

(assert (=> d!992791 (= lt!1171852 (size!28108 (list!13486 (_1!21515 lt!1170984))))))

(assert (=> d!992791 (= lt!1171852 (size!28109 (c!590468 (_1!21515 lt!1170984))))))

(assert (=> d!992791 (= (size!28104 (_1!21515 lt!1170984)) lt!1171852)))

(declare-fun bs!559864 () Bool)

(assert (= bs!559864 d!992791))

(declare-fun m!3849713 () Bool)

(assert (=> bs!559864 m!3849713))

(assert (=> bs!559864 m!3849713))

(declare-fun m!3849715 () Bool)

(assert (=> bs!559864 m!3849715))

(declare-fun m!3849717 () Bool)

(assert (=> bs!559864 m!3849717))

(assert (=> d!991891 d!992791))

(assert (=> d!991891 d!992713))

(assert (=> d!991891 d!991889))

(assert (=> d!991891 d!992711))

(assert (=> b!3450424 d!992097))

(declare-fun b!3451918 () Bool)

(declare-fun e!2138184 () Bool)

(assert (=> b!3451918 (= e!2138184 (inv!15 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(declare-fun b!3451919 () Bool)

(declare-fun e!2138185 () Bool)

(declare-fun e!2138183 () Bool)

(assert (=> b!3451919 (= e!2138185 e!2138183)))

(declare-fun c!590967 () Bool)

(assert (=> b!3451919 (= c!590967 ((_ is IntegerValue!16951) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(declare-fun b!3451920 () Bool)

(assert (=> b!3451920 (= e!2138185 (inv!16 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(declare-fun d!992793 () Bool)

(declare-fun c!590966 () Bool)

(assert (=> d!992793 (= c!590966 ((_ is IntegerValue!16950) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(assert (=> d!992793 (= (inv!21 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)) e!2138185)))

(declare-fun b!3451921 () Bool)

(declare-fun res!1391978 () Bool)

(assert (=> b!3451921 (=> res!1391978 e!2138184)))

(assert (=> b!3451921 (= res!1391978 (not ((_ is IntegerValue!16952) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946))))))

(assert (=> b!3451921 (= e!2138183 e!2138184)))

(declare-fun b!3451922 () Bool)

(assert (=> b!3451922 (= e!2138183 (inv!17 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) lt!1170946)))))

(assert (= (and d!992793 c!590966) b!3451920))

(assert (= (and d!992793 (not c!590966)) b!3451919))

(assert (= (and b!3451919 c!590967) b!3451922))

(assert (= (and b!3451919 (not c!590967)) b!3451921))

(assert (= (and b!3451921 (not res!1391978)) b!3451918))

(declare-fun m!3849719 () Bool)

(assert (=> b!3451918 m!3849719))

(declare-fun m!3849721 () Bool)

(assert (=> b!3451920 m!3849721))

(declare-fun m!3849723 () Bool)

(assert (=> b!3451922 m!3849723))

(assert (=> tb!187665 d!992793))

(declare-fun d!992795 () Bool)

(assert (=> d!992795 (= (isEmpty!21406 lt!1170929) (not ((_ is Some!7484) lt!1170929)))))

(assert (=> d!992083 d!992795))

(declare-fun d!992797 () Bool)

(assert (=> d!992797 (= (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))) (v!36758 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))

(assert (=> b!3450482 d!992797))

(assert (=> b!3450482 d!992055))

(declare-fun b!3451923 () Bool)

(declare-fun e!2138187 () Bool)

(declare-fun lt!1171853 () Bool)

(declare-fun call!249187 () Bool)

(assert (=> b!3451923 (= e!2138187 (= lt!1171853 call!249187))))

(declare-fun b!3451924 () Bool)

(declare-fun res!1391981 () Bool)

(declare-fun e!2138188 () Bool)

(assert (=> b!3451924 (=> (not res!1391981) (not e!2138188))))

(assert (=> b!3451924 (= res!1391981 (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 separatorToken!241)))))))

(declare-fun b!3451925 () Bool)

(declare-fun e!2138192 () Bool)

(assert (=> b!3451925 (= e!2138192 (matchR!4763 (derivativeStep!3031 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))) (head!7289 (list!13483 (charsOf!3434 separatorToken!241)))) (tail!5411 (list!13483 (charsOf!3434 separatorToken!241)))))))

(declare-fun b!3451926 () Bool)

(assert (=> b!3451926 (= e!2138188 (= (head!7289 (list!13483 (charsOf!3434 separatorToken!241))) (c!590466 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))))

(declare-fun b!3451928 () Bool)

(declare-fun res!1391980 () Bool)

(declare-fun e!2138190 () Bool)

(assert (=> b!3451928 (=> res!1391980 e!2138190)))

(assert (=> b!3451928 (= res!1391980 e!2138188)))

(declare-fun res!1391979 () Bool)

(assert (=> b!3451928 (=> (not res!1391979) (not e!2138188))))

(assert (=> b!3451928 (= res!1391979 lt!1171853)))

(declare-fun b!3451929 () Bool)

(assert (=> b!3451929 (= e!2138192 (nullable!3478 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3451930 () Bool)

(declare-fun res!1391982 () Bool)

(assert (=> b!3451930 (=> (not res!1391982) (not e!2138188))))

(assert (=> b!3451930 (= res!1391982 (not call!249187))))

(declare-fun b!3451931 () Bool)

(declare-fun e!2138186 () Bool)

(assert (=> b!3451931 (= e!2138187 e!2138186)))

(declare-fun c!590969 () Bool)

(assert (=> b!3451931 (= c!590969 ((_ is EmptyLang!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3451932 () Bool)

(declare-fun res!1391986 () Bool)

(assert (=> b!3451932 (=> res!1391986 e!2138190)))

(assert (=> b!3451932 (= res!1391986 (not ((_ is ElementMatch!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))))

(assert (=> b!3451932 (= e!2138186 e!2138190)))

(declare-fun d!992799 () Bool)

(assert (=> d!992799 e!2138187))

(declare-fun c!590970 () Bool)

(assert (=> d!992799 (= c!590970 ((_ is EmptyExpr!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))))

(assert (=> d!992799 (= lt!1171853 e!2138192)))

(declare-fun c!590968 () Bool)

(assert (=> d!992799 (= c!590968 (isEmpty!21402 (list!13483 (charsOf!3434 separatorToken!241))))))

(assert (=> d!992799 (validRegex!4634 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))))))

(assert (=> d!992799 (= (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241))))) (list!13483 (charsOf!3434 separatorToken!241))) lt!1171853)))

(declare-fun e!2138191 () Bool)

(declare-fun b!3451927 () Bool)

(assert (=> b!3451927 (= e!2138191 (not (= (head!7289 (list!13483 (charsOf!3434 separatorToken!241))) (c!590466 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 separatorToken!241)))))))))))

(declare-fun b!3451933 () Bool)

(assert (=> b!3451933 (= e!2138186 (not lt!1171853))))

(declare-fun bm!249182 () Bool)

(assert (=> bm!249182 (= call!249187 (isEmpty!21402 (list!13483 (charsOf!3434 separatorToken!241))))))

(declare-fun b!3451934 () Bool)

(declare-fun res!1391985 () Bool)

(assert (=> b!3451934 (=> res!1391985 e!2138191)))

(assert (=> b!3451934 (= res!1391985 (not (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun b!3451935 () Bool)

(declare-fun e!2138189 () Bool)

(assert (=> b!3451935 (= e!2138189 e!2138191)))

(declare-fun res!1391983 () Bool)

(assert (=> b!3451935 (=> res!1391983 e!2138191)))

(assert (=> b!3451935 (= res!1391983 call!249187)))

(declare-fun b!3451936 () Bool)

(assert (=> b!3451936 (= e!2138190 e!2138189)))

(declare-fun res!1391984 () Bool)

(assert (=> b!3451936 (=> (not res!1391984) (not e!2138189))))

(assert (=> b!3451936 (= res!1391984 (not lt!1171853))))

(assert (= (and d!992799 c!590968) b!3451929))

(assert (= (and d!992799 (not c!590968)) b!3451925))

(assert (= (and d!992799 c!590970) b!3451923))

(assert (= (and d!992799 (not c!590970)) b!3451931))

(assert (= (and b!3451931 c!590969) b!3451933))

(assert (= (and b!3451931 (not c!590969)) b!3451932))

(assert (= (and b!3451932 (not res!1391986)) b!3451928))

(assert (= (and b!3451928 res!1391979) b!3451930))

(assert (= (and b!3451930 res!1391982) b!3451924))

(assert (= (and b!3451924 res!1391981) b!3451926))

(assert (= (and b!3451928 (not res!1391980)) b!3451936))

(assert (= (and b!3451936 res!1391984) b!3451935))

(assert (= (and b!3451935 (not res!1391983)) b!3451934))

(assert (= (and b!3451934 (not res!1391985)) b!3451927))

(assert (= (or b!3451923 b!3451930 b!3451935) bm!249182))

(assert (=> b!3451926 m!3846895))

(declare-fun m!3849725 () Bool)

(assert (=> b!3451926 m!3849725))

(assert (=> bm!249182 m!3846895))

(declare-fun m!3849727 () Bool)

(assert (=> bm!249182 m!3849727))

(assert (=> b!3451934 m!3846895))

(declare-fun m!3849729 () Bool)

(assert (=> b!3451934 m!3849729))

(assert (=> b!3451934 m!3849729))

(declare-fun m!3849731 () Bool)

(assert (=> b!3451934 m!3849731))

(assert (=> d!992799 m!3846895))

(assert (=> d!992799 m!3849727))

(declare-fun m!3849733 () Bool)

(assert (=> d!992799 m!3849733))

(assert (=> b!3451927 m!3846895))

(assert (=> b!3451927 m!3849725))

(declare-fun m!3849735 () Bool)

(assert (=> b!3451929 m!3849735))

(assert (=> b!3451924 m!3846895))

(assert (=> b!3451924 m!3849729))

(assert (=> b!3451924 m!3849729))

(assert (=> b!3451924 m!3849731))

(assert (=> b!3451925 m!3846895))

(assert (=> b!3451925 m!3849725))

(assert (=> b!3451925 m!3849725))

(declare-fun m!3849737 () Bool)

(assert (=> b!3451925 m!3849737))

(assert (=> b!3451925 m!3846895))

(assert (=> b!3451925 m!3849729))

(assert (=> b!3451925 m!3849737))

(assert (=> b!3451925 m!3849729))

(declare-fun m!3849739 () Bool)

(assert (=> b!3451925 m!3849739))

(assert (=> b!3450482 d!992799))

(assert (=> b!3450482 d!991927))

(assert (=> b!3450482 d!991939))

(declare-fun b!3451939 () Bool)

(declare-fun res!1391987 () Bool)

(declare-fun e!2138194 () Bool)

(assert (=> b!3451939 (=> (not res!1391987) (not e!2138194))))

(declare-fun lt!1171854 () List!37203)

(assert (=> b!3451939 (= res!1391987 (= (size!28101 lt!1171854) (+ (size!28101 (t!271612 (++!9125 lt!1170951 lt!1170945))) (size!28101 lt!1170933))))))

(declare-fun b!3451940 () Bool)

(assert (=> b!3451940 (= e!2138194 (or (not (= lt!1170933 Nil!37079)) (= lt!1171854 (t!271612 (++!9125 lt!1170951 lt!1170945)))))))

(declare-fun d!992801 () Bool)

(assert (=> d!992801 e!2138194))

(declare-fun res!1391988 () Bool)

(assert (=> d!992801 (=> (not res!1391988) (not e!2138194))))

(assert (=> d!992801 (= res!1391988 (= (content!5161 lt!1171854) ((_ map or) (content!5161 (t!271612 (++!9125 lt!1170951 lt!1170945))) (content!5161 lt!1170933))))))

(declare-fun e!2138193 () List!37203)

(assert (=> d!992801 (= lt!1171854 e!2138193)))

(declare-fun c!590971 () Bool)

(assert (=> d!992801 (= c!590971 ((_ is Nil!37079) (t!271612 (++!9125 lt!1170951 lt!1170945))))))

(assert (=> d!992801 (= (++!9125 (t!271612 (++!9125 lt!1170951 lt!1170945)) lt!1170933) lt!1171854)))

(declare-fun b!3451937 () Bool)

(assert (=> b!3451937 (= e!2138193 lt!1170933)))

(declare-fun b!3451938 () Bool)

(assert (=> b!3451938 (= e!2138193 (Cons!37079 (h!42499 (t!271612 (++!9125 lt!1170951 lt!1170945))) (++!9125 (t!271612 (t!271612 (++!9125 lt!1170951 lt!1170945))) lt!1170933)))))

(assert (= (and d!992801 c!590971) b!3451937))

(assert (= (and d!992801 (not c!590971)) b!3451938))

(assert (= (and d!992801 res!1391988) b!3451939))

(assert (= (and b!3451939 res!1391987) b!3451940))

(declare-fun m!3849741 () Bool)

(assert (=> b!3451939 m!3849741))

(declare-fun m!3849743 () Bool)

(assert (=> b!3451939 m!3849743))

(assert (=> b!3451939 m!3847131))

(declare-fun m!3849745 () Bool)

(assert (=> d!992801 m!3849745))

(assert (=> d!992801 m!3848783))

(assert (=> d!992801 m!3847137))

(declare-fun m!3849747 () Bool)

(assert (=> b!3451938 m!3849747))

(assert (=> b!3450145 d!992801))

(declare-fun d!992803 () Bool)

(assert (=> d!992803 (= (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))) (isBalanced!3403 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(declare-fun bs!559865 () Bool)

(assert (= bs!559865 d!992803))

(declare-fun m!3849749 () Bool)

(assert (=> bs!559865 m!3849749))

(assert (=> tb!187641 d!992803))

(declare-fun d!992805 () Bool)

(assert (=> d!992805 (dynLambda!15569 lambda!121525 (h!42500 (t!271613 tokens!494)))))

(assert (=> d!992805 true))

(declare-fun _$7!1289 () Unit!52398)

(assert (=> d!992805 (= (choose!19922 tokens!494 lambda!121525 (h!42500 (t!271613 tokens!494))) _$7!1289)))

(declare-fun b_lambda!99117 () Bool)

(assert (=> (not b_lambda!99117) (not d!992805)))

(declare-fun bs!559866 () Bool)

(assert (= bs!559866 d!992805))

(assert (=> bs!559866 m!3847153))

(assert (=> d!991913 d!992805))

(assert (=> d!991913 d!992035))

(declare-fun d!992807 () Bool)

(declare-fun lt!1171855 () Int)

(assert (=> d!992807 (>= lt!1171855 0)))

(declare-fun e!2138195 () Int)

(assert (=> d!992807 (= lt!1171855 e!2138195)))

(declare-fun c!590972 () Bool)

(assert (=> d!992807 (= c!590972 ((_ is Nil!37079) (originalCharacters!6134 separatorToken!241)))))

(assert (=> d!992807 (= (size!28101 (originalCharacters!6134 separatorToken!241)) lt!1171855)))

(declare-fun b!3451941 () Bool)

(assert (=> b!3451941 (= e!2138195 0)))

(declare-fun b!3451942 () Bool)

(assert (=> b!3451942 (= e!2138195 (+ 1 (size!28101 (t!271612 (originalCharacters!6134 separatorToken!241)))))))

(assert (= (and d!992807 c!590972) b!3451941))

(assert (= (and d!992807 (not c!590972)) b!3451942))

(declare-fun m!3849751 () Bool)

(assert (=> b!3451942 m!3849751))

(assert (=> b!3450229 d!992807))

(declare-fun d!992809 () Bool)

(declare-fun c!590973 () Bool)

(assert (=> d!992809 (= c!590973 ((_ is Nil!37079) lt!1171092))))

(declare-fun e!2138196 () (InoxSet C!20544))

(assert (=> d!992809 (= (content!5161 lt!1171092) e!2138196)))

(declare-fun b!3451943 () Bool)

(assert (=> b!3451943 (= e!2138196 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451944 () Bool)

(assert (=> b!3451944 (= e!2138196 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1171092) true) (content!5161 (t!271612 lt!1171092))))))

(assert (= (and d!992809 c!590973) b!3451943))

(assert (= (and d!992809 (not c!590973)) b!3451944))

(declare-fun m!3849753 () Bool)

(assert (=> b!3451944 m!3849753))

(declare-fun m!3849755 () Bool)

(assert (=> b!3451944 m!3849755))

(assert (=> d!992037 d!992809))

(declare-fun d!992811 () Bool)

(declare-fun c!590974 () Bool)

(assert (=> d!992811 (= c!590974 ((_ is Nil!37079) lt!1170951))))

(declare-fun e!2138197 () (InoxSet C!20544))

(assert (=> d!992811 (= (content!5161 lt!1170951) e!2138197)))

(declare-fun b!3451945 () Bool)

(assert (=> b!3451945 (= e!2138197 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451946 () Bool)

(assert (=> b!3451946 (= e!2138197 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170951) true) (content!5161 (t!271612 lt!1170951))))))

(assert (= (and d!992811 c!590974) b!3451945))

(assert (= (and d!992811 (not c!590974)) b!3451946))

(declare-fun m!3849757 () Bool)

(assert (=> b!3451946 m!3849757))

(declare-fun m!3849759 () Bool)

(assert (=> b!3451946 m!3849759))

(assert (=> d!992037 d!992811))

(declare-fun d!992813 () Bool)

(declare-fun c!590975 () Bool)

(assert (=> d!992813 (= c!590975 ((_ is Nil!37079) lt!1170944))))

(declare-fun e!2138198 () (InoxSet C!20544))

(assert (=> d!992813 (= (content!5161 lt!1170944) e!2138198)))

(declare-fun b!3451947 () Bool)

(assert (=> b!3451947 (= e!2138198 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3451948 () Bool)

(assert (=> b!3451948 (= e!2138198 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170944) true) (content!5161 (t!271612 lt!1170944))))))

(assert (= (and d!992813 c!590975) b!3451947))

(assert (= (and d!992813 (not c!590975)) b!3451948))

(declare-fun m!3849761 () Bool)

(assert (=> b!3451948 m!3849761))

(declare-fun m!3849763 () Bool)

(assert (=> b!3451948 m!3849763))

(assert (=> d!992037 d!992813))

(declare-fun d!992815 () Bool)

(assert (=> d!992815 (= (isEmpty!21406 lt!1170943) (not ((_ is Some!7484) lt!1170943)))))

(assert (=> d!992071 d!992815))

(assert (=> b!3450089 d!992617))

(assert (=> b!3450089 d!992619))

(declare-fun d!992817 () Bool)

(assert (=> d!992817 (= (isEmpty!21402 (originalCharacters!6134 (h!42500 tokens!494))) ((_ is Nil!37079) (originalCharacters!6134 (h!42500 tokens!494))))))

(assert (=> d!992025 d!992817))

(assert (=> b!3450205 d!992423))

(declare-fun d!992819 () Bool)

(assert (=> d!992819 (= (inv!16 (value!174930 separatorToken!241)) (= (charsToInt!0 (text!39997 (value!174930 separatorToken!241))) (value!174921 (value!174930 separatorToken!241))))))

(declare-fun bs!559867 () Bool)

(assert (= bs!559867 d!992819))

(declare-fun m!3849765 () Bool)

(assert (=> bs!559867 m!3849765))

(assert (=> b!3450133 d!992819))

(assert (=> d!992043 d!992379))

(declare-fun bm!249183 () Bool)

(declare-fun call!249190 () Bool)

(declare-fun c!590976 () Bool)

(assert (=> bm!249183 (= call!249190 (validRegex!4634 (ite c!590976 (regOne!20871 (regex!5420 lt!1170938)) (regOne!20870 (regex!5420 lt!1170938)))))))

(declare-fun d!992821 () Bool)

(declare-fun res!1391993 () Bool)

(declare-fun e!2138201 () Bool)

(assert (=> d!992821 (=> res!1391993 e!2138201)))

(assert (=> d!992821 (= res!1391993 ((_ is ElementMatch!10179) (regex!5420 lt!1170938)))))

(assert (=> d!992821 (= (validRegex!4634 (regex!5420 lt!1170938)) e!2138201)))

(declare-fun b!3451949 () Bool)

(declare-fun res!1391991 () Bool)

(declare-fun e!2138203 () Bool)

(assert (=> b!3451949 (=> res!1391991 e!2138203)))

(assert (=> b!3451949 (= res!1391991 (not ((_ is Concat!15829) (regex!5420 lt!1170938))))))

(declare-fun e!2138202 () Bool)

(assert (=> b!3451949 (= e!2138202 e!2138203)))

(declare-fun call!249189 () Bool)

(declare-fun bm!249184 () Bool)

(declare-fun c!590977 () Bool)

(assert (=> bm!249184 (= call!249189 (validRegex!4634 (ite c!590977 (reg!10508 (regex!5420 lt!1170938)) (ite c!590976 (regTwo!20871 (regex!5420 lt!1170938)) (regTwo!20870 (regex!5420 lt!1170938))))))))

(declare-fun b!3451950 () Bool)

(declare-fun e!2138200 () Bool)

(declare-fun call!249188 () Bool)

(assert (=> b!3451950 (= e!2138200 call!249188)))

(declare-fun b!3451951 () Bool)

(declare-fun res!1391990 () Bool)

(declare-fun e!2138205 () Bool)

(assert (=> b!3451951 (=> (not res!1391990) (not e!2138205))))

(assert (=> b!3451951 (= res!1391990 call!249190)))

(assert (=> b!3451951 (= e!2138202 e!2138205)))

(declare-fun b!3451952 () Bool)

(assert (=> b!3451952 (= e!2138205 call!249188)))

(declare-fun bm!249185 () Bool)

(assert (=> bm!249185 (= call!249188 call!249189)))

(declare-fun b!3451953 () Bool)

(declare-fun e!2138204 () Bool)

(declare-fun e!2138199 () Bool)

(assert (=> b!3451953 (= e!2138204 e!2138199)))

(declare-fun res!1391992 () Bool)

(assert (=> b!3451953 (= res!1391992 (not (nullable!3478 (reg!10508 (regex!5420 lt!1170938)))))))

(assert (=> b!3451953 (=> (not res!1391992) (not e!2138199))))

(declare-fun b!3451954 () Bool)

(assert (=> b!3451954 (= e!2138201 e!2138204)))

(assert (=> b!3451954 (= c!590977 ((_ is Star!10179) (regex!5420 lt!1170938)))))

(declare-fun b!3451955 () Bool)

(assert (=> b!3451955 (= e!2138204 e!2138202)))

(assert (=> b!3451955 (= c!590976 ((_ is Union!10179) (regex!5420 lt!1170938)))))

(declare-fun b!3451956 () Bool)

(assert (=> b!3451956 (= e!2138203 e!2138200)))

(declare-fun res!1391989 () Bool)

(assert (=> b!3451956 (=> (not res!1391989) (not e!2138200))))

(assert (=> b!3451956 (= res!1391989 call!249190)))

(declare-fun b!3451957 () Bool)

(assert (=> b!3451957 (= e!2138199 call!249189)))

(assert (= (and d!992821 (not res!1391993)) b!3451954))

(assert (= (and b!3451954 c!590977) b!3451953))

(assert (= (and b!3451954 (not c!590977)) b!3451955))

(assert (= (and b!3451953 res!1391992) b!3451957))

(assert (= (and b!3451955 c!590976) b!3451951))

(assert (= (and b!3451955 (not c!590976)) b!3451949))

(assert (= (and b!3451951 res!1391990) b!3451952))

(assert (= (and b!3451949 (not res!1391991)) b!3451956))

(assert (= (and b!3451956 res!1391989) b!3451950))

(assert (= (or b!3451952 b!3451950) bm!249185))

(assert (= (or b!3451951 b!3451956) bm!249183))

(assert (= (or b!3451957 bm!249185) bm!249184))

(declare-fun m!3849767 () Bool)

(assert (=> bm!249183 m!3849767))

(declare-fun m!3849769 () Bool)

(assert (=> bm!249184 m!3849769))

(declare-fun m!3849771 () Bool)

(assert (=> b!3451953 m!3849771))

(assert (=> d!992043 d!992821))

(declare-fun d!992823 () Bool)

(declare-fun lt!1171856 () Bool)

(assert (=> d!992823 (= lt!1171856 (select (content!5162 tokens!494) (h!42500 (t!271613 tokens!494))))))

(declare-fun e!2138207 () Bool)

(assert (=> d!992823 (= lt!1171856 e!2138207)))

(declare-fun res!1391995 () Bool)

(assert (=> d!992823 (=> (not res!1391995) (not e!2138207))))

(assert (=> d!992823 (= res!1391995 ((_ is Cons!37080) tokens!494))))

(assert (=> d!992823 (= (contains!6845 tokens!494 (h!42500 (t!271613 tokens!494))) lt!1171856)))

(declare-fun b!3451958 () Bool)

(declare-fun e!2138206 () Bool)

(assert (=> b!3451958 (= e!2138207 e!2138206)))

(declare-fun res!1391994 () Bool)

(assert (=> b!3451958 (=> res!1391994 e!2138206)))

(assert (=> b!3451958 (= res!1391994 (= (h!42500 tokens!494) (h!42500 (t!271613 tokens!494))))))

(declare-fun b!3451959 () Bool)

(assert (=> b!3451959 (= e!2138206 (contains!6845 (t!271613 tokens!494) (h!42500 (t!271613 tokens!494))))))

(assert (= (and d!992823 res!1391995) b!3451958))

(assert (= (and b!3451958 (not res!1391994)) b!3451959))

(assert (=> d!992823 m!3848815))

(declare-fun m!3849773 () Bool)

(assert (=> d!992823 m!3849773))

(declare-fun m!3849775 () Bool)

(assert (=> b!3451959 m!3849775))

(assert (=> b!3450154 d!992823))

(declare-fun d!992825 () Bool)

(assert (=> d!992825 (= (nullable!3478 (reg!10508 (regex!5420 (rule!8000 separatorToken!241)))) (nullableFct!1008 (reg!10508 (regex!5420 (rule!8000 separatorToken!241)))))))

(declare-fun bs!559868 () Bool)

(assert (= bs!559868 d!992825))

(declare-fun m!3849777 () Bool)

(assert (=> bs!559868 m!3849777))

(assert (=> b!3450641 d!992825))

(declare-fun d!992827 () Bool)

(declare-fun lt!1171857 () Int)

(assert (=> d!992827 (>= lt!1171857 0)))

(declare-fun e!2138208 () Int)

(assert (=> d!992827 (= lt!1171857 e!2138208)))

(declare-fun c!590978 () Bool)

(assert (=> d!992827 (= c!590978 ((_ is Nil!37079) lt!1171005))))

(assert (=> d!992827 (= (size!28101 lt!1171005) lt!1171857)))

(declare-fun b!3451960 () Bool)

(assert (=> b!3451960 (= e!2138208 0)))

(declare-fun b!3451961 () Bool)

(assert (=> b!3451961 (= e!2138208 (+ 1 (size!28101 (t!271612 lt!1171005))))))

(assert (= (and d!992827 c!590978) b!3451960))

(assert (= (and d!992827 (not c!590978)) b!3451961))

(declare-fun m!3849779 () Bool)

(assert (=> b!3451961 m!3849779))

(assert (=> b!3450192 d!992827))

(declare-fun d!992829 () Bool)

(declare-fun lt!1171858 () Int)

(assert (=> d!992829 (>= lt!1171858 0)))

(declare-fun e!2138209 () Int)

(assert (=> d!992829 (= lt!1171858 e!2138209)))

(declare-fun c!590979 () Bool)

(assert (=> d!992829 (= c!590979 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!992829 (= (size!28101 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) lt!1171858)))

(declare-fun b!3451962 () Bool)

(assert (=> b!3451962 (= e!2138209 0)))

(declare-fun b!3451963 () Bool)

(assert (=> b!3451963 (= e!2138209 (+ 1 (size!28101 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))))

(assert (= (and d!992829 c!590979) b!3451962))

(assert (= (and d!992829 (not c!590979)) b!3451963))

(assert (=> b!3451963 m!3849317))

(assert (=> b!3450192 d!992829))

(assert (=> b!3450192 d!992623))

(assert (=> b!3450082 d!992769))

(declare-fun d!992831 () Bool)

(assert (=> d!992831 (= (inv!17 (value!174930 (h!42500 tokens!494))) (= (charsToBigInt!1 (text!39998 (value!174930 (h!42500 tokens!494)))) (value!174922 (value!174930 (h!42500 tokens!494)))))))

(declare-fun bs!559869 () Bool)

(assert (= bs!559869 d!992831))

(declare-fun m!3849781 () Bool)

(assert (=> bs!559869 m!3849781))

(assert (=> b!3450397 d!992831))

(declare-fun d!992833 () Bool)

(declare-fun lt!1171859 () Bool)

(assert (=> d!992833 (= lt!1171859 (isEmpty!21402 (list!13483 (_2!21515 lt!1171175))))))

(assert (=> d!992833 (= lt!1171859 (isEmpty!21409 (c!590467 (_2!21515 lt!1171175))))))

(assert (=> d!992833 (= (isEmpty!21403 (_2!21515 lt!1171175)) lt!1171859)))

(declare-fun bs!559870 () Bool)

(assert (= bs!559870 d!992833))

(declare-fun m!3849783 () Bool)

(assert (=> bs!559870 m!3849783))

(assert (=> bs!559870 m!3849783))

(declare-fun m!3849785 () Bool)

(assert (=> bs!559870 m!3849785))

(declare-fun m!3849787 () Bool)

(assert (=> bs!559870 m!3849787))

(assert (=> b!3450617 d!992833))

(declare-fun d!992835 () Bool)

(declare-fun lt!1171860 () Int)

(assert (=> d!992835 (>= lt!1171860 0)))

(declare-fun e!2138210 () Int)

(assert (=> d!992835 (= lt!1171860 e!2138210)))

(declare-fun c!590980 () Bool)

(assert (=> d!992835 (= c!590980 ((_ is Nil!37079) lt!1171000))))

(assert (=> d!992835 (= (size!28101 lt!1171000) lt!1171860)))

(declare-fun b!3451964 () Bool)

(assert (=> b!3451964 (= e!2138210 0)))

(declare-fun b!3451965 () Bool)

(assert (=> b!3451965 (= e!2138210 (+ 1 (size!28101 (t!271612 lt!1171000))))))

(assert (= (and d!992835 c!590980) b!3451964))

(assert (= (and d!992835 (not c!590980)) b!3451965))

(declare-fun m!3849789 () Bool)

(assert (=> b!3451965 m!3849789))

(assert (=> b!3450179 d!992835))

(declare-fun d!992837 () Bool)

(declare-fun lt!1171861 () Int)

(assert (=> d!992837 (>= lt!1171861 0)))

(declare-fun e!2138211 () Int)

(assert (=> d!992837 (= lt!1171861 e!2138211)))

(declare-fun c!590981 () Bool)

(assert (=> d!992837 (= c!590981 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))

(assert (=> d!992837 (= (size!28101 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) lt!1171861)))

(declare-fun b!3451966 () Bool)

(assert (=> b!3451966 (= e!2138211 0)))

(declare-fun b!3451967 () Bool)

(assert (=> b!3451967 (= e!2138211 (+ 1 (size!28101 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))))

(assert (= (and d!992837 c!590981) b!3451966))

(assert (= (and d!992837 (not c!590981)) b!3451967))

(declare-fun m!3849791 () Bool)

(assert (=> b!3451967 m!3849791))

(assert (=> b!3450179 d!992837))

(declare-fun d!992839 () Bool)

(declare-fun lt!1171862 () Int)

(assert (=> d!992839 (>= lt!1171862 0)))

(declare-fun e!2138212 () Int)

(assert (=> d!992839 (= lt!1171862 e!2138212)))

(declare-fun c!590982 () Bool)

(assert (=> d!992839 (= c!590982 ((_ is Nil!37079) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))

(assert (=> d!992839 (= (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) lt!1171862)))

(declare-fun b!3451968 () Bool)

(assert (=> b!3451968 (= e!2138212 0)))

(declare-fun b!3451969 () Bool)

(assert (=> b!3451969 (= e!2138212 (+ 1 (size!28101 (t!271612 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(assert (= (and d!992839 c!590982) b!3451968))

(assert (= (and d!992839 (not c!590982)) b!3451969))

(declare-fun m!3849793 () Bool)

(assert (=> b!3451969 m!3849793))

(assert (=> b!3450179 d!992839))

(declare-fun d!992841 () Bool)

(assert (=> d!992841 (= (list!13483 lt!1171009) (list!13487 (c!590467 lt!1171009)))))

(declare-fun bs!559871 () Bool)

(assert (= bs!559871 d!992841))

(declare-fun m!3849795 () Bool)

(assert (=> bs!559871 m!3849795))

(assert (=> d!991943 d!992841))

(declare-fun d!992843 () Bool)

(declare-fun c!590983 () Bool)

(assert (=> d!992843 (= c!590983 ((_ is Cons!37080) (list!13486 lt!1170931)))))

(declare-fun e!2138213 () List!37203)

(assert (=> d!992843 (= (printList!1557 thiss!18206 (list!13486 lt!1170931)) e!2138213)))

(declare-fun b!3451970 () Bool)

(assert (=> b!3451970 (= e!2138213 (++!9125 (list!13483 (charsOf!3434 (h!42500 (list!13486 lt!1170931)))) (printList!1557 thiss!18206 (t!271613 (list!13486 lt!1170931)))))))

(declare-fun b!3451971 () Bool)

(assert (=> b!3451971 (= e!2138213 Nil!37079)))

(assert (= (and d!992843 c!590983) b!3451970))

(assert (= (and d!992843 (not c!590983)) b!3451971))

(declare-fun m!3849797 () Bool)

(assert (=> b!3451970 m!3849797))

(assert (=> b!3451970 m!3849797))

(declare-fun m!3849799 () Bool)

(assert (=> b!3451970 m!3849799))

(declare-fun m!3849801 () Bool)

(assert (=> b!3451970 m!3849801))

(assert (=> b!3451970 m!3849799))

(assert (=> b!3451970 m!3849801))

(declare-fun m!3849803 () Bool)

(assert (=> b!3451970 m!3849803))

(assert (=> d!991943 d!992843))

(assert (=> d!991943 d!992365))

(assert (=> d!991943 d!991947))

(declare-fun d!992845 () Bool)

(declare-fun res!1391996 () Bool)

(declare-fun e!2138214 () Bool)

(assert (=> d!992845 (=> res!1391996 e!2138214)))

(assert (=> d!992845 (= res!1391996 (not ((_ is Cons!37081) (t!271614 rules!2135))))))

(assert (=> d!992845 (= (sepAndNonSepRulesDisjointChars!1614 rules!2135 (t!271614 rules!2135)) e!2138214)))

(declare-fun b!3451972 () Bool)

(declare-fun e!2138215 () Bool)

(assert (=> b!3451972 (= e!2138214 e!2138215)))

(declare-fun res!1391997 () Bool)

(assert (=> b!3451972 (=> (not res!1391997) (not e!2138215))))

(assert (=> b!3451972 (= res!1391997 (ruleDisjointCharsFromAllFromOtherType!709 (h!42501 (t!271614 rules!2135)) rules!2135))))

(declare-fun b!3451973 () Bool)

(assert (=> b!3451973 (= e!2138215 (sepAndNonSepRulesDisjointChars!1614 rules!2135 (t!271614 (t!271614 rules!2135))))))

(assert (= (and d!992845 (not res!1391996)) b!3451972))

(assert (= (and b!3451972 res!1391997) b!3451973))

(declare-fun m!3849805 () Bool)

(assert (=> b!3451972 m!3849805))

(declare-fun m!3849807 () Bool)

(assert (=> b!3451973 m!3849807))

(assert (=> b!3450235 d!992845))

(declare-fun d!992847 () Bool)

(declare-fun res!1391998 () Bool)

(declare-fun e!2138216 () Bool)

(assert (=> d!992847 (=> (not res!1391998) (not e!2138216))))

(assert (=> d!992847 (= res!1391998 (not (isEmpty!21402 (originalCharacters!6134 (h!42500 (t!271613 tokens!494))))))))

(assert (=> d!992847 (= (inv!50239 (h!42500 (t!271613 tokens!494))) e!2138216)))

(declare-fun b!3451974 () Bool)

(declare-fun res!1391999 () Bool)

(assert (=> b!3451974 (=> (not res!1391999) (not e!2138216))))

(assert (=> b!3451974 (= res!1391999 (= (originalCharacters!6134 (h!42500 (t!271613 tokens!494))) (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun b!3451975 () Bool)

(assert (=> b!3451975 (= e!2138216 (= (size!28100 (h!42500 (t!271613 tokens!494))) (size!28101 (originalCharacters!6134 (h!42500 (t!271613 tokens!494))))))))

(assert (= (and d!992847 res!1391998) b!3451974))

(assert (= (and b!3451974 res!1391999) b!3451975))

(declare-fun b_lambda!99119 () Bool)

(assert (=> (not b_lambda!99119) (not b!3451974)))

(assert (=> b!3451974 t!271647))

(declare-fun b_and!242459 () Bool)

(assert (= b_and!242377 (and (=> t!271647 result!231492) b_and!242459)))

(assert (=> b!3451974 t!271706))

(declare-fun b_and!242461 () Bool)

(assert (= b_and!242371 (and (=> t!271706 result!231560) b_and!242461)))

(assert (=> b!3451974 t!271698))

(declare-fun b_and!242463 () Bool)

(assert (= b_and!242379 (and (=> t!271698 result!231550) b_and!242463)))

(assert (=> b!3451974 t!271643))

(declare-fun b_and!242465 () Bool)

(assert (= b_and!242375 (and (=> t!271643 result!231488) b_and!242465)))

(assert (=> b!3451974 t!271645))

(declare-fun b_and!242467 () Bool)

(assert (= b_and!242373 (and (=> t!271645 result!231490) b_and!242467)))

(declare-fun m!3849809 () Bool)

(assert (=> d!992847 m!3849809))

(assert (=> b!3451974 m!3847257))

(assert (=> b!3451974 m!3847257))

(declare-fun m!3849811 () Bool)

(assert (=> b!3451974 m!3849811))

(declare-fun m!3849813 () Bool)

(assert (=> b!3451975 m!3849813))

(assert (=> b!3450691 d!992847))

(declare-fun d!992849 () Bool)

(declare-fun lt!1171863 () Bool)

(assert (=> d!992849 (= lt!1171863 (select (content!5165 rules!2135) (get!11855 lt!1171172)))))

(declare-fun e!2138217 () Bool)

(assert (=> d!992849 (= lt!1171863 e!2138217)))

(declare-fun res!1392001 () Bool)

(assert (=> d!992849 (=> (not res!1392001) (not e!2138217))))

(assert (=> d!992849 (= res!1392001 ((_ is Cons!37081) rules!2135))))

(assert (=> d!992849 (= (contains!6846 rules!2135 (get!11855 lt!1171172)) lt!1171863)))

(declare-fun b!3451976 () Bool)

(declare-fun e!2138218 () Bool)

(assert (=> b!3451976 (= e!2138217 e!2138218)))

(declare-fun res!1392000 () Bool)

(assert (=> b!3451976 (=> res!1392000 e!2138218)))

(assert (=> b!3451976 (= res!1392000 (= (h!42501 rules!2135) (get!11855 lt!1171172)))))

(declare-fun b!3451977 () Bool)

(assert (=> b!3451977 (= e!2138218 (contains!6846 (t!271614 rules!2135) (get!11855 lt!1171172)))))

(assert (= (and d!992849 res!1392001) b!3451976))

(assert (= (and b!3451976 (not res!1392000)) b!3451977))

(assert (=> d!992849 m!3849679))

(assert (=> d!992849 m!3847787))

(declare-fun m!3849815 () Bool)

(assert (=> d!992849 m!3849815))

(assert (=> b!3451977 m!3847787))

(declare-fun m!3849817 () Bool)

(assert (=> b!3451977 m!3849817))

(assert (=> b!3450611 d!992849))

(assert (=> b!3450611 d!992671))

(declare-fun d!992851 () Bool)

(declare-fun c!590984 () Bool)

(assert (=> d!992851 (= c!590984 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(declare-fun e!2138219 () Bool)

(assert (=> d!992851 (= (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))) e!2138219)))

(declare-fun b!3451978 () Bool)

(assert (=> b!3451978 (= e!2138219 (inv!50246 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(declare-fun b!3451979 () Bool)

(declare-fun e!2138220 () Bool)

(assert (=> b!3451979 (= e!2138219 e!2138220)))

(declare-fun res!1392002 () Bool)

(assert (=> b!3451979 (= res!1392002 (not ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))))))

(assert (=> b!3451979 (=> res!1392002 e!2138220)))

(declare-fun b!3451980 () Bool)

(assert (=> b!3451980 (= e!2138220 (inv!50247 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))))))

(assert (= (and d!992851 c!590984) b!3451978))

(assert (= (and d!992851 (not c!590984)) b!3451979))

(assert (= (and b!3451979 (not res!1392002)) b!3451980))

(declare-fun m!3849819 () Bool)

(assert (=> b!3451978 m!3849819))

(declare-fun m!3849821 () Bool)

(assert (=> b!3451980 m!3849821))

(assert (=> b!3450185 d!992851))

(declare-fun d!992853 () Bool)

(assert (=> d!992853 (= (list!13486 lt!1171033) (list!13489 (c!590468 lt!1171033)))))

(declare-fun bs!559872 () Bool)

(assert (= bs!559872 d!992853))

(declare-fun m!3849823 () Bool)

(assert (=> bs!559872 m!3849823))

(assert (=> d!991949 d!992853))

(declare-fun d!992855 () Bool)

(declare-fun e!2138223 () Bool)

(assert (=> d!992855 e!2138223))

(declare-fun res!1392005 () Bool)

(assert (=> d!992855 (=> (not res!1392005) (not e!2138223))))

(declare-fun lt!1171866 () BalanceConc!22046)

(assert (=> d!992855 (= res!1392005 (= (list!13486 lt!1171866) (Cons!37080 (h!42500 tokens!494) Nil!37080)))))

(declare-fun choose!19933 (Token!10206) BalanceConc!22046)

(assert (=> d!992855 (= lt!1171866 (choose!19933 (h!42500 tokens!494)))))

(assert (=> d!992855 (= (singleton!1110 (h!42500 tokens!494)) lt!1171866)))

(declare-fun b!3451983 () Bool)

(assert (=> b!3451983 (= e!2138223 (isBalanced!3401 (c!590468 lt!1171866)))))

(assert (= (and d!992855 res!1392005) b!3451983))

(declare-fun m!3849825 () Bool)

(assert (=> d!992855 m!3849825))

(declare-fun m!3849827 () Bool)

(assert (=> d!992855 m!3849827))

(declare-fun m!3849829 () Bool)

(assert (=> b!3451983 m!3849829))

(assert (=> d!991949 d!992855))

(assert (=> b!3450605 d!992329))

(declare-fun c!590985 () Bool)

(declare-fun call!249193 () Bool)

(declare-fun bm!249186 () Bool)

(assert (=> bm!249186 (= call!249193 (validRegex!4634 (ite c!590985 (regOne!20871 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (regOne!20870 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))))

(declare-fun d!992857 () Bool)

(declare-fun res!1392010 () Bool)

(declare-fun e!2138226 () Bool)

(assert (=> d!992857 (=> res!1392010 e!2138226)))

(assert (=> d!992857 (= res!1392010 ((_ is ElementMatch!10179) (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(assert (=> d!992857 (= (validRegex!4634 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))) e!2138226)))

(declare-fun b!3451984 () Bool)

(declare-fun res!1392008 () Bool)

(declare-fun e!2138228 () Bool)

(assert (=> b!3451984 (=> res!1392008 e!2138228)))

(assert (=> b!3451984 (= res!1392008 (not ((_ is Concat!15829) (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))

(declare-fun e!2138227 () Bool)

(assert (=> b!3451984 (= e!2138227 e!2138228)))

(declare-fun c!590986 () Bool)

(declare-fun bm!249187 () Bool)

(declare-fun call!249192 () Bool)

(assert (=> bm!249187 (= call!249192 (validRegex!4634 (ite c!590986 (reg!10508 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (ite c!590985 (regTwo!20871 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))) (regTwo!20870 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))))))))))

(declare-fun b!3451985 () Bool)

(declare-fun e!2138225 () Bool)

(declare-fun call!249191 () Bool)

(assert (=> b!3451985 (= e!2138225 call!249191)))

(declare-fun b!3451986 () Bool)

(declare-fun res!1392007 () Bool)

(declare-fun e!2138230 () Bool)

(assert (=> b!3451986 (=> (not res!1392007) (not e!2138230))))

(assert (=> b!3451986 (= res!1392007 call!249193)))

(assert (=> b!3451986 (= e!2138227 e!2138230)))

(declare-fun b!3451987 () Bool)

(assert (=> b!3451987 (= e!2138230 call!249191)))

(declare-fun bm!249188 () Bool)

(assert (=> bm!249188 (= call!249191 call!249192)))

(declare-fun b!3451988 () Bool)

(declare-fun e!2138229 () Bool)

(declare-fun e!2138224 () Bool)

(assert (=> b!3451988 (= e!2138229 e!2138224)))

(declare-fun res!1392009 () Bool)

(assert (=> b!3451988 (= res!1392009 (not (nullable!3478 (reg!10508 (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))))

(assert (=> b!3451988 (=> (not res!1392009) (not e!2138224))))

(declare-fun b!3451989 () Bool)

(assert (=> b!3451989 (= e!2138226 e!2138229)))

(assert (=> b!3451989 (= c!590986 ((_ is Star!10179) (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3451990 () Bool)

(assert (=> b!3451990 (= e!2138229 e!2138227)))

(assert (=> b!3451990 (= c!590985 ((_ is Union!10179) (ite c!590616 (reg!10508 (regex!5420 (rule!8000 separatorToken!241))) (ite c!590615 (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241)))))))))

(declare-fun b!3451991 () Bool)

(assert (=> b!3451991 (= e!2138228 e!2138225)))

(declare-fun res!1392006 () Bool)

(assert (=> b!3451991 (=> (not res!1392006) (not e!2138225))))

(assert (=> b!3451991 (= res!1392006 call!249193)))

(declare-fun b!3451992 () Bool)

(assert (=> b!3451992 (= e!2138224 call!249192)))

(assert (= (and d!992857 (not res!1392010)) b!3451989))

(assert (= (and b!3451989 c!590986) b!3451988))

(assert (= (and b!3451989 (not c!590986)) b!3451990))

(assert (= (and b!3451988 res!1392009) b!3451992))

(assert (= (and b!3451990 c!590985) b!3451986))

(assert (= (and b!3451990 (not c!590985)) b!3451984))

(assert (= (and b!3451986 res!1392007) b!3451987))

(assert (= (and b!3451984 (not res!1392008)) b!3451991))

(assert (= (and b!3451991 res!1392006) b!3451985))

(assert (= (or b!3451987 b!3451985) bm!249188))

(assert (= (or b!3451986 b!3451991) bm!249186))

(assert (= (or b!3451992 bm!249188) bm!249187))

(declare-fun m!3849831 () Bool)

(assert (=> bm!249186 m!3849831))

(declare-fun m!3849833 () Bool)

(assert (=> bm!249187 m!3849833))

(declare-fun m!3849835 () Bool)

(assert (=> b!3451988 m!3849835))

(assert (=> bm!249044 d!992857))

(declare-fun d!992859 () Bool)

(declare-fun lt!1171867 () BalanceConc!22044)

(assert (=> d!992859 (= (list!13483 lt!1171867) (originalCharacters!6134 (h!42500 (t!271613 (t!271613 tokens!494)))))))

(assert (=> d!992859 (= lt!1171867 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (value!174930 (h!42500 (t!271613 (t!271613 tokens!494))))))))

(assert (=> d!992859 (= (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))) lt!1171867)))

(declare-fun b_lambda!99121 () Bool)

(assert (=> (not b_lambda!99121) (not d!992859)))

(declare-fun t!271891 () Bool)

(declare-fun tb!187871 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271891) tb!187871))

(declare-fun b!3451993 () Bool)

(declare-fun e!2138231 () Bool)

(declare-fun tp!1076472 () Bool)

(assert (=> b!3451993 (= e!2138231 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (value!174930 (h!42500 (t!271613 (t!271613 tokens!494))))))) tp!1076472))))

(declare-fun result!231734 () Bool)

(assert (=> tb!187871 (= result!231734 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (value!174930 (h!42500 (t!271613 (t!271613 tokens!494)))))) e!2138231))))

(assert (= tb!187871 b!3451993))

(declare-fun m!3849837 () Bool)

(assert (=> b!3451993 m!3849837))

(declare-fun m!3849839 () Bool)

(assert (=> tb!187871 m!3849839))

(assert (=> d!992859 t!271891))

(declare-fun b_and!242469 () Bool)

(assert (= b_and!242467 (and (=> t!271891 result!231734) b_and!242469)))

(declare-fun t!271893 () Bool)

(declare-fun tb!187873 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271893) tb!187873))

(declare-fun result!231736 () Bool)

(assert (= result!231736 result!231734))

(assert (=> d!992859 t!271893))

(declare-fun b_and!242471 () Bool)

(assert (= b_and!242461 (and (=> t!271893 result!231736) b_and!242471)))

(declare-fun tb!187875 () Bool)

(declare-fun t!271895 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271895) tb!187875))

(declare-fun result!231738 () Bool)

(assert (= result!231738 result!231734))

(assert (=> d!992859 t!271895))

(declare-fun b_and!242473 () Bool)

(assert (= b_and!242463 (and (=> t!271895 result!231738) b_and!242473)))

(declare-fun t!271897 () Bool)

(declare-fun tb!187877 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271897) tb!187877))

(declare-fun result!231740 () Bool)

(assert (= result!231740 result!231734))

(assert (=> d!992859 t!271897))

(declare-fun b_and!242475 () Bool)

(assert (= b_and!242465 (and (=> t!271897 result!231740) b_and!242475)))

(declare-fun t!271899 () Bool)

(declare-fun tb!187879 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271899) tb!187879))

(declare-fun result!231742 () Bool)

(assert (= result!231742 result!231734))

(assert (=> d!992859 t!271899))

(declare-fun b_and!242477 () Bool)

(assert (= b_and!242459 (and (=> t!271899 result!231742) b_and!242477)))

(declare-fun m!3849841 () Bool)

(assert (=> d!992859 m!3849841))

(declare-fun m!3849843 () Bool)

(assert (=> d!992859 m!3849843))

(assert (=> b!3450194 d!992859))

(declare-fun d!992861 () Bool)

(assert (=> d!992861 (= (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13487 (c!590467 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))))))

(declare-fun bs!559873 () Bool)

(assert (= bs!559873 d!992861))

(declare-fun m!3849845 () Bool)

(assert (=> bs!559873 m!3849845))

(assert (=> b!3450194 d!992861))

(declare-fun d!992863 () Bool)

(declare-fun c!590987 () Bool)

(assert (=> d!992863 (= c!590987 ((_ is Cons!37080) (t!271613 (t!271613 (t!271613 tokens!494)))))))

(declare-fun e!2138232 () List!37203)

(assert (=> d!992863 (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241) e!2138232)))

(declare-fun b!3451994 () Bool)

(assert (=> b!3451994 (= e!2138232 (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 (t!271613 tokens!494)))))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 (t!271613 tokens!494)))) separatorToken!241)))))

(declare-fun b!3451995 () Bool)

(assert (=> b!3451995 (= e!2138232 Nil!37079)))

(assert (= (and d!992863 c!590987) b!3451994))

(assert (= (and d!992863 (not c!590987)) b!3451995))

(assert (=> b!3451994 m!3846893))

(assert (=> b!3451994 m!3846895))

(declare-fun m!3849847 () Bool)

(assert (=> b!3451994 m!3849847))

(declare-fun m!3849849 () Bool)

(assert (=> b!3451994 m!3849849))

(declare-fun m!3849851 () Bool)

(assert (=> b!3451994 m!3849851))

(declare-fun m!3849853 () Bool)

(assert (=> b!3451994 m!3849853))

(assert (=> b!3451994 m!3849847))

(declare-fun m!3849855 () Bool)

(assert (=> b!3451994 m!3849855))

(assert (=> b!3451994 m!3849855))

(assert (=> b!3451994 m!3846895))

(assert (=> b!3451994 m!3849849))

(assert (=> b!3451994 m!3849851))

(assert (=> b!3451994 m!3846893))

(assert (=> b!3450194 d!992863))

(declare-fun b!3451998 () Bool)

(declare-fun res!1392011 () Bool)

(declare-fun e!2138234 () Bool)

(assert (=> b!3451998 (=> (not res!1392011) (not e!2138234))))

(declare-fun lt!1171868 () List!37203)

(assert (=> b!3451998 (= res!1392011 (= (size!28101 lt!1171868) (+ (size!28101 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))) (size!28101 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun b!3451999 () Bool)

(assert (=> b!3451999 (= e!2138234 (or (not (= (list!13483 (charsOf!3434 separatorToken!241)) Nil!37079)) (= lt!1171868 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))))))))

(declare-fun d!992865 () Bool)

(assert (=> d!992865 e!2138234))

(declare-fun res!1392012 () Bool)

(assert (=> d!992865 (=> (not res!1392012) (not e!2138234))))

(assert (=> d!992865 (= res!1392012 (= (content!5161 lt!1171868) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))) (content!5161 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun e!2138233 () List!37203)

(assert (=> d!992865 (= lt!1171868 e!2138233)))

(declare-fun c!590988 () Bool)

(assert (=> d!992865 (= c!590988 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))))))

(assert (=> d!992865 (= (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241))) lt!1171868)))

(declare-fun b!3451996 () Bool)

(assert (=> b!3451996 (= e!2138233 (list!13483 (charsOf!3434 separatorToken!241)))))

(declare-fun b!3451997 () Bool)

(assert (=> b!3451997 (= e!2138233 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494)))))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (= (and d!992865 c!590988) b!3451996))

(assert (= (and d!992865 (not c!590988)) b!3451997))

(assert (= (and d!992865 res!1392012) b!3451998))

(assert (= (and b!3451998 res!1392011) b!3451999))

(declare-fun m!3849857 () Bool)

(assert (=> b!3451998 m!3849857))

(assert (=> b!3451998 m!3847243))

(declare-fun m!3849859 () Bool)

(assert (=> b!3451998 m!3849859))

(assert (=> b!3451998 m!3846895))

(assert (=> b!3451998 m!3849691))

(declare-fun m!3849861 () Bool)

(assert (=> d!992865 m!3849861))

(assert (=> d!992865 m!3847243))

(declare-fun m!3849863 () Bool)

(assert (=> d!992865 m!3849863))

(assert (=> d!992865 m!3846895))

(assert (=> d!992865 m!3849695))

(assert (=> b!3451997 m!3846895))

(declare-fun m!3849865 () Bool)

(assert (=> b!3451997 m!3849865))

(assert (=> b!3450194 d!992865))

(assert (=> b!3450194 d!991927))

(assert (=> b!3450194 d!991939))

(declare-fun b!3452002 () Bool)

(declare-fun res!1392013 () Bool)

(declare-fun e!2138236 () Bool)

(assert (=> b!3452002 (=> (not res!1392013) (not e!2138236))))

(declare-fun lt!1171869 () List!37203)

(assert (=> b!3452002 (= res!1392013 (= (size!28101 lt!1171869) (+ (size!28101 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))) (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241)))))))

(declare-fun b!3452003 () Bool)

(assert (=> b!3452003 (= e!2138236 (or (not (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241) Nil!37079)) (= lt!1171869 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun d!992867 () Bool)

(assert (=> d!992867 e!2138236))

(declare-fun res!1392014 () Bool)

(assert (=> d!992867 (=> (not res!1392014) (not e!2138236))))

(assert (=> d!992867 (= res!1392014 (= (content!5161 lt!1171869) ((_ map or) (content!5161 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))) (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241)))))))

(declare-fun e!2138235 () List!37203)

(assert (=> d!992867 (= lt!1171869 e!2138235)))

(declare-fun c!590989 () Bool)

(assert (=> d!992867 (= c!590989 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (=> d!992867 (= (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241)) lt!1171869)))

(declare-fun b!3452000 () Bool)

(assert (=> b!3452000 (= e!2138235 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241))))

(declare-fun b!3452001 () Bool)

(assert (=> b!3452001 (= e!2138235 (Cons!37079 (h!42499 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))) (++!9125 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (t!271613 tokens!494))))) (list!13483 (charsOf!3434 separatorToken!241)))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 (t!271613 tokens!494))) separatorToken!241))))))

(assert (= (and d!992867 c!590989) b!3452000))

(assert (= (and d!992867 (not c!590989)) b!3452001))

(assert (= (and d!992867 res!1392014) b!3452002))

(assert (= (and b!3452002 res!1392013) b!3452003))

(declare-fun m!3849867 () Bool)

(assert (=> b!3452002 m!3849867))

(assert (=> b!3452002 m!3847237))

(declare-fun m!3849869 () Bool)

(assert (=> b!3452002 m!3849869))

(assert (=> b!3452002 m!3847239))

(declare-fun m!3849871 () Bool)

(assert (=> b!3452002 m!3849871))

(declare-fun m!3849873 () Bool)

(assert (=> d!992867 m!3849873))

(assert (=> d!992867 m!3847237))

(declare-fun m!3849875 () Bool)

(assert (=> d!992867 m!3849875))

(assert (=> d!992867 m!3847239))

(declare-fun m!3849877 () Bool)

(assert (=> d!992867 m!3849877))

(assert (=> b!3452001 m!3847239))

(declare-fun m!3849879 () Bool)

(assert (=> b!3452001 m!3849879))

(assert (=> b!3450194 d!992867))

(assert (=> b!3450425 d!992097))

(assert (=> b!3450081 d!992769))

(declare-fun d!992869 () Bool)

(declare-fun res!1392015 () Bool)

(declare-fun e!2138237 () Bool)

(assert (=> d!992869 (=> (not res!1392015) (not e!2138237))))

(assert (=> d!992869 (= res!1392015 (rulesValid!2032 thiss!18206 (t!271614 rules!2135)))))

(assert (=> d!992869 (= (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135)) e!2138237)))

(declare-fun b!3452004 () Bool)

(assert (=> b!3452004 (= e!2138237 (noDuplicateTag!2028 thiss!18206 (t!271614 rules!2135) Nil!37082))))

(assert (= (and d!992869 res!1392015) b!3452004))

(declare-fun m!3849881 () Bool)

(assert (=> d!992869 m!3849881))

(declare-fun m!3849883 () Bool)

(assert (=> b!3452004 m!3849883))

(assert (=> b!3450476 d!992869))

(declare-fun d!992871 () Bool)

(assert (=> d!992871 (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135))))

(declare-fun lt!1171872 () Unit!52398)

(declare-fun choose!19934 (LexerInterface!5009 Rule!10640 List!37205) Unit!52398)

(assert (=> d!992871 (= lt!1171872 (choose!19934 thiss!18206 (h!42501 rules!2135) (t!271614 rules!2135)))))

(assert (=> d!992871 (rulesInvariant!4406 thiss!18206 (Cons!37081 (h!42501 rules!2135) (t!271614 rules!2135)))))

(assert (=> d!992871 (= (lemmaInvariantOnRulesThenOnTail!422 thiss!18206 (h!42501 rules!2135) (t!271614 rules!2135)) lt!1171872)))

(declare-fun bs!559874 () Bool)

(assert (= bs!559874 d!992871))

(assert (=> bs!559874 m!3847639))

(declare-fun m!3849885 () Bool)

(assert (=> bs!559874 m!3849885))

(declare-fun m!3849887 () Bool)

(assert (=> bs!559874 m!3849887))

(assert (=> b!3450476 d!992871))

(declare-fun b!3452005 () Bool)

(declare-fun e!2138241 () Option!7485)

(assert (=> b!3452005 (= e!2138241 (Some!7484 (h!42501 (t!271614 rules!2135))))))

(declare-fun b!3452006 () Bool)

(declare-fun e!2138240 () Option!7485)

(assert (=> b!3452006 (= e!2138240 None!7484)))

(declare-fun b!3452007 () Bool)

(declare-fun e!2138238 () Bool)

(declare-fun lt!1171874 () Option!7485)

(assert (=> b!3452007 (= e!2138238 (= (tag!6018 (get!11855 lt!1171874)) (tag!6018 (rule!8000 separatorToken!241))))))

(declare-fun b!3452008 () Bool)

(declare-fun e!2138239 () Bool)

(assert (=> b!3452008 (= e!2138239 e!2138238)))

(declare-fun res!1392017 () Bool)

(assert (=> b!3452008 (=> (not res!1392017) (not e!2138238))))

(assert (=> b!3452008 (= res!1392017 (contains!6846 (t!271614 rules!2135) (get!11855 lt!1171874)))))

(declare-fun b!3452009 () Bool)

(declare-fun lt!1171875 () Unit!52398)

(declare-fun lt!1171873 () Unit!52398)

(assert (=> b!3452009 (= lt!1171875 lt!1171873)))

(assert (=> b!3452009 (rulesInvariant!4406 thiss!18206 (t!271614 (t!271614 rules!2135)))))

(assert (=> b!3452009 (= lt!1171873 (lemmaInvariantOnRulesThenOnTail!422 thiss!18206 (h!42501 (t!271614 rules!2135)) (t!271614 (t!271614 rules!2135))))))

(assert (=> b!3452009 (= e!2138240 (getRuleFromTag!1063 thiss!18206 (t!271614 (t!271614 rules!2135)) (tag!6018 (rule!8000 separatorToken!241))))))

(declare-fun b!3452010 () Bool)

(assert (=> b!3452010 (= e!2138241 e!2138240)))

(declare-fun c!590990 () Bool)

(assert (=> b!3452010 (= c!590990 (and ((_ is Cons!37081) (t!271614 rules!2135)) (not (= (tag!6018 (h!42501 (t!271614 rules!2135))) (tag!6018 (rule!8000 separatorToken!241))))))))

(declare-fun d!992873 () Bool)

(assert (=> d!992873 e!2138239))

(declare-fun res!1392016 () Bool)

(assert (=> d!992873 (=> res!1392016 e!2138239)))

(assert (=> d!992873 (= res!1392016 (isEmpty!21406 lt!1171874))))

(assert (=> d!992873 (= lt!1171874 e!2138241)))

(declare-fun c!590991 () Bool)

(assert (=> d!992873 (= c!590991 (and ((_ is Cons!37081) (t!271614 rules!2135)) (= (tag!6018 (h!42501 (t!271614 rules!2135))) (tag!6018 (rule!8000 separatorToken!241)))))))

(assert (=> d!992873 (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135))))

(assert (=> d!992873 (= (getRuleFromTag!1063 thiss!18206 (t!271614 rules!2135) (tag!6018 (rule!8000 separatorToken!241))) lt!1171874)))

(assert (= (and d!992873 c!590991) b!3452005))

(assert (= (and d!992873 (not c!590991)) b!3452010))

(assert (= (and b!3452010 c!590990) b!3452009))

(assert (= (and b!3452010 (not c!590990)) b!3452006))

(assert (= (and d!992873 (not res!1392016)) b!3452008))

(assert (= (and b!3452008 res!1392017) b!3452007))

(declare-fun m!3849889 () Bool)

(assert (=> b!3452007 m!3849889))

(assert (=> b!3452008 m!3849889))

(assert (=> b!3452008 m!3849889))

(declare-fun m!3849891 () Bool)

(assert (=> b!3452008 m!3849891))

(declare-fun m!3849893 () Bool)

(assert (=> b!3452009 m!3849893))

(declare-fun m!3849895 () Bool)

(assert (=> b!3452009 m!3849895))

(declare-fun m!3849897 () Bool)

(assert (=> b!3452009 m!3849897))

(declare-fun m!3849899 () Bool)

(assert (=> d!992873 m!3849899))

(assert (=> d!992873 m!3847639))

(assert (=> b!3450476 d!992873))

(declare-fun b!3452013 () Bool)

(declare-fun res!1392018 () Bool)

(declare-fun e!2138243 () Bool)

(assert (=> b!3452013 (=> (not res!1392018) (not e!2138243))))

(declare-fun lt!1171876 () List!37203)

(assert (=> b!3452013 (= res!1392018 (= (size!28101 lt!1171876) (+ (size!28101 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))) (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun b!3452014 () Bool)

(assert (=> b!3452014 (= e!2138243 (or (not (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241) Nil!37079)) (= lt!1171876 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))))

(declare-fun d!992875 () Bool)

(assert (=> d!992875 e!2138243))

(declare-fun res!1392019 () Bool)

(assert (=> d!992875 (=> (not res!1392019) (not e!2138243))))

(assert (=> d!992875 (= res!1392019 (= (content!5161 lt!1171876) ((_ map or) (content!5161 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))) (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(declare-fun e!2138242 () List!37203)

(assert (=> d!992875 (= lt!1171876 e!2138242)))

(declare-fun c!590992 () Bool)

(assert (=> d!992875 (= c!590992 ((_ is Nil!37079) (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))))))

(assert (=> d!992875 (= (++!9125 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) lt!1171876)))

(declare-fun b!3452011 () Bool)

(assert (=> b!3452011 (= e!2138242 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))

(declare-fun b!3452012 () Bool)

(assert (=> b!3452012 (= e!2138242 (Cons!37079 (h!42499 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))) (++!9125 (t!271612 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241))))))

(assert (= (and d!992875 c!590992) b!3452011))

(assert (= (and d!992875 (not c!590992)) b!3452012))

(assert (= (and d!992875 res!1392019) b!3452013))

(assert (= (and b!3452013 res!1392018) b!3452014))

(declare-fun m!3849901 () Bool)

(assert (=> b!3452013 m!3849901))

(assert (=> b!3452013 m!3849791))

(assert (=> b!3452013 m!3846889))

(assert (=> b!3452013 m!3847199))

(declare-fun m!3849903 () Bool)

(assert (=> d!992875 m!3849903))

(declare-fun m!3849905 () Bool)

(assert (=> d!992875 m!3849905))

(assert (=> d!992875 m!3846889))

(assert (=> d!992875 m!3847205))

(assert (=> b!3452012 m!3846889))

(declare-fun m!3849907 () Bool)

(assert (=> b!3452012 m!3849907))

(assert (=> b!3450178 d!992875))

(assert (=> d!992085 d!992099))

(declare-fun d!992877 () Bool)

(assert (=> d!992877 (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 tokens!494))))

(assert (=> d!992877 true))

(declare-fun _$77!962 () Unit!52398)

(assert (=> d!992877 (= (choose!19926 thiss!18206 rules!2135 tokens!494 (h!42500 tokens!494)) _$77!962)))

(declare-fun bs!559875 () Bool)

(assert (= bs!559875 d!992877))

(assert (=> bs!559875 m!3846857))

(assert (=> d!992085 d!992877))

(assert (=> d!992085 d!991889))

(declare-fun b!3452015 () Bool)

(declare-fun e!2138245 () Bool)

(declare-fun lt!1171877 () Bool)

(declare-fun call!249194 () Bool)

(assert (=> b!3452015 (= e!2138245 (= lt!1171877 call!249194))))

(declare-fun b!3452016 () Bool)

(declare-fun res!1392022 () Bool)

(declare-fun e!2138246 () Bool)

(assert (=> b!3452016 (=> (not res!1392022) (not e!2138246))))

(assert (=> b!3452016 (= res!1392022 (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))))))))

(declare-fun b!3452017 () Bool)

(declare-fun e!2138250 () Bool)

(assert (=> b!3452017 (= e!2138250 (matchR!4763 (derivativeStep!3031 (regex!5420 (rule!8000 (h!42500 tokens!494))) (head!7289 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))))) (tail!5411 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168)))))))))

(declare-fun b!3452018 () Bool)

(assert (=> b!3452018 (= e!2138246 (= (head!7289 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (c!590466 (regex!5420 (rule!8000 (h!42500 tokens!494))))))))

(declare-fun b!3452020 () Bool)

(declare-fun res!1392021 () Bool)

(declare-fun e!2138248 () Bool)

(assert (=> b!3452020 (=> res!1392021 e!2138248)))

(assert (=> b!3452020 (= res!1392021 e!2138246)))

(declare-fun res!1392020 () Bool)

(assert (=> b!3452020 (=> (not res!1392020) (not e!2138246))))

(assert (=> b!3452020 (= res!1392020 lt!1171877)))

(declare-fun b!3452021 () Bool)

(assert (=> b!3452021 (= e!2138250 (nullable!3478 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3452022 () Bool)

(declare-fun res!1392023 () Bool)

(assert (=> b!3452022 (=> (not res!1392023) (not e!2138246))))

(assert (=> b!3452022 (= res!1392023 (not call!249194))))

(declare-fun b!3452023 () Bool)

(declare-fun e!2138244 () Bool)

(assert (=> b!3452023 (= e!2138245 e!2138244)))

(declare-fun c!590994 () Bool)

(assert (=> b!3452023 (= c!590994 ((_ is EmptyLang!10179) (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3452024 () Bool)

(declare-fun res!1392027 () Bool)

(assert (=> b!3452024 (=> res!1392027 e!2138248)))

(assert (=> b!3452024 (= res!1392027 (not ((_ is ElementMatch!10179) (regex!5420 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> b!3452024 (= e!2138244 e!2138248)))

(declare-fun d!992879 () Bool)

(assert (=> d!992879 e!2138245))

(declare-fun c!590995 () Bool)

(assert (=> d!992879 (= c!590995 ((_ is EmptyExpr!10179) (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(assert (=> d!992879 (= lt!1171877 e!2138250)))

(declare-fun c!590993 () Bool)

(assert (=> d!992879 (= c!590993 (isEmpty!21402 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))

(assert (=> d!992879 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992879 (= (matchR!4763 (regex!5420 (rule!8000 (h!42500 tokens!494))) (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) lt!1171877)))

(declare-fun b!3452019 () Bool)

(declare-fun e!2138249 () Bool)

(assert (=> b!3452019 (= e!2138249 (not (= (head!7289 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))) (c!590466 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))))

(declare-fun b!3452025 () Bool)

(assert (=> b!3452025 (= e!2138244 (not lt!1171877))))

(declare-fun bm!249189 () Bool)

(assert (=> bm!249189 (= call!249194 (isEmpty!21402 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))

(declare-fun b!3452026 () Bool)

(declare-fun res!1392026 () Bool)

(assert (=> b!3452026 (=> res!1392026 e!2138249)))

(assert (=> b!3452026 (= res!1392026 (not (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 (_1!21514 (get!11857 lt!1171168))))))))))

(declare-fun b!3452027 () Bool)

(declare-fun e!2138247 () Bool)

(assert (=> b!3452027 (= e!2138247 e!2138249)))

(declare-fun res!1392024 () Bool)

(assert (=> b!3452027 (=> res!1392024 e!2138249)))

(assert (=> b!3452027 (= res!1392024 call!249194)))

(declare-fun b!3452028 () Bool)

(assert (=> b!3452028 (= e!2138248 e!2138247)))

(declare-fun res!1392025 () Bool)

(assert (=> b!3452028 (=> (not res!1392025) (not e!2138247))))

(assert (=> b!3452028 (= res!1392025 (not lt!1171877))))

(assert (= (and d!992879 c!590993) b!3452021))

(assert (= (and d!992879 (not c!590993)) b!3452017))

(assert (= (and d!992879 c!590995) b!3452015))

(assert (= (and d!992879 (not c!590995)) b!3452023))

(assert (= (and b!3452023 c!590994) b!3452025))

(assert (= (and b!3452023 (not c!590994)) b!3452024))

(assert (= (and b!3452024 (not res!1392027)) b!3452020))

(assert (= (and b!3452020 res!1392020) b!3452022))

(assert (= (and b!3452022 res!1392023) b!3452016))

(assert (= (and b!3452016 res!1392022) b!3452018))

(assert (= (and b!3452020 (not res!1392021)) b!3452028))

(assert (= (and b!3452028 res!1392025) b!3452027))

(assert (= (and b!3452027 (not res!1392024)) b!3452026))

(assert (= (and b!3452026 (not res!1392026)) b!3452019))

(assert (= (or b!3452015 b!3452022 b!3452027) bm!249189))

(assert (=> b!3452018 m!3847751))

(declare-fun m!3849909 () Bool)

(assert (=> b!3452018 m!3849909))

(assert (=> bm!249189 m!3847751))

(declare-fun m!3849911 () Bool)

(assert (=> bm!249189 m!3849911))

(assert (=> b!3452026 m!3847751))

(declare-fun m!3849913 () Bool)

(assert (=> b!3452026 m!3849913))

(assert (=> b!3452026 m!3849913))

(declare-fun m!3849915 () Bool)

(assert (=> b!3452026 m!3849915))

(assert (=> d!992879 m!3847751))

(assert (=> d!992879 m!3849911))

(assert (=> d!992879 m!3849515))

(assert (=> b!3452019 m!3847751))

(assert (=> b!3452019 m!3849909))

(assert (=> b!3452021 m!3849517))

(assert (=> b!3452016 m!3847751))

(assert (=> b!3452016 m!3849913))

(assert (=> b!3452016 m!3849913))

(assert (=> b!3452016 m!3849915))

(assert (=> b!3452017 m!3847751))

(assert (=> b!3452017 m!3849909))

(assert (=> b!3452017 m!3849909))

(declare-fun m!3849917 () Bool)

(assert (=> b!3452017 m!3849917))

(assert (=> b!3452017 m!3847751))

(assert (=> b!3452017 m!3849913))

(assert (=> b!3452017 m!3849917))

(assert (=> b!3452017 m!3849913))

(declare-fun m!3849919 () Bool)

(assert (=> b!3452017 m!3849919))

(assert (=> b!3450600 d!992879))

(assert (=> b!3450600 d!992325))

(assert (=> b!3450600 d!992327))

(assert (=> b!3450600 d!992329))

(declare-fun d!992881 () Bool)

(assert (=> d!992881 (= (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))) (list!13487 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))))))

(declare-fun bs!559876 () Bool)

(assert (= bs!559876 d!992881))

(declare-fun m!3849921 () Bool)

(assert (=> bs!559876 m!3849921))

(assert (=> b!3450398 d!992881))

(declare-fun d!992883 () Bool)

(declare-fun c!590996 () Bool)

(assert (=> d!992883 (= c!590996 ((_ is Nil!37079) lt!1171000))))

(declare-fun e!2138251 () (InoxSet C!20544))

(assert (=> d!992883 (= (content!5161 lt!1171000) e!2138251)))

(declare-fun b!3452029 () Bool)

(assert (=> b!3452029 (= e!2138251 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452030 () Bool)

(assert (=> b!3452030 (= e!2138251 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1171000) true) (content!5161 (t!271612 lt!1171000))))))

(assert (= (and d!992883 c!590996) b!3452029))

(assert (= (and d!992883 (not c!590996)) b!3452030))

(declare-fun m!3849923 () Bool)

(assert (=> b!3452030 m!3849923))

(declare-fun m!3849925 () Bool)

(assert (=> b!3452030 m!3849925))

(assert (=> d!991925 d!992883))

(declare-fun d!992885 () Bool)

(declare-fun c!590997 () Bool)

(assert (=> d!992885 (= c!590997 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))

(declare-fun e!2138252 () (InoxSet C!20544))

(assert (=> d!992885 (= (content!5161 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) e!2138252)))

(declare-fun b!3452031 () Bool)

(assert (=> b!3452031 (= e!2138252 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452032 () Bool)

(assert (=> b!3452032 (= e!2138252 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)) true) (content!5161 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494)))) lt!1170945)))))))

(assert (= (and d!992885 c!590997) b!3452031))

(assert (= (and d!992885 (not c!590997)) b!3452032))

(declare-fun m!3849927 () Bool)

(assert (=> b!3452032 m!3849927))

(assert (=> b!3452032 m!3849905))

(assert (=> d!991925 d!992885))

(declare-fun d!992887 () Bool)

(declare-fun c!590998 () Bool)

(assert (=> d!992887 (= c!590998 ((_ is Nil!37079) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))

(declare-fun e!2138253 () (InoxSet C!20544))

(assert (=> d!992887 (= (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) e!2138253)))

(declare-fun b!3452033 () Bool)

(assert (=> b!3452033 (= e!2138253 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452034 () Bool)

(assert (=> b!3452034 (= e!2138253 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)) true) (content!5161 (t!271612 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 (t!271613 tokens!494)) separatorToken!241)))))))

(assert (= (and d!992887 c!590998) b!3452033))

(assert (= (and d!992887 (not c!590998)) b!3452034))

(declare-fun m!3849929 () Bool)

(assert (=> b!3452034 m!3849929))

(declare-fun m!3849931 () Bool)

(assert (=> b!3452034 m!3849931))

(assert (=> d!991925 d!992887))

(declare-fun d!992889 () Bool)

(declare-fun c!590999 () Bool)

(assert (=> d!992889 (= c!590999 ((_ is Nil!37079) lt!1171005))))

(declare-fun e!2138254 () (InoxSet C!20544))

(assert (=> d!992889 (= (content!5161 lt!1171005) e!2138254)))

(declare-fun b!3452035 () Bool)

(assert (=> b!3452035 (= e!2138254 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452036 () Bool)

(assert (=> b!3452036 (= e!2138254 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1171005) true) (content!5161 (t!271612 lt!1171005))))))

(assert (= (and d!992889 c!590999) b!3452035))

(assert (= (and d!992889 (not c!590999)) b!3452036))

(declare-fun m!3849933 () Bool)

(assert (=> b!3452036 m!3849933))

(declare-fun m!3849935 () Bool)

(assert (=> b!3452036 m!3849935))

(assert (=> d!991933 d!992889))

(declare-fun d!992891 () Bool)

(declare-fun c!591000 () Bool)

(assert (=> d!992891 (= c!591000 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))

(declare-fun e!2138255 () (InoxSet C!20544))

(assert (=> d!992891 (= (content!5161 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) e!2138255)))

(declare-fun b!3452037 () Bool)

(assert (=> b!3452037 (= e!2138255 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452038 () Bool)

(assert (=> b!3452038 (= e!2138255 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))) true) (content!5161 (t!271612 (list!13483 (charsOf!3434 (h!42500 (t!271613 tokens!494))))))))))

(assert (= (and d!992891 c!591000) b!3452037))

(assert (= (and d!992891 (not c!591000)) b!3452038))

(declare-fun m!3849937 () Bool)

(assert (=> b!3452038 m!3849937))

(assert (=> b!3452038 m!3849321))

(assert (=> d!991933 d!992891))

(assert (=> d!991933 d!992611))

(declare-fun bs!559877 () Bool)

(declare-fun d!992893 () Bool)

(assert (= bs!559877 (and d!992893 d!992627)))

(declare-fun lambda!121564 () Int)

(assert (=> bs!559877 (= (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= lambda!121564 lambda!121554))))

(assert (=> d!992893 true))

(assert (=> d!992893 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))) (dynLambda!15577 order!19691 lambda!121564))))

(assert (=> d!992893 (= (equivClasses!2172 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))) (Forall2!932 lambda!121564))))

(declare-fun bs!559878 () Bool)

(assert (= bs!559878 d!992893))

(declare-fun m!3849939 () Bool)

(assert (=> bs!559878 m!3849939))

(assert (=> b!3450217 d!992893))

(declare-fun bs!559879 () Bool)

(declare-fun d!992895 () Bool)

(assert (= bs!559879 (and d!992895 d!992627)))

(declare-fun lambda!121565 () Int)

(assert (=> bs!559879 (= (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= lambda!121565 lambda!121554))))

(declare-fun bs!559880 () Bool)

(assert (= bs!559880 (and d!992895 d!992893)))

(assert (=> bs!559880 (= (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))) (= lambda!121565 lambda!121564))))

(assert (=> d!992895 true))

(assert (=> d!992895 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15577 order!19691 lambda!121565))))

(assert (=> d!992895 (= (equivClasses!2172 (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (Forall2!932 lambda!121565))))

(declare-fun bs!559881 () Bool)

(assert (= bs!559881 d!992895))

(declare-fun m!3849941 () Bool)

(assert (=> bs!559881 m!3849941))

(assert (=> b!3450401 d!992895))

(assert (=> b!3450483 d!992797))

(assert (=> b!3450483 d!992055))

(declare-fun d!992897 () Bool)

(assert (=> d!992897 (= (isEmpty!21407 lt!1171168) (not ((_ is Some!7485) lt!1171168)))))

(assert (=> d!992091 d!992897))

(declare-fun d!992899 () Bool)

(assert (=> d!992899 (= (isEmpty!21402 (_1!21519 lt!1171170)) ((_ is Nil!37079) (_1!21519 lt!1171170)))))

(assert (=> d!992091 d!992899))

(declare-fun d!992901 () Bool)

(declare-fun lt!1171897 () tuple2!36770)

(assert (=> d!992901 (= (++!9125 (_1!21519 lt!1171897) (_2!21519 lt!1171897)) lt!1170951)))

(declare-fun sizeTr!201 (List!37203 Int) Int)

(assert (=> d!992901 (= lt!1171897 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 0 lt!1170951 lt!1170951 (sizeTr!201 lt!1170951 0)))))

(declare-fun lt!1171898 () Unit!52398)

(declare-fun lt!1171894 () Unit!52398)

(assert (=> d!992901 (= lt!1171898 lt!1171894)))

(declare-fun lt!1171901 () List!37203)

(declare-fun lt!1171900 () Int)

(assert (=> d!992901 (= (sizeTr!201 lt!1171901 lt!1171900) (+ (size!28101 lt!1171901) lt!1171900))))

(declare-fun lemmaSizeTrEqualsSize!200 (List!37203 Int) Unit!52398)

(assert (=> d!992901 (= lt!1171894 (lemmaSizeTrEqualsSize!200 lt!1171901 lt!1171900))))

(assert (=> d!992901 (= lt!1171900 0)))

(assert (=> d!992901 (= lt!1171901 Nil!37079)))

(declare-fun lt!1171896 () Unit!52398)

(declare-fun lt!1171899 () Unit!52398)

(assert (=> d!992901 (= lt!1171896 lt!1171899)))

(declare-fun lt!1171895 () Int)

(assert (=> d!992901 (= (sizeTr!201 lt!1170951 lt!1171895) (+ (size!28101 lt!1170951) lt!1171895))))

(assert (=> d!992901 (= lt!1171899 (lemmaSizeTrEqualsSize!200 lt!1170951 lt!1171895))))

(assert (=> d!992901 (= lt!1171895 0)))

(assert (=> d!992901 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992901 (= (findLongestMatch!814 (regex!5420 (rule!8000 (h!42500 tokens!494))) lt!1170951) lt!1171897)))

(declare-fun bs!559882 () Bool)

(assert (= bs!559882 d!992901))

(declare-fun m!3849943 () Bool)

(assert (=> bs!559882 m!3849943))

(assert (=> bs!559882 m!3849515))

(declare-fun m!3849945 () Bool)

(assert (=> bs!559882 m!3849945))

(declare-fun m!3849947 () Bool)

(assert (=> bs!559882 m!3849947))

(assert (=> bs!559882 m!3849945))

(declare-fun m!3849949 () Bool)

(assert (=> bs!559882 m!3849949))

(declare-fun m!3849951 () Bool)

(assert (=> bs!559882 m!3849951))

(assert (=> bs!559882 m!3846815))

(declare-fun m!3849953 () Bool)

(assert (=> bs!559882 m!3849953))

(declare-fun m!3849955 () Bool)

(assert (=> bs!559882 m!3849955))

(declare-fun m!3849957 () Bool)

(assert (=> bs!559882 m!3849957))

(assert (=> d!992091 d!992901))

(declare-fun d!992903 () Bool)

(declare-fun res!1392032 () Bool)

(declare-fun e!2138258 () Bool)

(assert (=> d!992903 (=> (not res!1392032) (not e!2138258))))

(assert (=> d!992903 (= res!1392032 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494)))))))

(assert (=> d!992903 (= (ruleValid!1728 thiss!18206 (rule!8000 (h!42500 tokens!494))) e!2138258)))

(declare-fun b!3452043 () Bool)

(declare-fun res!1392033 () Bool)

(assert (=> b!3452043 (=> (not res!1392033) (not e!2138258))))

(assert (=> b!3452043 (= res!1392033 (not (nullable!3478 (regex!5420 (rule!8000 (h!42500 tokens!494))))))))

(declare-fun b!3452044 () Bool)

(assert (=> b!3452044 (= e!2138258 (not (= (tag!6018 (rule!8000 (h!42500 tokens!494))) (String!41585 ""))))))

(assert (= (and d!992903 res!1392032) b!3452043))

(assert (= (and b!3452043 res!1392033) b!3452044))

(assert (=> d!992903 m!3849515))

(assert (=> b!3452043 m!3849517))

(assert (=> d!992091 d!992903))

(declare-fun d!992905 () Bool)

(assert (=> d!992905 (= (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))) (not (isEmpty!21406 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(declare-fun bs!559883 () Bool)

(assert (= bs!559883 d!992905))

(assert (=> bs!559883 m!3846805))

(declare-fun m!3849959 () Bool)

(assert (=> bs!559883 m!3849959))

(assert (=> d!992095 d!992905))

(assert (=> d!992095 d!992093))

(declare-fun d!992907 () Bool)

(declare-fun e!2138259 () Bool)

(assert (=> d!992907 e!2138259))

(declare-fun res!1392034 () Bool)

(assert (=> d!992907 (=> (not res!1392034) (not e!2138259))))

(assert (=> d!992907 (= res!1392034 (isDefined!5774 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> d!992907 true))

(declare-fun _$52!1876 () Unit!52398)

(assert (=> d!992907 (= (choose!19924 thiss!18206 rules!2135 lt!1170951 (h!42500 tokens!494)) _$52!1876)))

(declare-fun b!3452045 () Bool)

(declare-fun res!1392035 () Bool)

(assert (=> b!3452045 (=> (not res!1392035) (not e!2138259))))

(assert (=> b!3452045 (= res!1392035 (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))) (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))

(declare-fun b!3452046 () Bool)

(assert (=> b!3452046 (= e!2138259 (= (rule!8000 (h!42500 tokens!494)) (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(assert (= (and d!992907 res!1392034) b!3452045))

(assert (= (and b!3452045 res!1392035) b!3452046))

(assert (=> d!992907 m!3846805))

(assert (=> d!992907 m!3846805))

(assert (=> d!992907 m!3847795))

(assert (=> b!3452045 m!3846793))

(assert (=> b!3452045 m!3847799))

(assert (=> b!3452045 m!3846805))

(assert (=> b!3452045 m!3846805))

(assert (=> b!3452045 m!3847801))

(assert (=> b!3452045 m!3846791))

(assert (=> b!3452045 m!3846793))

(assert (=> b!3452045 m!3846791))

(assert (=> b!3452046 m!3846805))

(assert (=> b!3452046 m!3846805))

(assert (=> b!3452046 m!3847801))

(assert (=> d!992095 d!992907))

(assert (=> d!992095 d!991881))

(declare-fun b!3452049 () Bool)

(declare-fun res!1392036 () Bool)

(declare-fun e!2138261 () Bool)

(assert (=> b!3452049 (=> (not res!1392036) (not e!2138261))))

(declare-fun lt!1171902 () List!37203)

(assert (=> b!3452049 (= res!1392036 (= (size!28101 lt!1171902) (+ (size!28101 (t!271612 lt!1170951)) (size!28101 lt!1170944))))))

(declare-fun b!3452050 () Bool)

(assert (=> b!3452050 (= e!2138261 (or (not (= lt!1170944 Nil!37079)) (= lt!1171902 (t!271612 lt!1170951))))))

(declare-fun d!992909 () Bool)

(assert (=> d!992909 e!2138261))

(declare-fun res!1392037 () Bool)

(assert (=> d!992909 (=> (not res!1392037) (not e!2138261))))

(assert (=> d!992909 (= res!1392037 (= (content!5161 lt!1171902) ((_ map or) (content!5161 (t!271612 lt!1170951)) (content!5161 lt!1170944))))))

(declare-fun e!2138260 () List!37203)

(assert (=> d!992909 (= lt!1171902 e!2138260)))

(declare-fun c!591001 () Bool)

(assert (=> d!992909 (= c!591001 ((_ is Nil!37079) (t!271612 lt!1170951)))))

(assert (=> d!992909 (= (++!9125 (t!271612 lt!1170951) lt!1170944) lt!1171902)))

(declare-fun b!3452047 () Bool)

(assert (=> b!3452047 (= e!2138260 lt!1170944)))

(declare-fun b!3452048 () Bool)

(assert (=> b!3452048 (= e!2138260 (Cons!37079 (h!42499 (t!271612 lt!1170951)) (++!9125 (t!271612 (t!271612 lt!1170951)) lt!1170944)))))

(assert (= (and d!992909 c!591001) b!3452047))

(assert (= (and d!992909 (not c!591001)) b!3452048))

(assert (= (and d!992909 res!1392037) b!3452049))

(assert (= (and b!3452049 res!1392036) b!3452050))

(declare-fun m!3849961 () Bool)

(assert (=> b!3452049 m!3849961))

(assert (=> b!3452049 m!3847605))

(assert (=> b!3452049 m!3847525))

(declare-fun m!3849963 () Bool)

(assert (=> d!992909 m!3849963))

(assert (=> d!992909 m!3849759))

(assert (=> d!992909 m!3847529))

(declare-fun m!3849965 () Bool)

(assert (=> b!3452048 m!3849965))

(assert (=> b!3450409 d!992909))

(declare-fun d!992911 () Bool)

(assert (=> d!992911 (= (list!13486 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))) (list!13489 (c!590468 (_1!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))))

(declare-fun bs!559884 () Bool)

(assert (= bs!559884 d!992911))

(declare-fun m!3849967 () Bool)

(assert (=> bs!559884 m!3849967))

(assert (=> d!992099 d!992911))

(declare-fun d!992913 () Bool)

(declare-fun e!2138263 () Bool)

(assert (=> d!992913 e!2138263))

(declare-fun res!1392039 () Bool)

(assert (=> d!992913 (=> (not res!1392039) (not e!2138263))))

(declare-fun e!2138264 () Bool)

(assert (=> d!992913 (= res!1392039 e!2138264)))

(declare-fun c!591002 () Bool)

(declare-fun lt!1171903 () tuple2!36762)

(assert (=> d!992913 (= c!591002 (> (size!28104 (_1!21515 lt!1171903)) 0))))

(assert (=> d!992913 (= lt!1171903 (lexTailRecV2!1046 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))) (BalanceConc!22045 Empty!11215) (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))) (BalanceConc!22047 Empty!11216)))))

(assert (=> d!992913 (= (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))) lt!1171903)))

(declare-fun b!3452051 () Bool)

(assert (=> b!3452051 (= e!2138263 (= (list!13483 (_2!21515 lt!1171903)) (_2!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))))

(declare-fun b!3452052 () Bool)

(assert (=> b!3452052 (= e!2138264 (= (_2!21515 lt!1171903) (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))))

(declare-fun b!3452053 () Bool)

(declare-fun e!2138262 () Bool)

(assert (=> b!3452053 (= e!2138264 e!2138262)))

(declare-fun res!1392040 () Bool)

(assert (=> b!3452053 (= res!1392040 (< (size!28105 (_2!21515 lt!1171903)) (size!28105 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))

(assert (=> b!3452053 (=> (not res!1392040) (not e!2138262))))

(declare-fun b!3452054 () Bool)

(assert (=> b!3452054 (= e!2138262 (not (isEmpty!21394 (_1!21515 lt!1171903))))))

(declare-fun b!3452055 () Bool)

(declare-fun res!1392038 () Bool)

(assert (=> b!3452055 (=> (not res!1392038) (not e!2138263))))

(assert (=> b!3452055 (= res!1392038 (= (list!13486 (_1!21515 lt!1171903)) (_1!21518 (lexList!1438 thiss!18206 rules!2135 (list!13483 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))))

(assert (= (and d!992913 c!591002) b!3452053))

(assert (= (and d!992913 (not c!591002)) b!3452052))

(assert (= (and b!3452053 res!1392040) b!3452054))

(assert (= (and d!992913 res!1392039) b!3452055))

(assert (= (and b!3452055 res!1392038) b!3452051))

(declare-fun m!3849969 () Bool)

(assert (=> d!992913 m!3849969))

(assert (=> d!992913 m!3847805))

(assert (=> d!992913 m!3847805))

(declare-fun m!3849971 () Bool)

(assert (=> d!992913 m!3849971))

(declare-fun m!3849973 () Bool)

(assert (=> b!3452053 m!3849973))

(assert (=> b!3452053 m!3847805))

(declare-fun m!3849975 () Bool)

(assert (=> b!3452053 m!3849975))

(declare-fun m!3849977 () Bool)

(assert (=> b!3452055 m!3849977))

(assert (=> b!3452055 m!3847805))

(declare-fun m!3849979 () Bool)

(assert (=> b!3452055 m!3849979))

(assert (=> b!3452055 m!3849979))

(declare-fun m!3849981 () Bool)

(assert (=> b!3452055 m!3849981))

(declare-fun m!3849983 () Bool)

(assert (=> b!3452051 m!3849983))

(assert (=> b!3452051 m!3847805))

(assert (=> b!3452051 m!3849979))

(assert (=> b!3452051 m!3849979))

(assert (=> b!3452051 m!3849981))

(declare-fun m!3849985 () Bool)

(assert (=> b!3452054 m!3849985))

(assert (=> d!992099 d!992913))

(declare-fun d!992915 () Bool)

(declare-fun lt!1171904 () BalanceConc!22044)

(assert (=> d!992915 (= (list!13483 lt!1171904) (printList!1557 thiss!18206 (list!13486 (singletonSeq!2516 (h!42500 tokens!494)))))))

(assert (=> d!992915 (= lt!1171904 (printTailRec!1504 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)) 0 (BalanceConc!22045 Empty!11215)))))

(assert (=> d!992915 (= (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))) lt!1171904)))

(declare-fun bs!559885 () Bool)

(assert (= bs!559885 d!992915))

(declare-fun m!3849987 () Bool)

(assert (=> bs!559885 m!3849987))

(assert (=> bs!559885 m!3846843))

(assert (=> bs!559885 m!3847811))

(assert (=> bs!559885 m!3847811))

(declare-fun m!3849989 () Bool)

(assert (=> bs!559885 m!3849989))

(assert (=> bs!559885 m!3846843))

(declare-fun m!3849991 () Bool)

(assert (=> bs!559885 m!3849991))

(assert (=> d!992099 d!992915))

(declare-fun d!992917 () Bool)

(assert (=> d!992917 (= (list!13486 (singletonSeq!2516 (h!42500 tokens!494))) (list!13489 (c!590468 (singletonSeq!2516 (h!42500 tokens!494)))))))

(declare-fun bs!559886 () Bool)

(assert (= bs!559886 d!992917))

(declare-fun m!3849993 () Bool)

(assert (=> bs!559886 m!3849993))

(assert (=> d!992099 d!992917))

(assert (=> d!992099 d!991949))

(assert (=> d!992099 d!991889))

(declare-fun d!992919 () Bool)

(declare-fun lt!1171905 () Int)

(assert (=> d!992919 (= lt!1171905 (size!28108 (list!13486 (_1!21515 lt!1171175))))))

(assert (=> d!992919 (= lt!1171905 (size!28109 (c!590468 (_1!21515 lt!1171175))))))

(assert (=> d!992919 (= (size!28104 (_1!21515 lt!1171175)) lt!1171905)))

(declare-fun bs!559887 () Bool)

(assert (= bs!559887 d!992919))

(assert (=> bs!559887 m!3849345))

(assert (=> bs!559887 m!3849345))

(declare-fun m!3849995 () Bool)

(assert (=> bs!559887 m!3849995))

(declare-fun m!3849997 () Bool)

(assert (=> bs!559887 m!3849997))

(assert (=> d!992099 d!992919))

(assert (=> b!3450175 d!992029))

(assert (=> b!3450175 d!992027))

(declare-fun b!3452058 () Bool)

(declare-fun res!1392041 () Bool)

(declare-fun e!2138266 () Bool)

(assert (=> b!3452058 (=> (not res!1392041) (not e!2138266))))

(declare-fun lt!1171906 () List!37203)

(assert (=> b!3452058 (= res!1392041 (= (size!28101 lt!1171906) (+ (size!28101 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241)))) (size!28101 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241)))))))

(declare-fun b!3452059 () Bool)

(assert (=> b!3452059 (= e!2138266 (or (not (= (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241) Nil!37079)) (= lt!1171906 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun d!992921 () Bool)

(assert (=> d!992921 e!2138266))

(declare-fun res!1392042 () Bool)

(assert (=> d!992921 (=> (not res!1392042) (not e!2138266))))

(assert (=> d!992921 (= res!1392042 (= (content!5161 lt!1171906) ((_ map or) (content!5161 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241)))) (content!5161 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241)))))))

(declare-fun e!2138265 () List!37203)

(assert (=> d!992921 (= lt!1171906 e!2138265)))

(declare-fun c!591003 () Bool)

(assert (=> d!992921 (= c!591003 ((_ is Nil!37079) (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (=> d!992921 (= (++!9125 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241)) lt!1171906)))

(declare-fun b!3452056 () Bool)

(assert (=> b!3452056 (= e!2138265 (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241))))

(declare-fun b!3452057 () Bool)

(assert (=> b!3452057 (= e!2138265 (Cons!37079 (h!42499 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241)))) (++!9125 (t!271612 (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241)))) (printWithSeparatorTokenList!296 thiss!18206 (t!271613 tokens!494) separatorToken!241))))))

(assert (= (and d!992921 c!591003) b!3452056))

(assert (= (and d!992921 (not c!591003)) b!3452057))

(assert (= (and d!992921 res!1392042) b!3452058))

(assert (= (and b!3452058 res!1392041) b!3452059))

(declare-fun m!3849999 () Bool)

(assert (=> b!3452058 m!3849999))

(assert (=> b!3452058 m!3847191))

(declare-fun m!3850001 () Bool)

(assert (=> b!3452058 m!3850001))

(assert (=> b!3452058 m!3846885))

(declare-fun m!3850003 () Bool)

(assert (=> b!3452058 m!3850003))

(declare-fun m!3850005 () Bool)

(assert (=> d!992921 m!3850005))

(assert (=> d!992921 m!3847191))

(declare-fun m!3850007 () Bool)

(assert (=> d!992921 m!3850007))

(assert (=> d!992921 m!3846885))

(declare-fun m!3850009 () Bool)

(assert (=> d!992921 m!3850009))

(assert (=> b!3452057 m!3846885))

(declare-fun m!3850011 () Bool)

(assert (=> b!3452057 m!3850011))

(assert (=> b!3450175 d!992921))

(assert (=> b!3450175 d!991927))

(assert (=> b!3450175 d!991939))

(declare-fun b!3452062 () Bool)

(declare-fun res!1392043 () Bool)

(declare-fun e!2138268 () Bool)

(assert (=> b!3452062 (=> (not res!1392043) (not e!2138268))))

(declare-fun lt!1171907 () List!37203)

(assert (=> b!3452062 (= res!1392043 (= (size!28101 lt!1171907) (+ (size!28101 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (size!28101 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun b!3452063 () Bool)

(assert (=> b!3452063 (= e!2138268 (or (not (= (list!13483 (charsOf!3434 separatorToken!241)) Nil!37079)) (= lt!1171907 (list!13483 (charsOf!3434 (h!42500 tokens!494))))))))

(declare-fun d!992923 () Bool)

(assert (=> d!992923 e!2138268))

(declare-fun res!1392044 () Bool)

(assert (=> d!992923 (=> (not res!1392044) (not e!2138268))))

(assert (=> d!992923 (= res!1392044 (= (content!5161 lt!1171907) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (content!5161 (list!13483 (charsOf!3434 separatorToken!241))))))))

(declare-fun e!2138267 () List!37203)

(assert (=> d!992923 (= lt!1171907 e!2138267)))

(declare-fun c!591004 () Bool)

(assert (=> d!992923 (= c!591004 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))

(assert (=> d!992923 (= (++!9125 (list!13483 (charsOf!3434 (h!42500 tokens!494))) (list!13483 (charsOf!3434 separatorToken!241))) lt!1171907)))

(declare-fun b!3452060 () Bool)

(assert (=> b!3452060 (= e!2138267 (list!13483 (charsOf!3434 separatorToken!241)))))

(declare-fun b!3452061 () Bool)

(assert (=> b!3452061 (= e!2138267 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (list!13483 (charsOf!3434 separatorToken!241)))))))

(assert (= (and d!992923 c!591004) b!3452060))

(assert (= (and d!992923 (not c!591004)) b!3452061))

(assert (= (and d!992923 res!1392044) b!3452062))

(assert (= (and b!3452062 res!1392043) b!3452063))

(declare-fun m!3850013 () Bool)

(assert (=> b!3452062 m!3850013))

(assert (=> b!3452062 m!3846793))

(declare-fun m!3850015 () Bool)

(assert (=> b!3452062 m!3850015))

(assert (=> b!3452062 m!3846895))

(assert (=> b!3452062 m!3849691))

(declare-fun m!3850017 () Bool)

(assert (=> d!992923 m!3850017))

(assert (=> d!992923 m!3846793))

(declare-fun m!3850019 () Bool)

(assert (=> d!992923 m!3850019))

(assert (=> d!992923 m!3846895))

(assert (=> d!992923 m!3849695))

(assert (=> b!3452061 m!3846895))

(declare-fun m!3850021 () Bool)

(assert (=> b!3452061 m!3850021))

(assert (=> b!3450175 d!992923))

(assert (=> b!3450175 d!991937))

(declare-fun d!992925 () Bool)

(declare-fun lt!1171908 () Int)

(assert (=> d!992925 (>= lt!1171908 0)))

(declare-fun e!2138269 () Int)

(assert (=> d!992925 (= lt!1171908 e!2138269)))

(declare-fun c!591005 () Bool)

(assert (=> d!992925 (= c!591005 ((_ is Nil!37079) lt!1170988))))

(assert (=> d!992925 (= (size!28101 lt!1170988) lt!1171908)))

(declare-fun b!3452064 () Bool)

(assert (=> b!3452064 (= e!2138269 0)))

(declare-fun b!3452065 () Bool)

(assert (=> b!3452065 (= e!2138269 (+ 1 (size!28101 (t!271612 lt!1170988))))))

(assert (= (and d!992925 c!591005) b!3452064))

(assert (= (and d!992925 (not c!591005)) b!3452065))

(declare-fun m!3850023 () Bool)

(assert (=> b!3452065 m!3850023))

(assert (=> b!3450146 d!992925))

(declare-fun d!992927 () Bool)

(declare-fun lt!1171909 () Int)

(assert (=> d!992927 (>= lt!1171909 0)))

(declare-fun e!2138270 () Int)

(assert (=> d!992927 (= lt!1171909 e!2138270)))

(declare-fun c!591006 () Bool)

(assert (=> d!992927 (= c!591006 ((_ is Nil!37079) (++!9125 lt!1170951 lt!1170945)))))

(assert (=> d!992927 (= (size!28101 (++!9125 lt!1170951 lt!1170945)) lt!1171909)))

(declare-fun b!3452066 () Bool)

(assert (=> b!3452066 (= e!2138270 0)))

(declare-fun b!3452067 () Bool)

(assert (=> b!3452067 (= e!2138270 (+ 1 (size!28101 (t!271612 (++!9125 lt!1170951 lt!1170945)))))))

(assert (= (and d!992927 c!591006) b!3452066))

(assert (= (and d!992927 (not c!591006)) b!3452067))

(assert (=> b!3452067 m!3849743))

(assert (=> b!3450146 d!992927))

(assert (=> b!3450146 d!992657))

(declare-fun d!992929 () Bool)

(declare-fun lt!1171912 () Int)

(assert (=> d!992929 (= lt!1171912 (size!28101 (list!13483 (_2!21515 lt!1170999))))))

(declare-fun size!28111 (Conc!11215) Int)

(assert (=> d!992929 (= lt!1171912 (size!28111 (c!590467 (_2!21515 lt!1170999))))))

(assert (=> d!992929 (= (size!28105 (_2!21515 lt!1170999)) lt!1171912)))

(declare-fun bs!559888 () Bool)

(assert (= bs!559888 d!992929))

(assert (=> bs!559888 m!3847185))

(assert (=> bs!559888 m!3847185))

(declare-fun m!3850025 () Bool)

(assert (=> bs!559888 m!3850025))

(declare-fun m!3850027 () Bool)

(assert (=> bs!559888 m!3850027))

(assert (=> b!3450168 d!992929))

(declare-fun d!992931 () Bool)

(declare-fun lt!1171913 () Int)

(assert (=> d!992931 (= lt!1171913 (size!28101 (list!13483 lt!1170946)))))

(assert (=> d!992931 (= lt!1171913 (size!28111 (c!590467 lt!1170946)))))

(assert (=> d!992931 (= (size!28105 lt!1170946) lt!1171913)))

(declare-fun bs!559889 () Bool)

(assert (= bs!559889 d!992931))

(assert (=> bs!559889 m!3847181))

(assert (=> bs!559889 m!3847181))

(assert (=> bs!559889 m!3849333))

(declare-fun m!3850029 () Bool)

(assert (=> bs!559889 m!3850029))

(assert (=> b!3450168 d!992931))

(declare-fun d!992933 () Bool)

(declare-fun lt!1171914 () Int)

(assert (=> d!992933 (= lt!1171914 (size!28101 (list!13483 (seqFromList!3894 (_1!21519 lt!1171170)))))))

(assert (=> d!992933 (= lt!1171914 (size!28111 (c!590467 (seqFromList!3894 (_1!21519 lt!1171170)))))))

(assert (=> d!992933 (= (size!28105 (seqFromList!3894 (_1!21519 lt!1171170))) lt!1171914)))

(declare-fun bs!559890 () Bool)

(assert (= bs!559890 d!992933))

(assert (=> bs!559890 m!3847755))

(declare-fun m!3850031 () Bool)

(assert (=> bs!559890 m!3850031))

(assert (=> bs!559890 m!3850031))

(declare-fun m!3850033 () Bool)

(assert (=> bs!559890 m!3850033))

(declare-fun m!3850035 () Bool)

(assert (=> bs!559890 m!3850035))

(assert (=> b!3450602 d!992933))

(assert (=> b!3450602 d!992723))

(assert (=> b!3450602 d!992047))

(declare-fun d!992935 () Bool)

(declare-fun e!2138273 () Bool)

(assert (=> d!992935 e!2138273))

(declare-fun res!1392047 () Bool)

(assert (=> d!992935 (=> res!1392047 e!2138273)))

(assert (=> d!992935 (= res!1392047 (isEmpty!21402 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(declare-fun lt!1171917 () Unit!52398)

(declare-fun choose!19936 (Regex!10179 List!37203) Unit!52398)

(assert (=> d!992935 (= lt!1171917 (choose!19936 (regex!5420 (rule!8000 (h!42500 tokens!494))) lt!1170951))))

(assert (=> d!992935 (validRegex!4634 (regex!5420 (rule!8000 (h!42500 tokens!494))))))

(assert (=> d!992935 (= (longestMatchIsAcceptedByMatchOrIsEmpty!872 (regex!5420 (rule!8000 (h!42500 tokens!494))) lt!1170951) lt!1171917)))

(declare-fun b!3452070 () Bool)

(assert (=> b!3452070 (= e!2138273 (matchR!4763 (regex!5420 (rule!8000 (h!42500 tokens!494))) (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(assert (= (and d!992935 (not res!1392047)) b!3452070))

(assert (=> d!992935 m!3849515))

(assert (=> d!992935 m!3847761))

(assert (=> d!992935 m!3846815))

(assert (=> d!992935 m!3847767))

(assert (=> d!992935 m!3847761))

(assert (=> d!992935 m!3847765))

(assert (=> d!992935 m!3846815))

(declare-fun m!3850037 () Bool)

(assert (=> d!992935 m!3850037))

(assert (=> b!3452070 m!3847761))

(assert (=> b!3452070 m!3846815))

(assert (=> b!3452070 m!3847761))

(assert (=> b!3452070 m!3846815))

(assert (=> b!3452070 m!3847767))

(assert (=> b!3452070 m!3847785))

(assert (=> b!3450602 d!992935))

(assert (=> b!3450602 d!992763))

(declare-fun bs!559891 () Bool)

(declare-fun d!992937 () Bool)

(assert (= bs!559891 (and d!992937 d!992771)))

(declare-fun lambda!121568 () Int)

(assert (=> bs!559891 (= lambda!121568 lambda!121563)))

(declare-fun b!3452075 () Bool)

(declare-fun e!2138276 () Bool)

(assert (=> b!3452075 (= e!2138276 true)))

(assert (=> d!992937 e!2138276))

(assert (= d!992937 b!3452075))

(assert (=> b!3452075 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (dynLambda!15578 order!19693 lambda!121568))))

(assert (=> b!3452075 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (dynLambda!15578 order!19693 lambda!121568))))

(assert (=> d!992937 (= (list!13483 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 (_1!21519 lt!1171170))))) (list!13483 (seqFromList!3894 (_1!21519 lt!1171170))))))

(declare-fun lt!1171920 () Unit!52398)

(declare-fun ForallOf!594 (Int BalanceConc!22044) Unit!52398)

(assert (=> d!992937 (= lt!1171920 (ForallOf!594 lambda!121568 (seqFromList!3894 (_1!21519 lt!1171170))))))

(assert (=> d!992937 (= (lemmaSemiInverse!1249 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 (_1!21519 lt!1171170))) lt!1171920)))

(declare-fun b_lambda!99123 () Bool)

(assert (=> (not b_lambda!99123) (not d!992937)))

(declare-fun t!271902 () Bool)

(declare-fun tb!187881 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271902) tb!187881))

(declare-fun b!3452076 () Bool)

(declare-fun e!2138277 () Bool)

(declare-fun tp!1076473 () Bool)

(assert (=> b!3452076 (= e!2138277 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 (_1!21519 lt!1171170)))))) tp!1076473))))

(declare-fun result!231744 () Bool)

(assert (=> tb!187881 (= result!231744 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 (_1!21519 lt!1171170))))) e!2138277))))

(assert (= tb!187881 b!3452076))

(declare-fun m!3850039 () Bool)

(assert (=> b!3452076 m!3850039))

(declare-fun m!3850041 () Bool)

(assert (=> tb!187881 m!3850041))

(assert (=> d!992937 t!271902))

(declare-fun b_and!242479 () Bool)

(assert (= b_and!242469 (and (=> t!271902 result!231744) b_and!242479)))

(declare-fun tb!187883 () Bool)

(declare-fun t!271904 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271904) tb!187883))

(declare-fun result!231746 () Bool)

(assert (= result!231746 result!231744))

(assert (=> d!992937 t!271904))

(declare-fun b_and!242481 () Bool)

(assert (= b_and!242477 (and (=> t!271904 result!231746) b_and!242481)))

(declare-fun t!271906 () Bool)

(declare-fun tb!187885 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271906) tb!187885))

(declare-fun result!231748 () Bool)

(assert (= result!231748 result!231744))

(assert (=> d!992937 t!271906))

(declare-fun b_and!242483 () Bool)

(assert (= b_and!242473 (and (=> t!271906 result!231748) b_and!242483)))

(declare-fun tb!187887 () Bool)

(declare-fun t!271908 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271908) tb!187887))

(declare-fun result!231750 () Bool)

(assert (= result!231750 result!231744))

(assert (=> d!992937 t!271908))

(declare-fun b_and!242485 () Bool)

(assert (= b_and!242475 (and (=> t!271908 result!231750) b_and!242485)))

(declare-fun t!271910 () Bool)

(declare-fun tb!187889 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271910) tb!187889))

(declare-fun result!231752 () Bool)

(assert (= result!231752 result!231744))

(assert (=> d!992937 t!271910))

(declare-fun b_and!242487 () Bool)

(assert (= b_and!242471 (and (=> t!271910 result!231752) b_and!242487)))

(declare-fun b_lambda!99125 () Bool)

(assert (=> (not b_lambda!99125) (not d!992937)))

(declare-fun tb!187891 () Bool)

(declare-fun t!271912 () Bool)

(assert (=> (and b!3449880 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271912) tb!187891))

(declare-fun result!231754 () Bool)

(assert (=> tb!187891 (= result!231754 (inv!21 (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 (_1!21519 lt!1171170)))))))

(declare-fun m!3850043 () Bool)

(assert (=> tb!187891 m!3850043))

(assert (=> d!992937 t!271912))

(declare-fun b_and!242489 () Bool)

(assert (= b_and!242455 (and (=> t!271912 result!231754) b_and!242489)))

(declare-fun t!271914 () Bool)

(declare-fun tb!187893 () Bool)

(assert (=> (and b!3449883 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271914) tb!187893))

(declare-fun result!231756 () Bool)

(assert (= result!231756 result!231754))

(assert (=> d!992937 t!271914))

(declare-fun b_and!242491 () Bool)

(assert (= b_and!242449 (and (=> t!271914 result!231756) b_and!242491)))

(declare-fun tb!187895 () Bool)

(declare-fun t!271916 () Bool)

(assert (=> (and b!3450680 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271916) tb!187895))

(declare-fun result!231758 () Bool)

(assert (= result!231758 result!231754))

(assert (=> d!992937 t!271916))

(declare-fun b_and!242493 () Bool)

(assert (= b_and!242457 (and (=> t!271916 result!231758) b_and!242493)))

(declare-fun tb!187897 () Bool)

(declare-fun t!271918 () Bool)

(assert (=> (and b!3449897 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271918) tb!187897))

(declare-fun result!231760 () Bool)

(assert (= result!231760 result!231754))

(assert (=> d!992937 t!271918))

(declare-fun b_and!242495 () Bool)

(assert (= b_and!242451 (and (=> t!271918 result!231760) b_and!242495)))

(declare-fun t!271920 () Bool)

(declare-fun tb!187899 () Bool)

(assert (=> (and b!3450694 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271920) tb!187899))

(declare-fun result!231762 () Bool)

(assert (= result!231762 result!231754))

(assert (=> d!992937 t!271920))

(declare-fun b_and!242497 () Bool)

(assert (= b_and!242453 (and (=> t!271920 result!231762) b_and!242497)))

(declare-fun m!3850045 () Bool)

(assert (=> d!992937 m!3850045))

(declare-fun m!3850047 () Bool)

(assert (=> d!992937 m!3850047))

(assert (=> d!992937 m!3847755))

(declare-fun m!3850049 () Bool)

(assert (=> d!992937 m!3850049))

(assert (=> d!992937 m!3847755))

(declare-fun m!3850051 () Bool)

(assert (=> d!992937 m!3850051))

(assert (=> d!992937 m!3850051))

(assert (=> d!992937 m!3850045))

(assert (=> d!992937 m!3847755))

(assert (=> d!992937 m!3850031))

(assert (=> b!3450602 d!992937))

(declare-fun d!992939 () Bool)

(assert (=> d!992939 (= (isEmpty!21402 (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))) ((_ is Nil!37079) (_1!21519 (findLongestMatchInner!899 (regex!5420 (rule!8000 (h!42500 tokens!494))) Nil!37079 (size!28101 Nil!37079) lt!1170951 lt!1170951 (size!28101 lt!1170951)))))))

(assert (=> b!3450602 d!992939))

(declare-fun d!992941 () Bool)

(assert (=> d!992941 (= (seqFromList!3894 (_1!21519 lt!1171170)) (fromListB!1762 (_1!21519 lt!1171170)))))

(declare-fun bs!559892 () Bool)

(assert (= bs!559892 d!992941))

(declare-fun m!3850053 () Bool)

(assert (=> bs!559892 m!3850053))

(assert (=> b!3450602 d!992941))

(declare-fun d!992943 () Bool)

(assert (=> d!992943 (= (apply!8691 (transformation!5420 (rule!8000 (h!42500 tokens!494))) (seqFromList!3894 (_1!21519 lt!1171170))) (dynLambda!15574 (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (seqFromList!3894 (_1!21519 lt!1171170))))))

(declare-fun b_lambda!99127 () Bool)

(assert (=> (not b_lambda!99127) (not d!992943)))

(assert (=> d!992943 t!271916))

(declare-fun b_and!242499 () Bool)

(assert (= b_and!242493 (and (=> t!271916 result!231758) b_and!242499)))

(assert (=> d!992943 t!271912))

(declare-fun b_and!242501 () Bool)

(assert (= b_and!242489 (and (=> t!271912 result!231754) b_and!242501)))

(assert (=> d!992943 t!271920))

(declare-fun b_and!242503 () Bool)

(assert (= b_and!242497 (and (=> t!271920 result!231762) b_and!242503)))

(assert (=> d!992943 t!271914))

(declare-fun b_and!242505 () Bool)

(assert (= b_and!242491 (and (=> t!271914 result!231756) b_and!242505)))

(assert (=> d!992943 t!271918))

(declare-fun b_and!242507 () Bool)

(assert (= b_and!242495 (and (=> t!271918 result!231760) b_and!242507)))

(assert (=> d!992943 m!3847755))

(assert (=> d!992943 m!3850051))

(assert (=> b!3450602 d!992943))

(declare-fun b!3452077 () Bool)

(declare-fun e!2138280 () Bool)

(assert (=> b!3452077 (= e!2138280 (inv!15 (value!174930 (h!42500 (t!271613 tokens!494)))))))

(declare-fun b!3452078 () Bool)

(declare-fun e!2138281 () Bool)

(declare-fun e!2138279 () Bool)

(assert (=> b!3452078 (= e!2138281 e!2138279)))

(declare-fun c!591009 () Bool)

(assert (=> b!3452078 (= c!591009 ((_ is IntegerValue!16951) (value!174930 (h!42500 (t!271613 tokens!494)))))))

(declare-fun b!3452079 () Bool)

(assert (=> b!3452079 (= e!2138281 (inv!16 (value!174930 (h!42500 (t!271613 tokens!494)))))))

(declare-fun d!992945 () Bool)

(declare-fun c!591008 () Bool)

(assert (=> d!992945 (= c!591008 ((_ is IntegerValue!16950) (value!174930 (h!42500 (t!271613 tokens!494)))))))

(assert (=> d!992945 (= (inv!21 (value!174930 (h!42500 (t!271613 tokens!494)))) e!2138281)))

(declare-fun b!3452080 () Bool)

(declare-fun res!1392048 () Bool)

(assert (=> b!3452080 (=> res!1392048 e!2138280)))

(assert (=> b!3452080 (= res!1392048 (not ((_ is IntegerValue!16952) (value!174930 (h!42500 (t!271613 tokens!494))))))))

(assert (=> b!3452080 (= e!2138279 e!2138280)))

(declare-fun b!3452081 () Bool)

(assert (=> b!3452081 (= e!2138279 (inv!17 (value!174930 (h!42500 (t!271613 tokens!494)))))))

(assert (= (and d!992945 c!591008) b!3452079))

(assert (= (and d!992945 (not c!591008)) b!3452078))

(assert (= (and b!3452078 c!591009) b!3452081))

(assert (= (and b!3452078 (not c!591009)) b!3452080))

(assert (= (and b!3452080 (not res!1392048)) b!3452077))

(declare-fun m!3850055 () Bool)

(assert (=> b!3452077 m!3850055))

(declare-fun m!3850057 () Bool)

(assert (=> b!3452079 m!3850057))

(declare-fun m!3850059 () Bool)

(assert (=> b!3452081 m!3850059))

(assert (=> b!3450692 d!992945))

(declare-fun d!992947 () Bool)

(declare-fun lt!1171921 () Bool)

(assert (=> d!992947 (= lt!1171921 (isEmpty!21402 (list!13483 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))))

(assert (=> d!992947 (= lt!1171921 (isEmpty!21409 (c!590467 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494))))))))))

(assert (=> d!992947 (= (isEmpty!21403 (_2!21515 (lex!2335 thiss!18206 rules!2135 (print!2074 thiss!18206 (singletonSeq!2516 (h!42500 tokens!494)))))) lt!1171921)))

(declare-fun bs!559893 () Bool)

(assert (= bs!559893 d!992947))

(declare-fun m!3850061 () Bool)

(assert (=> bs!559893 m!3850061))

(assert (=> bs!559893 m!3850061))

(declare-fun m!3850063 () Bool)

(assert (=> bs!559893 m!3850063))

(declare-fun m!3850065 () Bool)

(assert (=> bs!559893 m!3850065))

(assert (=> b!3450618 d!992947))

(assert (=> b!3450618 d!992913))

(assert (=> b!3450618 d!992915))

(assert (=> b!3450618 d!991949))

(declare-fun d!992949 () Bool)

(declare-fun c!591010 () Bool)

(assert (=> d!992949 (= c!591010 ((_ is Nil!37079) lt!1170989))))

(declare-fun e!2138282 () (InoxSet C!20544))

(assert (=> d!992949 (= (content!5161 lt!1170989) e!2138282)))

(declare-fun b!3452082 () Bool)

(assert (=> b!3452082 (= e!2138282 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452083 () Bool)

(assert (=> b!3452083 (= e!2138282 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 lt!1170989) true) (content!5161 (t!271612 lt!1170989))))))

(assert (= (and d!992949 c!591010) b!3452082))

(assert (= (and d!992949 (not c!591010)) b!3452083))

(declare-fun m!3850067 () Bool)

(assert (=> b!3452083 m!3850067))

(declare-fun m!3850069 () Bool)

(assert (=> b!3452083 m!3850069))

(assert (=> d!991911 d!992949))

(assert (=> d!991911 d!992811))

(assert (=> d!991911 d!992611))

(declare-fun d!992951 () Bool)

(declare-fun lt!1171922 () Bool)

(assert (=> d!992951 (= lt!1171922 (select (content!5161 (t!271612 lt!1170945)) lt!1170948))))

(declare-fun e!2138283 () Bool)

(assert (=> d!992951 (= lt!1171922 e!2138283)))

(declare-fun res!1392049 () Bool)

(assert (=> d!992951 (=> (not res!1392049) (not e!2138283))))

(assert (=> d!992951 (= res!1392049 ((_ is Cons!37079) (t!271612 lt!1170945)))))

(assert (=> d!992951 (= (contains!6842 (t!271612 lt!1170945) lt!1170948) lt!1171922)))

(declare-fun b!3452084 () Bool)

(declare-fun e!2138284 () Bool)

(assert (=> b!3452084 (= e!2138283 e!2138284)))

(declare-fun res!1392050 () Bool)

(assert (=> b!3452084 (=> res!1392050 e!2138284)))

(assert (=> b!3452084 (= res!1392050 (= (h!42499 (t!271612 lt!1170945)) lt!1170948))))

(declare-fun b!3452085 () Bool)

(assert (=> b!3452085 (= e!2138284 (contains!6842 (t!271612 (t!271612 lt!1170945)) lt!1170948))))

(assert (= (and d!992951 res!1392049) b!3452084))

(assert (= (and b!3452084 (not res!1392050)) b!3452085))

(assert (=> d!992951 m!3848665))

(declare-fun m!3850071 () Bool)

(assert (=> d!992951 m!3850071))

(declare-fun m!3850073 () Bool)

(assert (=> b!3452085 m!3850073))

(assert (=> b!3450223 d!992951))

(declare-fun d!992953 () Bool)

(declare-fun lt!1171923 () Int)

(assert (=> d!992953 (>= lt!1171923 0)))

(declare-fun e!2138285 () Int)

(assert (=> d!992953 (= lt!1171923 e!2138285)))

(declare-fun c!591011 () Bool)

(assert (=> d!992953 (= c!591011 ((_ is Nil!37079) (_2!21514 (get!11857 lt!1171168))))))

(assert (=> d!992953 (= (size!28101 (_2!21514 (get!11857 lt!1171168))) lt!1171923)))

(declare-fun b!3452086 () Bool)

(assert (=> b!3452086 (= e!2138285 0)))

(declare-fun b!3452087 () Bool)

(assert (=> b!3452087 (= e!2138285 (+ 1 (size!28101 (t!271612 (_2!21514 (get!11857 lt!1171168))))))))

(assert (= (and d!992953 c!591011) b!3452086))

(assert (= (and d!992953 (not c!591011)) b!3452087))

(declare-fun m!3850075 () Bool)

(assert (=> b!3452087 m!3850075))

(assert (=> b!3450606 d!992953))

(assert (=> b!3450606 d!992329))

(assert (=> b!3450606 d!992047))

(assert (=> b!3450612 d!992869))

(assert (=> b!3450612 d!992871))

(declare-fun b!3452088 () Bool)

(declare-fun e!2138289 () Option!7485)

(assert (=> b!3452088 (= e!2138289 (Some!7484 (h!42501 (t!271614 rules!2135))))))

(declare-fun b!3452089 () Bool)

(declare-fun e!2138288 () Option!7485)

(assert (=> b!3452089 (= e!2138288 None!7484)))

(declare-fun b!3452090 () Bool)

(declare-fun e!2138286 () Bool)

(declare-fun lt!1171925 () Option!7485)

(assert (=> b!3452090 (= e!2138286 (= (tag!6018 (get!11855 lt!1171925)) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3452091 () Bool)

(declare-fun e!2138287 () Bool)

(assert (=> b!3452091 (= e!2138287 e!2138286)))

(declare-fun res!1392052 () Bool)

(assert (=> b!3452091 (=> (not res!1392052) (not e!2138286))))

(assert (=> b!3452091 (= res!1392052 (contains!6846 (t!271614 rules!2135) (get!11855 lt!1171925)))))

(declare-fun b!3452092 () Bool)

(declare-fun lt!1171926 () Unit!52398)

(declare-fun lt!1171924 () Unit!52398)

(assert (=> b!3452092 (= lt!1171926 lt!1171924)))

(assert (=> b!3452092 (rulesInvariant!4406 thiss!18206 (t!271614 (t!271614 rules!2135)))))

(assert (=> b!3452092 (= lt!1171924 (lemmaInvariantOnRulesThenOnTail!422 thiss!18206 (h!42501 (t!271614 rules!2135)) (t!271614 (t!271614 rules!2135))))))

(assert (=> b!3452092 (= e!2138288 (getRuleFromTag!1063 thiss!18206 (t!271614 (t!271614 rules!2135)) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))

(declare-fun b!3452093 () Bool)

(assert (=> b!3452093 (= e!2138289 e!2138288)))

(declare-fun c!591012 () Bool)

(assert (=> b!3452093 (= c!591012 (and ((_ is Cons!37081) (t!271614 rules!2135)) (not (= (tag!6018 (h!42501 (t!271614 rules!2135))) (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(declare-fun d!992955 () Bool)

(assert (=> d!992955 e!2138287))

(declare-fun res!1392051 () Bool)

(assert (=> d!992955 (=> res!1392051 e!2138287)))

(assert (=> d!992955 (= res!1392051 (isEmpty!21406 lt!1171925))))

(assert (=> d!992955 (= lt!1171925 e!2138289)))

(declare-fun c!591013 () Bool)

(assert (=> d!992955 (= c!591013 (and ((_ is Cons!37081) (t!271614 rules!2135)) (= (tag!6018 (h!42501 (t!271614 rules!2135))) (tag!6018 (rule!8000 (h!42500 tokens!494))))))))

(assert (=> d!992955 (rulesInvariant!4406 thiss!18206 (t!271614 rules!2135))))

(assert (=> d!992955 (= (getRuleFromTag!1063 thiss!18206 (t!271614 rules!2135) (tag!6018 (rule!8000 (h!42500 tokens!494)))) lt!1171925)))

(assert (= (and d!992955 c!591013) b!3452088))

(assert (= (and d!992955 (not c!591013)) b!3452093))

(assert (= (and b!3452093 c!591012) b!3452092))

(assert (= (and b!3452093 (not c!591012)) b!3452089))

(assert (= (and d!992955 (not res!1392051)) b!3452091))

(assert (= (and b!3452091 res!1392052) b!3452090))

(declare-fun m!3850077 () Bool)

(assert (=> b!3452090 m!3850077))

(assert (=> b!3452091 m!3850077))

(assert (=> b!3452091 m!3850077))

(declare-fun m!3850079 () Bool)

(assert (=> b!3452091 m!3850079))

(assert (=> b!3452092 m!3849893))

(assert (=> b!3452092 m!3849895))

(declare-fun m!3850081 () Bool)

(assert (=> b!3452092 m!3850081))

(declare-fun m!3850083 () Bool)

(assert (=> d!992955 m!3850083))

(assert (=> d!992955 m!3847639))

(assert (=> b!3450612 d!992955))

(declare-fun d!992957 () Bool)

(assert (=> d!992957 (= (inv!15 (value!174930 (h!42500 tokens!494))) (= (charsToBigInt!0 (text!39999 (value!174930 (h!42500 tokens!494))) 0) (value!174925 (value!174930 (h!42500 tokens!494)))))))

(declare-fun bs!559894 () Bool)

(assert (= bs!559894 d!992957))

(declare-fun m!3850085 () Bool)

(assert (=> bs!559894 m!3850085))

(assert (=> b!3450393 d!992957))

(declare-fun d!992959 () Bool)

(assert (=> d!992959 (= (inv!50235 (tag!6018 (h!42501 (t!271614 rules!2135)))) (= (mod (str.len (value!174929 (tag!6018 (h!42501 (t!271614 rules!2135))))) 2) 0))))

(assert (=> b!3450679 d!992959))

(declare-fun d!992961 () Bool)

(declare-fun res!1392053 () Bool)

(declare-fun e!2138290 () Bool)

(assert (=> d!992961 (=> (not res!1392053) (not e!2138290))))

(assert (=> d!992961 (= res!1392053 (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135))))))))

(assert (=> d!992961 (= (inv!50238 (transformation!5420 (h!42501 (t!271614 rules!2135)))) e!2138290)))

(declare-fun b!3452094 () Bool)

(assert (=> b!3452094 (= e!2138290 (equivClasses!2172 (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135))))))))

(assert (= (and d!992961 res!1392053) b!3452094))

(declare-fun m!3850087 () Bool)

(assert (=> d!992961 m!3850087))

(declare-fun m!3850089 () Bool)

(assert (=> b!3452094 m!3850089))

(assert (=> b!3450679 d!992961))

(declare-fun d!992963 () Bool)

(assert (=> d!992963 (= (list!13483 lt!1171003) (list!13487 (c!590467 lt!1171003)))))

(declare-fun bs!559895 () Bool)

(assert (= bs!559895 d!992963))

(declare-fun m!3850091 () Bool)

(assert (=> bs!559895 m!3850091))

(assert (=> d!991927 d!992963))

(assert (=> d!991883 d!992653))

(declare-fun bm!249190 () Bool)

(declare-fun call!249197 () Bool)

(declare-fun c!591014 () Bool)

(assert (=> bm!249190 (= call!249197 (validRegex!4634 (ite c!591014 (regOne!20871 (regex!5420 lt!1170934)) (regOne!20870 (regex!5420 lt!1170934)))))))

(declare-fun d!992965 () Bool)

(declare-fun res!1392058 () Bool)

(declare-fun e!2138293 () Bool)

(assert (=> d!992965 (=> res!1392058 e!2138293)))

(assert (=> d!992965 (= res!1392058 ((_ is ElementMatch!10179) (regex!5420 lt!1170934)))))

(assert (=> d!992965 (= (validRegex!4634 (regex!5420 lt!1170934)) e!2138293)))

(declare-fun b!3452095 () Bool)

(declare-fun res!1392056 () Bool)

(declare-fun e!2138295 () Bool)

(assert (=> b!3452095 (=> res!1392056 e!2138295)))

(assert (=> b!3452095 (= res!1392056 (not ((_ is Concat!15829) (regex!5420 lt!1170934))))))

(declare-fun e!2138294 () Bool)

(assert (=> b!3452095 (= e!2138294 e!2138295)))

(declare-fun call!249196 () Bool)

(declare-fun c!591015 () Bool)

(declare-fun bm!249191 () Bool)

(assert (=> bm!249191 (= call!249196 (validRegex!4634 (ite c!591015 (reg!10508 (regex!5420 lt!1170934)) (ite c!591014 (regTwo!20871 (regex!5420 lt!1170934)) (regTwo!20870 (regex!5420 lt!1170934))))))))

(declare-fun b!3452096 () Bool)

(declare-fun e!2138292 () Bool)

(declare-fun call!249195 () Bool)

(assert (=> b!3452096 (= e!2138292 call!249195)))

(declare-fun b!3452097 () Bool)

(declare-fun res!1392055 () Bool)

(declare-fun e!2138297 () Bool)

(assert (=> b!3452097 (=> (not res!1392055) (not e!2138297))))

(assert (=> b!3452097 (= res!1392055 call!249197)))

(assert (=> b!3452097 (= e!2138294 e!2138297)))

(declare-fun b!3452098 () Bool)

(assert (=> b!3452098 (= e!2138297 call!249195)))

(declare-fun bm!249192 () Bool)

(assert (=> bm!249192 (= call!249195 call!249196)))

(declare-fun b!3452099 () Bool)

(declare-fun e!2138296 () Bool)

(declare-fun e!2138291 () Bool)

(assert (=> b!3452099 (= e!2138296 e!2138291)))

(declare-fun res!1392057 () Bool)

(assert (=> b!3452099 (= res!1392057 (not (nullable!3478 (reg!10508 (regex!5420 lt!1170934)))))))

(assert (=> b!3452099 (=> (not res!1392057) (not e!2138291))))

(declare-fun b!3452100 () Bool)

(assert (=> b!3452100 (= e!2138293 e!2138296)))

(assert (=> b!3452100 (= c!591015 ((_ is Star!10179) (regex!5420 lt!1170934)))))

(declare-fun b!3452101 () Bool)

(assert (=> b!3452101 (= e!2138296 e!2138294)))

(assert (=> b!3452101 (= c!591014 ((_ is Union!10179) (regex!5420 lt!1170934)))))

(declare-fun b!3452102 () Bool)

(assert (=> b!3452102 (= e!2138295 e!2138292)))

(declare-fun res!1392054 () Bool)

(assert (=> b!3452102 (=> (not res!1392054) (not e!2138292))))

(assert (=> b!3452102 (= res!1392054 call!249197)))

(declare-fun b!3452103 () Bool)

(assert (=> b!3452103 (= e!2138291 call!249196)))

(assert (= (and d!992965 (not res!1392058)) b!3452100))

(assert (= (and b!3452100 c!591015) b!3452099))

(assert (= (and b!3452100 (not c!591015)) b!3452101))

(assert (= (and b!3452099 res!1392057) b!3452103))

(assert (= (and b!3452101 c!591014) b!3452097))

(assert (= (and b!3452101 (not c!591014)) b!3452095))

(assert (= (and b!3452097 res!1392055) b!3452098))

(assert (= (and b!3452095 (not res!1392056)) b!3452102))

(assert (= (and b!3452102 res!1392054) b!3452096))

(assert (= (or b!3452098 b!3452096) bm!249192))

(assert (= (or b!3452097 b!3452102) bm!249190))

(assert (= (or b!3452103 bm!249192) bm!249191))

(declare-fun m!3850093 () Bool)

(assert (=> bm!249190 m!3850093))

(declare-fun m!3850095 () Bool)

(assert (=> bm!249191 m!3850095))

(declare-fun m!3850097 () Bool)

(assert (=> b!3452099 m!3850097))

(assert (=> d!991883 d!992965))

(declare-fun b!3452106 () Bool)

(declare-fun res!1392059 () Bool)

(declare-fun e!2138299 () Bool)

(assert (=> b!3452106 (=> (not res!1392059) (not e!2138299))))

(declare-fun lt!1171927 () List!37203)

(assert (=> b!3452106 (= res!1392059 (= (size!28101 lt!1171927) (+ (size!28101 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (size!28101 (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))))))

(declare-fun b!3452107 () Bool)

(assert (=> b!3452107 (= e!2138299 (or (not (= (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))) Nil!37079)) (= lt!1171927 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))))))

(declare-fun d!992967 () Bool)

(assert (=> d!992967 e!2138299))

(declare-fun res!1392060 () Bool)

(assert (=> d!992967 (=> (not res!1392060) (not e!2138299))))

(assert (=> d!992967 (= res!1392060 (= (content!5161 lt!1171927) ((_ map or) (content!5161 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (content!5161 (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))))))

(declare-fun e!2138298 () List!37203)

(assert (=> d!992967 (= lt!1171927 e!2138298)))

(declare-fun c!591016 () Bool)

(assert (=> d!992967 (= c!591016 ((_ is Nil!37079) (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))))

(assert (=> d!992967 (= (++!9125 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))) (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080)))) lt!1171927)))

(declare-fun b!3452104 () Bool)

(assert (=> b!3452104 (= e!2138298 (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))

(declare-fun b!3452105 () Bool)

(assert (=> b!3452105 (= e!2138298 (Cons!37079 (h!42499 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (++!9125 (t!271612 (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))))

(assert (= (and d!992967 c!591016) b!3452104))

(assert (= (and d!992967 (not c!591016)) b!3452105))

(assert (= (and d!992967 res!1392060) b!3452106))

(assert (= (and b!3452106 res!1392059) b!3452107))

(declare-fun m!3850099 () Bool)

(assert (=> b!3452106 m!3850099))

(assert (=> b!3452106 m!3847309))

(declare-fun m!3850101 () Bool)

(assert (=> b!3452106 m!3850101))

(assert (=> b!3452106 m!3847311))

(declare-fun m!3850103 () Bool)

(assert (=> b!3452106 m!3850103))

(declare-fun m!3850105 () Bool)

(assert (=> d!992967 m!3850105))

(assert (=> d!992967 m!3847309))

(declare-fun m!3850107 () Bool)

(assert (=> d!992967 m!3850107))

(assert (=> d!992967 m!3847311))

(declare-fun m!3850109 () Bool)

(assert (=> d!992967 m!3850109))

(assert (=> b!3452105 m!3847311))

(declare-fun m!3850111 () Bool)

(assert (=> b!3452105 m!3850111))

(assert (=> b!3450215 d!992967))

(declare-fun d!992969 () Bool)

(assert (=> d!992969 (= (list!13483 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))) (list!13487 (c!590467 (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))))

(declare-fun bs!559896 () Bool)

(assert (= bs!559896 d!992969))

(declare-fun m!3850113 () Bool)

(assert (=> bs!559896 m!3850113))

(assert (=> b!3450215 d!992969))

(declare-fun d!992971 () Bool)

(declare-fun lt!1171928 () BalanceConc!22044)

(assert (=> d!992971 (= (list!13483 lt!1171928) (originalCharacters!6134 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))

(assert (=> d!992971 (= lt!1171928 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (value!174930 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))))

(assert (=> d!992971 (= (charsOf!3434 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))) lt!1171928)))

(declare-fun b_lambda!99129 () Bool)

(assert (=> (not b_lambda!99129) (not d!992971)))

(declare-fun t!271922 () Bool)

(declare-fun tb!187901 () Bool)

(assert (=> (and b!3449883 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271922) tb!187901))

(declare-fun b!3452108 () Bool)

(declare-fun e!2138300 () Bool)

(declare-fun tp!1076474 () Bool)

(assert (=> b!3452108 (= e!2138300 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (value!174930 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) tp!1076474))))

(declare-fun result!231764 () Bool)

(assert (=> tb!187901 (= result!231764 (and (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (value!174930 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) e!2138300))))

(assert (= tb!187901 b!3452108))

(declare-fun m!3850115 () Bool)

(assert (=> b!3452108 m!3850115))

(declare-fun m!3850117 () Bool)

(assert (=> tb!187901 m!3850117))

(assert (=> d!992971 t!271922))

(declare-fun b_and!242509 () Bool)

(assert (= b_and!242479 (and (=> t!271922 result!231764) b_and!242509)))

(declare-fun tb!187903 () Bool)

(declare-fun t!271924 () Bool)

(assert (=> (and b!3450680 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271924) tb!187903))

(declare-fun result!231766 () Bool)

(assert (= result!231766 result!231764))

(assert (=> d!992971 t!271924))

(declare-fun b_and!242511 () Bool)

(assert (= b_and!242483 (and (=> t!271924 result!231766) b_and!242511)))

(declare-fun tb!187905 () Bool)

(declare-fun t!271926 () Bool)

(assert (=> (and b!3449897 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271926) tb!187905))

(declare-fun result!231768 () Bool)

(assert (= result!231768 result!231764))

(assert (=> d!992971 t!271926))

(declare-fun b_and!242513 () Bool)

(assert (= b_and!242485 (and (=> t!271926 result!231768) b_and!242513)))

(declare-fun tb!187907 () Bool)

(declare-fun t!271928 () Bool)

(assert (=> (and b!3449880 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271928) tb!187907))

(declare-fun result!231770 () Bool)

(assert (= result!231770 result!231764))

(assert (=> d!992971 t!271928))

(declare-fun b_and!242515 () Bool)

(assert (= b_and!242481 (and (=> t!271928 result!231770) b_and!242515)))

(declare-fun t!271930 () Bool)

(declare-fun tb!187909 () Bool)

(assert (=> (and b!3450694 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271930) tb!187909))

(declare-fun result!231772 () Bool)

(assert (= result!231772 result!231764))

(assert (=> d!992971 t!271930))

(declare-fun b_and!242517 () Bool)

(assert (= b_and!242487 (and (=> t!271930 result!231772) b_and!242517)))

(declare-fun m!3850119 () Bool)

(assert (=> d!992971 m!3850119))

(declare-fun m!3850121 () Bool)

(assert (=> d!992971 m!3850121))

(assert (=> b!3450215 d!992971))

(declare-fun d!992973 () Bool)

(declare-fun c!591017 () Bool)

(assert (=> d!992973 (= c!591017 ((_ is Cons!37080) (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))

(declare-fun e!2138301 () List!37203)

(assert (=> d!992973 (= (printList!1557 thiss!18206 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))) e!2138301)))

(declare-fun b!3452109 () Bool)

(assert (=> b!3452109 (= e!2138301 (++!9125 (list!13483 (charsOf!3434 (h!42500 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))))) (printList!1557 thiss!18206 (t!271613 (t!271613 (Cons!37080 (h!42500 tokens!494) Nil!37080))))))))

(declare-fun b!3452110 () Bool)

(assert (=> b!3452110 (= e!2138301 Nil!37079)))

(assert (= (and d!992973 c!591017) b!3452109))

(assert (= (and d!992973 (not c!591017)) b!3452110))

(declare-fun m!3850123 () Bool)

(assert (=> b!3452109 m!3850123))

(assert (=> b!3452109 m!3850123))

(declare-fun m!3850125 () Bool)

(assert (=> b!3452109 m!3850125))

(declare-fun m!3850127 () Bool)

(assert (=> b!3452109 m!3850127))

(assert (=> b!3452109 m!3850125))

(assert (=> b!3452109 m!3850127))

(declare-fun m!3850129 () Bool)

(assert (=> b!3452109 m!3850129))

(assert (=> b!3450215 d!992973))

(declare-fun d!992975 () Bool)

(assert (=> d!992975 (= (isEmpty!21406 lt!1171118) (not ((_ is Some!7484) lt!1171118)))))

(assert (=> d!992055 d!992975))

(assert (=> d!992055 d!991881))

(assert (=> b!3450614 d!992029))

(declare-fun b!3452111 () Bool)

(declare-fun e!2138303 () Bool)

(declare-fun lt!1171929 () Bool)

(declare-fun call!249198 () Bool)

(assert (=> b!3452111 (= e!2138303 (= lt!1171929 call!249198))))

(declare-fun b!3452112 () Bool)

(declare-fun res!1392063 () Bool)

(declare-fun e!2138304 () Bool)

(assert (=> b!3452112 (=> (not res!1392063) (not e!2138304))))

(assert (=> b!3452112 (= res!1392063 (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 (h!42500 tokens!494))))))))

(declare-fun b!3452113 () Bool)

(declare-fun e!2138308 () Bool)

(assert (=> b!3452113 (= e!2138308 (matchR!4763 (derivativeStep!3031 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))) (head!7289 (list!13483 (charsOf!3434 (h!42500 tokens!494))))) (tail!5411 (list!13483 (charsOf!3434 (h!42500 tokens!494))))))))

(declare-fun b!3452114 () Bool)

(assert (=> b!3452114 (= e!2138304 (= (head!7289 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (c!590466 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))))

(declare-fun b!3452116 () Bool)

(declare-fun res!1392062 () Bool)

(declare-fun e!2138306 () Bool)

(assert (=> b!3452116 (=> res!1392062 e!2138306)))

(assert (=> b!3452116 (= res!1392062 e!2138304)))

(declare-fun res!1392061 () Bool)

(assert (=> b!3452116 (=> (not res!1392061) (not e!2138304))))

(assert (=> b!3452116 (= res!1392061 lt!1171929)))

(declare-fun b!3452117 () Bool)

(assert (=> b!3452117 (= e!2138308 (nullable!3478 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))))

(declare-fun b!3452118 () Bool)

(declare-fun res!1392064 () Bool)

(assert (=> b!3452118 (=> (not res!1392064) (not e!2138304))))

(assert (=> b!3452118 (= res!1392064 (not call!249198))))

(declare-fun b!3452119 () Bool)

(declare-fun e!2138302 () Bool)

(assert (=> b!3452119 (= e!2138303 e!2138302)))

(declare-fun c!591019 () Bool)

(assert (=> b!3452119 (= c!591019 ((_ is EmptyLang!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))))

(declare-fun b!3452120 () Bool)

(declare-fun res!1392068 () Bool)

(assert (=> b!3452120 (=> res!1392068 e!2138306)))

(assert (=> b!3452120 (= res!1392068 (not ((_ is ElementMatch!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))))

(assert (=> b!3452120 (= e!2138302 e!2138306)))

(declare-fun d!992977 () Bool)

(assert (=> d!992977 e!2138303))

(declare-fun c!591020 () Bool)

(assert (=> d!992977 (= c!591020 ((_ is EmptyExpr!10179) (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))))

(assert (=> d!992977 (= lt!1171929 e!2138308)))

(declare-fun c!591018 () Bool)

(assert (=> d!992977 (= c!591018 (isEmpty!21402 (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))

(assert (=> d!992977 (validRegex!4634 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))))))

(assert (=> d!992977 (= (matchR!4763 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494)))))) (list!13483 (charsOf!3434 (h!42500 tokens!494)))) lt!1171929)))

(declare-fun e!2138307 () Bool)

(declare-fun b!3452115 () Bool)

(assert (=> b!3452115 (= e!2138307 (not (= (head!7289 (list!13483 (charsOf!3434 (h!42500 tokens!494)))) (c!590466 (regex!5420 (get!11855 (getRuleFromTag!1063 thiss!18206 rules!2135 (tag!6018 (rule!8000 (h!42500 tokens!494))))))))))))

(declare-fun b!3452121 () Bool)

(assert (=> b!3452121 (= e!2138302 (not lt!1171929))))

(declare-fun bm!249193 () Bool)

(assert (=> bm!249193 (= call!249198 (isEmpty!21402 (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))

(declare-fun b!3452122 () Bool)

(declare-fun res!1392067 () Bool)

(assert (=> b!3452122 (=> res!1392067 e!2138307)))

(assert (=> b!3452122 (= res!1392067 (not (isEmpty!21402 (tail!5411 (list!13483 (charsOf!3434 (h!42500 tokens!494)))))))))

(declare-fun b!3452123 () Bool)

(declare-fun e!2138305 () Bool)

(assert (=> b!3452123 (= e!2138305 e!2138307)))

(declare-fun res!1392065 () Bool)

(assert (=> b!3452123 (=> res!1392065 e!2138307)))

(assert (=> b!3452123 (= res!1392065 call!249198)))

(declare-fun b!3452124 () Bool)

(assert (=> b!3452124 (= e!2138306 e!2138305)))

(declare-fun res!1392066 () Bool)

(assert (=> b!3452124 (=> (not res!1392066) (not e!2138305))))

(assert (=> b!3452124 (= res!1392066 (not lt!1171929))))

(assert (= (and d!992977 c!591018) b!3452117))

(assert (= (and d!992977 (not c!591018)) b!3452113))

(assert (= (and d!992977 c!591020) b!3452111))

(assert (= (and d!992977 (not c!591020)) b!3452119))

(assert (= (and b!3452119 c!591019) b!3452121))

(assert (= (and b!3452119 (not c!591019)) b!3452120))

(assert (= (and b!3452120 (not res!1392068)) b!3452116))

(assert (= (and b!3452116 res!1392061) b!3452118))

(assert (= (and b!3452118 res!1392064) b!3452112))

(assert (= (and b!3452112 res!1392063) b!3452114))

(assert (= (and b!3452116 (not res!1392062)) b!3452124))

(assert (= (and b!3452124 res!1392066) b!3452123))

(assert (= (and b!3452123 (not res!1392065)) b!3452122))

(assert (= (and b!3452122 (not res!1392067)) b!3452115))

(assert (= (or b!3452111 b!3452118 b!3452123) bm!249193))

(assert (=> b!3452114 m!3846793))

(declare-fun m!3850131 () Bool)

(assert (=> b!3452114 m!3850131))

(assert (=> bm!249193 m!3846793))

(declare-fun m!3850133 () Bool)

(assert (=> bm!249193 m!3850133))

(assert (=> b!3452122 m!3846793))

(declare-fun m!3850135 () Bool)

(assert (=> b!3452122 m!3850135))

(assert (=> b!3452122 m!3850135))

(declare-fun m!3850137 () Bool)

(assert (=> b!3452122 m!3850137))

(assert (=> d!992977 m!3846793))

(assert (=> d!992977 m!3850133))

(declare-fun m!3850139 () Bool)

(assert (=> d!992977 m!3850139))

(assert (=> b!3452115 m!3846793))

(assert (=> b!3452115 m!3850131))

(declare-fun m!3850141 () Bool)

(assert (=> b!3452117 m!3850141))

(assert (=> b!3452112 m!3846793))

(assert (=> b!3452112 m!3850135))

(assert (=> b!3452112 m!3850135))

(assert (=> b!3452112 m!3850137))

(assert (=> b!3452113 m!3846793))

(assert (=> b!3452113 m!3850131))

(assert (=> b!3452113 m!3850131))

(declare-fun m!3850143 () Bool)

(assert (=> b!3452113 m!3850143))

(assert (=> b!3452113 m!3846793))

(assert (=> b!3452113 m!3850135))

(assert (=> b!3452113 m!3850143))

(assert (=> b!3452113 m!3850135))

(declare-fun m!3850145 () Bool)

(assert (=> b!3452113 m!3850145))

(assert (=> b!3450614 d!992977))

(assert (=> b!3450614 d!992093))

(assert (=> b!3450614 d!992615))

(assert (=> b!3450614 d!992027))

(declare-fun bs!559897 () Bool)

(declare-fun d!992979 () Bool)

(assert (= bs!559897 (and d!992979 d!992771)))

(declare-fun lambda!121569 () Int)

(assert (=> bs!559897 (= (and (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (= lambda!121569 lambda!121563))))

(declare-fun bs!559898 () Bool)

(assert (= bs!559898 (and d!992979 d!992937)))

(assert (=> bs!559898 (= (and (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (= lambda!121569 lambda!121568))))

(assert (=> d!992979 true))

(assert (=> d!992979 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15578 order!19693 lambda!121569))))

(assert (=> d!992979 true))

(assert (=> d!992979 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15578 order!19693 lambda!121569))))

(assert (=> d!992979 (= (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (Forall!1335 lambda!121569))))

(declare-fun bs!559899 () Bool)

(assert (= bs!559899 d!992979))

(declare-fun m!3850147 () Bool)

(assert (=> bs!559899 m!3850147))

(assert (=> d!992033 d!992979))

(declare-fun b!3452127 () Bool)

(declare-fun res!1392069 () Bool)

(declare-fun e!2138310 () Bool)

(assert (=> b!3452127 (=> (not res!1392069) (not e!2138310))))

(declare-fun lt!1171930 () List!37203)

(assert (=> b!3452127 (= res!1392069 (= (size!28101 lt!1171930) (+ (size!28101 (t!271612 lt!1170951)) (size!28101 lt!1170945))))))

(declare-fun b!3452128 () Bool)

(assert (=> b!3452128 (= e!2138310 (or (not (= lt!1170945 Nil!37079)) (= lt!1171930 (t!271612 lt!1170951))))))

(declare-fun d!992981 () Bool)

(assert (=> d!992981 e!2138310))

(declare-fun res!1392070 () Bool)

(assert (=> d!992981 (=> (not res!1392070) (not e!2138310))))

(assert (=> d!992981 (= res!1392070 (= (content!5161 lt!1171930) ((_ map or) (content!5161 (t!271612 lt!1170951)) (content!5161 lt!1170945))))))

(declare-fun e!2138309 () List!37203)

(assert (=> d!992981 (= lt!1171930 e!2138309)))

(declare-fun c!591021 () Bool)

(assert (=> d!992981 (= c!591021 ((_ is Nil!37079) (t!271612 lt!1170951)))))

(assert (=> d!992981 (= (++!9125 (t!271612 lt!1170951) lt!1170945) lt!1171930)))

(declare-fun b!3452125 () Bool)

(assert (=> b!3452125 (= e!2138309 lt!1170945)))

(declare-fun b!3452126 () Bool)

(assert (=> b!3452126 (= e!2138309 (Cons!37079 (h!42499 (t!271612 lt!1170951)) (++!9125 (t!271612 (t!271612 lt!1170951)) lt!1170945)))))

(assert (= (and d!992981 c!591021) b!3452125))

(assert (= (and d!992981 (not c!591021)) b!3452126))

(assert (= (and d!992981 res!1392070) b!3452127))

(assert (= (and b!3452127 res!1392069) b!3452128))

(declare-fun m!3850149 () Bool)

(assert (=> b!3452127 m!3850149))

(assert (=> b!3452127 m!3847605))

(assert (=> b!3452127 m!3847143))

(declare-fun m!3850151 () Bool)

(assert (=> d!992981 m!3850151))

(assert (=> d!992981 m!3849759))

(assert (=> d!992981 m!3847149))

(declare-fun m!3850153 () Bool)

(assert (=> b!3452126 m!3850153))

(assert (=> b!3450149 d!992981))

(declare-fun d!992983 () Bool)

(declare-fun lt!1171931 () Int)

(assert (=> d!992983 (>= lt!1171931 0)))

(declare-fun e!2138311 () Int)

(assert (=> d!992983 (= lt!1171931 e!2138311)))

(declare-fun c!591022 () Bool)

(assert (=> d!992983 (= c!591022 ((_ is Nil!37079) (originalCharacters!6134 (h!42500 tokens!494))))))

(assert (=> d!992983 (= (size!28101 (originalCharacters!6134 (h!42500 tokens!494))) lt!1171931)))

(declare-fun b!3452129 () Bool)

(assert (=> b!3452129 (= e!2138311 0)))

(declare-fun b!3452130 () Bool)

(assert (=> b!3452130 (= e!2138311 (+ 1 (size!28101 (t!271612 (originalCharacters!6134 (h!42500 tokens!494))))))))

(assert (= (and d!992983 c!591022) b!3452129))

(assert (= (and d!992983 (not c!591022)) b!3452130))

(declare-fun m!3850155 () Bool)

(assert (=> b!3452130 m!3850155))

(assert (=> b!3450399 d!992983))

(declare-fun d!992985 () Bool)

(assert (=> d!992985 (= (inv!50243 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))) (isBalanced!3403 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))))))

(declare-fun bs!559900 () Bool)

(assert (= bs!559900 d!992985))

(declare-fun m!3850157 () Bool)

(assert (=> bs!559900 m!3850157))

(assert (=> tb!187647 d!992985))

(declare-fun bs!559901 () Bool)

(declare-fun d!992987 () Bool)

(assert (= bs!559901 (and d!992987 d!992771)))

(declare-fun lambda!121570 () Int)

(assert (=> bs!559901 (= (and (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (= lambda!121570 lambda!121563))))

(declare-fun bs!559902 () Bool)

(assert (= bs!559902 (and d!992987 d!992937)))

(assert (=> bs!559902 (= (and (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (= lambda!121570 lambda!121568))))

(declare-fun bs!559903 () Bool)

(assert (= bs!559903 (and d!992987 d!992979)))

(assert (=> bs!559903 (= (and (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (h!42501 rules!2135)))) (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (h!42501 rules!2135))))) (= lambda!121570 lambda!121569))))

(assert (=> d!992987 true))

(assert (=> d!992987 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) (dynLambda!15578 order!19693 lambda!121570))))

(assert (=> d!992987 true))

(assert (=> d!992987 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))) (dynLambda!15578 order!19693 lambda!121570))))

(assert (=> d!992987 (= (semiInverseModEq!2273 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241)))) (Forall!1335 lambda!121570))))

(declare-fun bs!559904 () Bool)

(assert (= bs!559904 d!992987))

(declare-fun m!3850159 () Bool)

(assert (=> bs!559904 m!3850159))

(assert (=> d!991955 d!992987))

(declare-fun d!992989 () Bool)

(declare-fun lt!1171932 () Int)

(assert (=> d!992989 (>= lt!1171932 0)))

(declare-fun e!2138312 () Int)

(assert (=> d!992989 (= lt!1171932 e!2138312)))

(declare-fun c!591023 () Bool)

(assert (=> d!992989 (= c!591023 ((_ is Nil!37079) (t!271612 lt!1170951)))))

(assert (=> d!992989 (= (size!28101 (t!271612 lt!1170951)) lt!1171932)))

(declare-fun b!3452131 () Bool)

(assert (=> b!3452131 (= e!2138312 0)))

(declare-fun b!3452132 () Bool)

(assert (=> b!3452132 (= e!2138312 (+ 1 (size!28101 (t!271612 (t!271612 lt!1170951)))))))

(assert (= (and d!992989 c!591023) b!3452131))

(assert (= (and d!992989 (not c!591023)) b!3452132))

(declare-fun m!3850161 () Bool)

(assert (=> b!3452132 m!3850161))

(assert (=> b!3450444 d!992989))

(declare-fun d!992991 () Bool)

(declare-fun lt!1171933 () Int)

(assert (=> d!992991 (>= lt!1171933 0)))

(declare-fun e!2138313 () Int)

(assert (=> d!992991 (= lt!1171933 e!2138313)))

(declare-fun c!591024 () Bool)

(assert (=> d!992991 (= c!591024 ((_ is Nil!37079) lt!1171092))))

(assert (=> d!992991 (= (size!28101 lt!1171092) lt!1171933)))

(declare-fun b!3452133 () Bool)

(assert (=> b!3452133 (= e!2138313 0)))

(declare-fun b!3452134 () Bool)

(assert (=> b!3452134 (= e!2138313 (+ 1 (size!28101 (t!271612 lt!1171092))))))

(assert (= (and d!992991 c!591024) b!3452133))

(assert (= (and d!992991 (not c!591024)) b!3452134))

(declare-fun m!3850163 () Bool)

(assert (=> b!3452134 m!3850163))

(assert (=> b!3450410 d!992991))

(assert (=> b!3450410 d!992047))

(declare-fun d!992993 () Bool)

(declare-fun lt!1171934 () Int)

(assert (=> d!992993 (>= lt!1171934 0)))

(declare-fun e!2138314 () Int)

(assert (=> d!992993 (= lt!1171934 e!2138314)))

(declare-fun c!591025 () Bool)

(assert (=> d!992993 (= c!591025 ((_ is Nil!37079) lt!1170944))))

(assert (=> d!992993 (= (size!28101 lt!1170944) lt!1171934)))

(declare-fun b!3452135 () Bool)

(assert (=> b!3452135 (= e!2138314 0)))

(declare-fun b!3452136 () Bool)

(assert (=> b!3452136 (= e!2138314 (+ 1 (size!28101 (t!271612 lt!1170944))))))

(assert (= (and d!992993 c!591025) b!3452135))

(assert (= (and d!992993 (not c!591025)) b!3452136))

(declare-fun m!3850165 () Bool)

(assert (=> b!3452136 m!3850165))

(assert (=> b!3450410 d!992993))

(declare-fun bs!559905 () Bool)

(declare-fun d!992995 () Bool)

(assert (= bs!559905 (and d!992995 b!3449899)))

(declare-fun lambda!121573 () Int)

(assert (=> bs!559905 (not (= lambda!121573 lambda!121525))))

(declare-fun bs!559906 () Bool)

(assert (= bs!559906 (and d!992995 d!991963)))

(assert (=> bs!559906 (= lambda!121573 lambda!121535)))

(declare-fun b!3452145 () Bool)

(declare-fun e!2138323 () Bool)

(assert (=> b!3452145 (= e!2138323 true)))

(declare-fun b!3452144 () Bool)

(declare-fun e!2138322 () Bool)

(assert (=> b!3452144 (= e!2138322 e!2138323)))

(declare-fun b!3452143 () Bool)

(declare-fun e!2138321 () Bool)

(assert (=> b!3452143 (= e!2138321 e!2138322)))

(assert (=> d!992995 e!2138321))

(assert (= b!3452144 b!3452145))

(assert (= b!3452143 b!3452144))

(assert (= (and d!992995 ((_ is Cons!37081) rules!2135)) b!3452143))

(assert (=> b!3452145 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15572 order!19683 lambda!121573))))

(assert (=> b!3452145 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (h!42501 rules!2135)))) (dynLambda!15572 order!19683 lambda!121573))))

(assert (=> d!992995 true))

(declare-fun lt!1171937 () Bool)

(assert (=> d!992995 (= lt!1171937 (forall!7885 (list!13486 (seqFromList!3893 tokens!494)) lambda!121573))))

(declare-fun e!2138319 () Bool)

(assert (=> d!992995 (= lt!1171937 e!2138319)))

(declare-fun res!1392075 () Bool)

(assert (=> d!992995 (=> res!1392075 e!2138319)))

(assert (=> d!992995 (= res!1392075 (not ((_ is Cons!37080) (list!13486 (seqFromList!3893 tokens!494)))))))

(assert (=> d!992995 (not (isEmpty!21395 rules!2135))))

(assert (=> d!992995 (= (rulesProduceEachTokenIndividuallyList!1845 thiss!18206 rules!2135 (list!13486 (seqFromList!3893 tokens!494))) lt!1171937)))

(declare-fun b!3452141 () Bool)

(declare-fun e!2138320 () Bool)

(assert (=> b!3452141 (= e!2138319 e!2138320)))

(declare-fun res!1392076 () Bool)

(assert (=> b!3452141 (=> (not res!1392076) (not e!2138320))))

(assert (=> b!3452141 (= res!1392076 (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 (list!13486 (seqFromList!3893 tokens!494)))))))

(declare-fun b!3452142 () Bool)

(assert (=> b!3452142 (= e!2138320 (rulesProduceEachTokenIndividuallyList!1845 thiss!18206 rules!2135 (t!271613 (list!13486 (seqFromList!3893 tokens!494)))))))

(assert (= (and d!992995 (not res!1392075)) b!3452141))

(assert (= (and b!3452141 res!1392076) b!3452142))

(assert (=> d!992995 m!3847485))

(declare-fun m!3850167 () Bool)

(assert (=> d!992995 m!3850167))

(assert (=> d!992995 m!3846905))

(declare-fun m!3850169 () Bool)

(assert (=> b!3452141 m!3850169))

(declare-fun m!3850171 () Bool)

(assert (=> b!3452142 m!3850171))

(assert (=> b!3450361 d!992995))

(assert (=> b!3450361 d!992319))

(declare-fun d!992997 () Bool)

(declare-fun c!591026 () Bool)

(assert (=> d!992997 (= c!591026 ((_ is Nil!37079) (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))))))

(declare-fun e!2138324 () (InoxSet C!20544))

(assert (=> d!992997 (= (content!5161 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) e!2138324)))

(declare-fun b!3452146 () Bool)

(assert (=> b!3452146 (= e!2138324 ((as const (Array C!20544 Bool)) false))))

(declare-fun b!3452147 () Bool)

(assert (=> b!3452147 (= e!2138324 ((_ map or) (store ((as const (Array C!20544 Bool)) false) (h!42499 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))) true) (content!5161 (t!271612 (usedCharacters!654 (regex!5420 (rule!8000 separatorToken!241)))))))))

(assert (= (and d!992997 c!591026) b!3452146))

(assert (= (and d!992997 (not c!591026)) b!3452147))

(declare-fun m!3850173 () Bool)

(assert (=> b!3452147 m!3850173))

(assert (=> b!3452147 m!3849309))

(assert (=> d!992053 d!992997))

(assert (=> b!3450422 d!992695))

(assert (=> b!3450422 d!992651))

(declare-fun d!992999 () Bool)

(declare-fun lt!1171938 () Token!10206)

(assert (=> d!992999 (= lt!1171938 (apply!8695 (list!13486 (_1!21515 lt!1170984)) 0))))

(assert (=> d!992999 (= lt!1171938 (apply!8697 (c!590468 (_1!21515 lt!1170984)) 0))))

(declare-fun e!2138325 () Bool)

(assert (=> d!992999 e!2138325))

(declare-fun res!1392077 () Bool)

(assert (=> d!992999 (=> (not res!1392077) (not e!2138325))))

(assert (=> d!992999 (= res!1392077 (<= 0 0))))

(assert (=> d!992999 (= (apply!8694 (_1!21515 lt!1170984) 0) lt!1171938)))

(declare-fun b!3452148 () Bool)

(assert (=> b!3452148 (= e!2138325 (< 0 (size!28104 (_1!21515 lt!1170984))))))

(assert (= (and d!992999 res!1392077) b!3452148))

(assert (=> d!992999 m!3849713))

(assert (=> d!992999 m!3849713))

(declare-fun m!3850175 () Bool)

(assert (=> d!992999 m!3850175))

(declare-fun m!3850177 () Bool)

(assert (=> d!992999 m!3850177))

(assert (=> b!3452148 m!3847099))

(assert (=> b!3450115 d!992999))

(declare-fun b!3452149 () Bool)

(declare-fun e!2138326 () Bool)

(declare-fun tp!1076475 () Bool)

(assert (=> b!3452149 (= e!2138326 (and tp_is_empty!17537 tp!1076475))))

(assert (=> b!3450664 (= tp!1076314 e!2138326)))

(assert (= (and b!3450664 ((_ is Cons!37079) (t!271612 (originalCharacters!6134 (h!42500 tokens!494))))) b!3452149))

(declare-fun e!2138327 () Bool)

(assert (=> b!3450657 (= tp!1076310 e!2138327)))

(declare-fun b!3452151 () Bool)

(declare-fun tp!1076479 () Bool)

(declare-fun tp!1076478 () Bool)

(assert (=> b!3452151 (= e!2138327 (and tp!1076479 tp!1076478))))

(declare-fun b!3452150 () Bool)

(assert (=> b!3452150 (= e!2138327 tp_is_empty!17537)))

(declare-fun b!3452153 () Bool)

(declare-fun tp!1076480 () Bool)

(declare-fun tp!1076477 () Bool)

(assert (=> b!3452153 (= e!2138327 (and tp!1076480 tp!1076477))))

(declare-fun b!3452152 () Bool)

(declare-fun tp!1076476 () Bool)

(assert (=> b!3452152 (= e!2138327 tp!1076476)))

(assert (= (and b!3450657 ((_ is ElementMatch!10179) (regOne!20870 (regex!5420 (h!42501 rules!2135))))) b!3452150))

(assert (= (and b!3450657 ((_ is Concat!15829) (regOne!20870 (regex!5420 (h!42501 rules!2135))))) b!3452151))

(assert (= (and b!3450657 ((_ is Star!10179) (regOne!20870 (regex!5420 (h!42501 rules!2135))))) b!3452152))

(assert (= (and b!3450657 ((_ is Union!10179) (regOne!20870 (regex!5420 (h!42501 rules!2135))))) b!3452153))

(declare-fun e!2138328 () Bool)

(assert (=> b!3450657 (= tp!1076309 e!2138328)))

(declare-fun b!3452155 () Bool)

(declare-fun tp!1076484 () Bool)

(declare-fun tp!1076483 () Bool)

(assert (=> b!3452155 (= e!2138328 (and tp!1076484 tp!1076483))))

(declare-fun b!3452154 () Bool)

(assert (=> b!3452154 (= e!2138328 tp_is_empty!17537)))

(declare-fun b!3452157 () Bool)

(declare-fun tp!1076485 () Bool)

(declare-fun tp!1076482 () Bool)

(assert (=> b!3452157 (= e!2138328 (and tp!1076485 tp!1076482))))

(declare-fun b!3452156 () Bool)

(declare-fun tp!1076481 () Bool)

(assert (=> b!3452156 (= e!2138328 tp!1076481)))

(assert (= (and b!3450657 ((_ is ElementMatch!10179) (regTwo!20870 (regex!5420 (h!42501 rules!2135))))) b!3452154))

(assert (= (and b!3450657 ((_ is Concat!15829) (regTwo!20870 (regex!5420 (h!42501 rules!2135))))) b!3452155))

(assert (= (and b!3450657 ((_ is Star!10179) (regTwo!20870 (regex!5420 (h!42501 rules!2135))))) b!3452156))

(assert (= (and b!3450657 ((_ is Union!10179) (regTwo!20870 (regex!5420 (h!42501 rules!2135))))) b!3452157))

(declare-fun b!3452158 () Bool)

(declare-fun e!2138329 () Bool)

(declare-fun tp!1076486 () Bool)

(assert (=> b!3452158 (= e!2138329 (and tp_is_empty!17537 tp!1076486))))

(assert (=> b!3450692 (= tp!1076346 e!2138329)))

(assert (= (and b!3450692 ((_ is Cons!37079) (originalCharacters!6134 (h!42500 (t!271613 tokens!494))))) b!3452158))

(declare-fun b!3452162 () Bool)

(declare-fun b_free!89581 () Bool)

(declare-fun b_next!90285 () Bool)

(assert (=> b!3452162 (= b_free!89581 (not b_next!90285))))

(declare-fun t!271934 () Bool)

(declare-fun tb!187911 () Bool)

(assert (=> (and b!3452162 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271934) tb!187911))

(declare-fun result!231774 () Bool)

(assert (= result!231774 result!231724))

(assert (=> d!992779 t!271934))

(declare-fun t!271936 () Bool)

(declare-fun tb!187913 () Bool)

(assert (=> (and b!3452162 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271936) tb!187913))

(declare-fun result!231776 () Bool)

(assert (= result!231776 result!231754))

(assert (=> d!992943 t!271936))

(declare-fun t!271938 () Bool)

(declare-fun tb!187915 () Bool)

(assert (=> (and b!3452162 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271938) tb!187915))

(declare-fun result!231778 () Bool)

(assert (= result!231778 result!231508))

(assert (=> d!992069 t!271938))

(declare-fun t!271940 () Bool)

(declare-fun tb!187917 () Bool)

(assert (=> (and b!3452162 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271940) tb!187917))

(declare-fun result!231780 () Bool)

(assert (= result!231780 result!231624))

(assert (=> d!992405 t!271940))

(assert (=> d!992937 t!271936))

(declare-fun b_and!242519 () Bool)

(declare-fun tp!1076487 () Bool)

(assert (=> b!3452162 (= tp!1076487 (and (=> t!271940 result!231780) (=> t!271938 result!231778) (=> t!271934 result!231774) (=> t!271936 result!231776) b_and!242519))))

(declare-fun b_free!89583 () Bool)

(declare-fun b_next!90287 () Bool)

(assert (=> b!3452162 (= b_free!89583 (not b_next!90287))))

(declare-fun t!271942 () Bool)

(declare-fun tb!187919 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271942) tb!187919))

(declare-fun result!231782 () Bool)

(assert (= result!231782 result!231480))

(assert (=> d!991927 t!271942))

(declare-fun t!271944 () Bool)

(declare-fun tb!187921 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271944) tb!187921))

(declare-fun result!231784 () Bool)

(assert (= result!231784 result!231744))

(assert (=> d!992937 t!271944))

(declare-fun tb!187923 () Bool)

(declare-fun t!271946 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271946) tb!187923))

(declare-fun result!231786 () Bool)

(assert (= result!231786 result!231614))

(assert (=> d!992335 t!271946))

(declare-fun t!271948 () Bool)

(declare-fun tb!187925 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271948) tb!187925))

(declare-fun result!231788 () Bool)

(assert (= result!231788 result!231734))

(assert (=> d!992859 t!271948))

(assert (=> b!3450228 t!271942))

(declare-fun t!271950 () Bool)

(declare-fun tb!187927 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271950) tb!187927))

(declare-fun result!231790 () Bool)

(assert (= result!231790 result!231488))

(assert (=> d!991941 t!271950))

(declare-fun t!271952 () Bool)

(declare-fun tb!187929 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271952) tb!187929))

(declare-fun result!231792 () Bool)

(assert (= result!231792 result!231494))

(assert (=> b!3450398 t!271952))

(assert (=> b!3451974 t!271950))

(declare-fun tb!187931 () Bool)

(declare-fun t!271954 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271954) tb!187931))

(declare-fun result!231794 () Bool)

(assert (= result!231794 result!231604))

(assert (=> d!992327 t!271954))

(assert (=> d!992029 t!271952))

(declare-fun t!271956 () Bool)

(declare-fun tb!187933 () Bool)

(assert (=> (and b!3452162 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271956) tb!187933))

(declare-fun result!231796 () Bool)

(assert (= result!231796 result!231764))

(assert (=> d!992971 t!271956))

(declare-fun b_and!242521 () Bool)

(declare-fun tp!1076488 () Bool)

(assert (=> b!3452162 (= tp!1076488 (and (=> t!271946 result!231786) (=> t!271950 result!231790) (=> t!271944 result!231784) (=> t!271952 result!231792) (=> t!271948 result!231788) (=> t!271942 result!231782) (=> t!271956 result!231796) (=> t!271954 result!231794) b_and!242521))))

(declare-fun tp!1076490 () Bool)

(declare-fun e!2138331 () Bool)

(declare-fun e!2138334 () Bool)

(declare-fun b!3452160 () Bool)

(assert (=> b!3452160 (= e!2138331 (and (inv!21 (value!174930 (h!42500 (t!271613 (t!271613 tokens!494))))) e!2138334 tp!1076490))))

(declare-fun e!2138332 () Bool)

(assert (=> b!3450691 (= tp!1076347 e!2138332)))

(declare-fun tp!1076489 () Bool)

(declare-fun e!2138335 () Bool)

(declare-fun b!3452161 () Bool)

(assert (=> b!3452161 (= e!2138334 (and tp!1076489 (inv!50235 (tag!6018 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (inv!50238 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) e!2138335))))

(assert (=> b!3452162 (= e!2138335 (and tp!1076487 tp!1076488))))

(declare-fun tp!1076491 () Bool)

(declare-fun b!3452159 () Bool)

(assert (=> b!3452159 (= e!2138332 (and (inv!50239 (h!42500 (t!271613 (t!271613 tokens!494)))) e!2138331 tp!1076491))))

(assert (= b!3452161 b!3452162))

(assert (= b!3452160 b!3452161))

(assert (= b!3452159 b!3452160))

(assert (= (and b!3450691 ((_ is Cons!37080) (t!271613 (t!271613 tokens!494)))) b!3452159))

(declare-fun m!3850179 () Bool)

(assert (=> b!3452160 m!3850179))

(declare-fun m!3850181 () Bool)

(assert (=> b!3452161 m!3850181))

(declare-fun m!3850183 () Bool)

(assert (=> b!3452161 m!3850183))

(declare-fun m!3850185 () Bool)

(assert (=> b!3452159 m!3850185))

(declare-fun e!2138336 () Bool)

(assert (=> b!3450693 (= tp!1076345 e!2138336)))

(declare-fun b!3452164 () Bool)

(declare-fun tp!1076495 () Bool)

(declare-fun tp!1076494 () Bool)

(assert (=> b!3452164 (= e!2138336 (and tp!1076495 tp!1076494))))

(declare-fun b!3452163 () Bool)

(assert (=> b!3452163 (= e!2138336 tp_is_empty!17537)))

(declare-fun b!3452166 () Bool)

(declare-fun tp!1076496 () Bool)

(declare-fun tp!1076493 () Bool)

(assert (=> b!3452166 (= e!2138336 (and tp!1076496 tp!1076493))))

(declare-fun b!3452165 () Bool)

(declare-fun tp!1076492 () Bool)

(assert (=> b!3452165 (= e!2138336 tp!1076492)))

(assert (= (and b!3450693 ((_ is ElementMatch!10179) (regex!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) b!3452163))

(assert (= (and b!3450693 ((_ is Concat!15829) (regex!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) b!3452164))

(assert (= (and b!3450693 ((_ is Star!10179) (regex!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) b!3452165))

(assert (= (and b!3450693 ((_ is Union!10179) (regex!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) b!3452166))

(declare-fun b!3452175 () Bool)

(declare-fun tp!1076505 () Bool)

(declare-fun e!2138341 () Bool)

(declare-fun tp!1076504 () Bool)

(assert (=> b!3452175 (= e!2138341 (and (inv!50242 (left!28915 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))) tp!1076505 (inv!50242 (right!29245 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))) tp!1076504))))

(declare-fun b!3452177 () Bool)

(declare-fun e!2138342 () Bool)

(declare-fun tp!1076503 () Bool)

(assert (=> b!3452177 (= e!2138342 tp!1076503)))

(declare-fun b!3452176 () Bool)

(declare-fun inv!50249 (IArray!22435) Bool)

(assert (=> b!3452176 (= e!2138341 (and (inv!50249 (xs!14389 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))) e!2138342))))

(assert (=> b!3450185 (= tp!1076238 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241)))) e!2138341))))

(assert (= (and b!3450185 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))) b!3452175))

(assert (= b!3452176 b!3452177))

(assert (= (and b!3450185 ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (value!174930 separatorToken!241))))) b!3452176))

(declare-fun m!3850187 () Bool)

(assert (=> b!3452175 m!3850187))

(declare-fun m!3850189 () Bool)

(assert (=> b!3452175 m!3850189))

(declare-fun m!3850191 () Bool)

(assert (=> b!3452176 m!3850191))

(assert (=> b!3450185 m!3847209))

(declare-fun b!3452178 () Bool)

(declare-fun tp!1076508 () Bool)

(declare-fun e!2138343 () Bool)

(declare-fun tp!1076507 () Bool)

(assert (=> b!3452178 (= e!2138343 (and (inv!50242 (left!28915 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))) tp!1076508 (inv!50242 (right!29245 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))) tp!1076507))))

(declare-fun b!3452180 () Bool)

(declare-fun e!2138344 () Bool)

(declare-fun tp!1076506 () Bool)

(assert (=> b!3452180 (= e!2138344 tp!1076506)))

(declare-fun b!3452179 () Bool)

(assert (=> b!3452179 (= e!2138343 (and (inv!50249 (xs!14389 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))) e!2138344))))

(assert (=> b!3450400 (= tp!1076240 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494))))) e!2138343))))

(assert (= (and b!3450400 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))) b!3452178))

(assert (= b!3452179 b!3452180))

(assert (= (and b!3450400 ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (value!174930 (h!42500 tokens!494)))))) b!3452179))

(declare-fun m!3850193 () Bool)

(assert (=> b!3452178 m!3850193))

(declare-fun m!3850195 () Bool)

(assert (=> b!3452178 m!3850195))

(declare-fun m!3850197 () Bool)

(assert (=> b!3452179 m!3850197))

(assert (=> b!3450400 m!3847501))

(declare-fun e!2138345 () Bool)

(assert (=> b!3450679 (= tp!1076330 e!2138345)))

(declare-fun b!3452182 () Bool)

(declare-fun tp!1076512 () Bool)

(declare-fun tp!1076511 () Bool)

(assert (=> b!3452182 (= e!2138345 (and tp!1076512 tp!1076511))))

(declare-fun b!3452181 () Bool)

(assert (=> b!3452181 (= e!2138345 tp_is_empty!17537)))

(declare-fun b!3452184 () Bool)

(declare-fun tp!1076513 () Bool)

(declare-fun tp!1076510 () Bool)

(assert (=> b!3452184 (= e!2138345 (and tp!1076513 tp!1076510))))

(declare-fun b!3452183 () Bool)

(declare-fun tp!1076509 () Bool)

(assert (=> b!3452183 (= e!2138345 tp!1076509)))

(assert (= (and b!3450679 ((_ is ElementMatch!10179) (regex!5420 (h!42501 (t!271614 rules!2135))))) b!3452181))

(assert (= (and b!3450679 ((_ is Concat!15829) (regex!5420 (h!42501 (t!271614 rules!2135))))) b!3452182))

(assert (= (and b!3450679 ((_ is Star!10179) (regex!5420 (h!42501 (t!271614 rules!2135))))) b!3452183))

(assert (= (and b!3450679 ((_ is Union!10179) (regex!5420 (h!42501 (t!271614 rules!2135))))) b!3452184))

(declare-fun b!3452185 () Bool)

(declare-fun e!2138346 () Bool)

(declare-fun tp!1076514 () Bool)

(assert (=> b!3452185 (= e!2138346 (and tp_is_empty!17537 tp!1076514))))

(assert (=> b!3450669 (= tp!1076320 e!2138346)))

(assert (= (and b!3450669 ((_ is Cons!37079) (t!271612 (originalCharacters!6134 separatorToken!241)))) b!3452185))

(declare-fun b!3452188 () Bool)

(declare-fun e!2138349 () Bool)

(assert (=> b!3452188 (= e!2138349 true)))

(declare-fun b!3452187 () Bool)

(declare-fun e!2138348 () Bool)

(assert (=> b!3452187 (= e!2138348 e!2138349)))

(declare-fun b!3452186 () Bool)

(declare-fun e!2138347 () Bool)

(assert (=> b!3452186 (= e!2138347 e!2138348)))

(assert (=> b!3450376 e!2138347))

(assert (= b!3452187 b!3452188))

(assert (= b!3452186 b!3452187))

(assert (= (and b!3450376 ((_ is Cons!37081) (t!271614 rules!2135))) b!3452186))

(assert (=> b!3452188 (< (dynLambda!15571 order!19681 (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135))))) (dynLambda!15572 order!19683 lambda!121535))))

(assert (=> b!3452188 (< (dynLambda!15573 order!19685 (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135))))) (dynLambda!15572 order!19683 lambda!121535))))

(declare-fun e!2138350 () Bool)

(assert (=> b!3450658 (= tp!1076307 e!2138350)))

(declare-fun b!3452190 () Bool)

(declare-fun tp!1076518 () Bool)

(declare-fun tp!1076517 () Bool)

(assert (=> b!3452190 (= e!2138350 (and tp!1076518 tp!1076517))))

(declare-fun b!3452189 () Bool)

(assert (=> b!3452189 (= e!2138350 tp_is_empty!17537)))

(declare-fun b!3452192 () Bool)

(declare-fun tp!1076519 () Bool)

(declare-fun tp!1076516 () Bool)

(assert (=> b!3452192 (= e!2138350 (and tp!1076519 tp!1076516))))

(declare-fun b!3452191 () Bool)

(declare-fun tp!1076515 () Bool)

(assert (=> b!3452191 (= e!2138350 tp!1076515)))

(assert (= (and b!3450658 ((_ is ElementMatch!10179) (reg!10508 (regex!5420 (h!42501 rules!2135))))) b!3452189))

(assert (= (and b!3450658 ((_ is Concat!15829) (reg!10508 (regex!5420 (h!42501 rules!2135))))) b!3452190))

(assert (= (and b!3450658 ((_ is Star!10179) (reg!10508 (regex!5420 (h!42501 rules!2135))))) b!3452191))

(assert (= (and b!3450658 ((_ is Union!10179) (reg!10508 (regex!5420 (h!42501 rules!2135))))) b!3452192))

(declare-fun e!2138351 () Bool)

(assert (=> b!3450659 (= tp!1076311 e!2138351)))

(declare-fun b!3452194 () Bool)

(declare-fun tp!1076523 () Bool)

(declare-fun tp!1076522 () Bool)

(assert (=> b!3452194 (= e!2138351 (and tp!1076523 tp!1076522))))

(declare-fun b!3452193 () Bool)

(assert (=> b!3452193 (= e!2138351 tp_is_empty!17537)))

(declare-fun b!3452196 () Bool)

(declare-fun tp!1076524 () Bool)

(declare-fun tp!1076521 () Bool)

(assert (=> b!3452196 (= e!2138351 (and tp!1076524 tp!1076521))))

(declare-fun b!3452195 () Bool)

(declare-fun tp!1076520 () Bool)

(assert (=> b!3452195 (= e!2138351 tp!1076520)))

(assert (= (and b!3450659 ((_ is ElementMatch!10179) (regOne!20871 (regex!5420 (h!42501 rules!2135))))) b!3452193))

(assert (= (and b!3450659 ((_ is Concat!15829) (regOne!20871 (regex!5420 (h!42501 rules!2135))))) b!3452194))

(assert (= (and b!3450659 ((_ is Star!10179) (regOne!20871 (regex!5420 (h!42501 rules!2135))))) b!3452195))

(assert (= (and b!3450659 ((_ is Union!10179) (regOne!20871 (regex!5420 (h!42501 rules!2135))))) b!3452196))

(declare-fun e!2138352 () Bool)

(assert (=> b!3450659 (= tp!1076308 e!2138352)))

(declare-fun b!3452198 () Bool)

(declare-fun tp!1076528 () Bool)

(declare-fun tp!1076527 () Bool)

(assert (=> b!3452198 (= e!2138352 (and tp!1076528 tp!1076527))))

(declare-fun b!3452197 () Bool)

(assert (=> b!3452197 (= e!2138352 tp_is_empty!17537)))

(declare-fun b!3452200 () Bool)

(declare-fun tp!1076529 () Bool)

(declare-fun tp!1076526 () Bool)

(assert (=> b!3452200 (= e!2138352 (and tp!1076529 tp!1076526))))

(declare-fun b!3452199 () Bool)

(declare-fun tp!1076525 () Bool)

(assert (=> b!3452199 (= e!2138352 tp!1076525)))

(assert (= (and b!3450659 ((_ is ElementMatch!10179) (regTwo!20871 (regex!5420 (h!42501 rules!2135))))) b!3452197))

(assert (= (and b!3450659 ((_ is Concat!15829) (regTwo!20871 (regex!5420 (h!42501 rules!2135))))) b!3452198))

(assert (= (and b!3450659 ((_ is Star!10179) (regTwo!20871 (regex!5420 (h!42501 rules!2135))))) b!3452199))

(assert (= (and b!3450659 ((_ is Union!10179) (regTwo!20871 (regex!5420 (h!42501 rules!2135))))) b!3452200))

(declare-fun b!3452201 () Bool)

(declare-fun tp!1076532 () Bool)

(declare-fun e!2138353 () Bool)

(declare-fun tp!1076531 () Bool)

(assert (=> b!3452201 (= e!2138353 (and (inv!50242 (left!28915 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))) tp!1076532 (inv!50242 (right!29245 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))) tp!1076531))))

(declare-fun b!3452203 () Bool)

(declare-fun e!2138354 () Bool)

(declare-fun tp!1076530 () Bool)

(assert (=> b!3452203 (= e!2138354 tp!1076530)))

(declare-fun b!3452202 () Bool)

(assert (=> b!3452202 (= e!2138353 (and (inv!50249 (xs!14389 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))) e!2138354))))

(assert (=> b!3450198 (= tp!1076239 (and (inv!50242 (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494)))))) e!2138353))))

(assert (= (and b!3450198 ((_ is Node!11215) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))) b!3452201))

(assert (= b!3452202 b!3452203))

(assert (= (and b!3450198 ((_ is Leaf!17536) (c!590467 (dynLambda!15570 (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (value!174930 (h!42500 (t!271613 tokens!494))))))) b!3452202))

(declare-fun m!3850199 () Bool)

(assert (=> b!3452201 m!3850199))

(declare-fun m!3850201 () Bool)

(assert (=> b!3452201 m!3850201))

(declare-fun m!3850203 () Bool)

(assert (=> b!3452202 m!3850203))

(assert (=> b!3450198 m!3847251))

(declare-fun e!2138355 () Bool)

(assert (=> b!3450666 (= tp!1076318 e!2138355)))

(declare-fun b!3452205 () Bool)

(declare-fun tp!1076536 () Bool)

(declare-fun tp!1076535 () Bool)

(assert (=> b!3452205 (= e!2138355 (and tp!1076536 tp!1076535))))

(declare-fun b!3452204 () Bool)

(assert (=> b!3452204 (= e!2138355 tp_is_empty!17537)))

(declare-fun b!3452207 () Bool)

(declare-fun tp!1076537 () Bool)

(declare-fun tp!1076534 () Bool)

(assert (=> b!3452207 (= e!2138355 (and tp!1076537 tp!1076534))))

(declare-fun b!3452206 () Bool)

(declare-fun tp!1076533 () Bool)

(assert (=> b!3452206 (= e!2138355 tp!1076533)))

(assert (= (and b!3450666 ((_ is ElementMatch!10179) (regOne!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452204))

(assert (= (and b!3450666 ((_ is Concat!15829) (regOne!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452205))

(assert (= (and b!3450666 ((_ is Star!10179) (regOne!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452206))

(assert (= (and b!3450666 ((_ is Union!10179) (regOne!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452207))

(declare-fun e!2138356 () Bool)

(assert (=> b!3450666 (= tp!1076317 e!2138356)))

(declare-fun b!3452209 () Bool)

(declare-fun tp!1076541 () Bool)

(declare-fun tp!1076540 () Bool)

(assert (=> b!3452209 (= e!2138356 (and tp!1076541 tp!1076540))))

(declare-fun b!3452208 () Bool)

(assert (=> b!3452208 (= e!2138356 tp_is_empty!17537)))

(declare-fun b!3452211 () Bool)

(declare-fun tp!1076542 () Bool)

(declare-fun tp!1076539 () Bool)

(assert (=> b!3452211 (= e!2138356 (and tp!1076542 tp!1076539))))

(declare-fun b!3452210 () Bool)

(declare-fun tp!1076538 () Bool)

(assert (=> b!3452210 (= e!2138356 tp!1076538)))

(assert (= (and b!3450666 ((_ is ElementMatch!10179) (regTwo!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452208))

(assert (= (and b!3450666 ((_ is Concat!15829) (regTwo!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452209))

(assert (= (and b!3450666 ((_ is Star!10179) (regTwo!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452210))

(assert (= (and b!3450666 ((_ is Union!10179) (regTwo!20870 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452211))

(declare-fun e!2138357 () Bool)

(assert (=> b!3450696 (= tp!1076351 e!2138357)))

(declare-fun b!3452213 () Bool)

(declare-fun tp!1076546 () Bool)

(declare-fun tp!1076545 () Bool)

(assert (=> b!3452213 (= e!2138357 (and tp!1076546 tp!1076545))))

(declare-fun b!3452212 () Bool)

(assert (=> b!3452212 (= e!2138357 tp_is_empty!17537)))

(declare-fun b!3452215 () Bool)

(declare-fun tp!1076547 () Bool)

(declare-fun tp!1076544 () Bool)

(assert (=> b!3452215 (= e!2138357 (and tp!1076547 tp!1076544))))

(declare-fun b!3452214 () Bool)

(declare-fun tp!1076543 () Bool)

(assert (=> b!3452214 (= e!2138357 tp!1076543)))

(assert (= (and b!3450696 ((_ is ElementMatch!10179) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452212))

(assert (= (and b!3450696 ((_ is Concat!15829) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452213))

(assert (= (and b!3450696 ((_ is Star!10179) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452214))

(assert (= (and b!3450696 ((_ is Union!10179) (regOne!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452215))

(declare-fun e!2138358 () Bool)

(assert (=> b!3450696 (= tp!1076350 e!2138358)))

(declare-fun b!3452217 () Bool)

(declare-fun tp!1076551 () Bool)

(declare-fun tp!1076550 () Bool)

(assert (=> b!3452217 (= e!2138358 (and tp!1076551 tp!1076550))))

(declare-fun b!3452216 () Bool)

(assert (=> b!3452216 (= e!2138358 tp_is_empty!17537)))

(declare-fun b!3452219 () Bool)

(declare-fun tp!1076552 () Bool)

(declare-fun tp!1076549 () Bool)

(assert (=> b!3452219 (= e!2138358 (and tp!1076552 tp!1076549))))

(declare-fun b!3452218 () Bool)

(declare-fun tp!1076548 () Bool)

(assert (=> b!3452218 (= e!2138358 tp!1076548)))

(assert (= (and b!3450696 ((_ is ElementMatch!10179) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452216))

(assert (= (and b!3450696 ((_ is Concat!15829) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452217))

(assert (= (and b!3450696 ((_ is Star!10179) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452218))

(assert (= (and b!3450696 ((_ is Union!10179) (regTwo!20870 (regex!5420 (rule!8000 separatorToken!241))))) b!3452219))

(declare-fun e!2138359 () Bool)

(assert (=> b!3450668 (= tp!1076319 e!2138359)))

(declare-fun b!3452221 () Bool)

(declare-fun tp!1076556 () Bool)

(declare-fun tp!1076555 () Bool)

(assert (=> b!3452221 (= e!2138359 (and tp!1076556 tp!1076555))))

(declare-fun b!3452220 () Bool)

(assert (=> b!3452220 (= e!2138359 tp_is_empty!17537)))

(declare-fun b!3452223 () Bool)

(declare-fun tp!1076557 () Bool)

(declare-fun tp!1076554 () Bool)

(assert (=> b!3452223 (= e!2138359 (and tp!1076557 tp!1076554))))

(declare-fun b!3452222 () Bool)

(declare-fun tp!1076553 () Bool)

(assert (=> b!3452222 (= e!2138359 tp!1076553)))

(assert (= (and b!3450668 ((_ is ElementMatch!10179) (regOne!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452220))

(assert (= (and b!3450668 ((_ is Concat!15829) (regOne!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452221))

(assert (= (and b!3450668 ((_ is Star!10179) (regOne!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452222))

(assert (= (and b!3450668 ((_ is Union!10179) (regOne!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452223))

(declare-fun e!2138360 () Bool)

(assert (=> b!3450668 (= tp!1076316 e!2138360)))

(declare-fun b!3452225 () Bool)

(declare-fun tp!1076561 () Bool)

(declare-fun tp!1076560 () Bool)

(assert (=> b!3452225 (= e!2138360 (and tp!1076561 tp!1076560))))

(declare-fun b!3452224 () Bool)

(assert (=> b!3452224 (= e!2138360 tp_is_empty!17537)))

(declare-fun b!3452227 () Bool)

(declare-fun tp!1076562 () Bool)

(declare-fun tp!1076559 () Bool)

(assert (=> b!3452227 (= e!2138360 (and tp!1076562 tp!1076559))))

(declare-fun b!3452226 () Bool)

(declare-fun tp!1076558 () Bool)

(assert (=> b!3452226 (= e!2138360 tp!1076558)))

(assert (= (and b!3450668 ((_ is ElementMatch!10179) (regTwo!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452224))

(assert (= (and b!3450668 ((_ is Concat!15829) (regTwo!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452225))

(assert (= (and b!3450668 ((_ is Star!10179) (regTwo!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452226))

(assert (= (and b!3450668 ((_ is Union!10179) (regTwo!20871 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452227))

(declare-fun e!2138361 () Bool)

(assert (=> b!3450698 (= tp!1076352 e!2138361)))

(declare-fun b!3452229 () Bool)

(declare-fun tp!1076566 () Bool)

(declare-fun tp!1076565 () Bool)

(assert (=> b!3452229 (= e!2138361 (and tp!1076566 tp!1076565))))

(declare-fun b!3452228 () Bool)

(assert (=> b!3452228 (= e!2138361 tp_is_empty!17537)))

(declare-fun b!3452231 () Bool)

(declare-fun tp!1076567 () Bool)

(declare-fun tp!1076564 () Bool)

(assert (=> b!3452231 (= e!2138361 (and tp!1076567 tp!1076564))))

(declare-fun b!3452230 () Bool)

(declare-fun tp!1076563 () Bool)

(assert (=> b!3452230 (= e!2138361 tp!1076563)))

(assert (= (and b!3450698 ((_ is ElementMatch!10179) (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452228))

(assert (= (and b!3450698 ((_ is Concat!15829) (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452229))

(assert (= (and b!3450698 ((_ is Star!10179) (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452230))

(assert (= (and b!3450698 ((_ is Union!10179) (regOne!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452231))

(declare-fun e!2138362 () Bool)

(assert (=> b!3450698 (= tp!1076349 e!2138362)))

(declare-fun b!3452233 () Bool)

(declare-fun tp!1076571 () Bool)

(declare-fun tp!1076570 () Bool)

(assert (=> b!3452233 (= e!2138362 (and tp!1076571 tp!1076570))))

(declare-fun b!3452232 () Bool)

(assert (=> b!3452232 (= e!2138362 tp_is_empty!17537)))

(declare-fun b!3452235 () Bool)

(declare-fun tp!1076572 () Bool)

(declare-fun tp!1076569 () Bool)

(assert (=> b!3452235 (= e!2138362 (and tp!1076572 tp!1076569))))

(declare-fun b!3452234 () Bool)

(declare-fun tp!1076568 () Bool)

(assert (=> b!3452234 (= e!2138362 tp!1076568)))

(assert (= (and b!3450698 ((_ is ElementMatch!10179) (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452232))

(assert (= (and b!3450698 ((_ is Concat!15829) (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452233))

(assert (= (and b!3450698 ((_ is Star!10179) (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452234))

(assert (= (and b!3450698 ((_ is Union!10179) (regTwo!20871 (regex!5420 (rule!8000 separatorToken!241))))) b!3452235))

(declare-fun b!3452238 () Bool)

(declare-fun b_free!89585 () Bool)

(declare-fun b_next!90289 () Bool)

(assert (=> b!3452238 (= b_free!89585 (not b_next!90289))))

(declare-fun t!271958 () Bool)

(declare-fun tb!187935 () Bool)

(assert (=> (and b!3452238 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271958) tb!187935))

(declare-fun result!231800 () Bool)

(assert (= result!231800 result!231724))

(assert (=> d!992779 t!271958))

(declare-fun tb!187937 () Bool)

(declare-fun t!271960 () Bool)

(assert (=> (and b!3452238 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271960) tb!187937))

(declare-fun result!231802 () Bool)

(assert (= result!231802 result!231754))

(assert (=> d!992943 t!271960))

(declare-fun t!271962 () Bool)

(declare-fun tb!187939 () Bool)

(assert (=> (and b!3452238 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271962) tb!187939))

(declare-fun result!231804 () Bool)

(assert (= result!231804 result!231508))

(assert (=> d!992069 t!271962))

(declare-fun t!271964 () Bool)

(declare-fun tb!187941 () Bool)

(assert (=> (and b!3452238 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271964) tb!187941))

(declare-fun result!231806 () Bool)

(assert (= result!231806 result!231624))

(assert (=> d!992405 t!271964))

(assert (=> d!992937 t!271960))

(declare-fun tp!1076575 () Bool)

(declare-fun b_and!242523 () Bool)

(assert (=> b!3452238 (= tp!1076575 (and (=> t!271964 result!231806) (=> t!271958 result!231800) (=> t!271960 result!231802) (=> t!271962 result!231804) b_and!242523))))

(declare-fun b_free!89587 () Bool)

(declare-fun b_next!90291 () Bool)

(assert (=> b!3452238 (= b_free!89587 (not b_next!90291))))

(declare-fun t!271966 () Bool)

(declare-fun tb!187943 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241)))) t!271966) tb!187943))

(declare-fun result!231808 () Bool)

(assert (= result!231808 result!231480))

(assert (=> d!991927 t!271966))

(declare-fun t!271968 () Bool)

(declare-fun tb!187945 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271968) tb!187945))

(declare-fun result!231810 () Bool)

(assert (= result!231810 result!231744))

(assert (=> d!992937 t!271968))

(declare-fun tb!187947 () Bool)

(declare-fun t!271970 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (apply!8694 lt!1170931 0))))) t!271970) tb!187947))

(declare-fun result!231812 () Bool)

(assert (= result!231812 result!231614))

(assert (=> d!992335 t!271970))

(declare-fun t!271972 () Bool)

(declare-fun tb!187949 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494))))))) t!271972) tb!187949))

(declare-fun result!231814 () Bool)

(assert (= result!231814 result!231734))

(assert (=> d!992859 t!271972))

(assert (=> b!3450228 t!271966))

(declare-fun t!271974 () Bool)

(declare-fun tb!187951 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494)))))) t!271974) tb!187951))

(declare-fun result!231816 () Bool)

(assert (= result!231816 result!231488))

(assert (=> d!991941 t!271974))

(declare-fun tb!187953 () Bool)

(declare-fun t!271976 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494))))) t!271976) tb!187953))

(declare-fun result!231818 () Bool)

(assert (= result!231818 result!231494))

(assert (=> b!3450398 t!271976))

(assert (=> b!3451974 t!271974))

(declare-fun t!271978 () Bool)

(declare-fun tb!187955 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (_1!21514 (get!11857 lt!1171168)))))) t!271978) tb!187955))

(declare-fun result!231820 () Bool)

(assert (= result!231820 result!231604))

(assert (=> d!992327 t!271978))

(assert (=> d!992029 t!271976))

(declare-fun tb!187957 () Bool)

(declare-fun t!271980 () Bool)

(assert (=> (and b!3452238 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (Cons!37080 (h!42500 tokens!494) Nil!37080)))))) t!271980) tb!187957))

(declare-fun result!231822 () Bool)

(assert (= result!231822 result!231764))

(assert (=> d!992971 t!271980))

(declare-fun tp!1076576 () Bool)

(declare-fun b_and!242525 () Bool)

(assert (=> b!3452238 (= tp!1076576 (and (=> t!271976 result!231818) (=> t!271978 result!231820) (=> t!271966 result!231808) (=> t!271970 result!231812) (=> t!271980 result!231822) (=> t!271968 result!231810) (=> t!271974 result!231816) (=> t!271972 result!231814) b_and!242525))))

(declare-fun e!2138366 () Bool)

(assert (=> b!3452238 (= e!2138366 (and tp!1076575 tp!1076576))))

(declare-fun tp!1076574 () Bool)

(declare-fun b!3452237 () Bool)

(declare-fun e!2138364 () Bool)

(assert (=> b!3452237 (= e!2138364 (and tp!1076574 (inv!50235 (tag!6018 (h!42501 (t!271614 (t!271614 rules!2135))))) (inv!50238 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) e!2138366))))

(declare-fun b!3452236 () Bool)

(declare-fun e!2138365 () Bool)

(declare-fun tp!1076573 () Bool)

(assert (=> b!3452236 (= e!2138365 (and e!2138364 tp!1076573))))

(assert (=> b!3450678 (= tp!1076329 e!2138365)))

(assert (= b!3452237 b!3452238))

(assert (= b!3452236 b!3452237))

(assert (= (and b!3450678 ((_ is Cons!37081) (t!271614 (t!271614 rules!2135)))) b!3452236))

(declare-fun m!3850205 () Bool)

(assert (=> b!3452237 m!3850205))

(declare-fun m!3850207 () Bool)

(assert (=> b!3452237 m!3850207))

(declare-fun e!2138367 () Bool)

(assert (=> b!3450667 (= tp!1076315 e!2138367)))

(declare-fun b!3452240 () Bool)

(declare-fun tp!1076580 () Bool)

(declare-fun tp!1076579 () Bool)

(assert (=> b!3452240 (= e!2138367 (and tp!1076580 tp!1076579))))

(declare-fun b!3452239 () Bool)

(assert (=> b!3452239 (= e!2138367 tp_is_empty!17537)))

(declare-fun b!3452242 () Bool)

(declare-fun tp!1076581 () Bool)

(declare-fun tp!1076578 () Bool)

(assert (=> b!3452242 (= e!2138367 (and tp!1076581 tp!1076578))))

(declare-fun b!3452241 () Bool)

(declare-fun tp!1076577 () Bool)

(assert (=> b!3452241 (= e!2138367 tp!1076577)))

(assert (= (and b!3450667 ((_ is ElementMatch!10179) (reg!10508 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452239))

(assert (= (and b!3450667 ((_ is Concat!15829) (reg!10508 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452240))

(assert (= (and b!3450667 ((_ is Star!10179) (reg!10508 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452241))

(assert (= (and b!3450667 ((_ is Union!10179) (reg!10508 (regex!5420 (rule!8000 (h!42500 tokens!494)))))) b!3452242))

(declare-fun e!2138368 () Bool)

(assert (=> b!3450697 (= tp!1076348 e!2138368)))

(declare-fun b!3452244 () Bool)

(declare-fun tp!1076585 () Bool)

(declare-fun tp!1076584 () Bool)

(assert (=> b!3452244 (= e!2138368 (and tp!1076585 tp!1076584))))

(declare-fun b!3452243 () Bool)

(assert (=> b!3452243 (= e!2138368 tp_is_empty!17537)))

(declare-fun b!3452246 () Bool)

(declare-fun tp!1076586 () Bool)

(declare-fun tp!1076583 () Bool)

(assert (=> b!3452246 (= e!2138368 (and tp!1076586 tp!1076583))))

(declare-fun b!3452245 () Bool)

(declare-fun tp!1076582 () Bool)

(assert (=> b!3452245 (= e!2138368 tp!1076582)))

(assert (= (and b!3450697 ((_ is ElementMatch!10179) (reg!10508 (regex!5420 (rule!8000 separatorToken!241))))) b!3452243))

(assert (= (and b!3450697 ((_ is Concat!15829) (reg!10508 (regex!5420 (rule!8000 separatorToken!241))))) b!3452244))

(assert (= (and b!3450697 ((_ is Star!10179) (reg!10508 (regex!5420 (rule!8000 separatorToken!241))))) b!3452245))

(assert (= (and b!3450697 ((_ is Union!10179) (reg!10508 (regex!5420 (rule!8000 separatorToken!241))))) b!3452246))

(declare-fun b_lambda!99131 () Bool)

(assert (= b_lambda!99071 (or b!3449899 b_lambda!99131)))

(assert (=> b!3451115 d!992103))

(declare-fun b_lambda!99133 () Bool)

(assert (= b_lambda!99121 (or (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) (and b!3452238 b_free!89587 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) (and b!3449883 b_free!89551 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) (and b!3452162 b_free!89583) (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))))) b_lambda!99133)))

(declare-fun b_lambda!99135 () Bool)

(assert (= b_lambda!99127 (or (and b!3449883 b_free!89549) (and b!3449897 b_free!89545 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452238 b_free!89585 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89569 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89565 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452162 b_free!89581 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449880 b_free!89553 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99135)))

(declare-fun b_lambda!99137 () Bool)

(assert (= b_lambda!99083 (or b!3449899 b_lambda!99137)))

(assert (=> d!992625 d!992105))

(declare-fun b_lambda!99139 () Bool)

(assert (= b_lambda!99065 (or d!991963 b_lambda!99139)))

(declare-fun bs!559907 () Bool)

(declare-fun d!993001 () Bool)

(assert (= bs!559907 (and d!993001 d!991963)))

(assert (=> bs!559907 (= (dynLambda!15569 lambda!121535 (h!42500 (list!13486 (seqFromList!3893 tokens!494)))) (rulesProduceIndividualToken!2501 thiss!18206 rules!2135 (h!42500 (list!13486 (seqFromList!3893 tokens!494)))))))

(assert (=> bs!559907 m!3850169))

(assert (=> b!3450957 d!993001))

(declare-fun b_lambda!99141 () Bool)

(assert (= b_lambda!99117 (or b!3449899 b_lambda!99141)))

(assert (=> d!992805 d!992103))

(declare-fun b_lambda!99143 () Bool)

(assert (= b_lambda!99123 (or (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452162 b_free!89583 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449883 b_free!89551) (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452238 b_free!89587 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89571 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99143)))

(declare-fun b_lambda!99145 () Bool)

(assert (= b_lambda!99119 (or (and b!3450694 b_free!89571) (and b!3452238 b_free!89587 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3449883 b_free!89551 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 tokens!494)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3450680 b_free!89567 (= (toChars!7499 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3449880 b_free!89555 (= (toChars!7499 (transformation!5420 (h!42501 rules!2135))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3449897 b_free!89547 (= (toChars!7499 (transformation!5420 (rule!8000 separatorToken!241))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) (and b!3452162 b_free!89583 (= (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toChars!7499 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))))) b_lambda!99145)))

(declare-fun b_lambda!99147 () Bool)

(assert (= b_lambda!99125 (or (and b!3449883 b_free!89549) (and b!3449897 b_free!89545 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452238 b_free!89585 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89569 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89565 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452162 b_free!89581 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449880 b_free!89553 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99147)))

(declare-fun b_lambda!99149 () Bool)

(assert (= b_lambda!99115 (or (and b!3449883 b_free!89549) (and b!3449897 b_free!89545 (= (toValue!7640 (transformation!5420 (rule!8000 separatorToken!241))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452238 b_free!89585 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 (t!271614 rules!2135))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450694 b_free!89569 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 tokens!494))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3450680 b_free!89565 (= (toValue!7640 (transformation!5420 (h!42501 (t!271614 rules!2135)))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3452162 b_free!89581 (= (toValue!7640 (transformation!5420 (rule!8000 (h!42500 (t!271613 (t!271613 tokens!494)))))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) (and b!3449880 b_free!89553 (= (toValue!7640 (transformation!5420 (h!42501 rules!2135))) (toValue!7640 (transformation!5420 (rule!8000 (h!42500 tokens!494)))))) b_lambda!99149)))

(check-sat (not d!992935) (not b!3452017) (not bm!249178) b_and!242499 (not b_lambda!99073) (not d!992875) (not b!3451688) (not d!992683) (not b_next!90291) (not b!3451925) (not b!3451545) (not d!992921) (not b!3452206) (not b!3451125) (not b!3452009) (not d!992647) (not b!3452233) (not b!3452217) (not b!3452196) (not b!3452001) (not d!992771) (not bm!249176) (not b!3451998) (not d!992937) (not d!992667) (not bm!249183) (not b_next!90257) (not b!3452222) (not d!992907) (not b_lambda!99129) (not d!992901) (not d!992861) (not b!3451684) (not d!992663) (not b!3451909) (not b!3451953) (not b!3451553) (not b!3451694) (not b_lambda!99041) (not b!3452036) (not d!992961) (not b!3451624) (not d!992847) (not b!3452195) (not b!3451461) (not b!3452218) (not b!3452094) (not b!3451681) (not b!3451086) (not d!992773) b_and!242503 (not b!3452234) (not b!3452087) (not d!992505) (not b!3452108) (not bm!249149) (not b!3452165) (not b!3452156) (not bm!249184) (not b!3452191) (not b!3452240) (not b!3451915) (not b_next!90259) (not d!992967) (not d!992987) (not b!3451661) (not d!992643) (not b!3451961) (not b!3452048) (not b!3451911) (not d!992923) (not bm!249186) (not d!992867) (not b!3451702) b_and!242521 (not b_lambda!99053) (not b!3451033) (not b!3451878) b_and!242509 (not b!3451045) (not d!992873) (not d!992853) (not b!3452099) (not d!992825) (not b!3452134) (not b!3452062) (not b!3451442) (not b!3452219) (not b!3451882) (not b!3451978) (not b!3452166) (not d!992915) (not b!3452159) (not b_lambda!99043) (not b!3451558) (not bm!249116) (not d!992345) (not d!992641) (not b!3452246) (not b!3452198) (not b!3451663) (not d!992353) (not b!3450958) (not d!992859) (not b!3452151) (not b!3451963) (not d!992971) (not b!3451662) (not b!3452034) (not d!992723) (not d!992321) (not b!3452077) (not b!3451692) (not b_next!90271) (not b!3450185) (not tb!187901) (not d!992767) (not b_lambda!99143) (not b!3452210) (not b!3451245) (not b!3451686) (not d!992485) (not b!3452215) (not b!3450995) (not b!3451036) (not b_next!90287) (not d!992955) (not b!3451579) (not b!3451697) (not b!3451153) (not b!3452065) (not b!3452160) (not b!3451988) (not d!992463) (not tb!187763) (not b!3451453) (not d!992423) (not b_next!90251) (not b!3450963) (not d!992673) (not b!3452183) (not b!3452175) (not b!3451977) (not b!3451562) (not d!992363) (not b!3452179) (not d!992713) (not b_next!90275) (not d!992789) (not d!992787) (not b!3451567) (not b!3451459) (not tb!187881) (not b!3452122) (not d!992489) (not b_next!90285) (not b!3451031) (not b!3451517) (not b!3450960) (not b!3451510) (not b!3451997) (not b!3451895) (not d!992911) (not d!992365) (not b!3452227) (not b!3452205) (not b!3452105) (not d!992715) (not d!992905) (not bm!249175) (not d!992367) (not b!3452049) (not d!992419) (not b!3452203) b_and!242517 (not b!3452231) (not b!3452200) (not b!3451959) (not b!3451983) (not d!992461) (not b!3451496) (not b!3450961) (not b!3452004) (not b!3451551) (not b!3452155) (not b!3452237) (not b!3452199) (not b!3451993) (not d!992413) (not b!3451478) (not b!3452194) (not b!3451972) (not b!3451934) (not bm!249182) (not b!3451970) (not d!992903) (not b!3452226) (not b!3451456) (not d!992381) (not d!992877) (not b!3452114) (not b!3451929) (not b!3451568) (not b!3451457) (not d!992323) (not b!3451127) (not b!3452026) (not tb!187861) b_and!242519 (not b!3451912) (not d!992675) (not b!3451559) (not b!3452127) (not bm!249107) (not b!3451116) (not b!3452190) (not d!992349) (not b_next!90255) (not d!992931) (not b!3451004) (not d!992823) (not b!3452130) (not b!3450198) (not b!3452076) (not bm!249119) (not d!992963) (not b!3452043) (not b!3452053) (not b!3451501) (not b!3451948) (not b!3451666) (not b!3452030) (not bm!249181) (not tb!187871) (not d!992933) (not d!992475) (not b!3452185) (not b!3451973) (not d!992865) (not d!992895) (not b!3452182) (not b!3452245) (not b!3452067) (not b!3452090) (not b!3452176) (not d!992327) (not d!992441) (not d!992777) (not b!3451975) (not bm!249101) (not b!3451920) (not d!992339) (not b_lambda!99049) (not b_lambda!99131) (not b!3452112) (not b!3452147) (not d!992977) (not d!992913) (not bm!249100) (not b!3451046) (not b_lambda!99139) (not b!3452113) (not d!992705) (not b!3451468) (not b!3451128) b_and!242507 (not b!3452007) (not b!3452242) (not b!3452141) (not b!3452070) (not b!3451695) (not d!992677) (not b!3451880) (not d!992941) (not b!3452202) (not d!992981) (not b!3452178) (not b!3452117) (not b!3451939) (not b!3452079) (not d!992477) (not b!3451630) (not bm!249174) (not b!3452058) (not b!3452132) (not b_lambda!99037) (not b!3452012) (not b!3452054) (not b!3451444) (not b!3452032) (not b!3452092) (not b!3451034) (not d!992979) (not bm!249177) (not b!3452045) (not b!3451112) b_and!242505 (not b!3452214) (not b!3451030) (not d!992869) (not b!3451196) (not b!3451863) (not d!992855) (not b!3452019) (not b!3451198) (not d!992699) (not b!3450400) (not b!3451178) (not bm!249105) (not d!992909) (not b!3451875) (not d!992417) (not d!992437) (not b!3451994) (not bm!249122) b_and!242525 (not b!3452161) (not b_lambda!99141) (not b!3452148) (not b!3452201) (not b!3452085) (not b!3451508) (not d!992957) (not b!3450964) (not b!3452013) (not b!3451627) (not d!992893) (not b!3452091) (not b_lambda!99045) b_and!242511 (not b_lambda!99069) (not bm!249191) (not d!992969) (not d!992765) (not b!3452038) (not tb!187743) (not b!3451632) (not d!992721) (not b!3451969) (not b!3451244) (not d!992649) (not b_lambda!99133) (not b!3452061) (not b!3452230) (not b!3452142) (not d!992819) (not b!3452057) (not b!3451974) (not b!3451476) (not d!992685) (not d!992679) (not b_lambda!99149) (not b!3452221) (not b!3452244) (not b!3451870) (not b!3452177) (not bm!249102) (not b!3452207) (not bm!249193) (not d!992881) (not b!3452055) (not b!3452149) (not bm!249068) (not b_next!90249) (not b_lambda!99137) (not bm!249187) (not b!3452211) (not b!3452241) (not d!992951) (not b!3452143) (not b!3451565) (not d!992785) (not b!3451032) b_and!242501 (not b!3451944) (not d!992879) (not b!3451922) (not b_lambda!99067) (not d!992469) b_and!242523 (not d!992999) (not b!3452115) (not b!3451967) (not b_lambda!99135) (not b!3451918) (not b!3451965) (not b!3451079) (not d!992331) (not b!3451047) (not d!992919) (not b_lambda!99051) (not bm!249173) (not b!3452158) (not b!3452002) (not d!992631) (not b!3452046) (not b!3451010) (not b!3452083) (not d!992947) (not b!3451065) (not b_next!90273) (not b!3451938) (not d!992801) (not b!3451490) (not b!3451072) (not b!3452209) (not bm!249151) (not d!992341) (not b!3451693) (not b!3451445) (not b!3452180) (not d!992633) (not b!3451665) (not b!3452229) (not d!992781) (not b!3451946) (not b_lambda!99047) (not b!3452126) tp_is_empty!17537 (not d!992687) (not b!3452106) (not d!992841) (not b!3452225) (not d!992711) (not b!3451689) (not b!3452152) (not b!3451685) (not b_lambda!99147) (not b!3451489) (not b!3452213) (not d!992799) (not b!3452008) (not bm!249169) (not bm!249171) (not d!992691) (not bm!249170) (not d!992629) (not b!3452184) (not b!3452021) (not d!992435) (not b!3452235) (not d!992333) (not d!992361) (not d!992717) (not b!3451495) (not b!3452081) (not b!3452016) (not b!3452192) (not b!3452223) (not d!992319) (not d!992325) (not b!3451887) (not b!3452236) (not d!992833) (not d!992783) (not d!992995) (not d!992347) (not d!992501) (not d!992803) (not b!3451563) (not b!3451879) (not b!3451001) (not d!992775) (not d!992709) (not bs!559907) (not d!992627) (not b!3451664) b_and!242515 (not b!3451467) (not bm!249071) (not b!3452153) (not b_next!90289) (not b!3451073) (not d!992871) (not b!3451448) (not b!3452157) (not b!3451916) (not b!3451942) (not bm!249172) (not b!3451625) (not b_next!90253) (not b!3451225) (not d!992929) (not bm!249190) (not b!3451872) (not b!3452186) (not b!3451924) (not tb!187753) b_and!242513 (not b_lambda!99039) (not b!3452164) (not b!3451861) (not b!3451200) (not b!3451620) (not b!3451927) (not b!3451509) (not b!3451507) (not b_next!90269) (not d!992335) (not d!992849) (not b!3451980) (not d!992831) (not bm!249148) (not d!992985) (not b!3451621) (not bm!249104) (not b_lambda!99145) (not bm!249069) (not d!992917) (not bm!249147) (not b!3452051) (not d!992791) (not b!3452109) (not b!3451683) (not b!3451512) (not b!3451628) (not b!3452018) (not b!3451926) (not b!3451877) (not tb!187891) (not bm!249189) (not b!3452136))
(check-sat (not b_next!90257) b_and!242503 b_and!242509 (not b_next!90271) (not b_next!90287) (not b_next!90251) b_and!242517 b_and!242507 b_and!242505 b_and!242525 b_and!242511 (not b_next!90249) (not b_next!90273) b_and!242515 b_and!242499 (not b_next!90291) (not b_next!90259) b_and!242521 (not b_next!90275) (not b_next!90285) (not b_next!90255) b_and!242519 b_and!242501 b_and!242523 (not b_next!90253) (not b_next!90289) b_and!242513 (not b_next!90269))
