; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395402 () Bool)

(assert start!395402)

(declare-fun b!4153751 () Bool)

(declare-fun b_free!118915 () Bool)

(declare-fun b_next!119619 () Bool)

(assert (=> b!4153751 (= b_free!118915 (not b_next!119619))))

(declare-fun tp!1266366 () Bool)

(declare-fun b_and!323277 () Bool)

(assert (=> b!4153751 (= tp!1266366 b_and!323277)))

(declare-fun b_free!118917 () Bool)

(declare-fun b_next!119621 () Bool)

(assert (=> b!4153751 (= b_free!118917 (not b_next!119621))))

(declare-fun tp!1266369 () Bool)

(declare-fun b_and!323279 () Bool)

(assert (=> b!4153751 (= tp!1266369 b_and!323279)))

(declare-fun b!4153744 () Bool)

(declare-fun b_free!118919 () Bool)

(declare-fun b_next!119623 () Bool)

(assert (=> b!4153744 (= b_free!118919 (not b_next!119623))))

(declare-fun tp!1266362 () Bool)

(declare-fun b_and!323281 () Bool)

(assert (=> b!4153744 (= tp!1266362 b_and!323281)))

(declare-fun b_free!118921 () Bool)

(declare-fun b_next!119625 () Bool)

(assert (=> b!4153744 (= b_free!118921 (not b_next!119625))))

(declare-fun tp!1266365 () Bool)

(declare-fun b_and!323283 () Bool)

(assert (=> b!4153744 (= tp!1266365 b_and!323283)))

(declare-fun b!4153755 () Bool)

(declare-fun b_free!118923 () Bool)

(declare-fun b_next!119627 () Bool)

(assert (=> b!4153755 (= b_free!118923 (not b_next!119627))))

(declare-fun tp!1266370 () Bool)

(declare-fun b_and!323285 () Bool)

(assert (=> b!4153755 (= tp!1266370 b_and!323285)))

(declare-fun b_free!118925 () Bool)

(declare-fun b_next!119629 () Bool)

(assert (=> b!4153755 (= b_free!118925 (not b_next!119629))))

(declare-fun tp!1266364 () Bool)

(declare-fun b_and!323287 () Bool)

(assert (=> b!4153755 (= tp!1266364 b_and!323287)))

(declare-fun b!4153742 () Bool)

(declare-fun e!2577229 () Bool)

(assert (=> b!4153742 (= e!2577229 false)))

(declare-fun lt!1481107 () Bool)

(declare-datatypes ((List!45284 0))(
  ( (Nil!45160) (Cons!45160 (h!50580 (_ BitVec 16)) (t!343315 List!45284)) )
))
(declare-datatypes ((TokenValue!7676 0))(
  ( (FloatLiteralValue!15352 (text!54177 List!45284)) (TokenValueExt!7675 (__x!27569 Int)) (Broken!38380 (value!232730 List!45284)) (Object!7799) (End!7676) (Def!7676) (Underscore!7676) (Match!7676) (Else!7676) (Error!7676) (Case!7676) (If!7676) (Extends!7676) (Abstract!7676) (Class!7676) (Val!7676) (DelimiterValue!15352 (del!7736 List!45284)) (KeywordValue!7682 (value!232731 List!45284)) (CommentValue!15352 (value!232732 List!45284)) (WhitespaceValue!15352 (value!232733 List!45284)) (IndentationValue!7676 (value!232734 List!45284)) (String!52129) (Int32!7676) (Broken!38381 (value!232735 List!45284)) (Boolean!7677) (Unit!64402) (OperatorValue!7679 (op!7736 List!45284)) (IdentifierValue!15352 (value!232736 List!45284)) (IdentifierValue!15353 (value!232737 List!45284)) (WhitespaceValue!15353 (value!232738 List!45284)) (True!15352) (False!15352) (Broken!38382 (value!232739 List!45284)) (Broken!38383 (value!232740 List!45284)) (True!15353) (RightBrace!7676) (RightBracket!7676) (Colon!7676) (Null!7676) (Comma!7676) (LeftBracket!7676) (False!15353) (LeftBrace!7676) (ImaginaryLiteralValue!7676 (text!54178 List!45284)) (StringLiteralValue!23028 (value!232741 List!45284)) (EOFValue!7676 (value!232742 List!45284)) (IdentValue!7676 (value!232743 List!45284)) (DelimiterValue!15353 (value!232744 List!45284)) (DedentValue!7676 (value!232745 List!45284)) (NewLineValue!7676 (value!232746 List!45284)) (IntegerValue!23028 (value!232747 (_ BitVec 32)) (text!54179 List!45284)) (IntegerValue!23029 (value!232748 Int) (text!54180 List!45284)) (Times!7676) (Or!7676) (Equal!7676) (Minus!7676) (Broken!38384 (value!232749 List!45284)) (And!7676) (Div!7676) (LessEqual!7676) (Mod!7676) (Concat!20027) (Not!7676) (Plus!7676) (SpaceValue!7676 (value!232750 List!45284)) (IntegerValue!23030 (value!232751 Int) (text!54181 List!45284)) (StringLiteralValue!23029 (text!54182 List!45284)) (FloatLiteralValue!15353 (text!54183 List!45284)) (BytesLiteralValue!7676 (value!232752 List!45284)) (CommentValue!15353 (value!232753 List!45284)) (StringLiteralValue!23030 (value!232754 List!45284)) (ErrorTokenValue!7676 (msg!7737 List!45284)) )
))
(declare-datatypes ((C!24888 0))(
  ( (C!24889 (val!14554 Int)) )
))
(declare-datatypes ((List!45285 0))(
  ( (Nil!45161) (Cons!45161 (h!50581 C!24888) (t!343316 List!45285)) )
))
(declare-datatypes ((IArray!27319 0))(
  ( (IArray!27320 (innerList!13717 List!45285)) )
))
(declare-datatypes ((Conc!13657 0))(
  ( (Node!13657 (left!33802 Conc!13657) (right!34132 Conc!13657) (csize!27544 Int) (cheight!13868 Int)) (Leaf!21095 (xs!16963 IArray!27319) (csize!27545 Int)) (Empty!13657) )
))
(declare-datatypes ((Regex!12351 0))(
  ( (ElementMatch!12351 (c!711222 C!24888)) (Concat!20028 (regOne!25214 Regex!12351) (regTwo!25214 Regex!12351)) (EmptyExpr!12351) (Star!12351 (reg!12680 Regex!12351)) (EmptyLang!12351) (Union!12351 (regOne!25215 Regex!12351) (regTwo!25215 Regex!12351)) )
))
(declare-datatypes ((String!52130 0))(
  ( (String!52131 (value!232755 String)) )
))
(declare-datatypes ((BalanceConc!26908 0))(
  ( (BalanceConc!26909 (c!711223 Conc!13657)) )
))
(declare-datatypes ((TokenValueInjection!14780 0))(
  ( (TokenValueInjection!14781 (toValue!10110 Int) (toChars!9969 Int)) )
))
(declare-datatypes ((Rule!14692 0))(
  ( (Rule!14693 (regex!7446 Regex!12351) (tag!8306 String!52130) (isSeparator!7446 Bool) (transformation!7446 TokenValueInjection!14780)) )
))
(declare-datatypes ((List!45286 0))(
  ( (Nil!45162) (Cons!45162 (h!50582 Rule!14692) (t!343317 List!45286)) )
))
(declare-fun lt!1481108 () List!45286)

(declare-fun r2!597 () Rule!14692)

(declare-fun contains!9137 (List!45286 Rule!14692) Bool)

(assert (=> b!4153742 (= lt!1481107 (contains!9137 lt!1481108 r2!597))))

(declare-fun e!2577231 () Bool)

(assert (=> b!4153744 (= e!2577231 (and tp!1266362 tp!1266365))))

(declare-fun b!4153745 () Bool)

(declare-fun e!2577237 () Bool)

(declare-fun e!2577235 () Bool)

(declare-fun tp!1266363 () Bool)

(assert (=> b!4153745 (= e!2577237 (and e!2577235 tp!1266363))))

(declare-fun b!4153746 () Bool)

(declare-fun e!2577233 () Bool)

(assert (=> b!4153746 (= e!2577233 e!2577229)))

(declare-fun res!1701127 () Bool)

(assert (=> b!4153746 (=> (not res!1701127) (not e!2577229))))

(declare-datatypes ((List!45287 0))(
  ( (Nil!45163) (Cons!45163 (h!50583 String!52130) (t!343318 List!45287)) )
))
(declare-fun lt!1481106 () List!45287)

(declare-fun r1!615 () Rule!14692)

(declare-fun contains!9138 (List!45287 String!52130) Bool)

(assert (=> b!4153746 (= res!1701127 (contains!9138 lt!1481106 (tag!8306 r1!615)))))

(assert (=> b!4153746 (= lt!1481106 (Cons!45163 (tag!8306 r1!615) Nil!45163))))

(declare-fun rules!4102 () List!45286)

(declare-fun tail!6611 (List!45286) List!45286)

(assert (=> b!4153746 (= lt!1481108 (tail!6611 rules!4102))))

(declare-fun b!4153747 () Bool)

(declare-fun res!1701126 () Bool)

(assert (=> b!4153747 (=> (not res!1701126) (not e!2577233))))

(assert (=> b!4153747 (= res!1701126 (contains!9137 rules!4102 r2!597))))

(declare-fun e!2577227 () Bool)

(declare-fun tp!1266367 () Bool)

(declare-fun e!2577234 () Bool)

(declare-fun b!4153748 () Bool)

(declare-fun inv!59760 (String!52130) Bool)

(declare-fun inv!59762 (TokenValueInjection!14780) Bool)

(assert (=> b!4153748 (= e!2577234 (and tp!1266367 (inv!59760 (tag!8306 r2!597)) (inv!59762 (transformation!7446 r2!597)) e!2577227))))

(declare-fun b!4153749 () Bool)

(declare-fun res!1701132 () Bool)

(assert (=> b!4153749 (=> (not res!1701132) (not e!2577233))))

(declare-datatypes ((LexerInterface!7035 0))(
  ( (LexerInterfaceExt!7032 (__x!27570 Int)) (Lexer!7033) )
))
(declare-fun thiss!26968 () LexerInterface!7035)

(declare-fun noDuplicateTag!3023 (LexerInterface!7035 List!45286 List!45287) Bool)

(declare-fun noDuplicateTag$default$2!28 (LexerInterface!7035) List!45287)

(assert (=> b!4153749 (= res!1701132 (noDuplicateTag!3023 thiss!26968 rules!4102 (noDuplicateTag$default$2!28 thiss!26968)))))

(declare-fun tp!1266361 () Bool)

(declare-fun e!2577236 () Bool)

(declare-fun b!4153750 () Bool)

(assert (=> b!4153750 (= e!2577236 (and tp!1266361 (inv!59760 (tag!8306 r1!615)) (inv!59762 (transformation!7446 r1!615)) e!2577231))))

(assert (=> b!4153751 (= e!2577227 (and tp!1266366 tp!1266369))))

(declare-fun b!4153752 () Bool)

(declare-fun e!2577232 () Bool)

(declare-fun tp!1266368 () Bool)

(assert (=> b!4153752 (= e!2577235 (and tp!1266368 (inv!59760 (tag!8306 (h!50582 rules!4102))) (inv!59762 (transformation!7446 (h!50582 rules!4102))) e!2577232))))

(declare-fun b!4153753 () Bool)

(declare-fun res!1701130 () Bool)

(assert (=> b!4153753 (=> (not res!1701130) (not e!2577233))))

(declare-fun getIndex!788 (List!45286 Rule!14692) Int)

(assert (=> b!4153753 (= res!1701130 (< (getIndex!788 rules!4102 r1!615) (getIndex!788 rules!4102 r2!597)))))

(declare-fun b!4153754 () Bool)

(declare-fun res!1701129 () Bool)

(assert (=> b!4153754 (=> (not res!1701129) (not e!2577229))))

(assert (=> b!4153754 (= res!1701129 (noDuplicateTag!3023 thiss!26968 lt!1481108 lt!1481106))))

(declare-fun res!1701131 () Bool)

(assert (=> start!395402 (=> (not res!1701131) (not e!2577233))))

(get-info :version)

(assert (=> start!395402 (= res!1701131 ((_ is Lexer!7033) thiss!26968))))

(assert (=> start!395402 e!2577233))

(assert (=> start!395402 true))

(assert (=> start!395402 e!2577237))

(assert (=> start!395402 e!2577236))

(assert (=> start!395402 e!2577234))

(declare-fun b!4153743 () Bool)

(declare-fun res!1701128 () Bool)

(assert (=> b!4153743 (=> (not res!1701128) (not e!2577233))))

(assert (=> b!4153743 (= res!1701128 (contains!9137 rules!4102 r1!615))))

(assert (=> b!4153755 (= e!2577232 (and tp!1266370 tp!1266364))))

(declare-fun b!4153756 () Bool)

(declare-fun res!1701125 () Bool)

(assert (=> b!4153756 (=> (not res!1701125) (not e!2577233))))

(declare-fun head!8772 (List!45286) Rule!14692)

(assert (=> b!4153756 (= res!1701125 (= (head!8772 rules!4102) r1!615))))

(assert (= (and start!395402 res!1701131) b!4153743))

(assert (= (and b!4153743 res!1701128) b!4153747))

(assert (= (and b!4153747 res!1701126) b!4153749))

(assert (= (and b!4153749 res!1701132) b!4153753))

(assert (= (and b!4153753 res!1701130) b!4153756))

(assert (= (and b!4153756 res!1701125) b!4153746))

(assert (= (and b!4153746 res!1701127) b!4153754))

(assert (= (and b!4153754 res!1701129) b!4153742))

(assert (= b!4153752 b!4153755))

(assert (= b!4153745 b!4153752))

(assert (= (and start!395402 ((_ is Cons!45162) rules!4102)) b!4153745))

(assert (= b!4153750 b!4153744))

(assert (= start!395402 b!4153750))

(assert (= b!4153748 b!4153751))

(assert (= start!395402 b!4153748))

(declare-fun m!4748755 () Bool)

(assert (=> b!4153748 m!4748755))

(declare-fun m!4748757 () Bool)

(assert (=> b!4153748 m!4748757))

(declare-fun m!4748759 () Bool)

(assert (=> b!4153747 m!4748759))

(declare-fun m!4748761 () Bool)

(assert (=> b!4153756 m!4748761))

(declare-fun m!4748763 () Bool)

(assert (=> b!4153746 m!4748763))

(declare-fun m!4748765 () Bool)

(assert (=> b!4153746 m!4748765))

(declare-fun m!4748767 () Bool)

(assert (=> b!4153753 m!4748767))

(declare-fun m!4748769 () Bool)

(assert (=> b!4153753 m!4748769))

(declare-fun m!4748771 () Bool)

(assert (=> b!4153749 m!4748771))

(assert (=> b!4153749 m!4748771))

(declare-fun m!4748773 () Bool)

(assert (=> b!4153749 m!4748773))

(declare-fun m!4748775 () Bool)

(assert (=> b!4153750 m!4748775))

(declare-fun m!4748777 () Bool)

(assert (=> b!4153750 m!4748777))

(declare-fun m!4748779 () Bool)

(assert (=> b!4153743 m!4748779))

(declare-fun m!4748781 () Bool)

(assert (=> b!4153742 m!4748781))

(declare-fun m!4748783 () Bool)

(assert (=> b!4153754 m!4748783))

(declare-fun m!4748785 () Bool)

(assert (=> b!4153752 m!4748785))

(declare-fun m!4748787 () Bool)

(assert (=> b!4153752 m!4748787))

(check-sat (not b!4153743) (not b_next!119625) b_and!323277 (not b!4153750) (not b!4153749) (not b_next!119621) (not b!4153752) b_and!323287 (not b_next!119619) b_and!323279 (not b!4153748) b_and!323281 (not b!4153747) b_and!323283 (not b!4153753) (not b!4153745) b_and!323285 (not b!4153746) (not b_next!119627) (not b!4153756) (not b_next!119629) (not b!4153742) (not b!4153754) (not b_next!119623))
(check-sat (not b_next!119625) b_and!323281 b_and!323283 b_and!323285 (not b_next!119627) b_and!323277 (not b_next!119621) b_and!323287 (not b_next!119619) b_and!323279 (not b_next!119629) (not b_next!119623))
