; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352736 () Bool)

(assert start!352736)

(declare-fun b!3758367 () Bool)

(declare-fun b_free!100565 () Bool)

(declare-fun b_next!101269 () Bool)

(assert (=> b!3758367 (= b_free!100565 (not b_next!101269))))

(declare-fun tp!1148352 () Bool)

(declare-fun b_and!279155 () Bool)

(assert (=> b!3758367 (= tp!1148352 b_and!279155)))

(declare-fun b_free!100567 () Bool)

(declare-fun b_next!101271 () Bool)

(assert (=> b!3758367 (= b_free!100567 (not b_next!101271))))

(declare-fun tp!1148349 () Bool)

(declare-fun b_and!279157 () Bool)

(assert (=> b!3758367 (= tp!1148349 b_and!279157)))

(declare-fun tp!1148353 () Bool)

(declare-fun e!2324246 () Bool)

(declare-fun b!3758364 () Bool)

(declare-datatypes ((List!40173 0))(
  ( (Nil!40049) (Cons!40049 (h!45469 (_ BitVec 16)) (t!303680 List!40173)) )
))
(declare-datatypes ((TokenValue!6360 0))(
  ( (FloatLiteralValue!12720 (text!44965 List!40173)) (TokenValueExt!6359 (__x!24937 Int)) (Broken!31800 (value!195268 List!40173)) (Object!6483) (End!6360) (Def!6360) (Underscore!6360) (Match!6360) (Else!6360) (Error!6360) (Case!6360) (If!6360) (Extends!6360) (Abstract!6360) (Class!6360) (Val!6360) (DelimiterValue!12720 (del!6420 List!40173)) (KeywordValue!6366 (value!195269 List!40173)) (CommentValue!12720 (value!195270 List!40173)) (WhitespaceValue!12720 (value!195271 List!40173)) (IndentationValue!6360 (value!195272 List!40173)) (String!45457) (Int32!6360) (Broken!31801 (value!195273 List!40173)) (Boolean!6361) (Unit!57777) (OperatorValue!6363 (op!6420 List!40173)) (IdentifierValue!12720 (value!195274 List!40173)) (IdentifierValue!12721 (value!195275 List!40173)) (WhitespaceValue!12721 (value!195276 List!40173)) (True!12720) (False!12720) (Broken!31802 (value!195277 List!40173)) (Broken!31803 (value!195278 List!40173)) (True!12721) (RightBrace!6360) (RightBracket!6360) (Colon!6360) (Null!6360) (Comma!6360) (LeftBracket!6360) (False!12721) (LeftBrace!6360) (ImaginaryLiteralValue!6360 (text!44966 List!40173)) (StringLiteralValue!19080 (value!195279 List!40173)) (EOFValue!6360 (value!195280 List!40173)) (IdentValue!6360 (value!195281 List!40173)) (DelimiterValue!12721 (value!195282 List!40173)) (DedentValue!6360 (value!195283 List!40173)) (NewLineValue!6360 (value!195284 List!40173)) (IntegerValue!19080 (value!195285 (_ BitVec 32)) (text!44967 List!40173)) (IntegerValue!19081 (value!195286 Int) (text!44968 List!40173)) (Times!6360) (Or!6360) (Equal!6360) (Minus!6360) (Broken!31804 (value!195287 List!40173)) (And!6360) (Div!6360) (LessEqual!6360) (Mod!6360) (Concat!17395) (Not!6360) (Plus!6360) (SpaceValue!6360 (value!195288 List!40173)) (IntegerValue!19082 (value!195289 Int) (text!44969 List!40173)) (StringLiteralValue!19081 (text!44970 List!40173)) (FloatLiteralValue!12721 (text!44971 List!40173)) (BytesLiteralValue!6360 (value!195290 List!40173)) (CommentValue!12721 (value!195291 List!40173)) (StringLiteralValue!19082 (value!195292 List!40173)) (ErrorTokenValue!6360 (msg!6421 List!40173)) )
))
(declare-datatypes ((C!22256 0))(
  ( (C!22257 (val!13192 Int)) )
))
(declare-datatypes ((List!40174 0))(
  ( (Nil!40050) (Cons!40050 (h!45470 C!22256) (t!303681 List!40174)) )
))
(declare-datatypes ((IArray!24525 0))(
  ( (IArray!24526 (innerList!12320 List!40174)) )
))
(declare-datatypes ((Conc!12260 0))(
  ( (Node!12260 (left!31012 Conc!12260) (right!31342 Conc!12260) (csize!24750 Int) (cheight!12471 Int)) (Leaf!19017 (xs!15462 IArray!24525) (csize!24751 Int)) (Empty!12260) )
))
(declare-datatypes ((BalanceConc!24114 0))(
  ( (BalanceConc!24115 (c!650713 Conc!12260)) )
))
(declare-datatypes ((TokenValueInjection!12148 0))(
  ( (TokenValueInjection!12149 (toValue!8482 Int) (toChars!8341 Int)) )
))
(declare-datatypes ((Regex!11035 0))(
  ( (ElementMatch!11035 (c!650714 C!22256)) (Concat!17396 (regOne!22582 Regex!11035) (regTwo!22582 Regex!11035)) (EmptyExpr!11035) (Star!11035 (reg!11364 Regex!11035)) (EmptyLang!11035) (Union!11035 (regOne!22583 Regex!11035) (regTwo!22583 Regex!11035)) )
))
(declare-datatypes ((String!45458 0))(
  ( (String!45459 (value!195293 String)) )
))
(declare-datatypes ((Rule!12060 0))(
  ( (Rule!12061 (regex!6130 Regex!11035) (tag!6990 String!45458) (isSeparator!6130 Bool) (transformation!6130 TokenValueInjection!12148)) )
))
(declare-datatypes ((Token!11398 0))(
  ( (Token!11399 (value!195294 TokenValue!6360) (rule!8894 Rule!12060) (size!30143 Int) (originalCharacters!6730 List!40174)) )
))
(declare-fun separatorToken!144 () Token!11398)

(declare-fun e!2324251 () Bool)

(declare-fun inv!53677 (String!45458) Bool)

(declare-fun inv!53684 (TokenValueInjection!12148) Bool)

(assert (=> b!3758364 (= e!2324246 (and tp!1148353 (inv!53677 (tag!6990 (rule!8894 separatorToken!144))) (inv!53684 (transformation!6130 (rule!8894 separatorToken!144))) e!2324251))))

(declare-fun b!3758365 () Bool)

(declare-fun e!2324247 () Bool)

(declare-fun e!2324250 () Bool)

(assert (=> b!3758365 (= e!2324247 e!2324250)))

(declare-fun res!1522139 () Bool)

(assert (=> b!3758365 (=> (not res!1522139) (not e!2324250))))

(declare-fun from!856 () Int)

(declare-fun lt!1301012 () Int)

(assert (=> b!3758365 (= res!1522139 (and (<= from!856 lt!1301012) (isSeparator!6130 (rule!8894 separatorToken!144)) (< from!856 lt!1301012)))))

(declare-datatypes ((List!40175 0))(
  ( (Nil!40051) (Cons!40051 (h!45471 Token!11398) (t!303682 List!40175)) )
))
(declare-datatypes ((IArray!24527 0))(
  ( (IArray!24528 (innerList!12321 List!40175)) )
))
(declare-datatypes ((Conc!12261 0))(
  ( (Node!12261 (left!31013 Conc!12261) (right!31343 Conc!12261) (csize!24752 Int) (cheight!12472 Int)) (Leaf!19018 (xs!15463 IArray!24527) (csize!24753 Int)) (Empty!12261) )
))
(declare-datatypes ((BalanceConc!24116 0))(
  ( (BalanceConc!24117 (c!650715 Conc!12261)) )
))
(declare-fun v!6366 () BalanceConc!24116)

(declare-fun size!30144 (BalanceConc!24116) Int)

(assert (=> b!3758365 (= lt!1301012 (size!30144 v!6366))))

(declare-fun b!3758366 () Bool)

(declare-fun e!2324244 () Bool)

(declare-fun tp!1148354 () Bool)

(declare-fun inv!21 (TokenValue!6360) Bool)

(assert (=> b!3758366 (= e!2324244 (and (inv!21 (value!195294 separatorToken!144)) e!2324246 tp!1148354))))

(declare-fun res!1522140 () Bool)

(assert (=> start!352736 (=> (not res!1522140) (not e!2324247))))

(declare-datatypes ((LexerInterface!5719 0))(
  ( (LexerInterfaceExt!5716 (__x!24938 Int)) (Lexer!5717) )
))
(declare-fun thiss!14060 () LexerInterface!5719)

(get-info :version)

(assert (=> start!352736 (= res!1522140 (and ((_ is Lexer!5717) thiss!14060) (>= from!856 0)))))

(assert (=> start!352736 e!2324247))

(declare-fun acc!419 () BalanceConc!24114)

(declare-fun e!2324249 () Bool)

(declare-fun inv!53685 (BalanceConc!24114) Bool)

(assert (=> start!352736 (and (inv!53685 acc!419) e!2324249)))

(assert (=> start!352736 true))

(declare-fun inv!53686 (Token!11398) Bool)

(assert (=> start!352736 (and (inv!53686 separatorToken!144) e!2324244)))

(declare-fun e!2324252 () Bool)

(declare-fun inv!53687 (BalanceConc!24116) Bool)

(assert (=> start!352736 (and (inv!53687 v!6366) e!2324252)))

(assert (=> b!3758367 (= e!2324251 (and tp!1148352 tp!1148349))))

(declare-fun b!3758368 () Bool)

(declare-fun tp!1148351 () Bool)

(declare-fun inv!53688 (Conc!12260) Bool)

(assert (=> b!3758368 (= e!2324249 (and (inv!53688 (c!650713 acc!419)) tp!1148351))))

(declare-fun b!3758369 () Bool)

(assert (=> b!3758369 (= e!2324250 (not (< (- lt!1301012 (+ 1 from!856)) (- lt!1301012 from!856))))))

(declare-fun lt!1301011 () BalanceConc!24114)

(declare-fun ++!9921 (BalanceConc!24114 BalanceConc!24114) BalanceConc!24114)

(declare-fun charsOf!3983 (Token!11398) BalanceConc!24114)

(declare-fun apply!9428 (BalanceConc!24116 Int) Token!11398)

(assert (=> b!3758369 (= lt!1301011 (++!9921 (++!9921 acc!419 (charsOf!3983 (apply!9428 v!6366 from!856))) (charsOf!3983 separatorToken!144)))))

(declare-fun lt!1301015 () List!40175)

(declare-fun lt!1301010 () List!40175)

(declare-fun tail!5760 (List!40175) List!40175)

(declare-fun drop!2091 (List!40175 Int) List!40175)

(assert (=> b!3758369 (= (tail!5760 lt!1301015) (drop!2091 lt!1301010 (+ 1 from!856)))))

(declare-datatypes ((Unit!57778 0))(
  ( (Unit!57779) )
))
(declare-fun lt!1301013 () Unit!57778)

(declare-fun lemmaDropTail!1111 (List!40175 Int) Unit!57778)

(assert (=> b!3758369 (= lt!1301013 (lemmaDropTail!1111 lt!1301010 from!856))))

(declare-fun head!8033 (List!40175) Token!11398)

(declare-fun apply!9429 (List!40175 Int) Token!11398)

(assert (=> b!3758369 (= (head!8033 lt!1301015) (apply!9429 lt!1301010 from!856))))

(assert (=> b!3758369 (= lt!1301015 (drop!2091 lt!1301010 from!856))))

(declare-fun lt!1301014 () Unit!57778)

(declare-fun lemmaDropApply!1227 (List!40175 Int) Unit!57778)

(assert (=> b!3758369 (= lt!1301014 (lemmaDropApply!1227 lt!1301010 from!856))))

(declare-fun list!14772 (BalanceConc!24116) List!40175)

(assert (=> b!3758369 (= lt!1301010 (list!14772 v!6366))))

(declare-fun b!3758370 () Bool)

(declare-fun tp!1148350 () Bool)

(declare-fun inv!53689 (Conc!12261) Bool)

(assert (=> b!3758370 (= e!2324252 (and (inv!53689 (c!650715 v!6366)) tp!1148350))))

(assert (= (and start!352736 res!1522140) b!3758365))

(assert (= (and b!3758365 res!1522139) b!3758369))

(assert (= start!352736 b!3758368))

(assert (= b!3758364 b!3758367))

(assert (= b!3758366 b!3758364))

(assert (= start!352736 b!3758366))

(assert (= start!352736 b!3758370))

(declare-fun m!4251489 () Bool)

(assert (=> b!3758366 m!4251489))

(declare-fun m!4251491 () Bool)

(assert (=> b!3758365 m!4251491))

(declare-fun m!4251493 () Bool)

(assert (=> b!3758368 m!4251493))

(declare-fun m!4251495 () Bool)

(assert (=> b!3758370 m!4251495))

(declare-fun m!4251497 () Bool)

(assert (=> b!3758369 m!4251497))

(declare-fun m!4251499 () Bool)

(assert (=> b!3758369 m!4251499))

(declare-fun m!4251501 () Bool)

(assert (=> b!3758369 m!4251501))

(declare-fun m!4251503 () Bool)

(assert (=> b!3758369 m!4251503))

(assert (=> b!3758369 m!4251501))

(assert (=> b!3758369 m!4251497))

(declare-fun m!4251505 () Bool)

(assert (=> b!3758369 m!4251505))

(declare-fun m!4251507 () Bool)

(assert (=> b!3758369 m!4251507))

(declare-fun m!4251509 () Bool)

(assert (=> b!3758369 m!4251509))

(declare-fun m!4251511 () Bool)

(assert (=> b!3758369 m!4251511))

(declare-fun m!4251513 () Bool)

(assert (=> b!3758369 m!4251513))

(assert (=> b!3758369 m!4251499))

(assert (=> b!3758369 m!4251503))

(declare-fun m!4251515 () Bool)

(assert (=> b!3758369 m!4251515))

(declare-fun m!4251517 () Bool)

(assert (=> b!3758369 m!4251517))

(declare-fun m!4251519 () Bool)

(assert (=> b!3758369 m!4251519))

(declare-fun m!4251521 () Bool)

(assert (=> b!3758369 m!4251521))

(declare-fun m!4251523 () Bool)

(assert (=> start!352736 m!4251523))

(declare-fun m!4251525 () Bool)

(assert (=> start!352736 m!4251525))

(declare-fun m!4251527 () Bool)

(assert (=> start!352736 m!4251527))

(declare-fun m!4251529 () Bool)

(assert (=> b!3758364 m!4251529))

(declare-fun m!4251531 () Bool)

(assert (=> b!3758364 m!4251531))

(check-sat (not start!352736) (not b_next!101269) (not b!3758366) (not b_next!101271) b_and!279155 (not b!3758368) b_and!279157 (not b!3758365) (not b!3758364) (not b!3758369) (not b!3758370))
(check-sat b_and!279157 b_and!279155 (not b_next!101271) (not b_next!101269))
