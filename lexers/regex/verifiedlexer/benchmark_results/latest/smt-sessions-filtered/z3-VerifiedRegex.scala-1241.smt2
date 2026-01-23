; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64620 () Bool)

(assert start!64620)

(declare-fun e!408900 () Bool)

(declare-fun tp!201624 () Bool)

(declare-datatypes ((List!7192 0))(
  ( (Nil!7178) (Cons!7178 (h!12579 (_ BitVec 16)) (t!86294 List!7192)) )
))
(declare-datatypes ((TokenValue!1486 0))(
  ( (FloatLiteralValue!2972 (text!10847 List!7192)) (TokenValueExt!1485 (__x!5069 Int)) (Broken!7430 (value!46507 List!7192)) (Object!1499) (End!1486) (Def!1486) (Underscore!1486) (Match!1486) (Else!1486) (Error!1486) (Case!1486) (If!1486) (Extends!1486) (Abstract!1486) (Class!1486) (Val!1486) (DelimiterValue!2972 (del!1546 List!7192)) (KeywordValue!1492 (value!46508 List!7192)) (CommentValue!2972 (value!46509 List!7192)) (WhitespaceValue!2972 (value!46510 List!7192)) (IndentationValue!1486 (value!46511 List!7192)) (String!9167) (Int32!1486) (Broken!7431 (value!46512 List!7192)) (Boolean!1487) (Unit!12488) (OperatorValue!1489 (op!1546 List!7192)) (IdentifierValue!2972 (value!46513 List!7192)) (IdentifierValue!2973 (value!46514 List!7192)) (WhitespaceValue!2973 (value!46515 List!7192)) (True!2972) (False!2972) (Broken!7432 (value!46516 List!7192)) (Broken!7433 (value!46517 List!7192)) (True!2973) (RightBrace!1486) (RightBracket!1486) (Colon!1486) (Null!1486) (Comma!1486) (LeftBracket!1486) (False!2973) (LeftBrace!1486) (ImaginaryLiteralValue!1486 (text!10848 List!7192)) (StringLiteralValue!4458 (value!46518 List!7192)) (EOFValue!1486 (value!46519 List!7192)) (IdentValue!1486 (value!46520 List!7192)) (DelimiterValue!2973 (value!46521 List!7192)) (DedentValue!1486 (value!46522 List!7192)) (NewLineValue!1486 (value!46523 List!7192)) (IntegerValue!4458 (value!46524 (_ BitVec 32)) (text!10849 List!7192)) (IntegerValue!4459 (value!46525 Int) (text!10850 List!7192)) (Times!1486) (Or!1486) (Equal!1486) (Minus!1486) (Broken!7434 (value!46526 List!7192)) (And!1486) (Div!1486) (LessEqual!1486) (Mod!1486) (Concat!3273) (Not!1486) (Plus!1486) (SpaceValue!1486 (value!46527 List!7192)) (IntegerValue!4460 (value!46528 Int) (text!10851 List!7192)) (StringLiteralValue!4459 (text!10852 List!7192)) (FloatLiteralValue!2973 (text!10853 List!7192)) (BytesLiteralValue!1486 (value!46529 List!7192)) (CommentValue!2973 (value!46530 List!7192)) (StringLiteralValue!4460 (value!46531 List!7192)) (ErrorTokenValue!1486 (msg!1547 List!7192)) )
))
(declare-datatypes ((Regex!1787 0))(
  ( (ElementMatch!1787 (c!119011 (_ BitVec 16))) (Concat!3274 (regOne!4086 Regex!1787) (regTwo!4086 Regex!1787)) (EmptyExpr!1787) (Star!1787 (reg!2116 Regex!1787)) (EmptyLang!1787) (Union!1787 (regOne!4087 Regex!1787) (regTwo!4087 Regex!1787)) )
))
(declare-datatypes ((String!9168 0))(
  ( (String!9169 (value!46532 String)) )
))
(declare-datatypes ((IArray!5091 0))(
  ( (IArray!5092 (innerList!2603 List!7192)) )
))
(declare-datatypes ((Conc!2545 0))(
  ( (Node!2545 (left!5820 Conc!2545) (right!6150 Conc!2545) (csize!5320 Int) (cheight!2756 Int)) (Leaf!3787 (xs!5194 IArray!5091) (csize!5321 Int)) (Empty!2545) )
))
(declare-datatypes ((BalanceConc!5102 0))(
  ( (BalanceConc!5103 (c!119012 Conc!2545)) )
))
(declare-datatypes ((TokenValueInjection!2724 0))(
  ( (TokenValueInjection!2725 (toValue!2393 Int) (toChars!2252 Int)) )
))
(declare-datatypes ((Rule!2704 0))(
  ( (Rule!2705 (regex!1452 Regex!1787) (tag!1714 String!9168) (isSeparator!1452 Bool) (transformation!1452 TokenValueInjection!2724)) )
))
(declare-datatypes ((Token!2626 0))(
  ( (Token!2627 (value!46533 TokenValue!1486) (rule!2247 Rule!2704) (size!5688 Int) (originalCharacters!1484 List!7192)) )
))
(declare-datatypes ((List!7193 0))(
  ( (Nil!7179) (Cons!7179 (h!12580 Token!2626) (t!86295 List!7193)) )
))
(declare-datatypes ((IArray!5093 0))(
  ( (IArray!5094 (innerList!2604 List!7193)) )
))
(declare-datatypes ((Conc!2546 0))(
  ( (Node!2546 (left!5821 Conc!2546) (right!6151 Conc!2546) (csize!5322 Int) (cheight!2757 Int)) (Leaf!3788 (xs!5195 IArray!5093) (csize!5323 Int)) (Empty!2546) )
))
(declare-datatypes ((List!7194 0))(
  ( (Nil!7180) (Cons!7180 (h!12581 Rule!2704) (t!86296 List!7194)) )
))
(declare-datatypes ((BalanceConc!5104 0))(
  ( (BalanceConc!5105 (c!119013 Conc!2546)) )
))
(declare-datatypes ((PrintableTokens!208 0))(
  ( (PrintableTokens!209 (rules!8299 List!7194) (tokens!1277 BalanceConc!5104)) )
))
(declare-fun objs!31 () PrintableTokens!208)

(declare-fun e!408903 () Bool)

(declare-fun b!661109 () Bool)

(declare-fun inv!9220 (BalanceConc!5104) Bool)

(assert (=> b!661109 (= e!408900 (and tp!201624 (inv!9220 (tokens!1277 objs!31)) e!408903))))

(declare-fun b!661110 () Bool)

(declare-fun tp!201627 () Bool)

(declare-fun inv!9221 (Conc!2546) Bool)

(assert (=> b!661110 (= e!408903 (and (inv!9221 (c!119013 (tokens!1277 objs!31))) tp!201627))))

(declare-fun res!293358 () Bool)

(declare-fun e!408906 () Bool)

(assert (=> start!64620 (=> (not res!293358) (not e!408906))))

(declare-fun usesJsonRules!0 (PrintableTokens!208) Bool)

(assert (=> start!64620 (= res!293358 (usesJsonRules!0 objs!31))))

(assert (=> start!64620 e!408906))

(declare-fun inv!9222 (PrintableTokens!208) Bool)

(assert (=> start!64620 (and (inv!9222 objs!31) e!408900)))

(declare-fun sepL!1 () PrintableTokens!208)

(declare-fun e!408902 () Bool)

(assert (=> start!64620 (and (inv!9222 sepL!1) e!408902)))

(declare-fun sepR!1 () PrintableTokens!208)

(declare-fun e!408904 () Bool)

(assert (=> start!64620 (and (inv!9222 sepR!1) e!408904)))

(declare-fun b!661111 () Bool)

(declare-fun res!293362 () Bool)

(assert (=> b!661111 (=> (not res!293362) (not e!408906))))

(assert (=> b!661111 (= res!293362 false)))

(declare-fun e!408901 () Bool)

(declare-fun b!661112 () Bool)

(declare-fun tp!201625 () Bool)

(assert (=> b!661112 (= e!408904 (and tp!201625 (inv!9220 (tokens!1277 sepR!1)) e!408901))))

(declare-fun b!661113 () Bool)

(declare-datatypes ((Option!1695 0))(
  ( (None!1694) (Some!1694 (v!17372 PrintableTokens!208)) )
))
(declare-fun get!2538 (Option!1695) PrintableTokens!208)

(assert (=> b!661113 (= e!408906 (not (usesJsonRules!0 (get!2538 None!1694))))))

(declare-fun b!661114 () Bool)

(declare-fun res!293360 () Bool)

(assert (=> b!661114 (=> (not res!293360) (not e!408906))))

(get-info :version)

(declare-fun append!276 (PrintableTokens!208 PrintableTokens!208) Option!1695)

(assert (=> b!661114 (= res!293360 (not ((_ is Some!1694) (append!276 sepL!1 objs!31))))))

(declare-fun b!661115 () Bool)

(declare-fun res!293359 () Bool)

(assert (=> b!661115 (=> (not res!293359) (not e!408906))))

(assert (=> b!661115 (= res!293359 (usesJsonRules!0 sepL!1))))

(declare-fun b!661116 () Bool)

(declare-fun res!293361 () Bool)

(assert (=> b!661116 (=> (not res!293361) (not e!408906))))

(assert (=> b!661116 (= res!293361 (usesJsonRules!0 sepR!1))))

(declare-fun b!661117 () Bool)

(declare-fun tp!201626 () Bool)

(assert (=> b!661117 (= e!408901 (and (inv!9221 (c!119013 (tokens!1277 sepR!1))) tp!201626))))

(declare-fun e!408905 () Bool)

(declare-fun tp!201628 () Bool)

(declare-fun b!661118 () Bool)

(assert (=> b!661118 (= e!408902 (and tp!201628 (inv!9220 (tokens!1277 sepL!1)) e!408905))))

(declare-fun b!661119 () Bool)

(declare-fun tp!201623 () Bool)

(assert (=> b!661119 (= e!408905 (and (inv!9221 (c!119013 (tokens!1277 sepL!1))) tp!201623))))

(assert (= (and start!64620 res!293358) b!661115))

(assert (= (and b!661115 res!293359) b!661116))

(assert (= (and b!661116 res!293361) b!661114))

(assert (= (and b!661114 res!293360) b!661111))

(assert (= (and b!661111 res!293362) b!661113))

(assert (= b!661109 b!661110))

(assert (= start!64620 b!661109))

(assert (= b!661118 b!661119))

(assert (= start!64620 b!661118))

(assert (= b!661112 b!661117))

(assert (= start!64620 b!661112))

(declare-fun m!927549 () Bool)

(assert (=> b!661115 m!927549))

(declare-fun m!927551 () Bool)

(assert (=> b!661117 m!927551))

(declare-fun m!927553 () Bool)

(assert (=> b!661119 m!927553))

(declare-fun m!927555 () Bool)

(assert (=> start!64620 m!927555))

(declare-fun m!927557 () Bool)

(assert (=> start!64620 m!927557))

(declare-fun m!927559 () Bool)

(assert (=> start!64620 m!927559))

(declare-fun m!927561 () Bool)

(assert (=> start!64620 m!927561))

(declare-fun m!927563 () Bool)

(assert (=> b!661116 m!927563))

(declare-fun m!927565 () Bool)

(assert (=> b!661114 m!927565))

(declare-fun m!927567 () Bool)

(assert (=> b!661118 m!927567))

(declare-fun m!927569 () Bool)

(assert (=> b!661113 m!927569))

(assert (=> b!661113 m!927569))

(declare-fun m!927571 () Bool)

(assert (=> b!661113 m!927571))

(declare-fun m!927573 () Bool)

(assert (=> b!661112 m!927573))

(declare-fun m!927575 () Bool)

(assert (=> b!661110 m!927575))

(declare-fun m!927577 () Bool)

(assert (=> b!661109 m!927577))

(check-sat (not b!661114) (not b!661118) (not b!661115) (not start!64620) (not b!661117) (not b!661116) (not b!661119) (not b!661109) (not b!661113) (not b!661110) (not b!661112))
(check-sat)
