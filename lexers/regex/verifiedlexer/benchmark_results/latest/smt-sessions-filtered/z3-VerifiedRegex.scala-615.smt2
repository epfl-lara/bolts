; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19666 () Bool)

(assert start!19666)

(declare-fun b!181899 () Bool)

(declare-fun b_free!7081 () Bool)

(declare-fun b_next!7081 () Bool)

(assert (=> b!181899 (= b_free!7081 (not b_next!7081))))

(declare-fun tp!86613 () Bool)

(declare-fun b_and!12445 () Bool)

(assert (=> b!181899 (= tp!86613 b_and!12445)))

(declare-fun b_free!7083 () Bool)

(declare-fun b_next!7083 () Bool)

(assert (=> b!181899 (= b_free!7083 (not b_next!7083))))

(declare-fun tp!86609 () Bool)

(declare-fun b_and!12447 () Bool)

(assert (=> b!181899 (= tp!86609 b_and!12447)))

(declare-fun b!181881 () Bool)

(declare-fun b_free!7085 () Bool)

(declare-fun b_next!7085 () Bool)

(assert (=> b!181881 (= b_free!7085 (not b_next!7085))))

(declare-fun tp!86615 () Bool)

(declare-fun b_and!12449 () Bool)

(assert (=> b!181881 (= tp!86615 b_and!12449)))

(declare-fun b_free!7087 () Bool)

(declare-fun b_next!7087 () Bool)

(assert (=> b!181881 (= b_free!7087 (not b_next!7087))))

(declare-fun tp!86621 () Bool)

(declare-fun b_and!12451 () Bool)

(assert (=> b!181881 (= tp!86621 b_and!12451)))

(declare-fun b!181892 () Bool)

(declare-fun b_free!7089 () Bool)

(declare-fun b_next!7089 () Bool)

(assert (=> b!181892 (= b_free!7089 (not b_next!7089))))

(declare-fun tp!86617 () Bool)

(declare-fun b_and!12453 () Bool)

(assert (=> b!181892 (= tp!86617 b_and!12453)))

(declare-fun b_free!7091 () Bool)

(declare-fun b_next!7091 () Bool)

(assert (=> b!181892 (= b_free!7091 (not b_next!7091))))

(declare-fun tp!86611 () Bool)

(declare-fun b_and!12455 () Bool)

(assert (=> b!181892 (= tp!86611 b_and!12455)))

(declare-fun bs!18082 () Bool)

(declare-fun b!181896 () Bool)

(declare-fun b!181894 () Bool)

(assert (= bs!18082 (and b!181896 b!181894)))

(declare-fun lambda!5394 () Int)

(declare-fun lambda!5393 () Int)

(assert (=> bs!18082 (not (= lambda!5394 lambda!5393))))

(declare-fun b!181916 () Bool)

(declare-fun e!110923 () Bool)

(assert (=> b!181916 (= e!110923 true)))

(declare-fun b!181915 () Bool)

(declare-fun e!110922 () Bool)

(assert (=> b!181915 (= e!110922 e!110923)))

(declare-fun b!181914 () Bool)

(declare-fun e!110921 () Bool)

(assert (=> b!181914 (= e!110921 e!110922)))

(assert (=> b!181896 e!110921))

(assert (= b!181915 b!181916))

(assert (= b!181914 b!181915))

(declare-datatypes ((List!3057 0))(
  ( (Nil!3047) (Cons!3047 (h!8444 (_ BitVec 16)) (t!28343 List!3057)) )
))
(declare-datatypes ((TokenValue!575 0))(
  ( (FloatLiteralValue!1150 (text!4470 List!3057)) (TokenValueExt!574 (__x!2637 Int)) (Broken!2875 (value!20050 List!3057)) (Object!584) (End!575) (Def!575) (Underscore!575) (Match!575) (Else!575) (Error!575) (Case!575) (If!575) (Extends!575) (Abstract!575) (Class!575) (Val!575) (DelimiterValue!1150 (del!635 List!3057)) (KeywordValue!581 (value!20051 List!3057)) (CommentValue!1150 (value!20052 List!3057)) (WhitespaceValue!1150 (value!20053 List!3057)) (IndentationValue!575 (value!20054 List!3057)) (String!3954) (Int32!575) (Broken!2876 (value!20055 List!3057)) (Boolean!576) (Unit!2797) (OperatorValue!578 (op!635 List!3057)) (IdentifierValue!1150 (value!20056 List!3057)) (IdentifierValue!1151 (value!20057 List!3057)) (WhitespaceValue!1151 (value!20058 List!3057)) (True!1150) (False!1150) (Broken!2877 (value!20059 List!3057)) (Broken!2878 (value!20060 List!3057)) (True!1151) (RightBrace!575) (RightBracket!575) (Colon!575) (Null!575) (Comma!575) (LeftBracket!575) (False!1151) (LeftBrace!575) (ImaginaryLiteralValue!575 (text!4471 List!3057)) (StringLiteralValue!1725 (value!20061 List!3057)) (EOFValue!575 (value!20062 List!3057)) (IdentValue!575 (value!20063 List!3057)) (DelimiterValue!1151 (value!20064 List!3057)) (DedentValue!575 (value!20065 List!3057)) (NewLineValue!575 (value!20066 List!3057)) (IntegerValue!1725 (value!20067 (_ BitVec 32)) (text!4472 List!3057)) (IntegerValue!1726 (value!20068 Int) (text!4473 List!3057)) (Times!575) (Or!575) (Equal!575) (Minus!575) (Broken!2879 (value!20069 List!3057)) (And!575) (Div!575) (LessEqual!575) (Mod!575) (Concat!1352) (Not!575) (Plus!575) (SpaceValue!575 (value!20070 List!3057)) (IntegerValue!1727 (value!20071 Int) (text!4474 List!3057)) (StringLiteralValue!1726 (text!4475 List!3057)) (FloatLiteralValue!1151 (text!4476 List!3057)) (BytesLiteralValue!575 (value!20072 List!3057)) (CommentValue!1151 (value!20073 List!3057)) (StringLiteralValue!1727 (value!20074 List!3057)) (ErrorTokenValue!575 (msg!636 List!3057)) )
))
(declare-datatypes ((C!2476 0))(
  ( (C!2477 (val!1124 Int)) )
))
(declare-datatypes ((List!3058 0))(
  ( (Nil!3048) (Cons!3048 (h!8445 C!2476) (t!28344 List!3058)) )
))
(declare-datatypes ((IArray!1857 0))(
  ( (IArray!1858 (innerList!986 List!3058)) )
))
(declare-datatypes ((Conc!928 0))(
  ( (Node!928 (left!2367 Conc!928) (right!2697 Conc!928) (csize!2086 Int) (cheight!1139 Int)) (Leaf!1544 (xs!3523 IArray!1857) (csize!2087 Int)) (Empty!928) )
))
(declare-datatypes ((BalanceConc!1864 0))(
  ( (BalanceConc!1865 (c!35473 Conc!928)) )
))
(declare-datatypes ((TokenValueInjection!922 0))(
  ( (TokenValueInjection!923 (toValue!1224 Int) (toChars!1083 Int)) )
))
(declare-datatypes ((String!3955 0))(
  ( (String!3956 (value!20075 String)) )
))
(declare-datatypes ((Regex!777 0))(
  ( (ElementMatch!777 (c!35474 C!2476)) (Concat!1353 (regOne!2066 Regex!777) (regTwo!2066 Regex!777)) (EmptyExpr!777) (Star!777 (reg!1106 Regex!777)) (EmptyLang!777) (Union!777 (regOne!2067 Regex!777) (regTwo!2067 Regex!777)) )
))
(declare-datatypes ((Rule!906 0))(
  ( (Rule!907 (regex!553 Regex!777) (tag!731 String!3955) (isSeparator!553 Bool) (transformation!553 TokenValueInjection!922)) )
))
(declare-datatypes ((List!3059 0))(
  ( (Nil!3049) (Cons!3049 (h!8446 Rule!906) (t!28345 List!3059)) )
))
(declare-fun rules!1920 () List!3059)

(get-info :version)

(assert (= (and b!181896 ((_ is Cons!3049) rules!1920)) b!181914))

(declare-fun order!1793 () Int)

(declare-fun order!1795 () Int)

(declare-fun dynLambda!1229 (Int Int) Int)

(declare-fun dynLambda!1230 (Int Int) Int)

(assert (=> b!181916 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5394))))

(declare-fun order!1797 () Int)

(declare-fun dynLambda!1231 (Int Int) Int)

(assert (=> b!181916 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5394))))

(assert (=> b!181896 true))

(declare-fun b!181873 () Bool)

(declare-fun e!110913 () Bool)

(declare-fun e!110888 () Bool)

(assert (=> b!181873 (= e!110913 e!110888)))

(declare-fun res!82527 () Bool)

(assert (=> b!181873 (=> (not res!82527) (not e!110888))))

(declare-datatypes ((Token!850 0))(
  ( (Token!851 (value!20076 TokenValue!575) (rule!1068 Rule!906) (size!2483 Int) (originalCharacters!596 List!3058)) )
))
(declare-datatypes ((List!3060 0))(
  ( (Nil!3050) (Cons!3050 (h!8447 Token!850) (t!28346 List!3060)) )
))
(declare-datatypes ((IArray!1859 0))(
  ( (IArray!1860 (innerList!987 List!3060)) )
))
(declare-datatypes ((Conc!929 0))(
  ( (Node!929 (left!2368 Conc!929) (right!2698 Conc!929) (csize!2088 Int) (cheight!1140 Int)) (Leaf!1545 (xs!3524 IArray!1859) (csize!2089 Int)) (Empty!929) )
))
(declare-datatypes ((BalanceConc!1866 0))(
  ( (BalanceConc!1867 (c!35475 Conc!929)) )
))
(declare-fun lt!60072 () BalanceConc!1866)

(declare-datatypes ((LexerInterface!439 0))(
  ( (LexerInterfaceExt!436 (__x!2638 Int)) (Lexer!437) )
))
(declare-fun thiss!17480 () LexerInterface!439)

(declare-fun rulesProduceEachTokenIndividually!231 (LexerInterface!439 List!3059 BalanceConc!1866) Bool)

(assert (=> b!181873 (= res!82527 (rulesProduceEachTokenIndividually!231 thiss!17480 rules!1920 lt!60072))))

(declare-fun tokens!465 () List!3060)

(declare-fun seqFromList!483 (List!3060) BalanceConc!1866)

(assert (=> b!181873 (= lt!60072 (seqFromList!483 tokens!465))))

(declare-fun b!181874 () Bool)

(declare-fun e!110895 () Bool)

(declare-fun lt!60060 () List!3058)

(declare-fun matchR!115 (Regex!777 List!3058) Bool)

(assert (=> b!181874 (= e!110895 (matchR!115 (regex!553 (rule!1068 (h!8447 tokens!465))) lt!60060))))

(declare-fun tp!86610 () Bool)

(declare-fun e!110904 () Bool)

(declare-fun b!181875 () Bool)

(declare-fun e!110897 () Bool)

(declare-fun inv!21 (TokenValue!575) Bool)

(assert (=> b!181875 (= e!110904 (and (inv!21 (value!20076 (h!8447 tokens!465))) e!110897 tp!86610))))

(declare-fun e!110903 () Bool)

(declare-fun b!181876 () Bool)

(declare-fun e!110901 () Bool)

(declare-fun tp!86616 () Bool)

(declare-fun inv!3877 (String!3955) Bool)

(declare-fun inv!3880 (TokenValueInjection!922) Bool)

(assert (=> b!181876 (= e!110903 (and tp!86616 (inv!3877 (tag!731 (h!8446 rules!1920))) (inv!3880 (transformation!553 (h!8446 rules!1920))) e!110901))))

(declare-fun b!181877 () Bool)

(declare-fun res!82522 () Bool)

(assert (=> b!181877 (=> (not res!82522) (not e!110888))))

(declare-fun sepAndNonSepRulesDisjointChars!142 (List!3059 List!3059) Bool)

(assert (=> b!181877 (= res!82522 (sepAndNonSepRulesDisjointChars!142 rules!1920 rules!1920))))

(declare-fun b!181878 () Bool)

(declare-fun e!110908 () Bool)

(declare-fun e!110889 () Bool)

(assert (=> b!181878 (= e!110908 e!110889)))

(declare-fun res!82515 () Bool)

(assert (=> b!181878 (=> res!82515 e!110889)))

(declare-fun lt!60071 () Bool)

(assert (=> b!181878 (= res!82515 (not lt!60071))))

(assert (=> b!181878 e!110895))

(declare-fun res!82513 () Bool)

(assert (=> b!181878 (=> (not res!82513) (not e!110895))))

(declare-datatypes ((tuple2!3042 0))(
  ( (tuple2!3043 (_1!1737 Token!850) (_2!1737 List!3058)) )
))
(declare-fun lt!60070 () tuple2!3042)

(assert (=> b!181878 (= res!82513 (= (_1!1737 lt!60070) (h!8447 tokens!465)))))

(declare-datatypes ((Option!384 0))(
  ( (None!383) (Some!383 (v!13864 tuple2!3042)) )
))
(declare-fun lt!60068 () Option!384)

(declare-fun get!860 (Option!384) tuple2!3042)

(assert (=> b!181878 (= lt!60070 (get!860 lt!60068))))

(declare-fun isDefined!235 (Option!384) Bool)

(assert (=> b!181878 (isDefined!235 lt!60068)))

(declare-fun maxPrefix!169 (LexerInterface!439 List!3059 List!3058) Option!384)

(assert (=> b!181878 (= lt!60068 (maxPrefix!169 thiss!17480 rules!1920 lt!60060))))

(declare-fun separatorToken!170 () Token!850)

(declare-fun b!181879 () Bool)

(declare-fun e!110890 () Bool)

(declare-fun tp!86620 () Bool)

(declare-fun e!110907 () Bool)

(assert (=> b!181879 (= e!110890 (and tp!86620 (inv!3877 (tag!731 (rule!1068 separatorToken!170))) (inv!3880 (transformation!553 (rule!1068 separatorToken!170))) e!110907))))

(declare-fun b!181880 () Bool)

(declare-fun res!82528 () Bool)

(assert (=> b!181880 (=> (not res!82528) (not e!110888))))

(assert (=> b!181880 (= res!82528 ((_ is Cons!3050) tokens!465))))

(assert (=> b!181881 (= e!110907 (and tp!86615 tp!86621))))

(declare-fun e!110914 () Bool)

(declare-fun b!181882 () Bool)

(declare-fun tp!86619 () Bool)

(assert (=> b!181882 (= e!110897 (and tp!86619 (inv!3877 (tag!731 (rule!1068 (h!8447 tokens!465)))) (inv!3880 (transformation!553 (rule!1068 (h!8447 tokens!465)))) e!110914))))

(declare-fun res!82524 () Bool)

(assert (=> start!19666 (=> (not res!82524) (not e!110913))))

(assert (=> start!19666 (= res!82524 ((_ is Lexer!437) thiss!17480))))

(assert (=> start!19666 e!110913))

(assert (=> start!19666 true))

(declare-fun e!110910 () Bool)

(assert (=> start!19666 e!110910))

(declare-fun e!110894 () Bool)

(declare-fun inv!3881 (Token!850) Bool)

(assert (=> start!19666 (and (inv!3881 separatorToken!170) e!110894)))

(declare-fun e!110912 () Bool)

(assert (=> start!19666 e!110912))

(declare-fun b!181883 () Bool)

(declare-fun res!82517 () Bool)

(declare-fun e!110899 () Bool)

(assert (=> b!181883 (=> (not res!82517) (not e!110899))))

(declare-fun lt!60074 () List!3058)

(declare-fun lt!60069 () List!3058)

(declare-fun list!1119 (BalanceConc!1864) List!3058)

(declare-fun seqFromList!484 (List!3058) BalanceConc!1864)

(assert (=> b!181883 (= res!82517 (= (list!1119 (seqFromList!484 lt!60074)) lt!60069))))

(declare-fun b!181884 () Bool)

(assert (=> b!181884 (= e!110888 e!110899)))

(declare-fun res!82512 () Bool)

(assert (=> b!181884 (=> (not res!82512) (not e!110899))))

(assert (=> b!181884 (= res!82512 (= lt!60074 lt!60069))))

(declare-fun printWithSeparatorTokenWhenNeededRec!122 (LexerInterface!439 List!3059 BalanceConc!1866 Token!850 Int) BalanceConc!1864)

(assert (=> b!181884 (= lt!60069 (list!1119 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 lt!60072 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!132 (LexerInterface!439 List!3059 List!3060 Token!850) List!3058)

(assert (=> b!181884 (= lt!60074 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!181885 () Bool)

(declare-fun res!82523 () Bool)

(declare-fun e!110893 () Bool)

(assert (=> b!181885 (=> res!82523 e!110893)))

(declare-fun isEmpty!1399 (BalanceConc!1866) Bool)

(declare-datatypes ((tuple2!3044 0))(
  ( (tuple2!3045 (_1!1738 BalanceConc!1866) (_2!1738 BalanceConc!1864)) )
))
(declare-fun lex!239 (LexerInterface!439 List!3059 BalanceConc!1864) tuple2!3044)

(assert (=> b!181885 (= res!82523 (isEmpty!1399 (_1!1738 (lex!239 thiss!17480 rules!1920 (seqFromList!484 lt!60060)))))))

(declare-fun b!181886 () Bool)

(declare-fun e!110900 () Bool)

(assert (=> b!181886 (= e!110899 (not e!110900))))

(declare-fun res!82518 () Bool)

(assert (=> b!181886 (=> res!82518 e!110900)))

(declare-fun lt!60067 () List!3058)

(assert (=> b!181886 (= res!82518 (not (= lt!60067 (list!1119 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 (seqFromList!483 (t!28346 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!60061 () List!3058)

(declare-fun lt!60059 () List!3058)

(assert (=> b!181886 (= lt!60061 lt!60059)))

(declare-fun lt!60065 () List!3058)

(declare-fun ++!718 (List!3058 List!3058) List!3058)

(assert (=> b!181886 (= lt!60059 (++!718 lt!60060 lt!60065))))

(declare-fun lt!60066 () List!3058)

(assert (=> b!181886 (= lt!60061 (++!718 (++!718 lt!60060 lt!60066) lt!60067))))

(declare-datatypes ((Unit!2798 0))(
  ( (Unit!2799) )
))
(declare-fun lt!60073 () Unit!2798)

(declare-fun lemmaConcatAssociativity!242 (List!3058 List!3058 List!3058) Unit!2798)

(assert (=> b!181886 (= lt!60073 (lemmaConcatAssociativity!242 lt!60060 lt!60066 lt!60067))))

(declare-fun charsOf!208 (Token!850) BalanceConc!1864)

(assert (=> b!181886 (= lt!60060 (list!1119 (charsOf!208 (h!8447 tokens!465))))))

(assert (=> b!181886 (= lt!60065 (++!718 lt!60066 lt!60067))))

(assert (=> b!181886 (= lt!60067 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (t!28346 tokens!465) separatorToken!170))))

(assert (=> b!181886 (= lt!60066 (list!1119 (charsOf!208 separatorToken!170)))))

(declare-fun e!110892 () Bool)

(declare-fun b!181887 () Bool)

(assert (=> b!181887 (= e!110892 (not (= lt!60074 (++!718 lt!60060 lt!60067))))))

(declare-fun b!181888 () Bool)

(declare-fun res!82521 () Bool)

(assert (=> b!181888 (=> (not res!82521) (not e!110888))))

(assert (=> b!181888 (= res!82521 (isSeparator!553 (rule!1068 separatorToken!170)))))

(declare-fun b!181889 () Bool)

(declare-fun res!82520 () Bool)

(assert (=> b!181889 (=> (not res!82520) (not e!110888))))

(declare-fun rulesProduceIndividualToken!188 (LexerInterface!439 List!3059 Token!850) Bool)

(assert (=> b!181889 (= res!82520 (rulesProduceIndividualToken!188 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!181890 () Bool)

(declare-fun e!110898 () Bool)

(assert (=> b!181890 (= e!110900 e!110898)))

(declare-fun res!82531 () Bool)

(assert (=> b!181890 (=> res!82531 e!110898)))

(assert (=> b!181890 (= res!82531 e!110892)))

(declare-fun res!82516 () Bool)

(assert (=> b!181890 (=> (not res!82516) (not e!110892))))

(assert (=> b!181890 (= res!82516 (not lt!60071))))

(assert (=> b!181890 (= lt!60071 (= lt!60074 lt!60059))))

(declare-fun b!181891 () Bool)

(declare-fun e!110911 () Bool)

(declare-fun lt!60062 () Option!384)

(declare-fun head!632 (List!3060) Token!850)

(assert (=> b!181891 (= e!110911 (= (_1!1737 (get!860 lt!60062)) (head!632 tokens!465)))))

(assert (=> b!181892 (= e!110914 (and tp!86617 tp!86611))))

(declare-fun b!181893 () Bool)

(declare-fun tp!86618 () Bool)

(assert (=> b!181893 (= e!110910 (and e!110903 tp!86618))))

(declare-fun res!82532 () Bool)

(assert (=> b!181894 (=> (not res!82532) (not e!110888))))

(declare-fun forall!623 (List!3060 Int) Bool)

(assert (=> b!181894 (= res!82532 (forall!623 tokens!465 lambda!5393))))

(declare-fun b!181895 () Bool)

(declare-fun tp!86614 () Bool)

(assert (=> b!181895 (= e!110894 (and (inv!21 (value!20076 separatorToken!170)) e!110890 tp!86614))))

(assert (=> b!181896 (= e!110893 e!110908)))

(declare-fun res!82529 () Bool)

(assert (=> b!181896 (=> res!82529 e!110908)))

(declare-datatypes ((tuple2!3046 0))(
  ( (tuple2!3047 (_1!1739 Token!850) (_2!1739 BalanceConc!1864)) )
))
(declare-datatypes ((Option!385 0))(
  ( (None!384) (Some!384 (v!13865 tuple2!3046)) )
))
(declare-fun isDefined!236 (Option!385) Bool)

(declare-fun maxPrefixZipperSequence!132 (LexerInterface!439 List!3059 BalanceConc!1864) Option!385)

(assert (=> b!181896 (= res!82529 (not (isDefined!236 (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))

(declare-fun lt!60063 () Unit!2798)

(declare-fun forallContained!120 (List!3060 Int Token!850) Unit!2798)

(assert (=> b!181896 (= lt!60063 (forallContained!120 tokens!465 lambda!5394 (h!8447 tokens!465)))))

(assert (=> b!181896 (= lt!60060 (originalCharacters!596 (h!8447 tokens!465)))))

(declare-fun b!181897 () Bool)

(assert (=> b!181897 (= e!110898 e!110893)))

(declare-fun res!82534 () Bool)

(assert (=> b!181897 (=> res!82534 e!110893)))

(declare-fun lt!60055 () List!3058)

(declare-fun lt!60057 () List!3058)

(assert (=> b!181897 (= res!82534 (or (not (= lt!60055 lt!60057)) (not (= lt!60057 lt!60060)) (not (= lt!60055 lt!60060))))))

(declare-fun printList!123 (LexerInterface!439 List!3060) List!3058)

(assert (=> b!181897 (= lt!60057 (printList!123 thiss!17480 (Cons!3050 (h!8447 tokens!465) Nil!3050)))))

(declare-fun lt!60054 () BalanceConc!1864)

(assert (=> b!181897 (= lt!60055 (list!1119 lt!60054))))

(declare-fun lt!60064 () BalanceConc!1866)

(declare-fun printTailRec!133 (LexerInterface!439 BalanceConc!1866 Int BalanceConc!1864) BalanceConc!1864)

(assert (=> b!181897 (= lt!60054 (printTailRec!133 thiss!17480 lt!60064 0 (BalanceConc!1865 Empty!928)))))

(declare-fun print!170 (LexerInterface!439 BalanceConc!1866) BalanceConc!1864)

(assert (=> b!181897 (= lt!60054 (print!170 thiss!17480 lt!60064))))

(declare-fun singletonSeq!105 (Token!850) BalanceConc!1866)

(assert (=> b!181897 (= lt!60064 (singletonSeq!105 (h!8447 tokens!465)))))

(declare-fun b!181898 () Bool)

(declare-fun res!82519 () Bool)

(assert (=> b!181898 (=> res!82519 e!110893)))

(assert (=> b!181898 (= res!82519 (not (rulesProduceIndividualToken!188 thiss!17480 rules!1920 (h!8447 tokens!465))))))

(assert (=> b!181899 (= e!110901 (and tp!86613 tp!86609))))

(declare-fun b!181900 () Bool)

(declare-fun tp!86612 () Bool)

(assert (=> b!181900 (= e!110912 (and (inv!3881 (h!8447 tokens!465)) e!110904 tp!86612))))

(declare-fun b!181901 () Bool)

(declare-fun res!82525 () Bool)

(assert (=> b!181901 (=> (not res!82525) (not e!110913))))

(declare-fun rulesInvariant!405 (LexerInterface!439 List!3059) Bool)

(assert (=> b!181901 (= res!82525 (rulesInvariant!405 thiss!17480 rules!1920))))

(declare-fun b!181902 () Bool)

(declare-fun rulesValidInductive!136 (LexerInterface!439 List!3059) Bool)

(assert (=> b!181902 (= e!110889 (rulesValidInductive!136 thiss!17480 rules!1920))))

(declare-fun lt!60058 () tuple2!3042)

(assert (=> b!181902 (= lt!60065 (_2!1737 lt!60058))))

(declare-fun lt!60076 () Unit!2798)

(declare-fun lemmaSamePrefixThenSameSuffix!74 (List!3058 List!3058 List!3058 List!3058 List!3058) Unit!2798)

(assert (=> b!181902 (= lt!60076 (lemmaSamePrefixThenSameSuffix!74 lt!60060 lt!60065 lt!60060 (_2!1737 lt!60058) lt!60074))))

(assert (=> b!181902 (= lt!60058 (get!860 (maxPrefix!169 thiss!17480 rules!1920 lt!60074)))))

(declare-fun isPrefix!249 (List!3058 List!3058) Bool)

(assert (=> b!181902 (isPrefix!249 lt!60060 lt!60059)))

(declare-fun lt!60075 () Unit!2798)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!144 (List!3058 List!3058) Unit!2798)

(assert (=> b!181902 (= lt!60075 (lemmaConcatTwoListThenFirstIsPrefix!144 lt!60060 lt!60065))))

(declare-fun e!110902 () Bool)

(assert (=> b!181902 e!110902))

(declare-fun res!82533 () Bool)

(assert (=> b!181902 (=> res!82533 e!110902)))

(declare-fun isEmpty!1400 (List!3060) Bool)

(assert (=> b!181902 (= res!82533 (isEmpty!1400 tokens!465))))

(declare-fun lt!60056 () Unit!2798)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!14 (LexerInterface!439 List!3059 List!3060 Token!850) Unit!2798)

(assert (=> b!181902 (= lt!60056 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!14 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!181903 () Bool)

(declare-fun res!82514 () Bool)

(assert (=> b!181903 (=> (not res!82514) (not e!110913))))

(declare-fun isEmpty!1401 (List!3059) Bool)

(assert (=> b!181903 (= res!82514 (not (isEmpty!1401 rules!1920)))))

(declare-fun b!181904 () Bool)

(declare-fun res!82526 () Bool)

(assert (=> b!181904 (=> (not res!82526) (not e!110895))))

(declare-fun isEmpty!1402 (List!3058) Bool)

(assert (=> b!181904 (= res!82526 (isEmpty!1402 (_2!1737 lt!60070)))))

(declare-fun b!181905 () Bool)

(assert (=> b!181905 (= e!110902 e!110911)))

(declare-fun res!82530 () Bool)

(assert (=> b!181905 (=> (not res!82530) (not e!110911))))

(assert (=> b!181905 (= res!82530 (isDefined!235 lt!60062))))

(assert (=> b!181905 (= lt!60062 (maxPrefix!169 thiss!17480 rules!1920 lt!60074))))

(assert (= (and start!19666 res!82524) b!181903))

(assert (= (and b!181903 res!82514) b!181901))

(assert (= (and b!181901 res!82525) b!181873))

(assert (= (and b!181873 res!82527) b!181889))

(assert (= (and b!181889 res!82520) b!181888))

(assert (= (and b!181888 res!82521) b!181894))

(assert (= (and b!181894 res!82532) b!181877))

(assert (= (and b!181877 res!82522) b!181880))

(assert (= (and b!181880 res!82528) b!181884))

(assert (= (and b!181884 res!82512) b!181883))

(assert (= (and b!181883 res!82517) b!181886))

(assert (= (and b!181886 (not res!82518)) b!181890))

(assert (= (and b!181890 res!82516) b!181887))

(assert (= (and b!181890 (not res!82531)) b!181897))

(assert (= (and b!181897 (not res!82534)) b!181898))

(assert (= (and b!181898 (not res!82519)) b!181885))

(assert (= (and b!181885 (not res!82523)) b!181896))

(assert (= (and b!181896 (not res!82529)) b!181878))

(assert (= (and b!181878 res!82513) b!181904))

(assert (= (and b!181904 res!82526) b!181874))

(assert (= (and b!181878 (not res!82515)) b!181902))

(assert (= (and b!181902 (not res!82533)) b!181905))

(assert (= (and b!181905 res!82530) b!181891))

(assert (= b!181876 b!181899))

(assert (= b!181893 b!181876))

(assert (= (and start!19666 ((_ is Cons!3049) rules!1920)) b!181893))

(assert (= b!181879 b!181881))

(assert (= b!181895 b!181879))

(assert (= start!19666 b!181895))

(assert (= b!181882 b!181892))

(assert (= b!181875 b!181882))

(assert (= b!181900 b!181875))

(assert (= (and start!19666 ((_ is Cons!3050) tokens!465)) b!181900))

(declare-fun m!184617 () Bool)

(assert (=> b!181904 m!184617))

(declare-fun m!184619 () Bool)

(assert (=> start!19666 m!184619))

(declare-fun m!184621 () Bool)

(assert (=> b!181905 m!184621))

(declare-fun m!184623 () Bool)

(assert (=> b!181905 m!184623))

(declare-fun m!184625 () Bool)

(assert (=> b!181874 m!184625))

(declare-fun m!184627 () Bool)

(assert (=> b!181886 m!184627))

(declare-fun m!184629 () Bool)

(assert (=> b!181886 m!184629))

(declare-fun m!184631 () Bool)

(assert (=> b!181886 m!184631))

(declare-fun m!184633 () Bool)

(assert (=> b!181886 m!184633))

(declare-fun m!184635 () Bool)

(assert (=> b!181886 m!184635))

(declare-fun m!184637 () Bool)

(assert (=> b!181886 m!184637))

(assert (=> b!181886 m!184627))

(declare-fun m!184639 () Bool)

(assert (=> b!181886 m!184639))

(declare-fun m!184641 () Bool)

(assert (=> b!181886 m!184641))

(declare-fun m!184643 () Bool)

(assert (=> b!181886 m!184643))

(declare-fun m!184645 () Bool)

(assert (=> b!181886 m!184645))

(assert (=> b!181886 m!184645))

(declare-fun m!184647 () Bool)

(assert (=> b!181886 m!184647))

(assert (=> b!181886 m!184633))

(assert (=> b!181886 m!184643))

(declare-fun m!184649 () Bool)

(assert (=> b!181886 m!184649))

(assert (=> b!181886 m!184639))

(declare-fun m!184651 () Bool)

(assert (=> b!181886 m!184651))

(declare-fun m!184653 () Bool)

(assert (=> b!181895 m!184653))

(declare-fun m!184655 () Bool)

(assert (=> b!181894 m!184655))

(declare-fun m!184657 () Bool)

(assert (=> b!181897 m!184657))

(declare-fun m!184659 () Bool)

(assert (=> b!181897 m!184659))

(declare-fun m!184661 () Bool)

(assert (=> b!181897 m!184661))

(declare-fun m!184663 () Bool)

(assert (=> b!181897 m!184663))

(declare-fun m!184665 () Bool)

(assert (=> b!181897 m!184665))

(declare-fun m!184667 () Bool)

(assert (=> b!181885 m!184667))

(assert (=> b!181885 m!184667))

(declare-fun m!184669 () Bool)

(assert (=> b!181885 m!184669))

(declare-fun m!184671 () Bool)

(assert (=> b!181885 m!184671))

(declare-fun m!184673 () Bool)

(assert (=> b!181884 m!184673))

(assert (=> b!181884 m!184673))

(declare-fun m!184675 () Bool)

(assert (=> b!181884 m!184675))

(declare-fun m!184677 () Bool)

(assert (=> b!181884 m!184677))

(declare-fun m!184679 () Bool)

(assert (=> b!181876 m!184679))

(declare-fun m!184681 () Bool)

(assert (=> b!181876 m!184681))

(declare-fun m!184683 () Bool)

(assert (=> b!181883 m!184683))

(assert (=> b!181883 m!184683))

(declare-fun m!184685 () Bool)

(assert (=> b!181883 m!184685))

(declare-fun m!184687 () Bool)

(assert (=> b!181900 m!184687))

(assert (=> b!181902 m!184623))

(declare-fun m!184689 () Bool)

(assert (=> b!181902 m!184689))

(assert (=> b!181902 m!184623))

(declare-fun m!184691 () Bool)

(assert (=> b!181902 m!184691))

(declare-fun m!184693 () Bool)

(assert (=> b!181902 m!184693))

(declare-fun m!184695 () Bool)

(assert (=> b!181902 m!184695))

(declare-fun m!184697 () Bool)

(assert (=> b!181902 m!184697))

(declare-fun m!184699 () Bool)

(assert (=> b!181902 m!184699))

(declare-fun m!184701 () Bool)

(assert (=> b!181902 m!184701))

(declare-fun m!184703 () Bool)

(assert (=> b!181903 m!184703))

(declare-fun m!184705 () Bool)

(assert (=> b!181891 m!184705))

(declare-fun m!184707 () Bool)

(assert (=> b!181891 m!184707))

(declare-fun m!184709 () Bool)

(assert (=> b!181896 m!184709))

(assert (=> b!181896 m!184709))

(declare-fun m!184711 () Bool)

(assert (=> b!181896 m!184711))

(assert (=> b!181896 m!184711))

(declare-fun m!184713 () Bool)

(assert (=> b!181896 m!184713))

(declare-fun m!184715 () Bool)

(assert (=> b!181896 m!184715))

(declare-fun m!184717 () Bool)

(assert (=> b!181873 m!184717))

(declare-fun m!184719 () Bool)

(assert (=> b!181873 m!184719))

(declare-fun m!184721 () Bool)

(assert (=> b!181877 m!184721))

(declare-fun m!184723 () Bool)

(assert (=> b!181901 m!184723))

(declare-fun m!184725 () Bool)

(assert (=> b!181889 m!184725))

(declare-fun m!184727 () Bool)

(assert (=> b!181898 m!184727))

(declare-fun m!184729 () Bool)

(assert (=> b!181879 m!184729))

(declare-fun m!184731 () Bool)

(assert (=> b!181879 m!184731))

(declare-fun m!184733 () Bool)

(assert (=> b!181878 m!184733))

(declare-fun m!184735 () Bool)

(assert (=> b!181878 m!184735))

(declare-fun m!184737 () Bool)

(assert (=> b!181878 m!184737))

(declare-fun m!184739 () Bool)

(assert (=> b!181887 m!184739))

(declare-fun m!184741 () Bool)

(assert (=> b!181882 m!184741))

(declare-fun m!184743 () Bool)

(assert (=> b!181882 m!184743))

(declare-fun m!184745 () Bool)

(assert (=> b!181875 m!184745))

(check-sat b_and!12447 b_and!12455 (not b!181904) (not b_next!7089) b_and!12449 (not b!181877) (not b_next!7087) (not b!181905) (not b!181903) (not b!181886) (not b!181882) (not b!181889) (not b!181895) b_and!12453 (not b!181875) (not b_next!7081) (not start!19666) (not b!181876) (not b!181874) (not b!181894) (not b!181896) (not b!181885) (not b!181878) (not b!181900) (not b!181901) (not b_next!7083) (not b!181898) (not b!181879) (not b!181883) (not b!181914) (not b!181891) (not b!181902) (not b!181873) (not b_next!7091) (not b_next!7085) (not b!181887) (not b!181884) b_and!12445 (not b!181897) (not b!181893) b_and!12451)
(check-sat b_and!12453 (not b_next!7081) b_and!12447 b_and!12455 (not b_next!7089) b_and!12449 (not b_next!7087) (not b_next!7083) (not b_next!7091) (not b_next!7085) b_and!12445 b_and!12451)
(get-model)

(declare-fun d!46010 () Bool)

(assert (=> d!46010 (= (get!860 lt!60062) (v!13864 lt!60062))))

(assert (=> b!181891 d!46010))

(declare-fun d!46012 () Bool)

(assert (=> d!46012 (= (head!632 tokens!465) (h!8447 tokens!465))))

(assert (=> b!181891 d!46012))

(declare-fun d!46014 () Bool)

(declare-fun lt!60124 () Bool)

(declare-fun e!110971 () Bool)

(assert (=> d!46014 (= lt!60124 e!110971)))

(declare-fun res!82604 () Bool)

(assert (=> d!46014 (=> (not res!82604) (not e!110971))))

(declare-fun list!1122 (BalanceConc!1866) List!3060)

(assert (=> d!46014 (= res!82604 (= (list!1122 (_1!1738 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 separatorToken!170))))) (list!1122 (singletonSeq!105 separatorToken!170))))))

(declare-fun e!110970 () Bool)

(assert (=> d!46014 (= lt!60124 e!110970)))

(declare-fun res!82603 () Bool)

(assert (=> d!46014 (=> (not res!82603) (not e!110970))))

(declare-fun lt!60123 () tuple2!3044)

(declare-fun size!2486 (BalanceConc!1866) Int)

(assert (=> d!46014 (= res!82603 (= (size!2486 (_1!1738 lt!60123)) 1))))

(assert (=> d!46014 (= lt!60123 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 separatorToken!170))))))

(assert (=> d!46014 (not (isEmpty!1401 rules!1920))))

(assert (=> d!46014 (= (rulesProduceIndividualToken!188 thiss!17480 rules!1920 separatorToken!170) lt!60124)))

(declare-fun b!181991 () Bool)

(declare-fun res!82605 () Bool)

(assert (=> b!181991 (=> (not res!82605) (not e!110970))))

(declare-fun apply!456 (BalanceConc!1866 Int) Token!850)

(assert (=> b!181991 (= res!82605 (= (apply!456 (_1!1738 lt!60123) 0) separatorToken!170))))

(declare-fun b!181992 () Bool)

(declare-fun isEmpty!1406 (BalanceConc!1864) Bool)

(assert (=> b!181992 (= e!110970 (isEmpty!1406 (_2!1738 lt!60123)))))

(declare-fun b!181993 () Bool)

(assert (=> b!181993 (= e!110971 (isEmpty!1406 (_2!1738 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 separatorToken!170))))))))

(assert (= (and d!46014 res!82603) b!181991))

(assert (= (and b!181991 res!82605) b!181992))

(assert (= (and d!46014 res!82604) b!181993))

(declare-fun m!184835 () Bool)

(assert (=> d!46014 m!184835))

(declare-fun m!184837 () Bool)

(assert (=> d!46014 m!184837))

(assert (=> d!46014 m!184703))

(declare-fun m!184839 () Bool)

(assert (=> d!46014 m!184839))

(assert (=> d!46014 m!184835))

(assert (=> d!46014 m!184839))

(assert (=> d!46014 m!184839))

(declare-fun m!184841 () Bool)

(assert (=> d!46014 m!184841))

(declare-fun m!184843 () Bool)

(assert (=> d!46014 m!184843))

(declare-fun m!184845 () Bool)

(assert (=> d!46014 m!184845))

(declare-fun m!184847 () Bool)

(assert (=> b!181991 m!184847))

(declare-fun m!184849 () Bool)

(assert (=> b!181992 m!184849))

(assert (=> b!181993 m!184839))

(assert (=> b!181993 m!184839))

(assert (=> b!181993 m!184835))

(assert (=> b!181993 m!184835))

(assert (=> b!181993 m!184837))

(declare-fun m!184851 () Bool)

(assert (=> b!181993 m!184851))

(assert (=> b!181889 d!46014))

(declare-fun lt!60127 () Bool)

(declare-fun d!46030 () Bool)

(assert (=> d!46030 (= lt!60127 (isEmpty!1400 (list!1122 (_1!1738 (lex!239 thiss!17480 rules!1920 (seqFromList!484 lt!60060))))))))

(declare-fun isEmpty!1407 (Conc!929) Bool)

(assert (=> d!46030 (= lt!60127 (isEmpty!1407 (c!35475 (_1!1738 (lex!239 thiss!17480 rules!1920 (seqFromList!484 lt!60060))))))))

(assert (=> d!46030 (= (isEmpty!1399 (_1!1738 (lex!239 thiss!17480 rules!1920 (seqFromList!484 lt!60060)))) lt!60127)))

(declare-fun bs!18090 () Bool)

(assert (= bs!18090 d!46030))

(declare-fun m!184853 () Bool)

(assert (=> bs!18090 m!184853))

(assert (=> bs!18090 m!184853))

(declare-fun m!184855 () Bool)

(assert (=> bs!18090 m!184855))

(declare-fun m!184857 () Bool)

(assert (=> bs!18090 m!184857))

(assert (=> b!181885 d!46030))

(declare-fun b!182034 () Bool)

(declare-fun e!111000 () Bool)

(declare-fun lt!60172 () tuple2!3044)

(assert (=> b!182034 (= e!111000 (= (_2!1738 lt!60172) (seqFromList!484 lt!60060)))))

(declare-fun d!46032 () Bool)

(declare-fun e!110999 () Bool)

(assert (=> d!46032 e!110999))

(declare-fun res!82622 () Bool)

(assert (=> d!46032 (=> (not res!82622) (not e!110999))))

(assert (=> d!46032 (= res!82622 e!111000)))

(declare-fun c!35493 () Bool)

(assert (=> d!46032 (= c!35493 (> (size!2486 (_1!1738 lt!60172)) 0))))

(declare-fun lexTailRecV2!111 (LexerInterface!439 List!3059 BalanceConc!1864 BalanceConc!1864 BalanceConc!1864 BalanceConc!1866) tuple2!3044)

(assert (=> d!46032 (= lt!60172 (lexTailRecV2!111 thiss!17480 rules!1920 (seqFromList!484 lt!60060) (BalanceConc!1865 Empty!928) (seqFromList!484 lt!60060) (BalanceConc!1867 Empty!929)))))

(assert (=> d!46032 (= (lex!239 thiss!17480 rules!1920 (seqFromList!484 lt!60060)) lt!60172)))

(declare-fun b!182035 () Bool)

(declare-fun e!111001 () Bool)

(assert (=> b!182035 (= e!111001 (not (isEmpty!1399 (_1!1738 lt!60172))))))

(declare-fun b!182036 () Bool)

(declare-fun res!82621 () Bool)

(assert (=> b!182036 (=> (not res!82621) (not e!110999))))

(declare-datatypes ((tuple2!3048 0))(
  ( (tuple2!3049 (_1!1740 List!3060) (_2!1740 List!3058)) )
))
(declare-fun lexList!124 (LexerInterface!439 List!3059 List!3058) tuple2!3048)

(assert (=> b!182036 (= res!82621 (= (list!1122 (_1!1738 lt!60172)) (_1!1740 (lexList!124 thiss!17480 rules!1920 (list!1119 (seqFromList!484 lt!60060))))))))

(declare-fun b!182037 () Bool)

(assert (=> b!182037 (= e!110999 (= (list!1119 (_2!1738 lt!60172)) (_2!1740 (lexList!124 thiss!17480 rules!1920 (list!1119 (seqFromList!484 lt!60060))))))))

(declare-fun b!182038 () Bool)

(assert (=> b!182038 (= e!111000 e!111001)))

(declare-fun res!82623 () Bool)

(declare-fun size!2487 (BalanceConc!1864) Int)

(assert (=> b!182038 (= res!82623 (< (size!2487 (_2!1738 lt!60172)) (size!2487 (seqFromList!484 lt!60060))))))

(assert (=> b!182038 (=> (not res!82623) (not e!111001))))

(assert (= (and d!46032 c!35493) b!182038))

(assert (= (and d!46032 (not c!35493)) b!182034))

(assert (= (and b!182038 res!82623) b!182035))

(assert (= (and d!46032 res!82622) b!182036))

(assert (= (and b!182036 res!82621) b!182037))

(declare-fun m!184917 () Bool)

(assert (=> b!182035 m!184917))

(declare-fun m!184919 () Bool)

(assert (=> b!182037 m!184919))

(assert (=> b!182037 m!184667))

(declare-fun m!184921 () Bool)

(assert (=> b!182037 m!184921))

(assert (=> b!182037 m!184921))

(declare-fun m!184923 () Bool)

(assert (=> b!182037 m!184923))

(declare-fun m!184925 () Bool)

(assert (=> b!182038 m!184925))

(assert (=> b!182038 m!184667))

(declare-fun m!184927 () Bool)

(assert (=> b!182038 m!184927))

(declare-fun m!184929 () Bool)

(assert (=> b!182036 m!184929))

(assert (=> b!182036 m!184667))

(assert (=> b!182036 m!184921))

(assert (=> b!182036 m!184921))

(assert (=> b!182036 m!184923))

(declare-fun m!184931 () Bool)

(assert (=> d!46032 m!184931))

(assert (=> d!46032 m!184667))

(assert (=> d!46032 m!184667))

(declare-fun m!184933 () Bool)

(assert (=> d!46032 m!184933))

(assert (=> b!181885 d!46032))

(declare-fun d!46036 () Bool)

(declare-fun fromListB!188 (List!3058) BalanceConc!1864)

(assert (=> d!46036 (= (seqFromList!484 lt!60060) (fromListB!188 lt!60060))))

(declare-fun bs!18098 () Bool)

(assert (= bs!18098 d!46036))

(declare-fun m!184935 () Bool)

(assert (=> bs!18098 m!184935))

(assert (=> b!181885 d!46036))

(declare-fun d!46038 () Bool)

(declare-fun fromListB!189 (List!3060) BalanceConc!1866)

(assert (=> d!46038 (= (seqFromList!483 (t!28346 tokens!465)) (fromListB!189 (t!28346 tokens!465)))))

(declare-fun bs!18099 () Bool)

(assert (= bs!18099 d!46038))

(declare-fun m!184937 () Bool)

(assert (=> bs!18099 m!184937))

(assert (=> b!181886 d!46038))

(declare-fun d!46040 () Bool)

(declare-fun list!1123 (Conc!928) List!3058)

(assert (=> d!46040 (= (list!1119 (charsOf!208 separatorToken!170)) (list!1123 (c!35473 (charsOf!208 separatorToken!170))))))

(declare-fun bs!18100 () Bool)

(assert (= bs!18100 d!46040))

(declare-fun m!184939 () Bool)

(assert (=> bs!18100 m!184939))

(assert (=> b!181886 d!46040))

(declare-fun d!46042 () Bool)

(assert (=> d!46042 (= (list!1119 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 (seqFromList!483 (t!28346 tokens!465)) separatorToken!170 0)) (list!1123 (c!35473 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 (seqFromList!483 (t!28346 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18101 () Bool)

(assert (= bs!18101 d!46042))

(declare-fun m!184941 () Bool)

(assert (=> bs!18101 m!184941))

(assert (=> b!181886 d!46042))

(declare-fun bs!18109 () Bool)

(declare-fun b!182109 () Bool)

(assert (= bs!18109 (and b!182109 b!181894)))

(declare-fun lambda!5414 () Int)

(assert (=> bs!18109 (not (= lambda!5414 lambda!5393))))

(declare-fun bs!18110 () Bool)

(assert (= bs!18110 (and b!182109 b!181896)))

(assert (=> bs!18110 (= lambda!5414 lambda!5394)))

(declare-fun b!182118 () Bool)

(declare-fun e!111049 () Bool)

(assert (=> b!182118 (= e!111049 true)))

(declare-fun b!182117 () Bool)

(declare-fun e!111048 () Bool)

(assert (=> b!182117 (= e!111048 e!111049)))

(declare-fun b!182116 () Bool)

(declare-fun e!111047 () Bool)

(assert (=> b!182116 (= e!111047 e!111048)))

(assert (=> b!182109 e!111047))

(assert (= b!182117 b!182118))

(assert (= b!182116 b!182117))

(assert (= (and b!182109 ((_ is Cons!3049) rules!1920)) b!182116))

(assert (=> b!182118 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5414))))

(assert (=> b!182118 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5414))))

(assert (=> b!182109 true))

(declare-fun b!182108 () Bool)

(declare-fun e!111044 () List!3058)

(assert (=> b!182108 (= e!111044 Nil!3048)))

(assert (=> b!182108 (= (print!170 thiss!17480 (singletonSeq!105 (h!8447 (t!28346 tokens!465)))) (printTailRec!133 thiss!17480 (singletonSeq!105 (h!8447 (t!28346 tokens!465))) 0 (BalanceConc!1865 Empty!928)))))

(declare-fun lt!60219 () Unit!2798)

(declare-fun Unit!2804 () Unit!2798)

(assert (=> b!182108 (= lt!60219 Unit!2804)))

(declare-fun call!8269 () List!3058)

(declare-fun lt!60220 () Unit!2798)

(declare-fun lt!60216 () List!3058)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!48 (LexerInterface!439 List!3059 List!3058 List!3058) Unit!2798)

(assert (=> b!182108 (= lt!60220 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!48 thiss!17480 rules!1920 call!8269 lt!60216))))

(assert (=> b!182108 false))

(declare-fun lt!60217 () Unit!2798)

(declare-fun Unit!2805 () Unit!2798)

(assert (=> b!182108 (= lt!60217 Unit!2805)))

(declare-fun bm!8262 () Bool)

(declare-fun call!8271 () BalanceConc!1864)

(declare-fun call!8270 () BalanceConc!1864)

(assert (=> bm!8262 (= call!8271 call!8270)))

(declare-fun b!182110 () Bool)

(declare-fun call!8267 () List!3058)

(assert (=> b!182110 (= e!111044 (++!718 call!8267 lt!60216))))

(declare-fun bm!8263 () Bool)

(assert (=> bm!8263 (= call!8270 (charsOf!208 (h!8447 (t!28346 tokens!465))))))

(declare-fun b!182111 () Bool)

(declare-fun e!111045 () List!3058)

(assert (=> b!182111 (= e!111045 Nil!3048)))

(declare-fun b!182112 () Bool)

(declare-fun e!111043 () BalanceConc!1864)

(assert (=> b!182112 (= e!111043 (charsOf!208 separatorToken!170))))

(declare-fun bm!8264 () Bool)

(declare-fun call!8268 () List!3058)

(declare-fun c!35517 () Bool)

(assert (=> bm!8264 (= call!8267 (++!718 call!8268 (ite c!35517 lt!60216 call!8269)))))

(declare-fun b!182113 () Bool)

(assert (=> b!182113 (= e!111043 call!8271)))

(declare-fun bm!8265 () Bool)

(assert (=> bm!8265 (= call!8269 (list!1119 e!111043))))

(declare-fun c!35518 () Bool)

(declare-fun c!35519 () Bool)

(assert (=> bm!8265 (= c!35518 c!35519)))

(declare-fun b!182114 () Bool)

(declare-fun e!111046 () List!3058)

(assert (=> b!182114 (= e!111046 call!8267)))

(assert (=> b!182109 (= e!111045 e!111046)))

(declare-fun lt!60215 () Unit!2798)

(assert (=> b!182109 (= lt!60215 (forallContained!120 (t!28346 tokens!465) lambda!5414 (h!8447 (t!28346 tokens!465))))))

(assert (=> b!182109 (= lt!60216 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (t!28346 (t!28346 tokens!465)) separatorToken!170))))

(declare-fun lt!60218 () Option!384)

(assert (=> b!182109 (= lt!60218 (maxPrefix!169 thiss!17480 rules!1920 (++!718 (list!1119 (charsOf!208 (h!8447 (t!28346 tokens!465)))) lt!60216)))))

(assert (=> b!182109 (= c!35517 (and ((_ is Some!383) lt!60218) (= (_1!1737 (v!13864 lt!60218)) (h!8447 (t!28346 tokens!465)))))))

(declare-fun d!46044 () Bool)

(declare-fun c!35520 () Bool)

(assert (=> d!46044 (= c!35520 ((_ is Cons!3050) (t!28346 tokens!465)))))

(assert (=> d!46044 (= (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (t!28346 tokens!465) separatorToken!170) e!111045)))

(declare-fun bm!8266 () Bool)

(assert (=> bm!8266 (= call!8268 (list!1119 (ite c!35517 call!8270 call!8271)))))

(declare-fun b!182115 () Bool)

(assert (=> b!182115 (= c!35519 (and ((_ is Some!383) lt!60218) (not (= (_1!1737 (v!13864 lt!60218)) (h!8447 (t!28346 tokens!465))))))))

(assert (=> b!182115 (= e!111046 e!111044)))

(assert (= (and d!46044 c!35520) b!182109))

(assert (= (and d!46044 (not c!35520)) b!182111))

(assert (= (and b!182109 c!35517) b!182114))

(assert (= (and b!182109 (not c!35517)) b!182115))

(assert (= (and b!182115 c!35519) b!182110))

(assert (= (and b!182115 (not c!35519)) b!182108))

(assert (= (or b!182110 b!182108) bm!8262))

(assert (= (or b!182110 b!182108) bm!8265))

(assert (= (and bm!8265 c!35518) b!182112))

(assert (= (and bm!8265 (not c!35518)) b!182113))

(assert (= (or b!182114 bm!8262) bm!8263))

(assert (= (or b!182114 b!182110) bm!8266))

(assert (= (or b!182114 b!182110) bm!8264))

(declare-fun m!184989 () Bool)

(assert (=> b!182110 m!184989))

(declare-fun m!184991 () Bool)

(assert (=> bm!8263 m!184991))

(declare-fun m!184993 () Bool)

(assert (=> bm!8266 m!184993))

(assert (=> b!182112 m!184633))

(declare-fun m!184995 () Bool)

(assert (=> b!182108 m!184995))

(assert (=> b!182108 m!184995))

(declare-fun m!184997 () Bool)

(assert (=> b!182108 m!184997))

(assert (=> b!182108 m!184995))

(declare-fun m!184999 () Bool)

(assert (=> b!182108 m!184999))

(declare-fun m!185001 () Bool)

(assert (=> b!182108 m!185001))

(declare-fun m!185003 () Bool)

(assert (=> bm!8264 m!185003))

(assert (=> b!182109 m!184991))

(assert (=> b!182109 m!184991))

(declare-fun m!185005 () Bool)

(assert (=> b!182109 m!185005))

(declare-fun m!185007 () Bool)

(assert (=> b!182109 m!185007))

(declare-fun m!185009 () Bool)

(assert (=> b!182109 m!185009))

(declare-fun m!185011 () Bool)

(assert (=> b!182109 m!185011))

(declare-fun m!185013 () Bool)

(assert (=> b!182109 m!185013))

(assert (=> b!182109 m!185005))

(assert (=> b!182109 m!185011))

(declare-fun m!185015 () Bool)

(assert (=> bm!8265 m!185015))

(assert (=> b!181886 d!46044))

(declare-fun bs!18111 () Bool)

(declare-fun d!46058 () Bool)

(assert (= bs!18111 (and d!46058 b!181894)))

(declare-fun lambda!5419 () Int)

(assert (=> bs!18111 (= lambda!5419 lambda!5393)))

(declare-fun bs!18112 () Bool)

(assert (= bs!18112 (and d!46058 b!181896)))

(assert (=> bs!18112 (not (= lambda!5419 lambda!5394))))

(declare-fun bs!18113 () Bool)

(assert (= bs!18113 (and d!46058 b!182109)))

(assert (=> bs!18113 (not (= lambda!5419 lambda!5414))))

(declare-fun bs!18114 () Bool)

(declare-fun b!182160 () Bool)

(assert (= bs!18114 (and b!182160 b!181894)))

(declare-fun lambda!5420 () Int)

(assert (=> bs!18114 (not (= lambda!5420 lambda!5393))))

(declare-fun bs!18115 () Bool)

(assert (= bs!18115 (and b!182160 b!181896)))

(assert (=> bs!18115 (= lambda!5420 lambda!5394)))

(declare-fun bs!18116 () Bool)

(assert (= bs!18116 (and b!182160 b!182109)))

(assert (=> bs!18116 (= lambda!5420 lambda!5414)))

(declare-fun bs!18117 () Bool)

(assert (= bs!18117 (and b!182160 d!46058)))

(assert (=> bs!18117 (not (= lambda!5420 lambda!5419))))

(declare-fun b!182169 () Bool)

(declare-fun e!111082 () Bool)

(assert (=> b!182169 (= e!111082 true)))

(declare-fun b!182168 () Bool)

(declare-fun e!111081 () Bool)

(assert (=> b!182168 (= e!111081 e!111082)))

(declare-fun b!182167 () Bool)

(declare-fun e!111080 () Bool)

(assert (=> b!182167 (= e!111080 e!111081)))

(assert (=> b!182160 e!111080))

(assert (= b!182168 b!182169))

(assert (= b!182167 b!182168))

(assert (= (and b!182160 ((_ is Cons!3049) rules!1920)) b!182167))

(assert (=> b!182169 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5420))))

(assert (=> b!182169 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5420))))

(assert (=> b!182160 true))

(declare-fun bm!8278 () Bool)

(declare-fun call!8285 () Token!850)

(assert (=> bm!8278 (= call!8285 (apply!456 (seqFromList!483 (t!28346 tokens!465)) 0))))

(declare-fun b!182156 () Bool)

(declare-fun e!111075 () Bool)

(declare-fun lt!60261 () Option!385)

(assert (=> b!182156 (= e!111075 (= (_1!1739 (v!13865 lt!60261)) (apply!456 (seqFromList!483 (t!28346 tokens!465)) 0)))))

(declare-fun b!182157 () Bool)

(declare-fun e!111076 () BalanceConc!1864)

(declare-fun call!8287 () BalanceConc!1864)

(declare-fun lt!60259 () BalanceConc!1864)

(declare-fun ++!720 (BalanceConc!1864 BalanceConc!1864) BalanceConc!1864)

(assert (=> b!182157 (= e!111076 (++!720 call!8287 lt!60259))))

(declare-fun b!182158 () Bool)

(declare-fun e!111077 () Bool)

(assert (=> b!182158 (= e!111077 (<= 0 (size!2486 (seqFromList!483 (t!28346 tokens!465)))))))

(declare-fun b!182159 () Bool)

(declare-fun e!111073 () Bool)

(assert (=> b!182159 (= e!111073 (not (= (_1!1739 (v!13865 lt!60261)) call!8285)))))

(declare-fun e!111078 () BalanceConc!1864)

(declare-fun e!111074 () BalanceConc!1864)

(assert (=> b!182160 (= e!111078 e!111074)))

(declare-fun lt!60258 () List!3060)

(assert (=> b!182160 (= lt!60258 (list!1122 (seqFromList!483 (t!28346 tokens!465))))))

(declare-fun lt!60266 () Unit!2798)

(declare-fun lemmaDropApply!140 (List!3060 Int) Unit!2798)

(assert (=> b!182160 (= lt!60266 (lemmaDropApply!140 lt!60258 0))))

(declare-fun drop!153 (List!3060 Int) List!3060)

(declare-fun apply!457 (List!3060 Int) Token!850)

(assert (=> b!182160 (= (head!632 (drop!153 lt!60258 0)) (apply!457 lt!60258 0))))

(declare-fun lt!60269 () Unit!2798)

(assert (=> b!182160 (= lt!60269 lt!60266)))

(declare-fun lt!60264 () List!3060)

(assert (=> b!182160 (= lt!60264 (list!1122 (seqFromList!483 (t!28346 tokens!465))))))

(declare-fun lt!60257 () Unit!2798)

(declare-fun lemmaDropTail!132 (List!3060 Int) Unit!2798)

(assert (=> b!182160 (= lt!60257 (lemmaDropTail!132 lt!60264 0))))

(declare-fun tail!365 (List!3060) List!3060)

(assert (=> b!182160 (= (tail!365 (drop!153 lt!60264 0)) (drop!153 lt!60264 (+ 0 1)))))

(declare-fun lt!60260 () Unit!2798)

(assert (=> b!182160 (= lt!60260 lt!60257)))

(declare-fun lt!60268 () Unit!2798)

(assert (=> b!182160 (= lt!60268 (forallContained!120 (list!1122 (seqFromList!483 (t!28346 tokens!465))) lambda!5420 (apply!456 (seqFromList!483 (t!28346 tokens!465)) 0)))))

(assert (=> b!182160 (= lt!60259 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 (seqFromList!483 (t!28346 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!182160 (= lt!60261 (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (++!720 (charsOf!208 (apply!456 (seqFromList!483 (t!28346 tokens!465)) 0)) lt!60259)))))

(declare-fun res!82661 () Bool)

(assert (=> b!182160 (= res!82661 ((_ is Some!384) lt!60261))))

(assert (=> b!182160 (=> (not res!82661) (not e!111075))))

(declare-fun c!35531 () Bool)

(assert (=> b!182160 (= c!35531 e!111075)))

(declare-fun bm!8280 () Bool)

(declare-fun call!8284 () Token!850)

(assert (=> bm!8280 (= call!8284 call!8285)))

(declare-fun bm!8281 () Bool)

(declare-fun c!35532 () Bool)

(assert (=> bm!8281 (= c!35532 c!35531)))

(declare-fun e!111079 () BalanceConc!1864)

(declare-fun call!8286 () BalanceConc!1864)

(assert (=> bm!8281 (= call!8287 (++!720 e!111079 (ite c!35531 lt!60259 call!8286)))))

(declare-fun b!182161 () Bool)

(declare-fun c!35533 () Bool)

(assert (=> b!182161 (= c!35533 e!111073)))

(declare-fun res!82662 () Bool)

(assert (=> b!182161 (=> (not res!82662) (not e!111073))))

(assert (=> b!182161 (= res!82662 ((_ is Some!384) lt!60261))))

(assert (=> b!182161 (= e!111074 e!111076)))

(declare-fun bm!8282 () Bool)

(declare-fun call!8283 () BalanceConc!1864)

(assert (=> bm!8282 (= call!8283 (charsOf!208 (ite c!35531 call!8285 (ite c!35533 separatorToken!170 call!8284))))))

(declare-fun b!182162 () Bool)

(assert (=> b!182162 (= e!111079 (charsOf!208 call!8284))))

(declare-fun b!182163 () Bool)

(assert (=> b!182163 (= e!111076 (BalanceConc!1865 Empty!928))))

(assert (=> b!182163 (= (print!170 thiss!17480 (singletonSeq!105 call!8284)) (printTailRec!133 thiss!17480 (singletonSeq!105 call!8284) 0 (BalanceConc!1865 Empty!928)))))

(declare-fun lt!60262 () Unit!2798)

(declare-fun Unit!2806 () Unit!2798)

(assert (=> b!182163 (= lt!60262 Unit!2806)))

(declare-fun lt!60265 () Unit!2798)

(assert (=> b!182163 (= lt!60265 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!48 thiss!17480 rules!1920 (list!1119 call!8286) (list!1119 lt!60259)))))

(assert (=> b!182163 false))

(declare-fun lt!60263 () Unit!2798)

(declare-fun Unit!2807 () Unit!2798)

(assert (=> b!182163 (= lt!60263 Unit!2807)))

(declare-fun b!182164 () Bool)

(assert (=> b!182164 (= e!111074 call!8287)))

(declare-fun bm!8279 () Bool)

(assert (=> bm!8279 (= call!8286 call!8283)))

(declare-fun lt!60270 () BalanceConc!1864)

(declare-fun dropList!100 (BalanceConc!1866 Int) List!3060)

(assert (=> d!46058 (= (list!1119 lt!60270) (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (dropList!100 (seqFromList!483 (t!28346 tokens!465)) 0) separatorToken!170))))

(assert (=> d!46058 (= lt!60270 e!111078)))

(declare-fun c!35530 () Bool)

(assert (=> d!46058 (= c!35530 (>= 0 (size!2486 (seqFromList!483 (t!28346 tokens!465)))))))

(declare-fun lt!60267 () Unit!2798)

(declare-fun lemmaContentSubsetPreservesForall!44 (List!3060 List!3060 Int) Unit!2798)

(assert (=> d!46058 (= lt!60267 (lemmaContentSubsetPreservesForall!44 (list!1122 (seqFromList!483 (t!28346 tokens!465))) (dropList!100 (seqFromList!483 (t!28346 tokens!465)) 0) lambda!5419))))

(assert (=> d!46058 e!111077))

(declare-fun res!82663 () Bool)

(assert (=> d!46058 (=> (not res!82663) (not e!111077))))

(assert (=> d!46058 (= res!82663 (>= 0 0))))

(assert (=> d!46058 (= (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 (seqFromList!483 (t!28346 tokens!465)) separatorToken!170 0) lt!60270)))

(declare-fun b!182165 () Bool)

(assert (=> b!182165 (= e!111078 (BalanceConc!1865 Empty!928))))

(declare-fun b!182166 () Bool)

(assert (=> b!182166 (= e!111079 call!8283)))

(assert (= (and d!46058 res!82663) b!182158))

(assert (= (and d!46058 c!35530) b!182165))

(assert (= (and d!46058 (not c!35530)) b!182160))

(assert (= (and b!182160 res!82661) b!182156))

(assert (= (and b!182160 c!35531) b!182164))

(assert (= (and b!182160 (not c!35531)) b!182161))

(assert (= (and b!182161 res!82662) b!182159))

(assert (= (and b!182161 c!35533) b!182157))

(assert (= (and b!182161 (not c!35533)) b!182163))

(assert (= (or b!182157 b!182163) bm!8280))

(assert (= (or b!182157 b!182163) bm!8279))

(assert (= (or b!182164 b!182159 bm!8280) bm!8278))

(assert (= (or b!182164 bm!8279) bm!8282))

(assert (= (or b!182164 b!182157) bm!8281))

(assert (= (and bm!8281 c!35532) b!182166))

(assert (= (and bm!8281 (not c!35532)) b!182162))

(declare-fun m!185057 () Bool)

(assert (=> b!182157 m!185057))

(declare-fun m!185059 () Bool)

(assert (=> bm!8281 m!185059))

(assert (=> d!46058 m!184627))

(declare-fun m!185061 () Bool)

(assert (=> d!46058 m!185061))

(assert (=> d!46058 m!184627))

(declare-fun m!185063 () Bool)

(assert (=> d!46058 m!185063))

(declare-fun m!185065 () Bool)

(assert (=> d!46058 m!185065))

(assert (=> d!46058 m!184627))

(declare-fun m!185067 () Bool)

(assert (=> d!46058 m!185067))

(assert (=> d!46058 m!185061))

(assert (=> d!46058 m!185063))

(declare-fun m!185069 () Bool)

(assert (=> d!46058 m!185069))

(assert (=> d!46058 m!185063))

(declare-fun m!185071 () Bool)

(assert (=> d!46058 m!185071))

(assert (=> b!182160 m!184627))

(declare-fun m!185073 () Bool)

(assert (=> b!182160 m!185073))

(assert (=> b!182160 m!184627))

(declare-fun m!185075 () Bool)

(assert (=> b!182160 m!185075))

(declare-fun m!185077 () Bool)

(assert (=> b!182160 m!185077))

(assert (=> b!182160 m!185061))

(assert (=> b!182160 m!185073))

(declare-fun m!185079 () Bool)

(assert (=> b!182160 m!185079))

(declare-fun m!185081 () Bool)

(assert (=> b!182160 m!185081))

(declare-fun m!185083 () Bool)

(assert (=> b!182160 m!185083))

(assert (=> b!182160 m!184627))

(assert (=> b!182160 m!185061))

(assert (=> b!182160 m!185073))

(declare-fun m!185085 () Bool)

(assert (=> b!182160 m!185085))

(declare-fun m!185087 () Bool)

(assert (=> b!182160 m!185087))

(declare-fun m!185089 () Bool)

(assert (=> b!182160 m!185089))

(declare-fun m!185091 () Bool)

(assert (=> b!182160 m!185091))

(declare-fun m!185093 () Bool)

(assert (=> b!182160 m!185093))

(declare-fun m!185095 () Bool)

(assert (=> b!182160 m!185095))

(assert (=> b!182160 m!185085))

(assert (=> b!182160 m!185081))

(assert (=> b!182160 m!185093))

(assert (=> b!182160 m!185087))

(declare-fun m!185097 () Bool)

(assert (=> b!182160 m!185097))

(declare-fun m!185099 () Bool)

(assert (=> b!182160 m!185099))

(declare-fun m!185101 () Bool)

(assert (=> b!182163 m!185101))

(declare-fun m!185103 () Bool)

(assert (=> b!182163 m!185103))

(declare-fun m!185105 () Bool)

(assert (=> b!182163 m!185105))

(assert (=> b!182163 m!185101))

(declare-fun m!185107 () Bool)

(assert (=> b!182163 m!185107))

(assert (=> b!182163 m!185101))

(declare-fun m!185109 () Bool)

(assert (=> b!182163 m!185109))

(assert (=> b!182163 m!185107))

(assert (=> b!182163 m!185105))

(declare-fun m!185111 () Bool)

(assert (=> b!182163 m!185111))

(declare-fun m!185113 () Bool)

(assert (=> bm!8282 m!185113))

(declare-fun m!185115 () Bool)

(assert (=> b!182162 m!185115))

(assert (=> bm!8278 m!184627))

(assert (=> bm!8278 m!185073))

(assert (=> b!182156 m!184627))

(assert (=> b!182156 m!185073))

(assert (=> b!182158 m!184627))

(assert (=> b!182158 m!185067))

(assert (=> b!181886 d!46058))

(declare-fun d!46066 () Bool)

(declare-fun lt!60273 () BalanceConc!1864)

(assert (=> d!46066 (= (list!1119 lt!60273) (originalCharacters!596 separatorToken!170))))

(declare-fun dynLambda!1234 (Int TokenValue!575) BalanceConc!1864)

(assert (=> d!46066 (= lt!60273 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (value!20076 separatorToken!170)))))

(assert (=> d!46066 (= (charsOf!208 separatorToken!170) lt!60273)))

(declare-fun b_lambda!4363 () Bool)

(assert (=> (not b_lambda!4363) (not d!46066)))

(declare-fun t!28365 () Bool)

(declare-fun tb!7577 () Bool)

(assert (=> (and b!181899 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170)))) t!28365) tb!7577))

(declare-fun b!182174 () Bool)

(declare-fun e!111085 () Bool)

(declare-fun tp!86624 () Bool)

(declare-fun inv!3884 (Conc!928) Bool)

(assert (=> b!182174 (= e!111085 (and (inv!3884 (c!35473 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (value!20076 separatorToken!170)))) tp!86624))))

(declare-fun result!10396 () Bool)

(declare-fun inv!3885 (BalanceConc!1864) Bool)

(assert (=> tb!7577 (= result!10396 (and (inv!3885 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (value!20076 separatorToken!170))) e!111085))))

(assert (= tb!7577 b!182174))

(declare-fun m!185117 () Bool)

(assert (=> b!182174 m!185117))

(declare-fun m!185119 () Bool)

(assert (=> tb!7577 m!185119))

(assert (=> d!46066 t!28365))

(declare-fun b_and!12457 () Bool)

(assert (= b_and!12447 (and (=> t!28365 result!10396) b_and!12457)))

(declare-fun t!28367 () Bool)

(declare-fun tb!7579 () Bool)

(assert (=> (and b!181881 (= (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170)))) t!28367) tb!7579))

(declare-fun result!10400 () Bool)

(assert (= result!10400 result!10396))

(assert (=> d!46066 t!28367))

(declare-fun b_and!12459 () Bool)

(assert (= b_and!12451 (and (=> t!28367 result!10400) b_and!12459)))

(declare-fun tb!7581 () Bool)

(declare-fun t!28369 () Bool)

(assert (=> (and b!181892 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170)))) t!28369) tb!7581))

(declare-fun result!10402 () Bool)

(assert (= result!10402 result!10396))

(assert (=> d!46066 t!28369))

(declare-fun b_and!12461 () Bool)

(assert (= b_and!12455 (and (=> t!28369 result!10402) b_and!12461)))

(declare-fun m!185121 () Bool)

(assert (=> d!46066 m!185121))

(declare-fun m!185123 () Bool)

(assert (=> d!46066 m!185123))

(assert (=> b!181886 d!46066))

(declare-fun b!182185 () Bool)

(declare-fun res!82668 () Bool)

(declare-fun e!111091 () Bool)

(assert (=> b!182185 (=> (not res!82668) (not e!111091))))

(declare-fun lt!60276 () List!3058)

(declare-fun size!2488 (List!3058) Int)

(assert (=> b!182185 (= res!82668 (= (size!2488 lt!60276) (+ (size!2488 lt!60060) (size!2488 lt!60065))))))

(declare-fun b!182184 () Bool)

(declare-fun e!111090 () List!3058)

(assert (=> b!182184 (= e!111090 (Cons!3048 (h!8445 lt!60060) (++!718 (t!28344 lt!60060) lt!60065)))))

(declare-fun d!46068 () Bool)

(assert (=> d!46068 e!111091))

(declare-fun res!82669 () Bool)

(assert (=> d!46068 (=> (not res!82669) (not e!111091))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!419 (List!3058) (InoxSet C!2476))

(assert (=> d!46068 (= res!82669 (= (content!419 lt!60276) ((_ map or) (content!419 lt!60060) (content!419 lt!60065))))))

(assert (=> d!46068 (= lt!60276 e!111090)))

(declare-fun c!35536 () Bool)

(assert (=> d!46068 (= c!35536 ((_ is Nil!3048) lt!60060))))

(assert (=> d!46068 (= (++!718 lt!60060 lt!60065) lt!60276)))

(declare-fun b!182186 () Bool)

(assert (=> b!182186 (= e!111091 (or (not (= lt!60065 Nil!3048)) (= lt!60276 lt!60060)))))

(declare-fun b!182183 () Bool)

(assert (=> b!182183 (= e!111090 lt!60065)))

(assert (= (and d!46068 c!35536) b!182183))

(assert (= (and d!46068 (not c!35536)) b!182184))

(assert (= (and d!46068 res!82669) b!182185))

(assert (= (and b!182185 res!82668) b!182186))

(declare-fun m!185125 () Bool)

(assert (=> b!182185 m!185125))

(declare-fun m!185127 () Bool)

(assert (=> b!182185 m!185127))

(declare-fun m!185129 () Bool)

(assert (=> b!182185 m!185129))

(declare-fun m!185131 () Bool)

(assert (=> b!182184 m!185131))

(declare-fun m!185133 () Bool)

(assert (=> d!46068 m!185133))

(declare-fun m!185135 () Bool)

(assert (=> d!46068 m!185135))

(declare-fun m!185137 () Bool)

(assert (=> d!46068 m!185137))

(assert (=> b!181886 d!46068))

(declare-fun b!182189 () Bool)

(declare-fun res!82670 () Bool)

(declare-fun e!111093 () Bool)

(assert (=> b!182189 (=> (not res!82670) (not e!111093))))

(declare-fun lt!60277 () List!3058)

(assert (=> b!182189 (= res!82670 (= (size!2488 lt!60277) (+ (size!2488 (++!718 lt!60060 lt!60066)) (size!2488 lt!60067))))))

(declare-fun e!111092 () List!3058)

(declare-fun b!182188 () Bool)

(assert (=> b!182188 (= e!111092 (Cons!3048 (h!8445 (++!718 lt!60060 lt!60066)) (++!718 (t!28344 (++!718 lt!60060 lt!60066)) lt!60067)))))

(declare-fun d!46070 () Bool)

(assert (=> d!46070 e!111093))

(declare-fun res!82671 () Bool)

(assert (=> d!46070 (=> (not res!82671) (not e!111093))))

(assert (=> d!46070 (= res!82671 (= (content!419 lt!60277) ((_ map or) (content!419 (++!718 lt!60060 lt!60066)) (content!419 lt!60067))))))

(assert (=> d!46070 (= lt!60277 e!111092)))

(declare-fun c!35537 () Bool)

(assert (=> d!46070 (= c!35537 ((_ is Nil!3048) (++!718 lt!60060 lt!60066)))))

(assert (=> d!46070 (= (++!718 (++!718 lt!60060 lt!60066) lt!60067) lt!60277)))

(declare-fun b!182190 () Bool)

(assert (=> b!182190 (= e!111093 (or (not (= lt!60067 Nil!3048)) (= lt!60277 (++!718 lt!60060 lt!60066))))))

(declare-fun b!182187 () Bool)

(assert (=> b!182187 (= e!111092 lt!60067)))

(assert (= (and d!46070 c!35537) b!182187))

(assert (= (and d!46070 (not c!35537)) b!182188))

(assert (= (and d!46070 res!82671) b!182189))

(assert (= (and b!182189 res!82670) b!182190))

(declare-fun m!185139 () Bool)

(assert (=> b!182189 m!185139))

(assert (=> b!182189 m!184645))

(declare-fun m!185141 () Bool)

(assert (=> b!182189 m!185141))

(declare-fun m!185143 () Bool)

(assert (=> b!182189 m!185143))

(declare-fun m!185145 () Bool)

(assert (=> b!182188 m!185145))

(declare-fun m!185147 () Bool)

(assert (=> d!46070 m!185147))

(assert (=> d!46070 m!184645))

(declare-fun m!185149 () Bool)

(assert (=> d!46070 m!185149))

(declare-fun m!185151 () Bool)

(assert (=> d!46070 m!185151))

(assert (=> b!181886 d!46070))

(declare-fun b!182193 () Bool)

(declare-fun res!82672 () Bool)

(declare-fun e!111095 () Bool)

(assert (=> b!182193 (=> (not res!82672) (not e!111095))))

(declare-fun lt!60278 () List!3058)

(assert (=> b!182193 (= res!82672 (= (size!2488 lt!60278) (+ (size!2488 lt!60066) (size!2488 lt!60067))))))

(declare-fun b!182192 () Bool)

(declare-fun e!111094 () List!3058)

(assert (=> b!182192 (= e!111094 (Cons!3048 (h!8445 lt!60066) (++!718 (t!28344 lt!60066) lt!60067)))))

(declare-fun d!46072 () Bool)

(assert (=> d!46072 e!111095))

(declare-fun res!82673 () Bool)

(assert (=> d!46072 (=> (not res!82673) (not e!111095))))

(assert (=> d!46072 (= res!82673 (= (content!419 lt!60278) ((_ map or) (content!419 lt!60066) (content!419 lt!60067))))))

(assert (=> d!46072 (= lt!60278 e!111094)))

(declare-fun c!35538 () Bool)

(assert (=> d!46072 (= c!35538 ((_ is Nil!3048) lt!60066))))

(assert (=> d!46072 (= (++!718 lt!60066 lt!60067) lt!60278)))

(declare-fun b!182194 () Bool)

(assert (=> b!182194 (= e!111095 (or (not (= lt!60067 Nil!3048)) (= lt!60278 lt!60066)))))

(declare-fun b!182191 () Bool)

(assert (=> b!182191 (= e!111094 lt!60067)))

(assert (= (and d!46072 c!35538) b!182191))

(assert (= (and d!46072 (not c!35538)) b!182192))

(assert (= (and d!46072 res!82673) b!182193))

(assert (= (and b!182193 res!82672) b!182194))

(declare-fun m!185153 () Bool)

(assert (=> b!182193 m!185153))

(declare-fun m!185155 () Bool)

(assert (=> b!182193 m!185155))

(assert (=> b!182193 m!185143))

(declare-fun m!185157 () Bool)

(assert (=> b!182192 m!185157))

(declare-fun m!185159 () Bool)

(assert (=> d!46072 m!185159))

(declare-fun m!185161 () Bool)

(assert (=> d!46072 m!185161))

(assert (=> d!46072 m!185151))

(assert (=> b!181886 d!46072))

(declare-fun d!46074 () Bool)

(assert (=> d!46074 (= (++!718 (++!718 lt!60060 lt!60066) lt!60067) (++!718 lt!60060 (++!718 lt!60066 lt!60067)))))

(declare-fun lt!60281 () Unit!2798)

(declare-fun choose!1883 (List!3058 List!3058 List!3058) Unit!2798)

(assert (=> d!46074 (= lt!60281 (choose!1883 lt!60060 lt!60066 lt!60067))))

(assert (=> d!46074 (= (lemmaConcatAssociativity!242 lt!60060 lt!60066 lt!60067) lt!60281)))

(declare-fun bs!18118 () Bool)

(assert (= bs!18118 d!46074))

(assert (=> bs!18118 m!184631))

(declare-fun m!185163 () Bool)

(assert (=> bs!18118 m!185163))

(declare-fun m!185165 () Bool)

(assert (=> bs!18118 m!185165))

(assert (=> bs!18118 m!184631))

(assert (=> bs!18118 m!184645))

(assert (=> bs!18118 m!184647))

(assert (=> bs!18118 m!184645))

(assert (=> b!181886 d!46074))

(declare-fun d!46076 () Bool)

(assert (=> d!46076 (= (list!1119 (charsOf!208 (h!8447 tokens!465))) (list!1123 (c!35473 (charsOf!208 (h!8447 tokens!465)))))))

(declare-fun bs!18119 () Bool)

(assert (= bs!18119 d!46076))

(declare-fun m!185167 () Bool)

(assert (=> bs!18119 m!185167))

(assert (=> b!181886 d!46076))

(declare-fun d!46078 () Bool)

(declare-fun lt!60282 () BalanceConc!1864)

(assert (=> d!46078 (= (list!1119 lt!60282) (originalCharacters!596 (h!8447 tokens!465)))))

(assert (=> d!46078 (= lt!60282 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (value!20076 (h!8447 tokens!465))))))

(assert (=> d!46078 (= (charsOf!208 (h!8447 tokens!465)) lt!60282)))

(declare-fun b_lambda!4365 () Bool)

(assert (=> (not b_lambda!4365) (not d!46078)))

(declare-fun tb!7583 () Bool)

(declare-fun t!28371 () Bool)

(assert (=> (and b!181899 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465))))) t!28371) tb!7583))

(declare-fun b!182195 () Bool)

(declare-fun e!111096 () Bool)

(declare-fun tp!86625 () Bool)

(assert (=> b!182195 (= e!111096 (and (inv!3884 (c!35473 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (value!20076 (h!8447 tokens!465))))) tp!86625))))

(declare-fun result!10404 () Bool)

(assert (=> tb!7583 (= result!10404 (and (inv!3885 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (value!20076 (h!8447 tokens!465)))) e!111096))))

(assert (= tb!7583 b!182195))

(declare-fun m!185169 () Bool)

(assert (=> b!182195 m!185169))

(declare-fun m!185171 () Bool)

(assert (=> tb!7583 m!185171))

(assert (=> d!46078 t!28371))

(declare-fun b_and!12463 () Bool)

(assert (= b_and!12457 (and (=> t!28371 result!10404) b_and!12463)))

(declare-fun t!28373 () Bool)

(declare-fun tb!7585 () Bool)

(assert (=> (and b!181881 (= (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465))))) t!28373) tb!7585))

(declare-fun result!10406 () Bool)

(assert (= result!10406 result!10404))

(assert (=> d!46078 t!28373))

(declare-fun b_and!12465 () Bool)

(assert (= b_and!12459 (and (=> t!28373 result!10406) b_and!12465)))

(declare-fun t!28375 () Bool)

(declare-fun tb!7587 () Bool)

(assert (=> (and b!181892 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465))))) t!28375) tb!7587))

(declare-fun result!10408 () Bool)

(assert (= result!10408 result!10404))

(assert (=> d!46078 t!28375))

(declare-fun b_and!12467 () Bool)

(assert (= b_and!12461 (and (=> t!28375 result!10408) b_and!12467)))

(declare-fun m!185173 () Bool)

(assert (=> d!46078 m!185173))

(declare-fun m!185175 () Bool)

(assert (=> d!46078 m!185175))

(assert (=> b!181886 d!46078))

(declare-fun b!182198 () Bool)

(declare-fun res!82674 () Bool)

(declare-fun e!111098 () Bool)

(assert (=> b!182198 (=> (not res!82674) (not e!111098))))

(declare-fun lt!60283 () List!3058)

(assert (=> b!182198 (= res!82674 (= (size!2488 lt!60283) (+ (size!2488 lt!60060) (size!2488 lt!60066))))))

(declare-fun b!182197 () Bool)

(declare-fun e!111097 () List!3058)

(assert (=> b!182197 (= e!111097 (Cons!3048 (h!8445 lt!60060) (++!718 (t!28344 lt!60060) lt!60066)))))

(declare-fun d!46080 () Bool)

(assert (=> d!46080 e!111098))

(declare-fun res!82675 () Bool)

(assert (=> d!46080 (=> (not res!82675) (not e!111098))))

(assert (=> d!46080 (= res!82675 (= (content!419 lt!60283) ((_ map or) (content!419 lt!60060) (content!419 lt!60066))))))

(assert (=> d!46080 (= lt!60283 e!111097)))

(declare-fun c!35539 () Bool)

(assert (=> d!46080 (= c!35539 ((_ is Nil!3048) lt!60060))))

(assert (=> d!46080 (= (++!718 lt!60060 lt!60066) lt!60283)))

(declare-fun b!182199 () Bool)

(assert (=> b!182199 (= e!111098 (or (not (= lt!60066 Nil!3048)) (= lt!60283 lt!60060)))))

(declare-fun b!182196 () Bool)

(assert (=> b!182196 (= e!111097 lt!60066)))

(assert (= (and d!46080 c!35539) b!182196))

(assert (= (and d!46080 (not c!35539)) b!182197))

(assert (= (and d!46080 res!82675) b!182198))

(assert (= (and b!182198 res!82674) b!182199))

(declare-fun m!185177 () Bool)

(assert (=> b!182198 m!185177))

(assert (=> b!182198 m!185127))

(assert (=> b!182198 m!185155))

(declare-fun m!185179 () Bool)

(assert (=> b!182197 m!185179))

(declare-fun m!185181 () Bool)

(assert (=> d!46080 m!185181))

(assert (=> d!46080 m!185135))

(assert (=> d!46080 m!185161))

(assert (=> b!181886 d!46080))

(declare-fun b!182202 () Bool)

(declare-fun res!82676 () Bool)

(declare-fun e!111100 () Bool)

(assert (=> b!182202 (=> (not res!82676) (not e!111100))))

(declare-fun lt!60284 () List!3058)

(assert (=> b!182202 (= res!82676 (= (size!2488 lt!60284) (+ (size!2488 lt!60060) (size!2488 lt!60067))))))

(declare-fun b!182201 () Bool)

(declare-fun e!111099 () List!3058)

(assert (=> b!182201 (= e!111099 (Cons!3048 (h!8445 lt!60060) (++!718 (t!28344 lt!60060) lt!60067)))))

(declare-fun d!46082 () Bool)

(assert (=> d!46082 e!111100))

(declare-fun res!82677 () Bool)

(assert (=> d!46082 (=> (not res!82677) (not e!111100))))

(assert (=> d!46082 (= res!82677 (= (content!419 lt!60284) ((_ map or) (content!419 lt!60060) (content!419 lt!60067))))))

(assert (=> d!46082 (= lt!60284 e!111099)))

(declare-fun c!35540 () Bool)

(assert (=> d!46082 (= c!35540 ((_ is Nil!3048) lt!60060))))

(assert (=> d!46082 (= (++!718 lt!60060 lt!60067) lt!60284)))

(declare-fun b!182203 () Bool)

(assert (=> b!182203 (= e!111100 (or (not (= lt!60067 Nil!3048)) (= lt!60284 lt!60060)))))

(declare-fun b!182200 () Bool)

(assert (=> b!182200 (= e!111099 lt!60067)))

(assert (= (and d!46082 c!35540) b!182200))

(assert (= (and d!46082 (not c!35540)) b!182201))

(assert (= (and d!46082 res!82677) b!182202))

(assert (= (and b!182202 res!82676) b!182203))

(declare-fun m!185183 () Bool)

(assert (=> b!182202 m!185183))

(assert (=> b!182202 m!185127))

(assert (=> b!182202 m!185143))

(declare-fun m!185185 () Bool)

(assert (=> b!182201 m!185185))

(declare-fun m!185187 () Bool)

(assert (=> d!46082 m!185187))

(assert (=> d!46082 m!185135))

(assert (=> d!46082 m!185151))

(assert (=> b!181887 d!46082))

(declare-fun d!46084 () Bool)

(assert (=> d!46084 (= (inv!3877 (tag!731 (rule!1068 (h!8447 tokens!465)))) (= (mod (str.len (value!20075 (tag!731 (rule!1068 (h!8447 tokens!465))))) 2) 0))))

(assert (=> b!181882 d!46084))

(declare-fun d!46086 () Bool)

(declare-fun res!82680 () Bool)

(declare-fun e!111103 () Bool)

(assert (=> d!46086 (=> (not res!82680) (not e!111103))))

(declare-fun semiInverseModEq!191 (Int Int) Bool)

(assert (=> d!46086 (= res!82680 (semiInverseModEq!191 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toValue!1224 (transformation!553 (rule!1068 (h!8447 tokens!465))))))))

(assert (=> d!46086 (= (inv!3880 (transformation!553 (rule!1068 (h!8447 tokens!465)))) e!111103)))

(declare-fun b!182206 () Bool)

(declare-fun equivClasses!174 (Int Int) Bool)

(assert (=> b!182206 (= e!111103 (equivClasses!174 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toValue!1224 (transformation!553 (rule!1068 (h!8447 tokens!465))))))))

(assert (= (and d!46086 res!82680) b!182206))

(declare-fun m!185189 () Bool)

(assert (=> d!46086 m!185189))

(declare-fun m!185191 () Bool)

(assert (=> b!182206 m!185191))

(assert (=> b!181882 d!46086))

(declare-fun d!46088 () Bool)

(assert (=> d!46088 (= (isEmpty!1402 (_2!1737 lt!60070)) ((_ is Nil!3048) (_2!1737 lt!60070)))))

(assert (=> b!181904 d!46088))

(declare-fun d!46090 () Bool)

(assert (=> d!46090 (= (list!1119 (seqFromList!484 lt!60074)) (list!1123 (c!35473 (seqFromList!484 lt!60074))))))

(declare-fun bs!18120 () Bool)

(assert (= bs!18120 d!46090))

(declare-fun m!185193 () Bool)

(assert (=> bs!18120 m!185193))

(assert (=> b!181883 d!46090))

(declare-fun d!46092 () Bool)

(assert (=> d!46092 (= (seqFromList!484 lt!60074) (fromListB!188 lt!60074))))

(declare-fun bs!18121 () Bool)

(assert (= bs!18121 d!46092))

(declare-fun m!185195 () Bool)

(assert (=> bs!18121 m!185195))

(assert (=> b!181883 d!46092))

(declare-fun d!46094 () Bool)

(declare-fun isEmpty!1408 (Option!384) Bool)

(assert (=> d!46094 (= (isDefined!235 lt!60062) (not (isEmpty!1408 lt!60062)))))

(declare-fun bs!18122 () Bool)

(assert (= bs!18122 d!46094))

(declare-fun m!185197 () Bool)

(assert (=> bs!18122 m!185197))

(assert (=> b!181905 d!46094))

(declare-fun b!182237 () Bool)

(declare-fun res!82709 () Bool)

(declare-fun e!111118 () Bool)

(assert (=> b!182237 (=> (not res!82709) (not e!111118))))

(declare-fun lt!60303 () Option!384)

(assert (=> b!182237 (= res!82709 (< (size!2488 (_2!1737 (get!860 lt!60303))) (size!2488 lt!60074)))))

(declare-fun b!182238 () Bool)

(declare-fun e!111120 () Option!384)

(declare-fun lt!60307 () Option!384)

(declare-fun lt!60305 () Option!384)

(assert (=> b!182238 (= e!111120 (ite (and ((_ is None!383) lt!60307) ((_ is None!383) lt!60305)) None!383 (ite ((_ is None!383) lt!60305) lt!60307 (ite ((_ is None!383) lt!60307) lt!60305 (ite (>= (size!2483 (_1!1737 (v!13864 lt!60307))) (size!2483 (_1!1737 (v!13864 lt!60305)))) lt!60307 lt!60305)))))))

(declare-fun call!8290 () Option!384)

(assert (=> b!182238 (= lt!60307 call!8290)))

(assert (=> b!182238 (= lt!60305 (maxPrefix!169 thiss!17480 (t!28345 rules!1920) lt!60074))))

(declare-fun bm!8285 () Bool)

(declare-fun maxPrefixOneRule!83 (LexerInterface!439 Rule!906 List!3058) Option!384)

(assert (=> bm!8285 (= call!8290 (maxPrefixOneRule!83 thiss!17480 (h!8446 rules!1920) lt!60074))))

(declare-fun b!182239 () Bool)

(declare-fun e!111119 () Bool)

(assert (=> b!182239 (= e!111119 e!111118)))

(declare-fun res!82707 () Bool)

(assert (=> b!182239 (=> (not res!82707) (not e!111118))))

(assert (=> b!182239 (= res!82707 (isDefined!235 lt!60303))))

(declare-fun b!182240 () Bool)

(declare-fun res!82713 () Bool)

(assert (=> b!182240 (=> (not res!82713) (not e!111118))))

(assert (=> b!182240 (= res!82713 (= (++!718 (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60303)))) (_2!1737 (get!860 lt!60303))) lt!60074))))

(declare-fun b!182241 () Bool)

(assert (=> b!182241 (= e!111120 call!8290)))

(declare-fun b!182242 () Bool)

(declare-fun res!82711 () Bool)

(assert (=> b!182242 (=> (not res!82711) (not e!111118))))

(assert (=> b!182242 (= res!82711 (matchR!115 (regex!553 (rule!1068 (_1!1737 (get!860 lt!60303)))) (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60303))))))))

(declare-fun d!46096 () Bool)

(assert (=> d!46096 e!111119))

(declare-fun res!82708 () Bool)

(assert (=> d!46096 (=> res!82708 e!111119)))

(assert (=> d!46096 (= res!82708 (isEmpty!1408 lt!60303))))

(assert (=> d!46096 (= lt!60303 e!111120)))

(declare-fun c!35543 () Bool)

(assert (=> d!46096 (= c!35543 (and ((_ is Cons!3049) rules!1920) ((_ is Nil!3049) (t!28345 rules!1920))))))

(declare-fun lt!60304 () Unit!2798)

(declare-fun lt!60306 () Unit!2798)

(assert (=> d!46096 (= lt!60304 lt!60306)))

(assert (=> d!46096 (isPrefix!249 lt!60074 lt!60074)))

(declare-fun lemmaIsPrefixRefl!149 (List!3058 List!3058) Unit!2798)

(assert (=> d!46096 (= lt!60306 (lemmaIsPrefixRefl!149 lt!60074 lt!60074))))

(assert (=> d!46096 (rulesValidInductive!136 thiss!17480 rules!1920)))

(assert (=> d!46096 (= (maxPrefix!169 thiss!17480 rules!1920 lt!60074) lt!60303)))

(declare-fun b!182243 () Bool)

(declare-fun contains!493 (List!3059 Rule!906) Bool)

(assert (=> b!182243 (= e!111118 (contains!493 rules!1920 (rule!1068 (_1!1737 (get!860 lt!60303)))))))

(declare-fun b!182244 () Bool)

(declare-fun res!82712 () Bool)

(assert (=> b!182244 (=> (not res!82712) (not e!111118))))

(assert (=> b!182244 (= res!82712 (= (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60303)))) (originalCharacters!596 (_1!1737 (get!860 lt!60303)))))))

(declare-fun b!182245 () Bool)

(declare-fun res!82710 () Bool)

(assert (=> b!182245 (=> (not res!82710) (not e!111118))))

(declare-fun apply!458 (TokenValueInjection!922 BalanceConc!1864) TokenValue!575)

(assert (=> b!182245 (= res!82710 (= (value!20076 (_1!1737 (get!860 lt!60303))) (apply!458 (transformation!553 (rule!1068 (_1!1737 (get!860 lt!60303)))) (seqFromList!484 (originalCharacters!596 (_1!1737 (get!860 lt!60303)))))))))

(assert (= (and d!46096 c!35543) b!182241))

(assert (= (and d!46096 (not c!35543)) b!182238))

(assert (= (or b!182241 b!182238) bm!8285))

(assert (= (and d!46096 (not res!82708)) b!182239))

(assert (= (and b!182239 res!82707) b!182244))

(assert (= (and b!182244 res!82712) b!182237))

(assert (= (and b!182237 res!82709) b!182240))

(assert (= (and b!182240 res!82713) b!182245))

(assert (= (and b!182245 res!82710) b!182242))

(assert (= (and b!182242 res!82711) b!182243))

(declare-fun m!185233 () Bool)

(assert (=> b!182240 m!185233))

(declare-fun m!185235 () Bool)

(assert (=> b!182240 m!185235))

(assert (=> b!182240 m!185235))

(declare-fun m!185237 () Bool)

(assert (=> b!182240 m!185237))

(assert (=> b!182240 m!185237))

(declare-fun m!185239 () Bool)

(assert (=> b!182240 m!185239))

(assert (=> b!182243 m!185233))

(declare-fun m!185241 () Bool)

(assert (=> b!182243 m!185241))

(assert (=> b!182244 m!185233))

(assert (=> b!182244 m!185235))

(assert (=> b!182244 m!185235))

(assert (=> b!182244 m!185237))

(assert (=> b!182242 m!185233))

(assert (=> b!182242 m!185235))

(assert (=> b!182242 m!185235))

(assert (=> b!182242 m!185237))

(assert (=> b!182242 m!185237))

(declare-fun m!185243 () Bool)

(assert (=> b!182242 m!185243))

(declare-fun m!185245 () Bool)

(assert (=> bm!8285 m!185245))

(declare-fun m!185247 () Bool)

(assert (=> b!182238 m!185247))

(declare-fun m!185249 () Bool)

(assert (=> d!46096 m!185249))

(declare-fun m!185251 () Bool)

(assert (=> d!46096 m!185251))

(declare-fun m!185253 () Bool)

(assert (=> d!46096 m!185253))

(assert (=> d!46096 m!184689))

(assert (=> b!182245 m!185233))

(declare-fun m!185255 () Bool)

(assert (=> b!182245 m!185255))

(assert (=> b!182245 m!185255))

(declare-fun m!185257 () Bool)

(assert (=> b!182245 m!185257))

(declare-fun m!185259 () Bool)

(assert (=> b!182239 m!185259))

(assert (=> b!182237 m!185233))

(declare-fun m!185261 () Bool)

(assert (=> b!182237 m!185261))

(declare-fun m!185263 () Bool)

(assert (=> b!182237 m!185263))

(assert (=> b!181905 d!46096))

(declare-fun d!46104 () Bool)

(assert (=> d!46104 (= (list!1119 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 lt!60072 separatorToken!170 0)) (list!1123 (c!35473 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 lt!60072 separatorToken!170 0))))))

(declare-fun bs!18124 () Bool)

(assert (= bs!18124 d!46104))

(declare-fun m!185265 () Bool)

(assert (=> bs!18124 m!185265))

(assert (=> b!181884 d!46104))

(declare-fun bs!18126 () Bool)

(declare-fun d!46106 () Bool)

(assert (= bs!18126 (and d!46106 d!46058)))

(declare-fun lambda!5421 () Int)

(assert (=> bs!18126 (= lambda!5421 lambda!5419)))

(declare-fun bs!18127 () Bool)

(assert (= bs!18127 (and d!46106 b!182160)))

(assert (=> bs!18127 (not (= lambda!5421 lambda!5420))))

(declare-fun bs!18128 () Bool)

(assert (= bs!18128 (and d!46106 b!182109)))

(assert (=> bs!18128 (not (= lambda!5421 lambda!5414))))

(declare-fun bs!18129 () Bool)

(assert (= bs!18129 (and d!46106 b!181894)))

(assert (=> bs!18129 (= lambda!5421 lambda!5393)))

(declare-fun bs!18130 () Bool)

(assert (= bs!18130 (and d!46106 b!181896)))

(assert (=> bs!18130 (not (= lambda!5421 lambda!5394))))

(declare-fun bs!18131 () Bool)

(declare-fun b!182250 () Bool)

(assert (= bs!18131 (and b!182250 d!46058)))

(declare-fun lambda!5422 () Int)

(assert (=> bs!18131 (not (= lambda!5422 lambda!5419))))

(declare-fun bs!18132 () Bool)

(assert (= bs!18132 (and b!182250 b!182160)))

(assert (=> bs!18132 (= lambda!5422 lambda!5420)))

(declare-fun bs!18133 () Bool)

(assert (= bs!18133 (and b!182250 d!46106)))

(assert (=> bs!18133 (not (= lambda!5422 lambda!5421))))

(declare-fun bs!18134 () Bool)

(assert (= bs!18134 (and b!182250 b!182109)))

(assert (=> bs!18134 (= lambda!5422 lambda!5414)))

(declare-fun bs!18135 () Bool)

(assert (= bs!18135 (and b!182250 b!181894)))

(assert (=> bs!18135 (not (= lambda!5422 lambda!5393))))

(declare-fun bs!18136 () Bool)

(assert (= bs!18136 (and b!182250 b!181896)))

(assert (=> bs!18136 (= lambda!5422 lambda!5394)))

(declare-fun b!182259 () Bool)

(declare-fun e!111130 () Bool)

(assert (=> b!182259 (= e!111130 true)))

(declare-fun b!182258 () Bool)

(declare-fun e!111129 () Bool)

(assert (=> b!182258 (= e!111129 e!111130)))

(declare-fun b!182257 () Bool)

(declare-fun e!111128 () Bool)

(assert (=> b!182257 (= e!111128 e!111129)))

(assert (=> b!182250 e!111128))

(assert (= b!182258 b!182259))

(assert (= b!182257 b!182258))

(assert (= (and b!182250 ((_ is Cons!3049) rules!1920)) b!182257))

(assert (=> b!182259 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5422))))

(assert (=> b!182259 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5422))))

(assert (=> b!182250 true))

(declare-fun bm!8286 () Bool)

(declare-fun call!8293 () Token!850)

(assert (=> bm!8286 (= call!8293 (apply!456 lt!60072 0))))

(declare-fun b!182246 () Bool)

(declare-fun e!111123 () Bool)

(declare-fun lt!60315 () Option!385)

(assert (=> b!182246 (= e!111123 (= (_1!1739 (v!13865 lt!60315)) (apply!456 lt!60072 0)))))

(declare-fun b!182247 () Bool)

(declare-fun e!111124 () BalanceConc!1864)

(declare-fun call!8295 () BalanceConc!1864)

(declare-fun lt!60313 () BalanceConc!1864)

(assert (=> b!182247 (= e!111124 (++!720 call!8295 lt!60313))))

(declare-fun b!182248 () Bool)

(declare-fun e!111125 () Bool)

(assert (=> b!182248 (= e!111125 (<= 0 (size!2486 lt!60072)))))

(declare-fun b!182249 () Bool)

(declare-fun e!111121 () Bool)

(assert (=> b!182249 (= e!111121 (not (= (_1!1739 (v!13865 lt!60315)) call!8293)))))

(declare-fun e!111126 () BalanceConc!1864)

(declare-fun e!111122 () BalanceConc!1864)

(assert (=> b!182250 (= e!111126 e!111122)))

(declare-fun lt!60312 () List!3060)

(assert (=> b!182250 (= lt!60312 (list!1122 lt!60072))))

(declare-fun lt!60320 () Unit!2798)

(assert (=> b!182250 (= lt!60320 (lemmaDropApply!140 lt!60312 0))))

(assert (=> b!182250 (= (head!632 (drop!153 lt!60312 0)) (apply!457 lt!60312 0))))

(declare-fun lt!60323 () Unit!2798)

(assert (=> b!182250 (= lt!60323 lt!60320)))

(declare-fun lt!60318 () List!3060)

(assert (=> b!182250 (= lt!60318 (list!1122 lt!60072))))

(declare-fun lt!60311 () Unit!2798)

(assert (=> b!182250 (= lt!60311 (lemmaDropTail!132 lt!60318 0))))

(assert (=> b!182250 (= (tail!365 (drop!153 lt!60318 0)) (drop!153 lt!60318 (+ 0 1)))))

(declare-fun lt!60314 () Unit!2798)

(assert (=> b!182250 (= lt!60314 lt!60311)))

(declare-fun lt!60322 () Unit!2798)

(assert (=> b!182250 (= lt!60322 (forallContained!120 (list!1122 lt!60072) lambda!5422 (apply!456 lt!60072 0)))))

(assert (=> b!182250 (= lt!60313 (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 lt!60072 separatorToken!170 (+ 0 1)))))

(assert (=> b!182250 (= lt!60315 (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (++!720 (charsOf!208 (apply!456 lt!60072 0)) lt!60313)))))

(declare-fun res!82714 () Bool)

(assert (=> b!182250 (= res!82714 ((_ is Some!384) lt!60315))))

(assert (=> b!182250 (=> (not res!82714) (not e!111123))))

(declare-fun c!35545 () Bool)

(assert (=> b!182250 (= c!35545 e!111123)))

(declare-fun bm!8288 () Bool)

(declare-fun call!8292 () Token!850)

(assert (=> bm!8288 (= call!8292 call!8293)))

(declare-fun bm!8289 () Bool)

(declare-fun c!35546 () Bool)

(assert (=> bm!8289 (= c!35546 c!35545)))

(declare-fun e!111127 () BalanceConc!1864)

(declare-fun call!8294 () BalanceConc!1864)

(assert (=> bm!8289 (= call!8295 (++!720 e!111127 (ite c!35545 lt!60313 call!8294)))))

(declare-fun b!182251 () Bool)

(declare-fun c!35547 () Bool)

(assert (=> b!182251 (= c!35547 e!111121)))

(declare-fun res!82715 () Bool)

(assert (=> b!182251 (=> (not res!82715) (not e!111121))))

(assert (=> b!182251 (= res!82715 ((_ is Some!384) lt!60315))))

(assert (=> b!182251 (= e!111122 e!111124)))

(declare-fun bm!8290 () Bool)

(declare-fun call!8291 () BalanceConc!1864)

(assert (=> bm!8290 (= call!8291 (charsOf!208 (ite c!35545 call!8293 (ite c!35547 separatorToken!170 call!8292))))))

(declare-fun b!182252 () Bool)

(assert (=> b!182252 (= e!111127 (charsOf!208 call!8292))))

(declare-fun b!182253 () Bool)

(assert (=> b!182253 (= e!111124 (BalanceConc!1865 Empty!928))))

(assert (=> b!182253 (= (print!170 thiss!17480 (singletonSeq!105 call!8292)) (printTailRec!133 thiss!17480 (singletonSeq!105 call!8292) 0 (BalanceConc!1865 Empty!928)))))

(declare-fun lt!60316 () Unit!2798)

(declare-fun Unit!2812 () Unit!2798)

(assert (=> b!182253 (= lt!60316 Unit!2812)))

(declare-fun lt!60319 () Unit!2798)

(assert (=> b!182253 (= lt!60319 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!48 thiss!17480 rules!1920 (list!1119 call!8294) (list!1119 lt!60313)))))

(assert (=> b!182253 false))

(declare-fun lt!60317 () Unit!2798)

(declare-fun Unit!2813 () Unit!2798)

(assert (=> b!182253 (= lt!60317 Unit!2813)))

(declare-fun b!182254 () Bool)

(assert (=> b!182254 (= e!111122 call!8295)))

(declare-fun bm!8287 () Bool)

(assert (=> bm!8287 (= call!8294 call!8291)))

(declare-fun lt!60324 () BalanceConc!1864)

(assert (=> d!46106 (= (list!1119 lt!60324) (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (dropList!100 lt!60072 0) separatorToken!170))))

(assert (=> d!46106 (= lt!60324 e!111126)))

(declare-fun c!35544 () Bool)

(assert (=> d!46106 (= c!35544 (>= 0 (size!2486 lt!60072)))))

(declare-fun lt!60321 () Unit!2798)

(assert (=> d!46106 (= lt!60321 (lemmaContentSubsetPreservesForall!44 (list!1122 lt!60072) (dropList!100 lt!60072 0) lambda!5421))))

(assert (=> d!46106 e!111125))

(declare-fun res!82716 () Bool)

(assert (=> d!46106 (=> (not res!82716) (not e!111125))))

(assert (=> d!46106 (= res!82716 (>= 0 0))))

(assert (=> d!46106 (= (printWithSeparatorTokenWhenNeededRec!122 thiss!17480 rules!1920 lt!60072 separatorToken!170 0) lt!60324)))

(declare-fun b!182255 () Bool)

(assert (=> b!182255 (= e!111126 (BalanceConc!1865 Empty!928))))

(declare-fun b!182256 () Bool)

(assert (=> b!182256 (= e!111127 call!8291)))

(assert (= (and d!46106 res!82716) b!182248))

(assert (= (and d!46106 c!35544) b!182255))

(assert (= (and d!46106 (not c!35544)) b!182250))

(assert (= (and b!182250 res!82714) b!182246))

(assert (= (and b!182250 c!35545) b!182254))

(assert (= (and b!182250 (not c!35545)) b!182251))

(assert (= (and b!182251 res!82715) b!182249))

(assert (= (and b!182251 c!35547) b!182247))

(assert (= (and b!182251 (not c!35547)) b!182253))

(assert (= (or b!182247 b!182253) bm!8288))

(assert (= (or b!182247 b!182253) bm!8287))

(assert (= (or b!182254 b!182249 bm!8288) bm!8286))

(assert (= (or b!182254 bm!8287) bm!8290))

(assert (= (or b!182254 b!182247) bm!8289))

(assert (= (and bm!8289 c!35546) b!182256))

(assert (= (and bm!8289 (not c!35546)) b!182252))

(declare-fun m!185273 () Bool)

(assert (=> b!182247 m!185273))

(declare-fun m!185275 () Bool)

(assert (=> bm!8289 m!185275))

(declare-fun m!185277 () Bool)

(assert (=> d!46106 m!185277))

(declare-fun m!185279 () Bool)

(assert (=> d!46106 m!185279))

(declare-fun m!185281 () Bool)

(assert (=> d!46106 m!185281))

(declare-fun m!185283 () Bool)

(assert (=> d!46106 m!185283))

(assert (=> d!46106 m!185277))

(assert (=> d!46106 m!185279))

(declare-fun m!185285 () Bool)

(assert (=> d!46106 m!185285))

(assert (=> d!46106 m!185279))

(declare-fun m!185287 () Bool)

(assert (=> d!46106 m!185287))

(declare-fun m!185289 () Bool)

(assert (=> b!182250 m!185289))

(declare-fun m!185291 () Bool)

(assert (=> b!182250 m!185291))

(declare-fun m!185293 () Bool)

(assert (=> b!182250 m!185293))

(assert (=> b!182250 m!185277))

(assert (=> b!182250 m!185289))

(declare-fun m!185295 () Bool)

(assert (=> b!182250 m!185295))

(declare-fun m!185297 () Bool)

(assert (=> b!182250 m!185297))

(declare-fun m!185299 () Bool)

(assert (=> b!182250 m!185299))

(assert (=> b!182250 m!185277))

(assert (=> b!182250 m!185289))

(declare-fun m!185301 () Bool)

(assert (=> b!182250 m!185301))

(declare-fun m!185303 () Bool)

(assert (=> b!182250 m!185303))

(declare-fun m!185305 () Bool)

(assert (=> b!182250 m!185305))

(declare-fun m!185307 () Bool)

(assert (=> b!182250 m!185307))

(declare-fun m!185309 () Bool)

(assert (=> b!182250 m!185309))

(declare-fun m!185311 () Bool)

(assert (=> b!182250 m!185311))

(assert (=> b!182250 m!185301))

(assert (=> b!182250 m!185297))

(assert (=> b!182250 m!185309))

(assert (=> b!182250 m!185303))

(declare-fun m!185313 () Bool)

(assert (=> b!182250 m!185313))

(declare-fun m!185315 () Bool)

(assert (=> b!182250 m!185315))

(declare-fun m!185317 () Bool)

(assert (=> b!182253 m!185317))

(declare-fun m!185319 () Bool)

(assert (=> b!182253 m!185319))

(declare-fun m!185321 () Bool)

(assert (=> b!182253 m!185321))

(assert (=> b!182253 m!185317))

(declare-fun m!185323 () Bool)

(assert (=> b!182253 m!185323))

(assert (=> b!182253 m!185317))

(declare-fun m!185325 () Bool)

(assert (=> b!182253 m!185325))

(assert (=> b!182253 m!185323))

(assert (=> b!182253 m!185321))

(declare-fun m!185327 () Bool)

(assert (=> b!182253 m!185327))

(declare-fun m!185329 () Bool)

(assert (=> bm!8290 m!185329))

(declare-fun m!185331 () Bool)

(assert (=> b!182252 m!185331))

(assert (=> bm!8286 m!185289))

(assert (=> b!182246 m!185289))

(assert (=> b!182248 m!185283))

(assert (=> b!181884 d!46106))

(declare-fun bs!18137 () Bool)

(declare-fun b!182261 () Bool)

(assert (= bs!18137 (and b!182261 d!46058)))

(declare-fun lambda!5423 () Int)

(assert (=> bs!18137 (not (= lambda!5423 lambda!5419))))

(declare-fun bs!18138 () Bool)

(assert (= bs!18138 (and b!182261 b!182160)))

(assert (=> bs!18138 (= lambda!5423 lambda!5420)))

(declare-fun bs!18139 () Bool)

(assert (= bs!18139 (and b!182261 b!182250)))

(assert (=> bs!18139 (= lambda!5423 lambda!5422)))

(declare-fun bs!18140 () Bool)

(assert (= bs!18140 (and b!182261 d!46106)))

(assert (=> bs!18140 (not (= lambda!5423 lambda!5421))))

(declare-fun bs!18141 () Bool)

(assert (= bs!18141 (and b!182261 b!182109)))

(assert (=> bs!18141 (= lambda!5423 lambda!5414)))

(declare-fun bs!18142 () Bool)

(assert (= bs!18142 (and b!182261 b!181894)))

(assert (=> bs!18142 (not (= lambda!5423 lambda!5393))))

(declare-fun bs!18143 () Bool)

(assert (= bs!18143 (and b!182261 b!181896)))

(assert (=> bs!18143 (= lambda!5423 lambda!5394)))

(declare-fun b!182270 () Bool)

(declare-fun e!111137 () Bool)

(assert (=> b!182270 (= e!111137 true)))

(declare-fun b!182269 () Bool)

(declare-fun e!111136 () Bool)

(assert (=> b!182269 (= e!111136 e!111137)))

(declare-fun b!182268 () Bool)

(declare-fun e!111135 () Bool)

(assert (=> b!182268 (= e!111135 e!111136)))

(assert (=> b!182261 e!111135))

(assert (= b!182269 b!182270))

(assert (= b!182268 b!182269))

(assert (= (and b!182261 ((_ is Cons!3049) rules!1920)) b!182268))

(assert (=> b!182270 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5423))))

(assert (=> b!182270 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5423))))

(assert (=> b!182261 true))

(declare-fun b!182260 () Bool)

(declare-fun e!111132 () List!3058)

(assert (=> b!182260 (= e!111132 Nil!3048)))

(assert (=> b!182260 (= (print!170 thiss!17480 (singletonSeq!105 (h!8447 tokens!465))) (printTailRec!133 thiss!17480 (singletonSeq!105 (h!8447 tokens!465)) 0 (BalanceConc!1865 Empty!928)))))

(declare-fun lt!60329 () Unit!2798)

(declare-fun Unit!2814 () Unit!2798)

(assert (=> b!182260 (= lt!60329 Unit!2814)))

(declare-fun lt!60326 () List!3058)

(declare-fun call!8298 () List!3058)

(declare-fun lt!60330 () Unit!2798)

(assert (=> b!182260 (= lt!60330 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!48 thiss!17480 rules!1920 call!8298 lt!60326))))

(assert (=> b!182260 false))

(declare-fun lt!60327 () Unit!2798)

(declare-fun Unit!2815 () Unit!2798)

(assert (=> b!182260 (= lt!60327 Unit!2815)))

(declare-fun bm!8291 () Bool)

(declare-fun call!8300 () BalanceConc!1864)

(declare-fun call!8299 () BalanceConc!1864)

(assert (=> bm!8291 (= call!8300 call!8299)))

(declare-fun b!182262 () Bool)

(declare-fun call!8296 () List!3058)

(assert (=> b!182262 (= e!111132 (++!718 call!8296 lt!60326))))

(declare-fun bm!8292 () Bool)

(assert (=> bm!8292 (= call!8299 (charsOf!208 (h!8447 tokens!465)))))

(declare-fun b!182263 () Bool)

(declare-fun e!111133 () List!3058)

(assert (=> b!182263 (= e!111133 Nil!3048)))

(declare-fun b!182264 () Bool)

(declare-fun e!111131 () BalanceConc!1864)

(assert (=> b!182264 (= e!111131 (charsOf!208 separatorToken!170))))

(declare-fun call!8297 () List!3058)

(declare-fun bm!8293 () Bool)

(declare-fun c!35548 () Bool)

(assert (=> bm!8293 (= call!8296 (++!718 call!8297 (ite c!35548 lt!60326 call!8298)))))

(declare-fun b!182265 () Bool)

(assert (=> b!182265 (= e!111131 call!8300)))

(declare-fun bm!8294 () Bool)

(assert (=> bm!8294 (= call!8298 (list!1119 e!111131))))

(declare-fun c!35549 () Bool)

(declare-fun c!35550 () Bool)

(assert (=> bm!8294 (= c!35549 c!35550)))

(declare-fun b!182266 () Bool)

(declare-fun e!111134 () List!3058)

(assert (=> b!182266 (= e!111134 call!8296)))

(assert (=> b!182261 (= e!111133 e!111134)))

(declare-fun lt!60325 () Unit!2798)

(assert (=> b!182261 (= lt!60325 (forallContained!120 tokens!465 lambda!5423 (h!8447 tokens!465)))))

(assert (=> b!182261 (= lt!60326 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 (t!28346 tokens!465) separatorToken!170))))

(declare-fun lt!60328 () Option!384)

(assert (=> b!182261 (= lt!60328 (maxPrefix!169 thiss!17480 rules!1920 (++!718 (list!1119 (charsOf!208 (h!8447 tokens!465))) lt!60326)))))

(assert (=> b!182261 (= c!35548 (and ((_ is Some!383) lt!60328) (= (_1!1737 (v!13864 lt!60328)) (h!8447 tokens!465))))))

(declare-fun d!46110 () Bool)

(declare-fun c!35551 () Bool)

(assert (=> d!46110 (= c!35551 ((_ is Cons!3050) tokens!465))))

(assert (=> d!46110 (= (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!111133)))

(declare-fun bm!8295 () Bool)

(assert (=> bm!8295 (= call!8297 (list!1119 (ite c!35548 call!8299 call!8300)))))

(declare-fun b!182267 () Bool)

(assert (=> b!182267 (= c!35550 (and ((_ is Some!383) lt!60328) (not (= (_1!1737 (v!13864 lt!60328)) (h!8447 tokens!465)))))))

(assert (=> b!182267 (= e!111134 e!111132)))

(assert (= (and d!46110 c!35551) b!182261))

(assert (= (and d!46110 (not c!35551)) b!182263))

(assert (= (and b!182261 c!35548) b!182266))

(assert (= (and b!182261 (not c!35548)) b!182267))

(assert (= (and b!182267 c!35550) b!182262))

(assert (= (and b!182267 (not c!35550)) b!182260))

(assert (= (or b!182262 b!182260) bm!8291))

(assert (= (or b!182262 b!182260) bm!8294))

(assert (= (and bm!8294 c!35549) b!182264))

(assert (= (and bm!8294 (not c!35549)) b!182265))

(assert (= (or b!182266 bm!8291) bm!8292))

(assert (= (or b!182266 b!182262) bm!8295))

(assert (= (or b!182266 b!182262) bm!8293))

(declare-fun m!185333 () Bool)

(assert (=> b!182262 m!185333))

(assert (=> bm!8292 m!184643))

(declare-fun m!185335 () Bool)

(assert (=> bm!8295 m!185335))

(assert (=> b!182264 m!184633))

(assert (=> b!182260 m!184663))

(assert (=> b!182260 m!184663))

(declare-fun m!185337 () Bool)

(assert (=> b!182260 m!185337))

(assert (=> b!182260 m!184663))

(declare-fun m!185339 () Bool)

(assert (=> b!182260 m!185339))

(declare-fun m!185341 () Bool)

(assert (=> b!182260 m!185341))

(declare-fun m!185343 () Bool)

(assert (=> bm!8293 m!185343))

(assert (=> b!182261 m!184643))

(assert (=> b!182261 m!184643))

(assert (=> b!182261 m!184649))

(assert (=> b!182261 m!184629))

(declare-fun m!185345 () Bool)

(assert (=> b!182261 m!185345))

(declare-fun m!185347 () Bool)

(assert (=> b!182261 m!185347))

(declare-fun m!185349 () Bool)

(assert (=> b!182261 m!185349))

(assert (=> b!182261 m!184649))

(assert (=> b!182261 m!185347))

(declare-fun m!185351 () Bool)

(assert (=> bm!8294 m!185351))

(assert (=> b!181884 d!46110))

(declare-fun d!46112 () Bool)

(declare-fun res!82719 () Bool)

(declare-fun e!111140 () Bool)

(assert (=> d!46112 (=> (not res!82719) (not e!111140))))

(declare-fun rulesValid!157 (LexerInterface!439 List!3059) Bool)

(assert (=> d!46112 (= res!82719 (rulesValid!157 thiss!17480 rules!1920))))

(assert (=> d!46112 (= (rulesInvariant!405 thiss!17480 rules!1920) e!111140)))

(declare-fun b!182273 () Bool)

(declare-datatypes ((List!3062 0))(
  ( (Nil!3052) (Cons!3052 (h!8449 String!3955) (t!28412 List!3062)) )
))
(declare-fun noDuplicateTag!157 (LexerInterface!439 List!3059 List!3062) Bool)

(assert (=> b!182273 (= e!111140 (noDuplicateTag!157 thiss!17480 rules!1920 Nil!3052))))

(assert (= (and d!46112 res!82719) b!182273))

(declare-fun m!185353 () Bool)

(assert (=> d!46112 m!185353))

(declare-fun m!185355 () Bool)

(assert (=> b!182273 m!185355))

(assert (=> b!181901 d!46112))

(declare-fun d!46114 () Bool)

(assert (=> d!46114 true))

(declare-fun lt!60333 () Bool)

(declare-fun lambda!5426 () Int)

(declare-fun forall!626 (List!3059 Int) Bool)

(assert (=> d!46114 (= lt!60333 (forall!626 rules!1920 lambda!5426))))

(declare-fun e!111146 () Bool)

(assert (=> d!46114 (= lt!60333 e!111146)))

(declare-fun res!82724 () Bool)

(assert (=> d!46114 (=> res!82724 e!111146)))

(assert (=> d!46114 (= res!82724 (not ((_ is Cons!3049) rules!1920)))))

(assert (=> d!46114 (= (rulesValidInductive!136 thiss!17480 rules!1920) lt!60333)))

(declare-fun b!182278 () Bool)

(declare-fun e!111145 () Bool)

(assert (=> b!182278 (= e!111146 e!111145)))

(declare-fun res!82725 () Bool)

(assert (=> b!182278 (=> (not res!82725) (not e!111145))))

(declare-fun ruleValid!64 (LexerInterface!439 Rule!906) Bool)

(assert (=> b!182278 (= res!82725 (ruleValid!64 thiss!17480 (h!8446 rules!1920)))))

(declare-fun b!182279 () Bool)

(assert (=> b!182279 (= e!111145 (rulesValidInductive!136 thiss!17480 (t!28345 rules!1920)))))

(assert (= (and d!46114 (not res!82724)) b!182278))

(assert (= (and b!182278 res!82725) b!182279))

(declare-fun m!185357 () Bool)

(assert (=> d!46114 m!185357))

(declare-fun m!185359 () Bool)

(assert (=> b!182278 m!185359))

(declare-fun m!185361 () Bool)

(assert (=> b!182279 m!185361))

(assert (=> b!181902 d!46114))

(declare-fun d!46116 () Bool)

(assert (=> d!46116 (isPrefix!249 lt!60060 (++!718 lt!60060 lt!60065))))

(declare-fun lt!60350 () Unit!2798)

(declare-fun choose!1885 (List!3058 List!3058) Unit!2798)

(assert (=> d!46116 (= lt!60350 (choose!1885 lt!60060 lt!60065))))

(assert (=> d!46116 (= (lemmaConcatTwoListThenFirstIsPrefix!144 lt!60060 lt!60065) lt!60350)))

(declare-fun bs!18144 () Bool)

(assert (= bs!18144 d!46116))

(assert (=> bs!18144 m!184637))

(assert (=> bs!18144 m!184637))

(declare-fun m!185363 () Bool)

(assert (=> bs!18144 m!185363))

(declare-fun m!185365 () Bool)

(assert (=> bs!18144 m!185365))

(assert (=> b!181902 d!46116))

(declare-fun d!46118 () Bool)

(assert (=> d!46118 (= (isEmpty!1400 tokens!465) ((_ is Nil!3050) tokens!465))))

(assert (=> b!181902 d!46118))

(declare-fun d!46120 () Bool)

(assert (=> d!46120 (= lt!60065 (_2!1737 lt!60058))))

(declare-fun lt!60360 () Unit!2798)

(declare-fun choose!1886 (List!3058 List!3058 List!3058 List!3058 List!3058) Unit!2798)

(assert (=> d!46120 (= lt!60360 (choose!1886 lt!60060 lt!60065 lt!60060 (_2!1737 lt!60058) lt!60074))))

(assert (=> d!46120 (isPrefix!249 lt!60060 lt!60074)))

(assert (=> d!46120 (= (lemmaSamePrefixThenSameSuffix!74 lt!60060 lt!60065 lt!60060 (_2!1737 lt!60058) lt!60074) lt!60360)))

(declare-fun bs!18145 () Bool)

(assert (= bs!18145 d!46120))

(declare-fun m!185387 () Bool)

(assert (=> bs!18145 m!185387))

(declare-fun m!185393 () Bool)

(assert (=> bs!18145 m!185393))

(assert (=> b!181902 d!46120))

(declare-fun d!46122 () Bool)

(assert (=> d!46122 (= (get!860 (maxPrefix!169 thiss!17480 rules!1920 lt!60074)) (v!13864 (maxPrefix!169 thiss!17480 rules!1920 lt!60074)))))

(assert (=> b!181902 d!46122))

(declare-fun b!182305 () Bool)

(declare-fun e!111164 () Bool)

(assert (=> b!182305 (= e!111164 (>= (size!2488 lt!60059) (size!2488 lt!60060)))))

(declare-fun d!46124 () Bool)

(assert (=> d!46124 e!111164))

(declare-fun res!82740 () Bool)

(assert (=> d!46124 (=> res!82740 e!111164)))

(declare-fun lt!60366 () Bool)

(assert (=> d!46124 (= res!82740 (not lt!60366))))

(declare-fun e!111162 () Bool)

(assert (=> d!46124 (= lt!60366 e!111162)))

(declare-fun res!82742 () Bool)

(assert (=> d!46124 (=> res!82742 e!111162)))

(assert (=> d!46124 (= res!82742 ((_ is Nil!3048) lt!60060))))

(assert (=> d!46124 (= (isPrefix!249 lt!60060 lt!60059) lt!60366)))

(declare-fun b!182302 () Bool)

(declare-fun e!111163 () Bool)

(assert (=> b!182302 (= e!111162 e!111163)))

(declare-fun res!82743 () Bool)

(assert (=> b!182302 (=> (not res!82743) (not e!111163))))

(assert (=> b!182302 (= res!82743 (not ((_ is Nil!3048) lt!60059)))))

(declare-fun b!182304 () Bool)

(declare-fun tail!366 (List!3058) List!3058)

(assert (=> b!182304 (= e!111163 (isPrefix!249 (tail!366 lt!60060) (tail!366 lt!60059)))))

(declare-fun b!182303 () Bool)

(declare-fun res!82741 () Bool)

(assert (=> b!182303 (=> (not res!82741) (not e!111163))))

(declare-fun head!634 (List!3058) C!2476)

(assert (=> b!182303 (= res!82741 (= (head!634 lt!60060) (head!634 lt!60059)))))

(assert (= (and d!46124 (not res!82742)) b!182302))

(assert (= (and b!182302 res!82743) b!182303))

(assert (= (and b!182303 res!82741) b!182304))

(assert (= (and d!46124 (not res!82740)) b!182305))

(declare-fun m!185411 () Bool)

(assert (=> b!182305 m!185411))

(assert (=> b!182305 m!185127))

(declare-fun m!185413 () Bool)

(assert (=> b!182304 m!185413))

(declare-fun m!185415 () Bool)

(assert (=> b!182304 m!185415))

(assert (=> b!182304 m!185413))

(assert (=> b!182304 m!185415))

(declare-fun m!185417 () Bool)

(assert (=> b!182304 m!185417))

(declare-fun m!185419 () Bool)

(assert (=> b!182303 m!185419))

(declare-fun m!185421 () Bool)

(assert (=> b!182303 m!185421))

(assert (=> b!181902 d!46124))

(assert (=> b!181902 d!46096))

(declare-fun d!46130 () Bool)

(declare-fun e!111256 () Bool)

(assert (=> d!46130 e!111256))

(declare-fun res!82812 () Bool)

(assert (=> d!46130 (=> res!82812 e!111256)))

(assert (=> d!46130 (= res!82812 (isEmpty!1400 tokens!465))))

(declare-fun lt!60409 () Unit!2798)

(declare-fun choose!1887 (LexerInterface!439 List!3059 List!3060 Token!850) Unit!2798)

(assert (=> d!46130 (= lt!60409 (choose!1887 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!46130 (not (isEmpty!1401 rules!1920))))

(assert (=> d!46130 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!14 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!60409)))

(declare-fun b!182455 () Bool)

(declare-fun e!111255 () Bool)

(assert (=> b!182455 (= e!111256 e!111255)))

(declare-fun res!82811 () Bool)

(assert (=> b!182455 (=> (not res!82811) (not e!111255))))

(assert (=> b!182455 (= res!82811 (isDefined!235 (maxPrefix!169 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!182456 () Bool)

(assert (=> b!182456 (= e!111255 (= (_1!1737 (get!860 (maxPrefix!169 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!132 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!632 tokens!465)))))

(assert (= (and d!46130 (not res!82812)) b!182455))

(assert (= (and b!182455 res!82811) b!182456))

(assert (=> d!46130 m!184695))

(declare-fun m!185649 () Bool)

(assert (=> d!46130 m!185649))

(assert (=> d!46130 m!184703))

(assert (=> b!182455 m!184677))

(assert (=> b!182455 m!184677))

(declare-fun m!185651 () Bool)

(assert (=> b!182455 m!185651))

(assert (=> b!182455 m!185651))

(declare-fun m!185653 () Bool)

(assert (=> b!182455 m!185653))

(assert (=> b!182456 m!184677))

(assert (=> b!182456 m!184677))

(assert (=> b!182456 m!185651))

(assert (=> b!182456 m!185651))

(declare-fun m!185655 () Bool)

(assert (=> b!182456 m!185655))

(assert (=> b!182456 m!184707))

(assert (=> b!181902 d!46130))

(declare-fun d!46194 () Bool)

(assert (=> d!46194 (= (isEmpty!1401 rules!1920) ((_ is Nil!3049) rules!1920))))

(assert (=> b!181903 d!46194))

(declare-fun d!46196 () Bool)

(declare-fun lt!60411 () Bool)

(declare-fun e!111258 () Bool)

(assert (=> d!46196 (= lt!60411 e!111258)))

(declare-fun res!82814 () Bool)

(assert (=> d!46196 (=> (not res!82814) (not e!111258))))

(assert (=> d!46196 (= res!82814 (= (list!1122 (_1!1738 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 (h!8447 tokens!465)))))) (list!1122 (singletonSeq!105 (h!8447 tokens!465)))))))

(declare-fun e!111257 () Bool)

(assert (=> d!46196 (= lt!60411 e!111257)))

(declare-fun res!82813 () Bool)

(assert (=> d!46196 (=> (not res!82813) (not e!111257))))

(declare-fun lt!60410 () tuple2!3044)

(assert (=> d!46196 (= res!82813 (= (size!2486 (_1!1738 lt!60410)) 1))))

(assert (=> d!46196 (= lt!60410 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 (h!8447 tokens!465)))))))

(assert (=> d!46196 (not (isEmpty!1401 rules!1920))))

(assert (=> d!46196 (= (rulesProduceIndividualToken!188 thiss!17480 rules!1920 (h!8447 tokens!465)) lt!60411)))

(declare-fun b!182457 () Bool)

(declare-fun res!82815 () Bool)

(assert (=> b!182457 (=> (not res!82815) (not e!111257))))

(assert (=> b!182457 (= res!82815 (= (apply!456 (_1!1738 lt!60410) 0) (h!8447 tokens!465)))))

(declare-fun b!182458 () Bool)

(assert (=> b!182458 (= e!111257 (isEmpty!1406 (_2!1738 lt!60410)))))

(declare-fun b!182459 () Bool)

(assert (=> b!182459 (= e!111258 (isEmpty!1406 (_2!1738 (lex!239 thiss!17480 rules!1920 (print!170 thiss!17480 (singletonSeq!105 (h!8447 tokens!465)))))))))

(assert (= (and d!46196 res!82813) b!182457))

(assert (= (and b!182457 res!82815) b!182458))

(assert (= (and d!46196 res!82814) b!182459))

(assert (=> d!46196 m!185337))

(declare-fun m!185657 () Bool)

(assert (=> d!46196 m!185657))

(assert (=> d!46196 m!184703))

(assert (=> d!46196 m!184663))

(assert (=> d!46196 m!185337))

(assert (=> d!46196 m!184663))

(assert (=> d!46196 m!184663))

(declare-fun m!185659 () Bool)

(assert (=> d!46196 m!185659))

(declare-fun m!185661 () Bool)

(assert (=> d!46196 m!185661))

(declare-fun m!185663 () Bool)

(assert (=> d!46196 m!185663))

(declare-fun m!185665 () Bool)

(assert (=> b!182457 m!185665))

(declare-fun m!185667 () Bool)

(assert (=> b!182458 m!185667))

(assert (=> b!182459 m!184663))

(assert (=> b!182459 m!184663))

(assert (=> b!182459 m!185337))

(assert (=> b!182459 m!185337))

(assert (=> b!182459 m!185657))

(declare-fun m!185669 () Bool)

(assert (=> b!182459 m!185669))

(assert (=> b!181898 d!46196))

(declare-fun d!46198 () Bool)

(declare-fun res!82820 () Bool)

(declare-fun e!111263 () Bool)

(assert (=> d!46198 (=> res!82820 e!111263)))

(assert (=> d!46198 (= res!82820 (not ((_ is Cons!3049) rules!1920)))))

(assert (=> d!46198 (= (sepAndNonSepRulesDisjointChars!142 rules!1920 rules!1920) e!111263)))

(declare-fun b!182464 () Bool)

(declare-fun e!111264 () Bool)

(assert (=> b!182464 (= e!111263 e!111264)))

(declare-fun res!82821 () Bool)

(assert (=> b!182464 (=> (not res!82821) (not e!111264))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!50 (Rule!906 List!3059) Bool)

(assert (=> b!182464 (= res!82821 (ruleDisjointCharsFromAllFromOtherType!50 (h!8446 rules!1920) rules!1920))))

(declare-fun b!182465 () Bool)

(assert (=> b!182465 (= e!111264 (sepAndNonSepRulesDisjointChars!142 rules!1920 (t!28345 rules!1920)))))

(assert (= (and d!46198 (not res!82820)) b!182464))

(assert (= (and b!182464 res!82821) b!182465))

(declare-fun m!185671 () Bool)

(assert (=> b!182464 m!185671))

(declare-fun m!185673 () Bool)

(assert (=> b!182465 m!185673))

(assert (=> b!181877 d!46198))

(declare-fun d!46200 () Bool)

(assert (=> d!46200 (= (get!860 lt!60068) (v!13864 lt!60068))))

(assert (=> b!181878 d!46200))

(declare-fun d!46202 () Bool)

(assert (=> d!46202 (= (isDefined!235 lt!60068) (not (isEmpty!1408 lt!60068)))))

(declare-fun bs!18176 () Bool)

(assert (= bs!18176 d!46202))

(declare-fun m!185675 () Bool)

(assert (=> bs!18176 m!185675))

(assert (=> b!181878 d!46202))

(declare-fun b!182466 () Bool)

(declare-fun res!82824 () Bool)

(declare-fun e!111265 () Bool)

(assert (=> b!182466 (=> (not res!82824) (not e!111265))))

(declare-fun lt!60412 () Option!384)

(assert (=> b!182466 (= res!82824 (< (size!2488 (_2!1737 (get!860 lt!60412))) (size!2488 lt!60060)))))

(declare-fun b!182467 () Bool)

(declare-fun e!111267 () Option!384)

(declare-fun lt!60416 () Option!384)

(declare-fun lt!60414 () Option!384)

(assert (=> b!182467 (= e!111267 (ite (and ((_ is None!383) lt!60416) ((_ is None!383) lt!60414)) None!383 (ite ((_ is None!383) lt!60414) lt!60416 (ite ((_ is None!383) lt!60416) lt!60414 (ite (>= (size!2483 (_1!1737 (v!13864 lt!60416))) (size!2483 (_1!1737 (v!13864 lt!60414)))) lt!60416 lt!60414)))))))

(declare-fun call!8314 () Option!384)

(assert (=> b!182467 (= lt!60416 call!8314)))

(assert (=> b!182467 (= lt!60414 (maxPrefix!169 thiss!17480 (t!28345 rules!1920) lt!60060))))

(declare-fun bm!8309 () Bool)

(assert (=> bm!8309 (= call!8314 (maxPrefixOneRule!83 thiss!17480 (h!8446 rules!1920) lt!60060))))

(declare-fun b!182468 () Bool)

(declare-fun e!111266 () Bool)

(assert (=> b!182468 (= e!111266 e!111265)))

(declare-fun res!82822 () Bool)

(assert (=> b!182468 (=> (not res!82822) (not e!111265))))

(assert (=> b!182468 (= res!82822 (isDefined!235 lt!60412))))

(declare-fun b!182469 () Bool)

(declare-fun res!82828 () Bool)

(assert (=> b!182469 (=> (not res!82828) (not e!111265))))

(assert (=> b!182469 (= res!82828 (= (++!718 (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60412)))) (_2!1737 (get!860 lt!60412))) lt!60060))))

(declare-fun b!182470 () Bool)

(assert (=> b!182470 (= e!111267 call!8314)))

(declare-fun b!182471 () Bool)

(declare-fun res!82826 () Bool)

(assert (=> b!182471 (=> (not res!82826) (not e!111265))))

(assert (=> b!182471 (= res!82826 (matchR!115 (regex!553 (rule!1068 (_1!1737 (get!860 lt!60412)))) (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60412))))))))

(declare-fun d!46204 () Bool)

(assert (=> d!46204 e!111266))

(declare-fun res!82823 () Bool)

(assert (=> d!46204 (=> res!82823 e!111266)))

(assert (=> d!46204 (= res!82823 (isEmpty!1408 lt!60412))))

(assert (=> d!46204 (= lt!60412 e!111267)))

(declare-fun c!35590 () Bool)

(assert (=> d!46204 (= c!35590 (and ((_ is Cons!3049) rules!1920) ((_ is Nil!3049) (t!28345 rules!1920))))))

(declare-fun lt!60413 () Unit!2798)

(declare-fun lt!60415 () Unit!2798)

(assert (=> d!46204 (= lt!60413 lt!60415)))

(assert (=> d!46204 (isPrefix!249 lt!60060 lt!60060)))

(assert (=> d!46204 (= lt!60415 (lemmaIsPrefixRefl!149 lt!60060 lt!60060))))

(assert (=> d!46204 (rulesValidInductive!136 thiss!17480 rules!1920)))

(assert (=> d!46204 (= (maxPrefix!169 thiss!17480 rules!1920 lt!60060) lt!60412)))

(declare-fun b!182472 () Bool)

(assert (=> b!182472 (= e!111265 (contains!493 rules!1920 (rule!1068 (_1!1737 (get!860 lt!60412)))))))

(declare-fun b!182473 () Bool)

(declare-fun res!82827 () Bool)

(assert (=> b!182473 (=> (not res!82827) (not e!111265))))

(assert (=> b!182473 (= res!82827 (= (list!1119 (charsOf!208 (_1!1737 (get!860 lt!60412)))) (originalCharacters!596 (_1!1737 (get!860 lt!60412)))))))

(declare-fun b!182474 () Bool)

(declare-fun res!82825 () Bool)

(assert (=> b!182474 (=> (not res!82825) (not e!111265))))

(assert (=> b!182474 (= res!82825 (= (value!20076 (_1!1737 (get!860 lt!60412))) (apply!458 (transformation!553 (rule!1068 (_1!1737 (get!860 lt!60412)))) (seqFromList!484 (originalCharacters!596 (_1!1737 (get!860 lt!60412)))))))))

(assert (= (and d!46204 c!35590) b!182470))

(assert (= (and d!46204 (not c!35590)) b!182467))

(assert (= (or b!182470 b!182467) bm!8309))

(assert (= (and d!46204 (not res!82823)) b!182468))

(assert (= (and b!182468 res!82822) b!182473))

(assert (= (and b!182473 res!82827) b!182466))

(assert (= (and b!182466 res!82824) b!182469))

(assert (= (and b!182469 res!82828) b!182474))

(assert (= (and b!182474 res!82825) b!182471))

(assert (= (and b!182471 res!82826) b!182472))

(declare-fun m!185677 () Bool)

(assert (=> b!182469 m!185677))

(declare-fun m!185679 () Bool)

(assert (=> b!182469 m!185679))

(assert (=> b!182469 m!185679))

(declare-fun m!185681 () Bool)

(assert (=> b!182469 m!185681))

(assert (=> b!182469 m!185681))

(declare-fun m!185683 () Bool)

(assert (=> b!182469 m!185683))

(assert (=> b!182472 m!185677))

(declare-fun m!185685 () Bool)

(assert (=> b!182472 m!185685))

(assert (=> b!182473 m!185677))

(assert (=> b!182473 m!185679))

(assert (=> b!182473 m!185679))

(assert (=> b!182473 m!185681))

(assert (=> b!182471 m!185677))

(assert (=> b!182471 m!185679))

(assert (=> b!182471 m!185679))

(assert (=> b!182471 m!185681))

(assert (=> b!182471 m!185681))

(declare-fun m!185687 () Bool)

(assert (=> b!182471 m!185687))

(declare-fun m!185689 () Bool)

(assert (=> bm!8309 m!185689))

(declare-fun m!185691 () Bool)

(assert (=> b!182467 m!185691))

(declare-fun m!185693 () Bool)

(assert (=> d!46204 m!185693))

(declare-fun m!185695 () Bool)

(assert (=> d!46204 m!185695))

(declare-fun m!185697 () Bool)

(assert (=> d!46204 m!185697))

(assert (=> d!46204 m!184689))

(assert (=> b!182474 m!185677))

(declare-fun m!185699 () Bool)

(assert (=> b!182474 m!185699))

(assert (=> b!182474 m!185699))

(declare-fun m!185701 () Bool)

(assert (=> b!182474 m!185701))

(declare-fun m!185703 () Bool)

(assert (=> b!182468 m!185703))

(assert (=> b!182466 m!185677))

(declare-fun m!185705 () Bool)

(assert (=> b!182466 m!185705))

(assert (=> b!182466 m!185127))

(assert (=> b!181878 d!46204))

(declare-fun d!46206 () Bool)

(declare-fun res!82833 () Bool)

(declare-fun e!111270 () Bool)

(assert (=> d!46206 (=> (not res!82833) (not e!111270))))

(assert (=> d!46206 (= res!82833 (not (isEmpty!1402 (originalCharacters!596 (h!8447 tokens!465)))))))

(assert (=> d!46206 (= (inv!3881 (h!8447 tokens!465)) e!111270)))

(declare-fun b!182479 () Bool)

(declare-fun res!82834 () Bool)

(assert (=> b!182479 (=> (not res!82834) (not e!111270))))

(assert (=> b!182479 (= res!82834 (= (originalCharacters!596 (h!8447 tokens!465)) (list!1119 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (value!20076 (h!8447 tokens!465))))))))

(declare-fun b!182480 () Bool)

(assert (=> b!182480 (= e!111270 (= (size!2483 (h!8447 tokens!465)) (size!2488 (originalCharacters!596 (h!8447 tokens!465)))))))

(assert (= (and d!46206 res!82833) b!182479))

(assert (= (and b!182479 res!82834) b!182480))

(declare-fun b_lambda!4373 () Bool)

(assert (=> (not b_lambda!4373) (not b!182479)))

(assert (=> b!182479 t!28371))

(declare-fun b_and!12487 () Bool)

(assert (= b_and!12463 (and (=> t!28371 result!10404) b_and!12487)))

(assert (=> b!182479 t!28373))

(declare-fun b_and!12489 () Bool)

(assert (= b_and!12465 (and (=> t!28373 result!10406) b_and!12489)))

(assert (=> b!182479 t!28375))

(declare-fun b_and!12491 () Bool)

(assert (= b_and!12467 (and (=> t!28375 result!10408) b_and!12491)))

(declare-fun m!185707 () Bool)

(assert (=> d!46206 m!185707))

(assert (=> b!182479 m!185175))

(assert (=> b!182479 m!185175))

(declare-fun m!185709 () Bool)

(assert (=> b!182479 m!185709))

(declare-fun m!185711 () Bool)

(assert (=> b!182480 m!185711))

(assert (=> b!181900 d!46206))

(declare-fun d!46208 () Bool)

(assert (=> d!46208 (= (inv!3877 (tag!731 (rule!1068 separatorToken!170))) (= (mod (str.len (value!20075 (tag!731 (rule!1068 separatorToken!170)))) 2) 0))))

(assert (=> b!181879 d!46208))

(declare-fun d!46210 () Bool)

(declare-fun res!82835 () Bool)

(declare-fun e!111271 () Bool)

(assert (=> d!46210 (=> (not res!82835) (not e!111271))))

(assert (=> d!46210 (= res!82835 (semiInverseModEq!191 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toValue!1224 (transformation!553 (rule!1068 separatorToken!170)))))))

(assert (=> d!46210 (= (inv!3880 (transformation!553 (rule!1068 separatorToken!170))) e!111271)))

(declare-fun b!182481 () Bool)

(assert (=> b!182481 (= e!111271 (equivClasses!174 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toValue!1224 (transformation!553 (rule!1068 separatorToken!170)))))))

(assert (= (and d!46210 res!82835) b!182481))

(declare-fun m!185713 () Bool)

(assert (=> d!46210 m!185713))

(declare-fun m!185715 () Bool)

(assert (=> b!182481 m!185715))

(assert (=> b!181879 d!46210))

(declare-fun b!182511 () Bool)

(declare-fun res!82852 () Bool)

(declare-fun e!111291 () Bool)

(assert (=> b!182511 (=> res!82852 e!111291)))

(declare-fun e!111289 () Bool)

(assert (=> b!182511 (= res!82852 e!111289)))

(declare-fun res!82856 () Bool)

(assert (=> b!182511 (=> (not res!82856) (not e!111289))))

(declare-fun lt!60419 () Bool)

(assert (=> b!182511 (= res!82856 lt!60419)))

(declare-fun bm!8312 () Bool)

(declare-fun call!8317 () Bool)

(assert (=> bm!8312 (= call!8317 (isEmpty!1402 lt!60060))))

(declare-fun b!182512 () Bool)

(declare-fun e!111290 () Bool)

(declare-fun nullable!118 (Regex!777) Bool)

(assert (=> b!182512 (= e!111290 (nullable!118 (regex!553 (rule!1068 (h!8447 tokens!465)))))))

(declare-fun b!182513 () Bool)

(declare-fun e!111286 () Bool)

(assert (=> b!182513 (= e!111286 (not (= (head!634 lt!60060) (c!35474 (regex!553 (rule!1068 (h!8447 tokens!465)))))))))

(declare-fun b!182514 () Bool)

(declare-fun e!111288 () Bool)

(assert (=> b!182514 (= e!111291 e!111288)))

(declare-fun res!82859 () Bool)

(assert (=> b!182514 (=> (not res!82859) (not e!111288))))

(assert (=> b!182514 (= res!82859 (not lt!60419))))

(declare-fun b!182515 () Bool)

(assert (=> b!182515 (= e!111289 (= (head!634 lt!60060) (c!35474 (regex!553 (rule!1068 (h!8447 tokens!465))))))))

(declare-fun b!182516 () Bool)

(declare-fun res!82855 () Bool)

(assert (=> b!182516 (=> res!82855 e!111286)))

(assert (=> b!182516 (= res!82855 (not (isEmpty!1402 (tail!366 lt!60060))))))

(declare-fun b!182517 () Bool)

(declare-fun res!82854 () Bool)

(assert (=> b!182517 (=> (not res!82854) (not e!111289))))

(assert (=> b!182517 (= res!82854 (not call!8317))))

(declare-fun b!182518 () Bool)

(declare-fun res!82858 () Bool)

(assert (=> b!182518 (=> res!82858 e!111291)))

(assert (=> b!182518 (= res!82858 (not ((_ is ElementMatch!777) (regex!553 (rule!1068 (h!8447 tokens!465))))))))

(declare-fun e!111292 () Bool)

(assert (=> b!182518 (= e!111292 e!111291)))

(declare-fun b!182519 () Bool)

(assert (=> b!182519 (= e!111292 (not lt!60419))))

(declare-fun d!46212 () Bool)

(declare-fun e!111287 () Bool)

(assert (=> d!46212 e!111287))

(declare-fun c!35598 () Bool)

(assert (=> d!46212 (= c!35598 ((_ is EmptyExpr!777) (regex!553 (rule!1068 (h!8447 tokens!465)))))))

(assert (=> d!46212 (= lt!60419 e!111290)))

(declare-fun c!35597 () Bool)

(assert (=> d!46212 (= c!35597 (isEmpty!1402 lt!60060))))

(declare-fun validRegex!191 (Regex!777) Bool)

(assert (=> d!46212 (validRegex!191 (regex!553 (rule!1068 (h!8447 tokens!465))))))

(assert (=> d!46212 (= (matchR!115 (regex!553 (rule!1068 (h!8447 tokens!465))) lt!60060) lt!60419)))

(declare-fun b!182510 () Bool)

(declare-fun derivativeStep!84 (Regex!777 C!2476) Regex!777)

(assert (=> b!182510 (= e!111290 (matchR!115 (derivativeStep!84 (regex!553 (rule!1068 (h!8447 tokens!465))) (head!634 lt!60060)) (tail!366 lt!60060)))))

(declare-fun b!182520 () Bool)

(assert (=> b!182520 (= e!111287 (= lt!60419 call!8317))))

(declare-fun b!182521 () Bool)

(assert (=> b!182521 (= e!111288 e!111286)))

(declare-fun res!82853 () Bool)

(assert (=> b!182521 (=> res!82853 e!111286)))

(assert (=> b!182521 (= res!82853 call!8317)))

(declare-fun b!182522 () Bool)

(declare-fun res!82857 () Bool)

(assert (=> b!182522 (=> (not res!82857) (not e!111289))))

(assert (=> b!182522 (= res!82857 (isEmpty!1402 (tail!366 lt!60060)))))

(declare-fun b!182523 () Bool)

(assert (=> b!182523 (= e!111287 e!111292)))

(declare-fun c!35599 () Bool)

(assert (=> b!182523 (= c!35599 ((_ is EmptyLang!777) (regex!553 (rule!1068 (h!8447 tokens!465)))))))

(assert (= (and d!46212 c!35597) b!182512))

(assert (= (and d!46212 (not c!35597)) b!182510))

(assert (= (and d!46212 c!35598) b!182520))

(assert (= (and d!46212 (not c!35598)) b!182523))

(assert (= (and b!182523 c!35599) b!182519))

(assert (= (and b!182523 (not c!35599)) b!182518))

(assert (= (and b!182518 (not res!82858)) b!182511))

(assert (= (and b!182511 res!82856) b!182517))

(assert (= (and b!182517 res!82854) b!182522))

(assert (= (and b!182522 res!82857) b!182515))

(assert (= (and b!182511 (not res!82852)) b!182514))

(assert (= (and b!182514 res!82859) b!182521))

(assert (= (and b!182521 (not res!82853)) b!182516))

(assert (= (and b!182516 (not res!82855)) b!182513))

(assert (= (or b!182520 b!182521 b!182517) bm!8312))

(declare-fun m!185717 () Bool)

(assert (=> d!46212 m!185717))

(declare-fun m!185719 () Bool)

(assert (=> d!46212 m!185719))

(declare-fun m!185721 () Bool)

(assert (=> b!182512 m!185721))

(assert (=> b!182516 m!185413))

(assert (=> b!182516 m!185413))

(declare-fun m!185723 () Bool)

(assert (=> b!182516 m!185723))

(assert (=> b!182515 m!185419))

(assert (=> b!182513 m!185419))

(assert (=> bm!8312 m!185717))

(assert (=> b!182510 m!185419))

(assert (=> b!182510 m!185419))

(declare-fun m!185725 () Bool)

(assert (=> b!182510 m!185725))

(assert (=> b!182510 m!185413))

(assert (=> b!182510 m!185725))

(assert (=> b!182510 m!185413))

(declare-fun m!185727 () Bool)

(assert (=> b!182510 m!185727))

(assert (=> b!182522 m!185413))

(assert (=> b!182522 m!185413))

(assert (=> b!182522 m!185723))

(assert (=> b!181874 d!46212))

(declare-fun d!46214 () Bool)

(declare-fun isEmpty!1410 (Option!385) Bool)

(assert (=> d!46214 (= (isDefined!236 (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465))))) (not (isEmpty!1410 (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))

(declare-fun bs!18177 () Bool)

(assert (= bs!18177 d!46214))

(assert (=> bs!18177 m!184711))

(declare-fun m!185729 () Bool)

(assert (=> bs!18177 m!185729))

(assert (=> b!181896 d!46214))

(declare-fun b!182615 () Bool)

(declare-fun e!111360 () Bool)

(declare-fun e!111364 () Bool)

(assert (=> b!182615 (= e!111360 e!111364)))

(declare-fun res!82887 () Bool)

(assert (=> b!182615 (=> (not res!82887) (not e!111364))))

(declare-fun lt!60443 () Option!385)

(declare-fun get!862 (Option!385) tuple2!3046)

(declare-fun maxPrefixZipper!53 (LexerInterface!439 List!3059 List!3058) Option!384)

(assert (=> b!182615 (= res!82887 (= (_1!1739 (get!862 lt!60443)) (_1!1737 (get!860 (maxPrefixZipper!53 thiss!17480 rules!1920 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))))

(declare-fun d!46216 () Bool)

(declare-fun e!111363 () Bool)

(assert (=> d!46216 e!111363))

(declare-fun res!82886 () Bool)

(assert (=> d!46216 (=> (not res!82886) (not e!111363))))

(assert (=> d!46216 (= res!82886 (= (isDefined!236 lt!60443) (isDefined!235 (maxPrefixZipper!53 thiss!17480 rules!1920 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465))))))))))

(declare-fun e!111359 () Option!385)

(assert (=> d!46216 (= lt!60443 e!111359)))

(declare-fun c!35605 () Bool)

(assert (=> d!46216 (= c!35605 (and ((_ is Cons!3049) rules!1920) ((_ is Nil!3049) (t!28345 rules!1920))))))

(declare-fun lt!60437 () Unit!2798)

(declare-fun lt!60438 () Unit!2798)

(assert (=> d!46216 (= lt!60437 lt!60438)))

(declare-fun lt!60439 () List!3058)

(declare-fun lt!60442 () List!3058)

(assert (=> d!46216 (isPrefix!249 lt!60439 lt!60442)))

(assert (=> d!46216 (= lt!60438 (lemmaIsPrefixRefl!149 lt!60439 lt!60442))))

(assert (=> d!46216 (= lt!60442 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))

(assert (=> d!46216 (= lt!60439 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))

(assert (=> d!46216 (rulesValidInductive!136 thiss!17480 rules!1920)))

(assert (=> d!46216 (= (maxPrefixZipperSequence!132 thiss!17480 rules!1920 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))) lt!60443)))

(declare-fun b!182616 () Bool)

(declare-fun res!82890 () Bool)

(assert (=> b!182616 (=> (not res!82890) (not e!111363))))

(assert (=> b!182616 (= res!82890 e!111360)))

(declare-fun res!82885 () Bool)

(assert (=> b!182616 (=> res!82885 e!111360)))

(assert (=> b!182616 (= res!82885 (not (isDefined!236 lt!60443)))))

(declare-fun b!182617 () Bool)

(declare-fun e!111361 () Bool)

(declare-fun e!111362 () Bool)

(assert (=> b!182617 (= e!111361 e!111362)))

(declare-fun res!82889 () Bool)

(assert (=> b!182617 (=> (not res!82889) (not e!111362))))

(assert (=> b!182617 (= res!82889 (= (_1!1739 (get!862 lt!60443)) (_1!1737 (get!860 (maxPrefix!169 thiss!17480 rules!1920 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))))

(declare-fun b!182618 () Bool)

(declare-fun lt!60440 () Option!385)

(declare-fun lt!60441 () Option!385)

(assert (=> b!182618 (= e!111359 (ite (and ((_ is None!384) lt!60440) ((_ is None!384) lt!60441)) None!384 (ite ((_ is None!384) lt!60441) lt!60440 (ite ((_ is None!384) lt!60440) lt!60441 (ite (>= (size!2483 (_1!1739 (v!13865 lt!60440))) (size!2483 (_1!1739 (v!13865 lt!60441)))) lt!60440 lt!60441)))))))

(declare-fun call!8320 () Option!385)

(assert (=> b!182618 (= lt!60440 call!8320)))

(assert (=> b!182618 (= lt!60441 (maxPrefixZipperSequence!132 thiss!17480 (t!28345 rules!1920) (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))

(declare-fun b!182619 () Bool)

(assert (=> b!182619 (= e!111362 (= (list!1119 (_2!1739 (get!862 lt!60443))) (_2!1737 (get!860 (maxPrefix!169 thiss!17480 rules!1920 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))))

(declare-fun b!182620 () Bool)

(assert (=> b!182620 (= e!111363 e!111361)))

(declare-fun res!82888 () Bool)

(assert (=> b!182620 (=> res!82888 e!111361)))

(assert (=> b!182620 (= res!82888 (not (isDefined!236 lt!60443)))))

(declare-fun bm!8315 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!54 (LexerInterface!439 Rule!906 BalanceConc!1864) Option!385)

(assert (=> bm!8315 (= call!8320 (maxPrefixOneRuleZipperSequence!54 thiss!17480 (h!8446 rules!1920) (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))

(declare-fun b!182621 () Bool)

(assert (=> b!182621 (= e!111364 (= (list!1119 (_2!1739 (get!862 lt!60443))) (_2!1737 (get!860 (maxPrefixZipper!53 thiss!17480 rules!1920 (list!1119 (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465)))))))))))

(declare-fun b!182622 () Bool)

(assert (=> b!182622 (= e!111359 call!8320)))

(assert (= (and d!46216 c!35605) b!182622))

(assert (= (and d!46216 (not c!35605)) b!182618))

(assert (= (or b!182622 b!182618) bm!8315))

(assert (= (and d!46216 res!82886) b!182616))

(assert (= (and b!182616 (not res!82885)) b!182615))

(assert (= (and b!182615 res!82887) b!182621))

(assert (= (and b!182616 res!82890) b!182620))

(assert (= (and b!182620 (not res!82888)) b!182617))

(assert (= (and b!182617 res!82889) b!182619))

(declare-fun m!185777 () Bool)

(assert (=> d!46216 m!185777))

(assert (=> d!46216 m!184689))

(declare-fun m!185779 () Bool)

(assert (=> d!46216 m!185779))

(declare-fun m!185781 () Bool)

(assert (=> d!46216 m!185781))

(assert (=> d!46216 m!185781))

(declare-fun m!185783 () Bool)

(assert (=> d!46216 m!185783))

(assert (=> d!46216 m!184709))

(assert (=> d!46216 m!185779))

(declare-fun m!185785 () Bool)

(assert (=> d!46216 m!185785))

(declare-fun m!185787 () Bool)

(assert (=> d!46216 m!185787))

(declare-fun m!185789 () Bool)

(assert (=> b!182619 m!185789))

(declare-fun m!185791 () Bool)

(assert (=> b!182619 m!185791))

(declare-fun m!185793 () Bool)

(assert (=> b!182619 m!185793))

(declare-fun m!185795 () Bool)

(assert (=> b!182619 m!185795))

(assert (=> b!182619 m!185779))

(assert (=> b!182619 m!185793))

(assert (=> b!182619 m!184709))

(assert (=> b!182619 m!185779))

(assert (=> b!182616 m!185777))

(assert (=> b!182620 m!185777))

(assert (=> b!182621 m!185789))

(assert (=> b!182621 m!185791))

(assert (=> b!182621 m!185779))

(assert (=> b!182621 m!185781))

(assert (=> b!182621 m!185781))

(declare-fun m!185797 () Bool)

(assert (=> b!182621 m!185797))

(assert (=> b!182621 m!184709))

(assert (=> b!182621 m!185779))

(assert (=> b!182617 m!185791))

(assert (=> b!182617 m!184709))

(assert (=> b!182617 m!185779))

(assert (=> b!182617 m!185779))

(assert (=> b!182617 m!185793))

(assert (=> b!182617 m!185793))

(assert (=> b!182617 m!185795))

(assert (=> bm!8315 m!184709))

(declare-fun m!185799 () Bool)

(assert (=> bm!8315 m!185799))

(assert (=> b!182618 m!184709))

(declare-fun m!185801 () Bool)

(assert (=> b!182618 m!185801))

(assert (=> b!182615 m!185791))

(assert (=> b!182615 m!184709))

(assert (=> b!182615 m!185779))

(assert (=> b!182615 m!185779))

(assert (=> b!182615 m!185781))

(assert (=> b!182615 m!185781))

(assert (=> b!182615 m!185797))

(assert (=> b!181896 d!46216))

(declare-fun d!46234 () Bool)

(assert (=> d!46234 (= (seqFromList!484 (originalCharacters!596 (h!8447 tokens!465))) (fromListB!188 (originalCharacters!596 (h!8447 tokens!465))))))

(declare-fun bs!18181 () Bool)

(assert (= bs!18181 d!46234))

(declare-fun m!185803 () Bool)

(assert (=> bs!18181 m!185803))

(assert (=> b!181896 d!46234))

(declare-fun d!46236 () Bool)

(declare-fun dynLambda!1235 (Int Token!850) Bool)

(assert (=> d!46236 (dynLambda!1235 lambda!5394 (h!8447 tokens!465))))

(declare-fun lt!60446 () Unit!2798)

(declare-fun choose!1888 (List!3060 Int Token!850) Unit!2798)

(assert (=> d!46236 (= lt!60446 (choose!1888 tokens!465 lambda!5394 (h!8447 tokens!465)))))

(declare-fun e!111367 () Bool)

(assert (=> d!46236 e!111367))

(declare-fun res!82893 () Bool)

(assert (=> d!46236 (=> (not res!82893) (not e!111367))))

(assert (=> d!46236 (= res!82893 (forall!623 tokens!465 lambda!5394))))

(assert (=> d!46236 (= (forallContained!120 tokens!465 lambda!5394 (h!8447 tokens!465)) lt!60446)))

(declare-fun b!182625 () Bool)

(declare-fun contains!494 (List!3060 Token!850) Bool)

(assert (=> b!182625 (= e!111367 (contains!494 tokens!465 (h!8447 tokens!465)))))

(assert (= (and d!46236 res!82893) b!182625))

(declare-fun b_lambda!4389 () Bool)

(assert (=> (not b_lambda!4389) (not d!46236)))

(declare-fun m!185805 () Bool)

(assert (=> d!46236 m!185805))

(declare-fun m!185807 () Bool)

(assert (=> d!46236 m!185807))

(declare-fun m!185809 () Bool)

(assert (=> d!46236 m!185809))

(declare-fun m!185811 () Bool)

(assert (=> b!182625 m!185811))

(assert (=> b!181896 d!46236))

(declare-fun b!182636 () Bool)

(declare-fun res!82896 () Bool)

(declare-fun e!111374 () Bool)

(assert (=> b!182636 (=> res!82896 e!111374)))

(assert (=> b!182636 (= res!82896 (not ((_ is IntegerValue!1727) (value!20076 (h!8447 tokens!465)))))))

(declare-fun e!111375 () Bool)

(assert (=> b!182636 (= e!111375 e!111374)))

(declare-fun d!46238 () Bool)

(declare-fun c!35610 () Bool)

(assert (=> d!46238 (= c!35610 ((_ is IntegerValue!1725) (value!20076 (h!8447 tokens!465))))))

(declare-fun e!111376 () Bool)

(assert (=> d!46238 (= (inv!21 (value!20076 (h!8447 tokens!465))) e!111376)))

(declare-fun b!182637 () Bool)

(declare-fun inv!15 (TokenValue!575) Bool)

(assert (=> b!182637 (= e!111374 (inv!15 (value!20076 (h!8447 tokens!465))))))

(declare-fun b!182638 () Bool)

(declare-fun inv!17 (TokenValue!575) Bool)

(assert (=> b!182638 (= e!111375 (inv!17 (value!20076 (h!8447 tokens!465))))))

(declare-fun b!182639 () Bool)

(declare-fun inv!16 (TokenValue!575) Bool)

(assert (=> b!182639 (= e!111376 (inv!16 (value!20076 (h!8447 tokens!465))))))

(declare-fun b!182640 () Bool)

(assert (=> b!182640 (= e!111376 e!111375)))

(declare-fun c!35611 () Bool)

(assert (=> b!182640 (= c!35611 ((_ is IntegerValue!1726) (value!20076 (h!8447 tokens!465))))))

(assert (= (and d!46238 c!35610) b!182639))

(assert (= (and d!46238 (not c!35610)) b!182640))

(assert (= (and b!182640 c!35611) b!182638))

(assert (= (and b!182640 (not c!35611)) b!182636))

(assert (= (and b!182636 (not res!82896)) b!182637))

(declare-fun m!185813 () Bool)

(assert (=> b!182637 m!185813))

(declare-fun m!185815 () Bool)

(assert (=> b!182638 m!185815))

(declare-fun m!185817 () Bool)

(assert (=> b!182639 m!185817))

(assert (=> b!181875 d!46238))

(declare-fun d!46240 () Bool)

(declare-fun lt!60464 () BalanceConc!1864)

(declare-fun printListTailRec!68 (LexerInterface!439 List!3060 List!3058) List!3058)

(assert (=> d!46240 (= (list!1119 lt!60464) (printListTailRec!68 thiss!17480 (dropList!100 lt!60064 0) (list!1119 (BalanceConc!1865 Empty!928))))))

(declare-fun e!111382 () BalanceConc!1864)

(assert (=> d!46240 (= lt!60464 e!111382)))

(declare-fun c!35614 () Bool)

(assert (=> d!46240 (= c!35614 (>= 0 (size!2486 lt!60064)))))

(declare-fun e!111381 () Bool)

(assert (=> d!46240 e!111381))

(declare-fun res!82899 () Bool)

(assert (=> d!46240 (=> (not res!82899) (not e!111381))))

(assert (=> d!46240 (= res!82899 (>= 0 0))))

(assert (=> d!46240 (= (printTailRec!133 thiss!17480 lt!60064 0 (BalanceConc!1865 Empty!928)) lt!60464)))

(declare-fun b!182647 () Bool)

(assert (=> b!182647 (= e!111381 (<= 0 (size!2486 lt!60064)))))

(declare-fun b!182648 () Bool)

(assert (=> b!182648 (= e!111382 (BalanceConc!1865 Empty!928))))

(declare-fun b!182649 () Bool)

(assert (=> b!182649 (= e!111382 (printTailRec!133 thiss!17480 lt!60064 (+ 0 1) (++!720 (BalanceConc!1865 Empty!928) (charsOf!208 (apply!456 lt!60064 0)))))))

(declare-fun lt!60465 () List!3060)

(assert (=> b!182649 (= lt!60465 (list!1122 lt!60064))))

(declare-fun lt!60466 () Unit!2798)

(assert (=> b!182649 (= lt!60466 (lemmaDropApply!140 lt!60465 0))))

(assert (=> b!182649 (= (head!632 (drop!153 lt!60465 0)) (apply!457 lt!60465 0))))

(declare-fun lt!60463 () Unit!2798)

(assert (=> b!182649 (= lt!60463 lt!60466)))

(declare-fun lt!60461 () List!3060)

(assert (=> b!182649 (= lt!60461 (list!1122 lt!60064))))

(declare-fun lt!60467 () Unit!2798)

(assert (=> b!182649 (= lt!60467 (lemmaDropTail!132 lt!60461 0))))

(assert (=> b!182649 (= (tail!365 (drop!153 lt!60461 0)) (drop!153 lt!60461 (+ 0 1)))))

(declare-fun lt!60462 () Unit!2798)

(assert (=> b!182649 (= lt!60462 lt!60467)))

(assert (= (and d!46240 res!82899) b!182647))

(assert (= (and d!46240 c!35614) b!182648))

(assert (= (and d!46240 (not c!35614)) b!182649))

(declare-fun m!185819 () Bool)

(assert (=> d!46240 m!185819))

(declare-fun m!185821 () Bool)

(assert (=> d!46240 m!185821))

(declare-fun m!185823 () Bool)

(assert (=> d!46240 m!185823))

(assert (=> d!46240 m!185823))

(assert (=> d!46240 m!185819))

(declare-fun m!185825 () Bool)

(assert (=> d!46240 m!185825))

(declare-fun m!185827 () Bool)

(assert (=> d!46240 m!185827))

(assert (=> b!182647 m!185821))

(declare-fun m!185829 () Bool)

(assert (=> b!182649 m!185829))

(declare-fun m!185831 () Bool)

(assert (=> b!182649 m!185831))

(declare-fun m!185833 () Bool)

(assert (=> b!182649 m!185833))

(declare-fun m!185835 () Bool)

(assert (=> b!182649 m!185835))

(assert (=> b!182649 m!185829))

(declare-fun m!185837 () Bool)

(assert (=> b!182649 m!185837))

(assert (=> b!182649 m!185833))

(declare-fun m!185839 () Bool)

(assert (=> b!182649 m!185839))

(declare-fun m!185841 () Bool)

(assert (=> b!182649 m!185841))

(declare-fun m!185843 () Bool)

(assert (=> b!182649 m!185843))

(declare-fun m!185845 () Bool)

(assert (=> b!182649 m!185845))

(declare-fun m!185847 () Bool)

(assert (=> b!182649 m!185847))

(assert (=> b!182649 m!185835))

(assert (=> b!182649 m!185841))

(declare-fun m!185849 () Bool)

(assert (=> b!182649 m!185849))

(assert (=> b!182649 m!185845))

(declare-fun m!185851 () Bool)

(assert (=> b!182649 m!185851))

(declare-fun m!185853 () Bool)

(assert (=> b!182649 m!185853))

(assert (=> b!181897 d!46240))

(declare-fun d!46242 () Bool)

(declare-fun lt!60470 () BalanceConc!1864)

(assert (=> d!46242 (= (list!1119 lt!60470) (printList!123 thiss!17480 (list!1122 lt!60064)))))

(assert (=> d!46242 (= lt!60470 (printTailRec!133 thiss!17480 lt!60064 0 (BalanceConc!1865 Empty!928)))))

(assert (=> d!46242 (= (print!170 thiss!17480 lt!60064) lt!60470)))

(declare-fun bs!18182 () Bool)

(assert (= bs!18182 d!46242))

(declare-fun m!185855 () Bool)

(assert (=> bs!18182 m!185855))

(assert (=> bs!18182 m!185831))

(assert (=> bs!18182 m!185831))

(declare-fun m!185857 () Bool)

(assert (=> bs!18182 m!185857))

(assert (=> bs!18182 m!184665))

(assert (=> b!181897 d!46242))

(declare-fun d!46244 () Bool)

(declare-fun e!111385 () Bool)

(assert (=> d!46244 e!111385))

(declare-fun res!82902 () Bool)

(assert (=> d!46244 (=> (not res!82902) (not e!111385))))

(declare-fun lt!60473 () BalanceConc!1866)

(assert (=> d!46244 (= res!82902 (= (list!1122 lt!60473) (Cons!3050 (h!8447 tokens!465) Nil!3050)))))

(declare-fun singleton!49 (Token!850) BalanceConc!1866)

(assert (=> d!46244 (= lt!60473 (singleton!49 (h!8447 tokens!465)))))

(assert (=> d!46244 (= (singletonSeq!105 (h!8447 tokens!465)) lt!60473)))

(declare-fun b!182652 () Bool)

(declare-fun isBalanced!254 (Conc!929) Bool)

(assert (=> b!182652 (= e!111385 (isBalanced!254 (c!35475 lt!60473)))))

(assert (= (and d!46244 res!82902) b!182652))

(declare-fun m!185859 () Bool)

(assert (=> d!46244 m!185859))

(declare-fun m!185861 () Bool)

(assert (=> d!46244 m!185861))

(declare-fun m!185863 () Bool)

(assert (=> b!182652 m!185863))

(assert (=> b!181897 d!46244))

(declare-fun d!46246 () Bool)

(assert (=> d!46246 (= (list!1119 lt!60054) (list!1123 (c!35473 lt!60054)))))

(declare-fun bs!18183 () Bool)

(assert (= bs!18183 d!46246))

(declare-fun m!185865 () Bool)

(assert (=> bs!18183 m!185865))

(assert (=> b!181897 d!46246))

(declare-fun d!46248 () Bool)

(declare-fun c!35617 () Bool)

(assert (=> d!46248 (= c!35617 ((_ is Cons!3050) (Cons!3050 (h!8447 tokens!465) Nil!3050)))))

(declare-fun e!111388 () List!3058)

(assert (=> d!46248 (= (printList!123 thiss!17480 (Cons!3050 (h!8447 tokens!465) Nil!3050)) e!111388)))

(declare-fun b!182657 () Bool)

(assert (=> b!182657 (= e!111388 (++!718 (list!1119 (charsOf!208 (h!8447 (Cons!3050 (h!8447 tokens!465) Nil!3050)))) (printList!123 thiss!17480 (t!28346 (Cons!3050 (h!8447 tokens!465) Nil!3050)))))))

(declare-fun b!182658 () Bool)

(assert (=> b!182658 (= e!111388 Nil!3048)))

(assert (= (and d!46248 c!35617) b!182657))

(assert (= (and d!46248 (not c!35617)) b!182658))

(declare-fun m!185867 () Bool)

(assert (=> b!182657 m!185867))

(assert (=> b!182657 m!185867))

(declare-fun m!185869 () Bool)

(assert (=> b!182657 m!185869))

(declare-fun m!185871 () Bool)

(assert (=> b!182657 m!185871))

(assert (=> b!182657 m!185869))

(assert (=> b!182657 m!185871))

(declare-fun m!185873 () Bool)

(assert (=> b!182657 m!185873))

(assert (=> b!181897 d!46248))

(declare-fun d!46250 () Bool)

(assert (=> d!46250 (= (inv!3877 (tag!731 (h!8446 rules!1920))) (= (mod (str.len (value!20075 (tag!731 (h!8446 rules!1920)))) 2) 0))))

(assert (=> b!181876 d!46250))

(declare-fun d!46252 () Bool)

(declare-fun res!82903 () Bool)

(declare-fun e!111389 () Bool)

(assert (=> d!46252 (=> (not res!82903) (not e!111389))))

(assert (=> d!46252 (= res!82903 (semiInverseModEq!191 (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toValue!1224 (transformation!553 (h!8446 rules!1920)))))))

(assert (=> d!46252 (= (inv!3880 (transformation!553 (h!8446 rules!1920))) e!111389)))

(declare-fun b!182659 () Bool)

(assert (=> b!182659 (= e!111389 (equivClasses!174 (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toValue!1224 (transformation!553 (h!8446 rules!1920)))))))

(assert (= (and d!46252 res!82903) b!182659))

(declare-fun m!185875 () Bool)

(assert (=> d!46252 m!185875))

(declare-fun m!185877 () Bool)

(assert (=> b!182659 m!185877))

(assert (=> b!181876 d!46252))

(declare-fun d!46254 () Bool)

(declare-fun res!82904 () Bool)

(declare-fun e!111390 () Bool)

(assert (=> d!46254 (=> (not res!82904) (not e!111390))))

(assert (=> d!46254 (= res!82904 (not (isEmpty!1402 (originalCharacters!596 separatorToken!170))))))

(assert (=> d!46254 (= (inv!3881 separatorToken!170) e!111390)))

(declare-fun b!182660 () Bool)

(declare-fun res!82905 () Bool)

(assert (=> b!182660 (=> (not res!82905) (not e!111390))))

(assert (=> b!182660 (= res!82905 (= (originalCharacters!596 separatorToken!170) (list!1119 (dynLambda!1234 (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (value!20076 separatorToken!170)))))))

(declare-fun b!182661 () Bool)

(assert (=> b!182661 (= e!111390 (= (size!2483 separatorToken!170) (size!2488 (originalCharacters!596 separatorToken!170))))))

(assert (= (and d!46254 res!82904) b!182660))

(assert (= (and b!182660 res!82905) b!182661))

(declare-fun b_lambda!4391 () Bool)

(assert (=> (not b_lambda!4391) (not b!182660)))

(assert (=> b!182660 t!28365))

(declare-fun b_and!12507 () Bool)

(assert (= b_and!12487 (and (=> t!28365 result!10396) b_and!12507)))

(assert (=> b!182660 t!28367))

(declare-fun b_and!12509 () Bool)

(assert (= b_and!12489 (and (=> t!28367 result!10400) b_and!12509)))

(assert (=> b!182660 t!28369))

(declare-fun b_and!12511 () Bool)

(assert (= b_and!12491 (and (=> t!28369 result!10402) b_and!12511)))

(declare-fun m!185879 () Bool)

(assert (=> d!46254 m!185879))

(assert (=> b!182660 m!185123))

(assert (=> b!182660 m!185123))

(declare-fun m!185881 () Bool)

(assert (=> b!182660 m!185881))

(declare-fun m!185883 () Bool)

(assert (=> b!182661 m!185883))

(assert (=> start!19666 d!46254))

(declare-fun d!46256 () Bool)

(declare-fun res!82910 () Bool)

(declare-fun e!111395 () Bool)

(assert (=> d!46256 (=> res!82910 e!111395)))

(assert (=> d!46256 (= res!82910 ((_ is Nil!3050) tokens!465))))

(assert (=> d!46256 (= (forall!623 tokens!465 lambda!5393) e!111395)))

(declare-fun b!182666 () Bool)

(declare-fun e!111396 () Bool)

(assert (=> b!182666 (= e!111395 e!111396)))

(declare-fun res!82911 () Bool)

(assert (=> b!182666 (=> (not res!82911) (not e!111396))))

(assert (=> b!182666 (= res!82911 (dynLambda!1235 lambda!5393 (h!8447 tokens!465)))))

(declare-fun b!182667 () Bool)

(assert (=> b!182667 (= e!111396 (forall!623 (t!28346 tokens!465) lambda!5393))))

(assert (= (and d!46256 (not res!82910)) b!182666))

(assert (= (and b!182666 res!82911) b!182667))

(declare-fun b_lambda!4393 () Bool)

(assert (=> (not b_lambda!4393) (not b!182666)))

(declare-fun m!185885 () Bool)

(assert (=> b!182666 m!185885))

(declare-fun m!185887 () Bool)

(assert (=> b!182667 m!185887))

(assert (=> b!181894 d!46256))

(declare-fun bs!18184 () Bool)

(declare-fun d!46258 () Bool)

(assert (= bs!18184 (and d!46258 d!46058)))

(declare-fun lambda!5434 () Int)

(assert (=> bs!18184 (not (= lambda!5434 lambda!5419))))

(declare-fun bs!18185 () Bool)

(assert (= bs!18185 (and d!46258 b!182160)))

(assert (=> bs!18185 (= lambda!5434 lambda!5420)))

(declare-fun bs!18186 () Bool)

(assert (= bs!18186 (and d!46258 b!182250)))

(assert (=> bs!18186 (= lambda!5434 lambda!5422)))

(declare-fun bs!18187 () Bool)

(assert (= bs!18187 (and d!46258 d!46106)))

(assert (=> bs!18187 (not (= lambda!5434 lambda!5421))))

(declare-fun bs!18188 () Bool)

(assert (= bs!18188 (and d!46258 b!182109)))

(assert (=> bs!18188 (= lambda!5434 lambda!5414)))

(declare-fun bs!18189 () Bool)

(assert (= bs!18189 (and d!46258 b!181894)))

(assert (=> bs!18189 (not (= lambda!5434 lambda!5393))))

(declare-fun bs!18190 () Bool)

(assert (= bs!18190 (and d!46258 b!181896)))

(assert (=> bs!18190 (= lambda!5434 lambda!5394)))

(declare-fun bs!18191 () Bool)

(assert (= bs!18191 (and d!46258 b!182261)))

(assert (=> bs!18191 (= lambda!5434 lambda!5423)))

(declare-fun b!182673 () Bool)

(declare-fun e!111402 () Bool)

(assert (=> b!182673 (= e!111402 true)))

(declare-fun b!182672 () Bool)

(declare-fun e!111401 () Bool)

(assert (=> b!182672 (= e!111401 e!111402)))

(declare-fun b!182671 () Bool)

(declare-fun e!111400 () Bool)

(assert (=> b!182671 (= e!111400 e!111401)))

(assert (=> d!46258 e!111400))

(assert (= b!182672 b!182673))

(assert (= b!182671 b!182672))

(assert (= (and d!46258 ((_ is Cons!3049) rules!1920)) b!182671))

(assert (=> b!182673 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5434))))

(assert (=> b!182673 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 rules!1920)))) (dynLambda!1230 order!1795 lambda!5434))))

(assert (=> d!46258 true))

(declare-fun e!111399 () Bool)

(assert (=> d!46258 e!111399))

(declare-fun res!82914 () Bool)

(assert (=> d!46258 (=> (not res!82914) (not e!111399))))

(declare-fun lt!60476 () Bool)

(assert (=> d!46258 (= res!82914 (= lt!60476 (forall!623 (list!1122 lt!60072) lambda!5434)))))

(declare-fun forall!627 (BalanceConc!1866 Int) Bool)

(assert (=> d!46258 (= lt!60476 (forall!627 lt!60072 lambda!5434))))

(assert (=> d!46258 (not (isEmpty!1401 rules!1920))))

(assert (=> d!46258 (= (rulesProduceEachTokenIndividually!231 thiss!17480 rules!1920 lt!60072) lt!60476)))

(declare-fun b!182670 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!133 (LexerInterface!439 List!3059 List!3060) Bool)

(assert (=> b!182670 (= e!111399 (= lt!60476 (rulesProduceEachTokenIndividuallyList!133 thiss!17480 rules!1920 (list!1122 lt!60072))))))

(assert (= (and d!46258 res!82914) b!182670))

(assert (=> d!46258 m!185277))

(assert (=> d!46258 m!185277))

(declare-fun m!185889 () Bool)

(assert (=> d!46258 m!185889))

(declare-fun m!185891 () Bool)

(assert (=> d!46258 m!185891))

(assert (=> d!46258 m!184703))

(assert (=> b!182670 m!185277))

(assert (=> b!182670 m!185277))

(declare-fun m!185893 () Bool)

(assert (=> b!182670 m!185893))

(assert (=> b!181873 d!46258))

(declare-fun d!46260 () Bool)

(assert (=> d!46260 (= (seqFromList!483 tokens!465) (fromListB!189 tokens!465))))

(declare-fun bs!18192 () Bool)

(assert (= bs!18192 d!46260))

(declare-fun m!185895 () Bool)

(assert (=> bs!18192 m!185895))

(assert (=> b!181873 d!46260))

(declare-fun b!182674 () Bool)

(declare-fun res!82915 () Bool)

(declare-fun e!111403 () Bool)

(assert (=> b!182674 (=> res!82915 e!111403)))

(assert (=> b!182674 (= res!82915 (not ((_ is IntegerValue!1727) (value!20076 separatorToken!170))))))

(declare-fun e!111404 () Bool)

(assert (=> b!182674 (= e!111404 e!111403)))

(declare-fun d!46262 () Bool)

(declare-fun c!35618 () Bool)

(assert (=> d!46262 (= c!35618 ((_ is IntegerValue!1725) (value!20076 separatorToken!170)))))

(declare-fun e!111405 () Bool)

(assert (=> d!46262 (= (inv!21 (value!20076 separatorToken!170)) e!111405)))

(declare-fun b!182675 () Bool)

(assert (=> b!182675 (= e!111403 (inv!15 (value!20076 separatorToken!170)))))

(declare-fun b!182676 () Bool)

(assert (=> b!182676 (= e!111404 (inv!17 (value!20076 separatorToken!170)))))

(declare-fun b!182677 () Bool)

(assert (=> b!182677 (= e!111405 (inv!16 (value!20076 separatorToken!170)))))

(declare-fun b!182678 () Bool)

(assert (=> b!182678 (= e!111405 e!111404)))

(declare-fun c!35619 () Bool)

(assert (=> b!182678 (= c!35619 ((_ is IntegerValue!1726) (value!20076 separatorToken!170)))))

(assert (= (and d!46262 c!35618) b!182677))

(assert (= (and d!46262 (not c!35618)) b!182678))

(assert (= (and b!182678 c!35619) b!182676))

(assert (= (and b!182678 (not c!35619)) b!182674))

(assert (= (and b!182674 (not res!82915)) b!182675))

(declare-fun m!185897 () Bool)

(assert (=> b!182675 m!185897))

(declare-fun m!185899 () Bool)

(assert (=> b!182676 m!185899))

(declare-fun m!185901 () Bool)

(assert (=> b!182677 m!185901))

(assert (=> b!181895 d!46262))

(declare-fun b!182692 () Bool)

(declare-fun b_free!7101 () Bool)

(declare-fun b_next!7101 () Bool)

(assert (=> b!182692 (= b_free!7101 (not b_next!7101))))

(declare-fun tp!86700 () Bool)

(declare-fun b_and!12513 () Bool)

(assert (=> b!182692 (= tp!86700 b_and!12513)))

(declare-fun b_free!7103 () Bool)

(declare-fun b_next!7103 () Bool)

(assert (=> b!182692 (= b_free!7103 (not b_next!7103))))

(declare-fun t!28404 () Bool)

(declare-fun tb!7609 () Bool)

(assert (=> (and b!182692 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170)))) t!28404) tb!7609))

(declare-fun result!10442 () Bool)

(assert (= result!10442 result!10396))

(assert (=> d!46066 t!28404))

(declare-fun t!28406 () Bool)

(declare-fun tb!7611 () Bool)

(assert (=> (and b!182692 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465))))) t!28406) tb!7611))

(declare-fun result!10444 () Bool)

(assert (= result!10444 result!10404))

(assert (=> d!46078 t!28406))

(assert (=> b!182479 t!28406))

(assert (=> b!182660 t!28404))

(declare-fun tp!86698 () Bool)

(declare-fun b_and!12515 () Bool)

(assert (=> b!182692 (= tp!86698 (and (=> t!28404 result!10442) (=> t!28406 result!10444) b_and!12515))))

(declare-fun e!111423 () Bool)

(assert (=> b!181900 (= tp!86612 e!111423)))

(declare-fun tp!86697 () Bool)

(declare-fun e!111420 () Bool)

(declare-fun b!182691 () Bool)

(declare-fun e!111421 () Bool)

(assert (=> b!182691 (= e!111421 (and tp!86697 (inv!3877 (tag!731 (rule!1068 (h!8447 (t!28346 tokens!465))))) (inv!3880 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) e!111420))))

(assert (=> b!182692 (= e!111420 (and tp!86700 tp!86698))))

(declare-fun b!182689 () Bool)

(declare-fun e!111419 () Bool)

(declare-fun tp!86699 () Bool)

(assert (=> b!182689 (= e!111423 (and (inv!3881 (h!8447 (t!28346 tokens!465))) e!111419 tp!86699))))

(declare-fun b!182690 () Bool)

(declare-fun tp!86696 () Bool)

(assert (=> b!182690 (= e!111419 (and (inv!21 (value!20076 (h!8447 (t!28346 tokens!465)))) e!111421 tp!86696))))

(assert (= b!182691 b!182692))

(assert (= b!182690 b!182691))

(assert (= b!182689 b!182690))

(assert (= (and b!181900 ((_ is Cons!3050) (t!28346 tokens!465))) b!182689))

(declare-fun m!185903 () Bool)

(assert (=> b!182691 m!185903))

(declare-fun m!185905 () Bool)

(assert (=> b!182691 m!185905))

(declare-fun m!185907 () Bool)

(assert (=> b!182689 m!185907))

(declare-fun m!185909 () Bool)

(assert (=> b!182690 m!185909))

(declare-fun b!182704 () Bool)

(declare-fun e!111426 () Bool)

(declare-fun tp!86715 () Bool)

(declare-fun tp!86714 () Bool)

(assert (=> b!182704 (= e!111426 (and tp!86715 tp!86714))))

(declare-fun b!182706 () Bool)

(declare-fun tp!86711 () Bool)

(declare-fun tp!86712 () Bool)

(assert (=> b!182706 (= e!111426 (and tp!86711 tp!86712))))

(declare-fun b!182703 () Bool)

(declare-fun tp_is_empty!1679 () Bool)

(assert (=> b!182703 (= e!111426 tp_is_empty!1679)))

(declare-fun b!182705 () Bool)

(declare-fun tp!86713 () Bool)

(assert (=> b!182705 (= e!111426 tp!86713)))

(assert (=> b!181879 (= tp!86620 e!111426)))

(assert (= (and b!181879 ((_ is ElementMatch!777) (regex!553 (rule!1068 separatorToken!170)))) b!182703))

(assert (= (and b!181879 ((_ is Concat!1353) (regex!553 (rule!1068 separatorToken!170)))) b!182704))

(assert (= (and b!181879 ((_ is Star!777) (regex!553 (rule!1068 separatorToken!170)))) b!182705))

(assert (= (and b!181879 ((_ is Union!777) (regex!553 (rule!1068 separatorToken!170)))) b!182706))

(declare-fun b!182709 () Bool)

(declare-fun e!111429 () Bool)

(assert (=> b!182709 (= e!111429 true)))

(declare-fun b!182708 () Bool)

(declare-fun e!111428 () Bool)

(assert (=> b!182708 (= e!111428 e!111429)))

(declare-fun b!182707 () Bool)

(declare-fun e!111427 () Bool)

(assert (=> b!182707 (= e!111427 e!111428)))

(assert (=> b!181914 e!111427))

(assert (= b!182708 b!182709))

(assert (= b!182707 b!182708))

(assert (= (and b!181914 ((_ is Cons!3049) (t!28345 rules!1920))) b!182707))

(assert (=> b!182709 (< (dynLambda!1229 order!1793 (toValue!1224 (transformation!553 (h!8446 (t!28345 rules!1920))))) (dynLambda!1230 order!1795 lambda!5394))))

(assert (=> b!182709 (< (dynLambda!1231 order!1797 (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920))))) (dynLambda!1230 order!1795 lambda!5394))))

(declare-fun b!182714 () Bool)

(declare-fun e!111432 () Bool)

(declare-fun tp!86718 () Bool)

(assert (=> b!182714 (= e!111432 (and tp_is_empty!1679 tp!86718))))

(assert (=> b!181875 (= tp!86610 e!111432)))

(assert (= (and b!181875 ((_ is Cons!3048) (originalCharacters!596 (h!8447 tokens!465)))) b!182714))

(declare-fun b!182716 () Bool)

(declare-fun e!111433 () Bool)

(declare-fun tp!86723 () Bool)

(declare-fun tp!86722 () Bool)

(assert (=> b!182716 (= e!111433 (and tp!86723 tp!86722))))

(declare-fun b!182718 () Bool)

(declare-fun tp!86719 () Bool)

(declare-fun tp!86720 () Bool)

(assert (=> b!182718 (= e!111433 (and tp!86719 tp!86720))))

(declare-fun b!182715 () Bool)

(assert (=> b!182715 (= e!111433 tp_is_empty!1679)))

(declare-fun b!182717 () Bool)

(declare-fun tp!86721 () Bool)

(assert (=> b!182717 (= e!111433 tp!86721)))

(assert (=> b!181876 (= tp!86616 e!111433)))

(assert (= (and b!181876 ((_ is ElementMatch!777) (regex!553 (h!8446 rules!1920)))) b!182715))

(assert (= (and b!181876 ((_ is Concat!1353) (regex!553 (h!8446 rules!1920)))) b!182716))

(assert (= (and b!181876 ((_ is Star!777) (regex!553 (h!8446 rules!1920)))) b!182717))

(assert (= (and b!181876 ((_ is Union!777) (regex!553 (h!8446 rules!1920)))) b!182718))

(declare-fun b!182720 () Bool)

(declare-fun e!111434 () Bool)

(declare-fun tp!86728 () Bool)

(declare-fun tp!86727 () Bool)

(assert (=> b!182720 (= e!111434 (and tp!86728 tp!86727))))

(declare-fun b!182722 () Bool)

(declare-fun tp!86724 () Bool)

(declare-fun tp!86725 () Bool)

(assert (=> b!182722 (= e!111434 (and tp!86724 tp!86725))))

(declare-fun b!182719 () Bool)

(assert (=> b!182719 (= e!111434 tp_is_empty!1679)))

(declare-fun b!182721 () Bool)

(declare-fun tp!86726 () Bool)

(assert (=> b!182721 (= e!111434 tp!86726)))

(assert (=> b!181882 (= tp!86619 e!111434)))

(assert (= (and b!181882 ((_ is ElementMatch!777) (regex!553 (rule!1068 (h!8447 tokens!465))))) b!182719))

(assert (= (and b!181882 ((_ is Concat!1353) (regex!553 (rule!1068 (h!8447 tokens!465))))) b!182720))

(assert (= (and b!181882 ((_ is Star!777) (regex!553 (rule!1068 (h!8447 tokens!465))))) b!182721))

(assert (= (and b!181882 ((_ is Union!777) (regex!553 (rule!1068 (h!8447 tokens!465))))) b!182722))

(declare-fun b!182733 () Bool)

(declare-fun b_free!7105 () Bool)

(declare-fun b_next!7105 () Bool)

(assert (=> b!182733 (= b_free!7105 (not b_next!7105))))

(declare-fun tp!86740 () Bool)

(declare-fun b_and!12517 () Bool)

(assert (=> b!182733 (= tp!86740 b_and!12517)))

(declare-fun b_free!7107 () Bool)

(declare-fun b_next!7107 () Bool)

(assert (=> b!182733 (= b_free!7107 (not b_next!7107))))

(declare-fun t!28408 () Bool)

(declare-fun tb!7613 () Bool)

(assert (=> (and b!182733 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170)))) t!28408) tb!7613))

(declare-fun result!10452 () Bool)

(assert (= result!10452 result!10396))

(assert (=> d!46066 t!28408))

(declare-fun tb!7615 () Bool)

(declare-fun t!28410 () Bool)

(assert (=> (and b!182733 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465))))) t!28410) tb!7615))

(declare-fun result!10454 () Bool)

(assert (= result!10454 result!10404))

(assert (=> d!46078 t!28410))

(assert (=> b!182479 t!28410))

(assert (=> b!182660 t!28408))

(declare-fun tp!86737 () Bool)

(declare-fun b_and!12519 () Bool)

(assert (=> b!182733 (= tp!86737 (and (=> t!28408 result!10452) (=> t!28410 result!10454) b_and!12519))))

(declare-fun e!111444 () Bool)

(assert (=> b!182733 (= e!111444 (and tp!86740 tp!86737))))

(declare-fun tp!86739 () Bool)

(declare-fun e!111446 () Bool)

(declare-fun b!182732 () Bool)

(assert (=> b!182732 (= e!111446 (and tp!86739 (inv!3877 (tag!731 (h!8446 (t!28345 rules!1920)))) (inv!3880 (transformation!553 (h!8446 (t!28345 rules!1920)))) e!111444))))

(declare-fun b!182731 () Bool)

(declare-fun e!111445 () Bool)

(declare-fun tp!86738 () Bool)

(assert (=> b!182731 (= e!111445 (and e!111446 tp!86738))))

(assert (=> b!181893 (= tp!86618 e!111445)))

(assert (= b!182732 b!182733))

(assert (= b!182731 b!182732))

(assert (= (and b!181893 ((_ is Cons!3049) (t!28345 rules!1920))) b!182731))

(declare-fun m!185911 () Bool)

(assert (=> b!182732 m!185911))

(declare-fun m!185913 () Bool)

(assert (=> b!182732 m!185913))

(declare-fun b!182734 () Bool)

(declare-fun e!111447 () Bool)

(declare-fun tp!86741 () Bool)

(assert (=> b!182734 (= e!111447 (and tp_is_empty!1679 tp!86741))))

(assert (=> b!181895 (= tp!86614 e!111447)))

(assert (= (and b!181895 ((_ is Cons!3048) (originalCharacters!596 separatorToken!170))) b!182734))

(declare-fun b_lambda!4395 () Bool)

(assert (= b_lambda!4389 (or b!181896 b_lambda!4395)))

(declare-fun bs!18193 () Bool)

(declare-fun d!46264 () Bool)

(assert (= bs!18193 (and d!46264 b!181896)))

(assert (=> bs!18193 (= (dynLambda!1235 lambda!5394 (h!8447 tokens!465)) (rulesProduceIndividualToken!188 thiss!17480 rules!1920 (h!8447 tokens!465)))))

(assert (=> bs!18193 m!184727))

(assert (=> d!46236 d!46264))

(declare-fun b_lambda!4397 () Bool)

(assert (= b_lambda!4363 (or (and b!181881 b_free!7087) (and b!182733 b_free!7107 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!181899 b_free!7083 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!181892 b_free!7091 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!182692 b_free!7103 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) b_lambda!4397)))

(declare-fun b_lambda!4399 () Bool)

(assert (= b_lambda!4393 (or b!181894 b_lambda!4399)))

(declare-fun bs!18194 () Bool)

(declare-fun d!46266 () Bool)

(assert (= bs!18194 (and d!46266 b!181894)))

(assert (=> bs!18194 (= (dynLambda!1235 lambda!5393 (h!8447 tokens!465)) (not (isSeparator!553 (rule!1068 (h!8447 tokens!465)))))))

(assert (=> b!182666 d!46266))

(declare-fun b_lambda!4401 () Bool)

(assert (= b_lambda!4365 (or (and b!181899 b_free!7083 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!181892 b_free!7091) (and b!181881 b_free!7087 (= (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!182733 b_free!7107 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!182692 b_free!7103 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) b_lambda!4401)))

(declare-fun b_lambda!4403 () Bool)

(assert (= b_lambda!4391 (or (and b!181881 b_free!7087) (and b!182733 b_free!7107 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!181899 b_free!7083 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!181892 b_free!7091 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) (and b!182692 b_free!7103 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))))) b_lambda!4403)))

(declare-fun b_lambda!4405 () Bool)

(assert (= b_lambda!4373 (or (and b!181899 b_free!7083 (= (toChars!1083 (transformation!553 (h!8446 rules!1920))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!181892 b_free!7091) (and b!181881 b_free!7087 (= (toChars!1083 (transformation!553 (rule!1068 separatorToken!170))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!182733 b_free!7107 (= (toChars!1083 (transformation!553 (h!8446 (t!28345 rules!1920)))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) (and b!182692 b_free!7103 (= (toChars!1083 (transformation!553 (rule!1068 (h!8447 (t!28346 tokens!465))))) (toChars!1083 (transformation!553 (rule!1068 (h!8447 tokens!465)))))) b_lambda!4405)))

(check-sat (not b!182621) (not b!182464) (not b!182264) (not b!182479) (not b!182036) b_and!12453 (not d!46104) (not b!182522) (not b!182248) (not b!182184) (not b!182458) (not d!46252) (not b!182457) (not bm!8265) (not d!46030) (not b!182037) (not b!182252) (not b!181992) (not bs!18193) (not b!182513) (not b!182675) (not b!182240) (not b_next!7081) (not b!182474) (not b!182617) (not bm!8292) (not b!182618) (not b!182455) (not bm!8295) (not b!182480) (not b!182469) (not b!182649) (not b!182471) (not d!46240) (not b!182512) (not bm!8309) (not b!182192) (not b!182515) (not b!182671) (not d!46082) (not d!46058) (not b_lambda!4395) (not b!182156) (not b!182619) (not b!182720) b_and!12511 (not b_lambda!4403) (not d!46196) (not b!182035) (not b_next!7089) (not b!182616) (not d!46210) b_and!12449 (not b_lambda!4399) (not b!182189) (not b!182197) (not b!182734) (not b_next!7103) (not b!182732) (not b!182278) (not b!182198) b_and!12513 (not b!182637) (not b!182706) (not bm!8282) (not b!182704) (not d!46206) (not b!182195) (not d!46074) (not d!46204) (not b!182158) (not b!182244) (not d!46036) (not d!46068) (not d!46212) (not b!182160) (not d!46040) (not b!182647) (not b!182718) (not b!182690) b_and!12519 (not b!182705) (not b!182716) (not b!182279) (not d!46072) (not d!46086) (not b!182238) (not d!46070) (not b!182652) (not b!182691) (not b!182638) (not b!182185) (not b_lambda!4397) (not b!182625) (not b_next!7087) (not d!46202) (not b!182615) (not d!46092) (not b!181991) (not b_next!7105) (not b!182163) (not b_next!7101) (not b!182676) (not b!182303) (not b!182707) (not b!182038) (not b!182657) (not b_next!7083) (not d!46014) (not d!46078) (not b!182250) (not b!182206) (not b!182257) (not b_next!7107) (not b!182660) (not b!182468) (not b!182620) (not b!182273) (not b!182237) (not b!182510) (not bm!8289) (not d!46106) (not b!182304) (not bm!8285) b_and!12515 (not b!182731) (not d!46080) (not b!182112) (not d!46214) (not b!182670) (not b!182157) (not b!182174) (not d!46234) (not tb!7583) (not d!46076) (not b!182305) (not d!46258) (not b!182639) (not b!182243) (not b!182717) (not bm!8315) (not d!46090) (not b!182261) (not b!182472) (not b!182245) tp_is_empty!1679 (not b_next!7091) (not b!182162) (not b!182466) (not bm!8281) (not b!182473) (not bm!8278) (not bm!8286) (not b!182108) (not tb!7577) (not b!182714) (not b!182689) (not b!182247) (not b_lambda!4405) (not bm!8293) b_and!12507 (not bm!8290) (not b!182661) (not d!46042) (not b!182722) (not b!182253) (not b_next!7085) (not d!46216) (not bm!8266) (not d!46094) (not d!46130) (not d!46242) (not b!182193) (not d!46246) (not b!182262) (not b!182516) (not b!182268) (not b!182201) (not d!46236) (not d!46244) (not b!182467) (not b!182188) (not b!182246) (not b_lambda!4401) (not bm!8264) (not d!46254) (not d!46114) (not d!46032) (not b!182677) b_and!12445 (not d!46066) (not b!182260) (not b!182659) (not d!46260) (not d!46096) (not b!182481) (not d!46120) b_and!12517 (not b!182721) (not b!181993) (not bm!8312) (not b!182239) (not b!182667) (not b!182116) (not b!182110) (not b!182109) (not b!182242) (not d!46116) (not b!182456) (not d!46112) b_and!12509 (not bm!8263) (not d!46038) (not bm!8294) (not b!182465) (not b!182167) (not b!182459) (not b!182202))
(check-sat b_and!12453 (not b_next!7081) b_and!12511 (not b_next!7089) b_and!12513 b_and!12519 (not b_next!7087) b_and!12515 (not b_next!7091) b_and!12507 (not b_next!7085) b_and!12445 b_and!12517 b_and!12509 b_and!12449 (not b_next!7103) (not b_next!7105) (not b_next!7101) (not b_next!7083) (not b_next!7107))
