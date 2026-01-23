; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8570 () Bool)

(assert start!8570)

(declare-fun b!95750 () Bool)

(declare-fun b_free!2841 () Bool)

(declare-fun b_next!2841 () Bool)

(assert (=> b!95750 (= b_free!2841 (not b_next!2841))))

(declare-fun tp!55780 () Bool)

(declare-fun b_and!4275 () Bool)

(assert (=> b!95750 (= tp!55780 b_and!4275)))

(declare-fun b_free!2843 () Bool)

(declare-fun b_next!2843 () Bool)

(assert (=> b!95750 (= b_free!2843 (not b_next!2843))))

(declare-fun tp!55783 () Bool)

(declare-fun b_and!4277 () Bool)

(assert (=> b!95750 (= tp!55783 b_and!4277)))

(declare-fun b!95744 () Bool)

(declare-fun e!52998 () Bool)

(declare-fun e!53002 () Bool)

(assert (=> b!95744 (= e!52998 e!53002)))

(declare-fun res!46784 () Bool)

(assert (=> b!95744 (=> (not res!46784) (not e!53002))))

(declare-datatypes ((C!1736 0))(
  ( (C!1737 (val!475 Int)) )
))
(declare-datatypes ((List!1556 0))(
  ( (Nil!1550) (Cons!1550 (h!6947 C!1736) (t!21013 List!1556)) )
))
(declare-datatypes ((IArray!957 0))(
  ( (IArray!958 (innerList!536 List!1556)) )
))
(declare-datatypes ((Conc!478 0))(
  ( (Node!478 (left!1176 Conc!478) (right!1506 Conc!478) (csize!1186 Int) (cheight!689 Int)) (Leaf!783 (xs!3065 IArray!957) (csize!1187 Int)) (Empty!478) )
))
(declare-datatypes ((BalanceConc!960 0))(
  ( (BalanceConc!961 (c!23554 Conc!478)) )
))
(declare-datatypes ((String!2036 0))(
  ( (String!2037 (value!12529 String)) )
))
(declare-datatypes ((List!1557 0))(
  ( (Nil!1551) (Cons!1551 (h!6948 (_ BitVec 16)) (t!21014 List!1557)) )
))
(declare-datatypes ((TokenValue!329 0))(
  ( (FloatLiteralValue!658 (text!2748 List!1557)) (TokenValueExt!328 (__x!1753 Int)) (Broken!1645 (value!12530 List!1557)) (Object!334) (End!329) (Def!329) (Underscore!329) (Match!329) (Else!329) (Error!329) (Case!329) (If!329) (Extends!329) (Abstract!329) (Class!329) (Val!329) (DelimiterValue!658 (del!389 List!1557)) (KeywordValue!335 (value!12531 List!1557)) (CommentValue!658 (value!12532 List!1557)) (WhitespaceValue!658 (value!12533 List!1557)) (IndentationValue!329 (value!12534 List!1557)) (String!2038) (Int32!329) (Broken!1646 (value!12535 List!1557)) (Boolean!330) (Unit!1001) (OperatorValue!332 (op!389 List!1557)) (IdentifierValue!658 (value!12536 List!1557)) (IdentifierValue!659 (value!12537 List!1557)) (WhitespaceValue!659 (value!12538 List!1557)) (True!658) (False!658) (Broken!1647 (value!12539 List!1557)) (Broken!1648 (value!12540 List!1557)) (True!659) (RightBrace!329) (RightBracket!329) (Colon!329) (Null!329) (Comma!329) (LeftBracket!329) (False!659) (LeftBrace!329) (ImaginaryLiteralValue!329 (text!2749 List!1557)) (StringLiteralValue!987 (value!12541 List!1557)) (EOFValue!329 (value!12542 List!1557)) (IdentValue!329 (value!12543 List!1557)) (DelimiterValue!659 (value!12544 List!1557)) (DedentValue!329 (value!12545 List!1557)) (NewLineValue!329 (value!12546 List!1557)) (IntegerValue!987 (value!12547 (_ BitVec 32)) (text!2750 List!1557)) (IntegerValue!988 (value!12548 Int) (text!2751 List!1557)) (Times!329) (Or!329) (Equal!329) (Minus!329) (Broken!1649 (value!12549 List!1557)) (And!329) (Div!329) (LessEqual!329) (Mod!329) (Concat!736) (Not!329) (Plus!329) (SpaceValue!329 (value!12550 List!1557)) (IntegerValue!989 (value!12551 Int) (text!2752 List!1557)) (StringLiteralValue!988 (text!2753 List!1557)) (FloatLiteralValue!659 (text!2754 List!1557)) (BytesLiteralValue!329 (value!12552 List!1557)) (CommentValue!659 (value!12553 List!1557)) (StringLiteralValue!989 (value!12554 List!1557)) (ErrorTokenValue!329 (msg!390 List!1557)) )
))
(declare-datatypes ((Regex!407 0))(
  ( (ElementMatch!407 (c!23555 C!1736)) (Concat!737 (regOne!1326 Regex!407) (regTwo!1326 Regex!407)) (EmptyExpr!407) (Star!407 (reg!736 Regex!407)) (EmptyLang!407) (Union!407 (regOne!1327 Regex!407) (regTwo!1327 Regex!407)) )
))
(declare-datatypes ((TokenValueInjection!482 0))(
  ( (TokenValueInjection!483 (toValue!878 Int) (toChars!737 Int)) )
))
(declare-datatypes ((Rule!478 0))(
  ( (Rule!479 (regex!339 Regex!407) (tag!517 String!2036) (isSeparator!339 Bool) (transformation!339 TokenValueInjection!482)) )
))
(declare-datatypes ((Token!434 0))(
  ( (Token!435 (value!12555 TokenValue!329) (rule!836 Rule!478) (size!1346 Int) (originalCharacters!388 List!1556)) )
))
(declare-datatypes ((List!1558 0))(
  ( (Nil!1552) (Cons!1552 (h!6949 Token!434) (t!21015 List!1558)) )
))
(declare-fun lt!24553 () List!1558)

(get-info :version)

(assert (=> b!95744 (= res!46784 (and (or (not ((_ is Cons!1552) lt!24553)) (not ((_ is Nil!1552) (t!21015 lt!24553)))) ((_ is Cons!1552) lt!24553)))))

(declare-datatypes ((IArray!959 0))(
  ( (IArray!960 (innerList!537 List!1558)) )
))
(declare-datatypes ((Conc!479 0))(
  ( (Node!479 (left!1177 Conc!479) (right!1507 Conc!479) (csize!1188 Int) (cheight!690 Int)) (Leaf!784 (xs!3066 IArray!959) (csize!1189 Int)) (Empty!479) )
))
(declare-datatypes ((BalanceConc!962 0))(
  ( (BalanceConc!963 (c!23556 Conc!479)) )
))
(declare-datatypes ((tuple2!1644 0))(
  ( (tuple2!1645 (_1!1029 BalanceConc!962) (_2!1029 BalanceConc!960)) )
))
(declare-fun lt!24554 () tuple2!1644)

(declare-fun list!583 (BalanceConc!962) List!1558)

(assert (=> b!95744 (= lt!24553 (list!583 (_1!1029 lt!24554)))))

(declare-fun b!95745 () Bool)

(declare-fun e!53001 () Bool)

(assert (=> b!95745 (= e!53001 e!52998)))

(declare-fun res!46782 () Bool)

(assert (=> b!95745 (=> (not res!46782) (not e!52998))))

(declare-fun isEmpty!618 (BalanceConc!960) Bool)

(assert (=> b!95745 (= res!46782 (isEmpty!618 (_2!1029 lt!24554)))))

(declare-datatypes ((LexerInterface!231 0))(
  ( (LexerInterfaceExt!228 (__x!1754 Int)) (Lexer!229) )
))
(declare-fun thiss!19403 () LexerInterface!231)

(declare-datatypes ((List!1559 0))(
  ( (Nil!1553) (Cons!1553 (h!6950 Rule!478) (t!21016 List!1559)) )
))
(declare-fun rules!2471 () List!1559)

(declare-fun input!2238 () List!1556)

(declare-fun lex!137 (LexerInterface!231 List!1559 BalanceConc!960) tuple2!1644)

(declare-fun seqFromList!177 (List!1556) BalanceConc!960)

(assert (=> b!95745 (= lt!24554 (lex!137 thiss!19403 rules!2471 (seqFromList!177 input!2238)))))

(declare-fun b!95746 () Bool)

(declare-fun res!46785 () Bool)

(assert (=> b!95746 (=> (not res!46785) (not e!53001))))

(declare-fun rulesInvariant!225 (LexerInterface!231 List!1559) Bool)

(assert (=> b!95746 (= res!46785 (rulesInvariant!225 thiss!19403 rules!2471))))

(declare-fun b!95747 () Bool)

(declare-fun e!52999 () Bool)

(declare-fun e!52995 () Bool)

(declare-fun tp!55781 () Bool)

(assert (=> b!95747 (= e!52999 (and e!52995 tp!55781))))

(declare-fun b!95748 () Bool)

(declare-fun res!46781 () Bool)

(assert (=> b!95748 (=> (not res!46781) (not e!53001))))

(declare-fun isEmpty!619 (List!1559) Bool)

(assert (=> b!95748 (= res!46781 (not (isEmpty!619 rules!2471)))))

(declare-fun tp!55784 () Bool)

(declare-fun e!52997 () Bool)

(declare-fun b!95749 () Bool)

(declare-fun inv!1901 (String!2036) Bool)

(declare-fun inv!1903 (TokenValueInjection!482) Bool)

(assert (=> b!95749 (= e!52995 (and tp!55784 (inv!1901 (tag!517 (h!6950 rules!2471))) (inv!1903 (transformation!339 (h!6950 rules!2471))) e!52997))))

(assert (=> b!95750 (= e!52997 (and tp!55780 tp!55783))))

(declare-fun res!46783 () Bool)

(assert (=> start!8570 (=> (not res!46783) (not e!53001))))

(assert (=> start!8570 (= res!46783 ((_ is Lexer!229) thiss!19403))))

(assert (=> start!8570 e!53001))

(assert (=> start!8570 true))

(assert (=> start!8570 e!52999))

(declare-fun e!52996 () Bool)

(assert (=> start!8570 e!52996))

(declare-fun b!95751 () Bool)

(declare-fun tp_is_empty!737 () Bool)

(declare-fun tp!55782 () Bool)

(assert (=> b!95751 (= e!52996 (and tp_is_empty!737 tp!55782))))

(declare-fun b!95752 () Bool)

(declare-fun size!1347 (List!1556) Int)

(declare-datatypes ((tuple2!1646 0))(
  ( (tuple2!1647 (_1!1030 Token!434) (_2!1030 List!1556)) )
))
(declare-datatypes ((Option!154 0))(
  ( (None!153) (Some!153 (v!12914 tuple2!1646)) )
))
(declare-fun get!395 (Option!154) tuple2!1646)

(declare-fun maxPrefix!71 (LexerInterface!231 List!1559 List!1556) Option!154)

(assert (=> b!95752 (= e!53002 (>= (size!1347 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238)))) (size!1347 input!2238)))))

(assert (= (and start!8570 res!46783) b!95748))

(assert (= (and b!95748 res!46781) b!95746))

(assert (= (and b!95746 res!46785) b!95745))

(assert (= (and b!95745 res!46782) b!95744))

(assert (= (and b!95744 res!46784) b!95752))

(assert (= b!95749 b!95750))

(assert (= b!95747 b!95749))

(assert (= (and start!8570 ((_ is Cons!1553) rules!2471)) b!95747))

(assert (= (and start!8570 ((_ is Cons!1550) input!2238)) b!95751))

(declare-fun m!78898 () Bool)

(assert (=> b!95752 m!78898))

(assert (=> b!95752 m!78898))

(declare-fun m!78900 () Bool)

(assert (=> b!95752 m!78900))

(declare-fun m!78902 () Bool)

(assert (=> b!95752 m!78902))

(declare-fun m!78904 () Bool)

(assert (=> b!95752 m!78904))

(declare-fun m!78906 () Bool)

(assert (=> b!95745 m!78906))

(declare-fun m!78908 () Bool)

(assert (=> b!95745 m!78908))

(assert (=> b!95745 m!78908))

(declare-fun m!78910 () Bool)

(assert (=> b!95745 m!78910))

(declare-fun m!78912 () Bool)

(assert (=> b!95749 m!78912))

(declare-fun m!78914 () Bool)

(assert (=> b!95749 m!78914))

(declare-fun m!78916 () Bool)

(assert (=> b!95744 m!78916))

(declare-fun m!78918 () Bool)

(assert (=> b!95748 m!78918))

(declare-fun m!78920 () Bool)

(assert (=> b!95746 m!78920))

(check-sat b_and!4275 (not b!95744) (not b!95751) tp_is_empty!737 (not b!95748) (not b!95752) b_and!4277 (not b!95745) (not b!95749) (not b_next!2843) (not b_next!2841) (not b!95746) (not b!95747))
(check-sat b_and!4277 b_and!4275 (not b_next!2843) (not b_next!2841))
(get-model)

(declare-fun d!21749 () Bool)

(declare-fun lt!24560 () Bool)

(declare-fun isEmpty!624 (List!1556) Bool)

(declare-fun list!586 (BalanceConc!960) List!1556)

(assert (=> d!21749 (= lt!24560 (isEmpty!624 (list!586 (_2!1029 lt!24554))))))

(declare-fun isEmpty!625 (Conc!478) Bool)

(assert (=> d!21749 (= lt!24560 (isEmpty!625 (c!23554 (_2!1029 lt!24554))))))

(assert (=> d!21749 (= (isEmpty!618 (_2!1029 lt!24554)) lt!24560)))

(declare-fun bs!9426 () Bool)

(assert (= bs!9426 d!21749))

(declare-fun m!78928 () Bool)

(assert (=> bs!9426 m!78928))

(assert (=> bs!9426 m!78928))

(declare-fun m!78930 () Bool)

(assert (=> bs!9426 m!78930))

(declare-fun m!78932 () Bool)

(assert (=> bs!9426 m!78932))

(assert (=> b!95745 d!21749))

(declare-fun b!95849 () Bool)

(declare-fun e!53057 () Bool)

(declare-fun e!53056 () Bool)

(assert (=> b!95849 (= e!53057 e!53056)))

(declare-fun res!46835 () Bool)

(declare-fun lt!24585 () tuple2!1644)

(declare-fun size!1350 (BalanceConc!960) Int)

(assert (=> b!95849 (= res!46835 (< (size!1350 (_2!1029 lt!24585)) (size!1350 (seqFromList!177 input!2238))))))

(assert (=> b!95849 (=> (not res!46835) (not e!53056))))

(declare-fun d!21751 () Bool)

(declare-fun e!53055 () Bool)

(assert (=> d!21751 e!53055))

(declare-fun res!46836 () Bool)

(assert (=> d!21751 (=> (not res!46836) (not e!53055))))

(assert (=> d!21751 (= res!46836 e!53057)))

(declare-fun c!23569 () Bool)

(declare-fun size!1351 (BalanceConc!962) Int)

(assert (=> d!21751 (= c!23569 (> (size!1351 (_1!1029 lt!24585)) 0))))

(declare-fun lexTailRecV2!58 (LexerInterface!231 List!1559 BalanceConc!960 BalanceConc!960 BalanceConc!960 BalanceConc!962) tuple2!1644)

(assert (=> d!21751 (= lt!24585 (lexTailRecV2!58 thiss!19403 rules!2471 (seqFromList!177 input!2238) (BalanceConc!961 Empty!478) (seqFromList!177 input!2238) (BalanceConc!963 Empty!479)))))

(assert (=> d!21751 (= (lex!137 thiss!19403 rules!2471 (seqFromList!177 input!2238)) lt!24585)))

(declare-fun b!95850 () Bool)

(assert (=> b!95850 (= e!53057 (= (_2!1029 lt!24585) (seqFromList!177 input!2238)))))

(declare-fun b!95851 () Bool)

(declare-fun res!46834 () Bool)

(assert (=> b!95851 (=> (not res!46834) (not e!53055))))

(declare-datatypes ((tuple2!1650 0))(
  ( (tuple2!1651 (_1!1032 List!1558) (_2!1032 List!1556)) )
))
(declare-fun lexList!61 (LexerInterface!231 List!1559 List!1556) tuple2!1650)

(assert (=> b!95851 (= res!46834 (= (list!583 (_1!1029 lt!24585)) (_1!1032 (lexList!61 thiss!19403 rules!2471 (list!586 (seqFromList!177 input!2238))))))))

(declare-fun b!95852 () Bool)

(assert (=> b!95852 (= e!53055 (= (list!586 (_2!1029 lt!24585)) (_2!1032 (lexList!61 thiss!19403 rules!2471 (list!586 (seqFromList!177 input!2238))))))))

(declare-fun b!95853 () Bool)

(declare-fun isEmpty!626 (BalanceConc!962) Bool)

(assert (=> b!95853 (= e!53056 (not (isEmpty!626 (_1!1029 lt!24585))))))

(assert (= (and d!21751 c!23569) b!95849))

(assert (= (and d!21751 (not c!23569)) b!95850))

(assert (= (and b!95849 res!46835) b!95853))

(assert (= (and d!21751 res!46836) b!95851))

(assert (= (and b!95851 res!46834) b!95852))

(declare-fun m!79004 () Bool)

(assert (=> b!95852 m!79004))

(assert (=> b!95852 m!78908))

(declare-fun m!79006 () Bool)

(assert (=> b!95852 m!79006))

(assert (=> b!95852 m!79006))

(declare-fun m!79008 () Bool)

(assert (=> b!95852 m!79008))

(declare-fun m!79010 () Bool)

(assert (=> d!21751 m!79010))

(assert (=> d!21751 m!78908))

(assert (=> d!21751 m!78908))

(declare-fun m!79012 () Bool)

(assert (=> d!21751 m!79012))

(declare-fun m!79014 () Bool)

(assert (=> b!95851 m!79014))

(assert (=> b!95851 m!78908))

(assert (=> b!95851 m!79006))

(assert (=> b!95851 m!79006))

(assert (=> b!95851 m!79008))

(declare-fun m!79016 () Bool)

(assert (=> b!95853 m!79016))

(declare-fun m!79018 () Bool)

(assert (=> b!95849 m!79018))

(assert (=> b!95849 m!78908))

(declare-fun m!79020 () Bool)

(assert (=> b!95849 m!79020))

(assert (=> b!95745 d!21751))

(declare-fun d!21773 () Bool)

(declare-fun fromListB!73 (List!1556) BalanceConc!960)

(assert (=> d!21773 (= (seqFromList!177 input!2238) (fromListB!73 input!2238))))

(declare-fun bs!9429 () Bool)

(assert (= bs!9429 d!21773))

(declare-fun m!79022 () Bool)

(assert (=> bs!9429 m!79022))

(assert (=> b!95745 d!21773))

(declare-fun d!21775 () Bool)

(assert (=> d!21775 (= (inv!1901 (tag!517 (h!6950 rules!2471))) (= (mod (str.len (value!12529 (tag!517 (h!6950 rules!2471)))) 2) 0))))

(assert (=> b!95749 d!21775))

(declare-fun d!21777 () Bool)

(declare-fun res!46839 () Bool)

(declare-fun e!53060 () Bool)

(assert (=> d!21777 (=> (not res!46839) (not e!53060))))

(declare-fun semiInverseModEq!75 (Int Int) Bool)

(assert (=> d!21777 (= res!46839 (semiInverseModEq!75 (toChars!737 (transformation!339 (h!6950 rules!2471))) (toValue!878 (transformation!339 (h!6950 rules!2471)))))))

(assert (=> d!21777 (= (inv!1903 (transformation!339 (h!6950 rules!2471))) e!53060)))

(declare-fun b!95856 () Bool)

(declare-fun equivClasses!70 (Int Int) Bool)

(assert (=> b!95856 (= e!53060 (equivClasses!70 (toChars!737 (transformation!339 (h!6950 rules!2471))) (toValue!878 (transformation!339 (h!6950 rules!2471)))))))

(assert (= (and d!21777 res!46839) b!95856))

(declare-fun m!79024 () Bool)

(assert (=> d!21777 m!79024))

(declare-fun m!79026 () Bool)

(assert (=> b!95856 m!79026))

(assert (=> b!95749 d!21777))

(declare-fun d!21779 () Bool)

(declare-fun list!587 (Conc!479) List!1558)

(assert (=> d!21779 (= (list!583 (_1!1029 lt!24554)) (list!587 (c!23556 (_1!1029 lt!24554))))))

(declare-fun bs!9430 () Bool)

(assert (= bs!9430 d!21779))

(declare-fun m!79028 () Bool)

(assert (=> bs!9430 m!79028))

(assert (=> b!95744 d!21779))

(declare-fun d!21781 () Bool)

(assert (=> d!21781 (= (isEmpty!619 rules!2471) ((_ is Nil!1553) rules!2471))))

(assert (=> b!95748 d!21781))

(declare-fun d!21783 () Bool)

(declare-fun res!46842 () Bool)

(declare-fun e!53063 () Bool)

(assert (=> d!21783 (=> (not res!46842) (not e!53063))))

(declare-fun rulesValid!83 (LexerInterface!231 List!1559) Bool)

(assert (=> d!21783 (= res!46842 (rulesValid!83 thiss!19403 rules!2471))))

(assert (=> d!21783 (= (rulesInvariant!225 thiss!19403 rules!2471) e!53063)))

(declare-fun b!95859 () Bool)

(declare-datatypes ((List!1561 0))(
  ( (Nil!1555) (Cons!1555 (h!6952 String!2036) (t!21018 List!1561)) )
))
(declare-fun noDuplicateTag!83 (LexerInterface!231 List!1559 List!1561) Bool)

(assert (=> b!95859 (= e!53063 (noDuplicateTag!83 thiss!19403 rules!2471 Nil!1555))))

(assert (= (and d!21783 res!46842) b!95859))

(declare-fun m!79030 () Bool)

(assert (=> d!21783 m!79030))

(declare-fun m!79032 () Bool)

(assert (=> b!95859 m!79032))

(assert (=> b!95746 d!21783))

(declare-fun d!21785 () Bool)

(declare-fun lt!24588 () Int)

(assert (=> d!21785 (>= lt!24588 0)))

(declare-fun e!53066 () Int)

(assert (=> d!21785 (= lt!24588 e!53066)))

(declare-fun c!23572 () Bool)

(assert (=> d!21785 (= c!23572 ((_ is Nil!1550) (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238)))))))

(assert (=> d!21785 (= (size!1347 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238)))) lt!24588)))

(declare-fun b!95864 () Bool)

(assert (=> b!95864 (= e!53066 0)))

(declare-fun b!95865 () Bool)

(assert (=> b!95865 (= e!53066 (+ 1 (size!1347 (t!21013 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238)))))))))

(assert (= (and d!21785 c!23572) b!95864))

(assert (= (and d!21785 (not c!23572)) b!95865))

(declare-fun m!79034 () Bool)

(assert (=> b!95865 m!79034))

(assert (=> b!95752 d!21785))

(declare-fun d!21787 () Bool)

(assert (=> d!21787 (= (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238)) (v!12914 (maxPrefix!71 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!95752 d!21787))

(declare-fun b!95884 () Bool)

(declare-fun e!53075 () Bool)

(declare-fun e!53074 () Bool)

(assert (=> b!95884 (= e!53075 e!53074)))

(declare-fun res!46861 () Bool)

(assert (=> b!95884 (=> (not res!46861) (not e!53074))))

(declare-fun lt!24602 () Option!154)

(declare-fun isDefined!48 (Option!154) Bool)

(assert (=> b!95884 (= res!46861 (isDefined!48 lt!24602))))

(declare-fun d!21789 () Bool)

(assert (=> d!21789 e!53075))

(declare-fun res!46860 () Bool)

(assert (=> d!21789 (=> res!46860 e!53075)))

(declare-fun isEmpty!627 (Option!154) Bool)

(assert (=> d!21789 (= res!46860 (isEmpty!627 lt!24602))))

(declare-fun e!53073 () Option!154)

(assert (=> d!21789 (= lt!24602 e!53073)))

(declare-fun c!23575 () Bool)

(assert (=> d!21789 (= c!23575 (and ((_ is Cons!1553) rules!2471) ((_ is Nil!1553) (t!21016 rules!2471))))))

(declare-datatypes ((Unit!1004 0))(
  ( (Unit!1005) )
))
(declare-fun lt!24600 () Unit!1004)

(declare-fun lt!24603 () Unit!1004)

(assert (=> d!21789 (= lt!24600 lt!24603)))

(declare-fun isPrefix!35 (List!1556 List!1556) Bool)

(assert (=> d!21789 (isPrefix!35 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!35 (List!1556 List!1556) Unit!1004)

(assert (=> d!21789 (= lt!24603 (lemmaIsPrefixRefl!35 input!2238 input!2238))))

(declare-fun rulesValidInductive!61 (LexerInterface!231 List!1559) Bool)

(assert (=> d!21789 (rulesValidInductive!61 thiss!19403 rules!2471)))

(assert (=> d!21789 (= (maxPrefix!71 thiss!19403 rules!2471 input!2238) lt!24602)))

(declare-fun b!95885 () Bool)

(declare-fun contains!242 (List!1559 Rule!478) Bool)

(assert (=> b!95885 (= e!53074 (contains!242 rules!2471 (rule!836 (_1!1030 (get!395 lt!24602)))))))

(declare-fun b!95886 () Bool)

(declare-fun res!46863 () Bool)

(assert (=> b!95886 (=> (not res!46863) (not e!53074))))

(declare-fun charsOf!72 (Token!434) BalanceConc!960)

(assert (=> b!95886 (= res!46863 (= (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))) (originalCharacters!388 (_1!1030 (get!395 lt!24602)))))))

(declare-fun b!95887 () Bool)

(declare-fun res!46859 () Bool)

(assert (=> b!95887 (=> (not res!46859) (not e!53074))))

(assert (=> b!95887 (= res!46859 (< (size!1347 (_2!1030 (get!395 lt!24602))) (size!1347 input!2238)))))

(declare-fun b!95888 () Bool)

(declare-fun lt!24601 () Option!154)

(declare-fun lt!24599 () Option!154)

(assert (=> b!95888 (= e!53073 (ite (and ((_ is None!153) lt!24601) ((_ is None!153) lt!24599)) None!153 (ite ((_ is None!153) lt!24599) lt!24601 (ite ((_ is None!153) lt!24601) lt!24599 (ite (>= (size!1346 (_1!1030 (v!12914 lt!24601))) (size!1346 (_1!1030 (v!12914 lt!24599)))) lt!24601 lt!24599)))))))

(declare-fun call!4350 () Option!154)

(assert (=> b!95888 (= lt!24601 call!4350)))

(assert (=> b!95888 (= lt!24599 (maxPrefix!71 thiss!19403 (t!21016 rules!2471) input!2238))))

(declare-fun b!95889 () Bool)

(assert (=> b!95889 (= e!53073 call!4350)))

(declare-fun b!95890 () Bool)

(declare-fun res!46858 () Bool)

(assert (=> b!95890 (=> (not res!46858) (not e!53074))))

(declare-fun ++!206 (List!1556 List!1556) List!1556)

(assert (=> b!95890 (= res!46858 (= (++!206 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))) (_2!1030 (get!395 lt!24602))) input!2238))))

(declare-fun b!95891 () Bool)

(declare-fun res!46862 () Bool)

(assert (=> b!95891 (=> (not res!46862) (not e!53074))))

(declare-fun apply!241 (TokenValueInjection!482 BalanceConc!960) TokenValue!329)

(assert (=> b!95891 (= res!46862 (= (value!12555 (_1!1030 (get!395 lt!24602))) (apply!241 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun b!95892 () Bool)

(declare-fun res!46857 () Bool)

(assert (=> b!95892 (=> (not res!46857) (not e!53074))))

(declare-fun matchR!37 (Regex!407 List!1556) Bool)

(assert (=> b!95892 (= res!46857 (matchR!37 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))) (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))

(declare-fun bm!4345 () Bool)

(declare-fun maxPrefixOneRule!33 (LexerInterface!231 Rule!478 List!1556) Option!154)

(assert (=> bm!4345 (= call!4350 (maxPrefixOneRule!33 thiss!19403 (h!6950 rules!2471) input!2238))))

(assert (= (and d!21789 c!23575) b!95889))

(assert (= (and d!21789 (not c!23575)) b!95888))

(assert (= (or b!95889 b!95888) bm!4345))

(assert (= (and d!21789 (not res!46860)) b!95884))

(assert (= (and b!95884 res!46861) b!95886))

(assert (= (and b!95886 res!46863) b!95887))

(assert (= (and b!95887 res!46859) b!95890))

(assert (= (and b!95890 res!46858) b!95891))

(assert (= (and b!95891 res!46862) b!95892))

(assert (= (and b!95892 res!46857) b!95885))

(declare-fun m!79036 () Bool)

(assert (=> d!21789 m!79036))

(declare-fun m!79038 () Bool)

(assert (=> d!21789 m!79038))

(declare-fun m!79040 () Bool)

(assert (=> d!21789 m!79040))

(declare-fun m!79042 () Bool)

(assert (=> d!21789 m!79042))

(declare-fun m!79044 () Bool)

(assert (=> b!95887 m!79044))

(declare-fun m!79046 () Bool)

(assert (=> b!95887 m!79046))

(assert (=> b!95887 m!78904))

(declare-fun m!79048 () Bool)

(assert (=> b!95888 m!79048))

(assert (=> b!95890 m!79044))

(declare-fun m!79050 () Bool)

(assert (=> b!95890 m!79050))

(assert (=> b!95890 m!79050))

(declare-fun m!79052 () Bool)

(assert (=> b!95890 m!79052))

(assert (=> b!95890 m!79052))

(declare-fun m!79054 () Bool)

(assert (=> b!95890 m!79054))

(declare-fun m!79056 () Bool)

(assert (=> bm!4345 m!79056))

(assert (=> b!95891 m!79044))

(declare-fun m!79058 () Bool)

(assert (=> b!95891 m!79058))

(assert (=> b!95891 m!79058))

(declare-fun m!79060 () Bool)

(assert (=> b!95891 m!79060))

(declare-fun m!79062 () Bool)

(assert (=> b!95884 m!79062))

(assert (=> b!95885 m!79044))

(declare-fun m!79064 () Bool)

(assert (=> b!95885 m!79064))

(assert (=> b!95886 m!79044))

(assert (=> b!95886 m!79050))

(assert (=> b!95886 m!79050))

(assert (=> b!95886 m!79052))

(assert (=> b!95892 m!79044))

(assert (=> b!95892 m!79050))

(assert (=> b!95892 m!79050))

(assert (=> b!95892 m!79052))

(assert (=> b!95892 m!79052))

(declare-fun m!79066 () Bool)

(assert (=> b!95892 m!79066))

(assert (=> b!95752 d!21789))

(declare-fun d!21791 () Bool)

(declare-fun lt!24604 () Int)

(assert (=> d!21791 (>= lt!24604 0)))

(declare-fun e!53076 () Int)

(assert (=> d!21791 (= lt!24604 e!53076)))

(declare-fun c!23576 () Bool)

(assert (=> d!21791 (= c!23576 ((_ is Nil!1550) input!2238))))

(assert (=> d!21791 (= (size!1347 input!2238) lt!24604)))

(declare-fun b!95893 () Bool)

(assert (=> b!95893 (= e!53076 0)))

(declare-fun b!95894 () Bool)

(assert (=> b!95894 (= e!53076 (+ 1 (size!1347 (t!21013 input!2238))))))

(assert (= (and d!21791 c!23576) b!95893))

(assert (= (and d!21791 (not c!23576)) b!95894))

(declare-fun m!79068 () Bool)

(assert (=> b!95894 m!79068))

(assert (=> b!95752 d!21791))

(declare-fun b!95899 () Bool)

(declare-fun e!53079 () Bool)

(declare-fun tp!55817 () Bool)

(assert (=> b!95899 (= e!53079 (and tp_is_empty!737 tp!55817))))

(assert (=> b!95751 (= tp!55782 e!53079)))

(assert (= (and b!95751 ((_ is Cons!1550) (t!21013 input!2238))) b!95899))

(declare-fun e!53082 () Bool)

(assert (=> b!95749 (= tp!55784 e!53082)))

(declare-fun b!95911 () Bool)

(declare-fun tp!55830 () Bool)

(declare-fun tp!55829 () Bool)

(assert (=> b!95911 (= e!53082 (and tp!55830 tp!55829))))

(declare-fun b!95910 () Bool)

(assert (=> b!95910 (= e!53082 tp_is_empty!737)))

(declare-fun b!95913 () Bool)

(declare-fun tp!55831 () Bool)

(declare-fun tp!55828 () Bool)

(assert (=> b!95913 (= e!53082 (and tp!55831 tp!55828))))

(declare-fun b!95912 () Bool)

(declare-fun tp!55832 () Bool)

(assert (=> b!95912 (= e!53082 tp!55832)))

(assert (= (and b!95749 ((_ is ElementMatch!407) (regex!339 (h!6950 rules!2471)))) b!95910))

(assert (= (and b!95749 ((_ is Concat!737) (regex!339 (h!6950 rules!2471)))) b!95911))

(assert (= (and b!95749 ((_ is Star!407) (regex!339 (h!6950 rules!2471)))) b!95912))

(assert (= (and b!95749 ((_ is Union!407) (regex!339 (h!6950 rules!2471)))) b!95913))

(declare-fun b!95924 () Bool)

(declare-fun b_free!2849 () Bool)

(declare-fun b_next!2849 () Bool)

(assert (=> b!95924 (= b_free!2849 (not b_next!2849))))

(declare-fun tp!55841 () Bool)

(declare-fun b_and!4283 () Bool)

(assert (=> b!95924 (= tp!55841 b_and!4283)))

(declare-fun b_free!2851 () Bool)

(declare-fun b_next!2851 () Bool)

(assert (=> b!95924 (= b_free!2851 (not b_next!2851))))

(declare-fun tp!55844 () Bool)

(declare-fun b_and!4285 () Bool)

(assert (=> b!95924 (= tp!55844 b_and!4285)))

(declare-fun e!53093 () Bool)

(assert (=> b!95924 (= e!53093 (and tp!55841 tp!55844))))

(declare-fun tp!55842 () Bool)

(declare-fun b!95923 () Bool)

(declare-fun e!53092 () Bool)

(assert (=> b!95923 (= e!53092 (and tp!55842 (inv!1901 (tag!517 (h!6950 (t!21016 rules!2471)))) (inv!1903 (transformation!339 (h!6950 (t!21016 rules!2471)))) e!53093))))

(declare-fun b!95922 () Bool)

(declare-fun e!53091 () Bool)

(declare-fun tp!55843 () Bool)

(assert (=> b!95922 (= e!53091 (and e!53092 tp!55843))))

(assert (=> b!95747 (= tp!55781 e!53091)))

(assert (= b!95923 b!95924))

(assert (= b!95922 b!95923))

(assert (= (and b!95747 ((_ is Cons!1553) (t!21016 rules!2471))) b!95922))

(declare-fun m!79070 () Bool)

(assert (=> b!95923 m!79070))

(declare-fun m!79072 () Bool)

(assert (=> b!95923 m!79072))

(check-sat (not d!21773) (not b_next!2851) tp_is_empty!737 (not d!21749) (not b!95911) (not b!95853) (not b_next!2841) (not b!95892) (not b!95865) (not b!95887) (not b!95890) b_and!4285 (not d!21783) (not b!95852) b_and!4275 (not b!95922) (not bm!4345) (not b!95851) (not b!95885) (not b!95859) (not b!95899) b_and!4277 (not b!95888) (not d!21777) (not d!21779) (not b!95894) b_and!4283 (not b!95849) (not b!95886) (not b_next!2843) (not b_next!2849) (not b!95912) (not b!95856) (not b!95891) (not b!95923) (not d!21789) (not d!21751) (not b!95913) (not b!95884))
(check-sat b_and!4275 (not b_next!2851) b_and!4277 (not b_next!2849) (not b_next!2841) b_and!4285 b_and!4283 (not b_next!2843))
(get-model)

(declare-fun d!21803 () Bool)

(assert (=> d!21803 (= (inv!1901 (tag!517 (h!6950 (t!21016 rules!2471)))) (= (mod (str.len (value!12529 (tag!517 (h!6950 (t!21016 rules!2471))))) 2) 0))))

(assert (=> b!95923 d!21803))

(declare-fun d!21805 () Bool)

(declare-fun res!46876 () Bool)

(declare-fun e!53099 () Bool)

(assert (=> d!21805 (=> (not res!46876) (not e!53099))))

(assert (=> d!21805 (= res!46876 (semiInverseModEq!75 (toChars!737 (transformation!339 (h!6950 (t!21016 rules!2471)))) (toValue!878 (transformation!339 (h!6950 (t!21016 rules!2471))))))))

(assert (=> d!21805 (= (inv!1903 (transformation!339 (h!6950 (t!21016 rules!2471)))) e!53099)))

(declare-fun b!95929 () Bool)

(assert (=> b!95929 (= e!53099 (equivClasses!70 (toChars!737 (transformation!339 (h!6950 (t!21016 rules!2471)))) (toValue!878 (transformation!339 (h!6950 (t!21016 rules!2471))))))))

(assert (= (and d!21805 res!46876) b!95929))

(declare-fun m!79082 () Bool)

(assert (=> d!21805 m!79082))

(declare-fun m!79084 () Bool)

(assert (=> b!95929 m!79084))

(assert (=> b!95923 d!21805))

(declare-fun d!21807 () Bool)

(assert (=> d!21807 true))

(declare-fun order!645 () Int)

(declare-fun order!643 () Int)

(declare-fun lambda!1687 () Int)

(declare-fun dynLambda!420 (Int Int) Int)

(declare-fun dynLambda!421 (Int Int) Int)

(assert (=> d!21807 (< (dynLambda!420 order!643 (toValue!878 (transformation!339 (h!6950 rules!2471)))) (dynLambda!421 order!645 lambda!1687))))

(declare-fun Forall2!42 (Int) Bool)

(assert (=> d!21807 (= (equivClasses!70 (toChars!737 (transformation!339 (h!6950 rules!2471))) (toValue!878 (transformation!339 (h!6950 rules!2471)))) (Forall2!42 lambda!1687))))

(declare-fun bs!9441 () Bool)

(assert (= bs!9441 d!21807))

(declare-fun m!79192 () Bool)

(assert (=> bs!9441 m!79192))

(assert (=> b!95856 d!21807))

(declare-fun d!21851 () Bool)

(assert (=> d!21851 (= (get!395 lt!24602) (v!12914 lt!24602))))

(assert (=> b!95891 d!21851))

(declare-fun d!21853 () Bool)

(declare-fun dynLambda!422 (Int BalanceConc!960) TokenValue!329)

(assert (=> d!21853 (= (apply!241 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24602))))) (dynLambda!422 (toValue!878 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602))))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24602))))))))

(declare-fun b_lambda!1109 () Bool)

(assert (=> (not b_lambda!1109) (not d!21853)))

(declare-fun tb!2947 () Bool)

(declare-fun t!21029 () Bool)

(assert (=> (and b!95750 (= (toValue!878 (transformation!339 (h!6950 rules!2471))) (toValue!878 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21029) tb!2947))

(declare-fun result!4228 () Bool)

(declare-fun inv!21 (TokenValue!329) Bool)

(assert (=> tb!2947 (= result!4228 (inv!21 (dynLambda!422 (toValue!878 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602))))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun m!79194 () Bool)

(assert (=> tb!2947 m!79194))

(assert (=> d!21853 t!21029))

(declare-fun b_and!4295 () Bool)

(assert (= b_and!4275 (and (=> t!21029 result!4228) b_and!4295)))

(declare-fun tb!2949 () Bool)

(declare-fun t!21031 () Bool)

(assert (=> (and b!95924 (= (toValue!878 (transformation!339 (h!6950 (t!21016 rules!2471)))) (toValue!878 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21031) tb!2949))

(declare-fun result!4232 () Bool)

(assert (= result!4232 result!4228))

(assert (=> d!21853 t!21031))

(declare-fun b_and!4297 () Bool)

(assert (= b_and!4283 (and (=> t!21031 result!4232) b_and!4297)))

(assert (=> d!21853 m!79058))

(declare-fun m!79196 () Bool)

(assert (=> d!21853 m!79196))

(assert (=> b!95891 d!21853))

(declare-fun d!21855 () Bool)

(assert (=> d!21855 (= (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24602)))) (fromListB!73 (originalCharacters!388 (_1!1030 (get!395 lt!24602)))))))

(declare-fun bs!9442 () Bool)

(assert (= bs!9442 d!21855))

(declare-fun m!79198 () Bool)

(assert (=> bs!9442 m!79198))

(assert (=> b!95891 d!21855))

(declare-fun b!96071 () Bool)

(declare-fun e!53178 () Bool)

(declare-fun e!53181 () Bool)

(assert (=> b!96071 (= e!53178 e!53181)))

(declare-fun res!46959 () Bool)

(assert (=> b!96071 (=> (not res!46959) (not e!53181))))

(declare-fun lt!24724 () Option!154)

(assert (=> b!96071 (= res!46959 (matchR!37 (regex!339 (h!6950 rules!2471)) (list!586 (charsOf!72 (_1!1030 (get!395 lt!24724))))))))

(declare-fun b!96072 () Bool)

(declare-fun res!46961 () Bool)

(assert (=> b!96072 (=> (not res!46961) (not e!53181))))

(assert (=> b!96072 (= res!46961 (= (++!206 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24724)))) (_2!1030 (get!395 lt!24724))) input!2238))))

(declare-fun d!21857 () Bool)

(assert (=> d!21857 e!53178))

(declare-fun res!46962 () Bool)

(assert (=> d!21857 (=> res!46962 e!53178)))

(assert (=> d!21857 (= res!46962 (isEmpty!627 lt!24724))))

(declare-fun e!53179 () Option!154)

(assert (=> d!21857 (= lt!24724 e!53179)))

(declare-fun c!23601 () Bool)

(declare-datatypes ((tuple2!1654 0))(
  ( (tuple2!1655 (_1!1034 List!1556) (_2!1034 List!1556)) )
))
(declare-fun lt!24723 () tuple2!1654)

(assert (=> d!21857 (= c!23601 (isEmpty!624 (_1!1034 lt!24723)))))

(declare-fun findLongestMatch!19 (Regex!407 List!1556) tuple2!1654)

(assert (=> d!21857 (= lt!24723 (findLongestMatch!19 (regex!339 (h!6950 rules!2471)) input!2238))))

(declare-fun ruleValid!36 (LexerInterface!231 Rule!478) Bool)

(assert (=> d!21857 (ruleValid!36 thiss!19403 (h!6950 rules!2471))))

(assert (=> d!21857 (= (maxPrefixOneRule!33 thiss!19403 (h!6950 rules!2471) input!2238) lt!24724)))

(declare-fun b!96073 () Bool)

(declare-fun e!53180 () Bool)

(declare-fun findLongestMatchInner!20 (Regex!407 List!1556 Int List!1556 List!1556 Int) tuple2!1654)

(assert (=> b!96073 (= e!53180 (matchR!37 (regex!339 (h!6950 rules!2471)) (_1!1034 (findLongestMatchInner!20 (regex!339 (h!6950 rules!2471)) Nil!1550 (size!1347 Nil!1550) input!2238 input!2238 (size!1347 input!2238)))))))

(declare-fun b!96074 () Bool)

(assert (=> b!96074 (= e!53179 (Some!153 (tuple2!1647 (Token!435 (apply!241 (transformation!339 (h!6950 rules!2471)) (seqFromList!177 (_1!1034 lt!24723))) (h!6950 rules!2471) (size!1350 (seqFromList!177 (_1!1034 lt!24723))) (_1!1034 lt!24723)) (_2!1034 lt!24723))))))

(declare-fun lt!24722 () Unit!1004)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!21 (Regex!407 List!1556) Unit!1004)

(assert (=> b!96074 (= lt!24722 (longestMatchIsAcceptedByMatchOrIsEmpty!21 (regex!339 (h!6950 rules!2471)) input!2238))))

(declare-fun res!46963 () Bool)

(assert (=> b!96074 (= res!46963 (isEmpty!624 (_1!1034 (findLongestMatchInner!20 (regex!339 (h!6950 rules!2471)) Nil!1550 (size!1347 Nil!1550) input!2238 input!2238 (size!1347 input!2238)))))))

(assert (=> b!96074 (=> res!46963 e!53180)))

(assert (=> b!96074 e!53180))

(declare-fun lt!24721 () Unit!1004)

(assert (=> b!96074 (= lt!24721 lt!24722)))

(declare-fun lt!24725 () Unit!1004)

(declare-fun lemmaSemiInverse!19 (TokenValueInjection!482 BalanceConc!960) Unit!1004)

(assert (=> b!96074 (= lt!24725 (lemmaSemiInverse!19 (transformation!339 (h!6950 rules!2471)) (seqFromList!177 (_1!1034 lt!24723))))))

(declare-fun b!96075 () Bool)

(assert (=> b!96075 (= e!53179 None!153)))

(declare-fun b!96076 () Bool)

(declare-fun res!46957 () Bool)

(assert (=> b!96076 (=> (not res!46957) (not e!53181))))

(assert (=> b!96076 (= res!46957 (= (value!12555 (_1!1030 (get!395 lt!24724))) (apply!241 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24724)))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24724)))))))))

(declare-fun b!96077 () Bool)

(assert (=> b!96077 (= e!53181 (= (size!1346 (_1!1030 (get!395 lt!24724))) (size!1347 (originalCharacters!388 (_1!1030 (get!395 lt!24724))))))))

(declare-fun b!96078 () Bool)

(declare-fun res!46960 () Bool)

(assert (=> b!96078 (=> (not res!46960) (not e!53181))))

(assert (=> b!96078 (= res!46960 (< (size!1347 (_2!1030 (get!395 lt!24724))) (size!1347 input!2238)))))

(declare-fun b!96079 () Bool)

(declare-fun res!46958 () Bool)

(assert (=> b!96079 (=> (not res!46958) (not e!53181))))

(assert (=> b!96079 (= res!46958 (= (rule!836 (_1!1030 (get!395 lt!24724))) (h!6950 rules!2471)))))

(assert (= (and d!21857 c!23601) b!96075))

(assert (= (and d!21857 (not c!23601)) b!96074))

(assert (= (and b!96074 (not res!46963)) b!96073))

(assert (= (and d!21857 (not res!46962)) b!96071))

(assert (= (and b!96071 res!46959) b!96072))

(assert (= (and b!96072 res!46961) b!96078))

(assert (= (and b!96078 res!46960) b!96079))

(assert (= (and b!96079 res!46958) b!96076))

(assert (= (and b!96076 res!46957) b!96077))

(declare-fun m!79200 () Bool)

(assert (=> b!96077 m!79200))

(declare-fun m!79202 () Bool)

(assert (=> b!96077 m!79202))

(assert (=> b!96072 m!79200))

(declare-fun m!79204 () Bool)

(assert (=> b!96072 m!79204))

(assert (=> b!96072 m!79204))

(declare-fun m!79206 () Bool)

(assert (=> b!96072 m!79206))

(assert (=> b!96072 m!79206))

(declare-fun m!79208 () Bool)

(assert (=> b!96072 m!79208))

(declare-fun m!79210 () Bool)

(assert (=> d!21857 m!79210))

(declare-fun m!79212 () Bool)

(assert (=> d!21857 m!79212))

(declare-fun m!79214 () Bool)

(assert (=> d!21857 m!79214))

(declare-fun m!79216 () Bool)

(assert (=> d!21857 m!79216))

(declare-fun m!79218 () Bool)

(assert (=> b!96073 m!79218))

(assert (=> b!96073 m!78904))

(assert (=> b!96073 m!79218))

(assert (=> b!96073 m!78904))

(declare-fun m!79220 () Bool)

(assert (=> b!96073 m!79220))

(declare-fun m!79222 () Bool)

(assert (=> b!96073 m!79222))

(assert (=> b!96071 m!79200))

(assert (=> b!96071 m!79204))

(assert (=> b!96071 m!79204))

(assert (=> b!96071 m!79206))

(assert (=> b!96071 m!79206))

(declare-fun m!79224 () Bool)

(assert (=> b!96071 m!79224))

(declare-fun m!79226 () Bool)

(assert (=> b!96074 m!79226))

(declare-fun m!79228 () Bool)

(assert (=> b!96074 m!79228))

(declare-fun m!79230 () Bool)

(assert (=> b!96074 m!79230))

(assert (=> b!96074 m!79218))

(assert (=> b!96074 m!79218))

(assert (=> b!96074 m!78904))

(assert (=> b!96074 m!79220))

(assert (=> b!96074 m!79226))

(declare-fun m!79232 () Bool)

(assert (=> b!96074 m!79232))

(assert (=> b!96074 m!79226))

(declare-fun m!79234 () Bool)

(assert (=> b!96074 m!79234))

(assert (=> b!96074 m!78904))

(assert (=> b!96074 m!79226))

(declare-fun m!79236 () Bool)

(assert (=> b!96074 m!79236))

(assert (=> b!96076 m!79200))

(declare-fun m!79238 () Bool)

(assert (=> b!96076 m!79238))

(assert (=> b!96076 m!79238))

(declare-fun m!79240 () Bool)

(assert (=> b!96076 m!79240))

(assert (=> b!96079 m!79200))

(assert (=> b!96078 m!79200))

(declare-fun m!79242 () Bool)

(assert (=> b!96078 m!79242))

(assert (=> b!96078 m!78904))

(assert (=> bm!4345 d!21857))

(declare-fun d!21859 () Bool)

(assert (=> d!21859 (= (isEmpty!627 lt!24602) (not ((_ is Some!153) lt!24602)))))

(assert (=> d!21789 d!21859))

(declare-fun b!96097 () Bool)

(declare-fun e!53194 () Bool)

(declare-fun tail!156 (List!1556) List!1556)

(assert (=> b!96097 (= e!53194 (isPrefix!35 (tail!156 input!2238) (tail!156 input!2238)))))

(declare-fun b!96095 () Bool)

(declare-fun e!53193 () Bool)

(assert (=> b!96095 (= e!53193 e!53194)))

(declare-fun res!46973 () Bool)

(assert (=> b!96095 (=> (not res!46973) (not e!53194))))

(assert (=> b!96095 (= res!46973 (not ((_ is Nil!1550) input!2238)))))

(declare-fun b!96096 () Bool)

(declare-fun res!46974 () Bool)

(assert (=> b!96096 (=> (not res!46974) (not e!53194))))

(declare-fun head!444 (List!1556) C!1736)

(assert (=> b!96096 (= res!46974 (= (head!444 input!2238) (head!444 input!2238)))))

(declare-fun b!96098 () Bool)

(declare-fun e!53192 () Bool)

(assert (=> b!96098 (= e!53192 (>= (size!1347 input!2238) (size!1347 input!2238)))))

(declare-fun d!21861 () Bool)

(assert (=> d!21861 e!53192))

(declare-fun res!46975 () Bool)

(assert (=> d!21861 (=> res!46975 e!53192)))

(declare-fun lt!24762 () Bool)

(assert (=> d!21861 (= res!46975 (not lt!24762))))

(assert (=> d!21861 (= lt!24762 e!53193)))

(declare-fun res!46976 () Bool)

(assert (=> d!21861 (=> res!46976 e!53193)))

(assert (=> d!21861 (= res!46976 ((_ is Nil!1550) input!2238))))

(assert (=> d!21861 (= (isPrefix!35 input!2238 input!2238) lt!24762)))

(assert (= (and d!21861 (not res!46976)) b!96095))

(assert (= (and b!96095 res!46973) b!96096))

(assert (= (and b!96096 res!46974) b!96097))

(assert (= (and d!21861 (not res!46975)) b!96098))

(declare-fun m!79336 () Bool)

(assert (=> b!96097 m!79336))

(assert (=> b!96097 m!79336))

(assert (=> b!96097 m!79336))

(assert (=> b!96097 m!79336))

(declare-fun m!79338 () Bool)

(assert (=> b!96097 m!79338))

(declare-fun m!79340 () Bool)

(assert (=> b!96096 m!79340))

(assert (=> b!96096 m!79340))

(assert (=> b!96098 m!78904))

(assert (=> b!96098 m!78904))

(assert (=> d!21789 d!21861))

(declare-fun d!21867 () Bool)

(assert (=> d!21867 (isPrefix!35 input!2238 input!2238)))

(declare-fun lt!24765 () Unit!1004)

(declare-fun choose!1368 (List!1556 List!1556) Unit!1004)

(assert (=> d!21867 (= lt!24765 (choose!1368 input!2238 input!2238))))

(assert (=> d!21867 (= (lemmaIsPrefixRefl!35 input!2238 input!2238) lt!24765)))

(declare-fun bs!9444 () Bool)

(assert (= bs!9444 d!21867))

(assert (=> bs!9444 m!79038))

(declare-fun m!79342 () Bool)

(assert (=> bs!9444 m!79342))

(assert (=> d!21789 d!21867))

(declare-fun d!21869 () Bool)

(assert (=> d!21869 true))

(declare-fun lt!24768 () Bool)

(declare-fun lambda!1690 () Int)

(declare-fun forall!205 (List!1559 Int) Bool)

(assert (=> d!21869 (= lt!24768 (forall!205 rules!2471 lambda!1690))))

(declare-fun e!53199 () Bool)

(assert (=> d!21869 (= lt!24768 e!53199)))

(declare-fun res!46982 () Bool)

(assert (=> d!21869 (=> res!46982 e!53199)))

(assert (=> d!21869 (= res!46982 (not ((_ is Cons!1553) rules!2471)))))

(assert (=> d!21869 (= (rulesValidInductive!61 thiss!19403 rules!2471) lt!24768)))

(declare-fun b!96103 () Bool)

(declare-fun e!53200 () Bool)

(assert (=> b!96103 (= e!53199 e!53200)))

(declare-fun res!46981 () Bool)

(assert (=> b!96103 (=> (not res!46981) (not e!53200))))

(assert (=> b!96103 (= res!46981 (ruleValid!36 thiss!19403 (h!6950 rules!2471)))))

(declare-fun b!96104 () Bool)

(assert (=> b!96104 (= e!53200 (rulesValidInductive!61 thiss!19403 (t!21016 rules!2471)))))

(assert (= (and d!21869 (not res!46982)) b!96103))

(assert (= (and b!96103 res!46981) b!96104))

(declare-fun m!79344 () Bool)

(assert (=> d!21869 m!79344))

(assert (=> b!96103 m!79216))

(declare-fun m!79346 () Bool)

(assert (=> b!96104 m!79346))

(assert (=> d!21789 d!21869))

(declare-fun b!96150 () Bool)

(declare-fun e!53226 () Bool)

(declare-fun derivativeStep!26 (Regex!407 C!1736) Regex!407)

(assert (=> b!96150 (= e!53226 (matchR!37 (derivativeStep!26 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))) (head!444 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))))) (tail!156 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun b!96151 () Bool)

(declare-fun res!47002 () Bool)

(declare-fun e!53229 () Bool)

(assert (=> b!96151 (=> (not res!47002) (not e!53229))))

(assert (=> b!96151 (= res!47002 (isEmpty!624 (tail!156 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun b!96152 () Bool)

(declare-fun e!53227 () Bool)

(declare-fun e!53228 () Bool)

(assert (=> b!96152 (= e!53227 e!53228)))

(declare-fun res!47006 () Bool)

(assert (=> b!96152 (=> (not res!47006) (not e!53228))))

(declare-fun lt!24780 () Bool)

(assert (=> b!96152 (= res!47006 (not lt!24780))))

(declare-fun b!96153 () Bool)

(declare-fun res!47004 () Bool)

(assert (=> b!96153 (=> res!47004 e!53227)))

(assert (=> b!96153 (= res!47004 (not ((_ is ElementMatch!407) (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun e!53225 () Bool)

(assert (=> b!96153 (= e!53225 e!53227)))

(declare-fun b!96154 () Bool)

(assert (=> b!96154 (= e!53229 (= (head!444 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (c!23555 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun b!96155 () Bool)

(declare-fun res!47005 () Bool)

(declare-fun e!53230 () Bool)

(assert (=> b!96155 (=> res!47005 e!53230)))

(assert (=> b!96155 (= res!47005 (not (isEmpty!624 (tail!156 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))))

(declare-fun d!21871 () Bool)

(declare-fun e!53224 () Bool)

(assert (=> d!21871 e!53224))

(declare-fun c!23619 () Bool)

(assert (=> d!21871 (= c!23619 ((_ is EmptyExpr!407) (regex!339 (rule!836 (_1!1030 (get!395 lt!24602))))))))

(assert (=> d!21871 (= lt!24780 e!53226)))

(declare-fun c!23618 () Bool)

(assert (=> d!21871 (= c!23618 (isEmpty!624 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))

(declare-fun validRegex!51 (Regex!407) Bool)

(assert (=> d!21871 (validRegex!51 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))))))

(assert (=> d!21871 (= (matchR!37 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602)))) (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) lt!24780)))

(declare-fun b!96156 () Bool)

(assert (=> b!96156 (= e!53224 e!53225)))

(declare-fun c!23617 () Bool)

(assert (=> b!96156 (= c!23617 ((_ is EmptyLang!407) (regex!339 (rule!836 (_1!1030 (get!395 lt!24602))))))))

(declare-fun b!96157 () Bool)

(declare-fun call!4357 () Bool)

(assert (=> b!96157 (= e!53224 (= lt!24780 call!4357))))

(declare-fun b!96158 () Bool)

(declare-fun nullable!44 (Regex!407) Bool)

(assert (=> b!96158 (= e!53226 (nullable!44 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602))))))))

(declare-fun b!96159 () Bool)

(assert (=> b!96159 (= e!53228 e!53230)))

(declare-fun res!47003 () Bool)

(assert (=> b!96159 (=> res!47003 e!53230)))

(assert (=> b!96159 (= res!47003 call!4357)))

(declare-fun b!96160 () Bool)

(assert (=> b!96160 (= e!53225 (not lt!24780))))

(declare-fun b!96161 () Bool)

(assert (=> b!96161 (= e!53230 (not (= (head!444 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (c!23555 (regex!339 (rule!836 (_1!1030 (get!395 lt!24602))))))))))

(declare-fun bm!4352 () Bool)

(assert (=> bm!4352 (= call!4357 (isEmpty!624 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))

(declare-fun b!96162 () Bool)

(declare-fun res!47009 () Bool)

(assert (=> b!96162 (=> res!47009 e!53227)))

(assert (=> b!96162 (= res!47009 e!53229)))

(declare-fun res!47007 () Bool)

(assert (=> b!96162 (=> (not res!47007) (not e!53229))))

(assert (=> b!96162 (= res!47007 lt!24780)))

(declare-fun b!96163 () Bool)

(declare-fun res!47008 () Bool)

(assert (=> b!96163 (=> (not res!47008) (not e!53229))))

(assert (=> b!96163 (= res!47008 (not call!4357))))

(assert (= (and d!21871 c!23618) b!96158))

(assert (= (and d!21871 (not c!23618)) b!96150))

(assert (= (and d!21871 c!23619) b!96157))

(assert (= (and d!21871 (not c!23619)) b!96156))

(assert (= (and b!96156 c!23617) b!96160))

(assert (= (and b!96156 (not c!23617)) b!96153))

(assert (= (and b!96153 (not res!47004)) b!96162))

(assert (= (and b!96162 res!47007) b!96163))

(assert (= (and b!96163 res!47008) b!96151))

(assert (= (and b!96151 res!47002) b!96154))

(assert (= (and b!96162 (not res!47009)) b!96152))

(assert (= (and b!96152 res!47006) b!96159))

(assert (= (and b!96159 (not res!47003)) b!96155))

(assert (= (and b!96155 (not res!47005)) b!96161))

(assert (= (or b!96157 b!96159 b!96163) bm!4352))

(assert (=> d!21871 m!79052))

(declare-fun m!79362 () Bool)

(assert (=> d!21871 m!79362))

(declare-fun m!79364 () Bool)

(assert (=> d!21871 m!79364))

(assert (=> b!96161 m!79052))

(declare-fun m!79366 () Bool)

(assert (=> b!96161 m!79366))

(assert (=> bm!4352 m!79052))

(assert (=> bm!4352 m!79362))

(assert (=> b!96150 m!79052))

(assert (=> b!96150 m!79366))

(assert (=> b!96150 m!79366))

(declare-fun m!79368 () Bool)

(assert (=> b!96150 m!79368))

(assert (=> b!96150 m!79052))

(declare-fun m!79370 () Bool)

(assert (=> b!96150 m!79370))

(assert (=> b!96150 m!79368))

(assert (=> b!96150 m!79370))

(declare-fun m!79372 () Bool)

(assert (=> b!96150 m!79372))

(declare-fun m!79374 () Bool)

(assert (=> b!96158 m!79374))

(assert (=> b!96154 m!79052))

(assert (=> b!96154 m!79366))

(assert (=> b!96151 m!79052))

(assert (=> b!96151 m!79370))

(assert (=> b!96151 m!79370))

(declare-fun m!79376 () Bool)

(assert (=> b!96151 m!79376))

(assert (=> b!96155 m!79052))

(assert (=> b!96155 m!79370))

(assert (=> b!96155 m!79370))

(assert (=> b!96155 m!79376))

(assert (=> b!95892 d!21871))

(assert (=> b!95892 d!21851))

(declare-fun d!21877 () Bool)

(declare-fun list!590 (Conc!478) List!1556)

(assert (=> d!21877 (= (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))) (list!590 (c!23554 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))

(declare-fun bs!9446 () Bool)

(assert (= bs!9446 d!21877))

(declare-fun m!79378 () Bool)

(assert (=> bs!9446 m!79378))

(assert (=> b!95892 d!21877))

(declare-fun d!21879 () Bool)

(declare-fun lt!24783 () BalanceConc!960)

(assert (=> d!21879 (= (list!586 lt!24783) (originalCharacters!388 (_1!1030 (get!395 lt!24602))))))

(declare-fun dynLambda!424 (Int TokenValue!329) BalanceConc!960)

(assert (=> d!21879 (= lt!24783 (dynLambda!424 (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602))))) (value!12555 (_1!1030 (get!395 lt!24602)))))))

(assert (=> d!21879 (= (charsOf!72 (_1!1030 (get!395 lt!24602))) lt!24783)))

(declare-fun b_lambda!1111 () Bool)

(assert (=> (not b_lambda!1111) (not d!21879)))

(declare-fun tb!2951 () Bool)

(declare-fun t!21033 () Bool)

(assert (=> (and b!95750 (= (toChars!737 (transformation!339 (h!6950 rules!2471))) (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21033) tb!2951))

(declare-fun b!96168 () Bool)

(declare-fun e!53233 () Bool)

(declare-fun tp!55850 () Bool)

(declare-fun inv!1906 (Conc!478) Bool)

(assert (=> b!96168 (= e!53233 (and (inv!1906 (c!23554 (dynLambda!424 (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602))))) (value!12555 (_1!1030 (get!395 lt!24602)))))) tp!55850))))

(declare-fun result!4234 () Bool)

(declare-fun inv!1907 (BalanceConc!960) Bool)

(assert (=> tb!2951 (= result!4234 (and (inv!1907 (dynLambda!424 (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602))))) (value!12555 (_1!1030 (get!395 lt!24602))))) e!53233))))

(assert (= tb!2951 b!96168))

(declare-fun m!79380 () Bool)

(assert (=> b!96168 m!79380))

(declare-fun m!79382 () Bool)

(assert (=> tb!2951 m!79382))

(assert (=> d!21879 t!21033))

(declare-fun b_and!4299 () Bool)

(assert (= b_and!4277 (and (=> t!21033 result!4234) b_and!4299)))

(declare-fun t!21035 () Bool)

(declare-fun tb!2953 () Bool)

(assert (=> (and b!95924 (= (toChars!737 (transformation!339 (h!6950 (t!21016 rules!2471)))) (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21035) tb!2953))

(declare-fun result!4238 () Bool)

(assert (= result!4238 result!4234))

(assert (=> d!21879 t!21035))

(declare-fun b_and!4301 () Bool)

(assert (= b_and!4285 (and (=> t!21035 result!4238) b_and!4301)))

(declare-fun m!79384 () Bool)

(assert (=> d!21879 m!79384))

(declare-fun m!79386 () Bool)

(assert (=> d!21879 m!79386))

(assert (=> b!95892 d!21879))

(declare-fun d!21881 () Bool)

(assert (=> d!21881 true))

(declare-fun lambda!1693 () Int)

(declare-fun order!649 () Int)

(declare-fun order!647 () Int)

(declare-fun dynLambda!425 (Int Int) Int)

(declare-fun dynLambda!426 (Int Int) Int)

(assert (=> d!21881 (< (dynLambda!425 order!647 (toChars!737 (transformation!339 (h!6950 rules!2471)))) (dynLambda!426 order!649 lambda!1693))))

(assert (=> d!21881 true))

(assert (=> d!21881 (< (dynLambda!420 order!643 (toValue!878 (transformation!339 (h!6950 rules!2471)))) (dynLambda!426 order!649 lambda!1693))))

(declare-fun Forall!54 (Int) Bool)

(assert (=> d!21881 (= (semiInverseModEq!75 (toChars!737 (transformation!339 (h!6950 rules!2471))) (toValue!878 (transformation!339 (h!6950 rules!2471)))) (Forall!54 lambda!1693))))

(declare-fun bs!9447 () Bool)

(assert (= bs!9447 d!21881))

(declare-fun m!79388 () Bool)

(assert (=> bs!9447 m!79388))

(assert (=> d!21777 d!21881))

(declare-fun b!96183 () Bool)

(declare-fun e!53239 () List!1558)

(declare-fun list!591 (IArray!959) List!1558)

(assert (=> b!96183 (= e!53239 (list!591 (xs!3066 (c!23556 (_1!1029 lt!24554)))))))

(declare-fun b!96182 () Bool)

(declare-fun e!53238 () List!1558)

(assert (=> b!96182 (= e!53238 e!53239)))

(declare-fun c!23625 () Bool)

(assert (=> b!96182 (= c!23625 ((_ is Leaf!784) (c!23556 (_1!1029 lt!24554))))))

(declare-fun b!96181 () Bool)

(assert (=> b!96181 (= e!53238 Nil!1552)))

(declare-fun b!96184 () Bool)

(declare-fun ++!209 (List!1558 List!1558) List!1558)

(assert (=> b!96184 (= e!53239 (++!209 (list!587 (left!1177 (c!23556 (_1!1029 lt!24554)))) (list!587 (right!1507 (c!23556 (_1!1029 lt!24554))))))))

(declare-fun d!21883 () Bool)

(declare-fun c!23624 () Bool)

(assert (=> d!21883 (= c!23624 ((_ is Empty!479) (c!23556 (_1!1029 lt!24554))))))

(assert (=> d!21883 (= (list!587 (c!23556 (_1!1029 lt!24554))) e!53238)))

(assert (= (and d!21883 c!23624) b!96181))

(assert (= (and d!21883 (not c!23624)) b!96182))

(assert (= (and b!96182 c!23625) b!96183))

(assert (= (and b!96182 (not c!23625)) b!96184))

(declare-fun m!79390 () Bool)

(assert (=> b!96183 m!79390))

(declare-fun m!79392 () Bool)

(assert (=> b!96184 m!79392))

(declare-fun m!79394 () Bool)

(assert (=> b!96184 m!79394))

(assert (=> b!96184 m!79392))

(assert (=> b!96184 m!79394))

(declare-fun m!79396 () Bool)

(assert (=> b!96184 m!79396))

(assert (=> d!21779 d!21883))

(declare-fun d!21885 () Bool)

(declare-fun lt!24784 () Int)

(assert (=> d!21885 (>= lt!24784 0)))

(declare-fun e!53240 () Int)

(assert (=> d!21885 (= lt!24784 e!53240)))

(declare-fun c!23626 () Bool)

(assert (=> d!21885 (= c!23626 ((_ is Nil!1550) (t!21013 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238))))))))

(assert (=> d!21885 (= (size!1347 (t!21013 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238))))) lt!24784)))

(declare-fun b!96185 () Bool)

(assert (=> b!96185 (= e!53240 0)))

(declare-fun b!96186 () Bool)

(assert (=> b!96186 (= e!53240 (+ 1 (size!1347 (t!21013 (t!21013 (_2!1030 (get!395 (maxPrefix!71 thiss!19403 rules!2471 input!2238))))))))))

(assert (= (and d!21885 c!23626) b!96185))

(assert (= (and d!21885 (not c!23626)) b!96186))

(declare-fun m!79398 () Bool)

(assert (=> b!96186 m!79398))

(assert (=> b!95865 d!21885))

(declare-fun d!21887 () Bool)

(declare-fun lt!24787 () Int)

(declare-fun size!1355 (List!1558) Int)

(assert (=> d!21887 (= lt!24787 (size!1355 (list!583 (_1!1029 lt!24585))))))

(declare-fun size!1356 (Conc!479) Int)

(assert (=> d!21887 (= lt!24787 (size!1356 (c!23556 (_1!1029 lt!24585))))))

(assert (=> d!21887 (= (size!1351 (_1!1029 lt!24585)) lt!24787)))

(declare-fun bs!9448 () Bool)

(assert (= bs!9448 d!21887))

(assert (=> bs!9448 m!79014))

(assert (=> bs!9448 m!79014))

(declare-fun m!79400 () Bool)

(assert (=> bs!9448 m!79400))

(declare-fun m!79402 () Bool)

(assert (=> bs!9448 m!79402))

(assert (=> d!21751 d!21887))

(declare-fun b!96281 () Bool)

(declare-datatypes ((tuple2!1658 0))(
  ( (tuple2!1659 (_1!1036 Token!434) (_2!1036 BalanceConc!960)) )
))
(declare-datatypes ((Option!156 0))(
  ( (None!155) (Some!155 (v!12918 tuple2!1658)) )
))
(declare-fun lt!24901 () Option!156)

(declare-fun lt!24905 () tuple2!1644)

(declare-fun lexRec!38 (LexerInterface!231 List!1559 BalanceConc!960) tuple2!1644)

(assert (=> b!96281 (= lt!24905 (lexRec!38 thiss!19403 rules!2471 (_2!1036 (v!12918 lt!24901))))))

(declare-fun e!53290 () tuple2!1644)

(declare-fun prepend!107 (BalanceConc!962 Token!434) BalanceConc!962)

(assert (=> b!96281 (= e!53290 (tuple2!1645 (prepend!107 (_1!1029 lt!24905) (_1!1036 (v!12918 lt!24901))) (_2!1029 lt!24905)))))

(declare-fun b!96282 () Bool)

(declare-fun e!53289 () tuple2!1644)

(assert (=> b!96282 (= e!53289 (tuple2!1645 (BalanceConc!963 Empty!479) (seqFromList!177 input!2238)))))

(declare-fun b!96283 () Bool)

(declare-fun lt!24904 () BalanceConc!960)

(declare-fun lt!24889 () Option!156)

(declare-fun append!47 (BalanceConc!962 Token!434) BalanceConc!962)

(assert (=> b!96283 (= e!53289 (lexTailRecV2!58 thiss!19403 rules!2471 (seqFromList!177 input!2238) lt!24904 (_2!1036 (v!12918 lt!24889)) (append!47 (BalanceConc!963 Empty!479) (_1!1036 (v!12918 lt!24889)))))))

(declare-fun lt!24887 () tuple2!1644)

(assert (=> b!96283 (= lt!24887 (lexRec!38 thiss!19403 rules!2471 (_2!1036 (v!12918 lt!24889))))))

(declare-fun lt!24912 () List!1556)

(assert (=> b!96283 (= lt!24912 (list!586 (BalanceConc!961 Empty!478)))))

(declare-fun lt!24883 () List!1556)

(assert (=> b!96283 (= lt!24883 (list!586 (charsOf!72 (_1!1036 (v!12918 lt!24889)))))))

(declare-fun lt!24902 () List!1556)

(assert (=> b!96283 (= lt!24902 (list!586 (_2!1036 (v!12918 lt!24889))))))

(declare-fun lt!24914 () Unit!1004)

(declare-fun lemmaConcatAssociativity!76 (List!1556 List!1556 List!1556) Unit!1004)

(assert (=> b!96283 (= lt!24914 (lemmaConcatAssociativity!76 lt!24912 lt!24883 lt!24902))))

(assert (=> b!96283 (= (++!206 (++!206 lt!24912 lt!24883) lt!24902) (++!206 lt!24912 (++!206 lt!24883 lt!24902)))))

(declare-fun lt!24886 () Unit!1004)

(assert (=> b!96283 (= lt!24886 lt!24914)))

(declare-fun maxPrefixZipperSequence!36 (LexerInterface!231 List!1559 BalanceConc!960) Option!156)

(assert (=> b!96283 (= lt!24901 (maxPrefixZipperSequence!36 thiss!19403 rules!2471 (seqFromList!177 input!2238)))))

(declare-fun c!23643 () Bool)

(assert (=> b!96283 (= c!23643 ((_ is Some!155) lt!24901))))

(assert (=> b!96283 (= (lexRec!38 thiss!19403 rules!2471 (seqFromList!177 input!2238)) e!53290)))

(declare-fun lt!24898 () Unit!1004)

(declare-fun Unit!1008 () Unit!1004)

(assert (=> b!96283 (= lt!24898 Unit!1008)))

(declare-fun lt!24888 () List!1558)

(assert (=> b!96283 (= lt!24888 (list!583 (BalanceConc!963 Empty!479)))))

(declare-fun lt!24913 () List!1558)

(assert (=> b!96283 (= lt!24913 (Cons!1552 (_1!1036 (v!12918 lt!24889)) Nil!1552))))

(declare-fun lt!24909 () List!1558)

(assert (=> b!96283 (= lt!24909 (list!583 (_1!1029 lt!24887)))))

(declare-fun lt!24881 () Unit!1004)

(declare-fun lemmaConcatAssociativity!77 (List!1558 List!1558 List!1558) Unit!1004)

(assert (=> b!96283 (= lt!24881 (lemmaConcatAssociativity!77 lt!24888 lt!24913 lt!24909))))

(assert (=> b!96283 (= (++!209 (++!209 lt!24888 lt!24913) lt!24909) (++!209 lt!24888 (++!209 lt!24913 lt!24909)))))

(declare-fun lt!24895 () Unit!1004)

(assert (=> b!96283 (= lt!24895 lt!24881)))

(declare-fun lt!24910 () List!1556)

(assert (=> b!96283 (= lt!24910 (++!206 (list!586 (BalanceConc!961 Empty!478)) (list!586 (charsOf!72 (_1!1036 (v!12918 lt!24889))))))))

(declare-fun lt!24906 () List!1556)

(assert (=> b!96283 (= lt!24906 (list!586 (_2!1036 (v!12918 lt!24889))))))

(declare-fun lt!24884 () List!1558)

(assert (=> b!96283 (= lt!24884 (list!583 (append!47 (BalanceConc!963 Empty!479) (_1!1036 (v!12918 lt!24889)))))))

(declare-fun lt!24897 () Unit!1004)

(declare-fun lemmaLexThenLexPrefix!33 (LexerInterface!231 List!1559 List!1556 List!1556 List!1558 List!1558 List!1556) Unit!1004)

(assert (=> b!96283 (= lt!24897 (lemmaLexThenLexPrefix!33 thiss!19403 rules!2471 lt!24910 lt!24906 lt!24884 (list!583 (_1!1029 lt!24887)) (list!586 (_2!1029 lt!24887))))))

(assert (=> b!96283 (= (lexList!61 thiss!19403 rules!2471 lt!24910) (tuple2!1651 lt!24884 Nil!1550))))

(declare-fun lt!24907 () Unit!1004)

(assert (=> b!96283 (= lt!24907 lt!24897)))

(declare-fun lt!24892 () BalanceConc!960)

(declare-fun ++!210 (BalanceConc!960 BalanceConc!960) BalanceConc!960)

(assert (=> b!96283 (= lt!24892 (++!210 (BalanceConc!961 Empty!478) (charsOf!72 (_1!1036 (v!12918 lt!24889)))))))

(declare-fun lt!24891 () Option!156)

(assert (=> b!96283 (= lt!24891 (maxPrefixZipperSequence!36 thiss!19403 rules!2471 lt!24892))))

(declare-fun c!23645 () Bool)

(assert (=> b!96283 (= c!23645 ((_ is Some!155) lt!24891))))

(declare-fun e!53292 () tuple2!1644)

(assert (=> b!96283 (= (lexRec!38 thiss!19403 rules!2471 (++!210 (BalanceConc!961 Empty!478) (charsOf!72 (_1!1036 (v!12918 lt!24889))))) e!53292)))

(declare-fun lt!24911 () Unit!1004)

(declare-fun Unit!1009 () Unit!1004)

(assert (=> b!96283 (= lt!24911 Unit!1009)))

(assert (=> b!96283 (= lt!24904 (++!210 (BalanceConc!961 Empty!478) (charsOf!72 (_1!1036 (v!12918 lt!24889)))))))

(declare-fun lt!24899 () List!1556)

(assert (=> b!96283 (= lt!24899 (list!586 lt!24904))))

(declare-fun lt!24903 () List!1556)

(assert (=> b!96283 (= lt!24903 (list!586 (_2!1036 (v!12918 lt!24889))))))

(declare-fun lt!24885 () Unit!1004)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!33 (List!1556 List!1556) Unit!1004)

(assert (=> b!96283 (= lt!24885 (lemmaConcatTwoListThenFSndIsSuffix!33 lt!24899 lt!24903))))

(declare-fun isSuffix!33 (List!1556 List!1556) Bool)

(assert (=> b!96283 (isSuffix!33 lt!24903 (++!206 lt!24899 lt!24903))))

(declare-fun lt!24908 () Unit!1004)

(assert (=> b!96283 (= lt!24908 lt!24885)))

(declare-fun lt!24894 () tuple2!1644)

(declare-fun b!96284 () Bool)

(assert (=> b!96284 (= lt!24894 (lexRec!38 thiss!19403 rules!2471 (_2!1036 (v!12918 lt!24891))))))

(assert (=> b!96284 (= e!53292 (tuple2!1645 (prepend!107 (_1!1029 lt!24894) (_1!1036 (v!12918 lt!24891))) (_2!1029 lt!24894)))))

(declare-fun e!53291 () Bool)

(declare-fun lt!24893 () tuple2!1644)

(declare-fun b!96285 () Bool)

(assert (=> b!96285 (= e!53291 (= (list!586 (_2!1029 lt!24893)) (list!586 (_2!1029 (lexRec!38 thiss!19403 rules!2471 (seqFromList!177 input!2238))))))))

(declare-fun d!21889 () Bool)

(assert (=> d!21889 e!53291))

(declare-fun res!47044 () Bool)

(assert (=> d!21889 (=> (not res!47044) (not e!53291))))

(assert (=> d!21889 (= res!47044 (= (list!583 (_1!1029 lt!24893)) (list!583 (_1!1029 (lexRec!38 thiss!19403 rules!2471 (seqFromList!177 input!2238))))))))

(assert (=> d!21889 (= lt!24893 e!53289)))

(declare-fun c!23644 () Bool)

(assert (=> d!21889 (= c!23644 ((_ is Some!155) lt!24889))))

(declare-fun maxPrefixZipperSequenceV2!33 (LexerInterface!231 List!1559 BalanceConc!960 BalanceConc!960) Option!156)

(assert (=> d!21889 (= lt!24889 (maxPrefixZipperSequenceV2!33 thiss!19403 rules!2471 (seqFromList!177 input!2238) (seqFromList!177 input!2238)))))

(declare-fun lt!24896 () Unit!1004)

(declare-fun lt!24890 () Unit!1004)

(assert (=> d!21889 (= lt!24896 lt!24890)))

(declare-fun lt!24900 () List!1556)

(declare-fun lt!24882 () List!1556)

(assert (=> d!21889 (isSuffix!33 lt!24900 (++!206 lt!24882 lt!24900))))

(assert (=> d!21889 (= lt!24890 (lemmaConcatTwoListThenFSndIsSuffix!33 lt!24882 lt!24900))))

(assert (=> d!21889 (= lt!24900 (list!586 (seqFromList!177 input!2238)))))

(assert (=> d!21889 (= lt!24882 (list!586 (BalanceConc!961 Empty!478)))))

(assert (=> d!21889 (= (lexTailRecV2!58 thiss!19403 rules!2471 (seqFromList!177 input!2238) (BalanceConc!961 Empty!478) (seqFromList!177 input!2238) (BalanceConc!963 Empty!479)) lt!24893)))

(declare-fun b!96286 () Bool)

(assert (=> b!96286 (= e!53292 (tuple2!1645 (BalanceConc!963 Empty!479) lt!24892))))

(declare-fun b!96287 () Bool)

(assert (=> b!96287 (= e!53290 (tuple2!1645 (BalanceConc!963 Empty!479) (seqFromList!177 input!2238)))))

(assert (= (and d!21889 c!23644) b!96283))

(assert (= (and d!21889 (not c!23644)) b!96282))

(assert (= (and b!96283 c!23643) b!96281))

(assert (= (and b!96283 (not c!23643)) b!96287))

(assert (= (and b!96283 c!23645) b!96284))

(assert (= (and b!96283 (not c!23645)) b!96286))

(assert (= (and d!21889 res!47044) b!96285))

(declare-fun m!79482 () Bool)

(assert (=> b!96285 m!79482))

(assert (=> b!96285 m!78908))

(declare-fun m!79484 () Bool)

(assert (=> b!96285 m!79484))

(declare-fun m!79486 () Bool)

(assert (=> b!96285 m!79486))

(assert (=> d!21889 m!78908))

(assert (=> d!21889 m!79484))

(declare-fun m!79488 () Bool)

(assert (=> d!21889 m!79488))

(declare-fun m!79490 () Bool)

(assert (=> d!21889 m!79490))

(declare-fun m!79492 () Bool)

(assert (=> d!21889 m!79492))

(declare-fun m!79494 () Bool)

(assert (=> d!21889 m!79494))

(assert (=> d!21889 m!78908))

(assert (=> d!21889 m!79006))

(assert (=> d!21889 m!78908))

(assert (=> d!21889 m!78908))

(declare-fun m!79496 () Bool)

(assert (=> d!21889 m!79496))

(declare-fun m!79498 () Bool)

(assert (=> d!21889 m!79498))

(assert (=> d!21889 m!79498))

(declare-fun m!79500 () Bool)

(assert (=> d!21889 m!79500))

(declare-fun m!79502 () Bool)

(assert (=> b!96284 m!79502))

(declare-fun m!79504 () Bool)

(assert (=> b!96284 m!79504))

(declare-fun m!79506 () Bool)

(assert (=> b!96281 m!79506))

(declare-fun m!79508 () Bool)

(assert (=> b!96281 m!79508))

(declare-fun m!79510 () Bool)

(assert (=> b!96283 m!79510))

(declare-fun m!79512 () Bool)

(assert (=> b!96283 m!79512))

(declare-fun m!79514 () Bool)

(assert (=> b!96283 m!79514))

(declare-fun m!79516 () Bool)

(assert (=> b!96283 m!79516))

(declare-fun m!79518 () Bool)

(assert (=> b!96283 m!79518))

(assert (=> b!96283 m!79514))

(declare-fun m!79520 () Bool)

(assert (=> b!96283 m!79520))

(declare-fun m!79522 () Bool)

(assert (=> b!96283 m!79522))

(assert (=> b!96283 m!79494))

(declare-fun m!79524 () Bool)

(assert (=> b!96283 m!79524))

(assert (=> b!96283 m!79514))

(declare-fun m!79526 () Bool)

(assert (=> b!96283 m!79526))

(assert (=> b!96283 m!78908))

(assert (=> b!96283 m!79516))

(declare-fun m!79528 () Bool)

(assert (=> b!96283 m!79528))

(declare-fun m!79530 () Bool)

(assert (=> b!96283 m!79530))

(declare-fun m!79532 () Bool)

(assert (=> b!96283 m!79532))

(declare-fun m!79534 () Bool)

(assert (=> b!96283 m!79534))

(assert (=> b!96283 m!79510))

(declare-fun m!79536 () Bool)

(assert (=> b!96283 m!79536))

(declare-fun m!79538 () Bool)

(assert (=> b!96283 m!79538))

(declare-fun m!79540 () Bool)

(assert (=> b!96283 m!79540))

(assert (=> b!96283 m!78908))

(assert (=> b!96283 m!79484))

(declare-fun m!79542 () Bool)

(assert (=> b!96283 m!79542))

(assert (=> b!96283 m!79530))

(declare-fun m!79544 () Bool)

(assert (=> b!96283 m!79544))

(declare-fun m!79546 () Bool)

(assert (=> b!96283 m!79546))

(declare-fun m!79548 () Bool)

(assert (=> b!96283 m!79548))

(declare-fun m!79550 () Bool)

(assert (=> b!96283 m!79550))

(assert (=> b!96283 m!79544))

(declare-fun m!79552 () Bool)

(assert (=> b!96283 m!79552))

(assert (=> b!96283 m!79532))

(assert (=> b!96283 m!79516))

(declare-fun m!79554 () Bool)

(assert (=> b!96283 m!79554))

(assert (=> b!96283 m!79552))

(declare-fun m!79556 () Bool)

(assert (=> b!96283 m!79556))

(declare-fun m!79558 () Bool)

(assert (=> b!96283 m!79558))

(declare-fun m!79560 () Bool)

(assert (=> b!96283 m!79560))

(assert (=> b!96283 m!79560))

(declare-fun m!79562 () Bool)

(assert (=> b!96283 m!79562))

(assert (=> b!96283 m!79526))

(declare-fun m!79564 () Bool)

(assert (=> b!96283 m!79564))

(declare-fun m!79566 () Bool)

(assert (=> b!96283 m!79566))

(assert (=> b!96283 m!79536))

(assert (=> b!96283 m!79494))

(assert (=> b!96283 m!79520))

(declare-fun m!79568 () Bool)

(assert (=> b!96283 m!79568))

(assert (=> b!96283 m!78908))

(declare-fun m!79570 () Bool)

(assert (=> b!96283 m!79570))

(assert (=> d!21751 d!21889))

(declare-fun d!21907 () Bool)

(declare-fun lt!24917 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!109 (List!1559) (InoxSet Rule!478))

(assert (=> d!21907 (= lt!24917 (select (content!109 rules!2471) (rule!836 (_1!1030 (get!395 lt!24602)))))))

(declare-fun e!53297 () Bool)

(assert (=> d!21907 (= lt!24917 e!53297)))

(declare-fun res!47050 () Bool)

(assert (=> d!21907 (=> (not res!47050) (not e!53297))))

(assert (=> d!21907 (= res!47050 ((_ is Cons!1553) rules!2471))))

(assert (=> d!21907 (= (contains!242 rules!2471 (rule!836 (_1!1030 (get!395 lt!24602)))) lt!24917)))

(declare-fun b!96292 () Bool)

(declare-fun e!53298 () Bool)

(assert (=> b!96292 (= e!53297 e!53298)))

(declare-fun res!47049 () Bool)

(assert (=> b!96292 (=> res!47049 e!53298)))

(assert (=> b!96292 (= res!47049 (= (h!6950 rules!2471) (rule!836 (_1!1030 (get!395 lt!24602)))))))

(declare-fun b!96293 () Bool)

(assert (=> b!96293 (= e!53298 (contains!242 (t!21016 rules!2471) (rule!836 (_1!1030 (get!395 lt!24602)))))))

(assert (= (and d!21907 res!47050) b!96292))

(assert (= (and b!96292 (not res!47049)) b!96293))

(declare-fun m!79572 () Bool)

(assert (=> d!21907 m!79572))

(declare-fun m!79574 () Bool)

(assert (=> d!21907 m!79574))

(declare-fun m!79576 () Bool)

(assert (=> b!96293 m!79576))

(assert (=> b!95885 d!21907))

(assert (=> b!95885 d!21851))

(declare-fun d!21909 () Bool)

(declare-fun lt!24920 () Int)

(assert (=> d!21909 (= lt!24920 (size!1347 (list!586 (_2!1029 lt!24585))))))

(declare-fun size!1357 (Conc!478) Int)

(assert (=> d!21909 (= lt!24920 (size!1357 (c!23554 (_2!1029 lt!24585))))))

(assert (=> d!21909 (= (size!1350 (_2!1029 lt!24585)) lt!24920)))

(declare-fun bs!9454 () Bool)

(assert (= bs!9454 d!21909))

(assert (=> bs!9454 m!79004))

(assert (=> bs!9454 m!79004))

(declare-fun m!79578 () Bool)

(assert (=> bs!9454 m!79578))

(declare-fun m!79580 () Bool)

(assert (=> bs!9454 m!79580))

(assert (=> b!95849 d!21909))

(declare-fun d!21911 () Bool)

(declare-fun lt!24921 () Int)

(assert (=> d!21911 (= lt!24921 (size!1347 (list!586 (seqFromList!177 input!2238))))))

(assert (=> d!21911 (= lt!24921 (size!1357 (c!23554 (seqFromList!177 input!2238))))))

(assert (=> d!21911 (= (size!1350 (seqFromList!177 input!2238)) lt!24921)))

(declare-fun bs!9455 () Bool)

(assert (= bs!9455 d!21911))

(assert (=> bs!9455 m!78908))

(assert (=> bs!9455 m!79006))

(assert (=> bs!9455 m!79006))

(declare-fun m!79582 () Bool)

(assert (=> bs!9455 m!79582))

(declare-fun m!79584 () Bool)

(assert (=> bs!9455 m!79584))

(assert (=> b!95849 d!21911))

(declare-fun d!21913 () Bool)

(assert (=> d!21913 (= (isDefined!48 lt!24602) (not (isEmpty!627 lt!24602)))))

(declare-fun bs!9456 () Bool)

(assert (= bs!9456 d!21913))

(assert (=> bs!9456 m!79036))

(assert (=> b!95884 d!21913))

(declare-fun d!21915 () Bool)

(declare-fun res!47055 () Bool)

(declare-fun e!53303 () Bool)

(assert (=> d!21915 (=> res!47055 e!53303)))

(assert (=> d!21915 (= res!47055 ((_ is Nil!1553) rules!2471))))

(assert (=> d!21915 (= (noDuplicateTag!83 thiss!19403 rules!2471 Nil!1555) e!53303)))

(declare-fun b!96298 () Bool)

(declare-fun e!53304 () Bool)

(assert (=> b!96298 (= e!53303 e!53304)))

(declare-fun res!47056 () Bool)

(assert (=> b!96298 (=> (not res!47056) (not e!53304))))

(declare-fun contains!244 (List!1561 String!2036) Bool)

(assert (=> b!96298 (= res!47056 (not (contains!244 Nil!1555 (tag!517 (h!6950 rules!2471)))))))

(declare-fun b!96299 () Bool)

(assert (=> b!96299 (= e!53304 (noDuplicateTag!83 thiss!19403 (t!21016 rules!2471) (Cons!1555 (tag!517 (h!6950 rules!2471)) Nil!1555)))))

(assert (= (and d!21915 (not res!47055)) b!96298))

(assert (= (and b!96298 res!47056) b!96299))

(declare-fun m!79586 () Bool)

(assert (=> b!96298 m!79586))

(declare-fun m!79588 () Bool)

(assert (=> b!96299 m!79588))

(assert (=> b!95859 d!21915))

(declare-fun bs!9457 () Bool)

(declare-fun d!21917 () Bool)

(assert (= bs!9457 (and d!21917 d!21869)))

(declare-fun lambda!1699 () Int)

(assert (=> bs!9457 (= lambda!1699 lambda!1690)))

(assert (=> d!21917 true))

(declare-fun lt!24924 () Bool)

(assert (=> d!21917 (= lt!24924 (rulesValidInductive!61 thiss!19403 rules!2471))))

(assert (=> d!21917 (= lt!24924 (forall!205 rules!2471 lambda!1699))))

(assert (=> d!21917 (= (rulesValid!83 thiss!19403 rules!2471) lt!24924)))

(declare-fun bs!9458 () Bool)

(assert (= bs!9458 d!21917))

(assert (=> bs!9458 m!79042))

(declare-fun m!79590 () Bool)

(assert (=> bs!9458 m!79590))

(assert (=> d!21783 d!21917))

(declare-fun d!21919 () Bool)

(declare-fun lt!24927 () Bool)

(declare-fun isEmpty!630 (List!1558) Bool)

(assert (=> d!21919 (= lt!24927 (isEmpty!630 (list!583 (_1!1029 lt!24585))))))

(declare-fun isEmpty!631 (Conc!479) Bool)

(assert (=> d!21919 (= lt!24927 (isEmpty!631 (c!23556 (_1!1029 lt!24585))))))

(assert (=> d!21919 (= (isEmpty!626 (_1!1029 lt!24585)) lt!24927)))

(declare-fun bs!9459 () Bool)

(assert (= bs!9459 d!21919))

(assert (=> bs!9459 m!79014))

(assert (=> bs!9459 m!79014))

(declare-fun m!79592 () Bool)

(assert (=> bs!9459 m!79592))

(declare-fun m!79594 () Bool)

(assert (=> bs!9459 m!79594))

(assert (=> b!95853 d!21919))

(declare-fun b!96300 () Bool)

(declare-fun e!53307 () Bool)

(declare-fun e!53306 () Bool)

(assert (=> b!96300 (= e!53307 e!53306)))

(declare-fun res!47061 () Bool)

(assert (=> b!96300 (=> (not res!47061) (not e!53306))))

(declare-fun lt!24931 () Option!154)

(assert (=> b!96300 (= res!47061 (isDefined!48 lt!24931))))

(declare-fun d!21921 () Bool)

(assert (=> d!21921 e!53307))

(declare-fun res!47060 () Bool)

(assert (=> d!21921 (=> res!47060 e!53307)))

(assert (=> d!21921 (= res!47060 (isEmpty!627 lt!24931))))

(declare-fun e!53305 () Option!154)

(assert (=> d!21921 (= lt!24931 e!53305)))

(declare-fun c!23646 () Bool)

(assert (=> d!21921 (= c!23646 (and ((_ is Cons!1553) (t!21016 rules!2471)) ((_ is Nil!1553) (t!21016 (t!21016 rules!2471)))))))

(declare-fun lt!24929 () Unit!1004)

(declare-fun lt!24932 () Unit!1004)

(assert (=> d!21921 (= lt!24929 lt!24932)))

(assert (=> d!21921 (isPrefix!35 input!2238 input!2238)))

(assert (=> d!21921 (= lt!24932 (lemmaIsPrefixRefl!35 input!2238 input!2238))))

(assert (=> d!21921 (rulesValidInductive!61 thiss!19403 (t!21016 rules!2471))))

(assert (=> d!21921 (= (maxPrefix!71 thiss!19403 (t!21016 rules!2471) input!2238) lt!24931)))

(declare-fun b!96301 () Bool)

(assert (=> b!96301 (= e!53306 (contains!242 (t!21016 rules!2471) (rule!836 (_1!1030 (get!395 lt!24931)))))))

(declare-fun b!96302 () Bool)

(declare-fun res!47063 () Bool)

(assert (=> b!96302 (=> (not res!47063) (not e!53306))))

(assert (=> b!96302 (= res!47063 (= (list!586 (charsOf!72 (_1!1030 (get!395 lt!24931)))) (originalCharacters!388 (_1!1030 (get!395 lt!24931)))))))

(declare-fun b!96303 () Bool)

(declare-fun res!47059 () Bool)

(assert (=> b!96303 (=> (not res!47059) (not e!53306))))

(assert (=> b!96303 (= res!47059 (< (size!1347 (_2!1030 (get!395 lt!24931))) (size!1347 input!2238)))))

(declare-fun b!96304 () Bool)

(declare-fun lt!24930 () Option!154)

(declare-fun lt!24928 () Option!154)

(assert (=> b!96304 (= e!53305 (ite (and ((_ is None!153) lt!24930) ((_ is None!153) lt!24928)) None!153 (ite ((_ is None!153) lt!24928) lt!24930 (ite ((_ is None!153) lt!24930) lt!24928 (ite (>= (size!1346 (_1!1030 (v!12914 lt!24930))) (size!1346 (_1!1030 (v!12914 lt!24928)))) lt!24930 lt!24928)))))))

(declare-fun call!4358 () Option!154)

(assert (=> b!96304 (= lt!24930 call!4358)))

(assert (=> b!96304 (= lt!24928 (maxPrefix!71 thiss!19403 (t!21016 (t!21016 rules!2471)) input!2238))))

(declare-fun b!96305 () Bool)

(assert (=> b!96305 (= e!53305 call!4358)))

(declare-fun b!96306 () Bool)

(declare-fun res!47058 () Bool)

(assert (=> b!96306 (=> (not res!47058) (not e!53306))))

(assert (=> b!96306 (= res!47058 (= (++!206 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24931)))) (_2!1030 (get!395 lt!24931))) input!2238))))

(declare-fun b!96307 () Bool)

(declare-fun res!47062 () Bool)

(assert (=> b!96307 (=> (not res!47062) (not e!53306))))

(assert (=> b!96307 (= res!47062 (= (value!12555 (_1!1030 (get!395 lt!24931))) (apply!241 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24931)))) (seqFromList!177 (originalCharacters!388 (_1!1030 (get!395 lt!24931)))))))))

(declare-fun b!96308 () Bool)

(declare-fun res!47057 () Bool)

(assert (=> b!96308 (=> (not res!47057) (not e!53306))))

(assert (=> b!96308 (= res!47057 (matchR!37 (regex!339 (rule!836 (_1!1030 (get!395 lt!24931)))) (list!586 (charsOf!72 (_1!1030 (get!395 lt!24931))))))))

(declare-fun bm!4353 () Bool)

(assert (=> bm!4353 (= call!4358 (maxPrefixOneRule!33 thiss!19403 (h!6950 (t!21016 rules!2471)) input!2238))))

(assert (= (and d!21921 c!23646) b!96305))

(assert (= (and d!21921 (not c!23646)) b!96304))

(assert (= (or b!96305 b!96304) bm!4353))

(assert (= (and d!21921 (not res!47060)) b!96300))

(assert (= (and b!96300 res!47061) b!96302))

(assert (= (and b!96302 res!47063) b!96303))

(assert (= (and b!96303 res!47059) b!96306))

(assert (= (and b!96306 res!47058) b!96307))

(assert (= (and b!96307 res!47062) b!96308))

(assert (= (and b!96308 res!47057) b!96301))

(declare-fun m!79596 () Bool)

(assert (=> d!21921 m!79596))

(assert (=> d!21921 m!79038))

(assert (=> d!21921 m!79040))

(assert (=> d!21921 m!79346))

(declare-fun m!79598 () Bool)

(assert (=> b!96303 m!79598))

(declare-fun m!79600 () Bool)

(assert (=> b!96303 m!79600))

(assert (=> b!96303 m!78904))

(declare-fun m!79602 () Bool)

(assert (=> b!96304 m!79602))

(assert (=> b!96306 m!79598))

(declare-fun m!79604 () Bool)

(assert (=> b!96306 m!79604))

(assert (=> b!96306 m!79604))

(declare-fun m!79606 () Bool)

(assert (=> b!96306 m!79606))

(assert (=> b!96306 m!79606))

(declare-fun m!79608 () Bool)

(assert (=> b!96306 m!79608))

(declare-fun m!79610 () Bool)

(assert (=> bm!4353 m!79610))

(assert (=> b!96307 m!79598))

(declare-fun m!79612 () Bool)

(assert (=> b!96307 m!79612))

(assert (=> b!96307 m!79612))

(declare-fun m!79614 () Bool)

(assert (=> b!96307 m!79614))

(declare-fun m!79616 () Bool)

(assert (=> b!96300 m!79616))

(assert (=> b!96301 m!79598))

(declare-fun m!79618 () Bool)

(assert (=> b!96301 m!79618))

(assert (=> b!96302 m!79598))

(assert (=> b!96302 m!79604))

(assert (=> b!96302 m!79604))

(assert (=> b!96302 m!79606))

(assert (=> b!96308 m!79598))

(assert (=> b!96308 m!79604))

(assert (=> b!96308 m!79604))

(assert (=> b!96308 m!79606))

(assert (=> b!96308 m!79606))

(declare-fun m!79620 () Bool)

(assert (=> b!96308 m!79620))

(assert (=> b!95888 d!21921))

(declare-fun d!21923 () Bool)

(assert (=> d!21923 (= (list!586 (_2!1029 lt!24585)) (list!590 (c!23554 (_2!1029 lt!24585))))))

(declare-fun bs!9460 () Bool)

(assert (= bs!9460 d!21923))

(declare-fun m!79622 () Bool)

(assert (=> bs!9460 m!79622))

(assert (=> b!95852 d!21923))

(declare-fun b!96319 () Bool)

(declare-fun e!53315 () tuple2!1650)

(declare-fun lt!24939 () Option!154)

(declare-fun lt!24940 () tuple2!1650)

(assert (=> b!96319 (= e!53315 (tuple2!1651 (Cons!1552 (_1!1030 (v!12914 lt!24939)) (_1!1032 lt!24940)) (_2!1032 lt!24940)))))

(assert (=> b!96319 (= lt!24940 (lexList!61 thiss!19403 rules!2471 (_2!1030 (v!12914 lt!24939))))))

(declare-fun d!21925 () Bool)

(declare-fun e!53314 () Bool)

(assert (=> d!21925 e!53314))

(declare-fun c!23651 () Bool)

(declare-fun lt!24941 () tuple2!1650)

(assert (=> d!21925 (= c!23651 (> (size!1355 (_1!1032 lt!24941)) 0))))

(assert (=> d!21925 (= lt!24941 e!53315)))

(declare-fun c!23652 () Bool)

(assert (=> d!21925 (= c!23652 ((_ is Some!153) lt!24939))))

(assert (=> d!21925 (= lt!24939 (maxPrefix!71 thiss!19403 rules!2471 (list!586 (seqFromList!177 input!2238))))))

(assert (=> d!21925 (= (lexList!61 thiss!19403 rules!2471 (list!586 (seqFromList!177 input!2238))) lt!24941)))

(declare-fun b!96320 () Bool)

(assert (=> b!96320 (= e!53315 (tuple2!1651 Nil!1552 (list!586 (seqFromList!177 input!2238))))))

(declare-fun b!96321 () Bool)

(assert (=> b!96321 (= e!53314 (= (_2!1032 lt!24941) (list!586 (seqFromList!177 input!2238))))))

(declare-fun b!96322 () Bool)

(declare-fun e!53316 () Bool)

(assert (=> b!96322 (= e!53316 (not (isEmpty!630 (_1!1032 lt!24941))))))

(declare-fun b!96323 () Bool)

(assert (=> b!96323 (= e!53314 e!53316)))

(declare-fun res!47066 () Bool)

(assert (=> b!96323 (= res!47066 (< (size!1347 (_2!1032 lt!24941)) (size!1347 (list!586 (seqFromList!177 input!2238)))))))

(assert (=> b!96323 (=> (not res!47066) (not e!53316))))

(assert (= (and d!21925 c!23652) b!96319))

(assert (= (and d!21925 (not c!23652)) b!96320))

(assert (= (and d!21925 c!23651) b!96323))

(assert (= (and d!21925 (not c!23651)) b!96321))

(assert (= (and b!96323 res!47066) b!96322))

(declare-fun m!79624 () Bool)

(assert (=> b!96319 m!79624))

(declare-fun m!79626 () Bool)

(assert (=> d!21925 m!79626))

(assert (=> d!21925 m!79006))

(declare-fun m!79628 () Bool)

(assert (=> d!21925 m!79628))

(declare-fun m!79630 () Bool)

(assert (=> b!96322 m!79630))

(declare-fun m!79632 () Bool)

(assert (=> b!96323 m!79632))

(assert (=> b!96323 m!79006))

(assert (=> b!96323 m!79582))

(assert (=> b!95852 d!21925))

(declare-fun d!21927 () Bool)

(assert (=> d!21927 (= (list!586 (seqFromList!177 input!2238)) (list!590 (c!23554 (seqFromList!177 input!2238))))))

(declare-fun bs!9461 () Bool)

(assert (= bs!9461 d!21927))

(declare-fun m!79634 () Bool)

(assert (=> bs!9461 m!79634))

(assert (=> b!95852 d!21927))

(declare-fun b!96334 () Bool)

(declare-fun res!47071 () Bool)

(declare-fun e!53322 () Bool)

(assert (=> b!96334 (=> (not res!47071) (not e!53322))))

(declare-fun lt!24944 () List!1556)

(assert (=> b!96334 (= res!47071 (= (size!1347 lt!24944) (+ (size!1347 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (size!1347 (_2!1030 (get!395 lt!24602))))))))

(declare-fun d!21929 () Bool)

(assert (=> d!21929 e!53322))

(declare-fun res!47072 () Bool)

(assert (=> d!21929 (=> (not res!47072) (not e!53322))))

(declare-fun content!110 (List!1556) (InoxSet C!1736))

(assert (=> d!21929 (= res!47072 (= (content!110 lt!24944) ((_ map or) (content!110 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (content!110 (_2!1030 (get!395 lt!24602))))))))

(declare-fun e!53321 () List!1556)

(assert (=> d!21929 (= lt!24944 e!53321)))

(declare-fun c!23655 () Bool)

(assert (=> d!21929 (= c!23655 ((_ is Nil!1550) (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))))))

(assert (=> d!21929 (= (++!206 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))) (_2!1030 (get!395 lt!24602))) lt!24944)))

(declare-fun b!96335 () Bool)

(assert (=> b!96335 (= e!53322 (or (not (= (_2!1030 (get!395 lt!24602)) Nil!1550)) (= lt!24944 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602)))))))))

(declare-fun b!96332 () Bool)

(assert (=> b!96332 (= e!53321 (_2!1030 (get!395 lt!24602)))))

(declare-fun b!96333 () Bool)

(assert (=> b!96333 (= e!53321 (Cons!1550 (h!6947 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (++!206 (t!21013 (list!586 (charsOf!72 (_1!1030 (get!395 lt!24602))))) (_2!1030 (get!395 lt!24602)))))))

(assert (= (and d!21929 c!23655) b!96332))

(assert (= (and d!21929 (not c!23655)) b!96333))

(assert (= (and d!21929 res!47072) b!96334))

(assert (= (and b!96334 res!47071) b!96335))

(declare-fun m!79636 () Bool)

(assert (=> b!96334 m!79636))

(assert (=> b!96334 m!79052))

(declare-fun m!79638 () Bool)

(assert (=> b!96334 m!79638))

(assert (=> b!96334 m!79046))

(declare-fun m!79640 () Bool)

(assert (=> d!21929 m!79640))

(assert (=> d!21929 m!79052))

(declare-fun m!79642 () Bool)

(assert (=> d!21929 m!79642))

(declare-fun m!79644 () Bool)

(assert (=> d!21929 m!79644))

(declare-fun m!79646 () Bool)

(assert (=> b!96333 m!79646))

(assert (=> b!95890 d!21929))

(assert (=> b!95890 d!21877))

(assert (=> b!95890 d!21879))

(assert (=> b!95890 d!21851))

(declare-fun d!21931 () Bool)

(assert (=> d!21931 (= (isEmpty!624 (list!586 (_2!1029 lt!24554))) ((_ is Nil!1550) (list!586 (_2!1029 lt!24554))))))

(assert (=> d!21749 d!21931))

(declare-fun d!21933 () Bool)

(assert (=> d!21933 (= (list!586 (_2!1029 lt!24554)) (list!590 (c!23554 (_2!1029 lt!24554))))))

(declare-fun bs!9462 () Bool)

(assert (= bs!9462 d!21933))

(declare-fun m!79648 () Bool)

(assert (=> bs!9462 m!79648))

(assert (=> d!21749 d!21933))

(declare-fun d!21935 () Bool)

(declare-fun lt!24947 () Bool)

(assert (=> d!21935 (= lt!24947 (isEmpty!624 (list!590 (c!23554 (_2!1029 lt!24554)))))))

(assert (=> d!21935 (= lt!24947 (= (size!1357 (c!23554 (_2!1029 lt!24554))) 0))))

(assert (=> d!21935 (= (isEmpty!625 (c!23554 (_2!1029 lt!24554))) lt!24947)))

(declare-fun bs!9463 () Bool)

(assert (= bs!9463 d!21935))

(assert (=> bs!9463 m!79648))

(assert (=> bs!9463 m!79648))

(declare-fun m!79650 () Bool)

(assert (=> bs!9463 m!79650))

(declare-fun m!79652 () Bool)

(assert (=> bs!9463 m!79652))

(assert (=> d!21749 d!21935))

(declare-fun d!21937 () Bool)

(declare-fun lt!24948 () Int)

(assert (=> d!21937 (>= lt!24948 0)))

(declare-fun e!53323 () Int)

(assert (=> d!21937 (= lt!24948 e!53323)))

(declare-fun c!23656 () Bool)

(assert (=> d!21937 (= c!23656 ((_ is Nil!1550) (t!21013 input!2238)))))

(assert (=> d!21937 (= (size!1347 (t!21013 input!2238)) lt!24948)))

(declare-fun b!96336 () Bool)

(assert (=> b!96336 (= e!53323 0)))

(declare-fun b!96337 () Bool)

(assert (=> b!96337 (= e!53323 (+ 1 (size!1347 (t!21013 (t!21013 input!2238)))))))

(assert (= (and d!21937 c!23656) b!96336))

(assert (= (and d!21937 (not c!23656)) b!96337))

(declare-fun m!79654 () Bool)

(assert (=> b!96337 m!79654))

(assert (=> b!95894 d!21937))

(assert (=> b!95886 d!21877))

(assert (=> b!95886 d!21879))

(assert (=> b!95886 d!21851))

(declare-fun d!21939 () Bool)

(declare-fun e!53326 () Bool)

(assert (=> d!21939 e!53326))

(declare-fun res!47075 () Bool)

(assert (=> d!21939 (=> (not res!47075) (not e!53326))))

(declare-fun lt!24951 () BalanceConc!960)

(assert (=> d!21939 (= res!47075 (= (list!586 lt!24951) input!2238))))

(declare-fun fromList!45 (List!1556) Conc!478)

(assert (=> d!21939 (= lt!24951 (BalanceConc!961 (fromList!45 input!2238)))))

(assert (=> d!21939 (= (fromListB!73 input!2238) lt!24951)))

(declare-fun b!96340 () Bool)

(declare-fun isBalanced!112 (Conc!478) Bool)

(assert (=> b!96340 (= e!53326 (isBalanced!112 (fromList!45 input!2238)))))

(assert (= (and d!21939 res!47075) b!96340))

(declare-fun m!79656 () Bool)

(assert (=> d!21939 m!79656))

(declare-fun m!79658 () Bool)

(assert (=> d!21939 m!79658))

(assert (=> b!96340 m!79658))

(assert (=> b!96340 m!79658))

(declare-fun m!79660 () Bool)

(assert (=> b!96340 m!79660))

(assert (=> d!21773 d!21939))

(declare-fun d!21941 () Bool)

(declare-fun lt!24952 () Int)

(assert (=> d!21941 (>= lt!24952 0)))

(declare-fun e!53327 () Int)

(assert (=> d!21941 (= lt!24952 e!53327)))

(declare-fun c!23658 () Bool)

(assert (=> d!21941 (= c!23658 ((_ is Nil!1550) (_2!1030 (get!395 lt!24602))))))

(assert (=> d!21941 (= (size!1347 (_2!1030 (get!395 lt!24602))) lt!24952)))

(declare-fun b!96341 () Bool)

(assert (=> b!96341 (= e!53327 0)))

(declare-fun b!96342 () Bool)

(assert (=> b!96342 (= e!53327 (+ 1 (size!1347 (t!21013 (_2!1030 (get!395 lt!24602))))))))

(assert (= (and d!21941 c!23658) b!96341))

(assert (= (and d!21941 (not c!23658)) b!96342))

(declare-fun m!79662 () Bool)

(assert (=> b!96342 m!79662))

(assert (=> b!95887 d!21941))

(assert (=> b!95887 d!21851))

(assert (=> b!95887 d!21791))

(declare-fun d!21943 () Bool)

(assert (=> d!21943 (= (list!583 (_1!1029 lt!24585)) (list!587 (c!23556 (_1!1029 lt!24585))))))

(declare-fun bs!9464 () Bool)

(assert (= bs!9464 d!21943))

(declare-fun m!79664 () Bool)

(assert (=> bs!9464 m!79664))

(assert (=> b!95851 d!21943))

(assert (=> b!95851 d!21925))

(assert (=> b!95851 d!21927))

(declare-fun e!53328 () Bool)

(assert (=> b!95913 (= tp!55831 e!53328)))

(declare-fun b!96344 () Bool)

(declare-fun tp!55888 () Bool)

(declare-fun tp!55887 () Bool)

(assert (=> b!96344 (= e!53328 (and tp!55888 tp!55887))))

(declare-fun b!96343 () Bool)

(assert (=> b!96343 (= e!53328 tp_is_empty!737)))

(declare-fun b!96346 () Bool)

(declare-fun tp!55889 () Bool)

(declare-fun tp!55886 () Bool)

(assert (=> b!96346 (= e!53328 (and tp!55889 tp!55886))))

(declare-fun b!96345 () Bool)

(declare-fun tp!55890 () Bool)

(assert (=> b!96345 (= e!53328 tp!55890)))

(assert (= (and b!95913 ((_ is ElementMatch!407) (regOne!1327 (regex!339 (h!6950 rules!2471))))) b!96343))

(assert (= (and b!95913 ((_ is Concat!737) (regOne!1327 (regex!339 (h!6950 rules!2471))))) b!96344))

(assert (= (and b!95913 ((_ is Star!407) (regOne!1327 (regex!339 (h!6950 rules!2471))))) b!96345))

(assert (= (and b!95913 ((_ is Union!407) (regOne!1327 (regex!339 (h!6950 rules!2471))))) b!96346))

(declare-fun e!53329 () Bool)

(assert (=> b!95913 (= tp!55828 e!53329)))

(declare-fun b!96348 () Bool)

(declare-fun tp!55893 () Bool)

(declare-fun tp!55892 () Bool)

(assert (=> b!96348 (= e!53329 (and tp!55893 tp!55892))))

(declare-fun b!96347 () Bool)

(assert (=> b!96347 (= e!53329 tp_is_empty!737)))

(declare-fun b!96350 () Bool)

(declare-fun tp!55894 () Bool)

(declare-fun tp!55891 () Bool)

(assert (=> b!96350 (= e!53329 (and tp!55894 tp!55891))))

(declare-fun b!96349 () Bool)

(declare-fun tp!55895 () Bool)

(assert (=> b!96349 (= e!53329 tp!55895)))

(assert (= (and b!95913 ((_ is ElementMatch!407) (regTwo!1327 (regex!339 (h!6950 rules!2471))))) b!96347))

(assert (= (and b!95913 ((_ is Concat!737) (regTwo!1327 (regex!339 (h!6950 rules!2471))))) b!96348))

(assert (= (and b!95913 ((_ is Star!407) (regTwo!1327 (regex!339 (h!6950 rules!2471))))) b!96349))

(assert (= (and b!95913 ((_ is Union!407) (regTwo!1327 (regex!339 (h!6950 rules!2471))))) b!96350))

(declare-fun b!96353 () Bool)

(declare-fun b_free!2857 () Bool)

(declare-fun b_next!2857 () Bool)

(assert (=> b!96353 (= b_free!2857 (not b_next!2857))))

(declare-fun t!21044 () Bool)

(declare-fun tb!2959 () Bool)

(assert (=> (and b!96353 (= (toValue!878 (transformation!339 (h!6950 (t!21016 (t!21016 rules!2471))))) (toValue!878 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21044) tb!2959))

(declare-fun result!4244 () Bool)

(assert (= result!4244 result!4228))

(assert (=> d!21853 t!21044))

(declare-fun tp!55896 () Bool)

(declare-fun b_and!4307 () Bool)

(assert (=> b!96353 (= tp!55896 (and (=> t!21044 result!4244) b_and!4307))))

(declare-fun b_free!2859 () Bool)

(declare-fun b_next!2859 () Bool)

(assert (=> b!96353 (= b_free!2859 (not b_next!2859))))

(declare-fun t!21046 () Bool)

(declare-fun tb!2961 () Bool)

(assert (=> (and b!96353 (= (toChars!737 (transformation!339 (h!6950 (t!21016 (t!21016 rules!2471))))) (toChars!737 (transformation!339 (rule!836 (_1!1030 (get!395 lt!24602)))))) t!21046) tb!2961))

(declare-fun result!4246 () Bool)

(assert (= result!4246 result!4234))

(assert (=> d!21879 t!21046))

(declare-fun tp!55899 () Bool)

(declare-fun b_and!4309 () Bool)

(assert (=> b!96353 (= tp!55899 (and (=> t!21046 result!4246) b_and!4309))))

(declare-fun e!53332 () Bool)

(assert (=> b!96353 (= e!53332 (and tp!55896 tp!55899))))

(declare-fun e!53331 () Bool)

(declare-fun b!96352 () Bool)

(declare-fun tp!55897 () Bool)

(assert (=> b!96352 (= e!53331 (and tp!55897 (inv!1901 (tag!517 (h!6950 (t!21016 (t!21016 rules!2471))))) (inv!1903 (transformation!339 (h!6950 (t!21016 (t!21016 rules!2471))))) e!53332))))

(declare-fun b!96351 () Bool)

(declare-fun e!53330 () Bool)

(declare-fun tp!55898 () Bool)

(assert (=> b!96351 (= e!53330 (and e!53331 tp!55898))))

(assert (=> b!95922 (= tp!55843 e!53330)))

(assert (= b!96352 b!96353))

(assert (= b!96351 b!96352))

(assert (= (and b!95922 ((_ is Cons!1553) (t!21016 (t!21016 rules!2471)))) b!96351))

(declare-fun m!79666 () Bool)

(assert (=> b!96352 m!79666))

(declare-fun m!79668 () Bool)

(assert (=> b!96352 m!79668))

(declare-fun e!53334 () Bool)

(assert (=> b!95912 (= tp!55832 e!53334)))

(declare-fun b!96355 () Bool)

(declare-fun tp!55902 () Bool)

(declare-fun tp!55901 () Bool)

(assert (=> b!96355 (= e!53334 (and tp!55902 tp!55901))))

(declare-fun b!96354 () Bool)

(assert (=> b!96354 (= e!53334 tp_is_empty!737)))

(declare-fun b!96357 () Bool)

(declare-fun tp!55903 () Bool)

(declare-fun tp!55900 () Bool)

(assert (=> b!96357 (= e!53334 (and tp!55903 tp!55900))))

(declare-fun b!96356 () Bool)

(declare-fun tp!55904 () Bool)

(assert (=> b!96356 (= e!53334 tp!55904)))

(assert (= (and b!95912 ((_ is ElementMatch!407) (reg!736 (regex!339 (h!6950 rules!2471))))) b!96354))

(assert (= (and b!95912 ((_ is Concat!737) (reg!736 (regex!339 (h!6950 rules!2471))))) b!96355))

(assert (= (and b!95912 ((_ is Star!407) (reg!736 (regex!339 (h!6950 rules!2471))))) b!96356))

(assert (= (and b!95912 ((_ is Union!407) (reg!736 (regex!339 (h!6950 rules!2471))))) b!96357))

(declare-fun b!96358 () Bool)

(declare-fun e!53335 () Bool)

(declare-fun tp!55905 () Bool)

(assert (=> b!96358 (= e!53335 (and tp_is_empty!737 tp!55905))))

(assert (=> b!95899 (= tp!55817 e!53335)))

(assert (= (and b!95899 ((_ is Cons!1550) (t!21013 (t!21013 input!2238)))) b!96358))

(declare-fun e!53336 () Bool)

(assert (=> b!95923 (= tp!55842 e!53336)))

(declare-fun b!96360 () Bool)

(declare-fun tp!55908 () Bool)

(declare-fun tp!55907 () Bool)

(assert (=> b!96360 (= e!53336 (and tp!55908 tp!55907))))

(declare-fun b!96359 () Bool)

(assert (=> b!96359 (= e!53336 tp_is_empty!737)))

(declare-fun b!96362 () Bool)

(declare-fun tp!55909 () Bool)

(declare-fun tp!55906 () Bool)

(assert (=> b!96362 (= e!53336 (and tp!55909 tp!55906))))

(declare-fun b!96361 () Bool)

(declare-fun tp!55910 () Bool)

(assert (=> b!96361 (= e!53336 tp!55910)))

(assert (= (and b!95923 ((_ is ElementMatch!407) (regex!339 (h!6950 (t!21016 rules!2471))))) b!96359))

(assert (= (and b!95923 ((_ is Concat!737) (regex!339 (h!6950 (t!21016 rules!2471))))) b!96360))

(assert (= (and b!95923 ((_ is Star!407) (regex!339 (h!6950 (t!21016 rules!2471))))) b!96361))

(assert (= (and b!95923 ((_ is Union!407) (regex!339 (h!6950 (t!21016 rules!2471))))) b!96362))

(declare-fun e!53337 () Bool)

(assert (=> b!95911 (= tp!55830 e!53337)))

(declare-fun b!96364 () Bool)

(declare-fun tp!55913 () Bool)

(declare-fun tp!55912 () Bool)

(assert (=> b!96364 (= e!53337 (and tp!55913 tp!55912))))

(declare-fun b!96363 () Bool)

(assert (=> b!96363 (= e!53337 tp_is_empty!737)))

(declare-fun b!96366 () Bool)

(declare-fun tp!55914 () Bool)

(declare-fun tp!55911 () Bool)

(assert (=> b!96366 (= e!53337 (and tp!55914 tp!55911))))

(declare-fun b!96365 () Bool)

(declare-fun tp!55915 () Bool)

(assert (=> b!96365 (= e!53337 tp!55915)))

(assert (= (and b!95911 ((_ is ElementMatch!407) (regOne!1326 (regex!339 (h!6950 rules!2471))))) b!96363))

(assert (= (and b!95911 ((_ is Concat!737) (regOne!1326 (regex!339 (h!6950 rules!2471))))) b!96364))

(assert (= (and b!95911 ((_ is Star!407) (regOne!1326 (regex!339 (h!6950 rules!2471))))) b!96365))

(assert (= (and b!95911 ((_ is Union!407) (regOne!1326 (regex!339 (h!6950 rules!2471))))) b!96366))

(declare-fun e!53338 () Bool)

(assert (=> b!95911 (= tp!55829 e!53338)))

(declare-fun b!96368 () Bool)

(declare-fun tp!55918 () Bool)

(declare-fun tp!55917 () Bool)

(assert (=> b!96368 (= e!53338 (and tp!55918 tp!55917))))

(declare-fun b!96367 () Bool)

(assert (=> b!96367 (= e!53338 tp_is_empty!737)))

(declare-fun b!96370 () Bool)

(declare-fun tp!55919 () Bool)

(declare-fun tp!55916 () Bool)

(assert (=> b!96370 (= e!53338 (and tp!55919 tp!55916))))

(declare-fun b!96369 () Bool)

(declare-fun tp!55920 () Bool)

(assert (=> b!96369 (= e!53338 tp!55920)))

(assert (= (and b!95911 ((_ is ElementMatch!407) (regTwo!1326 (regex!339 (h!6950 rules!2471))))) b!96367))

(assert (= (and b!95911 ((_ is Concat!737) (regTwo!1326 (regex!339 (h!6950 rules!2471))))) b!96368))

(assert (= (and b!95911 ((_ is Star!407) (regTwo!1326 (regex!339 (h!6950 rules!2471))))) b!96369))

(assert (= (and b!95911 ((_ is Union!407) (regTwo!1326 (regex!339 (h!6950 rules!2471))))) b!96370))

(check-sat (not b!96357) (not b!96349) (not b!96161) (not b!96186) (not d!21917) (not b!96358) (not bm!4353) (not b!95929) (not bm!4352) (not b!96334) (not b!96184) (not b!96340) (not d!21805) (not b!96337) b_and!4301 (not b!96322) (not b!96323) (not b!96348) (not b!96360) (not b!96366) (not b!96283) (not b_next!2851) (not b!96151) (not d!21855) (not b!96370) (not b!96307) (not d!21877) (not d!21879) (not b!96298) (not b!96351) (not b!96333) (not d!21909) (not b!96073) (not d!21907) (not d!21911) (not d!21919) (not b!96300) (not d!21869) (not b!96154) tp_is_empty!737 (not b!96355) (not b!96368) (not b!96342) (not b!96362) (not d!21889) (not d!21923) b_and!4297 (not d!21887) (not b!96096) (not b!96319) b_and!4295 (not d!21929) (not b!96364) (not b!96183) (not b!96072) (not b_next!2843) (not b!96369) (not d!21807) (not d!21939) (not b!96071) (not d!21927) (not b!96284) (not d!21933) (not d!21913) (not b_next!2849) (not b!96299) (not b!96150) b_and!4299 (not b!96078) b_and!4307 (not b!96345) (not b!96346) (not d!21881) (not b_next!2841) (not b!96301) (not b!96308) (not b!96281) (not b_lambda!1109) (not b!96344) (not b!96155) (not b!96104) (not b!96306) (not b!96098) (not b!96303) (not d!21871) (not b!96302) (not d!21935) (not b!96285) (not b_next!2859) (not b!96074) (not b!96168) (not b!96158) (not d!21943) (not tb!2947) (not b!96350) (not tb!2951) (not b_lambda!1111) (not b!96356) (not b!96097) b_and!4309 (not b!96352) (not b_next!2857) (not d!21857) (not b!96293) (not b!96304) (not b!96103) (not d!21925) (not d!21921) (not b!96077) (not d!21867) (not b!96361) (not b!96076) (not b!96365) (not b!96079))
(check-sat b_and!4301 (not b_next!2851) b_and!4297 b_and!4295 (not b_next!2843) (not b_next!2849) (not b_next!2841) (not b_next!2859) b_and!4309 (not b_next!2857) b_and!4299 b_and!4307)
