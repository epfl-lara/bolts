; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8718 () Bool)

(assert start!8718)

(declare-fun b!96424 () Bool)

(declare-fun b_free!2865 () Bool)

(declare-fun b_next!2865 () Bool)

(assert (=> b!96424 (= b_free!2865 (not b_next!2865))))

(declare-fun tp!55948 () Bool)

(declare-fun b_and!4315 () Bool)

(assert (=> b!96424 (= tp!55948 b_and!4315)))

(declare-fun b_free!2867 () Bool)

(declare-fun b_next!2867 () Bool)

(assert (=> b!96424 (= b_free!2867 (not b_next!2867))))

(declare-fun tp!55947 () Bool)

(declare-fun b_and!4317 () Bool)

(assert (=> b!96424 (= tp!55947 b_and!4317)))

(declare-datatypes ((C!1740 0))(
  ( (C!1741 (val!477 Int)) )
))
(declare-datatypes ((List!1566 0))(
  ( (Nil!1560) (Cons!1560 (h!6957 C!1740) (t!21051 List!1566)) )
))
(declare-datatypes ((IArray!965 0))(
  ( (IArray!966 (innerList!540 List!1566)) )
))
(declare-datatypes ((Conc!482 0))(
  ( (Node!482 (left!1185 Conc!482) (right!1515 Conc!482) (csize!1194 Int) (cheight!693 Int)) (Leaf!788 (xs!3069 IArray!965) (csize!1195 Int)) (Empty!482) )
))
(declare-datatypes ((BalanceConc!968 0))(
  ( (BalanceConc!969 (c!23664 Conc!482)) )
))
(declare-datatypes ((List!1567 0))(
  ( (Nil!1561) (Cons!1561 (h!6958 (_ BitVec 16)) (t!21052 List!1567)) )
))
(declare-datatypes ((TokenValue!331 0))(
  ( (FloatLiteralValue!662 (text!2762 List!1567)) (TokenValueExt!330 (__x!1757 Int)) (Broken!1655 (value!12586 List!1567)) (Object!336) (End!331) (Def!331) (Underscore!331) (Match!331) (Else!331) (Error!331) (Case!331) (If!331) (Extends!331) (Abstract!331) (Class!331) (Val!331) (DelimiterValue!662 (del!391 List!1567)) (KeywordValue!337 (value!12587 List!1567)) (CommentValue!662 (value!12588 List!1567)) (WhitespaceValue!662 (value!12589 List!1567)) (IndentationValue!331 (value!12590 List!1567)) (String!2046) (Int32!331) (Broken!1656 (value!12591 List!1567)) (Boolean!332) (Unit!1013) (OperatorValue!334 (op!391 List!1567)) (IdentifierValue!662 (value!12592 List!1567)) (IdentifierValue!663 (value!12593 List!1567)) (WhitespaceValue!663 (value!12594 List!1567)) (True!662) (False!662) (Broken!1657 (value!12595 List!1567)) (Broken!1658 (value!12596 List!1567)) (True!663) (RightBrace!331) (RightBracket!331) (Colon!331) (Null!331) (Comma!331) (LeftBracket!331) (False!663) (LeftBrace!331) (ImaginaryLiteralValue!331 (text!2763 List!1567)) (StringLiteralValue!993 (value!12597 List!1567)) (EOFValue!331 (value!12598 List!1567)) (IdentValue!331 (value!12599 List!1567)) (DelimiterValue!663 (value!12600 List!1567)) (DedentValue!331 (value!12601 List!1567)) (NewLineValue!331 (value!12602 List!1567)) (IntegerValue!993 (value!12603 (_ BitVec 32)) (text!2764 List!1567)) (IntegerValue!994 (value!12604 Int) (text!2765 List!1567)) (Times!331) (Or!331) (Equal!331) (Minus!331) (Broken!1659 (value!12605 List!1567)) (And!331) (Div!331) (LessEqual!331) (Mod!331) (Concat!740) (Not!331) (Plus!331) (SpaceValue!331 (value!12606 List!1567)) (IntegerValue!995 (value!12607 Int) (text!2766 List!1567)) (StringLiteralValue!994 (text!2767 List!1567)) (FloatLiteralValue!663 (text!2768 List!1567)) (BytesLiteralValue!331 (value!12608 List!1567)) (CommentValue!663 (value!12609 List!1567)) (StringLiteralValue!995 (value!12610 List!1567)) (ErrorTokenValue!331 (msg!392 List!1567)) )
))
(declare-datatypes ((Regex!409 0))(
  ( (ElementMatch!409 (c!23665 C!1740)) (Concat!741 (regOne!1330 Regex!409) (regTwo!1330 Regex!409)) (EmptyExpr!409) (Star!409 (reg!738 Regex!409)) (EmptyLang!409) (Union!409 (regOne!1331 Regex!409) (regTwo!1331 Regex!409)) )
))
(declare-datatypes ((String!2047 0))(
  ( (String!2048 (value!12611 String)) )
))
(declare-datatypes ((TokenValueInjection!486 0))(
  ( (TokenValueInjection!487 (toValue!884 Int) (toChars!743 Int)) )
))
(declare-datatypes ((Rule!482 0))(
  ( (Rule!483 (regex!341 Regex!409) (tag!519 String!2047) (isSeparator!341 Bool) (transformation!341 TokenValueInjection!486)) )
))
(declare-datatypes ((Token!438 0))(
  ( (Token!439 (value!12612 TokenValue!331) (rule!840 Rule!482) (size!1359 Int) (originalCharacters!390 List!1566)) )
))
(declare-datatypes ((List!1568 0))(
  ( (Nil!1562) (Cons!1562 (h!6959 Token!438) (t!21053 List!1568)) )
))
(declare-datatypes ((IArray!967 0))(
  ( (IArray!968 (innerList!541 List!1568)) )
))
(declare-datatypes ((Conc!483 0))(
  ( (Node!483 (left!1186 Conc!483) (right!1516 Conc!483) (csize!1196 Int) (cheight!694 Int)) (Leaf!789 (xs!3070 IArray!967) (csize!1197 Int)) (Empty!483) )
))
(declare-datatypes ((BalanceConc!970 0))(
  ( (BalanceConc!971 (c!23666 Conc!483)) )
))
(declare-datatypes ((tuple2!1664 0))(
  ( (tuple2!1665 (_1!1039 BalanceConc!970) (_2!1039 BalanceConc!968)) )
))
(declare-fun lt!24978 () tuple2!1664)

(declare-datatypes ((LexerInterface!233 0))(
  ( (LexerInterfaceExt!230 (__x!1758 Int)) (Lexer!231) )
))
(declare-fun thiss!19403 () LexerInterface!233)

(declare-fun input!2238 () List!1566)

(declare-fun b!96416 () Bool)

(declare-fun e!53384 () Bool)

(declare-fun ++!212 (List!1566 List!1566) List!1566)

(declare-fun list!594 (BalanceConc!968) List!1566)

(declare-fun print!68 (LexerInterface!233 BalanceConc!970) BalanceConc!968)

(assert (=> b!96416 (= e!53384 (not (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))) (list!594 (_2!1039 lt!24978))) input!2238)))))

(declare-fun lt!24981 () tuple2!1664)

(declare-datatypes ((tuple2!1666 0))(
  ( (tuple2!1667 (_1!1040 Token!438) (_2!1040 List!1566)) )
))
(declare-fun lt!24980 () tuple2!1666)

(assert (=> b!96416 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))) (list!594 (_2!1039 lt!24981))) (_2!1040 lt!24980))))

(declare-datatypes ((List!1569 0))(
  ( (Nil!1563) (Cons!1563 (h!6960 Rule!482) (t!21054 List!1569)) )
))
(declare-fun rules!2471 () List!1569)

(declare-fun lex!139 (LexerInterface!233 List!1569 BalanceConc!968) tuple2!1664)

(declare-fun seqFromList!179 (List!1566) BalanceConc!968)

(assert (=> b!96416 (= lt!24981 (lex!139 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))))))

(declare-datatypes ((Unit!1014 0))(
  ( (Unit!1015) )
))
(declare-fun lt!24982 () Unit!1014)

(declare-fun theoremInvertFromString!44 (LexerInterface!233 List!1569 List!1566) Unit!1014)

(assert (=> b!96416 (= lt!24982 (theoremInvertFromString!44 thiss!19403 rules!2471 (_2!1040 lt!24980)))))

(declare-datatypes ((Option!158 0))(
  ( (None!157) (Some!157 (v!12920 tuple2!1666)) )
))
(declare-fun get!398 (Option!158) tuple2!1666)

(declare-fun maxPrefix!73 (LexerInterface!233 List!1569 List!1566) Option!158)

(assert (=> b!96416 (= lt!24980 (get!398 (maxPrefix!73 thiss!19403 rules!2471 input!2238)))))

(declare-fun b!96418 () Bool)

(declare-fun e!53380 () Bool)

(declare-fun tp_is_empty!741 () Bool)

(declare-fun tp!55950 () Bool)

(assert (=> b!96418 (= e!53380 (and tp_is_empty!741 tp!55950))))

(declare-fun b!96419 () Bool)

(declare-fun e!53385 () Bool)

(declare-fun e!53383 () Bool)

(declare-fun tp!55949 () Bool)

(assert (=> b!96419 (= e!53385 (and e!53383 tp!55949))))

(declare-fun b!96420 () Bool)

(declare-fun res!47104 () Bool)

(declare-fun e!53382 () Bool)

(assert (=> b!96420 (=> (not res!47104) (not e!53382))))

(declare-fun isEmpty!634 (List!1569) Bool)

(assert (=> b!96420 (= res!47104 (not (isEmpty!634 rules!2471)))))

(declare-fun tp!55946 () Bool)

(declare-fun b!96421 () Bool)

(declare-fun e!53386 () Bool)

(declare-fun inv!1910 (String!2047) Bool)

(declare-fun inv!1912 (TokenValueInjection!486) Bool)

(assert (=> b!96421 (= e!53383 (and tp!55946 (inv!1910 (tag!519 (h!6960 rules!2471))) (inv!1912 (transformation!341 (h!6960 rules!2471))) e!53386))))

(declare-fun b!96417 () Bool)

(declare-fun res!47105 () Bool)

(assert (=> b!96417 (=> (not res!47105) (not e!53382))))

(declare-fun rulesInvariant!227 (LexerInterface!233 List!1569) Bool)

(assert (=> b!96417 (= res!47105 (rulesInvariant!227 thiss!19403 rules!2471))))

(declare-fun res!47103 () Bool)

(assert (=> start!8718 (=> (not res!47103) (not e!53382))))

(get-info :version)

(assert (=> start!8718 (= res!47103 ((_ is Lexer!231) thiss!19403))))

(assert (=> start!8718 e!53382))

(assert (=> start!8718 true))

(assert (=> start!8718 e!53385))

(assert (=> start!8718 e!53380))

(declare-fun b!96422 () Bool)

(declare-fun e!53381 () Bool)

(assert (=> b!96422 (= e!53382 e!53381)))

(declare-fun res!47102 () Bool)

(assert (=> b!96422 (=> (not res!47102) (not e!53381))))

(declare-fun isEmpty!635 (BalanceConc!968) Bool)

(assert (=> b!96422 (= res!47102 (isEmpty!635 (_2!1039 lt!24978)))))

(assert (=> b!96422 (= lt!24978 (lex!139 thiss!19403 rules!2471 (seqFromList!179 input!2238)))))

(declare-fun b!96423 () Bool)

(assert (=> b!96423 (= e!53381 e!53384)))

(declare-fun res!47101 () Bool)

(assert (=> b!96423 (=> (not res!47101) (not e!53384))))

(declare-fun lt!24979 () List!1568)

(assert (=> b!96423 (= res!47101 (and (or (not ((_ is Cons!1562) lt!24979)) (not ((_ is Nil!1562) (t!21053 lt!24979)))) ((_ is Cons!1562) lt!24979)))))

(declare-fun list!595 (BalanceConc!970) List!1568)

(assert (=> b!96423 (= lt!24979 (list!595 (_1!1039 lt!24978)))))

(assert (=> b!96424 (= e!53386 (and tp!55948 tp!55947))))

(assert (= (and start!8718 res!47103) b!96420))

(assert (= (and b!96420 res!47104) b!96417))

(assert (= (and b!96417 res!47105) b!96422))

(assert (= (and b!96422 res!47102) b!96423))

(assert (= (and b!96423 res!47101) b!96416))

(assert (= b!96421 b!96424))

(assert (= b!96419 b!96421))

(assert (= (and start!8718 ((_ is Cons!1563) rules!2471)) b!96419))

(assert (= (and start!8718 ((_ is Cons!1560) input!2238)) b!96418))

(declare-fun m!79712 () Bool)

(assert (=> b!96416 m!79712))

(assert (=> b!96416 m!79712))

(declare-fun m!79714 () Bool)

(assert (=> b!96416 m!79714))

(declare-fun m!79716 () Bool)

(assert (=> b!96416 m!79716))

(declare-fun m!79718 () Bool)

(assert (=> b!96416 m!79718))

(declare-fun m!79720 () Bool)

(assert (=> b!96416 m!79720))

(declare-fun m!79722 () Bool)

(assert (=> b!96416 m!79722))

(declare-fun m!79724 () Bool)

(assert (=> b!96416 m!79724))

(declare-fun m!79726 () Bool)

(assert (=> b!96416 m!79726))

(assert (=> b!96416 m!79722))

(assert (=> b!96416 m!79716))

(assert (=> b!96416 m!79718))

(declare-fun m!79728 () Bool)

(assert (=> b!96416 m!79728))

(declare-fun m!79730 () Bool)

(assert (=> b!96416 m!79730))

(declare-fun m!79732 () Bool)

(assert (=> b!96416 m!79732))

(assert (=> b!96416 m!79730))

(assert (=> b!96416 m!79732))

(assert (=> b!96416 m!79728))

(declare-fun m!79734 () Bool)

(assert (=> b!96416 m!79734))

(assert (=> b!96416 m!79724))

(declare-fun m!79736 () Bool)

(assert (=> b!96416 m!79736))

(declare-fun m!79738 () Bool)

(assert (=> b!96422 m!79738))

(declare-fun m!79740 () Bool)

(assert (=> b!96422 m!79740))

(assert (=> b!96422 m!79740))

(declare-fun m!79742 () Bool)

(assert (=> b!96422 m!79742))

(declare-fun m!79744 () Bool)

(assert (=> b!96423 m!79744))

(declare-fun m!79746 () Bool)

(assert (=> b!96420 m!79746))

(declare-fun m!79748 () Bool)

(assert (=> b!96417 m!79748))

(declare-fun m!79750 () Bool)

(assert (=> b!96421 m!79750))

(declare-fun m!79752 () Bool)

(assert (=> b!96421 m!79752))

(check-sat (not b_next!2867) b_and!4315 tp_is_empty!741 (not b!96422) (not b!96419) (not b!96421) (not b!96423) (not b_next!2865) b_and!4317 (not b!96420) (not b!96416) (not b!96417) (not b!96418))
(check-sat b_and!4317 b_and!4315 (not b_next!2867) (not b_next!2865))
(get-model)

(declare-fun d!21962 () Bool)

(declare-fun list!598 (Conc!483) List!1568)

(assert (=> d!21962 (= (list!595 (_1!1039 lt!24978)) (list!598 (c!23666 (_1!1039 lt!24978))))))

(declare-fun bs!9471 () Bool)

(assert (= bs!9471 d!21962))

(declare-fun m!79780 () Bool)

(assert (=> bs!9471 m!79780))

(assert (=> b!96423 d!21962))

(declare-fun d!21966 () Bool)

(declare-fun res!47125 () Bool)

(declare-fun e!53398 () Bool)

(assert (=> d!21966 (=> (not res!47125) (not e!53398))))

(declare-fun rulesValid!85 (LexerInterface!233 List!1569) Bool)

(assert (=> d!21966 (= res!47125 (rulesValid!85 thiss!19403 rules!2471))))

(assert (=> d!21966 (= (rulesInvariant!227 thiss!19403 rules!2471) e!53398)))

(declare-fun b!96442 () Bool)

(declare-datatypes ((List!1571 0))(
  ( (Nil!1565) (Cons!1565 (h!6962 String!2047) (t!21056 List!1571)) )
))
(declare-fun noDuplicateTag!85 (LexerInterface!233 List!1569 List!1571) Bool)

(assert (=> b!96442 (= e!53398 (noDuplicateTag!85 thiss!19403 rules!2471 Nil!1565))))

(assert (= (and d!21966 res!47125) b!96442))

(declare-fun m!79782 () Bool)

(assert (=> d!21966 m!79782))

(declare-fun m!79784 () Bool)

(assert (=> b!96442 m!79784))

(assert (=> b!96417 d!21966))

(declare-fun d!21968 () Bool)

(declare-fun lt!24988 () Bool)

(declare-fun isEmpty!640 (List!1566) Bool)

(assert (=> d!21968 (= lt!24988 (isEmpty!640 (list!594 (_2!1039 lt!24978))))))

(declare-fun isEmpty!641 (Conc!482) Bool)

(assert (=> d!21968 (= lt!24988 (isEmpty!641 (c!23664 (_2!1039 lt!24978))))))

(assert (=> d!21968 (= (isEmpty!635 (_2!1039 lt!24978)) lt!24988)))

(declare-fun bs!9472 () Bool)

(assert (= bs!9472 d!21968))

(assert (=> bs!9472 m!79728))

(assert (=> bs!9472 m!79728))

(declare-fun m!79786 () Bool)

(assert (=> bs!9472 m!79786))

(declare-fun m!79788 () Bool)

(assert (=> bs!9472 m!79788))

(assert (=> b!96422 d!21968))

(declare-fun lt!25000 () tuple2!1664)

(declare-fun b!96453 () Bool)

(declare-fun e!53406 () Bool)

(declare-datatypes ((tuple2!1670 0))(
  ( (tuple2!1671 (_1!1042 List!1568) (_2!1042 List!1566)) )
))
(declare-fun lexList!63 (LexerInterface!233 List!1569 List!1566) tuple2!1670)

(assert (=> b!96453 (= e!53406 (= (list!594 (_2!1039 lt!25000)) (_2!1042 (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 input!2238))))))))

(declare-fun b!96454 () Bool)

(declare-fun res!47133 () Bool)

(assert (=> b!96454 (=> (not res!47133) (not e!53406))))

(assert (=> b!96454 (= res!47133 (= (list!595 (_1!1039 lt!25000)) (_1!1042 (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 input!2238))))))))

(declare-fun b!96455 () Bool)

(declare-fun e!53405 () Bool)

(declare-fun isEmpty!642 (BalanceConc!970) Bool)

(assert (=> b!96455 (= e!53405 (not (isEmpty!642 (_1!1039 lt!25000))))))

(declare-fun b!96456 () Bool)

(declare-fun e!53407 () Bool)

(assert (=> b!96456 (= e!53407 e!53405)))

(declare-fun res!47132 () Bool)

(declare-fun size!1363 (BalanceConc!968) Int)

(assert (=> b!96456 (= res!47132 (< (size!1363 (_2!1039 lt!25000)) (size!1363 (seqFromList!179 input!2238))))))

(assert (=> b!96456 (=> (not res!47132) (not e!53405))))

(declare-fun d!21970 () Bool)

(assert (=> d!21970 e!53406))

(declare-fun res!47134 () Bool)

(assert (=> d!21970 (=> (not res!47134) (not e!53406))))

(assert (=> d!21970 (= res!47134 e!53407)))

(declare-fun c!23672 () Bool)

(declare-fun size!1364 (BalanceConc!970) Int)

(assert (=> d!21970 (= c!23672 (> (size!1364 (_1!1039 lt!25000)) 0))))

(declare-fun lexTailRecV2!60 (LexerInterface!233 List!1569 BalanceConc!968 BalanceConc!968 BalanceConc!968 BalanceConc!970) tuple2!1664)

(assert (=> d!21970 (= lt!25000 (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 input!2238) (BalanceConc!969 Empty!482) (seqFromList!179 input!2238) (BalanceConc!971 Empty!483)))))

(assert (=> d!21970 (= (lex!139 thiss!19403 rules!2471 (seqFromList!179 input!2238)) lt!25000)))

(declare-fun b!96457 () Bool)

(assert (=> b!96457 (= e!53407 (= (_2!1039 lt!25000) (seqFromList!179 input!2238)))))

(assert (= (and d!21970 c!23672) b!96456))

(assert (= (and d!21970 (not c!23672)) b!96457))

(assert (= (and b!96456 res!47132) b!96455))

(assert (= (and d!21970 res!47134) b!96454))

(assert (= (and b!96454 res!47133) b!96453))

(declare-fun m!79806 () Bool)

(assert (=> b!96453 m!79806))

(assert (=> b!96453 m!79740))

(declare-fun m!79808 () Bool)

(assert (=> b!96453 m!79808))

(assert (=> b!96453 m!79808))

(declare-fun m!79810 () Bool)

(assert (=> b!96453 m!79810))

(declare-fun m!79812 () Bool)

(assert (=> b!96456 m!79812))

(assert (=> b!96456 m!79740))

(declare-fun m!79814 () Bool)

(assert (=> b!96456 m!79814))

(declare-fun m!79816 () Bool)

(assert (=> d!21970 m!79816))

(assert (=> d!21970 m!79740))

(assert (=> d!21970 m!79740))

(declare-fun m!79818 () Bool)

(assert (=> d!21970 m!79818))

(declare-fun m!79820 () Bool)

(assert (=> b!96455 m!79820))

(declare-fun m!79822 () Bool)

(assert (=> b!96454 m!79822))

(assert (=> b!96454 m!79740))

(assert (=> b!96454 m!79808))

(assert (=> b!96454 m!79808))

(assert (=> b!96454 m!79810))

(assert (=> b!96422 d!21970))

(declare-fun d!21976 () Bool)

(declare-fun fromListB!75 (List!1566) BalanceConc!968)

(assert (=> d!21976 (= (seqFromList!179 input!2238) (fromListB!75 input!2238))))

(declare-fun bs!9475 () Bool)

(assert (= bs!9475 d!21976))

(declare-fun m!79824 () Bool)

(assert (=> bs!9475 m!79824))

(assert (=> b!96422 d!21976))

(declare-fun b!96513 () Bool)

(declare-fun e!53433 () Bool)

(declare-fun lt!25027 () Option!158)

(declare-fun contains!246 (List!1569 Rule!482) Bool)

(assert (=> b!96513 (= e!53433 (contains!246 rules!2471 (rule!840 (_1!1040 (get!398 lt!25027)))))))

(declare-fun b!96514 () Bool)

(declare-fun res!47175 () Bool)

(assert (=> b!96514 (=> (not res!47175) (not e!53433))))

(declare-fun charsOf!74 (Token!438) BalanceConc!968)

(assert (=> b!96514 (= res!47175 (= (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))) (originalCharacters!390 (_1!1040 (get!398 lt!25027)))))))

(declare-fun b!96515 () Bool)

(declare-fun e!53432 () Bool)

(assert (=> b!96515 (= e!53432 e!53433)))

(declare-fun res!47176 () Bool)

(assert (=> b!96515 (=> (not res!47176) (not e!53433))))

(declare-fun isDefined!50 (Option!158) Bool)

(assert (=> b!96515 (= res!47176 (isDefined!50 lt!25027))))

(declare-fun b!96516 () Bool)

(declare-fun res!47174 () Bool)

(assert (=> b!96516 (=> (not res!47174) (not e!53433))))

(assert (=> b!96516 (= res!47174 (= (++!212 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))) (_2!1040 (get!398 lt!25027))) input!2238))))

(declare-fun call!4363 () Option!158)

(declare-fun bm!4358 () Bool)

(declare-fun maxPrefixOneRule!35 (LexerInterface!233 Rule!482 List!1566) Option!158)

(assert (=> bm!4358 (= call!4363 (maxPrefixOneRule!35 thiss!19403 (h!6960 rules!2471) input!2238))))

(declare-fun b!96517 () Bool)

(declare-fun res!47177 () Bool)

(assert (=> b!96517 (=> (not res!47177) (not e!53433))))

(declare-fun matchR!39 (Regex!409 List!1566) Bool)

(assert (=> b!96517 (= res!47177 (matchR!39 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))) (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))

(declare-fun b!96518 () Bool)

(declare-fun res!47179 () Bool)

(assert (=> b!96518 (=> (not res!47179) (not e!53433))))

(declare-fun size!1365 (List!1566) Int)

(assert (=> b!96518 (= res!47179 (< (size!1365 (_2!1040 (get!398 lt!25027))) (size!1365 input!2238)))))

(declare-fun d!21978 () Bool)

(assert (=> d!21978 e!53432))

(declare-fun res!47180 () Bool)

(assert (=> d!21978 (=> res!47180 e!53432)))

(declare-fun isEmpty!643 (Option!158) Bool)

(assert (=> d!21978 (= res!47180 (isEmpty!643 lt!25027))))

(declare-fun e!53431 () Option!158)

(assert (=> d!21978 (= lt!25027 e!53431)))

(declare-fun c!23681 () Bool)

(assert (=> d!21978 (= c!23681 (and ((_ is Cons!1563) rules!2471) ((_ is Nil!1563) (t!21054 rules!2471))))))

(declare-fun lt!25028 () Unit!1014)

(declare-fun lt!25029 () Unit!1014)

(assert (=> d!21978 (= lt!25028 lt!25029)))

(declare-fun isPrefix!37 (List!1566 List!1566) Bool)

(assert (=> d!21978 (isPrefix!37 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!37 (List!1566 List!1566) Unit!1014)

(assert (=> d!21978 (= lt!25029 (lemmaIsPrefixRefl!37 input!2238 input!2238))))

(declare-fun rulesValidInductive!63 (LexerInterface!233 List!1569) Bool)

(assert (=> d!21978 (rulesValidInductive!63 thiss!19403 rules!2471)))

(assert (=> d!21978 (= (maxPrefix!73 thiss!19403 rules!2471 input!2238) lt!25027)))

(declare-fun b!96519 () Bool)

(assert (=> b!96519 (= e!53431 call!4363)))

(declare-fun b!96520 () Bool)

(declare-fun lt!25026 () Option!158)

(declare-fun lt!25030 () Option!158)

(assert (=> b!96520 (= e!53431 (ite (and ((_ is None!157) lt!25026) ((_ is None!157) lt!25030)) None!157 (ite ((_ is None!157) lt!25030) lt!25026 (ite ((_ is None!157) lt!25026) lt!25030 (ite (>= (size!1359 (_1!1040 (v!12920 lt!25026))) (size!1359 (_1!1040 (v!12920 lt!25030)))) lt!25026 lt!25030)))))))

(assert (=> b!96520 (= lt!25026 call!4363)))

(assert (=> b!96520 (= lt!25030 (maxPrefix!73 thiss!19403 (t!21054 rules!2471) input!2238))))

(declare-fun b!96521 () Bool)

(declare-fun res!47178 () Bool)

(assert (=> b!96521 (=> (not res!47178) (not e!53433))))

(declare-fun apply!243 (TokenValueInjection!486 BalanceConc!968) TokenValue!331)

(assert (=> b!96521 (= res!47178 (= (value!12612 (_1!1040 (get!398 lt!25027))) (apply!243 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25027)))))))))

(assert (= (and d!21978 c!23681) b!96519))

(assert (= (and d!21978 (not c!23681)) b!96520))

(assert (= (or b!96519 b!96520) bm!4358))

(assert (= (and d!21978 (not res!47180)) b!96515))

(assert (= (and b!96515 res!47176) b!96514))

(assert (= (and b!96514 res!47175) b!96518))

(assert (= (and b!96518 res!47179) b!96516))

(assert (= (and b!96516 res!47174) b!96521))

(assert (= (and b!96521 res!47178) b!96517))

(assert (= (and b!96517 res!47177) b!96513))

(declare-fun m!79870 () Bool)

(assert (=> b!96515 m!79870))

(declare-fun m!79872 () Bool)

(assert (=> b!96516 m!79872))

(declare-fun m!79874 () Bool)

(assert (=> b!96516 m!79874))

(assert (=> b!96516 m!79874))

(declare-fun m!79876 () Bool)

(assert (=> b!96516 m!79876))

(assert (=> b!96516 m!79876))

(declare-fun m!79878 () Bool)

(assert (=> b!96516 m!79878))

(declare-fun m!79880 () Bool)

(assert (=> d!21978 m!79880))

(declare-fun m!79882 () Bool)

(assert (=> d!21978 m!79882))

(declare-fun m!79884 () Bool)

(assert (=> d!21978 m!79884))

(declare-fun m!79886 () Bool)

(assert (=> d!21978 m!79886))

(assert (=> b!96513 m!79872))

(declare-fun m!79888 () Bool)

(assert (=> b!96513 m!79888))

(assert (=> b!96518 m!79872))

(declare-fun m!79890 () Bool)

(assert (=> b!96518 m!79890))

(declare-fun m!79892 () Bool)

(assert (=> b!96518 m!79892))

(declare-fun m!79894 () Bool)

(assert (=> bm!4358 m!79894))

(assert (=> b!96521 m!79872))

(declare-fun m!79896 () Bool)

(assert (=> b!96521 m!79896))

(assert (=> b!96521 m!79896))

(declare-fun m!79898 () Bool)

(assert (=> b!96521 m!79898))

(assert (=> b!96517 m!79872))

(assert (=> b!96517 m!79874))

(assert (=> b!96517 m!79874))

(assert (=> b!96517 m!79876))

(assert (=> b!96517 m!79876))

(declare-fun m!79900 () Bool)

(assert (=> b!96517 m!79900))

(declare-fun m!79902 () Bool)

(assert (=> b!96520 m!79902))

(assert (=> b!96514 m!79872))

(assert (=> b!96514 m!79874))

(assert (=> b!96514 m!79874))

(assert (=> b!96514 m!79876))

(assert (=> b!96416 d!21978))

(declare-fun d!21992 () Bool)

(declare-fun lt!25042 () BalanceConc!968)

(declare-fun printList!33 (LexerInterface!233 List!1568) List!1566)

(assert (=> d!21992 (= (list!594 lt!25042) (printList!33 thiss!19403 (list!595 (_1!1039 lt!24978))))))

(declare-fun printTailRec!33 (LexerInterface!233 BalanceConc!970 Int BalanceConc!968) BalanceConc!968)

(assert (=> d!21992 (= lt!25042 (printTailRec!33 thiss!19403 (_1!1039 lt!24978) 0 (BalanceConc!969 Empty!482)))))

(assert (=> d!21992 (= (print!68 thiss!19403 (_1!1039 lt!24978)) lt!25042)))

(declare-fun bs!9481 () Bool)

(assert (= bs!9481 d!21992))

(declare-fun m!79966 () Bool)

(assert (=> bs!9481 m!79966))

(assert (=> bs!9481 m!79744))

(assert (=> bs!9481 m!79744))

(declare-fun m!79968 () Bool)

(assert (=> bs!9481 m!79968))

(declare-fun m!79970 () Bool)

(assert (=> bs!9481 m!79970))

(assert (=> b!96416 d!21992))

(declare-fun d!22002 () Bool)

(declare-fun lt!25043 () BalanceConc!968)

(assert (=> d!22002 (= (list!594 lt!25043) (printList!33 thiss!19403 (list!595 (_1!1039 lt!24981))))))

(assert (=> d!22002 (= lt!25043 (printTailRec!33 thiss!19403 (_1!1039 lt!24981) 0 (BalanceConc!969 Empty!482)))))

(assert (=> d!22002 (= (print!68 thiss!19403 (_1!1039 lt!24981)) lt!25043)))

(declare-fun bs!9482 () Bool)

(assert (= bs!9482 d!22002))

(declare-fun m!79972 () Bool)

(assert (=> bs!9482 m!79972))

(declare-fun m!79974 () Bool)

(assert (=> bs!9482 m!79974))

(assert (=> bs!9482 m!79974))

(declare-fun m!79976 () Bool)

(assert (=> bs!9482 m!79976))

(declare-fun m!79978 () Bool)

(assert (=> bs!9482 m!79978))

(assert (=> b!96416 d!22002))

(declare-fun b!96578 () Bool)

(declare-fun e!53465 () List!1566)

(assert (=> b!96578 (= e!53465 (Cons!1560 (h!6957 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) (++!212 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) (list!594 (_2!1039 lt!24978)))))))

(declare-fun e!53466 () Bool)

(declare-fun lt!25046 () List!1566)

(declare-fun b!96580 () Bool)

(assert (=> b!96580 (= e!53466 (or (not (= (list!594 (_2!1039 lt!24978)) Nil!1560)) (= lt!25046 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))))))

(declare-fun b!96577 () Bool)

(assert (=> b!96577 (= e!53465 (list!594 (_2!1039 lt!24978)))))

(declare-fun b!96579 () Bool)

(declare-fun res!47199 () Bool)

(assert (=> b!96579 (=> (not res!47199) (not e!53466))))

(assert (=> b!96579 (= res!47199 (= (size!1365 lt!25046) (+ (size!1365 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) (size!1365 (list!594 (_2!1039 lt!24978))))))))

(declare-fun d!22004 () Bool)

(assert (=> d!22004 e!53466))

(declare-fun res!47198 () Bool)

(assert (=> d!22004 (=> (not res!47198) (not e!53466))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!112 (List!1566) (InoxSet C!1740))

(assert (=> d!22004 (= res!47198 (= (content!112 lt!25046) ((_ map or) (content!112 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) (content!112 (list!594 (_2!1039 lt!24978))))))))

(assert (=> d!22004 (= lt!25046 e!53465)))

(declare-fun c!23686 () Bool)

(assert (=> d!22004 (= c!23686 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(assert (=> d!22004 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))) (list!594 (_2!1039 lt!24978))) lt!25046)))

(assert (= (and d!22004 c!23686) b!96577))

(assert (= (and d!22004 (not c!23686)) b!96578))

(assert (= (and d!22004 res!47198) b!96579))

(assert (= (and b!96579 res!47199) b!96580))

(assert (=> b!96578 m!79728))

(declare-fun m!79984 () Bool)

(assert (=> b!96578 m!79984))

(declare-fun m!79986 () Bool)

(assert (=> b!96579 m!79986))

(assert (=> b!96579 m!79732))

(declare-fun m!79988 () Bool)

(assert (=> b!96579 m!79988))

(assert (=> b!96579 m!79728))

(declare-fun m!79990 () Bool)

(assert (=> b!96579 m!79990))

(declare-fun m!79992 () Bool)

(assert (=> d!22004 m!79992))

(assert (=> d!22004 m!79732))

(declare-fun m!79994 () Bool)

(assert (=> d!22004 m!79994))

(assert (=> d!22004 m!79728))

(declare-fun m!79996 () Bool)

(assert (=> d!22004 m!79996))

(assert (=> b!96416 d!22004))

(declare-fun e!53468 () Bool)

(declare-fun b!96581 () Bool)

(declare-fun lt!25047 () tuple2!1664)

(assert (=> b!96581 (= e!53468 (= (list!594 (_2!1039 lt!25047)) (_2!1042 (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))))

(declare-fun b!96582 () Bool)

(declare-fun res!47201 () Bool)

(assert (=> b!96582 (=> (not res!47201) (not e!53468))))

(assert (=> b!96582 (= res!47201 (= (list!595 (_1!1039 lt!25047)) (_1!1042 (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))))

(declare-fun b!96583 () Bool)

(declare-fun e!53467 () Bool)

(assert (=> b!96583 (= e!53467 (not (isEmpty!642 (_1!1039 lt!25047))))))

(declare-fun b!96584 () Bool)

(declare-fun e!53469 () Bool)

(assert (=> b!96584 (= e!53469 e!53467)))

(declare-fun res!47200 () Bool)

(assert (=> b!96584 (= res!47200 (< (size!1363 (_2!1039 lt!25047)) (size!1363 (seqFromList!179 (_2!1040 lt!24980)))))))

(assert (=> b!96584 (=> (not res!47200) (not e!53467))))

(declare-fun d!22006 () Bool)

(assert (=> d!22006 e!53468))

(declare-fun res!47202 () Bool)

(assert (=> d!22006 (=> (not res!47202) (not e!53468))))

(assert (=> d!22006 (= res!47202 e!53469)))

(declare-fun c!23687 () Bool)

(assert (=> d!22006 (= c!23687 (> (size!1364 (_1!1039 lt!25047)) 0))))

(assert (=> d!22006 (= lt!25047 (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)) (BalanceConc!969 Empty!482) (seqFromList!179 (_2!1040 lt!24980)) (BalanceConc!971 Empty!483)))))

(assert (=> d!22006 (= (lex!139 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))) lt!25047)))

(declare-fun b!96585 () Bool)

(assert (=> b!96585 (= e!53469 (= (_2!1039 lt!25047) (seqFromList!179 (_2!1040 lt!24980))))))

(assert (= (and d!22006 c!23687) b!96584))

(assert (= (and d!22006 (not c!23687)) b!96585))

(assert (= (and b!96584 res!47200) b!96583))

(assert (= (and d!22006 res!47202) b!96582))

(assert (= (and b!96582 res!47201) b!96581))

(declare-fun m!79998 () Bool)

(assert (=> b!96581 m!79998))

(assert (=> b!96581 m!79724))

(declare-fun m!80000 () Bool)

(assert (=> b!96581 m!80000))

(assert (=> b!96581 m!80000))

(declare-fun m!80002 () Bool)

(assert (=> b!96581 m!80002))

(declare-fun m!80004 () Bool)

(assert (=> b!96584 m!80004))

(assert (=> b!96584 m!79724))

(declare-fun m!80006 () Bool)

(assert (=> b!96584 m!80006))

(declare-fun m!80008 () Bool)

(assert (=> d!22006 m!80008))

(assert (=> d!22006 m!79724))

(assert (=> d!22006 m!79724))

(declare-fun m!80010 () Bool)

(assert (=> d!22006 m!80010))

(declare-fun m!80012 () Bool)

(assert (=> b!96583 m!80012))

(declare-fun m!80014 () Bool)

(assert (=> b!96582 m!80014))

(assert (=> b!96582 m!79724))

(assert (=> b!96582 m!80000))

(assert (=> b!96582 m!80000))

(assert (=> b!96582 m!80002))

(assert (=> b!96416 d!22006))

(declare-fun d!22008 () Bool)

(declare-fun list!599 (Conc!482) List!1566)

(assert (=> d!22008 (= (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))) (list!599 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(declare-fun bs!9483 () Bool)

(assert (= bs!9483 d!22008))

(declare-fun m!80016 () Bool)

(assert (=> bs!9483 m!80016))

(assert (=> b!96416 d!22008))

(declare-fun d!22010 () Bool)

(assert (=> d!22010 (= (list!594 (_2!1039 lt!24981)) (list!599 (c!23664 (_2!1039 lt!24981))))))

(declare-fun bs!9484 () Bool)

(assert (= bs!9484 d!22010))

(declare-fun m!80018 () Bool)

(assert (=> bs!9484 m!80018))

(assert (=> b!96416 d!22010))

(declare-fun d!22012 () Bool)

(assert (=> d!22012 (= (list!594 (_2!1039 lt!24978)) (list!599 (c!23664 (_2!1039 lt!24978))))))

(declare-fun bs!9485 () Bool)

(assert (= bs!9485 d!22012))

(declare-fun m!80020 () Bool)

(assert (=> bs!9485 m!80020))

(assert (=> b!96416 d!22012))

(declare-fun d!22014 () Bool)

(assert (=> d!22014 (= (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))) (list!599 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(declare-fun bs!9486 () Bool)

(assert (= bs!9486 d!22014))

(declare-fun m!80022 () Bool)

(assert (=> bs!9486 m!80022))

(assert (=> b!96416 d!22014))

(declare-fun b!96587 () Bool)

(declare-fun e!53470 () List!1566)

(assert (=> b!96587 (= e!53470 (Cons!1560 (h!6957 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) (++!212 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) (list!594 (_2!1039 lt!24981)))))))

(declare-fun lt!25048 () List!1566)

(declare-fun b!96589 () Bool)

(declare-fun e!53471 () Bool)

(assert (=> b!96589 (= e!53471 (or (not (= (list!594 (_2!1039 lt!24981)) Nil!1560)) (= lt!25048 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))))))

(declare-fun b!96586 () Bool)

(assert (=> b!96586 (= e!53470 (list!594 (_2!1039 lt!24981)))))

(declare-fun b!96588 () Bool)

(declare-fun res!47204 () Bool)

(assert (=> b!96588 (=> (not res!47204) (not e!53471))))

(assert (=> b!96588 (= res!47204 (= (size!1365 lt!25048) (+ (size!1365 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) (size!1365 (list!594 (_2!1039 lt!24981))))))))

(declare-fun d!22016 () Bool)

(assert (=> d!22016 e!53471))

(declare-fun res!47203 () Bool)

(assert (=> d!22016 (=> (not res!47203) (not e!53471))))

(assert (=> d!22016 (= res!47203 (= (content!112 lt!25048) ((_ map or) (content!112 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) (content!112 (list!594 (_2!1039 lt!24981))))))))

(assert (=> d!22016 (= lt!25048 e!53470)))

(declare-fun c!23688 () Bool)

(assert (=> d!22016 (= c!23688 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(assert (=> d!22016 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))) (list!594 (_2!1039 lt!24981))) lt!25048)))

(assert (= (and d!22016 c!23688) b!96586))

(assert (= (and d!22016 (not c!23688)) b!96587))

(assert (= (and d!22016 res!47203) b!96588))

(assert (= (and b!96588 res!47204) b!96589))

(assert (=> b!96587 m!79718))

(declare-fun m!80024 () Bool)

(assert (=> b!96587 m!80024))

(declare-fun m!80026 () Bool)

(assert (=> b!96588 m!80026))

(assert (=> b!96588 m!79716))

(declare-fun m!80028 () Bool)

(assert (=> b!96588 m!80028))

(assert (=> b!96588 m!79718))

(declare-fun m!80030 () Bool)

(assert (=> b!96588 m!80030))

(declare-fun m!80032 () Bool)

(assert (=> d!22016 m!80032))

(assert (=> d!22016 m!79716))

(declare-fun m!80034 () Bool)

(assert (=> d!22016 m!80034))

(assert (=> d!22016 m!79718))

(declare-fun m!80036 () Bool)

(assert (=> d!22016 m!80036))

(assert (=> b!96416 d!22016))

(declare-fun d!22018 () Bool)

(assert (=> d!22018 (= (seqFromList!179 (_2!1040 lt!24980)) (fromListB!75 (_2!1040 lt!24980)))))

(declare-fun bs!9487 () Bool)

(assert (= bs!9487 d!22018))

(declare-fun m!80038 () Bool)

(assert (=> bs!9487 m!80038))

(assert (=> b!96416 d!22018))

(declare-fun d!22020 () Bool)

(declare-fun lt!25054 () tuple2!1664)

(assert (=> d!22020 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054))) (list!594 (_2!1039 lt!25054))) (_2!1040 lt!24980))))

(assert (=> d!22020 (= lt!25054 (lex!139 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))))))

(declare-fun lt!25053 () Unit!1014)

(declare-fun choose!1370 (LexerInterface!233 List!1569 List!1566) Unit!1014)

(assert (=> d!22020 (= lt!25053 (choose!1370 thiss!19403 rules!2471 (_2!1040 lt!24980)))))

(assert (=> d!22020 (not (isEmpty!634 rules!2471))))

(assert (=> d!22020 (= (theoremInvertFromString!44 thiss!19403 rules!2471 (_2!1040 lt!24980)) lt!25053)))

(declare-fun bs!9488 () Bool)

(assert (= bs!9488 d!22020))

(assert (=> bs!9488 m!79724))

(assert (=> bs!9488 m!79736))

(assert (=> bs!9488 m!79724))

(declare-fun m!80040 () Bool)

(assert (=> bs!9488 m!80040))

(declare-fun m!80042 () Bool)

(assert (=> bs!9488 m!80042))

(declare-fun m!80044 () Bool)

(assert (=> bs!9488 m!80044))

(declare-fun m!80046 () Bool)

(assert (=> bs!9488 m!80046))

(declare-fun m!80048 () Bool)

(assert (=> bs!9488 m!80048))

(assert (=> bs!9488 m!80040))

(assert (=> bs!9488 m!80042))

(assert (=> bs!9488 m!79746))

(assert (=> bs!9488 m!80048))

(assert (=> b!96416 d!22020))

(declare-fun d!22022 () Bool)

(assert (=> d!22022 (= (get!398 (maxPrefix!73 thiss!19403 rules!2471 input!2238)) (v!12920 (maxPrefix!73 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!96416 d!22022))

(declare-fun d!22024 () Bool)

(assert (=> d!22024 (= (inv!1910 (tag!519 (h!6960 rules!2471))) (= (mod (str.len (value!12611 (tag!519 (h!6960 rules!2471)))) 2) 0))))

(assert (=> b!96421 d!22024))

(declare-fun d!22026 () Bool)

(declare-fun res!47207 () Bool)

(declare-fun e!53474 () Bool)

(assert (=> d!22026 (=> (not res!47207) (not e!53474))))

(declare-fun semiInverseModEq!77 (Int Int) Bool)

(assert (=> d!22026 (= res!47207 (semiInverseModEq!77 (toChars!743 (transformation!341 (h!6960 rules!2471))) (toValue!884 (transformation!341 (h!6960 rules!2471)))))))

(assert (=> d!22026 (= (inv!1912 (transformation!341 (h!6960 rules!2471))) e!53474)))

(declare-fun b!96592 () Bool)

(declare-fun equivClasses!72 (Int Int) Bool)

(assert (=> b!96592 (= e!53474 (equivClasses!72 (toChars!743 (transformation!341 (h!6960 rules!2471))) (toValue!884 (transformation!341 (h!6960 rules!2471)))))))

(assert (= (and d!22026 res!47207) b!96592))

(declare-fun m!80050 () Bool)

(assert (=> d!22026 m!80050))

(declare-fun m!80052 () Bool)

(assert (=> b!96592 m!80052))

(assert (=> b!96421 d!22026))

(declare-fun d!22028 () Bool)

(assert (=> d!22028 (= (isEmpty!634 rules!2471) ((_ is Nil!1563) rules!2471))))

(assert (=> b!96420 d!22028))

(declare-fun b!96603 () Bool)

(declare-fun b_free!2873 () Bool)

(declare-fun b_next!2873 () Bool)

(assert (=> b!96603 (= b_free!2873 (not b_next!2873))))

(declare-fun tp!55992 () Bool)

(declare-fun b_and!4323 () Bool)

(assert (=> b!96603 (= tp!55992 b_and!4323)))

(declare-fun b_free!2875 () Bool)

(declare-fun b_next!2875 () Bool)

(assert (=> b!96603 (= b_free!2875 (not b_next!2875))))

(declare-fun tp!55989 () Bool)

(declare-fun b_and!4325 () Bool)

(assert (=> b!96603 (= tp!55989 b_and!4325)))

(declare-fun e!53483 () Bool)

(assert (=> b!96603 (= e!53483 (and tp!55992 tp!55989))))

(declare-fun e!53484 () Bool)

(declare-fun tp!55991 () Bool)

(declare-fun b!96602 () Bool)

(assert (=> b!96602 (= e!53484 (and tp!55991 (inv!1910 (tag!519 (h!6960 (t!21054 rules!2471)))) (inv!1912 (transformation!341 (h!6960 (t!21054 rules!2471)))) e!53483))))

(declare-fun b!96601 () Bool)

(declare-fun e!53485 () Bool)

(declare-fun tp!55990 () Bool)

(assert (=> b!96601 (= e!53485 (and e!53484 tp!55990))))

(assert (=> b!96419 (= tp!55949 e!53485)))

(assert (= b!96602 b!96603))

(assert (= b!96601 b!96602))

(assert (= (and b!96419 ((_ is Cons!1563) (t!21054 rules!2471))) b!96601))

(declare-fun m!80054 () Bool)

(assert (=> b!96602 m!80054))

(declare-fun m!80056 () Bool)

(assert (=> b!96602 m!80056))

(declare-fun b!96608 () Bool)

(declare-fun e!53489 () Bool)

(declare-fun tp!55995 () Bool)

(assert (=> b!96608 (= e!53489 (and tp_is_empty!741 tp!55995))))

(assert (=> b!96418 (= tp!55950 e!53489)))

(assert (= (and b!96418 ((_ is Cons!1560) (t!21051 input!2238))) b!96608))

(declare-fun b!96621 () Bool)

(declare-fun e!53492 () Bool)

(declare-fun tp!56009 () Bool)

(assert (=> b!96621 (= e!53492 tp!56009)))

(declare-fun b!96620 () Bool)

(declare-fun tp!56008 () Bool)

(declare-fun tp!56007 () Bool)

(assert (=> b!96620 (= e!53492 (and tp!56008 tp!56007))))

(assert (=> b!96421 (= tp!55946 e!53492)))

(declare-fun b!96619 () Bool)

(assert (=> b!96619 (= e!53492 tp_is_empty!741)))

(declare-fun b!96622 () Bool)

(declare-fun tp!56010 () Bool)

(declare-fun tp!56006 () Bool)

(assert (=> b!96622 (= e!53492 (and tp!56010 tp!56006))))

(assert (= (and b!96421 ((_ is ElementMatch!409) (regex!341 (h!6960 rules!2471)))) b!96619))

(assert (= (and b!96421 ((_ is Concat!741) (regex!341 (h!6960 rules!2471)))) b!96620))

(assert (= (and b!96421 ((_ is Star!409) (regex!341 (h!6960 rules!2471)))) b!96621))

(assert (= (and b!96421 ((_ is Union!409) (regex!341 (h!6960 rules!2471)))) b!96622))

(check-sat (not b!96608) (not d!21966) (not b!96442) b_and!4315 (not b!96583) (not b!96520) (not d!21970) (not d!21978) (not b!96515) (not d!22012) (not b!96620) (not b!96579) (not b_next!2865) b_and!4317 (not d!22004) (not b!96455) (not d!21976) (not d!21968) (not b!96621) (not b!96592) (not b!96516) (not d!22008) (not d!22026) (not b_next!2867) (not d!22020) (not bm!4358) (not d!21992) (not b!96453) (not b!96521) (not d!22002) (not d!22010) (not b_next!2873) (not d!22006) (not b!96601) tp_is_empty!741 (not b!96513) (not b!96622) (not d!22016) (not d!22018) (not b!96514) (not b!96456) (not b!96582) (not b!96602) (not b!96581) (not b!96584) (not b!96517) (not b!96587) b_and!4323 (not b_next!2875) (not d!21962) (not d!22014) b_and!4325 (not b!96588) (not b!96518) (not b!96454) (not b!96578))
(check-sat (not b_next!2867) (not b_next!2873) b_and!4315 b_and!4325 (not b_next!2865) b_and!4317 b_and!4323 (not b_next!2875))
(get-model)

(declare-fun d!22042 () Bool)

(declare-fun e!53503 () Bool)

(assert (=> d!22042 e!53503))

(declare-fun res!47225 () Bool)

(assert (=> d!22042 (=> (not res!47225) (not e!53503))))

(declare-fun lt!25057 () BalanceConc!968)

(assert (=> d!22042 (= res!47225 (= (list!594 lt!25057) input!2238))))

(declare-fun fromList!46 (List!1566) Conc!482)

(assert (=> d!22042 (= lt!25057 (BalanceConc!969 (fromList!46 input!2238)))))

(assert (=> d!22042 (= (fromListB!75 input!2238) lt!25057)))

(declare-fun b!96641 () Bool)

(declare-fun isBalanced!113 (Conc!482) Bool)

(assert (=> b!96641 (= e!53503 (isBalanced!113 (fromList!46 input!2238)))))

(assert (= (and d!22042 res!47225) b!96641))

(declare-fun m!80080 () Bool)

(assert (=> d!22042 m!80080))

(declare-fun m!80082 () Bool)

(assert (=> d!22042 m!80082))

(assert (=> b!96641 m!80082))

(assert (=> b!96641 m!80082))

(declare-fun m!80084 () Bool)

(assert (=> b!96641 m!80084))

(assert (=> d!21976 d!22042))

(declare-fun b!96650 () Bool)

(declare-fun e!53508 () List!1566)

(assert (=> b!96650 (= e!53508 Nil!1560)))

(declare-fun b!96653 () Bool)

(declare-fun e!53509 () List!1566)

(assert (=> b!96653 (= e!53509 (++!212 (list!599 (left!1185 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978))))) (list!599 (right!1515 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978)))))))))

(declare-fun d!22044 () Bool)

(declare-fun c!23702 () Bool)

(assert (=> d!22044 (= c!23702 ((_ is Empty!482) (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(assert (=> d!22044 (= (list!599 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978)))) e!53508)))

(declare-fun b!96652 () Bool)

(declare-fun list!600 (IArray!965) List!1566)

(assert (=> b!96652 (= e!53509 (list!600 (xs!3069 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978))))))))

(declare-fun b!96651 () Bool)

(assert (=> b!96651 (= e!53508 e!53509)))

(declare-fun c!23703 () Bool)

(assert (=> b!96651 (= c!23703 ((_ is Leaf!788) (c!23664 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(assert (= (and d!22044 c!23702) b!96650))

(assert (= (and d!22044 (not c!23702)) b!96651))

(assert (= (and b!96651 c!23703) b!96652))

(assert (= (and b!96651 (not c!23703)) b!96653))

(declare-fun m!80086 () Bool)

(assert (=> b!96653 m!80086))

(declare-fun m!80088 () Bool)

(assert (=> b!96653 m!80088))

(assert (=> b!96653 m!80086))

(assert (=> b!96653 m!80088))

(declare-fun m!80090 () Bool)

(assert (=> b!96653 m!80090))

(declare-fun m!80092 () Bool)

(assert (=> b!96652 m!80092))

(assert (=> d!22008 d!22044))

(declare-fun d!22046 () Bool)

(assert (=> d!22046 (= (list!594 lt!25043) (list!599 (c!23664 lt!25043)))))

(declare-fun bs!9490 () Bool)

(assert (= bs!9490 d!22046))

(declare-fun m!80094 () Bool)

(assert (=> bs!9490 m!80094))

(assert (=> d!22002 d!22046))

(declare-fun d!22048 () Bool)

(declare-fun c!23706 () Bool)

(assert (=> d!22048 (= c!23706 ((_ is Cons!1562) (list!595 (_1!1039 lt!24981))))))

(declare-fun e!53512 () List!1566)

(assert (=> d!22048 (= (printList!33 thiss!19403 (list!595 (_1!1039 lt!24981))) e!53512)))

(declare-fun b!96658 () Bool)

(assert (=> b!96658 (= e!53512 (++!212 (list!594 (charsOf!74 (h!6959 (list!595 (_1!1039 lt!24981))))) (printList!33 thiss!19403 (t!21053 (list!595 (_1!1039 lt!24981))))))))

(declare-fun b!96659 () Bool)

(assert (=> b!96659 (= e!53512 Nil!1560)))

(assert (= (and d!22048 c!23706) b!96658))

(assert (= (and d!22048 (not c!23706)) b!96659))

(declare-fun m!80096 () Bool)

(assert (=> b!96658 m!80096))

(assert (=> b!96658 m!80096))

(declare-fun m!80098 () Bool)

(assert (=> b!96658 m!80098))

(declare-fun m!80100 () Bool)

(assert (=> b!96658 m!80100))

(assert (=> b!96658 m!80098))

(assert (=> b!96658 m!80100))

(declare-fun m!80102 () Bool)

(assert (=> b!96658 m!80102))

(assert (=> d!22002 d!22048))

(declare-fun d!22050 () Bool)

(assert (=> d!22050 (= (list!595 (_1!1039 lt!24981)) (list!598 (c!23666 (_1!1039 lt!24981))))))

(declare-fun bs!9491 () Bool)

(assert (= bs!9491 d!22050))

(declare-fun m!80104 () Bool)

(assert (=> bs!9491 m!80104))

(assert (=> d!22002 d!22050))

(declare-fun d!22052 () Bool)

(declare-fun lt!25097 () BalanceConc!968)

(declare-fun printListTailRec!22 (LexerInterface!233 List!1568 List!1566) List!1566)

(declare-fun dropList!30 (BalanceConc!970 Int) List!1568)

(assert (=> d!22052 (= (list!594 lt!25097) (printListTailRec!22 thiss!19403 (dropList!30 (_1!1039 lt!24981) 0) (list!594 (BalanceConc!969 Empty!482))))))

(declare-fun e!53523 () BalanceConc!968)

(assert (=> d!22052 (= lt!25097 e!53523)))

(declare-fun c!23712 () Bool)

(assert (=> d!22052 (= c!23712 (>= 0 (size!1364 (_1!1039 lt!24981))))))

(declare-fun e!53524 () Bool)

(assert (=> d!22052 e!53524))

(declare-fun res!47231 () Bool)

(assert (=> d!22052 (=> (not res!47231) (not e!53524))))

(assert (=> d!22052 (= res!47231 (>= 0 0))))

(assert (=> d!22052 (= (printTailRec!33 thiss!19403 (_1!1039 lt!24981) 0 (BalanceConc!969 Empty!482)) lt!25097)))

(declare-fun b!96675 () Bool)

(assert (=> b!96675 (= e!53524 (<= 0 (size!1364 (_1!1039 lt!24981))))))

(declare-fun b!96676 () Bool)

(assert (=> b!96676 (= e!53523 (BalanceConc!969 Empty!482))))

(declare-fun b!96677 () Bool)

(declare-fun ++!214 (BalanceConc!968 BalanceConc!968) BalanceConc!968)

(declare-fun apply!246 (BalanceConc!970 Int) Token!438)

(assert (=> b!96677 (= e!53523 (printTailRec!33 thiss!19403 (_1!1039 lt!24981) (+ 0 1) (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (apply!246 (_1!1039 lt!24981) 0)))))))

(declare-fun lt!25099 () List!1568)

(assert (=> b!96677 (= lt!25099 (list!595 (_1!1039 lt!24981)))))

(declare-fun lt!25093 () Unit!1014)

(declare-fun lemmaDropApply!86 (List!1568 Int) Unit!1014)

(assert (=> b!96677 (= lt!25093 (lemmaDropApply!86 lt!25099 0))))

(declare-fun head!446 (List!1568) Token!438)

(declare-fun drop!92 (List!1568 Int) List!1568)

(declare-fun apply!247 (List!1568 Int) Token!438)

(assert (=> b!96677 (= (head!446 (drop!92 lt!25099 0)) (apply!247 lt!25099 0))))

(declare-fun lt!25096 () Unit!1014)

(assert (=> b!96677 (= lt!25096 lt!25093)))

(declare-fun lt!25095 () List!1568)

(assert (=> b!96677 (= lt!25095 (list!595 (_1!1039 lt!24981)))))

(declare-fun lt!25094 () Unit!1014)

(declare-fun lemmaDropTail!78 (List!1568 Int) Unit!1014)

(assert (=> b!96677 (= lt!25094 (lemmaDropTail!78 lt!25095 0))))

(declare-fun tail!158 (List!1568) List!1568)

(assert (=> b!96677 (= (tail!158 (drop!92 lt!25095 0)) (drop!92 lt!25095 (+ 0 1)))))

(declare-fun lt!25098 () Unit!1014)

(assert (=> b!96677 (= lt!25098 lt!25094)))

(assert (= (and d!22052 res!47231) b!96675))

(assert (= (and d!22052 c!23712) b!96676))

(assert (= (and d!22052 (not c!23712)) b!96677))

(declare-fun m!80140 () Bool)

(assert (=> d!22052 m!80140))

(declare-fun m!80142 () Bool)

(assert (=> d!22052 m!80142))

(declare-fun m!80144 () Bool)

(assert (=> d!22052 m!80144))

(declare-fun m!80146 () Bool)

(assert (=> d!22052 m!80146))

(assert (=> d!22052 m!80144))

(assert (=> d!22052 m!80142))

(declare-fun m!80148 () Bool)

(assert (=> d!22052 m!80148))

(assert (=> b!96675 m!80140))

(declare-fun m!80150 () Bool)

(assert (=> b!96677 m!80150))

(declare-fun m!80152 () Bool)

(assert (=> b!96677 m!80152))

(declare-fun m!80154 () Bool)

(assert (=> b!96677 m!80154))

(declare-fun m!80156 () Bool)

(assert (=> b!96677 m!80156))

(declare-fun m!80158 () Bool)

(assert (=> b!96677 m!80158))

(assert (=> b!96677 m!80158))

(assert (=> b!96677 m!80150))

(assert (=> b!96677 m!79974))

(declare-fun m!80160 () Bool)

(assert (=> b!96677 m!80160))

(declare-fun m!80162 () Bool)

(assert (=> b!96677 m!80162))

(declare-fun m!80164 () Bool)

(assert (=> b!96677 m!80164))

(declare-fun m!80166 () Bool)

(assert (=> b!96677 m!80166))

(declare-fun m!80168 () Bool)

(assert (=> b!96677 m!80168))

(assert (=> b!96677 m!80156))

(assert (=> b!96677 m!80166))

(declare-fun m!80170 () Bool)

(assert (=> b!96677 m!80170))

(assert (=> b!96677 m!80154))

(declare-fun m!80172 () Bool)

(assert (=> b!96677 m!80172))

(assert (=> d!22002 d!22052))

(declare-fun d!22056 () Bool)

(declare-fun lt!25102 () Int)

(assert (=> d!22056 (= lt!25102 (size!1365 (list!594 (_2!1039 lt!25047))))))

(declare-fun size!1368 (Conc!482) Int)

(assert (=> d!22056 (= lt!25102 (size!1368 (c!23664 (_2!1039 lt!25047))))))

(assert (=> d!22056 (= (size!1363 (_2!1039 lt!25047)) lt!25102)))

(declare-fun bs!9492 () Bool)

(assert (= bs!9492 d!22056))

(assert (=> bs!9492 m!79998))

(assert (=> bs!9492 m!79998))

(declare-fun m!80174 () Bool)

(assert (=> bs!9492 m!80174))

(declare-fun m!80176 () Bool)

(assert (=> bs!9492 m!80176))

(assert (=> b!96584 d!22056))

(declare-fun d!22058 () Bool)

(declare-fun lt!25103 () Int)

(assert (=> d!22058 (= lt!25103 (size!1365 (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))

(assert (=> d!22058 (= lt!25103 (size!1368 (c!23664 (seqFromList!179 (_2!1040 lt!24980)))))))

(assert (=> d!22058 (= (size!1363 (seqFromList!179 (_2!1040 lt!24980))) lt!25103)))

(declare-fun bs!9493 () Bool)

(assert (= bs!9493 d!22058))

(assert (=> bs!9493 m!79724))

(assert (=> bs!9493 m!80000))

(assert (=> bs!9493 m!80000))

(declare-fun m!80178 () Bool)

(assert (=> bs!9493 m!80178))

(declare-fun m!80180 () Bool)

(assert (=> bs!9493 m!80180))

(assert (=> b!96584 d!22058))

(declare-fun d!22060 () Bool)

(declare-fun lt!25106 () Bool)

(declare-fun isEmpty!644 (List!1568) Bool)

(assert (=> d!22060 (= lt!25106 (isEmpty!644 (list!595 (_1!1039 lt!25000))))))

(declare-fun isEmpty!645 (Conc!483) Bool)

(assert (=> d!22060 (= lt!25106 (isEmpty!645 (c!23666 (_1!1039 lt!25000))))))

(assert (=> d!22060 (= (isEmpty!642 (_1!1039 lt!25000)) lt!25106)))

(declare-fun bs!9494 () Bool)

(assert (= bs!9494 d!22060))

(assert (=> bs!9494 m!79822))

(assert (=> bs!9494 m!79822))

(declare-fun m!80182 () Bool)

(assert (=> bs!9494 m!80182))

(declare-fun m!80184 () Bool)

(assert (=> bs!9494 m!80184))

(assert (=> b!96455 d!22060))

(declare-fun d!22062 () Bool)

(declare-fun lt!25107 () Bool)

(assert (=> d!22062 (= lt!25107 (isEmpty!644 (list!595 (_1!1039 lt!25047))))))

(assert (=> d!22062 (= lt!25107 (isEmpty!645 (c!23666 (_1!1039 lt!25047))))))

(assert (=> d!22062 (= (isEmpty!642 (_1!1039 lt!25047)) lt!25107)))

(declare-fun bs!9495 () Bool)

(assert (= bs!9495 d!22062))

(assert (=> bs!9495 m!80014))

(assert (=> bs!9495 m!80014))

(declare-fun m!80186 () Bool)

(assert (=> bs!9495 m!80186))

(declare-fun m!80188 () Bool)

(assert (=> bs!9495 m!80188))

(assert (=> b!96583 d!22062))

(declare-fun d!22064 () Bool)

(declare-fun res!47236 () Bool)

(declare-fun e!53529 () Bool)

(assert (=> d!22064 (=> res!47236 e!53529)))

(assert (=> d!22064 (= res!47236 ((_ is Nil!1563) rules!2471))))

(assert (=> d!22064 (= (noDuplicateTag!85 thiss!19403 rules!2471 Nil!1565) e!53529)))

(declare-fun b!96682 () Bool)

(declare-fun e!53530 () Bool)

(assert (=> b!96682 (= e!53529 e!53530)))

(declare-fun res!47237 () Bool)

(assert (=> b!96682 (=> (not res!47237) (not e!53530))))

(declare-fun contains!247 (List!1571 String!2047) Bool)

(assert (=> b!96682 (= res!47237 (not (contains!247 Nil!1565 (tag!519 (h!6960 rules!2471)))))))

(declare-fun b!96683 () Bool)

(assert (=> b!96683 (= e!53530 (noDuplicateTag!85 thiss!19403 (t!21054 rules!2471) (Cons!1565 (tag!519 (h!6960 rules!2471)) Nil!1565)))))

(assert (= (and d!22064 (not res!47236)) b!96682))

(assert (= (and b!96682 res!47237) b!96683))

(declare-fun m!80190 () Bool)

(assert (=> b!96682 m!80190))

(declare-fun m!80192 () Bool)

(assert (=> b!96683 m!80192))

(assert (=> b!96442 d!22064))

(declare-fun d!22066 () Bool)

(assert (=> d!22066 (= (list!595 (_1!1039 lt!25000)) (list!598 (c!23666 (_1!1039 lt!25000))))))

(declare-fun bs!9496 () Bool)

(assert (= bs!9496 d!22066))

(declare-fun m!80194 () Bool)

(assert (=> bs!9496 m!80194))

(assert (=> b!96454 d!22066))

(declare-fun b!96694 () Bool)

(declare-fun e!53537 () tuple2!1670)

(assert (=> b!96694 (= e!53537 (tuple2!1671 Nil!1562 (list!594 (seqFromList!179 input!2238))))))

(declare-fun b!96695 () Bool)

(declare-fun e!53539 () Bool)

(declare-fun e!53538 () Bool)

(assert (=> b!96695 (= e!53539 e!53538)))

(declare-fun res!47240 () Bool)

(declare-fun lt!25116 () tuple2!1670)

(assert (=> b!96695 (= res!47240 (< (size!1365 (_2!1042 lt!25116)) (size!1365 (list!594 (seqFromList!179 input!2238)))))))

(assert (=> b!96695 (=> (not res!47240) (not e!53538))))

(declare-fun d!22068 () Bool)

(assert (=> d!22068 e!53539))

(declare-fun c!23718 () Bool)

(declare-fun size!1369 (List!1568) Int)

(assert (=> d!22068 (= c!23718 (> (size!1369 (_1!1042 lt!25116)) 0))))

(assert (=> d!22068 (= lt!25116 e!53537)))

(declare-fun c!23717 () Bool)

(declare-fun lt!25115 () Option!158)

(assert (=> d!22068 (= c!23717 ((_ is Some!157) lt!25115))))

(assert (=> d!22068 (= lt!25115 (maxPrefix!73 thiss!19403 rules!2471 (list!594 (seqFromList!179 input!2238))))))

(assert (=> d!22068 (= (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 input!2238))) lt!25116)))

(declare-fun b!96696 () Bool)

(declare-fun lt!25114 () tuple2!1670)

(assert (=> b!96696 (= e!53537 (tuple2!1671 (Cons!1562 (_1!1040 (v!12920 lt!25115)) (_1!1042 lt!25114)) (_2!1042 lt!25114)))))

(assert (=> b!96696 (= lt!25114 (lexList!63 thiss!19403 rules!2471 (_2!1040 (v!12920 lt!25115))))))

(declare-fun b!96697 () Bool)

(assert (=> b!96697 (= e!53539 (= (_2!1042 lt!25116) (list!594 (seqFromList!179 input!2238))))))

(declare-fun b!96698 () Bool)

(assert (=> b!96698 (= e!53538 (not (isEmpty!644 (_1!1042 lt!25116))))))

(assert (= (and d!22068 c!23717) b!96696))

(assert (= (and d!22068 (not c!23717)) b!96694))

(assert (= (and d!22068 c!23718) b!96695))

(assert (= (and d!22068 (not c!23718)) b!96697))

(assert (= (and b!96695 res!47240) b!96698))

(declare-fun m!80196 () Bool)

(assert (=> b!96695 m!80196))

(assert (=> b!96695 m!79808))

(declare-fun m!80198 () Bool)

(assert (=> b!96695 m!80198))

(declare-fun m!80200 () Bool)

(assert (=> d!22068 m!80200))

(assert (=> d!22068 m!79808))

(declare-fun m!80202 () Bool)

(assert (=> d!22068 m!80202))

(declare-fun m!80204 () Bool)

(assert (=> b!96696 m!80204))

(declare-fun m!80206 () Bool)

(assert (=> b!96698 m!80206))

(assert (=> b!96454 d!22068))

(declare-fun d!22070 () Bool)

(assert (=> d!22070 (= (list!594 (seqFromList!179 input!2238)) (list!599 (c!23664 (seqFromList!179 input!2238))))))

(declare-fun bs!9497 () Bool)

(assert (= bs!9497 d!22070))

(declare-fun m!80208 () Bool)

(assert (=> bs!9497 m!80208))

(assert (=> b!96454 d!22070))

(declare-fun d!22072 () Bool)

(assert (=> d!22072 (= (list!595 (_1!1039 lt!25047)) (list!598 (c!23666 (_1!1039 lt!25047))))))

(declare-fun bs!9498 () Bool)

(assert (= bs!9498 d!22072))

(declare-fun m!80210 () Bool)

(assert (=> bs!9498 m!80210))

(assert (=> b!96582 d!22072))

(declare-fun b!96699 () Bool)

(declare-fun e!53540 () tuple2!1670)

(assert (=> b!96699 (= e!53540 (tuple2!1671 Nil!1562 (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))

(declare-fun b!96700 () Bool)

(declare-fun e!53542 () Bool)

(declare-fun e!53541 () Bool)

(assert (=> b!96700 (= e!53542 e!53541)))

(declare-fun res!47241 () Bool)

(declare-fun lt!25119 () tuple2!1670)

(assert (=> b!96700 (= res!47241 (< (size!1365 (_2!1042 lt!25119)) (size!1365 (list!594 (seqFromList!179 (_2!1040 lt!24980))))))))

(assert (=> b!96700 (=> (not res!47241) (not e!53541))))

(declare-fun d!22074 () Bool)

(assert (=> d!22074 e!53542))

(declare-fun c!23720 () Bool)

(assert (=> d!22074 (= c!23720 (> (size!1369 (_1!1042 lt!25119)) 0))))

(assert (=> d!22074 (= lt!25119 e!53540)))

(declare-fun c!23719 () Bool)

(declare-fun lt!25118 () Option!158)

(assert (=> d!22074 (= c!23719 ((_ is Some!157) lt!25118))))

(assert (=> d!22074 (= lt!25118 (maxPrefix!73 thiss!19403 rules!2471 (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))

(assert (=> d!22074 (= (lexList!63 thiss!19403 rules!2471 (list!594 (seqFromList!179 (_2!1040 lt!24980)))) lt!25119)))

(declare-fun b!96701 () Bool)

(declare-fun lt!25117 () tuple2!1670)

(assert (=> b!96701 (= e!53540 (tuple2!1671 (Cons!1562 (_1!1040 (v!12920 lt!25118)) (_1!1042 lt!25117)) (_2!1042 lt!25117)))))

(assert (=> b!96701 (= lt!25117 (lexList!63 thiss!19403 rules!2471 (_2!1040 (v!12920 lt!25118))))))

(declare-fun b!96702 () Bool)

(assert (=> b!96702 (= e!53542 (= (_2!1042 lt!25119) (list!594 (seqFromList!179 (_2!1040 lt!24980)))))))

(declare-fun b!96703 () Bool)

(assert (=> b!96703 (= e!53541 (not (isEmpty!644 (_1!1042 lt!25119))))))

(assert (= (and d!22074 c!23719) b!96701))

(assert (= (and d!22074 (not c!23719)) b!96699))

(assert (= (and d!22074 c!23720) b!96700))

(assert (= (and d!22074 (not c!23720)) b!96702))

(assert (= (and b!96700 res!47241) b!96703))

(declare-fun m!80212 () Bool)

(assert (=> b!96700 m!80212))

(assert (=> b!96700 m!80000))

(assert (=> b!96700 m!80178))

(declare-fun m!80214 () Bool)

(assert (=> d!22074 m!80214))

(assert (=> d!22074 m!80000))

(declare-fun m!80216 () Bool)

(assert (=> d!22074 m!80216))

(declare-fun m!80218 () Bool)

(assert (=> b!96701 m!80218))

(declare-fun m!80220 () Bool)

(assert (=> b!96703 m!80220))

(assert (=> b!96582 d!22074))

(declare-fun d!22076 () Bool)

(assert (=> d!22076 (= (list!594 (seqFromList!179 (_2!1040 lt!24980))) (list!599 (c!23664 (seqFromList!179 (_2!1040 lt!24980)))))))

(declare-fun bs!9499 () Bool)

(assert (= bs!9499 d!22076))

(declare-fun m!80222 () Bool)

(assert (=> bs!9499 m!80222))

(assert (=> b!96582 d!22076))

(declare-fun d!22078 () Bool)

(assert (=> d!22078 true))

(declare-fun order!655 () Int)

(declare-fun lambda!1702 () Int)

(declare-fun order!653 () Int)

(declare-fun dynLambda!427 (Int Int) Int)

(declare-fun dynLambda!428 (Int Int) Int)

(assert (=> d!22078 (< (dynLambda!427 order!653 (toValue!884 (transformation!341 (h!6960 rules!2471)))) (dynLambda!428 order!655 lambda!1702))))

(declare-fun Forall2!44 (Int) Bool)

(assert (=> d!22078 (= (equivClasses!72 (toChars!743 (transformation!341 (h!6960 rules!2471))) (toValue!884 (transformation!341 (h!6960 rules!2471)))) (Forall2!44 lambda!1702))))

(declare-fun bs!9506 () Bool)

(assert (= bs!9506 d!22078))

(declare-fun m!80364 () Bool)

(assert (=> bs!9506 m!80364))

(assert (=> b!96592 d!22078))

(declare-fun d!22106 () Bool)

(declare-fun c!23738 () Bool)

(assert (=> d!22106 (= c!23738 ((_ is Nil!1560) lt!25048))))

(declare-fun e!53579 () (InoxSet C!1740))

(assert (=> d!22106 (= (content!112 lt!25048) e!53579)))

(declare-fun b!96763 () Bool)

(assert (=> b!96763 (= e!53579 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96764 () Bool)

(assert (=> b!96764 (= e!53579 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 lt!25048) true) (content!112 (t!21051 lt!25048))))))

(assert (= (and d!22106 c!23738) b!96763))

(assert (= (and d!22106 (not c!23738)) b!96764))

(declare-fun m!80366 () Bool)

(assert (=> b!96764 m!80366))

(declare-fun m!80368 () Bool)

(assert (=> b!96764 m!80368))

(assert (=> d!22016 d!22106))

(declare-fun d!22108 () Bool)

(declare-fun c!23739 () Bool)

(assert (=> d!22108 (= c!23739 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(declare-fun e!53580 () (InoxSet C!1740))

(assert (=> d!22108 (= (content!112 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) e!53580)))

(declare-fun b!96765 () Bool)

(assert (=> b!96765 (= e!53580 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96766 () Bool)

(assert (=> b!96766 (= e!53580 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) true) (content!112 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))))

(assert (= (and d!22108 c!23739) b!96765))

(assert (= (and d!22108 (not c!23739)) b!96766))

(declare-fun m!80370 () Bool)

(assert (=> b!96766 m!80370))

(declare-fun m!80372 () Bool)

(assert (=> b!96766 m!80372))

(assert (=> d!22016 d!22108))

(declare-fun d!22110 () Bool)

(declare-fun c!23740 () Bool)

(assert (=> d!22110 (= c!23740 ((_ is Nil!1560) (list!594 (_2!1039 lt!24981))))))

(declare-fun e!53581 () (InoxSet C!1740))

(assert (=> d!22110 (= (content!112 (list!594 (_2!1039 lt!24981))) e!53581)))

(declare-fun b!96767 () Bool)

(assert (=> b!96767 (= e!53581 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96768 () Bool)

(assert (=> b!96768 (= e!53581 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 (list!594 (_2!1039 lt!24981))) true) (content!112 (t!21051 (list!594 (_2!1039 lt!24981))))))))

(assert (= (and d!22110 c!23740) b!96767))

(assert (= (and d!22110 (not c!23740)) b!96768))

(declare-fun m!80374 () Bool)

(assert (=> b!96768 m!80374))

(declare-fun m!80376 () Bool)

(assert (=> b!96768 m!80376))

(assert (=> d!22016 d!22110))

(declare-fun d!22112 () Bool)

(declare-fun lt!25243 () Int)

(assert (=> d!22112 (= lt!25243 (size!1365 (list!594 (_2!1039 lt!25000))))))

(assert (=> d!22112 (= lt!25243 (size!1368 (c!23664 (_2!1039 lt!25000))))))

(assert (=> d!22112 (= (size!1363 (_2!1039 lt!25000)) lt!25243)))

(declare-fun bs!9507 () Bool)

(assert (= bs!9507 d!22112))

(assert (=> bs!9507 m!79806))

(assert (=> bs!9507 m!79806))

(declare-fun m!80378 () Bool)

(assert (=> bs!9507 m!80378))

(declare-fun m!80380 () Bool)

(assert (=> bs!9507 m!80380))

(assert (=> b!96456 d!22112))

(declare-fun d!22114 () Bool)

(declare-fun lt!25244 () Int)

(assert (=> d!22114 (= lt!25244 (size!1365 (list!594 (seqFromList!179 input!2238))))))

(assert (=> d!22114 (= lt!25244 (size!1368 (c!23664 (seqFromList!179 input!2238))))))

(assert (=> d!22114 (= (size!1363 (seqFromList!179 input!2238)) lt!25244)))

(declare-fun bs!9508 () Bool)

(assert (= bs!9508 d!22114))

(assert (=> bs!9508 m!79740))

(assert (=> bs!9508 m!79808))

(assert (=> bs!9508 m!79808))

(assert (=> bs!9508 m!80198))

(declare-fun m!80382 () Bool)

(assert (=> bs!9508 m!80382))

(assert (=> b!96456 d!22114))

(declare-fun d!22116 () Bool)

(assert (=> d!22116 (= (isEmpty!640 (list!594 (_2!1039 lt!24978))) ((_ is Nil!1560) (list!594 (_2!1039 lt!24978))))))

(assert (=> d!21968 d!22116))

(assert (=> d!21968 d!22012))

(declare-fun d!22118 () Bool)

(declare-fun lt!25247 () Bool)

(assert (=> d!22118 (= lt!25247 (isEmpty!640 (list!599 (c!23664 (_2!1039 lt!24978)))))))

(assert (=> d!22118 (= lt!25247 (= (size!1368 (c!23664 (_2!1039 lt!24978))) 0))))

(assert (=> d!22118 (= (isEmpty!641 (c!23664 (_2!1039 lt!24978))) lt!25247)))

(declare-fun bs!9509 () Bool)

(assert (= bs!9509 d!22118))

(assert (=> bs!9509 m!80020))

(assert (=> bs!9509 m!80020))

(declare-fun m!80384 () Bool)

(assert (=> bs!9509 m!80384))

(declare-fun m!80386 () Bool)

(assert (=> bs!9509 m!80386))

(assert (=> d!21968 d!22118))

(declare-fun d!22120 () Bool)

(assert (=> d!22120 (= (isEmpty!643 lt!25027) (not ((_ is Some!157) lt!25027)))))

(assert (=> d!21978 d!22120))

(declare-fun b!96777 () Bool)

(declare-fun e!53589 () Bool)

(declare-fun e!53588 () Bool)

(assert (=> b!96777 (= e!53589 e!53588)))

(declare-fun res!47275 () Bool)

(assert (=> b!96777 (=> (not res!47275) (not e!53588))))

(assert (=> b!96777 (= res!47275 (not ((_ is Nil!1560) input!2238)))))

(declare-fun d!22122 () Bool)

(declare-fun e!53590 () Bool)

(assert (=> d!22122 e!53590))

(declare-fun res!47274 () Bool)

(assert (=> d!22122 (=> res!47274 e!53590)))

(declare-fun lt!25250 () Bool)

(assert (=> d!22122 (= res!47274 (not lt!25250))))

(assert (=> d!22122 (= lt!25250 e!53589)))

(declare-fun res!47276 () Bool)

(assert (=> d!22122 (=> res!47276 e!53589)))

(assert (=> d!22122 (= res!47276 ((_ is Nil!1560) input!2238))))

(assert (=> d!22122 (= (isPrefix!37 input!2238 input!2238) lt!25250)))

(declare-fun b!96780 () Bool)

(assert (=> b!96780 (= e!53590 (>= (size!1365 input!2238) (size!1365 input!2238)))))

(declare-fun b!96778 () Bool)

(declare-fun res!47273 () Bool)

(assert (=> b!96778 (=> (not res!47273) (not e!53588))))

(declare-fun head!448 (List!1566) C!1740)

(assert (=> b!96778 (= res!47273 (= (head!448 input!2238) (head!448 input!2238)))))

(declare-fun b!96779 () Bool)

(declare-fun tail!160 (List!1566) List!1566)

(assert (=> b!96779 (= e!53588 (isPrefix!37 (tail!160 input!2238) (tail!160 input!2238)))))

(assert (= (and d!22122 (not res!47276)) b!96777))

(assert (= (and b!96777 res!47275) b!96778))

(assert (= (and b!96778 res!47273) b!96779))

(assert (= (and d!22122 (not res!47274)) b!96780))

(assert (=> b!96780 m!79892))

(assert (=> b!96780 m!79892))

(declare-fun m!80388 () Bool)

(assert (=> b!96778 m!80388))

(assert (=> b!96778 m!80388))

(declare-fun m!80390 () Bool)

(assert (=> b!96779 m!80390))

(assert (=> b!96779 m!80390))

(assert (=> b!96779 m!80390))

(assert (=> b!96779 m!80390))

(declare-fun m!80392 () Bool)

(assert (=> b!96779 m!80392))

(assert (=> d!21978 d!22122))

(declare-fun d!22124 () Bool)

(assert (=> d!22124 (isPrefix!37 input!2238 input!2238)))

(declare-fun lt!25253 () Unit!1014)

(declare-fun choose!1372 (List!1566 List!1566) Unit!1014)

(assert (=> d!22124 (= lt!25253 (choose!1372 input!2238 input!2238))))

(assert (=> d!22124 (= (lemmaIsPrefixRefl!37 input!2238 input!2238) lt!25253)))

(declare-fun bs!9510 () Bool)

(assert (= bs!9510 d!22124))

(assert (=> bs!9510 m!79882))

(declare-fun m!80394 () Bool)

(assert (=> bs!9510 m!80394))

(assert (=> d!21978 d!22124))

(declare-fun d!22126 () Bool)

(assert (=> d!22126 true))

(declare-fun lt!25256 () Bool)

(declare-fun lambda!1705 () Int)

(declare-fun forall!207 (List!1569 Int) Bool)

(assert (=> d!22126 (= lt!25256 (forall!207 rules!2471 lambda!1705))))

(declare-fun e!53596 () Bool)

(assert (=> d!22126 (= lt!25256 e!53596)))

(declare-fun res!47282 () Bool)

(assert (=> d!22126 (=> res!47282 e!53596)))

(assert (=> d!22126 (= res!47282 (not ((_ is Cons!1563) rules!2471)))))

(assert (=> d!22126 (= (rulesValidInductive!63 thiss!19403 rules!2471) lt!25256)))

(declare-fun b!96785 () Bool)

(declare-fun e!53595 () Bool)

(assert (=> b!96785 (= e!53596 e!53595)))

(declare-fun res!47281 () Bool)

(assert (=> b!96785 (=> (not res!47281) (not e!53595))))

(declare-fun ruleValid!38 (LexerInterface!233 Rule!482) Bool)

(assert (=> b!96785 (= res!47281 (ruleValid!38 thiss!19403 (h!6960 rules!2471)))))

(declare-fun b!96786 () Bool)

(assert (=> b!96786 (= e!53595 (rulesValidInductive!63 thiss!19403 (t!21054 rules!2471)))))

(assert (= (and d!22126 (not res!47282)) b!96785))

(assert (= (and b!96785 res!47281) b!96786))

(declare-fun m!80396 () Bool)

(assert (=> d!22126 m!80396))

(declare-fun m!80398 () Bool)

(assert (=> b!96785 m!80398))

(declare-fun m!80400 () Bool)

(assert (=> b!96786 m!80400))

(assert (=> d!21978 d!22126))

(declare-fun b!96789 () Bool)

(declare-fun e!53597 () List!1566)

(assert (=> b!96789 (= e!53597 Nil!1560)))

(declare-fun b!96792 () Bool)

(declare-fun e!53598 () List!1566)

(assert (=> b!96792 (= e!53598 (++!212 (list!599 (left!1185 (c!23664 (_2!1039 lt!24981)))) (list!599 (right!1515 (c!23664 (_2!1039 lt!24981))))))))

(declare-fun d!22128 () Bool)

(declare-fun c!23741 () Bool)

(assert (=> d!22128 (= c!23741 ((_ is Empty!482) (c!23664 (_2!1039 lt!24981))))))

(assert (=> d!22128 (= (list!599 (c!23664 (_2!1039 lt!24981))) e!53597)))

(declare-fun b!96791 () Bool)

(assert (=> b!96791 (= e!53598 (list!600 (xs!3069 (c!23664 (_2!1039 lt!24981)))))))

(declare-fun b!96790 () Bool)

(assert (=> b!96790 (= e!53597 e!53598)))

(declare-fun c!23742 () Bool)

(assert (=> b!96790 (= c!23742 ((_ is Leaf!788) (c!23664 (_2!1039 lt!24981))))))

(assert (= (and d!22128 c!23741) b!96789))

(assert (= (and d!22128 (not c!23741)) b!96790))

(assert (= (and b!96790 c!23742) b!96791))

(assert (= (and b!96790 (not c!23742)) b!96792))

(declare-fun m!80402 () Bool)

(assert (=> b!96792 m!80402))

(declare-fun m!80404 () Bool)

(assert (=> b!96792 m!80404))

(assert (=> b!96792 m!80402))

(assert (=> b!96792 m!80404))

(declare-fun m!80406 () Bool)

(assert (=> b!96792 m!80406))

(declare-fun m!80408 () Bool)

(assert (=> b!96791 m!80408))

(assert (=> d!22010 d!22128))

(declare-fun bs!9511 () Bool)

(declare-fun d!22130 () Bool)

(assert (= bs!9511 (and d!22130 d!22126)))

(declare-fun lambda!1708 () Int)

(assert (=> bs!9511 (= lambda!1708 lambda!1705)))

(assert (=> d!22130 true))

(declare-fun lt!25259 () Bool)

(assert (=> d!22130 (= lt!25259 (rulesValidInductive!63 thiss!19403 rules!2471))))

(assert (=> d!22130 (= lt!25259 (forall!207 rules!2471 lambda!1708))))

(assert (=> d!22130 (= (rulesValid!85 thiss!19403 rules!2471) lt!25259)))

(declare-fun bs!9512 () Bool)

(assert (= bs!9512 d!22130))

(assert (=> bs!9512 m!79886))

(declare-fun m!80410 () Bool)

(assert (=> bs!9512 m!80410))

(assert (=> d!21966 d!22130))

(declare-fun d!22132 () Bool)

(declare-fun e!53599 () Bool)

(assert (=> d!22132 e!53599))

(declare-fun res!47283 () Bool)

(assert (=> d!22132 (=> (not res!47283) (not e!53599))))

(declare-fun lt!25260 () BalanceConc!968)

(assert (=> d!22132 (= res!47283 (= (list!594 lt!25260) (_2!1040 lt!24980)))))

(assert (=> d!22132 (= lt!25260 (BalanceConc!969 (fromList!46 (_2!1040 lt!24980))))))

(assert (=> d!22132 (= (fromListB!75 (_2!1040 lt!24980)) lt!25260)))

(declare-fun b!96793 () Bool)

(assert (=> b!96793 (= e!53599 (isBalanced!113 (fromList!46 (_2!1040 lt!24980))))))

(assert (= (and d!22132 res!47283) b!96793))

(declare-fun m!80412 () Bool)

(assert (=> d!22132 m!80412))

(declare-fun m!80414 () Bool)

(assert (=> d!22132 m!80414))

(assert (=> b!96793 m!80414))

(assert (=> b!96793 m!80414))

(declare-fun m!80416 () Bool)

(assert (=> b!96793 m!80416))

(assert (=> d!22018 d!22132))

(declare-fun d!22134 () Bool)

(declare-fun lt!25263 () Int)

(assert (=> d!22134 (>= lt!25263 0)))

(declare-fun e!53602 () Int)

(assert (=> d!22134 (= lt!25263 e!53602)))

(declare-fun c!23745 () Bool)

(assert (=> d!22134 (= c!23745 ((_ is Nil!1560) lt!25048))))

(assert (=> d!22134 (= (size!1365 lt!25048) lt!25263)))

(declare-fun b!96798 () Bool)

(assert (=> b!96798 (= e!53602 0)))

(declare-fun b!96799 () Bool)

(assert (=> b!96799 (= e!53602 (+ 1 (size!1365 (t!21051 lt!25048))))))

(assert (= (and d!22134 c!23745) b!96798))

(assert (= (and d!22134 (not c!23745)) b!96799))

(declare-fun m!80418 () Bool)

(assert (=> b!96799 m!80418))

(assert (=> b!96588 d!22134))

(declare-fun d!22136 () Bool)

(declare-fun lt!25264 () Int)

(assert (=> d!22136 (>= lt!25264 0)))

(declare-fun e!53603 () Int)

(assert (=> d!22136 (= lt!25264 e!53603)))

(declare-fun c!23746 () Bool)

(assert (=> d!22136 (= c!23746 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(assert (=> d!22136 (= (size!1365 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) lt!25264)))

(declare-fun b!96800 () Bool)

(assert (=> b!96800 (= e!53603 0)))

(declare-fun b!96801 () Bool)

(assert (=> b!96801 (= e!53603 (+ 1 (size!1365 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))))

(assert (= (and d!22136 c!23746) b!96800))

(assert (= (and d!22136 (not c!23746)) b!96801))

(declare-fun m!80420 () Bool)

(assert (=> b!96801 m!80420))

(assert (=> b!96588 d!22136))

(declare-fun d!22138 () Bool)

(declare-fun lt!25265 () Int)

(assert (=> d!22138 (>= lt!25265 0)))

(declare-fun e!53604 () Int)

(assert (=> d!22138 (= lt!25265 e!53604)))

(declare-fun c!23747 () Bool)

(assert (=> d!22138 (= c!23747 ((_ is Nil!1560) (list!594 (_2!1039 lt!24981))))))

(assert (=> d!22138 (= (size!1365 (list!594 (_2!1039 lt!24981))) lt!25265)))

(declare-fun b!96802 () Bool)

(assert (=> b!96802 (= e!53604 0)))

(declare-fun b!96803 () Bool)

(assert (=> b!96803 (= e!53604 (+ 1 (size!1365 (t!21051 (list!594 (_2!1039 lt!24981))))))))

(assert (= (and d!22138 c!23747) b!96802))

(assert (= (and d!22138 (not c!23747)) b!96803))

(declare-fun m!80422 () Bool)

(assert (=> b!96803 m!80422))

(assert (=> b!96588 d!22138))

(declare-fun d!22140 () Bool)

(assert (=> d!22140 (= (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))) (list!599 (c!23664 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))

(declare-fun bs!9513 () Bool)

(assert (= bs!9513 d!22140))

(declare-fun m!80424 () Bool)

(assert (=> bs!9513 m!80424))

(assert (=> b!96514 d!22140))

(declare-fun d!22142 () Bool)

(declare-fun lt!25268 () BalanceConc!968)

(assert (=> d!22142 (= (list!594 lt!25268) (originalCharacters!390 (_1!1040 (get!398 lt!25027))))))

(declare-fun dynLambda!429 (Int TokenValue!331) BalanceConc!968)

(assert (=> d!22142 (= lt!25268 (dynLambda!429 (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027))))) (value!12612 (_1!1040 (get!398 lt!25027)))))))

(assert (=> d!22142 (= (charsOf!74 (_1!1040 (get!398 lt!25027))) lt!25268)))

(declare-fun b_lambda!1113 () Bool)

(assert (=> (not b_lambda!1113) (not d!22142)))

(declare-fun t!21060 () Bool)

(declare-fun tb!2963 () Bool)

(assert (=> (and b!96424 (= (toChars!743 (transformation!341 (h!6960 rules!2471))) (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21060) tb!2963))

(declare-fun b!96808 () Bool)

(declare-fun e!53607 () Bool)

(declare-fun tp!56013 () Bool)

(declare-fun inv!1913 (Conc!482) Bool)

(assert (=> b!96808 (= e!53607 (and (inv!1913 (c!23664 (dynLambda!429 (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027))))) (value!12612 (_1!1040 (get!398 lt!25027)))))) tp!56013))))

(declare-fun result!4260 () Bool)

(declare-fun inv!1914 (BalanceConc!968) Bool)

(assert (=> tb!2963 (= result!4260 (and (inv!1914 (dynLambda!429 (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027))))) (value!12612 (_1!1040 (get!398 lt!25027))))) e!53607))))

(assert (= tb!2963 b!96808))

(declare-fun m!80426 () Bool)

(assert (=> b!96808 m!80426))

(declare-fun m!80428 () Bool)

(assert (=> tb!2963 m!80428))

(assert (=> d!22142 t!21060))

(declare-fun b_and!4327 () Bool)

(assert (= b_and!4317 (and (=> t!21060 result!4260) b_and!4327)))

(declare-fun tb!2965 () Bool)

(declare-fun t!21062 () Bool)

(assert (=> (and b!96603 (= (toChars!743 (transformation!341 (h!6960 (t!21054 rules!2471)))) (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21062) tb!2965))

(declare-fun result!4264 () Bool)

(assert (= result!4264 result!4260))

(assert (=> d!22142 t!21062))

(declare-fun b_and!4329 () Bool)

(assert (= b_and!4325 (and (=> t!21062 result!4264) b_and!4329)))

(declare-fun m!80430 () Bool)

(assert (=> d!22142 m!80430))

(declare-fun m!80432 () Bool)

(assert (=> d!22142 m!80432))

(assert (=> b!96514 d!22142))

(declare-fun d!22144 () Bool)

(assert (=> d!22144 (= (get!398 lt!25027) (v!12920 lt!25027))))

(assert (=> b!96514 d!22144))

(declare-fun d!22146 () Bool)

(declare-fun lt!25271 () Bool)

(declare-fun content!113 (List!1569) (InoxSet Rule!482))

(assert (=> d!22146 (= lt!25271 (select (content!113 rules!2471) (rule!840 (_1!1040 (get!398 lt!25027)))))))

(declare-fun e!53612 () Bool)

(assert (=> d!22146 (= lt!25271 e!53612)))

(declare-fun res!47288 () Bool)

(assert (=> d!22146 (=> (not res!47288) (not e!53612))))

(assert (=> d!22146 (= res!47288 ((_ is Cons!1563) rules!2471))))

(assert (=> d!22146 (= (contains!246 rules!2471 (rule!840 (_1!1040 (get!398 lt!25027)))) lt!25271)))

(declare-fun b!96813 () Bool)

(declare-fun e!53613 () Bool)

(assert (=> b!96813 (= e!53612 e!53613)))

(declare-fun res!47289 () Bool)

(assert (=> b!96813 (=> res!47289 e!53613)))

(assert (=> b!96813 (= res!47289 (= (h!6960 rules!2471) (rule!840 (_1!1040 (get!398 lt!25027)))))))

(declare-fun b!96814 () Bool)

(assert (=> b!96814 (= e!53613 (contains!246 (t!21054 rules!2471) (rule!840 (_1!1040 (get!398 lt!25027)))))))

(assert (= (and d!22146 res!47288) b!96813))

(assert (= (and b!96813 (not res!47289)) b!96814))

(declare-fun m!80434 () Bool)

(assert (=> d!22146 m!80434))

(declare-fun m!80436 () Bool)

(assert (=> d!22146 m!80436))

(declare-fun m!80438 () Bool)

(assert (=> b!96814 m!80438))

(assert (=> b!96513 d!22146))

(assert (=> b!96513 d!22144))

(declare-fun b!96816 () Bool)

(declare-fun e!53614 () List!1566)

(assert (=> b!96816 (= e!53614 (Cons!1560 (h!6957 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))) (++!212 (t!21051 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))) (list!594 (_2!1039 lt!24981)))))))

(declare-fun e!53615 () Bool)

(declare-fun b!96818 () Bool)

(declare-fun lt!25272 () List!1566)

(assert (=> b!96818 (= e!53615 (or (not (= (list!594 (_2!1039 lt!24981)) Nil!1560)) (= lt!25272 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))))))))

(declare-fun b!96815 () Bool)

(assert (=> b!96815 (= e!53614 (list!594 (_2!1039 lt!24981)))))

(declare-fun b!96817 () Bool)

(declare-fun res!47291 () Bool)

(assert (=> b!96817 (=> (not res!47291) (not e!53615))))

(assert (=> b!96817 (= res!47291 (= (size!1365 lt!25272) (+ (size!1365 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))) (size!1365 (list!594 (_2!1039 lt!24981))))))))

(declare-fun d!22148 () Bool)

(assert (=> d!22148 e!53615))

(declare-fun res!47290 () Bool)

(assert (=> d!22148 (=> (not res!47290) (not e!53615))))

(assert (=> d!22148 (= res!47290 (= (content!112 lt!25272) ((_ map or) (content!112 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))) (content!112 (list!594 (_2!1039 lt!24981))))))))

(assert (=> d!22148 (= lt!25272 e!53614)))

(declare-fun c!23748 () Bool)

(assert (=> d!22148 (= c!23748 ((_ is Nil!1560) (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981))))))))

(assert (=> d!22148 (= (++!212 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24981)))) (list!594 (_2!1039 lt!24981))) lt!25272)))

(assert (= (and d!22148 c!23748) b!96815))

(assert (= (and d!22148 (not c!23748)) b!96816))

(assert (= (and d!22148 res!47290) b!96817))

(assert (= (and b!96817 res!47291) b!96818))

(assert (=> b!96816 m!79718))

(declare-fun m!80440 () Bool)

(assert (=> b!96816 m!80440))

(declare-fun m!80442 () Bool)

(assert (=> b!96817 m!80442))

(assert (=> b!96817 m!80420))

(assert (=> b!96817 m!79718))

(assert (=> b!96817 m!80030))

(declare-fun m!80444 () Bool)

(assert (=> d!22148 m!80444))

(assert (=> d!22148 m!80372))

(assert (=> d!22148 m!79718))

(assert (=> d!22148 m!80036))

(assert (=> b!96587 d!22148))

(declare-fun d!22150 () Bool)

(declare-fun lt!25275 () Int)

(assert (=> d!22150 (= lt!25275 (size!1369 (list!595 (_1!1039 lt!25047))))))

(declare-fun size!1370 (Conc!483) Int)

(assert (=> d!22150 (= lt!25275 (size!1370 (c!23666 (_1!1039 lt!25047))))))

(assert (=> d!22150 (= (size!1364 (_1!1039 lt!25047)) lt!25275)))

(declare-fun bs!9514 () Bool)

(assert (= bs!9514 d!22150))

(assert (=> bs!9514 m!80014))

(assert (=> bs!9514 m!80014))

(declare-fun m!80446 () Bool)

(assert (=> bs!9514 m!80446))

(declare-fun m!80448 () Bool)

(assert (=> bs!9514 m!80448))

(assert (=> d!22006 d!22150))

(declare-fun b!96864 () Bool)

(declare-fun e!53639 () tuple2!1664)

(declare-fun lt!25369 () BalanceConc!968)

(assert (=> b!96864 (= e!53639 (tuple2!1665 (BalanceConc!971 Empty!483) lt!25369))))

(declare-fun b!96865 () Bool)

(declare-fun e!53640 () tuple2!1664)

(assert (=> b!96865 (= e!53640 (tuple2!1665 (BalanceConc!971 Empty!483) (seqFromList!179 (_2!1040 lt!24980))))))

(declare-fun lt!25381 () tuple2!1664)

(declare-datatypes ((tuple2!1674 0))(
  ( (tuple2!1675 (_1!1044 Token!438) (_2!1044 BalanceConc!968)) )
))
(declare-datatypes ((Option!160 0))(
  ( (None!159) (Some!159 (v!12928 tuple2!1674)) )
))
(declare-fun lt!25361 () Option!160)

(declare-fun b!96866 () Bool)

(declare-fun lexRec!40 (LexerInterface!233 List!1569 BalanceConc!968) tuple2!1664)

(assert (=> b!96866 (= lt!25381 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25361))))))

(declare-fun e!53641 () tuple2!1664)

(declare-fun prepend!109 (BalanceConc!970 Token!438) BalanceConc!970)

(assert (=> b!96866 (= e!53641 (tuple2!1665 (prepend!109 (_1!1039 lt!25381) (_1!1044 (v!12928 lt!25361))) (_2!1039 lt!25381)))))

(declare-fun lt!25383 () Option!160)

(declare-fun b!96867 () Bool)

(declare-fun lt!25375 () tuple2!1664)

(assert (=> b!96867 (= lt!25375 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25383))))))

(assert (=> b!96867 (= e!53639 (tuple2!1665 (prepend!109 (_1!1039 lt!25375) (_1!1044 (v!12928 lt!25383))) (_2!1039 lt!25375)))))

(declare-fun b!96868 () Bool)

(assert (=> b!96868 (= e!53641 (tuple2!1665 (BalanceConc!971 Empty!483) (seqFromList!179 (_2!1040 lt!24980))))))

(declare-fun d!22152 () Bool)

(declare-fun e!53638 () Bool)

(assert (=> d!22152 e!53638))

(declare-fun res!47303 () Bool)

(assert (=> d!22152 (=> (not res!47303) (not e!53638))))

(declare-fun lt!25372 () tuple2!1664)

(assert (=> d!22152 (= res!47303 (= (list!595 (_1!1039 lt!25372)) (list!595 (_1!1039 (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)))))))))

(assert (=> d!22152 (= lt!25372 e!53640)))

(declare-fun c!23767 () Bool)

(declare-fun lt!25382 () Option!160)

(assert (=> d!22152 (= c!23767 ((_ is Some!159) lt!25382))))

(declare-fun maxPrefixZipperSequenceV2!35 (LexerInterface!233 List!1569 BalanceConc!968 BalanceConc!968) Option!160)

(assert (=> d!22152 (= lt!25382 (maxPrefixZipperSequenceV2!35 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)) (seqFromList!179 (_2!1040 lt!24980))))))

(declare-fun lt!25366 () Unit!1014)

(declare-fun lt!25379 () Unit!1014)

(assert (=> d!22152 (= lt!25366 lt!25379)))

(declare-fun lt!25353 () List!1566)

(declare-fun lt!25365 () List!1566)

(declare-fun isSuffix!35 (List!1566 List!1566) Bool)

(assert (=> d!22152 (isSuffix!35 lt!25353 (++!212 lt!25365 lt!25353))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!35 (List!1566 List!1566) Unit!1014)

(assert (=> d!22152 (= lt!25379 (lemmaConcatTwoListThenFSndIsSuffix!35 lt!25365 lt!25353))))

(assert (=> d!22152 (= lt!25353 (list!594 (seqFromList!179 (_2!1040 lt!24980))))))

(assert (=> d!22152 (= lt!25365 (list!594 (BalanceConc!969 Empty!482)))))

(assert (=> d!22152 (= (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)) (BalanceConc!969 Empty!482) (seqFromList!179 (_2!1040 lt!24980)) (BalanceConc!971 Empty!483)) lt!25372)))

(declare-fun lt!25364 () BalanceConc!968)

(declare-fun b!96869 () Bool)

(declare-fun append!49 (BalanceConc!970 Token!438) BalanceConc!970)

(assert (=> b!96869 (= e!53640 (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)) lt!25364 (_2!1044 (v!12928 lt!25382)) (append!49 (BalanceConc!971 Empty!483) (_1!1044 (v!12928 lt!25382)))))))

(declare-fun lt!25360 () tuple2!1664)

(assert (=> b!96869 (= lt!25360 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25382))))))

(declare-fun lt!25357 () List!1566)

(assert (=> b!96869 (= lt!25357 (list!594 (BalanceConc!969 Empty!482)))))

(declare-fun lt!25359 () List!1566)

(assert (=> b!96869 (= lt!25359 (list!594 (charsOf!74 (_1!1044 (v!12928 lt!25382)))))))

(declare-fun lt!25374 () List!1566)

(assert (=> b!96869 (= lt!25374 (list!594 (_2!1044 (v!12928 lt!25382))))))

(declare-fun lt!25367 () Unit!1014)

(declare-fun lemmaConcatAssociativity!80 (List!1566 List!1566 List!1566) Unit!1014)

(assert (=> b!96869 (= lt!25367 (lemmaConcatAssociativity!80 lt!25357 lt!25359 lt!25374))))

(assert (=> b!96869 (= (++!212 (++!212 lt!25357 lt!25359) lt!25374) (++!212 lt!25357 (++!212 lt!25359 lt!25374)))))

(declare-fun lt!25355 () Unit!1014)

(assert (=> b!96869 (= lt!25355 lt!25367)))

(declare-fun maxPrefixZipperSequence!38 (LexerInterface!233 List!1569 BalanceConc!968) Option!160)

(assert (=> b!96869 (= lt!25361 (maxPrefixZipperSequence!38 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))))))

(declare-fun c!23765 () Bool)

(assert (=> b!96869 (= c!23765 ((_ is Some!159) lt!25361))))

(assert (=> b!96869 (= (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))) e!53641)))

(declare-fun lt!25378 () Unit!1014)

(declare-fun Unit!1018 () Unit!1014)

(assert (=> b!96869 (= lt!25378 Unit!1018)))

(declare-fun lt!25377 () List!1568)

(assert (=> b!96869 (= lt!25377 (list!595 (BalanceConc!971 Empty!483)))))

(declare-fun lt!25354 () List!1568)

(assert (=> b!96869 (= lt!25354 (Cons!1562 (_1!1044 (v!12928 lt!25382)) Nil!1562))))

(declare-fun lt!25371 () List!1568)

(assert (=> b!96869 (= lt!25371 (list!595 (_1!1039 lt!25360)))))

(declare-fun lt!25376 () Unit!1014)

(declare-fun lemmaConcatAssociativity!81 (List!1568 List!1568 List!1568) Unit!1014)

(assert (=> b!96869 (= lt!25376 (lemmaConcatAssociativity!81 lt!25377 lt!25354 lt!25371))))

(declare-fun ++!216 (List!1568 List!1568) List!1568)

(assert (=> b!96869 (= (++!216 (++!216 lt!25377 lt!25354) lt!25371) (++!216 lt!25377 (++!216 lt!25354 lt!25371)))))

(declare-fun lt!25362 () Unit!1014)

(assert (=> b!96869 (= lt!25362 lt!25376)))

(declare-fun lt!25356 () List!1566)

(assert (=> b!96869 (= lt!25356 (++!212 (list!594 (BalanceConc!969 Empty!482)) (list!594 (charsOf!74 (_1!1044 (v!12928 lt!25382))))))))

(declare-fun lt!25368 () List!1566)

(assert (=> b!96869 (= lt!25368 (list!594 (_2!1044 (v!12928 lt!25382))))))

(declare-fun lt!25352 () List!1568)

(assert (=> b!96869 (= lt!25352 (list!595 (append!49 (BalanceConc!971 Empty!483) (_1!1044 (v!12928 lt!25382)))))))

(declare-fun lt!25350 () Unit!1014)

(declare-fun lemmaLexThenLexPrefix!35 (LexerInterface!233 List!1569 List!1566 List!1566 List!1568 List!1568 List!1566) Unit!1014)

(assert (=> b!96869 (= lt!25350 (lemmaLexThenLexPrefix!35 thiss!19403 rules!2471 lt!25356 lt!25368 lt!25352 (list!595 (_1!1039 lt!25360)) (list!594 (_2!1039 lt!25360))))))

(assert (=> b!96869 (= (lexList!63 thiss!19403 rules!2471 lt!25356) (tuple2!1671 lt!25352 Nil!1560))))

(declare-fun lt!25373 () Unit!1014)

(assert (=> b!96869 (= lt!25373 lt!25350)))

(assert (=> b!96869 (= lt!25369 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25382)))))))

(assert (=> b!96869 (= lt!25383 (maxPrefixZipperSequence!38 thiss!19403 rules!2471 lt!25369))))

(declare-fun c!23766 () Bool)

(assert (=> b!96869 (= c!23766 ((_ is Some!159) lt!25383))))

(assert (=> b!96869 (= (lexRec!40 thiss!19403 rules!2471 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25382))))) e!53639)))

(declare-fun lt!25363 () Unit!1014)

(declare-fun Unit!1019 () Unit!1014)

(assert (=> b!96869 (= lt!25363 Unit!1019)))

(assert (=> b!96869 (= lt!25364 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25382)))))))

(declare-fun lt!25380 () List!1566)

(assert (=> b!96869 (= lt!25380 (list!594 lt!25364))))

(declare-fun lt!25358 () List!1566)

(assert (=> b!96869 (= lt!25358 (list!594 (_2!1044 (v!12928 lt!25382))))))

(declare-fun lt!25370 () Unit!1014)

(assert (=> b!96869 (= lt!25370 (lemmaConcatTwoListThenFSndIsSuffix!35 lt!25380 lt!25358))))

(assert (=> b!96869 (isSuffix!35 lt!25358 (++!212 lt!25380 lt!25358))))

(declare-fun lt!25351 () Unit!1014)

(assert (=> b!96869 (= lt!25351 lt!25370)))

(declare-fun b!96870 () Bool)

(assert (=> b!96870 (= e!53638 (= (list!594 (_2!1039 lt!25372)) (list!594 (_2!1039 (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980)))))))))

(assert (= (and d!22152 c!23767) b!96869))

(assert (= (and d!22152 (not c!23767)) b!96865))

(assert (= (and b!96869 c!23765) b!96866))

(assert (= (and b!96869 (not c!23765)) b!96868))

(assert (= (and b!96869 c!23766) b!96867))

(assert (= (and b!96869 (not c!23766)) b!96864))

(assert (= (and d!22152 res!47303) b!96870))

(declare-fun m!80502 () Bool)

(assert (=> b!96869 m!80502))

(declare-fun m!80504 () Bool)

(assert (=> b!96869 m!80504))

(declare-fun m!80506 () Bool)

(assert (=> b!96869 m!80506))

(declare-fun m!80508 () Bool)

(assert (=> b!96869 m!80508))

(declare-fun m!80510 () Bool)

(assert (=> b!96869 m!80510))

(declare-fun m!80512 () Bool)

(assert (=> b!96869 m!80512))

(declare-fun m!80514 () Bool)

(assert (=> b!96869 m!80514))

(declare-fun m!80516 () Bool)

(assert (=> b!96869 m!80516))

(declare-fun m!80518 () Bool)

(assert (=> b!96869 m!80518))

(declare-fun m!80520 () Bool)

(assert (=> b!96869 m!80520))

(declare-fun m!80522 () Bool)

(assert (=> b!96869 m!80522))

(declare-fun m!80524 () Bool)

(assert (=> b!96869 m!80524))

(assert (=> b!96869 m!80518))

(declare-fun m!80526 () Bool)

(assert (=> b!96869 m!80526))

(declare-fun m!80528 () Bool)

(assert (=> b!96869 m!80528))

(assert (=> b!96869 m!80502))

(declare-fun m!80530 () Bool)

(assert (=> b!96869 m!80530))

(assert (=> b!96869 m!80518))

(declare-fun m!80532 () Bool)

(assert (=> b!96869 m!80532))

(declare-fun m!80534 () Bool)

(assert (=> b!96869 m!80534))

(assert (=> b!96869 m!79724))

(declare-fun m!80536 () Bool)

(assert (=> b!96869 m!80536))

(assert (=> b!96869 m!79724))

(declare-fun m!80538 () Bool)

(assert (=> b!96869 m!80538))

(declare-fun m!80540 () Bool)

(assert (=> b!96869 m!80540))

(declare-fun m!80542 () Bool)

(assert (=> b!96869 m!80542))

(declare-fun m!80544 () Bool)

(assert (=> b!96869 m!80544))

(assert (=> b!96869 m!80538))

(declare-fun m!80546 () Bool)

(assert (=> b!96869 m!80546))

(declare-fun m!80548 () Bool)

(assert (=> b!96869 m!80548))

(assert (=> b!96869 m!80526))

(declare-fun m!80550 () Bool)

(assert (=> b!96869 m!80550))

(assert (=> b!96869 m!80528))

(assert (=> b!96869 m!80548))

(declare-fun m!80552 () Bool)

(assert (=> b!96869 m!80552))

(assert (=> b!96869 m!80542))

(assert (=> b!96869 m!80538))

(assert (=> b!96869 m!80144))

(assert (=> b!96869 m!80520))

(declare-fun m!80558 () Bool)

(assert (=> b!96869 m!80558))

(declare-fun m!80562 () Bool)

(assert (=> b!96869 m!80562))

(declare-fun m!80564 () Bool)

(assert (=> b!96869 m!80564))

(declare-fun m!80566 () Bool)

(assert (=> b!96869 m!80566))

(assert (=> b!96869 m!79724))

(declare-fun m!80568 () Bool)

(assert (=> b!96869 m!80568))

(assert (=> b!96869 m!80510))

(assert (=> b!96869 m!80506))

(declare-fun m!80570 () Bool)

(assert (=> b!96869 m!80570))

(assert (=> b!96869 m!80144))

(assert (=> b!96869 m!80522))

(declare-fun m!80572 () Bool)

(assert (=> b!96870 m!80572))

(assert (=> b!96870 m!79724))

(assert (=> b!96870 m!80536))

(declare-fun m!80574 () Bool)

(assert (=> b!96870 m!80574))

(declare-fun m!80576 () Bool)

(assert (=> b!96866 m!80576))

(declare-fun m!80578 () Bool)

(assert (=> b!96866 m!80578))

(assert (=> d!22152 m!79724))

(assert (=> d!22152 m!80536))

(declare-fun m!80580 () Bool)

(assert (=> d!22152 m!80580))

(declare-fun m!80582 () Bool)

(assert (=> d!22152 m!80582))

(assert (=> d!22152 m!79724))

(assert (=> d!22152 m!80000))

(declare-fun m!80584 () Bool)

(assert (=> d!22152 m!80584))

(declare-fun m!80586 () Bool)

(assert (=> d!22152 m!80586))

(assert (=> d!22152 m!80584))

(assert (=> d!22152 m!80144))

(declare-fun m!80588 () Bool)

(assert (=> d!22152 m!80588))

(assert (=> d!22152 m!79724))

(assert (=> d!22152 m!79724))

(declare-fun m!80590 () Bool)

(assert (=> d!22152 m!80590))

(declare-fun m!80592 () Bool)

(assert (=> b!96867 m!80592))

(declare-fun m!80594 () Bool)

(assert (=> b!96867 m!80594))

(assert (=> d!22006 d!22152))

(declare-fun d!22170 () Bool)

(assert (=> d!22170 (= (inv!1910 (tag!519 (h!6960 (t!21054 rules!2471)))) (= (mod (str.len (value!12611 (tag!519 (h!6960 (t!21054 rules!2471))))) 2) 0))))

(assert (=> b!96602 d!22170))

(declare-fun d!22172 () Bool)

(declare-fun res!47307 () Bool)

(declare-fun e!53645 () Bool)

(assert (=> d!22172 (=> (not res!47307) (not e!53645))))

(assert (=> d!22172 (= res!47307 (semiInverseModEq!77 (toChars!743 (transformation!341 (h!6960 (t!21054 rules!2471)))) (toValue!884 (transformation!341 (h!6960 (t!21054 rules!2471))))))))

(assert (=> d!22172 (= (inv!1912 (transformation!341 (h!6960 (t!21054 rules!2471)))) e!53645)))

(declare-fun b!96874 () Bool)

(assert (=> b!96874 (= e!53645 (equivClasses!72 (toChars!743 (transformation!341 (h!6960 (t!21054 rules!2471)))) (toValue!884 (transformation!341 (h!6960 (t!21054 rules!2471))))))))

(assert (= (and d!22172 res!47307) b!96874))

(declare-fun m!80596 () Bool)

(assert (=> d!22172 m!80596))

(declare-fun m!80598 () Bool)

(assert (=> b!96874 m!80598))

(assert (=> b!96602 d!22172))

(declare-fun b!96942 () Bool)

(declare-fun e!53684 () Option!158)

(assert (=> b!96942 (= e!53684 None!157)))

(declare-fun b!96943 () Bool)

(declare-fun e!53685 () Bool)

(declare-fun e!53686 () Bool)

(assert (=> b!96943 (= e!53685 e!53686)))

(declare-fun res!47337 () Bool)

(assert (=> b!96943 (=> (not res!47337) (not e!53686))))

(declare-fun lt!25427 () Option!158)

(assert (=> b!96943 (= res!47337 (matchR!39 (regex!341 (h!6960 rules!2471)) (list!594 (charsOf!74 (_1!1040 (get!398 lt!25427))))))))

(declare-fun b!96944 () Bool)

(declare-fun e!53687 () Bool)

(declare-datatypes ((tuple2!1676 0))(
  ( (tuple2!1677 (_1!1045 List!1566) (_2!1045 List!1566)) )
))
(declare-fun findLongestMatchInner!22 (Regex!409 List!1566 Int List!1566 List!1566 Int) tuple2!1676)

(assert (=> b!96944 (= e!53687 (matchR!39 (regex!341 (h!6960 rules!2471)) (_1!1045 (findLongestMatchInner!22 (regex!341 (h!6960 rules!2471)) Nil!1560 (size!1365 Nil!1560) input!2238 input!2238 (size!1365 input!2238)))))))

(declare-fun b!96945 () Bool)

(declare-fun res!47338 () Bool)

(assert (=> b!96945 (=> (not res!47338) (not e!53686))))

(assert (=> b!96945 (= res!47338 (< (size!1365 (_2!1040 (get!398 lt!25427))) (size!1365 input!2238)))))

(declare-fun d!22174 () Bool)

(assert (=> d!22174 e!53685))

(declare-fun res!47342 () Bool)

(assert (=> d!22174 (=> res!47342 e!53685)))

(assert (=> d!22174 (= res!47342 (isEmpty!643 lt!25427))))

(assert (=> d!22174 (= lt!25427 e!53684)))

(declare-fun c!23782 () Bool)

(declare-fun lt!25430 () tuple2!1676)

(assert (=> d!22174 (= c!23782 (isEmpty!640 (_1!1045 lt!25430)))))

(declare-fun findLongestMatch!21 (Regex!409 List!1566) tuple2!1676)

(assert (=> d!22174 (= lt!25430 (findLongestMatch!21 (regex!341 (h!6960 rules!2471)) input!2238))))

(assert (=> d!22174 (ruleValid!38 thiss!19403 (h!6960 rules!2471))))

(assert (=> d!22174 (= (maxPrefixOneRule!35 thiss!19403 (h!6960 rules!2471) input!2238) lt!25427)))

(declare-fun b!96946 () Bool)

(declare-fun res!47340 () Bool)

(assert (=> b!96946 (=> (not res!47340) (not e!53686))))

(assert (=> b!96946 (= res!47340 (= (rule!840 (_1!1040 (get!398 lt!25427))) (h!6960 rules!2471)))))

(declare-fun b!96947 () Bool)

(assert (=> b!96947 (= e!53684 (Some!157 (tuple2!1667 (Token!439 (apply!243 (transformation!341 (h!6960 rules!2471)) (seqFromList!179 (_1!1045 lt!25430))) (h!6960 rules!2471) (size!1363 (seqFromList!179 (_1!1045 lt!25430))) (_1!1045 lt!25430)) (_2!1045 lt!25430))))))

(declare-fun lt!25431 () Unit!1014)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!23 (Regex!409 List!1566) Unit!1014)

(assert (=> b!96947 (= lt!25431 (longestMatchIsAcceptedByMatchOrIsEmpty!23 (regex!341 (h!6960 rules!2471)) input!2238))))

(declare-fun res!47339 () Bool)

(assert (=> b!96947 (= res!47339 (isEmpty!640 (_1!1045 (findLongestMatchInner!22 (regex!341 (h!6960 rules!2471)) Nil!1560 (size!1365 Nil!1560) input!2238 input!2238 (size!1365 input!2238)))))))

(assert (=> b!96947 (=> res!47339 e!53687)))

(assert (=> b!96947 e!53687))

(declare-fun lt!25429 () Unit!1014)

(assert (=> b!96947 (= lt!25429 lt!25431)))

(declare-fun lt!25428 () Unit!1014)

(declare-fun lemmaSemiInverse!21 (TokenValueInjection!486 BalanceConc!968) Unit!1014)

(assert (=> b!96947 (= lt!25428 (lemmaSemiInverse!21 (transformation!341 (h!6960 rules!2471)) (seqFromList!179 (_1!1045 lt!25430))))))

(declare-fun b!96948 () Bool)

(assert (=> b!96948 (= e!53686 (= (size!1359 (_1!1040 (get!398 lt!25427))) (size!1365 (originalCharacters!390 (_1!1040 (get!398 lt!25427))))))))

(declare-fun b!96949 () Bool)

(declare-fun res!47336 () Bool)

(assert (=> b!96949 (=> (not res!47336) (not e!53686))))

(assert (=> b!96949 (= res!47336 (= (value!12612 (_1!1040 (get!398 lt!25427))) (apply!243 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25427)))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25427)))))))))

(declare-fun b!96950 () Bool)

(declare-fun res!47341 () Bool)

(assert (=> b!96950 (=> (not res!47341) (not e!53686))))

(assert (=> b!96950 (= res!47341 (= (++!212 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25427)))) (_2!1040 (get!398 lt!25427))) input!2238))))

(assert (= (and d!22174 c!23782) b!96942))

(assert (= (and d!22174 (not c!23782)) b!96947))

(assert (= (and b!96947 (not res!47339)) b!96944))

(assert (= (and d!22174 (not res!47342)) b!96943))

(assert (= (and b!96943 res!47337) b!96950))

(assert (= (and b!96950 res!47341) b!96945))

(assert (= (and b!96945 res!47338) b!96946))

(assert (= (and b!96946 res!47340) b!96949))

(assert (= (and b!96949 res!47336) b!96948))

(declare-fun m!80698 () Bool)

(assert (=> b!96949 m!80698))

(declare-fun m!80700 () Bool)

(assert (=> b!96949 m!80700))

(assert (=> b!96949 m!80700))

(declare-fun m!80702 () Bool)

(assert (=> b!96949 m!80702))

(assert (=> b!96946 m!80698))

(assert (=> b!96943 m!80698))

(declare-fun m!80704 () Bool)

(assert (=> b!96943 m!80704))

(assert (=> b!96943 m!80704))

(declare-fun m!80706 () Bool)

(assert (=> b!96943 m!80706))

(assert (=> b!96943 m!80706))

(declare-fun m!80708 () Bool)

(assert (=> b!96943 m!80708))

(assert (=> b!96945 m!80698))

(declare-fun m!80710 () Bool)

(assert (=> b!96945 m!80710))

(assert (=> b!96945 m!79892))

(declare-fun m!80712 () Bool)

(assert (=> b!96947 m!80712))

(declare-fun m!80714 () Bool)

(assert (=> b!96947 m!80714))

(assert (=> b!96947 m!79892))

(declare-fun m!80716 () Bool)

(assert (=> b!96947 m!80716))

(declare-fun m!80718 () Bool)

(assert (=> b!96947 m!80718))

(declare-fun m!80720 () Bool)

(assert (=> b!96947 m!80720))

(assert (=> b!96947 m!80718))

(declare-fun m!80722 () Bool)

(assert (=> b!96947 m!80722))

(assert (=> b!96947 m!80718))

(declare-fun m!80724 () Bool)

(assert (=> b!96947 m!80724))

(assert (=> b!96947 m!80714))

(assert (=> b!96947 m!79892))

(assert (=> b!96947 m!80718))

(declare-fun m!80726 () Bool)

(assert (=> b!96947 m!80726))

(assert (=> b!96948 m!80698))

(declare-fun m!80728 () Bool)

(assert (=> b!96948 m!80728))

(assert (=> b!96950 m!80698))

(assert (=> b!96950 m!80704))

(assert (=> b!96950 m!80704))

(assert (=> b!96950 m!80706))

(assert (=> b!96950 m!80706))

(declare-fun m!80730 () Bool)

(assert (=> b!96950 m!80730))

(declare-fun m!80732 () Bool)

(assert (=> d!22174 m!80732))

(declare-fun m!80734 () Bool)

(assert (=> d!22174 m!80734))

(declare-fun m!80736 () Bool)

(assert (=> d!22174 m!80736))

(assert (=> d!22174 m!80398))

(assert (=> b!96944 m!80714))

(assert (=> b!96944 m!79892))

(assert (=> b!96944 m!80714))

(assert (=> b!96944 m!79892))

(assert (=> b!96944 m!80716))

(declare-fun m!80738 () Bool)

(assert (=> b!96944 m!80738))

(assert (=> bm!4358 d!22174))

(declare-fun b!96962 () Bool)

(declare-fun e!53693 () List!1568)

(assert (=> b!96962 (= e!53693 (++!216 (list!598 (left!1186 (c!23666 (_1!1039 lt!24978)))) (list!598 (right!1516 (c!23666 (_1!1039 lt!24978))))))))

(declare-fun b!96959 () Bool)

(declare-fun e!53692 () List!1568)

(assert (=> b!96959 (= e!53692 Nil!1562)))

(declare-fun d!22220 () Bool)

(declare-fun c!23787 () Bool)

(assert (=> d!22220 (= c!23787 ((_ is Empty!483) (c!23666 (_1!1039 lt!24978))))))

(assert (=> d!22220 (= (list!598 (c!23666 (_1!1039 lt!24978))) e!53692)))

(declare-fun b!96961 () Bool)

(declare-fun list!602 (IArray!967) List!1568)

(assert (=> b!96961 (= e!53693 (list!602 (xs!3070 (c!23666 (_1!1039 lt!24978)))))))

(declare-fun b!96960 () Bool)

(assert (=> b!96960 (= e!53692 e!53693)))

(declare-fun c!23788 () Bool)

(assert (=> b!96960 (= c!23788 ((_ is Leaf!789) (c!23666 (_1!1039 lt!24978))))))

(assert (= (and d!22220 c!23787) b!96959))

(assert (= (and d!22220 (not c!23787)) b!96960))

(assert (= (and b!96960 c!23788) b!96961))

(assert (= (and b!96960 (not c!23788)) b!96962))

(declare-fun m!80740 () Bool)

(assert (=> b!96962 m!80740))

(declare-fun m!80742 () Bool)

(assert (=> b!96962 m!80742))

(assert (=> b!96962 m!80740))

(assert (=> b!96962 m!80742))

(declare-fun m!80744 () Bool)

(assert (=> b!96962 m!80744))

(declare-fun m!80746 () Bool)

(assert (=> b!96961 m!80746))

(assert (=> d!21962 d!22220))

(declare-fun b!96963 () Bool)

(declare-fun e!53694 () List!1566)

(assert (=> b!96963 (= e!53694 Nil!1560)))

(declare-fun b!96966 () Bool)

(declare-fun e!53695 () List!1566)

(assert (=> b!96966 (= e!53695 (++!212 (list!599 (left!1185 (c!23664 (_2!1039 lt!24978)))) (list!599 (right!1515 (c!23664 (_2!1039 lt!24978))))))))

(declare-fun d!22222 () Bool)

(declare-fun c!23789 () Bool)

(assert (=> d!22222 (= c!23789 ((_ is Empty!482) (c!23664 (_2!1039 lt!24978))))))

(assert (=> d!22222 (= (list!599 (c!23664 (_2!1039 lt!24978))) e!53694)))

(declare-fun b!96965 () Bool)

(assert (=> b!96965 (= e!53695 (list!600 (xs!3069 (c!23664 (_2!1039 lt!24978)))))))

(declare-fun b!96964 () Bool)

(assert (=> b!96964 (= e!53694 e!53695)))

(declare-fun c!23790 () Bool)

(assert (=> b!96964 (= c!23790 ((_ is Leaf!788) (c!23664 (_2!1039 lt!24978))))))

(assert (= (and d!22222 c!23789) b!96963))

(assert (= (and d!22222 (not c!23789)) b!96964))

(assert (= (and b!96964 c!23790) b!96965))

(assert (= (and b!96964 (not c!23790)) b!96966))

(declare-fun m!80748 () Bool)

(assert (=> b!96966 m!80748))

(declare-fun m!80750 () Bool)

(assert (=> b!96966 m!80750))

(assert (=> b!96966 m!80748))

(assert (=> b!96966 m!80750))

(declare-fun m!80752 () Bool)

(assert (=> b!96966 m!80752))

(declare-fun m!80754 () Bool)

(assert (=> b!96965 m!80754))

(assert (=> d!22012 d!22222))

(declare-fun d!22224 () Bool)

(declare-fun lt!25432 () Int)

(assert (=> d!22224 (>= lt!25432 0)))

(declare-fun e!53696 () Int)

(assert (=> d!22224 (= lt!25432 e!53696)))

(declare-fun c!23791 () Bool)

(assert (=> d!22224 (= c!23791 ((_ is Nil!1560) lt!25046))))

(assert (=> d!22224 (= (size!1365 lt!25046) lt!25432)))

(declare-fun b!96967 () Bool)

(assert (=> b!96967 (= e!53696 0)))

(declare-fun b!96968 () Bool)

(assert (=> b!96968 (= e!53696 (+ 1 (size!1365 (t!21051 lt!25046))))))

(assert (= (and d!22224 c!23791) b!96967))

(assert (= (and d!22224 (not c!23791)) b!96968))

(declare-fun m!80756 () Bool)

(assert (=> b!96968 m!80756))

(assert (=> b!96579 d!22224))

(declare-fun d!22226 () Bool)

(declare-fun lt!25433 () Int)

(assert (=> d!22226 (>= lt!25433 0)))

(declare-fun e!53697 () Int)

(assert (=> d!22226 (= lt!25433 e!53697)))

(declare-fun c!23792 () Bool)

(assert (=> d!22226 (= c!23792 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(assert (=> d!22226 (= (size!1365 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) lt!25433)))

(declare-fun b!96969 () Bool)

(assert (=> b!96969 (= e!53697 0)))

(declare-fun b!96970 () Bool)

(assert (=> b!96970 (= e!53697 (+ 1 (size!1365 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))))

(assert (= (and d!22226 c!23792) b!96969))

(assert (= (and d!22226 (not c!23792)) b!96970))

(declare-fun m!80758 () Bool)

(assert (=> b!96970 m!80758))

(assert (=> b!96579 d!22226))

(declare-fun d!22228 () Bool)

(declare-fun lt!25434 () Int)

(assert (=> d!22228 (>= lt!25434 0)))

(declare-fun e!53698 () Int)

(assert (=> d!22228 (= lt!25434 e!53698)))

(declare-fun c!23793 () Bool)

(assert (=> d!22228 (= c!23793 ((_ is Nil!1560) (list!594 (_2!1039 lt!24978))))))

(assert (=> d!22228 (= (size!1365 (list!594 (_2!1039 lt!24978))) lt!25434)))

(declare-fun b!96971 () Bool)

(assert (=> b!96971 (= e!53698 0)))

(declare-fun b!96972 () Bool)

(assert (=> b!96972 (= e!53698 (+ 1 (size!1365 (t!21051 (list!594 (_2!1039 lt!24978))))))))

(assert (= (and d!22228 c!23793) b!96971))

(assert (= (and d!22228 (not c!23793)) b!96972))

(declare-fun m!80760 () Bool)

(assert (=> b!96972 m!80760))

(assert (=> b!96579 d!22228))

(declare-fun b!96974 () Bool)

(declare-fun e!53699 () List!1566)

(assert (=> b!96974 (= e!53699 (Cons!1560 (h!6957 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (++!212 (t!21051 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (_2!1040 (get!398 lt!25027)))))))

(declare-fun b!96976 () Bool)

(declare-fun e!53700 () Bool)

(declare-fun lt!25435 () List!1566)

(assert (=> b!96976 (= e!53700 (or (not (= (_2!1040 (get!398 lt!25027)) Nil!1560)) (= lt!25435 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))))))))

(declare-fun b!96973 () Bool)

(assert (=> b!96973 (= e!53699 (_2!1040 (get!398 lt!25027)))))

(declare-fun b!96975 () Bool)

(declare-fun res!47344 () Bool)

(assert (=> b!96975 (=> (not res!47344) (not e!53700))))

(assert (=> b!96975 (= res!47344 (= (size!1365 lt!25435) (+ (size!1365 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (size!1365 (_2!1040 (get!398 lt!25027))))))))

(declare-fun d!22230 () Bool)

(assert (=> d!22230 e!53700))

(declare-fun res!47343 () Bool)

(assert (=> d!22230 (=> (not res!47343) (not e!53700))))

(assert (=> d!22230 (= res!47343 (= (content!112 lt!25435) ((_ map or) (content!112 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (content!112 (_2!1040 (get!398 lt!25027))))))))

(assert (=> d!22230 (= lt!25435 e!53699)))

(declare-fun c!23794 () Bool)

(assert (=> d!22230 (= c!23794 ((_ is Nil!1560) (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))

(assert (=> d!22230 (= (++!212 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))) (_2!1040 (get!398 lt!25027))) lt!25435)))

(assert (= (and d!22230 c!23794) b!96973))

(assert (= (and d!22230 (not c!23794)) b!96974))

(assert (= (and d!22230 res!47343) b!96975))

(assert (= (and b!96975 res!47344) b!96976))

(declare-fun m!80762 () Bool)

(assert (=> b!96974 m!80762))

(declare-fun m!80764 () Bool)

(assert (=> b!96975 m!80764))

(assert (=> b!96975 m!79876))

(declare-fun m!80766 () Bool)

(assert (=> b!96975 m!80766))

(assert (=> b!96975 m!79890))

(declare-fun m!80768 () Bool)

(assert (=> d!22230 m!80768))

(assert (=> d!22230 m!79876))

(declare-fun m!80770 () Bool)

(assert (=> d!22230 m!80770))

(declare-fun m!80772 () Bool)

(assert (=> d!22230 m!80772))

(assert (=> b!96516 d!22230))

(assert (=> b!96516 d!22140))

(assert (=> b!96516 d!22142))

(assert (=> b!96516 d!22144))

(declare-fun b!96978 () Bool)

(declare-fun e!53701 () List!1566)

(assert (=> b!96978 (= e!53701 (Cons!1560 (h!6957 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))) (++!212 (t!21051 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))) (list!594 (_2!1039 lt!24978)))))))

(declare-fun e!53702 () Bool)

(declare-fun b!96980 () Bool)

(declare-fun lt!25436 () List!1566)

(assert (=> b!96980 (= e!53702 (or (not (= (list!594 (_2!1039 lt!24978)) Nil!1560)) (= lt!25436 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))))

(declare-fun b!96977 () Bool)

(assert (=> b!96977 (= e!53701 (list!594 (_2!1039 lt!24978)))))

(declare-fun b!96979 () Bool)

(declare-fun res!47346 () Bool)

(assert (=> b!96979 (=> (not res!47346) (not e!53702))))

(assert (=> b!96979 (= res!47346 (= (size!1365 lt!25436) (+ (size!1365 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))) (size!1365 (list!594 (_2!1039 lt!24978))))))))

(declare-fun d!22232 () Bool)

(assert (=> d!22232 e!53702))

(declare-fun res!47345 () Bool)

(assert (=> d!22232 (=> (not res!47345) (not e!53702))))

(assert (=> d!22232 (= res!47345 (= (content!112 lt!25436) ((_ map or) (content!112 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))) (content!112 (list!594 (_2!1039 lt!24978))))))))

(assert (=> d!22232 (= lt!25436 e!53701)))

(declare-fun c!23795 () Bool)

(assert (=> d!22232 (= c!23795 ((_ is Nil!1560) (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978))))))))

(assert (=> d!22232 (= (++!212 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) (list!594 (_2!1039 lt!24978))) lt!25436)))

(assert (= (and d!22232 c!23795) b!96977))

(assert (= (and d!22232 (not c!23795)) b!96978))

(assert (= (and d!22232 res!47345) b!96979))

(assert (= (and b!96979 res!47346) b!96980))

(assert (=> b!96978 m!79728))

(declare-fun m!80774 () Bool)

(assert (=> b!96978 m!80774))

(declare-fun m!80776 () Bool)

(assert (=> b!96979 m!80776))

(assert (=> b!96979 m!80758))

(assert (=> b!96979 m!79728))

(assert (=> b!96979 m!79990))

(declare-fun m!80778 () Bool)

(assert (=> d!22232 m!80778))

(declare-fun m!80780 () Bool)

(assert (=> d!22232 m!80780))

(assert (=> d!22232 m!79728))

(assert (=> d!22232 m!79996))

(assert (=> b!96578 d!22232))

(declare-fun d!22234 () Bool)

(declare-fun c!23796 () Bool)

(assert (=> d!22234 (= c!23796 ((_ is Nil!1560) lt!25046))))

(declare-fun e!53703 () (InoxSet C!1740))

(assert (=> d!22234 (= (content!112 lt!25046) e!53703)))

(declare-fun b!96981 () Bool)

(assert (=> b!96981 (= e!53703 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96982 () Bool)

(assert (=> b!96982 (= e!53703 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 lt!25046) true) (content!112 (t!21051 lt!25046))))))

(assert (= (and d!22234 c!23796) b!96981))

(assert (= (and d!22234 (not c!23796)) b!96982))

(declare-fun m!80782 () Bool)

(assert (=> b!96982 m!80782))

(declare-fun m!80784 () Bool)

(assert (=> b!96982 m!80784))

(assert (=> d!22004 d!22234))

(declare-fun d!22236 () Bool)

(declare-fun c!23797 () Bool)

(assert (=> d!22236 (= c!23797 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))

(declare-fun e!53704 () (InoxSet C!1740))

(assert (=> d!22236 (= (content!112 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) e!53704)))

(declare-fun b!96983 () Bool)

(assert (=> b!96983 (= e!53704 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96984 () Bool)

(assert (=> b!96984 (= e!53704 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))) true) (content!112 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!24978)))))))))

(assert (= (and d!22236 c!23797) b!96983))

(assert (= (and d!22236 (not c!23797)) b!96984))

(declare-fun m!80786 () Bool)

(assert (=> b!96984 m!80786))

(assert (=> b!96984 m!80780))

(assert (=> d!22004 d!22236))

(declare-fun d!22238 () Bool)

(declare-fun c!23798 () Bool)

(assert (=> d!22238 (= c!23798 ((_ is Nil!1560) (list!594 (_2!1039 lt!24978))))))

(declare-fun e!53705 () (InoxSet C!1740))

(assert (=> d!22238 (= (content!112 (list!594 (_2!1039 lt!24978))) e!53705)))

(declare-fun b!96985 () Bool)

(assert (=> b!96985 (= e!53705 ((as const (Array C!1740 Bool)) false))))

(declare-fun b!96986 () Bool)

(assert (=> b!96986 (= e!53705 ((_ map or) (store ((as const (Array C!1740 Bool)) false) (h!6957 (list!594 (_2!1039 lt!24978))) true) (content!112 (t!21051 (list!594 (_2!1039 lt!24978))))))))

(assert (= (and d!22238 c!23798) b!96985))

(assert (= (and d!22238 (not c!23798)) b!96986))

(declare-fun m!80788 () Bool)

(assert (=> b!96986 m!80788))

(declare-fun m!80790 () Bool)

(assert (=> b!96986 m!80790))

(assert (=> d!22004 d!22238))

(declare-fun d!22240 () Bool)

(declare-fun lt!25502 () tuple2!1664)

(assert (=> d!22240 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!25502))) (list!594 (_2!1039 lt!25502))) (_2!1040 lt!24980))))

(assert (=> d!22240 (= lt!25502 (lex!139 thiss!19403 rules!2471 (seqFromList!179 (_2!1040 lt!24980))))))

(assert (=> d!22240 true))

(declare-fun _$31!118 () Unit!1014)

(assert (=> d!22240 (= (choose!1370 thiss!19403 rules!2471 (_2!1040 lt!24980)) _$31!118)))

(declare-fun bs!9536 () Bool)

(assert (= bs!9536 d!22240))

(declare-fun m!80912 () Bool)

(assert (=> bs!9536 m!80912))

(assert (=> bs!9536 m!79724))

(assert (=> bs!9536 m!79724))

(assert (=> bs!9536 m!79736))

(declare-fun m!80914 () Bool)

(assert (=> bs!9536 m!80914))

(assert (=> bs!9536 m!80912))

(declare-fun m!80916 () Bool)

(assert (=> bs!9536 m!80916))

(declare-fun m!80918 () Bool)

(assert (=> bs!9536 m!80918))

(assert (=> bs!9536 m!80918))

(assert (=> bs!9536 m!80914))

(assert (=> d!22020 d!22240))

(declare-fun b!97100 () Bool)

(declare-fun e!53765 () List!1566)

(assert (=> b!97100 (= e!53765 (Cons!1560 (h!6957 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054)))) (++!212 (t!21051 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054)))) (list!594 (_2!1039 lt!25054)))))))

(declare-fun b!97102 () Bool)

(declare-fun lt!25503 () List!1566)

(declare-fun e!53766 () Bool)

(assert (=> b!97102 (= e!53766 (or (not (= (list!594 (_2!1039 lt!25054)) Nil!1560)) (= lt!25503 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054))))))))

(declare-fun b!97099 () Bool)

(assert (=> b!97099 (= e!53765 (list!594 (_2!1039 lt!25054)))))

(declare-fun b!97101 () Bool)

(declare-fun res!47406 () Bool)

(assert (=> b!97101 (=> (not res!47406) (not e!53766))))

(assert (=> b!97101 (= res!47406 (= (size!1365 lt!25503) (+ (size!1365 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054)))) (size!1365 (list!594 (_2!1039 lt!25054))))))))

(declare-fun d!22278 () Bool)

(assert (=> d!22278 e!53766))

(declare-fun res!47405 () Bool)

(assert (=> d!22278 (=> (not res!47405) (not e!53766))))

(assert (=> d!22278 (= res!47405 (= (content!112 lt!25503) ((_ map or) (content!112 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054)))) (content!112 (list!594 (_2!1039 lt!25054))))))))

(assert (=> d!22278 (= lt!25503 e!53765)))

(declare-fun c!23826 () Bool)

(assert (=> d!22278 (= c!23826 ((_ is Nil!1560) (list!594 (print!68 thiss!19403 (_1!1039 lt!25054)))))))

(assert (=> d!22278 (= (++!212 (list!594 (print!68 thiss!19403 (_1!1039 lt!25054))) (list!594 (_2!1039 lt!25054))) lt!25503)))

(assert (= (and d!22278 c!23826) b!97099))

(assert (= (and d!22278 (not c!23826)) b!97100))

(assert (= (and d!22278 res!47405) b!97101))

(assert (= (and b!97101 res!47406) b!97102))

(assert (=> b!97100 m!80042))

(declare-fun m!80932 () Bool)

(assert (=> b!97100 m!80932))

(declare-fun m!80936 () Bool)

(assert (=> b!97101 m!80936))

(assert (=> b!97101 m!80040))

(declare-fun m!80938 () Bool)

(assert (=> b!97101 m!80938))

(assert (=> b!97101 m!80042))

(declare-fun m!80944 () Bool)

(assert (=> b!97101 m!80944))

(declare-fun m!80946 () Bool)

(assert (=> d!22278 m!80946))

(assert (=> d!22278 m!80040))

(declare-fun m!80950 () Bool)

(assert (=> d!22278 m!80950))

(assert (=> d!22278 m!80042))

(declare-fun m!80954 () Bool)

(assert (=> d!22278 m!80954))

(assert (=> d!22020 d!22278))

(declare-fun d!22280 () Bool)

(declare-fun lt!25504 () BalanceConc!968)

(assert (=> d!22280 (= (list!594 lt!25504) (printList!33 thiss!19403 (list!595 (_1!1039 lt!25054))))))

(assert (=> d!22280 (= lt!25504 (printTailRec!33 thiss!19403 (_1!1039 lt!25054) 0 (BalanceConc!969 Empty!482)))))

(assert (=> d!22280 (= (print!68 thiss!19403 (_1!1039 lt!25054)) lt!25504)))

(declare-fun bs!9537 () Bool)

(assert (= bs!9537 d!22280))

(declare-fun m!80966 () Bool)

(assert (=> bs!9537 m!80966))

(declare-fun m!80970 () Bool)

(assert (=> bs!9537 m!80970))

(assert (=> bs!9537 m!80970))

(declare-fun m!80978 () Bool)

(assert (=> bs!9537 m!80978))

(declare-fun m!80984 () Bool)

(assert (=> bs!9537 m!80984))

(assert (=> d!22020 d!22280))

(assert (=> d!22020 d!22028))

(assert (=> d!22020 d!22018))

(assert (=> d!22020 d!22006))

(declare-fun d!22282 () Bool)

(assert (=> d!22282 (= (list!594 (print!68 thiss!19403 (_1!1039 lt!25054))) (list!599 (c!23664 (print!68 thiss!19403 (_1!1039 lt!25054)))))))

(declare-fun bs!9538 () Bool)

(assert (= bs!9538 d!22282))

(declare-fun m!80998 () Bool)

(assert (=> bs!9538 m!80998))

(assert (=> d!22020 d!22282))

(declare-fun d!22284 () Bool)

(assert (=> d!22284 (= (list!594 (_2!1039 lt!25054)) (list!599 (c!23664 (_2!1039 lt!25054))))))

(declare-fun bs!9539 () Bool)

(assert (= bs!9539 d!22284))

(declare-fun m!81002 () Bool)

(assert (=> bs!9539 m!81002))

(assert (=> d!22020 d!22284))

(declare-fun d!22286 () Bool)

(assert (=> d!22286 (= (list!594 lt!25042) (list!599 (c!23664 lt!25042)))))

(declare-fun bs!9540 () Bool)

(assert (= bs!9540 d!22286))

(declare-fun m!81008 () Bool)

(assert (=> bs!9540 m!81008))

(assert (=> d!21992 d!22286))

(declare-fun d!22288 () Bool)

(declare-fun c!23827 () Bool)

(assert (=> d!22288 (= c!23827 ((_ is Cons!1562) (list!595 (_1!1039 lt!24978))))))

(declare-fun e!53767 () List!1566)

(assert (=> d!22288 (= (printList!33 thiss!19403 (list!595 (_1!1039 lt!24978))) e!53767)))

(declare-fun b!97103 () Bool)

(assert (=> b!97103 (= e!53767 (++!212 (list!594 (charsOf!74 (h!6959 (list!595 (_1!1039 lt!24978))))) (printList!33 thiss!19403 (t!21053 (list!595 (_1!1039 lt!24978))))))))

(declare-fun b!97104 () Bool)

(assert (=> b!97104 (= e!53767 Nil!1560)))

(assert (= (and d!22288 c!23827) b!97103))

(assert (= (and d!22288 (not c!23827)) b!97104))

(declare-fun m!81018 () Bool)

(assert (=> b!97103 m!81018))

(assert (=> b!97103 m!81018))

(declare-fun m!81020 () Bool)

(assert (=> b!97103 m!81020))

(declare-fun m!81024 () Bool)

(assert (=> b!97103 m!81024))

(assert (=> b!97103 m!81020))

(assert (=> b!97103 m!81024))

(declare-fun m!81028 () Bool)

(assert (=> b!97103 m!81028))

(assert (=> d!21992 d!22288))

(assert (=> d!21992 d!21962))

(declare-fun d!22290 () Bool)

(declare-fun lt!25509 () BalanceConc!968)

(assert (=> d!22290 (= (list!594 lt!25509) (printListTailRec!22 thiss!19403 (dropList!30 (_1!1039 lt!24978) 0) (list!594 (BalanceConc!969 Empty!482))))))

(declare-fun e!53768 () BalanceConc!968)

(assert (=> d!22290 (= lt!25509 e!53768)))

(declare-fun c!23828 () Bool)

(assert (=> d!22290 (= c!23828 (>= 0 (size!1364 (_1!1039 lt!24978))))))

(declare-fun e!53769 () Bool)

(assert (=> d!22290 e!53769))

(declare-fun res!47407 () Bool)

(assert (=> d!22290 (=> (not res!47407) (not e!53769))))

(assert (=> d!22290 (= res!47407 (>= 0 0))))

(assert (=> d!22290 (= (printTailRec!33 thiss!19403 (_1!1039 lt!24978) 0 (BalanceConc!969 Empty!482)) lt!25509)))

(declare-fun b!97105 () Bool)

(assert (=> b!97105 (= e!53769 (<= 0 (size!1364 (_1!1039 lt!24978))))))

(declare-fun b!97106 () Bool)

(assert (=> b!97106 (= e!53768 (BalanceConc!969 Empty!482))))

(declare-fun b!97107 () Bool)

(assert (=> b!97107 (= e!53768 (printTailRec!33 thiss!19403 (_1!1039 lt!24978) (+ 0 1) (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (apply!246 (_1!1039 lt!24978) 0)))))))

(declare-fun lt!25511 () List!1568)

(assert (=> b!97107 (= lt!25511 (list!595 (_1!1039 lt!24978)))))

(declare-fun lt!25505 () Unit!1014)

(assert (=> b!97107 (= lt!25505 (lemmaDropApply!86 lt!25511 0))))

(assert (=> b!97107 (= (head!446 (drop!92 lt!25511 0)) (apply!247 lt!25511 0))))

(declare-fun lt!25508 () Unit!1014)

(assert (=> b!97107 (= lt!25508 lt!25505)))

(declare-fun lt!25507 () List!1568)

(assert (=> b!97107 (= lt!25507 (list!595 (_1!1039 lt!24978)))))

(declare-fun lt!25506 () Unit!1014)

(assert (=> b!97107 (= lt!25506 (lemmaDropTail!78 lt!25507 0))))

(assert (=> b!97107 (= (tail!158 (drop!92 lt!25507 0)) (drop!92 lt!25507 (+ 0 1)))))

(declare-fun lt!25510 () Unit!1014)

(assert (=> b!97107 (= lt!25510 lt!25506)))

(assert (= (and d!22290 res!47407) b!97105))

(assert (= (and d!22290 c!23828) b!97106))

(assert (= (and d!22290 (not c!23828)) b!97107))

(declare-fun m!81054 () Bool)

(assert (=> d!22290 m!81054))

(declare-fun m!81056 () Bool)

(assert (=> d!22290 m!81056))

(assert (=> d!22290 m!80144))

(declare-fun m!81058 () Bool)

(assert (=> d!22290 m!81058))

(assert (=> d!22290 m!80144))

(assert (=> d!22290 m!81056))

(declare-fun m!81060 () Bool)

(assert (=> d!22290 m!81060))

(assert (=> b!97105 m!81054))

(declare-fun m!81062 () Bool)

(assert (=> b!97107 m!81062))

(declare-fun m!81064 () Bool)

(assert (=> b!97107 m!81064))

(declare-fun m!81066 () Bool)

(assert (=> b!97107 m!81066))

(declare-fun m!81068 () Bool)

(assert (=> b!97107 m!81068))

(declare-fun m!81070 () Bool)

(assert (=> b!97107 m!81070))

(assert (=> b!97107 m!81070))

(assert (=> b!97107 m!81062))

(assert (=> b!97107 m!79744))

(declare-fun m!81072 () Bool)

(assert (=> b!97107 m!81072))

(declare-fun m!81074 () Bool)

(assert (=> b!97107 m!81074))

(declare-fun m!81076 () Bool)

(assert (=> b!97107 m!81076))

(declare-fun m!81078 () Bool)

(assert (=> b!97107 m!81078))

(declare-fun m!81080 () Bool)

(assert (=> b!97107 m!81080))

(assert (=> b!97107 m!81068))

(assert (=> b!97107 m!81078))

(declare-fun m!81082 () Bool)

(assert (=> b!97107 m!81082))

(assert (=> b!97107 m!81066))

(declare-fun m!81084 () Bool)

(assert (=> b!97107 m!81084))

(assert (=> d!21992 d!22290))

(declare-fun d!22300 () Bool)

(assert (=> d!22300 true))

(declare-fun order!667 () Int)

(declare-fun lambda!1723 () Int)

(declare-fun order!665 () Int)

(declare-fun dynLambda!436 (Int Int) Int)

(declare-fun dynLambda!437 (Int Int) Int)

(assert (=> d!22300 (< (dynLambda!436 order!665 (toChars!743 (transformation!341 (h!6960 rules!2471)))) (dynLambda!437 order!667 lambda!1723))))

(assert (=> d!22300 true))

(assert (=> d!22300 (< (dynLambda!427 order!653 (toValue!884 (transformation!341 (h!6960 rules!2471)))) (dynLambda!437 order!667 lambda!1723))))

(declare-fun Forall!56 (Int) Bool)

(assert (=> d!22300 (= (semiInverseModEq!77 (toChars!743 (transformation!341 (h!6960 rules!2471))) (toValue!884 (transformation!341 (h!6960 rules!2471)))) (Forall!56 lambda!1723))))

(declare-fun bs!9543 () Bool)

(assert (= bs!9543 d!22300))

(declare-fun m!81130 () Bool)

(assert (=> bs!9543 m!81130))

(assert (=> d!22026 d!22300))

(declare-fun d!22310 () Bool)

(assert (=> d!22310 (= (isDefined!50 lt!25027) (not (isEmpty!643 lt!25027)))))

(declare-fun bs!9544 () Bool)

(assert (= bs!9544 d!22310))

(assert (=> bs!9544 m!79880))

(assert (=> b!96515 d!22310))

(declare-fun d!22312 () Bool)

(declare-fun lt!25522 () Int)

(assert (=> d!22312 (>= lt!25522 0)))

(declare-fun e!53789 () Int)

(assert (=> d!22312 (= lt!25522 e!53789)))

(declare-fun c!23836 () Bool)

(assert (=> d!22312 (= c!23836 ((_ is Nil!1560) (_2!1040 (get!398 lt!25027))))))

(assert (=> d!22312 (= (size!1365 (_2!1040 (get!398 lt!25027))) lt!25522)))

(declare-fun b!97155 () Bool)

(assert (=> b!97155 (= e!53789 0)))

(declare-fun b!97156 () Bool)

(assert (=> b!97156 (= e!53789 (+ 1 (size!1365 (t!21051 (_2!1040 (get!398 lt!25027))))))))

(assert (= (and d!22312 c!23836) b!97155))

(assert (= (and d!22312 (not c!23836)) b!97156))

(declare-fun m!81136 () Bool)

(assert (=> b!97156 m!81136))

(assert (=> b!96518 d!22312))

(assert (=> b!96518 d!22144))

(declare-fun d!22314 () Bool)

(declare-fun lt!25523 () Int)

(assert (=> d!22314 (>= lt!25523 0)))

(declare-fun e!53790 () Int)

(assert (=> d!22314 (= lt!25523 e!53790)))

(declare-fun c!23837 () Bool)

(assert (=> d!22314 (= c!23837 ((_ is Nil!1560) input!2238))))

(assert (=> d!22314 (= (size!1365 input!2238) lt!25523)))

(declare-fun b!97157 () Bool)

(assert (=> b!97157 (= e!53790 0)))

(declare-fun b!97158 () Bool)

(assert (=> b!97158 (= e!53790 (+ 1 (size!1365 (t!21051 input!2238))))))

(assert (= (and d!22314 c!23837) b!97157))

(assert (= (and d!22314 (not c!23837)) b!97158))

(declare-fun m!81138 () Bool)

(assert (=> b!97158 m!81138))

(assert (=> b!96518 d!22314))

(declare-fun b!97187 () Bool)

(declare-fun e!53806 () Bool)

(assert (=> b!97187 (= e!53806 (not (= (head!448 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (c!23665 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027))))))))))

(declare-fun b!97188 () Bool)

(declare-fun e!53810 () Bool)

(declare-fun nullable!46 (Regex!409) Bool)

(assert (=> b!97188 (= e!53810 (nullable!46 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027))))))))

(declare-fun b!97189 () Bool)

(declare-fun e!53809 () Bool)

(declare-fun e!53805 () Bool)

(assert (=> b!97189 (= e!53809 e!53805)))

(declare-fun res!47427 () Bool)

(assert (=> b!97189 (=> (not res!47427) (not e!53805))))

(declare-fun lt!25526 () Bool)

(assert (=> b!97189 (= res!47427 (not lt!25526))))

(declare-fun b!97190 () Bool)

(declare-fun e!53808 () Bool)

(declare-fun call!4371 () Bool)

(assert (=> b!97190 (= e!53808 (= lt!25526 call!4371))))

(declare-fun b!97191 () Bool)

(declare-fun res!47429 () Bool)

(assert (=> b!97191 (=> res!47429 e!53806)))

(assert (=> b!97191 (= res!47429 (not (isEmpty!640 (tail!160 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))))

(declare-fun d!22316 () Bool)

(assert (=> d!22316 e!53808))

(declare-fun c!23846 () Bool)

(assert (=> d!22316 (= c!23846 ((_ is EmptyExpr!409) (regex!341 (rule!840 (_1!1040 (get!398 lt!25027))))))))

(assert (=> d!22316 (= lt!25526 e!53810)))

(declare-fun c!23845 () Bool)

(assert (=> d!22316 (= c!23845 (isEmpty!640 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))

(declare-fun validRegex!53 (Regex!409) Bool)

(assert (=> d!22316 (validRegex!53 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))))))

(assert (=> d!22316 (= (matchR!39 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))) (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) lt!25526)))

(declare-fun b!97192 () Bool)

(declare-fun e!53807 () Bool)

(assert (=> b!97192 (= e!53808 e!53807)))

(declare-fun c!23844 () Bool)

(assert (=> b!97192 (= c!23844 ((_ is EmptyLang!409) (regex!341 (rule!840 (_1!1040 (get!398 lt!25027))))))))

(declare-fun b!97193 () Bool)

(declare-fun derivativeStep!28 (Regex!409 C!1740) Regex!409)

(assert (=> b!97193 (= e!53810 (matchR!39 (derivativeStep!28 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))) (head!448 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))))) (tail!160 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))))))))

(declare-fun b!97194 () Bool)

(assert (=> b!97194 (= e!53805 e!53806)))

(declare-fun res!47432 () Bool)

(assert (=> b!97194 (=> res!47432 e!53806)))

(assert (=> b!97194 (= res!47432 call!4371)))

(declare-fun b!97195 () Bool)

(declare-fun e!53811 () Bool)

(assert (=> b!97195 (= e!53811 (= (head!448 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))) (c!23665 (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))))))))

(declare-fun b!97196 () Bool)

(declare-fun res!47430 () Bool)

(assert (=> b!97196 (=> (not res!47430) (not e!53811))))

(assert (=> b!97196 (= res!47430 (not call!4371))))

(declare-fun b!97197 () Bool)

(declare-fun res!47425 () Bool)

(assert (=> b!97197 (=> res!47425 e!53809)))

(assert (=> b!97197 (= res!47425 (not ((_ is ElementMatch!409) (regex!341 (rule!840 (_1!1040 (get!398 lt!25027)))))))))

(assert (=> b!97197 (= e!53807 e!53809)))

(declare-fun b!97198 () Bool)

(declare-fun res!47431 () Bool)

(assert (=> b!97198 (=> res!47431 e!53809)))

(assert (=> b!97198 (= res!47431 e!53811)))

(declare-fun res!47428 () Bool)

(assert (=> b!97198 (=> (not res!47428) (not e!53811))))

(assert (=> b!97198 (= res!47428 lt!25526)))

(declare-fun b!97199 () Bool)

(declare-fun res!47426 () Bool)

(assert (=> b!97199 (=> (not res!47426) (not e!53811))))

(assert (=> b!97199 (= res!47426 (isEmpty!640 (tail!160 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027)))))))))

(declare-fun bm!4366 () Bool)

(assert (=> bm!4366 (= call!4371 (isEmpty!640 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25027))))))))

(declare-fun b!97200 () Bool)

(assert (=> b!97200 (= e!53807 (not lt!25526))))

(assert (= (and d!22316 c!23845) b!97188))

(assert (= (and d!22316 (not c!23845)) b!97193))

(assert (= (and d!22316 c!23846) b!97190))

(assert (= (and d!22316 (not c!23846)) b!97192))

(assert (= (and b!97192 c!23844) b!97200))

(assert (= (and b!97192 (not c!23844)) b!97197))

(assert (= (and b!97197 (not res!47425)) b!97198))

(assert (= (and b!97198 res!47428) b!97196))

(assert (= (and b!97196 res!47430) b!97199))

(assert (= (and b!97199 res!47426) b!97195))

(assert (= (and b!97198 (not res!47431)) b!97189))

(assert (= (and b!97189 res!47427) b!97194))

(assert (= (and b!97194 (not res!47432)) b!97191))

(assert (= (and b!97191 (not res!47429)) b!97187))

(assert (= (or b!97190 b!97194 b!97196) bm!4366))

(declare-fun m!81140 () Bool)

(assert (=> b!97188 m!81140))

(assert (=> b!97199 m!79876))

(declare-fun m!81142 () Bool)

(assert (=> b!97199 m!81142))

(assert (=> b!97199 m!81142))

(declare-fun m!81144 () Bool)

(assert (=> b!97199 m!81144))

(assert (=> b!97193 m!79876))

(declare-fun m!81146 () Bool)

(assert (=> b!97193 m!81146))

(assert (=> b!97193 m!81146))

(declare-fun m!81148 () Bool)

(assert (=> b!97193 m!81148))

(assert (=> b!97193 m!79876))

(assert (=> b!97193 m!81142))

(assert (=> b!97193 m!81148))

(assert (=> b!97193 m!81142))

(declare-fun m!81150 () Bool)

(assert (=> b!97193 m!81150))

(assert (=> bm!4366 m!79876))

(declare-fun m!81152 () Bool)

(assert (=> bm!4366 m!81152))

(assert (=> b!97191 m!79876))

(assert (=> b!97191 m!81142))

(assert (=> b!97191 m!81142))

(assert (=> b!97191 m!81144))

(assert (=> b!97187 m!79876))

(assert (=> b!97187 m!81146))

(assert (=> d!22316 m!79876))

(assert (=> d!22316 m!81152))

(declare-fun m!81154 () Bool)

(assert (=> d!22316 m!81154))

(assert (=> b!97195 m!79876))

(assert (=> b!97195 m!81146))

(assert (=> b!96517 d!22316))

(assert (=> b!96517 d!22144))

(assert (=> b!96517 d!22140))

(assert (=> b!96517 d!22142))

(declare-fun d!22318 () Bool)

(assert (=> d!22318 (= (list!594 (_2!1039 lt!25000)) (list!599 (c!23664 (_2!1039 lt!25000))))))

(declare-fun bs!9545 () Bool)

(assert (= bs!9545 d!22318))

(declare-fun m!81156 () Bool)

(assert (=> bs!9545 m!81156))

(assert (=> b!96453 d!22318))

(assert (=> b!96453 d!22068))

(assert (=> b!96453 d!22070))

(declare-fun d!22320 () Bool)

(assert (=> d!22320 (= (list!594 (_2!1039 lt!25047)) (list!599 (c!23664 (_2!1039 lt!25047))))))

(declare-fun bs!9546 () Bool)

(assert (= bs!9546 d!22320))

(declare-fun m!81158 () Bool)

(assert (=> bs!9546 m!81158))

(assert (=> b!96581 d!22320))

(assert (=> b!96581 d!22074))

(assert (=> b!96581 d!22076))

(assert (=> b!96521 d!22144))

(declare-fun d!22322 () Bool)

(declare-fun dynLambda!438 (Int BalanceConc!968) TokenValue!331)

(assert (=> d!22322 (= (apply!243 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25027))))) (dynLambda!438 (toValue!884 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027))))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25027))))))))

(declare-fun b_lambda!1119 () Bool)

(assert (=> (not b_lambda!1119) (not d!22322)))

(declare-fun t!21080 () Bool)

(declare-fun tb!2979 () Bool)

(assert (=> (and b!96424 (= (toValue!884 (transformation!341 (h!6960 rules!2471))) (toValue!884 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21080) tb!2979))

(declare-fun result!4282 () Bool)

(declare-fun inv!21 (TokenValue!331) Bool)

(assert (=> tb!2979 (= result!4282 (inv!21 (dynLambda!438 (toValue!884 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027))))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25027)))))))))

(declare-fun m!81160 () Bool)

(assert (=> tb!2979 m!81160))

(assert (=> d!22322 t!21080))

(declare-fun b_and!4343 () Bool)

(assert (= b_and!4315 (and (=> t!21080 result!4282) b_and!4343)))

(declare-fun tb!2981 () Bool)

(declare-fun t!21082 () Bool)

(assert (=> (and b!96603 (= (toValue!884 (transformation!341 (h!6960 (t!21054 rules!2471)))) (toValue!884 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21082) tb!2981))

(declare-fun result!4286 () Bool)

(assert (= result!4286 result!4282))

(assert (=> d!22322 t!21082))

(declare-fun b_and!4345 () Bool)

(assert (= b_and!4323 (and (=> t!21082 result!4286) b_and!4345)))

(assert (=> d!22322 m!79896))

(declare-fun m!81162 () Bool)

(assert (=> d!22322 m!81162))

(assert (=> b!96521 d!22322))

(declare-fun d!22324 () Bool)

(assert (=> d!22324 (= (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25027)))) (fromListB!75 (originalCharacters!390 (_1!1040 (get!398 lt!25027)))))))

(declare-fun bs!9547 () Bool)

(assert (= bs!9547 d!22324))

(declare-fun m!81164 () Bool)

(assert (=> bs!9547 m!81164))

(assert (=> b!96521 d!22324))

(declare-fun d!22326 () Bool)

(declare-fun lt!25527 () Int)

(assert (=> d!22326 (= lt!25527 (size!1369 (list!595 (_1!1039 lt!25000))))))

(assert (=> d!22326 (= lt!25527 (size!1370 (c!23666 (_1!1039 lt!25000))))))

(assert (=> d!22326 (= (size!1364 (_1!1039 lt!25000)) lt!25527)))

(declare-fun bs!9548 () Bool)

(assert (= bs!9548 d!22326))

(assert (=> bs!9548 m!79822))

(assert (=> bs!9548 m!79822))

(declare-fun m!81166 () Bool)

(assert (=> bs!9548 m!81166))

(declare-fun m!81168 () Bool)

(assert (=> bs!9548 m!81168))

(assert (=> d!21970 d!22326))

(declare-fun b!97203 () Bool)

(declare-fun e!53816 () tuple2!1664)

(declare-fun lt!25547 () BalanceConc!968)

(assert (=> b!97203 (= e!53816 (tuple2!1665 (BalanceConc!971 Empty!483) lt!25547))))

(declare-fun b!97204 () Bool)

(declare-fun e!53817 () tuple2!1664)

(assert (=> b!97204 (= e!53817 (tuple2!1665 (BalanceConc!971 Empty!483) (seqFromList!179 input!2238)))))

(declare-fun lt!25539 () Option!160)

(declare-fun b!97205 () Bool)

(declare-fun lt!25559 () tuple2!1664)

(assert (=> b!97205 (= lt!25559 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25539))))))

(declare-fun e!53818 () tuple2!1664)

(assert (=> b!97205 (= e!53818 (tuple2!1665 (prepend!109 (_1!1039 lt!25559) (_1!1044 (v!12928 lt!25539))) (_2!1039 lt!25559)))))

(declare-fun lt!25553 () tuple2!1664)

(declare-fun b!97206 () Bool)

(declare-fun lt!25561 () Option!160)

(assert (=> b!97206 (= lt!25553 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25561))))))

(assert (=> b!97206 (= e!53816 (tuple2!1665 (prepend!109 (_1!1039 lt!25553) (_1!1044 (v!12928 lt!25561))) (_2!1039 lt!25553)))))

(declare-fun b!97207 () Bool)

(assert (=> b!97207 (= e!53818 (tuple2!1665 (BalanceConc!971 Empty!483) (seqFromList!179 input!2238)))))

(declare-fun d!22328 () Bool)

(declare-fun e!53815 () Bool)

(assert (=> d!22328 e!53815))

(declare-fun res!47433 () Bool)

(assert (=> d!22328 (=> (not res!47433) (not e!53815))))

(declare-fun lt!25550 () tuple2!1664)

(assert (=> d!22328 (= res!47433 (= (list!595 (_1!1039 lt!25550)) (list!595 (_1!1039 (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 input!2238))))))))

(assert (=> d!22328 (= lt!25550 e!53817)))

(declare-fun c!23849 () Bool)

(declare-fun lt!25560 () Option!160)

(assert (=> d!22328 (= c!23849 ((_ is Some!159) lt!25560))))

(assert (=> d!22328 (= lt!25560 (maxPrefixZipperSequenceV2!35 thiss!19403 rules!2471 (seqFromList!179 input!2238) (seqFromList!179 input!2238)))))

(declare-fun lt!25544 () Unit!1014)

(declare-fun lt!25557 () Unit!1014)

(assert (=> d!22328 (= lt!25544 lt!25557)))

(declare-fun lt!25531 () List!1566)

(declare-fun lt!25543 () List!1566)

(assert (=> d!22328 (isSuffix!35 lt!25531 (++!212 lt!25543 lt!25531))))

(assert (=> d!22328 (= lt!25557 (lemmaConcatTwoListThenFSndIsSuffix!35 lt!25543 lt!25531))))

(assert (=> d!22328 (= lt!25531 (list!594 (seqFromList!179 input!2238)))))

(assert (=> d!22328 (= lt!25543 (list!594 (BalanceConc!969 Empty!482)))))

(assert (=> d!22328 (= (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 input!2238) (BalanceConc!969 Empty!482) (seqFromList!179 input!2238) (BalanceConc!971 Empty!483)) lt!25550)))

(declare-fun b!97208 () Bool)

(declare-fun lt!25542 () BalanceConc!968)

(assert (=> b!97208 (= e!53817 (lexTailRecV2!60 thiss!19403 rules!2471 (seqFromList!179 input!2238) lt!25542 (_2!1044 (v!12928 lt!25560)) (append!49 (BalanceConc!971 Empty!483) (_1!1044 (v!12928 lt!25560)))))))

(declare-fun lt!25538 () tuple2!1664)

(assert (=> b!97208 (= lt!25538 (lexRec!40 thiss!19403 rules!2471 (_2!1044 (v!12928 lt!25560))))))

(declare-fun lt!25535 () List!1566)

(assert (=> b!97208 (= lt!25535 (list!594 (BalanceConc!969 Empty!482)))))

(declare-fun lt!25537 () List!1566)

(assert (=> b!97208 (= lt!25537 (list!594 (charsOf!74 (_1!1044 (v!12928 lt!25560)))))))

(declare-fun lt!25552 () List!1566)

(assert (=> b!97208 (= lt!25552 (list!594 (_2!1044 (v!12928 lt!25560))))))

(declare-fun lt!25545 () Unit!1014)

(assert (=> b!97208 (= lt!25545 (lemmaConcatAssociativity!80 lt!25535 lt!25537 lt!25552))))

(assert (=> b!97208 (= (++!212 (++!212 lt!25535 lt!25537) lt!25552) (++!212 lt!25535 (++!212 lt!25537 lt!25552)))))

(declare-fun lt!25533 () Unit!1014)

(assert (=> b!97208 (= lt!25533 lt!25545)))

(assert (=> b!97208 (= lt!25539 (maxPrefixZipperSequence!38 thiss!19403 rules!2471 (seqFromList!179 input!2238)))))

(declare-fun c!23847 () Bool)

(assert (=> b!97208 (= c!23847 ((_ is Some!159) lt!25539))))

(assert (=> b!97208 (= (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 input!2238)) e!53818)))

(declare-fun lt!25556 () Unit!1014)

(declare-fun Unit!1020 () Unit!1014)

(assert (=> b!97208 (= lt!25556 Unit!1020)))

(declare-fun lt!25555 () List!1568)

(assert (=> b!97208 (= lt!25555 (list!595 (BalanceConc!971 Empty!483)))))

(declare-fun lt!25532 () List!1568)

(assert (=> b!97208 (= lt!25532 (Cons!1562 (_1!1044 (v!12928 lt!25560)) Nil!1562))))

(declare-fun lt!25549 () List!1568)

(assert (=> b!97208 (= lt!25549 (list!595 (_1!1039 lt!25538)))))

(declare-fun lt!25554 () Unit!1014)

(assert (=> b!97208 (= lt!25554 (lemmaConcatAssociativity!81 lt!25555 lt!25532 lt!25549))))

(assert (=> b!97208 (= (++!216 (++!216 lt!25555 lt!25532) lt!25549) (++!216 lt!25555 (++!216 lt!25532 lt!25549)))))

(declare-fun lt!25540 () Unit!1014)

(assert (=> b!97208 (= lt!25540 lt!25554)))

(declare-fun lt!25534 () List!1566)

(assert (=> b!97208 (= lt!25534 (++!212 (list!594 (BalanceConc!969 Empty!482)) (list!594 (charsOf!74 (_1!1044 (v!12928 lt!25560))))))))

(declare-fun lt!25546 () List!1566)

(assert (=> b!97208 (= lt!25546 (list!594 (_2!1044 (v!12928 lt!25560))))))

(declare-fun lt!25530 () List!1568)

(assert (=> b!97208 (= lt!25530 (list!595 (append!49 (BalanceConc!971 Empty!483) (_1!1044 (v!12928 lt!25560)))))))

(declare-fun lt!25528 () Unit!1014)

(assert (=> b!97208 (= lt!25528 (lemmaLexThenLexPrefix!35 thiss!19403 rules!2471 lt!25534 lt!25546 lt!25530 (list!595 (_1!1039 lt!25538)) (list!594 (_2!1039 lt!25538))))))

(assert (=> b!97208 (= (lexList!63 thiss!19403 rules!2471 lt!25534) (tuple2!1671 lt!25530 Nil!1560))))

(declare-fun lt!25551 () Unit!1014)

(assert (=> b!97208 (= lt!25551 lt!25528)))

(assert (=> b!97208 (= lt!25547 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25560)))))))

(assert (=> b!97208 (= lt!25561 (maxPrefixZipperSequence!38 thiss!19403 rules!2471 lt!25547))))

(declare-fun c!23848 () Bool)

(assert (=> b!97208 (= c!23848 ((_ is Some!159) lt!25561))))

(assert (=> b!97208 (= (lexRec!40 thiss!19403 rules!2471 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25560))))) e!53816)))

(declare-fun lt!25541 () Unit!1014)

(declare-fun Unit!1021 () Unit!1014)

(assert (=> b!97208 (= lt!25541 Unit!1021)))

(assert (=> b!97208 (= lt!25542 (++!214 (BalanceConc!969 Empty!482) (charsOf!74 (_1!1044 (v!12928 lt!25560)))))))

(declare-fun lt!25558 () List!1566)

(assert (=> b!97208 (= lt!25558 (list!594 lt!25542))))

(declare-fun lt!25536 () List!1566)

(assert (=> b!97208 (= lt!25536 (list!594 (_2!1044 (v!12928 lt!25560))))))

(declare-fun lt!25548 () Unit!1014)

(assert (=> b!97208 (= lt!25548 (lemmaConcatTwoListThenFSndIsSuffix!35 lt!25558 lt!25536))))

(assert (=> b!97208 (isSuffix!35 lt!25536 (++!212 lt!25558 lt!25536))))

(declare-fun lt!25529 () Unit!1014)

(assert (=> b!97208 (= lt!25529 lt!25548)))

(declare-fun b!97209 () Bool)

(assert (=> b!97209 (= e!53815 (= (list!594 (_2!1039 lt!25550)) (list!594 (_2!1039 (lexRec!40 thiss!19403 rules!2471 (seqFromList!179 input!2238))))))))

(assert (= (and d!22328 c!23849) b!97208))

(assert (= (and d!22328 (not c!23849)) b!97204))

(assert (= (and b!97208 c!23847) b!97205))

(assert (= (and b!97208 (not c!23847)) b!97207))

(assert (= (and b!97208 c!23848) b!97206))

(assert (= (and b!97208 (not c!23848)) b!97203))

(assert (= (and d!22328 res!47433) b!97209))

(declare-fun m!81170 () Bool)

(assert (=> b!97208 m!81170))

(declare-fun m!81172 () Bool)

(assert (=> b!97208 m!81172))

(declare-fun m!81174 () Bool)

(assert (=> b!97208 m!81174))

(declare-fun m!81176 () Bool)

(assert (=> b!97208 m!81176))

(declare-fun m!81178 () Bool)

(assert (=> b!97208 m!81178))

(declare-fun m!81180 () Bool)

(assert (=> b!97208 m!81180))

(declare-fun m!81182 () Bool)

(assert (=> b!97208 m!81182))

(declare-fun m!81184 () Bool)

(assert (=> b!97208 m!81184))

(declare-fun m!81186 () Bool)

(assert (=> b!97208 m!81186))

(declare-fun m!81188 () Bool)

(assert (=> b!97208 m!81188))

(declare-fun m!81190 () Bool)

(assert (=> b!97208 m!81190))

(declare-fun m!81192 () Bool)

(assert (=> b!97208 m!81192))

(assert (=> b!97208 m!81186))

(declare-fun m!81194 () Bool)

(assert (=> b!97208 m!81194))

(declare-fun m!81196 () Bool)

(assert (=> b!97208 m!81196))

(assert (=> b!97208 m!81170))

(declare-fun m!81198 () Bool)

(assert (=> b!97208 m!81198))

(assert (=> b!97208 m!81186))

(declare-fun m!81200 () Bool)

(assert (=> b!97208 m!81200))

(declare-fun m!81202 () Bool)

(assert (=> b!97208 m!81202))

(assert (=> b!97208 m!79740))

(declare-fun m!81204 () Bool)

(assert (=> b!97208 m!81204))

(assert (=> b!97208 m!79740))

(declare-fun m!81206 () Bool)

(assert (=> b!97208 m!81206))

(declare-fun m!81208 () Bool)

(assert (=> b!97208 m!81208))

(declare-fun m!81210 () Bool)

(assert (=> b!97208 m!81210))

(declare-fun m!81212 () Bool)

(assert (=> b!97208 m!81212))

(assert (=> b!97208 m!81206))

(declare-fun m!81214 () Bool)

(assert (=> b!97208 m!81214))

(declare-fun m!81216 () Bool)

(assert (=> b!97208 m!81216))

(assert (=> b!97208 m!81194))

(declare-fun m!81218 () Bool)

(assert (=> b!97208 m!81218))

(assert (=> b!97208 m!81196))

(assert (=> b!97208 m!81216))

(declare-fun m!81220 () Bool)

(assert (=> b!97208 m!81220))

(assert (=> b!97208 m!81210))

(assert (=> b!97208 m!81206))

(assert (=> b!97208 m!80144))

(assert (=> b!97208 m!81188))

(declare-fun m!81222 () Bool)

(assert (=> b!97208 m!81222))

(declare-fun m!81224 () Bool)

(assert (=> b!97208 m!81224))

(declare-fun m!81226 () Bool)

(assert (=> b!97208 m!81226))

(assert (=> b!97208 m!80566))

(assert (=> b!97208 m!79740))

(declare-fun m!81228 () Bool)

(assert (=> b!97208 m!81228))

(assert (=> b!97208 m!81178))

(assert (=> b!97208 m!81174))

(declare-fun m!81230 () Bool)

(assert (=> b!97208 m!81230))

(assert (=> b!97208 m!80144))

(assert (=> b!97208 m!81190))

(declare-fun m!81232 () Bool)

(assert (=> b!97209 m!81232))

(assert (=> b!97209 m!79740))

(assert (=> b!97209 m!81204))

(declare-fun m!81234 () Bool)

(assert (=> b!97209 m!81234))

(declare-fun m!81236 () Bool)

(assert (=> b!97205 m!81236))

(declare-fun m!81238 () Bool)

(assert (=> b!97205 m!81238))

(assert (=> d!22328 m!79740))

(assert (=> d!22328 m!81204))

(declare-fun m!81240 () Bool)

(assert (=> d!22328 m!81240))

(declare-fun m!81242 () Bool)

(assert (=> d!22328 m!81242))

(assert (=> d!22328 m!79740))

(assert (=> d!22328 m!79808))

(declare-fun m!81244 () Bool)

(assert (=> d!22328 m!81244))

(declare-fun m!81246 () Bool)

(assert (=> d!22328 m!81246))

(assert (=> d!22328 m!81244))

(assert (=> d!22328 m!80144))

(declare-fun m!81248 () Bool)

(assert (=> d!22328 m!81248))

(assert (=> d!22328 m!79740))

(assert (=> d!22328 m!79740))

(declare-fun m!81250 () Bool)

(assert (=> d!22328 m!81250))

(declare-fun m!81252 () Bool)

(assert (=> b!97206 m!81252))

(declare-fun m!81254 () Bool)

(assert (=> b!97206 m!81254))

(assert (=> d!21970 d!22328))

(declare-fun b!97210 () Bool)

(declare-fun e!53819 () List!1566)

(assert (=> b!97210 (= e!53819 Nil!1560)))

(declare-fun b!97213 () Bool)

(declare-fun e!53820 () List!1566)

(assert (=> b!97213 (= e!53820 (++!212 (list!599 (left!1185 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981))))) (list!599 (right!1515 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981)))))))))

(declare-fun d!22330 () Bool)

(declare-fun c!23850 () Bool)

(assert (=> d!22330 (= c!23850 ((_ is Empty!482) (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(assert (=> d!22330 (= (list!599 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981)))) e!53819)))

(declare-fun b!97212 () Bool)

(assert (=> b!97212 (= e!53820 (list!600 (xs!3069 (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981))))))))

(declare-fun b!97211 () Bool)

(assert (=> b!97211 (= e!53819 e!53820)))

(declare-fun c!23851 () Bool)

(assert (=> b!97211 (= c!23851 ((_ is Leaf!788) (c!23664 (print!68 thiss!19403 (_1!1039 lt!24981)))))))

(assert (= (and d!22330 c!23850) b!97210))

(assert (= (and d!22330 (not c!23850)) b!97211))

(assert (= (and b!97211 c!23851) b!97212))

(assert (= (and b!97211 (not c!23851)) b!97213))

(declare-fun m!81256 () Bool)

(assert (=> b!97213 m!81256))

(declare-fun m!81258 () Bool)

(assert (=> b!97213 m!81258))

(assert (=> b!97213 m!81256))

(assert (=> b!97213 m!81258))

(declare-fun m!81260 () Bool)

(assert (=> b!97213 m!81260))

(declare-fun m!81262 () Bool)

(assert (=> b!97212 m!81262))

(assert (=> d!22014 d!22330))

(declare-fun b!97214 () Bool)

(declare-fun e!53823 () Bool)

(declare-fun lt!25563 () Option!158)

(assert (=> b!97214 (= e!53823 (contains!246 (t!21054 rules!2471) (rule!840 (_1!1040 (get!398 lt!25563)))))))

(declare-fun b!97215 () Bool)

(declare-fun res!47435 () Bool)

(assert (=> b!97215 (=> (not res!47435) (not e!53823))))

(assert (=> b!97215 (= res!47435 (= (list!594 (charsOf!74 (_1!1040 (get!398 lt!25563)))) (originalCharacters!390 (_1!1040 (get!398 lt!25563)))))))

(declare-fun b!97216 () Bool)

(declare-fun e!53822 () Bool)

(assert (=> b!97216 (= e!53822 e!53823)))

(declare-fun res!47436 () Bool)

(assert (=> b!97216 (=> (not res!47436) (not e!53823))))

(assert (=> b!97216 (= res!47436 (isDefined!50 lt!25563))))

(declare-fun b!97217 () Bool)

(declare-fun res!47434 () Bool)

(assert (=> b!97217 (=> (not res!47434) (not e!53823))))

(assert (=> b!97217 (= res!47434 (= (++!212 (list!594 (charsOf!74 (_1!1040 (get!398 lt!25563)))) (_2!1040 (get!398 lt!25563))) input!2238))))

(declare-fun call!4372 () Option!158)

(declare-fun bm!4367 () Bool)

(assert (=> bm!4367 (= call!4372 (maxPrefixOneRule!35 thiss!19403 (h!6960 (t!21054 rules!2471)) input!2238))))

(declare-fun b!97218 () Bool)

(declare-fun res!47437 () Bool)

(assert (=> b!97218 (=> (not res!47437) (not e!53823))))

(assert (=> b!97218 (= res!47437 (matchR!39 (regex!341 (rule!840 (_1!1040 (get!398 lt!25563)))) (list!594 (charsOf!74 (_1!1040 (get!398 lt!25563))))))))

(declare-fun b!97219 () Bool)

(declare-fun res!47439 () Bool)

(assert (=> b!97219 (=> (not res!47439) (not e!53823))))

(assert (=> b!97219 (= res!47439 (< (size!1365 (_2!1040 (get!398 lt!25563))) (size!1365 input!2238)))))

(declare-fun d!22332 () Bool)

(assert (=> d!22332 e!53822))

(declare-fun res!47440 () Bool)

(assert (=> d!22332 (=> res!47440 e!53822)))

(assert (=> d!22332 (= res!47440 (isEmpty!643 lt!25563))))

(declare-fun e!53821 () Option!158)

(assert (=> d!22332 (= lt!25563 e!53821)))

(declare-fun c!23852 () Bool)

(assert (=> d!22332 (= c!23852 (and ((_ is Cons!1563) (t!21054 rules!2471)) ((_ is Nil!1563) (t!21054 (t!21054 rules!2471)))))))

(declare-fun lt!25564 () Unit!1014)

(declare-fun lt!25565 () Unit!1014)

(assert (=> d!22332 (= lt!25564 lt!25565)))

(assert (=> d!22332 (isPrefix!37 input!2238 input!2238)))

(assert (=> d!22332 (= lt!25565 (lemmaIsPrefixRefl!37 input!2238 input!2238))))

(assert (=> d!22332 (rulesValidInductive!63 thiss!19403 (t!21054 rules!2471))))

(assert (=> d!22332 (= (maxPrefix!73 thiss!19403 (t!21054 rules!2471) input!2238) lt!25563)))

(declare-fun b!97220 () Bool)

(assert (=> b!97220 (= e!53821 call!4372)))

(declare-fun b!97221 () Bool)

(declare-fun lt!25562 () Option!158)

(declare-fun lt!25566 () Option!158)

(assert (=> b!97221 (= e!53821 (ite (and ((_ is None!157) lt!25562) ((_ is None!157) lt!25566)) None!157 (ite ((_ is None!157) lt!25566) lt!25562 (ite ((_ is None!157) lt!25562) lt!25566 (ite (>= (size!1359 (_1!1040 (v!12920 lt!25562))) (size!1359 (_1!1040 (v!12920 lt!25566)))) lt!25562 lt!25566)))))))

(assert (=> b!97221 (= lt!25562 call!4372)))

(assert (=> b!97221 (= lt!25566 (maxPrefix!73 thiss!19403 (t!21054 (t!21054 rules!2471)) input!2238))))

(declare-fun b!97222 () Bool)

(declare-fun res!47438 () Bool)

(assert (=> b!97222 (=> (not res!47438) (not e!53823))))

(assert (=> b!97222 (= res!47438 (= (value!12612 (_1!1040 (get!398 lt!25563))) (apply!243 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25563)))) (seqFromList!179 (originalCharacters!390 (_1!1040 (get!398 lt!25563)))))))))

(assert (= (and d!22332 c!23852) b!97220))

(assert (= (and d!22332 (not c!23852)) b!97221))

(assert (= (or b!97220 b!97221) bm!4367))

(assert (= (and d!22332 (not res!47440)) b!97216))

(assert (= (and b!97216 res!47436) b!97215))

(assert (= (and b!97215 res!47435) b!97219))

(assert (= (and b!97219 res!47439) b!97217))

(assert (= (and b!97217 res!47434) b!97222))

(assert (= (and b!97222 res!47438) b!97218))

(assert (= (and b!97218 res!47437) b!97214))

(declare-fun m!81264 () Bool)

(assert (=> b!97216 m!81264))

(declare-fun m!81266 () Bool)

(assert (=> b!97217 m!81266))

(declare-fun m!81268 () Bool)

(assert (=> b!97217 m!81268))

(assert (=> b!97217 m!81268))

(declare-fun m!81270 () Bool)

(assert (=> b!97217 m!81270))

(assert (=> b!97217 m!81270))

(declare-fun m!81272 () Bool)

(assert (=> b!97217 m!81272))

(declare-fun m!81274 () Bool)

(assert (=> d!22332 m!81274))

(assert (=> d!22332 m!79882))

(assert (=> d!22332 m!79884))

(assert (=> d!22332 m!80400))

(assert (=> b!97214 m!81266))

(declare-fun m!81276 () Bool)

(assert (=> b!97214 m!81276))

(assert (=> b!97219 m!81266))

(declare-fun m!81278 () Bool)

(assert (=> b!97219 m!81278))

(assert (=> b!97219 m!79892))

(declare-fun m!81280 () Bool)

(assert (=> bm!4367 m!81280))

(assert (=> b!97222 m!81266))

(declare-fun m!81282 () Bool)

(assert (=> b!97222 m!81282))

(assert (=> b!97222 m!81282))

(declare-fun m!81284 () Bool)

(assert (=> b!97222 m!81284))

(assert (=> b!97218 m!81266))

(assert (=> b!97218 m!81268))

(assert (=> b!97218 m!81268))

(assert (=> b!97218 m!81270))

(assert (=> b!97218 m!81270))

(declare-fun m!81286 () Bool)

(assert (=> b!97218 m!81286))

(declare-fun m!81288 () Bool)

(assert (=> b!97221 m!81288))

(assert (=> b!97215 m!81266))

(assert (=> b!97215 m!81268))

(assert (=> b!97215 m!81268))

(assert (=> b!97215 m!81270))

(assert (=> b!96520 d!22332))

(declare-fun b!97225 () Bool)

(declare-fun e!53824 () Bool)

(declare-fun tp!56055 () Bool)

(assert (=> b!97225 (= e!53824 tp!56055)))

(declare-fun b!97224 () Bool)

(declare-fun tp!56054 () Bool)

(declare-fun tp!56053 () Bool)

(assert (=> b!97224 (= e!53824 (and tp!56054 tp!56053))))

(assert (=> b!96621 (= tp!56009 e!53824)))

(declare-fun b!97223 () Bool)

(assert (=> b!97223 (= e!53824 tp_is_empty!741)))

(declare-fun b!97226 () Bool)

(declare-fun tp!56056 () Bool)

(declare-fun tp!56052 () Bool)

(assert (=> b!97226 (= e!53824 (and tp!56056 tp!56052))))

(assert (= (and b!96621 ((_ is ElementMatch!409) (reg!738 (regex!341 (h!6960 rules!2471))))) b!97223))

(assert (= (and b!96621 ((_ is Concat!741) (reg!738 (regex!341 (h!6960 rules!2471))))) b!97224))

(assert (= (and b!96621 ((_ is Star!409) (reg!738 (regex!341 (h!6960 rules!2471))))) b!97225))

(assert (= (and b!96621 ((_ is Union!409) (reg!738 (regex!341 (h!6960 rules!2471))))) b!97226))

(declare-fun b!97229 () Bool)

(declare-fun e!53825 () Bool)

(declare-fun tp!56060 () Bool)

(assert (=> b!97229 (= e!53825 tp!56060)))

(declare-fun b!97228 () Bool)

(declare-fun tp!56059 () Bool)

(declare-fun tp!56058 () Bool)

(assert (=> b!97228 (= e!53825 (and tp!56059 tp!56058))))

(assert (=> b!96620 (= tp!56008 e!53825)))

(declare-fun b!97227 () Bool)

(assert (=> b!97227 (= e!53825 tp_is_empty!741)))

(declare-fun b!97230 () Bool)

(declare-fun tp!56061 () Bool)

(declare-fun tp!56057 () Bool)

(assert (=> b!97230 (= e!53825 (and tp!56061 tp!56057))))

(assert (= (and b!96620 ((_ is ElementMatch!409) (regOne!1330 (regex!341 (h!6960 rules!2471))))) b!97227))

(assert (= (and b!96620 ((_ is Concat!741) (regOne!1330 (regex!341 (h!6960 rules!2471))))) b!97228))

(assert (= (and b!96620 ((_ is Star!409) (regOne!1330 (regex!341 (h!6960 rules!2471))))) b!97229))

(assert (= (and b!96620 ((_ is Union!409) (regOne!1330 (regex!341 (h!6960 rules!2471))))) b!97230))

(declare-fun b!97233 () Bool)

(declare-fun e!53826 () Bool)

(declare-fun tp!56065 () Bool)

(assert (=> b!97233 (= e!53826 tp!56065)))

(declare-fun b!97232 () Bool)

(declare-fun tp!56064 () Bool)

(declare-fun tp!56063 () Bool)

(assert (=> b!97232 (= e!53826 (and tp!56064 tp!56063))))

(assert (=> b!96620 (= tp!56007 e!53826)))

(declare-fun b!97231 () Bool)

(assert (=> b!97231 (= e!53826 tp_is_empty!741)))

(declare-fun b!97234 () Bool)

(declare-fun tp!56066 () Bool)

(declare-fun tp!56062 () Bool)

(assert (=> b!97234 (= e!53826 (and tp!56066 tp!56062))))

(assert (= (and b!96620 ((_ is ElementMatch!409) (regTwo!1330 (regex!341 (h!6960 rules!2471))))) b!97231))

(assert (= (and b!96620 ((_ is Concat!741) (regTwo!1330 (regex!341 (h!6960 rules!2471))))) b!97232))

(assert (= (and b!96620 ((_ is Star!409) (regTwo!1330 (regex!341 (h!6960 rules!2471))))) b!97233))

(assert (= (and b!96620 ((_ is Union!409) (regTwo!1330 (regex!341 (h!6960 rules!2471))))) b!97234))

(declare-fun b!97237 () Bool)

(declare-fun e!53827 () Bool)

(declare-fun tp!56070 () Bool)

(assert (=> b!97237 (= e!53827 tp!56070)))

(declare-fun b!97236 () Bool)

(declare-fun tp!56069 () Bool)

(declare-fun tp!56068 () Bool)

(assert (=> b!97236 (= e!53827 (and tp!56069 tp!56068))))

(assert (=> b!96602 (= tp!55991 e!53827)))

(declare-fun b!97235 () Bool)

(assert (=> b!97235 (= e!53827 tp_is_empty!741)))

(declare-fun b!97238 () Bool)

(declare-fun tp!56071 () Bool)

(declare-fun tp!56067 () Bool)

(assert (=> b!97238 (= e!53827 (and tp!56071 tp!56067))))

(assert (= (and b!96602 ((_ is ElementMatch!409) (regex!341 (h!6960 (t!21054 rules!2471))))) b!97235))

(assert (= (and b!96602 ((_ is Concat!741) (regex!341 (h!6960 (t!21054 rules!2471))))) b!97236))

(assert (= (and b!96602 ((_ is Star!409) (regex!341 (h!6960 (t!21054 rules!2471))))) b!97237))

(assert (= (and b!96602 ((_ is Union!409) (regex!341 (h!6960 (t!21054 rules!2471))))) b!97238))

(declare-fun b!97239 () Bool)

(declare-fun e!53828 () Bool)

(declare-fun tp!56072 () Bool)

(assert (=> b!97239 (= e!53828 (and tp_is_empty!741 tp!56072))))

(assert (=> b!96608 (= tp!55995 e!53828)))

(assert (= (and b!96608 ((_ is Cons!1560) (t!21051 (t!21051 input!2238)))) b!97239))

(declare-fun b!97242 () Bool)

(declare-fun e!53829 () Bool)

(declare-fun tp!56076 () Bool)

(assert (=> b!97242 (= e!53829 tp!56076)))

(declare-fun b!97241 () Bool)

(declare-fun tp!56075 () Bool)

(declare-fun tp!56074 () Bool)

(assert (=> b!97241 (= e!53829 (and tp!56075 tp!56074))))

(assert (=> b!96622 (= tp!56010 e!53829)))

(declare-fun b!97240 () Bool)

(assert (=> b!97240 (= e!53829 tp_is_empty!741)))

(declare-fun b!97243 () Bool)

(declare-fun tp!56077 () Bool)

(declare-fun tp!56073 () Bool)

(assert (=> b!97243 (= e!53829 (and tp!56077 tp!56073))))

(assert (= (and b!96622 ((_ is ElementMatch!409) (regOne!1331 (regex!341 (h!6960 rules!2471))))) b!97240))

(assert (= (and b!96622 ((_ is Concat!741) (regOne!1331 (regex!341 (h!6960 rules!2471))))) b!97241))

(assert (= (and b!96622 ((_ is Star!409) (regOne!1331 (regex!341 (h!6960 rules!2471))))) b!97242))

(assert (= (and b!96622 ((_ is Union!409) (regOne!1331 (regex!341 (h!6960 rules!2471))))) b!97243))

(declare-fun b!97246 () Bool)

(declare-fun e!53830 () Bool)

(declare-fun tp!56081 () Bool)

(assert (=> b!97246 (= e!53830 tp!56081)))

(declare-fun b!97245 () Bool)

(declare-fun tp!56080 () Bool)

(declare-fun tp!56079 () Bool)

(assert (=> b!97245 (= e!53830 (and tp!56080 tp!56079))))

(assert (=> b!96622 (= tp!56006 e!53830)))

(declare-fun b!97244 () Bool)

(assert (=> b!97244 (= e!53830 tp_is_empty!741)))

(declare-fun b!97247 () Bool)

(declare-fun tp!56082 () Bool)

(declare-fun tp!56078 () Bool)

(assert (=> b!97247 (= e!53830 (and tp!56082 tp!56078))))

(assert (= (and b!96622 ((_ is ElementMatch!409) (regTwo!1331 (regex!341 (h!6960 rules!2471))))) b!97244))

(assert (= (and b!96622 ((_ is Concat!741) (regTwo!1331 (regex!341 (h!6960 rules!2471))))) b!97245))

(assert (= (and b!96622 ((_ is Star!409) (regTwo!1331 (regex!341 (h!6960 rules!2471))))) b!97246))

(assert (= (and b!96622 ((_ is Union!409) (regTwo!1331 (regex!341 (h!6960 rules!2471))))) b!97247))

(declare-fun b!97250 () Bool)

(declare-fun b_free!2881 () Bool)

(declare-fun b_next!2881 () Bool)

(assert (=> b!97250 (= b_free!2881 (not b_next!2881))))

(declare-fun tb!2983 () Bool)

(declare-fun t!21084 () Bool)

(assert (=> (and b!97250 (= (toValue!884 (transformation!341 (h!6960 (t!21054 (t!21054 rules!2471))))) (toValue!884 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21084) tb!2983))

(declare-fun result!4288 () Bool)

(assert (= result!4288 result!4282))

(assert (=> d!22322 t!21084))

(declare-fun tp!56086 () Bool)

(declare-fun b_and!4347 () Bool)

(assert (=> b!97250 (= tp!56086 (and (=> t!21084 result!4288) b_and!4347))))

(declare-fun b_free!2883 () Bool)

(declare-fun b_next!2883 () Bool)

(assert (=> b!97250 (= b_free!2883 (not b_next!2883))))

(declare-fun t!21086 () Bool)

(declare-fun tb!2985 () Bool)

(assert (=> (and b!97250 (= (toChars!743 (transformation!341 (h!6960 (t!21054 (t!21054 rules!2471))))) (toChars!743 (transformation!341 (rule!840 (_1!1040 (get!398 lt!25027)))))) t!21086) tb!2985))

(declare-fun result!4290 () Bool)

(assert (= result!4290 result!4260))

(assert (=> d!22142 t!21086))

(declare-fun tp!56083 () Bool)

(declare-fun b_and!4349 () Bool)

(assert (=> b!97250 (= tp!56083 (and (=> t!21086 result!4290) b_and!4349))))

(declare-fun e!53831 () Bool)

(assert (=> b!97250 (= e!53831 (and tp!56086 tp!56083))))

(declare-fun e!53832 () Bool)

(declare-fun tp!56085 () Bool)

(declare-fun b!97249 () Bool)

(assert (=> b!97249 (= e!53832 (and tp!56085 (inv!1910 (tag!519 (h!6960 (t!21054 (t!21054 rules!2471))))) (inv!1912 (transformation!341 (h!6960 (t!21054 (t!21054 rules!2471))))) e!53831))))

(declare-fun b!97248 () Bool)

(declare-fun e!53833 () Bool)

(declare-fun tp!56084 () Bool)

(assert (=> b!97248 (= e!53833 (and e!53832 tp!56084))))

(assert (=> b!96601 (= tp!55990 e!53833)))

(assert (= b!97249 b!97250))

(assert (= b!97248 b!97249))

(assert (= (and b!96601 ((_ is Cons!1563) (t!21054 (t!21054 rules!2471)))) b!97248))

(declare-fun m!81290 () Bool)

(assert (=> b!97249 m!81290))

(declare-fun m!81292 () Bool)

(assert (=> b!97249 m!81292))

(check-sat (not b!97216) tp_is_empty!741 (not b!96947) (not b!96966) (not b!97239) (not d!22126) (not d!22066) (not b!97217) (not b!97234) (not b!97219) (not b!96965) (not b!97101) (not d!22240) (not b!97218) (not b!96945) (not d!22310) (not bm!4367) (not d!22174) (not b!96972) (not b!97248) (not b!96814) (not b!96779) (not b!97246) (not b!96801) (not b!96695) (not d!22152) (not b!96946) (not b!96799) (not b_next!2867) (not b!96793) (not b!97206) (not b!97242) (not b!96808) (not b!97193) (not b!97229) (not b!96658) (not d!22062) (not b!97191) (not b!96968) (not d!22072) (not b!97221) (not b!96986) (not b!96653) (not b!96768) (not b!96874) (not b!97103) (not b!96948) (not b_next!2873) (not b!96675) (not d!22068) (not b!96943) (not d!22300) (not b!97107) (not d!22074) (not b!96683) (not b!97205) (not b!96817) (not d!22316) (not b_lambda!1119) (not b!96869) (not b!96701) (not b!97212) (not d!22230) (not d!22078) (not d!22280) (not d!22328) (not b!96703) (not b!97232) (not b!97222) (not b!97230) (not b!97249) (not d!22172) (not b!96867) (not d!22060) (not bm!4366) (not d!22058) (not b!96778) (not d!22284) (not b!96816) (not b!96950) (not d!22118) (not d!22146) (not d!22140) (not b!97199) (not d!22114) (not b!96978) (not b!97237) (not d!22050) (not b!97214) (not b!96677) (not b_next!2881) (not d!22320) (not b!96961) (not d!22112) (not b!97105) (not d!22046) (not d!22290) (not b!97187) (not b!96766) (not b!96682) (not b!97245) (not b!96984) b_and!4349 (not b!96785) (not b!97225) (not b!96866) (not b!97238) (not b!96641) (not d!22142) (not b!97188) (not d!22132) (not b!96780) (not d!22150) (not d!22076) (not b!96979) (not b!96970) (not b!97247) (not b!96791) b_and!4327 (not b!97224) (not b!97226) (not d!22148) (not d!22124) (not b!96696) (not b!97228) (not b!97241) (not b_next!2875) (not b!96982) (not b!97195) (not d!22052) (not b!97215) (not tb!2979) (not d!22324) (not b!97156) b_and!4347 b_and!4343 (not b!96949) (not d!22286) (not b!96944) (not b!97233) (not b!96974) (not b!96792) (not d!22326) (not b!96803) (not b_next!2883) b_and!4329 (not b!96764) (not b!96652) (not b!97236) (not d!22130) (not b!96698) (not b!96786) (not b!97213) (not d!22056) (not b!97158) (not d!22042) (not d!22282) (not d!22232) (not b!96700) (not tb!2963) (not b!96962) (not d!22278) (not b!97209) (not b!96870) (not b!96975) (not d!22332) (not b_lambda!1113) (not b_next!2865) (not b!97243) b_and!4345 (not d!22318) (not b!97100) (not d!22070) (not b!97208))
(check-sat (not b_next!2867) (not b_next!2873) (not b_next!2881) b_and!4349 b_and!4327 (not b_next!2875) b_and!4343 b_and!4347 (not b_next!2883) b_and!4329 (not b_next!2865) b_and!4345)
