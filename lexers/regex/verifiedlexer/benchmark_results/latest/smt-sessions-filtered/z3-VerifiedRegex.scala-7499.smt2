; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396538 () Bool)

(assert start!396538)

(declare-fun b!4161406 () Bool)

(declare-fun b_free!119839 () Bool)

(declare-fun b_next!120543 () Bool)

(assert (=> b!4161406 (= b_free!119839 (not b_next!120543))))

(declare-fun tp!1270134 () Bool)

(declare-fun b_and!324201 () Bool)

(assert (=> b!4161406 (= tp!1270134 b_and!324201)))

(declare-fun b_free!119841 () Bool)

(declare-fun b_next!120545 () Bool)

(assert (=> b!4161406 (= b_free!119841 (not b_next!120545))))

(declare-fun tp!1270132 () Bool)

(declare-fun b_and!324203 () Bool)

(assert (=> b!4161406 (= tp!1270132 b_and!324203)))

(declare-fun b!4161401 () Bool)

(declare-fun b_free!119843 () Bool)

(declare-fun b_next!120547 () Bool)

(assert (=> b!4161401 (= b_free!119843 (not b_next!120547))))

(declare-fun tp!1270131 () Bool)

(declare-fun b_and!324205 () Bool)

(assert (=> b!4161401 (= tp!1270131 b_and!324205)))

(declare-fun b_free!119845 () Bool)

(declare-fun b_next!120549 () Bool)

(assert (=> b!4161401 (= b_free!119845 (not b_next!120549))))

(declare-fun tp!1270127 () Bool)

(declare-fun b_and!324207 () Bool)

(assert (=> b!4161401 (= tp!1270127 b_and!324207)))

(declare-fun b!4161399 () Bool)

(declare-fun b_free!119847 () Bool)

(declare-fun b_next!120551 () Bool)

(assert (=> b!4161399 (= b_free!119847 (not b_next!120551))))

(declare-fun tp!1270133 () Bool)

(declare-fun b_and!324209 () Bool)

(assert (=> b!4161399 (= tp!1270133 b_and!324209)))

(declare-fun b_free!119849 () Bool)

(declare-fun b_next!120553 () Bool)

(assert (=> b!4161399 (= b_free!119849 (not b_next!120553))))

(declare-fun tp!1270126 () Bool)

(declare-fun b_and!324211 () Bool)

(assert (=> b!4161399 (= tp!1270126 b_and!324211)))

(declare-fun b!4161397 () Bool)

(declare-fun res!1704686 () Bool)

(declare-fun e!2583116 () Bool)

(assert (=> b!4161397 (=> (not res!1704686) (not e!2583116))))

(declare-datatypes ((C!25028 0))(
  ( (C!25029 (val!14676 Int)) )
))
(declare-datatypes ((Regex!12421 0))(
  ( (ElementMatch!12421 (c!711936 C!25028)) (Concat!20167 (regOne!25354 Regex!12421) (regTwo!25354 Regex!12421)) (EmptyExpr!12421) (Star!12421 (reg!12750 Regex!12421)) (EmptyLang!12421) (Union!12421 (regOne!25355 Regex!12421) (regTwo!25355 Regex!12421)) )
))
(declare-datatypes ((String!52591 0))(
  ( (String!52592 (value!234738 String)) )
))
(declare-datatypes ((List!45618 0))(
  ( (Nil!45494) (Cons!45494 (h!50914 (_ BitVec 16)) (t!343649 List!45618)) )
))
(declare-datatypes ((TokenValue!7746 0))(
  ( (FloatLiteralValue!15492 (text!54667 List!45618)) (TokenValueExt!7745 (__x!27711 Int)) (Broken!38730 (value!234739 List!45618)) (Object!7869) (End!7746) (Def!7746) (Underscore!7746) (Match!7746) (Else!7746) (Error!7746) (Case!7746) (If!7746) (Extends!7746) (Abstract!7746) (Class!7746) (Val!7746) (DelimiterValue!15492 (del!7806 List!45618)) (KeywordValue!7752 (value!234740 List!45618)) (CommentValue!15492 (value!234741 List!45618)) (WhitespaceValue!15492 (value!234742 List!45618)) (IndentationValue!7746 (value!234743 List!45618)) (String!52593) (Int32!7746) (Broken!38731 (value!234744 List!45618)) (Boolean!7747) (Unit!64596) (OperatorValue!7749 (op!7806 List!45618)) (IdentifierValue!15492 (value!234745 List!45618)) (IdentifierValue!15493 (value!234746 List!45618)) (WhitespaceValue!15493 (value!234747 List!45618)) (True!15492) (False!15492) (Broken!38732 (value!234748 List!45618)) (Broken!38733 (value!234749 List!45618)) (True!15493) (RightBrace!7746) (RightBracket!7746) (Colon!7746) (Null!7746) (Comma!7746) (LeftBracket!7746) (False!15493) (LeftBrace!7746) (ImaginaryLiteralValue!7746 (text!54668 List!45618)) (StringLiteralValue!23238 (value!234750 List!45618)) (EOFValue!7746 (value!234751 List!45618)) (IdentValue!7746 (value!234752 List!45618)) (DelimiterValue!15493 (value!234753 List!45618)) (DedentValue!7746 (value!234754 List!45618)) (NewLineValue!7746 (value!234755 List!45618)) (IntegerValue!23238 (value!234756 (_ BitVec 32)) (text!54669 List!45618)) (IntegerValue!23239 (value!234757 Int) (text!54670 List!45618)) (Times!7746) (Or!7746) (Equal!7746) (Minus!7746) (Broken!38734 (value!234758 List!45618)) (And!7746) (Div!7746) (LessEqual!7746) (Mod!7746) (Concat!20168) (Not!7746) (Plus!7746) (SpaceValue!7746 (value!234759 List!45618)) (IntegerValue!23240 (value!234760 Int) (text!54671 List!45618)) (StringLiteralValue!23239 (text!54672 List!45618)) (FloatLiteralValue!15493 (text!54673 List!45618)) (BytesLiteralValue!7746 (value!234761 List!45618)) (CommentValue!15493 (value!234762 List!45618)) (StringLiteralValue!23240 (value!234763 List!45618)) (ErrorTokenValue!7746 (msg!7807 List!45618)) )
))
(declare-datatypes ((List!45619 0))(
  ( (Nil!45495) (Cons!45495 (h!50915 C!25028) (t!343650 List!45619)) )
))
(declare-datatypes ((IArray!27459 0))(
  ( (IArray!27460 (innerList!13787 List!45619)) )
))
(declare-datatypes ((Conc!13727 0))(
  ( (Node!13727 (left!33934 Conc!13727) (right!34264 Conc!13727) (csize!27684 Int) (cheight!13938 Int)) (Leaf!21227 (xs!17033 IArray!27459) (csize!27685 Int)) (Empty!13727) )
))
(declare-datatypes ((BalanceConc!27048 0))(
  ( (BalanceConc!27049 (c!711937 Conc!13727)) )
))
(declare-datatypes ((TokenValueInjection!14920 0))(
  ( (TokenValueInjection!14921 (toValue!10180 Int) (toChars!10039 Int)) )
))
(declare-datatypes ((Rule!14832 0))(
  ( (Rule!14833 (regex!7516 Regex!12421) (tag!8380 String!52591) (isSeparator!7516 Bool) (transformation!7516 TokenValueInjection!14920)) )
))
(declare-datatypes ((List!45620 0))(
  ( (Nil!45496) (Cons!45496 (h!50916 Rule!14832) (t!343651 List!45620)) )
))
(declare-fun rules!4099 () List!45620)

(declare-fun r1!614 () Rule!14832)

(declare-fun contains!9309 (List!45620 Rule!14832) Bool)

(assert (=> b!4161397 (= res!1704686 (contains!9309 rules!4099 r1!614))))

(declare-fun e!2583115 () Bool)

(declare-fun e!2583110 () Bool)

(declare-fun b!4161398 () Bool)

(declare-fun tp!1270129 () Bool)

(declare-fun inv!60016 (String!52591) Bool)

(declare-fun inv!60018 (TokenValueInjection!14920) Bool)

(assert (=> b!4161398 (= e!2583115 (and tp!1270129 (inv!60016 (tag!8380 r1!614)) (inv!60018 (transformation!7516 r1!614)) e!2583110))))

(declare-fun e!2583112 () Bool)

(assert (=> b!4161399 (= e!2583112 (and tp!1270133 tp!1270126))))

(declare-fun b!4161400 () Bool)

(declare-fun res!1704683 () Bool)

(assert (=> b!4161400 (=> (not res!1704683) (not e!2583116))))

(declare-datatypes ((LexerInterface!7107 0))(
  ( (LexerInterfaceExt!7104 (__x!27712 Int)) (Lexer!7105) )
))
(declare-fun thiss!26959 () LexerInterface!7107)

(declare-datatypes ((List!45621 0))(
  ( (Nil!45497) (Cons!45497 (h!50917 String!52591) (t!343652 List!45621)) )
))
(declare-fun noDuplicateTag!3093 (LexerInterface!7107 List!45620 List!45621) Bool)

(declare-fun noDuplicateTag$default$2!78 (LexerInterface!7107) List!45621)

(assert (=> b!4161400 (= res!1704683 (noDuplicateTag!3093 thiss!26959 rules!4099 (noDuplicateTag$default$2!78 thiss!26959)))))

(assert (=> b!4161401 (= e!2583110 (and tp!1270131 tp!1270127))))

(declare-fun b!4161402 () Bool)

(declare-fun res!1704682 () Bool)

(assert (=> b!4161402 (=> (not res!1704682) (not e!2583116))))

(declare-fun r2!596 () Rule!14832)

(assert (=> b!4161402 (= res!1704682 (contains!9309 rules!4099 r2!596))))

(declare-fun b!4161403 () Bool)

(declare-fun tp!1270130 () Bool)

(declare-fun e!2583107 () Bool)

(declare-fun e!2583114 () Bool)

(assert (=> b!4161403 (= e!2583107 (and tp!1270130 (inv!60016 (tag!8380 (h!50916 rules!4099))) (inv!60018 (transformation!7516 (h!50916 rules!4099))) e!2583114))))

(declare-fun tp!1270128 () Bool)

(declare-fun b!4161405 () Bool)

(declare-fun e!2583109 () Bool)

(assert (=> b!4161405 (= e!2583109 (and tp!1270128 (inv!60016 (tag!8380 r2!596)) (inv!60018 (transformation!7516 r2!596)) e!2583112))))

(assert (=> b!4161406 (= e!2583114 (and tp!1270134 tp!1270132))))

(declare-fun b!4161404 () Bool)

(declare-fun e!2583111 () Bool)

(declare-fun tp!1270125 () Bool)

(assert (=> b!4161404 (= e!2583111 (and e!2583107 tp!1270125))))

(declare-fun res!1704685 () Bool)

(assert (=> start!396538 (=> (not res!1704685) (not e!2583116))))

(get-info :version)

(assert (=> start!396538 (= res!1704685 ((_ is Lexer!7105) thiss!26959))))

(assert (=> start!396538 e!2583116))

(assert (=> start!396538 true))

(assert (=> start!396538 e!2583111))

(assert (=> start!396538 e!2583115))

(assert (=> start!396538 e!2583109))

(declare-fun b!4161407 () Bool)

(declare-fun res!1704684 () Bool)

(assert (=> b!4161407 (=> (not res!1704684) (not e!2583116))))

(declare-fun getIndex!880 (List!45620 Rule!14832) Int)

(assert (=> b!4161407 (= res!1704684 (< (getIndex!880 rules!4099 r1!614) (getIndex!880 rules!4099 r2!596)))))

(declare-fun b!4161408 () Bool)

(assert (=> b!4161408 (= e!2583116 (= r1!614 r2!596))))

(assert (= (and start!396538 res!1704685) b!4161397))

(assert (= (and b!4161397 res!1704686) b!4161402))

(assert (= (and b!4161402 res!1704682) b!4161400))

(assert (= (and b!4161400 res!1704683) b!4161407))

(assert (= (and b!4161407 res!1704684) b!4161408))

(assert (= b!4161403 b!4161406))

(assert (= b!4161404 b!4161403))

(assert (= (and start!396538 ((_ is Cons!45496) rules!4099)) b!4161404))

(assert (= b!4161398 b!4161401))

(assert (= start!396538 b!4161398))

(assert (= b!4161405 b!4161399))

(assert (= start!396538 b!4161405))

(declare-fun m!4754363 () Bool)

(assert (=> b!4161398 m!4754363))

(declare-fun m!4754365 () Bool)

(assert (=> b!4161398 m!4754365))

(declare-fun m!4754367 () Bool)

(assert (=> b!4161405 m!4754367))

(declare-fun m!4754369 () Bool)

(assert (=> b!4161405 m!4754369))

(declare-fun m!4754371 () Bool)

(assert (=> b!4161400 m!4754371))

(assert (=> b!4161400 m!4754371))

(declare-fun m!4754373 () Bool)

(assert (=> b!4161400 m!4754373))

(declare-fun m!4754375 () Bool)

(assert (=> b!4161397 m!4754375))

(declare-fun m!4754377 () Bool)

(assert (=> b!4161403 m!4754377))

(declare-fun m!4754379 () Bool)

(assert (=> b!4161403 m!4754379))

(declare-fun m!4754381 () Bool)

(assert (=> b!4161407 m!4754381))

(declare-fun m!4754383 () Bool)

(assert (=> b!4161407 m!4754383))

(declare-fun m!4754385 () Bool)

(assert (=> b!4161402 m!4754385))

(check-sat b_and!324205 (not b_next!120547) (not b!4161403) (not b!4161404) (not b_next!120551) b_and!324211 (not b!4161397) (not b_next!120549) (not b!4161407) (not b_next!120553) (not b!4161402) (not b!4161400) b_and!324203 (not b_next!120545) b_and!324207 (not b_next!120543) b_and!324209 b_and!324201 (not b!4161405) (not b!4161398))
(check-sat b_and!324205 (not b_next!120547) (not b_next!120551) b_and!324211 b_and!324201 (not b_next!120549) (not b_next!120553) b_and!324203 (not b_next!120545) b_and!324207 (not b_next!120543) b_and!324209)
