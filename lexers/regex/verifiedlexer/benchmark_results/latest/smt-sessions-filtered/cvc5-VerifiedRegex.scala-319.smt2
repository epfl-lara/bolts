; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10332 () Bool)

(assert start!10332)

(declare-fun b!104627 () Bool)

(declare-fun b_free!3141 () Bool)

(declare-fun b_next!3141 () Bool)

(assert (=> b!104627 (= b_free!3141 (not b_next!3141))))

(declare-fun tp!58153 () Bool)

(declare-fun b_and!4659 () Bool)

(assert (=> b!104627 (= tp!58153 b_and!4659)))

(declare-fun b_free!3143 () Bool)

(declare-fun b_next!3143 () Bool)

(assert (=> b!104627 (= b_free!3143 (not b_next!3143))))

(declare-fun tp!58151 () Bool)

(declare-fun b_and!4661 () Bool)

(assert (=> b!104627 (= tp!58151 b_and!4661)))

(declare-fun b!104619 () Bool)

(declare-fun e!58047 () Bool)

(declare-fun e!58041 () Bool)

(assert (=> b!104619 (= e!58047 e!58041)))

(declare-fun res!50377 () Bool)

(declare-datatypes ((List!1690 0))(
  ( (Nil!1684) (Cons!1684 (h!7081 (_ BitVec 16)) (t!21375 List!1690)) )
))
(declare-datatypes ((TokenValue!358 0))(
  ( (FloatLiteralValue!716 (text!2951 List!1690)) (TokenValueExt!357 (__x!1811 Int)) (Broken!1790 (value!13353 List!1690)) (Object!363) (End!358) (Def!358) (Underscore!358) (Match!358) (Else!358) (Error!358) (Case!358) (If!358) (Extends!358) (Abstract!358) (Class!358) (Val!358) (DelimiterValue!716 (del!418 List!1690)) (KeywordValue!364 (value!13354 List!1690)) (CommentValue!716 (value!13355 List!1690)) (WhitespaceValue!716 (value!13356 List!1690)) (IndentationValue!358 (value!13357 List!1690)) (String!2183) (Int32!358) (Broken!1791 (value!13358 List!1690)) (Boolean!359) (Unit!1114) (OperatorValue!361 (op!418 List!1690)) (IdentifierValue!716 (value!13359 List!1690)) (IdentifierValue!717 (value!13360 List!1690)) (WhitespaceValue!717 (value!13361 List!1690)) (True!716) (False!716) (Broken!1792 (value!13362 List!1690)) (Broken!1793 (value!13363 List!1690)) (True!717) (RightBrace!358) (RightBracket!358) (Colon!358) (Null!358) (Comma!358) (LeftBracket!358) (False!717) (LeftBrace!358) (ImaginaryLiteralValue!358 (text!2952 List!1690)) (StringLiteralValue!1074 (value!13364 List!1690)) (EOFValue!358 (value!13365 List!1690)) (IdentValue!358 (value!13366 List!1690)) (DelimiterValue!717 (value!13367 List!1690)) (DedentValue!358 (value!13368 List!1690)) (NewLineValue!358 (value!13369 List!1690)) (IntegerValue!1074 (value!13370 (_ BitVec 32)) (text!2953 List!1690)) (IntegerValue!1075 (value!13371 Int) (text!2954 List!1690)) (Times!358) (Or!358) (Equal!358) (Minus!358) (Broken!1794 (value!13372 List!1690)) (And!358) (Div!358) (LessEqual!358) (Mod!358) (Concat!794) (Not!358) (Plus!358) (SpaceValue!358 (value!13373 List!1690)) (IntegerValue!1076 (value!13374 Int) (text!2955 List!1690)) (StringLiteralValue!1075 (text!2956 List!1690)) (FloatLiteralValue!717 (text!2957 List!1690)) (BytesLiteralValue!358 (value!13375 List!1690)) (CommentValue!717 (value!13376 List!1690)) (StringLiteralValue!1076 (value!13377 List!1690)) (ErrorTokenValue!358 (msg!419 List!1690)) )
))
(declare-datatypes ((C!1794 0))(
  ( (C!1795 (val!504 Int)) )
))
(declare-datatypes ((List!1691 0))(
  ( (Nil!1685) (Cons!1685 (h!7082 C!1794) (t!21376 List!1691)) )
))
(declare-datatypes ((IArray!1065 0))(
  ( (IArray!1066 (innerList!590 List!1691)) )
))
(declare-datatypes ((Conc!532 0))(
  ( (Node!532 (left!1289 Conc!532) (right!1619 Conc!532) (csize!1294 Int) (cheight!743 Int)) (Leaf!852 (xs!3123 IArray!1065) (csize!1295 Int)) (Empty!532) )
))
(declare-datatypes ((BalanceConc!1068 0))(
  ( (BalanceConc!1069 (c!25255 Conc!532)) )
))
(declare-datatypes ((Regex!436 0))(
  ( (ElementMatch!436 (c!25256 C!1794)) (Concat!795 (regOne!1384 Regex!436) (regTwo!1384 Regex!436)) (EmptyExpr!436) (Star!436 (reg!765 Regex!436)) (EmptyLang!436) (Union!436 (regOne!1385 Regex!436) (regTwo!1385 Regex!436)) )
))
(declare-datatypes ((String!2184 0))(
  ( (String!2185 (value!13378 String)) )
))
(declare-datatypes ((TokenValueInjection!540 0))(
  ( (TokenValueInjection!541 (toValue!951 Int) (toChars!810 Int)) )
))
(declare-datatypes ((Rule!536 0))(
  ( (Rule!537 (regex!368 Regex!436) (tag!546 String!2184) (isSeparator!368 Bool) (transformation!368 TokenValueInjection!540)) )
))
(declare-datatypes ((Token!484 0))(
  ( (Token!485 (value!13379 TokenValue!358) (rule!873 Rule!536) (size!1497 Int) (originalCharacters!413 List!1691)) )
))
(declare-datatypes ((List!1692 0))(
  ( (Nil!1686) (Cons!1686 (h!7083 Token!484) (t!21377 List!1692)) )
))
(declare-datatypes ((IArray!1067 0))(
  ( (IArray!1068 (innerList!591 List!1692)) )
))
(declare-datatypes ((Conc!533 0))(
  ( (Node!533 (left!1290 Conc!533) (right!1620 Conc!533) (csize!1296 Int) (cheight!744 Int)) (Leaf!853 (xs!3124 IArray!1067) (csize!1297 Int)) (Empty!533) )
))
(declare-datatypes ((BalanceConc!1070 0))(
  ( (BalanceConc!1071 (c!25257 Conc!533)) )
))
(declare-datatypes ((tuple2!1844 0))(
  ( (tuple2!1845 (_1!1129 BalanceConc!1070) (_2!1129 BalanceConc!1068)) )
))
(declare-fun lt!29035 () tuple2!1844)

(declare-fun input!576 () BalanceConc!1068)

(declare-fun size!1498 (BalanceConc!1068) Int)

(assert (=> b!104619 (= res!50377 (< (size!1498 (_2!1129 lt!29035)) (size!1498 input!576)))))

(assert (=> b!104619 (=> (not res!50377) (not e!58041))))

(declare-fun b!104620 () Bool)

(declare-fun e!58043 () Bool)

(declare-fun tp!58149 () Bool)

(declare-fun inv!2051 (Conc!532) Bool)

(assert (=> b!104620 (= e!58043 (and (inv!2051 (c!25255 input!576)) tp!58149))))

(declare-fun b!104621 () Bool)

(declare-fun e!58049 () Bool)

(declare-fun e!58048 () Bool)

(declare-fun tp!58150 () Bool)

(assert (=> b!104621 (= e!58049 (and e!58048 tp!58150))))

(declare-fun b!104622 () Bool)

(declare-fun e!58044 () Bool)

(assert (=> b!104622 (= e!58044 false)))

(declare-fun lt!29033 () List!1692)

(declare-fun list!712 (BalanceConc!1070) List!1692)

(assert (=> b!104622 (= lt!29033 (list!712 (_1!1129 lt!29035)))))

(declare-datatypes ((LexerInterface!260 0))(
  ( (LexerInterfaceExt!257 (__x!1812 Int)) (Lexer!258) )
))
(declare-fun thiss!11428 () LexerInterface!260)

(declare-datatypes ((tuple2!1846 0))(
  ( (tuple2!1847 (_1!1130 List!1692) (_2!1130 List!1691)) )
))
(declare-fun lt!29034 () tuple2!1846)

(declare-datatypes ((List!1693 0))(
  ( (Nil!1687) (Cons!1687 (h!7084 Rule!536) (t!21378 List!1693)) )
))
(declare-fun rules!1152 () List!1693)

(declare-fun lexList!80 (LexerInterface!260 List!1693 List!1691) tuple2!1846)

(declare-fun list!713 (BalanceConc!1068) List!1691)

(assert (=> b!104622 (= lt!29034 (lexList!80 thiss!11428 rules!1152 (list!713 input!576)))))

(declare-fun b!104623 () Bool)

(declare-fun isEmpty!783 (BalanceConc!1070) Bool)

(assert (=> b!104623 (= e!58041 (not (isEmpty!783 (_1!1129 lt!29035))))))

(declare-fun b!104624 () Bool)

(declare-fun e!58045 () Bool)

(assert (=> b!104624 (= e!58045 e!58044)))

(declare-fun res!50379 () Bool)

(assert (=> b!104624 (=> (not res!50379) (not e!58044))))

(assert (=> b!104624 (= res!50379 e!58047)))

(declare-fun c!25254 () Bool)

(declare-fun size!1499 (BalanceConc!1070) Int)

(assert (=> b!104624 (= c!25254 (> (size!1499 (_1!1129 lt!29035)) 0))))

(declare-fun lexTailRec!3 (LexerInterface!260 List!1693 BalanceConc!1068 BalanceConc!1068 BalanceConc!1068 BalanceConc!1070) tuple2!1844)

(assert (=> b!104624 (= lt!29035 (lexTailRec!3 thiss!11428 rules!1152 input!576 (BalanceConc!1069 Empty!532) input!576 (BalanceConc!1071 Empty!533)))))

(declare-fun res!50376 () Bool)

(assert (=> start!10332 (=> (not res!50376) (not e!58045))))

(assert (=> start!10332 (= res!50376 (is-Lexer!258 thiss!11428))))

(assert (=> start!10332 e!58045))

(assert (=> start!10332 true))

(assert (=> start!10332 e!58049))

(declare-fun inv!2052 (BalanceConc!1068) Bool)

(assert (=> start!10332 (and (inv!2052 input!576) e!58043)))

(declare-fun b!104625 () Bool)

(declare-fun res!50380 () Bool)

(assert (=> b!104625 (=> (not res!50380) (not e!58045))))

(declare-fun rulesInvariant!254 (LexerInterface!260 List!1693) Bool)

(assert (=> b!104625 (= res!50380 (rulesInvariant!254 thiss!11428 rules!1152))))

(declare-fun b!104626 () Bool)

(assert (=> b!104626 (= e!58047 (= (_2!1129 lt!29035) input!576))))

(declare-fun e!58046 () Bool)

(assert (=> b!104627 (= e!58046 (and tp!58153 tp!58151))))

(declare-fun b!104628 () Bool)

(declare-fun res!50378 () Bool)

(assert (=> b!104628 (=> (not res!50378) (not e!58045))))

(declare-fun isEmpty!784 (List!1693) Bool)

(assert (=> b!104628 (= res!50378 (not (isEmpty!784 rules!1152)))))

(declare-fun b!104629 () Bool)

(declare-fun tp!58152 () Bool)

(declare-fun inv!2048 (String!2184) Bool)

(declare-fun inv!2053 (TokenValueInjection!540) Bool)

(assert (=> b!104629 (= e!58048 (and tp!58152 (inv!2048 (tag!546 (h!7084 rules!1152))) (inv!2053 (transformation!368 (h!7084 rules!1152))) e!58046))))

(assert (= (and start!10332 res!50376) b!104628))

(assert (= (and b!104628 res!50378) b!104625))

(assert (= (and b!104625 res!50380) b!104624))

(assert (= (and b!104624 c!25254) b!104619))

(assert (= (and b!104624 (not c!25254)) b!104626))

(assert (= (and b!104619 res!50377) b!104623))

(assert (= (and b!104624 res!50379) b!104622))

(assert (= b!104629 b!104627))

(assert (= b!104621 b!104629))

(assert (= (and start!10332 (is-Cons!1687 rules!1152)) b!104621))

(assert (= start!10332 b!104620))

(declare-fun m!91134 () Bool)

(assert (=> b!104622 m!91134))

(declare-fun m!91136 () Bool)

(assert (=> b!104622 m!91136))

(assert (=> b!104622 m!91136))

(declare-fun m!91138 () Bool)

(assert (=> b!104622 m!91138))

(declare-fun m!91140 () Bool)

(assert (=> b!104624 m!91140))

(declare-fun m!91142 () Bool)

(assert (=> b!104624 m!91142))

(declare-fun m!91144 () Bool)

(assert (=> b!104619 m!91144))

(declare-fun m!91146 () Bool)

(assert (=> b!104619 m!91146))

(declare-fun m!91148 () Bool)

(assert (=> b!104620 m!91148))

(declare-fun m!91150 () Bool)

(assert (=> b!104625 m!91150))

(declare-fun m!91152 () Bool)

(assert (=> b!104628 m!91152))

(declare-fun m!91154 () Bool)

(assert (=> start!10332 m!91154))

(declare-fun m!91156 () Bool)

(assert (=> b!104629 m!91156))

(declare-fun m!91158 () Bool)

(assert (=> b!104629 m!91158))

(declare-fun m!91160 () Bool)

(assert (=> b!104623 m!91160))

(push 1)

(assert (not start!10332))

(assert (not b!104620))

(assert (not b!104625))

(assert (not b!104622))

(assert b_and!4659)

(assert (not b!104624))

(assert b_and!4661)

(assert (not b_next!3141))

(assert (not b!104621))

(assert (not b!104623))

(assert (not b!104628))

(assert (not b!104629))

(assert (not b_next!3143))

(assert (not b!104619))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4661)

(assert b_and!4659)

(assert (not b_next!3143))

(assert (not b_next!3141))

(check-sat)

(pop 1)

