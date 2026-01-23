; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397014 () Bool)

(assert start!397014)

(declare-fun b!4165673 () Bool)

(declare-fun b_free!120271 () Bool)

(declare-fun b_next!120975 () Bool)

(assert (=> b!4165673 (= b_free!120271 (not b_next!120975))))

(declare-fun tp!1272031 () Bool)

(declare-fun b_and!324885 () Bool)

(assert (=> b!4165673 (= tp!1272031 b_and!324885)))

(declare-fun b_free!120273 () Bool)

(declare-fun b_next!120977 () Bool)

(assert (=> b!4165673 (= b_free!120273 (not b_next!120977))))

(declare-fun tp!1272039 () Bool)

(declare-fun b_and!324887 () Bool)

(assert (=> b!4165673 (= tp!1272039 b_and!324887)))

(declare-fun b!4165667 () Bool)

(declare-fun b_free!120275 () Bool)

(declare-fun b_next!120979 () Bool)

(assert (=> b!4165667 (= b_free!120275 (not b_next!120979))))

(declare-fun tp!1272040 () Bool)

(declare-fun b_and!324889 () Bool)

(assert (=> b!4165667 (= tp!1272040 b_and!324889)))

(declare-fun b_free!120277 () Bool)

(declare-fun b_next!120981 () Bool)

(assert (=> b!4165667 (= b_free!120277 (not b_next!120981))))

(declare-fun tp!1272036 () Bool)

(declare-fun b_and!324891 () Bool)

(assert (=> b!4165667 (= tp!1272036 b_and!324891)))

(declare-fun b!4165670 () Bool)

(declare-fun b_free!120279 () Bool)

(declare-fun b_next!120983 () Bool)

(assert (=> b!4165670 (= b_free!120279 (not b_next!120983))))

(declare-fun tp!1272038 () Bool)

(declare-fun b_and!324893 () Bool)

(assert (=> b!4165670 (= tp!1272038 b_and!324893)))

(declare-fun b_free!120281 () Bool)

(declare-fun b_next!120985 () Bool)

(assert (=> b!4165670 (= b_free!120281 (not b_next!120985))))

(declare-fun tp!1272030 () Bool)

(declare-fun b_and!324895 () Bool)

(assert (=> b!4165670 (= tp!1272030 b_and!324895)))

(declare-fun b!4165661 () Bool)

(declare-fun e!2586050 () Bool)

(declare-fun tp_is_empty!21869 () Bool)

(declare-fun tp!1272037 () Bool)

(assert (=> b!4165661 (= e!2586050 (and tp_is_empty!21869 tp!1272037))))

(declare-fun tp!1272033 () Bool)

(declare-fun b!4165662 () Bool)

(declare-fun e!2586053 () Bool)

(declare-datatypes ((List!45727 0))(
  ( (Nil!45603) (Cons!45603 (h!51023 (_ BitVec 16)) (t!343974 List!45727)) )
))
(declare-datatypes ((C!25096 0))(
  ( (C!25097 (val!14710 Int)) )
))
(declare-datatypes ((List!45728 0))(
  ( (Nil!45604) (Cons!45604 (h!51024 C!25096) (t!343975 List!45728)) )
))
(declare-datatypes ((IArray!27523 0))(
  ( (IArray!27524 (innerList!13819 List!45728)) )
))
(declare-datatypes ((Conc!13759 0))(
  ( (Node!13759 (left!33999 Conc!13759) (right!34329 Conc!13759) (csize!27748 Int) (cheight!13970 Int)) (Leaf!21276 (xs!17065 IArray!27523) (csize!27749 Int)) (Empty!13759) )
))
(declare-datatypes ((BalanceConc!27112 0))(
  ( (BalanceConc!27113 (c!712360 Conc!13759)) )
))
(declare-datatypes ((TokenValue!7778 0))(
  ( (FloatLiteralValue!15556 (text!54891 List!45727)) (TokenValueExt!7777 (__x!27777 Int)) (Broken!38890 (value!235639 List!45727)) (Object!7901) (End!7778) (Def!7778) (Underscore!7778) (Match!7778) (Else!7778) (Error!7778) (Case!7778) (If!7778) (Extends!7778) (Abstract!7778) (Class!7778) (Val!7778) (DelimiterValue!15556 (del!7838 List!45727)) (KeywordValue!7784 (value!235640 List!45727)) (CommentValue!15556 (value!235641 List!45727)) (WhitespaceValue!15556 (value!235642 List!45727)) (IndentationValue!7778 (value!235643 List!45727)) (String!52755) (Int32!7778) (Broken!38891 (value!235644 List!45727)) (Boolean!7779) (Unit!64690) (OperatorValue!7781 (op!7838 List!45727)) (IdentifierValue!15556 (value!235645 List!45727)) (IdentifierValue!15557 (value!235646 List!45727)) (WhitespaceValue!15557 (value!235647 List!45727)) (True!15556) (False!15556) (Broken!38892 (value!235648 List!45727)) (Broken!38893 (value!235649 List!45727)) (True!15557) (RightBrace!7778) (RightBracket!7778) (Colon!7778) (Null!7778) (Comma!7778) (LeftBracket!7778) (False!15557) (LeftBrace!7778) (ImaginaryLiteralValue!7778 (text!54892 List!45727)) (StringLiteralValue!23334 (value!235650 List!45727)) (EOFValue!7778 (value!235651 List!45727)) (IdentValue!7778 (value!235652 List!45727)) (DelimiterValue!15557 (value!235653 List!45727)) (DedentValue!7778 (value!235654 List!45727)) (NewLineValue!7778 (value!235655 List!45727)) (IntegerValue!23334 (value!235656 (_ BitVec 32)) (text!54893 List!45727)) (IntegerValue!23335 (value!235657 Int) (text!54894 List!45727)) (Times!7778) (Or!7778) (Equal!7778) (Minus!7778) (Broken!38894 (value!235658 List!45727)) (And!7778) (Div!7778) (LessEqual!7778) (Mod!7778) (Concat!20231) (Not!7778) (Plus!7778) (SpaceValue!7778 (value!235659 List!45727)) (IntegerValue!23336 (value!235660 Int) (text!54895 List!45727)) (StringLiteralValue!23335 (text!54896 List!45727)) (FloatLiteralValue!15557 (text!54897 List!45727)) (BytesLiteralValue!7778 (value!235661 List!45727)) (CommentValue!15557 (value!235662 List!45727)) (StringLiteralValue!23336 (value!235663 List!45727)) (ErrorTokenValue!7778 (msg!7839 List!45727)) )
))
(declare-datatypes ((TokenValueInjection!14984 0))(
  ( (TokenValueInjection!14985 (toValue!10216 Int) (toChars!10075 Int)) )
))
(declare-datatypes ((Regex!12453 0))(
  ( (ElementMatch!12453 (c!712361 C!25096)) (Concat!20232 (regOne!25418 Regex!12453) (regTwo!25418 Regex!12453)) (EmptyExpr!12453) (Star!12453 (reg!12782 Regex!12453)) (EmptyLang!12453) (Union!12453 (regOne!25419 Regex!12453) (regTwo!25419 Regex!12453)) )
))
(declare-datatypes ((String!52756 0))(
  ( (String!52757 (value!235664 String)) )
))
(declare-datatypes ((Rule!14896 0))(
  ( (Rule!14897 (regex!7548 Regex!12453) (tag!8412 String!52756) (isSeparator!7548 Bool) (transformation!7548 TokenValueInjection!14984)) )
))
(declare-fun r!4097 () Rule!14896)

(declare-fun e!2586049 () Bool)

(declare-fun inv!60121 (String!52756) Bool)

(declare-fun inv!60123 (TokenValueInjection!14984) Bool)

(assert (=> b!4165662 (= e!2586049 (and tp!1272033 (inv!60121 (tag!8412 r!4097)) (inv!60123 (transformation!7548 r!4097)) e!2586053))))

(declare-fun b!4165663 () Bool)

(declare-fun res!1706684 () Bool)

(declare-fun e!2586044 () Bool)

(assert (=> b!4165663 (=> (not res!1706684) (not e!2586044))))

(declare-fun p!2942 () List!45728)

(declare-fun input!3316 () List!45728)

(declare-fun isPrefix!4405 (List!45728 List!45728) Bool)

(assert (=> b!4165663 (= res!1706684 (isPrefix!4405 p!2942 input!3316))))

(declare-fun b!4165664 () Bool)

(declare-fun e!2586048 () Bool)

(declare-fun tp!1272035 () Bool)

(declare-fun e!2586046 () Bool)

(declare-fun rBis!161 () Rule!14896)

(assert (=> b!4165664 (= e!2586048 (and tp!1272035 (inv!60121 (tag!8412 rBis!161)) (inv!60123 (transformation!7548 rBis!161)) e!2586046))))

(declare-fun b!4165665 () Bool)

(declare-fun e!2586051 () Bool)

(declare-fun e!2586042 () Bool)

(declare-fun tp!1272032 () Bool)

(assert (=> b!4165665 (= e!2586051 (and e!2586042 tp!1272032))))

(declare-fun tp!1272028 () Bool)

(declare-fun b!4165666 () Bool)

(declare-datatypes ((List!45729 0))(
  ( (Nil!45605) (Cons!45605 (h!51025 Rule!14896) (t!343976 List!45729)) )
))
(declare-fun rules!3820 () List!45729)

(declare-fun e!2586045 () Bool)

(assert (=> b!4165666 (= e!2586042 (and tp!1272028 (inv!60121 (tag!8412 (h!51025 rules!3820))) (inv!60123 (transformation!7548 (h!51025 rules!3820))) e!2586045))))

(declare-fun res!1706685 () Bool)

(assert (=> start!397014 (=> (not res!1706685) (not e!2586044))))

(declare-datatypes ((LexerInterface!7141 0))(
  ( (LexerInterfaceExt!7138 (__x!27778 Int)) (Lexer!7139) )
))
(declare-fun thiss!25889 () LexerInterface!7141)

(get-info :version)

(assert (=> start!397014 (= res!1706685 ((_ is Lexer!7139) thiss!25889))))

(assert (=> start!397014 e!2586044))

(declare-fun e!2586054 () Bool)

(assert (=> start!397014 e!2586054))

(assert (=> start!397014 e!2586051))

(assert (=> start!397014 e!2586050))

(declare-fun e!2586047 () Bool)

(assert (=> start!397014 e!2586047))

(assert (=> start!397014 true))

(assert (=> start!397014 e!2586048))

(assert (=> start!397014 e!2586049))

(assert (=> b!4165667 (= e!2586045 (and tp!1272040 tp!1272036))))

(declare-fun b!4165668 () Bool)

(declare-fun tp!1272034 () Bool)

(assert (=> b!4165668 (= e!2586047 (and tp_is_empty!21869 tp!1272034))))

(declare-fun b!4165669 () Bool)

(declare-fun tp!1272029 () Bool)

(assert (=> b!4165669 (= e!2586054 (and tp_is_empty!21869 tp!1272029))))

(assert (=> b!4165670 (= e!2586053 (and tp!1272038 tp!1272030))))

(declare-fun b!4165671 () Bool)

(declare-fun res!1706683 () Bool)

(assert (=> b!4165671 (=> (not res!1706683) (not e!2586044))))

(declare-fun pBis!100 () List!45728)

(assert (=> b!4165671 (= res!1706683 (isPrefix!4405 pBis!100 input!3316))))

(declare-fun b!4165672 () Bool)

(assert (=> b!4165672 (= e!2586044 false)))

(declare-fun lt!1484086 () Bool)

(declare-fun contains!9343 (List!45729 Rule!14896) Bool)

(assert (=> b!4165672 (= lt!1484086 (contains!9343 rules!3820 rBis!161))))

(assert (=> b!4165673 (= e!2586046 (and tp!1272031 tp!1272039))))

(declare-fun b!4165674 () Bool)

(declare-fun res!1706686 () Bool)

(assert (=> b!4165674 (=> (not res!1706686) (not e!2586044))))

(assert (=> b!4165674 (= res!1706686 (contains!9343 rules!3820 r!4097))))

(declare-fun b!4165675 () Bool)

(declare-fun res!1706687 () Bool)

(assert (=> b!4165675 (=> (not res!1706687) (not e!2586044))))

(declare-fun rulesInvariant!6354 (LexerInterface!7141 List!45729) Bool)

(assert (=> b!4165675 (= res!1706687 (rulesInvariant!6354 thiss!25889 rules!3820))))

(declare-fun b!4165676 () Bool)

(declare-fun res!1706688 () Bool)

(assert (=> b!4165676 (=> (not res!1706688) (not e!2586044))))

(declare-fun isEmpty!26993 (List!45729) Bool)

(assert (=> b!4165676 (= res!1706688 (not (isEmpty!26993 rules!3820)))))

(assert (= (and start!397014 res!1706685) b!4165663))

(assert (= (and b!4165663 res!1706684) b!4165671))

(assert (= (and b!4165671 res!1706683) b!4165676))

(assert (= (and b!4165676 res!1706688) b!4165675))

(assert (= (and b!4165675 res!1706687) b!4165674))

(assert (= (and b!4165674 res!1706686) b!4165672))

(assert (= (and start!397014 ((_ is Cons!45604) pBis!100)) b!4165669))

(assert (= b!4165666 b!4165667))

(assert (= b!4165665 b!4165666))

(assert (= (and start!397014 ((_ is Cons!45605) rules!3820)) b!4165665))

(assert (= (and start!397014 ((_ is Cons!45604) p!2942)) b!4165661))

(assert (= (and start!397014 ((_ is Cons!45604) input!3316)) b!4165668))

(assert (= b!4165664 b!4165673))

(assert (= start!397014 b!4165664))

(assert (= b!4165662 b!4165670))

(assert (= start!397014 b!4165662))

(declare-fun m!4757599 () Bool)

(assert (=> b!4165663 m!4757599))

(declare-fun m!4757601 () Bool)

(assert (=> b!4165662 m!4757601))

(declare-fun m!4757603 () Bool)

(assert (=> b!4165662 m!4757603))

(declare-fun m!4757605 () Bool)

(assert (=> b!4165664 m!4757605))

(declare-fun m!4757607 () Bool)

(assert (=> b!4165664 m!4757607))

(declare-fun m!4757609 () Bool)

(assert (=> b!4165675 m!4757609))

(declare-fun m!4757611 () Bool)

(assert (=> b!4165672 m!4757611))

(declare-fun m!4757613 () Bool)

(assert (=> b!4165666 m!4757613))

(declare-fun m!4757615 () Bool)

(assert (=> b!4165666 m!4757615))

(declare-fun m!4757617 () Bool)

(assert (=> b!4165671 m!4757617))

(declare-fun m!4757619 () Bool)

(assert (=> b!4165676 m!4757619))

(declare-fun m!4757621 () Bool)

(assert (=> b!4165674 m!4757621))

(check-sat (not b!4165662) b_and!324885 (not b!4165671) (not b!4165674) b_and!324891 (not b_next!120985) (not b_next!120983) tp_is_empty!21869 b_and!324889 (not b!4165666) b_and!324895 (not b!4165675) (not b_next!120977) b_and!324887 (not b_next!120981) (not b!4165665) (not b!4165663) (not b_next!120979) (not b!4165672) (not b!4165676) b_and!324893 (not b_next!120975) (not b!4165664) (not b!4165669) (not b!4165661) (not b!4165668))
(check-sat b_and!324885 b_and!324891 (not b_next!120981) (not b_next!120979) (not b_next!120985) (not b_next!120983) b_and!324889 b_and!324895 (not b_next!120977) b_and!324887 b_and!324893 (not b_next!120975))
