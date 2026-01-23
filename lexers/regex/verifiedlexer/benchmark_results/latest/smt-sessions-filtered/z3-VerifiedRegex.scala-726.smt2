; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32774 () Bool)

(assert start!32774)

(declare-fun b!305117 () Bool)

(declare-fun b_free!10913 () Bool)

(declare-fun b_next!10913 () Bool)

(assert (=> b!305117 (= b_free!10913 (not b_next!10913))))

(declare-fun tp!108491 () Bool)

(declare-fun b_and!25765 () Bool)

(assert (=> b!305117 (= tp!108491 b_and!25765)))

(declare-fun b_free!10915 () Bool)

(declare-fun b_next!10915 () Bool)

(assert (=> b!305117 (= b_free!10915 (not b_next!10915))))

(declare-fun tp!108490 () Bool)

(declare-fun b_and!25767 () Bool)

(assert (=> b!305117 (= tp!108490 b_and!25767)))

(declare-fun b!305112 () Bool)

(declare-fun b_free!10917 () Bool)

(declare-fun b_next!10917 () Bool)

(assert (=> b!305112 (= b_free!10917 (not b_next!10917))))

(declare-fun tp!108494 () Bool)

(declare-fun b_and!25769 () Bool)

(assert (=> b!305112 (= tp!108494 b_and!25769)))

(declare-fun b_free!10919 () Bool)

(declare-fun b_next!10919 () Bool)

(assert (=> b!305112 (= b_free!10919 (not b_next!10919))))

(declare-fun tp!108495 () Bool)

(declare-fun b_and!25771 () Bool)

(assert (=> b!305112 (= tp!108495 b_and!25771)))

(declare-fun b!305125 () Bool)

(declare-fun b_free!10921 () Bool)

(declare-fun b_next!10921 () Bool)

(assert (=> b!305125 (= b_free!10921 (not b_next!10921))))

(declare-fun tp!108484 () Bool)

(declare-fun b_and!25773 () Bool)

(assert (=> b!305125 (= tp!108484 b_and!25773)))

(declare-fun b_free!10923 () Bool)

(declare-fun b_next!10923 () Bool)

(assert (=> b!305125 (= b_free!10923 (not b_next!10923))))

(declare-fun tp!108488 () Bool)

(declare-fun b_and!25775 () Bool)

(assert (=> b!305125 (= tp!108488 b_and!25775)))

(declare-fun bs!35276 () Bool)

(declare-fun b!305137 () Bool)

(declare-fun b!305120 () Bool)

(assert (= bs!35276 (and b!305137 b!305120)))

(declare-fun lambda!10388 () Int)

(declare-fun lambda!10387 () Int)

(assert (=> bs!35276 (not (= lambda!10388 lambda!10387))))

(declare-fun b!305152 () Bool)

(declare-fun e!189660 () Bool)

(assert (=> b!305152 (= e!189660 true)))

(declare-fun b!305151 () Bool)

(declare-fun e!189659 () Bool)

(assert (=> b!305151 (= e!189659 e!189660)))

(declare-fun b!305150 () Bool)

(declare-fun e!189658 () Bool)

(assert (=> b!305150 (= e!189658 e!189659)))

(assert (=> b!305137 e!189658))

(assert (= b!305151 b!305152))

(assert (= b!305150 b!305151))

(declare-datatypes ((List!4042 0))(
  ( (Nil!4032) (Cons!4032 (h!9429 (_ BitVec 16)) (t!43134 List!4042)) )
))
(declare-datatypes ((TokenValue!797 0))(
  ( (FloatLiteralValue!1594 (text!6024 List!4042)) (TokenValueExt!796 (__x!3081 Int)) (Broken!3985 (value!26377 List!4042)) (Object!806) (End!797) (Def!797) (Underscore!797) (Match!797) (Else!797) (Error!797) (Case!797) (If!797) (Extends!797) (Abstract!797) (Class!797) (Val!797) (DelimiterValue!1594 (del!857 List!4042)) (KeywordValue!803 (value!26378 List!4042)) (CommentValue!1594 (value!26379 List!4042)) (WhitespaceValue!1594 (value!26380 List!4042)) (IndentationValue!797 (value!26381 List!4042)) (String!5064) (Int32!797) (Broken!3986 (value!26382 List!4042)) (Boolean!798) (Unit!5633) (OperatorValue!800 (op!857 List!4042)) (IdentifierValue!1594 (value!26383 List!4042)) (IdentifierValue!1595 (value!26384 List!4042)) (WhitespaceValue!1595 (value!26385 List!4042)) (True!1594) (False!1594) (Broken!3987 (value!26386 List!4042)) (Broken!3988 (value!26387 List!4042)) (True!1595) (RightBrace!797) (RightBracket!797) (Colon!797) (Null!797) (Comma!797) (LeftBracket!797) (False!1595) (LeftBrace!797) (ImaginaryLiteralValue!797 (text!6025 List!4042)) (StringLiteralValue!2391 (value!26388 List!4042)) (EOFValue!797 (value!26389 List!4042)) (IdentValue!797 (value!26390 List!4042)) (DelimiterValue!1595 (value!26391 List!4042)) (DedentValue!797 (value!26392 List!4042)) (NewLineValue!797 (value!26393 List!4042)) (IntegerValue!2391 (value!26394 (_ BitVec 32)) (text!6026 List!4042)) (IntegerValue!2392 (value!26395 Int) (text!6027 List!4042)) (Times!797) (Or!797) (Equal!797) (Minus!797) (Broken!3989 (value!26396 List!4042)) (And!797) (Div!797) (LessEqual!797) (Mod!797) (Concat!1796) (Not!797) (Plus!797) (SpaceValue!797 (value!26397 List!4042)) (IntegerValue!2393 (value!26398 Int) (text!6028 List!4042)) (StringLiteralValue!2392 (text!6029 List!4042)) (FloatLiteralValue!1595 (text!6030 List!4042)) (BytesLiteralValue!797 (value!26399 List!4042)) (CommentValue!1595 (value!26400 List!4042)) (StringLiteralValue!2393 (value!26401 List!4042)) (ErrorTokenValue!797 (msg!858 List!4042)) )
))
(declare-datatypes ((C!2920 0))(
  ( (C!2921 (val!1346 Int)) )
))
(declare-datatypes ((List!4043 0))(
  ( (Nil!4033) (Cons!4033 (h!9430 C!2920) (t!43135 List!4043)) )
))
(declare-datatypes ((IArray!2745 0))(
  ( (IArray!2746 (innerList!1430 List!4043)) )
))
(declare-datatypes ((Conc!1372 0))(
  ( (Node!1372 (left!3350 Conc!1372) (right!3680 Conc!1372) (csize!2974 Int) (cheight!1583 Int)) (Leaf!2099 (xs!3975 IArray!2745) (csize!2975 Int)) (Empty!1372) )
))
(declare-datatypes ((BalanceConc!2752 0))(
  ( (BalanceConc!2753 (c!57956 Conc!1372)) )
))
(declare-datatypes ((String!5065 0))(
  ( (String!5066 (value!26402 String)) )
))
(declare-datatypes ((TokenValueInjection!1366 0))(
  ( (TokenValueInjection!1367 (toValue!1534 Int) (toChars!1393 Int)) )
))
(declare-datatypes ((Regex!999 0))(
  ( (ElementMatch!999 (c!57957 C!2920)) (Concat!1797 (regOne!2510 Regex!999) (regTwo!2510 Regex!999)) (EmptyExpr!999) (Star!999 (reg!1328 Regex!999)) (EmptyLang!999) (Union!999 (regOne!2511 Regex!999) (regTwo!2511 Regex!999)) )
))
(declare-datatypes ((Rule!1350 0))(
  ( (Rule!1351 (regex!775 Regex!999) (tag!993 String!5065) (isSeparator!775 Bool) (transformation!775 TokenValueInjection!1366)) )
))
(declare-datatypes ((List!4044 0))(
  ( (Nil!4034) (Cons!4034 (h!9431 Rule!1350) (t!43136 List!4044)) )
))
(declare-fun rules!1920 () List!4044)

(get-info :version)

(assert (= (and b!305137 ((_ is Cons!4034) rules!1920)) b!305150))

(declare-fun order!3261 () Int)

(declare-fun order!3263 () Int)

(declare-fun dynLambda!2193 (Int Int) Int)

(declare-fun dynLambda!2194 (Int Int) Int)

(assert (=> b!305152 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10388))))

(declare-fun order!3265 () Int)

(declare-fun dynLambda!2195 (Int Int) Int)

(assert (=> b!305152 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10388))))

(assert (=> b!305137 true))

(declare-fun b!305107 () Bool)

(declare-fun e!189651 () Bool)

(declare-fun e!189630 () Bool)

(assert (=> b!305107 (= e!189651 e!189630)))

(declare-fun res!138612 () Bool)

(assert (=> b!305107 (=> (not res!138612) (not e!189630))))

(declare-datatypes ((Token!1294 0))(
  ( (Token!1295 (value!26403 TokenValue!797) (rule!1388 Rule!1350) (size!3225 Int) (originalCharacters!818 List!4043)) )
))
(declare-datatypes ((tuple2!4646 0))(
  ( (tuple2!4647 (_1!2539 Token!1294) (_2!2539 List!4043)) )
))
(declare-datatypes ((Option!916 0))(
  ( (None!915) (Some!915 (v!14908 tuple2!4646)) )
))
(declare-fun lt!129911 () Option!916)

(declare-fun isDefined!755 (Option!916) Bool)

(assert (=> b!305107 (= res!138612 (isDefined!755 lt!129911))))

(declare-datatypes ((LexerInterface!661 0))(
  ( (LexerInterfaceExt!658 (__x!3082 Int)) (Lexer!659) )
))
(declare-fun thiss!17480 () LexerInterface!661)

(declare-fun lt!129918 () List!4043)

(declare-fun maxPrefix!377 (LexerInterface!661 List!4044 List!4043) Option!916)

(assert (=> b!305107 (= lt!129911 (maxPrefix!377 thiss!17480 rules!1920 lt!129918))))

(declare-fun e!189650 () Bool)

(declare-fun tp!108486 () Bool)

(declare-fun b!305108 () Bool)

(declare-fun e!189647 () Bool)

(declare-fun separatorToken!170 () Token!1294)

(declare-fun inv!4983 (String!5065) Bool)

(declare-fun inv!4986 (TokenValueInjection!1366) Bool)

(assert (=> b!305108 (= e!189647 (and tp!108486 (inv!4983 (tag!993 (rule!1388 separatorToken!170))) (inv!4986 (transformation!775 (rule!1388 separatorToken!170))) e!189650))))

(declare-fun b!305109 () Bool)

(declare-datatypes ((List!4045 0))(
  ( (Nil!4035) (Cons!4035 (h!9432 Token!1294) (t!43137 List!4045)) )
))
(declare-fun tokens!465 () List!4045)

(declare-fun get!1375 (Option!916) tuple2!4646)

(declare-fun head!956 (List!4045) Token!1294)

(assert (=> b!305109 (= e!189630 (= (_1!2539 (get!1375 lt!129911)) (head!956 tokens!465)))))

(declare-fun b!305110 () Bool)

(declare-fun e!189634 () Bool)

(declare-fun e!189632 () Bool)

(assert (=> b!305110 (= e!189634 e!189632)))

(declare-fun res!138594 () Bool)

(assert (=> b!305110 (=> res!138594 e!189632)))

(declare-fun e!189638 () Bool)

(assert (=> b!305110 (= res!138594 e!189638)))

(declare-fun res!138604 () Bool)

(assert (=> b!305110 (=> (not res!138604) (not e!189638))))

(declare-fun lt!129916 () Bool)

(assert (=> b!305110 (= res!138604 (not lt!129916))))

(declare-fun lt!129913 () List!4043)

(assert (=> b!305110 (= lt!129916 (= lt!129918 lt!129913))))

(declare-fun b!305111 () Bool)

(declare-fun res!138601 () Bool)

(declare-fun e!189636 () Bool)

(assert (=> b!305111 (=> res!138601 e!189636)))

(declare-fun lt!129902 () List!4043)

(declare-datatypes ((IArray!2747 0))(
  ( (IArray!2748 (innerList!1431 List!4045)) )
))
(declare-datatypes ((Conc!1373 0))(
  ( (Node!1373 (left!3351 Conc!1373) (right!3681 Conc!1373) (csize!2976 Int) (cheight!1584 Int)) (Leaf!2100 (xs!3976 IArray!2747) (csize!2977 Int)) (Empty!1373) )
))
(declare-datatypes ((BalanceConc!2754 0))(
  ( (BalanceConc!2755 (c!57958 Conc!1373)) )
))
(declare-fun isEmpty!2735 (BalanceConc!2754) Bool)

(declare-datatypes ((tuple2!4648 0))(
  ( (tuple2!4649 (_1!2540 BalanceConc!2754) (_2!2540 BalanceConc!2752)) )
))
(declare-fun lex!453 (LexerInterface!661 List!4044 BalanceConc!2752) tuple2!4648)

(declare-fun seqFromList!915 (List!4043) BalanceConc!2752)

(assert (=> b!305111 (= res!138601 (isEmpty!2735 (_1!2540 (lex!453 thiss!17480 rules!1920 (seqFromList!915 lt!129902)))))))

(declare-fun e!189633 () Bool)

(assert (=> b!305112 (= e!189633 (and tp!108494 tp!108495))))

(declare-fun b!305113 () Bool)

(declare-fun res!138600 () Bool)

(declare-fun e!189624 () Bool)

(assert (=> b!305113 (=> (not res!138600) (not e!189624))))

(declare-fun rulesInvariant!627 (LexerInterface!661 List!4044) Bool)

(assert (=> b!305113 (= res!138600 (rulesInvariant!627 thiss!17480 rules!1920))))

(declare-fun b!305114 () Bool)

(declare-fun e!189648 () Bool)

(declare-fun e!189645 () Bool)

(declare-fun tp!108487 () Bool)

(assert (=> b!305114 (= e!189648 (and e!189645 tp!108487))))

(declare-fun res!138603 () Bool)

(assert (=> start!32774 (=> (not res!138603) (not e!189624))))

(assert (=> start!32774 (= res!138603 ((_ is Lexer!659) thiss!17480))))

(assert (=> start!32774 e!189624))

(assert (=> start!32774 true))

(assert (=> start!32774 e!189648))

(declare-fun e!189628 () Bool)

(declare-fun inv!4987 (Token!1294) Bool)

(assert (=> start!32774 (and (inv!4987 separatorToken!170) e!189628)))

(declare-fun e!189649 () Bool)

(assert (=> start!32774 e!189649))

(declare-fun b!305115 () Bool)

(declare-fun lt!129903 () List!4043)

(declare-fun ++!1092 (List!4043 List!4043) List!4043)

(assert (=> b!305115 (= e!189638 (not (= lt!129918 (++!1092 lt!129902 lt!129903))))))

(declare-fun tp!108493 () Bool)

(declare-fun e!189626 () Bool)

(declare-fun b!305116 () Bool)

(assert (=> b!305116 (= e!189626 (and tp!108493 (inv!4983 (tag!993 (rule!1388 (h!9432 tokens!465)))) (inv!4986 (transformation!775 (rule!1388 (h!9432 tokens!465)))) e!189633))))

(declare-fun e!189631 () Bool)

(assert (=> b!305117 (= e!189631 (and tp!108491 tp!108490))))

(declare-fun tp!108483 () Bool)

(declare-fun b!305118 () Bool)

(assert (=> b!305118 (= e!189645 (and tp!108483 (inv!4983 (tag!993 (h!9431 rules!1920))) (inv!4986 (transformation!775 (h!9431 rules!1920))) e!189631))))

(declare-fun b!305119 () Bool)

(declare-fun res!138589 () Bool)

(declare-fun e!189646 () Bool)

(assert (=> b!305119 (=> (not res!138589) (not e!189646))))

(declare-fun lt!129917 () List!4043)

(declare-fun list!1699 (BalanceConc!2752) List!4043)

(assert (=> b!305119 (= res!138589 (= (list!1699 (seqFromList!915 lt!129918)) lt!129917))))

(declare-fun res!138606 () Bool)

(declare-fun e!189641 () Bool)

(assert (=> b!305120 (=> (not res!138606) (not e!189641))))

(declare-fun forall!1062 (List!4045 Int) Bool)

(assert (=> b!305120 (= res!138606 (forall!1062 tokens!465 lambda!10387))))

(declare-fun b!305121 () Bool)

(declare-fun tp!108485 () Bool)

(declare-fun inv!21 (TokenValue!797) Bool)

(assert (=> b!305121 (= e!189628 (and (inv!21 (value!26403 separatorToken!170)) e!189647 tp!108485))))

(declare-fun b!305122 () Bool)

(assert (=> b!305122 (= e!189646 (not e!189634))))

(declare-fun res!138602 () Bool)

(assert (=> b!305122 (=> res!138602 e!189634)))

(declare-fun printWithSeparatorTokenWhenNeededRec!334 (LexerInterface!661 List!4044 BalanceConc!2754 Token!1294 Int) BalanceConc!2752)

(declare-fun seqFromList!916 (List!4045) BalanceConc!2754)

(assert (=> b!305122 (= res!138602 (not (= lt!129903 (list!1699 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 (seqFromList!916 (t!43137 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129908 () List!4043)

(assert (=> b!305122 (= lt!129908 lt!129913)))

(declare-fun lt!129901 () List!4043)

(assert (=> b!305122 (= lt!129913 (++!1092 lt!129902 lt!129901))))

(declare-fun lt!129904 () List!4043)

(assert (=> b!305122 (= lt!129908 (++!1092 (++!1092 lt!129902 lt!129904) lt!129903))))

(declare-datatypes ((Unit!5634 0))(
  ( (Unit!5635) )
))
(declare-fun lt!129905 () Unit!5634)

(declare-fun lemmaConcatAssociativity!482 (List!4043 List!4043 List!4043) Unit!5634)

(assert (=> b!305122 (= lt!129905 (lemmaConcatAssociativity!482 lt!129902 lt!129904 lt!129903))))

(declare-fun charsOf!418 (Token!1294) BalanceConc!2752)

(assert (=> b!305122 (= lt!129902 (list!1699 (charsOf!418 (h!9432 tokens!465))))))

(assert (=> b!305122 (= lt!129901 (++!1092 lt!129904 lt!129903))))

(declare-fun printWithSeparatorTokenWhenNeededList!342 (LexerInterface!661 List!4044 List!4045 Token!1294) List!4043)

(assert (=> b!305122 (= lt!129903 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (t!43137 tokens!465) separatorToken!170))))

(assert (=> b!305122 (= lt!129904 (list!1699 (charsOf!418 separatorToken!170)))))

(declare-fun b!305123 () Bool)

(declare-fun e!189627 () Bool)

(declare-fun e!189635 () Bool)

(assert (=> b!305123 (= e!189627 e!189635)))

(declare-fun res!138607 () Bool)

(assert (=> b!305123 (=> res!138607 e!189635)))

(assert (=> b!305123 (= res!138607 (not lt!129916))))

(declare-fun e!189625 () Bool)

(assert (=> b!305123 e!189625))

(declare-fun res!138599 () Bool)

(assert (=> b!305123 (=> (not res!138599) (not e!189625))))

(declare-fun lt!129898 () tuple2!4646)

(assert (=> b!305123 (= res!138599 (= (_1!2539 lt!129898) (h!9432 tokens!465)))))

(declare-fun lt!129912 () Option!916)

(assert (=> b!305123 (= lt!129898 (get!1375 lt!129912))))

(assert (=> b!305123 (isDefined!755 lt!129912)))

(assert (=> b!305123 (= lt!129912 (maxPrefix!377 thiss!17480 rules!1920 lt!129902))))

(declare-fun b!305124 () Bool)

(declare-fun res!138598 () Bool)

(assert (=> b!305124 (=> (not res!138598) (not e!189624))))

(declare-fun isEmpty!2736 (List!4044) Bool)

(assert (=> b!305124 (= res!138598 (not (isEmpty!2736 rules!1920)))))

(assert (=> b!305125 (= e!189650 (and tp!108484 tp!108488))))

(declare-fun b!305126 () Bool)

(declare-fun e!189643 () Bool)

(assert (=> b!305126 (= e!189635 e!189643)))

(declare-fun res!138613 () Bool)

(assert (=> b!305126 (=> res!138613 e!189643)))

(declare-fun isPrefix!435 (List!4043 List!4043) Bool)

(assert (=> b!305126 (= res!138613 (not (isPrefix!435 lt!129902 lt!129918)))))

(declare-fun lt!129899 () Option!916)

(assert (=> b!305126 (= lt!129899 (maxPrefix!377 thiss!17480 rules!1920 lt!129918))))

(assert (=> b!305126 (isPrefix!435 lt!129902 lt!129913)))

(declare-fun lt!129907 () Unit!5634)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!326 (List!4043 List!4043) Unit!5634)

(assert (=> b!305126 (= lt!129907 (lemmaConcatTwoListThenFirstIsPrefix!326 lt!129902 lt!129901))))

(assert (=> b!305126 e!189651))

(declare-fun res!138610 () Bool)

(assert (=> b!305126 (=> res!138610 e!189651)))

(declare-fun isEmpty!2737 (List!4045) Bool)

(assert (=> b!305126 (= res!138610 (isEmpty!2737 tokens!465))))

(declare-fun lt!129897 () Unit!5634)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!182 (LexerInterface!661 List!4044 List!4045 Token!1294) Unit!5634)

(assert (=> b!305126 (= lt!129897 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!182 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!305127 () Bool)

(declare-fun res!138609 () Bool)

(assert (=> b!305127 (=> (not res!138609) (not e!189641))))

(declare-fun rulesProduceIndividualToken!410 (LexerInterface!661 List!4044 Token!1294) Bool)

(assert (=> b!305127 (= res!138609 (rulesProduceIndividualToken!410 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!108489 () Bool)

(declare-fun e!189642 () Bool)

(declare-fun b!305128 () Bool)

(assert (=> b!305128 (= e!189649 (and (inv!4987 (h!9432 tokens!465)) e!189642 tp!108489))))

(declare-fun b!305129 () Bool)

(declare-fun res!138597 () Bool)

(assert (=> b!305129 (=> res!138597 e!189643)))

(assert (=> b!305129 (= res!138597 (not (= lt!129913 lt!129918)))))

(declare-fun b!305130 () Bool)

(declare-fun res!138596 () Bool)

(assert (=> b!305130 (=> (not res!138596) (not e!189641))))

(declare-fun sepAndNonSepRulesDisjointChars!364 (List!4044 List!4044) Bool)

(assert (=> b!305130 (= res!138596 (sepAndNonSepRulesDisjointChars!364 rules!1920 rules!1920))))

(declare-fun b!305131 () Bool)

(declare-fun matchR!317 (Regex!999 List!4043) Bool)

(assert (=> b!305131 (= e!189625 (matchR!317 (regex!775 (rule!1388 (h!9432 tokens!465))) lt!129902))))

(declare-fun b!305132 () Bool)

(declare-fun res!138593 () Bool)

(assert (=> b!305132 (=> (not res!138593) (not e!189641))))

(assert (=> b!305132 (= res!138593 ((_ is Cons!4035) tokens!465))))

(declare-fun b!305133 () Bool)

(assert (=> b!305133 (= e!189624 e!189641)))

(declare-fun res!138611 () Bool)

(assert (=> b!305133 (=> (not res!138611) (not e!189641))))

(declare-fun lt!129914 () BalanceConc!2754)

(declare-fun rulesProduceEachTokenIndividually!453 (LexerInterface!661 List!4044 BalanceConc!2754) Bool)

(assert (=> b!305133 (= res!138611 (rulesProduceEachTokenIndividually!453 thiss!17480 rules!1920 lt!129914))))

(assert (=> b!305133 (= lt!129914 (seqFromList!916 tokens!465))))

(declare-fun b!305134 () Bool)

(assert (=> b!305134 (= e!189643 (= (++!1092 lt!129902 (_2!2539 (get!1375 lt!129899))) lt!129918))))

(declare-fun tp!108492 () Bool)

(declare-fun b!305135 () Bool)

(assert (=> b!305135 (= e!189642 (and (inv!21 (value!26403 (h!9432 tokens!465))) e!189626 tp!108492))))

(declare-fun b!305136 () Bool)

(declare-fun res!138605 () Bool)

(assert (=> b!305136 (=> (not res!138605) (not e!189625))))

(declare-fun isEmpty!2738 (List!4043) Bool)

(assert (=> b!305136 (= res!138605 (isEmpty!2738 (_2!2539 lt!129898)))))

(assert (=> b!305137 (= e!189636 e!189627)))

(declare-fun res!138595 () Bool)

(assert (=> b!305137 (=> res!138595 e!189627)))

(declare-datatypes ((tuple2!4650 0))(
  ( (tuple2!4651 (_1!2541 Token!1294) (_2!2541 BalanceConc!2752)) )
))
(declare-datatypes ((Option!917 0))(
  ( (None!916) (Some!916 (v!14909 tuple2!4650)) )
))
(declare-fun isDefined!756 (Option!917) Bool)

(declare-fun maxPrefixZipperSequence!340 (LexerInterface!661 List!4044 BalanceConc!2752) Option!917)

(assert (=> b!305137 (= res!138595 (not (isDefined!756 (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))

(declare-fun lt!129906 () Unit!5634)

(declare-fun forallContained!328 (List!4045 Int Token!1294) Unit!5634)

(assert (=> b!305137 (= lt!129906 (forallContained!328 tokens!465 lambda!10388 (h!9432 tokens!465)))))

(assert (=> b!305137 (= lt!129902 (originalCharacters!818 (h!9432 tokens!465)))))

(declare-fun b!305138 () Bool)

(declare-fun res!138608 () Bool)

(assert (=> b!305138 (=> res!138608 e!189636)))

(assert (=> b!305138 (= res!138608 (not (rulesProduceIndividualToken!410 thiss!17480 rules!1920 (h!9432 tokens!465))))))

(declare-fun b!305139 () Bool)

(assert (=> b!305139 (= e!189641 e!189646)))

(declare-fun res!138591 () Bool)

(assert (=> b!305139 (=> (not res!138591) (not e!189646))))

(assert (=> b!305139 (= res!138591 (= lt!129918 lt!129917))))

(assert (=> b!305139 (= lt!129917 (list!1699 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 lt!129914 separatorToken!170 0)))))

(assert (=> b!305139 (= lt!129918 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!305140 () Bool)

(assert (=> b!305140 (= e!189632 e!189636)))

(declare-fun res!138592 () Bool)

(assert (=> b!305140 (=> res!138592 e!189636)))

(declare-fun lt!129915 () List!4043)

(declare-fun lt!129909 () List!4043)

(assert (=> b!305140 (= res!138592 (or (not (= lt!129909 lt!129915)) (not (= lt!129915 lt!129902)) (not (= lt!129909 lt!129902))))))

(declare-fun printList!335 (LexerInterface!661 List!4045) List!4043)

(assert (=> b!305140 (= lt!129915 (printList!335 thiss!17480 (Cons!4035 (h!9432 tokens!465) Nil!4035)))))

(declare-fun lt!129900 () BalanceConc!2752)

(assert (=> b!305140 (= lt!129909 (list!1699 lt!129900))))

(declare-fun lt!129910 () BalanceConc!2754)

(declare-fun printTailRec!347 (LexerInterface!661 BalanceConc!2754 Int BalanceConc!2752) BalanceConc!2752)

(assert (=> b!305140 (= lt!129900 (printTailRec!347 thiss!17480 lt!129910 0 (BalanceConc!2753 Empty!1372)))))

(declare-fun print!386 (LexerInterface!661 BalanceConc!2754) BalanceConc!2752)

(assert (=> b!305140 (= lt!129900 (print!386 thiss!17480 lt!129910))))

(declare-fun singletonSeq!321 (Token!1294) BalanceConc!2754)

(assert (=> b!305140 (= lt!129910 (singletonSeq!321 (h!9432 tokens!465)))))

(declare-fun b!305141 () Bool)

(declare-fun res!138590 () Bool)

(assert (=> b!305141 (=> (not res!138590) (not e!189641))))

(assert (=> b!305141 (= res!138590 (isSeparator!775 (rule!1388 separatorToken!170)))))

(assert (= (and start!32774 res!138603) b!305124))

(assert (= (and b!305124 res!138598) b!305113))

(assert (= (and b!305113 res!138600) b!305133))

(assert (= (and b!305133 res!138611) b!305127))

(assert (= (and b!305127 res!138609) b!305141))

(assert (= (and b!305141 res!138590) b!305120))

(assert (= (and b!305120 res!138606) b!305130))

(assert (= (and b!305130 res!138596) b!305132))

(assert (= (and b!305132 res!138593) b!305139))

(assert (= (and b!305139 res!138591) b!305119))

(assert (= (and b!305119 res!138589) b!305122))

(assert (= (and b!305122 (not res!138602)) b!305110))

(assert (= (and b!305110 res!138604) b!305115))

(assert (= (and b!305110 (not res!138594)) b!305140))

(assert (= (and b!305140 (not res!138592)) b!305138))

(assert (= (and b!305138 (not res!138608)) b!305111))

(assert (= (and b!305111 (not res!138601)) b!305137))

(assert (= (and b!305137 (not res!138595)) b!305123))

(assert (= (and b!305123 res!138599) b!305136))

(assert (= (and b!305136 res!138605) b!305131))

(assert (= (and b!305123 (not res!138607)) b!305126))

(assert (= (and b!305126 (not res!138610)) b!305107))

(assert (= (and b!305107 res!138612) b!305109))

(assert (= (and b!305126 (not res!138613)) b!305129))

(assert (= (and b!305129 (not res!138597)) b!305134))

(assert (= b!305118 b!305117))

(assert (= b!305114 b!305118))

(assert (= (and start!32774 ((_ is Cons!4034) rules!1920)) b!305114))

(assert (= b!305108 b!305125))

(assert (= b!305121 b!305108))

(assert (= start!32774 b!305121))

(assert (= b!305116 b!305112))

(assert (= b!305135 b!305116))

(assert (= b!305128 b!305135))

(assert (= (and start!32774 ((_ is Cons!4035) tokens!465)) b!305128))

(declare-fun m!407013 () Bool)

(assert (=> b!305126 m!407013))

(declare-fun m!407015 () Bool)

(assert (=> b!305126 m!407015))

(declare-fun m!407017 () Bool)

(assert (=> b!305126 m!407017))

(declare-fun m!407019 () Bool)

(assert (=> b!305126 m!407019))

(declare-fun m!407021 () Bool)

(assert (=> b!305126 m!407021))

(declare-fun m!407023 () Bool)

(assert (=> b!305126 m!407023))

(declare-fun m!407025 () Bool)

(assert (=> start!32774 m!407025))

(declare-fun m!407027 () Bool)

(assert (=> b!305111 m!407027))

(assert (=> b!305111 m!407027))

(declare-fun m!407029 () Bool)

(assert (=> b!305111 m!407029))

(declare-fun m!407031 () Bool)

(assert (=> b!305111 m!407031))

(declare-fun m!407033 () Bool)

(assert (=> b!305140 m!407033))

(declare-fun m!407035 () Bool)

(assert (=> b!305140 m!407035))

(declare-fun m!407037 () Bool)

(assert (=> b!305140 m!407037))

(declare-fun m!407039 () Bool)

(assert (=> b!305140 m!407039))

(declare-fun m!407041 () Bool)

(assert (=> b!305140 m!407041))

(declare-fun m!407043 () Bool)

(assert (=> b!305130 m!407043))

(declare-fun m!407045 () Bool)

(assert (=> b!305115 m!407045))

(declare-fun m!407047 () Bool)

(assert (=> b!305122 m!407047))

(declare-fun m!407049 () Bool)

(assert (=> b!305122 m!407049))

(declare-fun m!407051 () Bool)

(assert (=> b!305122 m!407051))

(declare-fun m!407053 () Bool)

(assert (=> b!305122 m!407053))

(declare-fun m!407055 () Bool)

(assert (=> b!305122 m!407055))

(declare-fun m!407057 () Bool)

(assert (=> b!305122 m!407057))

(declare-fun m!407059 () Bool)

(assert (=> b!305122 m!407059))

(assert (=> b!305122 m!407057))

(declare-fun m!407061 () Bool)

(assert (=> b!305122 m!407061))

(declare-fun m!407063 () Bool)

(assert (=> b!305122 m!407063))

(assert (=> b!305122 m!407047))

(declare-fun m!407065 () Bool)

(assert (=> b!305122 m!407065))

(assert (=> b!305122 m!407053))

(declare-fun m!407067 () Bool)

(assert (=> b!305122 m!407067))

(assert (=> b!305122 m!407067))

(declare-fun m!407069 () Bool)

(assert (=> b!305122 m!407069))

(assert (=> b!305122 m!407065))

(declare-fun m!407071 () Bool)

(assert (=> b!305122 m!407071))

(declare-fun m!407073 () Bool)

(assert (=> b!305124 m!407073))

(declare-fun m!407075 () Bool)

(assert (=> b!305120 m!407075))

(declare-fun m!407077 () Bool)

(assert (=> b!305107 m!407077))

(assert (=> b!305107 m!407015))

(declare-fun m!407079 () Bool)

(assert (=> b!305139 m!407079))

(assert (=> b!305139 m!407079))

(declare-fun m!407081 () Bool)

(assert (=> b!305139 m!407081))

(declare-fun m!407083 () Bool)

(assert (=> b!305139 m!407083))

(declare-fun m!407085 () Bool)

(assert (=> b!305134 m!407085))

(declare-fun m!407087 () Bool)

(assert (=> b!305134 m!407087))

(declare-fun m!407089 () Bool)

(assert (=> b!305138 m!407089))

(declare-fun m!407091 () Bool)

(assert (=> b!305131 m!407091))

(declare-fun m!407093 () Bool)

(assert (=> b!305109 m!407093))

(declare-fun m!407095 () Bool)

(assert (=> b!305109 m!407095))

(declare-fun m!407097 () Bool)

(assert (=> b!305113 m!407097))

(declare-fun m!407099 () Bool)

(assert (=> b!305137 m!407099))

(assert (=> b!305137 m!407099))

(declare-fun m!407101 () Bool)

(assert (=> b!305137 m!407101))

(assert (=> b!305137 m!407101))

(declare-fun m!407103 () Bool)

(assert (=> b!305137 m!407103))

(declare-fun m!407105 () Bool)

(assert (=> b!305137 m!407105))

(declare-fun m!407107 () Bool)

(assert (=> b!305133 m!407107))

(declare-fun m!407109 () Bool)

(assert (=> b!305133 m!407109))

(declare-fun m!407111 () Bool)

(assert (=> b!305123 m!407111))

(declare-fun m!407113 () Bool)

(assert (=> b!305123 m!407113))

(declare-fun m!407115 () Bool)

(assert (=> b!305123 m!407115))

(declare-fun m!407117 () Bool)

(assert (=> b!305116 m!407117))

(declare-fun m!407119 () Bool)

(assert (=> b!305116 m!407119))

(declare-fun m!407121 () Bool)

(assert (=> b!305135 m!407121))

(declare-fun m!407123 () Bool)

(assert (=> b!305121 m!407123))

(declare-fun m!407125 () Bool)

(assert (=> b!305136 m!407125))

(declare-fun m!407127 () Bool)

(assert (=> b!305128 m!407127))

(declare-fun m!407129 () Bool)

(assert (=> b!305118 m!407129))

(declare-fun m!407131 () Bool)

(assert (=> b!305118 m!407131))

(declare-fun m!407133 () Bool)

(assert (=> b!305119 m!407133))

(assert (=> b!305119 m!407133))

(declare-fun m!407135 () Bool)

(assert (=> b!305119 m!407135))

(declare-fun m!407137 () Bool)

(assert (=> b!305108 m!407137))

(declare-fun m!407139 () Bool)

(assert (=> b!305108 m!407139))

(declare-fun m!407141 () Bool)

(assert (=> b!305127 m!407141))

(check-sat (not b!305128) (not b!305134) (not b_next!10919) (not b!305116) (not start!32774) (not b!305135) (not b_next!10913) (not b!305111) (not b!305108) (not b!305118) (not b_next!10915) (not b!305130) (not b!305126) (not b!305140) (not b!305119) (not b!305115) (not b!305121) (not b!305138) (not b!305114) (not b!305123) (not b!305107) (not b!305113) b_and!25771 b_and!25769 (not b!305150) b_and!25773 (not b_next!10923) (not b!305131) (not b!305133) (not b!305122) (not b!305109) (not b_next!10921) (not b!305139) b_and!25775 b_and!25765 (not b_next!10917) (not b!305127) (not b!305136) (not b!305124) (not b!305137) b_and!25767 (not b!305120))
(check-sat (not b_next!10919) (not b_next!10913) (not b_next!10921) (not b_next!10915) (not b_next!10917) b_and!25767 b_and!25771 b_and!25769 b_and!25773 (not b_next!10923) b_and!25775 b_and!25765)
(get-model)

(declare-fun b!305183 () Bool)

(declare-fun res!138641 () Bool)

(declare-fun e!189679 () Bool)

(assert (=> b!305183 (=> (not res!138641) (not e!189679))))

(declare-fun call!17629 () Bool)

(assert (=> b!305183 (= res!138641 (not call!17629))))

(declare-fun b!305184 () Bool)

(declare-fun e!189680 () Bool)

(declare-fun e!189676 () Bool)

(assert (=> b!305184 (= e!189680 e!189676)))

(declare-fun res!138645 () Bool)

(assert (=> b!305184 (=> res!138645 e!189676)))

(assert (=> b!305184 (= res!138645 call!17629)))

(declare-fun b!305185 () Bool)

(declare-fun e!189677 () Bool)

(declare-fun e!189678 () Bool)

(assert (=> b!305185 (= e!189677 e!189678)))

(declare-fun c!57966 () Bool)

(assert (=> b!305185 (= c!57966 ((_ is EmptyLang!999) (regex!775 (rule!1388 (h!9432 tokens!465)))))))

(declare-fun b!305186 () Bool)

(declare-fun head!957 (List!4043) C!2920)

(assert (=> b!305186 (= e!189679 (= (head!957 lt!129902) (c!57957 (regex!775 (rule!1388 (h!9432 tokens!465))))))))

(declare-fun b!305187 () Bool)

(declare-fun e!189675 () Bool)

(assert (=> b!305187 (= e!189675 e!189680)))

(declare-fun res!138642 () Bool)

(assert (=> b!305187 (=> (not res!138642) (not e!189680))))

(declare-fun lt!129921 () Bool)

(assert (=> b!305187 (= res!138642 (not lt!129921))))

(declare-fun bm!17624 () Bool)

(assert (=> bm!17624 (= call!17629 (isEmpty!2738 lt!129902))))

(declare-fun b!305189 () Bool)

(assert (=> b!305189 (= e!189678 (not lt!129921))))

(declare-fun b!305190 () Bool)

(declare-fun res!138643 () Bool)

(assert (=> b!305190 (=> res!138643 e!189676)))

(declare-fun tail!531 (List!4043) List!4043)

(assert (=> b!305190 (= res!138643 (not (isEmpty!2738 (tail!531 lt!129902))))))

(declare-fun d!93343 () Bool)

(assert (=> d!93343 e!189677))

(declare-fun c!57965 () Bool)

(assert (=> d!93343 (= c!57965 ((_ is EmptyExpr!999) (regex!775 (rule!1388 (h!9432 tokens!465)))))))

(declare-fun e!189681 () Bool)

(assert (=> d!93343 (= lt!129921 e!189681)))

(declare-fun c!57967 () Bool)

(assert (=> d!93343 (= c!57967 (isEmpty!2738 lt!129902))))

(declare-fun validRegex!266 (Regex!999) Bool)

(assert (=> d!93343 (validRegex!266 (regex!775 (rule!1388 (h!9432 tokens!465))))))

(assert (=> d!93343 (= (matchR!317 (regex!775 (rule!1388 (h!9432 tokens!465))) lt!129902) lt!129921)))

(declare-fun b!305188 () Bool)

(declare-fun derivativeStep!157 (Regex!999 C!2920) Regex!999)

(assert (=> b!305188 (= e!189681 (matchR!317 (derivativeStep!157 (regex!775 (rule!1388 (h!9432 tokens!465))) (head!957 lt!129902)) (tail!531 lt!129902)))))

(declare-fun b!305191 () Bool)

(declare-fun res!138646 () Bool)

(assert (=> b!305191 (=> (not res!138646) (not e!189679))))

(assert (=> b!305191 (= res!138646 (isEmpty!2738 (tail!531 lt!129902)))))

(declare-fun b!305192 () Bool)

(assert (=> b!305192 (= e!189676 (not (= (head!957 lt!129902) (c!57957 (regex!775 (rule!1388 (h!9432 tokens!465)))))))))

(declare-fun b!305193 () Bool)

(declare-fun res!138644 () Bool)

(assert (=> b!305193 (=> res!138644 e!189675)))

(assert (=> b!305193 (= res!138644 e!189679)))

(declare-fun res!138640 () Bool)

(assert (=> b!305193 (=> (not res!138640) (not e!189679))))

(assert (=> b!305193 (= res!138640 lt!129921)))

(declare-fun b!305194 () Bool)

(declare-fun res!138639 () Bool)

(assert (=> b!305194 (=> res!138639 e!189675)))

(assert (=> b!305194 (= res!138639 (not ((_ is ElementMatch!999) (regex!775 (rule!1388 (h!9432 tokens!465))))))))

(assert (=> b!305194 (= e!189678 e!189675)))

(declare-fun b!305195 () Bool)

(assert (=> b!305195 (= e!189677 (= lt!129921 call!17629))))

(declare-fun b!305196 () Bool)

(declare-fun nullable!191 (Regex!999) Bool)

(assert (=> b!305196 (= e!189681 (nullable!191 (regex!775 (rule!1388 (h!9432 tokens!465)))))))

(assert (= (and d!93343 c!57967) b!305196))

(assert (= (and d!93343 (not c!57967)) b!305188))

(assert (= (and d!93343 c!57965) b!305195))

(assert (= (and d!93343 (not c!57965)) b!305185))

(assert (= (and b!305185 c!57966) b!305189))

(assert (= (and b!305185 (not c!57966)) b!305194))

(assert (= (and b!305194 (not res!138639)) b!305193))

(assert (= (and b!305193 res!138640) b!305183))

(assert (= (and b!305183 res!138641) b!305191))

(assert (= (and b!305191 res!138646) b!305186))

(assert (= (and b!305193 (not res!138644)) b!305187))

(assert (= (and b!305187 res!138642) b!305184))

(assert (= (and b!305184 (not res!138645)) b!305190))

(assert (= (and b!305190 (not res!138643)) b!305192))

(assert (= (or b!305195 b!305183 b!305184) bm!17624))

(declare-fun m!407143 () Bool)

(assert (=> bm!17624 m!407143))

(declare-fun m!407145 () Bool)

(assert (=> b!305186 m!407145))

(assert (=> b!305192 m!407145))

(assert (=> d!93343 m!407143))

(declare-fun m!407147 () Bool)

(assert (=> d!93343 m!407147))

(declare-fun m!407149 () Bool)

(assert (=> b!305191 m!407149))

(assert (=> b!305191 m!407149))

(declare-fun m!407151 () Bool)

(assert (=> b!305191 m!407151))

(declare-fun m!407153 () Bool)

(assert (=> b!305196 m!407153))

(assert (=> b!305190 m!407149))

(assert (=> b!305190 m!407149))

(assert (=> b!305190 m!407151))

(assert (=> b!305188 m!407145))

(assert (=> b!305188 m!407145))

(declare-fun m!407155 () Bool)

(assert (=> b!305188 m!407155))

(assert (=> b!305188 m!407149))

(assert (=> b!305188 m!407155))

(assert (=> b!305188 m!407149))

(declare-fun m!407157 () Bool)

(assert (=> b!305188 m!407157))

(assert (=> b!305131 d!93343))

(declare-fun d!93345 () Bool)

(declare-fun res!138652 () Bool)

(declare-fun e!189686 () Bool)

(assert (=> d!93345 (=> res!138652 e!189686)))

(assert (=> d!93345 (= res!138652 (not ((_ is Cons!4034) rules!1920)))))

(assert (=> d!93345 (= (sepAndNonSepRulesDisjointChars!364 rules!1920 rules!1920) e!189686)))

(declare-fun b!305201 () Bool)

(declare-fun e!189687 () Bool)

(assert (=> b!305201 (= e!189686 e!189687)))

(declare-fun res!138653 () Bool)

(assert (=> b!305201 (=> (not res!138653) (not e!189687))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!146 (Rule!1350 List!4044) Bool)

(assert (=> b!305201 (= res!138653 (ruleDisjointCharsFromAllFromOtherType!146 (h!9431 rules!1920) rules!1920))))

(declare-fun b!305202 () Bool)

(assert (=> b!305202 (= e!189687 (sepAndNonSepRulesDisjointChars!364 rules!1920 (t!43136 rules!1920)))))

(assert (= (and d!93345 (not res!138652)) b!305201))

(assert (= (and b!305201 res!138653) b!305202))

(declare-fun m!407159 () Bool)

(assert (=> b!305201 m!407159))

(declare-fun m!407161 () Bool)

(assert (=> b!305202 m!407161))

(assert (=> b!305130 d!93345))

(declare-fun d!93347 () Bool)

(assert (=> d!93347 (= (get!1375 lt!129911) (v!14908 lt!129911))))

(assert (=> b!305109 d!93347))

(declare-fun d!93349 () Bool)

(assert (=> d!93349 (= (head!956 tokens!465) (h!9432 tokens!465))))

(assert (=> b!305109 d!93349))

(declare-fun lt!129924 () Bool)

(declare-fun d!93351 () Bool)

(declare-fun list!1700 (BalanceConc!2754) List!4045)

(assert (=> d!93351 (= lt!129924 (isEmpty!2737 (list!1700 (_1!2540 (lex!453 thiss!17480 rules!1920 (seqFromList!915 lt!129902))))))))

(declare-fun isEmpty!2739 (Conc!1373) Bool)

(assert (=> d!93351 (= lt!129924 (isEmpty!2739 (c!57958 (_1!2540 (lex!453 thiss!17480 rules!1920 (seqFromList!915 lt!129902))))))))

(assert (=> d!93351 (= (isEmpty!2735 (_1!2540 (lex!453 thiss!17480 rules!1920 (seqFromList!915 lt!129902)))) lt!129924)))

(declare-fun bs!35277 () Bool)

(assert (= bs!35277 d!93351))

(declare-fun m!407163 () Bool)

(assert (=> bs!35277 m!407163))

(assert (=> bs!35277 m!407163))

(declare-fun m!407165 () Bool)

(assert (=> bs!35277 m!407165))

(declare-fun m!407167 () Bool)

(assert (=> bs!35277 m!407167))

(assert (=> b!305111 d!93351))

(declare-fun b!305216 () Bool)

(declare-fun e!189699 () Bool)

(declare-fun lt!129927 () tuple2!4648)

(assert (=> b!305216 (= e!189699 (= (_2!2540 lt!129927) (seqFromList!915 lt!129902)))))

(declare-fun d!93353 () Bool)

(declare-fun e!189697 () Bool)

(assert (=> d!93353 e!189697))

(declare-fun res!138664 () Bool)

(assert (=> d!93353 (=> (not res!138664) (not e!189697))))

(assert (=> d!93353 (= res!138664 e!189699)))

(declare-fun c!57970 () Bool)

(declare-fun size!3226 (BalanceConc!2754) Int)

(assert (=> d!93353 (= c!57970 (> (size!3226 (_1!2540 lt!129927)) 0))))

(declare-fun lexTailRecV2!203 (LexerInterface!661 List!4044 BalanceConc!2752 BalanceConc!2752 BalanceConc!2752 BalanceConc!2754) tuple2!4648)

(assert (=> d!93353 (= lt!129927 (lexTailRecV2!203 thiss!17480 rules!1920 (seqFromList!915 lt!129902) (BalanceConc!2753 Empty!1372) (seqFromList!915 lt!129902) (BalanceConc!2755 Empty!1373)))))

(assert (=> d!93353 (= (lex!453 thiss!17480 rules!1920 (seqFromList!915 lt!129902)) lt!129927)))

(declare-fun b!305217 () Bool)

(declare-fun e!189698 () Bool)

(assert (=> b!305217 (= e!189699 e!189698)))

(declare-fun res!138663 () Bool)

(declare-fun size!3228 (BalanceConc!2752) Int)

(assert (=> b!305217 (= res!138663 (< (size!3228 (_2!2540 lt!129927)) (size!3228 (seqFromList!915 lt!129902))))))

(assert (=> b!305217 (=> (not res!138663) (not e!189698))))

(declare-fun b!305218 () Bool)

(declare-fun res!138665 () Bool)

(assert (=> b!305218 (=> (not res!138665) (not e!189697))))

(declare-datatypes ((tuple2!4652 0))(
  ( (tuple2!4653 (_1!2542 List!4045) (_2!2542 List!4043)) )
))
(declare-fun lexList!236 (LexerInterface!661 List!4044 List!4043) tuple2!4652)

(assert (=> b!305218 (= res!138665 (= (list!1700 (_1!2540 lt!129927)) (_1!2542 (lexList!236 thiss!17480 rules!1920 (list!1699 (seqFromList!915 lt!129902))))))))

(declare-fun b!305219 () Bool)

(assert (=> b!305219 (= e!189698 (not (isEmpty!2735 (_1!2540 lt!129927))))))

(declare-fun b!305220 () Bool)

(assert (=> b!305220 (= e!189697 (= (list!1699 (_2!2540 lt!129927)) (_2!2542 (lexList!236 thiss!17480 rules!1920 (list!1699 (seqFromList!915 lt!129902))))))))

(assert (= (and d!93353 c!57970) b!305217))

(assert (= (and d!93353 (not c!57970)) b!305216))

(assert (= (and b!305217 res!138663) b!305219))

(assert (= (and d!93353 res!138664) b!305218))

(assert (= (and b!305218 res!138665) b!305220))

(declare-fun m!407173 () Bool)

(assert (=> b!305217 m!407173))

(assert (=> b!305217 m!407027))

(declare-fun m!407175 () Bool)

(assert (=> b!305217 m!407175))

(declare-fun m!407177 () Bool)

(assert (=> b!305218 m!407177))

(assert (=> b!305218 m!407027))

(declare-fun m!407179 () Bool)

(assert (=> b!305218 m!407179))

(assert (=> b!305218 m!407179))

(declare-fun m!407181 () Bool)

(assert (=> b!305218 m!407181))

(declare-fun m!407183 () Bool)

(assert (=> b!305220 m!407183))

(assert (=> b!305220 m!407027))

(assert (=> b!305220 m!407179))

(assert (=> b!305220 m!407179))

(assert (=> b!305220 m!407181))

(declare-fun m!407185 () Bool)

(assert (=> b!305219 m!407185))

(declare-fun m!407187 () Bool)

(assert (=> d!93353 m!407187))

(assert (=> d!93353 m!407027))

(assert (=> d!93353 m!407027))

(declare-fun m!407189 () Bool)

(assert (=> d!93353 m!407189))

(assert (=> b!305111 d!93353))

(declare-fun d!93361 () Bool)

(declare-fun fromListB!376 (List!4043) BalanceConc!2752)

(assert (=> d!93361 (= (seqFromList!915 lt!129902) (fromListB!376 lt!129902))))

(declare-fun bs!35278 () Bool)

(assert (= bs!35278 d!93361))

(declare-fun m!407191 () Bool)

(assert (=> bs!35278 m!407191))

(assert (=> b!305111 d!93361))

(declare-fun bs!35280 () Bool)

(declare-fun d!93363 () Bool)

(assert (= bs!35280 (and d!93363 b!305120)))

(declare-fun lambda!10393 () Int)

(assert (=> bs!35280 (not (= lambda!10393 lambda!10387))))

(declare-fun bs!35281 () Bool)

(assert (= bs!35281 (and d!93363 b!305137)))

(assert (=> bs!35281 (= lambda!10393 lambda!10388)))

(declare-fun b!305235 () Bool)

(declare-fun e!189711 () Bool)

(assert (=> b!305235 (= e!189711 true)))

(declare-fun b!305234 () Bool)

(declare-fun e!189710 () Bool)

(assert (=> b!305234 (= e!189710 e!189711)))

(declare-fun b!305233 () Bool)

(declare-fun e!189709 () Bool)

(assert (=> b!305233 (= e!189709 e!189710)))

(assert (=> d!93363 e!189709))

(assert (= b!305234 b!305235))

(assert (= b!305233 b!305234))

(assert (= (and d!93363 ((_ is Cons!4034) rules!1920)) b!305233))

(assert (=> b!305235 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10393))))

(assert (=> b!305235 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10393))))

(assert (=> d!93363 true))

(declare-fun e!189708 () Bool)

(assert (=> d!93363 e!189708))

(declare-fun res!138677 () Bool)

(assert (=> d!93363 (=> (not res!138677) (not e!189708))))

(declare-fun lt!129936 () Bool)

(assert (=> d!93363 (= res!138677 (= lt!129936 (forall!1062 (list!1700 lt!129914) lambda!10393)))))

(declare-fun forall!1063 (BalanceConc!2754 Int) Bool)

(assert (=> d!93363 (= lt!129936 (forall!1063 lt!129914 lambda!10393))))

(assert (=> d!93363 (not (isEmpty!2736 rules!1920))))

(assert (=> d!93363 (= (rulesProduceEachTokenIndividually!453 thiss!17480 rules!1920 lt!129914) lt!129936)))

(declare-fun b!305232 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!262 (LexerInterface!661 List!4044 List!4045) Bool)

(assert (=> b!305232 (= e!189708 (= lt!129936 (rulesProduceEachTokenIndividuallyList!262 thiss!17480 rules!1920 (list!1700 lt!129914))))))

(assert (= (and d!93363 res!138677) b!305232))

(declare-fun m!407211 () Bool)

(assert (=> d!93363 m!407211))

(assert (=> d!93363 m!407211))

(declare-fun m!407213 () Bool)

(assert (=> d!93363 m!407213))

(declare-fun m!407215 () Bool)

(assert (=> d!93363 m!407215))

(assert (=> d!93363 m!407073))

(assert (=> b!305232 m!407211))

(assert (=> b!305232 m!407211))

(declare-fun m!407217 () Bool)

(assert (=> b!305232 m!407217))

(assert (=> b!305133 d!93363))

(declare-fun d!93369 () Bool)

(declare-fun fromListB!377 (List!4045) BalanceConc!2754)

(assert (=> d!93369 (= (seqFromList!916 tokens!465) (fromListB!377 tokens!465))))

(declare-fun bs!35282 () Bool)

(assert (= bs!35282 d!93369))

(declare-fun m!407219 () Bool)

(assert (=> bs!35282 m!407219))

(assert (=> b!305133 d!93369))

(declare-fun b!305246 () Bool)

(declare-fun e!189719 () Bool)

(declare-fun inv!17 (TokenValue!797) Bool)

(assert (=> b!305246 (= e!189719 (inv!17 (value!26403 (h!9432 tokens!465))))))

(declare-fun b!305247 () Bool)

(declare-fun res!138680 () Bool)

(declare-fun e!189720 () Bool)

(assert (=> b!305247 (=> res!138680 e!189720)))

(assert (=> b!305247 (= res!138680 (not ((_ is IntegerValue!2393) (value!26403 (h!9432 tokens!465)))))))

(assert (=> b!305247 (= e!189719 e!189720)))

(declare-fun b!305248 () Bool)

(declare-fun inv!15 (TokenValue!797) Bool)

(assert (=> b!305248 (= e!189720 (inv!15 (value!26403 (h!9432 tokens!465))))))

(declare-fun b!305249 () Bool)

(declare-fun e!189718 () Bool)

(assert (=> b!305249 (= e!189718 e!189719)))

(declare-fun c!57975 () Bool)

(assert (=> b!305249 (= c!57975 ((_ is IntegerValue!2392) (value!26403 (h!9432 tokens!465))))))

(declare-fun d!93371 () Bool)

(declare-fun c!57976 () Bool)

(assert (=> d!93371 (= c!57976 ((_ is IntegerValue!2391) (value!26403 (h!9432 tokens!465))))))

(assert (=> d!93371 (= (inv!21 (value!26403 (h!9432 tokens!465))) e!189718)))

(declare-fun b!305250 () Bool)

(declare-fun inv!16 (TokenValue!797) Bool)

(assert (=> b!305250 (= e!189718 (inv!16 (value!26403 (h!9432 tokens!465))))))

(assert (= (and d!93371 c!57976) b!305250))

(assert (= (and d!93371 (not c!57976)) b!305249))

(assert (= (and b!305249 c!57975) b!305246))

(assert (= (and b!305249 (not c!57975)) b!305247))

(assert (= (and b!305247 (not res!138680)) b!305248))

(declare-fun m!407221 () Bool)

(assert (=> b!305246 m!407221))

(declare-fun m!407223 () Bool)

(assert (=> b!305248 m!407223))

(declare-fun m!407225 () Bool)

(assert (=> b!305250 m!407225))

(assert (=> b!305135 d!93371))

(declare-fun b!305262 () Bool)

(declare-fun lt!129939 () List!4043)

(declare-fun e!189725 () Bool)

(assert (=> b!305262 (= e!189725 (or (not (= (_2!2539 (get!1375 lt!129899)) Nil!4033)) (= lt!129939 lt!129902)))))

(declare-fun d!93373 () Bool)

(assert (=> d!93373 e!189725))

(declare-fun res!138685 () Bool)

(assert (=> d!93373 (=> (not res!138685) (not e!189725))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!602 (List!4043) (InoxSet C!2920))

(assert (=> d!93373 (= res!138685 (= (content!602 lt!129939) ((_ map or) (content!602 lt!129902) (content!602 (_2!2539 (get!1375 lt!129899))))))))

(declare-fun e!189726 () List!4043)

(assert (=> d!93373 (= lt!129939 e!189726)))

(declare-fun c!57979 () Bool)

(assert (=> d!93373 (= c!57979 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93373 (= (++!1092 lt!129902 (_2!2539 (get!1375 lt!129899))) lt!129939)))

(declare-fun b!305261 () Bool)

(declare-fun res!138686 () Bool)

(assert (=> b!305261 (=> (not res!138686) (not e!189725))))

(declare-fun size!3229 (List!4043) Int)

(assert (=> b!305261 (= res!138686 (= (size!3229 lt!129939) (+ (size!3229 lt!129902) (size!3229 (_2!2539 (get!1375 lt!129899))))))))

(declare-fun b!305259 () Bool)

(assert (=> b!305259 (= e!189726 (_2!2539 (get!1375 lt!129899)))))

(declare-fun b!305260 () Bool)

(assert (=> b!305260 (= e!189726 (Cons!4033 (h!9430 lt!129902) (++!1092 (t!43135 lt!129902) (_2!2539 (get!1375 lt!129899)))))))

(assert (= (and d!93373 c!57979) b!305259))

(assert (= (and d!93373 (not c!57979)) b!305260))

(assert (= (and d!93373 res!138685) b!305261))

(assert (= (and b!305261 res!138686) b!305262))

(declare-fun m!407227 () Bool)

(assert (=> d!93373 m!407227))

(declare-fun m!407229 () Bool)

(assert (=> d!93373 m!407229))

(declare-fun m!407231 () Bool)

(assert (=> d!93373 m!407231))

(declare-fun m!407233 () Bool)

(assert (=> b!305261 m!407233))

(declare-fun m!407235 () Bool)

(assert (=> b!305261 m!407235))

(declare-fun m!407237 () Bool)

(assert (=> b!305261 m!407237))

(declare-fun m!407239 () Bool)

(assert (=> b!305260 m!407239))

(assert (=> b!305134 d!93373))

(declare-fun d!93375 () Bool)

(assert (=> d!93375 (= (get!1375 lt!129899) (v!14908 lt!129899))))

(assert (=> b!305134 d!93375))

(declare-fun d!93377 () Bool)

(declare-fun res!138689 () Bool)

(declare-fun e!189729 () Bool)

(assert (=> d!93377 (=> (not res!138689) (not e!189729))))

(declare-fun rulesValid!253 (LexerInterface!661 List!4044) Bool)

(assert (=> d!93377 (= res!138689 (rulesValid!253 thiss!17480 rules!1920))))

(assert (=> d!93377 (= (rulesInvariant!627 thiss!17480 rules!1920) e!189729)))

(declare-fun b!305265 () Bool)

(declare-datatypes ((List!4046 0))(
  ( (Nil!4036) (Cons!4036 (h!9433 String!5065) (t!43202 List!4046)) )
))
(declare-fun noDuplicateTag!253 (LexerInterface!661 List!4044 List!4046) Bool)

(assert (=> b!305265 (= e!189729 (noDuplicateTag!253 thiss!17480 rules!1920 Nil!4036))))

(assert (= (and d!93377 res!138689) b!305265))

(declare-fun m!407241 () Bool)

(assert (=> d!93377 m!407241))

(declare-fun m!407243 () Bool)

(assert (=> b!305265 m!407243))

(assert (=> b!305113 d!93377))

(declare-fun d!93379 () Bool)

(declare-fun lt!129986 () Bool)

(declare-fun e!189756 () Bool)

(assert (=> d!93379 (= lt!129986 e!189756)))

(declare-fun res!138707 () Bool)

(assert (=> d!93379 (=> (not res!138707) (not e!189756))))

(assert (=> d!93379 (= res!138707 (= (list!1700 (_1!2540 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 separatorToken!170))))) (list!1700 (singletonSeq!321 separatorToken!170))))))

(declare-fun e!189755 () Bool)

(assert (=> d!93379 (= lt!129986 e!189755)))

(declare-fun res!138705 () Bool)

(assert (=> d!93379 (=> (not res!138705) (not e!189755))))

(declare-fun lt!129987 () tuple2!4648)

(assert (=> d!93379 (= res!138705 (= (size!3226 (_1!2540 lt!129987)) 1))))

(assert (=> d!93379 (= lt!129987 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 separatorToken!170))))))

(assert (=> d!93379 (not (isEmpty!2736 rules!1920))))

(assert (=> d!93379 (= (rulesProduceIndividualToken!410 thiss!17480 rules!1920 separatorToken!170) lt!129986)))

(declare-fun b!305302 () Bool)

(declare-fun res!138706 () Bool)

(assert (=> b!305302 (=> (not res!138706) (not e!189755))))

(declare-fun apply!879 (BalanceConc!2754 Int) Token!1294)

(assert (=> b!305302 (= res!138706 (= (apply!879 (_1!2540 lt!129987) 0) separatorToken!170))))

(declare-fun b!305303 () Bool)

(declare-fun isEmpty!2741 (BalanceConc!2752) Bool)

(assert (=> b!305303 (= e!189755 (isEmpty!2741 (_2!2540 lt!129987)))))

(declare-fun b!305304 () Bool)

(assert (=> b!305304 (= e!189756 (isEmpty!2741 (_2!2540 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 separatorToken!170))))))))

(assert (= (and d!93379 res!138705) b!305302))

(assert (= (and b!305302 res!138706) b!305303))

(assert (= (and d!93379 res!138707) b!305304))

(declare-fun m!407305 () Bool)

(assert (=> d!93379 m!407305))

(declare-fun m!407307 () Bool)

(assert (=> d!93379 m!407307))

(assert (=> d!93379 m!407073))

(declare-fun m!407309 () Bool)

(assert (=> d!93379 m!407309))

(assert (=> d!93379 m!407309))

(declare-fun m!407311 () Bool)

(assert (=> d!93379 m!407311))

(assert (=> d!93379 m!407309))

(declare-fun m!407313 () Bool)

(assert (=> d!93379 m!407313))

(assert (=> d!93379 m!407311))

(declare-fun m!407315 () Bool)

(assert (=> d!93379 m!407315))

(declare-fun m!407317 () Bool)

(assert (=> b!305302 m!407317))

(declare-fun m!407319 () Bool)

(assert (=> b!305303 m!407319))

(assert (=> b!305304 m!407309))

(assert (=> b!305304 m!407309))

(assert (=> b!305304 m!407311))

(assert (=> b!305304 m!407311))

(assert (=> b!305304 m!407315))

(declare-fun m!407321 () Bool)

(assert (=> b!305304 m!407321))

(assert (=> b!305127 d!93379))

(declare-fun d!93383 () Bool)

(assert (=> d!93383 (isPrefix!435 lt!129902 (++!1092 lt!129902 lt!129901))))

(declare-fun lt!129990 () Unit!5634)

(declare-fun choose!2672 (List!4043 List!4043) Unit!5634)

(assert (=> d!93383 (= lt!129990 (choose!2672 lt!129902 lt!129901))))

(assert (=> d!93383 (= (lemmaConcatTwoListThenFirstIsPrefix!326 lt!129902 lt!129901) lt!129990)))

(declare-fun bs!35288 () Bool)

(assert (= bs!35288 d!93383))

(assert (=> bs!35288 m!407061))

(assert (=> bs!35288 m!407061))

(declare-fun m!407323 () Bool)

(assert (=> bs!35288 m!407323))

(declare-fun m!407325 () Bool)

(assert (=> bs!35288 m!407325))

(assert (=> b!305126 d!93383))

(declare-fun d!93385 () Bool)

(assert (=> d!93385 (= (isEmpty!2737 tokens!465) ((_ is Nil!4035) tokens!465))))

(assert (=> b!305126 d!93385))

(declare-fun d!93387 () Bool)

(declare-fun e!189798 () Bool)

(assert (=> d!93387 e!189798))

(declare-fun res!138734 () Bool)

(assert (=> d!93387 (=> res!138734 e!189798)))

(assert (=> d!93387 (= res!138734 (isEmpty!2737 tokens!465))))

(declare-fun lt!130015 () Unit!5634)

(declare-fun choose!2673 (LexerInterface!661 List!4044 List!4045 Token!1294) Unit!5634)

(assert (=> d!93387 (= lt!130015 (choose!2673 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!93387 (not (isEmpty!2736 rules!1920))))

(assert (=> d!93387 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!182 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!130015)))

(declare-fun b!305365 () Bool)

(declare-fun e!189797 () Bool)

(assert (=> b!305365 (= e!189798 e!189797)))

(declare-fun res!138733 () Bool)

(assert (=> b!305365 (=> (not res!138733) (not e!189797))))

(assert (=> b!305365 (= res!138733 (isDefined!755 (maxPrefix!377 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!305366 () Bool)

(assert (=> b!305366 (= e!189797 (= (_1!2539 (get!1375 (maxPrefix!377 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!956 tokens!465)))))

(assert (= (and d!93387 (not res!138734)) b!305365))

(assert (= (and b!305365 res!138733) b!305366))

(assert (=> d!93387 m!407013))

(declare-fun m!407381 () Bool)

(assert (=> d!93387 m!407381))

(assert (=> d!93387 m!407073))

(assert (=> b!305365 m!407083))

(assert (=> b!305365 m!407083))

(declare-fun m!407383 () Bool)

(assert (=> b!305365 m!407383))

(assert (=> b!305365 m!407383))

(declare-fun m!407385 () Bool)

(assert (=> b!305365 m!407385))

(assert (=> b!305366 m!407083))

(assert (=> b!305366 m!407083))

(assert (=> b!305366 m!407383))

(assert (=> b!305366 m!407383))

(declare-fun m!407387 () Bool)

(assert (=> b!305366 m!407387))

(assert (=> b!305366 m!407095))

(assert (=> b!305126 d!93387))

(declare-fun b!305378 () Bool)

(declare-fun e!189805 () Bool)

(assert (=> b!305378 (= e!189805 (>= (size!3229 lt!129913) (size!3229 lt!129902)))))

(declare-fun d!93405 () Bool)

(assert (=> d!93405 e!189805))

(declare-fun res!138746 () Bool)

(assert (=> d!93405 (=> res!138746 e!189805)))

(declare-fun lt!130018 () Bool)

(assert (=> d!93405 (= res!138746 (not lt!130018))))

(declare-fun e!189806 () Bool)

(assert (=> d!93405 (= lt!130018 e!189806)))

(declare-fun res!138743 () Bool)

(assert (=> d!93405 (=> res!138743 e!189806)))

(assert (=> d!93405 (= res!138743 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93405 (= (isPrefix!435 lt!129902 lt!129913) lt!130018)))

(declare-fun b!305375 () Bool)

(declare-fun e!189807 () Bool)

(assert (=> b!305375 (= e!189806 e!189807)))

(declare-fun res!138745 () Bool)

(assert (=> b!305375 (=> (not res!138745) (not e!189807))))

(assert (=> b!305375 (= res!138745 (not ((_ is Nil!4033) lt!129913)))))

(declare-fun b!305376 () Bool)

(declare-fun res!138744 () Bool)

(assert (=> b!305376 (=> (not res!138744) (not e!189807))))

(assert (=> b!305376 (= res!138744 (= (head!957 lt!129902) (head!957 lt!129913)))))

(declare-fun b!305377 () Bool)

(assert (=> b!305377 (= e!189807 (isPrefix!435 (tail!531 lt!129902) (tail!531 lt!129913)))))

(assert (= (and d!93405 (not res!138743)) b!305375))

(assert (= (and b!305375 res!138745) b!305376))

(assert (= (and b!305376 res!138744) b!305377))

(assert (= (and d!93405 (not res!138746)) b!305378))

(declare-fun m!407389 () Bool)

(assert (=> b!305378 m!407389))

(assert (=> b!305378 m!407235))

(assert (=> b!305376 m!407145))

(declare-fun m!407391 () Bool)

(assert (=> b!305376 m!407391))

(assert (=> b!305377 m!407149))

(declare-fun m!407393 () Bool)

(assert (=> b!305377 m!407393))

(assert (=> b!305377 m!407149))

(assert (=> b!305377 m!407393))

(declare-fun m!407395 () Bool)

(assert (=> b!305377 m!407395))

(assert (=> b!305126 d!93405))

(declare-fun b!305493 () Bool)

(declare-fun res!138810 () Bool)

(declare-fun e!189868 () Bool)

(assert (=> b!305493 (=> (not res!138810) (not e!189868))))

(declare-fun lt!130067 () Option!916)

(assert (=> b!305493 (= res!138810 (= (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130067)))) (originalCharacters!818 (_1!2539 (get!1375 lt!130067)))))))

(declare-fun b!305494 () Bool)

(declare-fun res!138805 () Bool)

(assert (=> b!305494 (=> (not res!138805) (not e!189868))))

(assert (=> b!305494 (= res!138805 (matchR!317 (regex!775 (rule!1388 (_1!2539 (get!1375 lt!130067)))) (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130067))))))))

(declare-fun b!305495 () Bool)

(declare-fun res!138806 () Bool)

(assert (=> b!305495 (=> (not res!138806) (not e!189868))))

(declare-fun apply!880 (TokenValueInjection!1366 BalanceConc!2752) TokenValue!797)

(assert (=> b!305495 (= res!138806 (= (value!26403 (_1!2539 (get!1375 lt!130067))) (apply!880 (transformation!775 (rule!1388 (_1!2539 (get!1375 lt!130067)))) (seqFromList!915 (originalCharacters!818 (_1!2539 (get!1375 lt!130067)))))))))

(declare-fun b!305496 () Bool)

(declare-fun contains!794 (List!4044 Rule!1350) Bool)

(assert (=> b!305496 (= e!189868 (contains!794 rules!1920 (rule!1388 (_1!2539 (get!1375 lt!130067)))))))

(declare-fun b!305497 () Bool)

(declare-fun e!189869 () Option!916)

(declare-fun call!17675 () Option!916)

(assert (=> b!305497 (= e!189869 call!17675)))

(declare-fun bm!17670 () Bool)

(declare-fun maxPrefixOneRule!168 (LexerInterface!661 Rule!1350 List!4043) Option!916)

(assert (=> bm!17670 (= call!17675 (maxPrefixOneRule!168 thiss!17480 (h!9431 rules!1920) lt!129918))))

(declare-fun d!93407 () Bool)

(declare-fun e!189870 () Bool)

(assert (=> d!93407 e!189870))

(declare-fun res!138809 () Bool)

(assert (=> d!93407 (=> res!138809 e!189870)))

(declare-fun isEmpty!2742 (Option!916) Bool)

(assert (=> d!93407 (= res!138809 (isEmpty!2742 lt!130067))))

(assert (=> d!93407 (= lt!130067 e!189869)))

(declare-fun c!58027 () Bool)

(assert (=> d!93407 (= c!58027 (and ((_ is Cons!4034) rules!1920) ((_ is Nil!4034) (t!43136 rules!1920))))))

(declare-fun lt!130069 () Unit!5634)

(declare-fun lt!130065 () Unit!5634)

(assert (=> d!93407 (= lt!130069 lt!130065)))

(assert (=> d!93407 (isPrefix!435 lt!129918 lt!129918)))

(declare-fun lemmaIsPrefixRefl!234 (List!4043 List!4043) Unit!5634)

(assert (=> d!93407 (= lt!130065 (lemmaIsPrefixRefl!234 lt!129918 lt!129918))))

(declare-fun rulesValidInductive!229 (LexerInterface!661 List!4044) Bool)

(assert (=> d!93407 (rulesValidInductive!229 thiss!17480 rules!1920)))

(assert (=> d!93407 (= (maxPrefix!377 thiss!17480 rules!1920 lt!129918) lt!130067)))

(declare-fun b!305498 () Bool)

(assert (=> b!305498 (= e!189870 e!189868)))

(declare-fun res!138811 () Bool)

(assert (=> b!305498 (=> (not res!138811) (not e!189868))))

(assert (=> b!305498 (= res!138811 (isDefined!755 lt!130067))))

(declare-fun b!305499 () Bool)

(declare-fun res!138808 () Bool)

(assert (=> b!305499 (=> (not res!138808) (not e!189868))))

(assert (=> b!305499 (= res!138808 (= (++!1092 (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130067)))) (_2!2539 (get!1375 lt!130067))) lt!129918))))

(declare-fun b!305500 () Bool)

(declare-fun res!138807 () Bool)

(assert (=> b!305500 (=> (not res!138807) (not e!189868))))

(assert (=> b!305500 (= res!138807 (< (size!3229 (_2!2539 (get!1375 lt!130067))) (size!3229 lt!129918)))))

(declare-fun b!305501 () Bool)

(declare-fun lt!130066 () Option!916)

(declare-fun lt!130068 () Option!916)

(assert (=> b!305501 (= e!189869 (ite (and ((_ is None!915) lt!130066) ((_ is None!915) lt!130068)) None!915 (ite ((_ is None!915) lt!130068) lt!130066 (ite ((_ is None!915) lt!130066) lt!130068 (ite (>= (size!3225 (_1!2539 (v!14908 lt!130066))) (size!3225 (_1!2539 (v!14908 lt!130068)))) lt!130066 lt!130068)))))))

(assert (=> b!305501 (= lt!130066 call!17675)))

(assert (=> b!305501 (= lt!130068 (maxPrefix!377 thiss!17480 (t!43136 rules!1920) lt!129918))))

(assert (= (and d!93407 c!58027) b!305497))

(assert (= (and d!93407 (not c!58027)) b!305501))

(assert (= (or b!305497 b!305501) bm!17670))

(assert (= (and d!93407 (not res!138809)) b!305498))

(assert (= (and b!305498 res!138811) b!305493))

(assert (= (and b!305493 res!138810) b!305500))

(assert (= (and b!305500 res!138807) b!305499))

(assert (= (and b!305499 res!138808) b!305495))

(assert (= (and b!305495 res!138806) b!305494))

(assert (= (and b!305494 res!138805) b!305496))

(declare-fun m!407589 () Bool)

(assert (=> b!305494 m!407589))

(declare-fun m!407591 () Bool)

(assert (=> b!305494 m!407591))

(assert (=> b!305494 m!407591))

(declare-fun m!407593 () Bool)

(assert (=> b!305494 m!407593))

(assert (=> b!305494 m!407593))

(declare-fun m!407595 () Bool)

(assert (=> b!305494 m!407595))

(assert (=> b!305493 m!407589))

(assert (=> b!305493 m!407591))

(assert (=> b!305493 m!407591))

(assert (=> b!305493 m!407593))

(declare-fun m!407597 () Bool)

(assert (=> d!93407 m!407597))

(declare-fun m!407599 () Bool)

(assert (=> d!93407 m!407599))

(declare-fun m!407601 () Bool)

(assert (=> d!93407 m!407601))

(declare-fun m!407603 () Bool)

(assert (=> d!93407 m!407603))

(assert (=> b!305495 m!407589))

(declare-fun m!407605 () Bool)

(assert (=> b!305495 m!407605))

(assert (=> b!305495 m!407605))

(declare-fun m!407607 () Bool)

(assert (=> b!305495 m!407607))

(declare-fun m!407609 () Bool)

(assert (=> bm!17670 m!407609))

(declare-fun m!407611 () Bool)

(assert (=> b!305498 m!407611))

(assert (=> b!305500 m!407589))

(declare-fun m!407613 () Bool)

(assert (=> b!305500 m!407613))

(declare-fun m!407615 () Bool)

(assert (=> b!305500 m!407615))

(assert (=> b!305496 m!407589))

(declare-fun m!407617 () Bool)

(assert (=> b!305496 m!407617))

(assert (=> b!305499 m!407589))

(assert (=> b!305499 m!407591))

(assert (=> b!305499 m!407591))

(assert (=> b!305499 m!407593))

(assert (=> b!305499 m!407593))

(declare-fun m!407621 () Bool)

(assert (=> b!305499 m!407621))

(declare-fun m!407623 () Bool)

(assert (=> b!305501 m!407623))

(assert (=> b!305126 d!93407))

(declare-fun b!305505 () Bool)

(declare-fun e!189871 () Bool)

(assert (=> b!305505 (= e!189871 (>= (size!3229 lt!129918) (size!3229 lt!129902)))))

(declare-fun d!93441 () Bool)

(assert (=> d!93441 e!189871))

(declare-fun res!138815 () Bool)

(assert (=> d!93441 (=> res!138815 e!189871)))

(declare-fun lt!130073 () Bool)

(assert (=> d!93441 (= res!138815 (not lt!130073))))

(declare-fun e!189872 () Bool)

(assert (=> d!93441 (= lt!130073 e!189872)))

(declare-fun res!138812 () Bool)

(assert (=> d!93441 (=> res!138812 e!189872)))

(assert (=> d!93441 (= res!138812 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93441 (= (isPrefix!435 lt!129902 lt!129918) lt!130073)))

(declare-fun b!305502 () Bool)

(declare-fun e!189873 () Bool)

(assert (=> b!305502 (= e!189872 e!189873)))

(declare-fun res!138814 () Bool)

(assert (=> b!305502 (=> (not res!138814) (not e!189873))))

(assert (=> b!305502 (= res!138814 (not ((_ is Nil!4033) lt!129918)))))

(declare-fun b!305503 () Bool)

(declare-fun res!138813 () Bool)

(assert (=> b!305503 (=> (not res!138813) (not e!189873))))

(assert (=> b!305503 (= res!138813 (= (head!957 lt!129902) (head!957 lt!129918)))))

(declare-fun b!305504 () Bool)

(assert (=> b!305504 (= e!189873 (isPrefix!435 (tail!531 lt!129902) (tail!531 lt!129918)))))

(assert (= (and d!93441 (not res!138812)) b!305502))

(assert (= (and b!305502 res!138814) b!305503))

(assert (= (and b!305503 res!138813) b!305504))

(assert (= (and d!93441 (not res!138815)) b!305505))

(assert (=> b!305505 m!407615))

(assert (=> b!305505 m!407235))

(assert (=> b!305503 m!407145))

(declare-fun m!407629 () Bool)

(assert (=> b!305503 m!407629))

(assert (=> b!305504 m!407149))

(declare-fun m!407631 () Bool)

(assert (=> b!305504 m!407631))

(assert (=> b!305504 m!407149))

(assert (=> b!305504 m!407631))

(declare-fun m!407633 () Bool)

(assert (=> b!305504 m!407633))

(assert (=> b!305126 d!93441))

(declare-fun d!93445 () Bool)

(declare-fun res!138820 () Bool)

(declare-fun e!189876 () Bool)

(assert (=> d!93445 (=> (not res!138820) (not e!189876))))

(assert (=> d!93445 (= res!138820 (not (isEmpty!2738 (originalCharacters!818 (h!9432 tokens!465)))))))

(assert (=> d!93445 (= (inv!4987 (h!9432 tokens!465)) e!189876)))

(declare-fun b!305510 () Bool)

(declare-fun res!138821 () Bool)

(assert (=> b!305510 (=> (not res!138821) (not e!189876))))

(declare-fun dynLambda!2196 (Int TokenValue!797) BalanceConc!2752)

(assert (=> b!305510 (= res!138821 (= (originalCharacters!818 (h!9432 tokens!465)) (list!1699 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (value!26403 (h!9432 tokens!465))))))))

(declare-fun b!305511 () Bool)

(assert (=> b!305511 (= e!189876 (= (size!3225 (h!9432 tokens!465)) (size!3229 (originalCharacters!818 (h!9432 tokens!465)))))))

(assert (= (and d!93445 res!138820) b!305510))

(assert (= (and b!305510 res!138821) b!305511))

(declare-fun b_lambda!10579 () Bool)

(assert (=> (not b_lambda!10579) (not b!305510)))

(declare-fun tb!19277 () Bool)

(declare-fun t!43163 () Bool)

(assert (=> (and b!305117 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465))))) t!43163) tb!19277))

(declare-fun b!305516 () Bool)

(declare-fun e!189879 () Bool)

(declare-fun tp!108502 () Bool)

(declare-fun inv!4988 (Conc!1372) Bool)

(assert (=> b!305516 (= e!189879 (and (inv!4988 (c!57956 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (value!26403 (h!9432 tokens!465))))) tp!108502))))

(declare-fun result!23222 () Bool)

(declare-fun inv!4989 (BalanceConc!2752) Bool)

(assert (=> tb!19277 (= result!23222 (and (inv!4989 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (value!26403 (h!9432 tokens!465)))) e!189879))))

(assert (= tb!19277 b!305516))

(declare-fun m!407635 () Bool)

(assert (=> b!305516 m!407635))

(declare-fun m!407637 () Bool)

(assert (=> tb!19277 m!407637))

(assert (=> b!305510 t!43163))

(declare-fun b_and!25795 () Bool)

(assert (= b_and!25767 (and (=> t!43163 result!23222) b_and!25795)))

(declare-fun t!43165 () Bool)

(declare-fun tb!19279 () Bool)

(assert (=> (and b!305112 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465))))) t!43165) tb!19279))

(declare-fun result!23226 () Bool)

(assert (= result!23226 result!23222))

(assert (=> b!305510 t!43165))

(declare-fun b_and!25797 () Bool)

(assert (= b_and!25771 (and (=> t!43165 result!23226) b_and!25797)))

(declare-fun tb!19281 () Bool)

(declare-fun t!43167 () Bool)

(assert (=> (and b!305125 (= (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465))))) t!43167) tb!19281))

(declare-fun result!23228 () Bool)

(assert (= result!23228 result!23222))

(assert (=> b!305510 t!43167))

(declare-fun b_and!25799 () Bool)

(assert (= b_and!25775 (and (=> t!43167 result!23228) b_and!25799)))

(declare-fun m!407639 () Bool)

(assert (=> d!93445 m!407639))

(declare-fun m!407641 () Bool)

(assert (=> b!305510 m!407641))

(assert (=> b!305510 m!407641))

(declare-fun m!407643 () Bool)

(assert (=> b!305510 m!407643))

(declare-fun m!407645 () Bool)

(assert (=> b!305511 m!407645))

(assert (=> b!305128 d!93445))

(declare-fun d!93447 () Bool)

(assert (=> d!93447 (= (isDefined!755 lt!129911) (not (isEmpty!2742 lt!129911)))))

(declare-fun bs!35317 () Bool)

(assert (= bs!35317 d!93447))

(declare-fun m!407647 () Bool)

(assert (=> bs!35317 m!407647))

(assert (=> b!305107 d!93447))

(assert (=> b!305107 d!93407))

(declare-fun d!93449 () Bool)

(assert (=> d!93449 (= (inv!4983 (tag!993 (rule!1388 separatorToken!170))) (= (mod (str.len (value!26402 (tag!993 (rule!1388 separatorToken!170)))) 2) 0))))

(assert (=> b!305108 d!93449))

(declare-fun d!93451 () Bool)

(declare-fun res!138824 () Bool)

(declare-fun e!189882 () Bool)

(assert (=> d!93451 (=> (not res!138824) (not e!189882))))

(declare-fun semiInverseModEq!289 (Int Int) Bool)

(assert (=> d!93451 (= res!138824 (semiInverseModEq!289 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toValue!1534 (transformation!775 (rule!1388 separatorToken!170)))))))

(assert (=> d!93451 (= (inv!4986 (transformation!775 (rule!1388 separatorToken!170))) e!189882)))

(declare-fun b!305519 () Bool)

(declare-fun equivClasses!272 (Int Int) Bool)

(assert (=> b!305519 (= e!189882 (equivClasses!272 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toValue!1534 (transformation!775 (rule!1388 separatorToken!170)))))))

(assert (= (and d!93451 res!138824) b!305519))

(declare-fun m!407649 () Bool)

(assert (=> d!93451 m!407649))

(declare-fun m!407651 () Bool)

(assert (=> b!305519 m!407651))

(assert (=> b!305108 d!93451))

(declare-fun d!93453 () Bool)

(declare-fun res!138829 () Bool)

(declare-fun e!189887 () Bool)

(assert (=> d!93453 (=> res!138829 e!189887)))

(assert (=> d!93453 (= res!138829 ((_ is Nil!4035) tokens!465))))

(assert (=> d!93453 (= (forall!1062 tokens!465 lambda!10387) e!189887)))

(declare-fun b!305524 () Bool)

(declare-fun e!189888 () Bool)

(assert (=> b!305524 (= e!189887 e!189888)))

(declare-fun res!138830 () Bool)

(assert (=> b!305524 (=> (not res!138830) (not e!189888))))

(declare-fun dynLambda!2198 (Int Token!1294) Bool)

(assert (=> b!305524 (= res!138830 (dynLambda!2198 lambda!10387 (h!9432 tokens!465)))))

(declare-fun b!305525 () Bool)

(assert (=> b!305525 (= e!189888 (forall!1062 (t!43137 tokens!465) lambda!10387))))

(assert (= (and d!93453 (not res!138829)) b!305524))

(assert (= (and b!305524 res!138830) b!305525))

(declare-fun b_lambda!10581 () Bool)

(assert (=> (not b_lambda!10581) (not b!305524)))

(declare-fun m!407653 () Bool)

(assert (=> b!305524 m!407653))

(declare-fun m!407655 () Bool)

(assert (=> b!305525 m!407655))

(assert (=> b!305120 d!93453))

(declare-fun b!305526 () Bool)

(declare-fun e!189890 () Bool)

(assert (=> b!305526 (= e!189890 (inv!17 (value!26403 separatorToken!170)))))

(declare-fun b!305527 () Bool)

(declare-fun res!138831 () Bool)

(declare-fun e!189891 () Bool)

(assert (=> b!305527 (=> res!138831 e!189891)))

(assert (=> b!305527 (= res!138831 (not ((_ is IntegerValue!2393) (value!26403 separatorToken!170))))))

(assert (=> b!305527 (= e!189890 e!189891)))

(declare-fun b!305528 () Bool)

(assert (=> b!305528 (= e!189891 (inv!15 (value!26403 separatorToken!170)))))

(declare-fun b!305529 () Bool)

(declare-fun e!189889 () Bool)

(assert (=> b!305529 (= e!189889 e!189890)))

(declare-fun c!58028 () Bool)

(assert (=> b!305529 (= c!58028 ((_ is IntegerValue!2392) (value!26403 separatorToken!170)))))

(declare-fun d!93455 () Bool)

(declare-fun c!58029 () Bool)

(assert (=> d!93455 (= c!58029 ((_ is IntegerValue!2391) (value!26403 separatorToken!170)))))

(assert (=> d!93455 (= (inv!21 (value!26403 separatorToken!170)) e!189889)))

(declare-fun b!305530 () Bool)

(assert (=> b!305530 (= e!189889 (inv!16 (value!26403 separatorToken!170)))))

(assert (= (and d!93455 c!58029) b!305530))

(assert (= (and d!93455 (not c!58029)) b!305529))

(assert (= (and b!305529 c!58028) b!305526))

(assert (= (and b!305529 (not c!58028)) b!305527))

(assert (= (and b!305527 (not res!138831)) b!305528))

(declare-fun m!407657 () Bool)

(assert (=> b!305526 m!407657))

(declare-fun m!407659 () Bool)

(assert (=> b!305528 m!407659))

(declare-fun m!407661 () Bool)

(assert (=> b!305530 m!407661))

(assert (=> b!305121 d!93455))

(declare-fun d!93457 () Bool)

(assert (=> d!93457 (= (get!1375 lt!129912) (v!14908 lt!129912))))

(assert (=> b!305123 d!93457))

(declare-fun d!93459 () Bool)

(assert (=> d!93459 (= (isDefined!755 lt!129912) (not (isEmpty!2742 lt!129912)))))

(declare-fun bs!35318 () Bool)

(assert (= bs!35318 d!93459))

(declare-fun m!407663 () Bool)

(assert (=> bs!35318 m!407663))

(assert (=> b!305123 d!93459))

(declare-fun b!305531 () Bool)

(declare-fun res!138837 () Bool)

(declare-fun e!189892 () Bool)

(assert (=> b!305531 (=> (not res!138837) (not e!189892))))

(declare-fun lt!130076 () Option!916)

(assert (=> b!305531 (= res!138837 (= (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130076)))) (originalCharacters!818 (_1!2539 (get!1375 lt!130076)))))))

(declare-fun b!305532 () Bool)

(declare-fun res!138832 () Bool)

(assert (=> b!305532 (=> (not res!138832) (not e!189892))))

(assert (=> b!305532 (= res!138832 (matchR!317 (regex!775 (rule!1388 (_1!2539 (get!1375 lt!130076)))) (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130076))))))))

(declare-fun b!305533 () Bool)

(declare-fun res!138833 () Bool)

(assert (=> b!305533 (=> (not res!138833) (not e!189892))))

(assert (=> b!305533 (= res!138833 (= (value!26403 (_1!2539 (get!1375 lt!130076))) (apply!880 (transformation!775 (rule!1388 (_1!2539 (get!1375 lt!130076)))) (seqFromList!915 (originalCharacters!818 (_1!2539 (get!1375 lt!130076)))))))))

(declare-fun b!305534 () Bool)

(assert (=> b!305534 (= e!189892 (contains!794 rules!1920 (rule!1388 (_1!2539 (get!1375 lt!130076)))))))

(declare-fun b!305535 () Bool)

(declare-fun e!189893 () Option!916)

(declare-fun call!17676 () Option!916)

(assert (=> b!305535 (= e!189893 call!17676)))

(declare-fun bm!17671 () Bool)

(assert (=> bm!17671 (= call!17676 (maxPrefixOneRule!168 thiss!17480 (h!9431 rules!1920) lt!129902))))

(declare-fun d!93461 () Bool)

(declare-fun e!189894 () Bool)

(assert (=> d!93461 e!189894))

(declare-fun res!138836 () Bool)

(assert (=> d!93461 (=> res!138836 e!189894)))

(assert (=> d!93461 (= res!138836 (isEmpty!2742 lt!130076))))

(assert (=> d!93461 (= lt!130076 e!189893)))

(declare-fun c!58030 () Bool)

(assert (=> d!93461 (= c!58030 (and ((_ is Cons!4034) rules!1920) ((_ is Nil!4034) (t!43136 rules!1920))))))

(declare-fun lt!130078 () Unit!5634)

(declare-fun lt!130074 () Unit!5634)

(assert (=> d!93461 (= lt!130078 lt!130074)))

(assert (=> d!93461 (isPrefix!435 lt!129902 lt!129902)))

(assert (=> d!93461 (= lt!130074 (lemmaIsPrefixRefl!234 lt!129902 lt!129902))))

(assert (=> d!93461 (rulesValidInductive!229 thiss!17480 rules!1920)))

(assert (=> d!93461 (= (maxPrefix!377 thiss!17480 rules!1920 lt!129902) lt!130076)))

(declare-fun b!305536 () Bool)

(assert (=> b!305536 (= e!189894 e!189892)))

(declare-fun res!138838 () Bool)

(assert (=> b!305536 (=> (not res!138838) (not e!189892))))

(assert (=> b!305536 (= res!138838 (isDefined!755 lt!130076))))

(declare-fun b!305537 () Bool)

(declare-fun res!138835 () Bool)

(assert (=> b!305537 (=> (not res!138835) (not e!189892))))

(assert (=> b!305537 (= res!138835 (= (++!1092 (list!1699 (charsOf!418 (_1!2539 (get!1375 lt!130076)))) (_2!2539 (get!1375 lt!130076))) lt!129902))))

(declare-fun b!305538 () Bool)

(declare-fun res!138834 () Bool)

(assert (=> b!305538 (=> (not res!138834) (not e!189892))))

(assert (=> b!305538 (= res!138834 (< (size!3229 (_2!2539 (get!1375 lt!130076))) (size!3229 lt!129902)))))

(declare-fun b!305539 () Bool)

(declare-fun lt!130075 () Option!916)

(declare-fun lt!130077 () Option!916)

(assert (=> b!305539 (= e!189893 (ite (and ((_ is None!915) lt!130075) ((_ is None!915) lt!130077)) None!915 (ite ((_ is None!915) lt!130077) lt!130075 (ite ((_ is None!915) lt!130075) lt!130077 (ite (>= (size!3225 (_1!2539 (v!14908 lt!130075))) (size!3225 (_1!2539 (v!14908 lt!130077)))) lt!130075 lt!130077)))))))

(assert (=> b!305539 (= lt!130075 call!17676)))

(assert (=> b!305539 (= lt!130077 (maxPrefix!377 thiss!17480 (t!43136 rules!1920) lt!129902))))

(assert (= (and d!93461 c!58030) b!305535))

(assert (= (and d!93461 (not c!58030)) b!305539))

(assert (= (or b!305535 b!305539) bm!17671))

(assert (= (and d!93461 (not res!138836)) b!305536))

(assert (= (and b!305536 res!138838) b!305531))

(assert (= (and b!305531 res!138837) b!305538))

(assert (= (and b!305538 res!138834) b!305537))

(assert (= (and b!305537 res!138835) b!305533))

(assert (= (and b!305533 res!138833) b!305532))

(assert (= (and b!305532 res!138832) b!305534))

(declare-fun m!407665 () Bool)

(assert (=> b!305532 m!407665))

(declare-fun m!407667 () Bool)

(assert (=> b!305532 m!407667))

(assert (=> b!305532 m!407667))

(declare-fun m!407669 () Bool)

(assert (=> b!305532 m!407669))

(assert (=> b!305532 m!407669))

(declare-fun m!407671 () Bool)

(assert (=> b!305532 m!407671))

(assert (=> b!305531 m!407665))

(assert (=> b!305531 m!407667))

(assert (=> b!305531 m!407667))

(assert (=> b!305531 m!407669))

(declare-fun m!407673 () Bool)

(assert (=> d!93461 m!407673))

(declare-fun m!407675 () Bool)

(assert (=> d!93461 m!407675))

(declare-fun m!407677 () Bool)

(assert (=> d!93461 m!407677))

(assert (=> d!93461 m!407603))

(assert (=> b!305533 m!407665))

(declare-fun m!407679 () Bool)

(assert (=> b!305533 m!407679))

(assert (=> b!305533 m!407679))

(declare-fun m!407681 () Bool)

(assert (=> b!305533 m!407681))

(declare-fun m!407683 () Bool)

(assert (=> bm!17671 m!407683))

(declare-fun m!407685 () Bool)

(assert (=> b!305536 m!407685))

(assert (=> b!305538 m!407665))

(declare-fun m!407687 () Bool)

(assert (=> b!305538 m!407687))

(assert (=> b!305538 m!407235))

(assert (=> b!305534 m!407665))

(declare-fun m!407689 () Bool)

(assert (=> b!305534 m!407689))

(assert (=> b!305537 m!407665))

(assert (=> b!305537 m!407667))

(assert (=> b!305537 m!407667))

(assert (=> b!305537 m!407669))

(assert (=> b!305537 m!407669))

(declare-fun m!407691 () Bool)

(assert (=> b!305537 m!407691))

(declare-fun m!407693 () Bool)

(assert (=> b!305539 m!407693))

(assert (=> b!305123 d!93461))

(declare-fun d!93463 () Bool)

(assert (=> d!93463 (= (seqFromList!916 (t!43137 tokens!465)) (fromListB!377 (t!43137 tokens!465)))))

(declare-fun bs!35319 () Bool)

(assert (= bs!35319 d!93463))

(declare-fun m!407695 () Bool)

(assert (=> bs!35319 m!407695))

(assert (=> b!305122 d!93463))

(declare-fun d!93465 () Bool)

(declare-fun list!1703 (Conc!1372) List!4043)

(assert (=> d!93465 (= (list!1699 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 (seqFromList!916 (t!43137 tokens!465)) separatorToken!170 0)) (list!1703 (c!57956 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 (seqFromList!916 (t!43137 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!35320 () Bool)

(assert (= bs!35320 d!93465))

(declare-fun m!407697 () Bool)

(assert (=> bs!35320 m!407697))

(assert (=> b!305122 d!93465))

(declare-fun lt!130079 () List!4043)

(declare-fun b!305543 () Bool)

(declare-fun e!189895 () Bool)

(assert (=> b!305543 (= e!189895 (or (not (= lt!129903 Nil!4033)) (= lt!130079 lt!129904)))))

(declare-fun d!93467 () Bool)

(assert (=> d!93467 e!189895))

(declare-fun res!138839 () Bool)

(assert (=> d!93467 (=> (not res!138839) (not e!189895))))

(assert (=> d!93467 (= res!138839 (= (content!602 lt!130079) ((_ map or) (content!602 lt!129904) (content!602 lt!129903))))))

(declare-fun e!189896 () List!4043)

(assert (=> d!93467 (= lt!130079 e!189896)))

(declare-fun c!58031 () Bool)

(assert (=> d!93467 (= c!58031 ((_ is Nil!4033) lt!129904))))

(assert (=> d!93467 (= (++!1092 lt!129904 lt!129903) lt!130079)))

(declare-fun b!305542 () Bool)

(declare-fun res!138840 () Bool)

(assert (=> b!305542 (=> (not res!138840) (not e!189895))))

(assert (=> b!305542 (= res!138840 (= (size!3229 lt!130079) (+ (size!3229 lt!129904) (size!3229 lt!129903))))))

(declare-fun b!305540 () Bool)

(assert (=> b!305540 (= e!189896 lt!129903)))

(declare-fun b!305541 () Bool)

(assert (=> b!305541 (= e!189896 (Cons!4033 (h!9430 lt!129904) (++!1092 (t!43135 lt!129904) lt!129903)))))

(assert (= (and d!93467 c!58031) b!305540))

(assert (= (and d!93467 (not c!58031)) b!305541))

(assert (= (and d!93467 res!138839) b!305542))

(assert (= (and b!305542 res!138840) b!305543))

(declare-fun m!407699 () Bool)

(assert (=> d!93467 m!407699))

(declare-fun m!407701 () Bool)

(assert (=> d!93467 m!407701))

(declare-fun m!407703 () Bool)

(assert (=> d!93467 m!407703))

(declare-fun m!407705 () Bool)

(assert (=> b!305542 m!407705))

(declare-fun m!407707 () Bool)

(assert (=> b!305542 m!407707))

(declare-fun m!407709 () Bool)

(assert (=> b!305542 m!407709))

(declare-fun m!407711 () Bool)

(assert (=> b!305541 m!407711))

(assert (=> b!305122 d!93467))

(declare-fun bs!35323 () Bool)

(declare-fun b!305608 () Bool)

(assert (= bs!35323 (and b!305608 b!305120)))

(declare-fun lambda!10408 () Int)

(assert (=> bs!35323 (not (= lambda!10408 lambda!10387))))

(declare-fun bs!35324 () Bool)

(assert (= bs!35324 (and b!305608 b!305137)))

(assert (=> bs!35324 (= lambda!10408 lambda!10388)))

(declare-fun bs!35325 () Bool)

(assert (= bs!35325 (and b!305608 d!93363)))

(assert (=> bs!35325 (= lambda!10408 lambda!10393)))

(declare-fun b!305612 () Bool)

(declare-fun e!189941 () Bool)

(assert (=> b!305612 (= e!189941 true)))

(declare-fun b!305611 () Bool)

(declare-fun e!189940 () Bool)

(assert (=> b!305611 (= e!189940 e!189941)))

(declare-fun b!305610 () Bool)

(declare-fun e!189939 () Bool)

(assert (=> b!305610 (= e!189939 e!189940)))

(assert (=> b!305608 e!189939))

(assert (= b!305611 b!305612))

(assert (= b!305610 b!305611))

(assert (= (and b!305608 ((_ is Cons!4034) rules!1920)) b!305610))

(assert (=> b!305612 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10408))))

(assert (=> b!305612 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10408))))

(assert (=> b!305608 true))

(declare-fun b!305602 () Bool)

(declare-fun e!189938 () BalanceConc!2752)

(declare-fun call!17692 () BalanceConc!2752)

(assert (=> b!305602 (= e!189938 call!17692)))

(declare-fun b!305603 () Bool)

(declare-fun e!189936 () List!4043)

(assert (=> b!305603 (= e!189936 Nil!4033)))

(assert (=> b!305603 (= (print!386 thiss!17480 (singletonSeq!321 (h!9432 (t!43137 tokens!465)))) (printTailRec!347 thiss!17480 (singletonSeq!321 (h!9432 (t!43137 tokens!465))) 0 (BalanceConc!2753 Empty!1372)))))

(declare-fun lt!130121 () Unit!5634)

(declare-fun Unit!5641 () Unit!5634)

(assert (=> b!305603 (= lt!130121 Unit!5641)))

(declare-fun call!17690 () List!4043)

(declare-fun lt!130119 () Unit!5634)

(declare-fun lt!130120 () List!4043)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!140 (LexerInterface!661 List!4044 List!4043 List!4043) Unit!5634)

(assert (=> b!305603 (= lt!130119 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!140 thiss!17480 rules!1920 call!17690 lt!130120))))

(assert (=> b!305603 false))

(declare-fun lt!130117 () Unit!5634)

(declare-fun Unit!5643 () Unit!5634)

(assert (=> b!305603 (= lt!130117 Unit!5643)))

(declare-fun bm!17685 () Bool)

(assert (=> bm!17685 (= call!17690 (list!1699 e!189938))))

(declare-fun c!58047 () Bool)

(declare-fun c!58049 () Bool)

(assert (=> bm!17685 (= c!58047 c!58049)))

(declare-fun b!305604 () Bool)

(declare-fun lt!130116 () Option!916)

(assert (=> b!305604 (= c!58049 (and ((_ is Some!915) lt!130116) (not (= (_1!2539 (v!14908 lt!130116)) (h!9432 (t!43137 tokens!465))))))))

(declare-fun e!189937 () List!4043)

(assert (=> b!305604 (= e!189937 e!189936)))

(declare-fun b!305605 () Bool)

(assert (=> b!305605 (= e!189938 (charsOf!418 separatorToken!170))))

(declare-fun b!305606 () Bool)

(declare-fun call!17691 () List!4043)

(assert (=> b!305606 (= e!189936 (++!1092 call!17691 lt!130120))))

(declare-fun d!93469 () Bool)

(declare-fun c!58046 () Bool)

(assert (=> d!93469 (= c!58046 ((_ is Cons!4035) (t!43137 tokens!465)))))

(declare-fun e!189935 () List!4043)

(assert (=> d!93469 (= (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (t!43137 tokens!465) separatorToken!170) e!189935)))

(declare-fun bm!17686 () Bool)

(declare-fun call!17694 () BalanceConc!2752)

(assert (=> bm!17686 (= call!17692 call!17694)))

(declare-fun b!305607 () Bool)

(assert (=> b!305607 (= e!189935 Nil!4033)))

(assert (=> b!305608 (= e!189935 e!189937)))

(declare-fun lt!130118 () Unit!5634)

(assert (=> b!305608 (= lt!130118 (forallContained!328 (t!43137 tokens!465) lambda!10408 (h!9432 (t!43137 tokens!465))))))

(assert (=> b!305608 (= lt!130120 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (t!43137 (t!43137 tokens!465)) separatorToken!170))))

(assert (=> b!305608 (= lt!130116 (maxPrefix!377 thiss!17480 rules!1920 (++!1092 (list!1699 (charsOf!418 (h!9432 (t!43137 tokens!465)))) lt!130120)))))

(declare-fun c!58048 () Bool)

(assert (=> b!305608 (= c!58048 (and ((_ is Some!915) lt!130116) (= (_1!2539 (v!14908 lt!130116)) (h!9432 (t!43137 tokens!465)))))))

(declare-fun bm!17687 () Bool)

(declare-fun call!17693 () List!4043)

(assert (=> bm!17687 (= call!17693 (list!1699 (ite c!58048 call!17694 call!17692)))))

(declare-fun bm!17688 () Bool)

(assert (=> bm!17688 (= call!17694 (charsOf!418 (h!9432 (t!43137 tokens!465))))))

(declare-fun bm!17689 () Bool)

(assert (=> bm!17689 (= call!17691 (++!1092 call!17693 (ite c!58048 lt!130120 call!17690)))))

(declare-fun b!305609 () Bool)

(assert (=> b!305609 (= e!189937 call!17691)))

(assert (= (and d!93469 c!58046) b!305608))

(assert (= (and d!93469 (not c!58046)) b!305607))

(assert (= (and b!305608 c!58048) b!305609))

(assert (= (and b!305608 (not c!58048)) b!305604))

(assert (= (and b!305604 c!58049) b!305606))

(assert (= (and b!305604 (not c!58049)) b!305603))

(assert (= (or b!305606 b!305603) bm!17686))

(assert (= (or b!305606 b!305603) bm!17685))

(assert (= (and bm!17685 c!58047) b!305605))

(assert (= (and bm!17685 (not c!58047)) b!305602))

(assert (= (or b!305609 bm!17686) bm!17688))

(assert (= (or b!305609 b!305606) bm!17687))

(assert (= (or b!305609 b!305606) bm!17689))

(declare-fun m!407769 () Bool)

(assert (=> b!305603 m!407769))

(assert (=> b!305603 m!407769))

(declare-fun m!407771 () Bool)

(assert (=> b!305603 m!407771))

(assert (=> b!305603 m!407769))

(declare-fun m!407773 () Bool)

(assert (=> b!305603 m!407773))

(declare-fun m!407775 () Bool)

(assert (=> b!305603 m!407775))

(declare-fun m!407777 () Bool)

(assert (=> bm!17689 m!407777))

(declare-fun m!407779 () Bool)

(assert (=> b!305608 m!407779))

(declare-fun m!407781 () Bool)

(assert (=> b!305608 m!407781))

(declare-fun m!407783 () Bool)

(assert (=> b!305608 m!407783))

(declare-fun m!407785 () Bool)

(assert (=> b!305608 m!407785))

(declare-fun m!407787 () Bool)

(assert (=> b!305608 m!407787))

(declare-fun m!407789 () Bool)

(assert (=> b!305608 m!407789))

(assert (=> b!305608 m!407785))

(assert (=> b!305608 m!407783))

(assert (=> b!305608 m!407789))

(assert (=> b!305605 m!407057))

(declare-fun m!407791 () Bool)

(assert (=> bm!17685 m!407791))

(declare-fun m!407793 () Bool)

(assert (=> b!305606 m!407793))

(declare-fun m!407795 () Bool)

(assert (=> bm!17687 m!407795))

(assert (=> bm!17688 m!407783))

(assert (=> b!305122 d!93469))

(declare-fun bs!35327 () Bool)

(declare-fun d!93483 () Bool)

(assert (= bs!35327 (and d!93483 b!305120)))

(declare-fun lambda!10413 () Int)

(assert (=> bs!35327 (= lambda!10413 lambda!10387)))

(declare-fun bs!35328 () Bool)

(assert (= bs!35328 (and d!93483 b!305137)))

(assert (=> bs!35328 (not (= lambda!10413 lambda!10388))))

(declare-fun bs!35329 () Bool)

(assert (= bs!35329 (and d!93483 d!93363)))

(assert (=> bs!35329 (not (= lambda!10413 lambda!10393))))

(declare-fun bs!35330 () Bool)

(assert (= bs!35330 (and d!93483 b!305608)))

(assert (=> bs!35330 (not (= lambda!10413 lambda!10408))))

(declare-fun bs!35331 () Bool)

(declare-fun b!305657 () Bool)

(assert (= bs!35331 (and b!305657 b!305137)))

(declare-fun lambda!10414 () Int)

(assert (=> bs!35331 (= lambda!10414 lambda!10388)))

(declare-fun bs!35332 () Bool)

(assert (= bs!35332 (and b!305657 b!305120)))

(assert (=> bs!35332 (not (= lambda!10414 lambda!10387))))

(declare-fun bs!35333 () Bool)

(assert (= bs!35333 (and b!305657 d!93483)))

(assert (=> bs!35333 (not (= lambda!10414 lambda!10413))))

(declare-fun bs!35334 () Bool)

(assert (= bs!35334 (and b!305657 d!93363)))

(assert (=> bs!35334 (= lambda!10414 lambda!10393)))

(declare-fun bs!35335 () Bool)

(assert (= bs!35335 (and b!305657 b!305608)))

(assert (=> bs!35335 (= lambda!10414 lambda!10408)))

(declare-fun b!305667 () Bool)

(declare-fun e!189983 () Bool)

(assert (=> b!305667 (= e!189983 true)))

(declare-fun b!305666 () Bool)

(declare-fun e!189982 () Bool)

(assert (=> b!305666 (= e!189982 e!189983)))

(declare-fun b!305665 () Bool)

(declare-fun e!189981 () Bool)

(assert (=> b!305665 (= e!189981 e!189982)))

(assert (=> b!305657 e!189981))

(assert (= b!305666 b!305667))

(assert (= b!305665 b!305666))

(assert (= (and b!305657 ((_ is Cons!4034) rules!1920)) b!305665))

(assert (=> b!305667 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10414))))

(assert (=> b!305667 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10414))))

(assert (=> b!305657 true))

(declare-fun bm!17700 () Bool)

(declare-fun call!17709 () Token!1294)

(declare-fun call!17708 () Token!1294)

(declare-fun c!58057 () Bool)

(declare-fun call!17707 () BalanceConc!2752)

(assert (=> bm!17700 (= call!17707 (charsOf!418 (ite c!58057 call!17709 call!17708)))))

(declare-fun b!305656 () Bool)

(declare-fun e!189977 () Bool)

(declare-fun lt!130170 () Option!917)

(assert (=> b!305656 (= e!189977 (= (_1!2541 (v!14909 lt!130170)) (apply!879 (seqFromList!916 (t!43137 tokens!465)) 0)))))

(declare-fun lt!130163 () BalanceConc!2752)

(declare-fun dropList!192 (BalanceConc!2754 Int) List!4045)

(assert (=> d!93483 (= (list!1699 lt!130163) (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (dropList!192 (seqFromList!916 (t!43137 tokens!465)) 0) separatorToken!170))))

(declare-fun e!189976 () BalanceConc!2752)

(assert (=> d!93483 (= lt!130163 e!189976)))

(declare-fun c!58056 () Bool)

(assert (=> d!93483 (= c!58056 (>= 0 (size!3226 (seqFromList!916 (t!43137 tokens!465)))))))

(declare-fun lt!130165 () Unit!5634)

(declare-fun lemmaContentSubsetPreservesForall!136 (List!4045 List!4045 Int) Unit!5634)

(assert (=> d!93483 (= lt!130165 (lemmaContentSubsetPreservesForall!136 (list!1700 (seqFromList!916 (t!43137 tokens!465))) (dropList!192 (seqFromList!916 (t!43137 tokens!465)) 0) lambda!10413))))

(declare-fun e!189975 () Bool)

(assert (=> d!93483 e!189975))

(declare-fun res!138902 () Bool)

(assert (=> d!93483 (=> (not res!138902) (not e!189975))))

(assert (=> d!93483 (= res!138902 (>= 0 0))))

(assert (=> d!93483 (= (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 (seqFromList!916 (t!43137 tokens!465)) separatorToken!170 0) lt!130163)))

(declare-fun call!17706 () BalanceConc!2752)

(declare-fun bm!17701 () Bool)

(declare-fun c!58058 () Bool)

(assert (=> bm!17701 (= call!17706 (charsOf!418 (ite c!58058 separatorToken!170 call!17708)))))

(declare-fun call!17705 () BalanceConc!2752)

(declare-fun bm!17702 () Bool)

(declare-fun lt!130172 () BalanceConc!2752)

(declare-fun ++!1094 (BalanceConc!2752 BalanceConc!2752) BalanceConc!2752)

(assert (=> bm!17702 (= call!17705 (++!1094 call!17707 (ite c!58057 lt!130172 call!17706)))))

(declare-fun e!189978 () BalanceConc!2752)

(assert (=> b!305657 (= e!189976 e!189978)))

(declare-fun lt!130161 () List!4045)

(assert (=> b!305657 (= lt!130161 (list!1700 (seqFromList!916 (t!43137 tokens!465))))))

(declare-fun lt!130167 () Unit!5634)

(declare-fun lemmaDropApply!232 (List!4045 Int) Unit!5634)

(assert (=> b!305657 (= lt!130167 (lemmaDropApply!232 lt!130161 0))))

(declare-fun drop!247 (List!4045 Int) List!4045)

(declare-fun apply!881 (List!4045 Int) Token!1294)

(assert (=> b!305657 (= (head!956 (drop!247 lt!130161 0)) (apply!881 lt!130161 0))))

(declare-fun lt!130169 () Unit!5634)

(assert (=> b!305657 (= lt!130169 lt!130167)))

(declare-fun lt!130160 () List!4045)

(assert (=> b!305657 (= lt!130160 (list!1700 (seqFromList!916 (t!43137 tokens!465))))))

(declare-fun lt!130173 () Unit!5634)

(declare-fun lemmaDropTail!224 (List!4045 Int) Unit!5634)

(assert (=> b!305657 (= lt!130173 (lemmaDropTail!224 lt!130160 0))))

(declare-fun tail!534 (List!4045) List!4045)

(assert (=> b!305657 (= (tail!534 (drop!247 lt!130160 0)) (drop!247 lt!130160 (+ 0 1)))))

(declare-fun lt!130171 () Unit!5634)

(assert (=> b!305657 (= lt!130171 lt!130173)))

(declare-fun lt!130164 () Unit!5634)

(assert (=> b!305657 (= lt!130164 (forallContained!328 (list!1700 (seqFromList!916 (t!43137 tokens!465))) lambda!10414 (apply!879 (seqFromList!916 (t!43137 tokens!465)) 0)))))

(assert (=> b!305657 (= lt!130172 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 (seqFromList!916 (t!43137 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!305657 (= lt!130170 (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (++!1094 (charsOf!418 (apply!879 (seqFromList!916 (t!43137 tokens!465)) 0)) lt!130172)))))

(declare-fun res!138904 () Bool)

(assert (=> b!305657 (= res!138904 ((_ is Some!916) lt!130170))))

(assert (=> b!305657 (=> (not res!138904) (not e!189977))))

(assert (=> b!305657 (= c!58057 e!189977)))

(declare-fun b!305658 () Bool)

(declare-fun e!189980 () Bool)

(assert (=> b!305658 (= c!58058 e!189980)))

(declare-fun res!138903 () Bool)

(assert (=> b!305658 (=> (not res!138903) (not e!189980))))

(assert (=> b!305658 (= res!138903 ((_ is Some!916) lt!130170))))

(declare-fun e!189979 () BalanceConc!2752)

(assert (=> b!305658 (= e!189978 e!189979)))

(declare-fun b!305659 () Bool)

(assert (=> b!305659 (= e!189978 call!17705)))

(declare-fun bm!17703 () Bool)

(assert (=> bm!17703 (= call!17709 (apply!879 (seqFromList!916 (t!43137 tokens!465)) 0))))

(declare-fun b!305660 () Bool)

(assert (=> b!305660 (= e!189979 (BalanceConc!2753 Empty!1372))))

(assert (=> b!305660 (= (print!386 thiss!17480 (singletonSeq!321 call!17708)) (printTailRec!347 thiss!17480 (singletonSeq!321 call!17708) 0 (BalanceConc!2753 Empty!1372)))))

(declare-fun lt!130168 () Unit!5634)

(declare-fun Unit!5644 () Unit!5634)

(assert (=> b!305660 (= lt!130168 Unit!5644)))

(declare-fun lt!130166 () Unit!5634)

(assert (=> b!305660 (= lt!130166 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!140 thiss!17480 rules!1920 (list!1699 call!17706) (list!1699 lt!130172)))))

(assert (=> b!305660 false))

(declare-fun lt!130162 () Unit!5634)

(declare-fun Unit!5645 () Unit!5634)

(assert (=> b!305660 (= lt!130162 Unit!5645)))

(declare-fun b!305661 () Bool)

(assert (=> b!305661 (= e!189975 (<= 0 (size!3226 (seqFromList!916 (t!43137 tokens!465)))))))

(declare-fun b!305662 () Bool)

(assert (=> b!305662 (= e!189980 (not (= (_1!2541 (v!14909 lt!130170)) call!17709)))))

(declare-fun b!305663 () Bool)

(assert (=> b!305663 (= e!189979 (++!1094 call!17705 lt!130172))))

(declare-fun b!305664 () Bool)

(assert (=> b!305664 (= e!189976 (BalanceConc!2753 Empty!1372))))

(declare-fun bm!17704 () Bool)

(assert (=> bm!17704 (= call!17708 call!17709)))

(assert (= (and d!93483 res!138902) b!305661))

(assert (= (and d!93483 c!58056) b!305664))

(assert (= (and d!93483 (not c!58056)) b!305657))

(assert (= (and b!305657 res!138904) b!305656))

(assert (= (and b!305657 c!58057) b!305659))

(assert (= (and b!305657 (not c!58057)) b!305658))

(assert (= (and b!305658 res!138903) b!305662))

(assert (= (and b!305658 c!58058) b!305663))

(assert (= (and b!305658 (not c!58058)) b!305660))

(assert (= (or b!305663 b!305660) bm!17704))

(assert (= (or b!305663 b!305660) bm!17701))

(assert (= (or b!305659 bm!17704 b!305662) bm!17703))

(assert (= (or b!305659 b!305663) bm!17700))

(assert (= (or b!305659 b!305663) bm!17702))

(assert (=> b!305661 m!407047))

(declare-fun m!407829 () Bool)

(assert (=> b!305661 m!407829))

(declare-fun m!407831 () Bool)

(assert (=> b!305663 m!407831))

(declare-fun m!407833 () Bool)

(assert (=> bm!17701 m!407833))

(declare-fun m!407835 () Bool)

(assert (=> b!305657 m!407835))

(assert (=> b!305657 m!407047))

(declare-fun m!407837 () Bool)

(assert (=> b!305657 m!407837))

(declare-fun m!407839 () Bool)

(assert (=> b!305657 m!407839))

(declare-fun m!407841 () Bool)

(assert (=> b!305657 m!407841))

(declare-fun m!407843 () Bool)

(assert (=> b!305657 m!407843))

(assert (=> b!305657 m!407837))

(assert (=> b!305657 m!407841))

(declare-fun m!407845 () Bool)

(assert (=> b!305657 m!407845))

(declare-fun m!407847 () Bool)

(assert (=> b!305657 m!407847))

(declare-fun m!407849 () Bool)

(assert (=> b!305657 m!407849))

(assert (=> b!305657 m!407845))

(assert (=> b!305657 m!407047))

(declare-fun m!407851 () Bool)

(assert (=> b!305657 m!407851))

(declare-fun m!407853 () Bool)

(assert (=> b!305657 m!407853))

(assert (=> b!305657 m!407853))

(declare-fun m!407855 () Bool)

(assert (=> b!305657 m!407855))

(assert (=> b!305657 m!407843))

(declare-fun m!407857 () Bool)

(assert (=> b!305657 m!407857))

(assert (=> b!305657 m!407851))

(assert (=> b!305657 m!407837))

(declare-fun m!407859 () Bool)

(assert (=> b!305657 m!407859))

(declare-fun m!407861 () Bool)

(assert (=> b!305657 m!407861))

(assert (=> b!305657 m!407047))

(declare-fun m!407863 () Bool)

(assert (=> b!305657 m!407863))

(assert (=> b!305656 m!407047))

(assert (=> b!305656 m!407837))

(declare-fun m!407865 () Bool)

(assert (=> bm!17700 m!407865))

(assert (=> bm!17703 m!407047))

(assert (=> bm!17703 m!407837))

(declare-fun m!407867 () Bool)

(assert (=> b!305660 m!407867))

(declare-fun m!407869 () Bool)

(assert (=> b!305660 m!407869))

(declare-fun m!407871 () Bool)

(assert (=> b!305660 m!407871))

(declare-fun m!407873 () Bool)

(assert (=> b!305660 m!407873))

(declare-fun m!407875 () Bool)

(assert (=> b!305660 m!407875))

(assert (=> b!305660 m!407871))

(assert (=> b!305660 m!407873))

(assert (=> b!305660 m!407867))

(declare-fun m!407877 () Bool)

(assert (=> b!305660 m!407877))

(assert (=> b!305660 m!407867))

(assert (=> d!93483 m!407851))

(declare-fun m!407879 () Bool)

(assert (=> d!93483 m!407879))

(declare-fun m!407881 () Bool)

(assert (=> d!93483 m!407881))

(declare-fun m!407883 () Bool)

(assert (=> d!93483 m!407883))

(assert (=> d!93483 m!407047))

(assert (=> d!93483 m!407829))

(assert (=> d!93483 m!407047))

(assert (=> d!93483 m!407851))

(assert (=> d!93483 m!407047))

(assert (=> d!93483 m!407879))

(assert (=> d!93483 m!407879))

(declare-fun m!407885 () Bool)

(assert (=> d!93483 m!407885))

(declare-fun m!407887 () Bool)

(assert (=> bm!17702 m!407887))

(assert (=> b!305122 d!93483))

(declare-fun d!93495 () Bool)

(declare-fun lt!130186 () BalanceConc!2752)

(assert (=> d!93495 (= (list!1699 lt!130186) (originalCharacters!818 separatorToken!170))))

(assert (=> d!93495 (= lt!130186 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (value!26403 separatorToken!170)))))

(assert (=> d!93495 (= (charsOf!418 separatorToken!170) lt!130186)))

(declare-fun b_lambda!10585 () Bool)

(assert (=> (not b_lambda!10585) (not d!93495)))

(declare-fun t!43175 () Bool)

(declare-fun tb!19283 () Bool)

(assert (=> (and b!305117 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170)))) t!43175) tb!19283))

(declare-fun b!305686 () Bool)

(declare-fun e!189990 () Bool)

(declare-fun tp!108503 () Bool)

(assert (=> b!305686 (= e!189990 (and (inv!4988 (c!57956 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (value!26403 separatorToken!170)))) tp!108503))))

(declare-fun result!23230 () Bool)

(assert (=> tb!19283 (= result!23230 (and (inv!4989 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (value!26403 separatorToken!170))) e!189990))))

(assert (= tb!19283 b!305686))

(declare-fun m!407889 () Bool)

(assert (=> b!305686 m!407889))

(declare-fun m!407891 () Bool)

(assert (=> tb!19283 m!407891))

(assert (=> d!93495 t!43175))

(declare-fun b_and!25801 () Bool)

(assert (= b_and!25795 (and (=> t!43175 result!23230) b_and!25801)))

(declare-fun tb!19285 () Bool)

(declare-fun t!43177 () Bool)

(assert (=> (and b!305112 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170)))) t!43177) tb!19285))

(declare-fun result!23232 () Bool)

(assert (= result!23232 result!23230))

(assert (=> d!93495 t!43177))

(declare-fun b_and!25803 () Bool)

(assert (= b_and!25797 (and (=> t!43177 result!23232) b_and!25803)))

(declare-fun t!43179 () Bool)

(declare-fun tb!19287 () Bool)

(assert (=> (and b!305125 (= (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170)))) t!43179) tb!19287))

(declare-fun result!23234 () Bool)

(assert (= result!23234 result!23230))

(assert (=> d!93495 t!43179))

(declare-fun b_and!25805 () Bool)

(assert (= b_and!25799 (and (=> t!43179 result!23234) b_and!25805)))

(declare-fun m!407893 () Bool)

(assert (=> d!93495 m!407893))

(declare-fun m!407895 () Bool)

(assert (=> d!93495 m!407895))

(assert (=> b!305122 d!93495))

(declare-fun lt!130187 () List!4043)

(declare-fun b!305690 () Bool)

(declare-fun e!189991 () Bool)

(assert (=> b!305690 (= e!189991 (or (not (= lt!129901 Nil!4033)) (= lt!130187 lt!129902)))))

(declare-fun d!93497 () Bool)

(assert (=> d!93497 e!189991))

(declare-fun res!138919 () Bool)

(assert (=> d!93497 (=> (not res!138919) (not e!189991))))

(assert (=> d!93497 (= res!138919 (= (content!602 lt!130187) ((_ map or) (content!602 lt!129902) (content!602 lt!129901))))))

(declare-fun e!189992 () List!4043)

(assert (=> d!93497 (= lt!130187 e!189992)))

(declare-fun c!58061 () Bool)

(assert (=> d!93497 (= c!58061 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93497 (= (++!1092 lt!129902 lt!129901) lt!130187)))

(declare-fun b!305689 () Bool)

(declare-fun res!138920 () Bool)

(assert (=> b!305689 (=> (not res!138920) (not e!189991))))

(assert (=> b!305689 (= res!138920 (= (size!3229 lt!130187) (+ (size!3229 lt!129902) (size!3229 lt!129901))))))

(declare-fun b!305687 () Bool)

(assert (=> b!305687 (= e!189992 lt!129901)))

(declare-fun b!305688 () Bool)

(assert (=> b!305688 (= e!189992 (Cons!4033 (h!9430 lt!129902) (++!1092 (t!43135 lt!129902) lt!129901)))))

(assert (= (and d!93497 c!58061) b!305687))

(assert (= (and d!93497 (not c!58061)) b!305688))

(assert (= (and d!93497 res!138919) b!305689))

(assert (= (and b!305689 res!138920) b!305690))

(declare-fun m!407897 () Bool)

(assert (=> d!93497 m!407897))

(assert (=> d!93497 m!407229))

(declare-fun m!407899 () Bool)

(assert (=> d!93497 m!407899))

(declare-fun m!407901 () Bool)

(assert (=> b!305689 m!407901))

(assert (=> b!305689 m!407235))

(declare-fun m!407903 () Bool)

(assert (=> b!305689 m!407903))

(declare-fun m!407905 () Bool)

(assert (=> b!305688 m!407905))

(assert (=> b!305122 d!93497))

(declare-fun d!93499 () Bool)

(assert (=> d!93499 (= (list!1699 (charsOf!418 (h!9432 tokens!465))) (list!1703 (c!57956 (charsOf!418 (h!9432 tokens!465)))))))

(declare-fun bs!35336 () Bool)

(assert (= bs!35336 d!93499))

(declare-fun m!407907 () Bool)

(assert (=> bs!35336 m!407907))

(assert (=> b!305122 d!93499))

(declare-fun d!93501 () Bool)

(declare-fun lt!130188 () BalanceConc!2752)

(assert (=> d!93501 (= (list!1699 lt!130188) (originalCharacters!818 (h!9432 tokens!465)))))

(assert (=> d!93501 (= lt!130188 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (value!26403 (h!9432 tokens!465))))))

(assert (=> d!93501 (= (charsOf!418 (h!9432 tokens!465)) lt!130188)))

(declare-fun b_lambda!10587 () Bool)

(assert (=> (not b_lambda!10587) (not d!93501)))

(assert (=> d!93501 t!43163))

(declare-fun b_and!25807 () Bool)

(assert (= b_and!25801 (and (=> t!43163 result!23222) b_and!25807)))

(assert (=> d!93501 t!43165))

(declare-fun b_and!25809 () Bool)

(assert (= b_and!25803 (and (=> t!43165 result!23226) b_and!25809)))

(assert (=> d!93501 t!43167))

(declare-fun b_and!25811 () Bool)

(assert (= b_and!25805 (and (=> t!43167 result!23228) b_and!25811)))

(declare-fun m!407909 () Bool)

(assert (=> d!93501 m!407909))

(assert (=> d!93501 m!407641))

(assert (=> b!305122 d!93501))

(declare-fun d!93503 () Bool)

(assert (=> d!93503 (= (list!1699 (charsOf!418 separatorToken!170)) (list!1703 (c!57956 (charsOf!418 separatorToken!170))))))

(declare-fun bs!35337 () Bool)

(assert (= bs!35337 d!93503))

(declare-fun m!407911 () Bool)

(assert (=> bs!35337 m!407911))

(assert (=> b!305122 d!93503))

(declare-fun d!93505 () Bool)

(assert (=> d!93505 (= (++!1092 (++!1092 lt!129902 lt!129904) lt!129903) (++!1092 lt!129902 (++!1092 lt!129904 lt!129903)))))

(declare-fun lt!130196 () Unit!5634)

(declare-fun choose!2674 (List!4043 List!4043 List!4043) Unit!5634)

(assert (=> d!93505 (= lt!130196 (choose!2674 lt!129902 lt!129904 lt!129903))))

(assert (=> d!93505 (= (lemmaConcatAssociativity!482 lt!129902 lt!129904 lt!129903) lt!130196)))

(declare-fun bs!35338 () Bool)

(assert (= bs!35338 d!93505))

(assert (=> bs!35338 m!407063))

(declare-fun m!407923 () Bool)

(assert (=> bs!35338 m!407923))

(declare-fun m!407925 () Bool)

(assert (=> bs!35338 m!407925))

(assert (=> bs!35338 m!407063))

(assert (=> bs!35338 m!407053))

(assert (=> bs!35338 m!407055))

(assert (=> bs!35338 m!407053))

(assert (=> b!305122 d!93505))

(declare-fun e!189996 () Bool)

(declare-fun lt!130197 () List!4043)

(declare-fun b!305703 () Bool)

(assert (=> b!305703 (= e!189996 (or (not (= lt!129903 Nil!4033)) (= lt!130197 (++!1092 lt!129902 lt!129904))))))

(declare-fun d!93507 () Bool)

(assert (=> d!93507 e!189996))

(declare-fun res!138928 () Bool)

(assert (=> d!93507 (=> (not res!138928) (not e!189996))))

(assert (=> d!93507 (= res!138928 (= (content!602 lt!130197) ((_ map or) (content!602 (++!1092 lt!129902 lt!129904)) (content!602 lt!129903))))))

(declare-fun e!189997 () List!4043)

(assert (=> d!93507 (= lt!130197 e!189997)))

(declare-fun c!58063 () Bool)

(assert (=> d!93507 (= c!58063 ((_ is Nil!4033) (++!1092 lt!129902 lt!129904)))))

(assert (=> d!93507 (= (++!1092 (++!1092 lt!129902 lt!129904) lt!129903) lt!130197)))

(declare-fun b!305702 () Bool)

(declare-fun res!138929 () Bool)

(assert (=> b!305702 (=> (not res!138929) (not e!189996))))

(assert (=> b!305702 (= res!138929 (= (size!3229 lt!130197) (+ (size!3229 (++!1092 lt!129902 lt!129904)) (size!3229 lt!129903))))))

(declare-fun b!305700 () Bool)

(assert (=> b!305700 (= e!189997 lt!129903)))

(declare-fun b!305701 () Bool)

(assert (=> b!305701 (= e!189997 (Cons!4033 (h!9430 (++!1092 lt!129902 lt!129904)) (++!1092 (t!43135 (++!1092 lt!129902 lt!129904)) lt!129903)))))

(assert (= (and d!93507 c!58063) b!305700))

(assert (= (and d!93507 (not c!58063)) b!305701))

(assert (= (and d!93507 res!138928) b!305702))

(assert (= (and b!305702 res!138929) b!305703))

(declare-fun m!407945 () Bool)

(assert (=> d!93507 m!407945))

(assert (=> d!93507 m!407053))

(declare-fun m!407947 () Bool)

(assert (=> d!93507 m!407947))

(assert (=> d!93507 m!407703))

(declare-fun m!407951 () Bool)

(assert (=> b!305702 m!407951))

(assert (=> b!305702 m!407053))

(declare-fun m!407953 () Bool)

(assert (=> b!305702 m!407953))

(assert (=> b!305702 m!407709))

(declare-fun m!407955 () Bool)

(assert (=> b!305701 m!407955))

(assert (=> b!305122 d!93507))

(declare-fun b!305707 () Bool)

(declare-fun lt!130198 () List!4043)

(declare-fun e!189998 () Bool)

(assert (=> b!305707 (= e!189998 (or (not (= lt!129904 Nil!4033)) (= lt!130198 lt!129902)))))

(declare-fun d!93511 () Bool)

(assert (=> d!93511 e!189998))

(declare-fun res!138930 () Bool)

(assert (=> d!93511 (=> (not res!138930) (not e!189998))))

(assert (=> d!93511 (= res!138930 (= (content!602 lt!130198) ((_ map or) (content!602 lt!129902) (content!602 lt!129904))))))

(declare-fun e!189999 () List!4043)

(assert (=> d!93511 (= lt!130198 e!189999)))

(declare-fun c!58064 () Bool)

(assert (=> d!93511 (= c!58064 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93511 (= (++!1092 lt!129902 lt!129904) lt!130198)))

(declare-fun b!305706 () Bool)

(declare-fun res!138931 () Bool)

(assert (=> b!305706 (=> (not res!138931) (not e!189998))))

(assert (=> b!305706 (= res!138931 (= (size!3229 lt!130198) (+ (size!3229 lt!129902) (size!3229 lt!129904))))))

(declare-fun b!305704 () Bool)

(assert (=> b!305704 (= e!189999 lt!129904)))

(declare-fun b!305705 () Bool)

(assert (=> b!305705 (= e!189999 (Cons!4033 (h!9430 lt!129902) (++!1092 (t!43135 lt!129902) lt!129904)))))

(assert (= (and d!93511 c!58064) b!305704))

(assert (= (and d!93511 (not c!58064)) b!305705))

(assert (= (and d!93511 res!138930) b!305706))

(assert (= (and b!305706 res!138931) b!305707))

(declare-fun m!407957 () Bool)

(assert (=> d!93511 m!407957))

(assert (=> d!93511 m!407229))

(assert (=> d!93511 m!407701))

(declare-fun m!407959 () Bool)

(assert (=> b!305706 m!407959))

(assert (=> b!305706 m!407235))

(assert (=> b!305706 m!407707))

(declare-fun m!407961 () Bool)

(assert (=> b!305705 m!407961))

(assert (=> b!305122 d!93511))

(declare-fun d!93513 () Bool)

(assert (=> d!93513 (= (isEmpty!2736 rules!1920) ((_ is Nil!4034) rules!1920))))

(assert (=> b!305124 d!93513))

(declare-fun d!93515 () Bool)

(assert (=> d!93515 (= (isEmpty!2738 (_2!2539 lt!129898)) ((_ is Nil!4033) (_2!2539 lt!129898)))))

(assert (=> b!305136 d!93515))

(declare-fun e!190000 () Bool)

(declare-fun lt!130201 () List!4043)

(declare-fun b!305711 () Bool)

(assert (=> b!305711 (= e!190000 (or (not (= lt!129903 Nil!4033)) (= lt!130201 lt!129902)))))

(declare-fun d!93517 () Bool)

(assert (=> d!93517 e!190000))

(declare-fun res!138932 () Bool)

(assert (=> d!93517 (=> (not res!138932) (not e!190000))))

(assert (=> d!93517 (= res!138932 (= (content!602 lt!130201) ((_ map or) (content!602 lt!129902) (content!602 lt!129903))))))

(declare-fun e!190001 () List!4043)

(assert (=> d!93517 (= lt!130201 e!190001)))

(declare-fun c!58065 () Bool)

(assert (=> d!93517 (= c!58065 ((_ is Nil!4033) lt!129902))))

(assert (=> d!93517 (= (++!1092 lt!129902 lt!129903) lt!130201)))

(declare-fun b!305710 () Bool)

(declare-fun res!138933 () Bool)

(assert (=> b!305710 (=> (not res!138933) (not e!190000))))

(assert (=> b!305710 (= res!138933 (= (size!3229 lt!130201) (+ (size!3229 lt!129902) (size!3229 lt!129903))))))

(declare-fun b!305708 () Bool)

(assert (=> b!305708 (= e!190001 lt!129903)))

(declare-fun b!305709 () Bool)

(assert (=> b!305709 (= e!190001 (Cons!4033 (h!9430 lt!129902) (++!1092 (t!43135 lt!129902) lt!129903)))))

(assert (= (and d!93517 c!58065) b!305708))

(assert (= (and d!93517 (not c!58065)) b!305709))

(assert (= (and d!93517 res!138932) b!305710))

(assert (= (and b!305710 res!138933) b!305711))

(declare-fun m!407963 () Bool)

(assert (=> d!93517 m!407963))

(assert (=> d!93517 m!407229))

(assert (=> d!93517 m!407703))

(declare-fun m!407965 () Bool)

(assert (=> b!305710 m!407965))

(assert (=> b!305710 m!407235))

(assert (=> b!305710 m!407709))

(declare-fun m!407971 () Bool)

(assert (=> b!305709 m!407971))

(assert (=> b!305115 d!93517))

(declare-fun d!93521 () Bool)

(assert (=> d!93521 (= (inv!4983 (tag!993 (rule!1388 (h!9432 tokens!465)))) (= (mod (str.len (value!26402 (tag!993 (rule!1388 (h!9432 tokens!465))))) 2) 0))))

(assert (=> b!305116 d!93521))

(declare-fun d!93523 () Bool)

(declare-fun res!138936 () Bool)

(declare-fun e!190003 () Bool)

(assert (=> d!93523 (=> (not res!138936) (not e!190003))))

(assert (=> d!93523 (= res!138936 (semiInverseModEq!289 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toValue!1534 (transformation!775 (rule!1388 (h!9432 tokens!465))))))))

(assert (=> d!93523 (= (inv!4986 (transformation!775 (rule!1388 (h!9432 tokens!465)))) e!190003)))

(declare-fun b!305714 () Bool)

(assert (=> b!305714 (= e!190003 (equivClasses!272 (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toValue!1534 (transformation!775 (rule!1388 (h!9432 tokens!465))))))))

(assert (= (and d!93523 res!138936) b!305714))

(declare-fun m!407973 () Bool)

(assert (=> d!93523 m!407973))

(declare-fun m!407975 () Bool)

(assert (=> b!305714 m!407975))

(assert (=> b!305116 d!93523))

(declare-fun d!93525 () Bool)

(declare-fun isEmpty!2743 (Option!917) Bool)

(assert (=> d!93525 (= (isDefined!756 (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465))))) (not (isEmpty!2743 (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))

(declare-fun bs!35340 () Bool)

(assert (= bs!35340 d!93525))

(assert (=> bs!35340 m!407101))

(declare-fun m!407983 () Bool)

(assert (=> bs!35340 m!407983))

(assert (=> b!305137 d!93525))

(declare-fun b!305756 () Bool)

(declare-fun e!190032 () Bool)

(declare-fun e!190034 () Bool)

(assert (=> b!305756 (= e!190032 e!190034)))

(declare-fun res!138963 () Bool)

(assert (=> b!305756 (=> (not res!138963) (not e!190034))))

(declare-fun lt!130228 () Option!917)

(declare-fun get!1376 (Option!917) tuple2!4650)

(assert (=> b!305756 (= res!138963 (= (_1!2541 (get!1376 lt!130228)) (_1!2539 (get!1375 (maxPrefix!377 thiss!17480 rules!1920 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))))

(declare-fun b!305757 () Bool)

(assert (=> b!305757 (= e!190034 (= (list!1699 (_2!2541 (get!1376 lt!130228))) (_2!2539 (get!1375 (maxPrefix!377 thiss!17480 rules!1920 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))))

(declare-fun b!305758 () Bool)

(declare-fun e!190029 () Option!917)

(declare-fun call!17716 () Option!917)

(assert (=> b!305758 (= e!190029 call!17716)))

(declare-fun d!93529 () Bool)

(declare-fun e!190030 () Bool)

(assert (=> d!93529 e!190030))

(declare-fun res!138964 () Bool)

(assert (=> d!93529 (=> (not res!138964) (not e!190030))))

(declare-fun maxPrefixZipper!138 (LexerInterface!661 List!4044 List!4043) Option!916)

(assert (=> d!93529 (= res!138964 (= (isDefined!756 lt!130228) (isDefined!755 (maxPrefixZipper!138 thiss!17480 rules!1920 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465))))))))))

(assert (=> d!93529 (= lt!130228 e!190029)))

(declare-fun c!58075 () Bool)

(assert (=> d!93529 (= c!58075 (and ((_ is Cons!4034) rules!1920) ((_ is Nil!4034) (t!43136 rules!1920))))))

(declare-fun lt!130226 () Unit!5634)

(declare-fun lt!130225 () Unit!5634)

(assert (=> d!93529 (= lt!130226 lt!130225)))

(declare-fun lt!130222 () List!4043)

(declare-fun lt!130224 () List!4043)

(assert (=> d!93529 (isPrefix!435 lt!130222 lt!130224)))

(assert (=> d!93529 (= lt!130225 (lemmaIsPrefixRefl!234 lt!130222 lt!130224))))

(assert (=> d!93529 (= lt!130224 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))

(assert (=> d!93529 (= lt!130222 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))

(assert (=> d!93529 (rulesValidInductive!229 thiss!17480 rules!1920)))

(assert (=> d!93529 (= (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))) lt!130228)))

(declare-fun b!305759 () Bool)

(declare-fun lt!130223 () Option!917)

(declare-fun lt!130227 () Option!917)

(assert (=> b!305759 (= e!190029 (ite (and ((_ is None!916) lt!130223) ((_ is None!916) lt!130227)) None!916 (ite ((_ is None!916) lt!130227) lt!130223 (ite ((_ is None!916) lt!130223) lt!130227 (ite (>= (size!3225 (_1!2541 (v!14909 lt!130223))) (size!3225 (_1!2541 (v!14909 lt!130227)))) lt!130223 lt!130227)))))))

(assert (=> b!305759 (= lt!130223 call!17716)))

(assert (=> b!305759 (= lt!130227 (maxPrefixZipperSequence!340 thiss!17480 (t!43136 rules!1920) (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))

(declare-fun b!305760 () Bool)

(declare-fun res!138962 () Bool)

(assert (=> b!305760 (=> (not res!138962) (not e!190030))))

(declare-fun e!190033 () Bool)

(assert (=> b!305760 (= res!138962 e!190033)))

(declare-fun res!138961 () Bool)

(assert (=> b!305760 (=> res!138961 e!190033)))

(assert (=> b!305760 (= res!138961 (not (isDefined!756 lt!130228)))))

(declare-fun bm!17711 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!139 (LexerInterface!661 Rule!1350 BalanceConc!2752) Option!917)

(assert (=> bm!17711 (= call!17716 (maxPrefixOneRuleZipperSequence!139 thiss!17480 (h!9431 rules!1920) (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))

(declare-fun b!305761 () Bool)

(declare-fun e!190031 () Bool)

(assert (=> b!305761 (= e!190031 (= (list!1699 (_2!2541 (get!1376 lt!130228))) (_2!2539 (get!1375 (maxPrefixZipper!138 thiss!17480 rules!1920 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))))

(declare-fun b!305762 () Bool)

(assert (=> b!305762 (= e!190030 e!190032)))

(declare-fun res!138960 () Bool)

(assert (=> b!305762 (=> res!138960 e!190032)))

(assert (=> b!305762 (= res!138960 (not (isDefined!756 lt!130228)))))

(declare-fun b!305763 () Bool)

(assert (=> b!305763 (= e!190033 e!190031)))

(declare-fun res!138965 () Bool)

(assert (=> b!305763 (=> (not res!138965) (not e!190031))))

(assert (=> b!305763 (= res!138965 (= (_1!2541 (get!1376 lt!130228)) (_1!2539 (get!1375 (maxPrefixZipper!138 thiss!17480 rules!1920 (list!1699 (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465)))))))))))

(assert (= (and d!93529 c!58075) b!305758))

(assert (= (and d!93529 (not c!58075)) b!305759))

(assert (= (or b!305758 b!305759) bm!17711))

(assert (= (and d!93529 res!138964) b!305760))

(assert (= (and b!305760 (not res!138961)) b!305763))

(assert (= (and b!305763 res!138965) b!305761))

(assert (= (and b!305760 res!138962) b!305762))

(assert (= (and b!305762 (not res!138960)) b!305756))

(assert (= (and b!305756 res!138963) b!305757))

(assert (=> b!305759 m!407099))

(declare-fun m!408027 () Bool)

(assert (=> b!305759 m!408027))

(declare-fun m!408029 () Bool)

(assert (=> b!305757 m!408029))

(declare-fun m!408031 () Bool)

(assert (=> b!305757 m!408031))

(declare-fun m!408033 () Bool)

(assert (=> b!305757 m!408033))

(declare-fun m!408035 () Bool)

(assert (=> b!305757 m!408035))

(assert (=> b!305757 m!408031))

(declare-fun m!408037 () Bool)

(assert (=> b!305757 m!408037))

(assert (=> b!305757 m!407099))

(assert (=> b!305757 m!408029))

(declare-fun m!408039 () Bool)

(assert (=> b!305761 m!408039))

(declare-fun m!408041 () Bool)

(assert (=> b!305761 m!408041))

(assert (=> b!305761 m!408033))

(assert (=> b!305761 m!408035))

(assert (=> b!305761 m!407099))

(assert (=> b!305761 m!408029))

(assert (=> b!305761 m!408029))

(assert (=> b!305761 m!408039))

(assert (=> b!305763 m!408035))

(assert (=> b!305763 m!407099))

(assert (=> b!305763 m!408029))

(assert (=> b!305763 m!408029))

(assert (=> b!305763 m!408039))

(assert (=> b!305763 m!408039))

(assert (=> b!305763 m!408041))

(declare-fun m!408043 () Bool)

(assert (=> b!305760 m!408043))

(assert (=> d!93529 m!408043))

(declare-fun m!408045 () Bool)

(assert (=> d!93529 m!408045))

(declare-fun m!408047 () Bool)

(assert (=> d!93529 m!408047))

(assert (=> d!93529 m!408039))

(declare-fun m!408049 () Bool)

(assert (=> d!93529 m!408049))

(assert (=> d!93529 m!407603))

(assert (=> d!93529 m!407099))

(assert (=> d!93529 m!408029))

(assert (=> d!93529 m!408029))

(assert (=> d!93529 m!408039))

(assert (=> b!305762 m!408043))

(assert (=> b!305756 m!408035))

(assert (=> b!305756 m!407099))

(assert (=> b!305756 m!408029))

(assert (=> b!305756 m!408029))

(assert (=> b!305756 m!408031))

(assert (=> b!305756 m!408031))

(assert (=> b!305756 m!408037))

(assert (=> bm!17711 m!407099))

(declare-fun m!408051 () Bool)

(assert (=> bm!17711 m!408051))

(assert (=> b!305137 d!93529))

(declare-fun d!93545 () Bool)

(assert (=> d!93545 (= (seqFromList!915 (originalCharacters!818 (h!9432 tokens!465))) (fromListB!376 (originalCharacters!818 (h!9432 tokens!465))))))

(declare-fun bs!35342 () Bool)

(assert (= bs!35342 d!93545))

(declare-fun m!408053 () Bool)

(assert (=> bs!35342 m!408053))

(assert (=> b!305137 d!93545))

(declare-fun d!93547 () Bool)

(assert (=> d!93547 (dynLambda!2198 lambda!10388 (h!9432 tokens!465))))

(declare-fun lt!130231 () Unit!5634)

(declare-fun choose!2676 (List!4045 Int Token!1294) Unit!5634)

(assert (=> d!93547 (= lt!130231 (choose!2676 tokens!465 lambda!10388 (h!9432 tokens!465)))))

(declare-fun e!190037 () Bool)

(assert (=> d!93547 e!190037))

(declare-fun res!138968 () Bool)

(assert (=> d!93547 (=> (not res!138968) (not e!190037))))

(assert (=> d!93547 (= res!138968 (forall!1062 tokens!465 lambda!10388))))

(assert (=> d!93547 (= (forallContained!328 tokens!465 lambda!10388 (h!9432 tokens!465)) lt!130231)))

(declare-fun b!305766 () Bool)

(declare-fun contains!795 (List!4045 Token!1294) Bool)

(assert (=> b!305766 (= e!190037 (contains!795 tokens!465 (h!9432 tokens!465)))))

(assert (= (and d!93547 res!138968) b!305766))

(declare-fun b_lambda!10591 () Bool)

(assert (=> (not b_lambda!10591) (not d!93547)))

(declare-fun m!408055 () Bool)

(assert (=> d!93547 m!408055))

(declare-fun m!408057 () Bool)

(assert (=> d!93547 m!408057))

(declare-fun m!408059 () Bool)

(assert (=> d!93547 m!408059))

(declare-fun m!408061 () Bool)

(assert (=> b!305766 m!408061))

(assert (=> b!305137 d!93547))

(declare-fun d!93549 () Bool)

(assert (=> d!93549 (= (list!1699 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 lt!129914 separatorToken!170 0)) (list!1703 (c!57956 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 lt!129914 separatorToken!170 0))))))

(declare-fun bs!35343 () Bool)

(assert (= bs!35343 d!93549))

(declare-fun m!408063 () Bool)

(assert (=> bs!35343 m!408063))

(assert (=> b!305139 d!93549))

(declare-fun bs!35344 () Bool)

(declare-fun d!93551 () Bool)

(assert (= bs!35344 (and d!93551 b!305120)))

(declare-fun lambda!10415 () Int)

(assert (=> bs!35344 (= lambda!10415 lambda!10387)))

(declare-fun bs!35345 () Bool)

(assert (= bs!35345 (and d!93551 d!93483)))

(assert (=> bs!35345 (= lambda!10415 lambda!10413)))

(declare-fun bs!35346 () Bool)

(assert (= bs!35346 (and d!93551 d!93363)))

(assert (=> bs!35346 (not (= lambda!10415 lambda!10393))))

(declare-fun bs!35347 () Bool)

(assert (= bs!35347 (and d!93551 b!305608)))

(assert (=> bs!35347 (not (= lambda!10415 lambda!10408))))

(declare-fun bs!35348 () Bool)

(assert (= bs!35348 (and d!93551 b!305657)))

(assert (=> bs!35348 (not (= lambda!10415 lambda!10414))))

(declare-fun bs!35349 () Bool)

(assert (= bs!35349 (and d!93551 b!305137)))

(assert (=> bs!35349 (not (= lambda!10415 lambda!10388))))

(declare-fun bs!35350 () Bool)

(declare-fun b!305768 () Bool)

(assert (= bs!35350 (and b!305768 b!305120)))

(declare-fun lambda!10416 () Int)

(assert (=> bs!35350 (not (= lambda!10416 lambda!10387))))

(declare-fun bs!35351 () Bool)

(assert (= bs!35351 (and b!305768 d!93483)))

(assert (=> bs!35351 (not (= lambda!10416 lambda!10413))))

(declare-fun bs!35352 () Bool)

(assert (= bs!35352 (and b!305768 d!93363)))

(assert (=> bs!35352 (= lambda!10416 lambda!10393)))

(declare-fun bs!35353 () Bool)

(assert (= bs!35353 (and b!305768 b!305608)))

(assert (=> bs!35353 (= lambda!10416 lambda!10408)))

(declare-fun bs!35354 () Bool)

(assert (= bs!35354 (and b!305768 d!93551)))

(assert (=> bs!35354 (not (= lambda!10416 lambda!10415))))

(declare-fun bs!35355 () Bool)

(assert (= bs!35355 (and b!305768 b!305657)))

(assert (=> bs!35355 (= lambda!10416 lambda!10414)))

(declare-fun bs!35356 () Bool)

(assert (= bs!35356 (and b!305768 b!305137)))

(assert (=> bs!35356 (= lambda!10416 lambda!10388)))

(declare-fun b!305778 () Bool)

(declare-fun e!190046 () Bool)

(assert (=> b!305778 (= e!190046 true)))

(declare-fun b!305777 () Bool)

(declare-fun e!190045 () Bool)

(assert (=> b!305777 (= e!190045 e!190046)))

(declare-fun b!305776 () Bool)

(declare-fun e!190044 () Bool)

(assert (=> b!305776 (= e!190044 e!190045)))

(assert (=> b!305768 e!190044))

(assert (= b!305777 b!305778))

(assert (= b!305776 b!305777))

(assert (= (and b!305768 ((_ is Cons!4034) rules!1920)) b!305776))

(assert (=> b!305778 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10416))))

(assert (=> b!305778 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10416))))

(assert (=> b!305768 true))

(declare-fun c!58077 () Bool)

(declare-fun call!17721 () Token!1294)

(declare-fun bm!17712 () Bool)

(declare-fun call!17719 () BalanceConc!2752)

(declare-fun call!17720 () Token!1294)

(assert (=> bm!17712 (= call!17719 (charsOf!418 (ite c!58077 call!17721 call!17720)))))

(declare-fun b!305767 () Bool)

(declare-fun e!190040 () Bool)

(declare-fun lt!130242 () Option!917)

(assert (=> b!305767 (= e!190040 (= (_1!2541 (v!14909 lt!130242)) (apply!879 lt!129914 0)))))

(declare-fun lt!130235 () BalanceConc!2752)

(assert (=> d!93551 (= (list!1699 lt!130235) (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (dropList!192 lt!129914 0) separatorToken!170))))

(declare-fun e!190039 () BalanceConc!2752)

(assert (=> d!93551 (= lt!130235 e!190039)))

(declare-fun c!58076 () Bool)

(assert (=> d!93551 (= c!58076 (>= 0 (size!3226 lt!129914)))))

(declare-fun lt!130237 () Unit!5634)

(assert (=> d!93551 (= lt!130237 (lemmaContentSubsetPreservesForall!136 (list!1700 lt!129914) (dropList!192 lt!129914 0) lambda!10415))))

(declare-fun e!190038 () Bool)

(assert (=> d!93551 e!190038))

(declare-fun res!138969 () Bool)

(assert (=> d!93551 (=> (not res!138969) (not e!190038))))

(assert (=> d!93551 (= res!138969 (>= 0 0))))

(assert (=> d!93551 (= (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 lt!129914 separatorToken!170 0) lt!130235)))

(declare-fun bm!17713 () Bool)

(declare-fun c!58078 () Bool)

(declare-fun call!17718 () BalanceConc!2752)

(assert (=> bm!17713 (= call!17718 (charsOf!418 (ite c!58078 separatorToken!170 call!17720)))))

(declare-fun bm!17714 () Bool)

(declare-fun lt!130244 () BalanceConc!2752)

(declare-fun call!17717 () BalanceConc!2752)

(assert (=> bm!17714 (= call!17717 (++!1094 call!17719 (ite c!58077 lt!130244 call!17718)))))

(declare-fun e!190041 () BalanceConc!2752)

(assert (=> b!305768 (= e!190039 e!190041)))

(declare-fun lt!130233 () List!4045)

(assert (=> b!305768 (= lt!130233 (list!1700 lt!129914))))

(declare-fun lt!130239 () Unit!5634)

(assert (=> b!305768 (= lt!130239 (lemmaDropApply!232 lt!130233 0))))

(assert (=> b!305768 (= (head!956 (drop!247 lt!130233 0)) (apply!881 lt!130233 0))))

(declare-fun lt!130241 () Unit!5634)

(assert (=> b!305768 (= lt!130241 lt!130239)))

(declare-fun lt!130232 () List!4045)

(assert (=> b!305768 (= lt!130232 (list!1700 lt!129914))))

(declare-fun lt!130245 () Unit!5634)

(assert (=> b!305768 (= lt!130245 (lemmaDropTail!224 lt!130232 0))))

(assert (=> b!305768 (= (tail!534 (drop!247 lt!130232 0)) (drop!247 lt!130232 (+ 0 1)))))

(declare-fun lt!130243 () Unit!5634)

(assert (=> b!305768 (= lt!130243 lt!130245)))

(declare-fun lt!130236 () Unit!5634)

(assert (=> b!305768 (= lt!130236 (forallContained!328 (list!1700 lt!129914) lambda!10416 (apply!879 lt!129914 0)))))

(assert (=> b!305768 (= lt!130244 (printWithSeparatorTokenWhenNeededRec!334 thiss!17480 rules!1920 lt!129914 separatorToken!170 (+ 0 1)))))

(assert (=> b!305768 (= lt!130242 (maxPrefixZipperSequence!340 thiss!17480 rules!1920 (++!1094 (charsOf!418 (apply!879 lt!129914 0)) lt!130244)))))

(declare-fun res!138971 () Bool)

(assert (=> b!305768 (= res!138971 ((_ is Some!916) lt!130242))))

(assert (=> b!305768 (=> (not res!138971) (not e!190040))))

(assert (=> b!305768 (= c!58077 e!190040)))

(declare-fun b!305769 () Bool)

(declare-fun e!190043 () Bool)

(assert (=> b!305769 (= c!58078 e!190043)))

(declare-fun res!138970 () Bool)

(assert (=> b!305769 (=> (not res!138970) (not e!190043))))

(assert (=> b!305769 (= res!138970 ((_ is Some!916) lt!130242))))

(declare-fun e!190042 () BalanceConc!2752)

(assert (=> b!305769 (= e!190041 e!190042)))

(declare-fun b!305770 () Bool)

(assert (=> b!305770 (= e!190041 call!17717)))

(declare-fun bm!17715 () Bool)

(assert (=> bm!17715 (= call!17721 (apply!879 lt!129914 0))))

(declare-fun b!305771 () Bool)

(assert (=> b!305771 (= e!190042 (BalanceConc!2753 Empty!1372))))

(assert (=> b!305771 (= (print!386 thiss!17480 (singletonSeq!321 call!17720)) (printTailRec!347 thiss!17480 (singletonSeq!321 call!17720) 0 (BalanceConc!2753 Empty!1372)))))

(declare-fun lt!130240 () Unit!5634)

(declare-fun Unit!5648 () Unit!5634)

(assert (=> b!305771 (= lt!130240 Unit!5648)))

(declare-fun lt!130238 () Unit!5634)

(assert (=> b!305771 (= lt!130238 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!140 thiss!17480 rules!1920 (list!1699 call!17718) (list!1699 lt!130244)))))

(assert (=> b!305771 false))

(declare-fun lt!130234 () Unit!5634)

(declare-fun Unit!5649 () Unit!5634)

(assert (=> b!305771 (= lt!130234 Unit!5649)))

(declare-fun b!305772 () Bool)

(assert (=> b!305772 (= e!190038 (<= 0 (size!3226 lt!129914)))))

(declare-fun b!305773 () Bool)

(assert (=> b!305773 (= e!190043 (not (= (_1!2541 (v!14909 lt!130242)) call!17721)))))

(declare-fun b!305774 () Bool)

(assert (=> b!305774 (= e!190042 (++!1094 call!17717 lt!130244))))

(declare-fun b!305775 () Bool)

(assert (=> b!305775 (= e!190039 (BalanceConc!2753 Empty!1372))))

(declare-fun bm!17716 () Bool)

(assert (=> bm!17716 (= call!17720 call!17721)))

(assert (= (and d!93551 res!138969) b!305772))

(assert (= (and d!93551 c!58076) b!305775))

(assert (= (and d!93551 (not c!58076)) b!305768))

(assert (= (and b!305768 res!138971) b!305767))

(assert (= (and b!305768 c!58077) b!305770))

(assert (= (and b!305768 (not c!58077)) b!305769))

(assert (= (and b!305769 res!138970) b!305773))

(assert (= (and b!305769 c!58078) b!305774))

(assert (= (and b!305769 (not c!58078)) b!305771))

(assert (= (or b!305774 b!305771) bm!17716))

(assert (= (or b!305774 b!305771) bm!17713))

(assert (= (or b!305770 bm!17716 b!305773) bm!17715))

(assert (= (or b!305770 b!305774) bm!17712))

(assert (= (or b!305770 b!305774) bm!17714))

(declare-fun m!408065 () Bool)

(assert (=> b!305772 m!408065))

(declare-fun m!408067 () Bool)

(assert (=> b!305774 m!408067))

(declare-fun m!408069 () Bool)

(assert (=> bm!17713 m!408069))

(declare-fun m!408071 () Bool)

(assert (=> b!305768 m!408071))

(declare-fun m!408073 () Bool)

(assert (=> b!305768 m!408073))

(declare-fun m!408075 () Bool)

(assert (=> b!305768 m!408075))

(declare-fun m!408077 () Bool)

(assert (=> b!305768 m!408077))

(declare-fun m!408079 () Bool)

(assert (=> b!305768 m!408079))

(assert (=> b!305768 m!408073))

(assert (=> b!305768 m!408077))

(declare-fun m!408081 () Bool)

(assert (=> b!305768 m!408081))

(declare-fun m!408083 () Bool)

(assert (=> b!305768 m!408083))

(declare-fun m!408085 () Bool)

(assert (=> b!305768 m!408085))

(assert (=> b!305768 m!408081))

(assert (=> b!305768 m!407211))

(declare-fun m!408087 () Bool)

(assert (=> b!305768 m!408087))

(assert (=> b!305768 m!408087))

(declare-fun m!408089 () Bool)

(assert (=> b!305768 m!408089))

(assert (=> b!305768 m!408079))

(declare-fun m!408091 () Bool)

(assert (=> b!305768 m!408091))

(assert (=> b!305768 m!407211))

(assert (=> b!305768 m!408073))

(declare-fun m!408093 () Bool)

(assert (=> b!305768 m!408093))

(declare-fun m!408095 () Bool)

(assert (=> b!305768 m!408095))

(declare-fun m!408097 () Bool)

(assert (=> b!305768 m!408097))

(assert (=> b!305767 m!408073))

(declare-fun m!408099 () Bool)

(assert (=> bm!17712 m!408099))

(assert (=> bm!17715 m!408073))

(declare-fun m!408101 () Bool)

(assert (=> b!305771 m!408101))

(declare-fun m!408103 () Bool)

(assert (=> b!305771 m!408103))

(declare-fun m!408105 () Bool)

(assert (=> b!305771 m!408105))

(declare-fun m!408107 () Bool)

(assert (=> b!305771 m!408107))

(declare-fun m!408109 () Bool)

(assert (=> b!305771 m!408109))

(assert (=> b!305771 m!408105))

(assert (=> b!305771 m!408107))

(assert (=> b!305771 m!408101))

(declare-fun m!408111 () Bool)

(assert (=> b!305771 m!408111))

(assert (=> b!305771 m!408101))

(assert (=> d!93551 m!407211))

(declare-fun m!408113 () Bool)

(assert (=> d!93551 m!408113))

(declare-fun m!408115 () Bool)

(assert (=> d!93551 m!408115))

(declare-fun m!408117 () Bool)

(assert (=> d!93551 m!408117))

(assert (=> d!93551 m!408065))

(assert (=> d!93551 m!407211))

(assert (=> d!93551 m!408113))

(assert (=> d!93551 m!408113))

(declare-fun m!408119 () Bool)

(assert (=> d!93551 m!408119))

(declare-fun m!408121 () Bool)

(assert (=> bm!17714 m!408121))

(assert (=> b!305139 d!93551))

(declare-fun bs!35357 () Bool)

(declare-fun b!305785 () Bool)

(assert (= bs!35357 (and b!305785 b!305120)))

(declare-fun lambda!10417 () Int)

(assert (=> bs!35357 (not (= lambda!10417 lambda!10387))))

(declare-fun bs!35358 () Bool)

(assert (= bs!35358 (and b!305785 d!93483)))

(assert (=> bs!35358 (not (= lambda!10417 lambda!10413))))

(declare-fun bs!35359 () Bool)

(assert (= bs!35359 (and b!305785 d!93363)))

(assert (=> bs!35359 (= lambda!10417 lambda!10393)))

(declare-fun bs!35360 () Bool)

(assert (= bs!35360 (and b!305785 b!305608)))

(assert (=> bs!35360 (= lambda!10417 lambda!10408)))

(declare-fun bs!35361 () Bool)

(assert (= bs!35361 (and b!305785 d!93551)))

(assert (=> bs!35361 (not (= lambda!10417 lambda!10415))))

(declare-fun bs!35362 () Bool)

(assert (= bs!35362 (and b!305785 b!305768)))

(assert (=> bs!35362 (= lambda!10417 lambda!10416)))

(declare-fun bs!35363 () Bool)

(assert (= bs!35363 (and b!305785 b!305657)))

(assert (=> bs!35363 (= lambda!10417 lambda!10414)))

(declare-fun bs!35364 () Bool)

(assert (= bs!35364 (and b!305785 b!305137)))

(assert (=> bs!35364 (= lambda!10417 lambda!10388)))

(declare-fun b!305789 () Bool)

(declare-fun e!190053 () Bool)

(assert (=> b!305789 (= e!190053 true)))

(declare-fun b!305788 () Bool)

(declare-fun e!190052 () Bool)

(assert (=> b!305788 (= e!190052 e!190053)))

(declare-fun b!305787 () Bool)

(declare-fun e!190051 () Bool)

(assert (=> b!305787 (= e!190051 e!190052)))

(assert (=> b!305785 e!190051))

(assert (= b!305788 b!305789))

(assert (= b!305787 b!305788))

(assert (= (and b!305785 ((_ is Cons!4034) rules!1920)) b!305787))

(assert (=> b!305789 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10417))))

(assert (=> b!305789 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 rules!1920)))) (dynLambda!2194 order!3263 lambda!10417))))

(assert (=> b!305785 true))

(declare-fun b!305779 () Bool)

(declare-fun e!190050 () BalanceConc!2752)

(declare-fun call!17724 () BalanceConc!2752)

(assert (=> b!305779 (= e!190050 call!17724)))

(declare-fun b!305780 () Bool)

(declare-fun e!190048 () List!4043)

(assert (=> b!305780 (= e!190048 Nil!4033)))

(assert (=> b!305780 (= (print!386 thiss!17480 (singletonSeq!321 (h!9432 tokens!465))) (printTailRec!347 thiss!17480 (singletonSeq!321 (h!9432 tokens!465)) 0 (BalanceConc!2753 Empty!1372)))))

(declare-fun lt!130251 () Unit!5634)

(declare-fun Unit!5650 () Unit!5634)

(assert (=> b!305780 (= lt!130251 Unit!5650)))

(declare-fun call!17722 () List!4043)

(declare-fun lt!130250 () List!4043)

(declare-fun lt!130249 () Unit!5634)

(assert (=> b!305780 (= lt!130249 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!140 thiss!17480 rules!1920 call!17722 lt!130250))))

(assert (=> b!305780 false))

(declare-fun lt!130247 () Unit!5634)

(declare-fun Unit!5651 () Unit!5634)

(assert (=> b!305780 (= lt!130247 Unit!5651)))

(declare-fun bm!17717 () Bool)

(assert (=> bm!17717 (= call!17722 (list!1699 e!190050))))

(declare-fun c!58080 () Bool)

(declare-fun c!58082 () Bool)

(assert (=> bm!17717 (= c!58080 c!58082)))

(declare-fun b!305781 () Bool)

(declare-fun lt!130246 () Option!916)

(assert (=> b!305781 (= c!58082 (and ((_ is Some!915) lt!130246) (not (= (_1!2539 (v!14908 lt!130246)) (h!9432 tokens!465)))))))

(declare-fun e!190049 () List!4043)

(assert (=> b!305781 (= e!190049 e!190048)))

(declare-fun b!305782 () Bool)

(assert (=> b!305782 (= e!190050 (charsOf!418 separatorToken!170))))

(declare-fun b!305783 () Bool)

(declare-fun call!17723 () List!4043)

(assert (=> b!305783 (= e!190048 (++!1092 call!17723 lt!130250))))

(declare-fun d!93553 () Bool)

(declare-fun c!58079 () Bool)

(assert (=> d!93553 (= c!58079 ((_ is Cons!4035) tokens!465))))

(declare-fun e!190047 () List!4043)

(assert (=> d!93553 (= (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!190047)))

(declare-fun bm!17718 () Bool)

(declare-fun call!17726 () BalanceConc!2752)

(assert (=> bm!17718 (= call!17724 call!17726)))

(declare-fun b!305784 () Bool)

(assert (=> b!305784 (= e!190047 Nil!4033)))

(assert (=> b!305785 (= e!190047 e!190049)))

(declare-fun lt!130248 () Unit!5634)

(assert (=> b!305785 (= lt!130248 (forallContained!328 tokens!465 lambda!10417 (h!9432 tokens!465)))))

(assert (=> b!305785 (= lt!130250 (printWithSeparatorTokenWhenNeededList!342 thiss!17480 rules!1920 (t!43137 tokens!465) separatorToken!170))))

(assert (=> b!305785 (= lt!130246 (maxPrefix!377 thiss!17480 rules!1920 (++!1092 (list!1699 (charsOf!418 (h!9432 tokens!465))) lt!130250)))))

(declare-fun c!58081 () Bool)

(assert (=> b!305785 (= c!58081 (and ((_ is Some!915) lt!130246) (= (_1!2539 (v!14908 lt!130246)) (h!9432 tokens!465))))))

(declare-fun call!17725 () List!4043)

(declare-fun bm!17719 () Bool)

(assert (=> bm!17719 (= call!17725 (list!1699 (ite c!58081 call!17726 call!17724)))))

(declare-fun bm!17720 () Bool)

(assert (=> bm!17720 (= call!17726 (charsOf!418 (h!9432 tokens!465)))))

(declare-fun bm!17721 () Bool)

(assert (=> bm!17721 (= call!17723 (++!1092 call!17725 (ite c!58081 lt!130250 call!17722)))))

(declare-fun b!305786 () Bool)

(assert (=> b!305786 (= e!190049 call!17723)))

(assert (= (and d!93553 c!58079) b!305785))

(assert (= (and d!93553 (not c!58079)) b!305784))

(assert (= (and b!305785 c!58081) b!305786))

(assert (= (and b!305785 (not c!58081)) b!305781))

(assert (= (and b!305781 c!58082) b!305783))

(assert (= (and b!305781 (not c!58082)) b!305780))

(assert (= (or b!305783 b!305780) bm!17718))

(assert (= (or b!305783 b!305780) bm!17717))

(assert (= (and bm!17717 c!58080) b!305782))

(assert (= (and bm!17717 (not c!58080)) b!305779))

(assert (= (or b!305786 bm!17718) bm!17720))

(assert (= (or b!305786 b!305783) bm!17719))

(assert (= (or b!305786 b!305783) bm!17721))

(assert (=> b!305780 m!407041))

(assert (=> b!305780 m!407041))

(declare-fun m!408123 () Bool)

(assert (=> b!305780 m!408123))

(assert (=> b!305780 m!407041))

(declare-fun m!408125 () Bool)

(assert (=> b!305780 m!408125))

(declare-fun m!408127 () Bool)

(assert (=> b!305780 m!408127))

(declare-fun m!408129 () Bool)

(assert (=> bm!17721 m!408129))

(declare-fun m!408131 () Bool)

(assert (=> b!305785 m!408131))

(assert (=> b!305785 m!407051))

(assert (=> b!305785 m!407067))

(declare-fun m!408133 () Bool)

(assert (=> b!305785 m!408133))

(declare-fun m!408135 () Bool)

(assert (=> b!305785 m!408135))

(assert (=> b!305785 m!407069))

(assert (=> b!305785 m!408133))

(assert (=> b!305785 m!407067))

(assert (=> b!305785 m!407069))

(assert (=> b!305782 m!407057))

(declare-fun m!408137 () Bool)

(assert (=> bm!17717 m!408137))

(declare-fun m!408139 () Bool)

(assert (=> b!305783 m!408139))

(declare-fun m!408141 () Bool)

(assert (=> bm!17719 m!408141))

(assert (=> bm!17720 m!407067))

(assert (=> b!305139 d!93553))

(declare-fun d!93555 () Bool)

(declare-fun res!138972 () Bool)

(declare-fun e!190054 () Bool)

(assert (=> d!93555 (=> (not res!138972) (not e!190054))))

(assert (=> d!93555 (= res!138972 (not (isEmpty!2738 (originalCharacters!818 separatorToken!170))))))

(assert (=> d!93555 (= (inv!4987 separatorToken!170) e!190054)))

(declare-fun b!305790 () Bool)

(declare-fun res!138973 () Bool)

(assert (=> b!305790 (=> (not res!138973) (not e!190054))))

(assert (=> b!305790 (= res!138973 (= (originalCharacters!818 separatorToken!170) (list!1699 (dynLambda!2196 (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (value!26403 separatorToken!170)))))))

(declare-fun b!305791 () Bool)

(assert (=> b!305791 (= e!190054 (= (size!3225 separatorToken!170) (size!3229 (originalCharacters!818 separatorToken!170))))))

(assert (= (and d!93555 res!138972) b!305790))

(assert (= (and b!305790 res!138973) b!305791))

(declare-fun b_lambda!10593 () Bool)

(assert (=> (not b_lambda!10593) (not b!305790)))

(assert (=> b!305790 t!43175))

(declare-fun b_and!25819 () Bool)

(assert (= b_and!25807 (and (=> t!43175 result!23230) b_and!25819)))

(assert (=> b!305790 t!43177))

(declare-fun b_and!25821 () Bool)

(assert (= b_and!25809 (and (=> t!43177 result!23232) b_and!25821)))

(assert (=> b!305790 t!43179))

(declare-fun b_and!25823 () Bool)

(assert (= b_and!25811 (and (=> t!43179 result!23234) b_and!25823)))

(declare-fun m!408143 () Bool)

(assert (=> d!93555 m!408143))

(assert (=> b!305790 m!407895))

(assert (=> b!305790 m!407895))

(declare-fun m!408145 () Bool)

(assert (=> b!305790 m!408145))

(declare-fun m!408147 () Bool)

(assert (=> b!305791 m!408147))

(assert (=> start!32774 d!93555))

(declare-fun d!93557 () Bool)

(declare-fun lt!130252 () Bool)

(declare-fun e!190056 () Bool)

(assert (=> d!93557 (= lt!130252 e!190056)))

(declare-fun res!138976 () Bool)

(assert (=> d!93557 (=> (not res!138976) (not e!190056))))

(assert (=> d!93557 (= res!138976 (= (list!1700 (_1!2540 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 (h!9432 tokens!465)))))) (list!1700 (singletonSeq!321 (h!9432 tokens!465)))))))

(declare-fun e!190055 () Bool)

(assert (=> d!93557 (= lt!130252 e!190055)))

(declare-fun res!138974 () Bool)

(assert (=> d!93557 (=> (not res!138974) (not e!190055))))

(declare-fun lt!130253 () tuple2!4648)

(assert (=> d!93557 (= res!138974 (= (size!3226 (_1!2540 lt!130253)) 1))))

(assert (=> d!93557 (= lt!130253 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 (h!9432 tokens!465)))))))

(assert (=> d!93557 (not (isEmpty!2736 rules!1920))))

(assert (=> d!93557 (= (rulesProduceIndividualToken!410 thiss!17480 rules!1920 (h!9432 tokens!465)) lt!130252)))

(declare-fun b!305792 () Bool)

(declare-fun res!138975 () Bool)

(assert (=> b!305792 (=> (not res!138975) (not e!190055))))

(assert (=> b!305792 (= res!138975 (= (apply!879 (_1!2540 lt!130253) 0) (h!9432 tokens!465)))))

(declare-fun b!305793 () Bool)

(assert (=> b!305793 (= e!190055 (isEmpty!2741 (_2!2540 lt!130253)))))

(declare-fun b!305794 () Bool)

(assert (=> b!305794 (= e!190056 (isEmpty!2741 (_2!2540 (lex!453 thiss!17480 rules!1920 (print!386 thiss!17480 (singletonSeq!321 (h!9432 tokens!465)))))))))

(assert (= (and d!93557 res!138974) b!305792))

(assert (= (and b!305792 res!138975) b!305793))

(assert (= (and d!93557 res!138976) b!305794))

(declare-fun m!408149 () Bool)

(assert (=> d!93557 m!408149))

(declare-fun m!408151 () Bool)

(assert (=> d!93557 m!408151))

(assert (=> d!93557 m!407073))

(assert (=> d!93557 m!407041))

(assert (=> d!93557 m!407041))

(assert (=> d!93557 m!408123))

(assert (=> d!93557 m!407041))

(declare-fun m!408153 () Bool)

(assert (=> d!93557 m!408153))

(assert (=> d!93557 m!408123))

(declare-fun m!408155 () Bool)

(assert (=> d!93557 m!408155))

(declare-fun m!408157 () Bool)

(assert (=> b!305792 m!408157))

(declare-fun m!408159 () Bool)

(assert (=> b!305793 m!408159))

(assert (=> b!305794 m!407041))

(assert (=> b!305794 m!407041))

(assert (=> b!305794 m!408123))

(assert (=> b!305794 m!408123))

(assert (=> b!305794 m!408155))

(declare-fun m!408161 () Bool)

(assert (=> b!305794 m!408161))

(assert (=> b!305138 d!93557))

(declare-fun d!93559 () Bool)

(declare-fun lt!130256 () BalanceConc!2752)

(assert (=> d!93559 (= (list!1699 lt!130256) (printList!335 thiss!17480 (list!1700 lt!129910)))))

(assert (=> d!93559 (= lt!130256 (printTailRec!347 thiss!17480 lt!129910 0 (BalanceConc!2753 Empty!1372)))))

(assert (=> d!93559 (= (print!386 thiss!17480 lt!129910) lt!130256)))

(declare-fun bs!35365 () Bool)

(assert (= bs!35365 d!93559))

(declare-fun m!408163 () Bool)

(assert (=> bs!35365 m!408163))

(declare-fun m!408165 () Bool)

(assert (=> bs!35365 m!408165))

(assert (=> bs!35365 m!408165))

(declare-fun m!408167 () Bool)

(assert (=> bs!35365 m!408167))

(assert (=> bs!35365 m!407033))

(assert (=> b!305140 d!93559))

(declare-fun d!93561 () Bool)

(assert (=> d!93561 (= (list!1699 lt!129900) (list!1703 (c!57956 lt!129900)))))

(declare-fun bs!35366 () Bool)

(assert (= bs!35366 d!93561))

(declare-fun m!408169 () Bool)

(assert (=> bs!35366 m!408169))

(assert (=> b!305140 d!93561))

(declare-fun d!93563 () Bool)

(declare-fun lt!130277 () BalanceConc!2752)

(declare-fun printListTailRec!157 (LexerInterface!661 List!4045 List!4043) List!4043)

(assert (=> d!93563 (= (list!1699 lt!130277) (printListTailRec!157 thiss!17480 (dropList!192 lt!129910 0) (list!1699 (BalanceConc!2753 Empty!1372))))))

(declare-fun e!190071 () BalanceConc!2752)

(assert (=> d!93563 (= lt!130277 e!190071)))

(declare-fun c!58087 () Bool)

(assert (=> d!93563 (= c!58087 (>= 0 (size!3226 lt!129910)))))

(declare-fun e!190070 () Bool)

(assert (=> d!93563 e!190070))

(declare-fun res!138983 () Bool)

(assert (=> d!93563 (=> (not res!138983) (not e!190070))))

(assert (=> d!93563 (= res!138983 (>= 0 0))))

(assert (=> d!93563 (= (printTailRec!347 thiss!17480 lt!129910 0 (BalanceConc!2753 Empty!1372)) lt!130277)))

(declare-fun b!305812 () Bool)

(assert (=> b!305812 (= e!190070 (<= 0 (size!3226 lt!129910)))))

(declare-fun b!305813 () Bool)

(assert (=> b!305813 (= e!190071 (BalanceConc!2753 Empty!1372))))

(declare-fun b!305814 () Bool)

(assert (=> b!305814 (= e!190071 (printTailRec!347 thiss!17480 lt!129910 (+ 0 1) (++!1094 (BalanceConc!2753 Empty!1372) (charsOf!418 (apply!879 lt!129910 0)))))))

(declare-fun lt!130278 () List!4045)

(assert (=> b!305814 (= lt!130278 (list!1700 lt!129910))))

(declare-fun lt!130282 () Unit!5634)

(assert (=> b!305814 (= lt!130282 (lemmaDropApply!232 lt!130278 0))))

(assert (=> b!305814 (= (head!956 (drop!247 lt!130278 0)) (apply!881 lt!130278 0))))

(declare-fun lt!130281 () Unit!5634)

(assert (=> b!305814 (= lt!130281 lt!130282)))

(declare-fun lt!130279 () List!4045)

(assert (=> b!305814 (= lt!130279 (list!1700 lt!129910))))

(declare-fun lt!130276 () Unit!5634)

(assert (=> b!305814 (= lt!130276 (lemmaDropTail!224 lt!130279 0))))

(assert (=> b!305814 (= (tail!534 (drop!247 lt!130279 0)) (drop!247 lt!130279 (+ 0 1)))))

(declare-fun lt!130280 () Unit!5634)

(assert (=> b!305814 (= lt!130280 lt!130276)))

(assert (= (and d!93563 res!138983) b!305812))

(assert (= (and d!93563 c!58087) b!305813))

(assert (= (and d!93563 (not c!58087)) b!305814))

(declare-fun m!408195 () Bool)

(assert (=> d!93563 m!408195))

(declare-fun m!408197 () Bool)

(assert (=> d!93563 m!408197))

(assert (=> d!93563 m!408197))

(declare-fun m!408201 () Bool)

(assert (=> d!93563 m!408201))

(declare-fun m!408203 () Bool)

(assert (=> d!93563 m!408203))

(declare-fun m!408205 () Bool)

(assert (=> d!93563 m!408205))

(assert (=> d!93563 m!408201))

(assert (=> b!305812 m!408205))

(declare-fun m!408207 () Bool)

(assert (=> b!305814 m!408207))

(declare-fun m!408209 () Bool)

(assert (=> b!305814 m!408209))

(declare-fun m!408211 () Bool)

(assert (=> b!305814 m!408211))

(assert (=> b!305814 m!408165))

(declare-fun m!408213 () Bool)

(assert (=> b!305814 m!408213))

(declare-fun m!408215 () Bool)

(assert (=> b!305814 m!408215))

(assert (=> b!305814 m!408215))

(declare-fun m!408217 () Bool)

(assert (=> b!305814 m!408217))

(declare-fun m!408219 () Bool)

(assert (=> b!305814 m!408219))

(declare-fun m!408221 () Bool)

(assert (=> b!305814 m!408221))

(declare-fun m!408223 () Bool)

(assert (=> b!305814 m!408223))

(declare-fun m!408225 () Bool)

(assert (=> b!305814 m!408225))

(assert (=> b!305814 m!408219))

(assert (=> b!305814 m!408223))

(assert (=> b!305814 m!408213))

(declare-fun m!408227 () Bool)

(assert (=> b!305814 m!408227))

(assert (=> b!305814 m!408209))

(declare-fun m!408229 () Bool)

(assert (=> b!305814 m!408229))

(assert (=> b!305140 d!93563))

(declare-fun d!93581 () Bool)

(declare-fun e!190074 () Bool)

(assert (=> d!93581 e!190074))

(declare-fun res!138986 () Bool)

(assert (=> d!93581 (=> (not res!138986) (not e!190074))))

(declare-fun lt!130286 () BalanceConc!2754)

(assert (=> d!93581 (= res!138986 (= (list!1700 lt!130286) (Cons!4035 (h!9432 tokens!465) Nil!4035)))))

(declare-fun singleton!141 (Token!1294) BalanceConc!2754)

(assert (=> d!93581 (= lt!130286 (singleton!141 (h!9432 tokens!465)))))

(assert (=> d!93581 (= (singletonSeq!321 (h!9432 tokens!465)) lt!130286)))

(declare-fun b!305817 () Bool)

(declare-fun isBalanced!390 (Conc!1373) Bool)

(assert (=> b!305817 (= e!190074 (isBalanced!390 (c!57958 lt!130286)))))

(assert (= (and d!93581 res!138986) b!305817))

(declare-fun m!408231 () Bool)

(assert (=> d!93581 m!408231))

(declare-fun m!408233 () Bool)

(assert (=> d!93581 m!408233))

(declare-fun m!408235 () Bool)

(assert (=> b!305817 m!408235))

(assert (=> b!305140 d!93581))

(declare-fun d!93583 () Bool)

(declare-fun c!58090 () Bool)

(assert (=> d!93583 (= c!58090 ((_ is Cons!4035) (Cons!4035 (h!9432 tokens!465) Nil!4035)))))

(declare-fun e!190077 () List!4043)

(assert (=> d!93583 (= (printList!335 thiss!17480 (Cons!4035 (h!9432 tokens!465) Nil!4035)) e!190077)))

(declare-fun b!305822 () Bool)

(assert (=> b!305822 (= e!190077 (++!1092 (list!1699 (charsOf!418 (h!9432 (Cons!4035 (h!9432 tokens!465) Nil!4035)))) (printList!335 thiss!17480 (t!43137 (Cons!4035 (h!9432 tokens!465) Nil!4035)))))))

(declare-fun b!305823 () Bool)

(assert (=> b!305823 (= e!190077 Nil!4033)))

(assert (= (and d!93583 c!58090) b!305822))

(assert (= (and d!93583 (not c!58090)) b!305823))

(declare-fun m!408237 () Bool)

(assert (=> b!305822 m!408237))

(assert (=> b!305822 m!408237))

(declare-fun m!408239 () Bool)

(assert (=> b!305822 m!408239))

(declare-fun m!408241 () Bool)

(assert (=> b!305822 m!408241))

(assert (=> b!305822 m!408239))

(assert (=> b!305822 m!408241))

(declare-fun m!408243 () Bool)

(assert (=> b!305822 m!408243))

(assert (=> b!305140 d!93583))

(declare-fun d!93585 () Bool)

(assert (=> d!93585 (= (list!1699 (seqFromList!915 lt!129918)) (list!1703 (c!57956 (seqFromList!915 lt!129918))))))

(declare-fun bs!35380 () Bool)

(assert (= bs!35380 d!93585))

(declare-fun m!408245 () Bool)

(assert (=> bs!35380 m!408245))

(assert (=> b!305119 d!93585))

(declare-fun d!93587 () Bool)

(assert (=> d!93587 (= (seqFromList!915 lt!129918) (fromListB!376 lt!129918))))

(declare-fun bs!35381 () Bool)

(assert (= bs!35381 d!93587))

(declare-fun m!408247 () Bool)

(assert (=> bs!35381 m!408247))

(assert (=> b!305119 d!93587))

(declare-fun d!93589 () Bool)

(assert (=> d!93589 (= (inv!4983 (tag!993 (h!9431 rules!1920))) (= (mod (str.len (value!26402 (tag!993 (h!9431 rules!1920)))) 2) 0))))

(assert (=> b!305118 d!93589))

(declare-fun d!93591 () Bool)

(declare-fun res!138987 () Bool)

(declare-fun e!190078 () Bool)

(assert (=> d!93591 (=> (not res!138987) (not e!190078))))

(assert (=> d!93591 (= res!138987 (semiInverseModEq!289 (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toValue!1534 (transformation!775 (h!9431 rules!1920)))))))

(assert (=> d!93591 (= (inv!4986 (transformation!775 (h!9431 rules!1920))) e!190078)))

(declare-fun b!305824 () Bool)

(assert (=> b!305824 (= e!190078 (equivClasses!272 (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toValue!1534 (transformation!775 (h!9431 rules!1920)))))))

(assert (= (and d!93591 res!138987) b!305824))

(declare-fun m!408249 () Bool)

(assert (=> d!93591 m!408249))

(declare-fun m!408251 () Bool)

(assert (=> b!305824 m!408251))

(assert (=> b!305118 d!93591))

(declare-fun b!305827 () Bool)

(declare-fun e!190081 () Bool)

(assert (=> b!305827 (= e!190081 true)))

(declare-fun b!305826 () Bool)

(declare-fun e!190080 () Bool)

(assert (=> b!305826 (= e!190080 e!190081)))

(declare-fun b!305825 () Bool)

(declare-fun e!190079 () Bool)

(assert (=> b!305825 (= e!190079 e!190080)))

(assert (=> b!305150 e!190079))

(assert (= b!305826 b!305827))

(assert (= b!305825 b!305826))

(assert (= (and b!305150 ((_ is Cons!4034) (t!43136 rules!1920))) b!305825))

(assert (=> b!305827 (< (dynLambda!2193 order!3261 (toValue!1534 (transformation!775 (h!9431 (t!43136 rules!1920))))) (dynLambda!2194 order!3263 lambda!10388))))

(assert (=> b!305827 (< (dynLambda!2195 order!3265 (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920))))) (dynLambda!2194 order!3263 lambda!10388))))

(declare-fun b!305832 () Bool)

(declare-fun e!190084 () Bool)

(declare-fun tp_is_empty!1873 () Bool)

(declare-fun tp!108506 () Bool)

(assert (=> b!305832 (= e!190084 (and tp_is_empty!1873 tp!108506))))

(assert (=> b!305121 (= tp!108485 e!190084)))

(assert (= (and b!305121 ((_ is Cons!4033) (originalCharacters!818 separatorToken!170))) b!305832))

(declare-fun b!305833 () Bool)

(declare-fun e!190085 () Bool)

(declare-fun tp!108507 () Bool)

(assert (=> b!305833 (= e!190085 (and tp_is_empty!1873 tp!108507))))

(assert (=> b!305135 (= tp!108492 e!190085)))

(assert (= (and b!305135 ((_ is Cons!4033) (originalCharacters!818 (h!9432 tokens!465)))) b!305833))

(declare-fun b!305844 () Bool)

(declare-fun b_free!10925 () Bool)

(declare-fun b_next!10925 () Bool)

(assert (=> b!305844 (= b_free!10925 (not b_next!10925))))

(declare-fun tp!108517 () Bool)

(declare-fun b_and!25825 () Bool)

(assert (=> b!305844 (= tp!108517 b_and!25825)))

(declare-fun b_free!10927 () Bool)

(declare-fun b_next!10927 () Bool)

(assert (=> b!305844 (= b_free!10927 (not b_next!10927))))

(declare-fun tb!19289 () Bool)

(declare-fun t!43186 () Bool)

(assert (=> (and b!305844 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465))))) t!43186) tb!19289))

(declare-fun result!23240 () Bool)

(assert (= result!23240 result!23222))

(assert (=> b!305510 t!43186))

(declare-fun t!43188 () Bool)

(declare-fun tb!19291 () Bool)

(assert (=> (and b!305844 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170)))) t!43188) tb!19291))

(declare-fun result!23242 () Bool)

(assert (= result!23242 result!23230))

(assert (=> d!93495 t!43188))

(assert (=> d!93501 t!43186))

(assert (=> b!305790 t!43188))

(declare-fun b_and!25827 () Bool)

(declare-fun tp!108516 () Bool)

(assert (=> b!305844 (= tp!108516 (and (=> t!43186 result!23240) (=> t!43188 result!23242) b_and!25827))))

(declare-fun e!190094 () Bool)

(assert (=> b!305844 (= e!190094 (and tp!108517 tp!108516))))

(declare-fun b!305843 () Bool)

(declare-fun tp!108519 () Bool)

(declare-fun e!190097 () Bool)

(assert (=> b!305843 (= e!190097 (and tp!108519 (inv!4983 (tag!993 (h!9431 (t!43136 rules!1920)))) (inv!4986 (transformation!775 (h!9431 (t!43136 rules!1920)))) e!190094))))

(declare-fun b!305842 () Bool)

(declare-fun e!190095 () Bool)

(declare-fun tp!108518 () Bool)

(assert (=> b!305842 (= e!190095 (and e!190097 tp!108518))))

(assert (=> b!305114 (= tp!108487 e!190095)))

(assert (= b!305843 b!305844))

(assert (= b!305842 b!305843))

(assert (= (and b!305114 ((_ is Cons!4034) (t!43136 rules!1920))) b!305842))

(declare-fun m!408253 () Bool)

(assert (=> b!305843 m!408253))

(declare-fun m!408255 () Bool)

(assert (=> b!305843 m!408255))

(declare-fun b!305855 () Bool)

(declare-fun e!190100 () Bool)

(assert (=> b!305855 (= e!190100 tp_is_empty!1873)))

(declare-fun b!305856 () Bool)

(declare-fun tp!108533 () Bool)

(declare-fun tp!108530 () Bool)

(assert (=> b!305856 (= e!190100 (and tp!108533 tp!108530))))

(assert (=> b!305116 (= tp!108493 e!190100)))

(declare-fun b!305857 () Bool)

(declare-fun tp!108532 () Bool)

(assert (=> b!305857 (= e!190100 tp!108532)))

(declare-fun b!305858 () Bool)

(declare-fun tp!108534 () Bool)

(declare-fun tp!108531 () Bool)

(assert (=> b!305858 (= e!190100 (and tp!108534 tp!108531))))

(assert (= (and b!305116 ((_ is ElementMatch!999) (regex!775 (rule!1388 (h!9432 tokens!465))))) b!305855))

(assert (= (and b!305116 ((_ is Concat!1797) (regex!775 (rule!1388 (h!9432 tokens!465))))) b!305856))

(assert (= (and b!305116 ((_ is Star!999) (regex!775 (rule!1388 (h!9432 tokens!465))))) b!305857))

(assert (= (and b!305116 ((_ is Union!999) (regex!775 (rule!1388 (h!9432 tokens!465))))) b!305858))

(declare-fun b!305878 () Bool)

(declare-fun b_free!10929 () Bool)

(declare-fun b_next!10929 () Bool)

(assert (=> b!305878 (= b_free!10929 (not b_next!10929))))

(declare-fun tp!108549 () Bool)

(declare-fun b_and!25829 () Bool)

(assert (=> b!305878 (= tp!108549 b_and!25829)))

(declare-fun b_free!10931 () Bool)

(declare-fun b_next!10931 () Bool)

(assert (=> b!305878 (= b_free!10931 (not b_next!10931))))

(declare-fun t!43190 () Bool)

(declare-fun tb!19293 () Bool)

(assert (=> (and b!305878 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465))))) t!43190) tb!19293))

(declare-fun result!23248 () Bool)

(assert (= result!23248 result!23222))

(assert (=> b!305510 t!43190))

(declare-fun tb!19295 () Bool)

(declare-fun t!43192 () Bool)

(assert (=> (and b!305878 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170)))) t!43192) tb!19295))

(declare-fun result!23250 () Bool)

(assert (= result!23250 result!23230))

(assert (=> d!93495 t!43192))

(assert (=> d!93501 t!43190))

(assert (=> b!305790 t!43192))

(declare-fun b_and!25831 () Bool)

(declare-fun tp!108548 () Bool)

(assert (=> b!305878 (= tp!108548 (and (=> t!43190 result!23248) (=> t!43192 result!23250) b_and!25831))))

(declare-fun e!190121 () Bool)

(assert (=> b!305878 (= e!190121 (and tp!108549 tp!108548))))

(declare-fun tp!108546 () Bool)

(declare-fun e!190119 () Bool)

(declare-fun e!190122 () Bool)

(declare-fun b!305876 () Bool)

(assert (=> b!305876 (= e!190119 (and (inv!21 (value!26403 (h!9432 (t!43137 tokens!465)))) e!190122 tp!108546))))

(declare-fun e!190118 () Bool)

(assert (=> b!305128 (= tp!108489 e!190118)))

(declare-fun tp!108547 () Bool)

(declare-fun b!305875 () Bool)

(assert (=> b!305875 (= e!190118 (and (inv!4987 (h!9432 (t!43137 tokens!465))) e!190119 tp!108547))))

(declare-fun b!305877 () Bool)

(declare-fun tp!108545 () Bool)

(assert (=> b!305877 (= e!190122 (and tp!108545 (inv!4983 (tag!993 (rule!1388 (h!9432 (t!43137 tokens!465))))) (inv!4986 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) e!190121))))

(assert (= b!305877 b!305878))

(assert (= b!305876 b!305877))

(assert (= b!305875 b!305876))

(assert (= (and b!305128 ((_ is Cons!4035) (t!43137 tokens!465))) b!305875))

(declare-fun m!408257 () Bool)

(assert (=> b!305876 m!408257))

(declare-fun m!408259 () Bool)

(assert (=> b!305875 m!408259))

(declare-fun m!408261 () Bool)

(assert (=> b!305877 m!408261))

(declare-fun m!408263 () Bool)

(assert (=> b!305877 m!408263))

(declare-fun b!305879 () Bool)

(declare-fun e!190123 () Bool)

(assert (=> b!305879 (= e!190123 tp_is_empty!1873)))

(declare-fun b!305880 () Bool)

(declare-fun tp!108553 () Bool)

(declare-fun tp!108550 () Bool)

(assert (=> b!305880 (= e!190123 (and tp!108553 tp!108550))))

(assert (=> b!305108 (= tp!108486 e!190123)))

(declare-fun b!305881 () Bool)

(declare-fun tp!108552 () Bool)

(assert (=> b!305881 (= e!190123 tp!108552)))

(declare-fun b!305882 () Bool)

(declare-fun tp!108554 () Bool)

(declare-fun tp!108551 () Bool)

(assert (=> b!305882 (= e!190123 (and tp!108554 tp!108551))))

(assert (= (and b!305108 ((_ is ElementMatch!999) (regex!775 (rule!1388 separatorToken!170)))) b!305879))

(assert (= (and b!305108 ((_ is Concat!1797) (regex!775 (rule!1388 separatorToken!170)))) b!305880))

(assert (= (and b!305108 ((_ is Star!999) (regex!775 (rule!1388 separatorToken!170)))) b!305881))

(assert (= (and b!305108 ((_ is Union!999) (regex!775 (rule!1388 separatorToken!170)))) b!305882))

(declare-fun b!305883 () Bool)

(declare-fun e!190124 () Bool)

(assert (=> b!305883 (= e!190124 tp_is_empty!1873)))

(declare-fun b!305884 () Bool)

(declare-fun tp!108558 () Bool)

(declare-fun tp!108555 () Bool)

(assert (=> b!305884 (= e!190124 (and tp!108558 tp!108555))))

(assert (=> b!305118 (= tp!108483 e!190124)))

(declare-fun b!305885 () Bool)

(declare-fun tp!108557 () Bool)

(assert (=> b!305885 (= e!190124 tp!108557)))

(declare-fun b!305886 () Bool)

(declare-fun tp!108559 () Bool)

(declare-fun tp!108556 () Bool)

(assert (=> b!305886 (= e!190124 (and tp!108559 tp!108556))))

(assert (= (and b!305118 ((_ is ElementMatch!999) (regex!775 (h!9431 rules!1920)))) b!305883))

(assert (= (and b!305118 ((_ is Concat!1797) (regex!775 (h!9431 rules!1920)))) b!305884))

(assert (= (and b!305118 ((_ is Star!999) (regex!775 (h!9431 rules!1920)))) b!305885))

(assert (= (and b!305118 ((_ is Union!999) (regex!775 (h!9431 rules!1920)))) b!305886))

(declare-fun b_lambda!10595 () Bool)

(assert (= b_lambda!10587 (or (and b!305844 b_free!10927 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305112 b_free!10919) (and b!305878 b_free!10931 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305125 b_free!10923 (= (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305117 b_free!10915 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) b_lambda!10595)))

(declare-fun b_lambda!10597 () Bool)

(assert (= b_lambda!10591 (or b!305137 b_lambda!10597)))

(declare-fun bs!35382 () Bool)

(declare-fun d!93593 () Bool)

(assert (= bs!35382 (and d!93593 b!305137)))

(assert (=> bs!35382 (= (dynLambda!2198 lambda!10388 (h!9432 tokens!465)) (rulesProduceIndividualToken!410 thiss!17480 rules!1920 (h!9432 tokens!465)))))

(assert (=> bs!35382 m!407089))

(assert (=> d!93547 d!93593))

(declare-fun b_lambda!10599 () Bool)

(assert (= b_lambda!10581 (or b!305120 b_lambda!10599)))

(declare-fun bs!35383 () Bool)

(declare-fun d!93595 () Bool)

(assert (= bs!35383 (and d!93595 b!305120)))

(assert (=> bs!35383 (= (dynLambda!2198 lambda!10387 (h!9432 tokens!465)) (not (isSeparator!775 (rule!1388 (h!9432 tokens!465)))))))

(assert (=> b!305524 d!93595))

(declare-fun b_lambda!10601 () Bool)

(assert (= b_lambda!10579 (or (and b!305844 b_free!10927 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305112 b_free!10919) (and b!305878 b_free!10931 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305125 b_free!10923 (= (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) (and b!305117 b_free!10915 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))))) b_lambda!10601)))

(declare-fun b_lambda!10603 () Bool)

(assert (= b_lambda!10585 (or (and b!305878 b_free!10931 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305125 b_free!10923) (and b!305112 b_free!10919 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305844 b_free!10927 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305117 b_free!10915 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) b_lambda!10603)))

(declare-fun b_lambda!10605 () Bool)

(assert (= b_lambda!10593 (or (and b!305878 b_free!10931 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 (t!43137 tokens!465))))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305125 b_free!10923) (and b!305112 b_free!10919 (= (toChars!1393 (transformation!775 (rule!1388 (h!9432 tokens!465)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305844 b_free!10927 (= (toChars!1393 (transformation!775 (h!9431 (t!43136 rules!1920)))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) (and b!305117 b_free!10915 (= (toChars!1393 (transformation!775 (h!9431 rules!1920))) (toChars!1393 (transformation!775 (rule!1388 separatorToken!170))))) b_lambda!10605)))

(check-sat (not d!93369) (not b!305528) (not d!93379) (not b!305783) (not b!305606) (not b!305792) (not d!93501) (not b!305504) (not b!305516) (not b!305757) (not b!305880) (not b!305219) (not b!305376) (not b!305260) (not b!305858) (not b!305875) (not b!305233) (not b!305787) (not b!305217) (not b!305771) (not b!305190) (not tb!19277) (not b!305794) (not b!305603) (not b!305250) (not b!305261) (not b!305191) (not d!93561) (not b!305246) (not b!305776) (not d!93407) (not b_next!10919) (not b!305833) (not bm!17721) (not b!305761) (not d!93373) (not b!305785) (not b!305526) (not d!93451) (not d!93529) (not b!305188) b_and!25823 (not b!305192) (not b!305762) (not bm!17712) b_and!25821 (not bm!17688) (not b!305505) (not b!305501) (not b_lambda!10601) (not b!305539) (not b_next!10925) (not d!93511) (not b!305495) (not b!305812) (not bm!17689) (not b!305714) (not b!305530) (not b!305510) (not bm!17702) (not d!93377) (not b!305303) (not b!305201) (not d!93545) (not d!93351) (not b!305232) (not b!305843) (not bm!17720) (not b!305857) (not b!305876) b_and!25831 (not b!305660) (not b!305503) (not b!305605) (not d!93499) (not b_next!10929) (not b!305780) (not b!305511) tp_is_empty!1873 (not b!305885) (not bm!17671) (not b!305793) (not bm!17715) (not b!305760) (not d!93549) (not bm!17700) (not d!93361) (not b!305665) (not b_lambda!10605) (not d!93547) (not d!93555) (not b!305218) b_and!25825 (not b!305702) (not b!305790) (not b!305498) (not b!305302) (not b!305493) (not d!93559) (not b!305791) (not b!305766) (not bm!17624) (not b_lambda!10603) (not b!305886) (not bm!17687) (not b!305817) (not b!305538) (not d!93497) (not d!93563) (not b!305499) (not b!305772) (not b!305759) (not b!305782) (not b_next!10913) (not b!305824) (not b!305248) (not b!305265) (not b!305882) (not d!93503) (not tb!19283) (not d!93445) (not b!305661) (not b!305706) (not b!305610) b_and!25769 (not b!305881) (not b!305196) (not b!305525) (not b!305531) (not b_lambda!10595) (not b!305842) (not d!93465) (not b!305532) (not b!305709) (not d!93459) (not d!93495) (not bs!35382) (not bm!17711) b_and!25829 b_and!25773 (not d!93461) (not b!305519) (not b_next!10923) (not d!93447) (not b!305500) (not b!305686) (not b!305537) (not bm!17670) (not d!93343) (not b!305774) (not bm!17701) (not d!93585) (not b_lambda!10599) b_and!25819 (not b!305663) (not b!305496) (not b!305494) (not b_lambda!10597) (not b_next!10927) (not d!93525) (not b!305884) (not b!305304) (not b!305608) (not b_next!10921) (not d!93557) (not bm!17685) (not b!305768) b_and!25827 (not bm!17713) (not d!93507) (not b!305533) (not b!305220) b_and!25765 (not b!305366) (not b!305856) (not b!305763) (not bm!17714) (not d!93591) (not bm!17719) (not d!93587) (not d!93505) (not b!305701) (not b!305656) (not b!305657) (not b!305710) (not d!93363) (not b!305688) (not d!93353) (not b!305689) (not b_next!10931) (not d!93551) (not d!93523) (not bm!17703) (not bm!17717) (not d!93517) (not b!305542) (not d!93463) (not b!305534) (not b!305541) (not b_next!10915) (not b!305365) (not b_next!10917) (not b!305378) (not b!305877) (not b!305186) (not b!305767) (not b!305832) (not d!93581) (not d!93483) (not b!305705) (not b!305377) (not d!93467) (not b!305756) (not b!305822) (not b!305536) (not d!93383) (not b!305825) (not d!93387) (not b!305814) (not b!305202))
(check-sat (not b_next!10919) (not b_next!10925) b_and!25831 (not b_next!10929) b_and!25825 (not b_next!10913) b_and!25769 b_and!25819 b_and!25765 (not b_next!10931) (not b_next!10915) (not b_next!10917) b_and!25823 b_and!25821 b_and!25829 b_and!25773 (not b_next!10923) (not b_next!10927) b_and!25827 (not b_next!10921))
