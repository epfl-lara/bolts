; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!299280 () Bool)

(assert start!299280)

(declare-fun b!3191481 () Bool)

(declare-fun b_free!84493 () Bool)

(declare-fun b_next!85197 () Bool)

(assert (=> b!3191481 (= b_free!84493 (not b_next!85197))))

(declare-fun tp!1008966 () Bool)

(declare-fun b_and!211503 () Bool)

(assert (=> b!3191481 (= tp!1008966 b_and!211503)))

(declare-fun b_free!84495 () Bool)

(declare-fun b_next!85199 () Bool)

(assert (=> b!3191481 (= b_free!84495 (not b_next!85199))))

(declare-fun tp!1008972 () Bool)

(declare-fun b_and!211505 () Bool)

(assert (=> b!3191481 (= tp!1008972 b_and!211505)))

(declare-fun b!3191491 () Bool)

(declare-fun b_free!84497 () Bool)

(declare-fun b_next!85201 () Bool)

(assert (=> b!3191491 (= b_free!84497 (not b_next!85201))))

(declare-fun tp!1008969 () Bool)

(declare-fun b_and!211507 () Bool)

(assert (=> b!3191491 (= tp!1008969 b_and!211507)))

(declare-fun b_free!84499 () Bool)

(declare-fun b_next!85203 () Bool)

(assert (=> b!3191491 (= b_free!84499 (not b_next!85203))))

(declare-fun tp!1008976 () Bool)

(declare-fun b_and!211509 () Bool)

(assert (=> b!3191491 (= tp!1008976 b_and!211509)))

(declare-fun b!3191493 () Bool)

(declare-fun b_free!84501 () Bool)

(declare-fun b_next!85205 () Bool)

(assert (=> b!3191493 (= b_free!84501 (not b_next!85205))))

(declare-fun tp!1008970 () Bool)

(declare-fun b_and!211511 () Bool)

(assert (=> b!3191493 (= tp!1008970 b_and!211511)))

(declare-fun b_free!84503 () Bool)

(declare-fun b_next!85207 () Bool)

(assert (=> b!3191493 (= b_free!84503 (not b_next!85207))))

(declare-fun tp!1008973 () Bool)

(declare-fun b_and!211513 () Bool)

(assert (=> b!3191493 (= tp!1008973 b_and!211513)))

(declare-fun b!3191475 () Bool)

(declare-fun e!1989244 () Bool)

(assert (=> b!3191475 (= e!1989244 (not true))))

(declare-datatypes ((LexerInterface!4752 0))(
  ( (LexerInterfaceExt!4749 (__x!23003 Int)) (Lexer!4750) )
))
(declare-fun thiss!18206 () LexerInterface!4752)

(declare-datatypes ((List!36044 0))(
  ( (Nil!35920) (Cons!35920 (h!41340 (_ BitVec 16)) (t!236207 List!36044)) )
))
(declare-datatypes ((TokenValue!5393 0))(
  ( (FloatLiteralValue!10786 (text!38196 List!36044)) (TokenValueExt!5392 (__x!23004 Int)) (Broken!26965 (value!167581 List!36044)) (Object!5516) (End!5393) (Def!5393) (Underscore!5393) (Match!5393) (Else!5393) (Error!5393) (Case!5393) (If!5393) (Extends!5393) (Abstract!5393) (Class!5393) (Val!5393) (DelimiterValue!10786 (del!5453 List!36044)) (KeywordValue!5399 (value!167582 List!36044)) (CommentValue!10786 (value!167583 List!36044)) (WhitespaceValue!10786 (value!167584 List!36044)) (IndentationValue!5393 (value!167585 List!36044)) (String!40300) (Int32!5393) (Broken!26966 (value!167586 List!36044)) (Boolean!5394) (Unit!50356) (OperatorValue!5396 (op!5453 List!36044)) (IdentifierValue!10786 (value!167587 List!36044)) (IdentifierValue!10787 (value!167588 List!36044)) (WhitespaceValue!10787 (value!167589 List!36044)) (True!10786) (False!10786) (Broken!26967 (value!167590 List!36044)) (Broken!26968 (value!167591 List!36044)) (True!10787) (RightBrace!5393) (RightBracket!5393) (Colon!5393) (Null!5393) (Comma!5393) (LeftBracket!5393) (False!10787) (LeftBrace!5393) (ImaginaryLiteralValue!5393 (text!38197 List!36044)) (StringLiteralValue!16179 (value!167592 List!36044)) (EOFValue!5393 (value!167593 List!36044)) (IdentValue!5393 (value!167594 List!36044)) (DelimiterValue!10787 (value!167595 List!36044)) (DedentValue!5393 (value!167596 List!36044)) (NewLineValue!5393 (value!167597 List!36044)) (IntegerValue!16179 (value!167598 (_ BitVec 32)) (text!38198 List!36044)) (IntegerValue!16180 (value!167599 Int) (text!38199 List!36044)) (Times!5393) (Or!5393) (Equal!5393) (Minus!5393) (Broken!26969 (value!167600 List!36044)) (And!5393) (Div!5393) (LessEqual!5393) (Mod!5393) (Concat!15315) (Not!5393) (Plus!5393) (SpaceValue!5393 (value!167601 List!36044)) (IntegerValue!16181 (value!167602 Int) (text!38200 List!36044)) (StringLiteralValue!16180 (text!38201 List!36044)) (FloatLiteralValue!10787 (text!38202 List!36044)) (BytesLiteralValue!5393 (value!167603 List!36044)) (CommentValue!10787 (value!167604 List!36044)) (StringLiteralValue!16181 (value!167605 List!36044)) (ErrorTokenValue!5393 (msg!5454 List!36044)) )
))
(declare-datatypes ((C!20030 0))(
  ( (C!20031 (val!12063 Int)) )
))
(declare-datatypes ((List!36045 0))(
  ( (Nil!35921) (Cons!35921 (h!41341 C!20030) (t!236208 List!36045)) )
))
(declare-datatypes ((IArray!21407 0))(
  ( (IArray!21408 (innerList!10761 List!36045)) )
))
(declare-datatypes ((Conc!10701 0))(
  ( (Node!10701 (left!27925 Conc!10701) (right!28255 Conc!10701) (csize!21632 Int) (cheight!10912 Int)) (Leaf!16894 (xs!13819 IArray!21407) (csize!21633 Int)) (Empty!10701) )
))
(declare-datatypes ((BalanceConc!21016 0))(
  ( (BalanceConc!21017 (c!535864 Conc!10701)) )
))
(declare-datatypes ((Regex!9922 0))(
  ( (ElementMatch!9922 (c!535865 C!20030)) (Concat!15316 (regOne!20356 Regex!9922) (regTwo!20356 Regex!9922)) (EmptyExpr!9922) (Star!9922 (reg!10251 Regex!9922)) (EmptyLang!9922) (Union!9922 (regOne!20357 Regex!9922) (regTwo!20357 Regex!9922)) )
))
(declare-datatypes ((String!40301 0))(
  ( (String!40302 (value!167606 String)) )
))
(declare-datatypes ((TokenValueInjection!10214 0))(
  ( (TokenValueInjection!10215 (toValue!7227 Int) (toChars!7086 Int)) )
))
(declare-datatypes ((Rule!10126 0))(
  ( (Rule!10127 (regex!5163 Regex!9922) (tag!5681 String!40301) (isSeparator!5163 Bool) (transformation!5163 TokenValueInjection!10214)) )
))
(declare-datatypes ((Token!9692 0))(
  ( (Token!9693 (value!167607 TokenValue!5393) (rule!7595 Rule!10126) (size!27080 Int) (originalCharacters!5877 List!36045)) )
))
(declare-datatypes ((List!36046 0))(
  ( (Nil!35922) (Cons!35922 (h!41342 Token!9692) (t!236209 List!36046)) )
))
(declare-datatypes ((IArray!21409 0))(
  ( (IArray!21410 (innerList!10762 List!36046)) )
))
(declare-datatypes ((Conc!10702 0))(
  ( (Node!10702 (left!27926 Conc!10702) (right!28256 Conc!10702) (csize!21634 Int) (cheight!10913 Int)) (Leaf!16895 (xs!13820 IArray!21409) (csize!21635 Int)) (Empty!10702) )
))
(declare-datatypes ((BalanceConc!21018 0))(
  ( (BalanceConc!21019 (c!535866 Conc!10702)) )
))
(declare-fun lt!1075073 () BalanceConc!21018)

(declare-fun print!1817 (LexerInterface!4752 BalanceConc!21018) BalanceConc!21016)

(declare-fun printTailRec!1249 (LexerInterface!4752 BalanceConc!21018 Int BalanceConc!21016) BalanceConc!21016)

(assert (=> b!3191475 (= (print!1817 thiss!18206 lt!1075073) (printTailRec!1249 thiss!18206 lt!1075073 0 (BalanceConc!21017 Empty!10701)))))

(declare-fun tokens!494 () List!36046)

(declare-fun singletonSeq!2259 (Token!9692) BalanceConc!21018)

(assert (=> b!3191475 (= lt!1075073 (singletonSeq!2259 (h!41342 tokens!494)))))

(declare-fun b!3191476 () Bool)

(declare-fun res!1298197 () Bool)

(assert (=> b!3191476 (=> (not res!1298197) (not e!1989244))))

(assert (=> b!3191476 (= res!1298197 (and (not (is-Nil!35922 tokens!494)) (not (is-Nil!35922 (t!236209 tokens!494)))))))

(declare-fun b!3191477 () Bool)

(declare-fun res!1298192 () Bool)

(assert (=> b!3191477 (=> (not res!1298192) (not e!1989244))))

(declare-fun separatorToken!241 () Token!9692)

(declare-datatypes ((List!36047 0))(
  ( (Nil!35923) (Cons!35923 (h!41343 Rule!10126) (t!236210 List!36047)) )
))
(declare-fun rules!2135 () List!36047)

(declare-fun rulesProduceIndividualToken!2244 (LexerInterface!4752 List!36047 Token!9692) Bool)

(assert (=> b!3191477 (= res!1298192 (rulesProduceIndividualToken!2244 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1989243 () Bool)

(declare-fun e!1989242 () Bool)

(declare-fun tp!1008965 () Bool)

(declare-fun b!3191478 () Bool)

(declare-fun inv!48766 (String!40301) Bool)

(declare-fun inv!48769 (TokenValueInjection!10214) Bool)

(assert (=> b!3191478 (= e!1989243 (and tp!1008965 (inv!48766 (tag!5681 (rule!7595 separatorToken!241))) (inv!48769 (transformation!5163 (rule!7595 separatorToken!241))) e!1989242))))

(declare-fun b!3191479 () Bool)

(declare-fun res!1298196 () Bool)

(assert (=> b!3191479 (=> (not res!1298196) (not e!1989244))))

(declare-fun isEmpty!20046 (List!36047) Bool)

(assert (=> b!3191479 (= res!1298196 (not (isEmpty!20046 rules!2135)))))

(declare-fun b!3191480 () Bool)

(declare-fun e!1989236 () Bool)

(declare-fun tp!1008977 () Bool)

(declare-fun e!1989241 () Bool)

(declare-fun inv!48770 (Token!9692) Bool)

(assert (=> b!3191480 (= e!1989241 (and (inv!48770 (h!41342 tokens!494)) e!1989236 tp!1008977))))

(declare-fun e!1989239 () Bool)

(assert (=> b!3191481 (= e!1989239 (and tp!1008966 tp!1008972))))

(declare-fun b!3191482 () Bool)

(declare-fun e!1989246 () Bool)

(declare-fun e!1989237 () Bool)

(declare-fun tp!1008967 () Bool)

(assert (=> b!3191482 (= e!1989237 (and tp!1008967 (inv!48766 (tag!5681 (h!41343 rules!2135))) (inv!48769 (transformation!5163 (h!41343 rules!2135))) e!1989246))))

(declare-fun b!3191483 () Bool)

(declare-fun res!1298191 () Bool)

(assert (=> b!3191483 (=> (not res!1298191) (not e!1989244))))

(declare-fun lambda!116780 () Int)

(declare-fun forall!7295 (List!36046 Int) Bool)

(assert (=> b!3191483 (= res!1298191 (forall!7295 tokens!494 lambda!116780))))

(declare-fun b!3191484 () Bool)

(declare-fun e!1989234 () Bool)

(declare-fun tp!1008971 () Bool)

(assert (=> b!3191484 (= e!1989234 (and e!1989237 tp!1008971))))

(declare-fun b!3191485 () Bool)

(declare-fun res!1298195 () Bool)

(assert (=> b!3191485 (=> (not res!1298195) (not e!1989244))))

(declare-fun rulesProduceEachTokenIndividually!1203 (LexerInterface!4752 List!36047 BalanceConc!21018) Bool)

(declare-fun seqFromList!3403 (List!36046) BalanceConc!21018)

(assert (=> b!3191485 (= res!1298195 (rulesProduceEachTokenIndividually!1203 thiss!18206 rules!2135 (seqFromList!3403 tokens!494)))))

(declare-fun b!3191486 () Bool)

(declare-fun res!1298190 () Bool)

(assert (=> b!3191486 (=> (not res!1298190) (not e!1989244))))

(declare-fun sepAndNonSepRulesDisjointChars!1357 (List!36047 List!36047) Bool)

(assert (=> b!3191486 (= res!1298190 (sepAndNonSepRulesDisjointChars!1357 rules!2135 rules!2135))))

(declare-fun b!3191487 () Bool)

(declare-fun e!1989232 () Bool)

(declare-fun tp!1008975 () Bool)

(declare-fun inv!21 (TokenValue!5393) Bool)

(assert (=> b!3191487 (= e!1989232 (and (inv!21 (value!167607 separatorToken!241)) e!1989243 tp!1008975))))

(declare-fun b!3191488 () Bool)

(declare-fun res!1298198 () Bool)

(assert (=> b!3191488 (=> (not res!1298198) (not e!1989244))))

(declare-fun rulesInvariant!4149 (LexerInterface!4752 List!36047) Bool)

(assert (=> b!3191488 (= res!1298198 (rulesInvariant!4149 thiss!18206 rules!2135))))

(declare-fun res!1298194 () Bool)

(assert (=> start!299280 (=> (not res!1298194) (not e!1989244))))

(assert (=> start!299280 (= res!1298194 (is-Lexer!4750 thiss!18206))))

(assert (=> start!299280 e!1989244))

(assert (=> start!299280 true))

(assert (=> start!299280 e!1989234))

(assert (=> start!299280 e!1989241))

(assert (=> start!299280 (and (inv!48770 separatorToken!241) e!1989232)))

(declare-fun b!3191489 () Bool)

(declare-fun res!1298193 () Bool)

(assert (=> b!3191489 (=> (not res!1298193) (not e!1989244))))

(assert (=> b!3191489 (= res!1298193 (isSeparator!5163 (rule!7595 separatorToken!241)))))

(declare-fun e!1989238 () Bool)

(declare-fun tp!1008974 () Bool)

(declare-fun b!3191490 () Bool)

(assert (=> b!3191490 (= e!1989236 (and (inv!21 (value!167607 (h!41342 tokens!494))) e!1989238 tp!1008974))))

(assert (=> b!3191491 (= e!1989246 (and tp!1008969 tp!1008976))))

(declare-fun tp!1008968 () Bool)

(declare-fun b!3191492 () Bool)

(assert (=> b!3191492 (= e!1989238 (and tp!1008968 (inv!48766 (tag!5681 (rule!7595 (h!41342 tokens!494)))) (inv!48769 (transformation!5163 (rule!7595 (h!41342 tokens!494)))) e!1989239))))

(assert (=> b!3191493 (= e!1989242 (and tp!1008970 tp!1008973))))

(assert (= (and start!299280 res!1298194) b!3191479))

(assert (= (and b!3191479 res!1298196) b!3191488))

(assert (= (and b!3191488 res!1298198) b!3191485))

(assert (= (and b!3191485 res!1298195) b!3191477))

(assert (= (and b!3191477 res!1298192) b!3191489))

(assert (= (and b!3191489 res!1298193) b!3191483))

(assert (= (and b!3191483 res!1298191) b!3191486))

(assert (= (and b!3191486 res!1298190) b!3191476))

(assert (= (and b!3191476 res!1298197) b!3191475))

(assert (= b!3191482 b!3191491))

(assert (= b!3191484 b!3191482))

(assert (= (and start!299280 (is-Cons!35923 rules!2135)) b!3191484))

(assert (= b!3191492 b!3191481))

(assert (= b!3191490 b!3191492))

(assert (= b!3191480 b!3191490))

(assert (= (and start!299280 (is-Cons!35922 tokens!494)) b!3191480))

(assert (= b!3191478 b!3191493))

(assert (= b!3191487 b!3191478))

(assert (= start!299280 b!3191487))

(declare-fun m!3450811 () Bool)

(assert (=> b!3191486 m!3450811))

(declare-fun m!3450813 () Bool)

(assert (=> b!3191492 m!3450813))

(declare-fun m!3450815 () Bool)

(assert (=> b!3191492 m!3450815))

(declare-fun m!3450817 () Bool)

(assert (=> b!3191478 m!3450817))

(declare-fun m!3450819 () Bool)

(assert (=> b!3191478 m!3450819))

(declare-fun m!3450821 () Bool)

(assert (=> b!3191480 m!3450821))

(declare-fun m!3450823 () Bool)

(assert (=> b!3191482 m!3450823))

(declare-fun m!3450825 () Bool)

(assert (=> b!3191482 m!3450825))

(declare-fun m!3450827 () Bool)

(assert (=> b!3191490 m!3450827))

(declare-fun m!3450829 () Bool)

(assert (=> b!3191477 m!3450829))

(declare-fun m!3450831 () Bool)

(assert (=> b!3191488 m!3450831))

(declare-fun m!3450833 () Bool)

(assert (=> b!3191483 m!3450833))

(declare-fun m!3450835 () Bool)

(assert (=> b!3191487 m!3450835))

(declare-fun m!3450837 () Bool)

(assert (=> b!3191485 m!3450837))

(assert (=> b!3191485 m!3450837))

(declare-fun m!3450839 () Bool)

(assert (=> b!3191485 m!3450839))

(declare-fun m!3450841 () Bool)

(assert (=> b!3191475 m!3450841))

(declare-fun m!3450843 () Bool)

(assert (=> b!3191475 m!3450843))

(declare-fun m!3450845 () Bool)

(assert (=> b!3191475 m!3450845))

(declare-fun m!3450847 () Bool)

(assert (=> start!299280 m!3450847))

(declare-fun m!3450849 () Bool)

(assert (=> b!3191479 m!3450849))

(push 1)

(assert (not b!3191475))

(assert (not b!3191485))

(assert b_and!211509)

(assert (not b!3191478))

(assert (not b!3191479))

(assert (not b!3191488))

(assert (not b!3191492))

(assert (not b!3191487))

(assert b_and!211513)

(assert b_and!211511)

(assert b_and!211505)

(assert (not b_next!85207))

(assert (not b_next!85197))

(assert (not b_next!85201))

(assert (not b!3191480))

(assert (not b!3191484))

(assert (not start!299280))

(assert (not b_next!85199))

(assert (not b!3191483))

(assert (not b!3191482))

(assert (not b_next!85203))

(assert (not b_next!85205))

(assert (not b!3191490))

(assert b_and!211503)

(assert b_and!211507)

(assert (not b!3191486))

(assert (not b!3191477))

(check-sat)

(pop 1)

(push 1)

(assert b_and!211509)

(assert (not b_next!85199))

(assert (not b_next!85203))

(assert (not b_next!85205))

(assert b_and!211513)

(assert b_and!211511)

(assert b_and!211505)

(assert (not b_next!85207))

(assert (not b_next!85197))

(assert (not b_next!85201))

(assert b_and!211503)

(assert b_and!211507)

(check-sat)

(pop 1)

