; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!253132 () Bool)

(assert start!253132)

(declare-fun b!2602460 () Bool)

(declare-fun b_free!73045 () Bool)

(declare-fun b_next!73749 () Bool)

(assert (=> b!2602460 (= b_free!73045 (not b_next!73749))))

(declare-fun tp!824561 () Bool)

(declare-fun b_and!190351 () Bool)

(assert (=> b!2602460 (= tp!824561 b_and!190351)))

(declare-fun b_free!73047 () Bool)

(declare-fun b_next!73751 () Bool)

(assert (=> b!2602460 (= b_free!73047 (not b_next!73751))))

(declare-fun tp!824565 () Bool)

(declare-fun b_and!190353 () Bool)

(assert (=> b!2602460 (= tp!824565 b_and!190353)))

(declare-fun b!2602458 () Bool)

(declare-fun b_free!73049 () Bool)

(declare-fun b_next!73753 () Bool)

(assert (=> b!2602458 (= b_free!73049 (not b_next!73753))))

(declare-fun tp!824567 () Bool)

(declare-fun b_and!190355 () Bool)

(assert (=> b!2602458 (= tp!824567 b_and!190355)))

(declare-fun b_free!73051 () Bool)

(declare-fun b_next!73755 () Bool)

(assert (=> b!2602458 (= b_free!73051 (not b_next!73755))))

(declare-fun tp!824568 () Bool)

(declare-fun b_and!190357 () Bool)

(assert (=> b!2602458 (= tp!824568 b_and!190357)))

(declare-fun b!2602451 () Bool)

(declare-fun res!1096322 () Bool)

(declare-fun e!1642815 () Bool)

(assert (=> b!2602451 (=> (not res!1096322) (not e!1642815))))

(declare-datatypes ((List!30141 0))(
  ( (Nil!30041) (Cons!30041 (h!35461 (_ BitVec 16)) (t!213264 List!30141)) )
))
(declare-datatypes ((C!15506 0))(
  ( (C!15507 (val!9687 Int)) )
))
(declare-datatypes ((TokenValue!4752 0))(
  ( (FloatLiteralValue!9504 (text!33709 List!30141)) (TokenValueExt!4751 (__x!19337 Int)) (Broken!23760 (value!146685 List!30141)) (Object!4851) (End!4752) (Def!4752) (Underscore!4752) (Match!4752) (Else!4752) (Error!4752) (Case!4752) (If!4752) (Extends!4752) (Abstract!4752) (Class!4752) (Val!4752) (DelimiterValue!9504 (del!4812 List!30141)) (KeywordValue!4758 (value!146686 List!30141)) (CommentValue!9504 (value!146687 List!30141)) (WhitespaceValue!9504 (value!146688 List!30141)) (IndentationValue!4752 (value!146689 List!30141)) (String!33645) (Int32!4752) (Broken!23761 (value!146690 List!30141)) (Boolean!4753) (Unit!44043) (OperatorValue!4755 (op!4812 List!30141)) (IdentifierValue!9504 (value!146691 List!30141)) (IdentifierValue!9505 (value!146692 List!30141)) (WhitespaceValue!9505 (value!146693 List!30141)) (True!9504) (False!9504) (Broken!23762 (value!146694 List!30141)) (Broken!23763 (value!146695 List!30141)) (True!9505) (RightBrace!4752) (RightBracket!4752) (Colon!4752) (Null!4752) (Comma!4752) (LeftBracket!4752) (False!9505) (LeftBrace!4752) (ImaginaryLiteralValue!4752 (text!33710 List!30141)) (StringLiteralValue!14256 (value!146696 List!30141)) (EOFValue!4752 (value!146697 List!30141)) (IdentValue!4752 (value!146698 List!30141)) (DelimiterValue!9505 (value!146699 List!30141)) (DedentValue!4752 (value!146700 List!30141)) (NewLineValue!4752 (value!146701 List!30141)) (IntegerValue!14256 (value!146702 (_ BitVec 32)) (text!33711 List!30141)) (IntegerValue!14257 (value!146703 Int) (text!33712 List!30141)) (Times!4752) (Or!4752) (Equal!4752) (Minus!4752) (Broken!23764 (value!146704 List!30141)) (And!4752) (Div!4752) (LessEqual!4752) (Mod!4752) (Concat!12426) (Not!4752) (Plus!4752) (SpaceValue!4752 (value!146705 List!30141)) (IntegerValue!14258 (value!146706 Int) (text!33713 List!30141)) (StringLiteralValue!14257 (text!33714 List!30141)) (FloatLiteralValue!9505 (text!33715 List!30141)) (BytesLiteralValue!4752 (value!146707 List!30141)) (CommentValue!9505 (value!146708 List!30141)) (StringLiteralValue!14258 (value!146709 List!30141)) (ErrorTokenValue!4752 (msg!4813 List!30141)) )
))
(declare-datatypes ((Regex!7674 0))(
  ( (ElementMatch!7674 (c!418819 C!15506)) (Concat!12427 (regOne!15860 Regex!7674) (regTwo!15860 Regex!7674)) (EmptyExpr!7674) (Star!7674 (reg!8003 Regex!7674)) (EmptyLang!7674) (Union!7674 (regOne!15861 Regex!7674) (regTwo!15861 Regex!7674)) )
))
(declare-datatypes ((String!33646 0))(
  ( (String!33647 (value!146710 String)) )
))
(declare-datatypes ((List!30142 0))(
  ( (Nil!30042) (Cons!30042 (h!35462 C!15506) (t!213265 List!30142)) )
))
(declare-datatypes ((IArray!18609 0))(
  ( (IArray!18610 (innerList!9362 List!30142)) )
))
(declare-datatypes ((Conc!9302 0))(
  ( (Node!9302 (left!23107 Conc!9302) (right!23437 Conc!9302) (csize!18834 Int) (cheight!9513 Int)) (Leaf!14308 (xs!12286 IArray!18609) (csize!18835 Int)) (Empty!9302) )
))
(declare-datatypes ((BalanceConc!18218 0))(
  ( (BalanceConc!18219 (c!418820 Conc!9302)) )
))
(declare-datatypes ((TokenValueInjection!8944 0))(
  ( (TokenValueInjection!8945 (toValue!6428 Int) (toChars!6287 Int)) )
))
(declare-datatypes ((Rule!8860 0))(
  ( (Rule!8861 (regex!4530 Regex!7674) (tag!5020 String!33646) (isSeparator!4530 Bool) (transformation!4530 TokenValueInjection!8944)) )
))
(declare-datatypes ((Token!8530 0))(
  ( (Token!8531 (value!146711 TokenValue!4752) (rule!6900 Rule!8860) (size!23270 Int) (originalCharacters!5296 List!30142)) )
))
(declare-fun separatorToken!156 () Token!8530)

(assert (=> b!2602451 (= res!1096322 (isSeparator!4530 (rule!6900 separatorToken!156)))))

(declare-fun b!2602452 () Bool)

(assert (=> b!2602452 (= e!1642815 false)))

(declare-fun lambda!97415 () Int)

(declare-datatypes ((Unit!44044 0))(
  ( (Unit!44045) )
))
(declare-fun lt!915540 () Unit!44044)

(declare-datatypes ((List!30143 0))(
  ( (Nil!30043) (Cons!30043 (h!35463 Token!8530) (t!213266 List!30143)) )
))
(declare-datatypes ((IArray!18611 0))(
  ( (IArray!18612 (innerList!9363 List!30143)) )
))
(declare-datatypes ((Conc!9303 0))(
  ( (Node!9303 (left!23108 Conc!9303) (right!23438 Conc!9303) (csize!18836 Int) (cheight!9514 Int)) (Leaf!14309 (xs!12287 IArray!18611) (csize!18837 Int)) (Empty!9303) )
))
(declare-datatypes ((BalanceConc!18220 0))(
  ( (BalanceConc!18221 (c!418821 Conc!9303)) )
))
(declare-fun v!6381 () BalanceConc!18220)

(declare-fun from!862 () Int)

(declare-fun lemmaContentSubsetPreservesForall!199 (List!30143 List!30143 Int) Unit!44044)

(declare-fun list!11274 (BalanceConc!18220) List!30143)

(declare-fun dropList!833 (BalanceConc!18220 Int) List!30143)

(assert (=> b!2602452 (= lt!915540 (lemmaContentSubsetPreservesForall!199 (list!11274 v!6381) (dropList!833 v!6381 from!862) lambda!97415))))

(declare-fun e!1642809 () Bool)

(declare-fun b!2602453 () Bool)

(declare-fun e!1642811 () Bool)

(declare-fun tp!824569 () Bool)

(declare-fun inv!21 (TokenValue!4752) Bool)

(assert (=> b!2602453 (= e!1642809 (and (inv!21 (value!146711 separatorToken!156)) e!1642811 tp!824569))))

(declare-fun b!2602454 () Bool)

(declare-fun res!1096327 () Bool)

(assert (=> b!2602454 (=> (not res!1096327) (not e!1642815))))

(declare-datatypes ((List!30144 0))(
  ( (Nil!30044) (Cons!30044 (h!35464 Rule!8860) (t!213267 List!30144)) )
))
(declare-fun rules!1726 () List!30144)

(declare-fun isEmpty!17185 (List!30144) Bool)

(assert (=> b!2602454 (= res!1096327 (not (isEmpty!17185 rules!1726)))))

(declare-fun e!1642808 () Bool)

(declare-fun tp!824563 () Bool)

(declare-fun b!2602455 () Bool)

(declare-fun inv!40624 (String!33646) Bool)

(declare-fun inv!40627 (TokenValueInjection!8944) Bool)

(assert (=> b!2602455 (= e!1642811 (and tp!824563 (inv!40624 (tag!5020 (rule!6900 separatorToken!156))) (inv!40627 (transformation!4530 (rule!6900 separatorToken!156))) e!1642808))))

(declare-fun b!2602456 () Bool)

(declare-fun res!1096328 () Bool)

(assert (=> b!2602456 (=> (not res!1096328) (not e!1642815))))

(declare-fun forall!6208 (BalanceConc!18220 Int) Bool)

(assert (=> b!2602456 (= res!1096328 (forall!6208 v!6381 lambda!97415))))

(declare-fun b!2602457 () Bool)

(declare-fun res!1096320 () Bool)

(assert (=> b!2602457 (=> (not res!1096320) (not e!1642815))))

(declare-datatypes ((LexerInterface!4127 0))(
  ( (LexerInterfaceExt!4124 (__x!19338 Int)) (Lexer!4125) )
))
(declare-fun thiss!14197 () LexerInterface!4127)

(declare-fun rulesInvariant!3627 (LexerInterface!4127 List!30144) Bool)

(assert (=> b!2602457 (= res!1096320 (rulesInvariant!3627 thiss!14197 rules!1726))))

(declare-fun e!1642817 () Bool)

(assert (=> b!2602458 (= e!1642817 (and tp!824567 tp!824568))))

(declare-fun b!2602459 () Bool)

(declare-fun tp!824562 () Bool)

(declare-fun e!1642810 () Bool)

(assert (=> b!2602459 (= e!1642810 (and tp!824562 (inv!40624 (tag!5020 (h!35464 rules!1726))) (inv!40627 (transformation!4530 (h!35464 rules!1726))) e!1642817))))

(assert (=> b!2602460 (= e!1642808 (and tp!824561 tp!824565))))

(declare-fun b!2602461 () Bool)

(declare-fun res!1096325 () Bool)

(assert (=> b!2602461 (=> (not res!1096325) (not e!1642815))))

(declare-fun size!23271 (BalanceConc!18220) Int)

(assert (=> b!2602461 (= res!1096325 (<= from!862 (size!23271 v!6381)))))

(declare-fun res!1096324 () Bool)

(assert (=> start!253132 (=> (not res!1096324) (not e!1642815))))

(assert (=> start!253132 (= res!1096324 (and (is-Lexer!4125 thiss!14197) (>= from!862 0)))))

(assert (=> start!253132 e!1642815))

(assert (=> start!253132 true))

(declare-fun e!1642812 () Bool)

(assert (=> start!253132 e!1642812))

(declare-fun inv!40628 (Token!8530) Bool)

(assert (=> start!253132 (and (inv!40628 separatorToken!156) e!1642809)))

(declare-fun e!1642814 () Bool)

(declare-fun inv!40629 (BalanceConc!18220) Bool)

(assert (=> start!253132 (and (inv!40629 v!6381) e!1642814)))

(declare-fun b!2602462 () Bool)

(declare-fun tp!824564 () Bool)

(declare-fun inv!40630 (Conc!9303) Bool)

(assert (=> b!2602462 (= e!1642814 (and (inv!40630 (c!418821 v!6381)) tp!824564))))

(declare-fun b!2602463 () Bool)

(declare-fun res!1096326 () Bool)

(assert (=> b!2602463 (=> (not res!1096326) (not e!1642815))))

(declare-fun sepAndNonSepRulesDisjointChars!1103 (List!30144 List!30144) Bool)

(assert (=> b!2602463 (= res!1096326 (sepAndNonSepRulesDisjointChars!1103 rules!1726 rules!1726))))

(declare-fun b!2602464 () Bool)

(declare-fun res!1096323 () Bool)

(assert (=> b!2602464 (=> (not res!1096323) (not e!1642815))))

(declare-fun rulesProduceIndividualToken!1839 (LexerInterface!4127 List!30144 Token!8530) Bool)

(assert (=> b!2602464 (= res!1096323 (rulesProduceIndividualToken!1839 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2602465 () Bool)

(declare-fun tp!824566 () Bool)

(assert (=> b!2602465 (= e!1642812 (and e!1642810 tp!824566))))

(declare-fun b!2602466 () Bool)

(declare-fun res!1096321 () Bool)

(assert (=> b!2602466 (=> (not res!1096321) (not e!1642815))))

(declare-fun rulesProduceEachTokenIndividually!947 (LexerInterface!4127 List!30144 BalanceConc!18220) Bool)

(assert (=> b!2602466 (= res!1096321 (rulesProduceEachTokenIndividually!947 thiss!14197 rules!1726 v!6381))))

(assert (= (and start!253132 res!1096324) b!2602461))

(assert (= (and b!2602461 res!1096325) b!2602454))

(assert (= (and b!2602454 res!1096327) b!2602457))

(assert (= (and b!2602457 res!1096320) b!2602466))

(assert (= (and b!2602466 res!1096321) b!2602464))

(assert (= (and b!2602464 res!1096323) b!2602451))

(assert (= (and b!2602451 res!1096322) b!2602456))

(assert (= (and b!2602456 res!1096328) b!2602463))

(assert (= (and b!2602463 res!1096326) b!2602452))

(assert (= b!2602459 b!2602458))

(assert (= b!2602465 b!2602459))

(assert (= (and start!253132 (is-Cons!30044 rules!1726)) b!2602465))

(assert (= b!2602455 b!2602460))

(assert (= b!2602453 b!2602455))

(assert (= start!253132 b!2602453))

(assert (= start!253132 b!2602462))

(declare-fun m!2937237 () Bool)

(assert (=> b!2602462 m!2937237))

(declare-fun m!2937239 () Bool)

(assert (=> b!2602456 m!2937239))

(declare-fun m!2937241 () Bool)

(assert (=> b!2602466 m!2937241))

(declare-fun m!2937243 () Bool)

(assert (=> start!253132 m!2937243))

(declare-fun m!2937245 () Bool)

(assert (=> start!253132 m!2937245))

(declare-fun m!2937247 () Bool)

(assert (=> b!2602461 m!2937247))

(declare-fun m!2937249 () Bool)

(assert (=> b!2602455 m!2937249))

(declare-fun m!2937251 () Bool)

(assert (=> b!2602455 m!2937251))

(declare-fun m!2937253 () Bool)

(assert (=> b!2602452 m!2937253))

(declare-fun m!2937255 () Bool)

(assert (=> b!2602452 m!2937255))

(assert (=> b!2602452 m!2937253))

(assert (=> b!2602452 m!2937255))

(declare-fun m!2937257 () Bool)

(assert (=> b!2602452 m!2937257))

(declare-fun m!2937259 () Bool)

(assert (=> b!2602457 m!2937259))

(declare-fun m!2937261 () Bool)

(assert (=> b!2602454 m!2937261))

(declare-fun m!2937263 () Bool)

(assert (=> b!2602459 m!2937263))

(declare-fun m!2937265 () Bool)

(assert (=> b!2602459 m!2937265))

(declare-fun m!2937267 () Bool)

(assert (=> b!2602464 m!2937267))

(declare-fun m!2937269 () Bool)

(assert (=> b!2602463 m!2937269))

(declare-fun m!2937271 () Bool)

(assert (=> b!2602453 m!2937271))

(push 1)

(assert (not b!2602466))

(assert (not b_next!73755))

(assert (not b!2602465))

(assert (not b!2602453))

(assert (not b!2602459))

(assert b_and!190351)

(assert (not b_next!73753))

(assert (not b!2602457))

(assert (not b!2602454))

(assert (not b!2602463))

(assert (not b!2602461))

(assert (not b_next!73749))

(assert (not b!2602464))

(assert b_and!190353)

(assert (not b_next!73751))

(assert b_and!190357)

(assert (not b!2602452))

(assert (not b!2602462))

(assert b_and!190355)

(assert (not start!253132))

(assert (not b!2602456))

(assert (not b!2602455))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!73755))

(assert b_and!190351)

(assert (not b_next!73753))

(assert b_and!190357)

(assert b_and!190355)

(assert (not b_next!73749))

(assert b_and!190353)

(assert (not b_next!73751))

(check-sat)

(pop 1)

