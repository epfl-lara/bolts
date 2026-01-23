; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395486 () Bool)

(assert start!395486)

(declare-fun b!4154413 () Bool)

(declare-fun b_free!119051 () Bool)

(declare-fun b_next!119755 () Bool)

(assert (=> b!4154413 (= b_free!119051 (not b_next!119755))))

(declare-fun tp!1266816 () Bool)

(declare-fun b_and!323413 () Bool)

(assert (=> b!4154413 (= tp!1266816 b_and!323413)))

(declare-fun b_free!119053 () Bool)

(declare-fun b_next!119757 () Bool)

(assert (=> b!4154413 (= b_free!119053 (not b_next!119757))))

(declare-fun tp!1266810 () Bool)

(declare-fun b_and!323415 () Bool)

(assert (=> b!4154413 (= tp!1266810 b_and!323415)))

(declare-fun b!4154423 () Bool)

(declare-fun b_free!119055 () Bool)

(declare-fun b_next!119759 () Bool)

(assert (=> b!4154423 (= b_free!119055 (not b_next!119759))))

(declare-fun tp!1266812 () Bool)

(declare-fun b_and!323417 () Bool)

(assert (=> b!4154423 (= tp!1266812 b_and!323417)))

(declare-fun b_free!119057 () Bool)

(declare-fun b_next!119761 () Bool)

(assert (=> b!4154423 (= b_free!119057 (not b_next!119761))))

(declare-fun tp!1266813 () Bool)

(declare-fun b_and!323419 () Bool)

(assert (=> b!4154423 (= tp!1266813 b_and!323419)))

(declare-fun b!4154418 () Bool)

(declare-fun b_free!119059 () Bool)

(declare-fun b_next!119763 () Bool)

(assert (=> b!4154418 (= b_free!119059 (not b_next!119763))))

(declare-fun tp!1266814 () Bool)

(declare-fun b_and!323421 () Bool)

(assert (=> b!4154418 (= tp!1266814 b_and!323421)))

(declare-fun b_free!119061 () Bool)

(declare-fun b_next!119765 () Bool)

(assert (=> b!4154418 (= b_free!119061 (not b_next!119765))))

(declare-fun tp!1266815 () Bool)

(declare-fun b_and!323423 () Bool)

(assert (=> b!4154418 (= tp!1266815 b_and!323423)))

(declare-fun b!4154412 () Bool)

(declare-fun res!1701403 () Bool)

(declare-fun e!2577766 () Bool)

(assert (=> b!4154412 (=> (not res!1701403) (not e!2577766))))

(declare-datatypes ((List!45324 0))(
  ( (Nil!45200) (Cons!45200 (h!50620 (_ BitVec 16)) (t!343355 List!45324)) )
))
(declare-datatypes ((TokenValue!7686 0))(
  ( (FloatLiteralValue!15372 (text!54247 List!45324)) (TokenValueExt!7685 (__x!27589 Int)) (Broken!38430 (value!233005 List!45324)) (Object!7809) (End!7686) (Def!7686) (Underscore!7686) (Match!7686) (Else!7686) (Error!7686) (Case!7686) (If!7686) (Extends!7686) (Abstract!7686) (Class!7686) (Val!7686) (DelimiterValue!15372 (del!7746 List!45324)) (KeywordValue!7692 (value!233006 List!45324)) (CommentValue!15372 (value!233007 List!45324)) (WhitespaceValue!15372 (value!233008 List!45324)) (IndentationValue!7686 (value!233009 List!45324)) (String!52179) (Int32!7686) (Broken!38431 (value!233010 List!45324)) (Boolean!7687) (Unit!64422) (OperatorValue!7689 (op!7746 List!45324)) (IdentifierValue!15372 (value!233011 List!45324)) (IdentifierValue!15373 (value!233012 List!45324)) (WhitespaceValue!15373 (value!233013 List!45324)) (True!15372) (False!15372) (Broken!38432 (value!233014 List!45324)) (Broken!38433 (value!233015 List!45324)) (True!15373) (RightBrace!7686) (RightBracket!7686) (Colon!7686) (Null!7686) (Comma!7686) (LeftBracket!7686) (False!15373) (LeftBrace!7686) (ImaginaryLiteralValue!7686 (text!54248 List!45324)) (StringLiteralValue!23058 (value!233016 List!45324)) (EOFValue!7686 (value!233017 List!45324)) (IdentValue!7686 (value!233018 List!45324)) (DelimiterValue!15373 (value!233019 List!45324)) (DedentValue!7686 (value!233020 List!45324)) (NewLineValue!7686 (value!233021 List!45324)) (IntegerValue!23058 (value!233022 (_ BitVec 32)) (text!54249 List!45324)) (IntegerValue!23059 (value!233023 Int) (text!54250 List!45324)) (Times!7686) (Or!7686) (Equal!7686) (Minus!7686) (Broken!38434 (value!233024 List!45324)) (And!7686) (Div!7686) (LessEqual!7686) (Mod!7686) (Concat!20047) (Not!7686) (Plus!7686) (SpaceValue!7686 (value!233025 List!45324)) (IntegerValue!23060 (value!233026 Int) (text!54251 List!45324)) (StringLiteralValue!23059 (text!54252 List!45324)) (FloatLiteralValue!15373 (text!54253 List!45324)) (BytesLiteralValue!7686 (value!233027 List!45324)) (CommentValue!15373 (value!233028 List!45324)) (StringLiteralValue!23060 (value!233029 List!45324)) (ErrorTokenValue!7686 (msg!7747 List!45324)) )
))
(declare-datatypes ((String!52180 0))(
  ( (String!52181 (value!233030 String)) )
))
(declare-datatypes ((C!24908 0))(
  ( (C!24909 (val!14564 Int)) )
))
(declare-datatypes ((List!45325 0))(
  ( (Nil!45201) (Cons!45201 (h!50621 C!24908) (t!343356 List!45325)) )
))
(declare-datatypes ((IArray!27339 0))(
  ( (IArray!27340 (innerList!13727 List!45325)) )
))
(declare-datatypes ((Conc!13667 0))(
  ( (Node!13667 (left!33817 Conc!13667) (right!34147 Conc!13667) (csize!27564 Int) (cheight!13878 Int)) (Leaf!21110 (xs!16973 IArray!27339) (csize!27565 Int)) (Empty!13667) )
))
(declare-datatypes ((Regex!12361 0))(
  ( (ElementMatch!12361 (c!711274 C!24908)) (Concat!20048 (regOne!25234 Regex!12361) (regTwo!25234 Regex!12361)) (EmptyExpr!12361) (Star!12361 (reg!12690 Regex!12361)) (EmptyLang!12361) (Union!12361 (regOne!25235 Regex!12361) (regTwo!25235 Regex!12361)) )
))
(declare-datatypes ((BalanceConc!26928 0))(
  ( (BalanceConc!26929 (c!711275 Conc!13667)) )
))
(declare-datatypes ((TokenValueInjection!14800 0))(
  ( (TokenValueInjection!14801 (toValue!10120 Int) (toChars!9979 Int)) )
))
(declare-datatypes ((Rule!14712 0))(
  ( (Rule!14713 (regex!7456 Regex!12361) (tag!8318 String!52180) (isSeparator!7456 Bool) (transformation!7456 TokenValueInjection!14800)) )
))
(declare-datatypes ((List!45326 0))(
  ( (Nil!45202) (Cons!45202 (h!50622 Rule!14712) (t!343357 List!45326)) )
))
(declare-fun rules!4102 () List!45326)

(declare-fun r2!597 () Rule!14712)

(declare-fun r1!615 () Rule!14712)

(declare-fun getIndex!798 (List!45326 Rule!14712) Int)

(assert (=> b!4154412 (= res!1701403 (< (getIndex!798 rules!4102 r1!615) (getIndex!798 rules!4102 r2!597)))))

(declare-fun e!2577755 () Bool)

(assert (=> b!4154413 (= e!2577755 (and tp!1266816 tp!1266810))))

(declare-fun b!4154414 () Bool)

(declare-fun e!2577762 () Bool)

(assert (=> b!4154414 (= e!2577766 e!2577762)))

(declare-fun res!1701406 () Bool)

(assert (=> b!4154414 (=> (not res!1701406) (not e!2577762))))

(declare-fun lt!1481194 () Rule!14712)

(assert (=> b!4154414 (= res!1701406 (not (= lt!1481194 r1!615)))))

(declare-fun head!8782 (List!45326) Rule!14712)

(assert (=> b!4154414 (= lt!1481194 (head!8782 rules!4102))))

(declare-fun res!1701404 () Bool)

(assert (=> start!395486 (=> (not res!1701404) (not e!2577766))))

(declare-datatypes ((LexerInterface!7045 0))(
  ( (LexerInterfaceExt!7042 (__x!27590 Int)) (Lexer!7043) )
))
(declare-fun thiss!26968 () LexerInterface!7045)

(get-info :version)

(assert (=> start!395486 (= res!1701404 ((_ is Lexer!7043) thiss!26968))))

(assert (=> start!395486 e!2577766))

(assert (=> start!395486 true))

(declare-fun e!2577761 () Bool)

(assert (=> start!395486 e!2577761))

(declare-fun e!2577765 () Bool)

(assert (=> start!395486 e!2577765))

(declare-fun e!2577763 () Bool)

(assert (=> start!395486 e!2577763))

(declare-fun e!2577760 () Bool)

(declare-fun tp!1266817 () Bool)

(declare-fun b!4154415 () Bool)

(declare-fun inv!59785 (String!52180) Bool)

(declare-fun inv!59787 (TokenValueInjection!14800) Bool)

(assert (=> b!4154415 (= e!2577765 (and tp!1266817 (inv!59785 (tag!8318 r1!615)) (inv!59787 (transformation!7456 r1!615)) e!2577760))))

(declare-fun b!4154416 () Bool)

(assert (=> b!4154416 (= e!2577762 (not true))))

(declare-fun lt!1481193 () List!45326)

(declare-datatypes ((List!45327 0))(
  ( (Nil!45203) (Cons!45203 (h!50623 String!52180) (t!343358 List!45327)) )
))
(declare-fun noDuplicateTag!3033 (LexerInterface!7045 List!45326 List!45327) Bool)

(assert (=> b!4154416 (noDuplicateTag!3033 thiss!26968 lt!1481193 Nil!45203)))

(declare-datatypes ((Unit!64423 0))(
  ( (Unit!64424) )
))
(declare-fun lt!1481192 () Unit!64423)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!26 (LexerInterface!7045 List!45327 List!45327 List!45326) Unit!64423)

(assert (=> b!4154416 (= lt!1481192 (lemmaNoDupTagThenAlsoWithSubListAcc!26 thiss!26968 (Cons!45203 (tag!8318 lt!1481194) Nil!45203) Nil!45203 lt!1481193))))

(declare-fun tail!6619 (List!45326) List!45326)

(assert (=> b!4154416 (= lt!1481193 (tail!6619 rules!4102))))

(declare-fun b!4154417 () Bool)

(declare-fun res!1701407 () Bool)

(assert (=> b!4154417 (=> (not res!1701407) (not e!2577766))))

(declare-fun contains!9151 (List!45326 Rule!14712) Bool)

(assert (=> b!4154417 (= res!1701407 (contains!9151 rules!4102 r2!597))))

(assert (=> b!4154418 (= e!2577760 (and tp!1266814 tp!1266815))))

(declare-fun b!4154419 () Bool)

(declare-fun e!2577759 () Bool)

(declare-fun tp!1266809 () Bool)

(declare-fun e!2577756 () Bool)

(assert (=> b!4154419 (= e!2577759 (and tp!1266809 (inv!59785 (tag!8318 (h!50622 rules!4102))) (inv!59787 (transformation!7456 (h!50622 rules!4102))) e!2577756))))

(declare-fun b!4154420 () Bool)

(declare-fun res!1701405 () Bool)

(assert (=> b!4154420 (=> (not res!1701405) (not e!2577766))))

(declare-fun noDuplicateTag$default$2!38 (LexerInterface!7045) List!45327)

(assert (=> b!4154420 (= res!1701405 (noDuplicateTag!3033 thiss!26968 rules!4102 (noDuplicateTag$default$2!38 thiss!26968)))))

(declare-fun b!4154421 () Bool)

(declare-fun res!1701408 () Bool)

(assert (=> b!4154421 (=> (not res!1701408) (not e!2577766))))

(assert (=> b!4154421 (= res!1701408 (contains!9151 rules!4102 r1!615))))

(declare-fun b!4154422 () Bool)

(declare-fun tp!1266818 () Bool)

(assert (=> b!4154422 (= e!2577761 (and e!2577759 tp!1266818))))

(assert (=> b!4154423 (= e!2577756 (and tp!1266812 tp!1266813))))

(declare-fun tp!1266811 () Bool)

(declare-fun b!4154424 () Bool)

(assert (=> b!4154424 (= e!2577763 (and tp!1266811 (inv!59785 (tag!8318 r2!597)) (inv!59787 (transformation!7456 r2!597)) e!2577755))))

(assert (= (and start!395486 res!1701404) b!4154421))

(assert (= (and b!4154421 res!1701408) b!4154417))

(assert (= (and b!4154417 res!1701407) b!4154420))

(assert (= (and b!4154420 res!1701405) b!4154412))

(assert (= (and b!4154412 res!1701403) b!4154414))

(assert (= (and b!4154414 res!1701406) b!4154416))

(assert (= b!4154419 b!4154423))

(assert (= b!4154422 b!4154419))

(assert (= (and start!395486 ((_ is Cons!45202) rules!4102)) b!4154422))

(assert (= b!4154415 b!4154418))

(assert (= start!395486 b!4154415))

(assert (= b!4154424 b!4154413))

(assert (= start!395486 b!4154424))

(declare-fun m!4749201 () Bool)

(assert (=> b!4154417 m!4749201))

(declare-fun m!4749203 () Bool)

(assert (=> b!4154421 m!4749203))

(declare-fun m!4749205 () Bool)

(assert (=> b!4154420 m!4749205))

(assert (=> b!4154420 m!4749205))

(declare-fun m!4749207 () Bool)

(assert (=> b!4154420 m!4749207))

(declare-fun m!4749209 () Bool)

(assert (=> b!4154419 m!4749209))

(declare-fun m!4749211 () Bool)

(assert (=> b!4154419 m!4749211))

(declare-fun m!4749213 () Bool)

(assert (=> b!4154415 m!4749213))

(declare-fun m!4749215 () Bool)

(assert (=> b!4154415 m!4749215))

(declare-fun m!4749217 () Bool)

(assert (=> b!4154412 m!4749217))

(declare-fun m!4749219 () Bool)

(assert (=> b!4154412 m!4749219))

(declare-fun m!4749221 () Bool)

(assert (=> b!4154414 m!4749221))

(declare-fun m!4749223 () Bool)

(assert (=> b!4154424 m!4749223))

(declare-fun m!4749225 () Bool)

(assert (=> b!4154424 m!4749225))

(declare-fun m!4749227 () Bool)

(assert (=> b!4154416 m!4749227))

(declare-fun m!4749229 () Bool)

(assert (=> b!4154416 m!4749229))

(declare-fun m!4749231 () Bool)

(assert (=> b!4154416 m!4749231))

(check-sat b_and!323419 (not b!4154421) b_and!323421 (not b_next!119759) (not b!4154416) b_and!323417 (not b_next!119761) b_and!323415 (not b!4154424) (not b_next!119755) (not b!4154414) (not b_next!119757) (not b!4154417) b_and!323413 (not b_next!119765) (not b!4154422) (not b!4154412) (not b_next!119763) b_and!323423 (not b!4154419) (not b!4154420) (not b!4154415))
(check-sat b_and!323419 b_and!323421 (not b_next!119759) b_and!323417 b_and!323413 (not b_next!119765) (not b_next!119763) (not b_next!119761) b_and!323415 (not b_next!119755) b_and!323423 (not b_next!119757))
