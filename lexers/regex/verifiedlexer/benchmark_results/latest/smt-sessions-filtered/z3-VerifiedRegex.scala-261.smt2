; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4806 () Bool)

(assert start!4806)

(declare-fun b_free!1943 () Bool)

(declare-fun b_next!1943 () Bool)

(assert (=> start!4806 (= b_free!1943 (not b_next!1943))))

(declare-fun tp!37314 () Bool)

(declare-fun b_and!2351 () Bool)

(assert (=> start!4806 (= tp!37314 b_and!2351)))

(declare-fun b!61210 () Bool)

(declare-fun b_free!1945 () Bool)

(declare-fun b_next!1945 () Bool)

(assert (=> b!61210 (= b_free!1945 (not b_next!1945))))

(declare-fun tp!37311 () Bool)

(declare-fun b_and!2353 () Bool)

(assert (=> b!61210 (= tp!37311 b_and!2353)))

(declare-fun b_free!1947 () Bool)

(declare-fun b_next!1947 () Bool)

(assert (=> b!61210 (= b_free!1947 (not b_next!1947))))

(declare-fun tp!37315 () Bool)

(declare-fun b_and!2355 () Bool)

(assert (=> b!61210 (= tp!37315 b_and!2355)))

(declare-fun b!61197 () Bool)

(declare-fun e!35923 () Bool)

(declare-fun e!35914 () Bool)

(assert (=> b!61197 (= e!35923 e!35914)))

(declare-fun res!36941 () Bool)

(assert (=> b!61197 (=> res!36941 e!35914)))

(declare-datatypes ((List!1176 0))(
  ( (Nil!1170) (Cons!1170 (h!6567 (_ BitVec 16)) (t!18325 List!1176)) )
))
(declare-datatypes ((TokenValue!243 0))(
  ( (FloatLiteralValue!486 (text!2146 List!1176)) (TokenValueExt!242 (__x!1581 Int)) (Broken!1215 (value!10082 List!1176)) (Object!248) (End!243) (Def!243) (Underscore!243) (Match!243) (Else!243) (Error!243) (Case!243) (If!243) (Extends!243) (Abstract!243) (Class!243) (Val!243) (DelimiterValue!486 (del!303 List!1176)) (KeywordValue!249 (value!10083 List!1176)) (CommentValue!486 (value!10084 List!1176)) (WhitespaceValue!486 (value!10085 List!1176)) (IndentationValue!243 (value!10086 List!1176)) (String!1606) (Int32!243) (Broken!1216 (value!10087 List!1176)) (Boolean!244) (Unit!683) (OperatorValue!246 (op!303 List!1176)) (IdentifierValue!486 (value!10088 List!1176)) (IdentifierValue!487 (value!10089 List!1176)) (WhitespaceValue!487 (value!10090 List!1176)) (True!486) (False!486) (Broken!1217 (value!10091 List!1176)) (Broken!1218 (value!10092 List!1176)) (True!487) (RightBrace!243) (RightBracket!243) (Colon!243) (Null!243) (Comma!243) (LeftBracket!243) (False!487) (LeftBrace!243) (ImaginaryLiteralValue!243 (text!2147 List!1176)) (StringLiteralValue!729 (value!10093 List!1176)) (EOFValue!243 (value!10094 List!1176)) (IdentValue!243 (value!10095 List!1176)) (DelimiterValue!487 (value!10096 List!1176)) (DedentValue!243 (value!10097 List!1176)) (NewLineValue!243 (value!10098 List!1176)) (IntegerValue!729 (value!10099 (_ BitVec 32)) (text!2148 List!1176)) (IntegerValue!730 (value!10100 Int) (text!2149 List!1176)) (Times!243) (Or!243) (Equal!243) (Minus!243) (Broken!1219 (value!10101 List!1176)) (And!243) (Div!243) (LessEqual!243) (Mod!243) (Concat!564) (Not!243) (Plus!243) (SpaceValue!243 (value!10102 List!1176)) (IntegerValue!731 (value!10103 Int) (text!2150 List!1176)) (StringLiteralValue!730 (text!2151 List!1176)) (FloatLiteralValue!487 (text!2152 List!1176)) (BytesLiteralValue!243 (value!10104 List!1176)) (CommentValue!487 (value!10105 List!1176)) (StringLiteralValue!731 (value!10106 List!1176)) (ErrorTokenValue!243 (msg!304 List!1176)) )
))
(declare-datatypes ((C!1564 0))(
  ( (C!1565 (val!389 Int)) )
))
(declare-datatypes ((Regex!321 0))(
  ( (ElementMatch!321 (c!18448 C!1564)) (Concat!565 (regOne!1154 Regex!321) (regTwo!1154 Regex!321)) (EmptyExpr!321) (Star!321 (reg!650 Regex!321)) (EmptyLang!321) (Union!321 (regOne!1155 Regex!321) (regTwo!1155 Regex!321)) )
))
(declare-datatypes ((String!1607 0))(
  ( (String!1608 (value!10107 String)) )
))
(declare-datatypes ((List!1177 0))(
  ( (Nil!1171) (Cons!1171 (h!6568 C!1564) (t!18326 List!1177)) )
))
(declare-datatypes ((IArray!621 0))(
  ( (IArray!622 (innerList!368 List!1177)) )
))
(declare-datatypes ((Conc!310 0))(
  ( (Node!310 (left!893 Conc!310) (right!1223 Conc!310) (csize!850 Int) (cheight!521 Int)) (Leaf!572 (xs!2889 IArray!621) (csize!851 Int)) (Empty!310) )
))
(declare-datatypes ((BalanceConc!624 0))(
  ( (BalanceConc!625 (c!18449 Conc!310)) )
))
(declare-datatypes ((TokenValueInjection!310 0))(
  ( (TokenValueInjection!311 (toValue!736 Int) (toChars!595 Int)) )
))
(declare-datatypes ((Rule!306 0))(
  ( (Rule!307 (regex!253 Regex!321) (tag!431 String!1607) (isSeparator!253 Bool) (transformation!253 TokenValueInjection!310)) )
))
(declare-datatypes ((Token!270 0))(
  ( (Token!271 (value!10108 TokenValue!243) (rule!728 Rule!306) (size!1061 Int) (originalCharacters!306 List!1177)) )
))
(declare-datatypes ((List!1178 0))(
  ( (Nil!1172) (Cons!1172 (h!6569 Token!270) (t!18327 List!1178)) )
))
(declare-datatypes ((IArray!623 0))(
  ( (IArray!624 (innerList!369 List!1178)) )
))
(declare-datatypes ((Conc!311 0))(
  ( (Node!311 (left!894 Conc!311) (right!1224 Conc!311) (csize!852 Int) (cheight!522 Int)) (Leaf!573 (xs!2890 IArray!623) (csize!853 Int)) (Empty!311) )
))
(declare-datatypes ((BalanceConc!626 0))(
  ( (BalanceConc!627 (c!18450 Conc!311)) )
))
(declare-fun v!6227 () BalanceConc!626)

(declare-fun lt!12115 () Token!270)

(declare-fun contains!170 (BalanceConc!626 Token!270) Bool)

(assert (=> b!61197 (= res!36941 (not (contains!170 v!6227 lt!12115)))))

(declare-fun from!821 () Int)

(declare-fun apply!154 (BalanceConc!626 Int) Token!270)

(assert (=> b!61197 (= lt!12115 (apply!154 v!6227 (+ 1 from!821)))))

(declare-fun b!61198 () Bool)

(declare-fun res!36935 () Bool)

(declare-fun e!35918 () Bool)

(assert (=> b!61198 (=> (not res!36935) (not e!35918))))

(declare-datatypes ((LexerInterface!145 0))(
  ( (LexerInterfaceExt!142 (__x!1582 Int)) (Lexer!143) )
))
(declare-fun thiss!11059 () LexerInterface!145)

(declare-datatypes ((List!1179 0))(
  ( (Nil!1173) (Cons!1173 (h!6570 Rule!306) (t!18328 List!1179)) )
))
(declare-fun rules!1069 () List!1179)

(declare-fun rulesInvariant!139 (LexerInterface!145 List!1179) Bool)

(assert (=> b!61198 (= res!36935 (rulesInvariant!139 thiss!11059 rules!1069))))

(declare-fun b!61199 () Bool)

(declare-fun e!35915 () Bool)

(declare-fun e!35922 () Bool)

(declare-fun tp!37313 () Bool)

(assert (=> b!61199 (= e!35915 (and e!35922 tp!37313))))

(declare-fun b!61200 () Bool)

(declare-fun res!36943 () Bool)

(assert (=> b!61200 (=> (not res!36943) (not e!35918))))

(declare-fun lt!12112 () Int)

(assert (=> b!61200 (= res!36943 (< from!821 (- lt!12112 1)))))

(declare-fun b!61201 () Bool)

(declare-fun res!36942 () Bool)

(assert (=> b!61201 (=> (not res!36942) (not e!35918))))

(declare-fun isEmpty!255 (List!1179) Bool)

(assert (=> b!61201 (= res!36942 (not (isEmpty!255 rules!1069)))))

(declare-fun res!36937 () Bool)

(declare-fun e!35920 () Bool)

(assert (=> start!4806 (=> (not res!36937) (not e!35920))))

(get-info :version)

(assert (=> start!4806 (= res!36937 (and ((_ is Lexer!143) thiss!11059) (>= from!821 0)))))

(assert (=> start!4806 e!35920))

(assert (=> start!4806 true))

(assert (=> start!4806 tp!37314))

(declare-fun e!35917 () Bool)

(declare-fun inv!1559 (BalanceConc!626) Bool)

(assert (=> start!4806 (and (inv!1559 v!6227) e!35917)))

(assert (=> start!4806 e!35915))

(declare-fun b!61202 () Bool)

(assert (=> b!61202 (= e!35920 e!35918)))

(declare-fun res!36940 () Bool)

(assert (=> b!61202 (=> (not res!36940) (not e!35918))))

(assert (=> b!61202 (= res!36940 (<= from!821 lt!12112))))

(declare-fun size!1062 (BalanceConc!626) Int)

(assert (=> b!61202 (= lt!12112 (size!1062 v!6227))))

(declare-fun b!61203 () Bool)

(declare-fun tp!37312 () Bool)

(declare-fun inv!1560 (Conc!311) Bool)

(assert (=> b!61203 (= e!35917 (and (inv!1560 (c!18450 v!6227)) tp!37312))))

(declare-fun b!61204 () Bool)

(declare-fun e!35921 () Bool)

(assert (=> b!61204 (= e!35914 e!35921)))

(declare-fun res!36944 () Bool)

(assert (=> b!61204 (=> res!36944 e!35921)))

(declare-fun pred!6 () Int)

(declare-fun lt!12116 () Token!270)

(declare-fun dynLambda!236 (Int Token!270 Token!270 List!1179) Bool)

(assert (=> b!61204 (= res!36944 (not (dynLambda!236 pred!6 lt!12116 lt!12115 rules!1069)))))

(declare-fun e!35924 () Bool)

(assert (=> b!61204 e!35924))

(declare-fun res!36945 () Bool)

(assert (=> b!61204 (=> (not res!36945) (not e!35924))))

(declare-fun rulesProduceIndividualToken!42 (LexerInterface!145 List!1179 Token!270) Bool)

(assert (=> b!61204 (= res!36945 (rulesProduceIndividualToken!42 thiss!11059 rules!1069 lt!12115))))

(declare-datatypes ((Unit!684 0))(
  ( (Unit!685) )
))
(declare-fun lt!12114 () Unit!684)

(declare-fun lt!12111 () List!1178)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!28 (LexerInterface!145 List!1179 List!1178 Token!270) Unit!684)

(assert (=> b!61204 (= lt!12114 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!28 thiss!11059 rules!1069 lt!12111 lt!12115))))

(assert (=> b!61204 (rulesProduceIndividualToken!42 thiss!11059 rules!1069 lt!12116)))

(declare-fun lt!12118 () Unit!684)

(assert (=> b!61204 (= lt!12118 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!28 thiss!11059 rules!1069 lt!12111 lt!12116))))

(declare-fun b!61205 () Bool)

(declare-fun size!1063 (BalanceConc!624) Int)

(declare-fun charsOf!18 (Token!270) BalanceConc!624)

(assert (=> b!61205 (= e!35924 (> (size!1063 (charsOf!18 lt!12115)) 0))))

(declare-fun tp!37316 () Bool)

(declare-fun b!61206 () Bool)

(declare-fun e!35919 () Bool)

(declare-fun inv!1555 (String!1607) Bool)

(declare-fun inv!1561 (TokenValueInjection!310) Bool)

(assert (=> b!61206 (= e!35922 (and tp!37316 (inv!1555 (tag!431 (h!6570 rules!1069))) (inv!1561 (transformation!253 (h!6570 rules!1069))) e!35919))))

(declare-fun b!61207 () Bool)

(declare-fun res!36946 () Bool)

(assert (=> b!61207 (=> (not res!36946) (not e!35918))))

(declare-fun rulesProduceEachTokenIndividually!83 (LexerInterface!145 List!1179 BalanceConc!626) Bool)

(assert (=> b!61207 (= res!36946 (rulesProduceEachTokenIndividually!83 thiss!11059 rules!1069 v!6227))))

(declare-fun b!61208 () Bool)

(declare-fun res!36939 () Bool)

(assert (=> b!61208 (=> res!36939 e!35923)))

(declare-fun contains!171 (List!1178 Token!270) Bool)

(assert (=> b!61208 (= res!36939 (not (contains!171 lt!12111 lt!12116)))))

(declare-fun b!61209 () Bool)

(declare-fun res!36938 () Bool)

(assert (=> b!61209 (=> res!36938 e!35914)))

(assert (=> b!61209 (= res!36938 (not (contains!171 lt!12111 lt!12115)))))

(assert (=> b!61210 (= e!35919 (and tp!37311 tp!37315))))

(declare-fun b!61211 () Bool)

(assert (=> b!61211 (= e!35921 (< (- lt!12112 (+ 1 from!821)) (- lt!12112 from!821)))))

(declare-fun b!61212 () Bool)

(assert (=> b!61212 (= e!35918 (not e!35923))))

(declare-fun res!36936 () Bool)

(assert (=> b!61212 (=> res!36936 e!35923)))

(assert (=> b!61212 (= res!36936 (not (contains!170 v!6227 lt!12116)))))

(assert (=> b!61212 (= lt!12116 (apply!154 v!6227 from!821))))

(declare-fun lt!12110 () List!1178)

(declare-fun tail!88 (List!1178) List!1178)

(declare-fun drop!66 (List!1178 Int) List!1178)

(assert (=> b!61212 (= (tail!88 lt!12110) (drop!66 lt!12111 (+ 2 from!821)))))

(declare-fun lt!12108 () Unit!684)

(declare-fun lemmaDropTail!56 (List!1178 Int) Unit!684)

(assert (=> b!61212 (= lt!12108 (lemmaDropTail!56 lt!12111 (+ 1 from!821)))))

(declare-fun lt!12107 () List!1178)

(assert (=> b!61212 (= (tail!88 lt!12107) lt!12110)))

(declare-fun lt!12109 () Unit!684)

(assert (=> b!61212 (= lt!12109 (lemmaDropTail!56 lt!12111 from!821))))

(declare-fun head!404 (List!1178) Token!270)

(declare-fun apply!155 (List!1178 Int) Token!270)

(assert (=> b!61212 (= (head!404 lt!12110) (apply!155 lt!12111 (+ 1 from!821)))))

(assert (=> b!61212 (= lt!12110 (drop!66 lt!12111 (+ 1 from!821)))))

(declare-fun lt!12117 () Unit!684)

(declare-fun lemmaDropApply!64 (List!1178 Int) Unit!684)

(assert (=> b!61212 (= lt!12117 (lemmaDropApply!64 lt!12111 (+ 1 from!821)))))

(assert (=> b!61212 (= (head!404 lt!12107) (apply!155 lt!12111 from!821))))

(assert (=> b!61212 (= lt!12107 (drop!66 lt!12111 from!821))))

(declare-fun lt!12113 () Unit!684)

(assert (=> b!61212 (= lt!12113 (lemmaDropApply!64 lt!12111 from!821))))

(declare-fun list!317 (BalanceConc!626) List!1178)

(assert (=> b!61212 (= lt!12111 (list!317 v!6227))))

(assert (= (and start!4806 res!36937) b!61202))

(assert (= (and b!61202 res!36940) b!61201))

(assert (= (and b!61201 res!36942) b!61198))

(assert (= (and b!61198 res!36935) b!61207))

(assert (= (and b!61207 res!36946) b!61200))

(assert (= (and b!61200 res!36943) b!61212))

(assert (= (and b!61212 (not res!36936)) b!61208))

(assert (= (and b!61208 (not res!36939)) b!61197))

(assert (= (and b!61197 (not res!36941)) b!61209))

(assert (= (and b!61209 (not res!36938)) b!61204))

(assert (= (and b!61204 res!36945) b!61205))

(assert (= (and b!61204 (not res!36944)) b!61211))

(assert (= start!4806 b!61203))

(assert (= b!61206 b!61210))

(assert (= b!61199 b!61206))

(assert (= (and start!4806 ((_ is Cons!1173) rules!1069)) b!61199))

(declare-fun b_lambda!463 () Bool)

(assert (=> (not b_lambda!463) (not b!61204)))

(declare-fun t!18324 () Bool)

(declare-fun tb!845 () Bool)

(assert (=> (and start!4806 (= pred!6 pred!6) t!18324) tb!845))

(declare-fun result!1730 () Bool)

(assert (=> tb!845 (= result!1730 true)))

(assert (=> b!61204 t!18324))

(declare-fun b_and!2357 () Bool)

(assert (= b_and!2351 (and (=> t!18324 result!1730) b_and!2357)))

(declare-fun m!38364 () Bool)

(assert (=> b!61198 m!38364))

(declare-fun m!38366 () Bool)

(assert (=> b!61202 m!38366))

(declare-fun m!38368 () Bool)

(assert (=> b!61206 m!38368))

(declare-fun m!38370 () Bool)

(assert (=> b!61206 m!38370))

(declare-fun m!38372 () Bool)

(assert (=> b!61209 m!38372))

(declare-fun m!38374 () Bool)

(assert (=> b!61203 m!38374))

(declare-fun m!38376 () Bool)

(assert (=> start!4806 m!38376))

(declare-fun m!38378 () Bool)

(assert (=> b!61204 m!38378))

(declare-fun m!38380 () Bool)

(assert (=> b!61204 m!38380))

(declare-fun m!38382 () Bool)

(assert (=> b!61204 m!38382))

(declare-fun m!38384 () Bool)

(assert (=> b!61204 m!38384))

(declare-fun m!38386 () Bool)

(assert (=> b!61204 m!38386))

(declare-fun m!38388 () Bool)

(assert (=> b!61205 m!38388))

(assert (=> b!61205 m!38388))

(declare-fun m!38390 () Bool)

(assert (=> b!61205 m!38390))

(declare-fun m!38392 () Bool)

(assert (=> b!61207 m!38392))

(declare-fun m!38394 () Bool)

(assert (=> b!61197 m!38394))

(declare-fun m!38396 () Bool)

(assert (=> b!61197 m!38396))

(declare-fun m!38398 () Bool)

(assert (=> b!61201 m!38398))

(declare-fun m!38400 () Bool)

(assert (=> b!61208 m!38400))

(declare-fun m!38402 () Bool)

(assert (=> b!61212 m!38402))

(declare-fun m!38404 () Bool)

(assert (=> b!61212 m!38404))

(declare-fun m!38406 () Bool)

(assert (=> b!61212 m!38406))

(declare-fun m!38408 () Bool)

(assert (=> b!61212 m!38408))

(declare-fun m!38410 () Bool)

(assert (=> b!61212 m!38410))

(declare-fun m!38412 () Bool)

(assert (=> b!61212 m!38412))

(declare-fun m!38414 () Bool)

(assert (=> b!61212 m!38414))

(declare-fun m!38416 () Bool)

(assert (=> b!61212 m!38416))

(declare-fun m!38418 () Bool)

(assert (=> b!61212 m!38418))

(declare-fun m!38420 () Bool)

(assert (=> b!61212 m!38420))

(declare-fun m!38422 () Bool)

(assert (=> b!61212 m!38422))

(declare-fun m!38424 () Bool)

(assert (=> b!61212 m!38424))

(declare-fun m!38426 () Bool)

(assert (=> b!61212 m!38426))

(declare-fun m!38428 () Bool)

(assert (=> b!61212 m!38428))

(declare-fun m!38430 () Bool)

(assert (=> b!61212 m!38430))

(declare-fun m!38432 () Bool)

(assert (=> b!61212 m!38432))

(check-sat b_and!2357 (not b!61197) (not b!61207) b_and!2355 (not b!61209) (not b!61201) (not b_lambda!463) (not b!61208) (not b!61206) (not b!61199) (not b_next!1945) (not b!61202) (not b!61212) b_and!2353 (not b_next!1947) (not b!61203) (not b_next!1943) (not b!61204) (not start!4806) (not b!61198) (not b!61205))
(check-sat b_and!2357 b_and!2355 (not b_next!1945) b_and!2353 (not b_next!1947) (not b_next!1943))
