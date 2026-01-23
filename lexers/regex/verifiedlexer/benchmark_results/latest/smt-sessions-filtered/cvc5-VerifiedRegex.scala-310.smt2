; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!9300 () Bool)

(assert start!9300)

(declare-fun b!98906 () Bool)

(declare-fun b_free!2965 () Bool)

(declare-fun b_next!2965 () Bool)

(assert (=> b!98906 (= b_free!2965 (not b_next!2965))))

(declare-fun tp!56617 () Bool)

(declare-fun b_and!4447 () Bool)

(assert (=> b!98906 (= tp!56617 b_and!4447)))

(declare-fun b_free!2967 () Bool)

(declare-fun b_next!2967 () Bool)

(assert (=> b!98906 (= b_free!2967 (not b_next!2967))))

(declare-fun tp!56615 () Bool)

(declare-fun b_and!4449 () Bool)

(assert (=> b!98906 (= tp!56615 b_and!4449)))

(declare-fun b!98901 () Bool)

(declare-fun res!48097 () Bool)

(declare-fun e!54827 () Bool)

(assert (=> b!98901 (=> (not res!48097) (not e!54827))))

(declare-datatypes ((LexerInterface!242 0))(
  ( (LexerInterfaceExt!239 (__x!1775 Int)) (Lexer!240) )
))
(declare-fun thiss!19403 () LexerInterface!242)

(declare-datatypes ((C!1758 0))(
  ( (C!1759 (val!486 Int)) )
))
(declare-datatypes ((List!1610 0))(
  ( (Nil!1604) (Cons!1604 (h!7001 C!1758) (t!21171 List!1610)) )
))
(declare-datatypes ((IArray!1001 0))(
  ( (IArray!1002 (innerList!558 List!1610)) )
))
(declare-datatypes ((Conc!500 0))(
  ( (Node!500 (left!1224 Conc!500) (right!1554 Conc!500) (csize!1230 Int) (cheight!711 Int)) (Leaf!811 (xs!3087 IArray!1001) (csize!1231 Int)) (Empty!500) )
))
(declare-datatypes ((BalanceConc!1004 0))(
  ( (BalanceConc!1005 (c!24158 Conc!500)) )
))
(declare-datatypes ((Regex!418 0))(
  ( (ElementMatch!418 (c!24159 C!1758)) (Concat!758 (regOne!1348 Regex!418) (regTwo!1348 Regex!418)) (EmptyExpr!418) (Star!418 (reg!747 Regex!418)) (EmptyLang!418) (Union!418 (regOne!1349 Regex!418) (regTwo!1349 Regex!418)) )
))
(declare-datatypes ((String!2093 0))(
  ( (String!2094 (value!12844 String)) )
))
(declare-datatypes ((List!1611 0))(
  ( (Nil!1605) (Cons!1605 (h!7002 (_ BitVec 16)) (t!21172 List!1611)) )
))
(declare-datatypes ((TokenValue!340 0))(
  ( (FloatLiteralValue!680 (text!2825 List!1611)) (TokenValueExt!339 (__x!1776 Int)) (Broken!1700 (value!12845 List!1611)) (Object!345) (End!340) (Def!340) (Underscore!340) (Match!340) (Else!340) (Error!340) (Case!340) (If!340) (Extends!340) (Abstract!340) (Class!340) (Val!340) (DelimiterValue!680 (del!400 List!1611)) (KeywordValue!346 (value!12846 List!1611)) (CommentValue!680 (value!12847 List!1611)) (WhitespaceValue!680 (value!12848 List!1611)) (IndentationValue!340 (value!12849 List!1611)) (String!2095) (Int32!340) (Broken!1701 (value!12850 List!1611)) (Boolean!341) (Unit!1060) (OperatorValue!343 (op!400 List!1611)) (IdentifierValue!680 (value!12851 List!1611)) (IdentifierValue!681 (value!12852 List!1611)) (WhitespaceValue!681 (value!12853 List!1611)) (True!680) (False!680) (Broken!1702 (value!12854 List!1611)) (Broken!1703 (value!12855 List!1611)) (True!681) (RightBrace!340) (RightBracket!340) (Colon!340) (Null!340) (Comma!340) (LeftBracket!340) (False!681) (LeftBrace!340) (ImaginaryLiteralValue!340 (text!2826 List!1611)) (StringLiteralValue!1020 (value!12856 List!1611)) (EOFValue!340 (value!12857 List!1611)) (IdentValue!340 (value!12858 List!1611)) (DelimiterValue!681 (value!12859 List!1611)) (DedentValue!340 (value!12860 List!1611)) (NewLineValue!340 (value!12861 List!1611)) (IntegerValue!1020 (value!12862 (_ BitVec 32)) (text!2827 List!1611)) (IntegerValue!1021 (value!12863 Int) (text!2828 List!1611)) (Times!340) (Or!340) (Equal!340) (Minus!340) (Broken!1704 (value!12864 List!1611)) (And!340) (Div!340) (LessEqual!340) (Mod!340) (Concat!759) (Not!340) (Plus!340) (SpaceValue!340 (value!12865 List!1611)) (IntegerValue!1022 (value!12866 Int) (text!2829 List!1611)) (StringLiteralValue!1021 (text!2830 List!1611)) (FloatLiteralValue!681 (text!2831 List!1611)) (BytesLiteralValue!340 (value!12867 List!1611)) (CommentValue!681 (value!12868 List!1611)) (StringLiteralValue!1022 (value!12869 List!1611)) (ErrorTokenValue!340 (msg!401 List!1611)) )
))
(declare-datatypes ((TokenValueInjection!504 0))(
  ( (TokenValueInjection!505 (toValue!909 Int) (toChars!768 Int)) )
))
(declare-datatypes ((Rule!500 0))(
  ( (Rule!501 (regex!350 Regex!418) (tag!528 String!2093) (isSeparator!350 Bool) (transformation!350 TokenValueInjection!504)) )
))
(declare-datatypes ((List!1612 0))(
  ( (Nil!1606) (Cons!1606 (h!7003 Rule!500) (t!21173 List!1612)) )
))
(declare-fun rules!2471 () List!1612)

(declare-fun rulesInvariant!236 (LexerInterface!242 List!1612) Bool)

(assert (=> b!98901 (= res!48097 (rulesInvariant!236 thiss!19403 rules!2471))))

(declare-fun b!98902 () Bool)

(declare-fun e!54829 () Bool)

(declare-fun e!54832 () Bool)

(declare-fun tp!56613 () Bool)

(declare-fun inv!1941 (String!2093) Bool)

(declare-fun inv!1944 (TokenValueInjection!504) Bool)

(assert (=> b!98902 (= e!54829 (and tp!56613 (inv!1941 (tag!528 (h!7003 rules!2471))) (inv!1944 (transformation!350 (h!7003 rules!2471))) e!54832))))

(declare-fun b!98904 () Bool)

(declare-fun e!54830 () Bool)

(declare-datatypes ((Token!456 0))(
  ( (Token!457 (value!12870 TokenValue!340) (rule!853 Rule!500) (size!1415 Int) (originalCharacters!399 List!1610)) )
))
(declare-datatypes ((List!1613 0))(
  ( (Nil!1607) (Cons!1607 (h!7004 Token!456) (t!21174 List!1613)) )
))
(declare-fun lt!26725 () List!1613)

(declare-fun size!1416 (List!1613) Int)

(assert (=> b!98904 (= e!54830 (not (> (size!1416 lt!26725) 0)))))

(declare-fun lt!26726 () List!1610)

(declare-datatypes ((IArray!1003 0))(
  ( (IArray!1004 (innerList!559 List!1613)) )
))
(declare-datatypes ((Conc!501 0))(
  ( (Node!501 (left!1225 Conc!501) (right!1555 Conc!501) (csize!1232 Int) (cheight!712 Int)) (Leaf!812 (xs!3088 IArray!1003) (csize!1233 Int)) (Empty!501) )
))
(declare-datatypes ((BalanceConc!1006 0))(
  ( (BalanceConc!1007 (c!24160 Conc!501)) )
))
(declare-datatypes ((tuple2!1740 0))(
  ( (tuple2!1741 (_1!1077 BalanceConc!1006) (_2!1077 BalanceConc!1004)) )
))
(declare-fun lt!26723 () tuple2!1740)

(declare-fun list!640 (BalanceConc!1004) List!1610)

(assert (=> b!98904 (= lt!26726 (list!640 (_2!1077 lt!26723)))))

(declare-fun lt!26724 () tuple2!1740)

(declare-datatypes ((tuple2!1742 0))(
  ( (tuple2!1743 (_1!1078 Token!456) (_2!1078 List!1610)) )
))
(declare-fun lt!26730 () tuple2!1742)

(declare-fun ++!239 (List!1610 List!1610) List!1610)

(declare-fun print!73 (LexerInterface!242 BalanceConc!1006) BalanceConc!1004)

(assert (=> b!98904 (= (++!239 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))) (list!640 (_2!1077 lt!26724))) (_2!1078 lt!26730))))

(declare-fun lex!148 (LexerInterface!242 List!1612 BalanceConc!1004) tuple2!1740)

(declare-fun seqFromList!194 (List!1610) BalanceConc!1004)

(assert (=> b!98904 (= lt!26724 (lex!148 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))))))

(declare-datatypes ((Unit!1061 0))(
  ( (Unit!1062) )
))
(declare-fun lt!26729 () Unit!1061)

(declare-fun theoremInvertFromString!47 (LexerInterface!242 List!1612 List!1610) Unit!1061)

(assert (=> b!98904 (= lt!26729 (theoremInvertFromString!47 thiss!19403 rules!2471 (_2!1078 lt!26730)))))

(declare-fun input!2238 () List!1610)

(declare-datatypes ((Option!175 0))(
  ( (None!174) (Some!174 (v!12953 tuple2!1742)) )
))
(declare-fun get!408 (Option!175) tuple2!1742)

(declare-fun maxPrefix!82 (LexerInterface!242 List!1612 List!1610) Option!175)

(assert (=> b!98904 (= lt!26730 (get!408 (maxPrefix!82 thiss!19403 rules!2471 input!2238)))))

(declare-fun list!641 (BalanceConc!1006) List!1613)

(declare-fun prepend!120 (BalanceConc!1006 Token!456) BalanceConc!1006)

(declare-fun seqFromList!195 (List!1613) BalanceConc!1006)

(assert (=> b!98904 (= lt!26725 (list!641 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))))))

(declare-fun lt!26727 () Unit!1061)

(declare-fun seqFromListBHdTlConstructive!55 (Token!456 List!1613 BalanceConc!1006) Unit!1061)

(assert (=> b!98904 (= lt!26727 (seqFromListBHdTlConstructive!55 (h!7004 lt!26725) (t!21174 lt!26725) (_1!1077 lt!26723)))))

(declare-fun b!98905 () Bool)

(declare-fun e!54831 () Bool)

(declare-fun tp_is_empty!759 () Bool)

(declare-fun tp!56616 () Bool)

(assert (=> b!98905 (= e!54831 (and tp_is_empty!759 tp!56616))))

(assert (=> b!98906 (= e!54832 (and tp!56617 tp!56615))))

(declare-fun b!98907 () Bool)

(declare-fun e!54825 () Bool)

(assert (=> b!98907 (= e!54825 e!54830)))

(declare-fun res!48098 () Bool)

(assert (=> b!98907 (=> (not res!48098) (not e!54830))))

(declare-fun lt!26728 () Bool)

(assert (=> b!98907 (= res!48098 (and (or lt!26728 (not (is-Nil!1607 (t!21174 lt!26725)))) (not lt!26728)))))

(assert (=> b!98907 (= lt!26728 (not (is-Cons!1607 lt!26725)))))

(assert (=> b!98907 (= lt!26725 (list!641 (_1!1077 lt!26723)))))

(declare-fun res!48095 () Bool)

(assert (=> start!9300 (=> (not res!48095) (not e!54827))))

(assert (=> start!9300 (= res!48095 (is-Lexer!240 thiss!19403))))

(assert (=> start!9300 e!54827))

(assert (=> start!9300 true))

(declare-fun e!54828 () Bool)

(assert (=> start!9300 e!54828))

(assert (=> start!9300 e!54831))

(declare-fun b!98903 () Bool)

(assert (=> b!98903 (= e!54827 e!54825)))

(declare-fun res!48094 () Bool)

(assert (=> b!98903 (=> (not res!48094) (not e!54825))))

(declare-fun isEmpty!695 (BalanceConc!1004) Bool)

(assert (=> b!98903 (= res!48094 (not (isEmpty!695 (_2!1077 lt!26723))))))

(assert (=> b!98903 (= lt!26723 (lex!148 thiss!19403 rules!2471 (seqFromList!194 input!2238)))))

(declare-fun b!98908 () Bool)

(declare-fun tp!56614 () Bool)

(assert (=> b!98908 (= e!54828 (and e!54829 tp!56614))))

(declare-fun b!98909 () Bool)

(declare-fun res!48096 () Bool)

(assert (=> b!98909 (=> (not res!48096) (not e!54827))))

(declare-fun isEmpty!696 (List!1612) Bool)

(assert (=> b!98909 (= res!48096 (not (isEmpty!696 rules!2471)))))

(assert (= (and start!9300 res!48095) b!98909))

(assert (= (and b!98909 res!48096) b!98901))

(assert (= (and b!98901 res!48097) b!98903))

(assert (= (and b!98903 res!48094) b!98907))

(assert (= (and b!98907 res!48098) b!98904))

(assert (= b!98902 b!98906))

(assert (= b!98908 b!98902))

(assert (= (and start!9300 (is-Cons!1606 rules!2471)) b!98908))

(assert (= (and start!9300 (is-Cons!1604 input!2238)) b!98905))

(declare-fun m!83462 () Bool)

(assert (=> b!98902 m!83462))

(declare-fun m!83464 () Bool)

(assert (=> b!98902 m!83464))

(declare-fun m!83466 () Bool)

(assert (=> b!98901 m!83466))

(declare-fun m!83468 () Bool)

(assert (=> b!98903 m!83468))

(declare-fun m!83470 () Bool)

(assert (=> b!98903 m!83470))

(assert (=> b!98903 m!83470))

(declare-fun m!83472 () Bool)

(assert (=> b!98903 m!83472))

(declare-fun m!83474 () Bool)

(assert (=> b!98904 m!83474))

(declare-fun m!83476 () Bool)

(assert (=> b!98904 m!83476))

(declare-fun m!83478 () Bool)

(assert (=> b!98904 m!83478))

(declare-fun m!83480 () Bool)

(assert (=> b!98904 m!83480))

(declare-fun m!83482 () Bool)

(assert (=> b!98904 m!83482))

(declare-fun m!83484 () Bool)

(assert (=> b!98904 m!83484))

(declare-fun m!83486 () Bool)

(assert (=> b!98904 m!83486))

(declare-fun m!83488 () Bool)

(assert (=> b!98904 m!83488))

(declare-fun m!83490 () Bool)

(assert (=> b!98904 m!83490))

(declare-fun m!83492 () Bool)

(assert (=> b!98904 m!83492))

(declare-fun m!83494 () Bool)

(assert (=> b!98904 m!83494))

(declare-fun m!83496 () Bool)

(assert (=> b!98904 m!83496))

(assert (=> b!98904 m!83494))

(declare-fun m!83498 () Bool)

(assert (=> b!98904 m!83498))

(assert (=> b!98904 m!83496))

(assert (=> b!98904 m!83484))

(assert (=> b!98904 m!83498))

(assert (=> b!98904 m!83488))

(declare-fun m!83500 () Bool)

(assert (=> b!98904 m!83500))

(declare-fun m!83502 () Bool)

(assert (=> b!98904 m!83502))

(assert (=> b!98904 m!83476))

(assert (=> b!98904 m!83480))

(declare-fun m!83504 () Bool)

(assert (=> b!98907 m!83504))

(declare-fun m!83506 () Bool)

(assert (=> b!98909 m!83506))

(push 1)

(assert b_and!4447)

(assert (not b_next!2967))

(assert (not b!98905))

(assert b_and!4449)

(assert (not b!98909))

(assert (not b!98902))

(assert (not b!98907))

(assert (not b!98904))

(assert (not b!98901))

(assert (not b_next!2965))

(assert (not b!98903))

(assert (not b!98908))

(assert tp_is_empty!759)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4449)

(assert b_and!4447)

(assert (not b_next!2967))

(assert (not b_next!2965))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!98955 () Bool)

(declare-fun e!54863 () Bool)

(declare-fun lt!26767 () Option!175)

(declare-fun contains!256 (List!1612 Rule!500) Bool)

(assert (=> b!98955 (= e!54863 (contains!256 rules!2471 (rule!853 (_1!1078 (get!408 lt!26767)))))))

(declare-fun bm!4384 () Bool)

(declare-fun call!4389 () Option!175)

(declare-fun maxPrefixOneRule!38 (LexerInterface!242 Rule!500 List!1610) Option!175)

(assert (=> bm!4384 (= call!4389 (maxPrefixOneRule!38 thiss!19403 (h!7003 rules!2471) input!2238))))

(declare-fun b!98956 () Bool)

(declare-fun res!48137 () Bool)

(assert (=> b!98956 (=> (not res!48137) (not e!54863))))

(declare-fun size!1419 (List!1610) Int)

(assert (=> b!98956 (= res!48137 (< (size!1419 (_2!1078 (get!408 lt!26767))) (size!1419 input!2238)))))

(declare-fun b!98957 () Bool)

(declare-fun e!54864 () Option!175)

(declare-fun lt!26766 () Option!175)

(declare-fun lt!26769 () Option!175)

(assert (=> b!98957 (= e!54864 (ite (and (is-None!174 lt!26766) (is-None!174 lt!26769)) None!174 (ite (is-None!174 lt!26769) lt!26766 (ite (is-None!174 lt!26766) lt!26769 (ite (>= (size!1415 (_1!1078 (v!12953 lt!26766))) (size!1415 (_1!1078 (v!12953 lt!26769)))) lt!26766 lt!26769)))))))

(assert (=> b!98957 (= lt!26766 call!4389)))

(assert (=> b!98957 (= lt!26769 (maxPrefix!82 thiss!19403 (t!21173 rules!2471) input!2238))))

(declare-fun b!98958 () Bool)

(declare-fun res!48136 () Bool)

(assert (=> b!98958 (=> (not res!48136) (not e!54863))))

(declare-fun matchR!42 (Regex!418 List!1610) Bool)

(declare-fun charsOf!81 (Token!456) BalanceConc!1004)

(assert (=> b!98958 (= res!48136 (matchR!42 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))) (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))

(declare-fun d!22899 () Bool)

(declare-fun e!54865 () Bool)

(assert (=> d!22899 e!54865))

(declare-fun res!48140 () Bool)

(assert (=> d!22899 (=> res!48140 e!54865)))

(declare-fun isEmpty!699 (Option!175) Bool)

(assert (=> d!22899 (= res!48140 (isEmpty!699 lt!26767))))

(assert (=> d!22899 (= lt!26767 e!54864)))

(declare-fun c!24167 () Bool)

(assert (=> d!22899 (= c!24167 (and (is-Cons!1606 rules!2471) (is-Nil!1606 (t!21173 rules!2471))))))

(declare-fun lt!26765 () Unit!1061)

(declare-fun lt!26768 () Unit!1061)

(assert (=> d!22899 (= lt!26765 lt!26768)))

(declare-fun isPrefix!40 (List!1610 List!1610) Bool)

(assert (=> d!22899 (isPrefix!40 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!40 (List!1610 List!1610) Unit!1061)

(assert (=> d!22899 (= lt!26768 (lemmaIsPrefixRefl!40 input!2238 input!2238))))

(declare-fun rulesValidInductive!69 (LexerInterface!242 List!1612) Bool)

(assert (=> d!22899 (rulesValidInductive!69 thiss!19403 rules!2471)))

(assert (=> d!22899 (= (maxPrefix!82 thiss!19403 rules!2471 input!2238) lt!26767)))

(declare-fun b!98959 () Bool)

(declare-fun res!48141 () Bool)

(assert (=> b!98959 (=> (not res!48141) (not e!54863))))

(assert (=> b!98959 (= res!48141 (= (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))) (originalCharacters!399 (_1!1078 (get!408 lt!26767)))))))

(declare-fun b!98960 () Bool)

(assert (=> b!98960 (= e!54864 call!4389)))

(declare-fun b!98961 () Bool)

(declare-fun res!48138 () Bool)

(assert (=> b!98961 (=> (not res!48138) (not e!54863))))

(assert (=> b!98961 (= res!48138 (= (++!239 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))) (_2!1078 (get!408 lt!26767))) input!2238))))

(declare-fun b!98962 () Bool)

(declare-fun res!48142 () Bool)

(assert (=> b!98962 (=> (not res!48142) (not e!54863))))

(declare-fun apply!254 (TokenValueInjection!504 BalanceConc!1004) TokenValue!340)

(assert (=> b!98962 (= res!48142 (= (value!12870 (_1!1078 (get!408 lt!26767))) (apply!254 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun b!98963 () Bool)

(assert (=> b!98963 (= e!54865 e!54863)))

(declare-fun res!48139 () Bool)

(assert (=> b!98963 (=> (not res!48139) (not e!54863))))

(declare-fun isDefined!53 (Option!175) Bool)

(assert (=> b!98963 (= res!48139 (isDefined!53 lt!26767))))

(assert (= (and d!22899 c!24167) b!98960))

(assert (= (and d!22899 (not c!24167)) b!98957))

(assert (= (or b!98960 b!98957) bm!4384))

(assert (= (and d!22899 (not res!48140)) b!98963))

(assert (= (and b!98963 res!48139) b!98959))

(assert (= (and b!98959 res!48141) b!98956))

(assert (= (and b!98956 res!48137) b!98961))

(assert (= (and b!98961 res!48138) b!98962))

(assert (= (and b!98962 res!48142) b!98958))

(assert (= (and b!98958 res!48136) b!98955))

(declare-fun m!83554 () Bool)

(assert (=> b!98962 m!83554))

(declare-fun m!83556 () Bool)

(assert (=> b!98962 m!83556))

(assert (=> b!98962 m!83556))

(declare-fun m!83558 () Bool)

(assert (=> b!98962 m!83558))

(assert (=> b!98955 m!83554))

(declare-fun m!83560 () Bool)

(assert (=> b!98955 m!83560))

(declare-fun m!83562 () Bool)

(assert (=> b!98957 m!83562))

(assert (=> b!98958 m!83554))

(declare-fun m!83564 () Bool)

(assert (=> b!98958 m!83564))

(assert (=> b!98958 m!83564))

(declare-fun m!83566 () Bool)

(assert (=> b!98958 m!83566))

(assert (=> b!98958 m!83566))

(declare-fun m!83568 () Bool)

(assert (=> b!98958 m!83568))

(assert (=> b!98961 m!83554))

(assert (=> b!98961 m!83564))

(assert (=> b!98961 m!83564))

(assert (=> b!98961 m!83566))

(assert (=> b!98961 m!83566))

(declare-fun m!83570 () Bool)

(assert (=> b!98961 m!83570))

(declare-fun m!83572 () Bool)

(assert (=> bm!4384 m!83572))

(declare-fun m!83574 () Bool)

(assert (=> b!98963 m!83574))

(assert (=> b!98956 m!83554))

(declare-fun m!83576 () Bool)

(assert (=> b!98956 m!83576))

(declare-fun m!83578 () Bool)

(assert (=> b!98956 m!83578))

(declare-fun m!83580 () Bool)

(assert (=> d!22899 m!83580))

(declare-fun m!83582 () Bool)

(assert (=> d!22899 m!83582))

(declare-fun m!83584 () Bool)

(assert (=> d!22899 m!83584))

(declare-fun m!83586 () Bool)

(assert (=> d!22899 m!83586))

(assert (=> b!98959 m!83554))

(assert (=> b!98959 m!83564))

(assert (=> b!98959 m!83564))

(assert (=> b!98959 m!83566))

(assert (=> b!98904 d!22899))

(declare-fun d!22901 () Bool)

(assert (=> d!22901 (= (list!641 (_1!1077 lt!26723)) (list!641 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))))))

(declare-fun lt!26772 () Unit!1061)

(declare-fun choose!1377 (Token!456 List!1613 BalanceConc!1006) Unit!1061)

(assert (=> d!22901 (= lt!26772 (choose!1377 (h!7004 lt!26725) (t!21174 lt!26725) (_1!1077 lt!26723)))))

(declare-fun $colon$colon!35 (List!1613 Token!456) List!1613)

(assert (=> d!22901 (= (list!641 (_1!1077 lt!26723)) (list!641 (seqFromList!195 ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725)))))))

(assert (=> d!22901 (= (seqFromListBHdTlConstructive!55 (h!7004 lt!26725) (t!21174 lt!26725) (_1!1077 lt!26723)) lt!26772)))

(declare-fun bs!9685 () Bool)

(assert (= bs!9685 d!22901))

(declare-fun m!83588 () Bool)

(assert (=> bs!9685 m!83588))

(assert (=> bs!9685 m!83504))

(assert (=> bs!9685 m!83496))

(assert (=> bs!9685 m!83484))

(assert (=> bs!9685 m!83496))

(assert (=> bs!9685 m!83588))

(declare-fun m!83590 () Bool)

(assert (=> bs!9685 m!83590))

(assert (=> bs!9685 m!83484))

(assert (=> bs!9685 m!83486))

(assert (=> bs!9685 m!83590))

(declare-fun m!83592 () Bool)

(assert (=> bs!9685 m!83592))

(declare-fun m!83594 () Bool)

(assert (=> bs!9685 m!83594))

(assert (=> b!98904 d!22901))

(declare-fun d!22905 () Bool)

(declare-fun fromListB!86 (List!1613) BalanceConc!1006)

(assert (=> d!22905 (= (seqFromList!195 (t!21174 lt!26725)) (fromListB!86 (t!21174 lt!26725)))))

(declare-fun bs!9686 () Bool)

(assert (= bs!9686 d!22905))

(declare-fun m!83596 () Bool)

(assert (=> bs!9686 m!83596))

(assert (=> b!98904 d!22905))

(declare-fun d!22907 () Bool)

(declare-fun list!644 (Conc!500) List!1610)

(assert (=> d!22907 (= (list!640 (_2!1077 lt!26723)) (list!644 (c!24158 (_2!1077 lt!26723))))))

(declare-fun bs!9688 () Bool)

(assert (= bs!9688 d!22907))

(declare-fun m!83602 () Bool)

(assert (=> bs!9688 m!83602))

(assert (=> b!98904 d!22907))

(declare-fun d!22911 () Bool)

(declare-fun e!54874 () Bool)

(assert (=> d!22911 e!54874))

(declare-fun res!48149 () Bool)

(assert (=> d!22911 (=> (not res!48149) (not e!54874))))

(declare-fun e!54872 () Bool)

(assert (=> d!22911 (= res!48149 e!54872)))

(declare-fun c!24170 () Bool)

(declare-fun lt!26778 () tuple2!1740)

(declare-fun size!1420 (BalanceConc!1006) Int)

(assert (=> d!22911 (= c!24170 (> (size!1420 (_1!1077 lt!26778)) 0))))

(declare-fun lexTailRecV2!67 (LexerInterface!242 List!1612 BalanceConc!1004 BalanceConc!1004 BalanceConc!1004 BalanceConc!1006) tuple2!1740)

(assert (=> d!22911 (= lt!26778 (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)) (BalanceConc!1005 Empty!500) (seqFromList!194 (_2!1078 lt!26730)) (BalanceConc!1007 Empty!501)))))

(assert (=> d!22911 (= (lex!148 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))) lt!26778)))

(declare-fun b!98974 () Bool)

(declare-datatypes ((tuple2!1748 0))(
  ( (tuple2!1749 (_1!1081 List!1613) (_2!1081 List!1610)) )
))
(declare-fun lexList!70 (LexerInterface!242 List!1612 List!1610) tuple2!1748)

(assert (=> b!98974 (= e!54874 (= (list!640 (_2!1077 lt!26778)) (_2!1081 (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))))

(declare-fun b!98975 () Bool)

(declare-fun res!48150 () Bool)

(assert (=> b!98975 (=> (not res!48150) (not e!54874))))

(assert (=> b!98975 (= res!48150 (= (list!641 (_1!1077 lt!26778)) (_1!1081 (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))))

(declare-fun b!98976 () Bool)

(declare-fun e!54873 () Bool)

(declare-fun isEmpty!700 (BalanceConc!1006) Bool)

(assert (=> b!98976 (= e!54873 (not (isEmpty!700 (_1!1077 lt!26778))))))

(declare-fun b!98977 () Bool)

(assert (=> b!98977 (= e!54872 e!54873)))

(declare-fun res!48151 () Bool)

(declare-fun size!1421 (BalanceConc!1004) Int)

(assert (=> b!98977 (= res!48151 (< (size!1421 (_2!1077 lt!26778)) (size!1421 (seqFromList!194 (_2!1078 lt!26730)))))))

(assert (=> b!98977 (=> (not res!48151) (not e!54873))))

(declare-fun b!98978 () Bool)

(assert (=> b!98978 (= e!54872 (= (_2!1077 lt!26778) (seqFromList!194 (_2!1078 lt!26730))))))

(assert (= (and d!22911 c!24170) b!98977))

(assert (= (and d!22911 (not c!24170)) b!98978))

(assert (= (and b!98977 res!48151) b!98976))

(assert (= (and d!22911 res!48149) b!98975))

(assert (= (and b!98975 res!48150) b!98974))

(declare-fun m!83604 () Bool)

(assert (=> b!98974 m!83604))

(assert (=> b!98974 m!83480))

(declare-fun m!83606 () Bool)

(assert (=> b!98974 m!83606))

(assert (=> b!98974 m!83606))

(declare-fun m!83608 () Bool)

(assert (=> b!98974 m!83608))

(declare-fun m!83610 () Bool)

(assert (=> b!98976 m!83610))

(declare-fun m!83612 () Bool)

(assert (=> d!22911 m!83612))

(assert (=> d!22911 m!83480))

(assert (=> d!22911 m!83480))

(declare-fun m!83614 () Bool)

(assert (=> d!22911 m!83614))

(declare-fun m!83616 () Bool)

(assert (=> b!98977 m!83616))

(assert (=> b!98977 m!83480))

(declare-fun m!83618 () Bool)

(assert (=> b!98977 m!83618))

(declare-fun m!83620 () Bool)

(assert (=> b!98975 m!83620))

(assert (=> b!98975 m!83480))

(assert (=> b!98975 m!83606))

(assert (=> b!98975 m!83606))

(assert (=> b!98975 m!83608))

(assert (=> b!98904 d!22911))

(declare-fun d!22913 () Bool)

(declare-fun fromListB!87 (List!1610) BalanceConc!1004)

(assert (=> d!22913 (= (seqFromList!194 (_2!1078 lt!26730)) (fromListB!87 (_2!1078 lt!26730)))))

(declare-fun bs!9689 () Bool)

(assert (= bs!9689 d!22913))

(declare-fun m!83622 () Bool)

(assert (=> bs!9689 m!83622))

(assert (=> b!98904 d!22913))

(declare-fun d!22915 () Bool)

(declare-fun lt!26784 () tuple2!1740)

(assert (=> d!22915 (= (++!239 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784))) (list!640 (_2!1077 lt!26784))) (_2!1078 lt!26730))))

(assert (=> d!22915 (= lt!26784 (lex!148 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))))))

(declare-fun lt!26783 () Unit!1061)

(declare-fun choose!1378 (LexerInterface!242 List!1612 List!1610) Unit!1061)

(assert (=> d!22915 (= lt!26783 (choose!1378 thiss!19403 rules!2471 (_2!1078 lt!26730)))))

(assert (=> d!22915 (not (isEmpty!696 rules!2471))))

(assert (=> d!22915 (= (theoremInvertFromString!47 thiss!19403 rules!2471 (_2!1078 lt!26730)) lt!26783)))

(declare-fun bs!9690 () Bool)

(assert (= bs!9690 d!22915))

(declare-fun m!83624 () Bool)

(assert (=> bs!9690 m!83624))

(assert (=> bs!9690 m!83506))

(declare-fun m!83626 () Bool)

(assert (=> bs!9690 m!83626))

(declare-fun m!83628 () Bool)

(assert (=> bs!9690 m!83628))

(assert (=> bs!9690 m!83480))

(assert (=> bs!9690 m!83482))

(assert (=> bs!9690 m!83626))

(declare-fun m!83630 () Bool)

(assert (=> bs!9690 m!83630))

(assert (=> bs!9690 m!83628))

(assert (=> bs!9690 m!83630))

(declare-fun m!83632 () Bool)

(assert (=> bs!9690 m!83632))

(assert (=> bs!9690 m!83480))

(assert (=> b!98904 d!22915))

(declare-fun d!22917 () Bool)

(assert (=> d!22917 (= (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))) (list!644 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(declare-fun bs!9691 () Bool)

(assert (= bs!9691 d!22917))

(declare-fun m!83634 () Bool)

(assert (=> bs!9691 m!83634))

(assert (=> b!98904 d!22917))

(declare-fun d!22919 () Bool)

(declare-fun e!54877 () Bool)

(assert (=> d!22919 e!54877))

(declare-fun res!48154 () Bool)

(assert (=> d!22919 (=> (not res!48154) (not e!54877))))

(declare-fun isBalanced!124 (Conc!501) Bool)

(declare-fun prepend!122 (Conc!501 Token!456) Conc!501)

(assert (=> d!22919 (= res!48154 (isBalanced!124 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))))))

(declare-fun lt!26787 () BalanceConc!1006)

(assert (=> d!22919 (= lt!26787 (BalanceConc!1007 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))))))

(assert (=> d!22919 (= (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)) lt!26787)))

(declare-fun b!98981 () Bool)

(assert (=> b!98981 (= e!54877 (= (list!641 lt!26787) (Cons!1607 (h!7004 lt!26725) (list!641 (seqFromList!195 (t!21174 lt!26725))))))))

(assert (= (and d!22919 res!48154) b!98981))

(declare-fun m!83636 () Bool)

(assert (=> d!22919 m!83636))

(assert (=> d!22919 m!83636))

(declare-fun m!83638 () Bool)

(assert (=> d!22919 m!83638))

(declare-fun m!83640 () Bool)

(assert (=> b!98981 m!83640))

(assert (=> b!98981 m!83496))

(declare-fun m!83642 () Bool)

(assert (=> b!98981 m!83642))

(assert (=> b!98904 d!22919))

(declare-fun b!98997 () Bool)

(declare-fun e!54889 () List!1610)

(assert (=> b!98997 (= e!54889 (Cons!1604 (h!7001 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (++!239 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (list!640 (_2!1077 lt!26724)))))))

(declare-fun b!98996 () Bool)

(assert (=> b!98996 (= e!54889 (list!640 (_2!1077 lt!26724)))))

(declare-fun b!98998 () Bool)

(declare-fun res!48164 () Bool)

(declare-fun e!54888 () Bool)

(assert (=> b!98998 (=> (not res!48164) (not e!54888))))

(declare-fun lt!26792 () List!1610)

(assert (=> b!98998 (= res!48164 (= (size!1419 lt!26792) (+ (size!1419 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (size!1419 (list!640 (_2!1077 lt!26724))))))))

(declare-fun b!98999 () Bool)

(assert (=> b!98999 (= e!54888 (or (not (= (list!640 (_2!1077 lt!26724)) Nil!1604)) (= lt!26792 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))))))

(declare-fun d!22921 () Bool)

(assert (=> d!22921 e!54888))

(declare-fun res!48163 () Bool)

(assert (=> d!22921 (=> (not res!48163) (not e!54888))))

(declare-fun content!121 (List!1610) (Set C!1758))

(assert (=> d!22921 (= res!48163 (= (content!121 lt!26792) (set.union (content!121 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (content!121 (list!640 (_2!1077 lt!26724))))))))

(assert (=> d!22921 (= lt!26792 e!54889)))

(declare-fun c!24176 () Bool)

(assert (=> d!22921 (= c!24176 (is-Nil!1604 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(assert (=> d!22921 (= (++!239 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))) (list!640 (_2!1077 lt!26724))) lt!26792)))

(assert (= (and d!22921 c!24176) b!98996))

(assert (= (and d!22921 (not c!24176)) b!98997))

(assert (= (and d!22921 res!48163) b!98998))

(assert (= (and b!98998 res!48164) b!98999))

(assert (=> b!98997 m!83488))

(declare-fun m!83644 () Bool)

(assert (=> b!98997 m!83644))

(declare-fun m!83646 () Bool)

(assert (=> b!98998 m!83646))

(assert (=> b!98998 m!83498))

(declare-fun m!83648 () Bool)

(assert (=> b!98998 m!83648))

(assert (=> b!98998 m!83488))

(declare-fun m!83650 () Bool)

(assert (=> b!98998 m!83650))

(declare-fun m!83652 () Bool)

(assert (=> d!22921 m!83652))

(assert (=> d!22921 m!83498))

(declare-fun m!83654 () Bool)

(assert (=> d!22921 m!83654))

(assert (=> d!22921 m!83488))

(declare-fun m!83656 () Bool)

(assert (=> d!22921 m!83656))

(assert (=> b!98904 d!22921))

(declare-fun d!22923 () Bool)

(assert (=> d!22923 (= (get!408 (maxPrefix!82 thiss!19403 rules!2471 input!2238)) (v!12953 (maxPrefix!82 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!98904 d!22923))

(declare-fun d!22925 () Bool)

(declare-fun lt!26795 () Int)

(assert (=> d!22925 (>= lt!26795 0)))

(declare-fun e!54892 () Int)

(assert (=> d!22925 (= lt!26795 e!54892)))

(declare-fun c!24179 () Bool)

(assert (=> d!22925 (= c!24179 (is-Nil!1607 lt!26725))))

(assert (=> d!22925 (= (size!1416 lt!26725) lt!26795)))

(declare-fun b!99008 () Bool)

(assert (=> b!99008 (= e!54892 0)))

(declare-fun b!99009 () Bool)

(assert (=> b!99009 (= e!54892 (+ 1 (size!1416 (t!21174 lt!26725))))))

(assert (= (and d!22925 c!24179) b!99008))

(assert (= (and d!22925 (not c!24179)) b!99009))

(declare-fun m!83658 () Bool)

(assert (=> b!99009 m!83658))

(assert (=> b!98904 d!22925))

(declare-fun d!22927 () Bool)

(declare-fun list!645 (Conc!501) List!1613)

(assert (=> d!22927 (= (list!641 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))) (list!645 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)))))))

(declare-fun bs!9692 () Bool)

(assert (= bs!9692 d!22927))

(declare-fun m!83660 () Bool)

(assert (=> bs!9692 m!83660))

(assert (=> b!98904 d!22927))

(declare-fun d!22929 () Bool)

(declare-fun lt!26799 () BalanceConc!1004)

(declare-fun printList!36 (LexerInterface!242 List!1613) List!1610)

(assert (=> d!22929 (= (list!640 lt!26799) (printList!36 thiss!19403 (list!641 (_1!1077 lt!26724))))))

(declare-fun printTailRec!36 (LexerInterface!242 BalanceConc!1006 Int BalanceConc!1004) BalanceConc!1004)

(assert (=> d!22929 (= lt!26799 (printTailRec!36 thiss!19403 (_1!1077 lt!26724) 0 (BalanceConc!1005 Empty!500)))))

(assert (=> d!22929 (= (print!73 thiss!19403 (_1!1077 lt!26724)) lt!26799)))

(declare-fun bs!9694 () Bool)

(assert (= bs!9694 d!22929))

(declare-fun m!83682 () Bool)

(assert (=> bs!9694 m!83682))

(declare-fun m!83684 () Bool)

(assert (=> bs!9694 m!83684))

(assert (=> bs!9694 m!83684))

(declare-fun m!83686 () Bool)

(assert (=> bs!9694 m!83686))

(declare-fun m!83688 () Bool)

(assert (=> bs!9694 m!83688))

(assert (=> b!98904 d!22929))

(declare-fun d!22935 () Bool)

(assert (=> d!22935 (= (list!640 (_2!1077 lt!26724)) (list!644 (c!24158 (_2!1077 lt!26724))))))

(declare-fun bs!9695 () Bool)

(assert (= bs!9695 d!22935))

(declare-fun m!83690 () Bool)

(assert (=> bs!9695 m!83690))

(assert (=> b!98904 d!22935))

(declare-fun d!22937 () Bool)

(assert (=> d!22937 (= (isEmpty!696 rules!2471) (is-Nil!1606 rules!2471))))

(assert (=> b!98909 d!22937))

(declare-fun d!22941 () Bool)

(declare-fun lt!26803 () Bool)

(declare-fun isEmpty!701 (List!1610) Bool)

(assert (=> d!22941 (= lt!26803 (isEmpty!701 (list!640 (_2!1077 lt!26723))))))

(declare-fun isEmpty!702 (Conc!500) Bool)

(assert (=> d!22941 (= lt!26803 (isEmpty!702 (c!24158 (_2!1077 lt!26723))))))

(assert (=> d!22941 (= (isEmpty!695 (_2!1077 lt!26723)) lt!26803)))

(declare-fun bs!9696 () Bool)

(assert (= bs!9696 d!22941))

(assert (=> bs!9696 m!83474))

(assert (=> bs!9696 m!83474))

(declare-fun m!83699 () Bool)

(assert (=> bs!9696 m!83699))

(declare-fun m!83701 () Bool)

(assert (=> bs!9696 m!83701))

(assert (=> b!98903 d!22941))

(declare-fun d!22945 () Bool)

(declare-fun e!54904 () Bool)

(assert (=> d!22945 e!54904))

(declare-fun res!48176 () Bool)

(assert (=> d!22945 (=> (not res!48176) (not e!54904))))

(declare-fun e!54902 () Bool)

(assert (=> d!22945 (= res!48176 e!54902)))

(declare-fun c!24182 () Bool)

(declare-fun lt!26804 () tuple2!1740)

(assert (=> d!22945 (= c!24182 (> (size!1420 (_1!1077 lt!26804)) 0))))

(assert (=> d!22945 (= lt!26804 (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 input!2238) (BalanceConc!1005 Empty!500) (seqFromList!194 input!2238) (BalanceConc!1007 Empty!501)))))

(assert (=> d!22945 (= (lex!148 thiss!19403 rules!2471 (seqFromList!194 input!2238)) lt!26804)))

(declare-fun b!99023 () Bool)

(assert (=> b!99023 (= e!54904 (= (list!640 (_2!1077 lt!26804)) (_2!1081 (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 input!2238))))))))

(declare-fun b!99024 () Bool)

(declare-fun res!48177 () Bool)

(assert (=> b!99024 (=> (not res!48177) (not e!54904))))

(assert (=> b!99024 (= res!48177 (= (list!641 (_1!1077 lt!26804)) (_1!1081 (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 input!2238))))))))

(declare-fun b!99025 () Bool)

(declare-fun e!54903 () Bool)

(assert (=> b!99025 (= e!54903 (not (isEmpty!700 (_1!1077 lt!26804))))))

(declare-fun b!99026 () Bool)

(assert (=> b!99026 (= e!54902 e!54903)))

(declare-fun res!48178 () Bool)

(assert (=> b!99026 (= res!48178 (< (size!1421 (_2!1077 lt!26804)) (size!1421 (seqFromList!194 input!2238))))))

(assert (=> b!99026 (=> (not res!48178) (not e!54903))))

(declare-fun b!99027 () Bool)

(assert (=> b!99027 (= e!54902 (= (_2!1077 lt!26804) (seqFromList!194 input!2238)))))

(assert (= (and d!22945 c!24182) b!99026))

(assert (= (and d!22945 (not c!24182)) b!99027))

(assert (= (and b!99026 res!48178) b!99025))

(assert (= (and d!22945 res!48176) b!99024))

(assert (= (and b!99024 res!48177) b!99023))

(declare-fun m!83718 () Bool)

(assert (=> b!99023 m!83718))

(assert (=> b!99023 m!83470))

(declare-fun m!83720 () Bool)

(assert (=> b!99023 m!83720))

(assert (=> b!99023 m!83720))

(declare-fun m!83722 () Bool)

(assert (=> b!99023 m!83722))

(declare-fun m!83724 () Bool)

(assert (=> b!99025 m!83724))

(declare-fun m!83726 () Bool)

(assert (=> d!22945 m!83726))

(assert (=> d!22945 m!83470))

(assert (=> d!22945 m!83470))

(declare-fun m!83728 () Bool)

(assert (=> d!22945 m!83728))

(declare-fun m!83730 () Bool)

(assert (=> b!99026 m!83730))

(assert (=> b!99026 m!83470))

(declare-fun m!83732 () Bool)

(assert (=> b!99026 m!83732))

(declare-fun m!83734 () Bool)

(assert (=> b!99024 m!83734))

(assert (=> b!99024 m!83470))

(assert (=> b!99024 m!83720))

(assert (=> b!99024 m!83720))

(assert (=> b!99024 m!83722))

(assert (=> b!98903 d!22945))

(declare-fun d!22949 () Bool)

(assert (=> d!22949 (= (seqFromList!194 input!2238) (fromListB!87 input!2238))))

(declare-fun bs!9697 () Bool)

(assert (= bs!9697 d!22949))

(declare-fun m!83736 () Bool)

(assert (=> bs!9697 m!83736))

(assert (=> b!98903 d!22949))

(declare-fun d!22951 () Bool)

(assert (=> d!22951 (= (inv!1941 (tag!528 (h!7003 rules!2471))) (= (mod (str.len (value!12844 (tag!528 (h!7003 rules!2471)))) 2) 0))))

(assert (=> b!98902 d!22951))

(declare-fun d!22953 () Bool)

(declare-fun res!48181 () Bool)

(declare-fun e!54907 () Bool)

(assert (=> d!22953 (=> (not res!48181) (not e!54907))))

(declare-fun semiInverseModEq!84 (Int Int) Bool)

(assert (=> d!22953 (= res!48181 (semiInverseModEq!84 (toChars!768 (transformation!350 (h!7003 rules!2471))) (toValue!909 (transformation!350 (h!7003 rules!2471)))))))

(assert (=> d!22953 (= (inv!1944 (transformation!350 (h!7003 rules!2471))) e!54907)))

(declare-fun b!99030 () Bool)

(declare-fun equivClasses!79 (Int Int) Bool)

(assert (=> b!99030 (= e!54907 (equivClasses!79 (toChars!768 (transformation!350 (h!7003 rules!2471))) (toValue!909 (transformation!350 (h!7003 rules!2471)))))))

(assert (= (and d!22953 res!48181) b!99030))

(declare-fun m!83738 () Bool)

(assert (=> d!22953 m!83738))

(declare-fun m!83740 () Bool)

(assert (=> b!99030 m!83740))

(assert (=> b!98902 d!22953))

(declare-fun d!22955 () Bool)

(assert (=> d!22955 (= (list!641 (_1!1077 lt!26723)) (list!645 (c!24160 (_1!1077 lt!26723))))))

(declare-fun bs!9698 () Bool)

(assert (= bs!9698 d!22955))

(declare-fun m!83742 () Bool)

(assert (=> bs!9698 m!83742))

(assert (=> b!98907 d!22955))

(declare-fun d!22957 () Bool)

(declare-fun res!48184 () Bool)

(declare-fun e!54910 () Bool)

(assert (=> d!22957 (=> (not res!48184) (not e!54910))))

(declare-fun rulesValid!92 (LexerInterface!242 List!1612) Bool)

(assert (=> d!22957 (= res!48184 (rulesValid!92 thiss!19403 rules!2471))))

(assert (=> d!22957 (= (rulesInvariant!236 thiss!19403 rules!2471) e!54910)))

(declare-fun b!99033 () Bool)

(declare-datatypes ((List!1618 0))(
  ( (Nil!1612) (Cons!1612 (h!7009 String!2093) (t!21179 List!1618)) )
))
(declare-fun noDuplicateTag!92 (LexerInterface!242 List!1612 List!1618) Bool)

(assert (=> b!99033 (= e!54910 (noDuplicateTag!92 thiss!19403 rules!2471 Nil!1612))))

(assert (= (and d!22957 res!48184) b!99033))

(declare-fun m!83744 () Bool)

(assert (=> d!22957 m!83744))

(declare-fun m!83746 () Bool)

(assert (=> b!99033 m!83746))

(assert (=> b!98901 d!22957))

(declare-fun b!99038 () Bool)

(declare-fun e!54913 () Bool)

(declare-fun tp!56635 () Bool)

(assert (=> b!99038 (= e!54913 (and tp_is_empty!759 tp!56635))))

(assert (=> b!98905 (= tp!56616 e!54913)))

(assert (= (and b!98905 (is-Cons!1604 (t!21171 input!2238))) b!99038))

(declare-fun b!99052 () Bool)

(declare-fun b_free!2973 () Bool)

(declare-fun b_next!2973 () Bool)

(assert (=> b!99052 (= b_free!2973 (not b_next!2973))))

(declare-fun tp!56646 () Bool)

(declare-fun b_and!4455 () Bool)

(assert (=> b!99052 (= tp!56646 b_and!4455)))

(declare-fun b_free!2975 () Bool)

(declare-fun b_next!2975 () Bool)

(assert (=> b!99052 (= b_free!2975 (not b_next!2975))))

(declare-fun tp!56644 () Bool)

(declare-fun b_and!4457 () Bool)

(assert (=> b!99052 (= tp!56644 b_and!4457)))

(declare-fun e!54925 () Bool)

(assert (=> b!99052 (= e!54925 (and tp!56646 tp!56644))))

(declare-fun b!99051 () Bool)

(declare-fun e!54928 () Bool)

(declare-fun tp!56645 () Bool)

(assert (=> b!99051 (= e!54928 (and tp!56645 (inv!1941 (tag!528 (h!7003 (t!21173 rules!2471)))) (inv!1944 (transformation!350 (h!7003 (t!21173 rules!2471)))) e!54925))))

(declare-fun b!99050 () Bool)

(declare-fun e!54927 () Bool)

(declare-fun tp!56647 () Bool)

(assert (=> b!99050 (= e!54927 (and e!54928 tp!56647))))

(assert (=> b!98908 (= tp!56614 e!54927)))

(assert (= b!99051 b!99052))

(assert (= b!99050 b!99051))

(assert (= (and b!98908 (is-Cons!1606 (t!21173 rules!2471))) b!99050))

(declare-fun m!83756 () Bool)

(assert (=> b!99051 m!83756))

(declare-fun m!83758 () Bool)

(assert (=> b!99051 m!83758))

(declare-fun b!99066 () Bool)

(declare-fun e!54931 () Bool)

(declare-fun tp!56661 () Bool)

(declare-fun tp!56660 () Bool)

(assert (=> b!99066 (= e!54931 (and tp!56661 tp!56660))))

(declare-fun b!99063 () Bool)

(assert (=> b!99063 (= e!54931 tp_is_empty!759)))

(assert (=> b!98902 (= tp!56613 e!54931)))

(declare-fun b!99064 () Bool)

(declare-fun tp!56658 () Bool)

(declare-fun tp!56662 () Bool)

(assert (=> b!99064 (= e!54931 (and tp!56658 tp!56662))))

(declare-fun b!99065 () Bool)

(declare-fun tp!56659 () Bool)

(assert (=> b!99065 (= e!54931 tp!56659)))

(assert (= (and b!98902 (is-ElementMatch!418 (regex!350 (h!7003 rules!2471)))) b!99063))

(assert (= (and b!98902 (is-Concat!758 (regex!350 (h!7003 rules!2471)))) b!99064))

(assert (= (and b!98902 (is-Star!418 (regex!350 (h!7003 rules!2471)))) b!99065))

(assert (= (and b!98902 (is-Union!418 (regex!350 (h!7003 rules!2471)))) b!99066))

(push 1)

(assert b_and!4447)

(assert (not d!22953))

(assert (not b!99064))

(assert (not b!99065))

(assert (not b!98975))

(assert (not b_next!2967))

(assert (not b!98955))

(assert (not d!22935))

(assert (not b_next!2973))

(assert (not b!99050))

(assert (not d!22949))

(assert b_and!4457)

(assert (not d!22913))

(assert (not b!99051))

(assert (not b!98977))

(assert b_and!4449)

(assert (not d!22921))

(assert (not b!98959))

(assert (not d!22929))

(assert (not d!22907))

(assert (not d!22955))

(assert (not d!22917))

(assert (not d!22901))

(assert (not b!99038))

(assert (not b!99026))

(assert (not d!22919))

(assert tp_is_empty!759)

(assert (not b!99024))

(assert (not b!98962))

(assert (not d!22899))

(assert (not b!98963))

(assert (not b!98958))

(assert (not d!22957))

(assert (not b!99033))

(assert (not b!98998))

(assert (not b!99066))

(assert (not b_next!2975))

(assert (not b!98961))

(assert (not b!98974))

(assert (not b!98956))

(assert (not b!98957))

(assert (not b!98981))

(assert (not d!22915))

(assert (not b!99023))

(assert (not d!22905))

(assert (not b!99025))

(assert (not d!22911))

(assert (not d!22927))

(assert (not b!98976))

(assert (not b_next!2965))

(assert b_and!4455)

(assert (not b!98997))

(assert (not d!22941))

(assert (not b!99030))

(assert (not d!22945))

(assert (not b!99009))

(assert (not bm!4384))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4457)

(assert b_and!4447)

(assert (not b_next!2967))

(assert b_and!4449)

(assert (not b_next!2975))

(assert (not b_next!2973))

(assert (not b_next!2965))

(assert b_and!4455)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!22991 () Bool)

(declare-fun lt!26841 () Int)

(assert (=> d!22991 (>= lt!26841 0)))

(declare-fun e!54971 () Int)

(assert (=> d!22991 (= lt!26841 e!54971)))

(declare-fun c!24193 () Bool)

(assert (=> d!22991 (= c!24193 (is-Nil!1607 (t!21174 lt!26725)))))

(assert (=> d!22991 (= (size!1416 (t!21174 lt!26725)) lt!26841)))

(declare-fun b!99145 () Bool)

(assert (=> b!99145 (= e!54971 0)))

(declare-fun b!99146 () Bool)

(assert (=> b!99146 (= e!54971 (+ 1 (size!1416 (t!21174 (t!21174 lt!26725)))))))

(assert (= (and d!22991 c!24193) b!99145))

(assert (= (and d!22991 (not c!24193)) b!99146))

(declare-fun m!83858 () Bool)

(assert (=> b!99146 m!83858))

(assert (=> b!99009 d!22991))

(declare-fun d!22993 () Bool)

(assert (=> d!22993 (= (list!641 (_1!1077 lt!26804)) (list!645 (c!24160 (_1!1077 lt!26804))))))

(declare-fun bs!9709 () Bool)

(assert (= bs!9709 d!22993))

(declare-fun m!83860 () Bool)

(assert (=> bs!9709 m!83860))

(assert (=> b!99024 d!22993))

(declare-fun b!99157 () Bool)

(declare-fun e!54978 () Bool)

(declare-fun e!54980 () Bool)

(assert (=> b!99157 (= e!54978 e!54980)))

(declare-fun res!48224 () Bool)

(declare-fun lt!26848 () tuple2!1748)

(assert (=> b!99157 (= res!48224 (< (size!1419 (_2!1081 lt!26848)) (size!1419 (list!640 (seqFromList!194 input!2238)))))))

(assert (=> b!99157 (=> (not res!48224) (not e!54980))))

(declare-fun b!99158 () Bool)

(declare-fun e!54979 () tuple2!1748)

(assert (=> b!99158 (= e!54979 (tuple2!1749 Nil!1607 (list!640 (seqFromList!194 input!2238))))))

(declare-fun b!99159 () Bool)

(assert (=> b!99159 (= e!54978 (= (_2!1081 lt!26848) (list!640 (seqFromList!194 input!2238))))))

(declare-fun b!99160 () Bool)

(declare-fun isEmpty!707 (List!1613) Bool)

(assert (=> b!99160 (= e!54980 (not (isEmpty!707 (_1!1081 lt!26848))))))

(declare-fun d!22995 () Bool)

(assert (=> d!22995 e!54978))

(declare-fun c!24199 () Bool)

(assert (=> d!22995 (= c!24199 (> (size!1416 (_1!1081 lt!26848)) 0))))

(assert (=> d!22995 (= lt!26848 e!54979)))

(declare-fun c!24198 () Bool)

(declare-fun lt!26850 () Option!175)

(assert (=> d!22995 (= c!24198 (is-Some!174 lt!26850))))

(assert (=> d!22995 (= lt!26850 (maxPrefix!82 thiss!19403 rules!2471 (list!640 (seqFromList!194 input!2238))))))

(assert (=> d!22995 (= (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 input!2238))) lt!26848)))

(declare-fun b!99161 () Bool)

(declare-fun lt!26849 () tuple2!1748)

(assert (=> b!99161 (= e!54979 (tuple2!1749 (Cons!1607 (_1!1078 (v!12953 lt!26850)) (_1!1081 lt!26849)) (_2!1081 lt!26849)))))

(assert (=> b!99161 (= lt!26849 (lexList!70 thiss!19403 rules!2471 (_2!1078 (v!12953 lt!26850))))))

(assert (= (and d!22995 c!24198) b!99161))

(assert (= (and d!22995 (not c!24198)) b!99158))

(assert (= (and d!22995 c!24199) b!99157))

(assert (= (and d!22995 (not c!24199)) b!99159))

(assert (= (and b!99157 res!48224) b!99160))

(declare-fun m!83862 () Bool)

(assert (=> b!99157 m!83862))

(assert (=> b!99157 m!83720))

(declare-fun m!83864 () Bool)

(assert (=> b!99157 m!83864))

(declare-fun m!83866 () Bool)

(assert (=> b!99160 m!83866))

(declare-fun m!83868 () Bool)

(assert (=> d!22995 m!83868))

(assert (=> d!22995 m!83720))

(declare-fun m!83870 () Bool)

(assert (=> d!22995 m!83870))

(declare-fun m!83872 () Bool)

(assert (=> b!99161 m!83872))

(assert (=> b!99024 d!22995))

(declare-fun d!22997 () Bool)

(assert (=> d!22997 (= (list!640 (seqFromList!194 input!2238)) (list!644 (c!24158 (seqFromList!194 input!2238))))))

(declare-fun bs!9710 () Bool)

(assert (= bs!9710 d!22997))

(declare-fun m!83874 () Bool)

(assert (=> bs!9710 m!83874))

(assert (=> b!99024 d!22997))

(declare-fun d!22999 () Bool)

(declare-fun c!24204 () Bool)

(assert (=> d!22999 (= c!24204 (is-Empty!500 (c!24158 (_2!1077 lt!26724))))))

(declare-fun e!54985 () List!1610)

(assert (=> d!22999 (= (list!644 (c!24158 (_2!1077 lt!26724))) e!54985)))

(declare-fun b!99171 () Bool)

(declare-fun e!54986 () List!1610)

(assert (=> b!99171 (= e!54985 e!54986)))

(declare-fun c!24205 () Bool)

(assert (=> b!99171 (= c!24205 (is-Leaf!811 (c!24158 (_2!1077 lt!26724))))))

(declare-fun b!99172 () Bool)

(declare-fun list!648 (IArray!1001) List!1610)

(assert (=> b!99172 (= e!54986 (list!648 (xs!3087 (c!24158 (_2!1077 lt!26724)))))))

(declare-fun b!99173 () Bool)

(assert (=> b!99173 (= e!54986 (++!239 (list!644 (left!1224 (c!24158 (_2!1077 lt!26724)))) (list!644 (right!1554 (c!24158 (_2!1077 lt!26724))))))))

(declare-fun b!99170 () Bool)

(assert (=> b!99170 (= e!54985 Nil!1604)))

(assert (= (and d!22999 c!24204) b!99170))

(assert (= (and d!22999 (not c!24204)) b!99171))

(assert (= (and b!99171 c!24205) b!99172))

(assert (= (and b!99171 (not c!24205)) b!99173))

(declare-fun m!83876 () Bool)

(assert (=> b!99172 m!83876))

(declare-fun m!83878 () Bool)

(assert (=> b!99173 m!83878))

(declare-fun m!83880 () Bool)

(assert (=> b!99173 m!83880))

(assert (=> b!99173 m!83878))

(assert (=> b!99173 m!83880))

(declare-fun m!83882 () Bool)

(assert (=> b!99173 m!83882))

(assert (=> d!22935 d!22999))

(declare-fun d!23001 () Bool)

(declare-fun lt!26853 () Bool)

(assert (=> d!23001 (= lt!26853 (isEmpty!707 (list!641 (_1!1077 lt!26804))))))

(declare-fun isEmpty!708 (Conc!501) Bool)

(assert (=> d!23001 (= lt!26853 (isEmpty!708 (c!24160 (_1!1077 lt!26804))))))

(assert (=> d!23001 (= (isEmpty!700 (_1!1077 lt!26804)) lt!26853)))

(declare-fun bs!9711 () Bool)

(assert (= bs!9711 d!23001))

(assert (=> bs!9711 m!83734))

(assert (=> bs!9711 m!83734))

(declare-fun m!83884 () Bool)

(assert (=> bs!9711 m!83884))

(declare-fun m!83886 () Bool)

(assert (=> bs!9711 m!83886))

(assert (=> b!99025 d!23001))

(declare-fun d!23003 () Bool)

(declare-fun c!24210 () Bool)

(assert (=> d!23003 (= c!24210 (is-Empty!501 (c!24160 (_1!1077 lt!26723))))))

(declare-fun e!54991 () List!1613)

(assert (=> d!23003 (= (list!645 (c!24160 (_1!1077 lt!26723))) e!54991)))

(declare-fun b!99184 () Bool)

(declare-fun e!54992 () List!1613)

(declare-fun list!649 (IArray!1003) List!1613)

(assert (=> b!99184 (= e!54992 (list!649 (xs!3088 (c!24160 (_1!1077 lt!26723)))))))

(declare-fun b!99182 () Bool)

(assert (=> b!99182 (= e!54991 Nil!1607)))

(declare-fun b!99183 () Bool)

(assert (=> b!99183 (= e!54991 e!54992)))

(declare-fun c!24211 () Bool)

(assert (=> b!99183 (= c!24211 (is-Leaf!812 (c!24160 (_1!1077 lt!26723))))))

(declare-fun b!99185 () Bool)

(declare-fun ++!241 (List!1613 List!1613) List!1613)

(assert (=> b!99185 (= e!54992 (++!241 (list!645 (left!1225 (c!24160 (_1!1077 lt!26723)))) (list!645 (right!1555 (c!24160 (_1!1077 lt!26723))))))))

(assert (= (and d!23003 c!24210) b!99182))

(assert (= (and d!23003 (not c!24210)) b!99183))

(assert (= (and b!99183 c!24211) b!99184))

(assert (= (and b!99183 (not c!24211)) b!99185))

(declare-fun m!83888 () Bool)

(assert (=> b!99184 m!83888))

(declare-fun m!83890 () Bool)

(assert (=> b!99185 m!83890))

(declare-fun m!83892 () Bool)

(assert (=> b!99185 m!83892))

(assert (=> b!99185 m!83890))

(assert (=> b!99185 m!83892))

(declare-fun m!83894 () Bool)

(assert (=> b!99185 m!83894))

(assert (=> d!22955 d!23003))

(declare-fun d!23005 () Bool)

(declare-fun lt!26856 () Bool)

(declare-fun content!123 (List!1612) (Set Rule!500))

(assert (=> d!23005 (= lt!26856 (set.member (rule!853 (_1!1078 (get!408 lt!26767))) (content!123 rules!2471)))))

(declare-fun e!54997 () Bool)

(assert (=> d!23005 (= lt!26856 e!54997)))

(declare-fun res!48230 () Bool)

(assert (=> d!23005 (=> (not res!48230) (not e!54997))))

(assert (=> d!23005 (= res!48230 (is-Cons!1606 rules!2471))))

(assert (=> d!23005 (= (contains!256 rules!2471 (rule!853 (_1!1078 (get!408 lt!26767)))) lt!26856)))

(declare-fun b!99190 () Bool)

(declare-fun e!54998 () Bool)

(assert (=> b!99190 (= e!54997 e!54998)))

(declare-fun res!48229 () Bool)

(assert (=> b!99190 (=> res!48229 e!54998)))

(assert (=> b!99190 (= res!48229 (= (h!7003 rules!2471) (rule!853 (_1!1078 (get!408 lt!26767)))))))

(declare-fun b!99191 () Bool)

(assert (=> b!99191 (= e!54998 (contains!256 (t!21173 rules!2471) (rule!853 (_1!1078 (get!408 lt!26767)))))))

(assert (= (and d!23005 res!48230) b!99190))

(assert (= (and b!99190 (not res!48229)) b!99191))

(declare-fun m!83896 () Bool)

(assert (=> d!23005 m!83896))

(declare-fun m!83898 () Bool)

(assert (=> d!23005 m!83898))

(declare-fun m!83900 () Bool)

(assert (=> b!99191 m!83900))

(assert (=> b!98955 d!23005))

(declare-fun d!23007 () Bool)

(assert (=> d!23007 (= (get!408 lt!26767) (v!12953 lt!26767))))

(assert (=> b!98955 d!23007))

(declare-fun d!23009 () Bool)

(assert (=> d!23009 (= (list!640 (_2!1077 lt!26804)) (list!644 (c!24158 (_2!1077 lt!26804))))))

(declare-fun bs!9712 () Bool)

(assert (= bs!9712 d!23009))

(declare-fun m!83902 () Bool)

(assert (=> bs!9712 m!83902))

(assert (=> b!99023 d!23009))

(assert (=> b!99023 d!22995))

(assert (=> b!99023 d!22997))

(declare-fun d!23011 () Bool)

(declare-fun c!24214 () Bool)

(assert (=> d!23011 (= c!24214 (is-Nil!1604 lt!26792))))

(declare-fun e!55001 () (Set C!1758))

(assert (=> d!23011 (= (content!121 lt!26792) e!55001)))

(declare-fun b!99196 () Bool)

(assert (=> b!99196 (= e!55001 (as set.empty (Set C!1758)))))

(declare-fun b!99197 () Bool)

(assert (=> b!99197 (= e!55001 (set.union (set.insert (h!7001 lt!26792) (as set.empty (Set C!1758))) (content!121 (t!21171 lt!26792))))))

(assert (= (and d!23011 c!24214) b!99196))

(assert (= (and d!23011 (not c!24214)) b!99197))

(declare-fun m!83904 () Bool)

(assert (=> b!99197 m!83904))

(declare-fun m!83906 () Bool)

(assert (=> b!99197 m!83906))

(assert (=> d!22921 d!23011))

(declare-fun d!23013 () Bool)

(declare-fun c!24215 () Bool)

(assert (=> d!23013 (= c!24215 (is-Nil!1604 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(declare-fun e!55002 () (Set C!1758))

(assert (=> d!23013 (= (content!121 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) e!55002)))

(declare-fun b!99198 () Bool)

(assert (=> b!99198 (= e!55002 (as set.empty (Set C!1758)))))

(declare-fun b!99199 () Bool)

(assert (=> b!99199 (= e!55002 (set.union (set.insert (h!7001 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (as set.empty (Set C!1758))) (content!121 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))))

(assert (= (and d!23013 c!24215) b!99198))

(assert (= (and d!23013 (not c!24215)) b!99199))

(declare-fun m!83908 () Bool)

(assert (=> b!99199 m!83908))

(declare-fun m!83910 () Bool)

(assert (=> b!99199 m!83910))

(assert (=> d!22921 d!23013))

(declare-fun d!23015 () Bool)

(declare-fun c!24216 () Bool)

(assert (=> d!23015 (= c!24216 (is-Nil!1604 (list!640 (_2!1077 lt!26724))))))

(declare-fun e!55003 () (Set C!1758))

(assert (=> d!23015 (= (content!121 (list!640 (_2!1077 lt!26724))) e!55003)))

(declare-fun b!99200 () Bool)

(assert (=> b!99200 (= e!55003 (as set.empty (Set C!1758)))))

(declare-fun b!99201 () Bool)

(assert (=> b!99201 (= e!55003 (set.union (set.insert (h!7001 (list!640 (_2!1077 lt!26724))) (as set.empty (Set C!1758))) (content!121 (t!21171 (list!640 (_2!1077 lt!26724))))))))

(assert (= (and d!23015 c!24216) b!99200))

(assert (= (and d!23015 (not c!24216)) b!99201))

(declare-fun m!83912 () Bool)

(assert (=> b!99201 m!83912))

(declare-fun m!83914 () Bool)

(assert (=> b!99201 m!83914))

(assert (=> d!22921 d!23015))

(declare-fun d!23017 () Bool)

(declare-fun e!55006 () Bool)

(assert (=> d!23017 e!55006))

(declare-fun res!48233 () Bool)

(assert (=> d!23017 (=> (not res!48233) (not e!55006))))

(declare-fun lt!26859 () BalanceConc!1004)

(assert (=> d!23017 (= res!48233 (= (list!640 lt!26859) (_2!1078 lt!26730)))))

(declare-fun fromList!57 (List!1610) Conc!500)

(assert (=> d!23017 (= lt!26859 (BalanceConc!1005 (fromList!57 (_2!1078 lt!26730))))))

(assert (=> d!23017 (= (fromListB!87 (_2!1078 lt!26730)) lt!26859)))

(declare-fun b!99204 () Bool)

(declare-fun isBalanced!126 (Conc!500) Bool)

(assert (=> b!99204 (= e!55006 (isBalanced!126 (fromList!57 (_2!1078 lt!26730))))))

(assert (= (and d!23017 res!48233) b!99204))

(declare-fun m!83916 () Bool)

(assert (=> d!23017 m!83916))

(declare-fun m!83918 () Bool)

(assert (=> d!23017 m!83918))

(assert (=> b!99204 m!83918))

(assert (=> b!99204 m!83918))

(declare-fun m!83920 () Bool)

(assert (=> b!99204 m!83920))

(assert (=> d!22913 d!23017))

(declare-fun d!23019 () Bool)

(declare-fun res!48238 () Bool)

(declare-fun e!55011 () Bool)

(assert (=> d!23019 (=> res!48238 e!55011)))

(assert (=> d!23019 (= res!48238 (is-Nil!1606 rules!2471))))

(assert (=> d!23019 (= (noDuplicateTag!92 thiss!19403 rules!2471 Nil!1612) e!55011)))

(declare-fun b!99209 () Bool)

(declare-fun e!55012 () Bool)

(assert (=> b!99209 (= e!55011 e!55012)))

(declare-fun res!48239 () Bool)

(assert (=> b!99209 (=> (not res!48239) (not e!55012))))

(declare-fun contains!258 (List!1618 String!2093) Bool)

(assert (=> b!99209 (= res!48239 (not (contains!258 Nil!1612 (tag!528 (h!7003 rules!2471)))))))

(declare-fun b!99210 () Bool)

(assert (=> b!99210 (= e!55012 (noDuplicateTag!92 thiss!19403 (t!21173 rules!2471) (Cons!1612 (tag!528 (h!7003 rules!2471)) Nil!1612)))))

(assert (= (and d!23019 (not res!48238)) b!99209))

(assert (= (and b!99209 res!48239) b!99210))

(declare-fun m!83922 () Bool)

(assert (=> b!99209 m!83922))

(declare-fun m!83924 () Bool)

(assert (=> b!99210 m!83924))

(assert (=> b!99033 d!23019))

(declare-fun d!23021 () Bool)

(declare-fun lt!26862 () Int)

(assert (=> d!23021 (= lt!26862 (size!1419 (list!640 (_2!1077 lt!26778))))))

(declare-fun size!1425 (Conc!500) Int)

(assert (=> d!23021 (= lt!26862 (size!1425 (c!24158 (_2!1077 lt!26778))))))

(assert (=> d!23021 (= (size!1421 (_2!1077 lt!26778)) lt!26862)))

(declare-fun bs!9713 () Bool)

(assert (= bs!9713 d!23021))

(assert (=> bs!9713 m!83604))

(assert (=> bs!9713 m!83604))

(declare-fun m!83926 () Bool)

(assert (=> bs!9713 m!83926))

(declare-fun m!83928 () Bool)

(assert (=> bs!9713 m!83928))

(assert (=> b!98977 d!23021))

(declare-fun d!23023 () Bool)

(declare-fun lt!26863 () Int)

(assert (=> d!23023 (= lt!26863 (size!1419 (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))

(assert (=> d!23023 (= lt!26863 (size!1425 (c!24158 (seqFromList!194 (_2!1078 lt!26730)))))))

(assert (=> d!23023 (= (size!1421 (seqFromList!194 (_2!1078 lt!26730))) lt!26863)))

(declare-fun bs!9714 () Bool)

(assert (= bs!9714 d!23023))

(assert (=> bs!9714 m!83480))

(assert (=> bs!9714 m!83606))

(assert (=> bs!9714 m!83606))

(declare-fun m!83930 () Bool)

(assert (=> bs!9714 m!83930))

(declare-fun m!83932 () Bool)

(assert (=> bs!9714 m!83932))

(assert (=> b!98977 d!23023))

(declare-fun d!23025 () Bool)

(declare-fun lt!26866 () Int)

(assert (=> d!23025 (>= lt!26866 0)))

(declare-fun e!55015 () Int)

(assert (=> d!23025 (= lt!26866 e!55015)))

(declare-fun c!24220 () Bool)

(assert (=> d!23025 (= c!24220 (is-Nil!1604 (_2!1078 (get!408 lt!26767))))))

(assert (=> d!23025 (= (size!1419 (_2!1078 (get!408 lt!26767))) lt!26866)))

(declare-fun b!99215 () Bool)

(assert (=> b!99215 (= e!55015 0)))

(declare-fun b!99216 () Bool)

(assert (=> b!99216 (= e!55015 (+ 1 (size!1419 (t!21171 (_2!1078 (get!408 lt!26767))))))))

(assert (= (and d!23025 c!24220) b!99215))

(assert (= (and d!23025 (not c!24220)) b!99216))

(declare-fun m!83934 () Bool)

(assert (=> b!99216 m!83934))

(assert (=> b!98956 d!23025))

(assert (=> b!98956 d!23007))

(declare-fun d!23027 () Bool)

(declare-fun lt!26867 () Int)

(assert (=> d!23027 (>= lt!26867 0)))

(declare-fun e!55016 () Int)

(assert (=> d!23027 (= lt!26867 e!55016)))

(declare-fun c!24221 () Bool)

(assert (=> d!23027 (= c!24221 (is-Nil!1604 input!2238))))

(assert (=> d!23027 (= (size!1419 input!2238) lt!26867)))

(declare-fun b!99217 () Bool)

(assert (=> b!99217 (= e!55016 0)))

(declare-fun b!99218 () Bool)

(assert (=> b!99218 (= e!55016 (+ 1 (size!1419 (t!21171 input!2238))))))

(assert (= (and d!23027 c!24221) b!99217))

(assert (= (and d!23027 (not c!24221)) b!99218))

(declare-fun m!83936 () Bool)

(assert (=> b!99218 m!83936))

(assert (=> b!98956 d!23027))

(declare-fun b!99219 () Bool)

(declare-fun e!55017 () Bool)

(declare-fun lt!26870 () Option!175)

(assert (=> b!99219 (= e!55017 (contains!256 (t!21173 rules!2471) (rule!853 (_1!1078 (get!408 lt!26870)))))))

(declare-fun call!4393 () Option!175)

(declare-fun bm!4388 () Bool)

(assert (=> bm!4388 (= call!4393 (maxPrefixOneRule!38 thiss!19403 (h!7003 (t!21173 rules!2471)) input!2238))))

(declare-fun b!99220 () Bool)

(declare-fun res!48241 () Bool)

(assert (=> b!99220 (=> (not res!48241) (not e!55017))))

(assert (=> b!99220 (= res!48241 (< (size!1419 (_2!1078 (get!408 lt!26870))) (size!1419 input!2238)))))

(declare-fun b!99221 () Bool)

(declare-fun e!55018 () Option!175)

(declare-fun lt!26869 () Option!175)

(declare-fun lt!26872 () Option!175)

(assert (=> b!99221 (= e!55018 (ite (and (is-None!174 lt!26869) (is-None!174 lt!26872)) None!174 (ite (is-None!174 lt!26872) lt!26869 (ite (is-None!174 lt!26869) lt!26872 (ite (>= (size!1415 (_1!1078 (v!12953 lt!26869))) (size!1415 (_1!1078 (v!12953 lt!26872)))) lt!26869 lt!26872)))))))

(assert (=> b!99221 (= lt!26869 call!4393)))

(assert (=> b!99221 (= lt!26872 (maxPrefix!82 thiss!19403 (t!21173 (t!21173 rules!2471)) input!2238))))

(declare-fun b!99222 () Bool)

(declare-fun res!48240 () Bool)

(assert (=> b!99222 (=> (not res!48240) (not e!55017))))

(assert (=> b!99222 (= res!48240 (matchR!42 (regex!350 (rule!853 (_1!1078 (get!408 lt!26870)))) (list!640 (charsOf!81 (_1!1078 (get!408 lt!26870))))))))

(declare-fun d!23029 () Bool)

(declare-fun e!55019 () Bool)

(assert (=> d!23029 e!55019))

(declare-fun res!48244 () Bool)

(assert (=> d!23029 (=> res!48244 e!55019)))

(assert (=> d!23029 (= res!48244 (isEmpty!699 lt!26870))))

(assert (=> d!23029 (= lt!26870 e!55018)))

(declare-fun c!24222 () Bool)

(assert (=> d!23029 (= c!24222 (and (is-Cons!1606 (t!21173 rules!2471)) (is-Nil!1606 (t!21173 (t!21173 rules!2471)))))))

(declare-fun lt!26868 () Unit!1061)

(declare-fun lt!26871 () Unit!1061)

(assert (=> d!23029 (= lt!26868 lt!26871)))

(assert (=> d!23029 (isPrefix!40 input!2238 input!2238)))

(assert (=> d!23029 (= lt!26871 (lemmaIsPrefixRefl!40 input!2238 input!2238))))

(assert (=> d!23029 (rulesValidInductive!69 thiss!19403 (t!21173 rules!2471))))

(assert (=> d!23029 (= (maxPrefix!82 thiss!19403 (t!21173 rules!2471) input!2238) lt!26870)))

(declare-fun b!99223 () Bool)

(declare-fun res!48245 () Bool)

(assert (=> b!99223 (=> (not res!48245) (not e!55017))))

(assert (=> b!99223 (= res!48245 (= (list!640 (charsOf!81 (_1!1078 (get!408 lt!26870)))) (originalCharacters!399 (_1!1078 (get!408 lt!26870)))))))

(declare-fun b!99224 () Bool)

(assert (=> b!99224 (= e!55018 call!4393)))

(declare-fun b!99225 () Bool)

(declare-fun res!48242 () Bool)

(assert (=> b!99225 (=> (not res!48242) (not e!55017))))

(assert (=> b!99225 (= res!48242 (= (++!239 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26870)))) (_2!1078 (get!408 lt!26870))) input!2238))))

(declare-fun b!99226 () Bool)

(declare-fun res!48246 () Bool)

(assert (=> b!99226 (=> (not res!48246) (not e!55017))))

(assert (=> b!99226 (= res!48246 (= (value!12870 (_1!1078 (get!408 lt!26870))) (apply!254 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26870)))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26870)))))))))

(declare-fun b!99227 () Bool)

(assert (=> b!99227 (= e!55019 e!55017)))

(declare-fun res!48243 () Bool)

(assert (=> b!99227 (=> (not res!48243) (not e!55017))))

(assert (=> b!99227 (= res!48243 (isDefined!53 lt!26870))))

(assert (= (and d!23029 c!24222) b!99224))

(assert (= (and d!23029 (not c!24222)) b!99221))

(assert (= (or b!99224 b!99221) bm!4388))

(assert (= (and d!23029 (not res!48244)) b!99227))

(assert (= (and b!99227 res!48243) b!99223))

(assert (= (and b!99223 res!48245) b!99220))

(assert (= (and b!99220 res!48241) b!99225))

(assert (= (and b!99225 res!48242) b!99226))

(assert (= (and b!99226 res!48246) b!99222))

(assert (= (and b!99222 res!48240) b!99219))

(declare-fun m!83938 () Bool)

(assert (=> b!99226 m!83938))

(declare-fun m!83940 () Bool)

(assert (=> b!99226 m!83940))

(assert (=> b!99226 m!83940))

(declare-fun m!83942 () Bool)

(assert (=> b!99226 m!83942))

(assert (=> b!99219 m!83938))

(declare-fun m!83944 () Bool)

(assert (=> b!99219 m!83944))

(declare-fun m!83946 () Bool)

(assert (=> b!99221 m!83946))

(assert (=> b!99222 m!83938))

(declare-fun m!83948 () Bool)

(assert (=> b!99222 m!83948))

(assert (=> b!99222 m!83948))

(declare-fun m!83950 () Bool)

(assert (=> b!99222 m!83950))

(assert (=> b!99222 m!83950))

(declare-fun m!83952 () Bool)

(assert (=> b!99222 m!83952))

(assert (=> b!99225 m!83938))

(assert (=> b!99225 m!83948))

(assert (=> b!99225 m!83948))

(assert (=> b!99225 m!83950))

(assert (=> b!99225 m!83950))

(declare-fun m!83954 () Bool)

(assert (=> b!99225 m!83954))

(declare-fun m!83956 () Bool)

(assert (=> bm!4388 m!83956))

(declare-fun m!83958 () Bool)

(assert (=> b!99227 m!83958))

(assert (=> b!99220 m!83938))

(declare-fun m!83960 () Bool)

(assert (=> b!99220 m!83960))

(assert (=> b!99220 m!83578))

(declare-fun m!83962 () Bool)

(assert (=> d!23029 m!83962))

(assert (=> d!23029 m!83582))

(assert (=> d!23029 m!83584))

(declare-fun m!83964 () Bool)

(assert (=> d!23029 m!83964))

(assert (=> b!99223 m!83938))

(assert (=> b!99223 m!83948))

(assert (=> b!99223 m!83948))

(assert (=> b!99223 m!83950))

(assert (=> b!98957 d!23029))

(declare-fun d!23031 () Bool)

(assert (=> d!23031 (= (isEmpty!699 lt!26767) (not (is-Some!174 lt!26767)))))

(assert (=> d!22899 d!23031))

(declare-fun b!99239 () Bool)

(declare-fun e!55026 () Bool)

(assert (=> b!99239 (= e!55026 (>= (size!1419 input!2238) (size!1419 input!2238)))))

(declare-fun b!99236 () Bool)

(declare-fun e!55028 () Bool)

(declare-fun e!55027 () Bool)

(assert (=> b!99236 (= e!55028 e!55027)))

(declare-fun res!48255 () Bool)

(assert (=> b!99236 (=> (not res!48255) (not e!55027))))

(assert (=> b!99236 (= res!48255 (not (is-Nil!1604 input!2238)))))

(declare-fun b!99237 () Bool)

(declare-fun res!48256 () Bool)

(assert (=> b!99237 (=> (not res!48256) (not e!55027))))

(declare-fun head!453 (List!1610) C!1758)

(assert (=> b!99237 (= res!48256 (= (head!453 input!2238) (head!453 input!2238)))))

(declare-fun d!23033 () Bool)

(assert (=> d!23033 e!55026))

(declare-fun res!48258 () Bool)

(assert (=> d!23033 (=> res!48258 e!55026)))

(declare-fun lt!26875 () Bool)

(assert (=> d!23033 (= res!48258 (not lt!26875))))

(assert (=> d!23033 (= lt!26875 e!55028)))

(declare-fun res!48257 () Bool)

(assert (=> d!23033 (=> res!48257 e!55028)))

(assert (=> d!23033 (= res!48257 (is-Nil!1604 input!2238))))

(assert (=> d!23033 (= (isPrefix!40 input!2238 input!2238) lt!26875)))

(declare-fun b!99238 () Bool)

(declare-fun tail!165 (List!1610) List!1610)

(assert (=> b!99238 (= e!55027 (isPrefix!40 (tail!165 input!2238) (tail!165 input!2238)))))

(assert (= (and d!23033 (not res!48257)) b!99236))

(assert (= (and b!99236 res!48255) b!99237))

(assert (= (and b!99237 res!48256) b!99238))

(assert (= (and d!23033 (not res!48258)) b!99239))

(assert (=> b!99239 m!83578))

(assert (=> b!99239 m!83578))

(declare-fun m!83966 () Bool)

(assert (=> b!99237 m!83966))

(assert (=> b!99237 m!83966))

(declare-fun m!83968 () Bool)

(assert (=> b!99238 m!83968))

(assert (=> b!99238 m!83968))

(assert (=> b!99238 m!83968))

(assert (=> b!99238 m!83968))

(declare-fun m!83970 () Bool)

(assert (=> b!99238 m!83970))

(assert (=> d!22899 d!23033))

(declare-fun d!23035 () Bool)

(assert (=> d!23035 (isPrefix!40 input!2238 input!2238)))

(declare-fun lt!26878 () Unit!1061)

(declare-fun choose!1381 (List!1610 List!1610) Unit!1061)

(assert (=> d!23035 (= lt!26878 (choose!1381 input!2238 input!2238))))

(assert (=> d!23035 (= (lemmaIsPrefixRefl!40 input!2238 input!2238) lt!26878)))

(declare-fun bs!9715 () Bool)

(assert (= bs!9715 d!23035))

(assert (=> bs!9715 m!83582))

(declare-fun m!83972 () Bool)

(assert (=> bs!9715 m!83972))

(assert (=> d!22899 d!23035))

(declare-fun d!23037 () Bool)

(assert (=> d!23037 true))

(declare-fun lt!26896 () Bool)

(declare-fun lambda!1786 () Int)

(declare-fun forall!213 (List!1612 Int) Bool)

(assert (=> d!23037 (= lt!26896 (forall!213 rules!2471 lambda!1786))))

(declare-fun e!55048 () Bool)

(assert (=> d!23037 (= lt!26896 e!55048)))

(declare-fun res!48287 () Bool)

(assert (=> d!23037 (=> res!48287 e!55048)))

(assert (=> d!23037 (= res!48287 (not (is-Cons!1606 rules!2471)))))

(assert (=> d!23037 (= (rulesValidInductive!69 thiss!19403 rules!2471) lt!26896)))

(declare-fun b!99265 () Bool)

(declare-fun e!55049 () Bool)

(assert (=> b!99265 (= e!55048 e!55049)))

(declare-fun res!48286 () Bool)

(assert (=> b!99265 (=> (not res!48286) (not e!55049))))

(declare-fun ruleValid!41 (LexerInterface!242 Rule!500) Bool)

(assert (=> b!99265 (= res!48286 (ruleValid!41 thiss!19403 (h!7003 rules!2471)))))

(declare-fun b!99266 () Bool)

(assert (=> b!99266 (= e!55049 (rulesValidInductive!69 thiss!19403 (t!21173 rules!2471)))))

(assert (= (and d!23037 (not res!48287)) b!99265))

(assert (= (and b!99265 res!48286) b!99266))

(declare-fun m!84002 () Bool)

(assert (=> d!23037 m!84002))

(declare-fun m!84004 () Bool)

(assert (=> b!99265 m!84004))

(assert (=> b!99266 m!83964))

(assert (=> d!22899 d!23037))

(declare-fun d!23053 () Bool)

(declare-fun e!55058 () Bool)

(assert (=> d!23053 e!55058))

(declare-fun res!48303 () Bool)

(assert (=> d!23053 (=> res!48303 e!55058)))

(declare-fun lt!26911 () Option!175)

(assert (=> d!23053 (= res!48303 (isEmpty!699 lt!26911))))

(declare-fun e!55061 () Option!175)

(assert (=> d!23053 (= lt!26911 e!55061)))

(declare-fun c!24231 () Bool)

(declare-datatypes ((tuple2!1752 0))(
  ( (tuple2!1753 (_1!1083 List!1610) (_2!1083 List!1610)) )
))
(declare-fun lt!26908 () tuple2!1752)

(assert (=> d!23053 (= c!24231 (isEmpty!701 (_1!1083 lt!26908)))))

(declare-fun findLongestMatch!25 (Regex!418 List!1610) tuple2!1752)

(assert (=> d!23053 (= lt!26908 (findLongestMatch!25 (regex!350 (h!7003 rules!2471)) input!2238))))

(assert (=> d!23053 (ruleValid!41 thiss!19403 (h!7003 rules!2471))))

(assert (=> d!23053 (= (maxPrefixOneRule!38 thiss!19403 (h!7003 rules!2471) input!2238) lt!26911)))

(declare-fun b!99287 () Bool)

(declare-fun e!55060 () Bool)

(assert (=> b!99287 (= e!55060 (= (size!1415 (_1!1078 (get!408 lt!26911))) (size!1419 (originalCharacters!399 (_1!1078 (get!408 lt!26911))))))))

(declare-fun b!99288 () Bool)

(declare-fun res!48307 () Bool)

(assert (=> b!99288 (=> (not res!48307) (not e!55060))))

(assert (=> b!99288 (= res!48307 (= (value!12870 (_1!1078 (get!408 lt!26911))) (apply!254 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26911)))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26911)))))))))

(declare-fun b!99289 () Bool)

(assert (=> b!99289 (= e!55061 (Some!174 (tuple2!1743 (Token!457 (apply!254 (transformation!350 (h!7003 rules!2471)) (seqFromList!194 (_1!1083 lt!26908))) (h!7003 rules!2471) (size!1421 (seqFromList!194 (_1!1083 lt!26908))) (_1!1083 lt!26908)) (_2!1083 lt!26908))))))

(declare-fun lt!26909 () Unit!1061)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!27 (Regex!418 List!1610) Unit!1061)

(assert (=> b!99289 (= lt!26909 (longestMatchIsAcceptedByMatchOrIsEmpty!27 (regex!350 (h!7003 rules!2471)) input!2238))))

(declare-fun res!48305 () Bool)

(declare-fun findLongestMatchInner!26 (Regex!418 List!1610 Int List!1610 List!1610 Int) tuple2!1752)

(assert (=> b!99289 (= res!48305 (isEmpty!701 (_1!1083 (findLongestMatchInner!26 (regex!350 (h!7003 rules!2471)) Nil!1604 (size!1419 Nil!1604) input!2238 input!2238 (size!1419 input!2238)))))))

(declare-fun e!55059 () Bool)

(assert (=> b!99289 (=> res!48305 e!55059)))

(assert (=> b!99289 e!55059))

(declare-fun lt!26910 () Unit!1061)

(assert (=> b!99289 (= lt!26910 lt!26909)))

(declare-fun lt!26907 () Unit!1061)

(declare-fun lemmaSemiInverse!25 (TokenValueInjection!504 BalanceConc!1004) Unit!1061)

(assert (=> b!99289 (= lt!26907 (lemmaSemiInverse!25 (transformation!350 (h!7003 rules!2471)) (seqFromList!194 (_1!1083 lt!26908))))))

(declare-fun b!99290 () Bool)

(assert (=> b!99290 (= e!55058 e!55060)))

(declare-fun res!48306 () Bool)

(assert (=> b!99290 (=> (not res!48306) (not e!55060))))

(assert (=> b!99290 (= res!48306 (matchR!42 (regex!350 (h!7003 rules!2471)) (list!640 (charsOf!81 (_1!1078 (get!408 lt!26911))))))))

(declare-fun b!99291 () Bool)

(declare-fun res!48304 () Bool)

(assert (=> b!99291 (=> (not res!48304) (not e!55060))))

(assert (=> b!99291 (= res!48304 (= (++!239 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26911)))) (_2!1078 (get!408 lt!26911))) input!2238))))

(declare-fun b!99292 () Bool)

(assert (=> b!99292 (= e!55059 (matchR!42 (regex!350 (h!7003 rules!2471)) (_1!1083 (findLongestMatchInner!26 (regex!350 (h!7003 rules!2471)) Nil!1604 (size!1419 Nil!1604) input!2238 input!2238 (size!1419 input!2238)))))))

(declare-fun b!99293 () Bool)

(assert (=> b!99293 (= e!55061 None!174)))

(declare-fun b!99294 () Bool)

(declare-fun res!48308 () Bool)

(assert (=> b!99294 (=> (not res!48308) (not e!55060))))

(assert (=> b!99294 (= res!48308 (< (size!1419 (_2!1078 (get!408 lt!26911))) (size!1419 input!2238)))))

(declare-fun b!99295 () Bool)

(declare-fun res!48302 () Bool)

(assert (=> b!99295 (=> (not res!48302) (not e!55060))))

(assert (=> b!99295 (= res!48302 (= (rule!853 (_1!1078 (get!408 lt!26911))) (h!7003 rules!2471)))))

(assert (= (and d!23053 c!24231) b!99293))

(assert (= (and d!23053 (not c!24231)) b!99289))

(assert (= (and b!99289 (not res!48305)) b!99292))

(assert (= (and d!23053 (not res!48303)) b!99290))

(assert (= (and b!99290 res!48306) b!99291))

(assert (= (and b!99291 res!48304) b!99294))

(assert (= (and b!99294 res!48308) b!99295))

(assert (= (and b!99295 res!48302) b!99288))

(assert (= (and b!99288 res!48307) b!99287))

(declare-fun m!84006 () Bool)

(assert (=> b!99288 m!84006))

(declare-fun m!84008 () Bool)

(assert (=> b!99288 m!84008))

(assert (=> b!99288 m!84008))

(declare-fun m!84010 () Bool)

(assert (=> b!99288 m!84010))

(assert (=> b!99291 m!84006))

(declare-fun m!84012 () Bool)

(assert (=> b!99291 m!84012))

(assert (=> b!99291 m!84012))

(declare-fun m!84014 () Bool)

(assert (=> b!99291 m!84014))

(assert (=> b!99291 m!84014))

(declare-fun m!84016 () Bool)

(assert (=> b!99291 m!84016))

(assert (=> b!99295 m!84006))

(assert (=> b!99287 m!84006))

(declare-fun m!84018 () Bool)

(assert (=> b!99287 m!84018))

(assert (=> b!99290 m!84006))

(assert (=> b!99290 m!84012))

(assert (=> b!99290 m!84012))

(assert (=> b!99290 m!84014))

(assert (=> b!99290 m!84014))

(declare-fun m!84020 () Bool)

(assert (=> b!99290 m!84020))

(declare-fun m!84022 () Bool)

(assert (=> d!23053 m!84022))

(declare-fun m!84024 () Bool)

(assert (=> d!23053 m!84024))

(declare-fun m!84026 () Bool)

(assert (=> d!23053 m!84026))

(assert (=> d!23053 m!84004))

(assert (=> b!99294 m!84006))

(declare-fun m!84028 () Bool)

(assert (=> b!99294 m!84028))

(assert (=> b!99294 m!83578))

(declare-fun m!84030 () Bool)

(assert (=> b!99289 m!84030))

(assert (=> b!99289 m!83578))

(declare-fun m!84032 () Bool)

(assert (=> b!99289 m!84032))

(declare-fun m!84034 () Bool)

(assert (=> b!99289 m!84034))

(declare-fun m!84036 () Bool)

(assert (=> b!99289 m!84036))

(assert (=> b!99289 m!84034))

(declare-fun m!84038 () Bool)

(assert (=> b!99289 m!84038))

(declare-fun m!84040 () Bool)

(assert (=> b!99289 m!84040))

(assert (=> b!99289 m!83578))

(assert (=> b!99289 m!84030))

(assert (=> b!99289 m!84034))

(assert (=> b!99289 m!84034))

(declare-fun m!84042 () Bool)

(assert (=> b!99289 m!84042))

(declare-fun m!84044 () Bool)

(assert (=> b!99289 m!84044))

(assert (=> b!99292 m!84030))

(assert (=> b!99292 m!83578))

(assert (=> b!99292 m!84030))

(assert (=> b!99292 m!83578))

(assert (=> b!99292 m!84032))

(declare-fun m!84046 () Bool)

(assert (=> b!99292 m!84046))

(assert (=> bm!4384 d!23053))

(declare-fun d!23055 () Bool)

(declare-fun c!24232 () Bool)

(assert (=> d!23055 (= c!24232 (is-Empty!500 (c!24158 (_2!1077 lt!26723))))))

(declare-fun e!55062 () List!1610)

(assert (=> d!23055 (= (list!644 (c!24158 (_2!1077 lt!26723))) e!55062)))

(declare-fun b!99297 () Bool)

(declare-fun e!55063 () List!1610)

(assert (=> b!99297 (= e!55062 e!55063)))

(declare-fun c!24233 () Bool)

(assert (=> b!99297 (= c!24233 (is-Leaf!811 (c!24158 (_2!1077 lt!26723))))))

(declare-fun b!99298 () Bool)

(assert (=> b!99298 (= e!55063 (list!648 (xs!3087 (c!24158 (_2!1077 lt!26723)))))))

(declare-fun b!99299 () Bool)

(assert (=> b!99299 (= e!55063 (++!239 (list!644 (left!1224 (c!24158 (_2!1077 lt!26723)))) (list!644 (right!1554 (c!24158 (_2!1077 lt!26723))))))))

(declare-fun b!99296 () Bool)

(assert (=> b!99296 (= e!55062 Nil!1604)))

(assert (= (and d!23055 c!24232) b!99296))

(assert (= (and d!23055 (not c!24232)) b!99297))

(assert (= (and b!99297 c!24233) b!99298))

(assert (= (and b!99297 (not c!24233)) b!99299))

(declare-fun m!84048 () Bool)

(assert (=> b!99298 m!84048))

(declare-fun m!84050 () Bool)

(assert (=> b!99299 m!84050))

(declare-fun m!84052 () Bool)

(assert (=> b!99299 m!84052))

(assert (=> b!99299 m!84050))

(assert (=> b!99299 m!84052))

(declare-fun m!84054 () Bool)

(assert (=> b!99299 m!84054))

(assert (=> d!22907 d!23055))

(declare-fun d!23057 () Bool)

(declare-fun lt!26912 () Int)

(assert (=> d!23057 (= lt!26912 (size!1419 (list!640 (_2!1077 lt!26804))))))

(assert (=> d!23057 (= lt!26912 (size!1425 (c!24158 (_2!1077 lt!26804))))))

(assert (=> d!23057 (= (size!1421 (_2!1077 lt!26804)) lt!26912)))

(declare-fun bs!9720 () Bool)

(assert (= bs!9720 d!23057))

(assert (=> bs!9720 m!83718))

(assert (=> bs!9720 m!83718))

(declare-fun m!84056 () Bool)

(assert (=> bs!9720 m!84056))

(declare-fun m!84058 () Bool)

(assert (=> bs!9720 m!84058))

(assert (=> b!99026 d!23057))

(declare-fun d!23059 () Bool)

(declare-fun lt!26913 () Int)

(assert (=> d!23059 (= lt!26913 (size!1419 (list!640 (seqFromList!194 input!2238))))))

(assert (=> d!23059 (= lt!26913 (size!1425 (c!24158 (seqFromList!194 input!2238))))))

(assert (=> d!23059 (= (size!1421 (seqFromList!194 input!2238)) lt!26913)))

(declare-fun bs!9721 () Bool)

(assert (= bs!9721 d!23059))

(assert (=> bs!9721 m!83470))

(assert (=> bs!9721 m!83720))

(assert (=> bs!9721 m!83720))

(assert (=> bs!9721 m!83864))

(declare-fun m!84060 () Bool)

(assert (=> bs!9721 m!84060))

(assert (=> b!99026 d!23059))

(declare-fun d!23061 () Bool)

(assert (=> d!23061 true))

(declare-fun order!717 () Int)

(declare-fun order!719 () Int)

(declare-fun lambda!1789 () Int)

(declare-fun dynLambda!467 (Int Int) Int)

(declare-fun dynLambda!468 (Int Int) Int)

(assert (=> d!23061 (< (dynLambda!467 order!717 (toValue!909 (transformation!350 (h!7003 rules!2471)))) (dynLambda!468 order!719 lambda!1789))))

(declare-fun Forall2!52 (Int) Bool)

(assert (=> d!23061 (= (equivClasses!79 (toChars!768 (transformation!350 (h!7003 rules!2471))) (toValue!909 (transformation!350 (h!7003 rules!2471)))) (Forall2!52 lambda!1789))))

(declare-fun bs!9722 () Bool)

(assert (= bs!9722 d!23061))

(declare-fun m!84062 () Bool)

(assert (=> bs!9722 m!84062))

(assert (=> b!99030 d!23061))

(declare-fun d!23063 () Bool)

(declare-fun lt!26916 () Int)

(assert (=> d!23063 (= lt!26916 (size!1416 (list!641 (_1!1077 lt!26778))))))

(declare-fun size!1426 (Conc!501) Int)

(assert (=> d!23063 (= lt!26916 (size!1426 (c!24160 (_1!1077 lt!26778))))))

(assert (=> d!23063 (= (size!1420 (_1!1077 lt!26778)) lt!26916)))

(declare-fun bs!9723 () Bool)

(assert (= bs!9723 d!23063))

(assert (=> bs!9723 m!83620))

(assert (=> bs!9723 m!83620))

(declare-fun m!84064 () Bool)

(assert (=> bs!9723 m!84064))

(declare-fun m!84066 () Bool)

(assert (=> bs!9723 m!84066))

(assert (=> d!22911 d!23063))

(declare-fun lt!27127 () tuple2!1740)

(declare-datatypes ((tuple2!1754 0))(
  ( (tuple2!1755 (_1!1084 Token!456) (_2!1084 BalanceConc!1004)) )
))
(declare-datatypes ((Option!177 0))(
  ( (None!176) (Some!176 (v!12965 tuple2!1754)) )
))
(declare-fun lt!27139 () Option!177)

(declare-fun b!99398 () Bool)

(declare-fun lexRec!47 (LexerInterface!242 List!1612 BalanceConc!1004) tuple2!1740)

(assert (=> b!99398 (= lt!27127 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27139))))))

(declare-fun e!55120 () tuple2!1740)

(assert (=> b!99398 (= e!55120 (tuple2!1741 (prepend!120 (_1!1077 lt!27127) (_1!1084 (v!12965 lt!27139))) (_2!1077 lt!27127)))))

(declare-fun b!99399 () Bool)

(declare-fun e!55118 () tuple2!1740)

(assert (=> b!99399 (= e!55118 (tuple2!1741 (BalanceConc!1007 Empty!501) (seqFromList!194 (_2!1078 lt!26730))))))

(declare-fun lt!27140 () tuple2!1740)

(declare-fun e!55119 () Bool)

(declare-fun b!99400 () Bool)

(assert (=> b!99400 (= e!55119 (= (list!640 (_2!1077 lt!27140)) (list!640 (_2!1077 (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)))))))))

(declare-fun lt!27130 () Option!177)

(declare-fun b!99401 () Bool)

(declare-fun lt!27132 () BalanceConc!1004)

(declare-fun append!56 (BalanceConc!1006 Token!456) BalanceConc!1006)

(assert (=> b!99401 (= e!55118 (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)) lt!27132 (_2!1084 (v!12965 lt!27130)) (append!56 (BalanceConc!1007 Empty!501) (_1!1084 (v!12965 lt!27130)))))))

(declare-fun lt!27129 () tuple2!1740)

(assert (=> b!99401 (= lt!27129 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27130))))))

(declare-fun lt!27131 () List!1610)

(assert (=> b!99401 (= lt!27131 (list!640 (BalanceConc!1005 Empty!500)))))

(declare-fun lt!27109 () List!1610)

(assert (=> b!99401 (= lt!27109 (list!640 (charsOf!81 (_1!1084 (v!12965 lt!27130)))))))

(declare-fun lt!27110 () List!1610)

(assert (=> b!99401 (= lt!27110 (list!640 (_2!1084 (v!12965 lt!27130))))))

(declare-fun lt!27137 () Unit!1061)

(declare-fun lemmaConcatAssociativity!94 (List!1610 List!1610 List!1610) Unit!1061)

(assert (=> b!99401 (= lt!27137 (lemmaConcatAssociativity!94 lt!27131 lt!27109 lt!27110))))

(assert (=> b!99401 (= (++!239 (++!239 lt!27131 lt!27109) lt!27110) (++!239 lt!27131 (++!239 lt!27109 lt!27110)))))

(declare-fun lt!27112 () Unit!1061)

(assert (=> b!99401 (= lt!27112 lt!27137)))

(declare-fun lt!27128 () Option!177)

(declare-fun maxPrefixZipperSequence!45 (LexerInterface!242 List!1612 BalanceConc!1004) Option!177)

(assert (=> b!99401 (= lt!27128 (maxPrefixZipperSequence!45 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))))))

(declare-fun c!24267 () Bool)

(assert (=> b!99401 (= c!24267 (is-Some!176 lt!27128))))

(declare-fun e!55121 () tuple2!1740)

(assert (=> b!99401 (= (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))) e!55121)))

(declare-fun lt!27118 () Unit!1061)

(declare-fun Unit!1066 () Unit!1061)

(assert (=> b!99401 (= lt!27118 Unit!1066)))

(declare-fun lt!27138 () List!1613)

(assert (=> b!99401 (= lt!27138 (list!641 (BalanceConc!1007 Empty!501)))))

(declare-fun lt!27111 () List!1613)

(assert (=> b!99401 (= lt!27111 (Cons!1607 (_1!1084 (v!12965 lt!27130)) Nil!1607))))

(declare-fun lt!27113 () List!1613)

(assert (=> b!99401 (= lt!27113 (list!641 (_1!1077 lt!27129)))))

(declare-fun lt!27121 () Unit!1061)

(declare-fun lemmaConcatAssociativity!95 (List!1613 List!1613 List!1613) Unit!1061)

(assert (=> b!99401 (= lt!27121 (lemmaConcatAssociativity!95 lt!27138 lt!27111 lt!27113))))

(assert (=> b!99401 (= (++!241 (++!241 lt!27138 lt!27111) lt!27113) (++!241 lt!27138 (++!241 lt!27111 lt!27113)))))

(declare-fun lt!27136 () Unit!1061)

(assert (=> b!99401 (= lt!27136 lt!27121)))

(declare-fun lt!27116 () List!1610)

(assert (=> b!99401 (= lt!27116 (++!239 (list!640 (BalanceConc!1005 Empty!500)) (list!640 (charsOf!81 (_1!1084 (v!12965 lt!27130))))))))

(declare-fun lt!27117 () List!1610)

(assert (=> b!99401 (= lt!27117 (list!640 (_2!1084 (v!12965 lt!27130))))))

(declare-fun lt!27114 () List!1613)

(assert (=> b!99401 (= lt!27114 (list!641 (append!56 (BalanceConc!1007 Empty!501) (_1!1084 (v!12965 lt!27130)))))))

(declare-fun lt!27124 () Unit!1061)

(declare-fun lemmaLexThenLexPrefix!42 (LexerInterface!242 List!1612 List!1610 List!1610 List!1613 List!1613 List!1610) Unit!1061)

(assert (=> b!99401 (= lt!27124 (lemmaLexThenLexPrefix!42 thiss!19403 rules!2471 lt!27116 lt!27117 lt!27114 (list!641 (_1!1077 lt!27129)) (list!640 (_2!1077 lt!27129))))))

(assert (=> b!99401 (= (lexList!70 thiss!19403 rules!2471 lt!27116) (tuple2!1749 lt!27114 Nil!1604))))

(declare-fun lt!27119 () Unit!1061)

(assert (=> b!99401 (= lt!27119 lt!27124)))

(declare-fun lt!27125 () BalanceConc!1004)

(declare-fun ++!242 (BalanceConc!1004 BalanceConc!1004) BalanceConc!1004)

(assert (=> b!99401 (= lt!27125 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27130)))))))

(assert (=> b!99401 (= lt!27139 (maxPrefixZipperSequence!45 thiss!19403 rules!2471 lt!27125))))

(declare-fun c!24265 () Bool)

(assert (=> b!99401 (= c!24265 (is-Some!176 lt!27139))))

(assert (=> b!99401 (= (lexRec!47 thiss!19403 rules!2471 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27130))))) e!55120)))

(declare-fun lt!27135 () Unit!1061)

(declare-fun Unit!1067 () Unit!1061)

(assert (=> b!99401 (= lt!27135 Unit!1067)))

(assert (=> b!99401 (= lt!27132 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27130)))))))

(declare-fun lt!27120 () List!1610)

(assert (=> b!99401 (= lt!27120 (list!640 lt!27132))))

(declare-fun lt!27108 () List!1610)

(assert (=> b!99401 (= lt!27108 (list!640 (_2!1084 (v!12965 lt!27130))))))

(declare-fun lt!27115 () Unit!1061)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!42 (List!1610 List!1610) Unit!1061)

(assert (=> b!99401 (= lt!27115 (lemmaConcatTwoListThenFSndIsSuffix!42 lt!27120 lt!27108))))

(declare-fun isSuffix!42 (List!1610 List!1610) Bool)

(assert (=> b!99401 (isSuffix!42 lt!27108 (++!239 lt!27120 lt!27108))))

(declare-fun lt!27141 () Unit!1061)

(assert (=> b!99401 (= lt!27141 lt!27115)))

(declare-fun lt!27133 () tuple2!1740)

(declare-fun b!99402 () Bool)

(assert (=> b!99402 (= lt!27133 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27128))))))

(assert (=> b!99402 (= e!55121 (tuple2!1741 (prepend!120 (_1!1077 lt!27133) (_1!1084 (v!12965 lt!27128))) (_2!1077 lt!27133)))))

(declare-fun d!23065 () Bool)

(assert (=> d!23065 e!55119))

(declare-fun res!48343 () Bool)

(assert (=> d!23065 (=> (not res!48343) (not e!55119))))

(assert (=> d!23065 (= res!48343 (= (list!641 (_1!1077 lt!27140)) (list!641 (_1!1077 (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)))))))))

(assert (=> d!23065 (= lt!27140 e!55118)))

(declare-fun c!24266 () Bool)

(assert (=> d!23065 (= c!24266 (is-Some!176 lt!27130))))

(declare-fun maxPrefixZipperSequenceV2!42 (LexerInterface!242 List!1612 BalanceConc!1004 BalanceConc!1004) Option!177)

(assert (=> d!23065 (= lt!27130 (maxPrefixZipperSequenceV2!42 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)) (seqFromList!194 (_2!1078 lt!26730))))))

(declare-fun lt!27123 () Unit!1061)

(declare-fun lt!27134 () Unit!1061)

(assert (=> d!23065 (= lt!27123 lt!27134)))

(declare-fun lt!27126 () List!1610)

(declare-fun lt!27122 () List!1610)

(assert (=> d!23065 (isSuffix!42 lt!27126 (++!239 lt!27122 lt!27126))))

(assert (=> d!23065 (= lt!27134 (lemmaConcatTwoListThenFSndIsSuffix!42 lt!27122 lt!27126))))

(assert (=> d!23065 (= lt!27126 (list!640 (seqFromList!194 (_2!1078 lt!26730))))))

(assert (=> d!23065 (= lt!27122 (list!640 (BalanceConc!1005 Empty!500)))))

(assert (=> d!23065 (= (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730)) (BalanceConc!1005 Empty!500) (seqFromList!194 (_2!1078 lt!26730)) (BalanceConc!1007 Empty!501)) lt!27140)))

(declare-fun b!99403 () Bool)

(assert (=> b!99403 (= e!55120 (tuple2!1741 (BalanceConc!1007 Empty!501) lt!27125))))

(declare-fun b!99404 () Bool)

(assert (=> b!99404 (= e!55121 (tuple2!1741 (BalanceConc!1007 Empty!501) (seqFromList!194 (_2!1078 lt!26730))))))

(assert (= (and d!23065 c!24266) b!99401))

(assert (= (and d!23065 (not c!24266)) b!99399))

(assert (= (and b!99401 c!24267) b!99402))

(assert (= (and b!99401 (not c!24267)) b!99404))

(assert (= (and b!99401 c!24265) b!99398))

(assert (= (and b!99401 (not c!24265)) b!99403))

(assert (= (and d!23065 res!48343) b!99400))

(declare-fun m!84276 () Bool)

(assert (=> d!23065 m!84276))

(declare-fun m!84278 () Bool)

(assert (=> d!23065 m!84278))

(assert (=> d!23065 m!84276))

(declare-fun m!84280 () Bool)

(assert (=> d!23065 m!84280))

(declare-fun m!84282 () Bool)

(assert (=> d!23065 m!84282))

(assert (=> d!23065 m!83480))

(declare-fun m!84284 () Bool)

(assert (=> d!23065 m!84284))

(assert (=> d!23065 m!83480))

(assert (=> d!23065 m!83480))

(declare-fun m!84286 () Bool)

(assert (=> d!23065 m!84286))

(assert (=> d!23065 m!83480))

(assert (=> d!23065 m!83606))

(declare-fun m!84288 () Bool)

(assert (=> d!23065 m!84288))

(declare-fun m!84290 () Bool)

(assert (=> d!23065 m!84290))

(declare-fun m!84292 () Bool)

(assert (=> b!99401 m!84292))

(declare-fun m!84294 () Bool)

(assert (=> b!99401 m!84294))

(declare-fun m!84296 () Bool)

(assert (=> b!99401 m!84296))

(declare-fun m!84298 () Bool)

(assert (=> b!99401 m!84298))

(assert (=> b!99401 m!84294))

(assert (=> b!99401 m!84292))

(declare-fun m!84300 () Bool)

(assert (=> b!99401 m!84300))

(assert (=> b!99401 m!83480))

(declare-fun m!84302 () Bool)

(assert (=> b!99401 m!84302))

(declare-fun m!84304 () Bool)

(assert (=> b!99401 m!84304))

(declare-fun m!84306 () Bool)

(assert (=> b!99401 m!84306))

(declare-fun m!84308 () Bool)

(assert (=> b!99401 m!84308))

(declare-fun m!84310 () Bool)

(assert (=> b!99401 m!84310))

(declare-fun m!84312 () Bool)

(assert (=> b!99401 m!84312))

(declare-fun m!84314 () Bool)

(assert (=> b!99401 m!84314))

(declare-fun m!84316 () Bool)

(assert (=> b!99401 m!84316))

(assert (=> b!99401 m!84316))

(declare-fun m!84318 () Bool)

(assert (=> b!99401 m!84318))

(declare-fun m!84320 () Bool)

(assert (=> b!99401 m!84320))

(declare-fun m!84322 () Bool)

(assert (=> b!99401 m!84322))

(assert (=> b!99401 m!83480))

(assert (=> b!99401 m!84284))

(declare-fun m!84324 () Bool)

(assert (=> b!99401 m!84324))

(declare-fun m!84326 () Bool)

(assert (=> b!99401 m!84326))

(declare-fun m!84328 () Bool)

(assert (=> b!99401 m!84328))

(assert (=> b!99401 m!84324))

(assert (=> b!99401 m!84328))

(declare-fun m!84330 () Bool)

(assert (=> b!99401 m!84330))

(assert (=> b!99401 m!84312))

(declare-fun m!84332 () Bool)

(assert (=> b!99401 m!84332))

(declare-fun m!84334 () Bool)

(assert (=> b!99401 m!84334))

(declare-fun m!84336 () Bool)

(assert (=> b!99401 m!84336))

(assert (=> b!99401 m!84280))

(declare-fun m!84338 () Bool)

(assert (=> b!99401 m!84338))

(assert (=> b!99401 m!84318))

(assert (=> b!99401 m!84308))

(declare-fun m!84340 () Bool)

(assert (=> b!99401 m!84340))

(assert (=> b!99401 m!84280))

(assert (=> b!99401 m!84330))

(declare-fun m!84342 () Bool)

(assert (=> b!99401 m!84342))

(declare-fun m!84344 () Bool)

(assert (=> b!99401 m!84344))

(declare-fun m!84346 () Bool)

(assert (=> b!99401 m!84346))

(assert (=> b!99401 m!83480))

(assert (=> b!99401 m!84312))

(declare-fun m!84348 () Bool)

(assert (=> b!99401 m!84348))

(declare-fun m!84350 () Bool)

(assert (=> b!99401 m!84350))

(assert (=> b!99401 m!84304))

(assert (=> b!99401 m!84328))

(assert (=> b!99401 m!84346))

(declare-fun m!84352 () Bool)

(assert (=> b!99401 m!84352))

(declare-fun m!84354 () Bool)

(assert (=> b!99402 m!84354))

(declare-fun m!84356 () Bool)

(assert (=> b!99402 m!84356))

(declare-fun m!84358 () Bool)

(assert (=> b!99398 m!84358))

(declare-fun m!84360 () Bool)

(assert (=> b!99398 m!84360))

(declare-fun m!84362 () Bool)

(assert (=> b!99400 m!84362))

(assert (=> b!99400 m!83480))

(assert (=> b!99400 m!84284))

(declare-fun m!84364 () Bool)

(assert (=> b!99400 m!84364))

(assert (=> d!22911 d!23065))

(declare-fun d!23121 () Bool)

(assert (=> d!23121 (= (isEmpty!701 (list!640 (_2!1077 lt!26723))) (is-Nil!1604 (list!640 (_2!1077 lt!26723))))))

(assert (=> d!22941 d!23121))

(assert (=> d!22941 d!22907))

(declare-fun d!23123 () Bool)

(declare-fun lt!27144 () Bool)

(assert (=> d!23123 (= lt!27144 (isEmpty!701 (list!644 (c!24158 (_2!1077 lt!26723)))))))

(assert (=> d!23123 (= lt!27144 (= (size!1425 (c!24158 (_2!1077 lt!26723))) 0))))

(assert (=> d!23123 (= (isEmpty!702 (c!24158 (_2!1077 lt!26723))) lt!27144)))

(declare-fun bs!9735 () Bool)

(assert (= bs!9735 d!23123))

(assert (=> bs!9735 m!83602))

(assert (=> bs!9735 m!83602))

(declare-fun m!84366 () Bool)

(assert (=> bs!9735 m!84366))

(declare-fun m!84368 () Bool)

(assert (=> bs!9735 m!84368))

(assert (=> d!22941 d!23123))

(declare-fun b!99417 () Bool)

(declare-fun res!48356 () Bool)

(declare-fun e!55127 () Bool)

(assert (=> b!99417 (=> (not res!48356) (not e!55127))))

(assert (=> b!99417 (= res!48356 (isBalanced!124 (right!1555 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))))))

(declare-fun b!99418 () Bool)

(declare-fun res!48361 () Bool)

(assert (=> b!99418 (=> (not res!48361) (not e!55127))))

(declare-fun height!45 (Conc!501) Int)

(assert (=> b!99418 (= res!48361 (<= (- (height!45 (left!1225 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))) (height!45 (right!1555 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))))) 1))))

(declare-fun b!99419 () Bool)

(declare-fun e!55126 () Bool)

(assert (=> b!99419 (= e!55126 e!55127)))

(declare-fun res!48358 () Bool)

(assert (=> b!99419 (=> (not res!48358) (not e!55127))))

(assert (=> b!99419 (= res!48358 (<= (- 1) (- (height!45 (left!1225 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))) (height!45 (right!1555 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))))))))

(declare-fun b!99420 () Bool)

(assert (=> b!99420 (= e!55127 (not (isEmpty!708 (right!1555 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))))))))

(declare-fun d!23125 () Bool)

(declare-fun res!48357 () Bool)

(assert (=> d!23125 (=> res!48357 e!55126)))

(assert (=> d!23125 (= res!48357 (not (is-Node!501 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))))))

(assert (=> d!23125 (= (isBalanced!124 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))) e!55126)))

(declare-fun b!99421 () Bool)

(declare-fun res!48359 () Bool)

(assert (=> b!99421 (=> (not res!48359) (not e!55127))))

(assert (=> b!99421 (= res!48359 (not (isEmpty!708 (left!1225 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725))))))))

(declare-fun b!99422 () Bool)

(declare-fun res!48360 () Bool)

(assert (=> b!99422 (=> (not res!48360) (not e!55127))))

(assert (=> b!99422 (= res!48360 (isBalanced!124 (left!1225 (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)))))))

(assert (= (and d!23125 (not res!48357)) b!99419))

(assert (= (and b!99419 res!48358) b!99418))

(assert (= (and b!99418 res!48361) b!99422))

(assert (= (and b!99422 res!48360) b!99417))

(assert (= (and b!99417 res!48356) b!99421))

(assert (= (and b!99421 res!48359) b!99420))

(declare-fun m!84370 () Bool)

(assert (=> b!99419 m!84370))

(declare-fun m!84372 () Bool)

(assert (=> b!99419 m!84372))

(declare-fun m!84374 () Bool)

(assert (=> b!99420 m!84374))

(declare-fun m!84376 () Bool)

(assert (=> b!99421 m!84376))

(declare-fun m!84378 () Bool)

(assert (=> b!99422 m!84378))

(declare-fun m!84380 () Bool)

(assert (=> b!99417 m!84380))

(assert (=> b!99418 m!84370))

(assert (=> b!99418 m!84372))

(assert (=> d!22919 d!23125))

(declare-fun d!23127 () Bool)

(declare-fun e!55130 () Bool)

(assert (=> d!23127 e!55130))

(declare-fun res!48364 () Bool)

(assert (=> d!23127 (=> (not res!48364) (not e!55130))))

(declare-fun lt!27147 () Conc!501)

(assert (=> d!23127 (= res!48364 (isBalanced!124 lt!27147))))

(declare-fun ++!243 (Conc!501 Conc!501) Conc!501)

(declare-fun fill!26 (Int Token!456) IArray!1003)

(assert (=> d!23127 (= lt!27147 (++!243 (Leaf!812 (fill!26 1 (h!7004 lt!26725)) 1) (c!24160 (seqFromList!195 (t!21174 lt!26725)))))))

(assert (=> d!23127 (isBalanced!124 (c!24160 (seqFromList!195 (t!21174 lt!26725))))))

(assert (=> d!23127 (= (prepend!122 (c!24160 (seqFromList!195 (t!21174 lt!26725))) (h!7004 lt!26725)) lt!27147)))

(declare-fun b!99425 () Bool)

(assert (=> b!99425 (= e!55130 (= (list!645 lt!27147) (Cons!1607 (h!7004 lt!26725) (list!645 (c!24160 (seqFromList!195 (t!21174 lt!26725)))))))))

(assert (= (and d!23127 res!48364) b!99425))

(declare-fun m!84382 () Bool)

(assert (=> d!23127 m!84382))

(declare-fun m!84384 () Bool)

(assert (=> d!23127 m!84384))

(declare-fun m!84386 () Bool)

(assert (=> d!23127 m!84386))

(declare-fun m!84388 () Bool)

(assert (=> d!23127 m!84388))

(declare-fun m!84390 () Bool)

(assert (=> b!99425 m!84390))

(declare-fun m!84392 () Bool)

(assert (=> b!99425 m!84392))

(assert (=> d!22919 d!23127))

(declare-fun d!23129 () Bool)

(declare-fun e!55131 () Bool)

(assert (=> d!23129 e!55131))

(declare-fun res!48365 () Bool)

(assert (=> d!23129 (=> (not res!48365) (not e!55131))))

(declare-fun lt!27148 () BalanceConc!1004)

(assert (=> d!23129 (= res!48365 (= (list!640 lt!27148) input!2238))))

(assert (=> d!23129 (= lt!27148 (BalanceConc!1005 (fromList!57 input!2238)))))

(assert (=> d!23129 (= (fromListB!87 input!2238) lt!27148)))

(declare-fun b!99426 () Bool)

(assert (=> b!99426 (= e!55131 (isBalanced!126 (fromList!57 input!2238)))))

(assert (= (and d!23129 res!48365) b!99426))

(declare-fun m!84394 () Bool)

(assert (=> d!23129 m!84394))

(declare-fun m!84396 () Bool)

(assert (=> d!23129 m!84396))

(assert (=> b!99426 m!84396))

(assert (=> b!99426 m!84396))

(declare-fun m!84398 () Bool)

(assert (=> b!99426 m!84398))

(assert (=> d!22949 d!23129))

(declare-fun d!23131 () Bool)

(assert (=> d!23131 (= (list!641 (_1!1077 lt!26778)) (list!645 (c!24160 (_1!1077 lt!26778))))))

(declare-fun bs!9736 () Bool)

(assert (= bs!9736 d!23131))

(declare-fun m!84400 () Bool)

(assert (=> bs!9736 m!84400))

(assert (=> b!98975 d!23131))

(declare-fun b!99427 () Bool)

(declare-fun e!55132 () Bool)

(declare-fun e!55134 () Bool)

(assert (=> b!99427 (= e!55132 e!55134)))

(declare-fun res!48366 () Bool)

(declare-fun lt!27149 () tuple2!1748)

(assert (=> b!99427 (= res!48366 (< (size!1419 (_2!1081 lt!27149)) (size!1419 (list!640 (seqFromList!194 (_2!1078 lt!26730))))))))

(assert (=> b!99427 (=> (not res!48366) (not e!55134))))

(declare-fun b!99428 () Bool)

(declare-fun e!55133 () tuple2!1748)

(assert (=> b!99428 (= e!55133 (tuple2!1749 Nil!1607 (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))

(declare-fun b!99429 () Bool)

(assert (=> b!99429 (= e!55132 (= (_2!1081 lt!27149) (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))

(declare-fun b!99430 () Bool)

(assert (=> b!99430 (= e!55134 (not (isEmpty!707 (_1!1081 lt!27149))))))

(declare-fun d!23133 () Bool)

(assert (=> d!23133 e!55132))

(declare-fun c!24269 () Bool)

(assert (=> d!23133 (= c!24269 (> (size!1416 (_1!1081 lt!27149)) 0))))

(assert (=> d!23133 (= lt!27149 e!55133)))

(declare-fun c!24268 () Bool)

(declare-fun lt!27151 () Option!175)

(assert (=> d!23133 (= c!24268 (is-Some!174 lt!27151))))

(assert (=> d!23133 (= lt!27151 (maxPrefix!82 thiss!19403 rules!2471 (list!640 (seqFromList!194 (_2!1078 lt!26730)))))))

(assert (=> d!23133 (= (lexList!70 thiss!19403 rules!2471 (list!640 (seqFromList!194 (_2!1078 lt!26730)))) lt!27149)))

(declare-fun b!99431 () Bool)

(declare-fun lt!27150 () tuple2!1748)

(assert (=> b!99431 (= e!55133 (tuple2!1749 (Cons!1607 (_1!1078 (v!12953 lt!27151)) (_1!1081 lt!27150)) (_2!1081 lt!27150)))))

(assert (=> b!99431 (= lt!27150 (lexList!70 thiss!19403 rules!2471 (_2!1078 (v!12953 lt!27151))))))

(assert (= (and d!23133 c!24268) b!99431))

(assert (= (and d!23133 (not c!24268)) b!99428))

(assert (= (and d!23133 c!24269) b!99427))

(assert (= (and d!23133 (not c!24269)) b!99429))

(assert (= (and b!99427 res!48366) b!99430))

(declare-fun m!84402 () Bool)

(assert (=> b!99427 m!84402))

(assert (=> b!99427 m!83606))

(assert (=> b!99427 m!83930))

(declare-fun m!84404 () Bool)

(assert (=> b!99430 m!84404))

(declare-fun m!84406 () Bool)

(assert (=> d!23133 m!84406))

(assert (=> d!23133 m!83606))

(declare-fun m!84408 () Bool)

(assert (=> d!23133 m!84408))

(declare-fun m!84410 () Bool)

(assert (=> b!99431 m!84410))

(assert (=> b!98975 d!23133))

(declare-fun d!23135 () Bool)

(assert (=> d!23135 (= (list!640 (seqFromList!194 (_2!1078 lt!26730))) (list!644 (c!24158 (seqFromList!194 (_2!1078 lt!26730)))))))

(declare-fun bs!9737 () Bool)

(assert (= bs!9737 d!23135))

(declare-fun m!84412 () Bool)

(assert (=> bs!9737 m!84412))

(assert (=> b!98975 d!23135))

(declare-fun d!23137 () Bool)

(declare-fun lt!27152 () Bool)

(assert (=> d!23137 (= lt!27152 (isEmpty!707 (list!641 (_1!1077 lt!26778))))))

(assert (=> d!23137 (= lt!27152 (isEmpty!708 (c!24160 (_1!1077 lt!26778))))))

(assert (=> d!23137 (= (isEmpty!700 (_1!1077 lt!26778)) lt!27152)))

(declare-fun bs!9738 () Bool)

(assert (= bs!9738 d!23137))

(assert (=> bs!9738 m!83620))

(assert (=> bs!9738 m!83620))

(declare-fun m!84414 () Bool)

(assert (=> bs!9738 m!84414))

(declare-fun m!84416 () Bool)

(assert (=> bs!9738 m!84416))

(assert (=> b!98976 d!23137))

(declare-fun d!23139 () Bool)

(assert (=> d!23139 (= (list!640 (_2!1077 lt!26778)) (list!644 (c!24158 (_2!1077 lt!26778))))))

(declare-fun bs!9739 () Bool)

(assert (= bs!9739 d!23139))

(declare-fun m!84418 () Bool)

(assert (=> bs!9739 m!84418))

(assert (=> b!98974 d!23139))

(assert (=> b!98974 d!23133))

(assert (=> b!98974 d!23135))

(declare-fun b!99433 () Bool)

(declare-fun e!55136 () List!1610)

(assert (=> b!99433 (= e!55136 (Cons!1604 (h!7001 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))) (++!239 (t!21171 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))) (list!640 (_2!1077 lt!26724)))))))

(declare-fun b!99432 () Bool)

(assert (=> b!99432 (= e!55136 (list!640 (_2!1077 lt!26724)))))

(declare-fun b!99434 () Bool)

(declare-fun res!48368 () Bool)

(declare-fun e!55135 () Bool)

(assert (=> b!99434 (=> (not res!48368) (not e!55135))))

(declare-fun lt!27153 () List!1610)

(assert (=> b!99434 (= res!48368 (= (size!1419 lt!27153) (+ (size!1419 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))) (size!1419 (list!640 (_2!1077 lt!26724))))))))

(declare-fun b!99435 () Bool)

(assert (=> b!99435 (= e!55135 (or (not (= (list!640 (_2!1077 lt!26724)) Nil!1604)) (= lt!27153 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))))

(declare-fun d!23141 () Bool)

(assert (=> d!23141 e!55135))

(declare-fun res!48367 () Bool)

(assert (=> d!23141 (=> (not res!48367) (not e!55135))))

(assert (=> d!23141 (= res!48367 (= (content!121 lt!27153) (set.union (content!121 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))) (content!121 (list!640 (_2!1077 lt!26724))))))))

(assert (=> d!23141 (= lt!27153 e!55136)))

(declare-fun c!24270 () Bool)

(assert (=> d!23141 (= c!24270 (is-Nil!1604 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724))))))))

(assert (=> d!23141 (= (++!239 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) (list!640 (_2!1077 lt!26724))) lt!27153)))

(assert (= (and d!23141 c!24270) b!99432))

(assert (= (and d!23141 (not c!24270)) b!99433))

(assert (= (and d!23141 res!48367) b!99434))

(assert (= (and b!99434 res!48368) b!99435))

(assert (=> b!99433 m!83488))

(declare-fun m!84420 () Bool)

(assert (=> b!99433 m!84420))

(declare-fun m!84422 () Bool)

(assert (=> b!99434 m!84422))

(declare-fun m!84424 () Bool)

(assert (=> b!99434 m!84424))

(assert (=> b!99434 m!83488))

(assert (=> b!99434 m!83650))

(declare-fun m!84426 () Bool)

(assert (=> d!23141 m!84426))

(assert (=> d!23141 m!83910))

(assert (=> d!23141 m!83488))

(assert (=> d!23141 m!83656))

(assert (=> b!98997 d!23141))

(declare-fun d!23143 () Bool)

(declare-fun lt!27154 () Int)

(assert (=> d!23143 (>= lt!27154 0)))

(declare-fun e!55137 () Int)

(assert (=> d!23143 (= lt!27154 e!55137)))

(declare-fun c!24271 () Bool)

(assert (=> d!23143 (= c!24271 (is-Nil!1604 lt!26792))))

(assert (=> d!23143 (= (size!1419 lt!26792) lt!27154)))

(declare-fun b!99436 () Bool)

(assert (=> b!99436 (= e!55137 0)))

(declare-fun b!99437 () Bool)

(assert (=> b!99437 (= e!55137 (+ 1 (size!1419 (t!21171 lt!26792))))))

(assert (= (and d!23143 c!24271) b!99436))

(assert (= (and d!23143 (not c!24271)) b!99437))

(declare-fun m!84428 () Bool)

(assert (=> b!99437 m!84428))

(assert (=> b!98998 d!23143))

(declare-fun d!23145 () Bool)

(declare-fun lt!27155 () Int)

(assert (=> d!23145 (>= lt!27155 0)))

(declare-fun e!55138 () Int)

(assert (=> d!23145 (= lt!27155 e!55138)))

(declare-fun c!24272 () Bool)

(assert (=> d!23145 (= c!24272 (is-Nil!1604 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(assert (=> d!23145 (= (size!1419 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))) lt!27155)))

(declare-fun b!99438 () Bool)

(assert (=> b!99438 (= e!55138 0)))

(declare-fun b!99439 () Bool)

(assert (=> b!99439 (= e!55138 (+ 1 (size!1419 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26724)))))))))

(assert (= (and d!23145 c!24272) b!99438))

(assert (= (and d!23145 (not c!24272)) b!99439))

(assert (=> b!99439 m!84424))

(assert (=> b!98998 d!23145))

(declare-fun d!23147 () Bool)

(declare-fun lt!27156 () Int)

(assert (=> d!23147 (>= lt!27156 0)))

(declare-fun e!55139 () Int)

(assert (=> d!23147 (= lt!27156 e!55139)))

(declare-fun c!24273 () Bool)

(assert (=> d!23147 (= c!24273 (is-Nil!1604 (list!640 (_2!1077 lt!26724))))))

(assert (=> d!23147 (= (size!1419 (list!640 (_2!1077 lt!26724))) lt!27156)))

(declare-fun b!99440 () Bool)

(assert (=> b!99440 (= e!55139 0)))

(declare-fun b!99441 () Bool)

(assert (=> b!99441 (= e!55139 (+ 1 (size!1419 (t!21171 (list!640 (_2!1077 lt!26724))))))))

(assert (= (and d!23147 c!24273) b!99440))

(assert (= (and d!23147 (not c!24273)) b!99441))

(declare-fun m!84430 () Bool)

(assert (=> b!99441 m!84430))

(assert (=> b!98998 d!23147))

(declare-fun d!23149 () Bool)

(declare-fun e!55142 () Bool)

(assert (=> d!23149 e!55142))

(declare-fun res!48371 () Bool)

(assert (=> d!23149 (=> (not res!48371) (not e!55142))))

(declare-fun lt!27159 () BalanceConc!1006)

(assert (=> d!23149 (= res!48371 (= (list!641 lt!27159) (t!21174 lt!26725)))))

(declare-fun fromList!58 (List!1613) Conc!501)

(assert (=> d!23149 (= lt!27159 (BalanceConc!1007 (fromList!58 (t!21174 lt!26725))))))

(assert (=> d!23149 (= (fromListB!86 (t!21174 lt!26725)) lt!27159)))

(declare-fun b!99444 () Bool)

(assert (=> b!99444 (= e!55142 (isBalanced!124 (fromList!58 (t!21174 lt!26725))))))

(assert (= (and d!23149 res!48371) b!99444))

(declare-fun m!84432 () Bool)

(assert (=> d!23149 m!84432))

(declare-fun m!84434 () Bool)

(assert (=> d!23149 m!84434))

(assert (=> b!99444 m!84434))

(assert (=> b!99444 m!84434))

(declare-fun m!84436 () Bool)

(assert (=> b!99444 m!84436))

(assert (=> d!22905 d!23149))

(declare-fun d!23151 () Bool)

(declare-fun c!24275 () Bool)

(assert (=> d!23151 (= c!24275 (is-Empty!500 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(declare-fun e!55143 () List!1610)

(assert (=> d!23151 (= (list!644 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724)))) e!55143)))

(declare-fun b!99446 () Bool)

(declare-fun e!55144 () List!1610)

(assert (=> b!99446 (= e!55143 e!55144)))

(declare-fun c!24276 () Bool)

(assert (=> b!99446 (= c!24276 (is-Leaf!811 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724)))))))

(declare-fun b!99447 () Bool)

(assert (=> b!99447 (= e!55144 (list!648 (xs!3087 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724))))))))

(declare-fun b!99448 () Bool)

(assert (=> b!99448 (= e!55144 (++!239 (list!644 (left!1224 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724))))) (list!644 (right!1554 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26724)))))))))

(declare-fun b!99445 () Bool)

(assert (=> b!99445 (= e!55143 Nil!1604)))

(assert (= (and d!23151 c!24275) b!99445))

(assert (= (and d!23151 (not c!24275)) b!99446))

(assert (= (and b!99446 c!24276) b!99447))

(assert (= (and b!99446 (not c!24276)) b!99448))

(declare-fun m!84438 () Bool)

(assert (=> b!99447 m!84438))

(declare-fun m!84440 () Bool)

(assert (=> b!99448 m!84440))

(declare-fun m!84442 () Bool)

(assert (=> b!99448 m!84442))

(assert (=> b!99448 m!84440))

(assert (=> b!99448 m!84442))

(declare-fun m!84444 () Bool)

(assert (=> b!99448 m!84444))

(assert (=> d!22917 d!23151))

(declare-fun d!23153 () Bool)

(assert (=> d!23153 (= (isDefined!53 lt!26767) (not (isEmpty!699 lt!26767)))))

(declare-fun bs!9740 () Bool)

(assert (= bs!9740 d!23153))

(assert (=> bs!9740 m!83580))

(assert (=> b!98963 d!23153))

(declare-fun d!23155 () Bool)

(declare-fun lt!27160 () Int)

(assert (=> d!23155 (= lt!27160 (size!1416 (list!641 (_1!1077 lt!26804))))))

(assert (=> d!23155 (= lt!27160 (size!1426 (c!24160 (_1!1077 lt!26804))))))

(assert (=> d!23155 (= (size!1420 (_1!1077 lt!26804)) lt!27160)))

(declare-fun bs!9741 () Bool)

(assert (= bs!9741 d!23155))

(assert (=> bs!9741 m!83734))

(assert (=> bs!9741 m!83734))

(declare-fun m!84446 () Bool)

(assert (=> bs!9741 m!84446))

(declare-fun m!84448 () Bool)

(assert (=> bs!9741 m!84448))

(assert (=> d!22945 d!23155))

(declare-fun b!99449 () Bool)

(declare-fun lt!27180 () tuple2!1740)

(declare-fun lt!27192 () Option!177)

(assert (=> b!99449 (= lt!27180 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27192))))))

(declare-fun e!55147 () tuple2!1740)

(assert (=> b!99449 (= e!55147 (tuple2!1741 (prepend!120 (_1!1077 lt!27180) (_1!1084 (v!12965 lt!27192))) (_2!1077 lt!27180)))))

(declare-fun b!99450 () Bool)

(declare-fun e!55145 () tuple2!1740)

(assert (=> b!99450 (= e!55145 (tuple2!1741 (BalanceConc!1007 Empty!501) (seqFromList!194 input!2238)))))

(declare-fun lt!27193 () tuple2!1740)

(declare-fun b!99451 () Bool)

(declare-fun e!55146 () Bool)

(assert (=> b!99451 (= e!55146 (= (list!640 (_2!1077 lt!27193)) (list!640 (_2!1077 (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 input!2238))))))))

(declare-fun lt!27185 () BalanceConc!1004)

(declare-fun b!99452 () Bool)

(declare-fun lt!27183 () Option!177)

(assert (=> b!99452 (= e!55145 (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 input!2238) lt!27185 (_2!1084 (v!12965 lt!27183)) (append!56 (BalanceConc!1007 Empty!501) (_1!1084 (v!12965 lt!27183)))))))

(declare-fun lt!27182 () tuple2!1740)

(assert (=> b!99452 (= lt!27182 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27183))))))

(declare-fun lt!27184 () List!1610)

(assert (=> b!99452 (= lt!27184 (list!640 (BalanceConc!1005 Empty!500)))))

(declare-fun lt!27162 () List!1610)

(assert (=> b!99452 (= lt!27162 (list!640 (charsOf!81 (_1!1084 (v!12965 lt!27183)))))))

(declare-fun lt!27163 () List!1610)

(assert (=> b!99452 (= lt!27163 (list!640 (_2!1084 (v!12965 lt!27183))))))

(declare-fun lt!27190 () Unit!1061)

(assert (=> b!99452 (= lt!27190 (lemmaConcatAssociativity!94 lt!27184 lt!27162 lt!27163))))

(assert (=> b!99452 (= (++!239 (++!239 lt!27184 lt!27162) lt!27163) (++!239 lt!27184 (++!239 lt!27162 lt!27163)))))

(declare-fun lt!27165 () Unit!1061)

(assert (=> b!99452 (= lt!27165 lt!27190)))

(declare-fun lt!27181 () Option!177)

(assert (=> b!99452 (= lt!27181 (maxPrefixZipperSequence!45 thiss!19403 rules!2471 (seqFromList!194 input!2238)))))

(declare-fun c!24279 () Bool)

(assert (=> b!99452 (= c!24279 (is-Some!176 lt!27181))))

(declare-fun e!55148 () tuple2!1740)

(assert (=> b!99452 (= (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 input!2238)) e!55148)))

(declare-fun lt!27171 () Unit!1061)

(declare-fun Unit!1070 () Unit!1061)

(assert (=> b!99452 (= lt!27171 Unit!1070)))

(declare-fun lt!27191 () List!1613)

(assert (=> b!99452 (= lt!27191 (list!641 (BalanceConc!1007 Empty!501)))))

(declare-fun lt!27164 () List!1613)

(assert (=> b!99452 (= lt!27164 (Cons!1607 (_1!1084 (v!12965 lt!27183)) Nil!1607))))

(declare-fun lt!27166 () List!1613)

(assert (=> b!99452 (= lt!27166 (list!641 (_1!1077 lt!27182)))))

(declare-fun lt!27174 () Unit!1061)

(assert (=> b!99452 (= lt!27174 (lemmaConcatAssociativity!95 lt!27191 lt!27164 lt!27166))))

(assert (=> b!99452 (= (++!241 (++!241 lt!27191 lt!27164) lt!27166) (++!241 lt!27191 (++!241 lt!27164 lt!27166)))))

(declare-fun lt!27189 () Unit!1061)

(assert (=> b!99452 (= lt!27189 lt!27174)))

(declare-fun lt!27169 () List!1610)

(assert (=> b!99452 (= lt!27169 (++!239 (list!640 (BalanceConc!1005 Empty!500)) (list!640 (charsOf!81 (_1!1084 (v!12965 lt!27183))))))))

(declare-fun lt!27170 () List!1610)

(assert (=> b!99452 (= lt!27170 (list!640 (_2!1084 (v!12965 lt!27183))))))

(declare-fun lt!27167 () List!1613)

(assert (=> b!99452 (= lt!27167 (list!641 (append!56 (BalanceConc!1007 Empty!501) (_1!1084 (v!12965 lt!27183)))))))

(declare-fun lt!27177 () Unit!1061)

(assert (=> b!99452 (= lt!27177 (lemmaLexThenLexPrefix!42 thiss!19403 rules!2471 lt!27169 lt!27170 lt!27167 (list!641 (_1!1077 lt!27182)) (list!640 (_2!1077 lt!27182))))))

(assert (=> b!99452 (= (lexList!70 thiss!19403 rules!2471 lt!27169) (tuple2!1749 lt!27167 Nil!1604))))

(declare-fun lt!27172 () Unit!1061)

(assert (=> b!99452 (= lt!27172 lt!27177)))

(declare-fun lt!27178 () BalanceConc!1004)

(assert (=> b!99452 (= lt!27178 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27183)))))))

(assert (=> b!99452 (= lt!27192 (maxPrefixZipperSequence!45 thiss!19403 rules!2471 lt!27178))))

(declare-fun c!24277 () Bool)

(assert (=> b!99452 (= c!24277 (is-Some!176 lt!27192))))

(assert (=> b!99452 (= (lexRec!47 thiss!19403 rules!2471 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27183))))) e!55147)))

(declare-fun lt!27188 () Unit!1061)

(declare-fun Unit!1071 () Unit!1061)

(assert (=> b!99452 (= lt!27188 Unit!1071)))

(assert (=> b!99452 (= lt!27185 (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (_1!1084 (v!12965 lt!27183)))))))

(declare-fun lt!27173 () List!1610)

(assert (=> b!99452 (= lt!27173 (list!640 lt!27185))))

(declare-fun lt!27161 () List!1610)

(assert (=> b!99452 (= lt!27161 (list!640 (_2!1084 (v!12965 lt!27183))))))

(declare-fun lt!27168 () Unit!1061)

(assert (=> b!99452 (= lt!27168 (lemmaConcatTwoListThenFSndIsSuffix!42 lt!27173 lt!27161))))

(assert (=> b!99452 (isSuffix!42 lt!27161 (++!239 lt!27173 lt!27161))))

(declare-fun lt!27194 () Unit!1061)

(assert (=> b!99452 (= lt!27194 lt!27168)))

(declare-fun lt!27186 () tuple2!1740)

(declare-fun b!99453 () Bool)

(assert (=> b!99453 (= lt!27186 (lexRec!47 thiss!19403 rules!2471 (_2!1084 (v!12965 lt!27181))))))

(assert (=> b!99453 (= e!55148 (tuple2!1741 (prepend!120 (_1!1077 lt!27186) (_1!1084 (v!12965 lt!27181))) (_2!1077 lt!27186)))))

(declare-fun d!23157 () Bool)

(assert (=> d!23157 e!55146))

(declare-fun res!48372 () Bool)

(assert (=> d!23157 (=> (not res!48372) (not e!55146))))

(assert (=> d!23157 (= res!48372 (= (list!641 (_1!1077 lt!27193)) (list!641 (_1!1077 (lexRec!47 thiss!19403 rules!2471 (seqFromList!194 input!2238))))))))

(assert (=> d!23157 (= lt!27193 e!55145)))

(declare-fun c!24278 () Bool)

(assert (=> d!23157 (= c!24278 (is-Some!176 lt!27183))))

(assert (=> d!23157 (= lt!27183 (maxPrefixZipperSequenceV2!42 thiss!19403 rules!2471 (seqFromList!194 input!2238) (seqFromList!194 input!2238)))))

(declare-fun lt!27176 () Unit!1061)

(declare-fun lt!27187 () Unit!1061)

(assert (=> d!23157 (= lt!27176 lt!27187)))

(declare-fun lt!27179 () List!1610)

(declare-fun lt!27175 () List!1610)

(assert (=> d!23157 (isSuffix!42 lt!27179 (++!239 lt!27175 lt!27179))))

(assert (=> d!23157 (= lt!27187 (lemmaConcatTwoListThenFSndIsSuffix!42 lt!27175 lt!27179))))

(assert (=> d!23157 (= lt!27179 (list!640 (seqFromList!194 input!2238)))))

(assert (=> d!23157 (= lt!27175 (list!640 (BalanceConc!1005 Empty!500)))))

(assert (=> d!23157 (= (lexTailRecV2!67 thiss!19403 rules!2471 (seqFromList!194 input!2238) (BalanceConc!1005 Empty!500) (seqFromList!194 input!2238) (BalanceConc!1007 Empty!501)) lt!27193)))

(declare-fun b!99454 () Bool)

(assert (=> b!99454 (= e!55147 (tuple2!1741 (BalanceConc!1007 Empty!501) lt!27178))))

(declare-fun b!99455 () Bool)

(assert (=> b!99455 (= e!55148 (tuple2!1741 (BalanceConc!1007 Empty!501) (seqFromList!194 input!2238)))))

(assert (= (and d!23157 c!24278) b!99452))

(assert (= (and d!23157 (not c!24278)) b!99450))

(assert (= (and b!99452 c!24279) b!99453))

(assert (= (and b!99452 (not c!24279)) b!99455))

(assert (= (and b!99452 c!24277) b!99449))

(assert (= (and b!99452 (not c!24277)) b!99454))

(assert (= (and d!23157 res!48372) b!99451))

(declare-fun m!84450 () Bool)

(assert (=> d!23157 m!84450))

(declare-fun m!84452 () Bool)

(assert (=> d!23157 m!84452))

(assert (=> d!23157 m!84450))

(assert (=> d!23157 m!84280))

(declare-fun m!84454 () Bool)

(assert (=> d!23157 m!84454))

(assert (=> d!23157 m!83470))

(declare-fun m!84456 () Bool)

(assert (=> d!23157 m!84456))

(assert (=> d!23157 m!83470))

(assert (=> d!23157 m!83470))

(declare-fun m!84458 () Bool)

(assert (=> d!23157 m!84458))

(assert (=> d!23157 m!83470))

(assert (=> d!23157 m!83720))

(declare-fun m!84460 () Bool)

(assert (=> d!23157 m!84460))

(declare-fun m!84462 () Bool)

(assert (=> d!23157 m!84462))

(declare-fun m!84464 () Bool)

(assert (=> b!99452 m!84464))

(declare-fun m!84466 () Bool)

(assert (=> b!99452 m!84466))

(declare-fun m!84468 () Bool)

(assert (=> b!99452 m!84468))

(declare-fun m!84470 () Bool)

(assert (=> b!99452 m!84470))

(assert (=> b!99452 m!84466))

(assert (=> b!99452 m!84464))

(declare-fun m!84472 () Bool)

(assert (=> b!99452 m!84472))

(assert (=> b!99452 m!83470))

(declare-fun m!84474 () Bool)

(assert (=> b!99452 m!84474))

(declare-fun m!84476 () Bool)

(assert (=> b!99452 m!84476))

(declare-fun m!84478 () Bool)

(assert (=> b!99452 m!84478))

(declare-fun m!84480 () Bool)

(assert (=> b!99452 m!84480))

(declare-fun m!84482 () Bool)

(assert (=> b!99452 m!84482))

(declare-fun m!84484 () Bool)

(assert (=> b!99452 m!84484))

(declare-fun m!84486 () Bool)

(assert (=> b!99452 m!84486))

(declare-fun m!84488 () Bool)

(assert (=> b!99452 m!84488))

(assert (=> b!99452 m!84488))

(declare-fun m!84490 () Bool)

(assert (=> b!99452 m!84490))

(declare-fun m!84492 () Bool)

(assert (=> b!99452 m!84492))

(assert (=> b!99452 m!84322))

(assert (=> b!99452 m!83470))

(assert (=> b!99452 m!84456))

(declare-fun m!84494 () Bool)

(assert (=> b!99452 m!84494))

(declare-fun m!84496 () Bool)

(assert (=> b!99452 m!84496))

(declare-fun m!84498 () Bool)

(assert (=> b!99452 m!84498))

(assert (=> b!99452 m!84494))

(assert (=> b!99452 m!84498))

(declare-fun m!84500 () Bool)

(assert (=> b!99452 m!84500))

(assert (=> b!99452 m!84484))

(declare-fun m!84502 () Bool)

(assert (=> b!99452 m!84502))

(declare-fun m!84504 () Bool)

(assert (=> b!99452 m!84504))

(declare-fun m!84506 () Bool)

(assert (=> b!99452 m!84506))

(assert (=> b!99452 m!84280))

(declare-fun m!84508 () Bool)

(assert (=> b!99452 m!84508))

(assert (=> b!99452 m!84490))

(assert (=> b!99452 m!84480))

(declare-fun m!84510 () Bool)

(assert (=> b!99452 m!84510))

(assert (=> b!99452 m!84280))

(assert (=> b!99452 m!84500))

(declare-fun m!84512 () Bool)

(assert (=> b!99452 m!84512))

(declare-fun m!84514 () Bool)

(assert (=> b!99452 m!84514))

(declare-fun m!84516 () Bool)

(assert (=> b!99452 m!84516))

(assert (=> b!99452 m!83470))

(assert (=> b!99452 m!84484))

(declare-fun m!84518 () Bool)

(assert (=> b!99452 m!84518))

(declare-fun m!84520 () Bool)

(assert (=> b!99452 m!84520))

(assert (=> b!99452 m!84476))

(assert (=> b!99452 m!84498))

(assert (=> b!99452 m!84516))

(declare-fun m!84522 () Bool)

(assert (=> b!99452 m!84522))

(declare-fun m!84524 () Bool)

(assert (=> b!99453 m!84524))

(declare-fun m!84526 () Bool)

(assert (=> b!99453 m!84526))

(declare-fun m!84528 () Bool)

(assert (=> b!99449 m!84528))

(declare-fun m!84530 () Bool)

(assert (=> b!99449 m!84530))

(declare-fun m!84532 () Bool)

(assert (=> b!99451 m!84532))

(assert (=> b!99451 m!83470))

(assert (=> b!99451 m!84456))

(declare-fun m!84534 () Bool)

(assert (=> b!99451 m!84534))

(assert (=> d!22945 d!23157))

(declare-fun d!23159 () Bool)

(assert (=> d!23159 (= (inv!1941 (tag!528 (h!7003 (t!21173 rules!2471)))) (= (mod (str.len (value!12844 (tag!528 (h!7003 (t!21173 rules!2471))))) 2) 0))))

(assert (=> b!99051 d!23159))

(declare-fun d!23161 () Bool)

(declare-fun res!48373 () Bool)

(declare-fun e!55149 () Bool)

(assert (=> d!23161 (=> (not res!48373) (not e!55149))))

(assert (=> d!23161 (= res!48373 (semiInverseModEq!84 (toChars!768 (transformation!350 (h!7003 (t!21173 rules!2471)))) (toValue!909 (transformation!350 (h!7003 (t!21173 rules!2471))))))))

(assert (=> d!23161 (= (inv!1944 (transformation!350 (h!7003 (t!21173 rules!2471)))) e!55149)))

(declare-fun b!99456 () Bool)

(assert (=> b!99456 (= e!55149 (equivClasses!79 (toChars!768 (transformation!350 (h!7003 (t!21173 rules!2471)))) (toValue!909 (transformation!350 (h!7003 (t!21173 rules!2471))))))))

(assert (= (and d!23161 res!48373) b!99456))

(declare-fun m!84536 () Bool)

(assert (=> d!23161 m!84536))

(declare-fun m!84538 () Bool)

(assert (=> b!99456 m!84538))

(assert (=> b!99051 d!23161))

(declare-fun d!23163 () Bool)

(assert (=> d!23163 (= (list!641 lt!26787) (list!645 (c!24160 lt!26787)))))

(declare-fun bs!9742 () Bool)

(assert (= bs!9742 d!23163))

(declare-fun m!84540 () Bool)

(assert (=> bs!9742 m!84540))

(assert (=> b!98981 d!23163))

(declare-fun d!23165 () Bool)

(assert (=> d!23165 (= (list!641 (seqFromList!195 (t!21174 lt!26725))) (list!645 (c!24160 (seqFromList!195 (t!21174 lt!26725)))))))

(declare-fun bs!9743 () Bool)

(assert (= bs!9743 d!23165))

(assert (=> bs!9743 m!84392))

(assert (=> b!98981 d!23165))

(declare-fun d!23167 () Bool)

(assert (=> d!23167 (= (list!640 lt!26799) (list!644 (c!24158 lt!26799)))))

(declare-fun bs!9744 () Bool)

(assert (= bs!9744 d!23167))

(declare-fun m!84542 () Bool)

(assert (=> bs!9744 m!84542))

(assert (=> d!22929 d!23167))

(declare-fun d!23169 () Bool)

(declare-fun c!24282 () Bool)

(assert (=> d!23169 (= c!24282 (is-Cons!1607 (list!641 (_1!1077 lt!26724))))))

(declare-fun e!55152 () List!1610)

(assert (=> d!23169 (= (printList!36 thiss!19403 (list!641 (_1!1077 lt!26724))) e!55152)))

(declare-fun b!99461 () Bool)

(assert (=> b!99461 (= e!55152 (++!239 (list!640 (charsOf!81 (h!7004 (list!641 (_1!1077 lt!26724))))) (printList!36 thiss!19403 (t!21174 (list!641 (_1!1077 lt!26724))))))))

(declare-fun b!99462 () Bool)

(assert (=> b!99462 (= e!55152 Nil!1604)))

(assert (= (and d!23169 c!24282) b!99461))

(assert (= (and d!23169 (not c!24282)) b!99462))

(declare-fun m!84544 () Bool)

(assert (=> b!99461 m!84544))

(assert (=> b!99461 m!84544))

(declare-fun m!84546 () Bool)

(assert (=> b!99461 m!84546))

(declare-fun m!84548 () Bool)

(assert (=> b!99461 m!84548))

(assert (=> b!99461 m!84546))

(assert (=> b!99461 m!84548))

(declare-fun m!84550 () Bool)

(assert (=> b!99461 m!84550))

(assert (=> d!22929 d!23169))

(declare-fun d!23171 () Bool)

(assert (=> d!23171 (= (list!641 (_1!1077 lt!26724)) (list!645 (c!24160 (_1!1077 lt!26724))))))

(declare-fun bs!9745 () Bool)

(assert (= bs!9745 d!23171))

(declare-fun m!84552 () Bool)

(assert (=> bs!9745 m!84552))

(assert (=> d!22929 d!23171))

(declare-fun d!23173 () Bool)

(declare-fun lt!27209 () BalanceConc!1004)

(declare-fun printListTailRec!25 (LexerInterface!242 List!1613 List!1610) List!1610)

(declare-fun dropList!33 (BalanceConc!1006 Int) List!1613)

(assert (=> d!23173 (= (list!640 lt!27209) (printListTailRec!25 thiss!19403 (dropList!33 (_1!1077 lt!26724) 0) (list!640 (BalanceConc!1005 Empty!500))))))

(declare-fun e!55158 () BalanceConc!1004)

(assert (=> d!23173 (= lt!27209 e!55158)))

(declare-fun c!24285 () Bool)

(assert (=> d!23173 (= c!24285 (>= 0 (size!1420 (_1!1077 lt!26724))))))

(declare-fun e!55157 () Bool)

(assert (=> d!23173 e!55157))

(declare-fun res!48376 () Bool)

(assert (=> d!23173 (=> (not res!48376) (not e!55157))))

(assert (=> d!23173 (= res!48376 (>= 0 0))))

(assert (=> d!23173 (= (printTailRec!36 thiss!19403 (_1!1077 lt!26724) 0 (BalanceConc!1005 Empty!500)) lt!27209)))

(declare-fun b!99469 () Bool)

(assert (=> b!99469 (= e!55157 (<= 0 (size!1420 (_1!1077 lt!26724))))))

(declare-fun b!99470 () Bool)

(assert (=> b!99470 (= e!55158 (BalanceConc!1005 Empty!500))))

(declare-fun b!99471 () Bool)

(declare-fun apply!256 (BalanceConc!1006 Int) Token!456)

(assert (=> b!99471 (= e!55158 (printTailRec!36 thiss!19403 (_1!1077 lt!26724) (+ 0 1) (++!242 (BalanceConc!1005 Empty!500) (charsOf!81 (apply!256 (_1!1077 lt!26724) 0)))))))

(declare-fun lt!27211 () List!1613)

(assert (=> b!99471 (= lt!27211 (list!641 (_1!1077 lt!26724)))))

(declare-fun lt!27215 () Unit!1061)

(declare-fun lemmaDropApply!89 (List!1613 Int) Unit!1061)

(assert (=> b!99471 (= lt!27215 (lemmaDropApply!89 lt!27211 0))))

(declare-fun head!454 (List!1613) Token!456)

(declare-fun drop!95 (List!1613 Int) List!1613)

(declare-fun apply!257 (List!1613 Int) Token!456)

(assert (=> b!99471 (= (head!454 (drop!95 lt!27211 0)) (apply!257 lt!27211 0))))

(declare-fun lt!27213 () Unit!1061)

(assert (=> b!99471 (= lt!27213 lt!27215)))

(declare-fun lt!27212 () List!1613)

(assert (=> b!99471 (= lt!27212 (list!641 (_1!1077 lt!26724)))))

(declare-fun lt!27214 () Unit!1061)

(declare-fun lemmaDropTail!81 (List!1613 Int) Unit!1061)

(assert (=> b!99471 (= lt!27214 (lemmaDropTail!81 lt!27212 0))))

(declare-fun tail!166 (List!1613) List!1613)

(assert (=> b!99471 (= (tail!166 (drop!95 lt!27212 0)) (drop!95 lt!27212 (+ 0 1)))))

(declare-fun lt!27210 () Unit!1061)

(assert (=> b!99471 (= lt!27210 lt!27214)))

(assert (= (and d!23173 res!48376) b!99469))

(assert (= (and d!23173 c!24285) b!99470))

(assert (= (and d!23173 (not c!24285)) b!99471))

(declare-fun m!84554 () Bool)

(assert (=> d!23173 m!84554))

(assert (=> d!23173 m!84280))

(declare-fun m!84556 () Bool)

(assert (=> d!23173 m!84556))

(declare-fun m!84558 () Bool)

(assert (=> d!23173 m!84558))

(declare-fun m!84560 () Bool)

(assert (=> d!23173 m!84560))

(assert (=> d!23173 m!84554))

(assert (=> d!23173 m!84280))

(assert (=> b!99469 m!84560))

(declare-fun m!84562 () Bool)

(assert (=> b!99471 m!84562))

(declare-fun m!84564 () Bool)

(assert (=> b!99471 m!84564))

(declare-fun m!84566 () Bool)

(assert (=> b!99471 m!84566))

(declare-fun m!84568 () Bool)

(assert (=> b!99471 m!84568))

(assert (=> b!99471 m!83684))

(declare-fun m!84570 () Bool)

(assert (=> b!99471 m!84570))

(assert (=> b!99471 m!84566))

(declare-fun m!84572 () Bool)

(assert (=> b!99471 m!84572))

(declare-fun m!84574 () Bool)

(assert (=> b!99471 m!84574))

(assert (=> b!99471 m!84562))

(declare-fun m!84576 () Bool)

(assert (=> b!99471 m!84576))

(declare-fun m!84578 () Bool)

(assert (=> b!99471 m!84578))

(assert (=> b!99471 m!84578))

(declare-fun m!84580 () Bool)

(assert (=> b!99471 m!84580))

(assert (=> b!99471 m!84580))

(assert (=> b!99471 m!84572))

(declare-fun m!84582 () Bool)

(assert (=> b!99471 m!84582))

(declare-fun m!84584 () Bool)

(assert (=> b!99471 m!84584))

(assert (=> d!22929 d!23173))

(declare-fun d!23175 () Bool)

(assert (=> d!23175 (= (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))) (list!644 (c!24158 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))

(declare-fun bs!9746 () Bool)

(assert (= bs!9746 d!23175))

(declare-fun m!84586 () Bool)

(assert (=> bs!9746 m!84586))

(assert (=> b!98959 d!23175))

(declare-fun d!23177 () Bool)

(declare-fun lt!27218 () BalanceConc!1004)

(assert (=> d!23177 (= (list!640 lt!27218) (originalCharacters!399 (_1!1078 (get!408 lt!26767))))))

(declare-fun dynLambda!469 (Int TokenValue!340) BalanceConc!1004)

(assert (=> d!23177 (= lt!27218 (dynLambda!469 (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767))))) (value!12870 (_1!1078 (get!408 lt!26767)))))))

(assert (=> d!23177 (= (charsOf!81 (_1!1078 (get!408 lt!26767))) lt!27218)))

(declare-fun b_lambda!1131 () Bool)

(assert (=> (not b_lambda!1131) (not d!23177)))

(declare-fun tb!3015 () Bool)

(declare-fun t!21195 () Bool)

(assert (=> (and b!98906 (= (toChars!768 (transformation!350 (h!7003 rules!2471))) (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21195) tb!3015))

(declare-fun b!99476 () Bool)

(declare-fun e!55161 () Bool)

(declare-fun tp!56695 () Bool)

(declare-fun inv!1946 (Conc!500) Bool)

(assert (=> b!99476 (= e!55161 (and (inv!1946 (c!24158 (dynLambda!469 (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767))))) (value!12870 (_1!1078 (get!408 lt!26767)))))) tp!56695))))

(declare-fun result!4378 () Bool)

(declare-fun inv!1947 (BalanceConc!1004) Bool)

(assert (=> tb!3015 (= result!4378 (and (inv!1947 (dynLambda!469 (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767))))) (value!12870 (_1!1078 (get!408 lt!26767))))) e!55161))))

(assert (= tb!3015 b!99476))

(declare-fun m!84588 () Bool)

(assert (=> b!99476 m!84588))

(declare-fun m!84590 () Bool)

(assert (=> tb!3015 m!84590))

(assert (=> d!23177 t!21195))

(declare-fun b_and!4467 () Bool)

(assert (= b_and!4449 (and (=> t!21195 result!4378) b_and!4467)))

(declare-fun tb!3017 () Bool)

(declare-fun t!21197 () Bool)

(assert (=> (and b!99052 (= (toChars!768 (transformation!350 (h!7003 (t!21173 rules!2471)))) (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21197) tb!3017))

(declare-fun result!4382 () Bool)

(assert (= result!4382 result!4378))

(assert (=> d!23177 t!21197))

(declare-fun b_and!4469 () Bool)

(assert (= b_and!4457 (and (=> t!21197 result!4382) b_and!4469)))

(declare-fun m!84592 () Bool)

(assert (=> d!23177 m!84592))

(declare-fun m!84594 () Bool)

(assert (=> d!23177 m!84594))

(assert (=> b!98959 d!23177))

(assert (=> b!98959 d!23007))

(declare-fun bs!9747 () Bool)

(declare-fun d!23179 () Bool)

(assert (= bs!9747 (and d!23179 d!23037)))

(declare-fun lambda!1792 () Int)

(assert (=> bs!9747 (= lambda!1792 lambda!1786)))

(assert (=> d!23179 true))

(declare-fun lt!27221 () Bool)

(assert (=> d!23179 (= lt!27221 (rulesValidInductive!69 thiss!19403 rules!2471))))

(assert (=> d!23179 (= lt!27221 (forall!213 rules!2471 lambda!1792))))

(assert (=> d!23179 (= (rulesValid!92 thiss!19403 rules!2471) lt!27221)))

(declare-fun bs!9748 () Bool)

(assert (= bs!9748 d!23179))

(assert (=> bs!9748 m!83586))

(declare-fun m!84596 () Bool)

(assert (=> bs!9748 m!84596))

(assert (=> d!22957 d!23179))

(declare-fun d!23181 () Bool)

(assert (=> d!23181 true))

(declare-fun lambda!1795 () Int)

(declare-fun order!721 () Int)

(declare-fun order!723 () Int)

(declare-fun dynLambda!470 (Int Int) Int)

(declare-fun dynLambda!471 (Int Int) Int)

(assert (=> d!23181 (< (dynLambda!470 order!721 (toChars!768 (transformation!350 (h!7003 rules!2471)))) (dynLambda!471 order!723 lambda!1795))))

(assert (=> d!23181 true))

(assert (=> d!23181 (< (dynLambda!467 order!717 (toValue!909 (transformation!350 (h!7003 rules!2471)))) (dynLambda!471 order!723 lambda!1795))))

(declare-fun Forall!63 (Int) Bool)

(assert (=> d!23181 (= (semiInverseModEq!84 (toChars!768 (transformation!350 (h!7003 rules!2471))) (toValue!909 (transformation!350 (h!7003 rules!2471)))) (Forall!63 lambda!1795))))

(declare-fun bs!9749 () Bool)

(assert (= bs!9749 d!23181))

(declare-fun m!84598 () Bool)

(assert (=> bs!9749 m!84598))

(assert (=> d!22953 d!23181))

(declare-fun d!23183 () Bool)

(declare-fun c!24286 () Bool)

(assert (=> d!23183 (= c!24286 (is-Empty!501 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)))))))

(declare-fun e!55162 () List!1613)

(assert (=> d!23183 (= (list!645 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)))) e!55162)))

(declare-fun b!99483 () Bool)

(declare-fun e!55163 () List!1613)

(assert (=> b!99483 (= e!55163 (list!649 (xs!3088 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))))))))

(declare-fun b!99481 () Bool)

(assert (=> b!99481 (= e!55162 Nil!1607)))

(declare-fun b!99482 () Bool)

(assert (=> b!99482 (= e!55162 e!55163)))

(declare-fun c!24287 () Bool)

(assert (=> b!99482 (= c!24287 (is-Leaf!812 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)))))))

(declare-fun b!99484 () Bool)

(assert (=> b!99484 (= e!55163 (++!241 (list!645 (left!1225 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))))) (list!645 (right!1555 (c!24160 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725)))))))))

(assert (= (and d!23183 c!24286) b!99481))

(assert (= (and d!23183 (not c!24286)) b!99482))

(assert (= (and b!99482 c!24287) b!99483))

(assert (= (and b!99482 (not c!24287)) b!99484))

(declare-fun m!84600 () Bool)

(assert (=> b!99483 m!84600))

(declare-fun m!84602 () Bool)

(assert (=> b!99484 m!84602))

(declare-fun m!84604 () Bool)

(assert (=> b!99484 m!84604))

(assert (=> b!99484 m!84602))

(assert (=> b!99484 m!84604))

(declare-fun m!84606 () Bool)

(assert (=> b!99484 m!84606))

(assert (=> d!22927 d!23183))

(declare-fun b!99513 () Bool)

(declare-fun res!48394 () Bool)

(declare-fun e!55179 () Bool)

(assert (=> b!99513 (=> res!48394 e!55179)))

(assert (=> b!99513 (= res!48394 (not (isEmpty!701 (tail!165 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))))

(declare-fun bm!4391 () Bool)

(declare-fun call!4396 () Bool)

(assert (=> bm!4391 (= call!4396 (isEmpty!701 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))

(declare-fun b!99514 () Bool)

(declare-fun e!55183 () Bool)

(declare-fun lt!27224 () Bool)

(assert (=> b!99514 (= e!55183 (not lt!27224))))

(declare-fun d!23185 () Bool)

(declare-fun e!55184 () Bool)

(assert (=> d!23185 e!55184))

(declare-fun c!24296 () Bool)

(assert (=> d!23185 (= c!24296 (is-EmptyExpr!418 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767))))))))

(declare-fun e!55181 () Bool)

(assert (=> d!23185 (= lt!27224 e!55181)))

(declare-fun c!24295 () Bool)

(assert (=> d!23185 (= c!24295 (isEmpty!701 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))

(declare-fun validRegex!56 (Regex!418) Bool)

(assert (=> d!23185 (validRegex!56 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))))))

(assert (=> d!23185 (= (matchR!42 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))) (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) lt!27224)))

(declare-fun b!99515 () Bool)

(declare-fun derivativeStep!31 (Regex!418 C!1758) Regex!418)

(assert (=> b!99515 (= e!55181 (matchR!42 (derivativeStep!31 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))) (head!453 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))))) (tail!165 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun b!99516 () Bool)

(assert (=> b!99516 (= e!55184 (= lt!27224 call!4396))))

(declare-fun b!99517 () Bool)

(declare-fun res!48396 () Bool)

(declare-fun e!55182 () Bool)

(assert (=> b!99517 (=> (not res!48396) (not e!55182))))

(assert (=> b!99517 (= res!48396 (not call!4396))))

(declare-fun b!99518 () Bool)

(assert (=> b!99518 (= e!55179 (not (= (head!453 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (c!24159 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767))))))))))

(declare-fun b!99519 () Bool)

(assert (=> b!99519 (= e!55184 e!55183)))

(declare-fun c!24294 () Bool)

(assert (=> b!99519 (= c!24294 (is-EmptyLang!418 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767))))))))

(declare-fun b!99520 () Bool)

(declare-fun res!48398 () Bool)

(assert (=> b!99520 (=> (not res!48398) (not e!55182))))

(assert (=> b!99520 (= res!48398 (isEmpty!701 (tail!165 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun b!99521 () Bool)

(declare-fun res!48395 () Bool)

(declare-fun e!55178 () Bool)

(assert (=> b!99521 (=> res!48395 e!55178)))

(assert (=> b!99521 (= res!48395 (not (is-ElementMatch!418 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))))))))

(assert (=> b!99521 (= e!55183 e!55178)))

(declare-fun b!99522 () Bool)

(declare-fun e!55180 () Bool)

(assert (=> b!99522 (= e!55178 e!55180)))

(declare-fun res!48393 () Bool)

(assert (=> b!99522 (=> (not res!48393) (not e!55180))))

(assert (=> b!99522 (= res!48393 (not lt!27224))))

(declare-fun b!99523 () Bool)

(assert (=> b!99523 (= e!55182 (= (head!453 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (c!24159 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun b!99524 () Bool)

(assert (=> b!99524 (= e!55180 e!55179)))

(declare-fun res!48397 () Bool)

(assert (=> b!99524 (=> res!48397 e!55179)))

(assert (=> b!99524 (= res!48397 call!4396)))

(declare-fun b!99525 () Bool)

(declare-fun nullable!49 (Regex!418) Bool)

(assert (=> b!99525 (= e!55181 (nullable!49 (regex!350 (rule!853 (_1!1078 (get!408 lt!26767))))))))

(declare-fun b!99526 () Bool)

(declare-fun res!48399 () Bool)

(assert (=> b!99526 (=> res!48399 e!55178)))

(assert (=> b!99526 (= res!48399 e!55182)))

(declare-fun res!48400 () Bool)

(assert (=> b!99526 (=> (not res!48400) (not e!55182))))

(assert (=> b!99526 (= res!48400 lt!27224)))

(assert (= (and d!23185 c!24295) b!99525))

(assert (= (and d!23185 (not c!24295)) b!99515))

(assert (= (and d!23185 c!24296) b!99516))

(assert (= (and d!23185 (not c!24296)) b!99519))

(assert (= (and b!99519 c!24294) b!99514))

(assert (= (and b!99519 (not c!24294)) b!99521))

(assert (= (and b!99521 (not res!48395)) b!99526))

(assert (= (and b!99526 res!48400) b!99517))

(assert (= (and b!99517 res!48396) b!99520))

(assert (= (and b!99520 res!48398) b!99523))

(assert (= (and b!99526 (not res!48399)) b!99522))

(assert (= (and b!99522 res!48393) b!99524))

(assert (= (and b!99524 (not res!48397)) b!99513))

(assert (= (and b!99513 (not res!48394)) b!99518))

(assert (= (or b!99516 b!99517 b!99524) bm!4391))

(assert (=> d!23185 m!83566))

(declare-fun m!84608 () Bool)

(assert (=> d!23185 m!84608))

(declare-fun m!84610 () Bool)

(assert (=> d!23185 m!84610))

(assert (=> b!99518 m!83566))

(declare-fun m!84612 () Bool)

(assert (=> b!99518 m!84612))

(assert (=> b!99515 m!83566))

(assert (=> b!99515 m!84612))

(assert (=> b!99515 m!84612))

(declare-fun m!84614 () Bool)

(assert (=> b!99515 m!84614))

(assert (=> b!99515 m!83566))

(declare-fun m!84616 () Bool)

(assert (=> b!99515 m!84616))

(assert (=> b!99515 m!84614))

(assert (=> b!99515 m!84616))

(declare-fun m!84618 () Bool)

(assert (=> b!99515 m!84618))

(assert (=> b!99513 m!83566))

(assert (=> b!99513 m!84616))

(assert (=> b!99513 m!84616))

(declare-fun m!84620 () Bool)

(assert (=> b!99513 m!84620))

(assert (=> bm!4391 m!83566))

(assert (=> bm!4391 m!84608))

(assert (=> b!99520 m!83566))

(assert (=> b!99520 m!84616))

(assert (=> b!99520 m!84616))

(assert (=> b!99520 m!84620))

(declare-fun m!84622 () Bool)

(assert (=> b!99525 m!84622))

(assert (=> b!99523 m!83566))

(assert (=> b!99523 m!84612))

(assert (=> b!98958 d!23185))

(assert (=> b!98958 d!23007))

(assert (=> b!98958 d!23175))

(assert (=> b!98958 d!23177))

(assert (=> b!98962 d!23007))

(declare-fun d!23187 () Bool)

(declare-fun dynLambda!472 (Int BalanceConc!1004) TokenValue!340)

(assert (=> d!23187 (= (apply!254 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26767))))) (dynLambda!472 (toValue!909 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767))))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26767))))))))

(declare-fun b_lambda!1133 () Bool)

(assert (=> (not b_lambda!1133) (not d!23187)))

(declare-fun tb!3019 () Bool)

(declare-fun t!21199 () Bool)

(assert (=> (and b!98906 (= (toValue!909 (transformation!350 (h!7003 rules!2471))) (toValue!909 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21199) tb!3019))

(declare-fun result!4384 () Bool)

(declare-fun inv!21 (TokenValue!340) Bool)

(assert (=> tb!3019 (= result!4384 (inv!21 (dynLambda!472 (toValue!909 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767))))) (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun m!84624 () Bool)

(assert (=> tb!3019 m!84624))

(assert (=> d!23187 t!21199))

(declare-fun b_and!4471 () Bool)

(assert (= b_and!4447 (and (=> t!21199 result!4384) b_and!4471)))

(declare-fun tb!3021 () Bool)

(declare-fun t!21201 () Bool)

(assert (=> (and b!99052 (= (toValue!909 (transformation!350 (h!7003 (t!21173 rules!2471)))) (toValue!909 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21201) tb!3021))

(declare-fun result!4388 () Bool)

(assert (= result!4388 result!4384))

(assert (=> d!23187 t!21201))

(declare-fun b_and!4473 () Bool)

(assert (= b_and!4455 (and (=> t!21201 result!4388) b_and!4473)))

(assert (=> d!23187 m!83556))

(declare-fun m!84626 () Bool)

(assert (=> d!23187 m!84626))

(assert (=> b!98962 d!23187))

(declare-fun d!23189 () Bool)

(assert (=> d!23189 (= (seqFromList!194 (originalCharacters!399 (_1!1078 (get!408 lt!26767)))) (fromListB!87 (originalCharacters!399 (_1!1078 (get!408 lt!26767)))))))

(declare-fun bs!9750 () Bool)

(assert (= bs!9750 d!23189))

(declare-fun m!84628 () Bool)

(assert (=> bs!9750 m!84628))

(assert (=> b!98962 d!23189))

(declare-fun b!99530 () Bool)

(declare-fun e!55189 () List!1610)

(assert (=> b!99530 (= e!55189 (Cons!1604 (h!7001 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784)))) (++!239 (t!21171 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784)))) (list!640 (_2!1077 lt!26784)))))))

(declare-fun b!99529 () Bool)

(assert (=> b!99529 (= e!55189 (list!640 (_2!1077 lt!26784)))))

(declare-fun b!99531 () Bool)

(declare-fun res!48402 () Bool)

(declare-fun e!55188 () Bool)

(assert (=> b!99531 (=> (not res!48402) (not e!55188))))

(declare-fun lt!27225 () List!1610)

(assert (=> b!99531 (= res!48402 (= (size!1419 lt!27225) (+ (size!1419 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784)))) (size!1419 (list!640 (_2!1077 lt!26784))))))))

(declare-fun b!99532 () Bool)

(assert (=> b!99532 (= e!55188 (or (not (= (list!640 (_2!1077 lt!26784)) Nil!1604)) (= lt!27225 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784))))))))

(declare-fun d!23191 () Bool)

(assert (=> d!23191 e!55188))

(declare-fun res!48401 () Bool)

(assert (=> d!23191 (=> (not res!48401) (not e!55188))))

(assert (=> d!23191 (= res!48401 (= (content!121 lt!27225) (set.union (content!121 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784)))) (content!121 (list!640 (_2!1077 lt!26784))))))))

(assert (=> d!23191 (= lt!27225 e!55189)))

(declare-fun c!24297 () Bool)

(assert (=> d!23191 (= c!24297 (is-Nil!1604 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784)))))))

(assert (=> d!23191 (= (++!239 (list!640 (print!73 thiss!19403 (_1!1077 lt!26784))) (list!640 (_2!1077 lt!26784))) lt!27225)))

(assert (= (and d!23191 c!24297) b!99529))

(assert (= (and d!23191 (not c!24297)) b!99530))

(assert (= (and d!23191 res!48401) b!99531))

(assert (= (and b!99531 res!48402) b!99532))

(assert (=> b!99530 m!83630))

(declare-fun m!84630 () Bool)

(assert (=> b!99530 m!84630))

(declare-fun m!84632 () Bool)

(assert (=> b!99531 m!84632))

(assert (=> b!99531 m!83628))

(declare-fun m!84634 () Bool)

(assert (=> b!99531 m!84634))

(assert (=> b!99531 m!83630))

(declare-fun m!84636 () Bool)

(assert (=> b!99531 m!84636))

(declare-fun m!84638 () Bool)

(assert (=> d!23191 m!84638))

(assert (=> d!23191 m!83628))

(declare-fun m!84640 () Bool)

(assert (=> d!23191 m!84640))

(assert (=> d!23191 m!83630))

(declare-fun m!84642 () Bool)

(assert (=> d!23191 m!84642))

(assert (=> d!22915 d!23191))

(assert (=> d!22915 d!22937))

(assert (=> d!22915 d!22911))

(assert (=> d!22915 d!22913))

(declare-fun d!23193 () Bool)

(assert (=> d!23193 (= (list!640 (print!73 thiss!19403 (_1!1077 lt!26784))) (list!644 (c!24158 (print!73 thiss!19403 (_1!1077 lt!26784)))))))

(declare-fun bs!9751 () Bool)

(assert (= bs!9751 d!23193))

(declare-fun m!84644 () Bool)

(assert (=> bs!9751 m!84644))

(assert (=> d!22915 d!23193))

(declare-fun d!23195 () Bool)

(declare-fun lt!27228 () tuple2!1740)

(assert (=> d!23195 (= (++!239 (list!640 (print!73 thiss!19403 (_1!1077 lt!27228))) (list!640 (_2!1077 lt!27228))) (_2!1078 lt!26730))))

(assert (=> d!23195 (= lt!27228 (lex!148 thiss!19403 rules!2471 (seqFromList!194 (_2!1078 lt!26730))))))

(assert (=> d!23195 true))

(declare-fun _$31!124 () Unit!1061)

(assert (=> d!23195 (= (choose!1378 thiss!19403 rules!2471 (_2!1078 lt!26730)) _$31!124)))

(declare-fun bs!9752 () Bool)

(assert (= bs!9752 d!23195))

(assert (=> bs!9752 m!83480))

(declare-fun m!84646 () Bool)

(assert (=> bs!9752 m!84646))

(declare-fun m!84648 () Bool)

(assert (=> bs!9752 m!84648))

(assert (=> bs!9752 m!83480))

(assert (=> bs!9752 m!83482))

(declare-fun m!84650 () Bool)

(assert (=> bs!9752 m!84650))

(assert (=> bs!9752 m!84648))

(declare-fun m!84652 () Bool)

(assert (=> bs!9752 m!84652))

(assert (=> bs!9752 m!84646))

(assert (=> bs!9752 m!84650))

(assert (=> d!22915 d!23195))

(declare-fun d!23197 () Bool)

(assert (=> d!23197 (= (list!640 (_2!1077 lt!26784)) (list!644 (c!24158 (_2!1077 lt!26784))))))

(declare-fun bs!9753 () Bool)

(assert (= bs!9753 d!23197))

(declare-fun m!84654 () Bool)

(assert (=> bs!9753 m!84654))

(assert (=> d!22915 d!23197))

(declare-fun d!23199 () Bool)

(declare-fun lt!27229 () BalanceConc!1004)

(assert (=> d!23199 (= (list!640 lt!27229) (printList!36 thiss!19403 (list!641 (_1!1077 lt!26784))))))

(assert (=> d!23199 (= lt!27229 (printTailRec!36 thiss!19403 (_1!1077 lt!26784) 0 (BalanceConc!1005 Empty!500)))))

(assert (=> d!23199 (= (print!73 thiss!19403 (_1!1077 lt!26784)) lt!27229)))

(declare-fun bs!9754 () Bool)

(assert (= bs!9754 d!23199))

(declare-fun m!84656 () Bool)

(assert (=> bs!9754 m!84656))

(declare-fun m!84658 () Bool)

(assert (=> bs!9754 m!84658))

(assert (=> bs!9754 m!84658))

(declare-fun m!84660 () Bool)

(assert (=> bs!9754 m!84660))

(declare-fun m!84662 () Bool)

(assert (=> bs!9754 m!84662))

(assert (=> d!22915 d!23199))

(assert (=> d!22901 d!22905))

(declare-fun d!23201 () Bool)

(assert (=> d!23201 (= ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725)) (Cons!1607 (h!7004 lt!26725) (t!21174 lt!26725)))))

(assert (=> d!22901 d!23201))

(declare-fun d!23203 () Bool)

(assert (=> d!23203 (= (seqFromList!195 ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725))) (fromListB!86 ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725))))))

(declare-fun bs!9755 () Bool)

(assert (= bs!9755 d!23203))

(assert (=> bs!9755 m!83588))

(declare-fun m!84664 () Bool)

(assert (=> bs!9755 m!84664))

(assert (=> d!22901 d!23203))

(assert (=> d!22901 d!22919))

(declare-fun d!23205 () Bool)

(assert (=> d!23205 (= (list!641 (_1!1077 lt!26723)) (list!641 (prepend!120 (seqFromList!195 (t!21174 lt!26725)) (h!7004 lt!26725))))))

(assert (=> d!23205 true))

(declare-fun _$1!9883 () Unit!1061)

(assert (=> d!23205 (= (choose!1377 (h!7004 lt!26725) (t!21174 lt!26725) (_1!1077 lt!26723)) _$1!9883)))

(declare-fun bs!9756 () Bool)

(assert (= bs!9756 d!23205))

(assert (=> bs!9756 m!83504))

(assert (=> bs!9756 m!83496))

(assert (=> bs!9756 m!83496))

(assert (=> bs!9756 m!83484))

(assert (=> bs!9756 m!83484))

(assert (=> bs!9756 m!83486))

(assert (=> d!22901 d!23205))

(assert (=> d!22901 d!22927))

(assert (=> d!22901 d!22955))

(declare-fun d!23207 () Bool)

(assert (=> d!23207 (= (list!641 (seqFromList!195 ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725)))) (list!645 (c!24160 (seqFromList!195 ($colon$colon!35 (t!21174 lt!26725) (h!7004 lt!26725))))))))

(declare-fun bs!9757 () Bool)

(assert (= bs!9757 d!23207))

(declare-fun m!84666 () Bool)

(assert (=> bs!9757 m!84666))

(assert (=> d!22901 d!23207))

(declare-fun b!99534 () Bool)

(declare-fun e!55191 () List!1610)

(assert (=> b!99534 (= e!55191 (Cons!1604 (h!7001 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (++!239 (t!21171 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (_2!1078 (get!408 lt!26767)))))))

(declare-fun b!99533 () Bool)

(assert (=> b!99533 (= e!55191 (_2!1078 (get!408 lt!26767)))))

(declare-fun b!99535 () Bool)

(declare-fun res!48404 () Bool)

(declare-fun e!55190 () Bool)

(assert (=> b!99535 (=> (not res!48404) (not e!55190))))

(declare-fun lt!27230 () List!1610)

(assert (=> b!99535 (= res!48404 (= (size!1419 lt!27230) (+ (size!1419 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (size!1419 (_2!1078 (get!408 lt!26767))))))))

(declare-fun b!99536 () Bool)

(assert (=> b!99536 (= e!55190 (or (not (= (_2!1078 (get!408 lt!26767)) Nil!1604)) (= lt!27230 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))))))))

(declare-fun d!23209 () Bool)

(assert (=> d!23209 e!55190))

(declare-fun res!48403 () Bool)

(assert (=> d!23209 (=> (not res!48403) (not e!55190))))

(assert (=> d!23209 (= res!48403 (= (content!121 lt!27230) (set.union (content!121 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))) (content!121 (_2!1078 (get!408 lt!26767))))))))

(assert (=> d!23209 (= lt!27230 e!55191)))

(declare-fun c!24298 () Bool)

(assert (=> d!23209 (= c!24298 (is-Nil!1604 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767))))))))

(assert (=> d!23209 (= (++!239 (list!640 (charsOf!81 (_1!1078 (get!408 lt!26767)))) (_2!1078 (get!408 lt!26767))) lt!27230)))

(assert (= (and d!23209 c!24298) b!99533))

(assert (= (and d!23209 (not c!24298)) b!99534))

(assert (= (and d!23209 res!48403) b!99535))

(assert (= (and b!99535 res!48404) b!99536))

(declare-fun m!84668 () Bool)

(assert (=> b!99534 m!84668))

(declare-fun m!84670 () Bool)

(assert (=> b!99535 m!84670))

(assert (=> b!99535 m!83566))

(declare-fun m!84672 () Bool)

(assert (=> b!99535 m!84672))

(assert (=> b!99535 m!83576))

(declare-fun m!84674 () Bool)

(assert (=> d!23209 m!84674))

(assert (=> d!23209 m!83566))

(declare-fun m!84676 () Bool)

(assert (=> d!23209 m!84676))

(declare-fun m!84678 () Bool)

(assert (=> d!23209 m!84678))

(assert (=> b!98961 d!23209))

(assert (=> b!98961 d!23175))

(assert (=> b!98961 d!23177))

(assert (=> b!98961 d!23007))

(declare-fun b!99540 () Bool)

(declare-fun e!55192 () Bool)

(declare-fun tp!56699 () Bool)

(declare-fun tp!56698 () Bool)

(assert (=> b!99540 (= e!55192 (and tp!56699 tp!56698))))

(declare-fun b!99537 () Bool)

(assert (=> b!99537 (= e!55192 tp_is_empty!759)))

(assert (=> b!99066 (= tp!56661 e!55192)))

(declare-fun b!99538 () Bool)

(declare-fun tp!56696 () Bool)

(declare-fun tp!56700 () Bool)

(assert (=> b!99538 (= e!55192 (and tp!56696 tp!56700))))

(declare-fun b!99539 () Bool)

(declare-fun tp!56697 () Bool)

(assert (=> b!99539 (= e!55192 tp!56697)))

(assert (= (and b!99066 (is-ElementMatch!418 (regOne!1349 (regex!350 (h!7003 rules!2471))))) b!99537))

(assert (= (and b!99066 (is-Concat!758 (regOne!1349 (regex!350 (h!7003 rules!2471))))) b!99538))

(assert (= (and b!99066 (is-Star!418 (regOne!1349 (regex!350 (h!7003 rules!2471))))) b!99539))

(assert (= (and b!99066 (is-Union!418 (regOne!1349 (regex!350 (h!7003 rules!2471))))) b!99540))

(declare-fun b!99544 () Bool)

(declare-fun e!55193 () Bool)

(declare-fun tp!56704 () Bool)

(declare-fun tp!56703 () Bool)

(assert (=> b!99544 (= e!55193 (and tp!56704 tp!56703))))

(declare-fun b!99541 () Bool)

(assert (=> b!99541 (= e!55193 tp_is_empty!759)))

(assert (=> b!99066 (= tp!56660 e!55193)))

(declare-fun b!99542 () Bool)

(declare-fun tp!56701 () Bool)

(declare-fun tp!56705 () Bool)

(assert (=> b!99542 (= e!55193 (and tp!56701 tp!56705))))

(declare-fun b!99543 () Bool)

(declare-fun tp!56702 () Bool)

(assert (=> b!99543 (= e!55193 tp!56702)))

(assert (= (and b!99066 (is-ElementMatch!418 (regTwo!1349 (regex!350 (h!7003 rules!2471))))) b!99541))

(assert (= (and b!99066 (is-Concat!758 (regTwo!1349 (regex!350 (h!7003 rules!2471))))) b!99542))

(assert (= (and b!99066 (is-Star!418 (regTwo!1349 (regex!350 (h!7003 rules!2471))))) b!99543))

(assert (= (and b!99066 (is-Union!418 (regTwo!1349 (regex!350 (h!7003 rules!2471))))) b!99544))

(declare-fun b!99548 () Bool)

(declare-fun e!55194 () Bool)

(declare-fun tp!56709 () Bool)

(declare-fun tp!56708 () Bool)

(assert (=> b!99548 (= e!55194 (and tp!56709 tp!56708))))

(declare-fun b!99545 () Bool)

(assert (=> b!99545 (= e!55194 tp_is_empty!759)))

(assert (=> b!99051 (= tp!56645 e!55194)))

(declare-fun b!99546 () Bool)

(declare-fun tp!56706 () Bool)

(declare-fun tp!56710 () Bool)

(assert (=> b!99546 (= e!55194 (and tp!56706 tp!56710))))

(declare-fun b!99547 () Bool)

(declare-fun tp!56707 () Bool)

(assert (=> b!99547 (= e!55194 tp!56707)))

(assert (= (and b!99051 (is-ElementMatch!418 (regex!350 (h!7003 (t!21173 rules!2471))))) b!99545))

(assert (= (and b!99051 (is-Concat!758 (regex!350 (h!7003 (t!21173 rules!2471))))) b!99546))

(assert (= (and b!99051 (is-Star!418 (regex!350 (h!7003 (t!21173 rules!2471))))) b!99547))

(assert (= (and b!99051 (is-Union!418 (regex!350 (h!7003 (t!21173 rules!2471))))) b!99548))

(declare-fun b!99552 () Bool)

(declare-fun e!55195 () Bool)

(declare-fun tp!56714 () Bool)

(declare-fun tp!56713 () Bool)

(assert (=> b!99552 (= e!55195 (and tp!56714 tp!56713))))

(declare-fun b!99549 () Bool)

(assert (=> b!99549 (= e!55195 tp_is_empty!759)))

(assert (=> b!99065 (= tp!56659 e!55195)))

(declare-fun b!99550 () Bool)

(declare-fun tp!56711 () Bool)

(declare-fun tp!56715 () Bool)

(assert (=> b!99550 (= e!55195 (and tp!56711 tp!56715))))

(declare-fun b!99551 () Bool)

(declare-fun tp!56712 () Bool)

(assert (=> b!99551 (= e!55195 tp!56712)))

(assert (= (and b!99065 (is-ElementMatch!418 (reg!747 (regex!350 (h!7003 rules!2471))))) b!99549))

(assert (= (and b!99065 (is-Concat!758 (reg!747 (regex!350 (h!7003 rules!2471))))) b!99550))

(assert (= (and b!99065 (is-Star!418 (reg!747 (regex!350 (h!7003 rules!2471))))) b!99551))

(assert (= (and b!99065 (is-Union!418 (reg!747 (regex!350 (h!7003 rules!2471))))) b!99552))

(declare-fun b!99555 () Bool)

(declare-fun b_free!2981 () Bool)

(declare-fun b_next!2981 () Bool)

(assert (=> b!99555 (= b_free!2981 (not b_next!2981))))

(declare-fun tb!3023 () Bool)

(declare-fun t!21204 () Bool)

(assert (=> (and b!99555 (= (toValue!909 (transformation!350 (h!7003 (t!21173 (t!21173 rules!2471))))) (toValue!909 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21204) tb!3023))

(declare-fun result!4390 () Bool)

(assert (= result!4390 result!4384))

(assert (=> d!23187 t!21204))

(declare-fun b_and!4475 () Bool)

(declare-fun tp!56718 () Bool)

(assert (=> b!99555 (= tp!56718 (and (=> t!21204 result!4390) b_and!4475))))

(declare-fun b_free!2983 () Bool)

(declare-fun b_next!2983 () Bool)

(assert (=> b!99555 (= b_free!2983 (not b_next!2983))))

(declare-fun tb!3025 () Bool)

(declare-fun t!21206 () Bool)

(assert (=> (and b!99555 (= (toChars!768 (transformation!350 (h!7003 (t!21173 (t!21173 rules!2471))))) (toChars!768 (transformation!350 (rule!853 (_1!1078 (get!408 lt!26767)))))) t!21206) tb!3025))

(declare-fun result!4392 () Bool)

(assert (= result!4392 result!4378))

(assert (=> d!23177 t!21206))

(declare-fun b_and!4477 () Bool)

(declare-fun tp!56716 () Bool)

(assert (=> b!99555 (= tp!56716 (and (=> t!21206 result!4392) b_and!4477))))

(declare-fun e!55196 () Bool)

(assert (=> b!99555 (= e!55196 (and tp!56718 tp!56716))))

(declare-fun b!99554 () Bool)

(declare-fun tp!56717 () Bool)

(declare-fun e!55199 () Bool)

(assert (=> b!99554 (= e!55199 (and tp!56717 (inv!1941 (tag!528 (h!7003 (t!21173 (t!21173 rules!2471))))) (inv!1944 (transformation!350 (h!7003 (t!21173 (t!21173 rules!2471))))) e!55196))))

(declare-fun b!99553 () Bool)

(declare-fun e!55198 () Bool)

(declare-fun tp!56719 () Bool)

(assert (=> b!99553 (= e!55198 (and e!55199 tp!56719))))

(assert (=> b!99050 (= tp!56647 e!55198)))

(assert (= b!99554 b!99555))

(assert (= b!99553 b!99554))

(assert (= (and b!99050 (is-Cons!1606 (t!21173 (t!21173 rules!2471)))) b!99553))

(declare-fun m!84680 () Bool)

(assert (=> b!99554 m!84680))

(declare-fun m!84682 () Bool)

(assert (=> b!99554 m!84682))

(declare-fun b!99556 () Bool)

(declare-fun e!55200 () Bool)

(declare-fun tp!56720 () Bool)

(assert (=> b!99556 (= e!55200 (and tp_is_empty!759 tp!56720))))

(assert (=> b!99038 (= tp!56635 e!55200)))

(assert (= (and b!99038 (is-Cons!1604 (t!21171 (t!21171 input!2238)))) b!99556))

(declare-fun b!99560 () Bool)

(declare-fun e!55201 () Bool)

(declare-fun tp!56724 () Bool)

(declare-fun tp!56723 () Bool)

(assert (=> b!99560 (= e!55201 (and tp!56724 tp!56723))))

(declare-fun b!99557 () Bool)

(assert (=> b!99557 (= e!55201 tp_is_empty!759)))

(assert (=> b!99064 (= tp!56658 e!55201)))

(declare-fun b!99558 () Bool)

(declare-fun tp!56721 () Bool)

(declare-fun tp!56725 () Bool)

(assert (=> b!99558 (= e!55201 (and tp!56721 tp!56725))))

(declare-fun b!99559 () Bool)

(declare-fun tp!56722 () Bool)

(assert (=> b!99559 (= e!55201 tp!56722)))

(assert (= (and b!99064 (is-ElementMatch!418 (regOne!1348 (regex!350 (h!7003 rules!2471))))) b!99557))

(assert (= (and b!99064 (is-Concat!758 (regOne!1348 (regex!350 (h!7003 rules!2471))))) b!99558))

(assert (= (and b!99064 (is-Star!418 (regOne!1348 (regex!350 (h!7003 rules!2471))))) b!99559))

(assert (= (and b!99064 (is-Union!418 (regOne!1348 (regex!350 (h!7003 rules!2471))))) b!99560))

(declare-fun b!99564 () Bool)

(declare-fun e!55202 () Bool)

(declare-fun tp!56729 () Bool)

(declare-fun tp!56728 () Bool)

(assert (=> b!99564 (= e!55202 (and tp!56729 tp!56728))))

(declare-fun b!99561 () Bool)

(assert (=> b!99561 (= e!55202 tp_is_empty!759)))

(assert (=> b!99064 (= tp!56662 e!55202)))

(declare-fun b!99562 () Bool)

(declare-fun tp!56726 () Bool)

(declare-fun tp!56730 () Bool)

(assert (=> b!99562 (= e!55202 (and tp!56726 tp!56730))))

(declare-fun b!99563 () Bool)

(declare-fun tp!56727 () Bool)

(assert (=> b!99563 (= e!55202 tp!56727)))

(assert (= (and b!99064 (is-ElementMatch!418 (regTwo!1348 (regex!350 (h!7003 rules!2471))))) b!99561))

(assert (= (and b!99064 (is-Concat!758 (regTwo!1348 (regex!350 (h!7003 rules!2471))))) b!99562))

(assert (= (and b!99064 (is-Star!418 (regTwo!1348 (regex!350 (h!7003 rules!2471))))) b!99563))

(assert (= (and b!99064 (is-Union!418 (regTwo!1348 (regex!350 (h!7003 rules!2471))))) b!99564))

(push 1)

(assert b_and!4467)

(assert (not d!23127))

(assert (not b!99172))

(assert (not b!99398))

(assert (not b!99434))

(assert (not d!23061))

(assert (not b!99447))

(assert (not d!23207))

(assert (not b!99287))

(assert (not b!99476))

(assert (not b!99289))

(assert (not b!99421))

(assert (not b!99530))

(assert (not b!99558))

(assert (not d!23001))

(assert (not b!99448))

(assert (not d!23009))

(assert (not b!99226))

(assert (not b!99540))

(assert (not b_lambda!1133))

(assert (not b!99227))

(assert (not b!99237))

(assert (not b!99430))

(assert (not d!23149))

(assert (not b!99437))

(assert (not b!99292))

(assert (not b!99431))

(assert (not b_next!2981))

(assert (not b!99238))

(assert (not d!23175))

(assert (not b!99560))

(assert (not d!23141))

(assert (not d!23021))

(assert (not b!99523))

(assert (not b!99157))

(assert (not b!99185))

(assert (not b!99452))

(assert (not d!22995))

(assert (not b!99422))

(assert (not b!99525))

(assert (not b!99556))

(assert (not b!99543))

(assert (not b!99222))

(assert (not b!99417))

(assert (not d!23005))

(assert (not d!23155))

(assert (not b!99439))

(assert (not d!23209))

(assert (not d!23179))

(assert (not bm!4388))

(assert (not b!99461))

(assert (not d!23131))

(assert (not d!23035))

(assert (not b!99444))

(assert (not b_next!2967))

(assert (not b!99483))

(assert (not b_lambda!1131))

(assert (not b!99550))

(assert (not b!99420))

(assert (not b!99542))

(assert (not b!99418))

(assert (not b!99225))

(assert (not b!99534))

(assert b_and!4473)

(assert (not b!99209))

(assert (not b!99204))

(assert (not b!99401))

(assert (not b!99173))

(assert b_and!4475)

(assert (not b!99191))

(assert (not b!99201))

(assert (not b!99451))

(assert (not b!99239))

(assert (not b!99544))

(assert (not d!23123))

(assert (not b!99551))

(assert (not b!99288))

(assert (not b!99199))

(assert (not b!99294))

(assert (not b!99564))

(assert (not d!23023))

(assert (not b!99449))

(assert (not b!99220))

(assert (not b!99218))

(assert (not d!23139))

(assert (not b!99295))

(assert (not b!99210))

(assert (not b!99146))

(assert (not b!99291))

(assert b_and!4471)

(assert (not b!99456))

(assert (not bm!4391))

(assert (not d!23157))

(assert (not d!23059))

(assert (not b!99553))

(assert (not b!99538))

(assert (not b!99453))

(assert (not b!99426))

(assert (not b!99562))

(assert tp_is_empty!759)

(assert (not d!23163))

(assert (not b!99425))

(assert (not d!23133))

(assert (not b!99402))

(assert (not d!23167))

(assert (not b!99221))

(assert (not b!99520))

(assert (not b!99266))

(assert (not d!23171))

(assert (not b!99559))

(assert (not d!23189))

(assert (not b!99197))

(assert (not d!23135))

(assert (not b!99471))

(assert (not b!99161))

(assert (not d!23165))

(assert (not d!22997))

(assert (not d!23029))

(assert (not tb!3015))

(assert (not b!99223))

(assert (not b!99290))

(assert (not b_next!2975))

(assert (not d!23173))

(assert (not d!23037))

(assert (not d!23057))

(assert (not d!23193))

(assert (not b!99219))

(assert (not b!99518))

(assert (not b!99552))

(assert (not d!23177))

(assert (not b!99433))

(assert (not d!23185))

(assert (not b!99546))

(assert (not b!99484))

(assert (not d!23203))

(assert (not b_next!2973))

(assert (not b!99184))

(assert (not d!23195))

(assert (not d!23181))

(assert (not b!99531))

(assert (not b!99563))

(assert (not d!23063))

(assert (not d!23205))

(assert (not b!99400))

(assert (not b!99441))

(assert (not d!23137))

(assert (not b!99299))

(assert (not b!99216))

(assert (not b!99469))

(assert (not d!23191))

(assert (not d!23153))

(assert (not b!99548))

(assert (not b!99265))

(assert (not b!99160))

(assert (not b_next!2983))

(assert (not b!99547))

(assert (not d!22993))

(assert (not b!99298))

(assert (not tb!3019))

(assert b_and!4477)

(assert (not b!99554))

(assert (not b!99513))

(assert (not b_next!2965))

(assert (not d!23161))

(assert (not d!23065))

(assert (not b!99535))

(assert (not d!23197))

(assert (not d!23017))

(assert (not d!23199))

(assert (not b!99419))

(assert (not d!23129))

(assert b_and!4469)

(assert (not b!99515))

(assert (not b!99539))

(assert (not b!99427))

(assert (not d!23053))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4467)

(assert (not b_next!2981))

(assert (not b_next!2967))

(assert b_and!4473)

(assert b_and!4475)

(assert b_and!4471)

(assert (not b_next!2975))

(assert (not b_next!2973))

(assert (not b_next!2983))

(assert b_and!4469)

(assert b_and!4477)

(assert (not b_next!2965))

(check-sat)

(pop 1)

