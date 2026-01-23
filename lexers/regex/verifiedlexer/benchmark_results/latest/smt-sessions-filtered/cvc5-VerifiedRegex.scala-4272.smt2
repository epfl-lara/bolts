; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229840 () Bool)

(assert start!229840)

(declare-fun b!2328036 () Bool)

(declare-fun b_free!70209 () Bool)

(declare-fun b_next!70913 () Bool)

(assert (=> b!2328036 (= b_free!70209 (not b_next!70913))))

(declare-fun tp!737581 () Bool)

(declare-fun b_and!185121 () Bool)

(assert (=> b!2328036 (= tp!737581 b_and!185121)))

(declare-fun b_free!70211 () Bool)

(declare-fun b_next!70915 () Bool)

(assert (=> b!2328036 (= b_free!70211 (not b_next!70915))))

(declare-fun tp!737583 () Bool)

(declare-fun b_and!185123 () Bool)

(assert (=> b!2328036 (= tp!737583 b_and!185123)))

(declare-fun b!2328034 () Bool)

(declare-datatypes ((List!27839 0))(
  ( (Nil!27741) (Cons!27741 (h!33142 (_ BitVec 16)) (t!207561 List!27839)) )
))
(declare-datatypes ((TokenValue!4592 0))(
  ( (FloatLiteralValue!9184 (text!32589 List!27839)) (TokenValueExt!4591 (__x!18343 Int)) (Broken!22960 (value!140258 List!27839)) (Object!4689) (End!4592) (Def!4592) (Underscore!4592) (Match!4592) (Else!4592) (Error!4592) (Case!4592) (If!4592) (Extends!4592) (Abstract!4592) (Class!4592) (Val!4592) (DelimiterValue!9184 (del!4652 List!27839)) (KeywordValue!4598 (value!140259 List!27839)) (CommentValue!9184 (value!140260 List!27839)) (WhitespaceValue!9184 (value!140261 List!27839)) (IndentationValue!4592 (value!140262 List!27839)) (String!30329) (Int32!4592) (Broken!22961 (value!140263 List!27839)) (Boolean!4593) (Unit!40564) (OperatorValue!4595 (op!4652 List!27839)) (IdentifierValue!9184 (value!140264 List!27839)) (IdentifierValue!9185 (value!140265 List!27839)) (WhitespaceValue!9185 (value!140266 List!27839)) (True!9184) (False!9184) (Broken!22962 (value!140267 List!27839)) (Broken!22963 (value!140268 List!27839)) (True!9185) (RightBrace!4592) (RightBracket!4592) (Colon!4592) (Null!4592) (Comma!4592) (LeftBracket!4592) (False!9185) (LeftBrace!4592) (ImaginaryLiteralValue!4592 (text!32590 List!27839)) (StringLiteralValue!13776 (value!140269 List!27839)) (EOFValue!4592 (value!140270 List!27839)) (IdentValue!4592 (value!140271 List!27839)) (DelimiterValue!9185 (value!140272 List!27839)) (DedentValue!4592 (value!140273 List!27839)) (NewLineValue!4592 (value!140274 List!27839)) (IntegerValue!13776 (value!140275 (_ BitVec 32)) (text!32591 List!27839)) (IntegerValue!13777 (value!140276 Int) (text!32592 List!27839)) (Times!4592) (Or!4592) (Equal!4592) (Minus!4592) (Broken!22964 (value!140277 List!27839)) (And!4592) (Div!4592) (LessEqual!4592) (Mod!4592) (Concat!11390) (Not!4592) (Plus!4592) (SpaceValue!4592 (value!140278 List!27839)) (IntegerValue!13778 (value!140279 Int) (text!32593 List!27839)) (StringLiteralValue!13777 (text!32594 List!27839)) (FloatLiteralValue!9185 (text!32595 List!27839)) (BytesLiteralValue!4592 (value!140280 List!27839)) (CommentValue!9185 (value!140281 List!27839)) (StringLiteralValue!13778 (value!140282 List!27839)) (ErrorTokenValue!4592 (msg!4653 List!27839)) )
))
(declare-datatypes ((C!13754 0))(
  ( (C!13755 (val!8033 Int)) )
))
(declare-datatypes ((Regex!6798 0))(
  ( (ElementMatch!6798 (c!369882 C!13754)) (Concat!11391 (regOne!14108 Regex!6798) (regTwo!14108 Regex!6798)) (EmptyExpr!6798) (Star!6798 (reg!7127 Regex!6798)) (EmptyLang!6798) (Union!6798 (regOne!14109 Regex!6798) (regTwo!14109 Regex!6798)) )
))
(declare-datatypes ((String!30330 0))(
  ( (String!30331 (value!140283 String)) )
))
(declare-datatypes ((List!27840 0))(
  ( (Nil!27742) (Cons!27742 (h!33143 C!13754) (t!207562 List!27840)) )
))
(declare-datatypes ((IArray!18185 0))(
  ( (IArray!18186 (innerList!9150 List!27840)) )
))
(declare-datatypes ((Conc!9090 0))(
  ( (Node!9090 (left!21050 Conc!9090) (right!21380 Conc!9090) (csize!18410 Int) (cheight!9301 Int)) (Leaf!13363 (xs!12070 IArray!18185) (csize!18411 Int)) (Empty!9090) )
))
(declare-datatypes ((BalanceConc!17792 0))(
  ( (BalanceConc!17793 (c!369883 Conc!9090)) )
))
(declare-datatypes ((TokenValueInjection!8704 0))(
  ( (TokenValueInjection!8705 (toValue!6246 Int) (toChars!6105 Int)) )
))
(declare-datatypes ((Rule!8636 0))(
  ( (Rule!8637 (regex!4418 Regex!6798) (tag!4908 String!30330) (isSeparator!4418 Bool) (transformation!4418 TokenValueInjection!8704)) )
))
(declare-datatypes ((List!27841 0))(
  ( (Nil!27743) (Cons!27743 (h!33144 Rule!8636) (t!207563 List!27841)) )
))
(declare-fun rules!853 () List!27841)

(declare-fun e!1491583 () Bool)

(declare-fun e!1491580 () Bool)

(declare-fun tp!737580 () Bool)

(declare-fun inv!37778 (String!30330) Bool)

(declare-fun inv!37781 (TokenValueInjection!8704) Bool)

(assert (=> b!2328034 (= e!1491583 (and tp!737580 (inv!37778 (tag!4908 (h!33144 rules!853))) (inv!37781 (transformation!4418 (h!33144 rules!853))) e!1491580))))

(declare-fun b!2328035 () Bool)

(declare-fun e!1491585 () Bool)

(assert (=> b!2328035 (= e!1491585 false)))

(declare-fun lt!861988 () Bool)

(declare-datatypes ((Token!8314 0))(
  ( (Token!8315 (value!140284 TokenValue!4592) (rule!6774 Rule!8636) (size!22001 Int) (originalCharacters!5188 List!27840)) )
))
(declare-datatypes ((List!27842 0))(
  ( (Nil!27744) (Cons!27744 (h!33145 Token!8314) (t!207564 List!27842)) )
))
(declare-datatypes ((IArray!18187 0))(
  ( (IArray!18188 (innerList!9151 List!27842)) )
))
(declare-datatypes ((Conc!9091 0))(
  ( (Node!9091 (left!21051 Conc!9091) (right!21381 Conc!9091) (csize!18412 Int) (cheight!9302 Int)) (Leaf!13364 (xs!12071 IArray!18187) (csize!18413 Int)) (Empty!9091) )
))
(declare-datatypes ((BalanceConc!17794 0))(
  ( (BalanceConc!17795 (c!369884 Conc!9091)) )
))
(declare-fun tokens!300 () BalanceConc!17794)

(declare-datatypes ((LexerInterface!4015 0))(
  ( (LexerInterfaceExt!4012 (__x!18344 Int)) (Lexer!4013) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!1345 (LexerInterface!4015 List!27841 List!27842) Bool)

(declare-fun list!11032 (BalanceConc!17794) List!27842)

(assert (=> b!2328035 (= lt!861988 (rulesProduceEachTokenIndividuallyList!1345 Lexer!4013 rules!853 (list!11032 tokens!300)))))

(declare-fun res!993995 () Bool)

(assert (=> start!229840 (=> (not res!993995) (not e!1491585))))

(declare-fun isEmpty!15817 (List!27841) Bool)

(assert (=> start!229840 (= res!993995 (not (isEmpty!15817 rules!853)))))

(assert (=> start!229840 e!1491585))

(declare-fun e!1491584 () Bool)

(assert (=> start!229840 e!1491584))

(declare-fun e!1491582 () Bool)

(declare-fun inv!37782 (BalanceConc!17794) Bool)

(assert (=> start!229840 (and (inv!37782 tokens!300) e!1491582)))

(assert (=> b!2328036 (= e!1491580 (and tp!737581 tp!737583))))

(declare-fun b!2328037 () Bool)

(declare-fun tp!737582 () Bool)

(declare-fun inv!37783 (Conc!9091) Bool)

(assert (=> b!2328037 (= e!1491582 (and (inv!37783 (c!369884 tokens!300)) tp!737582))))

(declare-fun b!2328038 () Bool)

(declare-fun tp!737584 () Bool)

(assert (=> b!2328038 (= e!1491584 (and e!1491583 tp!737584))))

(declare-fun b!2328039 () Bool)

(declare-fun res!993996 () Bool)

(assert (=> b!2328039 (=> (not res!993996) (not e!1491585))))

(declare-fun rulesInvariant!3515 (LexerInterface!4015 List!27841) Bool)

(assert (=> b!2328039 (= res!993996 (rulesInvariant!3515 Lexer!4013 rules!853))))

(assert (= (and start!229840 res!993995) b!2328039))

(assert (= (and b!2328039 res!993996) b!2328035))

(assert (= b!2328034 b!2328036))

(assert (= b!2328038 b!2328034))

(assert (= (and start!229840 (is-Cons!27743 rules!853)) b!2328038))

(assert (= start!229840 b!2328037))

(declare-fun m!2758775 () Bool)

(assert (=> b!2328037 m!2758775))

(declare-fun m!2758777 () Bool)

(assert (=> b!2328035 m!2758777))

(assert (=> b!2328035 m!2758777))

(declare-fun m!2758779 () Bool)

(assert (=> b!2328035 m!2758779))

(declare-fun m!2758781 () Bool)

(assert (=> start!229840 m!2758781))

(declare-fun m!2758783 () Bool)

(assert (=> start!229840 m!2758783))

(declare-fun m!2758785 () Bool)

(assert (=> b!2328034 m!2758785))

(declare-fun m!2758787 () Bool)

(assert (=> b!2328034 m!2758787))

(declare-fun m!2758789 () Bool)

(assert (=> b!2328039 m!2758789))

(push 1)

(assert (not b!2328038))

(assert (not b!2328035))

(assert b_and!185123)

(assert (not b!2328037))

(assert b_and!185121)

(assert (not b!2328034))

(assert (not b_next!70913))

(assert (not b_next!70915))

(assert (not b!2328039))

(assert (not start!229840))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185121)

(assert b_and!185123)

(assert (not b_next!70915))

(assert (not b_next!70913))

(check-sat)

(pop 1)

