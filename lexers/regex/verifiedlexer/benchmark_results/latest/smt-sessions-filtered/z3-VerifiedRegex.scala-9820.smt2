; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513608 () Bool)

(assert start!513608)

(declare-fun b!4902187 () Bool)

(declare-fun b_free!131803 () Bool)

(declare-fun b_next!132593 () Bool)

(assert (=> b!4902187 (= b_free!131803 (not b_next!132593))))

(declare-fun tp!1379343 () Bool)

(declare-fun b_and!346195 () Bool)

(assert (=> b!4902187 (= tp!1379343 b_and!346195)))

(declare-fun b_free!131805 () Bool)

(declare-fun b_next!132595 () Bool)

(assert (=> b!4902187 (= b_free!131805 (not b_next!132595))))

(declare-fun tp!1379340 () Bool)

(declare-fun b_and!346197 () Bool)

(assert (=> b!4902187 (= tp!1379340 b_and!346197)))

(declare-fun b!4902201 () Bool)

(declare-fun e!3064364 () Bool)

(assert (=> b!4902201 (= e!3064364 true)))

(declare-fun b!4902200 () Bool)

(declare-fun e!3064363 () Bool)

(assert (=> b!4902200 (= e!3064363 e!3064364)))

(declare-fun b!4902190 () Bool)

(assert (=> b!4902190 e!3064363))

(assert (= b!4902200 b!4902201))

(assert (= b!4902190 b!4902200))

(declare-fun lambda!244290 () Int)

(declare-datatypes ((C!26764 0))(
  ( (C!26765 (val!22716 Int)) )
))
(declare-datatypes ((Regex!13283 0))(
  ( (ElementMatch!13283 (c!833175 C!26764)) (Concat!21801 (regOne!27078 Regex!13283) (regTwo!27078 Regex!13283)) (EmptyExpr!13283) (Star!13283 (reg!13612 Regex!13283)) (EmptyLang!13283) (Union!13283 (regOne!27079 Regex!13283) (regTwo!27079 Regex!13283)) )
))
(declare-datatypes ((String!64031 0))(
  ( (String!64032 (value!263038 String)) )
))
(declare-datatypes ((List!56614 0))(
  ( (Nil!56490) (Cons!56490 (h!62938 (_ BitVec 16)) (t!366706 List!56614)) )
))
(declare-datatypes ((TokenValue!8518 0))(
  ( (FloatLiteralValue!17036 (text!60071 List!56614)) (TokenValueExt!8517 (__x!34329 Int)) (Broken!42590 (value!263039 List!56614)) (Object!8641) (End!8518) (Def!8518) (Underscore!8518) (Match!8518) (Else!8518) (Error!8518) (Case!8518) (If!8518) (Extends!8518) (Abstract!8518) (Class!8518) (Val!8518) (DelimiterValue!17036 (del!8578 List!56614)) (KeywordValue!8524 (value!263040 List!56614)) (CommentValue!17036 (value!263041 List!56614)) (WhitespaceValue!17036 (value!263042 List!56614)) (IndentationValue!8518 (value!263043 List!56614)) (String!64033) (Int32!8518) (Broken!42591 (value!263044 List!56614)) (Boolean!8519) (Unit!146592) (OperatorValue!8521 (op!8578 List!56614)) (IdentifierValue!17036 (value!263045 List!56614)) (IdentifierValue!17037 (value!263046 List!56614)) (WhitespaceValue!17037 (value!263047 List!56614)) (True!17036) (False!17036) (Broken!42592 (value!263048 List!56614)) (Broken!42593 (value!263049 List!56614)) (True!17037) (RightBrace!8518) (RightBracket!8518) (Colon!8518) (Null!8518) (Comma!8518) (LeftBracket!8518) (False!17037) (LeftBrace!8518) (ImaginaryLiteralValue!8518 (text!60072 List!56614)) (StringLiteralValue!25554 (value!263050 List!56614)) (EOFValue!8518 (value!263051 List!56614)) (IdentValue!8518 (value!263052 List!56614)) (DelimiterValue!17037 (value!263053 List!56614)) (DedentValue!8518 (value!263054 List!56614)) (NewLineValue!8518 (value!263055 List!56614)) (IntegerValue!25554 (value!263056 (_ BitVec 32)) (text!60073 List!56614)) (IntegerValue!25555 (value!263057 Int) (text!60074 List!56614)) (Times!8518) (Or!8518) (Equal!8518) (Minus!8518) (Broken!42594 (value!263058 List!56614)) (And!8518) (Div!8518) (LessEqual!8518) (Mod!8518) (Concat!21802) (Not!8518) (Plus!8518) (SpaceValue!8518 (value!263059 List!56614)) (IntegerValue!25556 (value!263060 Int) (text!60075 List!56614)) (StringLiteralValue!25555 (text!60076 List!56614)) (FloatLiteralValue!17037 (text!60077 List!56614)) (BytesLiteralValue!8518 (value!263061 List!56614)) (CommentValue!17037 (value!263062 List!56614)) (StringLiteralValue!25556 (value!263063 List!56614)) (ErrorTokenValue!8518 (msg!8579 List!56614)) )
))
(declare-datatypes ((List!56615 0))(
  ( (Nil!56491) (Cons!56491 (h!62939 C!26764) (t!366707 List!56615)) )
))
(declare-datatypes ((IArray!29613 0))(
  ( (IArray!29614 (innerList!14864 List!56615)) )
))
(declare-datatypes ((Conc!14776 0))(
  ( (Node!14776 (left!41074 Conc!14776) (right!41404 Conc!14776) (csize!29782 Int) (cheight!14987 Int)) (Leaf!24597 (xs!18092 IArray!29613) (csize!29783 Int)) (Empty!14776) )
))
(declare-datatypes ((BalanceConc!28982 0))(
  ( (BalanceConc!28983 (c!833176 Conc!14776)) )
))
(declare-datatypes ((TokenValueInjection!16344 0))(
  ( (TokenValueInjection!16345 (toValue!11119 Int) (toChars!10978 Int)) )
))
(declare-datatypes ((Rule!16216 0))(
  ( (Rule!16217 (regex!8208 Regex!13283) (tag!9072 String!64031) (isSeparator!8208 Bool) (transformation!8208 TokenValueInjection!16344)) )
))
(declare-fun rule!164 () Rule!16216)

(declare-fun order!25597 () Int)

(declare-fun order!25599 () Int)

(declare-fun dynLambda!22732 (Int Int) Int)

(declare-fun dynLambda!22733 (Int Int) Int)

(assert (=> b!4902201 (< (dynLambda!22732 order!25597 (toValue!11119 (transformation!8208 rule!164))) (dynLambda!22733 order!25599 lambda!244290))))

(declare-fun order!25601 () Int)

(declare-fun dynLambda!22734 (Int Int) Int)

(assert (=> b!4902201 (< (dynLambda!22734 order!25601 (toChars!10978 (transformation!8208 rule!164))) (dynLambda!22733 order!25599 lambda!244290))))

(declare-fun b!4902182 () Bool)

(declare-fun e!3064357 () Bool)

(declare-fun e!3064355 () Bool)

(assert (=> b!4902182 (= e!3064357 (not e!3064355))))

(declare-fun res!2093922 () Bool)

(assert (=> b!4902182 (=> res!2093922 e!3064355)))

(declare-fun semiInverseModEq!3609 (Int Int) Bool)

(assert (=> b!4902182 (= res!2093922 (not (semiInverseModEq!3609 (toChars!10978 (transformation!8208 rule!164)) (toValue!11119 (transformation!8208 rule!164)))))))

(declare-datatypes ((Unit!146593 0))(
  ( (Unit!146594) )
))
(declare-fun lt!2010255 () Unit!146593)

(declare-fun lemmaInv!1254 (TokenValueInjection!16344) Unit!146593)

(assert (=> b!4902182 (= lt!2010255 (lemmaInv!1254 (transformation!8208 rule!164)))))

(declare-fun e!3064354 () Bool)

(assert (=> b!4902182 e!3064354))

(declare-fun res!2093926 () Bool)

(assert (=> b!4902182 (=> res!2093926 e!3064354)))

(declare-datatypes ((tuple2!60612 0))(
  ( (tuple2!60613 (_1!33609 List!56615) (_2!33609 List!56615)) )
))
(declare-fun lt!2010253 () tuple2!60612)

(declare-fun isEmpty!30351 (List!56615) Bool)

(assert (=> b!4902182 (= res!2093926 (isEmpty!30351 (_1!33609 lt!2010253)))))

(declare-fun lt!2010252 () List!56615)

(declare-fun findLongestMatchInner!1771 (Regex!13283 List!56615 Int List!56615 List!56615 Int) tuple2!60612)

(declare-fun size!37204 (List!56615) Int)

(assert (=> b!4902182 (= lt!2010253 (findLongestMatchInner!1771 (regex!8208 rule!164) Nil!56491 (size!37204 Nil!56491) lt!2010252 lt!2010252 (size!37204 lt!2010252)))))

(declare-fun lt!2010248 () Unit!146593)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1734 (Regex!13283 List!56615) Unit!146593)

(assert (=> b!4902182 (= lt!2010248 (longestMatchIsAcceptedByMatchOrIsEmpty!1734 (regex!8208 rule!164) lt!2010252))))

(declare-fun input!1509 () BalanceConc!28982)

(declare-fun list!17778 (BalanceConc!28982) List!56615)

(assert (=> b!4902182 (= lt!2010252 (list!17778 input!1509))))

(declare-fun b!4902183 () Bool)

(declare-fun e!3064351 () Bool)

(assert (=> b!4902183 (= e!3064351 true)))

(declare-fun lt!2010246 () TokenValue!8518)

(declare-fun lt!2010257 () BalanceConc!28982)

(declare-fun apply!13556 (TokenValueInjection!16344 BalanceConc!28982) TokenValue!8518)

(assert (=> b!4902183 (= lt!2010246 (apply!13556 (transformation!8208 rule!164) lt!2010257))))

(declare-datatypes ((tuple2!60614 0))(
  ( (tuple2!60615 (_1!33610 BalanceConc!28982) (_2!33610 BalanceConc!28982)) )
))
(declare-fun lt!2010247 () tuple2!60614)

(declare-fun lt!2010254 () Unit!146593)

(declare-fun lemmaEqSameImage!1100 (TokenValueInjection!16344 BalanceConc!28982 BalanceConc!28982) Unit!146593)

(assert (=> b!4902183 (= lt!2010254 (lemmaEqSameImage!1100 (transformation!8208 rule!164) (_1!33610 lt!2010247) lt!2010257))))

(declare-fun b!4902184 () Bool)

(assert (=> b!4902184 (= e!3064355 e!3064351)))

(declare-fun res!2093921 () Bool)

(assert (=> b!4902184 (=> res!2093921 e!3064351)))

(declare-datatypes ((LexerInterface!7800 0))(
  ( (LexerInterfaceExt!7797 (__x!34330 Int)) (Lexer!7798) )
))
(declare-fun thiss!15943 () LexerInterface!7800)

(declare-fun lt!2010249 () Bool)

(declare-datatypes ((Token!14952 0))(
  ( (Token!14953 (value!263064 TokenValue!8518) (rule!11408 Rule!16216) (size!37205 Int) (originalCharacters!8507 List!56615)) )
))
(declare-datatypes ((tuple2!60616 0))(
  ( (tuple2!60617 (_1!33611 Token!14952) (_2!33611 List!56615)) )
))
(declare-datatypes ((Option!14061 0))(
  ( (None!14060) (Some!14060 (v!50022 tuple2!60616)) )
))
(declare-fun isDefined!11070 (Option!14061) Bool)

(declare-fun maxPrefixOneRule!3549 (LexerInterface!7800 Rule!16216 List!56615) Option!14061)

(assert (=> b!4902184 (= res!2093921 (not (= lt!2010249 (isDefined!11070 (maxPrefixOneRule!3549 thiss!15943 rule!164 lt!2010252)))))))

(declare-fun lt!2010250 () List!56615)

(declare-datatypes ((tuple2!60618 0))(
  ( (tuple2!60619 (_1!33612 Token!14952) (_2!33612 BalanceConc!28982)) )
))
(declare-datatypes ((Option!14062 0))(
  ( (None!14061) (Some!14061 (v!50023 tuple2!60618)) )
))
(declare-fun isDefined!11071 (Option!14062) Bool)

(declare-fun size!37206 (BalanceConc!28982) Int)

(assert (=> b!4902184 (= lt!2010249 (isDefined!11071 (Some!14061 (tuple2!60619 (Token!14953 (apply!13556 (transformation!8208 rule!164) (_1!33610 lt!2010247)) rule!164 (size!37206 (_1!33610 lt!2010247)) lt!2010250) (_2!33610 lt!2010247)))))))

(declare-fun lt!2010256 () Unit!146593)

(declare-fun ForallOf!1149 (Int BalanceConc!28982) Unit!146593)

(assert (=> b!4902184 (= lt!2010256 (ForallOf!1149 lambda!244290 lt!2010257))))

(declare-fun seqFromList!5954 (List!56615) BalanceConc!28982)

(assert (=> b!4902184 (= lt!2010257 (seqFromList!5954 lt!2010250))))

(assert (=> b!4902184 (= lt!2010250 (list!17778 (_1!33610 lt!2010247)))))

(declare-fun lt!2010251 () Unit!146593)

(assert (=> b!4902184 (= lt!2010251 (ForallOf!1149 lambda!244290 (_1!33610 lt!2010247)))))

(declare-fun res!2093923 () Bool)

(declare-fun e!3064350 () Bool)

(assert (=> start!513608 (=> (not res!2093923) (not e!3064350))))

(get-info :version)

(assert (=> start!513608 (= res!2093923 ((_ is Lexer!7798) thiss!15943))))

(assert (=> start!513608 e!3064350))

(assert (=> start!513608 true))

(declare-fun e!3064353 () Bool)

(assert (=> start!513608 e!3064353))

(declare-fun e!3064358 () Bool)

(declare-fun inv!72867 (BalanceConc!28982) Bool)

(assert (=> start!513608 (and (inv!72867 input!1509) e!3064358)))

(declare-fun b!4902185 () Bool)

(declare-fun res!2093927 () Bool)

(assert (=> b!4902185 (=> res!2093927 e!3064351)))

(assert (=> b!4902185 (= res!2093927 (not lt!2010249))))

(declare-fun b!4902186 () Bool)

(declare-fun tp!1379342 () Bool)

(declare-fun inv!72868 (Conc!14776) Bool)

(assert (=> b!4902186 (= e!3064358 (and (inv!72868 (c!833176 input!1509)) tp!1379342))))

(declare-fun e!3064356 () Bool)

(assert (=> b!4902187 (= e!3064356 (and tp!1379343 tp!1379340))))

(declare-fun b!4902188 () Bool)

(declare-fun res!2093928 () Bool)

(assert (=> b!4902188 (=> (not res!2093928) (not e!3064350))))

(declare-fun ruleValid!3705 (LexerInterface!7800 Rule!16216) Bool)

(assert (=> b!4902188 (= res!2093928 (ruleValid!3705 thiss!15943 rule!164))))

(declare-fun b!4902189 () Bool)

(declare-fun res!2093925 () Bool)

(assert (=> b!4902189 (=> res!2093925 e!3064351)))

(assert (=> b!4902189 (= res!2093925 (not (= (list!17778 lt!2010257) lt!2010250)))))

(declare-fun res!2093920 () Bool)

(assert (=> b!4902190 (=> res!2093920 e!3064355)))

(declare-fun Forall!1705 (Int) Bool)

(assert (=> b!4902190 (= res!2093920 (not (Forall!1705 lambda!244290)))))

(declare-fun b!4902191 () Bool)

(declare-fun matchR!6550 (Regex!13283 List!56615) Bool)

(assert (=> b!4902191 (= e!3064354 (matchR!6550 (regex!8208 rule!164) (_1!33609 lt!2010253)))))

(declare-fun b!4902192 () Bool)

(declare-fun tp!1379341 () Bool)

(declare-fun inv!72863 (String!64031) Bool)

(declare-fun inv!72869 (TokenValueInjection!16344) Bool)

(assert (=> b!4902192 (= e!3064353 (and tp!1379341 (inv!72863 (tag!9072 rule!164)) (inv!72869 (transformation!8208 rule!164)) e!3064356))))

(declare-fun b!4902193 () Bool)

(assert (=> b!4902193 (= e!3064350 e!3064357)))

(declare-fun res!2093924 () Bool)

(assert (=> b!4902193 (=> (not res!2093924) (not e!3064357))))

(declare-fun isEmpty!30352 (BalanceConc!28982) Bool)

(assert (=> b!4902193 (= res!2093924 (not (isEmpty!30352 (_1!33610 lt!2010247))))))

(declare-fun findLongestMatchWithZipperSequence!296 (Regex!13283 BalanceConc!28982) tuple2!60614)

(assert (=> b!4902193 (= lt!2010247 (findLongestMatchWithZipperSequence!296 (regex!8208 rule!164) input!1509))))

(assert (= (and start!513608 res!2093923) b!4902188))

(assert (= (and b!4902188 res!2093928) b!4902193))

(assert (= (and b!4902193 res!2093924) b!4902182))

(assert (= (and b!4902182 (not res!2093926)) b!4902191))

(assert (= (and b!4902182 (not res!2093922)) b!4902190))

(assert (= (and b!4902190 (not res!2093920)) b!4902184))

(assert (= (and b!4902184 (not res!2093921)) b!4902185))

(assert (= (and b!4902185 (not res!2093927)) b!4902189))

(assert (= (and b!4902189 (not res!2093925)) b!4902183))

(assert (= b!4902192 b!4902187))

(assert (= start!513608 b!4902192))

(assert (= start!513608 b!4902186))

(declare-fun m!5910880 () Bool)

(assert (=> b!4902188 m!5910880))

(declare-fun m!5910882 () Bool)

(assert (=> b!4902183 m!5910882))

(declare-fun m!5910884 () Bool)

(assert (=> b!4902183 m!5910884))

(declare-fun m!5910886 () Bool)

(assert (=> b!4902191 m!5910886))

(declare-fun m!5910888 () Bool)

(assert (=> b!4902193 m!5910888))

(declare-fun m!5910890 () Bool)

(assert (=> b!4902193 m!5910890))

(declare-fun m!5910892 () Bool)

(assert (=> b!4902189 m!5910892))

(declare-fun m!5910894 () Bool)

(assert (=> b!4902186 m!5910894))

(declare-fun m!5910896 () Bool)

(assert (=> b!4902182 m!5910896))

(declare-fun m!5910898 () Bool)

(assert (=> b!4902182 m!5910898))

(declare-fun m!5910900 () Bool)

(assert (=> b!4902182 m!5910900))

(declare-fun m!5910902 () Bool)

(assert (=> b!4902182 m!5910902))

(assert (=> b!4902182 m!5910898))

(declare-fun m!5910904 () Bool)

(assert (=> b!4902182 m!5910904))

(declare-fun m!5910906 () Bool)

(assert (=> b!4902182 m!5910906))

(assert (=> b!4902182 m!5910904))

(declare-fun m!5910908 () Bool)

(assert (=> b!4902182 m!5910908))

(declare-fun m!5910910 () Bool)

(assert (=> b!4902182 m!5910910))

(declare-fun m!5910912 () Bool)

(assert (=> b!4902190 m!5910912))

(declare-fun m!5910914 () Bool)

(assert (=> start!513608 m!5910914))

(declare-fun m!5910916 () Bool)

(assert (=> b!4902184 m!5910916))

(declare-fun m!5910918 () Bool)

(assert (=> b!4902184 m!5910918))

(declare-fun m!5910920 () Bool)

(assert (=> b!4902184 m!5910920))

(declare-fun m!5910922 () Bool)

(assert (=> b!4902184 m!5910922))

(declare-fun m!5910924 () Bool)

(assert (=> b!4902184 m!5910924))

(declare-fun m!5910926 () Bool)

(assert (=> b!4902184 m!5910926))

(declare-fun m!5910928 () Bool)

(assert (=> b!4902184 m!5910928))

(declare-fun m!5910930 () Bool)

(assert (=> b!4902184 m!5910930))

(declare-fun m!5910932 () Bool)

(assert (=> b!4902184 m!5910932))

(assert (=> b!4902184 m!5910926))

(declare-fun m!5910934 () Bool)

(assert (=> b!4902192 m!5910934))

(declare-fun m!5910936 () Bool)

(assert (=> b!4902192 m!5910936))

(check-sat (not b_next!132595) (not b!4902190) (not b!4902184) (not b_next!132593) (not b!4902183) (not b!4902192) b_and!346197 (not b!4902193) (not b!4902191) b_and!346195 (not b!4902186) (not b!4902188) (not b!4902189) (not b!4902182) (not start!513608))
(check-sat b_and!346197 b_and!346195 (not b_next!132595) (not b_next!132593))
