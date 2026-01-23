; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393330 () Bool)

(assert start!393330)

(declare-fun b!4138990 () Bool)

(declare-fun b_free!117763 () Bool)

(declare-fun b_next!118467 () Bool)

(assert (=> b!4138990 (= b_free!117763 (not b_next!118467))))

(declare-fun tp!1261632 () Bool)

(declare-fun b_and!321297 () Bool)

(assert (=> b!4138990 (= tp!1261632 b_and!321297)))

(declare-fun b_free!117765 () Bool)

(declare-fun b_next!118469 () Bool)

(assert (=> b!4138990 (= b_free!117765 (not b_next!118469))))

(declare-fun tp!1261626 () Bool)

(declare-fun b_and!321299 () Bool)

(assert (=> b!4138990 (= tp!1261626 b_and!321299)))

(declare-fun b!4139007 () Bool)

(declare-fun b_free!117767 () Bool)

(declare-fun b_next!118471 () Bool)

(assert (=> b!4139007 (= b_free!117767 (not b_next!118471))))

(declare-fun tp!1261634 () Bool)

(declare-fun b_and!321301 () Bool)

(assert (=> b!4139007 (= tp!1261634 b_and!321301)))

(declare-fun b_free!117769 () Bool)

(declare-fun b_next!118473 () Bool)

(assert (=> b!4139007 (= b_free!117769 (not b_next!118473))))

(declare-fun tp!1261631 () Bool)

(declare-fun b_and!321303 () Bool)

(assert (=> b!4139007 (= tp!1261631 b_and!321303)))

(declare-fun b!4139003 () Bool)

(declare-fun b_free!117771 () Bool)

(declare-fun b_next!118475 () Bool)

(assert (=> b!4139003 (= b_free!117771 (not b_next!118475))))

(declare-fun tp!1261627 () Bool)

(declare-fun b_and!321305 () Bool)

(assert (=> b!4139003 (= tp!1261627 b_and!321305)))

(declare-fun b_free!117773 () Bool)

(declare-fun b_next!118477 () Bool)

(assert (=> b!4139003 (= b_free!117773 (not b_next!118477))))

(declare-fun tp!1261629 () Bool)

(declare-fun b_and!321307 () Bool)

(assert (=> b!4139003 (= tp!1261629 b_and!321307)))

(declare-fun e!2568098 () Bool)

(assert (=> b!4138990 (= e!2568098 (and tp!1261632 tp!1261626))))

(declare-datatypes ((List!44994 0))(
  ( (Nil!44870) (Cons!44870 (h!50290 (_ BitVec 16)) (t!342223 List!44994)) )
))
(declare-datatypes ((TokenValue!7594 0))(
  ( (FloatLiteralValue!15188 (text!53603 List!44994)) (TokenValueExt!7593 (__x!27405 Int)) (Broken!37970 (value!230402 List!44994)) (Object!7717) (End!7594) (Def!7594) (Underscore!7594) (Match!7594) (Else!7594) (Error!7594) (Case!7594) (If!7594) (Extends!7594) (Abstract!7594) (Class!7594) (Val!7594) (DelimiterValue!15188 (del!7654 List!44994)) (KeywordValue!7600 (value!230403 List!44994)) (CommentValue!15188 (value!230404 List!44994)) (WhitespaceValue!15188 (value!230405 List!44994)) (IndentationValue!7594 (value!230406 List!44994)) (String!51719) (Int32!7594) (Broken!37971 (value!230407 List!44994)) (Boolean!7595) (Unit!64174) (OperatorValue!7597 (op!7654 List!44994)) (IdentifierValue!15188 (value!230408 List!44994)) (IdentifierValue!15189 (value!230409 List!44994)) (WhitespaceValue!15189 (value!230410 List!44994)) (True!15188) (False!15188) (Broken!37972 (value!230411 List!44994)) (Broken!37973 (value!230412 List!44994)) (True!15189) (RightBrace!7594) (RightBracket!7594) (Colon!7594) (Null!7594) (Comma!7594) (LeftBracket!7594) (False!15189) (LeftBrace!7594) (ImaginaryLiteralValue!7594 (text!53604 List!44994)) (StringLiteralValue!22782 (value!230413 List!44994)) (EOFValue!7594 (value!230414 List!44994)) (IdentValue!7594 (value!230415 List!44994)) (DelimiterValue!15189 (value!230416 List!44994)) (DedentValue!7594 (value!230417 List!44994)) (NewLineValue!7594 (value!230418 List!44994)) (IntegerValue!22782 (value!230419 (_ BitVec 32)) (text!53605 List!44994)) (IntegerValue!22783 (value!230420 Int) (text!53606 List!44994)) (Times!7594) (Or!7594) (Equal!7594) (Minus!7594) (Broken!37974 (value!230421 List!44994)) (And!7594) (Div!7594) (LessEqual!7594) (Mod!7594) (Concat!19863) (Not!7594) (Plus!7594) (SpaceValue!7594 (value!230422 List!44994)) (IntegerValue!22784 (value!230423 Int) (text!53607 List!44994)) (StringLiteralValue!22783 (text!53608 List!44994)) (FloatLiteralValue!15189 (text!53609 List!44994)) (BytesLiteralValue!7594 (value!230424 List!44994)) (CommentValue!15189 (value!230425 List!44994)) (StringLiteralValue!22784 (value!230426 List!44994)) (ErrorTokenValue!7594 (msg!7655 List!44994)) )
))
(declare-datatypes ((C!24724 0))(
  ( (C!24725 (val!14472 Int)) )
))
(declare-datatypes ((List!44995 0))(
  ( (Nil!44871) (Cons!44871 (h!50291 C!24724) (t!342224 List!44995)) )
))
(declare-datatypes ((IArray!27155 0))(
  ( (IArray!27156 (innerList!13635 List!44995)) )
))
(declare-datatypes ((Conc!13575 0))(
  ( (Node!13575 (left!33603 Conc!13575) (right!33933 Conc!13575) (csize!27380 Int) (cheight!13786 Int)) (Leaf!20972 (xs!16881 IArray!27155) (csize!27381 Int)) (Empty!13575) )
))
(declare-datatypes ((BalanceConc!26744 0))(
  ( (BalanceConc!26745 (c!709666 Conc!13575)) )
))
(declare-datatypes ((String!51720 0))(
  ( (String!51721 (value!230427 String)) )
))
(declare-datatypes ((Regex!12269 0))(
  ( (ElementMatch!12269 (c!709667 C!24724)) (Concat!19864 (regOne!25050 Regex!12269) (regTwo!25050 Regex!12269)) (EmptyExpr!12269) (Star!12269 (reg!12598 Regex!12269)) (EmptyLang!12269) (Union!12269 (regOne!25051 Regex!12269) (regTwo!25051 Regex!12269)) )
))
(declare-datatypes ((TokenValueInjection!14616 0))(
  ( (TokenValueInjection!14617 (toValue!10028 Int) (toChars!9887 Int)) )
))
(declare-datatypes ((Rule!14528 0))(
  ( (Rule!14529 (regex!7364 Regex!12269) (tag!8224 String!51720) (isSeparator!7364 Bool) (transformation!7364 TokenValueInjection!14616)) )
))
(declare-fun rBis!149 () Rule!14528)

(declare-fun tp!1261630 () Bool)

(declare-fun b!4138991 () Bool)

(declare-fun e!2568093 () Bool)

(declare-fun inv!59477 (String!51720) Bool)

(declare-fun inv!59479 (TokenValueInjection!14616) Bool)

(assert (=> b!4138991 (= e!2568093 (and tp!1261630 (inv!59477 (tag!8224 rBis!149)) (inv!59479 (transformation!7364 rBis!149)) e!2568098))))

(declare-fun b!4138992 () Bool)

(declare-fun res!1693007 () Bool)

(declare-fun e!2568100 () Bool)

(assert (=> b!4138992 (=> (not res!1693007) (not e!2568100))))

(declare-datatypes ((LexerInterface!6953 0))(
  ( (LexerInterfaceExt!6950 (__x!27406 Int)) (Lexer!6951) )
))
(declare-fun thiss!25645 () LexerInterface!6953)

(declare-fun r!4008 () Rule!14528)

(declare-fun ruleValid!3170 (LexerInterface!6953 Rule!14528) Bool)

(assert (=> b!4138992 (= res!1693007 (ruleValid!3170 thiss!25645 r!4008))))

(declare-fun b!4138993 () Bool)

(declare-fun res!1693006 () Bool)

(declare-fun e!2568102 () Bool)

(assert (=> b!4138993 (=> (not res!1693006) (not e!2568102))))

(declare-fun p!2912 () List!44995)

(declare-fun input!3238 () List!44995)

(declare-fun isPrefix!4299 (List!44995 List!44995) Bool)

(assert (=> b!4138993 (= res!1693006 (isPrefix!4299 p!2912 input!3238))))

(declare-datatypes ((List!44996 0))(
  ( (Nil!44872) (Cons!44872 (h!50292 Rule!14528) (t!342225 List!44996)) )
))
(declare-fun rules!3756 () List!44996)

(declare-fun tp!1261625 () Bool)

(declare-fun e!2568096 () Bool)

(declare-fun b!4138994 () Bool)

(declare-fun e!2568101 () Bool)

(assert (=> b!4138994 (= e!2568096 (and tp!1261625 (inv!59477 (tag!8224 (h!50292 rules!3756))) (inv!59479 (transformation!7364 (h!50292 rules!3756))) e!2568101))))

(declare-fun b!4138995 () Bool)

(declare-fun e!2568103 () Bool)

(declare-fun e!2568106 () Bool)

(assert (=> b!4138995 (= e!2568103 e!2568106)))

(declare-fun res!1693003 () Bool)

(assert (=> b!4138995 (=> res!1693003 e!2568106)))

(declare-fun lt!1475888 () BalanceConc!26744)

(declare-fun lt!1475887 () Int)

(declare-fun size!33228 (BalanceConc!26744) Int)

(assert (=> b!4138995 (= res!1693003 (<= (size!33228 lt!1475888) lt!1475887))))

(declare-datatypes ((Token!13658 0))(
  ( (Token!13659 (value!230428 TokenValue!7594) (rule!10470 Rule!14528) (size!33229 Int) (originalCharacters!7860 List!44995)) )
))
(declare-datatypes ((tuple2!43262 0))(
  ( (tuple2!43263 (_1!24765 Token!13658) (_2!24765 List!44995)) )
))
(declare-fun lt!1475882 () tuple2!43262)

(declare-fun charsOf!4963 (Token!13658) BalanceConc!26744)

(assert (=> b!4138995 (= lt!1475888 (charsOf!4963 (_1!24765 lt!1475882)))))

(declare-datatypes ((Option!9670 0))(
  ( (None!9669) (Some!9669 (v!40303 tuple2!43262)) )
))
(declare-fun lt!1475878 () Option!9670)

(declare-fun get!14641 (Option!9670) tuple2!43262)

(assert (=> b!4138995 (= lt!1475882 (get!14641 lt!1475878))))

(declare-fun b!4138996 () Bool)

(assert (=> b!4138996 (= e!2568102 e!2568100)))

(declare-fun res!1693015 () Bool)

(assert (=> b!4138996 (=> (not res!1693015) (not e!2568100))))

(declare-fun lt!1475876 () Token!13658)

(declare-fun lt!1475877 () List!44995)

(declare-fun maxPrefix!4143 (LexerInterface!6953 List!44996 List!44995) Option!9670)

(assert (=> b!4138996 (= res!1693015 (= (maxPrefix!4143 thiss!25645 rules!3756 input!3238) (Some!9669 (tuple2!43263 lt!1475876 lt!1475877))))))

(declare-fun getSuffix!2626 (List!44995 List!44995) List!44995)

(assert (=> b!4138996 (= lt!1475877 (getSuffix!2626 input!3238 p!2912))))

(declare-fun lt!1475886 () TokenValue!7594)

(assert (=> b!4138996 (= lt!1475876 (Token!13659 lt!1475886 r!4008 lt!1475887 p!2912))))

(declare-fun size!33230 (List!44995) Int)

(assert (=> b!4138996 (= lt!1475887 (size!33230 p!2912))))

(declare-fun lt!1475884 () BalanceConc!26744)

(declare-fun apply!10437 (TokenValueInjection!14616 BalanceConc!26744) TokenValue!7594)

(assert (=> b!4138996 (= lt!1475886 (apply!10437 (transformation!7364 r!4008) lt!1475884))))

(declare-datatypes ((Unit!64175 0))(
  ( (Unit!64176) )
))
(declare-fun lt!1475879 () Unit!64175)

(declare-fun lemmaSemiInverse!2222 (TokenValueInjection!14616 BalanceConc!26744) Unit!64175)

(assert (=> b!4138996 (= lt!1475879 (lemmaSemiInverse!2222 (transformation!7364 r!4008) lt!1475884))))

(declare-fun seqFromList!5481 (List!44995) BalanceConc!26744)

(assert (=> b!4138996 (= lt!1475884 (seqFromList!5481 p!2912))))

(declare-fun b!4138998 () Bool)

(declare-fun res!1693002 () Bool)

(assert (=> b!4138998 (=> (not res!1693002) (not e!2568100))))

(declare-fun getIndex!710 (List!44996 Rule!14528) Int)

(assert (=> b!4138998 (= res!1693002 (< (getIndex!710 rules!3756 rBis!149) (getIndex!710 rules!3756 r!4008)))))

(declare-fun b!4138999 () Bool)

(declare-fun res!1693011 () Bool)

(assert (=> b!4138999 (=> (not res!1693011) (not e!2568102))))

(declare-fun rulesInvariant!6250 (LexerInterface!6953 List!44996) Bool)

(assert (=> b!4138999 (= res!1693011 (rulesInvariant!6250 thiss!25645 rules!3756))))

(declare-fun b!4139000 () Bool)

(assert (=> b!4139000 (= e!2568106 false)))

(declare-fun lt!1475875 () List!44995)

(assert (=> b!4139000 (<= (size!33230 lt!1475875) lt!1475887)))

(declare-fun lt!1475874 () Unit!64175)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!6 (LexerInterface!6953 List!44996 List!44995 Token!13658 List!44995 List!44995 List!44995 List!44995 Rule!14528 Token!13658) Unit!64175)

(assert (=> b!4139000 (= lt!1475874 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!6 thiss!25645 rules!3756 p!2912 lt!1475876 input!3238 lt!1475877 lt!1475875 (getSuffix!2626 input!3238 lt!1475875) rBis!149 (_1!24765 lt!1475882)))))

(declare-fun list!16433 (BalanceConc!26744) List!44995)

(assert (=> b!4139000 (= lt!1475875 (list!16433 lt!1475888))))

(declare-fun b!4139001 () Bool)

(declare-fun e!2568099 () Bool)

(declare-fun tp!1261633 () Bool)

(assert (=> b!4139001 (= e!2568099 (and e!2568096 tp!1261633))))

(declare-fun b!4139002 () Bool)

(declare-fun res!1693010 () Bool)

(assert (=> b!4139002 (=> (not res!1693010) (not e!2568102))))

(declare-fun contains!9044 (List!44996 Rule!14528) Bool)

(assert (=> b!4139002 (= res!1693010 (contains!9044 rules!3756 rBis!149))))

(assert (=> b!4139003 (= e!2568101 (and tp!1261627 tp!1261629))))

(declare-fun b!4139004 () Bool)

(declare-fun res!1693004 () Bool)

(assert (=> b!4139004 (=> (not res!1693004) (not e!2568102))))

(declare-fun isEmpty!26745 (List!44995) Bool)

(assert (=> b!4139004 (= res!1693004 (not (isEmpty!26745 p!2912)))))

(declare-fun b!4139005 () Bool)

(declare-fun e!2568090 () Bool)

(declare-fun tp_is_empty!21461 () Bool)

(declare-fun tp!1261628 () Bool)

(assert (=> b!4139005 (= e!2568090 (and tp_is_empty!21461 tp!1261628))))

(declare-fun b!4139006 () Bool)

(declare-fun res!1693008 () Bool)

(assert (=> b!4139006 (=> (not res!1693008) (not e!2568100))))

(declare-fun matchR!6098 (Regex!12269 List!44995) Bool)

(assert (=> b!4139006 (= res!1693008 (matchR!6098 (regex!7364 r!4008) p!2912))))

(declare-fun e!2568105 () Bool)

(assert (=> b!4139007 (= e!2568105 (and tp!1261634 tp!1261631))))

(declare-fun b!4139008 () Bool)

(declare-fun e!2568091 () Bool)

(assert (=> b!4139008 (= e!2568091 e!2568103)))

(declare-fun res!1693005 () Bool)

(assert (=> b!4139008 (=> res!1693005 e!2568103)))

(declare-fun isEmpty!26746 (Option!9670) Bool)

(assert (=> b!4139008 (= res!1693005 (isEmpty!26746 lt!1475878))))

(declare-fun maxPrefixOneRule!3082 (LexerInterface!6953 Rule!14528 List!44995) Option!9670)

(assert (=> b!4139008 (= lt!1475878 (maxPrefixOneRule!3082 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4139008 (not (= rBis!149 r!4008))))

(declare-fun lt!1475883 () Unit!64175)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!62 (LexerInterface!6953 List!44996 Rule!14528 Rule!14528) Unit!64175)

(assert (=> b!4139008 (= lt!1475883 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!62 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6531 (List!44996) List!44996)

(assert (=> b!4139008 (contains!9044 (tail!6531 rules!3756) r!4008)))

(declare-fun lt!1475885 () Unit!64175)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!68 (List!44996 Rule!14528 Rule!14528) Unit!64175)

(assert (=> b!4139008 (= lt!1475885 (lemmaGetIndexBiggerAndHeadEqThenTailContains!68 rules!3756 rBis!149 r!4008))))

(declare-fun b!4139009 () Bool)

(assert (=> b!4139009 (= e!2568100 (not e!2568091))))

(declare-fun res!1693014 () Bool)

(assert (=> b!4139009 (=> res!1693014 e!2568091)))

(get-info :version)

(assert (=> b!4139009 (= res!1693014 (or (not ((_ is Cons!44872) rules!3756)) (not (= (h!50292 rules!3756) rBis!149))))))

(declare-fun lt!1475880 () Unit!64175)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2210 (LexerInterface!6953 Rule!14528 List!44996) Unit!64175)

(assert (=> b!4139009 (= lt!1475880 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2210 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4139009 (ruleValid!3170 thiss!25645 rBis!149)))

(declare-fun lt!1475881 () Unit!64175)

(assert (=> b!4139009 (= lt!1475881 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2210 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4139010 () Bool)

(declare-fun e!2568092 () Bool)

(declare-fun tp!1261624 () Bool)

(assert (=> b!4139010 (= e!2568092 (and tp_is_empty!21461 tp!1261624))))

(declare-fun b!4139011 () Bool)

(declare-fun res!1693009 () Bool)

(assert (=> b!4139011 (=> (not res!1693009) (not e!2568102))))

(declare-fun isEmpty!26747 (List!44996) Bool)

(assert (=> b!4139011 (= res!1693009 (not (isEmpty!26747 rules!3756)))))

(declare-fun e!2568094 () Bool)

(declare-fun tp!1261623 () Bool)

(declare-fun b!4139012 () Bool)

(assert (=> b!4139012 (= e!2568094 (and tp!1261623 (inv!59477 (tag!8224 r!4008)) (inv!59479 (transformation!7364 r!4008)) e!2568105))))

(declare-fun res!1693013 () Bool)

(assert (=> start!393330 (=> (not res!1693013) (not e!2568102))))

(assert (=> start!393330 (= res!1693013 ((_ is Lexer!6951) thiss!25645))))

(assert (=> start!393330 e!2568102))

(assert (=> start!393330 e!2568099))

(assert (=> start!393330 e!2568090))

(assert (=> start!393330 true))

(assert (=> start!393330 e!2568094))

(assert (=> start!393330 e!2568092))

(assert (=> start!393330 e!2568093))

(declare-fun b!4138997 () Bool)

(declare-fun res!1693012 () Bool)

(assert (=> b!4138997 (=> (not res!1693012) (not e!2568102))))

(assert (=> b!4138997 (= res!1693012 (contains!9044 rules!3756 r!4008))))

(assert (= (and start!393330 res!1693013) b!4138993))

(assert (= (and b!4138993 res!1693006) b!4139011))

(assert (= (and b!4139011 res!1693009) b!4138999))

(assert (= (and b!4138999 res!1693011) b!4138997))

(assert (= (and b!4138997 res!1693012) b!4139002))

(assert (= (and b!4139002 res!1693010) b!4139004))

(assert (= (and b!4139004 res!1693004) b!4138996))

(assert (= (and b!4138996 res!1693015) b!4139006))

(assert (= (and b!4139006 res!1693008) b!4138998))

(assert (= (and b!4138998 res!1693002) b!4138992))

(assert (= (and b!4138992 res!1693007) b!4139009))

(assert (= (and b!4139009 (not res!1693014)) b!4139008))

(assert (= (and b!4139008 (not res!1693005)) b!4138995))

(assert (= (and b!4138995 (not res!1693003)) b!4139000))

(assert (= b!4138994 b!4139003))

(assert (= b!4139001 b!4138994))

(assert (= (and start!393330 ((_ is Cons!44872) rules!3756)) b!4139001))

(assert (= (and start!393330 ((_ is Cons!44871) p!2912)) b!4139005))

(assert (= b!4139012 b!4139007))

(assert (= start!393330 b!4139012))

(assert (= (and start!393330 ((_ is Cons!44871) input!3238)) b!4139010))

(assert (= b!4138991 b!4138990))

(assert (= start!393330 b!4138991))

(declare-fun m!4735449 () Bool)

(assert (=> b!4138999 m!4735449))

(declare-fun m!4735451 () Bool)

(assert (=> b!4138995 m!4735451))

(declare-fun m!4735453 () Bool)

(assert (=> b!4138995 m!4735453))

(declare-fun m!4735455 () Bool)

(assert (=> b!4138995 m!4735455))

(declare-fun m!4735457 () Bool)

(assert (=> b!4138992 m!4735457))

(declare-fun m!4735459 () Bool)

(assert (=> b!4138998 m!4735459))

(declare-fun m!4735461 () Bool)

(assert (=> b!4138998 m!4735461))

(declare-fun m!4735463 () Bool)

(assert (=> b!4138994 m!4735463))

(declare-fun m!4735465 () Bool)

(assert (=> b!4138994 m!4735465))

(declare-fun m!4735467 () Bool)

(assert (=> b!4138996 m!4735467))

(declare-fun m!4735469 () Bool)

(assert (=> b!4138996 m!4735469))

(declare-fun m!4735471 () Bool)

(assert (=> b!4138996 m!4735471))

(declare-fun m!4735473 () Bool)

(assert (=> b!4138996 m!4735473))

(declare-fun m!4735475 () Bool)

(assert (=> b!4138996 m!4735475))

(declare-fun m!4735477 () Bool)

(assert (=> b!4138996 m!4735477))

(declare-fun m!4735479 () Bool)

(assert (=> b!4139009 m!4735479))

(declare-fun m!4735481 () Bool)

(assert (=> b!4139009 m!4735481))

(declare-fun m!4735483 () Bool)

(assert (=> b!4139009 m!4735483))

(declare-fun m!4735485 () Bool)

(assert (=> b!4139008 m!4735485))

(declare-fun m!4735487 () Bool)

(assert (=> b!4139008 m!4735487))

(declare-fun m!4735489 () Bool)

(assert (=> b!4139008 m!4735489))

(assert (=> b!4139008 m!4735485))

(declare-fun m!4735491 () Bool)

(assert (=> b!4139008 m!4735491))

(declare-fun m!4735493 () Bool)

(assert (=> b!4139008 m!4735493))

(declare-fun m!4735495 () Bool)

(assert (=> b!4139008 m!4735495))

(declare-fun m!4735497 () Bool)

(assert (=> b!4138993 m!4735497))

(declare-fun m!4735499 () Bool)

(assert (=> b!4139002 m!4735499))

(declare-fun m!4735501 () Bool)

(assert (=> b!4139012 m!4735501))

(declare-fun m!4735503 () Bool)

(assert (=> b!4139012 m!4735503))

(declare-fun m!4735505 () Bool)

(assert (=> b!4139011 m!4735505))

(declare-fun m!4735507 () Bool)

(assert (=> b!4139006 m!4735507))

(declare-fun m!4735509 () Bool)

(assert (=> b!4139004 m!4735509))

(declare-fun m!4735511 () Bool)

(assert (=> b!4138991 m!4735511))

(declare-fun m!4735513 () Bool)

(assert (=> b!4138991 m!4735513))

(declare-fun m!4735515 () Bool)

(assert (=> b!4139000 m!4735515))

(declare-fun m!4735517 () Bool)

(assert (=> b!4139000 m!4735517))

(assert (=> b!4139000 m!4735517))

(declare-fun m!4735519 () Bool)

(assert (=> b!4139000 m!4735519))

(declare-fun m!4735521 () Bool)

(assert (=> b!4139000 m!4735521))

(declare-fun m!4735523 () Bool)

(assert (=> b!4138997 m!4735523))

(check-sat (not b!4139012) (not b!4138999) (not b_next!118469) (not b_next!118477) b_and!321301 (not b!4138994) b_and!321305 b_and!321303 (not b!4138997) (not b!4139002) b_and!321297 (not b!4139005) (not b!4138993) (not b_next!118473) (not b!4139009) (not b!4138996) (not b!4139000) (not b!4138992) b_and!321299 (not b!4138991) (not b!4138995) (not b!4139008) (not b!4139010) tp_is_empty!21461 (not b!4139001) (not b_next!118467) (not b!4138998) (not b_next!118471) (not b!4139006) b_and!321307 (not b!4139004) (not b_next!118475) (not b!4139011))
(check-sat (not b_next!118473) b_and!321299 (not b_next!118469) (not b_next!118477) (not b_next!118467) b_and!321301 (not b_next!118471) b_and!321307 (not b_next!118475) b_and!321305 b_and!321303 b_and!321297)
(get-model)

(declare-fun d!1225543 () Bool)

(declare-fun res!1693029 () Bool)

(declare-fun e!2568109 () Bool)

(assert (=> d!1225543 (=> (not res!1693029) (not e!2568109))))

(declare-fun validRegex!5527 (Regex!12269) Bool)

(assert (=> d!1225543 (= res!1693029 (validRegex!5527 (regex!7364 r!4008)))))

(assert (=> d!1225543 (= (ruleValid!3170 thiss!25645 r!4008) e!2568109)))

(declare-fun b!4139017 () Bool)

(declare-fun res!1693030 () Bool)

(assert (=> b!4139017 (=> (not res!1693030) (not e!2568109))))

(declare-fun nullable!4319 (Regex!12269) Bool)

(assert (=> b!4139017 (= res!1693030 (not (nullable!4319 (regex!7364 r!4008))))))

(declare-fun b!4139018 () Bool)

(assert (=> b!4139018 (= e!2568109 (not (= (tag!8224 r!4008) (String!51721 ""))))))

(assert (= (and d!1225543 res!1693029) b!4139017))

(assert (= (and b!4139017 res!1693030) b!4139018))

(declare-fun m!4735525 () Bool)

(assert (=> d!1225543 m!4735525))

(declare-fun m!4735527 () Bool)

(assert (=> b!4139017 m!4735527))

(assert (=> b!4138992 d!1225543))

(declare-fun d!1225545 () Bool)

(declare-fun lt!1475893 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6933 (List!44996) (InoxSet Rule!14528))

(assert (=> d!1225545 (= lt!1475893 (select (content!6933 rules!3756) rBis!149))))

(declare-fun e!2568115 () Bool)

(assert (=> d!1225545 (= lt!1475893 e!2568115)))

(declare-fun res!1693036 () Bool)

(assert (=> d!1225545 (=> (not res!1693036) (not e!2568115))))

(assert (=> d!1225545 (= res!1693036 ((_ is Cons!44872) rules!3756))))

(assert (=> d!1225545 (= (contains!9044 rules!3756 rBis!149) lt!1475893)))

(declare-fun b!4139023 () Bool)

(declare-fun e!2568114 () Bool)

(assert (=> b!4139023 (= e!2568115 e!2568114)))

(declare-fun res!1693035 () Bool)

(assert (=> b!4139023 (=> res!1693035 e!2568114)))

(assert (=> b!4139023 (= res!1693035 (= (h!50292 rules!3756) rBis!149))))

(declare-fun b!4139024 () Bool)

(assert (=> b!4139024 (= e!2568114 (contains!9044 (t!342225 rules!3756) rBis!149))))

(assert (= (and d!1225545 res!1693036) b!4139023))

(assert (= (and b!4139023 (not res!1693035)) b!4139024))

(declare-fun m!4735529 () Bool)

(assert (=> d!1225545 m!4735529))

(declare-fun m!4735531 () Bool)

(assert (=> d!1225545 m!4735531))

(declare-fun m!4735533 () Bool)

(assert (=> b!4139024 m!4735533))

(assert (=> b!4139002 d!1225545))

(declare-fun d!1225547 () Bool)

(assert (=> d!1225547 (= (inv!59477 (tag!8224 rBis!149)) (= (mod (str.len (value!230427 (tag!8224 rBis!149))) 2) 0))))

(assert (=> b!4138991 d!1225547))

(declare-fun d!1225549 () Bool)

(declare-fun res!1693039 () Bool)

(declare-fun e!2568118 () Bool)

(assert (=> d!1225549 (=> (not res!1693039) (not e!2568118))))

(declare-fun semiInverseModEq!3183 (Int Int) Bool)

(assert (=> d!1225549 (= res!1693039 (semiInverseModEq!3183 (toChars!9887 (transformation!7364 rBis!149)) (toValue!10028 (transformation!7364 rBis!149))))))

(assert (=> d!1225549 (= (inv!59479 (transformation!7364 rBis!149)) e!2568118)))

(declare-fun b!4139027 () Bool)

(declare-fun equivClasses!3082 (Int Int) Bool)

(assert (=> b!4139027 (= e!2568118 (equivClasses!3082 (toChars!9887 (transformation!7364 rBis!149)) (toValue!10028 (transformation!7364 rBis!149))))))

(assert (= (and d!1225549 res!1693039) b!4139027))

(declare-fun m!4735535 () Bool)

(assert (=> d!1225549 m!4735535))

(declare-fun m!4735537 () Bool)

(assert (=> b!4139027 m!4735537))

(assert (=> b!4138991 d!1225549))

(declare-fun d!1225551 () Bool)

(assert (=> d!1225551 (= (isEmpty!26745 p!2912) ((_ is Nil!44871) p!2912))))

(assert (=> b!4139004 d!1225551))

(declare-fun b!4139039 () Bool)

(declare-fun e!2568127 () Bool)

(assert (=> b!4139039 (= e!2568127 (>= (size!33230 input!3238) (size!33230 p!2912)))))

(declare-fun b!4139038 () Bool)

(declare-fun e!2568125 () Bool)

(declare-fun tail!6533 (List!44995) List!44995)

(assert (=> b!4139038 (= e!2568125 (isPrefix!4299 (tail!6533 p!2912) (tail!6533 input!3238)))))

(declare-fun d!1225553 () Bool)

(assert (=> d!1225553 e!2568127))

(declare-fun res!1693050 () Bool)

(assert (=> d!1225553 (=> res!1693050 e!2568127)))

(declare-fun lt!1475896 () Bool)

(assert (=> d!1225553 (= res!1693050 (not lt!1475896))))

(declare-fun e!2568126 () Bool)

(assert (=> d!1225553 (= lt!1475896 e!2568126)))

(declare-fun res!1693051 () Bool)

(assert (=> d!1225553 (=> res!1693051 e!2568126)))

(assert (=> d!1225553 (= res!1693051 ((_ is Nil!44871) p!2912))))

(assert (=> d!1225553 (= (isPrefix!4299 p!2912 input!3238) lt!1475896)))

(declare-fun b!4139036 () Bool)

(assert (=> b!4139036 (= e!2568126 e!2568125)))

(declare-fun res!1693049 () Bool)

(assert (=> b!4139036 (=> (not res!1693049) (not e!2568125))))

(assert (=> b!4139036 (= res!1693049 (not ((_ is Nil!44871) input!3238)))))

(declare-fun b!4139037 () Bool)

(declare-fun res!1693048 () Bool)

(assert (=> b!4139037 (=> (not res!1693048) (not e!2568125))))

(declare-fun head!8732 (List!44995) C!24724)

(assert (=> b!4139037 (= res!1693048 (= (head!8732 p!2912) (head!8732 input!3238)))))

(assert (= (and d!1225553 (not res!1693051)) b!4139036))

(assert (= (and b!4139036 res!1693049) b!4139037))

(assert (= (and b!4139037 res!1693048) b!4139038))

(assert (= (and d!1225553 (not res!1693050)) b!4139039))

(declare-fun m!4735539 () Bool)

(assert (=> b!4139039 m!4735539))

(assert (=> b!4139039 m!4735467))

(declare-fun m!4735541 () Bool)

(assert (=> b!4139038 m!4735541))

(declare-fun m!4735543 () Bool)

(assert (=> b!4139038 m!4735543))

(assert (=> b!4139038 m!4735541))

(assert (=> b!4139038 m!4735543))

(declare-fun m!4735545 () Bool)

(assert (=> b!4139038 m!4735545))

(declare-fun m!4735547 () Bool)

(assert (=> b!4139037 m!4735547))

(declare-fun m!4735549 () Bool)

(assert (=> b!4139037 m!4735549))

(assert (=> b!4138993 d!1225553))

(declare-fun d!1225555 () Bool)

(declare-fun lt!1475899 () Int)

(assert (=> d!1225555 (>= lt!1475899 0)))

(declare-fun e!2568130 () Int)

(assert (=> d!1225555 (= lt!1475899 e!2568130)))

(declare-fun c!709671 () Bool)

(assert (=> d!1225555 (= c!709671 ((_ is Nil!44871) lt!1475875))))

(assert (=> d!1225555 (= (size!33230 lt!1475875) lt!1475899)))

(declare-fun b!4139044 () Bool)

(assert (=> b!4139044 (= e!2568130 0)))

(declare-fun b!4139045 () Bool)

(assert (=> b!4139045 (= e!2568130 (+ 1 (size!33230 (t!342224 lt!1475875))))))

(assert (= (and d!1225555 c!709671) b!4139044))

(assert (= (and d!1225555 (not c!709671)) b!4139045))

(declare-fun m!4735551 () Bool)

(assert (=> b!4139045 m!4735551))

(assert (=> b!4139000 d!1225555))

(declare-fun d!1225557 () Bool)

(assert (=> d!1225557 (<= (size!33230 lt!1475875) (size!33230 p!2912))))

(declare-fun lt!1475902 () Unit!64175)

(declare-fun choose!25312 (LexerInterface!6953 List!44996 List!44995 Token!13658 List!44995 List!44995 List!44995 List!44995 Rule!14528 Token!13658) Unit!64175)

(assert (=> d!1225557 (= lt!1475902 (choose!25312 thiss!25645 rules!3756 p!2912 lt!1475876 input!3238 lt!1475877 lt!1475875 (getSuffix!2626 input!3238 lt!1475875) rBis!149 (_1!24765 lt!1475882)))))

(assert (=> d!1225557 (= (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!6 thiss!25645 rules!3756 p!2912 lt!1475876 input!3238 lt!1475877 lt!1475875 (getSuffix!2626 input!3238 lt!1475875) rBis!149 (_1!24765 lt!1475882)) lt!1475902)))

(declare-fun bs!595192 () Bool)

(assert (= bs!595192 d!1225557))

(assert (=> bs!595192 m!4735515))

(assert (=> bs!595192 m!4735467))

(assert (=> bs!595192 m!4735517))

(declare-fun m!4735553 () Bool)

(assert (=> bs!595192 m!4735553))

(assert (=> b!4139000 d!1225557))

(declare-fun d!1225559 () Bool)

(declare-fun lt!1475905 () List!44995)

(declare-fun ++!11608 (List!44995 List!44995) List!44995)

(assert (=> d!1225559 (= (++!11608 lt!1475875 lt!1475905) input!3238)))

(declare-fun e!2568133 () List!44995)

(assert (=> d!1225559 (= lt!1475905 e!2568133)))

(declare-fun c!709674 () Bool)

(assert (=> d!1225559 (= c!709674 ((_ is Cons!44871) lt!1475875))))

(assert (=> d!1225559 (>= (size!33230 input!3238) (size!33230 lt!1475875))))

(assert (=> d!1225559 (= (getSuffix!2626 input!3238 lt!1475875) lt!1475905)))

(declare-fun b!4139050 () Bool)

(assert (=> b!4139050 (= e!2568133 (getSuffix!2626 (tail!6533 input!3238) (t!342224 lt!1475875)))))

(declare-fun b!4139051 () Bool)

(assert (=> b!4139051 (= e!2568133 input!3238)))

(assert (= (and d!1225559 c!709674) b!4139050))

(assert (= (and d!1225559 (not c!709674)) b!4139051))

(declare-fun m!4735555 () Bool)

(assert (=> d!1225559 m!4735555))

(assert (=> d!1225559 m!4735539))

(assert (=> d!1225559 m!4735515))

(assert (=> b!4139050 m!4735543))

(assert (=> b!4139050 m!4735543))

(declare-fun m!4735557 () Bool)

(assert (=> b!4139050 m!4735557))

(assert (=> b!4139000 d!1225559))

(declare-fun d!1225561 () Bool)

(declare-fun list!16435 (Conc!13575) List!44995)

(assert (=> d!1225561 (= (list!16433 lt!1475888) (list!16435 (c!709666 lt!1475888)))))

(declare-fun bs!595193 () Bool)

(assert (= bs!595193 d!1225561))

(declare-fun m!4735559 () Bool)

(assert (=> bs!595193 m!4735559))

(assert (=> b!4139000 d!1225561))

(declare-fun d!1225563 () Bool)

(declare-fun res!1693054 () Bool)

(declare-fun e!2568136 () Bool)

(assert (=> d!1225563 (=> (not res!1693054) (not e!2568136))))

(declare-fun rulesValid!2897 (LexerInterface!6953 List!44996) Bool)

(assert (=> d!1225563 (= res!1693054 (rulesValid!2897 thiss!25645 rules!3756))))

(assert (=> d!1225563 (= (rulesInvariant!6250 thiss!25645 rules!3756) e!2568136)))

(declare-fun b!4139054 () Bool)

(declare-datatypes ((List!44998 0))(
  ( (Nil!44874) (Cons!44874 (h!50294 String!51720) (t!342277 List!44998)) )
))
(declare-fun noDuplicateTag!2980 (LexerInterface!6953 List!44996 List!44998) Bool)

(assert (=> b!4139054 (= e!2568136 (noDuplicateTag!2980 thiss!25645 rules!3756 Nil!44874))))

(assert (= (and d!1225563 res!1693054) b!4139054))

(declare-fun m!4735561 () Bool)

(assert (=> d!1225563 m!4735561))

(declare-fun m!4735563 () Bool)

(assert (=> b!4139054 m!4735563))

(assert (=> b!4138999 d!1225563))

(declare-fun d!1225565 () Bool)

(assert (=> d!1225565 (= (inv!59477 (tag!8224 r!4008)) (= (mod (str.len (value!230427 (tag!8224 r!4008))) 2) 0))))

(assert (=> b!4139012 d!1225565))

(declare-fun d!1225567 () Bool)

(declare-fun res!1693055 () Bool)

(declare-fun e!2568137 () Bool)

(assert (=> d!1225567 (=> (not res!1693055) (not e!2568137))))

(assert (=> d!1225567 (= res!1693055 (semiInverseModEq!3183 (toChars!9887 (transformation!7364 r!4008)) (toValue!10028 (transformation!7364 r!4008))))))

(assert (=> d!1225567 (= (inv!59479 (transformation!7364 r!4008)) e!2568137)))

(declare-fun b!4139055 () Bool)

(assert (=> b!4139055 (= e!2568137 (equivClasses!3082 (toChars!9887 (transformation!7364 r!4008)) (toValue!10028 (transformation!7364 r!4008))))))

(assert (= (and d!1225567 res!1693055) b!4139055))

(declare-fun m!4735565 () Bool)

(assert (=> d!1225567 m!4735565))

(declare-fun m!4735567 () Bool)

(assert (=> b!4139055 m!4735567))

(assert (=> b!4139012 d!1225567))

(declare-fun d!1225569 () Bool)

(assert (=> d!1225569 (= (isEmpty!26747 rules!3756) ((_ is Nil!44872) rules!3756))))

(assert (=> b!4139011 d!1225569))

(declare-fun d!1225571 () Bool)

(declare-fun lt!1475906 () Bool)

(assert (=> d!1225571 (= lt!1475906 (select (content!6933 (tail!6531 rules!3756)) r!4008))))

(declare-fun e!2568139 () Bool)

(assert (=> d!1225571 (= lt!1475906 e!2568139)))

(declare-fun res!1693057 () Bool)

(assert (=> d!1225571 (=> (not res!1693057) (not e!2568139))))

(assert (=> d!1225571 (= res!1693057 ((_ is Cons!44872) (tail!6531 rules!3756)))))

(assert (=> d!1225571 (= (contains!9044 (tail!6531 rules!3756) r!4008) lt!1475906)))

(declare-fun b!4139056 () Bool)

(declare-fun e!2568138 () Bool)

(assert (=> b!4139056 (= e!2568139 e!2568138)))

(declare-fun res!1693056 () Bool)

(assert (=> b!4139056 (=> res!1693056 e!2568138)))

(assert (=> b!4139056 (= res!1693056 (= (h!50292 (tail!6531 rules!3756)) r!4008))))

(declare-fun b!4139057 () Bool)

(assert (=> b!4139057 (= e!2568138 (contains!9044 (t!342225 (tail!6531 rules!3756)) r!4008))))

(assert (= (and d!1225571 res!1693057) b!4139056))

(assert (= (and b!4139056 (not res!1693056)) b!4139057))

(assert (=> d!1225571 m!4735485))

(declare-fun m!4735569 () Bool)

(assert (=> d!1225571 m!4735569))

(declare-fun m!4735571 () Bool)

(assert (=> d!1225571 m!4735571))

(declare-fun m!4735573 () Bool)

(assert (=> b!4139057 m!4735573))

(assert (=> b!4139008 d!1225571))

(declare-fun d!1225573 () Bool)

(assert (=> d!1225573 (= (tail!6531 rules!3756) (t!342225 rules!3756))))

(assert (=> b!4139008 d!1225573))

(declare-fun d!1225575 () Bool)

(assert (=> d!1225575 (= (isEmpty!26746 lt!1475878) (not ((_ is Some!9669) lt!1475878)))))

(assert (=> b!4139008 d!1225575))

(declare-fun d!1225577 () Bool)

(assert (=> d!1225577 (contains!9044 (tail!6531 rules!3756) r!4008)))

(declare-fun lt!1475909 () Unit!64175)

(declare-fun choose!25313 (List!44996 Rule!14528 Rule!14528) Unit!64175)

(assert (=> d!1225577 (= lt!1475909 (choose!25313 rules!3756 rBis!149 r!4008))))

(declare-fun e!2568142 () Bool)

(assert (=> d!1225577 e!2568142))

(declare-fun res!1693060 () Bool)

(assert (=> d!1225577 (=> (not res!1693060) (not e!2568142))))

(assert (=> d!1225577 (= res!1693060 (contains!9044 rules!3756 rBis!149))))

(assert (=> d!1225577 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!68 rules!3756 rBis!149 r!4008) lt!1475909)))

(declare-fun b!4139060 () Bool)

(assert (=> b!4139060 (= e!2568142 (contains!9044 rules!3756 r!4008))))

(assert (= (and d!1225577 res!1693060) b!4139060))

(assert (=> d!1225577 m!4735485))

(assert (=> d!1225577 m!4735485))

(assert (=> d!1225577 m!4735487))

(declare-fun m!4735575 () Bool)

(assert (=> d!1225577 m!4735575))

(assert (=> d!1225577 m!4735499))

(assert (=> b!4139060 m!4735523))

(assert (=> b!4139008 d!1225577))

(declare-fun b!4139079 () Bool)

(declare-fun e!2568153 () Bool)

(declare-fun e!2568154 () Bool)

(assert (=> b!4139079 (= e!2568153 e!2568154)))

(declare-fun res!1693076 () Bool)

(assert (=> b!4139079 (=> (not res!1693076) (not e!2568154))))

(declare-fun lt!1475920 () Option!9670)

(assert (=> b!4139079 (= res!1693076 (matchR!6098 (regex!7364 rBis!149) (list!16433 (charsOf!4963 (_1!24765 (get!14641 lt!1475920))))))))

(declare-fun b!4139080 () Bool)

(declare-fun e!2568152 () Bool)

(declare-datatypes ((tuple2!43266 0))(
  ( (tuple2!43267 (_1!24767 List!44995) (_2!24767 List!44995)) )
))
(declare-fun findLongestMatchInner!1523 (Regex!12269 List!44995 Int List!44995 List!44995 Int) tuple2!43266)

(assert (=> b!4139080 (= e!2568152 (matchR!6098 (regex!7364 rBis!149) (_1!24767 (findLongestMatchInner!1523 (regex!7364 rBis!149) Nil!44871 (size!33230 Nil!44871) input!3238 input!3238 (size!33230 input!3238)))))))

(declare-fun b!4139081 () Bool)

(declare-fun e!2568151 () Option!9670)

(assert (=> b!4139081 (= e!2568151 None!9669)))

(declare-fun b!4139082 () Bool)

(declare-fun res!1693080 () Bool)

(assert (=> b!4139082 (=> (not res!1693080) (not e!2568154))))

(assert (=> b!4139082 (= res!1693080 (= (value!230428 (_1!24765 (get!14641 lt!1475920))) (apply!10437 (transformation!7364 (rule!10470 (_1!24765 (get!14641 lt!1475920)))) (seqFromList!5481 (originalCharacters!7860 (_1!24765 (get!14641 lt!1475920)))))))))

(declare-fun d!1225579 () Bool)

(assert (=> d!1225579 e!2568153))

(declare-fun res!1693077 () Bool)

(assert (=> d!1225579 (=> res!1693077 e!2568153)))

(assert (=> d!1225579 (= res!1693077 (isEmpty!26746 lt!1475920))))

(assert (=> d!1225579 (= lt!1475920 e!2568151)))

(declare-fun c!709677 () Bool)

(declare-fun lt!1475924 () tuple2!43266)

(assert (=> d!1225579 (= c!709677 (isEmpty!26745 (_1!24767 lt!1475924)))))

(declare-fun findLongestMatch!1436 (Regex!12269 List!44995) tuple2!43266)

(assert (=> d!1225579 (= lt!1475924 (findLongestMatch!1436 (regex!7364 rBis!149) input!3238))))

(assert (=> d!1225579 (ruleValid!3170 thiss!25645 rBis!149)))

(assert (=> d!1225579 (= (maxPrefixOneRule!3082 thiss!25645 rBis!149 input!3238) lt!1475920)))

(declare-fun b!4139083 () Bool)

(declare-fun res!1693081 () Bool)

(assert (=> b!4139083 (=> (not res!1693081) (not e!2568154))))

(assert (=> b!4139083 (= res!1693081 (= (++!11608 (list!16433 (charsOf!4963 (_1!24765 (get!14641 lt!1475920)))) (_2!24765 (get!14641 lt!1475920))) input!3238))))

(declare-fun b!4139084 () Bool)

(declare-fun res!1693078 () Bool)

(assert (=> b!4139084 (=> (not res!1693078) (not e!2568154))))

(assert (=> b!4139084 (= res!1693078 (< (size!33230 (_2!24765 (get!14641 lt!1475920))) (size!33230 input!3238)))))

(declare-fun b!4139085 () Bool)

(assert (=> b!4139085 (= e!2568151 (Some!9669 (tuple2!43263 (Token!13659 (apply!10437 (transformation!7364 rBis!149) (seqFromList!5481 (_1!24767 lt!1475924))) rBis!149 (size!33228 (seqFromList!5481 (_1!24767 lt!1475924))) (_1!24767 lt!1475924)) (_2!24767 lt!1475924))))))

(declare-fun lt!1475922 () Unit!64175)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1496 (Regex!12269 List!44995) Unit!64175)

(assert (=> b!4139085 (= lt!1475922 (longestMatchIsAcceptedByMatchOrIsEmpty!1496 (regex!7364 rBis!149) input!3238))))

(declare-fun res!1693079 () Bool)

(assert (=> b!4139085 (= res!1693079 (isEmpty!26745 (_1!24767 (findLongestMatchInner!1523 (regex!7364 rBis!149) Nil!44871 (size!33230 Nil!44871) input!3238 input!3238 (size!33230 input!3238)))))))

(assert (=> b!4139085 (=> res!1693079 e!2568152)))

(assert (=> b!4139085 e!2568152))

(declare-fun lt!1475923 () Unit!64175)

(assert (=> b!4139085 (= lt!1475923 lt!1475922)))

(declare-fun lt!1475921 () Unit!64175)

(assert (=> b!4139085 (= lt!1475921 (lemmaSemiInverse!2222 (transformation!7364 rBis!149) (seqFromList!5481 (_1!24767 lt!1475924))))))

(declare-fun b!4139086 () Bool)

(declare-fun res!1693075 () Bool)

(assert (=> b!4139086 (=> (not res!1693075) (not e!2568154))))

(assert (=> b!4139086 (= res!1693075 (= (rule!10470 (_1!24765 (get!14641 lt!1475920))) rBis!149))))

(declare-fun b!4139087 () Bool)

(assert (=> b!4139087 (= e!2568154 (= (size!33229 (_1!24765 (get!14641 lt!1475920))) (size!33230 (originalCharacters!7860 (_1!24765 (get!14641 lt!1475920))))))))

(assert (= (and d!1225579 c!709677) b!4139081))

(assert (= (and d!1225579 (not c!709677)) b!4139085))

(assert (= (and b!4139085 (not res!1693079)) b!4139080))

(assert (= (and d!1225579 (not res!1693077)) b!4139079))

(assert (= (and b!4139079 res!1693076) b!4139083))

(assert (= (and b!4139083 res!1693081) b!4139084))

(assert (= (and b!4139084 res!1693078) b!4139086))

(assert (= (and b!4139086 res!1693075) b!4139082))

(assert (= (and b!4139082 res!1693080) b!4139087))

(declare-fun m!4735577 () Bool)

(assert (=> b!4139079 m!4735577))

(declare-fun m!4735579 () Bool)

(assert (=> b!4139079 m!4735579))

(assert (=> b!4139079 m!4735579))

(declare-fun m!4735581 () Bool)

(assert (=> b!4139079 m!4735581))

(assert (=> b!4139079 m!4735581))

(declare-fun m!4735583 () Bool)

(assert (=> b!4139079 m!4735583))

(declare-fun m!4735585 () Bool)

(assert (=> b!4139080 m!4735585))

(assert (=> b!4139080 m!4735539))

(assert (=> b!4139080 m!4735585))

(assert (=> b!4139080 m!4735539))

(declare-fun m!4735587 () Bool)

(assert (=> b!4139080 m!4735587))

(declare-fun m!4735589 () Bool)

(assert (=> b!4139080 m!4735589))

(assert (=> b!4139087 m!4735577))

(declare-fun m!4735591 () Bool)

(assert (=> b!4139087 m!4735591))

(assert (=> b!4139086 m!4735577))

(assert (=> b!4139083 m!4735577))

(assert (=> b!4139083 m!4735579))

(assert (=> b!4139083 m!4735579))

(assert (=> b!4139083 m!4735581))

(assert (=> b!4139083 m!4735581))

(declare-fun m!4735593 () Bool)

(assert (=> b!4139083 m!4735593))

(declare-fun m!4735595 () Bool)

(assert (=> b!4139085 m!4735595))

(declare-fun m!4735597 () Bool)

(assert (=> b!4139085 m!4735597))

(declare-fun m!4735599 () Bool)

(assert (=> b!4139085 m!4735599))

(assert (=> b!4139085 m!4735585))

(assert (=> b!4139085 m!4735585))

(assert (=> b!4139085 m!4735539))

(assert (=> b!4139085 m!4735587))

(declare-fun m!4735601 () Bool)

(assert (=> b!4139085 m!4735601))

(assert (=> b!4139085 m!4735539))

(assert (=> b!4139085 m!4735597))

(declare-fun m!4735603 () Bool)

(assert (=> b!4139085 m!4735603))

(assert (=> b!4139085 m!4735597))

(declare-fun m!4735605 () Bool)

(assert (=> b!4139085 m!4735605))

(assert (=> b!4139085 m!4735597))

(assert (=> b!4139084 m!4735577))

(declare-fun m!4735607 () Bool)

(assert (=> b!4139084 m!4735607))

(assert (=> b!4139084 m!4735539))

(declare-fun m!4735609 () Bool)

(assert (=> d!1225579 m!4735609))

(declare-fun m!4735611 () Bool)

(assert (=> d!1225579 m!4735611))

(declare-fun m!4735613 () Bool)

(assert (=> d!1225579 m!4735613))

(assert (=> d!1225579 m!4735481))

(assert (=> b!4139082 m!4735577))

(declare-fun m!4735615 () Bool)

(assert (=> b!4139082 m!4735615))

(assert (=> b!4139082 m!4735615))

(declare-fun m!4735617 () Bool)

(assert (=> b!4139082 m!4735617))

(assert (=> b!4139008 d!1225579))

(declare-fun d!1225581 () Bool)

(assert (=> d!1225581 (not (= rBis!149 r!4008))))

(declare-fun lt!1475927 () Unit!64175)

(declare-fun choose!25315 (LexerInterface!6953 List!44996 Rule!14528 Rule!14528) Unit!64175)

(assert (=> d!1225581 (= lt!1475927 (choose!25315 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225581 (contains!9044 rules!3756 rBis!149)))

(assert (=> d!1225581 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!62 thiss!25645 rules!3756 rBis!149 r!4008) lt!1475927)))

(declare-fun bs!595194 () Bool)

(assert (= bs!595194 d!1225581))

(declare-fun m!4735619 () Bool)

(assert (=> bs!595194 m!4735619))

(assert (=> bs!595194 m!4735499))

(assert (=> b!4139008 d!1225581))

(declare-fun d!1225583 () Bool)

(declare-fun lt!1475928 () Bool)

(assert (=> d!1225583 (= lt!1475928 (select (content!6933 rules!3756) r!4008))))

(declare-fun e!2568156 () Bool)

(assert (=> d!1225583 (= lt!1475928 e!2568156)))

(declare-fun res!1693083 () Bool)

(assert (=> d!1225583 (=> (not res!1693083) (not e!2568156))))

(assert (=> d!1225583 (= res!1693083 ((_ is Cons!44872) rules!3756))))

(assert (=> d!1225583 (= (contains!9044 rules!3756 r!4008) lt!1475928)))

(declare-fun b!4139088 () Bool)

(declare-fun e!2568155 () Bool)

(assert (=> b!4139088 (= e!2568156 e!2568155)))

(declare-fun res!1693082 () Bool)

(assert (=> b!4139088 (=> res!1693082 e!2568155)))

(assert (=> b!4139088 (= res!1693082 (= (h!50292 rules!3756) r!4008))))

(declare-fun b!4139089 () Bool)

(assert (=> b!4139089 (= e!2568155 (contains!9044 (t!342225 rules!3756) r!4008))))

(assert (= (and d!1225583 res!1693083) b!4139088))

(assert (= (and b!4139088 (not res!1693082)) b!4139089))

(assert (=> d!1225583 m!4735529))

(declare-fun m!4735621 () Bool)

(assert (=> d!1225583 m!4735621))

(declare-fun m!4735623 () Bool)

(assert (=> b!4139089 m!4735623))

(assert (=> b!4138997 d!1225583))

(declare-fun d!1225585 () Bool)

(assert (=> d!1225585 (ruleValid!3170 thiss!25645 r!4008)))

(declare-fun lt!1475931 () Unit!64175)

(declare-fun choose!25316 (LexerInterface!6953 Rule!14528 List!44996) Unit!64175)

(assert (=> d!1225585 (= lt!1475931 (choose!25316 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225585 (contains!9044 rules!3756 r!4008)))

(assert (=> d!1225585 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2210 thiss!25645 r!4008 rules!3756) lt!1475931)))

(declare-fun bs!595195 () Bool)

(assert (= bs!595195 d!1225585))

(assert (=> bs!595195 m!4735457))

(declare-fun m!4735625 () Bool)

(assert (=> bs!595195 m!4735625))

(assert (=> bs!595195 m!4735523))

(assert (=> b!4139009 d!1225585))

(declare-fun d!1225587 () Bool)

(declare-fun res!1693084 () Bool)

(declare-fun e!2568157 () Bool)

(assert (=> d!1225587 (=> (not res!1693084) (not e!2568157))))

(assert (=> d!1225587 (= res!1693084 (validRegex!5527 (regex!7364 rBis!149)))))

(assert (=> d!1225587 (= (ruleValid!3170 thiss!25645 rBis!149) e!2568157)))

(declare-fun b!4139090 () Bool)

(declare-fun res!1693085 () Bool)

(assert (=> b!4139090 (=> (not res!1693085) (not e!2568157))))

(assert (=> b!4139090 (= res!1693085 (not (nullable!4319 (regex!7364 rBis!149))))))

(declare-fun b!4139091 () Bool)

(assert (=> b!4139091 (= e!2568157 (not (= (tag!8224 rBis!149) (String!51721 ""))))))

(assert (= (and d!1225587 res!1693084) b!4139090))

(assert (= (and b!4139090 res!1693085) b!4139091))

(declare-fun m!4735627 () Bool)

(assert (=> d!1225587 m!4735627))

(declare-fun m!4735629 () Bool)

(assert (=> b!4139090 m!4735629))

(assert (=> b!4139009 d!1225587))

(declare-fun d!1225589 () Bool)

(assert (=> d!1225589 (ruleValid!3170 thiss!25645 rBis!149)))

(declare-fun lt!1475932 () Unit!64175)

(assert (=> d!1225589 (= lt!1475932 (choose!25316 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225589 (contains!9044 rules!3756 rBis!149)))

(assert (=> d!1225589 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2210 thiss!25645 rBis!149 rules!3756) lt!1475932)))

(declare-fun bs!595196 () Bool)

(assert (= bs!595196 d!1225589))

(assert (=> bs!595196 m!4735481))

(declare-fun m!4735631 () Bool)

(assert (=> bs!595196 m!4735631))

(assert (=> bs!595196 m!4735499))

(assert (=> b!4139009 d!1225589))

(declare-fun b!4139101 () Bool)

(declare-fun e!2568164 () Int)

(declare-fun e!2568163 () Int)

(assert (=> b!4139101 (= e!2568164 e!2568163)))

(declare-fun c!709683 () Bool)

(assert (=> b!4139101 (= c!709683 (and ((_ is Cons!44872) rules!3756) (not (= (h!50292 rules!3756) rBis!149))))))

(declare-fun d!1225591 () Bool)

(declare-fun lt!1475935 () Int)

(assert (=> d!1225591 (>= lt!1475935 0)))

(assert (=> d!1225591 (= lt!1475935 e!2568164)))

(declare-fun c!709682 () Bool)

(assert (=> d!1225591 (= c!709682 (and ((_ is Cons!44872) rules!3756) (= (h!50292 rules!3756) rBis!149)))))

(assert (=> d!1225591 (contains!9044 rules!3756 rBis!149)))

(assert (=> d!1225591 (= (getIndex!710 rules!3756 rBis!149) lt!1475935)))

(declare-fun b!4139103 () Bool)

(assert (=> b!4139103 (= e!2568163 (- 1))))

(declare-fun b!4139100 () Bool)

(assert (=> b!4139100 (= e!2568164 0)))

(declare-fun b!4139102 () Bool)

(assert (=> b!4139102 (= e!2568163 (+ 1 (getIndex!710 (t!342225 rules!3756) rBis!149)))))

(assert (= (and d!1225591 c!709682) b!4139100))

(assert (= (and d!1225591 (not c!709682)) b!4139101))

(assert (= (and b!4139101 c!709683) b!4139102))

(assert (= (and b!4139101 (not c!709683)) b!4139103))

(assert (=> d!1225591 m!4735499))

(declare-fun m!4735633 () Bool)

(assert (=> b!4139102 m!4735633))

(assert (=> b!4138998 d!1225591))

(declare-fun b!4139105 () Bool)

(declare-fun e!2568166 () Int)

(declare-fun e!2568165 () Int)

(assert (=> b!4139105 (= e!2568166 e!2568165)))

(declare-fun c!709685 () Bool)

(assert (=> b!4139105 (= c!709685 (and ((_ is Cons!44872) rules!3756) (not (= (h!50292 rules!3756) r!4008))))))

(declare-fun d!1225593 () Bool)

(declare-fun lt!1475936 () Int)

(assert (=> d!1225593 (>= lt!1475936 0)))

(assert (=> d!1225593 (= lt!1475936 e!2568166)))

(declare-fun c!709684 () Bool)

(assert (=> d!1225593 (= c!709684 (and ((_ is Cons!44872) rules!3756) (= (h!50292 rules!3756) r!4008)))))

(assert (=> d!1225593 (contains!9044 rules!3756 r!4008)))

(assert (=> d!1225593 (= (getIndex!710 rules!3756 r!4008) lt!1475936)))

(declare-fun b!4139107 () Bool)

(assert (=> b!4139107 (= e!2568165 (- 1))))

(declare-fun b!4139104 () Bool)

(assert (=> b!4139104 (= e!2568166 0)))

(declare-fun b!4139106 () Bool)

(assert (=> b!4139106 (= e!2568165 (+ 1 (getIndex!710 (t!342225 rules!3756) r!4008)))))

(assert (= (and d!1225593 c!709684) b!4139104))

(assert (= (and d!1225593 (not c!709684)) b!4139105))

(assert (= (and b!4139105 c!709685) b!4139106))

(assert (= (and b!4139105 (not c!709685)) b!4139107))

(assert (=> d!1225593 m!4735523))

(declare-fun m!4735635 () Bool)

(assert (=> b!4139106 m!4735635))

(assert (=> b!4138998 d!1225593))

(declare-fun d!1225595 () Bool)

(assert (=> d!1225595 (= (inv!59477 (tag!8224 (h!50292 rules!3756))) (= (mod (str.len (value!230427 (tag!8224 (h!50292 rules!3756)))) 2) 0))))

(assert (=> b!4138994 d!1225595))

(declare-fun d!1225597 () Bool)

(declare-fun res!1693086 () Bool)

(declare-fun e!2568167 () Bool)

(assert (=> d!1225597 (=> (not res!1693086) (not e!2568167))))

(assert (=> d!1225597 (= res!1693086 (semiInverseModEq!3183 (toChars!9887 (transformation!7364 (h!50292 rules!3756))) (toValue!10028 (transformation!7364 (h!50292 rules!3756)))))))

(assert (=> d!1225597 (= (inv!59479 (transformation!7364 (h!50292 rules!3756))) e!2568167)))

(declare-fun b!4139108 () Bool)

(assert (=> b!4139108 (= e!2568167 (equivClasses!3082 (toChars!9887 (transformation!7364 (h!50292 rules!3756))) (toValue!10028 (transformation!7364 (h!50292 rules!3756)))))))

(assert (= (and d!1225597 res!1693086) b!4139108))

(declare-fun m!4735637 () Bool)

(assert (=> d!1225597 m!4735637))

(declare-fun m!4735639 () Bool)

(assert (=> b!4139108 m!4735639))

(assert (=> b!4138994 d!1225597))

(declare-fun d!1225599 () Bool)

(declare-fun lt!1475937 () List!44995)

(assert (=> d!1225599 (= (++!11608 p!2912 lt!1475937) input!3238)))

(declare-fun e!2568168 () List!44995)

(assert (=> d!1225599 (= lt!1475937 e!2568168)))

(declare-fun c!709686 () Bool)

(assert (=> d!1225599 (= c!709686 ((_ is Cons!44871) p!2912))))

(assert (=> d!1225599 (>= (size!33230 input!3238) (size!33230 p!2912))))

(assert (=> d!1225599 (= (getSuffix!2626 input!3238 p!2912) lt!1475937)))

(declare-fun b!4139109 () Bool)

(assert (=> b!4139109 (= e!2568168 (getSuffix!2626 (tail!6533 input!3238) (t!342224 p!2912)))))

(declare-fun b!4139110 () Bool)

(assert (=> b!4139110 (= e!2568168 input!3238)))

(assert (= (and d!1225599 c!709686) b!4139109))

(assert (= (and d!1225599 (not c!709686)) b!4139110))

(declare-fun m!4735641 () Bool)

(assert (=> d!1225599 m!4735641))

(assert (=> d!1225599 m!4735539))

(assert (=> d!1225599 m!4735467))

(assert (=> b!4139109 m!4735543))

(assert (=> b!4139109 m!4735543))

(declare-fun m!4735643 () Bool)

(assert (=> b!4139109 m!4735643))

(assert (=> b!4138996 d!1225599))

(declare-fun b!4139174 () Bool)

(declare-fun e!2568198 () Bool)

(declare-fun lt!1475970 () Option!9670)

(assert (=> b!4139174 (= e!2568198 (contains!9044 rules!3756 (rule!10470 (_1!24765 (get!14641 lt!1475970)))))))

(declare-fun b!4139175 () Bool)

(declare-fun res!1693126 () Bool)

(assert (=> b!4139175 (=> (not res!1693126) (not e!2568198))))

(assert (=> b!4139175 (= res!1693126 (matchR!6098 (regex!7364 (rule!10470 (_1!24765 (get!14641 lt!1475970)))) (list!16433 (charsOf!4963 (_1!24765 (get!14641 lt!1475970))))))))

(declare-fun call!290482 () Option!9670)

(declare-fun bm!290477 () Bool)

(assert (=> bm!290477 (= call!290482 (maxPrefixOneRule!3082 thiss!25645 (h!50292 rules!3756) input!3238))))

(declare-fun b!4139176 () Bool)

(declare-fun e!2568196 () Bool)

(assert (=> b!4139176 (= e!2568196 e!2568198)))

(declare-fun res!1693128 () Bool)

(assert (=> b!4139176 (=> (not res!1693128) (not e!2568198))))

(declare-fun isDefined!7274 (Option!9670) Bool)

(assert (=> b!4139176 (= res!1693128 (isDefined!7274 lt!1475970))))

(declare-fun d!1225601 () Bool)

(assert (=> d!1225601 e!2568196))

(declare-fun res!1693125 () Bool)

(assert (=> d!1225601 (=> res!1693125 e!2568196)))

(assert (=> d!1225601 (= res!1693125 (isEmpty!26746 lt!1475970))))

(declare-fun e!2568197 () Option!9670)

(assert (=> d!1225601 (= lt!1475970 e!2568197)))

(declare-fun c!709695 () Bool)

(assert (=> d!1225601 (= c!709695 (and ((_ is Cons!44872) rules!3756) ((_ is Nil!44872) (t!342225 rules!3756))))))

(declare-fun lt!1475968 () Unit!64175)

(declare-fun lt!1475967 () Unit!64175)

(assert (=> d!1225601 (= lt!1475968 lt!1475967)))

(assert (=> d!1225601 (isPrefix!4299 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2782 (List!44995 List!44995) Unit!64175)

(assert (=> d!1225601 (= lt!1475967 (lemmaIsPrefixRefl!2782 input!3238 input!3238))))

(declare-fun rulesValidInductive!2734 (LexerInterface!6953 List!44996) Bool)

(assert (=> d!1225601 (rulesValidInductive!2734 thiss!25645 rules!3756)))

(assert (=> d!1225601 (= (maxPrefix!4143 thiss!25645 rules!3756 input!3238) lt!1475970)))

(declare-fun b!4139177 () Bool)

(declare-fun lt!1475971 () Option!9670)

(declare-fun lt!1475969 () Option!9670)

(assert (=> b!4139177 (= e!2568197 (ite (and ((_ is None!9669) lt!1475971) ((_ is None!9669) lt!1475969)) None!9669 (ite ((_ is None!9669) lt!1475969) lt!1475971 (ite ((_ is None!9669) lt!1475971) lt!1475969 (ite (>= (size!33229 (_1!24765 (v!40303 lt!1475971))) (size!33229 (_1!24765 (v!40303 lt!1475969)))) lt!1475971 lt!1475969)))))))

(assert (=> b!4139177 (= lt!1475971 call!290482)))

(assert (=> b!4139177 (= lt!1475969 (maxPrefix!4143 thiss!25645 (t!342225 rules!3756) input!3238))))

(declare-fun b!4139178 () Bool)

(assert (=> b!4139178 (= e!2568197 call!290482)))

(declare-fun b!4139179 () Bool)

(declare-fun res!1693124 () Bool)

(assert (=> b!4139179 (=> (not res!1693124) (not e!2568198))))

(assert (=> b!4139179 (= res!1693124 (= (list!16433 (charsOf!4963 (_1!24765 (get!14641 lt!1475970)))) (originalCharacters!7860 (_1!24765 (get!14641 lt!1475970)))))))

(declare-fun b!4139180 () Bool)

(declare-fun res!1693127 () Bool)

(assert (=> b!4139180 (=> (not res!1693127) (not e!2568198))))

(assert (=> b!4139180 (= res!1693127 (= (++!11608 (list!16433 (charsOf!4963 (_1!24765 (get!14641 lt!1475970)))) (_2!24765 (get!14641 lt!1475970))) input!3238))))

(declare-fun b!4139181 () Bool)

(declare-fun res!1693123 () Bool)

(assert (=> b!4139181 (=> (not res!1693123) (not e!2568198))))

(assert (=> b!4139181 (= res!1693123 (= (value!230428 (_1!24765 (get!14641 lt!1475970))) (apply!10437 (transformation!7364 (rule!10470 (_1!24765 (get!14641 lt!1475970)))) (seqFromList!5481 (originalCharacters!7860 (_1!24765 (get!14641 lt!1475970)))))))))

(declare-fun b!4139182 () Bool)

(declare-fun res!1693122 () Bool)

(assert (=> b!4139182 (=> (not res!1693122) (not e!2568198))))

(assert (=> b!4139182 (= res!1693122 (< (size!33230 (_2!24765 (get!14641 lt!1475970))) (size!33230 input!3238)))))

(assert (= (and d!1225601 c!709695) b!4139178))

(assert (= (and d!1225601 (not c!709695)) b!4139177))

(assert (= (or b!4139178 b!4139177) bm!290477))

(assert (= (and d!1225601 (not res!1693125)) b!4139176))

(assert (= (and b!4139176 res!1693128) b!4139179))

(assert (= (and b!4139179 res!1693124) b!4139182))

(assert (= (and b!4139182 res!1693122) b!4139180))

(assert (= (and b!4139180 res!1693127) b!4139181))

(assert (= (and b!4139181 res!1693123) b!4139175))

(assert (= (and b!4139175 res!1693126) b!4139174))

(declare-fun m!4735701 () Bool)

(assert (=> b!4139179 m!4735701))

(declare-fun m!4735703 () Bool)

(assert (=> b!4139179 m!4735703))

(assert (=> b!4139179 m!4735703))

(declare-fun m!4735705 () Bool)

(assert (=> b!4139179 m!4735705))

(assert (=> b!4139175 m!4735701))

(assert (=> b!4139175 m!4735703))

(assert (=> b!4139175 m!4735703))

(assert (=> b!4139175 m!4735705))

(assert (=> b!4139175 m!4735705))

(declare-fun m!4735707 () Bool)

(assert (=> b!4139175 m!4735707))

(assert (=> b!4139174 m!4735701))

(declare-fun m!4735709 () Bool)

(assert (=> b!4139174 m!4735709))

(assert (=> b!4139180 m!4735701))

(assert (=> b!4139180 m!4735703))

(assert (=> b!4139180 m!4735703))

(assert (=> b!4139180 m!4735705))

(assert (=> b!4139180 m!4735705))

(declare-fun m!4735711 () Bool)

(assert (=> b!4139180 m!4735711))

(assert (=> b!4139181 m!4735701))

(declare-fun m!4735713 () Bool)

(assert (=> b!4139181 m!4735713))

(assert (=> b!4139181 m!4735713))

(declare-fun m!4735715 () Bool)

(assert (=> b!4139181 m!4735715))

(declare-fun m!4735717 () Bool)

(assert (=> d!1225601 m!4735717))

(declare-fun m!4735719 () Bool)

(assert (=> d!1225601 m!4735719))

(declare-fun m!4735721 () Bool)

(assert (=> d!1225601 m!4735721))

(declare-fun m!4735723 () Bool)

(assert (=> d!1225601 m!4735723))

(assert (=> b!4139182 m!4735701))

(declare-fun m!4735725 () Bool)

(assert (=> b!4139182 m!4735725))

(assert (=> b!4139182 m!4735539))

(declare-fun m!4735727 () Bool)

(assert (=> b!4139177 m!4735727))

(declare-fun m!4735729 () Bool)

(assert (=> b!4139176 m!4735729))

(declare-fun m!4735731 () Bool)

(assert (=> bm!290477 m!4735731))

(assert (=> b!4138996 d!1225601))

(declare-fun b!4139363 () Bool)

(declare-fun e!2568304 () Bool)

(assert (=> b!4139363 (= e!2568304 true)))

(declare-fun d!1225611 () Bool)

(assert (=> d!1225611 e!2568304))

(assert (= d!1225611 b!4139363))

(declare-fun lambda!128937 () Int)

(declare-fun order!23743 () Int)

(declare-fun order!23741 () Int)

(declare-fun dynLambda!19293 (Int Int) Int)

(declare-fun dynLambda!19294 (Int Int) Int)

(assert (=> b!4139363 (< (dynLambda!19293 order!23741 (toValue!10028 (transformation!7364 r!4008))) (dynLambda!19294 order!23743 lambda!128937))))

(declare-fun order!23745 () Int)

(declare-fun dynLambda!19295 (Int Int) Int)

(assert (=> b!4139363 (< (dynLambda!19295 order!23745 (toChars!9887 (transformation!7364 r!4008))) (dynLambda!19294 order!23743 lambda!128937))))

(declare-fun dynLambda!19296 (Int TokenValue!7594) BalanceConc!26744)

(declare-fun dynLambda!19297 (Int BalanceConc!26744) TokenValue!7594)

(assert (=> d!1225611 (= (list!16433 (dynLambda!19296 (toChars!9887 (transformation!7364 r!4008)) (dynLambda!19297 (toValue!10028 (transformation!7364 r!4008)) lt!1475884))) (list!16433 lt!1475884))))

(declare-fun lt!1476028 () Unit!64175)

(declare-fun ForallOf!966 (Int BalanceConc!26744) Unit!64175)

(assert (=> d!1225611 (= lt!1476028 (ForallOf!966 lambda!128937 lt!1475884))))

(assert (=> d!1225611 (= (lemmaSemiInverse!2222 (transformation!7364 r!4008) lt!1475884) lt!1476028)))

(declare-fun b_lambda!121669 () Bool)

(assert (=> (not b_lambda!121669) (not d!1225611)))

(declare-fun tb!248475 () Bool)

(declare-fun t!342254 () Bool)

(assert (=> (and b!4138990 (= (toChars!9887 (transformation!7364 rBis!149)) (toChars!9887 (transformation!7364 r!4008))) t!342254) tb!248475))

(declare-fun tp!1261682 () Bool)

(declare-fun b!4139368 () Bool)

(declare-fun e!2568307 () Bool)

(declare-fun inv!59482 (Conc!13575) Bool)

(assert (=> b!4139368 (= e!2568307 (and (inv!59482 (c!709666 (dynLambda!19296 (toChars!9887 (transformation!7364 r!4008)) (dynLambda!19297 (toValue!10028 (transformation!7364 r!4008)) lt!1475884)))) tp!1261682))))

(declare-fun result!302122 () Bool)

(declare-fun inv!59483 (BalanceConc!26744) Bool)

(assert (=> tb!248475 (= result!302122 (and (inv!59483 (dynLambda!19296 (toChars!9887 (transformation!7364 r!4008)) (dynLambda!19297 (toValue!10028 (transformation!7364 r!4008)) lt!1475884))) e!2568307))))

(assert (= tb!248475 b!4139368))

(declare-fun m!4735871 () Bool)

(assert (=> b!4139368 m!4735871))

(declare-fun m!4735873 () Bool)

(assert (=> tb!248475 m!4735873))

(assert (=> d!1225611 t!342254))

(declare-fun b_and!321337 () Bool)

(assert (= b_and!321299 (and (=> t!342254 result!302122) b_and!321337)))

(declare-fun t!342256 () Bool)

(declare-fun tb!248477 () Bool)

(assert (=> (and b!4139007 (= (toChars!9887 (transformation!7364 r!4008)) (toChars!9887 (transformation!7364 r!4008))) t!342256) tb!248477))

(declare-fun result!302126 () Bool)

(assert (= result!302126 result!302122))

(assert (=> d!1225611 t!342256))

(declare-fun b_and!321339 () Bool)

(assert (= b_and!321303 (and (=> t!342256 result!302126) b_and!321339)))

(declare-fun t!342258 () Bool)

(declare-fun tb!248479 () Bool)

(assert (=> (and b!4139003 (= (toChars!9887 (transformation!7364 (h!50292 rules!3756))) (toChars!9887 (transformation!7364 r!4008))) t!342258) tb!248479))

(declare-fun result!302128 () Bool)

(assert (= result!302128 result!302122))

(assert (=> d!1225611 t!342258))

(declare-fun b_and!321341 () Bool)

(assert (= b_and!321307 (and (=> t!342258 result!302128) b_and!321341)))

(declare-fun b_lambda!121671 () Bool)

(assert (=> (not b_lambda!121671) (not d!1225611)))

(declare-fun tb!248481 () Bool)

(declare-fun t!342260 () Bool)

(assert (=> (and b!4138990 (= (toValue!10028 (transformation!7364 rBis!149)) (toValue!10028 (transformation!7364 r!4008))) t!342260) tb!248481))

(declare-fun result!302130 () Bool)

(declare-fun inv!21 (TokenValue!7594) Bool)

(assert (=> tb!248481 (= result!302130 (inv!21 (dynLambda!19297 (toValue!10028 (transformation!7364 r!4008)) lt!1475884)))))

(declare-fun m!4735875 () Bool)

(assert (=> tb!248481 m!4735875))

(assert (=> d!1225611 t!342260))

(declare-fun b_and!321343 () Bool)

(assert (= b_and!321297 (and (=> t!342260 result!302130) b_and!321343)))

(declare-fun t!342262 () Bool)

(declare-fun tb!248483 () Bool)

(assert (=> (and b!4139007 (= (toValue!10028 (transformation!7364 r!4008)) (toValue!10028 (transformation!7364 r!4008))) t!342262) tb!248483))

(declare-fun result!302134 () Bool)

(assert (= result!302134 result!302130))

(assert (=> d!1225611 t!342262))

(declare-fun b_and!321345 () Bool)

(assert (= b_and!321301 (and (=> t!342262 result!302134) b_and!321345)))

(declare-fun tb!248485 () Bool)

(declare-fun t!342264 () Bool)

(assert (=> (and b!4139003 (= (toValue!10028 (transformation!7364 (h!50292 rules!3756))) (toValue!10028 (transformation!7364 r!4008))) t!342264) tb!248485))

(declare-fun result!302136 () Bool)

(assert (= result!302136 result!302130))

(assert (=> d!1225611 t!342264))

(declare-fun b_and!321347 () Bool)

(assert (= b_and!321305 (and (=> t!342264 result!302136) b_and!321347)))

(declare-fun m!4735877 () Bool)

(assert (=> d!1225611 m!4735877))

(declare-fun m!4735879 () Bool)

(assert (=> d!1225611 m!4735879))

(declare-fun m!4735881 () Bool)

(assert (=> d!1225611 m!4735881))

(declare-fun m!4735883 () Bool)

(assert (=> d!1225611 m!4735883))

(declare-fun m!4735885 () Bool)

(assert (=> d!1225611 m!4735885))

(assert (=> d!1225611 m!4735881))

(assert (=> d!1225611 m!4735885))

(assert (=> b!4138996 d!1225611))

(declare-fun d!1225679 () Bool)

(declare-fun fromListB!2515 (List!44995) BalanceConc!26744)

(assert (=> d!1225679 (= (seqFromList!5481 p!2912) (fromListB!2515 p!2912))))

(declare-fun bs!595204 () Bool)

(assert (= bs!595204 d!1225679))

(declare-fun m!4735887 () Bool)

(assert (=> bs!595204 m!4735887))

(assert (=> b!4138996 d!1225679))

(declare-fun d!1225681 () Bool)

(assert (=> d!1225681 (= (apply!10437 (transformation!7364 r!4008) lt!1475884) (dynLambda!19297 (toValue!10028 (transformation!7364 r!4008)) lt!1475884))))

(declare-fun b_lambda!121673 () Bool)

(assert (=> (not b_lambda!121673) (not d!1225681)))

(assert (=> d!1225681 t!342260))

(declare-fun b_and!321349 () Bool)

(assert (= b_and!321343 (and (=> t!342260 result!302130) b_and!321349)))

(assert (=> d!1225681 t!342262))

(declare-fun b_and!321351 () Bool)

(assert (= b_and!321345 (and (=> t!342262 result!302134) b_and!321351)))

(assert (=> d!1225681 t!342264))

(declare-fun b_and!321353 () Bool)

(assert (= b_and!321347 (and (=> t!342264 result!302136) b_and!321353)))

(assert (=> d!1225681 m!4735885))

(assert (=> b!4138996 d!1225681))

(declare-fun d!1225683 () Bool)

(declare-fun lt!1476029 () Int)

(assert (=> d!1225683 (>= lt!1476029 0)))

(declare-fun e!2568311 () Int)

(assert (=> d!1225683 (= lt!1476029 e!2568311)))

(declare-fun c!709722 () Bool)

(assert (=> d!1225683 (= c!709722 ((_ is Nil!44871) p!2912))))

(assert (=> d!1225683 (= (size!33230 p!2912) lt!1476029)))

(declare-fun b!4139371 () Bool)

(assert (=> b!4139371 (= e!2568311 0)))

(declare-fun b!4139372 () Bool)

(assert (=> b!4139372 (= e!2568311 (+ 1 (size!33230 (t!342224 p!2912))))))

(assert (= (and d!1225683 c!709722) b!4139371))

(assert (= (and d!1225683 (not c!709722)) b!4139372))

(declare-fun m!4735889 () Bool)

(assert (=> b!4139372 m!4735889))

(assert (=> b!4138996 d!1225683))

(declare-fun b!4139401 () Bool)

(declare-fun e!2568327 () Bool)

(declare-fun e!2568328 () Bool)

(assert (=> b!4139401 (= e!2568327 e!2568328)))

(declare-fun res!1693238 () Bool)

(assert (=> b!4139401 (=> (not res!1693238) (not e!2568328))))

(declare-fun lt!1476032 () Bool)

(assert (=> b!4139401 (= res!1693238 (not lt!1476032))))

(declare-fun b!4139402 () Bool)

(declare-fun e!2568331 () Bool)

(assert (=> b!4139402 (= e!2568331 (= (head!8732 p!2912) (c!709667 (regex!7364 r!4008))))))

(declare-fun b!4139403 () Bool)

(declare-fun res!1693232 () Bool)

(assert (=> b!4139403 (=> res!1693232 e!2568327)))

(assert (=> b!4139403 (= res!1693232 (not ((_ is ElementMatch!12269) (regex!7364 r!4008))))))

(declare-fun e!2568329 () Bool)

(assert (=> b!4139403 (= e!2568329 e!2568327)))

(declare-fun b!4139404 () Bool)

(declare-fun e!2568332 () Bool)

(assert (=> b!4139404 (= e!2568332 (not (= (head!8732 p!2912) (c!709667 (regex!7364 r!4008)))))))

(declare-fun b!4139405 () Bool)

(declare-fun e!2568330 () Bool)

(declare-fun call!290488 () Bool)

(assert (=> b!4139405 (= e!2568330 (= lt!1476032 call!290488))))

(declare-fun b!4139406 () Bool)

(declare-fun e!2568326 () Bool)

(assert (=> b!4139406 (= e!2568326 (nullable!4319 (regex!7364 r!4008)))))

(declare-fun b!4139407 () Bool)

(assert (=> b!4139407 (= e!2568330 e!2568329)))

(declare-fun c!709731 () Bool)

(assert (=> b!4139407 (= c!709731 ((_ is EmptyLang!12269) (regex!7364 r!4008)))))

(declare-fun b!4139408 () Bool)

(declare-fun res!1693233 () Bool)

(assert (=> b!4139408 (=> (not res!1693233) (not e!2568331))))

(assert (=> b!4139408 (= res!1693233 (not call!290488))))

(declare-fun bm!290483 () Bool)

(assert (=> bm!290483 (= call!290488 (isEmpty!26745 p!2912))))

(declare-fun d!1225685 () Bool)

(assert (=> d!1225685 e!2568330))

(declare-fun c!709729 () Bool)

(assert (=> d!1225685 (= c!709729 ((_ is EmptyExpr!12269) (regex!7364 r!4008)))))

(assert (=> d!1225685 (= lt!1476032 e!2568326)))

(declare-fun c!709730 () Bool)

(assert (=> d!1225685 (= c!709730 (isEmpty!26745 p!2912))))

(assert (=> d!1225685 (validRegex!5527 (regex!7364 r!4008))))

(assert (=> d!1225685 (= (matchR!6098 (regex!7364 r!4008) p!2912) lt!1476032)))

(declare-fun b!4139409 () Bool)

(declare-fun res!1693236 () Bool)

(assert (=> b!4139409 (=> res!1693236 e!2568327)))

(assert (=> b!4139409 (= res!1693236 e!2568331)))

(declare-fun res!1693234 () Bool)

(assert (=> b!4139409 (=> (not res!1693234) (not e!2568331))))

(assert (=> b!4139409 (= res!1693234 lt!1476032)))

(declare-fun b!4139410 () Bool)

(declare-fun res!1693237 () Bool)

(assert (=> b!4139410 (=> res!1693237 e!2568332)))

(assert (=> b!4139410 (= res!1693237 (not (isEmpty!26745 (tail!6533 p!2912))))))

(declare-fun b!4139411 () Bool)

(assert (=> b!4139411 (= e!2568329 (not lt!1476032))))

(declare-fun b!4139412 () Bool)

(declare-fun res!1693231 () Bool)

(assert (=> b!4139412 (=> (not res!1693231) (not e!2568331))))

(assert (=> b!4139412 (= res!1693231 (isEmpty!26745 (tail!6533 p!2912)))))

(declare-fun b!4139413 () Bool)

(declare-fun derivativeStep!3714 (Regex!12269 C!24724) Regex!12269)

(assert (=> b!4139413 (= e!2568326 (matchR!6098 (derivativeStep!3714 (regex!7364 r!4008) (head!8732 p!2912)) (tail!6533 p!2912)))))

(declare-fun b!4139414 () Bool)

(assert (=> b!4139414 (= e!2568328 e!2568332)))

(declare-fun res!1693235 () Bool)

(assert (=> b!4139414 (=> res!1693235 e!2568332)))

(assert (=> b!4139414 (= res!1693235 call!290488)))

(assert (= (and d!1225685 c!709730) b!4139406))

(assert (= (and d!1225685 (not c!709730)) b!4139413))

(assert (= (and d!1225685 c!709729) b!4139405))

(assert (= (and d!1225685 (not c!709729)) b!4139407))

(assert (= (and b!4139407 c!709731) b!4139411))

(assert (= (and b!4139407 (not c!709731)) b!4139403))

(assert (= (and b!4139403 (not res!1693232)) b!4139409))

(assert (= (and b!4139409 res!1693234) b!4139408))

(assert (= (and b!4139408 res!1693233) b!4139412))

(assert (= (and b!4139412 res!1693231) b!4139402))

(assert (= (and b!4139409 (not res!1693236)) b!4139401))

(assert (= (and b!4139401 res!1693238) b!4139414))

(assert (= (and b!4139414 (not res!1693235)) b!4139410))

(assert (= (and b!4139410 (not res!1693237)) b!4139404))

(assert (= (or b!4139405 b!4139408 b!4139414) bm!290483))

(assert (=> b!4139402 m!4735547))

(assert (=> b!4139413 m!4735547))

(assert (=> b!4139413 m!4735547))

(declare-fun m!4735891 () Bool)

(assert (=> b!4139413 m!4735891))

(assert (=> b!4139413 m!4735541))

(assert (=> b!4139413 m!4735891))

(assert (=> b!4139413 m!4735541))

(declare-fun m!4735893 () Bool)

(assert (=> b!4139413 m!4735893))

(assert (=> bm!290483 m!4735509))

(assert (=> b!4139406 m!4735527))

(assert (=> b!4139412 m!4735541))

(assert (=> b!4139412 m!4735541))

(declare-fun m!4735895 () Bool)

(assert (=> b!4139412 m!4735895))

(assert (=> d!1225685 m!4735509))

(assert (=> d!1225685 m!4735525))

(assert (=> b!4139410 m!4735541))

(assert (=> b!4139410 m!4735541))

(assert (=> b!4139410 m!4735895))

(assert (=> b!4139404 m!4735547))

(assert (=> b!4139006 d!1225685))

(declare-fun d!1225687 () Bool)

(declare-fun lt!1476035 () Int)

(assert (=> d!1225687 (= lt!1476035 (size!33230 (list!16433 lt!1475888)))))

(declare-fun size!33232 (Conc!13575) Int)

(assert (=> d!1225687 (= lt!1476035 (size!33232 (c!709666 lt!1475888)))))

(assert (=> d!1225687 (= (size!33228 lt!1475888) lt!1476035)))

(declare-fun bs!595205 () Bool)

(assert (= bs!595205 d!1225687))

(assert (=> bs!595205 m!4735521))

(assert (=> bs!595205 m!4735521))

(declare-fun m!4735897 () Bool)

(assert (=> bs!595205 m!4735897))

(declare-fun m!4735899 () Bool)

(assert (=> bs!595205 m!4735899))

(assert (=> b!4138995 d!1225687))

(declare-fun d!1225689 () Bool)

(declare-fun lt!1476038 () BalanceConc!26744)

(assert (=> d!1225689 (= (list!16433 lt!1476038) (originalCharacters!7860 (_1!24765 lt!1475882)))))

(assert (=> d!1225689 (= lt!1476038 (dynLambda!19296 (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882)))) (value!230428 (_1!24765 lt!1475882))))))

(assert (=> d!1225689 (= (charsOf!4963 (_1!24765 lt!1475882)) lt!1476038)))

(declare-fun b_lambda!121675 () Bool)

(assert (=> (not b_lambda!121675) (not d!1225689)))

(declare-fun tb!248487 () Bool)

(declare-fun t!342266 () Bool)

(assert (=> (and b!4138990 (= (toChars!9887 (transformation!7364 rBis!149)) (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882))))) t!342266) tb!248487))

(declare-fun b!4139415 () Bool)

(declare-fun e!2568333 () Bool)

(declare-fun tp!1261683 () Bool)

(assert (=> b!4139415 (= e!2568333 (and (inv!59482 (c!709666 (dynLambda!19296 (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882)))) (value!230428 (_1!24765 lt!1475882))))) tp!1261683))))

(declare-fun result!302138 () Bool)

(assert (=> tb!248487 (= result!302138 (and (inv!59483 (dynLambda!19296 (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882)))) (value!230428 (_1!24765 lt!1475882)))) e!2568333))))

(assert (= tb!248487 b!4139415))

(declare-fun m!4735901 () Bool)

(assert (=> b!4139415 m!4735901))

(declare-fun m!4735903 () Bool)

(assert (=> tb!248487 m!4735903))

(assert (=> d!1225689 t!342266))

(declare-fun b_and!321355 () Bool)

(assert (= b_and!321337 (and (=> t!342266 result!302138) b_and!321355)))

(declare-fun tb!248489 () Bool)

(declare-fun t!342268 () Bool)

(assert (=> (and b!4139007 (= (toChars!9887 (transformation!7364 r!4008)) (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882))))) t!342268) tb!248489))

(declare-fun result!302140 () Bool)

(assert (= result!302140 result!302138))

(assert (=> d!1225689 t!342268))

(declare-fun b_and!321357 () Bool)

(assert (= b_and!321339 (and (=> t!342268 result!302140) b_and!321357)))

(declare-fun t!342270 () Bool)

(declare-fun tb!248491 () Bool)

(assert (=> (and b!4139003 (= (toChars!9887 (transformation!7364 (h!50292 rules!3756))) (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882))))) t!342270) tb!248491))

(declare-fun result!302142 () Bool)

(assert (= result!302142 result!302138))

(assert (=> d!1225689 t!342270))

(declare-fun b_and!321359 () Bool)

(assert (= b_and!321341 (and (=> t!342270 result!302142) b_and!321359)))

(declare-fun m!4735905 () Bool)

(assert (=> d!1225689 m!4735905))

(declare-fun m!4735907 () Bool)

(assert (=> d!1225689 m!4735907))

(assert (=> b!4138995 d!1225689))

(declare-fun d!1225691 () Bool)

(assert (=> d!1225691 (= (get!14641 lt!1475878) (v!40303 lt!1475878))))

(assert (=> b!4138995 d!1225691))

(declare-fun b!4139427 () Bool)

(declare-fun e!2568336 () Bool)

(declare-fun tp!1261695 () Bool)

(declare-fun tp!1261696 () Bool)

(assert (=> b!4139427 (= e!2568336 (and tp!1261695 tp!1261696))))

(declare-fun b!4139429 () Bool)

(declare-fun tp!1261698 () Bool)

(declare-fun tp!1261694 () Bool)

(assert (=> b!4139429 (= e!2568336 (and tp!1261698 tp!1261694))))

(assert (=> b!4138991 (= tp!1261630 e!2568336)))

(declare-fun b!4139426 () Bool)

(assert (=> b!4139426 (= e!2568336 tp_is_empty!21461)))

(declare-fun b!4139428 () Bool)

(declare-fun tp!1261697 () Bool)

(assert (=> b!4139428 (= e!2568336 tp!1261697)))

(assert (= (and b!4138991 ((_ is ElementMatch!12269) (regex!7364 rBis!149))) b!4139426))

(assert (= (and b!4138991 ((_ is Concat!19864) (regex!7364 rBis!149))) b!4139427))

(assert (= (and b!4138991 ((_ is Star!12269) (regex!7364 rBis!149))) b!4139428))

(assert (= (and b!4138991 ((_ is Union!12269) (regex!7364 rBis!149))) b!4139429))

(declare-fun b!4139434 () Bool)

(declare-fun e!2568339 () Bool)

(declare-fun tp!1261701 () Bool)

(assert (=> b!4139434 (= e!2568339 (and tp_is_empty!21461 tp!1261701))))

(assert (=> b!4139005 (= tp!1261628 e!2568339)))

(assert (= (and b!4139005 ((_ is Cons!44871) (t!342224 p!2912))) b!4139434))

(declare-fun b!4139436 () Bool)

(declare-fun e!2568340 () Bool)

(declare-fun tp!1261703 () Bool)

(declare-fun tp!1261704 () Bool)

(assert (=> b!4139436 (= e!2568340 (and tp!1261703 tp!1261704))))

(declare-fun b!4139438 () Bool)

(declare-fun tp!1261706 () Bool)

(declare-fun tp!1261702 () Bool)

(assert (=> b!4139438 (= e!2568340 (and tp!1261706 tp!1261702))))

(assert (=> b!4138994 (= tp!1261625 e!2568340)))

(declare-fun b!4139435 () Bool)

(assert (=> b!4139435 (= e!2568340 tp_is_empty!21461)))

(declare-fun b!4139437 () Bool)

(declare-fun tp!1261705 () Bool)

(assert (=> b!4139437 (= e!2568340 tp!1261705)))

(assert (= (and b!4138994 ((_ is ElementMatch!12269) (regex!7364 (h!50292 rules!3756)))) b!4139435))

(assert (= (and b!4138994 ((_ is Concat!19864) (regex!7364 (h!50292 rules!3756)))) b!4139436))

(assert (= (and b!4138994 ((_ is Star!12269) (regex!7364 (h!50292 rules!3756)))) b!4139437))

(assert (= (and b!4138994 ((_ is Union!12269) (regex!7364 (h!50292 rules!3756)))) b!4139438))

(declare-fun b!4139439 () Bool)

(declare-fun e!2568341 () Bool)

(declare-fun tp!1261707 () Bool)

(assert (=> b!4139439 (= e!2568341 (and tp_is_empty!21461 tp!1261707))))

(assert (=> b!4139010 (= tp!1261624 e!2568341)))

(assert (= (and b!4139010 ((_ is Cons!44871) (t!342224 input!3238))) b!4139439))

(declare-fun b!4139441 () Bool)

(declare-fun e!2568342 () Bool)

(declare-fun tp!1261709 () Bool)

(declare-fun tp!1261710 () Bool)

(assert (=> b!4139441 (= e!2568342 (and tp!1261709 tp!1261710))))

(declare-fun b!4139443 () Bool)

(declare-fun tp!1261712 () Bool)

(declare-fun tp!1261708 () Bool)

(assert (=> b!4139443 (= e!2568342 (and tp!1261712 tp!1261708))))

(assert (=> b!4139012 (= tp!1261623 e!2568342)))

(declare-fun b!4139440 () Bool)

(assert (=> b!4139440 (= e!2568342 tp_is_empty!21461)))

(declare-fun b!4139442 () Bool)

(declare-fun tp!1261711 () Bool)

(assert (=> b!4139442 (= e!2568342 tp!1261711)))

(assert (= (and b!4139012 ((_ is ElementMatch!12269) (regex!7364 r!4008))) b!4139440))

(assert (= (and b!4139012 ((_ is Concat!19864) (regex!7364 r!4008))) b!4139441))

(assert (= (and b!4139012 ((_ is Star!12269) (regex!7364 r!4008))) b!4139442))

(assert (= (and b!4139012 ((_ is Union!12269) (regex!7364 r!4008))) b!4139443))

(declare-fun b!4139454 () Bool)

(declare-fun b_free!117779 () Bool)

(declare-fun b_next!118483 () Bool)

(assert (=> b!4139454 (= b_free!117779 (not b_next!118483))))

(declare-fun t!342272 () Bool)

(declare-fun tb!248493 () Bool)

(assert (=> (and b!4139454 (= (toValue!10028 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toValue!10028 (transformation!7364 r!4008))) t!342272) tb!248493))

(declare-fun result!302150 () Bool)

(assert (= result!302150 result!302130))

(assert (=> d!1225611 t!342272))

(assert (=> d!1225681 t!342272))

(declare-fun b_and!321361 () Bool)

(declare-fun tp!1261722 () Bool)

(assert (=> b!4139454 (= tp!1261722 (and (=> t!342272 result!302150) b_and!321361))))

(declare-fun b_free!117781 () Bool)

(declare-fun b_next!118485 () Bool)

(assert (=> b!4139454 (= b_free!117781 (not b_next!118485))))

(declare-fun tb!248495 () Bool)

(declare-fun t!342274 () Bool)

(assert (=> (and b!4139454 (= (toChars!9887 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toChars!9887 (transformation!7364 r!4008))) t!342274) tb!248495))

(declare-fun result!302152 () Bool)

(assert (= result!302152 result!302122))

(assert (=> d!1225611 t!342274))

(declare-fun tb!248497 () Bool)

(declare-fun t!342276 () Bool)

(assert (=> (and b!4139454 (= (toChars!9887 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toChars!9887 (transformation!7364 (rule!10470 (_1!24765 lt!1475882))))) t!342276) tb!248497))

(declare-fun result!302154 () Bool)

(assert (= result!302154 result!302138))

(assert (=> d!1225689 t!342276))

(declare-fun b_and!321363 () Bool)

(declare-fun tp!1261724 () Bool)

(assert (=> b!4139454 (= tp!1261724 (and (=> t!342274 result!302152) (=> t!342276 result!302154) b_and!321363))))

(declare-fun e!2568354 () Bool)

(assert (=> b!4139454 (= e!2568354 (and tp!1261722 tp!1261724))))

(declare-fun b!4139453 () Bool)

(declare-fun tp!1261721 () Bool)

(declare-fun e!2568351 () Bool)

(assert (=> b!4139453 (= e!2568351 (and tp!1261721 (inv!59477 (tag!8224 (h!50292 (t!342225 rules!3756)))) (inv!59479 (transformation!7364 (h!50292 (t!342225 rules!3756)))) e!2568354))))

(declare-fun b!4139452 () Bool)

(declare-fun e!2568353 () Bool)

(declare-fun tp!1261723 () Bool)

(assert (=> b!4139452 (= e!2568353 (and e!2568351 tp!1261723))))

(assert (=> b!4139001 (= tp!1261633 e!2568353)))

(assert (= b!4139453 b!4139454))

(assert (= b!4139452 b!4139453))

(assert (= (and b!4139001 ((_ is Cons!44872) (t!342225 rules!3756))) b!4139452))

(declare-fun m!4735909 () Bool)

(assert (=> b!4139453 m!4735909))

(declare-fun m!4735911 () Bool)

(assert (=> b!4139453 m!4735911))

(declare-fun b_lambda!121677 () Bool)

(assert (= b_lambda!121671 (or (and b!4138990 b_free!117763 (= (toValue!10028 (transformation!7364 rBis!149)) (toValue!10028 (transformation!7364 r!4008)))) (and b!4139007 b_free!117767) (and b!4139003 b_free!117771 (= (toValue!10028 (transformation!7364 (h!50292 rules!3756))) (toValue!10028 (transformation!7364 r!4008)))) (and b!4139454 b_free!117779 (= (toValue!10028 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toValue!10028 (transformation!7364 r!4008)))) b_lambda!121677)))

(declare-fun b_lambda!121679 () Bool)

(assert (= b_lambda!121669 (or (and b!4138990 b_free!117765 (= (toChars!9887 (transformation!7364 rBis!149)) (toChars!9887 (transformation!7364 r!4008)))) (and b!4139007 b_free!117769) (and b!4139003 b_free!117773 (= (toChars!9887 (transformation!7364 (h!50292 rules!3756))) (toChars!9887 (transformation!7364 r!4008)))) (and b!4139454 b_free!117781 (= (toChars!9887 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toChars!9887 (transformation!7364 r!4008)))) b_lambda!121679)))

(declare-fun b_lambda!121681 () Bool)

(assert (= b_lambda!121673 (or (and b!4138990 b_free!117763 (= (toValue!10028 (transformation!7364 rBis!149)) (toValue!10028 (transformation!7364 r!4008)))) (and b!4139007 b_free!117767) (and b!4139003 b_free!117771 (= (toValue!10028 (transformation!7364 (h!50292 rules!3756))) (toValue!10028 (transformation!7364 r!4008)))) (and b!4139454 b_free!117779 (= (toValue!10028 (transformation!7364 (h!50292 (t!342225 rules!3756)))) (toValue!10028 (transformation!7364 r!4008)))) b_lambda!121681)))

(check-sat (not b!4139087) (not b!4139413) (not b!4139174) (not b_next!118485) (not b!4139442) (not b!4139427) (not b!4139372) b_and!321355 (not d!1225559) (not d!1225571) (not d!1225579) (not b_lambda!121677) (not b!4139176) (not b_next!118473) (not d!1225587) (not d!1225685) (not b!4139439) (not b!4139429) (not b!4139057) (not b!4139434) (not b!4139177) (not d!1225679) (not b!4139055) (not b!4139084) b_and!321349 (not d!1225591) (not d!1225599) (not b_lambda!121679) (not d!1225611) (not b_next!118469) (not b!4139024) (not bm!290477) (not d!1225545) (not b!4139054) (not b_next!118477) (not d!1225563) (not d!1225585) (not d!1225593) (not d!1225561) (not b!4139102) (not d!1225689) b_and!321357 (not b!4139441) tp_is_empty!21461 (not b!4139109) (not b!4139080) (not d!1225687) (not b_lambda!121675) (not b_next!118467) (not d!1225567) (not b!4139428) (not b!4139039) (not b!4139090) b_and!321359 (not b!4139085) (not b!4139438) (not b!4139404) (not b!4139415) (not bm!290483) (not b!4139368) (not b!4139079) (not b!4139089) b_and!321353 (not d!1225581) (not b!4139412) (not tb!248487) (not b!4139060) (not tb!248475) (not d!1225589) (not b!4139038) (not b_next!118471) (not b!4139050) (not b!4139443) (not b!4139436) (not d!1225597) (not b!4139017) (not d!1225577) (not b!4139083) (not b_next!118475) (not b!4139108) (not b!4139410) (not b!4139179) (not d!1225543) (not b!4139027) (not b!4139037) (not b!4139082) (not b!4139175) (not b!4139453) (not d!1225601) (not b!4139406) (not b!4139180) (not b!4139181) (not b!4139045) b_and!321363 (not b!4139437) (not b_lambda!121681) (not b!4139086) (not b!4139402) (not b_next!118483) b_and!321351 (not tb!248481) (not d!1225557) (not d!1225583) (not b!4139106) (not b!4139182) b_and!321361 (not d!1225549) (not b!4139452))
(check-sat b_and!321355 (not b_next!118473) (not b_next!118477) b_and!321357 (not b_next!118467) b_and!321359 b_and!321353 (not b_next!118471) (not b_next!118475) b_and!321363 (not b_next!118485) b_and!321361 b_and!321349 (not b_next!118469) (not b_next!118483) b_and!321351)
