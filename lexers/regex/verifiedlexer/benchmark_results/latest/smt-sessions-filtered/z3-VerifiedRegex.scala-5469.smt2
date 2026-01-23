; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277342 () Bool)

(assert start!277342)

(declare-fun b!2847632 () Bool)

(declare-fun b_free!82753 () Bool)

(declare-fun b_next!83457 () Bool)

(assert (=> b!2847632 (= b_free!82753 (not b_next!83457))))

(declare-fun tp!913904 () Bool)

(declare-fun b_and!208995 () Bool)

(assert (=> b!2847632 (= tp!913904 b_and!208995)))

(declare-fun b_free!82755 () Bool)

(declare-fun b_next!83459 () Bool)

(assert (=> b!2847632 (= b_free!82755 (not b_next!83459))))

(declare-fun tp!913903 () Bool)

(declare-fun b_and!208997 () Bool)

(assert (=> b!2847632 (= tp!913903 b_and!208997)))

(declare-fun tp!913905 () Bool)

(declare-fun e!1804434 () Bool)

(declare-fun b!2847629 () Bool)

(declare-fun e!1804435 () Bool)

(declare-datatypes ((List!33942 0))(
  ( (Nil!33818) (Cons!33818 (h!39238 (_ BitVec 16)) (t!232967 List!33942)) )
))
(declare-datatypes ((TokenValue!5308 0))(
  ( (FloatLiteralValue!10616 (text!37601 List!33942)) (TokenValueExt!5307 (__x!22413 Int)) (Broken!26540 (value!163130 List!33942)) (Object!5431) (End!5308) (Def!5308) (Underscore!5308) (Match!5308) (Else!5308) (Error!5308) (Case!5308) (If!5308) (Extends!5308) (Abstract!5308) (Class!5308) (Val!5308) (DelimiterValue!10616 (del!5368 List!33942)) (KeywordValue!5314 (value!163131 List!33942)) (CommentValue!10616 (value!163132 List!33942)) (WhitespaceValue!10616 (value!163133 List!33942)) (IndentationValue!5308 (value!163134 List!33942)) (String!37153) (Int32!5308) (Broken!26541 (value!163135 List!33942)) (Boolean!5309) (Unit!47574) (OperatorValue!5311 (op!5368 List!33942)) (IdentifierValue!10616 (value!163136 List!33942)) (IdentifierValue!10617 (value!163137 List!33942)) (WhitespaceValue!10617 (value!163138 List!33942)) (True!10616) (False!10616) (Broken!26542 (value!163139 List!33942)) (Broken!26543 (value!163140 List!33942)) (True!10617) (RightBrace!5308) (RightBracket!5308) (Colon!5308) (Null!5308) (Comma!5308) (LeftBracket!5308) (False!10617) (LeftBrace!5308) (ImaginaryLiteralValue!5308 (text!37602 List!33942)) (StringLiteralValue!15924 (value!163141 List!33942)) (EOFValue!5308 (value!163142 List!33942)) (IdentValue!5308 (value!163143 List!33942)) (DelimiterValue!10617 (value!163144 List!33942)) (DedentValue!5308 (value!163145 List!33942)) (NewLineValue!5308 (value!163146 List!33942)) (IntegerValue!15924 (value!163147 (_ BitVec 32)) (text!37603 List!33942)) (IntegerValue!15925 (value!163148 Int) (text!37604 List!33942)) (Times!5308) (Or!5308) (Equal!5308) (Minus!5308) (Broken!26544 (value!163149 List!33942)) (And!5308) (Div!5308) (LessEqual!5308) (Mod!5308) (Concat!13801) (Not!5308) (Plus!5308) (SpaceValue!5308 (value!163150 List!33942)) (IntegerValue!15926 (value!163151 Int) (text!37605 List!33942)) (StringLiteralValue!15925 (text!37606 List!33942)) (FloatLiteralValue!10617 (text!37607 List!33942)) (BytesLiteralValue!5308 (value!163152 List!33942)) (CommentValue!10617 (value!163153 List!33942)) (StringLiteralValue!15926 (value!163154 List!33942)) (ErrorTokenValue!5308 (msg!5369 List!33942)) )
))
(declare-datatypes ((C!17168 0))(
  ( (C!17169 (val!10618 Int)) )
))
(declare-datatypes ((List!33943 0))(
  ( (Nil!33819) (Cons!33819 (h!39239 C!17168) (t!232968 List!33943)) )
))
(declare-datatypes ((IArray!20977 0))(
  ( (IArray!20978 (innerList!10546 List!33943)) )
))
(declare-datatypes ((Regex!8493 0))(
  ( (ElementMatch!8493 (c!459456 C!17168)) (Concat!13802 (regOne!17498 Regex!8493) (regTwo!17498 Regex!8493)) (EmptyExpr!8493) (Star!8493 (reg!8822 Regex!8493)) (EmptyLang!8493) (Union!8493 (regOne!17499 Regex!8493) (regTwo!17499 Regex!8493)) )
))
(declare-datatypes ((Conc!10486 0))(
  ( (Node!10486 (left!25455 Conc!10486) (right!25785 Conc!10486) (csize!21202 Int) (cheight!10697 Int)) (Leaf!15956 (xs!13604 IArray!20977) (csize!21203 Int)) (Empty!10486) )
))
(declare-datatypes ((BalanceConc!20610 0))(
  ( (BalanceConc!20611 (c!459457 Conc!10486)) )
))
(declare-datatypes ((String!37154 0))(
  ( (String!37155 (value!163155 String)) )
))
(declare-datatypes ((TokenValueInjection!10044 0))(
  ( (TokenValueInjection!10045 (toValue!7134 Int) (toChars!6993 Int)) )
))
(declare-datatypes ((Rule!9956 0))(
  ( (Rule!9957 (regex!5078 Regex!8493) (tag!5582 String!37154) (isSeparator!5078 Bool) (transformation!5078 TokenValueInjection!10044)) )
))
(declare-datatypes ((List!33944 0))(
  ( (Nil!33820) (Cons!33820 (h!39240 Rule!9956) (t!232969 List!33944)) )
))
(declare-fun rules!1039 () List!33944)

(declare-fun inv!45855 (String!37154) Bool)

(declare-fun inv!45857 (TokenValueInjection!10044) Bool)

(assert (=> b!2847629 (= e!1804434 (and tp!913905 (inv!45855 (tag!5582 (h!39240 rules!1039))) (inv!45857 (transformation!5078 (h!39240 rules!1039))) e!1804435))))

(declare-fun b!2847630 () Bool)

(declare-fun e!1804438 () Bool)

(declare-fun tp!913906 () Bool)

(assert (=> b!2847630 (= e!1804438 (and e!1804434 tp!913906))))

(declare-fun res!1183903 () Bool)

(declare-fun e!1804437 () Bool)

(assert (=> start!277342 (=> (not res!1183903) (not e!1804437))))

(declare-datatypes ((LexerInterface!4667 0))(
  ( (LexerInterfaceExt!4664 (__x!22414 Int)) (Lexer!4665) )
))
(declare-fun thiss!10983 () LexerInterface!4667)

(get-info :version)

(assert (=> start!277342 (= res!1183903 ((_ is Lexer!4665) thiss!10983))))

(assert (=> start!277342 e!1804437))

(assert (=> start!277342 true))

(assert (=> start!277342 e!1804438))

(declare-fun b!2847631 () Bool)

(declare-fun res!1183904 () Bool)

(assert (=> b!2847631 (=> (not res!1183904) (not e!1804437))))

(declare-fun rulesValidInductive!1743 (LexerInterface!4667 List!33944) Bool)

(assert (=> b!2847631 (= res!1183904 (rulesValidInductive!1743 thiss!10983 rules!1039))))

(assert (=> b!2847632 (= e!1804435 (and tp!913904 tp!913903))))

(declare-fun b!2847633 () Bool)

(assert (=> b!2847633 (= e!1804437 false)))

(assert (= (and start!277342 res!1183903) b!2847631))

(assert (= (and b!2847631 res!1183904) b!2847633))

(assert (= b!2847629 b!2847632))

(assert (= b!2847630 b!2847629))

(assert (= (and start!277342 ((_ is Cons!33820) rules!1039)) b!2847630))

(declare-fun m!3275055 () Bool)

(assert (=> b!2847629 m!3275055))

(declare-fun m!3275057 () Bool)

(assert (=> b!2847629 m!3275057))

(declare-fun m!3275059 () Bool)

(assert (=> b!2847631 m!3275059))

(check-sat (not b!2847630) (not b!2847631) (not b_next!83457) b_and!208995 (not b_next!83459) b_and!208997 (not b!2847629))
(check-sat b_and!208997 b_and!208995 (not b_next!83457) (not b_next!83459))
