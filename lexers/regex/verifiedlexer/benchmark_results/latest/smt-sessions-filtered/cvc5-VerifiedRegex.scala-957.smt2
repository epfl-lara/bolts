; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!48594 () Bool)

(assert start!48594)

(declare-fun b!529592 () Bool)

(declare-fun b_free!14145 () Bool)

(declare-fun b_next!14161 () Bool)

(assert (=> b!529592 (= b_free!14145 (not b_next!14161))))

(declare-fun tp!168585 () Bool)

(declare-fun b_and!51659 () Bool)

(assert (=> b!529592 (= tp!168585 b_and!51659)))

(declare-fun b_free!14147 () Bool)

(declare-fun b_next!14163 () Bool)

(assert (=> b!529592 (= b_free!14147 (not b_next!14163))))

(declare-fun tp!168581 () Bool)

(declare-fun b_and!51661 () Bool)

(assert (=> b!529592 (= tp!168581 b_and!51661)))

(declare-fun b!529591 () Bool)

(declare-fun b_free!14149 () Bool)

(declare-fun b_next!14165 () Bool)

(assert (=> b!529591 (= b_free!14149 (not b_next!14165))))

(declare-fun tp!168586 () Bool)

(declare-fun b_and!51663 () Bool)

(assert (=> b!529591 (= tp!168586 b_and!51663)))

(declare-fun b_free!14151 () Bool)

(declare-fun b_next!14167 () Bool)

(assert (=> b!529591 (= b_free!14151 (not b_next!14167))))

(declare-fun tp!168582 () Bool)

(declare-fun b_and!51665 () Bool)

(assert (=> b!529591 (= tp!168582 b_and!51665)))

(declare-fun tp!168583 () Bool)

(declare-fun e!318633 () Bool)

(declare-fun e!318636 () Bool)

(declare-datatypes ((C!3390 0))(
  ( (C!3391 (val!1921 Int)) )
))
(declare-datatypes ((Regex!1234 0))(
  ( (ElementMatch!1234 (c!101281 C!3390)) (Concat!2158 (regOne!2980 Regex!1234) (regTwo!2980 Regex!1234)) (EmptyExpr!1234) (Star!1234 (reg!1563 Regex!1234)) (EmptyLang!1234) (Union!1234 (regOne!2981 Regex!1234) (regTwo!2981 Regex!1234)) )
))
(declare-datatypes ((List!5018 0))(
  ( (Nil!5008) (Cons!5008 (h!10409 (_ BitVec 16)) (t!73657 List!5018)) )
))
(declare-datatypes ((TokenValue!924 0))(
  ( (FloatLiteralValue!1848 (text!6913 List!5018)) (TokenValueExt!923 (__x!3746 Int)) (Broken!4620 (value!30492 List!5018)) (Object!933) (End!924) (Def!924) (Underscore!924) (Match!924) (Else!924) (Error!924) (Case!924) (If!924) (Extends!924) (Abstract!924) (Class!924) (Val!924) (DelimiterValue!1848 (del!984 List!5018)) (KeywordValue!930 (value!30493 List!5018)) (CommentValue!1848 (value!30494 List!5018)) (WhitespaceValue!1848 (value!30495 List!5018)) (IndentationValue!924 (value!30496 List!5018)) (String!6365) (Int32!924) (Broken!4621 (value!30497 List!5018)) (Boolean!925) (Unit!8819) (OperatorValue!927 (op!984 List!5018)) (IdentifierValue!1848 (value!30498 List!5018)) (IdentifierValue!1849 (value!30499 List!5018)) (WhitespaceValue!1849 (value!30500 List!5018)) (True!1848) (False!1848) (Broken!4622 (value!30501 List!5018)) (Broken!4623 (value!30502 List!5018)) (True!1849) (RightBrace!924) (RightBracket!924) (Colon!924) (Null!924) (Comma!924) (LeftBracket!924) (False!1849) (LeftBrace!924) (ImaginaryLiteralValue!924 (text!6914 List!5018)) (StringLiteralValue!2772 (value!30503 List!5018)) (EOFValue!924 (value!30504 List!5018)) (IdentValue!924 (value!30505 List!5018)) (DelimiterValue!1849 (value!30506 List!5018)) (DedentValue!924 (value!30507 List!5018)) (NewLineValue!924 (value!30508 List!5018)) (IntegerValue!2772 (value!30509 (_ BitVec 32)) (text!6915 List!5018)) (IntegerValue!2773 (value!30510 Int) (text!6916 List!5018)) (Times!924) (Or!924) (Equal!924) (Minus!924) (Broken!4624 (value!30511 List!5018)) (And!924) (Div!924) (LessEqual!924) (Mod!924) (Concat!2159) (Not!924) (Plus!924) (SpaceValue!924 (value!30512 List!5018)) (IntegerValue!2774 (value!30513 Int) (text!6917 List!5018)) (StringLiteralValue!2773 (text!6918 List!5018)) (FloatLiteralValue!1849 (text!6919 List!5018)) (BytesLiteralValue!924 (value!30514 List!5018)) (CommentValue!1849 (value!30515 List!5018)) (StringLiteralValue!2774 (value!30516 List!5018)) (ErrorTokenValue!924 (msg!985 List!5018)) )
))
(declare-datatypes ((String!6366 0))(
  ( (String!6367 (value!30517 String)) )
))
(declare-datatypes ((List!5019 0))(
  ( (Nil!5009) (Cons!5009 (h!10410 C!3390) (t!73658 List!5019)) )
))
(declare-datatypes ((IArray!3235 0))(
  ( (IArray!3236 (innerList!1675 List!5019)) )
))
(declare-datatypes ((Conc!1617 0))(
  ( (Node!1617 (left!4244 Conc!1617) (right!4574 Conc!1617) (csize!3464 Int) (cheight!1828 Int)) (Leaf!2575 (xs!4254 IArray!3235) (csize!3465 Int)) (Empty!1617) )
))
(declare-datatypes ((BalanceConc!3242 0))(
  ( (BalanceConc!3243 (c!101282 Conc!1617)) )
))
(declare-datatypes ((TokenValueInjection!1616 0))(
  ( (TokenValueInjection!1617 (toValue!1743 Int) (toChars!1602 Int)) )
))
(declare-datatypes ((Rule!1600 0))(
  ( (Rule!1601 (regex!900 Regex!1234) (tag!1162 String!6366) (isSeparator!900 Bool) (transformation!900 TokenValueInjection!1616)) )
))
(declare-datatypes ((Token!1536 0))(
  ( (Token!1537 (value!30518 TokenValue!924) (rule!1600 Rule!1600) (size!4080 Int) (originalCharacters!939 List!5019)) )
))
(declare-fun token!491 () Token!1536)

(declare-fun b!529580 () Bool)

(declare-fun inv!21 (TokenValue!924) Bool)

(assert (=> b!529580 (= e!318636 (and (inv!21 (value!30518 token!491)) e!318633 tp!168583))))

(declare-fun b!529581 () Bool)

(declare-fun res!223592 () Bool)

(declare-fun e!318628 () Bool)

(assert (=> b!529581 (=> (not res!223592) (not e!318628))))

(declare-datatypes ((LexerInterface!786 0))(
  ( (LexerInterfaceExt!783 (__x!3747 Int)) (Lexer!784) )
))
(declare-fun thiss!22590 () LexerInterface!786)

(declare-datatypes ((List!5020 0))(
  ( (Nil!5010) (Cons!5010 (h!10411 Rule!1600) (t!73659 List!5020)) )
))
(declare-fun rules!3103 () List!5020)

(declare-fun rulesInvariant!749 (LexerInterface!786 List!5020) Bool)

(assert (=> b!529581 (= res!223592 (rulesInvariant!749 thiss!22590 rules!3103))))

(declare-fun b!529582 () Bool)

(declare-fun e!318632 () Bool)

(declare-fun tp_is_empty!2823 () Bool)

(declare-fun tp!168587 () Bool)

(assert (=> b!529582 (= e!318632 (and tp_is_empty!2823 tp!168587))))

(declare-fun b!529583 () Bool)

(declare-fun e!318635 () Bool)

(declare-fun e!318627 () Bool)

(declare-fun tp!168584 () Bool)

(assert (=> b!529583 (= e!318635 (and e!318627 tp!168584))))

(declare-fun b!529584 () Bool)

(assert (=> b!529584 (= e!318628 false)))

(declare-fun suffix!1342 () List!5019)

(declare-fun input!2705 () List!5019)

(declare-datatypes ((tuple2!6154 0))(
  ( (tuple2!6155 (_1!3341 Token!1536) (_2!3341 List!5019)) )
))
(declare-datatypes ((Option!1250 0))(
  ( (None!1249) (Some!1249 (v!16054 tuple2!6154)) )
))
(declare-fun lt!218364 () Option!1250)

(declare-fun maxPrefix!484 (LexerInterface!786 List!5020 List!5019) Option!1250)

(declare-fun ++!1388 (List!5019 List!5019) List!5019)

(assert (=> b!529584 (= lt!218364 (maxPrefix!484 thiss!22590 rules!3103 (++!1388 input!2705 suffix!1342)))))

(declare-fun b!529585 () Bool)

(declare-fun res!223590 () Bool)

(assert (=> b!529585 (=> (not res!223590) (not e!318628))))

(declare-fun list!2084 (BalanceConc!3242) List!5019)

(declare-fun charsOf!529 (Token!1536) BalanceConc!3242)

(assert (=> b!529585 (= res!223590 (= (list!2084 (charsOf!529 token!491)) input!2705))))

(declare-fun b!529586 () Bool)

(declare-fun res!223588 () Bool)

(assert (=> b!529586 (=> (not res!223588) (not e!318628))))

(declare-fun isEmpty!3626 (List!5019) Bool)

(assert (=> b!529586 (= res!223588 (not (isEmpty!3626 input!2705)))))

(declare-fun b!529587 () Bool)

(declare-fun tp!168580 () Bool)

(declare-fun e!318629 () Bool)

(declare-fun inv!6282 (String!6366) Bool)

(declare-fun inv!6285 (TokenValueInjection!1616) Bool)

(assert (=> b!529587 (= e!318627 (and tp!168580 (inv!6282 (tag!1162 (h!10411 rules!3103))) (inv!6285 (transformation!900 (h!10411 rules!3103))) e!318629))))

(declare-fun res!223589 () Bool)

(assert (=> start!48594 (=> (not res!223589) (not e!318628))))

(assert (=> start!48594 (= res!223589 (is-Lexer!784 thiss!22590))))

(assert (=> start!48594 e!318628))

(assert (=> start!48594 e!318632))

(assert (=> start!48594 e!318635))

(declare-fun inv!6286 (Token!1536) Bool)

(assert (=> start!48594 (and (inv!6286 token!491) e!318636)))

(assert (=> start!48594 true))

(declare-fun e!318637 () Bool)

(assert (=> start!48594 e!318637))

(declare-fun b!529588 () Bool)

(declare-fun tp!168579 () Bool)

(assert (=> b!529588 (= e!318637 (and tp_is_empty!2823 tp!168579))))

(declare-fun b!529589 () Bool)

(declare-fun res!223591 () Bool)

(assert (=> b!529589 (=> (not res!223591) (not e!318628))))

(declare-fun isEmpty!3627 (List!5020) Bool)

(assert (=> b!529589 (= res!223591 (not (isEmpty!3627 rules!3103)))))

(declare-fun b!529590 () Bool)

(declare-fun tp!168588 () Bool)

(declare-fun e!318634 () Bool)

(assert (=> b!529590 (= e!318633 (and tp!168588 (inv!6282 (tag!1162 (rule!1600 token!491))) (inv!6285 (transformation!900 (rule!1600 token!491))) e!318634))))

(assert (=> b!529591 (= e!318634 (and tp!168586 tp!168582))))

(assert (=> b!529592 (= e!318629 (and tp!168585 tp!168581))))

(assert (= (and start!48594 res!223589) b!529589))

(assert (= (and b!529589 res!223591) b!529581))

(assert (= (and b!529581 res!223592) b!529586))

(assert (= (and b!529586 res!223588) b!529585))

(assert (= (and b!529585 res!223590) b!529584))

(assert (= (and start!48594 (is-Cons!5009 suffix!1342)) b!529582))

(assert (= b!529587 b!529592))

(assert (= b!529583 b!529587))

(assert (= (and start!48594 (is-Cons!5010 rules!3103)) b!529583))

(assert (= b!529590 b!529591))

(assert (= b!529580 b!529590))

(assert (= start!48594 b!529580))

(assert (= (and start!48594 (is-Cons!5009 input!2705)) b!529588))

(declare-fun m!775055 () Bool)

(assert (=> b!529586 m!775055))

(declare-fun m!775057 () Bool)

(assert (=> b!529589 m!775057))

(declare-fun m!775059 () Bool)

(assert (=> b!529590 m!775059))

(declare-fun m!775061 () Bool)

(assert (=> b!529590 m!775061))

(declare-fun m!775063 () Bool)

(assert (=> b!529584 m!775063))

(assert (=> b!529584 m!775063))

(declare-fun m!775065 () Bool)

(assert (=> b!529584 m!775065))

(declare-fun m!775067 () Bool)

(assert (=> b!529581 m!775067))

(declare-fun m!775069 () Bool)

(assert (=> b!529585 m!775069))

(assert (=> b!529585 m!775069))

(declare-fun m!775071 () Bool)

(assert (=> b!529585 m!775071))

(declare-fun m!775073 () Bool)

(assert (=> b!529587 m!775073))

(declare-fun m!775075 () Bool)

(assert (=> b!529587 m!775075))

(declare-fun m!775077 () Bool)

(assert (=> b!529580 m!775077))

(declare-fun m!775079 () Bool)

(assert (=> start!48594 m!775079))

(push 1)

(assert (not b!529582))

(assert (not b!529590))

(assert (not b!529587))

(assert (not b!529589))

(assert tp_is_empty!2823)

(assert (not b_next!14163))

(assert (not b!529588))

(assert (not b_next!14167))

(assert b_and!51659)

(assert (not b_next!14161))

(assert b_and!51663)

(assert (not b!529586))

(assert (not b!529580))

(assert (not start!48594))

(assert b_and!51661)

(assert (not b!529581))

(assert (not b_next!14165))

(assert b_and!51665)

(assert (not b!529583))

(assert (not b!529584))

(assert (not b!529585))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!14163))

(assert b_and!51665)

(assert (not b_next!14167))

(assert b_and!51659)

(assert (not b_next!14161))

(assert b_and!51663)

(assert b_and!51661)

(assert (not b_next!14165))

(check-sat)

(pop 1)

