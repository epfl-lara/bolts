; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!7920 () Bool)

(assert start!7920)

(declare-fun b!89112 () Bool)

(declare-fun b_free!2741 () Bool)

(declare-fun b_next!2741 () Bool)

(assert (=> b!89112 (= b_free!2741 (not b_next!2741))))

(declare-fun tp!53301 () Bool)

(declare-fun b_and!4039 () Bool)

(assert (=> b!89112 (= tp!53301 b_and!4039)))

(declare-fun b_free!2743 () Bool)

(declare-fun b_next!2743 () Bool)

(assert (=> b!89112 (= b_free!2743 (not b_next!2743))))

(declare-fun tp!53302 () Bool)

(declare-fun b_and!4041 () Bool)

(assert (=> b!89112 (= tp!53302 b_and!4041)))

(declare-fun b!89105 () Bool)

(declare-fun e!49645 () Bool)

(declare-fun e!49646 () Bool)

(assert (=> b!89105 (= e!49645 e!49646)))

(declare-fun res!44831 () Bool)

(assert (=> b!89105 (=> (not res!44831) (not e!49646))))

(declare-fun lt!22059 () Bool)

(declare-datatypes ((C!1718 0))(
  ( (C!1719 (val!466 Int)) )
))
(declare-datatypes ((List!1514 0))(
  ( (Nil!1508) (Cons!1508 (h!6905 C!1718) (t!20751 List!1514)) )
))
(declare-datatypes ((IArray!925 0))(
  ( (IArray!926 (innerList!520 List!1514)) )
))
(declare-datatypes ((Conc!462 0))(
  ( (Node!462 (left!1148 Conc!462) (right!1478 Conc!462) (csize!1154 Int) (cheight!673 Int)) (Leaf!763 (xs!3045 IArray!925) (csize!1155 Int)) (Empty!462) )
))
(declare-datatypes ((BalanceConc!928 0))(
  ( (BalanceConc!929 (c!22188 Conc!462)) )
))
(declare-datatypes ((List!1515 0))(
  ( (Nil!1509) (Cons!1509 (h!6906 (_ BitVec 16)) (t!20752 List!1515)) )
))
(declare-datatypes ((TokenValue!320 0))(
  ( (FloatLiteralValue!640 (text!2685 List!1515)) (TokenValueExt!319 (__x!1735 Int)) (Broken!1600 (value!12276 List!1515)) (Object!325) (End!320) (Def!320) (Underscore!320) (Match!320) (Else!320) (Error!320) (Case!320) (If!320) (Extends!320) (Abstract!320) (Class!320) (Val!320) (DelimiterValue!640 (del!380 List!1515)) (KeywordValue!326 (value!12277 List!1515)) (CommentValue!640 (value!12278 List!1515)) (WhitespaceValue!640 (value!12279 List!1515)) (IndentationValue!320 (value!12280 List!1515)) (String!1993) (Int32!320) (Broken!1601 (value!12281 List!1515)) (Boolean!321) (Unit!964) (OperatorValue!323 (op!380 List!1515)) (IdentifierValue!640 (value!12282 List!1515)) (IdentifierValue!641 (value!12283 List!1515)) (WhitespaceValue!641 (value!12284 List!1515)) (True!640) (False!640) (Broken!1602 (value!12285 List!1515)) (Broken!1603 (value!12286 List!1515)) (True!641) (RightBrace!320) (RightBracket!320) (Colon!320) (Null!320) (Comma!320) (LeftBracket!320) (False!641) (LeftBrace!320) (ImaginaryLiteralValue!320 (text!2686 List!1515)) (StringLiteralValue!960 (value!12287 List!1515)) (EOFValue!320 (value!12288 List!1515)) (IdentValue!320 (value!12289 List!1515)) (DelimiterValue!641 (value!12290 List!1515)) (DedentValue!320 (value!12291 List!1515)) (NewLineValue!320 (value!12292 List!1515)) (IntegerValue!960 (value!12293 (_ BitVec 32)) (text!2687 List!1515)) (IntegerValue!961 (value!12294 Int) (text!2688 List!1515)) (Times!320) (Or!320) (Equal!320) (Minus!320) (Broken!1604 (value!12295 List!1515)) (And!320) (Div!320) (LessEqual!320) (Mod!320) (Concat!718) (Not!320) (Plus!320) (SpaceValue!320 (value!12296 List!1515)) (IntegerValue!962 (value!12297 Int) (text!2689 List!1515)) (StringLiteralValue!961 (text!2690 List!1515)) (FloatLiteralValue!641 (text!2691 List!1515)) (BytesLiteralValue!320 (value!12298 List!1515)) (CommentValue!641 (value!12299 List!1515)) (StringLiteralValue!962 (value!12300 List!1515)) (ErrorTokenValue!320 (msg!381 List!1515)) )
))
(declare-datatypes ((Regex!398 0))(
  ( (ElementMatch!398 (c!22189 C!1718)) (Concat!719 (regOne!1308 Regex!398) (regTwo!1308 Regex!398)) (EmptyExpr!398) (Star!398 (reg!727 Regex!398)) (EmptyLang!398) (Union!398 (regOne!1309 Regex!398) (regTwo!1309 Regex!398)) )
))
(declare-datatypes ((String!1994 0))(
  ( (String!1995 (value!12301 String)) )
))
(declare-datatypes ((TokenValueInjection!464 0))(
  ( (TokenValueInjection!465 (toValue!861 Int) (toChars!720 Int)) )
))
(declare-datatypes ((Rule!460 0))(
  ( (Rule!461 (regex!330 Regex!398) (tag!508 String!1994) (isSeparator!330 Bool) (transformation!330 TokenValueInjection!464)) )
))
(declare-datatypes ((Token!420 0))(
  ( (Token!421 (value!12302 TokenValue!320) (rule!823 Rule!460) (size!1306 Int) (originalCharacters!381 List!1514)) )
))
(declare-datatypes ((List!1516 0))(
  ( (Nil!1510) (Cons!1510 (h!6907 Token!420) (t!20753 List!1516)) )
))
(declare-fun lt!22049 () List!1516)

(assert (=> b!89105 (= res!44831 (and (or lt!22059 (not (is-Nil!1510 (t!20753 lt!22049)))) (not lt!22059)))))

(assert (=> b!89105 (= lt!22059 (not (is-Cons!1510 lt!22049)))))

(declare-datatypes ((IArray!927 0))(
  ( (IArray!928 (innerList!521 List!1516)) )
))
(declare-datatypes ((Conc!463 0))(
  ( (Node!463 (left!1149 Conc!463) (right!1479 Conc!463) (csize!1156 Int) (cheight!674 Int)) (Leaf!764 (xs!3046 IArray!927) (csize!1157 Int)) (Empty!463) )
))
(declare-datatypes ((BalanceConc!930 0))(
  ( (BalanceConc!931 (c!22190 Conc!463)) )
))
(declare-datatypes ((tuple2!1588 0))(
  ( (tuple2!1589 (_1!1001 BalanceConc!930) (_2!1001 BalanceConc!928)) )
))
(declare-fun lt!22054 () tuple2!1588)

(declare-fun list!551 (BalanceConc!930) List!1516)

(assert (=> b!89105 (= lt!22049 (list!551 (_1!1001 lt!22054)))))

(declare-fun b!89106 () Bool)

(declare-fun e!49649 () Bool)

(assert (=> b!89106 (= e!49649 e!49645)))

(declare-fun res!44830 () Bool)

(assert (=> b!89106 (=> (not res!44830) (not e!49645))))

(declare-fun isEmpty!571 (BalanceConc!928) Bool)

(assert (=> b!89106 (= res!44830 (not (isEmpty!571 (_2!1001 lt!22054))))))

(declare-datatypes ((LexerInterface!222 0))(
  ( (LexerInterfaceExt!219 (__x!1736 Int)) (Lexer!220) )
))
(declare-fun thiss!19403 () LexerInterface!222)

(declare-datatypes ((List!1517 0))(
  ( (Nil!1511) (Cons!1511 (h!6908 Rule!460) (t!20754 List!1517)) )
))
(declare-fun rules!2471 () List!1517)

(declare-fun input!2238 () List!1514)

(declare-fun lex!130 (LexerInterface!222 List!1517 BalanceConc!928) tuple2!1588)

(declare-fun seqFromList!168 (List!1514) BalanceConc!928)

(assert (=> b!89106 (= lt!22054 (lex!130 thiss!19403 rules!2471 (seqFromList!168 input!2238)))))

(declare-fun b!89107 () Bool)

(declare-fun res!44833 () Bool)

(assert (=> b!89107 (=> (not res!44833) (not e!49649))))

(declare-fun rulesInvariant!216 (LexerInterface!222 List!1517) Bool)

(assert (=> b!89107 (= res!44833 (rulesInvariant!216 thiss!19403 rules!2471))))

(declare-fun res!44828 () Bool)

(assert (=> start!7920 (=> (not res!44828) (not e!49649))))

(assert (=> start!7920 (= res!44828 (is-Lexer!220 thiss!19403))))

(assert (=> start!7920 e!49649))

(assert (=> start!7920 true))

(declare-fun e!49651 () Bool)

(assert (=> start!7920 e!49651))

(declare-fun e!49648 () Bool)

(assert (=> start!7920 e!49648))

(declare-fun b!89108 () Bool)

(declare-fun e!49644 () Bool)

(assert (=> b!89108 (= e!49646 (not e!49644))))

(declare-fun res!44832 () Bool)

(assert (=> b!89108 (=> res!44832 e!49644)))

(declare-datatypes ((tuple2!1590 0))(
  ( (tuple2!1591 (_1!1002 Token!420) (_2!1002 List!1514)) )
))
(declare-fun lt!22050 () tuple2!1590)

(declare-fun lt!22057 () List!1514)

(declare-fun ++!187 (List!1514 List!1514) List!1514)

(assert (=> b!89108 (= res!44832 (not (= input!2238 (++!187 lt!22057 (_2!1002 lt!22050)))))))

(declare-fun list!552 (BalanceConc!928) List!1514)

(declare-fun charsOf!65 (Token!420) BalanceConc!928)

(assert (=> b!89108 (= lt!22057 (list!552 (charsOf!65 (_1!1002 lt!22050))))))

(declare-fun lt!22055 () List!1514)

(declare-fun lt!22053 () tuple2!1588)

(declare-fun lt!22052 () List!1514)

(declare-datatypes ((tuple2!1592 0))(
  ( (tuple2!1593 (_1!1003 List!1516) (_2!1003 List!1514)) )
))
(declare-fun tail!147 (List!1516) List!1516)

(assert (=> b!89108 (= (tuple2!1593 (list!551 (_1!1001 lt!22053)) lt!22052) (tuple2!1593 (tail!147 lt!22049) lt!22055))))

(declare-datatypes ((Unit!965 0))(
  ( (Unit!966) )
))
(declare-fun lt!22061 () Unit!965)

(declare-fun lemmaRemovingFirstTokensCharactersPreservesLexSuffix!37 (LexerInterface!222 List!1517 List!1514 List!1516 List!1514) Unit!965)

(assert (=> b!89108 (= lt!22061 (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!37 thiss!19403 rules!2471 input!2238 lt!22049 lt!22055))))

(assert (=> b!89108 (= lt!22055 (list!552 (_2!1001 lt!22054)))))

(declare-fun lt!22060 () List!1514)

(assert (=> b!89108 (= (++!187 lt!22060 lt!22052) (_2!1002 lt!22050))))

(assert (=> b!89108 (= lt!22052 (list!552 (_2!1001 lt!22053)))))

(declare-fun print!61 (LexerInterface!222 BalanceConc!930) BalanceConc!928)

(assert (=> b!89108 (= lt!22060 (list!552 (print!61 thiss!19403 (_1!1001 lt!22053))))))

(assert (=> b!89108 (= lt!22053 (lex!130 thiss!19403 rules!2471 (seqFromList!168 (_2!1002 lt!22050))))))

(declare-fun lt!22051 () Unit!965)

(declare-fun theoremInvertFromString!41 (LexerInterface!222 List!1517 List!1514) Unit!965)

(assert (=> b!89108 (= lt!22051 (theoremInvertFromString!41 thiss!19403 rules!2471 (_2!1002 lt!22050)))))

(declare-datatypes ((Option!143 0))(
  ( (None!142) (Some!142 (v!12877 tuple2!1590)) )
))
(declare-fun get!384 (Option!143) tuple2!1590)

(declare-fun maxPrefix!64 (LexerInterface!222 List!1517 List!1514) Option!143)

(assert (=> b!89108 (= lt!22050 (get!384 (maxPrefix!64 thiss!19403 rules!2471 input!2238)))))

(declare-fun lt!22056 () BalanceConc!930)

(declare-fun prepend!96 (BalanceConc!930 Token!420) BalanceConc!930)

(assert (=> b!89108 (= lt!22049 (list!551 (prepend!96 lt!22056 (h!6907 lt!22049))))))

(declare-fun seqFromList!169 (List!1516) BalanceConc!930)

(assert (=> b!89108 (= lt!22056 (seqFromList!169 (t!20753 lt!22049)))))

(declare-fun lt!22058 () Unit!965)

(declare-fun seqFromListBHdTlConstructive!49 (Token!420 List!1516 BalanceConc!930) Unit!965)

(assert (=> b!89108 (= lt!22058 (seqFromListBHdTlConstructive!49 (h!6907 lt!22049) (t!20753 lt!22049) (_1!1001 lt!22054)))))

(declare-fun b!89109 () Bool)

(declare-fun tp_is_empty!719 () Bool)

(declare-fun tp!53304 () Bool)

(assert (=> b!89109 (= e!49648 (and tp_is_empty!719 tp!53304))))

(declare-fun tp!53303 () Bool)

(declare-fun e!49650 () Bool)

(declare-fun e!49647 () Bool)

(declare-fun b!89110 () Bool)

(declare-fun inv!1865 (String!1994) Bool)

(declare-fun inv!1868 (TokenValueInjection!464) Bool)

(assert (=> b!89110 (= e!49647 (and tp!53303 (inv!1865 (tag!508 (h!6908 rules!2471))) (inv!1868 (transformation!330 (h!6908 rules!2471))) e!49650))))

(declare-fun b!89111 () Bool)

(assert (=> b!89111 (= e!49644 (= input!2238 (++!187 lt!22057 (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055))))))

(assert (=> b!89112 (= e!49650 (and tp!53301 tp!53302))))

(declare-fun b!89113 () Bool)

(declare-fun tp!53305 () Bool)

(assert (=> b!89113 (= e!49651 (and e!49647 tp!53305))))

(declare-fun b!89114 () Bool)

(declare-fun res!44829 () Bool)

(assert (=> b!89114 (=> (not res!44829) (not e!49649))))

(declare-fun isEmpty!572 (List!1517) Bool)

(assert (=> b!89114 (= res!44829 (not (isEmpty!572 rules!2471)))))

(assert (= (and start!7920 res!44828) b!89114))

(assert (= (and b!89114 res!44829) b!89107))

(assert (= (and b!89107 res!44833) b!89106))

(assert (= (and b!89106 res!44830) b!89105))

(assert (= (and b!89105 res!44831) b!89108))

(assert (= (and b!89108 (not res!44832)) b!89111))

(assert (= b!89110 b!89112))

(assert (= b!89113 b!89110))

(assert (= (and start!7920 (is-Cons!1511 rules!2471)) b!89113))

(assert (= (and start!7920 (is-Cons!1508 input!2238)) b!89109))

(declare-fun m!69338 () Bool)

(assert (=> b!89110 m!69338))

(declare-fun m!69340 () Bool)

(assert (=> b!89110 m!69340))

(declare-fun m!69342 () Bool)

(assert (=> b!89107 m!69342))

(declare-fun m!69344 () Bool)

(assert (=> b!89106 m!69344))

(declare-fun m!69346 () Bool)

(assert (=> b!89106 m!69346))

(assert (=> b!89106 m!69346))

(declare-fun m!69348 () Bool)

(assert (=> b!89106 m!69348))

(declare-fun m!69350 () Bool)

(assert (=> b!89108 m!69350))

(declare-fun m!69352 () Bool)

(assert (=> b!89108 m!69352))

(declare-fun m!69354 () Bool)

(assert (=> b!89108 m!69354))

(declare-fun m!69356 () Bool)

(assert (=> b!89108 m!69356))

(declare-fun m!69358 () Bool)

(assert (=> b!89108 m!69358))

(declare-fun m!69360 () Bool)

(assert (=> b!89108 m!69360))

(declare-fun m!69362 () Bool)

(assert (=> b!89108 m!69362))

(declare-fun m!69364 () Bool)

(assert (=> b!89108 m!69364))

(assert (=> b!89108 m!69350))

(declare-fun m!69366 () Bool)

(assert (=> b!89108 m!69366))

(declare-fun m!69368 () Bool)

(assert (=> b!89108 m!69368))

(declare-fun m!69370 () Bool)

(assert (=> b!89108 m!69370))

(declare-fun m!69372 () Bool)

(assert (=> b!89108 m!69372))

(declare-fun m!69374 () Bool)

(assert (=> b!89108 m!69374))

(declare-fun m!69376 () Bool)

(assert (=> b!89108 m!69376))

(declare-fun m!69378 () Bool)

(assert (=> b!89108 m!69378))

(assert (=> b!89108 m!69372))

(assert (=> b!89108 m!69356))

(declare-fun m!69380 () Bool)

(assert (=> b!89108 m!69380))

(declare-fun m!69382 () Bool)

(assert (=> b!89108 m!69382))

(declare-fun m!69384 () Bool)

(assert (=> b!89108 m!69384))

(declare-fun m!69386 () Bool)

(assert (=> b!89108 m!69386))

(assert (=> b!89108 m!69382))

(assert (=> b!89108 m!69362))

(declare-fun m!69388 () Bool)

(assert (=> b!89108 m!69388))

(declare-fun m!69390 () Bool)

(assert (=> b!89114 m!69390))

(declare-fun m!69392 () Bool)

(assert (=> b!89105 m!69392))

(declare-fun m!69394 () Bool)

(assert (=> b!89111 m!69394))

(assert (=> b!89111 m!69394))

(declare-fun m!69396 () Bool)

(assert (=> b!89111 m!69396))

(assert (=> b!89111 m!69396))

(declare-fun m!69398 () Bool)

(assert (=> b!89111 m!69398))

(assert (=> b!89111 m!69398))

(declare-fun m!69400 () Bool)

(assert (=> b!89111 m!69400))

(push 1)

(assert b_and!4041)

(assert (not b!89114))

(assert (not b!89110))

(assert (not b!89105))

(assert (not b!89106))

(assert (not b!89113))

(assert (not b!89107))

(assert (not b!89109))

(assert b_and!4039)

(assert (not b_next!2743))

(assert (not b!89108))

(assert (not b!89111))

(assert tp_is_empty!719)

(assert (not b_next!2741))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4041)

(assert b_and!4039)

(assert (not b_next!2743))

(assert (not b_next!2741))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!89163 () Bool)

(declare-fun res!44879 () Bool)

(declare-fun e!49685 () Bool)

(assert (=> b!89163 (=> (not res!44879) (not e!49685))))

(declare-fun lt!22115 () Option!143)

(assert (=> b!89163 (= res!44879 (= (++!187 (list!552 (charsOf!65 (_1!1002 (get!384 lt!22115)))) (_2!1002 (get!384 lt!22115))) input!2238))))

(declare-fun b!89164 () Bool)

(declare-fun e!49686 () Bool)

(assert (=> b!89164 (= e!49686 e!49685)))

(declare-fun res!44880 () Bool)

(assert (=> b!89164 (=> (not res!44880) (not e!49685))))

(declare-fun isDefined!41 (Option!143) Bool)

(assert (=> b!89164 (= res!44880 (isDefined!41 lt!22115))))

(declare-fun b!89165 () Bool)

(declare-fun res!44876 () Bool)

(assert (=> b!89165 (=> (not res!44876) (not e!49685))))

(declare-fun matchR!32 (Regex!398 List!1514) Bool)

(assert (=> b!89165 (= res!44876 (matchR!32 (regex!330 (rule!823 (_1!1002 (get!384 lt!22115)))) (list!552 (charsOf!65 (_1!1002 (get!384 lt!22115))))))))

(declare-fun b!89166 () Bool)

(declare-fun res!44875 () Bool)

(assert (=> b!89166 (=> (not res!44875) (not e!49685))))

(declare-fun apply!224 (TokenValueInjection!464 BalanceConc!928) TokenValue!320)

(assert (=> b!89166 (= res!44875 (= (value!12302 (_1!1002 (get!384 lt!22115))) (apply!224 (transformation!330 (rule!823 (_1!1002 (get!384 lt!22115)))) (seqFromList!168 (originalCharacters!381 (_1!1002 (get!384 lt!22115)))))))))

(declare-fun b!89167 () Bool)

(declare-fun e!49687 () Option!143)

(declare-fun lt!22117 () Option!143)

(declare-fun lt!22116 () Option!143)

(assert (=> b!89167 (= e!49687 (ite (and (is-None!142 lt!22117) (is-None!142 lt!22116)) None!142 (ite (is-None!142 lt!22116) lt!22117 (ite (is-None!142 lt!22117) lt!22116 (ite (>= (size!1306 (_1!1002 (v!12877 lt!22117))) (size!1306 (_1!1002 (v!12877 lt!22116)))) lt!22117 lt!22116)))))))

(declare-fun call!4043 () Option!143)

(assert (=> b!89167 (= lt!22117 call!4043)))

(assert (=> b!89167 (= lt!22116 (maxPrefix!64 thiss!19403 (t!20754 rules!2471) input!2238))))

(declare-fun bm!4038 () Bool)

(declare-fun maxPrefixOneRule!28 (LexerInterface!222 Rule!460 List!1514) Option!143)

(assert (=> bm!4038 (= call!4043 (maxPrefixOneRule!28 thiss!19403 (h!6908 rules!2471) input!2238))))

(declare-fun b!89168 () Bool)

(declare-fun res!44877 () Bool)

(assert (=> b!89168 (=> (not res!44877) (not e!49685))))

(assert (=> b!89168 (= res!44877 (= (list!552 (charsOf!65 (_1!1002 (get!384 lt!22115)))) (originalCharacters!381 (_1!1002 (get!384 lt!22115)))))))

(declare-fun b!89169 () Bool)

(declare-fun contains!232 (List!1517 Rule!460) Bool)

(assert (=> b!89169 (= e!49685 (contains!232 rules!2471 (rule!823 (_1!1002 (get!384 lt!22115)))))))

(declare-fun b!89170 () Bool)

(assert (=> b!89170 (= e!49687 call!4043)))

(declare-fun b!89171 () Bool)

(declare-fun res!44878 () Bool)

(assert (=> b!89171 (=> (not res!44878) (not e!49685))))

(declare-fun size!1308 (List!1514) Int)

(assert (=> b!89171 (= res!44878 (< (size!1308 (_2!1002 (get!384 lt!22115))) (size!1308 input!2238)))))

(declare-fun d!18989 () Bool)

(assert (=> d!18989 e!49686))

(declare-fun res!44874 () Bool)

(assert (=> d!18989 (=> res!44874 e!49686)))

(declare-fun isEmpty!575 (Option!143) Bool)

(assert (=> d!18989 (= res!44874 (isEmpty!575 lt!22115))))

(assert (=> d!18989 (= lt!22115 e!49687)))

(declare-fun c!22197 () Bool)

(assert (=> d!18989 (= c!22197 (and (is-Cons!1511 rules!2471) (is-Nil!1511 (t!20754 rules!2471))))))

(declare-fun lt!22114 () Unit!965)

(declare-fun lt!22118 () Unit!965)

(assert (=> d!18989 (= lt!22114 lt!22118)))

(declare-fun isPrefix!30 (List!1514 List!1514) Bool)

(assert (=> d!18989 (isPrefix!30 input!2238 input!2238)))

(declare-fun lemmaIsPrefixRefl!30 (List!1514 List!1514) Unit!965)

(assert (=> d!18989 (= lt!22118 (lemmaIsPrefixRefl!30 input!2238 input!2238))))

(declare-fun rulesValidInductive!55 (LexerInterface!222 List!1517) Bool)

(assert (=> d!18989 (rulesValidInductive!55 thiss!19403 rules!2471)))

(assert (=> d!18989 (= (maxPrefix!64 thiss!19403 rules!2471 input!2238) lt!22115)))

(assert (= (and d!18989 c!22197) b!89170))

(assert (= (and d!18989 (not c!22197)) b!89167))

(assert (= (or b!89170 b!89167) bm!4038))

(assert (= (and d!18989 (not res!44874)) b!89164))

(assert (= (and b!89164 res!44880) b!89168))

(assert (= (and b!89168 res!44877) b!89171))

(assert (= (and b!89171 res!44878) b!89163))

(assert (= (and b!89163 res!44879) b!89166))

(assert (= (and b!89166 res!44875) b!89165))

(assert (= (and b!89165 res!44876) b!89169))

(declare-fun m!69470 () Bool)

(assert (=> b!89166 m!69470))

(declare-fun m!69472 () Bool)

(assert (=> b!89166 m!69472))

(assert (=> b!89166 m!69472))

(declare-fun m!69474 () Bool)

(assert (=> b!89166 m!69474))

(assert (=> b!89169 m!69470))

(declare-fun m!69476 () Bool)

(assert (=> b!89169 m!69476))

(assert (=> b!89171 m!69470))

(declare-fun m!69478 () Bool)

(assert (=> b!89171 m!69478))

(declare-fun m!69480 () Bool)

(assert (=> b!89171 m!69480))

(declare-fun m!69482 () Bool)

(assert (=> d!18989 m!69482))

(declare-fun m!69484 () Bool)

(assert (=> d!18989 m!69484))

(declare-fun m!69486 () Bool)

(assert (=> d!18989 m!69486))

(declare-fun m!69488 () Bool)

(assert (=> d!18989 m!69488))

(assert (=> b!89165 m!69470))

(declare-fun m!69490 () Bool)

(assert (=> b!89165 m!69490))

(assert (=> b!89165 m!69490))

(declare-fun m!69492 () Bool)

(assert (=> b!89165 m!69492))

(assert (=> b!89165 m!69492))

(declare-fun m!69494 () Bool)

(assert (=> b!89165 m!69494))

(assert (=> b!89163 m!69470))

(assert (=> b!89163 m!69490))

(assert (=> b!89163 m!69490))

(assert (=> b!89163 m!69492))

(assert (=> b!89163 m!69492))

(declare-fun m!69496 () Bool)

(assert (=> b!89163 m!69496))

(declare-fun m!69498 () Bool)

(assert (=> b!89164 m!69498))

(assert (=> b!89168 m!69470))

(assert (=> b!89168 m!69490))

(assert (=> b!89168 m!69490))

(assert (=> b!89168 m!69492))

(declare-fun m!69500 () Bool)

(assert (=> b!89167 m!69500))

(declare-fun m!69502 () Bool)

(assert (=> bm!4038 m!69502))

(assert (=> b!89108 d!18989))

(declare-fun d!18995 () Bool)

(declare-fun list!555 (Conc!462) List!1514)

(assert (=> d!18995 (= (list!552 (_2!1001 lt!22054)) (list!555 (c!22188 (_2!1001 lt!22054))))))

(declare-fun bs!9012 () Bool)

(assert (= bs!9012 d!18995))

(declare-fun m!69504 () Bool)

(assert (=> bs!9012 m!69504))

(assert (=> b!89108 d!18995))

(declare-fun d!18997 () Bool)

(declare-fun list!556 (Conc!463) List!1516)

(assert (=> d!18997 (= (list!551 (_1!1001 lt!22053)) (list!556 (c!22190 (_1!1001 lt!22053))))))

(declare-fun bs!9013 () Bool)

(assert (= bs!9013 d!18997))

(declare-fun m!69506 () Bool)

(assert (=> bs!9013 m!69506))

(assert (=> b!89108 d!18997))

(declare-fun d!18999 () Bool)

(declare-fun e!49690 () Bool)

(assert (=> d!18999 e!49690))

(declare-fun res!44883 () Bool)

(assert (=> d!18999 (=> (not res!44883) (not e!49690))))

(declare-fun isBalanced!103 (Conc!463) Bool)

(declare-fun prepend!98 (Conc!463 Token!420) Conc!463)

(assert (=> d!18999 (= res!44883 (isBalanced!103 (prepend!98 (c!22190 lt!22056) (h!6907 lt!22049))))))

(declare-fun lt!22121 () BalanceConc!930)

(assert (=> d!18999 (= lt!22121 (BalanceConc!931 (prepend!98 (c!22190 lt!22056) (h!6907 lt!22049))))))

(assert (=> d!18999 (= (prepend!96 lt!22056 (h!6907 lt!22049)) lt!22121)))

(declare-fun b!89174 () Bool)

(assert (=> b!89174 (= e!49690 (= (list!551 lt!22121) (Cons!1510 (h!6907 lt!22049) (list!551 lt!22056))))))

(assert (= (and d!18999 res!44883) b!89174))

(declare-fun m!69508 () Bool)

(assert (=> d!18999 m!69508))

(assert (=> d!18999 m!69508))

(declare-fun m!69510 () Bool)

(assert (=> d!18999 m!69510))

(declare-fun m!69512 () Bool)

(assert (=> b!89174 m!69512))

(declare-fun m!69514 () Bool)

(assert (=> b!89174 m!69514))

(assert (=> b!89108 d!18999))

(declare-fun d!19001 () Bool)

(assert (=> d!19001 (= (list!551 (prepend!96 lt!22056 (h!6907 lt!22049))) (list!556 (c!22190 (prepend!96 lt!22056 (h!6907 lt!22049)))))))

(declare-fun bs!9014 () Bool)

(assert (= bs!9014 d!19001))

(declare-fun m!69516 () Bool)

(assert (=> bs!9014 m!69516))

(assert (=> b!89108 d!19001))

(declare-fun b!89186 () Bool)

(declare-fun lt!22124 () List!1514)

(declare-fun e!49696 () Bool)

(assert (=> b!89186 (= e!49696 (or (not (= (_2!1002 lt!22050) Nil!1508)) (= lt!22124 lt!22057)))))

(declare-fun b!89183 () Bool)

(declare-fun e!49695 () List!1514)

(assert (=> b!89183 (= e!49695 (_2!1002 lt!22050))))

(declare-fun b!89185 () Bool)

(declare-fun res!44889 () Bool)

(assert (=> b!89185 (=> (not res!44889) (not e!49696))))

(assert (=> b!89185 (= res!44889 (= (size!1308 lt!22124) (+ (size!1308 lt!22057) (size!1308 (_2!1002 lt!22050)))))))

(declare-fun d!19003 () Bool)

(assert (=> d!19003 e!49696))

(declare-fun res!44888 () Bool)

(assert (=> d!19003 (=> (not res!44888) (not e!49696))))

(declare-fun content!95 (List!1514) (Set C!1718))

(assert (=> d!19003 (= res!44888 (= (content!95 lt!22124) (set.union (content!95 lt!22057) (content!95 (_2!1002 lt!22050)))))))

(assert (=> d!19003 (= lt!22124 e!49695)))

(declare-fun c!22201 () Bool)

(assert (=> d!19003 (= c!22201 (is-Nil!1508 lt!22057))))

(assert (=> d!19003 (= (++!187 lt!22057 (_2!1002 lt!22050)) lt!22124)))

(declare-fun b!89184 () Bool)

(assert (=> b!89184 (= e!49695 (Cons!1508 (h!6905 lt!22057) (++!187 (t!20751 lt!22057) (_2!1002 lt!22050))))))

(assert (= (and d!19003 c!22201) b!89183))

(assert (= (and d!19003 (not c!22201)) b!89184))

(assert (= (and d!19003 res!44888) b!89185))

(assert (= (and b!89185 res!44889) b!89186))

(declare-fun m!69518 () Bool)

(assert (=> b!89185 m!69518))

(declare-fun m!69520 () Bool)

(assert (=> b!89185 m!69520))

(declare-fun m!69522 () Bool)

(assert (=> b!89185 m!69522))

(declare-fun m!69524 () Bool)

(assert (=> d!19003 m!69524))

(declare-fun m!69526 () Bool)

(assert (=> d!19003 m!69526))

(declare-fun m!69528 () Bool)

(assert (=> d!19003 m!69528))

(declare-fun m!69530 () Bool)

(assert (=> b!89184 m!69530))

(assert (=> b!89108 d!19003))

(declare-fun d!19005 () Bool)

(assert (=> d!19005 (= (list!551 (_1!1001 lt!22054)) (list!551 (prepend!96 (seqFromList!169 (t!20753 lt!22049)) (h!6907 lt!22049))))))

(declare-fun lt!22127 () Unit!965)

(declare-fun choose!1341 (Token!420 List!1516 BalanceConc!930) Unit!965)

(assert (=> d!19005 (= lt!22127 (choose!1341 (h!6907 lt!22049) (t!20753 lt!22049) (_1!1001 lt!22054)))))

(declare-fun $colon$colon!29 (List!1516 Token!420) List!1516)

(assert (=> d!19005 (= (list!551 (_1!1001 lt!22054)) (list!551 (seqFromList!169 ($colon$colon!29 (t!20753 lt!22049) (h!6907 lt!22049)))))))

(assert (=> d!19005 (= (seqFromListBHdTlConstructive!49 (h!6907 lt!22049) (t!20753 lt!22049) (_1!1001 lt!22054)) lt!22127)))

(declare-fun bs!9015 () Bool)

(assert (= bs!9015 d!19005))

(assert (=> bs!9015 m!69376))

(declare-fun m!69532 () Bool)

(assert (=> bs!9015 m!69532))

(declare-fun m!69534 () Bool)

(assert (=> bs!9015 m!69534))

(declare-fun m!69536 () Bool)

(assert (=> bs!9015 m!69536))

(declare-fun m!69538 () Bool)

(assert (=> bs!9015 m!69538))

(assert (=> bs!9015 m!69532))

(declare-fun m!69540 () Bool)

(assert (=> bs!9015 m!69540))

(assert (=> bs!9015 m!69376))

(declare-fun m!69542 () Bool)

(assert (=> bs!9015 m!69542))

(assert (=> bs!9015 m!69534))

(assert (=> bs!9015 m!69542))

(assert (=> bs!9015 m!69392))

(assert (=> b!89108 d!19005))

(declare-fun d!19007 () Bool)

(declare-fun lt!22133 () tuple2!1588)

(assert (=> d!19007 (= (tuple2!1593 (list!551 (_1!1001 lt!22133)) (list!552 (_2!1001 lt!22133))) (tuple2!1593 (tail!147 lt!22049) lt!22055))))

(assert (=> d!19007 (= lt!22133 (lex!130 thiss!19403 rules!2471 (seqFromList!168 (_2!1002 (get!384 (maxPrefix!64 thiss!19403 rules!2471 input!2238))))))))

(declare-fun lt!22132 () Unit!965)

(declare-fun choose!1342 (LexerInterface!222 List!1517 List!1514 List!1516 List!1514) Unit!965)

(assert (=> d!19007 (= lt!22132 (choose!1342 thiss!19403 rules!2471 input!2238 lt!22049 lt!22055))))

(assert (=> d!19007 (rulesInvariant!216 thiss!19403 rules!2471)))

(assert (=> d!19007 (= (lemmaRemovingFirstTokensCharactersPreservesLexSuffix!37 thiss!19403 rules!2471 input!2238 lt!22049 lt!22055) lt!22132)))

(declare-fun bs!9016 () Bool)

(assert (= bs!9016 d!19007))

(declare-fun m!69544 () Bool)

(assert (=> bs!9016 m!69544))

(declare-fun m!69546 () Bool)

(assert (=> bs!9016 m!69546))

(declare-fun m!69548 () Bool)

(assert (=> bs!9016 m!69548))

(assert (=> bs!9016 m!69356))

(assert (=> bs!9016 m!69342))

(assert (=> bs!9016 m!69546))

(declare-fun m!69550 () Bool)

(assert (=> bs!9016 m!69550))

(assert (=> bs!9016 m!69380))

(declare-fun m!69552 () Bool)

(assert (=> bs!9016 m!69552))

(assert (=> bs!9016 m!69356))

(assert (=> bs!9016 m!69358))

(assert (=> b!89108 d!19007))

(declare-fun d!19009 () Bool)

(assert (=> d!19009 (= (tail!147 lt!22049) (t!20753 lt!22049))))

(assert (=> b!89108 d!19009))

(declare-fun d!19011 () Bool)

(declare-fun lt!22153 () tuple2!1588)

(assert (=> d!19011 (= (++!187 (list!552 (print!61 thiss!19403 (_1!1001 lt!22153))) (list!552 (_2!1001 lt!22153))) (_2!1002 lt!22050))))

(assert (=> d!19011 (= lt!22153 (lex!130 thiss!19403 rules!2471 (seqFromList!168 (_2!1002 lt!22050))))))

(declare-fun lt!22152 () Unit!965)

(declare-fun choose!1343 (LexerInterface!222 List!1517 List!1514) Unit!965)

(assert (=> d!19011 (= lt!22152 (choose!1343 thiss!19403 rules!2471 (_2!1002 lt!22050)))))

(assert (=> d!19011 (not (isEmpty!572 rules!2471))))

(assert (=> d!19011 (= (theoremInvertFromString!41 thiss!19403 rules!2471 (_2!1002 lt!22050)) lt!22152)))

(declare-fun bs!9023 () Bool)

(assert (= bs!9023 d!19011))

(declare-fun m!69648 () Bool)

(assert (=> bs!9023 m!69648))

(declare-fun m!69650 () Bool)

(assert (=> bs!9023 m!69650))

(assert (=> bs!9023 m!69648))

(declare-fun m!69652 () Bool)

(assert (=> bs!9023 m!69652))

(declare-fun m!69654 () Bool)

(assert (=> bs!9023 m!69654))

(assert (=> bs!9023 m!69382))

(assert (=> bs!9023 m!69384))

(assert (=> bs!9023 m!69390))

(declare-fun m!69656 () Bool)

(assert (=> bs!9023 m!69656))

(assert (=> bs!9023 m!69382))

(assert (=> bs!9023 m!69656))

(assert (=> bs!9023 m!69650))

(assert (=> b!89108 d!19011))

(declare-fun d!19035 () Bool)

(assert (=> d!19035 (= (list!552 (_2!1001 lt!22053)) (list!555 (c!22188 (_2!1001 lt!22053))))))

(declare-fun bs!9024 () Bool)

(assert (= bs!9024 d!19035))

(declare-fun m!69658 () Bool)

(assert (=> bs!9024 m!69658))

(assert (=> b!89108 d!19035))

(declare-fun d!19037 () Bool)

(declare-fun fromListB!64 (List!1514) BalanceConc!928)

(assert (=> d!19037 (= (seqFromList!168 (_2!1002 lt!22050)) (fromListB!64 (_2!1002 lt!22050)))))

(declare-fun bs!9025 () Bool)

(assert (= bs!9025 d!19037))

(declare-fun m!69660 () Bool)

(assert (=> bs!9025 m!69660))

(assert (=> b!89108 d!19037))

(declare-fun d!19039 () Bool)

(declare-fun fromListB!65 (List!1516) BalanceConc!930)

(assert (=> d!19039 (= (seqFromList!169 (t!20753 lt!22049)) (fromListB!65 (t!20753 lt!22049)))))

(declare-fun bs!9026 () Bool)

(assert (= bs!9026 d!19039))

(declare-fun m!69662 () Bool)

(assert (=> bs!9026 m!69662))

(assert (=> b!89108 d!19039))

(declare-fun b!89229 () Bool)

(declare-fun e!49721 () Bool)

(declare-fun lt!22154 () List!1514)

(assert (=> b!89229 (= e!49721 (or (not (= lt!22052 Nil!1508)) (= lt!22154 lt!22060)))))

(declare-fun b!89226 () Bool)

(declare-fun e!49720 () List!1514)

(assert (=> b!89226 (= e!49720 lt!22052)))

(declare-fun b!89228 () Bool)

(declare-fun res!44914 () Bool)

(assert (=> b!89228 (=> (not res!44914) (not e!49721))))

(assert (=> b!89228 (= res!44914 (= (size!1308 lt!22154) (+ (size!1308 lt!22060) (size!1308 lt!22052))))))

(declare-fun d!19041 () Bool)

(assert (=> d!19041 e!49721))

(declare-fun res!44913 () Bool)

(assert (=> d!19041 (=> (not res!44913) (not e!49721))))

(assert (=> d!19041 (= res!44913 (= (content!95 lt!22154) (set.union (content!95 lt!22060) (content!95 lt!22052))))))

(assert (=> d!19041 (= lt!22154 e!49720)))

(declare-fun c!22211 () Bool)

(assert (=> d!19041 (= c!22211 (is-Nil!1508 lt!22060))))

(assert (=> d!19041 (= (++!187 lt!22060 lt!22052) lt!22154)))

(declare-fun b!89227 () Bool)

(assert (=> b!89227 (= e!49720 (Cons!1508 (h!6905 lt!22060) (++!187 (t!20751 lt!22060) lt!22052)))))

(assert (= (and d!19041 c!22211) b!89226))

(assert (= (and d!19041 (not c!22211)) b!89227))

(assert (= (and d!19041 res!44913) b!89228))

(assert (= (and b!89228 res!44914) b!89229))

(declare-fun m!69664 () Bool)

(assert (=> b!89228 m!69664))

(declare-fun m!69666 () Bool)

(assert (=> b!89228 m!69666))

(declare-fun m!69668 () Bool)

(assert (=> b!89228 m!69668))

(declare-fun m!69670 () Bool)

(assert (=> d!19041 m!69670))

(declare-fun m!69672 () Bool)

(assert (=> d!19041 m!69672))

(declare-fun m!69674 () Bool)

(assert (=> d!19041 m!69674))

(declare-fun m!69676 () Bool)

(assert (=> b!89227 m!69676))

(assert (=> b!89108 d!19041))

(declare-fun b!89258 () Bool)

(declare-fun e!49734 () Bool)

(declare-fun lt!22173 () tuple2!1588)

(declare-fun isEmpty!576 (BalanceConc!930) Bool)

(assert (=> b!89258 (= e!49734 (not (isEmpty!576 (_1!1001 lt!22173))))))

(declare-fun d!19043 () Bool)

(declare-fun e!49736 () Bool)

(assert (=> d!19043 e!49736))

(declare-fun res!44935 () Bool)

(assert (=> d!19043 (=> (not res!44935) (not e!49736))))

(declare-fun e!49735 () Bool)

(assert (=> d!19043 (= res!44935 e!49735)))

(declare-fun c!22216 () Bool)

(declare-fun size!1309 (BalanceConc!930) Int)

(assert (=> d!19043 (= c!22216 (> (size!1309 (_1!1001 lt!22173)) 0))))

(declare-fun lexTailRecV2!51 (LexerInterface!222 List!1517 BalanceConc!928 BalanceConc!928 BalanceConc!928 BalanceConc!930) tuple2!1588)

(assert (=> d!19043 (= lt!22173 (lexTailRecV2!51 thiss!19403 rules!2471 (seqFromList!168 (_2!1002 lt!22050)) (BalanceConc!929 Empty!462) (seqFromList!168 (_2!1002 lt!22050)) (BalanceConc!931 Empty!463)))))

(assert (=> d!19043 (= (lex!130 thiss!19403 rules!2471 (seqFromList!168 (_2!1002 lt!22050))) lt!22173)))

(declare-fun b!89259 () Bool)

(declare-fun res!44937 () Bool)

(assert (=> b!89259 (=> (not res!44937) (not e!49736))))

(declare-fun lexList!54 (LexerInterface!222 List!1517 List!1514) tuple2!1592)

(assert (=> b!89259 (= res!44937 (= (list!551 (_1!1001 lt!22173)) (_1!1003 (lexList!54 thiss!19403 rules!2471 (list!552 (seqFromList!168 (_2!1002 lt!22050)))))))))

(declare-fun b!89260 () Bool)

(assert (=> b!89260 (= e!49735 e!49734)))

(declare-fun res!44936 () Bool)

(declare-fun size!1310 (BalanceConc!928) Int)

(assert (=> b!89260 (= res!44936 (< (size!1310 (_2!1001 lt!22173)) (size!1310 (seqFromList!168 (_2!1002 lt!22050)))))))

(assert (=> b!89260 (=> (not res!44936) (not e!49734))))

(declare-fun b!89261 () Bool)

(assert (=> b!89261 (= e!49736 (= (list!552 (_2!1001 lt!22173)) (_2!1003 (lexList!54 thiss!19403 rules!2471 (list!552 (seqFromList!168 (_2!1002 lt!22050)))))))))

(declare-fun b!89262 () Bool)

(assert (=> b!89262 (= e!49735 (= (_2!1001 lt!22173) (seqFromList!168 (_2!1002 lt!22050))))))

(assert (= (and d!19043 c!22216) b!89260))

(assert (= (and d!19043 (not c!22216)) b!89262))

(assert (= (and b!89260 res!44936) b!89258))

(assert (= (and d!19043 res!44935) b!89259))

(assert (= (and b!89259 res!44937) b!89261))

(declare-fun m!69688 () Bool)

(assert (=> b!89258 m!69688))

(declare-fun m!69690 () Bool)

(assert (=> d!19043 m!69690))

(assert (=> d!19043 m!69382))

(assert (=> d!19043 m!69382))

(declare-fun m!69692 () Bool)

(assert (=> d!19043 m!69692))

(declare-fun m!69694 () Bool)

(assert (=> b!89259 m!69694))

(assert (=> b!89259 m!69382))

(declare-fun m!69696 () Bool)

(assert (=> b!89259 m!69696))

(assert (=> b!89259 m!69696))

(declare-fun m!69698 () Bool)

(assert (=> b!89259 m!69698))

(declare-fun m!69700 () Bool)

(assert (=> b!89261 m!69700))

(assert (=> b!89261 m!69382))

(assert (=> b!89261 m!69696))

(assert (=> b!89261 m!69696))

(assert (=> b!89261 m!69698))

(declare-fun m!69702 () Bool)

(assert (=> b!89260 m!69702))

(assert (=> b!89260 m!69382))

(declare-fun m!69704 () Bool)

(assert (=> b!89260 m!69704))

(assert (=> b!89108 d!19043))

(declare-fun d!19051 () Bool)

(assert (=> d!19051 (= (list!552 (charsOf!65 (_1!1002 lt!22050))) (list!555 (c!22188 (charsOf!65 (_1!1002 lt!22050)))))))

(declare-fun bs!9028 () Bool)

(assert (= bs!9028 d!19051))

(declare-fun m!69706 () Bool)

(assert (=> bs!9028 m!69706))

(assert (=> b!89108 d!19051))

(declare-fun d!19053 () Bool)

(assert (=> d!19053 (= (get!384 (maxPrefix!64 thiss!19403 rules!2471 input!2238)) (v!12877 (maxPrefix!64 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!89108 d!19053))

(declare-fun d!19055 () Bool)

(declare-fun lt!22181 () BalanceConc!928)

(assert (=> d!19055 (= (list!552 lt!22181) (originalCharacters!381 (_1!1002 lt!22050)))))

(declare-fun dynLambda!391 (Int TokenValue!320) BalanceConc!928)

(assert (=> d!19055 (= lt!22181 (dynLambda!391 (toChars!720 (transformation!330 (rule!823 (_1!1002 lt!22050)))) (value!12302 (_1!1002 lt!22050))))))

(assert (=> d!19055 (= (charsOf!65 (_1!1002 lt!22050)) lt!22181)))

(declare-fun b_lambda!1029 () Bool)

(assert (=> (not b_lambda!1029) (not d!19055)))

(declare-fun tb!2751 () Bool)

(declare-fun t!20760 () Bool)

(assert (=> (and b!89112 (= (toChars!720 (transformation!330 (h!6908 rules!2471))) (toChars!720 (transformation!330 (rule!823 (_1!1002 lt!22050))))) t!20760) tb!2751))

(declare-fun b!89276 () Bool)

(declare-fun e!49742 () Bool)

(declare-fun tp!53323 () Bool)

(declare-fun inv!1870 (Conc!462) Bool)

(assert (=> b!89276 (= e!49742 (and (inv!1870 (c!22188 (dynLambda!391 (toChars!720 (transformation!330 (rule!823 (_1!1002 lt!22050)))) (value!12302 (_1!1002 lt!22050))))) tp!53323))))

(declare-fun result!3952 () Bool)

(declare-fun inv!1871 (BalanceConc!928) Bool)

(assert (=> tb!2751 (= result!3952 (and (inv!1871 (dynLambda!391 (toChars!720 (transformation!330 (rule!823 (_1!1002 lt!22050)))) (value!12302 (_1!1002 lt!22050)))) e!49742))))

(assert (= tb!2751 b!89276))

(declare-fun m!69744 () Bool)

(assert (=> b!89276 m!69744))

(declare-fun m!69746 () Bool)

(assert (=> tb!2751 m!69746))

(assert (=> d!19055 t!20760))

(declare-fun b_and!4047 () Bool)

(assert (= b_and!4041 (and (=> t!20760 result!3952) b_and!4047)))

(declare-fun m!69748 () Bool)

(assert (=> d!19055 m!69748))

(declare-fun m!69750 () Bool)

(assert (=> d!19055 m!69750))

(assert (=> b!89108 d!19055))

(declare-fun d!19061 () Bool)

(declare-fun lt!22184 () BalanceConc!928)

(declare-fun printList!26 (LexerInterface!222 List!1516) List!1514)

(assert (=> d!19061 (= (list!552 lt!22184) (printList!26 thiss!19403 (list!551 (_1!1001 lt!22053))))))

(declare-fun printTailRec!26 (LexerInterface!222 BalanceConc!930 Int BalanceConc!928) BalanceConc!928)

(assert (=> d!19061 (= lt!22184 (printTailRec!26 thiss!19403 (_1!1001 lt!22053) 0 (BalanceConc!929 Empty!462)))))

(assert (=> d!19061 (= (print!61 thiss!19403 (_1!1001 lt!22053)) lt!22184)))

(declare-fun bs!9030 () Bool)

(assert (= bs!9030 d!19061))

(declare-fun m!69752 () Bool)

(assert (=> bs!9030 m!69752))

(assert (=> bs!9030 m!69366))

(assert (=> bs!9030 m!69366))

(declare-fun m!69754 () Bool)

(assert (=> bs!9030 m!69754))

(declare-fun m!69756 () Bool)

(assert (=> bs!9030 m!69756))

(assert (=> b!89108 d!19061))

(declare-fun d!19063 () Bool)

(assert (=> d!19063 (= (list!552 (print!61 thiss!19403 (_1!1001 lt!22053))) (list!555 (c!22188 (print!61 thiss!19403 (_1!1001 lt!22053)))))))

(declare-fun bs!9031 () Bool)

(assert (= bs!9031 d!19063))

(declare-fun m!69758 () Bool)

(assert (=> bs!9031 m!69758))

(assert (=> b!89108 d!19063))

(declare-fun d!19065 () Bool)

(assert (=> d!19065 (= (isEmpty!572 rules!2471) (is-Nil!1511 rules!2471))))

(assert (=> b!89114 d!19065))

(declare-fun d!19067 () Bool)

(assert (=> d!19067 (= (inv!1865 (tag!508 (h!6908 rules!2471))) (= (mod (str.len (value!12301 (tag!508 (h!6908 rules!2471)))) 2) 0))))

(assert (=> b!89110 d!19067))

(declare-fun d!19069 () Bool)

(declare-fun res!44947 () Bool)

(declare-fun e!49745 () Bool)

(assert (=> d!19069 (=> (not res!44947) (not e!49745))))

(declare-fun semiInverseModEq!66 (Int Int) Bool)

(assert (=> d!19069 (= res!44947 (semiInverseModEq!66 (toChars!720 (transformation!330 (h!6908 rules!2471))) (toValue!861 (transformation!330 (h!6908 rules!2471)))))))

(assert (=> d!19069 (= (inv!1868 (transformation!330 (h!6908 rules!2471))) e!49745)))

(declare-fun b!89279 () Bool)

(declare-fun equivClasses!62 (Int Int) Bool)

(assert (=> b!89279 (= e!49745 (equivClasses!62 (toChars!720 (transformation!330 (h!6908 rules!2471))) (toValue!861 (transformation!330 (h!6908 rules!2471)))))))

(assert (= (and d!19069 res!44947) b!89279))

(declare-fun m!69760 () Bool)

(assert (=> d!19069 m!69760))

(declare-fun m!69762 () Bool)

(assert (=> b!89279 m!69762))

(assert (=> b!89110 d!19069))

(declare-fun d!19071 () Bool)

(assert (=> d!19071 (= (list!551 (_1!1001 lt!22054)) (list!556 (c!22190 (_1!1001 lt!22054))))))

(declare-fun bs!9032 () Bool)

(assert (= bs!9032 d!19071))

(declare-fun m!69764 () Bool)

(assert (=> bs!9032 m!69764))

(assert (=> b!89105 d!19071))

(declare-fun lt!22185 () List!1514)

(declare-fun e!49747 () Bool)

(declare-fun b!89283 () Bool)

(assert (=> b!89283 (= e!49747 (or (not (= (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055) Nil!1508)) (= lt!22185 lt!22057)))))

(declare-fun b!89280 () Bool)

(declare-fun e!49746 () List!1514)

(assert (=> b!89280 (= e!49746 (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055))))

(declare-fun b!89282 () Bool)

(declare-fun res!44949 () Bool)

(assert (=> b!89282 (=> (not res!44949) (not e!49747))))

(assert (=> b!89282 (= res!44949 (= (size!1308 lt!22185) (+ (size!1308 lt!22057) (size!1308 (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055)))))))

(declare-fun d!19073 () Bool)

(assert (=> d!19073 e!49747))

(declare-fun res!44948 () Bool)

(assert (=> d!19073 (=> (not res!44948) (not e!49747))))

(assert (=> d!19073 (= res!44948 (= (content!95 lt!22185) (set.union (content!95 lt!22057) (content!95 (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055)))))))

(assert (=> d!19073 (= lt!22185 e!49746)))

(declare-fun c!22218 () Bool)

(assert (=> d!19073 (= c!22218 (is-Nil!1508 lt!22057))))

(assert (=> d!19073 (= (++!187 lt!22057 (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055)) lt!22185)))

(declare-fun b!89281 () Bool)

(assert (=> b!89281 (= e!49746 (Cons!1508 (h!6905 lt!22057) (++!187 (t!20751 lt!22057) (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055))))))

(assert (= (and d!19073 c!22218) b!89280))

(assert (= (and d!19073 (not c!22218)) b!89281))

(assert (= (and d!19073 res!44948) b!89282))

(assert (= (and b!89282 res!44949) b!89283))

(declare-fun m!69766 () Bool)

(assert (=> b!89282 m!69766))

(assert (=> b!89282 m!69520))

(assert (=> b!89282 m!69398))

(declare-fun m!69768 () Bool)

(assert (=> b!89282 m!69768))

(declare-fun m!69770 () Bool)

(assert (=> d!19073 m!69770))

(assert (=> d!19073 m!69526))

(assert (=> d!19073 m!69398))

(declare-fun m!69772 () Bool)

(assert (=> d!19073 m!69772))

(assert (=> b!89281 m!69398))

(declare-fun m!69774 () Bool)

(assert (=> b!89281 m!69774))

(assert (=> b!89111 d!19073))

(declare-fun b!89287 () Bool)

(declare-fun e!49749 () Bool)

(declare-fun lt!22186 () List!1514)

(assert (=> b!89287 (= e!49749 (or (not (= lt!22055 Nil!1508)) (= lt!22186 (list!552 (print!61 thiss!19403 lt!22056)))))))

(declare-fun b!89284 () Bool)

(declare-fun e!49748 () List!1514)

(assert (=> b!89284 (= e!49748 lt!22055)))

(declare-fun b!89286 () Bool)

(declare-fun res!44951 () Bool)

(assert (=> b!89286 (=> (not res!44951) (not e!49749))))

(assert (=> b!89286 (= res!44951 (= (size!1308 lt!22186) (+ (size!1308 (list!552 (print!61 thiss!19403 lt!22056))) (size!1308 lt!22055))))))

(declare-fun d!19075 () Bool)

(assert (=> d!19075 e!49749))

(declare-fun res!44950 () Bool)

(assert (=> d!19075 (=> (not res!44950) (not e!49749))))

(assert (=> d!19075 (= res!44950 (= (content!95 lt!22186) (set.union (content!95 (list!552 (print!61 thiss!19403 lt!22056))) (content!95 lt!22055))))))

(assert (=> d!19075 (= lt!22186 e!49748)))

(declare-fun c!22219 () Bool)

(assert (=> d!19075 (= c!22219 (is-Nil!1508 (list!552 (print!61 thiss!19403 lt!22056))))))

(assert (=> d!19075 (= (++!187 (list!552 (print!61 thiss!19403 lt!22056)) lt!22055) lt!22186)))

(declare-fun b!89285 () Bool)

(assert (=> b!89285 (= e!49748 (Cons!1508 (h!6905 (list!552 (print!61 thiss!19403 lt!22056))) (++!187 (t!20751 (list!552 (print!61 thiss!19403 lt!22056))) lt!22055)))))

(assert (= (and d!19075 c!22219) b!89284))

(assert (= (and d!19075 (not c!22219)) b!89285))

(assert (= (and d!19075 res!44950) b!89286))

(assert (= (and b!89286 res!44951) b!89287))

(declare-fun m!69776 () Bool)

(assert (=> b!89286 m!69776))

(assert (=> b!89286 m!69396))

(declare-fun m!69778 () Bool)

(assert (=> b!89286 m!69778))

(declare-fun m!69780 () Bool)

(assert (=> b!89286 m!69780))

(declare-fun m!69782 () Bool)

(assert (=> d!19075 m!69782))

(assert (=> d!19075 m!69396))

(declare-fun m!69784 () Bool)

(assert (=> d!19075 m!69784))

(declare-fun m!69786 () Bool)

(assert (=> d!19075 m!69786))

(declare-fun m!69788 () Bool)

(assert (=> b!89285 m!69788))

(assert (=> b!89111 d!19075))

(declare-fun d!19077 () Bool)

(assert (=> d!19077 (= (list!552 (print!61 thiss!19403 lt!22056)) (list!555 (c!22188 (print!61 thiss!19403 lt!22056))))))

(declare-fun bs!9033 () Bool)

(assert (= bs!9033 d!19077))

(declare-fun m!69790 () Bool)

(assert (=> bs!9033 m!69790))

(assert (=> b!89111 d!19077))

(declare-fun d!19079 () Bool)

(declare-fun lt!22187 () BalanceConc!928)

(assert (=> d!19079 (= (list!552 lt!22187) (printList!26 thiss!19403 (list!551 lt!22056)))))

(assert (=> d!19079 (= lt!22187 (printTailRec!26 thiss!19403 lt!22056 0 (BalanceConc!929 Empty!462)))))

(assert (=> d!19079 (= (print!61 thiss!19403 lt!22056) lt!22187)))

(declare-fun bs!9034 () Bool)

(assert (= bs!9034 d!19079))

(declare-fun m!69792 () Bool)

(assert (=> bs!9034 m!69792))

(assert (=> bs!9034 m!69514))

(assert (=> bs!9034 m!69514))

(declare-fun m!69794 () Bool)

(assert (=> bs!9034 m!69794))

(declare-fun m!69796 () Bool)

(assert (=> bs!9034 m!69796))

(assert (=> b!89111 d!19079))

(declare-fun d!19081 () Bool)

(declare-fun lt!22190 () Bool)

(declare-fun isEmpty!580 (List!1514) Bool)

(assert (=> d!19081 (= lt!22190 (isEmpty!580 (list!552 (_2!1001 lt!22054))))))

(declare-fun isEmpty!581 (Conc!462) Bool)

(assert (=> d!19081 (= lt!22190 (isEmpty!581 (c!22188 (_2!1001 lt!22054))))))

(assert (=> d!19081 (= (isEmpty!571 (_2!1001 lt!22054)) lt!22190)))

(declare-fun bs!9035 () Bool)

(assert (= bs!9035 d!19081))

(assert (=> bs!9035 m!69368))

(assert (=> bs!9035 m!69368))

(declare-fun m!69798 () Bool)

(assert (=> bs!9035 m!69798))

(declare-fun m!69800 () Bool)

(assert (=> bs!9035 m!69800))

(assert (=> b!89106 d!19081))

(declare-fun b!89288 () Bool)

(declare-fun e!49750 () Bool)

(declare-fun lt!22191 () tuple2!1588)

(assert (=> b!89288 (= e!49750 (not (isEmpty!576 (_1!1001 lt!22191))))))

(declare-fun d!19083 () Bool)

(declare-fun e!49752 () Bool)

(assert (=> d!19083 e!49752))

(declare-fun res!44952 () Bool)

(assert (=> d!19083 (=> (not res!44952) (not e!49752))))

(declare-fun e!49751 () Bool)

(assert (=> d!19083 (= res!44952 e!49751)))

(declare-fun c!22220 () Bool)

(assert (=> d!19083 (= c!22220 (> (size!1309 (_1!1001 lt!22191)) 0))))

(assert (=> d!19083 (= lt!22191 (lexTailRecV2!51 thiss!19403 rules!2471 (seqFromList!168 input!2238) (BalanceConc!929 Empty!462) (seqFromList!168 input!2238) (BalanceConc!931 Empty!463)))))

(assert (=> d!19083 (= (lex!130 thiss!19403 rules!2471 (seqFromList!168 input!2238)) lt!22191)))

(declare-fun b!89289 () Bool)

(declare-fun res!44954 () Bool)

(assert (=> b!89289 (=> (not res!44954) (not e!49752))))

(assert (=> b!89289 (= res!44954 (= (list!551 (_1!1001 lt!22191)) (_1!1003 (lexList!54 thiss!19403 rules!2471 (list!552 (seqFromList!168 input!2238))))))))

(declare-fun b!89290 () Bool)

(assert (=> b!89290 (= e!49751 e!49750)))

(declare-fun res!44953 () Bool)

(assert (=> b!89290 (= res!44953 (< (size!1310 (_2!1001 lt!22191)) (size!1310 (seqFromList!168 input!2238))))))

(assert (=> b!89290 (=> (not res!44953) (not e!49750))))

(declare-fun b!89291 () Bool)

(assert (=> b!89291 (= e!49752 (= (list!552 (_2!1001 lt!22191)) (_2!1003 (lexList!54 thiss!19403 rules!2471 (list!552 (seqFromList!168 input!2238))))))))

(declare-fun b!89292 () Bool)

(assert (=> b!89292 (= e!49751 (= (_2!1001 lt!22191) (seqFromList!168 input!2238)))))

(assert (= (and d!19083 c!22220) b!89290))

(assert (= (and d!19083 (not c!22220)) b!89292))

(assert (= (and b!89290 res!44953) b!89288))

(assert (= (and d!19083 res!44952) b!89289))

(assert (= (and b!89289 res!44954) b!89291))

(declare-fun m!69802 () Bool)

(assert (=> b!89288 m!69802))

(declare-fun m!69804 () Bool)

(assert (=> d!19083 m!69804))

(assert (=> d!19083 m!69346))

(assert (=> d!19083 m!69346))

(declare-fun m!69806 () Bool)

(assert (=> d!19083 m!69806))

(declare-fun m!69808 () Bool)

(assert (=> b!89289 m!69808))

(assert (=> b!89289 m!69346))

(declare-fun m!69810 () Bool)

(assert (=> b!89289 m!69810))

(assert (=> b!89289 m!69810))

(declare-fun m!69812 () Bool)

(assert (=> b!89289 m!69812))

(declare-fun m!69814 () Bool)

(assert (=> b!89291 m!69814))

(assert (=> b!89291 m!69346))

(assert (=> b!89291 m!69810))

(assert (=> b!89291 m!69810))

(assert (=> b!89291 m!69812))

(declare-fun m!69816 () Bool)

(assert (=> b!89290 m!69816))

(assert (=> b!89290 m!69346))

(declare-fun m!69818 () Bool)

(assert (=> b!89290 m!69818))

(assert (=> b!89106 d!19083))

(declare-fun d!19085 () Bool)

(assert (=> d!19085 (= (seqFromList!168 input!2238) (fromListB!64 input!2238))))

(declare-fun bs!9036 () Bool)

(assert (= bs!9036 d!19085))

(declare-fun m!69820 () Bool)

(assert (=> bs!9036 m!69820))

(assert (=> b!89106 d!19085))

(declare-fun d!19087 () Bool)

(declare-fun res!44957 () Bool)

(declare-fun e!49755 () Bool)

(assert (=> d!19087 (=> (not res!44957) (not e!49755))))

(declare-fun rulesValid!74 (LexerInterface!222 List!1517) Bool)

(assert (=> d!19087 (= res!44957 (rulesValid!74 thiss!19403 rules!2471))))

(assert (=> d!19087 (= (rulesInvariant!216 thiss!19403 rules!2471) e!49755)))

(declare-fun b!89295 () Bool)

(declare-datatypes ((List!1522 0))(
  ( (Nil!1516) (Cons!1516 (h!6913 String!1994) (t!20767 List!1522)) )
))
(declare-fun noDuplicateTag!74 (LexerInterface!222 List!1517 List!1522) Bool)

(assert (=> b!89295 (= e!49755 (noDuplicateTag!74 thiss!19403 rules!2471 Nil!1516))))

(assert (= (and d!19087 res!44957) b!89295))

(declare-fun m!69822 () Bool)

(assert (=> d!19087 m!69822))

(declare-fun m!69824 () Bool)

(assert (=> b!89295 m!69824))

(assert (=> b!89107 d!19087))

(declare-fun b!89300 () Bool)

(declare-fun e!49758 () Bool)

(declare-fun tp!53326 () Bool)

(assert (=> b!89300 (= e!49758 (and tp_is_empty!719 tp!53326))))

(assert (=> b!89109 (= tp!53304 e!49758)))

(assert (= (and b!89109 (is-Cons!1508 (t!20751 input!2238))) b!89300))

(declare-fun b!89312 () Bool)

(declare-fun e!49761 () Bool)

(declare-fun tp!53341 () Bool)

(declare-fun tp!53337 () Bool)

(assert (=> b!89312 (= e!49761 (and tp!53341 tp!53337))))

(declare-fun b!89313 () Bool)

(declare-fun tp!53339 () Bool)

(assert (=> b!89313 (= e!49761 tp!53339)))

(declare-fun b!89314 () Bool)

(declare-fun tp!53338 () Bool)

(declare-fun tp!53340 () Bool)

(assert (=> b!89314 (= e!49761 (and tp!53338 tp!53340))))

(assert (=> b!89110 (= tp!53303 e!49761)))

(declare-fun b!89311 () Bool)

(assert (=> b!89311 (= e!49761 tp_is_empty!719)))

(assert (= (and b!89110 (is-ElementMatch!398 (regex!330 (h!6908 rules!2471)))) b!89311))

(assert (= (and b!89110 (is-Concat!719 (regex!330 (h!6908 rules!2471)))) b!89312))

(assert (= (and b!89110 (is-Star!398 (regex!330 (h!6908 rules!2471)))) b!89313))

(assert (= (and b!89110 (is-Union!398 (regex!330 (h!6908 rules!2471)))) b!89314))

(declare-fun b!89325 () Bool)

(declare-fun b_free!2749 () Bool)

(declare-fun b_next!2749 () Bool)

(assert (=> b!89325 (= b_free!2749 (not b_next!2749))))

(declare-fun tp!53353 () Bool)

(declare-fun b_and!4049 () Bool)

(assert (=> b!89325 (= tp!53353 b_and!4049)))

(declare-fun b_free!2751 () Bool)

(declare-fun b_next!2751 () Bool)

(assert (=> b!89325 (= b_free!2751 (not b_next!2751))))

(declare-fun tb!2753 () Bool)

(declare-fun t!20762 () Bool)

(assert (=> (and b!89325 (= (toChars!720 (transformation!330 (h!6908 (t!20754 rules!2471)))) (toChars!720 (transformation!330 (rule!823 (_1!1002 lt!22050))))) t!20762) tb!2753))

(declare-fun result!3962 () Bool)

(assert (= result!3962 result!3952))

(assert (=> d!19055 t!20762))

(declare-fun tp!53350 () Bool)

(declare-fun b_and!4051 () Bool)

(assert (=> b!89325 (= tp!53350 (and (=> t!20762 result!3962) b_and!4051))))

(declare-fun e!49772 () Bool)

(assert (=> b!89325 (= e!49772 (and tp!53353 tp!53350))))

(declare-fun tp!53351 () Bool)

(declare-fun e!49770 () Bool)

(declare-fun b!89324 () Bool)

(assert (=> b!89324 (= e!49770 (and tp!53351 (inv!1865 (tag!508 (h!6908 (t!20754 rules!2471)))) (inv!1868 (transformation!330 (h!6908 (t!20754 rules!2471)))) e!49772))))

(declare-fun b!89323 () Bool)

(declare-fun e!49773 () Bool)

(declare-fun tp!53352 () Bool)

(assert (=> b!89323 (= e!49773 (and e!49770 tp!53352))))

(assert (=> b!89113 (= tp!53305 e!49773)))

(assert (= b!89324 b!89325))

(assert (= b!89323 b!89324))

(assert (= (and b!89113 (is-Cons!1511 (t!20754 rules!2471))) b!89323))

(declare-fun m!69826 () Bool)

(assert (=> b!89324 m!69826))

(declare-fun m!69828 () Bool)

(assert (=> b!89324 m!69828))

(push 1)

(assert (not b!89174))

(assert (not b!89282))

(assert (not b!89166))

(assert (not b!89164))

(assert (not b!89169))

(assert (not d!19073))

(assert (not d!19069))

(assert (not d!19041))

(assert (not b!89313))

(assert (not b_lambda!1029))

(assert (not b!89167))

(assert (not d!19079))

(assert (not b!89300))

(assert (not b!89163))

(assert (not d!19085))

(assert (not b!89285))

(assert (not d!19043))

(assert (not b_next!2751))

(assert (not bm!4038))

(assert (not d!19037))

(assert (not d!19087))

(assert (not b!89324))

(assert (not b!89288))

(assert (not d!19081))

(assert (not b!89289))

(assert (not d!19007))

(assert (not b!89171))

(assert (not b!89261))

(assert (not b!89312))

(assert (not d!19001))

(assert (not d!18989))

(assert (not d!18995))

(assert (not d!18997))

(assert (not b!89314))

(assert (not b!89185))

(assert (not d!19003))

(assert (not b!89227))

(assert b_and!4047)

(assert (not b!89168))

(assert (not b!89290))

(assert (not b!89184))

(assert (not d!19071))

(assert (not d!19075))

(assert (not d!18999))

(assert (not b!89286))

(assert (not d!19051))

(assert (not d!19061))

(assert (not b!89260))

(assert (not d!19011))

(assert (not b!89279))

(assert (not d!19055))

(assert (not b!89258))

(assert b_and!4051)

(assert (not b!89295))

(assert (not b!89259))

(assert (not b_next!2741))

(assert (not b!89291))

(assert (not d!19039))

(assert tp_is_empty!719)

(assert (not d!19077))

(assert (not b!89228))

(assert (not d!19083))

(assert b_and!4039)

(assert (not b!89323))

(assert (not b!89165))

(assert b_and!4049)

(assert (not d!19035))

(assert (not b_next!2743))

(assert (not d!19005))

(assert (not d!19063))

(assert (not b_next!2749))

(assert (not b!89276))

(assert (not b!89281))

(assert (not tb!2751))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!2751))

(assert b_and!4047)

(assert b_and!4051)

(assert (not b_next!2741))

(assert b_and!4039)

(assert b_and!4049)

(assert (not b_next!2743))

(assert (not b_next!2749))

(check-sat)

(pop 1)

