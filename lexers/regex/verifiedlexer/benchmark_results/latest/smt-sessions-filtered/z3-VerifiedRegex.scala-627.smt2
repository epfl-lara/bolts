; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20490 () Bool)

(assert start!20490)

(declare-fun b!188886 () Bool)

(declare-fun b_free!7449 () Bool)

(declare-fun b_next!7449 () Bool)

(assert (=> b!188886 (= b_free!7449 (not b_next!7449))))

(declare-fun tp!88152 () Bool)

(declare-fun b_and!13053 () Bool)

(assert (=> b!188886 (= tp!88152 b_and!13053)))

(declare-fun b_free!7451 () Bool)

(declare-fun b_next!7451 () Bool)

(assert (=> b!188886 (= b_free!7451 (not b_next!7451))))

(declare-fun tp!88147 () Bool)

(declare-fun b_and!13055 () Bool)

(assert (=> b!188886 (= tp!88147 b_and!13055)))

(declare-fun b!188914 () Bool)

(declare-fun b_free!7453 () Bool)

(declare-fun b_next!7453 () Bool)

(assert (=> b!188914 (= b_free!7453 (not b_next!7453))))

(declare-fun tp!88150 () Bool)

(declare-fun b_and!13057 () Bool)

(assert (=> b!188914 (= tp!88150 b_and!13057)))

(declare-fun b_free!7455 () Bool)

(declare-fun b_next!7455 () Bool)

(assert (=> b!188914 (= b_free!7455 (not b_next!7455))))

(declare-fun tp!88149 () Bool)

(declare-fun b_and!13059 () Bool)

(assert (=> b!188914 (= tp!88149 b_and!13059)))

(declare-fun b!188919 () Bool)

(declare-fun b_free!7457 () Bool)

(declare-fun b_next!7457 () Bool)

(assert (=> b!188919 (= b_free!7457 (not b_next!7457))))

(declare-fun tp!88154 () Bool)

(declare-fun b_and!13061 () Bool)

(assert (=> b!188919 (= tp!88154 b_and!13061)))

(declare-fun b_free!7459 () Bool)

(declare-fun b_next!7459 () Bool)

(assert (=> b!188919 (= b_free!7459 (not b_next!7459))))

(declare-fun tp!88146 () Bool)

(declare-fun b_and!13063 () Bool)

(assert (=> b!188919 (= tp!88146 b_and!13063)))

(declare-fun bs!18746 () Bool)

(declare-fun b!188887 () Bool)

(declare-fun b!188897 () Bool)

(assert (= bs!18746 (and b!188887 b!188897)))

(declare-fun lambda!5740 () Int)

(declare-fun lambda!5739 () Int)

(assert (=> bs!18746 (not (= lambda!5740 lambda!5739))))

(declare-fun b!188932 () Bool)

(declare-fun e!115807 () Bool)

(assert (=> b!188932 (= e!115807 true)))

(declare-fun b!188931 () Bool)

(declare-fun e!115806 () Bool)

(assert (=> b!188931 (= e!115806 e!115807)))

(declare-fun b!188930 () Bool)

(declare-fun e!115805 () Bool)

(assert (=> b!188930 (= e!115805 e!115806)))

(assert (=> b!188887 e!115805))

(assert (= b!188931 b!188932))

(assert (= b!188930 b!188931))

(declare-datatypes ((List!3163 0))(
  ( (Nil!3153) (Cons!3153 (h!8550 (_ BitVec 16)) (t!28829 List!3163)) )
))
(declare-datatypes ((TokenValue!599 0))(
  ( (FloatLiteralValue!1198 (text!4638 List!3163)) (TokenValueExt!598 (__x!2685 Int)) (Broken!2995 (value!20734 List!3163)) (Object!608) (End!599) (Def!599) (Underscore!599) (Match!599) (Else!599) (Error!599) (Case!599) (If!599) (Extends!599) (Abstract!599) (Class!599) (Val!599) (DelimiterValue!1198 (del!659 List!3163)) (KeywordValue!605 (value!20735 List!3163)) (CommentValue!1198 (value!20736 List!3163)) (WhitespaceValue!1198 (value!20737 List!3163)) (IndentationValue!599 (value!20738 List!3163)) (String!4074) (Int32!599) (Broken!2996 (value!20739 List!3163)) (Boolean!600) (Unit!2955) (OperatorValue!602 (op!659 List!3163)) (IdentifierValue!1198 (value!20740 List!3163)) (IdentifierValue!1199 (value!20741 List!3163)) (WhitespaceValue!1199 (value!20742 List!3163)) (True!1198) (False!1198) (Broken!2997 (value!20743 List!3163)) (Broken!2998 (value!20744 List!3163)) (True!1199) (RightBrace!599) (RightBracket!599) (Colon!599) (Null!599) (Comma!599) (LeftBracket!599) (False!1199) (LeftBrace!599) (ImaginaryLiteralValue!599 (text!4639 List!3163)) (StringLiteralValue!1797 (value!20745 List!3163)) (EOFValue!599 (value!20746 List!3163)) (IdentValue!599 (value!20747 List!3163)) (DelimiterValue!1199 (value!20748 List!3163)) (DedentValue!599 (value!20749 List!3163)) (NewLineValue!599 (value!20750 List!3163)) (IntegerValue!1797 (value!20751 (_ BitVec 32)) (text!4640 List!3163)) (IntegerValue!1798 (value!20752 Int) (text!4641 List!3163)) (Times!599) (Or!599) (Equal!599) (Minus!599) (Broken!2999 (value!20753 List!3163)) (And!599) (Div!599) (LessEqual!599) (Mod!599) (Concat!1400) (Not!599) (Plus!599) (SpaceValue!599 (value!20754 List!3163)) (IntegerValue!1799 (value!20755 Int) (text!4642 List!3163)) (StringLiteralValue!1798 (text!4643 List!3163)) (FloatLiteralValue!1199 (text!4644 List!3163)) (BytesLiteralValue!599 (value!20756 List!3163)) (CommentValue!1199 (value!20757 List!3163)) (StringLiteralValue!1799 (value!20758 List!3163)) (ErrorTokenValue!599 (msg!660 List!3163)) )
))
(declare-datatypes ((C!2524 0))(
  ( (C!2525 (val!1148 Int)) )
))
(declare-datatypes ((List!3164 0))(
  ( (Nil!3154) (Cons!3154 (h!8551 C!2524) (t!28830 List!3164)) )
))
(declare-datatypes ((IArray!1953 0))(
  ( (IArray!1954 (innerList!1034 List!3164)) )
))
(declare-datatypes ((Conc!976 0))(
  ( (Node!976 (left!2475 Conc!976) (right!2805 Conc!976) (csize!2182 Int) (cheight!1187 Int)) (Leaf!1604 (xs!3571 IArray!1953) (csize!2183 Int)) (Empty!976) )
))
(declare-datatypes ((BalanceConc!1960 0))(
  ( (BalanceConc!1961 (c!36313 Conc!976)) )
))
(declare-datatypes ((TokenValueInjection!970 0))(
  ( (TokenValueInjection!971 (toValue!1248 Int) (toChars!1107 Int)) )
))
(declare-datatypes ((Regex!801 0))(
  ( (ElementMatch!801 (c!36314 C!2524)) (Concat!1401 (regOne!2114 Regex!801) (regTwo!2114 Regex!801)) (EmptyExpr!801) (Star!801 (reg!1130 Regex!801)) (EmptyLang!801) (Union!801 (regOne!2115 Regex!801) (regTwo!2115 Regex!801)) )
))
(declare-datatypes ((String!4075 0))(
  ( (String!4076 (value!20759 String)) )
))
(declare-datatypes ((Rule!954 0))(
  ( (Rule!955 (regex!577 Regex!801) (tag!755 String!4075) (isSeparator!577 Bool) (transformation!577 TokenValueInjection!970)) )
))
(declare-datatypes ((List!3165 0))(
  ( (Nil!3155) (Cons!3155 (h!8552 Rule!954) (t!28831 List!3165)) )
))
(declare-fun rules!1920 () List!3165)

(get-info :version)

(assert (= (and b!188887 ((_ is Cons!3155) rules!1920)) b!188930))

(declare-fun order!1937 () Int)

(declare-fun order!1939 () Int)

(declare-fun dynLambda!1321 (Int Int) Int)

(declare-fun dynLambda!1322 (Int Int) Int)

(assert (=> b!188932 (< (dynLambda!1321 order!1937 (toValue!1248 (transformation!577 (h!8552 rules!1920)))) (dynLambda!1322 order!1939 lambda!5740))))

(declare-fun order!1941 () Int)

(declare-fun dynLambda!1323 (Int Int) Int)

(assert (=> b!188932 (< (dynLambda!1323 order!1941 (toChars!1107 (transformation!577 (h!8552 rules!1920)))) (dynLambda!1322 order!1939 lambda!5740))))

(assert (=> b!188887 true))

(declare-fun e!115774 () Bool)

(assert (=> b!188886 (= e!115774 (and tp!88152 tp!88147))))

(declare-fun e!115792 () Bool)

(declare-fun e!115779 () Bool)

(assert (=> b!188887 (= e!115792 e!115779)))

(declare-fun res!86273 () Bool)

(assert (=> b!188887 (=> res!86273 e!115779)))

(declare-datatypes ((Token!898 0))(
  ( (Token!899 (value!20760 TokenValue!599) (rule!1092 Rule!954) (size!2537 Int) (originalCharacters!620 List!3164)) )
))
(declare-datatypes ((List!3166 0))(
  ( (Nil!3156) (Cons!3156 (h!8553 Token!898) (t!28832 List!3166)) )
))
(declare-fun tokens!465 () List!3166)

(declare-datatypes ((LexerInterface!463 0))(
  ( (LexerInterfaceExt!460 (__x!2686 Int)) (Lexer!461) )
))
(declare-fun thiss!17480 () LexerInterface!463)

(declare-datatypes ((tuple2!3206 0))(
  ( (tuple2!3207 (_1!1819 Token!898) (_2!1819 BalanceConc!1960)) )
))
(declare-datatypes ((Option!432 0))(
  ( (None!431) (Some!431 (v!13942 tuple2!3206)) )
))
(declare-fun isDefined!283 (Option!432) Bool)

(declare-fun maxPrefixZipperSequence!156 (LexerInterface!463 List!3165 BalanceConc!1960) Option!432)

(declare-fun seqFromList!531 (List!3164) BalanceConc!1960)

(assert (=> b!188887 (= res!86273 (not (isDefined!283 (maxPrefixZipperSequence!156 thiss!17480 rules!1920 (seqFromList!531 (originalCharacters!620 (h!8553 tokens!465)))))))))

(declare-datatypes ((Unit!2956 0))(
  ( (Unit!2957) )
))
(declare-fun lt!63915 () Unit!2956)

(declare-fun forallContained!144 (List!3166 Int Token!898) Unit!2956)

(assert (=> b!188887 (= lt!63915 (forallContained!144 tokens!465 lambda!5740 (h!8553 tokens!465)))))

(declare-fun lt!63903 () List!3164)

(assert (=> b!188887 (= lt!63903 (originalCharacters!620 (h!8553 tokens!465)))))

(declare-fun b!188888 () Bool)

(declare-fun e!115785 () Bool)

(declare-fun e!115798 () Bool)

(assert (=> b!188888 (= e!115785 e!115798)))

(declare-fun res!86276 () Bool)

(assert (=> b!188888 (=> res!86276 e!115798)))

(declare-fun e!115778 () Bool)

(assert (=> b!188888 (= res!86276 e!115778)))

(declare-fun res!86288 () Bool)

(assert (=> b!188888 (=> (not res!86288) (not e!115778))))

(declare-fun lt!63896 () Bool)

(assert (=> b!188888 (= res!86288 (not lt!63896))))

(declare-fun lt!63910 () List!3164)

(declare-fun lt!63897 () List!3164)

(assert (=> b!188888 (= lt!63896 (= lt!63910 lt!63897))))

(declare-fun b!188889 () Bool)

(declare-fun e!115770 () Bool)

(declare-fun e!115771 () Bool)

(declare-fun tp!88155 () Bool)

(assert (=> b!188889 (= e!115770 (and e!115771 tp!88155))))

(declare-fun e!115772 () Bool)

(declare-fun tp!88145 () Bool)

(declare-fun b!188890 () Bool)

(declare-fun inv!3981 (String!4075) Bool)

(declare-fun inv!3984 (TokenValueInjection!970) Bool)

(assert (=> b!188890 (= e!115771 (and tp!88145 (inv!3981 (tag!755 (h!8552 rules!1920))) (inv!3984 (transformation!577 (h!8552 rules!1920))) e!115772))))

(declare-fun tp!88151 () Bool)

(declare-fun e!115782 () Bool)

(declare-fun b!188891 () Bool)

(declare-fun separatorToken!170 () Token!898)

(declare-fun e!115786 () Bool)

(declare-fun inv!21 (TokenValue!599) Bool)

(assert (=> b!188891 (= e!115786 (and (inv!21 (value!20760 separatorToken!170)) e!115782 tp!88151))))

(declare-fun b!188893 () Bool)

(declare-fun e!115777 () Bool)

(assert (=> b!188893 (= e!115779 e!115777)))

(declare-fun res!86282 () Bool)

(assert (=> b!188893 (=> res!86282 e!115777)))

(assert (=> b!188893 (= res!86282 (not lt!63896))))

(declare-fun e!115797 () Bool)

(assert (=> b!188893 e!115797))

(declare-fun res!86290 () Bool)

(assert (=> b!188893 (=> (not res!86290) (not e!115797))))

(declare-datatypes ((tuple2!3208 0))(
  ( (tuple2!3209 (_1!1820 Token!898) (_2!1820 List!3164)) )
))
(declare-fun lt!63900 () tuple2!3208)

(assert (=> b!188893 (= res!86290 (= (_1!1820 lt!63900) (h!8553 tokens!465)))))

(declare-datatypes ((Option!433 0))(
  ( (None!432) (Some!432 (v!13943 tuple2!3208)) )
))
(declare-fun lt!63908 () Option!433)

(declare-fun get!906 (Option!433) tuple2!3208)

(assert (=> b!188893 (= lt!63900 (get!906 lt!63908))))

(declare-fun isDefined!284 (Option!433) Bool)

(assert (=> b!188893 (isDefined!284 lt!63908)))

(declare-fun maxPrefix!193 (LexerInterface!463 List!3165 List!3164) Option!433)

(assert (=> b!188893 (= lt!63908 (maxPrefix!193 thiss!17480 rules!1920 lt!63903))))

(declare-fun b!188894 () Bool)

(declare-fun res!86285 () Bool)

(declare-fun e!115784 () Bool)

(assert (=> b!188894 (=> (not res!86285) (not e!115784))))

(assert (=> b!188894 (= res!86285 ((_ is Cons!3156) tokens!465))))

(declare-fun b!188895 () Bool)

(declare-fun e!115776 () Bool)

(assert (=> b!188895 (= e!115776 true)))

(declare-fun lt!63914 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!153 (LexerInterface!463 List!3165 List!3166) Bool)

(assert (=> b!188895 (= lt!63914 (rulesProduceEachTokenIndividuallyList!153 thiss!17480 rules!1920 tokens!465))))

(declare-fun e!115788 () Bool)

(declare-fun e!115780 () Bool)

(declare-fun b!188896 () Bool)

(declare-fun tp!88148 () Bool)

(declare-fun inv!3985 (Token!898) Bool)

(assert (=> b!188896 (= e!115788 (and (inv!3985 (h!8553 tokens!465)) e!115780 tp!88148))))

(declare-fun res!86278 () Bool)

(assert (=> b!188897 (=> (not res!86278) (not e!115784))))

(declare-fun forall!659 (List!3166 Int) Bool)

(assert (=> b!188897 (= res!86278 (forall!659 tokens!465 lambda!5739))))

(declare-fun b!188898 () Bool)

(declare-fun e!115773 () Bool)

(declare-fun lt!63912 () Option!433)

(declare-fun head!666 (List!3166) Token!898)

(assert (=> b!188898 (= e!115773 (= (_1!1820 (get!906 lt!63912)) (head!666 tokens!465)))))

(declare-fun b!188899 () Bool)

(declare-fun res!86286 () Bool)

(declare-fun e!115789 () Bool)

(assert (=> b!188899 (=> (not res!86286) (not e!115789))))

(declare-fun isEmpty!1535 (List!3165) Bool)

(assert (=> b!188899 (= res!86286 (not (isEmpty!1535 rules!1920)))))

(declare-fun b!188900 () Bool)

(declare-fun lt!63892 () List!3164)

(declare-fun ++!752 (List!3164 List!3164) List!3164)

(assert (=> b!188900 (= e!115778 (not (= lt!63910 (++!752 lt!63903 lt!63892))))))

(declare-fun b!188901 () Bool)

(declare-fun res!86291 () Bool)

(declare-fun e!115781 () Bool)

(assert (=> b!188901 (=> (not res!86291) (not e!115781))))

(declare-fun lt!63891 () List!3164)

(declare-fun list!1163 (BalanceConc!1960) List!3164)

(assert (=> b!188901 (= res!86291 (= (list!1163 (seqFromList!531 lt!63910)) lt!63891))))

(declare-fun b!188902 () Bool)

(declare-fun res!86270 () Bool)

(assert (=> b!188902 (=> (not res!86270) (not e!115784))))

(declare-fun sepAndNonSepRulesDisjointChars!166 (List!3165 List!3165) Bool)

(assert (=> b!188902 (= res!86270 (sepAndNonSepRulesDisjointChars!166 rules!1920 rules!1920))))

(declare-fun b!188903 () Bool)

(assert (=> b!188903 (= e!115789 e!115784)))

(declare-fun res!86281 () Bool)

(assert (=> b!188903 (=> (not res!86281) (not e!115784))))

(declare-datatypes ((IArray!1955 0))(
  ( (IArray!1956 (innerList!1035 List!3166)) )
))
(declare-datatypes ((Conc!977 0))(
  ( (Node!977 (left!2476 Conc!977) (right!2806 Conc!977) (csize!2184 Int) (cheight!1188 Int)) (Leaf!1605 (xs!3572 IArray!1955) (csize!2185 Int)) (Empty!977) )
))
(declare-datatypes ((BalanceConc!1962 0))(
  ( (BalanceConc!1963 (c!36315 Conc!977)) )
))
(declare-fun lt!63894 () BalanceConc!1962)

(declare-fun rulesProduceEachTokenIndividually!255 (LexerInterface!463 List!3165 BalanceConc!1962) Bool)

(assert (=> b!188903 (= res!86281 (rulesProduceEachTokenIndividually!255 thiss!17480 rules!1920 lt!63894))))

(declare-fun seqFromList!532 (List!3166) BalanceConc!1962)

(assert (=> b!188903 (= lt!63894 (seqFromList!532 tokens!465))))

(declare-fun b!188904 () Bool)

(declare-fun e!115787 () Bool)

(assert (=> b!188904 (= e!115787 e!115773)))

(declare-fun res!86292 () Bool)

(assert (=> b!188904 (=> (not res!86292) (not e!115773))))

(assert (=> b!188904 (= res!86292 (isDefined!284 lt!63912))))

(assert (=> b!188904 (= lt!63912 (maxPrefix!193 thiss!17480 rules!1920 lt!63910))))

(declare-fun tp!88156 () Bool)

(declare-fun e!115793 () Bool)

(declare-fun e!115794 () Bool)

(declare-fun b!188905 () Bool)

(assert (=> b!188905 (= e!115794 (and tp!88156 (inv!3981 (tag!755 (rule!1092 (h!8553 tokens!465)))) (inv!3984 (transformation!577 (rule!1092 (h!8553 tokens!465)))) e!115793))))

(declare-fun b!188906 () Bool)

(declare-fun res!86279 () Bool)

(assert (=> b!188906 (=> (not res!86279) (not e!115789))))

(declare-fun rulesInvariant!429 (LexerInterface!463 List!3165) Bool)

(assert (=> b!188906 (= res!86279 (rulesInvariant!429 thiss!17480 rules!1920))))

(declare-fun b!188907 () Bool)

(declare-fun e!115783 () Unit!2956)

(declare-fun Unit!2958 () Unit!2956)

(assert (=> b!188907 (= e!115783 Unit!2958)))

(declare-fun b!188908 () Bool)

(declare-fun res!86277 () Bool)

(assert (=> b!188908 (=> (not res!86277) (not e!115784))))

(declare-fun rulesProduceIndividualToken!212 (LexerInterface!463 List!3165 Token!898) Bool)

(assert (=> b!188908 (= res!86277 (rulesProduceIndividualToken!212 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!188909 () Bool)

(declare-fun res!86280 () Bool)

(assert (=> b!188909 (=> res!86280 e!115792)))

(declare-fun isEmpty!1536 (BalanceConc!1962) Bool)

(declare-datatypes ((tuple2!3210 0))(
  ( (tuple2!3211 (_1!1821 BalanceConc!1962) (_2!1821 BalanceConc!1960)) )
))
(declare-fun lex!263 (LexerInterface!463 List!3165 BalanceConc!1960) tuple2!3210)

(assert (=> b!188909 (= res!86280 (isEmpty!1536 (_1!1821 (lex!263 thiss!17480 rules!1920 (seqFromList!531 lt!63903)))))))

(declare-fun b!188910 () Bool)

(declare-fun Unit!2959 () Unit!2956)

(assert (=> b!188910 (= e!115783 Unit!2959)))

(assert (=> b!188910 false))

(declare-fun b!188911 () Bool)

(declare-fun tp!88157 () Bool)

(assert (=> b!188911 (= e!115780 (and (inv!21 (value!20760 (h!8553 tokens!465))) e!115794 tp!88157))))

(declare-fun res!86287 () Bool)

(assert (=> start!20490 (=> (not res!86287) (not e!115789))))

(assert (=> start!20490 (= res!86287 ((_ is Lexer!461) thiss!17480))))

(assert (=> start!20490 e!115789))

(assert (=> start!20490 true))

(assert (=> start!20490 e!115770))

(assert (=> start!20490 (and (inv!3985 separatorToken!170) e!115786)))

(assert (=> start!20490 e!115788))

(declare-fun b!188892 () Bool)

(declare-fun res!86274 () Bool)

(assert (=> b!188892 (=> (not res!86274) (not e!115784))))

(assert (=> b!188892 (= res!86274 (isSeparator!577 (rule!1092 separatorToken!170)))))

(declare-fun b!188912 () Bool)

(declare-fun matchR!139 (Regex!801 List!3164) Bool)

(assert (=> b!188912 (= e!115797 (matchR!139 (regex!577 (rule!1092 (h!8553 tokens!465))) lt!63903))))

(declare-fun b!188913 () Bool)

(declare-fun res!86271 () Bool)

(assert (=> b!188913 (=> (not res!86271) (not e!115797))))

(declare-fun isEmpty!1537 (List!3164) Bool)

(assert (=> b!188913 (= res!86271 (isEmpty!1537 (_2!1820 lt!63900)))))

(assert (=> b!188914 (= e!115793 (and tp!88150 tp!88149))))

(declare-fun b!188915 () Bool)

(assert (=> b!188915 (= e!115781 (not e!115785))))

(declare-fun res!86293 () Bool)

(assert (=> b!188915 (=> res!86293 e!115785)))

(declare-fun printWithSeparatorTokenWhenNeededRec!146 (LexerInterface!463 List!3165 BalanceConc!1962 Token!898 Int) BalanceConc!1960)

(assert (=> b!188915 (= res!86293 (not (= lt!63892 (list!1163 (printWithSeparatorTokenWhenNeededRec!146 thiss!17480 rules!1920 (seqFromList!532 (t!28832 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!63902 () List!3164)

(assert (=> b!188915 (= lt!63902 lt!63897)))

(declare-fun lt!63904 () List!3164)

(assert (=> b!188915 (= lt!63897 (++!752 lt!63903 lt!63904))))

(declare-fun lt!63899 () List!3164)

(assert (=> b!188915 (= lt!63902 (++!752 (++!752 lt!63903 lt!63899) lt!63892))))

(declare-fun lt!63893 () Unit!2956)

(declare-fun lemmaConcatAssociativity!266 (List!3164 List!3164 List!3164) Unit!2956)

(assert (=> b!188915 (= lt!63893 (lemmaConcatAssociativity!266 lt!63903 lt!63899 lt!63892))))

(declare-fun charsOf!232 (Token!898) BalanceConc!1960)

(assert (=> b!188915 (= lt!63903 (list!1163 (charsOf!232 (h!8553 tokens!465))))))

(assert (=> b!188915 (= lt!63904 (++!752 lt!63899 lt!63892))))

(declare-fun printWithSeparatorTokenWhenNeededList!156 (LexerInterface!463 List!3165 List!3166 Token!898) List!3164)

(assert (=> b!188915 (= lt!63892 (printWithSeparatorTokenWhenNeededList!156 thiss!17480 rules!1920 (t!28832 tokens!465) separatorToken!170))))

(assert (=> b!188915 (= lt!63899 (list!1163 (charsOf!232 separatorToken!170)))))

(declare-fun b!188916 () Bool)

(declare-fun res!86275 () Bool)

(assert (=> b!188916 (=> res!86275 e!115792)))

(assert (=> b!188916 (= res!86275 (not (rulesProduceIndividualToken!212 thiss!17480 rules!1920 (h!8553 tokens!465))))))

(declare-fun b!188917 () Bool)

(assert (=> b!188917 (= e!115798 e!115792)))

(declare-fun res!86289 () Bool)

(assert (=> b!188917 (=> res!86289 e!115792)))

(declare-fun lt!63916 () List!3164)

(declare-fun lt!63907 () List!3164)

(assert (=> b!188917 (= res!86289 (or (not (= lt!63907 lt!63916)) (not (= lt!63916 lt!63903)) (not (= lt!63907 lt!63903))))))

(declare-fun printList!147 (LexerInterface!463 List!3166) List!3164)

(assert (=> b!188917 (= lt!63916 (printList!147 thiss!17480 (Cons!3156 (h!8553 tokens!465) Nil!3156)))))

(declare-fun lt!63898 () BalanceConc!1960)

(assert (=> b!188917 (= lt!63907 (list!1163 lt!63898))))

(declare-fun lt!63905 () BalanceConc!1962)

(declare-fun printTailRec!157 (LexerInterface!463 BalanceConc!1962 Int BalanceConc!1960) BalanceConc!1960)

(assert (=> b!188917 (= lt!63898 (printTailRec!157 thiss!17480 lt!63905 0 (BalanceConc!1961 Empty!976)))))

(declare-fun print!194 (LexerInterface!463 BalanceConc!1962) BalanceConc!1960)

(assert (=> b!188917 (= lt!63898 (print!194 thiss!17480 lt!63905))))

(declare-fun singletonSeq!129 (Token!898) BalanceConc!1962)

(assert (=> b!188917 (= lt!63905 (singletonSeq!129 (h!8553 tokens!465)))))

(declare-fun b!188918 () Bool)

(assert (=> b!188918 (= e!115777 e!115776)))

(declare-fun res!86272 () Bool)

(assert (=> b!188918 (=> res!86272 e!115776)))

(declare-fun contains!512 (List!3166 Token!898) Bool)

(assert (=> b!188918 (= res!86272 (not (contains!512 tokens!465 (head!666 (t!28832 tokens!465)))))))

(declare-fun lt!63909 () Unit!2956)

(assert (=> b!188918 (= lt!63909 e!115783)))

(declare-fun c!36312 () Bool)

(declare-fun isEmpty!1538 (List!3166) Bool)

(assert (=> b!188918 (= c!36312 (isEmpty!1538 (t!28832 tokens!465)))))

(declare-fun lt!63913 () Option!433)

(assert (=> b!188918 (= lt!63913 (maxPrefix!193 thiss!17480 rules!1920 lt!63904))))

(declare-fun lt!63906 () tuple2!3208)

(assert (=> b!188918 (= lt!63904 (_2!1820 lt!63906))))

(declare-fun lt!63911 () Unit!2956)

(declare-fun lemmaSamePrefixThenSameSuffix!98 (List!3164 List!3164 List!3164 List!3164 List!3164) Unit!2956)

(assert (=> b!188918 (= lt!63911 (lemmaSamePrefixThenSameSuffix!98 lt!63903 lt!63904 lt!63903 (_2!1820 lt!63906) lt!63910))))

(assert (=> b!188918 (= lt!63906 (get!906 (maxPrefix!193 thiss!17480 rules!1920 lt!63910)))))

(declare-fun isPrefix!273 (List!3164 List!3164) Bool)

(assert (=> b!188918 (isPrefix!273 lt!63903 lt!63897)))

(declare-fun lt!63895 () Unit!2956)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!168 (List!3164 List!3164) Unit!2956)

(assert (=> b!188918 (= lt!63895 (lemmaConcatTwoListThenFirstIsPrefix!168 lt!63903 lt!63904))))

(assert (=> b!188918 e!115787))

(declare-fun res!86284 () Bool)

(assert (=> b!188918 (=> res!86284 e!115787)))

(assert (=> b!188918 (= res!86284 (isEmpty!1538 tokens!465))))

(declare-fun lt!63901 () Unit!2956)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!38 (LexerInterface!463 List!3165 List!3166 Token!898) Unit!2956)

(assert (=> b!188918 (= lt!63901 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!38 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!188919 (= e!115772 (and tp!88154 tp!88146))))

(declare-fun b!188920 () Bool)

(assert (=> b!188920 (= e!115784 e!115781)))

(declare-fun res!86283 () Bool)

(assert (=> b!188920 (=> (not res!86283) (not e!115781))))

(assert (=> b!188920 (= res!86283 (= lt!63910 lt!63891))))

(assert (=> b!188920 (= lt!63891 (list!1163 (printWithSeparatorTokenWhenNeededRec!146 thiss!17480 rules!1920 lt!63894 separatorToken!170 0)))))

(assert (=> b!188920 (= lt!63910 (printWithSeparatorTokenWhenNeededList!156 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!188921 () Bool)

(declare-fun tp!88153 () Bool)

(assert (=> b!188921 (= e!115782 (and tp!88153 (inv!3981 (tag!755 (rule!1092 separatorToken!170))) (inv!3984 (transformation!577 (rule!1092 separatorToken!170))) e!115774))))

(assert (= (and start!20490 res!86287) b!188899))

(assert (= (and b!188899 res!86286) b!188906))

(assert (= (and b!188906 res!86279) b!188903))

(assert (= (and b!188903 res!86281) b!188908))

(assert (= (and b!188908 res!86277) b!188892))

(assert (= (and b!188892 res!86274) b!188897))

(assert (= (and b!188897 res!86278) b!188902))

(assert (= (and b!188902 res!86270) b!188894))

(assert (= (and b!188894 res!86285) b!188920))

(assert (= (and b!188920 res!86283) b!188901))

(assert (= (and b!188901 res!86291) b!188915))

(assert (= (and b!188915 (not res!86293)) b!188888))

(assert (= (and b!188888 res!86288) b!188900))

(assert (= (and b!188888 (not res!86276)) b!188917))

(assert (= (and b!188917 (not res!86289)) b!188916))

(assert (= (and b!188916 (not res!86275)) b!188909))

(assert (= (and b!188909 (not res!86280)) b!188887))

(assert (= (and b!188887 (not res!86273)) b!188893))

(assert (= (and b!188893 res!86290) b!188913))

(assert (= (and b!188913 res!86271) b!188912))

(assert (= (and b!188893 (not res!86282)) b!188918))

(assert (= (and b!188918 (not res!86284)) b!188904))

(assert (= (and b!188904 res!86292) b!188898))

(assert (= (and b!188918 c!36312) b!188910))

(assert (= (and b!188918 (not c!36312)) b!188907))

(assert (= (and b!188918 (not res!86272)) b!188895))

(assert (= b!188890 b!188919))

(assert (= b!188889 b!188890))

(assert (= (and start!20490 ((_ is Cons!3155) rules!1920)) b!188889))

(assert (= b!188921 b!188886))

(assert (= b!188891 b!188921))

(assert (= start!20490 b!188891))

(assert (= b!188905 b!188914))

(assert (= b!188911 b!188905))

(assert (= b!188896 b!188911))

(assert (= (and start!20490 ((_ is Cons!3156) tokens!465)) b!188896))

(declare-fun m!193917 () Bool)

(assert (=> b!188906 m!193917))

(declare-fun m!193919 () Bool)

(assert (=> b!188916 m!193919))

(declare-fun m!193921 () Bool)

(assert (=> b!188913 m!193921))

(declare-fun m!193923 () Bool)

(assert (=> b!188899 m!193923))

(declare-fun m!193925 () Bool)

(assert (=> b!188895 m!193925))

(declare-fun m!193927 () Bool)

(assert (=> b!188900 m!193927))

(declare-fun m!193929 () Bool)

(assert (=> b!188918 m!193929))

(declare-fun m!193931 () Bool)

(assert (=> b!188918 m!193931))

(declare-fun m!193933 () Bool)

(assert (=> b!188918 m!193933))

(declare-fun m!193935 () Bool)

(assert (=> b!188918 m!193935))

(declare-fun m!193937 () Bool)

(assert (=> b!188918 m!193937))

(declare-fun m!193939 () Bool)

(assert (=> b!188918 m!193939))

(declare-fun m!193941 () Bool)

(assert (=> b!188918 m!193941))

(declare-fun m!193943 () Bool)

(assert (=> b!188918 m!193943))

(declare-fun m!193945 () Bool)

(assert (=> b!188918 m!193945))

(assert (=> b!188918 m!193937))

(declare-fun m!193947 () Bool)

(assert (=> b!188918 m!193947))

(assert (=> b!188918 m!193935))

(declare-fun m!193949 () Bool)

(assert (=> b!188918 m!193949))

(declare-fun m!193951 () Bool)

(assert (=> b!188893 m!193951))

(declare-fun m!193953 () Bool)

(assert (=> b!188893 m!193953))

(declare-fun m!193955 () Bool)

(assert (=> b!188893 m!193955))

(declare-fun m!193957 () Bool)

(assert (=> b!188903 m!193957))

(declare-fun m!193959 () Bool)

(assert (=> b!188903 m!193959))

(declare-fun m!193961 () Bool)

(assert (=> b!188920 m!193961))

(assert (=> b!188920 m!193961))

(declare-fun m!193963 () Bool)

(assert (=> b!188920 m!193963))

(declare-fun m!193965 () Bool)

(assert (=> b!188920 m!193965))

(declare-fun m!193967 () Bool)

(assert (=> b!188912 m!193967))

(declare-fun m!193969 () Bool)

(assert (=> b!188887 m!193969))

(assert (=> b!188887 m!193969))

(declare-fun m!193971 () Bool)

(assert (=> b!188887 m!193971))

(assert (=> b!188887 m!193971))

(declare-fun m!193973 () Bool)

(assert (=> b!188887 m!193973))

(declare-fun m!193975 () Bool)

(assert (=> b!188887 m!193975))

(declare-fun m!193977 () Bool)

(assert (=> b!188921 m!193977))

(declare-fun m!193979 () Bool)

(assert (=> b!188921 m!193979))

(declare-fun m!193981 () Bool)

(assert (=> b!188911 m!193981))

(declare-fun m!193983 () Bool)

(assert (=> b!188901 m!193983))

(assert (=> b!188901 m!193983))

(declare-fun m!193985 () Bool)

(assert (=> b!188901 m!193985))

(declare-fun m!193987 () Bool)

(assert (=> b!188904 m!193987))

(assert (=> b!188904 m!193935))

(declare-fun m!193989 () Bool)

(assert (=> b!188891 m!193989))

(declare-fun m!193991 () Bool)

(assert (=> start!20490 m!193991))

(declare-fun m!193993 () Bool)

(assert (=> b!188896 m!193993))

(declare-fun m!193995 () Bool)

(assert (=> b!188915 m!193995))

(declare-fun m!193997 () Bool)

(assert (=> b!188915 m!193997))

(declare-fun m!193999 () Bool)

(assert (=> b!188915 m!193999))

(declare-fun m!194001 () Bool)

(assert (=> b!188915 m!194001))

(declare-fun m!194003 () Bool)

(assert (=> b!188915 m!194003))

(declare-fun m!194005 () Bool)

(assert (=> b!188915 m!194005))

(declare-fun m!194007 () Bool)

(assert (=> b!188915 m!194007))

(declare-fun m!194009 () Bool)

(assert (=> b!188915 m!194009))

(assert (=> b!188915 m!193995))

(declare-fun m!194011 () Bool)

(assert (=> b!188915 m!194011))

(declare-fun m!194013 () Bool)

(assert (=> b!188915 m!194013))

(declare-fun m!194015 () Bool)

(assert (=> b!188915 m!194015))

(assert (=> b!188915 m!194007))

(assert (=> b!188915 m!194001))

(assert (=> b!188915 m!194015))

(declare-fun m!194017 () Bool)

(assert (=> b!188915 m!194017))

(assert (=> b!188915 m!194011))

(declare-fun m!194019 () Bool)

(assert (=> b!188915 m!194019))

(declare-fun m!194021 () Bool)

(assert (=> b!188897 m!194021))

(declare-fun m!194023 () Bool)

(assert (=> b!188902 m!194023))

(declare-fun m!194025 () Bool)

(assert (=> b!188908 m!194025))

(declare-fun m!194027 () Bool)

(assert (=> b!188905 m!194027))

(declare-fun m!194029 () Bool)

(assert (=> b!188905 m!194029))

(declare-fun m!194031 () Bool)

(assert (=> b!188909 m!194031))

(assert (=> b!188909 m!194031))

(declare-fun m!194033 () Bool)

(assert (=> b!188909 m!194033))

(declare-fun m!194035 () Bool)

(assert (=> b!188909 m!194035))

(declare-fun m!194037 () Bool)

(assert (=> b!188890 m!194037))

(declare-fun m!194039 () Bool)

(assert (=> b!188890 m!194039))

(declare-fun m!194041 () Bool)

(assert (=> b!188898 m!194041))

(declare-fun m!194043 () Bool)

(assert (=> b!188898 m!194043))

(declare-fun m!194045 () Bool)

(assert (=> b!188917 m!194045))

(declare-fun m!194047 () Bool)

(assert (=> b!188917 m!194047))

(declare-fun m!194049 () Bool)

(assert (=> b!188917 m!194049))

(declare-fun m!194051 () Bool)

(assert (=> b!188917 m!194051))

(declare-fun m!194053 () Bool)

(assert (=> b!188917 m!194053))

(check-sat (not b!188893) (not b!188887) (not b_next!7453) (not b!188889) (not b_next!7459) (not b!188901) (not b!188903) (not b!188899) (not b!188900) (not b!188913) (not b!188918) (not b_next!7455) (not b!188911) (not start!20490) (not b!188898) (not b!188906) (not b!188915) (not b_next!7451) (not b!188930) (not b_next!7457) (not b!188921) (not b!188902) b_and!13063 b_and!13055 (not b!188904) (not b_next!7449) b_and!13059 (not b!188896) (not b!188917) (not b!188891) (not b!188916) (not b!188890) (not b!188912) (not b!188908) (not b!188920) (not b!188895) (not b!188905) b_and!13053 (not b!188909) b_and!13061 (not b!188897) b_and!13057)
(check-sat (not b_next!7451) (not b_next!7453) (not b_next!7457) b_and!13063 (not b_next!7459) b_and!13059 b_and!13053 (not b_next!7455) b_and!13055 (not b_next!7449) b_and!13061 b_and!13057)
