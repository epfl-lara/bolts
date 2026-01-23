; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27254 () Bool)

(assert start!27254)

(declare-fun b!255118 () Bool)

(declare-fun b_free!9569 () Bool)

(declare-fun b_next!9569 () Bool)

(assert (=> b!255118 (= b_free!9569 (not b_next!9569))))

(declare-fun tp!98615 () Bool)

(declare-fun b_and!19501 () Bool)

(assert (=> b!255118 (= tp!98615 b_and!19501)))

(declare-fun b_free!9571 () Bool)

(declare-fun b_next!9571 () Bool)

(assert (=> b!255118 (= b_free!9571 (not b_next!9571))))

(declare-fun tp!98611 () Bool)

(declare-fun b_and!19503 () Bool)

(assert (=> b!255118 (= tp!98611 b_and!19503)))

(declare-fun b!255122 () Bool)

(declare-fun b_free!9573 () Bool)

(declare-fun b_next!9573 () Bool)

(assert (=> b!255122 (= b_free!9573 (not b_next!9573))))

(declare-fun tp!98609 () Bool)

(declare-fun b_and!19505 () Bool)

(assert (=> b!255122 (= tp!98609 b_and!19505)))

(declare-fun b_free!9575 () Bool)

(declare-fun b_next!9575 () Bool)

(assert (=> b!255122 (= b_free!9575 (not b_next!9575))))

(declare-fun tp!98621 () Bool)

(declare-fun b_and!19507 () Bool)

(assert (=> b!255122 (= tp!98621 b_and!19507)))

(declare-fun b!255128 () Bool)

(declare-fun b_free!9577 () Bool)

(declare-fun b_next!9577 () Bool)

(assert (=> b!255128 (= b_free!9577 (not b_next!9577))))

(declare-fun tp!98613 () Bool)

(declare-fun b_and!19509 () Bool)

(assert (=> b!255128 (= tp!98613 b_and!19509)))

(declare-fun b_free!9579 () Bool)

(declare-fun b_next!9579 () Bool)

(assert (=> b!255128 (= b_free!9579 (not b_next!9579))))

(declare-fun tp!98616 () Bool)

(declare-fun b_and!19511 () Bool)

(assert (=> b!255128 (= tp!98616 b_and!19511)))

(declare-fun b!255110 () Bool)

(declare-fun res!117990 () Bool)

(declare-fun e!158655 () Bool)

(assert (=> b!255110 (=> (not res!117990) (not e!158655))))

(declare-datatypes ((List!3741 0))(
  ( (Nil!3731) (Cons!3731 (h!9128 (_ BitVec 16)) (t!36117 List!3741)) )
))
(declare-datatypes ((TokenValue!733 0))(
  ( (FloatLiteralValue!1466 (text!5576 List!3741)) (TokenValueExt!732 (__x!2953 Int)) (Broken!3665 (value!24553 List!3741)) (Object!742) (End!733) (Def!733) (Underscore!733) (Match!733) (Else!733) (Error!733) (Case!733) (If!733) (Extends!733) (Abstract!733) (Class!733) (Val!733) (DelimiterValue!1466 (del!793 List!3741)) (KeywordValue!739 (value!24554 List!3741)) (CommentValue!1466 (value!24555 List!3741)) (WhitespaceValue!1466 (value!24556 List!3741)) (IndentationValue!733 (value!24557 List!3741)) (String!4744) (Int32!733) (Broken!3666 (value!24558 List!3741)) (Boolean!734) (Unit!4553) (OperatorValue!736 (op!793 List!3741)) (IdentifierValue!1466 (value!24559 List!3741)) (IdentifierValue!1467 (value!24560 List!3741)) (WhitespaceValue!1467 (value!24561 List!3741)) (True!1466) (False!1466) (Broken!3667 (value!24562 List!3741)) (Broken!3668 (value!24563 List!3741)) (True!1467) (RightBrace!733) (RightBracket!733) (Colon!733) (Null!733) (Comma!733) (LeftBracket!733) (False!1467) (LeftBrace!733) (ImaginaryLiteralValue!733 (text!5577 List!3741)) (StringLiteralValue!2199 (value!24564 List!3741)) (EOFValue!733 (value!24565 List!3741)) (IdentValue!733 (value!24566 List!3741)) (DelimiterValue!1467 (value!24567 List!3741)) (DedentValue!733 (value!24568 List!3741)) (NewLineValue!733 (value!24569 List!3741)) (IntegerValue!2199 (value!24570 (_ BitVec 32)) (text!5578 List!3741)) (IntegerValue!2200 (value!24571 Int) (text!5579 List!3741)) (Times!733) (Or!733) (Equal!733) (Minus!733) (Broken!3669 (value!24572 List!3741)) (And!733) (Div!733) (LessEqual!733) (Mod!733) (Concat!1668) (Not!733) (Plus!733) (SpaceValue!733 (value!24573 List!3741)) (IntegerValue!2201 (value!24574 Int) (text!5580 List!3741)) (StringLiteralValue!2200 (text!5581 List!3741)) (FloatLiteralValue!1467 (text!5582 List!3741)) (BytesLiteralValue!733 (value!24575 List!3741)) (CommentValue!1467 (value!24576 List!3741)) (StringLiteralValue!2201 (value!24577 List!3741)) (ErrorTokenValue!733 (msg!794 List!3741)) )
))
(declare-datatypes ((C!2792 0))(
  ( (C!2793 (val!1282 Int)) )
))
(declare-datatypes ((List!3742 0))(
  ( (Nil!3732) (Cons!3732 (h!9129 C!2792) (t!36118 List!3742)) )
))
(declare-datatypes ((IArray!2489 0))(
  ( (IArray!2490 (innerList!1302 List!3742)) )
))
(declare-datatypes ((Conc!1244 0))(
  ( (Node!1244 (left!3066 Conc!1244) (right!3396 Conc!1244) (csize!2718 Int) (cheight!1455 Int)) (Leaf!1939 (xs!3839 IArray!2489) (csize!2719 Int)) (Empty!1244) )
))
(declare-datatypes ((BalanceConc!2496 0))(
  ( (BalanceConc!2497 (c!48303 Conc!1244)) )
))
(declare-datatypes ((TokenValueInjection!1238 0))(
  ( (TokenValueInjection!1239 (toValue!1426 Int) (toChars!1285 Int)) )
))
(declare-datatypes ((String!4745 0))(
  ( (String!4746 (value!24578 String)) )
))
(declare-datatypes ((Regex!935 0))(
  ( (ElementMatch!935 (c!48304 C!2792)) (Concat!1669 (regOne!2382 Regex!935) (regTwo!2382 Regex!935)) (EmptyExpr!935) (Star!935 (reg!1264 Regex!935)) (EmptyLang!935) (Union!935 (regOne!2383 Regex!935) (regTwo!2383 Regex!935)) )
))
(declare-datatypes ((Rule!1222 0))(
  ( (Rule!1223 (regex!711 Regex!935) (tag!919 String!4745) (isSeparator!711 Bool) (transformation!711 TokenValueInjection!1238)) )
))
(declare-datatypes ((Token!1166 0))(
  ( (Token!1167 (value!24579 TokenValue!733) (rule!1292 Rule!1222) (size!2959 Int) (originalCharacters!754 List!3742)) )
))
(declare-fun separatorToken!170 () Token!1166)

(declare-datatypes ((LexerInterface!597 0))(
  ( (LexerInterfaceExt!594 (__x!2954 Int)) (Lexer!595) )
))
(declare-fun thiss!17480 () LexerInterface!597)

(declare-datatypes ((List!3743 0))(
  ( (Nil!3733) (Cons!3733 (h!9130 Rule!1222) (t!36119 List!3743)) )
))
(declare-fun rules!1920 () List!3743)

(declare-fun rulesProduceIndividualToken!346 (LexerInterface!597 List!3743 Token!1166) Bool)

(assert (=> b!255110 (= res!117990 (rulesProduceIndividualToken!346 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!98617 () Bool)

(declare-fun e!158649 () Bool)

(declare-fun e!158640 () Bool)

(declare-fun b!255111 () Bool)

(declare-fun inv!4598 (String!4745) Bool)

(declare-fun inv!4601 (TokenValueInjection!1238) Bool)

(assert (=> b!255111 (= e!158640 (and tp!98617 (inv!4598 (tag!919 (rule!1292 separatorToken!170))) (inv!4601 (transformation!711 (rule!1292 separatorToken!170))) e!158649))))

(declare-fun b!255112 () Bool)

(declare-fun res!117982 () Bool)

(assert (=> b!255112 (=> (not res!117982) (not e!158655))))

(declare-datatypes ((List!3744 0))(
  ( (Nil!3734) (Cons!3734 (h!9131 Token!1166) (t!36120 List!3744)) )
))
(declare-fun tokens!465 () List!3744)

(declare-fun lambda!8536 () Int)

(declare-fun forall!901 (List!3744 Int) Bool)

(assert (=> b!255112 (= res!117982 (forall!901 tokens!465 lambda!8536))))

(declare-fun res!117988 () Bool)

(declare-fun e!158642 () Bool)

(assert (=> start!27254 (=> (not res!117988) (not e!158642))))

(get-info :version)

(assert (=> start!27254 (= res!117988 ((_ is Lexer!595) thiss!17480))))

(assert (=> start!27254 e!158642))

(assert (=> start!27254 true))

(declare-fun e!158643 () Bool)

(assert (=> start!27254 e!158643))

(declare-fun e!158654 () Bool)

(declare-fun inv!4602 (Token!1166) Bool)

(assert (=> start!27254 (and (inv!4602 separatorToken!170) e!158654)))

(declare-fun e!158646 () Bool)

(assert (=> start!27254 e!158646))

(declare-fun b!255113 () Bool)

(declare-fun tp!98619 () Bool)

(declare-fun e!158641 () Bool)

(declare-fun e!158653 () Bool)

(assert (=> b!255113 (= e!158653 (and tp!98619 (inv!4598 (tag!919 (rule!1292 (h!9131 tokens!465)))) (inv!4601 (transformation!711 (rule!1292 (h!9131 tokens!465)))) e!158641))))

(declare-fun b!255114 () Bool)

(declare-fun res!117986 () Bool)

(assert (=> b!255114 (=> (not res!117986) (not e!158642))))

(declare-fun rulesInvariant!563 (LexerInterface!597 List!3743) Bool)

(assert (=> b!255114 (= res!117986 (rulesInvariant!563 thiss!17480 rules!1920))))

(declare-fun b!255115 () Bool)

(declare-fun res!117987 () Bool)

(assert (=> b!255115 (=> (not res!117987) (not e!158655))))

(declare-fun sepAndNonSepRulesDisjointChars!300 (List!3743 List!3743) Bool)

(assert (=> b!255115 (= res!117987 (sepAndNonSepRulesDisjointChars!300 rules!1920 rules!1920))))

(declare-fun tp!98620 () Bool)

(declare-fun b!255116 () Bool)

(declare-fun inv!21 (TokenValue!733) Bool)

(assert (=> b!255116 (= e!158654 (and (inv!21 (value!24579 separatorToken!170)) e!158640 tp!98620))))

(declare-fun b!255117 () Bool)

(declare-fun e!158644 () Bool)

(declare-fun tp!98614 () Bool)

(assert (=> b!255117 (= e!158646 (and (inv!4602 (h!9131 tokens!465)) e!158644 tp!98614))))

(assert (=> b!255118 (= e!158641 (and tp!98615 tp!98611))))

(declare-fun b!255119 () Bool)

(declare-fun res!117989 () Bool)

(assert (=> b!255119 (=> (not res!117989) (not e!158655))))

(assert (=> b!255119 (= res!117989 (isSeparator!711 (rule!1292 separatorToken!170)))))

(declare-fun b!255120 () Bool)

(declare-fun e!158648 () Bool)

(declare-fun tp!98618 () Bool)

(assert (=> b!255120 (= e!158643 (and e!158648 tp!98618))))

(declare-fun b!255121 () Bool)

(assert (=> b!255121 (= e!158642 e!158655)))

(declare-fun res!117984 () Bool)

(assert (=> b!255121 (=> (not res!117984) (not e!158655))))

(declare-datatypes ((IArray!2491 0))(
  ( (IArray!2492 (innerList!1303 List!3744)) )
))
(declare-datatypes ((Conc!1245 0))(
  ( (Node!1245 (left!3067 Conc!1245) (right!3397 Conc!1245) (csize!2720 Int) (cheight!1456 Int)) (Leaf!1940 (xs!3840 IArray!2491) (csize!2721 Int)) (Empty!1245) )
))
(declare-datatypes ((BalanceConc!2498 0))(
  ( (BalanceConc!2499 (c!48305 Conc!1245)) )
))
(declare-fun lt!104012 () BalanceConc!2498)

(declare-fun rulesProduceEachTokenIndividually!389 (LexerInterface!597 List!3743 BalanceConc!2498) Bool)

(assert (=> b!255121 (= res!117984 (rulesProduceEachTokenIndividually!389 thiss!17480 rules!1920 lt!104012))))

(declare-fun seqFromList!790 (List!3744) BalanceConc!2498)

(assert (=> b!255121 (= lt!104012 (seqFromList!790 tokens!465))))

(declare-fun e!158639 () Bool)

(assert (=> b!255122 (= e!158639 (and tp!98609 tp!98621))))

(declare-fun b!255123 () Bool)

(declare-fun res!117983 () Bool)

(assert (=> b!255123 (=> (not res!117983) (not e!158655))))

(assert (=> b!255123 (= res!117983 (not ((_ is Cons!3734) tokens!465)))))

(declare-fun b!255124 () Bool)

(declare-fun res!117985 () Bool)

(assert (=> b!255124 (=> (not res!117985) (not e!158642))))

(declare-fun isEmpty!2324 (List!3743) Bool)

(assert (=> b!255124 (= res!117985 (not (isEmpty!2324 rules!1920)))))

(declare-fun b!255125 () Bool)

(declare-fun tp!98610 () Bool)

(assert (=> b!255125 (= e!158644 (and (inv!21 (value!24579 (h!9131 tokens!465))) e!158653 tp!98610))))

(declare-fun b!255126 () Bool)

(assert (=> b!255126 (= e!158655 false)))

(declare-fun lt!104011 () BalanceConc!2496)

(declare-fun printWithSeparatorTokenWhenNeededRec!272 (LexerInterface!597 List!3743 BalanceConc!2498 Token!1166 Int) BalanceConc!2496)

(assert (=> b!255126 (= lt!104011 (printWithSeparatorTokenWhenNeededRec!272 thiss!17480 rules!1920 lt!104012 separatorToken!170 0))))

(declare-fun b!255127 () Bool)

(declare-fun tp!98612 () Bool)

(assert (=> b!255127 (= e!158648 (and tp!98612 (inv!4598 (tag!919 (h!9130 rules!1920))) (inv!4601 (transformation!711 (h!9130 rules!1920))) e!158639))))

(assert (=> b!255128 (= e!158649 (and tp!98613 tp!98616))))

(assert (= (and start!27254 res!117988) b!255124))

(assert (= (and b!255124 res!117985) b!255114))

(assert (= (and b!255114 res!117986) b!255121))

(assert (= (and b!255121 res!117984) b!255110))

(assert (= (and b!255110 res!117990) b!255119))

(assert (= (and b!255119 res!117989) b!255112))

(assert (= (and b!255112 res!117982) b!255115))

(assert (= (and b!255115 res!117987) b!255123))

(assert (= (and b!255123 res!117983) b!255126))

(assert (= b!255127 b!255122))

(assert (= b!255120 b!255127))

(assert (= (and start!27254 ((_ is Cons!3733) rules!1920)) b!255120))

(assert (= b!255111 b!255128))

(assert (= b!255116 b!255111))

(assert (= start!27254 b!255116))

(assert (= b!255113 b!255118))

(assert (= b!255125 b!255113))

(assert (= b!255117 b!255125))

(assert (= (and start!27254 ((_ is Cons!3734) tokens!465)) b!255117))

(declare-fun m!314379 () Bool)

(assert (=> b!255124 m!314379))

(declare-fun m!314381 () Bool)

(assert (=> b!255111 m!314381))

(declare-fun m!314383 () Bool)

(assert (=> b!255111 m!314383))

(declare-fun m!314385 () Bool)

(assert (=> b!255117 m!314385))

(declare-fun m!314387 () Bool)

(assert (=> b!255114 m!314387))

(declare-fun m!314389 () Bool)

(assert (=> b!255112 m!314389))

(declare-fun m!314391 () Bool)

(assert (=> b!255110 m!314391))

(declare-fun m!314393 () Bool)

(assert (=> start!27254 m!314393))

(declare-fun m!314395 () Bool)

(assert (=> b!255113 m!314395))

(declare-fun m!314397 () Bool)

(assert (=> b!255113 m!314397))

(declare-fun m!314399 () Bool)

(assert (=> b!255125 m!314399))

(declare-fun m!314401 () Bool)

(assert (=> b!255116 m!314401))

(declare-fun m!314403 () Bool)

(assert (=> b!255126 m!314403))

(declare-fun m!314405 () Bool)

(assert (=> b!255115 m!314405))

(declare-fun m!314407 () Bool)

(assert (=> b!255121 m!314407))

(declare-fun m!314409 () Bool)

(assert (=> b!255121 m!314409))

(declare-fun m!314411 () Bool)

(assert (=> b!255127 m!314411))

(declare-fun m!314413 () Bool)

(assert (=> b!255127 m!314413))

(check-sat (not b!255126) (not b_next!9573) (not start!27254) (not b_next!9579) (not b!255117) (not b!255110) (not b!255120) (not b!255125) b_and!19503 b_and!19505 (not b!255112) (not b!255111) b_and!19501 (not b_next!9577) (not b!255116) (not b!255114) (not b_next!9569) (not b!255121) (not b!255115) (not b!255124) (not b!255113) b_and!19511 (not b_next!9575) b_and!19507 (not b!255127) b_and!19509 (not b_next!9571))
(check-sat b_and!19503 (not b_next!9573) b_and!19505 b_and!19501 (not b_next!9577) (not b_next!9569) (not b_next!9579) b_and!19507 b_and!19511 (not b_next!9575) b_and!19509 (not b_next!9571))
