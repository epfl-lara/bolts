; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395862 () Bool)

(assert start!395862)

(declare-fun b!4156982 () Bool)

(declare-fun b_free!119483 () Bool)

(declare-fun b_next!120187 () Bool)

(assert (=> b!4156982 (= b_free!119483 (not b_next!120187))))

(declare-fun tp!1268379 () Bool)

(declare-fun b_and!323845 () Bool)

(assert (=> b!4156982 (= tp!1268379 b_and!323845)))

(declare-fun b_free!119485 () Bool)

(declare-fun b_next!120189 () Bool)

(assert (=> b!4156982 (= b_free!119485 (not b_next!120189))))

(declare-fun tp!1268381 () Bool)

(declare-fun b_and!323847 () Bool)

(assert (=> b!4156982 (= tp!1268381 b_and!323847)))

(declare-fun b!4156987 () Bool)

(declare-fun b_free!119487 () Bool)

(declare-fun b_next!120191 () Bool)

(assert (=> b!4156987 (= b_free!119487 (not b_next!120191))))

(declare-fun tp!1268378 () Bool)

(declare-fun b_and!323849 () Bool)

(assert (=> b!4156987 (= tp!1268378 b_and!323849)))

(declare-fun b_free!119489 () Bool)

(declare-fun b_next!120193 () Bool)

(assert (=> b!4156987 (= b_free!119489 (not b_next!120193))))

(declare-fun tp!1268383 () Bool)

(declare-fun b_and!323851 () Bool)

(assert (=> b!4156987 (= tp!1268383 b_and!323851)))

(declare-fun b!4156983 () Bool)

(declare-fun b_free!119491 () Bool)

(declare-fun b_next!120195 () Bool)

(assert (=> b!4156983 (= b_free!119491 (not b_next!120195))))

(declare-fun tp!1268384 () Bool)

(declare-fun b_and!323853 () Bool)

(assert (=> b!4156983 (= tp!1268384 b_and!323853)))

(declare-fun b_free!119493 () Bool)

(declare-fun b_next!120197 () Bool)

(assert (=> b!4156983 (= b_free!119493 (not b_next!120197))))

(declare-fun tp!1268382 () Bool)

(declare-fun b_and!323855 () Bool)

(assert (=> b!4156983 (= tp!1268382 b_and!323855)))

(declare-fun b!4156978 () Bool)

(declare-fun res!1702537 () Bool)

(declare-fun e!2579787 () Bool)

(assert (=> b!4156978 (=> (not res!1702537) (not e!2579787))))

(declare-datatypes ((LexerInterface!7075 0))(
  ( (LexerInterfaceExt!7072 (__x!27649 Int)) (Lexer!7073) )
))
(declare-fun thiss!26968 () LexerInterface!7075)

(declare-datatypes ((List!45444 0))(
  ( (Nil!45320) (Cons!45320 (h!50740 (_ BitVec 16)) (t!343475 List!45444)) )
))
(declare-datatypes ((TokenValue!7716 0))(
  ( (FloatLiteralValue!15432 (text!54457 List!45444)) (TokenValueExt!7715 (__x!27650 Int)) (Broken!38580 (value!233830 List!45444)) (Object!7839) (End!7716) (Def!7716) (Underscore!7716) (Match!7716) (Else!7716) (Error!7716) (Case!7716) (If!7716) (Extends!7716) (Abstract!7716) (Class!7716) (Val!7716) (DelimiterValue!15432 (del!7776 List!45444)) (KeywordValue!7722 (value!233831 List!45444)) (CommentValue!15432 (value!233832 List!45444)) (WhitespaceValue!15432 (value!233833 List!45444)) (IndentationValue!7716 (value!233834 List!45444)) (String!52329) (Int32!7716) (Broken!38581 (value!233835 List!45444)) (Boolean!7717) (Unit!64484) (OperatorValue!7719 (op!7776 List!45444)) (IdentifierValue!15432 (value!233836 List!45444)) (IdentifierValue!15433 (value!233837 List!45444)) (WhitespaceValue!15433 (value!233838 List!45444)) (True!15432) (False!15432) (Broken!38582 (value!233839 List!45444)) (Broken!38583 (value!233840 List!45444)) (True!15433) (RightBrace!7716) (RightBracket!7716) (Colon!7716) (Null!7716) (Comma!7716) (LeftBracket!7716) (False!15433) (LeftBrace!7716) (ImaginaryLiteralValue!7716 (text!54458 List!45444)) (StringLiteralValue!23148 (value!233841 List!45444)) (EOFValue!7716 (value!233842 List!45444)) (IdentValue!7716 (value!233843 List!45444)) (DelimiterValue!15433 (value!233844 List!45444)) (DedentValue!7716 (value!233845 List!45444)) (NewLineValue!7716 (value!233846 List!45444)) (IntegerValue!23148 (value!233847 (_ BitVec 32)) (text!54459 List!45444)) (IntegerValue!23149 (value!233848 Int) (text!54460 List!45444)) (Times!7716) (Or!7716) (Equal!7716) (Minus!7716) (Broken!38584 (value!233849 List!45444)) (And!7716) (Div!7716) (LessEqual!7716) (Mod!7716) (Concat!20107) (Not!7716) (Plus!7716) (SpaceValue!7716 (value!233850 List!45444)) (IntegerValue!23150 (value!233851 Int) (text!54461 List!45444)) (StringLiteralValue!23149 (text!54462 List!45444)) (FloatLiteralValue!15433 (text!54463 List!45444)) (BytesLiteralValue!7716 (value!233852 List!45444)) (CommentValue!15433 (value!233853 List!45444)) (StringLiteralValue!23150 (value!233854 List!45444)) (ErrorTokenValue!7716 (msg!7777 List!45444)) )
))
(declare-datatypes ((C!24968 0))(
  ( (C!24969 (val!14594 Int)) )
))
(declare-datatypes ((List!45445 0))(
  ( (Nil!45321) (Cons!45321 (h!50741 C!24968) (t!343476 List!45445)) )
))
(declare-datatypes ((IArray!27399 0))(
  ( (IArray!27400 (innerList!13757 List!45445)) )
))
(declare-datatypes ((Conc!13697 0))(
  ( (Node!13697 (left!33862 Conc!13697) (right!34192 Conc!13697) (csize!27624 Int) (cheight!13908 Int)) (Leaf!21155 (xs!17003 IArray!27399) (csize!27625 Int)) (Empty!13697) )
))
(declare-datatypes ((Regex!12391 0))(
  ( (ElementMatch!12391 (c!711484 C!24968)) (Concat!20108 (regOne!25294 Regex!12391) (regTwo!25294 Regex!12391)) (EmptyExpr!12391) (Star!12391 (reg!12720 Regex!12391)) (EmptyLang!12391) (Union!12391 (regOne!25295 Regex!12391) (regTwo!25295 Regex!12391)) )
))
(declare-datatypes ((String!52330 0))(
  ( (String!52331 (value!233855 String)) )
))
(declare-datatypes ((BalanceConc!26988 0))(
  ( (BalanceConc!26989 (c!711485 Conc!13697)) )
))
(declare-datatypes ((TokenValueInjection!14860 0))(
  ( (TokenValueInjection!14861 (toValue!10150 Int) (toChars!10009 Int)) )
))
(declare-datatypes ((Rule!14772 0))(
  ( (Rule!14773 (regex!7486 Regex!12391) (tag!8350 String!52330) (isSeparator!7486 Bool) (transformation!7486 TokenValueInjection!14860)) )
))
(declare-datatypes ((List!45446 0))(
  ( (Nil!45322) (Cons!45322 (h!50742 Rule!14772) (t!343477 List!45446)) )
))
(declare-fun rules!4102 () List!45446)

(declare-datatypes ((List!45447 0))(
  ( (Nil!45323) (Cons!45323 (h!50743 String!52330) (t!343478 List!45447)) )
))
(declare-fun noDuplicateTag!3063 (LexerInterface!7075 List!45446 List!45447) Bool)

(declare-fun noDuplicateTag$default$2!68 (LexerInterface!7075) List!45447)

(assert (=> b!4156978 (= res!1702537 (noDuplicateTag!3063 thiss!26968 rules!4102 (noDuplicateTag$default$2!68 thiss!26968)))))

(declare-fun b!4156979 () Bool)

(declare-fun e!2579785 () Bool)

(assert (=> b!4156979 (= e!2579785 (not true))))

(declare-fun lt!1481644 () Bool)

(declare-fun lt!1481643 () List!45446)

(declare-fun r1!615 () Rule!14772)

(declare-fun contains!9199 (List!45446 Rule!14772) Bool)

(assert (=> b!4156979 (= lt!1481644 (contains!9199 lt!1481643 r1!615))))

(declare-fun r2!597 () Rule!14772)

(assert (=> b!4156979 (contains!9199 lt!1481643 r2!597)))

(declare-datatypes ((Unit!64485 0))(
  ( (Unit!64486) )
))
(declare-fun lt!1481646 () Unit!64485)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!10 (List!45446 Rule!14772 Rule!14772) Unit!64485)

(assert (=> b!4156979 (= lt!1481646 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!10 rules!4102 r1!615 r2!597))))

(assert (=> b!4156979 (noDuplicateTag!3063 thiss!26968 lt!1481643 Nil!45323)))

(declare-fun lt!1481645 () Unit!64485)

(declare-fun lt!1481642 () Rule!14772)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!38 (LexerInterface!7075 List!45447 List!45447 List!45446) Unit!64485)

(assert (=> b!4156979 (= lt!1481645 (lemmaNoDupTagThenAlsoWithSubListAcc!38 thiss!26968 (Cons!45323 (tag!8350 lt!1481642) Nil!45323) Nil!45323 lt!1481643))))

(declare-fun tail!6641 (List!45446) List!45446)

(assert (=> b!4156979 (= lt!1481643 (tail!6641 rules!4102))))

(declare-fun b!4156980 () Bool)

(declare-fun res!1702540 () Bool)

(assert (=> b!4156980 (=> (not res!1702540) (not e!2579787))))

(assert (=> b!4156980 (= res!1702540 (contains!9199 rules!4102 r1!615))))

(declare-fun res!1702541 () Bool)

(assert (=> start!395862 (=> (not res!1702541) (not e!2579787))))

(get-info :version)

(assert (=> start!395862 (= res!1702541 ((_ is Lexer!7073) thiss!26968))))

(assert (=> start!395862 e!2579787))

(assert (=> start!395862 true))

(declare-fun e!2579782 () Bool)

(assert (=> start!395862 e!2579782))

(declare-fun e!2579792 () Bool)

(assert (=> start!395862 e!2579792))

(declare-fun e!2579786 () Bool)

(assert (=> start!395862 e!2579786))

(declare-fun b!4156981 () Bool)

(declare-fun res!1702538 () Bool)

(assert (=> b!4156981 (=> (not res!1702538) (not e!2579787))))

(declare-fun getIndex!828 (List!45446 Rule!14772) Int)

(assert (=> b!4156981 (= res!1702538 (< (getIndex!828 rules!4102 r1!615) (getIndex!828 rules!4102 r2!597)))))

(declare-fun e!2579781 () Bool)

(assert (=> b!4156982 (= e!2579781 (and tp!1268379 tp!1268381))))

(declare-fun e!2579791 () Bool)

(assert (=> b!4156983 (= e!2579791 (and tp!1268384 tp!1268382))))

(declare-fun b!4156984 () Bool)

(declare-fun res!1702539 () Bool)

(assert (=> b!4156984 (=> (not res!1702539) (not e!2579787))))

(assert (=> b!4156984 (= res!1702539 (contains!9199 rules!4102 r2!597))))

(declare-fun tp!1268375 () Bool)

(declare-fun b!4156985 () Bool)

(declare-fun inv!59860 (String!52330) Bool)

(declare-fun inv!59862 (TokenValueInjection!14860) Bool)

(assert (=> b!4156985 (= e!2579792 (and tp!1268375 (inv!59860 (tag!8350 r1!615)) (inv!59862 (transformation!7486 r1!615)) e!2579781))))

(declare-fun b!4156986 () Bool)

(declare-fun e!2579788 () Bool)

(declare-fun tp!1268376 () Bool)

(assert (=> b!4156986 (= e!2579782 (and e!2579788 tp!1268376))))

(declare-fun e!2579783 () Bool)

(assert (=> b!4156987 (= e!2579783 (and tp!1268378 tp!1268383))))

(declare-fun tp!1268377 () Bool)

(declare-fun b!4156988 () Bool)

(assert (=> b!4156988 (= e!2579786 (and tp!1268377 (inv!59860 (tag!8350 r2!597)) (inv!59862 (transformation!7486 r2!597)) e!2579791))))

(declare-fun b!4156989 () Bool)

(declare-fun tp!1268380 () Bool)

(assert (=> b!4156989 (= e!2579788 (and tp!1268380 (inv!59860 (tag!8350 (h!50742 rules!4102))) (inv!59862 (transformation!7486 (h!50742 rules!4102))) e!2579783))))

(declare-fun b!4156990 () Bool)

(assert (=> b!4156990 (= e!2579787 e!2579785)))

(declare-fun res!1702536 () Bool)

(assert (=> b!4156990 (=> (not res!1702536) (not e!2579785))))

(assert (=> b!4156990 (= res!1702536 (not (= lt!1481642 r1!615)))))

(declare-fun head!8808 (List!45446) Rule!14772)

(assert (=> b!4156990 (= lt!1481642 (head!8808 rules!4102))))

(assert (= (and start!395862 res!1702541) b!4156980))

(assert (= (and b!4156980 res!1702540) b!4156984))

(assert (= (and b!4156984 res!1702539) b!4156978))

(assert (= (and b!4156978 res!1702537) b!4156981))

(assert (= (and b!4156981 res!1702538) b!4156990))

(assert (= (and b!4156990 res!1702536) b!4156979))

(assert (= b!4156989 b!4156987))

(assert (= b!4156986 b!4156989))

(assert (= (and start!395862 ((_ is Cons!45322) rules!4102)) b!4156986))

(assert (= b!4156985 b!4156982))

(assert (= start!395862 b!4156985))

(assert (= b!4156988 b!4156983))

(assert (= start!395862 b!4156988))

(declare-fun m!4750979 () Bool)

(assert (=> b!4156981 m!4750979))

(declare-fun m!4750981 () Bool)

(assert (=> b!4156981 m!4750981))

(declare-fun m!4750983 () Bool)

(assert (=> b!4156980 m!4750983))

(declare-fun m!4750985 () Bool)

(assert (=> b!4156978 m!4750985))

(assert (=> b!4156978 m!4750985))

(declare-fun m!4750987 () Bool)

(assert (=> b!4156978 m!4750987))

(declare-fun m!4750989 () Bool)

(assert (=> b!4156979 m!4750989))

(declare-fun m!4750991 () Bool)

(assert (=> b!4156979 m!4750991))

(declare-fun m!4750993 () Bool)

(assert (=> b!4156979 m!4750993))

(declare-fun m!4750995 () Bool)

(assert (=> b!4156979 m!4750995))

(declare-fun m!4750997 () Bool)

(assert (=> b!4156979 m!4750997))

(declare-fun m!4750999 () Bool)

(assert (=> b!4156979 m!4750999))

(declare-fun m!4751001 () Bool)

(assert (=> b!4156985 m!4751001))

(declare-fun m!4751003 () Bool)

(assert (=> b!4156985 m!4751003))

(declare-fun m!4751005 () Bool)

(assert (=> b!4156984 m!4751005))

(declare-fun m!4751007 () Bool)

(assert (=> b!4156988 m!4751007))

(declare-fun m!4751009 () Bool)

(assert (=> b!4156988 m!4751009))

(declare-fun m!4751011 () Bool)

(assert (=> b!4156990 m!4751011))

(declare-fun m!4751013 () Bool)

(assert (=> b!4156989 m!4751013))

(declare-fun m!4751015 () Bool)

(assert (=> b!4156989 m!4751015))

(check-sat (not b_next!120197) (not b!4156990) b_and!323849 (not b_next!120189) b_and!323855 (not b!4156988) b_and!323853 b_and!323847 (not b_next!120187) (not b!4156985) (not b!4156978) b_and!323851 (not b!4156980) (not b_next!120191) (not b_next!120193) (not b_next!120195) (not b!4156979) (not b!4156981) (not b!4156986) (not b!4156984) b_and!323845 (not b!4156989))
(check-sat (not b_next!120187) (not b_next!120197) b_and!323851 (not b_next!120191) b_and!323849 (not b_next!120189) b_and!323855 b_and!323845 b_and!323853 b_and!323847 (not b_next!120193) (not b_next!120195))
