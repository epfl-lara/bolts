; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389716 () Bool)

(assert start!389716)

(declare-fun b!4112470 () Bool)

(declare-fun b_free!115739 () Bool)

(declare-fun b_next!116443 () Bool)

(assert (=> b!4112470 (= b_free!115739 (not b_next!116443))))

(declare-fun tp!1251264 () Bool)

(declare-fun b_and!317625 () Bool)

(assert (=> b!4112470 (= tp!1251264 b_and!317625)))

(declare-fun b_free!115741 () Bool)

(declare-fun b_next!116445 () Bool)

(assert (=> b!4112470 (= b_free!115741 (not b_next!116445))))

(declare-fun tp!1251262 () Bool)

(declare-fun b_and!317627 () Bool)

(assert (=> b!4112470 (= tp!1251262 b_and!317627)))

(declare-fun b!4112466 () Bool)

(declare-fun b_free!115743 () Bool)

(declare-fun b_next!116447 () Bool)

(assert (=> b!4112466 (= b_free!115743 (not b_next!116447))))

(declare-fun tp!1251263 () Bool)

(declare-fun b_and!317629 () Bool)

(assert (=> b!4112466 (= tp!1251263 b_and!317629)))

(declare-fun b_free!115745 () Bool)

(declare-fun b_next!116449 () Bool)

(assert (=> b!4112466 (= b_free!115745 (not b_next!116449))))

(declare-fun tp!1251259 () Bool)

(declare-fun b_and!317631 () Bool)

(assert (=> b!4112466 (= tp!1251259 b_and!317631)))

(declare-fun b!4112463 () Bool)

(declare-fun b_free!115747 () Bool)

(declare-fun b_next!116451 () Bool)

(assert (=> b!4112463 (= b_free!115747 (not b_next!116451))))

(declare-fun tp!1251260 () Bool)

(declare-fun b_and!317633 () Bool)

(assert (=> b!4112463 (= tp!1251260 b_and!317633)))

(declare-fun b_free!115749 () Bool)

(declare-fun b_next!116453 () Bool)

(assert (=> b!4112463 (= b_free!115749 (not b_next!116453))))

(declare-fun tp!1251261 () Bool)

(declare-fun b_and!317635 () Bool)

(assert (=> b!4112463 (= tp!1251261 b_and!317635)))

(declare-fun e!2551441 () Bool)

(declare-fun b!4112462 () Bool)

(declare-fun tp!1251268 () Bool)

(declare-datatypes ((List!44432 0))(
  ( (Nil!44308) (Cons!44308 (h!49728 (_ BitVec 16)) (t!340183 List!44432)) )
))
(declare-datatypes ((TokenValue!7438 0))(
  ( (FloatLiteralValue!14876 (text!52511 List!44432)) (TokenValueExt!7437 (__x!27093 Int)) (Broken!37190 (value!225993 List!44432)) (Object!7561) (End!7438) (Def!7438) (Underscore!7438) (Match!7438) (Else!7438) (Error!7438) (Case!7438) (If!7438) (Extends!7438) (Abstract!7438) (Class!7438) (Val!7438) (DelimiterValue!14876 (del!7498 List!44432)) (KeywordValue!7444 (value!225994 List!44432)) (CommentValue!14876 (value!225995 List!44432)) (WhitespaceValue!14876 (value!225996 List!44432)) (IndentationValue!7438 (value!225997 List!44432)) (String!50939) (Int32!7438) (Broken!37191 (value!225998 List!44432)) (Boolean!7439) (Unit!63716) (OperatorValue!7441 (op!7498 List!44432)) (IdentifierValue!14876 (value!225999 List!44432)) (IdentifierValue!14877 (value!226000 List!44432)) (WhitespaceValue!14877 (value!226001 List!44432)) (True!14876) (False!14876) (Broken!37192 (value!226002 List!44432)) (Broken!37193 (value!226003 List!44432)) (True!14877) (RightBrace!7438) (RightBracket!7438) (Colon!7438) (Null!7438) (Comma!7438) (LeftBracket!7438) (False!14877) (LeftBrace!7438) (ImaginaryLiteralValue!7438 (text!52512 List!44432)) (StringLiteralValue!22314 (value!226004 List!44432)) (EOFValue!7438 (value!226005 List!44432)) (IdentValue!7438 (value!226006 List!44432)) (DelimiterValue!14877 (value!226007 List!44432)) (DedentValue!7438 (value!226008 List!44432)) (NewLineValue!7438 (value!226009 List!44432)) (IntegerValue!22314 (value!226010 (_ BitVec 32)) (text!52513 List!44432)) (IntegerValue!22315 (value!226011 Int) (text!52514 List!44432)) (Times!7438) (Or!7438) (Equal!7438) (Minus!7438) (Broken!37194 (value!226012 List!44432)) (And!7438) (Div!7438) (LessEqual!7438) (Mod!7438) (Concat!19551) (Not!7438) (Plus!7438) (SpaceValue!7438 (value!226013 List!44432)) (IntegerValue!22316 (value!226014 Int) (text!52515 List!44432)) (StringLiteralValue!22315 (text!52516 List!44432)) (FloatLiteralValue!14877 (text!52517 List!44432)) (BytesLiteralValue!7438 (value!226015 List!44432)) (CommentValue!14877 (value!226016 List!44432)) (StringLiteralValue!22316 (value!226017 List!44432)) (ErrorTokenValue!7438 (msg!7499 List!44432)) )
))
(declare-datatypes ((C!24412 0))(
  ( (C!24413 (val!14316 Int)) )
))
(declare-datatypes ((List!44433 0))(
  ( (Nil!44309) (Cons!44309 (h!49729 C!24412) (t!340184 List!44433)) )
))
(declare-datatypes ((IArray!26843 0))(
  ( (IArray!26844 (innerList!13479 List!44433)) )
))
(declare-datatypes ((Conc!13419 0))(
  ( (Node!13419 (left!33221 Conc!13419) (right!33551 Conc!13419) (csize!27068 Int) (cheight!13630 Int)) (Leaf!20738 (xs!16725 IArray!26843) (csize!27069 Int)) (Empty!13419) )
))
(declare-datatypes ((BalanceConc!26432 0))(
  ( (BalanceConc!26433 (c!706908 Conc!13419)) )
))
(declare-datatypes ((String!50940 0))(
  ( (String!50941 (value!226018 String)) )
))
(declare-datatypes ((Regex!12113 0))(
  ( (ElementMatch!12113 (c!706909 C!24412)) (Concat!19552 (regOne!24738 Regex!12113) (regTwo!24738 Regex!12113)) (EmptyExpr!12113) (Star!12113 (reg!12442 Regex!12113)) (EmptyLang!12113) (Union!12113 (regOne!24739 Regex!12113) (regTwo!24739 Regex!12113)) )
))
(declare-datatypes ((TokenValueInjection!14304 0))(
  ( (TokenValueInjection!14305 (toValue!9848 Int) (toChars!9707 Int)) )
))
(declare-datatypes ((Rule!14216 0))(
  ( (Rule!14217 (regex!7208 Regex!12113) (tag!8068 String!50940) (isSeparator!7208 Bool) (transformation!7208 TokenValueInjection!14304)) )
))
(declare-fun e2!99 () Rule!14216)

(declare-fun e!2551444 () Bool)

(declare-fun inv!58929 (String!50940) Bool)

(declare-fun inv!58931 (TokenValueInjection!14304) Bool)

(assert (=> b!4112462 (= e!2551444 (and tp!1251268 (inv!58929 (tag!8068 e2!99)) (inv!58931 (transformation!7208 e2!99)) e!2551441))))

(declare-fun e!2551442 () Bool)

(assert (=> b!4112463 (= e!2551442 (and tp!1251260 tp!1251261))))

(declare-fun b!4112464 () Bool)

(declare-fun tp!1251267 () Bool)

(declare-fun e!2551452 () Bool)

(declare-fun e!2551445 () Bool)

(declare-datatypes ((List!44434 0))(
  ( (Nil!44310) (Cons!44310 (h!49730 Rule!14216) (t!340185 List!44434)) )
))
(declare-fun l!6462 () List!44434)

(assert (=> b!4112464 (= e!2551452 (and tp!1251267 (inv!58929 (tag!8068 (h!49730 l!6462))) (inv!58931 (transformation!7208 (h!49730 l!6462))) e!2551445))))

(declare-fun res!1679993 () Bool)

(declare-fun e!2551454 () Bool)

(assert (=> start!389716 (=> (not res!1679993) (not e!2551454))))

(declare-datatypes ((LexerInterface!6797 0))(
  ( (LexerInterfaceExt!6794 (__x!27094 Int)) (Lexer!6795) )
))
(declare-fun thiss!26878 () LexerInterface!6797)

(get-info :version)

(assert (=> start!389716 (= res!1679993 ((_ is Lexer!6795) thiss!26878))))

(assert (=> start!389716 e!2551454))

(assert (=> start!389716 true))

(declare-fun e!2551455 () Bool)

(assert (=> start!389716 e!2551455))

(assert (=> start!389716 e!2551444))

(declare-fun e!2551453 () Bool)

(assert (=> start!389716 e!2551453))

(declare-fun b!4112465 () Bool)

(declare-fun e!2551448 () Bool)

(declare-fun e!2551451 () Bool)

(assert (=> b!4112465 (= e!2551448 e!2551451)))

(declare-fun res!1679992 () Bool)

(assert (=> b!4112465 (=> (not res!1679992) (not e!2551451))))

(declare-datatypes ((List!44435 0))(
  ( (Nil!44311) (Cons!44311 (h!49731 String!50940) (t!340186 List!44435)) )
))
(declare-fun lt!1468342 () List!44435)

(declare-fun noDuplicateTag!2885 (LexerInterface!6797 List!44434 List!44435) Bool)

(assert (=> b!4112465 (= res!1679992 (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468342))))

(declare-fun lt!1468343 () List!44435)

(assert (=> b!4112465 (= lt!1468342 (Cons!44311 (tag!8068 e2!99) lt!1468343))))

(assert (=> b!4112466 (= e!2551441 (and tp!1251263 tp!1251259))))

(declare-fun b!4112467 () Bool)

(declare-fun e!2551443 () Bool)

(assert (=> b!4112467 (= e!2551454 e!2551443)))

(declare-fun res!1679995 () Bool)

(assert (=> b!4112467 (=> (not res!1679995) (not e!2551443))))

(declare-fun e1!99 () Rule!14216)

(declare-fun lt!1468341 () List!44434)

(assert (=> b!4112467 (= res!1679995 (noDuplicateTag!2885 thiss!26878 (Cons!44310 e1!99 lt!1468341) Nil!44311))))

(assert (=> b!4112467 (= lt!1468341 (Cons!44310 e2!99 l!6462))))

(declare-fun b!4112468 () Bool)

(declare-fun tp!1251266 () Bool)

(assert (=> b!4112468 (= e!2551453 (and e!2551452 tp!1251266))))

(declare-fun b!4112469 () Bool)

(declare-fun e!2551446 () Bool)

(assert (=> b!4112469 (= e!2551446 (not (noDuplicateTag!2885 thiss!26878 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)) Nil!44311)))))

(declare-fun lt!1468345 () List!44435)

(assert (=> b!4112469 (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468345)))

(declare-datatypes ((Unit!63717 0))(
  ( (Unit!63718) )
))
(declare-fun lt!1468344 () Unit!63717)

(declare-fun lemmaNoDuplicateSameWithAccWithSameContent!4 (LexerInterface!6797 List!44434 List!44435 List!44435) Unit!63717)

(assert (=> b!4112469 (= lt!1468344 (lemmaNoDuplicateSameWithAccWithSameContent!4 thiss!26878 l!6462 lt!1468342 lt!1468345))))

(assert (=> b!4112470 (= e!2551445 (and tp!1251264 tp!1251262))))

(declare-fun b!4112471 () Bool)

(assert (=> b!4112471 (= e!2551443 e!2551448)))

(declare-fun res!1679994 () Bool)

(assert (=> b!4112471 (=> (not res!1679994) (not e!2551448))))

(assert (=> b!4112471 (= res!1679994 (noDuplicateTag!2885 thiss!26878 lt!1468341 lt!1468343))))

(assert (=> b!4112471 (= lt!1468343 (Cons!44311 (tag!8068 e1!99) Nil!44311))))

(declare-fun b!4112472 () Bool)

(declare-fun tp!1251265 () Bool)

(assert (=> b!4112472 (= e!2551455 (and tp!1251265 (inv!58929 (tag!8068 e1!99)) (inv!58931 (transformation!7208 e1!99)) e!2551442))))

(declare-fun b!4112473 () Bool)

(assert (=> b!4112473 (= e!2551451 e!2551446)))

(declare-fun res!1679991 () Bool)

(assert (=> b!4112473 (=> (not res!1679991) (not e!2551446))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toSet!13 (List!44435) (InoxSet String!50940))

(assert (=> b!4112473 (= res!1679991 (= (toSet!13 lt!1468342) (toSet!13 lt!1468345)))))

(assert (=> b!4112473 (= lt!1468345 (Cons!44311 (tag!8068 e1!99) (Cons!44311 (tag!8068 e2!99) Nil!44311)))))

(assert (= (and start!389716 res!1679993) b!4112467))

(assert (= (and b!4112467 res!1679995) b!4112471))

(assert (= (and b!4112471 res!1679994) b!4112465))

(assert (= (and b!4112465 res!1679992) b!4112473))

(assert (= (and b!4112473 res!1679991) b!4112469))

(assert (= b!4112472 b!4112463))

(assert (= start!389716 b!4112472))

(assert (= b!4112462 b!4112466))

(assert (= start!389716 b!4112462))

(assert (= b!4112464 b!4112470))

(assert (= b!4112468 b!4112464))

(assert (= (and start!389716 ((_ is Cons!44310) l!6462)) b!4112468))

(declare-fun m!4713761 () Bool)

(assert (=> b!4112472 m!4713761))

(declare-fun m!4713763 () Bool)

(assert (=> b!4112472 m!4713763))

(declare-fun m!4713765 () Bool)

(assert (=> b!4112464 m!4713765))

(declare-fun m!4713767 () Bool)

(assert (=> b!4112464 m!4713767))

(declare-fun m!4713769 () Bool)

(assert (=> b!4112471 m!4713769))

(declare-fun m!4713771 () Bool)

(assert (=> b!4112473 m!4713771))

(declare-fun m!4713773 () Bool)

(assert (=> b!4112473 m!4713773))

(declare-fun m!4713775 () Bool)

(assert (=> b!4112469 m!4713775))

(declare-fun m!4713777 () Bool)

(assert (=> b!4112469 m!4713777))

(declare-fun m!4713779 () Bool)

(assert (=> b!4112469 m!4713779))

(declare-fun m!4713781 () Bool)

(assert (=> b!4112462 m!4713781))

(declare-fun m!4713783 () Bool)

(assert (=> b!4112462 m!4713783))

(declare-fun m!4713785 () Bool)

(assert (=> b!4112465 m!4713785))

(declare-fun m!4713787 () Bool)

(assert (=> b!4112467 m!4713787))

(check-sat (not b_next!116447) (not b!4112465) b_and!317629 (not b_next!116451) b_and!317631 (not b_next!116443) (not b_next!116445) b_and!317633 b_and!317625 (not b!4112462) (not b!4112468) (not b_next!116449) (not b!4112472) (not b!4112469) (not b!4112467) (not b!4112464) (not b!4112471) (not b_next!116453) (not b!4112473) b_and!317627 b_and!317635)
(check-sat (not b_next!116447) b_and!317629 (not b_next!116451) b_and!317631 (not b_next!116443) (not b_next!116445) b_and!317633 b_and!317625 (not b_next!116449) (not b_next!116453) b_and!317627 b_and!317635)
(get-model)

(declare-fun d!1219995 () Bool)

(declare-fun res!1680004 () Bool)

(declare-fun e!2551460 () Bool)

(assert (=> d!1219995 (=> res!1680004 e!2551460)))

(assert (=> d!1219995 (= res!1680004 ((_ is Nil!44310) lt!1468341))))

(assert (=> d!1219995 (= (noDuplicateTag!2885 thiss!26878 lt!1468341 lt!1468343) e!2551460)))

(declare-fun b!4112478 () Bool)

(declare-fun e!2551461 () Bool)

(assert (=> b!4112478 (= e!2551460 e!2551461)))

(declare-fun res!1680005 () Bool)

(assert (=> b!4112478 (=> (not res!1680005) (not e!2551461))))

(declare-fun contains!8881 (List!44435 String!50940) Bool)

(assert (=> b!4112478 (= res!1680005 (not (contains!8881 lt!1468343 (tag!8068 (h!49730 lt!1468341)))))))

(declare-fun b!4112479 () Bool)

(assert (=> b!4112479 (= e!2551461 (noDuplicateTag!2885 thiss!26878 (t!340185 lt!1468341) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)))))

(assert (= (and d!1219995 (not res!1680004)) b!4112478))

(assert (= (and b!4112478 res!1680005) b!4112479))

(declare-fun m!4713789 () Bool)

(assert (=> b!4112478 m!4713789))

(declare-fun m!4713791 () Bool)

(assert (=> b!4112479 m!4713791))

(assert (=> b!4112471 d!1219995))

(declare-fun d!1219997 () Bool)

(declare-fun res!1680006 () Bool)

(declare-fun e!2551462 () Bool)

(assert (=> d!1219997 (=> res!1680006 e!2551462)))

(assert (=> d!1219997 (= res!1680006 ((_ is Nil!44310) l!6462))))

(assert (=> d!1219997 (= (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468342) e!2551462)))

(declare-fun b!4112480 () Bool)

(declare-fun e!2551463 () Bool)

(assert (=> b!4112480 (= e!2551462 e!2551463)))

(declare-fun res!1680007 () Bool)

(assert (=> b!4112480 (=> (not res!1680007) (not e!2551463))))

(assert (=> b!4112480 (= res!1680007 (not (contains!8881 lt!1468342 (tag!8068 (h!49730 l!6462)))))))

(declare-fun b!4112481 () Bool)

(assert (=> b!4112481 (= e!2551463 (noDuplicateTag!2885 thiss!26878 (t!340185 l!6462) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)))))

(assert (= (and d!1219997 (not res!1680006)) b!4112480))

(assert (= (and b!4112480 res!1680007) b!4112481))

(declare-fun m!4713793 () Bool)

(assert (=> b!4112480 m!4713793))

(declare-fun m!4713795 () Bool)

(assert (=> b!4112481 m!4713795))

(assert (=> b!4112465 d!1219997))

(declare-fun d!1219999 () Bool)

(declare-fun res!1680008 () Bool)

(declare-fun e!2551464 () Bool)

(assert (=> d!1219999 (=> res!1680008 e!2551464)))

(assert (=> d!1219999 (= res!1680008 ((_ is Nil!44310) (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))

(assert (=> d!1219999 (= (noDuplicateTag!2885 thiss!26878 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)) Nil!44311) e!2551464)))

(declare-fun b!4112482 () Bool)

(declare-fun e!2551465 () Bool)

(assert (=> b!4112482 (= e!2551464 e!2551465)))

(declare-fun res!1680009 () Bool)

(assert (=> b!4112482 (=> (not res!1680009) (not e!2551465))))

(assert (=> b!4112482 (= res!1680009 (not (contains!8881 Nil!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))))

(declare-fun b!4112483 () Bool)

(assert (=> b!4112483 (= e!2551465 (noDuplicateTag!2885 thiss!26878 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)))))

(assert (= (and d!1219999 (not res!1680008)) b!4112482))

(assert (= (and b!4112482 res!1680009) b!4112483))

(declare-fun m!4713797 () Bool)

(assert (=> b!4112482 m!4713797))

(declare-fun m!4713799 () Bool)

(assert (=> b!4112483 m!4713799))

(assert (=> b!4112469 d!1219999))

(declare-fun d!1220001 () Bool)

(declare-fun res!1680010 () Bool)

(declare-fun e!2551466 () Bool)

(assert (=> d!1220001 (=> res!1680010 e!2551466)))

(assert (=> d!1220001 (= res!1680010 ((_ is Nil!44310) l!6462))))

(assert (=> d!1220001 (= (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468345) e!2551466)))

(declare-fun b!4112484 () Bool)

(declare-fun e!2551467 () Bool)

(assert (=> b!4112484 (= e!2551466 e!2551467)))

(declare-fun res!1680011 () Bool)

(assert (=> b!4112484 (=> (not res!1680011) (not e!2551467))))

(assert (=> b!4112484 (= res!1680011 (not (contains!8881 lt!1468345 (tag!8068 (h!49730 l!6462)))))))

(declare-fun b!4112485 () Bool)

(assert (=> b!4112485 (= e!2551467 (noDuplicateTag!2885 thiss!26878 (t!340185 l!6462) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)))))

(assert (= (and d!1220001 (not res!1680010)) b!4112484))

(assert (= (and b!4112484 res!1680011) b!4112485))

(declare-fun m!4713801 () Bool)

(assert (=> b!4112484 m!4713801))

(declare-fun m!4713803 () Bool)

(assert (=> b!4112485 m!4713803))

(assert (=> b!4112469 d!1220001))

(declare-fun d!1220003 () Bool)

(assert (=> d!1220003 (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468345)))

(declare-fun lt!1468348 () Unit!63717)

(declare-fun choose!25139 (LexerInterface!6797 List!44434 List!44435 List!44435) Unit!63717)

(assert (=> d!1220003 (= lt!1468348 (choose!25139 thiss!26878 l!6462 lt!1468342 lt!1468345))))

(assert (=> d!1220003 (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468342)))

(assert (=> d!1220003 (= (lemmaNoDuplicateSameWithAccWithSameContent!4 thiss!26878 l!6462 lt!1468342 lt!1468345) lt!1468348)))

(declare-fun bs!594379 () Bool)

(assert (= bs!594379 d!1220003))

(assert (=> bs!594379 m!4713777))

(declare-fun m!4713805 () Bool)

(assert (=> bs!594379 m!4713805))

(assert (=> bs!594379 m!4713785))

(assert (=> b!4112469 d!1220003))

(declare-fun d!1220005 () Bool)

(assert (=> d!1220005 (= (inv!58929 (tag!8068 (h!49730 l!6462))) (= (mod (str.len (value!226018 (tag!8068 (h!49730 l!6462)))) 2) 0))))

(assert (=> b!4112464 d!1220005))

(declare-fun d!1220007 () Bool)

(declare-fun res!1680015 () Bool)

(declare-fun e!2551470 () Bool)

(assert (=> d!1220007 (=> (not res!1680015) (not e!2551470))))

(declare-fun semiInverseModEq!3107 (Int Int) Bool)

(assert (=> d!1220007 (= res!1680015 (semiInverseModEq!3107 (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 (h!49730 l!6462)))))))

(assert (=> d!1220007 (= (inv!58931 (transformation!7208 (h!49730 l!6462))) e!2551470)))

(declare-fun b!4112488 () Bool)

(declare-fun equivClasses!3006 (Int Int) Bool)

(assert (=> b!4112488 (= e!2551470 (equivClasses!3006 (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 (h!49730 l!6462)))))))

(assert (= (and d!1220007 res!1680015) b!4112488))

(declare-fun m!4713807 () Bool)

(assert (=> d!1220007 m!4713807))

(declare-fun m!4713809 () Bool)

(assert (=> b!4112488 m!4713809))

(assert (=> b!4112464 d!1220007))

(declare-fun d!1220009 () Bool)

(declare-fun lambda!128498 () Int)

(declare-fun foldLeft!6 (List!44435 (InoxSet String!50940) Int) (InoxSet String!50940))

(assert (=> d!1220009 (= (toSet!13 lt!1468342) (foldLeft!6 lt!1468342 ((as const (Array String!50940 Bool)) false) lambda!128498))))

(declare-fun bs!594380 () Bool)

(assert (= bs!594380 d!1220009))

(declare-fun m!4713811 () Bool)

(assert (=> bs!594380 m!4713811))

(assert (=> b!4112473 d!1220009))

(declare-fun bs!594381 () Bool)

(declare-fun d!1220011 () Bool)

(assert (= bs!594381 (and d!1220011 d!1220009)))

(declare-fun lambda!128499 () Int)

(assert (=> bs!594381 (= lambda!128499 lambda!128498)))

(assert (=> d!1220011 (= (toSet!13 lt!1468345) (foldLeft!6 lt!1468345 ((as const (Array String!50940 Bool)) false) lambda!128499))))

(declare-fun bs!594382 () Bool)

(assert (= bs!594382 d!1220011))

(declare-fun m!4713813 () Bool)

(assert (=> bs!594382 m!4713813))

(assert (=> b!4112473 d!1220011))

(declare-fun d!1220013 () Bool)

(declare-fun res!1680019 () Bool)

(declare-fun e!2551471 () Bool)

(assert (=> d!1220013 (=> res!1680019 e!2551471)))

(assert (=> d!1220013 (= res!1680019 ((_ is Nil!44310) (Cons!44310 e1!99 lt!1468341)))))

(assert (=> d!1220013 (= (noDuplicateTag!2885 thiss!26878 (Cons!44310 e1!99 lt!1468341) Nil!44311) e!2551471)))

(declare-fun b!4112489 () Bool)

(declare-fun e!2551472 () Bool)

(assert (=> b!4112489 (= e!2551471 e!2551472)))

(declare-fun res!1680020 () Bool)

(assert (=> b!4112489 (=> (not res!1680020) (not e!2551472))))

(assert (=> b!4112489 (= res!1680020 (not (contains!8881 Nil!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))))))))

(declare-fun b!4112490 () Bool)

(assert (=> b!4112490 (= e!2551472 (noDuplicateTag!2885 thiss!26878 (t!340185 (Cons!44310 e1!99 lt!1468341)) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)))))

(assert (= (and d!1220013 (not res!1680019)) b!4112489))

(assert (= (and b!4112489 res!1680020) b!4112490))

(declare-fun m!4713815 () Bool)

(assert (=> b!4112489 m!4713815))

(declare-fun m!4713817 () Bool)

(assert (=> b!4112490 m!4713817))

(assert (=> b!4112467 d!1220013))

(declare-fun d!1220015 () Bool)

(assert (=> d!1220015 (= (inv!58929 (tag!8068 e2!99)) (= (mod (str.len (value!226018 (tag!8068 e2!99))) 2) 0))))

(assert (=> b!4112462 d!1220015))

(declare-fun d!1220017 () Bool)

(declare-fun res!1680021 () Bool)

(declare-fun e!2551473 () Bool)

(assert (=> d!1220017 (=> (not res!1680021) (not e!2551473))))

(assert (=> d!1220017 (= res!1680021 (semiInverseModEq!3107 (toChars!9707 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e2!99))))))

(assert (=> d!1220017 (= (inv!58931 (transformation!7208 e2!99)) e!2551473)))

(declare-fun b!4112491 () Bool)

(assert (=> b!4112491 (= e!2551473 (equivClasses!3006 (toChars!9707 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e2!99))))))

(assert (= (and d!1220017 res!1680021) b!4112491))

(declare-fun m!4713819 () Bool)

(assert (=> d!1220017 m!4713819))

(declare-fun m!4713821 () Bool)

(assert (=> b!4112491 m!4713821))

(assert (=> b!4112462 d!1220017))

(declare-fun d!1220019 () Bool)

(assert (=> d!1220019 (= (inv!58929 (tag!8068 e1!99)) (= (mod (str.len (value!226018 (tag!8068 e1!99))) 2) 0))))

(assert (=> b!4112472 d!1220019))

(declare-fun d!1220021 () Bool)

(declare-fun res!1680022 () Bool)

(declare-fun e!2551474 () Bool)

(assert (=> d!1220021 (=> (not res!1680022) (not e!2551474))))

(assert (=> d!1220021 (= res!1680022 (semiInverseModEq!3107 (toChars!9707 (transformation!7208 e1!99)) (toValue!9848 (transformation!7208 e1!99))))))

(assert (=> d!1220021 (= (inv!58931 (transformation!7208 e1!99)) e!2551474)))

(declare-fun b!4112492 () Bool)

(assert (=> b!4112492 (= e!2551474 (equivClasses!3006 (toChars!9707 (transformation!7208 e1!99)) (toValue!9848 (transformation!7208 e1!99))))))

(assert (= (and d!1220021 res!1680022) b!4112492))

(declare-fun m!4713823 () Bool)

(assert (=> d!1220021 m!4713823))

(declare-fun m!4713825 () Bool)

(assert (=> b!4112492 m!4713825))

(assert (=> b!4112472 d!1220021))

(declare-fun b!4112503 () Bool)

(declare-fun e!2551477 () Bool)

(declare-fun tp_is_empty!21171 () Bool)

(assert (=> b!4112503 (= e!2551477 tp_is_empty!21171)))

(assert (=> b!4112464 (= tp!1251267 e!2551477)))

(declare-fun b!4112504 () Bool)

(declare-fun tp!1251283 () Bool)

(declare-fun tp!1251281 () Bool)

(assert (=> b!4112504 (= e!2551477 (and tp!1251283 tp!1251281))))

(declare-fun b!4112506 () Bool)

(declare-fun tp!1251280 () Bool)

(declare-fun tp!1251279 () Bool)

(assert (=> b!4112506 (= e!2551477 (and tp!1251280 tp!1251279))))

(declare-fun b!4112505 () Bool)

(declare-fun tp!1251282 () Bool)

(assert (=> b!4112505 (= e!2551477 tp!1251282)))

(assert (= (and b!4112464 ((_ is ElementMatch!12113) (regex!7208 (h!49730 l!6462)))) b!4112503))

(assert (= (and b!4112464 ((_ is Concat!19552) (regex!7208 (h!49730 l!6462)))) b!4112504))

(assert (= (and b!4112464 ((_ is Star!12113) (regex!7208 (h!49730 l!6462)))) b!4112505))

(assert (= (and b!4112464 ((_ is Union!12113) (regex!7208 (h!49730 l!6462)))) b!4112506))

(declare-fun b!4112517 () Bool)

(declare-fun b_free!115751 () Bool)

(declare-fun b_next!116455 () Bool)

(assert (=> b!4112517 (= b_free!115751 (not b_next!116455))))

(declare-fun tp!1251294 () Bool)

(declare-fun b_and!317637 () Bool)

(assert (=> b!4112517 (= tp!1251294 b_and!317637)))

(declare-fun b_free!115753 () Bool)

(declare-fun b_next!116457 () Bool)

(assert (=> b!4112517 (= b_free!115753 (not b_next!116457))))

(declare-fun tp!1251292 () Bool)

(declare-fun b_and!317639 () Bool)

(assert (=> b!4112517 (= tp!1251292 b_and!317639)))

(declare-fun e!2551488 () Bool)

(assert (=> b!4112517 (= e!2551488 (and tp!1251294 tp!1251292))))

(declare-fun b!4112516 () Bool)

(declare-fun tp!1251293 () Bool)

(declare-fun e!2551489 () Bool)

(assert (=> b!4112516 (= e!2551489 (and tp!1251293 (inv!58929 (tag!8068 (h!49730 (t!340185 l!6462)))) (inv!58931 (transformation!7208 (h!49730 (t!340185 l!6462)))) e!2551488))))

(declare-fun b!4112515 () Bool)

(declare-fun e!2551486 () Bool)

(declare-fun tp!1251295 () Bool)

(assert (=> b!4112515 (= e!2551486 (and e!2551489 tp!1251295))))

(assert (=> b!4112468 (= tp!1251266 e!2551486)))

(assert (= b!4112516 b!4112517))

(assert (= b!4112515 b!4112516))

(assert (= (and b!4112468 ((_ is Cons!44310) (t!340185 l!6462))) b!4112515))

(declare-fun m!4713827 () Bool)

(assert (=> b!4112516 m!4713827))

(declare-fun m!4713829 () Bool)

(assert (=> b!4112516 m!4713829))

(declare-fun b!4112518 () Bool)

(declare-fun e!2551490 () Bool)

(assert (=> b!4112518 (= e!2551490 tp_is_empty!21171)))

(assert (=> b!4112462 (= tp!1251268 e!2551490)))

(declare-fun b!4112519 () Bool)

(declare-fun tp!1251300 () Bool)

(declare-fun tp!1251298 () Bool)

(assert (=> b!4112519 (= e!2551490 (and tp!1251300 tp!1251298))))

(declare-fun b!4112521 () Bool)

(declare-fun tp!1251297 () Bool)

(declare-fun tp!1251296 () Bool)

(assert (=> b!4112521 (= e!2551490 (and tp!1251297 tp!1251296))))

(declare-fun b!4112520 () Bool)

(declare-fun tp!1251299 () Bool)

(assert (=> b!4112520 (= e!2551490 tp!1251299)))

(assert (= (and b!4112462 ((_ is ElementMatch!12113) (regex!7208 e2!99))) b!4112518))

(assert (= (and b!4112462 ((_ is Concat!19552) (regex!7208 e2!99))) b!4112519))

(assert (= (and b!4112462 ((_ is Star!12113) (regex!7208 e2!99))) b!4112520))

(assert (= (and b!4112462 ((_ is Union!12113) (regex!7208 e2!99))) b!4112521))

(declare-fun b!4112522 () Bool)

(declare-fun e!2551491 () Bool)

(assert (=> b!4112522 (= e!2551491 tp_is_empty!21171)))

(assert (=> b!4112472 (= tp!1251265 e!2551491)))

(declare-fun b!4112523 () Bool)

(declare-fun tp!1251305 () Bool)

(declare-fun tp!1251303 () Bool)

(assert (=> b!4112523 (= e!2551491 (and tp!1251305 tp!1251303))))

(declare-fun b!4112525 () Bool)

(declare-fun tp!1251302 () Bool)

(declare-fun tp!1251301 () Bool)

(assert (=> b!4112525 (= e!2551491 (and tp!1251302 tp!1251301))))

(declare-fun b!4112524 () Bool)

(declare-fun tp!1251304 () Bool)

(assert (=> b!4112524 (= e!2551491 tp!1251304)))

(assert (= (and b!4112472 ((_ is ElementMatch!12113) (regex!7208 e1!99))) b!4112522))

(assert (= (and b!4112472 ((_ is Concat!19552) (regex!7208 e1!99))) b!4112523))

(assert (= (and b!4112472 ((_ is Star!12113) (regex!7208 e1!99))) b!4112524))

(assert (= (and b!4112472 ((_ is Union!12113) (regex!7208 e1!99))) b!4112525))

(check-sat (not b!4112478) (not b!4112524) (not d!1220009) (not b!4112515) (not b!4112506) (not b!4112479) (not b!4112520) (not b!4112516) (not b!4112505) (not b_next!116455) (not b_next!116447) (not b!4112488) (not b_next!116457) (not b!4112504) (not b!4112490) (not d!1220011) (not b!4112480) (not b!4112519) b_and!317629 (not b!4112489) (not b_next!116451) b_and!317631 (not b!4112521) (not d!1220017) (not b!4112491) b_and!317639 (not b_next!116443) (not b_next!116445) (not b!4112485) (not b!4112525) (not b!4112492) b_and!317633 (not d!1220007) (not b!4112482) (not d!1220003) b_and!317625 (not b!4112523) tp_is_empty!21171 (not b_next!116449) b_and!317637 (not b!4112483) (not b!4112481) (not d!1220021) (not b!4112484) (not b_next!116453) b_and!317627 b_and!317635)
(check-sat b_and!317629 (not b_next!116451) b_and!317631 (not b_next!116445) b_and!317633 b_and!317625 (not b_next!116453) (not b_next!116455) (not b_next!116447) (not b_next!116457) b_and!317639 (not b_next!116443) (not b_next!116449) b_and!317637 b_and!317627 b_and!317635)
(get-model)

(declare-fun d!1220051 () Bool)

(assert (=> d!1220051 true))

(declare-fun lambda!128506 () Int)

(declare-fun order!23327 () Int)

(declare-fun order!23329 () Int)

(declare-fun dynLambda!18948 (Int Int) Int)

(declare-fun dynLambda!18949 (Int Int) Int)

(assert (=> d!1220051 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 e1!99))) (dynLambda!18949 order!23329 lambda!128506))))

(declare-fun Forall2!1138 (Int) Bool)

(assert (=> d!1220051 (= (equivClasses!3006 (toChars!9707 (transformation!7208 e1!99)) (toValue!9848 (transformation!7208 e1!99))) (Forall2!1138 lambda!128506))))

(declare-fun bs!594387 () Bool)

(assert (= bs!594387 d!1220051))

(declare-fun m!4713877 () Bool)

(assert (=> bs!594387 m!4713877))

(assert (=> b!4112492 d!1220051))

(declare-fun lt!1468354 () Bool)

(declare-fun d!1220057 () Bool)

(declare-fun content!6827 (List!44435) (InoxSet String!50940))

(assert (=> d!1220057 (= lt!1468354 (select (content!6827 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))))

(declare-fun e!2551537 () Bool)

(assert (=> d!1220057 (= lt!1468354 e!2551537)))

(declare-fun res!1680056 () Bool)

(assert (=> d!1220057 (=> (not res!1680056) (not e!2551537))))

(assert (=> d!1220057 (= res!1680056 ((_ is Cons!44311) Nil!44311))))

(assert (=> d!1220057 (= (contains!8881 Nil!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) lt!1468354)))

(declare-fun b!4112592 () Bool)

(declare-fun e!2551538 () Bool)

(assert (=> b!4112592 (= e!2551537 e!2551538)))

(declare-fun res!1680055 () Bool)

(assert (=> b!4112592 (=> res!1680055 e!2551538)))

(assert (=> b!4112592 (= res!1680055 (= (h!49731 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))))

(declare-fun b!4112593 () Bool)

(assert (=> b!4112593 (= e!2551538 (contains!8881 (t!340186 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))))

(assert (= (and d!1220057 res!1680056) b!4112592))

(assert (= (and b!4112592 (not res!1680055)) b!4112593))

(declare-fun m!4713879 () Bool)

(assert (=> d!1220057 m!4713879))

(declare-fun m!4713881 () Bool)

(assert (=> d!1220057 m!4713881))

(declare-fun m!4713883 () Bool)

(assert (=> b!4112593 m!4713883))

(assert (=> b!4112482 d!1220057))

(declare-fun bs!594388 () Bool)

(declare-fun d!1220059 () Bool)

(assert (= bs!594388 (and d!1220059 d!1220051)))

(declare-fun lambda!128507 () Int)

(assert (=> bs!594388 (= (= (toValue!9848 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e1!99))) (= lambda!128507 lambda!128506))))

(assert (=> d!1220059 true))

(assert (=> d!1220059 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 e2!99))) (dynLambda!18949 order!23329 lambda!128507))))

(assert (=> d!1220059 (= (equivClasses!3006 (toChars!9707 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e2!99))) (Forall2!1138 lambda!128507))))

(declare-fun bs!594389 () Bool)

(assert (= bs!594389 d!1220059))

(declare-fun m!4713885 () Bool)

(assert (=> bs!594389 m!4713885))

(assert (=> b!4112491 d!1220059))

(declare-fun d!1220061 () Bool)

(declare-fun res!1680057 () Bool)

(declare-fun e!2551539 () Bool)

(assert (=> d!1220061 (=> res!1680057 e!2551539)))

(assert (=> d!1220061 (= res!1680057 ((_ is Nil!44310) (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))

(assert (=> d!1220061 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)) e!2551539)))

(declare-fun b!4112594 () Bool)

(declare-fun e!2551540 () Bool)

(assert (=> b!4112594 (= e!2551539 e!2551540)))

(declare-fun res!1680058 () Bool)

(assert (=> b!4112594 (=> (not res!1680058) (not e!2551540))))

(assert (=> b!4112594 (= res!1680058 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311) (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))))))

(declare-fun b!4112595 () Bool)

(assert (=> b!4112595 (= e!2551540 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311))))))

(assert (= (and d!1220061 (not res!1680057)) b!4112594))

(assert (= (and b!4112594 res!1680058) b!4112595))

(declare-fun m!4713887 () Bool)

(assert (=> b!4112594 m!4713887))

(declare-fun m!4713889 () Bool)

(assert (=> b!4112595 m!4713889))

(assert (=> b!4112483 d!1220061))

(declare-fun d!1220063 () Bool)

(declare-fun lt!1468355 () Bool)

(assert (=> d!1220063 (= lt!1468355 (select (content!6827 lt!1468342) (tag!8068 (h!49730 l!6462))))))

(declare-fun e!2551541 () Bool)

(assert (=> d!1220063 (= lt!1468355 e!2551541)))

(declare-fun res!1680060 () Bool)

(assert (=> d!1220063 (=> (not res!1680060) (not e!2551541))))

(assert (=> d!1220063 (= res!1680060 ((_ is Cons!44311) lt!1468342))))

(assert (=> d!1220063 (= (contains!8881 lt!1468342 (tag!8068 (h!49730 l!6462))) lt!1468355)))

(declare-fun b!4112596 () Bool)

(declare-fun e!2551542 () Bool)

(assert (=> b!4112596 (= e!2551541 e!2551542)))

(declare-fun res!1680059 () Bool)

(assert (=> b!4112596 (=> res!1680059 e!2551542)))

(assert (=> b!4112596 (= res!1680059 (= (h!49731 lt!1468342) (tag!8068 (h!49730 l!6462))))))

(declare-fun b!4112597 () Bool)

(assert (=> b!4112597 (= e!2551542 (contains!8881 (t!340186 lt!1468342) (tag!8068 (h!49730 l!6462))))))

(assert (= (and d!1220063 res!1680060) b!4112596))

(assert (= (and b!4112596 (not res!1680059)) b!4112597))

(declare-fun m!4713891 () Bool)

(assert (=> d!1220063 m!4713891))

(declare-fun m!4713893 () Bool)

(assert (=> d!1220063 m!4713893))

(declare-fun m!4713895 () Bool)

(assert (=> b!4112597 m!4713895))

(assert (=> b!4112480 d!1220063))

(declare-fun d!1220065 () Bool)

(declare-fun lt!1468356 () Bool)

(assert (=> d!1220065 (= lt!1468356 (select (content!6827 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341)))))))

(declare-fun e!2551543 () Bool)

(assert (=> d!1220065 (= lt!1468356 e!2551543)))

(declare-fun res!1680062 () Bool)

(assert (=> d!1220065 (=> (not res!1680062) (not e!2551543))))

(assert (=> d!1220065 (= res!1680062 ((_ is Cons!44311) Nil!44311))))

(assert (=> d!1220065 (= (contains!8881 Nil!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341)))) lt!1468356)))

(declare-fun b!4112598 () Bool)

(declare-fun e!2551544 () Bool)

(assert (=> b!4112598 (= e!2551543 e!2551544)))

(declare-fun res!1680061 () Bool)

(assert (=> b!4112598 (=> res!1680061 e!2551544)))

(assert (=> b!4112598 (= res!1680061 (= (h!49731 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341)))))))

(declare-fun b!4112599 () Bool)

(assert (=> b!4112599 (= e!2551544 (contains!8881 (t!340186 Nil!44311) (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341)))))))

(assert (= (and d!1220065 res!1680062) b!4112598))

(assert (= (and b!4112598 (not res!1680061)) b!4112599))

(assert (=> d!1220065 m!4713879))

(declare-fun m!4713897 () Bool)

(assert (=> d!1220065 m!4713897))

(declare-fun m!4713899 () Bool)

(assert (=> b!4112599 m!4713899))

(assert (=> b!4112489 d!1220065))

(declare-fun d!1220067 () Bool)

(declare-fun res!1680063 () Bool)

(declare-fun e!2551545 () Bool)

(assert (=> d!1220067 (=> res!1680063 e!2551545)))

(assert (=> d!1220067 (= res!1680063 ((_ is Nil!44310) (t!340185 l!6462)))))

(assert (=> d!1220067 (= (noDuplicateTag!2885 thiss!26878 (t!340185 l!6462) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)) e!2551545)))

(declare-fun b!4112600 () Bool)

(declare-fun e!2551546 () Bool)

(assert (=> b!4112600 (= e!2551545 e!2551546)))

(declare-fun res!1680064 () Bool)

(assert (=> b!4112600 (=> (not res!1680064) (not e!2551546))))

(assert (=> b!4112600 (= res!1680064 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342) (tag!8068 (h!49730 (t!340185 l!6462))))))))

(declare-fun b!4112601 () Bool)

(assert (=> b!4112601 (= e!2551546 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 l!6462)) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342))))))

(assert (= (and d!1220067 (not res!1680063)) b!4112600))

(assert (= (and b!4112600 res!1680064) b!4112601))

(declare-fun m!4713901 () Bool)

(assert (=> b!4112600 m!4713901))

(declare-fun m!4713903 () Bool)

(assert (=> b!4112601 m!4713903))

(assert (=> b!4112481 d!1220067))

(declare-fun d!1220069 () Bool)

(declare-fun res!1680065 () Bool)

(declare-fun e!2551547 () Bool)

(assert (=> d!1220069 (=> res!1680065 e!2551547)))

(assert (=> d!1220069 (= res!1680065 ((_ is Nil!44310) (t!340185 (Cons!44310 e1!99 lt!1468341))))))

(assert (=> d!1220069 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (Cons!44310 e1!99 lt!1468341)) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)) e!2551547)))

(declare-fun b!4112602 () Bool)

(declare-fun e!2551548 () Bool)

(assert (=> b!4112602 (= e!2551547 e!2551548)))

(declare-fun res!1680066 () Bool)

(assert (=> b!4112602 (=> (not res!1680066) (not e!2551548))))

(assert (=> b!4112602 (= res!1680066 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311) (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341)))))))))

(declare-fun b!4112603 () Bool)

(assert (=> b!4112603 (= e!2551548 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311))))))

(assert (= (and d!1220069 (not res!1680065)) b!4112602))

(assert (= (and b!4112602 res!1680066) b!4112603))

(declare-fun m!4713905 () Bool)

(assert (=> b!4112602 m!4713905))

(declare-fun m!4713907 () Bool)

(assert (=> b!4112603 m!4713907))

(assert (=> b!4112490 d!1220069))

(assert (=> d!1220003 d!1220001))

(declare-fun d!1220071 () Bool)

(assert (=> d!1220071 (noDuplicateTag!2885 thiss!26878 l!6462 lt!1468345)))

(assert (=> d!1220071 true))

(declare-fun _$68!760 () Unit!63717)

(assert (=> d!1220071 (= (choose!25139 thiss!26878 l!6462 lt!1468342 lt!1468345) _$68!760)))

(declare-fun bs!594390 () Bool)

(assert (= bs!594390 d!1220071))

(assert (=> bs!594390 m!4713777))

(assert (=> d!1220003 d!1220071))

(assert (=> d!1220003 d!1219997))

(declare-fun d!1220073 () Bool)

(declare-fun lt!1468357 () Bool)

(assert (=> d!1220073 (= lt!1468357 (select (content!6827 lt!1468343) (tag!8068 (h!49730 lt!1468341))))))

(declare-fun e!2551549 () Bool)

(assert (=> d!1220073 (= lt!1468357 e!2551549)))

(declare-fun res!1680068 () Bool)

(assert (=> d!1220073 (=> (not res!1680068) (not e!2551549))))

(assert (=> d!1220073 (= res!1680068 ((_ is Cons!44311) lt!1468343))))

(assert (=> d!1220073 (= (contains!8881 lt!1468343 (tag!8068 (h!49730 lt!1468341))) lt!1468357)))

(declare-fun b!4112604 () Bool)

(declare-fun e!2551550 () Bool)

(assert (=> b!4112604 (= e!2551549 e!2551550)))

(declare-fun res!1680067 () Bool)

(assert (=> b!4112604 (=> res!1680067 e!2551550)))

(assert (=> b!4112604 (= res!1680067 (= (h!49731 lt!1468343) (tag!8068 (h!49730 lt!1468341))))))

(declare-fun b!4112605 () Bool)

(assert (=> b!4112605 (= e!2551550 (contains!8881 (t!340186 lt!1468343) (tag!8068 (h!49730 lt!1468341))))))

(assert (= (and d!1220073 res!1680068) b!4112604))

(assert (= (and b!4112604 (not res!1680067)) b!4112605))

(declare-fun m!4713909 () Bool)

(assert (=> d!1220073 m!4713909))

(declare-fun m!4713911 () Bool)

(assert (=> d!1220073 m!4713911))

(declare-fun m!4713913 () Bool)

(assert (=> b!4112605 m!4713913))

(assert (=> b!4112478 d!1220073))

(declare-fun d!1220075 () Bool)

(assert (=> d!1220075 true))

(declare-fun order!23331 () Int)

(declare-fun lambda!128510 () Int)

(declare-fun order!23333 () Int)

(declare-fun dynLambda!18950 (Int Int) Int)

(declare-fun dynLambda!18951 (Int Int) Int)

(assert (=> d!1220075 (< (dynLambda!18950 order!23331 (toChars!9707 (transformation!7208 e1!99))) (dynLambda!18951 order!23333 lambda!128510))))

(assert (=> d!1220075 true))

(assert (=> d!1220075 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 e1!99))) (dynLambda!18951 order!23333 lambda!128510))))

(declare-fun Forall!1539 (Int) Bool)

(assert (=> d!1220075 (= (semiInverseModEq!3107 (toChars!9707 (transformation!7208 e1!99)) (toValue!9848 (transformation!7208 e1!99))) (Forall!1539 lambda!128510))))

(declare-fun bs!594391 () Bool)

(assert (= bs!594391 d!1220075))

(declare-fun m!4713915 () Bool)

(assert (=> bs!594391 m!4713915))

(assert (=> d!1220021 d!1220075))

(declare-fun d!1220077 () Bool)

(declare-fun c!706915 () Bool)

(assert (=> d!1220077 (= c!706915 ((_ is Nil!44311) lt!1468345))))

(declare-fun e!2551553 () (InoxSet String!50940))

(assert (=> d!1220077 (= (foldLeft!6 lt!1468345 ((as const (Array String!50940 Bool)) false) lambda!128499) e!2551553)))

(declare-fun b!4112614 () Bool)

(assert (=> b!4112614 (= e!2551553 ((as const (Array String!50940 Bool)) false))))

(declare-fun b!4112615 () Bool)

(declare-fun dynLambda!18952 (Int (InoxSet String!50940) String!50940) (InoxSet String!50940))

(assert (=> b!4112615 (= e!2551553 (foldLeft!6 (t!340186 lt!1468345) (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) lambda!128499))))

(assert (= (and d!1220077 c!706915) b!4112614))

(assert (= (and d!1220077 (not c!706915)) b!4112615))

(declare-fun b_lambda!120681 () Bool)

(assert (=> (not b_lambda!120681) (not b!4112615)))

(declare-fun m!4713917 () Bool)

(assert (=> b!4112615 m!4713917))

(assert (=> b!4112615 m!4713917))

(declare-fun m!4713919 () Bool)

(assert (=> b!4112615 m!4713919))

(assert (=> d!1220011 d!1220077))

(declare-fun d!1220079 () Bool)

(declare-fun res!1680069 () Bool)

(declare-fun e!2551554 () Bool)

(assert (=> d!1220079 (=> res!1680069 e!2551554)))

(assert (=> d!1220079 (= res!1680069 ((_ is Nil!44310) (t!340185 lt!1468341)))))

(assert (=> d!1220079 (= (noDuplicateTag!2885 thiss!26878 (t!340185 lt!1468341) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)) e!2551554)))

(declare-fun b!4112616 () Bool)

(declare-fun e!2551555 () Bool)

(assert (=> b!4112616 (= e!2551554 e!2551555)))

(declare-fun res!1680070 () Bool)

(assert (=> b!4112616 (=> (not res!1680070) (not e!2551555))))

(assert (=> b!4112616 (= res!1680070 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343) (tag!8068 (h!49730 (t!340185 lt!1468341))))))))

(declare-fun b!4112617 () Bool)

(assert (=> b!4112617 (= e!2551555 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 lt!1468341)) (Cons!44311 (tag!8068 (h!49730 (t!340185 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343))))))

(assert (= (and d!1220079 (not res!1680069)) b!4112616))

(assert (= (and b!4112616 res!1680070) b!4112617))

(declare-fun m!4713921 () Bool)

(assert (=> b!4112616 m!4713921))

(declare-fun m!4713923 () Bool)

(assert (=> b!4112617 m!4713923))

(assert (=> b!4112479 d!1220079))

(declare-fun bs!594392 () Bool)

(declare-fun d!1220081 () Bool)

(assert (= bs!594392 (and d!1220081 d!1220075)))

(declare-fun lambda!128511 () Int)

(assert (=> bs!594392 (= (and (= (toChars!9707 (transformation!7208 e2!99)) (toChars!9707 (transformation!7208 e1!99))) (= (toValue!9848 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e1!99)))) (= lambda!128511 lambda!128510))))

(assert (=> d!1220081 true))

(assert (=> d!1220081 (< (dynLambda!18950 order!23331 (toChars!9707 (transformation!7208 e2!99))) (dynLambda!18951 order!23333 lambda!128511))))

(assert (=> d!1220081 true))

(assert (=> d!1220081 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 e2!99))) (dynLambda!18951 order!23333 lambda!128511))))

(assert (=> d!1220081 (= (semiInverseModEq!3107 (toChars!9707 (transformation!7208 e2!99)) (toValue!9848 (transformation!7208 e2!99))) (Forall!1539 lambda!128511))))

(declare-fun bs!594393 () Bool)

(assert (= bs!594393 d!1220081))

(declare-fun m!4713925 () Bool)

(assert (=> bs!594393 m!4713925))

(assert (=> d!1220017 d!1220081))

(declare-fun d!1220083 () Bool)

(assert (=> d!1220083 (= (inv!58929 (tag!8068 (h!49730 (t!340185 l!6462)))) (= (mod (str.len (value!226018 (tag!8068 (h!49730 (t!340185 l!6462))))) 2) 0))))

(assert (=> b!4112516 d!1220083))

(declare-fun d!1220085 () Bool)

(declare-fun res!1680071 () Bool)

(declare-fun e!2551556 () Bool)

(assert (=> d!1220085 (=> (not res!1680071) (not e!2551556))))

(assert (=> d!1220085 (= res!1680071 (semiInverseModEq!3107 (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))))))

(assert (=> d!1220085 (= (inv!58931 (transformation!7208 (h!49730 (t!340185 l!6462)))) e!2551556)))

(declare-fun b!4112618 () Bool)

(assert (=> b!4112618 (= e!2551556 (equivClasses!3006 (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))))))

(assert (= (and d!1220085 res!1680071) b!4112618))

(declare-fun m!4713927 () Bool)

(assert (=> d!1220085 m!4713927))

(declare-fun m!4713929 () Bool)

(assert (=> b!4112618 m!4713929))

(assert (=> b!4112516 d!1220085))

(declare-fun bs!594394 () Bool)

(declare-fun d!1220087 () Bool)

(assert (= bs!594394 (and d!1220087 d!1220075)))

(declare-fun lambda!128512 () Int)

(assert (=> bs!594394 (= (and (= (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toChars!9707 (transformation!7208 e1!99))) (= (toValue!9848 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 e1!99)))) (= lambda!128512 lambda!128510))))

(declare-fun bs!594395 () Bool)

(assert (= bs!594395 (and d!1220087 d!1220081)))

(assert (=> bs!594395 (= (and (= (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toChars!9707 (transformation!7208 e2!99))) (= (toValue!9848 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 e2!99)))) (= lambda!128512 lambda!128511))))

(assert (=> d!1220087 true))

(assert (=> d!1220087 (< (dynLambda!18950 order!23331 (toChars!9707 (transformation!7208 (h!49730 l!6462)))) (dynLambda!18951 order!23333 lambda!128512))))

(assert (=> d!1220087 true))

(assert (=> d!1220087 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 (h!49730 l!6462)))) (dynLambda!18951 order!23333 lambda!128512))))

(assert (=> d!1220087 (= (semiInverseModEq!3107 (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 (h!49730 l!6462)))) (Forall!1539 lambda!128512))))

(declare-fun bs!594396 () Bool)

(assert (= bs!594396 d!1220087))

(declare-fun m!4713931 () Bool)

(assert (=> bs!594396 m!4713931))

(assert (=> d!1220007 d!1220087))

(declare-fun d!1220089 () Bool)

(declare-fun c!706916 () Bool)

(assert (=> d!1220089 (= c!706916 ((_ is Nil!44311) lt!1468342))))

(declare-fun e!2551557 () (InoxSet String!50940))

(assert (=> d!1220089 (= (foldLeft!6 lt!1468342 ((as const (Array String!50940 Bool)) false) lambda!128498) e!2551557)))

(declare-fun b!4112619 () Bool)

(assert (=> b!4112619 (= e!2551557 ((as const (Array String!50940 Bool)) false))))

(declare-fun b!4112620 () Bool)

(assert (=> b!4112620 (= e!2551557 (foldLeft!6 (t!340186 lt!1468342) (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) lambda!128498))))

(assert (= (and d!1220089 c!706916) b!4112619))

(assert (= (and d!1220089 (not c!706916)) b!4112620))

(declare-fun b_lambda!120683 () Bool)

(assert (=> (not b_lambda!120683) (not b!4112620)))

(declare-fun m!4713933 () Bool)

(assert (=> b!4112620 m!4713933))

(assert (=> b!4112620 m!4713933))

(declare-fun m!4713935 () Bool)

(assert (=> b!4112620 m!4713935))

(assert (=> d!1220009 d!1220089))

(declare-fun bs!594397 () Bool)

(declare-fun d!1220091 () Bool)

(assert (= bs!594397 (and d!1220091 d!1220051)))

(declare-fun lambda!128513 () Int)

(assert (=> bs!594397 (= (= (toValue!9848 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 e1!99))) (= lambda!128513 lambda!128506))))

(declare-fun bs!594398 () Bool)

(assert (= bs!594398 (and d!1220091 d!1220059)))

(assert (=> bs!594398 (= (= (toValue!9848 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 e2!99))) (= lambda!128513 lambda!128507))))

(assert (=> d!1220091 true))

(assert (=> d!1220091 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 (h!49730 l!6462)))) (dynLambda!18949 order!23329 lambda!128513))))

(assert (=> d!1220091 (= (equivClasses!3006 (toChars!9707 (transformation!7208 (h!49730 l!6462))) (toValue!9848 (transformation!7208 (h!49730 l!6462)))) (Forall2!1138 lambda!128513))))

(declare-fun bs!594399 () Bool)

(assert (= bs!594399 d!1220091))

(declare-fun m!4713937 () Bool)

(assert (=> bs!594399 m!4713937))

(assert (=> b!4112488 d!1220091))

(declare-fun d!1220093 () Bool)

(declare-fun lt!1468358 () Bool)

(assert (=> d!1220093 (= lt!1468358 (select (content!6827 lt!1468345) (tag!8068 (h!49730 l!6462))))))

(declare-fun e!2551558 () Bool)

(assert (=> d!1220093 (= lt!1468358 e!2551558)))

(declare-fun res!1680073 () Bool)

(assert (=> d!1220093 (=> (not res!1680073) (not e!2551558))))

(assert (=> d!1220093 (= res!1680073 ((_ is Cons!44311) lt!1468345))))

(assert (=> d!1220093 (= (contains!8881 lt!1468345 (tag!8068 (h!49730 l!6462))) lt!1468358)))

(declare-fun b!4112621 () Bool)

(declare-fun e!2551559 () Bool)

(assert (=> b!4112621 (= e!2551558 e!2551559)))

(declare-fun res!1680072 () Bool)

(assert (=> b!4112621 (=> res!1680072 e!2551559)))

(assert (=> b!4112621 (= res!1680072 (= (h!49731 lt!1468345) (tag!8068 (h!49730 l!6462))))))

(declare-fun b!4112622 () Bool)

(assert (=> b!4112622 (= e!2551559 (contains!8881 (t!340186 lt!1468345) (tag!8068 (h!49730 l!6462))))))

(assert (= (and d!1220093 res!1680073) b!4112621))

(assert (= (and b!4112621 (not res!1680072)) b!4112622))

(declare-fun m!4713939 () Bool)

(assert (=> d!1220093 m!4713939))

(declare-fun m!4713941 () Bool)

(assert (=> d!1220093 m!4713941))

(declare-fun m!4713943 () Bool)

(assert (=> b!4112622 m!4713943))

(assert (=> b!4112484 d!1220093))

(declare-fun d!1220095 () Bool)

(declare-fun res!1680074 () Bool)

(declare-fun e!2551560 () Bool)

(assert (=> d!1220095 (=> res!1680074 e!2551560)))

(assert (=> d!1220095 (= res!1680074 ((_ is Nil!44310) (t!340185 l!6462)))))

(assert (=> d!1220095 (= (noDuplicateTag!2885 thiss!26878 (t!340185 l!6462) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)) e!2551560)))

(declare-fun b!4112623 () Bool)

(declare-fun e!2551561 () Bool)

(assert (=> b!4112623 (= e!2551560 e!2551561)))

(declare-fun res!1680075 () Bool)

(assert (=> b!4112623 (=> (not res!1680075) (not e!2551561))))

(assert (=> b!4112623 (= res!1680075 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345) (tag!8068 (h!49730 (t!340185 l!6462))))))))

(declare-fun b!4112624 () Bool)

(assert (=> b!4112624 (= e!2551561 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 l!6462)) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345))))))

(assert (= (and d!1220095 (not res!1680074)) b!4112623))

(assert (= (and b!4112623 res!1680075) b!4112624))

(declare-fun m!4713945 () Bool)

(assert (=> b!4112623 m!4713945))

(declare-fun m!4713947 () Bool)

(assert (=> b!4112624 m!4713947))

(assert (=> b!4112485 d!1220095))

(declare-fun b!4112625 () Bool)

(declare-fun e!2551562 () Bool)

(assert (=> b!4112625 (= e!2551562 tp_is_empty!21171)))

(assert (=> b!4112523 (= tp!1251305 e!2551562)))

(declare-fun b!4112626 () Bool)

(declare-fun tp!1251347 () Bool)

(declare-fun tp!1251345 () Bool)

(assert (=> b!4112626 (= e!2551562 (and tp!1251347 tp!1251345))))

(declare-fun b!4112628 () Bool)

(declare-fun tp!1251344 () Bool)

(declare-fun tp!1251343 () Bool)

(assert (=> b!4112628 (= e!2551562 (and tp!1251344 tp!1251343))))

(declare-fun b!4112627 () Bool)

(declare-fun tp!1251346 () Bool)

(assert (=> b!4112627 (= e!2551562 tp!1251346)))

(assert (= (and b!4112523 ((_ is ElementMatch!12113) (regOne!24738 (regex!7208 e1!99)))) b!4112625))

(assert (= (and b!4112523 ((_ is Concat!19552) (regOne!24738 (regex!7208 e1!99)))) b!4112626))

(assert (= (and b!4112523 ((_ is Star!12113) (regOne!24738 (regex!7208 e1!99)))) b!4112627))

(assert (= (and b!4112523 ((_ is Union!12113) (regOne!24738 (regex!7208 e1!99)))) b!4112628))

(declare-fun b!4112629 () Bool)

(declare-fun e!2551563 () Bool)

(assert (=> b!4112629 (= e!2551563 tp_is_empty!21171)))

(assert (=> b!4112523 (= tp!1251303 e!2551563)))

(declare-fun b!4112630 () Bool)

(declare-fun tp!1251352 () Bool)

(declare-fun tp!1251350 () Bool)

(assert (=> b!4112630 (= e!2551563 (and tp!1251352 tp!1251350))))

(declare-fun b!4112632 () Bool)

(declare-fun tp!1251349 () Bool)

(declare-fun tp!1251348 () Bool)

(assert (=> b!4112632 (= e!2551563 (and tp!1251349 tp!1251348))))

(declare-fun b!4112631 () Bool)

(declare-fun tp!1251351 () Bool)

(assert (=> b!4112631 (= e!2551563 tp!1251351)))

(assert (= (and b!4112523 ((_ is ElementMatch!12113) (regTwo!24738 (regex!7208 e1!99)))) b!4112629))

(assert (= (and b!4112523 ((_ is Concat!19552) (regTwo!24738 (regex!7208 e1!99)))) b!4112630))

(assert (= (and b!4112523 ((_ is Star!12113) (regTwo!24738 (regex!7208 e1!99)))) b!4112631))

(assert (= (and b!4112523 ((_ is Union!12113) (regTwo!24738 (regex!7208 e1!99)))) b!4112632))

(declare-fun b!4112633 () Bool)

(declare-fun e!2551564 () Bool)

(assert (=> b!4112633 (= e!2551564 tp_is_empty!21171)))

(assert (=> b!4112524 (= tp!1251304 e!2551564)))

(declare-fun b!4112634 () Bool)

(declare-fun tp!1251357 () Bool)

(declare-fun tp!1251355 () Bool)

(assert (=> b!4112634 (= e!2551564 (and tp!1251357 tp!1251355))))

(declare-fun b!4112636 () Bool)

(declare-fun tp!1251354 () Bool)

(declare-fun tp!1251353 () Bool)

(assert (=> b!4112636 (= e!2551564 (and tp!1251354 tp!1251353))))

(declare-fun b!4112635 () Bool)

(declare-fun tp!1251356 () Bool)

(assert (=> b!4112635 (= e!2551564 tp!1251356)))

(assert (= (and b!4112524 ((_ is ElementMatch!12113) (reg!12442 (regex!7208 e1!99)))) b!4112633))

(assert (= (and b!4112524 ((_ is Concat!19552) (reg!12442 (regex!7208 e1!99)))) b!4112634))

(assert (= (and b!4112524 ((_ is Star!12113) (reg!12442 (regex!7208 e1!99)))) b!4112635))

(assert (= (and b!4112524 ((_ is Union!12113) (reg!12442 (regex!7208 e1!99)))) b!4112636))

(declare-fun b!4112637 () Bool)

(declare-fun e!2551565 () Bool)

(assert (=> b!4112637 (= e!2551565 tp_is_empty!21171)))

(assert (=> b!4112519 (= tp!1251300 e!2551565)))

(declare-fun b!4112638 () Bool)

(declare-fun tp!1251362 () Bool)

(declare-fun tp!1251360 () Bool)

(assert (=> b!4112638 (= e!2551565 (and tp!1251362 tp!1251360))))

(declare-fun b!4112640 () Bool)

(declare-fun tp!1251359 () Bool)

(declare-fun tp!1251358 () Bool)

(assert (=> b!4112640 (= e!2551565 (and tp!1251359 tp!1251358))))

(declare-fun b!4112639 () Bool)

(declare-fun tp!1251361 () Bool)

(assert (=> b!4112639 (= e!2551565 tp!1251361)))

(assert (= (and b!4112519 ((_ is ElementMatch!12113) (regOne!24738 (regex!7208 e2!99)))) b!4112637))

(assert (= (and b!4112519 ((_ is Concat!19552) (regOne!24738 (regex!7208 e2!99)))) b!4112638))

(assert (= (and b!4112519 ((_ is Star!12113) (regOne!24738 (regex!7208 e2!99)))) b!4112639))

(assert (= (and b!4112519 ((_ is Union!12113) (regOne!24738 (regex!7208 e2!99)))) b!4112640))

(declare-fun b!4112641 () Bool)

(declare-fun e!2551566 () Bool)

(assert (=> b!4112641 (= e!2551566 tp_is_empty!21171)))

(assert (=> b!4112519 (= tp!1251298 e!2551566)))

(declare-fun b!4112642 () Bool)

(declare-fun tp!1251367 () Bool)

(declare-fun tp!1251365 () Bool)

(assert (=> b!4112642 (= e!2551566 (and tp!1251367 tp!1251365))))

(declare-fun b!4112644 () Bool)

(declare-fun tp!1251364 () Bool)

(declare-fun tp!1251363 () Bool)

(assert (=> b!4112644 (= e!2551566 (and tp!1251364 tp!1251363))))

(declare-fun b!4112643 () Bool)

(declare-fun tp!1251366 () Bool)

(assert (=> b!4112643 (= e!2551566 tp!1251366)))

(assert (= (and b!4112519 ((_ is ElementMatch!12113) (regTwo!24738 (regex!7208 e2!99)))) b!4112641))

(assert (= (and b!4112519 ((_ is Concat!19552) (regTwo!24738 (regex!7208 e2!99)))) b!4112642))

(assert (= (and b!4112519 ((_ is Star!12113) (regTwo!24738 (regex!7208 e2!99)))) b!4112643))

(assert (= (and b!4112519 ((_ is Union!12113) (regTwo!24738 (regex!7208 e2!99)))) b!4112644))

(declare-fun b!4112645 () Bool)

(declare-fun e!2551567 () Bool)

(assert (=> b!4112645 (= e!2551567 tp_is_empty!21171)))

(assert (=> b!4112505 (= tp!1251282 e!2551567)))

(declare-fun b!4112646 () Bool)

(declare-fun tp!1251372 () Bool)

(declare-fun tp!1251370 () Bool)

(assert (=> b!4112646 (= e!2551567 (and tp!1251372 tp!1251370))))

(declare-fun b!4112648 () Bool)

(declare-fun tp!1251369 () Bool)

(declare-fun tp!1251368 () Bool)

(assert (=> b!4112648 (= e!2551567 (and tp!1251369 tp!1251368))))

(declare-fun b!4112647 () Bool)

(declare-fun tp!1251371 () Bool)

(assert (=> b!4112647 (= e!2551567 tp!1251371)))

(assert (= (and b!4112505 ((_ is ElementMatch!12113) (reg!12442 (regex!7208 (h!49730 l!6462))))) b!4112645))

(assert (= (and b!4112505 ((_ is Concat!19552) (reg!12442 (regex!7208 (h!49730 l!6462))))) b!4112646))

(assert (= (and b!4112505 ((_ is Star!12113) (reg!12442 (regex!7208 (h!49730 l!6462))))) b!4112647))

(assert (= (and b!4112505 ((_ is Union!12113) (reg!12442 (regex!7208 (h!49730 l!6462))))) b!4112648))

(declare-fun b!4112649 () Bool)

(declare-fun e!2551568 () Bool)

(assert (=> b!4112649 (= e!2551568 tp_is_empty!21171)))

(assert (=> b!4112506 (= tp!1251280 e!2551568)))

(declare-fun b!4112650 () Bool)

(declare-fun tp!1251377 () Bool)

(declare-fun tp!1251375 () Bool)

(assert (=> b!4112650 (= e!2551568 (and tp!1251377 tp!1251375))))

(declare-fun b!4112652 () Bool)

(declare-fun tp!1251374 () Bool)

(declare-fun tp!1251373 () Bool)

(assert (=> b!4112652 (= e!2551568 (and tp!1251374 tp!1251373))))

(declare-fun b!4112651 () Bool)

(declare-fun tp!1251376 () Bool)

(assert (=> b!4112651 (= e!2551568 tp!1251376)))

(assert (= (and b!4112506 ((_ is ElementMatch!12113) (regOne!24739 (regex!7208 (h!49730 l!6462))))) b!4112649))

(assert (= (and b!4112506 ((_ is Concat!19552) (regOne!24739 (regex!7208 (h!49730 l!6462))))) b!4112650))

(assert (= (and b!4112506 ((_ is Star!12113) (regOne!24739 (regex!7208 (h!49730 l!6462))))) b!4112651))

(assert (= (and b!4112506 ((_ is Union!12113) (regOne!24739 (regex!7208 (h!49730 l!6462))))) b!4112652))

(declare-fun b!4112653 () Bool)

(declare-fun e!2551569 () Bool)

(assert (=> b!4112653 (= e!2551569 tp_is_empty!21171)))

(assert (=> b!4112506 (= tp!1251279 e!2551569)))

(declare-fun b!4112654 () Bool)

(declare-fun tp!1251382 () Bool)

(declare-fun tp!1251380 () Bool)

(assert (=> b!4112654 (= e!2551569 (and tp!1251382 tp!1251380))))

(declare-fun b!4112656 () Bool)

(declare-fun tp!1251379 () Bool)

(declare-fun tp!1251378 () Bool)

(assert (=> b!4112656 (= e!2551569 (and tp!1251379 tp!1251378))))

(declare-fun b!4112655 () Bool)

(declare-fun tp!1251381 () Bool)

(assert (=> b!4112655 (= e!2551569 tp!1251381)))

(assert (= (and b!4112506 ((_ is ElementMatch!12113) (regTwo!24739 (regex!7208 (h!49730 l!6462))))) b!4112653))

(assert (= (and b!4112506 ((_ is Concat!19552) (regTwo!24739 (regex!7208 (h!49730 l!6462))))) b!4112654))

(assert (= (and b!4112506 ((_ is Star!12113) (regTwo!24739 (regex!7208 (h!49730 l!6462))))) b!4112655))

(assert (= (and b!4112506 ((_ is Union!12113) (regTwo!24739 (regex!7208 (h!49730 l!6462))))) b!4112656))

(declare-fun b!4112657 () Bool)

(declare-fun e!2551570 () Bool)

(assert (=> b!4112657 (= e!2551570 tp_is_empty!21171)))

(assert (=> b!4112504 (= tp!1251283 e!2551570)))

(declare-fun b!4112658 () Bool)

(declare-fun tp!1251387 () Bool)

(declare-fun tp!1251385 () Bool)

(assert (=> b!4112658 (= e!2551570 (and tp!1251387 tp!1251385))))

(declare-fun b!4112660 () Bool)

(declare-fun tp!1251384 () Bool)

(declare-fun tp!1251383 () Bool)

(assert (=> b!4112660 (= e!2551570 (and tp!1251384 tp!1251383))))

(declare-fun b!4112659 () Bool)

(declare-fun tp!1251386 () Bool)

(assert (=> b!4112659 (= e!2551570 tp!1251386)))

(assert (= (and b!4112504 ((_ is ElementMatch!12113) (regOne!24738 (regex!7208 (h!49730 l!6462))))) b!4112657))

(assert (= (and b!4112504 ((_ is Concat!19552) (regOne!24738 (regex!7208 (h!49730 l!6462))))) b!4112658))

(assert (= (and b!4112504 ((_ is Star!12113) (regOne!24738 (regex!7208 (h!49730 l!6462))))) b!4112659))

(assert (= (and b!4112504 ((_ is Union!12113) (regOne!24738 (regex!7208 (h!49730 l!6462))))) b!4112660))

(declare-fun b!4112661 () Bool)

(declare-fun e!2551571 () Bool)

(assert (=> b!4112661 (= e!2551571 tp_is_empty!21171)))

(assert (=> b!4112504 (= tp!1251281 e!2551571)))

(declare-fun b!4112662 () Bool)

(declare-fun tp!1251392 () Bool)

(declare-fun tp!1251390 () Bool)

(assert (=> b!4112662 (= e!2551571 (and tp!1251392 tp!1251390))))

(declare-fun b!4112664 () Bool)

(declare-fun tp!1251389 () Bool)

(declare-fun tp!1251388 () Bool)

(assert (=> b!4112664 (= e!2551571 (and tp!1251389 tp!1251388))))

(declare-fun b!4112663 () Bool)

(declare-fun tp!1251391 () Bool)

(assert (=> b!4112663 (= e!2551571 tp!1251391)))

(assert (= (and b!4112504 ((_ is ElementMatch!12113) (regTwo!24738 (regex!7208 (h!49730 l!6462))))) b!4112661))

(assert (= (and b!4112504 ((_ is Concat!19552) (regTwo!24738 (regex!7208 (h!49730 l!6462))))) b!4112662))

(assert (= (and b!4112504 ((_ is Star!12113) (regTwo!24738 (regex!7208 (h!49730 l!6462))))) b!4112663))

(assert (= (and b!4112504 ((_ is Union!12113) (regTwo!24738 (regex!7208 (h!49730 l!6462))))) b!4112664))

(declare-fun b!4112667 () Bool)

(declare-fun b_free!115759 () Bool)

(declare-fun b_next!116463 () Bool)

(assert (=> b!4112667 (= b_free!115759 (not b_next!116463))))

(declare-fun tp!1251395 () Bool)

(declare-fun b_and!317645 () Bool)

(assert (=> b!4112667 (= tp!1251395 b_and!317645)))

(declare-fun b_free!115761 () Bool)

(declare-fun b_next!116465 () Bool)

(assert (=> b!4112667 (= b_free!115761 (not b_next!116465))))

(declare-fun tp!1251393 () Bool)

(declare-fun b_and!317647 () Bool)

(assert (=> b!4112667 (= tp!1251393 b_and!317647)))

(declare-fun e!2551574 () Bool)

(assert (=> b!4112667 (= e!2551574 (and tp!1251395 tp!1251393))))

(declare-fun e!2551575 () Bool)

(declare-fun tp!1251394 () Bool)

(declare-fun b!4112666 () Bool)

(assert (=> b!4112666 (= e!2551575 (and tp!1251394 (inv!58929 (tag!8068 (h!49730 (t!340185 (t!340185 l!6462))))) (inv!58931 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462))))) e!2551574))))

(declare-fun b!4112665 () Bool)

(declare-fun e!2551572 () Bool)

(declare-fun tp!1251396 () Bool)

(assert (=> b!4112665 (= e!2551572 (and e!2551575 tp!1251396))))

(assert (=> b!4112515 (= tp!1251295 e!2551572)))

(assert (= b!4112666 b!4112667))

(assert (= b!4112665 b!4112666))

(assert (= (and b!4112515 ((_ is Cons!44310) (t!340185 (t!340185 l!6462)))) b!4112665))

(declare-fun m!4713949 () Bool)

(assert (=> b!4112666 m!4713949))

(declare-fun m!4713951 () Bool)

(assert (=> b!4112666 m!4713951))

(declare-fun b!4112668 () Bool)

(declare-fun e!2551576 () Bool)

(assert (=> b!4112668 (= e!2551576 tp_is_empty!21171)))

(assert (=> b!4112516 (= tp!1251293 e!2551576)))

(declare-fun b!4112669 () Bool)

(declare-fun tp!1251401 () Bool)

(declare-fun tp!1251399 () Bool)

(assert (=> b!4112669 (= e!2551576 (and tp!1251401 tp!1251399))))

(declare-fun b!4112671 () Bool)

(declare-fun tp!1251398 () Bool)

(declare-fun tp!1251397 () Bool)

(assert (=> b!4112671 (= e!2551576 (and tp!1251398 tp!1251397))))

(declare-fun b!4112670 () Bool)

(declare-fun tp!1251400 () Bool)

(assert (=> b!4112670 (= e!2551576 tp!1251400)))

(assert (= (and b!4112516 ((_ is ElementMatch!12113) (regex!7208 (h!49730 (t!340185 l!6462))))) b!4112668))

(assert (= (and b!4112516 ((_ is Concat!19552) (regex!7208 (h!49730 (t!340185 l!6462))))) b!4112669))

(assert (= (and b!4112516 ((_ is Star!12113) (regex!7208 (h!49730 (t!340185 l!6462))))) b!4112670))

(assert (= (and b!4112516 ((_ is Union!12113) (regex!7208 (h!49730 (t!340185 l!6462))))) b!4112671))

(declare-fun b!4112672 () Bool)

(declare-fun e!2551577 () Bool)

(assert (=> b!4112672 (= e!2551577 tp_is_empty!21171)))

(assert (=> b!4112521 (= tp!1251297 e!2551577)))

(declare-fun b!4112673 () Bool)

(declare-fun tp!1251406 () Bool)

(declare-fun tp!1251404 () Bool)

(assert (=> b!4112673 (= e!2551577 (and tp!1251406 tp!1251404))))

(declare-fun b!4112675 () Bool)

(declare-fun tp!1251403 () Bool)

(declare-fun tp!1251402 () Bool)

(assert (=> b!4112675 (= e!2551577 (and tp!1251403 tp!1251402))))

(declare-fun b!4112674 () Bool)

(declare-fun tp!1251405 () Bool)

(assert (=> b!4112674 (= e!2551577 tp!1251405)))

(assert (= (and b!4112521 ((_ is ElementMatch!12113) (regOne!24739 (regex!7208 e2!99)))) b!4112672))

(assert (= (and b!4112521 ((_ is Concat!19552) (regOne!24739 (regex!7208 e2!99)))) b!4112673))

(assert (= (and b!4112521 ((_ is Star!12113) (regOne!24739 (regex!7208 e2!99)))) b!4112674))

(assert (= (and b!4112521 ((_ is Union!12113) (regOne!24739 (regex!7208 e2!99)))) b!4112675))

(declare-fun b!4112676 () Bool)

(declare-fun e!2551578 () Bool)

(assert (=> b!4112676 (= e!2551578 tp_is_empty!21171)))

(assert (=> b!4112521 (= tp!1251296 e!2551578)))

(declare-fun b!4112677 () Bool)

(declare-fun tp!1251411 () Bool)

(declare-fun tp!1251409 () Bool)

(assert (=> b!4112677 (= e!2551578 (and tp!1251411 tp!1251409))))

(declare-fun b!4112679 () Bool)

(declare-fun tp!1251408 () Bool)

(declare-fun tp!1251407 () Bool)

(assert (=> b!4112679 (= e!2551578 (and tp!1251408 tp!1251407))))

(declare-fun b!4112678 () Bool)

(declare-fun tp!1251410 () Bool)

(assert (=> b!4112678 (= e!2551578 tp!1251410)))

(assert (= (and b!4112521 ((_ is ElementMatch!12113) (regTwo!24739 (regex!7208 e2!99)))) b!4112676))

(assert (= (and b!4112521 ((_ is Concat!19552) (regTwo!24739 (regex!7208 e2!99)))) b!4112677))

(assert (= (and b!4112521 ((_ is Star!12113) (regTwo!24739 (regex!7208 e2!99)))) b!4112678))

(assert (= (and b!4112521 ((_ is Union!12113) (regTwo!24739 (regex!7208 e2!99)))) b!4112679))

(declare-fun b!4112680 () Bool)

(declare-fun e!2551579 () Bool)

(assert (=> b!4112680 (= e!2551579 tp_is_empty!21171)))

(assert (=> b!4112520 (= tp!1251299 e!2551579)))

(declare-fun b!4112681 () Bool)

(declare-fun tp!1251416 () Bool)

(declare-fun tp!1251414 () Bool)

(assert (=> b!4112681 (= e!2551579 (and tp!1251416 tp!1251414))))

(declare-fun b!4112683 () Bool)

(declare-fun tp!1251413 () Bool)

(declare-fun tp!1251412 () Bool)

(assert (=> b!4112683 (= e!2551579 (and tp!1251413 tp!1251412))))

(declare-fun b!4112682 () Bool)

(declare-fun tp!1251415 () Bool)

(assert (=> b!4112682 (= e!2551579 tp!1251415)))

(assert (= (and b!4112520 ((_ is ElementMatch!12113) (reg!12442 (regex!7208 e2!99)))) b!4112680))

(assert (= (and b!4112520 ((_ is Concat!19552) (reg!12442 (regex!7208 e2!99)))) b!4112681))

(assert (= (and b!4112520 ((_ is Star!12113) (reg!12442 (regex!7208 e2!99)))) b!4112682))

(assert (= (and b!4112520 ((_ is Union!12113) (reg!12442 (regex!7208 e2!99)))) b!4112683))

(declare-fun b!4112684 () Bool)

(declare-fun e!2551580 () Bool)

(assert (=> b!4112684 (= e!2551580 tp_is_empty!21171)))

(assert (=> b!4112525 (= tp!1251302 e!2551580)))

(declare-fun b!4112685 () Bool)

(declare-fun tp!1251421 () Bool)

(declare-fun tp!1251419 () Bool)

(assert (=> b!4112685 (= e!2551580 (and tp!1251421 tp!1251419))))

(declare-fun b!4112687 () Bool)

(declare-fun tp!1251418 () Bool)

(declare-fun tp!1251417 () Bool)

(assert (=> b!4112687 (= e!2551580 (and tp!1251418 tp!1251417))))

(declare-fun b!4112686 () Bool)

(declare-fun tp!1251420 () Bool)

(assert (=> b!4112686 (= e!2551580 tp!1251420)))

(assert (= (and b!4112525 ((_ is ElementMatch!12113) (regOne!24739 (regex!7208 e1!99)))) b!4112684))

(assert (= (and b!4112525 ((_ is Concat!19552) (regOne!24739 (regex!7208 e1!99)))) b!4112685))

(assert (= (and b!4112525 ((_ is Star!12113) (regOne!24739 (regex!7208 e1!99)))) b!4112686))

(assert (= (and b!4112525 ((_ is Union!12113) (regOne!24739 (regex!7208 e1!99)))) b!4112687))

(declare-fun b!4112688 () Bool)

(declare-fun e!2551581 () Bool)

(assert (=> b!4112688 (= e!2551581 tp_is_empty!21171)))

(assert (=> b!4112525 (= tp!1251301 e!2551581)))

(declare-fun b!4112689 () Bool)

(declare-fun tp!1251426 () Bool)

(declare-fun tp!1251424 () Bool)

(assert (=> b!4112689 (= e!2551581 (and tp!1251426 tp!1251424))))

(declare-fun b!4112691 () Bool)

(declare-fun tp!1251423 () Bool)

(declare-fun tp!1251422 () Bool)

(assert (=> b!4112691 (= e!2551581 (and tp!1251423 tp!1251422))))

(declare-fun b!4112690 () Bool)

(declare-fun tp!1251425 () Bool)

(assert (=> b!4112690 (= e!2551581 tp!1251425)))

(assert (= (and b!4112525 ((_ is ElementMatch!12113) (regTwo!24739 (regex!7208 e1!99)))) b!4112688))

(assert (= (and b!4112525 ((_ is Concat!19552) (regTwo!24739 (regex!7208 e1!99)))) b!4112689))

(assert (= (and b!4112525 ((_ is Star!12113) (regTwo!24739 (regex!7208 e1!99)))) b!4112690))

(assert (= (and b!4112525 ((_ is Union!12113) (regTwo!24739 (regex!7208 e1!99)))) b!4112691))

(declare-fun b_lambda!120685 () Bool)

(assert (= b_lambda!120681 (or d!1220011 b_lambda!120685)))

(declare-fun bs!594400 () Bool)

(declare-fun d!1220097 () Bool)

(assert (= bs!594400 (and d!1220097 d!1220011)))

(assert (=> bs!594400 (= (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) ((_ map or) ((as const (Array String!50940 Bool)) false) (store ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345) true)))))

(declare-fun m!4713953 () Bool)

(assert (=> bs!594400 m!4713953))

(assert (=> b!4112615 d!1220097))

(declare-fun b_lambda!120687 () Bool)

(assert (= b_lambda!120683 (or d!1220009 b_lambda!120687)))

(declare-fun bs!594401 () Bool)

(declare-fun d!1220099 () Bool)

(assert (= bs!594401 (and d!1220099 d!1220009)))

(assert (=> bs!594401 (= (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) ((_ map or) ((as const (Array String!50940 Bool)) false) (store ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342) true)))))

(declare-fun m!4713955 () Bool)

(assert (=> bs!594401 m!4713955))

(assert (=> b!4112620 d!1220099))

(check-sat (not b!4112686) (not b!4112650) (not b!4112654) (not b_next!116465) b_and!317633 (not b!4112595) (not b!4112660) (not b!4112648) (not b!4112617) (not b!4112679) (not b!4112622) (not b!4112687) (not b_next!116455) (not b!4112603) (not b_next!116447) (not b_next!116457) (not d!1220081) (not b!4112677) (not b!4112656) (not d!1220063) (not d!1220051) (not b!4112623) (not b!4112631) (not d!1220071) (not b!4112675) (not b!4112685) (not d!1220073) (not b!4112615) (not b!4112634) (not b_lambda!120685) (not b!4112639) (not b!4112620) (not b!4112683) (not b!4112624) (not b!4112644) (not b!4112682) (not b!4112662) b_and!317629 (not d!1220093) (not b!4112636) (not b_next!116451) (not b!4112674) (not b!4112673) (not d!1220057) b_and!317631 (not b!4112605) (not b!4112658) (not b!4112669) (not b!4112681) (not b!4112635) (not b!4112647) (not b!4112616) (not b!4112663) (not b!4112671) (not d!1220087) (not b_next!116443) (not b!4112691) b_and!317639 (not b!4112630) (not b!4112627) (not b_next!116445) (not b!4112632) (not b!4112664) (not b!4112670) (not b!4112666) (not b!4112690) b_and!317625 (not b!4112665) (not d!1220075) (not b!4112652) (not d!1220091) (not b!4112651) (not b!4112618) (not b!4112599) (not b!4112593) (not b!4112594) (not b_lambda!120687) (not d!1220059) b_and!317645 (not d!1220065) (not b!4112628) b_and!317647 (not b!4112626) tp_is_empty!21171 (not b!4112638) (not b!4112642) (not b_next!116449) b_and!317637 (not b!4112640) (not b!4112602) (not b!4112678) (not d!1220085) (not b!4112659) (not b!4112597) (not b!4112601) (not b!4112689) (not b!4112643) (not b!4112646) (not b!4112655) (not b_next!116453) (not b!4112600) b_and!317627 b_and!317635 (not b_next!116463))
(check-sat (not b_next!116465) b_and!317629 (not b_next!116451) b_and!317631 (not b_next!116445) b_and!317633 b_and!317625 b_and!317645 b_and!317647 (not b_next!116453) (not b_next!116455) (not b_next!116447) (not b_next!116457) b_and!317639 (not b_next!116443) (not b_next!116449) b_and!317637 b_and!317627 b_and!317635 (not b_next!116463))
(get-model)

(declare-fun d!1220143 () Bool)

(declare-fun choose!25141 (Int) Bool)

(assert (=> d!1220143 (= (Forall!1539 lambda!128511) (choose!25141 lambda!128511))))

(declare-fun bs!594417 () Bool)

(assert (= bs!594417 d!1220143))

(declare-fun m!4714033 () Bool)

(assert (=> bs!594417 m!4714033))

(assert (=> d!1220081 d!1220143))

(declare-fun d!1220145 () Bool)

(declare-fun res!1680105 () Bool)

(declare-fun e!2551630 () Bool)

(assert (=> d!1220145 (=> res!1680105 e!2551630)))

(assert (=> d!1220145 (= res!1680105 ((_ is Nil!44310) (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341)))))))

(assert (=> d!1220145 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311))) e!2551630)))

(declare-fun b!4112794 () Bool)

(declare-fun e!2551631 () Bool)

(assert (=> b!4112794 (= e!2551630 e!2551631)))

(declare-fun res!1680106 () Bool)

(assert (=> b!4112794 (=> (not res!1680106) (not e!2551631))))

(assert (=> b!4112794 (= res!1680106 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341))))))))))

(declare-fun b!4112795 () Bool)

(assert (=> b!4112795 (= e!2551631 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (t!340185 (Cons!44310 e1!99 lt!1468341))))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)))))))

(assert (= (and d!1220145 (not res!1680105)) b!4112794))

(assert (= (and b!4112794 res!1680106) b!4112795))

(declare-fun m!4714035 () Bool)

(assert (=> b!4112794 m!4714035))

(declare-fun m!4714037 () Bool)

(assert (=> b!4112795 m!4714037))

(assert (=> b!4112603 d!1220145))

(declare-fun d!1220147 () Bool)

(assert (=> d!1220147 (= (Forall!1539 lambda!128512) (choose!25141 lambda!128512))))

(declare-fun bs!594418 () Bool)

(assert (= bs!594418 d!1220147))

(declare-fun m!4714039 () Bool)

(assert (=> bs!594418 m!4714039))

(assert (=> d!1220087 d!1220147))

(declare-fun d!1220149 () Bool)

(declare-fun choose!25142 (Int) Bool)

(assert (=> d!1220149 (= (Forall2!1138 lambda!128513) (choose!25142 lambda!128513))))

(declare-fun bs!594419 () Bool)

(assert (= bs!594419 d!1220149))

(declare-fun m!4714041 () Bool)

(assert (=> bs!594419 m!4714041))

(assert (=> d!1220091 d!1220149))

(declare-fun d!1220151 () Bool)

(declare-fun lt!1468366 () Bool)

(assert (=> d!1220151 (= lt!1468366 (select (content!6827 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341))))))))

(declare-fun e!2551632 () Bool)

(assert (=> d!1220151 (= lt!1468366 e!2551632)))

(declare-fun res!1680108 () Bool)

(assert (=> d!1220151 (=> (not res!1680108) (not e!2551632))))

(assert (=> d!1220151 (= res!1680108 ((_ is Cons!44311) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)))))

(assert (=> d!1220151 (= (contains!8881 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311) (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341))))) lt!1468366)))

(declare-fun b!4112796 () Bool)

(declare-fun e!2551633 () Bool)

(assert (=> b!4112796 (= e!2551632 e!2551633)))

(declare-fun res!1680107 () Bool)

(assert (=> b!4112796 (=> res!1680107 e!2551633)))

(assert (=> b!4112796 (= res!1680107 (= (h!49731 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341))))))))

(declare-fun b!4112797 () Bool)

(assert (=> b!4112797 (= e!2551633 (contains!8881 (t!340186 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e1!99 lt!1468341))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e1!99 lt!1468341))))))))

(assert (= (and d!1220151 res!1680108) b!4112796))

(assert (= (and b!4112796 (not res!1680107)) b!4112797))

(declare-fun m!4714043 () Bool)

(assert (=> d!1220151 m!4714043))

(declare-fun m!4714045 () Bool)

(assert (=> d!1220151 m!4714045))

(declare-fun m!4714047 () Bool)

(assert (=> b!4112797 m!4714047))

(assert (=> b!4112602 d!1220151))

(declare-fun d!1220153 () Bool)

(assert (=> d!1220153 (= (Forall2!1138 lambda!128507) (choose!25142 lambda!128507))))

(declare-fun bs!594420 () Bool)

(assert (= bs!594420 d!1220153))

(declare-fun m!4714049 () Bool)

(assert (=> bs!594420 m!4714049))

(assert (=> d!1220059 d!1220153))

(declare-fun d!1220155 () Bool)

(assert (not d!1220155))

(assert (=> b!4112599 d!1220155))

(declare-fun d!1220157 () Bool)

(declare-fun res!1680109 () Bool)

(declare-fun e!2551634 () Bool)

(assert (=> d!1220157 (=> res!1680109 e!2551634)))

(assert (=> d!1220157 (= res!1680109 ((_ is Nil!44310) (t!340185 (t!340185 lt!1468341))))))

(assert (=> d!1220157 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 lt!1468341)) (Cons!44311 (tag!8068 (h!49730 (t!340185 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343))) e!2551634)))

(declare-fun b!4112798 () Bool)

(declare-fun e!2551635 () Bool)

(assert (=> b!4112798 (= e!2551634 e!2551635)))

(declare-fun res!1680110 () Bool)

(assert (=> b!4112798 (=> (not res!1680110) (not e!2551635))))

(assert (=> b!4112798 (= res!1680110 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (t!340185 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)) (tag!8068 (h!49730 (t!340185 (t!340185 lt!1468341)))))))))

(declare-fun b!4112799 () Bool)

(assert (=> b!4112799 (= e!2551635 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (t!340185 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (t!340185 lt!1468341)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 lt!1468341))) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)))))))

(assert (= (and d!1220157 (not res!1680109)) b!4112798))

(assert (= (and b!4112798 res!1680110) b!4112799))

(declare-fun m!4714051 () Bool)

(assert (=> b!4112798 m!4714051))

(declare-fun m!4714053 () Bool)

(assert (=> b!4112799 m!4714053))

(assert (=> b!4112617 d!1220157))

(declare-fun d!1220159 () Bool)

(declare-fun lt!1468367 () Bool)

(assert (=> d!1220159 (= lt!1468367 (select (content!6827 (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)) (tag!8068 (h!49730 (t!340185 lt!1468341)))))))

(declare-fun e!2551636 () Bool)

(assert (=> d!1220159 (= lt!1468367 e!2551636)))

(declare-fun res!1680112 () Bool)

(assert (=> d!1220159 (=> (not res!1680112) (not e!2551636))))

(assert (=> d!1220159 (= res!1680112 ((_ is Cons!44311) (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)))))

(assert (=> d!1220159 (= (contains!8881 (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343) (tag!8068 (h!49730 (t!340185 lt!1468341)))) lt!1468367)))

(declare-fun b!4112800 () Bool)

(declare-fun e!2551637 () Bool)

(assert (=> b!4112800 (= e!2551636 e!2551637)))

(declare-fun res!1680111 () Bool)

(assert (=> b!4112800 (=> res!1680111 e!2551637)))

(assert (=> b!4112800 (= res!1680111 (= (h!49731 (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)) (tag!8068 (h!49730 (t!340185 lt!1468341)))))))

(declare-fun b!4112801 () Bool)

(assert (=> b!4112801 (= e!2551637 (contains!8881 (t!340186 (Cons!44311 (tag!8068 (h!49730 lt!1468341)) lt!1468343)) (tag!8068 (h!49730 (t!340185 lt!1468341)))))))

(assert (= (and d!1220159 res!1680112) b!4112800))

(assert (= (and b!4112800 (not res!1680111)) b!4112801))

(declare-fun m!4714055 () Bool)

(assert (=> d!1220159 m!4714055))

(declare-fun m!4714057 () Bool)

(assert (=> d!1220159 m!4714057))

(declare-fun m!4714059 () Bool)

(assert (=> b!4112801 m!4714059))

(assert (=> b!4112616 d!1220159))

(declare-fun d!1220161 () Bool)

(declare-fun c!706920 () Bool)

(assert (=> d!1220161 (= c!706920 ((_ is Nil!44311) lt!1468342))))

(declare-fun e!2551640 () (InoxSet String!50940))

(assert (=> d!1220161 (= (content!6827 lt!1468342) e!2551640)))

(declare-fun b!4112806 () Bool)

(assert (=> b!4112806 (= e!2551640 ((as const (Array String!50940 Bool)) false))))

(declare-fun b!4112807 () Bool)

(assert (=> b!4112807 (= e!2551640 ((_ map or) (store ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342) true) (content!6827 (t!340186 lt!1468342))))))

(assert (= (and d!1220161 c!706920) b!4112806))

(assert (= (and d!1220161 (not c!706920)) b!4112807))

(assert (=> b!4112807 m!4713955))

(declare-fun m!4714061 () Bool)

(assert (=> b!4112807 m!4714061))

(assert (=> d!1220063 d!1220161))

(declare-fun d!1220163 () Bool)

(declare-fun c!706921 () Bool)

(assert (=> d!1220163 (= c!706921 ((_ is Nil!44311) lt!1468343))))

(declare-fun e!2551641 () (InoxSet String!50940))

(assert (=> d!1220163 (= (content!6827 lt!1468343) e!2551641)))

(declare-fun b!4112808 () Bool)

(assert (=> b!4112808 (= e!2551641 ((as const (Array String!50940 Bool)) false))))

(declare-fun b!4112809 () Bool)

(assert (=> b!4112809 (= e!2551641 ((_ map or) (store ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468343) true) (content!6827 (t!340186 lt!1468343))))))

(assert (= (and d!1220163 c!706921) b!4112808))

(assert (= (and d!1220163 (not c!706921)) b!4112809))

(declare-fun m!4714063 () Bool)

(assert (=> b!4112809 m!4714063))

(declare-fun m!4714065 () Bool)

(assert (=> b!4112809 m!4714065))

(assert (=> d!1220073 d!1220163))

(declare-fun bs!594421 () Bool)

(declare-fun d!1220165 () Bool)

(assert (= bs!594421 (and d!1220165 d!1220051)))

(declare-fun lambda!128524 () Int)

(assert (=> bs!594421 (= (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 e1!99))) (= lambda!128524 lambda!128506))))

(declare-fun bs!594422 () Bool)

(assert (= bs!594422 (and d!1220165 d!1220059)))

(assert (=> bs!594422 (= (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 e2!99))) (= lambda!128524 lambda!128507))))

(declare-fun bs!594423 () Bool)

(assert (= bs!594423 (and d!1220165 d!1220091)))

(assert (=> bs!594423 (= (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 l!6462)))) (= lambda!128524 lambda!128513))))

(assert (=> d!1220165 true))

(assert (=> d!1220165 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))) (dynLambda!18949 order!23329 lambda!128524))))

(assert (=> d!1220165 (= (equivClasses!3006 (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))) (Forall2!1138 lambda!128524))))

(declare-fun bs!594424 () Bool)

(assert (= bs!594424 d!1220165))

(declare-fun m!4714067 () Bool)

(assert (=> bs!594424 m!4714067))

(assert (=> b!4112618 d!1220165))

(declare-fun d!1220167 () Bool)

(assert (=> d!1220167 (= (inv!58929 (tag!8068 (h!49730 (t!340185 (t!340185 l!6462))))) (= (mod (str.len (value!226018 (tag!8068 (h!49730 (t!340185 (t!340185 l!6462)))))) 2) 0))))

(assert (=> b!4112666 d!1220167))

(declare-fun d!1220169 () Bool)

(declare-fun res!1680113 () Bool)

(declare-fun e!2551642 () Bool)

(assert (=> d!1220169 (=> (not res!1680113) (not e!2551642))))

(assert (=> d!1220169 (= res!1680113 (semiInverseModEq!3107 (toChars!9707 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462))))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462)))))))))

(assert (=> d!1220169 (= (inv!58931 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462))))) e!2551642)))

(declare-fun b!4112810 () Bool)

(assert (=> b!4112810 (= e!2551642 (equivClasses!3006 (toChars!9707 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462))))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 (t!340185 l!6462)))))))))

(assert (= (and d!1220169 res!1680113) b!4112810))

(declare-fun m!4714069 () Bool)

(assert (=> d!1220169 m!4714069))

(declare-fun m!4714071 () Bool)

(assert (=> b!4112810 m!4714071))

(assert (=> b!4112666 d!1220169))

(declare-fun d!1220171 () Bool)

(declare-fun lt!1468368 () Bool)

(assert (=> d!1220171 (= lt!1468368 (select (content!6827 (t!340186 lt!1468345)) (tag!8068 (h!49730 l!6462))))))

(declare-fun e!2551643 () Bool)

(assert (=> d!1220171 (= lt!1468368 e!2551643)))

(declare-fun res!1680115 () Bool)

(assert (=> d!1220171 (=> (not res!1680115) (not e!2551643))))

(assert (=> d!1220171 (= res!1680115 ((_ is Cons!44311) (t!340186 lt!1468345)))))

(assert (=> d!1220171 (= (contains!8881 (t!340186 lt!1468345) (tag!8068 (h!49730 l!6462))) lt!1468368)))

(declare-fun b!4112811 () Bool)

(declare-fun e!2551644 () Bool)

(assert (=> b!4112811 (= e!2551643 e!2551644)))

(declare-fun res!1680114 () Bool)

(assert (=> b!4112811 (=> res!1680114 e!2551644)))

(assert (=> b!4112811 (= res!1680114 (= (h!49731 (t!340186 lt!1468345)) (tag!8068 (h!49730 l!6462))))))

(declare-fun b!4112812 () Bool)

(assert (=> b!4112812 (= e!2551644 (contains!8881 (t!340186 (t!340186 lt!1468345)) (tag!8068 (h!49730 l!6462))))))

(assert (= (and d!1220171 res!1680115) b!4112811))

(assert (= (and b!4112811 (not res!1680114)) b!4112812))

(declare-fun m!4714073 () Bool)

(assert (=> d!1220171 m!4714073))

(declare-fun m!4714075 () Bool)

(assert (=> d!1220171 m!4714075))

(declare-fun m!4714077 () Bool)

(assert (=> b!4112812 m!4714077))

(assert (=> b!4112622 d!1220171))

(declare-fun d!1220173 () Bool)

(assert (=> d!1220173 (= (content!6827 Nil!44311) ((as const (Array String!50940 Bool)) false))))

(assert (=> d!1220065 d!1220173))

(declare-fun d!1220175 () Bool)

(assert (=> d!1220175 (= (Forall!1539 lambda!128510) (choose!25141 lambda!128510))))

(declare-fun bs!594425 () Bool)

(assert (= bs!594425 d!1220175))

(declare-fun m!4714079 () Bool)

(assert (=> bs!594425 m!4714079))

(assert (=> d!1220075 d!1220175))

(declare-fun d!1220177 () Bool)

(declare-fun res!1680116 () Bool)

(declare-fun e!2551645 () Bool)

(assert (=> d!1220177 (=> res!1680116 e!2551645)))

(assert (=> d!1220177 (= res!1680116 ((_ is Nil!44310) (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))))))

(assert (=> d!1220177 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311))) e!2551645)))

(declare-fun b!4112813 () Bool)

(declare-fun e!2551646 () Bool)

(assert (=> b!4112813 (= e!2551645 e!2551646)))

(declare-fun res!1680117 () Bool)

(assert (=> b!4112813 (=> (not res!1680117) (not e!2551646))))

(assert (=> b!4112813 (= res!1680117 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))))))

(declare-fun b!4112814 () Bool)

(assert (=> b!4112814 (= e!2551646 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462))))) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)))))))

(assert (= (and d!1220177 (not res!1680116)) b!4112813))

(assert (= (and b!4112813 res!1680117) b!4112814))

(declare-fun m!4714081 () Bool)

(assert (=> b!4112813 m!4714081))

(declare-fun m!4714083 () Bool)

(assert (=> b!4112814 m!4714083))

(assert (=> b!4112595 d!1220177))

(declare-fun d!1220179 () Bool)

(declare-fun c!706922 () Bool)

(assert (=> d!1220179 (= c!706922 ((_ is Nil!44311) (t!340186 lt!1468342)))))

(declare-fun e!2551647 () (InoxSet String!50940))

(assert (=> d!1220179 (= (foldLeft!6 (t!340186 lt!1468342) (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) lambda!128498) e!2551647)))

(declare-fun b!4112815 () Bool)

(assert (=> b!4112815 (= e!2551647 (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)))))

(declare-fun b!4112816 () Bool)

(assert (=> b!4112816 (= e!2551647 (foldLeft!6 (t!340186 (t!340186 lt!1468342)) (dynLambda!18952 lambda!128498 (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) (h!49731 (t!340186 lt!1468342))) lambda!128498))))

(assert (= (and d!1220179 c!706922) b!4112815))

(assert (= (and d!1220179 (not c!706922)) b!4112816))

(declare-fun b_lambda!120695 () Bool)

(assert (=> (not b_lambda!120695) (not b!4112816)))

(assert (=> b!4112816 m!4713933))

(declare-fun m!4714085 () Bool)

(assert (=> b!4112816 m!4714085))

(assert (=> b!4112816 m!4714085))

(declare-fun m!4714087 () Bool)

(assert (=> b!4112816 m!4714087))

(assert (=> b!4112620 d!1220179))

(declare-fun bs!594426 () Bool)

(declare-fun d!1220181 () Bool)

(assert (= bs!594426 (and d!1220181 d!1220075)))

(declare-fun lambda!128525 () Int)

(assert (=> bs!594426 (= (and (= (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toChars!9707 (transformation!7208 e1!99))) (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 e1!99)))) (= lambda!128525 lambda!128510))))

(declare-fun bs!594427 () Bool)

(assert (= bs!594427 (and d!1220181 d!1220081)))

(assert (=> bs!594427 (= (and (= (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toChars!9707 (transformation!7208 e2!99))) (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 e2!99)))) (= lambda!128525 lambda!128511))))

(declare-fun bs!594428 () Bool)

(assert (= bs!594428 (and d!1220181 d!1220087)))

(assert (=> bs!594428 (= (and (= (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toChars!9707 (transformation!7208 (h!49730 l!6462)))) (= (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 l!6462))))) (= lambda!128525 lambda!128512))))

(assert (=> d!1220181 true))

(assert (=> d!1220181 (< (dynLambda!18950 order!23331 (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462))))) (dynLambda!18951 order!23333 lambda!128525))))

(assert (=> d!1220181 true))

(assert (=> d!1220181 (< (dynLambda!18948 order!23327 (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))) (dynLambda!18951 order!23333 lambda!128525))))

(assert (=> d!1220181 (= (semiInverseModEq!3107 (toChars!9707 (transformation!7208 (h!49730 (t!340185 l!6462)))) (toValue!9848 (transformation!7208 (h!49730 (t!340185 l!6462))))) (Forall!1539 lambda!128525))))

(declare-fun bs!594429 () Bool)

(assert (= bs!594429 d!1220181))

(declare-fun m!4714089 () Bool)

(assert (=> bs!594429 m!4714089))

(assert (=> d!1220085 d!1220181))

(declare-fun d!1220183 () Bool)

(assert (not d!1220183))

(assert (=> b!4112593 d!1220183))

(declare-fun lt!1468369 () Bool)

(declare-fun d!1220185 () Bool)

(assert (=> d!1220185 (= lt!1468369 (select (content!6827 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))))

(declare-fun e!2551648 () Bool)

(assert (=> d!1220185 (= lt!1468369 e!2551648)))

(declare-fun res!1680119 () Bool)

(assert (=> d!1220185 (=> (not res!1680119) (not e!2551648))))

(assert (=> d!1220185 (= res!1680119 ((_ is Cons!44311) (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)))))

(assert (=> d!1220185 (= (contains!8881 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311) (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))) lt!1468369)))

(declare-fun b!4112817 () Bool)

(declare-fun e!2551649 () Bool)

(assert (=> b!4112817 (= e!2551648 e!2551649)))

(declare-fun res!1680118 () Bool)

(assert (=> b!4112817 (=> res!1680118 e!2551649)))

(assert (=> b!4112817 (= res!1680118 (= (h!49731 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))))

(declare-fun b!4112818 () Bool)

(assert (=> b!4112818 (= e!2551649 (contains!8881 (t!340186 (Cons!44311 (tag!8068 (h!49730 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))) Nil!44311)) (tag!8068 (h!49730 (t!340185 (Cons!44310 e2!99 (Cons!44310 e1!99 l!6462)))))))))

(assert (= (and d!1220185 res!1680119) b!4112817))

(assert (= (and b!4112817 (not res!1680118)) b!4112818))

(declare-fun m!4714091 () Bool)

(assert (=> d!1220185 m!4714091))

(declare-fun m!4714093 () Bool)

(assert (=> d!1220185 m!4714093))

(declare-fun m!4714095 () Bool)

(assert (=> b!4112818 m!4714095))

(assert (=> b!4112594 d!1220185))

(declare-fun d!1220187 () Bool)

(declare-fun res!1680120 () Bool)

(declare-fun e!2551650 () Bool)

(assert (=> d!1220187 (=> res!1680120 e!2551650)))

(assert (=> d!1220187 (= res!1680120 ((_ is Nil!44310) (t!340185 (t!340185 l!6462))))))

(assert (=> d!1220187 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 l!6462)) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342))) e!2551650)))

(declare-fun b!4112819 () Bool)

(declare-fun e!2551651 () Bool)

(assert (=> b!4112819 (= e!2551650 e!2551651)))

(declare-fun res!1680121 () Bool)

(assert (=> b!4112819 (=> (not res!1680121) (not e!2551651))))

(assert (=> b!4112819 (= res!1680121 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)) (tag!8068 (h!49730 (t!340185 (t!340185 l!6462)))))))))

(declare-fun b!4112820 () Bool)

(assert (=> b!4112820 (= e!2551651 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (t!340185 l!6462)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)))))))

(assert (= (and d!1220187 (not res!1680120)) b!4112819))

(assert (= (and b!4112819 res!1680121) b!4112820))

(declare-fun m!4714097 () Bool)

(assert (=> b!4112819 m!4714097))

(declare-fun m!4714099 () Bool)

(assert (=> b!4112820 m!4714099))

(assert (=> b!4112601 d!1220187))

(assert (=> d!1220057 d!1220173))

(declare-fun d!1220189 () Bool)

(declare-fun lt!1468370 () Bool)

(assert (=> d!1220189 (= lt!1468370 (select (content!6827 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(declare-fun e!2551652 () Bool)

(assert (=> d!1220189 (= lt!1468370 e!2551652)))

(declare-fun res!1680123 () Bool)

(assert (=> d!1220189 (=> (not res!1680123) (not e!2551652))))

(assert (=> d!1220189 (= res!1680123 ((_ is Cons!44311) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)))))

(assert (=> d!1220189 (= (contains!8881 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342) (tag!8068 (h!49730 (t!340185 l!6462)))) lt!1468370)))

(declare-fun b!4112821 () Bool)

(declare-fun e!2551653 () Bool)

(assert (=> b!4112821 (= e!2551652 e!2551653)))

(declare-fun res!1680122 () Bool)

(assert (=> b!4112821 (=> res!1680122 e!2551653)))

(assert (=> b!4112821 (= res!1680122 (= (h!49731 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(declare-fun b!4112822 () Bool)

(assert (=> b!4112822 (= e!2551653 (contains!8881 (t!340186 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468342)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(assert (= (and d!1220189 res!1680123) b!4112821))

(assert (= (and b!4112821 (not res!1680122)) b!4112822))

(declare-fun m!4714101 () Bool)

(assert (=> d!1220189 m!4714101))

(declare-fun m!4714103 () Bool)

(assert (=> d!1220189 m!4714103))

(declare-fun m!4714105 () Bool)

(assert (=> b!4112822 m!4714105))

(assert (=> b!4112600 d!1220189))

(declare-fun d!1220191 () Bool)

(assert (=> d!1220191 (= (Forall2!1138 lambda!128506) (choose!25142 lambda!128506))))

(declare-fun bs!594430 () Bool)

(assert (= bs!594430 d!1220191))

(declare-fun m!4714107 () Bool)

(assert (=> bs!594430 m!4714107))

(assert (=> d!1220051 d!1220191))

(declare-fun d!1220193 () Bool)

(declare-fun res!1680124 () Bool)

(declare-fun e!2551654 () Bool)

(assert (=> d!1220193 (=> res!1680124 e!2551654)))

(assert (=> d!1220193 (= res!1680124 ((_ is Nil!44310) (t!340185 (t!340185 l!6462))))))

(assert (=> d!1220193 (= (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 l!6462)) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345))) e!2551654)))

(declare-fun b!4112823 () Bool)

(declare-fun e!2551655 () Bool)

(assert (=> b!4112823 (= e!2551654 e!2551655)))

(declare-fun res!1680125 () Bool)

(assert (=> b!4112823 (=> (not res!1680125) (not e!2551655))))

(assert (=> b!4112823 (= res!1680125 (not (contains!8881 (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)) (tag!8068 (h!49730 (t!340185 (t!340185 l!6462)))))))))

(declare-fun b!4112824 () Bool)

(assert (=> b!4112824 (= e!2551655 (noDuplicateTag!2885 thiss!26878 (t!340185 (t!340185 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 (t!340185 (t!340185 l!6462)))) (Cons!44311 (tag!8068 (h!49730 (t!340185 l!6462))) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)))))))

(assert (= (and d!1220193 (not res!1680124)) b!4112823))

(assert (= (and b!4112823 res!1680125) b!4112824))

(declare-fun m!4714109 () Bool)

(assert (=> b!4112823 m!4714109))

(declare-fun m!4714111 () Bool)

(assert (=> b!4112824 m!4714111))

(assert (=> b!4112624 d!1220193))

(declare-fun d!1220195 () Bool)

(declare-fun c!706923 () Bool)

(assert (=> d!1220195 (= c!706923 ((_ is Nil!44311) lt!1468345))))

(declare-fun e!2551656 () (InoxSet String!50940))

(assert (=> d!1220195 (= (content!6827 lt!1468345) e!2551656)))

(declare-fun b!4112825 () Bool)

(assert (=> b!4112825 (= e!2551656 ((as const (Array String!50940 Bool)) false))))

(declare-fun b!4112826 () Bool)

(assert (=> b!4112826 (= e!2551656 ((_ map or) (store ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345) true) (content!6827 (t!340186 lt!1468345))))))

(assert (= (and d!1220195 c!706923) b!4112825))

(assert (= (and d!1220195 (not c!706923)) b!4112826))

(assert (=> b!4112826 m!4713953))

(assert (=> b!4112826 m!4714073))

(assert (=> d!1220093 d!1220195))

(declare-fun d!1220197 () Bool)

(declare-fun lt!1468371 () Bool)

(assert (=> d!1220197 (= lt!1468371 (select (content!6827 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(declare-fun e!2551657 () Bool)

(assert (=> d!1220197 (= lt!1468371 e!2551657)))

(declare-fun res!1680127 () Bool)

(assert (=> d!1220197 (=> (not res!1680127) (not e!2551657))))

(assert (=> d!1220197 (= res!1680127 ((_ is Cons!44311) (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)))))

(assert (=> d!1220197 (= (contains!8881 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345) (tag!8068 (h!49730 (t!340185 l!6462)))) lt!1468371)))

(declare-fun b!4112827 () Bool)

(declare-fun e!2551658 () Bool)

(assert (=> b!4112827 (= e!2551657 e!2551658)))

(declare-fun res!1680126 () Bool)

(assert (=> b!4112827 (=> res!1680126 e!2551658)))

(assert (=> b!4112827 (= res!1680126 (= (h!49731 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(declare-fun b!4112828 () Bool)

(assert (=> b!4112828 (= e!2551658 (contains!8881 (t!340186 (Cons!44311 (tag!8068 (h!49730 l!6462)) lt!1468345)) (tag!8068 (h!49730 (t!340185 l!6462)))))))

(assert (= (and d!1220197 res!1680127) b!4112827))

(assert (= (and b!4112827 (not res!1680126)) b!4112828))

(declare-fun m!4714113 () Bool)

(assert (=> d!1220197 m!4714113))

(declare-fun m!4714115 () Bool)

(assert (=> d!1220197 m!4714115))

(declare-fun m!4714117 () Bool)

(assert (=> b!4112828 m!4714117))

(assert (=> b!4112623 d!1220197))

(assert (=> d!1220071 d!1220001))

(declare-fun d!1220199 () Bool)

(declare-fun lt!1468372 () Bool)

(assert (=> d!1220199 (= lt!1468372 (select (content!6827 (t!340186 lt!1468342)) (tag!8068 (h!49730 l!6462))))))

(declare-fun e!2551659 () Bool)

(assert (=> d!1220199 (= lt!1468372 e!2551659)))

(declare-fun res!1680129 () Bool)

(assert (=> d!1220199 (=> (not res!1680129) (not e!2551659))))

(assert (=> d!1220199 (= res!1680129 ((_ is Cons!44311) (t!340186 lt!1468342)))))

(assert (=> d!1220199 (= (contains!8881 (t!340186 lt!1468342) (tag!8068 (h!49730 l!6462))) lt!1468372)))

(declare-fun b!4112829 () Bool)

(declare-fun e!2551660 () Bool)

(assert (=> b!4112829 (= e!2551659 e!2551660)))

(declare-fun res!1680128 () Bool)

(assert (=> b!4112829 (=> res!1680128 e!2551660)))

(assert (=> b!4112829 (= res!1680128 (= (h!49731 (t!340186 lt!1468342)) (tag!8068 (h!49730 l!6462))))))

(declare-fun b!4112830 () Bool)

(assert (=> b!4112830 (= e!2551660 (contains!8881 (t!340186 (t!340186 lt!1468342)) (tag!8068 (h!49730 l!6462))))))

(assert (= (and d!1220199 res!1680129) b!4112829))

(assert (= (and b!4112829 (not res!1680128)) b!4112830))

(assert (=> d!1220199 m!4714061))

(declare-fun m!4714119 () Bool)

(assert (=> d!1220199 m!4714119))

(declare-fun m!4714121 () Bool)

(assert (=> b!4112830 m!4714121))

(assert (=> b!4112597 d!1220199))

(declare-fun d!1220201 () Bool)

(declare-fun lt!1468373 () Bool)

(assert (=> d!1220201 (= lt!1468373 (select (content!6827 (t!340186 lt!1468343)) (tag!8068 (h!49730 lt!1468341))))))

(declare-fun e!2551661 () Bool)

(assert (=> d!1220201 (= lt!1468373 e!2551661)))

(declare-fun res!1680131 () Bool)

(assert (=> d!1220201 (=> (not res!1680131) (not e!2551661))))

(assert (=> d!1220201 (= res!1680131 ((_ is Cons!44311) (t!340186 lt!1468343)))))

(assert (=> d!1220201 (= (contains!8881 (t!340186 lt!1468343) (tag!8068 (h!49730 lt!1468341))) lt!1468373)))

(declare-fun b!4112831 () Bool)

(declare-fun e!2551662 () Bool)

(assert (=> b!4112831 (= e!2551661 e!2551662)))

(declare-fun res!1680130 () Bool)

(assert (=> b!4112831 (=> res!1680130 e!2551662)))

(assert (=> b!4112831 (= res!1680130 (= (h!49731 (t!340186 lt!1468343)) (tag!8068 (h!49730 lt!1468341))))))

(declare-fun b!4112832 () Bool)

(assert (=> b!4112832 (= e!2551662 (contains!8881 (t!340186 (t!340186 lt!1468343)) (tag!8068 (h!49730 lt!1468341))))))

(assert (= (and d!1220201 res!1680131) b!4112831))

(assert (= (and b!4112831 (not res!1680130)) b!4112832))

(assert (=> d!1220201 m!4714065))

(declare-fun m!4714123 () Bool)

(assert (=> d!1220201 m!4714123))

(declare-fun m!4714125 () Bool)

(assert (=> b!4112832 m!4714125))

(assert (=> b!4112605 d!1220201))

(declare-fun d!1220203 () Bool)

(declare-fun c!706924 () Bool)

(assert (=> d!1220203 (= c!706924 ((_ is Nil!44311) (t!340186 lt!1468345)))))

(declare-fun e!2551663 () (InoxSet String!50940))

(assert (=> d!1220203 (= (foldLeft!6 (t!340186 lt!1468345) (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) lambda!128499) e!2551663)))

(declare-fun b!4112833 () Bool)

(assert (=> b!4112833 (= e!2551663 (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)))))

(declare-fun b!4112834 () Bool)

(assert (=> b!4112834 (= e!2551663 (foldLeft!6 (t!340186 (t!340186 lt!1468345)) (dynLambda!18952 lambda!128499 (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) (h!49731 (t!340186 lt!1468345))) lambda!128499))))

(assert (= (and d!1220203 c!706924) b!4112833))

(assert (= (and d!1220203 (not c!706924)) b!4112834))

(declare-fun b_lambda!120697 () Bool)

(assert (=> (not b_lambda!120697) (not b!4112834)))

(assert (=> b!4112834 m!4713917))

(declare-fun m!4714127 () Bool)

(assert (=> b!4112834 m!4714127))

(assert (=> b!4112834 m!4714127))

(declare-fun m!4714129 () Bool)

(assert (=> b!4112834 m!4714129))

(assert (=> b!4112615 d!1220203))

(declare-fun b!4112835 () Bool)

(declare-fun e!2551664 () Bool)

(assert (=> b!4112835 (= e!2551664 tp_is_empty!21171)))

(assert (=> b!4112662 (= tp!1251392 e!2551664)))

(declare-fun b!4112836 () Bool)

(declare-fun tp!1251515 () Bool)

(declare-fun tp!1251513 () Bool)

(assert (=> b!4112836 (= e!2551664 (and tp!1251515 tp!1251513))))

(declare-fun b!4112838 () Bool)

(declare-fun tp!1251512 () Bool)

(declare-fun tp!1251511 () Bool)

(assert (=> b!4112838 (= e!2551664 (and tp!1251512 tp!1251511))))

(declare-fun b!4112837 () Bool)

(declare-fun tp!1251514 () Bool)

(assert (=> b!4112837 (= e!2551664 tp!1251514)))

(assert (= (and b!4112662 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112835))

(assert (= (and b!4112662 ((_ is Concat!19552) (regOne!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112836))

(assert (= (and b!4112662 ((_ is Star!12113) (regOne!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112837))

(assert (= (and b!4112662 ((_ is Union!12113) (regOne!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112838))

(declare-fun b!4112839 () Bool)

(declare-fun e!2551665 () Bool)

(assert (=> b!4112839 (= e!2551665 tp_is_empty!21171)))

(assert (=> b!4112662 (= tp!1251390 e!2551665)))

(declare-fun b!4112840 () Bool)

(declare-fun tp!1251520 () Bool)

(declare-fun tp!1251518 () Bool)

(assert (=> b!4112840 (= e!2551665 (and tp!1251520 tp!1251518))))

(declare-fun b!4112842 () Bool)

(declare-fun tp!1251517 () Bool)

(declare-fun tp!1251516 () Bool)

(assert (=> b!4112842 (= e!2551665 (and tp!1251517 tp!1251516))))

(declare-fun b!4112841 () Bool)

(declare-fun tp!1251519 () Bool)

(assert (=> b!4112841 (= e!2551665 tp!1251519)))

(assert (= (and b!4112662 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112839))

(assert (= (and b!4112662 ((_ is Concat!19552) (regTwo!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112840))

(assert (= (and b!4112662 ((_ is Star!12113) (regTwo!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112841))

(assert (= (and b!4112662 ((_ is Union!12113) (regTwo!24738 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112842))

(declare-fun b!4112843 () Bool)

(declare-fun e!2551666 () Bool)

(assert (=> b!4112843 (= e!2551666 tp_is_empty!21171)))

(assert (=> b!4112628 (= tp!1251344 e!2551666)))

(declare-fun b!4112844 () Bool)

(declare-fun tp!1251525 () Bool)

(declare-fun tp!1251523 () Bool)

(assert (=> b!4112844 (= e!2551666 (and tp!1251525 tp!1251523))))

(declare-fun b!4112846 () Bool)

(declare-fun tp!1251522 () Bool)

(declare-fun tp!1251521 () Bool)

(assert (=> b!4112846 (= e!2551666 (and tp!1251522 tp!1251521))))

(declare-fun b!4112845 () Bool)

(declare-fun tp!1251524 () Bool)

(assert (=> b!4112845 (= e!2551666 tp!1251524)))

(assert (= (and b!4112628 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112843))

(assert (= (and b!4112628 ((_ is Concat!19552) (regOne!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112844))

(assert (= (and b!4112628 ((_ is Star!12113) (regOne!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112845))

(assert (= (and b!4112628 ((_ is Union!12113) (regOne!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112846))

(declare-fun b!4112847 () Bool)

(declare-fun e!2551667 () Bool)

(assert (=> b!4112847 (= e!2551667 tp_is_empty!21171)))

(assert (=> b!4112628 (= tp!1251343 e!2551667)))

(declare-fun b!4112848 () Bool)

(declare-fun tp!1251530 () Bool)

(declare-fun tp!1251528 () Bool)

(assert (=> b!4112848 (= e!2551667 (and tp!1251530 tp!1251528))))

(declare-fun b!4112850 () Bool)

(declare-fun tp!1251527 () Bool)

(declare-fun tp!1251526 () Bool)

(assert (=> b!4112850 (= e!2551667 (and tp!1251527 tp!1251526))))

(declare-fun b!4112849 () Bool)

(declare-fun tp!1251529 () Bool)

(assert (=> b!4112849 (= e!2551667 tp!1251529)))

(assert (= (and b!4112628 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112847))

(assert (= (and b!4112628 ((_ is Concat!19552) (regTwo!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112848))

(assert (= (and b!4112628 ((_ is Star!12113) (regTwo!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112849))

(assert (= (and b!4112628 ((_ is Union!12113) (regTwo!24739 (regOne!24738 (regex!7208 e1!99))))) b!4112850))

(declare-fun b!4112851 () Bool)

(declare-fun e!2551668 () Bool)

(assert (=> b!4112851 (= e!2551668 tp_is_empty!21171)))

(assert (=> b!4112670 (= tp!1251400 e!2551668)))

(declare-fun b!4112852 () Bool)

(declare-fun tp!1251535 () Bool)

(declare-fun tp!1251533 () Bool)

(assert (=> b!4112852 (= e!2551668 (and tp!1251535 tp!1251533))))

(declare-fun b!4112854 () Bool)

(declare-fun tp!1251532 () Bool)

(declare-fun tp!1251531 () Bool)

(assert (=> b!4112854 (= e!2551668 (and tp!1251532 tp!1251531))))

(declare-fun b!4112853 () Bool)

(declare-fun tp!1251534 () Bool)

(assert (=> b!4112853 (= e!2551668 tp!1251534)))

(assert (= (and b!4112670 ((_ is ElementMatch!12113) (reg!12442 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4112851))

(assert (= (and b!4112670 ((_ is Concat!19552) (reg!12442 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4112852))

(assert (= (and b!4112670 ((_ is Star!12113) (reg!12442 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4112853))

(assert (= (and b!4112670 ((_ is Union!12113) (reg!12442 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4112854))

(declare-fun b!4112855 () Bool)

(declare-fun e!2551669 () Bool)

(assert (=> b!4112855 (= e!2551669 tp_is_empty!21171)))

(assert (=> b!4112626 (= tp!1251347 e!2551669)))

(declare-fun b!4112856 () Bool)

(declare-fun tp!1251540 () Bool)

(declare-fun tp!1251538 () Bool)

(assert (=> b!4112856 (= e!2551669 (and tp!1251540 tp!1251538))))

(declare-fun b!4112858 () Bool)

(declare-fun tp!1251537 () Bool)

(declare-fun tp!1251536 () Bool)

(assert (=> b!4112858 (= e!2551669 (and tp!1251537 tp!1251536))))

(declare-fun b!4112857 () Bool)

(declare-fun tp!1251539 () Bool)

(assert (=> b!4112857 (= e!2551669 tp!1251539)))

(assert (= (and b!4112626 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112855))

(assert (= (and b!4112626 ((_ is Concat!19552) (regOne!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112856))

(assert (= (and b!4112626 ((_ is Star!12113) (regOne!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112857))

(assert (= (and b!4112626 ((_ is Union!12113) (regOne!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112858))

(declare-fun b!4112859 () Bool)

(declare-fun e!2551670 () Bool)

(assert (=> b!4112859 (= e!2551670 tp_is_empty!21171)))

(assert (=> b!4112626 (= tp!1251345 e!2551670)))

(declare-fun b!4112860 () Bool)

(declare-fun tp!1251545 () Bool)

(declare-fun tp!1251543 () Bool)

(assert (=> b!4112860 (= e!2551670 (and tp!1251545 tp!1251543))))

(declare-fun b!4112862 () Bool)

(declare-fun tp!1251542 () Bool)

(declare-fun tp!1251541 () Bool)

(assert (=> b!4112862 (= e!2551670 (and tp!1251542 tp!1251541))))

(declare-fun b!4112861 () Bool)

(declare-fun tp!1251544 () Bool)

(assert (=> b!4112861 (= e!2551670 tp!1251544)))

(assert (= (and b!4112626 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112859))

(assert (= (and b!4112626 ((_ is Concat!19552) (regTwo!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112860))

(assert (= (and b!4112626 ((_ is Star!12113) (regTwo!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112861))

(assert (= (and b!4112626 ((_ is Union!12113) (regTwo!24738 (regOne!24738 (regex!7208 e1!99))))) b!4112862))

(declare-fun b!4112863 () Bool)

(declare-fun e!2551671 () Bool)

(assert (=> b!4112863 (= e!2551671 tp_is_empty!21171)))

(assert (=> b!4112644 (= tp!1251364 e!2551671)))

(declare-fun b!4112864 () Bool)

(declare-fun tp!1251550 () Bool)

(declare-fun tp!1251548 () Bool)

(assert (=> b!4112864 (= e!2551671 (and tp!1251550 tp!1251548))))

(declare-fun b!4112866 () Bool)

(declare-fun tp!1251547 () Bool)

(declare-fun tp!1251546 () Bool)

(assert (=> b!4112866 (= e!2551671 (and tp!1251547 tp!1251546))))

(declare-fun b!4112865 () Bool)

(declare-fun tp!1251549 () Bool)

(assert (=> b!4112865 (= e!2551671 tp!1251549)))

(assert (= (and b!4112644 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112863))

(assert (= (and b!4112644 ((_ is Concat!19552) (regOne!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112864))

(assert (= (and b!4112644 ((_ is Star!12113) (regOne!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112865))

(assert (= (and b!4112644 ((_ is Union!12113) (regOne!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112866))

(declare-fun b!4112867 () Bool)

(declare-fun e!2551672 () Bool)

(assert (=> b!4112867 (= e!2551672 tp_is_empty!21171)))

(assert (=> b!4112644 (= tp!1251363 e!2551672)))

(declare-fun b!4112868 () Bool)

(declare-fun tp!1251555 () Bool)

(declare-fun tp!1251553 () Bool)

(assert (=> b!4112868 (= e!2551672 (and tp!1251555 tp!1251553))))

(declare-fun b!4112870 () Bool)

(declare-fun tp!1251552 () Bool)

(declare-fun tp!1251551 () Bool)

(assert (=> b!4112870 (= e!2551672 (and tp!1251552 tp!1251551))))

(declare-fun b!4112869 () Bool)

(declare-fun tp!1251554 () Bool)

(assert (=> b!4112869 (= e!2551672 tp!1251554)))

(assert (= (and b!4112644 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112867))

(assert (= (and b!4112644 ((_ is Concat!19552) (regTwo!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112868))

(assert (= (and b!4112644 ((_ is Star!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112869))

(assert (= (and b!4112644 ((_ is Union!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e2!99))))) b!4112870))

(declare-fun b!4112871 () Bool)

(declare-fun e!2551673 () Bool)

(assert (=> b!4112871 (= e!2551673 tp_is_empty!21171)))

(assert (=> b!4112679 (= tp!1251408 e!2551673)))

(declare-fun b!4112872 () Bool)

(declare-fun tp!1251560 () Bool)

(declare-fun tp!1251558 () Bool)

(assert (=> b!4112872 (= e!2551673 (and tp!1251560 tp!1251558))))

(declare-fun b!4112874 () Bool)

(declare-fun tp!1251557 () Bool)

(declare-fun tp!1251556 () Bool)

(assert (=> b!4112874 (= e!2551673 (and tp!1251557 tp!1251556))))

(declare-fun b!4112873 () Bool)

(declare-fun tp!1251559 () Bool)

(assert (=> b!4112873 (= e!2551673 tp!1251559)))

(assert (= (and b!4112679 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112871))

(assert (= (and b!4112679 ((_ is Concat!19552) (regOne!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112872))

(assert (= (and b!4112679 ((_ is Star!12113) (regOne!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112873))

(assert (= (and b!4112679 ((_ is Union!12113) (regOne!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112874))

(declare-fun b!4112875 () Bool)

(declare-fun e!2551674 () Bool)

(assert (=> b!4112875 (= e!2551674 tp_is_empty!21171)))

(assert (=> b!4112679 (= tp!1251407 e!2551674)))

(declare-fun b!4112876 () Bool)

(declare-fun tp!1251565 () Bool)

(declare-fun tp!1251563 () Bool)

(assert (=> b!4112876 (= e!2551674 (and tp!1251565 tp!1251563))))

(declare-fun b!4112878 () Bool)

(declare-fun tp!1251562 () Bool)

(declare-fun tp!1251561 () Bool)

(assert (=> b!4112878 (= e!2551674 (and tp!1251562 tp!1251561))))

(declare-fun b!4112877 () Bool)

(declare-fun tp!1251564 () Bool)

(assert (=> b!4112877 (= e!2551674 tp!1251564)))

(assert (= (and b!4112679 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112875))

(assert (= (and b!4112679 ((_ is Concat!19552) (regTwo!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112876))

(assert (= (and b!4112679 ((_ is Star!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112877))

(assert (= (and b!4112679 ((_ is Union!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e2!99))))) b!4112878))

(declare-fun b!4112879 () Bool)

(declare-fun e!2551675 () Bool)

(assert (=> b!4112879 (= e!2551675 tp_is_empty!21171)))

(assert (=> b!4112635 (= tp!1251356 e!2551675)))

(declare-fun b!4112880 () Bool)

(declare-fun tp!1251570 () Bool)

(declare-fun tp!1251568 () Bool)

(assert (=> b!4112880 (= e!2551675 (and tp!1251570 tp!1251568))))

(declare-fun b!4112882 () Bool)

(declare-fun tp!1251567 () Bool)

(declare-fun tp!1251566 () Bool)

(assert (=> b!4112882 (= e!2551675 (and tp!1251567 tp!1251566))))

(declare-fun b!4112881 () Bool)

(declare-fun tp!1251569 () Bool)

(assert (=> b!4112881 (= e!2551675 tp!1251569)))

(assert (= (and b!4112635 ((_ is ElementMatch!12113) (reg!12442 (reg!12442 (regex!7208 e1!99))))) b!4112879))

(assert (= (and b!4112635 ((_ is Concat!19552) (reg!12442 (reg!12442 (regex!7208 e1!99))))) b!4112880))

(assert (= (and b!4112635 ((_ is Star!12113) (reg!12442 (reg!12442 (regex!7208 e1!99))))) b!4112881))

(assert (= (and b!4112635 ((_ is Union!12113) (reg!12442 (reg!12442 (regex!7208 e1!99))))) b!4112882))

(declare-fun b!4112883 () Bool)

(declare-fun e!2551676 () Bool)

(assert (=> b!4112883 (= e!2551676 tp_is_empty!21171)))

(assert (=> b!4112642 (= tp!1251367 e!2551676)))

(declare-fun b!4112884 () Bool)

(declare-fun tp!1251575 () Bool)

(declare-fun tp!1251573 () Bool)

(assert (=> b!4112884 (= e!2551676 (and tp!1251575 tp!1251573))))

(declare-fun b!4112886 () Bool)

(declare-fun tp!1251572 () Bool)

(declare-fun tp!1251571 () Bool)

(assert (=> b!4112886 (= e!2551676 (and tp!1251572 tp!1251571))))

(declare-fun b!4112885 () Bool)

(declare-fun tp!1251574 () Bool)

(assert (=> b!4112885 (= e!2551676 tp!1251574)))

(assert (= (and b!4112642 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112883))

(assert (= (and b!4112642 ((_ is Concat!19552) (regOne!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112884))

(assert (= (and b!4112642 ((_ is Star!12113) (regOne!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112885))

(assert (= (and b!4112642 ((_ is Union!12113) (regOne!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112886))

(declare-fun b!4112887 () Bool)

(declare-fun e!2551677 () Bool)

(assert (=> b!4112887 (= e!2551677 tp_is_empty!21171)))

(assert (=> b!4112642 (= tp!1251365 e!2551677)))

(declare-fun b!4112888 () Bool)

(declare-fun tp!1251580 () Bool)

(declare-fun tp!1251578 () Bool)

(assert (=> b!4112888 (= e!2551677 (and tp!1251580 tp!1251578))))

(declare-fun b!4112890 () Bool)

(declare-fun tp!1251577 () Bool)

(declare-fun tp!1251576 () Bool)

(assert (=> b!4112890 (= e!2551677 (and tp!1251577 tp!1251576))))

(declare-fun b!4112889 () Bool)

(declare-fun tp!1251579 () Bool)

(assert (=> b!4112889 (= e!2551677 tp!1251579)))

(assert (= (and b!4112642 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112887))

(assert (= (and b!4112642 ((_ is Concat!19552) (regTwo!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112888))

(assert (= (and b!4112642 ((_ is Star!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112889))

(assert (= (and b!4112642 ((_ is Union!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e2!99))))) b!4112890))

(declare-fun b!4112891 () Bool)

(declare-fun e!2551678 () Bool)

(assert (=> b!4112891 (= e!2551678 tp_is_empty!21171)))

(assert (=> b!4112686 (= tp!1251420 e!2551678)))

(declare-fun b!4112892 () Bool)

(declare-fun tp!1251585 () Bool)

(declare-fun tp!1251583 () Bool)

(assert (=> b!4112892 (= e!2551678 (and tp!1251585 tp!1251583))))

(declare-fun b!4112894 () Bool)

(declare-fun tp!1251582 () Bool)

(declare-fun tp!1251581 () Bool)

(assert (=> b!4112894 (= e!2551678 (and tp!1251582 tp!1251581))))

(declare-fun b!4112893 () Bool)

(declare-fun tp!1251584 () Bool)

(assert (=> b!4112893 (= e!2551678 tp!1251584)))

(assert (= (and b!4112686 ((_ is ElementMatch!12113) (reg!12442 (regOne!24739 (regex!7208 e1!99))))) b!4112891))

(assert (= (and b!4112686 ((_ is Concat!19552) (reg!12442 (regOne!24739 (regex!7208 e1!99))))) b!4112892))

(assert (= (and b!4112686 ((_ is Star!12113) (reg!12442 (regOne!24739 (regex!7208 e1!99))))) b!4112893))

(assert (= (and b!4112686 ((_ is Union!12113) (reg!12442 (regOne!24739 (regex!7208 e1!99))))) b!4112894))

(declare-fun b!4112895 () Bool)

(declare-fun e!2551679 () Bool)

(assert (=> b!4112895 (= e!2551679 tp_is_empty!21171)))

(assert (=> b!4112677 (= tp!1251411 e!2551679)))

(declare-fun b!4112896 () Bool)

(declare-fun tp!1251590 () Bool)

(declare-fun tp!1251588 () Bool)

(assert (=> b!4112896 (= e!2551679 (and tp!1251590 tp!1251588))))

(declare-fun b!4112898 () Bool)

(declare-fun tp!1251587 () Bool)

(declare-fun tp!1251586 () Bool)

(assert (=> b!4112898 (= e!2551679 (and tp!1251587 tp!1251586))))

(declare-fun b!4112897 () Bool)

(declare-fun tp!1251589 () Bool)

(assert (=> b!4112897 (= e!2551679 tp!1251589)))

(assert (= (and b!4112677 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112895))

(assert (= (and b!4112677 ((_ is Concat!19552) (regOne!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112896))

(assert (= (and b!4112677 ((_ is Star!12113) (regOne!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112897))

(assert (= (and b!4112677 ((_ is Union!12113) (regOne!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112898))

(declare-fun b!4112899 () Bool)

(declare-fun e!2551680 () Bool)

(assert (=> b!4112899 (= e!2551680 tp_is_empty!21171)))

(assert (=> b!4112677 (= tp!1251409 e!2551680)))

(declare-fun b!4112900 () Bool)

(declare-fun tp!1251595 () Bool)

(declare-fun tp!1251593 () Bool)

(assert (=> b!4112900 (= e!2551680 (and tp!1251595 tp!1251593))))

(declare-fun b!4112902 () Bool)

(declare-fun tp!1251592 () Bool)

(declare-fun tp!1251591 () Bool)

(assert (=> b!4112902 (= e!2551680 (and tp!1251592 tp!1251591))))

(declare-fun b!4112901 () Bool)

(declare-fun tp!1251594 () Bool)

(assert (=> b!4112901 (= e!2551680 tp!1251594)))

(assert (= (and b!4112677 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112899))

(assert (= (and b!4112677 ((_ is Concat!19552) (regTwo!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112900))

(assert (= (and b!4112677 ((_ is Star!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112901))

(assert (= (and b!4112677 ((_ is Union!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e2!99))))) b!4112902))

(declare-fun b!4112903 () Bool)

(declare-fun e!2551681 () Bool)

(assert (=> b!4112903 (= e!2551681 tp_is_empty!21171)))

(assert (=> b!4112660 (= tp!1251384 e!2551681)))

(declare-fun b!4112904 () Bool)

(declare-fun tp!1251600 () Bool)

(declare-fun tp!1251598 () Bool)

(assert (=> b!4112904 (= e!2551681 (and tp!1251600 tp!1251598))))

(declare-fun b!4112906 () Bool)

(declare-fun tp!1251597 () Bool)

(declare-fun tp!1251596 () Bool)

(assert (=> b!4112906 (= e!2551681 (and tp!1251597 tp!1251596))))

(declare-fun b!4112905 () Bool)

(declare-fun tp!1251599 () Bool)

(assert (=> b!4112905 (= e!2551681 tp!1251599)))

(assert (= (and b!4112660 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112903))

(assert (= (and b!4112660 ((_ is Concat!19552) (regOne!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112904))

(assert (= (and b!4112660 ((_ is Star!12113) (regOne!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112905))

(assert (= (and b!4112660 ((_ is Union!12113) (regOne!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112906))

(declare-fun b!4112907 () Bool)

(declare-fun e!2551682 () Bool)

(assert (=> b!4112907 (= e!2551682 tp_is_empty!21171)))

(assert (=> b!4112660 (= tp!1251383 e!2551682)))

(declare-fun b!4112908 () Bool)

(declare-fun tp!1251605 () Bool)

(declare-fun tp!1251603 () Bool)

(assert (=> b!4112908 (= e!2551682 (and tp!1251605 tp!1251603))))

(declare-fun b!4112910 () Bool)

(declare-fun tp!1251602 () Bool)

(declare-fun tp!1251601 () Bool)

(assert (=> b!4112910 (= e!2551682 (and tp!1251602 tp!1251601))))

(declare-fun b!4112909 () Bool)

(declare-fun tp!1251604 () Bool)

(assert (=> b!4112909 (= e!2551682 tp!1251604)))

(assert (= (and b!4112660 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112907))

(assert (= (and b!4112660 ((_ is Concat!19552) (regTwo!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112908))

(assert (= (and b!4112660 ((_ is Star!12113) (regTwo!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112909))

(assert (= (and b!4112660 ((_ is Union!12113) (regTwo!24739 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112910))

(declare-fun b!4112911 () Bool)

(declare-fun e!2551683 () Bool)

(assert (=> b!4112911 (= e!2551683 tp_is_empty!21171)))

(assert (=> b!4112651 (= tp!1251376 e!2551683)))

(declare-fun b!4112912 () Bool)

(declare-fun tp!1251610 () Bool)

(declare-fun tp!1251608 () Bool)

(assert (=> b!4112912 (= e!2551683 (and tp!1251610 tp!1251608))))

(declare-fun b!4112914 () Bool)

(declare-fun tp!1251607 () Bool)

(declare-fun tp!1251606 () Bool)

(assert (=> b!4112914 (= e!2551683 (and tp!1251607 tp!1251606))))

(declare-fun b!4112913 () Bool)

(declare-fun tp!1251609 () Bool)

(assert (=> b!4112913 (= e!2551683 tp!1251609)))

(assert (= (and b!4112651 ((_ is ElementMatch!12113) (reg!12442 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4112911))

(assert (= (and b!4112651 ((_ is Concat!19552) (reg!12442 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4112912))

(assert (= (and b!4112651 ((_ is Star!12113) (reg!12442 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4112913))

(assert (= (and b!4112651 ((_ is Union!12113) (reg!12442 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4112914))

(declare-fun b!4112915 () Bool)

(declare-fun e!2551684 () Bool)

(assert (=> b!4112915 (= e!2551684 tp_is_empty!21171)))

(assert (=> b!4112658 (= tp!1251387 e!2551684)))

(declare-fun b!4112916 () Bool)

(declare-fun tp!1251615 () Bool)

(declare-fun tp!1251613 () Bool)

(assert (=> b!4112916 (= e!2551684 (and tp!1251615 tp!1251613))))

(declare-fun b!4112918 () Bool)

(declare-fun tp!1251612 () Bool)

(declare-fun tp!1251611 () Bool)

(assert (=> b!4112918 (= e!2551684 (and tp!1251612 tp!1251611))))

(declare-fun b!4112917 () Bool)

(declare-fun tp!1251614 () Bool)

(assert (=> b!4112917 (= e!2551684 tp!1251614)))

(assert (= (and b!4112658 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112915))

(assert (= (and b!4112658 ((_ is Concat!19552) (regOne!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112916))

(assert (= (and b!4112658 ((_ is Star!12113) (regOne!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112917))

(assert (= (and b!4112658 ((_ is Union!12113) (regOne!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112918))

(declare-fun b!4112919 () Bool)

(declare-fun e!2551685 () Bool)

(assert (=> b!4112919 (= e!2551685 tp_is_empty!21171)))

(assert (=> b!4112658 (= tp!1251385 e!2551685)))

(declare-fun b!4112920 () Bool)

(declare-fun tp!1251620 () Bool)

(declare-fun tp!1251618 () Bool)

(assert (=> b!4112920 (= e!2551685 (and tp!1251620 tp!1251618))))

(declare-fun b!4112922 () Bool)

(declare-fun tp!1251617 () Bool)

(declare-fun tp!1251616 () Bool)

(assert (=> b!4112922 (= e!2551685 (and tp!1251617 tp!1251616))))

(declare-fun b!4112921 () Bool)

(declare-fun tp!1251619 () Bool)

(assert (=> b!4112921 (= e!2551685 tp!1251619)))

(assert (= (and b!4112658 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112919))

(assert (= (and b!4112658 ((_ is Concat!19552) (regTwo!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112920))

(assert (= (and b!4112658 ((_ is Star!12113) (regTwo!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112921))

(assert (= (and b!4112658 ((_ is Union!12113) (regTwo!24738 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4112922))

(declare-fun b!4112925 () Bool)

(declare-fun b_free!115767 () Bool)

(declare-fun b_next!116471 () Bool)

(assert (=> b!4112925 (= b_free!115767 (not b_next!116471))))

(declare-fun tp!1251623 () Bool)

(declare-fun b_and!317653 () Bool)

(assert (=> b!4112925 (= tp!1251623 b_and!317653)))

(declare-fun b_free!115769 () Bool)

(declare-fun b_next!116473 () Bool)

(assert (=> b!4112925 (= b_free!115769 (not b_next!116473))))

(declare-fun tp!1251621 () Bool)

(declare-fun b_and!317655 () Bool)

(assert (=> b!4112925 (= tp!1251621 b_and!317655)))

(declare-fun e!2551688 () Bool)

(assert (=> b!4112925 (= e!2551688 (and tp!1251623 tp!1251621))))

(declare-fun e!2551689 () Bool)

(declare-fun b!4112924 () Bool)

(declare-fun tp!1251622 () Bool)

(assert (=> b!4112924 (= e!2551689 (and tp!1251622 (inv!58929 (tag!8068 (h!49730 (t!340185 (t!340185 (t!340185 l!6462)))))) (inv!58931 (transformation!7208 (h!49730 (t!340185 (t!340185 (t!340185 l!6462)))))) e!2551688))))

(declare-fun b!4112923 () Bool)

(declare-fun e!2551686 () Bool)

(declare-fun tp!1251624 () Bool)

(assert (=> b!4112923 (= e!2551686 (and e!2551689 tp!1251624))))

(assert (=> b!4112665 (= tp!1251396 e!2551686)))

(assert (= b!4112924 b!4112925))

(assert (= b!4112923 b!4112924))

(assert (= (and b!4112665 ((_ is Cons!44310) (t!340185 (t!340185 (t!340185 l!6462))))) b!4112923))

(declare-fun m!4714131 () Bool)

(assert (=> b!4112924 m!4714131))

(declare-fun m!4714133 () Bool)

(assert (=> b!4112924 m!4714133))

(declare-fun b!4112926 () Bool)

(declare-fun e!2551690 () Bool)

(assert (=> b!4112926 (= e!2551690 tp_is_empty!21171)))

(assert (=> b!4112640 (= tp!1251359 e!2551690)))

(declare-fun b!4112927 () Bool)

(declare-fun tp!1251629 () Bool)

(declare-fun tp!1251627 () Bool)

(assert (=> b!4112927 (= e!2551690 (and tp!1251629 tp!1251627))))

(declare-fun b!4112929 () Bool)

(declare-fun tp!1251626 () Bool)

(declare-fun tp!1251625 () Bool)

(assert (=> b!4112929 (= e!2551690 (and tp!1251626 tp!1251625))))

(declare-fun b!4112928 () Bool)

(declare-fun tp!1251628 () Bool)

(assert (=> b!4112928 (= e!2551690 tp!1251628)))

(assert (= (and b!4112640 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112926))

(assert (= (and b!4112640 ((_ is Concat!19552) (regOne!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112927))

(assert (= (and b!4112640 ((_ is Star!12113) (regOne!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112928))

(assert (= (and b!4112640 ((_ is Union!12113) (regOne!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112929))

(declare-fun b!4112930 () Bool)

(declare-fun e!2551691 () Bool)

(assert (=> b!4112930 (= e!2551691 tp_is_empty!21171)))

(assert (=> b!4112640 (= tp!1251358 e!2551691)))

(declare-fun b!4112931 () Bool)

(declare-fun tp!1251634 () Bool)

(declare-fun tp!1251632 () Bool)

(assert (=> b!4112931 (= e!2551691 (and tp!1251634 tp!1251632))))

(declare-fun b!4112933 () Bool)

(declare-fun tp!1251631 () Bool)

(declare-fun tp!1251630 () Bool)

(assert (=> b!4112933 (= e!2551691 (and tp!1251631 tp!1251630))))

(declare-fun b!4112932 () Bool)

(declare-fun tp!1251633 () Bool)

(assert (=> b!4112932 (= e!2551691 tp!1251633)))

(assert (= (and b!4112640 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112930))

(assert (= (and b!4112640 ((_ is Concat!19552) (regTwo!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112931))

(assert (= (and b!4112640 ((_ is Star!12113) (regTwo!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112932))

(assert (= (and b!4112640 ((_ is Union!12113) (regTwo!24739 (regOne!24738 (regex!7208 e2!99))))) b!4112933))

(declare-fun b!4112934 () Bool)

(declare-fun e!2551692 () Bool)

(assert (=> b!4112934 (= e!2551692 tp_is_empty!21171)))

(assert (=> b!4112675 (= tp!1251403 e!2551692)))

(declare-fun b!4112935 () Bool)

(declare-fun tp!1251639 () Bool)

(declare-fun tp!1251637 () Bool)

(assert (=> b!4112935 (= e!2551692 (and tp!1251639 tp!1251637))))

(declare-fun b!4112937 () Bool)

(declare-fun tp!1251636 () Bool)

(declare-fun tp!1251635 () Bool)

(assert (=> b!4112937 (= e!2551692 (and tp!1251636 tp!1251635))))

(declare-fun b!4112936 () Bool)

(declare-fun tp!1251638 () Bool)

(assert (=> b!4112936 (= e!2551692 tp!1251638)))

(assert (= (and b!4112675 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112934))

(assert (= (and b!4112675 ((_ is Concat!19552) (regOne!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112935))

(assert (= (and b!4112675 ((_ is Star!12113) (regOne!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112936))

(assert (= (and b!4112675 ((_ is Union!12113) (regOne!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112937))

(declare-fun b!4112938 () Bool)

(declare-fun e!2551693 () Bool)

(assert (=> b!4112938 (= e!2551693 tp_is_empty!21171)))

(assert (=> b!4112675 (= tp!1251402 e!2551693)))

(declare-fun b!4112939 () Bool)

(declare-fun tp!1251644 () Bool)

(declare-fun tp!1251642 () Bool)

(assert (=> b!4112939 (= e!2551693 (and tp!1251644 tp!1251642))))

(declare-fun b!4112941 () Bool)

(declare-fun tp!1251641 () Bool)

(declare-fun tp!1251640 () Bool)

(assert (=> b!4112941 (= e!2551693 (and tp!1251641 tp!1251640))))

(declare-fun b!4112940 () Bool)

(declare-fun tp!1251643 () Bool)

(assert (=> b!4112940 (= e!2551693 tp!1251643)))

(assert (= (and b!4112675 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112938))

(assert (= (and b!4112675 ((_ is Concat!19552) (regTwo!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112939))

(assert (= (and b!4112675 ((_ is Star!12113) (regTwo!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112940))

(assert (= (and b!4112675 ((_ is Union!12113) (regTwo!24739 (regOne!24739 (regex!7208 e2!99))))) b!4112941))

(declare-fun b!4112942 () Bool)

(declare-fun e!2551694 () Bool)

(assert (=> b!4112942 (= e!2551694 tp_is_empty!21171)))

(assert (=> b!4112631 (= tp!1251351 e!2551694)))

(declare-fun b!4112943 () Bool)

(declare-fun tp!1251649 () Bool)

(declare-fun tp!1251647 () Bool)

(assert (=> b!4112943 (= e!2551694 (and tp!1251649 tp!1251647))))

(declare-fun b!4112945 () Bool)

(declare-fun tp!1251646 () Bool)

(declare-fun tp!1251645 () Bool)

(assert (=> b!4112945 (= e!2551694 (and tp!1251646 tp!1251645))))

(declare-fun b!4112944 () Bool)

(declare-fun tp!1251648 () Bool)

(assert (=> b!4112944 (= e!2551694 tp!1251648)))

(assert (= (and b!4112631 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24738 (regex!7208 e1!99))))) b!4112942))

(assert (= (and b!4112631 ((_ is Concat!19552) (reg!12442 (regTwo!24738 (regex!7208 e1!99))))) b!4112943))

(assert (= (and b!4112631 ((_ is Star!12113) (reg!12442 (regTwo!24738 (regex!7208 e1!99))))) b!4112944))

(assert (= (and b!4112631 ((_ is Union!12113) (reg!12442 (regTwo!24738 (regex!7208 e1!99))))) b!4112945))

(declare-fun b!4112946 () Bool)

(declare-fun e!2551695 () Bool)

(assert (=> b!4112946 (= e!2551695 tp_is_empty!21171)))

(assert (=> b!4112656 (= tp!1251379 e!2551695)))

(declare-fun b!4112947 () Bool)

(declare-fun tp!1251654 () Bool)

(declare-fun tp!1251652 () Bool)

(assert (=> b!4112947 (= e!2551695 (and tp!1251654 tp!1251652))))

(declare-fun b!4112949 () Bool)

(declare-fun tp!1251651 () Bool)

(declare-fun tp!1251650 () Bool)

(assert (=> b!4112949 (= e!2551695 (and tp!1251651 tp!1251650))))

(declare-fun b!4112948 () Bool)

(declare-fun tp!1251653 () Bool)

(assert (=> b!4112948 (= e!2551695 tp!1251653)))

(assert (= (and b!4112656 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112946))

(assert (= (and b!4112656 ((_ is Concat!19552) (regOne!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112947))

(assert (= (and b!4112656 ((_ is Star!12113) (regOne!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112948))

(assert (= (and b!4112656 ((_ is Union!12113) (regOne!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112949))

(declare-fun b!4112950 () Bool)

(declare-fun e!2551696 () Bool)

(assert (=> b!4112950 (= e!2551696 tp_is_empty!21171)))

(assert (=> b!4112656 (= tp!1251378 e!2551696)))

(declare-fun b!4112951 () Bool)

(declare-fun tp!1251659 () Bool)

(declare-fun tp!1251657 () Bool)

(assert (=> b!4112951 (= e!2551696 (and tp!1251659 tp!1251657))))

(declare-fun b!4112953 () Bool)

(declare-fun tp!1251656 () Bool)

(declare-fun tp!1251655 () Bool)

(assert (=> b!4112953 (= e!2551696 (and tp!1251656 tp!1251655))))

(declare-fun b!4112952 () Bool)

(declare-fun tp!1251658 () Bool)

(assert (=> b!4112952 (= e!2551696 tp!1251658)))

(assert (= (and b!4112656 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112950))

(assert (= (and b!4112656 ((_ is Concat!19552) (regTwo!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112951))

(assert (= (and b!4112656 ((_ is Star!12113) (regTwo!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112952))

(assert (= (and b!4112656 ((_ is Union!12113) (regTwo!24739 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112953))

(declare-fun b!4112954 () Bool)

(declare-fun e!2551697 () Bool)

(assert (=> b!4112954 (= e!2551697 tp_is_empty!21171)))

(assert (=> b!4112647 (= tp!1251371 e!2551697)))

(declare-fun b!4112955 () Bool)

(declare-fun tp!1251664 () Bool)

(declare-fun tp!1251662 () Bool)

(assert (=> b!4112955 (= e!2551697 (and tp!1251664 tp!1251662))))

(declare-fun b!4112957 () Bool)

(declare-fun tp!1251661 () Bool)

(declare-fun tp!1251660 () Bool)

(assert (=> b!4112957 (= e!2551697 (and tp!1251661 tp!1251660))))

(declare-fun b!4112956 () Bool)

(declare-fun tp!1251663 () Bool)

(assert (=> b!4112956 (= e!2551697 tp!1251663)))

(assert (= (and b!4112647 ((_ is ElementMatch!12113) (reg!12442 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4112954))

(assert (= (and b!4112647 ((_ is Concat!19552) (reg!12442 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4112955))

(assert (= (and b!4112647 ((_ is Star!12113) (reg!12442 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4112956))

(assert (= (and b!4112647 ((_ is Union!12113) (reg!12442 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4112957))

(declare-fun b!4112958 () Bool)

(declare-fun e!2551698 () Bool)

(assert (=> b!4112958 (= e!2551698 tp_is_empty!21171)))

(assert (=> b!4112691 (= tp!1251423 e!2551698)))

(declare-fun b!4112959 () Bool)

(declare-fun tp!1251669 () Bool)

(declare-fun tp!1251667 () Bool)

(assert (=> b!4112959 (= e!2551698 (and tp!1251669 tp!1251667))))

(declare-fun b!4112961 () Bool)

(declare-fun tp!1251666 () Bool)

(declare-fun tp!1251665 () Bool)

(assert (=> b!4112961 (= e!2551698 (and tp!1251666 tp!1251665))))

(declare-fun b!4112960 () Bool)

(declare-fun tp!1251668 () Bool)

(assert (=> b!4112960 (= e!2551698 tp!1251668)))

(assert (= (and b!4112691 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112958))

(assert (= (and b!4112691 ((_ is Concat!19552) (regOne!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112959))

(assert (= (and b!4112691 ((_ is Star!12113) (regOne!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112960))

(assert (= (and b!4112691 ((_ is Union!12113) (regOne!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112961))

(declare-fun b!4112962 () Bool)

(declare-fun e!2551699 () Bool)

(assert (=> b!4112962 (= e!2551699 tp_is_empty!21171)))

(assert (=> b!4112691 (= tp!1251422 e!2551699)))

(declare-fun b!4112963 () Bool)

(declare-fun tp!1251674 () Bool)

(declare-fun tp!1251672 () Bool)

(assert (=> b!4112963 (= e!2551699 (and tp!1251674 tp!1251672))))

(declare-fun b!4112965 () Bool)

(declare-fun tp!1251671 () Bool)

(declare-fun tp!1251670 () Bool)

(assert (=> b!4112965 (= e!2551699 (and tp!1251671 tp!1251670))))

(declare-fun b!4112964 () Bool)

(declare-fun tp!1251673 () Bool)

(assert (=> b!4112964 (= e!2551699 tp!1251673)))

(assert (= (and b!4112691 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112962))

(assert (= (and b!4112691 ((_ is Concat!19552) (regTwo!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112963))

(assert (= (and b!4112691 ((_ is Star!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112964))

(assert (= (and b!4112691 ((_ is Union!12113) (regTwo!24739 (regTwo!24739 (regex!7208 e1!99))))) b!4112965))

(declare-fun b!4112966 () Bool)

(declare-fun e!2551700 () Bool)

(assert (=> b!4112966 (= e!2551700 tp_is_empty!21171)))

(assert (=> b!4112638 (= tp!1251362 e!2551700)))

(declare-fun b!4112967 () Bool)

(declare-fun tp!1251679 () Bool)

(declare-fun tp!1251677 () Bool)

(assert (=> b!4112967 (= e!2551700 (and tp!1251679 tp!1251677))))

(declare-fun b!4112969 () Bool)

(declare-fun tp!1251676 () Bool)

(declare-fun tp!1251675 () Bool)

(assert (=> b!4112969 (= e!2551700 (and tp!1251676 tp!1251675))))

(declare-fun b!4112968 () Bool)

(declare-fun tp!1251678 () Bool)

(assert (=> b!4112968 (= e!2551700 tp!1251678)))

(assert (= (and b!4112638 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112966))

(assert (= (and b!4112638 ((_ is Concat!19552) (regOne!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112967))

(assert (= (and b!4112638 ((_ is Star!12113) (regOne!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112968))

(assert (= (and b!4112638 ((_ is Union!12113) (regOne!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112969))

(declare-fun b!4112970 () Bool)

(declare-fun e!2551701 () Bool)

(assert (=> b!4112970 (= e!2551701 tp_is_empty!21171)))

(assert (=> b!4112638 (= tp!1251360 e!2551701)))

(declare-fun b!4112971 () Bool)

(declare-fun tp!1251684 () Bool)

(declare-fun tp!1251682 () Bool)

(assert (=> b!4112971 (= e!2551701 (and tp!1251684 tp!1251682))))

(declare-fun b!4112973 () Bool)

(declare-fun tp!1251681 () Bool)

(declare-fun tp!1251680 () Bool)

(assert (=> b!4112973 (= e!2551701 (and tp!1251681 tp!1251680))))

(declare-fun b!4112972 () Bool)

(declare-fun tp!1251683 () Bool)

(assert (=> b!4112972 (= e!2551701 tp!1251683)))

(assert (= (and b!4112638 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112970))

(assert (= (and b!4112638 ((_ is Concat!19552) (regTwo!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112971))

(assert (= (and b!4112638 ((_ is Star!12113) (regTwo!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112972))

(assert (= (and b!4112638 ((_ is Union!12113) (regTwo!24738 (regOne!24738 (regex!7208 e2!99))))) b!4112973))

(declare-fun b!4112974 () Bool)

(declare-fun e!2551702 () Bool)

(assert (=> b!4112974 (= e!2551702 tp_is_empty!21171)))

(assert (=> b!4112682 (= tp!1251415 e!2551702)))

(declare-fun b!4112975 () Bool)

(declare-fun tp!1251689 () Bool)

(declare-fun tp!1251687 () Bool)

(assert (=> b!4112975 (= e!2551702 (and tp!1251689 tp!1251687))))

(declare-fun b!4112977 () Bool)

(declare-fun tp!1251686 () Bool)

(declare-fun tp!1251685 () Bool)

(assert (=> b!4112977 (= e!2551702 (and tp!1251686 tp!1251685))))

(declare-fun b!4112976 () Bool)

(declare-fun tp!1251688 () Bool)

(assert (=> b!4112976 (= e!2551702 tp!1251688)))

(assert (= (and b!4112682 ((_ is ElementMatch!12113) (reg!12442 (reg!12442 (regex!7208 e2!99))))) b!4112974))

(assert (= (and b!4112682 ((_ is Concat!19552) (reg!12442 (reg!12442 (regex!7208 e2!99))))) b!4112975))

(assert (= (and b!4112682 ((_ is Star!12113) (reg!12442 (reg!12442 (regex!7208 e2!99))))) b!4112976))

(assert (= (and b!4112682 ((_ is Union!12113) (reg!12442 (reg!12442 (regex!7208 e2!99))))) b!4112977))

(declare-fun b!4112978 () Bool)

(declare-fun e!2551703 () Bool)

(assert (=> b!4112978 (= e!2551703 tp_is_empty!21171)))

(assert (=> b!4112673 (= tp!1251406 e!2551703)))

(declare-fun b!4112979 () Bool)

(declare-fun tp!1251694 () Bool)

(declare-fun tp!1251692 () Bool)

(assert (=> b!4112979 (= e!2551703 (and tp!1251694 tp!1251692))))

(declare-fun b!4112981 () Bool)

(declare-fun tp!1251691 () Bool)

(declare-fun tp!1251690 () Bool)

(assert (=> b!4112981 (= e!2551703 (and tp!1251691 tp!1251690))))

(declare-fun b!4112980 () Bool)

(declare-fun tp!1251693 () Bool)

(assert (=> b!4112980 (= e!2551703 tp!1251693)))

(assert (= (and b!4112673 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112978))

(assert (= (and b!4112673 ((_ is Concat!19552) (regOne!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112979))

(assert (= (and b!4112673 ((_ is Star!12113) (regOne!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112980))

(assert (= (and b!4112673 ((_ is Union!12113) (regOne!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112981))

(declare-fun b!4112982 () Bool)

(declare-fun e!2551704 () Bool)

(assert (=> b!4112982 (= e!2551704 tp_is_empty!21171)))

(assert (=> b!4112673 (= tp!1251404 e!2551704)))

(declare-fun b!4112983 () Bool)

(declare-fun tp!1251699 () Bool)

(declare-fun tp!1251697 () Bool)

(assert (=> b!4112983 (= e!2551704 (and tp!1251699 tp!1251697))))

(declare-fun b!4112985 () Bool)

(declare-fun tp!1251696 () Bool)

(declare-fun tp!1251695 () Bool)

(assert (=> b!4112985 (= e!2551704 (and tp!1251696 tp!1251695))))

(declare-fun b!4112984 () Bool)

(declare-fun tp!1251698 () Bool)

(assert (=> b!4112984 (= e!2551704 tp!1251698)))

(assert (= (and b!4112673 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112982))

(assert (= (and b!4112673 ((_ is Concat!19552) (regTwo!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112983))

(assert (= (and b!4112673 ((_ is Star!12113) (regTwo!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112984))

(assert (= (and b!4112673 ((_ is Union!12113) (regTwo!24738 (regOne!24739 (regex!7208 e2!99))))) b!4112985))

(declare-fun b!4112986 () Bool)

(declare-fun e!2551705 () Bool)

(assert (=> b!4112986 (= e!2551705 tp_is_empty!21171)))

(assert (=> b!4112663 (= tp!1251391 e!2551705)))

(declare-fun b!4112987 () Bool)

(declare-fun tp!1251704 () Bool)

(declare-fun tp!1251702 () Bool)

(assert (=> b!4112987 (= e!2551705 (and tp!1251704 tp!1251702))))

(declare-fun b!4112989 () Bool)

(declare-fun tp!1251701 () Bool)

(declare-fun tp!1251700 () Bool)

(assert (=> b!4112989 (= e!2551705 (and tp!1251701 tp!1251700))))

(declare-fun b!4112988 () Bool)

(declare-fun tp!1251703 () Bool)

(assert (=> b!4112988 (= e!2551705 tp!1251703)))

(assert (= (and b!4112663 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112986))

(assert (= (and b!4112663 ((_ is Concat!19552) (reg!12442 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112987))

(assert (= (and b!4112663 ((_ is Star!12113) (reg!12442 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112988))

(assert (= (and b!4112663 ((_ is Union!12113) (reg!12442 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4112989))

(declare-fun b!4112990 () Bool)

(declare-fun e!2551706 () Bool)

(assert (=> b!4112990 (= e!2551706 tp_is_empty!21171)))

(assert (=> b!4112654 (= tp!1251382 e!2551706)))

(declare-fun b!4112991 () Bool)

(declare-fun tp!1251709 () Bool)

(declare-fun tp!1251707 () Bool)

(assert (=> b!4112991 (= e!2551706 (and tp!1251709 tp!1251707))))

(declare-fun b!4112993 () Bool)

(declare-fun tp!1251706 () Bool)

(declare-fun tp!1251705 () Bool)

(assert (=> b!4112993 (= e!2551706 (and tp!1251706 tp!1251705))))

(declare-fun b!4112992 () Bool)

(declare-fun tp!1251708 () Bool)

(assert (=> b!4112992 (= e!2551706 tp!1251708)))

(assert (= (and b!4112654 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112990))

(assert (= (and b!4112654 ((_ is Concat!19552) (regOne!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112991))

(assert (= (and b!4112654 ((_ is Star!12113) (regOne!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112992))

(assert (= (and b!4112654 ((_ is Union!12113) (regOne!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112993))

(declare-fun b!4112994 () Bool)

(declare-fun e!2551707 () Bool)

(assert (=> b!4112994 (= e!2551707 tp_is_empty!21171)))

(assert (=> b!4112654 (= tp!1251380 e!2551707)))

(declare-fun b!4112995 () Bool)

(declare-fun tp!1251714 () Bool)

(declare-fun tp!1251712 () Bool)

(assert (=> b!4112995 (= e!2551707 (and tp!1251714 tp!1251712))))

(declare-fun b!4112997 () Bool)

(declare-fun tp!1251711 () Bool)

(declare-fun tp!1251710 () Bool)

(assert (=> b!4112997 (= e!2551707 (and tp!1251711 tp!1251710))))

(declare-fun b!4112996 () Bool)

(declare-fun tp!1251713 () Bool)

(assert (=> b!4112996 (= e!2551707 tp!1251713)))

(assert (= (and b!4112654 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112994))

(assert (= (and b!4112654 ((_ is Concat!19552) (regTwo!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112995))

(assert (= (and b!4112654 ((_ is Star!12113) (regTwo!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112996))

(assert (= (and b!4112654 ((_ is Union!12113) (regTwo!24738 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4112997))

(declare-fun b!4112998 () Bool)

(declare-fun e!2551708 () Bool)

(assert (=> b!4112998 (= e!2551708 tp_is_empty!21171)))

(assert (=> b!4112689 (= tp!1251426 e!2551708)))

(declare-fun b!4112999 () Bool)

(declare-fun tp!1251719 () Bool)

(declare-fun tp!1251717 () Bool)

(assert (=> b!4112999 (= e!2551708 (and tp!1251719 tp!1251717))))

(declare-fun b!4113001 () Bool)

(declare-fun tp!1251716 () Bool)

(declare-fun tp!1251715 () Bool)

(assert (=> b!4113001 (= e!2551708 (and tp!1251716 tp!1251715))))

(declare-fun b!4113000 () Bool)

(declare-fun tp!1251718 () Bool)

(assert (=> b!4113000 (= e!2551708 tp!1251718)))

(assert (= (and b!4112689 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4112998))

(assert (= (and b!4112689 ((_ is Concat!19552) (regOne!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4112999))

(assert (= (and b!4112689 ((_ is Star!12113) (regOne!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113000))

(assert (= (and b!4112689 ((_ is Union!12113) (regOne!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113001))

(declare-fun b!4113002 () Bool)

(declare-fun e!2551709 () Bool)

(assert (=> b!4113002 (= e!2551709 tp_is_empty!21171)))

(assert (=> b!4112689 (= tp!1251424 e!2551709)))

(declare-fun b!4113003 () Bool)

(declare-fun tp!1251724 () Bool)

(declare-fun tp!1251722 () Bool)

(assert (=> b!4113003 (= e!2551709 (and tp!1251724 tp!1251722))))

(declare-fun b!4113005 () Bool)

(declare-fun tp!1251721 () Bool)

(declare-fun tp!1251720 () Bool)

(assert (=> b!4113005 (= e!2551709 (and tp!1251721 tp!1251720))))

(declare-fun b!4113004 () Bool)

(declare-fun tp!1251723 () Bool)

(assert (=> b!4113004 (= e!2551709 tp!1251723)))

(assert (= (and b!4112689 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113002))

(assert (= (and b!4112689 ((_ is Concat!19552) (regTwo!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113003))

(assert (= (and b!4112689 ((_ is Star!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113004))

(assert (= (and b!4112689 ((_ is Union!12113) (regTwo!24738 (regTwo!24739 (regex!7208 e1!99))))) b!4113005))

(declare-fun b!4113006 () Bool)

(declare-fun e!2551710 () Bool)

(assert (=> b!4113006 (= e!2551710 tp_is_empty!21171)))

(assert (=> b!4112636 (= tp!1251354 e!2551710)))

(declare-fun b!4113007 () Bool)

(declare-fun tp!1251729 () Bool)

(declare-fun tp!1251727 () Bool)

(assert (=> b!4113007 (= e!2551710 (and tp!1251729 tp!1251727))))

(declare-fun b!4113009 () Bool)

(declare-fun tp!1251726 () Bool)

(declare-fun tp!1251725 () Bool)

(assert (=> b!4113009 (= e!2551710 (and tp!1251726 tp!1251725))))

(declare-fun b!4113008 () Bool)

(declare-fun tp!1251728 () Bool)

(assert (=> b!4113008 (= e!2551710 tp!1251728)))

(assert (= (and b!4112636 ((_ is ElementMatch!12113) (regOne!24739 (reg!12442 (regex!7208 e1!99))))) b!4113006))

(assert (= (and b!4112636 ((_ is Concat!19552) (regOne!24739 (reg!12442 (regex!7208 e1!99))))) b!4113007))

(assert (= (and b!4112636 ((_ is Star!12113) (regOne!24739 (reg!12442 (regex!7208 e1!99))))) b!4113008))

(assert (= (and b!4112636 ((_ is Union!12113) (regOne!24739 (reg!12442 (regex!7208 e1!99))))) b!4113009))

(declare-fun b!4113010 () Bool)

(declare-fun e!2551711 () Bool)

(assert (=> b!4113010 (= e!2551711 tp_is_empty!21171)))

(assert (=> b!4112636 (= tp!1251353 e!2551711)))

(declare-fun b!4113011 () Bool)

(declare-fun tp!1251734 () Bool)

(declare-fun tp!1251732 () Bool)

(assert (=> b!4113011 (= e!2551711 (and tp!1251734 tp!1251732))))

(declare-fun b!4113013 () Bool)

(declare-fun tp!1251731 () Bool)

(declare-fun tp!1251730 () Bool)

(assert (=> b!4113013 (= e!2551711 (and tp!1251731 tp!1251730))))

(declare-fun b!4113012 () Bool)

(declare-fun tp!1251733 () Bool)

(assert (=> b!4113012 (= e!2551711 tp!1251733)))

(assert (= (and b!4112636 ((_ is ElementMatch!12113) (regTwo!24739 (reg!12442 (regex!7208 e1!99))))) b!4113010))

(assert (= (and b!4112636 ((_ is Concat!19552) (regTwo!24739 (reg!12442 (regex!7208 e1!99))))) b!4113011))

(assert (= (and b!4112636 ((_ is Star!12113) (regTwo!24739 (reg!12442 (regex!7208 e1!99))))) b!4113012))

(assert (= (and b!4112636 ((_ is Union!12113) (regTwo!24739 (reg!12442 (regex!7208 e1!99))))) b!4113013))

(declare-fun b!4113014 () Bool)

(declare-fun e!2551712 () Bool)

(assert (=> b!4113014 (= e!2551712 tp_is_empty!21171)))

(assert (=> b!4112671 (= tp!1251398 e!2551712)))

(declare-fun b!4113015 () Bool)

(declare-fun tp!1251739 () Bool)

(declare-fun tp!1251737 () Bool)

(assert (=> b!4113015 (= e!2551712 (and tp!1251739 tp!1251737))))

(declare-fun b!4113017 () Bool)

(declare-fun tp!1251736 () Bool)

(declare-fun tp!1251735 () Bool)

(assert (=> b!4113017 (= e!2551712 (and tp!1251736 tp!1251735))))

(declare-fun b!4113016 () Bool)

(declare-fun tp!1251738 () Bool)

(assert (=> b!4113016 (= e!2551712 tp!1251738)))

(assert (= (and b!4112671 ((_ is ElementMatch!12113) (regOne!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113014))

(assert (= (and b!4112671 ((_ is Concat!19552) (regOne!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113015))

(assert (= (and b!4112671 ((_ is Star!12113) (regOne!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113016))

(assert (= (and b!4112671 ((_ is Union!12113) (regOne!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113017))

(declare-fun b!4113018 () Bool)

(declare-fun e!2551713 () Bool)

(assert (=> b!4113018 (= e!2551713 tp_is_empty!21171)))

(assert (=> b!4112671 (= tp!1251397 e!2551713)))

(declare-fun b!4113019 () Bool)

(declare-fun tp!1251744 () Bool)

(declare-fun tp!1251742 () Bool)

(assert (=> b!4113019 (= e!2551713 (and tp!1251744 tp!1251742))))

(declare-fun b!4113021 () Bool)

(declare-fun tp!1251741 () Bool)

(declare-fun tp!1251740 () Bool)

(assert (=> b!4113021 (= e!2551713 (and tp!1251741 tp!1251740))))

(declare-fun b!4113020 () Bool)

(declare-fun tp!1251743 () Bool)

(assert (=> b!4113020 (= e!2551713 tp!1251743)))

(assert (= (and b!4112671 ((_ is ElementMatch!12113) (regTwo!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113018))

(assert (= (and b!4112671 ((_ is Concat!19552) (regTwo!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113019))

(assert (= (and b!4112671 ((_ is Star!12113) (regTwo!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113020))

(assert (= (and b!4112671 ((_ is Union!12113) (regTwo!24739 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113021))

(declare-fun b!4113022 () Bool)

(declare-fun e!2551714 () Bool)

(assert (=> b!4113022 (= e!2551714 tp_is_empty!21171)))

(assert (=> b!4112627 (= tp!1251346 e!2551714)))

(declare-fun b!4113023 () Bool)

(declare-fun tp!1251749 () Bool)

(declare-fun tp!1251747 () Bool)

(assert (=> b!4113023 (= e!2551714 (and tp!1251749 tp!1251747))))

(declare-fun b!4113025 () Bool)

(declare-fun tp!1251746 () Bool)

(declare-fun tp!1251745 () Bool)

(assert (=> b!4113025 (= e!2551714 (and tp!1251746 tp!1251745))))

(declare-fun b!4113024 () Bool)

(declare-fun tp!1251748 () Bool)

(assert (=> b!4113024 (= e!2551714 tp!1251748)))

(assert (= (and b!4112627 ((_ is ElementMatch!12113) (reg!12442 (regOne!24738 (regex!7208 e1!99))))) b!4113022))

(assert (= (and b!4112627 ((_ is Concat!19552) (reg!12442 (regOne!24738 (regex!7208 e1!99))))) b!4113023))

(assert (= (and b!4112627 ((_ is Star!12113) (reg!12442 (regOne!24738 (regex!7208 e1!99))))) b!4113024))

(assert (= (and b!4112627 ((_ is Union!12113) (reg!12442 (regOne!24738 (regex!7208 e1!99))))) b!4113025))

(declare-fun b!4113026 () Bool)

(declare-fun e!2551715 () Bool)

(assert (=> b!4113026 (= e!2551715 tp_is_empty!21171)))

(assert (=> b!4112678 (= tp!1251410 e!2551715)))

(declare-fun b!4113027 () Bool)

(declare-fun tp!1251754 () Bool)

(declare-fun tp!1251752 () Bool)

(assert (=> b!4113027 (= e!2551715 (and tp!1251754 tp!1251752))))

(declare-fun b!4113029 () Bool)

(declare-fun tp!1251751 () Bool)

(declare-fun tp!1251750 () Bool)

(assert (=> b!4113029 (= e!2551715 (and tp!1251751 tp!1251750))))

(declare-fun b!4113028 () Bool)

(declare-fun tp!1251753 () Bool)

(assert (=> b!4113028 (= e!2551715 tp!1251753)))

(assert (= (and b!4112678 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24739 (regex!7208 e2!99))))) b!4113026))

(assert (= (and b!4112678 ((_ is Concat!19552) (reg!12442 (regTwo!24739 (regex!7208 e2!99))))) b!4113027))

(assert (= (and b!4112678 ((_ is Star!12113) (reg!12442 (regTwo!24739 (regex!7208 e2!99))))) b!4113028))

(assert (= (and b!4112678 ((_ is Union!12113) (reg!12442 (regTwo!24739 (regex!7208 e2!99))))) b!4113029))

(declare-fun b!4113030 () Bool)

(declare-fun e!2551716 () Bool)

(assert (=> b!4113030 (= e!2551716 tp_is_empty!21171)))

(assert (=> b!4112634 (= tp!1251357 e!2551716)))

(declare-fun b!4113031 () Bool)

(declare-fun tp!1251759 () Bool)

(declare-fun tp!1251757 () Bool)

(assert (=> b!4113031 (= e!2551716 (and tp!1251759 tp!1251757))))

(declare-fun b!4113033 () Bool)

(declare-fun tp!1251756 () Bool)

(declare-fun tp!1251755 () Bool)

(assert (=> b!4113033 (= e!2551716 (and tp!1251756 tp!1251755))))

(declare-fun b!4113032 () Bool)

(declare-fun tp!1251758 () Bool)

(assert (=> b!4113032 (= e!2551716 tp!1251758)))

(assert (= (and b!4112634 ((_ is ElementMatch!12113) (regOne!24738 (reg!12442 (regex!7208 e1!99))))) b!4113030))

(assert (= (and b!4112634 ((_ is Concat!19552) (regOne!24738 (reg!12442 (regex!7208 e1!99))))) b!4113031))

(assert (= (and b!4112634 ((_ is Star!12113) (regOne!24738 (reg!12442 (regex!7208 e1!99))))) b!4113032))

(assert (= (and b!4112634 ((_ is Union!12113) (regOne!24738 (reg!12442 (regex!7208 e1!99))))) b!4113033))

(declare-fun b!4113034 () Bool)

(declare-fun e!2551717 () Bool)

(assert (=> b!4113034 (= e!2551717 tp_is_empty!21171)))

(assert (=> b!4112634 (= tp!1251355 e!2551717)))

(declare-fun b!4113035 () Bool)

(declare-fun tp!1251764 () Bool)

(declare-fun tp!1251762 () Bool)

(assert (=> b!4113035 (= e!2551717 (and tp!1251764 tp!1251762))))

(declare-fun b!4113037 () Bool)

(declare-fun tp!1251761 () Bool)

(declare-fun tp!1251760 () Bool)

(assert (=> b!4113037 (= e!2551717 (and tp!1251761 tp!1251760))))

(declare-fun b!4113036 () Bool)

(declare-fun tp!1251763 () Bool)

(assert (=> b!4113036 (= e!2551717 tp!1251763)))

(assert (= (and b!4112634 ((_ is ElementMatch!12113) (regTwo!24738 (reg!12442 (regex!7208 e1!99))))) b!4113034))

(assert (= (and b!4112634 ((_ is Concat!19552) (regTwo!24738 (reg!12442 (regex!7208 e1!99))))) b!4113035))

(assert (= (and b!4112634 ((_ is Star!12113) (regTwo!24738 (reg!12442 (regex!7208 e1!99))))) b!4113036))

(assert (= (and b!4112634 ((_ is Union!12113) (regTwo!24738 (reg!12442 (regex!7208 e1!99))))) b!4113037))

(declare-fun b!4113038 () Bool)

(declare-fun e!2551718 () Bool)

(assert (=> b!4113038 (= e!2551718 tp_is_empty!21171)))

(assert (=> b!4112669 (= tp!1251401 e!2551718)))

(declare-fun b!4113039 () Bool)

(declare-fun tp!1251769 () Bool)

(declare-fun tp!1251767 () Bool)

(assert (=> b!4113039 (= e!2551718 (and tp!1251769 tp!1251767))))

(declare-fun b!4113041 () Bool)

(declare-fun tp!1251766 () Bool)

(declare-fun tp!1251765 () Bool)

(assert (=> b!4113041 (= e!2551718 (and tp!1251766 tp!1251765))))

(declare-fun b!4113040 () Bool)

(declare-fun tp!1251768 () Bool)

(assert (=> b!4113040 (= e!2551718 tp!1251768)))

(assert (= (and b!4112669 ((_ is ElementMatch!12113) (regOne!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113038))

(assert (= (and b!4112669 ((_ is Concat!19552) (regOne!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113039))

(assert (= (and b!4112669 ((_ is Star!12113) (regOne!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113040))

(assert (= (and b!4112669 ((_ is Union!12113) (regOne!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113041))

(declare-fun b!4113042 () Bool)

(declare-fun e!2551719 () Bool)

(assert (=> b!4113042 (= e!2551719 tp_is_empty!21171)))

(assert (=> b!4112669 (= tp!1251399 e!2551719)))

(declare-fun b!4113043 () Bool)

(declare-fun tp!1251774 () Bool)

(declare-fun tp!1251772 () Bool)

(assert (=> b!4113043 (= e!2551719 (and tp!1251774 tp!1251772))))

(declare-fun b!4113045 () Bool)

(declare-fun tp!1251771 () Bool)

(declare-fun tp!1251770 () Bool)

(assert (=> b!4113045 (= e!2551719 (and tp!1251771 tp!1251770))))

(declare-fun b!4113044 () Bool)

(declare-fun tp!1251773 () Bool)

(assert (=> b!4113044 (= e!2551719 tp!1251773)))

(assert (= (and b!4112669 ((_ is ElementMatch!12113) (regTwo!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113042))

(assert (= (and b!4112669 ((_ is Concat!19552) (regTwo!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113043))

(assert (= (and b!4112669 ((_ is Star!12113) (regTwo!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113044))

(assert (= (and b!4112669 ((_ is Union!12113) (regTwo!24738 (regex!7208 (h!49730 (t!340185 l!6462)))))) b!4113045))

(declare-fun b!4113046 () Bool)

(declare-fun e!2551720 () Bool)

(assert (=> b!4113046 (= e!2551720 tp_is_empty!21171)))

(assert (=> b!4112652 (= tp!1251374 e!2551720)))

(declare-fun b!4113047 () Bool)

(declare-fun tp!1251779 () Bool)

(declare-fun tp!1251777 () Bool)

(assert (=> b!4113047 (= e!2551720 (and tp!1251779 tp!1251777))))

(declare-fun b!4113049 () Bool)

(declare-fun tp!1251776 () Bool)

(declare-fun tp!1251775 () Bool)

(assert (=> b!4113049 (= e!2551720 (and tp!1251776 tp!1251775))))

(declare-fun b!4113048 () Bool)

(declare-fun tp!1251778 () Bool)

(assert (=> b!4113048 (= e!2551720 tp!1251778)))

(assert (= (and b!4112652 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113046))

(assert (= (and b!4112652 ((_ is Concat!19552) (regOne!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113047))

(assert (= (and b!4112652 ((_ is Star!12113) (regOne!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113048))

(assert (= (and b!4112652 ((_ is Union!12113) (regOne!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113049))

(declare-fun b!4113050 () Bool)

(declare-fun e!2551721 () Bool)

(assert (=> b!4113050 (= e!2551721 tp_is_empty!21171)))

(assert (=> b!4112652 (= tp!1251373 e!2551721)))

(declare-fun b!4113051 () Bool)

(declare-fun tp!1251784 () Bool)

(declare-fun tp!1251782 () Bool)

(assert (=> b!4113051 (= e!2551721 (and tp!1251784 tp!1251782))))

(declare-fun b!4113053 () Bool)

(declare-fun tp!1251781 () Bool)

(declare-fun tp!1251780 () Bool)

(assert (=> b!4113053 (= e!2551721 (and tp!1251781 tp!1251780))))

(declare-fun b!4113052 () Bool)

(declare-fun tp!1251783 () Bool)

(assert (=> b!4113052 (= e!2551721 tp!1251783)))

(assert (= (and b!4112652 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113050))

(assert (= (and b!4112652 ((_ is Concat!19552) (regTwo!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113051))

(assert (= (and b!4112652 ((_ is Star!12113) (regTwo!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113052))

(assert (= (and b!4112652 ((_ is Union!12113) (regTwo!24739 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113053))

(declare-fun b!4113054 () Bool)

(declare-fun e!2551722 () Bool)

(assert (=> b!4113054 (= e!2551722 tp_is_empty!21171)))

(assert (=> b!4112643 (= tp!1251366 e!2551722)))

(declare-fun b!4113055 () Bool)

(declare-fun tp!1251789 () Bool)

(declare-fun tp!1251787 () Bool)

(assert (=> b!4113055 (= e!2551722 (and tp!1251789 tp!1251787))))

(declare-fun b!4113057 () Bool)

(declare-fun tp!1251786 () Bool)

(declare-fun tp!1251785 () Bool)

(assert (=> b!4113057 (= e!2551722 (and tp!1251786 tp!1251785))))

(declare-fun b!4113056 () Bool)

(declare-fun tp!1251788 () Bool)

(assert (=> b!4113056 (= e!2551722 tp!1251788)))

(assert (= (and b!4112643 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24738 (regex!7208 e2!99))))) b!4113054))

(assert (= (and b!4112643 ((_ is Concat!19552) (reg!12442 (regTwo!24738 (regex!7208 e2!99))))) b!4113055))

(assert (= (and b!4112643 ((_ is Star!12113) (reg!12442 (regTwo!24738 (regex!7208 e2!99))))) b!4113056))

(assert (= (and b!4112643 ((_ is Union!12113) (reg!12442 (regTwo!24738 (regex!7208 e2!99))))) b!4113057))

(declare-fun b!4113058 () Bool)

(declare-fun e!2551723 () Bool)

(assert (=> b!4113058 (= e!2551723 tp_is_empty!21171)))

(assert (=> b!4112687 (= tp!1251418 e!2551723)))

(declare-fun b!4113059 () Bool)

(declare-fun tp!1251794 () Bool)

(declare-fun tp!1251792 () Bool)

(assert (=> b!4113059 (= e!2551723 (and tp!1251794 tp!1251792))))

(declare-fun b!4113061 () Bool)

(declare-fun tp!1251791 () Bool)

(declare-fun tp!1251790 () Bool)

(assert (=> b!4113061 (= e!2551723 (and tp!1251791 tp!1251790))))

(declare-fun b!4113060 () Bool)

(declare-fun tp!1251793 () Bool)

(assert (=> b!4113060 (= e!2551723 tp!1251793)))

(assert (= (and b!4112687 ((_ is ElementMatch!12113) (regOne!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113058))

(assert (= (and b!4112687 ((_ is Concat!19552) (regOne!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113059))

(assert (= (and b!4112687 ((_ is Star!12113) (regOne!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113060))

(assert (= (and b!4112687 ((_ is Union!12113) (regOne!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113061))

(declare-fun b!4113062 () Bool)

(declare-fun e!2551724 () Bool)

(assert (=> b!4113062 (= e!2551724 tp_is_empty!21171)))

(assert (=> b!4112687 (= tp!1251417 e!2551724)))

(declare-fun b!4113063 () Bool)

(declare-fun tp!1251799 () Bool)

(declare-fun tp!1251797 () Bool)

(assert (=> b!4113063 (= e!2551724 (and tp!1251799 tp!1251797))))

(declare-fun b!4113065 () Bool)

(declare-fun tp!1251796 () Bool)

(declare-fun tp!1251795 () Bool)

(assert (=> b!4113065 (= e!2551724 (and tp!1251796 tp!1251795))))

(declare-fun b!4113064 () Bool)

(declare-fun tp!1251798 () Bool)

(assert (=> b!4113064 (= e!2551724 tp!1251798)))

(assert (= (and b!4112687 ((_ is ElementMatch!12113) (regTwo!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113062))

(assert (= (and b!4112687 ((_ is Concat!19552) (regTwo!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113063))

(assert (= (and b!4112687 ((_ is Star!12113) (regTwo!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113064))

(assert (= (and b!4112687 ((_ is Union!12113) (regTwo!24739 (regOne!24739 (regex!7208 e1!99))))) b!4113065))

(declare-fun b!4113066 () Bool)

(declare-fun e!2551725 () Bool)

(assert (=> b!4113066 (= e!2551725 tp_is_empty!21171)))

(assert (=> b!4112650 (= tp!1251377 e!2551725)))

(declare-fun b!4113067 () Bool)

(declare-fun tp!1251804 () Bool)

(declare-fun tp!1251802 () Bool)

(assert (=> b!4113067 (= e!2551725 (and tp!1251804 tp!1251802))))

(declare-fun b!4113069 () Bool)

(declare-fun tp!1251801 () Bool)

(declare-fun tp!1251800 () Bool)

(assert (=> b!4113069 (= e!2551725 (and tp!1251801 tp!1251800))))

(declare-fun b!4113068 () Bool)

(declare-fun tp!1251803 () Bool)

(assert (=> b!4113068 (= e!2551725 tp!1251803)))

(assert (= (and b!4112650 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113066))

(assert (= (and b!4112650 ((_ is Concat!19552) (regOne!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113067))

(assert (= (and b!4112650 ((_ is Star!12113) (regOne!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113068))

(assert (= (and b!4112650 ((_ is Union!12113) (regOne!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113069))

(declare-fun b!4113070 () Bool)

(declare-fun e!2551726 () Bool)

(assert (=> b!4113070 (= e!2551726 tp_is_empty!21171)))

(assert (=> b!4112650 (= tp!1251375 e!2551726)))

(declare-fun b!4113071 () Bool)

(declare-fun tp!1251809 () Bool)

(declare-fun tp!1251807 () Bool)

(assert (=> b!4113071 (= e!2551726 (and tp!1251809 tp!1251807))))

(declare-fun b!4113073 () Bool)

(declare-fun tp!1251806 () Bool)

(declare-fun tp!1251805 () Bool)

(assert (=> b!4113073 (= e!2551726 (and tp!1251806 tp!1251805))))

(declare-fun b!4113072 () Bool)

(declare-fun tp!1251808 () Bool)

(assert (=> b!4113072 (= e!2551726 tp!1251808)))

(assert (= (and b!4112650 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113070))

(assert (= (and b!4112650 ((_ is Concat!19552) (regTwo!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113071))

(assert (= (and b!4112650 ((_ is Star!12113) (regTwo!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113072))

(assert (= (and b!4112650 ((_ is Union!12113) (regTwo!24738 (regOne!24739 (regex!7208 (h!49730 l!6462)))))) b!4113073))

(declare-fun b!4113074 () Bool)

(declare-fun e!2551727 () Bool)

(assert (=> b!4113074 (= e!2551727 tp_is_empty!21171)))

(assert (=> b!4112685 (= tp!1251421 e!2551727)))

(declare-fun b!4113075 () Bool)

(declare-fun tp!1251814 () Bool)

(declare-fun tp!1251812 () Bool)

(assert (=> b!4113075 (= e!2551727 (and tp!1251814 tp!1251812))))

(declare-fun b!4113077 () Bool)

(declare-fun tp!1251811 () Bool)

(declare-fun tp!1251810 () Bool)

(assert (=> b!4113077 (= e!2551727 (and tp!1251811 tp!1251810))))

(declare-fun b!4113076 () Bool)

(declare-fun tp!1251813 () Bool)

(assert (=> b!4113076 (= e!2551727 tp!1251813)))

(assert (= (and b!4112685 ((_ is ElementMatch!12113) (regOne!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113074))

(assert (= (and b!4112685 ((_ is Concat!19552) (regOne!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113075))

(assert (= (and b!4112685 ((_ is Star!12113) (regOne!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113076))

(assert (= (and b!4112685 ((_ is Union!12113) (regOne!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113077))

(declare-fun b!4113078 () Bool)

(declare-fun e!2551728 () Bool)

(assert (=> b!4113078 (= e!2551728 tp_is_empty!21171)))

(assert (=> b!4112685 (= tp!1251419 e!2551728)))

(declare-fun b!4113079 () Bool)

(declare-fun tp!1251819 () Bool)

(declare-fun tp!1251817 () Bool)

(assert (=> b!4113079 (= e!2551728 (and tp!1251819 tp!1251817))))

(declare-fun b!4113081 () Bool)

(declare-fun tp!1251816 () Bool)

(declare-fun tp!1251815 () Bool)

(assert (=> b!4113081 (= e!2551728 (and tp!1251816 tp!1251815))))

(declare-fun b!4113080 () Bool)

(declare-fun tp!1251818 () Bool)

(assert (=> b!4113080 (= e!2551728 tp!1251818)))

(assert (= (and b!4112685 ((_ is ElementMatch!12113) (regTwo!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113078))

(assert (= (and b!4112685 ((_ is Concat!19552) (regTwo!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113079))

(assert (= (and b!4112685 ((_ is Star!12113) (regTwo!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113080))

(assert (= (and b!4112685 ((_ is Union!12113) (regTwo!24738 (regOne!24739 (regex!7208 e1!99))))) b!4113081))

(declare-fun b!4113082 () Bool)

(declare-fun e!2551729 () Bool)

(assert (=> b!4113082 (= e!2551729 tp_is_empty!21171)))

(assert (=> b!4112666 (= tp!1251394 e!2551729)))

(declare-fun b!4113083 () Bool)

(declare-fun tp!1251824 () Bool)

(declare-fun tp!1251822 () Bool)

(assert (=> b!4113083 (= e!2551729 (and tp!1251824 tp!1251822))))

(declare-fun b!4113085 () Bool)

(declare-fun tp!1251821 () Bool)

(declare-fun tp!1251820 () Bool)

(assert (=> b!4113085 (= e!2551729 (and tp!1251821 tp!1251820))))

(declare-fun b!4113084 () Bool)

(declare-fun tp!1251823 () Bool)

(assert (=> b!4113084 (= e!2551729 tp!1251823)))

(assert (= (and b!4112666 ((_ is ElementMatch!12113) (regex!7208 (h!49730 (t!340185 (t!340185 l!6462)))))) b!4113082))

(assert (= (and b!4112666 ((_ is Concat!19552) (regex!7208 (h!49730 (t!340185 (t!340185 l!6462)))))) b!4113083))

(assert (= (and b!4112666 ((_ is Star!12113) (regex!7208 (h!49730 (t!340185 (t!340185 l!6462)))))) b!4113084))

(assert (= (and b!4112666 ((_ is Union!12113) (regex!7208 (h!49730 (t!340185 (t!340185 l!6462)))))) b!4113085))

(declare-fun b!4113086 () Bool)

(declare-fun e!2551730 () Bool)

(assert (=> b!4113086 (= e!2551730 tp_is_empty!21171)))

(assert (=> b!4112659 (= tp!1251386 e!2551730)))

(declare-fun b!4113087 () Bool)

(declare-fun tp!1251829 () Bool)

(declare-fun tp!1251827 () Bool)

(assert (=> b!4113087 (= e!2551730 (and tp!1251829 tp!1251827))))

(declare-fun b!4113089 () Bool)

(declare-fun tp!1251826 () Bool)

(declare-fun tp!1251825 () Bool)

(assert (=> b!4113089 (= e!2551730 (and tp!1251826 tp!1251825))))

(declare-fun b!4113088 () Bool)

(declare-fun tp!1251828 () Bool)

(assert (=> b!4113088 (= e!2551730 tp!1251828)))

(assert (= (and b!4112659 ((_ is ElementMatch!12113) (reg!12442 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4113086))

(assert (= (and b!4112659 ((_ is Concat!19552) (reg!12442 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4113087))

(assert (= (and b!4112659 ((_ is Star!12113) (reg!12442 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4113088))

(assert (= (and b!4112659 ((_ is Union!12113) (reg!12442 (regOne!24738 (regex!7208 (h!49730 l!6462)))))) b!4113089))

(declare-fun b!4113090 () Bool)

(declare-fun e!2551731 () Bool)

(assert (=> b!4113090 (= e!2551731 tp_is_empty!21171)))

(assert (=> b!4112632 (= tp!1251349 e!2551731)))

(declare-fun b!4113091 () Bool)

(declare-fun tp!1251834 () Bool)

(declare-fun tp!1251832 () Bool)

(assert (=> b!4113091 (= e!2551731 (and tp!1251834 tp!1251832))))

(declare-fun b!4113093 () Bool)

(declare-fun tp!1251831 () Bool)

(declare-fun tp!1251830 () Bool)

(assert (=> b!4113093 (= e!2551731 (and tp!1251831 tp!1251830))))

(declare-fun b!4113092 () Bool)

(declare-fun tp!1251833 () Bool)

(assert (=> b!4113092 (= e!2551731 tp!1251833)))

(assert (= (and b!4112632 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113090))

(assert (= (and b!4112632 ((_ is Concat!19552) (regOne!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113091))

(assert (= (and b!4112632 ((_ is Star!12113) (regOne!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113092))

(assert (= (and b!4112632 ((_ is Union!12113) (regOne!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113093))

(declare-fun b!4113094 () Bool)

(declare-fun e!2551732 () Bool)

(assert (=> b!4113094 (= e!2551732 tp_is_empty!21171)))

(assert (=> b!4112632 (= tp!1251348 e!2551732)))

(declare-fun b!4113095 () Bool)

(declare-fun tp!1251839 () Bool)

(declare-fun tp!1251837 () Bool)

(assert (=> b!4113095 (= e!2551732 (and tp!1251839 tp!1251837))))

(declare-fun b!4113097 () Bool)

(declare-fun tp!1251836 () Bool)

(declare-fun tp!1251835 () Bool)

(assert (=> b!4113097 (= e!2551732 (and tp!1251836 tp!1251835))))

(declare-fun b!4113096 () Bool)

(declare-fun tp!1251838 () Bool)

(assert (=> b!4113096 (= e!2551732 tp!1251838)))

(assert (= (and b!4112632 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113094))

(assert (= (and b!4112632 ((_ is Concat!19552) (regTwo!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113095))

(assert (= (and b!4112632 ((_ is Star!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113096))

(assert (= (and b!4112632 ((_ is Union!12113) (regTwo!24739 (regTwo!24738 (regex!7208 e1!99))))) b!4113097))

(declare-fun b!4113098 () Bool)

(declare-fun e!2551733 () Bool)

(assert (=> b!4113098 (= e!2551733 tp_is_empty!21171)))

(assert (=> b!4112648 (= tp!1251369 e!2551733)))

(declare-fun b!4113099 () Bool)

(declare-fun tp!1251844 () Bool)

(declare-fun tp!1251842 () Bool)

(assert (=> b!4113099 (= e!2551733 (and tp!1251844 tp!1251842))))

(declare-fun b!4113101 () Bool)

(declare-fun tp!1251841 () Bool)

(declare-fun tp!1251840 () Bool)

(assert (=> b!4113101 (= e!2551733 (and tp!1251841 tp!1251840))))

(declare-fun b!4113100 () Bool)

(declare-fun tp!1251843 () Bool)

(assert (=> b!4113100 (= e!2551733 tp!1251843)))

(assert (= (and b!4112648 ((_ is ElementMatch!12113) (regOne!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113098))

(assert (= (and b!4112648 ((_ is Concat!19552) (regOne!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113099))

(assert (= (and b!4112648 ((_ is Star!12113) (regOne!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113100))

(assert (= (and b!4112648 ((_ is Union!12113) (regOne!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113101))

(declare-fun b!4113102 () Bool)

(declare-fun e!2551734 () Bool)

(assert (=> b!4113102 (= e!2551734 tp_is_empty!21171)))

(assert (=> b!4112648 (= tp!1251368 e!2551734)))

(declare-fun b!4113103 () Bool)

(declare-fun tp!1251849 () Bool)

(declare-fun tp!1251847 () Bool)

(assert (=> b!4113103 (= e!2551734 (and tp!1251849 tp!1251847))))

(declare-fun b!4113105 () Bool)

(declare-fun tp!1251846 () Bool)

(declare-fun tp!1251845 () Bool)

(assert (=> b!4113105 (= e!2551734 (and tp!1251846 tp!1251845))))

(declare-fun b!4113104 () Bool)

(declare-fun tp!1251848 () Bool)

(assert (=> b!4113104 (= e!2551734 tp!1251848)))

(assert (= (and b!4112648 ((_ is ElementMatch!12113) (regTwo!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113102))

(assert (= (and b!4112648 ((_ is Concat!19552) (regTwo!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113103))

(assert (= (and b!4112648 ((_ is Star!12113) (regTwo!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113104))

(assert (= (and b!4112648 ((_ is Union!12113) (regTwo!24739 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113105))

(declare-fun b!4113106 () Bool)

(declare-fun e!2551735 () Bool)

(assert (=> b!4113106 (= e!2551735 tp_is_empty!21171)))

(assert (=> b!4112639 (= tp!1251361 e!2551735)))

(declare-fun b!4113107 () Bool)

(declare-fun tp!1251854 () Bool)

(declare-fun tp!1251852 () Bool)

(assert (=> b!4113107 (= e!2551735 (and tp!1251854 tp!1251852))))

(declare-fun b!4113109 () Bool)

(declare-fun tp!1251851 () Bool)

(declare-fun tp!1251850 () Bool)

(assert (=> b!4113109 (= e!2551735 (and tp!1251851 tp!1251850))))

(declare-fun b!4113108 () Bool)

(declare-fun tp!1251853 () Bool)

(assert (=> b!4113108 (= e!2551735 tp!1251853)))

(assert (= (and b!4112639 ((_ is ElementMatch!12113) (reg!12442 (regOne!24738 (regex!7208 e2!99))))) b!4113106))

(assert (= (and b!4112639 ((_ is Concat!19552) (reg!12442 (regOne!24738 (regex!7208 e2!99))))) b!4113107))

(assert (= (and b!4112639 ((_ is Star!12113) (reg!12442 (regOne!24738 (regex!7208 e2!99))))) b!4113108))

(assert (= (and b!4112639 ((_ is Union!12113) (reg!12442 (regOne!24738 (regex!7208 e2!99))))) b!4113109))

(declare-fun b!4113110 () Bool)

(declare-fun e!2551736 () Bool)

(assert (=> b!4113110 (= e!2551736 tp_is_empty!21171)))

(assert (=> b!4112683 (= tp!1251413 e!2551736)))

(declare-fun b!4113111 () Bool)

(declare-fun tp!1251859 () Bool)

(declare-fun tp!1251857 () Bool)

(assert (=> b!4113111 (= e!2551736 (and tp!1251859 tp!1251857))))

(declare-fun b!4113113 () Bool)

(declare-fun tp!1251856 () Bool)

(declare-fun tp!1251855 () Bool)

(assert (=> b!4113113 (= e!2551736 (and tp!1251856 tp!1251855))))

(declare-fun b!4113112 () Bool)

(declare-fun tp!1251858 () Bool)

(assert (=> b!4113112 (= e!2551736 tp!1251858)))

(assert (= (and b!4112683 ((_ is ElementMatch!12113) (regOne!24739 (reg!12442 (regex!7208 e2!99))))) b!4113110))

(assert (= (and b!4112683 ((_ is Concat!19552) (regOne!24739 (reg!12442 (regex!7208 e2!99))))) b!4113111))

(assert (= (and b!4112683 ((_ is Star!12113) (regOne!24739 (reg!12442 (regex!7208 e2!99))))) b!4113112))

(assert (= (and b!4112683 ((_ is Union!12113) (regOne!24739 (reg!12442 (regex!7208 e2!99))))) b!4113113))

(declare-fun b!4113114 () Bool)

(declare-fun e!2551737 () Bool)

(assert (=> b!4113114 (= e!2551737 tp_is_empty!21171)))

(assert (=> b!4112683 (= tp!1251412 e!2551737)))

(declare-fun b!4113115 () Bool)

(declare-fun tp!1251864 () Bool)

(declare-fun tp!1251862 () Bool)

(assert (=> b!4113115 (= e!2551737 (and tp!1251864 tp!1251862))))

(declare-fun b!4113117 () Bool)

(declare-fun tp!1251861 () Bool)

(declare-fun tp!1251860 () Bool)

(assert (=> b!4113117 (= e!2551737 (and tp!1251861 tp!1251860))))

(declare-fun b!4113116 () Bool)

(declare-fun tp!1251863 () Bool)

(assert (=> b!4113116 (= e!2551737 tp!1251863)))

(assert (= (and b!4112683 ((_ is ElementMatch!12113) (regTwo!24739 (reg!12442 (regex!7208 e2!99))))) b!4113114))

(assert (= (and b!4112683 ((_ is Concat!19552) (regTwo!24739 (reg!12442 (regex!7208 e2!99))))) b!4113115))

(assert (= (and b!4112683 ((_ is Star!12113) (regTwo!24739 (reg!12442 (regex!7208 e2!99))))) b!4113116))

(assert (= (and b!4112683 ((_ is Union!12113) (regTwo!24739 (reg!12442 (regex!7208 e2!99))))) b!4113117))

(declare-fun b!4113118 () Bool)

(declare-fun e!2551738 () Bool)

(assert (=> b!4113118 (= e!2551738 tp_is_empty!21171)))

(assert (=> b!4112674 (= tp!1251405 e!2551738)))

(declare-fun b!4113119 () Bool)

(declare-fun tp!1251869 () Bool)

(declare-fun tp!1251867 () Bool)

(assert (=> b!4113119 (= e!2551738 (and tp!1251869 tp!1251867))))

(declare-fun b!4113121 () Bool)

(declare-fun tp!1251866 () Bool)

(declare-fun tp!1251865 () Bool)

(assert (=> b!4113121 (= e!2551738 (and tp!1251866 tp!1251865))))

(declare-fun b!4113120 () Bool)

(declare-fun tp!1251868 () Bool)

(assert (=> b!4113120 (= e!2551738 tp!1251868)))

(assert (= (and b!4112674 ((_ is ElementMatch!12113) (reg!12442 (regOne!24739 (regex!7208 e2!99))))) b!4113118))

(assert (= (and b!4112674 ((_ is Concat!19552) (reg!12442 (regOne!24739 (regex!7208 e2!99))))) b!4113119))

(assert (= (and b!4112674 ((_ is Star!12113) (reg!12442 (regOne!24739 (regex!7208 e2!99))))) b!4113120))

(assert (= (and b!4112674 ((_ is Union!12113) (reg!12442 (regOne!24739 (regex!7208 e2!99))))) b!4113121))

(declare-fun b!4113122 () Bool)

(declare-fun e!2551739 () Bool)

(assert (=> b!4113122 (= e!2551739 tp_is_empty!21171)))

(assert (=> b!4112630 (= tp!1251352 e!2551739)))

(declare-fun b!4113123 () Bool)

(declare-fun tp!1251874 () Bool)

(declare-fun tp!1251872 () Bool)

(assert (=> b!4113123 (= e!2551739 (and tp!1251874 tp!1251872))))

(declare-fun b!4113125 () Bool)

(declare-fun tp!1251871 () Bool)

(declare-fun tp!1251870 () Bool)

(assert (=> b!4113125 (= e!2551739 (and tp!1251871 tp!1251870))))

(declare-fun b!4113124 () Bool)

(declare-fun tp!1251873 () Bool)

(assert (=> b!4113124 (= e!2551739 tp!1251873)))

(assert (= (and b!4112630 ((_ is ElementMatch!12113) (regOne!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113122))

(assert (= (and b!4112630 ((_ is Concat!19552) (regOne!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113123))

(assert (= (and b!4112630 ((_ is Star!12113) (regOne!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113124))

(assert (= (and b!4112630 ((_ is Union!12113) (regOne!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113125))

(declare-fun b!4113126 () Bool)

(declare-fun e!2551740 () Bool)

(assert (=> b!4113126 (= e!2551740 tp_is_empty!21171)))

(assert (=> b!4112630 (= tp!1251350 e!2551740)))

(declare-fun b!4113127 () Bool)

(declare-fun tp!1251879 () Bool)

(declare-fun tp!1251877 () Bool)

(assert (=> b!4113127 (= e!2551740 (and tp!1251879 tp!1251877))))

(declare-fun b!4113129 () Bool)

(declare-fun tp!1251876 () Bool)

(declare-fun tp!1251875 () Bool)

(assert (=> b!4113129 (= e!2551740 (and tp!1251876 tp!1251875))))

(declare-fun b!4113128 () Bool)

(declare-fun tp!1251878 () Bool)

(assert (=> b!4113128 (= e!2551740 tp!1251878)))

(assert (= (and b!4112630 ((_ is ElementMatch!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113126))

(assert (= (and b!4112630 ((_ is Concat!19552) (regTwo!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113127))

(assert (= (and b!4112630 ((_ is Star!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113128))

(assert (= (and b!4112630 ((_ is Union!12113) (regTwo!24738 (regTwo!24738 (regex!7208 e1!99))))) b!4113129))

(declare-fun b!4113130 () Bool)

(declare-fun e!2551741 () Bool)

(assert (=> b!4113130 (= e!2551741 tp_is_empty!21171)))

(assert (=> b!4112664 (= tp!1251389 e!2551741)))

(declare-fun b!4113131 () Bool)

(declare-fun tp!1251884 () Bool)

(declare-fun tp!1251882 () Bool)

(assert (=> b!4113131 (= e!2551741 (and tp!1251884 tp!1251882))))

(declare-fun b!4113133 () Bool)

(declare-fun tp!1251881 () Bool)

(declare-fun tp!1251880 () Bool)

(assert (=> b!4113133 (= e!2551741 (and tp!1251881 tp!1251880))))

(declare-fun b!4113132 () Bool)

(declare-fun tp!1251883 () Bool)

(assert (=> b!4113132 (= e!2551741 tp!1251883)))

(assert (= (and b!4112664 ((_ is ElementMatch!12113) (regOne!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113130))

(assert (= (and b!4112664 ((_ is Concat!19552) (regOne!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113131))

(assert (= (and b!4112664 ((_ is Star!12113) (regOne!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113132))

(assert (= (and b!4112664 ((_ is Union!12113) (regOne!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113133))

(declare-fun b!4113134 () Bool)

(declare-fun e!2551742 () Bool)

(assert (=> b!4113134 (= e!2551742 tp_is_empty!21171)))

(assert (=> b!4112664 (= tp!1251388 e!2551742)))

(declare-fun b!4113135 () Bool)

(declare-fun tp!1251889 () Bool)

(declare-fun tp!1251887 () Bool)

(assert (=> b!4113135 (= e!2551742 (and tp!1251889 tp!1251887))))

(declare-fun b!4113137 () Bool)

(declare-fun tp!1251886 () Bool)

(declare-fun tp!1251885 () Bool)

(assert (=> b!4113137 (= e!2551742 (and tp!1251886 tp!1251885))))

(declare-fun b!4113136 () Bool)

(declare-fun tp!1251888 () Bool)

(assert (=> b!4113136 (= e!2551742 tp!1251888)))

(assert (= (and b!4112664 ((_ is ElementMatch!12113) (regTwo!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113134))

(assert (= (and b!4112664 ((_ is Concat!19552) (regTwo!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113135))

(assert (= (and b!4112664 ((_ is Star!12113) (regTwo!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113136))

(assert (= (and b!4112664 ((_ is Union!12113) (regTwo!24739 (regTwo!24738 (regex!7208 (h!49730 l!6462)))))) b!4113137))

(declare-fun b!4113138 () Bool)

(declare-fun e!2551743 () Bool)

(assert (=> b!4113138 (= e!2551743 tp_is_empty!21171)))

(assert (=> b!4112655 (= tp!1251381 e!2551743)))

(declare-fun b!4113139 () Bool)

(declare-fun tp!1251894 () Bool)

(declare-fun tp!1251892 () Bool)

(assert (=> b!4113139 (= e!2551743 (and tp!1251894 tp!1251892))))

(declare-fun b!4113141 () Bool)

(declare-fun tp!1251891 () Bool)

(declare-fun tp!1251890 () Bool)

(assert (=> b!4113141 (= e!2551743 (and tp!1251891 tp!1251890))))

(declare-fun b!4113140 () Bool)

(declare-fun tp!1251893 () Bool)

(assert (=> b!4113140 (= e!2551743 tp!1251893)))

(assert (= (and b!4112655 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4113138))

(assert (= (and b!4112655 ((_ is Concat!19552) (reg!12442 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4113139))

(assert (= (and b!4112655 ((_ is Star!12113) (reg!12442 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4113140))

(assert (= (and b!4112655 ((_ is Union!12113) (reg!12442 (regTwo!24739 (regex!7208 (h!49730 l!6462)))))) b!4113141))

(declare-fun b!4113142 () Bool)

(declare-fun e!2551744 () Bool)

(assert (=> b!4113142 (= e!2551744 tp_is_empty!21171)))

(assert (=> b!4112646 (= tp!1251372 e!2551744)))

(declare-fun b!4113143 () Bool)

(declare-fun tp!1251899 () Bool)

(declare-fun tp!1251897 () Bool)

(assert (=> b!4113143 (= e!2551744 (and tp!1251899 tp!1251897))))

(declare-fun b!4113145 () Bool)

(declare-fun tp!1251896 () Bool)

(declare-fun tp!1251895 () Bool)

(assert (=> b!4113145 (= e!2551744 (and tp!1251896 tp!1251895))))

(declare-fun b!4113144 () Bool)

(declare-fun tp!1251898 () Bool)

(assert (=> b!4113144 (= e!2551744 tp!1251898)))

(assert (= (and b!4112646 ((_ is ElementMatch!12113) (regOne!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113142))

(assert (= (and b!4112646 ((_ is Concat!19552) (regOne!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113143))

(assert (= (and b!4112646 ((_ is Star!12113) (regOne!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113144))

(assert (= (and b!4112646 ((_ is Union!12113) (regOne!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113145))

(declare-fun b!4113146 () Bool)

(declare-fun e!2551745 () Bool)

(assert (=> b!4113146 (= e!2551745 tp_is_empty!21171)))

(assert (=> b!4112646 (= tp!1251370 e!2551745)))

(declare-fun b!4113147 () Bool)

(declare-fun tp!1251904 () Bool)

(declare-fun tp!1251902 () Bool)

(assert (=> b!4113147 (= e!2551745 (and tp!1251904 tp!1251902))))

(declare-fun b!4113149 () Bool)

(declare-fun tp!1251901 () Bool)

(declare-fun tp!1251900 () Bool)

(assert (=> b!4113149 (= e!2551745 (and tp!1251901 tp!1251900))))

(declare-fun b!4113148 () Bool)

(declare-fun tp!1251903 () Bool)

(assert (=> b!4113148 (= e!2551745 tp!1251903)))

(assert (= (and b!4112646 ((_ is ElementMatch!12113) (regTwo!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113146))

(assert (= (and b!4112646 ((_ is Concat!19552) (regTwo!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113147))

(assert (= (and b!4112646 ((_ is Star!12113) (regTwo!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113148))

(assert (= (and b!4112646 ((_ is Union!12113) (regTwo!24738 (reg!12442 (regex!7208 (h!49730 l!6462)))))) b!4113149))

(declare-fun b!4113150 () Bool)

(declare-fun e!2551746 () Bool)

(assert (=> b!4113150 (= e!2551746 tp_is_empty!21171)))

(assert (=> b!4112690 (= tp!1251425 e!2551746)))

(declare-fun b!4113151 () Bool)

(declare-fun tp!1251909 () Bool)

(declare-fun tp!1251907 () Bool)

(assert (=> b!4113151 (= e!2551746 (and tp!1251909 tp!1251907))))

(declare-fun b!4113153 () Bool)

(declare-fun tp!1251906 () Bool)

(declare-fun tp!1251905 () Bool)

(assert (=> b!4113153 (= e!2551746 (and tp!1251906 tp!1251905))))

(declare-fun b!4113152 () Bool)

(declare-fun tp!1251908 () Bool)

(assert (=> b!4113152 (= e!2551746 tp!1251908)))

(assert (= (and b!4112690 ((_ is ElementMatch!12113) (reg!12442 (regTwo!24739 (regex!7208 e1!99))))) b!4113150))

(assert (= (and b!4112690 ((_ is Concat!19552) (reg!12442 (regTwo!24739 (regex!7208 e1!99))))) b!4113151))

(assert (= (and b!4112690 ((_ is Star!12113) (reg!12442 (regTwo!24739 (regex!7208 e1!99))))) b!4113152))

(assert (= (and b!4112690 ((_ is Union!12113) (reg!12442 (regTwo!24739 (regex!7208 e1!99))))) b!4113153))

(declare-fun b!4113154 () Bool)

(declare-fun e!2551747 () Bool)

(assert (=> b!4113154 (= e!2551747 tp_is_empty!21171)))

(assert (=> b!4112681 (= tp!1251416 e!2551747)))

(declare-fun b!4113155 () Bool)

(declare-fun tp!1251914 () Bool)

(declare-fun tp!1251912 () Bool)

(assert (=> b!4113155 (= e!2551747 (and tp!1251914 tp!1251912))))

(declare-fun b!4113157 () Bool)

(declare-fun tp!1251911 () Bool)

(declare-fun tp!1251910 () Bool)

(assert (=> b!4113157 (= e!2551747 (and tp!1251911 tp!1251910))))

(declare-fun b!4113156 () Bool)

(declare-fun tp!1251913 () Bool)

(assert (=> b!4113156 (= e!2551747 tp!1251913)))

(assert (= (and b!4112681 ((_ is ElementMatch!12113) (regOne!24738 (reg!12442 (regex!7208 e2!99))))) b!4113154))

(assert (= (and b!4112681 ((_ is Concat!19552) (regOne!24738 (reg!12442 (regex!7208 e2!99))))) b!4113155))

(assert (= (and b!4112681 ((_ is Star!12113) (regOne!24738 (reg!12442 (regex!7208 e2!99))))) b!4113156))

(assert (= (and b!4112681 ((_ is Union!12113) (regOne!24738 (reg!12442 (regex!7208 e2!99))))) b!4113157))

(declare-fun b!4113158 () Bool)

(declare-fun e!2551748 () Bool)

(assert (=> b!4113158 (= e!2551748 tp_is_empty!21171)))

(assert (=> b!4112681 (= tp!1251414 e!2551748)))

(declare-fun b!4113159 () Bool)

(declare-fun tp!1251919 () Bool)

(declare-fun tp!1251917 () Bool)

(assert (=> b!4113159 (= e!2551748 (and tp!1251919 tp!1251917))))

(declare-fun b!4113161 () Bool)

(declare-fun tp!1251916 () Bool)

(declare-fun tp!1251915 () Bool)

(assert (=> b!4113161 (= e!2551748 (and tp!1251916 tp!1251915))))

(declare-fun b!4113160 () Bool)

(declare-fun tp!1251918 () Bool)

(assert (=> b!4113160 (= e!2551748 tp!1251918)))

(assert (= (and b!4112681 ((_ is ElementMatch!12113) (regTwo!24738 (reg!12442 (regex!7208 e2!99))))) b!4113158))

(assert (= (and b!4112681 ((_ is Concat!19552) (regTwo!24738 (reg!12442 (regex!7208 e2!99))))) b!4113159))

(assert (= (and b!4112681 ((_ is Star!12113) (regTwo!24738 (reg!12442 (regex!7208 e2!99))))) b!4113160))

(assert (= (and b!4112681 ((_ is Union!12113) (regTwo!24738 (reg!12442 (regex!7208 e2!99))))) b!4113161))

(declare-fun b_lambda!120699 () Bool)

(assert (= b_lambda!120697 (or d!1220011 b_lambda!120699)))

(declare-fun bs!594431 () Bool)

(declare-fun d!1220205 () Bool)

(assert (= bs!594431 (and d!1220205 d!1220011)))

(assert (=> bs!594431 (= (dynLambda!18952 lambda!128499 (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) (h!49731 (t!340186 lt!1468345))) ((_ map or) (dynLambda!18952 lambda!128499 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468345)) (store ((as const (Array String!50940 Bool)) false) (h!49731 (t!340186 lt!1468345)) true)))))

(declare-fun m!4714135 () Bool)

(assert (=> bs!594431 m!4714135))

(assert (=> b!4112834 d!1220205))

(declare-fun b_lambda!120701 () Bool)

(assert (= b_lambda!120695 (or d!1220009 b_lambda!120701)))

(declare-fun bs!594432 () Bool)

(declare-fun d!1220207 () Bool)

(assert (= bs!594432 (and d!1220207 d!1220009)))

(assert (=> bs!594432 (= (dynLambda!18952 lambda!128498 (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) (h!49731 (t!340186 lt!1468342))) ((_ map or) (dynLambda!18952 lambda!128498 ((as const (Array String!50940 Bool)) false) (h!49731 lt!1468342)) (store ((as const (Array String!50940 Bool)) false) (h!49731 (t!340186 lt!1468342)) true)))))

(declare-fun m!4714137 () Bool)

(assert (=> bs!594432 m!4714137))

(assert (=> b!4112816 d!1220207))

(check-sat (not b!4113156) (not b!4112983) (not b!4113153) (not b!4113025) (not b!4112795) (not b!4112924) (not b!4112837) (not b!4113103) (not b!4112812) (not b!4113065) (not b!4112999) (not b!4112922) (not b!4113076) (not b!4112849) (not b!4113052) (not b!4112964) (not b!4113017) (not b!4113044) (not b!4113032) (not b!4112944) (not b!4112927) (not b!4113072) (not b!4113055) (not b!4112979) (not b!4112965) (not b_next!116455) (not b_next!116447) (not b!4112820) (not b_next!116457) (not b!4113129) (not b!4113051) (not d!1220201) (not b!4112981) (not b!4112961) (not b!4113007) (not b!4113061) (not b!4112928) (not b!4112969) (not b!4112984) (not b!4112933) (not b!4112799) (not b!4112931) (not b!4113104) (not b!4113079) (not b!4112940) (not b!4112996) (not b!4112993) (not b!4112916) (not b!4112797) (not b!4112801) (not b!4112898) (not b!4112822) (not b!4113043) (not b!4112977) (not b!4112957) (not b!4112858) (not b!4112955) (not b!4112798) (not b!4113151) (not b!4112951) (not d!1220165) (not b!4113005) (not d!1220175) (not b!4113091) (not b!4113155) (not b!4112865) (not b!4112901) (not b!4112920) (not b!4113119) (not b!4112850) (not b!4112838) (not b!4112992) (not b!4113088) (not b!4113027) (not b!4112816) (not b!4113115) (not b!4113127) (not b!4112852) (not b_lambda!120685) (not b!4112963) (not b!4112936) (not b!4112885) (not b!4112890) (not b!4112869) (not d!1220151) (not b!4113069) (not b!4113028) (not b!4112971) (not b!4113144) b_and!317655 (not b!4112818) (not b!4112947) (not b!4112952) (not d!1220197) (not b!4113016) (not b!4112814) (not b!4113031) (not b!4112985) (not b!4113099) (not b!4112956) (not b!4113004) (not b!4112888) (not b!4113047) (not b!4113036) (not b!4112892) (not b!4112943) (not b!4113135) (not b_next!116471) (not b!4112945) (not b!4112862) (not b!4112912) (not b!4113019) (not b!4112906) (not b_next!116465) (not b!4112860) (not d!1220159) (not b!4113077) (not b!4112866) (not b!4112832) (not b!4112975) (not b!4112874) (not d!1220185) (not b!4113132) (not b!4112960) (not b!4113041) (not b!4112973) (not b!4113040) (not b!4113013) b_and!317629 (not b!4112995) (not b!4112918) (not b!4112823) (not b!4112853) (not b!4112908) (not b!4112848) (not b!4112864) (not b!4112877) (not b!4112870) (not b_next!116451) (not d!1220169) (not b!4113059) b_and!317631 (not b!4113083) (not b!4112932) (not b!4113125) (not b!4113101) (not d!1220199) (not b!4113128) (not b!4112794) (not b!4112868) (not b!4113085) (not b!4113011) (not b!4112861) (not b!4113020) (not b!4113048) (not b!4112854) (not b!4113137) (not b!4113105) (not b!4113023) (not b!4112830) b_and!317639 (not b!4113068) (not b!4113121) (not b!4113053) (not d!1220191) (not b!4112810) (not b_next!116443) (not b!4112897) (not b!4113000) (not d!1220189) (not b!4113107) (not b!4113097) (not b!4113009) (not d!1220149) (not b!4113092) (not b!4112834) (not b!4113037) (not b!4112819) (not b_next!116445) (not b!4112980) (not b!4113049) (not b!4113096) (not b!4112856) (not b!4113045) (not b!4113140) (not b!4112882) (not b!4113012) (not b!4113123) b_and!317633 (not b!4113081) (not b!4112896) (not d!1220153) (not b!4112917) (not d!1220147) (not d!1220171) (not b!4113159) (not b!4112905) (not b!4113113) (not b!4113145) (not b!4113095) b_and!317653 b_and!317625 (not b!4112914) (not b!4112878) (not b!4112902) (not b!4113161) (not b!4112959) (not b!4113067) (not b!4112923) (not b!4112840) (not b!4113071) (not b!4113060) (not b!4112939) (not b_lambda!120699) (not b!4112935) (not b_next!116473) (not b!4112846) (not b_lambda!120687) (not b!4113003) b_and!317645 (not b!4113108) (not b!4112953) (not b!4112941) (not b!4113109) (not b!4112844) (not b!4113139) (not b!4112913) (not b!4112881) (not b!4112937) (not b!4113149) (not b_lambda!120701) (not b!4112909) (not b!4113116) tp_is_empty!21171 b_and!317647 (not b!4113001) (not b!4113024) (not b!4113039) (not b!4112948) (not b!4113120) (not b!4112842) (not b!4112824) (not b!4113033) (not b!4113056) (not b!4112894) (not b_next!116449) (not b!4112921) b_and!317637 (not b!4113160) (not b!4113084) (not b!4112828) (not b!4112813) (not b!4113111) (not b!4112976) (not b!4112857) (not b!4113133) (not b!4112987) (not d!1220181) (not b!4113143) (not b!4112929) (not b!4112904) (not b!4112826) (not b!4112991) (not b!4112893) (not d!1220143) (not b!4112872) (not b!4113063) (not b!4112949) (not b!4112873) (not b!4112845) (not b!4113157) (not b!4113141) (not b!4113008) (not b!4113148) (not b!4113093) (not b!4113015) (not b!4113147) (not b!4112989) (not b!4113100) (not b!4113035) (not b!4113131) (not b!4113064) (not b!4113057) (not b!4112884) (not b!4113021) (not b!4112836) (not b!4113117) (not b!4112910) (not b!4112886) (not b!4112972) (not b!4113152) (not b!4112807) (not b!4112889) (not b!4113073) (not b!4113112) (not b!4112841) (not b!4112968) (not b!4113124) (not b!4113029) (not b!4112876) (not b!4112967) (not b_next!116453) (not b!4113136) b_and!317627 (not b!4112988) (not b!4113087) b_and!317635 (not b_next!116463) (not b!4112997) (not b!4113075) (not b!4112880) (not b!4112809) (not b!4113089) (not b!4112900) (not b!4113080))
(check-sat b_and!317655 (not b_next!116471) (not b_next!116465) b_and!317629 (not b_next!116451) b_and!317631 (not b_next!116445) b_and!317633 b_and!317647 (not b_next!116453) (not b_next!116455) (not b_next!116447) (not b_next!116457) b_and!317639 (not b_next!116443) b_and!317653 b_and!317625 (not b_next!116473) b_and!317645 (not b_next!116449) b_and!317637 b_and!317627 b_and!317635 (not b_next!116463))
