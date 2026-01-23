; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253690 () Bool)

(assert start!253690)

(declare-fun b!2609659 () Bool)

(declare-fun b_free!73277 () Bool)

(declare-fun b_next!73981 () Bool)

(assert (=> b!2609659 (= b_free!73277 (not b_next!73981))))

(declare-fun tp!829019 () Bool)

(declare-fun b_and!190835 () Bool)

(assert (=> b!2609659 (= tp!829019 b_and!190835)))

(declare-fun b_free!73279 () Bool)

(declare-fun b_next!73983 () Bool)

(assert (=> b!2609659 (= b_free!73279 (not b_next!73983))))

(declare-fun tp!829020 () Bool)

(declare-fun b_and!190837 () Bool)

(assert (=> b!2609659 (= tp!829020 b_and!190837)))

(declare-fun b!2609656 () Bool)

(declare-fun b_free!73281 () Bool)

(declare-fun b_next!73985 () Bool)

(assert (=> b!2609656 (= b_free!73281 (not b_next!73985))))

(declare-fun tp!829018 () Bool)

(declare-fun b_and!190839 () Bool)

(assert (=> b!2609656 (= tp!829018 b_and!190839)))

(declare-fun b_free!73283 () Bool)

(declare-fun b_next!73987 () Bool)

(assert (=> b!2609656 (= b_free!73283 (not b_next!73987))))

(declare-fun tp!829017 () Bool)

(declare-fun b_and!190841 () Bool)

(assert (=> b!2609656 (= tp!829017 b_and!190841)))

(declare-fun e!1646452 () Bool)

(assert (=> b!2609656 (= e!1646452 (and tp!829018 tp!829017))))

(declare-fun b!2609657 () Bool)

(declare-datatypes ((List!30197 0))(
  ( (Nil!30097) (Cons!30097 (h!35517 (_ BitVec 16)) (t!213960 List!30197)) )
))
(declare-datatypes ((C!15532 0))(
  ( (C!15533 (val!9700 Int)) )
))
(declare-datatypes ((Regex!7687 0))(
  ( (ElementMatch!7687 (c!419582 C!15532)) (Concat!12452 (regOne!15886 Regex!7687) (regTwo!15886 Regex!7687)) (EmptyExpr!7687) (Star!7687 (reg!8016 Regex!7687)) (EmptyLang!7687) (Union!7687 (regOne!15887 Regex!7687) (regTwo!15887 Regex!7687)) )
))
(declare-datatypes ((TokenValue!4765 0))(
  ( (FloatLiteralValue!9530 (text!33800 List!30197)) (TokenValueExt!4764 (__x!19363 Int)) (Broken!23825 (value!147054 List!30197)) (Object!4864) (End!4765) (Def!4765) (Underscore!4765) (Match!4765) (Else!4765) (Error!4765) (Case!4765) (If!4765) (Extends!4765) (Abstract!4765) (Class!4765) (Val!4765) (DelimiterValue!9530 (del!4825 List!30197)) (KeywordValue!4771 (value!147055 List!30197)) (CommentValue!9530 (value!147056 List!30197)) (WhitespaceValue!9530 (value!147057 List!30197)) (IndentationValue!4765 (value!147058 List!30197)) (String!33708) (Int32!4765) (Broken!23826 (value!147059 List!30197)) (Boolean!4766) (Unit!44094) (OperatorValue!4768 (op!4825 List!30197)) (IdentifierValue!9530 (value!147060 List!30197)) (IdentifierValue!9531 (value!147061 List!30197)) (WhitespaceValue!9531 (value!147062 List!30197)) (True!9530) (False!9530) (Broken!23827 (value!147063 List!30197)) (Broken!23828 (value!147064 List!30197)) (True!9531) (RightBrace!4765) (RightBracket!4765) (Colon!4765) (Null!4765) (Comma!4765) (LeftBracket!4765) (False!9531) (LeftBrace!4765) (ImaginaryLiteralValue!4765 (text!33801 List!30197)) (StringLiteralValue!14295 (value!147065 List!30197)) (EOFValue!4765 (value!147066 List!30197)) (IdentValue!4765 (value!147067 List!30197)) (DelimiterValue!9531 (value!147068 List!30197)) (DedentValue!4765 (value!147069 List!30197)) (NewLineValue!4765 (value!147070 List!30197)) (IntegerValue!14295 (value!147071 (_ BitVec 32)) (text!33802 List!30197)) (IntegerValue!14296 (value!147072 Int) (text!33803 List!30197)) (Times!4765) (Or!4765) (Equal!4765) (Minus!4765) (Broken!23829 (value!147073 List!30197)) (And!4765) (Div!4765) (LessEqual!4765) (Mod!4765) (Concat!12453) (Not!4765) (Plus!4765) (SpaceValue!4765 (value!147074 List!30197)) (IntegerValue!14297 (value!147075 Int) (text!33804 List!30197)) (StringLiteralValue!14296 (text!33805 List!30197)) (FloatLiteralValue!9531 (text!33806 List!30197)) (BytesLiteralValue!4765 (value!147076 List!30197)) (CommentValue!9531 (value!147077 List!30197)) (StringLiteralValue!14297 (value!147078 List!30197)) (ErrorTokenValue!4765 (msg!4826 List!30197)) )
))
(declare-datatypes ((List!30198 0))(
  ( (Nil!30098) (Cons!30098 (h!35518 C!15532) (t!213961 List!30198)) )
))
(declare-datatypes ((IArray!18661 0))(
  ( (IArray!18662 (innerList!9388 List!30198)) )
))
(declare-datatypes ((Conc!9328 0))(
  ( (Node!9328 (left!23147 Conc!9328) (right!23477 Conc!9328) (csize!18886 Int) (cheight!9539 Int)) (Leaf!14340 (xs!12312 IArray!18661) (csize!18887 Int)) (Empty!9328) )
))
(declare-datatypes ((BalanceConc!18270 0))(
  ( (BalanceConc!18271 (c!419583 Conc!9328)) )
))
(declare-datatypes ((TokenValueInjection!8970 0))(
  ( (TokenValueInjection!8971 (toValue!6445 Int) (toChars!6304 Int)) )
))
(declare-datatypes ((String!33709 0))(
  ( (String!33710 (value!147079 String)) )
))
(declare-datatypes ((Rule!8886 0))(
  ( (Rule!8887 (regex!4543 Regex!7687) (tag!5033 String!33709) (isSeparator!4543 Bool) (transformation!4543 TokenValueInjection!8970)) )
))
(declare-datatypes ((List!30199 0))(
  ( (Nil!30099) (Cons!30099 (h!35519 Rule!8886) (t!213962 List!30199)) )
))
(declare-fun rules!1726 () List!30199)

(declare-fun e!1646453 () Bool)

(declare-fun tp!829016 () Bool)

(declare-fun e!1646451 () Bool)

(declare-fun inv!40718 (String!33709) Bool)

(declare-fun inv!40723 (TokenValueInjection!8970) Bool)

(assert (=> b!2609657 (= e!1646453 (and tp!829016 (inv!40718 (tag!5033 (h!35519 rules!1726))) (inv!40723 (transformation!4543 (h!35519 rules!1726))) e!1646451))))

(declare-fun tp!829014 () Bool)

(declare-fun e!1646450 () Bool)

(declare-fun b!2609658 () Bool)

(declare-fun e!1646454 () Bool)

(declare-datatypes ((Token!8556 0))(
  ( (Token!8557 (value!147080 TokenValue!4765) (rule!6913 Rule!8886) (size!23317 Int) (originalCharacters!5309 List!30198)) )
))
(declare-fun separatorToken!156 () Token!8556)

(declare-fun inv!21 (TokenValue!4765) Bool)

(assert (=> b!2609658 (= e!1646450 (and (inv!21 (value!147080 separatorToken!156)) e!1646454 tp!829014))))

(assert (=> b!2609659 (= e!1646451 (and tp!829019 tp!829020))))

(declare-fun b!2609660 () Bool)

(declare-fun e!1646461 () Bool)

(assert (=> b!2609660 (= e!1646461 (not true))))

(declare-fun lt!917013 () Int)

(declare-datatypes ((List!30200 0))(
  ( (Nil!30100) (Cons!30100 (h!35520 Token!8556) (t!213963 List!30200)) )
))
(declare-fun lt!917014 () List!30200)

(declare-fun size!23318 (List!30200) Int)

(assert (=> b!2609660 (= lt!917013 (size!23318 lt!917014))))

(declare-fun from!862 () Int)

(declare-fun head!5938 (List!30200) Token!8556)

(declare-fun drop!1539 (List!30200 Int) List!30200)

(declare-fun apply!7049 (List!30200 Int) Token!8556)

(assert (=> b!2609660 (= (head!5938 (drop!1539 lt!917014 from!862)) (apply!7049 lt!917014 from!862))))

(declare-datatypes ((Unit!44095 0))(
  ( (Unit!44096) )
))
(declare-fun lt!917016 () Unit!44095)

(declare-fun lemmaDropApply!754 (List!30200 Int) Unit!44095)

(assert (=> b!2609660 (= lt!917016 (lemmaDropApply!754 lt!917014 from!862))))

(declare-fun b!2609661 () Bool)

(declare-fun res!1098333 () Bool)

(declare-fun e!1646458 () Bool)

(assert (=> b!2609661 (=> (not res!1098333) (not e!1646458))))

(declare-datatypes ((LexerInterface!4140 0))(
  ( (LexerInterfaceExt!4137 (__x!19364 Int)) (Lexer!4138) )
))
(declare-fun thiss!14197 () LexerInterface!4140)

(declare-fun rulesProduceIndividualToken!1852 (LexerInterface!4140 List!30199 Token!8556) Bool)

(assert (=> b!2609661 (= res!1098333 (rulesProduceIndividualToken!1852 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun res!1098335 () Bool)

(declare-fun e!1646462 () Bool)

(assert (=> start!253690 (=> (not res!1098335) (not e!1646462))))

(get-info :version)

(assert (=> start!253690 (= res!1098335 (and ((_ is Lexer!4138) thiss!14197) (>= from!862 0)))))

(assert (=> start!253690 e!1646462))

(assert (=> start!253690 true))

(declare-fun e!1646459 () Bool)

(assert (=> start!253690 e!1646459))

(declare-fun inv!40724 (Token!8556) Bool)

(assert (=> start!253690 (and (inv!40724 separatorToken!156) e!1646450)))

(declare-datatypes ((IArray!18663 0))(
  ( (IArray!18664 (innerList!9389 List!30200)) )
))
(declare-datatypes ((Conc!9329 0))(
  ( (Node!9329 (left!23148 Conc!9329) (right!23478 Conc!9329) (csize!18888 Int) (cheight!9540 Int)) (Leaf!14341 (xs!12313 IArray!18663) (csize!18889 Int)) (Empty!9329) )
))
(declare-datatypes ((BalanceConc!18272 0))(
  ( (BalanceConc!18273 (c!419584 Conc!9329)) )
))
(declare-fun v!6381 () BalanceConc!18272)

(declare-fun e!1646457 () Bool)

(declare-fun inv!40725 (BalanceConc!18272) Bool)

(assert (=> start!253690 (and (inv!40725 v!6381) e!1646457)))

(declare-fun b!2609662 () Bool)

(assert (=> b!2609662 (= e!1646458 e!1646461)))

(declare-fun res!1098339 () Bool)

(assert (=> b!2609662 (=> (not res!1098339) (not e!1646461))))

(declare-fun lt!917015 () Int)

(assert (=> b!2609662 (= res!1098339 (< from!862 lt!917015))))

(declare-fun lt!917017 () Unit!44095)

(declare-fun lambda!97588 () Int)

(declare-fun lemmaContentSubsetPreservesForall!212 (List!30200 List!30200 Int) Unit!44095)

(declare-fun dropList!846 (BalanceConc!18272 Int) List!30200)

(assert (=> b!2609662 (= lt!917017 (lemmaContentSubsetPreservesForall!212 lt!917014 (dropList!846 v!6381 from!862) lambda!97588))))

(declare-fun list!11301 (BalanceConc!18272) List!30200)

(assert (=> b!2609662 (= lt!917014 (list!11301 v!6381))))

(declare-fun b!2609663 () Bool)

(assert (=> b!2609663 (= e!1646462 e!1646458)))

(declare-fun res!1098340 () Bool)

(assert (=> b!2609663 (=> (not res!1098340) (not e!1646458))))

(assert (=> b!2609663 (= res!1098340 (<= from!862 lt!917015))))

(declare-fun size!23319 (BalanceConc!18272) Int)

(assert (=> b!2609663 (= lt!917015 (size!23319 v!6381))))

(declare-fun b!2609664 () Bool)

(declare-fun res!1098336 () Bool)

(assert (=> b!2609664 (=> (not res!1098336) (not e!1646458))))

(assert (=> b!2609664 (= res!1098336 (isSeparator!4543 (rule!6913 separatorToken!156)))))

(declare-fun tp!829013 () Bool)

(declare-fun b!2609665 () Bool)

(assert (=> b!2609665 (= e!1646454 (and tp!829013 (inv!40718 (tag!5033 (rule!6913 separatorToken!156))) (inv!40723 (transformation!4543 (rule!6913 separatorToken!156))) e!1646452))))

(declare-fun b!2609666 () Bool)

(declare-fun res!1098331 () Bool)

(assert (=> b!2609666 (=> (not res!1098331) (not e!1646458))))

(declare-fun rulesInvariant!3640 (LexerInterface!4140 List!30199) Bool)

(assert (=> b!2609666 (= res!1098331 (rulesInvariant!3640 thiss!14197 rules!1726))))

(declare-fun b!2609667 () Bool)

(declare-fun tp!829015 () Bool)

(declare-fun inv!40726 (Conc!9329) Bool)

(assert (=> b!2609667 (= e!1646457 (and (inv!40726 (c!419584 v!6381)) tp!829015))))

(declare-fun b!2609668 () Bool)

(declare-fun res!1098334 () Bool)

(assert (=> b!2609668 (=> (not res!1098334) (not e!1646458))))

(declare-fun sepAndNonSepRulesDisjointChars!1116 (List!30199 List!30199) Bool)

(assert (=> b!2609668 (= res!1098334 (sepAndNonSepRulesDisjointChars!1116 rules!1726 rules!1726))))

(declare-fun b!2609669 () Bool)

(declare-fun res!1098332 () Bool)

(assert (=> b!2609669 (=> (not res!1098332) (not e!1646458))))

(declare-fun forall!6235 (BalanceConc!18272 Int) Bool)

(assert (=> b!2609669 (= res!1098332 (forall!6235 v!6381 lambda!97588))))

(declare-fun b!2609670 () Bool)

(declare-fun res!1098337 () Bool)

(assert (=> b!2609670 (=> (not res!1098337) (not e!1646458))))

(declare-fun rulesProduceEachTokenIndividually!960 (LexerInterface!4140 List!30199 BalanceConc!18272) Bool)

(assert (=> b!2609670 (= res!1098337 (rulesProduceEachTokenIndividually!960 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2609671 () Bool)

(declare-fun tp!829012 () Bool)

(assert (=> b!2609671 (= e!1646459 (and e!1646453 tp!829012))))

(declare-fun b!2609672 () Bool)

(declare-fun res!1098338 () Bool)

(assert (=> b!2609672 (=> (not res!1098338) (not e!1646458))))

(declare-fun isEmpty!17216 (List!30199) Bool)

(assert (=> b!2609672 (= res!1098338 (not (isEmpty!17216 rules!1726)))))

(assert (= (and start!253690 res!1098335) b!2609663))

(assert (= (and b!2609663 res!1098340) b!2609672))

(assert (= (and b!2609672 res!1098338) b!2609666))

(assert (= (and b!2609666 res!1098331) b!2609670))

(assert (= (and b!2609670 res!1098337) b!2609661))

(assert (= (and b!2609661 res!1098333) b!2609664))

(assert (= (and b!2609664 res!1098336) b!2609669))

(assert (= (and b!2609669 res!1098332) b!2609668))

(assert (= (and b!2609668 res!1098334) b!2609662))

(assert (= (and b!2609662 res!1098339) b!2609660))

(assert (= b!2609657 b!2609659))

(assert (= b!2609671 b!2609657))

(assert (= (and start!253690 ((_ is Cons!30099) rules!1726)) b!2609671))

(assert (= b!2609665 b!2609656))

(assert (= b!2609658 b!2609665))

(assert (= start!253690 b!2609658))

(assert (= start!253690 b!2609667))

(declare-fun m!2944355 () Bool)

(assert (=> b!2609665 m!2944355))

(declare-fun m!2944357 () Bool)

(assert (=> b!2609665 m!2944357))

(declare-fun m!2944359 () Bool)

(assert (=> b!2609661 m!2944359))

(declare-fun m!2944361 () Bool)

(assert (=> b!2609668 m!2944361))

(declare-fun m!2944363 () Bool)

(assert (=> start!253690 m!2944363))

(declare-fun m!2944365 () Bool)

(assert (=> start!253690 m!2944365))

(declare-fun m!2944367 () Bool)

(assert (=> b!2609667 m!2944367))

(declare-fun m!2944369 () Bool)

(assert (=> b!2609658 m!2944369))

(declare-fun m!2944371 () Bool)

(assert (=> b!2609663 m!2944371))

(declare-fun m!2944373 () Bool)

(assert (=> b!2609662 m!2944373))

(assert (=> b!2609662 m!2944373))

(declare-fun m!2944375 () Bool)

(assert (=> b!2609662 m!2944375))

(declare-fun m!2944377 () Bool)

(assert (=> b!2609662 m!2944377))

(declare-fun m!2944379 () Bool)

(assert (=> b!2609666 m!2944379))

(declare-fun m!2944381 () Bool)

(assert (=> b!2609669 m!2944381))

(declare-fun m!2944383 () Bool)

(assert (=> b!2609660 m!2944383))

(declare-fun m!2944385 () Bool)

(assert (=> b!2609660 m!2944385))

(assert (=> b!2609660 m!2944383))

(declare-fun m!2944387 () Bool)

(assert (=> b!2609660 m!2944387))

(declare-fun m!2944389 () Bool)

(assert (=> b!2609660 m!2944389))

(declare-fun m!2944391 () Bool)

(assert (=> b!2609660 m!2944391))

(declare-fun m!2944393 () Bool)

(assert (=> b!2609657 m!2944393))

(declare-fun m!2944395 () Bool)

(assert (=> b!2609657 m!2944395))

(declare-fun m!2944397 () Bool)

(assert (=> b!2609672 m!2944397))

(declare-fun m!2944399 () Bool)

(assert (=> b!2609670 m!2944399))

(check-sat b_and!190835 b_and!190837 (not b!2609658) (not b!2609663) (not b!2609669) (not b_next!73985) (not b_next!73983) (not b!2609661) (not b_next!73987) (not b!2609657) (not b_next!73981) (not b!2609665) (not b!2609660) (not b!2609670) (not start!253690) (not b!2609671) b_and!190841 b_and!190839 (not b!2609666) (not b!2609672) (not b!2609668) (not b!2609667) (not b!2609662))
(check-sat b_and!190835 b_and!190837 (not b_next!73981) (not b_next!73985) (not b_next!73983) (not b_next!73987) b_and!190841 b_and!190839)
