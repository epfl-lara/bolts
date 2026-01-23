; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!15764 () Bool)

(assert start!15764)

(declare-fun b!148327 () Bool)

(declare-fun b_free!5309 () Bool)

(declare-fun b_next!5309 () Bool)

(assert (=> b!148327 (= b_free!5309 (not b_next!5309))))

(declare-fun tp!77778 () Bool)

(declare-fun b_and!8285 () Bool)

(assert (=> b!148327 (= tp!77778 b_and!8285)))

(declare-fun b_free!5311 () Bool)

(declare-fun b_next!5311 () Bool)

(assert (=> b!148327 (= b_free!5311 (not b_next!5311))))

(declare-fun tp!77783 () Bool)

(declare-fun b_and!8287 () Bool)

(assert (=> b!148327 (= tp!77783 b_and!8287)))

(declare-fun b!148325 () Bool)

(declare-fun b_free!5313 () Bool)

(declare-fun b_next!5313 () Bool)

(assert (=> b!148325 (= b_free!5313 (not b_next!5313))))

(declare-fun tp!77781 () Bool)

(declare-fun b_and!8289 () Bool)

(assert (=> b!148325 (= tp!77781 b_and!8289)))

(declare-fun b_free!5315 () Bool)

(declare-fun b_next!5315 () Bool)

(assert (=> b!148325 (= b_free!5315 (not b_next!5315))))

(declare-fun tp!77773 () Bool)

(declare-fun b_and!8291 () Bool)

(assert (=> b!148325 (= tp!77773 b_and!8291)))

(declare-fun b!148311 () Bool)

(declare-fun b_free!5317 () Bool)

(declare-fun b_next!5317 () Bool)

(assert (=> b!148311 (= b_free!5317 (not b_next!5317))))

(declare-fun tp!77775 () Bool)

(declare-fun b_and!8293 () Bool)

(assert (=> b!148311 (= tp!77775 b_and!8293)))

(declare-fun b_free!5319 () Bool)

(declare-fun b_next!5319 () Bool)

(assert (=> b!148311 (= b_free!5319 (not b_next!5319))))

(declare-fun tp!77780 () Bool)

(declare-fun b_and!8295 () Bool)

(assert (=> b!148311 (= tp!77780 b_and!8295)))

(declare-fun b!148307 () Bool)

(declare-fun res!68176 () Bool)

(declare-fun e!88308 () Bool)

(assert (=> b!148307 (=> (not res!68176) (not e!88308))))

(declare-datatypes ((C!2258 0))(
  ( (C!2259 (val!1015 Int)) )
))
(declare-datatypes ((List!2583 0))(
  ( (Nil!2573) (Cons!2573 (h!7970 C!2258) (t!24455 List!2583)) )
))
(declare-fun lt!42995 () List!2583)

(declare-fun lt!42993 () List!2583)

(declare-datatypes ((IArray!1421 0))(
  ( (IArray!1422 (innerList!768 List!2583)) )
))
(declare-datatypes ((Conc!710 0))(
  ( (Node!710 (left!1943 Conc!710) (right!2273 Conc!710) (csize!1650 Int) (cheight!921 Int)) (Leaf!1272 (xs!3305 IArray!1421) (csize!1651 Int)) (Empty!710) )
))
(declare-datatypes ((BalanceConc!1428 0))(
  ( (BalanceConc!1429 (c!30145 Conc!710)) )
))
(declare-fun list!894 (BalanceConc!1428) List!2583)

(declare-fun seqFromList!265 (List!2583) BalanceConc!1428)

(assert (=> b!148307 (= res!68176 (= (list!894 (seqFromList!265 lt!42995)) lt!42993))))

(declare-fun e!88298 () Bool)

(declare-fun b!148308 () Bool)

(declare-datatypes ((List!2584 0))(
  ( (Nil!2574) (Cons!2574 (h!7971 (_ BitVec 16)) (t!24456 List!2584)) )
))
(declare-datatypes ((TokenValue!466 0))(
  ( (FloatLiteralValue!932 (text!3707 List!2584)) (TokenValueExt!465 (__x!2419 Int)) (Broken!2330 (value!16945 List!2584)) (Object!475) (End!466) (Def!466) (Underscore!466) (Match!466) (Else!466) (Error!466) (Case!466) (If!466) (Extends!466) (Abstract!466) (Class!466) (Val!466) (DelimiterValue!932 (del!526 List!2584)) (KeywordValue!472 (value!16946 List!2584)) (CommentValue!932 (value!16947 List!2584)) (WhitespaceValue!932 (value!16948 List!2584)) (IndentationValue!466 (value!16949 List!2584)) (String!3411) (Int32!466) (Broken!2331 (value!16950 List!2584)) (Boolean!467) (Unit!1930) (OperatorValue!469 (op!526 List!2584)) (IdentifierValue!932 (value!16951 List!2584)) (IdentifierValue!933 (value!16952 List!2584)) (WhitespaceValue!933 (value!16953 List!2584)) (True!932) (False!932) (Broken!2332 (value!16954 List!2584)) (Broken!2333 (value!16955 List!2584)) (True!933) (RightBrace!466) (RightBracket!466) (Colon!466) (Null!466) (Comma!466) (LeftBracket!466) (False!933) (LeftBrace!466) (ImaginaryLiteralValue!466 (text!3708 List!2584)) (StringLiteralValue!1398 (value!16956 List!2584)) (EOFValue!466 (value!16957 List!2584)) (IdentValue!466 (value!16958 List!2584)) (DelimiterValue!933 (value!16959 List!2584)) (DedentValue!466 (value!16960 List!2584)) (NewLineValue!466 (value!16961 List!2584)) (IntegerValue!1398 (value!16962 (_ BitVec 32)) (text!3709 List!2584)) (IntegerValue!1399 (value!16963 Int) (text!3710 List!2584)) (Times!466) (Or!466) (Equal!466) (Minus!466) (Broken!2334 (value!16964 List!2584)) (And!466) (Div!466) (LessEqual!466) (Mod!466) (Concat!1134) (Not!466) (Plus!466) (SpaceValue!466 (value!16965 List!2584)) (IntegerValue!1400 (value!16966 Int) (text!3711 List!2584)) (StringLiteralValue!1399 (text!3712 List!2584)) (FloatLiteralValue!933 (text!3713 List!2584)) (BytesLiteralValue!466 (value!16967 List!2584)) (CommentValue!933 (value!16968 List!2584)) (StringLiteralValue!1400 (value!16969 List!2584)) (ErrorTokenValue!466 (msg!527 List!2584)) )
))
(declare-datatypes ((String!3412 0))(
  ( (String!3413 (value!16970 String)) )
))
(declare-datatypes ((TokenValueInjection!704 0))(
  ( (TokenValueInjection!705 (toValue!1075 Int) (toChars!934 Int)) )
))
(declare-datatypes ((Regex!668 0))(
  ( (ElementMatch!668 (c!30146 C!2258)) (Concat!1135 (regOne!1848 Regex!668) (regTwo!1848 Regex!668)) (EmptyExpr!668) (Star!668 (reg!997 Regex!668)) (EmptyLang!668) (Union!668 (regOne!1849 Regex!668) (regTwo!1849 Regex!668)) )
))
(declare-datatypes ((Rule!688 0))(
  ( (Rule!689 (regex!444 Regex!668) (tag!622 String!3412) (isSeparator!444 Bool) (transformation!444 TokenValueInjection!704)) )
))
(declare-datatypes ((Token!632 0))(
  ( (Token!633 (value!16971 TokenValue!466) (rule!951 Rule!688) (size!2212 Int) (originalCharacters!487 List!2583)) )
))
(declare-fun separatorToken!170 () Token!632)

(declare-fun e!88301 () Bool)

(declare-fun tp!77779 () Bool)

(declare-fun inv!21 (TokenValue!466) Bool)

(assert (=> b!148308 (= e!88301 (and (inv!21 (value!16971 separatorToken!170)) e!88298 tp!77779))))

(declare-fun b!148309 () Bool)

(declare-datatypes ((List!2585 0))(
  ( (Nil!2575) (Cons!2575 (h!7972 Token!632) (t!24457 List!2585)) )
))
(declare-fun tokens!465 () List!2585)

(declare-datatypes ((List!2586 0))(
  ( (Nil!2576) (Cons!2576 (h!7973 Rule!688) (t!24458 List!2586)) )
))
(declare-fun rules!1920 () List!2586)

(declare-datatypes ((LexerInterface!330 0))(
  ( (LexerInterfaceExt!327 (__x!2420 Int)) (Lexer!328) )
))
(declare-fun thiss!17480 () LexerInterface!330)

(declare-fun rulesProduceEachTokenIndividuallyList!72 (LexerInterface!330 List!2586 List!2585) Bool)

(assert (=> b!148309 (= e!88308 (not (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 tokens!465))))))

(declare-fun lt!42994 () List!2583)

(declare-fun charsOf!99 (Token!632) BalanceConc!1428)

(assert (=> b!148309 (= lt!42994 (list!894 (charsOf!99 separatorToken!170)))))

(declare-fun b!148310 () Bool)

(declare-fun res!68181 () Bool)

(declare-fun e!88310 () Bool)

(assert (=> b!148310 (=> (not res!68181) (not e!88310))))

(assert (=> b!148310 (= res!68181 (is-Cons!2575 tokens!465))))

(declare-fun e!88309 () Bool)

(assert (=> b!148311 (= e!88309 (and tp!77775 tp!77780))))

(declare-fun b!148312 () Bool)

(declare-fun tp!77774 () Bool)

(declare-fun e!88299 () Bool)

(declare-fun e!88312 () Bool)

(declare-fun inv!3361 (String!3412) Bool)

(declare-fun inv!3364 (TokenValueInjection!704) Bool)

(assert (=> b!148312 (= e!88299 (and tp!77774 (inv!3361 (tag!622 (h!7973 rules!1920))) (inv!3364 (transformation!444 (h!7973 rules!1920))) e!88312))))

(declare-fun b!148313 () Bool)

(declare-fun e!88303 () Bool)

(declare-fun tp!77782 () Bool)

(assert (=> b!148313 (= e!88303 (and e!88299 tp!77782))))

(declare-fun e!88307 () Bool)

(declare-fun b!148314 () Bool)

(declare-fun tp!77776 () Bool)

(declare-fun e!88305 () Bool)

(assert (=> b!148314 (= e!88307 (and tp!77776 (inv!3361 (tag!622 (rule!951 (h!7972 tokens!465)))) (inv!3364 (transformation!444 (rule!951 (h!7972 tokens!465)))) e!88305))))

(declare-fun b!148315 () Bool)

(declare-fun e!88302 () Bool)

(assert (=> b!148315 (= e!88302 e!88310)))

(declare-fun res!68171 () Bool)

(assert (=> b!148315 (=> (not res!68171) (not e!88310))))

(declare-datatypes ((IArray!1423 0))(
  ( (IArray!1424 (innerList!769 List!2585)) )
))
(declare-datatypes ((Conc!711 0))(
  ( (Node!711 (left!1944 Conc!711) (right!2274 Conc!711) (csize!1652 Int) (cheight!922 Int)) (Leaf!1273 (xs!3306 IArray!1423) (csize!1653 Int)) (Empty!711) )
))
(declare-datatypes ((BalanceConc!1430 0))(
  ( (BalanceConc!1431 (c!30147 Conc!711)) )
))
(declare-fun lt!42996 () BalanceConc!1430)

(declare-fun rulesProduceEachTokenIndividually!122 (LexerInterface!330 List!2586 BalanceConc!1430) Bool)

(assert (=> b!148315 (= res!68171 (rulesProduceEachTokenIndividually!122 thiss!17480 rules!1920 lt!42996))))

(declare-fun seqFromList!266 (List!2585) BalanceConc!1430)

(assert (=> b!148315 (= lt!42996 (seqFromList!266 tokens!465))))

(declare-fun b!148316 () Bool)

(declare-fun res!68179 () Bool)

(assert (=> b!148316 (=> (not res!68179) (not e!88310))))

(declare-fun lambda!3719 () Int)

(declare-fun forall!424 (List!2585 Int) Bool)

(assert (=> b!148316 (= res!68179 (forall!424 tokens!465 lambda!3719))))

(declare-fun e!88311 () Bool)

(declare-fun b!148317 () Bool)

(declare-fun e!88297 () Bool)

(declare-fun tp!77784 () Bool)

(declare-fun inv!3365 (Token!632) Bool)

(assert (=> b!148317 (= e!88311 (and (inv!3365 (h!7972 tokens!465)) e!88297 tp!77784))))

(declare-fun b!148318 () Bool)

(declare-fun res!68175 () Bool)

(assert (=> b!148318 (=> (not res!68175) (not e!88310))))

(assert (=> b!148318 (= res!68175 (isSeparator!444 (rule!951 separatorToken!170)))))

(declare-fun b!148319 () Bool)

(declare-fun res!68180 () Bool)

(assert (=> b!148319 (=> (not res!68180) (not e!88302))))

(declare-fun rulesInvariant!296 (LexerInterface!330 List!2586) Bool)

(assert (=> b!148319 (= res!68180 (rulesInvariant!296 thiss!17480 rules!1920))))

(declare-fun b!148320 () Bool)

(assert (=> b!148320 (= e!88310 e!88308)))

(declare-fun res!68174 () Bool)

(assert (=> b!148320 (=> (not res!68174) (not e!88308))))

(assert (=> b!148320 (= res!68174 (= lt!42995 lt!42993))))

(declare-fun printWithSeparatorTokenWhenNeededRec!13 (LexerInterface!330 List!2586 BalanceConc!1430 Token!632 Int) BalanceConc!1428)

(assert (=> b!148320 (= lt!42993 (list!894 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!23 (LexerInterface!330 List!2586 List!2585 Token!632) List!2583)

(assert (=> b!148320 (= lt!42995 (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!148321 () Bool)

(declare-fun res!68173 () Bool)

(assert (=> b!148321 (=> (not res!68173) (not e!88310))))

(declare-fun rulesProduceIndividualToken!79 (LexerInterface!330 List!2586 Token!632) Bool)

(assert (=> b!148321 (= res!68173 (rulesProduceIndividualToken!79 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!148323 () Bool)

(declare-fun res!68172 () Bool)

(assert (=> b!148323 (=> (not res!68172) (not e!88302))))

(declare-fun isEmpty!1007 (List!2586) Bool)

(assert (=> b!148323 (= res!68172 (not (isEmpty!1007 rules!1920)))))

(declare-fun res!68178 () Bool)

(assert (=> start!15764 (=> (not res!68178) (not e!88302))))

(assert (=> start!15764 (= res!68178 (is-Lexer!328 thiss!17480))))

(assert (=> start!15764 e!88302))

(assert (=> start!15764 true))

(assert (=> start!15764 e!88303))

(assert (=> start!15764 (and (inv!3365 separatorToken!170) e!88301)))

(assert (=> start!15764 e!88311))

(declare-fun b!148322 () Bool)

(declare-fun tp!77777 () Bool)

(assert (=> b!148322 (= e!88298 (and tp!77777 (inv!3361 (tag!622 (rule!951 separatorToken!170))) (inv!3364 (transformation!444 (rule!951 separatorToken!170))) e!88309))))

(declare-fun b!148324 () Bool)

(declare-fun res!68177 () Bool)

(assert (=> b!148324 (=> (not res!68177) (not e!88310))))

(declare-fun sepAndNonSepRulesDisjointChars!33 (List!2586 List!2586) Bool)

(assert (=> b!148324 (= res!68177 (sepAndNonSepRulesDisjointChars!33 rules!1920 rules!1920))))

(assert (=> b!148325 (= e!88305 (and tp!77781 tp!77773))))

(declare-fun b!148326 () Bool)

(declare-fun tp!77772 () Bool)

(assert (=> b!148326 (= e!88297 (and (inv!21 (value!16971 (h!7972 tokens!465))) e!88307 tp!77772))))

(assert (=> b!148327 (= e!88312 (and tp!77778 tp!77783))))

(assert (= (and start!15764 res!68178) b!148323))

(assert (= (and b!148323 res!68172) b!148319))

(assert (= (and b!148319 res!68180) b!148315))

(assert (= (and b!148315 res!68171) b!148321))

(assert (= (and b!148321 res!68173) b!148318))

(assert (= (and b!148318 res!68175) b!148316))

(assert (= (and b!148316 res!68179) b!148324))

(assert (= (and b!148324 res!68177) b!148310))

(assert (= (and b!148310 res!68181) b!148320))

(assert (= (and b!148320 res!68174) b!148307))

(assert (= (and b!148307 res!68176) b!148309))

(assert (= b!148312 b!148327))

(assert (= b!148313 b!148312))

(assert (= (and start!15764 (is-Cons!2576 rules!1920)) b!148313))

(assert (= b!148322 b!148311))

(assert (= b!148308 b!148322))

(assert (= start!15764 b!148308))

(assert (= b!148314 b!148325))

(assert (= b!148326 b!148314))

(assert (= b!148317 b!148326))

(assert (= (and start!15764 (is-Cons!2575 tokens!465)) b!148317))

(declare-fun m!131571 () Bool)

(assert (=> b!148316 m!131571))

(declare-fun m!131573 () Bool)

(assert (=> b!148308 m!131573))

(declare-fun m!131575 () Bool)

(assert (=> b!148322 m!131575))

(declare-fun m!131577 () Bool)

(assert (=> b!148322 m!131577))

(declare-fun m!131579 () Bool)

(assert (=> start!15764 m!131579))

(declare-fun m!131581 () Bool)

(assert (=> b!148323 m!131581))

(declare-fun m!131583 () Bool)

(assert (=> b!148315 m!131583))

(declare-fun m!131585 () Bool)

(assert (=> b!148315 m!131585))

(declare-fun m!131587 () Bool)

(assert (=> b!148326 m!131587))

(declare-fun m!131589 () Bool)

(assert (=> b!148307 m!131589))

(assert (=> b!148307 m!131589))

(declare-fun m!131591 () Bool)

(assert (=> b!148307 m!131591))

(declare-fun m!131593 () Bool)

(assert (=> b!148320 m!131593))

(assert (=> b!148320 m!131593))

(declare-fun m!131595 () Bool)

(assert (=> b!148320 m!131595))

(declare-fun m!131597 () Bool)

(assert (=> b!148320 m!131597))

(declare-fun m!131599 () Bool)

(assert (=> b!148312 m!131599))

(declare-fun m!131601 () Bool)

(assert (=> b!148312 m!131601))

(declare-fun m!131603 () Bool)

(assert (=> b!148321 m!131603))

(declare-fun m!131605 () Bool)

(assert (=> b!148319 m!131605))

(declare-fun m!131607 () Bool)

(assert (=> b!148309 m!131607))

(declare-fun m!131609 () Bool)

(assert (=> b!148309 m!131609))

(assert (=> b!148309 m!131609))

(declare-fun m!131611 () Bool)

(assert (=> b!148309 m!131611))

(declare-fun m!131613 () Bool)

(assert (=> b!148317 m!131613))

(declare-fun m!131615 () Bool)

(assert (=> b!148314 m!131615))

(declare-fun m!131617 () Bool)

(assert (=> b!148314 m!131617))

(declare-fun m!131619 () Bool)

(assert (=> b!148324 m!131619))

(push 1)

(assert (not b_next!5317))

(assert (not b!148308))

(assert (not b!148314))

(assert (not b!148326))

(assert b_and!8291)

(assert (not b!148313))

(assert (not b!148312))

(assert b_and!8295)

(assert b_and!8285)

(assert (not b!148322))

(assert (not b_next!5309))

(assert (not b!148307))

(assert (not start!15764))

(assert (not b_next!5319))

(assert (not b!148319))

(assert (not b!148324))

(assert (not b!148309))

(assert (not b_next!5313))

(assert (not b!148316))

(assert (not b!148321))

(assert b_and!8289)

(assert (not b_next!5315))

(assert b_and!8287)

(assert (not b!148323))

(assert (not b!148315))

(assert (not b!148317))

(assert b_and!8293)

(assert (not b!148320))

(assert (not b_next!5311))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5317))

(assert (not b_next!5313))

(assert b_and!8291)

(assert b_and!8295)

(assert b_and!8285)

(assert (not b_next!5309))

(assert b_and!8287)

(assert (not b_next!5319))

(assert b_and!8289)

(assert (not b_next!5315))

(assert b_and!8293)

(assert (not b_next!5311))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!35406 () Bool)

(declare-fun list!896 (Conc!710) List!2583)

(assert (=> d!35406 (= (list!894 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0)) (list!896 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0))))))

(declare-fun bs!13443 () Bool)

(assert (= bs!13443 d!35406))

(declare-fun m!131671 () Bool)

(assert (=> bs!13443 m!131671))

(assert (=> b!148320 d!35406))

(declare-fun bs!13444 () Bool)

(declare-fun d!35408 () Bool)

(assert (= bs!13444 (and d!35408 b!148316)))

(declare-fun lambda!3727 () Int)

(assert (=> bs!13444 (= lambda!3727 lambda!3719)))

(declare-fun bs!13445 () Bool)

(declare-fun b!148415 () Bool)

(assert (= bs!13445 (and b!148415 b!148316)))

(declare-fun lambda!3728 () Int)

(assert (=> bs!13445 (not (= lambda!3728 lambda!3719))))

(declare-fun bs!13446 () Bool)

(assert (= bs!13446 (and b!148415 d!35408)))

(assert (=> bs!13446 (not (= lambda!3728 lambda!3727))))

(declare-fun b!148428 () Bool)

(declare-fun e!88394 () Bool)

(assert (=> b!148428 (= e!88394 true)))

(declare-fun b!148427 () Bool)

(declare-fun e!88393 () Bool)

(assert (=> b!148427 (= e!88393 e!88394)))

(declare-fun b!148426 () Bool)

(declare-fun e!88392 () Bool)

(assert (=> b!148426 (= e!88392 e!88393)))

(assert (=> b!148415 e!88392))

(assert (= b!148427 b!148428))

(assert (= b!148426 b!148427))

(assert (= (and b!148415 (is-Cons!2576 rules!1920)) b!148426))

(declare-fun order!1265 () Int)

(declare-fun order!1263 () Int)

(declare-fun dynLambda!882 (Int Int) Int)

(declare-fun dynLambda!883 (Int Int) Int)

(assert (=> b!148428 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3728))))

(declare-fun order!1267 () Int)

(declare-fun dynLambda!884 (Int Int) Int)

(assert (=> b!148428 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3728))))

(assert (=> b!148415 true))

(declare-fun call!5883 () Token!632)

(declare-fun call!5879 () Token!632)

(declare-fun bm!5874 () Bool)

(declare-fun c!30158 () Bool)

(declare-fun call!5882 () BalanceConc!1428)

(assert (=> bm!5874 (= call!5882 (charsOf!99 (ite c!30158 call!5879 call!5883)))))

(declare-fun b!148409 () Bool)

(declare-fun e!88382 () BalanceConc!1428)

(assert (=> b!148409 (= e!88382 (BalanceConc!1429 Empty!710))))

(declare-fun print!87 (LexerInterface!330 BalanceConc!1430) BalanceConc!1428)

(declare-fun singletonSeq!20 (Token!632) BalanceConc!1430)

(declare-fun printTailRec!50 (LexerInterface!330 BalanceConc!1430 Int BalanceConc!1428) BalanceConc!1428)

(assert (=> b!148409 (= (print!87 thiss!17480 (singletonSeq!20 call!5883)) (printTailRec!50 thiss!17480 (singletonSeq!20 call!5883) 0 (BalanceConc!1429 Empty!710)))))

(declare-datatypes ((Unit!1932 0))(
  ( (Unit!1933) )
))
(declare-fun lt!43046 () Unit!1932)

(declare-fun Unit!1934 () Unit!1932)

(assert (=> b!148409 (= lt!43046 Unit!1934)))

(declare-fun lt!43047 () BalanceConc!1428)

(declare-fun call!5880 () BalanceConc!1428)

(declare-fun lt!43049 () Unit!1932)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 (LexerInterface!330 List!2586 List!2583 List!2583) Unit!1932)

(assert (=> b!148409 (= lt!43049 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 (list!894 call!5880) (list!894 lt!43047)))))

(assert (=> b!148409 false))

(declare-fun lt!43051 () Unit!1932)

(declare-fun Unit!1935 () Unit!1932)

(assert (=> b!148409 (= lt!43051 Unit!1935)))

(declare-fun b!148410 () Bool)

(declare-fun c!30159 () Bool)

(declare-fun e!88381 () Bool)

(assert (=> b!148410 (= c!30159 e!88381)))

(declare-fun res!68230 () Bool)

(assert (=> b!148410 (=> (not res!68230) (not e!88381))))

(declare-datatypes ((tuple2!2532 0))(
  ( (tuple2!2533 (_1!1482 Token!632) (_2!1482 BalanceConc!1428)) )
))
(declare-datatypes ((Option!226 0))(
  ( (None!225) (Some!225 (v!13594 tuple2!2532)) )
))
(declare-fun lt!43040 () Option!226)

(assert (=> b!148410 (= res!68230 (is-Some!225 lt!43040))))

(declare-fun e!88383 () BalanceConc!1428)

(assert (=> b!148410 (= e!88383 e!88382)))

(declare-fun b!148411 () Bool)

(assert (=> b!148411 (= e!88381 (not (= (_1!1482 (v!13594 lt!43040)) call!5879)))))

(declare-fun b!148412 () Bool)

(declare-fun call!5881 () BalanceConc!1428)

(assert (=> b!148412 (= e!88383 call!5881)))

(declare-fun b!148413 () Bool)

(declare-fun e!88380 () Bool)

(declare-fun apply!327 (BalanceConc!1430 Int) Token!632)

(assert (=> b!148413 (= e!88380 (= (_1!1482 (v!13594 lt!43040)) (apply!327 lt!42996 0)))))

(declare-fun b!148414 () Bool)

(declare-fun e!88385 () BalanceConc!1428)

(assert (=> b!148414 (= e!88385 (BalanceConc!1429 Empty!710))))

(declare-fun bm!5875 () Bool)

(assert (=> bm!5875 (= call!5879 (apply!327 lt!42996 0))))

(declare-fun bm!5876 () Bool)

(declare-fun ++!547 (BalanceConc!1428 BalanceConc!1428) BalanceConc!1428)

(assert (=> bm!5876 (= call!5881 (++!547 call!5882 (ite c!30158 lt!43047 call!5880)))))

(declare-fun b!148416 () Bool)

(assert (=> b!148416 (= e!88382 (++!547 call!5881 lt!43047))))

(declare-fun bm!5877 () Bool)

(assert (=> bm!5877 (= call!5880 (charsOf!99 (ite c!30159 separatorToken!170 call!5883)))))

(declare-fun b!148417 () Bool)

(declare-fun e!88384 () Bool)

(declare-fun size!2214 (BalanceConc!1430) Int)

(assert (=> b!148417 (= e!88384 (<= 0 (size!2214 lt!42996)))))

(declare-fun bm!5878 () Bool)

(assert (=> bm!5878 (= call!5883 call!5879)))

(declare-fun lt!43050 () BalanceConc!1428)

(declare-fun dropList!61 (BalanceConc!1430 Int) List!2585)

(assert (=> d!35408 (= (list!894 lt!43050) (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (dropList!61 lt!42996 0) separatorToken!170))))

(assert (=> d!35408 (= lt!43050 e!88385)))

(declare-fun c!30160 () Bool)

(assert (=> d!35408 (= c!30160 (>= 0 (size!2214 lt!42996)))))

(declare-fun lt!43041 () Unit!1932)

(declare-fun lemmaContentSubsetPreservesForall!5 (List!2585 List!2585 Int) Unit!1932)

(declare-fun list!897 (BalanceConc!1430) List!2585)

(assert (=> d!35408 (= lt!43041 (lemmaContentSubsetPreservesForall!5 (list!897 lt!42996) (dropList!61 lt!42996 0) lambda!3727))))

(assert (=> d!35408 e!88384))

(declare-fun res!68231 () Bool)

(assert (=> d!35408 (=> (not res!68231) (not e!88384))))

(assert (=> d!35408 (= res!68231 (>= 0 0))))

(assert (=> d!35408 (= (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0) lt!43050)))

(assert (=> b!148415 (= e!88385 e!88383)))

(declare-fun lt!43044 () List!2585)

(assert (=> b!148415 (= lt!43044 (list!897 lt!42996))))

(declare-fun lt!43043 () Unit!1932)

(declare-fun lemmaDropApply!101 (List!2585 Int) Unit!1932)

(assert (=> b!148415 (= lt!43043 (lemmaDropApply!101 lt!43044 0))))

(declare-fun head!575 (List!2585) Token!632)

(declare-fun drop!114 (List!2585 Int) List!2585)

(declare-fun apply!328 (List!2585 Int) Token!632)

(assert (=> b!148415 (= (head!575 (drop!114 lt!43044 0)) (apply!328 lt!43044 0))))

(declare-fun lt!43045 () Unit!1932)

(assert (=> b!148415 (= lt!43045 lt!43043)))

(declare-fun lt!43039 () List!2585)

(assert (=> b!148415 (= lt!43039 (list!897 lt!42996))))

(declare-fun lt!43042 () Unit!1932)

(declare-fun lemmaDropTail!93 (List!2585 Int) Unit!1932)

(assert (=> b!148415 (= lt!43042 (lemmaDropTail!93 lt!43039 0))))

(declare-fun tail!315 (List!2585) List!2585)

(assert (=> b!148415 (= (tail!315 (drop!114 lt!43039 0)) (drop!114 lt!43039 (+ 0 1)))))

(declare-fun lt!43052 () Unit!1932)

(assert (=> b!148415 (= lt!43052 lt!43042)))

(declare-fun lt!43048 () Unit!1932)

(declare-fun forallContained!45 (List!2585 Int Token!632) Unit!1932)

(assert (=> b!148415 (= lt!43048 (forallContained!45 (list!897 lt!42996) lambda!3728 (apply!327 lt!42996 0)))))

(assert (=> b!148415 (= lt!43047 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!61 (LexerInterface!330 List!2586 BalanceConc!1428) Option!226)

(assert (=> b!148415 (= lt!43040 (maxPrefixZipperSequence!61 thiss!17480 rules!1920 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))

(declare-fun res!68229 () Bool)

(assert (=> b!148415 (= res!68229 (is-Some!225 lt!43040))))

(assert (=> b!148415 (=> (not res!68229) (not e!88380))))

(assert (=> b!148415 (= c!30158 e!88380)))

(assert (= (and d!35408 res!68231) b!148417))

(assert (= (and d!35408 c!30160) b!148414))

(assert (= (and d!35408 (not c!30160)) b!148415))

(assert (= (and b!148415 res!68229) b!148413))

(assert (= (and b!148415 c!30158) b!148412))

(assert (= (and b!148415 (not c!30158)) b!148410))

(assert (= (and b!148410 res!68230) b!148411))

(assert (= (and b!148410 c!30159) b!148416))

(assert (= (and b!148410 (not c!30159)) b!148409))

(assert (= (or b!148416 b!148409) bm!5878))

(assert (= (or b!148416 b!148409) bm!5877))

(assert (= (or b!148412 bm!5878 b!148411) bm!5875))

(assert (= (or b!148412 b!148416) bm!5874))

(assert (= (or b!148412 b!148416) bm!5876))

(declare-fun m!131673 () Bool)

(assert (=> d!35408 m!131673))

(assert (=> d!35408 m!131673))

(declare-fun m!131675 () Bool)

(assert (=> d!35408 m!131675))

(declare-fun m!131677 () Bool)

(assert (=> d!35408 m!131677))

(declare-fun m!131679 () Bool)

(assert (=> d!35408 m!131679))

(declare-fun m!131681 () Bool)

(assert (=> d!35408 m!131681))

(assert (=> d!35408 m!131679))

(assert (=> d!35408 m!131673))

(declare-fun m!131683 () Bool)

(assert (=> d!35408 m!131683))

(declare-fun m!131685 () Bool)

(assert (=> bm!5875 m!131685))

(declare-fun m!131687 () Bool)

(assert (=> b!148416 m!131687))

(declare-fun m!131689 () Bool)

(assert (=> bm!5876 m!131689))

(declare-fun m!131691 () Bool)

(assert (=> bm!5877 m!131691))

(assert (=> b!148417 m!131681))

(assert (=> b!148415 m!131685))

(declare-fun m!131693 () Bool)

(assert (=> b!148415 m!131693))

(declare-fun m!131695 () Bool)

(assert (=> b!148415 m!131695))

(declare-fun m!131697 () Bool)

(assert (=> b!148415 m!131697))

(assert (=> b!148415 m!131685))

(declare-fun m!131699 () Bool)

(assert (=> b!148415 m!131699))

(assert (=> b!148415 m!131699))

(declare-fun m!131701 () Bool)

(assert (=> b!148415 m!131701))

(assert (=> b!148415 m!131679))

(assert (=> b!148415 m!131693))

(declare-fun m!131703 () Bool)

(assert (=> b!148415 m!131703))

(declare-fun m!131705 () Bool)

(assert (=> b!148415 m!131705))

(declare-fun m!131707 () Bool)

(assert (=> b!148415 m!131707))

(declare-fun m!131709 () Bool)

(assert (=> b!148415 m!131709))

(declare-fun m!131711 () Bool)

(assert (=> b!148415 m!131711))

(declare-fun m!131713 () Bool)

(assert (=> b!148415 m!131713))

(assert (=> b!148415 m!131707))

(assert (=> b!148415 m!131703))

(declare-fun m!131715 () Bool)

(assert (=> b!148415 m!131715))

(assert (=> b!148415 m!131679))

(assert (=> b!148415 m!131685))

(declare-fun m!131717 () Bool)

(assert (=> b!148415 m!131717))

(declare-fun m!131719 () Bool)

(assert (=> b!148409 m!131719))

(declare-fun m!131721 () Bool)

(assert (=> b!148409 m!131721))

(declare-fun m!131723 () Bool)

(assert (=> b!148409 m!131723))

(assert (=> b!148409 m!131721))

(declare-fun m!131725 () Bool)

(assert (=> b!148409 m!131725))

(assert (=> b!148409 m!131721))

(declare-fun m!131727 () Bool)

(assert (=> b!148409 m!131727))

(assert (=> b!148409 m!131719))

(assert (=> b!148409 m!131725))

(declare-fun m!131729 () Bool)

(assert (=> b!148409 m!131729))

(assert (=> b!148413 m!131685))

(declare-fun m!131731 () Bool)

(assert (=> bm!5874 m!131731))

(assert (=> b!148320 d!35408))

(declare-fun bs!13450 () Bool)

(declare-fun b!148478 () Bool)

(assert (= bs!13450 (and b!148478 b!148316)))

(declare-fun lambda!3736 () Int)

(assert (=> bs!13450 (not (= lambda!3736 lambda!3719))))

(declare-fun bs!13451 () Bool)

(assert (= bs!13451 (and b!148478 d!35408)))

(assert (=> bs!13451 (not (= lambda!3736 lambda!3727))))

(declare-fun bs!13452 () Bool)

(assert (= bs!13452 (and b!148478 b!148415)))

(assert (=> bs!13452 (= lambda!3736 lambda!3728)))

(declare-fun b!148489 () Bool)

(declare-fun e!88434 () Bool)

(assert (=> b!148489 (= e!88434 true)))

(declare-fun b!148488 () Bool)

(declare-fun e!88433 () Bool)

(assert (=> b!148488 (= e!88433 e!88434)))

(declare-fun b!148487 () Bool)

(declare-fun e!88432 () Bool)

(assert (=> b!148487 (= e!88432 e!88433)))

(assert (=> b!148478 e!88432))

(assert (= b!148488 b!148489))

(assert (= b!148487 b!148488))

(assert (= (and b!148478 (is-Cons!2576 rules!1920)) b!148487))

(assert (=> b!148489 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3736))))

(assert (=> b!148489 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3736))))

(assert (=> b!148478 true))

(declare-fun b!148477 () Bool)

(declare-fun e!88430 () List!2583)

(declare-fun call!5894 () BalanceConc!1428)

(assert (=> b!148477 (= e!88430 (list!894 call!5894))))

(declare-fun e!88429 () List!2583)

(declare-fun e!88428 () List!2583)

(assert (=> b!148478 (= e!88429 e!88428)))

(declare-fun lt!43066 () Unit!1932)

(assert (=> b!148478 (= lt!43066 (forallContained!45 tokens!465 lambda!3736 (h!7972 tokens!465)))))

(declare-fun lt!43067 () List!2583)

(assert (=> b!148478 (= lt!43067 (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (t!24457 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2534 0))(
  ( (tuple2!2535 (_1!1483 Token!632) (_2!1483 List!2583)) )
))
(declare-datatypes ((Option!227 0))(
  ( (None!226) (Some!226 (v!13595 tuple2!2534)) )
))
(declare-fun lt!43070 () Option!227)

(declare-fun maxPrefix!102 (LexerInterface!330 List!2586 List!2583) Option!227)

(declare-fun ++!548 (List!2583 List!2583) List!2583)

(assert (=> b!148478 (= lt!43070 (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)))))

(declare-fun c!30174 () Bool)

(assert (=> b!148478 (= c!30174 (and (is-Some!226 lt!43070) (= (_1!1483 (v!13595 lt!43070)) (h!7972 tokens!465))))))

(declare-fun e!88427 () BalanceConc!1428)

(declare-fun call!5895 () BalanceConc!1428)

(declare-fun call!5896 () List!2583)

(declare-fun bm!5889 () Bool)

(assert (=> bm!5889 (= call!5896 (list!894 (ite c!30174 call!5895 e!88427)))))

(declare-fun bm!5890 () Bool)

(assert (=> bm!5890 (= call!5894 call!5895)))

(declare-fun d!35412 () Bool)

(declare-fun c!30172 () Bool)

(assert (=> d!35412 (= c!30172 (is-Cons!2575 tokens!465))))

(assert (=> d!35412 (= (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!88429)))

(declare-fun b!148479 () Bool)

(declare-fun e!88431 () List!2583)

(declare-fun call!5898 () List!2583)

(assert (=> b!148479 (= e!88431 (++!548 call!5898 lt!43067))))

(declare-fun bm!5891 () Bool)

(declare-fun c!30173 () Bool)

(assert (=> bm!5891 (= c!30173 c!30174)))

(declare-fun call!5897 () List!2583)

(assert (=> bm!5891 (= call!5898 (++!548 e!88430 (ite c!30174 lt!43067 call!5897)))))

(declare-fun b!148480 () Bool)

(assert (=> b!148480 (= e!88427 call!5894)))

(declare-fun b!148481 () Bool)

(declare-fun c!30175 () Bool)

(assert (=> b!148481 (= c!30175 (and (is-Some!226 lt!43070) (not (= (_1!1483 (v!13595 lt!43070)) (h!7972 tokens!465)))))))

(assert (=> b!148481 (= e!88428 e!88431)))

(declare-fun bm!5892 () Bool)

(assert (=> bm!5892 (= call!5897 call!5896)))

(declare-fun c!30171 () Bool)

(assert (=> bm!5892 (= c!30171 c!30175)))

(declare-fun b!148482 () Bool)

(assert (=> b!148482 (= e!88431 Nil!2573)))

(assert (=> b!148482 (= (print!87 thiss!17480 (singletonSeq!20 (h!7972 tokens!465))) (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 tokens!465)) 0 (BalanceConc!1429 Empty!710)))))

(declare-fun lt!43068 () Unit!1932)

(declare-fun Unit!1936 () Unit!1932)

(assert (=> b!148482 (= lt!43068 Unit!1936)))

(declare-fun lt!43069 () Unit!1932)

(assert (=> b!148482 (= lt!43069 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 call!5897 lt!43067))))

(assert (=> b!148482 false))

(declare-fun lt!43071 () Unit!1932)

(declare-fun Unit!1937 () Unit!1932)

(assert (=> b!148482 (= lt!43071 Unit!1937)))

(declare-fun bm!5893 () Bool)

(assert (=> bm!5893 (= call!5895 (charsOf!99 (h!7972 tokens!465)))))

(declare-fun b!148483 () Bool)

(assert (=> b!148483 (= e!88430 call!5896)))

(declare-fun b!148484 () Bool)

(assert (=> b!148484 (= e!88428 call!5898)))

(declare-fun b!148485 () Bool)

(assert (=> b!148485 (= e!88427 (charsOf!99 separatorToken!170))))

(declare-fun b!148486 () Bool)

(assert (=> b!148486 (= e!88429 Nil!2573)))

(assert (= (and d!35412 c!30172) b!148478))

(assert (= (and d!35412 (not c!30172)) b!148486))

(assert (= (and b!148478 c!30174) b!148484))

(assert (= (and b!148478 (not c!30174)) b!148481))

(assert (= (and b!148481 c!30175) b!148479))

(assert (= (and b!148481 (not c!30175)) b!148482))

(assert (= (or b!148479 b!148482) bm!5890))

(assert (= (or b!148479 b!148482) bm!5892))

(assert (= (and bm!5892 c!30171) b!148485))

(assert (= (and bm!5892 (not c!30171)) b!148480))

(assert (= (or b!148484 bm!5890) bm!5893))

(assert (= (or b!148484 bm!5892) bm!5889))

(assert (= (or b!148484 b!148479) bm!5891))

(assert (= (and bm!5891 c!30173) b!148483))

(assert (= (and bm!5891 (not c!30173)) b!148477))

(declare-fun m!131757 () Bool)

(assert (=> bm!5893 m!131757))

(assert (=> b!148485 m!131609))

(declare-fun m!131759 () Bool)

(assert (=> bm!5891 m!131759))

(declare-fun m!131761 () Bool)

(assert (=> bm!5889 m!131761))

(declare-fun m!131763 () Bool)

(assert (=> b!148479 m!131763))

(declare-fun m!131765 () Bool)

(assert (=> b!148477 m!131765))

(declare-fun m!131767 () Bool)

(assert (=> b!148482 m!131767))

(assert (=> b!148482 m!131767))

(declare-fun m!131769 () Bool)

(assert (=> b!148482 m!131769))

(assert (=> b!148482 m!131767))

(declare-fun m!131771 () Bool)

(assert (=> b!148482 m!131771))

(declare-fun m!131773 () Bool)

(assert (=> b!148482 m!131773))

(declare-fun m!131775 () Bool)

(assert (=> b!148478 m!131775))

(declare-fun m!131777 () Bool)

(assert (=> b!148478 m!131777))

(assert (=> b!148478 m!131757))

(assert (=> b!148478 m!131775))

(declare-fun m!131779 () Bool)

(assert (=> b!148478 m!131779))

(assert (=> b!148478 m!131757))

(assert (=> b!148478 m!131777))

(declare-fun m!131781 () Bool)

(assert (=> b!148478 m!131781))

(declare-fun m!131783 () Bool)

(assert (=> b!148478 m!131783))

(assert (=> b!148320 d!35412))

(declare-fun bs!13453 () Bool)

(declare-fun d!35430 () Bool)

(assert (= bs!13453 (and d!35430 b!148316)))

(declare-fun lambda!3739 () Int)

(assert (=> bs!13453 (not (= lambda!3739 lambda!3719))))

(declare-fun bs!13454 () Bool)

(assert (= bs!13454 (and d!35430 d!35408)))

(assert (=> bs!13454 (not (= lambda!3739 lambda!3727))))

(declare-fun bs!13455 () Bool)

(assert (= bs!13455 (and d!35430 b!148415)))

(assert (=> bs!13455 (= lambda!3739 lambda!3728)))

(declare-fun bs!13456 () Bool)

(assert (= bs!13456 (and d!35430 b!148478)))

(assert (=> bs!13456 (= lambda!3739 lambda!3736)))

(declare-fun b!148498 () Bool)

(declare-fun e!88443 () Bool)

(assert (=> b!148498 (= e!88443 true)))

(declare-fun b!148497 () Bool)

(declare-fun e!88442 () Bool)

(assert (=> b!148497 (= e!88442 e!88443)))

(declare-fun b!148496 () Bool)

(declare-fun e!88441 () Bool)

(assert (=> b!148496 (= e!88441 e!88442)))

(assert (=> d!35430 e!88441))

(assert (= b!148497 b!148498))

(assert (= b!148496 b!148497))

(assert (= (and d!35430 (is-Cons!2576 rules!1920)) b!148496))

(assert (=> b!148498 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3739))))

(assert (=> b!148498 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3739))))

(assert (=> d!35430 true))

(declare-fun lt!43074 () Bool)

(assert (=> d!35430 (= lt!43074 (forall!424 (t!24457 tokens!465) lambda!3739))))

(declare-fun e!88440 () Bool)

(assert (=> d!35430 (= lt!43074 e!88440)))

(declare-fun res!68250 () Bool)

(assert (=> d!35430 (=> res!68250 e!88440)))

(assert (=> d!35430 (= res!68250 (not (is-Cons!2575 (t!24457 tokens!465))))))

(assert (=> d!35430 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35430 (= (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 tokens!465)) lt!43074)))

(declare-fun b!148494 () Bool)

(declare-fun e!88439 () Bool)

(assert (=> b!148494 (= e!88440 e!88439)))

(declare-fun res!68249 () Bool)

(assert (=> b!148494 (=> (not res!68249) (not e!88439))))

(assert (=> b!148494 (= res!68249 (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (t!24457 tokens!465))))))

(declare-fun b!148495 () Bool)

(assert (=> b!148495 (= e!88439 (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 (t!24457 tokens!465))))))

(assert (= (and d!35430 (not res!68250)) b!148494))

(assert (= (and b!148494 res!68249) b!148495))

(declare-fun m!131785 () Bool)

(assert (=> d!35430 m!131785))

(assert (=> d!35430 m!131581))

(declare-fun m!131787 () Bool)

(assert (=> b!148494 m!131787))

(declare-fun m!131789 () Bool)

(assert (=> b!148495 m!131789))

(assert (=> b!148309 d!35430))

(declare-fun d!35432 () Bool)

(assert (=> d!35432 (= (list!894 (charsOf!99 separatorToken!170)) (list!896 (c!30145 (charsOf!99 separatorToken!170))))))

(declare-fun bs!13457 () Bool)

(assert (= bs!13457 d!35432))

(declare-fun m!131791 () Bool)

(assert (=> bs!13457 m!131791))

(assert (=> b!148309 d!35432))

(declare-fun d!35434 () Bool)

(declare-fun lt!43093 () BalanceConc!1428)

(assert (=> d!35434 (= (list!894 lt!43093) (originalCharacters!487 separatorToken!170))))

(declare-fun dynLambda!885 (Int TokenValue!466) BalanceConc!1428)

(assert (=> d!35434 (= lt!43093 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))

(assert (=> d!35434 (= (charsOf!99 separatorToken!170) lt!43093)))

(declare-fun b_lambda!2581 () Bool)

(assert (=> (not b_lambda!2581) (not d!35434)))

(declare-fun t!24480 () Bool)

(declare-fun tb!4837 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24480) tb!4837))

(declare-fun b!148509 () Bool)

(declare-fun e!88450 () Bool)

(declare-fun tp!77826 () Bool)

(declare-fun inv!3368 (Conc!710) Bool)

(assert (=> b!148509 (= e!88450 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))) tp!77826))))

(declare-fun result!7228 () Bool)

(declare-fun inv!3369 (BalanceConc!1428) Bool)

(assert (=> tb!4837 (= result!7228 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))) e!88450))))

(assert (= tb!4837 b!148509))

(declare-fun m!131793 () Bool)

(assert (=> b!148509 m!131793))

(declare-fun m!131795 () Bool)

(assert (=> tb!4837 m!131795))

(assert (=> d!35434 t!24480))

(declare-fun b_and!8309 () Bool)

(assert (= b_and!8287 (and (=> t!24480 result!7228) b_and!8309)))

(declare-fun tb!4839 () Bool)

(declare-fun t!24482 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24482) tb!4839))

(declare-fun result!7232 () Bool)

(assert (= result!7232 result!7228))

(assert (=> d!35434 t!24482))

(declare-fun b_and!8311 () Bool)

(assert (= b_and!8291 (and (=> t!24482 result!7232) b_and!8311)))

(declare-fun t!24484 () Bool)

(declare-fun tb!4841 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24484) tb!4841))

(declare-fun result!7234 () Bool)

(assert (= result!7234 result!7228))

(assert (=> d!35434 t!24484))

(declare-fun b_and!8313 () Bool)

(assert (= b_and!8295 (and (=> t!24484 result!7234) b_and!8313)))

(declare-fun m!131797 () Bool)

(assert (=> d!35434 m!131797))

(declare-fun m!131799 () Bool)

(assert (=> d!35434 m!131799))

(assert (=> b!148309 d!35434))

(declare-fun d!35436 () Bool)

(declare-fun res!68259 () Bool)

(declare-fun e!88461 () Bool)

(assert (=> d!35436 (=> (not res!68259) (not e!88461))))

(declare-fun rulesValid!118 (LexerInterface!330 List!2586) Bool)

(assert (=> d!35436 (= res!68259 (rulesValid!118 thiss!17480 rules!1920))))

(assert (=> d!35436 (= (rulesInvariant!296 thiss!17480 rules!1920) e!88461)))

(declare-fun b!148524 () Bool)

(declare-datatypes ((List!2591 0))(
  ( (Nil!2581) (Cons!2581 (h!7978 String!3412) (t!24514 List!2591)) )
))
(declare-fun noDuplicateTag!118 (LexerInterface!330 List!2586 List!2591) Bool)

(assert (=> b!148524 (= e!88461 (noDuplicateTag!118 thiss!17480 rules!1920 Nil!2581))))

(assert (= (and d!35436 res!68259) b!148524))

(declare-fun m!131801 () Bool)

(assert (=> d!35436 m!131801))

(declare-fun m!131803 () Bool)

(assert (=> b!148524 m!131803))

(assert (=> b!148319 d!35436))

(declare-fun b!148539 () Bool)

(declare-fun e!88470 () Bool)

(declare-fun inv!17 (TokenValue!466) Bool)

(assert (=> b!148539 (= e!88470 (inv!17 (value!16971 separatorToken!170)))))

(declare-fun b!148540 () Bool)

(declare-fun e!88471 () Bool)

(declare-fun inv!15 (TokenValue!466) Bool)

(assert (=> b!148540 (= e!88471 (inv!15 (value!16971 separatorToken!170)))))

(declare-fun b!148541 () Bool)

(declare-fun res!68262 () Bool)

(assert (=> b!148541 (=> res!68262 e!88471)))

(assert (=> b!148541 (= res!68262 (not (is-IntegerValue!1400 (value!16971 separatorToken!170))))))

(assert (=> b!148541 (= e!88470 e!88471)))

(declare-fun b!148542 () Bool)

(declare-fun e!88472 () Bool)

(assert (=> b!148542 (= e!88472 e!88470)))

(declare-fun c!30189 () Bool)

(assert (=> b!148542 (= c!30189 (is-IntegerValue!1399 (value!16971 separatorToken!170)))))

(declare-fun b!148543 () Bool)

(declare-fun inv!16 (TokenValue!466) Bool)

(assert (=> b!148543 (= e!88472 (inv!16 (value!16971 separatorToken!170)))))

(declare-fun d!35438 () Bool)

(declare-fun c!30188 () Bool)

(assert (=> d!35438 (= c!30188 (is-IntegerValue!1398 (value!16971 separatorToken!170)))))

(assert (=> d!35438 (= (inv!21 (value!16971 separatorToken!170)) e!88472)))

(assert (= (and d!35438 c!30188) b!148543))

(assert (= (and d!35438 (not c!30188)) b!148542))

(assert (= (and b!148542 c!30189) b!148539))

(assert (= (and b!148542 (not c!30189)) b!148541))

(assert (= (and b!148541 (not res!68262)) b!148540))

(declare-fun m!131805 () Bool)

(assert (=> b!148539 m!131805))

(declare-fun m!131807 () Bool)

(assert (=> b!148540 m!131807))

(declare-fun m!131809 () Bool)

(assert (=> b!148543 m!131809))

(assert (=> b!148308 d!35438))

(declare-fun d!35440 () Bool)

(assert (=> d!35440 (= (list!894 (seqFromList!265 lt!42995)) (list!896 (c!30145 (seqFromList!265 lt!42995))))))

(declare-fun bs!13458 () Bool)

(assert (= bs!13458 d!35440))

(declare-fun m!131811 () Bool)

(assert (=> bs!13458 m!131811))

(assert (=> b!148307 d!35440))

(declare-fun d!35442 () Bool)

(declare-fun fromListB!110 (List!2583) BalanceConc!1428)

(assert (=> d!35442 (= (seqFromList!265 lt!42995) (fromListB!110 lt!42995))))

(declare-fun bs!13459 () Bool)

(assert (= bs!13459 d!35442))

(declare-fun m!131813 () Bool)

(assert (=> bs!13459 m!131813))

(assert (=> b!148307 d!35442))

(declare-fun d!35444 () Bool)

(declare-fun res!68267 () Bool)

(declare-fun e!88475 () Bool)

(assert (=> d!35444 (=> (not res!68267) (not e!88475))))

(declare-fun isEmpty!1009 (List!2583) Bool)

(assert (=> d!35444 (= res!68267 (not (isEmpty!1009 (originalCharacters!487 (h!7972 tokens!465)))))))

(assert (=> d!35444 (= (inv!3365 (h!7972 tokens!465)) e!88475)))

(declare-fun b!148548 () Bool)

(declare-fun res!68268 () Bool)

(assert (=> b!148548 (=> (not res!68268) (not e!88475))))

(assert (=> b!148548 (= res!68268 (= (originalCharacters!487 (h!7972 tokens!465)) (list!894 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(declare-fun b!148549 () Bool)

(declare-fun size!2215 (List!2583) Int)

(assert (=> b!148549 (= e!88475 (= (size!2212 (h!7972 tokens!465)) (size!2215 (originalCharacters!487 (h!7972 tokens!465)))))))

(assert (= (and d!35444 res!68267) b!148548))

(assert (= (and b!148548 res!68268) b!148549))

(declare-fun b_lambda!2583 () Bool)

(assert (=> (not b_lambda!2583) (not b!148548)))

(declare-fun tb!4843 () Bool)

(declare-fun t!24486 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24486) tb!4843))

(declare-fun b!148550 () Bool)

(declare-fun e!88476 () Bool)

(declare-fun tp!77827 () Bool)

(assert (=> b!148550 (= e!88476 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))) tp!77827))))

(declare-fun result!7236 () Bool)

(assert (=> tb!4843 (= result!7236 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))) e!88476))))

(assert (= tb!4843 b!148550))

(declare-fun m!131815 () Bool)

(assert (=> b!148550 m!131815))

(declare-fun m!131817 () Bool)

(assert (=> tb!4843 m!131817))

(assert (=> b!148548 t!24486))

(declare-fun b_and!8315 () Bool)

(assert (= b_and!8309 (and (=> t!24486 result!7236) b_and!8315)))

(declare-fun t!24488 () Bool)

(declare-fun tb!4845 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24488) tb!4845))

(declare-fun result!7238 () Bool)

(assert (= result!7238 result!7236))

(assert (=> b!148548 t!24488))

(declare-fun b_and!8317 () Bool)

(assert (= b_and!8311 (and (=> t!24488 result!7238) b_and!8317)))

(declare-fun t!24490 () Bool)

(declare-fun tb!4847 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24490) tb!4847))

(declare-fun result!7240 () Bool)

(assert (= result!7240 result!7236))

(assert (=> b!148548 t!24490))

(declare-fun b_and!8319 () Bool)

(assert (= b_and!8313 (and (=> t!24490 result!7240) b_and!8319)))

(declare-fun m!131819 () Bool)

(assert (=> d!35444 m!131819))

(declare-fun m!131821 () Bool)

(assert (=> b!148548 m!131821))

(assert (=> b!148548 m!131821))

(declare-fun m!131823 () Bool)

(assert (=> b!148548 m!131823))

(declare-fun m!131825 () Bool)

(assert (=> b!148549 m!131825))

(assert (=> b!148317 d!35444))

(declare-fun d!35446 () Bool)

(declare-fun res!68276 () Bool)

(declare-fun e!88491 () Bool)

(assert (=> d!35446 (=> res!68276 e!88491)))

(assert (=> d!35446 (= res!68276 (is-Nil!2575 tokens!465))))

(assert (=> d!35446 (= (forall!424 tokens!465 lambda!3719) e!88491)))

(declare-fun b!148569 () Bool)

(declare-fun e!88492 () Bool)

(assert (=> b!148569 (= e!88491 e!88492)))

(declare-fun res!68277 () Bool)

(assert (=> b!148569 (=> (not res!68277) (not e!88492))))

(declare-fun dynLambda!886 (Int Token!632) Bool)

(assert (=> b!148569 (= res!68277 (dynLambda!886 lambda!3719 (h!7972 tokens!465)))))

(declare-fun b!148570 () Bool)

(assert (=> b!148570 (= e!88492 (forall!424 (t!24457 tokens!465) lambda!3719))))

(assert (= (and d!35446 (not res!68276)) b!148569))

(assert (= (and b!148569 res!68277) b!148570))

(declare-fun b_lambda!2585 () Bool)

(assert (=> (not b_lambda!2585) (not b!148569)))

(declare-fun m!131827 () Bool)

(assert (=> b!148569 m!131827))

(declare-fun m!131829 () Bool)

(assert (=> b!148570 m!131829))

(assert (=> b!148316 d!35446))

(declare-fun b!148571 () Bool)

(declare-fun e!88493 () Bool)

(assert (=> b!148571 (= e!88493 (inv!17 (value!16971 (h!7972 tokens!465))))))

(declare-fun b!148572 () Bool)

(declare-fun e!88494 () Bool)

(assert (=> b!148572 (= e!88494 (inv!15 (value!16971 (h!7972 tokens!465))))))

(declare-fun b!148573 () Bool)

(declare-fun res!68278 () Bool)

(assert (=> b!148573 (=> res!68278 e!88494)))

(assert (=> b!148573 (= res!68278 (not (is-IntegerValue!1400 (value!16971 (h!7972 tokens!465)))))))

(assert (=> b!148573 (= e!88493 e!88494)))

(declare-fun b!148574 () Bool)

(declare-fun e!88495 () Bool)

(assert (=> b!148574 (= e!88495 e!88493)))

(declare-fun c!30195 () Bool)

(assert (=> b!148574 (= c!30195 (is-IntegerValue!1399 (value!16971 (h!7972 tokens!465))))))

(declare-fun b!148575 () Bool)

(assert (=> b!148575 (= e!88495 (inv!16 (value!16971 (h!7972 tokens!465))))))

(declare-fun d!35448 () Bool)

(declare-fun c!30194 () Bool)

(assert (=> d!35448 (= c!30194 (is-IntegerValue!1398 (value!16971 (h!7972 tokens!465))))))

(assert (=> d!35448 (= (inv!21 (value!16971 (h!7972 tokens!465))) e!88495)))

(assert (= (and d!35448 c!30194) b!148575))

(assert (= (and d!35448 (not c!30194)) b!148574))

(assert (= (and b!148574 c!30195) b!148571))

(assert (= (and b!148574 (not c!30195)) b!148573))

(assert (= (and b!148573 (not res!68278)) b!148572))

(declare-fun m!131831 () Bool)

(assert (=> b!148571 m!131831))

(declare-fun m!131833 () Bool)

(assert (=> b!148572 m!131833))

(declare-fun m!131835 () Bool)

(assert (=> b!148575 m!131835))

(assert (=> b!148326 d!35448))

(declare-fun bs!13465 () Bool)

(declare-fun d!35450 () Bool)

(assert (= bs!13465 (and d!35450 b!148478)))

(declare-fun lambda!3750 () Int)

(assert (=> bs!13465 (= lambda!3750 lambda!3736)))

(declare-fun bs!13466 () Bool)

(assert (= bs!13466 (and d!35450 d!35430)))

(assert (=> bs!13466 (= lambda!3750 lambda!3739)))

(declare-fun bs!13467 () Bool)

(assert (= bs!13467 (and d!35450 b!148415)))

(assert (=> bs!13467 (= lambda!3750 lambda!3728)))

(declare-fun bs!13468 () Bool)

(assert (= bs!13468 (and d!35450 b!148316)))

(assert (=> bs!13468 (not (= lambda!3750 lambda!3719))))

(declare-fun bs!13469 () Bool)

(assert (= bs!13469 (and d!35450 d!35408)))

(assert (=> bs!13469 (not (= lambda!3750 lambda!3727))))

(declare-fun b!148581 () Bool)

(declare-fun e!88501 () Bool)

(assert (=> b!148581 (= e!88501 true)))

(declare-fun b!148580 () Bool)

(declare-fun e!88500 () Bool)

(assert (=> b!148580 (= e!88500 e!88501)))

(declare-fun b!148579 () Bool)

(declare-fun e!88499 () Bool)

(assert (=> b!148579 (= e!88499 e!88500)))

(assert (=> d!35450 e!88499))

(assert (= b!148580 b!148581))

(assert (= b!148579 b!148580))

(assert (= (and d!35450 (is-Cons!2576 rules!1920)) b!148579))

(assert (=> b!148581 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3750))))

(assert (=> b!148581 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3750))))

(assert (=> d!35450 true))

(declare-fun e!88498 () Bool)

(assert (=> d!35450 e!88498))

(declare-fun res!68281 () Bool)

(assert (=> d!35450 (=> (not res!68281) (not e!88498))))

(declare-fun lt!43122 () Bool)

(assert (=> d!35450 (= res!68281 (= lt!43122 (forall!424 (list!897 lt!42996) lambda!3750)))))

(declare-fun forall!426 (BalanceConc!1430 Int) Bool)

(assert (=> d!35450 (= lt!43122 (forall!426 lt!42996 lambda!3750))))

(assert (=> d!35450 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35450 (= (rulesProduceEachTokenIndividually!122 thiss!17480 rules!1920 lt!42996) lt!43122)))

(declare-fun b!148578 () Bool)

(assert (=> b!148578 (= e!88498 (= lt!43122 (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (list!897 lt!42996))))))

(assert (= (and d!35450 res!68281) b!148578))

(assert (=> d!35450 m!131679))

(assert (=> d!35450 m!131679))

(declare-fun m!131895 () Bool)

(assert (=> d!35450 m!131895))

(declare-fun m!131897 () Bool)

(assert (=> d!35450 m!131897))

(assert (=> d!35450 m!131581))

(assert (=> b!148578 m!131679))

(assert (=> b!148578 m!131679))

(declare-fun m!131899 () Bool)

(assert (=> b!148578 m!131899))

(assert (=> b!148315 d!35450))

(declare-fun d!35454 () Bool)

(declare-fun fromListB!111 (List!2585) BalanceConc!1430)

(assert (=> d!35454 (= (seqFromList!266 tokens!465) (fromListB!111 tokens!465))))

(declare-fun bs!13470 () Bool)

(assert (= bs!13470 d!35454))

(declare-fun m!131901 () Bool)

(assert (=> bs!13470 m!131901))

(assert (=> b!148315 d!35454))

(declare-fun d!35456 () Bool)

(assert (=> d!35456 (= (inv!3361 (tag!622 (rule!951 (h!7972 tokens!465)))) (= (mod (str.len (value!16970 (tag!622 (rule!951 (h!7972 tokens!465))))) 2) 0))))

(assert (=> b!148314 d!35456))

(declare-fun d!35458 () Bool)

(declare-fun res!68284 () Bool)

(declare-fun e!88504 () Bool)

(assert (=> d!35458 (=> (not res!68284) (not e!88504))))

(declare-fun semiInverseModEq!152 (Int Int) Bool)

(assert (=> d!35458 (= res!68284 (semiInverseModEq!152 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))))))

(assert (=> d!35458 (= (inv!3364 (transformation!444 (rule!951 (h!7972 tokens!465)))) e!88504)))

(declare-fun b!148584 () Bool)

(declare-fun equivClasses!135 (Int Int) Bool)

(assert (=> b!148584 (= e!88504 (equivClasses!135 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))))))

(assert (= (and d!35458 res!68284) b!148584))

(declare-fun m!131903 () Bool)

(assert (=> d!35458 m!131903))

(declare-fun m!131905 () Bool)

(assert (=> b!148584 m!131905))

(assert (=> b!148314 d!35458))

(declare-fun d!35460 () Bool)

(declare-fun res!68289 () Bool)

(declare-fun e!88509 () Bool)

(assert (=> d!35460 (=> res!68289 e!88509)))

(assert (=> d!35460 (= res!68289 (not (is-Cons!2576 rules!1920)))))

(assert (=> d!35460 (= (sepAndNonSepRulesDisjointChars!33 rules!1920 rules!1920) e!88509)))

(declare-fun b!148589 () Bool)

(declare-fun e!88510 () Bool)

(assert (=> b!148589 (= e!88509 e!88510)))

(declare-fun res!68290 () Bool)

(assert (=> b!148589 (=> (not res!68290) (not e!88510))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!11 (Rule!688 List!2586) Bool)

(assert (=> b!148589 (= res!68290 (ruleDisjointCharsFromAllFromOtherType!11 (h!7973 rules!1920) rules!1920))))

(declare-fun b!148590 () Bool)

(assert (=> b!148590 (= e!88510 (sepAndNonSepRulesDisjointChars!33 rules!1920 (t!24458 rules!1920)))))

(assert (= (and d!35460 (not res!68289)) b!148589))

(assert (= (and b!148589 res!68290) b!148590))

(declare-fun m!131907 () Bool)

(assert (=> b!148589 m!131907))

(declare-fun m!131909 () Bool)

(assert (=> b!148590 m!131909))

(assert (=> b!148324 d!35460))

(declare-fun d!35462 () Bool)

(assert (=> d!35462 (= (isEmpty!1007 rules!1920) (is-Nil!2576 rules!1920))))

(assert (=> b!148323 d!35462))

(declare-fun d!35464 () Bool)

(assert (=> d!35464 (= (inv!3361 (tag!622 (h!7973 rules!1920))) (= (mod (str.len (value!16970 (tag!622 (h!7973 rules!1920)))) 2) 0))))

(assert (=> b!148312 d!35464))

(declare-fun d!35466 () Bool)

(declare-fun res!68291 () Bool)

(declare-fun e!88511 () Bool)

(assert (=> d!35466 (=> (not res!68291) (not e!88511))))

(assert (=> d!35466 (= res!68291 (semiInverseModEq!152 (toChars!934 (transformation!444 (h!7973 rules!1920))) (toValue!1075 (transformation!444 (h!7973 rules!1920)))))))

(assert (=> d!35466 (= (inv!3364 (transformation!444 (h!7973 rules!1920))) e!88511)))

(declare-fun b!148591 () Bool)

(assert (=> b!148591 (= e!88511 (equivClasses!135 (toChars!934 (transformation!444 (h!7973 rules!1920))) (toValue!1075 (transformation!444 (h!7973 rules!1920)))))))

(assert (= (and d!35466 res!68291) b!148591))

(declare-fun m!131911 () Bool)

(assert (=> d!35466 m!131911))

(declare-fun m!131913 () Bool)

(assert (=> b!148591 m!131913))

(assert (=> b!148312 d!35466))

(declare-fun d!35468 () Bool)

(declare-fun res!68292 () Bool)

(declare-fun e!88512 () Bool)

(assert (=> d!35468 (=> (not res!68292) (not e!88512))))

(assert (=> d!35468 (= res!68292 (not (isEmpty!1009 (originalCharacters!487 separatorToken!170))))))

(assert (=> d!35468 (= (inv!3365 separatorToken!170) e!88512)))

(declare-fun b!148592 () Bool)

(declare-fun res!68293 () Bool)

(assert (=> b!148592 (=> (not res!68293) (not e!88512))))

(assert (=> b!148592 (= res!68293 (= (originalCharacters!487 separatorToken!170) (list!894 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(declare-fun b!148593 () Bool)

(assert (=> b!148593 (= e!88512 (= (size!2212 separatorToken!170) (size!2215 (originalCharacters!487 separatorToken!170))))))

(assert (= (and d!35468 res!68292) b!148592))

(assert (= (and b!148592 res!68293) b!148593))

(declare-fun b_lambda!2587 () Bool)

(assert (=> (not b_lambda!2587) (not b!148592)))

(assert (=> b!148592 t!24480))

(declare-fun b_and!8321 () Bool)

(assert (= b_and!8315 (and (=> t!24480 result!7228) b_and!8321)))

(assert (=> b!148592 t!24482))

(declare-fun b_and!8323 () Bool)

(assert (= b_and!8317 (and (=> t!24482 result!7232) b_and!8323)))

(assert (=> b!148592 t!24484))

(declare-fun b_and!8325 () Bool)

(assert (= b_and!8319 (and (=> t!24484 result!7234) b_and!8325)))

(declare-fun m!131915 () Bool)

(assert (=> d!35468 m!131915))

(assert (=> b!148592 m!131799))

(assert (=> b!148592 m!131799))

(declare-fun m!131917 () Bool)

(assert (=> b!148592 m!131917))

(declare-fun m!131919 () Bool)

(assert (=> b!148593 m!131919))

(assert (=> start!15764 d!35468))

(declare-fun d!35470 () Bool)

(assert (=> d!35470 (= (inv!3361 (tag!622 (rule!951 separatorToken!170))) (= (mod (str.len (value!16970 (tag!622 (rule!951 separatorToken!170)))) 2) 0))))

(assert (=> b!148322 d!35470))

(declare-fun d!35472 () Bool)

(declare-fun res!68294 () Bool)

(declare-fun e!88513 () Bool)

(assert (=> d!35472 (=> (not res!68294) (not e!88513))))

(assert (=> d!35472 (= res!68294 (semiInverseModEq!152 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))))))

(assert (=> d!35472 (= (inv!3364 (transformation!444 (rule!951 separatorToken!170))) e!88513)))

(declare-fun b!148594 () Bool)

(assert (=> b!148594 (= e!88513 (equivClasses!135 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))))))

(assert (= (and d!35472 res!68294) b!148594))

(declare-fun m!131921 () Bool)

(assert (=> d!35472 m!131921))

(declare-fun m!131923 () Bool)

(assert (=> b!148594 m!131923))

(assert (=> b!148322 d!35472))

(declare-fun d!35474 () Bool)

(declare-fun lt!43146 () Bool)

(declare-fun e!88545 () Bool)

(assert (=> d!35474 (= lt!43146 e!88545)))

(declare-fun res!68305 () Bool)

(assert (=> d!35474 (=> (not res!68305) (not e!88545))))

(declare-datatypes ((tuple2!2536 0))(
  ( (tuple2!2537 (_1!1484 BalanceConc!1430) (_2!1484 BalanceConc!1428)) )
))
(declare-fun lex!162 (LexerInterface!330 List!2586 BalanceConc!1428) tuple2!2536)

(assert (=> d!35474 (= res!68305 (= (list!897 (_1!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))) (list!897 (singletonSeq!20 separatorToken!170))))))

(declare-fun e!88546 () Bool)

(assert (=> d!35474 (= lt!43146 e!88546)))

(declare-fun res!68304 () Bool)

(assert (=> d!35474 (=> (not res!68304) (not e!88546))))

(declare-fun lt!43145 () tuple2!2536)

(assert (=> d!35474 (= res!68304 (= (size!2214 (_1!1484 lt!43145)) 1))))

(assert (=> d!35474 (= lt!43145 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))))

(assert (=> d!35474 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35474 (= (rulesProduceIndividualToken!79 thiss!17480 rules!1920 separatorToken!170) lt!43146)))

(declare-fun b!148649 () Bool)

(declare-fun res!68306 () Bool)

(assert (=> b!148649 (=> (not res!68306) (not e!88546))))

(assert (=> b!148649 (= res!68306 (= (apply!327 (_1!1484 lt!43145) 0) separatorToken!170))))

(declare-fun b!148650 () Bool)

(declare-fun isEmpty!1010 (BalanceConc!1428) Bool)

(assert (=> b!148650 (= e!88546 (isEmpty!1010 (_2!1484 lt!43145)))))

(declare-fun b!148651 () Bool)

(assert (=> b!148651 (= e!88545 (isEmpty!1010 (_2!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))))))

(assert (= (and d!35474 res!68304) b!148649))

(assert (= (and b!148649 res!68306) b!148650))

(assert (= (and d!35474 res!68305) b!148651))

(declare-fun m!131959 () Bool)

(assert (=> d!35474 m!131959))

(declare-fun m!131961 () Bool)

(assert (=> d!35474 m!131961))

(assert (=> d!35474 m!131581))

(assert (=> d!35474 m!131959))

(declare-fun m!131963 () Bool)

(assert (=> d!35474 m!131963))

(declare-fun m!131965 () Bool)

(assert (=> d!35474 m!131965))

(assert (=> d!35474 m!131959))

(assert (=> d!35474 m!131963))

(declare-fun m!131967 () Bool)

(assert (=> d!35474 m!131967))

(declare-fun m!131969 () Bool)

(assert (=> d!35474 m!131969))

(declare-fun m!131971 () Bool)

(assert (=> b!148649 m!131971))

(declare-fun m!131973 () Bool)

(assert (=> b!148650 m!131973))

(assert (=> b!148651 m!131959))

(assert (=> b!148651 m!131959))

(assert (=> b!148651 m!131963))

(assert (=> b!148651 m!131963))

(assert (=> b!148651 m!131967))

(declare-fun m!131975 () Bool)

(assert (=> b!148651 m!131975))

(assert (=> b!148321 d!35474))

(declare-fun b!148656 () Bool)

(declare-fun e!88549 () Bool)

(declare-fun tp_is_empty!1601 () Bool)

(declare-fun tp!77830 () Bool)

(assert (=> b!148656 (= e!88549 (and tp_is_empty!1601 tp!77830))))

(assert (=> b!148308 (= tp!77779 e!88549)))

(assert (= (and b!148308 (is-Cons!2573 (originalCharacters!487 separatorToken!170))) b!148656))

(declare-fun b!148670 () Bool)

(declare-fun b_free!5333 () Bool)

(declare-fun b_next!5333 () Bool)

(assert (=> b!148670 (= b_free!5333 (not b_next!5333))))

(declare-fun tp!77843 () Bool)

(declare-fun b_and!8327 () Bool)

(assert (=> b!148670 (= tp!77843 b_and!8327)))

(declare-fun b_free!5335 () Bool)

(declare-fun b_next!5335 () Bool)

(assert (=> b!148670 (= b_free!5335 (not b_next!5335))))

(declare-fun tb!4849 () Bool)

(declare-fun t!24499 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24499) tb!4849))

(declare-fun result!7246 () Bool)

(assert (= result!7246 result!7228))

(assert (=> d!35434 t!24499))

(declare-fun t!24501 () Bool)

(declare-fun tb!4851 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24501) tb!4851))

(declare-fun result!7248 () Bool)

(assert (= result!7248 result!7236))

(assert (=> b!148548 t!24501))

(assert (=> b!148592 t!24499))

(declare-fun tp!77845 () Bool)

(declare-fun b_and!8329 () Bool)

(assert (=> b!148670 (= tp!77845 (and (=> t!24499 result!7246) (=> t!24501 result!7248) b_and!8329))))

(declare-fun e!88562 () Bool)

(assert (=> b!148317 (= tp!77784 e!88562)))

(declare-fun tp!77841 () Bool)

(declare-fun b!148669 () Bool)

(declare-fun e!88563 () Bool)

(declare-fun e!88567 () Bool)

(assert (=> b!148669 (= e!88567 (and tp!77841 (inv!3361 (tag!622 (rule!951 (h!7972 (t!24457 tokens!465))))) (inv!3364 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) e!88563))))

(declare-fun b!148667 () Bool)

(declare-fun tp!77842 () Bool)

(declare-fun e!88566 () Bool)

(assert (=> b!148667 (= e!88562 (and (inv!3365 (h!7972 (t!24457 tokens!465))) e!88566 tp!77842))))

(declare-fun tp!77844 () Bool)

(declare-fun b!148668 () Bool)

(assert (=> b!148668 (= e!88566 (and (inv!21 (value!16971 (h!7972 (t!24457 tokens!465)))) e!88567 tp!77844))))

(assert (=> b!148670 (= e!88563 (and tp!77843 tp!77845))))

(assert (= b!148669 b!148670))

(assert (= b!148668 b!148669))

(assert (= b!148667 b!148668))

(assert (= (and b!148317 (is-Cons!2575 (t!24457 tokens!465))) b!148667))

(declare-fun m!131977 () Bool)

(assert (=> b!148669 m!131977))

(declare-fun m!131979 () Bool)

(assert (=> b!148669 m!131979))

(declare-fun m!131981 () Bool)

(assert (=> b!148667 m!131981))

(declare-fun m!131983 () Bool)

(assert (=> b!148668 m!131983))

(declare-fun b!148671 () Bool)

(declare-fun e!88568 () Bool)

(declare-fun tp!77846 () Bool)

(assert (=> b!148671 (= e!88568 (and tp_is_empty!1601 tp!77846))))

(assert (=> b!148326 (= tp!77772 e!88568)))

(assert (= (and b!148326 (is-Cons!2573 (originalCharacters!487 (h!7972 tokens!465)))) b!148671))

(declare-fun e!88571 () Bool)

(assert (=> b!148314 (= tp!77776 e!88571)))

(declare-fun b!148683 () Bool)

(declare-fun tp!77859 () Bool)

(declare-fun tp!77858 () Bool)

(assert (=> b!148683 (= e!88571 (and tp!77859 tp!77858))))

(declare-fun b!148684 () Bool)

(declare-fun tp!77861 () Bool)

(assert (=> b!148684 (= e!88571 tp!77861)))

(declare-fun b!148682 () Bool)

(assert (=> b!148682 (= e!88571 tp_is_empty!1601)))

(declare-fun b!148685 () Bool)

(declare-fun tp!77860 () Bool)

(declare-fun tp!77857 () Bool)

(assert (=> b!148685 (= e!88571 (and tp!77860 tp!77857))))

(assert (= (and b!148314 (is-ElementMatch!668 (regex!444 (rule!951 (h!7972 tokens!465))))) b!148682))

(assert (= (and b!148314 (is-Concat!1135 (regex!444 (rule!951 (h!7972 tokens!465))))) b!148683))

(assert (= (and b!148314 (is-Star!668 (regex!444 (rule!951 (h!7972 tokens!465))))) b!148684))

(assert (= (and b!148314 (is-Union!668 (regex!444 (rule!951 (h!7972 tokens!465))))) b!148685))

(declare-fun b!148696 () Bool)

(declare-fun b_free!5337 () Bool)

(declare-fun b_next!5337 () Bool)

(assert (=> b!148696 (= b_free!5337 (not b_next!5337))))

(declare-fun tp!77872 () Bool)

(declare-fun b_and!8331 () Bool)

(assert (=> b!148696 (= tp!77872 b_and!8331)))

(declare-fun b_free!5339 () Bool)

(declare-fun b_next!5339 () Bool)

(assert (=> b!148696 (= b_free!5339 (not b_next!5339))))

(declare-fun t!24503 () Bool)

(declare-fun tb!4853 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24503) tb!4853))

(declare-fun result!7254 () Bool)

(assert (= result!7254 result!7228))

(assert (=> d!35434 t!24503))

(declare-fun tb!4855 () Bool)

(declare-fun t!24505 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24505) tb!4855))

(declare-fun result!7256 () Bool)

(assert (= result!7256 result!7236))

(assert (=> b!148548 t!24505))

(assert (=> b!148592 t!24503))

(declare-fun b_and!8333 () Bool)

(declare-fun tp!77873 () Bool)

(assert (=> b!148696 (= tp!77873 (and (=> t!24503 result!7254) (=> t!24505 result!7256) b_and!8333))))

(declare-fun e!88583 () Bool)

(assert (=> b!148696 (= e!88583 (and tp!77872 tp!77873))))

(declare-fun tp!77870 () Bool)

(declare-fun b!148695 () Bool)

(declare-fun e!88582 () Bool)

(assert (=> b!148695 (= e!88582 (and tp!77870 (inv!3361 (tag!622 (h!7973 (t!24458 rules!1920)))) (inv!3364 (transformation!444 (h!7973 (t!24458 rules!1920)))) e!88583))))

(declare-fun b!148694 () Bool)

(declare-fun e!88580 () Bool)

(declare-fun tp!77871 () Bool)

(assert (=> b!148694 (= e!88580 (and e!88582 tp!77871))))

(assert (=> b!148313 (= tp!77782 e!88580)))

(assert (= b!148695 b!148696))

(assert (= b!148694 b!148695))

(assert (= (and b!148313 (is-Cons!2576 (t!24458 rules!1920))) b!148694))

(declare-fun m!131985 () Bool)

(assert (=> b!148695 m!131985))

(declare-fun m!131987 () Bool)

(assert (=> b!148695 m!131987))

(declare-fun e!88584 () Bool)

(assert (=> b!148312 (= tp!77774 e!88584)))

(declare-fun b!148698 () Bool)

(declare-fun tp!77876 () Bool)

(declare-fun tp!77875 () Bool)

(assert (=> b!148698 (= e!88584 (and tp!77876 tp!77875))))

(declare-fun b!148699 () Bool)

(declare-fun tp!77878 () Bool)

(assert (=> b!148699 (= e!88584 tp!77878)))

(declare-fun b!148697 () Bool)

(assert (=> b!148697 (= e!88584 tp_is_empty!1601)))

(declare-fun b!148700 () Bool)

(declare-fun tp!77877 () Bool)

(declare-fun tp!77874 () Bool)

(assert (=> b!148700 (= e!88584 (and tp!77877 tp!77874))))

(assert (= (and b!148312 (is-ElementMatch!668 (regex!444 (h!7973 rules!1920)))) b!148697))

(assert (= (and b!148312 (is-Concat!1135 (regex!444 (h!7973 rules!1920)))) b!148698))

(assert (= (and b!148312 (is-Star!668 (regex!444 (h!7973 rules!1920)))) b!148699))

(assert (= (and b!148312 (is-Union!668 (regex!444 (h!7973 rules!1920)))) b!148700))

(declare-fun e!88585 () Bool)

(assert (=> b!148322 (= tp!77777 e!88585)))

(declare-fun b!148702 () Bool)

(declare-fun tp!77881 () Bool)

(declare-fun tp!77880 () Bool)

(assert (=> b!148702 (= e!88585 (and tp!77881 tp!77880))))

(declare-fun b!148703 () Bool)

(declare-fun tp!77883 () Bool)

(assert (=> b!148703 (= e!88585 tp!77883)))

(declare-fun b!148701 () Bool)

(assert (=> b!148701 (= e!88585 tp_is_empty!1601)))

(declare-fun b!148704 () Bool)

(declare-fun tp!77882 () Bool)

(declare-fun tp!77879 () Bool)

(assert (=> b!148704 (= e!88585 (and tp!77882 tp!77879))))

(assert (= (and b!148322 (is-ElementMatch!668 (regex!444 (rule!951 separatorToken!170)))) b!148701))

(assert (= (and b!148322 (is-Concat!1135 (regex!444 (rule!951 separatorToken!170)))) b!148702))

(assert (= (and b!148322 (is-Star!668 (regex!444 (rule!951 separatorToken!170)))) b!148703))

(assert (= (and b!148322 (is-Union!668 (regex!444 (rule!951 separatorToken!170)))) b!148704))

(declare-fun b_lambda!2589 () Bool)

(assert (= b_lambda!2587 (or (and b!148325 b_free!5315 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148696 b_free!5339 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148670 b_free!5335 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148327 b_free!5311 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148311 b_free!5319) b_lambda!2589)))

(declare-fun b_lambda!2591 () Bool)

(assert (= b_lambda!2585 (or b!148316 b_lambda!2591)))

(declare-fun bs!13475 () Bool)

(declare-fun d!35482 () Bool)

(assert (= bs!13475 (and d!35482 b!148316)))

(assert (=> bs!13475 (= (dynLambda!886 lambda!3719 (h!7972 tokens!465)) (not (isSeparator!444 (rule!951 (h!7972 tokens!465)))))))

(assert (=> b!148569 d!35482))

(declare-fun b_lambda!2593 () Bool)

(assert (= b_lambda!2583 (or (and b!148696 b_free!5339 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148327 b_free!5311 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148325 b_free!5315) (and b!148670 b_free!5335 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148311 b_free!5319 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) b_lambda!2593)))

(declare-fun b_lambda!2595 () Bool)

(assert (= b_lambda!2581 (or (and b!148325 b_free!5315 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148696 b_free!5339 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148670 b_free!5335 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148327 b_free!5311 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 separatorToken!170))))) (and b!148311 b_free!5319) b_lambda!2595)))

(push 1)

(assert (not b!148699))

(assert (not b!148478))

(assert (not d!35406))

(assert (not b!148540))

(assert (not b!148426))

(assert (not b!148416))

(assert (not b_next!5317))

(assert (not b_next!5335))

(assert (not b!148584))

(assert tp_is_empty!1601)

(assert b_and!8333)

(assert (not b!148479))

(assert (not b!148591))

(assert (not b_next!5313))

(assert (not b!148669))

(assert (not d!35440))

(assert (not b_lambda!2593))

(assert (not b_next!5333))

(assert b_and!8331)

(assert (not b!148671))

(assert (not b!148590))

(assert (not b!148702))

(assert (not b_next!5339))

(assert (not b!148572))

(assert (not d!35408))

(assert (not b!148550))

(assert (not d!35450))

(assert (not b!148594))

(assert b_and!8289)

(assert (not b_next!5315))

(assert (not b!148694))

(assert (not b!148549))

(assert (not b!148539))

(assert (not b!148415))

(assert (not d!35444))

(assert (not b!148417))

(assert (not b!148495))

(assert (not b!148487))

(assert (not b_next!5337))

(assert b_and!8321)

(assert (not b!148509))

(assert (not bm!5875))

(assert (not b!148409))

(assert (not b_lambda!2591))

(assert (not b!148668))

(assert (not b!148524))

(assert (not d!35474))

(assert (not b!148413))

(assert (not b!148698))

(assert (not b!148649))

(assert b_and!8325)

(assert (not d!35466))

(assert (not b!148477))

(assert b_and!8329)

(assert (not b_lambda!2589))

(assert (not b!148482))

(assert (not tb!4837))

(assert (not b!148667))

(assert (not d!35468))

(assert (not d!35430))

(assert b_and!8285)

(assert (not d!35436))

(assert (not b!148683))

(assert b_and!8327)

(assert (not b!148656))

(assert (not b!148700))

(assert (not b!148485))

(assert (not b!148570))

(assert (not b_next!5309))

(assert (not b!148548))

(assert (not d!35472))

(assert (not b!148579))

(assert (not bm!5891))

(assert (not bm!5876))

(assert (not b!148578))

(assert (not b!148571))

(assert (not b_lambda!2595))

(assert (not b!148575))

(assert (not d!35454))

(assert (not b!148543))

(assert (not b!148651))

(assert (not bm!5877))

(assert (not bm!5889))

(assert (not d!35442))

(assert (not b!148593))

(assert (not b!148589))

(assert (not d!35432))

(assert b_and!8293)

(assert (not tb!4843))

(assert (not b_next!5311))

(assert (not d!35458))

(assert (not b!148494))

(assert (not bm!5893))

(assert (not bm!5874))

(assert (not b!148684))

(assert (not b!148695))

(assert (not b_next!5319))

(assert (not b!148650))

(assert (not b!148704))

(assert (not b!148685))

(assert (not b!148496))

(assert b_and!8323)

(assert (not b!148592))

(assert (not d!35434))

(assert (not b!148703))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5317))

(assert (not b_next!5313))

(assert (not b_next!5339))

(assert (not b_next!5337))

(assert b_and!8321)

(assert b_and!8285)

(assert b_and!8327)

(assert (not b_next!5309))

(assert (not b_next!5319))

(assert b_and!8323)

(assert (not b_next!5335))

(assert b_and!8333)

(assert (not b_next!5333))

(assert b_and!8331)

(assert b_and!8289)

(assert (not b_next!5315))

(assert b_and!8329)

(assert b_and!8325)

(assert b_and!8293)

(assert (not b_next!5311))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!35510 () Bool)

(declare-fun e!88663 () Bool)

(assert (=> d!35510 e!88663))

(declare-fun res!68346 () Bool)

(assert (=> d!35510 (=> (not res!68346) (not e!88663))))

(declare-fun lt!43161 () BalanceConc!1428)

(assert (=> d!35510 (= res!68346 (= (list!894 lt!43161) lt!42995))))

(declare-fun fromList!76 (List!2583) Conc!710)

(assert (=> d!35510 (= lt!43161 (BalanceConc!1429 (fromList!76 lt!42995)))))

(assert (=> d!35510 (= (fromListB!110 lt!42995) lt!43161)))

(declare-fun b!148807 () Bool)

(declare-fun isBalanced!201 (Conc!710) Bool)

(assert (=> b!148807 (= e!88663 (isBalanced!201 (fromList!76 lt!42995)))))

(assert (= (and d!35510 res!68346) b!148807))

(declare-fun m!132075 () Bool)

(assert (=> d!35510 m!132075))

(declare-fun m!132077 () Bool)

(assert (=> d!35510 m!132077))

(assert (=> b!148807 m!132077))

(assert (=> b!148807 m!132077))

(declare-fun m!132079 () Bool)

(assert (=> b!148807 m!132079))

(assert (=> d!35442 d!35510))

(declare-fun d!35512 () Bool)

(declare-fun res!68347 () Bool)

(declare-fun e!88664 () Bool)

(assert (=> d!35512 (=> (not res!68347) (not e!88664))))

(assert (=> d!35512 (= res!68347 (not (isEmpty!1009 (originalCharacters!487 (h!7972 (t!24457 tokens!465))))))))

(assert (=> d!35512 (= (inv!3365 (h!7972 (t!24457 tokens!465))) e!88664)))

(declare-fun b!148808 () Bool)

(declare-fun res!68348 () Bool)

(assert (=> b!148808 (=> (not res!68348) (not e!88664))))

(assert (=> b!148808 (= res!68348 (= (originalCharacters!487 (h!7972 (t!24457 tokens!465))) (list!894 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (value!16971 (h!7972 (t!24457 tokens!465)))))))))

(declare-fun b!148809 () Bool)

(assert (=> b!148809 (= e!88664 (= (size!2212 (h!7972 (t!24457 tokens!465))) (size!2215 (originalCharacters!487 (h!7972 (t!24457 tokens!465))))))))

(assert (= (and d!35512 res!68347) b!148808))

(assert (= (and b!148808 res!68348) b!148809))

(declare-fun b_lambda!2611 () Bool)

(assert (=> (not b_lambda!2611) (not b!148808)))

(declare-fun t!24532 () Bool)

(declare-fun tb!4877 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24532) tb!4877))

(declare-fun b!148810 () Bool)

(declare-fun e!88665 () Bool)

(declare-fun tp!77944 () Bool)

(assert (=> b!148810 (= e!88665 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (value!16971 (h!7972 (t!24457 tokens!465)))))) tp!77944))))

(declare-fun result!7288 () Bool)

(assert (=> tb!4877 (= result!7288 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (value!16971 (h!7972 (t!24457 tokens!465))))) e!88665))))

(assert (= tb!4877 b!148810))

(declare-fun m!132081 () Bool)

(assert (=> b!148810 m!132081))

(declare-fun m!132083 () Bool)

(assert (=> tb!4877 m!132083))

(assert (=> b!148808 t!24532))

(declare-fun b_and!8361 () Bool)

(assert (= b_and!8323 (and (=> t!24532 result!7288) b_and!8361)))

(declare-fun t!24534 () Bool)

(declare-fun tb!4879 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24534) tb!4879))

(declare-fun result!7290 () Bool)

(assert (= result!7290 result!7288))

(assert (=> b!148808 t!24534))

(declare-fun b_and!8363 () Bool)

(assert (= b_and!8333 (and (=> t!24534 result!7290) b_and!8363)))

(declare-fun t!24536 () Bool)

(declare-fun tb!4881 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24536) tb!4881))

(declare-fun result!7292 () Bool)

(assert (= result!7292 result!7288))

(assert (=> b!148808 t!24536))

(declare-fun b_and!8365 () Bool)

(assert (= b_and!8329 (and (=> t!24536 result!7292) b_and!8365)))

(declare-fun tb!4883 () Bool)

(declare-fun t!24538 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24538) tb!4883))

(declare-fun result!7294 () Bool)

(assert (= result!7294 result!7288))

(assert (=> b!148808 t!24538))

(declare-fun b_and!8367 () Bool)

(assert (= b_and!8321 (and (=> t!24538 result!7294) b_and!8367)))

(declare-fun tb!4885 () Bool)

(declare-fun t!24540 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24540) tb!4885))

(declare-fun result!7296 () Bool)

(assert (= result!7296 result!7288))

(assert (=> b!148808 t!24540))

(declare-fun b_and!8369 () Bool)

(assert (= b_and!8325 (and (=> t!24540 result!7296) b_and!8369)))

(declare-fun m!132085 () Bool)

(assert (=> d!35512 m!132085))

(declare-fun m!132087 () Bool)

(assert (=> b!148808 m!132087))

(assert (=> b!148808 m!132087))

(declare-fun m!132089 () Bool)

(assert (=> b!148808 m!132089))

(declare-fun m!132091 () Bool)

(assert (=> b!148809 m!132091))

(assert (=> b!148667 d!35512))

(declare-fun d!35514 () Bool)

(declare-fun res!68349 () Bool)

(declare-fun e!88666 () Bool)

(assert (=> d!35514 (=> res!68349 e!88666)))

(assert (=> d!35514 (= res!68349 (not (is-Cons!2576 (t!24458 rules!1920))))))

(assert (=> d!35514 (= (sepAndNonSepRulesDisjointChars!33 rules!1920 (t!24458 rules!1920)) e!88666)))

(declare-fun b!148811 () Bool)

(declare-fun e!88667 () Bool)

(assert (=> b!148811 (= e!88666 e!88667)))

(declare-fun res!68350 () Bool)

(assert (=> b!148811 (=> (not res!68350) (not e!88667))))

(assert (=> b!148811 (= res!68350 (ruleDisjointCharsFromAllFromOtherType!11 (h!7973 (t!24458 rules!1920)) rules!1920))))

(declare-fun b!148812 () Bool)

(assert (=> b!148812 (= e!88667 (sepAndNonSepRulesDisjointChars!33 rules!1920 (t!24458 (t!24458 rules!1920))))))

(assert (= (and d!35514 (not res!68349)) b!148811))

(assert (= (and b!148811 res!68350) b!148812))

(declare-fun m!132093 () Bool)

(assert (=> b!148811 m!132093))

(declare-fun m!132095 () Bool)

(assert (=> b!148812 m!132095))

(assert (=> b!148590 d!35514))

(declare-fun d!35516 () Bool)

(declare-fun lt!43164 () BalanceConc!1428)

(declare-fun printList!48 (LexerInterface!330 List!2585) List!2583)

(assert (=> d!35516 (= (list!894 lt!43164) (printList!48 thiss!17480 (list!897 (singletonSeq!20 call!5883))))))

(assert (=> d!35516 (= lt!43164 (printTailRec!50 thiss!17480 (singletonSeq!20 call!5883) 0 (BalanceConc!1429 Empty!710)))))

(assert (=> d!35516 (= (print!87 thiss!17480 (singletonSeq!20 call!5883)) lt!43164)))

(declare-fun bs!13485 () Bool)

(assert (= bs!13485 d!35516))

(declare-fun m!132097 () Bool)

(assert (=> bs!13485 m!132097))

(assert (=> bs!13485 m!131721))

(declare-fun m!132099 () Bool)

(assert (=> bs!13485 m!132099))

(assert (=> bs!13485 m!132099))

(declare-fun m!132101 () Bool)

(assert (=> bs!13485 m!132101))

(assert (=> bs!13485 m!131721))

(assert (=> bs!13485 m!131727))

(assert (=> b!148409 d!35516))

(declare-fun lt!43211 () Token!632)

(declare-fun b!148822 () Bool)

(declare-fun e!88672 () Bool)

(declare-datatypes ((Option!230 0))(
  ( (None!229) (Some!229 (v!13602 Rule!688)) )
))
(declare-fun get!697 (Option!230) Rule!688)

(declare-fun getRuleFromTag!7 (LexerInterface!330 List!2586 String!3412) Option!230)

(assert (=> b!148822 (= e!88672 (= (rule!951 lt!43211) (get!697 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43211))))))))

(declare-fun d!35518 () Bool)

(declare-fun isDefined!91 (Option!227) Bool)

(assert (=> d!35518 (isDefined!91 (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 call!5880) (list!894 lt!43047))))))

(declare-fun lt!43202 () Unit!1932)

(declare-fun e!88673 () Unit!1932)

(assert (=> d!35518 (= lt!43202 e!88673)))

(declare-fun c!30222 () Bool)

(declare-fun isEmpty!1013 (Option!227) Bool)

(assert (=> d!35518 (= c!30222 (isEmpty!1013 (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 call!5880) (list!894 lt!43047)))))))

(declare-fun lt!43199 () Unit!1932)

(declare-fun lt!43214 () Unit!1932)

(assert (=> d!35518 (= lt!43199 lt!43214)))

(assert (=> d!35518 e!88672))

(declare-fun res!68361 () Bool)

(assert (=> d!35518 (=> (not res!68361) (not e!88672))))

(declare-fun isDefined!92 (Option!230) Bool)

(assert (=> d!35518 (= res!68361 (isDefined!92 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43211)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!7 (LexerInterface!330 List!2586 List!2583 Token!632) Unit!1932)

(assert (=> d!35518 (= lt!43214 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!7 thiss!17480 rules!1920 (list!894 call!5880) lt!43211))))

(declare-fun lt!43201 () Unit!1932)

(declare-fun lt!43210 () Unit!1932)

(assert (=> d!35518 (= lt!43201 lt!43210)))

(declare-fun lt!43215 () List!2583)

(declare-fun isPrefix!208 (List!2583 List!2583) Bool)

(assert (=> d!35518 (isPrefix!208 lt!43215 (++!548 (list!894 call!5880) (list!894 lt!43047)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!7 (List!2583 List!2583 List!2583) Unit!1932)

(assert (=> d!35518 (= lt!43210 (lemmaPrefixStaysPrefixWhenAddingToSuffix!7 lt!43215 (list!894 call!5880) (list!894 lt!43047)))))

(assert (=> d!35518 (= lt!43215 (list!894 (charsOf!99 lt!43211)))))

(declare-fun lt!43204 () Unit!1932)

(declare-fun lt!43205 () Unit!1932)

(assert (=> d!35518 (= lt!43204 lt!43205)))

(declare-fun lt!43208 () List!2583)

(declare-fun lt!43203 () List!2583)

(assert (=> d!35518 (isPrefix!208 lt!43208 (++!548 lt!43208 lt!43203))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!111 (List!2583 List!2583) Unit!1932)

(assert (=> d!35518 (= lt!43205 (lemmaConcatTwoListThenFirstIsPrefix!111 lt!43208 lt!43203))))

(declare-fun get!698 (Option!227) tuple2!2534)

(assert (=> d!35518 (= lt!43203 (_2!1483 (get!698 (maxPrefix!102 thiss!17480 rules!1920 (list!894 call!5880)))))))

(assert (=> d!35518 (= lt!43208 (list!894 (charsOf!99 lt!43211)))))

(assert (=> d!35518 (= lt!43211 (head!575 (list!897 (_1!1484 (lex!162 thiss!17480 rules!1920 (seqFromList!265 (list!894 call!5880)))))))))

(assert (=> d!35518 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35518 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 (list!894 call!5880) (list!894 lt!43047)) lt!43202)))

(declare-fun b!148821 () Bool)

(declare-fun res!68360 () Bool)

(assert (=> b!148821 (=> (not res!68360) (not e!88672))))

(declare-fun matchR!64 (Regex!668 List!2583) Bool)

(assert (=> b!148821 (= res!68360 (matchR!64 (regex!444 (get!697 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43211))))) (list!894 (charsOf!99 lt!43211))))))

(declare-fun b!148824 () Bool)

(declare-fun Unit!1944 () Unit!1932)

(assert (=> b!148824 (= e!88673 Unit!1944)))

(declare-fun b!148823 () Bool)

(declare-fun Unit!1945 () Unit!1932)

(assert (=> b!148823 (= e!88673 Unit!1945)))

(declare-fun lt!43213 () List!2583)

(assert (=> b!148823 (= lt!43213 (++!548 (list!894 call!5880) (list!894 lt!43047)))))

(declare-fun lt!43200 () Unit!1932)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!7 (LexerInterface!330 Rule!688 List!2586 List!2583) Unit!1932)

(assert (=> b!148823 (= lt!43200 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!7 thiss!17480 (rule!951 lt!43211) rules!1920 lt!43213))))

(declare-fun maxPrefixOneRule!52 (LexerInterface!330 Rule!688 List!2583) Option!227)

(assert (=> b!148823 (isEmpty!1013 (maxPrefixOneRule!52 thiss!17480 (rule!951 lt!43211) lt!43213))))

(declare-fun lt!43212 () Unit!1932)

(assert (=> b!148823 (= lt!43212 lt!43200)))

(declare-fun lt!43207 () List!2583)

(assert (=> b!148823 (= lt!43207 (list!894 (charsOf!99 lt!43211)))))

(declare-fun lt!43206 () Unit!1932)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!7 (LexerInterface!330 Rule!688 List!2583 List!2583) Unit!1932)

(assert (=> b!148823 (= lt!43206 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!7 thiss!17480 (rule!951 lt!43211) lt!43207 (++!548 (list!894 call!5880) (list!894 lt!43047))))))

(assert (=> b!148823 (not (matchR!64 (regex!444 (rule!951 lt!43211)) lt!43207))))

(declare-fun lt!43209 () Unit!1932)

(assert (=> b!148823 (= lt!43209 lt!43206)))

(assert (=> b!148823 false))

(assert (= (and d!35518 res!68361) b!148821))

(assert (= (and b!148821 res!68360) b!148822))

(assert (= (and d!35518 c!30222) b!148823))

(assert (= (and d!35518 (not c!30222)) b!148824))

(declare-fun m!132103 () Bool)

(assert (=> b!148822 m!132103))

(assert (=> b!148822 m!132103))

(declare-fun m!132105 () Bool)

(assert (=> b!148822 m!132105))

(declare-fun m!132107 () Bool)

(assert (=> d!35518 m!132107))

(declare-fun m!132109 () Bool)

(assert (=> d!35518 m!132109))

(declare-fun m!132111 () Bool)

(assert (=> d!35518 m!132111))

(declare-fun m!132113 () Bool)

(assert (=> d!35518 m!132113))

(declare-fun m!132115 () Bool)

(assert (=> d!35518 m!132115))

(declare-fun m!132117 () Bool)

(assert (=> d!35518 m!132117))

(assert (=> d!35518 m!131719))

(assert (=> d!35518 m!131725))

(declare-fun m!132119 () Bool)

(assert (=> d!35518 m!132119))

(assert (=> d!35518 m!132107))

(declare-fun m!132121 () Bool)

(assert (=> d!35518 m!132121))

(declare-fun m!132123 () Bool)

(assert (=> d!35518 m!132123))

(declare-fun m!132125 () Bool)

(assert (=> d!35518 m!132125))

(declare-fun m!132127 () Bool)

(assert (=> d!35518 m!132127))

(assert (=> d!35518 m!132121))

(declare-fun m!132129 () Bool)

(assert (=> d!35518 m!132129))

(assert (=> d!35518 m!131719))

(declare-fun m!132131 () Bool)

(assert (=> d!35518 m!132131))

(assert (=> d!35518 m!131719))

(assert (=> d!35518 m!131725))

(assert (=> d!35518 m!132107))

(assert (=> d!35518 m!132103))

(declare-fun m!132133 () Bool)

(assert (=> d!35518 m!132133))

(declare-fun m!132135 () Bool)

(assert (=> d!35518 m!132135))

(assert (=> d!35518 m!131581))

(assert (=> d!35518 m!131719))

(assert (=> d!35518 m!132115))

(declare-fun m!132137 () Bool)

(assert (=> d!35518 m!132137))

(assert (=> d!35518 m!131719))

(assert (=> d!35518 m!132125))

(assert (=> d!35518 m!132123))

(declare-fun m!132139 () Bool)

(assert (=> d!35518 m!132139))

(assert (=> d!35518 m!132121))

(declare-fun m!132141 () Bool)

(assert (=> d!35518 m!132141))

(assert (=> d!35518 m!132111))

(assert (=> d!35518 m!132103))

(declare-fun m!132143 () Bool)

(assert (=> d!35518 m!132143))

(assert (=> d!35518 m!132133))

(assert (=> b!148821 m!132135))

(declare-fun m!132145 () Bool)

(assert (=> b!148821 m!132145))

(assert (=> b!148821 m!132103))

(assert (=> b!148821 m!132105))

(assert (=> b!148821 m!132103))

(assert (=> b!148821 m!132133))

(assert (=> b!148821 m!132133))

(assert (=> b!148821 m!132135))

(declare-fun m!132147 () Bool)

(assert (=> b!148823 m!132147))

(assert (=> b!148823 m!132107))

(declare-fun m!132149 () Bool)

(assert (=> b!148823 m!132149))

(declare-fun m!132151 () Bool)

(assert (=> b!148823 m!132151))

(assert (=> b!148823 m!131719))

(assert (=> b!148823 m!131725))

(assert (=> b!148823 m!132107))

(declare-fun m!132153 () Bool)

(assert (=> b!148823 m!132153))

(assert (=> b!148823 m!132151))

(declare-fun m!132155 () Bool)

(assert (=> b!148823 m!132155))

(assert (=> b!148823 m!132133))

(assert (=> b!148823 m!132133))

(assert (=> b!148823 m!132135))

(assert (=> b!148409 d!35518))

(declare-fun d!35520 () Bool)

(declare-fun e!88676 () Bool)

(assert (=> d!35520 e!88676))

(declare-fun res!68365 () Bool)

(assert (=> d!35520 (=> (not res!68365) (not e!88676))))

(declare-fun lt!43218 () BalanceConc!1430)

(assert (=> d!35520 (= res!68365 (= (list!897 lt!43218) (Cons!2575 call!5883 Nil!2575)))))

(declare-fun singleton!16 (Token!632) BalanceConc!1430)

(assert (=> d!35520 (= lt!43218 (singleton!16 call!5883))))

(assert (=> d!35520 (= (singletonSeq!20 call!5883) lt!43218)))

(declare-fun b!148827 () Bool)

(declare-fun isBalanced!202 (Conc!711) Bool)

(assert (=> b!148827 (= e!88676 (isBalanced!202 (c!30147 lt!43218)))))

(assert (= (and d!35520 res!68365) b!148827))

(declare-fun m!132157 () Bool)

(assert (=> d!35520 m!132157))

(declare-fun m!132159 () Bool)

(assert (=> d!35520 m!132159))

(declare-fun m!132161 () Bool)

(assert (=> b!148827 m!132161))

(assert (=> b!148409 d!35520))

(declare-fun d!35522 () Bool)

(assert (=> d!35522 (= (list!894 lt!43047) (list!896 (c!30145 lt!43047)))))

(declare-fun bs!13486 () Bool)

(assert (= bs!13486 d!35522))

(declare-fun m!132163 () Bool)

(assert (=> bs!13486 m!132163))

(assert (=> b!148409 d!35522))

(declare-fun d!35524 () Bool)

(declare-fun lt!43234 () BalanceConc!1428)

(declare-fun printListTailRec!35 (LexerInterface!330 List!2585 List!2583) List!2583)

(assert (=> d!35524 (= (list!894 lt!43234) (printListTailRec!35 thiss!17480 (dropList!61 (singletonSeq!20 call!5883) 0) (list!894 (BalanceConc!1429 Empty!710))))))

(declare-fun e!88681 () BalanceConc!1428)

(assert (=> d!35524 (= lt!43234 e!88681)))

(declare-fun c!30225 () Bool)

(assert (=> d!35524 (= c!30225 (>= 0 (size!2214 (singletonSeq!20 call!5883))))))

(declare-fun e!88682 () Bool)

(assert (=> d!35524 e!88682))

(declare-fun res!68368 () Bool)

(assert (=> d!35524 (=> (not res!68368) (not e!88682))))

(assert (=> d!35524 (= res!68368 (>= 0 0))))

(assert (=> d!35524 (= (printTailRec!50 thiss!17480 (singletonSeq!20 call!5883) 0 (BalanceConc!1429 Empty!710)) lt!43234)))

(declare-fun b!148834 () Bool)

(assert (=> b!148834 (= e!88682 (<= 0 (size!2214 (singletonSeq!20 call!5883))))))

(declare-fun b!148835 () Bool)

(assert (=> b!148835 (= e!88681 (BalanceConc!1429 Empty!710))))

(declare-fun b!148836 () Bool)

(assert (=> b!148836 (= e!88681 (printTailRec!50 thiss!17480 (singletonSeq!20 call!5883) (+ 0 1) (++!547 (BalanceConc!1429 Empty!710) (charsOf!99 (apply!327 (singletonSeq!20 call!5883) 0)))))))

(declare-fun lt!43236 () List!2585)

(assert (=> b!148836 (= lt!43236 (list!897 (singletonSeq!20 call!5883)))))

(declare-fun lt!43235 () Unit!1932)

(assert (=> b!148836 (= lt!43235 (lemmaDropApply!101 lt!43236 0))))

(assert (=> b!148836 (= (head!575 (drop!114 lt!43236 0)) (apply!328 lt!43236 0))))

(declare-fun lt!43238 () Unit!1932)

(assert (=> b!148836 (= lt!43238 lt!43235)))

(declare-fun lt!43237 () List!2585)

(assert (=> b!148836 (= lt!43237 (list!897 (singletonSeq!20 call!5883)))))

(declare-fun lt!43233 () Unit!1932)

(assert (=> b!148836 (= lt!43233 (lemmaDropTail!93 lt!43237 0))))

(assert (=> b!148836 (= (tail!315 (drop!114 lt!43237 0)) (drop!114 lt!43237 (+ 0 1)))))

(declare-fun lt!43239 () Unit!1932)

(assert (=> b!148836 (= lt!43239 lt!43233)))

(assert (= (and d!35524 res!68368) b!148834))

(assert (= (and d!35524 c!30225) b!148835))

(assert (= (and d!35524 (not c!30225)) b!148836))

(declare-fun m!132165 () Bool)

(assert (=> d!35524 m!132165))

(declare-fun m!132167 () Bool)

(assert (=> d!35524 m!132167))

(declare-fun m!132169 () Bool)

(assert (=> d!35524 m!132169))

(declare-fun m!132171 () Bool)

(assert (=> d!35524 m!132171))

(assert (=> d!35524 m!131721))

(assert (=> d!35524 m!132167))

(assert (=> d!35524 m!131721))

(declare-fun m!132173 () Bool)

(assert (=> d!35524 m!132173))

(assert (=> d!35524 m!132169))

(assert (=> b!148834 m!131721))

(assert (=> b!148834 m!132173))

(declare-fun m!132175 () Bool)

(assert (=> b!148836 m!132175))

(declare-fun m!132177 () Bool)

(assert (=> b!148836 m!132177))

(assert (=> b!148836 m!131721))

(assert (=> b!148836 m!132099))

(assert (=> b!148836 m!131721))

(declare-fun m!132179 () Bool)

(assert (=> b!148836 m!132179))

(declare-fun m!132181 () Bool)

(assert (=> b!148836 m!132181))

(declare-fun m!132183 () Bool)

(assert (=> b!148836 m!132183))

(assert (=> b!148836 m!131721))

(declare-fun m!132185 () Bool)

(assert (=> b!148836 m!132185))

(assert (=> b!148836 m!132175))

(declare-fun m!132187 () Bool)

(assert (=> b!148836 m!132187))

(assert (=> b!148836 m!132185))

(declare-fun m!132189 () Bool)

(assert (=> b!148836 m!132189))

(declare-fun m!132191 () Bool)

(assert (=> b!148836 m!132191))

(declare-fun m!132193 () Bool)

(assert (=> b!148836 m!132193))

(declare-fun m!132195 () Bool)

(assert (=> b!148836 m!132195))

(assert (=> b!148836 m!132189))

(assert (=> b!148836 m!132179))

(assert (=> b!148836 m!132195))

(declare-fun m!132197 () Bool)

(assert (=> b!148836 m!132197))

(assert (=> b!148409 d!35524))

(declare-fun d!35526 () Bool)

(assert (=> d!35526 (= (list!894 call!5880) (list!896 (c!30145 call!5880)))))

(declare-fun bs!13487 () Bool)

(assert (= bs!13487 d!35526))

(declare-fun m!132199 () Bool)

(assert (=> bs!13487 m!132199))

(assert (=> b!148409 d!35526))

(declare-fun d!35528 () Bool)

(declare-fun charsToBigInt!1 (List!2584) Int)

(assert (=> d!35528 (= (inv!17 (value!16971 (h!7972 tokens!465))) (= (charsToBigInt!1 (text!3710 (value!16971 (h!7972 tokens!465)))) (value!16963 (value!16971 (h!7972 tokens!465)))))))

(declare-fun bs!13488 () Bool)

(assert (= bs!13488 d!35528))

(declare-fun m!132201 () Bool)

(assert (=> bs!13488 m!132201))

(assert (=> b!148571 d!35528))

(declare-fun d!35530 () Bool)

(declare-fun res!68369 () Bool)

(declare-fun e!88683 () Bool)

(assert (=> d!35530 (=> res!68369 e!88683)))

(assert (=> d!35530 (= res!68369 (is-Nil!2575 (t!24457 tokens!465)))))

(assert (=> d!35530 (= (forall!424 (t!24457 tokens!465) lambda!3739) e!88683)))

(declare-fun b!148837 () Bool)

(declare-fun e!88684 () Bool)

(assert (=> b!148837 (= e!88683 e!88684)))

(declare-fun res!68370 () Bool)

(assert (=> b!148837 (=> (not res!68370) (not e!88684))))

(assert (=> b!148837 (= res!68370 (dynLambda!886 lambda!3739 (h!7972 (t!24457 tokens!465))))))

(declare-fun b!148838 () Bool)

(assert (=> b!148838 (= e!88684 (forall!424 (t!24457 (t!24457 tokens!465)) lambda!3739))))

(assert (= (and d!35530 (not res!68369)) b!148837))

(assert (= (and b!148837 res!68370) b!148838))

(declare-fun b_lambda!2613 () Bool)

(assert (=> (not b_lambda!2613) (not b!148837)))

(declare-fun m!132203 () Bool)

(assert (=> b!148837 m!132203))

(declare-fun m!132205 () Bool)

(assert (=> b!148838 m!132205))

(assert (=> d!35430 d!35530))

(assert (=> d!35430 d!35462))

(declare-fun d!35532 () Bool)

(declare-fun lt!43240 () BalanceConc!1428)

(assert (=> d!35532 (= (list!894 lt!43240) (originalCharacters!487 (h!7972 tokens!465)))))

(assert (=> d!35532 (= lt!43240 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))

(assert (=> d!35532 (= (charsOf!99 (h!7972 tokens!465)) lt!43240)))

(declare-fun b_lambda!2615 () Bool)

(assert (=> (not b_lambda!2615) (not d!35532)))

(assert (=> d!35532 t!24486))

(declare-fun b_and!8371 () Bool)

(assert (= b_and!8367 (and (=> t!24486 result!7236) b_and!8371)))

(assert (=> d!35532 t!24488))

(declare-fun b_and!8373 () Bool)

(assert (= b_and!8361 (and (=> t!24488 result!7238) b_and!8373)))

(assert (=> d!35532 t!24490))

(declare-fun b_and!8375 () Bool)

(assert (= b_and!8369 (and (=> t!24490 result!7240) b_and!8375)))

(assert (=> d!35532 t!24501))

(declare-fun b_and!8377 () Bool)

(assert (= b_and!8365 (and (=> t!24501 result!7248) b_and!8377)))

(assert (=> d!35532 t!24505))

(declare-fun b_and!8379 () Bool)

(assert (= b_and!8363 (and (=> t!24505 result!7256) b_and!8379)))

(declare-fun m!132207 () Bool)

(assert (=> d!35532 m!132207))

(assert (=> d!35532 m!131821))

(assert (=> bm!5893 d!35532))

(declare-fun d!35534 () Bool)

(assert (=> d!35534 true))

(declare-fun lambda!3759 () Int)

(declare-fun order!1275 () Int)

(declare-fun dynLambda!892 (Int Int) Int)

(assert (=> d!35534 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!892 order!1275 lambda!3759))))

(assert (=> d!35534 true))

(assert (=> d!35534 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!892 order!1275 lambda!3759))))

(declare-fun Forall!119 (Int) Bool)

(assert (=> d!35534 (= (semiInverseModEq!152 (toChars!934 (transformation!444 (h!7973 rules!1920))) (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (Forall!119 lambda!3759))))

(declare-fun bs!13489 () Bool)

(assert (= bs!13489 d!35534))

(declare-fun m!132209 () Bool)

(assert (=> bs!13489 m!132209))

(assert (=> d!35466 d!35534))

(declare-fun bs!13490 () Bool)

(declare-fun d!35536 () Bool)

(assert (= bs!13490 (and d!35536 b!148478)))

(declare-fun lambda!3760 () Int)

(assert (=> bs!13490 (= lambda!3760 lambda!3736)))

(declare-fun bs!13491 () Bool)

(assert (= bs!13491 (and d!35536 d!35430)))

(assert (=> bs!13491 (= lambda!3760 lambda!3739)))

(declare-fun bs!13492 () Bool)

(assert (= bs!13492 (and d!35536 b!148415)))

(assert (=> bs!13492 (= lambda!3760 lambda!3728)))

(declare-fun bs!13493 () Bool)

(assert (= bs!13493 (and d!35536 b!148316)))

(assert (=> bs!13493 (not (= lambda!3760 lambda!3719))))

(declare-fun bs!13494 () Bool)

(assert (= bs!13494 (and d!35536 d!35450)))

(assert (=> bs!13494 (= lambda!3760 lambda!3750)))

(declare-fun bs!13495 () Bool)

(assert (= bs!13495 (and d!35536 d!35408)))

(assert (=> bs!13495 (not (= lambda!3760 lambda!3727))))

(declare-fun b!148847 () Bool)

(declare-fun e!88689 () Bool)

(assert (=> b!148847 (= e!88689 true)))

(declare-fun b!148846 () Bool)

(declare-fun e!88688 () Bool)

(assert (=> b!148846 (= e!88688 e!88689)))

(declare-fun b!148845 () Bool)

(declare-fun e!88687 () Bool)

(assert (=> b!148845 (= e!88687 e!88688)))

(assert (=> d!35536 e!88687))

(assert (= b!148846 b!148847))

(assert (= b!148845 b!148846))

(assert (= (and d!35536 (is-Cons!2576 rules!1920)) b!148845))

(assert (=> b!148847 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3760))))

(assert (=> b!148847 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3760))))

(assert (=> d!35536 true))

(declare-fun lt!43241 () Bool)

(assert (=> d!35536 (= lt!43241 (forall!424 (list!897 lt!42996) lambda!3760))))

(declare-fun e!88686 () Bool)

(assert (=> d!35536 (= lt!43241 e!88686)))

(declare-fun res!68372 () Bool)

(assert (=> d!35536 (=> res!68372 e!88686)))

(assert (=> d!35536 (= res!68372 (not (is-Cons!2575 (list!897 lt!42996))))))

(assert (=> d!35536 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35536 (= (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (list!897 lt!42996)) lt!43241)))

(declare-fun b!148843 () Bool)

(declare-fun e!88685 () Bool)

(assert (=> b!148843 (= e!88686 e!88685)))

(declare-fun res!68371 () Bool)

(assert (=> b!148843 (=> (not res!68371) (not e!88685))))

(assert (=> b!148843 (= res!68371 (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (list!897 lt!42996))))))

(declare-fun b!148844 () Bool)

(assert (=> b!148844 (= e!88685 (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 (list!897 lt!42996))))))

(assert (= (and d!35536 (not res!68372)) b!148843))

(assert (= (and b!148843 res!68371) b!148844))

(assert (=> d!35536 m!131679))

(declare-fun m!132211 () Bool)

(assert (=> d!35536 m!132211))

(assert (=> d!35536 m!131581))

(declare-fun m!132213 () Bool)

(assert (=> b!148843 m!132213))

(declare-fun m!132215 () Bool)

(assert (=> b!148844 m!132215))

(assert (=> b!148578 d!35536))

(declare-fun d!35538 () Bool)

(declare-fun list!900 (Conc!711) List!2585)

(assert (=> d!35538 (= (list!897 lt!42996) (list!900 (c!30147 lt!42996)))))

(declare-fun bs!13496 () Bool)

(assert (= bs!13496 d!35538))

(declare-fun m!132217 () Bool)

(assert (=> bs!13496 m!132217))

(assert (=> b!148578 d!35538))

(declare-fun d!35540 () Bool)

(assert (=> d!35540 (= (list!894 lt!43093) (list!896 (c!30145 lt!43093)))))

(declare-fun bs!13497 () Bool)

(assert (= bs!13497 d!35540))

(declare-fun m!132219 () Bool)

(assert (=> bs!13497 m!132219))

(assert (=> d!35434 d!35540))

(declare-fun e!88695 () List!2583)

(declare-fun b!148857 () Bool)

(assert (=> b!148857 (= e!88695 (Cons!2573 (h!7970 e!88430) (++!548 (t!24455 e!88430) (ite c!30174 lt!43067 call!5897))))))

(declare-fun e!88694 () Bool)

(declare-fun lt!43244 () List!2583)

(declare-fun b!148859 () Bool)

(assert (=> b!148859 (= e!88694 (or (not (= (ite c!30174 lt!43067 call!5897) Nil!2573)) (= lt!43244 e!88430)))))

(declare-fun d!35542 () Bool)

(assert (=> d!35542 e!88694))

(declare-fun res!68377 () Bool)

(assert (=> d!35542 (=> (not res!68377) (not e!88694))))

(declare-fun content!358 (List!2583) (Set C!2258))

(assert (=> d!35542 (= res!68377 (= (content!358 lt!43244) (set.union (content!358 e!88430) (content!358 (ite c!30174 lt!43067 call!5897)))))))

(assert (=> d!35542 (= lt!43244 e!88695)))

(declare-fun c!30228 () Bool)

(assert (=> d!35542 (= c!30228 (is-Nil!2573 e!88430))))

(assert (=> d!35542 (= (++!548 e!88430 (ite c!30174 lt!43067 call!5897)) lt!43244)))

(declare-fun b!148856 () Bool)

(assert (=> b!148856 (= e!88695 (ite c!30174 lt!43067 call!5897))))

(declare-fun b!148858 () Bool)

(declare-fun res!68378 () Bool)

(assert (=> b!148858 (=> (not res!68378) (not e!88694))))

(assert (=> b!148858 (= res!68378 (= (size!2215 lt!43244) (+ (size!2215 e!88430) (size!2215 (ite c!30174 lt!43067 call!5897)))))))

(assert (= (and d!35542 c!30228) b!148856))

(assert (= (and d!35542 (not c!30228)) b!148857))

(assert (= (and d!35542 res!68377) b!148858))

(assert (= (and b!148858 res!68378) b!148859))

(declare-fun m!132221 () Bool)

(assert (=> b!148857 m!132221))

(declare-fun m!132223 () Bool)

(assert (=> d!35542 m!132223))

(declare-fun m!132225 () Bool)

(assert (=> d!35542 m!132225))

(declare-fun m!132227 () Bool)

(assert (=> d!35542 m!132227))

(declare-fun m!132229 () Bool)

(assert (=> b!148858 m!132229))

(declare-fun m!132231 () Bool)

(assert (=> b!148858 m!132231))

(declare-fun m!132233 () Bool)

(assert (=> b!148858 m!132233))

(assert (=> bm!5891 d!35542))

(declare-fun d!35544 () Bool)

(declare-fun e!88698 () Bool)

(assert (=> d!35544 e!88698))

(declare-fun res!68381 () Bool)

(assert (=> d!35544 (=> (not res!68381) (not e!88698))))

(declare-fun lt!43247 () BalanceConc!1430)

(assert (=> d!35544 (= res!68381 (= (list!897 lt!43247) tokens!465))))

(declare-fun fromList!77 (List!2585) Conc!711)

(assert (=> d!35544 (= lt!43247 (BalanceConc!1431 (fromList!77 tokens!465)))))

(assert (=> d!35544 (= (fromListB!111 tokens!465) lt!43247)))

(declare-fun b!148862 () Bool)

(assert (=> b!148862 (= e!88698 (isBalanced!202 (fromList!77 tokens!465)))))

(assert (= (and d!35544 res!68381) b!148862))

(declare-fun m!132235 () Bool)

(assert (=> d!35544 m!132235))

(declare-fun m!132237 () Bool)

(assert (=> d!35544 m!132237))

(assert (=> b!148862 m!132237))

(assert (=> b!148862 m!132237))

(declare-fun m!132239 () Bool)

(assert (=> b!148862 m!132239))

(assert (=> d!35454 d!35544))

(declare-fun d!35546 () Bool)

(declare-fun res!68382 () Bool)

(declare-fun e!88699 () Bool)

(assert (=> d!35546 (=> res!68382 e!88699)))

(assert (=> d!35546 (= res!68382 (is-Nil!2575 (list!897 lt!42996)))))

(assert (=> d!35546 (= (forall!424 (list!897 lt!42996) lambda!3750) e!88699)))

(declare-fun b!148863 () Bool)

(declare-fun e!88700 () Bool)

(assert (=> b!148863 (= e!88699 e!88700)))

(declare-fun res!68383 () Bool)

(assert (=> b!148863 (=> (not res!68383) (not e!88700))))

(assert (=> b!148863 (= res!68383 (dynLambda!886 lambda!3750 (h!7972 (list!897 lt!42996))))))

(declare-fun b!148864 () Bool)

(assert (=> b!148864 (= e!88700 (forall!424 (t!24457 (list!897 lt!42996)) lambda!3750))))

(assert (= (and d!35546 (not res!68382)) b!148863))

(assert (= (and b!148863 res!68383) b!148864))

(declare-fun b_lambda!2617 () Bool)

(assert (=> (not b_lambda!2617) (not b!148863)))

(declare-fun m!132241 () Bool)

(assert (=> b!148863 m!132241))

(declare-fun m!132243 () Bool)

(assert (=> b!148864 m!132243))

(assert (=> d!35450 d!35546))

(assert (=> d!35450 d!35538))

(declare-fun d!35548 () Bool)

(declare-fun lt!43250 () Bool)

(assert (=> d!35548 (= lt!43250 (forall!424 (list!897 lt!42996) lambda!3750))))

(declare-fun forall!428 (Conc!711 Int) Bool)

(assert (=> d!35548 (= lt!43250 (forall!428 (c!30147 lt!42996) lambda!3750))))

(assert (=> d!35548 (= (forall!426 lt!42996 lambda!3750) lt!43250)))

(declare-fun bs!13498 () Bool)

(assert (= bs!13498 d!35548))

(assert (=> bs!13498 m!131679))

(assert (=> bs!13498 m!131679))

(assert (=> bs!13498 m!131895))

(declare-fun m!132245 () Bool)

(assert (=> bs!13498 m!132245))

(assert (=> d!35450 d!35548))

(assert (=> d!35450 d!35462))

(declare-fun d!35550 () Bool)

(declare-fun lt!43251 () BalanceConc!1428)

(assert (=> d!35550 (= (list!894 lt!43251) (originalCharacters!487 (ite c!30159 separatorToken!170 call!5883)))))

(assert (=> d!35550 (= lt!43251 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883)))) (value!16971 (ite c!30159 separatorToken!170 call!5883))))))

(assert (=> d!35550 (= (charsOf!99 (ite c!30159 separatorToken!170 call!5883)) lt!43251)))

(declare-fun b_lambda!2619 () Bool)

(assert (=> (not b_lambda!2619) (not d!35550)))

(declare-fun t!24543 () Bool)

(declare-fun tb!4887 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24543) tb!4887))

(declare-fun b!148865 () Bool)

(declare-fun e!88701 () Bool)

(declare-fun tp!77945 () Bool)

(assert (=> b!148865 (= e!88701 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883)))) (value!16971 (ite c!30159 separatorToken!170 call!5883))))) tp!77945))))

(declare-fun result!7298 () Bool)

(assert (=> tb!4887 (= result!7298 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883)))) (value!16971 (ite c!30159 separatorToken!170 call!5883)))) e!88701))))

(assert (= tb!4887 b!148865))

(declare-fun m!132247 () Bool)

(assert (=> b!148865 m!132247))

(declare-fun m!132249 () Bool)

(assert (=> tb!4887 m!132249))

(assert (=> d!35550 t!24543))

(declare-fun b_and!8381 () Bool)

(assert (= b_and!8375 (and (=> t!24543 result!7298) b_and!8381)))

(declare-fun tb!4889 () Bool)

(declare-fun t!24545 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24545) tb!4889))

(declare-fun result!7300 () Bool)

(assert (= result!7300 result!7298))

(assert (=> d!35550 t!24545))

(declare-fun b_and!8383 () Bool)

(assert (= b_and!8373 (and (=> t!24545 result!7300) b_and!8383)))

(declare-fun t!24547 () Bool)

(declare-fun tb!4891 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24547) tb!4891))

(declare-fun result!7302 () Bool)

(assert (= result!7302 result!7298))

(assert (=> d!35550 t!24547))

(declare-fun b_and!8385 () Bool)

(assert (= b_and!8371 (and (=> t!24547 result!7302) b_and!8385)))

(declare-fun tb!4893 () Bool)

(declare-fun t!24549 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24549) tb!4893))

(declare-fun result!7304 () Bool)

(assert (= result!7304 result!7298))

(assert (=> d!35550 t!24549))

(declare-fun b_and!8387 () Bool)

(assert (= b_and!8379 (and (=> t!24549 result!7304) b_and!8387)))

(declare-fun tb!4895 () Bool)

(declare-fun t!24551 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24551) tb!4895))

(declare-fun result!7306 () Bool)

(assert (= result!7306 result!7298))

(assert (=> d!35550 t!24551))

(declare-fun b_and!8389 () Bool)

(assert (= b_and!8377 (and (=> t!24551 result!7306) b_and!8389)))

(declare-fun m!132251 () Bool)

(assert (=> d!35550 m!132251))

(declare-fun m!132253 () Bool)

(assert (=> d!35550 m!132253))

(assert (=> bm!5877 d!35550))

(declare-fun d!35552 () Bool)

(assert (=> d!35552 (= (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))) (isBalanced!201 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(declare-fun bs!13499 () Bool)

(assert (= bs!13499 d!35552))

(declare-fun m!132255 () Bool)

(assert (=> bs!13499 m!132255))

(assert (=> tb!4837 d!35552))

(declare-fun d!35554 () Bool)

(assert (=> d!35554 (= (isEmpty!1009 (originalCharacters!487 (h!7972 tokens!465))) (is-Nil!2573 (originalCharacters!487 (h!7972 tokens!465))))))

(assert (=> d!35444 d!35554))

(declare-fun d!35556 () Bool)

(declare-fun charsToInt!0 (List!2584) (_ BitVec 32))

(assert (=> d!35556 (= (inv!16 (value!16971 separatorToken!170)) (= (charsToInt!0 (text!3709 (value!16971 separatorToken!170))) (value!16962 (value!16971 separatorToken!170))))))

(declare-fun bs!13500 () Bool)

(assert (= bs!13500 d!35556))

(declare-fun m!132257 () Bool)

(assert (=> bs!13500 m!132257))

(assert (=> b!148543 d!35556))

(declare-fun d!35558 () Bool)

(declare-fun lt!43253 () Bool)

(declare-fun e!88702 () Bool)

(assert (=> d!35558 (= lt!43253 e!88702)))

(declare-fun res!68385 () Bool)

(assert (=> d!35558 (=> (not res!68385) (not e!88702))))

(assert (=> d!35558 (= res!68385 (= (list!897 (_1!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 (h!7972 (t!24457 tokens!465))))))) (list!897 (singletonSeq!20 (h!7972 (t!24457 tokens!465))))))))

(declare-fun e!88703 () Bool)

(assert (=> d!35558 (= lt!43253 e!88703)))

(declare-fun res!68384 () Bool)

(assert (=> d!35558 (=> (not res!68384) (not e!88703))))

(declare-fun lt!43252 () tuple2!2536)

(assert (=> d!35558 (= res!68384 (= (size!2214 (_1!1484 lt!43252)) 1))))

(assert (=> d!35558 (= lt!43252 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 (h!7972 (t!24457 tokens!465))))))))

(assert (=> d!35558 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35558 (= (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (t!24457 tokens!465))) lt!43253)))

(declare-fun b!148866 () Bool)

(declare-fun res!68386 () Bool)

(assert (=> b!148866 (=> (not res!68386) (not e!88703))))

(assert (=> b!148866 (= res!68386 (= (apply!327 (_1!1484 lt!43252) 0) (h!7972 (t!24457 tokens!465))))))

(declare-fun b!148867 () Bool)

(assert (=> b!148867 (= e!88703 (isEmpty!1010 (_2!1484 lt!43252)))))

(declare-fun b!148868 () Bool)

(assert (=> b!148868 (= e!88702 (isEmpty!1010 (_2!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 (h!7972 (t!24457 tokens!465))))))))))

(assert (= (and d!35558 res!68384) b!148866))

(assert (= (and b!148866 res!68386) b!148867))

(assert (= (and d!35558 res!68385) b!148868))

(declare-fun m!132259 () Bool)

(assert (=> d!35558 m!132259))

(declare-fun m!132261 () Bool)

(assert (=> d!35558 m!132261))

(assert (=> d!35558 m!131581))

(assert (=> d!35558 m!132259))

(declare-fun m!132263 () Bool)

(assert (=> d!35558 m!132263))

(declare-fun m!132265 () Bool)

(assert (=> d!35558 m!132265))

(assert (=> d!35558 m!132259))

(assert (=> d!35558 m!132263))

(declare-fun m!132267 () Bool)

(assert (=> d!35558 m!132267))

(declare-fun m!132269 () Bool)

(assert (=> d!35558 m!132269))

(declare-fun m!132271 () Bool)

(assert (=> b!148866 m!132271))

(declare-fun m!132273 () Bool)

(assert (=> b!148867 m!132273))

(assert (=> b!148868 m!132259))

(assert (=> b!148868 m!132259))

(assert (=> b!148868 m!132263))

(assert (=> b!148868 m!132263))

(assert (=> b!148868 m!132267))

(declare-fun m!132275 () Bool)

(assert (=> b!148868 m!132275))

(assert (=> b!148494 d!35558))

(declare-fun d!35560 () Bool)

(assert (=> d!35560 (dynLambda!886 lambda!3736 (h!7972 tokens!465))))

(declare-fun lt!43256 () Unit!1932)

(declare-fun choose!1737 (List!2585 Int Token!632) Unit!1932)

(assert (=> d!35560 (= lt!43256 (choose!1737 tokens!465 lambda!3736 (h!7972 tokens!465)))))

(declare-fun e!88706 () Bool)

(assert (=> d!35560 e!88706))

(declare-fun res!68389 () Bool)

(assert (=> d!35560 (=> (not res!68389) (not e!88706))))

(assert (=> d!35560 (= res!68389 (forall!424 tokens!465 lambda!3736))))

(assert (=> d!35560 (= (forallContained!45 tokens!465 lambda!3736 (h!7972 tokens!465)) lt!43256)))

(declare-fun b!148871 () Bool)

(declare-fun contains!409 (List!2585 Token!632) Bool)

(assert (=> b!148871 (= e!88706 (contains!409 tokens!465 (h!7972 tokens!465)))))

(assert (= (and d!35560 res!68389) b!148871))

(declare-fun b_lambda!2621 () Bool)

(assert (=> (not b_lambda!2621) (not d!35560)))

(declare-fun m!132277 () Bool)

(assert (=> d!35560 m!132277))

(declare-fun m!132279 () Bool)

(assert (=> d!35560 m!132279))

(declare-fun m!132281 () Bool)

(assert (=> d!35560 m!132281))

(declare-fun m!132283 () Bool)

(assert (=> b!148871 m!132283))

(assert (=> b!148478 d!35560))

(declare-fun bs!13501 () Bool)

(declare-fun b!148873 () Bool)

(assert (= bs!13501 (and b!148873 d!35430)))

(declare-fun lambda!3761 () Int)

(assert (=> bs!13501 (= lambda!3761 lambda!3739)))

(declare-fun bs!13502 () Bool)

(assert (= bs!13502 (and b!148873 b!148415)))

(assert (=> bs!13502 (= lambda!3761 lambda!3728)))

(declare-fun bs!13503 () Bool)

(assert (= bs!13503 (and b!148873 b!148316)))

(assert (=> bs!13503 (not (= lambda!3761 lambda!3719))))

(declare-fun bs!13504 () Bool)

(assert (= bs!13504 (and b!148873 b!148478)))

(assert (=> bs!13504 (= lambda!3761 lambda!3736)))

(declare-fun bs!13505 () Bool)

(assert (= bs!13505 (and b!148873 d!35536)))

(assert (=> bs!13505 (= lambda!3761 lambda!3760)))

(declare-fun bs!13506 () Bool)

(assert (= bs!13506 (and b!148873 d!35450)))

(assert (=> bs!13506 (= lambda!3761 lambda!3750)))

(declare-fun bs!13507 () Bool)

(assert (= bs!13507 (and b!148873 d!35408)))

(assert (=> bs!13507 (not (= lambda!3761 lambda!3727))))

(declare-fun b!148884 () Bool)

(declare-fun e!88714 () Bool)

(assert (=> b!148884 (= e!88714 true)))

(declare-fun b!148883 () Bool)

(declare-fun e!88713 () Bool)

(assert (=> b!148883 (= e!88713 e!88714)))

(declare-fun b!148882 () Bool)

(declare-fun e!88712 () Bool)

(assert (=> b!148882 (= e!88712 e!88713)))

(assert (=> b!148873 e!88712))

(assert (= b!148883 b!148884))

(assert (= b!148882 b!148883))

(assert (= (and b!148873 (is-Cons!2576 rules!1920)) b!148882))

(assert (=> b!148884 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3761))))

(assert (=> b!148884 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3761))))

(assert (=> b!148873 true))

(declare-fun b!148872 () Bool)

(declare-fun e!88710 () List!2583)

(declare-fun call!5929 () BalanceConc!1428)

(assert (=> b!148872 (= e!88710 (list!894 call!5929))))

(declare-fun e!88709 () List!2583)

(declare-fun e!88708 () List!2583)

(assert (=> b!148873 (= e!88709 e!88708)))

(declare-fun lt!43257 () Unit!1932)

(assert (=> b!148873 (= lt!43257 (forallContained!45 (t!24457 tokens!465) lambda!3761 (h!7972 (t!24457 tokens!465))))))

(declare-fun lt!43258 () List!2583)

(assert (=> b!148873 (= lt!43258 (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (t!24457 (t!24457 tokens!465)) separatorToken!170))))

(declare-fun lt!43261 () Option!227)

(assert (=> b!148873 (= lt!43261 (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 (charsOf!99 (h!7972 (t!24457 tokens!465)))) lt!43258)))))

(declare-fun c!30233 () Bool)

(assert (=> b!148873 (= c!30233 (and (is-Some!226 lt!43261) (= (_1!1483 (v!13595 lt!43261)) (h!7972 (t!24457 tokens!465)))))))

(declare-fun call!5930 () BalanceConc!1428)

(declare-fun call!5931 () List!2583)

(declare-fun bm!5924 () Bool)

(declare-fun e!88707 () BalanceConc!1428)

(assert (=> bm!5924 (= call!5931 (list!894 (ite c!30233 call!5930 e!88707)))))

(declare-fun bm!5925 () Bool)

(assert (=> bm!5925 (= call!5929 call!5930)))

(declare-fun d!35562 () Bool)

(declare-fun c!30231 () Bool)

(assert (=> d!35562 (= c!30231 (is-Cons!2575 (t!24457 tokens!465)))))

(assert (=> d!35562 (= (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (t!24457 tokens!465) separatorToken!170) e!88709)))

(declare-fun b!148874 () Bool)

(declare-fun e!88711 () List!2583)

(declare-fun call!5933 () List!2583)

(assert (=> b!148874 (= e!88711 (++!548 call!5933 lt!43258))))

(declare-fun bm!5926 () Bool)

(declare-fun c!30232 () Bool)

(assert (=> bm!5926 (= c!30232 c!30233)))

(declare-fun call!5932 () List!2583)

(assert (=> bm!5926 (= call!5933 (++!548 e!88710 (ite c!30233 lt!43258 call!5932)))))

(declare-fun b!148875 () Bool)

(assert (=> b!148875 (= e!88707 call!5929)))

(declare-fun b!148876 () Bool)

(declare-fun c!30234 () Bool)

(assert (=> b!148876 (= c!30234 (and (is-Some!226 lt!43261) (not (= (_1!1483 (v!13595 lt!43261)) (h!7972 (t!24457 tokens!465))))))))

(assert (=> b!148876 (= e!88708 e!88711)))

(declare-fun bm!5927 () Bool)

(assert (=> bm!5927 (= call!5932 call!5931)))

(declare-fun c!30230 () Bool)

(assert (=> bm!5927 (= c!30230 c!30234)))

(declare-fun b!148877 () Bool)

(assert (=> b!148877 (= e!88711 Nil!2573)))

(assert (=> b!148877 (= (print!87 thiss!17480 (singletonSeq!20 (h!7972 (t!24457 tokens!465)))) (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 (t!24457 tokens!465))) 0 (BalanceConc!1429 Empty!710)))))

(declare-fun lt!43259 () Unit!1932)

(declare-fun Unit!1946 () Unit!1932)

(assert (=> b!148877 (= lt!43259 Unit!1946)))

(declare-fun lt!43260 () Unit!1932)

(assert (=> b!148877 (= lt!43260 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 call!5932 lt!43258))))

(assert (=> b!148877 false))

(declare-fun lt!43262 () Unit!1932)

(declare-fun Unit!1947 () Unit!1932)

(assert (=> b!148877 (= lt!43262 Unit!1947)))

(declare-fun bm!5928 () Bool)

(assert (=> bm!5928 (= call!5930 (charsOf!99 (h!7972 (t!24457 tokens!465))))))

(declare-fun b!148878 () Bool)

(assert (=> b!148878 (= e!88710 call!5931)))

(declare-fun b!148879 () Bool)

(assert (=> b!148879 (= e!88708 call!5933)))

(declare-fun b!148880 () Bool)

(assert (=> b!148880 (= e!88707 (charsOf!99 separatorToken!170))))

(declare-fun b!148881 () Bool)

(assert (=> b!148881 (= e!88709 Nil!2573)))

(assert (= (and d!35562 c!30231) b!148873))

(assert (= (and d!35562 (not c!30231)) b!148881))

(assert (= (and b!148873 c!30233) b!148879))

(assert (= (and b!148873 (not c!30233)) b!148876))

(assert (= (and b!148876 c!30234) b!148874))

(assert (= (and b!148876 (not c!30234)) b!148877))

(assert (= (or b!148874 b!148877) bm!5925))

(assert (= (or b!148874 b!148877) bm!5927))

(assert (= (and bm!5927 c!30230) b!148880))

(assert (= (and bm!5927 (not c!30230)) b!148875))

(assert (= (or b!148879 bm!5925) bm!5928))

(assert (= (or b!148879 bm!5927) bm!5924))

(assert (= (or b!148879 b!148874) bm!5926))

(assert (= (and bm!5926 c!30232) b!148878))

(assert (= (and bm!5926 (not c!30232)) b!148872))

(declare-fun m!132285 () Bool)

(assert (=> bm!5928 m!132285))

(assert (=> b!148880 m!131609))

(declare-fun m!132287 () Bool)

(assert (=> bm!5926 m!132287))

(declare-fun m!132289 () Bool)

(assert (=> bm!5924 m!132289))

(declare-fun m!132291 () Bool)

(assert (=> b!148874 m!132291))

(declare-fun m!132293 () Bool)

(assert (=> b!148872 m!132293))

(assert (=> b!148877 m!132259))

(assert (=> b!148877 m!132259))

(assert (=> b!148877 m!132263))

(assert (=> b!148877 m!132259))

(declare-fun m!132295 () Bool)

(assert (=> b!148877 m!132295))

(declare-fun m!132297 () Bool)

(assert (=> b!148877 m!132297))

(declare-fun m!132299 () Bool)

(assert (=> b!148873 m!132299))

(declare-fun m!132301 () Bool)

(assert (=> b!148873 m!132301))

(assert (=> b!148873 m!132285))

(assert (=> b!148873 m!132299))

(declare-fun m!132303 () Bool)

(assert (=> b!148873 m!132303))

(assert (=> b!148873 m!132285))

(assert (=> b!148873 m!132301))

(declare-fun m!132305 () Bool)

(assert (=> b!148873 m!132305))

(declare-fun m!132307 () Bool)

(assert (=> b!148873 m!132307))

(assert (=> b!148478 d!35562))

(declare-fun b!148886 () Bool)

(declare-fun e!88716 () List!2583)

(assert (=> b!148886 (= e!88716 (Cons!2573 (h!7970 (list!894 (charsOf!99 (h!7972 tokens!465)))) (++!548 (t!24455 (list!894 (charsOf!99 (h!7972 tokens!465)))) lt!43067)))))

(declare-fun b!148888 () Bool)

(declare-fun lt!43263 () List!2583)

(declare-fun e!88715 () Bool)

(assert (=> b!148888 (= e!88715 (or (not (= lt!43067 Nil!2573)) (= lt!43263 (list!894 (charsOf!99 (h!7972 tokens!465))))))))

(declare-fun d!35564 () Bool)

(assert (=> d!35564 e!88715))

(declare-fun res!68390 () Bool)

(assert (=> d!35564 (=> (not res!68390) (not e!88715))))

(assert (=> d!35564 (= res!68390 (= (content!358 lt!43263) (set.union (content!358 (list!894 (charsOf!99 (h!7972 tokens!465)))) (content!358 lt!43067))))))

(assert (=> d!35564 (= lt!43263 e!88716)))

(declare-fun c!30235 () Bool)

(assert (=> d!35564 (= c!30235 (is-Nil!2573 (list!894 (charsOf!99 (h!7972 tokens!465)))))))

(assert (=> d!35564 (= (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067) lt!43263)))

(declare-fun b!148885 () Bool)

(assert (=> b!148885 (= e!88716 lt!43067)))

(declare-fun b!148887 () Bool)

(declare-fun res!68391 () Bool)

(assert (=> b!148887 (=> (not res!68391) (not e!88715))))

(assert (=> b!148887 (= res!68391 (= (size!2215 lt!43263) (+ (size!2215 (list!894 (charsOf!99 (h!7972 tokens!465)))) (size!2215 lt!43067))))))

(assert (= (and d!35564 c!30235) b!148885))

(assert (= (and d!35564 (not c!30235)) b!148886))

(assert (= (and d!35564 res!68390) b!148887))

(assert (= (and b!148887 res!68391) b!148888))

(declare-fun m!132309 () Bool)

(assert (=> b!148886 m!132309))

(declare-fun m!132311 () Bool)

(assert (=> d!35564 m!132311))

(assert (=> d!35564 m!131775))

(declare-fun m!132313 () Bool)

(assert (=> d!35564 m!132313))

(declare-fun m!132315 () Bool)

(assert (=> d!35564 m!132315))

(declare-fun m!132317 () Bool)

(assert (=> b!148887 m!132317))

(assert (=> b!148887 m!131775))

(declare-fun m!132319 () Bool)

(assert (=> b!148887 m!132319))

(declare-fun m!132321 () Bool)

(assert (=> b!148887 m!132321))

(assert (=> b!148478 d!35564))

(declare-fun d!35566 () Bool)

(assert (=> d!35566 (= (list!894 (charsOf!99 (h!7972 tokens!465))) (list!896 (c!30145 (charsOf!99 (h!7972 tokens!465)))))))

(declare-fun bs!13508 () Bool)

(assert (= bs!13508 d!35566))

(declare-fun m!132323 () Bool)

(assert (=> bs!13508 m!132323))

(assert (=> b!148478 d!35566))

(assert (=> b!148478 d!35532))

(declare-fun b!148941 () Bool)

(declare-fun res!68418 () Bool)

(declare-fun e!88747 () Bool)

(assert (=> b!148941 (=> (not res!68418) (not e!88747))))

(declare-fun lt!43278 () Option!227)

(assert (=> b!148941 (= res!68418 (matchR!64 (regex!444 (rule!951 (_1!1483 (get!698 lt!43278)))) (list!894 (charsOf!99 (_1!1483 (get!698 lt!43278))))))))

(declare-fun b!148942 () Bool)

(declare-fun res!68421 () Bool)

(assert (=> b!148942 (=> (not res!68421) (not e!88747))))

(assert (=> b!148942 (= res!68421 (< (size!2215 (_2!1483 (get!698 lt!43278))) (size!2215 (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067))))))

(declare-fun b!148943 () Bool)

(declare-fun res!68420 () Bool)

(assert (=> b!148943 (=> (not res!68420) (not e!88747))))

(assert (=> b!148943 (= res!68420 (= (++!548 (list!894 (charsOf!99 (_1!1483 (get!698 lt!43278)))) (_2!1483 (get!698 lt!43278))) (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)))))

(declare-fun call!5939 () Option!227)

(declare-fun bm!5934 () Bool)

(assert (=> bm!5934 (= call!5939 (maxPrefixOneRule!52 thiss!17480 (h!7973 rules!1920) (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)))))

(declare-fun b!148944 () Bool)

(declare-fun res!68424 () Bool)

(assert (=> b!148944 (=> (not res!68424) (not e!88747))))

(assert (=> b!148944 (= res!68424 (= (list!894 (charsOf!99 (_1!1483 (get!698 lt!43278)))) (originalCharacters!487 (_1!1483 (get!698 lt!43278)))))))

(declare-fun d!35568 () Bool)

(declare-fun e!88746 () Bool)

(assert (=> d!35568 e!88746))

(declare-fun res!68419 () Bool)

(assert (=> d!35568 (=> res!68419 e!88746)))

(assert (=> d!35568 (= res!68419 (isEmpty!1013 lt!43278))))

(declare-fun e!88748 () Option!227)

(assert (=> d!35568 (= lt!43278 e!88748)))

(declare-fun c!30249 () Bool)

(assert (=> d!35568 (= c!30249 (and (is-Cons!2576 rules!1920) (is-Nil!2576 (t!24458 rules!1920))))))

(declare-fun lt!43275 () Unit!1932)

(declare-fun lt!43274 () Unit!1932)

(assert (=> d!35568 (= lt!43275 lt!43274)))

(assert (=> d!35568 (isPrefix!208 (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067) (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067))))

(declare-fun lemmaIsPrefixRefl!116 (List!2583 List!2583) Unit!1932)

(assert (=> d!35568 (= lt!43274 (lemmaIsPrefixRefl!116 (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067) (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)))))

(declare-fun rulesValidInductive!93 (LexerInterface!330 List!2586) Bool)

(assert (=> d!35568 (rulesValidInductive!93 thiss!17480 rules!1920)))

(assert (=> d!35568 (= (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)) lt!43278)))

(declare-fun b!148945 () Bool)

(declare-fun lt!43277 () Option!227)

(declare-fun lt!43276 () Option!227)

(assert (=> b!148945 (= e!88748 (ite (and (is-None!226 lt!43277) (is-None!226 lt!43276)) None!226 (ite (is-None!226 lt!43276) lt!43277 (ite (is-None!226 lt!43277) lt!43276 (ite (>= (size!2212 (_1!1483 (v!13595 lt!43277))) (size!2212 (_1!1483 (v!13595 lt!43276)))) lt!43277 lt!43276)))))))

(assert (=> b!148945 (= lt!43277 call!5939)))

(assert (=> b!148945 (= lt!43276 (maxPrefix!102 thiss!17480 (t!24458 rules!1920) (++!548 (list!894 (charsOf!99 (h!7972 tokens!465))) lt!43067)))))

(declare-fun b!148946 () Bool)

(declare-fun contains!410 (List!2586 Rule!688) Bool)

(assert (=> b!148946 (= e!88747 (contains!410 rules!1920 (rule!951 (_1!1483 (get!698 lt!43278)))))))

(declare-fun b!148947 () Bool)

(assert (=> b!148947 (= e!88748 call!5939)))

(declare-fun b!148948 () Bool)

(assert (=> b!148948 (= e!88746 e!88747)))

(declare-fun res!68423 () Bool)

(assert (=> b!148948 (=> (not res!68423) (not e!88747))))

(assert (=> b!148948 (= res!68423 (isDefined!91 lt!43278))))

(declare-fun b!148949 () Bool)

(declare-fun res!68422 () Bool)

(assert (=> b!148949 (=> (not res!68422) (not e!88747))))

(declare-fun apply!331 (TokenValueInjection!704 BalanceConc!1428) TokenValue!466)

(assert (=> b!148949 (= res!68422 (= (value!16971 (_1!1483 (get!698 lt!43278))) (apply!331 (transformation!444 (rule!951 (_1!1483 (get!698 lt!43278)))) (seqFromList!265 (originalCharacters!487 (_1!1483 (get!698 lt!43278)))))))))

(assert (= (and d!35568 c!30249) b!148947))

(assert (= (and d!35568 (not c!30249)) b!148945))

(assert (= (or b!148947 b!148945) bm!5934))

(assert (= (and d!35568 (not res!68419)) b!148948))

(assert (= (and b!148948 res!68423) b!148944))

(assert (= (and b!148944 res!68424) b!148942))

(assert (= (and b!148942 res!68421) b!148943))

(assert (= (and b!148943 res!68420) b!148949))

(assert (= (and b!148949 res!68422) b!148941))

(assert (= (and b!148941 res!68418) b!148946))

(declare-fun m!132355 () Bool)

(assert (=> b!148942 m!132355))

(declare-fun m!132357 () Bool)

(assert (=> b!148942 m!132357))

(assert (=> b!148942 m!131777))

(declare-fun m!132359 () Bool)

(assert (=> b!148942 m!132359))

(assert (=> b!148943 m!132355))

(declare-fun m!132361 () Bool)

(assert (=> b!148943 m!132361))

(assert (=> b!148943 m!132361))

(declare-fun m!132363 () Bool)

(assert (=> b!148943 m!132363))

(assert (=> b!148943 m!132363))

(declare-fun m!132365 () Bool)

(assert (=> b!148943 m!132365))

(assert (=> b!148945 m!131777))

(declare-fun m!132367 () Bool)

(assert (=> b!148945 m!132367))

(declare-fun m!132369 () Bool)

(assert (=> b!148948 m!132369))

(assert (=> b!148949 m!132355))

(declare-fun m!132371 () Bool)

(assert (=> b!148949 m!132371))

(assert (=> b!148949 m!132371))

(declare-fun m!132373 () Bool)

(assert (=> b!148949 m!132373))

(assert (=> bm!5934 m!131777))

(declare-fun m!132375 () Bool)

(assert (=> bm!5934 m!132375))

(assert (=> b!148944 m!132355))

(assert (=> b!148944 m!132361))

(assert (=> b!148944 m!132361))

(assert (=> b!148944 m!132363))

(assert (=> b!148941 m!132355))

(assert (=> b!148941 m!132361))

(assert (=> b!148941 m!132361))

(assert (=> b!148941 m!132363))

(assert (=> b!148941 m!132363))

(declare-fun m!132377 () Bool)

(assert (=> b!148941 m!132377))

(assert (=> b!148946 m!132355))

(declare-fun m!132379 () Bool)

(assert (=> b!148946 m!132379))

(declare-fun m!132381 () Bool)

(assert (=> d!35568 m!132381))

(assert (=> d!35568 m!131777))

(assert (=> d!35568 m!131777))

(declare-fun m!132383 () Bool)

(assert (=> d!35568 m!132383))

(assert (=> d!35568 m!131777))

(assert (=> d!35568 m!131777))

(declare-fun m!132385 () Bool)

(assert (=> d!35568 m!132385))

(declare-fun m!132387 () Bool)

(assert (=> d!35568 m!132387))

(assert (=> b!148478 d!35568))

(declare-fun d!35588 () Bool)

(assert (=> d!35588 (= (tail!315 (drop!114 lt!43039 0)) (drop!114 lt!43039 (+ 0 1)))))

(declare-fun lt!43283 () Unit!1932)

(declare-fun choose!1738 (List!2585 Int) Unit!1932)

(assert (=> d!35588 (= lt!43283 (choose!1738 lt!43039 0))))

(declare-fun e!88751 () Bool)

(assert (=> d!35588 e!88751))

(declare-fun res!68427 () Bool)

(assert (=> d!35588 (=> (not res!68427) (not e!88751))))

(assert (=> d!35588 (= res!68427 (>= 0 0))))

(assert (=> d!35588 (= (lemmaDropTail!93 lt!43039 0) lt!43283)))

(declare-fun b!148952 () Bool)

(declare-fun size!2218 (List!2585) Int)

(assert (=> b!148952 (= e!88751 (< 0 (size!2218 lt!43039)))))

(assert (= (and d!35588 res!68427) b!148952))

(assert (=> d!35588 m!131707))

(assert (=> d!35588 m!131707))

(assert (=> d!35588 m!131709))

(assert (=> d!35588 m!131711))

(declare-fun m!132389 () Bool)

(assert (=> d!35588 m!132389))

(declare-fun m!132391 () Bool)

(assert (=> b!148952 m!132391))

(assert (=> b!148415 d!35588))

(declare-fun b!148974 () Bool)

(declare-fun e!88768 () List!2585)

(assert (=> b!148974 (= e!88768 Nil!2575)))

(declare-fun b!148975 () Bool)

(declare-fun e!88766 () Int)

(assert (=> b!148975 (= e!88766 0)))

(declare-fun b!148976 () Bool)

(declare-fun e!88769 () List!2585)

(assert (=> b!148976 (= e!88768 e!88769)))

(declare-fun c!30258 () Bool)

(assert (=> b!148976 (= c!30258 (<= 0 0))))

(declare-fun b!148977 () Bool)

(declare-fun e!88767 () Int)

(assert (=> b!148977 (= e!88767 e!88766)))

(declare-fun c!30260 () Bool)

(declare-fun call!5942 () Int)

(assert (=> b!148977 (= c!30260 (>= 0 call!5942))))

(declare-fun bm!5937 () Bool)

(assert (=> bm!5937 (= call!5942 (size!2218 lt!43039))))

(declare-fun b!148978 () Bool)

(assert (=> b!148978 (= e!88767 call!5942)))

(declare-fun b!148979 () Bool)

(assert (=> b!148979 (= e!88769 lt!43039)))

(declare-fun b!148980 () Bool)

(assert (=> b!148980 (= e!88766 (- call!5942 0))))

(declare-fun d!35590 () Bool)

(declare-fun e!88765 () Bool)

(assert (=> d!35590 e!88765))

(declare-fun res!68433 () Bool)

(assert (=> d!35590 (=> (not res!68433) (not e!88765))))

(declare-fun lt!43290 () List!2585)

(declare-fun content!359 (List!2585) (Set Token!632))

(assert (=> d!35590 (= res!68433 (set.subset (content!359 lt!43290) (content!359 lt!43039)))))

(assert (=> d!35590 (= lt!43290 e!88768)))

(declare-fun c!30259 () Bool)

(assert (=> d!35590 (= c!30259 (is-Nil!2575 lt!43039))))

(assert (=> d!35590 (= (drop!114 lt!43039 0) lt!43290)))

(declare-fun b!148981 () Bool)

(assert (=> b!148981 (= e!88769 (drop!114 (t!24457 lt!43039) (- 0 1)))))

(declare-fun b!148982 () Bool)

(assert (=> b!148982 (= e!88765 (= (size!2218 lt!43290) e!88767))))

(declare-fun c!30261 () Bool)

(assert (=> b!148982 (= c!30261 (<= 0 0))))

(assert (= (and d!35590 c!30259) b!148974))

(assert (= (and d!35590 (not c!30259)) b!148976))

(assert (= (and b!148976 c!30258) b!148979))

(assert (= (and b!148976 (not c!30258)) b!148981))

(assert (= (and d!35590 res!68433) b!148982))

(assert (= (and b!148982 c!30261) b!148978))

(assert (= (and b!148982 (not c!30261)) b!148977))

(assert (= (and b!148977 c!30260) b!148975))

(assert (= (and b!148977 (not c!30260)) b!148980))

(assert (= (or b!148978 b!148977 b!148980) bm!5937))

(assert (=> bm!5937 m!132391))

(declare-fun m!132405 () Bool)

(assert (=> d!35590 m!132405))

(declare-fun m!132407 () Bool)

(assert (=> d!35590 m!132407))

(declare-fun m!132409 () Bool)

(assert (=> b!148981 m!132409))

(declare-fun m!132411 () Bool)

(assert (=> b!148982 m!132411))

(assert (=> b!148415 d!35590))

(declare-fun b!148983 () Bool)

(declare-fun e!88773 () List!2585)

(assert (=> b!148983 (= e!88773 Nil!2575)))

(declare-fun b!148984 () Bool)

(declare-fun e!88771 () Int)

(assert (=> b!148984 (= e!88771 0)))

(declare-fun b!148985 () Bool)

(declare-fun e!88774 () List!2585)

(assert (=> b!148985 (= e!88773 e!88774)))

(declare-fun c!30262 () Bool)

(assert (=> b!148985 (= c!30262 (<= (+ 0 1) 0))))

(declare-fun b!148986 () Bool)

(declare-fun e!88772 () Int)

(assert (=> b!148986 (= e!88772 e!88771)))

(declare-fun c!30264 () Bool)

(declare-fun call!5943 () Int)

(assert (=> b!148986 (= c!30264 (>= (+ 0 1) call!5943))))

(declare-fun bm!5938 () Bool)

(assert (=> bm!5938 (= call!5943 (size!2218 lt!43039))))

(declare-fun b!148987 () Bool)

(assert (=> b!148987 (= e!88772 call!5943)))

(declare-fun b!148988 () Bool)

(assert (=> b!148988 (= e!88774 lt!43039)))

(declare-fun b!148989 () Bool)

(assert (=> b!148989 (= e!88771 (- call!5943 (+ 0 1)))))

(declare-fun d!35596 () Bool)

(declare-fun e!88770 () Bool)

(assert (=> d!35596 e!88770))

(declare-fun res!68434 () Bool)

(assert (=> d!35596 (=> (not res!68434) (not e!88770))))

(declare-fun lt!43291 () List!2585)

(assert (=> d!35596 (= res!68434 (set.subset (content!359 lt!43291) (content!359 lt!43039)))))

(assert (=> d!35596 (= lt!43291 e!88773)))

(declare-fun c!30263 () Bool)

(assert (=> d!35596 (= c!30263 (is-Nil!2575 lt!43039))))

(assert (=> d!35596 (= (drop!114 lt!43039 (+ 0 1)) lt!43291)))

(declare-fun b!148990 () Bool)

(assert (=> b!148990 (= e!88774 (drop!114 (t!24457 lt!43039) (- (+ 0 1) 1)))))

(declare-fun b!148991 () Bool)

(assert (=> b!148991 (= e!88770 (= (size!2218 lt!43291) e!88772))))

(declare-fun c!30265 () Bool)

(assert (=> b!148991 (= c!30265 (<= (+ 0 1) 0))))

(assert (= (and d!35596 c!30263) b!148983))

(assert (= (and d!35596 (not c!30263)) b!148985))

(assert (= (and b!148985 c!30262) b!148988))

(assert (= (and b!148985 (not c!30262)) b!148990))

(assert (= (and d!35596 res!68434) b!148991))

(assert (= (and b!148991 c!30265) b!148987))

(assert (= (and b!148991 (not c!30265)) b!148986))

(assert (= (and b!148986 c!30264) b!148984))

(assert (= (and b!148986 (not c!30264)) b!148989))

(assert (= (or b!148987 b!148986 b!148989) bm!5938))

(assert (=> bm!5938 m!132391))

(declare-fun m!132413 () Bool)

(assert (=> d!35596 m!132413))

(assert (=> d!35596 m!132407))

(declare-fun m!132415 () Bool)

(assert (=> b!148990 m!132415))

(declare-fun m!132417 () Bool)

(assert (=> b!148991 m!132417))

(assert (=> b!148415 d!35596))

(declare-fun bs!13513 () Bool)

(declare-fun d!35598 () Bool)

(assert (= bs!13513 (and d!35598 d!35430)))

(declare-fun lambda!3762 () Int)

(assert (=> bs!13513 (not (= lambda!3762 lambda!3739))))

(declare-fun bs!13514 () Bool)

(assert (= bs!13514 (and d!35598 b!148415)))

(assert (=> bs!13514 (not (= lambda!3762 lambda!3728))))

(declare-fun bs!13515 () Bool)

(assert (= bs!13515 (and d!35598 b!148316)))

(assert (=> bs!13515 (= lambda!3762 lambda!3719)))

(declare-fun bs!13516 () Bool)

(assert (= bs!13516 (and d!35598 b!148873)))

(assert (=> bs!13516 (not (= lambda!3762 lambda!3761))))

(declare-fun bs!13517 () Bool)

(assert (= bs!13517 (and d!35598 b!148478)))

(assert (=> bs!13517 (not (= lambda!3762 lambda!3736))))

(declare-fun bs!13518 () Bool)

(assert (= bs!13518 (and d!35598 d!35536)))

(assert (=> bs!13518 (not (= lambda!3762 lambda!3760))))

(declare-fun bs!13519 () Bool)

(assert (= bs!13519 (and d!35598 d!35450)))

(assert (=> bs!13519 (not (= lambda!3762 lambda!3750))))

(declare-fun bs!13520 () Bool)

(assert (= bs!13520 (and d!35598 d!35408)))

(assert (=> bs!13520 (= lambda!3762 lambda!3727)))

(declare-fun bs!13521 () Bool)

(declare-fun b!148998 () Bool)

(assert (= bs!13521 (and b!148998 d!35430)))

(declare-fun lambda!3763 () Int)

(assert (=> bs!13521 (= lambda!3763 lambda!3739)))

(declare-fun bs!13522 () Bool)

(assert (= bs!13522 (and b!148998 b!148415)))

(assert (=> bs!13522 (= lambda!3763 lambda!3728)))

(declare-fun bs!13523 () Bool)

(assert (= bs!13523 (and b!148998 b!148316)))

(assert (=> bs!13523 (not (= lambda!3763 lambda!3719))))

(declare-fun bs!13524 () Bool)

(assert (= bs!13524 (and b!148998 d!35598)))

(assert (=> bs!13524 (not (= lambda!3763 lambda!3762))))

(declare-fun bs!13525 () Bool)

(assert (= bs!13525 (and b!148998 b!148873)))

(assert (=> bs!13525 (= lambda!3763 lambda!3761)))

(declare-fun bs!13526 () Bool)

(assert (= bs!13526 (and b!148998 b!148478)))

(assert (=> bs!13526 (= lambda!3763 lambda!3736)))

(declare-fun bs!13527 () Bool)

(assert (= bs!13527 (and b!148998 d!35536)))

(assert (=> bs!13527 (= lambda!3763 lambda!3760)))

(declare-fun bs!13528 () Bool)

(assert (= bs!13528 (and b!148998 d!35450)))

(assert (=> bs!13528 (= lambda!3763 lambda!3750)))

(declare-fun bs!13529 () Bool)

(assert (= bs!13529 (and b!148998 d!35408)))

(assert (=> bs!13529 (not (= lambda!3763 lambda!3727))))

(declare-fun b!149003 () Bool)

(declare-fun e!88783 () Bool)

(assert (=> b!149003 (= e!88783 true)))

(declare-fun b!149002 () Bool)

(declare-fun e!88782 () Bool)

(assert (=> b!149002 (= e!88782 e!88783)))

(declare-fun b!149001 () Bool)

(declare-fun e!88781 () Bool)

(assert (=> b!149001 (= e!88781 e!88782)))

(assert (=> b!148998 e!88781))

(assert (= b!149002 b!149003))

(assert (= b!149001 b!149002))

(assert (= (and b!148998 (is-Cons!2576 rules!1920)) b!149001))

(assert (=> b!149003 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3763))))

(assert (=> b!149003 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3763))))

(assert (=> b!148998 true))

(declare-fun bm!5939 () Bool)

(declare-fun call!5948 () Token!632)

(declare-fun c!30266 () Bool)

(declare-fun call!5947 () BalanceConc!1428)

(declare-fun call!5944 () Token!632)

(assert (=> bm!5939 (= call!5947 (charsOf!99 (ite c!30266 call!5944 call!5948)))))

(declare-fun b!148992 () Bool)

(declare-fun e!88777 () BalanceConc!1428)

(assert (=> b!148992 (= e!88777 (BalanceConc!1429 Empty!710))))

(assert (=> b!148992 (= (print!87 thiss!17480 (singletonSeq!20 call!5948)) (printTailRec!50 thiss!17480 (singletonSeq!20 call!5948) 0 (BalanceConc!1429 Empty!710)))))

(declare-fun lt!43299 () Unit!1932)

(declare-fun Unit!1948 () Unit!1932)

(assert (=> b!148992 (= lt!43299 Unit!1948)))

(declare-fun call!5945 () BalanceConc!1428)

(declare-fun lt!43300 () BalanceConc!1428)

(declare-fun lt!43302 () Unit!1932)

(assert (=> b!148992 (= lt!43302 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 (list!894 call!5945) (list!894 lt!43300)))))

(assert (=> b!148992 false))

(declare-fun lt!43304 () Unit!1932)

(declare-fun Unit!1949 () Unit!1932)

(assert (=> b!148992 (= lt!43304 Unit!1949)))

(declare-fun b!148993 () Bool)

(declare-fun c!30267 () Bool)

(declare-fun e!88776 () Bool)

(assert (=> b!148993 (= c!30267 e!88776)))

(declare-fun res!68436 () Bool)

(assert (=> b!148993 (=> (not res!68436) (not e!88776))))

(declare-fun lt!43293 () Option!226)

(assert (=> b!148993 (= res!68436 (is-Some!225 lt!43293))))

(declare-fun e!88778 () BalanceConc!1428)

(assert (=> b!148993 (= e!88778 e!88777)))

(declare-fun b!148994 () Bool)

(assert (=> b!148994 (= e!88776 (not (= (_1!1482 (v!13594 lt!43293)) call!5944)))))

(declare-fun b!148995 () Bool)

(declare-fun call!5946 () BalanceConc!1428)

(assert (=> b!148995 (= e!88778 call!5946)))

(declare-fun b!148996 () Bool)

(declare-fun e!88775 () Bool)

(assert (=> b!148996 (= e!88775 (= (_1!1482 (v!13594 lt!43293)) (apply!327 lt!42996 (+ 0 1))))))

(declare-fun b!148997 () Bool)

(declare-fun e!88780 () BalanceConc!1428)

(assert (=> b!148997 (= e!88780 (BalanceConc!1429 Empty!710))))

(declare-fun bm!5940 () Bool)

(assert (=> bm!5940 (= call!5944 (apply!327 lt!42996 (+ 0 1)))))

(declare-fun bm!5941 () Bool)

(assert (=> bm!5941 (= call!5946 (++!547 call!5947 (ite c!30266 lt!43300 call!5945)))))

(declare-fun b!148999 () Bool)

(assert (=> b!148999 (= e!88777 (++!547 call!5946 lt!43300))))

(declare-fun bm!5942 () Bool)

(assert (=> bm!5942 (= call!5945 (charsOf!99 (ite c!30267 separatorToken!170 call!5948)))))

(declare-fun b!149000 () Bool)

(declare-fun e!88779 () Bool)

(assert (=> b!149000 (= e!88779 (<= (+ 0 1) (size!2214 lt!42996)))))

(declare-fun bm!5943 () Bool)

(assert (=> bm!5943 (= call!5948 call!5944)))

(declare-fun lt!43303 () BalanceConc!1428)

(assert (=> d!35598 (= (list!894 lt!43303) (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (dropList!61 lt!42996 (+ 0 1)) separatorToken!170))))

(assert (=> d!35598 (= lt!43303 e!88780)))

(declare-fun c!30268 () Bool)

(assert (=> d!35598 (= c!30268 (>= (+ 0 1) (size!2214 lt!42996)))))

(declare-fun lt!43294 () Unit!1932)

(assert (=> d!35598 (= lt!43294 (lemmaContentSubsetPreservesForall!5 (list!897 lt!42996) (dropList!61 lt!42996 (+ 0 1)) lambda!3762))))

(assert (=> d!35598 e!88779))

(declare-fun res!68437 () Bool)

(assert (=> d!35598 (=> (not res!68437) (not e!88779))))

(assert (=> d!35598 (= res!68437 (>= (+ 0 1) 0))))

(assert (=> d!35598 (= (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 (+ 0 1)) lt!43303)))

(assert (=> b!148998 (= e!88780 e!88778)))

(declare-fun lt!43297 () List!2585)

(assert (=> b!148998 (= lt!43297 (list!897 lt!42996))))

(declare-fun lt!43296 () Unit!1932)

(assert (=> b!148998 (= lt!43296 (lemmaDropApply!101 lt!43297 (+ 0 1)))))

(assert (=> b!148998 (= (head!575 (drop!114 lt!43297 (+ 0 1))) (apply!328 lt!43297 (+ 0 1)))))

(declare-fun lt!43298 () Unit!1932)

(assert (=> b!148998 (= lt!43298 lt!43296)))

(declare-fun lt!43292 () List!2585)

(assert (=> b!148998 (= lt!43292 (list!897 lt!42996))))

(declare-fun lt!43295 () Unit!1932)

(assert (=> b!148998 (= lt!43295 (lemmaDropTail!93 lt!43292 (+ 0 1)))))

(assert (=> b!148998 (= (tail!315 (drop!114 lt!43292 (+ 0 1))) (drop!114 lt!43292 (+ 0 1 1)))))

(declare-fun lt!43305 () Unit!1932)

(assert (=> b!148998 (= lt!43305 lt!43295)))

(declare-fun lt!43301 () Unit!1932)

(assert (=> b!148998 (= lt!43301 (forallContained!45 (list!897 lt!42996) lambda!3763 (apply!327 lt!42996 (+ 0 1))))))

(assert (=> b!148998 (= lt!43300 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!148998 (= lt!43293 (maxPrefixZipperSequence!61 thiss!17480 rules!1920 (++!547 (charsOf!99 (apply!327 lt!42996 (+ 0 1))) lt!43300)))))

(declare-fun res!68435 () Bool)

(assert (=> b!148998 (= res!68435 (is-Some!225 lt!43293))))

(assert (=> b!148998 (=> (not res!68435) (not e!88775))))

(assert (=> b!148998 (= c!30266 e!88775)))

(assert (= (and d!35598 res!68437) b!149000))

(assert (= (and d!35598 c!30268) b!148997))

(assert (= (and d!35598 (not c!30268)) b!148998))

(assert (= (and b!148998 res!68435) b!148996))

(assert (= (and b!148998 c!30266) b!148995))

(assert (= (and b!148998 (not c!30266)) b!148993))

(assert (= (and b!148993 res!68436) b!148994))

(assert (= (and b!148993 c!30267) b!148999))

(assert (= (and b!148993 (not c!30267)) b!148992))

(assert (= (or b!148999 b!148992) bm!5943))

(assert (= (or b!148999 b!148992) bm!5942))

(assert (= (or b!148995 bm!5943 b!148994) bm!5940))

(assert (= (or b!148995 b!148999) bm!5939))

(assert (= (or b!148995 b!148999) bm!5941))

(declare-fun m!132419 () Bool)

(assert (=> d!35598 m!132419))

(assert (=> d!35598 m!132419))

(declare-fun m!132421 () Bool)

(assert (=> d!35598 m!132421))

(declare-fun m!132423 () Bool)

(assert (=> d!35598 m!132423))

(assert (=> d!35598 m!131679))

(assert (=> d!35598 m!131681))

(assert (=> d!35598 m!131679))

(assert (=> d!35598 m!132419))

(declare-fun m!132425 () Bool)

(assert (=> d!35598 m!132425))

(declare-fun m!132427 () Bool)

(assert (=> bm!5940 m!132427))

(declare-fun m!132429 () Bool)

(assert (=> b!148999 m!132429))

(declare-fun m!132431 () Bool)

(assert (=> bm!5941 m!132431))

(declare-fun m!132433 () Bool)

(assert (=> bm!5942 m!132433))

(assert (=> b!149000 m!131681))

(assert (=> b!148998 m!132427))

(declare-fun m!132435 () Bool)

(assert (=> b!148998 m!132435))

(declare-fun m!132437 () Bool)

(assert (=> b!148998 m!132437))

(declare-fun m!132439 () Bool)

(assert (=> b!148998 m!132439))

(assert (=> b!148998 m!132427))

(declare-fun m!132441 () Bool)

(assert (=> b!148998 m!132441))

(assert (=> b!148998 m!132441))

(declare-fun m!132443 () Bool)

(assert (=> b!148998 m!132443))

(assert (=> b!148998 m!131679))

(assert (=> b!148998 m!132435))

(declare-fun m!132445 () Bool)

(assert (=> b!148998 m!132445))

(declare-fun m!132447 () Bool)

(assert (=> b!148998 m!132447))

(declare-fun m!132449 () Bool)

(assert (=> b!148998 m!132449))

(declare-fun m!132451 () Bool)

(assert (=> b!148998 m!132451))

(declare-fun m!132453 () Bool)

(assert (=> b!148998 m!132453))

(declare-fun m!132455 () Bool)

(assert (=> b!148998 m!132455))

(assert (=> b!148998 m!132449))

(assert (=> b!148998 m!132445))

(declare-fun m!132457 () Bool)

(assert (=> b!148998 m!132457))

(assert (=> b!148998 m!131679))

(assert (=> b!148998 m!132427))

(declare-fun m!132459 () Bool)

(assert (=> b!148998 m!132459))

(declare-fun m!132461 () Bool)

(assert (=> b!148992 m!132461))

(declare-fun m!132463 () Bool)

(assert (=> b!148992 m!132463))

(declare-fun m!132465 () Bool)

(assert (=> b!148992 m!132465))

(assert (=> b!148992 m!132463))

(declare-fun m!132467 () Bool)

(assert (=> b!148992 m!132467))

(assert (=> b!148992 m!132463))

(declare-fun m!132469 () Bool)

(assert (=> b!148992 m!132469))

(assert (=> b!148992 m!132461))

(assert (=> b!148992 m!132467))

(declare-fun m!132471 () Bool)

(assert (=> b!148992 m!132471))

(assert (=> b!148996 m!132427))

(declare-fun m!132473 () Bool)

(assert (=> bm!5939 m!132473))

(assert (=> b!148415 d!35598))

(declare-fun b!149004 () Bool)

(declare-fun e!88787 () List!2585)

(assert (=> b!149004 (= e!88787 Nil!2575)))

(declare-fun b!149005 () Bool)

(declare-fun e!88785 () Int)

(assert (=> b!149005 (= e!88785 0)))

(declare-fun b!149006 () Bool)

(declare-fun e!88788 () List!2585)

(assert (=> b!149006 (= e!88787 e!88788)))

(declare-fun c!30269 () Bool)

(assert (=> b!149006 (= c!30269 (<= 0 0))))

(declare-fun b!149007 () Bool)

(declare-fun e!88786 () Int)

(assert (=> b!149007 (= e!88786 e!88785)))

(declare-fun c!30271 () Bool)

(declare-fun call!5949 () Int)

(assert (=> b!149007 (= c!30271 (>= 0 call!5949))))

(declare-fun bm!5944 () Bool)

(assert (=> bm!5944 (= call!5949 (size!2218 lt!43044))))

(declare-fun b!149008 () Bool)

(assert (=> b!149008 (= e!88786 call!5949)))

(declare-fun b!149009 () Bool)

(assert (=> b!149009 (= e!88788 lt!43044)))

(declare-fun b!149010 () Bool)

(assert (=> b!149010 (= e!88785 (- call!5949 0))))

(declare-fun d!35600 () Bool)

(declare-fun e!88784 () Bool)

(assert (=> d!35600 e!88784))

(declare-fun res!68438 () Bool)

(assert (=> d!35600 (=> (not res!68438) (not e!88784))))

(declare-fun lt!43306 () List!2585)

(assert (=> d!35600 (= res!68438 (set.subset (content!359 lt!43306) (content!359 lt!43044)))))

(assert (=> d!35600 (= lt!43306 e!88787)))

(declare-fun c!30270 () Bool)

(assert (=> d!35600 (= c!30270 (is-Nil!2575 lt!43044))))

(assert (=> d!35600 (= (drop!114 lt!43044 0) lt!43306)))

(declare-fun b!149011 () Bool)

(assert (=> b!149011 (= e!88788 (drop!114 (t!24457 lt!43044) (- 0 1)))))

(declare-fun b!149012 () Bool)

(assert (=> b!149012 (= e!88784 (= (size!2218 lt!43306) e!88786))))

(declare-fun c!30272 () Bool)

(assert (=> b!149012 (= c!30272 (<= 0 0))))

(assert (= (and d!35600 c!30270) b!149004))

(assert (= (and d!35600 (not c!30270)) b!149006))

(assert (= (and b!149006 c!30269) b!149009))

(assert (= (and b!149006 (not c!30269)) b!149011))

(assert (= (and d!35600 res!68438) b!149012))

(assert (= (and b!149012 c!30272) b!149008))

(assert (= (and b!149012 (not c!30272)) b!149007))

(assert (= (and b!149007 c!30271) b!149005))

(assert (= (and b!149007 (not c!30271)) b!149010))

(assert (= (or b!149008 b!149007 b!149010) bm!5944))

(declare-fun m!132475 () Bool)

(assert (=> bm!5944 m!132475))

(declare-fun m!132477 () Bool)

(assert (=> d!35600 m!132477))

(declare-fun m!132479 () Bool)

(assert (=> d!35600 m!132479))

(declare-fun m!132481 () Bool)

(assert (=> b!149011 m!132481))

(declare-fun m!132483 () Bool)

(assert (=> b!149012 m!132483))

(assert (=> b!148415 d!35600))

(declare-fun d!35602 () Bool)

(assert (=> d!35602 (= (head!575 (drop!114 lt!43044 0)) (h!7972 (drop!114 lt!43044 0)))))

(assert (=> b!148415 d!35602))

(declare-fun d!35604 () Bool)

(assert (=> d!35604 (dynLambda!886 lambda!3728 (apply!327 lt!42996 0))))

(declare-fun lt!43307 () Unit!1932)

(assert (=> d!35604 (= lt!43307 (choose!1737 (list!897 lt!42996) lambda!3728 (apply!327 lt!42996 0)))))

(declare-fun e!88789 () Bool)

(assert (=> d!35604 e!88789))

(declare-fun res!68439 () Bool)

(assert (=> d!35604 (=> (not res!68439) (not e!88789))))

(assert (=> d!35604 (= res!68439 (forall!424 (list!897 lt!42996) lambda!3728))))

(assert (=> d!35604 (= (forallContained!45 (list!897 lt!42996) lambda!3728 (apply!327 lt!42996 0)) lt!43307)))

(declare-fun b!149013 () Bool)

(assert (=> b!149013 (= e!88789 (contains!409 (list!897 lt!42996) (apply!327 lt!42996 0)))))

(assert (= (and d!35604 res!68439) b!149013))

(declare-fun b_lambda!2623 () Bool)

(assert (=> (not b_lambda!2623) (not d!35604)))

(assert (=> d!35604 m!131685))

(declare-fun m!132485 () Bool)

(assert (=> d!35604 m!132485))

(assert (=> d!35604 m!131679))

(assert (=> d!35604 m!131685))

(declare-fun m!132487 () Bool)

(assert (=> d!35604 m!132487))

(assert (=> d!35604 m!131679))

(declare-fun m!132489 () Bool)

(assert (=> d!35604 m!132489))

(assert (=> b!149013 m!131679))

(assert (=> b!149013 m!131685))

(declare-fun m!132491 () Bool)

(assert (=> b!149013 m!132491))

(assert (=> b!148415 d!35604))

(declare-fun d!35606 () Bool)

(declare-fun lt!43324 () Token!632)

(assert (=> d!35606 (= lt!43324 (apply!328 (list!897 lt!42996) 0))))

(declare-fun apply!332 (Conc!711 Int) Token!632)

(assert (=> d!35606 (= lt!43324 (apply!332 (c!30147 lt!42996) 0))))

(declare-fun e!88796 () Bool)

(assert (=> d!35606 e!88796))

(declare-fun res!68444 () Bool)

(assert (=> d!35606 (=> (not res!68444) (not e!88796))))

(assert (=> d!35606 (= res!68444 (<= 0 0))))

(assert (=> d!35606 (= (apply!327 lt!42996 0) lt!43324)))

(declare-fun b!149022 () Bool)

(assert (=> b!149022 (= e!88796 (< 0 (size!2214 lt!42996)))))

(assert (= (and d!35606 res!68444) b!149022))

(assert (=> d!35606 m!131679))

(assert (=> d!35606 m!131679))

(declare-fun m!132493 () Bool)

(assert (=> d!35606 m!132493))

(declare-fun m!132495 () Bool)

(assert (=> d!35606 m!132495))

(assert (=> b!149022 m!131681))

(assert (=> b!148415 d!35606))

(declare-fun bm!5947 () Bool)

(declare-fun call!5952 () Option!226)

(declare-fun maxPrefixOneRuleZipperSequence!21 (LexerInterface!330 Rule!688 BalanceConc!1428) Option!226)

(assert (=> bm!5947 (= call!5952 (maxPrefixOneRuleZipperSequence!21 thiss!17480 (h!7973 rules!1920) (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))

(declare-fun d!35608 () Bool)

(declare-fun e!88812 () Bool)

(assert (=> d!35608 e!88812))

(declare-fun res!68458 () Bool)

(assert (=> d!35608 (=> (not res!68458) (not e!88812))))

(declare-fun lt!43349 () Option!226)

(declare-fun isDefined!93 (Option!226) Bool)

(declare-fun maxPrefixZipper!20 (LexerInterface!330 List!2586 List!2583) Option!227)

(assert (=> d!35608 (= res!68458 (= (isDefined!93 lt!43349) (isDefined!91 (maxPrefixZipper!20 thiss!17480 rules!1920 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047))))))))

(declare-fun e!88815 () Option!226)

(assert (=> d!35608 (= lt!43349 e!88815)))

(declare-fun c!30278 () Bool)

(assert (=> d!35608 (= c!30278 (and (is-Cons!2576 rules!1920) (is-Nil!2576 (t!24458 rules!1920))))))

(declare-fun lt!43346 () Unit!1932)

(declare-fun lt!43350 () Unit!1932)

(assert (=> d!35608 (= lt!43346 lt!43350)))

(declare-fun lt!43348 () List!2583)

(declare-fun lt!43347 () List!2583)

(assert (=> d!35608 (isPrefix!208 lt!43348 lt!43347)))

(assert (=> d!35608 (= lt!43350 (lemmaIsPrefixRefl!116 lt!43348 lt!43347))))

(assert (=> d!35608 (= lt!43347 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))

(assert (=> d!35608 (= lt!43348 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))

(assert (=> d!35608 (rulesValidInductive!93 thiss!17480 rules!1920)))

(assert (=> d!35608 (= (maxPrefixZipperSequence!61 thiss!17480 rules!1920 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)) lt!43349)))

(declare-fun b!149042 () Bool)

(declare-fun e!88814 () Bool)

(declare-fun get!699 (Option!226) tuple2!2532)

(assert (=> b!149042 (= e!88814 (= (list!894 (_2!1482 (get!699 lt!43349))) (_2!1483 (get!698 (maxPrefixZipper!20 thiss!17480 rules!1920 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))))))

(declare-fun b!149043 () Bool)

(assert (=> b!149043 (= e!88815 call!5952)))

(declare-fun b!149044 () Bool)

(declare-fun e!88813 () Bool)

(assert (=> b!149044 (= e!88813 e!88814)))

(declare-fun res!68460 () Bool)

(assert (=> b!149044 (=> (not res!68460) (not e!88814))))

(assert (=> b!149044 (= res!68460 (= (_1!1482 (get!699 lt!43349)) (_1!1483 (get!698 (maxPrefixZipper!20 thiss!17480 rules!1920 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))))))

(declare-fun b!149045 () Bool)

(declare-fun e!88816 () Bool)

(assert (=> b!149045 (= e!88812 e!88816)))

(declare-fun res!68459 () Bool)

(assert (=> b!149045 (=> res!68459 e!88816)))

(assert (=> b!149045 (= res!68459 (not (isDefined!93 lt!43349)))))

(declare-fun b!149046 () Bool)

(declare-fun lt!43352 () Option!226)

(declare-fun lt!43351 () Option!226)

(assert (=> b!149046 (= e!88815 (ite (and (is-None!225 lt!43352) (is-None!225 lt!43351)) None!225 (ite (is-None!225 lt!43351) lt!43352 (ite (is-None!225 lt!43352) lt!43351 (ite (>= (size!2212 (_1!1482 (v!13594 lt!43352))) (size!2212 (_1!1482 (v!13594 lt!43351)))) lt!43352 lt!43351)))))))

(assert (=> b!149046 (= lt!43352 call!5952)))

(assert (=> b!149046 (= lt!43351 (maxPrefixZipperSequence!61 thiss!17480 (t!24458 rules!1920) (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))

(declare-fun b!149047 () Bool)

(declare-fun res!68462 () Bool)

(assert (=> b!149047 (=> (not res!68462) (not e!88812))))

(assert (=> b!149047 (= res!68462 e!88813)))

(declare-fun res!68461 () Bool)

(assert (=> b!149047 (=> res!68461 e!88813)))

(assert (=> b!149047 (= res!68461 (not (isDefined!93 lt!43349)))))

(declare-fun b!149048 () Bool)

(declare-fun e!88811 () Bool)

(assert (=> b!149048 (= e!88816 e!88811)))

(declare-fun res!68463 () Bool)

(assert (=> b!149048 (=> (not res!68463) (not e!88811))))

(assert (=> b!149048 (= res!68463 (= (_1!1482 (get!699 lt!43349)) (_1!1483 (get!698 (maxPrefix!102 thiss!17480 rules!1920 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))))))

(declare-fun b!149049 () Bool)

(assert (=> b!149049 (= e!88811 (= (list!894 (_2!1482 (get!699 lt!43349))) (_2!1483 (get!698 (maxPrefix!102 thiss!17480 rules!1920 (list!894 (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047)))))))))

(assert (= (and d!35608 c!30278) b!149043))

(assert (= (and d!35608 (not c!30278)) b!149046))

(assert (= (or b!149043 b!149046) bm!5947))

(assert (= (and d!35608 res!68458) b!149047))

(assert (= (and b!149047 (not res!68461)) b!149044))

(assert (= (and b!149044 res!68460) b!149042))

(assert (= (and b!149047 res!68462) b!149045))

(assert (= (and b!149045 (not res!68459)) b!149048))

(assert (= (and b!149048 res!68463) b!149049))

(declare-fun m!132531 () Bool)

(assert (=> b!149044 m!132531))

(assert (=> b!149044 m!131703))

(declare-fun m!132533 () Bool)

(assert (=> b!149044 m!132533))

(assert (=> b!149044 m!132533))

(declare-fun m!132535 () Bool)

(assert (=> b!149044 m!132535))

(assert (=> b!149044 m!132535))

(declare-fun m!132537 () Bool)

(assert (=> b!149044 m!132537))

(declare-fun m!132539 () Bool)

(assert (=> b!149049 m!132539))

(assert (=> b!149049 m!132531))

(assert (=> b!149049 m!132533))

(declare-fun m!132541 () Bool)

(assert (=> b!149049 m!132541))

(assert (=> b!149049 m!131703))

(assert (=> b!149049 m!132533))

(assert (=> b!149049 m!132541))

(declare-fun m!132543 () Bool)

(assert (=> b!149049 m!132543))

(assert (=> bm!5947 m!131703))

(declare-fun m!132545 () Bool)

(assert (=> bm!5947 m!132545))

(assert (=> b!149048 m!132531))

(assert (=> b!149048 m!131703))

(assert (=> b!149048 m!132533))

(assert (=> b!149048 m!132533))

(assert (=> b!149048 m!132541))

(assert (=> b!149048 m!132541))

(assert (=> b!149048 m!132543))

(declare-fun m!132547 () Bool)

(assert (=> b!149045 m!132547))

(assert (=> b!149042 m!132539))

(assert (=> b!149042 m!132531))

(assert (=> b!149042 m!131703))

(assert (=> b!149042 m!132533))

(assert (=> b!149042 m!132535))

(assert (=> b!149042 m!132537))

(assert (=> b!149042 m!132533))

(assert (=> b!149042 m!132535))

(assert (=> b!149046 m!131703))

(declare-fun m!132549 () Bool)

(assert (=> b!149046 m!132549))

(assert (=> d!35608 m!132547))

(assert (=> d!35608 m!132387))

(declare-fun m!132551 () Bool)

(assert (=> d!35608 m!132551))

(declare-fun m!132553 () Bool)

(assert (=> d!35608 m!132553))

(assert (=> d!35608 m!131703))

(assert (=> d!35608 m!132533))

(assert (=> d!35608 m!132535))

(declare-fun m!132555 () Bool)

(assert (=> d!35608 m!132555))

(assert (=> d!35608 m!132533))

(assert (=> d!35608 m!132535))

(assert (=> b!149047 m!132547))

(assert (=> b!148415 d!35608))

(declare-fun d!35612 () Bool)

(declare-fun lt!43353 () BalanceConc!1428)

(assert (=> d!35612 (= (list!894 lt!43353) (originalCharacters!487 (apply!327 lt!42996 0)))))

(assert (=> d!35612 (= lt!43353 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0)))) (value!16971 (apply!327 lt!42996 0))))))

(assert (=> d!35612 (= (charsOf!99 (apply!327 lt!42996 0)) lt!43353)))

(declare-fun b_lambda!2625 () Bool)

(assert (=> (not b_lambda!2625) (not d!35612)))

(declare-fun t!24555 () Bool)

(declare-fun tb!4897 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24555) tb!4897))

(declare-fun b!149050 () Bool)

(declare-fun e!88817 () Bool)

(declare-fun tp!77946 () Bool)

(assert (=> b!149050 (= e!88817 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0)))) (value!16971 (apply!327 lt!42996 0))))) tp!77946))))

(declare-fun result!7308 () Bool)

(assert (=> tb!4897 (= result!7308 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0)))) (value!16971 (apply!327 lt!42996 0)))) e!88817))))

(assert (= tb!4897 b!149050))

(declare-fun m!132557 () Bool)

(assert (=> b!149050 m!132557))

(declare-fun m!132559 () Bool)

(assert (=> tb!4897 m!132559))

(assert (=> d!35612 t!24555))

(declare-fun b_and!8391 () Bool)

(assert (= b_and!8385 (and (=> t!24555 result!7308) b_and!8391)))

(declare-fun t!24557 () Bool)

(declare-fun tb!4899 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24557) tb!4899))

(declare-fun result!7310 () Bool)

(assert (= result!7310 result!7308))

(assert (=> d!35612 t!24557))

(declare-fun b_and!8393 () Bool)

(assert (= b_and!8381 (and (=> t!24557 result!7310) b_and!8393)))

(declare-fun t!24559 () Bool)

(declare-fun tb!4901 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24559) tb!4901))

(declare-fun result!7312 () Bool)

(assert (= result!7312 result!7308))

(assert (=> d!35612 t!24559))

(declare-fun b_and!8395 () Bool)

(assert (= b_and!8389 (and (=> t!24559 result!7312) b_and!8395)))

(declare-fun tb!4903 () Bool)

(declare-fun t!24561 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24561) tb!4903))

(declare-fun result!7314 () Bool)

(assert (= result!7314 result!7308))

(assert (=> d!35612 t!24561))

(declare-fun b_and!8397 () Bool)

(assert (= b_and!8383 (and (=> t!24561 result!7314) b_and!8397)))

(declare-fun tb!4905 () Bool)

(declare-fun t!24563 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24563) tb!4905))

(declare-fun result!7316 () Bool)

(assert (= result!7316 result!7308))

(assert (=> d!35612 t!24563))

(declare-fun b_and!8399 () Bool)

(assert (= b_and!8387 (and (=> t!24563 result!7316) b_and!8399)))

(declare-fun m!132561 () Bool)

(assert (=> d!35612 m!132561))

(declare-fun m!132563 () Bool)

(assert (=> d!35612 m!132563))

(assert (=> b!148415 d!35612))

(declare-fun d!35614 () Bool)

(assert (=> d!35614 (= (head!575 (drop!114 lt!43044 0)) (apply!328 lt!43044 0))))

(declare-fun lt!43356 () Unit!1932)

(declare-fun choose!1739 (List!2585 Int) Unit!1932)

(assert (=> d!35614 (= lt!43356 (choose!1739 lt!43044 0))))

(declare-fun e!88820 () Bool)

(assert (=> d!35614 e!88820))

(declare-fun res!68466 () Bool)

(assert (=> d!35614 (=> (not res!68466) (not e!88820))))

(assert (=> d!35614 (= res!68466 (>= 0 0))))

(assert (=> d!35614 (= (lemmaDropApply!101 lt!43044 0) lt!43356)))

(declare-fun b!149053 () Bool)

(assert (=> b!149053 (= e!88820 (< 0 (size!2218 lt!43044)))))

(assert (= (and d!35614 res!68466) b!149053))

(assert (=> d!35614 m!131699))

(assert (=> d!35614 m!131699))

(assert (=> d!35614 m!131701))

(assert (=> d!35614 m!131695))

(declare-fun m!132565 () Bool)

(assert (=> d!35614 m!132565))

(assert (=> b!149053 m!132475))

(assert (=> b!148415 d!35614))

(declare-fun d!35616 () Bool)

(declare-fun lt!43359 () Token!632)

(assert (=> d!35616 (contains!409 lt!43044 lt!43359)))

(declare-fun e!88825 () Token!632)

(assert (=> d!35616 (= lt!43359 e!88825)))

(declare-fun c!30281 () Bool)

(assert (=> d!35616 (= c!30281 (= 0 0))))

(declare-fun e!88826 () Bool)

(assert (=> d!35616 e!88826))

(declare-fun res!68469 () Bool)

(assert (=> d!35616 (=> (not res!68469) (not e!88826))))

(assert (=> d!35616 (= res!68469 (<= 0 0))))

(assert (=> d!35616 (= (apply!328 lt!43044 0) lt!43359)))

(declare-fun b!149060 () Bool)

(assert (=> b!149060 (= e!88826 (< 0 (size!2218 lt!43044)))))

(declare-fun b!149061 () Bool)

(assert (=> b!149061 (= e!88825 (head!575 lt!43044))))

(declare-fun b!149062 () Bool)

(assert (=> b!149062 (= e!88825 (apply!328 (tail!315 lt!43044) (- 0 1)))))

(assert (= (and d!35616 res!68469) b!149060))

(assert (= (and d!35616 c!30281) b!149061))

(assert (= (and d!35616 (not c!30281)) b!149062))

(declare-fun m!132567 () Bool)

(assert (=> d!35616 m!132567))

(assert (=> b!149060 m!132475))

(declare-fun m!132569 () Bool)

(assert (=> b!149061 m!132569))

(declare-fun m!132571 () Bool)

(assert (=> b!149062 m!132571))

(assert (=> b!149062 m!132571))

(declare-fun m!132573 () Bool)

(assert (=> b!149062 m!132573))

(assert (=> b!148415 d!35616))

(declare-fun d!35618 () Bool)

(assert (=> d!35618 (= (tail!315 (drop!114 lt!43039 0)) (t!24457 (drop!114 lt!43039 0)))))

(assert (=> b!148415 d!35618))

(assert (=> b!148415 d!35538))

(declare-fun b!149072 () Bool)

(declare-fun res!68481 () Bool)

(declare-fun e!88829 () Bool)

(assert (=> b!149072 (=> (not res!68481) (not e!88829))))

(declare-fun height!73 (Conc!710) Int)

(declare-fun ++!551 (Conc!710 Conc!710) Conc!710)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!149072 (= res!68481 (<= (height!73 (++!551 (c!30145 (charsOf!99 (apply!327 lt!42996 0))) (c!30145 lt!43047))) (+ (max!0 (height!73 (c!30145 (charsOf!99 (apply!327 lt!42996 0)))) (height!73 (c!30145 lt!43047))) 1)))))

(declare-fun d!35620 () Bool)

(assert (=> d!35620 e!88829))

(declare-fun res!68478 () Bool)

(assert (=> d!35620 (=> (not res!68478) (not e!88829))))

(declare-fun appendAssocInst!14 (Conc!710 Conc!710) Bool)

(assert (=> d!35620 (= res!68478 (appendAssocInst!14 (c!30145 (charsOf!99 (apply!327 lt!42996 0))) (c!30145 lt!43047)))))

(declare-fun lt!43362 () BalanceConc!1428)

(assert (=> d!35620 (= lt!43362 (BalanceConc!1429 (++!551 (c!30145 (charsOf!99 (apply!327 lt!42996 0))) (c!30145 lt!43047))))))

(assert (=> d!35620 (= (++!547 (charsOf!99 (apply!327 lt!42996 0)) lt!43047) lt!43362)))

(declare-fun b!149071 () Bool)

(declare-fun res!68479 () Bool)

(assert (=> b!149071 (=> (not res!68479) (not e!88829))))

(assert (=> b!149071 (= res!68479 (isBalanced!201 (++!551 (c!30145 (charsOf!99 (apply!327 lt!42996 0))) (c!30145 lt!43047))))))

(declare-fun b!149074 () Bool)

(assert (=> b!149074 (= e!88829 (= (list!894 lt!43362) (++!548 (list!894 (charsOf!99 (apply!327 lt!42996 0))) (list!894 lt!43047))))))

(declare-fun b!149073 () Bool)

(declare-fun res!68480 () Bool)

(assert (=> b!149073 (=> (not res!68480) (not e!88829))))

(assert (=> b!149073 (= res!68480 (>= (height!73 (++!551 (c!30145 (charsOf!99 (apply!327 lt!42996 0))) (c!30145 lt!43047))) (max!0 (height!73 (c!30145 (charsOf!99 (apply!327 lt!42996 0)))) (height!73 (c!30145 lt!43047)))))))

(assert (= (and d!35620 res!68478) b!149071))

(assert (= (and b!149071 res!68479) b!149072))

(assert (= (and b!149072 res!68481) b!149073))

(assert (= (and b!149073 res!68480) b!149074))

(declare-fun m!132575 () Bool)

(assert (=> b!149074 m!132575))

(assert (=> b!149074 m!131693))

(declare-fun m!132577 () Bool)

(assert (=> b!149074 m!132577))

(assert (=> b!149074 m!131725))

(assert (=> b!149074 m!132577))

(assert (=> b!149074 m!131725))

(declare-fun m!132579 () Bool)

(assert (=> b!149074 m!132579))

(declare-fun m!132581 () Bool)

(assert (=> d!35620 m!132581))

(declare-fun m!132583 () Bool)

(assert (=> d!35620 m!132583))

(assert (=> b!149071 m!132583))

(assert (=> b!149071 m!132583))

(declare-fun m!132585 () Bool)

(assert (=> b!149071 m!132585))

(assert (=> b!149072 m!132583))

(declare-fun m!132587 () Bool)

(assert (=> b!149072 m!132587))

(declare-fun m!132589 () Bool)

(assert (=> b!149072 m!132589))

(declare-fun m!132591 () Bool)

(assert (=> b!149072 m!132591))

(assert (=> b!149072 m!132589))

(declare-fun m!132593 () Bool)

(assert (=> b!149072 m!132593))

(assert (=> b!149072 m!132591))

(assert (=> b!149072 m!132583))

(assert (=> b!149073 m!132583))

(assert (=> b!149073 m!132587))

(assert (=> b!149073 m!132589))

(assert (=> b!149073 m!132591))

(assert (=> b!149073 m!132589))

(assert (=> b!149073 m!132593))

(assert (=> b!149073 m!132591))

(assert (=> b!149073 m!132583))

(assert (=> b!148415 d!35620))

(declare-fun b!149085 () Bool)

(declare-fun e!88835 () List!2583)

(declare-fun list!901 (IArray!1421) List!2583)

(assert (=> b!149085 (= e!88835 (list!901 (xs!3305 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0)))))))

(declare-fun b!149084 () Bool)

(declare-fun e!88834 () List!2583)

(assert (=> b!149084 (= e!88834 e!88835)))

(declare-fun c!30290 () Bool)

(assert (=> b!149084 (= c!30290 (is-Leaf!1272 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0))))))

(declare-fun d!35622 () Bool)

(declare-fun c!30289 () Bool)

(assert (=> d!35622 (= c!30289 (is-Empty!710 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0))))))

(assert (=> d!35622 (= (list!896 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0))) e!88834)))

(declare-fun b!149086 () Bool)

(assert (=> b!149086 (= e!88835 (++!548 (list!896 (left!1943 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0)))) (list!896 (right!2273 (c!30145 (printWithSeparatorTokenWhenNeededRec!13 thiss!17480 rules!1920 lt!42996 separatorToken!170 0))))))))

(declare-fun b!149083 () Bool)

(assert (=> b!149083 (= e!88834 Nil!2573)))

(assert (= (and d!35622 c!30289) b!149083))

(assert (= (and d!35622 (not c!30289)) b!149084))

(assert (= (and b!149084 c!30290) b!149085))

(assert (= (and b!149084 (not c!30290)) b!149086))

(declare-fun m!132595 () Bool)

(assert (=> b!149085 m!132595))

(declare-fun m!132597 () Bool)

(assert (=> b!149086 m!132597))

(declare-fun m!132599 () Bool)

(assert (=> b!149086 m!132599))

(assert (=> b!149086 m!132597))

(assert (=> b!149086 m!132599))

(declare-fun m!132601 () Bool)

(assert (=> b!149086 m!132601))

(assert (=> d!35406 d!35622))

(declare-fun d!35624 () Bool)

(declare-fun lt!43365 () Int)

(assert (=> d!35624 (>= lt!43365 0)))

(declare-fun e!88838 () Int)

(assert (=> d!35624 (= lt!43365 e!88838)))

(declare-fun c!30293 () Bool)

(assert (=> d!35624 (= c!30293 (is-Nil!2573 (originalCharacters!487 separatorToken!170)))))

(assert (=> d!35624 (= (size!2215 (originalCharacters!487 separatorToken!170)) lt!43365)))

(declare-fun b!149091 () Bool)

(assert (=> b!149091 (= e!88838 0)))

(declare-fun b!149092 () Bool)

(assert (=> b!149092 (= e!88838 (+ 1 (size!2215 (t!24455 (originalCharacters!487 separatorToken!170)))))))

(assert (= (and d!35624 c!30293) b!149091))

(assert (= (and d!35624 (not c!30293)) b!149092))

(declare-fun m!132603 () Bool)

(assert (=> b!149092 m!132603))

(assert (=> b!148593 d!35624))

(assert (=> bm!5875 d!35606))

(declare-fun d!35626 () Bool)

(assert (=> d!35626 true))

(declare-fun order!1277 () Int)

(declare-fun lambda!3766 () Int)

(declare-fun dynLambda!893 (Int Int) Int)

(assert (=> d!35626 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (dynLambda!893 order!1277 lambda!3766))))

(declare-fun Forall2!95 (Int) Bool)

(assert (=> d!35626 (= (equivClasses!135 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (Forall2!95 lambda!3766))))

(declare-fun bs!13530 () Bool)

(assert (= bs!13530 d!35626))

(declare-fun m!132605 () Bool)

(assert (=> bs!13530 m!132605))

(assert (=> b!148594 d!35626))

(declare-fun d!35628 () Bool)

(declare-fun c!30296 () Bool)

(assert (=> d!35628 (= c!30296 (is-Node!710 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(declare-fun e!88845 () Bool)

(assert (=> d!35628 (= (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))) e!88845)))

(declare-fun b!149103 () Bool)

(declare-fun inv!3372 (Conc!710) Bool)

(assert (=> b!149103 (= e!88845 (inv!3372 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(declare-fun b!149104 () Bool)

(declare-fun e!88846 () Bool)

(assert (=> b!149104 (= e!88845 e!88846)))

(declare-fun res!68486 () Bool)

(assert (=> b!149104 (= res!68486 (not (is-Leaf!1272 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))))))

(assert (=> b!149104 (=> res!68486 e!88846)))

(declare-fun b!149105 () Bool)

(declare-fun inv!3373 (Conc!710) Bool)

(assert (=> b!149105 (= e!88846 (inv!3373 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(assert (= (and d!35628 c!30296) b!149103))

(assert (= (and d!35628 (not c!30296)) b!149104))

(assert (= (and b!149104 (not res!68486)) b!149105))

(declare-fun m!132607 () Bool)

(assert (=> b!149103 m!132607))

(declare-fun m!132609 () Bool)

(assert (=> b!149105 m!132609))

(assert (=> b!148509 d!35628))

(declare-fun d!35630 () Bool)

(assert (=> d!35630 (= (inv!17 (value!16971 separatorToken!170)) (= (charsToBigInt!1 (text!3710 (value!16971 separatorToken!170))) (value!16963 (value!16971 separatorToken!170))))))

(declare-fun bs!13531 () Bool)

(assert (= bs!13531 d!35630))

(declare-fun m!132611 () Bool)

(assert (=> bs!13531 m!132611))

(assert (=> b!148539 d!35630))

(declare-fun d!35632 () Bool)

(declare-fun res!68487 () Bool)

(declare-fun e!88847 () Bool)

(assert (=> d!35632 (=> res!68487 e!88847)))

(assert (=> d!35632 (= res!68487 (is-Nil!2575 (t!24457 tokens!465)))))

(assert (=> d!35632 (= (forall!424 (t!24457 tokens!465) lambda!3719) e!88847)))

(declare-fun b!149106 () Bool)

(declare-fun e!88848 () Bool)

(assert (=> b!149106 (= e!88847 e!88848)))

(declare-fun res!68488 () Bool)

(assert (=> b!149106 (=> (not res!68488) (not e!88848))))

(assert (=> b!149106 (= res!68488 (dynLambda!886 lambda!3719 (h!7972 (t!24457 tokens!465))))))

(declare-fun b!149107 () Bool)

(assert (=> b!149107 (= e!88848 (forall!424 (t!24457 (t!24457 tokens!465)) lambda!3719))))

(assert (= (and d!35632 (not res!68487)) b!149106))

(assert (= (and b!149106 res!68488) b!149107))

(declare-fun b_lambda!2627 () Bool)

(assert (=> (not b_lambda!2627) (not b!149106)))

(declare-fun m!132613 () Bool)

(assert (=> b!149106 m!132613))

(declare-fun m!132615 () Bool)

(assert (=> b!149107 m!132615))

(assert (=> b!148570 d!35632))

(declare-fun d!35634 () Bool)

(assert (=> d!35634 (= (list!894 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))) (list!896 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(declare-fun bs!13532 () Bool)

(assert (= bs!13532 d!35634))

(declare-fun m!132617 () Bool)

(assert (=> bs!13532 m!132617))

(assert (=> b!148548 d!35634))

(assert (=> b!148413 d!35606))

(declare-fun d!35636 () Bool)

(assert (=> d!35636 (= (inv!3361 (tag!622 (rule!951 (h!7972 (t!24457 tokens!465))))) (= (mod (str.len (value!16970 (tag!622 (rule!951 (h!7972 (t!24457 tokens!465)))))) 2) 0))))

(assert (=> b!148669 d!35636))

(declare-fun d!35638 () Bool)

(declare-fun res!68489 () Bool)

(declare-fun e!88849 () Bool)

(assert (=> d!35638 (=> (not res!68489) (not e!88849))))

(assert (=> d!35638 (= res!68489 (semiInverseModEq!152 (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toValue!1075 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))))))

(assert (=> d!35638 (= (inv!3364 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) e!88849)))

(declare-fun b!149108 () Bool)

(assert (=> b!149108 (= e!88849 (equivClasses!135 (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toValue!1075 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))))))

(assert (= (and d!35638 res!68489) b!149108))

(declare-fun m!132619 () Bool)

(assert (=> d!35638 m!132619))

(declare-fun m!132621 () Bool)

(assert (=> b!149108 m!132621))

(assert (=> b!148669 d!35638))

(declare-fun bs!13533 () Bool)

(declare-fun d!35640 () Bool)

(assert (= bs!13533 (and d!35640 d!35534)))

(declare-fun lambda!3767 () Int)

(assert (=> bs!13533 (= (and (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (h!7973 rules!1920)))) (= (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (h!7973 rules!1920))))) (= lambda!3767 lambda!3759))))

(assert (=> d!35640 true))

(assert (=> d!35640 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) (dynLambda!892 order!1275 lambda!3767))))

(assert (=> d!35640 true))

(assert (=> d!35640 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))) (dynLambda!892 order!1275 lambda!3767))))

(assert (=> d!35640 (= (semiInverseModEq!152 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))) (Forall!119 lambda!3767))))

(declare-fun bs!13534 () Bool)

(assert (= bs!13534 d!35640))

(declare-fun m!132623 () Bool)

(assert (=> bs!13534 m!132623))

(assert (=> d!35458 d!35640))

(declare-fun d!35642 () Bool)

(assert (=> d!35642 (= (inv!16 (value!16971 (h!7972 tokens!465))) (= (charsToInt!0 (text!3709 (value!16971 (h!7972 tokens!465)))) (value!16962 (value!16971 (h!7972 tokens!465)))))))

(declare-fun bs!13535 () Bool)

(assert (= bs!13535 d!35642))

(declare-fun m!132625 () Bool)

(assert (=> bs!13535 m!132625))

(assert (=> b!148575 d!35642))

(declare-fun d!35644 () Bool)

(declare-fun lt!43368 () Bool)

(assert (=> d!35644 (= lt!43368 (isEmpty!1009 (list!894 (_2!1484 lt!43145))))))

(declare-fun isEmpty!1014 (Conc!710) Bool)

(assert (=> d!35644 (= lt!43368 (isEmpty!1014 (c!30145 (_2!1484 lt!43145))))))

(assert (=> d!35644 (= (isEmpty!1010 (_2!1484 lt!43145)) lt!43368)))

(declare-fun bs!13536 () Bool)

(assert (= bs!13536 d!35644))

(declare-fun m!132627 () Bool)

(assert (=> bs!13536 m!132627))

(assert (=> bs!13536 m!132627))

(declare-fun m!132629 () Bool)

(assert (=> bs!13536 m!132629))

(declare-fun m!132631 () Bool)

(assert (=> bs!13536 m!132631))

(assert (=> b!148650 d!35644))

(declare-fun d!35646 () Bool)

(declare-fun lt!43369 () Token!632)

(assert (=> d!35646 (= lt!43369 (apply!328 (list!897 (_1!1484 lt!43145)) 0))))

(assert (=> d!35646 (= lt!43369 (apply!332 (c!30147 (_1!1484 lt!43145)) 0))))

(declare-fun e!88850 () Bool)

(assert (=> d!35646 e!88850))

(declare-fun res!68490 () Bool)

(assert (=> d!35646 (=> (not res!68490) (not e!88850))))

(assert (=> d!35646 (= res!68490 (<= 0 0))))

(assert (=> d!35646 (= (apply!327 (_1!1484 lt!43145) 0) lt!43369)))

(declare-fun b!149109 () Bool)

(assert (=> b!149109 (= e!88850 (< 0 (size!2214 (_1!1484 lt!43145))))))

(assert (= (and d!35646 res!68490) b!149109))

(declare-fun m!132633 () Bool)

(assert (=> d!35646 m!132633))

(assert (=> d!35646 m!132633))

(declare-fun m!132635 () Bool)

(assert (=> d!35646 m!132635))

(declare-fun m!132637 () Bool)

(assert (=> d!35646 m!132637))

(assert (=> b!149109 m!131965))

(assert (=> b!148649 d!35646))

(declare-fun lt!43370 () BalanceConc!1428)

(declare-fun d!35648 () Bool)

(assert (=> d!35648 (= (list!894 lt!43370) (originalCharacters!487 (ite c!30158 call!5879 call!5883)))))

(assert (=> d!35648 (= lt!43370 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883)))) (value!16971 (ite c!30158 call!5879 call!5883))))))

(assert (=> d!35648 (= (charsOf!99 (ite c!30158 call!5879 call!5883)) lt!43370)))

(declare-fun b_lambda!2629 () Bool)

(assert (=> (not b_lambda!2629) (not d!35648)))

(declare-fun t!24566 () Bool)

(declare-fun tb!4907 () Bool)

(assert (=> (and b!148327 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24566) tb!4907))

(declare-fun tp!77947 () Bool)

(declare-fun b!149110 () Bool)

(declare-fun e!88851 () Bool)

(assert (=> b!149110 (= e!88851 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883)))) (value!16971 (ite c!30158 call!5879 call!5883))))) tp!77947))))

(declare-fun result!7318 () Bool)

(assert (=> tb!4907 (= result!7318 (and (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883)))) (value!16971 (ite c!30158 call!5879 call!5883)))) e!88851))))

(assert (= tb!4907 b!149110))

(declare-fun m!132639 () Bool)

(assert (=> b!149110 m!132639))

(declare-fun m!132641 () Bool)

(assert (=> tb!4907 m!132641))

(assert (=> d!35648 t!24566))

(declare-fun b_and!8401 () Bool)

(assert (= b_and!8391 (and (=> t!24566 result!7318) b_and!8401)))

(declare-fun tb!4909 () Bool)

(declare-fun t!24568 () Bool)

(assert (=> (and b!148311 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24568) tb!4909))

(declare-fun result!7320 () Bool)

(assert (= result!7320 result!7318))

(assert (=> d!35648 t!24568))

(declare-fun b_and!8403 () Bool)

(assert (= b_and!8393 (and (=> t!24568 result!7320) b_and!8403)))

(declare-fun t!24570 () Bool)

(declare-fun tb!4911 () Bool)

(assert (=> (and b!148325 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24570) tb!4911))

(declare-fun result!7322 () Bool)

(assert (= result!7322 result!7318))

(assert (=> d!35648 t!24570))

(declare-fun b_and!8405 () Bool)

(assert (= b_and!8397 (and (=> t!24570 result!7322) b_and!8405)))

(declare-fun t!24572 () Bool)

(declare-fun tb!4913 () Bool)

(assert (=> (and b!148696 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24572) tb!4913))

(declare-fun result!7324 () Bool)

(assert (= result!7324 result!7318))

(assert (=> d!35648 t!24572))

(declare-fun b_and!8407 () Bool)

(assert (= b_and!8399 (and (=> t!24572 result!7324) b_and!8407)))

(declare-fun t!24574 () Bool)

(declare-fun tb!4915 () Bool)

(assert (=> (and b!148670 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24574) tb!4915))

(declare-fun result!7326 () Bool)

(assert (= result!7326 result!7318))

(assert (=> d!35648 t!24574))

(declare-fun b_and!8409 () Bool)

(assert (= b_and!8395 (and (=> t!24574 result!7326) b_and!8409)))

(declare-fun m!132643 () Bool)

(assert (=> d!35648 m!132643))

(declare-fun m!132645 () Bool)

(assert (=> d!35648 m!132645))

(assert (=> bm!5874 d!35648))

(declare-fun d!35650 () Bool)

(declare-fun c!30301 () Bool)

(assert (=> d!35650 (= c!30301 (and (is-Cons!2576 rules!1920) (not (= (isSeparator!444 (h!7973 rules!1920)) (isSeparator!444 (h!7973 rules!1920))))))))

(declare-fun e!88864 () Bool)

(assert (=> d!35650 (= (ruleDisjointCharsFromAllFromOtherType!11 (h!7973 rules!1920) rules!1920) e!88864)))

(declare-fun b!149127 () Bool)

(declare-fun e!88863 () Bool)

(declare-fun call!5955 () Bool)

(assert (=> b!149127 (= e!88863 call!5955)))

(declare-fun b!149128 () Bool)

(assert (=> b!149128 (= e!88864 e!88863)))

(declare-fun res!68500 () Bool)

(declare-fun rulesUseDisjointChars!10 (Rule!688 Rule!688) Bool)

(assert (=> b!149128 (= res!68500 (rulesUseDisjointChars!10 (h!7973 rules!1920) (h!7973 rules!1920)))))

(assert (=> b!149128 (=> (not res!68500) (not e!88863))))

(declare-fun b!149129 () Bool)

(declare-fun e!88862 () Bool)

(assert (=> b!149129 (= e!88864 e!88862)))

(declare-fun res!68499 () Bool)

(assert (=> b!149129 (= res!68499 (not (is-Cons!2576 rules!1920)))))

(assert (=> b!149129 (=> res!68499 e!88862)))

(declare-fun b!149130 () Bool)

(assert (=> b!149130 (= e!88862 call!5955)))

(declare-fun bm!5950 () Bool)

(assert (=> bm!5950 (= call!5955 (ruleDisjointCharsFromAllFromOtherType!11 (h!7973 rules!1920) (t!24458 rules!1920)))))

(assert (= (and d!35650 c!30301) b!149128))

(assert (= (and d!35650 (not c!30301)) b!149129))

(assert (= (and b!149128 res!68500) b!149127))

(assert (= (and b!149129 (not res!68499)) b!149130))

(assert (= (or b!149127 b!149130) bm!5950))

(declare-fun m!132647 () Bool)

(assert (=> b!149128 m!132647))

(declare-fun m!132649 () Bool)

(assert (=> bm!5950 m!132649))

(assert (=> b!148589 d!35650))

(declare-fun d!35652 () Bool)

(declare-fun charsToBigInt!0 (List!2584 Int) Int)

(assert (=> d!35652 (= (inv!15 (value!16971 (h!7972 tokens!465))) (= (charsToBigInt!0 (text!3711 (value!16971 (h!7972 tokens!465))) 0) (value!16966 (value!16971 (h!7972 tokens!465)))))))

(declare-fun bs!13537 () Bool)

(assert (= bs!13537 d!35652))

(declare-fun m!132651 () Bool)

(assert (=> bs!13537 m!132651))

(assert (=> b!148572 d!35652))

(assert (=> b!148485 d!35434))

(declare-fun d!35654 () Bool)

(assert (=> d!35654 (forall!424 (dropList!61 lt!42996 0) lambda!3727)))

(declare-fun lt!43424 () Unit!1932)

(declare-fun choose!1740 (List!2585 List!2585 Int) Unit!1932)

(assert (=> d!35654 (= lt!43424 (choose!1740 (list!897 lt!42996) (dropList!61 lt!42996 0) lambda!3727))))

(assert (=> d!35654 (forall!424 (list!897 lt!42996) lambda!3727)))

(assert (=> d!35654 (= (lemmaContentSubsetPreservesForall!5 (list!897 lt!42996) (dropList!61 lt!42996 0) lambda!3727) lt!43424)))

(declare-fun bs!13538 () Bool)

(assert (= bs!13538 d!35654))

(assert (=> bs!13538 m!131673))

(declare-fun m!132677 () Bool)

(assert (=> bs!13538 m!132677))

(assert (=> bs!13538 m!131679))

(assert (=> bs!13538 m!131673))

(declare-fun m!132681 () Bool)

(assert (=> bs!13538 m!132681))

(assert (=> bs!13538 m!131679))

(declare-fun m!132687 () Bool)

(assert (=> bs!13538 m!132687))

(assert (=> d!35408 d!35654))

(declare-fun bs!13539 () Bool)

(declare-fun b!149136 () Bool)

(assert (= bs!13539 (and b!149136 d!35430)))

(declare-fun lambda!3768 () Int)

(assert (=> bs!13539 (= lambda!3768 lambda!3739)))

(declare-fun bs!13540 () Bool)

(assert (= bs!13540 (and b!149136 b!148415)))

(assert (=> bs!13540 (= lambda!3768 lambda!3728)))

(declare-fun bs!13541 () Bool)

(assert (= bs!13541 (and b!149136 b!148316)))

(assert (=> bs!13541 (not (= lambda!3768 lambda!3719))))

(declare-fun bs!13542 () Bool)

(assert (= bs!13542 (and b!149136 b!148998)))

(assert (=> bs!13542 (= lambda!3768 lambda!3763)))

(declare-fun bs!13543 () Bool)

(assert (= bs!13543 (and b!149136 d!35598)))

(assert (=> bs!13543 (not (= lambda!3768 lambda!3762))))

(declare-fun bs!13544 () Bool)

(assert (= bs!13544 (and b!149136 b!148873)))

(assert (=> bs!13544 (= lambda!3768 lambda!3761)))

(declare-fun bs!13545 () Bool)

(assert (= bs!13545 (and b!149136 b!148478)))

(assert (=> bs!13545 (= lambda!3768 lambda!3736)))

(declare-fun bs!13546 () Bool)

(assert (= bs!13546 (and b!149136 d!35536)))

(assert (=> bs!13546 (= lambda!3768 lambda!3760)))

(declare-fun bs!13547 () Bool)

(assert (= bs!13547 (and b!149136 d!35450)))

(assert (=> bs!13547 (= lambda!3768 lambda!3750)))

(declare-fun bs!13552 () Bool)

(assert (= bs!13552 (and b!149136 d!35408)))

(assert (=> bs!13552 (not (= lambda!3768 lambda!3727))))

(declare-fun b!149147 () Bool)

(declare-fun e!88874 () Bool)

(assert (=> b!149147 (= e!88874 true)))

(declare-fun b!149146 () Bool)

(declare-fun e!88873 () Bool)

(assert (=> b!149146 (= e!88873 e!88874)))

(declare-fun b!149145 () Bool)

(declare-fun e!88872 () Bool)

(assert (=> b!149145 (= e!88872 e!88873)))

(assert (=> b!149136 e!88872))

(assert (= b!149146 b!149147))

(assert (= b!149145 b!149146))

(assert (= (and b!149136 (is-Cons!2576 rules!1920)) b!149145))

(assert (=> b!149147 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3768))))

(assert (=> b!149147 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3768))))

(assert (=> b!149136 true))

(declare-fun b!149135 () Bool)

(declare-fun e!88870 () List!2583)

(declare-fun call!5956 () BalanceConc!1428)

(assert (=> b!149135 (= e!88870 (list!894 call!5956))))

(declare-fun e!88869 () List!2583)

(declare-fun e!88868 () List!2583)

(assert (=> b!149136 (= e!88869 e!88868)))

(declare-fun lt!43425 () Unit!1932)

(assert (=> b!149136 (= lt!43425 (forallContained!45 (dropList!61 lt!42996 0) lambda!3768 (h!7972 (dropList!61 lt!42996 0))))))

(declare-fun lt!43426 () List!2583)

(assert (=> b!149136 (= lt!43426 (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (t!24457 (dropList!61 lt!42996 0)) separatorToken!170))))

(declare-fun lt!43429 () Option!227)

(assert (=> b!149136 (= lt!43429 (maxPrefix!102 thiss!17480 rules!1920 (++!548 (list!894 (charsOf!99 (h!7972 (dropList!61 lt!42996 0)))) lt!43426)))))

(declare-fun c!30306 () Bool)

(assert (=> b!149136 (= c!30306 (and (is-Some!226 lt!43429) (= (_1!1483 (v!13595 lt!43429)) (h!7972 (dropList!61 lt!42996 0)))))))

(declare-fun call!5957 () BalanceConc!1428)

(declare-fun bm!5951 () Bool)

(declare-fun e!88867 () BalanceConc!1428)

(declare-fun call!5958 () List!2583)

(assert (=> bm!5951 (= call!5958 (list!894 (ite c!30306 call!5957 e!88867)))))

(declare-fun bm!5952 () Bool)

(assert (=> bm!5952 (= call!5956 call!5957)))

(declare-fun d!35656 () Bool)

(declare-fun c!30304 () Bool)

(assert (=> d!35656 (= c!30304 (is-Cons!2575 (dropList!61 lt!42996 0)))))

(assert (=> d!35656 (= (printWithSeparatorTokenWhenNeededList!23 thiss!17480 rules!1920 (dropList!61 lt!42996 0) separatorToken!170) e!88869)))

(declare-fun b!149137 () Bool)

(declare-fun e!88871 () List!2583)

(declare-fun call!5960 () List!2583)

(assert (=> b!149137 (= e!88871 (++!548 call!5960 lt!43426))))

(declare-fun bm!5953 () Bool)

(declare-fun c!30305 () Bool)

(assert (=> bm!5953 (= c!30305 c!30306)))

(declare-fun call!5959 () List!2583)

(assert (=> bm!5953 (= call!5960 (++!548 e!88870 (ite c!30306 lt!43426 call!5959)))))

(declare-fun b!149138 () Bool)

(assert (=> b!149138 (= e!88867 call!5956)))

(declare-fun b!149139 () Bool)

(declare-fun c!30307 () Bool)

(assert (=> b!149139 (= c!30307 (and (is-Some!226 lt!43429) (not (= (_1!1483 (v!13595 lt!43429)) (h!7972 (dropList!61 lt!42996 0))))))))

(assert (=> b!149139 (= e!88868 e!88871)))

(declare-fun bm!5954 () Bool)

(assert (=> bm!5954 (= call!5959 call!5958)))

(declare-fun c!30303 () Bool)

(assert (=> bm!5954 (= c!30303 c!30307)))

(declare-fun b!149140 () Bool)

(assert (=> b!149140 (= e!88871 Nil!2573)))

(assert (=> b!149140 (= (print!87 thiss!17480 (singletonSeq!20 (h!7972 (dropList!61 lt!42996 0)))) (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 (dropList!61 lt!42996 0))) 0 (BalanceConc!1429 Empty!710)))))

(declare-fun lt!43427 () Unit!1932)

(declare-fun Unit!1952 () Unit!1932)

(assert (=> b!149140 (= lt!43427 Unit!1952)))

(declare-fun lt!43428 () Unit!1932)

(assert (=> b!149140 (= lt!43428 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 call!5959 lt!43426))))

(assert (=> b!149140 false))

(declare-fun lt!43430 () Unit!1932)

(declare-fun Unit!1953 () Unit!1932)

(assert (=> b!149140 (= lt!43430 Unit!1953)))

(declare-fun bm!5955 () Bool)

(assert (=> bm!5955 (= call!5957 (charsOf!99 (h!7972 (dropList!61 lt!42996 0))))))

(declare-fun b!149141 () Bool)

(assert (=> b!149141 (= e!88870 call!5958)))

(declare-fun b!149142 () Bool)

(assert (=> b!149142 (= e!88868 call!5960)))

(declare-fun b!149143 () Bool)

(assert (=> b!149143 (= e!88867 (charsOf!99 separatorToken!170))))

(declare-fun b!149144 () Bool)

(assert (=> b!149144 (= e!88869 Nil!2573)))

(assert (= (and d!35656 c!30304) b!149136))

(assert (= (and d!35656 (not c!30304)) b!149144))

(assert (= (and b!149136 c!30306) b!149142))

(assert (= (and b!149136 (not c!30306)) b!149139))

(assert (= (and b!149139 c!30307) b!149137))

(assert (= (and b!149139 (not c!30307)) b!149140))

(assert (= (or b!149137 b!149140) bm!5952))

(assert (= (or b!149137 b!149140) bm!5954))

(assert (= (and bm!5954 c!30303) b!149143))

(assert (= (and bm!5954 (not c!30303)) b!149138))

(assert (= (or b!149142 bm!5952) bm!5955))

(assert (= (or b!149142 bm!5954) bm!5951))

(assert (= (or b!149142 b!149137) bm!5953))

(assert (= (and bm!5953 c!30305) b!149141))

(assert (= (and bm!5953 (not c!30305)) b!149135))

(declare-fun m!132723 () Bool)

(assert (=> bm!5955 m!132723))

(assert (=> b!149143 m!131609))

(declare-fun m!132725 () Bool)

(assert (=> bm!5953 m!132725))

(declare-fun m!132727 () Bool)

(assert (=> bm!5951 m!132727))

(declare-fun m!132729 () Bool)

(assert (=> b!149137 m!132729))

(declare-fun m!132731 () Bool)

(assert (=> b!149135 m!132731))

(declare-fun m!132733 () Bool)

(assert (=> b!149140 m!132733))

(assert (=> b!149140 m!132733))

(declare-fun m!132735 () Bool)

(assert (=> b!149140 m!132735))

(assert (=> b!149140 m!132733))

(declare-fun m!132737 () Bool)

(assert (=> b!149140 m!132737))

(declare-fun m!132739 () Bool)

(assert (=> b!149140 m!132739))

(declare-fun m!132741 () Bool)

(assert (=> b!149136 m!132741))

(declare-fun m!132743 () Bool)

(assert (=> b!149136 m!132743))

(assert (=> b!149136 m!132723))

(assert (=> b!149136 m!132741))

(assert (=> b!149136 m!131673))

(declare-fun m!132747 () Bool)

(assert (=> b!149136 m!132747))

(assert (=> b!149136 m!132723))

(assert (=> b!149136 m!132743))

(declare-fun m!132749 () Bool)

(assert (=> b!149136 m!132749))

(declare-fun m!132751 () Bool)

(assert (=> b!149136 m!132751))

(assert (=> d!35408 d!35656))

(assert (=> d!35408 d!35538))

(declare-fun d!35668 () Bool)

(declare-fun lt!43435 () Int)

(assert (=> d!35668 (= lt!43435 (size!2218 (list!897 lt!42996)))))

(declare-fun size!2219 (Conc!711) Int)

(assert (=> d!35668 (= lt!43435 (size!2219 (c!30147 lt!42996)))))

(assert (=> d!35668 (= (size!2214 lt!42996) lt!43435)))

(declare-fun bs!13563 () Bool)

(assert (= bs!13563 d!35668))

(assert (=> bs!13563 m!131679))

(assert (=> bs!13563 m!131679))

(declare-fun m!132769 () Bool)

(assert (=> bs!13563 m!132769))

(declare-fun m!132771 () Bool)

(assert (=> bs!13563 m!132771))

(assert (=> d!35408 d!35668))

(declare-fun d!35676 () Bool)

(assert (=> d!35676 (= (list!894 lt!43050) (list!896 (c!30145 lt!43050)))))

(declare-fun bs!13564 () Bool)

(assert (= bs!13564 d!35676))

(declare-fun m!132773 () Bool)

(assert (=> bs!13564 m!132773))

(assert (=> d!35408 d!35676))

(declare-fun d!35678 () Bool)

(assert (=> d!35678 (= (dropList!61 lt!42996 0) (drop!114 (list!900 (c!30147 lt!42996)) 0))))

(declare-fun bs!13565 () Bool)

(assert (= bs!13565 d!35678))

(assert (=> bs!13565 m!132217))

(assert (=> bs!13565 m!132217))

(declare-fun m!132775 () Bool)

(assert (=> bs!13565 m!132775))

(assert (=> d!35408 d!35678))

(declare-fun b!149168 () Bool)

(declare-fun e!88892 () List!2583)

(assert (=> b!149168 (= e!88892 (list!901 (xs!3305 (c!30145 (charsOf!99 separatorToken!170)))))))

(declare-fun b!149167 () Bool)

(declare-fun e!88891 () List!2583)

(assert (=> b!149167 (= e!88891 e!88892)))

(declare-fun c!30311 () Bool)

(assert (=> b!149167 (= c!30311 (is-Leaf!1272 (c!30145 (charsOf!99 separatorToken!170))))))

(declare-fun d!35680 () Bool)

(declare-fun c!30310 () Bool)

(assert (=> d!35680 (= c!30310 (is-Empty!710 (c!30145 (charsOf!99 separatorToken!170))))))

(assert (=> d!35680 (= (list!896 (c!30145 (charsOf!99 separatorToken!170))) e!88891)))

(declare-fun b!149169 () Bool)

(assert (=> b!149169 (= e!88892 (++!548 (list!896 (left!1943 (c!30145 (charsOf!99 separatorToken!170)))) (list!896 (right!2273 (c!30145 (charsOf!99 separatorToken!170))))))))

(declare-fun b!149166 () Bool)

(assert (=> b!149166 (= e!88891 Nil!2573)))

(assert (= (and d!35680 c!30310) b!149166))

(assert (= (and d!35680 (not c!30310)) b!149167))

(assert (= (and b!149167 c!30311) b!149168))

(assert (= (and b!149167 (not c!30311)) b!149169))

(declare-fun m!132779 () Bool)

(assert (=> b!149168 m!132779))

(declare-fun m!132781 () Bool)

(assert (=> b!149169 m!132781))

(declare-fun m!132783 () Bool)

(assert (=> b!149169 m!132783))

(assert (=> b!149169 m!132781))

(assert (=> b!149169 m!132783))

(declare-fun m!132785 () Bool)

(assert (=> b!149169 m!132785))

(assert (=> d!35432 d!35680))

(declare-fun b!149172 () Bool)

(declare-fun e!88894 () List!2583)

(assert (=> b!149172 (= e!88894 (list!901 (xs!3305 (c!30145 (seqFromList!265 lt!42995)))))))

(declare-fun b!149171 () Bool)

(declare-fun e!88893 () List!2583)

(assert (=> b!149171 (= e!88893 e!88894)))

(declare-fun c!30313 () Bool)

(assert (=> b!149171 (= c!30313 (is-Leaf!1272 (c!30145 (seqFromList!265 lt!42995))))))

(declare-fun d!35684 () Bool)

(declare-fun c!30312 () Bool)

(assert (=> d!35684 (= c!30312 (is-Empty!710 (c!30145 (seqFromList!265 lt!42995))))))

(assert (=> d!35684 (= (list!896 (c!30145 (seqFromList!265 lt!42995))) e!88893)))

(declare-fun b!149173 () Bool)

(assert (=> b!149173 (= e!88894 (++!548 (list!896 (left!1943 (c!30145 (seqFromList!265 lt!42995)))) (list!896 (right!2273 (c!30145 (seqFromList!265 lt!42995))))))))

(declare-fun b!149170 () Bool)

(assert (=> b!149170 (= e!88893 Nil!2573)))

(assert (= (and d!35684 c!30312) b!149170))

(assert (= (and d!35684 (not c!30312)) b!149171))

(assert (= (and b!149171 c!30313) b!149172))

(assert (= (and b!149171 (not c!30313)) b!149173))

(declare-fun m!132787 () Bool)

(assert (=> b!149172 m!132787))

(declare-fun m!132789 () Bool)

(assert (=> b!149173 m!132789))

(declare-fun m!132791 () Bool)

(assert (=> b!149173 m!132791))

(assert (=> b!149173 m!132789))

(assert (=> b!149173 m!132791))

(declare-fun m!132793 () Bool)

(assert (=> b!149173 m!132793))

(assert (=> d!35440 d!35684))

(declare-fun bs!13567 () Bool)

(declare-fun d!35686 () Bool)

(assert (= bs!13567 (and d!35686 d!35626)))

(declare-fun lambda!3771 () Int)

(assert (=> bs!13567 (= (= (toValue!1075 (transformation!444 (h!7973 rules!1920))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (= lambda!3771 lambda!3766))))

(assert (=> d!35686 true))

(assert (=> d!35686 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!893 order!1277 lambda!3771))))

(assert (=> d!35686 (= (equivClasses!135 (toChars!934 (transformation!444 (h!7973 rules!1920))) (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (Forall2!95 lambda!3771))))

(declare-fun bs!13568 () Bool)

(assert (= bs!13568 d!35686))

(declare-fun m!132795 () Bool)

(assert (=> bs!13568 m!132795))

(assert (=> b!148591 d!35686))

(declare-fun d!35688 () Bool)

(declare-fun c!30314 () Bool)

(assert (=> d!35688 (= c!30314 (is-Node!710 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(declare-fun e!88895 () Bool)

(assert (=> d!35688 (= (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))) e!88895)))

(declare-fun b!149174 () Bool)

(assert (=> b!149174 (= e!88895 (inv!3372 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(declare-fun b!149175 () Bool)

(declare-fun e!88896 () Bool)

(assert (=> b!149175 (= e!88895 e!88896)))

(declare-fun res!68511 () Bool)

(assert (=> b!149175 (= res!68511 (not (is-Leaf!1272 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))))))

(assert (=> b!149175 (=> res!68511 e!88896)))

(declare-fun b!149176 () Bool)

(assert (=> b!149176 (= e!88896 (inv!3373 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(assert (= (and d!35688 c!30314) b!149174))

(assert (= (and d!35688 (not c!30314)) b!149175))

(assert (= (and b!149175 (not res!68511)) b!149176))

(declare-fun m!132797 () Bool)

(assert (=> b!149174 m!132797))

(declare-fun m!132799 () Bool)

(assert (=> b!149176 m!132799))

(assert (=> b!148550 d!35688))

(declare-fun d!35690 () Bool)

(declare-fun lt!43439 () BalanceConc!1428)

(assert (=> d!35690 (= (list!894 lt!43439) (printList!48 thiss!17480 (list!897 (singletonSeq!20 (h!7972 tokens!465)))))))

(assert (=> d!35690 (= lt!43439 (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 tokens!465)) 0 (BalanceConc!1429 Empty!710)))))

(assert (=> d!35690 (= (print!87 thiss!17480 (singletonSeq!20 (h!7972 tokens!465))) lt!43439)))

(declare-fun bs!13569 () Bool)

(assert (= bs!13569 d!35690))

(declare-fun m!132801 () Bool)

(assert (=> bs!13569 m!132801))

(assert (=> bs!13569 m!131767))

(declare-fun m!132803 () Bool)

(assert (=> bs!13569 m!132803))

(assert (=> bs!13569 m!132803))

(declare-fun m!132805 () Bool)

(assert (=> bs!13569 m!132805))

(assert (=> bs!13569 m!131767))

(assert (=> bs!13569 m!131771))

(assert (=> b!148482 d!35690))

(declare-fun d!35692 () Bool)

(declare-fun e!88897 () Bool)

(assert (=> d!35692 e!88897))

(declare-fun res!68512 () Bool)

(assert (=> d!35692 (=> (not res!68512) (not e!88897))))

(declare-fun lt!43440 () BalanceConc!1430)

(assert (=> d!35692 (= res!68512 (= (list!897 lt!43440) (Cons!2575 (h!7972 tokens!465) Nil!2575)))))

(assert (=> d!35692 (= lt!43440 (singleton!16 (h!7972 tokens!465)))))

(assert (=> d!35692 (= (singletonSeq!20 (h!7972 tokens!465)) lt!43440)))

(declare-fun b!149177 () Bool)

(assert (=> b!149177 (= e!88897 (isBalanced!202 (c!30147 lt!43440)))))

(assert (= (and d!35692 res!68512) b!149177))

(declare-fun m!132807 () Bool)

(assert (=> d!35692 m!132807))

(declare-fun m!132809 () Bool)

(assert (=> d!35692 m!132809))

(declare-fun m!132811 () Bool)

(assert (=> b!149177 m!132811))

(assert (=> b!148482 d!35692))

(declare-fun d!35694 () Bool)

(declare-fun lt!43442 () BalanceConc!1428)

(assert (=> d!35694 (= (list!894 lt!43442) (printListTailRec!35 thiss!17480 (dropList!61 (singletonSeq!20 (h!7972 tokens!465)) 0) (list!894 (BalanceConc!1429 Empty!710))))))

(declare-fun e!88900 () BalanceConc!1428)

(assert (=> d!35694 (= lt!43442 e!88900)))

(declare-fun c!30317 () Bool)

(assert (=> d!35694 (= c!30317 (>= 0 (size!2214 (singletonSeq!20 (h!7972 tokens!465)))))))

(declare-fun e!88903 () Bool)

(assert (=> d!35694 e!88903))

(declare-fun res!68513 () Bool)

(assert (=> d!35694 (=> (not res!68513) (not e!88903))))

(assert (=> d!35694 (= res!68513 (>= 0 0))))

(assert (=> d!35694 (= (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 tokens!465)) 0 (BalanceConc!1429 Empty!710)) lt!43442)))

(declare-fun b!149182 () Bool)

(assert (=> b!149182 (= e!88903 (<= 0 (size!2214 (singletonSeq!20 (h!7972 tokens!465)))))))

(declare-fun b!149183 () Bool)

(assert (=> b!149183 (= e!88900 (BalanceConc!1429 Empty!710))))

(declare-fun b!149184 () Bool)

(assert (=> b!149184 (= e!88900 (printTailRec!50 thiss!17480 (singletonSeq!20 (h!7972 tokens!465)) (+ 0 1) (++!547 (BalanceConc!1429 Empty!710) (charsOf!99 (apply!327 (singletonSeq!20 (h!7972 tokens!465)) 0)))))))

(declare-fun lt!43444 () List!2585)

(assert (=> b!149184 (= lt!43444 (list!897 (singletonSeq!20 (h!7972 tokens!465))))))

(declare-fun lt!43443 () Unit!1932)

(assert (=> b!149184 (= lt!43443 (lemmaDropApply!101 lt!43444 0))))

(assert (=> b!149184 (= (head!575 (drop!114 lt!43444 0)) (apply!328 lt!43444 0))))

(declare-fun lt!43446 () Unit!1932)

(assert (=> b!149184 (= lt!43446 lt!43443)))

(declare-fun lt!43445 () List!2585)

(assert (=> b!149184 (= lt!43445 (list!897 (singletonSeq!20 (h!7972 tokens!465))))))

(declare-fun lt!43441 () Unit!1932)

(assert (=> b!149184 (= lt!43441 (lemmaDropTail!93 lt!43445 0))))

(assert (=> b!149184 (= (tail!315 (drop!114 lt!43445 0)) (drop!114 lt!43445 (+ 0 1)))))

(declare-fun lt!43447 () Unit!1932)

(assert (=> b!149184 (= lt!43447 lt!43441)))

(assert (= (and d!35694 res!68513) b!149182))

(assert (= (and d!35694 c!30317) b!149183))

(assert (= (and d!35694 (not c!30317)) b!149184))

(declare-fun m!132813 () Bool)

(assert (=> d!35694 m!132813))

(declare-fun m!132815 () Bool)

(assert (=> d!35694 m!132815))

(assert (=> d!35694 m!132169))

(declare-fun m!132817 () Bool)

(assert (=> d!35694 m!132817))

(assert (=> d!35694 m!131767))

(assert (=> d!35694 m!132815))

(assert (=> d!35694 m!131767))

(declare-fun m!132819 () Bool)

(assert (=> d!35694 m!132819))

(assert (=> d!35694 m!132169))

(assert (=> b!149182 m!131767))

(assert (=> b!149182 m!132819))

(declare-fun m!132821 () Bool)

(assert (=> b!149184 m!132821))

(declare-fun m!132823 () Bool)

(assert (=> b!149184 m!132823))

(assert (=> b!149184 m!131767))

(assert (=> b!149184 m!132803))

(assert (=> b!149184 m!131767))

(declare-fun m!132825 () Bool)

(assert (=> b!149184 m!132825))

(declare-fun m!132827 () Bool)

(assert (=> b!149184 m!132827))

(declare-fun m!132829 () Bool)

(assert (=> b!149184 m!132829))

(assert (=> b!149184 m!131767))

(declare-fun m!132831 () Bool)

(assert (=> b!149184 m!132831))

(assert (=> b!149184 m!132821))

(declare-fun m!132833 () Bool)

(assert (=> b!149184 m!132833))

(assert (=> b!149184 m!132831))

(declare-fun m!132835 () Bool)

(assert (=> b!149184 m!132835))

(declare-fun m!132837 () Bool)

(assert (=> b!149184 m!132837))

(declare-fun m!132839 () Bool)

(assert (=> b!149184 m!132839))

(declare-fun m!132841 () Bool)

(assert (=> b!149184 m!132841))

(assert (=> b!149184 m!132835))

(assert (=> b!149184 m!132825))

(assert (=> b!149184 m!132841))

(declare-fun m!132843 () Bool)

(assert (=> b!149184 m!132843))

(assert (=> b!148482 d!35694))

(declare-fun lt!43460 () Token!632)

(declare-fun b!149192 () Bool)

(declare-fun e!88906 () Bool)

(assert (=> b!149192 (= e!88906 (= (rule!951 lt!43460) (get!697 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43460))))))))

(declare-fun d!35696 () Bool)

(assert (=> d!35696 (isDefined!91 (maxPrefix!102 thiss!17480 rules!1920 (++!548 call!5897 lt!43067)))))

(declare-fun lt!43451 () Unit!1932)

(declare-fun e!88908 () Unit!1932)

(assert (=> d!35696 (= lt!43451 e!88908)))

(declare-fun c!30319 () Bool)

(assert (=> d!35696 (= c!30319 (isEmpty!1013 (maxPrefix!102 thiss!17480 rules!1920 (++!548 call!5897 lt!43067))))))

(declare-fun lt!43448 () Unit!1932)

(declare-fun lt!43463 () Unit!1932)

(assert (=> d!35696 (= lt!43448 lt!43463)))

(assert (=> d!35696 e!88906))

(declare-fun res!68518 () Bool)

(assert (=> d!35696 (=> (not res!68518) (not e!88906))))

(assert (=> d!35696 (= res!68518 (isDefined!92 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43460)))))))

(assert (=> d!35696 (= lt!43463 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!7 thiss!17480 rules!1920 call!5897 lt!43460))))

(declare-fun lt!43450 () Unit!1932)

(declare-fun lt!43459 () Unit!1932)

(assert (=> d!35696 (= lt!43450 lt!43459)))

(declare-fun lt!43464 () List!2583)

(assert (=> d!35696 (isPrefix!208 lt!43464 (++!548 call!5897 lt!43067))))

(assert (=> d!35696 (= lt!43459 (lemmaPrefixStaysPrefixWhenAddingToSuffix!7 lt!43464 call!5897 lt!43067))))

(assert (=> d!35696 (= lt!43464 (list!894 (charsOf!99 lt!43460)))))

(declare-fun lt!43453 () Unit!1932)

(declare-fun lt!43454 () Unit!1932)

(assert (=> d!35696 (= lt!43453 lt!43454)))

(declare-fun lt!43457 () List!2583)

(declare-fun lt!43452 () List!2583)

(assert (=> d!35696 (isPrefix!208 lt!43457 (++!548 lt!43457 lt!43452))))

(assert (=> d!35696 (= lt!43454 (lemmaConcatTwoListThenFirstIsPrefix!111 lt!43457 lt!43452))))

(assert (=> d!35696 (= lt!43452 (_2!1483 (get!698 (maxPrefix!102 thiss!17480 rules!1920 call!5897))))))

(assert (=> d!35696 (= lt!43457 (list!894 (charsOf!99 lt!43460)))))

(assert (=> d!35696 (= lt!43460 (head!575 (list!897 (_1!1484 (lex!162 thiss!17480 rules!1920 (seqFromList!265 call!5897))))))))

(assert (=> d!35696 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35696 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!9 thiss!17480 rules!1920 call!5897 lt!43067) lt!43451)))

(declare-fun b!149190 () Bool)

(declare-fun res!68517 () Bool)

(assert (=> b!149190 (=> (not res!68517) (not e!88906))))

(assert (=> b!149190 (= res!68517 (matchR!64 (regex!444 (get!697 (getRuleFromTag!7 thiss!17480 rules!1920 (tag!622 (rule!951 lt!43460))))) (list!894 (charsOf!99 lt!43460))))))

(declare-fun b!149195 () Bool)

(declare-fun Unit!1954 () Unit!1932)

(assert (=> b!149195 (= e!88908 Unit!1954)))

(declare-fun b!149194 () Bool)

(declare-fun Unit!1955 () Unit!1932)

(assert (=> b!149194 (= e!88908 Unit!1955)))

(declare-fun lt!43462 () List!2583)

(assert (=> b!149194 (= lt!43462 (++!548 call!5897 lt!43067))))

(declare-fun lt!43449 () Unit!1932)

(assert (=> b!149194 (= lt!43449 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!7 thiss!17480 (rule!951 lt!43460) rules!1920 lt!43462))))

(assert (=> b!149194 (isEmpty!1013 (maxPrefixOneRule!52 thiss!17480 (rule!951 lt!43460) lt!43462))))

(declare-fun lt!43461 () Unit!1932)

(assert (=> b!149194 (= lt!43461 lt!43449)))

(declare-fun lt!43456 () List!2583)

(assert (=> b!149194 (= lt!43456 (list!894 (charsOf!99 lt!43460)))))

(declare-fun lt!43455 () Unit!1932)

(assert (=> b!149194 (= lt!43455 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!7 thiss!17480 (rule!951 lt!43460) lt!43456 (++!548 call!5897 lt!43067)))))

(assert (=> b!149194 (not (matchR!64 (regex!444 (rule!951 lt!43460)) lt!43456))))

(declare-fun lt!43458 () Unit!1932)

(assert (=> b!149194 (= lt!43458 lt!43455)))

(assert (=> b!149194 false))

(assert (= (and d!35696 res!68518) b!149190))

(assert (= (and b!149190 res!68517) b!149192))

(assert (= (and d!35696 c!30319) b!149194))

(assert (= (and d!35696 (not c!30319)) b!149195))

(declare-fun m!132853 () Bool)

(assert (=> b!149192 m!132853))

(assert (=> b!149192 m!132853))

(declare-fun m!132855 () Bool)

(assert (=> b!149192 m!132855))

(declare-fun m!132857 () Bool)

(assert (=> d!35696 m!132857))

(declare-fun m!132859 () Bool)

(assert (=> d!35696 m!132859))

(declare-fun m!132861 () Bool)

(assert (=> d!35696 m!132861))

(declare-fun m!132863 () Bool)

(assert (=> d!35696 m!132863))

(declare-fun m!132865 () Bool)

(assert (=> d!35696 m!132865))

(declare-fun m!132867 () Bool)

(assert (=> d!35696 m!132867))

(declare-fun m!132869 () Bool)

(assert (=> d!35696 m!132869))

(assert (=> d!35696 m!132857))

(declare-fun m!132871 () Bool)

(assert (=> d!35696 m!132871))

(declare-fun m!132873 () Bool)

(assert (=> d!35696 m!132873))

(declare-fun m!132875 () Bool)

(assert (=> d!35696 m!132875))

(declare-fun m!132877 () Bool)

(assert (=> d!35696 m!132877))

(assert (=> d!35696 m!132871))

(declare-fun m!132879 () Bool)

(assert (=> d!35696 m!132879))

(declare-fun m!132881 () Bool)

(assert (=> d!35696 m!132881))

(assert (=> d!35696 m!132857))

(assert (=> d!35696 m!132853))

(declare-fun m!132883 () Bool)

(assert (=> d!35696 m!132883))

(declare-fun m!132885 () Bool)

(assert (=> d!35696 m!132885))

(assert (=> d!35696 m!131581))

(assert (=> d!35696 m!132865))

(declare-fun m!132887 () Bool)

(assert (=> d!35696 m!132887))

(assert (=> d!35696 m!132875))

(assert (=> d!35696 m!132873))

(declare-fun m!132889 () Bool)

(assert (=> d!35696 m!132889))

(assert (=> d!35696 m!132871))

(declare-fun m!132891 () Bool)

(assert (=> d!35696 m!132891))

(assert (=> d!35696 m!132861))

(assert (=> d!35696 m!132853))

(declare-fun m!132893 () Bool)

(assert (=> d!35696 m!132893))

(assert (=> d!35696 m!132883))

(assert (=> b!149190 m!132885))

(declare-fun m!132895 () Bool)

(assert (=> b!149190 m!132895))

(assert (=> b!149190 m!132853))

(assert (=> b!149190 m!132855))

(assert (=> b!149190 m!132853))

(assert (=> b!149190 m!132883))

(assert (=> b!149190 m!132883))

(assert (=> b!149190 m!132885))

(declare-fun m!132897 () Bool)

(assert (=> b!149194 m!132897))

(assert (=> b!149194 m!132857))

(declare-fun m!132899 () Bool)

(assert (=> b!149194 m!132899))

(declare-fun m!132901 () Bool)

(assert (=> b!149194 m!132901))

(assert (=> b!149194 m!132857))

(declare-fun m!132903 () Bool)

(assert (=> b!149194 m!132903))

(assert (=> b!149194 m!132901))

(declare-fun m!132905 () Bool)

(assert (=> b!149194 m!132905))

(assert (=> b!149194 m!132883))

(assert (=> b!149194 m!132883))

(assert (=> b!149194 m!132885))

(assert (=> b!148482 d!35696))

(declare-fun bs!13570 () Bool)

(declare-fun d!35702 () Bool)

(assert (= bs!13570 (and d!35702 d!35626)))

(declare-fun lambda!3772 () Int)

(assert (=> bs!13570 (= (= (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (= lambda!3772 lambda!3766))))

(declare-fun bs!13571 () Bool)

(assert (= bs!13571 (and d!35702 d!35686)))

(assert (=> bs!13571 (= (= (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (= lambda!3772 lambda!3771))))

(assert (=> d!35702 true))

(assert (=> d!35702 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))) (dynLambda!893 order!1277 lambda!3772))))

(assert (=> d!35702 (= (equivClasses!135 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465))))) (Forall2!95 lambda!3772))))

(declare-fun bs!13572 () Bool)

(assert (= bs!13572 d!35702))

(declare-fun m!132909 () Bool)

(assert (=> bs!13572 m!132909))

(assert (=> b!148584 d!35702))

(declare-fun d!35704 () Bool)

(declare-fun e!88913 () Bool)

(assert (=> d!35704 e!88913))

(declare-fun res!68524 () Bool)

(assert (=> d!35704 (=> (not res!68524) (not e!88913))))

(declare-fun lt!43468 () BalanceConc!1430)

(assert (=> d!35704 (= res!68524 (= (list!897 lt!43468) (Cons!2575 separatorToken!170 Nil!2575)))))

(assert (=> d!35704 (= lt!43468 (singleton!16 separatorToken!170))))

(assert (=> d!35704 (= (singletonSeq!20 separatorToken!170) lt!43468)))

(declare-fun b!149199 () Bool)

(assert (=> b!149199 (= e!88913 (isBalanced!202 (c!30147 lt!43468)))))

(assert (= (and d!35704 res!68524) b!149199))

(declare-fun m!132915 () Bool)

(assert (=> d!35704 m!132915))

(declare-fun m!132917 () Bool)

(assert (=> d!35704 m!132917))

(declare-fun m!132919 () Bool)

(assert (=> b!149199 m!132919))

(assert (=> d!35474 d!35704))

(declare-fun d!35708 () Bool)

(assert (=> d!35708 (= (list!897 (_1!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))) (list!900 (c!30147 (_1!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))))

(declare-fun bs!13573 () Bool)

(assert (= bs!13573 d!35708))

(declare-fun m!132921 () Bool)

(assert (=> bs!13573 m!132921))

(assert (=> d!35474 d!35708))

(declare-fun b!149272 () Bool)

(declare-fun e!88962 () Bool)

(declare-fun e!88960 () Bool)

(assert (=> b!149272 (= e!88962 e!88960)))

(declare-fun lt!43497 () tuple2!2536)

(declare-fun res!68547 () Bool)

(declare-fun size!2220 (BalanceConc!1428) Int)

(assert (=> b!149272 (= res!68547 (< (size!2220 (_2!1484 lt!43497)) (size!2220 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))

(assert (=> b!149272 (=> (not res!68547) (not e!88960))))

(declare-fun b!149273 () Bool)

(assert (=> b!149273 (= e!88962 (= (_2!1484 lt!43497) (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))))

(declare-fun b!149274 () Bool)

(declare-fun res!68548 () Bool)

(declare-fun e!88961 () Bool)

(assert (=> b!149274 (=> (not res!68548) (not e!88961))))

(declare-datatypes ((tuple2!2544 0))(
  ( (tuple2!2545 (_1!1488 List!2585) (_2!1488 List!2583)) )
))
(declare-fun lexList!92 (LexerInterface!330 List!2586 List!2583) tuple2!2544)

(assert (=> b!149274 (= res!68548 (= (list!897 (_1!1484 lt!43497)) (_1!1488 (lexList!92 thiss!17480 rules!1920 (list!894 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))))

(declare-fun b!149275 () Bool)

(assert (=> b!149275 (= e!88961 (= (list!894 (_2!1484 lt!43497)) (_2!1488 (lexList!92 thiss!17480 rules!1920 (list!894 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))))

(declare-fun b!149276 () Bool)

(declare-fun isEmpty!1016 (BalanceConc!1430) Bool)

(assert (=> b!149276 (= e!88960 (not (isEmpty!1016 (_1!1484 lt!43497))))))

(declare-fun d!35710 () Bool)

(assert (=> d!35710 e!88961))

(declare-fun res!68546 () Bool)

(assert (=> d!35710 (=> (not res!68546) (not e!88961))))

(assert (=> d!35710 (= res!68546 e!88962)))

(declare-fun c!30343 () Bool)

(assert (=> d!35710 (= c!30343 (> (size!2214 (_1!1484 lt!43497)) 0))))

(declare-fun lexTailRecV2!79 (LexerInterface!330 List!2586 BalanceConc!1428 BalanceConc!1428 BalanceConc!1428 BalanceConc!1430) tuple2!2536)

(assert (=> d!35710 (= lt!43497 (lexTailRecV2!79 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)) (BalanceConc!1429 Empty!710) (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)) (BalanceConc!1431 Empty!711)))))

(assert (=> d!35710 (= (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))) lt!43497)))

(assert (= (and d!35710 c!30343) b!149272))

(assert (= (and d!35710 (not c!30343)) b!149273))

(assert (= (and b!149272 res!68547) b!149276))

(assert (= (and d!35710 res!68546) b!149274))

(assert (= (and b!149274 res!68548) b!149275))

(declare-fun m!133035 () Bool)

(assert (=> b!149272 m!133035))

(assert (=> b!149272 m!131963))

(declare-fun m!133037 () Bool)

(assert (=> b!149272 m!133037))

(declare-fun m!133039 () Bool)

(assert (=> b!149275 m!133039))

(assert (=> b!149275 m!131963))

(declare-fun m!133041 () Bool)

(assert (=> b!149275 m!133041))

(assert (=> b!149275 m!133041))

(declare-fun m!133043 () Bool)

(assert (=> b!149275 m!133043))

(declare-fun m!133045 () Bool)

(assert (=> b!149274 m!133045))

(assert (=> b!149274 m!131963))

(assert (=> b!149274 m!133041))

(assert (=> b!149274 m!133041))

(assert (=> b!149274 m!133043))

(declare-fun m!133047 () Bool)

(assert (=> d!35710 m!133047))

(assert (=> d!35710 m!131963))

(assert (=> d!35710 m!131963))

(declare-fun m!133049 () Bool)

(assert (=> d!35710 m!133049))

(declare-fun m!133051 () Bool)

(assert (=> b!149276 m!133051))

(assert (=> d!35474 d!35710))

(declare-fun d!35734 () Bool)

(assert (=> d!35734 (= (list!897 (singletonSeq!20 separatorToken!170)) (list!900 (c!30147 (singletonSeq!20 separatorToken!170))))))

(declare-fun bs!13594 () Bool)

(assert (= bs!13594 d!35734))

(declare-fun m!133053 () Bool)

(assert (=> bs!13594 m!133053))

(assert (=> d!35474 d!35734))

(declare-fun d!35736 () Bool)

(declare-fun lt!43498 () Int)

(assert (=> d!35736 (= lt!43498 (size!2218 (list!897 (_1!1484 lt!43145))))))

(assert (=> d!35736 (= lt!43498 (size!2219 (c!30147 (_1!1484 lt!43145))))))

(assert (=> d!35736 (= (size!2214 (_1!1484 lt!43145)) lt!43498)))

(declare-fun bs!13595 () Bool)

(assert (= bs!13595 d!35736))

(assert (=> bs!13595 m!132633))

(assert (=> bs!13595 m!132633))

(declare-fun m!133055 () Bool)

(assert (=> bs!13595 m!133055))

(declare-fun m!133057 () Bool)

(assert (=> bs!13595 m!133057))

(assert (=> d!35474 d!35736))

(declare-fun d!35738 () Bool)

(declare-fun lt!43499 () BalanceConc!1428)

(assert (=> d!35738 (= (list!894 lt!43499) (printList!48 thiss!17480 (list!897 (singletonSeq!20 separatorToken!170))))))

(assert (=> d!35738 (= lt!43499 (printTailRec!50 thiss!17480 (singletonSeq!20 separatorToken!170) 0 (BalanceConc!1429 Empty!710)))))

(assert (=> d!35738 (= (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)) lt!43499)))

(declare-fun bs!13596 () Bool)

(assert (= bs!13596 d!35738))

(declare-fun m!133059 () Bool)

(assert (=> bs!13596 m!133059))

(assert (=> bs!13596 m!131959))

(assert (=> bs!13596 m!131961))

(assert (=> bs!13596 m!131961))

(declare-fun m!133061 () Bool)

(assert (=> bs!13596 m!133061))

(assert (=> bs!13596 m!131959))

(declare-fun m!133063 () Bool)

(assert (=> bs!13596 m!133063))

(assert (=> d!35474 d!35738))

(assert (=> d!35474 d!35462))

(declare-fun d!35740 () Bool)

(assert (=> d!35740 true))

(declare-fun lt!43502 () Bool)

(assert (=> d!35740 (= lt!43502 (rulesValidInductive!93 thiss!17480 rules!1920))))

(declare-fun lambda!3780 () Int)

(declare-fun forall!430 (List!2586 Int) Bool)

(assert (=> d!35740 (= lt!43502 (forall!430 rules!1920 lambda!3780))))

(assert (=> d!35740 (= (rulesValid!118 thiss!17480 rules!1920) lt!43502)))

(declare-fun bs!13597 () Bool)

(assert (= bs!13597 d!35740))

(assert (=> bs!13597 m!132387))

(declare-fun m!133065 () Bool)

(assert (=> bs!13597 m!133065))

(assert (=> d!35436 d!35740))

(declare-fun d!35742 () Bool)

(assert (=> d!35742 (= (inv!3369 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))) (isBalanced!201 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))))))

(declare-fun bs!13598 () Bool)

(assert (= bs!13598 d!35742))

(declare-fun m!133067 () Bool)

(assert (=> bs!13598 m!133067))

(assert (=> tb!4843 d!35742))

(declare-fun b!149280 () Bool)

(declare-fun e!88964 () List!2583)

(assert (=> b!149280 (= e!88964 (Cons!2573 (h!7970 call!5898) (++!548 (t!24455 call!5898) lt!43067)))))

(declare-fun b!149282 () Bool)

(declare-fun lt!43503 () List!2583)

(declare-fun e!88963 () Bool)

(assert (=> b!149282 (= e!88963 (or (not (= lt!43067 Nil!2573)) (= lt!43503 call!5898)))))

(declare-fun d!35744 () Bool)

(assert (=> d!35744 e!88963))

(declare-fun res!68549 () Bool)

(assert (=> d!35744 (=> (not res!68549) (not e!88963))))

(assert (=> d!35744 (= res!68549 (= (content!358 lt!43503) (set.union (content!358 call!5898) (content!358 lt!43067))))))

(assert (=> d!35744 (= lt!43503 e!88964)))

(declare-fun c!30344 () Bool)

(assert (=> d!35744 (= c!30344 (is-Nil!2573 call!5898))))

(assert (=> d!35744 (= (++!548 call!5898 lt!43067) lt!43503)))

(declare-fun b!149279 () Bool)

(assert (=> b!149279 (= e!88964 lt!43067)))

(declare-fun b!149281 () Bool)

(declare-fun res!68550 () Bool)

(assert (=> b!149281 (=> (not res!68550) (not e!88963))))

(assert (=> b!149281 (= res!68550 (= (size!2215 lt!43503) (+ (size!2215 call!5898) (size!2215 lt!43067))))))

(assert (= (and d!35744 c!30344) b!149279))

(assert (= (and d!35744 (not c!30344)) b!149280))

(assert (= (and d!35744 res!68549) b!149281))

(assert (= (and b!149281 res!68550) b!149282))

(declare-fun m!133069 () Bool)

(assert (=> b!149280 m!133069))

(declare-fun m!133071 () Bool)

(assert (=> d!35744 m!133071))

(declare-fun m!133073 () Bool)

(assert (=> d!35744 m!133073))

(assert (=> d!35744 m!132315))

(declare-fun m!133075 () Bool)

(assert (=> b!149281 m!133075))

(declare-fun m!133077 () Bool)

(assert (=> b!149281 m!133077))

(assert (=> b!149281 m!132321))

(assert (=> b!148479 d!35744))

(assert (=> b!148417 d!35668))

(declare-fun bs!13599 () Bool)

(declare-fun d!35746 () Bool)

(assert (= bs!13599 (and d!35746 d!35430)))

(declare-fun lambda!3781 () Int)

(assert (=> bs!13599 (= lambda!3781 lambda!3739)))

(declare-fun bs!13600 () Bool)

(assert (= bs!13600 (and d!35746 b!148415)))

(assert (=> bs!13600 (= lambda!3781 lambda!3728)))

(declare-fun bs!13601 () Bool)

(assert (= bs!13601 (and d!35746 b!148998)))

(assert (=> bs!13601 (= lambda!3781 lambda!3763)))

(declare-fun bs!13602 () Bool)

(assert (= bs!13602 (and d!35746 d!35598)))

(assert (=> bs!13602 (not (= lambda!3781 lambda!3762))))

(declare-fun bs!13603 () Bool)

(assert (= bs!13603 (and d!35746 b!148873)))

(assert (=> bs!13603 (= lambda!3781 lambda!3761)))

(declare-fun bs!13604 () Bool)

(assert (= bs!13604 (and d!35746 b!148478)))

(assert (=> bs!13604 (= lambda!3781 lambda!3736)))

(declare-fun bs!13605 () Bool)

(assert (= bs!13605 (and d!35746 d!35536)))

(assert (=> bs!13605 (= lambda!3781 lambda!3760)))

(declare-fun bs!13606 () Bool)

(assert (= bs!13606 (and d!35746 b!149136)))

(assert (=> bs!13606 (= lambda!3781 lambda!3768)))

(declare-fun bs!13607 () Bool)

(assert (= bs!13607 (and d!35746 b!148316)))

(assert (=> bs!13607 (not (= lambda!3781 lambda!3719))))

(declare-fun bs!13608 () Bool)

(assert (= bs!13608 (and d!35746 d!35450)))

(assert (=> bs!13608 (= lambda!3781 lambda!3750)))

(declare-fun bs!13609 () Bool)

(assert (= bs!13609 (and d!35746 d!35408)))

(assert (=> bs!13609 (not (= lambda!3781 lambda!3727))))

(declare-fun b!149287 () Bool)

(declare-fun e!88969 () Bool)

(assert (=> b!149287 (= e!88969 true)))

(declare-fun b!149286 () Bool)

(declare-fun e!88968 () Bool)

(assert (=> b!149286 (= e!88968 e!88969)))

(declare-fun b!149285 () Bool)

(declare-fun e!88967 () Bool)

(assert (=> b!149285 (= e!88967 e!88968)))

(assert (=> d!35746 e!88967))

(assert (= b!149286 b!149287))

(assert (= b!149285 b!149286))

(assert (= (and d!35746 (is-Cons!2576 rules!1920)) b!149285))

(assert (=> b!149287 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3781))))

(assert (=> b!149287 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 rules!1920)))) (dynLambda!883 order!1265 lambda!3781))))

(assert (=> d!35746 true))

(declare-fun lt!43504 () Bool)

(assert (=> d!35746 (= lt!43504 (forall!424 (t!24457 (t!24457 tokens!465)) lambda!3781))))

(declare-fun e!88966 () Bool)

(assert (=> d!35746 (= lt!43504 e!88966)))

(declare-fun res!68552 () Bool)

(assert (=> d!35746 (=> res!68552 e!88966)))

(assert (=> d!35746 (= res!68552 (not (is-Cons!2575 (t!24457 (t!24457 tokens!465)))))))

(assert (=> d!35746 (not (isEmpty!1007 rules!1920))))

(assert (=> d!35746 (= (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 (t!24457 tokens!465))) lt!43504)))

(declare-fun b!149283 () Bool)

(declare-fun e!88965 () Bool)

(assert (=> b!149283 (= e!88966 e!88965)))

(declare-fun res!68551 () Bool)

(assert (=> b!149283 (=> (not res!68551) (not e!88965))))

(assert (=> b!149283 (= res!68551 (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (t!24457 (t!24457 tokens!465)))))))

(declare-fun b!149284 () Bool)

(assert (=> b!149284 (= e!88965 (rulesProduceEachTokenIndividuallyList!72 thiss!17480 rules!1920 (t!24457 (t!24457 (t!24457 tokens!465)))))))

(assert (= (and d!35746 (not res!68552)) b!149283))

(assert (= (and b!149283 res!68551) b!149284))

(declare-fun m!133079 () Bool)

(assert (=> d!35746 m!133079))

(assert (=> d!35746 m!131581))

(declare-fun m!133081 () Bool)

(assert (=> b!149283 m!133081))

(declare-fun m!133083 () Bool)

(assert (=> b!149284 m!133083))

(assert (=> b!148495 d!35746))

(declare-fun d!35748 () Bool)

(assert (=> d!35748 (= (list!894 (ite c!30174 call!5895 e!88427)) (list!896 (c!30145 (ite c!30174 call!5895 e!88427))))))

(declare-fun bs!13610 () Bool)

(assert (= bs!13610 d!35748))

(declare-fun m!133085 () Bool)

(assert (=> bs!13610 m!133085))

(assert (=> bm!5889 d!35748))

(declare-fun b!149289 () Bool)

(declare-fun res!68556 () Bool)

(declare-fun e!88970 () Bool)

(assert (=> b!149289 (=> (not res!68556) (not e!88970))))

(assert (=> b!149289 (= res!68556 (<= (height!73 (++!551 (c!30145 call!5881) (c!30145 lt!43047))) (+ (max!0 (height!73 (c!30145 call!5881)) (height!73 (c!30145 lt!43047))) 1)))))

(declare-fun d!35750 () Bool)

(assert (=> d!35750 e!88970))

(declare-fun res!68553 () Bool)

(assert (=> d!35750 (=> (not res!68553) (not e!88970))))

(assert (=> d!35750 (= res!68553 (appendAssocInst!14 (c!30145 call!5881) (c!30145 lt!43047)))))

(declare-fun lt!43505 () BalanceConc!1428)

(assert (=> d!35750 (= lt!43505 (BalanceConc!1429 (++!551 (c!30145 call!5881) (c!30145 lt!43047))))))

(assert (=> d!35750 (= (++!547 call!5881 lt!43047) lt!43505)))

(declare-fun b!149288 () Bool)

(declare-fun res!68554 () Bool)

(assert (=> b!149288 (=> (not res!68554) (not e!88970))))

(assert (=> b!149288 (= res!68554 (isBalanced!201 (++!551 (c!30145 call!5881) (c!30145 lt!43047))))))

(declare-fun b!149291 () Bool)

(assert (=> b!149291 (= e!88970 (= (list!894 lt!43505) (++!548 (list!894 call!5881) (list!894 lt!43047))))))

(declare-fun b!149290 () Bool)

(declare-fun res!68555 () Bool)

(assert (=> b!149290 (=> (not res!68555) (not e!88970))))

(assert (=> b!149290 (= res!68555 (>= (height!73 (++!551 (c!30145 call!5881) (c!30145 lt!43047))) (max!0 (height!73 (c!30145 call!5881)) (height!73 (c!30145 lt!43047)))))))

(assert (= (and d!35750 res!68553) b!149288))

(assert (= (and b!149288 res!68554) b!149289))

(assert (= (and b!149289 res!68556) b!149290))

(assert (= (and b!149290 res!68555) b!149291))

(declare-fun m!133087 () Bool)

(assert (=> b!149291 m!133087))

(declare-fun m!133089 () Bool)

(assert (=> b!149291 m!133089))

(assert (=> b!149291 m!131725))

(assert (=> b!149291 m!133089))

(assert (=> b!149291 m!131725))

(declare-fun m!133091 () Bool)

(assert (=> b!149291 m!133091))

(declare-fun m!133093 () Bool)

(assert (=> d!35750 m!133093))

(declare-fun m!133095 () Bool)

(assert (=> d!35750 m!133095))

(assert (=> b!149288 m!133095))

(assert (=> b!149288 m!133095))

(declare-fun m!133097 () Bool)

(assert (=> b!149288 m!133097))

(assert (=> b!149289 m!133095))

(declare-fun m!133099 () Bool)

(assert (=> b!149289 m!133099))

(assert (=> b!149289 m!132589))

(declare-fun m!133101 () Bool)

(assert (=> b!149289 m!133101))

(assert (=> b!149289 m!132589))

(declare-fun m!133103 () Bool)

(assert (=> b!149289 m!133103))

(assert (=> b!149289 m!133101))

(assert (=> b!149289 m!133095))

(assert (=> b!149290 m!133095))

(assert (=> b!149290 m!133099))

(assert (=> b!149290 m!132589))

(assert (=> b!149290 m!133101))

(assert (=> b!149290 m!132589))

(assert (=> b!149290 m!133103))

(assert (=> b!149290 m!133101))

(assert (=> b!149290 m!133095))

(assert (=> b!148416 d!35750))

(declare-fun d!35752 () Bool)

(assert (=> d!35752 (= (list!894 call!5894) (list!896 (c!30145 call!5894)))))

(declare-fun bs!13611 () Bool)

(assert (= bs!13611 d!35752))

(declare-fun m!133105 () Bool)

(assert (=> bs!13611 m!133105))

(assert (=> b!148477 d!35752))

(declare-fun b!149293 () Bool)

(declare-fun res!68560 () Bool)

(declare-fun e!88971 () Bool)

(assert (=> b!149293 (=> (not res!68560) (not e!88971))))

(assert (=> b!149293 (= res!68560 (<= (height!73 (++!551 (c!30145 call!5882) (c!30145 (ite c!30158 lt!43047 call!5880)))) (+ (max!0 (height!73 (c!30145 call!5882)) (height!73 (c!30145 (ite c!30158 lt!43047 call!5880)))) 1)))))

(declare-fun d!35754 () Bool)

(assert (=> d!35754 e!88971))

(declare-fun res!68557 () Bool)

(assert (=> d!35754 (=> (not res!68557) (not e!88971))))

(assert (=> d!35754 (= res!68557 (appendAssocInst!14 (c!30145 call!5882) (c!30145 (ite c!30158 lt!43047 call!5880))))))

(declare-fun lt!43506 () BalanceConc!1428)

(assert (=> d!35754 (= lt!43506 (BalanceConc!1429 (++!551 (c!30145 call!5882) (c!30145 (ite c!30158 lt!43047 call!5880)))))))

(assert (=> d!35754 (= (++!547 call!5882 (ite c!30158 lt!43047 call!5880)) lt!43506)))

(declare-fun b!149292 () Bool)

(declare-fun res!68558 () Bool)

(assert (=> b!149292 (=> (not res!68558) (not e!88971))))

(assert (=> b!149292 (= res!68558 (isBalanced!201 (++!551 (c!30145 call!5882) (c!30145 (ite c!30158 lt!43047 call!5880)))))))

(declare-fun b!149295 () Bool)

(assert (=> b!149295 (= e!88971 (= (list!894 lt!43506) (++!548 (list!894 call!5882) (list!894 (ite c!30158 lt!43047 call!5880)))))))

(declare-fun b!149294 () Bool)

(declare-fun res!68559 () Bool)

(assert (=> b!149294 (=> (not res!68559) (not e!88971))))

(assert (=> b!149294 (= res!68559 (>= (height!73 (++!551 (c!30145 call!5882) (c!30145 (ite c!30158 lt!43047 call!5880)))) (max!0 (height!73 (c!30145 call!5882)) (height!73 (c!30145 (ite c!30158 lt!43047 call!5880))))))))

(assert (= (and d!35754 res!68557) b!149292))

(assert (= (and b!149292 res!68558) b!149293))

(assert (= (and b!149293 res!68560) b!149294))

(assert (= (and b!149294 res!68559) b!149295))

(declare-fun m!133107 () Bool)

(assert (=> b!149295 m!133107))

(declare-fun m!133109 () Bool)

(assert (=> b!149295 m!133109))

(declare-fun m!133111 () Bool)

(assert (=> b!149295 m!133111))

(assert (=> b!149295 m!133109))

(assert (=> b!149295 m!133111))

(declare-fun m!133113 () Bool)

(assert (=> b!149295 m!133113))

(declare-fun m!133115 () Bool)

(assert (=> d!35754 m!133115))

(declare-fun m!133117 () Bool)

(assert (=> d!35754 m!133117))

(assert (=> b!149292 m!133117))

(assert (=> b!149292 m!133117))

(declare-fun m!133119 () Bool)

(assert (=> b!149292 m!133119))

(assert (=> b!149293 m!133117))

(declare-fun m!133121 () Bool)

(assert (=> b!149293 m!133121))

(declare-fun m!133123 () Bool)

(assert (=> b!149293 m!133123))

(declare-fun m!133125 () Bool)

(assert (=> b!149293 m!133125))

(assert (=> b!149293 m!133123))

(declare-fun m!133127 () Bool)

(assert (=> b!149293 m!133127))

(assert (=> b!149293 m!133125))

(assert (=> b!149293 m!133117))

(assert (=> b!149294 m!133117))

(assert (=> b!149294 m!133121))

(assert (=> b!149294 m!133123))

(assert (=> b!149294 m!133125))

(assert (=> b!149294 m!133123))

(assert (=> b!149294 m!133127))

(assert (=> b!149294 m!133125))

(assert (=> b!149294 m!133117))

(assert (=> bm!5876 d!35754))

(declare-fun d!35756 () Bool)

(assert (=> d!35756 (= (list!894 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))) (list!896 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))))))

(declare-fun bs!13612 () Bool)

(assert (= bs!13612 d!35756))

(declare-fun m!133129 () Bool)

(assert (=> bs!13612 m!133129))

(assert (=> b!148592 d!35756))

(declare-fun d!35758 () Bool)

(assert (=> d!35758 (= (inv!15 (value!16971 separatorToken!170)) (= (charsToBigInt!0 (text!3711 (value!16971 separatorToken!170)) 0) (value!16966 (value!16971 separatorToken!170))))))

(declare-fun bs!13613 () Bool)

(assert (= bs!13613 d!35758))

(declare-fun m!133131 () Bool)

(assert (=> bs!13613 m!133131))

(assert (=> b!148540 d!35758))

(declare-fun d!35760 () Bool)

(assert (=> d!35760 (= (inv!3361 (tag!622 (h!7973 (t!24458 rules!1920)))) (= (mod (str.len (value!16970 (tag!622 (h!7973 (t!24458 rules!1920))))) 2) 0))))

(assert (=> b!148695 d!35760))

(declare-fun d!35762 () Bool)

(declare-fun res!68561 () Bool)

(declare-fun e!88972 () Bool)

(assert (=> d!35762 (=> (not res!68561) (not e!88972))))

(assert (=> d!35762 (= res!68561 (semiInverseModEq!152 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))))))

(assert (=> d!35762 (= (inv!3364 (transformation!444 (h!7973 (t!24458 rules!1920)))) e!88972)))

(declare-fun b!149296 () Bool)

(assert (=> b!149296 (= e!88972 (equivClasses!135 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))))))

(assert (= (and d!35762 res!68561) b!149296))

(declare-fun m!133133 () Bool)

(assert (=> d!35762 m!133133))

(declare-fun m!133135 () Bool)

(assert (=> b!149296 m!133135))

(assert (=> b!148695 d!35762))

(declare-fun d!35764 () Bool)

(declare-fun lt!43507 () Int)

(assert (=> d!35764 (>= lt!43507 0)))

(declare-fun e!88973 () Int)

(assert (=> d!35764 (= lt!43507 e!88973)))

(declare-fun c!30345 () Bool)

(assert (=> d!35764 (= c!30345 (is-Nil!2573 (originalCharacters!487 (h!7972 tokens!465))))))

(assert (=> d!35764 (= (size!2215 (originalCharacters!487 (h!7972 tokens!465))) lt!43507)))

(declare-fun b!149297 () Bool)

(assert (=> b!149297 (= e!88973 0)))

(declare-fun b!149298 () Bool)

(assert (=> b!149298 (= e!88973 (+ 1 (size!2215 (t!24455 (originalCharacters!487 (h!7972 tokens!465))))))))

(assert (= (and d!35764 c!30345) b!149297))

(assert (= (and d!35764 (not c!30345)) b!149298))

(declare-fun m!133137 () Bool)

(assert (=> b!149298 m!133137))

(assert (=> b!148549 d!35764))

(declare-fun d!35766 () Bool)

(declare-fun lt!43508 () Bool)

(assert (=> d!35766 (= lt!43508 (isEmpty!1009 (list!894 (_2!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))))

(assert (=> d!35766 (= lt!43508 (isEmpty!1014 (c!30145 (_2!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170)))))))))

(assert (=> d!35766 (= (isEmpty!1010 (_2!1484 (lex!162 thiss!17480 rules!1920 (print!87 thiss!17480 (singletonSeq!20 separatorToken!170))))) lt!43508)))

(declare-fun bs!13614 () Bool)

(assert (= bs!13614 d!35766))

(declare-fun m!133139 () Bool)

(assert (=> bs!13614 m!133139))

(assert (=> bs!13614 m!133139))

(declare-fun m!133141 () Bool)

(assert (=> bs!13614 m!133141))

(declare-fun m!133143 () Bool)

(assert (=> bs!13614 m!133143))

(assert (=> b!148651 d!35766))

(assert (=> b!148651 d!35710))

(assert (=> b!148651 d!35738))

(assert (=> b!148651 d!35704))

(declare-fun bs!13615 () Bool)

(declare-fun d!35768 () Bool)

(assert (= bs!13615 (and d!35768 d!35534)))

(declare-fun lambda!3782 () Int)

(assert (=> bs!13615 (= (and (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (h!7973 rules!1920)))) (= (toValue!1075 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (h!7973 rules!1920))))) (= lambda!3782 lambda!3759))))

(declare-fun bs!13616 () Bool)

(assert (= bs!13616 (and d!35768 d!35640)))

(assert (=> bs!13616 (= (and (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) (= (toValue!1075 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (= lambda!3782 lambda!3767))))

(assert (=> d!35768 true))

(assert (=> d!35768 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) (dynLambda!892 order!1275 lambda!3782))))

(assert (=> d!35768 true))

(assert (=> d!35768 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (dynLambda!892 order!1275 lambda!3782))))

(assert (=> d!35768 (= (semiInverseModEq!152 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toValue!1075 (transformation!444 (rule!951 separatorToken!170)))) (Forall!119 lambda!3782))))

(declare-fun bs!13617 () Bool)

(assert (= bs!13617 d!35768))

(declare-fun m!133145 () Bool)

(assert (=> bs!13617 m!133145))

(assert (=> d!35472 d!35768))

(declare-fun b!149299 () Bool)

(declare-fun e!88974 () Bool)

(assert (=> b!149299 (= e!88974 (inv!17 (value!16971 (h!7972 (t!24457 tokens!465)))))))

(declare-fun b!149300 () Bool)

(declare-fun e!88975 () Bool)

(assert (=> b!149300 (= e!88975 (inv!15 (value!16971 (h!7972 (t!24457 tokens!465)))))))

(declare-fun b!149301 () Bool)

(declare-fun res!68562 () Bool)

(assert (=> b!149301 (=> res!68562 e!88975)))

(assert (=> b!149301 (= res!68562 (not (is-IntegerValue!1400 (value!16971 (h!7972 (t!24457 tokens!465))))))))

(assert (=> b!149301 (= e!88974 e!88975)))

(declare-fun b!149302 () Bool)

(declare-fun e!88976 () Bool)

(assert (=> b!149302 (= e!88976 e!88974)))

(declare-fun c!30347 () Bool)

(assert (=> b!149302 (= c!30347 (is-IntegerValue!1399 (value!16971 (h!7972 (t!24457 tokens!465)))))))

(declare-fun b!149303 () Bool)

(assert (=> b!149303 (= e!88976 (inv!16 (value!16971 (h!7972 (t!24457 tokens!465)))))))

(declare-fun d!35770 () Bool)

(declare-fun c!30346 () Bool)

(assert (=> d!35770 (= c!30346 (is-IntegerValue!1398 (value!16971 (h!7972 (t!24457 tokens!465)))))))

(assert (=> d!35770 (= (inv!21 (value!16971 (h!7972 (t!24457 tokens!465)))) e!88976)))

(assert (= (and d!35770 c!30346) b!149303))

(assert (= (and d!35770 (not c!30346)) b!149302))

(assert (= (and b!149302 c!30347) b!149299))

(assert (= (and b!149302 (not c!30347)) b!149301))

(assert (= (and b!149301 (not res!68562)) b!149300))

(declare-fun m!133147 () Bool)

(assert (=> b!149299 m!133147))

(declare-fun m!133149 () Bool)

(assert (=> b!149300 m!133149))

(declare-fun m!133151 () Bool)

(assert (=> b!149303 m!133151))

(assert (=> b!148668 d!35770))

(declare-fun d!35772 () Bool)

(declare-fun res!68567 () Bool)

(declare-fun e!88983 () Bool)

(assert (=> d!35772 (=> res!68567 e!88983)))

(assert (=> d!35772 (= res!68567 (is-Nil!2576 rules!1920))))

(assert (=> d!35772 (= (noDuplicateTag!118 thiss!17480 rules!1920 Nil!2581) e!88983)))

(declare-fun b!149312 () Bool)

(declare-fun e!88984 () Bool)

(assert (=> b!149312 (= e!88983 e!88984)))

(declare-fun res!68568 () Bool)

(assert (=> b!149312 (=> (not res!68568) (not e!88984))))

(declare-fun contains!413 (List!2591 String!3412) Bool)

(assert (=> b!149312 (= res!68568 (not (contains!413 Nil!2581 (tag!622 (h!7973 rules!1920)))))))

(declare-fun b!149313 () Bool)

(assert (=> b!149313 (= e!88984 (noDuplicateTag!118 thiss!17480 (t!24458 rules!1920) (Cons!2581 (tag!622 (h!7973 rules!1920)) Nil!2581)))))

(assert (= (and d!35772 (not res!68567)) b!149312))

(assert (= (and b!149312 res!68568) b!149313))

(declare-fun m!133153 () Bool)

(assert (=> b!149312 m!133153))

(declare-fun m!133155 () Bool)

(assert (=> b!149313 m!133155))

(assert (=> b!148524 d!35772))

(declare-fun d!35774 () Bool)

(assert (=> d!35774 (= (isEmpty!1009 (originalCharacters!487 separatorToken!170)) (is-Nil!2573 (originalCharacters!487 separatorToken!170)))))

(assert (=> d!35468 d!35774))

(declare-fun e!88987 () Bool)

(assert (=> b!148698 (= tp!77876 e!88987)))

(declare-fun b!149317 () Bool)

(declare-fun tp!77952 () Bool)

(declare-fun tp!77951 () Bool)

(assert (=> b!149317 (= e!88987 (and tp!77952 tp!77951))))

(declare-fun b!149318 () Bool)

(declare-fun tp!77954 () Bool)

(assert (=> b!149318 (= e!88987 tp!77954)))

(declare-fun b!149316 () Bool)

(assert (=> b!149316 (= e!88987 tp_is_empty!1601)))

(declare-fun b!149319 () Bool)

(declare-fun tp!77953 () Bool)

(declare-fun tp!77950 () Bool)

(assert (=> b!149319 (= e!88987 (and tp!77953 tp!77950))))

(assert (= (and b!148698 (is-ElementMatch!668 (regOne!1848 (regex!444 (h!7973 rules!1920))))) b!149316))

(assert (= (and b!148698 (is-Concat!1135 (regOne!1848 (regex!444 (h!7973 rules!1920))))) b!149317))

(assert (= (and b!148698 (is-Star!668 (regOne!1848 (regex!444 (h!7973 rules!1920))))) b!149318))

(assert (= (and b!148698 (is-Union!668 (regOne!1848 (regex!444 (h!7973 rules!1920))))) b!149319))

(declare-fun e!88994 () Bool)

(assert (=> b!148698 (= tp!77875 e!88994)))

(declare-fun b!149329 () Bool)

(declare-fun tp!77957 () Bool)

(declare-fun tp!77956 () Bool)

(assert (=> b!149329 (= e!88994 (and tp!77957 tp!77956))))

(declare-fun b!149330 () Bool)

(declare-fun tp!77959 () Bool)

(assert (=> b!149330 (= e!88994 tp!77959)))

(declare-fun b!149328 () Bool)

(assert (=> b!149328 (= e!88994 tp_is_empty!1601)))

(declare-fun b!149331 () Bool)

(declare-fun tp!77958 () Bool)

(declare-fun tp!77955 () Bool)

(assert (=> b!149331 (= e!88994 (and tp!77958 tp!77955))))

(assert (= (and b!148698 (is-ElementMatch!668 (regTwo!1848 (regex!444 (h!7973 rules!1920))))) b!149328))

(assert (= (and b!148698 (is-Concat!1135 (regTwo!1848 (regex!444 (h!7973 rules!1920))))) b!149329))

(assert (= (and b!148698 (is-Star!668 (regTwo!1848 (regex!444 (h!7973 rules!1920))))) b!149330))

(assert (= (and b!148698 (is-Union!668 (regTwo!1848 (regex!444 (h!7973 rules!1920))))) b!149331))

(declare-fun b!149337 () Bool)

(declare-fun b_free!5349 () Bool)

(declare-fun b_next!5349 () Bool)

(assert (=> b!149337 (= b_free!5349 (not b_next!5349))))

(declare-fun tp!77962 () Bool)

(declare-fun b_and!8431 () Bool)

(assert (=> b!149337 (= tp!77962 b_and!8431)))

(declare-fun b_free!5351 () Bool)

(declare-fun b_next!5351 () Bool)

(assert (=> b!149337 (= b_free!5351 (not b_next!5351))))

(declare-fun t!24596 () Bool)

(declare-fun tb!4937 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24596) tb!4937))

(declare-fun result!7348 () Bool)

(assert (= result!7348 result!7308))

(assert (=> d!35612 t!24596))

(declare-fun t!24598 () Bool)

(declare-fun tb!4939 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24598) tb!4939))

(declare-fun result!7350 () Bool)

(assert (= result!7350 result!7288))

(assert (=> b!148808 t!24598))

(declare-fun t!24600 () Bool)

(declare-fun tb!4941 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24600) tb!4941))

(declare-fun result!7352 () Bool)

(assert (= result!7352 result!7228))

(assert (=> b!148592 t!24600))

(declare-fun t!24602 () Bool)

(declare-fun tb!4943 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24602) tb!4943))

(declare-fun result!7354 () Bool)

(assert (= result!7354 result!7236))

(assert (=> d!35532 t!24602))

(assert (=> d!35434 t!24600))

(declare-fun t!24604 () Bool)

(declare-fun tb!4945 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24604) tb!4945))

(declare-fun result!7356 () Bool)

(assert (= result!7356 result!7298))

(assert (=> d!35550 t!24604))

(assert (=> b!148548 t!24602))

(declare-fun t!24606 () Bool)

(declare-fun tb!4947 () Bool)

(assert (=> (and b!149337 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24606) tb!4947))

(declare-fun result!7358 () Bool)

(assert (= result!7358 result!7318))

(assert (=> d!35648 t!24606))

(declare-fun b_and!8433 () Bool)

(declare-fun tp!77964 () Bool)

(assert (=> b!149337 (= tp!77964 (and (=> t!24596 result!7348) (=> t!24600 result!7352) (=> t!24604 result!7356) (=> t!24606 result!7358) (=> t!24598 result!7350) (=> t!24602 result!7354) b_and!8433))))

(declare-fun e!88997 () Bool)

(assert (=> b!148667 (= tp!77842 e!88997)))

(declare-fun tp!77960 () Bool)

(declare-fun b!149336 () Bool)

(declare-fun e!89002 () Bool)

(declare-fun e!88998 () Bool)

(assert (=> b!149336 (= e!89002 (and tp!77960 (inv!3361 (tag!622 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (inv!3364 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) e!88998))))

(declare-fun b!149334 () Bool)

(declare-fun e!89001 () Bool)

(declare-fun tp!77961 () Bool)

(assert (=> b!149334 (= e!88997 (and (inv!3365 (h!7972 (t!24457 (t!24457 tokens!465)))) e!89001 tp!77961))))

(declare-fun tp!77963 () Bool)

(declare-fun b!149335 () Bool)

(assert (=> b!149335 (= e!89001 (and (inv!21 (value!16971 (h!7972 (t!24457 (t!24457 tokens!465))))) e!89002 tp!77963))))

(assert (=> b!149337 (= e!88998 (and tp!77962 tp!77964))))

(assert (= b!149336 b!149337))

(assert (= b!149335 b!149336))

(assert (= b!149334 b!149335))

(assert (= (and b!148667 (is-Cons!2575 (t!24457 (t!24457 tokens!465)))) b!149334))

(declare-fun m!133157 () Bool)

(assert (=> b!149336 m!133157))

(declare-fun m!133159 () Bool)

(assert (=> b!149336 m!133159))

(declare-fun m!133161 () Bool)

(assert (=> b!149334 m!133161))

(declare-fun m!133163 () Bool)

(assert (=> b!149335 m!133163))

(declare-fun b!149338 () Bool)

(declare-fun e!89003 () Bool)

(declare-fun tp!77965 () Bool)

(assert (=> b!149338 (= e!89003 (and tp_is_empty!1601 tp!77965))))

(assert (=> b!148671 (= tp!77846 e!89003)))

(assert (= (and b!148671 (is-Cons!2573 (t!24455 (originalCharacters!487 (h!7972 tokens!465))))) b!149338))

(declare-fun b!149341 () Bool)

(declare-fun e!89006 () Bool)

(assert (=> b!149341 (= e!89006 true)))

(declare-fun b!149340 () Bool)

(declare-fun e!89005 () Bool)

(assert (=> b!149340 (= e!89005 e!89006)))

(declare-fun b!149339 () Bool)

(declare-fun e!89004 () Bool)

(assert (=> b!149339 (= e!89004 e!89005)))

(assert (=> b!148579 e!89004))

(assert (= b!149340 b!149341))

(assert (= b!149339 b!149340))

(assert (= (and b!148579 (is-Cons!2576 (t!24458 rules!1920))) b!149339))

(assert (=> b!149341 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3750))))

(assert (=> b!149341 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3750))))

(declare-fun b!149342 () Bool)

(declare-fun e!89007 () Bool)

(declare-fun tp!77966 () Bool)

(assert (=> b!149342 (= e!89007 (and tp_is_empty!1601 tp!77966))))

(assert (=> b!148656 (= tp!77830 e!89007)))

(assert (= (and b!148656 (is-Cons!2573 (t!24455 (originalCharacters!487 separatorToken!170)))) b!149342))

(declare-fun tp!77975 () Bool)

(declare-fun e!89013 () Bool)

(declare-fun tp!77973 () Bool)

(declare-fun b!149351 () Bool)

(assert (=> b!149351 (= e!89013 (and (inv!3368 (left!1943 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))) tp!77975 (inv!3368 (right!2273 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))) tp!77973))))

(declare-fun b!149353 () Bool)

(declare-fun e!89012 () Bool)

(declare-fun tp!77974 () Bool)

(assert (=> b!149353 (= e!89012 tp!77974)))

(declare-fun b!149352 () Bool)

(declare-fun inv!3376 (IArray!1421) Bool)

(assert (=> b!149352 (= e!89013 (and (inv!3376 (xs!3305 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))) e!89012))))

(assert (=> b!148550 (= tp!77827 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465))))) e!89013))))

(assert (= (and b!148550 (is-Node!710 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))) b!149351))

(assert (= b!149352 b!149353))

(assert (= (and b!148550 (is-Leaf!1272 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (value!16971 (h!7972 tokens!465)))))) b!149352))

(declare-fun m!133165 () Bool)

(assert (=> b!149351 m!133165))

(declare-fun m!133167 () Bool)

(assert (=> b!149351 m!133167))

(declare-fun m!133169 () Bool)

(assert (=> b!149352 m!133169))

(assert (=> b!148550 m!131815))

(declare-fun b!149356 () Bool)

(declare-fun e!89016 () Bool)

(assert (=> b!149356 (= e!89016 true)))

(declare-fun b!149355 () Bool)

(declare-fun e!89015 () Bool)

(assert (=> b!149355 (= e!89015 e!89016)))

(declare-fun b!149354 () Bool)

(declare-fun e!89014 () Bool)

(assert (=> b!149354 (= e!89014 e!89015)))

(assert (=> b!148496 e!89014))

(assert (= b!149355 b!149356))

(assert (= b!149354 b!149355))

(assert (= (and b!148496 (is-Cons!2576 (t!24458 rules!1920))) b!149354))

(assert (=> b!149356 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3739))))

(assert (=> b!149356 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3739))))

(declare-fun e!89017 () Bool)

(assert (=> b!148704 (= tp!77882 e!89017)))

(declare-fun b!149358 () Bool)

(declare-fun tp!77978 () Bool)

(declare-fun tp!77977 () Bool)

(assert (=> b!149358 (= e!89017 (and tp!77978 tp!77977))))

(declare-fun b!149359 () Bool)

(declare-fun tp!77980 () Bool)

(assert (=> b!149359 (= e!89017 tp!77980)))

(declare-fun b!149357 () Bool)

(assert (=> b!149357 (= e!89017 tp_is_empty!1601)))

(declare-fun b!149360 () Bool)

(declare-fun tp!77979 () Bool)

(declare-fun tp!77976 () Bool)

(assert (=> b!149360 (= e!89017 (and tp!77979 tp!77976))))

(assert (= (and b!148704 (is-ElementMatch!668 (regOne!1849 (regex!444 (rule!951 separatorToken!170))))) b!149357))

(assert (= (and b!148704 (is-Concat!1135 (regOne!1849 (regex!444 (rule!951 separatorToken!170))))) b!149358))

(assert (= (and b!148704 (is-Star!668 (regOne!1849 (regex!444 (rule!951 separatorToken!170))))) b!149359))

(assert (= (and b!148704 (is-Union!668 (regOne!1849 (regex!444 (rule!951 separatorToken!170))))) b!149360))

(declare-fun e!89018 () Bool)

(assert (=> b!148704 (= tp!77879 e!89018)))

(declare-fun b!149362 () Bool)

(declare-fun tp!77983 () Bool)

(declare-fun tp!77982 () Bool)

(assert (=> b!149362 (= e!89018 (and tp!77983 tp!77982))))

(declare-fun b!149363 () Bool)

(declare-fun tp!77985 () Bool)

(assert (=> b!149363 (= e!89018 tp!77985)))

(declare-fun b!149361 () Bool)

(assert (=> b!149361 (= e!89018 tp_is_empty!1601)))

(declare-fun b!149364 () Bool)

(declare-fun tp!77984 () Bool)

(declare-fun tp!77981 () Bool)

(assert (=> b!149364 (= e!89018 (and tp!77984 tp!77981))))

(assert (= (and b!148704 (is-ElementMatch!668 (regTwo!1849 (regex!444 (rule!951 separatorToken!170))))) b!149361))

(assert (= (and b!148704 (is-Concat!1135 (regTwo!1849 (regex!444 (rule!951 separatorToken!170))))) b!149362))

(assert (= (and b!148704 (is-Star!668 (regTwo!1849 (regex!444 (rule!951 separatorToken!170))))) b!149363))

(assert (= (and b!148704 (is-Union!668 (regTwo!1849 (regex!444 (rule!951 separatorToken!170))))) b!149364))

(declare-fun e!89019 () Bool)

(assert (=> b!148685 (= tp!77860 e!89019)))

(declare-fun b!149366 () Bool)

(declare-fun tp!77988 () Bool)

(declare-fun tp!77987 () Bool)

(assert (=> b!149366 (= e!89019 (and tp!77988 tp!77987))))

(declare-fun b!149367 () Bool)

(declare-fun tp!77990 () Bool)

(assert (=> b!149367 (= e!89019 tp!77990)))

(declare-fun b!149365 () Bool)

(assert (=> b!149365 (= e!89019 tp_is_empty!1601)))

(declare-fun b!149368 () Bool)

(declare-fun tp!77989 () Bool)

(declare-fun tp!77986 () Bool)

(assert (=> b!149368 (= e!89019 (and tp!77989 tp!77986))))

(assert (= (and b!148685 (is-ElementMatch!668 (regOne!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149365))

(assert (= (and b!148685 (is-Concat!1135 (regOne!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149366))

(assert (= (and b!148685 (is-Star!668 (regOne!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149367))

(assert (= (and b!148685 (is-Union!668 (regOne!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149368))

(declare-fun e!89020 () Bool)

(assert (=> b!148685 (= tp!77857 e!89020)))

(declare-fun b!149370 () Bool)

(declare-fun tp!77993 () Bool)

(declare-fun tp!77992 () Bool)

(assert (=> b!149370 (= e!89020 (and tp!77993 tp!77992))))

(declare-fun b!149371 () Bool)

(declare-fun tp!77995 () Bool)

(assert (=> b!149371 (= e!89020 tp!77995)))

(declare-fun b!149369 () Bool)

(assert (=> b!149369 (= e!89020 tp_is_empty!1601)))

(declare-fun b!149372 () Bool)

(declare-fun tp!77994 () Bool)

(declare-fun tp!77991 () Bool)

(assert (=> b!149372 (= e!89020 (and tp!77994 tp!77991))))

(assert (= (and b!148685 (is-ElementMatch!668 (regTwo!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149369))

(assert (= (and b!148685 (is-Concat!1135 (regTwo!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149370))

(assert (= (and b!148685 (is-Star!668 (regTwo!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149371))

(assert (= (and b!148685 (is-Union!668 (regTwo!1849 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149372))

(declare-fun e!89021 () Bool)

(assert (=> b!148703 (= tp!77883 e!89021)))

(declare-fun b!149374 () Bool)

(declare-fun tp!77998 () Bool)

(declare-fun tp!77997 () Bool)

(assert (=> b!149374 (= e!89021 (and tp!77998 tp!77997))))

(declare-fun b!149375 () Bool)

(declare-fun tp!78000 () Bool)

(assert (=> b!149375 (= e!89021 tp!78000)))

(declare-fun b!149373 () Bool)

(assert (=> b!149373 (= e!89021 tp_is_empty!1601)))

(declare-fun b!149376 () Bool)

(declare-fun tp!77999 () Bool)

(declare-fun tp!77996 () Bool)

(assert (=> b!149376 (= e!89021 (and tp!77999 tp!77996))))

(assert (= (and b!148703 (is-ElementMatch!668 (reg!997 (regex!444 (rule!951 separatorToken!170))))) b!149373))

(assert (= (and b!148703 (is-Concat!1135 (reg!997 (regex!444 (rule!951 separatorToken!170))))) b!149374))

(assert (= (and b!148703 (is-Star!668 (reg!997 (regex!444 (rule!951 separatorToken!170))))) b!149375))

(assert (= (and b!148703 (is-Union!668 (reg!997 (regex!444 (rule!951 separatorToken!170))))) b!149376))

(declare-fun b!149385 () Bool)

(declare-fun e!89030 () Bool)

(assert (=> b!149385 (= e!89030 true)))

(declare-fun b!149383 () Bool)

(declare-fun e!89029 () Bool)

(assert (=> b!149383 (= e!89029 e!89030)))

(declare-fun b!149381 () Bool)

(declare-fun e!89028 () Bool)

(assert (=> b!149381 (= e!89028 e!89029)))

(assert (=> b!148426 e!89028))

(assert (= b!149383 b!149385))

(assert (= b!149381 b!149383))

(assert (= (and b!148426 (is-Cons!2576 (t!24458 rules!1920))) b!149381))

(assert (=> b!149385 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3728))))

(assert (=> b!149385 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3728))))

(declare-fun e!89031 () Bool)

(assert (=> b!148684 (= tp!77861 e!89031)))

(declare-fun b!149389 () Bool)

(declare-fun tp!78003 () Bool)

(declare-fun tp!78002 () Bool)

(assert (=> b!149389 (= e!89031 (and tp!78003 tp!78002))))

(declare-fun b!149390 () Bool)

(declare-fun tp!78005 () Bool)

(assert (=> b!149390 (= e!89031 tp!78005)))

(declare-fun b!149388 () Bool)

(assert (=> b!149388 (= e!89031 tp_is_empty!1601)))

(declare-fun b!149391 () Bool)

(declare-fun tp!78004 () Bool)

(declare-fun tp!78001 () Bool)

(assert (=> b!149391 (= e!89031 (and tp!78004 tp!78001))))

(assert (= (and b!148684 (is-ElementMatch!668 (reg!997 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149388))

(assert (= (and b!148684 (is-Concat!1135 (reg!997 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149389))

(assert (= (and b!148684 (is-Star!668 (reg!997 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149390))

(assert (= (and b!148684 (is-Union!668 (reg!997 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149391))

(declare-fun e!89032 () Bool)

(assert (=> b!148702 (= tp!77881 e!89032)))

(declare-fun b!149393 () Bool)

(declare-fun tp!78008 () Bool)

(declare-fun tp!78007 () Bool)

(assert (=> b!149393 (= e!89032 (and tp!78008 tp!78007))))

(declare-fun b!149394 () Bool)

(declare-fun tp!78010 () Bool)

(assert (=> b!149394 (= e!89032 tp!78010)))

(declare-fun b!149392 () Bool)

(assert (=> b!149392 (= e!89032 tp_is_empty!1601)))

(declare-fun b!149395 () Bool)

(declare-fun tp!78009 () Bool)

(declare-fun tp!78006 () Bool)

(assert (=> b!149395 (= e!89032 (and tp!78009 tp!78006))))

(assert (= (and b!148702 (is-ElementMatch!668 (regOne!1848 (regex!444 (rule!951 separatorToken!170))))) b!149392))

(assert (= (and b!148702 (is-Concat!1135 (regOne!1848 (regex!444 (rule!951 separatorToken!170))))) b!149393))

(assert (= (and b!148702 (is-Star!668 (regOne!1848 (regex!444 (rule!951 separatorToken!170))))) b!149394))

(assert (= (and b!148702 (is-Union!668 (regOne!1848 (regex!444 (rule!951 separatorToken!170))))) b!149395))

(declare-fun e!89033 () Bool)

(assert (=> b!148702 (= tp!77880 e!89033)))

(declare-fun b!149397 () Bool)

(declare-fun tp!78013 () Bool)

(declare-fun tp!78012 () Bool)

(assert (=> b!149397 (= e!89033 (and tp!78013 tp!78012))))

(declare-fun b!149398 () Bool)

(declare-fun tp!78015 () Bool)

(assert (=> b!149398 (= e!89033 tp!78015)))

(declare-fun b!149396 () Bool)

(assert (=> b!149396 (= e!89033 tp_is_empty!1601)))

(declare-fun b!149399 () Bool)

(declare-fun tp!78014 () Bool)

(declare-fun tp!78011 () Bool)

(assert (=> b!149399 (= e!89033 (and tp!78014 tp!78011))))

(assert (= (and b!148702 (is-ElementMatch!668 (regTwo!1848 (regex!444 (rule!951 separatorToken!170))))) b!149396))

(assert (= (and b!148702 (is-Concat!1135 (regTwo!1848 (regex!444 (rule!951 separatorToken!170))))) b!149397))

(assert (= (and b!148702 (is-Star!668 (regTwo!1848 (regex!444 (rule!951 separatorToken!170))))) b!149398))

(assert (= (and b!148702 (is-Union!668 (regTwo!1848 (regex!444 (rule!951 separatorToken!170))))) b!149399))

(declare-fun e!89034 () Bool)

(assert (=> b!148683 (= tp!77859 e!89034)))

(declare-fun b!149401 () Bool)

(declare-fun tp!78018 () Bool)

(declare-fun tp!78017 () Bool)

(assert (=> b!149401 (= e!89034 (and tp!78018 tp!78017))))

(declare-fun b!149402 () Bool)

(declare-fun tp!78020 () Bool)

(assert (=> b!149402 (= e!89034 tp!78020)))

(declare-fun b!149400 () Bool)

(assert (=> b!149400 (= e!89034 tp_is_empty!1601)))

(declare-fun b!149403 () Bool)

(declare-fun tp!78019 () Bool)

(declare-fun tp!78016 () Bool)

(assert (=> b!149403 (= e!89034 (and tp!78019 tp!78016))))

(assert (= (and b!148683 (is-ElementMatch!668 (regOne!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149400))

(assert (= (and b!148683 (is-Concat!1135 (regOne!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149401))

(assert (= (and b!148683 (is-Star!668 (regOne!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149402))

(assert (= (and b!148683 (is-Union!668 (regOne!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149403))

(declare-fun e!89035 () Bool)

(assert (=> b!148683 (= tp!77858 e!89035)))

(declare-fun b!149405 () Bool)

(declare-fun tp!78023 () Bool)

(declare-fun tp!78022 () Bool)

(assert (=> b!149405 (= e!89035 (and tp!78023 tp!78022))))

(declare-fun b!149406 () Bool)

(declare-fun tp!78025 () Bool)

(assert (=> b!149406 (= e!89035 tp!78025)))

(declare-fun b!149404 () Bool)

(assert (=> b!149404 (= e!89035 tp_is_empty!1601)))

(declare-fun b!149407 () Bool)

(declare-fun tp!78024 () Bool)

(declare-fun tp!78021 () Bool)

(assert (=> b!149407 (= e!89035 (and tp!78024 tp!78021))))

(assert (= (and b!148683 (is-ElementMatch!668 (regTwo!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149404))

(assert (= (and b!148683 (is-Concat!1135 (regTwo!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149405))

(assert (= (and b!148683 (is-Star!668 (regTwo!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149406))

(assert (= (and b!148683 (is-Union!668 (regTwo!1848 (regex!444 (rule!951 (h!7972 tokens!465)))))) b!149407))

(declare-fun e!89036 () Bool)

(assert (=> b!148695 (= tp!77870 e!89036)))

(declare-fun b!149409 () Bool)

(declare-fun tp!78028 () Bool)

(declare-fun tp!78027 () Bool)

(assert (=> b!149409 (= e!89036 (and tp!78028 tp!78027))))

(declare-fun b!149410 () Bool)

(declare-fun tp!78030 () Bool)

(assert (=> b!149410 (= e!89036 tp!78030)))

(declare-fun b!149408 () Bool)

(assert (=> b!149408 (= e!89036 tp_is_empty!1601)))

(declare-fun b!149411 () Bool)

(declare-fun tp!78029 () Bool)

(declare-fun tp!78026 () Bool)

(assert (=> b!149411 (= e!89036 (and tp!78029 tp!78026))))

(assert (= (and b!148695 (is-ElementMatch!668 (regex!444 (h!7973 (t!24458 rules!1920))))) b!149408))

(assert (= (and b!148695 (is-Concat!1135 (regex!444 (h!7973 (t!24458 rules!1920))))) b!149409))

(assert (= (and b!148695 (is-Star!668 (regex!444 (h!7973 (t!24458 rules!1920))))) b!149410))

(assert (= (and b!148695 (is-Union!668 (regex!444 (h!7973 (t!24458 rules!1920))))) b!149411))

(declare-fun tp!78033 () Bool)

(declare-fun e!89038 () Bool)

(declare-fun b!149412 () Bool)

(declare-fun tp!78031 () Bool)

(assert (=> b!149412 (= e!89038 (and (inv!3368 (left!1943 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))) tp!78033 (inv!3368 (right!2273 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))) tp!78031))))

(declare-fun b!149414 () Bool)

(declare-fun e!89037 () Bool)

(declare-fun tp!78032 () Bool)

(assert (=> b!149414 (= e!89037 tp!78032)))

(declare-fun b!149413 () Bool)

(assert (=> b!149413 (= e!89038 (and (inv!3376 (xs!3305 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))) e!89037))))

(assert (=> b!148509 (= tp!77826 (and (inv!3368 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170)))) e!89038))))

(assert (= (and b!148509 (is-Node!710 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))) b!149412))

(assert (= b!149413 b!149414))

(assert (= (and b!148509 (is-Leaf!1272 (c!30145 (dynLambda!885 (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (value!16971 separatorToken!170))))) b!149413))

(declare-fun m!133173 () Bool)

(assert (=> b!149412 m!133173))

(declare-fun m!133177 () Bool)

(assert (=> b!149412 m!133177))

(declare-fun m!133179 () Bool)

(assert (=> b!149413 m!133179))

(assert (=> b!148509 m!131793))

(declare-fun b!149417 () Bool)

(declare-fun b_free!5353 () Bool)

(declare-fun b_next!5353 () Bool)

(assert (=> b!149417 (= b_free!5353 (not b_next!5353))))

(declare-fun tp!78036 () Bool)

(declare-fun b_and!8435 () Bool)

(assert (=> b!149417 (= tp!78036 b_and!8435)))

(declare-fun b_free!5355 () Bool)

(declare-fun b_next!5355 () Bool)

(assert (=> b!149417 (= b_free!5355 (not b_next!5355))))

(declare-fun tb!4949 () Bool)

(declare-fun t!24608 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (apply!327 lt!42996 0))))) t!24608) tb!4949))

(declare-fun result!7362 () Bool)

(assert (= result!7362 result!7308))

(assert (=> d!35612 t!24608))

(declare-fun tb!4951 () Bool)

(declare-fun t!24610 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) t!24610) tb!4951))

(declare-fun result!7364 () Bool)

(assert (= result!7364 result!7288))

(assert (=> b!148808 t!24610))

(declare-fun t!24612 () Bool)

(declare-fun tb!4953 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 separatorToken!170)))) t!24612) tb!4953))

(declare-fun result!7366 () Bool)

(assert (= result!7366 result!7228))

(assert (=> b!148592 t!24612))

(declare-fun tb!4955 () Bool)

(declare-fun t!24614 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465))))) t!24614) tb!4955))

(declare-fun result!7368 () Bool)

(assert (= result!7368 result!7236))

(assert (=> d!35532 t!24614))

(assert (=> d!35434 t!24612))

(declare-fun t!24616 () Bool)

(declare-fun tb!4957 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (ite c!30159 separatorToken!170 call!5883))))) t!24616) tb!4957))

(declare-fun result!7370 () Bool)

(assert (= result!7370 result!7298))

(assert (=> d!35550 t!24616))

(assert (=> b!148548 t!24614))

(declare-fun tb!4959 () Bool)

(declare-fun t!24618 () Bool)

(assert (=> (and b!149417 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (ite c!30158 call!5879 call!5883))))) t!24618) tb!4959))

(declare-fun result!7372 () Bool)

(assert (= result!7372 result!7318))

(assert (=> d!35648 t!24618))

(declare-fun b_and!8437 () Bool)

(declare-fun tp!78037 () Bool)

(assert (=> b!149417 (= tp!78037 (and (=> t!24614 result!7368) (=> t!24616 result!7370) (=> t!24610 result!7364) (=> t!24608 result!7362) (=> t!24612 result!7366) (=> t!24618 result!7372) b_and!8437))))

(declare-fun e!89042 () Bool)

(assert (=> b!149417 (= e!89042 (and tp!78036 tp!78037))))

(declare-fun tp!78034 () Bool)

(declare-fun e!89041 () Bool)

(declare-fun b!149416 () Bool)

(assert (=> b!149416 (= e!89041 (and tp!78034 (inv!3361 (tag!622 (h!7973 (t!24458 (t!24458 rules!1920))))) (inv!3364 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) e!89042))))

(declare-fun b!149415 () Bool)

(declare-fun e!89039 () Bool)

(declare-fun tp!78035 () Bool)

(assert (=> b!149415 (= e!89039 (and e!89041 tp!78035))))

(assert (=> b!148694 (= tp!77871 e!89039)))

(assert (= b!149416 b!149417))

(assert (= b!149415 b!149416))

(assert (= (and b!148694 (is-Cons!2576 (t!24458 (t!24458 rules!1920)))) b!149415))

(declare-fun m!133203 () Bool)

(assert (=> b!149416 m!133203))

(declare-fun m!133205 () Bool)

(assert (=> b!149416 m!133205))

(declare-fun b!149420 () Bool)

(declare-fun e!89045 () Bool)

(assert (=> b!149420 (= e!89045 true)))

(declare-fun b!149419 () Bool)

(declare-fun e!89044 () Bool)

(assert (=> b!149419 (= e!89044 e!89045)))

(declare-fun b!149418 () Bool)

(declare-fun e!89043 () Bool)

(assert (=> b!149418 (= e!89043 e!89044)))

(assert (=> b!148487 e!89043))

(assert (= b!149419 b!149420))

(assert (= b!149418 b!149419))

(assert (= (and b!148487 (is-Cons!2576 (t!24458 rules!1920))) b!149418))

(assert (=> b!149420 (< (dynLambda!882 order!1263 (toValue!1075 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3736))))

(assert (=> b!149420 (< (dynLambda!884 order!1267 (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920))))) (dynLambda!883 order!1265 lambda!3736))))

(declare-fun e!89046 () Bool)

(assert (=> b!148669 (= tp!77841 e!89046)))

(declare-fun b!149422 () Bool)

(declare-fun tp!78040 () Bool)

(declare-fun tp!78039 () Bool)

(assert (=> b!149422 (= e!89046 (and tp!78040 tp!78039))))

(declare-fun b!149423 () Bool)

(declare-fun tp!78042 () Bool)

(assert (=> b!149423 (= e!89046 tp!78042)))

(declare-fun b!149421 () Bool)

(assert (=> b!149421 (= e!89046 tp_is_empty!1601)))

(declare-fun b!149424 () Bool)

(declare-fun tp!78041 () Bool)

(declare-fun tp!78038 () Bool)

(assert (=> b!149424 (= e!89046 (and tp!78041 tp!78038))))

(assert (= (and b!148669 (is-ElementMatch!668 (regex!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) b!149421))

(assert (= (and b!148669 (is-Concat!1135 (regex!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) b!149422))

(assert (= (and b!148669 (is-Star!668 (regex!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) b!149423))

(assert (= (and b!148669 (is-Union!668 (regex!444 (rule!951 (h!7972 (t!24457 tokens!465)))))) b!149424))

(declare-fun b!149426 () Bool)

(declare-fun e!89048 () Bool)

(declare-fun tp!78043 () Bool)

(assert (=> b!149426 (= e!89048 (and tp_is_empty!1601 tp!78043))))

(assert (=> b!148668 (= tp!77844 e!89048)))

(assert (= (and b!148668 (is-Cons!2573 (originalCharacters!487 (h!7972 (t!24457 tokens!465))))) b!149426))

(declare-fun e!89049 () Bool)

(assert (=> b!148699 (= tp!77878 e!89049)))

(declare-fun b!149428 () Bool)

(declare-fun tp!78046 () Bool)

(declare-fun tp!78045 () Bool)

(assert (=> b!149428 (= e!89049 (and tp!78046 tp!78045))))

(declare-fun b!149429 () Bool)

(declare-fun tp!78048 () Bool)

(assert (=> b!149429 (= e!89049 tp!78048)))

(declare-fun b!149427 () Bool)

(assert (=> b!149427 (= e!89049 tp_is_empty!1601)))

(declare-fun b!149430 () Bool)

(declare-fun tp!78047 () Bool)

(declare-fun tp!78044 () Bool)

(assert (=> b!149430 (= e!89049 (and tp!78047 tp!78044))))

(assert (= (and b!148699 (is-ElementMatch!668 (reg!997 (regex!444 (h!7973 rules!1920))))) b!149427))

(assert (= (and b!148699 (is-Concat!1135 (reg!997 (regex!444 (h!7973 rules!1920))))) b!149428))

(assert (= (and b!148699 (is-Star!668 (reg!997 (regex!444 (h!7973 rules!1920))))) b!149429))

(assert (= (and b!148699 (is-Union!668 (reg!997 (regex!444 (h!7973 rules!1920))))) b!149430))

(declare-fun e!89050 () Bool)

(assert (=> b!148700 (= tp!77877 e!89050)))

(declare-fun b!149432 () Bool)

(declare-fun tp!78051 () Bool)

(declare-fun tp!78050 () Bool)

(assert (=> b!149432 (= e!89050 (and tp!78051 tp!78050))))

(declare-fun b!149433 () Bool)

(declare-fun tp!78053 () Bool)

(assert (=> b!149433 (= e!89050 tp!78053)))

(declare-fun b!149431 () Bool)

(assert (=> b!149431 (= e!89050 tp_is_empty!1601)))

(declare-fun b!149434 () Bool)

(declare-fun tp!78052 () Bool)

(declare-fun tp!78049 () Bool)

(assert (=> b!149434 (= e!89050 (and tp!78052 tp!78049))))

(assert (= (and b!148700 (is-ElementMatch!668 (regOne!1849 (regex!444 (h!7973 rules!1920))))) b!149431))

(assert (= (and b!148700 (is-Concat!1135 (regOne!1849 (regex!444 (h!7973 rules!1920))))) b!149432))

(assert (= (and b!148700 (is-Star!668 (regOne!1849 (regex!444 (h!7973 rules!1920))))) b!149433))

(assert (= (and b!148700 (is-Union!668 (regOne!1849 (regex!444 (h!7973 rules!1920))))) b!149434))

(declare-fun e!89056 () Bool)

(assert (=> b!148700 (= tp!77874 e!89056)))

(declare-fun b!149445 () Bool)

(declare-fun tp!78056 () Bool)

(declare-fun tp!78055 () Bool)

(assert (=> b!149445 (= e!89056 (and tp!78056 tp!78055))))

(declare-fun b!149446 () Bool)

(declare-fun tp!78058 () Bool)

(assert (=> b!149446 (= e!89056 tp!78058)))

(declare-fun b!149444 () Bool)

(assert (=> b!149444 (= e!89056 tp_is_empty!1601)))

(declare-fun b!149447 () Bool)

(declare-fun tp!78057 () Bool)

(declare-fun tp!78054 () Bool)

(assert (=> b!149447 (= e!89056 (and tp!78057 tp!78054))))

(assert (= (and b!148700 (is-ElementMatch!668 (regTwo!1849 (regex!444 (h!7973 rules!1920))))) b!149444))

(assert (= (and b!148700 (is-Concat!1135 (regTwo!1849 (regex!444 (h!7973 rules!1920))))) b!149445))

(assert (= (and b!148700 (is-Star!668 (regTwo!1849 (regex!444 (h!7973 rules!1920))))) b!149446))

(assert (= (and b!148700 (is-Union!668 (regTwo!1849 (regex!444 (h!7973 rules!1920))))) b!149447))

(declare-fun b_lambda!2641 () Bool)

(assert (= b_lambda!2623 (or b!148415 b_lambda!2641)))

(declare-fun bs!13618 () Bool)

(declare-fun d!35782 () Bool)

(assert (= bs!13618 (and d!35782 b!148415)))

(assert (=> bs!13618 (= (dynLambda!886 lambda!3728 (apply!327 lt!42996 0)) (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (apply!327 lt!42996 0)))))

(assert (=> bs!13618 m!131685))

(declare-fun m!133219 () Bool)

(assert (=> bs!13618 m!133219))

(assert (=> d!35604 d!35782))

(declare-fun b_lambda!2643 () Bool)

(assert (= b_lambda!2613 (or d!35430 b_lambda!2643)))

(declare-fun bs!13619 () Bool)

(declare-fun d!35784 () Bool)

(assert (= bs!13619 (and d!35784 d!35430)))

(assert (=> bs!13619 (= (dynLambda!886 lambda!3739 (h!7972 (t!24457 tokens!465))) (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (t!24457 tokens!465))))))

(assert (=> bs!13619 m!131787))

(assert (=> b!148837 d!35784))

(declare-fun b_lambda!2645 () Bool)

(assert (= b_lambda!2615 (or (and b!148696 b_free!5339 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148327 b_free!5311 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!149337 b_free!5351 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148325 b_free!5315) (and b!149417 b_free!5355 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148670 b_free!5335 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) (and b!148311 b_free!5319 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))))) b_lambda!2645)))

(declare-fun b_lambda!2647 () Bool)

(assert (= b_lambda!2611 (or (and b!149417 b_free!5355 (= (toChars!934 (transformation!444 (h!7973 (t!24458 (t!24458 rules!1920))))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) (and b!148327 b_free!5311 (= (toChars!934 (transformation!444 (h!7973 rules!1920))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) (and b!148311 b_free!5319 (= (toChars!934 (transformation!444 (rule!951 separatorToken!170))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) (and b!148670 b_free!5335) (and b!148696 b_free!5339 (= (toChars!934 (transformation!444 (h!7973 (t!24458 rules!1920)))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) (and b!149337 b_free!5351 (= (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 (t!24457 tokens!465)))))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) (and b!148325 b_free!5315 (= (toChars!934 (transformation!444 (rule!951 (h!7972 tokens!465)))) (toChars!934 (transformation!444 (rule!951 (h!7972 (t!24457 tokens!465))))))) b_lambda!2647)))

(declare-fun b_lambda!2649 () Bool)

(assert (= b_lambda!2621 (or b!148478 b_lambda!2649)))

(declare-fun bs!13620 () Bool)

(declare-fun d!35786 () Bool)

(assert (= bs!13620 (and d!35786 b!148478)))

(assert (=> bs!13620 (= (dynLambda!886 lambda!3736 (h!7972 tokens!465)) (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 tokens!465)))))

(declare-fun m!133221 () Bool)

(assert (=> bs!13620 m!133221))

(assert (=> d!35560 d!35786))

(declare-fun b_lambda!2651 () Bool)

(assert (= b_lambda!2617 (or d!35450 b_lambda!2651)))

(declare-fun bs!13621 () Bool)

(declare-fun d!35788 () Bool)

(assert (= bs!13621 (and d!35788 d!35450)))

(assert (=> bs!13621 (= (dynLambda!886 lambda!3750 (h!7972 (list!897 lt!42996))) (rulesProduceIndividualToken!79 thiss!17480 rules!1920 (h!7972 (list!897 lt!42996))))))

(assert (=> bs!13621 m!132213))

(assert (=> b!148863 d!35788))

(declare-fun b_lambda!2653 () Bool)

(assert (= b_lambda!2627 (or b!148316 b_lambda!2653)))

(declare-fun bs!13622 () Bool)

(declare-fun d!35790 () Bool)

(assert (= bs!13622 (and d!35790 b!148316)))

(assert (=> bs!13622 (= (dynLambda!886 lambda!3719 (h!7972 (t!24457 tokens!465))) (not (isSeparator!444 (rule!951 (h!7972 (t!24457 tokens!465))))))))

(assert (=> b!149106 d!35790))

(push 1)

(assert (not b!148886))

(assert (not b!148843))

(assert (not b!149060))

(assert (not d!35642))

(assert (not b!149143))

(assert (not d!35758))

(assert (not bm!5924))

(assert (not b!148827))

(assert (not d!35762))

(assert (not b_next!5317))

(assert (not b!148871))

(assert (not b_lambda!2653))

(assert (not d!35630))

(assert (not b!148992))

(assert (not b_next!5335))

(assert (not b!149184))

(assert (not d!35668))

(assert (not d!35652))

(assert (not d!35734))

(assert (not bm!5941))

(assert tp_is_empty!1601)

(assert (not b!148874))

(assert (not b!149173))

(assert (not b!149401))

(assert (not d!35596))

(assert (not b!148862))

(assert (not d!35694))

(assert (not bm!5953))

(assert (not b!149376))

(assert (not b!149342))

(assert (not b_lambda!2649))

(assert (not b_next!5313))

(assert (not b!148810))

(assert (not b!149137))

(assert (not b!149416))

(assert (not b!148873))

(assert (not b!149399))

(assert (not d!35744))

(assert (not d!35568))

(assert (not b!149313))

(assert (not b!149353))

(assert (not b!149447))

(assert (not b!149397))

(assert (not b!149272))

(assert (not b_lambda!2593))

(assert (not b_next!5333))

(assert (not b!149412))

(assert (not d!35678))

(assert (not bm!5937))

(assert b_and!8331)

(assert (not b!149432))

(assert (not d!35696))

(assert (not b!149335))

(assert (not b!148943))

(assert (not tb!4877))

(assert (not b!149336))

(assert (not b!148857))

(assert (not b!148877))

(assert (not b_lambda!2651))

(assert (not b!149375))

(assert (not b_next!5339))

(assert (not b!148990))

(assert b_and!8431)

(assert (not d!35558))

(assert (not b!149418))

(assert (not b!149177))

(assert (not b!149128))

(assert (not b!149331))

(assert (not b!149022))

(assert (not b!148550))

(assert (not b!148872))

(assert (not b!148822))

(assert (not b!149360))

(assert (not d!35588))

(assert (not b!149299))

(assert (not b!149372))

(assert (not b!149047))

(assert (not b!149168))

(assert (not b!148952))

(assert (not b_next!5351))

(assert (not d!35516))

(assert b_and!8289)

(assert (not b_next!5315))

(assert (not b!148834))

(assert (not d!35522))

(assert (not b!149074))

(assert (not d!35606))

(assert (not d!35518))

(assert (not b!148823))

(assert (not b!149410))

(assert (not d!35766))

(assert (not d!35756))

(assert (not d!35510))

(assert (not b!149293))

(assert (not b!149172))

(assert (not bm!5934))

(assert (not d!35750))

(assert (not b!149405))

(assert (not b!149013))

(assert (not b!149403))

(assert (not d!35614))

(assert (not d!35598))

(assert (not b!149398))

(assert (not b!149194))

(assert (not bm!5940))

(assert (not b!149061))

(assert (not bs!13620))

(assert (not b!149407))

(assert (not d!35524))

(assert (not b!149092))

(assert (not tb!4907))

(assert (not b!149423))

(assert (not b!149409))

(assert (not b!149366))

(assert (not bm!5939))

(assert (not b!149108))

(assert (not tb!4897))

(assert (not b!149288))

(assert (not b!149045))

(assert (not b_next!5349))

(assert (not d!35646))

(assert (not b_lambda!2619))

(assert (not b!149312))

(assert (not b!148821))

(assert (not b!149329))

(assert (not b!148808))

(assert (not d!35548))

(assert (not d!35590))

(assert (not b!149276))

(assert (not b_next!5337))

(assert (not bm!5942))

(assert (not b!149285))

(assert (not b!149283))

(assert (not b!149001))

(assert (not b!148509))

(assert (not d!35748))

(assert (not b_lambda!2645))

(assert (not b!149354))

(assert (not b!149446))

(assert (not b!149174))

(assert (not d!35552))

(assert (not d!35644))

(assert (not b_lambda!2591))

(assert (not b!149415))

(assert (not b!149182))

(assert (not d!35702))

(assert (not b!149274))

(assert (not b!149012))

(assert (not b!149371))

(assert (not b!149402))

(assert (not b!148945))

(assert (not bs!13621))

(assert (not b!149411))

(assert b_and!8433)

(assert (not d!35692))

(assert (not b!149192))

(assert (not b!148946))

(assert (not b!148838))

(assert (not b!149406))

(assert (not b!149362))

(assert (not b!148865))

(assert (not b!148982))

(assert (not b!148845))

(assert (not b!149318))

(assert (not b!148868))

(assert (not b!149391))

(assert (not b!148948))

(assert (not d!35550))

(assert b_and!8409)

(assert (not b!149296))

(assert (not bm!5947))

(assert (not bm!5928))

(assert (not b!149000))

(assert (not d!35536))

(assert (not d!35620))

(assert (not d!35512))

(assert b_and!8435)

(assert (not b!149105))

(assert (not b!149284))

(assert (not b!149422))

(assert (not b!149086))

(assert (not d!35604))

(assert (not b!149352))

(assert (not b_lambda!2589))

(assert (not b!148866))

(assert (not b!149434))

(assert (not b!148858))

(assert (not d!35560))

(assert (not b!149140))

(assert (not b!149426))

(assert (not b!148941))

(assert (not b!148991))

(assert (not d!35600))

(assert b_and!8401)

(assert (not d!35538))

(assert (not b!149430))

(assert (not b!148864))

(assert (not d!35534))

(assert (not b!149389))

(assert (not bs!13618))

(assert (not b!149338))

(assert b_and!8285)

(assert (not b!149445))

(assert (not b!149363))

(assert (not b!149289))

(assert (not d!35746))

(assert (not b!149367))

(assert (not d!35616))

(assert (not b!149050))

(assert b_and!8327)

(assert (not b!148996))

(assert (not b!149295))

(assert (not d!35544))

(assert (not b!149072))

(assert (not d!35740))

(assert (not b!149062))

(assert (not b!149042))

(assert (not b!149339))

(assert (not b_lambda!2643))

(assert (not b_next!5309))

(assert (not b!149281))

(assert (not b!149048))

(assert (not d!35640))

(assert (not d!35710))

(assert (not d!35654))

(assert (not b!148880))

(assert (not b!149395))

(assert (not b!149368))

(assert (not b!149280))

(assert (not bs!13619))

(assert (not b!148887))

(assert (not d!35626))

(assert (not d!35564))

(assert (not d!35540))

(assert (not d!35528))

(assert (not b_next!5353))

(assert (not b!149292))

(assert (not b!148942))

(assert (not b!149351))

(assert (not d!35532))

(assert (not b!148998))

(assert (not b!148809))

(assert (not b!148949))

(assert (not bm!5926))

(assert (not b!149176))

(assert (not d!35608))

(assert (not b!149413))

(assert (not b!149300))

(assert (not b_lambda!2595))

(assert (not b!149433))

(assert (not b!148811))

(assert (not b!149424))

(assert b_and!8403)

(assert (not b!149103))

(assert (not b!149381))

(assert (not b!149071))

(assert (not d!35520))

(assert (not b!148944))

(assert (not d!35754))

(assert (not b!149110))

(assert (not d!35612))

(assert (not b!149334))

(assert (not b!149429))

(assert (not b!149136))

(assert (not b!149011))

(assert (not b!149053))

(assert (not bm!5951))

(assert (not b!149317))

(assert (not b!149294))

(assert (not d!35556))

(assert (not b_next!5355))

(assert (not b!149319))

(assert (not b!149107))

(assert (not b!148807))

(assert (not b_lambda!2641))

(assert (not d!35690))

(assert (not d!35542))

(assert (not b!149414))

(assert (not d!35742))

(assert (not b!149199))

(assert (not b_lambda!2625))

(assert (not d!35768))

(assert (not b_lambda!2629))

(assert (not b!148882))

(assert b_and!8405)

(assert (not b!149109))

(assert (not d!35736))

(assert (not b!149085))

(assert (not d!35634))

(assert (not b!149046))

(assert (not b!149291))

(assert b_and!8293)

(assert (not b!149359))

(assert (not b!149393))

(assert (not b!149374))

(assert (not b!148836))

(assert (not b!149190))

(assert (not bm!5938))

(assert (not b!149330))

(assert (not b!149298))

(assert (not b_next!5311))

(assert (not b!148999))

(assert (not d!35638))

(assert (not d!35676))

(assert (not d!35648))

(assert (not d!35686))

(assert b_and!8437)

(assert (not b!149275))

(assert (not tb!4887))

(assert (not d!35566))

(assert (not b!149370))

(assert (not b!149169))

(assert (not b!149290))

(assert (not d!35704))

(assert (not b!148812))

(assert (not b!149303))

(assert (not b!149428))

(assert (not b!149044))

(assert (not bm!5955))

(assert (not b!149358))

(assert (not b!149145))

(assert (not b_lambda!2647))

(assert b_and!8407)

(assert (not d!35738))

(assert (not b!148981))

(assert (not b!149394))

(assert (not b!149364))

(assert (not b!149135))

(assert (not b_next!5319))

(assert (not b!149390))

(assert (not b!149049))

(assert (not d!35526))

(assert (not bm!5950))

(assert (not bm!5944))

(assert (not b!148844))

(assert (not d!35752))

(assert (not d!35708))

(assert (not b!148867))

(assert (not b!149073))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!5317))

(assert (not b_next!5335))

(assert (not b_next!5313))

(assert b_and!8433)

(assert b_and!8409)

(assert b_and!8435)

(assert b_and!8401)

(assert b_and!8285)

(assert b_and!8327)

(assert (not b_next!5309))

(assert (not b_next!5353))

(assert b_and!8403)

(assert (not b_next!5355))

(assert b_and!8405)

(assert b_and!8437)

(assert (not b_next!5333))

(assert b_and!8331)

(assert (not b_next!5339))

(assert b_and!8431)

(assert (not b_next!5351))

(assert b_and!8289)

(assert (not b_next!5315))

(assert (not b_next!5349))

(assert (not b_next!5337))

(assert b_and!8293)

(assert (not b_next!5311))

(assert b_and!8407)

(assert (not b_next!5319))

(check-sat)

(pop 1)

