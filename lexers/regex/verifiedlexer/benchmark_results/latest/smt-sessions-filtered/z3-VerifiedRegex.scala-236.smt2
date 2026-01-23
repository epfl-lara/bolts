; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3622 () Bool)

(assert start!3622)

(declare-fun b!50263 () Bool)

(declare-fun b_free!1525 () Bool)

(declare-fun b_next!1525 () Bool)

(assert (=> b!50263 (= b_free!1525 (not b_next!1525))))

(declare-fun tp!33348 () Bool)

(declare-fun b_and!1567 () Bool)

(assert (=> b!50263 (= tp!33348 b_and!1567)))

(declare-fun b_free!1527 () Bool)

(declare-fun b_next!1527 () Bool)

(assert (=> b!50263 (= b_free!1527 (not b_next!1527))))

(declare-fun tp!33347 () Bool)

(declare-fun b_and!1569 () Bool)

(assert (=> b!50263 (= tp!33347 b_and!1569)))

(declare-fun res!33013 () Bool)

(declare-fun e!29439 () Bool)

(assert (=> start!3622 (=> (not res!33013) (not e!29439))))

(declare-datatypes ((LexerInterface!95 0))(
  ( (LexerInterfaceExt!92 (__x!1481 Int)) (Lexer!93) )
))
(declare-fun thiss!11059 () LexerInterface!95)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3622 (= res!33013 (and ((_ is Lexer!93) thiss!11059) (>= from!821 0)))))

(assert (=> start!3622 e!29439))

(assert (=> start!3622 true))

(declare-datatypes ((List!958 0))(
  ( (Nil!952) (Cons!952 (h!6349 (_ BitVec 16)) (t!17161 List!958)) )
))
(declare-datatypes ((TokenValue!193 0))(
  ( (FloatLiteralValue!386 (text!1796 List!958)) (TokenValueExt!192 (__x!1482 Int)) (Broken!965 (value!8657 List!958)) (Object!198) (End!193) (Def!193) (Underscore!193) (Match!193) (Else!193) (Error!193) (Case!193) (If!193) (Extends!193) (Abstract!193) (Class!193) (Val!193) (DelimiterValue!386 (del!253 List!958)) (KeywordValue!199 (value!8658 List!958)) (CommentValue!386 (value!8659 List!958)) (WhitespaceValue!386 (value!8660 List!958)) (IndentationValue!193 (value!8661 List!958)) (String!1356) (Int32!193) (Broken!966 (value!8662 List!958)) (Boolean!194) (Unit!529) (OperatorValue!196 (op!253 List!958)) (IdentifierValue!386 (value!8663 List!958)) (IdentifierValue!387 (value!8664 List!958)) (WhitespaceValue!387 (value!8665 List!958)) (True!386) (False!386) (Broken!967 (value!8666 List!958)) (Broken!968 (value!8667 List!958)) (True!387) (RightBrace!193) (RightBracket!193) (Colon!193) (Null!193) (Comma!193) (LeftBracket!193) (False!387) (LeftBrace!193) (ImaginaryLiteralValue!193 (text!1797 List!958)) (StringLiteralValue!579 (value!8668 List!958)) (EOFValue!193 (value!8669 List!958)) (IdentValue!193 (value!8670 List!958)) (DelimiterValue!387 (value!8671 List!958)) (DedentValue!193 (value!8672 List!958)) (NewLineValue!193 (value!8673 List!958)) (IntegerValue!579 (value!8674 (_ BitVec 32)) (text!1798 List!958)) (IntegerValue!580 (value!8675 Int) (text!1799 List!958)) (Times!193) (Or!193) (Equal!193) (Minus!193) (Broken!969 (value!8676 List!958)) (And!193) (Div!193) (LessEqual!193) (Mod!193) (Concat!464) (Not!193) (Plus!193) (SpaceValue!193 (value!8677 List!958)) (IntegerValue!581 (value!8678 Int) (text!1800 List!958)) (StringLiteralValue!580 (text!1801 List!958)) (FloatLiteralValue!387 (text!1802 List!958)) (BytesLiteralValue!193 (value!8679 List!958)) (CommentValue!387 (value!8680 List!958)) (StringLiteralValue!581 (value!8681 List!958)) (ErrorTokenValue!193 (msg!254 List!958)) )
))
(declare-datatypes ((C!1464 0))(
  ( (C!1465 (val!339 Int)) )
))
(declare-datatypes ((Regex!271 0))(
  ( (ElementMatch!271 (c!16597 C!1464)) (Concat!465 (regOne!1054 Regex!271) (regTwo!1054 Regex!271)) (EmptyExpr!271) (Star!271 (reg!600 Regex!271)) (EmptyLang!271) (Union!271 (regOne!1055 Regex!271) (regTwo!1055 Regex!271)) )
))
(declare-datatypes ((String!1357 0))(
  ( (String!1358 (value!8682 String)) )
))
(declare-datatypes ((List!959 0))(
  ( (Nil!953) (Cons!953 (h!6350 C!1464) (t!17162 List!959)) )
))
(declare-datatypes ((IArray!421 0))(
  ( (IArray!422 (innerList!268 List!959)) )
))
(declare-datatypes ((Conc!210 0))(
  ( (Node!210 (left!724 Conc!210) (right!1054 Conc!210) (csize!650 Int) (cheight!421 Int)) (Leaf!447 (xs!2789 IArray!421) (csize!651 Int)) (Empty!210) )
))
(declare-datatypes ((BalanceConc!424 0))(
  ( (BalanceConc!425 (c!16598 Conc!210)) )
))
(declare-datatypes ((TokenValueInjection!210 0))(
  ( (TokenValueInjection!211 (toValue!682 Int) (toChars!541 Int)) )
))
(declare-datatypes ((Rule!206 0))(
  ( (Rule!207 (regex!203 Regex!271) (tag!381 String!1357) (isSeparator!203 Bool) (transformation!203 TokenValueInjection!210)) )
))
(declare-datatypes ((Token!170 0))(
  ( (Token!171 (value!8683 TokenValue!193) (rule!678 Rule!206) (size!905 Int) (originalCharacters!256 List!959)) )
))
(declare-datatypes ((List!960 0))(
  ( (Nil!954) (Cons!954 (h!6351 Token!170) (t!17163 List!960)) )
))
(declare-datatypes ((IArray!423 0))(
  ( (IArray!424 (innerList!269 List!960)) )
))
(declare-datatypes ((Conc!211 0))(
  ( (Node!211 (left!725 Conc!211) (right!1055 Conc!211) (csize!652 Int) (cheight!422 Int)) (Leaf!448 (xs!2790 IArray!423) (csize!653 Int)) (Empty!211) )
))
(declare-datatypes ((BalanceConc!426 0))(
  ( (BalanceConc!427 (c!16599 Conc!211)) )
))
(declare-fun v!6227 () BalanceConc!426)

(declare-fun e!29440 () Bool)

(declare-fun inv!1269 (BalanceConc!426) Bool)

(assert (=> start!3622 (and (inv!1269 v!6227) e!29440)))

(declare-fun e!29442 () Bool)

(assert (=> start!3622 e!29442))

(declare-fun b!50261 () Bool)

(declare-fun res!33011 () Bool)

(declare-fun e!29443 () Bool)

(assert (=> b!50261 (=> (not res!33011) (not e!29443))))

(declare-datatypes ((List!961 0))(
  ( (Nil!955) (Cons!955 (h!6352 Rule!206) (t!17164 List!961)) )
))
(declare-fun rules!1069 () List!961)

(declare-fun isEmpty!189 (List!961) Bool)

(assert (=> b!50261 (= res!33011 (not (isEmpty!189 rules!1069)))))

(declare-fun b!50262 () Bool)

(declare-fun res!33017 () Bool)

(assert (=> b!50262 (=> (not res!33017) (not e!29443))))

(declare-fun rulesProduceEachTokenIndividually!33 (LexerInterface!95 List!961 BalanceConc!426) Bool)

(assert (=> b!50262 (= res!33017 (rulesProduceEachTokenIndividually!33 thiss!11059 rules!1069 v!6227))))

(declare-fun e!29436 () Bool)

(assert (=> b!50263 (= e!29436 (and tp!33348 tp!33347))))

(declare-fun b!50264 () Bool)

(declare-fun e!29435 () Bool)

(declare-fun e!29438 () Bool)

(assert (=> b!50264 (= e!29435 e!29438)))

(declare-fun res!33012 () Bool)

(assert (=> b!50264 (=> res!33012 e!29438)))

(declare-fun lt!8288 () Token!170)

(declare-fun contains!72 (BalanceConc!426 Token!170) Bool)

(assert (=> b!50264 (= res!33012 (not (contains!72 v!6227 lt!8288)))))

(declare-fun apply!56 (BalanceConc!426 Int) Token!170)

(assert (=> b!50264 (= lt!8288 (apply!56 v!6227 (+ 1 from!821)))))

(declare-fun b!50265 () Bool)

(declare-fun tp!33350 () Bool)

(declare-fun inv!1270 (Conc!211) Bool)

(assert (=> b!50265 (= e!29440 (and (inv!1270 (c!16599 v!6227)) tp!33350))))

(declare-fun b!50266 () Bool)

(declare-fun res!33015 () Bool)

(assert (=> b!50266 (=> (not res!33015) (not e!29443))))

(declare-fun rulesInvariant!89 (LexerInterface!95 List!961) Bool)

(assert (=> b!50266 (= res!33015 (rulesInvariant!89 thiss!11059 rules!1069))))

(declare-fun b!50267 () Bool)

(declare-fun lt!8285 () Int)

(assert (=> b!50267 (= e!29438 (and (<= 0 (+ 1 from!821)) (< (+ 1 from!821) lt!8285)))))

(declare-fun lt!8281 () Token!170)

(declare-fun rulesProduceIndividualToken!14 (LexerInterface!95 List!961 Token!170) Bool)

(assert (=> b!50267 (rulesProduceIndividualToken!14 thiss!11059 rules!1069 lt!8281)))

(declare-fun lt!8282 () List!960)

(declare-datatypes ((Unit!530 0))(
  ( (Unit!531) )
))
(declare-fun lt!8284 () Unit!530)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!2 (LexerInterface!95 List!961 List!960 Token!170) Unit!530)

(assert (=> b!50267 (= lt!8284 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!2 thiss!11059 rules!1069 lt!8282 lt!8281))))

(declare-fun b!50268 () Bool)

(declare-fun res!33016 () Bool)

(assert (=> b!50268 (=> res!33016 e!29435)))

(declare-fun contains!73 (List!960 Token!170) Bool)

(assert (=> b!50268 (= res!33016 (not (contains!73 lt!8282 lt!8281)))))

(declare-fun b!50269 () Bool)

(assert (=> b!50269 (= e!29439 e!29443)))

(declare-fun res!33020 () Bool)

(assert (=> b!50269 (=> (not res!33020) (not e!29443))))

(assert (=> b!50269 (= res!33020 (<= from!821 lt!8285))))

(declare-fun size!906 (BalanceConc!426) Int)

(assert (=> b!50269 (= lt!8285 (size!906 v!6227))))

(declare-fun b!50270 () Bool)

(declare-fun e!29441 () Bool)

(declare-fun tp!33349 () Bool)

(assert (=> b!50270 (= e!29442 (and e!29441 tp!33349))))

(declare-fun b!50271 () Bool)

(declare-fun res!33019 () Bool)

(assert (=> b!50271 (=> (not res!33019) (not e!29443))))

(assert (=> b!50271 (= res!33019 (< from!821 (- lt!8285 1)))))

(declare-fun b!50272 () Bool)

(assert (=> b!50272 (= e!29443 (not e!29435))))

(declare-fun res!33018 () Bool)

(assert (=> b!50272 (=> res!33018 e!29435)))

(assert (=> b!50272 (= res!33018 (not (contains!72 v!6227 lt!8281)))))

(assert (=> b!50272 (= lt!8281 (apply!56 v!6227 from!821))))

(declare-fun lt!8287 () List!960)

(declare-fun tail!45 (List!960) List!960)

(declare-fun drop!20 (List!960 Int) List!960)

(assert (=> b!50272 (= (tail!45 lt!8287) (drop!20 lt!8282 (+ 2 from!821)))))

(declare-fun lt!8283 () Unit!530)

(declare-fun lemmaDropTail!16 (List!960 Int) Unit!530)

(assert (=> b!50272 (= lt!8283 (lemmaDropTail!16 lt!8282 (+ 1 from!821)))))

(declare-fun lt!8286 () List!960)

(assert (=> b!50272 (= (tail!45 lt!8286) lt!8287)))

(declare-fun lt!8279 () Unit!530)

(assert (=> b!50272 (= lt!8279 (lemmaDropTail!16 lt!8282 from!821))))

(declare-fun head!360 (List!960) Token!170)

(declare-fun apply!57 (List!960 Int) Token!170)

(assert (=> b!50272 (= (head!360 lt!8287) (apply!57 lt!8282 (+ 1 from!821)))))

(assert (=> b!50272 (= lt!8287 (drop!20 lt!8282 (+ 1 from!821)))))

(declare-fun lt!8278 () Unit!530)

(declare-fun lemmaDropApply!20 (List!960 Int) Unit!530)

(assert (=> b!50272 (= lt!8278 (lemmaDropApply!20 lt!8282 (+ 1 from!821)))))

(assert (=> b!50272 (= (head!360 lt!8286) (apply!57 lt!8282 from!821))))

(assert (=> b!50272 (= lt!8286 (drop!20 lt!8282 from!821))))

(declare-fun lt!8280 () Unit!530)

(assert (=> b!50272 (= lt!8280 (lemmaDropApply!20 lt!8282 from!821))))

(declare-fun list!244 (BalanceConc!426) List!960)

(assert (=> b!50272 (= lt!8282 (list!244 v!6227))))

(declare-fun b!50273 () Bool)

(declare-fun res!33014 () Bool)

(assert (=> b!50273 (=> res!33014 e!29438)))

(assert (=> b!50273 (= res!33014 (not (contains!73 lt!8282 lt!8288)))))

(declare-fun tp!33346 () Bool)

(declare-fun b!50274 () Bool)

(declare-fun inv!1265 (String!1357) Bool)

(declare-fun inv!1271 (TokenValueInjection!210) Bool)

(assert (=> b!50274 (= e!29441 (and tp!33346 (inv!1265 (tag!381 (h!6352 rules!1069))) (inv!1271 (transformation!203 (h!6352 rules!1069))) e!29436))))

(assert (= (and start!3622 res!33013) b!50269))

(assert (= (and b!50269 res!33020) b!50261))

(assert (= (and b!50261 res!33011) b!50266))

(assert (= (and b!50266 res!33015) b!50262))

(assert (= (and b!50262 res!33017) b!50271))

(assert (= (and b!50271 res!33019) b!50272))

(assert (= (and b!50272 (not res!33018)) b!50268))

(assert (= (and b!50268 (not res!33016)) b!50264))

(assert (= (and b!50264 (not res!33012)) b!50273))

(assert (= (and b!50273 (not res!33014)) b!50267))

(assert (= start!3622 b!50265))

(assert (= b!50274 b!50263))

(assert (= b!50270 b!50274))

(assert (= (and start!3622 ((_ is Cons!955) rules!1069)) b!50270))

(declare-fun m!24266 () Bool)

(assert (=> b!50267 m!24266))

(declare-fun m!24268 () Bool)

(assert (=> b!50267 m!24268))

(declare-fun m!24270 () Bool)

(assert (=> b!50274 m!24270))

(declare-fun m!24272 () Bool)

(assert (=> b!50274 m!24272))

(declare-fun m!24274 () Bool)

(assert (=> start!3622 m!24274))

(declare-fun m!24276 () Bool)

(assert (=> b!50266 m!24276))

(declare-fun m!24278 () Bool)

(assert (=> b!50269 m!24278))

(declare-fun m!24280 () Bool)

(assert (=> b!50264 m!24280))

(declare-fun m!24282 () Bool)

(assert (=> b!50264 m!24282))

(declare-fun m!24284 () Bool)

(assert (=> b!50273 m!24284))

(declare-fun m!24286 () Bool)

(assert (=> b!50265 m!24286))

(declare-fun m!24288 () Bool)

(assert (=> b!50268 m!24288))

(declare-fun m!24290 () Bool)

(assert (=> b!50272 m!24290))

(declare-fun m!24292 () Bool)

(assert (=> b!50272 m!24292))

(declare-fun m!24294 () Bool)

(assert (=> b!50272 m!24294))

(declare-fun m!24296 () Bool)

(assert (=> b!50272 m!24296))

(declare-fun m!24298 () Bool)

(assert (=> b!50272 m!24298))

(declare-fun m!24300 () Bool)

(assert (=> b!50272 m!24300))

(declare-fun m!24302 () Bool)

(assert (=> b!50272 m!24302))

(declare-fun m!24304 () Bool)

(assert (=> b!50272 m!24304))

(declare-fun m!24306 () Bool)

(assert (=> b!50272 m!24306))

(declare-fun m!24308 () Bool)

(assert (=> b!50272 m!24308))

(declare-fun m!24310 () Bool)

(assert (=> b!50272 m!24310))

(declare-fun m!24312 () Bool)

(assert (=> b!50272 m!24312))

(declare-fun m!24314 () Bool)

(assert (=> b!50272 m!24314))

(declare-fun m!24316 () Bool)

(assert (=> b!50272 m!24316))

(declare-fun m!24318 () Bool)

(assert (=> b!50272 m!24318))

(declare-fun m!24320 () Bool)

(assert (=> b!50272 m!24320))

(declare-fun m!24322 () Bool)

(assert (=> b!50262 m!24322))

(declare-fun m!24324 () Bool)

(assert (=> b!50261 m!24324))

(check-sat b_and!1567 (not b_next!1527) (not b!50272) b_and!1569 (not b!50273) (not b!50274) (not b_next!1525) (not start!3622) (not b!50261) (not b!50262) (not b!50264) (not b!50269) (not b!50268) (not b!50266) (not b!50267) (not b!50265) (not b!50270))
(check-sat b_and!1569 b_and!1567 (not b_next!1525) (not b_next!1527))
