; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14542 () Bool)

(assert start!14542)

(declare-fun b!138404 () Bool)

(declare-fun b_free!4183 () Bool)

(declare-fun b_next!4183 () Bool)

(assert (=> b!138404 (= b_free!4183 (not b_next!4183))))

(declare-fun tp!72536 () Bool)

(declare-fun b_and!6375 () Bool)

(assert (=> b!138404 (= tp!72536 b_and!6375)))

(declare-fun b_free!4185 () Bool)

(declare-fun b_next!4185 () Bool)

(assert (=> b!138404 (= b_free!4185 (not b_next!4185))))

(declare-fun tp!72530 () Bool)

(declare-fun b_and!6377 () Bool)

(assert (=> b!138404 (= tp!72530 b_and!6377)))

(declare-fun b!138414 () Bool)

(declare-fun b_free!4187 () Bool)

(declare-fun b_next!4187 () Bool)

(assert (=> b!138414 (= b_free!4187 (not b_next!4187))))

(declare-fun tp!72526 () Bool)

(declare-fun b_and!6379 () Bool)

(assert (=> b!138414 (= tp!72526 b_and!6379)))

(declare-fun b_free!4189 () Bool)

(declare-fun b_next!4189 () Bool)

(assert (=> b!138414 (= b_free!4189 (not b_next!4189))))

(declare-fun tp!72537 () Bool)

(declare-fun b_and!6381 () Bool)

(assert (=> b!138414 (= tp!72537 b_and!6381)))

(declare-fun b_free!4191 () Bool)

(declare-fun b_next!4191 () Bool)

(assert (=> start!14542 (= b_free!4191 (not b_next!4191))))

(declare-fun tp!72525 () Bool)

(declare-fun b_and!6383 () Bool)

(assert (=> start!14542 (= tp!72525 b_and!6383)))

(declare-fun b!138394 () Bool)

(declare-fun b_free!4193 () Bool)

(declare-fun b_next!4193 () Bool)

(assert (=> b!138394 (= b_free!4193 (not b_next!4193))))

(declare-fun tp!72534 () Bool)

(declare-fun b_and!6385 () Bool)

(assert (=> b!138394 (= tp!72534 b_and!6385)))

(declare-fun b_free!4195 () Bool)

(declare-fun b_next!4195 () Bool)

(assert (=> b!138394 (= b_free!4195 (not b_next!4195))))

(declare-fun tp!72535 () Bool)

(declare-fun b_and!6387 () Bool)

(assert (=> b!138394 (= tp!72535 b_and!6387)))

(declare-fun e!81010 () Bool)

(assert (=> b!138394 (= e!81010 (and tp!72534 tp!72535))))

(declare-fun tp!72538 () Bool)

(declare-fun e!80998 () Bool)

(declare-fun e!81009 () Bool)

(declare-datatypes ((List!2329 0))(
  ( (Nil!2319) (Cons!2319 (h!7716 (_ BitVec 16)) (t!22983 List!2329)) )
))
(declare-datatypes ((TokenValue!405 0))(
  ( (FloatLiteralValue!810 (text!3280 List!2329)) (TokenValueExt!404 (__x!2299 Int)) (Broken!2025 (value!15205 List!2329)) (Object!414) (End!405) (Def!405) (Underscore!405) (Match!405) (Else!405) (Error!405) (Case!405) (If!405) (Extends!405) (Abstract!405) (Class!405) (Val!405) (DelimiterValue!810 (del!465 List!2329)) (KeywordValue!411 (value!15206 List!2329)) (CommentValue!810 (value!15207 List!2329)) (WhitespaceValue!810 (value!15208 List!2329)) (IndentationValue!405 (value!15209 List!2329)) (String!3104) (Int32!405) (Broken!2026 (value!15210 List!2329)) (Boolean!406) (Unit!1787) (OperatorValue!408 (op!465 List!2329)) (IdentifierValue!810 (value!15211 List!2329)) (IdentifierValue!811 (value!15212 List!2329)) (WhitespaceValue!811 (value!15213 List!2329)) (True!810) (False!810) (Broken!2027 (value!15214 List!2329)) (Broken!2028 (value!15215 List!2329)) (True!811) (RightBrace!405) (RightBracket!405) (Colon!405) (Null!405) (Comma!405) (LeftBracket!405) (False!811) (LeftBrace!405) (ImaginaryLiteralValue!405 (text!3281 List!2329)) (StringLiteralValue!1215 (value!15216 List!2329)) (EOFValue!405 (value!15217 List!2329)) (IdentValue!405 (value!15218 List!2329)) (DelimiterValue!811 (value!15219 List!2329)) (DedentValue!405 (value!15220 List!2329)) (NewLineValue!405 (value!15221 List!2329)) (IntegerValue!1215 (value!15222 (_ BitVec 32)) (text!3282 List!2329)) (IntegerValue!1216 (value!15223 Int) (text!3283 List!2329)) (Times!405) (Or!405) (Equal!405) (Minus!405) (Broken!2029 (value!15224 List!2329)) (And!405) (Div!405) (LessEqual!405) (Mod!405) (Concat!1012) (Not!405) (Plus!405) (SpaceValue!405 (value!15225 List!2329)) (IntegerValue!1217 (value!15226 Int) (text!3284 List!2329)) (StringLiteralValue!1216 (text!3285 List!2329)) (FloatLiteralValue!811 (text!3286 List!2329)) (BytesLiteralValue!405 (value!15227 List!2329)) (CommentValue!811 (value!15228 List!2329)) (StringLiteralValue!1217 (value!15229 List!2329)) (ErrorTokenValue!405 (msg!466 List!2329)) )
))
(declare-datatypes ((C!2136 0))(
  ( (C!2137 (val!954 Int)) )
))
(declare-datatypes ((List!2330 0))(
  ( (Nil!2320) (Cons!2320 (h!7717 C!2136) (t!22984 List!2330)) )
))
(declare-datatypes ((IArray!1227 0))(
  ( (IArray!1228 (innerList!671 List!2330)) )
))
(declare-datatypes ((Conc!613 0))(
  ( (Node!613 (left!1791 Conc!613) (right!2121 Conc!613) (csize!1456 Int) (cheight!824 Int)) (Leaf!1144 (xs!3208 IArray!1227) (csize!1457 Int)) (Empty!613) )
))
(declare-datatypes ((BalanceConc!1234 0))(
  ( (BalanceConc!1235 (c!29094 Conc!613)) )
))
(declare-datatypes ((TokenValueInjection!582 0))(
  ( (TokenValueInjection!583 (toValue!994 Int) (toChars!853 Int)) )
))
(declare-datatypes ((String!3105 0))(
  ( (String!3106 (value!15230 String)) )
))
(declare-datatypes ((Regex!607 0))(
  ( (ElementMatch!607 (c!29095 C!2136)) (Concat!1013 (regOne!1726 Regex!607) (regTwo!1726 Regex!607)) (EmptyExpr!607) (Star!607 (reg!936 Regex!607)) (EmptyLang!607) (Union!607 (regOne!1727 Regex!607) (regTwo!1727 Regex!607)) )
))
(declare-datatypes ((Rule!566 0))(
  ( (Rule!567 (regex!383 Regex!607) (tag!561 String!3105) (isSeparator!383 Bool) (transformation!383 TokenValueInjection!582)) )
))
(declare-datatypes ((Token!510 0))(
  ( (Token!511 (value!15231 TokenValue!405) (rule!890 Rule!566) (size!2069 Int) (originalCharacters!426 List!2330)) )
))
(declare-datatypes ((List!2331 0))(
  ( (Nil!2321) (Cons!2321 (h!7718 Token!510) (t!22985 List!2331)) )
))
(declare-fun l2!3099 () List!2331)

(declare-fun b!138395 () Bool)

(declare-fun inv!3067 (Token!510) Bool)

(assert (=> b!138395 (= e!81009 (and (inv!3067 (h!7718 l2!3099)) e!80998 tp!72538))))

(declare-fun b!138396 () Bool)

(declare-fun res!64592 () Bool)

(declare-fun e!81005 () Bool)

(assert (=> b!138396 (=> (not res!64592) (not e!81005))))

(declare-datatypes ((LexerInterface!271 0))(
  ( (LexerInterfaceExt!268 (__x!2300 Int)) (Lexer!269) )
))
(declare-fun thiss!27322 () LexerInterface!271)

(declare-datatypes ((List!2332 0))(
  ( (Nil!2322) (Cons!2322 (h!7719 Rule!566) (t!22986 List!2332)) )
))
(declare-fun rules!4268 () List!2332)

(declare-fun p!3028 () Int)

(declare-fun tokensListTwoByTwoPredicateList!10 (LexerInterface!271 List!2331 List!2332 Int) Bool)

(assert (=> b!138396 (= res!64592 (tokensListTwoByTwoPredicateList!10 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun e!81008 () Bool)

(declare-fun tp!72528 () Bool)

(declare-fun e!81004 () Bool)

(declare-fun b!138397 () Bool)

(declare-fun inv!3064 (String!3105) Bool)

(declare-fun inv!3068 (TokenValueInjection!582) Bool)

(assert (=> b!138397 (= e!81008 (and tp!72528 (inv!3064 (tag!561 (h!7719 rules!4268))) (inv!3068 (transformation!383 (h!7719 rules!4268))) e!81004))))

(declare-fun b!138398 () Bool)

(declare-fun e!81007 () Bool)

(assert (=> b!138398 (= e!81007 (not true))))

(declare-fun lt!41056 () List!2331)

(declare-fun l1!3130 () List!2331)

(declare-fun ++!518 (List!2331 List!2331) List!2331)

(assert (=> b!138398 (= lt!41056 (++!518 l1!3130 l2!3099))))

(assert (=> b!138398 (tokensListTwoByTwoPredicateList!10 thiss!27322 (++!518 (t!22985 l1!3130) l2!3099) rules!4268 p!3028)))

(declare-datatypes ((Unit!1788 0))(
  ( (Unit!1789) )
))
(declare-fun lt!41054 () Unit!1788)

(declare-fun tokensListTwoByTwoPredicateConcatList!2 (LexerInterface!271 List!2331 List!2331 List!2332 Int) Unit!1788)

(assert (=> b!138398 (= lt!41054 (tokensListTwoByTwoPredicateConcatList!2 thiss!27322 (t!22985 l1!3130) l2!3099 rules!4268 p!3028))))

(declare-fun b!138399 () Bool)

(declare-fun res!64594 () Bool)

(assert (=> b!138399 (=> (not res!64594) (not e!81005))))

(assert (=> b!138399 (= res!64594 (tokensListTwoByTwoPredicateList!10 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun b!138400 () Bool)

(declare-fun res!64591 () Bool)

(assert (=> b!138400 (=> (not res!64591) (not e!81007))))

(declare-fun lt!41055 () Token!510)

(declare-fun dynLambda!771 (Int Token!510 Token!510 List!2332) Bool)

(declare-fun last!19 (List!2331) Token!510)

(assert (=> b!138400 (= res!64591 (dynLambda!771 p!3028 (last!19 (t!22985 l1!3130)) lt!41055 rules!4268))))

(declare-fun e!80997 () Bool)

(declare-fun tp!72532 () Bool)

(declare-fun e!80995 () Bool)

(declare-fun b!138401 () Bool)

(assert (=> b!138401 (= e!80997 (and (inv!3067 (h!7718 l1!3130)) e!80995 tp!72532))))

(declare-fun b!138402 () Bool)

(declare-fun res!64590 () Bool)

(assert (=> b!138402 (=> (not res!64590) (not e!81005))))

(declare-fun isEmpty!890 (List!2331) Bool)

(assert (=> b!138402 (= res!64590 (not (isEmpty!890 l2!3099)))))

(declare-fun e!81011 () Bool)

(declare-fun b!138403 () Bool)

(declare-fun tp!72531 () Bool)

(declare-fun e!80994 () Bool)

(assert (=> b!138403 (= e!80994 (and tp!72531 (inv!3064 (tag!561 (rule!890 (h!7718 l1!3130)))) (inv!3068 (transformation!383 (rule!890 (h!7718 l1!3130)))) e!81011))))

(declare-fun res!64597 () Bool)

(assert (=> start!14542 (=> (not res!64597) (not e!81005))))

(get-info :version)

(assert (=> start!14542 (= res!64597 ((_ is Lexer!269) thiss!27322))))

(assert (=> start!14542 e!81005))

(assert (=> start!14542 true))

(declare-fun e!81000 () Bool)

(assert (=> start!14542 e!81000))

(assert (=> start!14542 tp!72525))

(assert (=> start!14542 e!80997))

(assert (=> start!14542 e!81009))

(assert (=> b!138404 (= e!81011 (and tp!72536 tp!72530))))

(declare-fun b!138405 () Bool)

(declare-fun tp!72539 () Bool)

(declare-fun inv!21 (TokenValue!405) Bool)

(assert (=> b!138405 (= e!80995 (and (inv!21 (value!15231 (h!7718 l1!3130))) e!80994 tp!72539))))

(declare-fun b!138406 () Bool)

(declare-fun e!81003 () Bool)

(declare-fun tp!72527 () Bool)

(assert (=> b!138406 (= e!81003 (and tp!72527 (inv!3064 (tag!561 (rule!890 (h!7718 l2!3099)))) (inv!3068 (transformation!383 (rule!890 (h!7718 l2!3099)))) e!81010))))

(declare-fun b!138407 () Bool)

(declare-fun res!64593 () Bool)

(assert (=> b!138407 (=> (not res!64593) (not e!81007))))

(assert (=> b!138407 (= res!64593 ((_ is Cons!2321) l1!3130))))

(declare-fun b!138408 () Bool)

(declare-fun res!64589 () Bool)

(assert (=> b!138408 (=> (not res!64589) (not e!81005))))

(assert (=> b!138408 (= res!64589 (not (isEmpty!890 l1!3130)))))

(declare-fun b!138409 () Bool)

(declare-fun res!64595 () Bool)

(assert (=> b!138409 (=> (not res!64595) (not e!81007))))

(assert (=> b!138409 (= res!64595 (tokensListTwoByTwoPredicateList!10 thiss!27322 (t!22985 l1!3130) rules!4268 p!3028))))

(declare-fun tp!72529 () Bool)

(declare-fun b!138410 () Bool)

(assert (=> b!138410 (= e!80998 (and (inv!21 (value!15231 (h!7718 l2!3099))) e!81003 tp!72529))))

(declare-fun b!138411 () Bool)

(assert (=> b!138411 (= e!81005 e!81007)))

(declare-fun res!64596 () Bool)

(assert (=> b!138411 (=> (not res!64596) (not e!81007))))

(assert (=> b!138411 (= res!64596 (dynLambda!771 p!3028 (last!19 l1!3130) lt!41055 rules!4268))))

(declare-fun head!546 (List!2331) Token!510)

(assert (=> b!138411 (= lt!41055 (head!546 l2!3099))))

(declare-fun b!138412 () Bool)

(declare-fun tp!72533 () Bool)

(assert (=> b!138412 (= e!81000 (and e!81008 tp!72533))))

(declare-fun b!138413 () Bool)

(declare-fun res!64588 () Bool)

(assert (=> b!138413 (=> (not res!64588) (not e!81007))))

(assert (=> b!138413 (= res!64588 (not (isEmpty!890 (t!22985 l1!3130))))))

(assert (=> b!138414 (= e!81004 (and tp!72526 tp!72537))))

(assert (= (and start!14542 res!64597) b!138399))

(assert (= (and b!138399 res!64594) b!138396))

(assert (= (and b!138396 res!64592) b!138408))

(assert (= (and b!138408 res!64589) b!138402))

(assert (= (and b!138402 res!64590) b!138411))

(assert (= (and b!138411 res!64596) b!138407))

(assert (= (and b!138407 res!64593) b!138413))

(assert (= (and b!138413 res!64588) b!138409))

(assert (= (and b!138409 res!64595) b!138400))

(assert (= (and b!138400 res!64591) b!138398))

(assert (= b!138397 b!138414))

(assert (= b!138412 b!138397))

(assert (= (and start!14542 ((_ is Cons!2322) rules!4268)) b!138412))

(assert (= b!138403 b!138404))

(assert (= b!138405 b!138403))

(assert (= b!138401 b!138405))

(assert (= (and start!14542 ((_ is Cons!2321) l1!3130)) b!138401))

(assert (= b!138406 b!138394))

(assert (= b!138410 b!138406))

(assert (= b!138395 b!138410))

(assert (= (and start!14542 ((_ is Cons!2321) l2!3099)) b!138395))

(declare-fun b_lambda!1787 () Bool)

(assert (=> (not b_lambda!1787) (not b!138400)))

(declare-fun t!22980 () Bool)

(declare-fun tb!3733 () Bool)

(assert (=> (and start!14542 (= p!3028 p!3028) t!22980) tb!3733))

(declare-fun result!5844 () Bool)

(assert (=> tb!3733 (= result!5844 true)))

(assert (=> b!138400 t!22980))

(declare-fun b_and!6389 () Bool)

(assert (= b_and!6383 (and (=> t!22980 result!5844) b_and!6389)))

(declare-fun b_lambda!1789 () Bool)

(assert (=> (not b_lambda!1789) (not b!138411)))

(declare-fun t!22982 () Bool)

(declare-fun tb!3735 () Bool)

(assert (=> (and start!14542 (= p!3028 p!3028) t!22982) tb!3735))

(declare-fun result!5846 () Bool)

(assert (=> tb!3735 (= result!5846 true)))

(assert (=> b!138411 t!22982))

(declare-fun b_and!6391 () Bool)

(assert (= b_and!6389 (and (=> t!22982 result!5846) b_and!6391)))

(declare-fun m!122225 () Bool)

(assert (=> b!138402 m!122225))

(declare-fun m!122227 () Bool)

(assert (=> b!138403 m!122227))

(declare-fun m!122229 () Bool)

(assert (=> b!138403 m!122229))

(declare-fun m!122231 () Bool)

(assert (=> b!138409 m!122231))

(declare-fun m!122233 () Bool)

(assert (=> b!138401 m!122233))

(declare-fun m!122235 () Bool)

(assert (=> b!138405 m!122235))

(declare-fun m!122237 () Bool)

(assert (=> b!138406 m!122237))

(declare-fun m!122239 () Bool)

(assert (=> b!138406 m!122239))

(declare-fun m!122241 () Bool)

(assert (=> b!138396 m!122241))

(declare-fun m!122243 () Bool)

(assert (=> b!138395 m!122243))

(declare-fun m!122245 () Bool)

(assert (=> b!138400 m!122245))

(assert (=> b!138400 m!122245))

(declare-fun m!122247 () Bool)

(assert (=> b!138400 m!122247))

(declare-fun m!122249 () Bool)

(assert (=> b!138399 m!122249))

(declare-fun m!122251 () Bool)

(assert (=> b!138411 m!122251))

(assert (=> b!138411 m!122251))

(declare-fun m!122253 () Bool)

(assert (=> b!138411 m!122253))

(declare-fun m!122255 () Bool)

(assert (=> b!138411 m!122255))

(declare-fun m!122257 () Bool)

(assert (=> b!138413 m!122257))

(declare-fun m!122259 () Bool)

(assert (=> b!138410 m!122259))

(declare-fun m!122261 () Bool)

(assert (=> b!138408 m!122261))

(declare-fun m!122263 () Bool)

(assert (=> b!138398 m!122263))

(declare-fun m!122265 () Bool)

(assert (=> b!138398 m!122265))

(assert (=> b!138398 m!122265))

(declare-fun m!122267 () Bool)

(assert (=> b!138398 m!122267))

(declare-fun m!122269 () Bool)

(assert (=> b!138398 m!122269))

(declare-fun m!122271 () Bool)

(assert (=> b!138397 m!122271))

(declare-fun m!122273 () Bool)

(assert (=> b!138397 m!122273))

(check-sat (not b!138408) (not b!138401) (not b_lambda!1787) (not b!138410) (not b_next!4187) b_and!6379 (not b_next!4191) (not b_next!4183) b_and!6387 b_and!6377 (not b!138409) (not b!138398) (not b!138405) (not b!138403) (not b!138395) (not b!138399) (not b!138402) (not b!138413) b_and!6391 (not b_next!4195) (not b!138412) b_and!6381 (not b!138397) (not b_next!4189) (not b_next!4193) b_and!6385 (not b_next!4185) (not b!138400) (not b!138396) b_and!6375 (not b!138411) (not b_lambda!1789) (not b!138406))
(check-sat b_and!6381 b_and!6375 (not b_next!4187) b_and!6379 (not b_next!4191) (not b_next!4183) b_and!6387 b_and!6377 b_and!6391 (not b_next!4195) (not b_next!4189) (not b_next!4193) b_and!6385 (not b_next!4185))
