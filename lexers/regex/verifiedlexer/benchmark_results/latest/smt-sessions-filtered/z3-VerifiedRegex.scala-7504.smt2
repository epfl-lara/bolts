; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396594 () Bool)

(assert start!396594)

(declare-fun b!4162052 () Bool)

(declare-fun b_free!119943 () Bool)

(declare-fun b_next!120647 () Bool)

(assert (=> b!4162052 (= b_free!119943 (not b_next!120647))))

(declare-fun tp!1270546 () Bool)

(declare-fun b_and!324305 () Bool)

(assert (=> b!4162052 (= tp!1270546 b_and!324305)))

(declare-fun b_free!119945 () Bool)

(declare-fun b_next!120649 () Bool)

(assert (=> b!4162052 (= b_free!119945 (not b_next!120649))))

(declare-fun tp!1270545 () Bool)

(declare-fun b_and!324307 () Bool)

(assert (=> b!4162052 (= tp!1270545 b_and!324307)))

(declare-fun b!4162063 () Bool)

(declare-fun b_free!119947 () Bool)

(declare-fun b_next!120651 () Bool)

(assert (=> b!4162063 (= b_free!119947 (not b_next!120651))))

(declare-fun tp!1270540 () Bool)

(declare-fun b_and!324309 () Bool)

(assert (=> b!4162063 (= tp!1270540 b_and!324309)))

(declare-fun b_free!119949 () Bool)

(declare-fun b_next!120653 () Bool)

(assert (=> b!4162063 (= b_free!119949 (not b_next!120653))))

(declare-fun tp!1270538 () Bool)

(declare-fun b_and!324311 () Bool)

(assert (=> b!4162063 (= tp!1270538 b_and!324311)))

(declare-fun b!4162058 () Bool)

(declare-fun b_free!119951 () Bool)

(declare-fun b_next!120655 () Bool)

(assert (=> b!4162058 (= b_free!119951 (not b_next!120655))))

(declare-fun tp!1270542 () Bool)

(declare-fun b_and!324313 () Bool)

(assert (=> b!4162058 (= tp!1270542 b_and!324313)))

(declare-fun b_free!119953 () Bool)

(declare-fun b_next!120657 () Bool)

(assert (=> b!4162058 (= b_free!119953 (not b_next!120657))))

(declare-fun tp!1270539 () Bool)

(declare-fun b_and!324315 () Bool)

(assert (=> b!4162058 (= tp!1270539 b_and!324315)))

(declare-fun b!4162051 () Bool)

(declare-fun e!2583635 () Bool)

(declare-fun e!2583628 () Bool)

(assert (=> b!4162051 (= e!2583635 (not e!2583628))))

(declare-fun res!1704989 () Bool)

(assert (=> b!4162051 (=> res!1704989 e!2583628)))

(declare-datatypes ((C!25048 0))(
  ( (C!25049 (val!14686 Int)) )
))
(declare-datatypes ((List!45647 0))(
  ( (Nil!45523) (Cons!45523 (h!50943 C!25048) (t!343678 List!45647)) )
))
(declare-datatypes ((IArray!27475 0))(
  ( (IArray!27476 (innerList!13795 List!45647)) )
))
(declare-datatypes ((Conc!13735 0))(
  ( (Node!13735 (left!33947 Conc!13735) (right!34277 Conc!13735) (csize!27700 Int) (cheight!13946 Int)) (Leaf!21240 (xs!17041 IArray!27475) (csize!27701 Int)) (Empty!13735) )
))
(declare-datatypes ((String!52635 0))(
  ( (String!52636 (value!234961 String)) )
))
(declare-datatypes ((List!45648 0))(
  ( (Nil!45524) (Cons!45524 (h!50944 (_ BitVec 16)) (t!343679 List!45648)) )
))
(declare-datatypes ((BalanceConc!27064 0))(
  ( (BalanceConc!27065 (c!711968 Conc!13735)) )
))
(declare-datatypes ((TokenValue!7754 0))(
  ( (FloatLiteralValue!15508 (text!54723 List!45648)) (TokenValueExt!7753 (__x!27729 Int)) (Broken!38770 (value!234962 List!45648)) (Object!7877) (End!7754) (Def!7754) (Underscore!7754) (Match!7754) (Else!7754) (Error!7754) (Case!7754) (If!7754) (Extends!7754) (Abstract!7754) (Class!7754) (Val!7754) (DelimiterValue!15508 (del!7814 List!45648)) (KeywordValue!7760 (value!234963 List!45648)) (CommentValue!15508 (value!234964 List!45648)) (WhitespaceValue!15508 (value!234965 List!45648)) (IndentationValue!7754 (value!234966 List!45648)) (String!52637) (Int32!7754) (Broken!38771 (value!234967 List!45648)) (Boolean!7755) (Unit!64614) (OperatorValue!7757 (op!7814 List!45648)) (IdentifierValue!15508 (value!234968 List!45648)) (IdentifierValue!15509 (value!234969 List!45648)) (WhitespaceValue!15509 (value!234970 List!45648)) (True!15508) (False!15508) (Broken!38772 (value!234971 List!45648)) (Broken!38773 (value!234972 List!45648)) (True!15509) (RightBrace!7754) (RightBracket!7754) (Colon!7754) (Null!7754) (Comma!7754) (LeftBracket!7754) (False!15509) (LeftBrace!7754) (ImaginaryLiteralValue!7754 (text!54724 List!45648)) (StringLiteralValue!23262 (value!234973 List!45648)) (EOFValue!7754 (value!234974 List!45648)) (IdentValue!7754 (value!234975 List!45648)) (DelimiterValue!15509 (value!234976 List!45648)) (DedentValue!7754 (value!234977 List!45648)) (NewLineValue!7754 (value!234978 List!45648)) (IntegerValue!23262 (value!234979 (_ BitVec 32)) (text!54725 List!45648)) (IntegerValue!23263 (value!234980 Int) (text!54726 List!45648)) (Times!7754) (Or!7754) (Equal!7754) (Minus!7754) (Broken!38774 (value!234981 List!45648)) (And!7754) (Div!7754) (LessEqual!7754) (Mod!7754) (Concat!20183) (Not!7754) (Plus!7754) (SpaceValue!7754 (value!234982 List!45648)) (IntegerValue!23264 (value!234983 Int) (text!54727 List!45648)) (StringLiteralValue!23263 (text!54728 List!45648)) (FloatLiteralValue!15509 (text!54729 List!45648)) (BytesLiteralValue!7754 (value!234984 List!45648)) (CommentValue!15509 (value!234985 List!45648)) (StringLiteralValue!23264 (value!234986 List!45648)) (ErrorTokenValue!7754 (msg!7815 List!45648)) )
))
(declare-datatypes ((TokenValueInjection!14936 0))(
  ( (TokenValueInjection!14937 (toValue!10188 Int) (toChars!10047 Int)) )
))
(declare-datatypes ((Regex!12429 0))(
  ( (ElementMatch!12429 (c!711969 C!25048)) (Concat!20184 (regOne!25370 Regex!12429) (regTwo!25370 Regex!12429)) (EmptyExpr!12429) (Star!12429 (reg!12758 Regex!12429)) (EmptyLang!12429) (Union!12429 (regOne!25371 Regex!12429) (regTwo!25371 Regex!12429)) )
))
(declare-datatypes ((Rule!14848 0))(
  ( (Rule!14849 (regex!7524 Regex!12429) (tag!8388 String!52635) (isSeparator!7524 Bool) (transformation!7524 TokenValueInjection!14936)) )
))
(declare-fun r!4097 () Rule!14848)

(declare-fun p!2942 () List!45647)

(declare-fun matchR!6174 (Regex!12429 List!45647) Bool)

(assert (=> b!4162051 (= res!1704989 (not (matchR!6174 (regex!7524 r!4097) p!2942)))))

(declare-datatypes ((LexerInterface!7117 0))(
  ( (LexerInterfaceExt!7114 (__x!27730 Int)) (Lexer!7115) )
))
(declare-fun thiss!25889 () LexerInterface!7117)

(declare-fun ruleValid!3248 (LexerInterface!7117 Rule!14848) Bool)

(assert (=> b!4162051 (ruleValid!3248 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64615 0))(
  ( (Unit!64616) )
))
(declare-fun lt!1482991 () Unit!64615)

(declare-datatypes ((List!45649 0))(
  ( (Nil!45525) (Cons!45525 (h!50945 Rule!14848) (t!343680 List!45649)) )
))
(declare-fun rules!3820 () List!45649)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2288 (LexerInterface!7117 Rule!14848 List!45649) Unit!64615)

(assert (=> b!4162051 (= lt!1482991 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2288 thiss!25889 r!4097 rules!3820))))

(declare-fun e!2583624 () Bool)

(assert (=> b!4162052 (= e!2583624 (and tp!1270546 tp!1270545))))

(declare-fun res!1704987 () Bool)

(assert (=> start!396594 (=> (not res!1704987) (not e!2583635))))

(get-info :version)

(assert (=> start!396594 (= res!1704987 ((_ is Lexer!7115) thiss!25889))))

(assert (=> start!396594 e!2583635))

(declare-fun e!2583625 () Bool)

(assert (=> start!396594 e!2583625))

(declare-fun e!2583626 () Bool)

(assert (=> start!396594 e!2583626))

(declare-fun e!2583634 () Bool)

(assert (=> start!396594 e!2583634))

(declare-fun e!2583630 () Bool)

(assert (=> start!396594 e!2583630))

(assert (=> start!396594 true))

(declare-fun e!2583632 () Bool)

(assert (=> start!396594 e!2583632))

(declare-fun e!2583636 () Bool)

(assert (=> start!396594 e!2583636))

(declare-fun tp!1270547 () Bool)

(declare-fun e!2583622 () Bool)

(declare-fun b!4162053 () Bool)

(declare-fun inv!60039 (String!52635) Bool)

(declare-fun inv!60041 (TokenValueInjection!14936) Bool)

(assert (=> b!4162053 (= e!2583636 (and tp!1270547 (inv!60039 (tag!8388 r!4097)) (inv!60041 (transformation!7524 r!4097)) e!2583622))))

(declare-fun b!4162054 () Bool)

(declare-fun res!1704990 () Bool)

(assert (=> b!4162054 (=> (not res!1704990) (not e!2583635))))

(declare-fun rulesInvariant!6330 (LexerInterface!7117 List!45649) Bool)

(assert (=> b!4162054 (= res!1704990 (rulesInvariant!6330 thiss!25889 rules!3820))))

(declare-fun b!4162055 () Bool)

(assert (=> b!4162055 (= e!2583628 true)))

(declare-fun input!3316 () List!45647)

(declare-fun isPrefix!4381 (List!45647 List!45647) Bool)

(assert (=> b!4162055 (isPrefix!4381 input!3316 input!3316)))

(declare-fun lt!1482990 () Unit!64615)

(declare-fun lemmaIsPrefixRefl!2820 (List!45647 List!45647) Unit!64615)

(assert (=> b!4162055 (= lt!1482990 (lemmaIsPrefixRefl!2820 input!3316 input!3316))))

(declare-fun lt!1482992 () Unit!64615)

(declare-fun lemmaSemiInverse!2298 (TokenValueInjection!14936 BalanceConc!27064) Unit!64615)

(declare-fun seqFromList!5557 (List!45647) BalanceConc!27064)

(assert (=> b!4162055 (= lt!1482992 (lemmaSemiInverse!2298 (transformation!7524 r!4097) (seqFromList!5557 p!2942)))))

(declare-fun b!4162056 () Bool)

(declare-fun tp_is_empty!21821 () Bool)

(declare-fun tp!1270548 () Bool)

(assert (=> b!4162056 (= e!2583625 (and tp_is_empty!21821 tp!1270548))))

(declare-fun b!4162057 () Bool)

(declare-fun res!1704988 () Bool)

(assert (=> b!4162057 (=> (not res!1704988) (not e!2583635))))

(declare-fun isEmpty!26955 (List!45649) Bool)

(assert (=> b!4162057 (= res!1704988 (not (isEmpty!26955 rules!3820)))))

(assert (=> b!4162058 (= e!2583622 (and tp!1270542 tp!1270539))))

(declare-fun b!4162059 () Bool)

(declare-fun res!1704985 () Bool)

(assert (=> b!4162059 (=> (not res!1704985) (not e!2583635))))

(declare-fun contains!9317 (List!45649 Rule!14848) Bool)

(assert (=> b!4162059 (= res!1704985 (contains!9317 rules!3820 r!4097))))

(declare-fun b!4162060 () Bool)

(declare-fun res!1704992 () Bool)

(assert (=> b!4162060 (=> (not res!1704992) (not e!2583635))))

(declare-fun pBis!100 () List!45647)

(assert (=> b!4162060 (= res!1704992 (isPrefix!4381 pBis!100 input!3316))))

(declare-fun b!4162061 () Bool)

(declare-fun e!2583627 () Bool)

(declare-fun rBis!161 () Rule!14848)

(declare-fun tp!1270543 () Bool)

(assert (=> b!4162061 (= e!2583632 (and tp!1270543 (inv!60039 (tag!8388 rBis!161)) (inv!60041 (transformation!7524 rBis!161)) e!2583627))))

(declare-fun b!4162062 () Bool)

(declare-fun tp!1270536 () Bool)

(declare-fun e!2583623 () Bool)

(assert (=> b!4162062 (= e!2583623 (and tp!1270536 (inv!60039 (tag!8388 (h!50945 rules!3820))) (inv!60041 (transformation!7524 (h!50945 rules!3820))) e!2583624))))

(assert (=> b!4162063 (= e!2583627 (and tp!1270540 tp!1270538))))

(declare-fun b!4162064 () Bool)

(declare-fun tp!1270544 () Bool)

(assert (=> b!4162064 (= e!2583626 (and e!2583623 tp!1270544))))

(declare-fun b!4162065 () Bool)

(declare-fun res!1704991 () Bool)

(assert (=> b!4162065 (=> (not res!1704991) (not e!2583635))))

(assert (=> b!4162065 (= res!1704991 (contains!9317 rules!3820 rBis!161))))

(declare-fun b!4162066 () Bool)

(declare-fun tp!1270541 () Bool)

(assert (=> b!4162066 (= e!2583630 (and tp_is_empty!21821 tp!1270541))))

(declare-fun b!4162067 () Bool)

(declare-fun tp!1270537 () Bool)

(assert (=> b!4162067 (= e!2583634 (and tp_is_empty!21821 tp!1270537))))

(declare-fun b!4162068 () Bool)

(declare-fun res!1704986 () Bool)

(assert (=> b!4162068 (=> (not res!1704986) (not e!2583635))))

(assert (=> b!4162068 (= res!1704986 (isPrefix!4381 p!2942 input!3316))))

(assert (= (and start!396594 res!1704987) b!4162068))

(assert (= (and b!4162068 res!1704986) b!4162060))

(assert (= (and b!4162060 res!1704992) b!4162057))

(assert (= (and b!4162057 res!1704988) b!4162054))

(assert (= (and b!4162054 res!1704990) b!4162059))

(assert (= (and b!4162059 res!1704985) b!4162065))

(assert (= (and b!4162065 res!1704991) b!4162051))

(assert (= (and b!4162051 (not res!1704989)) b!4162055))

(assert (= (and start!396594 ((_ is Cons!45523) pBis!100)) b!4162056))

(assert (= b!4162062 b!4162052))

(assert (= b!4162064 b!4162062))

(assert (= (and start!396594 ((_ is Cons!45525) rules!3820)) b!4162064))

(assert (= (and start!396594 ((_ is Cons!45523) p!2942)) b!4162067))

(assert (= (and start!396594 ((_ is Cons!45523) input!3316)) b!4162066))

(assert (= b!4162061 b!4162063))

(assert (= start!396594 b!4162061))

(assert (= b!4162053 b!4162058))

(assert (= start!396594 b!4162053))

(declare-fun m!4754737 () Bool)

(assert (=> b!4162053 m!4754737))

(declare-fun m!4754739 () Bool)

(assert (=> b!4162053 m!4754739))

(declare-fun m!4754741 () Bool)

(assert (=> b!4162059 m!4754741))

(declare-fun m!4754743 () Bool)

(assert (=> b!4162055 m!4754743))

(declare-fun m!4754745 () Bool)

(assert (=> b!4162055 m!4754745))

(declare-fun m!4754747 () Bool)

(assert (=> b!4162055 m!4754747))

(assert (=> b!4162055 m!4754747))

(declare-fun m!4754749 () Bool)

(assert (=> b!4162055 m!4754749))

(declare-fun m!4754751 () Bool)

(assert (=> b!4162062 m!4754751))

(declare-fun m!4754753 () Bool)

(assert (=> b!4162062 m!4754753))

(declare-fun m!4754755 () Bool)

(assert (=> b!4162051 m!4754755))

(declare-fun m!4754757 () Bool)

(assert (=> b!4162051 m!4754757))

(declare-fun m!4754759 () Bool)

(assert (=> b!4162051 m!4754759))

(declare-fun m!4754761 () Bool)

(assert (=> b!4162054 m!4754761))

(declare-fun m!4754763 () Bool)

(assert (=> b!4162068 m!4754763))

(declare-fun m!4754765 () Bool)

(assert (=> b!4162060 m!4754765))

(declare-fun m!4754767 () Bool)

(assert (=> b!4162061 m!4754767))

(declare-fun m!4754769 () Bool)

(assert (=> b!4162061 m!4754769))

(declare-fun m!4754771 () Bool)

(assert (=> b!4162057 m!4754771))

(declare-fun m!4754773 () Bool)

(assert (=> b!4162065 m!4754773))

(check-sat b_and!324313 (not b!4162062) (not b!4162057) (not b!4162066) b_and!324305 (not b_next!120651) (not b!4162053) (not b!4162060) (not b_next!120653) tp_is_empty!21821 (not b!4162065) b_and!324311 (not b!4162068) (not b!4162064) (not b_next!120649) (not b!4162067) b_and!324315 (not b_next!120657) b_and!324309 (not b!4162056) (not b!4162051) (not b_next!120647) (not b!4162054) b_and!324307 (not b!4162061) (not b_next!120655) (not b!4162055) (not b!4162059))
(check-sat b_and!324313 b_and!324307 b_and!324305 (not b_next!120655) (not b_next!120651) (not b_next!120653) b_and!324311 (not b_next!120649) b_and!324315 (not b_next!120657) b_and!324309 (not b_next!120647))
