; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!9012 () Bool)

(assert start!9012)

(declare-fun b!97756 () Bool)

(declare-fun b_free!2909 () Bool)

(declare-fun b_next!2909 () Bool)

(assert (=> b!97756 (= b_free!2909 (not b_next!2909))))

(declare-fun tp!56260 () Bool)

(declare-fun b_and!4375 () Bool)

(assert (=> b!97756 (= tp!56260 b_and!4375)))

(declare-fun b_free!2911 () Bool)

(declare-fun b_next!2911 () Bool)

(assert (=> b!97756 (= b_free!2911 (not b_next!2911))))

(declare-fun tp!56259 () Bool)

(declare-fun b_and!4377 () Bool)

(assert (=> b!97756 (= tp!56259 b_and!4377)))

(declare-fun b!97751 () Bool)

(declare-fun res!47575 () Bool)

(declare-fun e!54139 () Bool)

(assert (=> b!97751 (=> (not res!47575) (not e!54139))))

(declare-datatypes ((LexerInterface!236 0))(
  ( (LexerInterfaceExt!233 (__x!1763 Int)) (Lexer!234) )
))
(declare-fun thiss!19403 () LexerInterface!236)

(declare-datatypes ((C!1746 0))(
  ( (C!1747 (val!480 Int)) )
))
(declare-datatypes ((List!1582 0))(
  ( (Nil!1576) (Cons!1576 (h!6973 C!1746) (t!21103 List!1582)) )
))
(declare-datatypes ((IArray!977 0))(
  ( (IArray!978 (innerList!546 List!1582)) )
))
(declare-datatypes ((Conc!488 0))(
  ( (Node!488 (left!1201 Conc!488) (right!1531 Conc!488) (csize!1206 Int) (cheight!699 Int)) (Leaf!796 (xs!3075 IArray!977) (csize!1207 Int)) (Empty!488) )
))
(declare-datatypes ((BalanceConc!980 0))(
  ( (BalanceConc!981 (c!23968 Conc!488)) )
))
(declare-datatypes ((Regex!412 0))(
  ( (ElementMatch!412 (c!23969 C!1746)) (Concat!746 (regOne!1336 Regex!412) (regTwo!1336 Regex!412)) (EmptyExpr!412) (Star!412 (reg!741 Regex!412)) (EmptyLang!412) (Union!412 (regOne!1337 Regex!412) (regTwo!1337 Regex!412)) )
))
(declare-datatypes ((String!2063 0))(
  ( (String!2064 (value!12673 String)) )
))
(declare-datatypes ((List!1583 0))(
  ( (Nil!1577) (Cons!1577 (h!6974 (_ BitVec 16)) (t!21104 List!1583)) )
))
(declare-datatypes ((TokenValue!334 0))(
  ( (FloatLiteralValue!668 (text!2783 List!1583)) (TokenValueExt!333 (__x!1764 Int)) (Broken!1670 (value!12674 List!1583)) (Object!339) (End!334) (Def!334) (Underscore!334) (Match!334) (Else!334) (Error!334) (Case!334) (If!334) (Extends!334) (Abstract!334) (Class!334) (Val!334) (DelimiterValue!668 (del!394 List!1583)) (KeywordValue!340 (value!12675 List!1583)) (CommentValue!668 (value!12676 List!1583)) (WhitespaceValue!668 (value!12677 List!1583)) (IndentationValue!334 (value!12678 List!1583)) (String!2065) (Int32!334) (Broken!1671 (value!12679 List!1583)) (Boolean!335) (Unit!1034) (OperatorValue!337 (op!394 List!1583)) (IdentifierValue!668 (value!12680 List!1583)) (IdentifierValue!669 (value!12681 List!1583)) (WhitespaceValue!669 (value!12682 List!1583)) (True!668) (False!668) (Broken!1672 (value!12683 List!1583)) (Broken!1673 (value!12684 List!1583)) (True!669) (RightBrace!334) (RightBracket!334) (Colon!334) (Null!334) (Comma!334) (LeftBracket!334) (False!669) (LeftBrace!334) (ImaginaryLiteralValue!334 (text!2784 List!1583)) (StringLiteralValue!1002 (value!12685 List!1583)) (EOFValue!334 (value!12686 List!1583)) (IdentValue!334 (value!12687 List!1583)) (DelimiterValue!669 (value!12688 List!1583)) (DedentValue!334 (value!12689 List!1583)) (NewLineValue!334 (value!12690 List!1583)) (IntegerValue!1002 (value!12691 (_ BitVec 32)) (text!2785 List!1583)) (IntegerValue!1003 (value!12692 Int) (text!2786 List!1583)) (Times!334) (Or!334) (Equal!334) (Minus!334) (Broken!1674 (value!12693 List!1583)) (And!334) (Div!334) (LessEqual!334) (Mod!334) (Concat!747) (Not!334) (Plus!334) (SpaceValue!334 (value!12694 List!1583)) (IntegerValue!1004 (value!12695 Int) (text!2787 List!1583)) (StringLiteralValue!1003 (text!2788 List!1583)) (FloatLiteralValue!669 (text!2789 List!1583)) (BytesLiteralValue!334 (value!12696 List!1583)) (CommentValue!669 (value!12697 List!1583)) (StringLiteralValue!1004 (value!12698 List!1583)) (ErrorTokenValue!334 (msg!395 List!1583)) )
))
(declare-datatypes ((TokenValueInjection!492 0))(
  ( (TokenValueInjection!493 (toValue!895 Int) (toChars!754 Int)) )
))
(declare-datatypes ((Rule!488 0))(
  ( (Rule!489 (regex!344 Regex!412) (tag!522 String!2063) (isSeparator!344 Bool) (transformation!344 TokenValueInjection!492)) )
))
(declare-datatypes ((List!1584 0))(
  ( (Nil!1578) (Cons!1578 (h!6975 Rule!488) (t!21105 List!1584)) )
))
(declare-fun rules!2471 () List!1584)

(declare-fun rulesInvariant!230 (LexerInterface!236 List!1584) Bool)

(assert (=> b!97751 (= res!47575 (rulesInvariant!230 thiss!19403 rules!2471))))

(declare-fun b!97752 () Bool)

(declare-fun e!54135 () Bool)

(declare-datatypes ((Token!444 0))(
  ( (Token!445 (value!12699 TokenValue!334) (rule!845 Rule!488) (size!1386 Int) (originalCharacters!393 List!1582)) )
))
(declare-datatypes ((List!1585 0))(
  ( (Nil!1579) (Cons!1579 (h!6976 Token!444) (t!21106 List!1585)) )
))
(declare-fun lt!25925 () List!1585)

(declare-datatypes ((IArray!979 0))(
  ( (IArray!980 (innerList!547 List!1585)) )
))
(declare-datatypes ((Conc!489 0))(
  ( (Node!489 (left!1202 Conc!489) (right!1532 Conc!489) (csize!1208 Int) (cheight!700 Int)) (Leaf!797 (xs!3076 IArray!979) (csize!1209 Int)) (Empty!489) )
))
(declare-datatypes ((BalanceConc!982 0))(
  ( (BalanceConc!983 (c!23970 Conc!489)) )
))
(declare-fun list!616 (BalanceConc!982) List!1585)

(declare-fun seqFromList!182 (List!1585) BalanceConc!982)

(declare-fun $colon$colon!31 (List!1585 Token!444) List!1585)

(assert (=> b!97752 (= e!54135 (not (= lt!25925 (list!616 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))))))))

(declare-fun b!97753 () Bool)

(declare-fun res!47573 () Bool)

(assert (=> b!97753 (=> (not res!47573) (not e!54139))))

(declare-fun isEmpty!662 (List!1584) Bool)

(assert (=> b!97753 (= res!47573 (not (isEmpty!662 rules!2471)))))

(declare-fun b!97754 () Bool)

(declare-fun e!54140 () Bool)

(declare-fun tp_is_empty!747 () Bool)

(declare-fun tp!56261 () Bool)

(assert (=> b!97754 (= e!54140 (and tp_is_empty!747 tp!56261))))

(declare-fun b!97755 () Bool)

(declare-fun e!54141 () Bool)

(assert (=> b!97755 (= e!54139 e!54141)))

(declare-fun res!47577 () Bool)

(assert (=> b!97755 (=> (not res!47577) (not e!54141))))

(declare-datatypes ((tuple2!1696 0))(
  ( (tuple2!1697 (_1!1055 BalanceConc!982) (_2!1055 BalanceConc!980)) )
))
(declare-fun lt!25923 () tuple2!1696)

(declare-fun isEmpty!663 (BalanceConc!980) Bool)

(assert (=> b!97755 (= res!47577 (not (isEmpty!663 (_2!1055 lt!25923))))))

(declare-fun input!2238 () List!1582)

(declare-fun lex!142 (LexerInterface!236 List!1584 BalanceConc!980) tuple2!1696)

(declare-fun seqFromList!183 (List!1582) BalanceConc!980)

(assert (=> b!97755 (= lt!25923 (lex!142 thiss!19403 rules!2471 (seqFromList!183 input!2238)))))

(declare-fun res!47574 () Bool)

(assert (=> start!9012 (=> (not res!47574) (not e!54139))))

(assert (=> start!9012 (= res!47574 (is-Lexer!234 thiss!19403))))

(assert (=> start!9012 e!54139))

(assert (=> start!9012 true))

(declare-fun e!54142 () Bool)

(assert (=> start!9012 e!54142))

(assert (=> start!9012 e!54140))

(declare-fun e!54138 () Bool)

(assert (=> b!97756 (= e!54138 (and tp!56260 tp!56259))))

(declare-fun b!97757 () Bool)

(declare-fun e!54136 () Bool)

(declare-fun tp!56257 () Bool)

(assert (=> b!97757 (= e!54142 (and e!54136 tp!56257))))

(declare-fun b!97758 () Bool)

(declare-fun tp!56258 () Bool)

(declare-fun inv!1922 (String!2063) Bool)

(declare-fun inv!1925 (TokenValueInjection!492) Bool)

(assert (=> b!97758 (= e!54136 (and tp!56258 (inv!1922 (tag!522 (h!6975 rules!2471))) (inv!1925 (transformation!344 (h!6975 rules!2471))) e!54138))))

(declare-fun b!97759 () Bool)

(assert (=> b!97759 (= e!54141 e!54135)))

(declare-fun res!47576 () Bool)

(assert (=> b!97759 (=> (not res!47576) (not e!54135))))

(declare-fun lt!25924 () Bool)

(assert (=> b!97759 (= res!47576 (and (or lt!25924 (not (is-Nil!1579 (t!21106 lt!25925)))) (not lt!25924)))))

(assert (=> b!97759 (= lt!25924 (not (is-Cons!1579 lt!25925)))))

(assert (=> b!97759 (= lt!25925 (list!616 (_1!1055 lt!25923)))))

(assert (= (and start!9012 res!47574) b!97753))

(assert (= (and b!97753 res!47573) b!97751))

(assert (= (and b!97751 res!47575) b!97755))

(assert (= (and b!97755 res!47577) b!97759))

(assert (= (and b!97759 res!47576) b!97752))

(assert (= b!97758 b!97756))

(assert (= b!97757 b!97758))

(assert (= (and start!9012 (is-Cons!1578 rules!2471)) b!97757))

(assert (= (and start!9012 (is-Cons!1576 input!2238)) b!97754))

(declare-fun m!81950 () Bool)

(assert (=> b!97759 m!81950))

(declare-fun m!81952 () Bool)

(assert (=> b!97753 m!81952))

(declare-fun m!81954 () Bool)

(assert (=> b!97751 m!81954))

(declare-fun m!81956 () Bool)

(assert (=> b!97752 m!81956))

(assert (=> b!97752 m!81956))

(declare-fun m!81958 () Bool)

(assert (=> b!97752 m!81958))

(assert (=> b!97752 m!81958))

(declare-fun m!81960 () Bool)

(assert (=> b!97752 m!81960))

(declare-fun m!81962 () Bool)

(assert (=> b!97758 m!81962))

(declare-fun m!81964 () Bool)

(assert (=> b!97758 m!81964))

(declare-fun m!81966 () Bool)

(assert (=> b!97755 m!81966))

(declare-fun m!81968 () Bool)

(assert (=> b!97755 m!81968))

(assert (=> b!97755 m!81968))

(declare-fun m!81970 () Bool)

(assert (=> b!97755 m!81970))

(push 1)

(assert tp_is_empty!747)

(assert (not b!97757))

(assert (not b!97755))

(assert (not b!97752))

(assert (not b_next!2911))

(assert (not b!97759))

(assert (not b!97758))

(assert (not b!97751))

(assert (not b!97754))

(assert (not b_next!2909))

(assert (not b!97753))

(assert b_and!4375)

(assert b_and!4377)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4377)

(assert b_and!4375)

(assert (not b_next!2911))

(assert (not b_next!2909))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22508 () Bool)

(declare-fun lt!25937 () Bool)

(declare-fun isEmpty!666 (List!1582) Bool)

(declare-fun list!618 (BalanceConc!980) List!1582)

(assert (=> d!22508 (= lt!25937 (isEmpty!666 (list!618 (_2!1055 lt!25923))))))

(declare-fun isEmpty!667 (Conc!488) Bool)

(assert (=> d!22508 (= lt!25937 (isEmpty!667 (c!23968 (_2!1055 lt!25923))))))

(assert (=> d!22508 (= (isEmpty!663 (_2!1055 lt!25923)) lt!25937)))

(declare-fun bs!9589 () Bool)

(assert (= bs!9589 d!22508))

(declare-fun m!81994 () Bool)

(assert (=> bs!9589 m!81994))

(assert (=> bs!9589 m!81994))

(declare-fun m!81996 () Bool)

(assert (=> bs!9589 m!81996))

(declare-fun m!81998 () Bool)

(assert (=> bs!9589 m!81998))

(assert (=> b!97755 d!22508))

(declare-fun b!97800 () Bool)

(declare-fun e!54176 () Bool)

(declare-fun lt!25943 () tuple2!1696)

(declare-fun isEmpty!668 (BalanceConc!982) Bool)

(assert (=> b!97800 (= e!54176 (not (isEmpty!668 (_1!1055 lt!25943))))))

(declare-fun d!22510 () Bool)

(declare-fun e!54178 () Bool)

(assert (=> d!22510 e!54178))

(declare-fun res!47610 () Bool)

(assert (=> d!22510 (=> (not res!47610) (not e!54178))))

(declare-fun e!54177 () Bool)

(assert (=> d!22510 (= res!47610 e!54177)))

(declare-fun c!23977 () Bool)

(declare-fun size!1388 (BalanceConc!982) Int)

(assert (=> d!22510 (= c!23977 (> (size!1388 (_1!1055 lt!25943)) 0))))

(declare-fun lexTailRecV2!63 (LexerInterface!236 List!1584 BalanceConc!980 BalanceConc!980 BalanceConc!980 BalanceConc!982) tuple2!1696)

(assert (=> d!22510 (= lt!25943 (lexTailRecV2!63 thiss!19403 rules!2471 (seqFromList!183 input!2238) (BalanceConc!981 Empty!488) (seqFromList!183 input!2238) (BalanceConc!983 Empty!489)))))

(assert (=> d!22510 (= (lex!142 thiss!19403 rules!2471 (seqFromList!183 input!2238)) lt!25943)))

(declare-fun b!97801 () Bool)

(assert (=> b!97801 (= e!54177 e!54176)))

(declare-fun res!47608 () Bool)

(declare-fun size!1389 (BalanceConc!980) Int)

(assert (=> b!97801 (= res!47608 (< (size!1389 (_2!1055 lt!25943)) (size!1389 (seqFromList!183 input!2238))))))

(assert (=> b!97801 (=> (not res!47608) (not e!54176))))

(declare-fun b!97802 () Bool)

(declare-fun res!47609 () Bool)

(assert (=> b!97802 (=> (not res!47609) (not e!54178))))

(declare-datatypes ((tuple2!1700 0))(
  ( (tuple2!1701 (_1!1057 List!1585) (_2!1057 List!1582)) )
))
(declare-fun lexList!66 (LexerInterface!236 List!1584 List!1582) tuple2!1700)

(assert (=> b!97802 (= res!47609 (= (list!616 (_1!1055 lt!25943)) (_1!1057 (lexList!66 thiss!19403 rules!2471 (list!618 (seqFromList!183 input!2238))))))))

(declare-fun b!97803 () Bool)

(assert (=> b!97803 (= e!54177 (= (_2!1055 lt!25943) (seqFromList!183 input!2238)))))

(declare-fun b!97804 () Bool)

(assert (=> b!97804 (= e!54178 (= (list!618 (_2!1055 lt!25943)) (_2!1057 (lexList!66 thiss!19403 rules!2471 (list!618 (seqFromList!183 input!2238))))))))

(assert (= (and d!22510 c!23977) b!97801))

(assert (= (and d!22510 (not c!23977)) b!97803))

(assert (= (and b!97801 res!47608) b!97800))

(assert (= (and d!22510 res!47610) b!97802))

(assert (= (and b!97802 res!47609) b!97804))

(declare-fun m!82010 () Bool)

(assert (=> b!97802 m!82010))

(assert (=> b!97802 m!81968))

(declare-fun m!82012 () Bool)

(assert (=> b!97802 m!82012))

(assert (=> b!97802 m!82012))

(declare-fun m!82014 () Bool)

(assert (=> b!97802 m!82014))

(declare-fun m!82016 () Bool)

(assert (=> d!22510 m!82016))

(assert (=> d!22510 m!81968))

(assert (=> d!22510 m!81968))

(declare-fun m!82018 () Bool)

(assert (=> d!22510 m!82018))

(declare-fun m!82020 () Bool)

(assert (=> b!97804 m!82020))

(assert (=> b!97804 m!81968))

(assert (=> b!97804 m!82012))

(assert (=> b!97804 m!82012))

(assert (=> b!97804 m!82014))

(declare-fun m!82022 () Bool)

(assert (=> b!97801 m!82022))

(assert (=> b!97801 m!81968))

(declare-fun m!82024 () Bool)

(assert (=> b!97801 m!82024))

(declare-fun m!82026 () Bool)

(assert (=> b!97800 m!82026))

(assert (=> b!97755 d!22510))

(declare-fun d!22520 () Bool)

(declare-fun fromListB!78 (List!1582) BalanceConc!980)

(assert (=> d!22520 (= (seqFromList!183 input!2238) (fromListB!78 input!2238))))

(declare-fun bs!9591 () Bool)

(assert (= bs!9591 d!22520))

(declare-fun m!82028 () Bool)

(assert (=> bs!9591 m!82028))

(assert (=> b!97755 d!22520))

(declare-fun d!22522 () Bool)

(declare-fun list!619 (Conc!489) List!1585)

(assert (=> d!22522 (= (list!616 (_1!1055 lt!25923)) (list!619 (c!23970 (_1!1055 lt!25923))))))

(declare-fun bs!9592 () Bool)

(assert (= bs!9592 d!22522))

(declare-fun m!82030 () Bool)

(assert (=> bs!9592 m!82030))

(assert (=> b!97759 d!22522))

(declare-fun d!22524 () Bool)

(assert (=> d!22524 (= (inv!1922 (tag!522 (h!6975 rules!2471))) (= (mod (str.len (value!12673 (tag!522 (h!6975 rules!2471)))) 2) 0))))

(assert (=> b!97758 d!22524))

(declare-fun d!22526 () Bool)

(declare-fun res!47613 () Bool)

(declare-fun e!54181 () Bool)

(assert (=> d!22526 (=> (not res!47613) (not e!54181))))

(declare-fun semiInverseModEq!80 (Int Int) Bool)

(assert (=> d!22526 (= res!47613 (semiInverseModEq!80 (toChars!754 (transformation!344 (h!6975 rules!2471))) (toValue!895 (transformation!344 (h!6975 rules!2471)))))))

(assert (=> d!22526 (= (inv!1925 (transformation!344 (h!6975 rules!2471))) e!54181)))

(declare-fun b!97807 () Bool)

(declare-fun equivClasses!75 (Int Int) Bool)

(assert (=> b!97807 (= e!54181 (equivClasses!75 (toChars!754 (transformation!344 (h!6975 rules!2471))) (toValue!895 (transformation!344 (h!6975 rules!2471)))))))

(assert (= (and d!22526 res!47613) b!97807))

(declare-fun m!82032 () Bool)

(assert (=> d!22526 m!82032))

(declare-fun m!82034 () Bool)

(assert (=> b!97807 m!82034))

(assert (=> b!97758 d!22526))

(declare-fun d!22528 () Bool)

(assert (=> d!22528 (= (isEmpty!662 rules!2471) (is-Nil!1578 rules!2471))))

(assert (=> b!97753 d!22528))

(declare-fun d!22530 () Bool)

(assert (=> d!22530 (= (list!616 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))) (list!619 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))))

(declare-fun bs!9593 () Bool)

(assert (= bs!9593 d!22530))

(declare-fun m!82036 () Bool)

(assert (=> bs!9593 m!82036))

(assert (=> b!97752 d!22530))

(declare-fun d!22532 () Bool)

(declare-fun fromListB!79 (List!1585) BalanceConc!982)

(assert (=> d!22532 (= (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))) (fromListB!79 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))

(declare-fun bs!9594 () Bool)

(assert (= bs!9594 d!22532))

(assert (=> bs!9594 m!81956))

(declare-fun m!82038 () Bool)

(assert (=> bs!9594 m!82038))

(assert (=> b!97752 d!22532))

(declare-fun d!22534 () Bool)

(assert (=> d!22534 (= ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)) (Cons!1579 (h!6976 lt!25925) (t!21106 lt!25925)))))

(assert (=> b!97752 d!22534))

(declare-fun d!22536 () Bool)

(declare-fun res!47616 () Bool)

(declare-fun e!54184 () Bool)

(assert (=> d!22536 (=> (not res!47616) (not e!54184))))

(declare-fun rulesValid!88 (LexerInterface!236 List!1584) Bool)

(assert (=> d!22536 (= res!47616 (rulesValid!88 thiss!19403 rules!2471))))

(assert (=> d!22536 (= (rulesInvariant!230 thiss!19403 rules!2471) e!54184)))

(declare-fun b!97810 () Bool)

(declare-datatypes ((List!1590 0))(
  ( (Nil!1584) (Cons!1584 (h!6981 String!2063) (t!21112 List!1590)) )
))
(declare-fun noDuplicateTag!88 (LexerInterface!236 List!1584 List!1590) Bool)

(assert (=> b!97810 (= e!54184 (noDuplicateTag!88 thiss!19403 rules!2471 Nil!1584))))

(assert (= (and d!22536 res!47616) b!97810))

(declare-fun m!82040 () Bool)

(assert (=> d!22536 m!82040))

(declare-fun m!82042 () Bool)

(assert (=> b!97810 m!82042))

(assert (=> b!97751 d!22536))

(declare-fun b!97815 () Bool)

(declare-fun e!54187 () Bool)

(declare-fun tp!56279 () Bool)

(assert (=> b!97815 (= e!54187 (and tp_is_empty!747 tp!56279))))

(assert (=> b!97754 (= tp!56261 e!54187)))

(assert (= (and b!97754 (is-Cons!1576 (t!21103 input!2238))) b!97815))

(declare-fun b!97827 () Bool)

(declare-fun e!54190 () Bool)

(declare-fun tp!56294 () Bool)

(declare-fun tp!56290 () Bool)

(assert (=> b!97827 (= e!54190 (and tp!56294 tp!56290))))

(declare-fun b!97829 () Bool)

(declare-fun tp!56292 () Bool)

(declare-fun tp!56293 () Bool)

(assert (=> b!97829 (= e!54190 (and tp!56292 tp!56293))))

(declare-fun b!97826 () Bool)

(assert (=> b!97826 (= e!54190 tp_is_empty!747)))

(assert (=> b!97758 (= tp!56258 e!54190)))

(declare-fun b!97828 () Bool)

(declare-fun tp!56291 () Bool)

(assert (=> b!97828 (= e!54190 tp!56291)))

(assert (= (and b!97758 (is-ElementMatch!412 (regex!344 (h!6975 rules!2471)))) b!97826))

(assert (= (and b!97758 (is-Concat!746 (regex!344 (h!6975 rules!2471)))) b!97827))

(assert (= (and b!97758 (is-Star!412 (regex!344 (h!6975 rules!2471)))) b!97828))

(assert (= (and b!97758 (is-Union!412 (regex!344 (h!6975 rules!2471)))) b!97829))

(declare-fun b!97840 () Bool)

(declare-fun b_free!2917 () Bool)

(declare-fun b_next!2917 () Bool)

(assert (=> b!97840 (= b_free!2917 (not b_next!2917))))

(declare-fun tp!56305 () Bool)

(declare-fun b_and!4383 () Bool)

(assert (=> b!97840 (= tp!56305 b_and!4383)))

(declare-fun b_free!2919 () Bool)

(declare-fun b_next!2919 () Bool)

(assert (=> b!97840 (= b_free!2919 (not b_next!2919))))

(declare-fun tp!56306 () Bool)

(declare-fun b_and!4385 () Bool)

(assert (=> b!97840 (= tp!56306 b_and!4385)))

(declare-fun e!54200 () Bool)

(assert (=> b!97840 (= e!54200 (and tp!56305 tp!56306))))

(declare-fun b!97839 () Bool)

(declare-fun e!54202 () Bool)

(declare-fun tp!56304 () Bool)

(assert (=> b!97839 (= e!54202 (and tp!56304 (inv!1922 (tag!522 (h!6975 (t!21105 rules!2471)))) (inv!1925 (transformation!344 (h!6975 (t!21105 rules!2471)))) e!54200))))

(declare-fun b!97838 () Bool)

(declare-fun e!54201 () Bool)

(declare-fun tp!56303 () Bool)

(assert (=> b!97838 (= e!54201 (and e!54202 tp!56303))))

(assert (=> b!97757 (= tp!56257 e!54201)))

(assert (= b!97839 b!97840))

(assert (= b!97838 b!97839))

(assert (= (and b!97757 (is-Cons!1578 (t!21105 rules!2471))) b!97838))

(declare-fun m!82044 () Bool)

(assert (=> b!97839 m!82044))

(declare-fun m!82046 () Bool)

(assert (=> b!97839 m!82046))

(push 1)

(assert (not b_next!2911))

(assert (not b!97802))

(assert tp_is_empty!747)

(assert b_and!4385)

(assert (not d!22536))

(assert (not d!22526))

(assert (not b!97804))

(assert (not d!22530))

(assert (not b!97801))

(assert (not b!97815))

(assert (not b!97829))

(assert b_and!4383)

(assert (not d!22522))

(assert (not b!97839))

(assert (not b_next!2917))

(assert (not d!22520))

(assert (not d!22508))

(assert (not b!97827))

(assert (not b!97807))

(assert (not b_next!2909))

(assert (not b!97838))

(assert (not d!22510))

(assert (not b!97828))

(assert (not d!22532))

(assert b_and!4375)

(assert (not b!97800))

(assert b_and!4377)

(assert (not b!97810))

(assert (not b_next!2919))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2911))

(assert b_and!4385)

(assert (not b_next!2917))

(assert (not b_next!2909))

(assert (not b_next!2919))

(assert b_and!4383)

(assert b_and!4375)

(assert b_and!4377)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22548 () Bool)

(declare-fun lt!25949 () Bool)

(declare-fun isEmpty!672 (List!1585) Bool)

(assert (=> d!22548 (= lt!25949 (isEmpty!672 (list!616 (_1!1055 lt!25943))))))

(declare-fun isEmpty!673 (Conc!489) Bool)

(assert (=> d!22548 (= lt!25949 (isEmpty!673 (c!23970 (_1!1055 lt!25943))))))

(assert (=> d!22548 (= (isEmpty!668 (_1!1055 lt!25943)) lt!25949)))

(declare-fun bs!9599 () Bool)

(assert (= bs!9599 d!22548))

(assert (=> bs!9599 m!82010))

(assert (=> bs!9599 m!82010))

(declare-fun m!82078 () Bool)

(assert (=> bs!9599 m!82078))

(declare-fun m!82080 () Bool)

(assert (=> bs!9599 m!82080))

(assert (=> b!97800 d!22548))

(declare-fun b!97897 () Bool)

(declare-fun e!54234 () List!1585)

(declare-fun ++!223 (List!1585 List!1585) List!1585)

(assert (=> b!97897 (= e!54234 (++!223 (list!619 (left!1202 (c!23970 (_1!1055 lt!25923)))) (list!619 (right!1532 (c!23970 (_1!1055 lt!25923))))))))

(declare-fun d!22554 () Bool)

(declare-fun c!23985 () Bool)

(assert (=> d!22554 (= c!23985 (is-Empty!489 (c!23970 (_1!1055 lt!25923))))))

(declare-fun e!54233 () List!1585)

(assert (=> d!22554 (= (list!619 (c!23970 (_1!1055 lt!25923))) e!54233)))

(declare-fun b!97894 () Bool)

(assert (=> b!97894 (= e!54233 Nil!1579)))

(declare-fun b!97895 () Bool)

(assert (=> b!97895 (= e!54233 e!54234)))

(declare-fun c!23986 () Bool)

(assert (=> b!97895 (= c!23986 (is-Leaf!797 (c!23970 (_1!1055 lt!25923))))))

(declare-fun b!97896 () Bool)

(declare-fun list!622 (IArray!979) List!1585)

(assert (=> b!97896 (= e!54234 (list!622 (xs!3076 (c!23970 (_1!1055 lt!25923)))))))

(assert (= (and d!22554 c!23985) b!97894))

(assert (= (and d!22554 (not c!23985)) b!97895))

(assert (= (and b!97895 c!23986) b!97896))

(assert (= (and b!97895 (not c!23986)) b!97897))

(declare-fun m!82082 () Bool)

(assert (=> b!97897 m!82082))

(declare-fun m!82084 () Bool)

(assert (=> b!97897 m!82084))

(assert (=> b!97897 m!82082))

(assert (=> b!97897 m!82084))

(declare-fun m!82086 () Bool)

(assert (=> b!97897 m!82086))

(declare-fun m!82088 () Bool)

(assert (=> b!97896 m!82088))

(assert (=> d!22522 d!22554))

(declare-fun d!22556 () Bool)

(declare-fun e!54241 () Bool)

(assert (=> d!22556 e!54241))

(declare-fun res!47633 () Bool)

(assert (=> d!22556 (=> (not res!47633) (not e!54241))))

(declare-fun lt!25952 () BalanceConc!982)

(assert (=> d!22556 (= res!47633 (= (list!616 lt!25952) ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))

(declare-fun fromList!50 (List!1585) Conc!489)

(assert (=> d!22556 (= lt!25952 (BalanceConc!983 (fromList!50 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))))))

(assert (=> d!22556 (= (fromListB!79 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))) lt!25952)))

(declare-fun b!97903 () Bool)

(declare-fun isBalanced!117 (Conc!489) Bool)

(assert (=> b!97903 (= e!54241 (isBalanced!117 (fromList!50 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))))))

(assert (= (and d!22556 res!47633) b!97903))

(declare-fun m!82094 () Bool)

(assert (=> d!22556 m!82094))

(assert (=> d!22556 m!81956))

(declare-fun m!82096 () Bool)

(assert (=> d!22556 m!82096))

(assert (=> b!97903 m!81956))

(assert (=> b!97903 m!82096))

(assert (=> b!97903 m!82096))

(declare-fun m!82098 () Bool)

(assert (=> b!97903 m!82098))

(assert (=> d!22532 d!22556))

(declare-fun d!22558 () Bool)

(assert (=> d!22558 (= (isEmpty!666 (list!618 (_2!1055 lt!25923))) (is-Nil!1576 (list!618 (_2!1055 lt!25923))))))

(assert (=> d!22508 d!22558))

(declare-fun d!22560 () Bool)

(declare-fun list!623 (Conc!488) List!1582)

(assert (=> d!22560 (= (list!618 (_2!1055 lt!25923)) (list!623 (c!23968 (_2!1055 lt!25923))))))

(declare-fun bs!9600 () Bool)

(assert (= bs!9600 d!22560))

(declare-fun m!82100 () Bool)

(assert (=> bs!9600 m!82100))

(assert (=> d!22508 d!22560))

(declare-fun d!22562 () Bool)

(declare-fun lt!25955 () Bool)

(assert (=> d!22562 (= lt!25955 (isEmpty!666 (list!623 (c!23968 (_2!1055 lt!25923)))))))

(declare-fun size!1392 (Conc!488) Int)

(assert (=> d!22562 (= lt!25955 (= (size!1392 (c!23968 (_2!1055 lt!25923))) 0))))

(assert (=> d!22562 (= (isEmpty!667 (c!23968 (_2!1055 lt!25923))) lt!25955)))

(declare-fun bs!9601 () Bool)

(assert (= bs!9601 d!22562))

(assert (=> bs!9601 m!82100))

(assert (=> bs!9601 m!82100))

(declare-fun m!82102 () Bool)

(assert (=> bs!9601 m!82102))

(declare-fun m!82104 () Bool)

(assert (=> bs!9601 m!82104))

(assert (=> d!22508 d!22562))

(declare-fun d!22564 () Bool)

(assert (=> d!22564 true))

(declare-fun order!687 () Int)

(declare-fun order!685 () Int)

(declare-fun lambda!1744 () Int)

(declare-fun dynLambda!447 (Int Int) Int)

(declare-fun dynLambda!448 (Int Int) Int)

(assert (=> d!22564 (< (dynLambda!447 order!685 (toValue!895 (transformation!344 (h!6975 rules!2471)))) (dynLambda!448 order!687 lambda!1744))))

(declare-fun Forall2!48 (Int) Bool)

(assert (=> d!22564 (= (equivClasses!75 (toChars!754 (transformation!344 (h!6975 rules!2471))) (toValue!895 (transformation!344 (h!6975 rules!2471)))) (Forall2!48 lambda!1744))))

(declare-fun bs!9604 () Bool)

(assert (= bs!9604 d!22564))

(declare-fun m!82134 () Bool)

(assert (=> bs!9604 m!82134))

(assert (=> b!97807 d!22564))

(declare-fun d!22580 () Bool)

(declare-fun res!47650 () Bool)

(declare-fun e!54264 () Bool)

(assert (=> d!22580 (=> res!47650 e!54264)))

(assert (=> d!22580 (= res!47650 (is-Nil!1578 rules!2471))))

(assert (=> d!22580 (= (noDuplicateTag!88 thiss!19403 rules!2471 Nil!1584) e!54264)))

(declare-fun b!97940 () Bool)

(declare-fun e!54265 () Bool)

(assert (=> b!97940 (= e!54264 e!54265)))

(declare-fun res!47651 () Bool)

(assert (=> b!97940 (=> (not res!47651) (not e!54265))))

(declare-fun contains!251 (List!1590 String!2063) Bool)

(assert (=> b!97940 (= res!47651 (not (contains!251 Nil!1584 (tag!522 (h!6975 rules!2471)))))))

(declare-fun b!97941 () Bool)

(assert (=> b!97941 (= e!54265 (noDuplicateTag!88 thiss!19403 (t!21105 rules!2471) (Cons!1584 (tag!522 (h!6975 rules!2471)) Nil!1584)))))

(assert (= (and d!22580 (not res!47650)) b!97940))

(assert (= (and b!97940 res!47651) b!97941))

(declare-fun m!82136 () Bool)

(assert (=> b!97940 m!82136))

(declare-fun m!82138 () Bool)

(assert (=> b!97941 m!82138))

(assert (=> b!97810 d!22580))

(declare-fun d!22582 () Bool)

(assert (=> d!22582 (= (list!618 (_2!1055 lt!25943)) (list!623 (c!23968 (_2!1055 lt!25943))))))

(declare-fun bs!9605 () Bool)

(assert (= bs!9605 d!22582))

(declare-fun m!82140 () Bool)

(assert (=> bs!9605 m!82140))

(assert (=> b!97804 d!22582))

(declare-fun b!97952 () Bool)

(declare-fun e!54272 () tuple2!1700)

(assert (=> b!97952 (= e!54272 (tuple2!1701 Nil!1579 (list!618 (seqFromList!183 input!2238))))))

(declare-fun b!97953 () Bool)

(declare-fun e!54274 () Bool)

(declare-fun e!54273 () Bool)

(assert (=> b!97953 (= e!54274 e!54273)))

(declare-fun res!47654 () Bool)

(declare-fun lt!25971 () tuple2!1700)

(declare-fun size!1393 (List!1582) Int)

(assert (=> b!97953 (= res!47654 (< (size!1393 (_2!1057 lt!25971)) (size!1393 (list!618 (seqFromList!183 input!2238)))))))

(assert (=> b!97953 (=> (not res!47654) (not e!54273))))

(declare-fun b!97954 () Bool)

(assert (=> b!97954 (= e!54273 (not (isEmpty!672 (_1!1057 lt!25971))))))

(declare-fun b!97955 () Bool)

(declare-datatypes ((tuple2!1704 0))(
  ( (tuple2!1705 (_1!1059 Token!444) (_2!1059 List!1582)) )
))
(declare-datatypes ((Option!165 0))(
  ( (None!164) (Some!164 (v!12937 tuple2!1704)) )
))
(declare-fun lt!25973 () Option!165)

(declare-fun lt!25972 () tuple2!1700)

(assert (=> b!97955 (= e!54272 (tuple2!1701 (Cons!1579 (_1!1059 (v!12937 lt!25973)) (_1!1057 lt!25972)) (_2!1057 lt!25972)))))

(assert (=> b!97955 (= lt!25972 (lexList!66 thiss!19403 rules!2471 (_2!1059 (v!12937 lt!25973))))))

(declare-fun b!97956 () Bool)

(assert (=> b!97956 (= e!54274 (= (_2!1057 lt!25971) (list!618 (seqFromList!183 input!2238))))))

(declare-fun d!22584 () Bool)

(assert (=> d!22584 e!54274))

(declare-fun c!24005 () Bool)

(declare-fun size!1394 (List!1585) Int)

(assert (=> d!22584 (= c!24005 (> (size!1394 (_1!1057 lt!25971)) 0))))

(assert (=> d!22584 (= lt!25971 e!54272)))

(declare-fun c!24004 () Bool)

(assert (=> d!22584 (= c!24004 (is-Some!164 lt!25973))))

(declare-fun maxPrefix!76 (LexerInterface!236 List!1584 List!1582) Option!165)

(assert (=> d!22584 (= lt!25973 (maxPrefix!76 thiss!19403 rules!2471 (list!618 (seqFromList!183 input!2238))))))

(assert (=> d!22584 (= (lexList!66 thiss!19403 rules!2471 (list!618 (seqFromList!183 input!2238))) lt!25971)))

(assert (= (and d!22584 c!24004) b!97955))

(assert (= (and d!22584 (not c!24004)) b!97952))

(assert (= (and d!22584 c!24005) b!97953))

(assert (= (and d!22584 (not c!24005)) b!97956))

(assert (= (and b!97953 res!47654) b!97954))

(declare-fun m!82142 () Bool)

(assert (=> b!97953 m!82142))

(assert (=> b!97953 m!82012))

(declare-fun m!82144 () Bool)

(assert (=> b!97953 m!82144))

(declare-fun m!82146 () Bool)

(assert (=> b!97954 m!82146))

(declare-fun m!82148 () Bool)

(assert (=> b!97955 m!82148))

(declare-fun m!82150 () Bool)

(assert (=> d!22584 m!82150))

(assert (=> d!22584 m!82012))

(declare-fun m!82152 () Bool)

(assert (=> d!22584 m!82152))

(assert (=> b!97804 d!22584))

(declare-fun d!22586 () Bool)

(assert (=> d!22586 (= (list!618 (seqFromList!183 input!2238)) (list!623 (c!23968 (seqFromList!183 input!2238))))))

(declare-fun bs!9606 () Bool)

(assert (= bs!9606 d!22586))

(declare-fun m!82154 () Bool)

(assert (=> bs!9606 m!82154))

(assert (=> b!97804 d!22586))

(declare-fun b!97960 () Bool)

(declare-fun e!54276 () List!1585)

(assert (=> b!97960 (= e!54276 (++!223 (list!619 (left!1202 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))))) (list!619 (right!1532 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))))))

(declare-fun d!22588 () Bool)

(declare-fun c!24006 () Bool)

(assert (=> d!22588 (= c!24006 (is-Empty!489 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))))

(declare-fun e!54275 () List!1585)

(assert (=> d!22588 (= (list!619 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))) e!54275)))

(declare-fun b!97957 () Bool)

(assert (=> b!97957 (= e!54275 Nil!1579)))

(declare-fun b!97958 () Bool)

(assert (=> b!97958 (= e!54275 e!54276)))

(declare-fun c!24007 () Bool)

(assert (=> b!97958 (= c!24007 (is-Leaf!797 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925))))))))

(declare-fun b!97959 () Bool)

(assert (=> b!97959 (= e!54276 (list!622 (xs!3076 (c!23970 (seqFromList!182 ($colon$colon!31 (t!21106 lt!25925) (h!6976 lt!25925)))))))))

(assert (= (and d!22588 c!24006) b!97957))

(assert (= (and d!22588 (not c!24006)) b!97958))

(assert (= (and b!97958 c!24007) b!97959))

(assert (= (and b!97958 (not c!24007)) b!97960))

(declare-fun m!82156 () Bool)

(assert (=> b!97960 m!82156))

(declare-fun m!82158 () Bool)

(assert (=> b!97960 m!82158))

(assert (=> b!97960 m!82156))

(assert (=> b!97960 m!82158))

(declare-fun m!82160 () Bool)

(assert (=> b!97960 m!82160))

(declare-fun m!82162 () Bool)

(assert (=> b!97959 m!82162))

(assert (=> d!22530 d!22588))

(declare-fun d!22590 () Bool)

(declare-fun lt!25976 () Int)

(assert (=> d!22590 (= lt!25976 (size!1394 (list!616 (_1!1055 lt!25943))))))

(declare-fun size!1395 (Conc!489) Int)

(assert (=> d!22590 (= lt!25976 (size!1395 (c!23970 (_1!1055 lt!25943))))))

(assert (=> d!22590 (= (size!1388 (_1!1055 lt!25943)) lt!25976)))

(declare-fun bs!9607 () Bool)

(assert (= bs!9607 d!22590))

(assert (=> bs!9607 m!82010))

(assert (=> bs!9607 m!82010))

(declare-fun m!82164 () Bool)

(assert (=> bs!9607 m!82164))

(declare-fun m!82166 () Bool)

(assert (=> bs!9607 m!82166))

(assert (=> d!22510 d!22590))

(declare-fun b!97975 () Bool)

(declare-fun lt!26064 () BalanceConc!980)

(declare-fun e!54286 () tuple2!1696)

(declare-datatypes ((tuple2!1706 0))(
  ( (tuple2!1707 (_1!1060 Token!444) (_2!1060 BalanceConc!980)) )
))
(declare-datatypes ((Option!166 0))(
  ( (None!165) (Some!165 (v!12938 tuple2!1706)) )
))
(declare-fun lt!26057 () Option!166)

(declare-fun append!52 (BalanceConc!982 Token!444) BalanceConc!982)

(assert (=> b!97975 (= e!54286 (lexTailRecV2!63 thiss!19403 rules!2471 (seqFromList!183 input!2238) lt!26064 (_2!1060 (v!12938 lt!26057)) (append!52 (BalanceConc!983 Empty!489) (_1!1060 (v!12938 lt!26057)))))))

(declare-fun lt!26052 () tuple2!1696)

(declare-fun lexRec!43 (LexerInterface!236 List!1584 BalanceConc!980) tuple2!1696)

(assert (=> b!97975 (= lt!26052 (lexRec!43 thiss!19403 rules!2471 (_2!1060 (v!12938 lt!26057))))))

(declare-fun lt!26068 () List!1582)

(assert (=> b!97975 (= lt!26068 (list!618 (BalanceConc!981 Empty!488)))))

(declare-fun lt!26069 () List!1582)

(declare-fun charsOf!77 (Token!444) BalanceConc!980)

(assert (=> b!97975 (= lt!26069 (list!618 (charsOf!77 (_1!1060 (v!12938 lt!26057)))))))

(declare-fun lt!26066 () List!1582)

(assert (=> b!97975 (= lt!26066 (list!618 (_2!1060 (v!12938 lt!26057))))))

(declare-datatypes ((Unit!1036 0))(
  ( (Unit!1037) )
))
(declare-fun lt!26063 () Unit!1036)

(declare-fun lemmaConcatAssociativity!86 (List!1582 List!1582 List!1582) Unit!1036)

(assert (=> b!97975 (= lt!26063 (lemmaConcatAssociativity!86 lt!26068 lt!26069 lt!26066))))

(declare-fun ++!224 (List!1582 List!1582) List!1582)

(assert (=> b!97975 (= (++!224 (++!224 lt!26068 lt!26069) lt!26066) (++!224 lt!26068 (++!224 lt!26069 lt!26066)))))

(declare-fun lt!26046 () Unit!1036)

(assert (=> b!97975 (= lt!26046 lt!26063)))

(declare-fun lt!26076 () Option!166)

(declare-fun maxPrefixZipperSequence!41 (LexerInterface!236 List!1584 BalanceConc!980) Option!166)

(assert (=> b!97975 (= lt!26076 (maxPrefixZipperSequence!41 thiss!19403 rules!2471 (seqFromList!183 input!2238)))))

(declare-fun c!24016 () Bool)

(assert (=> b!97975 (= c!24016 (is-Some!165 lt!26076))))

(declare-fun e!54285 () tuple2!1696)

(assert (=> b!97975 (= (lexRec!43 thiss!19403 rules!2471 (seqFromList!183 input!2238)) e!54285)))

(declare-fun lt!26062 () Unit!1036)

(declare-fun Unit!1038 () Unit!1036)

(assert (=> b!97975 (= lt!26062 Unit!1038)))

(declare-fun lt!26053 () List!1585)

(assert (=> b!97975 (= lt!26053 (list!616 (BalanceConc!983 Empty!489)))))

(declare-fun lt!26075 () List!1585)

(assert (=> b!97975 (= lt!26075 (Cons!1579 (_1!1060 (v!12938 lt!26057)) Nil!1579))))

(declare-fun lt!26078 () List!1585)

(assert (=> b!97975 (= lt!26078 (list!616 (_1!1055 lt!26052)))))

(declare-fun lt!26048 () Unit!1036)

(declare-fun lemmaConcatAssociativity!87 (List!1585 List!1585 List!1585) Unit!1036)

(assert (=> b!97975 (= lt!26048 (lemmaConcatAssociativity!87 lt!26053 lt!26075 lt!26078))))

(assert (=> b!97975 (= (++!223 (++!223 lt!26053 lt!26075) lt!26078) (++!223 lt!26053 (++!223 lt!26075 lt!26078)))))

(declare-fun lt!26074 () Unit!1036)

(assert (=> b!97975 (= lt!26074 lt!26048)))

(declare-fun lt!26059 () List!1582)

(assert (=> b!97975 (= lt!26059 (++!224 (list!618 (BalanceConc!981 Empty!488)) (list!618 (charsOf!77 (_1!1060 (v!12938 lt!26057))))))))

(declare-fun lt!26050 () List!1582)

(assert (=> b!97975 (= lt!26050 (list!618 (_2!1060 (v!12938 lt!26057))))))

(declare-fun lt!26071 () List!1585)

(assert (=> b!97975 (= lt!26071 (list!616 (append!52 (BalanceConc!983 Empty!489) (_1!1060 (v!12938 lt!26057)))))))

(declare-fun lt!26065 () Unit!1036)

(declare-fun lemmaLexThenLexPrefix!38 (LexerInterface!236 List!1584 List!1582 List!1582 List!1585 List!1585 List!1582) Unit!1036)

(assert (=> b!97975 (= lt!26065 (lemmaLexThenLexPrefix!38 thiss!19403 rules!2471 lt!26059 lt!26050 lt!26071 (list!616 (_1!1055 lt!26052)) (list!618 (_2!1055 lt!26052))))))

(assert (=> b!97975 (= (lexList!66 thiss!19403 rules!2471 lt!26059) (tuple2!1701 lt!26071 Nil!1576))))

(declare-fun lt!26061 () Unit!1036)

(assert (=> b!97975 (= lt!26061 lt!26065)))

(declare-fun lt!26058 () BalanceConc!980)

(declare-fun ++!225 (BalanceConc!980 BalanceConc!980) BalanceConc!980)

(assert (=> b!97975 (= lt!26058 (++!225 (BalanceConc!981 Empty!488) (charsOf!77 (_1!1060 (v!12938 lt!26057)))))))

(declare-fun lt!26051 () Option!166)

(assert (=> b!97975 (= lt!26051 (maxPrefixZipperSequence!41 thiss!19403 rules!2471 lt!26058))))

(declare-fun c!24014 () Bool)

(assert (=> b!97975 (= c!24014 (is-Some!165 lt!26051))))

(declare-fun e!54287 () tuple2!1696)

(assert (=> b!97975 (= (lexRec!43 thiss!19403 rules!2471 (++!225 (BalanceConc!981 Empty!488) (charsOf!77 (_1!1060 (v!12938 lt!26057))))) e!54287)))

(declare-fun lt!26045 () Unit!1036)

(declare-fun Unit!1039 () Unit!1036)

(assert (=> b!97975 (= lt!26045 Unit!1039)))

(assert (=> b!97975 (= lt!26064 (++!225 (BalanceConc!981 Empty!488) (charsOf!77 (_1!1060 (v!12938 lt!26057)))))))

(declare-fun lt!26047 () List!1582)

(assert (=> b!97975 (= lt!26047 (list!618 lt!26064))))

(declare-fun lt!26049 () List!1582)

(assert (=> b!97975 (= lt!26049 (list!618 (_2!1060 (v!12938 lt!26057))))))

(declare-fun lt!26060 () Unit!1036)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!38 (List!1582 List!1582) Unit!1036)

(assert (=> b!97975 (= lt!26060 (lemmaConcatTwoListThenFSndIsSuffix!38 lt!26047 lt!26049))))

(declare-fun isSuffix!38 (List!1582 List!1582) Bool)

(assert (=> b!97975 (isSuffix!38 lt!26049 (++!224 lt!26047 lt!26049))))

(declare-fun lt!26072 () Unit!1036)

(assert (=> b!97975 (= lt!26072 lt!26060)))

(declare-fun lt!26056 () tuple2!1696)

(declare-fun b!97976 () Bool)

(assert (=> b!97976 (= lt!26056 (lexRec!43 thiss!19403 rules!2471 (_2!1060 (v!12938 lt!26076))))))

(declare-fun prepend!112 (BalanceConc!982 Token!444) BalanceConc!982)

(assert (=> b!97976 (= e!54285 (tuple2!1697 (prepend!112 (_1!1055 lt!26056) (_1!1060 (v!12938 lt!26076))) (_2!1055 lt!26056)))))

(declare-fun b!97977 () Bool)

(assert (=> b!97977 (= e!54285 (tuple2!1697 (BalanceConc!983 Empty!489) (seqFromList!183 input!2238)))))

(declare-fun b!97978 () Bool)

(declare-fun lt!26054 () tuple2!1696)

(declare-fun e!54288 () Bool)

(assert (=> b!97978 (= e!54288 (= (list!618 (_2!1055 lt!26054)) (list!618 (_2!1055 (lexRec!43 thiss!19403 rules!2471 (seqFromList!183 input!2238))))))))

(declare-fun b!97979 () Bool)

(assert (=> b!97979 (= e!54286 (tuple2!1697 (BalanceConc!983 Empty!489) (seqFromList!183 input!2238)))))

(declare-fun b!97980 () Bool)

(declare-fun lt!26073 () tuple2!1696)

(assert (=> b!97980 (= lt!26073 (lexRec!43 thiss!19403 rules!2471 (_2!1060 (v!12938 lt!26051))))))

(assert (=> b!97980 (= e!54287 (tuple2!1697 (prepend!112 (_1!1055 lt!26073) (_1!1060 (v!12938 lt!26051))) (_2!1055 lt!26073)))))

(declare-fun d!22592 () Bool)

(assert (=> d!22592 e!54288))

(declare-fun res!47657 () Bool)

(assert (=> d!22592 (=> (not res!47657) (not e!54288))))

(assert (=> d!22592 (= res!47657 (= (list!616 (_1!1055 lt!26054)) (list!616 (_1!1055 (lexRec!43 thiss!19403 rules!2471 (seqFromList!183 input!2238))))))))

(assert (=> d!22592 (= lt!26054 e!54286)))

(declare-fun c!24015 () Bool)

(assert (=> d!22592 (= c!24015 (is-Some!165 lt!26057))))

(declare-fun maxPrefixZipperSequenceV2!38 (LexerInterface!236 List!1584 BalanceConc!980 BalanceConc!980) Option!166)

(assert (=> d!22592 (= lt!26057 (maxPrefixZipperSequenceV2!38 thiss!19403 rules!2471 (seqFromList!183 input!2238) (seqFromList!183 input!2238)))))

(declare-fun lt!26055 () Unit!1036)

(declare-fun lt!26077 () Unit!1036)

(assert (=> d!22592 (= lt!26055 lt!26077)))

(declare-fun lt!26070 () List!1582)

(declare-fun lt!26067 () List!1582)

(assert (=> d!22592 (isSuffix!38 lt!26070 (++!224 lt!26067 lt!26070))))

(assert (=> d!22592 (= lt!26077 (lemmaConcatTwoListThenFSndIsSuffix!38 lt!26067 lt!26070))))

(assert (=> d!22592 (= lt!26070 (list!618 (seqFromList!183 input!2238)))))

(assert (=> d!22592 (= lt!26067 (list!618 (BalanceConc!981 Empty!488)))))

(assert (=> d!22592 (= (lexTailRecV2!63 thiss!19403 rules!2471 (seqFromList!183 input!2238) (BalanceConc!981 Empty!488) (seqFromList!183 input!2238) (BalanceConc!983 Empty!489)) lt!26054)))

(declare-fun b!97981 () Bool)

(assert (=> b!97981 (= e!54287 (tuple2!1697 (BalanceConc!983 Empty!489) lt!26058))))

(assert (= (and d!22592 c!24015) b!97975))

(assert (= (and d!22592 (not c!24015)) b!97979))

(assert (= (and b!97975 c!24016) b!97976))

(assert (= (and b!97975 (not c!24016)) b!97977))

(assert (= (and b!97975 c!24014) b!97980))

(assert (= (and b!97975 (not c!24014)) b!97981))

(assert (= (and d!22592 res!47657) b!97978))

(assert (=> d!22592 m!81968))

(assert (=> d!22592 m!82012))

(declare-fun m!82168 () Bool)

(assert (=> d!22592 m!82168))

(assert (=> d!22592 m!81968))

(assert (=> d!22592 m!81968))

(declare-fun m!82170 () Bool)

(assert (=> d!22592 m!82170))

(declare-fun m!82172 () Bool)

(assert (=> d!22592 m!82172))

(declare-fun m!82174 () Bool)

(assert (=> d!22592 m!82174))

(declare-fun m!82176 () Bool)

(assert (=> d!22592 m!82176))

(declare-fun m!82178 () Bool)

(assert (=> d!22592 m!82178))

(assert (=> d!22592 m!81968))

(declare-fun m!82180 () Bool)

(assert (=> d!22592 m!82180))

(assert (=> d!22592 m!82174))

(declare-fun m!82182 () Bool)

(assert (=> d!22592 m!82182))

(declare-fun m!82184 () Bool)

(assert (=> b!97976 m!82184))

(declare-fun m!82186 () Bool)

(assert (=> b!97976 m!82186))

(declare-fun m!82188 () Bool)

(assert (=> b!97975 m!82188))

(declare-fun m!82190 () Bool)

(assert (=> b!97975 m!82190))

(assert (=> b!97975 m!81968))

(assert (=> b!97975 m!82180))

(declare-fun m!82192 () Bool)

(assert (=> b!97975 m!82192))

(declare-fun m!82194 () Bool)

(assert (=> b!97975 m!82194))

(declare-fun m!82196 () Bool)

(assert (=> b!97975 m!82196))

(declare-fun m!82198 () Bool)

(assert (=> b!97975 m!82198))

(declare-fun m!82200 () Bool)

(assert (=> b!97975 m!82200))

(declare-fun m!82202 () Bool)

(assert (=> b!97975 m!82202))

(declare-fun m!82204 () Bool)

(assert (=> b!97975 m!82204))

(assert (=> b!97975 m!81968))

(declare-fun m!82206 () Bool)

(assert (=> b!97975 m!82206))

(declare-fun m!82208 () Bool)

(assert (=> b!97975 m!82208))

(assert (=> b!97975 m!82206))

(assert (=> b!97975 m!81968))

(declare-fun m!82210 () Bool)

(assert (=> b!97975 m!82210))

(declare-fun m!82212 () Bool)

(assert (=> b!97975 m!82212))

(declare-fun m!82214 () Bool)

(assert (=> b!97975 m!82214))

(assert (=> b!97975 m!82212))

(declare-fun m!82216 () Bool)

(assert (=> b!97975 m!82216))

(declare-fun m!82218 () Bool)

(assert (=> b!97975 m!82218))

(assert (=> b!97975 m!82192))

(declare-fun m!82220 () Bool)

(assert (=> b!97975 m!82220))

(assert (=> b!97975 m!82196))

(assert (=> b!97975 m!82204))

(declare-fun m!82222 () Bool)

(assert (=> b!97975 m!82222))

(declare-fun m!82224 () Bool)

(assert (=> b!97975 m!82224))

(assert (=> b!97975 m!82172))

(declare-fun m!82226 () Bool)

(assert (=> b!97975 m!82226))

(declare-fun m!82228 () Bool)

(assert (=> b!97975 m!82228))

(assert (=> b!97975 m!82222))

(declare-fun m!82230 () Bool)

(assert (=> b!97975 m!82230))

(declare-fun m!82232 () Bool)

(assert (=> b!97975 m!82232))

(declare-fun m!82234 () Bool)

(assert (=> b!97975 m!82234))

(assert (=> b!97975 m!82220))

(declare-fun m!82236 () Bool)

(assert (=> b!97975 m!82236))

(assert (=> b!97975 m!82226))

(declare-fun m!82238 () Bool)

(assert (=> b!97975 m!82238))

(assert (=> b!97975 m!82206))

(declare-fun m!82240 () Bool)

(assert (=> b!97975 m!82240))

(assert (=> b!97975 m!82200))

(declare-fun m!82242 () Bool)

(assert (=> b!97975 m!82242))

(assert (=> b!97975 m!82230))

(declare-fun m!82244 () Bool)

(assert (=> b!97975 m!82244))

(assert (=> b!97975 m!82172))

(assert (=> b!97975 m!82236))

(declare-fun m!82246 () Bool)

(assert (=> b!97975 m!82246))

(declare-fun m!82248 () Bool)

(assert (=> b!97975 m!82248))

(assert (=> b!97975 m!82220))

(declare-fun m!82250 () Bool)

(assert (=> b!97980 m!82250))

(declare-fun m!82252 () Bool)

(assert (=> b!97980 m!82252))

(declare-fun m!82254 () Bool)

(assert (=> b!97978 m!82254))

(assert (=> b!97978 m!81968))

(assert (=> b!97978 m!82180))

(declare-fun m!82256 () Bool)

(assert (=> b!97978 m!82256))

(assert (=> d!22510 d!22592))

(declare-fun d!22594 () Bool)

(assert (=> d!22594 true))

(declare-fun order!691 () Int)

(declare-fun order!689 () Int)

(declare-fun lambda!1749 () Int)

(declare-fun dynLambda!449 (Int Int) Int)

(declare-fun dynLambda!450 (Int Int) Int)

(assert (=> d!22594 (< (dynLambda!449 order!689 (toChars!754 (transformation!344 (h!6975 rules!2471)))) (dynLambda!450 order!691 lambda!1749))))

(assert (=> d!22594 true))

(assert (=> d!22594 (< (dynLambda!447 order!685 (toValue!895 (transformation!344 (h!6975 rules!2471)))) (dynLambda!450 order!691 lambda!1749))))

(declare-fun Forall!59 (Int) Bool)

(assert (=> d!22594 (= (semiInverseModEq!80 (toChars!754 (transformation!344 (h!6975 rules!2471))) (toValue!895 (transformation!344 (h!6975 rules!2471)))) (Forall!59 lambda!1749))))

(declare-fun bs!9608 () Bool)

(assert (= bs!9608 d!22594))

(declare-fun m!82258 () Bool)

(assert (=> bs!9608 m!82258))

(assert (=> d!22526 d!22594))

(declare-fun d!22596 () Bool)

(declare-fun e!54293 () Bool)

(assert (=> d!22596 e!54293))

(declare-fun res!47662 () Bool)

(assert (=> d!22596 (=> (not res!47662) (not e!54293))))

(declare-fun lt!26084 () BalanceConc!980)

(assert (=> d!22596 (= res!47662 (= (list!618 lt!26084) input!2238))))

(declare-fun fromList!51 (List!1582) Conc!488)

(assert (=> d!22596 (= lt!26084 (BalanceConc!981 (fromList!51 input!2238)))))

(assert (=> d!22596 (= (fromListB!78 input!2238) lt!26084)))

(declare-fun b!97992 () Bool)

(declare-fun isBalanced!118 (Conc!488) Bool)

(assert (=> b!97992 (= e!54293 (isBalanced!118 (fromList!51 input!2238)))))

(assert (= (and d!22596 res!47662) b!97992))

(declare-fun m!82266 () Bool)

(assert (=> d!22596 m!82266))

(declare-fun m!82268 () Bool)

(assert (=> d!22596 m!82268))

(assert (=> b!97992 m!82268))

(assert (=> b!97992 m!82268))

(declare-fun m!82270 () Bool)

(assert (=> b!97992 m!82270))

(assert (=> d!22520 d!22596))

(declare-fun d!22602 () Bool)

(assert (=> d!22602 true))

(declare-fun lt!26087 () Bool)

(declare-fun rulesValidInductive!66 (LexerInterface!236 List!1584) Bool)

(assert (=> d!22602 (= lt!26087 (rulesValidInductive!66 thiss!19403 rules!2471))))

(declare-fun lambda!1753 () Int)

(declare-fun forall!210 (List!1584 Int) Bool)

(assert (=> d!22602 (= lt!26087 (forall!210 rules!2471 lambda!1753))))

(assert (=> d!22602 (= (rulesValid!88 thiss!19403 rules!2471) lt!26087)))

(declare-fun bs!9611 () Bool)

(assert (= bs!9611 d!22602))

(declare-fun m!82272 () Bool)

(assert (=> bs!9611 m!82272))

(declare-fun m!82274 () Bool)

(assert (=> bs!9611 m!82274))

(assert (=> d!22536 d!22602))

(declare-fun d!22604 () Bool)

(assert (=> d!22604 (= (list!616 (_1!1055 lt!25943)) (list!619 (c!23970 (_1!1055 lt!25943))))))

(declare-fun bs!9612 () Bool)

(assert (= bs!9612 d!22604))

(declare-fun m!82276 () Bool)

(assert (=> bs!9612 m!82276))

(assert (=> b!97802 d!22604))

(assert (=> b!97802 d!22584))

(assert (=> b!97802 d!22586))

(declare-fun d!22606 () Bool)

(assert (=> d!22606 (= (inv!1922 (tag!522 (h!6975 (t!21105 rules!2471)))) (= (mod (str.len (value!12673 (tag!522 (h!6975 (t!21105 rules!2471))))) 2) 0))))

(assert (=> b!97839 d!22606))

(declare-fun d!22608 () Bool)

(declare-fun res!47663 () Bool)

(declare-fun e!54294 () Bool)

(assert (=> d!22608 (=> (not res!47663) (not e!54294))))

(assert (=> d!22608 (= res!47663 (semiInverseModEq!80 (toChars!754 (transformation!344 (h!6975 (t!21105 rules!2471)))) (toValue!895 (transformation!344 (h!6975 (t!21105 rules!2471))))))))

(assert (=> d!22608 (= (inv!1925 (transformation!344 (h!6975 (t!21105 rules!2471)))) e!54294)))

(declare-fun b!97995 () Bool)

(assert (=> b!97995 (= e!54294 (equivClasses!75 (toChars!754 (transformation!344 (h!6975 (t!21105 rules!2471)))) (toValue!895 (transformation!344 (h!6975 (t!21105 rules!2471))))))))

(assert (= (and d!22608 res!47663) b!97995))

(declare-fun m!82278 () Bool)

(assert (=> d!22608 m!82278))

(declare-fun m!82280 () Bool)

(assert (=> b!97995 m!82280))

(assert (=> b!97839 d!22608))

(declare-fun d!22610 () Bool)

(declare-fun lt!26090 () Int)

(assert (=> d!22610 (= lt!26090 (size!1393 (list!618 (_2!1055 lt!25943))))))

(assert (=> d!22610 (= lt!26090 (size!1392 (c!23968 (_2!1055 lt!25943))))))

(assert (=> d!22610 (= (size!1389 (_2!1055 lt!25943)) lt!26090)))

(declare-fun bs!9613 () Bool)

(assert (= bs!9613 d!22610))

(assert (=> bs!9613 m!82020))

(assert (=> bs!9613 m!82020))

(declare-fun m!82282 () Bool)

(assert (=> bs!9613 m!82282))

(declare-fun m!82284 () Bool)

(assert (=> bs!9613 m!82284))

(assert (=> b!97801 d!22610))

(declare-fun d!22612 () Bool)

(declare-fun lt!26091 () Int)

(assert (=> d!22612 (= lt!26091 (size!1393 (list!618 (seqFromList!183 input!2238))))))

(assert (=> d!22612 (= lt!26091 (size!1392 (c!23968 (seqFromList!183 input!2238))))))

(assert (=> d!22612 (= (size!1389 (seqFromList!183 input!2238)) lt!26091)))

(declare-fun bs!9614 () Bool)

(assert (= bs!9614 d!22612))

(assert (=> bs!9614 m!81968))

(assert (=> bs!9614 m!82012))

(assert (=> bs!9614 m!82012))

(assert (=> bs!9614 m!82144))

(declare-fun m!82286 () Bool)

(assert (=> bs!9614 m!82286))

(assert (=> b!97801 d!22612))

(declare-fun b!97997 () Bool)

(declare-fun e!54295 () Bool)

(declare-fun tp!56341 () Bool)

(declare-fun tp!56337 () Bool)

(assert (=> b!97997 (= e!54295 (and tp!56341 tp!56337))))

(declare-fun b!97999 () Bool)

(declare-fun tp!56339 () Bool)

(declare-fun tp!56340 () Bool)

(assert (=> b!97999 (= e!54295 (and tp!56339 tp!56340))))

(declare-fun b!97996 () Bool)

(assert (=> b!97996 (= e!54295 tp_is_empty!747)))

(assert (=> b!97829 (= tp!56292 e!54295)))

(declare-fun b!97998 () Bool)

(declare-fun tp!56338 () Bool)

(assert (=> b!97998 (= e!54295 tp!56338)))

(assert (= (and b!97829 (is-ElementMatch!412 (regOne!1337 (regex!344 (h!6975 rules!2471))))) b!97996))

(assert (= (and b!97829 (is-Concat!746 (regOne!1337 (regex!344 (h!6975 rules!2471))))) b!97997))

(assert (= (and b!97829 (is-Star!412 (regOne!1337 (regex!344 (h!6975 rules!2471))))) b!97998))

(assert (= (and b!97829 (is-Union!412 (regOne!1337 (regex!344 (h!6975 rules!2471))))) b!97999))

(declare-fun b!98001 () Bool)

(declare-fun e!54296 () Bool)

(declare-fun tp!56346 () Bool)

(declare-fun tp!56342 () Bool)

(assert (=> b!98001 (= e!54296 (and tp!56346 tp!56342))))

(declare-fun b!98003 () Bool)

(declare-fun tp!56344 () Bool)

(declare-fun tp!56345 () Bool)

(assert (=> b!98003 (= e!54296 (and tp!56344 tp!56345))))

(declare-fun b!98000 () Bool)

(assert (=> b!98000 (= e!54296 tp_is_empty!747)))

(assert (=> b!97829 (= tp!56293 e!54296)))

(declare-fun b!98002 () Bool)

(declare-fun tp!56343 () Bool)

(assert (=> b!98002 (= e!54296 tp!56343)))

(assert (= (and b!97829 (is-ElementMatch!412 (regTwo!1337 (regex!344 (h!6975 rules!2471))))) b!98000))

(assert (= (and b!97829 (is-Concat!746 (regTwo!1337 (regex!344 (h!6975 rules!2471))))) b!98001))

(assert (= (and b!97829 (is-Star!412 (regTwo!1337 (regex!344 (h!6975 rules!2471))))) b!98002))

(assert (= (and b!97829 (is-Union!412 (regTwo!1337 (regex!344 (h!6975 rules!2471))))) b!98003))

(declare-fun b!98006 () Bool)

(declare-fun b_free!2925 () Bool)

(declare-fun b_next!2925 () Bool)

(assert (=> b!98006 (= b_free!2925 (not b_next!2925))))

(declare-fun tp!56349 () Bool)

(declare-fun b_and!4391 () Bool)

(assert (=> b!98006 (= tp!56349 b_and!4391)))

(declare-fun b_free!2927 () Bool)

(declare-fun b_next!2927 () Bool)

(assert (=> b!98006 (= b_free!2927 (not b_next!2927))))

(declare-fun tp!56350 () Bool)

(declare-fun b_and!4393 () Bool)

(assert (=> b!98006 (= tp!56350 b_and!4393)))

(declare-fun e!54298 () Bool)

(assert (=> b!98006 (= e!54298 (and tp!56349 tp!56350))))

(declare-fun b!98005 () Bool)

(declare-fun e!54300 () Bool)

(declare-fun tp!56348 () Bool)

(assert (=> b!98005 (= e!54300 (and tp!56348 (inv!1922 (tag!522 (h!6975 (t!21105 (t!21105 rules!2471))))) (inv!1925 (transformation!344 (h!6975 (t!21105 (t!21105 rules!2471))))) e!54298))))

(declare-fun b!98004 () Bool)

(declare-fun e!54299 () Bool)

(declare-fun tp!56347 () Bool)

(assert (=> b!98004 (= e!54299 (and e!54300 tp!56347))))

(assert (=> b!97838 (= tp!56303 e!54299)))

(assert (= b!98005 b!98006))

(assert (= b!98004 b!98005))

(assert (= (and b!97838 (is-Cons!1578 (t!21105 (t!21105 rules!2471)))) b!98004))

(declare-fun m!82288 () Bool)

(assert (=> b!98005 m!82288))

(declare-fun m!82290 () Bool)

(assert (=> b!98005 m!82290))

(declare-fun b!98008 () Bool)

(declare-fun e!54301 () Bool)

(declare-fun tp!56355 () Bool)

(declare-fun tp!56351 () Bool)

(assert (=> b!98008 (= e!54301 (and tp!56355 tp!56351))))

(declare-fun b!98010 () Bool)

(declare-fun tp!56353 () Bool)

(declare-fun tp!56354 () Bool)

(assert (=> b!98010 (= e!54301 (and tp!56353 tp!56354))))

(declare-fun b!98007 () Bool)

(assert (=> b!98007 (= e!54301 tp_is_empty!747)))

(assert (=> b!97828 (= tp!56291 e!54301)))

(declare-fun b!98009 () Bool)

(declare-fun tp!56352 () Bool)

(assert (=> b!98009 (= e!54301 tp!56352)))

(assert (= (and b!97828 (is-ElementMatch!412 (reg!741 (regex!344 (h!6975 rules!2471))))) b!98007))

(assert (= (and b!97828 (is-Concat!746 (reg!741 (regex!344 (h!6975 rules!2471))))) b!98008))

(assert (= (and b!97828 (is-Star!412 (reg!741 (regex!344 (h!6975 rules!2471))))) b!98009))

(assert (= (and b!97828 (is-Union!412 (reg!741 (regex!344 (h!6975 rules!2471))))) b!98010))

(declare-fun b!98012 () Bool)

(declare-fun e!54302 () Bool)

(declare-fun tp!56360 () Bool)

(declare-fun tp!56356 () Bool)

(assert (=> b!98012 (= e!54302 (and tp!56360 tp!56356))))

(declare-fun b!98014 () Bool)

(declare-fun tp!56358 () Bool)

(declare-fun tp!56359 () Bool)

(assert (=> b!98014 (= e!54302 (and tp!56358 tp!56359))))

(declare-fun b!98011 () Bool)

(assert (=> b!98011 (= e!54302 tp_is_empty!747)))

(assert (=> b!97827 (= tp!56294 e!54302)))

(declare-fun b!98013 () Bool)

(declare-fun tp!56357 () Bool)

(assert (=> b!98013 (= e!54302 tp!56357)))

(assert (= (and b!97827 (is-ElementMatch!412 (regOne!1336 (regex!344 (h!6975 rules!2471))))) b!98011))

(assert (= (and b!97827 (is-Concat!746 (regOne!1336 (regex!344 (h!6975 rules!2471))))) b!98012))

(assert (= (and b!97827 (is-Star!412 (regOne!1336 (regex!344 (h!6975 rules!2471))))) b!98013))

(assert (= (and b!97827 (is-Union!412 (regOne!1336 (regex!344 (h!6975 rules!2471))))) b!98014))

(declare-fun b!98016 () Bool)

(declare-fun e!54303 () Bool)

(declare-fun tp!56365 () Bool)

(declare-fun tp!56361 () Bool)

(assert (=> b!98016 (= e!54303 (and tp!56365 tp!56361))))

(declare-fun b!98018 () Bool)

(declare-fun tp!56363 () Bool)

(declare-fun tp!56364 () Bool)

(assert (=> b!98018 (= e!54303 (and tp!56363 tp!56364))))

(declare-fun b!98015 () Bool)

(assert (=> b!98015 (= e!54303 tp_is_empty!747)))

(assert (=> b!97827 (= tp!56290 e!54303)))

(declare-fun b!98017 () Bool)

(declare-fun tp!56362 () Bool)

(assert (=> b!98017 (= e!54303 tp!56362)))

(assert (= (and b!97827 (is-ElementMatch!412 (regTwo!1336 (regex!344 (h!6975 rules!2471))))) b!98015))

(assert (= (and b!97827 (is-Concat!746 (regTwo!1336 (regex!344 (h!6975 rules!2471))))) b!98016))

(assert (= (and b!97827 (is-Star!412 (regTwo!1336 (regex!344 (h!6975 rules!2471))))) b!98017))

(assert (= (and b!97827 (is-Union!412 (regTwo!1336 (regex!344 (h!6975 rules!2471))))) b!98018))

(declare-fun b!98019 () Bool)

(declare-fun e!54304 () Bool)

(declare-fun tp!56366 () Bool)

(assert (=> b!98019 (= e!54304 (and tp_is_empty!747 tp!56366))))

(assert (=> b!97815 (= tp!56279 e!54304)))

(assert (= (and b!97815 (is-Cons!1576 (t!21103 (t!21103 input!2238)))) b!98019))

(declare-fun b!98021 () Bool)

(declare-fun e!54305 () Bool)

(declare-fun tp!56371 () Bool)

(declare-fun tp!56367 () Bool)

(assert (=> b!98021 (= e!54305 (and tp!56371 tp!56367))))

(declare-fun b!98023 () Bool)

(declare-fun tp!56369 () Bool)

(declare-fun tp!56370 () Bool)

(assert (=> b!98023 (= e!54305 (and tp!56369 tp!56370))))

(declare-fun b!98020 () Bool)

(assert (=> b!98020 (= e!54305 tp_is_empty!747)))

(assert (=> b!97839 (= tp!56304 e!54305)))

(declare-fun b!98022 () Bool)

(declare-fun tp!56368 () Bool)

(assert (=> b!98022 (= e!54305 tp!56368)))

(assert (= (and b!97839 (is-ElementMatch!412 (regex!344 (h!6975 (t!21105 rules!2471))))) b!98020))

(assert (= (and b!97839 (is-Concat!746 (regex!344 (h!6975 (t!21105 rules!2471))))) b!98021))

(assert (= (and b!97839 (is-Star!412 (regex!344 (h!6975 (t!21105 rules!2471))))) b!98022))

(assert (= (and b!97839 (is-Union!412 (regex!344 (h!6975 (t!21105 rules!2471))))) b!98023))

(push 1)

(assert (not d!22608))

(assert (not b_next!2911))

(assert (not d!22556))

(assert (not b!98021))

(assert (not d!22596))

(assert (not b!98008))

(assert (not d!22564))

(assert (not b!98002))

(assert (not b!98012))

(assert b_and!4393)

(assert (not b!98005))

(assert (not b_next!2919))

(assert (not b!98017))

(assert (not b!97995))

(assert (not b!97954))

(assert (not b!98003))

(assert (not b!97975))

(assert tp_is_empty!747)

(assert (not b!97955))

(assert (not b!97980))

(assert (not b!98009))

(assert (not b!97976))

(assert (not d!22604))

(assert (not b!97941))

(assert (not d!22562))

(assert (not d!22594))

(assert b_and!4385)

(assert (not b!98013))

(assert (not d!22592))

(assert (not b_next!2925))

(assert (not b!97940))

(assert (not b_next!2917))

(assert (not b!98023))

(assert (not b!97992))

(assert (not b!97999))

(assert (not b!97959))

(assert (not b!97978))

(assert (not b_next!2909))

(assert (not b!98004))

(assert (not b!98010))

(assert (not b!97998))

(assert (not d!22586))

(assert (not b!98001))

(assert (not d!22612))

(assert (not d!22610))

(assert (not b!97953))

(assert (not b!98018))

(assert (not d!22602))

(assert (not b!97896))

(assert (not b!98014))

(assert b_and!4375)

(assert b_and!4377)

(assert (not d!22560))

(assert (not b!98019))

(assert (not d!22548))

(assert (not b!97960))

(assert (not b!98022))

(assert (not b!98016))

(assert (not b!97903))

(assert (not b!97897))

(assert (not b_next!2927))

(assert (not d!22584))

(assert b_and!4383)

(assert (not b!97997))

(assert (not d!22590))

(assert (not d!22582))

(assert b_and!4391)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2911))

(assert b_and!4385)

(assert (not b_next!2925))

(assert (not b_next!2917))

(assert (not b_next!2909))

(assert b_and!4393)

(assert (not b_next!2927))

(assert (not b_next!2919))

(assert b_and!4375)

(assert b_and!4377)

(assert b_and!4383)

(assert b_and!4391)

(check-sat)

(pop 1)

