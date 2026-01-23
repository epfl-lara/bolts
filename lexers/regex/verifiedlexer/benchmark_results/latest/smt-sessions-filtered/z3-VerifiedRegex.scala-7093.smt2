; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376204 () Bool)

(assert start!376204)

(declare-fun b!3997070 () Bool)

(declare-fun b_free!111025 () Bool)

(declare-fun b_next!111729 () Bool)

(assert (=> b!3997070 (= b_free!111025 (not b_next!111729))))

(declare-fun tp!1216692 () Bool)

(declare-fun b_and!306975 () Bool)

(assert (=> b!3997070 (= tp!1216692 b_and!306975)))

(declare-fun b_free!111027 () Bool)

(declare-fun b_next!111731 () Bool)

(assert (=> b!3997070 (= b_free!111027 (not b_next!111731))))

(declare-fun tp!1216696 () Bool)

(declare-fun b_and!306977 () Bool)

(assert (=> b!3997070 (= tp!1216696 b_and!306977)))

(declare-fun b!3997038 () Bool)

(declare-fun b_free!111029 () Bool)

(declare-fun b_next!111733 () Bool)

(assert (=> b!3997038 (= b_free!111029 (not b_next!111733))))

(declare-fun tp!1216687 () Bool)

(declare-fun b_and!306979 () Bool)

(assert (=> b!3997038 (= tp!1216687 b_and!306979)))

(declare-fun b_free!111031 () Bool)

(declare-fun b_next!111735 () Bool)

(assert (=> b!3997038 (= b_free!111031 (not b_next!111735))))

(declare-fun tp!1216693 () Bool)

(declare-fun b_and!306981 () Bool)

(assert (=> b!3997038 (= tp!1216693 b_and!306981)))

(declare-fun b!3997027 () Bool)

(declare-fun e!2478062 () Bool)

(declare-fun e!2478073 () Bool)

(assert (=> b!3997027 (= e!2478062 e!2478073)))

(declare-fun res!1623306 () Bool)

(assert (=> b!3997027 (=> res!1623306 e!2478073)))

(declare-datatypes ((C!23544 0))(
  ( (C!23545 (val!13866 Int)) )
))
(declare-datatypes ((List!42870 0))(
  ( (Nil!42746) (Cons!42746 (h!48166 C!23544) (t!332053 List!42870)) )
))
(declare-fun lt!1411544 () List!42870)

(declare-fun lt!1411530 () List!42870)

(declare-fun lt!1411564 () List!42870)

(assert (=> b!3997027 (= res!1623306 (or (not (= lt!1411564 lt!1411544)) (not (= lt!1411564 lt!1411530))))))

(assert (=> b!3997027 (= lt!1411544 lt!1411530)))

(declare-fun lt!1411527 () List!42870)

(declare-fun lt!1411560 () List!42870)

(declare-fun ++!11176 (List!42870 List!42870) List!42870)

(assert (=> b!3997027 (= lt!1411530 (++!11176 lt!1411527 lt!1411560))))

(declare-fun lt!1411550 () List!42870)

(declare-fun suffix!1299 () List!42870)

(assert (=> b!3997027 (= lt!1411544 (++!11176 lt!1411550 suffix!1299))))

(declare-fun lt!1411535 () List!42870)

(assert (=> b!3997027 (= lt!1411560 (++!11176 lt!1411535 suffix!1299))))

(declare-datatypes ((Unit!61635 0))(
  ( (Unit!61636) )
))
(declare-fun lt!1411566 () Unit!61635)

(declare-fun lemmaConcatAssociativity!2496 (List!42870 List!42870 List!42870) Unit!61635)

(assert (=> b!3997027 (= lt!1411566 (lemmaConcatAssociativity!2496 lt!1411527 lt!1411535 suffix!1299))))

(declare-fun b!3997028 () Bool)

(declare-fun e!2478058 () Unit!61635)

(declare-fun Unit!61637 () Unit!61635)

(assert (=> b!3997028 (= e!2478058 Unit!61637)))

(declare-fun b!3997029 () Bool)

(declare-fun e!2478086 () Bool)

(assert (=> b!3997029 (= e!2478086 false)))

(declare-fun b!3997030 () Bool)

(declare-fun e!2478088 () Bool)

(declare-fun e!2478084 () Bool)

(assert (=> b!3997030 (= e!2478088 e!2478084)))

(declare-fun res!1623297 () Bool)

(assert (=> b!3997030 (=> res!1623297 e!2478084)))

(declare-fun lt!1411557 () List!42870)

(assert (=> b!3997030 (= res!1623297 (not (= lt!1411557 lt!1411564)))))

(declare-fun prefix!494 () List!42870)

(declare-fun lt!1411587 () List!42870)

(assert (=> b!3997030 (= lt!1411557 (++!11176 prefix!494 lt!1411587))))

(declare-fun lt!1411575 () List!42870)

(declare-fun lt!1411529 () List!42870)

(assert (=> b!3997030 (= lt!1411557 (++!11176 lt!1411575 lt!1411529))))

(declare-fun lt!1411532 () Unit!61635)

(declare-fun newSuffix!27 () List!42870)

(assert (=> b!3997030 (= lt!1411532 (lemmaConcatAssociativity!2496 prefix!494 newSuffix!27 lt!1411529))))

(declare-fun b!3997032 () Bool)

(declare-fun e!2478067 () Bool)

(declare-fun e!2478082 () Bool)

(assert (=> b!3997032 (= e!2478067 e!2478082)))

(declare-fun res!1623294 () Bool)

(assert (=> b!3997032 (=> res!1623294 e!2478082)))

(declare-datatypes ((IArray!25975 0))(
  ( (IArray!25976 (innerList!13045 List!42870)) )
))
(declare-datatypes ((Conc!12985 0))(
  ( (Node!12985 (left!32278 Conc!12985) (right!32608 Conc!12985) (csize!26200 Int) (cheight!13196 Int)) (Leaf!20079 (xs!16291 IArray!25975) (csize!26201 Int)) (Empty!12985) )
))
(declare-datatypes ((BalanceConc!25564 0))(
  ( (BalanceConc!25565 (c!691522 Conc!12985)) )
))
(declare-datatypes ((List!42871 0))(
  ( (Nil!42747) (Cons!42747 (h!48167 (_ BitVec 16)) (t!332054 List!42871)) )
))
(declare-datatypes ((TokenValue!7004 0))(
  ( (FloatLiteralValue!14008 (text!49473 List!42871)) (TokenValueExt!7003 (__x!26225 Int)) (Broken!35020 (value!213667 List!42871)) (Object!7127) (End!7004) (Def!7004) (Underscore!7004) (Match!7004) (Else!7004) (Error!7004) (Case!7004) (If!7004) (Extends!7004) (Abstract!7004) (Class!7004) (Val!7004) (DelimiterValue!14008 (del!7064 List!42871)) (KeywordValue!7010 (value!213668 List!42871)) (CommentValue!14008 (value!213669 List!42871)) (WhitespaceValue!14008 (value!213670 List!42871)) (IndentationValue!7004 (value!213671 List!42871)) (String!48737) (Int32!7004) (Broken!35021 (value!213672 List!42871)) (Boolean!7005) (Unit!61638) (OperatorValue!7007 (op!7064 List!42871)) (IdentifierValue!14008 (value!213673 List!42871)) (IdentifierValue!14009 (value!213674 List!42871)) (WhitespaceValue!14009 (value!213675 List!42871)) (True!14008) (False!14008) (Broken!35022 (value!213676 List!42871)) (Broken!35023 (value!213677 List!42871)) (True!14009) (RightBrace!7004) (RightBracket!7004) (Colon!7004) (Null!7004) (Comma!7004) (LeftBracket!7004) (False!14009) (LeftBrace!7004) (ImaginaryLiteralValue!7004 (text!49474 List!42871)) (StringLiteralValue!21012 (value!213678 List!42871)) (EOFValue!7004 (value!213679 List!42871)) (IdentValue!7004 (value!213680 List!42871)) (DelimiterValue!14009 (value!213681 List!42871)) (DedentValue!7004 (value!213682 List!42871)) (NewLineValue!7004 (value!213683 List!42871)) (IntegerValue!21012 (value!213684 (_ BitVec 32)) (text!49475 List!42871)) (IntegerValue!21013 (value!213685 Int) (text!49476 List!42871)) (Times!7004) (Or!7004) (Equal!7004) (Minus!7004) (Broken!35024 (value!213686 List!42871)) (And!7004) (Div!7004) (LessEqual!7004) (Mod!7004) (Concat!18683) (Not!7004) (Plus!7004) (SpaceValue!7004 (value!213687 List!42871)) (IntegerValue!21014 (value!213688 Int) (text!49477 List!42871)) (StringLiteralValue!21013 (text!49478 List!42871)) (FloatLiteralValue!14009 (text!49479 List!42871)) (BytesLiteralValue!7004 (value!213689 List!42871)) (CommentValue!14009 (value!213690 List!42871)) (StringLiteralValue!21014 (value!213691 List!42871)) (ErrorTokenValue!7004 (msg!7065 List!42871)) )
))
(declare-datatypes ((Regex!11679 0))(
  ( (ElementMatch!11679 (c!691523 C!23544)) (Concat!18684 (regOne!23870 Regex!11679) (regTwo!23870 Regex!11679)) (EmptyExpr!11679) (Star!11679 (reg!12008 Regex!11679)) (EmptyLang!11679) (Union!11679 (regOne!23871 Regex!11679) (regTwo!23871 Regex!11679)) )
))
(declare-datatypes ((String!48738 0))(
  ( (String!48739 (value!213692 String)) )
))
(declare-datatypes ((TokenValueInjection!13436 0))(
  ( (TokenValueInjection!13437 (toValue!9262 Int) (toChars!9121 Int)) )
))
(declare-datatypes ((Rule!13348 0))(
  ( (Rule!13349 (regex!6774 Regex!11679) (tag!7634 String!48738) (isSeparator!6774 Bool) (transformation!6774 TokenValueInjection!13436)) )
))
(declare-datatypes ((Token!12686 0))(
  ( (Token!12687 (value!213693 TokenValue!7004) (rule!9802 Rule!13348) (size!31967 Int) (originalCharacters!7374 List!42870)) )
))
(declare-datatypes ((tuple2!41938 0))(
  ( (tuple2!41939 (_1!24103 Token!12686) (_2!24103 List!42870)) )
))
(declare-datatypes ((Option!9188 0))(
  ( (None!9187) (Some!9187 (v!39547 tuple2!41938)) )
))
(declare-fun lt!1411568 () Option!9188)

(declare-fun lt!1411582 () Option!9188)

(assert (=> b!3997032 (= res!1623294 (not (= lt!1411568 (Some!9187 (v!39547 lt!1411582)))))))

(declare-fun lt!1411578 () List!42870)

(declare-fun newSuffixResult!27 () List!42870)

(declare-fun isPrefix!3861 (List!42870 List!42870) Bool)

(assert (=> b!3997032 (isPrefix!3861 lt!1411578 (++!11176 lt!1411578 newSuffixResult!27))))

(declare-fun lt!1411536 () Unit!61635)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2704 (List!42870 List!42870) Unit!61635)

(assert (=> b!3997032 (= lt!1411536 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411578 newSuffixResult!27))))

(declare-fun lt!1411581 () List!42870)

(assert (=> b!3997032 (isPrefix!3861 lt!1411578 lt!1411581)))

(assert (=> b!3997032 (= lt!1411581 (++!11176 lt!1411578 (_2!24103 (v!39547 lt!1411582))))))

(declare-fun lt!1411563 () Unit!61635)

(assert (=> b!3997032 (= lt!1411563 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411578 (_2!24103 (v!39547 lt!1411582))))))

(declare-fun lt!1411537 () TokenValue!7004)

(declare-fun lt!1411562 () Int)

(assert (=> b!3997032 (= lt!1411568 (Some!9187 (tuple2!41939 (Token!12687 lt!1411537 (rule!9802 (_1!24103 (v!39547 lt!1411582))) lt!1411562 lt!1411578) (_2!24103 (v!39547 lt!1411582)))))))

(declare-datatypes ((LexerInterface!6363 0))(
  ( (LexerInterfaceExt!6360 (__x!26226 Int)) (Lexer!6361) )
))
(declare-fun thiss!21717 () LexerInterface!6363)

(declare-fun maxPrefixOneRule!2695 (LexerInterface!6363 Rule!13348 List!42870) Option!9188)

(assert (=> b!3997032 (= lt!1411568 (maxPrefixOneRule!2695 thiss!21717 (rule!9802 (_1!24103 (v!39547 lt!1411582))) lt!1411575))))

(declare-fun size!31968 (List!42870) Int)

(assert (=> b!3997032 (= lt!1411562 (size!31968 lt!1411578))))

(declare-fun apply!9985 (TokenValueInjection!13436 BalanceConc!25564) TokenValue!7004)

(declare-fun seqFromList!5013 (List!42870) BalanceConc!25564)

(assert (=> b!3997032 (= lt!1411537 (apply!9985 (transformation!6774 (rule!9802 (_1!24103 (v!39547 lt!1411582)))) (seqFromList!5013 lt!1411578)))))

(declare-datatypes ((List!42872 0))(
  ( (Nil!42748) (Cons!42748 (h!48168 Rule!13348) (t!332055 List!42872)) )
))
(declare-fun rules!2999 () List!42872)

(declare-fun lt!1411546 () Unit!61635)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1517 (LexerInterface!6363 List!42872 List!42870 List!42870 List!42870 Rule!13348) Unit!61635)

(assert (=> b!3997032 (= lt!1411546 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1517 thiss!21717 rules!2999 lt!1411578 lt!1411575 (_2!24103 (v!39547 lt!1411582)) (rule!9802 (_1!24103 (v!39547 lt!1411582)))))))

(declare-fun list!15874 (BalanceConc!25564) List!42870)

(declare-fun charsOf!4590 (Token!12686) BalanceConc!25564)

(assert (=> b!3997032 (= lt!1411578 (list!15874 (charsOf!4590 (_1!24103 (v!39547 lt!1411582)))))))

(declare-fun lt!1411551 () Unit!61635)

(declare-fun lemmaInv!989 (TokenValueInjection!13436) Unit!61635)

(assert (=> b!3997032 (= lt!1411551 (lemmaInv!989 (transformation!6774 (rule!9802 (_1!24103 (v!39547 lt!1411582))))))))

(declare-fun ruleValid!2706 (LexerInterface!6363 Rule!13348) Bool)

(assert (=> b!3997032 (ruleValid!2706 thiss!21717 (rule!9802 (_1!24103 (v!39547 lt!1411582))))))

(declare-fun lt!1411576 () Unit!61635)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1780 (LexerInterface!6363 Rule!13348 List!42872) Unit!61635)

(assert (=> b!3997032 (= lt!1411576 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1780 thiss!21717 (rule!9802 (_1!24103 (v!39547 lt!1411582))) rules!2999))))

(declare-fun lt!1411554 () Unit!61635)

(declare-fun token!484 () Token!12686)

(declare-fun lemmaCharactersSize!1369 (Token!12686) Unit!61635)

(assert (=> b!3997032 (= lt!1411554 (lemmaCharactersSize!1369 token!484))))

(declare-fun lt!1411586 () Unit!61635)

(assert (=> b!3997032 (= lt!1411586 (lemmaCharactersSize!1369 (_1!24103 (v!39547 lt!1411582))))))

(declare-fun b!3997033 () Bool)

(declare-fun e!2478081 () Bool)

(declare-fun e!2478091 () Bool)

(assert (=> b!3997033 (= e!2478081 e!2478091)))

(declare-fun res!1623309 () Bool)

(assert (=> b!3997033 (=> res!1623309 e!2478091)))

(declare-fun matchR!5656 (Regex!11679 List!42870) Bool)

(assert (=> b!3997033 (= res!1623309 (not (matchR!5656 (regex!6774 (rule!9802 token!484)) lt!1411527)))))

(assert (=> b!3997033 (isPrefix!3861 lt!1411527 lt!1411575)))

(declare-fun lt!1411555 () Unit!61635)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!694 (List!42870 List!42870 List!42870) Unit!61635)

(assert (=> b!3997033 (= lt!1411555 (lemmaPrefixStaysPrefixWhenAddingToSuffix!694 lt!1411527 prefix!494 newSuffix!27))))

(declare-fun lt!1411569 () Unit!61635)

(assert (=> b!3997033 (= lt!1411569 (lemmaPrefixStaysPrefixWhenAddingToSuffix!694 lt!1411527 prefix!494 suffix!1299))))

(declare-fun b!3997034 () Bool)

(declare-fun e!2478080 () Bool)

(declare-fun tp_is_empty!20329 () Bool)

(declare-fun tp!1216691 () Bool)

(assert (=> b!3997034 (= e!2478080 (and tp_is_empty!20329 tp!1216691))))

(declare-fun b!3997035 () Bool)

(declare-fun res!1623281 () Bool)

(declare-fun e!2478074 () Bool)

(assert (=> b!3997035 (=> (not res!1623281) (not e!2478074))))

(declare-fun lt!1411549 () TokenValue!7004)

(assert (=> b!3997035 (= res!1623281 (= (value!213693 token!484) lt!1411549))))

(declare-fun b!3997036 () Bool)

(declare-fun e!2478095 () Bool)

(assert (=> b!3997036 (= e!2478095 true)))

(declare-fun lt!1411573 () Bool)

(declare-fun contains!8507 (List!42872 Rule!13348) Bool)

(assert (=> b!3997036 (= lt!1411573 (contains!8507 rules!2999 (rule!9802 token!484)))))

(declare-fun b!3997037 () Bool)

(declare-fun e!2478070 () Unit!61635)

(declare-fun Unit!61639 () Unit!61635)

(assert (=> b!3997037 (= e!2478070 Unit!61639)))

(declare-fun e!2478069 () Bool)

(assert (=> b!3997038 (= e!2478069 (and tp!1216687 tp!1216693))))

(declare-fun b!3997039 () Bool)

(declare-fun e!2478057 () Bool)

(assert (=> b!3997039 (= e!2478057 e!2478067)))

(declare-fun res!1623298 () Bool)

(assert (=> b!3997039 (=> res!1623298 e!2478067)))

(get-info :version)

(assert (=> b!3997039 (= res!1623298 (not ((_ is Some!9187) lt!1411582)))))

(declare-fun maxPrefix!3661 (LexerInterface!6363 List!42872 List!42870) Option!9188)

(assert (=> b!3997039 (= lt!1411582 (maxPrefix!3661 thiss!21717 rules!2999 lt!1411575))))

(declare-fun lt!1411559 () List!42870)

(declare-fun suffixResult!105 () List!42870)

(declare-fun lt!1411548 () Token!12686)

(declare-fun lt!1411570 () tuple2!41938)

(assert (=> b!3997039 (and (= suffixResult!105 lt!1411559) (= lt!1411570 (tuple2!41939 lt!1411548 lt!1411559)))))

(declare-fun lt!1411526 () Unit!61635)

(declare-fun lemmaSamePrefixThenSameSuffix!2048 (List!42870 List!42870 List!42870 List!42870 List!42870) Unit!61635)

(assert (=> b!3997039 (= lt!1411526 (lemmaSamePrefixThenSameSuffix!2048 lt!1411527 suffixResult!105 lt!1411527 lt!1411559 lt!1411564))))

(declare-fun lt!1411547 () List!42870)

(assert (=> b!3997039 (isPrefix!3861 lt!1411527 lt!1411547)))

(declare-fun lt!1411571 () Unit!61635)

(assert (=> b!3997039 (= lt!1411571 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411527 lt!1411559))))

(declare-fun b!3997040 () Bool)

(declare-fun res!1623288 () Bool)

(declare-fun e!2478085 () Bool)

(assert (=> b!3997040 (=> (not res!1623288) (not e!2478085))))

(declare-fun isEmpty!25550 (List!42872) Bool)

(assert (=> b!3997040 (= res!1623288 (not (isEmpty!25550 rules!2999)))))

(declare-fun b!3997041 () Bool)

(declare-fun Unit!61640 () Unit!61635)

(assert (=> b!3997041 (= e!2478070 Unit!61640)))

(declare-fun lt!1411522 () Unit!61635)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!270 (LexerInterface!6363 List!42872 Rule!13348 List!42870 List!42870 Rule!13348) Unit!61635)

(assert (=> b!3997041 (= lt!1411522 (lemmaMaxPrefNoSmallerRuleMatches!270 thiss!21717 rules!2999 (rule!9802 token!484) lt!1411527 lt!1411564 (rule!9802 (_1!24103 (v!39547 lt!1411582)))))))

(declare-fun res!1623290 () Bool)

(assert (=> b!3997041 (= res!1623290 (not (matchR!5656 (regex!6774 (rule!9802 (_1!24103 (v!39547 lt!1411582)))) lt!1411527)))))

(assert (=> b!3997041 (=> (not res!1623290) (not e!2478086))))

(assert (=> b!3997041 e!2478086))

(declare-fun b!3997042 () Bool)

(declare-fun e!2478063 () Bool)

(declare-fun tp!1216686 () Bool)

(assert (=> b!3997042 (= e!2478063 (and tp_is_empty!20329 tp!1216686))))

(declare-fun b!3997043 () Bool)

(declare-fun e!2478056 () Bool)

(assert (=> b!3997043 (= e!2478056 false)))

(declare-fun b!3997044 () Bool)

(declare-fun e!2478089 () Bool)

(assert (=> b!3997044 (= e!2478084 e!2478089)))

(declare-fun res!1623285 () Bool)

(assert (=> b!3997044 (=> res!1623285 e!2478089)))

(assert (=> b!3997044 (= res!1623285 (not (isPrefix!3861 lt!1411578 lt!1411564)))))

(assert (=> b!3997044 (isPrefix!3861 lt!1411578 lt!1411557)))

(declare-fun lt!1411553 () Unit!61635)

(assert (=> b!3997044 (= lt!1411553 (lemmaPrefixStaysPrefixWhenAddingToSuffix!694 lt!1411578 lt!1411575 lt!1411529))))

(declare-fun b!3997045 () Bool)

(declare-fun e!2478072 () Unit!61635)

(declare-fun Unit!61641 () Unit!61635)

(assert (=> b!3997045 (= e!2478072 Unit!61641)))

(declare-fun lt!1411538 () Unit!61635)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!428 (LexerInterface!6363 List!42872 Rule!13348 List!42870 List!42870 List!42870 Rule!13348) Unit!61635)

(assert (=> b!3997045 (= lt!1411538 (lemmaMaxPrefixOutputsMaxPrefix!428 thiss!21717 rules!2999 (rule!9802 (_1!24103 (v!39547 lt!1411582))) lt!1411578 lt!1411575 lt!1411527 (rule!9802 token!484)))))

(assert (=> b!3997045 false))

(declare-fun b!3997046 () Bool)

(declare-fun e!2478087 () Bool)

(assert (=> b!3997046 (= e!2478085 e!2478087)))

(declare-fun res!1623287 () Bool)

(assert (=> b!3997046 (=> (not res!1623287) (not e!2478087))))

(declare-fun lt!1411577 () Int)

(declare-fun lt!1411534 () Int)

(assert (=> b!3997046 (= res!1623287 (>= lt!1411577 lt!1411534))))

(assert (=> b!3997046 (= lt!1411534 (size!31968 lt!1411527))))

(assert (=> b!3997046 (= lt!1411577 (size!31968 prefix!494))))

(assert (=> b!3997046 (= lt!1411527 (list!15874 (charsOf!4590 token!484)))))

(declare-fun b!3997047 () Bool)

(declare-fun res!1623308 () Bool)

(declare-fun e!2478076 () Bool)

(assert (=> b!3997047 (=> res!1623308 e!2478076)))

(assert (=> b!3997047 (= res!1623308 (not (isPrefix!3861 lt!1411578 lt!1411575)))))

(declare-fun b!3997048 () Bool)

(declare-fun tp!1216689 () Bool)

(declare-fun e!2478090 () Bool)

(declare-fun inv!57089 (String!48738) Bool)

(declare-fun inv!57092 (TokenValueInjection!13436) Bool)

(assert (=> b!3997048 (= e!2478090 (and tp!1216689 (inv!57089 (tag!7634 (h!48168 rules!2999))) (inv!57092 (transformation!6774 (h!48168 rules!2999))) e!2478069))))

(declare-fun b!3997049 () Bool)

(declare-fun e!2478068 () Unit!61635)

(declare-fun Unit!61642 () Unit!61635)

(assert (=> b!3997049 (= e!2478068 Unit!61642)))

(declare-fun lt!1411533 () Unit!61635)

(assert (=> b!3997049 (= lt!1411533 (lemmaMaxPrefixOutputsMaxPrefix!428 thiss!21717 rules!2999 (rule!9802 token!484) lt!1411527 lt!1411564 lt!1411578 (rule!9802 (_1!24103 (v!39547 lt!1411582)))))))

(declare-fun res!1623301 () Bool)

(assert (=> b!3997049 (= res!1623301 (not (matchR!5656 (regex!6774 (rule!9802 (_1!24103 (v!39547 lt!1411582)))) lt!1411578)))))

(declare-fun e!2478094 () Bool)

(assert (=> b!3997049 (=> (not res!1623301) (not e!2478094))))

(assert (=> b!3997049 e!2478094))

(declare-fun b!3997050 () Bool)

(assert (=> b!3997050 (= e!2478091 e!2478057)))

(declare-fun res!1623295 () Bool)

(assert (=> b!3997050 (=> res!1623295 e!2478057)))

(assert (=> b!3997050 (= res!1623295 (not (= lt!1411547 lt!1411564)))))

(assert (=> b!3997050 (= lt!1411547 (++!11176 lt!1411527 lt!1411559))))

(declare-fun getSuffix!2292 (List!42870 List!42870) List!42870)

(assert (=> b!3997050 (= lt!1411559 (getSuffix!2292 lt!1411564 lt!1411527))))

(assert (=> b!3997050 e!2478074))

(declare-fun res!1623286 () Bool)

(assert (=> b!3997050 (=> (not res!1623286) (not e!2478074))))

(assert (=> b!3997050 (= res!1623286 (isPrefix!3861 lt!1411564 lt!1411564))))

(declare-fun lt!1411542 () Unit!61635)

(declare-fun lemmaIsPrefixRefl!2453 (List!42870 List!42870) Unit!61635)

(assert (=> b!3997050 (= lt!1411542 (lemmaIsPrefixRefl!2453 lt!1411564 lt!1411564))))

(declare-fun b!3997051 () Bool)

(declare-fun e!2478071 () Bool)

(assert (=> b!3997051 (= e!2478087 e!2478071)))

(declare-fun res!1623284 () Bool)

(assert (=> b!3997051 (=> (not res!1623284) (not e!2478071))))

(declare-fun lt!1411523 () List!42870)

(assert (=> b!3997051 (= res!1623284 (= lt!1411523 lt!1411575))))

(assert (=> b!3997051 (= lt!1411575 (++!11176 prefix!494 newSuffix!27))))

(assert (=> b!3997051 (= lt!1411523 (++!11176 lt!1411527 newSuffixResult!27))))

(declare-fun b!3997052 () Bool)

(declare-fun e!2478064 () Bool)

(declare-fun tp!1216690 () Bool)

(assert (=> b!3997052 (= e!2478064 (and tp_is_empty!20329 tp!1216690))))

(declare-fun b!3997053 () Bool)

(declare-fun e!2478065 () Bool)

(declare-fun tp!1216697 () Bool)

(assert (=> b!3997053 (= e!2478065 (and tp_is_empty!20329 tp!1216697))))

(declare-fun b!3997054 () Bool)

(declare-fun e!2478093 () Bool)

(assert (=> b!3997054 (= e!2478071 e!2478093)))

(declare-fun res!1623292 () Bool)

(assert (=> b!3997054 (=> (not res!1623292) (not e!2478093))))

(declare-fun lt!1411589 () Option!9188)

(assert (=> b!3997054 (= res!1623292 (= (maxPrefix!3661 thiss!21717 rules!2999 lt!1411564) lt!1411589))))

(assert (=> b!3997054 (= lt!1411589 (Some!9187 lt!1411570))))

(assert (=> b!3997054 (= lt!1411570 (tuple2!41939 token!484 suffixResult!105))))

(assert (=> b!3997054 (= lt!1411564 (++!11176 prefix!494 suffix!1299))))

(declare-fun res!1623304 () Bool)

(assert (=> start!376204 (=> (not res!1623304) (not e!2478085))))

(assert (=> start!376204 (= res!1623304 ((_ is Lexer!6361) thiss!21717))))

(assert (=> start!376204 e!2478085))

(assert (=> start!376204 e!2478064))

(declare-fun e!2478077 () Bool)

(declare-fun inv!57093 (Token!12686) Bool)

(assert (=> start!376204 (and (inv!57093 token!484) e!2478077)))

(assert (=> start!376204 e!2478063))

(declare-fun e!2478083 () Bool)

(assert (=> start!376204 e!2478083))

(assert (=> start!376204 e!2478065))

(assert (=> start!376204 true))

(declare-fun e!2478092 () Bool)

(assert (=> start!376204 e!2478092))

(assert (=> start!376204 e!2478080))

(declare-fun b!3997031 () Bool)

(declare-fun e!2478079 () Bool)

(assert (=> b!3997031 (= e!2478079 e!2478076)))

(declare-fun res!1623303 () Bool)

(assert (=> b!3997031 (=> res!1623303 e!2478076)))

(assert (=> b!3997031 (= res!1623303 (not (= lt!1411534 lt!1411562)))))

(declare-fun lt!1411565 () Unit!61635)

(assert (=> b!3997031 (= lt!1411565 e!2478072)))

(declare-fun c!691519 () Bool)

(assert (=> b!3997031 (= c!691519 (< lt!1411562 lt!1411534))))

(declare-fun lt!1411539 () Unit!61635)

(assert (=> b!3997031 (= lt!1411539 e!2478068)))

(declare-fun c!691521 () Bool)

(assert (=> b!3997031 (= c!691521 (> lt!1411562 lt!1411534))))

(declare-fun lt!1411584 () List!42870)

(assert (=> b!3997031 (= (_2!24103 (v!39547 lt!1411582)) lt!1411584)))

(declare-fun lt!1411583 () Unit!61635)

(assert (=> b!3997031 (= lt!1411583 (lemmaSamePrefixThenSameSuffix!2048 lt!1411578 (_2!24103 (v!39547 lt!1411582)) lt!1411578 lt!1411584 lt!1411575))))

(declare-fun lt!1411580 () List!42870)

(assert (=> b!3997031 (isPrefix!3861 lt!1411578 lt!1411580)))

(declare-fun lt!1411541 () Unit!61635)

(assert (=> b!3997031 (= lt!1411541 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411578 lt!1411584))))

(declare-fun b!3997055 () Bool)

(declare-fun tp!1216695 () Bool)

(assert (=> b!3997055 (= e!2478083 (and tp_is_empty!20329 tp!1216695))))

(declare-fun b!3997056 () Bool)

(declare-fun e!2478078 () Bool)

(declare-fun e!2478061 () Bool)

(assert (=> b!3997056 (= e!2478078 e!2478061)))

(declare-fun res!1623293 () Bool)

(assert (=> b!3997056 (=> res!1623293 e!2478061)))

(assert (=> b!3997056 (= res!1623293 (not (isPrefix!3861 lt!1411527 lt!1411564)))))

(assert (=> b!3997056 (isPrefix!3861 prefix!494 lt!1411564)))

(declare-fun lt!1411528 () Unit!61635)

(assert (=> b!3997056 (= lt!1411528 (lemmaConcatTwoListThenFirstIsPrefix!2704 prefix!494 suffix!1299))))

(declare-fun lt!1411572 () List!42870)

(assert (=> b!3997056 (isPrefix!3861 lt!1411527 lt!1411572)))

(declare-fun lt!1411558 () Unit!61635)

(assert (=> b!3997056 (= lt!1411558 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411527 suffixResult!105))))

(declare-fun b!3997057 () Bool)

(assert (=> b!3997057 (= e!2478074 (and (= (size!31967 token!484) lt!1411534) (= (originalCharacters!7374 token!484) lt!1411527)))))

(declare-fun b!3997058 () Bool)

(declare-fun res!1623307 () Bool)

(assert (=> b!3997058 (=> (not res!1623307) (not e!2478074))))

(assert (=> b!3997058 (= res!1623307 (= (size!31967 token!484) (size!31968 (originalCharacters!7374 token!484))))))

(declare-fun b!3997059 () Bool)

(assert (=> b!3997059 (= e!2478089 e!2478079)))

(declare-fun res!1623289 () Bool)

(assert (=> b!3997059 (=> res!1623289 e!2478079)))

(assert (=> b!3997059 (= res!1623289 (not (= lt!1411580 lt!1411575)))))

(assert (=> b!3997059 (= lt!1411580 (++!11176 lt!1411578 lt!1411584))))

(assert (=> b!3997059 (= lt!1411584 (getSuffix!2292 lt!1411575 lt!1411578))))

(declare-fun b!3997060 () Bool)

(declare-fun res!1623302 () Bool)

(assert (=> b!3997060 (=> (not res!1623302) (not e!2478085))))

(assert (=> b!3997060 (= res!1623302 (isPrefix!3861 newSuffix!27 suffix!1299))))

(declare-fun b!3997061 () Bool)

(declare-fun Unit!61643 () Unit!61635)

(assert (=> b!3997061 (= e!2478072 Unit!61643)))

(declare-fun b!3997062 () Bool)

(declare-fun tp!1216698 () Bool)

(assert (=> b!3997062 (= e!2478092 (and e!2478090 tp!1216698))))

(declare-fun b!3997063 () Bool)

(assert (=> b!3997063 (= e!2478094 false)))

(declare-fun b!3997064 () Bool)

(assert (=> b!3997064 (= e!2478082 e!2478088)))

(declare-fun res!1623280 () Bool)

(assert (=> b!3997064 (=> res!1623280 e!2478088)))

(assert (=> b!3997064 (= res!1623280 (not (= lt!1411587 suffix!1299)))))

(assert (=> b!3997064 (= lt!1411587 (++!11176 newSuffix!27 lt!1411529))))

(assert (=> b!3997064 (= lt!1411529 (getSuffix!2292 suffix!1299 newSuffix!27))))

(declare-fun b!3997065 () Bool)

(declare-fun Unit!61644 () Unit!61635)

(assert (=> b!3997065 (= e!2478068 Unit!61644)))

(declare-fun b!3997066 () Bool)

(assert (=> b!3997066 (= e!2478061 e!2478062)))

(declare-fun res!1623296 () Bool)

(assert (=> b!3997066 (=> res!1623296 e!2478062)))

(assert (=> b!3997066 (= res!1623296 (not (= lt!1411550 prefix!494)))))

(assert (=> b!3997066 (= lt!1411550 (++!11176 lt!1411527 lt!1411535))))

(assert (=> b!3997066 (= lt!1411535 (getSuffix!2292 prefix!494 lt!1411527))))

(assert (=> b!3997066 (isPrefix!3861 lt!1411527 prefix!494)))

(declare-fun lt!1411567 () Unit!61635)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!439 (List!42870 List!42870 List!42870) Unit!61635)

(assert (=> b!3997066 (= lt!1411567 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!439 prefix!494 lt!1411527 lt!1411564))))

(declare-fun b!3997067 () Bool)

(declare-fun res!1623283 () Bool)

(assert (=> b!3997067 (=> (not res!1623283) (not e!2478085))))

(assert (=> b!3997067 (= res!1623283 (>= (size!31968 suffix!1299) (size!31968 newSuffix!27)))))

(declare-fun tp!1216688 () Bool)

(declare-fun b!3997068 () Bool)

(declare-fun e!2478075 () Bool)

(declare-fun inv!21 (TokenValue!7004) Bool)

(assert (=> b!3997068 (= e!2478077 (and (inv!21 (value!213693 token!484)) e!2478075 tp!1216688))))

(declare-fun b!3997069 () Bool)

(assert (=> b!3997069 (= e!2478073 e!2478081)))

(declare-fun res!1623282 () Bool)

(assert (=> b!3997069 (=> res!1623282 e!2478081)))

(declare-fun lt!1411556 () Option!9188)

(assert (=> b!3997069 (= res!1623282 (not (= lt!1411556 lt!1411589)))))

(assert (=> b!3997069 (= lt!1411556 (Some!9187 (tuple2!41939 lt!1411548 suffixResult!105)))))

(assert (=> b!3997069 (= lt!1411556 (maxPrefixOneRule!2695 thiss!21717 (rule!9802 token!484) lt!1411564))))

(assert (=> b!3997069 (= lt!1411548 (Token!12687 lt!1411549 (rule!9802 token!484) lt!1411534 lt!1411527))))

(assert (=> b!3997069 (= lt!1411549 (apply!9985 (transformation!6774 (rule!9802 token!484)) (seqFromList!5013 lt!1411527)))))

(declare-fun lt!1411545 () Unit!61635)

(assert (=> b!3997069 (= lt!1411545 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1517 thiss!21717 rules!2999 lt!1411527 lt!1411564 suffixResult!105 (rule!9802 token!484)))))

(assert (=> b!3997069 (= lt!1411560 suffixResult!105)))

(declare-fun lt!1411543 () Unit!61635)

(assert (=> b!3997069 (= lt!1411543 (lemmaSamePrefixThenSameSuffix!2048 lt!1411527 lt!1411560 lt!1411527 suffixResult!105 lt!1411564))))

(assert (=> b!3997069 (isPrefix!3861 lt!1411527 lt!1411530)))

(declare-fun lt!1411588 () Unit!61635)

(assert (=> b!3997069 (= lt!1411588 (lemmaConcatTwoListThenFirstIsPrefix!2704 lt!1411527 lt!1411560))))

(declare-fun e!2478096 () Bool)

(assert (=> b!3997070 (= e!2478096 (and tp!1216692 tp!1216696))))

(declare-fun b!3997071 () Bool)

(declare-fun Unit!61645 () Unit!61635)

(assert (=> b!3997071 (= e!2478058 Unit!61645)))

(declare-fun lt!1411552 () Unit!61635)

(assert (=> b!3997071 (= lt!1411552 (lemmaMaxPrefNoSmallerRuleMatches!270 thiss!21717 rules!2999 (rule!9802 (_1!24103 (v!39547 lt!1411582))) lt!1411578 lt!1411575 (rule!9802 token!484)))))

(declare-fun res!1623310 () Bool)

(assert (=> b!3997071 (= res!1623310 (not (matchR!5656 (regex!6774 (rule!9802 token!484)) lt!1411578)))))

(assert (=> b!3997071 (=> (not res!1623310) (not e!2478056))))

(assert (=> b!3997071 e!2478056))

(declare-fun b!3997072 () Bool)

(declare-fun res!1623300 () Bool)

(assert (=> b!3997072 (=> (not res!1623300) (not e!2478085))))

(declare-fun rulesInvariant!5706 (LexerInterface!6363 List!42872) Bool)

(assert (=> b!3997072 (= res!1623300 (rulesInvariant!5706 thiss!21717 rules!2999))))

(declare-fun tp!1216694 () Bool)

(declare-fun b!3997073 () Bool)

(assert (=> b!3997073 (= e!2478075 (and tp!1216694 (inv!57089 (tag!7634 (rule!9802 token!484))) (inv!57092 (transformation!6774 (rule!9802 token!484))) e!2478096))))

(declare-fun b!3997074 () Bool)

(assert (=> b!3997074 (= e!2478076 e!2478095)))

(declare-fun res!1623305 () Bool)

(assert (=> b!3997074 (=> res!1623305 e!2478095)))

(assert (=> b!3997074 (= res!1623305 (not (contains!8507 rules!2999 (rule!9802 (_1!24103 (v!39547 lt!1411582))))))))

(declare-fun lt!1411525 () Unit!61635)

(assert (=> b!3997074 (= lt!1411525 e!2478058)))

(declare-fun c!691518 () Bool)

(declare-fun lt!1411561 () Int)

(declare-fun lt!1411574 () Int)

(assert (=> b!3997074 (= c!691518 (> lt!1411561 lt!1411574))))

(declare-fun lt!1411524 () Unit!61635)

(assert (=> b!3997074 (= lt!1411524 e!2478070)))

(declare-fun c!691520 () Bool)

(assert (=> b!3997074 (= c!691520 (< lt!1411561 lt!1411574))))

(declare-fun getIndex!544 (List!42872 Rule!13348) Int)

(assert (=> b!3997074 (= lt!1411574 (getIndex!544 rules!2999 (rule!9802 token!484)))))

(assert (=> b!3997074 (= lt!1411561 (getIndex!544 rules!2999 (rule!9802 (_1!24103 (v!39547 lt!1411582)))))))

(assert (=> b!3997074 (= (_2!24103 (v!39547 lt!1411582)) newSuffixResult!27)))

(declare-fun lt!1411531 () Unit!61635)

(assert (=> b!3997074 (= lt!1411531 (lemmaSamePrefixThenSameSuffix!2048 lt!1411578 (_2!24103 (v!39547 lt!1411582)) lt!1411527 newSuffixResult!27 lt!1411575))))

(assert (=> b!3997074 (= lt!1411578 lt!1411527)))

(declare-fun lt!1411585 () Unit!61635)

(declare-fun lemmaIsPrefixSameLengthThenSameList!883 (List!42870 List!42870 List!42870) Unit!61635)

(assert (=> b!3997074 (= lt!1411585 (lemmaIsPrefixSameLengthThenSameList!883 lt!1411578 lt!1411527 lt!1411575))))

(declare-fun b!3997075 () Bool)

(assert (=> b!3997075 (= e!2478093 (not e!2478078))))

(declare-fun res!1623291 () Bool)

(assert (=> b!3997075 (=> res!1623291 e!2478078)))

(assert (=> b!3997075 (= res!1623291 (not (= lt!1411572 lt!1411564)))))

(assert (=> b!3997075 (= lt!1411572 (++!11176 lt!1411527 suffixResult!105))))

(declare-fun lt!1411540 () Unit!61635)

(assert (=> b!3997075 (= lt!1411540 (lemmaInv!989 (transformation!6774 (rule!9802 token!484))))))

(assert (=> b!3997075 (ruleValid!2706 thiss!21717 (rule!9802 token!484))))

(declare-fun lt!1411579 () Unit!61635)

(assert (=> b!3997075 (= lt!1411579 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1780 thiss!21717 (rule!9802 token!484) rules!2999))))

(declare-fun b!3997076 () Bool)

(declare-fun res!1623299 () Bool)

(assert (=> b!3997076 (=> res!1623299 e!2478089)))

(assert (=> b!3997076 (= res!1623299 (not (= lt!1411581 lt!1411575)))))

(assert (= (and start!376204 res!1623304) b!3997040))

(assert (= (and b!3997040 res!1623288) b!3997072))

(assert (= (and b!3997072 res!1623300) b!3997067))

(assert (= (and b!3997067 res!1623283) b!3997060))

(assert (= (and b!3997060 res!1623302) b!3997046))

(assert (= (and b!3997046 res!1623287) b!3997051))

(assert (= (and b!3997051 res!1623284) b!3997054))

(assert (= (and b!3997054 res!1623292) b!3997075))

(assert (= (and b!3997075 (not res!1623291)) b!3997056))

(assert (= (and b!3997056 (not res!1623293)) b!3997066))

(assert (= (and b!3997066 (not res!1623296)) b!3997027))

(assert (= (and b!3997027 (not res!1623306)) b!3997069))

(assert (= (and b!3997069 (not res!1623282)) b!3997033))

(assert (= (and b!3997033 (not res!1623309)) b!3997050))

(assert (= (and b!3997050 res!1623286) b!3997035))

(assert (= (and b!3997035 res!1623281) b!3997058))

(assert (= (and b!3997058 res!1623307) b!3997057))

(assert (= (and b!3997050 (not res!1623295)) b!3997039))

(assert (= (and b!3997039 (not res!1623298)) b!3997032))

(assert (= (and b!3997032 (not res!1623294)) b!3997064))

(assert (= (and b!3997064 (not res!1623280)) b!3997030))

(assert (= (and b!3997030 (not res!1623297)) b!3997044))

(assert (= (and b!3997044 (not res!1623285)) b!3997076))

(assert (= (and b!3997076 (not res!1623299)) b!3997059))

(assert (= (and b!3997059 (not res!1623289)) b!3997031))

(assert (= (and b!3997031 c!691521) b!3997049))

(assert (= (and b!3997031 (not c!691521)) b!3997065))

(assert (= (and b!3997049 res!1623301) b!3997063))

(assert (= (and b!3997031 c!691519) b!3997045))

(assert (= (and b!3997031 (not c!691519)) b!3997061))

(assert (= (and b!3997031 (not res!1623303)) b!3997047))

(assert (= (and b!3997047 (not res!1623308)) b!3997074))

(assert (= (and b!3997074 c!691520) b!3997041))

(assert (= (and b!3997074 (not c!691520)) b!3997037))

(assert (= (and b!3997041 res!1623290) b!3997029))

(assert (= (and b!3997074 c!691518) b!3997071))

(assert (= (and b!3997074 (not c!691518)) b!3997028))

(assert (= (and b!3997071 res!1623310) b!3997043))

(assert (= (and b!3997074 (not res!1623305)) b!3997036))

(assert (= (and start!376204 ((_ is Cons!42746) prefix!494)) b!3997052))

(assert (= b!3997073 b!3997070))

(assert (= b!3997068 b!3997073))

(assert (= start!376204 b!3997068))

(assert (= (and start!376204 ((_ is Cons!42746) suffixResult!105)) b!3997042))

(assert (= (and start!376204 ((_ is Cons!42746) suffix!1299)) b!3997055))

(assert (= (and start!376204 ((_ is Cons!42746) newSuffix!27)) b!3997053))

(assert (= b!3997048 b!3997038))

(assert (= b!3997062 b!3997048))

(assert (= (and start!376204 ((_ is Cons!42748) rules!2999)) b!3997062))

(assert (= (and start!376204 ((_ is Cons!42746) newSuffixResult!27)) b!3997034))

(declare-fun m!4577971 () Bool)

(assert (=> b!3997068 m!4577971))

(declare-fun m!4577973 () Bool)

(assert (=> b!3997054 m!4577973))

(declare-fun m!4577975 () Bool)

(assert (=> b!3997054 m!4577975))

(declare-fun m!4577977 () Bool)

(assert (=> start!376204 m!4577977))

(declare-fun m!4577979 () Bool)

(assert (=> b!3997030 m!4577979))

(declare-fun m!4577981 () Bool)

(assert (=> b!3997030 m!4577981))

(declare-fun m!4577983 () Bool)

(assert (=> b!3997030 m!4577983))

(declare-fun m!4577985 () Bool)

(assert (=> b!3997049 m!4577985))

(declare-fun m!4577987 () Bool)

(assert (=> b!3997049 m!4577987))

(declare-fun m!4577989 () Bool)

(assert (=> b!3997072 m!4577989))

(declare-fun m!4577991 () Bool)

(assert (=> b!3997059 m!4577991))

(declare-fun m!4577993 () Bool)

(assert (=> b!3997059 m!4577993))

(declare-fun m!4577995 () Bool)

(assert (=> b!3997074 m!4577995))

(declare-fun m!4577997 () Bool)

(assert (=> b!3997074 m!4577997))

(declare-fun m!4577999 () Bool)

(assert (=> b!3997074 m!4577999))

(declare-fun m!4578001 () Bool)

(assert (=> b!3997074 m!4578001))

(declare-fun m!4578003 () Bool)

(assert (=> b!3997074 m!4578003))

(declare-fun m!4578005 () Bool)

(assert (=> b!3997069 m!4578005))

(declare-fun m!4578007 () Bool)

(assert (=> b!3997069 m!4578007))

(declare-fun m!4578009 () Bool)

(assert (=> b!3997069 m!4578009))

(assert (=> b!3997069 m!4578005))

(declare-fun m!4578011 () Bool)

(assert (=> b!3997069 m!4578011))

(declare-fun m!4578013 () Bool)

(assert (=> b!3997069 m!4578013))

(declare-fun m!4578015 () Bool)

(assert (=> b!3997069 m!4578015))

(declare-fun m!4578017 () Bool)

(assert (=> b!3997069 m!4578017))

(declare-fun m!4578019 () Bool)

(assert (=> b!3997044 m!4578019))

(declare-fun m!4578021 () Bool)

(assert (=> b!3997044 m!4578021))

(declare-fun m!4578023 () Bool)

(assert (=> b!3997044 m!4578023))

(declare-fun m!4578025 () Bool)

(assert (=> b!3997058 m!4578025))

(declare-fun m!4578027 () Bool)

(assert (=> b!3997071 m!4578027))

(declare-fun m!4578029 () Bool)

(assert (=> b!3997071 m!4578029))

(declare-fun m!4578031 () Bool)

(assert (=> b!3997073 m!4578031))

(declare-fun m!4578033 () Bool)

(assert (=> b!3997073 m!4578033))

(declare-fun m!4578035 () Bool)

(assert (=> b!3997064 m!4578035))

(declare-fun m!4578037 () Bool)

(assert (=> b!3997064 m!4578037))

(declare-fun m!4578039 () Bool)

(assert (=> b!3997066 m!4578039))

(declare-fun m!4578041 () Bool)

(assert (=> b!3997066 m!4578041))

(declare-fun m!4578043 () Bool)

(assert (=> b!3997066 m!4578043))

(declare-fun m!4578045 () Bool)

(assert (=> b!3997066 m!4578045))

(declare-fun m!4578047 () Bool)

(assert (=> b!3997048 m!4578047))

(declare-fun m!4578049 () Bool)

(assert (=> b!3997048 m!4578049))

(declare-fun m!4578051 () Bool)

(assert (=> b!3997036 m!4578051))

(declare-fun m!4578053 () Bool)

(assert (=> b!3997045 m!4578053))

(declare-fun m!4578055 () Bool)

(assert (=> b!3997075 m!4578055))

(declare-fun m!4578057 () Bool)

(assert (=> b!3997075 m!4578057))

(declare-fun m!4578059 () Bool)

(assert (=> b!3997075 m!4578059))

(declare-fun m!4578061 () Bool)

(assert (=> b!3997075 m!4578061))

(declare-fun m!4578063 () Bool)

(assert (=> b!3997056 m!4578063))

(declare-fun m!4578065 () Bool)

(assert (=> b!3997056 m!4578065))

(declare-fun m!4578067 () Bool)

(assert (=> b!3997056 m!4578067))

(declare-fun m!4578069 () Bool)

(assert (=> b!3997056 m!4578069))

(declare-fun m!4578071 () Bool)

(assert (=> b!3997056 m!4578071))

(declare-fun m!4578073 () Bool)

(assert (=> b!3997027 m!4578073))

(declare-fun m!4578075 () Bool)

(assert (=> b!3997027 m!4578075))

(declare-fun m!4578077 () Bool)

(assert (=> b!3997027 m!4578077))

(declare-fun m!4578079 () Bool)

(assert (=> b!3997027 m!4578079))

(declare-fun m!4578081 () Bool)

(assert (=> b!3997050 m!4578081))

(declare-fun m!4578083 () Bool)

(assert (=> b!3997050 m!4578083))

(declare-fun m!4578085 () Bool)

(assert (=> b!3997050 m!4578085))

(declare-fun m!4578087 () Bool)

(assert (=> b!3997050 m!4578087))

(declare-fun m!4578089 () Bool)

(assert (=> b!3997033 m!4578089))

(declare-fun m!4578091 () Bool)

(assert (=> b!3997033 m!4578091))

(declare-fun m!4578093 () Bool)

(assert (=> b!3997033 m!4578093))

(declare-fun m!4578095 () Bool)

(assert (=> b!3997033 m!4578095))

(declare-fun m!4578097 () Bool)

(assert (=> b!3997041 m!4578097))

(declare-fun m!4578099 () Bool)

(assert (=> b!3997041 m!4578099))

(declare-fun m!4578101 () Bool)

(assert (=> b!3997032 m!4578101))

(declare-fun m!4578103 () Bool)

(assert (=> b!3997032 m!4578103))

(declare-fun m!4578105 () Bool)

(assert (=> b!3997032 m!4578105))

(declare-fun m!4578107 () Bool)

(assert (=> b!3997032 m!4578107))

(declare-fun m!4578109 () Bool)

(assert (=> b!3997032 m!4578109))

(declare-fun m!4578111 () Bool)

(assert (=> b!3997032 m!4578111))

(declare-fun m!4578113 () Bool)

(assert (=> b!3997032 m!4578113))

(declare-fun m!4578115 () Bool)

(assert (=> b!3997032 m!4578115))

(declare-fun m!4578117 () Bool)

(assert (=> b!3997032 m!4578117))

(declare-fun m!4578119 () Bool)

(assert (=> b!3997032 m!4578119))

(assert (=> b!3997032 m!4578117))

(declare-fun m!4578121 () Bool)

(assert (=> b!3997032 m!4578121))

(declare-fun m!4578123 () Bool)

(assert (=> b!3997032 m!4578123))

(declare-fun m!4578125 () Bool)

(assert (=> b!3997032 m!4578125))

(assert (=> b!3997032 m!4578103))

(declare-fun m!4578127 () Bool)

(assert (=> b!3997032 m!4578127))

(declare-fun m!4578129 () Bool)

(assert (=> b!3997032 m!4578129))

(declare-fun m!4578131 () Bool)

(assert (=> b!3997032 m!4578131))

(declare-fun m!4578133 () Bool)

(assert (=> b!3997032 m!4578133))

(assert (=> b!3997032 m!4578113))

(declare-fun m!4578135 () Bool)

(assert (=> b!3997032 m!4578135))

(declare-fun m!4578137 () Bool)

(assert (=> b!3997040 m!4578137))

(declare-fun m!4578139 () Bool)

(assert (=> b!3997046 m!4578139))

(declare-fun m!4578141 () Bool)

(assert (=> b!3997046 m!4578141))

(declare-fun m!4578143 () Bool)

(assert (=> b!3997046 m!4578143))

(assert (=> b!3997046 m!4578143))

(declare-fun m!4578145 () Bool)

(assert (=> b!3997046 m!4578145))

(declare-fun m!4578147 () Bool)

(assert (=> b!3997039 m!4578147))

(declare-fun m!4578149 () Bool)

(assert (=> b!3997039 m!4578149))

(declare-fun m!4578151 () Bool)

(assert (=> b!3997039 m!4578151))

(declare-fun m!4578153 () Bool)

(assert (=> b!3997039 m!4578153))

(declare-fun m!4578155 () Bool)

(assert (=> b!3997031 m!4578155))

(declare-fun m!4578157 () Bool)

(assert (=> b!3997031 m!4578157))

(declare-fun m!4578159 () Bool)

(assert (=> b!3997031 m!4578159))

(declare-fun m!4578161 () Bool)

(assert (=> b!3997047 m!4578161))

(declare-fun m!4578163 () Bool)

(assert (=> b!3997051 m!4578163))

(declare-fun m!4578165 () Bool)

(assert (=> b!3997051 m!4578165))

(declare-fun m!4578167 () Bool)

(assert (=> b!3997060 m!4578167))

(declare-fun m!4578169 () Bool)

(assert (=> b!3997067 m!4578169))

(declare-fun m!4578171 () Bool)

(assert (=> b!3997067 m!4578171))

(check-sat b_and!306979 (not b!3997032) (not b!3997054) (not start!376204) b_and!306977 (not b!3997033) tp_is_empty!20329 (not b!3997042) (not b!3997066) (not b!3997064) b_and!306975 (not b!3997053) (not b_next!111729) (not b!3997067) (not b_next!111733) (not b!3997058) (not b!3997052) (not b!3997047) (not b_next!111731) (not b!3997074) (not b!3997059) (not b!3997027) (not b!3997069) b_and!306981 (not b!3997049) (not b!3997051) (not b!3997045) (not b!3997071) (not b!3997068) (not b!3997075) (not b!3997050) (not b_next!111735) (not b!3997039) (not b!3997030) (not b!3997036) (not b!3997062) (not b!3997044) (not b!3997073) (not b!3997048) (not b!3997056) (not b!3997040) (not b!3997046) (not b!3997060) (not b!3997034) (not b!3997055) (not b!3997041) (not b!3997031) (not b!3997072))
(check-sat b_and!306979 b_and!306975 (not b_next!111729) (not b_next!111733) (not b_next!111731) b_and!306981 b_and!306977 (not b_next!111735))
