; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32618 () Bool)

(assert start!32618)

(declare-fun b!303020 () Bool)

(declare-fun b_free!10753 () Bool)

(declare-fun b_next!10753 () Bool)

(assert (=> b!303020 (= b_free!10753 (not b_next!10753))))

(declare-fun tp!107897 () Bool)

(declare-fun b_and!25557 () Bool)

(assert (=> b!303020 (= tp!107897 b_and!25557)))

(declare-fun b_free!10755 () Bool)

(declare-fun b_next!10755 () Bool)

(assert (=> b!303020 (= b_free!10755 (not b_next!10755))))

(declare-fun tp!107899 () Bool)

(declare-fun b_and!25559 () Bool)

(assert (=> b!303020 (= tp!107899 b_and!25559)))

(declare-fun b!303018 () Bool)

(declare-fun b_free!10757 () Bool)

(declare-fun b_next!10757 () Bool)

(assert (=> b!303018 (= b_free!10757 (not b_next!10757))))

(declare-fun tp!107896 () Bool)

(declare-fun b_and!25561 () Bool)

(assert (=> b!303018 (= tp!107896 b_and!25561)))

(declare-fun b_free!10759 () Bool)

(declare-fun b_next!10759 () Bool)

(assert (=> b!303018 (= b_free!10759 (not b_next!10759))))

(declare-fun tp!107898 () Bool)

(declare-fun b_and!25563 () Bool)

(assert (=> b!303018 (= tp!107898 b_and!25563)))

(declare-fun b!302996 () Bool)

(declare-fun b_free!10761 () Bool)

(declare-fun b_next!10761 () Bool)

(assert (=> b!302996 (= b_free!10761 (not b_next!10761))))

(declare-fun tp!107904 () Bool)

(declare-fun b_and!25565 () Bool)

(assert (=> b!302996 (= tp!107904 b_and!25565)))

(declare-fun b_free!10763 () Bool)

(declare-fun b_next!10763 () Bool)

(assert (=> b!302996 (= b_free!10763 (not b_next!10763))))

(declare-fun tp!107901 () Bool)

(declare-fun b_and!25567 () Bool)

(assert (=> b!302996 (= tp!107901 b_and!25567)))

(declare-fun bs!35128 () Bool)

(declare-fun b!303023 () Bool)

(declare-fun b!303004 () Bool)

(assert (= bs!35128 (and b!303023 b!303004)))

(declare-fun lambda!10272 () Int)

(declare-fun lambda!10271 () Int)

(assert (=> bs!35128 (not (= lambda!10272 lambda!10271))))

(declare-fun b!303036 () Bool)

(declare-fun e!188094 () Bool)

(assert (=> b!303036 (= e!188094 true)))

(declare-fun b!303035 () Bool)

(declare-fun e!188093 () Bool)

(assert (=> b!303035 (= e!188093 e!188094)))

(declare-fun b!303034 () Bool)

(declare-fun e!188092 () Bool)

(assert (=> b!303034 (= e!188092 e!188093)))

(assert (=> b!303023 e!188092))

(assert (= b!303035 b!303036))

(assert (= b!303034 b!303035))

(declare-datatypes ((List!3992 0))(
  ( (Nil!3982) (Cons!3982 (h!9379 (_ BitVec 16)) (t!42992 List!3992)) )
))
(declare-datatypes ((TokenValue!785 0))(
  ( (FloatLiteralValue!1570 (text!5940 List!3992)) (TokenValueExt!784 (__x!3057 Int)) (Broken!3925 (value!26035 List!3992)) (Object!794) (End!785) (Def!785) (Underscore!785) (Match!785) (Else!785) (Error!785) (Case!785) (If!785) (Extends!785) (Abstract!785) (Class!785) (Val!785) (DelimiterValue!1570 (del!845 List!3992)) (KeywordValue!791 (value!26036 List!3992)) (CommentValue!1570 (value!26037 List!3992)) (WhitespaceValue!1570 (value!26038 List!3992)) (IndentationValue!785 (value!26039 List!3992)) (String!5004) (Int32!785) (Broken!3926 (value!26040 List!3992)) (Boolean!786) (Unit!5581) (OperatorValue!788 (op!845 List!3992)) (IdentifierValue!1570 (value!26041 List!3992)) (IdentifierValue!1571 (value!26042 List!3992)) (WhitespaceValue!1571 (value!26043 List!3992)) (True!1570) (False!1570) (Broken!3927 (value!26044 List!3992)) (Broken!3928 (value!26045 List!3992)) (True!1571) (RightBrace!785) (RightBracket!785) (Colon!785) (Null!785) (Comma!785) (LeftBracket!785) (False!1571) (LeftBrace!785) (ImaginaryLiteralValue!785 (text!5941 List!3992)) (StringLiteralValue!2355 (value!26046 List!3992)) (EOFValue!785 (value!26047 List!3992)) (IdentValue!785 (value!26048 List!3992)) (DelimiterValue!1571 (value!26049 List!3992)) (DedentValue!785 (value!26050 List!3992)) (NewLineValue!785 (value!26051 List!3992)) (IntegerValue!2355 (value!26052 (_ BitVec 32)) (text!5942 List!3992)) (IntegerValue!2356 (value!26053 Int) (text!5943 List!3992)) (Times!785) (Or!785) (Equal!785) (Minus!785) (Broken!3929 (value!26054 List!3992)) (And!785) (Div!785) (LessEqual!785) (Mod!785) (Concat!1772) (Not!785) (Plus!785) (SpaceValue!785 (value!26055 List!3992)) (IntegerValue!2357 (value!26056 Int) (text!5944 List!3992)) (StringLiteralValue!2356 (text!5945 List!3992)) (FloatLiteralValue!1571 (text!5946 List!3992)) (BytesLiteralValue!785 (value!26057 List!3992)) (CommentValue!1571 (value!26058 List!3992)) (StringLiteralValue!2357 (value!26059 List!3992)) (ErrorTokenValue!785 (msg!846 List!3992)) )
))
(declare-datatypes ((C!2896 0))(
  ( (C!2897 (val!1334 Int)) )
))
(declare-datatypes ((List!3993 0))(
  ( (Nil!3983) (Cons!3983 (h!9380 C!2896) (t!42993 List!3993)) )
))
(declare-datatypes ((IArray!2697 0))(
  ( (IArray!2698 (innerList!1406 List!3993)) )
))
(declare-datatypes ((Conc!1348 0))(
  ( (Node!1348 (left!3296 Conc!1348) (right!3626 Conc!1348) (csize!2926 Int) (cheight!1559 Int)) (Leaf!2069 (xs!3951 IArray!2697) (csize!2927 Int)) (Empty!1348) )
))
(declare-datatypes ((BalanceConc!2704 0))(
  ( (BalanceConc!2705 (c!57762 Conc!1348)) )
))
(declare-datatypes ((TokenValueInjection!1342 0))(
  ( (TokenValueInjection!1343 (toValue!1522 Int) (toChars!1381 Int)) )
))
(declare-datatypes ((String!5005 0))(
  ( (String!5006 (value!26060 String)) )
))
(declare-datatypes ((Regex!987 0))(
  ( (ElementMatch!987 (c!57763 C!2896)) (Concat!1773 (regOne!2486 Regex!987) (regTwo!2486 Regex!987)) (EmptyExpr!987) (Star!987 (reg!1316 Regex!987)) (EmptyLang!987) (Union!987 (regOne!2487 Regex!987) (regTwo!2487 Regex!987)) )
))
(declare-datatypes ((Rule!1326 0))(
  ( (Rule!1327 (regex!763 Regex!987) (tag!981 String!5005) (isSeparator!763 Bool) (transformation!763 TokenValueInjection!1342)) )
))
(declare-datatypes ((List!3994 0))(
  ( (Nil!3984) (Cons!3984 (h!9381 Rule!1326) (t!42994 List!3994)) )
))
(declare-fun rules!1920 () List!3994)

(get-info :version)

(assert (= (and b!303023 ((_ is Cons!3984) rules!1920)) b!303034))

(declare-fun order!3191 () Int)

(declare-fun order!3189 () Int)

(declare-fun dynLambda!2153 (Int Int) Int)

(declare-fun dynLambda!2154 (Int Int) Int)

(assert (=> b!303036 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10272))))

(declare-fun order!3193 () Int)

(declare-fun dynLambda!2155 (Int Int) Int)

(assert (=> b!303036 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10272))))

(assert (=> b!303023 true))

(declare-fun b!302995 () Bool)

(declare-fun res!137446 () Bool)

(declare-fun e!188083 () Bool)

(assert (=> b!302995 (=> res!137446 e!188083)))

(declare-datatypes ((Token!1270 0))(
  ( (Token!1271 (value!26061 TokenValue!785) (rule!1376 Rule!1326) (size!3207 Int) (originalCharacters!806 List!3993)) )
))
(declare-datatypes ((List!3995 0))(
  ( (Nil!3985) (Cons!3985 (h!9382 Token!1270) (t!42995 List!3995)) )
))
(declare-fun tokens!465 () List!3995)

(declare-datatypes ((LexerInterface!649 0))(
  ( (LexerInterfaceExt!646 (__x!3058 Int)) (Lexer!647) )
))
(declare-fun thiss!17480 () LexerInterface!649)

(declare-fun rulesProduceIndividualToken!398 (LexerInterface!649 List!3994 Token!1270) Bool)

(assert (=> b!302995 (= res!137446 (not (rulesProduceIndividualToken!398 thiss!17480 rules!1920 (h!9382 tokens!465))))))

(declare-fun e!188062 () Bool)

(assert (=> b!302996 (= e!188062 (and tp!107904 tp!107901))))

(declare-fun b!302997 () Bool)

(declare-fun res!137455 () Bool)

(declare-fun e!188085 () Bool)

(assert (=> b!302997 (=> (not res!137455) (not e!188085))))

(declare-fun sepAndNonSepRulesDisjointChars!352 (List!3994 List!3994) Bool)

(assert (=> b!302997 (= res!137455 (sepAndNonSepRulesDisjointChars!352 rules!1920 rules!1920))))

(declare-fun b!302998 () Bool)

(declare-fun res!137451 () Bool)

(declare-fun e!188063 () Bool)

(assert (=> b!302998 (=> (not res!137451) (not e!188063))))

(declare-fun lt!128784 () List!3993)

(declare-fun lt!128791 () List!3993)

(declare-fun list!1683 (BalanceConc!2704) List!3993)

(declare-fun seqFromList!891 (List!3993) BalanceConc!2704)

(assert (=> b!302998 (= res!137451 (= (list!1683 (seqFromList!891 lt!128784)) lt!128791))))

(declare-fun res!137441 () Bool)

(declare-fun e!188065 () Bool)

(assert (=> start!32618 (=> (not res!137441) (not e!188065))))

(assert (=> start!32618 (= res!137441 ((_ is Lexer!647) thiss!17480))))

(assert (=> start!32618 e!188065))

(assert (=> start!32618 true))

(declare-fun e!188075 () Bool)

(assert (=> start!32618 e!188075))

(declare-fun separatorToken!170 () Token!1270)

(declare-fun e!188084 () Bool)

(declare-fun inv!4940 (Token!1270) Bool)

(assert (=> start!32618 (and (inv!4940 separatorToken!170) e!188084)))

(declare-fun e!188071 () Bool)

(assert (=> start!32618 e!188071))

(declare-fun b!302999 () Bool)

(declare-fun e!188068 () Bool)

(declare-fun e!188072 () Bool)

(assert (=> b!302999 (= e!188068 e!188072)))

(declare-fun res!137457 () Bool)

(assert (=> b!302999 (=> res!137457 e!188072)))

(declare-fun lt!128796 () Bool)

(assert (=> b!302999 (= res!137457 (not lt!128796))))

(declare-fun e!188066 () Bool)

(assert (=> b!302999 e!188066))

(declare-fun res!137440 () Bool)

(assert (=> b!302999 (=> (not res!137440) (not e!188066))))

(declare-datatypes ((tuple2!4570 0))(
  ( (tuple2!4571 (_1!2501 Token!1270) (_2!2501 List!3993)) )
))
(declare-fun lt!128793 () tuple2!4570)

(assert (=> b!302999 (= res!137440 (= (_1!2501 lt!128793) (h!9382 tokens!465)))))

(declare-datatypes ((Option!892 0))(
  ( (None!891) (Some!891 (v!14878 tuple2!4570)) )
))
(declare-fun lt!128788 () Option!892)

(declare-fun get!1355 (Option!892) tuple2!4570)

(assert (=> b!302999 (= lt!128793 (get!1355 lt!128788))))

(declare-fun isDefined!731 (Option!892) Bool)

(assert (=> b!302999 (isDefined!731 lt!128788)))

(declare-fun lt!128781 () List!3993)

(declare-fun maxPrefix!365 (LexerInterface!649 List!3994 List!3993) Option!892)

(assert (=> b!302999 (= lt!128788 (maxPrefix!365 thiss!17480 rules!1920 lt!128781))))

(declare-fun e!188080 () Bool)

(declare-fun b!303000 () Bool)

(declare-fun tp!107903 () Bool)

(declare-fun inv!4937 (String!5005) Bool)

(declare-fun inv!4941 (TokenValueInjection!1342) Bool)

(assert (=> b!303000 (= e!188080 (and tp!107903 (inv!4937 (tag!981 (rule!1376 separatorToken!170))) (inv!4941 (transformation!763 (rule!1376 separatorToken!170))) e!188062))))

(declare-fun b!303001 () Bool)

(declare-fun e!188077 () Bool)

(declare-fun tp!107907 () Bool)

(assert (=> b!303001 (= e!188075 (and e!188077 tp!107907))))

(declare-fun b!303002 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!257 (LexerInterface!649 List!3994 List!3995) Bool)

(assert (=> b!303002 (= e!188072 (rulesProduceEachTokenIndividuallyList!257 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!303003 () Bool)

(assert (=> b!303003 (= e!188085 e!188063)))

(declare-fun res!137449 () Bool)

(assert (=> b!303003 (=> (not res!137449) (not e!188063))))

(assert (=> b!303003 (= res!137449 (= lt!128784 lt!128791))))

(declare-datatypes ((IArray!2699 0))(
  ( (IArray!2700 (innerList!1407 List!3995)) )
))
(declare-datatypes ((Conc!1349 0))(
  ( (Node!1349 (left!3297 Conc!1349) (right!3627 Conc!1349) (csize!2928 Int) (cheight!1560 Int)) (Leaf!2070 (xs!3952 IArray!2699) (csize!2929 Int)) (Empty!1349) )
))
(declare-datatypes ((BalanceConc!2706 0))(
  ( (BalanceConc!2707 (c!57764 Conc!1349)) )
))
(declare-fun lt!128785 () BalanceConc!2706)

(declare-fun printWithSeparatorTokenWhenNeededRec!322 (LexerInterface!649 List!3994 BalanceConc!2706 Token!1270 Int) BalanceConc!2704)

(assert (=> b!303003 (= lt!128791 (list!1683 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 lt!128785 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!330 (LexerInterface!649 List!3994 List!3995 Token!1270) List!3993)

(assert (=> b!303003 (= lt!128784 (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!137439 () Bool)

(assert (=> b!303004 (=> (not res!137439) (not e!188085))))

(declare-fun forall!1048 (List!3995 Int) Bool)

(assert (=> b!303004 (= res!137439 (forall!1048 tokens!465 lambda!10271))))

(declare-fun b!303005 () Bool)

(declare-fun e!188074 () Bool)

(declare-fun e!188079 () Bool)

(declare-fun tp!107895 () Bool)

(declare-fun inv!21 (TokenValue!785) Bool)

(assert (=> b!303005 (= e!188074 (and (inv!21 (value!26061 (h!9382 tokens!465))) e!188079 tp!107895))))

(declare-fun b!303006 () Bool)

(declare-fun res!137444 () Bool)

(assert (=> b!303006 (=> res!137444 e!188083)))

(declare-fun isEmpty!2682 (BalanceConc!2706) Bool)

(declare-datatypes ((tuple2!4572 0))(
  ( (tuple2!4573 (_1!2502 BalanceConc!2706) (_2!2502 BalanceConc!2704)) )
))
(declare-fun lex!441 (LexerInterface!649 List!3994 BalanceConc!2704) tuple2!4572)

(assert (=> b!303006 (= res!137444 (isEmpty!2682 (_1!2502 (lex!441 thiss!17480 rules!1920 (seqFromList!891 lt!128781)))))))

(declare-fun b!303007 () Bool)

(declare-fun tp!107902 () Bool)

(assert (=> b!303007 (= e!188084 (and (inv!21 (value!26061 separatorToken!170)) e!188080 tp!107902))))

(declare-fun b!303008 () Bool)

(declare-fun res!137454 () Bool)

(assert (=> b!303008 (=> (not res!137454) (not e!188066))))

(declare-fun isEmpty!2683 (List!3993) Bool)

(assert (=> b!303008 (= res!137454 (isEmpty!2683 (_2!2501 lt!128793)))))

(declare-fun e!188073 () Bool)

(declare-fun b!303009 () Bool)

(declare-fun lt!128786 () List!3993)

(declare-fun ++!1078 (List!3993 List!3993) List!3993)

(assert (=> b!303009 (= e!188073 (not (= lt!128784 (++!1078 lt!128781 lt!128786))))))

(declare-fun b!303010 () Bool)

(declare-fun res!137445 () Bool)

(assert (=> b!303010 (=> (not res!137445) (not e!188085))))

(assert (=> b!303010 (= res!137445 (isSeparator!763 (rule!1376 separatorToken!170)))))

(declare-fun b!303011 () Bool)

(declare-fun res!137448 () Bool)

(assert (=> b!303011 (=> (not res!137448) (not e!188065))))

(declare-fun rulesInvariant!615 (LexerInterface!649 List!3994) Bool)

(assert (=> b!303011 (= res!137448 (rulesInvariant!615 thiss!17480 rules!1920))))

(declare-fun tp!107905 () Bool)

(declare-fun e!188082 () Bool)

(declare-fun b!303012 () Bool)

(assert (=> b!303012 (= e!188079 (and tp!107905 (inv!4937 (tag!981 (rule!1376 (h!9382 tokens!465)))) (inv!4941 (transformation!763 (rule!1376 (h!9382 tokens!465)))) e!188082))))

(declare-fun b!303013 () Bool)

(declare-fun res!137437 () Bool)

(assert (=> b!303013 (=> (not res!137437) (not e!188085))))

(assert (=> b!303013 (= res!137437 (rulesProduceIndividualToken!398 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!303014 () Bool)

(declare-fun res!137453 () Bool)

(assert (=> b!303014 (=> (not res!137453) (not e!188065))))

(declare-fun isEmpty!2684 (List!3994) Bool)

(assert (=> b!303014 (= res!137453 (not (isEmpty!2684 rules!1920)))))

(declare-fun b!303015 () Bool)

(declare-fun e!188069 () Bool)

(assert (=> b!303015 (= e!188063 (not e!188069))))

(declare-fun res!137452 () Bool)

(assert (=> b!303015 (=> res!137452 e!188069)))

(declare-fun seqFromList!892 (List!3995) BalanceConc!2706)

(assert (=> b!303015 (= res!137452 (not (= lt!128786 (list!1683 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 (seqFromList!892 (t!42995 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!128783 () List!3993)

(declare-fun lt!128790 () List!3993)

(assert (=> b!303015 (= lt!128783 lt!128790)))

(declare-fun lt!128787 () List!3993)

(assert (=> b!303015 (= lt!128790 (++!1078 lt!128781 lt!128787))))

(declare-fun lt!128792 () List!3993)

(assert (=> b!303015 (= lt!128783 (++!1078 (++!1078 lt!128781 lt!128792) lt!128786))))

(declare-datatypes ((Unit!5582 0))(
  ( (Unit!5583) )
))
(declare-fun lt!128782 () Unit!5582)

(declare-fun lemmaConcatAssociativity!470 (List!3993 List!3993 List!3993) Unit!5582)

(assert (=> b!303015 (= lt!128782 (lemmaConcatAssociativity!470 lt!128781 lt!128792 lt!128786))))

(declare-fun charsOf!406 (Token!1270) BalanceConc!2704)

(assert (=> b!303015 (= lt!128781 (list!1683 (charsOf!406 (h!9382 tokens!465))))))

(assert (=> b!303015 (= lt!128787 (++!1078 lt!128792 lt!128786))))

(assert (=> b!303015 (= lt!128786 (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (t!42995 tokens!465) separatorToken!170))))

(assert (=> b!303015 (= lt!128792 (list!1683 (charsOf!406 separatorToken!170)))))

(declare-fun b!303016 () Bool)

(declare-fun e!188076 () Bool)

(assert (=> b!303016 (= e!188069 e!188076)))

(declare-fun res!137450 () Bool)

(assert (=> b!303016 (=> res!137450 e!188076)))

(assert (=> b!303016 (= res!137450 e!188073)))

(declare-fun res!137443 () Bool)

(assert (=> b!303016 (=> (not res!137443) (not e!188073))))

(assert (=> b!303016 (= res!137443 (not lt!128796))))

(assert (=> b!303016 (= lt!128796 (= lt!128784 lt!128790))))

(declare-fun tp!107906 () Bool)

(declare-fun b!303017 () Bool)

(declare-fun e!188078 () Bool)

(assert (=> b!303017 (= e!188077 (and tp!107906 (inv!4937 (tag!981 (h!9381 rules!1920))) (inv!4941 (transformation!763 (h!9381 rules!1920))) e!188078))))

(assert (=> b!303018 (= e!188082 (and tp!107896 tp!107898))))

(declare-fun b!303019 () Bool)

(assert (=> b!303019 (= e!188065 e!188085)))

(declare-fun res!137442 () Bool)

(assert (=> b!303019 (=> (not res!137442) (not e!188085))))

(declare-fun rulesProduceEachTokenIndividually!441 (LexerInterface!649 List!3994 BalanceConc!2706) Bool)

(assert (=> b!303019 (= res!137442 (rulesProduceEachTokenIndividually!441 thiss!17480 rules!1920 lt!128785))))

(assert (=> b!303019 (= lt!128785 (seqFromList!892 tokens!465))))

(assert (=> b!303020 (= e!188078 (and tp!107897 tp!107899))))

(declare-fun b!303021 () Bool)

(assert (=> b!303021 (= e!188076 e!188083)))

(declare-fun res!137438 () Bool)

(assert (=> b!303021 (=> res!137438 e!188083)))

(declare-fun lt!128794 () List!3993)

(declare-fun lt!128795 () List!3993)

(assert (=> b!303021 (= res!137438 (or (not (= lt!128794 lt!128795)) (not (= lt!128795 lt!128781)) (not (= lt!128794 lt!128781))))))

(declare-fun printList!323 (LexerInterface!649 List!3995) List!3993)

(assert (=> b!303021 (= lt!128795 (printList!323 thiss!17480 (Cons!3985 (h!9382 tokens!465) Nil!3985)))))

(declare-fun lt!128780 () BalanceConc!2704)

(assert (=> b!303021 (= lt!128794 (list!1683 lt!128780))))

(declare-fun lt!128789 () BalanceConc!2706)

(declare-fun printTailRec!335 (LexerInterface!649 BalanceConc!2706 Int BalanceConc!2704) BalanceConc!2704)

(assert (=> b!303021 (= lt!128780 (printTailRec!335 thiss!17480 lt!128789 0 (BalanceConc!2705 Empty!1348)))))

(declare-fun print!374 (LexerInterface!649 BalanceConc!2706) BalanceConc!2704)

(assert (=> b!303021 (= lt!128780 (print!374 thiss!17480 lt!128789))))

(declare-fun singletonSeq!309 (Token!1270) BalanceConc!2706)

(assert (=> b!303021 (= lt!128789 (singletonSeq!309 (h!9382 tokens!465)))))

(declare-fun b!303022 () Bool)

(declare-fun matchR!305 (Regex!987 List!3993) Bool)

(assert (=> b!303022 (= e!188066 (matchR!305 (regex!763 (rule!1376 (h!9382 tokens!465))) lt!128781))))

(assert (=> b!303023 (= e!188083 e!188068)))

(declare-fun res!137447 () Bool)

(assert (=> b!303023 (=> res!137447 e!188068)))

(declare-datatypes ((tuple2!4574 0))(
  ( (tuple2!4575 (_1!2503 Token!1270) (_2!2503 BalanceConc!2704)) )
))
(declare-datatypes ((Option!893 0))(
  ( (None!892) (Some!892 (v!14879 tuple2!4574)) )
))
(declare-fun isDefined!732 (Option!893) Bool)

(declare-fun maxPrefixZipperSequence!328 (LexerInterface!649 List!3994 BalanceConc!2704) Option!893)

(assert (=> b!303023 (= res!137447 (not (isDefined!732 (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))

(declare-fun lt!128779 () Unit!5582)

(declare-fun forallContained!316 (List!3995 Int Token!1270) Unit!5582)

(assert (=> b!303023 (= lt!128779 (forallContained!316 tokens!465 lambda!10272 (h!9382 tokens!465)))))

(assert (=> b!303023 (= lt!128781 (originalCharacters!806 (h!9382 tokens!465)))))

(declare-fun b!303024 () Bool)

(declare-fun tp!107900 () Bool)

(assert (=> b!303024 (= e!188071 (and (inv!4940 (h!9382 tokens!465)) e!188074 tp!107900))))

(declare-fun b!303025 () Bool)

(declare-fun res!137456 () Bool)

(assert (=> b!303025 (=> (not res!137456) (not e!188085))))

(assert (=> b!303025 (= res!137456 ((_ is Cons!3985) tokens!465))))

(assert (= (and start!32618 res!137441) b!303014))

(assert (= (and b!303014 res!137453) b!303011))

(assert (= (and b!303011 res!137448) b!303019))

(assert (= (and b!303019 res!137442) b!303013))

(assert (= (and b!303013 res!137437) b!303010))

(assert (= (and b!303010 res!137445) b!303004))

(assert (= (and b!303004 res!137439) b!302997))

(assert (= (and b!302997 res!137455) b!303025))

(assert (= (and b!303025 res!137456) b!303003))

(assert (= (and b!303003 res!137449) b!302998))

(assert (= (and b!302998 res!137451) b!303015))

(assert (= (and b!303015 (not res!137452)) b!303016))

(assert (= (and b!303016 res!137443) b!303009))

(assert (= (and b!303016 (not res!137450)) b!303021))

(assert (= (and b!303021 (not res!137438)) b!302995))

(assert (= (and b!302995 (not res!137446)) b!303006))

(assert (= (and b!303006 (not res!137444)) b!303023))

(assert (= (and b!303023 (not res!137447)) b!302999))

(assert (= (and b!302999 res!137440) b!303008))

(assert (= (and b!303008 res!137454) b!303022))

(assert (= (and b!302999 (not res!137457)) b!303002))

(assert (= b!303017 b!303020))

(assert (= b!303001 b!303017))

(assert (= (and start!32618 ((_ is Cons!3984) rules!1920)) b!303001))

(assert (= b!303000 b!302996))

(assert (= b!303007 b!303000))

(assert (= start!32618 b!303007))

(assert (= b!303012 b!303018))

(assert (= b!303005 b!303012))

(assert (= b!303024 b!303005))

(assert (= (and start!32618 ((_ is Cons!3985) tokens!465)) b!303024))

(declare-fun m!404525 () Bool)

(assert (=> b!303012 m!404525))

(declare-fun m!404527 () Bool)

(assert (=> b!303012 m!404527))

(declare-fun m!404529 () Bool)

(assert (=> b!303000 m!404529))

(declare-fun m!404531 () Bool)

(assert (=> b!303000 m!404531))

(declare-fun m!404533 () Bool)

(assert (=> b!303013 m!404533))

(declare-fun m!404535 () Bool)

(assert (=> b!303024 m!404535))

(declare-fun m!404537 () Bool)

(assert (=> b!303003 m!404537))

(assert (=> b!303003 m!404537))

(declare-fun m!404539 () Bool)

(assert (=> b!303003 m!404539))

(declare-fun m!404541 () Bool)

(assert (=> b!303003 m!404541))

(declare-fun m!404543 () Bool)

(assert (=> b!303011 m!404543))

(declare-fun m!404545 () Bool)

(assert (=> b!303008 m!404545))

(declare-fun m!404547 () Bool)

(assert (=> b!303014 m!404547))

(declare-fun m!404549 () Bool)

(assert (=> b!302995 m!404549))

(declare-fun m!404551 () Bool)

(assert (=> b!302997 m!404551))

(declare-fun m!404553 () Bool)

(assert (=> b!303015 m!404553))

(declare-fun m!404555 () Bool)

(assert (=> b!303015 m!404555))

(declare-fun m!404557 () Bool)

(assert (=> b!303015 m!404557))

(declare-fun m!404559 () Bool)

(assert (=> b!303015 m!404559))

(assert (=> b!303015 m!404557))

(declare-fun m!404561 () Bool)

(assert (=> b!303015 m!404561))

(declare-fun m!404563 () Bool)

(assert (=> b!303015 m!404563))

(assert (=> b!303015 m!404553))

(declare-fun m!404565 () Bool)

(assert (=> b!303015 m!404565))

(assert (=> b!303015 m!404563))

(declare-fun m!404567 () Bool)

(assert (=> b!303015 m!404567))

(declare-fun m!404569 () Bool)

(assert (=> b!303015 m!404569))

(declare-fun m!404571 () Bool)

(assert (=> b!303015 m!404571))

(declare-fun m!404573 () Bool)

(assert (=> b!303015 m!404573))

(assert (=> b!303015 m!404569))

(declare-fun m!404575 () Bool)

(assert (=> b!303015 m!404575))

(assert (=> b!303015 m!404565))

(declare-fun m!404577 () Bool)

(assert (=> b!303015 m!404577))

(declare-fun m!404579 () Bool)

(assert (=> start!32618 m!404579))

(declare-fun m!404581 () Bool)

(assert (=> b!302999 m!404581))

(declare-fun m!404583 () Bool)

(assert (=> b!302999 m!404583))

(declare-fun m!404585 () Bool)

(assert (=> b!302999 m!404585))

(declare-fun m!404587 () Bool)

(assert (=> b!303017 m!404587))

(declare-fun m!404589 () Bool)

(assert (=> b!303017 m!404589))

(declare-fun m!404591 () Bool)

(assert (=> b!303007 m!404591))

(declare-fun m!404593 () Bool)

(assert (=> b!303004 m!404593))

(declare-fun m!404595 () Bool)

(assert (=> b!303023 m!404595))

(assert (=> b!303023 m!404595))

(declare-fun m!404597 () Bool)

(assert (=> b!303023 m!404597))

(assert (=> b!303023 m!404597))

(declare-fun m!404599 () Bool)

(assert (=> b!303023 m!404599))

(declare-fun m!404601 () Bool)

(assert (=> b!303023 m!404601))

(declare-fun m!404603 () Bool)

(assert (=> b!303019 m!404603))

(declare-fun m!404605 () Bool)

(assert (=> b!303019 m!404605))

(declare-fun m!404607 () Bool)

(assert (=> b!303002 m!404607))

(declare-fun m!404609 () Bool)

(assert (=> b!303022 m!404609))

(declare-fun m!404611 () Bool)

(assert (=> b!303021 m!404611))

(declare-fun m!404613 () Bool)

(assert (=> b!303021 m!404613))

(declare-fun m!404615 () Bool)

(assert (=> b!303021 m!404615))

(declare-fun m!404617 () Bool)

(assert (=> b!303021 m!404617))

(declare-fun m!404619 () Bool)

(assert (=> b!303021 m!404619))

(declare-fun m!404621 () Bool)

(assert (=> b!303006 m!404621))

(assert (=> b!303006 m!404621))

(declare-fun m!404623 () Bool)

(assert (=> b!303006 m!404623))

(declare-fun m!404625 () Bool)

(assert (=> b!303006 m!404625))

(declare-fun m!404627 () Bool)

(assert (=> b!302998 m!404627))

(assert (=> b!302998 m!404627))

(declare-fun m!404629 () Bool)

(assert (=> b!302998 m!404629))

(declare-fun m!404631 () Bool)

(assert (=> b!303005 m!404631))

(declare-fun m!404633 () Bool)

(assert (=> b!303009 m!404633))

(check-sat (not b!302995) (not b!303005) (not b!303013) (not b!303023) (not b!303021) (not b!303006) (not b!303009) (not b!303001) (not b_next!10759) b_and!25565 b_and!25557 (not b!303034) (not b_next!10753) (not b!303014) (not b_next!10757) b_and!25567 (not b!303000) (not b!302997) (not b!303002) b_and!25563 (not b!302998) (not b!303004) (not b!303007) (not b!303012) (not b!303015) (not b!303017) (not b!303008) b_and!25561 (not b!303022) (not b!303011) (not b_next!10761) (not b!303024) (not b_next!10763) b_and!25559 (not start!32618) (not b!303019) (not b_next!10755) (not b!302999) (not b!303003))
(check-sat b_and!25563 b_and!25561 (not b_next!10761) (not b_next!10759) b_and!25565 b_and!25557 (not b_next!10753) (not b_next!10763) (not b_next!10757) b_and!25559 b_and!25567 (not b_next!10755))
(get-model)

(declare-fun d!93119 () Bool)

(assert (=> d!93119 (= (get!1355 lt!128788) (v!14878 lt!128788))))

(assert (=> b!302999 d!93119))

(declare-fun d!93121 () Bool)

(declare-fun isEmpty!2686 (Option!892) Bool)

(assert (=> d!93121 (= (isDefined!731 lt!128788) (not (isEmpty!2686 lt!128788)))))

(declare-fun bs!35130 () Bool)

(assert (= bs!35130 d!93121))

(declare-fun m!404659 () Bool)

(assert (=> bs!35130 m!404659))

(assert (=> b!302999 d!93121))

(declare-fun b!303110 () Bool)

(declare-fun res!137511 () Bool)

(declare-fun e!188138 () Bool)

(assert (=> b!303110 (=> (not res!137511) (not e!188138))))

(declare-fun lt!128831 () Option!892)

(declare-fun size!3209 (List!3993) Int)

(assert (=> b!303110 (= res!137511 (< (size!3209 (_2!2501 (get!1355 lt!128831))) (size!3209 lt!128781)))))

(declare-fun b!303111 () Bool)

(declare-fun res!137515 () Bool)

(assert (=> b!303111 (=> (not res!137515) (not e!188138))))

(assert (=> b!303111 (= res!137515 (matchR!305 (regex!763 (rule!1376 (_1!2501 (get!1355 lt!128831)))) (list!1683 (charsOf!406 (_1!2501 (get!1355 lt!128831))))))))

(declare-fun b!303112 () Bool)

(declare-fun res!137516 () Bool)

(assert (=> b!303112 (=> (not res!137516) (not e!188138))))

(assert (=> b!303112 (= res!137516 (= (list!1683 (charsOf!406 (_1!2501 (get!1355 lt!128831)))) (originalCharacters!806 (_1!2501 (get!1355 lt!128831)))))))

(declare-fun d!93123 () Bool)

(declare-fun e!188137 () Bool)

(assert (=> d!93123 e!188137))

(declare-fun res!137513 () Bool)

(assert (=> d!93123 (=> res!137513 e!188137)))

(assert (=> d!93123 (= res!137513 (isEmpty!2686 lt!128831))))

(declare-fun e!188139 () Option!892)

(assert (=> d!93123 (= lt!128831 e!188139)))

(declare-fun c!57776 () Bool)

(assert (=> d!93123 (= c!57776 (and ((_ is Cons!3984) rules!1920) ((_ is Nil!3984) (t!42994 rules!1920))))))

(declare-fun lt!128832 () Unit!5582)

(declare-fun lt!128828 () Unit!5582)

(assert (=> d!93123 (= lt!128832 lt!128828)))

(declare-fun isPrefix!427 (List!3993 List!3993) Bool)

(assert (=> d!93123 (isPrefix!427 lt!128781 lt!128781)))

(declare-fun lemmaIsPrefixRefl!233 (List!3993 List!3993) Unit!5582)

(assert (=> d!93123 (= lt!128828 (lemmaIsPrefixRefl!233 lt!128781 lt!128781))))

(declare-fun rulesValidInductive!228 (LexerInterface!649 List!3994) Bool)

(assert (=> d!93123 (rulesValidInductive!228 thiss!17480 rules!1920)))

(assert (=> d!93123 (= (maxPrefix!365 thiss!17480 rules!1920 lt!128781) lt!128831)))

(declare-fun b!303113 () Bool)

(declare-fun res!137510 () Bool)

(assert (=> b!303113 (=> (not res!137510) (not e!188138))))

(declare-fun apply!871 (TokenValueInjection!1342 BalanceConc!2704) TokenValue!785)

(assert (=> b!303113 (= res!137510 (= (value!26061 (_1!2501 (get!1355 lt!128831))) (apply!871 (transformation!763 (rule!1376 (_1!2501 (get!1355 lt!128831)))) (seqFromList!891 (originalCharacters!806 (_1!2501 (get!1355 lt!128831)))))))))

(declare-fun b!303114 () Bool)

(assert (=> b!303114 (= e!188137 e!188138)))

(declare-fun res!137512 () Bool)

(assert (=> b!303114 (=> (not res!137512) (not e!188138))))

(assert (=> b!303114 (= res!137512 (isDefined!731 lt!128831))))

(declare-fun b!303115 () Bool)

(declare-fun res!137514 () Bool)

(assert (=> b!303115 (=> (not res!137514) (not e!188138))))

(assert (=> b!303115 (= res!137514 (= (++!1078 (list!1683 (charsOf!406 (_1!2501 (get!1355 lt!128831)))) (_2!2501 (get!1355 lt!128831))) lt!128781))))

(declare-fun b!303116 () Bool)

(declare-fun contains!791 (List!3994 Rule!1326) Bool)

(assert (=> b!303116 (= e!188138 (contains!791 rules!1920 (rule!1376 (_1!2501 (get!1355 lt!128831)))))))

(declare-fun b!303117 () Bool)

(declare-fun call!17534 () Option!892)

(assert (=> b!303117 (= e!188139 call!17534)))

(declare-fun bm!17529 () Bool)

(declare-fun maxPrefixOneRule!166 (LexerInterface!649 Rule!1326 List!3993) Option!892)

(assert (=> bm!17529 (= call!17534 (maxPrefixOneRule!166 thiss!17480 (h!9381 rules!1920) lt!128781))))

(declare-fun b!303118 () Bool)

(declare-fun lt!128829 () Option!892)

(declare-fun lt!128830 () Option!892)

(assert (=> b!303118 (= e!188139 (ite (and ((_ is None!891) lt!128829) ((_ is None!891) lt!128830)) None!891 (ite ((_ is None!891) lt!128830) lt!128829 (ite ((_ is None!891) lt!128829) lt!128830 (ite (>= (size!3207 (_1!2501 (v!14878 lt!128829))) (size!3207 (_1!2501 (v!14878 lt!128830)))) lt!128829 lt!128830)))))))

(assert (=> b!303118 (= lt!128829 call!17534)))

(assert (=> b!303118 (= lt!128830 (maxPrefix!365 thiss!17480 (t!42994 rules!1920) lt!128781))))

(assert (= (and d!93123 c!57776) b!303117))

(assert (= (and d!93123 (not c!57776)) b!303118))

(assert (= (or b!303117 b!303118) bm!17529))

(assert (= (and d!93123 (not res!137513)) b!303114))

(assert (= (and b!303114 res!137512) b!303112))

(assert (= (and b!303112 res!137516) b!303110))

(assert (= (and b!303110 res!137511) b!303115))

(assert (= (and b!303115 res!137514) b!303113))

(assert (= (and b!303113 res!137510) b!303111))

(assert (= (and b!303111 res!137515) b!303116))

(declare-fun m!404679 () Bool)

(assert (=> bm!17529 m!404679))

(declare-fun m!404681 () Bool)

(assert (=> b!303116 m!404681))

(declare-fun m!404683 () Bool)

(assert (=> b!303116 m!404683))

(declare-fun m!404685 () Bool)

(assert (=> d!93123 m!404685))

(declare-fun m!404687 () Bool)

(assert (=> d!93123 m!404687))

(declare-fun m!404689 () Bool)

(assert (=> d!93123 m!404689))

(declare-fun m!404693 () Bool)

(assert (=> d!93123 m!404693))

(assert (=> b!303110 m!404681))

(declare-fun m!404699 () Bool)

(assert (=> b!303110 m!404699))

(declare-fun m!404701 () Bool)

(assert (=> b!303110 m!404701))

(assert (=> b!303113 m!404681))

(declare-fun m!404705 () Bool)

(assert (=> b!303113 m!404705))

(assert (=> b!303113 m!404705))

(declare-fun m!404707 () Bool)

(assert (=> b!303113 m!404707))

(assert (=> b!303111 m!404681))

(declare-fun m!404709 () Bool)

(assert (=> b!303111 m!404709))

(assert (=> b!303111 m!404709))

(declare-fun m!404713 () Bool)

(assert (=> b!303111 m!404713))

(assert (=> b!303111 m!404713))

(declare-fun m!404715 () Bool)

(assert (=> b!303111 m!404715))

(declare-fun m!404717 () Bool)

(assert (=> b!303114 m!404717))

(declare-fun m!404719 () Bool)

(assert (=> b!303118 m!404719))

(assert (=> b!303112 m!404681))

(assert (=> b!303112 m!404709))

(assert (=> b!303112 m!404709))

(assert (=> b!303112 m!404713))

(assert (=> b!303115 m!404681))

(assert (=> b!303115 m!404709))

(assert (=> b!303115 m!404709))

(assert (=> b!303115 m!404713))

(assert (=> b!303115 m!404713))

(declare-fun m!404721 () Bool)

(assert (=> b!303115 m!404721))

(assert (=> b!302999 d!93123))

(declare-fun d!93127 () Bool)

(declare-fun lt!128857 () BalanceConc!2704)

(declare-fun printListTailRec!155 (LexerInterface!649 List!3995 List!3993) List!3993)

(declare-fun dropList!189 (BalanceConc!2706 Int) List!3995)

(assert (=> d!93127 (= (list!1683 lt!128857) (printListTailRec!155 thiss!17480 (dropList!189 lt!128789 0) (list!1683 (BalanceConc!2705 Empty!1348))))))

(declare-fun e!188160 () BalanceConc!2704)

(assert (=> d!93127 (= lt!128857 e!188160)))

(declare-fun c!57784 () Bool)

(declare-fun size!3210 (BalanceConc!2706) Int)

(assert (=> d!93127 (= c!57784 (>= 0 (size!3210 lt!128789)))))

(declare-fun e!188159 () Bool)

(assert (=> d!93127 e!188159))

(declare-fun res!137532 () Bool)

(assert (=> d!93127 (=> (not res!137532) (not e!188159))))

(assert (=> d!93127 (= res!137532 (>= 0 0))))

(assert (=> d!93127 (= (printTailRec!335 thiss!17480 lt!128789 0 (BalanceConc!2705 Empty!1348)) lt!128857)))

(declare-fun b!303148 () Bool)

(assert (=> b!303148 (= e!188159 (<= 0 (size!3210 lt!128789)))))

(declare-fun b!303149 () Bool)

(assert (=> b!303149 (= e!188160 (BalanceConc!2705 Empty!1348))))

(declare-fun b!303150 () Bool)

(declare-fun ++!1079 (BalanceConc!2704 BalanceConc!2704) BalanceConc!2704)

(declare-fun apply!872 (BalanceConc!2706 Int) Token!1270)

(assert (=> b!303150 (= e!188160 (printTailRec!335 thiss!17480 lt!128789 (+ 0 1) (++!1079 (BalanceConc!2705 Empty!1348) (charsOf!406 (apply!872 lt!128789 0)))))))

(declare-fun lt!128858 () List!3995)

(declare-fun list!1685 (BalanceConc!2706) List!3995)

(assert (=> b!303150 (= lt!128858 (list!1685 lt!128789))))

(declare-fun lt!128856 () Unit!5582)

(declare-fun lemmaDropApply!229 (List!3995 Int) Unit!5582)

(assert (=> b!303150 (= lt!128856 (lemmaDropApply!229 lt!128858 0))))

(declare-fun head!945 (List!3995) Token!1270)

(declare-fun drop!244 (List!3995 Int) List!3995)

(declare-fun apply!873 (List!3995 Int) Token!1270)

(assert (=> b!303150 (= (head!945 (drop!244 lt!128858 0)) (apply!873 lt!128858 0))))

(declare-fun lt!128855 () Unit!5582)

(assert (=> b!303150 (= lt!128855 lt!128856)))

(declare-fun lt!128853 () List!3995)

(assert (=> b!303150 (= lt!128853 (list!1685 lt!128789))))

(declare-fun lt!128859 () Unit!5582)

(declare-fun lemmaDropTail!221 (List!3995 Int) Unit!5582)

(assert (=> b!303150 (= lt!128859 (lemmaDropTail!221 lt!128853 0))))

(declare-fun tail!527 (List!3995) List!3995)

(assert (=> b!303150 (= (tail!527 (drop!244 lt!128853 0)) (drop!244 lt!128853 (+ 0 1)))))

(declare-fun lt!128854 () Unit!5582)

(assert (=> b!303150 (= lt!128854 lt!128859)))

(assert (= (and d!93127 res!137532) b!303148))

(assert (= (and d!93127 c!57784) b!303149))

(assert (= (and d!93127 (not c!57784)) b!303150))

(declare-fun m!404763 () Bool)

(assert (=> d!93127 m!404763))

(declare-fun m!404765 () Bool)

(assert (=> d!93127 m!404765))

(declare-fun m!404767 () Bool)

(assert (=> d!93127 m!404767))

(declare-fun m!404769 () Bool)

(assert (=> d!93127 m!404769))

(assert (=> d!93127 m!404763))

(assert (=> d!93127 m!404765))

(declare-fun m!404771 () Bool)

(assert (=> d!93127 m!404771))

(assert (=> b!303148 m!404767))

(declare-fun m!404773 () Bool)

(assert (=> b!303150 m!404773))

(declare-fun m!404775 () Bool)

(assert (=> b!303150 m!404775))

(declare-fun m!404777 () Bool)

(assert (=> b!303150 m!404777))

(declare-fun m!404779 () Bool)

(assert (=> b!303150 m!404779))

(declare-fun m!404781 () Bool)

(assert (=> b!303150 m!404781))

(declare-fun m!404783 () Bool)

(assert (=> b!303150 m!404783))

(declare-fun m!404785 () Bool)

(assert (=> b!303150 m!404785))

(assert (=> b!303150 m!404785))

(assert (=> b!303150 m!404779))

(assert (=> b!303150 m!404783))

(declare-fun m!404787 () Bool)

(assert (=> b!303150 m!404787))

(assert (=> b!303150 m!404787))

(declare-fun m!404789 () Bool)

(assert (=> b!303150 m!404789))

(declare-fun m!404791 () Bool)

(assert (=> b!303150 m!404791))

(declare-fun m!404793 () Bool)

(assert (=> b!303150 m!404793))

(assert (=> b!303150 m!404773))

(declare-fun m!404795 () Bool)

(assert (=> b!303150 m!404795))

(declare-fun m!404797 () Bool)

(assert (=> b!303150 m!404797))

(assert (=> b!303021 d!93127))

(declare-fun d!93147 () Bool)

(declare-fun lt!128862 () BalanceConc!2704)

(assert (=> d!93147 (= (list!1683 lt!128862) (printList!323 thiss!17480 (list!1685 lt!128789)))))

(assert (=> d!93147 (= lt!128862 (printTailRec!335 thiss!17480 lt!128789 0 (BalanceConc!2705 Empty!1348)))))

(assert (=> d!93147 (= (print!374 thiss!17480 lt!128789) lt!128862)))

(declare-fun bs!35135 () Bool)

(assert (= bs!35135 d!93147))

(declare-fun m!404799 () Bool)

(assert (=> bs!35135 m!404799))

(assert (=> bs!35135 m!404795))

(assert (=> bs!35135 m!404795))

(declare-fun m!404801 () Bool)

(assert (=> bs!35135 m!404801))

(assert (=> bs!35135 m!404615))

(assert (=> b!303021 d!93147))

(declare-fun d!93149 () Bool)

(declare-fun list!1686 (Conc!1348) List!3993)

(assert (=> d!93149 (= (list!1683 lt!128780) (list!1686 (c!57762 lt!128780)))))

(declare-fun bs!35136 () Bool)

(assert (= bs!35136 d!93149))

(declare-fun m!404803 () Bool)

(assert (=> bs!35136 m!404803))

(assert (=> b!303021 d!93149))

(declare-fun d!93151 () Bool)

(declare-fun e!188163 () Bool)

(assert (=> d!93151 e!188163))

(declare-fun res!137535 () Bool)

(assert (=> d!93151 (=> (not res!137535) (not e!188163))))

(declare-fun lt!128865 () BalanceConc!2706)

(assert (=> d!93151 (= res!137535 (= (list!1685 lt!128865) (Cons!3985 (h!9382 tokens!465) Nil!3985)))))

(declare-fun singleton!139 (Token!1270) BalanceConc!2706)

(assert (=> d!93151 (= lt!128865 (singleton!139 (h!9382 tokens!465)))))

(assert (=> d!93151 (= (singletonSeq!309 (h!9382 tokens!465)) lt!128865)))

(declare-fun b!303153 () Bool)

(declare-fun isBalanced!388 (Conc!1349) Bool)

(assert (=> b!303153 (= e!188163 (isBalanced!388 (c!57764 lt!128865)))))

(assert (= (and d!93151 res!137535) b!303153))

(declare-fun m!404805 () Bool)

(assert (=> d!93151 m!404805))

(declare-fun m!404807 () Bool)

(assert (=> d!93151 m!404807))

(declare-fun m!404809 () Bool)

(assert (=> b!303153 m!404809))

(assert (=> b!303021 d!93151))

(declare-fun d!93153 () Bool)

(declare-fun c!57787 () Bool)

(assert (=> d!93153 (= c!57787 ((_ is Cons!3985) (Cons!3985 (h!9382 tokens!465) Nil!3985)))))

(declare-fun e!188166 () List!3993)

(assert (=> d!93153 (= (printList!323 thiss!17480 (Cons!3985 (h!9382 tokens!465) Nil!3985)) e!188166)))

(declare-fun b!303158 () Bool)

(assert (=> b!303158 (= e!188166 (++!1078 (list!1683 (charsOf!406 (h!9382 (Cons!3985 (h!9382 tokens!465) Nil!3985)))) (printList!323 thiss!17480 (t!42995 (Cons!3985 (h!9382 tokens!465) Nil!3985)))))))

(declare-fun b!303159 () Bool)

(assert (=> b!303159 (= e!188166 Nil!3983)))

(assert (= (and d!93153 c!57787) b!303158))

(assert (= (and d!93153 (not c!57787)) b!303159))

(declare-fun m!404811 () Bool)

(assert (=> b!303158 m!404811))

(assert (=> b!303158 m!404811))

(declare-fun m!404813 () Bool)

(assert (=> b!303158 m!404813))

(declare-fun m!404815 () Bool)

(assert (=> b!303158 m!404815))

(assert (=> b!303158 m!404813))

(assert (=> b!303158 m!404815))

(declare-fun m!404817 () Bool)

(assert (=> b!303158 m!404817))

(assert (=> b!303021 d!93153))

(declare-fun d!93155 () Bool)

(assert (=> d!93155 (= (inv!4937 (tag!981 (rule!1376 separatorToken!170))) (= (mod (str.len (value!26060 (tag!981 (rule!1376 separatorToken!170)))) 2) 0))))

(assert (=> b!303000 d!93155))

(declare-fun d!93157 () Bool)

(declare-fun res!137538 () Bool)

(declare-fun e!188169 () Bool)

(assert (=> d!93157 (=> (not res!137538) (not e!188169))))

(declare-fun semiInverseModEq!287 (Int Int) Bool)

(assert (=> d!93157 (= res!137538 (semiInverseModEq!287 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toValue!1522 (transformation!763 (rule!1376 separatorToken!170)))))))

(assert (=> d!93157 (= (inv!4941 (transformation!763 (rule!1376 separatorToken!170))) e!188169)))

(declare-fun b!303162 () Bool)

(declare-fun equivClasses!270 (Int Int) Bool)

(assert (=> b!303162 (= e!188169 (equivClasses!270 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toValue!1522 (transformation!763 (rule!1376 separatorToken!170)))))))

(assert (= (and d!93157 res!137538) b!303162))

(declare-fun m!404819 () Bool)

(assert (=> d!93157 m!404819))

(declare-fun m!404821 () Bool)

(assert (=> b!303162 m!404821))

(assert (=> b!303000 d!93157))

(declare-fun b!303191 () Bool)

(declare-fun e!188186 () Bool)

(declare-fun lt!128868 () Bool)

(assert (=> b!303191 (= e!188186 (not lt!128868))))

(declare-fun b!303192 () Bool)

(declare-fun e!188185 () Bool)

(declare-fun derivativeStep!155 (Regex!987 C!2896) Regex!987)

(declare-fun head!947 (List!3993) C!2896)

(declare-fun tail!528 (List!3993) List!3993)

(assert (=> b!303192 (= e!188185 (matchR!305 (derivativeStep!155 (regex!763 (rule!1376 (h!9382 tokens!465))) (head!947 lt!128781)) (tail!528 lt!128781)))))

(declare-fun d!93159 () Bool)

(declare-fun e!188187 () Bool)

(assert (=> d!93159 e!188187))

(declare-fun c!57796 () Bool)

(assert (=> d!93159 (= c!57796 ((_ is EmptyExpr!987) (regex!763 (rule!1376 (h!9382 tokens!465)))))))

(assert (=> d!93159 (= lt!128868 e!188185)))

(declare-fun c!57795 () Bool)

(assert (=> d!93159 (= c!57795 (isEmpty!2683 lt!128781))))

(declare-fun validRegex!264 (Regex!987) Bool)

(assert (=> d!93159 (validRegex!264 (regex!763 (rule!1376 (h!9382 tokens!465))))))

(assert (=> d!93159 (= (matchR!305 (regex!763 (rule!1376 (h!9382 tokens!465))) lt!128781) lt!128868)))

(declare-fun b!303193 () Bool)

(declare-fun nullable!189 (Regex!987) Bool)

(assert (=> b!303193 (= e!188185 (nullable!189 (regex!763 (rule!1376 (h!9382 tokens!465)))))))

(declare-fun b!303194 () Bool)

(declare-fun res!137560 () Bool)

(declare-fun e!188188 () Bool)

(assert (=> b!303194 (=> (not res!137560) (not e!188188))))

(assert (=> b!303194 (= res!137560 (isEmpty!2683 (tail!528 lt!128781)))))

(declare-fun b!303195 () Bool)

(assert (=> b!303195 (= e!188187 e!188186)))

(declare-fun c!57794 () Bool)

(assert (=> b!303195 (= c!57794 ((_ is EmptyLang!987) (regex!763 (rule!1376 (h!9382 tokens!465)))))))

(declare-fun b!303196 () Bool)

(declare-fun res!137562 () Bool)

(declare-fun e!188184 () Bool)

(assert (=> b!303196 (=> res!137562 e!188184)))

(assert (=> b!303196 (= res!137562 (not ((_ is ElementMatch!987) (regex!763 (rule!1376 (h!9382 tokens!465))))))))

(assert (=> b!303196 (= e!188186 e!188184)))

(declare-fun b!303197 () Bool)

(assert (=> b!303197 (= e!188188 (= (head!947 lt!128781) (c!57763 (regex!763 (rule!1376 (h!9382 tokens!465))))))))

(declare-fun b!303198 () Bool)

(declare-fun call!17537 () Bool)

(assert (=> b!303198 (= e!188187 (= lt!128868 call!17537))))

(declare-fun b!303199 () Bool)

(declare-fun e!188189 () Bool)

(declare-fun e!188190 () Bool)

(assert (=> b!303199 (= e!188189 e!188190)))

(declare-fun res!137556 () Bool)

(assert (=> b!303199 (=> res!137556 e!188190)))

(assert (=> b!303199 (= res!137556 call!17537)))

(declare-fun b!303200 () Bool)

(assert (=> b!303200 (= e!188190 (not (= (head!947 lt!128781) (c!57763 (regex!763 (rule!1376 (h!9382 tokens!465)))))))))

(declare-fun b!303201 () Bool)

(declare-fun res!137561 () Bool)

(assert (=> b!303201 (=> (not res!137561) (not e!188188))))

(assert (=> b!303201 (= res!137561 (not call!17537))))

(declare-fun b!303202 () Bool)

(declare-fun res!137558 () Bool)

(assert (=> b!303202 (=> res!137558 e!188184)))

(assert (=> b!303202 (= res!137558 e!188188)))

(declare-fun res!137559 () Bool)

(assert (=> b!303202 (=> (not res!137559) (not e!188188))))

(assert (=> b!303202 (= res!137559 lt!128868)))

(declare-fun b!303203 () Bool)

(assert (=> b!303203 (= e!188184 e!188189)))

(declare-fun res!137557 () Bool)

(assert (=> b!303203 (=> (not res!137557) (not e!188189))))

(assert (=> b!303203 (= res!137557 (not lt!128868))))

(declare-fun b!303204 () Bool)

(declare-fun res!137555 () Bool)

(assert (=> b!303204 (=> res!137555 e!188190)))

(assert (=> b!303204 (= res!137555 (not (isEmpty!2683 (tail!528 lt!128781))))))

(declare-fun bm!17532 () Bool)

(assert (=> bm!17532 (= call!17537 (isEmpty!2683 lt!128781))))

(assert (= (and d!93159 c!57795) b!303193))

(assert (= (and d!93159 (not c!57795)) b!303192))

(assert (= (and d!93159 c!57796) b!303198))

(assert (= (and d!93159 (not c!57796)) b!303195))

(assert (= (and b!303195 c!57794) b!303191))

(assert (= (and b!303195 (not c!57794)) b!303196))

(assert (= (and b!303196 (not res!137562)) b!303202))

(assert (= (and b!303202 res!137559) b!303201))

(assert (= (and b!303201 res!137561) b!303194))

(assert (= (and b!303194 res!137560) b!303197))

(assert (= (and b!303202 (not res!137558)) b!303203))

(assert (= (and b!303203 res!137557) b!303199))

(assert (= (and b!303199 (not res!137556)) b!303204))

(assert (= (and b!303204 (not res!137555)) b!303200))

(assert (= (or b!303198 b!303199 b!303201) bm!17532))

(declare-fun m!404823 () Bool)

(assert (=> d!93159 m!404823))

(declare-fun m!404825 () Bool)

(assert (=> d!93159 m!404825))

(declare-fun m!404827 () Bool)

(assert (=> b!303197 m!404827))

(assert (=> bm!17532 m!404823))

(declare-fun m!404829 () Bool)

(assert (=> b!303204 m!404829))

(assert (=> b!303204 m!404829))

(declare-fun m!404831 () Bool)

(assert (=> b!303204 m!404831))

(declare-fun m!404833 () Bool)

(assert (=> b!303193 m!404833))

(assert (=> b!303200 m!404827))

(assert (=> b!303192 m!404827))

(assert (=> b!303192 m!404827))

(declare-fun m!404835 () Bool)

(assert (=> b!303192 m!404835))

(assert (=> b!303192 m!404829))

(assert (=> b!303192 m!404835))

(assert (=> b!303192 m!404829))

(declare-fun m!404837 () Bool)

(assert (=> b!303192 m!404837))

(assert (=> b!303194 m!404829))

(assert (=> b!303194 m!404829))

(assert (=> b!303194 m!404831))

(assert (=> b!303022 d!93159))

(declare-fun d!93161 () Bool)

(declare-fun isEmpty!2687 (Option!893) Bool)

(assert (=> d!93161 (= (isDefined!732 (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465))))) (not (isEmpty!2687 (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))

(declare-fun bs!35137 () Bool)

(assert (= bs!35137 d!93161))

(assert (=> bs!35137 m!404597))

(declare-fun m!404839 () Bool)

(assert (=> bs!35137 m!404839))

(assert (=> b!303023 d!93161))

(declare-fun b!303222 () Bool)

(declare-fun e!188203 () Option!893)

(declare-fun call!17540 () Option!893)

(assert (=> b!303222 (= e!188203 call!17540)))

(declare-fun b!303223 () Bool)

(declare-fun lt!128883 () Option!893)

(declare-fun lt!128885 () Option!893)

(assert (=> b!303223 (= e!188203 (ite (and ((_ is None!892) lt!128883) ((_ is None!892) lt!128885)) None!892 (ite ((_ is None!892) lt!128885) lt!128883 (ite ((_ is None!892) lt!128883) lt!128885 (ite (>= (size!3207 (_1!2503 (v!14879 lt!128883))) (size!3207 (_1!2503 (v!14879 lt!128885)))) lt!128883 lt!128885)))))))

(assert (=> b!303223 (= lt!128883 call!17540)))

(assert (=> b!303223 (= lt!128885 (maxPrefixZipperSequence!328 thiss!17480 (t!42994 rules!1920) (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))

(declare-fun b!303224 () Bool)

(declare-fun res!137580 () Bool)

(declare-fun e!188208 () Bool)

(assert (=> b!303224 (=> (not res!137580) (not e!188208))))

(declare-fun e!188205 () Bool)

(assert (=> b!303224 (= res!137580 e!188205)))

(declare-fun res!137576 () Bool)

(assert (=> b!303224 (=> res!137576 e!188205)))

(declare-fun lt!128887 () Option!893)

(assert (=> b!303224 (= res!137576 (not (isDefined!732 lt!128887)))))

(declare-fun e!188207 () Bool)

(declare-fun b!303225 () Bool)

(declare-fun get!1357 (Option!893) tuple2!4574)

(assert (=> b!303225 (= e!188207 (= (list!1683 (_2!2503 (get!1357 lt!128887))) (_2!2501 (get!1355 (maxPrefix!365 thiss!17480 rules!1920 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))))

(declare-fun b!303226 () Bool)

(declare-fun e!188204 () Bool)

(assert (=> b!303226 (= e!188204 e!188207)))

(declare-fun res!137577 () Bool)

(assert (=> b!303226 (=> (not res!137577) (not e!188207))))

(assert (=> b!303226 (= res!137577 (= (_1!2503 (get!1357 lt!128887)) (_1!2501 (get!1355 (maxPrefix!365 thiss!17480 rules!1920 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))))

(declare-fun bm!17535 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!138 (LexerInterface!649 Rule!1326 BalanceConc!2704) Option!893)

(assert (=> bm!17535 (= call!17540 (maxPrefixOneRuleZipperSequence!138 thiss!17480 (h!9381 rules!1920) (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))

(declare-fun b!303227 () Bool)

(assert (=> b!303227 (= e!188208 e!188204)))

(declare-fun res!137578 () Bool)

(assert (=> b!303227 (=> res!137578 e!188204)))

(assert (=> b!303227 (= res!137578 (not (isDefined!732 lt!128887)))))

(declare-fun b!303228 () Bool)

(declare-fun e!188206 () Bool)

(assert (=> b!303228 (= e!188205 e!188206)))

(declare-fun res!137575 () Bool)

(assert (=> b!303228 (=> (not res!137575) (not e!188206))))

(declare-fun maxPrefixZipper!137 (LexerInterface!649 List!3994 List!3993) Option!892)

(assert (=> b!303228 (= res!137575 (= (_1!2503 (get!1357 lt!128887)) (_1!2501 (get!1355 (maxPrefixZipper!137 thiss!17480 rules!1920 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))))

(declare-fun b!303221 () Bool)

(assert (=> b!303221 (= e!188206 (= (list!1683 (_2!2503 (get!1357 lt!128887))) (_2!2501 (get!1355 (maxPrefixZipper!137 thiss!17480 rules!1920 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))))))

(declare-fun d!93163 () Bool)

(assert (=> d!93163 e!188208))

(declare-fun res!137579 () Bool)

(assert (=> d!93163 (=> (not res!137579) (not e!188208))))

(assert (=> d!93163 (= res!137579 (= (isDefined!732 lt!128887) (isDefined!731 (maxPrefixZipper!137 thiss!17480 rules!1920 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465))))))))))

(assert (=> d!93163 (= lt!128887 e!188203)))

(declare-fun c!57799 () Bool)

(assert (=> d!93163 (= c!57799 (and ((_ is Cons!3984) rules!1920) ((_ is Nil!3984) (t!42994 rules!1920))))))

(declare-fun lt!128888 () Unit!5582)

(declare-fun lt!128884 () Unit!5582)

(assert (=> d!93163 (= lt!128888 lt!128884)))

(declare-fun lt!128886 () List!3993)

(declare-fun lt!128889 () List!3993)

(assert (=> d!93163 (isPrefix!427 lt!128886 lt!128889)))

(assert (=> d!93163 (= lt!128884 (lemmaIsPrefixRefl!233 lt!128886 lt!128889))))

(assert (=> d!93163 (= lt!128889 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))

(assert (=> d!93163 (= lt!128886 (list!1683 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))))))

(assert (=> d!93163 (rulesValidInductive!228 thiss!17480 rules!1920)))

(assert (=> d!93163 (= (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465)))) lt!128887)))

(assert (= (and d!93163 c!57799) b!303222))

(assert (= (and d!93163 (not c!57799)) b!303223))

(assert (= (or b!303222 b!303223) bm!17535))

(assert (= (and d!93163 res!137579) b!303224))

(assert (= (and b!303224 (not res!137576)) b!303228))

(assert (= (and b!303228 res!137575) b!303221))

(assert (= (and b!303224 res!137580) b!303227))

(assert (= (and b!303227 (not res!137578)) b!303226))

(assert (= (and b!303226 res!137577) b!303225))

(declare-fun m!404841 () Bool)

(assert (=> b!303226 m!404841))

(assert (=> b!303226 m!404595))

(declare-fun m!404843 () Bool)

(assert (=> b!303226 m!404843))

(assert (=> b!303226 m!404843))

(declare-fun m!404845 () Bool)

(assert (=> b!303226 m!404845))

(assert (=> b!303226 m!404845))

(declare-fun m!404847 () Bool)

(assert (=> b!303226 m!404847))

(declare-fun m!404849 () Bool)

(assert (=> b!303227 m!404849))

(assert (=> bm!17535 m!404595))

(declare-fun m!404851 () Bool)

(assert (=> bm!17535 m!404851))

(declare-fun m!404853 () Bool)

(assert (=> b!303225 m!404853))

(assert (=> b!303225 m!404841))

(assert (=> b!303225 m!404845))

(assert (=> b!303225 m!404847))

(assert (=> b!303225 m!404843))

(assert (=> b!303225 m!404845))

(assert (=> b!303225 m!404595))

(assert (=> b!303225 m!404843))

(assert (=> b!303221 m!404853))

(assert (=> b!303221 m!404841))

(assert (=> b!303221 m!404595))

(assert (=> b!303221 m!404843))

(assert (=> b!303221 m!404843))

(declare-fun m!404855 () Bool)

(assert (=> b!303221 m!404855))

(assert (=> b!303221 m!404855))

(declare-fun m!404857 () Bool)

(assert (=> b!303221 m!404857))

(assert (=> d!93163 m!404855))

(declare-fun m!404859 () Bool)

(assert (=> d!93163 m!404859))

(assert (=> d!93163 m!404843))

(assert (=> d!93163 m!404855))

(assert (=> d!93163 m!404595))

(assert (=> d!93163 m!404843))

(assert (=> d!93163 m!404849))

(declare-fun m!404861 () Bool)

(assert (=> d!93163 m!404861))

(assert (=> d!93163 m!404693))

(declare-fun m!404863 () Bool)

(assert (=> d!93163 m!404863))

(assert (=> b!303224 m!404849))

(assert (=> b!303223 m!404595))

(declare-fun m!404865 () Bool)

(assert (=> b!303223 m!404865))

(assert (=> b!303228 m!404841))

(assert (=> b!303228 m!404595))

(assert (=> b!303228 m!404843))

(assert (=> b!303228 m!404843))

(assert (=> b!303228 m!404855))

(assert (=> b!303228 m!404855))

(assert (=> b!303228 m!404857))

(assert (=> b!303023 d!93163))

(declare-fun d!93165 () Bool)

(declare-fun fromListB!374 (List!3993) BalanceConc!2704)

(assert (=> d!93165 (= (seqFromList!891 (originalCharacters!806 (h!9382 tokens!465))) (fromListB!374 (originalCharacters!806 (h!9382 tokens!465))))))

(declare-fun bs!35138 () Bool)

(assert (= bs!35138 d!93165))

(declare-fun m!404867 () Bool)

(assert (=> bs!35138 m!404867))

(assert (=> b!303023 d!93165))

(declare-fun d!93167 () Bool)

(declare-fun dynLambda!2158 (Int Token!1270) Bool)

(assert (=> d!93167 (dynLambda!2158 lambda!10272 (h!9382 tokens!465))))

(declare-fun lt!128904 () Unit!5582)

(declare-fun choose!2669 (List!3995 Int Token!1270) Unit!5582)

(assert (=> d!93167 (= lt!128904 (choose!2669 tokens!465 lambda!10272 (h!9382 tokens!465)))))

(declare-fun e!188219 () Bool)

(assert (=> d!93167 e!188219))

(declare-fun res!137583 () Bool)

(assert (=> d!93167 (=> (not res!137583) (not e!188219))))

(assert (=> d!93167 (= res!137583 (forall!1048 tokens!465 lambda!10272))))

(assert (=> d!93167 (= (forallContained!316 tokens!465 lambda!10272 (h!9382 tokens!465)) lt!128904)))

(declare-fun b!303247 () Bool)

(declare-fun contains!792 (List!3995 Token!1270) Bool)

(assert (=> b!303247 (= e!188219 (contains!792 tokens!465 (h!9382 tokens!465)))))

(assert (= (and d!93167 res!137583) b!303247))

(declare-fun b_lambda!10527 () Bool)

(assert (=> (not b_lambda!10527) (not d!93167)))

(declare-fun m!404869 () Bool)

(assert (=> d!93167 m!404869))

(declare-fun m!404871 () Bool)

(assert (=> d!93167 m!404871))

(declare-fun m!404873 () Bool)

(assert (=> d!93167 m!404873))

(declare-fun m!404875 () Bool)

(assert (=> b!303247 m!404875))

(assert (=> b!303023 d!93167))

(declare-fun bs!35141 () Bool)

(declare-fun d!93169 () Bool)

(assert (= bs!35141 (and d!93169 b!303004)))

(declare-fun lambda!10278 () Int)

(assert (=> bs!35141 (not (= lambda!10278 lambda!10271))))

(declare-fun bs!35142 () Bool)

(assert (= bs!35142 (and d!93169 b!303023)))

(assert (=> bs!35142 (= lambda!10278 lambda!10272)))

(declare-fun b!303277 () Bool)

(declare-fun e!188240 () Bool)

(assert (=> b!303277 (= e!188240 true)))

(declare-fun b!303276 () Bool)

(declare-fun e!188239 () Bool)

(assert (=> b!303276 (= e!188239 e!188240)))

(declare-fun b!303275 () Bool)

(declare-fun e!188238 () Bool)

(assert (=> b!303275 (= e!188238 e!188239)))

(assert (=> d!93169 e!188238))

(assert (= b!303276 b!303277))

(assert (= b!303275 b!303276))

(assert (= (and d!93169 ((_ is Cons!3984) rules!1920)) b!303275))

(assert (=> b!303277 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10278))))

(assert (=> b!303277 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10278))))

(assert (=> d!93169 true))

(declare-fun lt!128914 () Bool)

(assert (=> d!93169 (= lt!128914 (forall!1048 tokens!465 lambda!10278))))

(declare-fun e!188236 () Bool)

(assert (=> d!93169 (= lt!128914 e!188236)))

(declare-fun res!137591 () Bool)

(assert (=> d!93169 (=> res!137591 e!188236)))

(assert (=> d!93169 (= res!137591 (not ((_ is Cons!3985) tokens!465)))))

(assert (=> d!93169 (not (isEmpty!2684 rules!1920))))

(assert (=> d!93169 (= (rulesProduceEachTokenIndividuallyList!257 thiss!17480 rules!1920 tokens!465) lt!128914)))

(declare-fun b!303273 () Bool)

(declare-fun e!188237 () Bool)

(assert (=> b!303273 (= e!188236 e!188237)))

(declare-fun res!137590 () Bool)

(assert (=> b!303273 (=> (not res!137590) (not e!188237))))

(assert (=> b!303273 (= res!137590 (rulesProduceIndividualToken!398 thiss!17480 rules!1920 (h!9382 tokens!465)))))

(declare-fun b!303274 () Bool)

(assert (=> b!303274 (= e!188237 (rulesProduceEachTokenIndividuallyList!257 thiss!17480 rules!1920 (t!42995 tokens!465)))))

(assert (= (and d!93169 (not res!137591)) b!303273))

(assert (= (and b!303273 res!137590) b!303274))

(declare-fun m!404915 () Bool)

(assert (=> d!93169 m!404915))

(assert (=> d!93169 m!404547))

(assert (=> b!303273 m!404549))

(declare-fun m!404917 () Bool)

(assert (=> b!303274 m!404917))

(assert (=> b!303002 d!93169))

(declare-fun d!93175 () Bool)

(declare-fun res!137596 () Bool)

(declare-fun e!188243 () Bool)

(assert (=> d!93175 (=> (not res!137596) (not e!188243))))

(assert (=> d!93175 (= res!137596 (not (isEmpty!2683 (originalCharacters!806 (h!9382 tokens!465)))))))

(assert (=> d!93175 (= (inv!4940 (h!9382 tokens!465)) e!188243)))

(declare-fun b!303282 () Bool)

(declare-fun res!137597 () Bool)

(assert (=> b!303282 (=> (not res!137597) (not e!188243))))

(declare-fun dynLambda!2159 (Int TokenValue!785) BalanceConc!2704)

(assert (=> b!303282 (= res!137597 (= (originalCharacters!806 (h!9382 tokens!465)) (list!1683 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (value!26061 (h!9382 tokens!465))))))))

(declare-fun b!303283 () Bool)

(assert (=> b!303283 (= e!188243 (= (size!3207 (h!9382 tokens!465)) (size!3209 (originalCharacters!806 (h!9382 tokens!465)))))))

(assert (= (and d!93175 res!137596) b!303282))

(assert (= (and b!303282 res!137597) b!303283))

(declare-fun b_lambda!10529 () Bool)

(assert (=> (not b_lambda!10529) (not b!303282)))

(declare-fun t!43008 () Bool)

(declare-fun tb!19231 () Bool)

(assert (=> (and b!303020 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465))))) t!43008) tb!19231))

(declare-fun b!303288 () Bool)

(declare-fun e!188246 () Bool)

(declare-fun tp!107913 () Bool)

(declare-fun inv!4944 (Conc!1348) Bool)

(assert (=> b!303288 (= e!188246 (and (inv!4944 (c!57762 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (value!26061 (h!9382 tokens!465))))) tp!107913))))

(declare-fun result!23156 () Bool)

(declare-fun inv!4945 (BalanceConc!2704) Bool)

(assert (=> tb!19231 (= result!23156 (and (inv!4945 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (value!26061 (h!9382 tokens!465)))) e!188246))))

(assert (= tb!19231 b!303288))

(declare-fun m!404919 () Bool)

(assert (=> b!303288 m!404919))

(declare-fun m!404921 () Bool)

(assert (=> tb!19231 m!404921))

(assert (=> b!303282 t!43008))

(declare-fun b_and!25575 () Bool)

(assert (= b_and!25559 (and (=> t!43008 result!23156) b_and!25575)))

(declare-fun t!43010 () Bool)

(declare-fun tb!19233 () Bool)

(assert (=> (and b!303018 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465))))) t!43010) tb!19233))

(declare-fun result!23160 () Bool)

(assert (= result!23160 result!23156))

(assert (=> b!303282 t!43010))

(declare-fun b_and!25577 () Bool)

(assert (= b_and!25563 (and (=> t!43010 result!23160) b_and!25577)))

(declare-fun t!43012 () Bool)

(declare-fun tb!19235 () Bool)

(assert (=> (and b!302996 (= (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465))))) t!43012) tb!19235))

(declare-fun result!23162 () Bool)

(assert (= result!23162 result!23156))

(assert (=> b!303282 t!43012))

(declare-fun b_and!25579 () Bool)

(assert (= b_and!25567 (and (=> t!43012 result!23162) b_and!25579)))

(declare-fun m!404923 () Bool)

(assert (=> d!93175 m!404923))

(declare-fun m!404925 () Bool)

(assert (=> b!303282 m!404925))

(assert (=> b!303282 m!404925))

(declare-fun m!404927 () Bool)

(assert (=> b!303282 m!404927))

(declare-fun m!404929 () Bool)

(assert (=> b!303283 m!404929))

(assert (=> b!303024 d!93175))

(declare-fun d!93177 () Bool)

(assert (=> d!93177 (= (list!1683 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 lt!128785 separatorToken!170 0)) (list!1686 (c!57762 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 lt!128785 separatorToken!170 0))))))

(declare-fun bs!35143 () Bool)

(assert (= bs!35143 d!93177))

(declare-fun m!404931 () Bool)

(assert (=> bs!35143 m!404931))

(assert (=> b!303003 d!93177))

(declare-fun bs!35153 () Bool)

(declare-fun d!93179 () Bool)

(assert (= bs!35153 (and d!93179 b!303004)))

(declare-fun lambda!10289 () Int)

(assert (=> bs!35153 (= lambda!10289 lambda!10271)))

(declare-fun bs!35154 () Bool)

(assert (= bs!35154 (and d!93179 b!303023)))

(assert (=> bs!35154 (not (= lambda!10289 lambda!10272))))

(declare-fun bs!35155 () Bool)

(assert (= bs!35155 (and d!93179 d!93169)))

(assert (=> bs!35155 (not (= lambda!10289 lambda!10278))))

(declare-fun bs!35156 () Bool)

(declare-fun b!303362 () Bool)

(assert (= bs!35156 (and b!303362 b!303004)))

(declare-fun lambda!10290 () Int)

(assert (=> bs!35156 (not (= lambda!10290 lambda!10271))))

(declare-fun bs!35157 () Bool)

(assert (= bs!35157 (and b!303362 b!303023)))

(assert (=> bs!35157 (= lambda!10290 lambda!10272)))

(declare-fun bs!35158 () Bool)

(assert (= bs!35158 (and b!303362 d!93169)))

(assert (=> bs!35158 (= lambda!10290 lambda!10278)))

(declare-fun bs!35159 () Bool)

(assert (= bs!35159 (and b!303362 d!93179)))

(assert (=> bs!35159 (not (= lambda!10290 lambda!10289))))

(declare-fun b!303367 () Bool)

(declare-fun e!188298 () Bool)

(assert (=> b!303367 (= e!188298 true)))

(declare-fun b!303366 () Bool)

(declare-fun e!188297 () Bool)

(assert (=> b!303366 (= e!188297 e!188298)))

(declare-fun b!303365 () Bool)

(declare-fun e!188296 () Bool)

(assert (=> b!303365 (= e!188296 e!188297)))

(assert (=> b!303362 e!188296))

(assert (= b!303366 b!303367))

(assert (= b!303365 b!303366))

(assert (= (and b!303362 ((_ is Cons!3984) rules!1920)) b!303365))

(assert (=> b!303367 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10290))))

(assert (=> b!303367 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10290))))

(assert (=> b!303362 true))

(declare-fun b!303356 () Bool)

(declare-fun e!188292 () BalanceConc!2704)

(assert (=> b!303356 (= e!188292 (BalanceConc!2705 Empty!1348))))

(declare-fun call!17581 () Token!1270)

(assert (=> b!303356 (= (print!374 thiss!17480 (singletonSeq!309 call!17581)) (printTailRec!335 thiss!17480 (singletonSeq!309 call!17581) 0 (BalanceConc!2705 Empty!1348)))))

(declare-fun lt!129000 () Unit!5582)

(declare-fun Unit!5588 () Unit!5582)

(assert (=> b!303356 (= lt!129000 Unit!5588)))

(declare-fun call!17583 () BalanceConc!2704)

(declare-fun lt!129005 () Unit!5582)

(declare-fun lt!128995 () BalanceConc!2704)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!138 (LexerInterface!649 List!3994 List!3993 List!3993) Unit!5582)

(assert (=> b!303356 (= lt!129005 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!138 thiss!17480 rules!1920 (list!1683 call!17583) (list!1683 lt!128995)))))

(assert (=> b!303356 false))

(declare-fun lt!128997 () Unit!5582)

(declare-fun Unit!5589 () Unit!5582)

(assert (=> b!303356 (= lt!128997 Unit!5589)))

(declare-fun bm!17576 () Bool)

(declare-fun c!57838 () Bool)

(assert (=> bm!17576 (= call!17583 (charsOf!406 (ite c!57838 separatorToken!170 call!17581)))))

(declare-fun call!17585 () BalanceConc!2704)

(declare-fun call!17584 () BalanceConc!2704)

(declare-fun bm!17577 () Bool)

(declare-fun c!57839 () Bool)

(assert (=> bm!17577 (= call!17584 (++!1079 call!17585 (ite c!57839 lt!128995 call!17583)))))

(declare-fun b!303357 () Bool)

(declare-fun e!188293 () BalanceConc!2704)

(assert (=> b!303357 (= e!188293 call!17584)))

(declare-fun bm!17578 () Bool)

(declare-fun call!17582 () Token!1270)

(assert (=> bm!17578 (= call!17582 (apply!872 lt!128785 0))))

(declare-fun b!303358 () Bool)

(declare-fun e!188294 () Bool)

(declare-fun lt!129008 () Option!893)

(assert (=> b!303358 (= e!188294 (= (_1!2503 (v!14879 lt!129008)) (apply!872 lt!128785 0)))))

(declare-fun b!303359 () Bool)

(declare-fun e!188295 () Bool)

(assert (=> b!303359 (= e!188295 (not (= (_1!2503 (v!14879 lt!129008)) call!17582)))))

(declare-fun b!303360 () Bool)

(declare-fun e!188291 () Bool)

(assert (=> b!303360 (= e!188291 (<= 0 (size!3210 lt!128785)))))

(declare-fun bm!17579 () Bool)

(assert (=> bm!17579 (= call!17581 call!17582)))

(declare-fun b!303361 () Bool)

(assert (=> b!303361 (= c!57838 e!188295)))

(declare-fun res!137621 () Bool)

(assert (=> b!303361 (=> (not res!137621) (not e!188295))))

(assert (=> b!303361 (= res!137621 ((_ is Some!892) lt!129008))))

(assert (=> b!303361 (= e!188293 e!188292)))

(declare-fun lt!129007 () BalanceConc!2704)

(assert (=> d!93179 (= (list!1683 lt!129007) (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (dropList!189 lt!128785 0) separatorToken!170))))

(declare-fun e!188290 () BalanceConc!2704)

(assert (=> d!93179 (= lt!129007 e!188290)))

(declare-fun c!57837 () Bool)

(assert (=> d!93179 (= c!57837 (>= 0 (size!3210 lt!128785)))))

(declare-fun lt!128998 () Unit!5582)

(declare-fun lemmaContentSubsetPreservesForall!134 (List!3995 List!3995 Int) Unit!5582)

(assert (=> d!93179 (= lt!128998 (lemmaContentSubsetPreservesForall!134 (list!1685 lt!128785) (dropList!189 lt!128785 0) lambda!10289))))

(assert (=> d!93179 e!188291))

(declare-fun res!137619 () Bool)

(assert (=> d!93179 (=> (not res!137619) (not e!188291))))

(assert (=> d!93179 (= res!137619 (>= 0 0))))

(assert (=> d!93179 (= (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 lt!128785 separatorToken!170 0) lt!129007)))

(assert (=> b!303362 (= e!188290 e!188293)))

(declare-fun lt!128999 () List!3995)

(assert (=> b!303362 (= lt!128999 (list!1685 lt!128785))))

(declare-fun lt!129006 () Unit!5582)

(assert (=> b!303362 (= lt!129006 (lemmaDropApply!229 lt!128999 0))))

(assert (=> b!303362 (= (head!945 (drop!244 lt!128999 0)) (apply!873 lt!128999 0))))

(declare-fun lt!128996 () Unit!5582)

(assert (=> b!303362 (= lt!128996 lt!129006)))

(declare-fun lt!129004 () List!3995)

(assert (=> b!303362 (= lt!129004 (list!1685 lt!128785))))

(declare-fun lt!129001 () Unit!5582)

(assert (=> b!303362 (= lt!129001 (lemmaDropTail!221 lt!129004 0))))

(assert (=> b!303362 (= (tail!527 (drop!244 lt!129004 0)) (drop!244 lt!129004 (+ 0 1)))))

(declare-fun lt!129003 () Unit!5582)

(assert (=> b!303362 (= lt!129003 lt!129001)))

(declare-fun lt!129002 () Unit!5582)

(assert (=> b!303362 (= lt!129002 (forallContained!316 (list!1685 lt!128785) lambda!10290 (apply!872 lt!128785 0)))))

(assert (=> b!303362 (= lt!128995 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 lt!128785 separatorToken!170 (+ 0 1)))))

(assert (=> b!303362 (= lt!129008 (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (++!1079 (charsOf!406 (apply!872 lt!128785 0)) lt!128995)))))

(declare-fun res!137620 () Bool)

(assert (=> b!303362 (= res!137620 ((_ is Some!892) lt!129008))))

(assert (=> b!303362 (=> (not res!137620) (not e!188294))))

(assert (=> b!303362 (= c!57839 e!188294)))

(declare-fun bm!17580 () Bool)

(assert (=> bm!17580 (= call!17585 (charsOf!406 (ite c!57839 call!17582 call!17581)))))

(declare-fun b!303363 () Bool)

(assert (=> b!303363 (= e!188290 (BalanceConc!2705 Empty!1348))))

(declare-fun b!303364 () Bool)

(assert (=> b!303364 (= e!188292 (++!1079 call!17584 lt!128995))))

(assert (= (and d!93179 res!137619) b!303360))

(assert (= (and d!93179 c!57837) b!303363))

(assert (= (and d!93179 (not c!57837)) b!303362))

(assert (= (and b!303362 res!137620) b!303358))

(assert (= (and b!303362 c!57839) b!303357))

(assert (= (and b!303362 (not c!57839)) b!303361))

(assert (= (and b!303361 res!137621) b!303359))

(assert (= (and b!303361 c!57838) b!303364))

(assert (= (and b!303361 (not c!57838)) b!303356))

(assert (= (or b!303364 b!303356) bm!17579))

(assert (= (or b!303364 b!303356) bm!17576))

(assert (= (or b!303357 b!303359 bm!17579) bm!17578))

(assert (= (or b!303357 b!303364) bm!17580))

(assert (= (or b!303357 b!303364) bm!17577))

(declare-fun m!405035 () Bool)

(assert (=> bm!17576 m!405035))

(declare-fun m!405037 () Bool)

(assert (=> bm!17578 m!405037))

(declare-fun m!405039 () Bool)

(assert (=> d!93179 m!405039))

(declare-fun m!405041 () Bool)

(assert (=> d!93179 m!405041))

(declare-fun m!405043 () Bool)

(assert (=> d!93179 m!405043))

(declare-fun m!405045 () Bool)

(assert (=> d!93179 m!405045))

(assert (=> d!93179 m!405041))

(declare-fun m!405047 () Bool)

(assert (=> d!93179 m!405047))

(declare-fun m!405049 () Bool)

(assert (=> d!93179 m!405049))

(assert (=> d!93179 m!405039))

(assert (=> d!93179 m!405041))

(declare-fun m!405051 () Bool)

(assert (=> bm!17577 m!405051))

(declare-fun m!405053 () Bool)

(assert (=> bm!17580 m!405053))

(declare-fun m!405055 () Bool)

(assert (=> b!303356 m!405055))

(declare-fun m!405057 () Bool)

(assert (=> b!303356 m!405057))

(declare-fun m!405059 () Bool)

(assert (=> b!303356 m!405059))

(declare-fun m!405061 () Bool)

(assert (=> b!303356 m!405061))

(assert (=> b!303356 m!405055))

(declare-fun m!405063 () Bool)

(assert (=> b!303356 m!405063))

(assert (=> b!303356 m!405057))

(assert (=> b!303356 m!405061))

(assert (=> b!303356 m!405057))

(declare-fun m!405065 () Bool)

(assert (=> b!303356 m!405065))

(declare-fun m!405067 () Bool)

(assert (=> b!303364 m!405067))

(declare-fun m!405069 () Bool)

(assert (=> b!303362 m!405069))

(declare-fun m!405071 () Bool)

(assert (=> b!303362 m!405071))

(declare-fun m!405073 () Bool)

(assert (=> b!303362 m!405073))

(declare-fun m!405075 () Bool)

(assert (=> b!303362 m!405075))

(declare-fun m!405077 () Bool)

(assert (=> b!303362 m!405077))

(declare-fun m!405079 () Bool)

(assert (=> b!303362 m!405079))

(declare-fun m!405081 () Bool)

(assert (=> b!303362 m!405081))

(declare-fun m!405083 () Bool)

(assert (=> b!303362 m!405083))

(assert (=> b!303362 m!405037))

(assert (=> b!303362 m!405039))

(declare-fun m!405085 () Bool)

(assert (=> b!303362 m!405085))

(assert (=> b!303362 m!405069))

(assert (=> b!303362 m!405075))

(declare-fun m!405087 () Bool)

(assert (=> b!303362 m!405087))

(declare-fun m!405089 () Bool)

(assert (=> b!303362 m!405089))

(assert (=> b!303362 m!405077))

(declare-fun m!405091 () Bool)

(assert (=> b!303362 m!405091))

(assert (=> b!303362 m!405037))

(assert (=> b!303362 m!405073))

(assert (=> b!303362 m!405039))

(assert (=> b!303362 m!405037))

(declare-fun m!405093 () Bool)

(assert (=> b!303362 m!405093))

(assert (=> b!303360 m!405049))

(assert (=> b!303358 m!405037))

(assert (=> b!303003 d!93179))

(declare-fun bs!35168 () Bool)

(declare-fun b!303414 () Bool)

(assert (= bs!35168 (and b!303414 b!303023)))

(declare-fun lambda!10298 () Int)

(assert (=> bs!35168 (= lambda!10298 lambda!10272)))

(declare-fun bs!35169 () Bool)

(assert (= bs!35169 (and b!303414 d!93179)))

(assert (=> bs!35169 (not (= lambda!10298 lambda!10289))))

(declare-fun bs!35170 () Bool)

(assert (= bs!35170 (and b!303414 b!303362)))

(assert (=> bs!35170 (= lambda!10298 lambda!10290)))

(declare-fun bs!35171 () Bool)

(assert (= bs!35171 (and b!303414 b!303004)))

(assert (=> bs!35171 (not (= lambda!10298 lambda!10271))))

(declare-fun bs!35172 () Bool)

(assert (= bs!35172 (and b!303414 d!93169)))

(assert (=> bs!35172 (= lambda!10298 lambda!10278)))

(declare-fun b!303421 () Bool)

(declare-fun e!188331 () Bool)

(assert (=> b!303421 (= e!188331 true)))

(declare-fun b!303420 () Bool)

(declare-fun e!188330 () Bool)

(assert (=> b!303420 (= e!188330 e!188331)))

(declare-fun b!303419 () Bool)

(declare-fun e!188329 () Bool)

(assert (=> b!303419 (= e!188329 e!188330)))

(assert (=> b!303414 e!188329))

(assert (= b!303420 b!303421))

(assert (= b!303419 b!303420))

(assert (= (and b!303414 ((_ is Cons!3984) rules!1920)) b!303419))

(assert (=> b!303421 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10298))))

(assert (=> b!303421 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10298))))

(assert (=> b!303414 true))

(declare-fun b!303409 () Bool)

(declare-fun e!188328 () List!3993)

(assert (=> b!303409 (= e!188328 Nil!3983)))

(declare-fun b!303410 () Bool)

(declare-fun c!57854 () Bool)

(declare-fun lt!129033 () Option!892)

(assert (=> b!303410 (= c!57854 (and ((_ is Some!891) lt!129033) (not (= (_1!2501 (v!14878 lt!129033)) (h!9382 tokens!465)))))))

(declare-fun e!188327 () List!3993)

(declare-fun e!188325 () List!3993)

(assert (=> b!303410 (= e!188327 e!188325)))

(declare-fun b!303411 () Bool)

(declare-fun e!188324 () List!3993)

(declare-fun call!17599 () List!3993)

(assert (=> b!303411 (= e!188324 call!17599)))

(declare-fun bm!17591 () Bool)

(declare-fun call!17598 () BalanceConc!2704)

(assert (=> bm!17591 (= call!17598 (charsOf!406 (h!9382 tokens!465)))))

(declare-fun bm!17592 () Bool)

(declare-fun call!17597 () BalanceConc!2704)

(assert (=> bm!17592 (= call!17597 call!17598)))

(declare-fun e!188326 () BalanceConc!2704)

(declare-fun bm!17593 () Bool)

(declare-fun c!57857 () Bool)

(assert (=> bm!17593 (= call!17599 (list!1683 (ite c!57857 call!17598 e!188326)))))

(declare-fun b!303412 () Bool)

(declare-fun call!17600 () List!3993)

(assert (=> b!303412 (= e!188327 call!17600)))

(declare-fun d!93197 () Bool)

(declare-fun c!57856 () Bool)

(assert (=> d!93197 (= c!57856 ((_ is Cons!3985) tokens!465))))

(assert (=> d!93197 (= (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!188328)))

(declare-fun b!303413 () Bool)

(assert (=> b!303413 (= e!188326 (charsOf!406 separatorToken!170))))

(assert (=> b!303414 (= e!188328 e!188327)))

(declare-fun lt!129031 () Unit!5582)

(assert (=> b!303414 (= lt!129031 (forallContained!316 tokens!465 lambda!10298 (h!9382 tokens!465)))))

(declare-fun lt!129032 () List!3993)

(assert (=> b!303414 (= lt!129032 (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (t!42995 tokens!465) separatorToken!170))))

(assert (=> b!303414 (= lt!129033 (maxPrefix!365 thiss!17480 rules!1920 (++!1078 (list!1683 (charsOf!406 (h!9382 tokens!465))) lt!129032)))))

(assert (=> b!303414 (= c!57857 (and ((_ is Some!891) lt!129033) (= (_1!2501 (v!14878 lt!129033)) (h!9382 tokens!465))))))

(declare-fun b!303415 () Bool)

(assert (=> b!303415 (= e!188326 call!17597)))

(declare-fun bm!17594 () Bool)

(declare-fun call!17596 () List!3993)

(assert (=> bm!17594 (= call!17596 call!17599)))

(declare-fun c!57853 () Bool)

(assert (=> bm!17594 (= c!57853 c!57854)))

(declare-fun b!303416 () Bool)

(assert (=> b!303416 (= e!188325 Nil!3983)))

(assert (=> b!303416 (= (print!374 thiss!17480 (singletonSeq!309 (h!9382 tokens!465))) (printTailRec!335 thiss!17480 (singletonSeq!309 (h!9382 tokens!465)) 0 (BalanceConc!2705 Empty!1348)))))

(declare-fun lt!129034 () Unit!5582)

(declare-fun Unit!5590 () Unit!5582)

(assert (=> b!303416 (= lt!129034 Unit!5590)))

(declare-fun lt!129030 () Unit!5582)

(assert (=> b!303416 (= lt!129030 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!138 thiss!17480 rules!1920 call!17596 lt!129032))))

(assert (=> b!303416 false))

(declare-fun lt!129035 () Unit!5582)

(declare-fun Unit!5591 () Unit!5582)

(assert (=> b!303416 (= lt!129035 Unit!5591)))

(declare-fun b!303417 () Bool)

(assert (=> b!303417 (= e!188324 (list!1683 call!17597))))

(declare-fun b!303418 () Bool)

(assert (=> b!303418 (= e!188325 (++!1078 call!17600 lt!129032))))

(declare-fun bm!17595 () Bool)

(declare-fun c!57855 () Bool)

(assert (=> bm!17595 (= c!57855 c!57857)))

(assert (=> bm!17595 (= call!17600 (++!1078 e!188324 (ite c!57857 lt!129032 call!17596)))))

(assert (= (and d!93197 c!57856) b!303414))

(assert (= (and d!93197 (not c!57856)) b!303409))

(assert (= (and b!303414 c!57857) b!303412))

(assert (= (and b!303414 (not c!57857)) b!303410))

(assert (= (and b!303410 c!57854) b!303418))

(assert (= (and b!303410 (not c!57854)) b!303416))

(assert (= (or b!303418 b!303416) bm!17592))

(assert (= (or b!303418 b!303416) bm!17594))

(assert (= (and bm!17594 c!57853) b!303413))

(assert (= (and bm!17594 (not c!57853)) b!303415))

(assert (= (or b!303412 bm!17592) bm!17591))

(assert (= (or b!303412 bm!17594) bm!17593))

(assert (= (or b!303412 b!303418) bm!17595))

(assert (= (and bm!17595 c!57855) b!303411))

(assert (= (and bm!17595 (not c!57855)) b!303417))

(declare-fun m!405131 () Bool)

(assert (=> b!303418 m!405131))

(declare-fun m!405133 () Bool)

(assert (=> bm!17593 m!405133))

(declare-fun m!405135 () Bool)

(assert (=> b!303417 m!405135))

(assert (=> b!303416 m!404619))

(assert (=> b!303416 m!404619))

(declare-fun m!405137 () Bool)

(assert (=> b!303416 m!405137))

(assert (=> b!303416 m!404619))

(declare-fun m!405139 () Bool)

(assert (=> b!303416 m!405139))

(declare-fun m!405141 () Bool)

(assert (=> b!303416 m!405141))

(declare-fun m!405143 () Bool)

(assert (=> bm!17595 m!405143))

(assert (=> b!303414 m!404569))

(assert (=> b!303414 m!404575))

(declare-fun m!405145 () Bool)

(assert (=> b!303414 m!405145))

(assert (=> b!303414 m!404569))

(assert (=> b!303414 m!404575))

(assert (=> b!303414 m!405145))

(declare-fun m!405147 () Bool)

(assert (=> b!303414 m!405147))

(declare-fun m!405149 () Bool)

(assert (=> b!303414 m!405149))

(assert (=> b!303414 m!404573))

(assert (=> bm!17591 m!404569))

(assert (=> b!303413 m!404557))

(assert (=> b!303003 d!93197))

(declare-fun d!93211 () Bool)

(declare-fun res!137638 () Bool)

(declare-fun e!188336 () Bool)

(assert (=> d!93211 (=> res!137638 e!188336)))

(assert (=> d!93211 (= res!137638 ((_ is Nil!3985) tokens!465))))

(assert (=> d!93211 (= (forall!1048 tokens!465 lambda!10271) e!188336)))

(declare-fun b!303426 () Bool)

(declare-fun e!188337 () Bool)

(assert (=> b!303426 (= e!188336 e!188337)))

(declare-fun res!137639 () Bool)

(assert (=> b!303426 (=> (not res!137639) (not e!188337))))

(assert (=> b!303426 (= res!137639 (dynLambda!2158 lambda!10271 (h!9382 tokens!465)))))

(declare-fun b!303427 () Bool)

(assert (=> b!303427 (= e!188337 (forall!1048 (t!42995 tokens!465) lambda!10271))))

(assert (= (and d!93211 (not res!137638)) b!303426))

(assert (= (and b!303426 res!137639) b!303427))

(declare-fun b_lambda!10535 () Bool)

(assert (=> (not b_lambda!10535) (not b!303426)))

(declare-fun m!405151 () Bool)

(assert (=> b!303426 m!405151))

(declare-fun m!405153 () Bool)

(assert (=> b!303427 m!405153))

(assert (=> b!303004 d!93211))

(declare-fun d!93213 () Bool)

(declare-fun res!137640 () Bool)

(declare-fun e!188338 () Bool)

(assert (=> d!93213 (=> (not res!137640) (not e!188338))))

(assert (=> d!93213 (= res!137640 (not (isEmpty!2683 (originalCharacters!806 separatorToken!170))))))

(assert (=> d!93213 (= (inv!4940 separatorToken!170) e!188338)))

(declare-fun b!303428 () Bool)

(declare-fun res!137641 () Bool)

(assert (=> b!303428 (=> (not res!137641) (not e!188338))))

(assert (=> b!303428 (= res!137641 (= (originalCharacters!806 separatorToken!170) (list!1683 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (value!26061 separatorToken!170)))))))

(declare-fun b!303429 () Bool)

(assert (=> b!303429 (= e!188338 (= (size!3207 separatorToken!170) (size!3209 (originalCharacters!806 separatorToken!170))))))

(assert (= (and d!93213 res!137640) b!303428))

(assert (= (and b!303428 res!137641) b!303429))

(declare-fun b_lambda!10537 () Bool)

(assert (=> (not b_lambda!10537) (not b!303428)))

(declare-fun t!43034 () Bool)

(declare-fun tb!19243 () Bool)

(assert (=> (and b!303020 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170)))) t!43034) tb!19243))

(declare-fun b!303430 () Bool)

(declare-fun e!188339 () Bool)

(declare-fun tp!107915 () Bool)

(assert (=> b!303430 (= e!188339 (and (inv!4944 (c!57762 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (value!26061 separatorToken!170)))) tp!107915))))

(declare-fun result!23170 () Bool)

(assert (=> tb!19243 (= result!23170 (and (inv!4945 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (value!26061 separatorToken!170))) e!188339))))

(assert (= tb!19243 b!303430))

(declare-fun m!405155 () Bool)

(assert (=> b!303430 m!405155))

(declare-fun m!405157 () Bool)

(assert (=> tb!19243 m!405157))

(assert (=> b!303428 t!43034))

(declare-fun b_and!25593 () Bool)

(assert (= b_and!25575 (and (=> t!43034 result!23170) b_and!25593)))

(declare-fun t!43036 () Bool)

(declare-fun tb!19245 () Bool)

(assert (=> (and b!303018 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170)))) t!43036) tb!19245))

(declare-fun result!23172 () Bool)

(assert (= result!23172 result!23170))

(assert (=> b!303428 t!43036))

(declare-fun b_and!25595 () Bool)

(assert (= b_and!25577 (and (=> t!43036 result!23172) b_and!25595)))

(declare-fun t!43038 () Bool)

(declare-fun tb!19247 () Bool)

(assert (=> (and b!302996 (= (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170)))) t!43038) tb!19247))

(declare-fun result!23174 () Bool)

(assert (= result!23174 result!23170))

(assert (=> b!303428 t!43038))

(declare-fun b_and!25597 () Bool)

(assert (= b_and!25579 (and (=> t!43038 result!23174) b_and!25597)))

(declare-fun m!405159 () Bool)

(assert (=> d!93213 m!405159))

(declare-fun m!405161 () Bool)

(assert (=> b!303428 m!405161))

(assert (=> b!303428 m!405161))

(declare-fun m!405163 () Bool)

(assert (=> b!303428 m!405163))

(declare-fun m!405165 () Bool)

(assert (=> b!303429 m!405165))

(assert (=> start!32618 d!93213))

(declare-fun b!303441 () Bool)

(declare-fun e!188348 () Bool)

(declare-fun inv!15 (TokenValue!785) Bool)

(assert (=> b!303441 (= e!188348 (inv!15 (value!26061 (h!9382 tokens!465))))))

(declare-fun b!303442 () Bool)

(declare-fun e!188347 () Bool)

(declare-fun inv!16 (TokenValue!785) Bool)

(assert (=> b!303442 (= e!188347 (inv!16 (value!26061 (h!9382 tokens!465))))))

(declare-fun d!93215 () Bool)

(declare-fun c!57863 () Bool)

(assert (=> d!93215 (= c!57863 ((_ is IntegerValue!2355) (value!26061 (h!9382 tokens!465))))))

(assert (=> d!93215 (= (inv!21 (value!26061 (h!9382 tokens!465))) e!188347)))

(declare-fun b!303443 () Bool)

(declare-fun res!137644 () Bool)

(assert (=> b!303443 (=> res!137644 e!188348)))

(assert (=> b!303443 (= res!137644 (not ((_ is IntegerValue!2357) (value!26061 (h!9382 tokens!465)))))))

(declare-fun e!188346 () Bool)

(assert (=> b!303443 (= e!188346 e!188348)))

(declare-fun b!303444 () Bool)

(declare-fun inv!17 (TokenValue!785) Bool)

(assert (=> b!303444 (= e!188346 (inv!17 (value!26061 (h!9382 tokens!465))))))

(declare-fun b!303445 () Bool)

(assert (=> b!303445 (= e!188347 e!188346)))

(declare-fun c!57862 () Bool)

(assert (=> b!303445 (= c!57862 ((_ is IntegerValue!2356) (value!26061 (h!9382 tokens!465))))))

(assert (= (and d!93215 c!57863) b!303442))

(assert (= (and d!93215 (not c!57863)) b!303445))

(assert (= (and b!303445 c!57862) b!303444))

(assert (= (and b!303445 (not c!57862)) b!303443))

(assert (= (and b!303443 (not res!137644)) b!303441))

(declare-fun m!405167 () Bool)

(assert (=> b!303441 m!405167))

(declare-fun m!405169 () Bool)

(assert (=> b!303442 m!405169))

(declare-fun m!405171 () Bool)

(assert (=> b!303444 m!405171))

(assert (=> b!303005 d!93215))

(declare-fun lt!129038 () Bool)

(declare-fun d!93217 () Bool)

(declare-fun isEmpty!2691 (List!3995) Bool)

(assert (=> d!93217 (= lt!129038 (isEmpty!2691 (list!1685 (_1!2502 (lex!441 thiss!17480 rules!1920 (seqFromList!891 lt!128781))))))))

(declare-fun isEmpty!2692 (Conc!1349) Bool)

(assert (=> d!93217 (= lt!129038 (isEmpty!2692 (c!57764 (_1!2502 (lex!441 thiss!17480 rules!1920 (seqFromList!891 lt!128781))))))))

(assert (=> d!93217 (= (isEmpty!2682 (_1!2502 (lex!441 thiss!17480 rules!1920 (seqFromList!891 lt!128781)))) lt!129038)))

(declare-fun bs!35173 () Bool)

(assert (= bs!35173 d!93217))

(declare-fun m!405173 () Bool)

(assert (=> bs!35173 m!405173))

(assert (=> bs!35173 m!405173))

(declare-fun m!405175 () Bool)

(assert (=> bs!35173 m!405175))

(declare-fun m!405177 () Bool)

(assert (=> bs!35173 m!405177))

(assert (=> b!303006 d!93217))

(declare-fun b!303492 () Bool)

(declare-fun e!188379 () Bool)

(declare-fun lt!129067 () tuple2!4572)

(assert (=> b!303492 (= e!188379 (= (_2!2502 lt!129067) (seqFromList!891 lt!128781)))))

(declare-fun b!303493 () Bool)

(declare-fun res!137664 () Bool)

(declare-fun e!188380 () Bool)

(assert (=> b!303493 (=> (not res!137664) (not e!188380))))

(declare-datatypes ((tuple2!4578 0))(
  ( (tuple2!4579 (_1!2505 List!3995) (_2!2505 List!3993)) )
))
(declare-fun lexList!235 (LexerInterface!649 List!3994 List!3993) tuple2!4578)

(assert (=> b!303493 (= res!137664 (= (list!1685 (_1!2502 lt!129067)) (_1!2505 (lexList!235 thiss!17480 rules!1920 (list!1683 (seqFromList!891 lt!128781))))))))

(declare-fun b!303494 () Bool)

(declare-fun e!188381 () Bool)

(assert (=> b!303494 (= e!188379 e!188381)))

(declare-fun res!137665 () Bool)

(declare-fun size!3213 (BalanceConc!2704) Int)

(assert (=> b!303494 (= res!137665 (< (size!3213 (_2!2502 lt!129067)) (size!3213 (seqFromList!891 lt!128781))))))

(assert (=> b!303494 (=> (not res!137665) (not e!188381))))

(declare-fun b!303495 () Bool)

(assert (=> b!303495 (= e!188380 (= (list!1683 (_2!2502 lt!129067)) (_2!2505 (lexList!235 thiss!17480 rules!1920 (list!1683 (seqFromList!891 lt!128781))))))))

(declare-fun d!93219 () Bool)

(assert (=> d!93219 e!188380))

(declare-fun res!137663 () Bool)

(assert (=> d!93219 (=> (not res!137663) (not e!188380))))

(assert (=> d!93219 (= res!137663 e!188379)))

(declare-fun c!57875 () Bool)

(assert (=> d!93219 (= c!57875 (> (size!3210 (_1!2502 lt!129067)) 0))))

(declare-fun lexTailRecV2!202 (LexerInterface!649 List!3994 BalanceConc!2704 BalanceConc!2704 BalanceConc!2704 BalanceConc!2706) tuple2!4572)

(assert (=> d!93219 (= lt!129067 (lexTailRecV2!202 thiss!17480 rules!1920 (seqFromList!891 lt!128781) (BalanceConc!2705 Empty!1348) (seqFromList!891 lt!128781) (BalanceConc!2707 Empty!1349)))))

(assert (=> d!93219 (= (lex!441 thiss!17480 rules!1920 (seqFromList!891 lt!128781)) lt!129067)))

(declare-fun b!303496 () Bool)

(assert (=> b!303496 (= e!188381 (not (isEmpty!2682 (_1!2502 lt!129067))))))

(assert (= (and d!93219 c!57875) b!303494))

(assert (= (and d!93219 (not c!57875)) b!303492))

(assert (= (and b!303494 res!137665) b!303496))

(assert (= (and d!93219 res!137663) b!303493))

(assert (= (and b!303493 res!137664) b!303495))

(declare-fun m!405275 () Bool)

(assert (=> b!303495 m!405275))

(assert (=> b!303495 m!404621))

(declare-fun m!405277 () Bool)

(assert (=> b!303495 m!405277))

(assert (=> b!303495 m!405277))

(declare-fun m!405279 () Bool)

(assert (=> b!303495 m!405279))

(declare-fun m!405281 () Bool)

(assert (=> d!93219 m!405281))

(assert (=> d!93219 m!404621))

(assert (=> d!93219 m!404621))

(declare-fun m!405283 () Bool)

(assert (=> d!93219 m!405283))

(declare-fun m!405285 () Bool)

(assert (=> b!303496 m!405285))

(declare-fun m!405287 () Bool)

(assert (=> b!303493 m!405287))

(assert (=> b!303493 m!404621))

(assert (=> b!303493 m!405277))

(assert (=> b!303493 m!405277))

(assert (=> b!303493 m!405279))

(declare-fun m!405289 () Bool)

(assert (=> b!303494 m!405289))

(assert (=> b!303494 m!404621))

(declare-fun m!405291 () Bool)

(assert (=> b!303494 m!405291))

(assert (=> b!303006 d!93219))

(declare-fun d!93233 () Bool)

(assert (=> d!93233 (= (seqFromList!891 lt!128781) (fromListB!374 lt!128781))))

(declare-fun bs!35197 () Bool)

(assert (= bs!35197 d!93233))

(declare-fun m!405293 () Bool)

(assert (=> bs!35197 m!405293))

(assert (=> b!303006 d!93233))

(declare-fun b!303497 () Bool)

(declare-fun e!188384 () Bool)

(assert (=> b!303497 (= e!188384 (inv!15 (value!26061 separatorToken!170)))))

(declare-fun b!303498 () Bool)

(declare-fun e!188383 () Bool)

(assert (=> b!303498 (= e!188383 (inv!16 (value!26061 separatorToken!170)))))

(declare-fun d!93235 () Bool)

(declare-fun c!57877 () Bool)

(assert (=> d!93235 (= c!57877 ((_ is IntegerValue!2355) (value!26061 separatorToken!170)))))

(assert (=> d!93235 (= (inv!21 (value!26061 separatorToken!170)) e!188383)))

(declare-fun b!303499 () Bool)

(declare-fun res!137666 () Bool)

(assert (=> b!303499 (=> res!137666 e!188384)))

(assert (=> b!303499 (= res!137666 (not ((_ is IntegerValue!2357) (value!26061 separatorToken!170))))))

(declare-fun e!188382 () Bool)

(assert (=> b!303499 (= e!188382 e!188384)))

(declare-fun b!303500 () Bool)

(assert (=> b!303500 (= e!188382 (inv!17 (value!26061 separatorToken!170)))))

(declare-fun b!303501 () Bool)

(assert (=> b!303501 (= e!188383 e!188382)))

(declare-fun c!57876 () Bool)

(assert (=> b!303501 (= c!57876 ((_ is IntegerValue!2356) (value!26061 separatorToken!170)))))

(assert (= (and d!93235 c!57877) b!303498))

(assert (= (and d!93235 (not c!57877)) b!303501))

(assert (= (and b!303501 c!57876) b!303500))

(assert (= (and b!303501 (not c!57876)) b!303499))

(assert (= (and b!303499 (not res!137666)) b!303497))

(declare-fun m!405295 () Bool)

(assert (=> b!303497 m!405295))

(declare-fun m!405297 () Bool)

(assert (=> b!303498 m!405297))

(declare-fun m!405299 () Bool)

(assert (=> b!303500 m!405299))

(assert (=> b!303007 d!93235))

(declare-fun d!93237 () Bool)

(assert (=> d!93237 (= (isEmpty!2683 (_2!2501 lt!128793)) ((_ is Nil!3983) (_2!2501 lt!128793)))))

(assert (=> b!303008 d!93237))

(declare-fun b!303528 () Bool)

(declare-fun e!188396 () List!3993)

(assert (=> b!303528 (= e!188396 lt!128786)))

(declare-fun d!93239 () Bool)

(declare-fun e!188395 () Bool)

(assert (=> d!93239 e!188395))

(declare-fun res!137685 () Bool)

(assert (=> d!93239 (=> (not res!137685) (not e!188395))))

(declare-fun lt!129080 () List!3993)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!601 (List!3993) (InoxSet C!2896))

(assert (=> d!93239 (= res!137685 (= (content!601 lt!129080) ((_ map or) (content!601 lt!128781) (content!601 lt!128786))))))

(assert (=> d!93239 (= lt!129080 e!188396)))

(declare-fun c!57882 () Bool)

(assert (=> d!93239 (= c!57882 ((_ is Nil!3983) lt!128781))))

(assert (=> d!93239 (= (++!1078 lt!128781 lt!128786) lt!129080)))

(declare-fun b!303529 () Bool)

(assert (=> b!303529 (= e!188396 (Cons!3983 (h!9380 lt!128781) (++!1078 (t!42993 lt!128781) lt!128786)))))

(declare-fun b!303531 () Bool)

(assert (=> b!303531 (= e!188395 (or (not (= lt!128786 Nil!3983)) (= lt!129080 lt!128781)))))

(declare-fun b!303530 () Bool)

(declare-fun res!137686 () Bool)

(assert (=> b!303530 (=> (not res!137686) (not e!188395))))

(assert (=> b!303530 (= res!137686 (= (size!3209 lt!129080) (+ (size!3209 lt!128781) (size!3209 lt!128786))))))

(assert (= (and d!93239 c!57882) b!303528))

(assert (= (and d!93239 (not c!57882)) b!303529))

(assert (= (and d!93239 res!137685) b!303530))

(assert (= (and b!303530 res!137686) b!303531))

(declare-fun m!405301 () Bool)

(assert (=> d!93239 m!405301))

(declare-fun m!405303 () Bool)

(assert (=> d!93239 m!405303))

(declare-fun m!405305 () Bool)

(assert (=> d!93239 m!405305))

(declare-fun m!405307 () Bool)

(assert (=> b!303529 m!405307))

(declare-fun m!405309 () Bool)

(assert (=> b!303530 m!405309))

(assert (=> b!303530 m!404701))

(declare-fun m!405311 () Bool)

(assert (=> b!303530 m!405311))

(assert (=> b!303009 d!93239))

(declare-fun d!93241 () Bool)

(declare-fun res!137689 () Bool)

(declare-fun e!188399 () Bool)

(assert (=> d!93241 (=> (not res!137689) (not e!188399))))

(declare-fun rulesValid!252 (LexerInterface!649 List!3994) Bool)

(assert (=> d!93241 (= res!137689 (rulesValid!252 thiss!17480 rules!1920))))

(assert (=> d!93241 (= (rulesInvariant!615 thiss!17480 rules!1920) e!188399)))

(declare-fun b!303534 () Bool)

(declare-datatypes ((List!3997 0))(
  ( (Nil!3987) (Cons!3987 (h!9384 String!5005) (t!43065 List!3997)) )
))
(declare-fun noDuplicateTag!252 (LexerInterface!649 List!3994 List!3997) Bool)

(assert (=> b!303534 (= e!188399 (noDuplicateTag!252 thiss!17480 rules!1920 Nil!3987))))

(assert (= (and d!93241 res!137689) b!303534))

(declare-fun m!405313 () Bool)

(assert (=> d!93241 m!405313))

(declare-fun m!405315 () Bool)

(assert (=> b!303534 m!405315))

(assert (=> b!303011 d!93241))

(declare-fun d!93243 () Bool)

(assert (=> d!93243 (= (inv!4937 (tag!981 (rule!1376 (h!9382 tokens!465)))) (= (mod (str.len (value!26060 (tag!981 (rule!1376 (h!9382 tokens!465))))) 2) 0))))

(assert (=> b!303012 d!93243))

(declare-fun d!93245 () Bool)

(declare-fun res!137690 () Bool)

(declare-fun e!188400 () Bool)

(assert (=> d!93245 (=> (not res!137690) (not e!188400))))

(assert (=> d!93245 (= res!137690 (semiInverseModEq!287 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toValue!1522 (transformation!763 (rule!1376 (h!9382 tokens!465))))))))

(assert (=> d!93245 (= (inv!4941 (transformation!763 (rule!1376 (h!9382 tokens!465)))) e!188400)))

(declare-fun b!303535 () Bool)

(assert (=> b!303535 (= e!188400 (equivClasses!270 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toValue!1522 (transformation!763 (rule!1376 (h!9382 tokens!465))))))))

(assert (= (and d!93245 res!137690) b!303535))

(declare-fun m!405317 () Bool)

(assert (=> d!93245 m!405317))

(declare-fun m!405319 () Bool)

(assert (=> b!303535 m!405319))

(assert (=> b!303012 d!93245))

(declare-fun d!93247 () Bool)

(declare-fun lt!129117 () Bool)

(declare-fun e!188420 () Bool)

(assert (=> d!93247 (= lt!129117 e!188420)))

(declare-fun res!137710 () Bool)

(assert (=> d!93247 (=> (not res!137710) (not e!188420))))

(assert (=> d!93247 (= res!137710 (= (list!1685 (_1!2502 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 separatorToken!170))))) (list!1685 (singletonSeq!309 separatorToken!170))))))

(declare-fun e!188421 () Bool)

(assert (=> d!93247 (= lt!129117 e!188421)))

(declare-fun res!137712 () Bool)

(assert (=> d!93247 (=> (not res!137712) (not e!188421))))

(declare-fun lt!129118 () tuple2!4572)

(assert (=> d!93247 (= res!137712 (= (size!3210 (_1!2502 lt!129118)) 1))))

(assert (=> d!93247 (= lt!129118 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 separatorToken!170))))))

(assert (=> d!93247 (not (isEmpty!2684 rules!1920))))

(assert (=> d!93247 (= (rulesProduceIndividualToken!398 thiss!17480 rules!1920 separatorToken!170) lt!129117)))

(declare-fun b!303569 () Bool)

(declare-fun res!137711 () Bool)

(assert (=> b!303569 (=> (not res!137711) (not e!188421))))

(assert (=> b!303569 (= res!137711 (= (apply!872 (_1!2502 lt!129118) 0) separatorToken!170))))

(declare-fun b!303570 () Bool)

(declare-fun isEmpty!2693 (BalanceConc!2704) Bool)

(assert (=> b!303570 (= e!188421 (isEmpty!2693 (_2!2502 lt!129118)))))

(declare-fun b!303571 () Bool)

(assert (=> b!303571 (= e!188420 (isEmpty!2693 (_2!2502 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 separatorToken!170))))))))

(assert (= (and d!93247 res!137712) b!303569))

(assert (= (and b!303569 res!137711) b!303570))

(assert (= (and d!93247 res!137710) b!303571))

(declare-fun m!405407 () Bool)

(assert (=> d!93247 m!405407))

(declare-fun m!405409 () Bool)

(assert (=> d!93247 m!405409))

(declare-fun m!405411 () Bool)

(assert (=> d!93247 m!405411))

(assert (=> d!93247 m!405407))

(assert (=> d!93247 m!405407))

(declare-fun m!405413 () Bool)

(assert (=> d!93247 m!405413))

(assert (=> d!93247 m!404547))

(declare-fun m!405415 () Bool)

(assert (=> d!93247 m!405415))

(assert (=> d!93247 m!405409))

(declare-fun m!405417 () Bool)

(assert (=> d!93247 m!405417))

(declare-fun m!405419 () Bool)

(assert (=> b!303569 m!405419))

(declare-fun m!405421 () Bool)

(assert (=> b!303570 m!405421))

(assert (=> b!303571 m!405407))

(assert (=> b!303571 m!405407))

(assert (=> b!303571 m!405409))

(assert (=> b!303571 m!405409))

(assert (=> b!303571 m!405417))

(declare-fun m!405423 () Bool)

(assert (=> b!303571 m!405423))

(assert (=> b!303013 d!93247))

(declare-fun d!93261 () Bool)

(assert (=> d!93261 (= (isEmpty!2684 rules!1920) ((_ is Nil!3984) rules!1920))))

(assert (=> b!303014 d!93261))

(declare-fun d!93263 () Bool)

(assert (=> d!93263 (= (++!1078 (++!1078 lt!128781 lt!128792) lt!128786) (++!1078 lt!128781 (++!1078 lt!128792 lt!128786)))))

(declare-fun lt!129121 () Unit!5582)

(declare-fun choose!2671 (List!3993 List!3993 List!3993) Unit!5582)

(assert (=> d!93263 (= lt!129121 (choose!2671 lt!128781 lt!128792 lt!128786))))

(assert (=> d!93263 (= (lemmaConcatAssociativity!470 lt!128781 lt!128792 lt!128786) lt!129121)))

(declare-fun bs!35200 () Bool)

(assert (= bs!35200 d!93263))

(declare-fun m!405425 () Bool)

(assert (=> bs!35200 m!405425))

(assert (=> bs!35200 m!404563))

(assert (=> bs!35200 m!404571))

(declare-fun m!405427 () Bool)

(assert (=> bs!35200 m!405427))

(assert (=> bs!35200 m!404563))

(assert (=> bs!35200 m!404567))

(assert (=> bs!35200 m!404571))

(assert (=> b!303015 d!93263))

(declare-fun d!93265 () Bool)

(declare-fun fromListB!375 (List!3995) BalanceConc!2706)

(assert (=> d!93265 (= (seqFromList!892 (t!42995 tokens!465)) (fromListB!375 (t!42995 tokens!465)))))

(declare-fun bs!35201 () Bool)

(assert (= bs!35201 d!93265))

(declare-fun m!405429 () Bool)

(assert (=> bs!35201 m!405429))

(assert (=> b!303015 d!93265))

(declare-fun d!93267 () Bool)

(assert (=> d!93267 (= (list!1683 (charsOf!406 separatorToken!170)) (list!1686 (c!57762 (charsOf!406 separatorToken!170))))))

(declare-fun bs!35202 () Bool)

(assert (= bs!35202 d!93267))

(declare-fun m!405431 () Bool)

(assert (=> bs!35202 m!405431))

(assert (=> b!303015 d!93267))

(declare-fun d!93269 () Bool)

(assert (=> d!93269 (= (list!1683 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 (seqFromList!892 (t!42995 tokens!465)) separatorToken!170 0)) (list!1686 (c!57762 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 (seqFromList!892 (t!42995 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!35203 () Bool)

(assert (= bs!35203 d!93269))

(declare-fun m!405433 () Bool)

(assert (=> bs!35203 m!405433))

(assert (=> b!303015 d!93269))

(declare-fun bs!35204 () Bool)

(declare-fun b!303577 () Bool)

(assert (= bs!35204 (and b!303577 b!303023)))

(declare-fun lambda!10302 () Int)

(assert (=> bs!35204 (= lambda!10302 lambda!10272)))

(declare-fun bs!35205 () Bool)

(assert (= bs!35205 (and b!303577 d!93179)))

(assert (=> bs!35205 (not (= lambda!10302 lambda!10289))))

(declare-fun bs!35206 () Bool)

(assert (= bs!35206 (and b!303577 b!303362)))

(assert (=> bs!35206 (= lambda!10302 lambda!10290)))

(declare-fun bs!35207 () Bool)

(assert (= bs!35207 (and b!303577 b!303004)))

(assert (=> bs!35207 (not (= lambda!10302 lambda!10271))))

(declare-fun bs!35208 () Bool)

(assert (= bs!35208 (and b!303577 b!303414)))

(assert (=> bs!35208 (= lambda!10302 lambda!10298)))

(declare-fun bs!35209 () Bool)

(assert (= bs!35209 (and b!303577 d!93169)))

(assert (=> bs!35209 (= lambda!10302 lambda!10278)))

(declare-fun b!303584 () Bool)

(declare-fun e!188429 () Bool)

(assert (=> b!303584 (= e!188429 true)))

(declare-fun b!303583 () Bool)

(declare-fun e!188428 () Bool)

(assert (=> b!303583 (= e!188428 e!188429)))

(declare-fun b!303582 () Bool)

(declare-fun e!188427 () Bool)

(assert (=> b!303582 (= e!188427 e!188428)))

(assert (=> b!303577 e!188427))

(assert (= b!303583 b!303584))

(assert (= b!303582 b!303583))

(assert (= (and b!303577 ((_ is Cons!3984) rules!1920)) b!303582))

(assert (=> b!303584 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10302))))

(assert (=> b!303584 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10302))))

(assert (=> b!303577 true))

(declare-fun b!303572 () Bool)

(declare-fun e!188426 () List!3993)

(assert (=> b!303572 (= e!188426 Nil!3983)))

(declare-fun b!303573 () Bool)

(declare-fun c!57891 () Bool)

(declare-fun lt!129125 () Option!892)

(assert (=> b!303573 (= c!57891 (and ((_ is Some!891) lt!129125) (not (= (_1!2501 (v!14878 lt!129125)) (h!9382 (t!42995 tokens!465))))))))

(declare-fun e!188425 () List!3993)

(declare-fun e!188423 () List!3993)

(assert (=> b!303573 (= e!188425 e!188423)))

(declare-fun b!303574 () Bool)

(declare-fun e!188422 () List!3993)

(declare-fun call!17617 () List!3993)

(assert (=> b!303574 (= e!188422 call!17617)))

(declare-fun bm!17609 () Bool)

(declare-fun call!17616 () BalanceConc!2704)

(assert (=> bm!17609 (= call!17616 (charsOf!406 (h!9382 (t!42995 tokens!465))))))

(declare-fun bm!17610 () Bool)

(declare-fun call!17615 () BalanceConc!2704)

(assert (=> bm!17610 (= call!17615 call!17616)))

(declare-fun bm!17611 () Bool)

(declare-fun e!188424 () BalanceConc!2704)

(declare-fun c!57894 () Bool)

(assert (=> bm!17611 (= call!17617 (list!1683 (ite c!57894 call!17616 e!188424)))))

(declare-fun b!303575 () Bool)

(declare-fun call!17618 () List!3993)

(assert (=> b!303575 (= e!188425 call!17618)))

(declare-fun d!93271 () Bool)

(declare-fun c!57893 () Bool)

(assert (=> d!93271 (= c!57893 ((_ is Cons!3985) (t!42995 tokens!465)))))

(assert (=> d!93271 (= (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (t!42995 tokens!465) separatorToken!170) e!188426)))

(declare-fun b!303576 () Bool)

(assert (=> b!303576 (= e!188424 (charsOf!406 separatorToken!170))))

(assert (=> b!303577 (= e!188426 e!188425)))

(declare-fun lt!129123 () Unit!5582)

(assert (=> b!303577 (= lt!129123 (forallContained!316 (t!42995 tokens!465) lambda!10302 (h!9382 (t!42995 tokens!465))))))

(declare-fun lt!129124 () List!3993)

(assert (=> b!303577 (= lt!129124 (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (t!42995 (t!42995 tokens!465)) separatorToken!170))))

(assert (=> b!303577 (= lt!129125 (maxPrefix!365 thiss!17480 rules!1920 (++!1078 (list!1683 (charsOf!406 (h!9382 (t!42995 tokens!465)))) lt!129124)))))

(assert (=> b!303577 (= c!57894 (and ((_ is Some!891) lt!129125) (= (_1!2501 (v!14878 lt!129125)) (h!9382 (t!42995 tokens!465)))))))

(declare-fun b!303578 () Bool)

(assert (=> b!303578 (= e!188424 call!17615)))

(declare-fun bm!17612 () Bool)

(declare-fun call!17614 () List!3993)

(assert (=> bm!17612 (= call!17614 call!17617)))

(declare-fun c!57890 () Bool)

(assert (=> bm!17612 (= c!57890 c!57891)))

(declare-fun b!303579 () Bool)

(assert (=> b!303579 (= e!188423 Nil!3983)))

(assert (=> b!303579 (= (print!374 thiss!17480 (singletonSeq!309 (h!9382 (t!42995 tokens!465)))) (printTailRec!335 thiss!17480 (singletonSeq!309 (h!9382 (t!42995 tokens!465))) 0 (BalanceConc!2705 Empty!1348)))))

(declare-fun lt!129126 () Unit!5582)

(declare-fun Unit!5594 () Unit!5582)

(assert (=> b!303579 (= lt!129126 Unit!5594)))

(declare-fun lt!129122 () Unit!5582)

(assert (=> b!303579 (= lt!129122 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!138 thiss!17480 rules!1920 call!17614 lt!129124))))

(assert (=> b!303579 false))

(declare-fun lt!129127 () Unit!5582)

(declare-fun Unit!5595 () Unit!5582)

(assert (=> b!303579 (= lt!129127 Unit!5595)))

(declare-fun b!303580 () Bool)

(assert (=> b!303580 (= e!188422 (list!1683 call!17615))))

(declare-fun b!303581 () Bool)

(assert (=> b!303581 (= e!188423 (++!1078 call!17618 lt!129124))))

(declare-fun bm!17613 () Bool)

(declare-fun c!57892 () Bool)

(assert (=> bm!17613 (= c!57892 c!57894)))

(assert (=> bm!17613 (= call!17618 (++!1078 e!188422 (ite c!57894 lt!129124 call!17614)))))

(assert (= (and d!93271 c!57893) b!303577))

(assert (= (and d!93271 (not c!57893)) b!303572))

(assert (= (and b!303577 c!57894) b!303575))

(assert (= (and b!303577 (not c!57894)) b!303573))

(assert (= (and b!303573 c!57891) b!303581))

(assert (= (and b!303573 (not c!57891)) b!303579))

(assert (= (or b!303581 b!303579) bm!17610))

(assert (= (or b!303581 b!303579) bm!17612))

(assert (= (and bm!17612 c!57890) b!303576))

(assert (= (and bm!17612 (not c!57890)) b!303578))

(assert (= (or b!303575 bm!17610) bm!17609))

(assert (= (or b!303575 bm!17612) bm!17611))

(assert (= (or b!303575 b!303581) bm!17613))

(assert (= (and bm!17613 c!57892) b!303574))

(assert (= (and bm!17613 (not c!57892)) b!303580))

(declare-fun m!405435 () Bool)

(assert (=> b!303581 m!405435))

(declare-fun m!405437 () Bool)

(assert (=> bm!17611 m!405437))

(declare-fun m!405439 () Bool)

(assert (=> b!303580 m!405439))

(declare-fun m!405441 () Bool)

(assert (=> b!303579 m!405441))

(assert (=> b!303579 m!405441))

(declare-fun m!405443 () Bool)

(assert (=> b!303579 m!405443))

(assert (=> b!303579 m!405441))

(declare-fun m!405445 () Bool)

(assert (=> b!303579 m!405445))

(declare-fun m!405447 () Bool)

(assert (=> b!303579 m!405447))

(declare-fun m!405449 () Bool)

(assert (=> bm!17613 m!405449))

(declare-fun m!405451 () Bool)

(assert (=> b!303577 m!405451))

(declare-fun m!405453 () Bool)

(assert (=> b!303577 m!405453))

(declare-fun m!405455 () Bool)

(assert (=> b!303577 m!405455))

(assert (=> b!303577 m!405451))

(assert (=> b!303577 m!405453))

(assert (=> b!303577 m!405455))

(declare-fun m!405457 () Bool)

(assert (=> b!303577 m!405457))

(declare-fun m!405459 () Bool)

(assert (=> b!303577 m!405459))

(declare-fun m!405461 () Bool)

(assert (=> b!303577 m!405461))

(assert (=> bm!17609 m!405451))

(assert (=> b!303576 m!404557))

(assert (=> b!303015 d!93271))

(declare-fun b!303585 () Bool)

(declare-fun e!188431 () List!3993)

(assert (=> b!303585 (= e!188431 lt!128786)))

(declare-fun d!93273 () Bool)

(declare-fun e!188430 () Bool)

(assert (=> d!93273 e!188430))

(declare-fun res!137713 () Bool)

(assert (=> d!93273 (=> (not res!137713) (not e!188430))))

(declare-fun lt!129128 () List!3993)

(assert (=> d!93273 (= res!137713 (= (content!601 lt!129128) ((_ map or) (content!601 (++!1078 lt!128781 lt!128792)) (content!601 lt!128786))))))

(assert (=> d!93273 (= lt!129128 e!188431)))

(declare-fun c!57895 () Bool)

(assert (=> d!93273 (= c!57895 ((_ is Nil!3983) (++!1078 lt!128781 lt!128792)))))

(assert (=> d!93273 (= (++!1078 (++!1078 lt!128781 lt!128792) lt!128786) lt!129128)))

(declare-fun b!303586 () Bool)

(assert (=> b!303586 (= e!188431 (Cons!3983 (h!9380 (++!1078 lt!128781 lt!128792)) (++!1078 (t!42993 (++!1078 lt!128781 lt!128792)) lt!128786)))))

(declare-fun b!303588 () Bool)

(assert (=> b!303588 (= e!188430 (or (not (= lt!128786 Nil!3983)) (= lt!129128 (++!1078 lt!128781 lt!128792))))))

(declare-fun b!303587 () Bool)

(declare-fun res!137714 () Bool)

(assert (=> b!303587 (=> (not res!137714) (not e!188430))))

(assert (=> b!303587 (= res!137714 (= (size!3209 lt!129128) (+ (size!3209 (++!1078 lt!128781 lt!128792)) (size!3209 lt!128786))))))

(assert (= (and d!93273 c!57895) b!303585))

(assert (= (and d!93273 (not c!57895)) b!303586))

(assert (= (and d!93273 res!137713) b!303587))

(assert (= (and b!303587 res!137714) b!303588))

(declare-fun m!405463 () Bool)

(assert (=> d!93273 m!405463))

(assert (=> d!93273 m!404563))

(declare-fun m!405465 () Bool)

(assert (=> d!93273 m!405465))

(assert (=> d!93273 m!405305))

(declare-fun m!405467 () Bool)

(assert (=> b!303586 m!405467))

(declare-fun m!405469 () Bool)

(assert (=> b!303587 m!405469))

(assert (=> b!303587 m!404563))

(declare-fun m!405471 () Bool)

(assert (=> b!303587 m!405471))

(assert (=> b!303587 m!405311))

(assert (=> b!303015 d!93273))

(declare-fun bs!35210 () Bool)

(declare-fun d!93275 () Bool)

(assert (= bs!35210 (and d!93275 b!303023)))

(declare-fun lambda!10303 () Int)

(assert (=> bs!35210 (not (= lambda!10303 lambda!10272))))

(declare-fun bs!35211 () Bool)

(assert (= bs!35211 (and d!93275 d!93179)))

(assert (=> bs!35211 (= lambda!10303 lambda!10289)))

(declare-fun bs!35212 () Bool)

(assert (= bs!35212 (and d!93275 b!303004)))

(assert (=> bs!35212 (= lambda!10303 lambda!10271)))

(declare-fun bs!35213 () Bool)

(assert (= bs!35213 (and d!93275 b!303414)))

(assert (=> bs!35213 (not (= lambda!10303 lambda!10298))))

(declare-fun bs!35214 () Bool)

(assert (= bs!35214 (and d!93275 d!93169)))

(assert (=> bs!35214 (not (= lambda!10303 lambda!10278))))

(declare-fun bs!35215 () Bool)

(assert (= bs!35215 (and d!93275 b!303362)))

(assert (=> bs!35215 (not (= lambda!10303 lambda!10290))))

(declare-fun bs!35216 () Bool)

(assert (= bs!35216 (and d!93275 b!303577)))

(assert (=> bs!35216 (not (= lambda!10303 lambda!10302))))

(declare-fun bs!35217 () Bool)

(declare-fun b!303595 () Bool)

(assert (= bs!35217 (and b!303595 b!303023)))

(declare-fun lambda!10304 () Int)

(assert (=> bs!35217 (= lambda!10304 lambda!10272)))

(declare-fun bs!35218 () Bool)

(assert (= bs!35218 (and b!303595 d!93179)))

(assert (=> bs!35218 (not (= lambda!10304 lambda!10289))))

(declare-fun bs!35219 () Bool)

(assert (= bs!35219 (and b!303595 d!93275)))

(assert (=> bs!35219 (not (= lambda!10304 lambda!10303))))

(declare-fun bs!35220 () Bool)

(assert (= bs!35220 (and b!303595 b!303004)))

(assert (=> bs!35220 (not (= lambda!10304 lambda!10271))))

(declare-fun bs!35221 () Bool)

(assert (= bs!35221 (and b!303595 b!303414)))

(assert (=> bs!35221 (= lambda!10304 lambda!10298)))

(declare-fun bs!35222 () Bool)

(assert (= bs!35222 (and b!303595 d!93169)))

(assert (=> bs!35222 (= lambda!10304 lambda!10278)))

(declare-fun bs!35223 () Bool)

(assert (= bs!35223 (and b!303595 b!303362)))

(assert (=> bs!35223 (= lambda!10304 lambda!10290)))

(declare-fun bs!35224 () Bool)

(assert (= bs!35224 (and b!303595 b!303577)))

(assert (=> bs!35224 (= lambda!10304 lambda!10302)))

(declare-fun b!303600 () Bool)

(declare-fun e!188440 () Bool)

(assert (=> b!303600 (= e!188440 true)))

(declare-fun b!303599 () Bool)

(declare-fun e!188439 () Bool)

(assert (=> b!303599 (= e!188439 e!188440)))

(declare-fun b!303598 () Bool)

(declare-fun e!188438 () Bool)

(assert (=> b!303598 (= e!188438 e!188439)))

(assert (=> b!303595 e!188438))

(assert (= b!303599 b!303600))

(assert (= b!303598 b!303599))

(assert (= (and b!303595 ((_ is Cons!3984) rules!1920)) b!303598))

(assert (=> b!303600 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10304))))

(assert (=> b!303600 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10304))))

(assert (=> b!303595 true))

(declare-fun b!303589 () Bool)

(declare-fun e!188434 () BalanceConc!2704)

(assert (=> b!303589 (= e!188434 (BalanceConc!2705 Empty!1348))))

(declare-fun call!17619 () Token!1270)

(assert (=> b!303589 (= (print!374 thiss!17480 (singletonSeq!309 call!17619)) (printTailRec!335 thiss!17480 (singletonSeq!309 call!17619) 0 (BalanceConc!2705 Empty!1348)))))

(declare-fun lt!129134 () Unit!5582)

(declare-fun Unit!5598 () Unit!5582)

(assert (=> b!303589 (= lt!129134 Unit!5598)))

(declare-fun lt!129139 () Unit!5582)

(declare-fun call!17621 () BalanceConc!2704)

(declare-fun lt!129129 () BalanceConc!2704)

(assert (=> b!303589 (= lt!129139 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!138 thiss!17480 rules!1920 (list!1683 call!17621) (list!1683 lt!129129)))))

(assert (=> b!303589 false))

(declare-fun lt!129131 () Unit!5582)

(declare-fun Unit!5599 () Unit!5582)

(assert (=> b!303589 (= lt!129131 Unit!5599)))

(declare-fun c!57897 () Bool)

(declare-fun bm!17614 () Bool)

(assert (=> bm!17614 (= call!17621 (charsOf!406 (ite c!57897 separatorToken!170 call!17619)))))

(declare-fun call!17622 () BalanceConc!2704)

(declare-fun call!17623 () BalanceConc!2704)

(declare-fun bm!17615 () Bool)

(declare-fun c!57898 () Bool)

(assert (=> bm!17615 (= call!17622 (++!1079 call!17623 (ite c!57898 lt!129129 call!17621)))))

(declare-fun b!303590 () Bool)

(declare-fun e!188435 () BalanceConc!2704)

(assert (=> b!303590 (= e!188435 call!17622)))

(declare-fun bm!17616 () Bool)

(declare-fun call!17620 () Token!1270)

(assert (=> bm!17616 (= call!17620 (apply!872 (seqFromList!892 (t!42995 tokens!465)) 0))))

(declare-fun b!303591 () Bool)

(declare-fun e!188436 () Bool)

(declare-fun lt!129142 () Option!893)

(assert (=> b!303591 (= e!188436 (= (_1!2503 (v!14879 lt!129142)) (apply!872 (seqFromList!892 (t!42995 tokens!465)) 0)))))

(declare-fun b!303592 () Bool)

(declare-fun e!188437 () Bool)

(assert (=> b!303592 (= e!188437 (not (= (_1!2503 (v!14879 lt!129142)) call!17620)))))

(declare-fun b!303593 () Bool)

(declare-fun e!188433 () Bool)

(assert (=> b!303593 (= e!188433 (<= 0 (size!3210 (seqFromList!892 (t!42995 tokens!465)))))))

(declare-fun bm!17617 () Bool)

(assert (=> bm!17617 (= call!17619 call!17620)))

(declare-fun b!303594 () Bool)

(assert (=> b!303594 (= c!57897 e!188437)))

(declare-fun res!137717 () Bool)

(assert (=> b!303594 (=> (not res!137717) (not e!188437))))

(assert (=> b!303594 (= res!137717 ((_ is Some!892) lt!129142))))

(assert (=> b!303594 (= e!188435 e!188434)))

(declare-fun lt!129141 () BalanceConc!2704)

(assert (=> d!93275 (= (list!1683 lt!129141) (printWithSeparatorTokenWhenNeededList!330 thiss!17480 rules!1920 (dropList!189 (seqFromList!892 (t!42995 tokens!465)) 0) separatorToken!170))))

(declare-fun e!188432 () BalanceConc!2704)

(assert (=> d!93275 (= lt!129141 e!188432)))

(declare-fun c!57896 () Bool)

(assert (=> d!93275 (= c!57896 (>= 0 (size!3210 (seqFromList!892 (t!42995 tokens!465)))))))

(declare-fun lt!129132 () Unit!5582)

(assert (=> d!93275 (= lt!129132 (lemmaContentSubsetPreservesForall!134 (list!1685 (seqFromList!892 (t!42995 tokens!465))) (dropList!189 (seqFromList!892 (t!42995 tokens!465)) 0) lambda!10303))))

(assert (=> d!93275 e!188433))

(declare-fun res!137715 () Bool)

(assert (=> d!93275 (=> (not res!137715) (not e!188433))))

(assert (=> d!93275 (= res!137715 (>= 0 0))))

(assert (=> d!93275 (= (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 (seqFromList!892 (t!42995 tokens!465)) separatorToken!170 0) lt!129141)))

(assert (=> b!303595 (= e!188432 e!188435)))

(declare-fun lt!129133 () List!3995)

(assert (=> b!303595 (= lt!129133 (list!1685 (seqFromList!892 (t!42995 tokens!465))))))

(declare-fun lt!129140 () Unit!5582)

(assert (=> b!303595 (= lt!129140 (lemmaDropApply!229 lt!129133 0))))

(assert (=> b!303595 (= (head!945 (drop!244 lt!129133 0)) (apply!873 lt!129133 0))))

(declare-fun lt!129130 () Unit!5582)

(assert (=> b!303595 (= lt!129130 lt!129140)))

(declare-fun lt!129138 () List!3995)

(assert (=> b!303595 (= lt!129138 (list!1685 (seqFromList!892 (t!42995 tokens!465))))))

(declare-fun lt!129135 () Unit!5582)

(assert (=> b!303595 (= lt!129135 (lemmaDropTail!221 lt!129138 0))))

(assert (=> b!303595 (= (tail!527 (drop!244 lt!129138 0)) (drop!244 lt!129138 (+ 0 1)))))

(declare-fun lt!129137 () Unit!5582)

(assert (=> b!303595 (= lt!129137 lt!129135)))

(declare-fun lt!129136 () Unit!5582)

(assert (=> b!303595 (= lt!129136 (forallContained!316 (list!1685 (seqFromList!892 (t!42995 tokens!465))) lambda!10304 (apply!872 (seqFromList!892 (t!42995 tokens!465)) 0)))))

(assert (=> b!303595 (= lt!129129 (printWithSeparatorTokenWhenNeededRec!322 thiss!17480 rules!1920 (seqFromList!892 (t!42995 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!303595 (= lt!129142 (maxPrefixZipperSequence!328 thiss!17480 rules!1920 (++!1079 (charsOf!406 (apply!872 (seqFromList!892 (t!42995 tokens!465)) 0)) lt!129129)))))

(declare-fun res!137716 () Bool)

(assert (=> b!303595 (= res!137716 ((_ is Some!892) lt!129142))))

(assert (=> b!303595 (=> (not res!137716) (not e!188436))))

(assert (=> b!303595 (= c!57898 e!188436)))

(declare-fun bm!17618 () Bool)

(assert (=> bm!17618 (= call!17623 (charsOf!406 (ite c!57898 call!17620 call!17619)))))

(declare-fun b!303596 () Bool)

(assert (=> b!303596 (= e!188432 (BalanceConc!2705 Empty!1348))))

(declare-fun b!303597 () Bool)

(assert (=> b!303597 (= e!188434 (++!1079 call!17622 lt!129129))))

(assert (= (and d!93275 res!137715) b!303593))

(assert (= (and d!93275 c!57896) b!303596))

(assert (= (and d!93275 (not c!57896)) b!303595))

(assert (= (and b!303595 res!137716) b!303591))

(assert (= (and b!303595 c!57898) b!303590))

(assert (= (and b!303595 (not c!57898)) b!303594))

(assert (= (and b!303594 res!137717) b!303592))

(assert (= (and b!303594 c!57897) b!303597))

(assert (= (and b!303594 (not c!57897)) b!303589))

(assert (= (or b!303597 b!303589) bm!17617))

(assert (= (or b!303597 b!303589) bm!17614))

(assert (= (or b!303590 b!303592 bm!17617) bm!17616))

(assert (= (or b!303590 b!303597) bm!17618))

(assert (= (or b!303590 b!303597) bm!17615))

(declare-fun m!405473 () Bool)

(assert (=> bm!17614 m!405473))

(assert (=> bm!17616 m!404553))

(declare-fun m!405475 () Bool)

(assert (=> bm!17616 m!405475))

(declare-fun m!405477 () Bool)

(assert (=> d!93275 m!405477))

(declare-fun m!405479 () Bool)

(assert (=> d!93275 m!405479))

(declare-fun m!405481 () Bool)

(assert (=> d!93275 m!405481))

(declare-fun m!405483 () Bool)

(assert (=> d!93275 m!405483))

(assert (=> d!93275 m!405479))

(declare-fun m!405485 () Bool)

(assert (=> d!93275 m!405485))

(assert (=> d!93275 m!404553))

(declare-fun m!405487 () Bool)

(assert (=> d!93275 m!405487))

(assert (=> d!93275 m!404553))

(assert (=> d!93275 m!405477))

(assert (=> d!93275 m!404553))

(assert (=> d!93275 m!405479))

(declare-fun m!405489 () Bool)

(assert (=> bm!17615 m!405489))

(declare-fun m!405491 () Bool)

(assert (=> bm!17618 m!405491))

(declare-fun m!405493 () Bool)

(assert (=> b!303589 m!405493))

(declare-fun m!405495 () Bool)

(assert (=> b!303589 m!405495))

(declare-fun m!405497 () Bool)

(assert (=> b!303589 m!405497))

(declare-fun m!405499 () Bool)

(assert (=> b!303589 m!405499))

(assert (=> b!303589 m!405493))

(declare-fun m!405501 () Bool)

(assert (=> b!303589 m!405501))

(assert (=> b!303589 m!405495))

(assert (=> b!303589 m!405499))

(assert (=> b!303589 m!405495))

(declare-fun m!405503 () Bool)

(assert (=> b!303589 m!405503))

(declare-fun m!405505 () Bool)

(assert (=> b!303597 m!405505))

(declare-fun m!405507 () Bool)

(assert (=> b!303595 m!405507))

(declare-fun m!405509 () Bool)

(assert (=> b!303595 m!405509))

(declare-fun m!405511 () Bool)

(assert (=> b!303595 m!405511))

(declare-fun m!405513 () Bool)

(assert (=> b!303595 m!405513))

(declare-fun m!405515 () Bool)

(assert (=> b!303595 m!405515))

(declare-fun m!405517 () Bool)

(assert (=> b!303595 m!405517))

(declare-fun m!405519 () Bool)

(assert (=> b!303595 m!405519))

(assert (=> b!303595 m!404553))

(declare-fun m!405521 () Bool)

(assert (=> b!303595 m!405521))

(assert (=> b!303595 m!404553))

(assert (=> b!303595 m!405475))

(assert (=> b!303595 m!404553))

(assert (=> b!303595 m!405477))

(declare-fun m!405523 () Bool)

(assert (=> b!303595 m!405523))

(assert (=> b!303595 m!405507))

(assert (=> b!303595 m!405513))

(declare-fun m!405525 () Bool)

(assert (=> b!303595 m!405525))

(declare-fun m!405527 () Bool)

(assert (=> b!303595 m!405527))

(assert (=> b!303595 m!405515))

(declare-fun m!405529 () Bool)

(assert (=> b!303595 m!405529))

(assert (=> b!303595 m!405475))

(assert (=> b!303595 m!405511))

(assert (=> b!303595 m!405477))

(assert (=> b!303595 m!405475))

(declare-fun m!405531 () Bool)

(assert (=> b!303595 m!405531))

(assert (=> b!303593 m!404553))

(assert (=> b!303593 m!405487))

(assert (=> b!303591 m!404553))

(assert (=> b!303591 m!405475))

(assert (=> b!303015 d!93275))

(declare-fun d!93277 () Bool)

(declare-fun lt!129145 () BalanceConc!2704)

(assert (=> d!93277 (= (list!1683 lt!129145) (originalCharacters!806 separatorToken!170))))

(assert (=> d!93277 (= lt!129145 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (value!26061 separatorToken!170)))))

(assert (=> d!93277 (= (charsOf!406 separatorToken!170) lt!129145)))

(declare-fun b_lambda!10539 () Bool)

(assert (=> (not b_lambda!10539) (not d!93277)))

(assert (=> d!93277 t!43034))

(declare-fun b_and!25599 () Bool)

(assert (= b_and!25593 (and (=> t!43034 result!23170) b_and!25599)))

(assert (=> d!93277 t!43036))

(declare-fun b_and!25601 () Bool)

(assert (= b_and!25595 (and (=> t!43036 result!23172) b_and!25601)))

(assert (=> d!93277 t!43038))

(declare-fun b_and!25603 () Bool)

(assert (= b_and!25597 (and (=> t!43038 result!23174) b_and!25603)))

(declare-fun m!405533 () Bool)

(assert (=> d!93277 m!405533))

(assert (=> d!93277 m!405161))

(assert (=> b!303015 d!93277))

(declare-fun b!303601 () Bool)

(declare-fun e!188442 () List!3993)

(assert (=> b!303601 (= e!188442 lt!128786)))

(declare-fun d!93279 () Bool)

(declare-fun e!188441 () Bool)

(assert (=> d!93279 e!188441))

(declare-fun res!137718 () Bool)

(assert (=> d!93279 (=> (not res!137718) (not e!188441))))

(declare-fun lt!129146 () List!3993)

(assert (=> d!93279 (= res!137718 (= (content!601 lt!129146) ((_ map or) (content!601 lt!128792) (content!601 lt!128786))))))

(assert (=> d!93279 (= lt!129146 e!188442)))

(declare-fun c!57899 () Bool)

(assert (=> d!93279 (= c!57899 ((_ is Nil!3983) lt!128792))))

(assert (=> d!93279 (= (++!1078 lt!128792 lt!128786) lt!129146)))

(declare-fun b!303602 () Bool)

(assert (=> b!303602 (= e!188442 (Cons!3983 (h!9380 lt!128792) (++!1078 (t!42993 lt!128792) lt!128786)))))

(declare-fun b!303604 () Bool)

(assert (=> b!303604 (= e!188441 (or (not (= lt!128786 Nil!3983)) (= lt!129146 lt!128792)))))

(declare-fun b!303603 () Bool)

(declare-fun res!137719 () Bool)

(assert (=> b!303603 (=> (not res!137719) (not e!188441))))

(assert (=> b!303603 (= res!137719 (= (size!3209 lt!129146) (+ (size!3209 lt!128792) (size!3209 lt!128786))))))

(assert (= (and d!93279 c!57899) b!303601))

(assert (= (and d!93279 (not c!57899)) b!303602))

(assert (= (and d!93279 res!137718) b!303603))

(assert (= (and b!303603 res!137719) b!303604))

(declare-fun m!405535 () Bool)

(assert (=> d!93279 m!405535))

(declare-fun m!405537 () Bool)

(assert (=> d!93279 m!405537))

(assert (=> d!93279 m!405305))

(declare-fun m!405539 () Bool)

(assert (=> b!303602 m!405539))

(declare-fun m!405541 () Bool)

(assert (=> b!303603 m!405541))

(declare-fun m!405543 () Bool)

(assert (=> b!303603 m!405543))

(assert (=> b!303603 m!405311))

(assert (=> b!303015 d!93279))

(declare-fun b!303605 () Bool)

(declare-fun e!188444 () List!3993)

(assert (=> b!303605 (= e!188444 lt!128787)))

(declare-fun d!93281 () Bool)

(declare-fun e!188443 () Bool)

(assert (=> d!93281 e!188443))

(declare-fun res!137720 () Bool)

(assert (=> d!93281 (=> (not res!137720) (not e!188443))))

(declare-fun lt!129147 () List!3993)

(assert (=> d!93281 (= res!137720 (= (content!601 lt!129147) ((_ map or) (content!601 lt!128781) (content!601 lt!128787))))))

(assert (=> d!93281 (= lt!129147 e!188444)))

(declare-fun c!57900 () Bool)

(assert (=> d!93281 (= c!57900 ((_ is Nil!3983) lt!128781))))

(assert (=> d!93281 (= (++!1078 lt!128781 lt!128787) lt!129147)))

(declare-fun b!303606 () Bool)

(assert (=> b!303606 (= e!188444 (Cons!3983 (h!9380 lt!128781) (++!1078 (t!42993 lt!128781) lt!128787)))))

(declare-fun b!303608 () Bool)

(assert (=> b!303608 (= e!188443 (or (not (= lt!128787 Nil!3983)) (= lt!129147 lt!128781)))))

(declare-fun b!303607 () Bool)

(declare-fun res!137721 () Bool)

(assert (=> b!303607 (=> (not res!137721) (not e!188443))))

(assert (=> b!303607 (= res!137721 (= (size!3209 lt!129147) (+ (size!3209 lt!128781) (size!3209 lt!128787))))))

(assert (= (and d!93281 c!57900) b!303605))

(assert (= (and d!93281 (not c!57900)) b!303606))

(assert (= (and d!93281 res!137720) b!303607))

(assert (= (and b!303607 res!137721) b!303608))

(declare-fun m!405545 () Bool)

(assert (=> d!93281 m!405545))

(assert (=> d!93281 m!405303))

(declare-fun m!405547 () Bool)

(assert (=> d!93281 m!405547))

(declare-fun m!405549 () Bool)

(assert (=> b!303606 m!405549))

(declare-fun m!405551 () Bool)

(assert (=> b!303607 m!405551))

(assert (=> b!303607 m!404701))

(declare-fun m!405553 () Bool)

(assert (=> b!303607 m!405553))

(assert (=> b!303015 d!93281))

(declare-fun d!93283 () Bool)

(assert (=> d!93283 (= (list!1683 (charsOf!406 (h!9382 tokens!465))) (list!1686 (c!57762 (charsOf!406 (h!9382 tokens!465)))))))

(declare-fun bs!35225 () Bool)

(assert (= bs!35225 d!93283))

(declare-fun m!405555 () Bool)

(assert (=> bs!35225 m!405555))

(assert (=> b!303015 d!93283))

(declare-fun b!303609 () Bool)

(declare-fun e!188446 () List!3993)

(assert (=> b!303609 (= e!188446 lt!128792)))

(declare-fun d!93285 () Bool)

(declare-fun e!188445 () Bool)

(assert (=> d!93285 e!188445))

(declare-fun res!137722 () Bool)

(assert (=> d!93285 (=> (not res!137722) (not e!188445))))

(declare-fun lt!129148 () List!3993)

(assert (=> d!93285 (= res!137722 (= (content!601 lt!129148) ((_ map or) (content!601 lt!128781) (content!601 lt!128792))))))

(assert (=> d!93285 (= lt!129148 e!188446)))

(declare-fun c!57901 () Bool)

(assert (=> d!93285 (= c!57901 ((_ is Nil!3983) lt!128781))))

(assert (=> d!93285 (= (++!1078 lt!128781 lt!128792) lt!129148)))

(declare-fun b!303610 () Bool)

(assert (=> b!303610 (= e!188446 (Cons!3983 (h!9380 lt!128781) (++!1078 (t!42993 lt!128781) lt!128792)))))

(declare-fun b!303612 () Bool)

(assert (=> b!303612 (= e!188445 (or (not (= lt!128792 Nil!3983)) (= lt!129148 lt!128781)))))

(declare-fun b!303611 () Bool)

(declare-fun res!137723 () Bool)

(assert (=> b!303611 (=> (not res!137723) (not e!188445))))

(assert (=> b!303611 (= res!137723 (= (size!3209 lt!129148) (+ (size!3209 lt!128781) (size!3209 lt!128792))))))

(assert (= (and d!93285 c!57901) b!303609))

(assert (= (and d!93285 (not c!57901)) b!303610))

(assert (= (and d!93285 res!137722) b!303611))

(assert (= (and b!303611 res!137723) b!303612))

(declare-fun m!405557 () Bool)

(assert (=> d!93285 m!405557))

(assert (=> d!93285 m!405303))

(assert (=> d!93285 m!405537))

(declare-fun m!405559 () Bool)

(assert (=> b!303610 m!405559))

(declare-fun m!405561 () Bool)

(assert (=> b!303611 m!405561))

(assert (=> b!303611 m!404701))

(assert (=> b!303611 m!405543))

(assert (=> b!303015 d!93285))

(declare-fun d!93287 () Bool)

(declare-fun lt!129149 () BalanceConc!2704)

(assert (=> d!93287 (= (list!1683 lt!129149) (originalCharacters!806 (h!9382 tokens!465)))))

(assert (=> d!93287 (= lt!129149 (dynLambda!2159 (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (value!26061 (h!9382 tokens!465))))))

(assert (=> d!93287 (= (charsOf!406 (h!9382 tokens!465)) lt!129149)))

(declare-fun b_lambda!10541 () Bool)

(assert (=> (not b_lambda!10541) (not d!93287)))

(assert (=> d!93287 t!43008))

(declare-fun b_and!25605 () Bool)

(assert (= b_and!25599 (and (=> t!43008 result!23156) b_and!25605)))

(assert (=> d!93287 t!43010))

(declare-fun b_and!25607 () Bool)

(assert (= b_and!25601 (and (=> t!43010 result!23160) b_and!25607)))

(assert (=> d!93287 t!43012))

(declare-fun b_and!25609 () Bool)

(assert (= b_and!25603 (and (=> t!43012 result!23162) b_and!25609)))

(declare-fun m!405563 () Bool)

(assert (=> d!93287 m!405563))

(assert (=> d!93287 m!404925))

(assert (=> b!303015 d!93287))

(declare-fun d!93289 () Bool)

(declare-fun lt!129150 () Bool)

(declare-fun e!188447 () Bool)

(assert (=> d!93289 (= lt!129150 e!188447)))

(declare-fun res!137724 () Bool)

(assert (=> d!93289 (=> (not res!137724) (not e!188447))))

(assert (=> d!93289 (= res!137724 (= (list!1685 (_1!2502 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 (h!9382 tokens!465)))))) (list!1685 (singletonSeq!309 (h!9382 tokens!465)))))))

(declare-fun e!188448 () Bool)

(assert (=> d!93289 (= lt!129150 e!188448)))

(declare-fun res!137726 () Bool)

(assert (=> d!93289 (=> (not res!137726) (not e!188448))))

(declare-fun lt!129151 () tuple2!4572)

(assert (=> d!93289 (= res!137726 (= (size!3210 (_1!2502 lt!129151)) 1))))

(assert (=> d!93289 (= lt!129151 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 (h!9382 tokens!465)))))))

(assert (=> d!93289 (not (isEmpty!2684 rules!1920))))

(assert (=> d!93289 (= (rulesProduceIndividualToken!398 thiss!17480 rules!1920 (h!9382 tokens!465)) lt!129150)))

(declare-fun b!303613 () Bool)

(declare-fun res!137725 () Bool)

(assert (=> b!303613 (=> (not res!137725) (not e!188448))))

(assert (=> b!303613 (= res!137725 (= (apply!872 (_1!2502 lt!129151) 0) (h!9382 tokens!465)))))

(declare-fun b!303614 () Bool)

(assert (=> b!303614 (= e!188448 (isEmpty!2693 (_2!2502 lt!129151)))))

(declare-fun b!303615 () Bool)

(assert (=> b!303615 (= e!188447 (isEmpty!2693 (_2!2502 (lex!441 thiss!17480 rules!1920 (print!374 thiss!17480 (singletonSeq!309 (h!9382 tokens!465)))))))))

(assert (= (and d!93289 res!137726) b!303613))

(assert (= (and b!303613 res!137725) b!303614))

(assert (= (and d!93289 res!137724) b!303615))

(assert (=> d!93289 m!404619))

(assert (=> d!93289 m!405137))

(declare-fun m!405565 () Bool)

(assert (=> d!93289 m!405565))

(assert (=> d!93289 m!404619))

(assert (=> d!93289 m!404619))

(declare-fun m!405567 () Bool)

(assert (=> d!93289 m!405567))

(assert (=> d!93289 m!404547))

(declare-fun m!405569 () Bool)

(assert (=> d!93289 m!405569))

(assert (=> d!93289 m!405137))

(declare-fun m!405571 () Bool)

(assert (=> d!93289 m!405571))

(declare-fun m!405573 () Bool)

(assert (=> b!303613 m!405573))

(declare-fun m!405575 () Bool)

(assert (=> b!303614 m!405575))

(assert (=> b!303615 m!404619))

(assert (=> b!303615 m!404619))

(assert (=> b!303615 m!405137))

(assert (=> b!303615 m!405137))

(assert (=> b!303615 m!405571))

(declare-fun m!405577 () Bool)

(assert (=> b!303615 m!405577))

(assert (=> b!302995 d!93289))

(declare-fun d!93291 () Bool)

(assert (=> d!93291 (= (inv!4937 (tag!981 (h!9381 rules!1920))) (= (mod (str.len (value!26060 (tag!981 (h!9381 rules!1920)))) 2) 0))))

(assert (=> b!303017 d!93291))

(declare-fun d!93293 () Bool)

(declare-fun res!137727 () Bool)

(declare-fun e!188449 () Bool)

(assert (=> d!93293 (=> (not res!137727) (not e!188449))))

(assert (=> d!93293 (= res!137727 (semiInverseModEq!287 (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toValue!1522 (transformation!763 (h!9381 rules!1920)))))))

(assert (=> d!93293 (= (inv!4941 (transformation!763 (h!9381 rules!1920))) e!188449)))

(declare-fun b!303616 () Bool)

(assert (=> b!303616 (= e!188449 (equivClasses!270 (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toValue!1522 (transformation!763 (h!9381 rules!1920)))))))

(assert (= (and d!93293 res!137727) b!303616))

(declare-fun m!405579 () Bool)

(assert (=> d!93293 m!405579))

(declare-fun m!405581 () Bool)

(assert (=> b!303616 m!405581))

(assert (=> b!303017 d!93293))

(declare-fun d!93295 () Bool)

(declare-fun res!137732 () Bool)

(declare-fun e!188454 () Bool)

(assert (=> d!93295 (=> res!137732 e!188454)))

(assert (=> d!93295 (= res!137732 (not ((_ is Cons!3984) rules!1920)))))

(assert (=> d!93295 (= (sepAndNonSepRulesDisjointChars!352 rules!1920 rules!1920) e!188454)))

(declare-fun b!303621 () Bool)

(declare-fun e!188455 () Bool)

(assert (=> b!303621 (= e!188454 e!188455)))

(declare-fun res!137733 () Bool)

(assert (=> b!303621 (=> (not res!137733) (not e!188455))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!144 (Rule!1326 List!3994) Bool)

(assert (=> b!303621 (= res!137733 (ruleDisjointCharsFromAllFromOtherType!144 (h!9381 rules!1920) rules!1920))))

(declare-fun b!303622 () Bool)

(assert (=> b!303622 (= e!188455 (sepAndNonSepRulesDisjointChars!352 rules!1920 (t!42994 rules!1920)))))

(assert (= (and d!93295 (not res!137732)) b!303621))

(assert (= (and b!303621 res!137733) b!303622))

(declare-fun m!405583 () Bool)

(assert (=> b!303621 m!405583))

(declare-fun m!405585 () Bool)

(assert (=> b!303622 m!405585))

(assert (=> b!302997 d!93295))

(declare-fun bs!35239 () Bool)

(declare-fun d!93297 () Bool)

(assert (= bs!35239 (and d!93297 b!303023)))

(declare-fun lambda!10312 () Int)

(assert (=> bs!35239 (= lambda!10312 lambda!10272)))

(declare-fun bs!35240 () Bool)

(assert (= bs!35240 (and d!93297 d!93179)))

(assert (=> bs!35240 (not (= lambda!10312 lambda!10289))))

(declare-fun bs!35241 () Bool)

(assert (= bs!35241 (and d!93297 d!93275)))

(assert (=> bs!35241 (not (= lambda!10312 lambda!10303))))

(declare-fun bs!35242 () Bool)

(assert (= bs!35242 (and d!93297 b!303004)))

(assert (=> bs!35242 (not (= lambda!10312 lambda!10271))))

(declare-fun bs!35243 () Bool)

(assert (= bs!35243 (and d!93297 b!303414)))

(assert (=> bs!35243 (= lambda!10312 lambda!10298)))

(declare-fun bs!35244 () Bool)

(assert (= bs!35244 (and d!93297 b!303362)))

(assert (=> bs!35244 (= lambda!10312 lambda!10290)))

(declare-fun bs!35245 () Bool)

(assert (= bs!35245 (and d!93297 b!303577)))

(assert (=> bs!35245 (= lambda!10312 lambda!10302)))

(declare-fun bs!35246 () Bool)

(assert (= bs!35246 (and d!93297 b!303595)))

(assert (=> bs!35246 (= lambda!10312 lambda!10304)))

(declare-fun bs!35247 () Bool)

(assert (= bs!35247 (and d!93297 d!93169)))

(assert (=> bs!35247 (= lambda!10312 lambda!10278)))

(declare-fun b!303754 () Bool)

(declare-fun e!188550 () Bool)

(assert (=> b!303754 (= e!188550 true)))

(declare-fun b!303753 () Bool)

(declare-fun e!188549 () Bool)

(assert (=> b!303753 (= e!188549 e!188550)))

(declare-fun b!303752 () Bool)

(declare-fun e!188548 () Bool)

(assert (=> b!303752 (= e!188548 e!188549)))

(assert (=> d!93297 e!188548))

(assert (= b!303753 b!303754))

(assert (= b!303752 b!303753))

(assert (= (and d!93297 ((_ is Cons!3984) rules!1920)) b!303752))

(assert (=> b!303754 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10312))))

(assert (=> b!303754 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 rules!1920)))) (dynLambda!2154 order!3191 lambda!10312))))

(assert (=> d!93297 true))

(declare-fun e!188547 () Bool)

(assert (=> d!93297 e!188547))

(declare-fun res!137785 () Bool)

(assert (=> d!93297 (=> (not res!137785) (not e!188547))))

(declare-fun lt!129162 () Bool)

(assert (=> d!93297 (= res!137785 (= lt!129162 (forall!1048 (list!1685 lt!128785) lambda!10312)))))

(declare-fun forall!1050 (BalanceConc!2706 Int) Bool)

(assert (=> d!93297 (= lt!129162 (forall!1050 lt!128785 lambda!10312))))

(assert (=> d!93297 (not (isEmpty!2684 rules!1920))))

(assert (=> d!93297 (= (rulesProduceEachTokenIndividually!441 thiss!17480 rules!1920 lt!128785) lt!129162)))

(declare-fun b!303751 () Bool)

(assert (=> b!303751 (= e!188547 (= lt!129162 (rulesProduceEachTokenIndividuallyList!257 thiss!17480 rules!1920 (list!1685 lt!128785))))))

(assert (= (and d!93297 res!137785) b!303751))

(assert (=> d!93297 m!405039))

(assert (=> d!93297 m!405039))

(declare-fun m!405663 () Bool)

(assert (=> d!93297 m!405663))

(declare-fun m!405665 () Bool)

(assert (=> d!93297 m!405665))

(assert (=> d!93297 m!404547))

(assert (=> b!303751 m!405039))

(assert (=> b!303751 m!405039))

(declare-fun m!405667 () Bool)

(assert (=> b!303751 m!405667))

(assert (=> b!303019 d!93297))

(declare-fun d!93327 () Bool)

(assert (=> d!93327 (= (seqFromList!892 tokens!465) (fromListB!375 tokens!465))))

(declare-fun bs!35248 () Bool)

(assert (= bs!35248 d!93327))

(declare-fun m!405669 () Bool)

(assert (=> bs!35248 m!405669))

(assert (=> b!303019 d!93327))

(declare-fun d!93329 () Bool)

(assert (=> d!93329 (= (list!1683 (seqFromList!891 lt!128784)) (list!1686 (c!57762 (seqFromList!891 lt!128784))))))

(declare-fun bs!35249 () Bool)

(assert (= bs!35249 d!93329))

(declare-fun m!405671 () Bool)

(assert (=> bs!35249 m!405671))

(assert (=> b!302998 d!93329))

(declare-fun d!93331 () Bool)

(assert (=> d!93331 (= (seqFromList!891 lt!128784) (fromListB!374 lt!128784))))

(declare-fun bs!35250 () Bool)

(assert (= bs!35250 d!93331))

(declare-fun m!405673 () Bool)

(assert (=> bs!35250 m!405673))

(assert (=> b!302998 d!93331))

(declare-fun b!303766 () Bool)

(declare-fun e!188553 () Bool)

(declare-fun tp!107985 () Bool)

(declare-fun tp!107983 () Bool)

(assert (=> b!303766 (= e!188553 (and tp!107985 tp!107983))))

(declare-fun b!303767 () Bool)

(declare-fun tp!107986 () Bool)

(assert (=> b!303767 (= e!188553 tp!107986)))

(declare-fun b!303768 () Bool)

(declare-fun tp!107982 () Bool)

(declare-fun tp!107984 () Bool)

(assert (=> b!303768 (= e!188553 (and tp!107982 tp!107984))))

(declare-fun b!303765 () Bool)

(declare-fun tp_is_empty!1871 () Bool)

(assert (=> b!303765 (= e!188553 tp_is_empty!1871)))

(assert (=> b!303000 (= tp!107903 e!188553)))

(assert (= (and b!303000 ((_ is ElementMatch!987) (regex!763 (rule!1376 separatorToken!170)))) b!303765))

(assert (= (and b!303000 ((_ is Concat!1773) (regex!763 (rule!1376 separatorToken!170)))) b!303766))

(assert (= (and b!303000 ((_ is Star!987) (regex!763 (rule!1376 separatorToken!170)))) b!303767))

(assert (= (and b!303000 ((_ is Union!987) (regex!763 (rule!1376 separatorToken!170)))) b!303768))

(declare-fun b!303779 () Bool)

(declare-fun b_free!10773 () Bool)

(declare-fun b_next!10773 () Bool)

(assert (=> b!303779 (= b_free!10773 (not b_next!10773))))

(declare-fun tp!107997 () Bool)

(declare-fun b_and!25625 () Bool)

(assert (=> b!303779 (= tp!107997 b_and!25625)))

(declare-fun b_free!10775 () Bool)

(declare-fun b_next!10775 () Bool)

(assert (=> b!303779 (= b_free!10775 (not b_next!10775))))

(declare-fun tb!19257 () Bool)

(declare-fun t!43058 () Bool)

(assert (=> (and b!303779 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465))))) t!43058) tb!19257))

(declare-fun result!23196 () Bool)

(assert (= result!23196 result!23156))

(assert (=> b!303282 t!43058))

(declare-fun tb!19259 () Bool)

(declare-fun t!43060 () Bool)

(assert (=> (and b!303779 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170)))) t!43060) tb!19259))

(declare-fun result!23198 () Bool)

(assert (= result!23198 result!23170))

(assert (=> b!303428 t!43060))

(assert (=> d!93277 t!43060))

(assert (=> d!93287 t!43058))

(declare-fun b_and!25627 () Bool)

(declare-fun tp!107998 () Bool)

(assert (=> b!303779 (= tp!107998 (and (=> t!43058 result!23196) (=> t!43060 result!23198) b_and!25627))))

(declare-fun e!188562 () Bool)

(assert (=> b!303779 (= e!188562 (and tp!107997 tp!107998))))

(declare-fun e!188565 () Bool)

(declare-fun tp!107996 () Bool)

(declare-fun b!303778 () Bool)

(assert (=> b!303778 (= e!188565 (and tp!107996 (inv!4937 (tag!981 (h!9381 (t!42994 rules!1920)))) (inv!4941 (transformation!763 (h!9381 (t!42994 rules!1920)))) e!188562))))

(declare-fun b!303777 () Bool)

(declare-fun e!188564 () Bool)

(declare-fun tp!107995 () Bool)

(assert (=> b!303777 (= e!188564 (and e!188565 tp!107995))))

(assert (=> b!303001 (= tp!107907 e!188564)))

(assert (= b!303778 b!303779))

(assert (= b!303777 b!303778))

(assert (= (and b!303001 ((_ is Cons!3984) (t!42994 rules!1920))) b!303777))

(declare-fun m!405675 () Bool)

(assert (=> b!303778 m!405675))

(declare-fun m!405677 () Bool)

(assert (=> b!303778 m!405677))

(declare-fun b!303781 () Bool)

(declare-fun e!188566 () Bool)

(declare-fun tp!108002 () Bool)

(declare-fun tp!108000 () Bool)

(assert (=> b!303781 (= e!188566 (and tp!108002 tp!108000))))

(declare-fun b!303782 () Bool)

(declare-fun tp!108003 () Bool)

(assert (=> b!303782 (= e!188566 tp!108003)))

(declare-fun b!303783 () Bool)

(declare-fun tp!107999 () Bool)

(declare-fun tp!108001 () Bool)

(assert (=> b!303783 (= e!188566 (and tp!107999 tp!108001))))

(declare-fun b!303780 () Bool)

(assert (=> b!303780 (= e!188566 tp_is_empty!1871)))

(assert (=> b!303012 (= tp!107905 e!188566)))

(assert (= (and b!303012 ((_ is ElementMatch!987) (regex!763 (rule!1376 (h!9382 tokens!465))))) b!303780))

(assert (= (and b!303012 ((_ is Concat!1773) (regex!763 (rule!1376 (h!9382 tokens!465))))) b!303781))

(assert (= (and b!303012 ((_ is Star!987) (regex!763 (rule!1376 (h!9382 tokens!465))))) b!303782))

(assert (= (and b!303012 ((_ is Union!987) (regex!763 (rule!1376 (h!9382 tokens!465))))) b!303783))

(declare-fun b!303797 () Bool)

(declare-fun b_free!10777 () Bool)

(declare-fun b_next!10777 () Bool)

(assert (=> b!303797 (= b_free!10777 (not b_next!10777))))

(declare-fun tp!108014 () Bool)

(declare-fun b_and!25629 () Bool)

(assert (=> b!303797 (= tp!108014 b_and!25629)))

(declare-fun b_free!10779 () Bool)

(declare-fun b_next!10779 () Bool)

(assert (=> b!303797 (= b_free!10779 (not b_next!10779))))

(declare-fun t!43062 () Bool)

(declare-fun tb!19261 () Bool)

(assert (=> (and b!303797 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465))))) t!43062) tb!19261))

(declare-fun result!23202 () Bool)

(assert (= result!23202 result!23156))

(assert (=> b!303282 t!43062))

(declare-fun tb!19263 () Bool)

(declare-fun t!43064 () Bool)

(assert (=> (and b!303797 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170)))) t!43064) tb!19263))

(declare-fun result!23204 () Bool)

(assert (= result!23204 result!23170))

(assert (=> b!303428 t!43064))

(assert (=> d!93277 t!43064))

(assert (=> d!93287 t!43062))

(declare-fun b_and!25631 () Bool)

(declare-fun tp!108015 () Bool)

(assert (=> b!303797 (= tp!108015 (and (=> t!43062 result!23202) (=> t!43064 result!23204) b_and!25631))))

(declare-fun e!188580 () Bool)

(assert (=> b!303797 (= e!188580 (and tp!108014 tp!108015))))

(declare-fun e!188579 () Bool)

(assert (=> b!303024 (= tp!107900 e!188579)))

(declare-fun e!188583 () Bool)

(declare-fun b!303796 () Bool)

(declare-fun tp!108017 () Bool)

(assert (=> b!303796 (= e!188583 (and tp!108017 (inv!4937 (tag!981 (rule!1376 (h!9382 (t!42995 tokens!465))))) (inv!4941 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) e!188580))))

(declare-fun tp!108016 () Bool)

(declare-fun b!303795 () Bool)

(declare-fun e!188582 () Bool)

(assert (=> b!303795 (= e!188582 (and (inv!21 (value!26061 (h!9382 (t!42995 tokens!465)))) e!188583 tp!108016))))

(declare-fun tp!108018 () Bool)

(declare-fun b!303794 () Bool)

(assert (=> b!303794 (= e!188579 (and (inv!4940 (h!9382 (t!42995 tokens!465))) e!188582 tp!108018))))

(assert (= b!303796 b!303797))

(assert (= b!303795 b!303796))

(assert (= b!303794 b!303795))

(assert (= (and b!303024 ((_ is Cons!3985) (t!42995 tokens!465))) b!303794))

(declare-fun m!405679 () Bool)

(assert (=> b!303796 m!405679))

(declare-fun m!405681 () Bool)

(assert (=> b!303796 m!405681))

(declare-fun m!405683 () Bool)

(assert (=> b!303795 m!405683))

(declare-fun m!405685 () Bool)

(assert (=> b!303794 m!405685))

(declare-fun b!303800 () Bool)

(declare-fun e!188587 () Bool)

(assert (=> b!303800 (= e!188587 true)))

(declare-fun b!303799 () Bool)

(declare-fun e!188586 () Bool)

(assert (=> b!303799 (= e!188586 e!188587)))

(declare-fun b!303798 () Bool)

(declare-fun e!188585 () Bool)

(assert (=> b!303798 (= e!188585 e!188586)))

(assert (=> b!303034 e!188585))

(assert (= b!303799 b!303800))

(assert (= b!303798 b!303799))

(assert (= (and b!303034 ((_ is Cons!3984) (t!42994 rules!1920))) b!303798))

(assert (=> b!303800 (< (dynLambda!2153 order!3189 (toValue!1522 (transformation!763 (h!9381 (t!42994 rules!1920))))) (dynLambda!2154 order!3191 lambda!10272))))

(assert (=> b!303800 (< (dynLambda!2155 order!3193 (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920))))) (dynLambda!2154 order!3191 lambda!10272))))

(declare-fun b!303805 () Bool)

(declare-fun e!188590 () Bool)

(declare-fun tp!108021 () Bool)

(assert (=> b!303805 (= e!188590 (and tp_is_empty!1871 tp!108021))))

(assert (=> b!303005 (= tp!107895 e!188590)))

(assert (= (and b!303005 ((_ is Cons!3983) (originalCharacters!806 (h!9382 tokens!465)))) b!303805))

(declare-fun b!303807 () Bool)

(declare-fun e!188591 () Bool)

(declare-fun tp!108025 () Bool)

(declare-fun tp!108023 () Bool)

(assert (=> b!303807 (= e!188591 (and tp!108025 tp!108023))))

(declare-fun b!303808 () Bool)

(declare-fun tp!108026 () Bool)

(assert (=> b!303808 (= e!188591 tp!108026)))

(declare-fun b!303809 () Bool)

(declare-fun tp!108022 () Bool)

(declare-fun tp!108024 () Bool)

(assert (=> b!303809 (= e!188591 (and tp!108022 tp!108024))))

(declare-fun b!303806 () Bool)

(assert (=> b!303806 (= e!188591 tp_is_empty!1871)))

(assert (=> b!303017 (= tp!107906 e!188591)))

(assert (= (and b!303017 ((_ is ElementMatch!987) (regex!763 (h!9381 rules!1920)))) b!303806))

(assert (= (and b!303017 ((_ is Concat!1773) (regex!763 (h!9381 rules!1920)))) b!303807))

(assert (= (and b!303017 ((_ is Star!987) (regex!763 (h!9381 rules!1920)))) b!303808))

(assert (= (and b!303017 ((_ is Union!987) (regex!763 (h!9381 rules!1920)))) b!303809))

(declare-fun b!303810 () Bool)

(declare-fun e!188592 () Bool)

(declare-fun tp!108027 () Bool)

(assert (=> b!303810 (= e!188592 (and tp_is_empty!1871 tp!108027))))

(assert (=> b!303007 (= tp!107902 e!188592)))

(assert (= (and b!303007 ((_ is Cons!3983) (originalCharacters!806 separatorToken!170))) b!303810))

(declare-fun b_lambda!10559 () Bool)

(assert (= b_lambda!10537 (or (and b!303018 b_free!10759 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303779 b_free!10775 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303020 b_free!10755 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303797 b_free!10779 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!302996 b_free!10763) b_lambda!10559)))

(declare-fun b_lambda!10561 () Bool)

(assert (= b_lambda!10527 (or b!303023 b_lambda!10561)))

(declare-fun bs!35251 () Bool)

(declare-fun d!93333 () Bool)

(assert (= bs!35251 (and d!93333 b!303023)))

(assert (=> bs!35251 (= (dynLambda!2158 lambda!10272 (h!9382 tokens!465)) (rulesProduceIndividualToken!398 thiss!17480 rules!1920 (h!9382 tokens!465)))))

(assert (=> bs!35251 m!404549))

(assert (=> d!93167 d!93333))

(declare-fun b_lambda!10563 () Bool)

(assert (= b_lambda!10541 (or (and b!303779 b_free!10775 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!302996 b_free!10763 (= (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303797 b_free!10779 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303020 b_free!10755 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303018 b_free!10759) b_lambda!10563)))

(declare-fun b_lambda!10565 () Bool)

(assert (= b_lambda!10529 (or (and b!303779 b_free!10775 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!302996 b_free!10763 (= (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303797 b_free!10779 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303020 b_free!10755 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))))) (and b!303018 b_free!10759) b_lambda!10565)))

(declare-fun b_lambda!10567 () Bool)

(assert (= b_lambda!10535 (or b!303004 b_lambda!10567)))

(declare-fun bs!35252 () Bool)

(declare-fun d!93335 () Bool)

(assert (= bs!35252 (and d!93335 b!303004)))

(assert (=> bs!35252 (= (dynLambda!2158 lambda!10271 (h!9382 tokens!465)) (not (isSeparator!763 (rule!1376 (h!9382 tokens!465)))))))

(assert (=> b!303426 d!93335))

(declare-fun b_lambda!10569 () Bool)

(assert (= b_lambda!10539 (or (and b!303018 b_free!10759 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 tokens!465)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303779 b_free!10775 (= (toChars!1381 (transformation!763 (h!9381 (t!42994 rules!1920)))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303020 b_free!10755 (= (toChars!1381 (transformation!763 (h!9381 rules!1920))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!303797 b_free!10779 (= (toChars!1381 (transformation!763 (rule!1376 (h!9382 (t!42995 tokens!465))))) (toChars!1381 (transformation!763 (rule!1376 separatorToken!170))))) (and b!302996 b_free!10763) b_lambda!10569)))

(check-sat (not b!303603) (not b!303794) (not d!93159) (not b!303593) (not d!93219) (not b!303200) (not b!303416) (not d!93273) (not b!303153) (not b!303768) (not d!93277) (not bm!17591) (not d!93329) (not d!93179) (not b!303118) (not d!93263) (not b!303113) b_and!25605 (not b!303777) (not b!303358) (not b!303192) (not d!93127) (not d!93283) (not b!303614) (not b!303204) (not b!303569) (not b!303495) b_and!25607 (not b!303413) (not b!303579) (not b!303158) (not bs!35251) (not d!93175) (not b!303795) (not b!303110) (not b!303530) (not b!303283) (not b!303622) (not d!93213) (not bm!17616) (not b!303570) (not b!303767) (not b!303606) (not tb!19243) (not b_lambda!10569) (not b!303418) b_and!25561 (not b!303809) (not b!303115) (not b!303494) (not d!93279) (not b!303498) (not b!303356) (not b!303162) tp_is_empty!1871 (not b!303796) (not b_lambda!10567) (not b!303414) (not b!303365) (not b!303602) (not bm!17618) (not b!303194) (not b!303616) (not b_lambda!10559) (not b!303114) (not bm!17615) (not b_lambda!10563) (not d!93157) (not b!303598) (not b!303193) (not d!93241) (not b!303500) (not b!303778) (not bm!17609) (not b_next!10761) (not b!303197) b_and!25609 b_and!25631 (not b!303111) (not d!93123) (not b!303586) (not bm!17614) (not b!303810) (not b!303571) (not b!303273) (not b!303228) (not b!303535) (not b!303116) (not b!303766) (not b!303597) (not tb!19231) (not b!303288) (not b!303221) (not b!303782) (not d!93151) (not d!93177) (not bm!17611) (not d!93327) (not b!303275) (not d!93217) (not b!303783) (not b!303805) (not b!303444) (not b!303496) b_and!25627 (not b!303148) (not b_next!10773) (not b!303150) (not b_lambda!10561) (not d!93275) (not d!93267) (not d!93293) (not d!93161) (not d!93239) (not bm!17593) (not b!303751) (not d!93233) (not b!303112) (not b!303417) (not b!303442) (not b!303621) (not b!303274) (not b!303441) (not b!303419) (not b_next!10759) (not d!93269) (not b!303807) (not bm!17532) b_and!25629 (not d!93287) (not bm!17529) (not b!303781) (not d!93167) (not bm!17535) (not b!303493) b_and!25565 (not d!93289) (not bm!17595) (not bm!17577) (not b!303360) (not b!303225) (not b!303576) (not d!93149) (not b!303430) (not b!303534) (not b!303429) b_and!25557 (not d!93281) (not b_lambda!10565) (not b!303247) (not b!303577) (not b_next!10775) (not b!303223) (not b!303808) (not b_next!10753) (not b!303364) (not bm!17580) (not b!303282) (not bm!17576) (not b!303226) (not b!303611) (not d!93147) (not b!303497) (not b!303798) (not d!93121) (not b!303227) (not b_next!10763) (not d!93165) (not d!93265) (not b!303581) (not d!93245) (not d!93169) (not b!303362) (not b!303591) b_and!25625 (not b!303610) (not b!303582) (not b_next!10757) (not b!303589) (not d!93331) (not b!303587) (not b!303615) (not d!93247) (not d!93285) (not bm!17578) (not b!303613) (not d!93297) (not b!303580) (not b!303224) (not bm!17613) (not b!303529) (not b!303428) (not b_next!10777) (not b!303607) (not b_next!10755) (not b!303427) (not b!303752) (not b!303595) (not d!93163) (not b_next!10779))
(check-sat b_and!25605 b_and!25607 b_and!25561 (not b_next!10761) b_and!25627 (not b_next!10773) (not b_next!10759) b_and!25629 b_and!25565 b_and!25557 (not b_next!10763) (not b_next!10777) b_and!25609 b_and!25631 (not b_next!10775) (not b_next!10753) b_and!25625 (not b_next!10757) (not b_next!10755) (not b_next!10779))
