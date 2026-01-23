; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32486 () Bool)

(assert start!32486)

(declare-fun b!302054 () Bool)

(declare-fun b_free!10713 () Bool)

(declare-fun b_next!10713 () Bool)

(assert (=> b!302054 (= b_free!10713 (not b_next!10713))))

(declare-fun tp!107703 () Bool)

(declare-fun b_and!25469 () Bool)

(assert (=> b!302054 (= tp!107703 b_and!25469)))

(declare-fun b_free!10715 () Bool)

(declare-fun b_next!10715 () Bool)

(assert (=> b!302054 (= b_free!10715 (not b_next!10715))))

(declare-fun tp!107708 () Bool)

(declare-fun b_and!25471 () Bool)

(assert (=> b!302054 (= tp!107708 b_and!25471)))

(declare-fun b!302051 () Bool)

(declare-fun b_free!10717 () Bool)

(declare-fun b_next!10717 () Bool)

(assert (=> b!302051 (= b_free!10717 (not b_next!10717))))

(declare-fun tp!107699 () Bool)

(declare-fun b_and!25473 () Bool)

(assert (=> b!302051 (= tp!107699 b_and!25473)))

(declare-fun b_free!10719 () Bool)

(declare-fun b_next!10719 () Bool)

(assert (=> b!302051 (= b_free!10719 (not b_next!10719))))

(declare-fun tp!107700 () Bool)

(declare-fun b_and!25475 () Bool)

(assert (=> b!302051 (= tp!107700 b_and!25475)))

(declare-fun b!302067 () Bool)

(declare-fun b_free!10721 () Bool)

(declare-fun b_next!10721 () Bool)

(assert (=> b!302067 (= b_free!10721 (not b_next!10721))))

(declare-fun tp!107702 () Bool)

(declare-fun b_and!25477 () Bool)

(assert (=> b!302067 (= tp!107702 b_and!25477)))

(declare-fun b_free!10723 () Bool)

(declare-fun b_next!10723 () Bool)

(assert (=> b!302067 (= b_free!10723 (not b_next!10723))))

(declare-fun tp!107704 () Bool)

(declare-fun b_and!25479 () Bool)

(assert (=> b!302067 (= tp!107704 b_and!25479)))

(declare-fun bs!35018 () Bool)

(declare-fun b!302066 () Bool)

(declare-fun b!302062 () Bool)

(assert (= bs!35018 (and b!302066 b!302062)))

(declare-fun lambda!10226 () Int)

(declare-fun lambda!10225 () Int)

(assert (=> bs!35018 (not (= lambda!10226 lambda!10225))))

(declare-fun b!302086 () Bool)

(declare-fun e!187454 () Bool)

(assert (=> b!302086 (= e!187454 true)))

(declare-fun b!302085 () Bool)

(declare-fun e!187453 () Bool)

(assert (=> b!302085 (= e!187453 e!187454)))

(declare-fun b!302084 () Bool)

(declare-fun e!187452 () Bool)

(assert (=> b!302084 (= e!187452 e!187453)))

(assert (=> b!302066 e!187452))

(assert (= b!302085 b!302086))

(assert (= b!302084 b!302085))

(declare-datatypes ((List!3982 0))(
  ( (Nil!3972) (Cons!3972 (h!9369 (_ BitVec 16)) (t!42914 List!3982)) )
))
(declare-datatypes ((TokenValue!783 0))(
  ( (FloatLiteralValue!1566 (text!5926 List!3982)) (TokenValueExt!782 (__x!3053 Int)) (Broken!3915 (value!25978 List!3982)) (Object!792) (End!783) (Def!783) (Underscore!783) (Match!783) (Else!783) (Error!783) (Case!783) (If!783) (Extends!783) (Abstract!783) (Class!783) (Val!783) (DelimiterValue!1566 (del!843 List!3982)) (KeywordValue!789 (value!25979 List!3982)) (CommentValue!1566 (value!25980 List!3982)) (WhitespaceValue!1566 (value!25981 List!3982)) (IndentationValue!783 (value!25982 List!3982)) (String!4994) (Int32!783) (Broken!3916 (value!25983 List!3982)) (Boolean!784) (Unit!5559) (OperatorValue!786 (op!843 List!3982)) (IdentifierValue!1566 (value!25984 List!3982)) (IdentifierValue!1567 (value!25985 List!3982)) (WhitespaceValue!1567 (value!25986 List!3982)) (True!1566) (False!1566) (Broken!3917 (value!25987 List!3982)) (Broken!3918 (value!25988 List!3982)) (True!1567) (RightBrace!783) (RightBracket!783) (Colon!783) (Null!783) (Comma!783) (LeftBracket!783) (False!1567) (LeftBrace!783) (ImaginaryLiteralValue!783 (text!5927 List!3982)) (StringLiteralValue!2349 (value!25989 List!3982)) (EOFValue!783 (value!25990 List!3982)) (IdentValue!783 (value!25991 List!3982)) (DelimiterValue!1567 (value!25992 List!3982)) (DedentValue!783 (value!25993 List!3982)) (NewLineValue!783 (value!25994 List!3982)) (IntegerValue!2349 (value!25995 (_ BitVec 32)) (text!5928 List!3982)) (IntegerValue!2350 (value!25996 Int) (text!5929 List!3982)) (Times!783) (Or!783) (Equal!783) (Minus!783) (Broken!3919 (value!25997 List!3982)) (And!783) (Div!783) (LessEqual!783) (Mod!783) (Concat!1768) (Not!783) (Plus!783) (SpaceValue!783 (value!25998 List!3982)) (IntegerValue!2351 (value!25999 Int) (text!5930 List!3982)) (StringLiteralValue!2350 (text!5931 List!3982)) (FloatLiteralValue!1567 (text!5932 List!3982)) (BytesLiteralValue!783 (value!26000 List!3982)) (CommentValue!1567 (value!26001 List!3982)) (StringLiteralValue!2351 (value!26002 List!3982)) (ErrorTokenValue!783 (msg!844 List!3982)) )
))
(declare-datatypes ((C!2892 0))(
  ( (C!2893 (val!1332 Int)) )
))
(declare-datatypes ((List!3983 0))(
  ( (Nil!3973) (Cons!3973 (h!9370 C!2892) (t!42915 List!3983)) )
))
(declare-datatypes ((IArray!2689 0))(
  ( (IArray!2690 (innerList!1402 List!3983)) )
))
(declare-datatypes ((Conc!1344 0))(
  ( (Node!1344 (left!3287 Conc!1344) (right!3617 Conc!1344) (csize!2918 Int) (cheight!1555 Int)) (Leaf!2064 (xs!3947 IArray!2689) (csize!2919 Int)) (Empty!1344) )
))
(declare-datatypes ((BalanceConc!2696 0))(
  ( (BalanceConc!2697 (c!57616 Conc!1344)) )
))
(declare-datatypes ((TokenValueInjection!1338 0))(
  ( (TokenValueInjection!1339 (toValue!1520 Int) (toChars!1379 Int)) )
))
(declare-datatypes ((String!4995 0))(
  ( (String!4996 (value!26003 String)) )
))
(declare-datatypes ((Regex!985 0))(
  ( (ElementMatch!985 (c!57617 C!2892)) (Concat!1769 (regOne!2482 Regex!985) (regTwo!2482 Regex!985)) (EmptyExpr!985) (Star!985 (reg!1314 Regex!985)) (EmptyLang!985) (Union!985 (regOne!2483 Regex!985) (regTwo!2483 Regex!985)) )
))
(declare-datatypes ((Rule!1322 0))(
  ( (Rule!1323 (regex!761 Regex!985) (tag!979 String!4995) (isSeparator!761 Bool) (transformation!761 TokenValueInjection!1338)) )
))
(declare-datatypes ((List!3984 0))(
  ( (Nil!3974) (Cons!3974 (h!9371 Rule!1322) (t!42916 List!3984)) )
))
(declare-fun rules!1920 () List!3984)

(get-info :version)

(assert (= (and b!302066 ((_ is Cons!3974) rules!1920)) b!302084))

(declare-fun order!3179 () Int)

(declare-fun order!3177 () Int)

(declare-fun dynLambda!2143 (Int Int) Int)

(declare-fun dynLambda!2144 (Int Int) Int)

(assert (=> b!302086 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10226))))

(declare-fun order!3181 () Int)

(declare-fun dynLambda!2145 (Int Int) Int)

(assert (=> b!302086 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10226))))

(assert (=> b!302066 true))

(declare-fun b!302047 () Bool)

(declare-fun res!137000 () Bool)

(declare-fun e!187445 () Bool)

(assert (=> b!302047 (=> res!137000 e!187445)))

(declare-datatypes ((Token!1266 0))(
  ( (Token!1267 (value!26004 TokenValue!783) (rule!1374 Rule!1322) (size!3199 Int) (originalCharacters!804 List!3983)) )
))
(declare-datatypes ((List!3985 0))(
  ( (Nil!3975) (Cons!3975 (h!9372 Token!1266) (t!42917 List!3985)) )
))
(declare-fun tokens!465 () List!3985)

(declare-datatypes ((LexerInterface!647 0))(
  ( (LexerInterfaceExt!644 (__x!3054 Int)) (Lexer!645) )
))
(declare-fun thiss!17480 () LexerInterface!647)

(declare-fun rulesProduceIndividualToken!396 (LexerInterface!647 List!3984 Token!1266) Bool)

(assert (=> b!302047 (= res!137000 (not (rulesProduceIndividualToken!396 thiss!17480 rules!1920 (h!9372 tokens!465))))))

(declare-fun b!302048 () Bool)

(declare-fun e!187437 () Bool)

(declare-fun e!187432 () Bool)

(assert (=> b!302048 (= e!187437 (not e!187432))))

(declare-fun res!137013 () Bool)

(assert (=> b!302048 (=> res!137013 e!187432)))

(declare-fun lt!128314 () List!3983)

(declare-fun separatorToken!170 () Token!1266)

(declare-fun list!1677 (BalanceConc!2696) List!3983)

(declare-datatypes ((IArray!2691 0))(
  ( (IArray!2692 (innerList!1403 List!3985)) )
))
(declare-datatypes ((Conc!1345 0))(
  ( (Node!1345 (left!3288 Conc!1345) (right!3618 Conc!1345) (csize!2920 Int) (cheight!1556 Int)) (Leaf!2065 (xs!3948 IArray!2691) (csize!2921 Int)) (Empty!1345) )
))
(declare-datatypes ((BalanceConc!2698 0))(
  ( (BalanceConc!2699 (c!57618 Conc!1345)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!320 (LexerInterface!647 List!3984 BalanceConc!2698 Token!1266 Int) BalanceConc!2696)

(declare-fun seqFromList!887 (List!3985) BalanceConc!2698)

(assert (=> b!302048 (= res!137013 (not (= lt!128314 (list!1677 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 (seqFromList!887 (t!42917 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!128318 () List!3983)

(declare-fun lt!128323 () List!3983)

(assert (=> b!302048 (= lt!128318 lt!128323)))

(declare-fun lt!128325 () List!3983)

(declare-fun lt!128313 () List!3983)

(declare-fun ++!1074 (List!3983 List!3983) List!3983)

(assert (=> b!302048 (= lt!128323 (++!1074 lt!128325 lt!128313))))

(declare-fun lt!128320 () List!3983)

(assert (=> b!302048 (= lt!128318 (++!1074 (++!1074 lt!128325 lt!128320) lt!128314))))

(declare-datatypes ((Unit!5560 0))(
  ( (Unit!5561) )
))
(declare-fun lt!128316 () Unit!5560)

(declare-fun lemmaConcatAssociativity!468 (List!3983 List!3983 List!3983) Unit!5560)

(assert (=> b!302048 (= lt!128316 (lemmaConcatAssociativity!468 lt!128325 lt!128320 lt!128314))))

(declare-fun charsOf!404 (Token!1266) BalanceConc!2696)

(assert (=> b!302048 (= lt!128325 (list!1677 (charsOf!404 (h!9372 tokens!465))))))

(assert (=> b!302048 (= lt!128313 (++!1074 lt!128320 lt!128314))))

(declare-fun printWithSeparatorTokenWhenNeededList!328 (LexerInterface!647 List!3984 List!3985 Token!1266) List!3983)

(assert (=> b!302048 (= lt!128314 (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (t!42917 tokens!465) separatorToken!170))))

(assert (=> b!302048 (= lt!128320 (list!1677 (charsOf!404 separatorToken!170)))))

(declare-fun b!302049 () Bool)

(declare-fun res!137014 () Bool)

(declare-fun e!187427 () Bool)

(assert (=> b!302049 (=> (not res!137014) (not e!187427))))

(assert (=> b!302049 (= res!137014 ((_ is Cons!3975) tokens!465))))

(declare-fun b!302050 () Bool)

(assert (=> b!302050 (= e!187432 e!187445)))

(declare-fun res!137001 () Bool)

(assert (=> b!302050 (=> res!137001 e!187445)))

(declare-fun lt!128326 () List!3983)

(declare-fun lt!128312 () List!3983)

(assert (=> b!302050 (= res!137001 (or (not (= lt!128312 lt!128326)) (not (= lt!128326 lt!128325)) (not (= lt!128312 lt!128325))))))

(declare-fun printList!321 (LexerInterface!647 List!3985) List!3983)

(assert (=> b!302050 (= lt!128326 (printList!321 thiss!17480 (Cons!3975 (h!9372 tokens!465) Nil!3975)))))

(declare-fun lt!128324 () BalanceConc!2696)

(assert (=> b!302050 (= lt!128312 (list!1677 lt!128324))))

(declare-fun lt!128315 () BalanceConc!2698)

(declare-fun printTailRec!333 (LexerInterface!647 BalanceConc!2698 Int BalanceConc!2696) BalanceConc!2696)

(assert (=> b!302050 (= lt!128324 (printTailRec!333 thiss!17480 lt!128315 0 (BalanceConc!2697 Empty!1344)))))

(declare-fun print!372 (LexerInterface!647 BalanceConc!2698) BalanceConc!2696)

(assert (=> b!302050 (= lt!128324 (print!372 thiss!17480 lt!128315))))

(declare-fun singletonSeq!307 (Token!1266) BalanceConc!2698)

(assert (=> b!302050 (= lt!128315 (singletonSeq!307 (h!9372 tokens!465)))))

(declare-fun e!187436 () Bool)

(assert (=> b!302051 (= e!187436 (and tp!107699 tp!107700))))

(declare-fun b!302052 () Bool)

(declare-fun res!136997 () Bool)

(assert (=> b!302052 (=> (not res!136997) (not e!187427))))

(assert (=> b!302052 (= res!136997 (rulesProduceIndividualToken!396 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!187431 () Bool)

(declare-fun tp!107709 () Bool)

(declare-fun b!302053 () Bool)

(declare-fun e!187443 () Bool)

(declare-fun inv!21 (TokenValue!783) Bool)

(assert (=> b!302053 (= e!187443 (and (inv!21 (value!26004 (h!9372 tokens!465))) e!187431 tp!107709))))

(declare-fun e!187434 () Bool)

(assert (=> b!302054 (= e!187434 (and tp!107703 tp!107708))))

(declare-fun e!187439 () Bool)

(declare-fun b!302055 () Bool)

(declare-fun tp!107698 () Bool)

(declare-fun inv!4926 (String!4995) Bool)

(declare-fun inv!4929 (TokenValueInjection!1338) Bool)

(assert (=> b!302055 (= e!187439 (and tp!107698 (inv!4926 (tag!979 (h!9371 rules!1920))) (inv!4929 (transformation!761 (h!9371 rules!1920))) e!187434))))

(declare-fun b!302056 () Bool)

(declare-fun res!137010 () Bool)

(assert (=> b!302056 (=> (not res!137010) (not e!187427))))

(declare-fun sepAndNonSepRulesDisjointChars!350 (List!3984 List!3984) Bool)

(assert (=> b!302056 (= res!137010 (sepAndNonSepRulesDisjointChars!350 rules!1920 rules!1920))))

(declare-fun tp!107707 () Bool)

(declare-fun e!187444 () Bool)

(declare-fun b!302057 () Bool)

(assert (=> b!302057 (= e!187444 (and tp!107707 (inv!4926 (tag!979 (rule!1374 separatorToken!170))) (inv!4929 (transformation!761 (rule!1374 separatorToken!170))) e!187436))))

(declare-fun b!302058 () Bool)

(declare-fun tp!107701 () Bool)

(declare-fun e!187429 () Bool)

(assert (=> b!302058 (= e!187429 (and (inv!21 (value!26004 separatorToken!170)) e!187444 tp!107701))))

(declare-fun b!302059 () Bool)

(assert (=> b!302059 (= e!187427 e!187437)))

(declare-fun res!137009 () Bool)

(assert (=> b!302059 (=> (not res!137009) (not e!187437))))

(declare-fun lt!128328 () List!3983)

(declare-fun lt!128327 () List!3983)

(assert (=> b!302059 (= res!137009 (= lt!128328 lt!128327))))

(declare-fun lt!128317 () BalanceConc!2698)

(assert (=> b!302059 (= lt!128327 (list!1677 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 lt!128317 separatorToken!170 0)))))

(assert (=> b!302059 (= lt!128328 (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!302060 () Bool)

(declare-fun e!187424 () Bool)

(declare-fun tp!107705 () Bool)

(assert (=> b!302060 (= e!187424 (and e!187439 tp!107705))))

(declare-fun b!302061 () Bool)

(declare-fun res!137006 () Bool)

(declare-fun e!187433 () Bool)

(assert (=> b!302061 (=> (not res!137006) (not e!187433))))

(declare-fun rulesInvariant!613 (LexerInterface!647 List!3984) Bool)

(assert (=> b!302061 (= res!137006 (rulesInvariant!613 thiss!17480 rules!1920))))

(declare-fun res!136998 () Bool)

(assert (=> b!302062 (=> (not res!136998) (not e!187427))))

(declare-fun forall!1044 (List!3985 Int) Bool)

(assert (=> b!302062 (= res!136998 (forall!1044 tokens!465 lambda!10225))))

(declare-fun b!302063 () Bool)

(declare-fun e!187428 () Bool)

(declare-datatypes ((tuple2!4554 0))(
  ( (tuple2!4555 (_1!2493 Token!1266) (_2!2493 List!3983)) )
))
(declare-fun lt!128322 () tuple2!4554)

(declare-fun isEmpty!2666 (List!3983) Bool)

(assert (=> b!302063 (= e!187428 (isEmpty!2666 (_2!2493 lt!128322)))))

(declare-fun b!302064 () Bool)

(declare-fun e!187440 () Bool)

(assert (=> b!302064 (= e!187440 (not (= lt!128328 (++!1074 lt!128325 lt!128314))))))

(declare-fun b!302065 () Bool)

(declare-fun res!137007 () Bool)

(assert (=> b!302065 (=> (not res!137007) (not e!187433))))

(declare-fun isEmpty!2667 (List!3984) Bool)

(assert (=> b!302065 (= res!137007 (not (isEmpty!2667 rules!1920)))))

(declare-fun e!187442 () Bool)

(assert (=> b!302066 (= e!187445 e!187442)))

(declare-fun res!137002 () Bool)

(assert (=> b!302066 (=> res!137002 e!187442)))

(declare-datatypes ((tuple2!4556 0))(
  ( (tuple2!4557 (_1!2494 Token!1266) (_2!2494 BalanceConc!2696)) )
))
(declare-datatypes ((Option!888 0))(
  ( (None!887) (Some!887 (v!14868 tuple2!4556)) )
))
(declare-fun isDefined!727 (Option!888) Bool)

(declare-fun maxPrefixZipperSequence!326 (LexerInterface!647 List!3984 BalanceConc!2696) Option!888)

(declare-fun seqFromList!888 (List!3983) BalanceConc!2696)

(assert (=> b!302066 (= res!137002 (not (isDefined!727 (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))

(declare-fun lt!128319 () Unit!5560)

(declare-fun forallContained!314 (List!3985 Int Token!1266) Unit!5560)

(assert (=> b!302066 (= lt!128319 (forallContained!314 tokens!465 lambda!10226 (h!9372 tokens!465)))))

(assert (=> b!302066 (= lt!128325 (originalCharacters!804 (h!9372 tokens!465)))))

(declare-fun e!187423 () Bool)

(assert (=> b!302067 (= e!187423 (and tp!107702 tp!107704))))

(declare-fun b!302068 () Bool)

(declare-fun res!137008 () Bool)

(assert (=> b!302068 (=> (not res!137008) (not e!187437))))

(assert (=> b!302068 (= res!137008 (= (list!1677 (seqFromList!888 lt!128328)) lt!128327))))

(declare-fun tp!107706 () Bool)

(declare-fun b!302069 () Bool)

(assert (=> b!302069 (= e!187431 (and tp!107706 (inv!4926 (tag!979 (rule!1374 (h!9372 tokens!465)))) (inv!4929 (transformation!761 (rule!1374 (h!9372 tokens!465)))) e!187423))))

(declare-fun b!302070 () Bool)

(declare-fun matchR!303 (Regex!985 List!3983) Bool)

(assert (=> b!302070 (= e!187442 (matchR!303 (regex!761 (rule!1374 (h!9372 tokens!465))) lt!128325))))

(assert (=> b!302070 e!187428))

(declare-fun res!137015 () Bool)

(assert (=> b!302070 (=> (not res!137015) (not e!187428))))

(assert (=> b!302070 (= res!137015 (= (_1!2493 lt!128322) (h!9372 tokens!465)))))

(declare-datatypes ((Option!889 0))(
  ( (None!888) (Some!888 (v!14869 tuple2!4554)) )
))
(declare-fun lt!128321 () Option!889)

(declare-fun get!1350 (Option!889) tuple2!4554)

(assert (=> b!302070 (= lt!128322 (get!1350 lt!128321))))

(declare-fun isDefined!728 (Option!889) Bool)

(assert (=> b!302070 (isDefined!728 lt!128321)))

(declare-fun maxPrefix!363 (LexerInterface!647 List!3984 List!3983) Option!889)

(assert (=> b!302070 (= lt!128321 (maxPrefix!363 thiss!17480 rules!1920 lt!128325))))

(declare-fun b!302071 () Bool)

(declare-fun res!137005 () Bool)

(assert (=> b!302071 (=> res!137005 e!187432)))

(assert (=> b!302071 (= res!137005 e!187440)))

(declare-fun res!137012 () Bool)

(assert (=> b!302071 (=> (not res!137012) (not e!187440))))

(assert (=> b!302071 (= res!137012 (not (= lt!128328 lt!128323)))))

(declare-fun res!136999 () Bool)

(assert (=> start!32486 (=> (not res!136999) (not e!187433))))

(assert (=> start!32486 (= res!136999 ((_ is Lexer!645) thiss!17480))))

(assert (=> start!32486 e!187433))

(assert (=> start!32486 true))

(assert (=> start!32486 e!187424))

(declare-fun inv!4930 (Token!1266) Bool)

(assert (=> start!32486 (and (inv!4930 separatorToken!170) e!187429)))

(declare-fun e!187441 () Bool)

(assert (=> start!32486 e!187441))

(declare-fun b!302072 () Bool)

(declare-fun res!137004 () Bool)

(assert (=> b!302072 (=> res!137004 e!187445)))

(declare-fun isEmpty!2668 (BalanceConc!2698) Bool)

(declare-datatypes ((tuple2!4558 0))(
  ( (tuple2!4559 (_1!2495 BalanceConc!2698) (_2!2495 BalanceConc!2696)) )
))
(declare-fun lex!439 (LexerInterface!647 List!3984 BalanceConc!2696) tuple2!4558)

(assert (=> b!302072 (= res!137004 (isEmpty!2668 (_1!2495 (lex!439 thiss!17480 rules!1920 (seqFromList!888 lt!128325)))))))

(declare-fun b!302073 () Bool)

(assert (=> b!302073 (= e!187433 e!187427)))

(declare-fun res!137011 () Bool)

(assert (=> b!302073 (=> (not res!137011) (not e!187427))))

(declare-fun rulesProduceEachTokenIndividually!439 (LexerInterface!647 List!3984 BalanceConc!2698) Bool)

(assert (=> b!302073 (= res!137011 (rulesProduceEachTokenIndividually!439 thiss!17480 rules!1920 lt!128317))))

(assert (=> b!302073 (= lt!128317 (seqFromList!887 tokens!465))))

(declare-fun b!302074 () Bool)

(declare-fun res!137003 () Bool)

(assert (=> b!302074 (=> (not res!137003) (not e!187427))))

(assert (=> b!302074 (= res!137003 (isSeparator!761 (rule!1374 separatorToken!170)))))

(declare-fun b!302075 () Bool)

(declare-fun tp!107697 () Bool)

(assert (=> b!302075 (= e!187441 (and (inv!4930 (h!9372 tokens!465)) e!187443 tp!107697))))

(assert (= (and start!32486 res!136999) b!302065))

(assert (= (and b!302065 res!137007) b!302061))

(assert (= (and b!302061 res!137006) b!302073))

(assert (= (and b!302073 res!137011) b!302052))

(assert (= (and b!302052 res!136997) b!302074))

(assert (= (and b!302074 res!137003) b!302062))

(assert (= (and b!302062 res!136998) b!302056))

(assert (= (and b!302056 res!137010) b!302049))

(assert (= (and b!302049 res!137014) b!302059))

(assert (= (and b!302059 res!137009) b!302068))

(assert (= (and b!302068 res!137008) b!302048))

(assert (= (and b!302048 (not res!137013)) b!302071))

(assert (= (and b!302071 res!137012) b!302064))

(assert (= (and b!302071 (not res!137005)) b!302050))

(assert (= (and b!302050 (not res!137001)) b!302047))

(assert (= (and b!302047 (not res!137000)) b!302072))

(assert (= (and b!302072 (not res!137004)) b!302066))

(assert (= (and b!302066 (not res!137002)) b!302070))

(assert (= (and b!302070 res!137015) b!302063))

(assert (= b!302055 b!302054))

(assert (= b!302060 b!302055))

(assert (= (and start!32486 ((_ is Cons!3974) rules!1920)) b!302060))

(assert (= b!302057 b!302051))

(assert (= b!302058 b!302057))

(assert (= start!32486 b!302058))

(assert (= b!302069 b!302067))

(assert (= b!302053 b!302069))

(assert (= b!302075 b!302053))

(assert (= (and start!32486 ((_ is Cons!3975) tokens!465)) b!302075))

(declare-fun m!403263 () Bool)

(assert (=> b!302052 m!403263))

(declare-fun m!403265 () Bool)

(assert (=> b!302048 m!403265))

(declare-fun m!403267 () Bool)

(assert (=> b!302048 m!403267))

(declare-fun m!403269 () Bool)

(assert (=> b!302048 m!403269))

(declare-fun m!403271 () Bool)

(assert (=> b!302048 m!403271))

(declare-fun m!403273 () Bool)

(assert (=> b!302048 m!403273))

(declare-fun m!403275 () Bool)

(assert (=> b!302048 m!403275))

(declare-fun m!403277 () Bool)

(assert (=> b!302048 m!403277))

(declare-fun m!403279 () Bool)

(assert (=> b!302048 m!403279))

(declare-fun m!403281 () Bool)

(assert (=> b!302048 m!403281))

(assert (=> b!302048 m!403265))

(declare-fun m!403283 () Bool)

(assert (=> b!302048 m!403283))

(declare-fun m!403285 () Bool)

(assert (=> b!302048 m!403285))

(assert (=> b!302048 m!403279))

(assert (=> b!302048 m!403273))

(assert (=> b!302048 m!403285))

(declare-fun m!403287 () Bool)

(assert (=> b!302048 m!403287))

(assert (=> b!302048 m!403283))

(declare-fun m!403289 () Bool)

(assert (=> b!302048 m!403289))

(declare-fun m!403291 () Bool)

(assert (=> b!302059 m!403291))

(assert (=> b!302059 m!403291))

(declare-fun m!403293 () Bool)

(assert (=> b!302059 m!403293))

(declare-fun m!403295 () Bool)

(assert (=> b!302059 m!403295))

(declare-fun m!403297 () Bool)

(assert (=> b!302056 m!403297))

(declare-fun m!403299 () Bool)

(assert (=> b!302058 m!403299))

(declare-fun m!403301 () Bool)

(assert (=> b!302066 m!403301))

(assert (=> b!302066 m!403301))

(declare-fun m!403303 () Bool)

(assert (=> b!302066 m!403303))

(assert (=> b!302066 m!403303))

(declare-fun m!403305 () Bool)

(assert (=> b!302066 m!403305))

(declare-fun m!403307 () Bool)

(assert (=> b!302066 m!403307))

(declare-fun m!403309 () Bool)

(assert (=> b!302055 m!403309))

(declare-fun m!403311 () Bool)

(assert (=> b!302055 m!403311))

(declare-fun m!403313 () Bool)

(assert (=> b!302064 m!403313))

(declare-fun m!403315 () Bool)

(assert (=> b!302069 m!403315))

(declare-fun m!403317 () Bool)

(assert (=> b!302069 m!403317))

(declare-fun m!403319 () Bool)

(assert (=> b!302050 m!403319))

(declare-fun m!403321 () Bool)

(assert (=> b!302050 m!403321))

(declare-fun m!403323 () Bool)

(assert (=> b!302050 m!403323))

(declare-fun m!403325 () Bool)

(assert (=> b!302050 m!403325))

(declare-fun m!403327 () Bool)

(assert (=> b!302050 m!403327))

(declare-fun m!403329 () Bool)

(assert (=> start!32486 m!403329))

(declare-fun m!403331 () Bool)

(assert (=> b!302065 m!403331))

(declare-fun m!403333 () Bool)

(assert (=> b!302070 m!403333))

(declare-fun m!403335 () Bool)

(assert (=> b!302070 m!403335))

(declare-fun m!403337 () Bool)

(assert (=> b!302070 m!403337))

(declare-fun m!403339 () Bool)

(assert (=> b!302070 m!403339))

(declare-fun m!403341 () Bool)

(assert (=> b!302053 m!403341))

(declare-fun m!403343 () Bool)

(assert (=> b!302057 m!403343))

(declare-fun m!403345 () Bool)

(assert (=> b!302057 m!403345))

(declare-fun m!403347 () Bool)

(assert (=> b!302068 m!403347))

(assert (=> b!302068 m!403347))

(declare-fun m!403349 () Bool)

(assert (=> b!302068 m!403349))

(declare-fun m!403351 () Bool)

(assert (=> b!302061 m!403351))

(declare-fun m!403353 () Bool)

(assert (=> b!302075 m!403353))

(declare-fun m!403355 () Bool)

(assert (=> b!302062 m!403355))

(declare-fun m!403357 () Bool)

(assert (=> b!302073 m!403357))

(declare-fun m!403359 () Bool)

(assert (=> b!302073 m!403359))

(declare-fun m!403361 () Bool)

(assert (=> b!302072 m!403361))

(assert (=> b!302072 m!403361))

(declare-fun m!403363 () Bool)

(assert (=> b!302072 m!403363))

(declare-fun m!403365 () Bool)

(assert (=> b!302072 m!403365))

(declare-fun m!403367 () Bool)

(assert (=> b!302047 m!403367))

(declare-fun m!403369 () Bool)

(assert (=> b!302063 m!403369))

(check-sat (not b!302052) (not b!302056) b_and!25469 b_and!25479 (not b_next!10713) (not start!32486) (not b!302053) (not b!302048) (not b_next!10715) b_and!25473 (not b_next!10719) (not b!302055) (not b!302062) (not b!302069) (not b_next!10721) (not b_next!10723) (not b!302070) (not b!302065) (not b!302047) (not b!302059) b_and!25475 (not b!302075) b_and!25477 (not b!302073) b_and!25471 (not b!302057) (not b!302066) (not b!302068) (not b!302061) (not b!302072) (not b!302060) (not b!302050) (not b_next!10717) (not b!302064) (not b!302063) (not b!302058) (not b!302084))
(check-sat b_and!25469 b_and!25475 b_and!25479 (not b_next!10713) b_and!25477 b_and!25471 (not b_next!10715) b_and!25473 (not b_next!10719) (not b_next!10717) (not b_next!10721) (not b_next!10723))
(get-model)

(declare-fun d!92884 () Bool)

(declare-fun res!137028 () Bool)

(declare-fun e!187457 () Bool)

(assert (=> d!92884 (=> (not res!137028) (not e!187457))))

(assert (=> d!92884 (= res!137028 (not (isEmpty!2666 (originalCharacters!804 (h!9372 tokens!465)))))))

(assert (=> d!92884 (= (inv!4930 (h!9372 tokens!465)) e!187457)))

(declare-fun b!302093 () Bool)

(declare-fun res!137029 () Bool)

(assert (=> b!302093 (=> (not res!137029) (not e!187457))))

(declare-fun dynLambda!2146 (Int TokenValue!783) BalanceConc!2696)

(assert (=> b!302093 (= res!137029 (= (originalCharacters!804 (h!9372 tokens!465)) (list!1677 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (value!26004 (h!9372 tokens!465))))))))

(declare-fun b!302094 () Bool)

(declare-fun size!3200 (List!3983) Int)

(assert (=> b!302094 (= e!187457 (= (size!3199 (h!9372 tokens!465)) (size!3200 (originalCharacters!804 (h!9372 tokens!465)))))))

(assert (= (and d!92884 res!137028) b!302093))

(assert (= (and b!302093 res!137029) b!302094))

(declare-fun b_lambda!10475 () Bool)

(assert (=> (not b_lambda!10475) (not b!302093)))

(declare-fun t!42919 () Bool)

(declare-fun tb!19185 () Bool)

(assert (=> (and b!302054 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465))))) t!42919) tb!19185))

(declare-fun b!302099 () Bool)

(declare-fun e!187460 () Bool)

(declare-fun tp!107712 () Bool)

(declare-fun inv!4931 (Conc!1344) Bool)

(assert (=> b!302099 (= e!187460 (and (inv!4931 (c!57616 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (value!26004 (h!9372 tokens!465))))) tp!107712))))

(declare-fun result!23088 () Bool)

(declare-fun inv!4932 (BalanceConc!2696) Bool)

(assert (=> tb!19185 (= result!23088 (and (inv!4932 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (value!26004 (h!9372 tokens!465)))) e!187460))))

(assert (= tb!19185 b!302099))

(declare-fun m!403371 () Bool)

(assert (=> b!302099 m!403371))

(declare-fun m!403373 () Bool)

(assert (=> tb!19185 m!403373))

(assert (=> b!302093 t!42919))

(declare-fun b_and!25481 () Bool)

(assert (= b_and!25471 (and (=> t!42919 result!23088) b_and!25481)))

(declare-fun t!42921 () Bool)

(declare-fun tb!19187 () Bool)

(assert (=> (and b!302051 (= (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465))))) t!42921) tb!19187))

(declare-fun result!23092 () Bool)

(assert (= result!23092 result!23088))

(assert (=> b!302093 t!42921))

(declare-fun b_and!25483 () Bool)

(assert (= b_and!25475 (and (=> t!42921 result!23092) b_and!25483)))

(declare-fun t!42923 () Bool)

(declare-fun tb!19189 () Bool)

(assert (=> (and b!302067 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465))))) t!42923) tb!19189))

(declare-fun result!23094 () Bool)

(assert (= result!23094 result!23088))

(assert (=> b!302093 t!42923))

(declare-fun b_and!25485 () Bool)

(assert (= b_and!25479 (and (=> t!42923 result!23094) b_and!25485)))

(declare-fun m!403375 () Bool)

(assert (=> d!92884 m!403375))

(declare-fun m!403377 () Bool)

(assert (=> b!302093 m!403377))

(assert (=> b!302093 m!403377))

(declare-fun m!403379 () Bool)

(assert (=> b!302093 m!403379))

(declare-fun m!403381 () Bool)

(assert (=> b!302094 m!403381))

(assert (=> b!302075 d!92884))

(declare-fun d!92888 () Bool)

(declare-fun res!137032 () Bool)

(declare-fun e!187465 () Bool)

(assert (=> d!92888 (=> (not res!137032) (not e!187465))))

(assert (=> d!92888 (= res!137032 (not (isEmpty!2666 (originalCharacters!804 separatorToken!170))))))

(assert (=> d!92888 (= (inv!4930 separatorToken!170) e!187465)))

(declare-fun b!302106 () Bool)

(declare-fun res!137033 () Bool)

(assert (=> b!302106 (=> (not res!137033) (not e!187465))))

(assert (=> b!302106 (= res!137033 (= (originalCharacters!804 separatorToken!170) (list!1677 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (value!26004 separatorToken!170)))))))

(declare-fun b!302107 () Bool)

(assert (=> b!302107 (= e!187465 (= (size!3199 separatorToken!170) (size!3200 (originalCharacters!804 separatorToken!170))))))

(assert (= (and d!92888 res!137032) b!302106))

(assert (= (and b!302106 res!137033) b!302107))

(declare-fun b_lambda!10477 () Bool)

(assert (=> (not b_lambda!10477) (not b!302106)))

(declare-fun tb!19191 () Bool)

(declare-fun t!42925 () Bool)

(assert (=> (and b!302054 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170)))) t!42925) tb!19191))

(declare-fun b!302110 () Bool)

(declare-fun e!187466 () Bool)

(declare-fun tp!107713 () Bool)

(assert (=> b!302110 (= e!187466 (and (inv!4931 (c!57616 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (value!26004 separatorToken!170)))) tp!107713))))

(declare-fun result!23096 () Bool)

(assert (=> tb!19191 (= result!23096 (and (inv!4932 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (value!26004 separatorToken!170))) e!187466))))

(assert (= tb!19191 b!302110))

(declare-fun m!403383 () Bool)

(assert (=> b!302110 m!403383))

(declare-fun m!403385 () Bool)

(assert (=> tb!19191 m!403385))

(assert (=> b!302106 t!42925))

(declare-fun b_and!25487 () Bool)

(assert (= b_and!25481 (and (=> t!42925 result!23096) b_and!25487)))

(declare-fun t!42927 () Bool)

(declare-fun tb!19193 () Bool)

(assert (=> (and b!302051 (= (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170)))) t!42927) tb!19193))

(declare-fun result!23098 () Bool)

(assert (= result!23098 result!23096))

(assert (=> b!302106 t!42927))

(declare-fun b_and!25489 () Bool)

(assert (= b_and!25483 (and (=> t!42927 result!23098) b_and!25489)))

(declare-fun tb!19195 () Bool)

(declare-fun t!42929 () Bool)

(assert (=> (and b!302067 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170)))) t!42929) tb!19195))

(declare-fun result!23100 () Bool)

(assert (= result!23100 result!23096))

(assert (=> b!302106 t!42929))

(declare-fun b_and!25491 () Bool)

(assert (= b_and!25485 (and (=> t!42929 result!23100) b_and!25491)))

(declare-fun m!403387 () Bool)

(assert (=> d!92888 m!403387))

(declare-fun m!403389 () Bool)

(assert (=> b!302106 m!403389))

(assert (=> b!302106 m!403389))

(declare-fun m!403391 () Bool)

(assert (=> b!302106 m!403391))

(declare-fun m!403393 () Bool)

(assert (=> b!302107 m!403393))

(assert (=> start!32486 d!92888))

(declare-fun b!302135 () Bool)

(declare-fun e!187482 () Bool)

(declare-fun inv!17 (TokenValue!783) Bool)

(assert (=> b!302135 (= e!187482 (inv!17 (value!26004 (h!9372 tokens!465))))))

(declare-fun b!302136 () Bool)

(declare-fun e!187483 () Bool)

(assert (=> b!302136 (= e!187483 e!187482)))

(declare-fun c!57630 () Bool)

(assert (=> b!302136 (= c!57630 ((_ is IntegerValue!2350) (value!26004 (h!9372 tokens!465))))))

(declare-fun b!302137 () Bool)

(declare-fun res!137042 () Bool)

(declare-fun e!187481 () Bool)

(assert (=> b!302137 (=> res!137042 e!187481)))

(assert (=> b!302137 (= res!137042 (not ((_ is IntegerValue!2351) (value!26004 (h!9372 tokens!465)))))))

(assert (=> b!302137 (= e!187482 e!187481)))

(declare-fun b!302138 () Bool)

(declare-fun inv!16 (TokenValue!783) Bool)

(assert (=> b!302138 (= e!187483 (inv!16 (value!26004 (h!9372 tokens!465))))))

(declare-fun b!302139 () Bool)

(declare-fun inv!15 (TokenValue!783) Bool)

(assert (=> b!302139 (= e!187481 (inv!15 (value!26004 (h!9372 tokens!465))))))

(declare-fun d!92890 () Bool)

(declare-fun c!57631 () Bool)

(assert (=> d!92890 (= c!57631 ((_ is IntegerValue!2349) (value!26004 (h!9372 tokens!465))))))

(assert (=> d!92890 (= (inv!21 (value!26004 (h!9372 tokens!465))) e!187483)))

(assert (= (and d!92890 c!57631) b!302138))

(assert (= (and d!92890 (not c!57631)) b!302136))

(assert (= (and b!302136 c!57630) b!302135))

(assert (= (and b!302136 (not c!57630)) b!302137))

(assert (= (and b!302137 (not res!137042)) b!302139))

(declare-fun m!403409 () Bool)

(assert (=> b!302135 m!403409))

(declare-fun m!403411 () Bool)

(assert (=> b!302138 m!403411))

(declare-fun m!403413 () Bool)

(assert (=> b!302139 m!403413))

(assert (=> b!302053 d!92890))

(declare-fun d!92894 () Bool)

(declare-fun lt!128338 () Bool)

(declare-fun e!187500 () Bool)

(assert (=> d!92894 (= lt!128338 e!187500)))

(declare-fun res!137060 () Bool)

(assert (=> d!92894 (=> (not res!137060) (not e!187500))))

(declare-fun list!1679 (BalanceConc!2698) List!3985)

(assert (=> d!92894 (= res!137060 (= (list!1679 (_1!2495 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 separatorToken!170))))) (list!1679 (singletonSeq!307 separatorToken!170))))))

(declare-fun e!187499 () Bool)

(assert (=> d!92894 (= lt!128338 e!187499)))

(declare-fun res!137059 () Bool)

(assert (=> d!92894 (=> (not res!137059) (not e!187499))))

(declare-fun lt!128337 () tuple2!4558)

(declare-fun size!3202 (BalanceConc!2698) Int)

(assert (=> d!92894 (= res!137059 (= (size!3202 (_1!2495 lt!128337)) 1))))

(assert (=> d!92894 (= lt!128337 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 separatorToken!170))))))

(assert (=> d!92894 (not (isEmpty!2667 rules!1920))))

(assert (=> d!92894 (= (rulesProduceIndividualToken!396 thiss!17480 rules!1920 separatorToken!170) lt!128338)))

(declare-fun b!302161 () Bool)

(declare-fun res!137058 () Bool)

(assert (=> b!302161 (=> (not res!137058) (not e!187499))))

(declare-fun apply!865 (BalanceConc!2698 Int) Token!1266)

(assert (=> b!302161 (= res!137058 (= (apply!865 (_1!2495 lt!128337) 0) separatorToken!170))))

(declare-fun b!302162 () Bool)

(declare-fun isEmpty!2669 (BalanceConc!2696) Bool)

(assert (=> b!302162 (= e!187499 (isEmpty!2669 (_2!2495 lt!128337)))))

(declare-fun b!302163 () Bool)

(assert (=> b!302163 (= e!187500 (isEmpty!2669 (_2!2495 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 separatorToken!170))))))))

(assert (= (and d!92894 res!137059) b!302161))

(assert (= (and b!302161 res!137058) b!302162))

(assert (= (and d!92894 res!137060) b!302163))

(declare-fun m!403439 () Bool)

(assert (=> d!92894 m!403439))

(declare-fun m!403441 () Bool)

(assert (=> d!92894 m!403441))

(declare-fun m!403443 () Bool)

(assert (=> d!92894 m!403443))

(assert (=> d!92894 m!403441))

(declare-fun m!403445 () Bool)

(assert (=> d!92894 m!403445))

(assert (=> d!92894 m!403441))

(assert (=> d!92894 m!403331))

(assert (=> d!92894 m!403445))

(declare-fun m!403447 () Bool)

(assert (=> d!92894 m!403447))

(declare-fun m!403449 () Bool)

(assert (=> d!92894 m!403449))

(declare-fun m!403451 () Bool)

(assert (=> b!302161 m!403451))

(declare-fun m!403453 () Bool)

(assert (=> b!302162 m!403453))

(assert (=> b!302163 m!403441))

(assert (=> b!302163 m!403441))

(assert (=> b!302163 m!403445))

(assert (=> b!302163 m!403445))

(assert (=> b!302163 m!403447))

(declare-fun m!403455 () Bool)

(assert (=> b!302163 m!403455))

(assert (=> b!302052 d!92894))

(declare-fun d!92906 () Bool)

(assert (=> d!92906 (= (inv!4926 (tag!979 (rule!1374 separatorToken!170))) (= (mod (str.len (value!26003 (tag!979 (rule!1374 separatorToken!170)))) 2) 0))))

(assert (=> b!302057 d!92906))

(declare-fun d!92908 () Bool)

(declare-fun res!137063 () Bool)

(declare-fun e!187503 () Bool)

(assert (=> d!92908 (=> (not res!137063) (not e!187503))))

(declare-fun semiInverseModEq!284 (Int Int) Bool)

(assert (=> d!92908 (= res!137063 (semiInverseModEq!284 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toValue!1520 (transformation!761 (rule!1374 separatorToken!170)))))))

(assert (=> d!92908 (= (inv!4929 (transformation!761 (rule!1374 separatorToken!170))) e!187503)))

(declare-fun b!302166 () Bool)

(declare-fun equivClasses!267 (Int Int) Bool)

(assert (=> b!302166 (= e!187503 (equivClasses!267 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toValue!1520 (transformation!761 (rule!1374 separatorToken!170)))))))

(assert (= (and d!92908 res!137063) b!302166))

(declare-fun m!403457 () Bool)

(assert (=> d!92908 m!403457))

(declare-fun m!403459 () Bool)

(assert (=> b!302166 m!403459))

(assert (=> b!302057 d!92908))

(declare-fun d!92910 () Bool)

(declare-fun res!137068 () Bool)

(declare-fun e!187508 () Bool)

(assert (=> d!92910 (=> res!137068 e!187508)))

(assert (=> d!92910 (= res!137068 (not ((_ is Cons!3974) rules!1920)))))

(assert (=> d!92910 (= (sepAndNonSepRulesDisjointChars!350 rules!1920 rules!1920) e!187508)))

(declare-fun b!302171 () Bool)

(declare-fun e!187509 () Bool)

(assert (=> b!302171 (= e!187508 e!187509)))

(declare-fun res!137069 () Bool)

(assert (=> b!302171 (=> (not res!137069) (not e!187509))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!143 (Rule!1322 List!3984) Bool)

(assert (=> b!302171 (= res!137069 (ruleDisjointCharsFromAllFromOtherType!143 (h!9371 rules!1920) rules!1920))))

(declare-fun b!302172 () Bool)

(assert (=> b!302172 (= e!187509 (sepAndNonSepRulesDisjointChars!350 rules!1920 (t!42916 rules!1920)))))

(assert (= (and d!92910 (not res!137068)) b!302171))

(assert (= (and b!302171 res!137069) b!302172))

(declare-fun m!403461 () Bool)

(assert (=> b!302171 m!403461))

(declare-fun m!403463 () Bool)

(assert (=> b!302172 m!403463))

(assert (=> b!302056 d!92910))

(declare-fun d!92912 () Bool)

(assert (=> d!92912 (= (inv!4926 (tag!979 (h!9371 rules!1920))) (= (mod (str.len (value!26003 (tag!979 (h!9371 rules!1920)))) 2) 0))))

(assert (=> b!302055 d!92912))

(declare-fun d!92914 () Bool)

(declare-fun res!137070 () Bool)

(declare-fun e!187510 () Bool)

(assert (=> d!92914 (=> (not res!137070) (not e!187510))))

(assert (=> d!92914 (= res!137070 (semiInverseModEq!284 (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toValue!1520 (transformation!761 (h!9371 rules!1920)))))))

(assert (=> d!92914 (= (inv!4929 (transformation!761 (h!9371 rules!1920))) e!187510)))

(declare-fun b!302173 () Bool)

(assert (=> b!302173 (= e!187510 (equivClasses!267 (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toValue!1520 (transformation!761 (h!9371 rules!1920)))))))

(assert (= (and d!92914 res!137070) b!302173))

(declare-fun m!403465 () Bool)

(assert (=> d!92914 m!403465))

(declare-fun m!403467 () Bool)

(assert (=> b!302173 m!403467))

(assert (=> b!302055 d!92914))

(declare-fun d!92916 () Bool)

(declare-fun list!1680 (Conc!1344) List!3983)

(assert (=> d!92916 (= (list!1677 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 lt!128317 separatorToken!170 0)) (list!1680 (c!57616 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 lt!128317 separatorToken!170 0))))))

(declare-fun bs!35021 () Bool)

(assert (= bs!35021 d!92916))

(declare-fun m!403469 () Bool)

(assert (=> bs!35021 m!403469))

(assert (=> b!302059 d!92916))

(declare-fun bs!35024 () Bool)

(declare-fun d!92918 () Bool)

(assert (= bs!35024 (and d!92918 b!302062)))

(declare-fun lambda!10234 () Int)

(assert (=> bs!35024 (= lambda!10234 lambda!10225)))

(declare-fun bs!35025 () Bool)

(assert (= bs!35025 (and d!92918 b!302066)))

(assert (=> bs!35025 (not (= lambda!10234 lambda!10226))))

(declare-fun bs!35026 () Bool)

(declare-fun b!302223 () Bool)

(assert (= bs!35026 (and b!302223 b!302062)))

(declare-fun lambda!10235 () Int)

(assert (=> bs!35026 (not (= lambda!10235 lambda!10225))))

(declare-fun bs!35027 () Bool)

(assert (= bs!35027 (and b!302223 b!302066)))

(assert (=> bs!35027 (= lambda!10235 lambda!10226)))

(declare-fun bs!35028 () Bool)

(assert (= bs!35028 (and b!302223 d!92918)))

(assert (=> bs!35028 (not (= lambda!10235 lambda!10234))))

(declare-fun b!302230 () Bool)

(declare-fun e!187546 () Bool)

(assert (=> b!302230 (= e!187546 true)))

(declare-fun b!302229 () Bool)

(declare-fun e!187545 () Bool)

(assert (=> b!302229 (= e!187545 e!187546)))

(declare-fun b!302228 () Bool)

(declare-fun e!187544 () Bool)

(assert (=> b!302228 (= e!187544 e!187545)))

(assert (=> b!302223 e!187544))

(assert (= b!302229 b!302230))

(assert (= b!302228 b!302229))

(assert (= (and b!302223 ((_ is Cons!3974) rules!1920)) b!302228))

(assert (=> b!302230 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10235))))

(assert (=> b!302230 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10235))))

(assert (=> b!302223 true))

(declare-fun lt!128394 () BalanceConc!2696)

(declare-fun dropList!187 (BalanceConc!2698 Int) List!3985)

(assert (=> d!92918 (= (list!1677 lt!128394) (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (dropList!187 lt!128317 0) separatorToken!170))))

(declare-fun e!187538 () BalanceConc!2696)

(assert (=> d!92918 (= lt!128394 e!187538)))

(declare-fun c!57654 () Bool)

(assert (=> d!92918 (= c!57654 (>= 0 (size!3202 lt!128317)))))

(declare-fun lt!128391 () Unit!5560)

(declare-fun lemmaContentSubsetPreservesForall!131 (List!3985 List!3985 Int) Unit!5560)

(assert (=> d!92918 (= lt!128391 (lemmaContentSubsetPreservesForall!131 (list!1679 lt!128317) (dropList!187 lt!128317 0) lambda!10234))))

(declare-fun e!187539 () Bool)

(assert (=> d!92918 e!187539))

(declare-fun res!137077 () Bool)

(assert (=> d!92918 (=> (not res!137077) (not e!187539))))

(assert (=> d!92918 (= res!137077 (>= 0 0))))

(assert (=> d!92918 (= (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 lt!128317 separatorToken!170 0) lt!128394)))

(declare-fun b!302219 () Bool)

(declare-fun e!187542 () BalanceConc!2696)

(declare-fun call!17456 () BalanceConc!2696)

(assert (=> b!302219 (= e!187542 call!17456)))

(declare-fun b!302220 () Bool)

(declare-fun c!57653 () Bool)

(declare-fun e!187543 () Bool)

(assert (=> b!302220 (= c!57653 e!187543)))

(declare-fun res!137078 () Bool)

(assert (=> b!302220 (=> (not res!137078) (not e!187543))))

(declare-fun lt!128392 () Option!888)

(assert (=> b!302220 (= res!137078 ((_ is Some!887) lt!128392))))

(declare-fun e!187541 () BalanceConc!2696)

(assert (=> b!302220 (= e!187542 e!187541)))

(declare-fun bm!17451 () Bool)

(declare-fun call!17458 () Token!1266)

(assert (=> bm!17451 (= call!17458 (apply!865 lt!128317 0))))

(declare-fun call!17457 () BalanceConc!2696)

(declare-fun c!57655 () Bool)

(declare-fun call!17459 () Token!1266)

(declare-fun bm!17452 () Bool)

(assert (=> bm!17452 (= call!17457 (charsOf!404 (ite c!57655 call!17458 call!17459)))))

(declare-fun b!302221 () Bool)

(declare-fun e!187540 () Bool)

(assert (=> b!302221 (= e!187540 (= (_1!2494 (v!14868 lt!128392)) (apply!865 lt!128317 0)))))

(declare-fun b!302222 () Bool)

(assert (=> b!302222 (= e!187538 (BalanceConc!2697 Empty!1344))))

(assert (=> b!302223 (= e!187538 e!187542)))

(declare-fun lt!128397 () List!3985)

(assert (=> b!302223 (= lt!128397 (list!1679 lt!128317))))

(declare-fun lt!128390 () Unit!5560)

(declare-fun lemmaDropApply!227 (List!3985 Int) Unit!5560)

(assert (=> b!302223 (= lt!128390 (lemmaDropApply!227 lt!128397 0))))

(declare-fun head!941 (List!3985) Token!1266)

(declare-fun drop!242 (List!3985 Int) List!3985)

(declare-fun apply!867 (List!3985 Int) Token!1266)

(assert (=> b!302223 (= (head!941 (drop!242 lt!128397 0)) (apply!867 lt!128397 0))))

(declare-fun lt!128396 () Unit!5560)

(assert (=> b!302223 (= lt!128396 lt!128390)))

(declare-fun lt!128389 () List!3985)

(assert (=> b!302223 (= lt!128389 (list!1679 lt!128317))))

(declare-fun lt!128388 () Unit!5560)

(declare-fun lemmaDropTail!219 (List!3985 Int) Unit!5560)

(assert (=> b!302223 (= lt!128388 (lemmaDropTail!219 lt!128389 0))))

(declare-fun tail!523 (List!3985) List!3985)

(assert (=> b!302223 (= (tail!523 (drop!242 lt!128389 0)) (drop!242 lt!128389 (+ 0 1)))))

(declare-fun lt!128386 () Unit!5560)

(assert (=> b!302223 (= lt!128386 lt!128388)))

(declare-fun lt!128387 () Unit!5560)

(assert (=> b!302223 (= lt!128387 (forallContained!314 (list!1679 lt!128317) lambda!10235 (apply!865 lt!128317 0)))))

(declare-fun lt!128393 () BalanceConc!2696)

(assert (=> b!302223 (= lt!128393 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 lt!128317 separatorToken!170 (+ 0 1)))))

(declare-fun ++!1076 (BalanceConc!2696 BalanceConc!2696) BalanceConc!2696)

(assert (=> b!302223 (= lt!128392 (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (++!1076 (charsOf!404 (apply!865 lt!128317 0)) lt!128393)))))

(declare-fun res!137079 () Bool)

(assert (=> b!302223 (= res!137079 ((_ is Some!887) lt!128392))))

(assert (=> b!302223 (=> (not res!137079) (not e!187540))))

(assert (=> b!302223 (= c!57655 e!187540)))

(declare-fun bm!17453 () Bool)

(assert (=> bm!17453 (= call!17459 call!17458)))

(declare-fun b!302224 () Bool)

(assert (=> b!302224 (= e!187541 (BalanceConc!2697 Empty!1344))))

(assert (=> b!302224 (= (print!372 thiss!17480 (singletonSeq!307 call!17459)) (printTailRec!333 thiss!17480 (singletonSeq!307 call!17459) 0 (BalanceConc!2697 Empty!1344)))))

(declare-fun lt!128385 () Unit!5560)

(declare-fun Unit!5564 () Unit!5560)

(assert (=> b!302224 (= lt!128385 Unit!5564)))

(declare-fun call!17460 () BalanceConc!2696)

(declare-fun lt!128395 () Unit!5560)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!136 (LexerInterface!647 List!3984 List!3983 List!3983) Unit!5560)

(assert (=> b!302224 (= lt!128395 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!136 thiss!17480 rules!1920 (list!1677 call!17460) (list!1677 lt!128393)))))

(assert (=> b!302224 false))

(declare-fun lt!128398 () Unit!5560)

(declare-fun Unit!5565 () Unit!5560)

(assert (=> b!302224 (= lt!128398 Unit!5565)))

(declare-fun b!302225 () Bool)

(assert (=> b!302225 (= e!187539 (<= 0 (size!3202 lt!128317)))))

(declare-fun b!302226 () Bool)

(assert (=> b!302226 (= e!187543 (not (= (_1!2494 (v!14868 lt!128392)) call!17458)))))

(declare-fun bm!17454 () Bool)

(assert (=> bm!17454 (= call!17456 (++!1076 call!17457 (ite c!57655 lt!128393 call!17460)))))

(declare-fun bm!17455 () Bool)

(assert (=> bm!17455 (= call!17460 (charsOf!404 (ite c!57653 separatorToken!170 call!17459)))))

(declare-fun b!302227 () Bool)

(assert (=> b!302227 (= e!187541 (++!1076 call!17456 lt!128393))))

(assert (= (and d!92918 res!137077) b!302225))

(assert (= (and d!92918 c!57654) b!302222))

(assert (= (and d!92918 (not c!57654)) b!302223))

(assert (= (and b!302223 res!137079) b!302221))

(assert (= (and b!302223 c!57655) b!302219))

(assert (= (and b!302223 (not c!57655)) b!302220))

(assert (= (and b!302220 res!137078) b!302226))

(assert (= (and b!302220 c!57653) b!302227))

(assert (= (and b!302220 (not c!57653)) b!302224))

(assert (= (or b!302227 b!302224) bm!17453))

(assert (= (or b!302227 b!302224) bm!17455))

(assert (= (or b!302219 b!302226 bm!17453) bm!17451))

(assert (= (or b!302219 b!302227) bm!17452))

(assert (= (or b!302219 b!302227) bm!17454))

(declare-fun m!403499 () Bool)

(assert (=> bm!17451 m!403499))

(declare-fun m!403501 () Bool)

(assert (=> bm!17452 m!403501))

(declare-fun m!403503 () Bool)

(assert (=> d!92918 m!403503))

(declare-fun m!403505 () Bool)

(assert (=> d!92918 m!403505))

(declare-fun m!403507 () Bool)

(assert (=> d!92918 m!403507))

(assert (=> d!92918 m!403503))

(assert (=> d!92918 m!403505))

(declare-fun m!403509 () Bool)

(assert (=> d!92918 m!403509))

(declare-fun m!403511 () Bool)

(assert (=> d!92918 m!403511))

(assert (=> d!92918 m!403505))

(declare-fun m!403513 () Bool)

(assert (=> d!92918 m!403513))

(declare-fun m!403515 () Bool)

(assert (=> bm!17454 m!403515))

(assert (=> b!302221 m!403499))

(declare-fun m!403517 () Bool)

(assert (=> b!302227 m!403517))

(declare-fun m!403519 () Bool)

(assert (=> bm!17455 m!403519))

(assert (=> b!302225 m!403513))

(declare-fun m!403521 () Bool)

(assert (=> b!302223 m!403521))

(declare-fun m!403523 () Bool)

(assert (=> b!302223 m!403523))

(declare-fun m!403525 () Bool)

(assert (=> b!302223 m!403525))

(assert (=> b!302223 m!403503))

(declare-fun m!403527 () Bool)

(assert (=> b!302223 m!403527))

(declare-fun m!403529 () Bool)

(assert (=> b!302223 m!403529))

(assert (=> b!302223 m!403499))

(declare-fun m!403531 () Bool)

(assert (=> b!302223 m!403531))

(declare-fun m!403533 () Bool)

(assert (=> b!302223 m!403533))

(declare-fun m!403535 () Bool)

(assert (=> b!302223 m!403535))

(assert (=> b!302223 m!403521))

(assert (=> b!302223 m!403499))

(declare-fun m!403537 () Bool)

(assert (=> b!302223 m!403537))

(assert (=> b!302223 m!403503))

(assert (=> b!302223 m!403499))

(declare-fun m!403539 () Bool)

(assert (=> b!302223 m!403539))

(assert (=> b!302223 m!403537))

(assert (=> b!302223 m!403533))

(declare-fun m!403541 () Bool)

(assert (=> b!302223 m!403541))

(assert (=> b!302223 m!403527))

(declare-fun m!403543 () Bool)

(assert (=> b!302223 m!403543))

(declare-fun m!403545 () Bool)

(assert (=> b!302223 m!403545))

(declare-fun m!403547 () Bool)

(assert (=> b!302224 m!403547))

(declare-fun m!403549 () Bool)

(assert (=> b!302224 m!403549))

(assert (=> b!302224 m!403547))

(declare-fun m!403551 () Bool)

(assert (=> b!302224 m!403551))

(declare-fun m!403553 () Bool)

(assert (=> b!302224 m!403553))

(assert (=> b!302224 m!403547))

(declare-fun m!403555 () Bool)

(assert (=> b!302224 m!403555))

(assert (=> b!302224 m!403549))

(assert (=> b!302224 m!403553))

(declare-fun m!403557 () Bool)

(assert (=> b!302224 m!403557))

(assert (=> b!302059 d!92918))

(declare-fun bs!35041 () Bool)

(declare-fun b!302379 () Bool)

(assert (= bs!35041 (and b!302379 b!302062)))

(declare-fun lambda!10244 () Int)

(assert (=> bs!35041 (not (= lambda!10244 lambda!10225))))

(declare-fun bs!35042 () Bool)

(assert (= bs!35042 (and b!302379 b!302066)))

(assert (=> bs!35042 (= lambda!10244 lambda!10226)))

(declare-fun bs!35043 () Bool)

(assert (= bs!35043 (and b!302379 d!92918)))

(assert (=> bs!35043 (not (= lambda!10244 lambda!10234))))

(declare-fun bs!35044 () Bool)

(assert (= bs!35044 (and b!302379 b!302223)))

(assert (=> bs!35044 (= lambda!10244 lambda!10235)))

(declare-fun b!302389 () Bool)

(declare-fun e!187634 () Bool)

(assert (=> b!302389 (= e!187634 true)))

(declare-fun b!302388 () Bool)

(declare-fun e!187633 () Bool)

(assert (=> b!302388 (= e!187633 e!187634)))

(declare-fun b!302387 () Bool)

(declare-fun e!187632 () Bool)

(assert (=> b!302387 (= e!187632 e!187633)))

(assert (=> b!302379 e!187632))

(assert (= b!302388 b!302389))

(assert (= b!302387 b!302388))

(assert (= (and b!302379 ((_ is Cons!3974) rules!1920)) b!302387))

(assert (=> b!302389 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10244))))

(assert (=> b!302389 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10244))))

(assert (=> b!302379 true))

(declare-fun b!302377 () Bool)

(declare-fun e!187629 () List!3983)

(declare-fun call!17495 () BalanceConc!2696)

(assert (=> b!302377 (= e!187629 (list!1677 call!17495))))

(declare-fun b!302378 () Bool)

(declare-fun e!187630 () List!3983)

(declare-fun call!17496 () List!3983)

(assert (=> b!302378 (= e!187630 call!17496)))

(declare-fun e!187631 () List!3983)

(assert (=> b!302379 (= e!187631 e!187630)))

(declare-fun lt!128488 () Unit!5560)

(assert (=> b!302379 (= lt!128488 (forallContained!314 tokens!465 lambda!10244 (h!9372 tokens!465)))))

(declare-fun lt!128486 () List!3983)

(assert (=> b!302379 (= lt!128486 (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (t!42917 tokens!465) separatorToken!170))))

(declare-fun lt!128489 () Option!889)

(assert (=> b!302379 (= lt!128489 (maxPrefix!363 thiss!17480 rules!1920 (++!1074 (list!1677 (charsOf!404 (h!9372 tokens!465))) lt!128486)))))

(declare-fun c!57694 () Bool)

(assert (=> b!302379 (= c!57694 (and ((_ is Some!888) lt!128489) (= (_1!2493 (v!14869 lt!128489)) (h!9372 tokens!465))))))

(declare-fun bm!17487 () Bool)

(declare-fun c!57690 () Bool)

(assert (=> bm!17487 (= c!57690 c!57694)))

(declare-fun call!17493 () List!3983)

(assert (=> bm!17487 (= call!17496 (++!1074 e!187629 (ite c!57694 lt!128486 call!17493)))))

(declare-fun b!302380 () Bool)

(declare-fun c!57693 () Bool)

(assert (=> b!302380 (= c!57693 (and ((_ is Some!888) lt!128489) (not (= (_1!2493 (v!14869 lt!128489)) (h!9372 tokens!465)))))))

(declare-fun e!187627 () List!3983)

(assert (=> b!302380 (= e!187630 e!187627)))

(declare-fun b!302381 () Bool)

(assert (=> b!302381 (= e!187627 (++!1074 call!17496 lt!128486))))

(declare-fun b!302382 () Bool)

(declare-fun e!187628 () BalanceConc!2696)

(assert (=> b!302382 (= e!187628 call!17495)))

(declare-fun bm!17488 () Bool)

(declare-fun call!17494 () List!3983)

(assert (=> bm!17488 (= call!17493 call!17494)))

(declare-fun c!57691 () Bool)

(assert (=> bm!17488 (= c!57691 c!57693)))

(declare-fun bm!17489 () Bool)

(declare-fun call!17492 () BalanceConc!2696)

(assert (=> bm!17489 (= call!17492 (charsOf!404 (h!9372 tokens!465)))))

(declare-fun bm!17490 () Bool)

(assert (=> bm!17490 (= call!17495 call!17492)))

(declare-fun b!302383 () Bool)

(assert (=> b!302383 (= e!187628 (charsOf!404 separatorToken!170))))

(declare-fun d!92922 () Bool)

(declare-fun c!57692 () Bool)

(assert (=> d!92922 (= c!57692 ((_ is Cons!3975) tokens!465))))

(assert (=> d!92922 (= (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!187631)))

(declare-fun b!302384 () Bool)

(assert (=> b!302384 (= e!187627 Nil!3973)))

(assert (=> b!302384 (= (print!372 thiss!17480 (singletonSeq!307 (h!9372 tokens!465))) (printTailRec!333 thiss!17480 (singletonSeq!307 (h!9372 tokens!465)) 0 (BalanceConc!2697 Empty!1344)))))

(declare-fun lt!128484 () Unit!5560)

(declare-fun Unit!5568 () Unit!5560)

(assert (=> b!302384 (= lt!128484 Unit!5568)))

(declare-fun lt!128485 () Unit!5560)

(assert (=> b!302384 (= lt!128485 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!136 thiss!17480 rules!1920 call!17493 lt!128486))))

(assert (=> b!302384 false))

(declare-fun lt!128487 () Unit!5560)

(declare-fun Unit!5569 () Unit!5560)

(assert (=> b!302384 (= lt!128487 Unit!5569)))

(declare-fun b!302385 () Bool)

(assert (=> b!302385 (= e!187631 Nil!3973)))

(declare-fun b!302386 () Bool)

(assert (=> b!302386 (= e!187629 call!17494)))

(declare-fun bm!17491 () Bool)

(assert (=> bm!17491 (= call!17494 (list!1677 (ite c!57694 call!17492 e!187628)))))

(assert (= (and d!92922 c!57692) b!302379))

(assert (= (and d!92922 (not c!57692)) b!302385))

(assert (= (and b!302379 c!57694) b!302378))

(assert (= (and b!302379 (not c!57694)) b!302380))

(assert (= (and b!302380 c!57693) b!302381))

(assert (= (and b!302380 (not c!57693)) b!302384))

(assert (= (or b!302381 b!302384) bm!17490))

(assert (= (or b!302381 b!302384) bm!17488))

(assert (= (and bm!17488 c!57691) b!302383))

(assert (= (and bm!17488 (not c!57691)) b!302382))

(assert (= (or b!302378 bm!17490) bm!17489))

(assert (= (or b!302378 bm!17488) bm!17491))

(assert (= (or b!302378 b!302381) bm!17487))

(assert (= (and bm!17487 c!57690) b!302386))

(assert (= (and bm!17487 (not c!57690)) b!302377))

(assert (=> b!302379 m!403285))

(assert (=> b!302379 m!403287))

(assert (=> b!302379 m!403287))

(declare-fun m!403733 () Bool)

(assert (=> b!302379 m!403733))

(assert (=> b!302379 m!403733))

(declare-fun m!403735 () Bool)

(assert (=> b!302379 m!403735))

(assert (=> b!302379 m!403285))

(assert (=> b!302379 m!403269))

(declare-fun m!403737 () Bool)

(assert (=> b!302379 m!403737))

(assert (=> b!302384 m!403325))

(assert (=> b!302384 m!403325))

(declare-fun m!403739 () Bool)

(assert (=> b!302384 m!403739))

(assert (=> b!302384 m!403325))

(declare-fun m!403741 () Bool)

(assert (=> b!302384 m!403741))

(declare-fun m!403743 () Bool)

(assert (=> b!302384 m!403743))

(assert (=> bm!17489 m!403285))

(declare-fun m!403745 () Bool)

(assert (=> bm!17487 m!403745))

(declare-fun m!403747 () Bool)

(assert (=> b!302377 m!403747))

(declare-fun m!403749 () Bool)

(assert (=> b!302381 m!403749))

(declare-fun m!403751 () Bool)

(assert (=> bm!17491 m!403751))

(assert (=> b!302383 m!403273))

(assert (=> b!302059 d!92922))

(declare-fun b!302390 () Bool)

(declare-fun e!187636 () Bool)

(assert (=> b!302390 (= e!187636 (inv!17 (value!26004 separatorToken!170)))))

(declare-fun b!302391 () Bool)

(declare-fun e!187637 () Bool)

(assert (=> b!302391 (= e!187637 e!187636)))

(declare-fun c!57695 () Bool)

(assert (=> b!302391 (= c!57695 ((_ is IntegerValue!2350) (value!26004 separatorToken!170)))))

(declare-fun b!302392 () Bool)

(declare-fun res!137149 () Bool)

(declare-fun e!187635 () Bool)

(assert (=> b!302392 (=> res!137149 e!187635)))

(assert (=> b!302392 (= res!137149 (not ((_ is IntegerValue!2351) (value!26004 separatorToken!170))))))

(assert (=> b!302392 (= e!187636 e!187635)))

(declare-fun b!302393 () Bool)

(assert (=> b!302393 (= e!187637 (inv!16 (value!26004 separatorToken!170)))))

(declare-fun b!302394 () Bool)

(assert (=> b!302394 (= e!187635 (inv!15 (value!26004 separatorToken!170)))))

(declare-fun d!92958 () Bool)

(declare-fun c!57696 () Bool)

(assert (=> d!92958 (= c!57696 ((_ is IntegerValue!2349) (value!26004 separatorToken!170)))))

(assert (=> d!92958 (= (inv!21 (value!26004 separatorToken!170)) e!187637)))

(assert (= (and d!92958 c!57696) b!302393))

(assert (= (and d!92958 (not c!57696)) b!302391))

(assert (= (and b!302391 c!57695) b!302390))

(assert (= (and b!302391 (not c!57695)) b!302392))

(assert (= (and b!302392 (not res!137149)) b!302394))

(declare-fun m!403753 () Bool)

(assert (=> b!302390 m!403753))

(declare-fun m!403755 () Bool)

(assert (=> b!302393 m!403755))

(declare-fun m!403757 () Bool)

(assert (=> b!302394 m!403757))

(assert (=> b!302058 d!92958))

(declare-fun d!92960 () Bool)

(declare-fun res!137154 () Bool)

(declare-fun e!187642 () Bool)

(assert (=> d!92960 (=> res!137154 e!187642)))

(assert (=> d!92960 (= res!137154 ((_ is Nil!3975) tokens!465))))

(assert (=> d!92960 (= (forall!1044 tokens!465 lambda!10225) e!187642)))

(declare-fun b!302399 () Bool)

(declare-fun e!187643 () Bool)

(assert (=> b!302399 (= e!187642 e!187643)))

(declare-fun res!137155 () Bool)

(assert (=> b!302399 (=> (not res!137155) (not e!187643))))

(declare-fun dynLambda!2148 (Int Token!1266) Bool)

(assert (=> b!302399 (= res!137155 (dynLambda!2148 lambda!10225 (h!9372 tokens!465)))))

(declare-fun b!302400 () Bool)

(assert (=> b!302400 (= e!187643 (forall!1044 (t!42917 tokens!465) lambda!10225))))

(assert (= (and d!92960 (not res!137154)) b!302399))

(assert (= (and b!302399 res!137155) b!302400))

(declare-fun b_lambda!10485 () Bool)

(assert (=> (not b_lambda!10485) (not b!302399)))

(declare-fun m!403759 () Bool)

(assert (=> b!302399 m!403759))

(declare-fun m!403761 () Bool)

(assert (=> b!302400 m!403761))

(assert (=> b!302062 d!92960))

(declare-fun d!92962 () Bool)

(declare-fun res!137158 () Bool)

(declare-fun e!187646 () Bool)

(assert (=> d!92962 (=> (not res!137158) (not e!187646))))

(declare-fun rulesValid!249 (LexerInterface!647 List!3984) Bool)

(assert (=> d!92962 (= res!137158 (rulesValid!249 thiss!17480 rules!1920))))

(assert (=> d!92962 (= (rulesInvariant!613 thiss!17480 rules!1920) e!187646)))

(declare-fun b!302403 () Bool)

(declare-datatypes ((List!3986 0))(
  ( (Nil!3976) (Cons!3976 (h!9373 String!4995) (t!42982 List!3986)) )
))
(declare-fun noDuplicateTag!249 (LexerInterface!647 List!3984 List!3986) Bool)

(assert (=> b!302403 (= e!187646 (noDuplicateTag!249 thiss!17480 rules!1920 Nil!3976))))

(assert (= (and d!92962 res!137158) b!302403))

(declare-fun m!403763 () Bool)

(assert (=> d!92962 m!403763))

(declare-fun m!403765 () Bool)

(assert (=> b!302403 m!403765))

(assert (=> b!302061 d!92962))

(declare-fun d!92964 () Bool)

(assert (=> d!92964 (= (isEmpty!2667 rules!1920) ((_ is Nil!3974) rules!1920))))

(assert (=> b!302065 d!92964))

(declare-fun b!302412 () Bool)

(declare-fun e!187652 () List!3983)

(assert (=> b!302412 (= e!187652 lt!128314)))

(declare-fun b!302413 () Bool)

(assert (=> b!302413 (= e!187652 (Cons!3973 (h!9370 lt!128325) (++!1074 (t!42915 lt!128325) lt!128314)))))

(declare-fun b!302415 () Bool)

(declare-fun e!187651 () Bool)

(declare-fun lt!128492 () List!3983)

(assert (=> b!302415 (= e!187651 (or (not (= lt!128314 Nil!3973)) (= lt!128492 lt!128325)))))

(declare-fun b!302414 () Bool)

(declare-fun res!137164 () Bool)

(assert (=> b!302414 (=> (not res!137164) (not e!187651))))

(assert (=> b!302414 (= res!137164 (= (size!3200 lt!128492) (+ (size!3200 lt!128325) (size!3200 lt!128314))))))

(declare-fun d!92966 () Bool)

(assert (=> d!92966 e!187651))

(declare-fun res!137163 () Bool)

(assert (=> d!92966 (=> (not res!137163) (not e!187651))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!599 (List!3983) (InoxSet C!2892))

(assert (=> d!92966 (= res!137163 (= (content!599 lt!128492) ((_ map or) (content!599 lt!128325) (content!599 lt!128314))))))

(assert (=> d!92966 (= lt!128492 e!187652)))

(declare-fun c!57699 () Bool)

(assert (=> d!92966 (= c!57699 ((_ is Nil!3973) lt!128325))))

(assert (=> d!92966 (= (++!1074 lt!128325 lt!128314) lt!128492)))

(assert (= (and d!92966 c!57699) b!302412))

(assert (= (and d!92966 (not c!57699)) b!302413))

(assert (= (and d!92966 res!137163) b!302414))

(assert (= (and b!302414 res!137164) b!302415))

(declare-fun m!403767 () Bool)

(assert (=> b!302413 m!403767))

(declare-fun m!403769 () Bool)

(assert (=> b!302414 m!403769))

(declare-fun m!403771 () Bool)

(assert (=> b!302414 m!403771))

(declare-fun m!403773 () Bool)

(assert (=> b!302414 m!403773))

(declare-fun m!403775 () Bool)

(assert (=> d!92966 m!403775))

(declare-fun m!403777 () Bool)

(assert (=> d!92966 m!403777))

(declare-fun m!403779 () Bool)

(assert (=> d!92966 m!403779))

(assert (=> b!302064 d!92966))

(declare-fun d!92968 () Bool)

(assert (=> d!92968 (= (isEmpty!2666 (_2!2493 lt!128322)) ((_ is Nil!3973) (_2!2493 lt!128322)))))

(assert (=> b!302063 d!92968))

(declare-fun d!92970 () Bool)

(declare-fun isEmpty!2670 (Option!888) Bool)

(assert (=> d!92970 (= (isDefined!727 (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465))))) (not (isEmpty!2670 (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))

(declare-fun bs!35045 () Bool)

(assert (= bs!35045 d!92970))

(assert (=> bs!35045 m!403303))

(declare-fun m!403781 () Bool)

(assert (=> bs!35045 m!403781))

(assert (=> b!302066 d!92970))

(declare-fun d!92972 () Bool)

(declare-fun e!187678 () Bool)

(assert (=> d!92972 e!187678))

(declare-fun res!137188 () Bool)

(assert (=> d!92972 (=> (not res!137188) (not e!187678))))

(declare-fun lt!128513 () Option!888)

(declare-fun maxPrefixZipper!134 (LexerInterface!647 List!3984 List!3983) Option!889)

(assert (=> d!92972 (= res!137188 (= (isDefined!727 lt!128513) (isDefined!728 (maxPrefixZipper!134 thiss!17480 rules!1920 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465))))))))))

(declare-fun e!187680 () Option!888)

(assert (=> d!92972 (= lt!128513 e!187680)))

(declare-fun c!57707 () Bool)

(assert (=> d!92972 (= c!57707 (and ((_ is Cons!3974) rules!1920) ((_ is Nil!3974) (t!42916 rules!1920))))))

(declare-fun lt!128516 () Unit!5560)

(declare-fun lt!128515 () Unit!5560)

(assert (=> d!92972 (= lt!128516 lt!128515)))

(declare-fun lt!128511 () List!3983)

(declare-fun lt!128512 () List!3983)

(declare-fun isPrefix!424 (List!3983 List!3983) Bool)

(assert (=> d!92972 (isPrefix!424 lt!128511 lt!128512)))

(declare-fun lemmaIsPrefixRefl!230 (List!3983 List!3983) Unit!5560)

(assert (=> d!92972 (= lt!128515 (lemmaIsPrefixRefl!230 lt!128511 lt!128512))))

(assert (=> d!92972 (= lt!128512 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))

(assert (=> d!92972 (= lt!128511 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))

(declare-fun rulesValidInductive!225 (LexerInterface!647 List!3984) Bool)

(assert (=> d!92972 (rulesValidInductive!225 thiss!17480 rules!1920)))

(assert (=> d!92972 (= (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))) lt!128513)))

(declare-fun b!302452 () Bool)

(declare-fun e!187681 () Bool)

(declare-fun get!1351 (Option!888) tuple2!4556)

(assert (=> b!302452 (= e!187681 (= (list!1677 (_2!2494 (get!1351 lt!128513))) (_2!2493 (get!1350 (maxPrefix!363 thiss!17480 rules!1920 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))))

(declare-fun b!302453 () Bool)

(declare-fun e!187677 () Bool)

(assert (=> b!302453 (= e!187677 e!187681)))

(declare-fun res!137191 () Bool)

(assert (=> b!302453 (=> (not res!137191) (not e!187681))))

(assert (=> b!302453 (= res!137191 (= (_1!2494 (get!1351 lt!128513)) (_1!2493 (get!1350 (maxPrefix!363 thiss!17480 rules!1920 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))))

(declare-fun b!302454 () Bool)

(declare-fun call!17499 () Option!888)

(assert (=> b!302454 (= e!187680 call!17499)))

(declare-fun b!302455 () Bool)

(declare-fun e!187682 () Bool)

(assert (=> b!302455 (= e!187682 (= (list!1677 (_2!2494 (get!1351 lt!128513))) (_2!2493 (get!1350 (maxPrefixZipper!134 thiss!17480 rules!1920 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))))

(declare-fun bm!17494 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!135 (LexerInterface!647 Rule!1322 BalanceConc!2696) Option!888)

(assert (=> bm!17494 (= call!17499 (maxPrefixOneRuleZipperSequence!135 thiss!17480 (h!9371 rules!1920) (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))

(declare-fun b!302456 () Bool)

(declare-fun e!187679 () Bool)

(assert (=> b!302456 (= e!187679 e!187682)))

(declare-fun res!137190 () Bool)

(assert (=> b!302456 (=> (not res!137190) (not e!187682))))

(assert (=> b!302456 (= res!137190 (= (_1!2494 (get!1351 lt!128513)) (_1!2493 (get!1350 (maxPrefixZipper!134 thiss!17480 rules!1920 (list!1677 (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))))))

(declare-fun b!302457 () Bool)

(declare-fun res!137187 () Bool)

(assert (=> b!302457 (=> (not res!137187) (not e!187678))))

(assert (=> b!302457 (= res!137187 e!187679)))

(declare-fun res!137192 () Bool)

(assert (=> b!302457 (=> res!137192 e!187679)))

(assert (=> b!302457 (= res!137192 (not (isDefined!727 lt!128513)))))

(declare-fun b!302458 () Bool)

(declare-fun lt!128510 () Option!888)

(declare-fun lt!128514 () Option!888)

(assert (=> b!302458 (= e!187680 (ite (and ((_ is None!887) lt!128510) ((_ is None!887) lt!128514)) None!887 (ite ((_ is None!887) lt!128514) lt!128510 (ite ((_ is None!887) lt!128510) lt!128514 (ite (>= (size!3199 (_1!2494 (v!14868 lt!128510))) (size!3199 (_1!2494 (v!14868 lt!128514)))) lt!128510 lt!128514)))))))

(assert (=> b!302458 (= lt!128510 call!17499)))

(assert (=> b!302458 (= lt!128514 (maxPrefixZipperSequence!326 thiss!17480 (t!42916 rules!1920) (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465)))))))

(declare-fun b!302459 () Bool)

(assert (=> b!302459 (= e!187678 e!187677)))

(declare-fun res!137189 () Bool)

(assert (=> b!302459 (=> res!137189 e!187677)))

(assert (=> b!302459 (= res!137189 (not (isDefined!727 lt!128513)))))

(assert (= (and d!92972 c!57707) b!302454))

(assert (= (and d!92972 (not c!57707)) b!302458))

(assert (= (or b!302454 b!302458) bm!17494))

(assert (= (and d!92972 res!137188) b!302457))

(assert (= (and b!302457 (not res!137192)) b!302456))

(assert (= (and b!302456 res!137190) b!302455))

(assert (= (and b!302457 res!137187) b!302459))

(assert (= (and b!302459 (not res!137189)) b!302453))

(assert (= (and b!302453 res!137191) b!302452))

(declare-fun m!403809 () Bool)

(assert (=> b!302453 m!403809))

(assert (=> b!302453 m!403301))

(declare-fun m!403811 () Bool)

(assert (=> b!302453 m!403811))

(assert (=> b!302453 m!403811))

(declare-fun m!403813 () Bool)

(assert (=> b!302453 m!403813))

(assert (=> b!302453 m!403813))

(declare-fun m!403819 () Bool)

(assert (=> b!302453 m!403819))

(assert (=> bm!17494 m!403301))

(declare-fun m!403823 () Bool)

(assert (=> bm!17494 m!403823))

(declare-fun m!403825 () Bool)

(assert (=> b!302459 m!403825))

(assert (=> d!92972 m!403811))

(declare-fun m!403827 () Bool)

(assert (=> d!92972 m!403827))

(declare-fun m!403829 () Bool)

(assert (=> d!92972 m!403829))

(assert (=> d!92972 m!403301))

(assert (=> d!92972 m!403811))

(assert (=> d!92972 m!403827))

(declare-fun m!403831 () Bool)

(assert (=> d!92972 m!403831))

(assert (=> d!92972 m!403825))

(declare-fun m!403833 () Bool)

(assert (=> d!92972 m!403833))

(declare-fun m!403835 () Bool)

(assert (=> d!92972 m!403835))

(assert (=> b!302455 m!403827))

(declare-fun m!403837 () Bool)

(assert (=> b!302455 m!403837))

(assert (=> b!302455 m!403811))

(assert (=> b!302455 m!403827))

(declare-fun m!403839 () Bool)

(assert (=> b!302455 m!403839))

(assert (=> b!302455 m!403301))

(assert (=> b!302455 m!403811))

(assert (=> b!302455 m!403809))

(assert (=> b!302458 m!403301))

(declare-fun m!403841 () Bool)

(assert (=> b!302458 m!403841))

(assert (=> b!302457 m!403825))

(assert (=> b!302452 m!403839))

(assert (=> b!302452 m!403301))

(assert (=> b!302452 m!403811))

(assert (=> b!302452 m!403809))

(assert (=> b!302452 m!403813))

(assert (=> b!302452 m!403819))

(assert (=> b!302452 m!403811))

(assert (=> b!302452 m!403813))

(assert (=> b!302456 m!403809))

(assert (=> b!302456 m!403301))

(assert (=> b!302456 m!403811))

(assert (=> b!302456 m!403811))

(assert (=> b!302456 m!403827))

(assert (=> b!302456 m!403827))

(assert (=> b!302456 m!403837))

(assert (=> b!302066 d!92972))

(declare-fun d!92986 () Bool)

(declare-fun fromListB!369 (List!3983) BalanceConc!2696)

(assert (=> d!92986 (= (seqFromList!888 (originalCharacters!804 (h!9372 tokens!465))) (fromListB!369 (originalCharacters!804 (h!9372 tokens!465))))))

(declare-fun bs!35048 () Bool)

(assert (= bs!35048 d!92986))

(declare-fun m!403843 () Bool)

(assert (=> bs!35048 m!403843))

(assert (=> b!302066 d!92986))

(declare-fun d!92988 () Bool)

(assert (=> d!92988 (dynLambda!2148 lambda!10226 (h!9372 tokens!465))))

(declare-fun lt!128522 () Unit!5560)

(declare-fun choose!2665 (List!3985 Int Token!1266) Unit!5560)

(assert (=> d!92988 (= lt!128522 (choose!2665 tokens!465 lambda!10226 (h!9372 tokens!465)))))

(declare-fun e!187685 () Bool)

(assert (=> d!92988 e!187685))

(declare-fun res!137195 () Bool)

(assert (=> d!92988 (=> (not res!137195) (not e!187685))))

(assert (=> d!92988 (= res!137195 (forall!1044 tokens!465 lambda!10226))))

(assert (=> d!92988 (= (forallContained!314 tokens!465 lambda!10226 (h!9372 tokens!465)) lt!128522)))

(declare-fun b!302462 () Bool)

(declare-fun contains!786 (List!3985 Token!1266) Bool)

(assert (=> b!302462 (= e!187685 (contains!786 tokens!465 (h!9372 tokens!465)))))

(assert (= (and d!92988 res!137195) b!302462))

(declare-fun b_lambda!10487 () Bool)

(assert (=> (not b_lambda!10487) (not d!92988)))

(declare-fun m!403845 () Bool)

(assert (=> d!92988 m!403845))

(declare-fun m!403847 () Bool)

(assert (=> d!92988 m!403847))

(declare-fun m!403849 () Bool)

(assert (=> d!92988 m!403849))

(declare-fun m!403851 () Bool)

(assert (=> b!302462 m!403851))

(assert (=> b!302066 d!92988))

(declare-fun b!302497 () Bool)

(declare-fun res!137215 () Bool)

(declare-fun e!187708 () Bool)

(assert (=> b!302497 (=> (not res!137215) (not e!187708))))

(declare-fun tail!526 (List!3983) List!3983)

(assert (=> b!302497 (= res!137215 (isEmpty!2666 (tail!526 lt!128325)))))

(declare-fun b!302498 () Bool)

(declare-fun res!137216 () Bool)

(assert (=> b!302498 (=> (not res!137216) (not e!187708))))

(declare-fun call!17502 () Bool)

(assert (=> b!302498 (= res!137216 (not call!17502))))

(declare-fun b!302499 () Bool)

(declare-fun e!187704 () Bool)

(declare-fun e!187707 () Bool)

(assert (=> b!302499 (= e!187704 e!187707)))

(declare-fun c!57716 () Bool)

(assert (=> b!302499 (= c!57716 ((_ is EmptyLang!985) (regex!761 (rule!1374 (h!9372 tokens!465)))))))

(declare-fun b!302500 () Bool)

(declare-fun res!137221 () Bool)

(declare-fun e!187710 () Bool)

(assert (=> b!302500 (=> res!137221 e!187710)))

(assert (=> b!302500 (= res!137221 e!187708)))

(declare-fun res!137220 () Bool)

(assert (=> b!302500 (=> (not res!137220) (not e!187708))))

(declare-fun lt!128539 () Bool)

(assert (=> b!302500 (= res!137220 lt!128539)))

(declare-fun bm!17497 () Bool)

(assert (=> bm!17497 (= call!17502 (isEmpty!2666 lt!128325))))

(declare-fun b!302502 () Bool)

(declare-fun res!137218 () Bool)

(assert (=> b!302502 (=> res!137218 e!187710)))

(assert (=> b!302502 (= res!137218 (not ((_ is ElementMatch!985) (regex!761 (rule!1374 (h!9372 tokens!465))))))))

(assert (=> b!302502 (= e!187707 e!187710)))

(declare-fun b!302503 () Bool)

(declare-fun e!187706 () Bool)

(assert (=> b!302503 (= e!187710 e!187706)))

(declare-fun res!137219 () Bool)

(assert (=> b!302503 (=> (not res!137219) (not e!187706))))

(assert (=> b!302503 (= res!137219 (not lt!128539))))

(declare-fun b!302504 () Bool)

(declare-fun e!187705 () Bool)

(assert (=> b!302504 (= e!187706 e!187705)))

(declare-fun res!137217 () Bool)

(assert (=> b!302504 (=> res!137217 e!187705)))

(assert (=> b!302504 (= res!137217 call!17502)))

(declare-fun b!302505 () Bool)

(assert (=> b!302505 (= e!187704 (= lt!128539 call!17502))))

(declare-fun b!302506 () Bool)

(assert (=> b!302506 (= e!187707 (not lt!128539))))

(declare-fun b!302507 () Bool)

(declare-fun head!944 (List!3983) C!2892)

(assert (=> b!302507 (= e!187705 (not (= (head!944 lt!128325) (c!57617 (regex!761 (rule!1374 (h!9372 tokens!465)))))))))

(declare-fun d!92990 () Bool)

(assert (=> d!92990 e!187704))

(declare-fun c!57718 () Bool)

(assert (=> d!92990 (= c!57718 ((_ is EmptyExpr!985) (regex!761 (rule!1374 (h!9372 tokens!465)))))))

(declare-fun e!187709 () Bool)

(assert (=> d!92990 (= lt!128539 e!187709)))

(declare-fun c!57717 () Bool)

(assert (=> d!92990 (= c!57717 (isEmpty!2666 lt!128325))))

(declare-fun validRegex!263 (Regex!985) Bool)

(assert (=> d!92990 (validRegex!263 (regex!761 (rule!1374 (h!9372 tokens!465))))))

(assert (=> d!92990 (= (matchR!303 (regex!761 (rule!1374 (h!9372 tokens!465))) lt!128325) lt!128539)))

(declare-fun b!302501 () Bool)

(declare-fun derivativeStep!154 (Regex!985 C!2892) Regex!985)

(assert (=> b!302501 (= e!187709 (matchR!303 (derivativeStep!154 (regex!761 (rule!1374 (h!9372 tokens!465))) (head!944 lt!128325)) (tail!526 lt!128325)))))

(declare-fun b!302508 () Bool)

(assert (=> b!302508 (= e!187708 (= (head!944 lt!128325) (c!57617 (regex!761 (rule!1374 (h!9372 tokens!465))))))))

(declare-fun b!302509 () Bool)

(declare-fun nullable!188 (Regex!985) Bool)

(assert (=> b!302509 (= e!187709 (nullable!188 (regex!761 (rule!1374 (h!9372 tokens!465)))))))

(declare-fun b!302510 () Bool)

(declare-fun res!137214 () Bool)

(assert (=> b!302510 (=> res!137214 e!187705)))

(assert (=> b!302510 (= res!137214 (not (isEmpty!2666 (tail!526 lt!128325))))))

(assert (= (and d!92990 c!57717) b!302509))

(assert (= (and d!92990 (not c!57717)) b!302501))

(assert (= (and d!92990 c!57718) b!302505))

(assert (= (and d!92990 (not c!57718)) b!302499))

(assert (= (and b!302499 c!57716) b!302506))

(assert (= (and b!302499 (not c!57716)) b!302502))

(assert (= (and b!302502 (not res!137218)) b!302500))

(assert (= (and b!302500 res!137220) b!302498))

(assert (= (and b!302498 res!137216) b!302497))

(assert (= (and b!302497 res!137215) b!302508))

(assert (= (and b!302500 (not res!137221)) b!302503))

(assert (= (and b!302503 res!137219) b!302504))

(assert (= (and b!302504 (not res!137217)) b!302510))

(assert (= (and b!302510 (not res!137214)) b!302507))

(assert (= (or b!302505 b!302498 b!302504) bm!17497))

(declare-fun m!403853 () Bool)

(assert (=> b!302509 m!403853))

(declare-fun m!403855 () Bool)

(assert (=> b!302508 m!403855))

(declare-fun m!403857 () Bool)

(assert (=> d!92990 m!403857))

(declare-fun m!403859 () Bool)

(assert (=> d!92990 m!403859))

(assert (=> b!302501 m!403855))

(assert (=> b!302501 m!403855))

(declare-fun m!403861 () Bool)

(assert (=> b!302501 m!403861))

(declare-fun m!403863 () Bool)

(assert (=> b!302501 m!403863))

(assert (=> b!302501 m!403861))

(assert (=> b!302501 m!403863))

(declare-fun m!403865 () Bool)

(assert (=> b!302501 m!403865))

(assert (=> bm!17497 m!403857))

(assert (=> b!302507 m!403855))

(assert (=> b!302510 m!403863))

(assert (=> b!302510 m!403863))

(declare-fun m!403867 () Bool)

(assert (=> b!302510 m!403867))

(assert (=> b!302497 m!403863))

(assert (=> b!302497 m!403863))

(assert (=> b!302497 m!403867))

(assert (=> b!302070 d!92990))

(declare-fun d!92992 () Bool)

(assert (=> d!92992 (= (get!1350 lt!128321) (v!14869 lt!128321))))

(assert (=> b!302070 d!92992))

(declare-fun d!92994 () Bool)

(declare-fun isEmpty!2672 (Option!889) Bool)

(assert (=> d!92994 (= (isDefined!728 lt!128321) (not (isEmpty!2672 lt!128321)))))

(declare-fun bs!35050 () Bool)

(assert (= bs!35050 d!92994))

(declare-fun m!403905 () Bool)

(assert (=> bs!35050 m!403905))

(assert (=> b!302070 d!92994))

(declare-fun b!302544 () Bool)

(declare-fun e!187729 () Bool)

(declare-fun lt!128563 () Option!889)

(declare-fun contains!787 (List!3984 Rule!1322) Bool)

(assert (=> b!302544 (= e!187729 (contains!787 rules!1920 (rule!1374 (_1!2493 (get!1350 lt!128563)))))))

(declare-fun b!302545 () Bool)

(declare-fun e!187728 () Bool)

(assert (=> b!302545 (= e!187728 e!187729)))

(declare-fun res!137244 () Bool)

(assert (=> b!302545 (=> (not res!137244) (not e!187729))))

(assert (=> b!302545 (= res!137244 (isDefined!728 lt!128563))))

(declare-fun b!302546 () Bool)

(declare-fun res!137243 () Bool)

(assert (=> b!302546 (=> (not res!137243) (not e!187729))))

(assert (=> b!302546 (= res!137243 (= (list!1677 (charsOf!404 (_1!2493 (get!1350 lt!128563)))) (originalCharacters!804 (_1!2493 (get!1350 lt!128563)))))))

(declare-fun b!302547 () Bool)

(declare-fun res!137247 () Bool)

(assert (=> b!302547 (=> (not res!137247) (not e!187729))))

(assert (=> b!302547 (= res!137247 (matchR!303 (regex!761 (rule!1374 (_1!2493 (get!1350 lt!128563)))) (list!1677 (charsOf!404 (_1!2493 (get!1350 lt!128563))))))))

(declare-fun d!93000 () Bool)

(assert (=> d!93000 e!187728))

(declare-fun res!137245 () Bool)

(assert (=> d!93000 (=> res!137245 e!187728)))

(assert (=> d!93000 (= res!137245 (isEmpty!2672 lt!128563))))

(declare-fun e!187730 () Option!889)

(assert (=> d!93000 (= lt!128563 e!187730)))

(declare-fun c!57725 () Bool)

(assert (=> d!93000 (= c!57725 (and ((_ is Cons!3974) rules!1920) ((_ is Nil!3974) (t!42916 rules!1920))))))

(declare-fun lt!128562 () Unit!5560)

(declare-fun lt!128561 () Unit!5560)

(assert (=> d!93000 (= lt!128562 lt!128561)))

(assert (=> d!93000 (isPrefix!424 lt!128325 lt!128325)))

(assert (=> d!93000 (= lt!128561 (lemmaIsPrefixRefl!230 lt!128325 lt!128325))))

(assert (=> d!93000 (rulesValidInductive!225 thiss!17480 rules!1920)))

(assert (=> d!93000 (= (maxPrefix!363 thiss!17480 rules!1920 lt!128325) lt!128563)))

(declare-fun b!302548 () Bool)

(declare-fun res!137248 () Bool)

(assert (=> b!302548 (=> (not res!137248) (not e!187729))))

(assert (=> b!302548 (= res!137248 (< (size!3200 (_2!2493 (get!1350 lt!128563))) (size!3200 lt!128325)))))

(declare-fun bm!17500 () Bool)

(declare-fun call!17505 () Option!889)

(declare-fun maxPrefixOneRule!165 (LexerInterface!647 Rule!1322 List!3983) Option!889)

(assert (=> bm!17500 (= call!17505 (maxPrefixOneRule!165 thiss!17480 (h!9371 rules!1920) lt!128325))))

(declare-fun b!302549 () Bool)

(declare-fun res!137249 () Bool)

(assert (=> b!302549 (=> (not res!137249) (not e!187729))))

(declare-fun apply!870 (TokenValueInjection!1338 BalanceConc!2696) TokenValue!783)

(assert (=> b!302549 (= res!137249 (= (value!26004 (_1!2493 (get!1350 lt!128563))) (apply!870 (transformation!761 (rule!1374 (_1!2493 (get!1350 lt!128563)))) (seqFromList!888 (originalCharacters!804 (_1!2493 (get!1350 lt!128563)))))))))

(declare-fun b!302550 () Bool)

(assert (=> b!302550 (= e!187730 call!17505)))

(declare-fun b!302551 () Bool)

(declare-fun res!137246 () Bool)

(assert (=> b!302551 (=> (not res!137246) (not e!187729))))

(assert (=> b!302551 (= res!137246 (= (++!1074 (list!1677 (charsOf!404 (_1!2493 (get!1350 lt!128563)))) (_2!2493 (get!1350 lt!128563))) lt!128325))))

(declare-fun b!302552 () Bool)

(declare-fun lt!128564 () Option!889)

(declare-fun lt!128560 () Option!889)

(assert (=> b!302552 (= e!187730 (ite (and ((_ is None!888) lt!128564) ((_ is None!888) lt!128560)) None!888 (ite ((_ is None!888) lt!128560) lt!128564 (ite ((_ is None!888) lt!128564) lt!128560 (ite (>= (size!3199 (_1!2493 (v!14869 lt!128564))) (size!3199 (_1!2493 (v!14869 lt!128560)))) lt!128564 lt!128560)))))))

(assert (=> b!302552 (= lt!128564 call!17505)))

(assert (=> b!302552 (= lt!128560 (maxPrefix!363 thiss!17480 (t!42916 rules!1920) lt!128325))))

(assert (= (and d!93000 c!57725) b!302550))

(assert (= (and d!93000 (not c!57725)) b!302552))

(assert (= (or b!302550 b!302552) bm!17500))

(assert (= (and d!93000 (not res!137245)) b!302545))

(assert (= (and b!302545 res!137244) b!302546))

(assert (= (and b!302546 res!137243) b!302548))

(assert (= (and b!302548 res!137248) b!302551))

(assert (= (and b!302551 res!137246) b!302549))

(assert (= (and b!302549 res!137249) b!302547))

(assert (= (and b!302547 res!137247) b!302544))

(declare-fun m!403925 () Bool)

(assert (=> d!93000 m!403925))

(declare-fun m!403927 () Bool)

(assert (=> d!93000 m!403927))

(declare-fun m!403929 () Bool)

(assert (=> d!93000 m!403929))

(assert (=> d!93000 m!403833))

(declare-fun m!403931 () Bool)

(assert (=> bm!17500 m!403931))

(declare-fun m!403933 () Bool)

(assert (=> b!302551 m!403933))

(declare-fun m!403935 () Bool)

(assert (=> b!302551 m!403935))

(assert (=> b!302551 m!403935))

(declare-fun m!403937 () Bool)

(assert (=> b!302551 m!403937))

(assert (=> b!302551 m!403937))

(declare-fun m!403939 () Bool)

(assert (=> b!302551 m!403939))

(assert (=> b!302546 m!403933))

(assert (=> b!302546 m!403935))

(assert (=> b!302546 m!403935))

(assert (=> b!302546 m!403937))

(assert (=> b!302544 m!403933))

(declare-fun m!403941 () Bool)

(assert (=> b!302544 m!403941))

(assert (=> b!302547 m!403933))

(assert (=> b!302547 m!403935))

(assert (=> b!302547 m!403935))

(assert (=> b!302547 m!403937))

(assert (=> b!302547 m!403937))

(declare-fun m!403943 () Bool)

(assert (=> b!302547 m!403943))

(assert (=> b!302549 m!403933))

(declare-fun m!403945 () Bool)

(assert (=> b!302549 m!403945))

(assert (=> b!302549 m!403945))

(declare-fun m!403947 () Bool)

(assert (=> b!302549 m!403947))

(declare-fun m!403949 () Bool)

(assert (=> b!302545 m!403949))

(declare-fun m!403951 () Bool)

(assert (=> b!302552 m!403951))

(assert (=> b!302548 m!403933))

(declare-fun m!403953 () Bool)

(assert (=> b!302548 m!403953))

(assert (=> b!302548 m!403771))

(assert (=> b!302070 d!93000))

(declare-fun d!93008 () Bool)

(declare-fun fromListB!370 (List!3985) BalanceConc!2698)

(assert (=> d!93008 (= (seqFromList!887 (t!42917 tokens!465)) (fromListB!370 (t!42917 tokens!465)))))

(declare-fun bs!35051 () Bool)

(assert (= bs!35051 d!93008))

(declare-fun m!403955 () Bool)

(assert (=> bs!35051 m!403955))

(assert (=> b!302048 d!93008))

(declare-fun d!93010 () Bool)

(assert (=> d!93010 (= (list!1677 (charsOf!404 separatorToken!170)) (list!1680 (c!57616 (charsOf!404 separatorToken!170))))))

(declare-fun bs!35052 () Bool)

(assert (= bs!35052 d!93010))

(declare-fun m!403957 () Bool)

(assert (=> bs!35052 m!403957))

(assert (=> b!302048 d!93010))

(declare-fun d!93012 () Bool)

(assert (=> d!93012 (= (list!1677 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 (seqFromList!887 (t!42917 tokens!465)) separatorToken!170 0)) (list!1680 (c!57616 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 (seqFromList!887 (t!42917 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!35053 () Bool)

(assert (= bs!35053 d!93012))

(declare-fun m!403959 () Bool)

(assert (=> bs!35053 m!403959))

(assert (=> b!302048 d!93012))

(declare-fun b!302553 () Bool)

(declare-fun e!187732 () List!3983)

(assert (=> b!302553 (= e!187732 lt!128314)))

(declare-fun b!302554 () Bool)

(assert (=> b!302554 (= e!187732 (Cons!3973 (h!9370 (++!1074 lt!128325 lt!128320)) (++!1074 (t!42915 (++!1074 lt!128325 lt!128320)) lt!128314)))))

(declare-fun lt!128565 () List!3983)

(declare-fun b!302556 () Bool)

(declare-fun e!187731 () Bool)

(assert (=> b!302556 (= e!187731 (or (not (= lt!128314 Nil!3973)) (= lt!128565 (++!1074 lt!128325 lt!128320))))))

(declare-fun b!302555 () Bool)

(declare-fun res!137251 () Bool)

(assert (=> b!302555 (=> (not res!137251) (not e!187731))))

(assert (=> b!302555 (= res!137251 (= (size!3200 lt!128565) (+ (size!3200 (++!1074 lt!128325 lt!128320)) (size!3200 lt!128314))))))

(declare-fun d!93014 () Bool)

(assert (=> d!93014 e!187731))

(declare-fun res!137250 () Bool)

(assert (=> d!93014 (=> (not res!137250) (not e!187731))))

(assert (=> d!93014 (= res!137250 (= (content!599 lt!128565) ((_ map or) (content!599 (++!1074 lt!128325 lt!128320)) (content!599 lt!128314))))))

(assert (=> d!93014 (= lt!128565 e!187732)))

(declare-fun c!57726 () Bool)

(assert (=> d!93014 (= c!57726 ((_ is Nil!3973) (++!1074 lt!128325 lt!128320)))))

(assert (=> d!93014 (= (++!1074 (++!1074 lt!128325 lt!128320) lt!128314) lt!128565)))

(assert (= (and d!93014 c!57726) b!302553))

(assert (= (and d!93014 (not c!57726)) b!302554))

(assert (= (and d!93014 res!137250) b!302555))

(assert (= (and b!302555 res!137251) b!302556))

(declare-fun m!403961 () Bool)

(assert (=> b!302554 m!403961))

(declare-fun m!403963 () Bool)

(assert (=> b!302555 m!403963))

(assert (=> b!302555 m!403279))

(declare-fun m!403965 () Bool)

(assert (=> b!302555 m!403965))

(assert (=> b!302555 m!403773))

(declare-fun m!403967 () Bool)

(assert (=> d!93014 m!403967))

(assert (=> d!93014 m!403279))

(declare-fun m!403969 () Bool)

(assert (=> d!93014 m!403969))

(assert (=> d!93014 m!403779))

(assert (=> b!302048 d!93014))

(declare-fun d!93016 () Bool)

(assert (=> d!93016 (= (++!1074 (++!1074 lt!128325 lt!128320) lt!128314) (++!1074 lt!128325 (++!1074 lt!128320 lt!128314)))))

(declare-fun lt!128568 () Unit!5560)

(declare-fun choose!2666 (List!3983 List!3983 List!3983) Unit!5560)

(assert (=> d!93016 (= lt!128568 (choose!2666 lt!128325 lt!128320 lt!128314))))

(assert (=> d!93016 (= (lemmaConcatAssociativity!468 lt!128325 lt!128320 lt!128314) lt!128568)))

(declare-fun bs!35054 () Bool)

(assert (= bs!35054 d!93016))

(assert (=> bs!35054 m!403279))

(assert (=> bs!35054 m!403279))

(assert (=> bs!35054 m!403281))

(assert (=> bs!35054 m!403277))

(assert (=> bs!35054 m!403277))

(declare-fun m!403971 () Bool)

(assert (=> bs!35054 m!403971))

(declare-fun m!403973 () Bool)

(assert (=> bs!35054 m!403973))

(assert (=> b!302048 d!93016))

(declare-fun bs!35055 () Bool)

(declare-fun b!302559 () Bool)

(assert (= bs!35055 (and b!302559 b!302062)))

(declare-fun lambda!10245 () Int)

(assert (=> bs!35055 (not (= lambda!10245 lambda!10225))))

(declare-fun bs!35056 () Bool)

(assert (= bs!35056 (and b!302559 b!302066)))

(assert (=> bs!35056 (= lambda!10245 lambda!10226)))

(declare-fun bs!35057 () Bool)

(assert (= bs!35057 (and b!302559 b!302379)))

(assert (=> bs!35057 (= lambda!10245 lambda!10244)))

(declare-fun bs!35058 () Bool)

(assert (= bs!35058 (and b!302559 d!92918)))

(assert (=> bs!35058 (not (= lambda!10245 lambda!10234))))

(declare-fun bs!35059 () Bool)

(assert (= bs!35059 (and b!302559 b!302223)))

(assert (=> bs!35059 (= lambda!10245 lambda!10235)))

(declare-fun b!302569 () Bool)

(declare-fun e!187740 () Bool)

(assert (=> b!302569 (= e!187740 true)))

(declare-fun b!302568 () Bool)

(declare-fun e!187739 () Bool)

(assert (=> b!302568 (= e!187739 e!187740)))

(declare-fun b!302567 () Bool)

(declare-fun e!187738 () Bool)

(assert (=> b!302567 (= e!187738 e!187739)))

(assert (=> b!302559 e!187738))

(assert (= b!302568 b!302569))

(assert (= b!302567 b!302568))

(assert (= (and b!302559 ((_ is Cons!3974) rules!1920)) b!302567))

(assert (=> b!302569 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10245))))

(assert (=> b!302569 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10245))))

(assert (=> b!302559 true))

(declare-fun b!302557 () Bool)

(declare-fun e!187735 () List!3983)

(declare-fun call!17509 () BalanceConc!2696)

(assert (=> b!302557 (= e!187735 (list!1677 call!17509))))

(declare-fun b!302558 () Bool)

(declare-fun e!187736 () List!3983)

(declare-fun call!17510 () List!3983)

(assert (=> b!302558 (= e!187736 call!17510)))

(declare-fun e!187737 () List!3983)

(assert (=> b!302559 (= e!187737 e!187736)))

(declare-fun lt!128573 () Unit!5560)

(assert (=> b!302559 (= lt!128573 (forallContained!314 (t!42917 tokens!465) lambda!10245 (h!9372 (t!42917 tokens!465))))))

(declare-fun lt!128571 () List!3983)

(assert (=> b!302559 (= lt!128571 (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (t!42917 (t!42917 tokens!465)) separatorToken!170))))

(declare-fun lt!128574 () Option!889)

(assert (=> b!302559 (= lt!128574 (maxPrefix!363 thiss!17480 rules!1920 (++!1074 (list!1677 (charsOf!404 (h!9372 (t!42917 tokens!465)))) lt!128571)))))

(declare-fun c!57731 () Bool)

(assert (=> b!302559 (= c!57731 (and ((_ is Some!888) lt!128574) (= (_1!2493 (v!14869 lt!128574)) (h!9372 (t!42917 tokens!465)))))))

(declare-fun bm!17501 () Bool)

(declare-fun c!57727 () Bool)

(assert (=> bm!17501 (= c!57727 c!57731)))

(declare-fun call!17507 () List!3983)

(assert (=> bm!17501 (= call!17510 (++!1074 e!187735 (ite c!57731 lt!128571 call!17507)))))

(declare-fun b!302560 () Bool)

(declare-fun c!57730 () Bool)

(assert (=> b!302560 (= c!57730 (and ((_ is Some!888) lt!128574) (not (= (_1!2493 (v!14869 lt!128574)) (h!9372 (t!42917 tokens!465))))))))

(declare-fun e!187733 () List!3983)

(assert (=> b!302560 (= e!187736 e!187733)))

(declare-fun b!302561 () Bool)

(assert (=> b!302561 (= e!187733 (++!1074 call!17510 lt!128571))))

(declare-fun b!302562 () Bool)

(declare-fun e!187734 () BalanceConc!2696)

(assert (=> b!302562 (= e!187734 call!17509)))

(declare-fun bm!17502 () Bool)

(declare-fun call!17508 () List!3983)

(assert (=> bm!17502 (= call!17507 call!17508)))

(declare-fun c!57728 () Bool)

(assert (=> bm!17502 (= c!57728 c!57730)))

(declare-fun bm!17503 () Bool)

(declare-fun call!17506 () BalanceConc!2696)

(assert (=> bm!17503 (= call!17506 (charsOf!404 (h!9372 (t!42917 tokens!465))))))

(declare-fun bm!17504 () Bool)

(assert (=> bm!17504 (= call!17509 call!17506)))

(declare-fun b!302563 () Bool)

(assert (=> b!302563 (= e!187734 (charsOf!404 separatorToken!170))))

(declare-fun d!93018 () Bool)

(declare-fun c!57729 () Bool)

(assert (=> d!93018 (= c!57729 ((_ is Cons!3975) (t!42917 tokens!465)))))

(assert (=> d!93018 (= (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (t!42917 tokens!465) separatorToken!170) e!187737)))

(declare-fun b!302564 () Bool)

(assert (=> b!302564 (= e!187733 Nil!3973)))

(assert (=> b!302564 (= (print!372 thiss!17480 (singletonSeq!307 (h!9372 (t!42917 tokens!465)))) (printTailRec!333 thiss!17480 (singletonSeq!307 (h!9372 (t!42917 tokens!465))) 0 (BalanceConc!2697 Empty!1344)))))

(declare-fun lt!128569 () Unit!5560)

(declare-fun Unit!5570 () Unit!5560)

(assert (=> b!302564 (= lt!128569 Unit!5570)))

(declare-fun lt!128570 () Unit!5560)

(assert (=> b!302564 (= lt!128570 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!136 thiss!17480 rules!1920 call!17507 lt!128571))))

(assert (=> b!302564 false))

(declare-fun lt!128572 () Unit!5560)

(declare-fun Unit!5571 () Unit!5560)

(assert (=> b!302564 (= lt!128572 Unit!5571)))

(declare-fun b!302565 () Bool)

(assert (=> b!302565 (= e!187737 Nil!3973)))

(declare-fun b!302566 () Bool)

(assert (=> b!302566 (= e!187735 call!17508)))

(declare-fun bm!17505 () Bool)

(assert (=> bm!17505 (= call!17508 (list!1677 (ite c!57731 call!17506 e!187734)))))

(assert (= (and d!93018 c!57729) b!302559))

(assert (= (and d!93018 (not c!57729)) b!302565))

(assert (= (and b!302559 c!57731) b!302558))

(assert (= (and b!302559 (not c!57731)) b!302560))

(assert (= (and b!302560 c!57730) b!302561))

(assert (= (and b!302560 (not c!57730)) b!302564))

(assert (= (or b!302561 b!302564) bm!17504))

(assert (= (or b!302561 b!302564) bm!17502))

(assert (= (and bm!17502 c!57728) b!302563))

(assert (= (and bm!17502 (not c!57728)) b!302562))

(assert (= (or b!302558 bm!17504) bm!17503))

(assert (= (or b!302558 bm!17502) bm!17505))

(assert (= (or b!302558 b!302561) bm!17501))

(assert (= (and bm!17501 c!57727) b!302566))

(assert (= (and bm!17501 (not c!57727)) b!302557))

(declare-fun m!403975 () Bool)

(assert (=> b!302559 m!403975))

(declare-fun m!403977 () Bool)

(assert (=> b!302559 m!403977))

(assert (=> b!302559 m!403977))

(declare-fun m!403979 () Bool)

(assert (=> b!302559 m!403979))

(assert (=> b!302559 m!403979))

(declare-fun m!403981 () Bool)

(assert (=> b!302559 m!403981))

(assert (=> b!302559 m!403975))

(declare-fun m!403983 () Bool)

(assert (=> b!302559 m!403983))

(declare-fun m!403985 () Bool)

(assert (=> b!302559 m!403985))

(declare-fun m!403987 () Bool)

(assert (=> b!302564 m!403987))

(assert (=> b!302564 m!403987))

(declare-fun m!403989 () Bool)

(assert (=> b!302564 m!403989))

(assert (=> b!302564 m!403987))

(declare-fun m!403991 () Bool)

(assert (=> b!302564 m!403991))

(declare-fun m!403993 () Bool)

(assert (=> b!302564 m!403993))

(assert (=> bm!17503 m!403975))

(declare-fun m!403995 () Bool)

(assert (=> bm!17501 m!403995))

(declare-fun m!403997 () Bool)

(assert (=> b!302557 m!403997))

(declare-fun m!403999 () Bool)

(assert (=> b!302561 m!403999))

(declare-fun m!404001 () Bool)

(assert (=> bm!17505 m!404001))

(assert (=> b!302563 m!403273))

(assert (=> b!302048 d!93018))

(declare-fun d!93020 () Bool)

(declare-fun lt!128577 () BalanceConc!2696)

(assert (=> d!93020 (= (list!1677 lt!128577) (originalCharacters!804 separatorToken!170))))

(assert (=> d!93020 (= lt!128577 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (value!26004 separatorToken!170)))))

(assert (=> d!93020 (= (charsOf!404 separatorToken!170) lt!128577)))

(declare-fun b_lambda!10489 () Bool)

(assert (=> (not b_lambda!10489) (not d!93020)))

(assert (=> d!93020 t!42925))

(declare-fun b_and!25505 () Bool)

(assert (= b_and!25487 (and (=> t!42925 result!23096) b_and!25505)))

(assert (=> d!93020 t!42927))

(declare-fun b_and!25507 () Bool)

(assert (= b_and!25489 (and (=> t!42927 result!23098) b_and!25507)))

(assert (=> d!93020 t!42929))

(declare-fun b_and!25509 () Bool)

(assert (= b_and!25491 (and (=> t!42929 result!23100) b_and!25509)))

(declare-fun m!404003 () Bool)

(assert (=> d!93020 m!404003))

(assert (=> d!93020 m!403389))

(assert (=> b!302048 d!93020))

(declare-fun b!302570 () Bool)

(declare-fun e!187742 () List!3983)

(assert (=> b!302570 (= e!187742 lt!128313)))

(declare-fun b!302571 () Bool)

(assert (=> b!302571 (= e!187742 (Cons!3973 (h!9370 lt!128325) (++!1074 (t!42915 lt!128325) lt!128313)))))

(declare-fun b!302573 () Bool)

(declare-fun lt!128578 () List!3983)

(declare-fun e!187741 () Bool)

(assert (=> b!302573 (= e!187741 (or (not (= lt!128313 Nil!3973)) (= lt!128578 lt!128325)))))

(declare-fun b!302572 () Bool)

(declare-fun res!137253 () Bool)

(assert (=> b!302572 (=> (not res!137253) (not e!187741))))

(assert (=> b!302572 (= res!137253 (= (size!3200 lt!128578) (+ (size!3200 lt!128325) (size!3200 lt!128313))))))

(declare-fun d!93022 () Bool)

(assert (=> d!93022 e!187741))

(declare-fun res!137252 () Bool)

(assert (=> d!93022 (=> (not res!137252) (not e!187741))))

(assert (=> d!93022 (= res!137252 (= (content!599 lt!128578) ((_ map or) (content!599 lt!128325) (content!599 lt!128313))))))

(assert (=> d!93022 (= lt!128578 e!187742)))

(declare-fun c!57732 () Bool)

(assert (=> d!93022 (= c!57732 ((_ is Nil!3973) lt!128325))))

(assert (=> d!93022 (= (++!1074 lt!128325 lt!128313) lt!128578)))

(assert (= (and d!93022 c!57732) b!302570))

(assert (= (and d!93022 (not c!57732)) b!302571))

(assert (= (and d!93022 res!137252) b!302572))

(assert (= (and b!302572 res!137253) b!302573))

(declare-fun m!404005 () Bool)

(assert (=> b!302571 m!404005))

(declare-fun m!404007 () Bool)

(assert (=> b!302572 m!404007))

(assert (=> b!302572 m!403771))

(declare-fun m!404009 () Bool)

(assert (=> b!302572 m!404009))

(declare-fun m!404011 () Bool)

(assert (=> d!93022 m!404011))

(assert (=> d!93022 m!403777))

(declare-fun m!404013 () Bool)

(assert (=> d!93022 m!404013))

(assert (=> b!302048 d!93022))

(declare-fun b!302574 () Bool)

(declare-fun e!187744 () List!3983)

(assert (=> b!302574 (= e!187744 lt!128314)))

(declare-fun b!302575 () Bool)

(assert (=> b!302575 (= e!187744 (Cons!3973 (h!9370 lt!128320) (++!1074 (t!42915 lt!128320) lt!128314)))))

(declare-fun lt!128579 () List!3983)

(declare-fun b!302577 () Bool)

(declare-fun e!187743 () Bool)

(assert (=> b!302577 (= e!187743 (or (not (= lt!128314 Nil!3973)) (= lt!128579 lt!128320)))))

(declare-fun b!302576 () Bool)

(declare-fun res!137255 () Bool)

(assert (=> b!302576 (=> (not res!137255) (not e!187743))))

(assert (=> b!302576 (= res!137255 (= (size!3200 lt!128579) (+ (size!3200 lt!128320) (size!3200 lt!128314))))))

(declare-fun d!93024 () Bool)

(assert (=> d!93024 e!187743))

(declare-fun res!137254 () Bool)

(assert (=> d!93024 (=> (not res!137254) (not e!187743))))

(assert (=> d!93024 (= res!137254 (= (content!599 lt!128579) ((_ map or) (content!599 lt!128320) (content!599 lt!128314))))))

(assert (=> d!93024 (= lt!128579 e!187744)))

(declare-fun c!57733 () Bool)

(assert (=> d!93024 (= c!57733 ((_ is Nil!3973) lt!128320))))

(assert (=> d!93024 (= (++!1074 lt!128320 lt!128314) lt!128579)))

(assert (= (and d!93024 c!57733) b!302574))

(assert (= (and d!93024 (not c!57733)) b!302575))

(assert (= (and d!93024 res!137254) b!302576))

(assert (= (and b!302576 res!137255) b!302577))

(declare-fun m!404015 () Bool)

(assert (=> b!302575 m!404015))

(declare-fun m!404017 () Bool)

(assert (=> b!302576 m!404017))

(declare-fun m!404019 () Bool)

(assert (=> b!302576 m!404019))

(assert (=> b!302576 m!403773))

(declare-fun m!404021 () Bool)

(assert (=> d!93024 m!404021))

(declare-fun m!404023 () Bool)

(assert (=> d!93024 m!404023))

(assert (=> d!93024 m!403779))

(assert (=> b!302048 d!93024))

(declare-fun d!93026 () Bool)

(assert (=> d!93026 (= (list!1677 (charsOf!404 (h!9372 tokens!465))) (list!1680 (c!57616 (charsOf!404 (h!9372 tokens!465)))))))

(declare-fun bs!35060 () Bool)

(assert (= bs!35060 d!93026))

(declare-fun m!404025 () Bool)

(assert (=> bs!35060 m!404025))

(assert (=> b!302048 d!93026))

(declare-fun d!93028 () Bool)

(declare-fun lt!128580 () BalanceConc!2696)

(assert (=> d!93028 (= (list!1677 lt!128580) (originalCharacters!804 (h!9372 tokens!465)))))

(assert (=> d!93028 (= lt!128580 (dynLambda!2146 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (value!26004 (h!9372 tokens!465))))))

(assert (=> d!93028 (= (charsOf!404 (h!9372 tokens!465)) lt!128580)))

(declare-fun b_lambda!10491 () Bool)

(assert (=> (not b_lambda!10491) (not d!93028)))

(assert (=> d!93028 t!42919))

(declare-fun b_and!25511 () Bool)

(assert (= b_and!25505 (and (=> t!42919 result!23088) b_and!25511)))

(assert (=> d!93028 t!42921))

(declare-fun b_and!25513 () Bool)

(assert (= b_and!25507 (and (=> t!42921 result!23092) b_and!25513)))

(assert (=> d!93028 t!42923))

(declare-fun b_and!25515 () Bool)

(assert (= b_and!25509 (and (=> t!42923 result!23094) b_and!25515)))

(declare-fun m!404027 () Bool)

(assert (=> d!93028 m!404027))

(assert (=> d!93028 m!403377))

(assert (=> b!302048 d!93028))

(declare-fun b!302578 () Bool)

(declare-fun e!187746 () List!3983)

(assert (=> b!302578 (= e!187746 lt!128320)))

(declare-fun b!302579 () Bool)

(assert (=> b!302579 (= e!187746 (Cons!3973 (h!9370 lt!128325) (++!1074 (t!42915 lt!128325) lt!128320)))))

(declare-fun lt!128581 () List!3983)

(declare-fun e!187745 () Bool)

(declare-fun b!302581 () Bool)

(assert (=> b!302581 (= e!187745 (or (not (= lt!128320 Nil!3973)) (= lt!128581 lt!128325)))))

(declare-fun b!302580 () Bool)

(declare-fun res!137257 () Bool)

(assert (=> b!302580 (=> (not res!137257) (not e!187745))))

(assert (=> b!302580 (= res!137257 (= (size!3200 lt!128581) (+ (size!3200 lt!128325) (size!3200 lt!128320))))))

(declare-fun d!93030 () Bool)

(assert (=> d!93030 e!187745))

(declare-fun res!137256 () Bool)

(assert (=> d!93030 (=> (not res!137256) (not e!187745))))

(assert (=> d!93030 (= res!137256 (= (content!599 lt!128581) ((_ map or) (content!599 lt!128325) (content!599 lt!128320))))))

(assert (=> d!93030 (= lt!128581 e!187746)))

(declare-fun c!57734 () Bool)

(assert (=> d!93030 (= c!57734 ((_ is Nil!3973) lt!128325))))

(assert (=> d!93030 (= (++!1074 lt!128325 lt!128320) lt!128581)))

(assert (= (and d!93030 c!57734) b!302578))

(assert (= (and d!93030 (not c!57734)) b!302579))

(assert (= (and d!93030 res!137256) b!302580))

(assert (= (and b!302580 res!137257) b!302581))

(declare-fun m!404029 () Bool)

(assert (=> b!302579 m!404029))

(declare-fun m!404031 () Bool)

(assert (=> b!302580 m!404031))

(assert (=> b!302580 m!403771))

(assert (=> b!302580 m!404019))

(declare-fun m!404033 () Bool)

(assert (=> d!93030 m!404033))

(assert (=> d!93030 m!403777))

(assert (=> d!93030 m!404023))

(assert (=> b!302048 d!93030))

(declare-fun bs!35061 () Bool)

(declare-fun d!93032 () Bool)

(assert (= bs!35061 (and d!93032 b!302062)))

(declare-fun lambda!10246 () Int)

(assert (=> bs!35061 (= lambda!10246 lambda!10225)))

(declare-fun bs!35062 () Bool)

(assert (= bs!35062 (and d!93032 b!302559)))

(assert (=> bs!35062 (not (= lambda!10246 lambda!10245))))

(declare-fun bs!35063 () Bool)

(assert (= bs!35063 (and d!93032 b!302066)))

(assert (=> bs!35063 (not (= lambda!10246 lambda!10226))))

(declare-fun bs!35064 () Bool)

(assert (= bs!35064 (and d!93032 b!302379)))

(assert (=> bs!35064 (not (= lambda!10246 lambda!10244))))

(declare-fun bs!35065 () Bool)

(assert (= bs!35065 (and d!93032 d!92918)))

(assert (=> bs!35065 (= lambda!10246 lambda!10234)))

(declare-fun bs!35066 () Bool)

(assert (= bs!35066 (and d!93032 b!302223)))

(assert (=> bs!35066 (not (= lambda!10246 lambda!10235))))

(declare-fun bs!35067 () Bool)

(declare-fun b!302586 () Bool)

(assert (= bs!35067 (and b!302586 b!302062)))

(declare-fun lambda!10247 () Int)

(assert (=> bs!35067 (not (= lambda!10247 lambda!10225))))

(declare-fun bs!35068 () Bool)

(assert (= bs!35068 (and b!302586 b!302559)))

(assert (=> bs!35068 (= lambda!10247 lambda!10245)))

(declare-fun bs!35069 () Bool)

(assert (= bs!35069 (and b!302586 b!302066)))

(assert (=> bs!35069 (= lambda!10247 lambda!10226)))

(declare-fun bs!35070 () Bool)

(assert (= bs!35070 (and b!302586 b!302379)))

(assert (=> bs!35070 (= lambda!10247 lambda!10244)))

(declare-fun bs!35071 () Bool)

(assert (= bs!35071 (and b!302586 d!93032)))

(assert (=> bs!35071 (not (= lambda!10247 lambda!10246))))

(declare-fun bs!35072 () Bool)

(assert (= bs!35072 (and b!302586 d!92918)))

(assert (=> bs!35072 (not (= lambda!10247 lambda!10234))))

(declare-fun bs!35073 () Bool)

(assert (= bs!35073 (and b!302586 b!302223)))

(assert (=> bs!35073 (= lambda!10247 lambda!10235)))

(declare-fun b!302593 () Bool)

(declare-fun e!187755 () Bool)

(assert (=> b!302593 (= e!187755 true)))

(declare-fun b!302592 () Bool)

(declare-fun e!187754 () Bool)

(assert (=> b!302592 (= e!187754 e!187755)))

(declare-fun b!302591 () Bool)

(declare-fun e!187753 () Bool)

(assert (=> b!302591 (= e!187753 e!187754)))

(assert (=> b!302586 e!187753))

(assert (= b!302592 b!302593))

(assert (= b!302591 b!302592))

(assert (= (and b!302586 ((_ is Cons!3974) rules!1920)) b!302591))

(assert (=> b!302593 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10247))))

(assert (=> b!302593 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10247))))

(assert (=> b!302586 true))

(declare-fun lt!128591 () BalanceConc!2696)

(assert (=> d!93032 (= (list!1677 lt!128591) (printWithSeparatorTokenWhenNeededList!328 thiss!17480 rules!1920 (dropList!187 (seqFromList!887 (t!42917 tokens!465)) 0) separatorToken!170))))

(declare-fun e!187747 () BalanceConc!2696)

(assert (=> d!93032 (= lt!128591 e!187747)))

(declare-fun c!57736 () Bool)

(assert (=> d!93032 (= c!57736 (>= 0 (size!3202 (seqFromList!887 (t!42917 tokens!465)))))))

(declare-fun lt!128588 () Unit!5560)

(assert (=> d!93032 (= lt!128588 (lemmaContentSubsetPreservesForall!131 (list!1679 (seqFromList!887 (t!42917 tokens!465))) (dropList!187 (seqFromList!887 (t!42917 tokens!465)) 0) lambda!10246))))

(declare-fun e!187748 () Bool)

(assert (=> d!93032 e!187748))

(declare-fun res!137258 () Bool)

(assert (=> d!93032 (=> (not res!137258) (not e!187748))))

(assert (=> d!93032 (= res!137258 (>= 0 0))))

(assert (=> d!93032 (= (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 (seqFromList!887 (t!42917 tokens!465)) separatorToken!170 0) lt!128591)))

(declare-fun b!302582 () Bool)

(declare-fun e!187751 () BalanceConc!2696)

(declare-fun call!17511 () BalanceConc!2696)

(assert (=> b!302582 (= e!187751 call!17511)))

(declare-fun b!302583 () Bool)

(declare-fun c!57735 () Bool)

(declare-fun e!187752 () Bool)

(assert (=> b!302583 (= c!57735 e!187752)))

(declare-fun res!137259 () Bool)

(assert (=> b!302583 (=> (not res!137259) (not e!187752))))

(declare-fun lt!128589 () Option!888)

(assert (=> b!302583 (= res!137259 ((_ is Some!887) lt!128589))))

(declare-fun e!187750 () BalanceConc!2696)

(assert (=> b!302583 (= e!187751 e!187750)))

(declare-fun bm!17506 () Bool)

(declare-fun call!17513 () Token!1266)

(assert (=> bm!17506 (= call!17513 (apply!865 (seqFromList!887 (t!42917 tokens!465)) 0))))

(declare-fun call!17512 () BalanceConc!2696)

(declare-fun c!57737 () Bool)

(declare-fun bm!17507 () Bool)

(declare-fun call!17514 () Token!1266)

(assert (=> bm!17507 (= call!17512 (charsOf!404 (ite c!57737 call!17513 call!17514)))))

(declare-fun b!302584 () Bool)

(declare-fun e!187749 () Bool)

(assert (=> b!302584 (= e!187749 (= (_1!2494 (v!14868 lt!128589)) (apply!865 (seqFromList!887 (t!42917 tokens!465)) 0)))))

(declare-fun b!302585 () Bool)

(assert (=> b!302585 (= e!187747 (BalanceConc!2697 Empty!1344))))

(assert (=> b!302586 (= e!187747 e!187751)))

(declare-fun lt!128594 () List!3985)

(assert (=> b!302586 (= lt!128594 (list!1679 (seqFromList!887 (t!42917 tokens!465))))))

(declare-fun lt!128587 () Unit!5560)

(assert (=> b!302586 (= lt!128587 (lemmaDropApply!227 lt!128594 0))))

(assert (=> b!302586 (= (head!941 (drop!242 lt!128594 0)) (apply!867 lt!128594 0))))

(declare-fun lt!128593 () Unit!5560)

(assert (=> b!302586 (= lt!128593 lt!128587)))

(declare-fun lt!128586 () List!3985)

(assert (=> b!302586 (= lt!128586 (list!1679 (seqFromList!887 (t!42917 tokens!465))))))

(declare-fun lt!128585 () Unit!5560)

(assert (=> b!302586 (= lt!128585 (lemmaDropTail!219 lt!128586 0))))

(assert (=> b!302586 (= (tail!523 (drop!242 lt!128586 0)) (drop!242 lt!128586 (+ 0 1)))))

(declare-fun lt!128583 () Unit!5560)

(assert (=> b!302586 (= lt!128583 lt!128585)))

(declare-fun lt!128584 () Unit!5560)

(assert (=> b!302586 (= lt!128584 (forallContained!314 (list!1679 (seqFromList!887 (t!42917 tokens!465))) lambda!10247 (apply!865 (seqFromList!887 (t!42917 tokens!465)) 0)))))

(declare-fun lt!128590 () BalanceConc!2696)

(assert (=> b!302586 (= lt!128590 (printWithSeparatorTokenWhenNeededRec!320 thiss!17480 rules!1920 (seqFromList!887 (t!42917 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!302586 (= lt!128589 (maxPrefixZipperSequence!326 thiss!17480 rules!1920 (++!1076 (charsOf!404 (apply!865 (seqFromList!887 (t!42917 tokens!465)) 0)) lt!128590)))))

(declare-fun res!137260 () Bool)

(assert (=> b!302586 (= res!137260 ((_ is Some!887) lt!128589))))

(assert (=> b!302586 (=> (not res!137260) (not e!187749))))

(assert (=> b!302586 (= c!57737 e!187749)))

(declare-fun bm!17508 () Bool)

(assert (=> bm!17508 (= call!17514 call!17513)))

(declare-fun b!302587 () Bool)

(assert (=> b!302587 (= e!187750 (BalanceConc!2697 Empty!1344))))

(assert (=> b!302587 (= (print!372 thiss!17480 (singletonSeq!307 call!17514)) (printTailRec!333 thiss!17480 (singletonSeq!307 call!17514) 0 (BalanceConc!2697 Empty!1344)))))

(declare-fun lt!128582 () Unit!5560)

(declare-fun Unit!5572 () Unit!5560)

(assert (=> b!302587 (= lt!128582 Unit!5572)))

(declare-fun call!17515 () BalanceConc!2696)

(declare-fun lt!128592 () Unit!5560)

(assert (=> b!302587 (= lt!128592 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!136 thiss!17480 rules!1920 (list!1677 call!17515) (list!1677 lt!128590)))))

(assert (=> b!302587 false))

(declare-fun lt!128595 () Unit!5560)

(declare-fun Unit!5573 () Unit!5560)

(assert (=> b!302587 (= lt!128595 Unit!5573)))

(declare-fun b!302588 () Bool)

(assert (=> b!302588 (= e!187748 (<= 0 (size!3202 (seqFromList!887 (t!42917 tokens!465)))))))

(declare-fun b!302589 () Bool)

(assert (=> b!302589 (= e!187752 (not (= (_1!2494 (v!14868 lt!128589)) call!17513)))))

(declare-fun bm!17509 () Bool)

(assert (=> bm!17509 (= call!17511 (++!1076 call!17512 (ite c!57737 lt!128590 call!17515)))))

(declare-fun bm!17510 () Bool)

(assert (=> bm!17510 (= call!17515 (charsOf!404 (ite c!57735 separatorToken!170 call!17514)))))

(declare-fun b!302590 () Bool)

(assert (=> b!302590 (= e!187750 (++!1076 call!17511 lt!128590))))

(assert (= (and d!93032 res!137258) b!302588))

(assert (= (and d!93032 c!57736) b!302585))

(assert (= (and d!93032 (not c!57736)) b!302586))

(assert (= (and b!302586 res!137260) b!302584))

(assert (= (and b!302586 c!57737) b!302582))

(assert (= (and b!302586 (not c!57737)) b!302583))

(assert (= (and b!302583 res!137259) b!302589))

(assert (= (and b!302583 c!57735) b!302590))

(assert (= (and b!302583 (not c!57735)) b!302587))

(assert (= (or b!302590 b!302587) bm!17508))

(assert (= (or b!302590 b!302587) bm!17510))

(assert (= (or b!302582 b!302589 bm!17508) bm!17506))

(assert (= (or b!302582 b!302590) bm!17507))

(assert (= (or b!302582 b!302590) bm!17509))

(assert (=> bm!17506 m!403265))

(declare-fun m!404035 () Bool)

(assert (=> bm!17506 m!404035))

(declare-fun m!404037 () Bool)

(assert (=> bm!17507 m!404037))

(declare-fun m!404039 () Bool)

(assert (=> d!93032 m!404039))

(declare-fun m!404041 () Bool)

(assert (=> d!93032 m!404041))

(declare-fun m!404043 () Bool)

(assert (=> d!93032 m!404043))

(assert (=> d!93032 m!403265))

(assert (=> d!93032 m!404039))

(assert (=> d!93032 m!404041))

(declare-fun m!404045 () Bool)

(assert (=> d!93032 m!404045))

(declare-fun m!404047 () Bool)

(assert (=> d!93032 m!404047))

(assert (=> d!93032 m!403265))

(assert (=> d!93032 m!404041))

(assert (=> d!93032 m!403265))

(declare-fun m!404049 () Bool)

(assert (=> d!93032 m!404049))

(declare-fun m!404051 () Bool)

(assert (=> bm!17509 m!404051))

(assert (=> b!302584 m!403265))

(assert (=> b!302584 m!404035))

(declare-fun m!404053 () Bool)

(assert (=> b!302590 m!404053))

(declare-fun m!404055 () Bool)

(assert (=> bm!17510 m!404055))

(assert (=> b!302588 m!403265))

(assert (=> b!302588 m!404049))

(declare-fun m!404057 () Bool)

(assert (=> b!302586 m!404057))

(declare-fun m!404059 () Bool)

(assert (=> b!302586 m!404059))

(declare-fun m!404061 () Bool)

(assert (=> b!302586 m!404061))

(assert (=> b!302586 m!403265))

(assert (=> b!302586 m!404039))

(declare-fun m!404063 () Bool)

(assert (=> b!302586 m!404063))

(declare-fun m!404065 () Bool)

(assert (=> b!302586 m!404065))

(assert (=> b!302586 m!403265))

(assert (=> b!302586 m!404035))

(assert (=> b!302586 m!403265))

(declare-fun m!404067 () Bool)

(assert (=> b!302586 m!404067))

(declare-fun m!404069 () Bool)

(assert (=> b!302586 m!404069))

(declare-fun m!404071 () Bool)

(assert (=> b!302586 m!404071))

(assert (=> b!302586 m!404057))

(assert (=> b!302586 m!404035))

(declare-fun m!404073 () Bool)

(assert (=> b!302586 m!404073))

(assert (=> b!302586 m!404039))

(assert (=> b!302586 m!404035))

(declare-fun m!404075 () Bool)

(assert (=> b!302586 m!404075))

(assert (=> b!302586 m!404073))

(assert (=> b!302586 m!404069))

(declare-fun m!404077 () Bool)

(assert (=> b!302586 m!404077))

(assert (=> b!302586 m!404063))

(declare-fun m!404079 () Bool)

(assert (=> b!302586 m!404079))

(declare-fun m!404081 () Bool)

(assert (=> b!302586 m!404081))

(declare-fun m!404083 () Bool)

(assert (=> b!302587 m!404083))

(declare-fun m!404085 () Bool)

(assert (=> b!302587 m!404085))

(assert (=> b!302587 m!404083))

(declare-fun m!404087 () Bool)

(assert (=> b!302587 m!404087))

(declare-fun m!404089 () Bool)

(assert (=> b!302587 m!404089))

(assert (=> b!302587 m!404083))

(declare-fun m!404091 () Bool)

(assert (=> b!302587 m!404091))

(assert (=> b!302587 m!404085))

(assert (=> b!302587 m!404089))

(declare-fun m!404093 () Bool)

(assert (=> b!302587 m!404093))

(assert (=> b!302048 d!93032))

(declare-fun d!93034 () Bool)

(assert (=> d!93034 (= (inv!4926 (tag!979 (rule!1374 (h!9372 tokens!465)))) (= (mod (str.len (value!26003 (tag!979 (rule!1374 (h!9372 tokens!465))))) 2) 0))))

(assert (=> b!302069 d!93034))

(declare-fun d!93036 () Bool)

(declare-fun res!137261 () Bool)

(declare-fun e!187756 () Bool)

(assert (=> d!93036 (=> (not res!137261) (not e!187756))))

(assert (=> d!93036 (= res!137261 (semiInverseModEq!284 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toValue!1520 (transformation!761 (rule!1374 (h!9372 tokens!465))))))))

(assert (=> d!93036 (= (inv!4929 (transformation!761 (rule!1374 (h!9372 tokens!465)))) e!187756)))

(declare-fun b!302594 () Bool)

(assert (=> b!302594 (= e!187756 (equivClasses!267 (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toValue!1520 (transformation!761 (rule!1374 (h!9372 tokens!465))))))))

(assert (= (and d!93036 res!137261) b!302594))

(declare-fun m!404095 () Bool)

(assert (=> d!93036 m!404095))

(declare-fun m!404097 () Bool)

(assert (=> b!302594 m!404097))

(assert (=> b!302069 d!93036))

(declare-fun d!93038 () Bool)

(assert (=> d!93038 (= (list!1677 (seqFromList!888 lt!128328)) (list!1680 (c!57616 (seqFromList!888 lt!128328))))))

(declare-fun bs!35074 () Bool)

(assert (= bs!35074 d!93038))

(declare-fun m!404099 () Bool)

(assert (=> bs!35074 m!404099))

(assert (=> b!302068 d!93038))

(declare-fun d!93040 () Bool)

(assert (=> d!93040 (= (seqFromList!888 lt!128328) (fromListB!369 lt!128328))))

(declare-fun bs!35075 () Bool)

(assert (= bs!35075 d!93040))

(declare-fun m!404101 () Bool)

(assert (=> bs!35075 m!404101))

(assert (=> b!302068 d!93040))

(declare-fun d!93042 () Bool)

(declare-fun lt!128597 () Bool)

(declare-fun e!187758 () Bool)

(assert (=> d!93042 (= lt!128597 e!187758)))

(declare-fun res!137264 () Bool)

(assert (=> d!93042 (=> (not res!137264) (not e!187758))))

(assert (=> d!93042 (= res!137264 (= (list!1679 (_1!2495 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 (h!9372 tokens!465)))))) (list!1679 (singletonSeq!307 (h!9372 tokens!465)))))))

(declare-fun e!187757 () Bool)

(assert (=> d!93042 (= lt!128597 e!187757)))

(declare-fun res!137263 () Bool)

(assert (=> d!93042 (=> (not res!137263) (not e!187757))))

(declare-fun lt!128596 () tuple2!4558)

(assert (=> d!93042 (= res!137263 (= (size!3202 (_1!2495 lt!128596)) 1))))

(assert (=> d!93042 (= lt!128596 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 (h!9372 tokens!465)))))))

(assert (=> d!93042 (not (isEmpty!2667 rules!1920))))

(assert (=> d!93042 (= (rulesProduceIndividualToken!396 thiss!17480 rules!1920 (h!9372 tokens!465)) lt!128597)))

(declare-fun b!302595 () Bool)

(declare-fun res!137262 () Bool)

(assert (=> b!302595 (=> (not res!137262) (not e!187757))))

(assert (=> b!302595 (= res!137262 (= (apply!865 (_1!2495 lt!128596) 0) (h!9372 tokens!465)))))

(declare-fun b!302596 () Bool)

(assert (=> b!302596 (= e!187757 (isEmpty!2669 (_2!2495 lt!128596)))))

(declare-fun b!302597 () Bool)

(assert (=> b!302597 (= e!187758 (isEmpty!2669 (_2!2495 (lex!439 thiss!17480 rules!1920 (print!372 thiss!17480 (singletonSeq!307 (h!9372 tokens!465)))))))))

(assert (= (and d!93042 res!137263) b!302595))

(assert (= (and b!302595 res!137262) b!302596))

(assert (= (and d!93042 res!137264) b!302597))

(declare-fun m!404103 () Bool)

(assert (=> d!93042 m!404103))

(assert (=> d!93042 m!403325))

(declare-fun m!404105 () Bool)

(assert (=> d!93042 m!404105))

(assert (=> d!93042 m!403325))

(assert (=> d!93042 m!403739))

(assert (=> d!93042 m!403325))

(assert (=> d!93042 m!403331))

(assert (=> d!93042 m!403739))

(declare-fun m!404107 () Bool)

(assert (=> d!93042 m!404107))

(declare-fun m!404109 () Bool)

(assert (=> d!93042 m!404109))

(declare-fun m!404111 () Bool)

(assert (=> b!302595 m!404111))

(declare-fun m!404113 () Bool)

(assert (=> b!302596 m!404113))

(assert (=> b!302597 m!403325))

(assert (=> b!302597 m!403325))

(assert (=> b!302597 m!403739))

(assert (=> b!302597 m!403739))

(assert (=> b!302597 m!404107))

(declare-fun m!404115 () Bool)

(assert (=> b!302597 m!404115))

(assert (=> b!302047 d!93042))

(declare-fun bs!35082 () Bool)

(declare-fun d!93044 () Bool)

(assert (= bs!35082 (and d!93044 b!302062)))

(declare-fun lambda!10257 () Int)

(assert (=> bs!35082 (not (= lambda!10257 lambda!10225))))

(declare-fun bs!35083 () Bool)

(assert (= bs!35083 (and d!93044 b!302559)))

(assert (=> bs!35083 (= lambda!10257 lambda!10245)))

(declare-fun bs!35084 () Bool)

(assert (= bs!35084 (and d!93044 b!302066)))

(assert (=> bs!35084 (= lambda!10257 lambda!10226)))

(declare-fun bs!35085 () Bool)

(assert (= bs!35085 (and d!93044 b!302379)))

(assert (=> bs!35085 (= lambda!10257 lambda!10244)))

(declare-fun bs!35086 () Bool)

(assert (= bs!35086 (and d!93044 d!92918)))

(assert (=> bs!35086 (not (= lambda!10257 lambda!10234))))

(declare-fun bs!35087 () Bool)

(assert (= bs!35087 (and d!93044 b!302223)))

(assert (=> bs!35087 (= lambda!10257 lambda!10235)))

(declare-fun bs!35088 () Bool)

(assert (= bs!35088 (and d!93044 d!93032)))

(assert (=> bs!35088 (not (= lambda!10257 lambda!10246))))

(declare-fun bs!35089 () Bool)

(assert (= bs!35089 (and d!93044 b!302586)))

(assert (=> bs!35089 (= lambda!10257 lambda!10247)))

(declare-fun b!302609 () Bool)

(declare-fun e!187770 () Bool)

(assert (=> b!302609 (= e!187770 true)))

(declare-fun b!302608 () Bool)

(declare-fun e!187769 () Bool)

(assert (=> b!302608 (= e!187769 e!187770)))

(declare-fun b!302607 () Bool)

(declare-fun e!187768 () Bool)

(assert (=> b!302607 (= e!187768 e!187769)))

(assert (=> d!93044 e!187768))

(assert (= b!302608 b!302609))

(assert (= b!302607 b!302608))

(assert (= (and d!93044 ((_ is Cons!3974) rules!1920)) b!302607))

(assert (=> b!302609 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10257))))

(assert (=> b!302609 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 rules!1920)))) (dynLambda!2144 order!3179 lambda!10257))))

(assert (=> d!93044 true))

(declare-fun e!187767 () Bool)

(assert (=> d!93044 e!187767))

(declare-fun res!137270 () Bool)

(assert (=> d!93044 (=> (not res!137270) (not e!187767))))

(declare-fun lt!128603 () Bool)

(assert (=> d!93044 (= res!137270 (= lt!128603 (forall!1044 (list!1679 lt!128317) lambda!10257)))))

(declare-fun forall!1046 (BalanceConc!2698 Int) Bool)

(assert (=> d!93044 (= lt!128603 (forall!1046 lt!128317 lambda!10257))))

(assert (=> d!93044 (not (isEmpty!2667 rules!1920))))

(assert (=> d!93044 (= (rulesProduceEachTokenIndividually!439 thiss!17480 rules!1920 lt!128317) lt!128603)))

(declare-fun b!302606 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!255 (LexerInterface!647 List!3984 List!3985) Bool)

(assert (=> b!302606 (= e!187767 (= lt!128603 (rulesProduceEachTokenIndividuallyList!255 thiss!17480 rules!1920 (list!1679 lt!128317))))))

(assert (= (and d!93044 res!137270) b!302606))

(assert (=> d!93044 m!403503))

(assert (=> d!93044 m!403503))

(declare-fun m!404127 () Bool)

(assert (=> d!93044 m!404127))

(declare-fun m!404129 () Bool)

(assert (=> d!93044 m!404129))

(assert (=> d!93044 m!403331))

(assert (=> b!302606 m!403503))

(assert (=> b!302606 m!403503))

(declare-fun m!404131 () Bool)

(assert (=> b!302606 m!404131))

(assert (=> b!302073 d!93044))

(declare-fun d!93050 () Bool)

(assert (=> d!93050 (= (seqFromList!887 tokens!465) (fromListB!370 tokens!465))))

(declare-fun bs!35090 () Bool)

(assert (= bs!35090 d!93050))

(declare-fun m!404133 () Bool)

(assert (=> bs!35090 m!404133))

(assert (=> b!302073 d!93050))

(declare-fun d!93052 () Bool)

(declare-fun lt!128606 () Bool)

(declare-fun isEmpty!2677 (List!3985) Bool)

(assert (=> d!93052 (= lt!128606 (isEmpty!2677 (list!1679 (_1!2495 (lex!439 thiss!17480 rules!1920 (seqFromList!888 lt!128325))))))))

(declare-fun isEmpty!2678 (Conc!1345) Bool)

(assert (=> d!93052 (= lt!128606 (isEmpty!2678 (c!57618 (_1!2495 (lex!439 thiss!17480 rules!1920 (seqFromList!888 lt!128325))))))))

(assert (=> d!93052 (= (isEmpty!2668 (_1!2495 (lex!439 thiss!17480 rules!1920 (seqFromList!888 lt!128325)))) lt!128606)))

(declare-fun bs!35091 () Bool)

(assert (= bs!35091 d!93052))

(declare-fun m!404135 () Bool)

(assert (=> bs!35091 m!404135))

(assert (=> bs!35091 m!404135))

(declare-fun m!404137 () Bool)

(assert (=> bs!35091 m!404137))

(declare-fun m!404139 () Bool)

(assert (=> bs!35091 m!404139))

(assert (=> b!302072 d!93052))

(declare-fun b!302639 () Bool)

(declare-fun e!187790 () Bool)

(declare-fun e!187791 () Bool)

(assert (=> b!302639 (= e!187790 e!187791)))

(declare-fun res!137297 () Bool)

(declare-fun lt!128617 () tuple2!4558)

(declare-fun size!3205 (BalanceConc!2696) Int)

(assert (=> b!302639 (= res!137297 (< (size!3205 (_2!2495 lt!128617)) (size!3205 (seqFromList!888 lt!128325))))))

(assert (=> b!302639 (=> (not res!137297) (not e!187791))))

(declare-fun d!93054 () Bool)

(declare-fun e!187789 () Bool)

(assert (=> d!93054 e!187789))

(declare-fun res!137298 () Bool)

(assert (=> d!93054 (=> (not res!137298) (not e!187789))))

(assert (=> d!93054 (= res!137298 e!187790)))

(declare-fun c!57740 () Bool)

(assert (=> d!93054 (= c!57740 (> (size!3202 (_1!2495 lt!128617)) 0))))

(declare-fun lexTailRecV2!200 (LexerInterface!647 List!3984 BalanceConc!2696 BalanceConc!2696 BalanceConc!2696 BalanceConc!2698) tuple2!4558)

(assert (=> d!93054 (= lt!128617 (lexTailRecV2!200 thiss!17480 rules!1920 (seqFromList!888 lt!128325) (BalanceConc!2697 Empty!1344) (seqFromList!888 lt!128325) (BalanceConc!2699 Empty!1345)))))

(assert (=> d!93054 (= (lex!439 thiss!17480 rules!1920 (seqFromList!888 lt!128325)) lt!128617)))

(declare-fun b!302640 () Bool)

(declare-fun res!137296 () Bool)

(assert (=> b!302640 (=> (not res!137296) (not e!187789))))

(declare-datatypes ((tuple2!4562 0))(
  ( (tuple2!4563 (_1!2497 List!3985) (_2!2497 List!3983)) )
))
(declare-fun lexList!233 (LexerInterface!647 List!3984 List!3983) tuple2!4562)

(assert (=> b!302640 (= res!137296 (= (list!1679 (_1!2495 lt!128617)) (_1!2497 (lexList!233 thiss!17480 rules!1920 (list!1677 (seqFromList!888 lt!128325))))))))

(declare-fun b!302641 () Bool)

(assert (=> b!302641 (= e!187789 (= (list!1677 (_2!2495 lt!128617)) (_2!2497 (lexList!233 thiss!17480 rules!1920 (list!1677 (seqFromList!888 lt!128325))))))))

(declare-fun b!302642 () Bool)

(assert (=> b!302642 (= e!187791 (not (isEmpty!2668 (_1!2495 lt!128617))))))

(declare-fun b!302643 () Bool)

(assert (=> b!302643 (= e!187790 (= (_2!2495 lt!128617) (seqFromList!888 lt!128325)))))

(assert (= (and d!93054 c!57740) b!302639))

(assert (= (and d!93054 (not c!57740)) b!302643))

(assert (= (and b!302639 res!137297) b!302642))

(assert (= (and d!93054 res!137298) b!302640))

(assert (= (and b!302640 res!137296) b!302641))

(declare-fun m!404187 () Bool)

(assert (=> b!302640 m!404187))

(assert (=> b!302640 m!403361))

(declare-fun m!404189 () Bool)

(assert (=> b!302640 m!404189))

(assert (=> b!302640 m!404189))

(declare-fun m!404191 () Bool)

(assert (=> b!302640 m!404191))

(declare-fun m!404193 () Bool)

(assert (=> b!302642 m!404193))

(declare-fun m!404195 () Bool)

(assert (=> d!93054 m!404195))

(assert (=> d!93054 m!403361))

(assert (=> d!93054 m!403361))

(declare-fun m!404197 () Bool)

(assert (=> d!93054 m!404197))

(declare-fun m!404199 () Bool)

(assert (=> b!302639 m!404199))

(assert (=> b!302639 m!403361))

(declare-fun m!404201 () Bool)

(assert (=> b!302639 m!404201))

(declare-fun m!404203 () Bool)

(assert (=> b!302641 m!404203))

(assert (=> b!302641 m!403361))

(assert (=> b!302641 m!404189))

(assert (=> b!302641 m!404189))

(assert (=> b!302641 m!404191))

(assert (=> b!302072 d!93054))

(declare-fun d!93068 () Bool)

(assert (=> d!93068 (= (seqFromList!888 lt!128325) (fromListB!369 lt!128325))))

(declare-fun bs!35093 () Bool)

(assert (= bs!35093 d!93068))

(declare-fun m!404205 () Bool)

(assert (=> bs!35093 m!404205))

(assert (=> b!302072 d!93068))

(declare-fun d!93070 () Bool)

(declare-fun lt!128620 () BalanceConc!2696)

(assert (=> d!93070 (= (list!1677 lt!128620) (printList!321 thiss!17480 (list!1679 lt!128315)))))

(assert (=> d!93070 (= lt!128620 (printTailRec!333 thiss!17480 lt!128315 0 (BalanceConc!2697 Empty!1344)))))

(assert (=> d!93070 (= (print!372 thiss!17480 lt!128315) lt!128620)))

(declare-fun bs!35094 () Bool)

(assert (= bs!35094 d!93070))

(declare-fun m!404207 () Bool)

(assert (=> bs!35094 m!404207))

(declare-fun m!404209 () Bool)

(assert (=> bs!35094 m!404209))

(assert (=> bs!35094 m!404209))

(declare-fun m!404211 () Bool)

(assert (=> bs!35094 m!404211))

(assert (=> bs!35094 m!403321))

(assert (=> b!302050 d!93070))

(declare-fun d!93072 () Bool)

(assert (=> d!93072 (= (list!1677 lt!128324) (list!1680 (c!57616 lt!128324)))))

(declare-fun bs!35095 () Bool)

(assert (= bs!35095 d!93072))

(declare-fun m!404213 () Bool)

(assert (=> bs!35095 m!404213))

(assert (=> b!302050 d!93072))

(declare-fun d!93074 () Bool)

(declare-fun lt!128663 () BalanceConc!2696)

(declare-fun printListTailRec!154 (LexerInterface!647 List!3985 List!3983) List!3983)

(assert (=> d!93074 (= (list!1677 lt!128663) (printListTailRec!154 thiss!17480 (dropList!187 lt!128315 0) (list!1677 (BalanceConc!2697 Empty!1344))))))

(declare-fun e!187819 () BalanceConc!2696)

(assert (=> d!93074 (= lt!128663 e!187819)))

(declare-fun c!57746 () Bool)

(assert (=> d!93074 (= c!57746 (>= 0 (size!3202 lt!128315)))))

(declare-fun e!187820 () Bool)

(assert (=> d!93074 e!187820))

(declare-fun res!137325 () Bool)

(assert (=> d!93074 (=> (not res!137325) (not e!187820))))

(assert (=> d!93074 (= res!137325 (>= 0 0))))

(assert (=> d!93074 (= (printTailRec!333 thiss!17480 lt!128315 0 (BalanceConc!2697 Empty!1344)) lt!128663)))

(declare-fun b!302680 () Bool)

(assert (=> b!302680 (= e!187820 (<= 0 (size!3202 lt!128315)))))

(declare-fun b!302681 () Bool)

(assert (=> b!302681 (= e!187819 (BalanceConc!2697 Empty!1344))))

(declare-fun b!302682 () Bool)

(assert (=> b!302682 (= e!187819 (printTailRec!333 thiss!17480 lt!128315 (+ 0 1) (++!1076 (BalanceConc!2697 Empty!1344) (charsOf!404 (apply!865 lt!128315 0)))))))

(declare-fun lt!128665 () List!3985)

(assert (=> b!302682 (= lt!128665 (list!1679 lt!128315))))

(declare-fun lt!128659 () Unit!5560)

(assert (=> b!302682 (= lt!128659 (lemmaDropApply!227 lt!128665 0))))

(assert (=> b!302682 (= (head!941 (drop!242 lt!128665 0)) (apply!867 lt!128665 0))))

(declare-fun lt!128660 () Unit!5560)

(assert (=> b!302682 (= lt!128660 lt!128659)))

(declare-fun lt!128661 () List!3985)

(assert (=> b!302682 (= lt!128661 (list!1679 lt!128315))))

(declare-fun lt!128662 () Unit!5560)

(assert (=> b!302682 (= lt!128662 (lemmaDropTail!219 lt!128661 0))))

(assert (=> b!302682 (= (tail!523 (drop!242 lt!128661 0)) (drop!242 lt!128661 (+ 0 1)))))

(declare-fun lt!128664 () Unit!5560)

(assert (=> b!302682 (= lt!128664 lt!128662)))

(assert (= (and d!93074 res!137325) b!302680))

(assert (= (and d!93074 c!57746) b!302681))

(assert (= (and d!93074 (not c!57746)) b!302682))

(declare-fun m!404267 () Bool)

(assert (=> d!93074 m!404267))

(declare-fun m!404269 () Bool)

(assert (=> d!93074 m!404269))

(assert (=> d!93074 m!404269))

(declare-fun m!404271 () Bool)

(assert (=> d!93074 m!404271))

(declare-fun m!404273 () Bool)

(assert (=> d!93074 m!404273))

(declare-fun m!404275 () Bool)

(assert (=> d!93074 m!404275))

(assert (=> d!93074 m!404271))

(assert (=> b!302680 m!404267))

(declare-fun m!404277 () Bool)

(assert (=> b!302682 m!404277))

(declare-fun m!404279 () Bool)

(assert (=> b!302682 m!404279))

(declare-fun m!404281 () Bool)

(assert (=> b!302682 m!404281))

(declare-fun m!404283 () Bool)

(assert (=> b!302682 m!404283))

(declare-fun m!404285 () Bool)

(assert (=> b!302682 m!404285))

(assert (=> b!302682 m!404277))

(declare-fun m!404287 () Bool)

(assert (=> b!302682 m!404287))

(declare-fun m!404289 () Bool)

(assert (=> b!302682 m!404289))

(declare-fun m!404291 () Bool)

(assert (=> b!302682 m!404291))

(assert (=> b!302682 m!404281))

(declare-fun m!404293 () Bool)

(assert (=> b!302682 m!404293))

(declare-fun m!404295 () Bool)

(assert (=> b!302682 m!404295))

(assert (=> b!302682 m!404289))

(declare-fun m!404297 () Bool)

(assert (=> b!302682 m!404297))

(assert (=> b!302682 m!404295))

(assert (=> b!302682 m!404291))

(declare-fun m!404299 () Bool)

(assert (=> b!302682 m!404299))

(assert (=> b!302682 m!404209))

(assert (=> b!302050 d!93074))

(declare-fun d!93094 () Bool)

(declare-fun e!187832 () Bool)

(assert (=> d!93094 e!187832))

(declare-fun res!137331 () Bool)

(assert (=> d!93094 (=> (not res!137331) (not e!187832))))

(declare-fun lt!128682 () BalanceConc!2698)

(assert (=> d!93094 (= res!137331 (= (list!1679 lt!128682) (Cons!3975 (h!9372 tokens!465) Nil!3975)))))

(declare-fun singleton!138 (Token!1266) BalanceConc!2698)

(assert (=> d!93094 (= lt!128682 (singleton!138 (h!9372 tokens!465)))))

(assert (=> d!93094 (= (singletonSeq!307 (h!9372 tokens!465)) lt!128682)))

(declare-fun b!302697 () Bool)

(declare-fun isBalanced!387 (Conc!1345) Bool)

(assert (=> b!302697 (= e!187832 (isBalanced!387 (c!57618 lt!128682)))))

(assert (= (and d!93094 res!137331) b!302697))

(declare-fun m!404335 () Bool)

(assert (=> d!93094 m!404335))

(declare-fun m!404337 () Bool)

(assert (=> d!93094 m!404337))

(declare-fun m!404339 () Bool)

(assert (=> b!302697 m!404339))

(assert (=> b!302050 d!93094))

(declare-fun d!93096 () Bool)

(declare-fun c!57756 () Bool)

(assert (=> d!93096 (= c!57756 ((_ is Cons!3975) (Cons!3975 (h!9372 tokens!465) Nil!3975)))))

(declare-fun e!187842 () List!3983)

(assert (=> d!93096 (= (printList!321 thiss!17480 (Cons!3975 (h!9372 tokens!465) Nil!3975)) e!187842)))

(declare-fun b!302713 () Bool)

(assert (=> b!302713 (= e!187842 (++!1074 (list!1677 (charsOf!404 (h!9372 (Cons!3975 (h!9372 tokens!465) Nil!3975)))) (printList!321 thiss!17480 (t!42917 (Cons!3975 (h!9372 tokens!465) Nil!3975)))))))

(declare-fun b!302714 () Bool)

(assert (=> b!302714 (= e!187842 Nil!3973)))

(assert (= (and d!93096 c!57756) b!302713))

(assert (= (and d!93096 (not c!57756)) b!302714))

(declare-fun m!404365 () Bool)

(assert (=> b!302713 m!404365))

(assert (=> b!302713 m!404365))

(declare-fun m!404367 () Bool)

(assert (=> b!302713 m!404367))

(declare-fun m!404369 () Bool)

(assert (=> b!302713 m!404369))

(assert (=> b!302713 m!404367))

(assert (=> b!302713 m!404369))

(declare-fun m!404371 () Bool)

(assert (=> b!302713 m!404371))

(assert (=> b!302050 d!93096))

(declare-fun b!302756 () Bool)

(declare-fun b_free!10725 () Bool)

(declare-fun b_next!10725 () Bool)

(assert (=> b!302756 (= b_free!10725 (not b_next!10725))))

(declare-fun tp!107750 () Bool)

(declare-fun b_and!25529 () Bool)

(assert (=> b!302756 (= tp!107750 b_and!25529)))

(declare-fun b_free!10727 () Bool)

(declare-fun b_next!10727 () Bool)

(assert (=> b!302756 (= b_free!10727 (not b_next!10727))))

(declare-fun t!42967 () Bool)

(declare-fun tb!19209 () Bool)

(assert (=> (and b!302756 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465))))) t!42967) tb!19209))

(declare-fun result!23124 () Bool)

(assert (= result!23124 result!23088))

(assert (=> b!302093 t!42967))

(declare-fun t!42969 () Bool)

(declare-fun tb!19211 () Bool)

(assert (=> (and b!302756 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170)))) t!42969) tb!19211))

(declare-fun result!23126 () Bool)

(assert (= result!23126 result!23096))

(assert (=> b!302106 t!42969))

(assert (=> d!93020 t!42969))

(assert (=> d!93028 t!42967))

(declare-fun tp!107749 () Bool)

(declare-fun b_and!25531 () Bool)

(assert (=> b!302756 (= tp!107749 (and (=> t!42967 result!23124) (=> t!42969 result!23126) b_and!25531))))

(declare-fun e!187875 () Bool)

(declare-fun e!187871 () Bool)

(declare-fun tp!107752 () Bool)

(declare-fun b!302753 () Bool)

(assert (=> b!302753 (= e!187875 (and (inv!4930 (h!9372 (t!42917 tokens!465))) e!187871 tp!107752))))

(assert (=> b!302075 (= tp!107697 e!187875)))

(declare-fun e!187873 () Bool)

(declare-fun tp!107751 () Bool)

(declare-fun b!302754 () Bool)

(assert (=> b!302754 (= e!187871 (and (inv!21 (value!26004 (h!9372 (t!42917 tokens!465)))) e!187873 tp!107751))))

(declare-fun e!187870 () Bool)

(declare-fun b!302755 () Bool)

(declare-fun tp!107748 () Bool)

(assert (=> b!302755 (= e!187873 (and tp!107748 (inv!4926 (tag!979 (rule!1374 (h!9372 (t!42917 tokens!465))))) (inv!4929 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) e!187870))))

(assert (=> b!302756 (= e!187870 (and tp!107750 tp!107749))))

(assert (= b!302755 b!302756))

(assert (= b!302754 b!302755))

(assert (= b!302753 b!302754))

(assert (= (and b!302075 ((_ is Cons!3975) (t!42917 tokens!465))) b!302753))

(declare-fun m!404391 () Bool)

(assert (=> b!302753 m!404391))

(declare-fun m!404393 () Bool)

(assert (=> b!302754 m!404393))

(declare-fun m!404395 () Bool)

(assert (=> b!302755 m!404395))

(declare-fun m!404397 () Bool)

(assert (=> b!302755 m!404397))

(declare-fun b!302763 () Bool)

(declare-fun e!187880 () Bool)

(declare-fun tp_is_empty!1867 () Bool)

(declare-fun tp!107761 () Bool)

(assert (=> b!302763 (= e!187880 (and tp_is_empty!1867 tp!107761))))

(assert (=> b!302053 (= tp!107709 e!187880)))

(assert (= (and b!302053 ((_ is Cons!3973) (originalCharacters!804 (h!9372 tokens!465)))) b!302763))

(declare-fun e!187890 () Bool)

(assert (=> b!302057 (= tp!107707 e!187890)))

(declare-fun b!302788 () Bool)

(declare-fun tp!107790 () Bool)

(declare-fun tp!107791 () Bool)

(assert (=> b!302788 (= e!187890 (and tp!107790 tp!107791))))

(declare-fun b!302786 () Bool)

(assert (=> b!302786 (= e!187890 tp_is_empty!1867)))

(declare-fun b!302790 () Bool)

(declare-fun tp!107789 () Bool)

(declare-fun tp!107788 () Bool)

(assert (=> b!302790 (= e!187890 (and tp!107789 tp!107788))))

(declare-fun b!302789 () Bool)

(declare-fun tp!107787 () Bool)

(assert (=> b!302789 (= e!187890 tp!107787)))

(assert (= (and b!302057 ((_ is ElementMatch!985) (regex!761 (rule!1374 separatorToken!170)))) b!302786))

(assert (= (and b!302057 ((_ is Concat!1769) (regex!761 (rule!1374 separatorToken!170)))) b!302788))

(assert (= (and b!302057 ((_ is Star!985) (regex!761 (rule!1374 separatorToken!170)))) b!302789))

(assert (= (and b!302057 ((_ is Union!985) (regex!761 (rule!1374 separatorToken!170)))) b!302790))

(declare-fun b!302796 () Bool)

(declare-fun e!187895 () Bool)

(assert (=> b!302796 (= e!187895 true)))

(declare-fun b!302795 () Bool)

(declare-fun e!187894 () Bool)

(assert (=> b!302795 (= e!187894 e!187895)))

(declare-fun b!302794 () Bool)

(declare-fun e!187893 () Bool)

(assert (=> b!302794 (= e!187893 e!187894)))

(assert (=> b!302084 e!187893))

(assert (= b!302795 b!302796))

(assert (= b!302794 b!302795))

(assert (= (and b!302084 ((_ is Cons!3974) (t!42916 rules!1920))) b!302794))

(assert (=> b!302796 (< (dynLambda!2143 order!3177 (toValue!1520 (transformation!761 (h!9371 (t!42916 rules!1920))))) (dynLambda!2144 order!3179 lambda!10226))))

(assert (=> b!302796 (< (dynLambda!2145 order!3181 (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920))))) (dynLambda!2144 order!3179 lambda!10226))))

(declare-fun e!187896 () Bool)

(assert (=> b!302055 (= tp!107698 e!187896)))

(declare-fun b!302798 () Bool)

(declare-fun tp!107795 () Bool)

(declare-fun tp!107796 () Bool)

(assert (=> b!302798 (= e!187896 (and tp!107795 tp!107796))))

(declare-fun b!302797 () Bool)

(assert (=> b!302797 (= e!187896 tp_is_empty!1867)))

(declare-fun b!302800 () Bool)

(declare-fun tp!107794 () Bool)

(declare-fun tp!107793 () Bool)

(assert (=> b!302800 (= e!187896 (and tp!107794 tp!107793))))

(declare-fun b!302799 () Bool)

(declare-fun tp!107792 () Bool)

(assert (=> b!302799 (= e!187896 tp!107792)))

(assert (= (and b!302055 ((_ is ElementMatch!985) (regex!761 (h!9371 rules!1920)))) b!302797))

(assert (= (and b!302055 ((_ is Concat!1769) (regex!761 (h!9371 rules!1920)))) b!302798))

(assert (= (and b!302055 ((_ is Star!985) (regex!761 (h!9371 rules!1920)))) b!302799))

(assert (= (and b!302055 ((_ is Union!985) (regex!761 (h!9371 rules!1920)))) b!302800))

(declare-fun b!302803 () Bool)

(declare-fun e!187899 () Bool)

(declare-fun tp!107797 () Bool)

(assert (=> b!302803 (= e!187899 (and tp_is_empty!1867 tp!107797))))

(assert (=> b!302058 (= tp!107701 e!187899)))

(assert (= (and b!302058 ((_ is Cons!3973) (originalCharacters!804 separatorToken!170))) b!302803))

(declare-fun e!187902 () Bool)

(assert (=> b!302069 (= tp!107706 e!187902)))

(declare-fun b!302805 () Bool)

(declare-fun tp!107801 () Bool)

(declare-fun tp!107802 () Bool)

(assert (=> b!302805 (= e!187902 (and tp!107801 tp!107802))))

(declare-fun b!302804 () Bool)

(assert (=> b!302804 (= e!187902 tp_is_empty!1867)))

(declare-fun b!302807 () Bool)

(declare-fun tp!107800 () Bool)

(declare-fun tp!107799 () Bool)

(assert (=> b!302807 (= e!187902 (and tp!107800 tp!107799))))

(declare-fun b!302806 () Bool)

(declare-fun tp!107798 () Bool)

(assert (=> b!302806 (= e!187902 tp!107798)))

(assert (= (and b!302069 ((_ is ElementMatch!985) (regex!761 (rule!1374 (h!9372 tokens!465))))) b!302804))

(assert (= (and b!302069 ((_ is Concat!1769) (regex!761 (rule!1374 (h!9372 tokens!465))))) b!302805))

(assert (= (and b!302069 ((_ is Star!985) (regex!761 (rule!1374 (h!9372 tokens!465))))) b!302806))

(assert (= (and b!302069 ((_ is Union!985) (regex!761 (rule!1374 (h!9372 tokens!465))))) b!302807))

(declare-fun b!302822 () Bool)

(declare-fun b_free!10733 () Bool)

(declare-fun b_next!10733 () Bool)

(assert (=> b!302822 (= b_free!10733 (not b_next!10733))))

(declare-fun tp!107823 () Bool)

(declare-fun b_and!25537 () Bool)

(assert (=> b!302822 (= tp!107823 b_and!25537)))

(declare-fun b_free!10735 () Bool)

(declare-fun b_next!10735 () Bool)

(assert (=> b!302822 (= b_free!10735 (not b_next!10735))))

(declare-fun t!42975 () Bool)

(declare-fun tb!19217 () Bool)

(assert (=> (and b!302822 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465))))) t!42975) tb!19217))

(declare-fun result!23140 () Bool)

(assert (= result!23140 result!23088))

(assert (=> b!302093 t!42975))

(declare-fun t!42977 () Bool)

(declare-fun tb!19219 () Bool)

(assert (=> (and b!302822 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170)))) t!42977) tb!19219))

(declare-fun result!23142 () Bool)

(assert (= result!23142 result!23096))

(assert (=> b!302106 t!42977))

(assert (=> d!93020 t!42977))

(assert (=> d!93028 t!42975))

(declare-fun tp!107821 () Bool)

(declare-fun b_and!25539 () Bool)

(assert (=> b!302822 (= tp!107821 (and (=> t!42975 result!23140) (=> t!42977 result!23142) b_and!25539))))

(declare-fun e!187919 () Bool)

(assert (=> b!302822 (= e!187919 (and tp!107823 tp!107821))))

(declare-fun e!187920 () Bool)

(declare-fun tp!107822 () Bool)

(declare-fun b!302821 () Bool)

(assert (=> b!302821 (= e!187920 (and tp!107822 (inv!4926 (tag!979 (h!9371 (t!42916 rules!1920)))) (inv!4929 (transformation!761 (h!9371 (t!42916 rules!1920)))) e!187919))))

(declare-fun b!302820 () Bool)

(declare-fun e!187918 () Bool)

(declare-fun tp!107824 () Bool)

(assert (=> b!302820 (= e!187918 (and e!187920 tp!107824))))

(assert (=> b!302060 (= tp!107705 e!187918)))

(assert (= b!302821 b!302822))

(assert (= b!302820 b!302821))

(assert (= (and b!302060 ((_ is Cons!3974) (t!42916 rules!1920))) b!302820))

(declare-fun m!404403 () Bool)

(assert (=> b!302821 m!404403))

(declare-fun m!404405 () Bool)

(assert (=> b!302821 m!404405))

(declare-fun b_lambda!10499 () Bool)

(assert (= b_lambda!10489 (or (and b!302822 b_free!10735 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302067 b_free!10723 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302054 b_free!10715 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302756 b_free!10727 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302051 b_free!10719) b_lambda!10499)))

(declare-fun b_lambda!10501 () Bool)

(assert (= b_lambda!10475 (or (and b!302051 b_free!10719 (= (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302756 b_free!10727 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302054 b_free!10715 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302067 b_free!10723) (and b!302822 b_free!10735 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) b_lambda!10501)))

(declare-fun b_lambda!10503 () Bool)

(assert (= b_lambda!10485 (or b!302062 b_lambda!10503)))

(declare-fun bs!35121 () Bool)

(declare-fun d!93100 () Bool)

(assert (= bs!35121 (and d!93100 b!302062)))

(assert (=> bs!35121 (= (dynLambda!2148 lambda!10225 (h!9372 tokens!465)) (not (isSeparator!761 (rule!1374 (h!9372 tokens!465)))))))

(assert (=> b!302399 d!93100))

(declare-fun b_lambda!10505 () Bool)

(assert (= b_lambda!10491 (or (and b!302051 b_free!10719 (= (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302756 b_free!10727 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302054 b_free!10715 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) (and b!302067 b_free!10723) (and b!302822 b_free!10735 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))))) b_lambda!10505)))

(declare-fun b_lambda!10507 () Bool)

(assert (= b_lambda!10487 (or b!302066 b_lambda!10507)))

(declare-fun bs!35122 () Bool)

(declare-fun d!93102 () Bool)

(assert (= bs!35122 (and d!93102 b!302066)))

(assert (=> bs!35122 (= (dynLambda!2148 lambda!10226 (h!9372 tokens!465)) (rulesProduceIndividualToken!396 thiss!17480 rules!1920 (h!9372 tokens!465)))))

(assert (=> bs!35122 m!403367))

(assert (=> d!92988 d!93102))

(declare-fun b_lambda!10509 () Bool)

(assert (= b_lambda!10477 (or (and b!302822 b_free!10735 (= (toChars!1379 (transformation!761 (h!9371 (t!42916 rules!1920)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302067 b_free!10723 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 tokens!465)))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302054 b_free!10715 (= (toChars!1379 (transformation!761 (h!9371 rules!1920))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302756 b_free!10727 (= (toChars!1379 (transformation!761 (rule!1374 (h!9372 (t!42917 tokens!465))))) (toChars!1379 (transformation!761 (rule!1374 separatorToken!170))))) (and b!302051 b_free!10719) b_lambda!10509)))

(check-sat (not b_lambda!10505) b_and!25511 (not b!302713) (not b_next!10721) (not b_next!10723) (not bm!17491) (not d!93028) (not b!302790) (not b!302163) (not d!92970) (not b!302094) (not bm!17501) (not bm!17489) (not bm!17510) (not d!93072) (not b!302586) (not b!302172) (not b!302509) b_and!25515 b_and!25531 (not bm!17507) b_and!25513 (not b!302400) b_and!25529 (not bm!17487) (not b!302107) (not b!302641) (not d!93020) (not b_lambda!10509) (not b!302794) (not d!93010) (not b_next!10733) (not b!302459) (not b!302575) b_and!25469 (not b!302453) (not d!92986) (not bm!17497) (not b!302564) (not b!302755) (not b!302110) (not b!302591) (not b!302588) (not b!302225) (not bs!35122) (not b!302099) (not d!92908) (not d!93042) (not b!302135) (not b!302510) (not d!93044) (not d!93050) (not b!302587) (not bm!17454) (not d!93054) (not d!92916) (not d!93008) (not d!93000) (not b!302497) (not d!93032) (not b!302403) (not b!302754) (not b!302093) (not b!302394) (not b!302559) (not b!302455) (not b!302798) (not b!302576) (not b_next!10713) (not b!302508) (not tb!19191) (not b!302221) (not b!302803) (not b!302548) (not b!302807) (not b!302462) (not d!92914) (not b!302552) (not b_next!10725) (not b!302551) (not b!302572) (not d!92888) (not bm!17506) (not b_lambda!10507) (not b!302545) (not d!92884) b_and!25477 (not b!302763) (not b!302561) (not b!302607) (not b!302806) (not b_lambda!10499) (not d!92972) (not d!93024) (not bm!17451) (not b_next!10727) (not b!302596) (not b!302547) (not b!302162) (not b!302579) (not b!302682) (not d!92988) (not b!302640) (not b!302800) (not b!302501) (not b!302563) (not b!302557) (not b!302642) (not d!92994) (not b!302544) (not b!302458) (not b!302595) (not d!92990) (not b!302680) (not d!93026) (not b!302789) (not b!302224) (not bm!17452) (not b!302106) (not b!302567) (not d!93036) (not b!302697) (not bm!17494) (not b!302457) (not d!93068) (not b!302227) (not bm!17503) (not d!92966) (not d!93030) (not b_next!10715) (not b!302594) b_and!25473 b_and!25537 (not bm!17455) (not b!302452) (not b!302387) (not b!302799) (not b!302555) (not b!302381) (not b!302390) (not b!302166) (not b!302821) (not b!302546) (not b!302379) (not b_next!10719) (not b_next!10735) (not b!302590) (not d!93012) (not d!93016) (not b!302377) (not b!302753) (not bm!17505) (not b!302805) (not d!92894) (not b!302173) (not b!302554) (not b_lambda!10503) (not b!302549) (not b!302639) (not b!302383) (not b!302788) (not d!92918) (not d!92962) (not bm!17500) (not b_next!10717) b_and!25539 (not d!93052) (not b!302161) (not b!302413) (not b!302223) (not b!302507) (not b!302138) (not b!302580) (not b!302384) (not d!93070) (not bm!17509) (not d!93074) (not b!302584) (not b!302393) (not b!302228) (not b!302139) (not tb!19185) (not b!302456) (not b!302820) (not b_lambda!10501) (not b!302171) (not b!302597) (not b!302414) tp_is_empty!1867 (not b!302606) (not d!93038) (not d!93014) (not b!302571) (not d!93022) (not d!93094) (not d!93040))
(check-sat b_and!25511 (not b_next!10713) (not b_next!10727) (not b_next!10715) (not b_next!10719) (not b_next!10735) (not b_next!10721) (not b_next!10723) b_and!25515 b_and!25531 b_and!25513 b_and!25529 b_and!25469 (not b_next!10733) (not b_next!10725) b_and!25477 b_and!25473 b_and!25537 (not b_next!10717) b_and!25539)
