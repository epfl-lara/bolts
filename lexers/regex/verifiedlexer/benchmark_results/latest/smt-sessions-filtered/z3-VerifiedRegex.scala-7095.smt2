; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376212 () Bool)

(assert start!376212)

(declare-fun b!3997652 () Bool)

(declare-fun b_free!111057 () Bool)

(declare-fun b_next!111761 () Bool)

(assert (=> b!3997652 (= b_free!111057 (not b_next!111761))))

(declare-fun tp!1216848 () Bool)

(declare-fun b_and!307007 () Bool)

(assert (=> b!3997652 (= tp!1216848 b_and!307007)))

(declare-fun b_free!111059 () Bool)

(declare-fun b_next!111763 () Bool)

(assert (=> b!3997652 (= b_free!111059 (not b_next!111763))))

(declare-fun tp!1216843 () Bool)

(declare-fun b_and!307009 () Bool)

(assert (=> b!3997652 (= tp!1216843 b_and!307009)))

(declare-fun b!3997653 () Bool)

(declare-fun b_free!111061 () Bool)

(declare-fun b_next!111765 () Bool)

(assert (=> b!3997653 (= b_free!111061 (not b_next!111765))))

(declare-fun tp!1216851 () Bool)

(declare-fun b_and!307011 () Bool)

(assert (=> b!3997653 (= tp!1216851 b_and!307011)))

(declare-fun b_free!111063 () Bool)

(declare-fun b_next!111767 () Bool)

(assert (=> b!3997653 (= b_free!111063 (not b_next!111767))))

(declare-fun tp!1216852 () Bool)

(declare-fun b_and!307013 () Bool)

(assert (=> b!3997653 (= tp!1216852 b_and!307013)))

(declare-fun b!3997621 () Bool)

(declare-fun e!2478560 () Bool)

(declare-fun e!2478551 () Bool)

(assert (=> b!3997621 (= e!2478560 e!2478551)))

(declare-fun res!1623666 () Bool)

(assert (=> b!3997621 (=> res!1623666 e!2478551)))

(declare-datatypes ((C!23552 0))(
  ( (C!23553 (val!13870 Int)) )
))
(declare-datatypes ((List!42882 0))(
  ( (Nil!42758) (Cons!42758 (h!48178 C!23552) (t!332065 List!42882)) )
))
(declare-fun lt!1412391 () List!42882)

(declare-fun lt!1412394 () List!42882)

(assert (=> b!3997621 (= res!1623666 (not (= lt!1412391 lt!1412394)))))

(declare-fun prefix!494 () List!42882)

(declare-fun lt!1412344 () List!42882)

(declare-fun ++!11180 (List!42882 List!42882) List!42882)

(assert (=> b!3997621 (= lt!1412391 (++!11180 prefix!494 lt!1412344))))

(declare-fun lt!1412358 () List!42882)

(declare-fun lt!1412348 () List!42882)

(assert (=> b!3997621 (= lt!1412391 (++!11180 lt!1412358 lt!1412348))))

(declare-fun newSuffix!27 () List!42882)

(declare-datatypes ((Unit!61679 0))(
  ( (Unit!61680) )
))
(declare-fun lt!1412405 () Unit!61679)

(declare-fun lemmaConcatAssociativity!2500 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> b!3997621 (= lt!1412405 (lemmaConcatAssociativity!2500 prefix!494 newSuffix!27 lt!1412348))))

(declare-fun b!3997622 () Bool)

(declare-fun e!2478577 () Bool)

(assert (=> b!3997622 (= e!2478577 false)))

(declare-fun b!3997623 () Bool)

(declare-fun res!1623656 () Bool)

(declare-fun e!2478582 () Bool)

(assert (=> b!3997623 (=> res!1623656 e!2478582)))

(declare-fun lt!1412352 () List!42882)

(assert (=> b!3997623 (= res!1623656 (not (= lt!1412352 lt!1412358)))))

(declare-fun b!3997624 () Bool)

(declare-fun res!1623665 () Bool)

(declare-fun e!2478561 () Bool)

(assert (=> b!3997624 (=> (not res!1623665) (not e!2478561))))

(declare-datatypes ((IArray!25983 0))(
  ( (IArray!25984 (innerList!13049 List!42882)) )
))
(declare-datatypes ((Conc!12989 0))(
  ( (Node!12989 (left!32284 Conc!12989) (right!32614 Conc!12989) (csize!26208 Int) (cheight!13200 Int)) (Leaf!20085 (xs!16295 IArray!25983) (csize!26209 Int)) (Empty!12989) )
))
(declare-datatypes ((BalanceConc!25572 0))(
  ( (BalanceConc!25573 (c!691582 Conc!12989)) )
))
(declare-datatypes ((List!42883 0))(
  ( (Nil!42759) (Cons!42759 (h!48179 (_ BitVec 16)) (t!332066 List!42883)) )
))
(declare-datatypes ((TokenValue!7008 0))(
  ( (FloatLiteralValue!14016 (text!49501 List!42883)) (TokenValueExt!7007 (__x!26233 Int)) (Broken!35040 (value!213781 List!42883)) (Object!7131) (End!7008) (Def!7008) (Underscore!7008) (Match!7008) (Else!7008) (Error!7008) (Case!7008) (If!7008) (Extends!7008) (Abstract!7008) (Class!7008) (Val!7008) (DelimiterValue!14016 (del!7068 List!42883)) (KeywordValue!7014 (value!213782 List!42883)) (CommentValue!14016 (value!213783 List!42883)) (WhitespaceValue!14016 (value!213784 List!42883)) (IndentationValue!7008 (value!213785 List!42883)) (String!48757) (Int32!7008) (Broken!35041 (value!213786 List!42883)) (Boolean!7009) (Unit!61681) (OperatorValue!7011 (op!7068 List!42883)) (IdentifierValue!14016 (value!213787 List!42883)) (IdentifierValue!14017 (value!213788 List!42883)) (WhitespaceValue!14017 (value!213789 List!42883)) (True!14016) (False!14016) (Broken!35042 (value!213790 List!42883)) (Broken!35043 (value!213791 List!42883)) (True!14017) (RightBrace!7008) (RightBracket!7008) (Colon!7008) (Null!7008) (Comma!7008) (LeftBracket!7008) (False!14017) (LeftBrace!7008) (ImaginaryLiteralValue!7008 (text!49502 List!42883)) (StringLiteralValue!21024 (value!213792 List!42883)) (EOFValue!7008 (value!213793 List!42883)) (IdentValue!7008 (value!213794 List!42883)) (DelimiterValue!14017 (value!213795 List!42883)) (DedentValue!7008 (value!213796 List!42883)) (NewLineValue!7008 (value!213797 List!42883)) (IntegerValue!21024 (value!213798 (_ BitVec 32)) (text!49503 List!42883)) (IntegerValue!21025 (value!213799 Int) (text!49504 List!42883)) (Times!7008) (Or!7008) (Equal!7008) (Minus!7008) (Broken!35044 (value!213800 List!42883)) (And!7008) (Div!7008) (LessEqual!7008) (Mod!7008) (Concat!18691) (Not!7008) (Plus!7008) (SpaceValue!7008 (value!213801 List!42883)) (IntegerValue!21026 (value!213802 Int) (text!49505 List!42883)) (StringLiteralValue!21025 (text!49506 List!42883)) (FloatLiteralValue!14017 (text!49507 List!42883)) (BytesLiteralValue!7008 (value!213803 List!42883)) (CommentValue!14017 (value!213804 List!42883)) (StringLiteralValue!21026 (value!213805 List!42883)) (ErrorTokenValue!7008 (msg!7069 List!42883)) )
))
(declare-datatypes ((Regex!11683 0))(
  ( (ElementMatch!11683 (c!691583 C!23552)) (Concat!18692 (regOne!23878 Regex!11683) (regTwo!23878 Regex!11683)) (EmptyExpr!11683) (Star!11683 (reg!12012 Regex!11683)) (EmptyLang!11683) (Union!11683 (regOne!23879 Regex!11683) (regTwo!23879 Regex!11683)) )
))
(declare-datatypes ((String!48758 0))(
  ( (String!48759 (value!213806 String)) )
))
(declare-datatypes ((TokenValueInjection!13444 0))(
  ( (TokenValueInjection!13445 (toValue!9266 Int) (toChars!9125 Int)) )
))
(declare-datatypes ((Rule!13356 0))(
  ( (Rule!13357 (regex!6778 Regex!11683) (tag!7638 String!48758) (isSeparator!6778 Bool) (transformation!6778 TokenValueInjection!13444)) )
))
(declare-datatypes ((Token!12694 0))(
  ( (Token!12695 (value!213807 TokenValue!7008) (rule!9806 Rule!13356) (size!31975 Int) (originalCharacters!7378 List!42882)) )
))
(declare-fun token!484 () Token!12694)

(declare-fun size!31976 (List!42882) Int)

(assert (=> b!3997624 (= res!1623665 (= (size!31975 token!484) (size!31976 (originalCharacters!7378 token!484))))))

(declare-fun b!3997625 () Bool)

(declare-fun res!1623668 () Bool)

(declare-fun e!2478566 () Bool)

(assert (=> b!3997625 (=> (not res!1623668) (not e!2478566))))

(declare-fun suffix!1299 () List!42882)

(declare-fun isPrefix!3865 (List!42882 List!42882) Bool)

(assert (=> b!3997625 (= res!1623668 (isPrefix!3865 newSuffix!27 suffix!1299))))

(declare-fun b!3997626 () Bool)

(declare-fun e!2478572 () Bool)

(declare-fun e!2478562 () Bool)

(assert (=> b!3997626 (= e!2478572 (not e!2478562))))

(declare-fun res!1623672 () Bool)

(assert (=> b!3997626 (=> res!1623672 e!2478562)))

(declare-fun lt!1412380 () List!42882)

(assert (=> b!3997626 (= res!1623672 (not (= lt!1412380 lt!1412394)))))

(declare-fun lt!1412368 () List!42882)

(declare-fun suffixResult!105 () List!42882)

(assert (=> b!3997626 (= lt!1412380 (++!11180 lt!1412368 suffixResult!105))))

(declare-fun lt!1412388 () Unit!61679)

(declare-fun lemmaInv!993 (TokenValueInjection!13444) Unit!61679)

(assert (=> b!3997626 (= lt!1412388 (lemmaInv!993 (transformation!6778 (rule!9806 token!484))))))

(declare-datatypes ((LexerInterface!6367 0))(
  ( (LexerInterfaceExt!6364 (__x!26234 Int)) (Lexer!6365) )
))
(declare-fun thiss!21717 () LexerInterface!6367)

(declare-fun ruleValid!2710 (LexerInterface!6367 Rule!13356) Bool)

(assert (=> b!3997626 (ruleValid!2710 thiss!21717 (rule!9806 token!484))))

(declare-datatypes ((List!42884 0))(
  ( (Nil!42760) (Cons!42760 (h!48180 Rule!13356) (t!332067 List!42884)) )
))
(declare-fun rules!2999 () List!42884)

(declare-fun lt!1412338 () Unit!61679)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1784 (LexerInterface!6367 Rule!13356 List!42884) Unit!61679)

(assert (=> b!3997626 (= lt!1412338 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1784 thiss!21717 (rule!9806 token!484) rules!2999))))

(declare-fun b!3997627 () Bool)

(declare-fun e!2478548 () Bool)

(assert (=> b!3997627 (= e!2478548 e!2478572)))

(declare-fun res!1623674 () Bool)

(assert (=> b!3997627 (=> (not res!1623674) (not e!2478572))))

(declare-datatypes ((tuple2!41946 0))(
  ( (tuple2!41947 (_1!24107 Token!12694) (_2!24107 List!42882)) )
))
(declare-datatypes ((Option!9192 0))(
  ( (None!9191) (Some!9191 (v!39551 tuple2!41946)) )
))
(declare-fun lt!1412340 () Option!9192)

(declare-fun maxPrefix!3665 (LexerInterface!6367 List!42884 List!42882) Option!9192)

(assert (=> b!3997627 (= res!1623674 (= (maxPrefix!3665 thiss!21717 rules!2999 lt!1412394) lt!1412340))))

(declare-fun lt!1412392 () tuple2!41946)

(assert (=> b!3997627 (= lt!1412340 (Some!9191 lt!1412392))))

(assert (=> b!3997627 (= lt!1412392 (tuple2!41947 token!484 suffixResult!105))))

(assert (=> b!3997627 (= lt!1412394 (++!11180 prefix!494 suffix!1299))))

(declare-fun b!3997628 () Bool)

(declare-fun e!2478570 () Unit!61679)

(declare-fun Unit!61682 () Unit!61679)

(assert (=> b!3997628 (= e!2478570 Unit!61682)))

(declare-fun b!3997629 () Bool)

(declare-fun e!2478546 () Unit!61679)

(declare-fun Unit!61683 () Unit!61679)

(assert (=> b!3997629 (= e!2478546 Unit!61683)))

(declare-fun lt!1412381 () Option!9192)

(declare-fun lt!1412396 () List!42882)

(declare-fun lt!1412350 () Unit!61679)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!432 (LexerInterface!6367 List!42884 Rule!13356 List!42882 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> b!3997629 (= lt!1412350 (lemmaMaxPrefixOutputsMaxPrefix!432 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 lt!1412368 (rule!9806 token!484)))))

(assert (=> b!3997629 false))

(declare-fun tp!1216842 () Bool)

(declare-fun e!2478563 () Bool)

(declare-fun e!2478559 () Bool)

(declare-fun b!3997630 () Bool)

(declare-fun inv!57103 (String!48758) Bool)

(declare-fun inv!57106 (TokenValueInjection!13444) Bool)

(assert (=> b!3997630 (= e!2478563 (and tp!1216842 (inv!57103 (tag!7638 (h!48180 rules!2999))) (inv!57106 (transformation!6778 (h!48180 rules!2999))) e!2478559))))

(declare-fun res!1623647 () Bool)

(assert (=> start!376212 (=> (not res!1623647) (not e!2478566))))

(get-info :version)

(assert (=> start!376212 (= res!1623647 ((_ is Lexer!6365) thiss!21717))))

(assert (=> start!376212 e!2478566))

(declare-fun e!2478555 () Bool)

(assert (=> start!376212 e!2478555))

(declare-fun e!2478558 () Bool)

(declare-fun inv!57107 (Token!12694) Bool)

(assert (=> start!376212 (and (inv!57107 token!484) e!2478558)))

(declare-fun e!2478554 () Bool)

(assert (=> start!376212 e!2478554))

(declare-fun e!2478553 () Bool)

(assert (=> start!376212 e!2478553))

(declare-fun e!2478544 () Bool)

(assert (=> start!376212 e!2478544))

(assert (=> start!376212 true))

(declare-fun e!2478571 () Bool)

(assert (=> start!376212 e!2478571))

(declare-fun e!2478569 () Bool)

(assert (=> start!376212 e!2478569))

(declare-fun b!3997631 () Bool)

(declare-fun lt!1412360 () Int)

(assert (=> b!3997631 (= e!2478561 (and (= (size!31975 token!484) lt!1412360) (= (originalCharacters!7378 token!484) lt!1412368)))))

(declare-fun b!3997632 () Bool)

(declare-fun e!2478574 () Bool)

(declare-fun tp!1216849 () Bool)

(declare-fun inv!21 (TokenValue!7008) Bool)

(assert (=> b!3997632 (= e!2478558 (and (inv!21 (value!213807 token!484)) e!2478574 tp!1216849))))

(declare-fun b!3997633 () Bool)

(declare-fun e!2478565 () Bool)

(declare-fun e!2478564 () Bool)

(assert (=> b!3997633 (= e!2478565 e!2478564)))

(declare-fun res!1623673 () Bool)

(assert (=> b!3997633 (=> res!1623673 e!2478564)))

(assert (=> b!3997633 (= res!1623673 (not ((_ is Some!9191) lt!1412381)))))

(assert (=> b!3997633 (= lt!1412381 (maxPrefix!3665 thiss!21717 rules!2999 lt!1412358))))

(declare-fun lt!1412363 () List!42882)

(declare-fun lt!1412346 () Token!12694)

(assert (=> b!3997633 (and (= suffixResult!105 lt!1412363) (= lt!1412392 (tuple2!41947 lt!1412346 lt!1412363)))))

(declare-fun lt!1412400 () Unit!61679)

(declare-fun lemmaSamePrefixThenSameSuffix!2052 (List!42882 List!42882 List!42882 List!42882 List!42882) Unit!61679)

(assert (=> b!3997633 (= lt!1412400 (lemmaSamePrefixThenSameSuffix!2052 lt!1412368 suffixResult!105 lt!1412368 lt!1412363 lt!1412394))))

(declare-fun lt!1412404 () List!42882)

(assert (=> b!3997633 (isPrefix!3865 lt!1412368 lt!1412404)))

(declare-fun lt!1412359 () Unit!61679)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2708 (List!42882 List!42882) Unit!61679)

(assert (=> b!3997633 (= lt!1412359 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 lt!1412363))))

(declare-fun b!3997634 () Bool)

(declare-fun e!2478549 () Bool)

(assert (=> b!3997634 (= e!2478582 e!2478549)))

(declare-fun res!1623655 () Bool)

(assert (=> b!3997634 (=> res!1623655 e!2478549)))

(declare-fun lt!1412342 () List!42882)

(assert (=> b!3997634 (= res!1623655 (not (= lt!1412342 lt!1412358)))))

(declare-fun lt!1412401 () List!42882)

(assert (=> b!3997634 (= lt!1412342 (++!11180 lt!1412396 lt!1412401))))

(declare-fun getSuffix!2296 (List!42882 List!42882) List!42882)

(assert (=> b!3997634 (= lt!1412401 (getSuffix!2296 lt!1412358 lt!1412396))))

(declare-fun b!3997635 () Bool)

(declare-fun tp_is_empty!20337 () Bool)

(declare-fun tp!1216853 () Bool)

(assert (=> b!3997635 (= e!2478569 (and tp_is_empty!20337 tp!1216853))))

(declare-fun b!3997636 () Bool)

(declare-fun e!2478556 () Bool)

(assert (=> b!3997636 (= e!2478549 e!2478556)))

(declare-fun res!1623650 () Bool)

(assert (=> b!3997636 (=> res!1623650 e!2478556)))

(declare-fun lt!1412395 () Int)

(assert (=> b!3997636 (= res!1623650 (not (= lt!1412360 lt!1412395)))))

(declare-fun lt!1412393 () Unit!61679)

(assert (=> b!3997636 (= lt!1412393 e!2478546)))

(declare-fun c!691578 () Bool)

(assert (=> b!3997636 (= c!691578 (< lt!1412395 lt!1412360))))

(declare-fun lt!1412361 () Unit!61679)

(declare-fun e!2478552 () Unit!61679)

(assert (=> b!3997636 (= lt!1412361 e!2478552)))

(declare-fun c!691581 () Bool)

(assert (=> b!3997636 (= c!691581 (> lt!1412395 lt!1412360))))

(assert (=> b!3997636 (= (_2!24107 (v!39551 lt!1412381)) lt!1412401)))

(declare-fun lt!1412357 () Unit!61679)

(assert (=> b!3997636 (= lt!1412357 (lemmaSamePrefixThenSameSuffix!2052 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412396 lt!1412401 lt!1412358))))

(assert (=> b!3997636 (isPrefix!3865 lt!1412396 lt!1412342)))

(declare-fun lt!1412386 () Unit!61679)

(assert (=> b!3997636 (= lt!1412386 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 lt!1412401))))

(declare-fun b!3997637 () Bool)

(declare-fun e!2478567 () Bool)

(assert (=> b!3997637 (= e!2478567 e!2478560)))

(declare-fun res!1623675 () Bool)

(assert (=> b!3997637 (=> res!1623675 e!2478560)))

(assert (=> b!3997637 (= res!1623675 (not (= lt!1412344 suffix!1299)))))

(assert (=> b!3997637 (= lt!1412344 (++!11180 newSuffix!27 lt!1412348))))

(assert (=> b!3997637 (= lt!1412348 (getSuffix!2296 suffix!1299 newSuffix!27))))

(declare-fun b!3997638 () Bool)

(declare-fun e!2478547 () Bool)

(assert (=> b!3997638 (= e!2478547 false)))

(declare-fun b!3997639 () Bool)

(assert (=> b!3997639 (= e!2478551 e!2478582)))

(declare-fun res!1623662 () Bool)

(assert (=> b!3997639 (=> res!1623662 e!2478582)))

(assert (=> b!3997639 (= res!1623662 (not (isPrefix!3865 lt!1412396 lt!1412394)))))

(assert (=> b!3997639 (isPrefix!3865 lt!1412396 lt!1412391)))

(declare-fun lt!1412366 () Unit!61679)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!698 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> b!3997639 (= lt!1412366 (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412396 lt!1412358 lt!1412348))))

(declare-fun b!3997640 () Bool)

(declare-fun e!2478573 () Unit!61679)

(declare-fun Unit!61684 () Unit!61679)

(assert (=> b!3997640 (= e!2478573 Unit!61684)))

(declare-fun lt!1412362 () Unit!61679)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!274 (LexerInterface!6367 List!42884 Rule!13356 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> b!3997640 (= lt!1412362 (lemmaMaxPrefNoSmallerRuleMatches!274 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(declare-fun res!1623651 () Bool)

(declare-fun matchR!5660 (Regex!11683 List!42882) Bool)

(assert (=> b!3997640 (= res!1623651 (not (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412368)))))

(declare-fun e!2478545 () Bool)

(assert (=> b!3997640 (=> (not res!1623651) (not e!2478545))))

(assert (=> b!3997640 e!2478545))

(declare-fun b!3997641 () Bool)

(declare-fun e!2478575 () Bool)

(declare-fun e!2478542 () Bool)

(assert (=> b!3997641 (= e!2478575 e!2478542)))

(declare-fun res!1623648 () Bool)

(assert (=> b!3997641 (=> res!1623648 e!2478542)))

(declare-fun lt!1412355 () List!42882)

(declare-fun lt!1412345 () List!42882)

(assert (=> b!3997641 (= res!1623648 (or (not (= lt!1412394 lt!1412345)) (not (= lt!1412394 lt!1412355))))))

(assert (=> b!3997641 (= lt!1412345 lt!1412355)))

(declare-fun lt!1412378 () List!42882)

(assert (=> b!3997641 (= lt!1412355 (++!11180 lt!1412368 lt!1412378))))

(declare-fun lt!1412347 () List!42882)

(assert (=> b!3997641 (= lt!1412345 (++!11180 lt!1412347 suffix!1299))))

(declare-fun lt!1412369 () List!42882)

(assert (=> b!3997641 (= lt!1412378 (++!11180 lt!1412369 suffix!1299))))

(declare-fun lt!1412390 () Unit!61679)

(assert (=> b!3997641 (= lt!1412390 (lemmaConcatAssociativity!2500 lt!1412368 lt!1412369 suffix!1299))))

(declare-fun b!3997642 () Bool)

(declare-fun e!2478578 () Bool)

(assert (=> b!3997642 (= e!2478562 e!2478578)))

(declare-fun res!1623646 () Bool)

(assert (=> b!3997642 (=> res!1623646 e!2478578)))

(assert (=> b!3997642 (= res!1623646 (not (isPrefix!3865 lt!1412368 lt!1412394)))))

(assert (=> b!3997642 (isPrefix!3865 prefix!494 lt!1412394)))

(declare-fun lt!1412370 () Unit!61679)

(assert (=> b!3997642 (= lt!1412370 (lemmaConcatTwoListThenFirstIsPrefix!2708 prefix!494 suffix!1299))))

(assert (=> b!3997642 (isPrefix!3865 lt!1412368 lt!1412380)))

(declare-fun lt!1412383 () Unit!61679)

(assert (=> b!3997642 (= lt!1412383 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 suffixResult!105))))

(declare-fun b!3997643 () Bool)

(declare-fun tp!1216850 () Bool)

(assert (=> b!3997643 (= e!2478555 (and tp_is_empty!20337 tp!1216850))))

(declare-fun b!3997644 () Bool)

(declare-fun e!2478568 () Bool)

(assert (=> b!3997644 (= e!2478566 e!2478568)))

(declare-fun res!1623660 () Bool)

(assert (=> b!3997644 (=> (not res!1623660) (not e!2478568))))

(declare-fun lt!1412372 () Int)

(assert (=> b!3997644 (= res!1623660 (>= lt!1412372 lt!1412360))))

(assert (=> b!3997644 (= lt!1412360 (size!31976 lt!1412368))))

(assert (=> b!3997644 (= lt!1412372 (size!31976 prefix!494))))

(declare-fun list!15878 (BalanceConc!25572) List!42882)

(declare-fun charsOf!4594 (Token!12694) BalanceConc!25572)

(assert (=> b!3997644 (= lt!1412368 (list!15878 (charsOf!4594 token!484)))))

(declare-fun b!3997645 () Bool)

(assert (=> b!3997645 (= e!2478578 e!2478575)))

(declare-fun res!1623664 () Bool)

(assert (=> b!3997645 (=> res!1623664 e!2478575)))

(assert (=> b!3997645 (= res!1623664 (not (= lt!1412347 prefix!494)))))

(assert (=> b!3997645 (= lt!1412347 (++!11180 lt!1412368 lt!1412369))))

(assert (=> b!3997645 (= lt!1412369 (getSuffix!2296 prefix!494 lt!1412368))))

(assert (=> b!3997645 (isPrefix!3865 lt!1412368 prefix!494)))

(declare-fun lt!1412375 () Unit!61679)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!443 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> b!3997645 (= lt!1412375 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!443 prefix!494 lt!1412368 lt!1412394))))

(declare-fun b!3997646 () Bool)

(assert (=> b!3997646 (= e!2478568 e!2478548)))

(declare-fun res!1623669 () Bool)

(assert (=> b!3997646 (=> (not res!1623669) (not e!2478548))))

(declare-fun lt!1412403 () List!42882)

(assert (=> b!3997646 (= res!1623669 (= lt!1412403 lt!1412358))))

(assert (=> b!3997646 (= lt!1412358 (++!11180 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42882)

(assert (=> b!3997646 (= lt!1412403 (++!11180 lt!1412368 newSuffixResult!27))))

(declare-fun b!3997647 () Bool)

(assert (=> b!3997647 (= e!2478564 e!2478567)))

(declare-fun res!1623654 () Bool)

(assert (=> b!3997647 (=> res!1623654 e!2478567)))

(declare-fun lt!1412354 () Option!9192)

(assert (=> b!3997647 (= res!1623654 (not (= lt!1412354 (Some!9191 (v!39551 lt!1412381)))))))

(assert (=> b!3997647 (isPrefix!3865 lt!1412396 (++!11180 lt!1412396 newSuffixResult!27))))

(declare-fun lt!1412385 () Unit!61679)

(assert (=> b!3997647 (= lt!1412385 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 newSuffixResult!27))))

(assert (=> b!3997647 (isPrefix!3865 lt!1412396 lt!1412352)))

(assert (=> b!3997647 (= lt!1412352 (++!11180 lt!1412396 (_2!24107 (v!39551 lt!1412381))))))

(declare-fun lt!1412353 () Unit!61679)

(assert (=> b!3997647 (= lt!1412353 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 (_2!24107 (v!39551 lt!1412381))))))

(declare-fun lt!1412402 () TokenValue!7008)

(assert (=> b!3997647 (= lt!1412354 (Some!9191 (tuple2!41947 (Token!12695 lt!1412402 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412395 lt!1412396) (_2!24107 (v!39551 lt!1412381)))))))

(declare-fun maxPrefixOneRule!2699 (LexerInterface!6367 Rule!13356 List!42882) Option!9192)

(assert (=> b!3997647 (= lt!1412354 (maxPrefixOneRule!2699 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412358))))

(assert (=> b!3997647 (= lt!1412395 (size!31976 lt!1412396))))

(declare-fun apply!9989 (TokenValueInjection!13444 BalanceConc!25572) TokenValue!7008)

(declare-fun seqFromList!5017 (List!42882) BalanceConc!25572)

(assert (=> b!3997647 (= lt!1412402 (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (seqFromList!5017 lt!1412396)))))

(declare-fun lt!1412364 () Unit!61679)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1521 (LexerInterface!6367 List!42884 List!42882 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> b!3997647 (= lt!1412364 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1521 thiss!21717 rules!2999 lt!1412396 lt!1412358 (_2!24107 (v!39551 lt!1412381)) (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> b!3997647 (= lt!1412396 (list!15878 (charsOf!4594 (_1!24107 (v!39551 lt!1412381)))))))

(declare-fun lt!1412379 () Unit!61679)

(assert (=> b!3997647 (= lt!1412379 (lemmaInv!993 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(assert (=> b!3997647 (ruleValid!2710 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(declare-fun lt!1412376 () Unit!61679)

(assert (=> b!3997647 (= lt!1412376 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1784 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) rules!2999))))

(declare-fun lt!1412351 () Unit!61679)

(declare-fun lemmaCharactersSize!1373 (Token!12694) Unit!61679)

(assert (=> b!3997647 (= lt!1412351 (lemmaCharactersSize!1373 token!484))))

(declare-fun lt!1412399 () Unit!61679)

(assert (=> b!3997647 (= lt!1412399 (lemmaCharactersSize!1373 (_1!24107 (v!39551 lt!1412381))))))

(declare-fun b!3997648 () Bool)

(declare-fun tp!1216846 () Bool)

(assert (=> b!3997648 (= e!2478571 (and e!2478563 tp!1216846))))

(declare-fun b!3997649 () Bool)

(declare-fun tp!1216847 () Bool)

(assert (=> b!3997649 (= e!2478544 (and tp_is_empty!20337 tp!1216847))))

(declare-fun b!3997650 () Bool)

(declare-fun e!2478557 () Bool)

(assert (=> b!3997650 (= e!2478557 e!2478565)))

(declare-fun res!1623661 () Bool)

(assert (=> b!3997650 (=> res!1623661 e!2478565)))

(assert (=> b!3997650 (= res!1623661 (not (= lt!1412404 lt!1412394)))))

(assert (=> b!3997650 (= lt!1412404 (++!11180 lt!1412368 lt!1412363))))

(assert (=> b!3997650 (= lt!1412363 (getSuffix!2296 lt!1412394 lt!1412368))))

(assert (=> b!3997650 e!2478561))

(declare-fun res!1623659 () Bool)

(assert (=> b!3997650 (=> (not res!1623659) (not e!2478561))))

(assert (=> b!3997650 (= res!1623659 (isPrefix!3865 lt!1412394 lt!1412394))))

(declare-fun lt!1412373 () Unit!61679)

(declare-fun lemmaIsPrefixRefl!2457 (List!42882 List!42882) Unit!61679)

(assert (=> b!3997650 (= lt!1412373 (lemmaIsPrefixRefl!2457 lt!1412394 lt!1412394))))

(declare-fun b!3997651 () Bool)

(declare-fun e!2478543 () Bool)

(assert (=> b!3997651 (= e!2478556 e!2478543)))

(declare-fun res!1623653 () Bool)

(assert (=> b!3997651 (=> res!1623653 e!2478543)))

(assert (=> b!3997651 (= res!1623653 (not (= (_1!24107 (v!39551 lt!1412381)) token!484)))))

(assert (=> b!3997651 (= (rule!9806 (_1!24107 (v!39551 lt!1412381))) (rule!9806 token!484))))

(declare-fun lt!1412356 () Unit!61679)

(declare-fun lemmaSameIndexThenSameElement!254 (List!42884 Rule!13356 Rule!13356) Unit!61679)

(assert (=> b!3997651 (= lt!1412356 (lemmaSameIndexThenSameElement!254 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) (rule!9806 token!484)))))

(declare-fun lt!1412367 () Unit!61679)

(assert (=> b!3997651 (= lt!1412367 e!2478570)))

(declare-fun c!691579 () Bool)

(declare-fun lt!1412389 () Int)

(declare-fun lt!1412339 () Int)

(assert (=> b!3997651 (= c!691579 (> lt!1412389 lt!1412339))))

(declare-fun lt!1412397 () Unit!61679)

(assert (=> b!3997651 (= lt!1412397 e!2478573)))

(declare-fun c!691580 () Bool)

(assert (=> b!3997651 (= c!691580 (< lt!1412389 lt!1412339))))

(declare-fun getIndex!548 (List!42884 Rule!13356) Int)

(assert (=> b!3997651 (= lt!1412339 (getIndex!548 rules!2999 (rule!9806 token!484)))))

(assert (=> b!3997651 (= lt!1412389 (getIndex!548 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> b!3997651 (= (_2!24107 (v!39551 lt!1412381)) newSuffixResult!27)))

(declare-fun lt!1412377 () Unit!61679)

(assert (=> b!3997651 (= lt!1412377 (lemmaSamePrefixThenSameSuffix!2052 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412368 newSuffixResult!27 lt!1412358))))

(assert (=> b!3997651 (= lt!1412396 lt!1412368)))

(declare-fun lt!1412384 () Unit!61679)

(declare-fun lemmaIsPrefixSameLengthThenSameList!887 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> b!3997651 (= lt!1412384 (lemmaIsPrefixSameLengthThenSameList!887 lt!1412396 lt!1412368 lt!1412358))))

(assert (=> b!3997652 (= e!2478559 (and tp!1216848 tp!1216843))))

(declare-fun e!2478580 () Bool)

(assert (=> b!3997653 (= e!2478580 (and tp!1216851 tp!1216852))))

(declare-fun b!3997654 () Bool)

(assert (=> b!3997654 (= e!2478545 false)))

(declare-fun b!3997655 () Bool)

(declare-fun Unit!61685 () Unit!61679)

(assert (=> b!3997655 (= e!2478573 Unit!61685)))

(declare-fun b!3997656 () Bool)

(declare-fun res!1623663 () Bool)

(assert (=> b!3997656 (=> (not res!1623663) (not e!2478566))))

(assert (=> b!3997656 (= res!1623663 (>= (size!31976 suffix!1299) (size!31976 newSuffix!27)))))

(declare-fun b!3997657 () Bool)

(declare-fun e!2478581 () Bool)

(assert (=> b!3997657 (= e!2478581 e!2478557)))

(declare-fun res!1623671 () Bool)

(assert (=> b!3997657 (=> res!1623671 e!2478557)))

(assert (=> b!3997657 (= res!1623671 (not (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412368)))))

(assert (=> b!3997657 (isPrefix!3865 lt!1412368 lt!1412358)))

(declare-fun lt!1412341 () Unit!61679)

(assert (=> b!3997657 (= lt!1412341 (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412368 prefix!494 newSuffix!27))))

(declare-fun lt!1412365 () Unit!61679)

(assert (=> b!3997657 (= lt!1412365 (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412368 prefix!494 suffix!1299))))

(declare-fun b!3997658 () Bool)

(declare-fun tp!1216844 () Bool)

(assert (=> b!3997658 (= e!2478553 (and tp_is_empty!20337 tp!1216844))))

(declare-fun b!3997659 () Bool)

(declare-fun res!1623670 () Bool)

(assert (=> b!3997659 (=> (not res!1623670) (not e!2478566))))

(declare-fun isEmpty!25554 (List!42884) Bool)

(assert (=> b!3997659 (= res!1623670 (not (isEmpty!25554 rules!2999)))))

(declare-fun b!3997660 () Bool)

(assert (=> b!3997660 (= e!2478542 e!2478581)))

(declare-fun res!1623667 () Bool)

(assert (=> b!3997660 (=> res!1623667 e!2478581)))

(declare-fun lt!1412343 () Option!9192)

(assert (=> b!3997660 (= res!1623667 (not (= lt!1412343 lt!1412340)))))

(assert (=> b!3997660 (= lt!1412343 (Some!9191 (tuple2!41947 lt!1412346 suffixResult!105)))))

(assert (=> b!3997660 (= lt!1412343 (maxPrefixOneRule!2699 thiss!21717 (rule!9806 token!484) lt!1412394))))

(declare-fun lt!1412398 () TokenValue!7008)

(assert (=> b!3997660 (= lt!1412346 (Token!12695 lt!1412398 (rule!9806 token!484) lt!1412360 lt!1412368))))

(assert (=> b!3997660 (= lt!1412398 (apply!9989 (transformation!6778 (rule!9806 token!484)) (seqFromList!5017 lt!1412368)))))

(declare-fun lt!1412387 () Unit!61679)

(assert (=> b!3997660 (= lt!1412387 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1521 thiss!21717 rules!2999 lt!1412368 lt!1412394 suffixResult!105 (rule!9806 token!484)))))

(assert (=> b!3997660 (= lt!1412378 suffixResult!105)))

(declare-fun lt!1412382 () Unit!61679)

(assert (=> b!3997660 (= lt!1412382 (lemmaSamePrefixThenSameSuffix!2052 lt!1412368 lt!1412378 lt!1412368 suffixResult!105 lt!1412394))))

(assert (=> b!3997660 (isPrefix!3865 lt!1412368 lt!1412355)))

(declare-fun lt!1412374 () Unit!61679)

(assert (=> b!3997660 (= lt!1412374 (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 lt!1412378))))

(declare-fun b!3997661 () Bool)

(declare-fun Unit!61686 () Unit!61679)

(assert (=> b!3997661 (= e!2478570 Unit!61686)))

(declare-fun lt!1412349 () Unit!61679)

(assert (=> b!3997661 (= lt!1412349 (lemmaMaxPrefNoSmallerRuleMatches!274 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 (rule!9806 token!484)))))

(declare-fun res!1623676 () Bool)

(assert (=> b!3997661 (= res!1623676 (not (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412396)))))

(assert (=> b!3997661 (=> (not res!1623676) (not e!2478547))))

(assert (=> b!3997661 e!2478547))

(declare-fun b!3997662 () Bool)

(declare-fun Unit!61687 () Unit!61679)

(assert (=> b!3997662 (= e!2478552 Unit!61687)))

(declare-fun b!3997663 () Bool)

(declare-fun rulesValidInductive!2467 (LexerInterface!6367 List!42884) Bool)

(assert (=> b!3997663 (= e!2478543 (rulesValidInductive!2467 thiss!21717 rules!2999))))

(declare-fun b!3997664 () Bool)

(declare-fun tp!1216845 () Bool)

(assert (=> b!3997664 (= e!2478554 (and tp_is_empty!20337 tp!1216845))))

(declare-fun b!3997665 () Bool)

(declare-fun Unit!61688 () Unit!61679)

(assert (=> b!3997665 (= e!2478546 Unit!61688)))

(declare-fun tp!1216854 () Bool)

(declare-fun b!3997666 () Bool)

(assert (=> b!3997666 (= e!2478574 (and tp!1216854 (inv!57103 (tag!7638 (rule!9806 token!484))) (inv!57106 (transformation!6778 (rule!9806 token!484))) e!2478580))))

(declare-fun b!3997667 () Bool)

(declare-fun res!1623652 () Bool)

(assert (=> b!3997667 (=> (not res!1623652) (not e!2478566))))

(declare-fun rulesInvariant!5710 (LexerInterface!6367 List!42884) Bool)

(assert (=> b!3997667 (= res!1623652 (rulesInvariant!5710 thiss!21717 rules!2999))))

(declare-fun b!3997668 () Bool)

(declare-fun res!1623657 () Bool)

(assert (=> b!3997668 (=> (not res!1623657) (not e!2478561))))

(assert (=> b!3997668 (= res!1623657 (= (value!213807 token!484) lt!1412398))))

(declare-fun b!3997669 () Bool)

(declare-fun Unit!61689 () Unit!61679)

(assert (=> b!3997669 (= e!2478552 Unit!61689)))

(declare-fun lt!1412371 () Unit!61679)

(assert (=> b!3997669 (= lt!1412371 (lemmaMaxPrefixOutputsMaxPrefix!432 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 lt!1412396 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(declare-fun res!1623649 () Bool)

(assert (=> b!3997669 (= res!1623649 (not (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412396)))))

(assert (=> b!3997669 (=> (not res!1623649) (not e!2478577))))

(assert (=> b!3997669 e!2478577))

(declare-fun b!3997670 () Bool)

(declare-fun res!1623658 () Bool)

(assert (=> b!3997670 (=> res!1623658 e!2478556)))

(assert (=> b!3997670 (= res!1623658 (not (isPrefix!3865 lt!1412396 lt!1412358)))))

(assert (= (and start!376212 res!1623647) b!3997659))

(assert (= (and b!3997659 res!1623670) b!3997667))

(assert (= (and b!3997667 res!1623652) b!3997656))

(assert (= (and b!3997656 res!1623663) b!3997625))

(assert (= (and b!3997625 res!1623668) b!3997644))

(assert (= (and b!3997644 res!1623660) b!3997646))

(assert (= (and b!3997646 res!1623669) b!3997627))

(assert (= (and b!3997627 res!1623674) b!3997626))

(assert (= (and b!3997626 (not res!1623672)) b!3997642))

(assert (= (and b!3997642 (not res!1623646)) b!3997645))

(assert (= (and b!3997645 (not res!1623664)) b!3997641))

(assert (= (and b!3997641 (not res!1623648)) b!3997660))

(assert (= (and b!3997660 (not res!1623667)) b!3997657))

(assert (= (and b!3997657 (not res!1623671)) b!3997650))

(assert (= (and b!3997650 res!1623659) b!3997668))

(assert (= (and b!3997668 res!1623657) b!3997624))

(assert (= (and b!3997624 res!1623665) b!3997631))

(assert (= (and b!3997650 (not res!1623661)) b!3997633))

(assert (= (and b!3997633 (not res!1623673)) b!3997647))

(assert (= (and b!3997647 (not res!1623654)) b!3997637))

(assert (= (and b!3997637 (not res!1623675)) b!3997621))

(assert (= (and b!3997621 (not res!1623666)) b!3997639))

(assert (= (and b!3997639 (not res!1623662)) b!3997623))

(assert (= (and b!3997623 (not res!1623656)) b!3997634))

(assert (= (and b!3997634 (not res!1623655)) b!3997636))

(assert (= (and b!3997636 c!691581) b!3997669))

(assert (= (and b!3997636 (not c!691581)) b!3997662))

(assert (= (and b!3997669 res!1623649) b!3997622))

(assert (= (and b!3997636 c!691578) b!3997629))

(assert (= (and b!3997636 (not c!691578)) b!3997665))

(assert (= (and b!3997636 (not res!1623650)) b!3997670))

(assert (= (and b!3997670 (not res!1623658)) b!3997651))

(assert (= (and b!3997651 c!691580) b!3997640))

(assert (= (and b!3997651 (not c!691580)) b!3997655))

(assert (= (and b!3997640 res!1623651) b!3997654))

(assert (= (and b!3997651 c!691579) b!3997661))

(assert (= (and b!3997651 (not c!691579)) b!3997628))

(assert (= (and b!3997661 res!1623676) b!3997638))

(assert (= (and b!3997651 (not res!1623653)) b!3997663))

(assert (= (and start!376212 ((_ is Cons!42758) prefix!494)) b!3997643))

(assert (= b!3997666 b!3997653))

(assert (= b!3997632 b!3997666))

(assert (= start!376212 b!3997632))

(assert (= (and start!376212 ((_ is Cons!42758) suffixResult!105)) b!3997664))

(assert (= (and start!376212 ((_ is Cons!42758) suffix!1299)) b!3997658))

(assert (= (and start!376212 ((_ is Cons!42758) newSuffix!27)) b!3997649))

(assert (= b!3997630 b!3997652))

(assert (= b!3997648 b!3997630))

(assert (= (and start!376212 ((_ is Cons!42760) rules!2999)) b!3997648))

(assert (= (and start!376212 ((_ is Cons!42758) newSuffixResult!27)) b!3997635))

(declare-fun m!4578775 () Bool)

(assert (=> b!3997645 m!4578775))

(declare-fun m!4578777 () Bool)

(assert (=> b!3997645 m!4578777))

(declare-fun m!4578779 () Bool)

(assert (=> b!3997645 m!4578779))

(declare-fun m!4578781 () Bool)

(assert (=> b!3997645 m!4578781))

(declare-fun m!4578783 () Bool)

(assert (=> b!3997629 m!4578783))

(declare-fun m!4578785 () Bool)

(assert (=> b!3997624 m!4578785))

(declare-fun m!4578787 () Bool)

(assert (=> b!3997644 m!4578787))

(declare-fun m!4578789 () Bool)

(assert (=> b!3997644 m!4578789))

(declare-fun m!4578791 () Bool)

(assert (=> b!3997644 m!4578791))

(assert (=> b!3997644 m!4578791))

(declare-fun m!4578793 () Bool)

(assert (=> b!3997644 m!4578793))

(declare-fun m!4578795 () Bool)

(assert (=> start!376212 m!4578795))

(declare-fun m!4578797 () Bool)

(assert (=> b!3997646 m!4578797))

(declare-fun m!4578799 () Bool)

(assert (=> b!3997646 m!4578799))

(declare-fun m!4578801 () Bool)

(assert (=> b!3997659 m!4578801))

(declare-fun m!4578803 () Bool)

(assert (=> b!3997626 m!4578803))

(declare-fun m!4578805 () Bool)

(assert (=> b!3997626 m!4578805))

(declare-fun m!4578807 () Bool)

(assert (=> b!3997626 m!4578807))

(declare-fun m!4578809 () Bool)

(assert (=> b!3997626 m!4578809))

(declare-fun m!4578811 () Bool)

(assert (=> b!3997633 m!4578811))

(declare-fun m!4578813 () Bool)

(assert (=> b!3997633 m!4578813))

(declare-fun m!4578815 () Bool)

(assert (=> b!3997633 m!4578815))

(declare-fun m!4578817 () Bool)

(assert (=> b!3997633 m!4578817))

(declare-fun m!4578819 () Bool)

(assert (=> b!3997663 m!4578819))

(declare-fun m!4578821 () Bool)

(assert (=> b!3997639 m!4578821))

(declare-fun m!4578823 () Bool)

(assert (=> b!3997639 m!4578823))

(declare-fun m!4578825 () Bool)

(assert (=> b!3997639 m!4578825))

(declare-fun m!4578827 () Bool)

(assert (=> b!3997637 m!4578827))

(declare-fun m!4578829 () Bool)

(assert (=> b!3997637 m!4578829))

(declare-fun m!4578831 () Bool)

(assert (=> b!3997627 m!4578831))

(declare-fun m!4578833 () Bool)

(assert (=> b!3997627 m!4578833))

(declare-fun m!4578835 () Bool)

(assert (=> b!3997636 m!4578835))

(declare-fun m!4578837 () Bool)

(assert (=> b!3997636 m!4578837))

(declare-fun m!4578839 () Bool)

(assert (=> b!3997636 m!4578839))

(declare-fun m!4578841 () Bool)

(assert (=> b!3997656 m!4578841))

(declare-fun m!4578843 () Bool)

(assert (=> b!3997656 m!4578843))

(declare-fun m!4578845 () Bool)

(assert (=> b!3997651 m!4578845))

(declare-fun m!4578847 () Bool)

(assert (=> b!3997651 m!4578847))

(declare-fun m!4578849 () Bool)

(assert (=> b!3997651 m!4578849))

(declare-fun m!4578851 () Bool)

(assert (=> b!3997651 m!4578851))

(declare-fun m!4578853 () Bool)

(assert (=> b!3997651 m!4578853))

(declare-fun m!4578855 () Bool)

(assert (=> b!3997640 m!4578855))

(declare-fun m!4578857 () Bool)

(assert (=> b!3997640 m!4578857))

(declare-fun m!4578859 () Bool)

(assert (=> b!3997670 m!4578859))

(declare-fun m!4578861 () Bool)

(assert (=> b!3997642 m!4578861))

(declare-fun m!4578863 () Bool)

(assert (=> b!3997642 m!4578863))

(declare-fun m!4578865 () Bool)

(assert (=> b!3997642 m!4578865))

(declare-fun m!4578867 () Bool)

(assert (=> b!3997642 m!4578867))

(declare-fun m!4578869 () Bool)

(assert (=> b!3997642 m!4578869))

(declare-fun m!4578871 () Bool)

(assert (=> b!3997650 m!4578871))

(declare-fun m!4578873 () Bool)

(assert (=> b!3997650 m!4578873))

(declare-fun m!4578875 () Bool)

(assert (=> b!3997650 m!4578875))

(declare-fun m!4578877 () Bool)

(assert (=> b!3997650 m!4578877))

(declare-fun m!4578879 () Bool)

(assert (=> b!3997634 m!4578879))

(declare-fun m!4578881 () Bool)

(assert (=> b!3997634 m!4578881))

(declare-fun m!4578883 () Bool)

(assert (=> b!3997660 m!4578883))

(declare-fun m!4578885 () Bool)

(assert (=> b!3997660 m!4578885))

(declare-fun m!4578887 () Bool)

(assert (=> b!3997660 m!4578887))

(assert (=> b!3997660 m!4578883))

(declare-fun m!4578889 () Bool)

(assert (=> b!3997660 m!4578889))

(declare-fun m!4578891 () Bool)

(assert (=> b!3997660 m!4578891))

(declare-fun m!4578893 () Bool)

(assert (=> b!3997660 m!4578893))

(declare-fun m!4578895 () Bool)

(assert (=> b!3997660 m!4578895))

(declare-fun m!4578897 () Bool)

(assert (=> b!3997630 m!4578897))

(declare-fun m!4578899 () Bool)

(assert (=> b!3997630 m!4578899))

(declare-fun m!4578901 () Bool)

(assert (=> b!3997647 m!4578901))

(declare-fun m!4578903 () Bool)

(assert (=> b!3997647 m!4578903))

(declare-fun m!4578905 () Bool)

(assert (=> b!3997647 m!4578905))

(declare-fun m!4578907 () Bool)

(assert (=> b!3997647 m!4578907))

(declare-fun m!4578909 () Bool)

(assert (=> b!3997647 m!4578909))

(declare-fun m!4578911 () Bool)

(assert (=> b!3997647 m!4578911))

(declare-fun m!4578913 () Bool)

(assert (=> b!3997647 m!4578913))

(declare-fun m!4578915 () Bool)

(assert (=> b!3997647 m!4578915))

(declare-fun m!4578917 () Bool)

(assert (=> b!3997647 m!4578917))

(declare-fun m!4578919 () Bool)

(assert (=> b!3997647 m!4578919))

(declare-fun m!4578921 () Bool)

(assert (=> b!3997647 m!4578921))

(declare-fun m!4578923 () Bool)

(assert (=> b!3997647 m!4578923))

(declare-fun m!4578925 () Bool)

(assert (=> b!3997647 m!4578925))

(declare-fun m!4578927 () Bool)

(assert (=> b!3997647 m!4578927))

(declare-fun m!4578929 () Bool)

(assert (=> b!3997647 m!4578929))

(assert (=> b!3997647 m!4578913))

(assert (=> b!3997647 m!4578927))

(declare-fun m!4578931 () Bool)

(assert (=> b!3997647 m!4578931))

(assert (=> b!3997647 m!4578917))

(declare-fun m!4578933 () Bool)

(assert (=> b!3997647 m!4578933))

(declare-fun m!4578935 () Bool)

(assert (=> b!3997647 m!4578935))

(declare-fun m!4578937 () Bool)

(assert (=> b!3997632 m!4578937))

(declare-fun m!4578939 () Bool)

(assert (=> b!3997661 m!4578939))

(declare-fun m!4578941 () Bool)

(assert (=> b!3997661 m!4578941))

(declare-fun m!4578943 () Bool)

(assert (=> b!3997669 m!4578943))

(declare-fun m!4578945 () Bool)

(assert (=> b!3997669 m!4578945))

(declare-fun m!4578947 () Bool)

(assert (=> b!3997641 m!4578947))

(declare-fun m!4578949 () Bool)

(assert (=> b!3997641 m!4578949))

(declare-fun m!4578951 () Bool)

(assert (=> b!3997641 m!4578951))

(declare-fun m!4578953 () Bool)

(assert (=> b!3997641 m!4578953))

(declare-fun m!4578955 () Bool)

(assert (=> b!3997666 m!4578955))

(declare-fun m!4578957 () Bool)

(assert (=> b!3997666 m!4578957))

(declare-fun m!4578959 () Bool)

(assert (=> b!3997667 m!4578959))

(declare-fun m!4578961 () Bool)

(assert (=> b!3997625 m!4578961))

(declare-fun m!4578963 () Bool)

(assert (=> b!3997657 m!4578963))

(declare-fun m!4578965 () Bool)

(assert (=> b!3997657 m!4578965))

(declare-fun m!4578967 () Bool)

(assert (=> b!3997657 m!4578967))

(declare-fun m!4578969 () Bool)

(assert (=> b!3997657 m!4578969))

(declare-fun m!4578971 () Bool)

(assert (=> b!3997621 m!4578971))

(declare-fun m!4578973 () Bool)

(assert (=> b!3997621 m!4578973))

(declare-fun m!4578975 () Bool)

(assert (=> b!3997621 m!4578975))

(check-sat (not b!3997660) (not b!3997656) (not b!3997621) (not b_next!111763) (not b!3997640) (not b!3997639) (not b!3997630) (not b!3997657) (not b_next!111767) (not b!3997650) (not b!3997648) b_and!307007 (not start!376212) (not b!3997635) (not b!3997641) (not b!3997670) (not b_next!111765) (not b_next!111761) (not b!3997663) (not b!3997637) (not b!3997632) (not b!3997664) (not b!3997669) (not b!3997651) (not b!3997642) (not b!3997661) b_and!307011 (not b!3997633) (not b!3997659) (not b!3997636) (not b!3997627) (not b!3997624) b_and!307009 (not b!3997629) (not b!3997634) (not b!3997626) b_and!307013 (not b!3997646) (not b!3997658) (not b!3997645) (not b!3997647) (not b!3997649) (not b!3997625) (not b!3997667) tp_is_empty!20337 (not b!3997643) (not b!3997644) (not b!3997666))
(check-sat (not b_next!111763) b_and!307011 b_and!307009 b_and!307013 (not b_next!111767) b_and!307007 (not b_next!111765) (not b_next!111761))
(get-model)

(declare-fun b!3997769 () Bool)

(declare-fun e!2478637 () Bool)

(declare-fun lt!1412430 () List!42882)

(assert (=> b!3997769 (= e!2478637 (or (not (= lt!1412401 Nil!42758)) (= lt!1412430 lt!1412396)))))

(declare-fun b!3997766 () Bool)

(declare-fun e!2478638 () List!42882)

(assert (=> b!3997766 (= e!2478638 lt!1412401)))

(declare-fun d!1182756 () Bool)

(assert (=> d!1182756 e!2478637))

(declare-fun res!1623741 () Bool)

(assert (=> d!1182756 (=> (not res!1623741) (not e!2478637))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6487 (List!42882) (InoxSet C!23552))

(assert (=> d!1182756 (= res!1623741 (= (content!6487 lt!1412430) ((_ map or) (content!6487 lt!1412396) (content!6487 lt!1412401))))))

(assert (=> d!1182756 (= lt!1412430 e!2478638)))

(declare-fun c!691602 () Bool)

(assert (=> d!1182756 (= c!691602 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182756 (= (++!11180 lt!1412396 lt!1412401) lt!1412430)))

(declare-fun b!3997768 () Bool)

(declare-fun res!1623740 () Bool)

(assert (=> b!3997768 (=> (not res!1623740) (not e!2478637))))

(assert (=> b!3997768 (= res!1623740 (= (size!31976 lt!1412430) (+ (size!31976 lt!1412396) (size!31976 lt!1412401))))))

(declare-fun b!3997767 () Bool)

(assert (=> b!3997767 (= e!2478638 (Cons!42758 (h!48178 lt!1412396) (++!11180 (t!332065 lt!1412396) lt!1412401)))))

(assert (= (and d!1182756 c!691602) b!3997766))

(assert (= (and d!1182756 (not c!691602)) b!3997767))

(assert (= (and d!1182756 res!1623741) b!3997768))

(assert (= (and b!3997768 res!1623740) b!3997769))

(declare-fun m!4579039 () Bool)

(assert (=> d!1182756 m!4579039))

(declare-fun m!4579047 () Bool)

(assert (=> d!1182756 m!4579047))

(declare-fun m!4579049 () Bool)

(assert (=> d!1182756 m!4579049))

(declare-fun m!4579051 () Bool)

(assert (=> b!3997768 m!4579051))

(assert (=> b!3997768 m!4578923))

(declare-fun m!4579053 () Bool)

(assert (=> b!3997768 m!4579053))

(declare-fun m!4579055 () Bool)

(assert (=> b!3997767 m!4579055))

(assert (=> b!3997634 d!1182756))

(declare-fun d!1182764 () Bool)

(declare-fun lt!1412441 () List!42882)

(assert (=> d!1182764 (= (++!11180 lt!1412396 lt!1412441) lt!1412358)))

(declare-fun e!2478657 () List!42882)

(assert (=> d!1182764 (= lt!1412441 e!2478657)))

(declare-fun c!691612 () Bool)

(assert (=> d!1182764 (= c!691612 ((_ is Cons!42758) lt!1412396))))

(assert (=> d!1182764 (>= (size!31976 lt!1412358) (size!31976 lt!1412396))))

(assert (=> d!1182764 (= (getSuffix!2296 lt!1412358 lt!1412396) lt!1412441)))

(declare-fun b!3997802 () Bool)

(declare-fun tail!6233 (List!42882) List!42882)

(assert (=> b!3997802 (= e!2478657 (getSuffix!2296 (tail!6233 lt!1412358) (t!332065 lt!1412396)))))

(declare-fun b!3997803 () Bool)

(assert (=> b!3997803 (= e!2478657 lt!1412358)))

(assert (= (and d!1182764 c!691612) b!3997802))

(assert (= (and d!1182764 (not c!691612)) b!3997803))

(declare-fun m!4579071 () Bool)

(assert (=> d!1182764 m!4579071))

(declare-fun m!4579073 () Bool)

(assert (=> d!1182764 m!4579073))

(assert (=> d!1182764 m!4578923))

(declare-fun m!4579075 () Bool)

(assert (=> b!3997802 m!4579075))

(assert (=> b!3997802 m!4579075))

(declare-fun m!4579077 () Bool)

(assert (=> b!3997802 m!4579077))

(assert (=> b!3997634 d!1182764))

(declare-fun b!3997822 () Bool)

(declare-fun res!1623773 () Bool)

(declare-fun e!2478664 () Bool)

(assert (=> b!3997822 (=> (not res!1623773) (not e!2478664))))

(declare-fun lt!1412452 () Option!9192)

(declare-fun get!14065 (Option!9192) tuple2!41946)

(assert (=> b!3997822 (= res!1623773 (< (size!31976 (_2!24107 (get!14065 lt!1412452))) (size!31976 lt!1412358)))))

(declare-fun b!3997823 () Bool)

(declare-fun res!1623774 () Bool)

(assert (=> b!3997823 (=> (not res!1623774) (not e!2478664))))

(assert (=> b!3997823 (= res!1623774 (= (value!213807 (_1!24107 (get!14065 lt!1412452))) (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (get!14065 lt!1412452)))) (seqFromList!5017 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412452)))))))))

(declare-fun b!3997824 () Bool)

(declare-fun res!1623772 () Bool)

(assert (=> b!3997824 (=> (not res!1623772) (not e!2478664))))

(assert (=> b!3997824 (= res!1623772 (= (++!11180 (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412452)))) (_2!24107 (get!14065 lt!1412452))) lt!1412358))))

(declare-fun b!3997825 () Bool)

(declare-fun res!1623775 () Bool)

(assert (=> b!3997825 (=> (not res!1623775) (not e!2478664))))

(assert (=> b!3997825 (= res!1623775 (= (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412452)))) (originalCharacters!7378 (_1!24107 (get!14065 lt!1412452)))))))

(declare-fun b!3997826 () Bool)

(declare-fun res!1623776 () Bool)

(assert (=> b!3997826 (=> (not res!1623776) (not e!2478664))))

(assert (=> b!3997826 (= res!1623776 (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (get!14065 lt!1412452)))) (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412452))))))))

(declare-fun d!1182772 () Bool)

(declare-fun e!2478666 () Bool)

(assert (=> d!1182772 e!2478666))

(declare-fun res!1623770 () Bool)

(assert (=> d!1182772 (=> res!1623770 e!2478666)))

(declare-fun isEmpty!25557 (Option!9192) Bool)

(assert (=> d!1182772 (= res!1623770 (isEmpty!25557 lt!1412452))))

(declare-fun e!2478665 () Option!9192)

(assert (=> d!1182772 (= lt!1412452 e!2478665)))

(declare-fun c!691615 () Bool)

(assert (=> d!1182772 (= c!691615 (and ((_ is Cons!42760) rules!2999) ((_ is Nil!42760) (t!332067 rules!2999))))))

(declare-fun lt!1412454 () Unit!61679)

(declare-fun lt!1412453 () Unit!61679)

(assert (=> d!1182772 (= lt!1412454 lt!1412453)))

(assert (=> d!1182772 (isPrefix!3865 lt!1412358 lt!1412358)))

(assert (=> d!1182772 (= lt!1412453 (lemmaIsPrefixRefl!2457 lt!1412358 lt!1412358))))

(assert (=> d!1182772 (rulesValidInductive!2467 thiss!21717 rules!2999)))

(assert (=> d!1182772 (= (maxPrefix!3665 thiss!21717 rules!2999 lt!1412358) lt!1412452)))

(declare-fun call!285945 () Option!9192)

(declare-fun bm!285940 () Bool)

(assert (=> bm!285940 (= call!285945 (maxPrefixOneRule!2699 thiss!21717 (h!48180 rules!2999) lt!1412358))))

(declare-fun b!3997827 () Bool)

(declare-fun contains!8509 (List!42884 Rule!13356) Bool)

(assert (=> b!3997827 (= e!2478664 (contains!8509 rules!2999 (rule!9806 (_1!24107 (get!14065 lt!1412452)))))))

(declare-fun b!3997828 () Bool)

(assert (=> b!3997828 (= e!2478665 call!285945)))

(declare-fun b!3997829 () Bool)

(assert (=> b!3997829 (= e!2478666 e!2478664)))

(declare-fun res!1623771 () Bool)

(assert (=> b!3997829 (=> (not res!1623771) (not e!2478664))))

(declare-fun isDefined!7052 (Option!9192) Bool)

(assert (=> b!3997829 (= res!1623771 (isDefined!7052 lt!1412452))))

(declare-fun b!3997830 () Bool)

(declare-fun lt!1412455 () Option!9192)

(declare-fun lt!1412456 () Option!9192)

(assert (=> b!3997830 (= e!2478665 (ite (and ((_ is None!9191) lt!1412455) ((_ is None!9191) lt!1412456)) None!9191 (ite ((_ is None!9191) lt!1412456) lt!1412455 (ite ((_ is None!9191) lt!1412455) lt!1412456 (ite (>= (size!31975 (_1!24107 (v!39551 lt!1412455))) (size!31975 (_1!24107 (v!39551 lt!1412456)))) lt!1412455 lt!1412456)))))))

(assert (=> b!3997830 (= lt!1412455 call!285945)))

(assert (=> b!3997830 (= lt!1412456 (maxPrefix!3665 thiss!21717 (t!332067 rules!2999) lt!1412358))))

(assert (= (and d!1182772 c!691615) b!3997828))

(assert (= (and d!1182772 (not c!691615)) b!3997830))

(assert (= (or b!3997828 b!3997830) bm!285940))

(assert (= (and d!1182772 (not res!1623770)) b!3997829))

(assert (= (and b!3997829 res!1623771) b!3997825))

(assert (= (and b!3997825 res!1623775) b!3997822))

(assert (= (and b!3997822 res!1623773) b!3997824))

(assert (= (and b!3997824 res!1623772) b!3997823))

(assert (= (and b!3997823 res!1623774) b!3997826))

(assert (= (and b!3997826 res!1623776) b!3997827))

(declare-fun m!4579079 () Bool)

(assert (=> b!3997826 m!4579079))

(declare-fun m!4579081 () Bool)

(assert (=> b!3997826 m!4579081))

(assert (=> b!3997826 m!4579081))

(declare-fun m!4579083 () Bool)

(assert (=> b!3997826 m!4579083))

(assert (=> b!3997826 m!4579083))

(declare-fun m!4579085 () Bool)

(assert (=> b!3997826 m!4579085))

(assert (=> b!3997822 m!4579079))

(declare-fun m!4579087 () Bool)

(assert (=> b!3997822 m!4579087))

(assert (=> b!3997822 m!4579073))

(assert (=> b!3997825 m!4579079))

(assert (=> b!3997825 m!4579081))

(assert (=> b!3997825 m!4579081))

(assert (=> b!3997825 m!4579083))

(assert (=> b!3997827 m!4579079))

(declare-fun m!4579089 () Bool)

(assert (=> b!3997827 m!4579089))

(declare-fun m!4579091 () Bool)

(assert (=> b!3997830 m!4579091))

(declare-fun m!4579093 () Bool)

(assert (=> bm!285940 m!4579093))

(assert (=> b!3997824 m!4579079))

(assert (=> b!3997824 m!4579081))

(assert (=> b!3997824 m!4579081))

(assert (=> b!3997824 m!4579083))

(assert (=> b!3997824 m!4579083))

(declare-fun m!4579095 () Bool)

(assert (=> b!3997824 m!4579095))

(assert (=> b!3997823 m!4579079))

(declare-fun m!4579097 () Bool)

(assert (=> b!3997823 m!4579097))

(assert (=> b!3997823 m!4579097))

(declare-fun m!4579099 () Bool)

(assert (=> b!3997823 m!4579099))

(declare-fun m!4579101 () Bool)

(assert (=> d!1182772 m!4579101))

(declare-fun m!4579103 () Bool)

(assert (=> d!1182772 m!4579103))

(declare-fun m!4579105 () Bool)

(assert (=> d!1182772 m!4579105))

(assert (=> d!1182772 m!4578819))

(declare-fun m!4579107 () Bool)

(assert (=> b!3997829 m!4579107))

(assert (=> b!3997633 d!1182772))

(declare-fun d!1182774 () Bool)

(assert (=> d!1182774 (= suffixResult!105 lt!1412363)))

(declare-fun lt!1412459 () Unit!61679)

(declare-fun choose!24100 (List!42882 List!42882 List!42882 List!42882 List!42882) Unit!61679)

(assert (=> d!1182774 (= lt!1412459 (choose!24100 lt!1412368 suffixResult!105 lt!1412368 lt!1412363 lt!1412394))))

(assert (=> d!1182774 (isPrefix!3865 lt!1412368 lt!1412394)))

(assert (=> d!1182774 (= (lemmaSamePrefixThenSameSuffix!2052 lt!1412368 suffixResult!105 lt!1412368 lt!1412363 lt!1412394) lt!1412459)))

(declare-fun bs!588697 () Bool)

(assert (= bs!588697 d!1182774))

(declare-fun m!4579109 () Bool)

(assert (=> bs!588697 m!4579109))

(assert (=> bs!588697 m!4578867))

(assert (=> b!3997633 d!1182774))

(declare-fun b!3997840 () Bool)

(declare-fun res!1623786 () Bool)

(declare-fun e!2478674 () Bool)

(assert (=> b!3997840 (=> (not res!1623786) (not e!2478674))))

(declare-fun head!8501 (List!42882) C!23552)

(assert (=> b!3997840 (= res!1623786 (= (head!8501 lt!1412368) (head!8501 lt!1412404)))))

(declare-fun b!3997839 () Bool)

(declare-fun e!2478673 () Bool)

(assert (=> b!3997839 (= e!2478673 e!2478674)))

(declare-fun res!1623788 () Bool)

(assert (=> b!3997839 (=> (not res!1623788) (not e!2478674))))

(assert (=> b!3997839 (= res!1623788 (not ((_ is Nil!42758) lt!1412404)))))

(declare-fun d!1182776 () Bool)

(declare-fun e!2478675 () Bool)

(assert (=> d!1182776 e!2478675))

(declare-fun res!1623787 () Bool)

(assert (=> d!1182776 (=> res!1623787 e!2478675)))

(declare-fun lt!1412462 () Bool)

(assert (=> d!1182776 (= res!1623787 (not lt!1412462))))

(assert (=> d!1182776 (= lt!1412462 e!2478673)))

(declare-fun res!1623785 () Bool)

(assert (=> d!1182776 (=> res!1623785 e!2478673)))

(assert (=> d!1182776 (= res!1623785 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182776 (= (isPrefix!3865 lt!1412368 lt!1412404) lt!1412462)))

(declare-fun b!3997841 () Bool)

(assert (=> b!3997841 (= e!2478674 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 lt!1412404)))))

(declare-fun b!3997842 () Bool)

(assert (=> b!3997842 (= e!2478675 (>= (size!31976 lt!1412404) (size!31976 lt!1412368)))))

(assert (= (and d!1182776 (not res!1623785)) b!3997839))

(assert (= (and b!3997839 res!1623788) b!3997840))

(assert (= (and b!3997840 res!1623786) b!3997841))

(assert (= (and d!1182776 (not res!1623787)) b!3997842))

(declare-fun m!4579111 () Bool)

(assert (=> b!3997840 m!4579111))

(declare-fun m!4579113 () Bool)

(assert (=> b!3997840 m!4579113))

(declare-fun m!4579115 () Bool)

(assert (=> b!3997841 m!4579115))

(declare-fun m!4579117 () Bool)

(assert (=> b!3997841 m!4579117))

(assert (=> b!3997841 m!4579115))

(assert (=> b!3997841 m!4579117))

(declare-fun m!4579119 () Bool)

(assert (=> b!3997841 m!4579119))

(declare-fun m!4579121 () Bool)

(assert (=> b!3997842 m!4579121))

(assert (=> b!3997842 m!4578787))

(assert (=> b!3997633 d!1182776))

(declare-fun d!1182778 () Bool)

(assert (=> d!1182778 (isPrefix!3865 lt!1412368 (++!11180 lt!1412368 lt!1412363))))

(declare-fun lt!1412465 () Unit!61679)

(declare-fun choose!24101 (List!42882 List!42882) Unit!61679)

(assert (=> d!1182778 (= lt!1412465 (choose!24101 lt!1412368 lt!1412363))))

(assert (=> d!1182778 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 lt!1412363) lt!1412465)))

(declare-fun bs!588698 () Bool)

(assert (= bs!588698 d!1182778))

(assert (=> bs!588698 m!4578871))

(assert (=> bs!588698 m!4578871))

(declare-fun m!4579123 () Bool)

(assert (=> bs!588698 m!4579123))

(declare-fun m!4579125 () Bool)

(assert (=> bs!588698 m!4579125))

(assert (=> b!3997633 d!1182778))

(declare-fun d!1182780 () Bool)

(declare-fun c!691620 () Bool)

(assert (=> d!1182780 (= c!691620 ((_ is IntegerValue!21024) (value!213807 token!484)))))

(declare-fun e!2478683 () Bool)

(assert (=> d!1182780 (= (inv!21 (value!213807 token!484)) e!2478683)))

(declare-fun b!3997853 () Bool)

(declare-fun e!2478684 () Bool)

(assert (=> b!3997853 (= e!2478683 e!2478684)))

(declare-fun c!691621 () Bool)

(assert (=> b!3997853 (= c!691621 ((_ is IntegerValue!21025) (value!213807 token!484)))))

(declare-fun b!3997854 () Bool)

(declare-fun e!2478682 () Bool)

(declare-fun inv!15 (TokenValue!7008) Bool)

(assert (=> b!3997854 (= e!2478682 (inv!15 (value!213807 token!484)))))

(declare-fun b!3997855 () Bool)

(declare-fun inv!16 (TokenValue!7008) Bool)

(assert (=> b!3997855 (= e!2478683 (inv!16 (value!213807 token!484)))))

(declare-fun b!3997856 () Bool)

(declare-fun inv!17 (TokenValue!7008) Bool)

(assert (=> b!3997856 (= e!2478684 (inv!17 (value!213807 token!484)))))

(declare-fun b!3997857 () Bool)

(declare-fun res!1623791 () Bool)

(assert (=> b!3997857 (=> res!1623791 e!2478682)))

(assert (=> b!3997857 (= res!1623791 (not ((_ is IntegerValue!21026) (value!213807 token!484))))))

(assert (=> b!3997857 (= e!2478684 e!2478682)))

(assert (= (and d!1182780 c!691620) b!3997855))

(assert (= (and d!1182780 (not c!691620)) b!3997853))

(assert (= (and b!3997853 c!691621) b!3997856))

(assert (= (and b!3997853 (not c!691621)) b!3997857))

(assert (= (and b!3997857 (not res!1623791)) b!3997854))

(declare-fun m!4579127 () Bool)

(assert (=> b!3997854 m!4579127))

(declare-fun m!4579129 () Bool)

(assert (=> b!3997855 m!4579129))

(declare-fun m!4579131 () Bool)

(assert (=> b!3997856 m!4579131))

(assert (=> b!3997632 d!1182780))

(declare-fun d!1182782 () Bool)

(assert (=> d!1182782 (= (inv!57103 (tag!7638 (h!48180 rules!2999))) (= (mod (str.len (value!213806 (tag!7638 (h!48180 rules!2999)))) 2) 0))))

(assert (=> b!3997630 d!1182782))

(declare-fun d!1182784 () Bool)

(declare-fun res!1623794 () Bool)

(declare-fun e!2478687 () Bool)

(assert (=> d!1182784 (=> (not res!1623794) (not e!2478687))))

(declare-fun semiInverseModEq!2907 (Int Int) Bool)

(assert (=> d!1182784 (= res!1623794 (semiInverseModEq!2907 (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toValue!9266 (transformation!6778 (h!48180 rules!2999)))))))

(assert (=> d!1182784 (= (inv!57106 (transformation!6778 (h!48180 rules!2999))) e!2478687)))

(declare-fun b!3997860 () Bool)

(declare-fun equivClasses!2806 (Int Int) Bool)

(assert (=> b!3997860 (= e!2478687 (equivClasses!2806 (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toValue!9266 (transformation!6778 (h!48180 rules!2999)))))))

(assert (= (and d!1182784 res!1623794) b!3997860))

(declare-fun m!4579133 () Bool)

(assert (=> d!1182784 m!4579133))

(declare-fun m!4579135 () Bool)

(assert (=> b!3997860 m!4579135))

(assert (=> b!3997630 d!1182784))

(declare-fun b!3997872 () Bool)

(declare-fun e!2478693 () Int)

(assert (=> b!3997872 (= e!2478693 (- 1))))

(declare-fun b!3997870 () Bool)

(declare-fun e!2478694 () Int)

(assert (=> b!3997870 (= e!2478694 e!2478693)))

(declare-fun c!691627 () Bool)

(assert (=> b!3997870 (= c!691627 (and ((_ is Cons!42760) rules!2999) (not (= (h!48180 rules!2999) (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(declare-fun d!1182786 () Bool)

(declare-fun lt!1412468 () Int)

(assert (=> d!1182786 (>= lt!1412468 0)))

(assert (=> d!1182786 (= lt!1412468 e!2478694)))

(declare-fun c!691626 () Bool)

(assert (=> d!1182786 (= c!691626 (and ((_ is Cons!42760) rules!2999) (= (h!48180 rules!2999) (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(assert (=> d!1182786 (contains!8509 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182786 (= (getIndex!548 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412468)))

(declare-fun b!3997871 () Bool)

(assert (=> b!3997871 (= e!2478693 (+ 1 (getIndex!548 (t!332067 rules!2999) (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun b!3997869 () Bool)

(assert (=> b!3997869 (= e!2478694 0)))

(assert (= (and d!1182786 c!691626) b!3997869))

(assert (= (and d!1182786 (not c!691626)) b!3997870))

(assert (= (and b!3997870 c!691627) b!3997871))

(assert (= (and b!3997870 (not c!691627)) b!3997872))

(declare-fun m!4579137 () Bool)

(assert (=> d!1182786 m!4579137))

(declare-fun m!4579139 () Bool)

(assert (=> b!3997871 m!4579139))

(assert (=> b!3997651 d!1182786))

(declare-fun b!3997876 () Bool)

(declare-fun e!2478695 () Int)

(assert (=> b!3997876 (= e!2478695 (- 1))))

(declare-fun b!3997874 () Bool)

(declare-fun e!2478696 () Int)

(assert (=> b!3997874 (= e!2478696 e!2478695)))

(declare-fun c!691629 () Bool)

(assert (=> b!3997874 (= c!691629 (and ((_ is Cons!42760) rules!2999) (not (= (h!48180 rules!2999) (rule!9806 token!484)))))))

(declare-fun d!1182788 () Bool)

(declare-fun lt!1412469 () Int)

(assert (=> d!1182788 (>= lt!1412469 0)))

(assert (=> d!1182788 (= lt!1412469 e!2478696)))

(declare-fun c!691628 () Bool)

(assert (=> d!1182788 (= c!691628 (and ((_ is Cons!42760) rules!2999) (= (h!48180 rules!2999) (rule!9806 token!484))))))

(assert (=> d!1182788 (contains!8509 rules!2999 (rule!9806 token!484))))

(assert (=> d!1182788 (= (getIndex!548 rules!2999 (rule!9806 token!484)) lt!1412469)))

(declare-fun b!3997875 () Bool)

(assert (=> b!3997875 (= e!2478695 (+ 1 (getIndex!548 (t!332067 rules!2999) (rule!9806 token!484))))))

(declare-fun b!3997873 () Bool)

(assert (=> b!3997873 (= e!2478696 0)))

(assert (= (and d!1182788 c!691628) b!3997873))

(assert (= (and d!1182788 (not c!691628)) b!3997874))

(assert (= (and b!3997874 c!691629) b!3997875))

(assert (= (and b!3997874 (not c!691629)) b!3997876))

(declare-fun m!4579141 () Bool)

(assert (=> d!1182788 m!4579141))

(declare-fun m!4579143 () Bool)

(assert (=> b!3997875 m!4579143))

(assert (=> b!3997651 d!1182788))

(declare-fun d!1182790 () Bool)

(assert (=> d!1182790 (= lt!1412396 lt!1412368)))

(declare-fun lt!1412472 () Unit!61679)

(declare-fun choose!24104 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> d!1182790 (= lt!1412472 (choose!24104 lt!1412396 lt!1412368 lt!1412358))))

(assert (=> d!1182790 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1182790 (= (lemmaIsPrefixSameLengthThenSameList!887 lt!1412396 lt!1412368 lt!1412358) lt!1412472)))

(declare-fun bs!588699 () Bool)

(assert (= bs!588699 d!1182790))

(declare-fun m!4579145 () Bool)

(assert (=> bs!588699 m!4579145))

(assert (=> bs!588699 m!4578859))

(assert (=> b!3997651 d!1182790))

(declare-fun d!1182792 () Bool)

(assert (=> d!1182792 (= (_2!24107 (v!39551 lt!1412381)) newSuffixResult!27)))

(declare-fun lt!1412473 () Unit!61679)

(assert (=> d!1182792 (= lt!1412473 (choose!24100 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412368 newSuffixResult!27 lt!1412358))))

(assert (=> d!1182792 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1182792 (= (lemmaSamePrefixThenSameSuffix!2052 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412368 newSuffixResult!27 lt!1412358) lt!1412473)))

(declare-fun bs!588700 () Bool)

(assert (= bs!588700 d!1182792))

(declare-fun m!4579147 () Bool)

(assert (=> bs!588700 m!4579147))

(assert (=> bs!588700 m!4578859))

(assert (=> b!3997651 d!1182792))

(declare-fun d!1182794 () Bool)

(assert (=> d!1182794 (= (rule!9806 (_1!24107 (v!39551 lt!1412381))) (rule!9806 token!484))))

(declare-fun lt!1412476 () Unit!61679)

(declare-fun choose!24105 (List!42884 Rule!13356 Rule!13356) Unit!61679)

(assert (=> d!1182794 (= lt!1412476 (choose!24105 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) (rule!9806 token!484)))))

(assert (=> d!1182794 (contains!8509 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182794 (= (lemmaSameIndexThenSameElement!254 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) (rule!9806 token!484)) lt!1412476)))

(declare-fun bs!588701 () Bool)

(assert (= bs!588701 d!1182794))

(declare-fun m!4579149 () Bool)

(assert (=> bs!588701 m!4579149))

(assert (=> bs!588701 m!4579137))

(assert (=> b!3997651 d!1182794))

(declare-fun d!1182796 () Bool)

(assert (=> d!1182796 (not (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412368))))

(declare-fun lt!1412479 () Unit!61679)

(declare-fun choose!24106 (LexerInterface!6367 List!42884 Rule!13356 List!42882 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> d!1182796 (= lt!1412479 (choose!24106 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 lt!1412368 (rule!9806 token!484)))))

(assert (=> d!1182796 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1182796 (= (lemmaMaxPrefixOutputsMaxPrefix!432 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 lt!1412368 (rule!9806 token!484)) lt!1412479)))

(declare-fun bs!588702 () Bool)

(assert (= bs!588702 d!1182796))

(assert (=> bs!588702 m!4578963))

(declare-fun m!4579151 () Bool)

(assert (=> bs!588702 m!4579151))

(assert (=> bs!588702 m!4578859))

(assert (=> b!3997629 d!1182796))

(declare-fun lt!1412480 () List!42882)

(declare-fun b!3997880 () Bool)

(declare-fun e!2478697 () Bool)

(assert (=> b!3997880 (= e!2478697 (or (not (= lt!1412363 Nil!42758)) (= lt!1412480 lt!1412368)))))

(declare-fun b!3997877 () Bool)

(declare-fun e!2478698 () List!42882)

(assert (=> b!3997877 (= e!2478698 lt!1412363)))

(declare-fun d!1182798 () Bool)

(assert (=> d!1182798 e!2478697))

(declare-fun res!1623796 () Bool)

(assert (=> d!1182798 (=> (not res!1623796) (not e!2478697))))

(assert (=> d!1182798 (= res!1623796 (= (content!6487 lt!1412480) ((_ map or) (content!6487 lt!1412368) (content!6487 lt!1412363))))))

(assert (=> d!1182798 (= lt!1412480 e!2478698)))

(declare-fun c!691630 () Bool)

(assert (=> d!1182798 (= c!691630 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182798 (= (++!11180 lt!1412368 lt!1412363) lt!1412480)))

(declare-fun b!3997879 () Bool)

(declare-fun res!1623795 () Bool)

(assert (=> b!3997879 (=> (not res!1623795) (not e!2478697))))

(assert (=> b!3997879 (= res!1623795 (= (size!31976 lt!1412480) (+ (size!31976 lt!1412368) (size!31976 lt!1412363))))))

(declare-fun b!3997878 () Bool)

(assert (=> b!3997878 (= e!2478698 (Cons!42758 (h!48178 lt!1412368) (++!11180 (t!332065 lt!1412368) lt!1412363)))))

(assert (= (and d!1182798 c!691630) b!3997877))

(assert (= (and d!1182798 (not c!691630)) b!3997878))

(assert (= (and d!1182798 res!1623796) b!3997879))

(assert (= (and b!3997879 res!1623795) b!3997880))

(declare-fun m!4579153 () Bool)

(assert (=> d!1182798 m!4579153))

(declare-fun m!4579155 () Bool)

(assert (=> d!1182798 m!4579155))

(declare-fun m!4579157 () Bool)

(assert (=> d!1182798 m!4579157))

(declare-fun m!4579159 () Bool)

(assert (=> b!3997879 m!4579159))

(assert (=> b!3997879 m!4578787))

(declare-fun m!4579161 () Bool)

(assert (=> b!3997879 m!4579161))

(declare-fun m!4579163 () Bool)

(assert (=> b!3997878 m!4579163))

(assert (=> b!3997650 d!1182798))

(declare-fun d!1182800 () Bool)

(declare-fun lt!1412481 () List!42882)

(assert (=> d!1182800 (= (++!11180 lt!1412368 lt!1412481) lt!1412394)))

(declare-fun e!2478699 () List!42882)

(assert (=> d!1182800 (= lt!1412481 e!2478699)))

(declare-fun c!691631 () Bool)

(assert (=> d!1182800 (= c!691631 ((_ is Cons!42758) lt!1412368))))

(assert (=> d!1182800 (>= (size!31976 lt!1412394) (size!31976 lt!1412368))))

(assert (=> d!1182800 (= (getSuffix!2296 lt!1412394 lt!1412368) lt!1412481)))

(declare-fun b!3997881 () Bool)

(assert (=> b!3997881 (= e!2478699 (getSuffix!2296 (tail!6233 lt!1412394) (t!332065 lt!1412368)))))

(declare-fun b!3997882 () Bool)

(assert (=> b!3997882 (= e!2478699 lt!1412394)))

(assert (= (and d!1182800 c!691631) b!3997881))

(assert (= (and d!1182800 (not c!691631)) b!3997882))

(declare-fun m!4579165 () Bool)

(assert (=> d!1182800 m!4579165))

(declare-fun m!4579167 () Bool)

(assert (=> d!1182800 m!4579167))

(assert (=> d!1182800 m!4578787))

(declare-fun m!4579169 () Bool)

(assert (=> b!3997881 m!4579169))

(assert (=> b!3997881 m!4579169))

(declare-fun m!4579171 () Bool)

(assert (=> b!3997881 m!4579171))

(assert (=> b!3997650 d!1182800))

(declare-fun b!3997884 () Bool)

(declare-fun res!1623798 () Bool)

(declare-fun e!2478701 () Bool)

(assert (=> b!3997884 (=> (not res!1623798) (not e!2478701))))

(assert (=> b!3997884 (= res!1623798 (= (head!8501 lt!1412394) (head!8501 lt!1412394)))))

(declare-fun b!3997883 () Bool)

(declare-fun e!2478700 () Bool)

(assert (=> b!3997883 (= e!2478700 e!2478701)))

(declare-fun res!1623800 () Bool)

(assert (=> b!3997883 (=> (not res!1623800) (not e!2478701))))

(assert (=> b!3997883 (= res!1623800 (not ((_ is Nil!42758) lt!1412394)))))

(declare-fun d!1182802 () Bool)

(declare-fun e!2478702 () Bool)

(assert (=> d!1182802 e!2478702))

(declare-fun res!1623799 () Bool)

(assert (=> d!1182802 (=> res!1623799 e!2478702)))

(declare-fun lt!1412482 () Bool)

(assert (=> d!1182802 (= res!1623799 (not lt!1412482))))

(assert (=> d!1182802 (= lt!1412482 e!2478700)))

(declare-fun res!1623797 () Bool)

(assert (=> d!1182802 (=> res!1623797 e!2478700)))

(assert (=> d!1182802 (= res!1623797 ((_ is Nil!42758) lt!1412394))))

(assert (=> d!1182802 (= (isPrefix!3865 lt!1412394 lt!1412394) lt!1412482)))

(declare-fun b!3997885 () Bool)

(assert (=> b!3997885 (= e!2478701 (isPrefix!3865 (tail!6233 lt!1412394) (tail!6233 lt!1412394)))))

(declare-fun b!3997886 () Bool)

(assert (=> b!3997886 (= e!2478702 (>= (size!31976 lt!1412394) (size!31976 lt!1412394)))))

(assert (= (and d!1182802 (not res!1623797)) b!3997883))

(assert (= (and b!3997883 res!1623800) b!3997884))

(assert (= (and b!3997884 res!1623798) b!3997885))

(assert (= (and d!1182802 (not res!1623799)) b!3997886))

(declare-fun m!4579173 () Bool)

(assert (=> b!3997884 m!4579173))

(assert (=> b!3997884 m!4579173))

(assert (=> b!3997885 m!4579169))

(assert (=> b!3997885 m!4579169))

(assert (=> b!3997885 m!4579169))

(assert (=> b!3997885 m!4579169))

(declare-fun m!4579175 () Bool)

(assert (=> b!3997885 m!4579175))

(assert (=> b!3997886 m!4579167))

(assert (=> b!3997886 m!4579167))

(assert (=> b!3997650 d!1182802))

(declare-fun d!1182804 () Bool)

(assert (=> d!1182804 (isPrefix!3865 lt!1412394 lt!1412394)))

(declare-fun lt!1412485 () Unit!61679)

(declare-fun choose!24108 (List!42882 List!42882) Unit!61679)

(assert (=> d!1182804 (= lt!1412485 (choose!24108 lt!1412394 lt!1412394))))

(assert (=> d!1182804 (= (lemmaIsPrefixRefl!2457 lt!1412394 lt!1412394) lt!1412485)))

(declare-fun bs!588703 () Bool)

(assert (= bs!588703 d!1182804))

(assert (=> bs!588703 m!4578875))

(declare-fun m!4579177 () Bool)

(assert (=> bs!588703 m!4579177))

(assert (=> b!3997650 d!1182804))

(declare-fun b!3997888 () Bool)

(declare-fun res!1623802 () Bool)

(declare-fun e!2478704 () Bool)

(assert (=> b!3997888 (=> (not res!1623802) (not e!2478704))))

(assert (=> b!3997888 (= res!1623802 (= (head!8501 lt!1412396) (head!8501 lt!1412358)))))

(declare-fun b!3997887 () Bool)

(declare-fun e!2478703 () Bool)

(assert (=> b!3997887 (= e!2478703 e!2478704)))

(declare-fun res!1623804 () Bool)

(assert (=> b!3997887 (=> (not res!1623804) (not e!2478704))))

(assert (=> b!3997887 (= res!1623804 (not ((_ is Nil!42758) lt!1412358)))))

(declare-fun d!1182806 () Bool)

(declare-fun e!2478705 () Bool)

(assert (=> d!1182806 e!2478705))

(declare-fun res!1623803 () Bool)

(assert (=> d!1182806 (=> res!1623803 e!2478705)))

(declare-fun lt!1412486 () Bool)

(assert (=> d!1182806 (= res!1623803 (not lt!1412486))))

(assert (=> d!1182806 (= lt!1412486 e!2478703)))

(declare-fun res!1623801 () Bool)

(assert (=> d!1182806 (=> res!1623801 e!2478703)))

(assert (=> d!1182806 (= res!1623801 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182806 (= (isPrefix!3865 lt!1412396 lt!1412358) lt!1412486)))

(declare-fun b!3997889 () Bool)

(assert (=> b!3997889 (= e!2478704 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 lt!1412358)))))

(declare-fun b!3997890 () Bool)

(assert (=> b!3997890 (= e!2478705 (>= (size!31976 lt!1412358) (size!31976 lt!1412396)))))

(assert (= (and d!1182806 (not res!1623801)) b!3997887))

(assert (= (and b!3997887 res!1623804) b!3997888))

(assert (= (and b!3997888 res!1623802) b!3997889))

(assert (= (and d!1182806 (not res!1623803)) b!3997890))

(declare-fun m!4579179 () Bool)

(assert (=> b!3997888 m!4579179))

(declare-fun m!4579181 () Bool)

(assert (=> b!3997888 m!4579181))

(declare-fun m!4579183 () Bool)

(assert (=> b!3997889 m!4579183))

(assert (=> b!3997889 m!4579075))

(assert (=> b!3997889 m!4579183))

(assert (=> b!3997889 m!4579075))

(declare-fun m!4579185 () Bool)

(assert (=> b!3997889 m!4579185))

(assert (=> b!3997890 m!4579073))

(assert (=> b!3997890 m!4578923))

(assert (=> b!3997670 d!1182806))

(declare-fun b!3997891 () Bool)

(declare-fun res!1623808 () Bool)

(declare-fun e!2478706 () Bool)

(assert (=> b!3997891 (=> (not res!1623808) (not e!2478706))))

(declare-fun lt!1412487 () Option!9192)

(assert (=> b!3997891 (= res!1623808 (< (size!31976 (_2!24107 (get!14065 lt!1412487))) (size!31976 lt!1412394)))))

(declare-fun b!3997892 () Bool)

(declare-fun res!1623809 () Bool)

(assert (=> b!3997892 (=> (not res!1623809) (not e!2478706))))

(assert (=> b!3997892 (= res!1623809 (= (value!213807 (_1!24107 (get!14065 lt!1412487))) (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (get!14065 lt!1412487)))) (seqFromList!5017 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412487)))))))))

(declare-fun b!3997893 () Bool)

(declare-fun res!1623807 () Bool)

(assert (=> b!3997893 (=> (not res!1623807) (not e!2478706))))

(assert (=> b!3997893 (= res!1623807 (= (++!11180 (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412487)))) (_2!24107 (get!14065 lt!1412487))) lt!1412394))))

(declare-fun b!3997894 () Bool)

(declare-fun res!1623810 () Bool)

(assert (=> b!3997894 (=> (not res!1623810) (not e!2478706))))

(assert (=> b!3997894 (= res!1623810 (= (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412487)))) (originalCharacters!7378 (_1!24107 (get!14065 lt!1412487)))))))

(declare-fun b!3997895 () Bool)

(declare-fun res!1623811 () Bool)

(assert (=> b!3997895 (=> (not res!1623811) (not e!2478706))))

(assert (=> b!3997895 (= res!1623811 (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (get!14065 lt!1412487)))) (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412487))))))))

(declare-fun d!1182808 () Bool)

(declare-fun e!2478708 () Bool)

(assert (=> d!1182808 e!2478708))

(declare-fun res!1623805 () Bool)

(assert (=> d!1182808 (=> res!1623805 e!2478708)))

(assert (=> d!1182808 (= res!1623805 (isEmpty!25557 lt!1412487))))

(declare-fun e!2478707 () Option!9192)

(assert (=> d!1182808 (= lt!1412487 e!2478707)))

(declare-fun c!691632 () Bool)

(assert (=> d!1182808 (= c!691632 (and ((_ is Cons!42760) rules!2999) ((_ is Nil!42760) (t!332067 rules!2999))))))

(declare-fun lt!1412489 () Unit!61679)

(declare-fun lt!1412488 () Unit!61679)

(assert (=> d!1182808 (= lt!1412489 lt!1412488)))

(assert (=> d!1182808 (isPrefix!3865 lt!1412394 lt!1412394)))

(assert (=> d!1182808 (= lt!1412488 (lemmaIsPrefixRefl!2457 lt!1412394 lt!1412394))))

(assert (=> d!1182808 (rulesValidInductive!2467 thiss!21717 rules!2999)))

(assert (=> d!1182808 (= (maxPrefix!3665 thiss!21717 rules!2999 lt!1412394) lt!1412487)))

(declare-fun bm!285941 () Bool)

(declare-fun call!285946 () Option!9192)

(assert (=> bm!285941 (= call!285946 (maxPrefixOneRule!2699 thiss!21717 (h!48180 rules!2999) lt!1412394))))

(declare-fun b!3997896 () Bool)

(assert (=> b!3997896 (= e!2478706 (contains!8509 rules!2999 (rule!9806 (_1!24107 (get!14065 lt!1412487)))))))

(declare-fun b!3997897 () Bool)

(assert (=> b!3997897 (= e!2478707 call!285946)))

(declare-fun b!3997898 () Bool)

(assert (=> b!3997898 (= e!2478708 e!2478706)))

(declare-fun res!1623806 () Bool)

(assert (=> b!3997898 (=> (not res!1623806) (not e!2478706))))

(assert (=> b!3997898 (= res!1623806 (isDefined!7052 lt!1412487))))

(declare-fun b!3997899 () Bool)

(declare-fun lt!1412490 () Option!9192)

(declare-fun lt!1412491 () Option!9192)

(assert (=> b!3997899 (= e!2478707 (ite (and ((_ is None!9191) lt!1412490) ((_ is None!9191) lt!1412491)) None!9191 (ite ((_ is None!9191) lt!1412491) lt!1412490 (ite ((_ is None!9191) lt!1412490) lt!1412491 (ite (>= (size!31975 (_1!24107 (v!39551 lt!1412490))) (size!31975 (_1!24107 (v!39551 lt!1412491)))) lt!1412490 lt!1412491)))))))

(assert (=> b!3997899 (= lt!1412490 call!285946)))

(assert (=> b!3997899 (= lt!1412491 (maxPrefix!3665 thiss!21717 (t!332067 rules!2999) lt!1412394))))

(assert (= (and d!1182808 c!691632) b!3997897))

(assert (= (and d!1182808 (not c!691632)) b!3997899))

(assert (= (or b!3997897 b!3997899) bm!285941))

(assert (= (and d!1182808 (not res!1623805)) b!3997898))

(assert (= (and b!3997898 res!1623806) b!3997894))

(assert (= (and b!3997894 res!1623810) b!3997891))

(assert (= (and b!3997891 res!1623808) b!3997893))

(assert (= (and b!3997893 res!1623807) b!3997892))

(assert (= (and b!3997892 res!1623809) b!3997895))

(assert (= (and b!3997895 res!1623811) b!3997896))

(declare-fun m!4579187 () Bool)

(assert (=> b!3997895 m!4579187))

(declare-fun m!4579189 () Bool)

(assert (=> b!3997895 m!4579189))

(assert (=> b!3997895 m!4579189))

(declare-fun m!4579191 () Bool)

(assert (=> b!3997895 m!4579191))

(assert (=> b!3997895 m!4579191))

(declare-fun m!4579193 () Bool)

(assert (=> b!3997895 m!4579193))

(assert (=> b!3997891 m!4579187))

(declare-fun m!4579195 () Bool)

(assert (=> b!3997891 m!4579195))

(assert (=> b!3997891 m!4579167))

(assert (=> b!3997894 m!4579187))

(assert (=> b!3997894 m!4579189))

(assert (=> b!3997894 m!4579189))

(assert (=> b!3997894 m!4579191))

(assert (=> b!3997896 m!4579187))

(declare-fun m!4579197 () Bool)

(assert (=> b!3997896 m!4579197))

(declare-fun m!4579199 () Bool)

(assert (=> b!3997899 m!4579199))

(declare-fun m!4579201 () Bool)

(assert (=> bm!285941 m!4579201))

(assert (=> b!3997893 m!4579187))

(assert (=> b!3997893 m!4579189))

(assert (=> b!3997893 m!4579189))

(assert (=> b!3997893 m!4579191))

(assert (=> b!3997893 m!4579191))

(declare-fun m!4579203 () Bool)

(assert (=> b!3997893 m!4579203))

(assert (=> b!3997892 m!4579187))

(declare-fun m!4579205 () Bool)

(assert (=> b!3997892 m!4579205))

(assert (=> b!3997892 m!4579205))

(declare-fun m!4579207 () Bool)

(assert (=> b!3997892 m!4579207))

(declare-fun m!4579209 () Bool)

(assert (=> d!1182808 m!4579209))

(assert (=> d!1182808 m!4578875))

(assert (=> d!1182808 m!4578877))

(assert (=> d!1182808 m!4578819))

(declare-fun m!4579211 () Bool)

(assert (=> b!3997898 m!4579211))

(assert (=> b!3997627 d!1182808))

(declare-fun lt!1412492 () List!42882)

(declare-fun e!2478709 () Bool)

(declare-fun b!3997903 () Bool)

(assert (=> b!3997903 (= e!2478709 (or (not (= suffix!1299 Nil!42758)) (= lt!1412492 prefix!494)))))

(declare-fun b!3997900 () Bool)

(declare-fun e!2478710 () List!42882)

(assert (=> b!3997900 (= e!2478710 suffix!1299)))

(declare-fun d!1182810 () Bool)

(assert (=> d!1182810 e!2478709))

(declare-fun res!1623813 () Bool)

(assert (=> d!1182810 (=> (not res!1623813) (not e!2478709))))

(assert (=> d!1182810 (= res!1623813 (= (content!6487 lt!1412492) ((_ map or) (content!6487 prefix!494) (content!6487 suffix!1299))))))

(assert (=> d!1182810 (= lt!1412492 e!2478710)))

(declare-fun c!691633 () Bool)

(assert (=> d!1182810 (= c!691633 ((_ is Nil!42758) prefix!494))))

(assert (=> d!1182810 (= (++!11180 prefix!494 suffix!1299) lt!1412492)))

(declare-fun b!3997902 () Bool)

(declare-fun res!1623812 () Bool)

(assert (=> b!3997902 (=> (not res!1623812) (not e!2478709))))

(assert (=> b!3997902 (= res!1623812 (= (size!31976 lt!1412492) (+ (size!31976 prefix!494) (size!31976 suffix!1299))))))

(declare-fun b!3997901 () Bool)

(assert (=> b!3997901 (= e!2478710 (Cons!42758 (h!48178 prefix!494) (++!11180 (t!332065 prefix!494) suffix!1299)))))

(assert (= (and d!1182810 c!691633) b!3997900))

(assert (= (and d!1182810 (not c!691633)) b!3997901))

(assert (= (and d!1182810 res!1623813) b!3997902))

(assert (= (and b!3997902 res!1623812) b!3997903))

(declare-fun m!4579213 () Bool)

(assert (=> d!1182810 m!4579213))

(declare-fun m!4579215 () Bool)

(assert (=> d!1182810 m!4579215))

(declare-fun m!4579217 () Bool)

(assert (=> d!1182810 m!4579217))

(declare-fun m!4579219 () Bool)

(assert (=> b!3997902 m!4579219))

(assert (=> b!3997902 m!4578789))

(assert (=> b!3997902 m!4578841))

(declare-fun m!4579221 () Bool)

(assert (=> b!3997901 m!4579221))

(assert (=> b!3997627 d!1182810))

(declare-fun d!1182812 () Bool)

(assert (=> d!1182812 (not (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412396))))

(declare-fun lt!1412493 () Unit!61679)

(assert (=> d!1182812 (= lt!1412493 (choose!24106 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 lt!1412396 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1182812 (isPrefix!3865 lt!1412368 lt!1412394)))

(assert (=> d!1182812 (= (lemmaMaxPrefixOutputsMaxPrefix!432 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 lt!1412396 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412493)))

(declare-fun bs!588704 () Bool)

(assert (= bs!588704 d!1182812))

(assert (=> bs!588704 m!4578945))

(declare-fun m!4579223 () Bool)

(assert (=> bs!588704 m!4579223))

(assert (=> bs!588704 m!4578867))

(assert (=> b!3997669 d!1182812))

(declare-fun b!3997932 () Bool)

(declare-fun e!2478725 () Bool)

(declare-fun nullable!4100 (Regex!11683) Bool)

(assert (=> b!3997932 (= e!2478725 (nullable!4100 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun b!3997933 () Bool)

(declare-fun e!2478727 () Bool)

(declare-fun lt!1412496 () Bool)

(assert (=> b!3997933 (= e!2478727 (not lt!1412496))))

(declare-fun b!3997934 () Bool)

(declare-fun e!2478730 () Bool)

(assert (=> b!3997934 (= e!2478730 e!2478727)))

(declare-fun c!691641 () Bool)

(assert (=> b!3997934 (= c!691641 ((_ is EmptyLang!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun bm!285944 () Bool)

(declare-fun call!285949 () Bool)

(declare-fun isEmpty!25558 (List!42882) Bool)

(assert (=> bm!285944 (= call!285949 (isEmpty!25558 lt!1412396))))

(declare-fun b!3997935 () Bool)

(declare-fun e!2478728 () Bool)

(assert (=> b!3997935 (= e!2478728 (= (head!8501 lt!1412396) (c!691583 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(declare-fun b!3997936 () Bool)

(declare-fun res!1623831 () Bool)

(declare-fun e!2478726 () Bool)

(assert (=> b!3997936 (=> res!1623831 e!2478726)))

(assert (=> b!3997936 (= res!1623831 (not ((_ is ElementMatch!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(assert (=> b!3997936 (= e!2478727 e!2478726)))

(declare-fun d!1182814 () Bool)

(assert (=> d!1182814 e!2478730))

(declare-fun c!691642 () Bool)

(assert (=> d!1182814 (= c!691642 ((_ is EmptyExpr!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(assert (=> d!1182814 (= lt!1412496 e!2478725)))

(declare-fun c!691640 () Bool)

(assert (=> d!1182814 (= c!691640 (isEmpty!25558 lt!1412396))))

(declare-fun validRegex!5300 (Regex!11683) Bool)

(assert (=> d!1182814 (validRegex!5300 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1182814 (= (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412396) lt!1412496)))

(declare-fun b!3997937 () Bool)

(declare-fun derivativeStep!3511 (Regex!11683 C!23552) Regex!11683)

(assert (=> b!3997937 (= e!2478725 (matchR!5660 (derivativeStep!3511 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (head!8501 lt!1412396)) (tail!6233 lt!1412396)))))

(declare-fun b!3997938 () Bool)

(declare-fun res!1623836 () Bool)

(assert (=> b!3997938 (=> (not res!1623836) (not e!2478728))))

(assert (=> b!3997938 (= res!1623836 (not call!285949))))

(declare-fun b!3997939 () Bool)

(declare-fun res!1623834 () Bool)

(assert (=> b!3997939 (=> res!1623834 e!2478726)))

(assert (=> b!3997939 (= res!1623834 e!2478728)))

(declare-fun res!1623832 () Bool)

(assert (=> b!3997939 (=> (not res!1623832) (not e!2478728))))

(assert (=> b!3997939 (= res!1623832 lt!1412496)))

(declare-fun b!3997940 () Bool)

(declare-fun e!2478731 () Bool)

(assert (=> b!3997940 (= e!2478726 e!2478731)))

(declare-fun res!1623833 () Bool)

(assert (=> b!3997940 (=> (not res!1623833) (not e!2478731))))

(assert (=> b!3997940 (= res!1623833 (not lt!1412496))))

(declare-fun b!3997941 () Bool)

(declare-fun res!1623835 () Bool)

(declare-fun e!2478729 () Bool)

(assert (=> b!3997941 (=> res!1623835 e!2478729)))

(assert (=> b!3997941 (= res!1623835 (not (isEmpty!25558 (tail!6233 lt!1412396))))))

(declare-fun b!3997942 () Bool)

(assert (=> b!3997942 (= e!2478729 (not (= (head!8501 lt!1412396) (c!691583 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))))

(declare-fun b!3997943 () Bool)

(declare-fun res!1623837 () Bool)

(assert (=> b!3997943 (=> (not res!1623837) (not e!2478728))))

(assert (=> b!3997943 (= res!1623837 (isEmpty!25558 (tail!6233 lt!1412396)))))

(declare-fun b!3997944 () Bool)

(assert (=> b!3997944 (= e!2478731 e!2478729)))

(declare-fun res!1623830 () Bool)

(assert (=> b!3997944 (=> res!1623830 e!2478729)))

(assert (=> b!3997944 (= res!1623830 call!285949)))

(declare-fun b!3997945 () Bool)

(assert (=> b!3997945 (= e!2478730 (= lt!1412496 call!285949))))

(assert (= (and d!1182814 c!691640) b!3997932))

(assert (= (and d!1182814 (not c!691640)) b!3997937))

(assert (= (and d!1182814 c!691642) b!3997945))

(assert (= (and d!1182814 (not c!691642)) b!3997934))

(assert (= (and b!3997934 c!691641) b!3997933))

(assert (= (and b!3997934 (not c!691641)) b!3997936))

(assert (= (and b!3997936 (not res!1623831)) b!3997939))

(assert (= (and b!3997939 res!1623832) b!3997938))

(assert (= (and b!3997938 res!1623836) b!3997943))

(assert (= (and b!3997943 res!1623837) b!3997935))

(assert (= (and b!3997939 (not res!1623834)) b!3997940))

(assert (= (and b!3997940 res!1623833) b!3997944))

(assert (= (and b!3997944 (not res!1623830)) b!3997941))

(assert (= (and b!3997941 (not res!1623835)) b!3997942))

(assert (= (or b!3997945 b!3997944 b!3997938) bm!285944))

(assert (=> b!3997937 m!4579179))

(assert (=> b!3997937 m!4579179))

(declare-fun m!4579225 () Bool)

(assert (=> b!3997937 m!4579225))

(assert (=> b!3997937 m!4579183))

(assert (=> b!3997937 m!4579225))

(assert (=> b!3997937 m!4579183))

(declare-fun m!4579227 () Bool)

(assert (=> b!3997937 m!4579227))

(declare-fun m!4579229 () Bool)

(assert (=> bm!285944 m!4579229))

(assert (=> b!3997943 m!4579183))

(assert (=> b!3997943 m!4579183))

(declare-fun m!4579231 () Bool)

(assert (=> b!3997943 m!4579231))

(assert (=> b!3997941 m!4579183))

(assert (=> b!3997941 m!4579183))

(assert (=> b!3997941 m!4579231))

(assert (=> b!3997942 m!4579179))

(declare-fun m!4579233 () Bool)

(assert (=> b!3997932 m!4579233))

(assert (=> d!1182814 m!4579229))

(declare-fun m!4579235 () Bool)

(assert (=> d!1182814 m!4579235))

(assert (=> b!3997935 m!4579179))

(assert (=> b!3997669 d!1182814))

(declare-fun lt!1412497 () List!42882)

(declare-fun b!3997949 () Bool)

(declare-fun e!2478732 () Bool)

(assert (=> b!3997949 (= e!2478732 (or (not (= suffixResult!105 Nil!42758)) (= lt!1412497 lt!1412368)))))

(declare-fun b!3997946 () Bool)

(declare-fun e!2478733 () List!42882)

(assert (=> b!3997946 (= e!2478733 suffixResult!105)))

(declare-fun d!1182816 () Bool)

(assert (=> d!1182816 e!2478732))

(declare-fun res!1623839 () Bool)

(assert (=> d!1182816 (=> (not res!1623839) (not e!2478732))))

(assert (=> d!1182816 (= res!1623839 (= (content!6487 lt!1412497) ((_ map or) (content!6487 lt!1412368) (content!6487 suffixResult!105))))))

(assert (=> d!1182816 (= lt!1412497 e!2478733)))

(declare-fun c!691643 () Bool)

(assert (=> d!1182816 (= c!691643 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182816 (= (++!11180 lt!1412368 suffixResult!105) lt!1412497)))

(declare-fun b!3997948 () Bool)

(declare-fun res!1623838 () Bool)

(assert (=> b!3997948 (=> (not res!1623838) (not e!2478732))))

(assert (=> b!3997948 (= res!1623838 (= (size!31976 lt!1412497) (+ (size!31976 lt!1412368) (size!31976 suffixResult!105))))))

(declare-fun b!3997947 () Bool)

(assert (=> b!3997947 (= e!2478733 (Cons!42758 (h!48178 lt!1412368) (++!11180 (t!332065 lt!1412368) suffixResult!105)))))

(assert (= (and d!1182816 c!691643) b!3997946))

(assert (= (and d!1182816 (not c!691643)) b!3997947))

(assert (= (and d!1182816 res!1623839) b!3997948))

(assert (= (and b!3997948 res!1623838) b!3997949))

(declare-fun m!4579237 () Bool)

(assert (=> d!1182816 m!4579237))

(assert (=> d!1182816 m!4579155))

(declare-fun m!4579239 () Bool)

(assert (=> d!1182816 m!4579239))

(declare-fun m!4579241 () Bool)

(assert (=> b!3997948 m!4579241))

(assert (=> b!3997948 m!4578787))

(declare-fun m!4579243 () Bool)

(assert (=> b!3997948 m!4579243))

(declare-fun m!4579245 () Bool)

(assert (=> b!3997947 m!4579245))

(assert (=> b!3997626 d!1182816))

(declare-fun d!1182818 () Bool)

(declare-fun e!2478736 () Bool)

(assert (=> d!1182818 e!2478736))

(declare-fun res!1623842 () Bool)

(assert (=> d!1182818 (=> (not res!1623842) (not e!2478736))))

(assert (=> d!1182818 (= res!1623842 (semiInverseModEq!2907 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))))))

(declare-fun Unit!61691 () Unit!61679)

(assert (=> d!1182818 (= (lemmaInv!993 (transformation!6778 (rule!9806 token!484))) Unit!61691)))

(declare-fun b!3997952 () Bool)

(assert (=> b!3997952 (= e!2478736 (equivClasses!2806 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))))))

(assert (= (and d!1182818 res!1623842) b!3997952))

(declare-fun m!4579247 () Bool)

(assert (=> d!1182818 m!4579247))

(declare-fun m!4579249 () Bool)

(assert (=> b!3997952 m!4579249))

(assert (=> b!3997626 d!1182818))

(declare-fun d!1182820 () Bool)

(declare-fun res!1623847 () Bool)

(declare-fun e!2478739 () Bool)

(assert (=> d!1182820 (=> (not res!1623847) (not e!2478739))))

(assert (=> d!1182820 (= res!1623847 (validRegex!5300 (regex!6778 (rule!9806 token!484))))))

(assert (=> d!1182820 (= (ruleValid!2710 thiss!21717 (rule!9806 token!484)) e!2478739)))

(declare-fun b!3997957 () Bool)

(declare-fun res!1623848 () Bool)

(assert (=> b!3997957 (=> (not res!1623848) (not e!2478739))))

(assert (=> b!3997957 (= res!1623848 (not (nullable!4100 (regex!6778 (rule!9806 token!484)))))))

(declare-fun b!3997958 () Bool)

(assert (=> b!3997958 (= e!2478739 (not (= (tag!7638 (rule!9806 token!484)) (String!48759 ""))))))

(assert (= (and d!1182820 res!1623847) b!3997957))

(assert (= (and b!3997957 res!1623848) b!3997958))

(declare-fun m!4579251 () Bool)

(assert (=> d!1182820 m!4579251))

(declare-fun m!4579253 () Bool)

(assert (=> b!3997957 m!4579253))

(assert (=> b!3997626 d!1182820))

(declare-fun d!1182822 () Bool)

(assert (=> d!1182822 (ruleValid!2710 thiss!21717 (rule!9806 token!484))))

(declare-fun lt!1412500 () Unit!61679)

(declare-fun choose!24111 (LexerInterface!6367 Rule!13356 List!42884) Unit!61679)

(assert (=> d!1182822 (= lt!1412500 (choose!24111 thiss!21717 (rule!9806 token!484) rules!2999))))

(assert (=> d!1182822 (contains!8509 rules!2999 (rule!9806 token!484))))

(assert (=> d!1182822 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1784 thiss!21717 (rule!9806 token!484) rules!2999) lt!1412500)))

(declare-fun bs!588705 () Bool)

(assert (= bs!588705 d!1182822))

(assert (=> bs!588705 m!4578807))

(declare-fun m!4579255 () Bool)

(assert (=> bs!588705 m!4579255))

(assert (=> bs!588705 m!4579141))

(assert (=> b!3997626 d!1182822))

(declare-fun d!1182824 () Bool)

(declare-fun res!1623853 () Bool)

(declare-fun e!2478742 () Bool)

(assert (=> d!1182824 (=> (not res!1623853) (not e!2478742))))

(assert (=> d!1182824 (= res!1623853 (not (isEmpty!25558 (originalCharacters!7378 token!484))))))

(assert (=> d!1182824 (= (inv!57107 token!484) e!2478742)))

(declare-fun b!3997963 () Bool)

(declare-fun res!1623854 () Bool)

(assert (=> b!3997963 (=> (not res!1623854) (not e!2478742))))

(declare-fun dynLambda!18151 (Int TokenValue!7008) BalanceConc!25572)

(assert (=> b!3997963 (= res!1623854 (= (originalCharacters!7378 token!484) (list!15878 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (value!213807 token!484)))))))

(declare-fun b!3997964 () Bool)

(assert (=> b!3997964 (= e!2478742 (= (size!31975 token!484) (size!31976 (originalCharacters!7378 token!484))))))

(assert (= (and d!1182824 res!1623853) b!3997963))

(assert (= (and b!3997963 res!1623854) b!3997964))

(declare-fun b_lambda!116655 () Bool)

(assert (=> (not b_lambda!116655) (not b!3997963)))

(declare-fun tb!240445 () Bool)

(declare-fun t!332069 () Bool)

(assert (=> (and b!3997652 (= (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toChars!9125 (transformation!6778 (rule!9806 token!484)))) t!332069) tb!240445))

(declare-fun b!3997969 () Bool)

(declare-fun e!2478745 () Bool)

(declare-fun tp!1216857 () Bool)

(declare-fun inv!57110 (Conc!12989) Bool)

(assert (=> b!3997969 (= e!2478745 (and (inv!57110 (c!691582 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (value!213807 token!484)))) tp!1216857))))

(declare-fun result!291386 () Bool)

(declare-fun inv!57111 (BalanceConc!25572) Bool)

(assert (=> tb!240445 (= result!291386 (and (inv!57111 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (value!213807 token!484))) e!2478745))))

(assert (= tb!240445 b!3997969))

(declare-fun m!4579257 () Bool)

(assert (=> b!3997969 m!4579257))

(declare-fun m!4579259 () Bool)

(assert (=> tb!240445 m!4579259))

(assert (=> b!3997963 t!332069))

(declare-fun b_and!307015 () Bool)

(assert (= b_and!307009 (and (=> t!332069 result!291386) b_and!307015)))

(declare-fun t!332071 () Bool)

(declare-fun tb!240447 () Bool)

(assert (=> (and b!3997653 (= (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toChars!9125 (transformation!6778 (rule!9806 token!484)))) t!332071) tb!240447))

(declare-fun result!291390 () Bool)

(assert (= result!291390 result!291386))

(assert (=> b!3997963 t!332071))

(declare-fun b_and!307017 () Bool)

(assert (= b_and!307013 (and (=> t!332071 result!291390) b_and!307017)))

(declare-fun m!4579261 () Bool)

(assert (=> d!1182824 m!4579261))

(declare-fun m!4579263 () Bool)

(assert (=> b!3997963 m!4579263))

(assert (=> b!3997963 m!4579263))

(declare-fun m!4579265 () Bool)

(assert (=> b!3997963 m!4579265))

(assert (=> b!3997964 m!4578785))

(assert (=> start!376212 d!1182824))

(declare-fun d!1182826 () Bool)

(assert (=> d!1182826 (= (size!31975 (_1!24107 (v!39551 lt!1412381))) (size!31976 (originalCharacters!7378 (_1!24107 (v!39551 lt!1412381)))))))

(declare-fun Unit!61692 () Unit!61679)

(assert (=> d!1182826 (= (lemmaCharactersSize!1373 (_1!24107 (v!39551 lt!1412381))) Unit!61692)))

(declare-fun bs!588706 () Bool)

(assert (= bs!588706 d!1182826))

(declare-fun m!4579267 () Bool)

(assert (=> bs!588706 m!4579267))

(assert (=> b!3997647 d!1182826))

(declare-fun b!3997973 () Bool)

(declare-fun lt!1412501 () List!42882)

(declare-fun e!2478746 () Bool)

(assert (=> b!3997973 (= e!2478746 (or (not (= newSuffixResult!27 Nil!42758)) (= lt!1412501 lt!1412396)))))

(declare-fun b!3997970 () Bool)

(declare-fun e!2478747 () List!42882)

(assert (=> b!3997970 (= e!2478747 newSuffixResult!27)))

(declare-fun d!1182828 () Bool)

(assert (=> d!1182828 e!2478746))

(declare-fun res!1623856 () Bool)

(assert (=> d!1182828 (=> (not res!1623856) (not e!2478746))))

(assert (=> d!1182828 (= res!1623856 (= (content!6487 lt!1412501) ((_ map or) (content!6487 lt!1412396) (content!6487 newSuffixResult!27))))))

(assert (=> d!1182828 (= lt!1412501 e!2478747)))

(declare-fun c!691644 () Bool)

(assert (=> d!1182828 (= c!691644 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182828 (= (++!11180 lt!1412396 newSuffixResult!27) lt!1412501)))

(declare-fun b!3997972 () Bool)

(declare-fun res!1623855 () Bool)

(assert (=> b!3997972 (=> (not res!1623855) (not e!2478746))))

(assert (=> b!3997972 (= res!1623855 (= (size!31976 lt!1412501) (+ (size!31976 lt!1412396) (size!31976 newSuffixResult!27))))))

(declare-fun b!3997971 () Bool)

(assert (=> b!3997971 (= e!2478747 (Cons!42758 (h!48178 lt!1412396) (++!11180 (t!332065 lt!1412396) newSuffixResult!27)))))

(assert (= (and d!1182828 c!691644) b!3997970))

(assert (= (and d!1182828 (not c!691644)) b!3997971))

(assert (= (and d!1182828 res!1623856) b!3997972))

(assert (= (and b!3997972 res!1623855) b!3997973))

(declare-fun m!4579269 () Bool)

(assert (=> d!1182828 m!4579269))

(assert (=> d!1182828 m!4579047))

(declare-fun m!4579271 () Bool)

(assert (=> d!1182828 m!4579271))

(declare-fun m!4579273 () Bool)

(assert (=> b!3997972 m!4579273))

(assert (=> b!3997972 m!4578923))

(declare-fun m!4579275 () Bool)

(assert (=> b!3997972 m!4579275))

(declare-fun m!4579277 () Bool)

(assert (=> b!3997971 m!4579277))

(assert (=> b!3997647 d!1182828))

(declare-fun lt!1412502 () List!42882)

(declare-fun b!3997977 () Bool)

(declare-fun e!2478748 () Bool)

(assert (=> b!3997977 (= e!2478748 (or (not (= (_2!24107 (v!39551 lt!1412381)) Nil!42758)) (= lt!1412502 lt!1412396)))))

(declare-fun b!3997974 () Bool)

(declare-fun e!2478749 () List!42882)

(assert (=> b!3997974 (= e!2478749 (_2!24107 (v!39551 lt!1412381)))))

(declare-fun d!1182830 () Bool)

(assert (=> d!1182830 e!2478748))

(declare-fun res!1623858 () Bool)

(assert (=> d!1182830 (=> (not res!1623858) (not e!2478748))))

(assert (=> d!1182830 (= res!1623858 (= (content!6487 lt!1412502) ((_ map or) (content!6487 lt!1412396) (content!6487 (_2!24107 (v!39551 lt!1412381))))))))

(assert (=> d!1182830 (= lt!1412502 e!2478749)))

(declare-fun c!691645 () Bool)

(assert (=> d!1182830 (= c!691645 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182830 (= (++!11180 lt!1412396 (_2!24107 (v!39551 lt!1412381))) lt!1412502)))

(declare-fun b!3997976 () Bool)

(declare-fun res!1623857 () Bool)

(assert (=> b!3997976 (=> (not res!1623857) (not e!2478748))))

(assert (=> b!3997976 (= res!1623857 (= (size!31976 lt!1412502) (+ (size!31976 lt!1412396) (size!31976 (_2!24107 (v!39551 lt!1412381))))))))

(declare-fun b!3997975 () Bool)

(assert (=> b!3997975 (= e!2478749 (Cons!42758 (h!48178 lt!1412396) (++!11180 (t!332065 lt!1412396) (_2!24107 (v!39551 lt!1412381)))))))

(assert (= (and d!1182830 c!691645) b!3997974))

(assert (= (and d!1182830 (not c!691645)) b!3997975))

(assert (= (and d!1182830 res!1623858) b!3997976))

(assert (= (and b!3997976 res!1623857) b!3997977))

(declare-fun m!4579279 () Bool)

(assert (=> d!1182830 m!4579279))

(assert (=> d!1182830 m!4579047))

(declare-fun m!4579281 () Bool)

(assert (=> d!1182830 m!4579281))

(declare-fun m!4579283 () Bool)

(assert (=> b!3997976 m!4579283))

(assert (=> b!3997976 m!4578923))

(declare-fun m!4579285 () Bool)

(assert (=> b!3997976 m!4579285))

(declare-fun m!4579287 () Bool)

(assert (=> b!3997975 m!4579287))

(assert (=> b!3997647 d!1182830))

(declare-fun d!1182832 () Bool)

(declare-fun res!1623859 () Bool)

(declare-fun e!2478750 () Bool)

(assert (=> d!1182832 (=> (not res!1623859) (not e!2478750))))

(assert (=> d!1182832 (= res!1623859 (validRegex!5300 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(assert (=> d!1182832 (= (ruleValid!2710 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) e!2478750)))

(declare-fun b!3997978 () Bool)

(declare-fun res!1623860 () Bool)

(assert (=> b!3997978 (=> (not res!1623860) (not e!2478750))))

(assert (=> b!3997978 (= res!1623860 (not (nullable!4100 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(declare-fun b!3997979 () Bool)

(assert (=> b!3997979 (= e!2478750 (not (= (tag!7638 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (String!48759 ""))))))

(assert (= (and d!1182832 res!1623859) b!3997978))

(assert (= (and b!3997978 res!1623860) b!3997979))

(assert (=> d!1182832 m!4579235))

(assert (=> b!3997978 m!4579233))

(assert (=> b!3997647 d!1182832))

(declare-fun d!1182834 () Bool)

(declare-fun fromListB!2301 (List!42882) BalanceConc!25572)

(assert (=> d!1182834 (= (seqFromList!5017 lt!1412396) (fromListB!2301 lt!1412396))))

(declare-fun bs!588707 () Bool)

(assert (= bs!588707 d!1182834))

(declare-fun m!4579289 () Bool)

(assert (=> bs!588707 m!4579289))

(assert (=> b!3997647 d!1182834))

(declare-fun d!1182836 () Bool)

(assert (=> d!1182836 (isPrefix!3865 lt!1412396 (++!11180 lt!1412396 newSuffixResult!27))))

(declare-fun lt!1412503 () Unit!61679)

(assert (=> d!1182836 (= lt!1412503 (choose!24101 lt!1412396 newSuffixResult!27))))

(assert (=> d!1182836 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 newSuffixResult!27) lt!1412503)))

(declare-fun bs!588708 () Bool)

(assert (= bs!588708 d!1182836))

(assert (=> bs!588708 m!4578917))

(assert (=> bs!588708 m!4578917))

(assert (=> bs!588708 m!4578933))

(declare-fun m!4579291 () Bool)

(assert (=> bs!588708 m!4579291))

(assert (=> b!3997647 d!1182836))

(declare-fun d!1182838 () Bool)

(declare-fun list!15880 (Conc!12989) List!42882)

(assert (=> d!1182838 (= (list!15878 (charsOf!4594 (_1!24107 (v!39551 lt!1412381)))) (list!15880 (c!691582 (charsOf!4594 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun bs!588709 () Bool)

(assert (= bs!588709 d!1182838))

(declare-fun m!4579293 () Bool)

(assert (=> bs!588709 m!4579293))

(assert (=> b!3997647 d!1182838))

(declare-fun b!3997981 () Bool)

(declare-fun res!1623862 () Bool)

(declare-fun e!2478752 () Bool)

(assert (=> b!3997981 (=> (not res!1623862) (not e!2478752))))

(assert (=> b!3997981 (= res!1623862 (= (head!8501 lt!1412396) (head!8501 (++!11180 lt!1412396 newSuffixResult!27))))))

(declare-fun b!3997980 () Bool)

(declare-fun e!2478751 () Bool)

(assert (=> b!3997980 (= e!2478751 e!2478752)))

(declare-fun res!1623864 () Bool)

(assert (=> b!3997980 (=> (not res!1623864) (not e!2478752))))

(assert (=> b!3997980 (= res!1623864 (not ((_ is Nil!42758) (++!11180 lt!1412396 newSuffixResult!27))))))

(declare-fun d!1182840 () Bool)

(declare-fun e!2478753 () Bool)

(assert (=> d!1182840 e!2478753))

(declare-fun res!1623863 () Bool)

(assert (=> d!1182840 (=> res!1623863 e!2478753)))

(declare-fun lt!1412504 () Bool)

(assert (=> d!1182840 (= res!1623863 (not lt!1412504))))

(assert (=> d!1182840 (= lt!1412504 e!2478751)))

(declare-fun res!1623861 () Bool)

(assert (=> d!1182840 (=> res!1623861 e!2478751)))

(assert (=> d!1182840 (= res!1623861 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182840 (= (isPrefix!3865 lt!1412396 (++!11180 lt!1412396 newSuffixResult!27)) lt!1412504)))

(declare-fun b!3997982 () Bool)

(assert (=> b!3997982 (= e!2478752 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 (++!11180 lt!1412396 newSuffixResult!27))))))

(declare-fun b!3997983 () Bool)

(assert (=> b!3997983 (= e!2478753 (>= (size!31976 (++!11180 lt!1412396 newSuffixResult!27)) (size!31976 lt!1412396)))))

(assert (= (and d!1182840 (not res!1623861)) b!3997980))

(assert (= (and b!3997980 res!1623864) b!3997981))

(assert (= (and b!3997981 res!1623862) b!3997982))

(assert (= (and d!1182840 (not res!1623863)) b!3997983))

(assert (=> b!3997981 m!4579179))

(assert (=> b!3997981 m!4578917))

(declare-fun m!4579295 () Bool)

(assert (=> b!3997981 m!4579295))

(assert (=> b!3997982 m!4579183))

(assert (=> b!3997982 m!4578917))

(declare-fun m!4579297 () Bool)

(assert (=> b!3997982 m!4579297))

(assert (=> b!3997982 m!4579183))

(assert (=> b!3997982 m!4579297))

(declare-fun m!4579299 () Bool)

(assert (=> b!3997982 m!4579299))

(assert (=> b!3997983 m!4578917))

(declare-fun m!4579301 () Bool)

(assert (=> b!3997983 m!4579301))

(assert (=> b!3997983 m!4578923))

(assert (=> b!3997647 d!1182840))

(declare-fun b!3997985 () Bool)

(declare-fun res!1623866 () Bool)

(declare-fun e!2478755 () Bool)

(assert (=> b!3997985 (=> (not res!1623866) (not e!2478755))))

(assert (=> b!3997985 (= res!1623866 (= (head!8501 lt!1412396) (head!8501 lt!1412352)))))

(declare-fun b!3997984 () Bool)

(declare-fun e!2478754 () Bool)

(assert (=> b!3997984 (= e!2478754 e!2478755)))

(declare-fun res!1623868 () Bool)

(assert (=> b!3997984 (=> (not res!1623868) (not e!2478755))))

(assert (=> b!3997984 (= res!1623868 (not ((_ is Nil!42758) lt!1412352)))))

(declare-fun d!1182842 () Bool)

(declare-fun e!2478756 () Bool)

(assert (=> d!1182842 e!2478756))

(declare-fun res!1623867 () Bool)

(assert (=> d!1182842 (=> res!1623867 e!2478756)))

(declare-fun lt!1412505 () Bool)

(assert (=> d!1182842 (= res!1623867 (not lt!1412505))))

(assert (=> d!1182842 (= lt!1412505 e!2478754)))

(declare-fun res!1623865 () Bool)

(assert (=> d!1182842 (=> res!1623865 e!2478754)))

(assert (=> d!1182842 (= res!1623865 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182842 (= (isPrefix!3865 lt!1412396 lt!1412352) lt!1412505)))

(declare-fun b!3997986 () Bool)

(assert (=> b!3997986 (= e!2478755 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 lt!1412352)))))

(declare-fun b!3997987 () Bool)

(assert (=> b!3997987 (= e!2478756 (>= (size!31976 lt!1412352) (size!31976 lt!1412396)))))

(assert (= (and d!1182842 (not res!1623865)) b!3997984))

(assert (= (and b!3997984 res!1623868) b!3997985))

(assert (= (and b!3997985 res!1623866) b!3997986))

(assert (= (and d!1182842 (not res!1623867)) b!3997987))

(assert (=> b!3997985 m!4579179))

(declare-fun m!4579303 () Bool)

(assert (=> b!3997985 m!4579303))

(assert (=> b!3997986 m!4579183))

(declare-fun m!4579305 () Bool)

(assert (=> b!3997986 m!4579305))

(assert (=> b!3997986 m!4579183))

(assert (=> b!3997986 m!4579305))

(declare-fun m!4579307 () Bool)

(assert (=> b!3997986 m!4579307))

(declare-fun m!4579309 () Bool)

(assert (=> b!3997987 m!4579309))

(assert (=> b!3997987 m!4578923))

(assert (=> b!3997647 d!1182842))

(declare-fun d!1182844 () Bool)

(assert (=> d!1182844 (= (maxPrefixOneRule!2699 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412358) (Some!9191 (tuple2!41947 (Token!12695 (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (seqFromList!5017 lt!1412396)) (rule!9806 (_1!24107 (v!39551 lt!1412381))) (size!31976 lt!1412396) lt!1412396) (_2!24107 (v!39551 lt!1412381)))))))

(declare-fun lt!1412508 () Unit!61679)

(declare-fun choose!24112 (LexerInterface!6367 List!42884 List!42882 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> d!1182844 (= lt!1412508 (choose!24112 thiss!21717 rules!2999 lt!1412396 lt!1412358 (_2!24107 (v!39551 lt!1412381)) (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1182844 (not (isEmpty!25554 rules!2999))))

(assert (=> d!1182844 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1521 thiss!21717 rules!2999 lt!1412396 lt!1412358 (_2!24107 (v!39551 lt!1412381)) (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412508)))

(declare-fun bs!588710 () Bool)

(assert (= bs!588710 d!1182844))

(assert (=> bs!588710 m!4578913))

(assert (=> bs!588710 m!4578921))

(declare-fun m!4579311 () Bool)

(assert (=> bs!588710 m!4579311))

(assert (=> bs!588710 m!4578923))

(assert (=> bs!588710 m!4578913))

(assert (=> bs!588710 m!4578915))

(assert (=> bs!588710 m!4578801))

(assert (=> b!3997647 d!1182844))

(declare-fun d!1182846 () Bool)

(assert (=> d!1182846 (= (size!31975 token!484) (size!31976 (originalCharacters!7378 token!484)))))

(declare-fun Unit!61694 () Unit!61679)

(assert (=> d!1182846 (= (lemmaCharactersSize!1373 token!484) Unit!61694)))

(declare-fun bs!588711 () Bool)

(assert (= bs!588711 d!1182846))

(assert (=> bs!588711 m!4578785))

(assert (=> b!3997647 d!1182846))

(declare-fun d!1182848 () Bool)

(declare-fun dynLambda!18152 (Int BalanceConc!25572) TokenValue!7008)

(assert (=> d!1182848 (= (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (seqFromList!5017 lt!1412396)) (dynLambda!18152 (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (seqFromList!5017 lt!1412396)))))

(declare-fun b_lambda!116657 () Bool)

(assert (=> (not b_lambda!116657) (not d!1182848)))

(declare-fun t!332073 () Bool)

(declare-fun tb!240449 () Bool)

(assert (=> (and b!3997652 (= (toValue!9266 (transformation!6778 (h!48180 rules!2999))) (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332073) tb!240449))

(declare-fun result!291392 () Bool)

(assert (=> tb!240449 (= result!291392 (inv!21 (dynLambda!18152 (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (seqFromList!5017 lt!1412396))))))

(declare-fun m!4579313 () Bool)

(assert (=> tb!240449 m!4579313))

(assert (=> d!1182848 t!332073))

(declare-fun b_and!307019 () Bool)

(assert (= b_and!307007 (and (=> t!332073 result!291392) b_and!307019)))

(declare-fun tb!240451 () Bool)

(declare-fun t!332075 () Bool)

(assert (=> (and b!3997653 (= (toValue!9266 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332075) tb!240451))

(declare-fun result!291396 () Bool)

(assert (= result!291396 result!291392))

(assert (=> d!1182848 t!332075))

(declare-fun b_and!307021 () Bool)

(assert (= b_and!307011 (and (=> t!332075 result!291396) b_and!307021)))

(assert (=> d!1182848 m!4578913))

(declare-fun m!4579315 () Bool)

(assert (=> d!1182848 m!4579315))

(assert (=> b!3997647 d!1182848))

(declare-fun d!1182850 () Bool)

(declare-fun lt!1412511 () Int)

(assert (=> d!1182850 (>= lt!1412511 0)))

(declare-fun e!2478763 () Int)

(assert (=> d!1182850 (= lt!1412511 e!2478763)))

(declare-fun c!691648 () Bool)

(assert (=> d!1182850 (= c!691648 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1182850 (= (size!31976 lt!1412396) lt!1412511)))

(declare-fun b!3997994 () Bool)

(assert (=> b!3997994 (= e!2478763 0)))

(declare-fun b!3997996 () Bool)

(assert (=> b!3997996 (= e!2478763 (+ 1 (size!31976 (t!332065 lt!1412396))))))

(assert (= (and d!1182850 c!691648) b!3997994))

(assert (= (and d!1182850 (not c!691648)) b!3997996))

(declare-fun m!4579317 () Bool)

(assert (=> b!3997996 m!4579317))

(assert (=> b!3997647 d!1182850))

(declare-fun d!1182852 () Bool)

(declare-fun e!2478765 () Bool)

(assert (=> d!1182852 e!2478765))

(declare-fun res!1623871 () Bool)

(assert (=> d!1182852 (=> (not res!1623871) (not e!2478765))))

(assert (=> d!1182852 (= res!1623871 (semiInverseModEq!2907 (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(declare-fun Unit!61695 () Unit!61679)

(assert (=> d!1182852 (= (lemmaInv!993 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) Unit!61695)))

(declare-fun b!3997998 () Bool)

(assert (=> b!3997998 (= e!2478765 (equivClasses!2806 (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(assert (= (and d!1182852 res!1623871) b!3997998))

(declare-fun m!4579319 () Bool)

(assert (=> d!1182852 m!4579319))

(declare-fun m!4579321 () Bool)

(assert (=> b!3997998 m!4579321))

(assert (=> b!3997647 d!1182852))

(declare-fun d!1182854 () Bool)

(assert (=> d!1182854 (isPrefix!3865 lt!1412396 (++!11180 lt!1412396 (_2!24107 (v!39551 lt!1412381))))))

(declare-fun lt!1412513 () Unit!61679)

(assert (=> d!1182854 (= lt!1412513 (choose!24101 lt!1412396 (_2!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182854 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 (_2!24107 (v!39551 lt!1412381))) lt!1412513)))

(declare-fun bs!588712 () Bool)

(assert (= bs!588712 d!1182854))

(assert (=> bs!588712 m!4578935))

(assert (=> bs!588712 m!4578935))

(declare-fun m!4579323 () Bool)

(assert (=> bs!588712 m!4579323))

(declare-fun m!4579325 () Bool)

(assert (=> bs!588712 m!4579325))

(assert (=> b!3997647 d!1182854))

(declare-fun b!3998052 () Bool)

(declare-fun res!1623907 () Bool)

(declare-fun e!2478795 () Bool)

(assert (=> b!3998052 (=> (not res!1623907) (not e!2478795))))

(declare-fun lt!1412552 () Option!9192)

(assert (=> b!3998052 (= res!1623907 (< (size!31976 (_2!24107 (get!14065 lt!1412552))) (size!31976 lt!1412358)))))

(declare-fun b!3998053 () Bool)

(declare-fun res!1623908 () Bool)

(assert (=> b!3998053 (=> (not res!1623908) (not e!2478795))))

(assert (=> b!3998053 (= res!1623908 (= (value!213807 (_1!24107 (get!14065 lt!1412552))) (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (get!14065 lt!1412552)))) (seqFromList!5017 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412552)))))))))

(declare-fun b!3998054 () Bool)

(declare-fun res!1623905 () Bool)

(assert (=> b!3998054 (=> (not res!1623905) (not e!2478795))))

(assert (=> b!3998054 (= res!1623905 (= (rule!9806 (_1!24107 (get!14065 lt!1412552))) (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(declare-fun b!3998055 () Bool)

(declare-fun e!2478796 () Bool)

(declare-datatypes ((tuple2!41950 0))(
  ( (tuple2!41951 (_1!24109 List!42882) (_2!24109 List!42882)) )
))
(declare-fun findLongestMatchInner!1343 (Regex!11683 List!42882 Int List!42882 List!42882 Int) tuple2!41950)

(assert (=> b!3998055 (= e!2478796 (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (_1!24109 (findLongestMatchInner!1343 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) Nil!42758 (size!31976 Nil!42758) lt!1412358 lt!1412358 (size!31976 lt!1412358)))))))

(declare-fun b!3998056 () Bool)

(declare-fun e!2478793 () Option!9192)

(declare-fun lt!1412553 () tuple2!41950)

(declare-fun size!31978 (BalanceConc!25572) Int)

(assert (=> b!3998056 (= e!2478793 (Some!9191 (tuple2!41947 (Token!12695 (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (seqFromList!5017 (_1!24109 lt!1412553))) (rule!9806 (_1!24107 (v!39551 lt!1412381))) (size!31978 (seqFromList!5017 (_1!24109 lt!1412553))) (_1!24109 lt!1412553)) (_2!24109 lt!1412553))))))

(declare-fun lt!1412550 () Unit!61679)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1316 (Regex!11683 List!42882) Unit!61679)

(assert (=> b!3998056 (= lt!1412550 (longestMatchIsAcceptedByMatchOrIsEmpty!1316 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412358))))

(declare-fun res!1623906 () Bool)

(assert (=> b!3998056 (= res!1623906 (isEmpty!25558 (_1!24109 (findLongestMatchInner!1343 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) Nil!42758 (size!31976 Nil!42758) lt!1412358 lt!1412358 (size!31976 lt!1412358)))))))

(assert (=> b!3998056 (=> res!1623906 e!2478796)))

(assert (=> b!3998056 e!2478796))

(declare-fun lt!1412551 () Unit!61679)

(assert (=> b!3998056 (= lt!1412551 lt!1412550)))

(declare-fun lt!1412549 () Unit!61679)

(declare-fun lemmaSemiInverse!1863 (TokenValueInjection!13444 BalanceConc!25572) Unit!61679)

(assert (=> b!3998056 (= lt!1412549 (lemmaSemiInverse!1863 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (seqFromList!5017 (_1!24109 lt!1412553))))))

(declare-fun b!3998057 () Bool)

(assert (=> b!3998057 (= e!2478795 (= (size!31975 (_1!24107 (get!14065 lt!1412552))) (size!31976 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412552))))))))

(declare-fun b!3998058 () Bool)

(declare-fun e!2478794 () Bool)

(assert (=> b!3998058 (= e!2478794 e!2478795)))

(declare-fun res!1623910 () Bool)

(assert (=> b!3998058 (=> (not res!1623910) (not e!2478795))))

(assert (=> b!3998058 (= res!1623910 (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412552))))))))

(declare-fun d!1182856 () Bool)

(assert (=> d!1182856 e!2478794))

(declare-fun res!1623909 () Bool)

(assert (=> d!1182856 (=> res!1623909 e!2478794)))

(assert (=> d!1182856 (= res!1623909 (isEmpty!25557 lt!1412552))))

(assert (=> d!1182856 (= lt!1412552 e!2478793)))

(declare-fun c!691655 () Bool)

(assert (=> d!1182856 (= c!691655 (isEmpty!25558 (_1!24109 lt!1412553)))))

(declare-fun findLongestMatch!1256 (Regex!11683 List!42882) tuple2!41950)

(assert (=> d!1182856 (= lt!1412553 (findLongestMatch!1256 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412358))))

(assert (=> d!1182856 (ruleValid!2710 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182856 (= (maxPrefixOneRule!2699 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412358) lt!1412552)))

(declare-fun b!3998059 () Bool)

(declare-fun res!1623904 () Bool)

(assert (=> b!3998059 (=> (not res!1623904) (not e!2478795))))

(assert (=> b!3998059 (= res!1623904 (= (++!11180 (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412552)))) (_2!24107 (get!14065 lt!1412552))) lt!1412358))))

(declare-fun b!3998060 () Bool)

(assert (=> b!3998060 (= e!2478793 None!9191)))

(assert (= (and d!1182856 c!691655) b!3998060))

(assert (= (and d!1182856 (not c!691655)) b!3998056))

(assert (= (and b!3998056 (not res!1623906)) b!3998055))

(assert (= (and d!1182856 (not res!1623909)) b!3998058))

(assert (= (and b!3998058 res!1623910) b!3998059))

(assert (= (and b!3998059 res!1623904) b!3998052))

(assert (= (and b!3998052 res!1623907) b!3998054))

(assert (= (and b!3998054 res!1623905) b!3998053))

(assert (= (and b!3998053 res!1623908) b!3998057))

(declare-fun m!4579371 () Bool)

(assert (=> d!1182856 m!4579371))

(declare-fun m!4579373 () Bool)

(assert (=> d!1182856 m!4579373))

(declare-fun m!4579375 () Bool)

(assert (=> d!1182856 m!4579375))

(assert (=> d!1182856 m!4578903))

(declare-fun m!4579377 () Bool)

(assert (=> b!3998058 m!4579377))

(declare-fun m!4579379 () Bool)

(assert (=> b!3998058 m!4579379))

(assert (=> b!3998058 m!4579379))

(declare-fun m!4579381 () Bool)

(assert (=> b!3998058 m!4579381))

(assert (=> b!3998058 m!4579381))

(declare-fun m!4579383 () Bool)

(assert (=> b!3998058 m!4579383))

(assert (=> b!3998054 m!4579377))

(assert (=> b!3998057 m!4579377))

(declare-fun m!4579385 () Bool)

(assert (=> b!3998057 m!4579385))

(assert (=> b!3998053 m!4579377))

(declare-fun m!4579387 () Bool)

(assert (=> b!3998053 m!4579387))

(assert (=> b!3998053 m!4579387))

(declare-fun m!4579389 () Bool)

(assert (=> b!3998053 m!4579389))

(declare-fun m!4579391 () Bool)

(assert (=> b!3998056 m!4579391))

(declare-fun m!4579393 () Bool)

(assert (=> b!3998056 m!4579393))

(assert (=> b!3998056 m!4579391))

(declare-fun m!4579395 () Bool)

(assert (=> b!3998056 m!4579395))

(declare-fun m!4579397 () Bool)

(assert (=> b!3998056 m!4579397))

(assert (=> b!3998056 m!4579391))

(declare-fun m!4579399 () Bool)

(assert (=> b!3998056 m!4579399))

(assert (=> b!3998056 m!4579073))

(declare-fun m!4579401 () Bool)

(assert (=> b!3998056 m!4579401))

(assert (=> b!3998056 m!4579391))

(declare-fun m!4579403 () Bool)

(assert (=> b!3998056 m!4579403))

(assert (=> b!3998056 m!4579073))

(assert (=> b!3998056 m!4579399))

(declare-fun m!4579405 () Bool)

(assert (=> b!3998056 m!4579405))

(assert (=> b!3998059 m!4579377))

(assert (=> b!3998059 m!4579379))

(assert (=> b!3998059 m!4579379))

(assert (=> b!3998059 m!4579381))

(assert (=> b!3998059 m!4579381))

(declare-fun m!4579407 () Bool)

(assert (=> b!3998059 m!4579407))

(assert (=> b!3998052 m!4579377))

(declare-fun m!4579409 () Bool)

(assert (=> b!3998052 m!4579409))

(assert (=> b!3998052 m!4579073))

(assert (=> b!3998055 m!4579399))

(assert (=> b!3998055 m!4579073))

(assert (=> b!3998055 m!4579399))

(assert (=> b!3998055 m!4579073))

(assert (=> b!3998055 m!4579401))

(declare-fun m!4579411 () Bool)

(assert (=> b!3998055 m!4579411))

(assert (=> b!3997647 d!1182856))

(declare-fun d!1182878 () Bool)

(declare-fun lt!1412556 () BalanceConc!25572)

(assert (=> d!1182878 (= (list!15878 lt!1412556) (originalCharacters!7378 (_1!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182878 (= lt!1412556 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (value!213807 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1182878 (= (charsOf!4594 (_1!24107 (v!39551 lt!1412381))) lt!1412556)))

(declare-fun b_lambda!116663 () Bool)

(assert (=> (not b_lambda!116663) (not d!1182878)))

(declare-fun t!332085 () Bool)

(declare-fun tb!240461 () Bool)

(assert (=> (and b!3997652 (= (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332085) tb!240461))

(declare-fun b!3998061 () Bool)

(declare-fun e!2478797 () Bool)

(declare-fun tp!1216861 () Bool)

(assert (=> b!3998061 (= e!2478797 (and (inv!57110 (c!691582 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (value!213807 (_1!24107 (v!39551 lt!1412381)))))) tp!1216861))))

(declare-fun result!291410 () Bool)

(assert (=> tb!240461 (= result!291410 (and (inv!57111 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))) (value!213807 (_1!24107 (v!39551 lt!1412381))))) e!2478797))))

(assert (= tb!240461 b!3998061))

(declare-fun m!4579413 () Bool)

(assert (=> b!3998061 m!4579413))

(declare-fun m!4579415 () Bool)

(assert (=> tb!240461 m!4579415))

(assert (=> d!1182878 t!332085))

(declare-fun b_and!307031 () Bool)

(assert (= b_and!307015 (and (=> t!332085 result!291410) b_and!307031)))

(declare-fun tb!240463 () Bool)

(declare-fun t!332087 () Bool)

(assert (=> (and b!3997653 (= (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332087) tb!240463))

(declare-fun result!291412 () Bool)

(assert (= result!291412 result!291410))

(assert (=> d!1182878 t!332087))

(declare-fun b_and!307033 () Bool)

(assert (= b_and!307017 (and (=> t!332087 result!291412) b_and!307033)))

(declare-fun m!4579417 () Bool)

(assert (=> d!1182878 m!4579417))

(declare-fun m!4579419 () Bool)

(assert (=> d!1182878 m!4579419))

(assert (=> b!3997647 d!1182878))

(declare-fun d!1182880 () Bool)

(assert (=> d!1182880 (ruleValid!2710 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(declare-fun lt!1412562 () Unit!61679)

(assert (=> d!1182880 (= lt!1412562 (choose!24111 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) rules!2999))))

(assert (=> d!1182880 (contains!8509 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))

(assert (=> d!1182880 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1784 thiss!21717 (rule!9806 (_1!24107 (v!39551 lt!1412381))) rules!2999) lt!1412562)))

(declare-fun bs!588717 () Bool)

(assert (= bs!588717 d!1182880))

(assert (=> bs!588717 m!4578903))

(declare-fun m!4579421 () Bool)

(assert (=> bs!588717 m!4579421))

(assert (=> bs!588717 m!4579137))

(assert (=> b!3997647 d!1182880))

(declare-fun b!3998072 () Bool)

(declare-fun res!1623919 () Bool)

(declare-fun e!2478803 () Bool)

(assert (=> b!3998072 (=> (not res!1623919) (not e!2478803))))

(assert (=> b!3998072 (= res!1623919 (= (head!8501 newSuffix!27) (head!8501 suffix!1299)))))

(declare-fun b!3998071 () Bool)

(declare-fun e!2478802 () Bool)

(assert (=> b!3998071 (= e!2478802 e!2478803)))

(declare-fun res!1623921 () Bool)

(assert (=> b!3998071 (=> (not res!1623921) (not e!2478803))))

(assert (=> b!3998071 (= res!1623921 (not ((_ is Nil!42758) suffix!1299)))))

(declare-fun d!1182882 () Bool)

(declare-fun e!2478804 () Bool)

(assert (=> d!1182882 e!2478804))

(declare-fun res!1623920 () Bool)

(assert (=> d!1182882 (=> res!1623920 e!2478804)))

(declare-fun lt!1412563 () Bool)

(assert (=> d!1182882 (= res!1623920 (not lt!1412563))))

(assert (=> d!1182882 (= lt!1412563 e!2478802)))

(declare-fun res!1623918 () Bool)

(assert (=> d!1182882 (=> res!1623918 e!2478802)))

(assert (=> d!1182882 (= res!1623918 ((_ is Nil!42758) newSuffix!27))))

(assert (=> d!1182882 (= (isPrefix!3865 newSuffix!27 suffix!1299) lt!1412563)))

(declare-fun b!3998073 () Bool)

(assert (=> b!3998073 (= e!2478803 (isPrefix!3865 (tail!6233 newSuffix!27) (tail!6233 suffix!1299)))))

(declare-fun b!3998074 () Bool)

(assert (=> b!3998074 (= e!2478804 (>= (size!31976 suffix!1299) (size!31976 newSuffix!27)))))

(assert (= (and d!1182882 (not res!1623918)) b!3998071))

(assert (= (and b!3998071 res!1623921) b!3998072))

(assert (= (and b!3998072 res!1623919) b!3998073))

(assert (= (and d!1182882 (not res!1623920)) b!3998074))

(declare-fun m!4579423 () Bool)

(assert (=> b!3998072 m!4579423))

(declare-fun m!4579425 () Bool)

(assert (=> b!3998072 m!4579425))

(declare-fun m!4579427 () Bool)

(assert (=> b!3998073 m!4579427))

(declare-fun m!4579429 () Bool)

(assert (=> b!3998073 m!4579429))

(assert (=> b!3998073 m!4579427))

(assert (=> b!3998073 m!4579429))

(declare-fun m!4579431 () Bool)

(assert (=> b!3998073 m!4579431))

(assert (=> b!3998074 m!4578841))

(assert (=> b!3998074 m!4578843))

(assert (=> b!3997625 d!1182882))

(declare-fun lt!1412564 () List!42882)

(declare-fun e!2478805 () Bool)

(declare-fun b!3998078 () Bool)

(assert (=> b!3998078 (= e!2478805 (or (not (= newSuffix!27 Nil!42758)) (= lt!1412564 prefix!494)))))

(declare-fun b!3998075 () Bool)

(declare-fun e!2478806 () List!42882)

(assert (=> b!3998075 (= e!2478806 newSuffix!27)))

(declare-fun d!1182884 () Bool)

(assert (=> d!1182884 e!2478805))

(declare-fun res!1623923 () Bool)

(assert (=> d!1182884 (=> (not res!1623923) (not e!2478805))))

(assert (=> d!1182884 (= res!1623923 (= (content!6487 lt!1412564) ((_ map or) (content!6487 prefix!494) (content!6487 newSuffix!27))))))

(assert (=> d!1182884 (= lt!1412564 e!2478806)))

(declare-fun c!691657 () Bool)

(assert (=> d!1182884 (= c!691657 ((_ is Nil!42758) prefix!494))))

(assert (=> d!1182884 (= (++!11180 prefix!494 newSuffix!27) lt!1412564)))

(declare-fun b!3998077 () Bool)

(declare-fun res!1623922 () Bool)

(assert (=> b!3998077 (=> (not res!1623922) (not e!2478805))))

(assert (=> b!3998077 (= res!1623922 (= (size!31976 lt!1412564) (+ (size!31976 prefix!494) (size!31976 newSuffix!27))))))

(declare-fun b!3998076 () Bool)

(assert (=> b!3998076 (= e!2478806 (Cons!42758 (h!48178 prefix!494) (++!11180 (t!332065 prefix!494) newSuffix!27)))))

(assert (= (and d!1182884 c!691657) b!3998075))

(assert (= (and d!1182884 (not c!691657)) b!3998076))

(assert (= (and d!1182884 res!1623923) b!3998077))

(assert (= (and b!3998077 res!1623922) b!3998078))

(declare-fun m!4579433 () Bool)

(assert (=> d!1182884 m!4579433))

(assert (=> d!1182884 m!4579215))

(declare-fun m!4579435 () Bool)

(assert (=> d!1182884 m!4579435))

(declare-fun m!4579437 () Bool)

(assert (=> b!3998077 m!4579437))

(assert (=> b!3998077 m!4578789))

(assert (=> b!3998077 m!4578843))

(declare-fun m!4579439 () Bool)

(assert (=> b!3998076 m!4579439))

(assert (=> b!3997646 d!1182884))

(declare-fun lt!1412565 () List!42882)

(declare-fun b!3998082 () Bool)

(declare-fun e!2478807 () Bool)

(assert (=> b!3998082 (= e!2478807 (or (not (= newSuffixResult!27 Nil!42758)) (= lt!1412565 lt!1412368)))))

(declare-fun b!3998079 () Bool)

(declare-fun e!2478808 () List!42882)

(assert (=> b!3998079 (= e!2478808 newSuffixResult!27)))

(declare-fun d!1182886 () Bool)

(assert (=> d!1182886 e!2478807))

(declare-fun res!1623925 () Bool)

(assert (=> d!1182886 (=> (not res!1623925) (not e!2478807))))

(assert (=> d!1182886 (= res!1623925 (= (content!6487 lt!1412565) ((_ map or) (content!6487 lt!1412368) (content!6487 newSuffixResult!27))))))

(assert (=> d!1182886 (= lt!1412565 e!2478808)))

(declare-fun c!691658 () Bool)

(assert (=> d!1182886 (= c!691658 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182886 (= (++!11180 lt!1412368 newSuffixResult!27) lt!1412565)))

(declare-fun b!3998081 () Bool)

(declare-fun res!1623924 () Bool)

(assert (=> b!3998081 (=> (not res!1623924) (not e!2478807))))

(assert (=> b!3998081 (= res!1623924 (= (size!31976 lt!1412565) (+ (size!31976 lt!1412368) (size!31976 newSuffixResult!27))))))

(declare-fun b!3998080 () Bool)

(assert (=> b!3998080 (= e!2478808 (Cons!42758 (h!48178 lt!1412368) (++!11180 (t!332065 lt!1412368) newSuffixResult!27)))))

(assert (= (and d!1182886 c!691658) b!3998079))

(assert (= (and d!1182886 (not c!691658)) b!3998080))

(assert (= (and d!1182886 res!1623925) b!3998081))

(assert (= (and b!3998081 res!1623924) b!3998082))

(declare-fun m!4579441 () Bool)

(assert (=> d!1182886 m!4579441))

(assert (=> d!1182886 m!4579155))

(assert (=> d!1182886 m!4579271))

(declare-fun m!4579443 () Bool)

(assert (=> b!3998081 m!4579443))

(assert (=> b!3998081 m!4578787))

(assert (=> b!3998081 m!4579275))

(declare-fun m!4579447 () Bool)

(assert (=> b!3998080 m!4579447))

(assert (=> b!3997646 d!1182886))

(declare-fun d!1182888 () Bool)

(declare-fun res!1623928 () Bool)

(declare-fun e!2478811 () Bool)

(assert (=> d!1182888 (=> (not res!1623928) (not e!2478811))))

(declare-fun rulesValid!2641 (LexerInterface!6367 List!42884) Bool)

(assert (=> d!1182888 (= res!1623928 (rulesValid!2641 thiss!21717 rules!2999))))

(assert (=> d!1182888 (= (rulesInvariant!5710 thiss!21717 rules!2999) e!2478811)))

(declare-fun b!3998085 () Bool)

(declare-datatypes ((List!42886 0))(
  ( (Nil!42762) (Cons!42762 (h!48182 String!48758) (t!332117 List!42886)) )
))
(declare-fun noDuplicateTag!2642 (LexerInterface!6367 List!42884 List!42886) Bool)

(assert (=> b!3998085 (= e!2478811 (noDuplicateTag!2642 thiss!21717 rules!2999 Nil!42762))))

(assert (= (and d!1182888 res!1623928) b!3998085))

(declare-fun m!4579491 () Bool)

(assert (=> d!1182888 m!4579491))

(declare-fun m!4579493 () Bool)

(assert (=> b!3998085 m!4579493))

(assert (=> b!3997667 d!1182888))

(declare-fun d!1182892 () Bool)

(declare-fun lt!1412566 () Int)

(assert (=> d!1182892 (>= lt!1412566 0)))

(declare-fun e!2478812 () Int)

(assert (=> d!1182892 (= lt!1412566 e!2478812)))

(declare-fun c!691659 () Bool)

(assert (=> d!1182892 (= c!691659 ((_ is Nil!42758) (originalCharacters!7378 token!484)))))

(assert (=> d!1182892 (= (size!31976 (originalCharacters!7378 token!484)) lt!1412566)))

(declare-fun b!3998086 () Bool)

(assert (=> b!3998086 (= e!2478812 0)))

(declare-fun b!3998087 () Bool)

(assert (=> b!3998087 (= e!2478812 (+ 1 (size!31976 (t!332065 (originalCharacters!7378 token!484)))))))

(assert (= (and d!1182892 c!691659) b!3998086))

(assert (= (and d!1182892 (not c!691659)) b!3998087))

(declare-fun m!4579495 () Bool)

(assert (=> b!3998087 m!4579495))

(assert (=> b!3997624 d!1182892))

(declare-fun e!2478813 () Bool)

(declare-fun b!3998091 () Bool)

(declare-fun lt!1412567 () List!42882)

(assert (=> b!3998091 (= e!2478813 (or (not (= lt!1412369 Nil!42758)) (= lt!1412567 lt!1412368)))))

(declare-fun b!3998088 () Bool)

(declare-fun e!2478814 () List!42882)

(assert (=> b!3998088 (= e!2478814 lt!1412369)))

(declare-fun d!1182894 () Bool)

(assert (=> d!1182894 e!2478813))

(declare-fun res!1623930 () Bool)

(assert (=> d!1182894 (=> (not res!1623930) (not e!2478813))))

(assert (=> d!1182894 (= res!1623930 (= (content!6487 lt!1412567) ((_ map or) (content!6487 lt!1412368) (content!6487 lt!1412369))))))

(assert (=> d!1182894 (= lt!1412567 e!2478814)))

(declare-fun c!691660 () Bool)

(assert (=> d!1182894 (= c!691660 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182894 (= (++!11180 lt!1412368 lt!1412369) lt!1412567)))

(declare-fun b!3998090 () Bool)

(declare-fun res!1623929 () Bool)

(assert (=> b!3998090 (=> (not res!1623929) (not e!2478813))))

(assert (=> b!3998090 (= res!1623929 (= (size!31976 lt!1412567) (+ (size!31976 lt!1412368) (size!31976 lt!1412369))))))

(declare-fun b!3998089 () Bool)

(assert (=> b!3998089 (= e!2478814 (Cons!42758 (h!48178 lt!1412368) (++!11180 (t!332065 lt!1412368) lt!1412369)))))

(assert (= (and d!1182894 c!691660) b!3998088))

(assert (= (and d!1182894 (not c!691660)) b!3998089))

(assert (= (and d!1182894 res!1623930) b!3998090))

(assert (= (and b!3998090 res!1623929) b!3998091))

(declare-fun m!4579497 () Bool)

(assert (=> d!1182894 m!4579497))

(assert (=> d!1182894 m!4579155))

(declare-fun m!4579499 () Bool)

(assert (=> d!1182894 m!4579499))

(declare-fun m!4579501 () Bool)

(assert (=> b!3998090 m!4579501))

(assert (=> b!3998090 m!4578787))

(declare-fun m!4579503 () Bool)

(assert (=> b!3998090 m!4579503))

(declare-fun m!4579505 () Bool)

(assert (=> b!3998089 m!4579505))

(assert (=> b!3997645 d!1182894))

(declare-fun d!1182896 () Bool)

(declare-fun lt!1412568 () List!42882)

(assert (=> d!1182896 (= (++!11180 lt!1412368 lt!1412568) prefix!494)))

(declare-fun e!2478815 () List!42882)

(assert (=> d!1182896 (= lt!1412568 e!2478815)))

(declare-fun c!691661 () Bool)

(assert (=> d!1182896 (= c!691661 ((_ is Cons!42758) lt!1412368))))

(assert (=> d!1182896 (>= (size!31976 prefix!494) (size!31976 lt!1412368))))

(assert (=> d!1182896 (= (getSuffix!2296 prefix!494 lt!1412368) lt!1412568)))

(declare-fun b!3998092 () Bool)

(assert (=> b!3998092 (= e!2478815 (getSuffix!2296 (tail!6233 prefix!494) (t!332065 lt!1412368)))))

(declare-fun b!3998093 () Bool)

(assert (=> b!3998093 (= e!2478815 prefix!494)))

(assert (= (and d!1182896 c!691661) b!3998092))

(assert (= (and d!1182896 (not c!691661)) b!3998093))

(declare-fun m!4579509 () Bool)

(assert (=> d!1182896 m!4579509))

(assert (=> d!1182896 m!4578789))

(assert (=> d!1182896 m!4578787))

(declare-fun m!4579511 () Bool)

(assert (=> b!3998092 m!4579511))

(assert (=> b!3998092 m!4579511))

(declare-fun m!4579513 () Bool)

(assert (=> b!3998092 m!4579513))

(assert (=> b!3997645 d!1182896))

(declare-fun b!3998095 () Bool)

(declare-fun res!1623932 () Bool)

(declare-fun e!2478817 () Bool)

(assert (=> b!3998095 (=> (not res!1623932) (not e!2478817))))

(assert (=> b!3998095 (= res!1623932 (= (head!8501 lt!1412368) (head!8501 prefix!494)))))

(declare-fun b!3998094 () Bool)

(declare-fun e!2478816 () Bool)

(assert (=> b!3998094 (= e!2478816 e!2478817)))

(declare-fun res!1623934 () Bool)

(assert (=> b!3998094 (=> (not res!1623934) (not e!2478817))))

(assert (=> b!3998094 (= res!1623934 (not ((_ is Nil!42758) prefix!494)))))

(declare-fun d!1182900 () Bool)

(declare-fun e!2478818 () Bool)

(assert (=> d!1182900 e!2478818))

(declare-fun res!1623933 () Bool)

(assert (=> d!1182900 (=> res!1623933 e!2478818)))

(declare-fun lt!1412569 () Bool)

(assert (=> d!1182900 (= res!1623933 (not lt!1412569))))

(assert (=> d!1182900 (= lt!1412569 e!2478816)))

(declare-fun res!1623931 () Bool)

(assert (=> d!1182900 (=> res!1623931 e!2478816)))

(assert (=> d!1182900 (= res!1623931 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182900 (= (isPrefix!3865 lt!1412368 prefix!494) lt!1412569)))

(declare-fun b!3998096 () Bool)

(assert (=> b!3998096 (= e!2478817 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 prefix!494)))))

(declare-fun b!3998097 () Bool)

(assert (=> b!3998097 (= e!2478818 (>= (size!31976 prefix!494) (size!31976 lt!1412368)))))

(assert (= (and d!1182900 (not res!1623931)) b!3998094))

(assert (= (and b!3998094 res!1623934) b!3998095))

(assert (= (and b!3998095 res!1623932) b!3998096))

(assert (= (and d!1182900 (not res!1623933)) b!3998097))

(assert (=> b!3998095 m!4579111))

(declare-fun m!4579515 () Bool)

(assert (=> b!3998095 m!4579515))

(assert (=> b!3998096 m!4579115))

(assert (=> b!3998096 m!4579511))

(assert (=> b!3998096 m!4579115))

(assert (=> b!3998096 m!4579511))

(declare-fun m!4579517 () Bool)

(assert (=> b!3998096 m!4579517))

(assert (=> b!3998097 m!4578789))

(assert (=> b!3998097 m!4578787))

(assert (=> b!3997645 d!1182900))

(declare-fun d!1182902 () Bool)

(assert (=> d!1182902 (isPrefix!3865 lt!1412368 prefix!494)))

(declare-fun lt!1412572 () Unit!61679)

(declare-fun choose!24113 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> d!1182902 (= lt!1412572 (choose!24113 prefix!494 lt!1412368 lt!1412394))))

(assert (=> d!1182902 (isPrefix!3865 prefix!494 lt!1412394)))

(assert (=> d!1182902 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!443 prefix!494 lt!1412368 lt!1412394) lt!1412572)))

(declare-fun bs!588719 () Bool)

(assert (= bs!588719 d!1182902))

(assert (=> bs!588719 m!4578779))

(declare-fun m!4579519 () Bool)

(assert (=> bs!588719 m!4579519))

(assert (=> bs!588719 m!4578863))

(assert (=> b!3997645 d!1182902))

(declare-fun d!1182904 () Bool)

(assert (=> d!1182904 (= (inv!57103 (tag!7638 (rule!9806 token!484))) (= (mod (str.len (value!213806 (tag!7638 (rule!9806 token!484)))) 2) 0))))

(assert (=> b!3997666 d!1182904))

(declare-fun d!1182906 () Bool)

(declare-fun res!1623935 () Bool)

(declare-fun e!2478819 () Bool)

(assert (=> d!1182906 (=> (not res!1623935) (not e!2478819))))

(assert (=> d!1182906 (= res!1623935 (semiInverseModEq!2907 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))))))

(assert (=> d!1182906 (= (inv!57106 (transformation!6778 (rule!9806 token!484))) e!2478819)))

(declare-fun b!3998098 () Bool)

(assert (=> b!3998098 (= e!2478819 (equivClasses!2806 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))))))

(assert (= (and d!1182906 res!1623935) b!3998098))

(assert (=> d!1182906 m!4579247))

(assert (=> b!3998098 m!4579249))

(assert (=> b!3997666 d!1182906))

(declare-fun d!1182908 () Bool)

(declare-fun lt!1412573 () Int)

(assert (=> d!1182908 (>= lt!1412573 0)))

(declare-fun e!2478820 () Int)

(assert (=> d!1182908 (= lt!1412573 e!2478820)))

(declare-fun c!691662 () Bool)

(assert (=> d!1182908 (= c!691662 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182908 (= (size!31976 lt!1412368) lt!1412573)))

(declare-fun b!3998099 () Bool)

(assert (=> b!3998099 (= e!2478820 0)))

(declare-fun b!3998100 () Bool)

(assert (=> b!3998100 (= e!2478820 (+ 1 (size!31976 (t!332065 lt!1412368))))))

(assert (= (and d!1182908 c!691662) b!3998099))

(assert (= (and d!1182908 (not c!691662)) b!3998100))

(declare-fun m!4579521 () Bool)

(assert (=> b!3998100 m!4579521))

(assert (=> b!3997644 d!1182908))

(declare-fun d!1182910 () Bool)

(declare-fun lt!1412574 () Int)

(assert (=> d!1182910 (>= lt!1412574 0)))

(declare-fun e!2478821 () Int)

(assert (=> d!1182910 (= lt!1412574 e!2478821)))

(declare-fun c!691663 () Bool)

(assert (=> d!1182910 (= c!691663 ((_ is Nil!42758) prefix!494))))

(assert (=> d!1182910 (= (size!31976 prefix!494) lt!1412574)))

(declare-fun b!3998101 () Bool)

(assert (=> b!3998101 (= e!2478821 0)))

(declare-fun b!3998102 () Bool)

(assert (=> b!3998102 (= e!2478821 (+ 1 (size!31976 (t!332065 prefix!494))))))

(assert (= (and d!1182910 c!691663) b!3998101))

(assert (= (and d!1182910 (not c!691663)) b!3998102))

(declare-fun m!4579523 () Bool)

(assert (=> b!3998102 m!4579523))

(assert (=> b!3997644 d!1182910))

(declare-fun d!1182912 () Bool)

(assert (=> d!1182912 (= (list!15878 (charsOf!4594 token!484)) (list!15880 (c!691582 (charsOf!4594 token!484))))))

(declare-fun bs!588720 () Bool)

(assert (= bs!588720 d!1182912))

(declare-fun m!4579525 () Bool)

(assert (=> bs!588720 m!4579525))

(assert (=> b!3997644 d!1182912))

(declare-fun d!1182914 () Bool)

(declare-fun lt!1412575 () BalanceConc!25572)

(assert (=> d!1182914 (= (list!15878 lt!1412575) (originalCharacters!7378 token!484))))

(assert (=> d!1182914 (= lt!1412575 (dynLambda!18151 (toChars!9125 (transformation!6778 (rule!9806 token!484))) (value!213807 token!484)))))

(assert (=> d!1182914 (= (charsOf!4594 token!484) lt!1412575)))

(declare-fun b_lambda!116665 () Bool)

(assert (=> (not b_lambda!116665) (not d!1182914)))

(assert (=> d!1182914 t!332069))

(declare-fun b_and!307035 () Bool)

(assert (= b_and!307031 (and (=> t!332069 result!291386) b_and!307035)))

(assert (=> d!1182914 t!332071))

(declare-fun b_and!307037 () Bool)

(assert (= b_and!307033 (and (=> t!332071 result!291390) b_and!307037)))

(declare-fun m!4579527 () Bool)

(assert (=> d!1182914 m!4579527))

(assert (=> d!1182914 m!4579263))

(assert (=> b!3997644 d!1182914))

(declare-fun e!2478822 () Bool)

(declare-fun b!3998106 () Bool)

(declare-fun lt!1412576 () List!42882)

(assert (=> b!3998106 (= e!2478822 (or (not (= lt!1412344 Nil!42758)) (= lt!1412576 prefix!494)))))

(declare-fun b!3998103 () Bool)

(declare-fun e!2478823 () List!42882)

(assert (=> b!3998103 (= e!2478823 lt!1412344)))

(declare-fun d!1182916 () Bool)

(assert (=> d!1182916 e!2478822))

(declare-fun res!1623937 () Bool)

(assert (=> d!1182916 (=> (not res!1623937) (not e!2478822))))

(assert (=> d!1182916 (= res!1623937 (= (content!6487 lt!1412576) ((_ map or) (content!6487 prefix!494) (content!6487 lt!1412344))))))

(assert (=> d!1182916 (= lt!1412576 e!2478823)))

(declare-fun c!691664 () Bool)

(assert (=> d!1182916 (= c!691664 ((_ is Nil!42758) prefix!494))))

(assert (=> d!1182916 (= (++!11180 prefix!494 lt!1412344) lt!1412576)))

(declare-fun b!3998105 () Bool)

(declare-fun res!1623936 () Bool)

(assert (=> b!3998105 (=> (not res!1623936) (not e!2478822))))

(assert (=> b!3998105 (= res!1623936 (= (size!31976 lt!1412576) (+ (size!31976 prefix!494) (size!31976 lt!1412344))))))

(declare-fun b!3998104 () Bool)

(assert (=> b!3998104 (= e!2478823 (Cons!42758 (h!48178 prefix!494) (++!11180 (t!332065 prefix!494) lt!1412344)))))

(assert (= (and d!1182916 c!691664) b!3998103))

(assert (= (and d!1182916 (not c!691664)) b!3998104))

(assert (= (and d!1182916 res!1623937) b!3998105))

(assert (= (and b!3998105 res!1623936) b!3998106))

(declare-fun m!4579529 () Bool)

(assert (=> d!1182916 m!4579529))

(assert (=> d!1182916 m!4579215))

(declare-fun m!4579531 () Bool)

(assert (=> d!1182916 m!4579531))

(declare-fun m!4579533 () Bool)

(assert (=> b!3998105 m!4579533))

(assert (=> b!3998105 m!4578789))

(declare-fun m!4579535 () Bool)

(assert (=> b!3998105 m!4579535))

(declare-fun m!4579537 () Bool)

(assert (=> b!3998104 m!4579537))

(assert (=> b!3997621 d!1182916))

(declare-fun b!3998110 () Bool)

(declare-fun e!2478824 () Bool)

(declare-fun lt!1412577 () List!42882)

(assert (=> b!3998110 (= e!2478824 (or (not (= lt!1412348 Nil!42758)) (= lt!1412577 lt!1412358)))))

(declare-fun b!3998107 () Bool)

(declare-fun e!2478825 () List!42882)

(assert (=> b!3998107 (= e!2478825 lt!1412348)))

(declare-fun d!1182918 () Bool)

(assert (=> d!1182918 e!2478824))

(declare-fun res!1623939 () Bool)

(assert (=> d!1182918 (=> (not res!1623939) (not e!2478824))))

(assert (=> d!1182918 (= res!1623939 (= (content!6487 lt!1412577) ((_ map or) (content!6487 lt!1412358) (content!6487 lt!1412348))))))

(assert (=> d!1182918 (= lt!1412577 e!2478825)))

(declare-fun c!691665 () Bool)

(assert (=> d!1182918 (= c!691665 ((_ is Nil!42758) lt!1412358))))

(assert (=> d!1182918 (= (++!11180 lt!1412358 lt!1412348) lt!1412577)))

(declare-fun b!3998109 () Bool)

(declare-fun res!1623938 () Bool)

(assert (=> b!3998109 (=> (not res!1623938) (not e!2478824))))

(assert (=> b!3998109 (= res!1623938 (= (size!31976 lt!1412577) (+ (size!31976 lt!1412358) (size!31976 lt!1412348))))))

(declare-fun b!3998108 () Bool)

(assert (=> b!3998108 (= e!2478825 (Cons!42758 (h!48178 lt!1412358) (++!11180 (t!332065 lt!1412358) lt!1412348)))))

(assert (= (and d!1182918 c!691665) b!3998107))

(assert (= (and d!1182918 (not c!691665)) b!3998108))

(assert (= (and d!1182918 res!1623939) b!3998109))

(assert (= (and b!3998109 res!1623938) b!3998110))

(declare-fun m!4579539 () Bool)

(assert (=> d!1182918 m!4579539))

(declare-fun m!4579541 () Bool)

(assert (=> d!1182918 m!4579541))

(declare-fun m!4579543 () Bool)

(assert (=> d!1182918 m!4579543))

(declare-fun m!4579545 () Bool)

(assert (=> b!3998109 m!4579545))

(assert (=> b!3998109 m!4579073))

(declare-fun m!4579547 () Bool)

(assert (=> b!3998109 m!4579547))

(declare-fun m!4579549 () Bool)

(assert (=> b!3998108 m!4579549))

(assert (=> b!3997621 d!1182918))

(declare-fun d!1182920 () Bool)

(assert (=> d!1182920 (= (++!11180 (++!11180 prefix!494 newSuffix!27) lt!1412348) (++!11180 prefix!494 (++!11180 newSuffix!27 lt!1412348)))))

(declare-fun lt!1412580 () Unit!61679)

(declare-fun choose!24114 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> d!1182920 (= lt!1412580 (choose!24114 prefix!494 newSuffix!27 lt!1412348))))

(assert (=> d!1182920 (= (lemmaConcatAssociativity!2500 prefix!494 newSuffix!27 lt!1412348) lt!1412580)))

(declare-fun bs!588721 () Bool)

(assert (= bs!588721 d!1182920))

(assert (=> bs!588721 m!4578797))

(assert (=> bs!588721 m!4578797))

(declare-fun m!4579551 () Bool)

(assert (=> bs!588721 m!4579551))

(assert (=> bs!588721 m!4578827))

(declare-fun m!4579553 () Bool)

(assert (=> bs!588721 m!4579553))

(declare-fun m!4579555 () Bool)

(assert (=> bs!588721 m!4579555))

(assert (=> bs!588721 m!4578827))

(assert (=> b!3997621 d!1182920))

(declare-fun b!3998112 () Bool)

(declare-fun res!1623941 () Bool)

(declare-fun e!2478827 () Bool)

(assert (=> b!3998112 (=> (not res!1623941) (not e!2478827))))

(assert (=> b!3998112 (= res!1623941 (= (head!8501 lt!1412368) (head!8501 lt!1412394)))))

(declare-fun b!3998111 () Bool)

(declare-fun e!2478826 () Bool)

(assert (=> b!3998111 (= e!2478826 e!2478827)))

(declare-fun res!1623943 () Bool)

(assert (=> b!3998111 (=> (not res!1623943) (not e!2478827))))

(assert (=> b!3998111 (= res!1623943 (not ((_ is Nil!42758) lt!1412394)))))

(declare-fun d!1182922 () Bool)

(declare-fun e!2478828 () Bool)

(assert (=> d!1182922 e!2478828))

(declare-fun res!1623942 () Bool)

(assert (=> d!1182922 (=> res!1623942 e!2478828)))

(declare-fun lt!1412581 () Bool)

(assert (=> d!1182922 (= res!1623942 (not lt!1412581))))

(assert (=> d!1182922 (= lt!1412581 e!2478826)))

(declare-fun res!1623940 () Bool)

(assert (=> d!1182922 (=> res!1623940 e!2478826)))

(assert (=> d!1182922 (= res!1623940 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182922 (= (isPrefix!3865 lt!1412368 lt!1412394) lt!1412581)))

(declare-fun b!3998113 () Bool)

(assert (=> b!3998113 (= e!2478827 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 lt!1412394)))))

(declare-fun b!3998114 () Bool)

(assert (=> b!3998114 (= e!2478828 (>= (size!31976 lt!1412394) (size!31976 lt!1412368)))))

(assert (= (and d!1182922 (not res!1623940)) b!3998111))

(assert (= (and b!3998111 res!1623943) b!3998112))

(assert (= (and b!3998112 res!1623941) b!3998113))

(assert (= (and d!1182922 (not res!1623942)) b!3998114))

(assert (=> b!3998112 m!4579111))

(assert (=> b!3998112 m!4579173))

(assert (=> b!3998113 m!4579115))

(assert (=> b!3998113 m!4579169))

(assert (=> b!3998113 m!4579115))

(assert (=> b!3998113 m!4579169))

(declare-fun m!4579557 () Bool)

(assert (=> b!3998113 m!4579557))

(assert (=> b!3998114 m!4579167))

(assert (=> b!3998114 m!4578787))

(assert (=> b!3997642 d!1182922))

(declare-fun b!3998116 () Bool)

(declare-fun res!1623945 () Bool)

(declare-fun e!2478830 () Bool)

(assert (=> b!3998116 (=> (not res!1623945) (not e!2478830))))

(assert (=> b!3998116 (= res!1623945 (= (head!8501 lt!1412368) (head!8501 lt!1412380)))))

(declare-fun b!3998115 () Bool)

(declare-fun e!2478829 () Bool)

(assert (=> b!3998115 (= e!2478829 e!2478830)))

(declare-fun res!1623947 () Bool)

(assert (=> b!3998115 (=> (not res!1623947) (not e!2478830))))

(assert (=> b!3998115 (= res!1623947 (not ((_ is Nil!42758) lt!1412380)))))

(declare-fun d!1182924 () Bool)

(declare-fun e!2478831 () Bool)

(assert (=> d!1182924 e!2478831))

(declare-fun res!1623946 () Bool)

(assert (=> d!1182924 (=> res!1623946 e!2478831)))

(declare-fun lt!1412582 () Bool)

(assert (=> d!1182924 (= res!1623946 (not lt!1412582))))

(assert (=> d!1182924 (= lt!1412582 e!2478829)))

(declare-fun res!1623944 () Bool)

(assert (=> d!1182924 (=> res!1623944 e!2478829)))

(assert (=> d!1182924 (= res!1623944 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1182924 (= (isPrefix!3865 lt!1412368 lt!1412380) lt!1412582)))

(declare-fun b!3998117 () Bool)

(assert (=> b!3998117 (= e!2478830 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 lt!1412380)))))

(declare-fun b!3998118 () Bool)

(assert (=> b!3998118 (= e!2478831 (>= (size!31976 lt!1412380) (size!31976 lt!1412368)))))

(assert (= (and d!1182924 (not res!1623944)) b!3998115))

(assert (= (and b!3998115 res!1623947) b!3998116))

(assert (= (and b!3998116 res!1623945) b!3998117))

(assert (= (and d!1182924 (not res!1623946)) b!3998118))

(assert (=> b!3998116 m!4579111))

(declare-fun m!4579559 () Bool)

(assert (=> b!3998116 m!4579559))

(assert (=> b!3998117 m!4579115))

(declare-fun m!4579561 () Bool)

(assert (=> b!3998117 m!4579561))

(assert (=> b!3998117 m!4579115))

(assert (=> b!3998117 m!4579561))

(declare-fun m!4579563 () Bool)

(assert (=> b!3998117 m!4579563))

(declare-fun m!4579565 () Bool)

(assert (=> b!3998118 m!4579565))

(assert (=> b!3998118 m!4578787))

(assert (=> b!3997642 d!1182924))

(declare-fun d!1182926 () Bool)

(assert (=> d!1182926 (isPrefix!3865 lt!1412368 (++!11180 lt!1412368 suffixResult!105))))

(declare-fun lt!1412583 () Unit!61679)

(assert (=> d!1182926 (= lt!1412583 (choose!24101 lt!1412368 suffixResult!105))))

(assert (=> d!1182926 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 suffixResult!105) lt!1412583)))

(declare-fun bs!588722 () Bool)

(assert (= bs!588722 d!1182926))

(assert (=> bs!588722 m!4578803))

(assert (=> bs!588722 m!4578803))

(declare-fun m!4579567 () Bool)

(assert (=> bs!588722 m!4579567))

(declare-fun m!4579569 () Bool)

(assert (=> bs!588722 m!4579569))

(assert (=> b!3997642 d!1182926))

(declare-fun d!1182928 () Bool)

(assert (=> d!1182928 (isPrefix!3865 prefix!494 (++!11180 prefix!494 suffix!1299))))

(declare-fun lt!1412584 () Unit!61679)

(assert (=> d!1182928 (= lt!1412584 (choose!24101 prefix!494 suffix!1299))))

(assert (=> d!1182928 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 prefix!494 suffix!1299) lt!1412584)))

(declare-fun bs!588723 () Bool)

(assert (= bs!588723 d!1182928))

(assert (=> bs!588723 m!4578833))

(assert (=> bs!588723 m!4578833))

(declare-fun m!4579571 () Bool)

(assert (=> bs!588723 m!4579571))

(declare-fun m!4579573 () Bool)

(assert (=> bs!588723 m!4579573))

(assert (=> b!3997642 d!1182928))

(declare-fun b!3998120 () Bool)

(declare-fun res!1623949 () Bool)

(declare-fun e!2478833 () Bool)

(assert (=> b!3998120 (=> (not res!1623949) (not e!2478833))))

(assert (=> b!3998120 (= res!1623949 (= (head!8501 prefix!494) (head!8501 lt!1412394)))))

(declare-fun b!3998119 () Bool)

(declare-fun e!2478832 () Bool)

(assert (=> b!3998119 (= e!2478832 e!2478833)))

(declare-fun res!1623951 () Bool)

(assert (=> b!3998119 (=> (not res!1623951) (not e!2478833))))

(assert (=> b!3998119 (= res!1623951 (not ((_ is Nil!42758) lt!1412394)))))

(declare-fun d!1182930 () Bool)

(declare-fun e!2478834 () Bool)

(assert (=> d!1182930 e!2478834))

(declare-fun res!1623950 () Bool)

(assert (=> d!1182930 (=> res!1623950 e!2478834)))

(declare-fun lt!1412585 () Bool)

(assert (=> d!1182930 (= res!1623950 (not lt!1412585))))

(assert (=> d!1182930 (= lt!1412585 e!2478832)))

(declare-fun res!1623948 () Bool)

(assert (=> d!1182930 (=> res!1623948 e!2478832)))

(assert (=> d!1182930 (= res!1623948 ((_ is Nil!42758) prefix!494))))

(assert (=> d!1182930 (= (isPrefix!3865 prefix!494 lt!1412394) lt!1412585)))

(declare-fun b!3998121 () Bool)

(assert (=> b!3998121 (= e!2478833 (isPrefix!3865 (tail!6233 prefix!494) (tail!6233 lt!1412394)))))

(declare-fun b!3998122 () Bool)

(assert (=> b!3998122 (= e!2478834 (>= (size!31976 lt!1412394) (size!31976 prefix!494)))))

(assert (= (and d!1182930 (not res!1623948)) b!3998119))

(assert (= (and b!3998119 res!1623951) b!3998120))

(assert (= (and b!3998120 res!1623949) b!3998121))

(assert (= (and d!1182930 (not res!1623950)) b!3998122))

(assert (=> b!3998120 m!4579515))

(assert (=> b!3998120 m!4579173))

(assert (=> b!3998121 m!4579511))

(assert (=> b!3998121 m!4579169))

(assert (=> b!3998121 m!4579511))

(assert (=> b!3998121 m!4579169))

(declare-fun m!4579575 () Bool)

(assert (=> b!3998121 m!4579575))

(assert (=> b!3998122 m!4579167))

(assert (=> b!3998122 m!4578789))

(assert (=> b!3997642 d!1182930))

(declare-fun d!1182932 () Bool)

(assert (=> d!1182932 true))

(declare-fun lt!1412684 () Bool)

(declare-fun lambda!126899 () Int)

(declare-fun forall!8341 (List!42884 Int) Bool)

(assert (=> d!1182932 (= lt!1412684 (forall!8341 rules!2999 lambda!126899))))

(declare-fun e!2478991 () Bool)

(assert (=> d!1182932 (= lt!1412684 e!2478991)))

(declare-fun res!1624101 () Bool)

(assert (=> d!1182932 (=> res!1624101 e!2478991)))

(assert (=> d!1182932 (= res!1624101 (not ((_ is Cons!42760) rules!2999)))))

(assert (=> d!1182932 (= (rulesValidInductive!2467 thiss!21717 rules!2999) lt!1412684)))

(declare-fun b!3998397 () Bool)

(declare-fun e!2478992 () Bool)

(assert (=> b!3998397 (= e!2478991 e!2478992)))

(declare-fun res!1624100 () Bool)

(assert (=> b!3998397 (=> (not res!1624100) (not e!2478992))))

(assert (=> b!3998397 (= res!1624100 (ruleValid!2710 thiss!21717 (h!48180 rules!2999)))))

(declare-fun b!3998398 () Bool)

(assert (=> b!3998398 (= e!2478992 (rulesValidInductive!2467 thiss!21717 (t!332067 rules!2999)))))

(assert (= (and d!1182932 (not res!1624101)) b!3998397))

(assert (= (and b!3998397 res!1624100) b!3998398))

(declare-fun m!4580009 () Bool)

(assert (=> d!1182932 m!4580009))

(declare-fun m!4580011 () Bool)

(assert (=> b!3998397 m!4580011))

(declare-fun m!4580013 () Bool)

(assert (=> b!3998398 m!4580013))

(assert (=> b!3997663 d!1182932))

(declare-fun b!3998404 () Bool)

(declare-fun e!2478993 () Bool)

(declare-fun lt!1412685 () List!42882)

(assert (=> b!3998404 (= e!2478993 (or (not (= lt!1412378 Nil!42758)) (= lt!1412685 lt!1412368)))))

(declare-fun b!3998401 () Bool)

(declare-fun e!2478994 () List!42882)

(assert (=> b!3998401 (= e!2478994 lt!1412378)))

(declare-fun d!1183072 () Bool)

(assert (=> d!1183072 e!2478993))

(declare-fun res!1624103 () Bool)

(assert (=> d!1183072 (=> (not res!1624103) (not e!2478993))))

(assert (=> d!1183072 (= res!1624103 (= (content!6487 lt!1412685) ((_ map or) (content!6487 lt!1412368) (content!6487 lt!1412378))))))

(assert (=> d!1183072 (= lt!1412685 e!2478994)))

(declare-fun c!691709 () Bool)

(assert (=> d!1183072 (= c!691709 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1183072 (= (++!11180 lt!1412368 lt!1412378) lt!1412685)))

(declare-fun b!3998403 () Bool)

(declare-fun res!1624102 () Bool)

(assert (=> b!3998403 (=> (not res!1624102) (not e!2478993))))

(assert (=> b!3998403 (= res!1624102 (= (size!31976 lt!1412685) (+ (size!31976 lt!1412368) (size!31976 lt!1412378))))))

(declare-fun b!3998402 () Bool)

(assert (=> b!3998402 (= e!2478994 (Cons!42758 (h!48178 lt!1412368) (++!11180 (t!332065 lt!1412368) lt!1412378)))))

(assert (= (and d!1183072 c!691709) b!3998401))

(assert (= (and d!1183072 (not c!691709)) b!3998402))

(assert (= (and d!1183072 res!1624103) b!3998403))

(assert (= (and b!3998403 res!1624102) b!3998404))

(declare-fun m!4580015 () Bool)

(assert (=> d!1183072 m!4580015))

(assert (=> d!1183072 m!4579155))

(declare-fun m!4580017 () Bool)

(assert (=> d!1183072 m!4580017))

(declare-fun m!4580019 () Bool)

(assert (=> b!3998403 m!4580019))

(assert (=> b!3998403 m!4578787))

(declare-fun m!4580021 () Bool)

(assert (=> b!3998403 m!4580021))

(declare-fun m!4580023 () Bool)

(assert (=> b!3998402 m!4580023))

(assert (=> b!3997641 d!1183072))

(declare-fun e!2478995 () Bool)

(declare-fun lt!1412686 () List!42882)

(declare-fun b!3998408 () Bool)

(assert (=> b!3998408 (= e!2478995 (or (not (= suffix!1299 Nil!42758)) (= lt!1412686 lt!1412347)))))

(declare-fun b!3998405 () Bool)

(declare-fun e!2478996 () List!42882)

(assert (=> b!3998405 (= e!2478996 suffix!1299)))

(declare-fun d!1183074 () Bool)

(assert (=> d!1183074 e!2478995))

(declare-fun res!1624105 () Bool)

(assert (=> d!1183074 (=> (not res!1624105) (not e!2478995))))

(assert (=> d!1183074 (= res!1624105 (= (content!6487 lt!1412686) ((_ map or) (content!6487 lt!1412347) (content!6487 suffix!1299))))))

(assert (=> d!1183074 (= lt!1412686 e!2478996)))

(declare-fun c!691710 () Bool)

(assert (=> d!1183074 (= c!691710 ((_ is Nil!42758) lt!1412347))))

(assert (=> d!1183074 (= (++!11180 lt!1412347 suffix!1299) lt!1412686)))

(declare-fun b!3998407 () Bool)

(declare-fun res!1624104 () Bool)

(assert (=> b!3998407 (=> (not res!1624104) (not e!2478995))))

(assert (=> b!3998407 (= res!1624104 (= (size!31976 lt!1412686) (+ (size!31976 lt!1412347) (size!31976 suffix!1299))))))

(declare-fun b!3998406 () Bool)

(assert (=> b!3998406 (= e!2478996 (Cons!42758 (h!48178 lt!1412347) (++!11180 (t!332065 lt!1412347) suffix!1299)))))

(assert (= (and d!1183074 c!691710) b!3998405))

(assert (= (and d!1183074 (not c!691710)) b!3998406))

(assert (= (and d!1183074 res!1624105) b!3998407))

(assert (= (and b!3998407 res!1624104) b!3998408))

(declare-fun m!4580025 () Bool)

(assert (=> d!1183074 m!4580025))

(declare-fun m!4580027 () Bool)

(assert (=> d!1183074 m!4580027))

(assert (=> d!1183074 m!4579217))

(declare-fun m!4580029 () Bool)

(assert (=> b!3998407 m!4580029))

(declare-fun m!4580031 () Bool)

(assert (=> b!3998407 m!4580031))

(assert (=> b!3998407 m!4578841))

(declare-fun m!4580033 () Bool)

(assert (=> b!3998406 m!4580033))

(assert (=> b!3997641 d!1183074))

(declare-fun e!2478997 () Bool)

(declare-fun b!3998412 () Bool)

(declare-fun lt!1412687 () List!42882)

(assert (=> b!3998412 (= e!2478997 (or (not (= suffix!1299 Nil!42758)) (= lt!1412687 lt!1412369)))))

(declare-fun b!3998409 () Bool)

(declare-fun e!2478998 () List!42882)

(assert (=> b!3998409 (= e!2478998 suffix!1299)))

(declare-fun d!1183076 () Bool)

(assert (=> d!1183076 e!2478997))

(declare-fun res!1624107 () Bool)

(assert (=> d!1183076 (=> (not res!1624107) (not e!2478997))))

(assert (=> d!1183076 (= res!1624107 (= (content!6487 lt!1412687) ((_ map or) (content!6487 lt!1412369) (content!6487 suffix!1299))))))

(assert (=> d!1183076 (= lt!1412687 e!2478998)))

(declare-fun c!691711 () Bool)

(assert (=> d!1183076 (= c!691711 ((_ is Nil!42758) lt!1412369))))

(assert (=> d!1183076 (= (++!11180 lt!1412369 suffix!1299) lt!1412687)))

(declare-fun b!3998411 () Bool)

(declare-fun res!1624106 () Bool)

(assert (=> b!3998411 (=> (not res!1624106) (not e!2478997))))

(assert (=> b!3998411 (= res!1624106 (= (size!31976 lt!1412687) (+ (size!31976 lt!1412369) (size!31976 suffix!1299))))))

(declare-fun b!3998410 () Bool)

(assert (=> b!3998410 (= e!2478998 (Cons!42758 (h!48178 lt!1412369) (++!11180 (t!332065 lt!1412369) suffix!1299)))))

(assert (= (and d!1183076 c!691711) b!3998409))

(assert (= (and d!1183076 (not c!691711)) b!3998410))

(assert (= (and d!1183076 res!1624107) b!3998411))

(assert (= (and b!3998411 res!1624106) b!3998412))

(declare-fun m!4580035 () Bool)

(assert (=> d!1183076 m!4580035))

(assert (=> d!1183076 m!4579499))

(assert (=> d!1183076 m!4579217))

(declare-fun m!4580037 () Bool)

(assert (=> b!3998411 m!4580037))

(assert (=> b!3998411 m!4579503))

(assert (=> b!3998411 m!4578841))

(declare-fun m!4580039 () Bool)

(assert (=> b!3998410 m!4580039))

(assert (=> b!3997641 d!1183076))

(declare-fun d!1183078 () Bool)

(assert (=> d!1183078 (= (++!11180 (++!11180 lt!1412368 lt!1412369) suffix!1299) (++!11180 lt!1412368 (++!11180 lt!1412369 suffix!1299)))))

(declare-fun lt!1412688 () Unit!61679)

(assert (=> d!1183078 (= lt!1412688 (choose!24114 lt!1412368 lt!1412369 suffix!1299))))

(assert (=> d!1183078 (= (lemmaConcatAssociativity!2500 lt!1412368 lt!1412369 suffix!1299) lt!1412688)))

(declare-fun bs!588749 () Bool)

(assert (= bs!588749 d!1183078))

(assert (=> bs!588749 m!4578775))

(assert (=> bs!588749 m!4578775))

(declare-fun m!4580041 () Bool)

(assert (=> bs!588749 m!4580041))

(assert (=> bs!588749 m!4578951))

(declare-fun m!4580043 () Bool)

(assert (=> bs!588749 m!4580043))

(declare-fun m!4580045 () Bool)

(assert (=> bs!588749 m!4580045))

(assert (=> bs!588749 m!4578951))

(assert (=> b!3997641 d!1183078))

(declare-fun d!1183080 () Bool)

(assert (=> d!1183080 (not (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412368))))

(declare-fun lt!1412691 () Unit!61679)

(declare-fun choose!24116 (LexerInterface!6367 List!42884 Rule!13356 List!42882 List!42882 Rule!13356) Unit!61679)

(assert (=> d!1183080 (= lt!1412691 (choose!24116 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1183080 (isPrefix!3865 lt!1412368 lt!1412394)))

(assert (=> d!1183080 (= (lemmaMaxPrefNoSmallerRuleMatches!274 thiss!21717 rules!2999 (rule!9806 token!484) lt!1412368 lt!1412394 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412691)))

(declare-fun bs!588750 () Bool)

(assert (= bs!588750 d!1183080))

(assert (=> bs!588750 m!4578857))

(declare-fun m!4580047 () Bool)

(assert (=> bs!588750 m!4580047))

(assert (=> bs!588750 m!4578867))

(assert (=> b!3997640 d!1183080))

(declare-fun b!3998413 () Bool)

(declare-fun e!2478999 () Bool)

(assert (=> b!3998413 (= e!2478999 (nullable!4100 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun b!3998414 () Bool)

(declare-fun e!2479001 () Bool)

(declare-fun lt!1412692 () Bool)

(assert (=> b!3998414 (= e!2479001 (not lt!1412692))))

(declare-fun b!3998415 () Bool)

(declare-fun e!2479004 () Bool)

(assert (=> b!3998415 (= e!2479004 e!2479001)))

(declare-fun c!691713 () Bool)

(assert (=> b!3998415 (= c!691713 ((_ is EmptyLang!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(declare-fun bm!285951 () Bool)

(declare-fun call!285956 () Bool)

(assert (=> bm!285951 (= call!285956 (isEmpty!25558 lt!1412368))))

(declare-fun b!3998416 () Bool)

(declare-fun e!2479002 () Bool)

(assert (=> b!3998416 (= e!2479002 (= (head!8501 lt!1412368) (c!691583 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(declare-fun b!3998417 () Bool)

(declare-fun res!1624109 () Bool)

(declare-fun e!2479000 () Bool)

(assert (=> b!3998417 (=> res!1624109 e!2479000)))

(assert (=> b!3998417 (= res!1624109 (not ((_ is ElementMatch!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))))

(assert (=> b!3998417 (= e!2479001 e!2479000)))

(declare-fun d!1183082 () Bool)

(assert (=> d!1183082 e!2479004))

(declare-fun c!691714 () Bool)

(assert (=> d!1183082 (= c!691714 ((_ is EmptyExpr!11683) (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))

(assert (=> d!1183082 (= lt!1412692 e!2478999)))

(declare-fun c!691712 () Bool)

(assert (=> d!1183082 (= c!691712 (isEmpty!25558 lt!1412368))))

(assert (=> d!1183082 (validRegex!5300 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))))

(assert (=> d!1183082 (= (matchR!5660 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) lt!1412368) lt!1412692)))

(declare-fun b!3998418 () Bool)

(assert (=> b!3998418 (= e!2478999 (matchR!5660 (derivativeStep!3511 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))) (head!8501 lt!1412368)) (tail!6233 lt!1412368)))))

(declare-fun b!3998419 () Bool)

(declare-fun res!1624114 () Bool)

(assert (=> b!3998419 (=> (not res!1624114) (not e!2479002))))

(assert (=> b!3998419 (= res!1624114 (not call!285956))))

(declare-fun b!3998420 () Bool)

(declare-fun res!1624112 () Bool)

(assert (=> b!3998420 (=> res!1624112 e!2479000)))

(assert (=> b!3998420 (= res!1624112 e!2479002)))

(declare-fun res!1624110 () Bool)

(assert (=> b!3998420 (=> (not res!1624110) (not e!2479002))))

(assert (=> b!3998420 (= res!1624110 lt!1412692)))

(declare-fun b!3998421 () Bool)

(declare-fun e!2479005 () Bool)

(assert (=> b!3998421 (= e!2479000 e!2479005)))

(declare-fun res!1624111 () Bool)

(assert (=> b!3998421 (=> (not res!1624111) (not e!2479005))))

(assert (=> b!3998421 (= res!1624111 (not lt!1412692))))

(declare-fun b!3998422 () Bool)

(declare-fun res!1624113 () Bool)

(declare-fun e!2479003 () Bool)

(assert (=> b!3998422 (=> res!1624113 e!2479003)))

(assert (=> b!3998422 (= res!1624113 (not (isEmpty!25558 (tail!6233 lt!1412368))))))

(declare-fun b!3998423 () Bool)

(assert (=> b!3998423 (= e!2479003 (not (= (head!8501 lt!1412368) (c!691583 (regex!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381))))))))))

(declare-fun b!3998424 () Bool)

(declare-fun res!1624115 () Bool)

(assert (=> b!3998424 (=> (not res!1624115) (not e!2479002))))

(assert (=> b!3998424 (= res!1624115 (isEmpty!25558 (tail!6233 lt!1412368)))))

(declare-fun b!3998425 () Bool)

(assert (=> b!3998425 (= e!2479005 e!2479003)))

(declare-fun res!1624108 () Bool)

(assert (=> b!3998425 (=> res!1624108 e!2479003)))

(assert (=> b!3998425 (= res!1624108 call!285956)))

(declare-fun b!3998426 () Bool)

(assert (=> b!3998426 (= e!2479004 (= lt!1412692 call!285956))))

(assert (= (and d!1183082 c!691712) b!3998413))

(assert (= (and d!1183082 (not c!691712)) b!3998418))

(assert (= (and d!1183082 c!691714) b!3998426))

(assert (= (and d!1183082 (not c!691714)) b!3998415))

(assert (= (and b!3998415 c!691713) b!3998414))

(assert (= (and b!3998415 (not c!691713)) b!3998417))

(assert (= (and b!3998417 (not res!1624109)) b!3998420))

(assert (= (and b!3998420 res!1624110) b!3998419))

(assert (= (and b!3998419 res!1624114) b!3998424))

(assert (= (and b!3998424 res!1624115) b!3998416))

(assert (= (and b!3998420 (not res!1624112)) b!3998421))

(assert (= (and b!3998421 res!1624111) b!3998425))

(assert (= (and b!3998425 (not res!1624108)) b!3998422))

(assert (= (and b!3998422 (not res!1624113)) b!3998423))

(assert (= (or b!3998426 b!3998425 b!3998419) bm!285951))

(assert (=> b!3998418 m!4579111))

(assert (=> b!3998418 m!4579111))

(declare-fun m!4580049 () Bool)

(assert (=> b!3998418 m!4580049))

(assert (=> b!3998418 m!4579115))

(assert (=> b!3998418 m!4580049))

(assert (=> b!3998418 m!4579115))

(declare-fun m!4580051 () Bool)

(assert (=> b!3998418 m!4580051))

(declare-fun m!4580053 () Bool)

(assert (=> bm!285951 m!4580053))

(assert (=> b!3998424 m!4579115))

(assert (=> b!3998424 m!4579115))

(declare-fun m!4580055 () Bool)

(assert (=> b!3998424 m!4580055))

(assert (=> b!3998422 m!4579115))

(assert (=> b!3998422 m!4579115))

(assert (=> b!3998422 m!4580055))

(assert (=> b!3998423 m!4579111))

(assert (=> b!3998413 m!4579233))

(assert (=> d!1183082 m!4580053))

(assert (=> d!1183082 m!4579235))

(assert (=> b!3998416 m!4579111))

(assert (=> b!3997640 d!1183082))

(declare-fun d!1183084 () Bool)

(assert (=> d!1183084 (not (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412396))))

(declare-fun lt!1412693 () Unit!61679)

(assert (=> d!1183084 (= lt!1412693 (choose!24116 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 (rule!9806 token!484)))))

(assert (=> d!1183084 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1183084 (= (lemmaMaxPrefNoSmallerRuleMatches!274 thiss!21717 rules!2999 (rule!9806 (_1!24107 (v!39551 lt!1412381))) lt!1412396 lt!1412358 (rule!9806 token!484)) lt!1412693)))

(declare-fun bs!588751 () Bool)

(assert (= bs!588751 d!1183084))

(assert (=> bs!588751 m!4578941))

(declare-fun m!4580057 () Bool)

(assert (=> bs!588751 m!4580057))

(assert (=> bs!588751 m!4578859))

(assert (=> b!3997661 d!1183084))

(declare-fun b!3998427 () Bool)

(declare-fun e!2479006 () Bool)

(assert (=> b!3998427 (= e!2479006 (nullable!4100 (regex!6778 (rule!9806 token!484))))))

(declare-fun b!3998428 () Bool)

(declare-fun e!2479008 () Bool)

(declare-fun lt!1412694 () Bool)

(assert (=> b!3998428 (= e!2479008 (not lt!1412694))))

(declare-fun b!3998429 () Bool)

(declare-fun e!2479011 () Bool)

(assert (=> b!3998429 (= e!2479011 e!2479008)))

(declare-fun c!691716 () Bool)

(assert (=> b!3998429 (= c!691716 ((_ is EmptyLang!11683) (regex!6778 (rule!9806 token!484))))))

(declare-fun bm!285952 () Bool)

(declare-fun call!285957 () Bool)

(assert (=> bm!285952 (= call!285957 (isEmpty!25558 lt!1412396))))

(declare-fun b!3998430 () Bool)

(declare-fun e!2479009 () Bool)

(assert (=> b!3998430 (= e!2479009 (= (head!8501 lt!1412396) (c!691583 (regex!6778 (rule!9806 token!484)))))))

(declare-fun b!3998431 () Bool)

(declare-fun res!1624117 () Bool)

(declare-fun e!2479007 () Bool)

(assert (=> b!3998431 (=> res!1624117 e!2479007)))

(assert (=> b!3998431 (= res!1624117 (not ((_ is ElementMatch!11683) (regex!6778 (rule!9806 token!484)))))))

(assert (=> b!3998431 (= e!2479008 e!2479007)))

(declare-fun d!1183086 () Bool)

(assert (=> d!1183086 e!2479011))

(declare-fun c!691717 () Bool)

(assert (=> d!1183086 (= c!691717 ((_ is EmptyExpr!11683) (regex!6778 (rule!9806 token!484))))))

(assert (=> d!1183086 (= lt!1412694 e!2479006)))

(declare-fun c!691715 () Bool)

(assert (=> d!1183086 (= c!691715 (isEmpty!25558 lt!1412396))))

(assert (=> d!1183086 (validRegex!5300 (regex!6778 (rule!9806 token!484)))))

(assert (=> d!1183086 (= (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412396) lt!1412694)))

(declare-fun b!3998432 () Bool)

(assert (=> b!3998432 (= e!2479006 (matchR!5660 (derivativeStep!3511 (regex!6778 (rule!9806 token!484)) (head!8501 lt!1412396)) (tail!6233 lt!1412396)))))

(declare-fun b!3998433 () Bool)

(declare-fun res!1624122 () Bool)

(assert (=> b!3998433 (=> (not res!1624122) (not e!2479009))))

(assert (=> b!3998433 (= res!1624122 (not call!285957))))

(declare-fun b!3998434 () Bool)

(declare-fun res!1624120 () Bool)

(assert (=> b!3998434 (=> res!1624120 e!2479007)))

(assert (=> b!3998434 (= res!1624120 e!2479009)))

(declare-fun res!1624118 () Bool)

(assert (=> b!3998434 (=> (not res!1624118) (not e!2479009))))

(assert (=> b!3998434 (= res!1624118 lt!1412694)))

(declare-fun b!3998435 () Bool)

(declare-fun e!2479012 () Bool)

(assert (=> b!3998435 (= e!2479007 e!2479012)))

(declare-fun res!1624119 () Bool)

(assert (=> b!3998435 (=> (not res!1624119) (not e!2479012))))

(assert (=> b!3998435 (= res!1624119 (not lt!1412694))))

(declare-fun b!3998436 () Bool)

(declare-fun res!1624121 () Bool)

(declare-fun e!2479010 () Bool)

(assert (=> b!3998436 (=> res!1624121 e!2479010)))

(assert (=> b!3998436 (= res!1624121 (not (isEmpty!25558 (tail!6233 lt!1412396))))))

(declare-fun b!3998437 () Bool)

(assert (=> b!3998437 (= e!2479010 (not (= (head!8501 lt!1412396) (c!691583 (regex!6778 (rule!9806 token!484))))))))

(declare-fun b!3998438 () Bool)

(declare-fun res!1624123 () Bool)

(assert (=> b!3998438 (=> (not res!1624123) (not e!2479009))))

(assert (=> b!3998438 (= res!1624123 (isEmpty!25558 (tail!6233 lt!1412396)))))

(declare-fun b!3998439 () Bool)

(assert (=> b!3998439 (= e!2479012 e!2479010)))

(declare-fun res!1624116 () Bool)

(assert (=> b!3998439 (=> res!1624116 e!2479010)))

(assert (=> b!3998439 (= res!1624116 call!285957)))

(declare-fun b!3998440 () Bool)

(assert (=> b!3998440 (= e!2479011 (= lt!1412694 call!285957))))

(assert (= (and d!1183086 c!691715) b!3998427))

(assert (= (and d!1183086 (not c!691715)) b!3998432))

(assert (= (and d!1183086 c!691717) b!3998440))

(assert (= (and d!1183086 (not c!691717)) b!3998429))

(assert (= (and b!3998429 c!691716) b!3998428))

(assert (= (and b!3998429 (not c!691716)) b!3998431))

(assert (= (and b!3998431 (not res!1624117)) b!3998434))

(assert (= (and b!3998434 res!1624118) b!3998433))

(assert (= (and b!3998433 res!1624122) b!3998438))

(assert (= (and b!3998438 res!1624123) b!3998430))

(assert (= (and b!3998434 (not res!1624120)) b!3998435))

(assert (= (and b!3998435 res!1624119) b!3998439))

(assert (= (and b!3998439 (not res!1624116)) b!3998436))

(assert (= (and b!3998436 (not res!1624121)) b!3998437))

(assert (= (or b!3998440 b!3998439 b!3998433) bm!285952))

(assert (=> b!3998432 m!4579179))

(assert (=> b!3998432 m!4579179))

(declare-fun m!4580059 () Bool)

(assert (=> b!3998432 m!4580059))

(assert (=> b!3998432 m!4579183))

(assert (=> b!3998432 m!4580059))

(assert (=> b!3998432 m!4579183))

(declare-fun m!4580061 () Bool)

(assert (=> b!3998432 m!4580061))

(assert (=> bm!285952 m!4579229))

(assert (=> b!3998438 m!4579183))

(assert (=> b!3998438 m!4579183))

(assert (=> b!3998438 m!4579231))

(assert (=> b!3998436 m!4579183))

(assert (=> b!3998436 m!4579183))

(assert (=> b!3998436 m!4579231))

(assert (=> b!3998437 m!4579179))

(assert (=> b!3998427 m!4579253))

(assert (=> d!1183086 m!4579229))

(assert (=> d!1183086 m!4579251))

(assert (=> b!3998430 m!4579179))

(assert (=> b!3997661 d!1183086))

(declare-fun b!3998442 () Bool)

(declare-fun res!1624125 () Bool)

(declare-fun e!2479014 () Bool)

(assert (=> b!3998442 (=> (not res!1624125) (not e!2479014))))

(assert (=> b!3998442 (= res!1624125 (= (head!8501 lt!1412396) (head!8501 lt!1412394)))))

(declare-fun b!3998441 () Bool)

(declare-fun e!2479013 () Bool)

(assert (=> b!3998441 (= e!2479013 e!2479014)))

(declare-fun res!1624127 () Bool)

(assert (=> b!3998441 (=> (not res!1624127) (not e!2479014))))

(assert (=> b!3998441 (= res!1624127 (not ((_ is Nil!42758) lt!1412394)))))

(declare-fun d!1183088 () Bool)

(declare-fun e!2479015 () Bool)

(assert (=> d!1183088 e!2479015))

(declare-fun res!1624126 () Bool)

(assert (=> d!1183088 (=> res!1624126 e!2479015)))

(declare-fun lt!1412695 () Bool)

(assert (=> d!1183088 (= res!1624126 (not lt!1412695))))

(assert (=> d!1183088 (= lt!1412695 e!2479013)))

(declare-fun res!1624124 () Bool)

(assert (=> d!1183088 (=> res!1624124 e!2479013)))

(assert (=> d!1183088 (= res!1624124 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1183088 (= (isPrefix!3865 lt!1412396 lt!1412394) lt!1412695)))

(declare-fun b!3998443 () Bool)

(assert (=> b!3998443 (= e!2479014 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 lt!1412394)))))

(declare-fun b!3998444 () Bool)

(assert (=> b!3998444 (= e!2479015 (>= (size!31976 lt!1412394) (size!31976 lt!1412396)))))

(assert (= (and d!1183088 (not res!1624124)) b!3998441))

(assert (= (and b!3998441 res!1624127) b!3998442))

(assert (= (and b!3998442 res!1624125) b!3998443))

(assert (= (and d!1183088 (not res!1624126)) b!3998444))

(assert (=> b!3998442 m!4579179))

(assert (=> b!3998442 m!4579173))

(assert (=> b!3998443 m!4579183))

(assert (=> b!3998443 m!4579169))

(assert (=> b!3998443 m!4579183))

(assert (=> b!3998443 m!4579169))

(declare-fun m!4580063 () Bool)

(assert (=> b!3998443 m!4580063))

(assert (=> b!3998444 m!4579167))

(assert (=> b!3998444 m!4578923))

(assert (=> b!3997639 d!1183088))

(declare-fun b!3998446 () Bool)

(declare-fun res!1624129 () Bool)

(declare-fun e!2479017 () Bool)

(assert (=> b!3998446 (=> (not res!1624129) (not e!2479017))))

(assert (=> b!3998446 (= res!1624129 (= (head!8501 lt!1412396) (head!8501 lt!1412391)))))

(declare-fun b!3998445 () Bool)

(declare-fun e!2479016 () Bool)

(assert (=> b!3998445 (= e!2479016 e!2479017)))

(declare-fun res!1624131 () Bool)

(assert (=> b!3998445 (=> (not res!1624131) (not e!2479017))))

(assert (=> b!3998445 (= res!1624131 (not ((_ is Nil!42758) lt!1412391)))))

(declare-fun d!1183090 () Bool)

(declare-fun e!2479018 () Bool)

(assert (=> d!1183090 e!2479018))

(declare-fun res!1624130 () Bool)

(assert (=> d!1183090 (=> res!1624130 e!2479018)))

(declare-fun lt!1412696 () Bool)

(assert (=> d!1183090 (= res!1624130 (not lt!1412696))))

(assert (=> d!1183090 (= lt!1412696 e!2479016)))

(declare-fun res!1624128 () Bool)

(assert (=> d!1183090 (=> res!1624128 e!2479016)))

(assert (=> d!1183090 (= res!1624128 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1183090 (= (isPrefix!3865 lt!1412396 lt!1412391) lt!1412696)))

(declare-fun b!3998447 () Bool)

(assert (=> b!3998447 (= e!2479017 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 lt!1412391)))))

(declare-fun b!3998448 () Bool)

(assert (=> b!3998448 (= e!2479018 (>= (size!31976 lt!1412391) (size!31976 lt!1412396)))))

(assert (= (and d!1183090 (not res!1624128)) b!3998445))

(assert (= (and b!3998445 res!1624131) b!3998446))

(assert (= (and b!3998446 res!1624129) b!3998447))

(assert (= (and d!1183090 (not res!1624130)) b!3998448))

(assert (=> b!3998446 m!4579179))

(declare-fun m!4580065 () Bool)

(assert (=> b!3998446 m!4580065))

(assert (=> b!3998447 m!4579183))

(declare-fun m!4580067 () Bool)

(assert (=> b!3998447 m!4580067))

(assert (=> b!3998447 m!4579183))

(assert (=> b!3998447 m!4580067))

(declare-fun m!4580069 () Bool)

(assert (=> b!3998447 m!4580069))

(declare-fun m!4580071 () Bool)

(assert (=> b!3998448 m!4580071))

(assert (=> b!3998448 m!4578923))

(assert (=> b!3997639 d!1183090))

(declare-fun d!1183092 () Bool)

(assert (=> d!1183092 (isPrefix!3865 lt!1412396 (++!11180 lt!1412358 lt!1412348))))

(declare-fun lt!1412699 () Unit!61679)

(declare-fun choose!24117 (List!42882 List!42882 List!42882) Unit!61679)

(assert (=> d!1183092 (= lt!1412699 (choose!24117 lt!1412396 lt!1412358 lt!1412348))))

(assert (=> d!1183092 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1183092 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412396 lt!1412358 lt!1412348) lt!1412699)))

(declare-fun bs!588752 () Bool)

(assert (= bs!588752 d!1183092))

(assert (=> bs!588752 m!4578973))

(assert (=> bs!588752 m!4578973))

(declare-fun m!4580073 () Bool)

(assert (=> bs!588752 m!4580073))

(declare-fun m!4580075 () Bool)

(assert (=> bs!588752 m!4580075))

(assert (=> bs!588752 m!4578859))

(assert (=> b!3997639 d!1183092))

(declare-fun b!3998449 () Bool)

(declare-fun res!1624135 () Bool)

(declare-fun e!2479021 () Bool)

(assert (=> b!3998449 (=> (not res!1624135) (not e!2479021))))

(declare-fun lt!1412703 () Option!9192)

(assert (=> b!3998449 (= res!1624135 (< (size!31976 (_2!24107 (get!14065 lt!1412703))) (size!31976 lt!1412394)))))

(declare-fun b!3998450 () Bool)

(declare-fun res!1624136 () Bool)

(assert (=> b!3998450 (=> (not res!1624136) (not e!2479021))))

(assert (=> b!3998450 (= res!1624136 (= (value!213807 (_1!24107 (get!14065 lt!1412703))) (apply!9989 (transformation!6778 (rule!9806 (_1!24107 (get!14065 lt!1412703)))) (seqFromList!5017 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412703)))))))))

(declare-fun b!3998451 () Bool)

(declare-fun res!1624133 () Bool)

(assert (=> b!3998451 (=> (not res!1624133) (not e!2479021))))

(assert (=> b!3998451 (= res!1624133 (= (rule!9806 (_1!24107 (get!14065 lt!1412703))) (rule!9806 token!484)))))

(declare-fun b!3998452 () Bool)

(declare-fun e!2479022 () Bool)

(assert (=> b!3998452 (= e!2479022 (matchR!5660 (regex!6778 (rule!9806 token!484)) (_1!24109 (findLongestMatchInner!1343 (regex!6778 (rule!9806 token!484)) Nil!42758 (size!31976 Nil!42758) lt!1412394 lt!1412394 (size!31976 lt!1412394)))))))

(declare-fun b!3998453 () Bool)

(declare-fun e!2479019 () Option!9192)

(declare-fun lt!1412704 () tuple2!41950)

(assert (=> b!3998453 (= e!2479019 (Some!9191 (tuple2!41947 (Token!12695 (apply!9989 (transformation!6778 (rule!9806 token!484)) (seqFromList!5017 (_1!24109 lt!1412704))) (rule!9806 token!484) (size!31978 (seqFromList!5017 (_1!24109 lt!1412704))) (_1!24109 lt!1412704)) (_2!24109 lt!1412704))))))

(declare-fun lt!1412701 () Unit!61679)

(assert (=> b!3998453 (= lt!1412701 (longestMatchIsAcceptedByMatchOrIsEmpty!1316 (regex!6778 (rule!9806 token!484)) lt!1412394))))

(declare-fun res!1624134 () Bool)

(assert (=> b!3998453 (= res!1624134 (isEmpty!25558 (_1!24109 (findLongestMatchInner!1343 (regex!6778 (rule!9806 token!484)) Nil!42758 (size!31976 Nil!42758) lt!1412394 lt!1412394 (size!31976 lt!1412394)))))))

(assert (=> b!3998453 (=> res!1624134 e!2479022)))

(assert (=> b!3998453 e!2479022))

(declare-fun lt!1412702 () Unit!61679)

(assert (=> b!3998453 (= lt!1412702 lt!1412701)))

(declare-fun lt!1412700 () Unit!61679)

(assert (=> b!3998453 (= lt!1412700 (lemmaSemiInverse!1863 (transformation!6778 (rule!9806 token!484)) (seqFromList!5017 (_1!24109 lt!1412704))))))

(declare-fun b!3998454 () Bool)

(assert (=> b!3998454 (= e!2479021 (= (size!31975 (_1!24107 (get!14065 lt!1412703))) (size!31976 (originalCharacters!7378 (_1!24107 (get!14065 lt!1412703))))))))

(declare-fun b!3998455 () Bool)

(declare-fun e!2479020 () Bool)

(assert (=> b!3998455 (= e!2479020 e!2479021)))

(declare-fun res!1624138 () Bool)

(assert (=> b!3998455 (=> (not res!1624138) (not e!2479021))))

(assert (=> b!3998455 (= res!1624138 (matchR!5660 (regex!6778 (rule!9806 token!484)) (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412703))))))))

(declare-fun d!1183094 () Bool)

(assert (=> d!1183094 e!2479020))

(declare-fun res!1624137 () Bool)

(assert (=> d!1183094 (=> res!1624137 e!2479020)))

(assert (=> d!1183094 (= res!1624137 (isEmpty!25557 lt!1412703))))

(assert (=> d!1183094 (= lt!1412703 e!2479019)))

(declare-fun c!691718 () Bool)

(assert (=> d!1183094 (= c!691718 (isEmpty!25558 (_1!24109 lt!1412704)))))

(assert (=> d!1183094 (= lt!1412704 (findLongestMatch!1256 (regex!6778 (rule!9806 token!484)) lt!1412394))))

(assert (=> d!1183094 (ruleValid!2710 thiss!21717 (rule!9806 token!484))))

(assert (=> d!1183094 (= (maxPrefixOneRule!2699 thiss!21717 (rule!9806 token!484) lt!1412394) lt!1412703)))

(declare-fun b!3998456 () Bool)

(declare-fun res!1624132 () Bool)

(assert (=> b!3998456 (=> (not res!1624132) (not e!2479021))))

(assert (=> b!3998456 (= res!1624132 (= (++!11180 (list!15878 (charsOf!4594 (_1!24107 (get!14065 lt!1412703)))) (_2!24107 (get!14065 lt!1412703))) lt!1412394))))

(declare-fun b!3998457 () Bool)

(assert (=> b!3998457 (= e!2479019 None!9191)))

(assert (= (and d!1183094 c!691718) b!3998457))

(assert (= (and d!1183094 (not c!691718)) b!3998453))

(assert (= (and b!3998453 (not res!1624134)) b!3998452))

(assert (= (and d!1183094 (not res!1624137)) b!3998455))

(assert (= (and b!3998455 res!1624138) b!3998456))

(assert (= (and b!3998456 res!1624132) b!3998449))

(assert (= (and b!3998449 res!1624135) b!3998451))

(assert (= (and b!3998451 res!1624133) b!3998450))

(assert (= (and b!3998450 res!1624136) b!3998454))

(declare-fun m!4580077 () Bool)

(assert (=> d!1183094 m!4580077))

(declare-fun m!4580079 () Bool)

(assert (=> d!1183094 m!4580079))

(declare-fun m!4580081 () Bool)

(assert (=> d!1183094 m!4580081))

(assert (=> d!1183094 m!4578807))

(declare-fun m!4580083 () Bool)

(assert (=> b!3998455 m!4580083))

(declare-fun m!4580085 () Bool)

(assert (=> b!3998455 m!4580085))

(assert (=> b!3998455 m!4580085))

(declare-fun m!4580087 () Bool)

(assert (=> b!3998455 m!4580087))

(assert (=> b!3998455 m!4580087))

(declare-fun m!4580089 () Bool)

(assert (=> b!3998455 m!4580089))

(assert (=> b!3998451 m!4580083))

(assert (=> b!3998454 m!4580083))

(declare-fun m!4580091 () Bool)

(assert (=> b!3998454 m!4580091))

(assert (=> b!3998450 m!4580083))

(declare-fun m!4580093 () Bool)

(assert (=> b!3998450 m!4580093))

(assert (=> b!3998450 m!4580093))

(declare-fun m!4580095 () Bool)

(assert (=> b!3998450 m!4580095))

(declare-fun m!4580097 () Bool)

(assert (=> b!3998453 m!4580097))

(declare-fun m!4580099 () Bool)

(assert (=> b!3998453 m!4580099))

(assert (=> b!3998453 m!4580097))

(declare-fun m!4580101 () Bool)

(assert (=> b!3998453 m!4580101))

(declare-fun m!4580103 () Bool)

(assert (=> b!3998453 m!4580103))

(assert (=> b!3998453 m!4580097))

(assert (=> b!3998453 m!4579399))

(assert (=> b!3998453 m!4579167))

(declare-fun m!4580105 () Bool)

(assert (=> b!3998453 m!4580105))

(assert (=> b!3998453 m!4580097))

(declare-fun m!4580107 () Bool)

(assert (=> b!3998453 m!4580107))

(assert (=> b!3998453 m!4579167))

(assert (=> b!3998453 m!4579399))

(declare-fun m!4580109 () Bool)

(assert (=> b!3998453 m!4580109))

(assert (=> b!3998456 m!4580083))

(assert (=> b!3998456 m!4580085))

(assert (=> b!3998456 m!4580085))

(assert (=> b!3998456 m!4580087))

(assert (=> b!3998456 m!4580087))

(declare-fun m!4580111 () Bool)

(assert (=> b!3998456 m!4580111))

(assert (=> b!3998449 m!4580083))

(declare-fun m!4580113 () Bool)

(assert (=> b!3998449 m!4580113))

(assert (=> b!3998449 m!4579167))

(assert (=> b!3998452 m!4579399))

(assert (=> b!3998452 m!4579167))

(assert (=> b!3998452 m!4579399))

(assert (=> b!3998452 m!4579167))

(assert (=> b!3998452 m!4580105))

(declare-fun m!4580115 () Bool)

(assert (=> b!3998452 m!4580115))

(assert (=> b!3997660 d!1183094))

(declare-fun d!1183096 () Bool)

(assert (=> d!1183096 (= (apply!9989 (transformation!6778 (rule!9806 token!484)) (seqFromList!5017 lt!1412368)) (dynLambda!18152 (toValue!9266 (transformation!6778 (rule!9806 token!484))) (seqFromList!5017 lt!1412368)))))

(declare-fun b_lambda!116679 () Bool)

(assert (=> (not b_lambda!116679) (not d!1183096)))

(declare-fun tb!240481 () Bool)

(declare-fun t!332105 () Bool)

(assert (=> (and b!3997652 (= (toValue!9266 (transformation!6778 (h!48180 rules!2999))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))) t!332105) tb!240481))

(declare-fun result!291436 () Bool)

(assert (=> tb!240481 (= result!291436 (inv!21 (dynLambda!18152 (toValue!9266 (transformation!6778 (rule!9806 token!484))) (seqFromList!5017 lt!1412368))))))

(declare-fun m!4580117 () Bool)

(assert (=> tb!240481 m!4580117))

(assert (=> d!1183096 t!332105))

(declare-fun b_and!307055 () Bool)

(assert (= b_and!307019 (and (=> t!332105 result!291436) b_and!307055)))

(declare-fun t!332107 () Bool)

(declare-fun tb!240483 () Bool)

(assert (=> (and b!3997653 (= (toValue!9266 (transformation!6778 (rule!9806 token!484))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))) t!332107) tb!240483))

(declare-fun result!291438 () Bool)

(assert (= result!291438 result!291436))

(assert (=> d!1183096 t!332107))

(declare-fun b_and!307057 () Bool)

(assert (= b_and!307021 (and (=> t!332107 result!291438) b_and!307057)))

(assert (=> d!1183096 m!4578883))

(declare-fun m!4580119 () Bool)

(assert (=> d!1183096 m!4580119))

(assert (=> b!3997660 d!1183096))

(declare-fun d!1183098 () Bool)

(assert (=> d!1183098 (= lt!1412378 suffixResult!105)))

(declare-fun lt!1412705 () Unit!61679)

(assert (=> d!1183098 (= lt!1412705 (choose!24100 lt!1412368 lt!1412378 lt!1412368 suffixResult!105 lt!1412394))))

(assert (=> d!1183098 (isPrefix!3865 lt!1412368 lt!1412394)))

(assert (=> d!1183098 (= (lemmaSamePrefixThenSameSuffix!2052 lt!1412368 lt!1412378 lt!1412368 suffixResult!105 lt!1412394) lt!1412705)))

(declare-fun bs!588753 () Bool)

(assert (= bs!588753 d!1183098))

(declare-fun m!4580121 () Bool)

(assert (=> bs!588753 m!4580121))

(assert (=> bs!588753 m!4578867))

(assert (=> b!3997660 d!1183098))

(declare-fun b!3998459 () Bool)

(declare-fun res!1624140 () Bool)

(declare-fun e!2479025 () Bool)

(assert (=> b!3998459 (=> (not res!1624140) (not e!2479025))))

(assert (=> b!3998459 (= res!1624140 (= (head!8501 lt!1412368) (head!8501 lt!1412355)))))

(declare-fun b!3998458 () Bool)

(declare-fun e!2479024 () Bool)

(assert (=> b!3998458 (= e!2479024 e!2479025)))

(declare-fun res!1624142 () Bool)

(assert (=> b!3998458 (=> (not res!1624142) (not e!2479025))))

(assert (=> b!3998458 (= res!1624142 (not ((_ is Nil!42758) lt!1412355)))))

(declare-fun d!1183100 () Bool)

(declare-fun e!2479026 () Bool)

(assert (=> d!1183100 e!2479026))

(declare-fun res!1624141 () Bool)

(assert (=> d!1183100 (=> res!1624141 e!2479026)))

(declare-fun lt!1412706 () Bool)

(assert (=> d!1183100 (= res!1624141 (not lt!1412706))))

(assert (=> d!1183100 (= lt!1412706 e!2479024)))

(declare-fun res!1624139 () Bool)

(assert (=> d!1183100 (=> res!1624139 e!2479024)))

(assert (=> d!1183100 (= res!1624139 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1183100 (= (isPrefix!3865 lt!1412368 lt!1412355) lt!1412706)))

(declare-fun b!3998460 () Bool)

(assert (=> b!3998460 (= e!2479025 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 lt!1412355)))))

(declare-fun b!3998461 () Bool)

(assert (=> b!3998461 (= e!2479026 (>= (size!31976 lt!1412355) (size!31976 lt!1412368)))))

(assert (= (and d!1183100 (not res!1624139)) b!3998458))

(assert (= (and b!3998458 res!1624142) b!3998459))

(assert (= (and b!3998459 res!1624140) b!3998460))

(assert (= (and d!1183100 (not res!1624141)) b!3998461))

(assert (=> b!3998459 m!4579111))

(declare-fun m!4580123 () Bool)

(assert (=> b!3998459 m!4580123))

(assert (=> b!3998460 m!4579115))

(declare-fun m!4580125 () Bool)

(assert (=> b!3998460 m!4580125))

(assert (=> b!3998460 m!4579115))

(assert (=> b!3998460 m!4580125))

(declare-fun m!4580127 () Bool)

(assert (=> b!3998460 m!4580127))

(declare-fun m!4580129 () Bool)

(assert (=> b!3998461 m!4580129))

(assert (=> b!3998461 m!4578787))

(assert (=> b!3997660 d!1183100))

(declare-fun d!1183102 () Bool)

(assert (=> d!1183102 (isPrefix!3865 lt!1412368 (++!11180 lt!1412368 lt!1412378))))

(declare-fun lt!1412707 () Unit!61679)

(assert (=> d!1183102 (= lt!1412707 (choose!24101 lt!1412368 lt!1412378))))

(assert (=> d!1183102 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412368 lt!1412378) lt!1412707)))

(declare-fun bs!588754 () Bool)

(assert (= bs!588754 d!1183102))

(assert (=> bs!588754 m!4578947))

(assert (=> bs!588754 m!4578947))

(declare-fun m!4580131 () Bool)

(assert (=> bs!588754 m!4580131))

(declare-fun m!4580133 () Bool)

(assert (=> bs!588754 m!4580133))

(assert (=> b!3997660 d!1183102))

(declare-fun d!1183104 () Bool)

(assert (=> d!1183104 (= (maxPrefixOneRule!2699 thiss!21717 (rule!9806 token!484) lt!1412394) (Some!9191 (tuple2!41947 (Token!12695 (apply!9989 (transformation!6778 (rule!9806 token!484)) (seqFromList!5017 lt!1412368)) (rule!9806 token!484) (size!31976 lt!1412368) lt!1412368) suffixResult!105)))))

(declare-fun lt!1412708 () Unit!61679)

(assert (=> d!1183104 (= lt!1412708 (choose!24112 thiss!21717 rules!2999 lt!1412368 lt!1412394 suffixResult!105 (rule!9806 token!484)))))

(assert (=> d!1183104 (not (isEmpty!25554 rules!2999))))

(assert (=> d!1183104 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1521 thiss!21717 rules!2999 lt!1412368 lt!1412394 suffixResult!105 (rule!9806 token!484)) lt!1412708)))

(declare-fun bs!588755 () Bool)

(assert (= bs!588755 d!1183104))

(assert (=> bs!588755 m!4578883))

(assert (=> bs!588755 m!4578889))

(declare-fun m!4580135 () Bool)

(assert (=> bs!588755 m!4580135))

(assert (=> bs!588755 m!4578787))

(assert (=> bs!588755 m!4578883))

(assert (=> bs!588755 m!4578885))

(assert (=> bs!588755 m!4578801))

(assert (=> b!3997660 d!1183104))

(declare-fun d!1183106 () Bool)

(assert (=> d!1183106 (= (seqFromList!5017 lt!1412368) (fromListB!2301 lt!1412368))))

(declare-fun bs!588756 () Bool)

(assert (= bs!588756 d!1183106))

(declare-fun m!4580137 () Bool)

(assert (=> bs!588756 m!4580137))

(assert (=> b!3997660 d!1183106))

(declare-fun d!1183108 () Bool)

(assert (=> d!1183108 (= (isEmpty!25554 rules!2999) ((_ is Nil!42760) rules!2999))))

(assert (=> b!3997659 d!1183108))

(declare-fun e!2479027 () Bool)

(declare-fun b!3998465 () Bool)

(declare-fun lt!1412709 () List!42882)

(assert (=> b!3998465 (= e!2479027 (or (not (= lt!1412348 Nil!42758)) (= lt!1412709 newSuffix!27)))))

(declare-fun b!3998462 () Bool)

(declare-fun e!2479028 () List!42882)

(assert (=> b!3998462 (= e!2479028 lt!1412348)))

(declare-fun d!1183110 () Bool)

(assert (=> d!1183110 e!2479027))

(declare-fun res!1624144 () Bool)

(assert (=> d!1183110 (=> (not res!1624144) (not e!2479027))))

(assert (=> d!1183110 (= res!1624144 (= (content!6487 lt!1412709) ((_ map or) (content!6487 newSuffix!27) (content!6487 lt!1412348))))))

(assert (=> d!1183110 (= lt!1412709 e!2479028)))

(declare-fun c!691719 () Bool)

(assert (=> d!1183110 (= c!691719 ((_ is Nil!42758) newSuffix!27))))

(assert (=> d!1183110 (= (++!11180 newSuffix!27 lt!1412348) lt!1412709)))

(declare-fun b!3998464 () Bool)

(declare-fun res!1624143 () Bool)

(assert (=> b!3998464 (=> (not res!1624143) (not e!2479027))))

(assert (=> b!3998464 (= res!1624143 (= (size!31976 lt!1412709) (+ (size!31976 newSuffix!27) (size!31976 lt!1412348))))))

(declare-fun b!3998463 () Bool)

(assert (=> b!3998463 (= e!2479028 (Cons!42758 (h!48178 newSuffix!27) (++!11180 (t!332065 newSuffix!27) lt!1412348)))))

(assert (= (and d!1183110 c!691719) b!3998462))

(assert (= (and d!1183110 (not c!691719)) b!3998463))

(assert (= (and d!1183110 res!1624144) b!3998464))

(assert (= (and b!3998464 res!1624143) b!3998465))

(declare-fun m!4580139 () Bool)

(assert (=> d!1183110 m!4580139))

(assert (=> d!1183110 m!4579435))

(assert (=> d!1183110 m!4579543))

(declare-fun m!4580141 () Bool)

(assert (=> b!3998464 m!4580141))

(assert (=> b!3998464 m!4578843))

(assert (=> b!3998464 m!4579547))

(declare-fun m!4580143 () Bool)

(assert (=> b!3998463 m!4580143))

(assert (=> b!3997637 d!1183110))

(declare-fun d!1183112 () Bool)

(declare-fun lt!1412710 () List!42882)

(assert (=> d!1183112 (= (++!11180 newSuffix!27 lt!1412710) suffix!1299)))

(declare-fun e!2479029 () List!42882)

(assert (=> d!1183112 (= lt!1412710 e!2479029)))

(declare-fun c!691720 () Bool)

(assert (=> d!1183112 (= c!691720 ((_ is Cons!42758) newSuffix!27))))

(assert (=> d!1183112 (>= (size!31976 suffix!1299) (size!31976 newSuffix!27))))

(assert (=> d!1183112 (= (getSuffix!2296 suffix!1299 newSuffix!27) lt!1412710)))

(declare-fun b!3998466 () Bool)

(assert (=> b!3998466 (= e!2479029 (getSuffix!2296 (tail!6233 suffix!1299) (t!332065 newSuffix!27)))))

(declare-fun b!3998467 () Bool)

(assert (=> b!3998467 (= e!2479029 suffix!1299)))

(assert (= (and d!1183112 c!691720) b!3998466))

(assert (= (and d!1183112 (not c!691720)) b!3998467))

(declare-fun m!4580145 () Bool)

(assert (=> d!1183112 m!4580145))

(assert (=> d!1183112 m!4578841))

(assert (=> d!1183112 m!4578843))

(assert (=> b!3998466 m!4579429))

(assert (=> b!3998466 m!4579429))

(declare-fun m!4580147 () Bool)

(assert (=> b!3998466 m!4580147))

(assert (=> b!3997637 d!1183112))

(declare-fun d!1183114 () Bool)

(assert (=> d!1183114 (= (_2!24107 (v!39551 lt!1412381)) lt!1412401)))

(declare-fun lt!1412711 () Unit!61679)

(assert (=> d!1183114 (= lt!1412711 (choose!24100 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412396 lt!1412401 lt!1412358))))

(assert (=> d!1183114 (isPrefix!3865 lt!1412396 lt!1412358)))

(assert (=> d!1183114 (= (lemmaSamePrefixThenSameSuffix!2052 lt!1412396 (_2!24107 (v!39551 lt!1412381)) lt!1412396 lt!1412401 lt!1412358) lt!1412711)))

(declare-fun bs!588757 () Bool)

(assert (= bs!588757 d!1183114))

(declare-fun m!4580149 () Bool)

(assert (=> bs!588757 m!4580149))

(assert (=> bs!588757 m!4578859))

(assert (=> b!3997636 d!1183114))

(declare-fun b!3998469 () Bool)

(declare-fun res!1624146 () Bool)

(declare-fun e!2479031 () Bool)

(assert (=> b!3998469 (=> (not res!1624146) (not e!2479031))))

(assert (=> b!3998469 (= res!1624146 (= (head!8501 lt!1412396) (head!8501 lt!1412342)))))

(declare-fun b!3998468 () Bool)

(declare-fun e!2479030 () Bool)

(assert (=> b!3998468 (= e!2479030 e!2479031)))

(declare-fun res!1624148 () Bool)

(assert (=> b!3998468 (=> (not res!1624148) (not e!2479031))))

(assert (=> b!3998468 (= res!1624148 (not ((_ is Nil!42758) lt!1412342)))))

(declare-fun d!1183116 () Bool)

(declare-fun e!2479032 () Bool)

(assert (=> d!1183116 e!2479032))

(declare-fun res!1624147 () Bool)

(assert (=> d!1183116 (=> res!1624147 e!2479032)))

(declare-fun lt!1412712 () Bool)

(assert (=> d!1183116 (= res!1624147 (not lt!1412712))))

(assert (=> d!1183116 (= lt!1412712 e!2479030)))

(declare-fun res!1624145 () Bool)

(assert (=> d!1183116 (=> res!1624145 e!2479030)))

(assert (=> d!1183116 (= res!1624145 ((_ is Nil!42758) lt!1412396))))

(assert (=> d!1183116 (= (isPrefix!3865 lt!1412396 lt!1412342) lt!1412712)))

(declare-fun b!3998470 () Bool)

(assert (=> b!3998470 (= e!2479031 (isPrefix!3865 (tail!6233 lt!1412396) (tail!6233 lt!1412342)))))

(declare-fun b!3998471 () Bool)

(assert (=> b!3998471 (= e!2479032 (>= (size!31976 lt!1412342) (size!31976 lt!1412396)))))

(assert (= (and d!1183116 (not res!1624145)) b!3998468))

(assert (= (and b!3998468 res!1624148) b!3998469))

(assert (= (and b!3998469 res!1624146) b!3998470))

(assert (= (and d!1183116 (not res!1624147)) b!3998471))

(assert (=> b!3998469 m!4579179))

(declare-fun m!4580151 () Bool)

(assert (=> b!3998469 m!4580151))

(assert (=> b!3998470 m!4579183))

(declare-fun m!4580153 () Bool)

(assert (=> b!3998470 m!4580153))

(assert (=> b!3998470 m!4579183))

(assert (=> b!3998470 m!4580153))

(declare-fun m!4580155 () Bool)

(assert (=> b!3998470 m!4580155))

(declare-fun m!4580157 () Bool)

(assert (=> b!3998471 m!4580157))

(assert (=> b!3998471 m!4578923))

(assert (=> b!3997636 d!1183116))

(declare-fun d!1183118 () Bool)

(assert (=> d!1183118 (isPrefix!3865 lt!1412396 (++!11180 lt!1412396 lt!1412401))))

(declare-fun lt!1412713 () Unit!61679)

(assert (=> d!1183118 (= lt!1412713 (choose!24101 lt!1412396 lt!1412401))))

(assert (=> d!1183118 (= (lemmaConcatTwoListThenFirstIsPrefix!2708 lt!1412396 lt!1412401) lt!1412713)))

(declare-fun bs!588758 () Bool)

(assert (= bs!588758 d!1183118))

(assert (=> bs!588758 m!4578879))

(assert (=> bs!588758 m!4578879))

(declare-fun m!4580159 () Bool)

(assert (=> bs!588758 m!4580159))

(declare-fun m!4580161 () Bool)

(assert (=> bs!588758 m!4580161))

(assert (=> b!3997636 d!1183118))

(declare-fun b!3998472 () Bool)

(declare-fun e!2479033 () Bool)

(assert (=> b!3998472 (= e!2479033 (nullable!4100 (regex!6778 (rule!9806 token!484))))))

(declare-fun b!3998473 () Bool)

(declare-fun e!2479035 () Bool)

(declare-fun lt!1412714 () Bool)

(assert (=> b!3998473 (= e!2479035 (not lt!1412714))))

(declare-fun b!3998474 () Bool)

(declare-fun e!2479038 () Bool)

(assert (=> b!3998474 (= e!2479038 e!2479035)))

(declare-fun c!691722 () Bool)

(assert (=> b!3998474 (= c!691722 ((_ is EmptyLang!11683) (regex!6778 (rule!9806 token!484))))))

(declare-fun bm!285953 () Bool)

(declare-fun call!285958 () Bool)

(assert (=> bm!285953 (= call!285958 (isEmpty!25558 lt!1412368))))

(declare-fun b!3998475 () Bool)

(declare-fun e!2479036 () Bool)

(assert (=> b!3998475 (= e!2479036 (= (head!8501 lt!1412368) (c!691583 (regex!6778 (rule!9806 token!484)))))))

(declare-fun b!3998476 () Bool)

(declare-fun res!1624150 () Bool)

(declare-fun e!2479034 () Bool)

(assert (=> b!3998476 (=> res!1624150 e!2479034)))

(assert (=> b!3998476 (= res!1624150 (not ((_ is ElementMatch!11683) (regex!6778 (rule!9806 token!484)))))))

(assert (=> b!3998476 (= e!2479035 e!2479034)))

(declare-fun d!1183120 () Bool)

(assert (=> d!1183120 e!2479038))

(declare-fun c!691723 () Bool)

(assert (=> d!1183120 (= c!691723 ((_ is EmptyExpr!11683) (regex!6778 (rule!9806 token!484))))))

(assert (=> d!1183120 (= lt!1412714 e!2479033)))

(declare-fun c!691721 () Bool)

(assert (=> d!1183120 (= c!691721 (isEmpty!25558 lt!1412368))))

(assert (=> d!1183120 (validRegex!5300 (regex!6778 (rule!9806 token!484)))))

(assert (=> d!1183120 (= (matchR!5660 (regex!6778 (rule!9806 token!484)) lt!1412368) lt!1412714)))

(declare-fun b!3998477 () Bool)

(assert (=> b!3998477 (= e!2479033 (matchR!5660 (derivativeStep!3511 (regex!6778 (rule!9806 token!484)) (head!8501 lt!1412368)) (tail!6233 lt!1412368)))))

(declare-fun b!3998478 () Bool)

(declare-fun res!1624155 () Bool)

(assert (=> b!3998478 (=> (not res!1624155) (not e!2479036))))

(assert (=> b!3998478 (= res!1624155 (not call!285958))))

(declare-fun b!3998479 () Bool)

(declare-fun res!1624153 () Bool)

(assert (=> b!3998479 (=> res!1624153 e!2479034)))

(assert (=> b!3998479 (= res!1624153 e!2479036)))

(declare-fun res!1624151 () Bool)

(assert (=> b!3998479 (=> (not res!1624151) (not e!2479036))))

(assert (=> b!3998479 (= res!1624151 lt!1412714)))

(declare-fun b!3998480 () Bool)

(declare-fun e!2479039 () Bool)

(assert (=> b!3998480 (= e!2479034 e!2479039)))

(declare-fun res!1624152 () Bool)

(assert (=> b!3998480 (=> (not res!1624152) (not e!2479039))))

(assert (=> b!3998480 (= res!1624152 (not lt!1412714))))

(declare-fun b!3998481 () Bool)

(declare-fun res!1624154 () Bool)

(declare-fun e!2479037 () Bool)

(assert (=> b!3998481 (=> res!1624154 e!2479037)))

(assert (=> b!3998481 (= res!1624154 (not (isEmpty!25558 (tail!6233 lt!1412368))))))

(declare-fun b!3998482 () Bool)

(assert (=> b!3998482 (= e!2479037 (not (= (head!8501 lt!1412368) (c!691583 (regex!6778 (rule!9806 token!484))))))))

(declare-fun b!3998483 () Bool)

(declare-fun res!1624156 () Bool)

(assert (=> b!3998483 (=> (not res!1624156) (not e!2479036))))

(assert (=> b!3998483 (= res!1624156 (isEmpty!25558 (tail!6233 lt!1412368)))))

(declare-fun b!3998484 () Bool)

(assert (=> b!3998484 (= e!2479039 e!2479037)))

(declare-fun res!1624149 () Bool)

(assert (=> b!3998484 (=> res!1624149 e!2479037)))

(assert (=> b!3998484 (= res!1624149 call!285958)))

(declare-fun b!3998485 () Bool)

(assert (=> b!3998485 (= e!2479038 (= lt!1412714 call!285958))))

(assert (= (and d!1183120 c!691721) b!3998472))

(assert (= (and d!1183120 (not c!691721)) b!3998477))

(assert (= (and d!1183120 c!691723) b!3998485))

(assert (= (and d!1183120 (not c!691723)) b!3998474))

(assert (= (and b!3998474 c!691722) b!3998473))

(assert (= (and b!3998474 (not c!691722)) b!3998476))

(assert (= (and b!3998476 (not res!1624150)) b!3998479))

(assert (= (and b!3998479 res!1624151) b!3998478))

(assert (= (and b!3998478 res!1624155) b!3998483))

(assert (= (and b!3998483 res!1624156) b!3998475))

(assert (= (and b!3998479 (not res!1624153)) b!3998480))

(assert (= (and b!3998480 res!1624152) b!3998484))

(assert (= (and b!3998484 (not res!1624149)) b!3998481))

(assert (= (and b!3998481 (not res!1624154)) b!3998482))

(assert (= (or b!3998485 b!3998484 b!3998478) bm!285953))

(assert (=> b!3998477 m!4579111))

(assert (=> b!3998477 m!4579111))

(declare-fun m!4580163 () Bool)

(assert (=> b!3998477 m!4580163))

(assert (=> b!3998477 m!4579115))

(assert (=> b!3998477 m!4580163))

(assert (=> b!3998477 m!4579115))

(declare-fun m!4580165 () Bool)

(assert (=> b!3998477 m!4580165))

(assert (=> bm!285953 m!4580053))

(assert (=> b!3998483 m!4579115))

(assert (=> b!3998483 m!4579115))

(assert (=> b!3998483 m!4580055))

(assert (=> b!3998481 m!4579115))

(assert (=> b!3998481 m!4579115))

(assert (=> b!3998481 m!4580055))

(assert (=> b!3998482 m!4579111))

(assert (=> b!3998472 m!4579253))

(assert (=> d!1183120 m!4580053))

(assert (=> d!1183120 m!4579251))

(assert (=> b!3998475 m!4579111))

(assert (=> b!3997657 d!1183120))

(declare-fun b!3998487 () Bool)

(declare-fun res!1624158 () Bool)

(declare-fun e!2479041 () Bool)

(assert (=> b!3998487 (=> (not res!1624158) (not e!2479041))))

(assert (=> b!3998487 (= res!1624158 (= (head!8501 lt!1412368) (head!8501 lt!1412358)))))

(declare-fun b!3998486 () Bool)

(declare-fun e!2479040 () Bool)

(assert (=> b!3998486 (= e!2479040 e!2479041)))

(declare-fun res!1624160 () Bool)

(assert (=> b!3998486 (=> (not res!1624160) (not e!2479041))))

(assert (=> b!3998486 (= res!1624160 (not ((_ is Nil!42758) lt!1412358)))))

(declare-fun d!1183122 () Bool)

(declare-fun e!2479042 () Bool)

(assert (=> d!1183122 e!2479042))

(declare-fun res!1624159 () Bool)

(assert (=> d!1183122 (=> res!1624159 e!2479042)))

(declare-fun lt!1412715 () Bool)

(assert (=> d!1183122 (= res!1624159 (not lt!1412715))))

(assert (=> d!1183122 (= lt!1412715 e!2479040)))

(declare-fun res!1624157 () Bool)

(assert (=> d!1183122 (=> res!1624157 e!2479040)))

(assert (=> d!1183122 (= res!1624157 ((_ is Nil!42758) lt!1412368))))

(assert (=> d!1183122 (= (isPrefix!3865 lt!1412368 lt!1412358) lt!1412715)))

(declare-fun b!3998488 () Bool)

(assert (=> b!3998488 (= e!2479041 (isPrefix!3865 (tail!6233 lt!1412368) (tail!6233 lt!1412358)))))

(declare-fun b!3998489 () Bool)

(assert (=> b!3998489 (= e!2479042 (>= (size!31976 lt!1412358) (size!31976 lt!1412368)))))

(assert (= (and d!1183122 (not res!1624157)) b!3998486))

(assert (= (and b!3998486 res!1624160) b!3998487))

(assert (= (and b!3998487 res!1624158) b!3998488))

(assert (= (and d!1183122 (not res!1624159)) b!3998489))

(assert (=> b!3998487 m!4579111))

(assert (=> b!3998487 m!4579181))

(assert (=> b!3998488 m!4579115))

(assert (=> b!3998488 m!4579075))

(assert (=> b!3998488 m!4579115))

(assert (=> b!3998488 m!4579075))

(declare-fun m!4580167 () Bool)

(assert (=> b!3998488 m!4580167))

(assert (=> b!3998489 m!4579073))

(assert (=> b!3998489 m!4578787))

(assert (=> b!3997657 d!1183122))

(declare-fun d!1183124 () Bool)

(assert (=> d!1183124 (isPrefix!3865 lt!1412368 (++!11180 prefix!494 newSuffix!27))))

(declare-fun lt!1412716 () Unit!61679)

(assert (=> d!1183124 (= lt!1412716 (choose!24117 lt!1412368 prefix!494 newSuffix!27))))

(assert (=> d!1183124 (isPrefix!3865 lt!1412368 prefix!494)))

(assert (=> d!1183124 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412368 prefix!494 newSuffix!27) lt!1412716)))

(declare-fun bs!588759 () Bool)

(assert (= bs!588759 d!1183124))

(assert (=> bs!588759 m!4578797))

(assert (=> bs!588759 m!4578797))

(declare-fun m!4580169 () Bool)

(assert (=> bs!588759 m!4580169))

(declare-fun m!4580171 () Bool)

(assert (=> bs!588759 m!4580171))

(assert (=> bs!588759 m!4578779))

(assert (=> b!3997657 d!1183124))

(declare-fun d!1183126 () Bool)

(assert (=> d!1183126 (isPrefix!3865 lt!1412368 (++!11180 prefix!494 suffix!1299))))

(declare-fun lt!1412717 () Unit!61679)

(assert (=> d!1183126 (= lt!1412717 (choose!24117 lt!1412368 prefix!494 suffix!1299))))

(assert (=> d!1183126 (isPrefix!3865 lt!1412368 prefix!494)))

(assert (=> d!1183126 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!698 lt!1412368 prefix!494 suffix!1299) lt!1412717)))

(declare-fun bs!588760 () Bool)

(assert (= bs!588760 d!1183126))

(assert (=> bs!588760 m!4578833))

(assert (=> bs!588760 m!4578833))

(declare-fun m!4580173 () Bool)

(assert (=> bs!588760 m!4580173))

(declare-fun m!4580175 () Bool)

(assert (=> bs!588760 m!4580175))

(assert (=> bs!588760 m!4578779))

(assert (=> b!3997657 d!1183126))

(declare-fun d!1183128 () Bool)

(declare-fun lt!1412718 () Int)

(assert (=> d!1183128 (>= lt!1412718 0)))

(declare-fun e!2479043 () Int)

(assert (=> d!1183128 (= lt!1412718 e!2479043)))

(declare-fun c!691724 () Bool)

(assert (=> d!1183128 (= c!691724 ((_ is Nil!42758) suffix!1299))))

(assert (=> d!1183128 (= (size!31976 suffix!1299) lt!1412718)))

(declare-fun b!3998490 () Bool)

(assert (=> b!3998490 (= e!2479043 0)))

(declare-fun b!3998491 () Bool)

(assert (=> b!3998491 (= e!2479043 (+ 1 (size!31976 (t!332065 suffix!1299))))))

(assert (= (and d!1183128 c!691724) b!3998490))

(assert (= (and d!1183128 (not c!691724)) b!3998491))

(declare-fun m!4580177 () Bool)

(assert (=> b!3998491 m!4580177))

(assert (=> b!3997656 d!1183128))

(declare-fun d!1183130 () Bool)

(declare-fun lt!1412719 () Int)

(assert (=> d!1183130 (>= lt!1412719 0)))

(declare-fun e!2479044 () Int)

(assert (=> d!1183130 (= lt!1412719 e!2479044)))

(declare-fun c!691725 () Bool)

(assert (=> d!1183130 (= c!691725 ((_ is Nil!42758) newSuffix!27))))

(assert (=> d!1183130 (= (size!31976 newSuffix!27) lt!1412719)))

(declare-fun b!3998492 () Bool)

(assert (=> b!3998492 (= e!2479044 0)))

(declare-fun b!3998493 () Bool)

(assert (=> b!3998493 (= e!2479044 (+ 1 (size!31976 (t!332065 newSuffix!27))))))

(assert (= (and d!1183130 c!691725) b!3998492))

(assert (= (and d!1183130 (not c!691725)) b!3998493))

(declare-fun m!4580179 () Bool)

(assert (=> b!3998493 m!4580179))

(assert (=> b!3997656 d!1183130))

(declare-fun b!3998507 () Bool)

(declare-fun e!2479047 () Bool)

(declare-fun tp!1216917 () Bool)

(declare-fun tp!1216913 () Bool)

(assert (=> b!3998507 (= e!2479047 (and tp!1216917 tp!1216913))))

(declare-fun b!3998505 () Bool)

(declare-fun tp!1216916 () Bool)

(declare-fun tp!1216915 () Bool)

(assert (=> b!3998505 (= e!2479047 (and tp!1216916 tp!1216915))))

(assert (=> b!3997666 (= tp!1216854 e!2479047)))

(declare-fun b!3998506 () Bool)

(declare-fun tp!1216914 () Bool)

(assert (=> b!3998506 (= e!2479047 tp!1216914)))

(declare-fun b!3998504 () Bool)

(assert (=> b!3998504 (= e!2479047 tp_is_empty!20337)))

(assert (= (and b!3997666 ((_ is ElementMatch!11683) (regex!6778 (rule!9806 token!484)))) b!3998504))

(assert (= (and b!3997666 ((_ is Concat!18692) (regex!6778 (rule!9806 token!484)))) b!3998505))

(assert (= (and b!3997666 ((_ is Star!11683) (regex!6778 (rule!9806 token!484)))) b!3998506))

(assert (= (and b!3997666 ((_ is Union!11683) (regex!6778 (rule!9806 token!484)))) b!3998507))

(declare-fun b!3998512 () Bool)

(declare-fun e!2479050 () Bool)

(declare-fun tp!1216920 () Bool)

(assert (=> b!3998512 (= e!2479050 (and tp_is_empty!20337 tp!1216920))))

(assert (=> b!3997649 (= tp!1216847 e!2479050)))

(assert (= (and b!3997649 ((_ is Cons!42758) (t!332065 newSuffix!27))) b!3998512))

(declare-fun b!3998513 () Bool)

(declare-fun e!2479051 () Bool)

(declare-fun tp!1216921 () Bool)

(assert (=> b!3998513 (= e!2479051 (and tp_is_empty!20337 tp!1216921))))

(assert (=> b!3997643 (= tp!1216850 e!2479051)))

(assert (= (and b!3997643 ((_ is Cons!42758) (t!332065 prefix!494))) b!3998513))

(declare-fun b!3998524 () Bool)

(declare-fun b_free!111069 () Bool)

(declare-fun b_next!111773 () Bool)

(assert (=> b!3998524 (= b_free!111069 (not b_next!111773))))

(declare-fun tb!240485 () Bool)

(declare-fun t!332109 () Bool)

(assert (=> (and b!3998524 (= (toValue!9266 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toValue!9266 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332109) tb!240485))

(declare-fun result!291446 () Bool)

(assert (= result!291446 result!291392))

(assert (=> d!1182848 t!332109))

(declare-fun t!332111 () Bool)

(declare-fun tb!240487 () Bool)

(assert (=> (and b!3998524 (= (toValue!9266 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toValue!9266 (transformation!6778 (rule!9806 token!484)))) t!332111) tb!240487))

(declare-fun result!291448 () Bool)

(assert (= result!291448 result!291436))

(assert (=> d!1183096 t!332111))

(declare-fun tp!1216931 () Bool)

(declare-fun b_and!307059 () Bool)

(assert (=> b!3998524 (= tp!1216931 (and (=> t!332109 result!291446) (=> t!332111 result!291448) b_and!307059))))

(declare-fun b_free!111071 () Bool)

(declare-fun b_next!111775 () Bool)

(assert (=> b!3998524 (= b_free!111071 (not b_next!111775))))

(declare-fun tb!240489 () Bool)

(declare-fun t!332113 () Bool)

(assert (=> (and b!3998524 (= (toChars!9125 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toChars!9125 (transformation!6778 (rule!9806 token!484)))) t!332113) tb!240489))

(declare-fun result!291450 () Bool)

(assert (= result!291450 result!291386))

(assert (=> b!3997963 t!332113))

(declare-fun t!332115 () Bool)

(declare-fun tb!240491 () Bool)

(assert (=> (and b!3998524 (= (toChars!9125 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toChars!9125 (transformation!6778 (rule!9806 (_1!24107 (v!39551 lt!1412381)))))) t!332115) tb!240491))

(declare-fun result!291452 () Bool)

(assert (= result!291452 result!291410))

(assert (=> d!1182878 t!332115))

(assert (=> d!1182914 t!332113))

(declare-fun b_and!307061 () Bool)

(declare-fun tp!1216933 () Bool)

(assert (=> b!3998524 (= tp!1216933 (and (=> t!332113 result!291450) (=> t!332115 result!291452) b_and!307061))))

(declare-fun e!2479063 () Bool)

(assert (=> b!3998524 (= e!2479063 (and tp!1216931 tp!1216933))))

(declare-fun b!3998523 () Bool)

(declare-fun tp!1216930 () Bool)

(declare-fun e!2479062 () Bool)

(assert (=> b!3998523 (= e!2479062 (and tp!1216930 (inv!57103 (tag!7638 (h!48180 (t!332067 rules!2999)))) (inv!57106 (transformation!6778 (h!48180 (t!332067 rules!2999)))) e!2479063))))

(declare-fun b!3998522 () Bool)

(declare-fun e!2479061 () Bool)

(declare-fun tp!1216932 () Bool)

(assert (=> b!3998522 (= e!2479061 (and e!2479062 tp!1216932))))

(assert (=> b!3997648 (= tp!1216846 e!2479061)))

(assert (= b!3998523 b!3998524))

(assert (= b!3998522 b!3998523))

(assert (= (and b!3997648 ((_ is Cons!42760) (t!332067 rules!2999))) b!3998522))

(declare-fun m!4580181 () Bool)

(assert (=> b!3998523 m!4580181))

(declare-fun m!4580183 () Bool)

(assert (=> b!3998523 m!4580183))

(declare-fun b!3998525 () Bool)

(declare-fun e!2479064 () Bool)

(declare-fun tp!1216934 () Bool)

(assert (=> b!3998525 (= e!2479064 (and tp_is_empty!20337 tp!1216934))))

(assert (=> b!3997632 (= tp!1216849 e!2479064)))

(assert (= (and b!3997632 ((_ is Cons!42758) (originalCharacters!7378 token!484))) b!3998525))

(declare-fun b!3998526 () Bool)

(declare-fun e!2479065 () Bool)

(declare-fun tp!1216935 () Bool)

(assert (=> b!3998526 (= e!2479065 (and tp_is_empty!20337 tp!1216935))))

(assert (=> b!3997664 (= tp!1216845 e!2479065)))

(assert (= (and b!3997664 ((_ is Cons!42758) (t!332065 suffixResult!105))) b!3998526))

(declare-fun b!3998527 () Bool)

(declare-fun e!2479066 () Bool)

(declare-fun tp!1216936 () Bool)

(assert (=> b!3998527 (= e!2479066 (and tp_is_empty!20337 tp!1216936))))

(assert (=> b!3997658 (= tp!1216844 e!2479066)))

(assert (= (and b!3997658 ((_ is Cons!42758) (t!332065 suffix!1299))) b!3998527))

(declare-fun b!3998531 () Bool)

(declare-fun e!2479067 () Bool)

(declare-fun tp!1216941 () Bool)

(declare-fun tp!1216937 () Bool)

(assert (=> b!3998531 (= e!2479067 (and tp!1216941 tp!1216937))))

(declare-fun b!3998529 () Bool)

(declare-fun tp!1216940 () Bool)

(declare-fun tp!1216939 () Bool)

(assert (=> b!3998529 (= e!2479067 (and tp!1216940 tp!1216939))))

(assert (=> b!3997630 (= tp!1216842 e!2479067)))

(declare-fun b!3998530 () Bool)

(declare-fun tp!1216938 () Bool)

(assert (=> b!3998530 (= e!2479067 tp!1216938)))

(declare-fun b!3998528 () Bool)

(assert (=> b!3998528 (= e!2479067 tp_is_empty!20337)))

(assert (= (and b!3997630 ((_ is ElementMatch!11683) (regex!6778 (h!48180 rules!2999)))) b!3998528))

(assert (= (and b!3997630 ((_ is Concat!18692) (regex!6778 (h!48180 rules!2999)))) b!3998529))

(assert (= (and b!3997630 ((_ is Star!11683) (regex!6778 (h!48180 rules!2999)))) b!3998530))

(assert (= (and b!3997630 ((_ is Union!11683) (regex!6778 (h!48180 rules!2999)))) b!3998531))

(declare-fun b!3998532 () Bool)

(declare-fun e!2479068 () Bool)

(declare-fun tp!1216942 () Bool)

(assert (=> b!3998532 (= e!2479068 (and tp_is_empty!20337 tp!1216942))))

(assert (=> b!3997635 (= tp!1216853 e!2479068)))

(assert (= (and b!3997635 ((_ is Cons!42758) (t!332065 newSuffixResult!27))) b!3998532))

(declare-fun b_lambda!116681 () Bool)

(assert (= b_lambda!116665 (or (and b!3997652 b_free!111059 (= (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toChars!9125 (transformation!6778 (rule!9806 token!484))))) (and b!3997653 b_free!111063) (and b!3998524 b_free!111071 (= (toChars!9125 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toChars!9125 (transformation!6778 (rule!9806 token!484))))) b_lambda!116681)))

(declare-fun b_lambda!116683 () Bool)

(assert (= b_lambda!116655 (or (and b!3997652 b_free!111059 (= (toChars!9125 (transformation!6778 (h!48180 rules!2999))) (toChars!9125 (transformation!6778 (rule!9806 token!484))))) (and b!3997653 b_free!111063) (and b!3998524 b_free!111071 (= (toChars!9125 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toChars!9125 (transformation!6778 (rule!9806 token!484))))) b_lambda!116683)))

(declare-fun b_lambda!116685 () Bool)

(assert (= b_lambda!116679 (or (and b!3997652 b_free!111057 (= (toValue!9266 (transformation!6778 (h!48180 rules!2999))) (toValue!9266 (transformation!6778 (rule!9806 token!484))))) (and b!3997653 b_free!111061) (and b!3998524 b_free!111069 (= (toValue!9266 (transformation!6778 (h!48180 (t!332067 rules!2999)))) (toValue!9266 (transformation!6778 (rule!9806 token!484))))) b_lambda!116685)))

(check-sat (not tb!240449) (not d!1183072) (not d!1182932) (not b!3997768) (not b!3998506) (not b!3998460) (not b!3997898) (not d!1182884) (not bm!285952) (not b!3998087) (not d!1182778) (not b_lambda!116681) (not b!3997964) b_and!307057 (not d!1182794) (not b!3998470) (not b!3998105) (not b!3997941) (not d!1182786) (not b!3997901) (not tb!240481) (not d!1182820) (not b!3997971) (not b!3998459) (not b!3998512) (not b!3997893) (not b!3997892) (not b!3997895) (not d!1182826) (not d!1182846) (not d!1182878) (not b_next!111773) (not b_next!111763) (not d!1182798) (not b!3998529) (not b!3997885) (not b!3997889) (not d!1182816) (not d!1182880) (not b!3997942) (not b!3998424) (not b!3997998) (not b!3997855) (not b!3998121) (not b!3997856) (not b!3997860) b_and!307055 (not b!3997937) (not b_lambda!116683) (not b!3998530) (not b!3998054) (not b!3997963) (not tb!240445) (not bm!285953) (not b!3998472) (not b!3998416) (not b!3997978) (not b!3997888) (not b!3998507) (not b!3998422) (not b_next!111765) (not d!1182926) (not b_next!111761) (not b!3997854) (not b!3998464) (not b!3997996) (not b!3997842) (not b!3998413) (not b!3998397) (not b!3997981) (not d!1182906) (not b!3997824) (not d!1182828) (not b!3997986) (not bm!285944) (not d!1182838) (not d!1183118) (not b!3998466) (not b!3998437) (not b!3998438) (not d!1182764) (not b!3998455) (not b!3998108) (not d!1182918) (not d!1182888) (not d!1182792) (not d!1182772) (not d!1182886) (not b!3998522) (not b!3997948) (not d!1182894) (not b!3998487) (not d!1182812) (not d!1183076) (not b!3998449) (not d!1183114) (not b!3997841) (not d!1183120) (not b!3997767) (not b!3998418) (not d!1182832) (not d!1183074) (not b!3998058) (not b!3998526) (not b!3998096) (not b!3997976) (not b!3998454) (not d!1182928) (not d!1183082) (not b!3998448) (not b!3998122) (not b!3998406) (not d!1182756) (not d!1183102) (not b!3997896) (not d!1182912) (not b!3998057) (not b!3998117) (not b!3998098) (not d!1182824) (not b!3998525) (not b!3997983) (not d!1182896) (not b!3997957) (not b!3998085) (not b!3998114) (not b!3998481) (not d!1183092) (not b!3998090) (not d!1183078) (not bm!285951) (not b!3998443) (not b!3997985) (not b!3998055) (not b!3997890) (not b!3998477) (not b!3998436) (not d!1182916) (not b!3998102) (not b!3998489) (not b!3997987) (not b!3998403) (not b!3997878) b_and!307061 (not b!3998398) (not d!1182844) (not d!1183110) (not b!3998076) (not b!3997947) (not b!3998097) (not b!3998488) (not d!1182818) (not b!3998432) (not b!3998080) (not b!3998475) (not d!1182914) (not b!3998077) (not b!3997935) (not b!3998113) (not b!3997829) (not b!3997802) (not b!3997886) (not b!3997823) (not b!3997894) (not b!3997884) (not b!3998482) (not b_lambda!116663) (not b!3998059) (not d!1183084) (not b!3998471) (not d!1182902) (not d!1182790) (not b_next!111767) (not b!3998446) (not b!3998081) (not b!3997827) (not b!3998483) (not b!3998453) (not b!3998430) (not d!1182796) (not d!1183126) (not b!3998052) (not b!3998491) (not b!3998513) (not b!3998092) (not b!3997943) (not b!3998505) (not b!3997871) (not d!1183104) (not b!3997975) (not b!3998444) (not b!3997879) (not b!3997825) (not b!3998427) (not b!3997969) (not d!1183086) (not d!1182804) (not b!3997891) (not b!3998523) (not b!3998493) (not b!3998450) (not d!1182852) (not b!3998451) (not d!1183080) (not b!3998447) (not b!3997881) (not b!3997932) (not d!1182814) (not b!3998072) (not d!1183098) (not b!3998109) (not b!3997826) (not b!3998527) (not b!3998452) (not bm!285940) (not b!3998423) (not b!3997952) (not b!3998442) (not d!1182834) (not d!1182788) (not b!3997830) (not b!3998118) (not b!3998100) (not d!1182774) (not b!3998411) (not b!3998531) (not d!1182836) b_and!307059 (not b!3998104) (not b!3997840) (not b!3998112) (not d!1182856) (not b!3998402) (not b_next!111775) (not d!1183112) (not b!3998074) (not b_lambda!116685) (not d!1183106) (not d!1182830) (not d!1182920) (not bm!285941) (not b!3998410) (not b!3997982) (not b!3998116) (not d!1182800) (not d!1183094) (not b!3997972) (not b!3997822) (not b!3998461) (not b!3998073) (not b!3998407) (not b!3998469) (not b_lambda!116657) (not d!1182810) (not b!3997875) (not b!3997902) (not d!1182854) (not d!1182822) tp_is_empty!20337 (not tb!240461) b_and!307035 (not b!3998456) b_and!307037 (not b!3998089) (not b!3997899) (not d!1183124) (not d!1182784) (not b!3998532) (not b!3998463) (not b!3998120) (not b!3998095) (not b!3998053) (not b!3998056) (not d!1182808) (not b!3998061))
(check-sat b_and!307057 b_and!307055 b_and!307061 (not b_next!111767) (not b_next!111773) (not b_next!111763) (not b_next!111765) (not b_next!111761) b_and!307059 (not b_next!111775) b_and!307035 b_and!307037)
