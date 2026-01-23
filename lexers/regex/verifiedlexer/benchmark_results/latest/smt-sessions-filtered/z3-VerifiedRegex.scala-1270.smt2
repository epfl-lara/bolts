; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66144 () Bool)

(assert start!66144)

(declare-fun b!691585 () Bool)

(declare-fun b_free!19593 () Bool)

(declare-fun b_next!19657 () Bool)

(assert (=> b!691585 (= b_free!19593 (not b_next!19657))))

(declare-fun tp!208325 () Bool)

(declare-fun b_and!63387 () Bool)

(assert (=> b!691585 (= tp!208325 b_and!63387)))

(declare-fun b_free!19595 () Bool)

(declare-fun b_next!19659 () Bool)

(assert (=> b!691585 (= b_free!19595 (not b_next!19659))))

(declare-fun tp!208323 () Bool)

(declare-fun b_and!63389 () Bool)

(assert (=> b!691585 (= tp!208323 b_and!63389)))

(declare-fun b!691584 () Bool)

(declare-fun e!435041 () Bool)

(declare-datatypes ((C!4272 0))(
  ( (C!4273 (val!2366 Int)) )
))
(declare-datatypes ((List!7480 0))(
  ( (Nil!7466) (Cons!7466 (h!12867 C!4272) (t!87298 List!7480)) )
))
(declare-datatypes ((IArray!5269 0))(
  ( (IArray!5270 (innerList!2692 List!7480)) )
))
(declare-datatypes ((Conc!2634 0))(
  ( (Node!2634 (left!5984 Conc!2634) (right!6314 Conc!2634) (csize!5498 Int) (cheight!2845 Int)) (Leaf!3905 (xs!5285 IArray!5269) (csize!5499 Int)) (Empty!2634) )
))
(declare-datatypes ((BalanceConc!5280 0))(
  ( (BalanceConc!5281 (c!121586 Conc!2634)) )
))
(declare-fun treated!50 () BalanceConc!5280)

(declare-fun tp!208322 () Bool)

(declare-fun inv!9569 (Conc!2634) Bool)

(assert (=> b!691584 (= e!435041 (and (inv!9569 (c!121586 treated!50)) tp!208322))))

(declare-fun e!435040 () Bool)

(assert (=> b!691585 (= e!435040 (and tp!208325 tp!208323))))

(declare-fun tp!208324 () Bool)

(declare-fun e!435036 () Bool)

(declare-datatypes ((List!7481 0))(
  ( (Nil!7467) (Cons!7467 (h!12868 (_ BitVec 16)) (t!87299 List!7481)) )
))
(declare-datatypes ((TokenValue!1541 0))(
  ( (FloatLiteralValue!3082 (text!11232 List!7481)) (TokenValueExt!1540 (__x!5389 Int)) (Broken!7705 (value!48303 List!7481)) (Object!1554) (End!1541) (Def!1541) (Underscore!1541) (Match!1541) (Else!1541) (Error!1541) (Case!1541) (If!1541) (Extends!1541) (Abstract!1541) (Class!1541) (Val!1541) (DelimiterValue!3082 (del!1601 List!7481)) (KeywordValue!1547 (value!48304 List!7481)) (CommentValue!3082 (value!48305 List!7481)) (WhitespaceValue!3082 (value!48306 List!7481)) (IndentationValue!1541 (value!48307 List!7481)) (String!9428) (Int32!1541) (Broken!7706 (value!48308 List!7481)) (Boolean!1542) (Unit!12642) (OperatorValue!1544 (op!1601 List!7481)) (IdentifierValue!3082 (value!48309 List!7481)) (IdentifierValue!3083 (value!48310 List!7481)) (WhitespaceValue!3083 (value!48311 List!7481)) (True!3082) (False!3082) (Broken!7707 (value!48312 List!7481)) (Broken!7708 (value!48313 List!7481)) (True!3083) (RightBrace!1541) (RightBracket!1541) (Colon!1541) (Null!1541) (Comma!1541) (LeftBracket!1541) (False!3083) (LeftBrace!1541) (ImaginaryLiteralValue!1541 (text!11233 List!7481)) (StringLiteralValue!4623 (value!48314 List!7481)) (EOFValue!1541 (value!48315 List!7481)) (IdentValue!1541 (value!48316 List!7481)) (DelimiterValue!3083 (value!48317 List!7481)) (DedentValue!1541 (value!48318 List!7481)) (NewLineValue!1541 (value!48319 List!7481)) (IntegerValue!4623 (value!48320 (_ BitVec 32)) (text!11234 List!7481)) (IntegerValue!4624 (value!48321 Int) (text!11235 List!7481)) (Times!1541) (Or!1541) (Equal!1541) (Minus!1541) (Broken!7709 (value!48322 List!7481)) (And!1541) (Div!1541) (LessEqual!1541) (Mod!1541) (Concat!3376) (Not!1541) (Plus!1541) (SpaceValue!1541 (value!48323 List!7481)) (IntegerValue!4625 (value!48324 Int) (text!11236 List!7481)) (StringLiteralValue!4624 (text!11237 List!7481)) (FloatLiteralValue!3083 (text!11238 List!7481)) (BytesLiteralValue!1541 (value!48325 List!7481)) (CommentValue!3083 (value!48326 List!7481)) (StringLiteralValue!4625 (value!48327 List!7481)) (ErrorTokenValue!1541 (msg!1602 List!7481)) )
))
(declare-datatypes ((Regex!1835 0))(
  ( (ElementMatch!1835 (c!121587 C!4272)) (Concat!3377 (regOne!4182 Regex!1835) (regTwo!4182 Regex!1835)) (EmptyExpr!1835) (Star!1835 (reg!2164 Regex!1835)) (EmptyLang!1835) (Union!1835 (regOne!4183 Regex!1835) (regTwo!4183 Regex!1835)) )
))
(declare-datatypes ((String!9429 0))(
  ( (String!9430 (value!48328 String)) )
))
(declare-datatypes ((TokenValueInjection!2818 0))(
  ( (TokenValueInjection!2819 (toValue!2459 Int) (toChars!2318 Int)) )
))
(declare-datatypes ((Rule!2794 0))(
  ( (Rule!2795 (regex!1497 Regex!1835) (tag!1759 String!9429) (isSeparator!1497 Bool) (transformation!1497 TokenValueInjection!2818)) )
))
(declare-datatypes ((List!7482 0))(
  ( (Nil!7468) (Cons!7468 (h!12869 Rule!2794) (t!87300 List!7482)) )
))
(declare-fun rules!1486 () List!7482)

(declare-fun b!691586 () Bool)

(declare-fun inv!9565 (String!9429) Bool)

(declare-fun inv!9570 (TokenValueInjection!2818) Bool)

(assert (=> b!691586 (= e!435036 (and tp!208324 (inv!9565 (tag!1759 (h!12869 rules!1486))) (inv!9570 (transformation!1497 (h!12869 rules!1486))) e!435040))))

(declare-fun b!691587 () Bool)

(declare-fun e!435038 () Bool)

(assert (=> b!691587 (= e!435038 false)))

(declare-fun lt!284746 () List!7480)

(declare-fun lt!284745 () List!7480)

(declare-fun lt!284743 () List!7480)

(declare-fun ++!1947 (List!7480 List!7480) List!7480)

(assert (=> b!691587 (= lt!284746 (++!1947 lt!284745 lt!284743))))

(declare-fun lt!284744 () List!7480)

(declare-fun totalInput!378 () BalanceConc!5280)

(declare-fun list!3134 (BalanceConc!5280) List!7480)

(assert (=> b!691587 (= lt!284744 (list!3134 totalInput!378))))

(declare-fun input!870 () BalanceConc!5280)

(assert (=> b!691587 (= lt!284743 (list!3134 input!870))))

(assert (=> b!691587 (= lt!284745 (list!3134 treated!50))))

(declare-fun res!313582 () Bool)

(assert (=> start!66144 (=> (not res!313582) (not e!435038))))

(declare-datatypes ((LexerInterface!1311 0))(
  ( (LexerInterfaceExt!1308 (__x!5390 Int)) (Lexer!1309) )
))
(declare-fun thiss!12529 () LexerInterface!1311)

(get-info :version)

(assert (=> start!66144 (= res!313582 ((_ is Lexer!1309) thiss!12529))))

(assert (=> start!66144 e!435038))

(declare-fun inv!9571 (BalanceConc!5280) Bool)

(assert (=> start!66144 (and (inv!9571 treated!50) e!435041)))

(declare-fun e!435039 () Bool)

(assert (=> start!66144 (and (inv!9571 totalInput!378) e!435039)))

(declare-fun e!435042 () Bool)

(assert (=> start!66144 (and (inv!9571 input!870) e!435042)))

(declare-fun e!435035 () Bool)

(assert (=> start!66144 e!435035))

(assert (=> start!66144 true))

(declare-fun b!691588 () Bool)

(declare-fun tp!208321 () Bool)

(assert (=> b!691588 (= e!435042 (and (inv!9569 (c!121586 input!870)) tp!208321))))

(declare-fun b!691589 () Bool)

(declare-fun res!313584 () Bool)

(assert (=> b!691589 (=> (not res!313584) (not e!435038))))

(declare-fun rulesInvariant!1244 (LexerInterface!1311 List!7482) Bool)

(assert (=> b!691589 (= res!313584 (rulesInvariant!1244 thiss!12529 rules!1486))))

(declare-fun b!691590 () Bool)

(declare-fun tp!208326 () Bool)

(assert (=> b!691590 (= e!435035 (and e!435036 tp!208326))))

(declare-fun b!691591 () Bool)

(declare-fun tp!208327 () Bool)

(assert (=> b!691591 (= e!435039 (and (inv!9569 (c!121586 totalInput!378)) tp!208327))))

(declare-fun b!691592 () Bool)

(declare-fun res!313583 () Bool)

(assert (=> b!691592 (=> (not res!313583) (not e!435038))))

(declare-fun isEmpty!4867 (List!7482) Bool)

(assert (=> b!691592 (= res!313583 (not (isEmpty!4867 rules!1486)))))

(assert (= (and start!66144 res!313582) b!691592))

(assert (= (and b!691592 res!313583) b!691589))

(assert (= (and b!691589 res!313584) b!691587))

(assert (= start!66144 b!691584))

(assert (= start!66144 b!691591))

(assert (= start!66144 b!691588))

(assert (= b!691586 b!691585))

(assert (= b!691590 b!691586))

(assert (= (and start!66144 ((_ is Cons!7468) rules!1486)) b!691590))

(declare-fun m!947702 () Bool)

(assert (=> b!691591 m!947702))

(declare-fun m!947704 () Bool)

(assert (=> b!691589 m!947704))

(declare-fun m!947706 () Bool)

(assert (=> start!66144 m!947706))

(declare-fun m!947708 () Bool)

(assert (=> start!66144 m!947708))

(declare-fun m!947710 () Bool)

(assert (=> start!66144 m!947710))

(declare-fun m!947712 () Bool)

(assert (=> b!691586 m!947712))

(declare-fun m!947714 () Bool)

(assert (=> b!691586 m!947714))

(declare-fun m!947716 () Bool)

(assert (=> b!691588 m!947716))

(declare-fun m!947718 () Bool)

(assert (=> b!691587 m!947718))

(declare-fun m!947720 () Bool)

(assert (=> b!691587 m!947720))

(declare-fun m!947722 () Bool)

(assert (=> b!691587 m!947722))

(declare-fun m!947724 () Bool)

(assert (=> b!691587 m!947724))

(declare-fun m!947726 () Bool)

(assert (=> b!691592 m!947726))

(declare-fun m!947728 () Bool)

(assert (=> b!691584 m!947728))

(check-sat (not b!691591) (not b!691586) (not b!691588) (not b_next!19657) (not b!691592) (not start!66144) (not b!691587) b_and!63389 (not b_next!19659) (not b!691589) (not b!691590) (not b!691584) b_and!63387)
(check-sat b_and!63389 b_and!63387 (not b_next!19659) (not b_next!19657))
