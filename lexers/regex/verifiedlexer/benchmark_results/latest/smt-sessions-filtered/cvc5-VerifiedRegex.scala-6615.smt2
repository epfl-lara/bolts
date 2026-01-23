; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349308 () Bool)

(assert start!349308)

(declare-fun b!3704659 () Bool)

(declare-fun b_free!98957 () Bool)

(declare-fun b_next!99661 () Bool)

(assert (=> b!3704659 (= b_free!98957 (not b_next!99661))))

(declare-fun tp!1126599 () Bool)

(declare-fun b_and!277191 () Bool)

(assert (=> b!3704659 (= tp!1126599 b_and!277191)))

(declare-fun b_free!98959 () Bool)

(declare-fun b_next!99663 () Bool)

(assert (=> b!3704659 (= b_free!98959 (not b_next!99663))))

(declare-fun tp!1126600 () Bool)

(declare-fun b_and!277193 () Bool)

(assert (=> b!3704659 (= tp!1126600 b_and!277193)))

(declare-fun res!1507085 () Bool)

(declare-fun e!2294691 () Bool)

(assert (=> start!349308 (=> (not res!1507085) (not e!2294691))))

(declare-datatypes ((LexerInterface!5598 0))(
  ( (LexerInterfaceExt!5595 (__x!24695 Int)) (Lexer!5596) )
))
(declare-fun thiss!19663 () LexerInterface!5598)

(assert (=> start!349308 (= res!1507085 (is-Lexer!5596 thiss!19663))))

(assert (=> start!349308 e!2294691))

(assert (=> start!349308 true))

(declare-fun e!2294694 () Bool)

(assert (=> start!349308 e!2294694))

(declare-datatypes ((String!44530 0))(
  ( (String!44531 (value!191662 String)) )
))
(declare-fun tag!164 () String!44530)

(declare-fun inv!52961 (String!44530) Bool)

(assert (=> start!349308 (inv!52961 tag!164)))

(declare-fun b!3704655 () Bool)

(declare-fun res!1507084 () Bool)

(assert (=> b!3704655 (=> (not res!1507084) (not e!2294691))))

(declare-datatypes ((List!39573 0))(
  ( (Nil!39449) (Cons!39449 (h!44869 (_ BitVec 16)) (t!302256 List!39573)) )
))
(declare-datatypes ((TokenValue!6239 0))(
  ( (FloatLiteralValue!12478 (text!44118 List!39573)) (TokenValueExt!6238 (__x!24696 Int)) (Broken!31195 (value!191663 List!39573)) (Object!6362) (End!6239) (Def!6239) (Underscore!6239) (Match!6239) (Else!6239) (Error!6239) (Case!6239) (If!6239) (Extends!6239) (Abstract!6239) (Class!6239) (Val!6239) (DelimiterValue!12478 (del!6299 List!39573)) (KeywordValue!6245 (value!191664 List!39573)) (CommentValue!12478 (value!191665 List!39573)) (WhitespaceValue!12478 (value!191666 List!39573)) (IndentationValue!6239 (value!191667 List!39573)) (String!44532) (Int32!6239) (Broken!31196 (value!191668 List!39573)) (Boolean!6240) (Unit!57386) (OperatorValue!6242 (op!6299 List!39573)) (IdentifierValue!12478 (value!191669 List!39573)) (IdentifierValue!12479 (value!191670 List!39573)) (WhitespaceValue!12479 (value!191671 List!39573)) (True!12478) (False!12478) (Broken!31197 (value!191672 List!39573)) (Broken!31198 (value!191673 List!39573)) (True!12479) (RightBrace!6239) (RightBracket!6239) (Colon!6239) (Null!6239) (Comma!6239) (LeftBracket!6239) (False!12479) (LeftBrace!6239) (ImaginaryLiteralValue!6239 (text!44119 List!39573)) (StringLiteralValue!18717 (value!191674 List!39573)) (EOFValue!6239 (value!191675 List!39573)) (IdentValue!6239 (value!191676 List!39573)) (DelimiterValue!12479 (value!191677 List!39573)) (DedentValue!6239 (value!191678 List!39573)) (NewLineValue!6239 (value!191679 List!39573)) (IntegerValue!18717 (value!191680 (_ BitVec 32)) (text!44120 List!39573)) (IntegerValue!18718 (value!191681 Int) (text!44121 List!39573)) (Times!6239) (Or!6239) (Equal!6239) (Minus!6239) (Broken!31199 (value!191682 List!39573)) (And!6239) (Div!6239) (LessEqual!6239) (Mod!6239) (Concat!17007) (Not!6239) (Plus!6239) (SpaceValue!6239 (value!191683 List!39573)) (IntegerValue!18719 (value!191684 Int) (text!44122 List!39573)) (StringLiteralValue!18718 (text!44123 List!39573)) (FloatLiteralValue!12479 (text!44124 List!39573)) (BytesLiteralValue!6239 (value!191685 List!39573)) (CommentValue!12479 (value!191686 List!39573)) (StringLiteralValue!18719 (value!191687 List!39573)) (ErrorTokenValue!6239 (msg!6300 List!39573)) )
))
(declare-datatypes ((C!21722 0))(
  ( (C!21723 (val!12909 Int)) )
))
(declare-datatypes ((List!39574 0))(
  ( (Nil!39450) (Cons!39450 (h!44870 C!21722) (t!302257 List!39574)) )
))
(declare-datatypes ((IArray!24217 0))(
  ( (IArray!24218 (innerList!12166 List!39574)) )
))
(declare-datatypes ((Conc!12106 0))(
  ( (Node!12106 (left!30669 Conc!12106) (right!30999 Conc!12106) (csize!24442 Int) (cheight!12317 Int)) (Leaf!18722 (xs!15308 IArray!24217) (csize!24443 Int)) (Empty!12106) )
))
(declare-datatypes ((BalanceConc!23826 0))(
  ( (BalanceConc!23827 (c!639938 Conc!12106)) )
))
(declare-datatypes ((Regex!10768 0))(
  ( (ElementMatch!10768 (c!639939 C!21722)) (Concat!17008 (regOne!22048 Regex!10768) (regTwo!22048 Regex!10768)) (EmptyExpr!10768) (Star!10768 (reg!11097 Regex!10768)) (EmptyLang!10768) (Union!10768 (regOne!22049 Regex!10768) (regTwo!22049 Regex!10768)) )
))
(declare-datatypes ((TokenValueInjection!11906 0))(
  ( (TokenValueInjection!11907 (toValue!8353 Int) (toChars!8212 Int)) )
))
(declare-datatypes ((Rule!11818 0))(
  ( (Rule!11819 (regex!6009 Regex!10768) (tag!6863 String!44530) (isSeparator!6009 Bool) (transformation!6009 TokenValueInjection!11906)) )
))
(declare-datatypes ((List!39575 0))(
  ( (Nil!39451) (Cons!39451 (h!44871 Rule!11818) (t!302258 List!39575)) )
))
(declare-fun rules!2525 () List!39575)

(assert (=> b!3704655 (= res!1507084 (and (or (not (is-Cons!39451 rules!2525)) (not (= (tag!6863 (h!44871 rules!2525)) tag!164))) (is-Cons!39451 rules!2525) (not (= (tag!6863 (h!44871 rules!2525)) tag!164))))))

(declare-fun b!3704656 () Bool)

(declare-fun res!1507083 () Bool)

(assert (=> b!3704656 (=> (not res!1507083) (not e!2294691))))

(declare-fun rulesInvariant!4995 (LexerInterface!5598 List!39575) Bool)

(assert (=> b!3704656 (= res!1507083 (rulesInvariant!4995 thiss!19663 rules!2525))))

(declare-fun e!2294692 () Bool)

(declare-fun e!2294689 () Bool)

(declare-fun tp!1126602 () Bool)

(declare-fun b!3704657 () Bool)

(declare-fun inv!52964 (TokenValueInjection!11906) Bool)

(assert (=> b!3704657 (= e!2294692 (and tp!1126602 (inv!52961 (tag!6863 (h!44871 rules!2525))) (inv!52964 (transformation!6009 (h!44871 rules!2525))) e!2294689))))

(declare-fun b!3704658 () Bool)

(declare-fun tp!1126601 () Bool)

(assert (=> b!3704658 (= e!2294694 (and e!2294692 tp!1126601))))

(assert (=> b!3704659 (= e!2294689 (and tp!1126599 tp!1126600))))

(declare-fun b!3704660 () Bool)

(assert (=> b!3704660 (= e!2294691 false)))

(declare-fun lt!1296185 () Bool)

(assert (=> b!3704660 (= lt!1296185 (rulesInvariant!4995 thiss!19663 rules!2525))))

(assert (= (and start!349308 res!1507085) b!3704656))

(assert (= (and b!3704656 res!1507083) b!3704655))

(assert (= (and b!3704655 res!1507084) b!3704660))

(assert (= b!3704657 b!3704659))

(assert (= b!3704658 b!3704657))

(assert (= (and start!349308 (is-Cons!39451 rules!2525)) b!3704658))

(declare-fun m!4215285 () Bool)

(assert (=> start!349308 m!4215285))

(declare-fun m!4215287 () Bool)

(assert (=> b!3704656 m!4215287))

(declare-fun m!4215289 () Bool)

(assert (=> b!3704657 m!4215289))

(declare-fun m!4215291 () Bool)

(assert (=> b!3704657 m!4215291))

(assert (=> b!3704660 m!4215287))

(push 1)

(assert b_and!277193)

(assert (not b_next!99663))

(assert (not b!3704656))

(assert (not b!3704658))

(assert (not start!349308))

(assert (not b_next!99661))

(assert (not b!3704657))

(assert (not b!3704660))

(assert b_and!277191)

(check-sat)

(pop 1)

(push 1)

(assert b_and!277193)

(assert b_and!277191)

(assert (not b_next!99663))

(assert (not b_next!99661))

(check-sat)

(pop 1)

