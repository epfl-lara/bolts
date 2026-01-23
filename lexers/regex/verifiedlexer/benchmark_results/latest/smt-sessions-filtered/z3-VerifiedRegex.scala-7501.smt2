; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396546 () Bool)

(assert start!396546)

(declare-fun b!4161531 () Bool)

(declare-fun b_free!119863 () Bool)

(declare-fun b_next!120567 () Bool)

(assert (=> b!4161531 (= b_free!119863 (not b_next!120567))))

(declare-fun tp!1270229 () Bool)

(declare-fun b_and!324225 () Bool)

(assert (=> b!4161531 (= tp!1270229 b_and!324225)))

(declare-fun b_free!119865 () Bool)

(declare-fun b_next!120569 () Bool)

(assert (=> b!4161531 (= b_free!119865 (not b_next!120569))))

(declare-fun tp!1270230 () Bool)

(declare-fun b_and!324227 () Bool)

(assert (=> b!4161531 (= tp!1270230 b_and!324227)))

(declare-fun b!4161540 () Bool)

(declare-fun b_free!119867 () Bool)

(declare-fun b_next!120571 () Bool)

(assert (=> b!4161540 (= b_free!119867 (not b_next!120571))))

(declare-fun tp!1270224 () Bool)

(declare-fun b_and!324229 () Bool)

(assert (=> b!4161540 (= tp!1270224 b_and!324229)))

(declare-fun b_free!119869 () Bool)

(declare-fun b_next!120573 () Bool)

(assert (=> b!4161540 (= b_free!119869 (not b_next!120573))))

(declare-fun tp!1270226 () Bool)

(declare-fun b_and!324231 () Bool)

(assert (=> b!4161540 (= tp!1270226 b_and!324231)))

(declare-fun b!4161539 () Bool)

(declare-fun b_free!119871 () Bool)

(declare-fun b_next!120575 () Bool)

(assert (=> b!4161539 (= b_free!119871 (not b_next!120575))))

(declare-fun tp!1270218 () Bool)

(declare-fun b_and!324233 () Bool)

(assert (=> b!4161539 (= tp!1270218 b_and!324233)))

(declare-fun b_free!119873 () Bool)

(declare-fun b_next!120577 () Bool)

(assert (=> b!4161539 (= b_free!119873 (not b_next!120577))))

(declare-fun tp!1270219 () Bool)

(declare-fun b_and!324235 () Bool)

(assert (=> b!4161539 (= tp!1270219 b_and!324235)))

(declare-fun b!4161524 () Bool)

(declare-fun res!1704737 () Bool)

(declare-fun e!2583214 () Bool)

(assert (=> b!4161524 (=> (not res!1704737) (not e!2583214))))

(declare-datatypes ((LexerInterface!7111 0))(
  ( (LexerInterfaceExt!7108 (__x!27717 Int)) (Lexer!7109) )
))
(declare-fun thiss!25889 () LexerInterface!7111)

(declare-datatypes ((C!25036 0))(
  ( (C!25037 (val!14680 Int)) )
))
(declare-datatypes ((List!45627 0))(
  ( (Nil!45503) (Cons!45503 (h!50923 C!25036) (t!343658 List!45627)) )
))
(declare-datatypes ((IArray!27463 0))(
  ( (IArray!27464 (innerList!13789 List!45627)) )
))
(declare-datatypes ((Conc!13729 0))(
  ( (Node!13729 (left!33938 Conc!13729) (right!34268 Conc!13729) (csize!27688 Int) (cheight!13940 Int)) (Leaf!21231 (xs!17035 IArray!27463) (csize!27689 Int)) (Empty!13729) )
))
(declare-datatypes ((List!45628 0))(
  ( (Nil!45504) (Cons!45504 (h!50924 (_ BitVec 16)) (t!343659 List!45628)) )
))
(declare-datatypes ((String!52605 0))(
  ( (String!52606 (value!234796 String)) )
))
(declare-datatypes ((BalanceConc!27052 0))(
  ( (BalanceConc!27053 (c!711940 Conc!13729)) )
))
(declare-datatypes ((TokenValue!7748 0))(
  ( (FloatLiteralValue!15496 (text!54681 List!45628)) (TokenValueExt!7747 (__x!27718 Int)) (Broken!38740 (value!234797 List!45628)) (Object!7871) (End!7748) (Def!7748) (Underscore!7748) (Match!7748) (Else!7748) (Error!7748) (Case!7748) (If!7748) (Extends!7748) (Abstract!7748) (Class!7748) (Val!7748) (DelimiterValue!15496 (del!7808 List!45628)) (KeywordValue!7754 (value!234798 List!45628)) (CommentValue!15496 (value!234799 List!45628)) (WhitespaceValue!15496 (value!234800 List!45628)) (IndentationValue!7748 (value!234801 List!45628)) (String!52607) (Int32!7748) (Broken!38741 (value!234802 List!45628)) (Boolean!7749) (Unit!64598) (OperatorValue!7751 (op!7808 List!45628)) (IdentifierValue!15496 (value!234803 List!45628)) (IdentifierValue!15497 (value!234804 List!45628)) (WhitespaceValue!15497 (value!234805 List!45628)) (True!15496) (False!15496) (Broken!38742 (value!234806 List!45628)) (Broken!38743 (value!234807 List!45628)) (True!15497) (RightBrace!7748) (RightBracket!7748) (Colon!7748) (Null!7748) (Comma!7748) (LeftBracket!7748) (False!15497) (LeftBrace!7748) (ImaginaryLiteralValue!7748 (text!54682 List!45628)) (StringLiteralValue!23244 (value!234808 List!45628)) (EOFValue!7748 (value!234809 List!45628)) (IdentValue!7748 (value!234810 List!45628)) (DelimiterValue!15497 (value!234811 List!45628)) (DedentValue!7748 (value!234812 List!45628)) (NewLineValue!7748 (value!234813 List!45628)) (IntegerValue!23244 (value!234814 (_ BitVec 32)) (text!54683 List!45628)) (IntegerValue!23245 (value!234815 Int) (text!54684 List!45628)) (Times!7748) (Or!7748) (Equal!7748) (Minus!7748) (Broken!38744 (value!234816 List!45628)) (And!7748) (Div!7748) (LessEqual!7748) (Mod!7748) (Concat!20171) (Not!7748) (Plus!7748) (SpaceValue!7748 (value!234817 List!45628)) (IntegerValue!23246 (value!234818 Int) (text!54685 List!45628)) (StringLiteralValue!23245 (text!54686 List!45628)) (FloatLiteralValue!15497 (text!54687 List!45628)) (BytesLiteralValue!7748 (value!234819 List!45628)) (CommentValue!15497 (value!234820 List!45628)) (StringLiteralValue!23246 (value!234821 List!45628)) (ErrorTokenValue!7748 (msg!7809 List!45628)) )
))
(declare-datatypes ((TokenValueInjection!14924 0))(
  ( (TokenValueInjection!14925 (toValue!10182 Int) (toChars!10041 Int)) )
))
(declare-datatypes ((Regex!12423 0))(
  ( (ElementMatch!12423 (c!711941 C!25036)) (Concat!20172 (regOne!25358 Regex!12423) (regTwo!25358 Regex!12423)) (EmptyExpr!12423) (Star!12423 (reg!12752 Regex!12423)) (EmptyLang!12423) (Union!12423 (regOne!25359 Regex!12423) (regTwo!25359 Regex!12423)) )
))
(declare-datatypes ((Rule!14836 0))(
  ( (Rule!14837 (regex!7518 Regex!12423) (tag!8382 String!52605) (isSeparator!7518 Bool) (transformation!7518 TokenValueInjection!14924)) )
))
(declare-datatypes ((List!45629 0))(
  ( (Nil!45505) (Cons!45505 (h!50925 Rule!14836) (t!343660 List!45629)) )
))
(declare-fun rules!3820 () List!45629)

(declare-fun rulesInvariant!6324 (LexerInterface!7111 List!45629) Bool)

(assert (=> b!4161524 (= res!1704737 (rulesInvariant!6324 thiss!25889 rules!3820))))

(declare-fun b!4161525 () Bool)

(declare-fun e!2583211 () Bool)

(declare-fun tp!1270222 () Bool)

(declare-fun r!4097 () Rule!14836)

(declare-fun e!2583222 () Bool)

(declare-fun inv!60024 (String!52605) Bool)

(declare-fun inv!60026 (TokenValueInjection!14924) Bool)

(assert (=> b!4161525 (= e!2583222 (and tp!1270222 (inv!60024 (tag!8382 r!4097)) (inv!60026 (transformation!7518 r!4097)) e!2583211))))

(declare-fun b!4161526 () Bool)

(declare-fun e!2583215 () Bool)

(declare-fun tp_is_empty!21809 () Bool)

(declare-fun tp!1270227 () Bool)

(assert (=> b!4161526 (= e!2583215 (and tp_is_empty!21809 tp!1270227))))

(declare-fun b!4161527 () Bool)

(declare-fun res!1704734 () Bool)

(assert (=> b!4161527 (=> (not res!1704734) (not e!2583214))))

(declare-fun isEmpty!26949 (List!45629) Bool)

(assert (=> b!4161527 (= res!1704734 (not (isEmpty!26949 rules!3820)))))

(declare-fun b!4161528 () Bool)

(declare-fun e!2583223 () Bool)

(declare-fun e!2583219 () Bool)

(declare-fun tp!1270228 () Bool)

(assert (=> b!4161528 (= e!2583223 (and e!2583219 tp!1270228))))

(declare-fun b!4161529 () Bool)

(declare-fun res!1704736 () Bool)

(assert (=> b!4161529 (=> (not res!1704736) (not e!2583214))))

(declare-fun p!2942 () List!45627)

(declare-fun input!3316 () List!45627)

(declare-fun isPrefix!4375 (List!45627 List!45627) Bool)

(assert (=> b!4161529 (= res!1704736 (isPrefix!4375 p!2942 input!3316))))

(declare-fun b!4161530 () Bool)

(declare-fun res!1704735 () Bool)

(assert (=> b!4161530 (=> (not res!1704735) (not e!2583214))))

(declare-fun pBis!100 () List!45627)

(assert (=> b!4161530 (= res!1704735 (isPrefix!4375 pBis!100 input!3316))))

(declare-fun e!2583221 () Bool)

(assert (=> b!4161531 (= e!2583221 (and tp!1270229 tp!1270230))))

(declare-fun b!4161532 () Bool)

(declare-fun e!2583217 () Bool)

(declare-fun tp!1270223 () Bool)

(assert (=> b!4161532 (= e!2583217 (and tp_is_empty!21809 tp!1270223))))

(declare-fun b!4161533 () Bool)

(declare-fun e!2583212 () Bool)

(declare-fun tp!1270220 () Bool)

(assert (=> b!4161533 (= e!2583212 (and tp_is_empty!21809 tp!1270220))))

(declare-fun e!2583224 () Bool)

(declare-fun b!4161534 () Bool)

(declare-fun tp!1270225 () Bool)

(assert (=> b!4161534 (= e!2583219 (and tp!1270225 (inv!60024 (tag!8382 (h!50925 rules!3820))) (inv!60026 (transformation!7518 (h!50925 rules!3820))) e!2583224))))

(declare-fun b!4161535 () Bool)

(declare-fun res!1704739 () Bool)

(assert (=> b!4161535 (=> (not res!1704739) (not e!2583214))))

(declare-fun contains!9311 (List!45629 Rule!14836) Bool)

(assert (=> b!4161535 (= res!1704739 (contains!9311 rules!3820 r!4097))))

(declare-fun b!4161536 () Bool)

(declare-fun tp!1270221 () Bool)

(declare-fun e!2583220 () Bool)

(declare-fun rBis!161 () Rule!14836)

(assert (=> b!4161536 (= e!2583220 (and tp!1270221 (inv!60024 (tag!8382 rBis!161)) (inv!60026 (transformation!7518 rBis!161)) e!2583221))))

(declare-fun res!1704740 () Bool)

(assert (=> start!396546 (=> (not res!1704740) (not e!2583214))))

(get-info :version)

(assert (=> start!396546 (= res!1704740 ((_ is Lexer!7109) thiss!25889))))

(assert (=> start!396546 e!2583214))

(assert (=> start!396546 e!2583212))

(assert (=> start!396546 e!2583223))

(assert (=> start!396546 e!2583217))

(assert (=> start!396546 e!2583215))

(assert (=> start!396546 true))

(assert (=> start!396546 e!2583220))

(assert (=> start!396546 e!2583222))

(declare-fun b!4161537 () Bool)

(assert (=> b!4161537 (= e!2583214 false)))

(declare-fun lt!1482934 () Bool)

(declare-fun rulesValidInductive!2772 (LexerInterface!7111 List!45629) Bool)

(assert (=> b!4161537 (= lt!1482934 (rulesValidInductive!2772 thiss!25889 rules!3820))))

(declare-fun b!4161538 () Bool)

(declare-fun res!1704738 () Bool)

(assert (=> b!4161538 (=> (not res!1704738) (not e!2583214))))

(assert (=> b!4161538 (= res!1704738 (contains!9311 rules!3820 rBis!161))))

(assert (=> b!4161539 (= e!2583211 (and tp!1270218 tp!1270219))))

(assert (=> b!4161540 (= e!2583224 (and tp!1270224 tp!1270226))))

(assert (= (and start!396546 res!1704740) b!4161529))

(assert (= (and b!4161529 res!1704736) b!4161530))

(assert (= (and b!4161530 res!1704735) b!4161527))

(assert (= (and b!4161527 res!1704734) b!4161524))

(assert (= (and b!4161524 res!1704737) b!4161535))

(assert (= (and b!4161535 res!1704739) b!4161538))

(assert (= (and b!4161538 res!1704738) b!4161537))

(assert (= (and start!396546 ((_ is Cons!45503) pBis!100)) b!4161533))

(assert (= b!4161534 b!4161540))

(assert (= b!4161528 b!4161534))

(assert (= (and start!396546 ((_ is Cons!45505) rules!3820)) b!4161528))

(assert (= (and start!396546 ((_ is Cons!45503) p!2942)) b!4161532))

(assert (= (and start!396546 ((_ is Cons!45503) input!3316)) b!4161526))

(assert (= b!4161536 b!4161531))

(assert (= start!396546 b!4161536))

(assert (= b!4161525 b!4161539))

(assert (= start!396546 b!4161525))

(declare-fun m!4754421 () Bool)

(assert (=> b!4161524 m!4754421))

(declare-fun m!4754423 () Bool)

(assert (=> b!4161525 m!4754423))

(declare-fun m!4754425 () Bool)

(assert (=> b!4161525 m!4754425))

(declare-fun m!4754427 () Bool)

(assert (=> b!4161534 m!4754427))

(declare-fun m!4754429 () Bool)

(assert (=> b!4161534 m!4754429))

(declare-fun m!4754431 () Bool)

(assert (=> b!4161537 m!4754431))

(declare-fun m!4754433 () Bool)

(assert (=> b!4161535 m!4754433))

(declare-fun m!4754435 () Bool)

(assert (=> b!4161536 m!4754435))

(declare-fun m!4754437 () Bool)

(assert (=> b!4161536 m!4754437))

(declare-fun m!4754439 () Bool)

(assert (=> b!4161538 m!4754439))

(declare-fun m!4754441 () Bool)

(assert (=> b!4161529 m!4754441))

(declare-fun m!4754443 () Bool)

(assert (=> b!4161527 m!4754443))

(declare-fun m!4754445 () Bool)

(assert (=> b!4161530 m!4754445))

(check-sat (not b!4161528) (not b_next!120567) (not b_next!120573) (not b!4161534) (not b_next!120577) b_and!324231 (not b!4161535) b_and!324229 (not b!4161530) (not b!4161524) b_and!324225 tp_is_empty!21809 (not b!4161526) (not b_next!120571) (not b!4161536) (not b!4161529) b_and!324233 (not b_next!120569) (not b!4161537) (not b!4161533) (not b_next!120575) (not b!4161527) b_and!324235 (not b!4161538) (not b!4161532) b_and!324227 (not b!4161525))
(check-sat (not b_next!120567) (not b_next!120573) (not b_next!120569) (not b_next!120577) b_and!324231 b_and!324229 (not b_next!120575) b_and!324225 b_and!324235 (not b_next!120571) b_and!324233 b_and!324227)
