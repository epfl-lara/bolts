; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405226 () Bool)

(assert start!405226)

(declare-fun b!4234879 () Bool)

(declare-fun b_free!125023 () Bool)

(declare-fun b_next!125727 () Bool)

(assert (=> b!4234879 (= b_free!125023 (not b_next!125727))))

(declare-fun tp!1296685 () Bool)

(declare-fun b_and!334373 () Bool)

(assert (=> b!4234879 (= tp!1296685 b_and!334373)))

(declare-fun b_free!125025 () Bool)

(declare-fun b_next!125729 () Bool)

(assert (=> b!4234879 (= b_free!125025 (not b_next!125729))))

(declare-fun tp!1296686 () Bool)

(declare-fun b_and!334375 () Bool)

(assert (=> b!4234879 (= tp!1296686 b_and!334375)))

(declare-fun e!2629500 () Bool)

(declare-fun tp!1296683 () Bool)

(declare-datatypes ((List!46893 0))(
  ( (Nil!46769) (Cons!46769 (h!52189 (_ BitVec 16)) (t!349596 List!46893)) )
))
(declare-datatypes ((TokenValue!8130 0))(
  ( (FloatLiteralValue!16260 (text!57355 List!46893)) (TokenValueExt!8129 (__x!28483 Int)) (Broken!40650 (value!245661 List!46893)) (Object!8253) (End!8130) (Def!8130) (Underscore!8130) (Match!8130) (Else!8130) (Error!8130) (Case!8130) (If!8130) (Extends!8130) (Abstract!8130) (Class!8130) (Val!8130) (DelimiterValue!16260 (del!8190 List!46893)) (KeywordValue!8136 (value!245662 List!46893)) (CommentValue!16260 (value!245663 List!46893)) (WhitespaceValue!16260 (value!245664 List!46893)) (IndentationValue!8130 (value!245665 List!46893)) (String!54579) (Int32!8130) (Broken!40651 (value!245666 List!46893)) (Boolean!8131) (Unit!65912) (OperatorValue!8133 (op!8190 List!46893)) (IdentifierValue!16260 (value!245667 List!46893)) (IdentifierValue!16261 (value!245668 List!46893)) (WhitespaceValue!16261 (value!245669 List!46893)) (True!16260) (False!16260) (Broken!40652 (value!245670 List!46893)) (Broken!40653 (value!245671 List!46893)) (True!16261) (RightBrace!8130) (RightBracket!8130) (Colon!8130) (Null!8130) (Comma!8130) (LeftBracket!8130) (False!16261) (LeftBrace!8130) (ImaginaryLiteralValue!8130 (text!57356 List!46893)) (StringLiteralValue!24390 (value!245672 List!46893)) (EOFValue!8130 (value!245673 List!46893)) (IdentValue!8130 (value!245674 List!46893)) (DelimiterValue!16261 (value!245675 List!46893)) (DedentValue!8130 (value!245676 List!46893)) (NewLineValue!8130 (value!245677 List!46893)) (IntegerValue!24390 (value!245678 (_ BitVec 32)) (text!57357 List!46893)) (IntegerValue!24391 (value!245679 Int) (text!57358 List!46893)) (Times!8130) (Or!8130) (Equal!8130) (Minus!8130) (Broken!40654 (value!245680 List!46893)) (And!8130) (Div!8130) (LessEqual!8130) (Mod!8130) (Concat!20935) (Not!8130) (Plus!8130) (SpaceValue!8130 (value!245681 List!46893)) (IntegerValue!24392 (value!245682 Int) (text!57359 List!46893)) (StringLiteralValue!24391 (text!57360 List!46893)) (FloatLiteralValue!16261 (text!57361 List!46893)) (BytesLiteralValue!8130 (value!245683 List!46893)) (CommentValue!16261 (value!245684 List!46893)) (StringLiteralValue!24392 (value!245685 List!46893)) (ErrorTokenValue!8130 (msg!8191 List!46893)) )
))
(declare-datatypes ((C!25808 0))(
  ( (C!25809 (val!15094 Int)) )
))
(declare-datatypes ((Regex!12805 0))(
  ( (ElementMatch!12805 (c!719862 C!25808)) (Concat!20936 (regOne!26122 Regex!12805) (regTwo!26122 Regex!12805)) (EmptyExpr!12805) (Star!12805 (reg!13134 Regex!12805)) (EmptyLang!12805) (Union!12805 (regOne!26123 Regex!12805) (regTwo!26123 Regex!12805)) )
))
(declare-datatypes ((List!46894 0))(
  ( (Nil!46770) (Cons!46770 (h!52190 C!25808) (t!349597 List!46894)) )
))
(declare-datatypes ((IArray!28227 0))(
  ( (IArray!28228 (innerList!14171 List!46894)) )
))
(declare-datatypes ((Conc!14111 0))(
  ( (Node!14111 (left!34791 Conc!14111) (right!35121 Conc!14111) (csize!28452 Int) (cheight!14322 Int)) (Leaf!21820 (xs!17417 IArray!28227) (csize!28453 Int)) (Empty!14111) )
))
(declare-datatypes ((BalanceConc!27816 0))(
  ( (BalanceConc!27817 (c!719863 Conc!14111)) )
))
(declare-datatypes ((TokenValueInjection!15688 0))(
  ( (TokenValueInjection!15689 (toValue!10640 Int) (toChars!10499 Int)) )
))
(declare-datatypes ((String!54580 0))(
  ( (String!54581 (value!245686 String)) )
))
(declare-datatypes ((Rule!15600 0))(
  ( (Rule!15601 (regex!7900 Regex!12805) (tag!8764 String!54580) (isSeparator!7900 Bool) (transformation!7900 TokenValueInjection!15688)) )
))
(declare-datatypes ((List!46895 0))(
  ( (Nil!46771) (Cons!46771 (h!52191 Rule!15600) (t!349598 List!46895)) )
))
(declare-fun rules!2932 () List!46895)

(declare-fun b!4234876 () Bool)

(declare-fun e!2629495 () Bool)

(declare-fun inv!61496 (String!54580) Bool)

(declare-fun inv!61498 (TokenValueInjection!15688) Bool)

(assert (=> b!4234876 (= e!2629500 (and tp!1296683 (inv!61496 (tag!8764 (h!52191 rules!2932))) (inv!61498 (transformation!7900 (h!52191 rules!2932))) e!2629495))))

(declare-fun b!4234877 () Bool)

(declare-fun res!1741819 () Bool)

(declare-fun e!2629498 () Bool)

(assert (=> b!4234877 (=> (not res!1741819) (not e!2629498))))

(declare-datatypes ((LexerInterface!7495 0))(
  ( (LexerInterfaceExt!7492 (__x!28484 Int)) (Lexer!7493) )
))
(declare-fun thiss!21540 () LexerInterface!7495)

(declare-fun rulesInvariant!6606 (LexerInterface!7495 List!46895) Bool)

(assert (=> b!4234877 (= res!1741819 (rulesInvariant!6606 thiss!21540 rules!2932))))

(declare-fun b!4234878 () Bool)

(declare-fun e!2629499 () Bool)

(declare-fun tp_is_empty!22601 () Bool)

(declare-fun tp!1296687 () Bool)

(assert (=> b!4234878 (= e!2629499 (and tp_is_empty!22601 tp!1296687))))

(assert (=> b!4234879 (= e!2629495 (and tp!1296685 tp!1296686))))

(declare-fun b!4234880 () Bool)

(declare-fun res!1741820 () Bool)

(assert (=> b!4234880 (=> (not res!1741820) (not e!2629498))))

(declare-fun isEmpty!27630 (List!46895) Bool)

(assert (=> b!4234880 (= res!1741820 (not (isEmpty!27630 rules!2932)))))

(declare-fun b!4234881 () Bool)

(declare-fun res!1741818 () Bool)

(assert (=> b!4234881 (=> (not res!1741818) (not e!2629498))))

(declare-fun longerInput!51 () List!46894)

(declare-fun isEmpty!27631 (List!46894) Bool)

(assert (=> b!4234881 (= res!1741818 (not (isEmpty!27631 longerInput!51)))))

(declare-fun res!1741817 () Bool)

(assert (=> start!405226 (=> (not res!1741817) (not e!2629498))))

(get-info :version)

(assert (=> start!405226 (= res!1741817 ((_ is Lexer!7493) thiss!21540))))

(assert (=> start!405226 e!2629498))

(assert (=> start!405226 true))

(declare-fun e!2629494 () Bool)

(assert (=> start!405226 e!2629494))

(declare-fun e!2629496 () Bool)

(assert (=> start!405226 e!2629496))

(assert (=> start!405226 e!2629499))

(declare-fun b!4234882 () Bool)

(assert (=> b!4234882 (= e!2629498 false)))

(declare-fun lt!1505686 () Int)

(declare-fun shorterInput!51 () List!46894)

(declare-fun size!34269 (List!46894) Int)

(assert (=> b!4234882 (= lt!1505686 (size!34269 shorterInput!51))))

(declare-fun lt!1505685 () Int)

(assert (=> b!4234882 (= lt!1505685 (size!34269 longerInput!51))))

(declare-fun b!4234883 () Bool)

(declare-fun tp!1296684 () Bool)

(assert (=> b!4234883 (= e!2629494 (and e!2629500 tp!1296684))))

(declare-fun b!4234884 () Bool)

(declare-fun tp!1296688 () Bool)

(assert (=> b!4234884 (= e!2629496 (and tp_is_empty!22601 tp!1296688))))

(assert (= (and start!405226 res!1741817) b!4234880))

(assert (= (and b!4234880 res!1741820) b!4234877))

(assert (= (and b!4234877 res!1741819) b!4234881))

(assert (= (and b!4234881 res!1741818) b!4234882))

(assert (= b!4234876 b!4234879))

(assert (= b!4234883 b!4234876))

(assert (= (and start!405226 ((_ is Cons!46771) rules!2932)) b!4234883))

(assert (= (and start!405226 ((_ is Cons!46770) longerInput!51)) b!4234884))

(assert (= (and start!405226 ((_ is Cons!46770) shorterInput!51)) b!4234878))

(declare-fun m!4820857 () Bool)

(assert (=> b!4234881 m!4820857))

(declare-fun m!4820859 () Bool)

(assert (=> b!4234882 m!4820859))

(declare-fun m!4820861 () Bool)

(assert (=> b!4234882 m!4820861))

(declare-fun m!4820863 () Bool)

(assert (=> b!4234877 m!4820863))

(declare-fun m!4820865 () Bool)

(assert (=> b!4234876 m!4820865))

(declare-fun m!4820867 () Bool)

(assert (=> b!4234876 m!4820867))

(declare-fun m!4820869 () Bool)

(assert (=> b!4234880 m!4820869))

(check-sat tp_is_empty!22601 (not b_next!125729) b_and!334373 (not b!4234884) (not b!4234876) (not b!4234882) (not b!4234881) b_and!334375 (not b_next!125727) (not b!4234883) (not b!4234878) (not b!4234880) (not b!4234877))
(check-sat b_and!334375 b_and!334373 (not b_next!125729) (not b_next!125727))
