; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229844 () Bool)

(assert start!229844)

(declare-fun b!2328076 () Bool)

(declare-fun b_free!70217 () Bool)

(declare-fun b_next!70921 () Bool)

(assert (=> b!2328076 (= b_free!70217 (not b_next!70921))))

(declare-fun tp!737614 () Bool)

(declare-fun b_and!185129 () Bool)

(assert (=> b!2328076 (= tp!737614 b_and!185129)))

(declare-fun b_free!70219 () Bool)

(declare-fun b_next!70923 () Bool)

(assert (=> b!2328076 (= b_free!70219 (not b_next!70923))))

(declare-fun tp!737612 () Bool)

(declare-fun b_and!185131 () Bool)

(assert (=> b!2328076 (= tp!737612 b_and!185131)))

(declare-fun b!2328072 () Bool)

(declare-fun e!1491621 () Bool)

(declare-fun e!1491620 () Bool)

(declare-fun tp!737613 () Bool)

(assert (=> b!2328072 (= e!1491621 (and e!1491620 tp!737613))))

(declare-fun b!2328073 () Bool)

(declare-fun e!1491617 () Bool)

(declare-datatypes ((List!27847 0))(
  ( (Nil!27749) (Cons!27749 (h!33150 (_ BitVec 16)) (t!207569 List!27847)) )
))
(declare-datatypes ((TokenValue!4594 0))(
  ( (FloatLiteralValue!9188 (text!32603 List!27847)) (TokenValueExt!4593 (__x!18347 Int)) (Broken!22970 (value!140315 List!27847)) (Object!4691) (End!4594) (Def!4594) (Underscore!4594) (Match!4594) (Else!4594) (Error!4594) (Case!4594) (If!4594) (Extends!4594) (Abstract!4594) (Class!4594) (Val!4594) (DelimiterValue!9188 (del!4654 List!27847)) (KeywordValue!4600 (value!140316 List!27847)) (CommentValue!9188 (value!140317 List!27847)) (WhitespaceValue!9188 (value!140318 List!27847)) (IndentationValue!4594 (value!140319 List!27847)) (String!30339) (Int32!4594) (Broken!22971 (value!140320 List!27847)) (Boolean!4595) (Unit!40566) (OperatorValue!4597 (op!4654 List!27847)) (IdentifierValue!9188 (value!140321 List!27847)) (IdentifierValue!9189 (value!140322 List!27847)) (WhitespaceValue!9189 (value!140323 List!27847)) (True!9188) (False!9188) (Broken!22972 (value!140324 List!27847)) (Broken!22973 (value!140325 List!27847)) (True!9189) (RightBrace!4594) (RightBracket!4594) (Colon!4594) (Null!4594) (Comma!4594) (LeftBracket!4594) (False!9189) (LeftBrace!4594) (ImaginaryLiteralValue!4594 (text!32604 List!27847)) (StringLiteralValue!13782 (value!140326 List!27847)) (EOFValue!4594 (value!140327 List!27847)) (IdentValue!4594 (value!140328 List!27847)) (DelimiterValue!9189 (value!140329 List!27847)) (DedentValue!4594 (value!140330 List!27847)) (NewLineValue!4594 (value!140331 List!27847)) (IntegerValue!13782 (value!140332 (_ BitVec 32)) (text!32605 List!27847)) (IntegerValue!13783 (value!140333 Int) (text!32606 List!27847)) (Times!4594) (Or!4594) (Equal!4594) (Minus!4594) (Broken!22974 (value!140334 List!27847)) (And!4594) (Div!4594) (LessEqual!4594) (Mod!4594) (Concat!11394) (Not!4594) (Plus!4594) (SpaceValue!4594 (value!140335 List!27847)) (IntegerValue!13784 (value!140336 Int) (text!32607 List!27847)) (StringLiteralValue!13783 (text!32608 List!27847)) (FloatLiteralValue!9189 (text!32609 List!27847)) (BytesLiteralValue!4594 (value!140337 List!27847)) (CommentValue!9189 (value!140338 List!27847)) (StringLiteralValue!13784 (value!140339 List!27847)) (ErrorTokenValue!4594 (msg!4655 List!27847)) )
))
(declare-datatypes ((C!13758 0))(
  ( (C!13759 (val!8035 Int)) )
))
(declare-datatypes ((Regex!6800 0))(
  ( (ElementMatch!6800 (c!369888 C!13758)) (Concat!11395 (regOne!14112 Regex!6800) (regTwo!14112 Regex!6800)) (EmptyExpr!6800) (Star!6800 (reg!7129 Regex!6800)) (EmptyLang!6800) (Union!6800 (regOne!14113 Regex!6800) (regTwo!14113 Regex!6800)) )
))
(declare-datatypes ((String!30340 0))(
  ( (String!30341 (value!140340 String)) )
))
(declare-datatypes ((List!27848 0))(
  ( (Nil!27750) (Cons!27750 (h!33151 C!13758) (t!207570 List!27848)) )
))
(declare-datatypes ((IArray!18193 0))(
  ( (IArray!18194 (innerList!9154 List!27848)) )
))
(declare-datatypes ((Conc!9094 0))(
  ( (Node!9094 (left!21055 Conc!9094) (right!21385 Conc!9094) (csize!18418 Int) (cheight!9305 Int)) (Leaf!13368 (xs!12074 IArray!18193) (csize!18419 Int)) (Empty!9094) )
))
(declare-datatypes ((BalanceConc!17800 0))(
  ( (BalanceConc!17801 (c!369889 Conc!9094)) )
))
(declare-datatypes ((TokenValueInjection!8708 0))(
  ( (TokenValueInjection!8709 (toValue!6248 Int) (toChars!6107 Int)) )
))
(declare-datatypes ((Rule!8640 0))(
  ( (Rule!8641 (regex!4420 Regex!6800) (tag!4910 String!30340) (isSeparator!4420 Bool) (transformation!4420 TokenValueInjection!8708)) )
))
(declare-datatypes ((Token!8318 0))(
  ( (Token!8319 (value!140341 TokenValue!4594) (rule!6776 Rule!8640) (size!22003 Int) (originalCharacters!5190 List!27848)) )
))
(declare-datatypes ((List!27849 0))(
  ( (Nil!27751) (Cons!27751 (h!33152 Token!8318) (t!207571 List!27849)) )
))
(declare-datatypes ((IArray!18195 0))(
  ( (IArray!18196 (innerList!9155 List!27849)) )
))
(declare-datatypes ((Conc!9095 0))(
  ( (Node!9095 (left!21056 Conc!9095) (right!21386 Conc!9095) (csize!18420 Int) (cheight!9306 Int)) (Leaf!13369 (xs!12075 IArray!18195) (csize!18421 Int)) (Empty!9095) )
))
(declare-datatypes ((BalanceConc!17802 0))(
  ( (BalanceConc!17803 (c!369890 Conc!9095)) )
))
(declare-fun tokens!300 () BalanceConc!17802)

(declare-fun tp!737611 () Bool)

(declare-fun inv!37790 (Conc!9095) Bool)

(assert (=> b!2328073 (= e!1491617 (and (inv!37790 (c!369890 tokens!300)) tp!737611))))

(declare-fun res!994011 () Bool)

(declare-fun e!1491619 () Bool)

(assert (=> start!229844 (=> (not res!994011) (not e!1491619))))

(declare-datatypes ((List!27850 0))(
  ( (Nil!27752) (Cons!27752 (h!33153 Rule!8640) (t!207572 List!27850)) )
))
(declare-fun rules!853 () List!27850)

(declare-fun isEmpty!15819 (List!27850) Bool)

(assert (=> start!229844 (= res!994011 (not (isEmpty!15819 rules!853)))))

(assert (=> start!229844 e!1491619))

(assert (=> start!229844 e!1491621))

(declare-fun inv!37791 (BalanceConc!17802) Bool)

(assert (=> start!229844 (and (inv!37791 tokens!300) e!1491617)))

(declare-fun b!2328074 () Bool)

(declare-fun res!994010 () Bool)

(assert (=> b!2328074 (=> (not res!994010) (not e!1491619))))

(declare-datatypes ((LexerInterface!4017 0))(
  ( (LexerInterfaceExt!4014 (__x!18348 Int)) (Lexer!4015) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!1347 (LexerInterface!4017 List!27850 List!27849) Bool)

(declare-fun list!11034 (BalanceConc!17802) List!27849)

(assert (=> b!2328074 (= res!994010 (rulesProduceEachTokenIndividuallyList!1347 Lexer!4015 rules!853 (list!11034 tokens!300)))))

(declare-fun tp!737610 () Bool)

(declare-fun e!1491618 () Bool)

(declare-fun b!2328075 () Bool)

(declare-fun inv!37787 (String!30340) Bool)

(declare-fun inv!37792 (TokenValueInjection!8708) Bool)

(assert (=> b!2328075 (= e!1491620 (and tp!737610 (inv!37787 (tag!4910 (h!33153 rules!853))) (inv!37792 (transformation!4420 (h!33153 rules!853))) e!1491618))))

(assert (=> b!2328076 (= e!1491618 (and tp!737614 tp!737612))))

(declare-fun b!2328077 () Bool)

(declare-fun res!994009 () Bool)

(assert (=> b!2328077 (=> (not res!994009) (not e!1491619))))

(declare-fun rulesInvariant!3517 (LexerInterface!4017 List!27850) Bool)

(assert (=> b!2328077 (= res!994009 (rulesInvariant!3517 Lexer!4015 rules!853))))

(declare-fun b!2328078 () Bool)

(assert (=> b!2328078 (= e!1491619 false)))

(declare-fun lt!861994 () Bool)

(declare-fun rulesProduceEachTokenIndividually!925 (LexerInterface!4017 List!27850 BalanceConc!17802) Bool)

(assert (=> b!2328078 (= lt!861994 (rulesProduceEachTokenIndividually!925 Lexer!4015 rules!853 tokens!300))))

(assert (= (and start!229844 res!994011) b!2328077))

(assert (= (and b!2328077 res!994009) b!2328074))

(assert (= (and b!2328074 res!994010) b!2328078))

(assert (= b!2328075 b!2328076))

(assert (= b!2328072 b!2328075))

(assert (= (and start!229844 (is-Cons!27752 rules!853)) b!2328072))

(assert (= start!229844 b!2328073))

(declare-fun m!2758807 () Bool)

(assert (=> b!2328077 m!2758807))

(declare-fun m!2758809 () Bool)

(assert (=> b!2328078 m!2758809))

(declare-fun m!2758811 () Bool)

(assert (=> b!2328074 m!2758811))

(assert (=> b!2328074 m!2758811))

(declare-fun m!2758813 () Bool)

(assert (=> b!2328074 m!2758813))

(declare-fun m!2758815 () Bool)

(assert (=> b!2328075 m!2758815))

(declare-fun m!2758817 () Bool)

(assert (=> b!2328075 m!2758817))

(declare-fun m!2758819 () Bool)

(assert (=> start!229844 m!2758819))

(declare-fun m!2758821 () Bool)

(assert (=> start!229844 m!2758821))

(declare-fun m!2758823 () Bool)

(assert (=> b!2328073 m!2758823))

(push 1)

(assert (not b!2328075))

(assert (not b!2328074))

(assert (not b!2328072))

(assert (not b_next!70923))

(assert b_and!185131)

(assert (not b!2328077))

(assert (not b_next!70921))

(assert b_and!185129)

(assert (not b!2328078))

(assert (not start!229844))

(assert (not b!2328073))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185129)

(assert b_and!185131)

(assert (not b_next!70923))

(assert (not b_next!70921))

(check-sat)

(pop 1)

