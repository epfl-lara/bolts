; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38278 () Bool)

(assert start!38278)

(declare-fun b!384118 () Bool)

(declare-fun b_free!11833 () Bool)

(declare-fun b_next!11833 () Bool)

(assert (=> b!384118 (= b_free!11833 (not b_next!11833))))

(declare-fun tp!118299 () Bool)

(declare-fun b_and!38605 () Bool)

(assert (=> b!384118 (= tp!118299 b_and!38605)))

(declare-fun b_free!11835 () Bool)

(declare-fun b_next!11835 () Bool)

(assert (=> b!384118 (= b_free!11835 (not b_next!11835))))

(declare-fun tp!118294 () Bool)

(declare-fun b_and!38607 () Bool)

(assert (=> b!384118 (= tp!118294 b_and!38607)))

(declare-fun b!384114 () Bool)

(declare-fun b_free!11837 () Bool)

(declare-fun b_next!11837 () Bool)

(assert (=> b!384114 (= b_free!11837 (not b_next!11837))))

(declare-fun tp!118297 () Bool)

(declare-fun b_and!38609 () Bool)

(assert (=> b!384114 (= tp!118297 b_and!38609)))

(declare-fun b_free!11839 () Bool)

(declare-fun b_next!11839 () Bool)

(assert (=> b!384114 (= b_free!11839 (not b_next!11839))))

(declare-fun tp!118302 () Bool)

(declare-fun b_and!38611 () Bool)

(assert (=> b!384114 (= tp!118302 b_and!38611)))

(declare-fun b!384113 () Bool)

(declare-fun b_free!11841 () Bool)

(declare-fun b_next!11841 () Bool)

(assert (=> b!384113 (= b_free!11841 (not b_next!11841))))

(declare-fun tp!118301 () Bool)

(declare-fun b_and!38613 () Bool)

(assert (=> b!384113 (= tp!118301 b_and!38613)))

(declare-fun b_free!11843 () Bool)

(declare-fun b_next!11843 () Bool)

(assert (=> b!384113 (= b_free!11843 (not b_next!11843))))

(declare-fun tp!118298 () Bool)

(declare-fun b_and!38615 () Bool)

(assert (=> b!384113 (= tp!118298 b_and!38615)))

(declare-fun bs!46724 () Bool)

(declare-fun b!384119 () Bool)

(declare-fun b!384087 () Bool)

(assert (= bs!46724 (and b!384119 b!384087)))

(declare-fun lambda!11934 () Int)

(declare-fun lambda!11933 () Int)

(assert (=> bs!46724 (not (= lambda!11934 lambda!11933))))

(declare-fun b!384136 () Bool)

(declare-fun e!236293 () Bool)

(assert (=> b!384136 (= e!236293 true)))

(declare-fun b!384135 () Bool)

(declare-fun e!236292 () Bool)

(assert (=> b!384135 (= e!236292 e!236293)))

(declare-fun b!384134 () Bool)

(declare-fun e!236291 () Bool)

(assert (=> b!384134 (= e!236291 e!236292)))

(assert (=> b!384119 e!236291))

(assert (= b!384135 b!384136))

(assert (= b!384134 b!384135))

(declare-datatypes ((List!4238 0))(
  ( (Nil!4228) (Cons!4228 (h!9625 (_ BitVec 16)) (t!58734 List!4238)) )
))
(declare-datatypes ((TokenValue!839 0))(
  ( (FloatLiteralValue!1678 (text!6318 List!4238)) (TokenValueExt!838 (__x!3165 Int)) (Broken!4195 (value!27574 List!4238)) (Object!848) (End!839) (Def!839) (Underscore!839) (Match!839) (Else!839) (Error!839) (Case!839) (If!839) (Extends!839) (Abstract!839) (Class!839) (Val!839) (DelimiterValue!1678 (del!899 List!4238)) (KeywordValue!845 (value!27575 List!4238)) (CommentValue!1678 (value!27576 List!4238)) (WhitespaceValue!1678 (value!27577 List!4238)) (IndentationValue!839 (value!27578 List!4238)) (String!5274) (Int32!839) (Broken!4196 (value!27579 List!4238)) (Boolean!840) (Unit!6861) (OperatorValue!842 (op!899 List!4238)) (IdentifierValue!1678 (value!27580 List!4238)) (IdentifierValue!1679 (value!27581 List!4238)) (WhitespaceValue!1679 (value!27582 List!4238)) (True!1678) (False!1678) (Broken!4197 (value!27583 List!4238)) (Broken!4198 (value!27584 List!4238)) (True!1679) (RightBrace!839) (RightBracket!839) (Colon!839) (Null!839) (Comma!839) (LeftBracket!839) (False!1679) (LeftBrace!839) (ImaginaryLiteralValue!839 (text!6319 List!4238)) (StringLiteralValue!2517 (value!27585 List!4238)) (EOFValue!839 (value!27586 List!4238)) (IdentValue!839 (value!27587 List!4238)) (DelimiterValue!1679 (value!27588 List!4238)) (DedentValue!839 (value!27589 List!4238)) (NewLineValue!839 (value!27590 List!4238)) (IntegerValue!2517 (value!27591 (_ BitVec 32)) (text!6320 List!4238)) (IntegerValue!2518 (value!27592 Int) (text!6321 List!4238)) (Times!839) (Or!839) (Equal!839) (Minus!839) (Broken!4199 (value!27593 List!4238)) (And!839) (Div!839) (LessEqual!839) (Mod!839) (Concat!1880) (Not!839) (Plus!839) (SpaceValue!839 (value!27594 List!4238)) (IntegerValue!2519 (value!27595 Int) (text!6322 List!4238)) (StringLiteralValue!2518 (text!6323 List!4238)) (FloatLiteralValue!1679 (text!6324 List!4238)) (BytesLiteralValue!839 (value!27596 List!4238)) (CommentValue!1679 (value!27597 List!4238)) (StringLiteralValue!2519 (value!27598 List!4238)) (ErrorTokenValue!839 (msg!900 List!4238)) )
))
(declare-datatypes ((C!3004 0))(
  ( (C!3005 (val!1388 Int)) )
))
(declare-datatypes ((List!4239 0))(
  ( (Nil!4229) (Cons!4229 (h!9626 C!3004) (t!58735 List!4239)) )
))
(declare-datatypes ((IArray!2913 0))(
  ( (IArray!2914 (innerList!1514 List!4239)) )
))
(declare-datatypes ((Conc!1456 0))(
  ( (Node!1456 (left!3539 Conc!1456) (right!3869 Conc!1456) (csize!3142 Int) (cheight!1667 Int)) (Leaf!2204 (xs!4075 IArray!2913) (csize!3143 Int)) (Empty!1456) )
))
(declare-datatypes ((BalanceConc!2920 0))(
  ( (BalanceConc!2921 (c!75661 Conc!1456)) )
))
(declare-datatypes ((TokenValueInjection!1450 0))(
  ( (TokenValueInjection!1451 (toValue!1608 Int) (toChars!1467 Int)) )
))
(declare-datatypes ((String!5275 0))(
  ( (String!5276 (value!27599 String)) )
))
(declare-datatypes ((Regex!1041 0))(
  ( (ElementMatch!1041 (c!75662 C!3004)) (Concat!1881 (regOne!2594 Regex!1041) (regTwo!2594 Regex!1041)) (EmptyExpr!1041) (Star!1041 (reg!1370 Regex!1041)) (EmptyLang!1041) (Union!1041 (regOne!2595 Regex!1041) (regTwo!2595 Regex!1041)) )
))
(declare-datatypes ((Rule!1434 0))(
  ( (Rule!1435 (regex!817 Regex!1041) (tag!1055 String!5275) (isSeparator!817 Bool) (transformation!817 TokenValueInjection!1450)) )
))
(declare-datatypes ((List!4240 0))(
  ( (Nil!4230) (Cons!4230 (h!9627 Rule!1434) (t!58736 List!4240)) )
))
(declare-fun rules!1920 () List!4240)

(get-info :version)

(assert (= (and b!384119 ((_ is Cons!4230) rules!1920)) b!384134))

(declare-fun order!3593 () Int)

(declare-fun order!3595 () Int)

(declare-fun dynLambda!2447 (Int Int) Int)

(declare-fun dynLambda!2448 (Int Int) Int)

(assert (=> b!384136 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11934))))

(declare-fun order!3597 () Int)

(declare-fun dynLambda!2449 (Int Int) Int)

(assert (=> b!384136 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11934))))

(assert (=> b!384119 true))

(declare-fun b!384078 () Bool)

(declare-fun res!172113 () Bool)

(declare-fun e!236266 () Bool)

(assert (=> b!384078 (=> (not res!172113) (not e!236266))))

(declare-fun sepAndNonSepRulesDisjointChars!406 (List!4240 List!4240) Bool)

(assert (=> b!384078 (= res!172113 (sepAndNonSepRulesDisjointChars!406 rules!1920 rules!1920))))

(declare-fun b!384079 () Bool)

(declare-fun res!172107 () Bool)

(declare-fun e!236256 () Bool)

(assert (=> b!384079 (=> res!172107 e!236256)))

(declare-datatypes ((Token!1378 0))(
  ( (Token!1379 (value!27600 TokenValue!839) (rule!1470 Rule!1434) (size!3432 Int) (originalCharacters!860 List!4239)) )
))
(declare-datatypes ((List!4241 0))(
  ( (Nil!4231) (Cons!4231 (h!9628 Token!1378) (t!58737 List!4241)) )
))
(declare-fun tokens!465 () List!4241)

(declare-datatypes ((LexerInterface!703 0))(
  ( (LexerInterfaceExt!700 (__x!3166 Int)) (Lexer!701) )
))
(declare-fun thiss!17480 () LexerInterface!703)

(declare-fun rulesProduceIndividualToken!452 (LexerInterface!703 List!4240 Token!1378) Bool)

(assert (=> b!384079 (= res!172107 (not (rulesProduceIndividualToken!452 thiss!17480 rules!1920 (h!9628 tokens!465))))))

(declare-fun b!384080 () Bool)

(declare-fun res!172109 () Bool)

(declare-fun e!236259 () Bool)

(assert (=> b!384080 (=> (not res!172109) (not e!236259))))

(declare-datatypes ((tuple2!5018 0))(
  ( (tuple2!5019 (_1!2725 Token!1378) (_2!2725 List!4239)) )
))
(declare-fun lt!168547 () tuple2!5018)

(declare-fun isEmpty!3070 (List!4239) Bool)

(assert (=> b!384080 (= res!172109 (isEmpty!3070 (_2!2725 lt!168547)))))

(declare-fun b!384081 () Bool)

(declare-fun e!236250 () Bool)

(declare-fun e!236278 () Bool)

(assert (=> b!384081 (= e!236250 e!236278)))

(declare-fun res!172100 () Bool)

(assert (=> b!384081 (=> (not res!172100) (not e!236278))))

(declare-fun lt!168557 () Rule!1434)

(declare-fun lt!168531 () List!4239)

(declare-fun matchR!359 (Regex!1041 List!4239) Bool)

(assert (=> b!384081 (= res!172100 (matchR!359 (regex!817 lt!168557) lt!168531))))

(declare-datatypes ((Option!1033 0))(
  ( (None!1032) (Some!1032 (v!15199 Rule!1434)) )
))
(declare-fun lt!168521 () Option!1033)

(declare-fun get!1499 (Option!1033) Rule!1434)

(assert (=> b!384081 (= lt!168557 (get!1499 lt!168521))))

(declare-fun lt!168558 () List!4239)

(declare-fun lt!168537 () List!4239)

(declare-fun lt!168518 () List!4239)

(declare-fun e!236257 () Bool)

(declare-fun b!384082 () Bool)

(declare-fun ++!1194 (List!4239 List!4239) List!4239)

(assert (=> b!384082 (= e!236257 (not (= lt!168518 (++!1194 lt!168537 lt!168558))))))

(declare-fun b!384083 () Bool)

(declare-fun res!172088 () Bool)

(assert (=> b!384083 (=> (not res!172088) (not e!236266))))

(declare-fun separatorToken!170 () Token!1378)

(assert (=> b!384083 (= res!172088 (isSeparator!817 (rule!1470 separatorToken!170)))))

(declare-fun b!384084 () Bool)

(declare-fun res!172092 () Bool)

(declare-fun e!236268 () Bool)

(assert (=> b!384084 (=> (not res!172092) (not e!236268))))

(declare-fun lt!168524 () List!4239)

(declare-fun list!1837 (BalanceConc!2920) List!4239)

(declare-fun seqFromList!999 (List!4239) BalanceConc!2920)

(assert (=> b!384084 (= res!172092 (= (list!1837 (seqFromList!999 lt!168518)) lt!168524))))

(declare-fun b!384086 () Bool)

(declare-fun e!236271 () Bool)

(declare-fun e!236275 () Bool)

(assert (=> b!384086 (= e!236271 e!236275)))

(declare-fun res!172110 () Bool)

(assert (=> b!384086 (=> res!172110 e!236275)))

(declare-fun lt!168517 () Bool)

(assert (=> b!384086 (= res!172110 (not lt!168517))))

(assert (=> b!384086 e!236259))

(declare-fun res!172114 () Bool)

(assert (=> b!384086 (=> (not res!172114) (not e!236259))))

(assert (=> b!384086 (= res!172114 (= (_1!2725 lt!168547) (h!9628 tokens!465)))))

(declare-datatypes ((Option!1034 0))(
  ( (None!1033) (Some!1033 (v!15200 tuple2!5018)) )
))
(declare-fun lt!168520 () Option!1034)

(declare-fun get!1500 (Option!1034) tuple2!5018)

(assert (=> b!384086 (= lt!168547 (get!1500 lt!168520))))

(declare-fun isDefined!872 (Option!1034) Bool)

(assert (=> b!384086 (isDefined!872 lt!168520)))

(declare-fun maxPrefix!419 (LexerInterface!703 List!4240 List!4239) Option!1034)

(assert (=> b!384086 (= lt!168520 (maxPrefix!419 thiss!17480 rules!1920 lt!168537))))

(declare-fun res!172098 () Bool)

(assert (=> b!384087 (=> (not res!172098) (not e!236266))))

(declare-fun forall!1180 (List!4241 Int) Bool)

(assert (=> b!384087 (= res!172098 (forall!1180 tokens!465 lambda!11933))))

(declare-fun b!384088 () Bool)

(declare-datatypes ((Unit!6862 0))(
  ( (Unit!6863) )
))
(declare-fun e!236255 () Unit!6862)

(declare-fun Unit!6864 () Unit!6862)

(assert (=> b!384088 (= e!236255 Unit!6864)))

(assert (=> b!384088 false))

(declare-fun b!384089 () Bool)

(declare-fun e!236270 () Bool)

(declare-fun lt!168538 () Rule!1434)

(assert (=> b!384089 (= e!236270 (= (rule!1470 separatorToken!170) lt!168538))))

(declare-fun b!384090 () Bool)

(declare-fun e!236279 () Bool)

(assert (=> b!384090 (= e!236279 e!236256)))

(declare-fun res!172089 () Bool)

(assert (=> b!384090 (=> res!172089 e!236256)))

(declare-fun lt!168523 () List!4239)

(declare-fun lt!168528 () List!4239)

(assert (=> b!384090 (= res!172089 (or (not (= lt!168528 lt!168523)) (not (= lt!168523 lt!168537)) (not (= lt!168528 lt!168537))))))

(declare-fun printList!377 (LexerInterface!703 List!4241) List!4239)

(assert (=> b!384090 (= lt!168523 (printList!377 thiss!17480 (Cons!4231 (h!9628 tokens!465) Nil!4231)))))

(declare-fun lt!168539 () BalanceConc!2920)

(assert (=> b!384090 (= lt!168528 (list!1837 lt!168539))))

(declare-datatypes ((IArray!2915 0))(
  ( (IArray!2916 (innerList!1515 List!4241)) )
))
(declare-datatypes ((Conc!1457 0))(
  ( (Node!1457 (left!3540 Conc!1457) (right!3870 Conc!1457) (csize!3144 Int) (cheight!1668 Int)) (Leaf!2205 (xs!4076 IArray!2915) (csize!3145 Int)) (Empty!1457) )
))
(declare-datatypes ((BalanceConc!2922 0))(
  ( (BalanceConc!2923 (c!75663 Conc!1457)) )
))
(declare-fun lt!168554 () BalanceConc!2922)

(declare-fun printTailRec!389 (LexerInterface!703 BalanceConc!2922 Int BalanceConc!2920) BalanceConc!2920)

(assert (=> b!384090 (= lt!168539 (printTailRec!389 thiss!17480 lt!168554 0 (BalanceConc!2921 Empty!1456)))))

(declare-fun print!428 (LexerInterface!703 BalanceConc!2922) BalanceConc!2920)

(assert (=> b!384090 (= lt!168539 (print!428 thiss!17480 lt!168554))))

(declare-fun singletonSeq!363 (Token!1378) BalanceConc!2922)

(assert (=> b!384090 (= lt!168554 (singletonSeq!363 (h!9628 tokens!465)))))

(declare-fun b!384091 () Bool)

(declare-fun e!236253 () Bool)

(assert (=> b!384091 (= e!236253 e!236270)))

(declare-fun res!172106 () Bool)

(assert (=> b!384091 (=> (not res!172106) (not e!236270))))

(declare-fun lt!168561 () List!4239)

(assert (=> b!384091 (= res!172106 (matchR!359 (regex!817 lt!168538) lt!168561))))

(declare-fun lt!168559 () Option!1033)

(assert (=> b!384091 (= lt!168538 (get!1499 lt!168559))))

(declare-fun e!236252 () Bool)

(declare-fun tp!118300 () Bool)

(declare-fun b!384092 () Bool)

(declare-fun e!236263 () Bool)

(declare-fun inv!5250 (String!5275) Bool)

(declare-fun inv!5253 (TokenValueInjection!1450) Bool)

(assert (=> b!384092 (= e!236263 (and tp!118300 (inv!5250 (tag!1055 (rule!1470 (h!9628 tokens!465)))) (inv!5253 (transformation!817 (rule!1470 (h!9628 tokens!465)))) e!236252))))

(declare-fun b!384093 () Bool)

(declare-fun res!172086 () Bool)

(assert (=> b!384093 (=> res!172086 e!236256)))

(declare-fun isEmpty!3071 (BalanceConc!2922) Bool)

(declare-datatypes ((tuple2!5020 0))(
  ( (tuple2!5021 (_1!2726 BalanceConc!2922) (_2!2726 BalanceConc!2920)) )
))
(declare-fun lex!495 (LexerInterface!703 List!4240 BalanceConc!2920) tuple2!5020)

(assert (=> b!384093 (= res!172086 (isEmpty!3071 (_1!2726 (lex!495 thiss!17480 rules!1920 (seqFromList!999 lt!168537)))))))

(declare-fun b!384094 () Bool)

(declare-fun e!236272 () Unit!6862)

(declare-fun Unit!6865 () Unit!6862)

(assert (=> b!384094 (= e!236272 Unit!6865)))

(declare-fun b!384095 () Bool)

(declare-fun res!172116 () Bool)

(declare-fun e!236254 () Bool)

(assert (=> b!384095 (=> (not res!172116) (not e!236254))))

(declare-fun lt!168541 () tuple2!5020)

(declare-fun apply!1010 (BalanceConc!2922 Int) Token!1378)

(assert (=> b!384095 (= res!172116 (= (apply!1010 (_1!2726 lt!168541) 0) separatorToken!170))))

(declare-fun b!384096 () Bool)

(declare-fun e!236251 () Bool)

(assert (=> b!384096 (= e!236251 e!236266)))

(declare-fun res!172096 () Bool)

(assert (=> b!384096 (=> (not res!172096) (not e!236266))))

(declare-fun lt!168527 () BalanceConc!2922)

(declare-fun rulesProduceEachTokenIndividually!495 (LexerInterface!703 List!4240 BalanceConc!2922) Bool)

(assert (=> b!384096 (= res!172096 (rulesProduceEachTokenIndividually!495 thiss!17480 rules!1920 lt!168527))))

(declare-fun seqFromList!1000 (List!4241) BalanceConc!2922)

(assert (=> b!384096 (= lt!168527 (seqFromList!1000 tokens!465))))

(declare-fun b!384097 () Bool)

(declare-fun e!236267 () Bool)

(assert (=> b!384097 (= e!236267 false)))

(declare-fun b!384098 () Bool)

(declare-fun res!172103 () Bool)

(assert (=> b!384098 (=> (not res!172103) (not e!236251))))

(declare-fun isEmpty!3072 (List!4240) Bool)

(assert (=> b!384098 (= res!172103 (not (isEmpty!3072 rules!1920)))))

(declare-fun e!236283 () Bool)

(declare-fun b!384099 () Bool)

(declare-fun tp!118292 () Bool)

(declare-fun e!236274 () Bool)

(declare-fun inv!21 (TokenValue!839) Bool)

(assert (=> b!384099 (= e!236274 (and (inv!21 (value!27600 separatorToken!170)) e!236283 tp!118292))))

(declare-fun b!384100 () Bool)

(declare-fun e!236249 () Bool)

(assert (=> b!384100 (= e!236268 (not e!236249))))

(declare-fun res!172111 () Bool)

(assert (=> b!384100 (=> res!172111 e!236249)))

(declare-fun printWithSeparatorTokenWhenNeededRec!376 (LexerInterface!703 List!4240 BalanceConc!2922 Token!1378 Int) BalanceConc!2920)

(assert (=> b!384100 (= res!172111 (not (= lt!168558 (list!1837 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 (seqFromList!1000 (t!58737 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!168545 () List!4239)

(declare-fun lt!168530 () List!4239)

(assert (=> b!384100 (= lt!168545 lt!168530)))

(declare-fun lt!168535 () List!4239)

(assert (=> b!384100 (= lt!168530 (++!1194 lt!168537 lt!168535))))

(assert (=> b!384100 (= lt!168545 (++!1194 (++!1194 lt!168537 lt!168561) lt!168558))))

(declare-fun lt!168550 () Unit!6862)

(declare-fun lemmaConcatAssociativity!540 (List!4239 List!4239 List!4239) Unit!6862)

(assert (=> b!384100 (= lt!168550 (lemmaConcatAssociativity!540 lt!168537 lt!168561 lt!168558))))

(declare-fun charsOf!460 (Token!1378) BalanceConc!2920)

(assert (=> b!384100 (= lt!168537 (list!1837 (charsOf!460 (h!9628 tokens!465))))))

(assert (=> b!384100 (= lt!168535 (++!1194 lt!168561 lt!168558))))

(declare-fun printWithSeparatorTokenWhenNeededList!384 (LexerInterface!703 List!4240 List!4241 Token!1378) List!4239)

(assert (=> b!384100 (= lt!168558 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (t!58737 tokens!465) separatorToken!170))))

(assert (=> b!384100 (= lt!168561 (list!1837 (charsOf!460 separatorToken!170)))))

(declare-fun b!384101 () Bool)

(declare-fun e!236273 () Bool)

(declare-fun lt!168536 () tuple2!5020)

(declare-fun isEmpty!3073 (BalanceConc!2920) Bool)

(assert (=> b!384101 (= e!236273 (isEmpty!3073 (_2!2726 lt!168536)))))

(declare-fun b!384102 () Bool)

(declare-fun e!236284 () Unit!6862)

(declare-fun Unit!6866 () Unit!6862)

(assert (=> b!384102 (= e!236284 Unit!6866)))

(declare-fun b!384103 () Bool)

(declare-fun res!172108 () Bool)

(assert (=> b!384103 (=> (not res!172108) (not e!236251))))

(declare-fun rulesInvariant!669 (LexerInterface!703 List!4240) Bool)

(assert (=> b!384103 (= res!172108 (rulesInvariant!669 thiss!17480 rules!1920))))

(declare-fun b!384104 () Bool)

(declare-fun tp!118303 () Bool)

(declare-fun e!236265 () Bool)

(assert (=> b!384104 (= e!236265 (and (inv!21 (value!27600 (h!9628 tokens!465))) e!236263 tp!118303))))

(declare-fun e!236264 () Bool)

(declare-fun b!384105 () Bool)

(declare-fun e!236277 () Bool)

(declare-fun tp!118295 () Bool)

(assert (=> b!384105 (= e!236277 (and tp!118295 (inv!5250 (tag!1055 (h!9627 rules!1920))) (inv!5253 (transformation!817 (h!9627 rules!1920))) e!236264))))

(declare-fun b!384106 () Bool)

(declare-fun Unit!6867 () Unit!6862)

(assert (=> b!384106 (= e!236255 Unit!6867)))

(declare-fun b!384107 () Bool)

(declare-fun e!236280 () Bool)

(declare-fun tp!118296 () Bool)

(assert (=> b!384107 (= e!236280 (and e!236277 tp!118296))))

(declare-fun b!384108 () Bool)

(declare-fun Unit!6868 () Unit!6862)

(assert (=> b!384108 (= e!236284 Unit!6868)))

(declare-fun lt!168562 () Token!1378)

(declare-fun lt!168522 () C!3004)

(declare-fun lt!168544 () Unit!6862)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!96 (Regex!1041 List!4239 C!3004) Unit!6862)

(assert (=> b!384108 (= lt!168544 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!96 (regex!817 (rule!1470 lt!168562)) lt!168531 lt!168522))))

(declare-fun res!172115 () Bool)

(assert (=> b!384108 (= res!172115 (not (matchR!359 (regex!817 (rule!1470 lt!168562)) lt!168531)))))

(assert (=> b!384108 (=> (not res!172115) (not e!236267))))

(assert (=> b!384108 e!236267))

(declare-fun b!384109 () Bool)

(declare-fun res!172094 () Bool)

(assert (=> b!384109 (=> (not res!172094) (not e!236266))))

(assert (=> b!384109 (= res!172094 (rulesProduceIndividualToken!452 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!384110 () Bool)

(declare-fun contains!890 (List!4240 Rule!1434) Bool)

(assert (=> b!384110 (= e!236275 (contains!890 rules!1920 (rule!1470 separatorToken!170)))))

(declare-fun lt!168551 () Unit!6862)

(assert (=> b!384110 (= lt!168551 e!236272)))

(declare-fun c!75658 () Bool)

(declare-fun lt!168532 () C!3004)

(declare-fun contains!891 (List!4239 C!3004) Bool)

(declare-fun usedCharacters!118 (Regex!1041) List!4239)

(assert (=> b!384110 (= c!75658 (contains!891 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170))) lt!168532))))

(declare-fun head!1035 (List!4239) C!3004)

(assert (=> b!384110 (= lt!168532 (head!1035 lt!168558))))

(declare-fun lt!168556 () Unit!6862)

(assert (=> b!384110 (= lt!168556 e!236284)))

(declare-fun c!75659 () Bool)

(assert (=> b!384110 (= c!75659 (not (contains!891 (usedCharacters!118 (regex!817 (rule!1470 lt!168562))) lt!168522)))))

(assert (=> b!384110 (= lt!168522 (head!1035 lt!168531))))

(assert (=> b!384110 e!236250))

(declare-fun res!172104 () Bool)

(assert (=> b!384110 (=> (not res!172104) (not e!236250))))

(declare-fun isDefined!873 (Option!1033) Bool)

(assert (=> b!384110 (= res!172104 (isDefined!873 lt!168521))))

(declare-fun getRuleFromTag!176 (LexerInterface!703 List!4240 String!5275) Option!1033)

(assert (=> b!384110 (= lt!168521 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 lt!168562))))))

(declare-fun lt!168560 () Unit!6862)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!176 (LexerInterface!703 List!4240 List!4239 Token!1378) Unit!6862)

(assert (=> b!384110 (= lt!168560 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!176 thiss!17480 rules!1920 lt!168531 lt!168562))))

(assert (=> b!384110 (= lt!168531 (list!1837 (charsOf!460 lt!168562)))))

(declare-fun lt!168516 () Unit!6862)

(declare-fun forallContained!370 (List!4241 Int Token!1378) Unit!6862)

(assert (=> b!384110 (= lt!168516 (forallContained!370 tokens!465 lambda!11934 lt!168562))))

(assert (=> b!384110 e!236273))

(declare-fun res!172095 () Bool)

(assert (=> b!384110 (=> (not res!172095) (not e!236273))))

(declare-fun size!3433 (BalanceConc!2922) Int)

(assert (=> b!384110 (= res!172095 (= (size!3433 (_1!2726 lt!168536)) 1))))

(declare-fun lt!168555 () BalanceConc!2920)

(assert (=> b!384110 (= lt!168536 (lex!495 thiss!17480 rules!1920 lt!168555))))

(declare-fun lt!168529 () BalanceConc!2922)

(assert (=> b!384110 (= lt!168555 (printTailRec!389 thiss!17480 lt!168529 0 (BalanceConc!2921 Empty!1456)))))

(assert (=> b!384110 (= lt!168555 (print!428 thiss!17480 lt!168529))))

(assert (=> b!384110 (= lt!168529 (singletonSeq!363 lt!168562))))

(assert (=> b!384110 e!236253))

(declare-fun res!172102 () Bool)

(assert (=> b!384110 (=> (not res!172102) (not e!236253))))

(assert (=> b!384110 (= res!172102 (isDefined!873 lt!168559))))

(assert (=> b!384110 (= lt!168559 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 separatorToken!170))))))

(declare-fun lt!168548 () Unit!6862)

(assert (=> b!384110 (= lt!168548 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!176 thiss!17480 rules!1920 lt!168561 separatorToken!170))))

(assert (=> b!384110 e!236254))

(declare-fun res!172087 () Bool)

(assert (=> b!384110 (=> (not res!172087) (not e!236254))))

(assert (=> b!384110 (= res!172087 (= (size!3433 (_1!2726 lt!168541)) 1))))

(declare-fun lt!168552 () BalanceConc!2920)

(assert (=> b!384110 (= lt!168541 (lex!495 thiss!17480 rules!1920 lt!168552))))

(declare-fun lt!168543 () BalanceConc!2922)

(assert (=> b!384110 (= lt!168552 (printTailRec!389 thiss!17480 lt!168543 0 (BalanceConc!2921 Empty!1456)))))

(assert (=> b!384110 (= lt!168552 (print!428 thiss!17480 lt!168543))))

(assert (=> b!384110 (= lt!168543 (singletonSeq!363 separatorToken!170))))

(assert (=> b!384110 (rulesProduceIndividualToken!452 thiss!17480 rules!1920 lt!168562)))

(declare-fun lt!168546 () Unit!6862)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!166 (LexerInterface!703 List!4240 List!4241 Token!1378) Unit!6862)

(assert (=> b!384110 (= lt!168546 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!166 thiss!17480 rules!1920 tokens!465 lt!168562))))

(declare-fun head!1036 (List!4241) Token!1378)

(assert (=> b!384110 (= lt!168562 (head!1036 (t!58737 tokens!465)))))

(declare-fun lt!168526 () Unit!6862)

(assert (=> b!384110 (= lt!168526 e!236255)))

(declare-fun c!75660 () Bool)

(declare-fun isEmpty!3074 (List!4241) Bool)

(assert (=> b!384110 (= c!75660 (isEmpty!3074 (t!58737 tokens!465)))))

(declare-fun lt!168540 () Option!1034)

(assert (=> b!384110 (= lt!168540 (maxPrefix!419 thiss!17480 rules!1920 lt!168535))))

(declare-fun lt!168553 () tuple2!5018)

(assert (=> b!384110 (= lt!168535 (_2!2725 lt!168553))))

(declare-fun lt!168542 () Unit!6862)

(declare-fun lemmaSamePrefixThenSameSuffix!262 (List!4239 List!4239 List!4239 List!4239 List!4239) Unit!6862)

(assert (=> b!384110 (= lt!168542 (lemmaSamePrefixThenSameSuffix!262 lt!168537 lt!168535 lt!168537 (_2!2725 lt!168553) lt!168518))))

(assert (=> b!384110 (= lt!168553 (get!1500 (maxPrefix!419 thiss!17480 rules!1920 lt!168518)))))

(declare-fun isPrefix!477 (List!4239 List!4239) Bool)

(assert (=> b!384110 (isPrefix!477 lt!168537 lt!168530)))

(declare-fun lt!168519 () Unit!6862)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!368 (List!4239 List!4239) Unit!6862)

(assert (=> b!384110 (= lt!168519 (lemmaConcatTwoListThenFirstIsPrefix!368 lt!168537 lt!168535))))

(declare-fun e!236282 () Bool)

(assert (=> b!384110 e!236282))

(declare-fun res!172099 () Bool)

(assert (=> b!384110 (=> res!172099 e!236282)))

(assert (=> b!384110 (= res!172099 (isEmpty!3074 tokens!465))))

(declare-fun lt!168549 () Unit!6862)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!224 (LexerInterface!703 List!4240 List!4241 Token!1378) Unit!6862)

(assert (=> b!384110 (= lt!168549 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!224 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!384111 () Bool)

(declare-fun e!236261 () Bool)

(assert (=> b!384111 (= e!236282 e!236261)))

(declare-fun res!172091 () Bool)

(assert (=> b!384111 (=> (not res!172091) (not e!236261))))

(declare-fun lt!168525 () Option!1034)

(assert (=> b!384111 (= res!172091 (isDefined!872 lt!168525))))

(assert (=> b!384111 (= lt!168525 (maxPrefix!419 thiss!17480 rules!1920 lt!168518))))

(declare-fun b!384112 () Bool)

(assert (=> b!384112 (= e!236278 (= (rule!1470 lt!168562) lt!168557))))

(assert (=> b!384113 (= e!236264 (and tp!118301 tp!118298))))

(declare-fun e!236269 () Bool)

(assert (=> b!384114 (= e!236269 (and tp!118297 tp!118302))))

(declare-fun b!384115 () Bool)

(assert (=> b!384115 (= e!236259 (matchR!359 (regex!817 (rule!1470 (h!9628 tokens!465))) lt!168537))))

(declare-fun b!384116 () Bool)

(declare-fun Unit!6869 () Unit!6862)

(assert (=> b!384116 (= e!236272 Unit!6869)))

(declare-fun lt!168534 () Unit!6862)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!76 (LexerInterface!703 List!4240 List!4240 Rule!1434 Rule!1434 C!3004) Unit!6862)

(assert (=> b!384116 (= lt!168534 (lemmaSepRuleNotContainsCharContainedInANonSepRule!76 thiss!17480 rules!1920 rules!1920 (rule!1470 lt!168562) (rule!1470 separatorToken!170) lt!168532))))

(assert (=> b!384116 false))

(declare-fun e!236281 () Bool)

(declare-fun b!384117 () Bool)

(declare-fun tp!118291 () Bool)

(declare-fun inv!5254 (Token!1378) Bool)

(assert (=> b!384117 (= e!236281 (and (inv!5254 (h!9628 tokens!465)) e!236265 tp!118291))))

(assert (=> b!384118 (= e!236252 (and tp!118299 tp!118294))))

(assert (=> b!384119 (= e!236256 e!236271)))

(declare-fun res!172093 () Bool)

(assert (=> b!384119 (=> res!172093 e!236271)))

(declare-datatypes ((tuple2!5022 0))(
  ( (tuple2!5023 (_1!2727 Token!1378) (_2!2727 BalanceConc!2920)) )
))
(declare-datatypes ((Option!1035 0))(
  ( (None!1034) (Some!1034 (v!15201 tuple2!5022)) )
))
(declare-fun isDefined!874 (Option!1035) Bool)

(declare-fun maxPrefixZipperSequence!382 (LexerInterface!703 List!4240 BalanceConc!2920) Option!1035)

(assert (=> b!384119 (= res!172093 (not (isDefined!874 (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))

(declare-fun lt!168533 () Unit!6862)

(assert (=> b!384119 (= lt!168533 (forallContained!370 tokens!465 lambda!11934 (h!9628 tokens!465)))))

(assert (=> b!384119 (= lt!168537 (originalCharacters!860 (h!9628 tokens!465)))))

(declare-fun b!384120 () Bool)

(assert (=> b!384120 (= e!236254 (isEmpty!3073 (_2!2726 lt!168541)))))

(declare-fun b!384121 () Bool)

(assert (=> b!384121 (= e!236261 (= (_1!2725 (get!1500 lt!168525)) (head!1036 tokens!465)))))

(declare-fun b!384122 () Bool)

(assert (=> b!384122 (= e!236249 e!236279)))

(declare-fun res!172101 () Bool)

(assert (=> b!384122 (=> res!172101 e!236279)))

(assert (=> b!384122 (= res!172101 e!236257)))

(declare-fun res!172097 () Bool)

(assert (=> b!384122 (=> (not res!172097) (not e!236257))))

(assert (=> b!384122 (= res!172097 (not lt!168517))))

(assert (=> b!384122 (= lt!168517 (= lt!168518 lt!168530))))

(declare-fun tp!118293 () Bool)

(declare-fun b!384123 () Bool)

(assert (=> b!384123 (= e!236283 (and tp!118293 (inv!5250 (tag!1055 (rule!1470 separatorToken!170))) (inv!5253 (transformation!817 (rule!1470 separatorToken!170))) e!236269))))

(declare-fun b!384124 () Bool)

(declare-fun res!172085 () Bool)

(assert (=> b!384124 (=> (not res!172085) (not e!236266))))

(assert (=> b!384124 (= res!172085 ((_ is Cons!4231) tokens!465))))

(declare-fun b!384125 () Bool)

(declare-fun res!172105 () Bool)

(assert (=> b!384125 (=> (not res!172105) (not e!236273))))

(assert (=> b!384125 (= res!172105 (= (apply!1010 (_1!2726 lt!168536) 0) lt!168562))))

(declare-fun b!384085 () Bool)

(assert (=> b!384085 (= e!236266 e!236268)))

(declare-fun res!172112 () Bool)

(assert (=> b!384085 (=> (not res!172112) (not e!236268))))

(assert (=> b!384085 (= res!172112 (= lt!168518 lt!168524))))

(assert (=> b!384085 (= lt!168524 (list!1837 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 lt!168527 separatorToken!170 0)))))

(assert (=> b!384085 (= lt!168518 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!172090 () Bool)

(assert (=> start!38278 (=> (not res!172090) (not e!236251))))

(assert (=> start!38278 (= res!172090 ((_ is Lexer!701) thiss!17480))))

(assert (=> start!38278 e!236251))

(assert (=> start!38278 true))

(assert (=> start!38278 e!236280))

(assert (=> start!38278 (and (inv!5254 separatorToken!170) e!236274)))

(assert (=> start!38278 e!236281))

(assert (= (and start!38278 res!172090) b!384098))

(assert (= (and b!384098 res!172103) b!384103))

(assert (= (and b!384103 res!172108) b!384096))

(assert (= (and b!384096 res!172096) b!384109))

(assert (= (and b!384109 res!172094) b!384083))

(assert (= (and b!384083 res!172088) b!384087))

(assert (= (and b!384087 res!172098) b!384078))

(assert (= (and b!384078 res!172113) b!384124))

(assert (= (and b!384124 res!172085) b!384085))

(assert (= (and b!384085 res!172112) b!384084))

(assert (= (and b!384084 res!172092) b!384100))

(assert (= (and b!384100 (not res!172111)) b!384122))

(assert (= (and b!384122 res!172097) b!384082))

(assert (= (and b!384122 (not res!172101)) b!384090))

(assert (= (and b!384090 (not res!172089)) b!384079))

(assert (= (and b!384079 (not res!172107)) b!384093))

(assert (= (and b!384093 (not res!172086)) b!384119))

(assert (= (and b!384119 (not res!172093)) b!384086))

(assert (= (and b!384086 res!172114) b!384080))

(assert (= (and b!384080 res!172109) b!384115))

(assert (= (and b!384086 (not res!172110)) b!384110))

(assert (= (and b!384110 (not res!172099)) b!384111))

(assert (= (and b!384111 res!172091) b!384121))

(assert (= (and b!384110 c!75660) b!384088))

(assert (= (and b!384110 (not c!75660)) b!384106))

(assert (= (and b!384110 res!172087) b!384095))

(assert (= (and b!384095 res!172116) b!384120))

(assert (= (and b!384110 res!172102) b!384091))

(assert (= (and b!384091 res!172106) b!384089))

(assert (= (and b!384110 res!172095) b!384125))

(assert (= (and b!384125 res!172105) b!384101))

(assert (= (and b!384110 res!172104) b!384081))

(assert (= (and b!384081 res!172100) b!384112))

(assert (= (and b!384110 c!75659) b!384108))

(assert (= (and b!384110 (not c!75659)) b!384102))

(assert (= (and b!384108 res!172115) b!384097))

(assert (= (and b!384110 c!75658) b!384116))

(assert (= (and b!384110 (not c!75658)) b!384094))

(assert (= b!384105 b!384113))

(assert (= b!384107 b!384105))

(assert (= (and start!38278 ((_ is Cons!4230) rules!1920)) b!384107))

(assert (= b!384123 b!384114))

(assert (= b!384099 b!384123))

(assert (= start!38278 b!384099))

(assert (= b!384092 b!384118))

(assert (= b!384104 b!384092))

(assert (= b!384117 b!384104))

(assert (= (and start!38278 ((_ is Cons!4231) tokens!465)) b!384117))

(declare-fun m!574783 () Bool)

(assert (=> b!384115 m!574783))

(declare-fun m!574785 () Bool)

(assert (=> b!384085 m!574785))

(assert (=> b!384085 m!574785))

(declare-fun m!574787 () Bool)

(assert (=> b!384085 m!574787))

(declare-fun m!574789 () Bool)

(assert (=> b!384085 m!574789))

(declare-fun m!574791 () Bool)

(assert (=> b!384080 m!574791))

(declare-fun m!574793 () Bool)

(assert (=> b!384086 m!574793))

(declare-fun m!574795 () Bool)

(assert (=> b!384086 m!574795))

(declare-fun m!574797 () Bool)

(assert (=> b!384086 m!574797))

(declare-fun m!574799 () Bool)

(assert (=> b!384099 m!574799))

(declare-fun m!574801 () Bool)

(assert (=> b!384087 m!574801))

(declare-fun m!574803 () Bool)

(assert (=> b!384095 m!574803))

(declare-fun m!574805 () Bool)

(assert (=> b!384092 m!574805))

(declare-fun m!574807 () Bool)

(assert (=> b!384092 m!574807))

(declare-fun m!574809 () Bool)

(assert (=> b!384123 m!574809))

(declare-fun m!574811 () Bool)

(assert (=> b!384123 m!574811))

(declare-fun m!574813 () Bool)

(assert (=> b!384096 m!574813))

(declare-fun m!574815 () Bool)

(assert (=> b!384096 m!574815))

(declare-fun m!574817 () Bool)

(assert (=> b!384116 m!574817))

(declare-fun m!574819 () Bool)

(assert (=> b!384090 m!574819))

(declare-fun m!574821 () Bool)

(assert (=> b!384090 m!574821))

(declare-fun m!574823 () Bool)

(assert (=> b!384090 m!574823))

(declare-fun m!574825 () Bool)

(assert (=> b!384090 m!574825))

(declare-fun m!574827 () Bool)

(assert (=> b!384090 m!574827))

(declare-fun m!574829 () Bool)

(assert (=> start!38278 m!574829))

(declare-fun m!574831 () Bool)

(assert (=> b!384117 m!574831))

(declare-fun m!574833 () Bool)

(assert (=> b!384119 m!574833))

(assert (=> b!384119 m!574833))

(declare-fun m!574835 () Bool)

(assert (=> b!384119 m!574835))

(assert (=> b!384119 m!574835))

(declare-fun m!574837 () Bool)

(assert (=> b!384119 m!574837))

(declare-fun m!574839 () Bool)

(assert (=> b!384119 m!574839))

(declare-fun m!574841 () Bool)

(assert (=> b!384120 m!574841))

(declare-fun m!574843 () Bool)

(assert (=> b!384078 m!574843))

(declare-fun m!574845 () Bool)

(assert (=> b!384121 m!574845))

(declare-fun m!574847 () Bool)

(assert (=> b!384121 m!574847))

(declare-fun m!574849 () Bool)

(assert (=> b!384105 m!574849))

(declare-fun m!574851 () Bool)

(assert (=> b!384105 m!574851))

(declare-fun m!574853 () Bool)

(assert (=> b!384109 m!574853))

(declare-fun m!574855 () Bool)

(assert (=> b!384125 m!574855))

(declare-fun m!574857 () Bool)

(assert (=> b!384081 m!574857))

(declare-fun m!574859 () Bool)

(assert (=> b!384081 m!574859))

(declare-fun m!574861 () Bool)

(assert (=> b!384082 m!574861))

(declare-fun m!574863 () Bool)

(assert (=> b!384093 m!574863))

(assert (=> b!384093 m!574863))

(declare-fun m!574865 () Bool)

(assert (=> b!384093 m!574865))

(declare-fun m!574867 () Bool)

(assert (=> b!384093 m!574867))

(declare-fun m!574869 () Bool)

(assert (=> b!384079 m!574869))

(declare-fun m!574871 () Bool)

(assert (=> b!384104 m!574871))

(declare-fun m!574873 () Bool)

(assert (=> b!384108 m!574873))

(declare-fun m!574875 () Bool)

(assert (=> b!384108 m!574875))

(declare-fun m!574877 () Bool)

(assert (=> b!384103 m!574877))

(declare-fun m!574879 () Bool)

(assert (=> b!384101 m!574879))

(declare-fun m!574881 () Bool)

(assert (=> b!384100 m!574881))

(declare-fun m!574883 () Bool)

(assert (=> b!384100 m!574883))

(declare-fun m!574885 () Bool)

(assert (=> b!384100 m!574885))

(declare-fun m!574887 () Bool)

(assert (=> b!384100 m!574887))

(declare-fun m!574889 () Bool)

(assert (=> b!384100 m!574889))

(declare-fun m!574891 () Bool)

(assert (=> b!384100 m!574891))

(assert (=> b!384100 m!574889))

(declare-fun m!574893 () Bool)

(assert (=> b!384100 m!574893))

(declare-fun m!574895 () Bool)

(assert (=> b!384100 m!574895))

(assert (=> b!384100 m!574881))

(declare-fun m!574897 () Bool)

(assert (=> b!384100 m!574897))

(declare-fun m!574899 () Bool)

(assert (=> b!384100 m!574899))

(assert (=> b!384100 m!574885))

(declare-fun m!574901 () Bool)

(assert (=> b!384100 m!574901))

(assert (=> b!384100 m!574899))

(declare-fun m!574903 () Bool)

(assert (=> b!384100 m!574903))

(assert (=> b!384100 m!574897))

(declare-fun m!574905 () Bool)

(assert (=> b!384100 m!574905))

(declare-fun m!574907 () Bool)

(assert (=> b!384091 m!574907))

(declare-fun m!574909 () Bool)

(assert (=> b!384091 m!574909))

(declare-fun m!574911 () Bool)

(assert (=> b!384111 m!574911))

(declare-fun m!574913 () Bool)

(assert (=> b!384111 m!574913))

(declare-fun m!574915 () Bool)

(assert (=> b!384110 m!574915))

(declare-fun m!574917 () Bool)

(assert (=> b!384110 m!574917))

(declare-fun m!574919 () Bool)

(assert (=> b!384110 m!574919))

(declare-fun m!574921 () Bool)

(assert (=> b!384110 m!574921))

(declare-fun m!574923 () Bool)

(assert (=> b!384110 m!574923))

(declare-fun m!574925 () Bool)

(assert (=> b!384110 m!574925))

(declare-fun m!574927 () Bool)

(assert (=> b!384110 m!574927))

(declare-fun m!574929 () Bool)

(assert (=> b!384110 m!574929))

(declare-fun m!574931 () Bool)

(assert (=> b!384110 m!574931))

(declare-fun m!574933 () Bool)

(assert (=> b!384110 m!574933))

(declare-fun m!574935 () Bool)

(assert (=> b!384110 m!574935))

(assert (=> b!384110 m!574933))

(declare-fun m!574937 () Bool)

(assert (=> b!384110 m!574937))

(declare-fun m!574939 () Bool)

(assert (=> b!384110 m!574939))

(declare-fun m!574941 () Bool)

(assert (=> b!384110 m!574941))

(assert (=> b!384110 m!574913))

(declare-fun m!574943 () Bool)

(assert (=> b!384110 m!574943))

(declare-fun m!574945 () Bool)

(assert (=> b!384110 m!574945))

(declare-fun m!574947 () Bool)

(assert (=> b!384110 m!574947))

(declare-fun m!574949 () Bool)

(assert (=> b!384110 m!574949))

(declare-fun m!574951 () Bool)

(assert (=> b!384110 m!574951))

(declare-fun m!574953 () Bool)

(assert (=> b!384110 m!574953))

(declare-fun m!574955 () Bool)

(assert (=> b!384110 m!574955))

(assert (=> b!384110 m!574913))

(declare-fun m!574957 () Bool)

(assert (=> b!384110 m!574957))

(declare-fun m!574959 () Bool)

(assert (=> b!384110 m!574959))

(declare-fun m!574961 () Bool)

(assert (=> b!384110 m!574961))

(declare-fun m!574963 () Bool)

(assert (=> b!384110 m!574963))

(declare-fun m!574965 () Bool)

(assert (=> b!384110 m!574965))

(declare-fun m!574967 () Bool)

(assert (=> b!384110 m!574967))

(declare-fun m!574969 () Bool)

(assert (=> b!384110 m!574969))

(declare-fun m!574971 () Bool)

(assert (=> b!384110 m!574971))

(declare-fun m!574973 () Bool)

(assert (=> b!384110 m!574973))

(assert (=> b!384110 m!574953))

(declare-fun m!574975 () Bool)

(assert (=> b!384110 m!574975))

(declare-fun m!574977 () Bool)

(assert (=> b!384110 m!574977))

(declare-fun m!574979 () Bool)

(assert (=> b!384110 m!574979))

(declare-fun m!574981 () Bool)

(assert (=> b!384110 m!574981))

(assert (=> b!384110 m!574977))

(declare-fun m!574983 () Bool)

(assert (=> b!384110 m!574983))

(declare-fun m!574985 () Bool)

(assert (=> b!384110 m!574985))

(declare-fun m!574987 () Bool)

(assert (=> b!384110 m!574987))

(declare-fun m!574989 () Bool)

(assert (=> b!384098 m!574989))

(declare-fun m!574991 () Bool)

(assert (=> b!384084 m!574991))

(assert (=> b!384084 m!574991))

(declare-fun m!574993 () Bool)

(assert (=> b!384084 m!574993))

(check-sat (not b!384121) b_and!38607 (not b_next!11835) (not b!384095) (not b_next!11839) b_and!38613 (not b!384086) (not b!384080) (not b!384096) b_and!38615 (not b!384115) (not b!384107) (not b!384105) b_and!38611 (not b!384084) (not b!384110) (not b!384078) (not b!384125) (not b!384087) (not b!384100) (not b!384082) (not b!384119) (not b!384081) (not b!384123) (not b!384098) (not b!384108) (not b_next!11833) (not b!384109) (not b!384085) (not b!384111) b_and!38605 (not b!384101) (not b!384116) (not b!384090) (not b!384104) b_and!38609 (not b_next!11843) (not b!384134) (not b!384092) (not b!384120) (not b!384099) (not b!384079) (not b!384093) (not b!384103) (not b!384117) (not b_next!11841) (not b_next!11837) (not b!384091) (not start!38278))
(check-sat b_and!38607 b_and!38611 (not b_next!11835) (not b_next!11833) b_and!38605 (not b_next!11839) b_and!38613 b_and!38615 b_and!38609 (not b_next!11843) (not b_next!11841) (not b_next!11837))
(get-model)

(declare-fun d!136284 () Bool)

(assert (=> d!136284 (= (inv!5250 (tag!1055 (rule!1470 (h!9628 tokens!465)))) (= (mod (str.len (value!27599 (tag!1055 (rule!1470 (h!9628 tokens!465))))) 2) 0))))

(assert (=> b!384092 d!136284))

(declare-fun d!136286 () Bool)

(declare-fun res!172180 () Bool)

(declare-fun e!236351 () Bool)

(assert (=> d!136286 (=> (not res!172180) (not e!236351))))

(declare-fun semiInverseModEq!317 (Int Int) Bool)

(assert (=> d!136286 (= res!172180 (semiInverseModEq!317 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toValue!1608 (transformation!817 (rule!1470 (h!9628 tokens!465))))))))

(assert (=> d!136286 (= (inv!5253 (transformation!817 (rule!1470 (h!9628 tokens!465)))) e!236351)))

(declare-fun b!384230 () Bool)

(declare-fun equivClasses!300 (Int Int) Bool)

(assert (=> b!384230 (= e!236351 (equivClasses!300 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toValue!1608 (transformation!817 (rule!1470 (h!9628 tokens!465))))))))

(assert (= (and d!136286 res!172180) b!384230))

(declare-fun m!575053 () Bool)

(assert (=> d!136286 m!575053))

(declare-fun m!575055 () Bool)

(assert (=> b!384230 m!575055))

(assert (=> b!384092 d!136286))

(declare-fun b!384274 () Bool)

(declare-fun e!236380 () Bool)

(declare-fun lt!168604 () Bool)

(assert (=> b!384274 (= e!236380 (not lt!168604))))

(declare-fun b!384275 () Bool)

(declare-fun e!236379 () Bool)

(declare-fun e!236376 () Bool)

(assert (=> b!384275 (= e!236379 e!236376)))

(declare-fun res!172210 () Bool)

(assert (=> b!384275 (=> (not res!172210) (not e!236376))))

(assert (=> b!384275 (= res!172210 (not lt!168604))))

(declare-fun d!136288 () Bool)

(declare-fun e!236382 () Bool)

(assert (=> d!136288 e!236382))

(declare-fun c!75693 () Bool)

(assert (=> d!136288 (= c!75693 ((_ is EmptyExpr!1041) (regex!817 (rule!1470 (h!9628 tokens!465)))))))

(declare-fun e!236381 () Bool)

(assert (=> d!136288 (= lt!168604 e!236381)))

(declare-fun c!75692 () Bool)

(assert (=> d!136288 (= c!75692 (isEmpty!3070 lt!168537))))

(declare-fun validRegex!295 (Regex!1041) Bool)

(assert (=> d!136288 (validRegex!295 (regex!817 (rule!1470 (h!9628 tokens!465))))))

(assert (=> d!136288 (= (matchR!359 (regex!817 (rule!1470 (h!9628 tokens!465))) lt!168537) lt!168604)))

(declare-fun b!384276 () Bool)

(declare-fun res!172203 () Bool)

(declare-fun e!236378 () Bool)

(assert (=> b!384276 (=> res!172203 e!236378)))

(declare-fun tail!589 (List!4239) List!4239)

(assert (=> b!384276 (= res!172203 (not (isEmpty!3070 (tail!589 lt!168537))))))

(declare-fun b!384277 () Bool)

(declare-fun res!172206 () Bool)

(assert (=> b!384277 (=> res!172206 e!236379)))

(assert (=> b!384277 (= res!172206 (not ((_ is ElementMatch!1041) (regex!817 (rule!1470 (h!9628 tokens!465))))))))

(assert (=> b!384277 (= e!236380 e!236379)))

(declare-fun b!384278 () Bool)

(declare-fun derivativeStep!186 (Regex!1041 C!3004) Regex!1041)

(assert (=> b!384278 (= e!236381 (matchR!359 (derivativeStep!186 (regex!817 (rule!1470 (h!9628 tokens!465))) (head!1035 lt!168537)) (tail!589 lt!168537)))))

(declare-fun b!384279 () Bool)

(declare-fun res!172207 () Bool)

(declare-fun e!236377 () Bool)

(assert (=> b!384279 (=> (not res!172207) (not e!236377))))

(declare-fun call!24650 () Bool)

(assert (=> b!384279 (= res!172207 (not call!24650))))

(declare-fun b!384280 () Bool)

(assert (=> b!384280 (= e!236376 e!236378)))

(declare-fun res!172205 () Bool)

(assert (=> b!384280 (=> res!172205 e!236378)))

(assert (=> b!384280 (= res!172205 call!24650)))

(declare-fun b!384281 () Bool)

(declare-fun res!172209 () Bool)

(assert (=> b!384281 (=> (not res!172209) (not e!236377))))

(assert (=> b!384281 (= res!172209 (isEmpty!3070 (tail!589 lt!168537)))))

(declare-fun bm!24645 () Bool)

(assert (=> bm!24645 (= call!24650 (isEmpty!3070 lt!168537))))

(declare-fun b!384282 () Bool)

(declare-fun res!172204 () Bool)

(assert (=> b!384282 (=> res!172204 e!236379)))

(assert (=> b!384282 (= res!172204 e!236377)))

(declare-fun res!172208 () Bool)

(assert (=> b!384282 (=> (not res!172208) (not e!236377))))

(assert (=> b!384282 (= res!172208 lt!168604)))

(declare-fun b!384283 () Bool)

(assert (=> b!384283 (= e!236377 (= (head!1035 lt!168537) (c!75662 (regex!817 (rule!1470 (h!9628 tokens!465))))))))

(declare-fun b!384284 () Bool)

(assert (=> b!384284 (= e!236382 (= lt!168604 call!24650))))

(declare-fun b!384285 () Bool)

(assert (=> b!384285 (= e!236382 e!236380)))

(declare-fun c!75694 () Bool)

(assert (=> b!384285 (= c!75694 ((_ is EmptyLang!1041) (regex!817 (rule!1470 (h!9628 tokens!465)))))))

(declare-fun b!384286 () Bool)

(assert (=> b!384286 (= e!236378 (not (= (head!1035 lt!168537) (c!75662 (regex!817 (rule!1470 (h!9628 tokens!465)))))))))

(declare-fun b!384287 () Bool)

(declare-fun nullable!220 (Regex!1041) Bool)

(assert (=> b!384287 (= e!236381 (nullable!220 (regex!817 (rule!1470 (h!9628 tokens!465)))))))

(assert (= (and d!136288 c!75692) b!384287))

(assert (= (and d!136288 (not c!75692)) b!384278))

(assert (= (and d!136288 c!75693) b!384284))

(assert (= (and d!136288 (not c!75693)) b!384285))

(assert (= (and b!384285 c!75694) b!384274))

(assert (= (and b!384285 (not c!75694)) b!384277))

(assert (= (and b!384277 (not res!172206)) b!384282))

(assert (= (and b!384282 res!172208) b!384279))

(assert (= (and b!384279 res!172207) b!384281))

(assert (= (and b!384281 res!172209) b!384283))

(assert (= (and b!384282 (not res!172204)) b!384275))

(assert (= (and b!384275 res!172210) b!384280))

(assert (= (and b!384280 (not res!172205)) b!384276))

(assert (= (and b!384276 (not res!172203)) b!384286))

(assert (= (or b!384284 b!384279 b!384280) bm!24645))

(declare-fun m!575125 () Bool)

(assert (=> bm!24645 m!575125))

(declare-fun m!575127 () Bool)

(assert (=> b!384286 m!575127))

(assert (=> b!384278 m!575127))

(assert (=> b!384278 m!575127))

(declare-fun m!575129 () Bool)

(assert (=> b!384278 m!575129))

(declare-fun m!575131 () Bool)

(assert (=> b!384278 m!575131))

(assert (=> b!384278 m!575129))

(assert (=> b!384278 m!575131))

(declare-fun m!575133 () Bool)

(assert (=> b!384278 m!575133))

(assert (=> d!136288 m!575125))

(declare-fun m!575135 () Bool)

(assert (=> d!136288 m!575135))

(assert (=> b!384276 m!575131))

(assert (=> b!384276 m!575131))

(declare-fun m!575137 () Bool)

(assert (=> b!384276 m!575137))

(assert (=> b!384283 m!575127))

(declare-fun m!575139 () Bool)

(assert (=> b!384287 m!575139))

(assert (=> b!384281 m!575131))

(assert (=> b!384281 m!575131))

(assert (=> b!384281 m!575137))

(assert (=> b!384115 d!136288))

(declare-fun lt!168607 () Bool)

(declare-fun d!136302 () Bool)

(declare-fun list!1840 (BalanceConc!2922) List!4241)

(assert (=> d!136302 (= lt!168607 (isEmpty!3074 (list!1840 (_1!2726 (lex!495 thiss!17480 rules!1920 (seqFromList!999 lt!168537))))))))

(declare-fun isEmpty!3077 (Conc!1457) Bool)

(assert (=> d!136302 (= lt!168607 (isEmpty!3077 (c!75663 (_1!2726 (lex!495 thiss!17480 rules!1920 (seqFromList!999 lt!168537))))))))

(assert (=> d!136302 (= (isEmpty!3071 (_1!2726 (lex!495 thiss!17480 rules!1920 (seqFromList!999 lt!168537)))) lt!168607)))

(declare-fun bs!46733 () Bool)

(assert (= bs!46733 d!136302))

(declare-fun m!575141 () Bool)

(assert (=> bs!46733 m!575141))

(assert (=> bs!46733 m!575141))

(declare-fun m!575143 () Bool)

(assert (=> bs!46733 m!575143))

(declare-fun m!575145 () Bool)

(assert (=> bs!46733 m!575145))

(assert (=> b!384093 d!136302))

(declare-fun d!136304 () Bool)

(declare-fun e!236405 () Bool)

(assert (=> d!136304 e!236405))

(declare-fun res!172244 () Bool)

(assert (=> d!136304 (=> (not res!172244) (not e!236405))))

(declare-fun e!236406 () Bool)

(assert (=> d!136304 (= res!172244 e!236406)))

(declare-fun c!75700 () Bool)

(declare-fun lt!168629 () tuple2!5020)

(assert (=> d!136304 (= c!75700 (> (size!3433 (_1!2726 lt!168629)) 0))))

(declare-fun lexTailRecV2!231 (LexerInterface!703 List!4240 BalanceConc!2920 BalanceConc!2920 BalanceConc!2920 BalanceConc!2922) tuple2!5020)

(assert (=> d!136304 (= lt!168629 (lexTailRecV2!231 thiss!17480 rules!1920 (seqFromList!999 lt!168537) (BalanceConc!2921 Empty!1456) (seqFromList!999 lt!168537) (BalanceConc!2923 Empty!1457)))))

(assert (=> d!136304 (= (lex!495 thiss!17480 rules!1920 (seqFromList!999 lt!168537)) lt!168629)))

(declare-fun b!384328 () Bool)

(declare-datatypes ((tuple2!5024 0))(
  ( (tuple2!5025 (_1!2728 List!4241) (_2!2728 List!4239)) )
))
(declare-fun lexList!264 (LexerInterface!703 List!4240 List!4239) tuple2!5024)

(assert (=> b!384328 (= e!236405 (= (list!1837 (_2!2726 lt!168629)) (_2!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 (seqFromList!999 lt!168537))))))))

(declare-fun b!384329 () Bool)

(declare-fun e!236404 () Bool)

(assert (=> b!384329 (= e!236404 (not (isEmpty!3071 (_1!2726 lt!168629))))))

(declare-fun b!384330 () Bool)

(declare-fun res!172245 () Bool)

(assert (=> b!384330 (=> (not res!172245) (not e!236405))))

(assert (=> b!384330 (= res!172245 (= (list!1840 (_1!2726 lt!168629)) (_1!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 (seqFromList!999 lt!168537))))))))

(declare-fun b!384331 () Bool)

(assert (=> b!384331 (= e!236406 (= (_2!2726 lt!168629) (seqFromList!999 lt!168537)))))

(declare-fun b!384332 () Bool)

(assert (=> b!384332 (= e!236406 e!236404)))

(declare-fun res!172243 () Bool)

(declare-fun size!3435 (BalanceConc!2920) Int)

(assert (=> b!384332 (= res!172243 (< (size!3435 (_2!2726 lt!168629)) (size!3435 (seqFromList!999 lt!168537))))))

(assert (=> b!384332 (=> (not res!172243) (not e!236404))))

(assert (= (and d!136304 c!75700) b!384332))

(assert (= (and d!136304 (not c!75700)) b!384331))

(assert (= (and b!384332 res!172243) b!384329))

(assert (= (and d!136304 res!172244) b!384330))

(assert (= (and b!384330 res!172245) b!384328))

(declare-fun m!575171 () Bool)

(assert (=> b!384332 m!575171))

(assert (=> b!384332 m!574863))

(declare-fun m!575173 () Bool)

(assert (=> b!384332 m!575173))

(declare-fun m!575175 () Bool)

(assert (=> b!384329 m!575175))

(declare-fun m!575177 () Bool)

(assert (=> b!384330 m!575177))

(assert (=> b!384330 m!574863))

(declare-fun m!575179 () Bool)

(assert (=> b!384330 m!575179))

(assert (=> b!384330 m!575179))

(declare-fun m!575181 () Bool)

(assert (=> b!384330 m!575181))

(declare-fun m!575183 () Bool)

(assert (=> b!384328 m!575183))

(assert (=> b!384328 m!574863))

(assert (=> b!384328 m!575179))

(assert (=> b!384328 m!575179))

(assert (=> b!384328 m!575181))

(declare-fun m!575185 () Bool)

(assert (=> d!136304 m!575185))

(assert (=> d!136304 m!574863))

(assert (=> d!136304 m!574863))

(declare-fun m!575187 () Bool)

(assert (=> d!136304 m!575187))

(assert (=> b!384093 d!136304))

(declare-fun d!136318 () Bool)

(declare-fun fromListB!434 (List!4239) BalanceConc!2920)

(assert (=> d!136318 (= (seqFromList!999 lt!168537) (fromListB!434 lt!168537))))

(declare-fun bs!46736 () Bool)

(assert (= bs!46736 d!136318))

(declare-fun m!575189 () Bool)

(assert (=> bs!46736 m!575189))

(assert (=> b!384093 d!136318))

(declare-fun d!136320 () Bool)

(declare-fun lt!168638 () Token!1378)

(declare-fun apply!1014 (List!4241 Int) Token!1378)

(assert (=> d!136320 (= lt!168638 (apply!1014 (list!1840 (_1!2726 lt!168541)) 0))))

(declare-fun apply!1015 (Conc!1457 Int) Token!1378)

(assert (=> d!136320 (= lt!168638 (apply!1015 (c!75663 (_1!2726 lt!168541)) 0))))

(declare-fun e!236419 () Bool)

(assert (=> d!136320 e!236419))

(declare-fun res!172263 () Bool)

(assert (=> d!136320 (=> (not res!172263) (not e!236419))))

(assert (=> d!136320 (= res!172263 (<= 0 0))))

(assert (=> d!136320 (= (apply!1010 (_1!2726 lt!168541) 0) lt!168638)))

(declare-fun b!384358 () Bool)

(assert (=> b!384358 (= e!236419 (< 0 (size!3433 (_1!2726 lt!168541))))))

(assert (= (and d!136320 res!172263) b!384358))

(declare-fun m!575225 () Bool)

(assert (=> d!136320 m!575225))

(assert (=> d!136320 m!575225))

(declare-fun m!575227 () Bool)

(assert (=> d!136320 m!575227))

(declare-fun m!575229 () Bool)

(assert (=> d!136320 m!575229))

(assert (=> b!384358 m!574973))

(assert (=> b!384095 d!136320))

(declare-fun d!136324 () Bool)

(assert (=> d!136324 (not (contains!891 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170))) lt!168532))))

(declare-fun lt!168641 () Unit!6862)

(declare-fun choose!3062 (LexerInterface!703 List!4240 List!4240 Rule!1434 Rule!1434 C!3004) Unit!6862)

(assert (=> d!136324 (= lt!168641 (choose!3062 thiss!17480 rules!1920 rules!1920 (rule!1470 lt!168562) (rule!1470 separatorToken!170) lt!168532))))

(assert (=> d!136324 (rulesInvariant!669 thiss!17480 rules!1920)))

(assert (=> d!136324 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!76 thiss!17480 rules!1920 rules!1920 (rule!1470 lt!168562) (rule!1470 separatorToken!170) lt!168532) lt!168641)))

(declare-fun bs!46738 () Bool)

(assert (= bs!46738 d!136324))

(assert (=> bs!46738 m!574933))

(assert (=> bs!46738 m!574933))

(assert (=> bs!46738 m!574937))

(declare-fun m!575249 () Bool)

(assert (=> bs!46738 m!575249))

(assert (=> bs!46738 m!574877))

(assert (=> b!384116 d!136324))

(declare-fun bs!46739 () Bool)

(declare-fun d!136332 () Bool)

(assert (= bs!46739 (and d!136332 b!384087)))

(declare-fun lambda!11944 () Int)

(assert (=> bs!46739 (not (= lambda!11944 lambda!11933))))

(declare-fun bs!46740 () Bool)

(assert (= bs!46740 (and d!136332 b!384119)))

(assert (=> bs!46740 (= lambda!11944 lambda!11934)))

(declare-fun b!384364 () Bool)

(declare-fun e!236425 () Bool)

(assert (=> b!384364 (= e!236425 true)))

(declare-fun b!384363 () Bool)

(declare-fun e!236424 () Bool)

(assert (=> b!384363 (= e!236424 e!236425)))

(declare-fun b!384362 () Bool)

(declare-fun e!236423 () Bool)

(assert (=> b!384362 (= e!236423 e!236424)))

(assert (=> d!136332 e!236423))

(assert (= b!384363 b!384364))

(assert (= b!384362 b!384363))

(assert (= (and d!136332 ((_ is Cons!4230) rules!1920)) b!384362))

(assert (=> b!384364 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11944))))

(assert (=> b!384364 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11944))))

(assert (=> d!136332 true))

(declare-fun e!236422 () Bool)

(assert (=> d!136332 e!236422))

(declare-fun res!172266 () Bool)

(assert (=> d!136332 (=> (not res!172266) (not e!236422))))

(declare-fun lt!168644 () Bool)

(assert (=> d!136332 (= res!172266 (= lt!168644 (forall!1180 (list!1840 lt!168527) lambda!11944)))))

(declare-fun forall!1182 (BalanceConc!2922 Int) Bool)

(assert (=> d!136332 (= lt!168644 (forall!1182 lt!168527 lambda!11944))))

(assert (=> d!136332 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136332 (= (rulesProduceEachTokenIndividually!495 thiss!17480 rules!1920 lt!168527) lt!168644)))

(declare-fun b!384361 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!291 (LexerInterface!703 List!4240 List!4241) Bool)

(assert (=> b!384361 (= e!236422 (= lt!168644 (rulesProduceEachTokenIndividuallyList!291 thiss!17480 rules!1920 (list!1840 lt!168527))))))

(assert (= (and d!136332 res!172266) b!384361))

(declare-fun m!575251 () Bool)

(assert (=> d!136332 m!575251))

(assert (=> d!136332 m!575251))

(declare-fun m!575253 () Bool)

(assert (=> d!136332 m!575253))

(declare-fun m!575255 () Bool)

(assert (=> d!136332 m!575255))

(assert (=> d!136332 m!574989))

(assert (=> b!384361 m!575251))

(assert (=> b!384361 m!575251))

(declare-fun m!575257 () Bool)

(assert (=> b!384361 m!575257))

(assert (=> b!384096 d!136332))

(declare-fun d!136334 () Bool)

(declare-fun fromListB!435 (List!4241) BalanceConc!2922)

(assert (=> d!136334 (= (seqFromList!1000 tokens!465) (fromListB!435 tokens!465))))

(declare-fun bs!46741 () Bool)

(assert (= bs!46741 d!136334))

(declare-fun m!575259 () Bool)

(assert (=> bs!46741 m!575259))

(assert (=> b!384096 d!136334))

(declare-fun d!136336 () Bool)

(declare-fun res!172271 () Bool)

(declare-fun e!236428 () Bool)

(assert (=> d!136336 (=> (not res!172271) (not e!236428))))

(assert (=> d!136336 (= res!172271 (not (isEmpty!3070 (originalCharacters!860 (h!9628 tokens!465)))))))

(assert (=> d!136336 (= (inv!5254 (h!9628 tokens!465)) e!236428)))

(declare-fun b!384369 () Bool)

(declare-fun res!172272 () Bool)

(assert (=> b!384369 (=> (not res!172272) (not e!236428))))

(declare-fun dynLambda!2452 (Int TokenValue!839) BalanceConc!2920)

(assert (=> b!384369 (= res!172272 (= (originalCharacters!860 (h!9628 tokens!465)) (list!1837 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (value!27600 (h!9628 tokens!465))))))))

(declare-fun b!384370 () Bool)

(declare-fun size!3436 (List!4239) Int)

(assert (=> b!384370 (= e!236428 (= (size!3432 (h!9628 tokens!465)) (size!3436 (originalCharacters!860 (h!9628 tokens!465)))))))

(assert (= (and d!136336 res!172271) b!384369))

(assert (= (and b!384369 res!172272) b!384370))

(declare-fun b_lambda!15141 () Bool)

(assert (=> (not b_lambda!15141) (not b!384369)))

(declare-fun t!58761 () Bool)

(declare-fun tb!33973 () Bool)

(assert (=> (and b!384118 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465))))) t!58761) tb!33973))

(declare-fun b!384375 () Bool)

(declare-fun e!236431 () Bool)

(declare-fun tp!118310 () Bool)

(declare-fun inv!5257 (Conc!1456) Bool)

(assert (=> b!384375 (= e!236431 (and (inv!5257 (c!75661 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (value!27600 (h!9628 tokens!465))))) tp!118310))))

(declare-fun result!38262 () Bool)

(declare-fun inv!5258 (BalanceConc!2920) Bool)

(assert (=> tb!33973 (= result!38262 (and (inv!5258 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (value!27600 (h!9628 tokens!465)))) e!236431))))

(assert (= tb!33973 b!384375))

(declare-fun m!575261 () Bool)

(assert (=> b!384375 m!575261))

(declare-fun m!575263 () Bool)

(assert (=> tb!33973 m!575263))

(assert (=> b!384369 t!58761))

(declare-fun b_and!38629 () Bool)

(assert (= b_and!38607 (and (=> t!58761 result!38262) b_and!38629)))

(declare-fun tb!33975 () Bool)

(declare-fun t!58763 () Bool)

(assert (=> (and b!384114 (= (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465))))) t!58763) tb!33975))

(declare-fun result!38266 () Bool)

(assert (= result!38266 result!38262))

(assert (=> b!384369 t!58763))

(declare-fun b_and!38631 () Bool)

(assert (= b_and!38611 (and (=> t!58763 result!38266) b_and!38631)))

(declare-fun tb!33977 () Bool)

(declare-fun t!58765 () Bool)

(assert (=> (and b!384113 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465))))) t!58765) tb!33977))

(declare-fun result!38268 () Bool)

(assert (= result!38268 result!38262))

(assert (=> b!384369 t!58765))

(declare-fun b_and!38633 () Bool)

(assert (= b_and!38615 (and (=> t!58765 result!38268) b_and!38633)))

(declare-fun m!575265 () Bool)

(assert (=> d!136336 m!575265))

(declare-fun m!575267 () Bool)

(assert (=> b!384369 m!575267))

(assert (=> b!384369 m!575267))

(declare-fun m!575269 () Bool)

(assert (=> b!384369 m!575269))

(declare-fun m!575271 () Bool)

(assert (=> b!384370 m!575271))

(assert (=> b!384117 d!136336))

(declare-fun d!136338 () Bool)

(declare-fun res!172277 () Bool)

(declare-fun e!236436 () Bool)

(assert (=> d!136338 (=> res!172277 e!236436)))

(assert (=> d!136338 (= res!172277 ((_ is Nil!4231) tokens!465))))

(assert (=> d!136338 (= (forall!1180 tokens!465 lambda!11933) e!236436)))

(declare-fun b!384380 () Bool)

(declare-fun e!236437 () Bool)

(assert (=> b!384380 (= e!236436 e!236437)))

(declare-fun res!172278 () Bool)

(assert (=> b!384380 (=> (not res!172278) (not e!236437))))

(declare-fun dynLambda!2453 (Int Token!1378) Bool)

(assert (=> b!384380 (= res!172278 (dynLambda!2453 lambda!11933 (h!9628 tokens!465)))))

(declare-fun b!384381 () Bool)

(assert (=> b!384381 (= e!236437 (forall!1180 (t!58737 tokens!465) lambda!11933))))

(assert (= (and d!136338 (not res!172277)) b!384380))

(assert (= (and b!384380 res!172278) b!384381))

(declare-fun b_lambda!15143 () Bool)

(assert (=> (not b_lambda!15143) (not b!384380)))

(declare-fun m!575273 () Bool)

(assert (=> b!384380 m!575273))

(declare-fun m!575275 () Bool)

(assert (=> b!384381 m!575275))

(assert (=> b!384087 d!136338))

(declare-fun d!136340 () Bool)

(assert (=> d!136340 (not (matchR!359 (regex!817 (rule!1470 lt!168562)) lt!168531))))

(declare-fun lt!168647 () Unit!6862)

(declare-fun choose!3063 (Regex!1041 List!4239 C!3004) Unit!6862)

(assert (=> d!136340 (= lt!168647 (choose!3063 (regex!817 (rule!1470 lt!168562)) lt!168531 lt!168522))))

(assert (=> d!136340 (validRegex!295 (regex!817 (rule!1470 lt!168562)))))

(assert (=> d!136340 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!96 (regex!817 (rule!1470 lt!168562)) lt!168531 lt!168522) lt!168647)))

(declare-fun bs!46742 () Bool)

(assert (= bs!46742 d!136340))

(assert (=> bs!46742 m!574875))

(declare-fun m!575277 () Bool)

(assert (=> bs!46742 m!575277))

(declare-fun m!575279 () Bool)

(assert (=> bs!46742 m!575279))

(assert (=> b!384108 d!136340))

(declare-fun b!384382 () Bool)

(declare-fun e!236442 () Bool)

(declare-fun lt!168648 () Bool)

(assert (=> b!384382 (= e!236442 (not lt!168648))))

(declare-fun b!384383 () Bool)

(declare-fun e!236441 () Bool)

(declare-fun e!236438 () Bool)

(assert (=> b!384383 (= e!236441 e!236438)))

(declare-fun res!172286 () Bool)

(assert (=> b!384383 (=> (not res!172286) (not e!236438))))

(assert (=> b!384383 (= res!172286 (not lt!168648))))

(declare-fun d!136342 () Bool)

(declare-fun e!236444 () Bool)

(assert (=> d!136342 e!236444))

(declare-fun c!75708 () Bool)

(assert (=> d!136342 (= c!75708 ((_ is EmptyExpr!1041) (regex!817 (rule!1470 lt!168562))))))

(declare-fun e!236443 () Bool)

(assert (=> d!136342 (= lt!168648 e!236443)))

(declare-fun c!75707 () Bool)

(assert (=> d!136342 (= c!75707 (isEmpty!3070 lt!168531))))

(assert (=> d!136342 (validRegex!295 (regex!817 (rule!1470 lt!168562)))))

(assert (=> d!136342 (= (matchR!359 (regex!817 (rule!1470 lt!168562)) lt!168531) lt!168648)))

(declare-fun b!384384 () Bool)

(declare-fun res!172279 () Bool)

(declare-fun e!236440 () Bool)

(assert (=> b!384384 (=> res!172279 e!236440)))

(assert (=> b!384384 (= res!172279 (not (isEmpty!3070 (tail!589 lt!168531))))))

(declare-fun b!384385 () Bool)

(declare-fun res!172282 () Bool)

(assert (=> b!384385 (=> res!172282 e!236441)))

(assert (=> b!384385 (= res!172282 (not ((_ is ElementMatch!1041) (regex!817 (rule!1470 lt!168562)))))))

(assert (=> b!384385 (= e!236442 e!236441)))

(declare-fun b!384386 () Bool)

(assert (=> b!384386 (= e!236443 (matchR!359 (derivativeStep!186 (regex!817 (rule!1470 lt!168562)) (head!1035 lt!168531)) (tail!589 lt!168531)))))

(declare-fun b!384387 () Bool)

(declare-fun res!172283 () Bool)

(declare-fun e!236439 () Bool)

(assert (=> b!384387 (=> (not res!172283) (not e!236439))))

(declare-fun call!24655 () Bool)

(assert (=> b!384387 (= res!172283 (not call!24655))))

(declare-fun b!384388 () Bool)

(assert (=> b!384388 (= e!236438 e!236440)))

(declare-fun res!172281 () Bool)

(assert (=> b!384388 (=> res!172281 e!236440)))

(assert (=> b!384388 (= res!172281 call!24655)))

(declare-fun b!384389 () Bool)

(declare-fun res!172285 () Bool)

(assert (=> b!384389 (=> (not res!172285) (not e!236439))))

(assert (=> b!384389 (= res!172285 (isEmpty!3070 (tail!589 lt!168531)))))

(declare-fun bm!24650 () Bool)

(assert (=> bm!24650 (= call!24655 (isEmpty!3070 lt!168531))))

(declare-fun b!384390 () Bool)

(declare-fun res!172280 () Bool)

(assert (=> b!384390 (=> res!172280 e!236441)))

(assert (=> b!384390 (= res!172280 e!236439)))

(declare-fun res!172284 () Bool)

(assert (=> b!384390 (=> (not res!172284) (not e!236439))))

(assert (=> b!384390 (= res!172284 lt!168648)))

(declare-fun b!384391 () Bool)

(assert (=> b!384391 (= e!236439 (= (head!1035 lt!168531) (c!75662 (regex!817 (rule!1470 lt!168562)))))))

(declare-fun b!384392 () Bool)

(assert (=> b!384392 (= e!236444 (= lt!168648 call!24655))))

(declare-fun b!384393 () Bool)

(assert (=> b!384393 (= e!236444 e!236442)))

(declare-fun c!75709 () Bool)

(assert (=> b!384393 (= c!75709 ((_ is EmptyLang!1041) (regex!817 (rule!1470 lt!168562))))))

(declare-fun b!384394 () Bool)

(assert (=> b!384394 (= e!236440 (not (= (head!1035 lt!168531) (c!75662 (regex!817 (rule!1470 lt!168562))))))))

(declare-fun b!384395 () Bool)

(assert (=> b!384395 (= e!236443 (nullable!220 (regex!817 (rule!1470 lt!168562))))))

(assert (= (and d!136342 c!75707) b!384395))

(assert (= (and d!136342 (not c!75707)) b!384386))

(assert (= (and d!136342 c!75708) b!384392))

(assert (= (and d!136342 (not c!75708)) b!384393))

(assert (= (and b!384393 c!75709) b!384382))

(assert (= (and b!384393 (not c!75709)) b!384385))

(assert (= (and b!384385 (not res!172282)) b!384390))

(assert (= (and b!384390 res!172284) b!384387))

(assert (= (and b!384387 res!172283) b!384389))

(assert (= (and b!384389 res!172285) b!384391))

(assert (= (and b!384390 (not res!172280)) b!384383))

(assert (= (and b!384383 res!172286) b!384388))

(assert (= (and b!384388 (not res!172281)) b!384384))

(assert (= (and b!384384 (not res!172279)) b!384394))

(assert (= (or b!384392 b!384387 b!384388) bm!24650))

(declare-fun m!575281 () Bool)

(assert (=> bm!24650 m!575281))

(assert (=> b!384394 m!574959))

(assert (=> b!384386 m!574959))

(assert (=> b!384386 m!574959))

(declare-fun m!575283 () Bool)

(assert (=> b!384386 m!575283))

(declare-fun m!575285 () Bool)

(assert (=> b!384386 m!575285))

(assert (=> b!384386 m!575283))

(assert (=> b!384386 m!575285))

(declare-fun m!575287 () Bool)

(assert (=> b!384386 m!575287))

(assert (=> d!136342 m!575281))

(assert (=> d!136342 m!575279))

(assert (=> b!384384 m!575285))

(assert (=> b!384384 m!575285))

(declare-fun m!575289 () Bool)

(assert (=> b!384384 m!575289))

(assert (=> b!384391 m!574959))

(declare-fun m!575291 () Bool)

(assert (=> b!384395 m!575291))

(assert (=> b!384389 m!575285))

(assert (=> b!384389 m!575285))

(assert (=> b!384389 m!575289))

(assert (=> b!384108 d!136342))

(declare-fun d!136344 () Bool)

(declare-fun e!236447 () Bool)

(assert (=> d!136344 e!236447))

(declare-fun res!172289 () Bool)

(assert (=> d!136344 (=> (not res!172289) (not e!236447))))

(declare-fun lt!168651 () BalanceConc!2922)

(assert (=> d!136344 (= res!172289 (= (list!1840 lt!168651) (Cons!4231 lt!168562 Nil!4231)))))

(declare-fun singleton!170 (Token!1378) BalanceConc!2922)

(assert (=> d!136344 (= lt!168651 (singleton!170 lt!168562))))

(assert (=> d!136344 (= (singletonSeq!363 lt!168562) lt!168651)))

(declare-fun b!384398 () Bool)

(declare-fun isBalanced!435 (Conc!1457) Bool)

(assert (=> b!384398 (= e!236447 (isBalanced!435 (c!75663 lt!168651)))))

(assert (= (and d!136344 res!172289) b!384398))

(declare-fun m!575293 () Bool)

(assert (=> d!136344 m!575293))

(declare-fun m!575295 () Bool)

(assert (=> d!136344 m!575295))

(declare-fun m!575297 () Bool)

(assert (=> b!384398 m!575297))

(assert (=> b!384110 d!136344))

(declare-fun d!136346 () Bool)

(declare-fun lt!168654 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!677 (List!4239) (InoxSet C!3004))

(assert (=> d!136346 (= lt!168654 (select (content!677 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170)))) lt!168532))))

(declare-fun e!236453 () Bool)

(assert (=> d!136346 (= lt!168654 e!236453)))

(declare-fun res!172295 () Bool)

(assert (=> d!136346 (=> (not res!172295) (not e!236453))))

(assert (=> d!136346 (= res!172295 ((_ is Cons!4229) (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170)))))))

(assert (=> d!136346 (= (contains!891 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170))) lt!168532) lt!168654)))

(declare-fun b!384403 () Bool)

(declare-fun e!236452 () Bool)

(assert (=> b!384403 (= e!236453 e!236452)))

(declare-fun res!172294 () Bool)

(assert (=> b!384403 (=> res!172294 e!236452)))

(assert (=> b!384403 (= res!172294 (= (h!9626 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170)))) lt!168532))))

(declare-fun b!384404 () Bool)

(assert (=> b!384404 (= e!236452 (contains!891 (t!58735 (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170)))) lt!168532))))

(assert (= (and d!136346 res!172295) b!384403))

(assert (= (and b!384403 (not res!172294)) b!384404))

(assert (=> d!136346 m!574933))

(declare-fun m!575299 () Bool)

(assert (=> d!136346 m!575299))

(declare-fun m!575301 () Bool)

(assert (=> d!136346 m!575301))

(declare-fun m!575303 () Bool)

(assert (=> b!384404 m!575303))

(assert (=> b!384110 d!136346))

(declare-fun d!136348 () Bool)

(assert (=> d!136348 (= (isEmpty!3074 tokens!465) ((_ is Nil!4231) tokens!465))))

(assert (=> b!384110 d!136348))

(declare-fun d!136350 () Bool)

(declare-fun lt!168657 () BalanceConc!2920)

(assert (=> d!136350 (= (list!1837 lt!168657) (originalCharacters!860 lt!168562))))

(assert (=> d!136350 (= lt!168657 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 lt!168562))) (value!27600 lt!168562)))))

(assert (=> d!136350 (= (charsOf!460 lt!168562) lt!168657)))

(declare-fun b_lambda!15145 () Bool)

(assert (=> (not b_lambda!15145) (not d!136350)))

(declare-fun t!58768 () Bool)

(declare-fun tb!33979 () Bool)

(assert (=> (and b!384118 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toChars!1467 (transformation!817 (rule!1470 lt!168562)))) t!58768) tb!33979))

(declare-fun b!384405 () Bool)

(declare-fun e!236454 () Bool)

(declare-fun tp!118311 () Bool)

(assert (=> b!384405 (= e!236454 (and (inv!5257 (c!75661 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 lt!168562))) (value!27600 lt!168562)))) tp!118311))))

(declare-fun result!38270 () Bool)

(assert (=> tb!33979 (= result!38270 (and (inv!5258 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 lt!168562))) (value!27600 lt!168562))) e!236454))))

(assert (= tb!33979 b!384405))

(declare-fun m!575305 () Bool)

(assert (=> b!384405 m!575305))

(declare-fun m!575307 () Bool)

(assert (=> tb!33979 m!575307))

(assert (=> d!136350 t!58768))

(declare-fun b_and!38635 () Bool)

(assert (= b_and!38629 (and (=> t!58768 result!38270) b_and!38635)))

(declare-fun tb!33981 () Bool)

(declare-fun t!58770 () Bool)

(assert (=> (and b!384114 (= (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toChars!1467 (transformation!817 (rule!1470 lt!168562)))) t!58770) tb!33981))

(declare-fun result!38272 () Bool)

(assert (= result!38272 result!38270))

(assert (=> d!136350 t!58770))

(declare-fun b_and!38637 () Bool)

(assert (= b_and!38631 (and (=> t!58770 result!38272) b_and!38637)))

(declare-fun tb!33983 () Bool)

(declare-fun t!58772 () Bool)

(assert (=> (and b!384113 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 lt!168562)))) t!58772) tb!33983))

(declare-fun result!38274 () Bool)

(assert (= result!38274 result!38270))

(assert (=> d!136350 t!58772))

(declare-fun b_and!38639 () Bool)

(assert (= b_and!38633 (and (=> t!58772 result!38274) b_and!38639)))

(declare-fun m!575309 () Bool)

(assert (=> d!136350 m!575309))

(declare-fun m!575311 () Bool)

(assert (=> d!136350 m!575311))

(assert (=> b!384110 d!136350))

(declare-fun d!136352 () Bool)

(declare-fun lt!168688 () BalanceConc!2920)

(assert (=> d!136352 (= (list!1837 lt!168688) (printList!377 thiss!17480 (list!1840 lt!168529)))))

(assert (=> d!136352 (= lt!168688 (printTailRec!389 thiss!17480 lt!168529 0 (BalanceConc!2921 Empty!1456)))))

(assert (=> d!136352 (= (print!428 thiss!17480 lt!168529) lt!168688)))

(declare-fun bs!46743 () Bool)

(assert (= bs!46743 d!136352))

(declare-fun m!575313 () Bool)

(assert (=> bs!46743 m!575313))

(declare-fun m!575315 () Bool)

(assert (=> bs!46743 m!575315))

(assert (=> bs!46743 m!575315))

(declare-fun m!575317 () Bool)

(assert (=> bs!46743 m!575317))

(assert (=> bs!46743 m!574939))

(assert (=> b!384110 d!136352))

(declare-fun d!136354 () Bool)

(declare-fun e!236473 () Bool)

(assert (=> d!136354 e!236473))

(declare-fun res!172312 () Bool)

(assert (=> d!136354 (=> res!172312 e!236473)))

(declare-fun lt!168691 () Bool)

(assert (=> d!136354 (= res!172312 (not lt!168691))))

(declare-fun e!236474 () Bool)

(assert (=> d!136354 (= lt!168691 e!236474)))

(declare-fun res!172311 () Bool)

(assert (=> d!136354 (=> res!172311 e!236474)))

(assert (=> d!136354 (= res!172311 ((_ is Nil!4229) lt!168537))))

(assert (=> d!136354 (= (isPrefix!477 lt!168537 lt!168530) lt!168691)))

(declare-fun b!384434 () Bool)

(declare-fun e!236475 () Bool)

(assert (=> b!384434 (= e!236475 (isPrefix!477 (tail!589 lt!168537) (tail!589 lt!168530)))))

(declare-fun b!384433 () Bool)

(declare-fun res!172310 () Bool)

(assert (=> b!384433 (=> (not res!172310) (not e!236475))))

(assert (=> b!384433 (= res!172310 (= (head!1035 lt!168537) (head!1035 lt!168530)))))

(declare-fun b!384432 () Bool)

(assert (=> b!384432 (= e!236474 e!236475)))

(declare-fun res!172313 () Bool)

(assert (=> b!384432 (=> (not res!172313) (not e!236475))))

(assert (=> b!384432 (= res!172313 (not ((_ is Nil!4229) lt!168530)))))

(declare-fun b!384435 () Bool)

(assert (=> b!384435 (= e!236473 (>= (size!3436 lt!168530) (size!3436 lt!168537)))))

(assert (= (and d!136354 (not res!172311)) b!384432))

(assert (= (and b!384432 res!172313) b!384433))

(assert (= (and b!384433 res!172310) b!384434))

(assert (= (and d!136354 (not res!172312)) b!384435))

(assert (=> b!384434 m!575131))

(declare-fun m!575319 () Bool)

(assert (=> b!384434 m!575319))

(assert (=> b!384434 m!575131))

(assert (=> b!384434 m!575319))

(declare-fun m!575321 () Bool)

(assert (=> b!384434 m!575321))

(assert (=> b!384433 m!575127))

(declare-fun m!575323 () Bool)

(assert (=> b!384433 m!575323))

(declare-fun m!575325 () Bool)

(assert (=> b!384435 m!575325))

(declare-fun m!575327 () Bool)

(assert (=> b!384435 m!575327))

(assert (=> b!384110 d!136354))

(declare-fun d!136356 () Bool)

(assert (=> d!136356 (isPrefix!477 lt!168537 (++!1194 lt!168537 lt!168535))))

(declare-fun lt!168694 () Unit!6862)

(declare-fun choose!3065 (List!4239 List!4239) Unit!6862)

(assert (=> d!136356 (= lt!168694 (choose!3065 lt!168537 lt!168535))))

(assert (=> d!136356 (= (lemmaConcatTwoListThenFirstIsPrefix!368 lt!168537 lt!168535) lt!168694)))

(declare-fun bs!46744 () Bool)

(assert (= bs!46744 d!136356))

(assert (=> bs!46744 m!574895))

(assert (=> bs!46744 m!574895))

(declare-fun m!575329 () Bool)

(assert (=> bs!46744 m!575329))

(declare-fun m!575331 () Bool)

(assert (=> bs!46744 m!575331))

(assert (=> b!384110 d!136356))

(declare-fun d!136358 () Bool)

(assert (=> d!136358 (rulesProduceIndividualToken!452 thiss!17480 rules!1920 lt!168562)))

(declare-fun lt!168711 () Unit!6862)

(declare-fun choose!3066 (LexerInterface!703 List!4240 List!4241 Token!1378) Unit!6862)

(assert (=> d!136358 (= lt!168711 (choose!3066 thiss!17480 rules!1920 tokens!465 lt!168562))))

(assert (=> d!136358 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136358 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!166 thiss!17480 rules!1920 tokens!465 lt!168562) lt!168711)))

(declare-fun bs!46752 () Bool)

(assert (= bs!46752 d!136358))

(assert (=> bs!46752 m!574949))

(declare-fun m!575391 () Bool)

(assert (=> bs!46752 m!575391))

(assert (=> bs!46752 m!574989))

(assert (=> b!384110 d!136358))

(declare-fun d!136362 () Bool)

(assert (=> d!136362 (= lt!168535 (_2!2725 lt!168553))))

(declare-fun lt!168714 () Unit!6862)

(declare-fun choose!3067 (List!4239 List!4239 List!4239 List!4239 List!4239) Unit!6862)

(assert (=> d!136362 (= lt!168714 (choose!3067 lt!168537 lt!168535 lt!168537 (_2!2725 lt!168553) lt!168518))))

(assert (=> d!136362 (isPrefix!477 lt!168537 lt!168518)))

(assert (=> d!136362 (= (lemmaSamePrefixThenSameSuffix!262 lt!168537 lt!168535 lt!168537 (_2!2725 lt!168553) lt!168518) lt!168714)))

(declare-fun bs!46753 () Bool)

(assert (= bs!46753 d!136362))

(declare-fun m!575393 () Bool)

(assert (=> bs!46753 m!575393))

(declare-fun m!575395 () Bool)

(assert (=> bs!46753 m!575395))

(assert (=> b!384110 d!136362))

(declare-fun d!136364 () Bool)

(declare-fun e!236485 () Bool)

(assert (=> d!136364 e!236485))

(declare-fun res!172317 () Bool)

(assert (=> d!136364 (=> (not res!172317) (not e!236485))))

(declare-fun lt!168715 () BalanceConc!2922)

(assert (=> d!136364 (= res!172317 (= (list!1840 lt!168715) (Cons!4231 separatorToken!170 Nil!4231)))))

(assert (=> d!136364 (= lt!168715 (singleton!170 separatorToken!170))))

(assert (=> d!136364 (= (singletonSeq!363 separatorToken!170) lt!168715)))

(declare-fun b!384448 () Bool)

(assert (=> b!384448 (= e!236485 (isBalanced!435 (c!75663 lt!168715)))))

(assert (= (and d!136364 res!172317) b!384448))

(declare-fun m!575397 () Bool)

(assert (=> d!136364 m!575397))

(declare-fun m!575399 () Bool)

(assert (=> d!136364 m!575399))

(declare-fun m!575401 () Bool)

(assert (=> b!384448 m!575401))

(assert (=> b!384110 d!136364))

(declare-fun d!136366 () Bool)

(declare-fun lt!168718 () Int)

(declare-fun size!3437 (List!4241) Int)

(assert (=> d!136366 (= lt!168718 (size!3437 (list!1840 (_1!2726 lt!168536))))))

(declare-fun size!3438 (Conc!1457) Int)

(assert (=> d!136366 (= lt!168718 (size!3438 (c!75663 (_1!2726 lt!168536))))))

(assert (=> d!136366 (= (size!3433 (_1!2726 lt!168536)) lt!168718)))

(declare-fun bs!46754 () Bool)

(assert (= bs!46754 d!136366))

(declare-fun m!575403 () Bool)

(assert (=> bs!46754 m!575403))

(assert (=> bs!46754 m!575403))

(declare-fun m!575405 () Bool)

(assert (=> bs!46754 m!575405))

(declare-fun m!575407 () Bool)

(assert (=> bs!46754 m!575407))

(assert (=> b!384110 d!136366))

(declare-fun d!136368 () Bool)

(declare-fun lt!168719 () Bool)

(assert (=> d!136368 (= lt!168719 (select (content!677 (usedCharacters!118 (regex!817 (rule!1470 lt!168562)))) lt!168522))))

(declare-fun e!236487 () Bool)

(assert (=> d!136368 (= lt!168719 e!236487)))

(declare-fun res!172319 () Bool)

(assert (=> d!136368 (=> (not res!172319) (not e!236487))))

(assert (=> d!136368 (= res!172319 ((_ is Cons!4229) (usedCharacters!118 (regex!817 (rule!1470 lt!168562)))))))

(assert (=> d!136368 (= (contains!891 (usedCharacters!118 (regex!817 (rule!1470 lt!168562))) lt!168522) lt!168719)))

(declare-fun b!384449 () Bool)

(declare-fun e!236486 () Bool)

(assert (=> b!384449 (= e!236487 e!236486)))

(declare-fun res!172318 () Bool)

(assert (=> b!384449 (=> res!172318 e!236486)))

(assert (=> b!384449 (= res!172318 (= (h!9626 (usedCharacters!118 (regex!817 (rule!1470 lt!168562)))) lt!168522))))

(declare-fun b!384450 () Bool)

(assert (=> b!384450 (= e!236486 (contains!891 (t!58735 (usedCharacters!118 (regex!817 (rule!1470 lt!168562)))) lt!168522))))

(assert (= (and d!136368 res!172319) b!384449))

(assert (= (and b!384449 (not res!172318)) b!384450))

(assert (=> d!136368 m!574977))

(declare-fun m!575409 () Bool)

(assert (=> d!136368 m!575409))

(declare-fun m!575411 () Bool)

(assert (=> d!136368 m!575411))

(declare-fun m!575413 () Bool)

(assert (=> b!384450 m!575413))

(assert (=> b!384110 d!136368))

(declare-fun d!136370 () Bool)

(declare-fun e!236490 () Bool)

(assert (=> d!136370 e!236490))

(declare-fun res!172324 () Bool)

(assert (=> d!136370 (=> (not res!172324) (not e!236490))))

(assert (=> d!136370 (= res!172324 (isDefined!873 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 lt!168562)))))))

(declare-fun lt!168722 () Unit!6862)

(declare-fun choose!3068 (LexerInterface!703 List!4240 List!4239 Token!1378) Unit!6862)

(assert (=> d!136370 (= lt!168722 (choose!3068 thiss!17480 rules!1920 lt!168531 lt!168562))))

(assert (=> d!136370 (rulesInvariant!669 thiss!17480 rules!1920)))

(assert (=> d!136370 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!176 thiss!17480 rules!1920 lt!168531 lt!168562) lt!168722)))

(declare-fun b!384455 () Bool)

(declare-fun res!172325 () Bool)

(assert (=> b!384455 (=> (not res!172325) (not e!236490))))

(assert (=> b!384455 (= res!172325 (matchR!359 (regex!817 (get!1499 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 lt!168562))))) (list!1837 (charsOf!460 lt!168562))))))

(declare-fun b!384456 () Bool)

(assert (=> b!384456 (= e!236490 (= (rule!1470 lt!168562) (get!1499 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 lt!168562))))))))

(assert (= (and d!136370 res!172324) b!384455))

(assert (= (and b!384455 res!172325) b!384456))

(assert (=> d!136370 m!574931))

(assert (=> d!136370 m!574931))

(declare-fun m!575415 () Bool)

(assert (=> d!136370 m!575415))

(declare-fun m!575417 () Bool)

(assert (=> d!136370 m!575417))

(assert (=> d!136370 m!574877))

(assert (=> b!384455 m!574953))

(assert (=> b!384455 m!574975))

(assert (=> b!384455 m!574931))

(assert (=> b!384455 m!574975))

(declare-fun m!575419 () Bool)

(assert (=> b!384455 m!575419))

(assert (=> b!384455 m!574931))

(declare-fun m!575421 () Bool)

(assert (=> b!384455 m!575421))

(assert (=> b!384455 m!574953))

(assert (=> b!384456 m!574931))

(assert (=> b!384456 m!574931))

(assert (=> b!384456 m!575421))

(assert (=> b!384110 d!136370))

(declare-fun d!136372 () Bool)

(assert (=> d!136372 (= (isEmpty!3074 (t!58737 tokens!465)) ((_ is Nil!4231) (t!58737 tokens!465)))))

(assert (=> b!384110 d!136372))

(declare-fun d!136374 () Bool)

(declare-fun lt!168792 () Bool)

(declare-fun e!236564 () Bool)

(assert (=> d!136374 (= lt!168792 e!236564)))

(declare-fun res!172377 () Bool)

(assert (=> d!136374 (=> (not res!172377) (not e!236564))))

(assert (=> d!136374 (= res!172377 (= (list!1840 (_1!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 lt!168562))))) (list!1840 (singletonSeq!363 lt!168562))))))

(declare-fun e!236565 () Bool)

(assert (=> d!136374 (= lt!168792 e!236565)))

(declare-fun res!172376 () Bool)

(assert (=> d!136374 (=> (not res!172376) (not e!236565))))

(declare-fun lt!168793 () tuple2!5020)

(assert (=> d!136374 (= res!172376 (= (size!3433 (_1!2726 lt!168793)) 1))))

(assert (=> d!136374 (= lt!168793 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 lt!168562))))))

(assert (=> d!136374 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136374 (= (rulesProduceIndividualToken!452 thiss!17480 rules!1920 lt!168562) lt!168792)))

(declare-fun b!384580 () Bool)

(declare-fun res!172378 () Bool)

(assert (=> b!384580 (=> (not res!172378) (not e!236565))))

(assert (=> b!384580 (= res!172378 (= (apply!1010 (_1!2726 lt!168793) 0) lt!168562))))

(declare-fun b!384581 () Bool)

(assert (=> b!384581 (= e!236565 (isEmpty!3073 (_2!2726 lt!168793)))))

(declare-fun b!384582 () Bool)

(assert (=> b!384582 (= e!236564 (isEmpty!3073 (_2!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 lt!168562))))))))

(assert (= (and d!136374 res!172376) b!384580))

(assert (= (and b!384580 res!172378) b!384581))

(assert (= (and d!136374 res!172377) b!384582))

(declare-fun m!575681 () Bool)

(assert (=> d!136374 m!575681))

(assert (=> d!136374 m!574957))

(declare-fun m!575683 () Bool)

(assert (=> d!136374 m!575683))

(assert (=> d!136374 m!574957))

(declare-fun m!575685 () Bool)

(assert (=> d!136374 m!575685))

(assert (=> d!136374 m!575685))

(declare-fun m!575687 () Bool)

(assert (=> d!136374 m!575687))

(declare-fun m!575689 () Bool)

(assert (=> d!136374 m!575689))

(assert (=> d!136374 m!574989))

(assert (=> d!136374 m!574957))

(declare-fun m!575691 () Bool)

(assert (=> b!384580 m!575691))

(declare-fun m!575693 () Bool)

(assert (=> b!384581 m!575693))

(assert (=> b!384582 m!574957))

(assert (=> b!384582 m!574957))

(assert (=> b!384582 m!575685))

(assert (=> b!384582 m!575685))

(assert (=> b!384582 m!575687))

(declare-fun m!575695 () Bool)

(assert (=> b!384582 m!575695))

(assert (=> b!384110 d!136374))

(declare-fun b!384600 () Bool)

(declare-fun e!236577 () List!4239)

(declare-fun call!24708 () List!4239)

(assert (=> b!384600 (= e!236577 call!24708)))

(declare-fun bm!24701 () Bool)

(declare-fun call!24706 () List!4239)

(declare-fun c!75760 () Bool)

(assert (=> bm!24701 (= call!24706 (usedCharacters!118 (ite c!75760 (regTwo!2595 (regex!817 (rule!1470 lt!168562))) (regTwo!2594 (regex!817 (rule!1470 lt!168562))))))))

(declare-fun b!384601 () Bool)

(assert (=> b!384601 (= e!236577 call!24708)))

(declare-fun b!384602 () Bool)

(declare-fun e!236574 () List!4239)

(assert (=> b!384602 (= e!236574 e!236577)))

(assert (=> b!384602 (= c!75760 ((_ is Union!1041) (regex!817 (rule!1470 lt!168562))))))

(declare-fun b!384603 () Bool)

(declare-fun e!236576 () List!4239)

(assert (=> b!384603 (= e!236576 (Cons!4229 (c!75662 (regex!817 (rule!1470 lt!168562))) Nil!4229))))

(declare-fun bm!24702 () Bool)

(declare-fun call!24709 () List!4239)

(declare-fun call!24707 () List!4239)

(assert (=> bm!24702 (= call!24709 call!24707)))

(declare-fun b!384604 () Bool)

(declare-fun e!236575 () List!4239)

(assert (=> b!384604 (= e!236575 Nil!4229)))

(declare-fun b!384605 () Bool)

(assert (=> b!384605 (= e!236575 e!236576)))

(declare-fun c!75762 () Bool)

(assert (=> b!384605 (= c!75762 ((_ is ElementMatch!1041) (regex!817 (rule!1470 lt!168562))))))

(declare-fun bm!24703 () Bool)

(assert (=> bm!24703 (= call!24708 (++!1194 call!24709 call!24706))))

(declare-fun b!384599 () Bool)

(assert (=> b!384599 (= e!236574 call!24707)))

(declare-fun d!136430 () Bool)

(declare-fun c!75761 () Bool)

(assert (=> d!136430 (= c!75761 (or ((_ is EmptyExpr!1041) (regex!817 (rule!1470 lt!168562))) ((_ is EmptyLang!1041) (regex!817 (rule!1470 lt!168562)))))))

(assert (=> d!136430 (= (usedCharacters!118 (regex!817 (rule!1470 lt!168562))) e!236575)))

(declare-fun b!384606 () Bool)

(declare-fun c!75759 () Bool)

(assert (=> b!384606 (= c!75759 ((_ is Star!1041) (regex!817 (rule!1470 lt!168562))))))

(assert (=> b!384606 (= e!236576 e!236574)))

(declare-fun bm!24704 () Bool)

(assert (=> bm!24704 (= call!24707 (usedCharacters!118 (ite c!75759 (reg!1370 (regex!817 (rule!1470 lt!168562))) (ite c!75760 (regOne!2595 (regex!817 (rule!1470 lt!168562))) (regOne!2594 (regex!817 (rule!1470 lt!168562)))))))))

(assert (= (and d!136430 c!75761) b!384604))

(assert (= (and d!136430 (not c!75761)) b!384605))

(assert (= (and b!384605 c!75762) b!384603))

(assert (= (and b!384605 (not c!75762)) b!384606))

(assert (= (and b!384606 c!75759) b!384599))

(assert (= (and b!384606 (not c!75759)) b!384602))

(assert (= (and b!384602 c!75760) b!384600))

(assert (= (and b!384602 (not c!75760)) b!384601))

(assert (= (or b!384600 b!384601) bm!24702))

(assert (= (or b!384600 b!384601) bm!24701))

(assert (= (or b!384600 b!384601) bm!24703))

(assert (= (or b!384599 bm!24702) bm!24704))

(declare-fun m!575697 () Bool)

(assert (=> bm!24701 m!575697))

(declare-fun m!575699 () Bool)

(assert (=> bm!24703 m!575699))

(declare-fun m!575701 () Bool)

(assert (=> bm!24704 m!575701))

(assert (=> b!384110 d!136430))

(declare-fun b!384625 () Bool)

(declare-fun res!172398 () Bool)

(declare-fun e!236585 () Bool)

(assert (=> b!384625 (=> (not res!172398) (not e!236585))))

(declare-fun lt!168806 () Option!1034)

(declare-fun apply!1016 (TokenValueInjection!1450 BalanceConc!2920) TokenValue!839)

(assert (=> b!384625 (= res!172398 (= (value!27600 (_1!2725 (get!1500 lt!168806))) (apply!1016 (transformation!817 (rule!1470 (_1!2725 (get!1500 lt!168806)))) (seqFromList!999 (originalCharacters!860 (_1!2725 (get!1500 lt!168806)))))))))

(declare-fun b!384626 () Bool)

(assert (=> b!384626 (= e!236585 (contains!890 rules!1920 (rule!1470 (_1!2725 (get!1500 lt!168806)))))))

(declare-fun b!384627 () Bool)

(declare-fun res!172396 () Bool)

(assert (=> b!384627 (=> (not res!172396) (not e!236585))))

(assert (=> b!384627 (= res!172396 (= (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168806)))) (originalCharacters!860 (_1!2725 (get!1500 lt!168806)))))))

(declare-fun b!384628 () Bool)

(declare-fun res!172397 () Bool)

(assert (=> b!384628 (=> (not res!172397) (not e!236585))))

(assert (=> b!384628 (= res!172397 (matchR!359 (regex!817 (rule!1470 (_1!2725 (get!1500 lt!168806)))) (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168806))))))))

(declare-fun b!384629 () Bool)

(declare-fun res!172399 () Bool)

(assert (=> b!384629 (=> (not res!172399) (not e!236585))))

(assert (=> b!384629 (= res!172399 (= (++!1194 (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168806)))) (_2!2725 (get!1500 lt!168806))) lt!168518))))

(declare-fun b!384630 () Bool)

(declare-fun e!236584 () Bool)

(assert (=> b!384630 (= e!236584 e!236585)))

(declare-fun res!172393 () Bool)

(assert (=> b!384630 (=> (not res!172393) (not e!236585))))

(assert (=> b!384630 (= res!172393 (isDefined!872 lt!168806))))

(declare-fun b!384631 () Bool)

(declare-fun res!172394 () Bool)

(assert (=> b!384631 (=> (not res!172394) (not e!236585))))

(assert (=> b!384631 (= res!172394 (< (size!3436 (_2!2725 (get!1500 lt!168806))) (size!3436 lt!168518)))))

(declare-fun d!136432 () Bool)

(assert (=> d!136432 e!236584))

(declare-fun res!172395 () Bool)

(assert (=> d!136432 (=> res!172395 e!236584)))

(declare-fun isEmpty!3078 (Option!1034) Bool)

(assert (=> d!136432 (= res!172395 (isEmpty!3078 lt!168806))))

(declare-fun e!236586 () Option!1034)

(assert (=> d!136432 (= lt!168806 e!236586)))

(declare-fun c!75765 () Bool)

(assert (=> d!136432 (= c!75765 (and ((_ is Cons!4230) rules!1920) ((_ is Nil!4230) (t!58736 rules!1920))))))

(declare-fun lt!168804 () Unit!6862)

(declare-fun lt!168805 () Unit!6862)

(assert (=> d!136432 (= lt!168804 lt!168805)))

(assert (=> d!136432 (isPrefix!477 lt!168518 lt!168518)))

(declare-fun lemmaIsPrefixRefl!263 (List!4239 List!4239) Unit!6862)

(assert (=> d!136432 (= lt!168805 (lemmaIsPrefixRefl!263 lt!168518 lt!168518))))

(declare-fun rulesValidInductive!258 (LexerInterface!703 List!4240) Bool)

(assert (=> d!136432 (rulesValidInductive!258 thiss!17480 rules!1920)))

(assert (=> d!136432 (= (maxPrefix!419 thiss!17480 rules!1920 lt!168518) lt!168806)))

(declare-fun call!24712 () Option!1034)

(declare-fun bm!24707 () Bool)

(declare-fun maxPrefixOneRule!197 (LexerInterface!703 Rule!1434 List!4239) Option!1034)

(assert (=> bm!24707 (= call!24712 (maxPrefixOneRule!197 thiss!17480 (h!9627 rules!1920) lt!168518))))

(declare-fun b!384632 () Bool)

(assert (=> b!384632 (= e!236586 call!24712)))

(declare-fun b!384633 () Bool)

(declare-fun lt!168807 () Option!1034)

(declare-fun lt!168808 () Option!1034)

(assert (=> b!384633 (= e!236586 (ite (and ((_ is None!1033) lt!168807) ((_ is None!1033) lt!168808)) None!1033 (ite ((_ is None!1033) lt!168808) lt!168807 (ite ((_ is None!1033) lt!168807) lt!168808 (ite (>= (size!3432 (_1!2725 (v!15200 lt!168807))) (size!3432 (_1!2725 (v!15200 lt!168808)))) lt!168807 lt!168808)))))))

(assert (=> b!384633 (= lt!168807 call!24712)))

(assert (=> b!384633 (= lt!168808 (maxPrefix!419 thiss!17480 (t!58736 rules!1920) lt!168518))))

(assert (= (and d!136432 c!75765) b!384632))

(assert (= (and d!136432 (not c!75765)) b!384633))

(assert (= (or b!384632 b!384633) bm!24707))

(assert (= (and d!136432 (not res!172395)) b!384630))

(assert (= (and b!384630 res!172393) b!384627))

(assert (= (and b!384627 res!172396) b!384631))

(assert (= (and b!384631 res!172394) b!384629))

(assert (= (and b!384629 res!172399) b!384625))

(assert (= (and b!384625 res!172398) b!384628))

(assert (= (and b!384628 res!172397) b!384626))

(declare-fun m!575703 () Bool)

(assert (=> b!384631 m!575703))

(declare-fun m!575705 () Bool)

(assert (=> b!384631 m!575705))

(declare-fun m!575707 () Bool)

(assert (=> b!384631 m!575707))

(assert (=> b!384625 m!575703))

(declare-fun m!575709 () Bool)

(assert (=> b!384625 m!575709))

(assert (=> b!384625 m!575709))

(declare-fun m!575711 () Bool)

(assert (=> b!384625 m!575711))

(declare-fun m!575713 () Bool)

(assert (=> bm!24707 m!575713))

(assert (=> b!384626 m!575703))

(declare-fun m!575715 () Bool)

(assert (=> b!384626 m!575715))

(assert (=> b!384628 m!575703))

(declare-fun m!575717 () Bool)

(assert (=> b!384628 m!575717))

(assert (=> b!384628 m!575717))

(declare-fun m!575719 () Bool)

(assert (=> b!384628 m!575719))

(assert (=> b!384628 m!575719))

(declare-fun m!575721 () Bool)

(assert (=> b!384628 m!575721))

(assert (=> b!384629 m!575703))

(assert (=> b!384629 m!575717))

(assert (=> b!384629 m!575717))

(assert (=> b!384629 m!575719))

(assert (=> b!384629 m!575719))

(declare-fun m!575723 () Bool)

(assert (=> b!384629 m!575723))

(declare-fun m!575725 () Bool)

(assert (=> d!136432 m!575725))

(declare-fun m!575727 () Bool)

(assert (=> d!136432 m!575727))

(declare-fun m!575729 () Bool)

(assert (=> d!136432 m!575729))

(declare-fun m!575731 () Bool)

(assert (=> d!136432 m!575731))

(declare-fun m!575733 () Bool)

(assert (=> b!384630 m!575733))

(declare-fun m!575735 () Bool)

(assert (=> b!384633 m!575735))

(assert (=> b!384627 m!575703))

(assert (=> b!384627 m!575717))

(assert (=> b!384627 m!575717))

(assert (=> b!384627 m!575719))

(assert (=> b!384110 d!136432))

(declare-fun d!136434 () Bool)

(assert (=> d!136434 (dynLambda!2453 lambda!11934 lt!168562)))

(declare-fun lt!168811 () Unit!6862)

(declare-fun choose!3069 (List!4241 Int Token!1378) Unit!6862)

(assert (=> d!136434 (= lt!168811 (choose!3069 tokens!465 lambda!11934 lt!168562))))

(declare-fun e!236589 () Bool)

(assert (=> d!136434 e!236589))

(declare-fun res!172402 () Bool)

(assert (=> d!136434 (=> (not res!172402) (not e!236589))))

(assert (=> d!136434 (= res!172402 (forall!1180 tokens!465 lambda!11934))))

(assert (=> d!136434 (= (forallContained!370 tokens!465 lambda!11934 lt!168562) lt!168811)))

(declare-fun b!384636 () Bool)

(declare-fun contains!892 (List!4241 Token!1378) Bool)

(assert (=> b!384636 (= e!236589 (contains!892 tokens!465 lt!168562))))

(assert (= (and d!136434 res!172402) b!384636))

(declare-fun b_lambda!15151 () Bool)

(assert (=> (not b_lambda!15151) (not d!136434)))

(declare-fun m!575737 () Bool)

(assert (=> d!136434 m!575737))

(declare-fun m!575739 () Bool)

(assert (=> d!136434 m!575739))

(declare-fun m!575741 () Bool)

(assert (=> d!136434 m!575741))

(declare-fun m!575743 () Bool)

(assert (=> b!384636 m!575743))

(assert (=> b!384110 d!136434))

(declare-fun d!136436 () Bool)

(declare-fun isEmpty!3079 (Option!1033) Bool)

(assert (=> d!136436 (= (isDefined!873 lt!168559) (not (isEmpty!3079 lt!168559)))))

(declare-fun bs!46789 () Bool)

(assert (= bs!46789 d!136436))

(declare-fun m!575745 () Bool)

(assert (=> bs!46789 m!575745))

(assert (=> b!384110 d!136436))

(declare-fun d!136438 () Bool)

(assert (=> d!136438 (= (head!1035 lt!168531) (h!9626 lt!168531))))

(assert (=> b!384110 d!136438))

(declare-fun d!136440 () Bool)

(declare-fun lt!168836 () BalanceConc!2920)

(declare-fun printListTailRec!185 (LexerInterface!703 List!4241 List!4239) List!4239)

(declare-fun dropList!220 (BalanceConc!2922 Int) List!4241)

(assert (=> d!136440 (= (list!1837 lt!168836) (printListTailRec!185 thiss!17480 (dropList!220 lt!168543 0) (list!1837 (BalanceConc!2921 Empty!1456))))))

(declare-fun e!236606 () BalanceConc!2920)

(assert (=> d!136440 (= lt!168836 e!236606)))

(declare-fun c!75772 () Bool)

(assert (=> d!136440 (= c!75772 (>= 0 (size!3433 lt!168543)))))

(declare-fun e!236607 () Bool)

(assert (=> d!136440 e!236607))

(declare-fun res!172421 () Bool)

(assert (=> d!136440 (=> (not res!172421) (not e!236607))))

(assert (=> d!136440 (= res!172421 (>= 0 0))))

(assert (=> d!136440 (= (printTailRec!389 thiss!17480 lt!168543 0 (BalanceConc!2921 Empty!1456)) lt!168836)))

(declare-fun b!384667 () Bool)

(assert (=> b!384667 (= e!236607 (<= 0 (size!3433 lt!168543)))))

(declare-fun b!384668 () Bool)

(assert (=> b!384668 (= e!236606 (BalanceConc!2921 Empty!1456))))

(declare-fun b!384669 () Bool)

(declare-fun ++!1196 (BalanceConc!2920 BalanceConc!2920) BalanceConc!2920)

(assert (=> b!384669 (= e!236606 (printTailRec!389 thiss!17480 lt!168543 (+ 0 1) (++!1196 (BalanceConc!2921 Empty!1456) (charsOf!460 (apply!1010 lt!168543 0)))))))

(declare-fun lt!168835 () List!4241)

(assert (=> b!384669 (= lt!168835 (list!1840 lt!168543))))

(declare-fun lt!168841 () Unit!6862)

(declare-fun lemmaDropApply!260 (List!4241 Int) Unit!6862)

(assert (=> b!384669 (= lt!168841 (lemmaDropApply!260 lt!168835 0))))

(declare-fun drop!283 (List!4241 Int) List!4241)

(assert (=> b!384669 (= (head!1036 (drop!283 lt!168835 0)) (apply!1014 lt!168835 0))))

(declare-fun lt!168837 () Unit!6862)

(assert (=> b!384669 (= lt!168837 lt!168841)))

(declare-fun lt!168838 () List!4241)

(assert (=> b!384669 (= lt!168838 (list!1840 lt!168543))))

(declare-fun lt!168839 () Unit!6862)

(declare-fun lemmaDropTail!252 (List!4241 Int) Unit!6862)

(assert (=> b!384669 (= lt!168839 (lemmaDropTail!252 lt!168838 0))))

(declare-fun tail!590 (List!4241) List!4241)

(assert (=> b!384669 (= (tail!590 (drop!283 lt!168838 0)) (drop!283 lt!168838 (+ 0 1)))))

(declare-fun lt!168840 () Unit!6862)

(assert (=> b!384669 (= lt!168840 lt!168839)))

(assert (= (and d!136440 res!172421) b!384667))

(assert (= (and d!136440 c!75772) b!384668))

(assert (= (and d!136440 (not c!75772)) b!384669))

(declare-fun m!575803 () Bool)

(assert (=> d!136440 m!575803))

(declare-fun m!575805 () Bool)

(assert (=> d!136440 m!575805))

(declare-fun m!575807 () Bool)

(assert (=> d!136440 m!575807))

(assert (=> d!136440 m!575805))

(declare-fun m!575809 () Bool)

(assert (=> d!136440 m!575809))

(declare-fun m!575811 () Bool)

(assert (=> d!136440 m!575811))

(assert (=> d!136440 m!575809))

(assert (=> b!384667 m!575803))

(declare-fun m!575813 () Bool)

(assert (=> b!384669 m!575813))

(declare-fun m!575815 () Bool)

(assert (=> b!384669 m!575815))

(declare-fun m!575817 () Bool)

(assert (=> b!384669 m!575817))

(declare-fun m!575819 () Bool)

(assert (=> b!384669 m!575819))

(declare-fun m!575821 () Bool)

(assert (=> b!384669 m!575821))

(declare-fun m!575823 () Bool)

(assert (=> b!384669 m!575823))

(declare-fun m!575825 () Bool)

(assert (=> b!384669 m!575825))

(assert (=> b!384669 m!575821))

(declare-fun m!575827 () Bool)

(assert (=> b!384669 m!575827))

(declare-fun m!575829 () Bool)

(assert (=> b!384669 m!575829))

(declare-fun m!575831 () Bool)

(assert (=> b!384669 m!575831))

(assert (=> b!384669 m!575823))

(assert (=> b!384669 m!575817))

(assert (=> b!384669 m!575813))

(declare-fun m!575833 () Bool)

(assert (=> b!384669 m!575833))

(declare-fun m!575835 () Bool)

(assert (=> b!384669 m!575835))

(declare-fun m!575837 () Bool)

(assert (=> b!384669 m!575837))

(assert (=> b!384669 m!575835))

(assert (=> b!384110 d!136440))

(declare-fun d!136454 () Bool)

(declare-fun e!236608 () Bool)

(assert (=> d!136454 e!236608))

(declare-fun res!172422 () Bool)

(assert (=> d!136454 (=> (not res!172422) (not e!236608))))

(assert (=> d!136454 (= res!172422 (isDefined!873 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 separatorToken!170)))))))

(declare-fun lt!168842 () Unit!6862)

(assert (=> d!136454 (= lt!168842 (choose!3068 thiss!17480 rules!1920 lt!168561 separatorToken!170))))

(assert (=> d!136454 (rulesInvariant!669 thiss!17480 rules!1920)))

(assert (=> d!136454 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!176 thiss!17480 rules!1920 lt!168561 separatorToken!170) lt!168842)))

(declare-fun b!384670 () Bool)

(declare-fun res!172423 () Bool)

(assert (=> b!384670 (=> (not res!172423) (not e!236608))))

(assert (=> b!384670 (= res!172423 (matchR!359 (regex!817 (get!1499 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 separatorToken!170))))) (list!1837 (charsOf!460 separatorToken!170))))))

(declare-fun b!384671 () Bool)

(assert (=> b!384671 (= e!236608 (= (rule!1470 separatorToken!170) (get!1499 (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 separatorToken!170))))))))

(assert (= (and d!136454 res!172422) b!384670))

(assert (= (and b!384670 res!172423) b!384671))

(assert (=> d!136454 m!574981))

(assert (=> d!136454 m!574981))

(declare-fun m!575839 () Bool)

(assert (=> d!136454 m!575839))

(declare-fun m!575841 () Bool)

(assert (=> d!136454 m!575841))

(assert (=> d!136454 m!574877))

(assert (=> b!384670 m!574889))

(assert (=> b!384670 m!574891))

(assert (=> b!384670 m!574981))

(assert (=> b!384670 m!574891))

(declare-fun m!575843 () Bool)

(assert (=> b!384670 m!575843))

(assert (=> b!384670 m!574981))

(declare-fun m!575845 () Bool)

(assert (=> b!384670 m!575845))

(assert (=> b!384670 m!574889))

(assert (=> b!384671 m!574981))

(assert (=> b!384671 m!574981))

(assert (=> b!384671 m!575845))

(assert (=> b!384110 d!136454))

(declare-fun b!384672 () Bool)

(declare-fun res!172429 () Bool)

(declare-fun e!236610 () Bool)

(assert (=> b!384672 (=> (not res!172429) (not e!236610))))

(declare-fun lt!168845 () Option!1034)

(assert (=> b!384672 (= res!172429 (= (value!27600 (_1!2725 (get!1500 lt!168845))) (apply!1016 (transformation!817 (rule!1470 (_1!2725 (get!1500 lt!168845)))) (seqFromList!999 (originalCharacters!860 (_1!2725 (get!1500 lt!168845)))))))))

(declare-fun b!384673 () Bool)

(assert (=> b!384673 (= e!236610 (contains!890 rules!1920 (rule!1470 (_1!2725 (get!1500 lt!168845)))))))

(declare-fun b!384674 () Bool)

(declare-fun res!172427 () Bool)

(assert (=> b!384674 (=> (not res!172427) (not e!236610))))

(assert (=> b!384674 (= res!172427 (= (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168845)))) (originalCharacters!860 (_1!2725 (get!1500 lt!168845)))))))

(declare-fun b!384675 () Bool)

(declare-fun res!172428 () Bool)

(assert (=> b!384675 (=> (not res!172428) (not e!236610))))

(assert (=> b!384675 (= res!172428 (matchR!359 (regex!817 (rule!1470 (_1!2725 (get!1500 lt!168845)))) (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168845))))))))

(declare-fun b!384676 () Bool)

(declare-fun res!172430 () Bool)

(assert (=> b!384676 (=> (not res!172430) (not e!236610))))

(assert (=> b!384676 (= res!172430 (= (++!1194 (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168845)))) (_2!2725 (get!1500 lt!168845))) lt!168535))))

(declare-fun b!384677 () Bool)

(declare-fun e!236609 () Bool)

(assert (=> b!384677 (= e!236609 e!236610)))

(declare-fun res!172424 () Bool)

(assert (=> b!384677 (=> (not res!172424) (not e!236610))))

(assert (=> b!384677 (= res!172424 (isDefined!872 lt!168845))))

(declare-fun b!384678 () Bool)

(declare-fun res!172425 () Bool)

(assert (=> b!384678 (=> (not res!172425) (not e!236610))))

(assert (=> b!384678 (= res!172425 (< (size!3436 (_2!2725 (get!1500 lt!168845))) (size!3436 lt!168535)))))

(declare-fun d!136456 () Bool)

(assert (=> d!136456 e!236609))

(declare-fun res!172426 () Bool)

(assert (=> d!136456 (=> res!172426 e!236609)))

(assert (=> d!136456 (= res!172426 (isEmpty!3078 lt!168845))))

(declare-fun e!236611 () Option!1034)

(assert (=> d!136456 (= lt!168845 e!236611)))

(declare-fun c!75773 () Bool)

(assert (=> d!136456 (= c!75773 (and ((_ is Cons!4230) rules!1920) ((_ is Nil!4230) (t!58736 rules!1920))))))

(declare-fun lt!168843 () Unit!6862)

(declare-fun lt!168844 () Unit!6862)

(assert (=> d!136456 (= lt!168843 lt!168844)))

(assert (=> d!136456 (isPrefix!477 lt!168535 lt!168535)))

(assert (=> d!136456 (= lt!168844 (lemmaIsPrefixRefl!263 lt!168535 lt!168535))))

(assert (=> d!136456 (rulesValidInductive!258 thiss!17480 rules!1920)))

(assert (=> d!136456 (= (maxPrefix!419 thiss!17480 rules!1920 lt!168535) lt!168845)))

(declare-fun bm!24709 () Bool)

(declare-fun call!24714 () Option!1034)

(assert (=> bm!24709 (= call!24714 (maxPrefixOneRule!197 thiss!17480 (h!9627 rules!1920) lt!168535))))

(declare-fun b!384679 () Bool)

(assert (=> b!384679 (= e!236611 call!24714)))

(declare-fun b!384680 () Bool)

(declare-fun lt!168846 () Option!1034)

(declare-fun lt!168847 () Option!1034)

(assert (=> b!384680 (= e!236611 (ite (and ((_ is None!1033) lt!168846) ((_ is None!1033) lt!168847)) None!1033 (ite ((_ is None!1033) lt!168847) lt!168846 (ite ((_ is None!1033) lt!168846) lt!168847 (ite (>= (size!3432 (_1!2725 (v!15200 lt!168846))) (size!3432 (_1!2725 (v!15200 lt!168847)))) lt!168846 lt!168847)))))))

(assert (=> b!384680 (= lt!168846 call!24714)))

(assert (=> b!384680 (= lt!168847 (maxPrefix!419 thiss!17480 (t!58736 rules!1920) lt!168535))))

(assert (= (and d!136456 c!75773) b!384679))

(assert (= (and d!136456 (not c!75773)) b!384680))

(assert (= (or b!384679 b!384680) bm!24709))

(assert (= (and d!136456 (not res!172426)) b!384677))

(assert (= (and b!384677 res!172424) b!384674))

(assert (= (and b!384674 res!172427) b!384678))

(assert (= (and b!384678 res!172425) b!384676))

(assert (= (and b!384676 res!172430) b!384672))

(assert (= (and b!384672 res!172429) b!384675))

(assert (= (and b!384675 res!172428) b!384673))

(declare-fun m!575847 () Bool)

(assert (=> b!384678 m!575847))

(declare-fun m!575849 () Bool)

(assert (=> b!384678 m!575849))

(declare-fun m!575851 () Bool)

(assert (=> b!384678 m!575851))

(assert (=> b!384672 m!575847))

(declare-fun m!575853 () Bool)

(assert (=> b!384672 m!575853))

(assert (=> b!384672 m!575853))

(declare-fun m!575855 () Bool)

(assert (=> b!384672 m!575855))

(declare-fun m!575857 () Bool)

(assert (=> bm!24709 m!575857))

(assert (=> b!384673 m!575847))

(declare-fun m!575859 () Bool)

(assert (=> b!384673 m!575859))

(assert (=> b!384675 m!575847))

(declare-fun m!575861 () Bool)

(assert (=> b!384675 m!575861))

(assert (=> b!384675 m!575861))

(declare-fun m!575863 () Bool)

(assert (=> b!384675 m!575863))

(assert (=> b!384675 m!575863))

(declare-fun m!575865 () Bool)

(assert (=> b!384675 m!575865))

(assert (=> b!384676 m!575847))

(assert (=> b!384676 m!575861))

(assert (=> b!384676 m!575861))

(assert (=> b!384676 m!575863))

(assert (=> b!384676 m!575863))

(declare-fun m!575867 () Bool)

(assert (=> b!384676 m!575867))

(declare-fun m!575869 () Bool)

(assert (=> d!136456 m!575869))

(declare-fun m!575871 () Bool)

(assert (=> d!136456 m!575871))

(declare-fun m!575873 () Bool)

(assert (=> d!136456 m!575873))

(assert (=> d!136456 m!575731))

(declare-fun m!575875 () Bool)

(assert (=> b!384677 m!575875))

(declare-fun m!575877 () Bool)

(assert (=> b!384680 m!575877))

(assert (=> b!384674 m!575847))

(assert (=> b!384674 m!575861))

(assert (=> b!384674 m!575861))

(assert (=> b!384674 m!575863))

(assert (=> b!384110 d!136456))

(declare-fun d!136458 () Bool)

(declare-fun lt!168850 () Int)

(assert (=> d!136458 (= lt!168850 (size!3437 (list!1840 (_1!2726 lt!168541))))))

(assert (=> d!136458 (= lt!168850 (size!3438 (c!75663 (_1!2726 lt!168541))))))

(assert (=> d!136458 (= (size!3433 (_1!2726 lt!168541)) lt!168850)))

(declare-fun bs!46792 () Bool)

(assert (= bs!46792 d!136458))

(assert (=> bs!46792 m!575225))

(assert (=> bs!46792 m!575225))

(declare-fun m!575879 () Bool)

(assert (=> bs!46792 m!575879))

(declare-fun m!575881 () Bool)

(assert (=> bs!46792 m!575881))

(assert (=> b!384110 d!136458))

(declare-fun d!136460 () Bool)

(assert (=> d!136460 (= (head!1035 lt!168558) (h!9626 lt!168558))))

(assert (=> b!384110 d!136460))

(declare-fun d!136462 () Bool)

(declare-fun lt!168852 () BalanceConc!2920)

(assert (=> d!136462 (= (list!1837 lt!168852) (printListTailRec!185 thiss!17480 (dropList!220 lt!168529 0) (list!1837 (BalanceConc!2921 Empty!1456))))))

(declare-fun e!236614 () BalanceConc!2920)

(assert (=> d!136462 (= lt!168852 e!236614)))

(declare-fun c!75774 () Bool)

(assert (=> d!136462 (= c!75774 (>= 0 (size!3433 lt!168529)))))

(declare-fun e!236615 () Bool)

(assert (=> d!136462 e!236615))

(declare-fun res!172435 () Bool)

(assert (=> d!136462 (=> (not res!172435) (not e!236615))))

(assert (=> d!136462 (= res!172435 (>= 0 0))))

(assert (=> d!136462 (= (printTailRec!389 thiss!17480 lt!168529 0 (BalanceConc!2921 Empty!1456)) lt!168852)))

(declare-fun b!384685 () Bool)

(assert (=> b!384685 (= e!236615 (<= 0 (size!3433 lt!168529)))))

(declare-fun b!384686 () Bool)

(assert (=> b!384686 (= e!236614 (BalanceConc!2921 Empty!1456))))

(declare-fun b!384687 () Bool)

(assert (=> b!384687 (= e!236614 (printTailRec!389 thiss!17480 lt!168529 (+ 0 1) (++!1196 (BalanceConc!2921 Empty!1456) (charsOf!460 (apply!1010 lt!168529 0)))))))

(declare-fun lt!168851 () List!4241)

(assert (=> b!384687 (= lt!168851 (list!1840 lt!168529))))

(declare-fun lt!168857 () Unit!6862)

(assert (=> b!384687 (= lt!168857 (lemmaDropApply!260 lt!168851 0))))

(assert (=> b!384687 (= (head!1036 (drop!283 lt!168851 0)) (apply!1014 lt!168851 0))))

(declare-fun lt!168853 () Unit!6862)

(assert (=> b!384687 (= lt!168853 lt!168857)))

(declare-fun lt!168854 () List!4241)

(assert (=> b!384687 (= lt!168854 (list!1840 lt!168529))))

(declare-fun lt!168855 () Unit!6862)

(assert (=> b!384687 (= lt!168855 (lemmaDropTail!252 lt!168854 0))))

(assert (=> b!384687 (= (tail!590 (drop!283 lt!168854 0)) (drop!283 lt!168854 (+ 0 1)))))

(declare-fun lt!168856 () Unit!6862)

(assert (=> b!384687 (= lt!168856 lt!168855)))

(assert (= (and d!136462 res!172435) b!384685))

(assert (= (and d!136462 c!75774) b!384686))

(assert (= (and d!136462 (not c!75774)) b!384687))

(declare-fun m!575883 () Bool)

(assert (=> d!136462 m!575883))

(declare-fun m!575885 () Bool)

(assert (=> d!136462 m!575885))

(declare-fun m!575887 () Bool)

(assert (=> d!136462 m!575887))

(assert (=> d!136462 m!575885))

(assert (=> d!136462 m!575809))

(declare-fun m!575889 () Bool)

(assert (=> d!136462 m!575889))

(assert (=> d!136462 m!575809))

(assert (=> b!384685 m!575883))

(declare-fun m!575891 () Bool)

(assert (=> b!384687 m!575891))

(declare-fun m!575893 () Bool)

(assert (=> b!384687 m!575893))

(declare-fun m!575899 () Bool)

(assert (=> b!384687 m!575899))

(declare-fun m!575901 () Bool)

(assert (=> b!384687 m!575901))

(declare-fun m!575903 () Bool)

(assert (=> b!384687 m!575903))

(declare-fun m!575905 () Bool)

(assert (=> b!384687 m!575905))

(declare-fun m!575907 () Bool)

(assert (=> b!384687 m!575907))

(assert (=> b!384687 m!575903))

(declare-fun m!575911 () Bool)

(assert (=> b!384687 m!575911))

(declare-fun m!575913 () Bool)

(assert (=> b!384687 m!575913))

(assert (=> b!384687 m!575315))

(assert (=> b!384687 m!575905))

(assert (=> b!384687 m!575899))

(assert (=> b!384687 m!575891))

(declare-fun m!575917 () Bool)

(assert (=> b!384687 m!575917))

(declare-fun m!575919 () Bool)

(assert (=> b!384687 m!575919))

(declare-fun m!575921 () Bool)

(assert (=> b!384687 m!575921))

(assert (=> b!384687 m!575919))

(assert (=> b!384110 d!136462))

(declare-fun d!136466 () Bool)

(declare-fun e!236619 () Bool)

(assert (=> d!136466 e!236619))

(declare-fun res!172440 () Bool)

(assert (=> d!136466 (=> (not res!172440) (not e!236619))))

(declare-fun e!236620 () Bool)

(assert (=> d!136466 (= res!172440 e!236620)))

(declare-fun c!75775 () Bool)

(declare-fun lt!168860 () tuple2!5020)

(assert (=> d!136466 (= c!75775 (> (size!3433 (_1!2726 lt!168860)) 0))))

(assert (=> d!136466 (= lt!168860 (lexTailRecV2!231 thiss!17480 rules!1920 lt!168552 (BalanceConc!2921 Empty!1456) lt!168552 (BalanceConc!2923 Empty!1457)))))

(assert (=> d!136466 (= (lex!495 thiss!17480 rules!1920 lt!168552) lt!168860)))

(declare-fun b!384691 () Bool)

(assert (=> b!384691 (= e!236619 (= (list!1837 (_2!2726 lt!168860)) (_2!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 lt!168552)))))))

(declare-fun b!384692 () Bool)

(declare-fun e!236618 () Bool)

(assert (=> b!384692 (= e!236618 (not (isEmpty!3071 (_1!2726 lt!168860))))))

(declare-fun b!384693 () Bool)

(declare-fun res!172441 () Bool)

(assert (=> b!384693 (=> (not res!172441) (not e!236619))))

(assert (=> b!384693 (= res!172441 (= (list!1840 (_1!2726 lt!168860)) (_1!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 lt!168552)))))))

(declare-fun b!384694 () Bool)

(assert (=> b!384694 (= e!236620 (= (_2!2726 lt!168860) lt!168552))))

(declare-fun b!384695 () Bool)

(assert (=> b!384695 (= e!236620 e!236618)))

(declare-fun res!172439 () Bool)

(assert (=> b!384695 (= res!172439 (< (size!3435 (_2!2726 lt!168860)) (size!3435 lt!168552)))))

(assert (=> b!384695 (=> (not res!172439) (not e!236618))))

(assert (= (and d!136466 c!75775) b!384695))

(assert (= (and d!136466 (not c!75775)) b!384694))

(assert (= (and b!384695 res!172439) b!384692))

(assert (= (and d!136466 res!172440) b!384693))

(assert (= (and b!384693 res!172441) b!384691))

(declare-fun m!575929 () Bool)

(assert (=> b!384695 m!575929))

(declare-fun m!575931 () Bool)

(assert (=> b!384695 m!575931))

(declare-fun m!575933 () Bool)

(assert (=> b!384692 m!575933))

(declare-fun m!575935 () Bool)

(assert (=> b!384693 m!575935))

(declare-fun m!575937 () Bool)

(assert (=> b!384693 m!575937))

(assert (=> b!384693 m!575937))

(declare-fun m!575939 () Bool)

(assert (=> b!384693 m!575939))

(declare-fun m!575941 () Bool)

(assert (=> b!384691 m!575941))

(assert (=> b!384691 m!575937))

(assert (=> b!384691 m!575937))

(assert (=> b!384691 m!575939))

(declare-fun m!575943 () Bool)

(assert (=> d!136466 m!575943))

(declare-fun m!575947 () Bool)

(assert (=> d!136466 m!575947))

(assert (=> b!384110 d!136466))

(declare-fun b!384719 () Bool)

(declare-fun e!236636 () Option!1033)

(declare-fun e!236637 () Option!1033)

(assert (=> b!384719 (= e!236636 e!236637)))

(declare-fun c!75784 () Bool)

(assert (=> b!384719 (= c!75784 (and ((_ is Cons!4230) rules!1920) (not (= (tag!1055 (h!9627 rules!1920)) (tag!1055 (rule!1470 separatorToken!170))))))))

(declare-fun b!384720 () Bool)

(declare-fun e!236635 () Bool)

(declare-fun lt!168878 () Option!1033)

(assert (=> b!384720 (= e!236635 (= (tag!1055 (get!1499 lt!168878)) (tag!1055 (rule!1470 separatorToken!170))))))

(declare-fun b!384721 () Bool)

(declare-fun lt!168880 () Unit!6862)

(declare-fun lt!168879 () Unit!6862)

(assert (=> b!384721 (= lt!168880 lt!168879)))

(assert (=> b!384721 (rulesInvariant!669 thiss!17480 (t!58736 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!61 (LexerInterface!703 Rule!1434 List!4240) Unit!6862)

(assert (=> b!384721 (= lt!168879 (lemmaInvariantOnRulesThenOnTail!61 thiss!17480 (h!9627 rules!1920) (t!58736 rules!1920)))))

(assert (=> b!384721 (= e!236637 (getRuleFromTag!176 thiss!17480 (t!58736 rules!1920) (tag!1055 (rule!1470 separatorToken!170))))))

(declare-fun d!136470 () Bool)

(declare-fun e!236638 () Bool)

(assert (=> d!136470 e!236638))

(declare-fun res!172450 () Bool)

(assert (=> d!136470 (=> res!172450 e!236638)))

(assert (=> d!136470 (= res!172450 (isEmpty!3079 lt!168878))))

(assert (=> d!136470 (= lt!168878 e!236636)))

(declare-fun c!75785 () Bool)

(assert (=> d!136470 (= c!75785 (and ((_ is Cons!4230) rules!1920) (= (tag!1055 (h!9627 rules!1920)) (tag!1055 (rule!1470 separatorToken!170)))))))

(assert (=> d!136470 (rulesInvariant!669 thiss!17480 rules!1920)))

(assert (=> d!136470 (= (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 separatorToken!170))) lt!168878)))

(declare-fun b!384722 () Bool)

(assert (=> b!384722 (= e!236638 e!236635)))

(declare-fun res!172449 () Bool)

(assert (=> b!384722 (=> (not res!172449) (not e!236635))))

(assert (=> b!384722 (= res!172449 (contains!890 rules!1920 (get!1499 lt!168878)))))

(declare-fun b!384723 () Bool)

(assert (=> b!384723 (= e!236636 (Some!1032 (h!9627 rules!1920)))))

(declare-fun b!384724 () Bool)

(assert (=> b!384724 (= e!236637 None!1032)))

(assert (= (and d!136470 c!75785) b!384723))

(assert (= (and d!136470 (not c!75785)) b!384719))

(assert (= (and b!384719 c!75784) b!384721))

(assert (= (and b!384719 (not c!75784)) b!384724))

(assert (= (and d!136470 (not res!172450)) b!384722))

(assert (= (and b!384722 res!172449) b!384720))

(declare-fun m!575967 () Bool)

(assert (=> b!384720 m!575967))

(declare-fun m!575969 () Bool)

(assert (=> b!384721 m!575969))

(declare-fun m!575971 () Bool)

(assert (=> b!384721 m!575971))

(declare-fun m!575973 () Bool)

(assert (=> b!384721 m!575973))

(declare-fun m!575975 () Bool)

(assert (=> d!136470 m!575975))

(assert (=> d!136470 m!574877))

(assert (=> b!384722 m!575967))

(assert (=> b!384722 m!575967))

(declare-fun m!575977 () Bool)

(assert (=> b!384722 m!575977))

(assert (=> b!384110 d!136470))

(declare-fun d!136476 () Bool)

(declare-fun list!1841 (Conc!1456) List!4239)

(assert (=> d!136476 (= (list!1837 (charsOf!460 lt!168562)) (list!1841 (c!75661 (charsOf!460 lt!168562))))))

(declare-fun bs!46794 () Bool)

(assert (= bs!46794 d!136476))

(declare-fun m!575979 () Bool)

(assert (=> bs!46794 m!575979))

(assert (=> b!384110 d!136476))

(declare-fun d!136478 () Bool)

(assert (=> d!136478 (= (head!1036 (t!58737 tokens!465)) (h!9628 (t!58737 tokens!465)))))

(assert (=> b!384110 d!136478))

(declare-fun d!136480 () Bool)

(declare-fun e!236680 () Bool)

(assert (=> d!136480 e!236680))

(declare-fun res!172492 () Bool)

(assert (=> d!136480 (=> res!172492 e!236680)))

(assert (=> d!136480 (= res!172492 (isEmpty!3074 tokens!465))))

(declare-fun lt!168913 () Unit!6862)

(declare-fun choose!3071 (LexerInterface!703 List!4240 List!4241 Token!1378) Unit!6862)

(assert (=> d!136480 (= lt!168913 (choose!3071 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!136480 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136480 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!224 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!168913)))

(declare-fun b!384776 () Bool)

(declare-fun e!236681 () Bool)

(assert (=> b!384776 (= e!236680 e!236681)))

(declare-fun res!172493 () Bool)

(assert (=> b!384776 (=> (not res!172493) (not e!236681))))

(assert (=> b!384776 (= res!172493 (isDefined!872 (maxPrefix!419 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!384777 () Bool)

(assert (=> b!384777 (= e!236681 (= (_1!2725 (get!1500 (maxPrefix!419 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1036 tokens!465)))))

(assert (= (and d!136480 (not res!172492)) b!384776))

(assert (= (and b!384776 res!172493) b!384777))

(assert (=> d!136480 m!574915))

(declare-fun m!576087 () Bool)

(assert (=> d!136480 m!576087))

(assert (=> d!136480 m!574989))

(assert (=> b!384776 m!574789))

(assert (=> b!384776 m!574789))

(declare-fun m!576089 () Bool)

(assert (=> b!384776 m!576089))

(assert (=> b!384776 m!576089))

(declare-fun m!576091 () Bool)

(assert (=> b!384776 m!576091))

(assert (=> b!384777 m!574789))

(assert (=> b!384777 m!574789))

(assert (=> b!384777 m!576089))

(assert (=> b!384777 m!576089))

(declare-fun m!576093 () Bool)

(assert (=> b!384777 m!576093))

(assert (=> b!384777 m!574847))

(assert (=> b!384110 d!136480))

(declare-fun d!136522 () Bool)

(declare-fun e!236683 () Bool)

(assert (=> d!136522 e!236683))

(declare-fun res!172495 () Bool)

(assert (=> d!136522 (=> (not res!172495) (not e!236683))))

(declare-fun e!236684 () Bool)

(assert (=> d!136522 (= res!172495 e!236684)))

(declare-fun c!75791 () Bool)

(declare-fun lt!168914 () tuple2!5020)

(assert (=> d!136522 (= c!75791 (> (size!3433 (_1!2726 lt!168914)) 0))))

(assert (=> d!136522 (= lt!168914 (lexTailRecV2!231 thiss!17480 rules!1920 lt!168555 (BalanceConc!2921 Empty!1456) lt!168555 (BalanceConc!2923 Empty!1457)))))

(assert (=> d!136522 (= (lex!495 thiss!17480 rules!1920 lt!168555) lt!168914)))

(declare-fun b!384778 () Bool)

(assert (=> b!384778 (= e!236683 (= (list!1837 (_2!2726 lt!168914)) (_2!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 lt!168555)))))))

(declare-fun b!384779 () Bool)

(declare-fun e!236682 () Bool)

(assert (=> b!384779 (= e!236682 (not (isEmpty!3071 (_1!2726 lt!168914))))))

(declare-fun b!384780 () Bool)

(declare-fun res!172496 () Bool)

(assert (=> b!384780 (=> (not res!172496) (not e!236683))))

(assert (=> b!384780 (= res!172496 (= (list!1840 (_1!2726 lt!168914)) (_1!2728 (lexList!264 thiss!17480 rules!1920 (list!1837 lt!168555)))))))

(declare-fun b!384781 () Bool)

(assert (=> b!384781 (= e!236684 (= (_2!2726 lt!168914) lt!168555))))

(declare-fun b!384782 () Bool)

(assert (=> b!384782 (= e!236684 e!236682)))

(declare-fun res!172494 () Bool)

(assert (=> b!384782 (= res!172494 (< (size!3435 (_2!2726 lt!168914)) (size!3435 lt!168555)))))

(assert (=> b!384782 (=> (not res!172494) (not e!236682))))

(assert (= (and d!136522 c!75791) b!384782))

(assert (= (and d!136522 (not c!75791)) b!384781))

(assert (= (and b!384782 res!172494) b!384779))

(assert (= (and d!136522 res!172495) b!384780))

(assert (= (and b!384780 res!172496) b!384778))

(declare-fun m!576095 () Bool)

(assert (=> b!384782 m!576095))

(declare-fun m!576097 () Bool)

(assert (=> b!384782 m!576097))

(declare-fun m!576099 () Bool)

(assert (=> b!384779 m!576099))

(declare-fun m!576101 () Bool)

(assert (=> b!384780 m!576101))

(declare-fun m!576103 () Bool)

(assert (=> b!384780 m!576103))

(assert (=> b!384780 m!576103))

(declare-fun m!576105 () Bool)

(assert (=> b!384780 m!576105))

(declare-fun m!576107 () Bool)

(assert (=> b!384778 m!576107))

(assert (=> b!384778 m!576103))

(assert (=> b!384778 m!576103))

(assert (=> b!384778 m!576105))

(declare-fun m!576109 () Bool)

(assert (=> d!136522 m!576109))

(declare-fun m!576111 () Bool)

(assert (=> d!136522 m!576111))

(assert (=> b!384110 d!136522))

(declare-fun d!136524 () Bool)

(assert (=> d!136524 (= (isDefined!873 lt!168521) (not (isEmpty!3079 lt!168521)))))

(declare-fun bs!46802 () Bool)

(assert (= bs!46802 d!136524))

(declare-fun m!576113 () Bool)

(assert (=> bs!46802 m!576113))

(assert (=> b!384110 d!136524))

(declare-fun b!384783 () Bool)

(declare-fun e!236686 () Option!1033)

(declare-fun e!236687 () Option!1033)

(assert (=> b!384783 (= e!236686 e!236687)))

(declare-fun c!75792 () Bool)

(assert (=> b!384783 (= c!75792 (and ((_ is Cons!4230) rules!1920) (not (= (tag!1055 (h!9627 rules!1920)) (tag!1055 (rule!1470 lt!168562))))))))

(declare-fun b!384784 () Bool)

(declare-fun e!236685 () Bool)

(declare-fun lt!168915 () Option!1033)

(assert (=> b!384784 (= e!236685 (= (tag!1055 (get!1499 lt!168915)) (tag!1055 (rule!1470 lt!168562))))))

(declare-fun b!384785 () Bool)

(declare-fun lt!168917 () Unit!6862)

(declare-fun lt!168916 () Unit!6862)

(assert (=> b!384785 (= lt!168917 lt!168916)))

(assert (=> b!384785 (rulesInvariant!669 thiss!17480 (t!58736 rules!1920))))

(assert (=> b!384785 (= lt!168916 (lemmaInvariantOnRulesThenOnTail!61 thiss!17480 (h!9627 rules!1920) (t!58736 rules!1920)))))

(assert (=> b!384785 (= e!236687 (getRuleFromTag!176 thiss!17480 (t!58736 rules!1920) (tag!1055 (rule!1470 lt!168562))))))

(declare-fun d!136526 () Bool)

(declare-fun e!236688 () Bool)

(assert (=> d!136526 e!236688))

(declare-fun res!172498 () Bool)

(assert (=> d!136526 (=> res!172498 e!236688)))

(assert (=> d!136526 (= res!172498 (isEmpty!3079 lt!168915))))

(assert (=> d!136526 (= lt!168915 e!236686)))

(declare-fun c!75793 () Bool)

(assert (=> d!136526 (= c!75793 (and ((_ is Cons!4230) rules!1920) (= (tag!1055 (h!9627 rules!1920)) (tag!1055 (rule!1470 lt!168562)))))))

(assert (=> d!136526 (rulesInvariant!669 thiss!17480 rules!1920)))

(assert (=> d!136526 (= (getRuleFromTag!176 thiss!17480 rules!1920 (tag!1055 (rule!1470 lt!168562))) lt!168915)))

(declare-fun b!384786 () Bool)

(assert (=> b!384786 (= e!236688 e!236685)))

(declare-fun res!172497 () Bool)

(assert (=> b!384786 (=> (not res!172497) (not e!236685))))

(assert (=> b!384786 (= res!172497 (contains!890 rules!1920 (get!1499 lt!168915)))))

(declare-fun b!384787 () Bool)

(assert (=> b!384787 (= e!236686 (Some!1032 (h!9627 rules!1920)))))

(declare-fun b!384788 () Bool)

(assert (=> b!384788 (= e!236687 None!1032)))

(assert (= (and d!136526 c!75793) b!384787))

(assert (= (and d!136526 (not c!75793)) b!384783))

(assert (= (and b!384783 c!75792) b!384785))

(assert (= (and b!384783 (not c!75792)) b!384788))

(assert (= (and d!136526 (not res!172498)) b!384786))

(assert (= (and b!384786 res!172497) b!384784))

(declare-fun m!576115 () Bool)

(assert (=> b!384784 m!576115))

(assert (=> b!384785 m!575969))

(assert (=> b!384785 m!575971))

(declare-fun m!576117 () Bool)

(assert (=> b!384785 m!576117))

(declare-fun m!576119 () Bool)

(assert (=> d!136526 m!576119))

(assert (=> d!136526 m!574877))

(assert (=> b!384786 m!576115))

(assert (=> b!384786 m!576115))

(declare-fun m!576121 () Bool)

(assert (=> b!384786 m!576121))

(assert (=> b!384110 d!136526))

(declare-fun d!136528 () Bool)

(declare-fun lt!168920 () Bool)

(declare-fun content!678 (List!4240) (InoxSet Rule!1434))

(assert (=> d!136528 (= lt!168920 (select (content!678 rules!1920) (rule!1470 separatorToken!170)))))

(declare-fun e!236694 () Bool)

(assert (=> d!136528 (= lt!168920 e!236694)))

(declare-fun res!172503 () Bool)

(assert (=> d!136528 (=> (not res!172503) (not e!236694))))

(assert (=> d!136528 (= res!172503 ((_ is Cons!4230) rules!1920))))

(assert (=> d!136528 (= (contains!890 rules!1920 (rule!1470 separatorToken!170)) lt!168920)))

(declare-fun b!384793 () Bool)

(declare-fun e!236693 () Bool)

(assert (=> b!384793 (= e!236694 e!236693)))

(declare-fun res!172504 () Bool)

(assert (=> b!384793 (=> res!172504 e!236693)))

(assert (=> b!384793 (= res!172504 (= (h!9627 rules!1920) (rule!1470 separatorToken!170)))))

(declare-fun b!384794 () Bool)

(assert (=> b!384794 (= e!236693 (contains!890 (t!58736 rules!1920) (rule!1470 separatorToken!170)))))

(assert (= (and d!136528 res!172503) b!384793))

(assert (= (and b!384793 (not res!172504)) b!384794))

(declare-fun m!576123 () Bool)

(assert (=> d!136528 m!576123))

(declare-fun m!576125 () Bool)

(assert (=> d!136528 m!576125))

(declare-fun m!576127 () Bool)

(assert (=> b!384794 m!576127))

(assert (=> b!384110 d!136528))

(declare-fun b!384796 () Bool)

(declare-fun e!236698 () List!4239)

(declare-fun call!24717 () List!4239)

(assert (=> b!384796 (= e!236698 call!24717)))

(declare-fun bm!24710 () Bool)

(declare-fun call!24715 () List!4239)

(declare-fun c!75795 () Bool)

(assert (=> bm!24710 (= call!24715 (usedCharacters!118 (ite c!75795 (regTwo!2595 (regex!817 (rule!1470 separatorToken!170))) (regTwo!2594 (regex!817 (rule!1470 separatorToken!170))))))))

(declare-fun b!384797 () Bool)

(assert (=> b!384797 (= e!236698 call!24717)))

(declare-fun b!384798 () Bool)

(declare-fun e!236695 () List!4239)

(assert (=> b!384798 (= e!236695 e!236698)))

(assert (=> b!384798 (= c!75795 ((_ is Union!1041) (regex!817 (rule!1470 separatorToken!170))))))

(declare-fun b!384799 () Bool)

(declare-fun e!236697 () List!4239)

(assert (=> b!384799 (= e!236697 (Cons!4229 (c!75662 (regex!817 (rule!1470 separatorToken!170))) Nil!4229))))

(declare-fun bm!24711 () Bool)

(declare-fun call!24718 () List!4239)

(declare-fun call!24716 () List!4239)

(assert (=> bm!24711 (= call!24718 call!24716)))

(declare-fun b!384800 () Bool)

(declare-fun e!236696 () List!4239)

(assert (=> b!384800 (= e!236696 Nil!4229)))

(declare-fun b!384801 () Bool)

(assert (=> b!384801 (= e!236696 e!236697)))

(declare-fun c!75797 () Bool)

(assert (=> b!384801 (= c!75797 ((_ is ElementMatch!1041) (regex!817 (rule!1470 separatorToken!170))))))

(declare-fun bm!24712 () Bool)

(assert (=> bm!24712 (= call!24717 (++!1194 call!24718 call!24715))))

(declare-fun b!384795 () Bool)

(assert (=> b!384795 (= e!236695 call!24716)))

(declare-fun d!136530 () Bool)

(declare-fun c!75796 () Bool)

(assert (=> d!136530 (= c!75796 (or ((_ is EmptyExpr!1041) (regex!817 (rule!1470 separatorToken!170))) ((_ is EmptyLang!1041) (regex!817 (rule!1470 separatorToken!170)))))))

(assert (=> d!136530 (= (usedCharacters!118 (regex!817 (rule!1470 separatorToken!170))) e!236696)))

(declare-fun b!384802 () Bool)

(declare-fun c!75794 () Bool)

(assert (=> b!384802 (= c!75794 ((_ is Star!1041) (regex!817 (rule!1470 separatorToken!170))))))

(assert (=> b!384802 (= e!236697 e!236695)))

(declare-fun bm!24713 () Bool)

(assert (=> bm!24713 (= call!24716 (usedCharacters!118 (ite c!75794 (reg!1370 (regex!817 (rule!1470 separatorToken!170))) (ite c!75795 (regOne!2595 (regex!817 (rule!1470 separatorToken!170))) (regOne!2594 (regex!817 (rule!1470 separatorToken!170)))))))))

(assert (= (and d!136530 c!75796) b!384800))

(assert (= (and d!136530 (not c!75796)) b!384801))

(assert (= (and b!384801 c!75797) b!384799))

(assert (= (and b!384801 (not c!75797)) b!384802))

(assert (= (and b!384802 c!75794) b!384795))

(assert (= (and b!384802 (not c!75794)) b!384798))

(assert (= (and b!384798 c!75795) b!384796))

(assert (= (and b!384798 (not c!75795)) b!384797))

(assert (= (or b!384796 b!384797) bm!24711))

(assert (= (or b!384796 b!384797) bm!24710))

(assert (= (or b!384796 b!384797) bm!24712))

(assert (= (or b!384795 bm!24711) bm!24713))

(declare-fun m!576129 () Bool)

(assert (=> bm!24710 m!576129))

(declare-fun m!576131 () Bool)

(assert (=> bm!24712 m!576131))

(declare-fun m!576133 () Bool)

(assert (=> bm!24713 m!576133))

(assert (=> b!384110 d!136530))

(declare-fun d!136532 () Bool)

(assert (=> d!136532 (= (get!1500 (maxPrefix!419 thiss!17480 rules!1920 lt!168518)) (v!15200 (maxPrefix!419 thiss!17480 rules!1920 lt!168518)))))

(assert (=> b!384110 d!136532))

(declare-fun d!136534 () Bool)

(declare-fun lt!168921 () BalanceConc!2920)

(assert (=> d!136534 (= (list!1837 lt!168921) (printList!377 thiss!17480 (list!1840 lt!168543)))))

(assert (=> d!136534 (= lt!168921 (printTailRec!389 thiss!17480 lt!168543 0 (BalanceConc!2921 Empty!1456)))))

(assert (=> d!136534 (= (print!428 thiss!17480 lt!168543) lt!168921)))

(declare-fun bs!46803 () Bool)

(assert (= bs!46803 d!136534))

(declare-fun m!576135 () Bool)

(assert (=> bs!46803 m!576135))

(assert (=> bs!46803 m!575831))

(assert (=> bs!46803 m!575831))

(declare-fun m!576137 () Bool)

(assert (=> bs!46803 m!576137))

(assert (=> bs!46803 m!574967))

(assert (=> b!384110 d!136534))

(declare-fun d!136536 () Bool)

(declare-fun lt!168922 () Bool)

(declare-fun e!236699 () Bool)

(assert (=> d!136536 (= lt!168922 e!236699)))

(declare-fun res!172506 () Bool)

(assert (=> d!136536 (=> (not res!172506) (not e!236699))))

(assert (=> d!136536 (= res!172506 (= (list!1840 (_1!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 separatorToken!170))))) (list!1840 (singletonSeq!363 separatorToken!170))))))

(declare-fun e!236700 () Bool)

(assert (=> d!136536 (= lt!168922 e!236700)))

(declare-fun res!172505 () Bool)

(assert (=> d!136536 (=> (not res!172505) (not e!236700))))

(declare-fun lt!168923 () tuple2!5020)

(assert (=> d!136536 (= res!172505 (= (size!3433 (_1!2726 lt!168923)) 1))))

(assert (=> d!136536 (= lt!168923 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 separatorToken!170))))))

(assert (=> d!136536 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136536 (= (rulesProduceIndividualToken!452 thiss!17480 rules!1920 separatorToken!170) lt!168922)))

(declare-fun b!384803 () Bool)

(declare-fun res!172507 () Bool)

(assert (=> b!384803 (=> (not res!172507) (not e!236700))))

(assert (=> b!384803 (= res!172507 (= (apply!1010 (_1!2726 lt!168923) 0) separatorToken!170))))

(declare-fun b!384804 () Bool)

(assert (=> b!384804 (= e!236700 (isEmpty!3073 (_2!2726 lt!168923)))))

(declare-fun b!384805 () Bool)

(assert (=> b!384805 (= e!236699 (isEmpty!3073 (_2!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 separatorToken!170))))))))

(assert (= (and d!136536 res!172505) b!384803))

(assert (= (and b!384803 res!172507) b!384804))

(assert (= (and d!136536 res!172506) b!384805))

(declare-fun m!576139 () Bool)

(assert (=> d!136536 m!576139))

(assert (=> d!136536 m!574951))

(declare-fun m!576141 () Bool)

(assert (=> d!136536 m!576141))

(assert (=> d!136536 m!574951))

(declare-fun m!576143 () Bool)

(assert (=> d!136536 m!576143))

(assert (=> d!136536 m!576143))

(declare-fun m!576145 () Bool)

(assert (=> d!136536 m!576145))

(declare-fun m!576147 () Bool)

(assert (=> d!136536 m!576147))

(assert (=> d!136536 m!574989))

(assert (=> d!136536 m!574951))

(declare-fun m!576149 () Bool)

(assert (=> b!384803 m!576149))

(declare-fun m!576151 () Bool)

(assert (=> b!384804 m!576151))

(assert (=> b!384805 m!574951))

(assert (=> b!384805 m!574951))

(assert (=> b!384805 m!576143))

(assert (=> b!384805 m!576143))

(assert (=> b!384805 m!576145))

(declare-fun m!576153 () Bool)

(assert (=> b!384805 m!576153))

(assert (=> b!384109 d!136536))

(declare-fun d!136538 () Bool)

(assert (=> d!136538 (= (list!1837 lt!168539) (list!1841 (c!75661 lt!168539)))))

(declare-fun bs!46804 () Bool)

(assert (= bs!46804 d!136538))

(declare-fun m!576155 () Bool)

(assert (=> bs!46804 m!576155))

(assert (=> b!384090 d!136538))

(declare-fun d!136540 () Bool)

(declare-fun lt!168924 () BalanceConc!2920)

(assert (=> d!136540 (= (list!1837 lt!168924) (printList!377 thiss!17480 (list!1840 lt!168554)))))

(assert (=> d!136540 (= lt!168924 (printTailRec!389 thiss!17480 lt!168554 0 (BalanceConc!2921 Empty!1456)))))

(assert (=> d!136540 (= (print!428 thiss!17480 lt!168554) lt!168924)))

(declare-fun bs!46805 () Bool)

(assert (= bs!46805 d!136540))

(declare-fun m!576157 () Bool)

(assert (=> bs!46805 m!576157))

(declare-fun m!576159 () Bool)

(assert (=> bs!46805 m!576159))

(assert (=> bs!46805 m!576159))

(declare-fun m!576161 () Bool)

(assert (=> bs!46805 m!576161))

(assert (=> bs!46805 m!574827))

(assert (=> b!384090 d!136540))

(declare-fun d!136542 () Bool)

(declare-fun lt!168926 () BalanceConc!2920)

(assert (=> d!136542 (= (list!1837 lt!168926) (printListTailRec!185 thiss!17480 (dropList!220 lt!168554 0) (list!1837 (BalanceConc!2921 Empty!1456))))))

(declare-fun e!236701 () BalanceConc!2920)

(assert (=> d!136542 (= lt!168926 e!236701)))

(declare-fun c!75798 () Bool)

(assert (=> d!136542 (= c!75798 (>= 0 (size!3433 lt!168554)))))

(declare-fun e!236702 () Bool)

(assert (=> d!136542 e!236702))

(declare-fun res!172508 () Bool)

(assert (=> d!136542 (=> (not res!172508) (not e!236702))))

(assert (=> d!136542 (= res!172508 (>= 0 0))))

(assert (=> d!136542 (= (printTailRec!389 thiss!17480 lt!168554 0 (BalanceConc!2921 Empty!1456)) lt!168926)))

(declare-fun b!384806 () Bool)

(assert (=> b!384806 (= e!236702 (<= 0 (size!3433 lt!168554)))))

(declare-fun b!384807 () Bool)

(assert (=> b!384807 (= e!236701 (BalanceConc!2921 Empty!1456))))

(declare-fun b!384808 () Bool)

(assert (=> b!384808 (= e!236701 (printTailRec!389 thiss!17480 lt!168554 (+ 0 1) (++!1196 (BalanceConc!2921 Empty!1456) (charsOf!460 (apply!1010 lt!168554 0)))))))

(declare-fun lt!168925 () List!4241)

(assert (=> b!384808 (= lt!168925 (list!1840 lt!168554))))

(declare-fun lt!168931 () Unit!6862)

(assert (=> b!384808 (= lt!168931 (lemmaDropApply!260 lt!168925 0))))

(assert (=> b!384808 (= (head!1036 (drop!283 lt!168925 0)) (apply!1014 lt!168925 0))))

(declare-fun lt!168927 () Unit!6862)

(assert (=> b!384808 (= lt!168927 lt!168931)))

(declare-fun lt!168928 () List!4241)

(assert (=> b!384808 (= lt!168928 (list!1840 lt!168554))))

(declare-fun lt!168929 () Unit!6862)

(assert (=> b!384808 (= lt!168929 (lemmaDropTail!252 lt!168928 0))))

(assert (=> b!384808 (= (tail!590 (drop!283 lt!168928 0)) (drop!283 lt!168928 (+ 0 1)))))

(declare-fun lt!168930 () Unit!6862)

(assert (=> b!384808 (= lt!168930 lt!168929)))

(assert (= (and d!136542 res!172508) b!384806))

(assert (= (and d!136542 c!75798) b!384807))

(assert (= (and d!136542 (not c!75798)) b!384808))

(declare-fun m!576163 () Bool)

(assert (=> d!136542 m!576163))

(declare-fun m!576165 () Bool)

(assert (=> d!136542 m!576165))

(declare-fun m!576167 () Bool)

(assert (=> d!136542 m!576167))

(assert (=> d!136542 m!576165))

(assert (=> d!136542 m!575809))

(declare-fun m!576169 () Bool)

(assert (=> d!136542 m!576169))

(assert (=> d!136542 m!575809))

(assert (=> b!384806 m!576163))

(declare-fun m!576171 () Bool)

(assert (=> b!384808 m!576171))

(declare-fun m!576173 () Bool)

(assert (=> b!384808 m!576173))

(declare-fun m!576175 () Bool)

(assert (=> b!384808 m!576175))

(declare-fun m!576177 () Bool)

(assert (=> b!384808 m!576177))

(declare-fun m!576179 () Bool)

(assert (=> b!384808 m!576179))

(declare-fun m!576181 () Bool)

(assert (=> b!384808 m!576181))

(declare-fun m!576183 () Bool)

(assert (=> b!384808 m!576183))

(assert (=> b!384808 m!576179))

(declare-fun m!576185 () Bool)

(assert (=> b!384808 m!576185))

(declare-fun m!576187 () Bool)

(assert (=> b!384808 m!576187))

(assert (=> b!384808 m!576159))

(assert (=> b!384808 m!576181))

(assert (=> b!384808 m!576175))

(assert (=> b!384808 m!576171))

(declare-fun m!576189 () Bool)

(assert (=> b!384808 m!576189))

(declare-fun m!576191 () Bool)

(assert (=> b!384808 m!576191))

(declare-fun m!576193 () Bool)

(assert (=> b!384808 m!576193))

(assert (=> b!384808 m!576191))

(assert (=> b!384090 d!136542))

(declare-fun d!136544 () Bool)

(declare-fun e!236703 () Bool)

(assert (=> d!136544 e!236703))

(declare-fun res!172509 () Bool)

(assert (=> d!136544 (=> (not res!172509) (not e!236703))))

(declare-fun lt!168932 () BalanceConc!2922)

(assert (=> d!136544 (= res!172509 (= (list!1840 lt!168932) (Cons!4231 (h!9628 tokens!465) Nil!4231)))))

(assert (=> d!136544 (= lt!168932 (singleton!170 (h!9628 tokens!465)))))

(assert (=> d!136544 (= (singletonSeq!363 (h!9628 tokens!465)) lt!168932)))

(declare-fun b!384809 () Bool)

(assert (=> b!384809 (= e!236703 (isBalanced!435 (c!75663 lt!168932)))))

(assert (= (and d!136544 res!172509) b!384809))

(declare-fun m!576195 () Bool)

(assert (=> d!136544 m!576195))

(declare-fun m!576197 () Bool)

(assert (=> d!136544 m!576197))

(declare-fun m!576199 () Bool)

(assert (=> b!384809 m!576199))

(assert (=> b!384090 d!136544))

(declare-fun d!136546 () Bool)

(declare-fun c!75801 () Bool)

(assert (=> d!136546 (= c!75801 ((_ is Cons!4231) (Cons!4231 (h!9628 tokens!465) Nil!4231)))))

(declare-fun e!236706 () List!4239)

(assert (=> d!136546 (= (printList!377 thiss!17480 (Cons!4231 (h!9628 tokens!465) Nil!4231)) e!236706)))

(declare-fun b!384814 () Bool)

(assert (=> b!384814 (= e!236706 (++!1194 (list!1837 (charsOf!460 (h!9628 (Cons!4231 (h!9628 tokens!465) Nil!4231)))) (printList!377 thiss!17480 (t!58737 (Cons!4231 (h!9628 tokens!465) Nil!4231)))))))

(declare-fun b!384815 () Bool)

(assert (=> b!384815 (= e!236706 Nil!4229)))

(assert (= (and d!136546 c!75801) b!384814))

(assert (= (and d!136546 (not c!75801)) b!384815))

(declare-fun m!576201 () Bool)

(assert (=> b!384814 m!576201))

(assert (=> b!384814 m!576201))

(declare-fun m!576203 () Bool)

(assert (=> b!384814 m!576203))

(declare-fun m!576205 () Bool)

(assert (=> b!384814 m!576205))

(assert (=> b!384814 m!576203))

(assert (=> b!384814 m!576205))

(declare-fun m!576207 () Bool)

(assert (=> b!384814 m!576207))

(assert (=> b!384090 d!136546))

(declare-fun d!136548 () Bool)

(assert (=> d!136548 (= (isDefined!872 lt!168525) (not (isEmpty!3078 lt!168525)))))

(declare-fun bs!46806 () Bool)

(assert (= bs!46806 d!136548))

(declare-fun m!576209 () Bool)

(assert (=> bs!46806 m!576209))

(assert (=> b!384111 d!136548))

(assert (=> b!384111 d!136432))

(declare-fun d!136550 () Bool)

(declare-fun res!172510 () Bool)

(declare-fun e!236707 () Bool)

(assert (=> d!136550 (=> (not res!172510) (not e!236707))))

(assert (=> d!136550 (= res!172510 (not (isEmpty!3070 (originalCharacters!860 separatorToken!170))))))

(assert (=> d!136550 (= (inv!5254 separatorToken!170) e!236707)))

(declare-fun b!384816 () Bool)

(declare-fun res!172511 () Bool)

(assert (=> b!384816 (=> (not res!172511) (not e!236707))))

(assert (=> b!384816 (= res!172511 (= (originalCharacters!860 separatorToken!170) (list!1837 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (value!27600 separatorToken!170)))))))

(declare-fun b!384817 () Bool)

(assert (=> b!384817 (= e!236707 (= (size!3432 separatorToken!170) (size!3436 (originalCharacters!860 separatorToken!170))))))

(assert (= (and d!136550 res!172510) b!384816))

(assert (= (and b!384816 res!172511) b!384817))

(declare-fun b_lambda!15155 () Bool)

(assert (=> (not b_lambda!15155) (not b!384816)))

(declare-fun t!58783 () Bool)

(declare-fun tb!33985 () Bool)

(assert (=> (and b!384118 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170)))) t!58783) tb!33985))

(declare-fun b!384818 () Bool)

(declare-fun e!236708 () Bool)

(declare-fun tp!118312 () Bool)

(assert (=> b!384818 (= e!236708 (and (inv!5257 (c!75661 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (value!27600 separatorToken!170)))) tp!118312))))

(declare-fun result!38276 () Bool)

(assert (=> tb!33985 (= result!38276 (and (inv!5258 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (value!27600 separatorToken!170))) e!236708))))

(assert (= tb!33985 b!384818))

(declare-fun m!576211 () Bool)

(assert (=> b!384818 m!576211))

(declare-fun m!576213 () Bool)

(assert (=> tb!33985 m!576213))

(assert (=> b!384816 t!58783))

(declare-fun b_and!38653 () Bool)

(assert (= b_and!38635 (and (=> t!58783 result!38276) b_and!38653)))

(declare-fun t!58785 () Bool)

(declare-fun tb!33987 () Bool)

(assert (=> (and b!384114 (= (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170)))) t!58785) tb!33987))

(declare-fun result!38278 () Bool)

(assert (= result!38278 result!38276))

(assert (=> b!384816 t!58785))

(declare-fun b_and!38655 () Bool)

(assert (= b_and!38637 (and (=> t!58785 result!38278) b_and!38655)))

(declare-fun tb!33989 () Bool)

(declare-fun t!58787 () Bool)

(assert (=> (and b!384113 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170)))) t!58787) tb!33989))

(declare-fun result!38280 () Bool)

(assert (= result!38280 result!38276))

(assert (=> b!384816 t!58787))

(declare-fun b_and!38657 () Bool)

(assert (= b_and!38639 (and (=> t!58787 result!38280) b_and!38657)))

(declare-fun m!576215 () Bool)

(assert (=> d!136550 m!576215))

(declare-fun m!576217 () Bool)

(assert (=> b!384816 m!576217))

(assert (=> b!384816 m!576217))

(declare-fun m!576219 () Bool)

(assert (=> b!384816 m!576219))

(declare-fun m!576221 () Bool)

(assert (=> b!384817 m!576221))

(assert (=> start!38278 d!136550))

(declare-fun b!384819 () Bool)

(declare-fun e!236713 () Bool)

(declare-fun lt!168933 () Bool)

(assert (=> b!384819 (= e!236713 (not lt!168933))))

(declare-fun b!384820 () Bool)

(declare-fun e!236712 () Bool)

(declare-fun e!236709 () Bool)

(assert (=> b!384820 (= e!236712 e!236709)))

(declare-fun res!172519 () Bool)

(assert (=> b!384820 (=> (not res!172519) (not e!236709))))

(assert (=> b!384820 (= res!172519 (not lt!168933))))

(declare-fun d!136552 () Bool)

(declare-fun e!236715 () Bool)

(assert (=> d!136552 e!236715))

(declare-fun c!75803 () Bool)

(assert (=> d!136552 (= c!75803 ((_ is EmptyExpr!1041) (regex!817 lt!168538)))))

(declare-fun e!236714 () Bool)

(assert (=> d!136552 (= lt!168933 e!236714)))

(declare-fun c!75802 () Bool)

(assert (=> d!136552 (= c!75802 (isEmpty!3070 lt!168561))))

(assert (=> d!136552 (validRegex!295 (regex!817 lt!168538))))

(assert (=> d!136552 (= (matchR!359 (regex!817 lt!168538) lt!168561) lt!168933)))

(declare-fun b!384821 () Bool)

(declare-fun res!172512 () Bool)

(declare-fun e!236711 () Bool)

(assert (=> b!384821 (=> res!172512 e!236711)))

(assert (=> b!384821 (= res!172512 (not (isEmpty!3070 (tail!589 lt!168561))))))

(declare-fun b!384822 () Bool)

(declare-fun res!172515 () Bool)

(assert (=> b!384822 (=> res!172515 e!236712)))

(assert (=> b!384822 (= res!172515 (not ((_ is ElementMatch!1041) (regex!817 lt!168538))))))

(assert (=> b!384822 (= e!236713 e!236712)))

(declare-fun b!384823 () Bool)

(assert (=> b!384823 (= e!236714 (matchR!359 (derivativeStep!186 (regex!817 lt!168538) (head!1035 lt!168561)) (tail!589 lt!168561)))))

(declare-fun b!384824 () Bool)

(declare-fun res!172516 () Bool)

(declare-fun e!236710 () Bool)

(assert (=> b!384824 (=> (not res!172516) (not e!236710))))

(declare-fun call!24719 () Bool)

(assert (=> b!384824 (= res!172516 (not call!24719))))

(declare-fun b!384825 () Bool)

(assert (=> b!384825 (= e!236709 e!236711)))

(declare-fun res!172514 () Bool)

(assert (=> b!384825 (=> res!172514 e!236711)))

(assert (=> b!384825 (= res!172514 call!24719)))

(declare-fun b!384826 () Bool)

(declare-fun res!172518 () Bool)

(assert (=> b!384826 (=> (not res!172518) (not e!236710))))

(assert (=> b!384826 (= res!172518 (isEmpty!3070 (tail!589 lt!168561)))))

(declare-fun bm!24714 () Bool)

(assert (=> bm!24714 (= call!24719 (isEmpty!3070 lt!168561))))

(declare-fun b!384827 () Bool)

(declare-fun res!172513 () Bool)

(assert (=> b!384827 (=> res!172513 e!236712)))

(assert (=> b!384827 (= res!172513 e!236710)))

(declare-fun res!172517 () Bool)

(assert (=> b!384827 (=> (not res!172517) (not e!236710))))

(assert (=> b!384827 (= res!172517 lt!168933)))

(declare-fun b!384828 () Bool)

(assert (=> b!384828 (= e!236710 (= (head!1035 lt!168561) (c!75662 (regex!817 lt!168538))))))

(declare-fun b!384829 () Bool)

(assert (=> b!384829 (= e!236715 (= lt!168933 call!24719))))

(declare-fun b!384830 () Bool)

(assert (=> b!384830 (= e!236715 e!236713)))

(declare-fun c!75804 () Bool)

(assert (=> b!384830 (= c!75804 ((_ is EmptyLang!1041) (regex!817 lt!168538)))))

(declare-fun b!384831 () Bool)

(assert (=> b!384831 (= e!236711 (not (= (head!1035 lt!168561) (c!75662 (regex!817 lt!168538)))))))

(declare-fun b!384832 () Bool)

(assert (=> b!384832 (= e!236714 (nullable!220 (regex!817 lt!168538)))))

(assert (= (and d!136552 c!75802) b!384832))

(assert (= (and d!136552 (not c!75802)) b!384823))

(assert (= (and d!136552 c!75803) b!384829))

(assert (= (and d!136552 (not c!75803)) b!384830))

(assert (= (and b!384830 c!75804) b!384819))

(assert (= (and b!384830 (not c!75804)) b!384822))

(assert (= (and b!384822 (not res!172515)) b!384827))

(assert (= (and b!384827 res!172517) b!384824))

(assert (= (and b!384824 res!172516) b!384826))

(assert (= (and b!384826 res!172518) b!384828))

(assert (= (and b!384827 (not res!172513)) b!384820))

(assert (= (and b!384820 res!172519) b!384825))

(assert (= (and b!384825 (not res!172514)) b!384821))

(assert (= (and b!384821 (not res!172512)) b!384831))

(assert (= (or b!384829 b!384824 b!384825) bm!24714))

(declare-fun m!576223 () Bool)

(assert (=> bm!24714 m!576223))

(declare-fun m!576225 () Bool)

(assert (=> b!384831 m!576225))

(assert (=> b!384823 m!576225))

(assert (=> b!384823 m!576225))

(declare-fun m!576227 () Bool)

(assert (=> b!384823 m!576227))

(declare-fun m!576229 () Bool)

(assert (=> b!384823 m!576229))

(assert (=> b!384823 m!576227))

(assert (=> b!384823 m!576229))

(declare-fun m!576231 () Bool)

(assert (=> b!384823 m!576231))

(assert (=> d!136552 m!576223))

(declare-fun m!576233 () Bool)

(assert (=> d!136552 m!576233))

(assert (=> b!384821 m!576229))

(assert (=> b!384821 m!576229))

(declare-fun m!576235 () Bool)

(assert (=> b!384821 m!576235))

(assert (=> b!384828 m!576225))

(declare-fun m!576237 () Bool)

(assert (=> b!384832 m!576237))

(assert (=> b!384826 m!576229))

(assert (=> b!384826 m!576229))

(assert (=> b!384826 m!576235))

(assert (=> b!384091 d!136552))

(declare-fun d!136554 () Bool)

(assert (=> d!136554 (= (get!1499 lt!168559) (v!15199 lt!168559))))

(assert (=> b!384091 d!136554))

(declare-fun b!384842 () Bool)

(declare-fun e!236721 () List!4239)

(assert (=> b!384842 (= e!236721 (Cons!4229 (h!9626 lt!168537) (++!1194 (t!58735 lt!168537) lt!168558)))))

(declare-fun d!136556 () Bool)

(declare-fun e!236720 () Bool)

(assert (=> d!136556 e!236720))

(declare-fun res!172524 () Bool)

(assert (=> d!136556 (=> (not res!172524) (not e!236720))))

(declare-fun lt!168936 () List!4239)

(assert (=> d!136556 (= res!172524 (= (content!677 lt!168936) ((_ map or) (content!677 lt!168537) (content!677 lt!168558))))))

(assert (=> d!136556 (= lt!168936 e!236721)))

(declare-fun c!75807 () Bool)

(assert (=> d!136556 (= c!75807 ((_ is Nil!4229) lt!168537))))

(assert (=> d!136556 (= (++!1194 lt!168537 lt!168558) lt!168936)))

(declare-fun b!384843 () Bool)

(declare-fun res!172525 () Bool)

(assert (=> b!384843 (=> (not res!172525) (not e!236720))))

(assert (=> b!384843 (= res!172525 (= (size!3436 lt!168936) (+ (size!3436 lt!168537) (size!3436 lt!168558))))))

(declare-fun b!384841 () Bool)

(assert (=> b!384841 (= e!236721 lt!168558)))

(declare-fun b!384844 () Bool)

(assert (=> b!384844 (= e!236720 (or (not (= lt!168558 Nil!4229)) (= lt!168936 lt!168537)))))

(assert (= (and d!136556 c!75807) b!384841))

(assert (= (and d!136556 (not c!75807)) b!384842))

(assert (= (and d!136556 res!172524) b!384843))

(assert (= (and b!384843 res!172525) b!384844))

(declare-fun m!576239 () Bool)

(assert (=> b!384842 m!576239))

(declare-fun m!576241 () Bool)

(assert (=> d!136556 m!576241))

(declare-fun m!576243 () Bool)

(assert (=> d!136556 m!576243))

(declare-fun m!576245 () Bool)

(assert (=> d!136556 m!576245))

(declare-fun m!576247 () Bool)

(assert (=> b!384843 m!576247))

(assert (=> b!384843 m!575327))

(declare-fun m!576249 () Bool)

(assert (=> b!384843 m!576249))

(assert (=> b!384082 d!136556))

(declare-fun d!136558 () Bool)

(declare-fun res!172528 () Bool)

(declare-fun e!236724 () Bool)

(assert (=> d!136558 (=> (not res!172528) (not e!236724))))

(declare-fun rulesValid!282 (LexerInterface!703 List!4240) Bool)

(assert (=> d!136558 (= res!172528 (rulesValid!282 thiss!17480 rules!1920))))

(assert (=> d!136558 (= (rulesInvariant!669 thiss!17480 rules!1920) e!236724)))

(declare-fun b!384847 () Bool)

(declare-datatypes ((List!4243 0))(
  ( (Nil!4233) (Cons!4233 (h!9630 String!5275) (t!58825 List!4243)) )
))
(declare-fun noDuplicateTag!282 (LexerInterface!703 List!4240 List!4243) Bool)

(assert (=> b!384847 (= e!236724 (noDuplicateTag!282 thiss!17480 rules!1920 Nil!4233))))

(assert (= (and d!136558 res!172528) b!384847))

(declare-fun m!576251 () Bool)

(assert (=> d!136558 m!576251))

(declare-fun m!576253 () Bool)

(assert (=> b!384847 m!576253))

(assert (=> b!384103 d!136558))

(declare-fun b!384848 () Bool)

(declare-fun e!236729 () Bool)

(declare-fun lt!168937 () Bool)

(assert (=> b!384848 (= e!236729 (not lt!168937))))

(declare-fun b!384849 () Bool)

(declare-fun e!236728 () Bool)

(declare-fun e!236725 () Bool)

(assert (=> b!384849 (= e!236728 e!236725)))

(declare-fun res!172536 () Bool)

(assert (=> b!384849 (=> (not res!172536) (not e!236725))))

(assert (=> b!384849 (= res!172536 (not lt!168937))))

(declare-fun d!136560 () Bool)

(declare-fun e!236731 () Bool)

(assert (=> d!136560 e!236731))

(declare-fun c!75809 () Bool)

(assert (=> d!136560 (= c!75809 ((_ is EmptyExpr!1041) (regex!817 lt!168557)))))

(declare-fun e!236730 () Bool)

(assert (=> d!136560 (= lt!168937 e!236730)))

(declare-fun c!75808 () Bool)

(assert (=> d!136560 (= c!75808 (isEmpty!3070 lt!168531))))

(assert (=> d!136560 (validRegex!295 (regex!817 lt!168557))))

(assert (=> d!136560 (= (matchR!359 (regex!817 lt!168557) lt!168531) lt!168937)))

(declare-fun b!384850 () Bool)

(declare-fun res!172529 () Bool)

(declare-fun e!236727 () Bool)

(assert (=> b!384850 (=> res!172529 e!236727)))

(assert (=> b!384850 (= res!172529 (not (isEmpty!3070 (tail!589 lt!168531))))))

(declare-fun b!384851 () Bool)

(declare-fun res!172532 () Bool)

(assert (=> b!384851 (=> res!172532 e!236728)))

(assert (=> b!384851 (= res!172532 (not ((_ is ElementMatch!1041) (regex!817 lt!168557))))))

(assert (=> b!384851 (= e!236729 e!236728)))

(declare-fun b!384852 () Bool)

(assert (=> b!384852 (= e!236730 (matchR!359 (derivativeStep!186 (regex!817 lt!168557) (head!1035 lt!168531)) (tail!589 lt!168531)))))

(declare-fun b!384853 () Bool)

(declare-fun res!172533 () Bool)

(declare-fun e!236726 () Bool)

(assert (=> b!384853 (=> (not res!172533) (not e!236726))))

(declare-fun call!24720 () Bool)

(assert (=> b!384853 (= res!172533 (not call!24720))))

(declare-fun b!384854 () Bool)

(assert (=> b!384854 (= e!236725 e!236727)))

(declare-fun res!172531 () Bool)

(assert (=> b!384854 (=> res!172531 e!236727)))

(assert (=> b!384854 (= res!172531 call!24720)))

(declare-fun b!384855 () Bool)

(declare-fun res!172535 () Bool)

(assert (=> b!384855 (=> (not res!172535) (not e!236726))))

(assert (=> b!384855 (= res!172535 (isEmpty!3070 (tail!589 lt!168531)))))

(declare-fun bm!24715 () Bool)

(assert (=> bm!24715 (= call!24720 (isEmpty!3070 lt!168531))))

(declare-fun b!384856 () Bool)

(declare-fun res!172530 () Bool)

(assert (=> b!384856 (=> res!172530 e!236728)))

(assert (=> b!384856 (= res!172530 e!236726)))

(declare-fun res!172534 () Bool)

(assert (=> b!384856 (=> (not res!172534) (not e!236726))))

(assert (=> b!384856 (= res!172534 lt!168937)))

(declare-fun b!384857 () Bool)

(assert (=> b!384857 (= e!236726 (= (head!1035 lt!168531) (c!75662 (regex!817 lt!168557))))))

(declare-fun b!384858 () Bool)

(assert (=> b!384858 (= e!236731 (= lt!168937 call!24720))))

(declare-fun b!384859 () Bool)

(assert (=> b!384859 (= e!236731 e!236729)))

(declare-fun c!75810 () Bool)

(assert (=> b!384859 (= c!75810 ((_ is EmptyLang!1041) (regex!817 lt!168557)))))

(declare-fun b!384860 () Bool)

(assert (=> b!384860 (= e!236727 (not (= (head!1035 lt!168531) (c!75662 (regex!817 lt!168557)))))))

(declare-fun b!384861 () Bool)

(assert (=> b!384861 (= e!236730 (nullable!220 (regex!817 lt!168557)))))

(assert (= (and d!136560 c!75808) b!384861))

(assert (= (and d!136560 (not c!75808)) b!384852))

(assert (= (and d!136560 c!75809) b!384858))

(assert (= (and d!136560 (not c!75809)) b!384859))

(assert (= (and b!384859 c!75810) b!384848))

(assert (= (and b!384859 (not c!75810)) b!384851))

(assert (= (and b!384851 (not res!172532)) b!384856))

(assert (= (and b!384856 res!172534) b!384853))

(assert (= (and b!384853 res!172533) b!384855))

(assert (= (and b!384855 res!172535) b!384857))

(assert (= (and b!384856 (not res!172530)) b!384849))

(assert (= (and b!384849 res!172536) b!384854))

(assert (= (and b!384854 (not res!172531)) b!384850))

(assert (= (and b!384850 (not res!172529)) b!384860))

(assert (= (or b!384858 b!384853 b!384854) bm!24715))

(assert (=> bm!24715 m!575281))

(assert (=> b!384860 m!574959))

(assert (=> b!384852 m!574959))

(assert (=> b!384852 m!574959))

(declare-fun m!576255 () Bool)

(assert (=> b!384852 m!576255))

(assert (=> b!384852 m!575285))

(assert (=> b!384852 m!576255))

(assert (=> b!384852 m!575285))

(declare-fun m!576257 () Bool)

(assert (=> b!384852 m!576257))

(assert (=> d!136560 m!575281))

(declare-fun m!576259 () Bool)

(assert (=> d!136560 m!576259))

(assert (=> b!384850 m!575285))

(assert (=> b!384850 m!575285))

(assert (=> b!384850 m!575289))

(assert (=> b!384857 m!574959))

(declare-fun m!576261 () Bool)

(assert (=> b!384861 m!576261))

(assert (=> b!384855 m!575285))

(assert (=> b!384855 m!575285))

(assert (=> b!384855 m!575289))

(assert (=> b!384081 d!136560))

(declare-fun d!136562 () Bool)

(assert (=> d!136562 (= (get!1499 lt!168521) (v!15199 lt!168521))))

(assert (=> b!384081 d!136562))

(declare-fun d!136564 () Bool)

(declare-fun c!75816 () Bool)

(assert (=> d!136564 (= c!75816 ((_ is IntegerValue!2517) (value!27600 (h!9628 tokens!465))))))

(declare-fun e!236738 () Bool)

(assert (=> d!136564 (= (inv!21 (value!27600 (h!9628 tokens!465))) e!236738)))

(declare-fun b!384872 () Bool)

(declare-fun e!236740 () Bool)

(declare-fun inv!15 (TokenValue!839) Bool)

(assert (=> b!384872 (= e!236740 (inv!15 (value!27600 (h!9628 tokens!465))))))

(declare-fun b!384873 () Bool)

(declare-fun e!236739 () Bool)

(assert (=> b!384873 (= e!236738 e!236739)))

(declare-fun c!75815 () Bool)

(assert (=> b!384873 (= c!75815 ((_ is IntegerValue!2518) (value!27600 (h!9628 tokens!465))))))

(declare-fun b!384874 () Bool)

(declare-fun inv!16 (TokenValue!839) Bool)

(assert (=> b!384874 (= e!236738 (inv!16 (value!27600 (h!9628 tokens!465))))))

(declare-fun b!384875 () Bool)

(declare-fun res!172539 () Bool)

(assert (=> b!384875 (=> res!172539 e!236740)))

(assert (=> b!384875 (= res!172539 (not ((_ is IntegerValue!2519) (value!27600 (h!9628 tokens!465)))))))

(assert (=> b!384875 (= e!236739 e!236740)))

(declare-fun b!384876 () Bool)

(declare-fun inv!17 (TokenValue!839) Bool)

(assert (=> b!384876 (= e!236739 (inv!17 (value!27600 (h!9628 tokens!465))))))

(assert (= (and d!136564 c!75816) b!384874))

(assert (= (and d!136564 (not c!75816)) b!384873))

(assert (= (and b!384873 c!75815) b!384876))

(assert (= (and b!384873 (not c!75815)) b!384875))

(assert (= (and b!384875 (not res!172539)) b!384872))

(declare-fun m!576263 () Bool)

(assert (=> b!384872 m!576263))

(declare-fun m!576265 () Bool)

(assert (=> b!384874 m!576265))

(declare-fun m!576267 () Bool)

(assert (=> b!384876 m!576267))

(assert (=> b!384104 d!136564))

(declare-fun d!136566 () Bool)

(declare-fun lt!168938 () Token!1378)

(assert (=> d!136566 (= lt!168938 (apply!1014 (list!1840 (_1!2726 lt!168536)) 0))))

(assert (=> d!136566 (= lt!168938 (apply!1015 (c!75663 (_1!2726 lt!168536)) 0))))

(declare-fun e!236741 () Bool)

(assert (=> d!136566 e!236741))

(declare-fun res!172540 () Bool)

(assert (=> d!136566 (=> (not res!172540) (not e!236741))))

(assert (=> d!136566 (= res!172540 (<= 0 0))))

(assert (=> d!136566 (= (apply!1010 (_1!2726 lt!168536) 0) lt!168938)))

(declare-fun b!384877 () Bool)

(assert (=> b!384877 (= e!236741 (< 0 (size!3433 (_1!2726 lt!168536))))))

(assert (= (and d!136566 res!172540) b!384877))

(assert (=> d!136566 m!575403))

(assert (=> d!136566 m!575403))

(declare-fun m!576269 () Bool)

(assert (=> d!136566 m!576269))

(declare-fun m!576271 () Bool)

(assert (=> d!136566 m!576271))

(assert (=> b!384877 m!574985))

(assert (=> b!384125 d!136566))

(declare-fun d!136568 () Bool)

(assert (=> d!136568 (= (list!1837 (seqFromList!999 lt!168518)) (list!1841 (c!75661 (seqFromList!999 lt!168518))))))

(declare-fun bs!46807 () Bool)

(assert (= bs!46807 d!136568))

(declare-fun m!576273 () Bool)

(assert (=> bs!46807 m!576273))

(assert (=> b!384084 d!136568))

(declare-fun d!136570 () Bool)

(assert (=> d!136570 (= (seqFromList!999 lt!168518) (fromListB!434 lt!168518))))

(declare-fun bs!46808 () Bool)

(assert (= bs!46808 d!136570))

(declare-fun m!576275 () Bool)

(assert (=> bs!46808 m!576275))

(assert (=> b!384084 d!136570))

(declare-fun d!136572 () Bool)

(assert (=> d!136572 (= (inv!5250 (tag!1055 (h!9627 rules!1920))) (= (mod (str.len (value!27599 (tag!1055 (h!9627 rules!1920)))) 2) 0))))

(assert (=> b!384105 d!136572))

(declare-fun d!136574 () Bool)

(declare-fun res!172541 () Bool)

(declare-fun e!236742 () Bool)

(assert (=> d!136574 (=> (not res!172541) (not e!236742))))

(assert (=> d!136574 (= res!172541 (semiInverseModEq!317 (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toValue!1608 (transformation!817 (h!9627 rules!1920)))))))

(assert (=> d!136574 (= (inv!5253 (transformation!817 (h!9627 rules!1920))) e!236742)))

(declare-fun b!384878 () Bool)

(assert (=> b!384878 (= e!236742 (equivClasses!300 (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toValue!1608 (transformation!817 (h!9627 rules!1920)))))))

(assert (= (and d!136574 res!172541) b!384878))

(declare-fun m!576277 () Bool)

(assert (=> d!136574 m!576277))

(declare-fun m!576279 () Bool)

(assert (=> b!384878 m!576279))

(assert (=> b!384105 d!136574))

(declare-fun d!136576 () Bool)

(assert (=> d!136576 (= (get!1500 lt!168520) (v!15200 lt!168520))))

(assert (=> b!384086 d!136576))

(declare-fun d!136578 () Bool)

(assert (=> d!136578 (= (isDefined!872 lt!168520) (not (isEmpty!3078 lt!168520)))))

(declare-fun bs!46809 () Bool)

(assert (= bs!46809 d!136578))

(declare-fun m!576281 () Bool)

(assert (=> bs!46809 m!576281))

(assert (=> b!384086 d!136578))

(declare-fun b!384879 () Bool)

(declare-fun res!172547 () Bool)

(declare-fun e!236744 () Bool)

(assert (=> b!384879 (=> (not res!172547) (not e!236744))))

(declare-fun lt!168941 () Option!1034)

(assert (=> b!384879 (= res!172547 (= (value!27600 (_1!2725 (get!1500 lt!168941))) (apply!1016 (transformation!817 (rule!1470 (_1!2725 (get!1500 lt!168941)))) (seqFromList!999 (originalCharacters!860 (_1!2725 (get!1500 lt!168941)))))))))

(declare-fun b!384880 () Bool)

(assert (=> b!384880 (= e!236744 (contains!890 rules!1920 (rule!1470 (_1!2725 (get!1500 lt!168941)))))))

(declare-fun b!384881 () Bool)

(declare-fun res!172545 () Bool)

(assert (=> b!384881 (=> (not res!172545) (not e!236744))))

(assert (=> b!384881 (= res!172545 (= (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168941)))) (originalCharacters!860 (_1!2725 (get!1500 lt!168941)))))))

(declare-fun b!384882 () Bool)

(declare-fun res!172546 () Bool)

(assert (=> b!384882 (=> (not res!172546) (not e!236744))))

(assert (=> b!384882 (= res!172546 (matchR!359 (regex!817 (rule!1470 (_1!2725 (get!1500 lt!168941)))) (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168941))))))))

(declare-fun b!384883 () Bool)

(declare-fun res!172548 () Bool)

(assert (=> b!384883 (=> (not res!172548) (not e!236744))))

(assert (=> b!384883 (= res!172548 (= (++!1194 (list!1837 (charsOf!460 (_1!2725 (get!1500 lt!168941)))) (_2!2725 (get!1500 lt!168941))) lt!168537))))

(declare-fun b!384884 () Bool)

(declare-fun e!236743 () Bool)

(assert (=> b!384884 (= e!236743 e!236744)))

(declare-fun res!172542 () Bool)

(assert (=> b!384884 (=> (not res!172542) (not e!236744))))

(assert (=> b!384884 (= res!172542 (isDefined!872 lt!168941))))

(declare-fun b!384885 () Bool)

(declare-fun res!172543 () Bool)

(assert (=> b!384885 (=> (not res!172543) (not e!236744))))

(assert (=> b!384885 (= res!172543 (< (size!3436 (_2!2725 (get!1500 lt!168941))) (size!3436 lt!168537)))))

(declare-fun d!136580 () Bool)

(assert (=> d!136580 e!236743))

(declare-fun res!172544 () Bool)

(assert (=> d!136580 (=> res!172544 e!236743)))

(assert (=> d!136580 (= res!172544 (isEmpty!3078 lt!168941))))

(declare-fun e!236745 () Option!1034)

(assert (=> d!136580 (= lt!168941 e!236745)))

(declare-fun c!75817 () Bool)

(assert (=> d!136580 (= c!75817 (and ((_ is Cons!4230) rules!1920) ((_ is Nil!4230) (t!58736 rules!1920))))))

(declare-fun lt!168939 () Unit!6862)

(declare-fun lt!168940 () Unit!6862)

(assert (=> d!136580 (= lt!168939 lt!168940)))

(assert (=> d!136580 (isPrefix!477 lt!168537 lt!168537)))

(assert (=> d!136580 (= lt!168940 (lemmaIsPrefixRefl!263 lt!168537 lt!168537))))

(assert (=> d!136580 (rulesValidInductive!258 thiss!17480 rules!1920)))

(assert (=> d!136580 (= (maxPrefix!419 thiss!17480 rules!1920 lt!168537) lt!168941)))

(declare-fun call!24721 () Option!1034)

(declare-fun bm!24716 () Bool)

(assert (=> bm!24716 (= call!24721 (maxPrefixOneRule!197 thiss!17480 (h!9627 rules!1920) lt!168537))))

(declare-fun b!384886 () Bool)

(assert (=> b!384886 (= e!236745 call!24721)))

(declare-fun b!384887 () Bool)

(declare-fun lt!168942 () Option!1034)

(declare-fun lt!168943 () Option!1034)

(assert (=> b!384887 (= e!236745 (ite (and ((_ is None!1033) lt!168942) ((_ is None!1033) lt!168943)) None!1033 (ite ((_ is None!1033) lt!168943) lt!168942 (ite ((_ is None!1033) lt!168942) lt!168943 (ite (>= (size!3432 (_1!2725 (v!15200 lt!168942))) (size!3432 (_1!2725 (v!15200 lt!168943)))) lt!168942 lt!168943)))))))

(assert (=> b!384887 (= lt!168942 call!24721)))

(assert (=> b!384887 (= lt!168943 (maxPrefix!419 thiss!17480 (t!58736 rules!1920) lt!168537))))

(assert (= (and d!136580 c!75817) b!384886))

(assert (= (and d!136580 (not c!75817)) b!384887))

(assert (= (or b!384886 b!384887) bm!24716))

(assert (= (and d!136580 (not res!172544)) b!384884))

(assert (= (and b!384884 res!172542) b!384881))

(assert (= (and b!384881 res!172545) b!384885))

(assert (= (and b!384885 res!172543) b!384883))

(assert (= (and b!384883 res!172548) b!384879))

(assert (= (and b!384879 res!172547) b!384882))

(assert (= (and b!384882 res!172546) b!384880))

(declare-fun m!576283 () Bool)

(assert (=> b!384885 m!576283))

(declare-fun m!576285 () Bool)

(assert (=> b!384885 m!576285))

(assert (=> b!384885 m!575327))

(assert (=> b!384879 m!576283))

(declare-fun m!576287 () Bool)

(assert (=> b!384879 m!576287))

(assert (=> b!384879 m!576287))

(declare-fun m!576289 () Bool)

(assert (=> b!384879 m!576289))

(declare-fun m!576291 () Bool)

(assert (=> bm!24716 m!576291))

(assert (=> b!384880 m!576283))

(declare-fun m!576293 () Bool)

(assert (=> b!384880 m!576293))

(assert (=> b!384882 m!576283))

(declare-fun m!576295 () Bool)

(assert (=> b!384882 m!576295))

(assert (=> b!384882 m!576295))

(declare-fun m!576297 () Bool)

(assert (=> b!384882 m!576297))

(assert (=> b!384882 m!576297))

(declare-fun m!576299 () Bool)

(assert (=> b!384882 m!576299))

(assert (=> b!384883 m!576283))

(assert (=> b!384883 m!576295))

(assert (=> b!384883 m!576295))

(assert (=> b!384883 m!576297))

(assert (=> b!384883 m!576297))

(declare-fun m!576301 () Bool)

(assert (=> b!384883 m!576301))

(declare-fun m!576303 () Bool)

(assert (=> d!136580 m!576303))

(declare-fun m!576305 () Bool)

(assert (=> d!136580 m!576305))

(declare-fun m!576307 () Bool)

(assert (=> d!136580 m!576307))

(assert (=> d!136580 m!575731))

(declare-fun m!576309 () Bool)

(assert (=> b!384884 m!576309))

(declare-fun m!576311 () Bool)

(assert (=> b!384887 m!576311))

(assert (=> b!384881 m!576283))

(assert (=> b!384881 m!576295))

(assert (=> b!384881 m!576295))

(assert (=> b!384881 m!576297))

(assert (=> b!384086 d!136580))

(declare-fun d!136582 () Bool)

(assert (=> d!136582 (= (list!1837 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 lt!168527 separatorToken!170 0)) (list!1841 (c!75661 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 lt!168527 separatorToken!170 0))))))

(declare-fun bs!46810 () Bool)

(assert (= bs!46810 d!136582))

(declare-fun m!576313 () Bool)

(assert (=> bs!46810 m!576313))

(assert (=> b!384085 d!136582))

(declare-fun bs!46814 () Bool)

(declare-fun d!136584 () Bool)

(assert (= bs!46814 (and d!136584 b!384087)))

(declare-fun lambda!11961 () Int)

(assert (=> bs!46814 (= lambda!11961 lambda!11933)))

(declare-fun bs!46815 () Bool)

(assert (= bs!46815 (and d!136584 b!384119)))

(assert (=> bs!46815 (not (= lambda!11961 lambda!11934))))

(declare-fun bs!46816 () Bool)

(assert (= bs!46816 (and d!136584 d!136332)))

(assert (=> bs!46816 (not (= lambda!11961 lambda!11944))))

(declare-fun bs!46817 () Bool)

(declare-fun b!384969 () Bool)

(assert (= bs!46817 (and b!384969 b!384087)))

(declare-fun lambda!11962 () Int)

(assert (=> bs!46817 (not (= lambda!11962 lambda!11933))))

(declare-fun bs!46818 () Bool)

(assert (= bs!46818 (and b!384969 b!384119)))

(assert (=> bs!46818 (= lambda!11962 lambda!11934)))

(declare-fun bs!46819 () Bool)

(assert (= bs!46819 (and b!384969 d!136332)))

(assert (=> bs!46819 (= lambda!11962 lambda!11944)))

(declare-fun bs!46820 () Bool)

(assert (= bs!46820 (and b!384969 d!136584)))

(assert (=> bs!46820 (not (= lambda!11962 lambda!11961))))

(declare-fun b!384977 () Bool)

(declare-fun e!236805 () Bool)

(assert (=> b!384977 (= e!236805 true)))

(declare-fun b!384976 () Bool)

(declare-fun e!236804 () Bool)

(assert (=> b!384976 (= e!236804 e!236805)))

(declare-fun b!384975 () Bool)

(declare-fun e!236803 () Bool)

(assert (=> b!384975 (= e!236803 e!236804)))

(assert (=> b!384969 e!236803))

(assert (= b!384976 b!384977))

(assert (= b!384975 b!384976))

(assert (= (and b!384969 ((_ is Cons!4230) rules!1920)) b!384975))

(assert (=> b!384977 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11962))))

(assert (=> b!384977 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11962))))

(assert (=> b!384969 true))

(declare-fun b!384966 () Bool)

(declare-fun e!236797 () Bool)

(assert (=> b!384966 (= e!236797 (<= 0 (size!3433 lt!168527)))))

(declare-fun b!384967 () Bool)

(declare-fun e!236801 () BalanceConc!2920)

(assert (=> b!384967 (= e!236801 (BalanceConc!2921 Empty!1456))))

(declare-fun call!24749 () Token!1378)

(assert (=> b!384967 (= (print!428 thiss!17480 (singletonSeq!363 call!24749)) (printTailRec!389 thiss!17480 (singletonSeq!363 call!24749) 0 (BalanceConc!2921 Empty!1456)))))

(declare-fun lt!169000 () Unit!6862)

(declare-fun Unit!6878 () Unit!6862)

(assert (=> b!384967 (= lt!169000 Unit!6878)))

(declare-fun call!24748 () BalanceConc!2920)

(declare-fun lt!169002 () BalanceConc!2920)

(declare-fun lt!169006 () Unit!6862)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!168 (LexerInterface!703 List!4240 List!4239 List!4239) Unit!6862)

(assert (=> b!384967 (= lt!169006 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!168 thiss!17480 rules!1920 (list!1837 call!24748) (list!1837 lt!169002)))))

(assert (=> b!384967 false))

(declare-fun lt!169001 () Unit!6862)

(declare-fun Unit!6879 () Unit!6862)

(assert (=> b!384967 (= lt!169001 Unit!6879)))

(declare-fun b!384968 () Bool)

(declare-fun e!236802 () Bool)

(declare-fun lt!169003 () Option!1035)

(assert (=> b!384968 (= e!236802 (= (_1!2727 (v!15201 lt!169003)) (apply!1010 lt!168527 0)))))

(declare-fun e!236798 () BalanceConc!2920)

(declare-fun e!236800 () BalanceConc!2920)

(assert (=> b!384969 (= e!236798 e!236800)))

(declare-fun lt!168997 () List!4241)

(assert (=> b!384969 (= lt!168997 (list!1840 lt!168527))))

(declare-fun lt!169005 () Unit!6862)

(assert (=> b!384969 (= lt!169005 (lemmaDropApply!260 lt!168997 0))))

(assert (=> b!384969 (= (head!1036 (drop!283 lt!168997 0)) (apply!1014 lt!168997 0))))

(declare-fun lt!169008 () Unit!6862)

(assert (=> b!384969 (= lt!169008 lt!169005)))

(declare-fun lt!168999 () List!4241)

(assert (=> b!384969 (= lt!168999 (list!1840 lt!168527))))

(declare-fun lt!169004 () Unit!6862)

(assert (=> b!384969 (= lt!169004 (lemmaDropTail!252 lt!168999 0))))

(assert (=> b!384969 (= (tail!590 (drop!283 lt!168999 0)) (drop!283 lt!168999 (+ 0 1)))))

(declare-fun lt!169010 () Unit!6862)

(assert (=> b!384969 (= lt!169010 lt!169004)))

(declare-fun lt!169007 () Unit!6862)

(assert (=> b!384969 (= lt!169007 (forallContained!370 (list!1840 lt!168527) lambda!11962 (apply!1010 lt!168527 0)))))

(assert (=> b!384969 (= lt!169002 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 lt!168527 separatorToken!170 (+ 0 1)))))

(assert (=> b!384969 (= lt!169003 (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (++!1196 (charsOf!460 (apply!1010 lt!168527 0)) lt!169002)))))

(declare-fun res!172578 () Bool)

(assert (=> b!384969 (= res!172578 ((_ is Some!1034) lt!169003))))

(assert (=> b!384969 (=> (not res!172578) (not e!236802))))

(declare-fun c!75844 () Bool)

(assert (=> b!384969 (= c!75844 e!236802)))

(declare-fun b!384970 () Bool)

(declare-fun call!24752 () BalanceConc!2920)

(assert (=> b!384970 (= e!236800 call!24752)))

(declare-fun b!384971 () Bool)

(assert (=> b!384971 (= e!236801 (++!1196 call!24752 lt!169002))))

(declare-fun bm!24743 () Bool)

(declare-fun call!24751 () Token!1378)

(declare-fun call!24750 () BalanceConc!2920)

(assert (=> bm!24743 (= call!24750 (charsOf!460 (ite c!75844 call!24751 call!24749)))))

(declare-fun lt!169009 () BalanceConc!2920)

(assert (=> d!136584 (= (list!1837 lt!169009) (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (dropList!220 lt!168527 0) separatorToken!170))))

(assert (=> d!136584 (= lt!169009 e!236798)))

(declare-fun c!75843 () Bool)

(assert (=> d!136584 (= c!75843 (>= 0 (size!3433 lt!168527)))))

(declare-fun lt!168998 () Unit!6862)

(declare-fun lemmaContentSubsetPreservesForall!164 (List!4241 List!4241 Int) Unit!6862)

(assert (=> d!136584 (= lt!168998 (lemmaContentSubsetPreservesForall!164 (list!1840 lt!168527) (dropList!220 lt!168527 0) lambda!11961))))

(assert (=> d!136584 e!236797))

(declare-fun res!172577 () Bool)

(assert (=> d!136584 (=> (not res!172577) (not e!236797))))

(assert (=> d!136584 (= res!172577 (>= 0 0))))

(assert (=> d!136584 (= (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 lt!168527 separatorToken!170 0) lt!169009)))

(declare-fun b!384972 () Bool)

(declare-fun c!75845 () Bool)

(declare-fun e!236799 () Bool)

(assert (=> b!384972 (= c!75845 e!236799)))

(declare-fun res!172576 () Bool)

(assert (=> b!384972 (=> (not res!172576) (not e!236799))))

(assert (=> b!384972 (= res!172576 ((_ is Some!1034) lt!169003))))

(assert (=> b!384972 (= e!236800 e!236801)))

(declare-fun b!384973 () Bool)

(assert (=> b!384973 (= e!236799 (not (= (_1!2727 (v!15201 lt!169003)) call!24751)))))

(declare-fun bm!24744 () Bool)

(assert (=> bm!24744 (= call!24752 (++!1196 call!24750 (ite c!75844 lt!169002 call!24748)))))

(declare-fun bm!24745 () Bool)

(assert (=> bm!24745 (= call!24751 (apply!1010 lt!168527 0))))

(declare-fun bm!24746 () Bool)

(assert (=> bm!24746 (= call!24749 call!24751)))

(declare-fun b!384974 () Bool)

(assert (=> b!384974 (= e!236798 (BalanceConc!2921 Empty!1456))))

(declare-fun bm!24747 () Bool)

(assert (=> bm!24747 (= call!24748 (charsOf!460 (ite c!75845 separatorToken!170 call!24749)))))

(assert (= (and d!136584 res!172577) b!384966))

(assert (= (and d!136584 c!75843) b!384974))

(assert (= (and d!136584 (not c!75843)) b!384969))

(assert (= (and b!384969 res!172578) b!384968))

(assert (= (and b!384969 c!75844) b!384970))

(assert (= (and b!384969 (not c!75844)) b!384972))

(assert (= (and b!384972 res!172576) b!384973))

(assert (= (and b!384972 c!75845) b!384971))

(assert (= (and b!384972 (not c!75845)) b!384967))

(assert (= (or b!384971 b!384967) bm!24746))

(assert (= (or b!384971 b!384967) bm!24747))

(assert (= (or b!384970 bm!24746 b!384973) bm!24745))

(assert (= (or b!384970 b!384971) bm!24743))

(assert (= (or b!384970 b!384971) bm!24744))

(declare-fun m!576457 () Bool)

(assert (=> b!384968 m!576457))

(declare-fun m!576459 () Bool)

(assert (=> bm!24743 m!576459))

(assert (=> bm!24745 m!576457))

(declare-fun m!576461 () Bool)

(assert (=> bm!24744 m!576461))

(declare-fun m!576463 () Bool)

(assert (=> b!384971 m!576463))

(declare-fun m!576465 () Bool)

(assert (=> b!384967 m!576465))

(assert (=> b!384967 m!576465))

(declare-fun m!576467 () Bool)

(assert (=> b!384967 m!576467))

(declare-fun m!576469 () Bool)

(assert (=> b!384967 m!576469))

(assert (=> b!384967 m!576469))

(declare-fun m!576471 () Bool)

(assert (=> b!384967 m!576471))

(declare-fun m!576473 () Bool)

(assert (=> b!384967 m!576473))

(assert (=> b!384967 m!576471))

(assert (=> b!384967 m!576465))

(declare-fun m!576475 () Bool)

(assert (=> b!384967 m!576475))

(declare-fun m!576477 () Bool)

(assert (=> b!384966 m!576477))

(declare-fun m!576479 () Bool)

(assert (=> bm!24747 m!576479))

(declare-fun m!576481 () Bool)

(assert (=> b!384969 m!576481))

(declare-fun m!576483 () Bool)

(assert (=> b!384969 m!576483))

(assert (=> b!384969 m!575251))

(assert (=> b!384969 m!576457))

(declare-fun m!576485 () Bool)

(assert (=> b!384969 m!576485))

(declare-fun m!576487 () Bool)

(assert (=> b!384969 m!576487))

(assert (=> b!384969 m!575251))

(assert (=> b!384969 m!576483))

(declare-fun m!576489 () Bool)

(assert (=> b!384969 m!576489))

(declare-fun m!576491 () Bool)

(assert (=> b!384969 m!576491))

(declare-fun m!576493 () Bool)

(assert (=> b!384969 m!576493))

(declare-fun m!576495 () Bool)

(assert (=> b!384969 m!576495))

(declare-fun m!576497 () Bool)

(assert (=> b!384969 m!576497))

(assert (=> b!384969 m!576457))

(assert (=> b!384969 m!576495))

(assert (=> b!384969 m!576457))

(declare-fun m!576499 () Bool)

(assert (=> b!384969 m!576499))

(declare-fun m!576501 () Bool)

(assert (=> b!384969 m!576501))

(assert (=> b!384969 m!576491))

(assert (=> b!384969 m!576497))

(declare-fun m!576503 () Bool)

(assert (=> b!384969 m!576503))

(declare-fun m!576505 () Bool)

(assert (=> b!384969 m!576505))

(assert (=> d!136584 m!575251))

(assert (=> d!136584 m!575251))

(declare-fun m!576507 () Bool)

(assert (=> d!136584 m!576507))

(declare-fun m!576509 () Bool)

(assert (=> d!136584 m!576509))

(declare-fun m!576511 () Bool)

(assert (=> d!136584 m!576511))

(assert (=> d!136584 m!576507))

(declare-fun m!576513 () Bool)

(assert (=> d!136584 m!576513))

(assert (=> d!136584 m!576507))

(assert (=> d!136584 m!576477))

(assert (=> b!384085 d!136584))

(declare-fun bs!46825 () Bool)

(declare-fun b!385091 () Bool)

(assert (= bs!46825 (and b!385091 b!384119)))

(declare-fun lambda!11965 () Int)

(assert (=> bs!46825 (= lambda!11965 lambda!11934)))

(declare-fun bs!46826 () Bool)

(assert (= bs!46826 (and b!385091 d!136584)))

(assert (=> bs!46826 (not (= lambda!11965 lambda!11961))))

(declare-fun bs!46827 () Bool)

(assert (= bs!46827 (and b!385091 d!136332)))

(assert (=> bs!46827 (= lambda!11965 lambda!11944)))

(declare-fun bs!46828 () Bool)

(assert (= bs!46828 (and b!385091 b!384969)))

(assert (=> bs!46828 (= lambda!11965 lambda!11962)))

(declare-fun bs!46829 () Bool)

(assert (= bs!46829 (and b!385091 b!384087)))

(assert (=> bs!46829 (not (= lambda!11965 lambda!11933))))

(declare-fun b!385099 () Bool)

(declare-fun e!236888 () Bool)

(assert (=> b!385099 (= e!236888 true)))

(declare-fun b!385098 () Bool)

(declare-fun e!236887 () Bool)

(assert (=> b!385098 (= e!236887 e!236888)))

(declare-fun b!385097 () Bool)

(declare-fun e!236886 () Bool)

(assert (=> b!385097 (= e!236886 e!236887)))

(assert (=> b!385091 e!236886))

(assert (= b!385098 b!385099))

(assert (= b!385097 b!385098))

(assert (= (and b!385091 ((_ is Cons!4230) rules!1920)) b!385097))

(assert (=> b!385099 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11965))))

(assert (=> b!385099 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11965))))

(assert (=> b!385091 true))

(declare-fun b!385089 () Bool)

(declare-fun e!236882 () List!4239)

(assert (=> b!385089 (= e!236882 Nil!4229)))

(assert (=> b!385089 (= (print!428 thiss!17480 (singletonSeq!363 (h!9628 tokens!465))) (printTailRec!389 thiss!17480 (singletonSeq!363 (h!9628 tokens!465)) 0 (BalanceConc!2921 Empty!1456)))))

(declare-fun lt!169050 () Unit!6862)

(declare-fun Unit!6880 () Unit!6862)

(assert (=> b!385089 (= lt!169050 Unit!6880)))

(declare-fun call!24769 () List!4239)

(declare-fun lt!169051 () List!4239)

(declare-fun lt!169048 () Unit!6862)

(assert (=> b!385089 (= lt!169048 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!168 thiss!17480 rules!1920 call!24769 lt!169051))))

(assert (=> b!385089 false))

(declare-fun lt!169046 () Unit!6862)

(declare-fun Unit!6881 () Unit!6862)

(assert (=> b!385089 (= lt!169046 Unit!6881)))

(declare-fun b!385090 () Bool)

(declare-fun e!236884 () List!4239)

(declare-fun call!24771 () List!4239)

(assert (=> b!385090 (= e!236884 call!24771)))

(declare-fun e!236885 () List!4239)

(assert (=> b!385091 (= e!236885 e!236884)))

(declare-fun lt!169049 () Unit!6862)

(assert (=> b!385091 (= lt!169049 (forallContained!370 tokens!465 lambda!11965 (h!9628 tokens!465)))))

(assert (=> b!385091 (= lt!169051 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (t!58737 tokens!465) separatorToken!170))))

(declare-fun lt!169047 () Option!1034)

(assert (=> b!385091 (= lt!169047 (maxPrefix!419 thiss!17480 rules!1920 (++!1194 (list!1837 (charsOf!460 (h!9628 tokens!465))) lt!169051)))))

(declare-fun c!75863 () Bool)

(assert (=> b!385091 (= c!75863 (and ((_ is Some!1033) lt!169047) (= (_1!2725 (v!15200 lt!169047)) (h!9628 tokens!465))))))

(declare-fun b!385092 () Bool)

(assert (=> b!385092 (= e!236882 (++!1194 call!24771 lt!169051))))

(declare-fun b!385093 () Bool)

(declare-fun e!236883 () BalanceConc!2920)

(assert (=> b!385093 (= e!236883 (charsOf!460 separatorToken!170))))

(declare-fun bm!24763 () Bool)

(assert (=> bm!24763 (= call!24769 (list!1837 e!236883))))

(declare-fun c!75862 () Bool)

(declare-fun c!75861 () Bool)

(assert (=> bm!24763 (= c!75862 c!75861)))

(declare-fun b!385094 () Bool)

(assert (=> b!385094 (= e!236885 Nil!4229)))

(declare-fun b!385095 () Bool)

(declare-fun call!24768 () BalanceConc!2920)

(assert (=> b!385095 (= e!236883 call!24768)))

(declare-fun bm!24764 () Bool)

(declare-fun call!24767 () BalanceConc!2920)

(assert (=> bm!24764 (= call!24767 (charsOf!460 (h!9628 tokens!465)))))

(declare-fun bm!24765 () Bool)

(assert (=> bm!24765 (= call!24768 call!24767)))

(declare-fun d!136618 () Bool)

(declare-fun c!75860 () Bool)

(assert (=> d!136618 (= c!75860 ((_ is Cons!4231) tokens!465))))

(assert (=> d!136618 (= (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!236885)))

(declare-fun bm!24762 () Bool)

(declare-fun call!24770 () List!4239)

(assert (=> bm!24762 (= call!24771 (++!1194 call!24770 (ite c!75863 lt!169051 call!24769)))))

(declare-fun b!385096 () Bool)

(assert (=> b!385096 (= c!75861 (and ((_ is Some!1033) lt!169047) (not (= (_1!2725 (v!15200 lt!169047)) (h!9628 tokens!465)))))))

(assert (=> b!385096 (= e!236884 e!236882)))

(declare-fun bm!24766 () Bool)

(assert (=> bm!24766 (= call!24770 (list!1837 (ite c!75863 call!24767 call!24768)))))

(assert (= (and d!136618 c!75860) b!385091))

(assert (= (and d!136618 (not c!75860)) b!385094))

(assert (= (and b!385091 c!75863) b!385090))

(assert (= (and b!385091 (not c!75863)) b!385096))

(assert (= (and b!385096 c!75861) b!385092))

(assert (= (and b!385096 (not c!75861)) b!385089))

(assert (= (or b!385092 b!385089) bm!24765))

(assert (= (or b!385092 b!385089) bm!24763))

(assert (= (and bm!24763 c!75862) b!385093))

(assert (= (and bm!24763 (not c!75862)) b!385095))

(assert (= (or b!385090 bm!24765) bm!24764))

(assert (= (or b!385090 b!385092) bm!24766))

(assert (= (or b!385090 b!385092) bm!24762))

(assert (=> b!385093 m!574889))

(declare-fun m!576569 () Bool)

(assert (=> b!385092 m!576569))

(declare-fun m!576571 () Bool)

(assert (=> bm!24762 m!576571))

(assert (=> b!385089 m!574823))

(assert (=> b!385089 m!574823))

(declare-fun m!576573 () Bool)

(assert (=> b!385089 m!576573))

(assert (=> b!385089 m!574823))

(declare-fun m!576575 () Bool)

(assert (=> b!385089 m!576575))

(declare-fun m!576577 () Bool)

(assert (=> b!385089 m!576577))

(declare-fun m!576579 () Bool)

(assert (=> b!385091 m!576579))

(assert (=> b!385091 m!574903))

(declare-fun m!576581 () Bool)

(assert (=> b!385091 m!576581))

(assert (=> b!385091 m!574899))

(assert (=> b!385091 m!574903))

(assert (=> b!385091 m!576581))

(declare-fun m!576583 () Bool)

(assert (=> b!385091 m!576583))

(assert (=> b!385091 m!574899))

(assert (=> b!385091 m!574887))

(assert (=> bm!24764 m!574899))

(declare-fun m!576585 () Bool)

(assert (=> bm!24766 m!576585))

(declare-fun m!576587 () Bool)

(assert (=> bm!24763 m!576587))

(assert (=> b!384085 d!136618))

(declare-fun d!136634 () Bool)

(assert (=> d!136634 (= (isEmpty!3072 rules!1920) ((_ is Nil!4230) rules!1920))))

(assert (=> b!384098 d!136634))

(declare-fun d!136636 () Bool)

(declare-fun isEmpty!3083 (Option!1035) Bool)

(assert (=> d!136636 (= (isDefined!874 (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465))))) (not (isEmpty!3083 (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))

(declare-fun bs!46830 () Bool)

(assert (= bs!46830 d!136636))

(assert (=> bs!46830 m!574835))

(declare-fun m!576589 () Bool)

(assert (=> bs!46830 m!576589))

(assert (=> b!384119 d!136636))

(declare-fun b!385116 () Bool)

(declare-fun e!236906 () Bool)

(declare-fun e!236905 () Bool)

(assert (=> b!385116 (= e!236906 e!236905)))

(declare-fun res!172622 () Bool)

(assert (=> b!385116 (=> (not res!172622) (not e!236905))))

(declare-fun lt!169070 () Option!1035)

(declare-fun get!1502 (Option!1035) tuple2!5022)

(declare-fun maxPrefixZipper!167 (LexerInterface!703 List!4240 List!4239) Option!1034)

(assert (=> b!385116 (= res!172622 (= (_1!2727 (get!1502 lt!169070)) (_1!2725 (get!1500 (maxPrefixZipper!167 thiss!17480 rules!1920 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))))

(declare-fun b!385117 () Bool)

(declare-fun res!172620 () Bool)

(declare-fun e!236904 () Bool)

(assert (=> b!385117 (=> (not res!172620) (not e!236904))))

(assert (=> b!385117 (= res!172620 e!236906)))

(declare-fun res!172621 () Bool)

(assert (=> b!385117 (=> res!172621 e!236906)))

(assert (=> b!385117 (= res!172621 (not (isDefined!874 lt!169070)))))

(declare-fun b!385118 () Bool)

(declare-fun e!236901 () Option!1035)

(declare-fun call!24774 () Option!1035)

(assert (=> b!385118 (= e!236901 call!24774)))

(declare-fun b!385119 () Bool)

(declare-fun e!236903 () Bool)

(declare-fun e!236902 () Bool)

(assert (=> b!385119 (= e!236903 e!236902)))

(declare-fun res!172618 () Bool)

(assert (=> b!385119 (=> (not res!172618) (not e!236902))))

(assert (=> b!385119 (= res!172618 (= (_1!2727 (get!1502 lt!169070)) (_1!2725 (get!1500 (maxPrefix!419 thiss!17480 rules!1920 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))))

(declare-fun b!385120 () Bool)

(declare-fun lt!169066 () Option!1035)

(declare-fun lt!169068 () Option!1035)

(assert (=> b!385120 (= e!236901 (ite (and ((_ is None!1034) lt!169066) ((_ is None!1034) lt!169068)) None!1034 (ite ((_ is None!1034) lt!169068) lt!169066 (ite ((_ is None!1034) lt!169066) lt!169068 (ite (>= (size!3432 (_1!2727 (v!15201 lt!169066))) (size!3432 (_1!2727 (v!15201 lt!169068)))) lt!169066 lt!169068)))))))

(assert (=> b!385120 (= lt!169066 call!24774)))

(assert (=> b!385120 (= lt!169068 (maxPrefixZipperSequence!382 thiss!17480 (t!58736 rules!1920) (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))

(declare-fun b!385121 () Bool)

(assert (=> b!385121 (= e!236905 (= (list!1837 (_2!2727 (get!1502 lt!169070))) (_2!2725 (get!1500 (maxPrefixZipper!167 thiss!17480 rules!1920 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))))

(declare-fun b!385122 () Bool)

(assert (=> b!385122 (= e!236904 e!236903)))

(declare-fun res!172619 () Bool)

(assert (=> b!385122 (=> res!172619 e!236903)))

(assert (=> b!385122 (= res!172619 (not (isDefined!874 lt!169070)))))

(declare-fun b!385123 () Bool)

(assert (=> b!385123 (= e!236902 (= (list!1837 (_2!2727 (get!1502 lt!169070))) (_2!2725 (get!1500 (maxPrefix!419 thiss!17480 rules!1920 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))))))

(declare-fun bm!24769 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!168 (LexerInterface!703 Rule!1434 BalanceConc!2920) Option!1035)

(assert (=> bm!24769 (= call!24774 (maxPrefixOneRuleZipperSequence!168 thiss!17480 (h!9627 rules!1920) (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))

(declare-fun d!136638 () Bool)

(assert (=> d!136638 e!236904))

(declare-fun res!172623 () Bool)

(assert (=> d!136638 (=> (not res!172623) (not e!236904))))

(assert (=> d!136638 (= res!172623 (= (isDefined!874 lt!169070) (isDefined!872 (maxPrefixZipper!167 thiss!17480 rules!1920 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465))))))))))

(assert (=> d!136638 (= lt!169070 e!236901)))

(declare-fun c!75866 () Bool)

(assert (=> d!136638 (= c!75866 (and ((_ is Cons!4230) rules!1920) ((_ is Nil!4230) (t!58736 rules!1920))))))

(declare-fun lt!169067 () Unit!6862)

(declare-fun lt!169072 () Unit!6862)

(assert (=> d!136638 (= lt!169067 lt!169072)))

(declare-fun lt!169071 () List!4239)

(declare-fun lt!169069 () List!4239)

(assert (=> d!136638 (isPrefix!477 lt!169071 lt!169069)))

(assert (=> d!136638 (= lt!169072 (lemmaIsPrefixRefl!263 lt!169071 lt!169069))))

(assert (=> d!136638 (= lt!169069 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))

(assert (=> d!136638 (= lt!169071 (list!1837 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))))))

(assert (=> d!136638 (rulesValidInductive!258 thiss!17480 rules!1920)))

(assert (=> d!136638 (= (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465)))) lt!169070)))

(assert (= (and d!136638 c!75866) b!385118))

(assert (= (and d!136638 (not c!75866)) b!385120))

(assert (= (or b!385118 b!385120) bm!24769))

(assert (= (and d!136638 res!172623) b!385117))

(assert (= (and b!385117 (not res!172621)) b!385116))

(assert (= (and b!385116 res!172622) b!385121))

(assert (= (and b!385117 res!172620) b!385122))

(assert (= (and b!385122 (not res!172619)) b!385119))

(assert (= (and b!385119 res!172618) b!385123))

(declare-fun m!576591 () Bool)

(assert (=> b!385119 m!576591))

(assert (=> b!385119 m!574833))

(declare-fun m!576593 () Bool)

(assert (=> b!385119 m!576593))

(assert (=> b!385119 m!576593))

(declare-fun m!576595 () Bool)

(assert (=> b!385119 m!576595))

(assert (=> b!385119 m!576595))

(declare-fun m!576597 () Bool)

(assert (=> b!385119 m!576597))

(assert (=> b!385116 m!576591))

(assert (=> b!385116 m!574833))

(assert (=> b!385116 m!576593))

(assert (=> b!385116 m!576593))

(declare-fun m!576599 () Bool)

(assert (=> b!385116 m!576599))

(assert (=> b!385116 m!576599))

(declare-fun m!576601 () Bool)

(assert (=> b!385116 m!576601))

(declare-fun m!576603 () Bool)

(assert (=> b!385122 m!576603))

(assert (=> b!385117 m!576603))

(assert (=> d!136638 m!574833))

(assert (=> d!136638 m!576593))

(assert (=> d!136638 m!576603))

(assert (=> d!136638 m!576599))

(declare-fun m!576605 () Bool)

(assert (=> d!136638 m!576605))

(declare-fun m!576607 () Bool)

(assert (=> d!136638 m!576607))

(declare-fun m!576609 () Bool)

(assert (=> d!136638 m!576609))

(assert (=> d!136638 m!576593))

(assert (=> d!136638 m!576599))

(assert (=> d!136638 m!575731))

(assert (=> b!385121 m!576593))

(assert (=> b!385121 m!576599))

(assert (=> b!385121 m!574833))

(assert (=> b!385121 m!576593))

(assert (=> b!385121 m!576599))

(assert (=> b!385121 m!576601))

(assert (=> b!385121 m!576591))

(declare-fun m!576611 () Bool)

(assert (=> b!385121 m!576611))

(assert (=> bm!24769 m!574833))

(declare-fun m!576613 () Bool)

(assert (=> bm!24769 m!576613))

(assert (=> b!385123 m!576593))

(assert (=> b!385123 m!576595))

(assert (=> b!385123 m!574833))

(assert (=> b!385123 m!576593))

(assert (=> b!385123 m!576591))

(assert (=> b!385123 m!576611))

(assert (=> b!385123 m!576595))

(assert (=> b!385123 m!576597))

(assert (=> b!385120 m!574833))

(declare-fun m!576615 () Bool)

(assert (=> b!385120 m!576615))

(assert (=> b!384119 d!136638))

(declare-fun d!136640 () Bool)

(assert (=> d!136640 (= (seqFromList!999 (originalCharacters!860 (h!9628 tokens!465))) (fromListB!434 (originalCharacters!860 (h!9628 tokens!465))))))

(declare-fun bs!46831 () Bool)

(assert (= bs!46831 d!136640))

(declare-fun m!576617 () Bool)

(assert (=> bs!46831 m!576617))

(assert (=> b!384119 d!136640))

(declare-fun d!136642 () Bool)

(assert (=> d!136642 (dynLambda!2453 lambda!11934 (h!9628 tokens!465))))

(declare-fun lt!169073 () Unit!6862)

(assert (=> d!136642 (= lt!169073 (choose!3069 tokens!465 lambda!11934 (h!9628 tokens!465)))))

(declare-fun e!236907 () Bool)

(assert (=> d!136642 e!236907))

(declare-fun res!172624 () Bool)

(assert (=> d!136642 (=> (not res!172624) (not e!236907))))

(assert (=> d!136642 (= res!172624 (forall!1180 tokens!465 lambda!11934))))

(assert (=> d!136642 (= (forallContained!370 tokens!465 lambda!11934 (h!9628 tokens!465)) lt!169073)))

(declare-fun b!385124 () Bool)

(assert (=> b!385124 (= e!236907 (contains!892 tokens!465 (h!9628 tokens!465)))))

(assert (= (and d!136642 res!172624) b!385124))

(declare-fun b_lambda!15175 () Bool)

(assert (=> (not b_lambda!15175) (not d!136642)))

(declare-fun m!576619 () Bool)

(assert (=> d!136642 m!576619))

(declare-fun m!576621 () Bool)

(assert (=> d!136642 m!576621))

(assert (=> d!136642 m!575741))

(declare-fun m!576623 () Bool)

(assert (=> b!385124 m!576623))

(assert (=> b!384119 d!136642))

(declare-fun d!136644 () Bool)

(declare-fun res!172629 () Bool)

(declare-fun e!236912 () Bool)

(assert (=> d!136644 (=> res!172629 e!236912)))

(assert (=> d!136644 (= res!172629 (not ((_ is Cons!4230) rules!1920)))))

(assert (=> d!136644 (= (sepAndNonSepRulesDisjointChars!406 rules!1920 rules!1920) e!236912)))

(declare-fun b!385129 () Bool)

(declare-fun e!236913 () Bool)

(assert (=> b!385129 (= e!236912 e!236913)))

(declare-fun res!172630 () Bool)

(assert (=> b!385129 (=> (not res!172630) (not e!236913))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!175 (Rule!1434 List!4240) Bool)

(assert (=> b!385129 (= res!172630 (ruleDisjointCharsFromAllFromOtherType!175 (h!9627 rules!1920) rules!1920))))

(declare-fun b!385130 () Bool)

(assert (=> b!385130 (= e!236913 (sepAndNonSepRulesDisjointChars!406 rules!1920 (t!58736 rules!1920)))))

(assert (= (and d!136644 (not res!172629)) b!385129))

(assert (= (and b!385129 res!172630) b!385130))

(declare-fun m!576625 () Bool)

(assert (=> b!385129 m!576625))

(declare-fun m!576627 () Bool)

(assert (=> b!385130 m!576627))

(assert (=> b!384078 d!136644))

(declare-fun d!136646 () Bool)

(declare-fun c!75868 () Bool)

(assert (=> d!136646 (= c!75868 ((_ is IntegerValue!2517) (value!27600 separatorToken!170)))))

(declare-fun e!236914 () Bool)

(assert (=> d!136646 (= (inv!21 (value!27600 separatorToken!170)) e!236914)))

(declare-fun b!385131 () Bool)

(declare-fun e!236916 () Bool)

(assert (=> b!385131 (= e!236916 (inv!15 (value!27600 separatorToken!170)))))

(declare-fun b!385132 () Bool)

(declare-fun e!236915 () Bool)

(assert (=> b!385132 (= e!236914 e!236915)))

(declare-fun c!75867 () Bool)

(assert (=> b!385132 (= c!75867 ((_ is IntegerValue!2518) (value!27600 separatorToken!170)))))

(declare-fun b!385133 () Bool)

(assert (=> b!385133 (= e!236914 (inv!16 (value!27600 separatorToken!170)))))

(declare-fun b!385134 () Bool)

(declare-fun res!172631 () Bool)

(assert (=> b!385134 (=> res!172631 e!236916)))

(assert (=> b!385134 (= res!172631 (not ((_ is IntegerValue!2519) (value!27600 separatorToken!170))))))

(assert (=> b!385134 (= e!236915 e!236916)))

(declare-fun b!385135 () Bool)

(assert (=> b!385135 (= e!236915 (inv!17 (value!27600 separatorToken!170)))))

(assert (= (and d!136646 c!75868) b!385133))

(assert (= (and d!136646 (not c!75868)) b!385132))

(assert (= (and b!385132 c!75867) b!385135))

(assert (= (and b!385132 (not c!75867)) b!385134))

(assert (= (and b!385134 (not res!172631)) b!385131))

(declare-fun m!576629 () Bool)

(assert (=> b!385131 m!576629))

(declare-fun m!576631 () Bool)

(assert (=> b!385133 m!576631))

(declare-fun m!576633 () Bool)

(assert (=> b!385135 m!576633))

(assert (=> b!384099 d!136646))

(declare-fun d!136648 () Bool)

(declare-fun lt!169076 () Bool)

(assert (=> d!136648 (= lt!169076 (isEmpty!3070 (list!1837 (_2!2726 lt!168541))))))

(declare-fun isEmpty!3084 (Conc!1456) Bool)

(assert (=> d!136648 (= lt!169076 (isEmpty!3084 (c!75661 (_2!2726 lt!168541))))))

(assert (=> d!136648 (= (isEmpty!3073 (_2!2726 lt!168541)) lt!169076)))

(declare-fun bs!46832 () Bool)

(assert (= bs!46832 d!136648))

(declare-fun m!576635 () Bool)

(assert (=> bs!46832 m!576635))

(assert (=> bs!46832 m!576635))

(declare-fun m!576637 () Bool)

(assert (=> bs!46832 m!576637))

(declare-fun m!576639 () Bool)

(assert (=> bs!46832 m!576639))

(assert (=> b!384120 d!136648))

(declare-fun d!136650 () Bool)

(declare-fun lt!169077 () Bool)

(declare-fun e!236917 () Bool)

(assert (=> d!136650 (= lt!169077 e!236917)))

(declare-fun res!172633 () Bool)

(assert (=> d!136650 (=> (not res!172633) (not e!236917))))

(assert (=> d!136650 (= res!172633 (= (list!1840 (_1!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 (h!9628 tokens!465)))))) (list!1840 (singletonSeq!363 (h!9628 tokens!465)))))))

(declare-fun e!236918 () Bool)

(assert (=> d!136650 (= lt!169077 e!236918)))

(declare-fun res!172632 () Bool)

(assert (=> d!136650 (=> (not res!172632) (not e!236918))))

(declare-fun lt!169078 () tuple2!5020)

(assert (=> d!136650 (= res!172632 (= (size!3433 (_1!2726 lt!169078)) 1))))

(assert (=> d!136650 (= lt!169078 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 (h!9628 tokens!465)))))))

(assert (=> d!136650 (not (isEmpty!3072 rules!1920))))

(assert (=> d!136650 (= (rulesProduceIndividualToken!452 thiss!17480 rules!1920 (h!9628 tokens!465)) lt!169077)))

(declare-fun b!385136 () Bool)

(declare-fun res!172634 () Bool)

(assert (=> b!385136 (=> (not res!172634) (not e!236918))))

(assert (=> b!385136 (= res!172634 (= (apply!1010 (_1!2726 lt!169078) 0) (h!9628 tokens!465)))))

(declare-fun b!385137 () Bool)

(assert (=> b!385137 (= e!236918 (isEmpty!3073 (_2!2726 lt!169078)))))

(declare-fun b!385138 () Bool)

(assert (=> b!385138 (= e!236917 (isEmpty!3073 (_2!2726 (lex!495 thiss!17480 rules!1920 (print!428 thiss!17480 (singletonSeq!363 (h!9628 tokens!465)))))))))

(assert (= (and d!136650 res!172632) b!385136))

(assert (= (and b!385136 res!172634) b!385137))

(assert (= (and d!136650 res!172633) b!385138))

(declare-fun m!576641 () Bool)

(assert (=> d!136650 m!576641))

(assert (=> d!136650 m!574823))

(declare-fun m!576643 () Bool)

(assert (=> d!136650 m!576643))

(assert (=> d!136650 m!574823))

(assert (=> d!136650 m!576573))

(assert (=> d!136650 m!576573))

(declare-fun m!576645 () Bool)

(assert (=> d!136650 m!576645))

(declare-fun m!576647 () Bool)

(assert (=> d!136650 m!576647))

(assert (=> d!136650 m!574989))

(assert (=> d!136650 m!574823))

(declare-fun m!576649 () Bool)

(assert (=> b!385136 m!576649))

(declare-fun m!576651 () Bool)

(assert (=> b!385137 m!576651))

(assert (=> b!385138 m!574823))

(assert (=> b!385138 m!574823))

(assert (=> b!385138 m!576573))

(assert (=> b!385138 m!576573))

(assert (=> b!385138 m!576645))

(declare-fun m!576653 () Bool)

(assert (=> b!385138 m!576653))

(assert (=> b!384079 d!136650))

(declare-fun b!385140 () Bool)

(declare-fun e!236920 () List!4239)

(assert (=> b!385140 (= e!236920 (Cons!4229 (h!9626 lt!168537) (++!1194 (t!58735 lt!168537) lt!168535)))))

(declare-fun d!136652 () Bool)

(declare-fun e!236919 () Bool)

(assert (=> d!136652 e!236919))

(declare-fun res!172635 () Bool)

(assert (=> d!136652 (=> (not res!172635) (not e!236919))))

(declare-fun lt!169079 () List!4239)

(assert (=> d!136652 (= res!172635 (= (content!677 lt!169079) ((_ map or) (content!677 lt!168537) (content!677 lt!168535))))))

(assert (=> d!136652 (= lt!169079 e!236920)))

(declare-fun c!75869 () Bool)

(assert (=> d!136652 (= c!75869 ((_ is Nil!4229) lt!168537))))

(assert (=> d!136652 (= (++!1194 lt!168537 lt!168535) lt!169079)))

(declare-fun b!385141 () Bool)

(declare-fun res!172636 () Bool)

(assert (=> b!385141 (=> (not res!172636) (not e!236919))))

(assert (=> b!385141 (= res!172636 (= (size!3436 lt!169079) (+ (size!3436 lt!168537) (size!3436 lt!168535))))))

(declare-fun b!385139 () Bool)

(assert (=> b!385139 (= e!236920 lt!168535)))

(declare-fun b!385142 () Bool)

(assert (=> b!385142 (= e!236919 (or (not (= lt!168535 Nil!4229)) (= lt!169079 lt!168537)))))

(assert (= (and d!136652 c!75869) b!385139))

(assert (= (and d!136652 (not c!75869)) b!385140))

(assert (= (and d!136652 res!172635) b!385141))

(assert (= (and b!385141 res!172636) b!385142))

(declare-fun m!576655 () Bool)

(assert (=> b!385140 m!576655))

(declare-fun m!576657 () Bool)

(assert (=> d!136652 m!576657))

(assert (=> d!136652 m!576243))

(declare-fun m!576659 () Bool)

(assert (=> d!136652 m!576659))

(declare-fun m!576661 () Bool)

(assert (=> b!385141 m!576661))

(assert (=> b!385141 m!575327))

(assert (=> b!385141 m!575851))

(assert (=> b!384100 d!136652))

(declare-fun d!136654 () Bool)

(assert (=> d!136654 (= (seqFromList!1000 (t!58737 tokens!465)) (fromListB!435 (t!58737 tokens!465)))))

(declare-fun bs!46833 () Bool)

(assert (= bs!46833 d!136654))

(declare-fun m!576663 () Bool)

(assert (=> bs!46833 m!576663))

(assert (=> b!384100 d!136654))

(declare-fun d!136656 () Bool)

(assert (=> d!136656 (= (list!1837 (charsOf!460 separatorToken!170)) (list!1841 (c!75661 (charsOf!460 separatorToken!170))))))

(declare-fun bs!46834 () Bool)

(assert (= bs!46834 d!136656))

(declare-fun m!576665 () Bool)

(assert (=> bs!46834 m!576665))

(assert (=> b!384100 d!136656))

(declare-fun d!136658 () Bool)

(assert (=> d!136658 (= (list!1837 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 (seqFromList!1000 (t!58737 tokens!465)) separatorToken!170 0)) (list!1841 (c!75661 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 (seqFromList!1000 (t!58737 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!46835 () Bool)

(assert (= bs!46835 d!136658))

(declare-fun m!576667 () Bool)

(assert (=> bs!46835 m!576667))

(assert (=> b!384100 d!136658))

(declare-fun d!136660 () Bool)

(assert (=> d!136660 (= (++!1194 (++!1194 lt!168537 lt!168561) lt!168558) (++!1194 lt!168537 (++!1194 lt!168561 lt!168558)))))

(declare-fun lt!169082 () Unit!6862)

(declare-fun choose!3077 (List!4239 List!4239 List!4239) Unit!6862)

(assert (=> d!136660 (= lt!169082 (choose!3077 lt!168537 lt!168561 lt!168558))))

(assert (=> d!136660 (= (lemmaConcatAssociativity!540 lt!168537 lt!168561 lt!168558) lt!169082)))

(declare-fun bs!46836 () Bool)

(assert (= bs!46836 d!136660))

(assert (=> bs!46836 m!574885))

(assert (=> bs!46836 m!574901))

(assert (=> bs!46836 m!574883))

(assert (=> bs!46836 m!574885))

(assert (=> bs!46836 m!574883))

(declare-fun m!576669 () Bool)

(assert (=> bs!46836 m!576669))

(declare-fun m!576671 () Bool)

(assert (=> bs!46836 m!576671))

(assert (=> b!384100 d!136660))

(declare-fun b!385144 () Bool)

(declare-fun e!236922 () List!4239)

(assert (=> b!385144 (= e!236922 (Cons!4229 (h!9626 (++!1194 lt!168537 lt!168561)) (++!1194 (t!58735 (++!1194 lt!168537 lt!168561)) lt!168558)))))

(declare-fun d!136662 () Bool)

(declare-fun e!236921 () Bool)

(assert (=> d!136662 e!236921))

(declare-fun res!172637 () Bool)

(assert (=> d!136662 (=> (not res!172637) (not e!236921))))

(declare-fun lt!169083 () List!4239)

(assert (=> d!136662 (= res!172637 (= (content!677 lt!169083) ((_ map or) (content!677 (++!1194 lt!168537 lt!168561)) (content!677 lt!168558))))))

(assert (=> d!136662 (= lt!169083 e!236922)))

(declare-fun c!75870 () Bool)

(assert (=> d!136662 (= c!75870 ((_ is Nil!4229) (++!1194 lt!168537 lt!168561)))))

(assert (=> d!136662 (= (++!1194 (++!1194 lt!168537 lt!168561) lt!168558) lt!169083)))

(declare-fun b!385145 () Bool)

(declare-fun res!172638 () Bool)

(assert (=> b!385145 (=> (not res!172638) (not e!236921))))

(assert (=> b!385145 (= res!172638 (= (size!3436 lt!169083) (+ (size!3436 (++!1194 lt!168537 lt!168561)) (size!3436 lt!168558))))))

(declare-fun b!385143 () Bool)

(assert (=> b!385143 (= e!236922 lt!168558)))

(declare-fun b!385146 () Bool)

(assert (=> b!385146 (= e!236921 (or (not (= lt!168558 Nil!4229)) (= lt!169083 (++!1194 lt!168537 lt!168561))))))

(assert (= (and d!136662 c!75870) b!385143))

(assert (= (and d!136662 (not c!75870)) b!385144))

(assert (= (and d!136662 res!172637) b!385145))

(assert (= (and b!385145 res!172638) b!385146))

(declare-fun m!576673 () Bool)

(assert (=> b!385144 m!576673))

(declare-fun m!576675 () Bool)

(assert (=> d!136662 m!576675))

(assert (=> d!136662 m!574885))

(declare-fun m!576677 () Bool)

(assert (=> d!136662 m!576677))

(assert (=> d!136662 m!576245))

(declare-fun m!576679 () Bool)

(assert (=> b!385145 m!576679))

(assert (=> b!385145 m!574885))

(declare-fun m!576681 () Bool)

(assert (=> b!385145 m!576681))

(assert (=> b!385145 m!576249))

(assert (=> b!384100 d!136662))

(declare-fun bs!46837 () Bool)

(declare-fun b!385149 () Bool)

(assert (= bs!46837 (and b!385149 b!384119)))

(declare-fun lambda!11966 () Int)

(assert (=> bs!46837 (= lambda!11966 lambda!11934)))

(declare-fun bs!46838 () Bool)

(assert (= bs!46838 (and b!385149 d!136584)))

(assert (=> bs!46838 (not (= lambda!11966 lambda!11961))))

(declare-fun bs!46839 () Bool)

(assert (= bs!46839 (and b!385149 b!384969)))

(assert (=> bs!46839 (= lambda!11966 lambda!11962)))

(declare-fun bs!46840 () Bool)

(assert (= bs!46840 (and b!385149 b!384087)))

(assert (=> bs!46840 (not (= lambda!11966 lambda!11933))))

(declare-fun bs!46841 () Bool)

(assert (= bs!46841 (and b!385149 d!136332)))

(assert (=> bs!46841 (= lambda!11966 lambda!11944)))

(declare-fun bs!46842 () Bool)

(assert (= bs!46842 (and b!385149 b!385091)))

(assert (=> bs!46842 (= lambda!11966 lambda!11965)))

(declare-fun b!385157 () Bool)

(declare-fun e!236929 () Bool)

(assert (=> b!385157 (= e!236929 true)))

(declare-fun b!385156 () Bool)

(declare-fun e!236928 () Bool)

(assert (=> b!385156 (= e!236928 e!236929)))

(declare-fun b!385155 () Bool)

(declare-fun e!236927 () Bool)

(assert (=> b!385155 (= e!236927 e!236928)))

(assert (=> b!385149 e!236927))

(assert (= b!385156 b!385157))

(assert (= b!385155 b!385156))

(assert (= (and b!385149 ((_ is Cons!4230) rules!1920)) b!385155))

(assert (=> b!385157 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11966))))

(assert (=> b!385157 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11966))))

(assert (=> b!385149 true))

(declare-fun b!385147 () Bool)

(declare-fun e!236923 () List!4239)

(assert (=> b!385147 (= e!236923 Nil!4229)))

(assert (=> b!385147 (= (print!428 thiss!17480 (singletonSeq!363 (h!9628 (t!58737 tokens!465)))) (printTailRec!389 thiss!17480 (singletonSeq!363 (h!9628 (t!58737 tokens!465))) 0 (BalanceConc!2921 Empty!1456)))))

(declare-fun lt!169088 () Unit!6862)

(declare-fun Unit!6882 () Unit!6862)

(assert (=> b!385147 (= lt!169088 Unit!6882)))

(declare-fun lt!169089 () List!4239)

(declare-fun lt!169086 () Unit!6862)

(declare-fun call!24777 () List!4239)

(assert (=> b!385147 (= lt!169086 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!168 thiss!17480 rules!1920 call!24777 lt!169089))))

(assert (=> b!385147 false))

(declare-fun lt!169084 () Unit!6862)

(declare-fun Unit!6883 () Unit!6862)

(assert (=> b!385147 (= lt!169084 Unit!6883)))

(declare-fun b!385148 () Bool)

(declare-fun e!236925 () List!4239)

(declare-fun call!24779 () List!4239)

(assert (=> b!385148 (= e!236925 call!24779)))

(declare-fun e!236926 () List!4239)

(assert (=> b!385149 (= e!236926 e!236925)))

(declare-fun lt!169087 () Unit!6862)

(assert (=> b!385149 (= lt!169087 (forallContained!370 (t!58737 tokens!465) lambda!11966 (h!9628 (t!58737 tokens!465))))))

(assert (=> b!385149 (= lt!169089 (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (t!58737 (t!58737 tokens!465)) separatorToken!170))))

(declare-fun lt!169085 () Option!1034)

(assert (=> b!385149 (= lt!169085 (maxPrefix!419 thiss!17480 rules!1920 (++!1194 (list!1837 (charsOf!460 (h!9628 (t!58737 tokens!465)))) lt!169089)))))

(declare-fun c!75874 () Bool)

(assert (=> b!385149 (= c!75874 (and ((_ is Some!1033) lt!169085) (= (_1!2725 (v!15200 lt!169085)) (h!9628 (t!58737 tokens!465)))))))

(declare-fun b!385150 () Bool)

(assert (=> b!385150 (= e!236923 (++!1194 call!24779 lt!169089))))

(declare-fun b!385151 () Bool)

(declare-fun e!236924 () BalanceConc!2920)

(assert (=> b!385151 (= e!236924 (charsOf!460 separatorToken!170))))

(declare-fun bm!24771 () Bool)

(assert (=> bm!24771 (= call!24777 (list!1837 e!236924))))

(declare-fun c!75873 () Bool)

(declare-fun c!75872 () Bool)

(assert (=> bm!24771 (= c!75873 c!75872)))

(declare-fun b!385152 () Bool)

(assert (=> b!385152 (= e!236926 Nil!4229)))

(declare-fun b!385153 () Bool)

(declare-fun call!24776 () BalanceConc!2920)

(assert (=> b!385153 (= e!236924 call!24776)))

(declare-fun bm!24772 () Bool)

(declare-fun call!24775 () BalanceConc!2920)

(assert (=> bm!24772 (= call!24775 (charsOf!460 (h!9628 (t!58737 tokens!465))))))

(declare-fun bm!24773 () Bool)

(assert (=> bm!24773 (= call!24776 call!24775)))

(declare-fun d!136664 () Bool)

(declare-fun c!75871 () Bool)

(assert (=> d!136664 (= c!75871 ((_ is Cons!4231) (t!58737 tokens!465)))))

(assert (=> d!136664 (= (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (t!58737 tokens!465) separatorToken!170) e!236926)))

(declare-fun call!24778 () List!4239)

(declare-fun bm!24770 () Bool)

(assert (=> bm!24770 (= call!24779 (++!1194 call!24778 (ite c!75874 lt!169089 call!24777)))))

(declare-fun b!385154 () Bool)

(assert (=> b!385154 (= c!75872 (and ((_ is Some!1033) lt!169085) (not (= (_1!2725 (v!15200 lt!169085)) (h!9628 (t!58737 tokens!465))))))))

(assert (=> b!385154 (= e!236925 e!236923)))

(declare-fun bm!24774 () Bool)

(assert (=> bm!24774 (= call!24778 (list!1837 (ite c!75874 call!24775 call!24776)))))

(assert (= (and d!136664 c!75871) b!385149))

(assert (= (and d!136664 (not c!75871)) b!385152))

(assert (= (and b!385149 c!75874) b!385148))

(assert (= (and b!385149 (not c!75874)) b!385154))

(assert (= (and b!385154 c!75872) b!385150))

(assert (= (and b!385154 (not c!75872)) b!385147))

(assert (= (or b!385150 b!385147) bm!24773))

(assert (= (or b!385150 b!385147) bm!24771))

(assert (= (and bm!24771 c!75873) b!385151))

(assert (= (and bm!24771 (not c!75873)) b!385153))

(assert (= (or b!385148 bm!24773) bm!24772))

(assert (= (or b!385148 b!385150) bm!24774))

(assert (= (or b!385148 b!385150) bm!24770))

(assert (=> b!385151 m!574889))

(declare-fun m!576683 () Bool)

(assert (=> b!385150 m!576683))

(declare-fun m!576685 () Bool)

(assert (=> bm!24770 m!576685))

(declare-fun m!576687 () Bool)

(assert (=> b!385147 m!576687))

(assert (=> b!385147 m!576687))

(declare-fun m!576689 () Bool)

(assert (=> b!385147 m!576689))

(assert (=> b!385147 m!576687))

(declare-fun m!576691 () Bool)

(assert (=> b!385147 m!576691))

(declare-fun m!576693 () Bool)

(assert (=> b!385147 m!576693))

(declare-fun m!576695 () Bool)

(assert (=> b!385149 m!576695))

(declare-fun m!576697 () Bool)

(assert (=> b!385149 m!576697))

(declare-fun m!576699 () Bool)

(assert (=> b!385149 m!576699))

(declare-fun m!576701 () Bool)

(assert (=> b!385149 m!576701))

(assert (=> b!385149 m!576697))

(assert (=> b!385149 m!576699))

(declare-fun m!576703 () Bool)

(assert (=> b!385149 m!576703))

(assert (=> b!385149 m!576701))

(declare-fun m!576705 () Bool)

(assert (=> b!385149 m!576705))

(assert (=> bm!24772 m!576701))

(declare-fun m!576707 () Bool)

(assert (=> bm!24774 m!576707))

(declare-fun m!576709 () Bool)

(assert (=> bm!24771 m!576709))

(assert (=> b!384100 d!136664))

(declare-fun bs!46843 () Bool)

(declare-fun d!136666 () Bool)

(assert (= bs!46843 (and d!136666 b!384119)))

(declare-fun lambda!11967 () Int)

(assert (=> bs!46843 (not (= lambda!11967 lambda!11934))))

(declare-fun bs!46844 () Bool)

(assert (= bs!46844 (and d!136666 d!136584)))

(assert (=> bs!46844 (= lambda!11967 lambda!11961)))

(declare-fun bs!46845 () Bool)

(assert (= bs!46845 (and d!136666 b!384969)))

(assert (=> bs!46845 (not (= lambda!11967 lambda!11962))))

(declare-fun bs!46846 () Bool)

(assert (= bs!46846 (and d!136666 b!385149)))

(assert (=> bs!46846 (not (= lambda!11967 lambda!11966))))

(declare-fun bs!46847 () Bool)

(assert (= bs!46847 (and d!136666 b!384087)))

(assert (=> bs!46847 (= lambda!11967 lambda!11933)))

(declare-fun bs!46848 () Bool)

(assert (= bs!46848 (and d!136666 d!136332)))

(assert (=> bs!46848 (not (= lambda!11967 lambda!11944))))

(declare-fun bs!46849 () Bool)

(assert (= bs!46849 (and d!136666 b!385091)))

(assert (=> bs!46849 (not (= lambda!11967 lambda!11965))))

(declare-fun bs!46850 () Bool)

(declare-fun b!385161 () Bool)

(assert (= bs!46850 (and b!385161 b!384119)))

(declare-fun lambda!11968 () Int)

(assert (=> bs!46850 (= lambda!11968 lambda!11934)))

(declare-fun bs!46851 () Bool)

(assert (= bs!46851 (and b!385161 d!136584)))

(assert (=> bs!46851 (not (= lambda!11968 lambda!11961))))

(declare-fun bs!46852 () Bool)

(assert (= bs!46852 (and b!385161 b!384969)))

(assert (=> bs!46852 (= lambda!11968 lambda!11962)))

(declare-fun bs!46853 () Bool)

(assert (= bs!46853 (and b!385161 d!136666)))

(assert (=> bs!46853 (not (= lambda!11968 lambda!11967))))

(declare-fun bs!46854 () Bool)

(assert (= bs!46854 (and b!385161 b!385149)))

(assert (=> bs!46854 (= lambda!11968 lambda!11966)))

(declare-fun bs!46855 () Bool)

(assert (= bs!46855 (and b!385161 b!384087)))

(assert (=> bs!46855 (not (= lambda!11968 lambda!11933))))

(declare-fun bs!46856 () Bool)

(assert (= bs!46856 (and b!385161 d!136332)))

(assert (=> bs!46856 (= lambda!11968 lambda!11944)))

(declare-fun bs!46857 () Bool)

(assert (= bs!46857 (and b!385161 b!385091)))

(assert (=> bs!46857 (= lambda!11968 lambda!11965)))

(declare-fun b!385169 () Bool)

(declare-fun e!236938 () Bool)

(assert (=> b!385169 (= e!236938 true)))

(declare-fun b!385168 () Bool)

(declare-fun e!236937 () Bool)

(assert (=> b!385168 (= e!236937 e!236938)))

(declare-fun b!385167 () Bool)

(declare-fun e!236936 () Bool)

(assert (=> b!385167 (= e!236936 e!236937)))

(assert (=> b!385161 e!236936))

(assert (= b!385168 b!385169))

(assert (= b!385167 b!385168))

(assert (= (and b!385161 ((_ is Cons!4230) rules!1920)) b!385167))

(assert (=> b!385169 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11968))))

(assert (=> b!385169 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 rules!1920)))) (dynLambda!2448 order!3595 lambda!11968))))

(assert (=> b!385161 true))

(declare-fun b!385158 () Bool)

(declare-fun e!236930 () Bool)

(assert (=> b!385158 (= e!236930 (<= 0 (size!3433 (seqFromList!1000 (t!58737 tokens!465)))))))

(declare-fun b!385159 () Bool)

(declare-fun e!236934 () BalanceConc!2920)

(assert (=> b!385159 (= e!236934 (BalanceConc!2921 Empty!1456))))

(declare-fun call!24781 () Token!1378)

(assert (=> b!385159 (= (print!428 thiss!17480 (singletonSeq!363 call!24781)) (printTailRec!389 thiss!17480 (singletonSeq!363 call!24781) 0 (BalanceConc!2921 Empty!1456)))))

(declare-fun lt!169093 () Unit!6862)

(declare-fun Unit!6884 () Unit!6862)

(assert (=> b!385159 (= lt!169093 Unit!6884)))

(declare-fun lt!169095 () BalanceConc!2920)

(declare-fun lt!169099 () Unit!6862)

(declare-fun call!24780 () BalanceConc!2920)

(assert (=> b!385159 (= lt!169099 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!168 thiss!17480 rules!1920 (list!1837 call!24780) (list!1837 lt!169095)))))

(assert (=> b!385159 false))

(declare-fun lt!169094 () Unit!6862)

(declare-fun Unit!6885 () Unit!6862)

(assert (=> b!385159 (= lt!169094 Unit!6885)))

(declare-fun b!385160 () Bool)

(declare-fun e!236935 () Bool)

(declare-fun lt!169096 () Option!1035)

(assert (=> b!385160 (= e!236935 (= (_1!2727 (v!15201 lt!169096)) (apply!1010 (seqFromList!1000 (t!58737 tokens!465)) 0)))))

(declare-fun e!236931 () BalanceConc!2920)

(declare-fun e!236933 () BalanceConc!2920)

(assert (=> b!385161 (= e!236931 e!236933)))

(declare-fun lt!169090 () List!4241)

(assert (=> b!385161 (= lt!169090 (list!1840 (seqFromList!1000 (t!58737 tokens!465))))))

(declare-fun lt!169098 () Unit!6862)

(assert (=> b!385161 (= lt!169098 (lemmaDropApply!260 lt!169090 0))))

(assert (=> b!385161 (= (head!1036 (drop!283 lt!169090 0)) (apply!1014 lt!169090 0))))

(declare-fun lt!169101 () Unit!6862)

(assert (=> b!385161 (= lt!169101 lt!169098)))

(declare-fun lt!169092 () List!4241)

(assert (=> b!385161 (= lt!169092 (list!1840 (seqFromList!1000 (t!58737 tokens!465))))))

(declare-fun lt!169097 () Unit!6862)

(assert (=> b!385161 (= lt!169097 (lemmaDropTail!252 lt!169092 0))))

(assert (=> b!385161 (= (tail!590 (drop!283 lt!169092 0)) (drop!283 lt!169092 (+ 0 1)))))

(declare-fun lt!169103 () Unit!6862)

(assert (=> b!385161 (= lt!169103 lt!169097)))

(declare-fun lt!169100 () Unit!6862)

(assert (=> b!385161 (= lt!169100 (forallContained!370 (list!1840 (seqFromList!1000 (t!58737 tokens!465))) lambda!11968 (apply!1010 (seqFromList!1000 (t!58737 tokens!465)) 0)))))

(assert (=> b!385161 (= lt!169095 (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 (seqFromList!1000 (t!58737 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!385161 (= lt!169096 (maxPrefixZipperSequence!382 thiss!17480 rules!1920 (++!1196 (charsOf!460 (apply!1010 (seqFromList!1000 (t!58737 tokens!465)) 0)) lt!169095)))))

(declare-fun res!172641 () Bool)

(assert (=> b!385161 (= res!172641 ((_ is Some!1034) lt!169096))))

(assert (=> b!385161 (=> (not res!172641) (not e!236935))))

(declare-fun c!75876 () Bool)

(assert (=> b!385161 (= c!75876 e!236935)))

(declare-fun b!385162 () Bool)

(declare-fun call!24784 () BalanceConc!2920)

(assert (=> b!385162 (= e!236933 call!24784)))

(declare-fun b!385163 () Bool)

(assert (=> b!385163 (= e!236934 (++!1196 call!24784 lt!169095))))

(declare-fun call!24783 () Token!1378)

(declare-fun call!24782 () BalanceConc!2920)

(declare-fun bm!24775 () Bool)

(assert (=> bm!24775 (= call!24782 (charsOf!460 (ite c!75876 call!24783 call!24781)))))

(declare-fun lt!169102 () BalanceConc!2920)

(assert (=> d!136666 (= (list!1837 lt!169102) (printWithSeparatorTokenWhenNeededList!384 thiss!17480 rules!1920 (dropList!220 (seqFromList!1000 (t!58737 tokens!465)) 0) separatorToken!170))))

(assert (=> d!136666 (= lt!169102 e!236931)))

(declare-fun c!75875 () Bool)

(assert (=> d!136666 (= c!75875 (>= 0 (size!3433 (seqFromList!1000 (t!58737 tokens!465)))))))

(declare-fun lt!169091 () Unit!6862)

(assert (=> d!136666 (= lt!169091 (lemmaContentSubsetPreservesForall!164 (list!1840 (seqFromList!1000 (t!58737 tokens!465))) (dropList!220 (seqFromList!1000 (t!58737 tokens!465)) 0) lambda!11967))))

(assert (=> d!136666 e!236930))

(declare-fun res!172640 () Bool)

(assert (=> d!136666 (=> (not res!172640) (not e!236930))))

(assert (=> d!136666 (= res!172640 (>= 0 0))))

(assert (=> d!136666 (= (printWithSeparatorTokenWhenNeededRec!376 thiss!17480 rules!1920 (seqFromList!1000 (t!58737 tokens!465)) separatorToken!170 0) lt!169102)))

(declare-fun b!385164 () Bool)

(declare-fun c!75877 () Bool)

(declare-fun e!236932 () Bool)

(assert (=> b!385164 (= c!75877 e!236932)))

(declare-fun res!172639 () Bool)

(assert (=> b!385164 (=> (not res!172639) (not e!236932))))

(assert (=> b!385164 (= res!172639 ((_ is Some!1034) lt!169096))))

(assert (=> b!385164 (= e!236933 e!236934)))

(declare-fun b!385165 () Bool)

(assert (=> b!385165 (= e!236932 (not (= (_1!2727 (v!15201 lt!169096)) call!24783)))))

(declare-fun bm!24776 () Bool)

(assert (=> bm!24776 (= call!24784 (++!1196 call!24782 (ite c!75876 lt!169095 call!24780)))))

(declare-fun bm!24777 () Bool)

(assert (=> bm!24777 (= call!24783 (apply!1010 (seqFromList!1000 (t!58737 tokens!465)) 0))))

(declare-fun bm!24778 () Bool)

(assert (=> bm!24778 (= call!24781 call!24783)))

(declare-fun b!385166 () Bool)

(assert (=> b!385166 (= e!236931 (BalanceConc!2921 Empty!1456))))

(declare-fun bm!24779 () Bool)

(assert (=> bm!24779 (= call!24780 (charsOf!460 (ite c!75877 separatorToken!170 call!24781)))))

(assert (= (and d!136666 res!172640) b!385158))

(assert (= (and d!136666 c!75875) b!385166))

(assert (= (and d!136666 (not c!75875)) b!385161))

(assert (= (and b!385161 res!172641) b!385160))

(assert (= (and b!385161 c!75876) b!385162))

(assert (= (and b!385161 (not c!75876)) b!385164))

(assert (= (and b!385164 res!172639) b!385165))

(assert (= (and b!385164 c!75877) b!385163))

(assert (= (and b!385164 (not c!75877)) b!385159))

(assert (= (or b!385163 b!385159) bm!24778))

(assert (= (or b!385163 b!385159) bm!24779))

(assert (= (or b!385162 bm!24778 b!385165) bm!24777))

(assert (= (or b!385162 b!385163) bm!24775))

(assert (= (or b!385162 b!385163) bm!24776))

(assert (=> b!385160 m!574881))

(declare-fun m!576711 () Bool)

(assert (=> b!385160 m!576711))

(declare-fun m!576713 () Bool)

(assert (=> bm!24775 m!576713))

(assert (=> bm!24777 m!574881))

(assert (=> bm!24777 m!576711))

(declare-fun m!576715 () Bool)

(assert (=> bm!24776 m!576715))

(declare-fun m!576717 () Bool)

(assert (=> b!385163 m!576717))

(declare-fun m!576719 () Bool)

(assert (=> b!385159 m!576719))

(assert (=> b!385159 m!576719))

(declare-fun m!576721 () Bool)

(assert (=> b!385159 m!576721))

(declare-fun m!576723 () Bool)

(assert (=> b!385159 m!576723))

(assert (=> b!385159 m!576723))

(declare-fun m!576725 () Bool)

(assert (=> b!385159 m!576725))

(declare-fun m!576727 () Bool)

(assert (=> b!385159 m!576727))

(assert (=> b!385159 m!576725))

(assert (=> b!385159 m!576719))

(declare-fun m!576729 () Bool)

(assert (=> b!385159 m!576729))

(assert (=> b!385158 m!574881))

(declare-fun m!576731 () Bool)

(assert (=> b!385158 m!576731))

(declare-fun m!576733 () Bool)

(assert (=> bm!24779 m!576733))

(declare-fun m!576735 () Bool)

(assert (=> b!385161 m!576735))

(declare-fun m!576737 () Bool)

(assert (=> b!385161 m!576737))

(declare-fun m!576739 () Bool)

(assert (=> b!385161 m!576739))

(assert (=> b!385161 m!576711))

(declare-fun m!576741 () Bool)

(assert (=> b!385161 m!576741))

(declare-fun m!576743 () Bool)

(assert (=> b!385161 m!576743))

(assert (=> b!385161 m!574881))

(assert (=> b!385161 m!576739))

(assert (=> b!385161 m!576737))

(declare-fun m!576745 () Bool)

(assert (=> b!385161 m!576745))

(declare-fun m!576747 () Bool)

(assert (=> b!385161 m!576747))

(declare-fun m!576749 () Bool)

(assert (=> b!385161 m!576749))

(declare-fun m!576751 () Bool)

(assert (=> b!385161 m!576751))

(declare-fun m!576753 () Bool)

(assert (=> b!385161 m!576753))

(assert (=> b!385161 m!576711))

(assert (=> b!385161 m!576751))

(assert (=> b!385161 m!574881))

(assert (=> b!385161 m!576711))

(declare-fun m!576755 () Bool)

(assert (=> b!385161 m!576755))

(assert (=> b!385161 m!574881))

(declare-fun m!576757 () Bool)

(assert (=> b!385161 m!576757))

(assert (=> b!385161 m!576747))

(assert (=> b!385161 m!576753))

(declare-fun m!576759 () Bool)

(assert (=> b!385161 m!576759))

(declare-fun m!576761 () Bool)

(assert (=> b!385161 m!576761))

(assert (=> d!136666 m!574881))

(assert (=> d!136666 m!576739))

(assert (=> d!136666 m!576739))

(declare-fun m!576763 () Bool)

(assert (=> d!136666 m!576763))

(declare-fun m!576765 () Bool)

(assert (=> d!136666 m!576765))

(declare-fun m!576767 () Bool)

(assert (=> d!136666 m!576767))

(assert (=> d!136666 m!576763))

(declare-fun m!576769 () Bool)

(assert (=> d!136666 m!576769))

(assert (=> d!136666 m!574881))

(assert (=> d!136666 m!576763))

(assert (=> d!136666 m!574881))

(assert (=> d!136666 m!576731))

(assert (=> b!384100 d!136666))

(declare-fun d!136668 () Bool)

(declare-fun lt!169104 () BalanceConc!2920)

(assert (=> d!136668 (= (list!1837 lt!169104) (originalCharacters!860 separatorToken!170))))

(assert (=> d!136668 (= lt!169104 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (value!27600 separatorToken!170)))))

(assert (=> d!136668 (= (charsOf!460 separatorToken!170) lt!169104)))

(declare-fun b_lambda!15177 () Bool)

(assert (=> (not b_lambda!15177) (not d!136668)))

(assert (=> d!136668 t!58783))

(declare-fun b_and!38673 () Bool)

(assert (= b_and!38653 (and (=> t!58783 result!38276) b_and!38673)))

(assert (=> d!136668 t!58785))

(declare-fun b_and!38675 () Bool)

(assert (= b_and!38655 (and (=> t!58785 result!38278) b_and!38675)))

(assert (=> d!136668 t!58787))

(declare-fun b_and!38677 () Bool)

(assert (= b_and!38657 (and (=> t!58787 result!38280) b_and!38677)))

(declare-fun m!576771 () Bool)

(assert (=> d!136668 m!576771))

(assert (=> d!136668 m!576217))

(assert (=> b!384100 d!136668))

(declare-fun d!136670 () Bool)

(assert (=> d!136670 (= (list!1837 (charsOf!460 (h!9628 tokens!465))) (list!1841 (c!75661 (charsOf!460 (h!9628 tokens!465)))))))

(declare-fun bs!46858 () Bool)

(assert (= bs!46858 d!136670))

(declare-fun m!576773 () Bool)

(assert (=> bs!46858 m!576773))

(assert (=> b!384100 d!136670))

(declare-fun b!385171 () Bool)

(declare-fun e!236940 () List!4239)

(assert (=> b!385171 (= e!236940 (Cons!4229 (h!9626 lt!168537) (++!1194 (t!58735 lt!168537) lt!168561)))))

(declare-fun d!136672 () Bool)

(declare-fun e!236939 () Bool)

(assert (=> d!136672 e!236939))

(declare-fun res!172642 () Bool)

(assert (=> d!136672 (=> (not res!172642) (not e!236939))))

(declare-fun lt!169105 () List!4239)

(assert (=> d!136672 (= res!172642 (= (content!677 lt!169105) ((_ map or) (content!677 lt!168537) (content!677 lt!168561))))))

(assert (=> d!136672 (= lt!169105 e!236940)))

(declare-fun c!75878 () Bool)

(assert (=> d!136672 (= c!75878 ((_ is Nil!4229) lt!168537))))

(assert (=> d!136672 (= (++!1194 lt!168537 lt!168561) lt!169105)))

(declare-fun b!385172 () Bool)

(declare-fun res!172643 () Bool)

(assert (=> b!385172 (=> (not res!172643) (not e!236939))))

(assert (=> b!385172 (= res!172643 (= (size!3436 lt!169105) (+ (size!3436 lt!168537) (size!3436 lt!168561))))))

(declare-fun b!385170 () Bool)

(assert (=> b!385170 (= e!236940 lt!168561)))

(declare-fun b!385173 () Bool)

(assert (=> b!385173 (= e!236939 (or (not (= lt!168561 Nil!4229)) (= lt!169105 lt!168537)))))

(assert (= (and d!136672 c!75878) b!385170))

(assert (= (and d!136672 (not c!75878)) b!385171))

(assert (= (and d!136672 res!172642) b!385172))

(assert (= (and b!385172 res!172643) b!385173))

(declare-fun m!576775 () Bool)

(assert (=> b!385171 m!576775))

(declare-fun m!576777 () Bool)

(assert (=> d!136672 m!576777))

(assert (=> d!136672 m!576243))

(declare-fun m!576779 () Bool)

(assert (=> d!136672 m!576779))

(declare-fun m!576781 () Bool)

(assert (=> b!385172 m!576781))

(assert (=> b!385172 m!575327))

(declare-fun m!576783 () Bool)

(assert (=> b!385172 m!576783))

(assert (=> b!384100 d!136672))

(declare-fun d!136674 () Bool)

(declare-fun lt!169106 () BalanceConc!2920)

(assert (=> d!136674 (= (list!1837 lt!169106) (originalCharacters!860 (h!9628 tokens!465)))))

(assert (=> d!136674 (= lt!169106 (dynLambda!2452 (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (value!27600 (h!9628 tokens!465))))))

(assert (=> d!136674 (= (charsOf!460 (h!9628 tokens!465)) lt!169106)))

(declare-fun b_lambda!15179 () Bool)

(assert (=> (not b_lambda!15179) (not d!136674)))

(assert (=> d!136674 t!58761))

(declare-fun b_and!38679 () Bool)

(assert (= b_and!38673 (and (=> t!58761 result!38262) b_and!38679)))

(assert (=> d!136674 t!58763))

(declare-fun b_and!38681 () Bool)

(assert (= b_and!38675 (and (=> t!58763 result!38266) b_and!38681)))

(assert (=> d!136674 t!58765))

(declare-fun b_and!38683 () Bool)

(assert (= b_and!38677 (and (=> t!58765 result!38268) b_and!38683)))

(declare-fun m!576785 () Bool)

(assert (=> d!136674 m!576785))

(assert (=> d!136674 m!575267))

(assert (=> b!384100 d!136674))

(declare-fun b!385175 () Bool)

(declare-fun e!236942 () List!4239)

(assert (=> b!385175 (= e!236942 (Cons!4229 (h!9626 lt!168561) (++!1194 (t!58735 lt!168561) lt!168558)))))

(declare-fun d!136676 () Bool)

(declare-fun e!236941 () Bool)

(assert (=> d!136676 e!236941))

(declare-fun res!172644 () Bool)

(assert (=> d!136676 (=> (not res!172644) (not e!236941))))

(declare-fun lt!169107 () List!4239)

(assert (=> d!136676 (= res!172644 (= (content!677 lt!169107) ((_ map or) (content!677 lt!168561) (content!677 lt!168558))))))

(assert (=> d!136676 (= lt!169107 e!236942)))

(declare-fun c!75879 () Bool)

(assert (=> d!136676 (= c!75879 ((_ is Nil!4229) lt!168561))))

(assert (=> d!136676 (= (++!1194 lt!168561 lt!168558) lt!169107)))

(declare-fun b!385176 () Bool)

(declare-fun res!172645 () Bool)

(assert (=> b!385176 (=> (not res!172645) (not e!236941))))

(assert (=> b!385176 (= res!172645 (= (size!3436 lt!169107) (+ (size!3436 lt!168561) (size!3436 lt!168558))))))

(declare-fun b!385174 () Bool)

(assert (=> b!385174 (= e!236942 lt!168558)))

(declare-fun b!385177 () Bool)

(assert (=> b!385177 (= e!236941 (or (not (= lt!168558 Nil!4229)) (= lt!169107 lt!168561)))))

(assert (= (and d!136676 c!75879) b!385174))

(assert (= (and d!136676 (not c!75879)) b!385175))

(assert (= (and d!136676 res!172644) b!385176))

(assert (= (and b!385176 res!172645) b!385177))

(declare-fun m!576787 () Bool)

(assert (=> b!385175 m!576787))

(declare-fun m!576789 () Bool)

(assert (=> d!136676 m!576789))

(assert (=> d!136676 m!576779))

(assert (=> d!136676 m!576245))

(declare-fun m!576791 () Bool)

(assert (=> b!385176 m!576791))

(assert (=> b!385176 m!576783))

(assert (=> b!385176 m!576249))

(assert (=> b!384100 d!136676))

(declare-fun d!136678 () Bool)

(assert (=> d!136678 (= (get!1500 lt!168525) (v!15200 lt!168525))))

(assert (=> b!384121 d!136678))

(declare-fun d!136680 () Bool)

(assert (=> d!136680 (= (head!1036 tokens!465) (h!9628 tokens!465))))

(assert (=> b!384121 d!136680))

(declare-fun d!136682 () Bool)

(assert (=> d!136682 (= (inv!5250 (tag!1055 (rule!1470 separatorToken!170))) (= (mod (str.len (value!27599 (tag!1055 (rule!1470 separatorToken!170)))) 2) 0))))

(assert (=> b!384123 d!136682))

(declare-fun d!136684 () Bool)

(declare-fun res!172646 () Bool)

(declare-fun e!236943 () Bool)

(assert (=> d!136684 (=> (not res!172646) (not e!236943))))

(assert (=> d!136684 (= res!172646 (semiInverseModEq!317 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toValue!1608 (transformation!817 (rule!1470 separatorToken!170)))))))

(assert (=> d!136684 (= (inv!5253 (transformation!817 (rule!1470 separatorToken!170))) e!236943)))

(declare-fun b!385178 () Bool)

(assert (=> b!385178 (= e!236943 (equivClasses!300 (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toValue!1608 (transformation!817 (rule!1470 separatorToken!170)))))))

(assert (= (and d!136684 res!172646) b!385178))

(declare-fun m!576793 () Bool)

(assert (=> d!136684 m!576793))

(declare-fun m!576795 () Bool)

(assert (=> b!385178 m!576795))

(assert (=> b!384123 d!136684))

(declare-fun d!136686 () Bool)

(assert (=> d!136686 (= (isEmpty!3070 (_2!2725 lt!168547)) ((_ is Nil!4229) (_2!2725 lt!168547)))))

(assert (=> b!384080 d!136686))

(declare-fun d!136688 () Bool)

(declare-fun lt!169108 () Bool)

(assert (=> d!136688 (= lt!169108 (isEmpty!3070 (list!1837 (_2!2726 lt!168536))))))

(assert (=> d!136688 (= lt!169108 (isEmpty!3084 (c!75661 (_2!2726 lt!168536))))))

(assert (=> d!136688 (= (isEmpty!3073 (_2!2726 lt!168536)) lt!169108)))

(declare-fun bs!46859 () Bool)

(assert (= bs!46859 d!136688))

(declare-fun m!576797 () Bool)

(assert (=> bs!46859 m!576797))

(assert (=> bs!46859 m!576797))

(declare-fun m!576799 () Bool)

(assert (=> bs!46859 m!576799))

(declare-fun m!576801 () Bool)

(assert (=> bs!46859 m!576801))

(assert (=> b!384101 d!136688))

(declare-fun b!385189 () Bool)

(declare-fun e!236946 () Bool)

(declare-fun tp_is_empty!1931 () Bool)

(assert (=> b!385189 (= e!236946 tp_is_empty!1931)))

(declare-fun b!385192 () Bool)

(declare-fun tp!118381 () Bool)

(declare-fun tp!118383 () Bool)

(assert (=> b!385192 (= e!236946 (and tp!118381 tp!118383))))

(assert (=> b!384092 (= tp!118300 e!236946)))

(declare-fun b!385191 () Bool)

(declare-fun tp!118382 () Bool)

(assert (=> b!385191 (= e!236946 tp!118382)))

(declare-fun b!385190 () Bool)

(declare-fun tp!118384 () Bool)

(declare-fun tp!118380 () Bool)

(assert (=> b!385190 (= e!236946 (and tp!118384 tp!118380))))

(assert (= (and b!384092 ((_ is ElementMatch!1041) (regex!817 (rule!1470 (h!9628 tokens!465))))) b!385189))

(assert (= (and b!384092 ((_ is Concat!1881) (regex!817 (rule!1470 (h!9628 tokens!465))))) b!385190))

(assert (= (and b!384092 ((_ is Star!1041) (regex!817 (rule!1470 (h!9628 tokens!465))))) b!385191))

(assert (= (and b!384092 ((_ is Union!1041) (regex!817 (rule!1470 (h!9628 tokens!465))))) b!385192))

(declare-fun b!385197 () Bool)

(declare-fun e!236949 () Bool)

(declare-fun tp!118387 () Bool)

(assert (=> b!385197 (= e!236949 (and tp_is_empty!1931 tp!118387))))

(assert (=> b!384104 (= tp!118303 e!236949)))

(assert (= (and b!384104 ((_ is Cons!4229) (originalCharacters!860 (h!9628 tokens!465)))) b!385197))

(declare-fun b!385200 () Bool)

(declare-fun e!236952 () Bool)

(assert (=> b!385200 (= e!236952 true)))

(declare-fun b!385199 () Bool)

(declare-fun e!236951 () Bool)

(assert (=> b!385199 (= e!236951 e!236952)))

(declare-fun b!385198 () Bool)

(declare-fun e!236950 () Bool)

(assert (=> b!385198 (= e!236950 e!236951)))

(assert (=> b!384134 e!236950))

(assert (= b!385199 b!385200))

(assert (= b!385198 b!385199))

(assert (= (and b!384134 ((_ is Cons!4230) (t!58736 rules!1920))) b!385198))

(assert (=> b!385200 (< (dynLambda!2447 order!3593 (toValue!1608 (transformation!817 (h!9627 (t!58736 rules!1920))))) (dynLambda!2448 order!3595 lambda!11934))))

(assert (=> b!385200 (< (dynLambda!2449 order!3597 (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920))))) (dynLambda!2448 order!3595 lambda!11934))))

(declare-fun b!385201 () Bool)

(declare-fun e!236953 () Bool)

(assert (=> b!385201 (= e!236953 tp_is_empty!1931)))

(declare-fun b!385204 () Bool)

(declare-fun tp!118389 () Bool)

(declare-fun tp!118391 () Bool)

(assert (=> b!385204 (= e!236953 (and tp!118389 tp!118391))))

(assert (=> b!384105 (= tp!118295 e!236953)))

(declare-fun b!385203 () Bool)

(declare-fun tp!118390 () Bool)

(assert (=> b!385203 (= e!236953 tp!118390)))

(declare-fun b!385202 () Bool)

(declare-fun tp!118392 () Bool)

(declare-fun tp!118388 () Bool)

(assert (=> b!385202 (= e!236953 (and tp!118392 tp!118388))))

(assert (= (and b!384105 ((_ is ElementMatch!1041) (regex!817 (h!9627 rules!1920)))) b!385201))

(assert (= (and b!384105 ((_ is Concat!1881) (regex!817 (h!9627 rules!1920)))) b!385202))

(assert (= (and b!384105 ((_ is Star!1041) (regex!817 (h!9627 rules!1920)))) b!385203))

(assert (= (and b!384105 ((_ is Union!1041) (regex!817 (h!9627 rules!1920)))) b!385204))

(declare-fun b!385215 () Bool)

(declare-fun b_free!11853 () Bool)

(declare-fun b_next!11853 () Bool)

(assert (=> b!385215 (= b_free!11853 (not b_next!11853))))

(declare-fun tp!118401 () Bool)

(declare-fun b_and!38685 () Bool)

(assert (=> b!385215 (= tp!118401 b_and!38685)))

(declare-fun b_free!11855 () Bool)

(declare-fun b_next!11855 () Bool)

(assert (=> b!385215 (= b_free!11855 (not b_next!11855))))

(declare-fun tb!34009 () Bool)

(declare-fun t!58813 () Bool)

(assert (=> (and b!385215 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465))))) t!58813) tb!34009))

(declare-fun result!38314 () Bool)

(assert (= result!38314 result!38262))

(assert (=> d!136674 t!58813))

(declare-fun tb!34011 () Bool)

(declare-fun t!58815 () Bool)

(assert (=> (and b!385215 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 lt!168562)))) t!58815) tb!34011))

(declare-fun result!38316 () Bool)

(assert (= result!38316 result!38270))

(assert (=> d!136350 t!58815))

(assert (=> b!384369 t!58813))

(declare-fun tb!34013 () Bool)

(declare-fun t!58817 () Bool)

(assert (=> (and b!385215 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170)))) t!58817) tb!34013))

(declare-fun result!38318 () Bool)

(assert (= result!38318 result!38276))

(assert (=> b!384816 t!58817))

(assert (=> d!136668 t!58817))

(declare-fun tp!118404 () Bool)

(declare-fun b_and!38687 () Bool)

(assert (=> b!385215 (= tp!118404 (and (=> t!58813 result!38314) (=> t!58817 result!38318) (=> t!58815 result!38316) b_and!38687))))

(declare-fun e!236964 () Bool)

(assert (=> b!385215 (= e!236964 (and tp!118401 tp!118404))))

(declare-fun tp!118403 () Bool)

(declare-fun e!236963 () Bool)

(declare-fun b!385214 () Bool)

(assert (=> b!385214 (= e!236963 (and tp!118403 (inv!5250 (tag!1055 (h!9627 (t!58736 rules!1920)))) (inv!5253 (transformation!817 (h!9627 (t!58736 rules!1920)))) e!236964))))

(declare-fun b!385213 () Bool)

(declare-fun e!236965 () Bool)

(declare-fun tp!118402 () Bool)

(assert (=> b!385213 (= e!236965 (and e!236963 tp!118402))))

(assert (=> b!384107 (= tp!118296 e!236965)))

(assert (= b!385214 b!385215))

(assert (= b!385213 b!385214))

(assert (= (and b!384107 ((_ is Cons!4230) (t!58736 rules!1920))) b!385213))

(declare-fun m!576803 () Bool)

(assert (=> b!385214 m!576803))

(declare-fun m!576805 () Bool)

(assert (=> b!385214 m!576805))

(declare-fun b!385229 () Bool)

(declare-fun b_free!11857 () Bool)

(declare-fun b_next!11857 () Bool)

(assert (=> b!385229 (= b_free!11857 (not b_next!11857))))

(declare-fun tp!118415 () Bool)

(declare-fun b_and!38689 () Bool)

(assert (=> b!385229 (= tp!118415 b_and!38689)))

(declare-fun b_free!11859 () Bool)

(declare-fun b_next!11859 () Bool)

(assert (=> b!385229 (= b_free!11859 (not b_next!11859))))

(declare-fun t!58819 () Bool)

(declare-fun tb!34015 () Bool)

(assert (=> (and b!385229 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465))))) t!58819) tb!34015))

(declare-fun result!38322 () Bool)

(assert (= result!38322 result!38262))

(assert (=> d!136674 t!58819))

(declare-fun t!58821 () Bool)

(declare-fun tb!34017 () Bool)

(assert (=> (and b!385229 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 lt!168562)))) t!58821) tb!34017))

(declare-fun result!38324 () Bool)

(assert (= result!38324 result!38270))

(assert (=> d!136350 t!58821))

(assert (=> b!384369 t!58819))

(declare-fun t!58823 () Bool)

(declare-fun tb!34019 () Bool)

(assert (=> (and b!385229 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170)))) t!58823) tb!34019))

(declare-fun result!38326 () Bool)

(assert (= result!38326 result!38276))

(assert (=> b!384816 t!58823))

(assert (=> d!136668 t!58823))

(declare-fun tp!118416 () Bool)

(declare-fun b_and!38691 () Bool)

(assert (=> b!385229 (= tp!118416 (and (=> t!58823 result!38326) (=> t!58819 result!38322) (=> t!58821 result!38324) b_and!38691))))

(declare-fun tp!118418 () Bool)

(declare-fun e!236982 () Bool)

(declare-fun e!236978 () Bool)

(declare-fun b!385227 () Bool)

(assert (=> b!385227 (= e!236978 (and (inv!21 (value!27600 (h!9628 (t!58737 tokens!465)))) e!236982 tp!118418))))

(declare-fun e!236983 () Bool)

(assert (=> b!385229 (= e!236983 (and tp!118415 tp!118416))))

(declare-fun e!236980 () Bool)

(declare-fun b!385226 () Bool)

(declare-fun tp!118419 () Bool)

(assert (=> b!385226 (= e!236980 (and (inv!5254 (h!9628 (t!58737 tokens!465))) e!236978 tp!118419))))

(declare-fun tp!118417 () Bool)

(declare-fun b!385228 () Bool)

(assert (=> b!385228 (= e!236982 (and tp!118417 (inv!5250 (tag!1055 (rule!1470 (h!9628 (t!58737 tokens!465))))) (inv!5253 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) e!236983))))

(assert (=> b!384117 (= tp!118291 e!236980)))

(assert (= b!385228 b!385229))

(assert (= b!385227 b!385228))

(assert (= b!385226 b!385227))

(assert (= (and b!384117 ((_ is Cons!4231) (t!58737 tokens!465))) b!385226))

(declare-fun m!576807 () Bool)

(assert (=> b!385227 m!576807))

(declare-fun m!576809 () Bool)

(assert (=> b!385226 m!576809))

(declare-fun m!576811 () Bool)

(assert (=> b!385228 m!576811))

(declare-fun m!576813 () Bool)

(assert (=> b!385228 m!576813))

(declare-fun b!385230 () Bool)

(declare-fun e!236984 () Bool)

(declare-fun tp!118420 () Bool)

(assert (=> b!385230 (= e!236984 (and tp_is_empty!1931 tp!118420))))

(assert (=> b!384099 (= tp!118292 e!236984)))

(assert (= (and b!384099 ((_ is Cons!4229) (originalCharacters!860 separatorToken!170))) b!385230))

(declare-fun b!385231 () Bool)

(declare-fun e!236985 () Bool)

(assert (=> b!385231 (= e!236985 tp_is_empty!1931)))

(declare-fun b!385234 () Bool)

(declare-fun tp!118422 () Bool)

(declare-fun tp!118424 () Bool)

(assert (=> b!385234 (= e!236985 (and tp!118422 tp!118424))))

(assert (=> b!384123 (= tp!118293 e!236985)))

(declare-fun b!385233 () Bool)

(declare-fun tp!118423 () Bool)

(assert (=> b!385233 (= e!236985 tp!118423)))

(declare-fun b!385232 () Bool)

(declare-fun tp!118425 () Bool)

(declare-fun tp!118421 () Bool)

(assert (=> b!385232 (= e!236985 (and tp!118425 tp!118421))))

(assert (= (and b!384123 ((_ is ElementMatch!1041) (regex!817 (rule!1470 separatorToken!170)))) b!385231))

(assert (= (and b!384123 ((_ is Concat!1881) (regex!817 (rule!1470 separatorToken!170)))) b!385232))

(assert (= (and b!384123 ((_ is Star!1041) (regex!817 (rule!1470 separatorToken!170)))) b!385233))

(assert (= (and b!384123 ((_ is Union!1041) (regex!817 (rule!1470 separatorToken!170)))) b!385234))

(declare-fun b_lambda!15181 () Bool)

(assert (= b_lambda!15177 (or (and b!384113 b_free!11843 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!384118 b_free!11835 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!385215 b_free!11855 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!385229 b_free!11859 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!384114 b_free!11839) b_lambda!15181)))

(declare-fun b_lambda!15183 () Bool)

(assert (= b_lambda!15141 (or (and b!385215 b_free!11855 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384113 b_free!11843 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384118 b_free!11835) (and b!385229 b_free!11859 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384114 b_free!11839 (= (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) b_lambda!15183)))

(declare-fun b_lambda!15185 () Bool)

(assert (= b_lambda!15175 (or b!384119 b_lambda!15185)))

(declare-fun bs!46860 () Bool)

(declare-fun d!136690 () Bool)

(assert (= bs!46860 (and d!136690 b!384119)))

(assert (=> bs!46860 (= (dynLambda!2453 lambda!11934 (h!9628 tokens!465)) (rulesProduceIndividualToken!452 thiss!17480 rules!1920 (h!9628 tokens!465)))))

(assert (=> bs!46860 m!574869))

(assert (=> d!136642 d!136690))

(declare-fun b_lambda!15187 () Bool)

(assert (= b_lambda!15143 (or b!384087 b_lambda!15187)))

(declare-fun bs!46861 () Bool)

(declare-fun d!136692 () Bool)

(assert (= bs!46861 (and d!136692 b!384087)))

(assert (=> bs!46861 (= (dynLambda!2453 lambda!11933 (h!9628 tokens!465)) (not (isSeparator!817 (rule!1470 (h!9628 tokens!465)))))))

(assert (=> b!384380 d!136692))

(declare-fun b_lambda!15189 () Bool)

(assert (= b_lambda!15179 (or (and b!385215 b_free!11855 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384113 b_free!11843 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384118 b_free!11835) (and b!385229 b_free!11859 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) (and b!384114 b_free!11839 (= (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))) (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))))) b_lambda!15189)))

(declare-fun b_lambda!15191 () Bool)

(assert (= b_lambda!15155 (or (and b!384113 b_free!11843 (= (toChars!1467 (transformation!817 (h!9627 rules!1920))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!384118 b_free!11835 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 tokens!465)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!385215 b_free!11855 (= (toChars!1467 (transformation!817 (h!9627 (t!58736 rules!1920)))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!385229 b_free!11859 (= (toChars!1467 (transformation!817 (rule!1470 (h!9628 (t!58737 tokens!465))))) (toChars!1467 (transformation!817 (rule!1470 separatorToken!170))))) (and b!384114 b_free!11839) b_lambda!15191)))

(declare-fun b_lambda!15193 () Bool)

(assert (= b_lambda!15151 (or b!384119 b_lambda!15193)))

(declare-fun bs!46862 () Bool)

(declare-fun d!136694 () Bool)

(assert (= bs!46862 (and d!136694 b!384119)))

(assert (=> bs!46862 (= (dynLambda!2453 lambda!11934 lt!168562) (rulesProduceIndividualToken!452 thiss!17480 rules!1920 lt!168562))))

(assert (=> bs!46862 m!574949))

(assert (=> d!136434 d!136694))

(check-sat (not b!385120) (not bm!24776) (not d!136548) (not bm!24645) (not d!136470) (not bm!24701) (not b!384456) (not b!384672) (not b!384823) (not b!385129) (not d!136648) (not b!384629) (not b!385167) (not b!384695) (not b!384286) b_and!38685 (not b!384776) (not b!384885) (not d!136540) (not bm!24771) (not d!136566) (not b!384809) (not b!385192) (not b!384687) (not d!136568) (not b!384434) (not bm!24762) (not bm!24779) (not b!384794) (not d!136358) (not b!385232) (not b!385172) (not b_next!11855) (not b!384329) (not b!384872) (not d!136670) (not b!384852) (not d!136374) (not b!384884) (not d!136458) (not b!385226) (not d!136344) (not b_lambda!15187) (not bm!24775) (not b!384361) (not d!136528) (not b!385117) (not b!384395) (not b!385141) (not b!384230) (not d!136652) (not b!384580) (not d!136320) (not d!136542) (not b_lambda!15181) (not b!384879) (not b!385121) (not bm!24704) (not d!136370) (not bm!24744) (not b!384847) (not d!136688) (not b!384887) (not bm!24766) (not b!384692) (not d!136466) (not b!384803) (not d!136578) (not d!136368) (not b!385176) (not d!136334) (not b!385138) (not d!136286) (not b!384671) (not b!385204) (not bm!24716) (not b!385130) (not b!385122) (not b!384680) (not b!384398) (not b!384876) (not b_next!11835) (not b!384843) (not bm!24747) (not b!384677) (not d!136440) (not b!385198) (not b!384370) (not d!136362) (not b!385230) (not d!136522) (not b!384386) (not b!384855) (not b!385147) (not b!384330) (not b!384283) (not b_lambda!15145) (not b!384967) (not b!385203) (not b!385097) (not d!136662) (not b!384674) (not d!136656) tp_is_empty!1931 (not bm!24770) (not b!385197) (not bm!24714) (not b!384975) (not b!384670) (not d!136672) (not d!136318) (not b!385136) (not d!136288) (not bm!24774) (not d!136352) (not b!385131) (not d!136668) (not b!385091) (not b!385149) (not d!136584) (not b!384369) (not b!384883) (not d!136582) (not b!384878) (not b!384818) (not bm!24713) (not b!384669) (not d!136580) (not b!384832) (not b!385123) (not bm!24743) (not d!136526) (not b!384435) (not b!384966) (not b!384778) (not b!384358) (not b!384860) (not b!384673) (not b!384384) (not b!385171) (not b!384784) (not b!384693) (not b!384685) (not b!384433) (not d!136574) (not b!385202) (not bm!24764) (not b!385178) (not b!385140) (not b!384450) (not bs!46862) (not b!385119) (not b!384394) (not d!136456) (not b!385145) (not d!136454) (not b!384391) b_and!38689 (not b!384281) (not b!384805) (not b!384861) (not b!384850) (not b!385228) (not d!136666) (not b_next!11833) (not b!384826) (not b!385159) (not b!384721) (not b!385234) (not b!385191) (not b!384405) (not bm!24703) (not bs!46860) (not bm!24763) (not b!384455) (not b!384786) (not b!384581) b_and!38605 (not b!384630) (not b!385093) (not b!384968) (not b!384676) (not b!385137) (not d!136636) (not d!136560) (not d!136434) (not b_next!11839) (not b!385160) (not b!384720) (not b!384808) (not d!136342) (not b!384816) (not b!384817) (not bm!24769) (not b!384404) (not bm!24772) (not b!384362) (not d!136480) (not bm!24712) (not d!136462) (not b!385163) (not b!384667) (not b!384582) (not b_next!11859) (not tb!33979) (not b!384678) b_and!38691 (not d!136356) (not b!384831) (not b!384722) (not b!385150) (not b!384804) (not b!384448) (not b!385190) b_and!38613 (not b!385144) (not b!384880) (not d!136524) b_and!38679 (not d!136660) (not d!136436) (not b!384631) (not b!385116) (not b!384287) (not d!136658) (not d!136336) (not b_lambda!15193) b_and!38681 (not b!384874) b_and!38609 (not bm!24707) (not b_next!11843) (not b_lambda!15185) (not d!136556) (not b!384328) (not d!136432) (not d!136570) (not d!136304) (not b!384877) (not d!136638) (not d!136534) (not d!136552) (not b!385135) (not b!384828) (not d!136350) b_and!38683 (not d!136676) (not b!384777) (not b!384628) (not b_lambda!15183) (not b!384633) (not d!136302) (not b!385233) (not b!385158) (not d!136674) (not b!384780) (not bm!24715) (not b!384381) (not b!384276) (not d!136340) (not d!136346) (not d!136650) (not b!385175) (not b!384842) (not b!384785) (not d!136654) (not bm!24709) (not bm!24745) (not b!384806) (not d!136364) (not b!384627) (not d!136538) (not b!385133) (not bm!24710) (not b!384389) (not b!384636) (not b!384375) (not d!136536) (not b!384625) b_and!38687 (not b!384881) (not b!384814) (not b!385227) (not b!385214) (not b!384971) (not d!136684) (not b_lambda!15189) (not b_next!11841) (not b!384882) (not b!384332) (not b!385124) (not tb!33985) (not b!384782) (not b_next!11837) (not d!136324) (not b_next!11857) (not d!136332) (not d!136366) (not d!136476) (not b!385155) (not b!384821) (not b!385092) (not b_next!11853) (not tb!33973) (not d!136544) (not b!385151) (not b!384857) (not b!384675) (not b!384969) (not b!385213) (not d!136550) (not b!384626) (not bm!24777) (not d!136640) (not bm!24650) (not b!384278) (not d!136558) (not b!385161) (not d!136642) (not b!384691) (not b!385089) (not b_lambda!15191) (not b!384779))
(check-sat b_and!38685 (not b_next!11855) (not b_next!11835) b_and!38689 (not b_next!11833) b_and!38605 (not b_next!11839) b_and!38681 b_and!38683 b_and!38687 (not b_next!11853) (not b_next!11859) b_and!38691 b_and!38679 b_and!38613 b_and!38609 (not b_next!11843) (not b_next!11841) (not b_next!11837) (not b_next!11857))
