; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352960 () Bool)

(assert start!352960)

(declare-fun b!3759856 () Bool)

(declare-fun b_free!100593 () Bool)

(declare-fun b_next!101297 () Bool)

(assert (=> b!3759856 (= b_free!100593 (not b_next!101297))))

(declare-fun tp!1148642 () Bool)

(declare-fun b_and!279203 () Bool)

(assert (=> b!3759856 (= tp!1148642 b_and!279203)))

(declare-fun b_free!100595 () Bool)

(declare-fun b_next!101299 () Bool)

(assert (=> b!3759856 (= b_free!100595 (not b_next!101299))))

(declare-fun tp!1148648 () Bool)

(declare-fun b_and!279205 () Bool)

(assert (=> b!3759856 (= tp!1148648 b_and!279205)))

(declare-fun b!3759857 () Bool)

(declare-fun b_free!100597 () Bool)

(declare-fun b_next!101301 () Bool)

(assert (=> b!3759857 (= b_free!100597 (not b_next!101301))))

(declare-fun tp!1148647 () Bool)

(declare-fun b_and!279207 () Bool)

(assert (=> b!3759857 (= tp!1148647 b_and!279207)))

(declare-fun b_free!100599 () Bool)

(declare-fun b_next!101303 () Bool)

(assert (=> b!3759857 (= b_free!100599 (not b_next!101303))))

(declare-fun tp!1148641 () Bool)

(declare-fun b_and!279209 () Bool)

(assert (=> b!3759857 (= tp!1148641 b_and!279209)))

(declare-fun b!3759851 () Bool)

(declare-datatypes ((List!40185 0))(
  ( (Nil!40061) (Cons!40061 (h!45481 (_ BitVec 16)) (t!303738 List!40185)) )
))
(declare-datatypes ((TokenValue!6364 0))(
  ( (FloatLiteralValue!12728 (text!44993 List!40185)) (TokenValueExt!6363 (__x!24945 Int)) (Broken!31820 (value!195382 List!40185)) (Object!6487) (End!6364) (Def!6364) (Underscore!6364) (Match!6364) (Else!6364) (Error!6364) (Case!6364) (If!6364) (Extends!6364) (Abstract!6364) (Class!6364) (Val!6364) (DelimiterValue!12728 (del!6424 List!40185)) (KeywordValue!6370 (value!195383 List!40185)) (CommentValue!12728 (value!195384 List!40185)) (WhitespaceValue!12728 (value!195385 List!40185)) (IndentationValue!6364 (value!195386 List!40185)) (String!45477) (Int32!6364) (Broken!31821 (value!195387 List!40185)) (Boolean!6365) (Unit!57787) (OperatorValue!6367 (op!6424 List!40185)) (IdentifierValue!12728 (value!195388 List!40185)) (IdentifierValue!12729 (value!195389 List!40185)) (WhitespaceValue!12729 (value!195390 List!40185)) (True!12728) (False!12728) (Broken!31822 (value!195391 List!40185)) (Broken!31823 (value!195392 List!40185)) (True!12729) (RightBrace!6364) (RightBracket!6364) (Colon!6364) (Null!6364) (Comma!6364) (LeftBracket!6364) (False!12729) (LeftBrace!6364) (ImaginaryLiteralValue!6364 (text!44994 List!40185)) (StringLiteralValue!19092 (value!195393 List!40185)) (EOFValue!6364 (value!195394 List!40185)) (IdentValue!6364 (value!195395 List!40185)) (DelimiterValue!12729 (value!195396 List!40185)) (DedentValue!6364 (value!195397 List!40185)) (NewLineValue!6364 (value!195398 List!40185)) (IntegerValue!19092 (value!195399 (_ BitVec 32)) (text!44995 List!40185)) (IntegerValue!19093 (value!195400 Int) (text!44996 List!40185)) (Times!6364) (Or!6364) (Equal!6364) (Minus!6364) (Broken!31824 (value!195401 List!40185)) (And!6364) (Div!6364) (LessEqual!6364) (Mod!6364) (Concat!17403) (Not!6364) (Plus!6364) (SpaceValue!6364 (value!195402 List!40185)) (IntegerValue!19094 (value!195403 Int) (text!44997 List!40185)) (StringLiteralValue!19093 (text!44998 List!40185)) (FloatLiteralValue!12729 (text!44999 List!40185)) (BytesLiteralValue!6364 (value!195404 List!40185)) (CommentValue!12729 (value!195405 List!40185)) (StringLiteralValue!19094 (value!195406 List!40185)) (ErrorTokenValue!6364 (msg!6425 List!40185)) )
))
(declare-datatypes ((C!22264 0))(
  ( (C!22265 (val!13196 Int)) )
))
(declare-datatypes ((List!40186 0))(
  ( (Nil!40062) (Cons!40062 (h!45482 C!22264) (t!303739 List!40186)) )
))
(declare-datatypes ((IArray!24539 0))(
  ( (IArray!24540 (innerList!12327 List!40186)) )
))
(declare-datatypes ((Conc!12267 0))(
  ( (Node!12267 (left!31025 Conc!12267) (right!31355 Conc!12267) (csize!24764 Int) (cheight!12478 Int)) (Leaf!19026 (xs!15473 IArray!24539) (csize!24765 Int)) (Empty!12267) )
))
(declare-datatypes ((BalanceConc!24128 0))(
  ( (BalanceConc!24129 (c!651062 Conc!12267)) )
))
(declare-datatypes ((Regex!11039 0))(
  ( (ElementMatch!11039 (c!651063 C!22264)) (Concat!17404 (regOne!22590 Regex!11039) (regTwo!22590 Regex!11039)) (EmptyExpr!11039) (Star!11039 (reg!11368 Regex!11039)) (EmptyLang!11039) (Union!11039 (regOne!22591 Regex!11039) (regTwo!22591 Regex!11039)) )
))
(declare-datatypes ((String!45478 0))(
  ( (String!45479 (value!195407 String)) )
))
(declare-datatypes ((TokenValueInjection!12156 0))(
  ( (TokenValueInjection!12157 (toValue!8490 Int) (toChars!8349 Int)) )
))
(declare-datatypes ((Rule!12068 0))(
  ( (Rule!12069 (regex!6134 Regex!11039) (tag!6994 String!45478) (isSeparator!6134 Bool) (transformation!6134 TokenValueInjection!12156)) )
))
(declare-datatypes ((Token!11406 0))(
  ( (Token!11407 (value!195408 TokenValue!6364) (rule!8898 Rule!12068) (size!30158 Int) (originalCharacters!6734 List!40186)) )
))
(declare-datatypes ((List!40187 0))(
  ( (Nil!40063) (Cons!40063 (h!45483 Token!11406) (t!303740 List!40187)) )
))
(declare-fun l!4295 () List!40187)

(declare-fun e!2325140 () Bool)

(declare-fun tp!1148640 () Bool)

(declare-fun e!2325150 () Bool)

(declare-fun inv!53719 (String!45478) Bool)

(declare-fun inv!53722 (TokenValueInjection!12156) Bool)

(assert (=> b!3759851 (= e!2325140 (and tp!1148640 (inv!53719 (tag!6994 (rule!8898 (h!45483 l!4295)))) (inv!53722 (transformation!6134 (rule!8898 (h!45483 l!4295)))) e!2325150))))

(declare-fun tp!1148646 () Bool)

(declare-fun e!2325143 () Bool)

(declare-fun b!3759852 () Bool)

(declare-fun inv!21 (TokenValue!6364) Bool)

(assert (=> b!3759852 (= e!2325143 (and (inv!21 (value!195408 (h!45483 l!4295))) e!2325140 tp!1148646))))

(declare-fun res!1522683 () Bool)

(declare-fun e!2325144 () Bool)

(assert (=> start!352960 (=> (not res!1522683) (not e!2325144))))

(declare-datatypes ((LexerInterface!5723 0))(
  ( (LexerInterfaceExt!5720 (__x!24946 Int)) (Lexer!5721) )
))
(declare-fun thiss!13942 () LexerInterface!5723)

(declare-fun separatorToken!124 () Token!11406)

(get-info :version)

(assert (=> start!352960 (= res!1522683 (and ((_ is Lexer!5721) thiss!13942) (isSeparator!6134 (rule!8898 separatorToken!124)) ((_ is Cons!40063) l!4295)))))

(assert (=> start!352960 e!2325144))

(assert (=> start!352960 true))

(declare-fun e!2325149 () Bool)

(declare-fun inv!53723 (Token!11406) Bool)

(assert (=> start!352960 (and (inv!53723 separatorToken!124) e!2325149)))

(declare-fun e!2325145 () Bool)

(assert (=> start!352960 e!2325145))

(declare-fun b!3759853 () Bool)

(declare-fun tp!1148644 () Bool)

(assert (=> b!3759853 (= e!2325145 (and (inv!53723 (h!45483 l!4295)) e!2325143 tp!1148644))))

(declare-fun tp!1148643 () Bool)

(declare-fun b!3759854 () Bool)

(declare-fun e!2325142 () Bool)

(assert (=> b!3759854 (= e!2325149 (and (inv!21 (value!195408 separatorToken!124)) e!2325142 tp!1148643))))

(declare-fun b!3759855 () Bool)

(declare-fun tp!1148645 () Bool)

(declare-fun e!2325141 () Bool)

(assert (=> b!3759855 (= e!2325142 (and tp!1148645 (inv!53719 (tag!6994 (rule!8898 separatorToken!124))) (inv!53722 (transformation!6134 (rule!8898 separatorToken!124))) e!2325141))))

(assert (=> b!3759856 (= e!2325150 (and tp!1148642 tp!1148648))))

(assert (=> b!3759857 (= e!2325141 (and tp!1148647 tp!1148641))))

(declare-fun b!3759858 () Bool)

(assert (=> b!3759858 (= e!2325144 false)))

(declare-fun lt!1301399 () List!40186)

(declare-fun ++!9931 (List!40186 List!40186) List!40186)

(declare-fun list!14786 (BalanceConc!24128) List!40186)

(declare-fun charsOf!3987 (Token!11406) BalanceConc!24128)

(assert (=> b!3759858 (= lt!1301399 (++!9931 (list!14786 (charsOf!3987 (h!45483 l!4295))) (list!14786 (charsOf!3987 separatorToken!124))))))

(assert (= (and start!352960 res!1522683) b!3759858))

(assert (= b!3759855 b!3759857))

(assert (= b!3759854 b!3759855))

(assert (= start!352960 b!3759854))

(assert (= b!3759851 b!3759856))

(assert (= b!3759852 b!3759851))

(assert (= b!3759853 b!3759852))

(assert (= (and start!352960 ((_ is Cons!40063) l!4295)) b!3759853))

(declare-fun m!4253595 () Bool)

(assert (=> b!3759858 m!4253595))

(declare-fun m!4253597 () Bool)

(assert (=> b!3759858 m!4253597))

(assert (=> b!3759858 m!4253595))

(declare-fun m!4253599 () Bool)

(assert (=> b!3759858 m!4253599))

(declare-fun m!4253601 () Bool)

(assert (=> b!3759858 m!4253601))

(assert (=> b!3759858 m!4253597))

(declare-fun m!4253603 () Bool)

(assert (=> b!3759858 m!4253603))

(assert (=> b!3759858 m!4253599))

(assert (=> b!3759858 m!4253601))

(declare-fun m!4253605 () Bool)

(assert (=> b!3759855 m!4253605))

(declare-fun m!4253607 () Bool)

(assert (=> b!3759855 m!4253607))

(declare-fun m!4253609 () Bool)

(assert (=> b!3759854 m!4253609))

(declare-fun m!4253611 () Bool)

(assert (=> b!3759851 m!4253611))

(declare-fun m!4253613 () Bool)

(assert (=> b!3759851 m!4253613))

(declare-fun m!4253615 () Bool)

(assert (=> b!3759852 m!4253615))

(declare-fun m!4253617 () Bool)

(assert (=> b!3759853 m!4253617))

(declare-fun m!4253619 () Bool)

(assert (=> start!352960 m!4253619))

(check-sat b_and!279207 (not b_next!101299) b_and!279203 (not b!3759852) (not b!3759854) (not start!352960) (not b_next!101301) (not b_next!101303) (not b_next!101297) (not b!3759855) (not b!3759851) b_and!279205 b_and!279209 (not b!3759858) (not b!3759853))
(check-sat b_and!279207 (not b_next!101299) b_and!279203 (not b_next!101297) (not b_next!101301) (not b_next!101303) b_and!279205 b_and!279209)
