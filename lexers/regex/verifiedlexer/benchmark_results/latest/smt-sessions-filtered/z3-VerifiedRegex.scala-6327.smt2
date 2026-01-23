; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!321410 () Bool)

(assert start!321410)

(declare-fun b!3456410 () Bool)

(declare-fun b_free!89793 () Bool)

(declare-fun b_next!90497 () Bool)

(assert (=> b!3456410 (= b_free!89793 (not b_next!90497))))

(declare-fun tp!1077494 () Bool)

(declare-fun b_and!242947 () Bool)

(assert (=> b!3456410 (= tp!1077494 b_and!242947)))

(declare-fun b_free!89795 () Bool)

(declare-fun b_next!90499 () Bool)

(assert (=> b!3456410 (= b_free!89795 (not b_next!90499))))

(declare-fun tp!1077489 () Bool)

(declare-fun b_and!242949 () Bool)

(assert (=> b!3456410 (= tp!1077489 b_and!242949)))

(declare-fun b!3456428 () Bool)

(declare-fun b_free!89797 () Bool)

(declare-fun b_next!90501 () Bool)

(assert (=> b!3456428 (= b_free!89797 (not b_next!90501))))

(declare-fun tp!1077491 () Bool)

(declare-fun b_and!242951 () Bool)

(assert (=> b!3456428 (= tp!1077491 b_and!242951)))

(declare-fun b_free!89799 () Bool)

(declare-fun b_next!90503 () Bool)

(assert (=> b!3456428 (= b_free!89799 (not b_next!90503))))

(declare-fun tp!1077498 () Bool)

(declare-fun b_and!242953 () Bool)

(assert (=> b!3456428 (= tp!1077498 b_and!242953)))

(declare-fun b!3456421 () Bool)

(declare-fun b_free!89801 () Bool)

(declare-fun b_next!90505 () Bool)

(assert (=> b!3456421 (= b_free!89801 (not b_next!90505))))

(declare-fun tp!1077487 () Bool)

(declare-fun b_and!242955 () Bool)

(assert (=> b!3456421 (= tp!1077487 b_and!242955)))

(declare-fun b_free!89803 () Bool)

(declare-fun b_next!90507 () Bool)

(assert (=> b!3456421 (= b_free!89803 (not b_next!90507))))

(declare-fun tp!1077497 () Bool)

(declare-fun b_and!242957 () Bool)

(assert (=> b!3456421 (= tp!1077497 b_and!242957)))

(declare-fun bs!560085 () Bool)

(declare-fun b!3456413 () Bool)

(declare-fun b!3456438 () Bool)

(assert (= bs!560085 (and b!3456413 b!3456438)))

(declare-fun lambda!121737 () Int)

(declare-fun lambda!121736 () Int)

(assert (=> bs!560085 (not (= lambda!121737 lambda!121736))))

(declare-fun b!3456450 () Bool)

(declare-fun e!2141348 () Bool)

(assert (=> b!3456450 (= e!2141348 true)))

(declare-fun b!3456449 () Bool)

(declare-fun e!2141347 () Bool)

(assert (=> b!3456449 (= e!2141347 e!2141348)))

(declare-fun b!3456448 () Bool)

(declare-fun e!2141346 () Bool)

(assert (=> b!3456448 (= e!2141346 e!2141347)))

(assert (=> b!3456413 e!2141346))

(assert (= b!3456449 b!3456450))

(assert (= b!3456448 b!3456449))

(declare-datatypes ((C!20572 0))(
  ( (C!20573 (val!12334 Int)) )
))
(declare-datatypes ((Regex!10193 0))(
  ( (ElementMatch!10193 (c!591582 C!20572)) (Concat!15857 (regOne!20898 Regex!10193) (regTwo!20898 Regex!10193)) (EmptyExpr!10193) (Star!10193 (reg!10522 Regex!10193)) (EmptyLang!10193) (Union!10193 (regOne!20899 Regex!10193) (regTwo!20899 Regex!10193)) )
))
(declare-datatypes ((List!37266 0))(
  ( (Nil!37142) (Cons!37142 (h!42562 (_ BitVec 16)) (t!272401 List!37266)) )
))
(declare-datatypes ((TokenValue!5664 0))(
  ( (FloatLiteralValue!11328 (text!40093 List!37266)) (TokenValueExt!5663 (__x!23545 Int)) (Broken!28320 (value!175303 List!37266)) (Object!5787) (End!5664) (Def!5664) (Underscore!5664) (Match!5664) (Else!5664) (Error!5664) (Case!5664) (If!5664) (Extends!5664) (Abstract!5664) (Class!5664) (Val!5664) (DelimiterValue!11328 (del!5724 List!37266)) (KeywordValue!5670 (value!175304 List!37266)) (CommentValue!11328 (value!175305 List!37266)) (WhitespaceValue!11328 (value!175306 List!37266)) (IndentationValue!5664 (value!175307 List!37266)) (String!41653) (Int32!5664) (Broken!28321 (value!175308 List!37266)) (Boolean!5665) (Unit!52471) (OperatorValue!5667 (op!5724 List!37266)) (IdentifierValue!11328 (value!175309 List!37266)) (IdentifierValue!11329 (value!175310 List!37266)) (WhitespaceValue!11329 (value!175311 List!37266)) (True!11328) (False!11328) (Broken!28322 (value!175312 List!37266)) (Broken!28323 (value!175313 List!37266)) (True!11329) (RightBrace!5664) (RightBracket!5664) (Colon!5664) (Null!5664) (Comma!5664) (LeftBracket!5664) (False!11329) (LeftBrace!5664) (ImaginaryLiteralValue!5664 (text!40094 List!37266)) (StringLiteralValue!16992 (value!175314 List!37266)) (EOFValue!5664 (value!175315 List!37266)) (IdentValue!5664 (value!175316 List!37266)) (DelimiterValue!11329 (value!175317 List!37266)) (DedentValue!5664 (value!175318 List!37266)) (NewLineValue!5664 (value!175319 List!37266)) (IntegerValue!16992 (value!175320 (_ BitVec 32)) (text!40095 List!37266)) (IntegerValue!16993 (value!175321 Int) (text!40096 List!37266)) (Times!5664) (Or!5664) (Equal!5664) (Minus!5664) (Broken!28324 (value!175322 List!37266)) (And!5664) (Div!5664) (LessEqual!5664) (Mod!5664) (Concat!15858) (Not!5664) (Plus!5664) (SpaceValue!5664 (value!175323 List!37266)) (IntegerValue!16994 (value!175324 Int) (text!40097 List!37266)) (StringLiteralValue!16993 (text!40098 List!37266)) (FloatLiteralValue!11329 (text!40099 List!37266)) (BytesLiteralValue!5664 (value!175325 List!37266)) (CommentValue!11329 (value!175326 List!37266)) (StringLiteralValue!16994 (value!175327 List!37266)) (ErrorTokenValue!5664 (msg!5725 List!37266)) )
))
(declare-datatypes ((List!37267 0))(
  ( (Nil!37143) (Cons!37143 (h!42563 C!20572) (t!272402 List!37267)) )
))
(declare-datatypes ((IArray!22491 0))(
  ( (IArray!22492 (innerList!11303 List!37267)) )
))
(declare-datatypes ((Conc!11243 0))(
  ( (Node!11243 (left!28978 Conc!11243) (right!29308 Conc!11243) (csize!22716 Int) (cheight!11454 Int)) (Leaf!17571 (xs!14417 IArray!22491) (csize!22717 Int)) (Empty!11243) )
))
(declare-datatypes ((BalanceConc!22100 0))(
  ( (BalanceConc!22101 (c!591583 Conc!11243)) )
))
(declare-datatypes ((String!41654 0))(
  ( (String!41655 (value!175328 String)) )
))
(declare-datatypes ((TokenValueInjection!10756 0))(
  ( (TokenValueInjection!10757 (toValue!7658 Int) (toChars!7517 Int)) )
))
(declare-datatypes ((Rule!10668 0))(
  ( (Rule!10669 (regex!5434 Regex!10193) (tag!6040 String!41654) (isSeparator!5434 Bool) (transformation!5434 TokenValueInjection!10756)) )
))
(declare-datatypes ((List!37268 0))(
  ( (Nil!37144) (Cons!37144 (h!42564 Rule!10668) (t!272403 List!37268)) )
))
(declare-fun rules!2135 () List!37268)

(get-info :version)

(assert (= (and b!3456413 ((_ is Cons!37144) rules!2135)) b!3456448))

(declare-fun order!19763 () Int)

(declare-fun order!19761 () Int)

(declare-fun dynLambda!15630 (Int Int) Int)

(declare-fun dynLambda!15631 (Int Int) Int)

(assert (=> b!3456450 (< (dynLambda!15630 order!19761 (toValue!7658 (transformation!5434 (h!42564 rules!2135)))) (dynLambda!15631 order!19763 lambda!121737))))

(declare-fun order!19765 () Int)

(declare-fun dynLambda!15632 (Int Int) Int)

(assert (=> b!3456450 (< (dynLambda!15632 order!19765 (toChars!7517 (transformation!5434 (h!42564 rules!2135)))) (dynLambda!15631 order!19763 lambda!121737))))

(assert (=> b!3456413 true))

(declare-fun b!3456401 () Bool)

(declare-fun res!1394349 () Bool)

(declare-fun e!2141327 () Bool)

(assert (=> b!3456401 (=> (not res!1394349) (not e!2141327))))

(declare-fun isEmpty!21483 (List!37268) Bool)

(assert (=> b!3456401 (= res!1394349 (not (isEmpty!21483 rules!2135)))))

(declare-fun b!3456402 () Bool)

(declare-fun e!2141323 () Bool)

(declare-datatypes ((Token!10234 0))(
  ( (Token!10235 (value!175329 TokenValue!5664) (rule!8022 Rule!10668) (size!28167 Int) (originalCharacters!6148 List!37267)) )
))
(declare-datatypes ((List!37269 0))(
  ( (Nil!37145) (Cons!37145 (h!42565 Token!10234) (t!272404 List!37269)) )
))
(declare-fun tokens!494 () List!37269)

(declare-fun lt!1174222 () Rule!10668)

(assert (=> b!3456402 (= e!2141323 (= (rule!8022 (h!42565 tokens!494)) lt!1174222))))

(declare-fun b!3456403 () Bool)

(declare-datatypes ((Unit!52472 0))(
  ( (Unit!52473) )
))
(declare-fun e!2141336 () Unit!52472)

(declare-fun Unit!52474 () Unit!52472)

(assert (=> b!3456403 (= e!2141336 Unit!52474)))

(declare-fun b!3456404 () Bool)

(declare-fun res!1394336 () Bool)

(declare-fun e!2141319 () Bool)

(assert (=> b!3456404 (=> (not res!1394336) (not e!2141319))))

(declare-datatypes ((IArray!22493 0))(
  ( (IArray!22494 (innerList!11304 List!37269)) )
))
(declare-datatypes ((Conc!11244 0))(
  ( (Node!11244 (left!28979 Conc!11244) (right!29309 Conc!11244) (csize!22718 Int) (cheight!11455 Int)) (Leaf!17572 (xs!14418 IArray!22493) (csize!22719 Int)) (Empty!11244) )
))
(declare-datatypes ((BalanceConc!22102 0))(
  ( (BalanceConc!22103 (c!591584 Conc!11244)) )
))
(declare-datatypes ((tuple2!36852 0))(
  ( (tuple2!36853 (_1!21560 BalanceConc!22102) (_2!21560 BalanceConc!22100)) )
))
(declare-fun lt!1174213 () tuple2!36852)

(declare-fun separatorToken!241 () Token!10234)

(declare-fun apply!8734 (BalanceConc!22102 Int) Token!10234)

(assert (=> b!3456404 (= res!1394336 (= (apply!8734 (_1!21560 lt!1174213) 0) separatorToken!241))))

(declare-fun b!3456405 () Bool)

(declare-fun res!1394330 () Bool)

(assert (=> b!3456405 (=> (not res!1394330) (not e!2141327))))

(declare-datatypes ((LexerInterface!5023 0))(
  ( (LexerInterfaceExt!5020 (__x!23546 Int)) (Lexer!5021) )
))
(declare-fun thiss!18206 () LexerInterface!5023)

(declare-fun rulesProduceEachTokenIndividually!1474 (LexerInterface!5023 List!37268 BalanceConc!22102) Bool)

(declare-fun seqFromList!3921 (List!37269) BalanceConc!22102)

(assert (=> b!3456405 (= res!1394330 (rulesProduceEachTokenIndividually!1474 thiss!18206 rules!2135 (seqFromList!3921 tokens!494)))))

(declare-fun b!3456406 () Bool)

(declare-fun e!2141335 () Bool)

(assert (=> b!3456406 (= e!2141327 (not e!2141335))))

(declare-fun res!1394348 () Bool)

(assert (=> b!3456406 (=> res!1394348 e!2141335)))

(declare-fun lt!1174195 () List!37267)

(declare-fun lt!1174226 () List!37267)

(assert (=> b!3456406 (= res!1394348 (not (= lt!1174195 lt!1174226)))))

(declare-fun printList!1571 (LexerInterface!5023 List!37269) List!37267)

(assert (=> b!3456406 (= lt!1174226 (printList!1571 thiss!18206 (Cons!37145 (h!42565 tokens!494) Nil!37145)))))

(declare-fun lt!1174196 () BalanceConc!22100)

(declare-fun list!13517 (BalanceConc!22100) List!37267)

(assert (=> b!3456406 (= lt!1174195 (list!13517 lt!1174196))))

(declare-fun lt!1174206 () BalanceConc!22102)

(declare-fun printTailRec!1518 (LexerInterface!5023 BalanceConc!22102 Int BalanceConc!22100) BalanceConc!22100)

(assert (=> b!3456406 (= lt!1174196 (printTailRec!1518 thiss!18206 lt!1174206 0 (BalanceConc!22101 Empty!11243)))))

(declare-fun print!2088 (LexerInterface!5023 BalanceConc!22102) BalanceConc!22100)

(assert (=> b!3456406 (= lt!1174196 (print!2088 thiss!18206 lt!1174206))))

(declare-fun singletonSeq!2530 (Token!10234) BalanceConc!22102)

(assert (=> b!3456406 (= lt!1174206 (singletonSeq!2530 (h!42565 tokens!494)))))

(declare-fun b!3456407 () Bool)

(declare-fun res!1394333 () Bool)

(declare-fun e!2141316 () Bool)

(assert (=> b!3456407 (=> (not res!1394333) (not e!2141316))))

(declare-fun lt!1174212 () tuple2!36852)

(assert (=> b!3456407 (= res!1394333 (= (apply!8734 (_1!21560 lt!1174212) 0) (h!42565 (t!272404 tokens!494))))))

(declare-fun b!3456408 () Bool)

(declare-fun e!2141317 () Bool)

(assert (=> b!3456408 (= e!2141317 e!2141323)))

(declare-fun res!1394337 () Bool)

(assert (=> b!3456408 (=> (not res!1394337) (not e!2141323))))

(declare-fun lt!1174209 () List!37267)

(declare-fun matchR!4777 (Regex!10193 List!37267) Bool)

(assert (=> b!3456408 (= res!1394337 (matchR!4777 (regex!5434 lt!1174222) lt!1174209))))

(declare-datatypes ((Option!7515 0))(
  ( (None!7514) (Some!7514 (v!36822 Rule!10668)) )
))
(declare-fun lt!1174201 () Option!7515)

(declare-fun get!11884 (Option!7515) Rule!10668)

(assert (=> b!3456408 (= lt!1174222 (get!11884 lt!1174201))))

(declare-fun b!3456409 () Bool)

(declare-fun e!2141322 () Bool)

(declare-fun contains!6877 (List!37268 Rule!10668) Bool)

(assert (=> b!3456409 (= e!2141322 (contains!6877 rules!2135 (rule!8022 separatorToken!241)))))

(declare-fun b!3456411 () Bool)

(declare-fun e!2141320 () Bool)

(declare-fun e!2141312 () Bool)

(assert (=> b!3456411 (= e!2141320 e!2141312)))

(declare-fun res!1394342 () Bool)

(assert (=> b!3456411 (=> res!1394342 e!2141312)))

(declare-fun lt!1174224 () BalanceConc!22100)

(declare-fun isEmpty!21484 (BalanceConc!22102) Bool)

(declare-fun lex!2349 (LexerInterface!5023 List!37268 BalanceConc!22100) tuple2!36852)

(assert (=> b!3456411 (= res!1394342 (isEmpty!21484 (_1!21560 (lex!2349 thiss!18206 rules!2135 lt!1174224))))))

(declare-fun seqFromList!3922 (List!37267) BalanceConc!22100)

(assert (=> b!3456411 (= lt!1174224 (seqFromList!3922 lt!1174209))))

(declare-fun b!3456412 () Bool)

(declare-fun e!2141326 () Bool)

(declare-fun e!2141315 () Bool)

(assert (=> b!3456412 (= e!2141326 e!2141315)))

(declare-fun res!1394325 () Bool)

(assert (=> b!3456412 (=> res!1394325 e!2141315)))

(declare-fun lt!1174208 () List!37267)

(declare-fun lt!1174223 () List!37267)

(assert (=> b!3456412 (= res!1394325 (not (= lt!1174208 lt!1174223)))))

(declare-fun lt!1174203 () List!37267)

(declare-fun lt!1174216 () List!37267)

(declare-fun ++!9151 (List!37267 List!37267) List!37267)

(assert (=> b!3456412 (= lt!1174223 (++!9151 (++!9151 lt!1174209 lt!1174216) lt!1174203))))

(declare-fun e!2141331 () Bool)

(assert (=> b!3456413 (= e!2141331 e!2141322)))

(declare-fun res!1394329 () Bool)

(assert (=> b!3456413 (=> res!1394329 e!2141322)))

(assert (=> b!3456413 (= res!1394329 (not (contains!6877 rules!2135 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun lt!1174214 () C!20572)

(declare-fun contains!6878 (List!37267 C!20572) Bool)

(declare-fun usedCharacters!668 (Regex!10193) List!37267)

(assert (=> b!3456413 (not (contains!6878 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494)))) lt!1174214))))

(declare-fun lt!1174217 () Unit!52472)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!234 (LexerInterface!5023 List!37268 List!37268 Rule!10668 Rule!10668 C!20572) Unit!52472)

(assert (=> b!3456413 (= lt!1174217 (lemmaNonSepRuleNotContainsCharContainedInASepRule!234 thiss!18206 rules!2135 rules!2135 (rule!8022 (h!42565 tokens!494)) (rule!8022 separatorToken!241) lt!1174214))))

(declare-fun lt!1174227 () Unit!52472)

(declare-fun forallContained!1381 (List!37269 Int Token!10234) Unit!52472)

(assert (=> b!3456413 (= lt!1174227 (forallContained!1381 tokens!494 lambda!121737 (h!42565 (t!272404 tokens!494))))))

(declare-fun rulesProduceIndividualToken!2515 (LexerInterface!5023 List!37268 Token!10234) Bool)

(assert (=> b!3456413 (= (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 (t!272404 tokens!494))) e!2141316)))

(declare-fun res!1394345 () Bool)

(assert (=> b!3456413 (=> (not res!1394345) (not e!2141316))))

(declare-fun size!28168 (BalanceConc!22102) Int)

(assert (=> b!3456413 (= res!1394345 (= (size!28168 (_1!21560 lt!1174212)) 1))))

(declare-fun lt!1174211 () BalanceConc!22100)

(assert (=> b!3456413 (= lt!1174212 (lex!2349 thiss!18206 rules!2135 lt!1174211))))

(declare-fun lt!1174210 () BalanceConc!22102)

(assert (=> b!3456413 (= lt!1174211 (printTailRec!1518 thiss!18206 lt!1174210 0 (BalanceConc!22101 Empty!11243)))))

(assert (=> b!3456413 (= lt!1174211 (print!2088 thiss!18206 lt!1174210))))

(assert (=> b!3456413 (= lt!1174210 (singletonSeq!2530 (h!42565 (t!272404 tokens!494))))))

(assert (=> b!3456413 e!2141319))

(declare-fun res!1394339 () Bool)

(assert (=> b!3456413 (=> (not res!1394339) (not e!2141319))))

(assert (=> b!3456413 (= res!1394339 (= (size!28168 (_1!21560 lt!1174213)) 1))))

(declare-fun lt!1174202 () BalanceConc!22100)

(assert (=> b!3456413 (= lt!1174213 (lex!2349 thiss!18206 rules!2135 lt!1174202))))

(declare-fun lt!1174197 () BalanceConc!22102)

(assert (=> b!3456413 (= lt!1174202 (printTailRec!1518 thiss!18206 lt!1174197 0 (BalanceConc!22101 Empty!11243)))))

(assert (=> b!3456413 (= lt!1174202 (print!2088 thiss!18206 lt!1174197))))

(assert (=> b!3456413 (= lt!1174197 (singletonSeq!2530 separatorToken!241))))

(declare-fun lt!1174221 () Unit!52472)

(assert (=> b!3456413 (= lt!1174221 e!2141336)))

(declare-fun c!591581 () Bool)

(assert (=> b!3456413 (= c!591581 (not (contains!6878 (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241))) lt!1174214)))))

(declare-fun head!7311 (List!37267) C!20572)

(assert (=> b!3456413 (= lt!1174214 (head!7311 lt!1174216))))

(declare-fun e!2141332 () Bool)

(assert (=> b!3456413 e!2141332))

(declare-fun res!1394344 () Bool)

(assert (=> b!3456413 (=> (not res!1394344) (not e!2141332))))

(declare-fun lt!1174198 () Option!7515)

(declare-fun isDefined!5788 (Option!7515) Bool)

(assert (=> b!3456413 (= res!1394344 (isDefined!5788 lt!1174198))))

(declare-fun getRuleFromTag!1077 (LexerInterface!5023 List!37268 String!41654) Option!7515)

(assert (=> b!3456413 (= lt!1174198 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 separatorToken!241))))))

(declare-fun lt!1174207 () Unit!52472)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1077 (LexerInterface!5023 List!37268 List!37267 Token!10234) Unit!52472)

(assert (=> b!3456413 (= lt!1174207 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1077 thiss!18206 rules!2135 lt!1174216 separatorToken!241))))

(declare-datatypes ((tuple2!36854 0))(
  ( (tuple2!36855 (_1!21561 Token!10234) (_2!21561 List!37267)) )
))
(declare-datatypes ((Option!7516 0))(
  ( (None!7515) (Some!7515 (v!36823 tuple2!36854)) )
))
(declare-fun maxPrefixOneRule!1730 (LexerInterface!5023 Rule!10668 List!37267) Option!7516)

(declare-fun apply!8735 (TokenValueInjection!10756 BalanceConc!22100) TokenValue!5664)

(declare-fun size!28169 (List!37267) Int)

(assert (=> b!3456413 (= (maxPrefixOneRule!1730 thiss!18206 (rule!8022 (h!42565 tokens!494)) lt!1174209) (Some!7515 (tuple2!36855 (Token!10235 (apply!8735 (transformation!5434 (rule!8022 (h!42565 tokens!494))) lt!1174224) (rule!8022 (h!42565 tokens!494)) (size!28169 lt!1174209) lt!1174209) Nil!37143)))))

(declare-fun lt!1174200 () Unit!52472)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!823 (LexerInterface!5023 List!37268 List!37267 List!37267 List!37267 Rule!10668) Unit!52472)

(assert (=> b!3456413 (= lt!1174200 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!823 thiss!18206 rules!2135 lt!1174209 lt!1174209 Nil!37143 (rule!8022 (h!42565 tokens!494))))))

(assert (=> b!3456413 e!2141317))

(declare-fun res!1394335 () Bool)

(assert (=> b!3456413 (=> (not res!1394335) (not e!2141317))))

(assert (=> b!3456413 (= res!1394335 (isDefined!5788 lt!1174201))))

(assert (=> b!3456413 (= lt!1174201 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun lt!1174225 () Unit!52472)

(assert (=> b!3456413 (= lt!1174225 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1077 thiss!18206 rules!2135 lt!1174209 (h!42565 tokens!494)))))

(declare-fun lt!1174205 () Unit!52472)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1012 (LexerInterface!5023 List!37268 List!37269 Token!10234) Unit!52472)

(assert (=> b!3456413 (= lt!1174205 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1012 thiss!18206 rules!2135 tokens!494 (h!42565 tokens!494)))))

(declare-fun b!3456414 () Bool)

(declare-fun e!2141324 () Bool)

(declare-fun e!2141321 () Bool)

(declare-fun tp!1077486 () Bool)

(declare-fun inv!50306 (String!41654) Bool)

(declare-fun inv!50309 (TokenValueInjection!10756) Bool)

(assert (=> b!3456414 (= e!2141324 (and tp!1077486 (inv!50306 (tag!6040 (rule!8022 separatorToken!241))) (inv!50309 (transformation!5434 (rule!8022 separatorToken!241))) e!2141321))))

(declare-fun b!3456415 () Bool)

(declare-fun e!2141314 () Bool)

(assert (=> b!3456415 (= e!2141332 e!2141314)))

(declare-fun res!1394343 () Bool)

(assert (=> b!3456415 (=> (not res!1394343) (not e!2141314))))

(declare-fun lt!1174215 () Rule!10668)

(assert (=> b!3456415 (= res!1394343 (matchR!4777 (regex!5434 lt!1174215) lt!1174216))))

(assert (=> b!3456415 (= lt!1174215 (get!11884 lt!1174198))))

(declare-fun b!3456416 () Bool)

(declare-fun e!2141330 () Bool)

(assert (=> b!3456416 (= e!2141312 e!2141330)))

(declare-fun res!1394346 () Bool)

(assert (=> b!3456416 (=> res!1394346 e!2141330)))

(assert (=> b!3456416 (= res!1394346 (or (isSeparator!5434 (rule!8022 (h!42565 tokens!494))) (isSeparator!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))))

(declare-fun lt!1174219 () Unit!52472)

(assert (=> b!3456416 (= lt!1174219 (forallContained!1381 tokens!494 lambda!121736 (h!42565 (t!272404 tokens!494))))))

(declare-fun lt!1174218 () Unit!52472)

(assert (=> b!3456416 (= lt!1174218 (forallContained!1381 tokens!494 lambda!121736 (h!42565 tokens!494)))))

(declare-fun b!3456417 () Bool)

(assert (=> b!3456417 (= e!2141315 e!2141331)))

(declare-fun res!1394331 () Bool)

(assert (=> b!3456417 (=> res!1394331 e!2141331)))

(declare-fun lt!1174199 () List!37267)

(assert (=> b!3456417 (= res!1394331 (not (= lt!1174208 lt!1174199)))))

(assert (=> b!3456417 (= lt!1174223 lt!1174199)))

(declare-fun lt!1174228 () List!37267)

(assert (=> b!3456417 (= lt!1174199 (++!9151 lt!1174209 lt!1174228))))

(declare-fun lt!1174204 () Unit!52472)

(declare-fun lemmaConcatAssociativity!1952 (List!37267 List!37267 List!37267) Unit!52472)

(assert (=> b!3456417 (= lt!1174204 (lemmaConcatAssociativity!1952 lt!1174209 lt!1174216 lt!1174203))))

(declare-fun b!3456418 () Bool)

(declare-fun Unit!52475 () Unit!52472)

(assert (=> b!3456418 (= e!2141336 Unit!52475)))

(declare-fun lt!1174220 () Unit!52472)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!492 (Regex!10193 List!37267 C!20572) Unit!52472)

(assert (=> b!3456418 (= lt!1174220 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!492 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216 lt!1174214))))

(declare-fun res!1394328 () Bool)

(assert (=> b!3456418 (= res!1394328 (not (matchR!4777 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216)))))

(declare-fun e!2141334 () Bool)

(assert (=> b!3456418 (=> (not res!1394328) (not e!2141334))))

(assert (=> b!3456418 e!2141334))

(declare-fun b!3456419 () Bool)

(declare-fun res!1394334 () Bool)

(assert (=> b!3456419 (=> (not res!1394334) (not e!2141327))))

(assert (=> b!3456419 (= res!1394334 (and (not ((_ is Nil!37145) tokens!494)) (not ((_ is Nil!37145) (t!272404 tokens!494)))))))

(declare-fun b!3456420 () Bool)

(declare-fun e!2141329 () Bool)

(declare-fun tp!1077495 () Bool)

(declare-fun inv!21 (TokenValue!5664) Bool)

(assert (=> b!3456420 (= e!2141329 (and (inv!21 (value!175329 separatorToken!241)) e!2141324 tp!1077495))))

(assert (=> b!3456421 (= e!2141321 (and tp!1077487 tp!1077497))))

(declare-fun b!3456422 () Bool)

(declare-fun e!2141325 () Bool)

(declare-fun e!2141337 () Bool)

(declare-fun tp!1077492 () Bool)

(assert (=> b!3456422 (= e!2141325 (and (inv!21 (value!175329 (h!42565 tokens!494))) e!2141337 tp!1077492))))

(declare-fun b!3456423 () Bool)

(assert (=> b!3456423 (= e!2141314 (= (rule!8022 separatorToken!241) lt!1174215))))

(declare-fun tp!1077493 () Bool)

(declare-fun e!2141318 () Bool)

(declare-fun b!3456424 () Bool)

(assert (=> b!3456424 (= e!2141337 (and tp!1077493 (inv!50306 (tag!6040 (rule!8022 (h!42565 tokens!494)))) (inv!50309 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) e!2141318))))

(declare-fun b!3456425 () Bool)

(declare-fun res!1394332 () Bool)

(assert (=> b!3456425 (=> (not res!1394332) (not e!2141327))))

(assert (=> b!3456425 (= res!1394332 (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3456426 () Bool)

(declare-fun e!2141309 () Bool)

(declare-fun e!2141328 () Bool)

(declare-fun tp!1077490 () Bool)

(assert (=> b!3456426 (= e!2141309 (and e!2141328 tp!1077490))))

(declare-fun b!3456427 () Bool)

(declare-fun res!1394341 () Bool)

(assert (=> b!3456427 (=> (not res!1394341) (not e!2141327))))

(assert (=> b!3456427 (= res!1394341 (isSeparator!5434 (rule!8022 separatorToken!241)))))

(declare-fun e!2141310 () Bool)

(assert (=> b!3456428 (= e!2141310 (and tp!1077491 tp!1077498))))

(declare-fun b!3456429 () Bool)

(assert (=> b!3456429 (= e!2141334 false)))

(declare-fun b!3456430 () Bool)

(declare-fun res!1394327 () Bool)

(assert (=> b!3456430 (=> (not res!1394327) (not e!2141327))))

(declare-fun rulesInvariant!4420 (LexerInterface!5023 List!37268) Bool)

(assert (=> b!3456430 (= res!1394327 (rulesInvariant!4420 thiss!18206 rules!2135))))

(declare-fun b!3456431 () Bool)

(declare-fun res!1394340 () Bool)

(assert (=> b!3456431 (=> (not res!1394340) (not e!2141327))))

(declare-fun sepAndNonSepRulesDisjointChars!1628 (List!37268 List!37268) Bool)

(assert (=> b!3456431 (= res!1394340 (sepAndNonSepRulesDisjointChars!1628 rules!2135 rules!2135))))

(declare-fun b!3456432 () Bool)

(declare-fun isEmpty!21485 (BalanceConc!22100) Bool)

(assert (=> b!3456432 (= e!2141316 (isEmpty!21485 (_2!21560 lt!1174212)))))

(declare-fun b!3456433 () Bool)

(assert (=> b!3456433 (= e!2141335 e!2141320)))

(declare-fun res!1394347 () Bool)

(assert (=> b!3456433 (=> res!1394347 e!2141320)))

(assert (=> b!3456433 (= res!1394347 (or (not (= lt!1174226 lt!1174209)) (not (= lt!1174195 lt!1174209))))))

(declare-fun charsOf!3448 (Token!10234) BalanceConc!22100)

(assert (=> b!3456433 (= lt!1174209 (list!13517 (charsOf!3448 (h!42565 tokens!494))))))

(declare-fun res!1394326 () Bool)

(assert (=> start!321410 (=> (not res!1394326) (not e!2141327))))

(assert (=> start!321410 (= res!1394326 ((_ is Lexer!5021) thiss!18206))))

(assert (=> start!321410 e!2141327))

(assert (=> start!321410 true))

(assert (=> start!321410 e!2141309))

(declare-fun e!2141313 () Bool)

(assert (=> start!321410 e!2141313))

(declare-fun inv!50310 (Token!10234) Bool)

(assert (=> start!321410 (and (inv!50310 separatorToken!241) e!2141329)))

(assert (=> b!3456410 (= e!2141318 (and tp!1077494 tp!1077489))))

(declare-fun tp!1077488 () Bool)

(declare-fun b!3456434 () Bool)

(assert (=> b!3456434 (= e!2141313 (and (inv!50310 (h!42565 tokens!494)) e!2141325 tp!1077488))))

(declare-fun b!3456435 () Bool)

(assert (=> b!3456435 (= e!2141330 e!2141326)))

(declare-fun res!1394338 () Bool)

(assert (=> b!3456435 (=> res!1394338 e!2141326)))

(declare-fun printWithSeparatorTokenList!310 (LexerInterface!5023 List!37269 Token!10234) List!37267)

(assert (=> b!3456435 (= res!1394338 (not (= lt!1174203 (++!9151 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241)))))))

(assert (=> b!3456435 (= lt!1174228 (++!9151 lt!1174216 lt!1174203))))

(assert (=> b!3456435 (= lt!1174216 (list!13517 (charsOf!3448 separatorToken!241)))))

(assert (=> b!3456435 (= lt!1174203 (printWithSeparatorTokenList!310 thiss!18206 (t!272404 tokens!494) separatorToken!241))))

(assert (=> b!3456435 (= lt!1174208 (printWithSeparatorTokenList!310 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3456436 () Bool)

(declare-fun res!1394350 () Bool)

(assert (=> b!3456436 (=> res!1394350 e!2141320)))

(assert (=> b!3456436 (= res!1394350 (not (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 tokens!494))))))

(declare-fun b!3456437 () Bool)

(assert (=> b!3456437 (= e!2141319 (isEmpty!21485 (_2!21560 lt!1174213)))))

(declare-fun res!1394324 () Bool)

(assert (=> b!3456438 (=> (not res!1394324) (not e!2141327))))

(declare-fun forall!7911 (List!37269 Int) Bool)

(assert (=> b!3456438 (= res!1394324 (forall!7911 tokens!494 lambda!121736))))

(declare-fun b!3456439 () Bool)

(declare-fun tp!1077496 () Bool)

(assert (=> b!3456439 (= e!2141328 (and tp!1077496 (inv!50306 (tag!6040 (h!42564 rules!2135))) (inv!50309 (transformation!5434 (h!42564 rules!2135))) e!2141310))))

(assert (= (and start!321410 res!1394326) b!3456401))

(assert (= (and b!3456401 res!1394349) b!3456430))

(assert (= (and b!3456430 res!1394327) b!3456405))

(assert (= (and b!3456405 res!1394330) b!3456425))

(assert (= (and b!3456425 res!1394332) b!3456427))

(assert (= (and b!3456427 res!1394341) b!3456438))

(assert (= (and b!3456438 res!1394324) b!3456431))

(assert (= (and b!3456431 res!1394340) b!3456419))

(assert (= (and b!3456419 res!1394334) b!3456406))

(assert (= (and b!3456406 (not res!1394348)) b!3456433))

(assert (= (and b!3456433 (not res!1394347)) b!3456436))

(assert (= (and b!3456436 (not res!1394350)) b!3456411))

(assert (= (and b!3456411 (not res!1394342)) b!3456416))

(assert (= (and b!3456416 (not res!1394346)) b!3456435))

(assert (= (and b!3456435 (not res!1394338)) b!3456412))

(assert (= (and b!3456412 (not res!1394325)) b!3456417))

(assert (= (and b!3456417 (not res!1394331)) b!3456413))

(assert (= (and b!3456413 res!1394335) b!3456408))

(assert (= (and b!3456408 res!1394337) b!3456402))

(assert (= (and b!3456413 res!1394344) b!3456415))

(assert (= (and b!3456415 res!1394343) b!3456423))

(assert (= (and b!3456413 c!591581) b!3456418))

(assert (= (and b!3456413 (not c!591581)) b!3456403))

(assert (= (and b!3456418 res!1394328) b!3456429))

(assert (= (and b!3456413 res!1394339) b!3456404))

(assert (= (and b!3456404 res!1394336) b!3456437))

(assert (= (and b!3456413 res!1394345) b!3456407))

(assert (= (and b!3456407 res!1394333) b!3456432))

(assert (= (and b!3456413 (not res!1394329)) b!3456409))

(assert (= b!3456439 b!3456428))

(assert (= b!3456426 b!3456439))

(assert (= (and start!321410 ((_ is Cons!37144) rules!2135)) b!3456426))

(assert (= b!3456424 b!3456410))

(assert (= b!3456422 b!3456424))

(assert (= b!3456434 b!3456422))

(assert (= (and start!321410 ((_ is Cons!37145) tokens!494)) b!3456434))

(assert (= b!3456414 b!3456421))

(assert (= b!3456420 b!3456414))

(assert (= start!321410 b!3456420))

(declare-fun m!3856183 () Bool)

(assert (=> b!3456420 m!3856183))

(declare-fun m!3856185 () Bool)

(assert (=> b!3456425 m!3856185))

(declare-fun m!3856187 () Bool)

(assert (=> b!3456436 m!3856187))

(declare-fun m!3856189 () Bool)

(assert (=> b!3456438 m!3856189))

(declare-fun m!3856191 () Bool)

(assert (=> start!321410 m!3856191))

(declare-fun m!3856193 () Bool)

(assert (=> b!3456407 m!3856193))

(declare-fun m!3856195 () Bool)

(assert (=> b!3456405 m!3856195))

(assert (=> b!3456405 m!3856195))

(declare-fun m!3856197 () Bool)

(assert (=> b!3456405 m!3856197))

(declare-fun m!3856199 () Bool)

(assert (=> b!3456412 m!3856199))

(assert (=> b!3456412 m!3856199))

(declare-fun m!3856201 () Bool)

(assert (=> b!3456412 m!3856201))

(declare-fun m!3856203 () Bool)

(assert (=> b!3456418 m!3856203))

(declare-fun m!3856205 () Bool)

(assert (=> b!3456418 m!3856205))

(declare-fun m!3856207 () Bool)

(assert (=> b!3456408 m!3856207))

(declare-fun m!3856209 () Bool)

(assert (=> b!3456408 m!3856209))

(declare-fun m!3856211 () Bool)

(assert (=> b!3456437 m!3856211))

(declare-fun m!3856213 () Bool)

(assert (=> b!3456422 m!3856213))

(declare-fun m!3856215 () Bool)

(assert (=> b!3456430 m!3856215))

(declare-fun m!3856217 () Bool)

(assert (=> b!3456406 m!3856217))

(declare-fun m!3856219 () Bool)

(assert (=> b!3456406 m!3856219))

(declare-fun m!3856221 () Bool)

(assert (=> b!3456406 m!3856221))

(declare-fun m!3856223 () Bool)

(assert (=> b!3456406 m!3856223))

(declare-fun m!3856225 () Bool)

(assert (=> b!3456406 m!3856225))

(declare-fun m!3856227 () Bool)

(assert (=> b!3456401 m!3856227))

(declare-fun m!3856229 () Bool)

(assert (=> b!3456424 m!3856229))

(declare-fun m!3856231 () Bool)

(assert (=> b!3456424 m!3856231))

(declare-fun m!3856233 () Bool)

(assert (=> b!3456409 m!3856233))

(declare-fun m!3856235 () Bool)

(assert (=> b!3456417 m!3856235))

(declare-fun m!3856237 () Bool)

(assert (=> b!3456417 m!3856237))

(declare-fun m!3856239 () Bool)

(assert (=> b!3456434 m!3856239))

(declare-fun m!3856241 () Bool)

(assert (=> b!3456415 m!3856241))

(declare-fun m!3856243 () Bool)

(assert (=> b!3456415 m!3856243))

(declare-fun m!3856245 () Bool)

(assert (=> b!3456433 m!3856245))

(assert (=> b!3456433 m!3856245))

(declare-fun m!3856247 () Bool)

(assert (=> b!3456433 m!3856247))

(declare-fun m!3856249 () Bool)

(assert (=> b!3456435 m!3856249))

(declare-fun m!3856251 () Bool)

(assert (=> b!3456435 m!3856251))

(declare-fun m!3856253 () Bool)

(assert (=> b!3456435 m!3856253))

(declare-fun m!3856255 () Bool)

(assert (=> b!3456435 m!3856255))

(declare-fun m!3856257 () Bool)

(assert (=> b!3456435 m!3856257))

(assert (=> b!3456435 m!3856249))

(declare-fun m!3856259 () Bool)

(assert (=> b!3456435 m!3856259))

(declare-fun m!3856261 () Bool)

(assert (=> b!3456435 m!3856261))

(declare-fun m!3856263 () Bool)

(assert (=> b!3456435 m!3856263))

(declare-fun m!3856265 () Bool)

(assert (=> b!3456435 m!3856265))

(assert (=> b!3456435 m!3856263))

(assert (=> b!3456435 m!3856251))

(declare-fun m!3856267 () Bool)

(assert (=> b!3456435 m!3856267))

(assert (=> b!3456435 m!3856259))

(assert (=> b!3456435 m!3856261))

(declare-fun m!3856269 () Bool)

(assert (=> b!3456439 m!3856269))

(declare-fun m!3856271 () Bool)

(assert (=> b!3456439 m!3856271))

(declare-fun m!3856273 () Bool)

(assert (=> b!3456431 m!3856273))

(declare-fun m!3856275 () Bool)

(assert (=> b!3456413 m!3856275))

(declare-fun m!3856277 () Bool)

(assert (=> b!3456413 m!3856277))

(declare-fun m!3856279 () Bool)

(assert (=> b!3456413 m!3856279))

(declare-fun m!3856281 () Bool)

(assert (=> b!3456413 m!3856281))

(declare-fun m!3856283 () Bool)

(assert (=> b!3456413 m!3856283))

(declare-fun m!3856285 () Bool)

(assert (=> b!3456413 m!3856285))

(declare-fun m!3856287 () Bool)

(assert (=> b!3456413 m!3856287))

(declare-fun m!3856289 () Bool)

(assert (=> b!3456413 m!3856289))

(declare-fun m!3856291 () Bool)

(assert (=> b!3456413 m!3856291))

(declare-fun m!3856293 () Bool)

(assert (=> b!3456413 m!3856293))

(declare-fun m!3856295 () Bool)

(assert (=> b!3456413 m!3856295))

(declare-fun m!3856297 () Bool)

(assert (=> b!3456413 m!3856297))

(declare-fun m!3856299 () Bool)

(assert (=> b!3456413 m!3856299))

(declare-fun m!3856301 () Bool)

(assert (=> b!3456413 m!3856301))

(declare-fun m!3856303 () Bool)

(assert (=> b!3456413 m!3856303))

(declare-fun m!3856305 () Bool)

(assert (=> b!3456413 m!3856305))

(declare-fun m!3856307 () Bool)

(assert (=> b!3456413 m!3856307))

(declare-fun m!3856309 () Bool)

(assert (=> b!3456413 m!3856309))

(declare-fun m!3856311 () Bool)

(assert (=> b!3456413 m!3856311))

(declare-fun m!3856313 () Bool)

(assert (=> b!3456413 m!3856313))

(declare-fun m!3856315 () Bool)

(assert (=> b!3456413 m!3856315))

(assert (=> b!3456413 m!3856303))

(declare-fun m!3856317 () Bool)

(assert (=> b!3456413 m!3856317))

(declare-fun m!3856319 () Bool)

(assert (=> b!3456413 m!3856319))

(declare-fun m!3856321 () Bool)

(assert (=> b!3456413 m!3856321))

(declare-fun m!3856323 () Bool)

(assert (=> b!3456413 m!3856323))

(declare-fun m!3856325 () Bool)

(assert (=> b!3456413 m!3856325))

(declare-fun m!3856327 () Bool)

(assert (=> b!3456413 m!3856327))

(declare-fun m!3856329 () Bool)

(assert (=> b!3456413 m!3856329))

(assert (=> b!3456413 m!3856327))

(declare-fun m!3856331 () Bool)

(assert (=> b!3456413 m!3856331))

(declare-fun m!3856333 () Bool)

(assert (=> b!3456413 m!3856333))

(declare-fun m!3856335 () Bool)

(assert (=> b!3456411 m!3856335))

(declare-fun m!3856337 () Bool)

(assert (=> b!3456411 m!3856337))

(declare-fun m!3856339 () Bool)

(assert (=> b!3456411 m!3856339))

(declare-fun m!3856341 () Bool)

(assert (=> b!3456432 m!3856341))

(declare-fun m!3856343 () Bool)

(assert (=> b!3456414 m!3856343))

(declare-fun m!3856345 () Bool)

(assert (=> b!3456414 m!3856345))

(declare-fun m!3856347 () Bool)

(assert (=> b!3456404 m!3856347))

(declare-fun m!3856349 () Bool)

(assert (=> b!3456416 m!3856349))

(declare-fun m!3856351 () Bool)

(assert (=> b!3456416 m!3856351))

(check-sat (not b!3456405) (not b!3456430) (not b!3456432) b_and!242949 (not b!3456434) (not b!3456417) (not b!3456420) (not b_next!90507) (not b!3456414) (not b!3456424) (not b!3456437) (not b!3456412) (not b!3456409) (not b_next!90501) (not b!3456418) (not b_next!90497) (not b!3456413) (not b!3456407) b_and!242957 (not b!3456433) (not b!3456426) (not start!321410) b_and!242955 (not b!3456435) (not b_next!90503) (not b!3456448) (not b!3456438) (not b!3456415) b_and!242953 (not b!3456431) (not b_next!90505) (not b!3456401) (not b!3456406) (not b!3456404) (not b!3456425) (not b!3456436) (not b!3456422) b_and!242947 (not b!3456416) (not b!3456411) (not b_next!90499) (not b!3456439) b_and!242951 (not b!3456408))
(check-sat b_and!242957 b_and!242955 b_and!242949 (not b_next!90503) b_and!242953 (not b_next!90505) (not b_next!90507) b_and!242947 (not b_next!90499) b_and!242951 (not b_next!90501) (not b_next!90497))
(get-model)

(declare-fun d!994050 () Bool)

(assert (=> d!994050 (= (inv!50306 (tag!6040 (rule!8022 (h!42565 tokens!494)))) (= (mod (str.len (value!175328 (tag!6040 (rule!8022 (h!42565 tokens!494))))) 2) 0))))

(assert (=> b!3456424 d!994050))

(declare-fun d!994052 () Bool)

(declare-fun res!1394388 () Bool)

(declare-fun e!2141376 () Bool)

(assert (=> d!994052 (=> (not res!1394388) (not e!2141376))))

(declare-fun semiInverseModEq!2281 (Int Int) Bool)

(assert (=> d!994052 (= res!1394388 (semiInverseModEq!2281 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))))))

(assert (=> d!994052 (= (inv!50309 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) e!2141376)))

(declare-fun b!3456489 () Bool)

(declare-fun equivClasses!2180 (Int Int) Bool)

(assert (=> b!3456489 (= e!2141376 (equivClasses!2180 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))))))

(assert (= (and d!994052 res!1394388) b!3456489))

(declare-fun m!3856395 () Bool)

(assert (=> d!994052 m!3856395))

(declare-fun m!3856397 () Bool)

(assert (=> b!3456489 m!3856397))

(assert (=> b!3456424 d!994052))

(declare-fun d!994054 () Bool)

(declare-fun lt!1174285 () Bool)

(declare-fun e!2141418 () Bool)

(assert (=> d!994054 (= lt!1174285 e!2141418)))

(declare-fun res!1394410 () Bool)

(assert (=> d!994054 (=> (not res!1394410) (not e!2141418))))

(declare-fun list!13519 (BalanceConc!22102) List!37269)

(assert (=> d!994054 (= res!1394410 (= (list!13519 (_1!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 separatorToken!241))))) (list!13519 (singletonSeq!2530 separatorToken!241))))))

(declare-fun e!2141417 () Bool)

(assert (=> d!994054 (= lt!1174285 e!2141417)))

(declare-fun res!1394411 () Bool)

(assert (=> d!994054 (=> (not res!1394411) (not e!2141417))))

(declare-fun lt!1174286 () tuple2!36852)

(assert (=> d!994054 (= res!1394411 (= (size!28168 (_1!21560 lt!1174286)) 1))))

(assert (=> d!994054 (= lt!1174286 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 separatorToken!241))))))

(assert (=> d!994054 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994054 (= (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 separatorToken!241) lt!1174285)))

(declare-fun b!3456557 () Bool)

(declare-fun res!1394412 () Bool)

(assert (=> b!3456557 (=> (not res!1394412) (not e!2141417))))

(assert (=> b!3456557 (= res!1394412 (= (apply!8734 (_1!21560 lt!1174286) 0) separatorToken!241))))

(declare-fun b!3456558 () Bool)

(assert (=> b!3456558 (= e!2141417 (isEmpty!21485 (_2!21560 lt!1174286)))))

(declare-fun b!3456559 () Bool)

(assert (=> b!3456559 (= e!2141418 (isEmpty!21485 (_2!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 separatorToken!241))))))))

(assert (= (and d!994054 res!1394411) b!3456557))

(assert (= (and b!3456557 res!1394412) b!3456558))

(assert (= (and d!994054 res!1394410) b!3456559))

(assert (=> d!994054 m!3856227))

(assert (=> d!994054 m!3856305))

(declare-fun m!3856501 () Bool)

(assert (=> d!994054 m!3856501))

(declare-fun m!3856503 () Bool)

(assert (=> d!994054 m!3856503))

(declare-fun m!3856505 () Bool)

(assert (=> d!994054 m!3856505))

(declare-fun m!3856507 () Bool)

(assert (=> d!994054 m!3856507))

(declare-fun m!3856509 () Bool)

(assert (=> d!994054 m!3856509))

(assert (=> d!994054 m!3856305))

(assert (=> d!994054 m!3856305))

(assert (=> d!994054 m!3856503))

(declare-fun m!3856511 () Bool)

(assert (=> b!3456557 m!3856511))

(declare-fun m!3856513 () Bool)

(assert (=> b!3456558 m!3856513))

(assert (=> b!3456559 m!3856305))

(assert (=> b!3456559 m!3856305))

(assert (=> b!3456559 m!3856503))

(assert (=> b!3456559 m!3856503))

(assert (=> b!3456559 m!3856505))

(declare-fun m!3856515 () Bool)

(assert (=> b!3456559 m!3856515))

(assert (=> b!3456425 d!994054))

(declare-fun d!994080 () Bool)

(assert (=> d!994080 (= (isEmpty!21483 rules!2135) ((_ is Nil!37144) rules!2135))))

(assert (=> b!3456401 d!994080))

(declare-fun b!3456570 () Bool)

(declare-fun res!1394415 () Bool)

(declare-fun e!2141426 () Bool)

(assert (=> b!3456570 (=> res!1394415 e!2141426)))

(assert (=> b!3456570 (= res!1394415 (not ((_ is IntegerValue!16994) (value!175329 (h!42565 tokens!494)))))))

(declare-fun e!2141427 () Bool)

(assert (=> b!3456570 (= e!2141427 e!2141426)))

(declare-fun d!994082 () Bool)

(declare-fun c!591617 () Bool)

(assert (=> d!994082 (= c!591617 ((_ is IntegerValue!16992) (value!175329 (h!42565 tokens!494))))))

(declare-fun e!2141425 () Bool)

(assert (=> d!994082 (= (inv!21 (value!175329 (h!42565 tokens!494))) e!2141425)))

(declare-fun b!3456571 () Bool)

(declare-fun inv!17 (TokenValue!5664) Bool)

(assert (=> b!3456571 (= e!2141427 (inv!17 (value!175329 (h!42565 tokens!494))))))

(declare-fun b!3456572 () Bool)

(declare-fun inv!15 (TokenValue!5664) Bool)

(assert (=> b!3456572 (= e!2141426 (inv!15 (value!175329 (h!42565 tokens!494))))))

(declare-fun b!3456573 () Bool)

(assert (=> b!3456573 (= e!2141425 e!2141427)))

(declare-fun c!591618 () Bool)

(assert (=> b!3456573 (= c!591618 ((_ is IntegerValue!16993) (value!175329 (h!42565 tokens!494))))))

(declare-fun b!3456574 () Bool)

(declare-fun inv!16 (TokenValue!5664) Bool)

(assert (=> b!3456574 (= e!2141425 (inv!16 (value!175329 (h!42565 tokens!494))))))

(assert (= (and d!994082 c!591617) b!3456574))

(assert (= (and d!994082 (not c!591617)) b!3456573))

(assert (= (and b!3456573 c!591618) b!3456571))

(assert (= (and b!3456573 (not c!591618)) b!3456570))

(assert (= (and b!3456570 (not res!1394415)) b!3456572))

(declare-fun m!3856517 () Bool)

(assert (=> b!3456571 m!3856517))

(declare-fun m!3856519 () Bool)

(assert (=> b!3456572 m!3856519))

(declare-fun m!3856521 () Bool)

(assert (=> b!3456574 m!3856521))

(assert (=> b!3456422 d!994082))

(declare-fun b!3456575 () Bool)

(declare-fun res!1394416 () Bool)

(declare-fun e!2141429 () Bool)

(assert (=> b!3456575 (=> res!1394416 e!2141429)))

(assert (=> b!3456575 (= res!1394416 (not ((_ is IntegerValue!16994) (value!175329 separatorToken!241))))))

(declare-fun e!2141430 () Bool)

(assert (=> b!3456575 (= e!2141430 e!2141429)))

(declare-fun d!994084 () Bool)

(declare-fun c!591619 () Bool)

(assert (=> d!994084 (= c!591619 ((_ is IntegerValue!16992) (value!175329 separatorToken!241)))))

(declare-fun e!2141428 () Bool)

(assert (=> d!994084 (= (inv!21 (value!175329 separatorToken!241)) e!2141428)))

(declare-fun b!3456576 () Bool)

(assert (=> b!3456576 (= e!2141430 (inv!17 (value!175329 separatorToken!241)))))

(declare-fun b!3456577 () Bool)

(assert (=> b!3456577 (= e!2141429 (inv!15 (value!175329 separatorToken!241)))))

(declare-fun b!3456578 () Bool)

(assert (=> b!3456578 (= e!2141428 e!2141430)))

(declare-fun c!591620 () Bool)

(assert (=> b!3456578 (= c!591620 ((_ is IntegerValue!16993) (value!175329 separatorToken!241)))))

(declare-fun b!3456579 () Bool)

(assert (=> b!3456579 (= e!2141428 (inv!16 (value!175329 separatorToken!241)))))

(assert (= (and d!994084 c!591619) b!3456579))

(assert (= (and d!994084 (not c!591619)) b!3456578))

(assert (= (and b!3456578 c!591620) b!3456576))

(assert (= (and b!3456578 (not c!591620)) b!3456575))

(assert (= (and b!3456575 (not res!1394416)) b!3456577))

(declare-fun m!3856523 () Bool)

(assert (=> b!3456576 m!3856523))

(declare-fun m!3856525 () Bool)

(assert (=> b!3456577 m!3856525))

(declare-fun m!3856527 () Bool)

(assert (=> b!3456579 m!3856527))

(assert (=> b!3456420 d!994084))

(declare-fun d!994086 () Bool)

(declare-fun res!1394421 () Bool)

(declare-fun e!2141433 () Bool)

(assert (=> d!994086 (=> (not res!1394421) (not e!2141433))))

(declare-fun isEmpty!21487 (List!37267) Bool)

(assert (=> d!994086 (= res!1394421 (not (isEmpty!21487 (originalCharacters!6148 separatorToken!241))))))

(assert (=> d!994086 (= (inv!50310 separatorToken!241) e!2141433)))

(declare-fun b!3456584 () Bool)

(declare-fun res!1394422 () Bool)

(assert (=> b!3456584 (=> (not res!1394422) (not e!2141433))))

(declare-fun dynLambda!15635 (Int TokenValue!5664) BalanceConc!22100)

(assert (=> b!3456584 (= res!1394422 (= (originalCharacters!6148 separatorToken!241) (list!13517 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (value!175329 separatorToken!241)))))))

(declare-fun b!3456585 () Bool)

(assert (=> b!3456585 (= e!2141433 (= (size!28167 separatorToken!241) (size!28169 (originalCharacters!6148 separatorToken!241))))))

(assert (= (and d!994086 res!1394421) b!3456584))

(assert (= (and b!3456584 res!1394422) b!3456585))

(declare-fun b_lambda!99397 () Bool)

(assert (=> (not b_lambda!99397) (not b!3456584)))

(declare-fun tb!188205 () Bool)

(declare-fun t!272414 () Bool)

(assert (=> (and b!3456410 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241)))) t!272414) tb!188205))

(declare-fun b!3456590 () Bool)

(declare-fun e!2141436 () Bool)

(declare-fun tp!1077501 () Bool)

(declare-fun inv!50311 (Conc!11243) Bool)

(assert (=> b!3456590 (= e!2141436 (and (inv!50311 (c!591583 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (value!175329 separatorToken!241)))) tp!1077501))))

(declare-fun result!232144 () Bool)

(declare-fun inv!50312 (BalanceConc!22100) Bool)

(assert (=> tb!188205 (= result!232144 (and (inv!50312 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (value!175329 separatorToken!241))) e!2141436))))

(assert (= tb!188205 b!3456590))

(declare-fun m!3856529 () Bool)

(assert (=> b!3456590 m!3856529))

(declare-fun m!3856531 () Bool)

(assert (=> tb!188205 m!3856531))

(assert (=> b!3456584 t!272414))

(declare-fun b_and!242965 () Bool)

(assert (= b_and!242949 (and (=> t!272414 result!232144) b_and!242965)))

(declare-fun t!272416 () Bool)

(declare-fun tb!188207 () Bool)

(assert (=> (and b!3456428 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241)))) t!272416) tb!188207))

(declare-fun result!232148 () Bool)

(assert (= result!232148 result!232144))

(assert (=> b!3456584 t!272416))

(declare-fun b_and!242967 () Bool)

(assert (= b_and!242953 (and (=> t!272416 result!232148) b_and!242967)))

(declare-fun t!272418 () Bool)

(declare-fun tb!188209 () Bool)

(assert (=> (and b!3456421 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241)))) t!272418) tb!188209))

(declare-fun result!232150 () Bool)

(assert (= result!232150 result!232144))

(assert (=> b!3456584 t!272418))

(declare-fun b_and!242969 () Bool)

(assert (= b_and!242957 (and (=> t!272418 result!232150) b_and!242969)))

(declare-fun m!3856533 () Bool)

(assert (=> d!994086 m!3856533))

(declare-fun m!3856535 () Bool)

(assert (=> b!3456584 m!3856535))

(assert (=> b!3456584 m!3856535))

(declare-fun m!3856537 () Bool)

(assert (=> b!3456584 m!3856537))

(declare-fun m!3856539 () Bool)

(assert (=> b!3456585 m!3856539))

(assert (=> start!321410 d!994086))

(declare-fun b!3456619 () Bool)

(declare-fun e!2141452 () Bool)

(declare-fun e!2141451 () Bool)

(assert (=> b!3456619 (= e!2141452 e!2141451)))

(declare-fun c!591629 () Bool)

(assert (=> b!3456619 (= c!591629 ((_ is EmptyLang!10193) (regex!5434 lt!1174222)))))

(declare-fun b!3456620 () Bool)

(declare-fun e!2141455 () Bool)

(declare-fun e!2141453 () Bool)

(assert (=> b!3456620 (= e!2141455 e!2141453)))

(declare-fun res!1394443 () Bool)

(assert (=> b!3456620 (=> (not res!1394443) (not e!2141453))))

(declare-fun lt!1174289 () Bool)

(assert (=> b!3456620 (= res!1394443 (not lt!1174289))))

(declare-fun d!994088 () Bool)

(assert (=> d!994088 e!2141452))

(declare-fun c!591627 () Bool)

(assert (=> d!994088 (= c!591627 ((_ is EmptyExpr!10193) (regex!5434 lt!1174222)))))

(declare-fun e!2141454 () Bool)

(assert (=> d!994088 (= lt!1174289 e!2141454)))

(declare-fun c!591628 () Bool)

(assert (=> d!994088 (= c!591628 (isEmpty!21487 lt!1174209))))

(declare-fun validRegex!4641 (Regex!10193) Bool)

(assert (=> d!994088 (validRegex!4641 (regex!5434 lt!1174222))))

(assert (=> d!994088 (= (matchR!4777 (regex!5434 lt!1174222) lt!1174209) lt!1174289)))

(declare-fun b!3456621 () Bool)

(declare-fun derivativeStep!3038 (Regex!10193 C!20572) Regex!10193)

(declare-fun tail!5427 (List!37267) List!37267)

(assert (=> b!3456621 (= e!2141454 (matchR!4777 (derivativeStep!3038 (regex!5434 lt!1174222) (head!7311 lt!1174209)) (tail!5427 lt!1174209)))))

(declare-fun b!3456622 () Bool)

(declare-fun res!1394446 () Bool)

(declare-fun e!2141456 () Bool)

(assert (=> b!3456622 (=> (not res!1394446) (not e!2141456))))

(declare-fun call!249327 () Bool)

(assert (=> b!3456622 (= res!1394446 (not call!249327))))

(declare-fun b!3456623 () Bool)

(declare-fun e!2141457 () Bool)

(assert (=> b!3456623 (= e!2141453 e!2141457)))

(declare-fun res!1394442 () Bool)

(assert (=> b!3456623 (=> res!1394442 e!2141457)))

(assert (=> b!3456623 (= res!1394442 call!249327)))

(declare-fun b!3456624 () Bool)

(declare-fun res!1394439 () Bool)

(assert (=> b!3456624 (=> res!1394439 e!2141455)))

(assert (=> b!3456624 (= res!1394439 e!2141456)))

(declare-fun res!1394444 () Bool)

(assert (=> b!3456624 (=> (not res!1394444) (not e!2141456))))

(assert (=> b!3456624 (= res!1394444 lt!1174289)))

(declare-fun b!3456625 () Bool)

(declare-fun res!1394441 () Bool)

(assert (=> b!3456625 (=> (not res!1394441) (not e!2141456))))

(assert (=> b!3456625 (= res!1394441 (isEmpty!21487 (tail!5427 lt!1174209)))))

(declare-fun b!3456626 () Bool)

(assert (=> b!3456626 (= e!2141452 (= lt!1174289 call!249327))))

(declare-fun b!3456627 () Bool)

(declare-fun res!1394440 () Bool)

(assert (=> b!3456627 (=> res!1394440 e!2141455)))

(assert (=> b!3456627 (= res!1394440 (not ((_ is ElementMatch!10193) (regex!5434 lt!1174222))))))

(assert (=> b!3456627 (= e!2141451 e!2141455)))

(declare-fun b!3456628 () Bool)

(assert (=> b!3456628 (= e!2141456 (= (head!7311 lt!1174209) (c!591582 (regex!5434 lt!1174222))))))

(declare-fun b!3456629 () Bool)

(declare-fun res!1394445 () Bool)

(assert (=> b!3456629 (=> res!1394445 e!2141457)))

(assert (=> b!3456629 (= res!1394445 (not (isEmpty!21487 (tail!5427 lt!1174209))))))

(declare-fun b!3456630 () Bool)

(assert (=> b!3456630 (= e!2141451 (not lt!1174289))))

(declare-fun b!3456631 () Bool)

(assert (=> b!3456631 (= e!2141457 (not (= (head!7311 lt!1174209) (c!591582 (regex!5434 lt!1174222)))))))

(declare-fun bm!249322 () Bool)

(assert (=> bm!249322 (= call!249327 (isEmpty!21487 lt!1174209))))

(declare-fun b!3456632 () Bool)

(declare-fun nullable!3485 (Regex!10193) Bool)

(assert (=> b!3456632 (= e!2141454 (nullable!3485 (regex!5434 lt!1174222)))))

(assert (= (and d!994088 c!591628) b!3456632))

(assert (= (and d!994088 (not c!591628)) b!3456621))

(assert (= (and d!994088 c!591627) b!3456626))

(assert (= (and d!994088 (not c!591627)) b!3456619))

(assert (= (and b!3456619 c!591629) b!3456630))

(assert (= (and b!3456619 (not c!591629)) b!3456627))

(assert (= (and b!3456627 (not res!1394440)) b!3456624))

(assert (= (and b!3456624 res!1394444) b!3456622))

(assert (= (and b!3456622 res!1394446) b!3456625))

(assert (= (and b!3456625 res!1394441) b!3456628))

(assert (= (and b!3456624 (not res!1394439)) b!3456620))

(assert (= (and b!3456620 res!1394443) b!3456623))

(assert (= (and b!3456623 (not res!1394442)) b!3456629))

(assert (= (and b!3456629 (not res!1394445)) b!3456631))

(assert (= (or b!3456626 b!3456622 b!3456623) bm!249322))

(declare-fun m!3856541 () Bool)

(assert (=> bm!249322 m!3856541))

(assert (=> d!994088 m!3856541))

(declare-fun m!3856543 () Bool)

(assert (=> d!994088 m!3856543))

(declare-fun m!3856545 () Bool)

(assert (=> b!3456625 m!3856545))

(assert (=> b!3456625 m!3856545))

(declare-fun m!3856547 () Bool)

(assert (=> b!3456625 m!3856547))

(declare-fun m!3856549 () Bool)

(assert (=> b!3456631 m!3856549))

(assert (=> b!3456628 m!3856549))

(assert (=> b!3456621 m!3856549))

(assert (=> b!3456621 m!3856549))

(declare-fun m!3856551 () Bool)

(assert (=> b!3456621 m!3856551))

(assert (=> b!3456621 m!3856545))

(assert (=> b!3456621 m!3856551))

(assert (=> b!3456621 m!3856545))

(declare-fun m!3856553 () Bool)

(assert (=> b!3456621 m!3856553))

(assert (=> b!3456629 m!3856545))

(assert (=> b!3456629 m!3856545))

(assert (=> b!3456629 m!3856547))

(declare-fun m!3856555 () Bool)

(assert (=> b!3456632 m!3856555))

(assert (=> b!3456408 d!994088))

(declare-fun d!994090 () Bool)

(assert (=> d!994090 (= (get!11884 lt!1174201) (v!36822 lt!1174201))))

(assert (=> b!3456408 d!994090))

(declare-fun d!994092 () Bool)

(declare-fun lt!1174292 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5178 (List!37268) (InoxSet Rule!10668))

(assert (=> d!994092 (= lt!1174292 (select (content!5178 rules!2135) (rule!8022 separatorToken!241)))))

(declare-fun e!2141463 () Bool)

(assert (=> d!994092 (= lt!1174292 e!2141463)))

(declare-fun res!1394451 () Bool)

(assert (=> d!994092 (=> (not res!1394451) (not e!2141463))))

(assert (=> d!994092 (= res!1394451 ((_ is Cons!37144) rules!2135))))

(assert (=> d!994092 (= (contains!6877 rules!2135 (rule!8022 separatorToken!241)) lt!1174292)))

(declare-fun b!3456637 () Bool)

(declare-fun e!2141462 () Bool)

(assert (=> b!3456637 (= e!2141463 e!2141462)))

(declare-fun res!1394452 () Bool)

(assert (=> b!3456637 (=> res!1394452 e!2141462)))

(assert (=> b!3456637 (= res!1394452 (= (h!42564 rules!2135) (rule!8022 separatorToken!241)))))

(declare-fun b!3456638 () Bool)

(assert (=> b!3456638 (= e!2141462 (contains!6877 (t!272403 rules!2135) (rule!8022 separatorToken!241)))))

(assert (= (and d!994092 res!1394451) b!3456637))

(assert (= (and b!3456637 (not res!1394452)) b!3456638))

(declare-fun m!3856557 () Bool)

(assert (=> d!994092 m!3856557))

(declare-fun m!3856559 () Bool)

(assert (=> d!994092 m!3856559))

(declare-fun m!3856561 () Bool)

(assert (=> b!3456638 m!3856561))

(assert (=> b!3456409 d!994092))

(declare-fun d!994094 () Bool)

(declare-fun res!1394455 () Bool)

(declare-fun e!2141466 () Bool)

(assert (=> d!994094 (=> (not res!1394455) (not e!2141466))))

(declare-fun rulesValid!2040 (LexerInterface!5023 List!37268) Bool)

(assert (=> d!994094 (= res!1394455 (rulesValid!2040 thiss!18206 rules!2135))))

(assert (=> d!994094 (= (rulesInvariant!4420 thiss!18206 rules!2135) e!2141466)))

(declare-fun b!3456641 () Bool)

(declare-datatypes ((List!37270 0))(
  ( (Nil!37146) (Cons!37146 (h!42566 String!41654) (t!272499 List!37270)) )
))
(declare-fun noDuplicateTag!2036 (LexerInterface!5023 List!37268 List!37270) Bool)

(assert (=> b!3456641 (= e!2141466 (noDuplicateTag!2036 thiss!18206 rules!2135 Nil!37146))))

(assert (= (and d!994094 res!1394455) b!3456641))

(declare-fun m!3856563 () Bool)

(assert (=> d!994094 m!3856563))

(declare-fun m!3856565 () Bool)

(assert (=> b!3456641 m!3856565))

(assert (=> b!3456430 d!994094))

(declare-fun d!994096 () Bool)

(declare-fun lt!1174295 () Token!10234)

(declare-fun apply!8737 (List!37269 Int) Token!10234)

(assert (=> d!994096 (= lt!1174295 (apply!8737 (list!13519 (_1!21560 lt!1174212)) 0))))

(declare-fun apply!8738 (Conc!11244 Int) Token!10234)

(assert (=> d!994096 (= lt!1174295 (apply!8738 (c!591584 (_1!21560 lt!1174212)) 0))))

(declare-fun e!2141469 () Bool)

(assert (=> d!994096 e!2141469))

(declare-fun res!1394458 () Bool)

(assert (=> d!994096 (=> (not res!1394458) (not e!2141469))))

(assert (=> d!994096 (= res!1394458 (<= 0 0))))

(assert (=> d!994096 (= (apply!8734 (_1!21560 lt!1174212) 0) lt!1174295)))

(declare-fun b!3456644 () Bool)

(assert (=> b!3456644 (= e!2141469 (< 0 (size!28168 (_1!21560 lt!1174212))))))

(assert (= (and d!994096 res!1394458) b!3456644))

(declare-fun m!3856567 () Bool)

(assert (=> d!994096 m!3856567))

(assert (=> d!994096 m!3856567))

(declare-fun m!3856569 () Bool)

(assert (=> d!994096 m!3856569))

(declare-fun m!3856571 () Bool)

(assert (=> d!994096 m!3856571))

(assert (=> b!3456644 m!3856281))

(assert (=> b!3456407 d!994096))

(declare-fun d!994098 () Bool)

(declare-fun list!13520 (Conc!11243) List!37267)

(assert (=> d!994098 (= (list!13517 lt!1174196) (list!13520 (c!591583 lt!1174196)))))

(declare-fun bs!560090 () Bool)

(assert (= bs!560090 d!994098))

(declare-fun m!3856573 () Bool)

(assert (=> bs!560090 m!3856573))

(assert (=> b!3456406 d!994098))

(declare-fun d!994100 () Bool)

(declare-fun lt!1174315 () BalanceConc!22100)

(declare-fun printListTailRec!686 (LexerInterface!5023 List!37269 List!37267) List!37267)

(declare-fun dropList!1203 (BalanceConc!22102 Int) List!37269)

(assert (=> d!994100 (= (list!13517 lt!1174315) (printListTailRec!686 thiss!18206 (dropList!1203 lt!1174206 0) (list!13517 (BalanceConc!22101 Empty!11243))))))

(declare-fun e!2141475 () BalanceConc!22100)

(assert (=> d!994100 (= lt!1174315 e!2141475)))

(declare-fun c!591632 () Bool)

(assert (=> d!994100 (= c!591632 (>= 0 (size!28168 lt!1174206)))))

(declare-fun e!2141474 () Bool)

(assert (=> d!994100 e!2141474))

(declare-fun res!1394461 () Bool)

(assert (=> d!994100 (=> (not res!1394461) (not e!2141474))))

(assert (=> d!994100 (= res!1394461 (>= 0 0))))

(assert (=> d!994100 (= (printTailRec!1518 thiss!18206 lt!1174206 0 (BalanceConc!22101 Empty!11243)) lt!1174315)))

(declare-fun b!3456651 () Bool)

(assert (=> b!3456651 (= e!2141474 (<= 0 (size!28168 lt!1174206)))))

(declare-fun b!3456652 () Bool)

(assert (=> b!3456652 (= e!2141475 (BalanceConc!22101 Empty!11243))))

(declare-fun b!3456653 () Bool)

(declare-fun ++!9153 (BalanceConc!22100 BalanceConc!22100) BalanceConc!22100)

(assert (=> b!3456653 (= e!2141475 (printTailRec!1518 thiss!18206 lt!1174206 (+ 0 1) (++!9153 (BalanceConc!22101 Empty!11243) (charsOf!3448 (apply!8734 lt!1174206 0)))))))

(declare-fun lt!1174318 () List!37269)

(assert (=> b!3456653 (= lt!1174318 (list!13519 lt!1174206))))

(declare-fun lt!1174319 () Unit!52472)

(declare-fun lemmaDropApply!1161 (List!37269 Int) Unit!52472)

(assert (=> b!3456653 (= lt!1174319 (lemmaDropApply!1161 lt!1174318 0))))

(declare-fun head!7313 (List!37269) Token!10234)

(declare-fun drop!2009 (List!37269 Int) List!37269)

(assert (=> b!3456653 (= (head!7313 (drop!2009 lt!1174318 0)) (apply!8737 lt!1174318 0))))

(declare-fun lt!1174314 () Unit!52472)

(assert (=> b!3456653 (= lt!1174314 lt!1174319)))

(declare-fun lt!1174313 () List!37269)

(assert (=> b!3456653 (= lt!1174313 (list!13519 lt!1174206))))

(declare-fun lt!1174317 () Unit!52472)

(declare-fun lemmaDropTail!1045 (List!37269 Int) Unit!52472)

(assert (=> b!3456653 (= lt!1174317 (lemmaDropTail!1045 lt!1174313 0))))

(declare-fun tail!5428 (List!37269) List!37269)

(assert (=> b!3456653 (= (tail!5428 (drop!2009 lt!1174313 0)) (drop!2009 lt!1174313 (+ 0 1)))))

(declare-fun lt!1174316 () Unit!52472)

(assert (=> b!3456653 (= lt!1174316 lt!1174317)))

(assert (= (and d!994100 res!1394461) b!3456651))

(assert (= (and d!994100 c!591632) b!3456652))

(assert (= (and d!994100 (not c!591632)) b!3456653))

(declare-fun m!3856577 () Bool)

(assert (=> d!994100 m!3856577))

(declare-fun m!3856579 () Bool)

(assert (=> d!994100 m!3856579))

(declare-fun m!3856581 () Bool)

(assert (=> d!994100 m!3856581))

(declare-fun m!3856583 () Bool)

(assert (=> d!994100 m!3856583))

(assert (=> d!994100 m!3856577))

(assert (=> d!994100 m!3856583))

(declare-fun m!3856585 () Bool)

(assert (=> d!994100 m!3856585))

(assert (=> b!3456651 m!3856579))

(declare-fun m!3856587 () Bool)

(assert (=> b!3456653 m!3856587))

(declare-fun m!3856589 () Bool)

(assert (=> b!3456653 m!3856589))

(assert (=> b!3456653 m!3856587))

(declare-fun m!3856591 () Bool)

(assert (=> b!3456653 m!3856591))

(declare-fun m!3856593 () Bool)

(assert (=> b!3456653 m!3856593))

(declare-fun m!3856595 () Bool)

(assert (=> b!3456653 m!3856595))

(declare-fun m!3856597 () Bool)

(assert (=> b!3456653 m!3856597))

(declare-fun m!3856599 () Bool)

(assert (=> b!3456653 m!3856599))

(declare-fun m!3856601 () Bool)

(assert (=> b!3456653 m!3856601))

(declare-fun m!3856603 () Bool)

(assert (=> b!3456653 m!3856603))

(declare-fun m!3856605 () Bool)

(assert (=> b!3456653 m!3856605))

(assert (=> b!3456653 m!3856595))

(assert (=> b!3456653 m!3856591))

(declare-fun m!3856607 () Bool)

(assert (=> b!3456653 m!3856607))

(declare-fun m!3856609 () Bool)

(assert (=> b!3456653 m!3856609))

(declare-fun m!3856611 () Bool)

(assert (=> b!3456653 m!3856611))

(assert (=> b!3456653 m!3856597))

(assert (=> b!3456653 m!3856603))

(assert (=> b!3456406 d!994100))

(declare-fun d!994104 () Bool)

(declare-fun lt!1174322 () BalanceConc!22100)

(assert (=> d!994104 (= (list!13517 lt!1174322) (printList!1571 thiss!18206 (list!13519 lt!1174206)))))

(assert (=> d!994104 (= lt!1174322 (printTailRec!1518 thiss!18206 lt!1174206 0 (BalanceConc!22101 Empty!11243)))))

(assert (=> d!994104 (= (print!2088 thiss!18206 lt!1174206) lt!1174322)))

(declare-fun bs!560092 () Bool)

(assert (= bs!560092 d!994104))

(declare-fun m!3856613 () Bool)

(assert (=> bs!560092 m!3856613))

(assert (=> bs!560092 m!3856601))

(assert (=> bs!560092 m!3856601))

(declare-fun m!3856615 () Bool)

(assert (=> bs!560092 m!3856615))

(assert (=> bs!560092 m!3856225))

(assert (=> b!3456406 d!994104))

(declare-fun d!994106 () Bool)

(declare-fun e!2141478 () Bool)

(assert (=> d!994106 e!2141478))

(declare-fun res!1394464 () Bool)

(assert (=> d!994106 (=> (not res!1394464) (not e!2141478))))

(declare-fun lt!1174325 () BalanceConc!22102)

(assert (=> d!994106 (= res!1394464 (= (list!13519 lt!1174325) (Cons!37145 (h!42565 tokens!494) Nil!37145)))))

(declare-fun singleton!1118 (Token!10234) BalanceConc!22102)

(assert (=> d!994106 (= lt!1174325 (singleton!1118 (h!42565 tokens!494)))))

(assert (=> d!994106 (= (singletonSeq!2530 (h!42565 tokens!494)) lt!1174325)))

(declare-fun b!3456656 () Bool)

(declare-fun isBalanced!3411 (Conc!11244) Bool)

(assert (=> b!3456656 (= e!2141478 (isBalanced!3411 (c!591584 lt!1174325)))))

(assert (= (and d!994106 res!1394464) b!3456656))

(declare-fun m!3856617 () Bool)

(assert (=> d!994106 m!3856617))

(declare-fun m!3856619 () Bool)

(assert (=> d!994106 m!3856619))

(declare-fun m!3856621 () Bool)

(assert (=> b!3456656 m!3856621))

(assert (=> b!3456406 d!994106))

(declare-fun d!994108 () Bool)

(declare-fun c!591635 () Bool)

(assert (=> d!994108 (= c!591635 ((_ is Cons!37145) (Cons!37145 (h!42565 tokens!494) Nil!37145)))))

(declare-fun e!2141481 () List!37267)

(assert (=> d!994108 (= (printList!1571 thiss!18206 (Cons!37145 (h!42565 tokens!494) Nil!37145)) e!2141481)))

(declare-fun b!3456661 () Bool)

(assert (=> b!3456661 (= e!2141481 (++!9151 (list!13517 (charsOf!3448 (h!42565 (Cons!37145 (h!42565 tokens!494) Nil!37145)))) (printList!1571 thiss!18206 (t!272404 (Cons!37145 (h!42565 tokens!494) Nil!37145)))))))

(declare-fun b!3456662 () Bool)

(assert (=> b!3456662 (= e!2141481 Nil!37143)))

(assert (= (and d!994108 c!591635) b!3456661))

(assert (= (and d!994108 (not c!591635)) b!3456662))

(declare-fun m!3856623 () Bool)

(assert (=> b!3456661 m!3856623))

(assert (=> b!3456661 m!3856623))

(declare-fun m!3856625 () Bool)

(assert (=> b!3456661 m!3856625))

(declare-fun m!3856627 () Bool)

(assert (=> b!3456661 m!3856627))

(assert (=> b!3456661 m!3856625))

(assert (=> b!3456661 m!3856627))

(declare-fun m!3856629 () Bool)

(assert (=> b!3456661 m!3856629))

(assert (=> b!3456406 d!994108))

(declare-fun d!994110 () Bool)

(declare-fun lt!1174326 () Token!10234)

(assert (=> d!994110 (= lt!1174326 (apply!8737 (list!13519 (_1!21560 lt!1174213)) 0))))

(assert (=> d!994110 (= lt!1174326 (apply!8738 (c!591584 (_1!21560 lt!1174213)) 0))))

(declare-fun e!2141482 () Bool)

(assert (=> d!994110 e!2141482))

(declare-fun res!1394465 () Bool)

(assert (=> d!994110 (=> (not res!1394465) (not e!2141482))))

(assert (=> d!994110 (= res!1394465 (<= 0 0))))

(assert (=> d!994110 (= (apply!8734 (_1!21560 lt!1174213) 0) lt!1174326)))

(declare-fun b!3456663 () Bool)

(assert (=> b!3456663 (= e!2141482 (< 0 (size!28168 (_1!21560 lt!1174213))))))

(assert (= (and d!994110 res!1394465) b!3456663))

(declare-fun m!3856631 () Bool)

(assert (=> d!994110 m!3856631))

(assert (=> d!994110 m!3856631))

(declare-fun m!3856633 () Bool)

(assert (=> d!994110 m!3856633))

(declare-fun m!3856635 () Bool)

(assert (=> d!994110 m!3856635))

(assert (=> b!3456663 m!3856299))

(assert (=> b!3456404 d!994110))

(declare-fun bs!560093 () Bool)

(declare-fun d!994112 () Bool)

(assert (= bs!560093 (and d!994112 b!3456438)))

(declare-fun lambda!121742 () Int)

(assert (=> bs!560093 (not (= lambda!121742 lambda!121736))))

(declare-fun bs!560094 () Bool)

(assert (= bs!560094 (and d!994112 b!3456413)))

(assert (=> bs!560094 (= lambda!121742 lambda!121737)))

(declare-fun b!3456696 () Bool)

(declare-fun e!2141500 () Bool)

(assert (=> b!3456696 (= e!2141500 true)))

(declare-fun b!3456695 () Bool)

(declare-fun e!2141499 () Bool)

(assert (=> b!3456695 (= e!2141499 e!2141500)))

(declare-fun b!3456694 () Bool)

(declare-fun e!2141498 () Bool)

(assert (=> b!3456694 (= e!2141498 e!2141499)))

(assert (=> d!994112 e!2141498))

(assert (= b!3456695 b!3456696))

(assert (= b!3456694 b!3456695))

(assert (= (and d!994112 ((_ is Cons!37144) rules!2135)) b!3456694))

(assert (=> b!3456696 (< (dynLambda!15630 order!19761 (toValue!7658 (transformation!5434 (h!42564 rules!2135)))) (dynLambda!15631 order!19763 lambda!121742))))

(assert (=> b!3456696 (< (dynLambda!15632 order!19765 (toChars!7517 (transformation!5434 (h!42564 rules!2135)))) (dynLambda!15631 order!19763 lambda!121742))))

(assert (=> d!994112 true))

(declare-fun e!2141497 () Bool)

(assert (=> d!994112 e!2141497))

(declare-fun res!1394489 () Bool)

(assert (=> d!994112 (=> (not res!1394489) (not e!2141497))))

(declare-fun lt!1174344 () Bool)

(assert (=> d!994112 (= res!1394489 (= lt!1174344 (forall!7911 (list!13519 (seqFromList!3921 tokens!494)) lambda!121742)))))

(declare-fun forall!7912 (BalanceConc!22102 Int) Bool)

(assert (=> d!994112 (= lt!1174344 (forall!7912 (seqFromList!3921 tokens!494) lambda!121742))))

(assert (=> d!994112 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994112 (= (rulesProduceEachTokenIndividually!1474 thiss!18206 rules!2135 (seqFromList!3921 tokens!494)) lt!1174344)))

(declare-fun b!3456693 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1852 (LexerInterface!5023 List!37268 List!37269) Bool)

(assert (=> b!3456693 (= e!2141497 (= lt!1174344 (rulesProduceEachTokenIndividuallyList!1852 thiss!18206 rules!2135 (list!13519 (seqFromList!3921 tokens!494)))))))

(assert (= (and d!994112 res!1394489) b!3456693))

(assert (=> d!994112 m!3856195))

(declare-fun m!3856681 () Bool)

(assert (=> d!994112 m!3856681))

(assert (=> d!994112 m!3856681))

(declare-fun m!3856683 () Bool)

(assert (=> d!994112 m!3856683))

(assert (=> d!994112 m!3856195))

(declare-fun m!3856685 () Bool)

(assert (=> d!994112 m!3856685))

(assert (=> d!994112 m!3856227))

(assert (=> b!3456693 m!3856195))

(assert (=> b!3456693 m!3856681))

(assert (=> b!3456693 m!3856681))

(declare-fun m!3856687 () Bool)

(assert (=> b!3456693 m!3856687))

(assert (=> b!3456405 d!994112))

(declare-fun d!994116 () Bool)

(declare-fun fromListB!1776 (List!37269) BalanceConc!22102)

(assert (=> d!994116 (= (seqFromList!3921 tokens!494) (fromListB!1776 tokens!494))))

(declare-fun bs!560095 () Bool)

(assert (= bs!560095 d!994116))

(declare-fun m!3856689 () Bool)

(assert (=> bs!560095 m!3856689))

(assert (=> b!3456405 d!994116))

(declare-fun b!3456707 () Bool)

(declare-fun res!1394494 () Bool)

(declare-fun e!2141506 () Bool)

(assert (=> b!3456707 (=> (not res!1394494) (not e!2141506))))

(declare-fun lt!1174347 () List!37267)

(assert (=> b!3456707 (= res!1394494 (= (size!28169 lt!1174347) (+ (size!28169 lt!1174216) (size!28169 lt!1174203))))))

(declare-fun b!3456706 () Bool)

(declare-fun e!2141505 () List!37267)

(assert (=> b!3456706 (= e!2141505 (Cons!37143 (h!42563 lt!1174216) (++!9151 (t!272402 lt!1174216) lt!1174203)))))

(declare-fun b!3456708 () Bool)

(assert (=> b!3456708 (= e!2141506 (or (not (= lt!1174203 Nil!37143)) (= lt!1174347 lt!1174216)))))

(declare-fun b!3456705 () Bool)

(assert (=> b!3456705 (= e!2141505 lt!1174203)))

(declare-fun d!994118 () Bool)

(assert (=> d!994118 e!2141506))

(declare-fun res!1394495 () Bool)

(assert (=> d!994118 (=> (not res!1394495) (not e!2141506))))

(declare-fun content!5180 (List!37267) (InoxSet C!20572))

(assert (=> d!994118 (= res!1394495 (= (content!5180 lt!1174347) ((_ map or) (content!5180 lt!1174216) (content!5180 lt!1174203))))))

(assert (=> d!994118 (= lt!1174347 e!2141505)))

(declare-fun c!591641 () Bool)

(assert (=> d!994118 (= c!591641 ((_ is Nil!37143) lt!1174216))))

(assert (=> d!994118 (= (++!9151 lt!1174216 lt!1174203) lt!1174347)))

(assert (= (and d!994118 c!591641) b!3456705))

(assert (= (and d!994118 (not c!591641)) b!3456706))

(assert (= (and d!994118 res!1394495) b!3456707))

(assert (= (and b!3456707 res!1394494) b!3456708))

(declare-fun m!3856691 () Bool)

(assert (=> b!3456707 m!3856691))

(declare-fun m!3856693 () Bool)

(assert (=> b!3456707 m!3856693))

(declare-fun m!3856695 () Bool)

(assert (=> b!3456707 m!3856695))

(declare-fun m!3856697 () Bool)

(assert (=> b!3456706 m!3856697))

(declare-fun m!3856699 () Bool)

(assert (=> d!994118 m!3856699))

(declare-fun m!3856701 () Bool)

(assert (=> d!994118 m!3856701))

(declare-fun m!3856703 () Bool)

(assert (=> d!994118 m!3856703))

(assert (=> b!3456435 d!994118))

(declare-fun d!994120 () Bool)

(declare-fun lt!1174350 () BalanceConc!22100)

(assert (=> d!994120 (= (list!13517 lt!1174350) (originalCharacters!6148 separatorToken!241))))

(assert (=> d!994120 (= lt!1174350 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (value!175329 separatorToken!241)))))

(assert (=> d!994120 (= (charsOf!3448 separatorToken!241) lt!1174350)))

(declare-fun b_lambda!99399 () Bool)

(assert (=> (not b_lambda!99399) (not d!994120)))

(assert (=> d!994120 t!272414))

(declare-fun b_and!242971 () Bool)

(assert (= b_and!242965 (and (=> t!272414 result!232144) b_and!242971)))

(assert (=> d!994120 t!272416))

(declare-fun b_and!242973 () Bool)

(assert (= b_and!242967 (and (=> t!272416 result!232148) b_and!242973)))

(assert (=> d!994120 t!272418))

(declare-fun b_and!242975 () Bool)

(assert (= b_and!242969 (and (=> t!272418 result!232150) b_and!242975)))

(declare-fun m!3856705 () Bool)

(assert (=> d!994120 m!3856705))

(assert (=> d!994120 m!3856535))

(assert (=> b!3456435 d!994120))

(declare-fun b!3456711 () Bool)

(declare-fun res!1394496 () Bool)

(declare-fun e!2141508 () Bool)

(assert (=> b!3456711 (=> (not res!1394496) (not e!2141508))))

(declare-fun lt!1174351 () List!37267)

(assert (=> b!3456711 (= res!1394496 (= (size!28169 lt!1174351) (+ (size!28169 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216)) (size!28169 (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241)))))))

(declare-fun e!2141507 () List!37267)

(declare-fun b!3456710 () Bool)

(assert (=> b!3456710 (= e!2141507 (Cons!37143 (h!42563 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216)) (++!9151 (t!272402 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216)) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241))))))

(declare-fun b!3456712 () Bool)

(assert (=> b!3456712 (= e!2141508 (or (not (= (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241) Nil!37143)) (= lt!1174351 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216))))))

(declare-fun b!3456709 () Bool)

(assert (=> b!3456709 (= e!2141507 (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241))))

(declare-fun d!994122 () Bool)

(assert (=> d!994122 e!2141508))

(declare-fun res!1394497 () Bool)

(assert (=> d!994122 (=> (not res!1394497) (not e!2141508))))

(assert (=> d!994122 (= res!1394497 (= (content!5180 lt!1174351) ((_ map or) (content!5180 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216)) (content!5180 (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241)))))))

(assert (=> d!994122 (= lt!1174351 e!2141507)))

(declare-fun c!591642 () Bool)

(assert (=> d!994122 (= c!591642 ((_ is Nil!37143) (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216)))))

(assert (=> d!994122 (= (++!9151 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241)) lt!1174351)))

(assert (= (and d!994122 c!591642) b!3456709))

(assert (= (and d!994122 (not c!591642)) b!3456710))

(assert (= (and d!994122 res!1394497) b!3456711))

(assert (= (and b!3456711 res!1394496) b!3456712))

(declare-fun m!3856707 () Bool)

(assert (=> b!3456711 m!3856707))

(assert (=> b!3456711 m!3856261))

(declare-fun m!3856709 () Bool)

(assert (=> b!3456711 m!3856709))

(assert (=> b!3456711 m!3856263))

(declare-fun m!3856711 () Bool)

(assert (=> b!3456711 m!3856711))

(assert (=> b!3456710 m!3856263))

(declare-fun m!3856713 () Bool)

(assert (=> b!3456710 m!3856713))

(declare-fun m!3856715 () Bool)

(assert (=> d!994122 m!3856715))

(assert (=> d!994122 m!3856261))

(declare-fun m!3856717 () Bool)

(assert (=> d!994122 m!3856717))

(assert (=> d!994122 m!3856263))

(declare-fun m!3856719 () Bool)

(assert (=> d!994122 m!3856719))

(assert (=> b!3456435 d!994122))

(declare-fun d!994124 () Bool)

(declare-fun c!591645 () Bool)

(assert (=> d!994124 (= c!591645 ((_ is Cons!37145) tokens!494))))

(declare-fun e!2141515 () List!37267)

(assert (=> d!994124 (= (printWithSeparatorTokenList!310 thiss!18206 tokens!494 separatorToken!241) e!2141515)))

(declare-fun b!3456723 () Bool)

(assert (=> b!3456723 (= e!2141515 (++!9151 (++!9151 (list!13517 (charsOf!3448 (h!42565 tokens!494))) (list!13517 (charsOf!3448 separatorToken!241))) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 tokens!494) separatorToken!241)))))

(declare-fun b!3456724 () Bool)

(assert (=> b!3456724 (= e!2141515 Nil!37143)))

(assert (= (and d!994124 c!591645) b!3456723))

(assert (= (and d!994124 (not c!591645)) b!3456724))

(assert (=> b!3456723 m!3856245))

(declare-fun m!3856721 () Bool)

(assert (=> b!3456723 m!3856721))

(assert (=> b!3456723 m!3856257))

(declare-fun m!3856723 () Bool)

(assert (=> b!3456723 m!3856723))

(assert (=> b!3456723 m!3856257))

(assert (=> b!3456723 m!3856245))

(assert (=> b!3456723 m!3856247))

(assert (=> b!3456723 m!3856247))

(assert (=> b!3456723 m!3856267))

(assert (=> b!3456723 m!3856721))

(assert (=> b!3456723 m!3856251))

(assert (=> b!3456723 m!3856251))

(assert (=> b!3456723 m!3856267))

(assert (=> b!3456435 d!994124))

(declare-fun d!994126 () Bool)

(declare-fun c!591646 () Bool)

(assert (=> d!994126 (= c!591646 ((_ is Cons!37145) (t!272404 (t!272404 tokens!494))))))

(declare-fun e!2141518 () List!37267)

(assert (=> d!994126 (= (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241) e!2141518)))

(declare-fun b!3456728 () Bool)

(assert (=> b!3456728 (= e!2141518 (++!9151 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 (t!272404 tokens!494))))) (list!13517 (charsOf!3448 separatorToken!241))) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 (t!272404 tokens!494))) separatorToken!241)))))

(declare-fun b!3456729 () Bool)

(assert (=> b!3456729 (= e!2141518 Nil!37143)))

(assert (= (and d!994126 c!591646) b!3456728))

(assert (= (and d!994126 (not c!591646)) b!3456729))

(declare-fun m!3856727 () Bool)

(assert (=> b!3456728 m!3856727))

(declare-fun m!3856733 () Bool)

(assert (=> b!3456728 m!3856733))

(declare-fun m!3856737 () Bool)

(assert (=> b!3456728 m!3856737))

(declare-fun m!3856739 () Bool)

(assert (=> b!3456728 m!3856739))

(assert (=> b!3456728 m!3856737))

(assert (=> b!3456728 m!3856727))

(declare-fun m!3856743 () Bool)

(assert (=> b!3456728 m!3856743))

(assert (=> b!3456728 m!3856743))

(assert (=> b!3456728 m!3856267))

(assert (=> b!3456728 m!3856733))

(assert (=> b!3456728 m!3856251))

(assert (=> b!3456728 m!3856251))

(assert (=> b!3456728 m!3856267))

(assert (=> b!3456435 d!994126))

(declare-fun d!994128 () Bool)

(declare-fun c!591647 () Bool)

(assert (=> d!994128 (= c!591647 ((_ is Cons!37145) (t!272404 tokens!494)))))

(declare-fun e!2141519 () List!37267)

(assert (=> d!994128 (= (printWithSeparatorTokenList!310 thiss!18206 (t!272404 tokens!494) separatorToken!241) e!2141519)))

(declare-fun b!3456730 () Bool)

(assert (=> b!3456730 (= e!2141519 (++!9151 (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) (list!13517 (charsOf!3448 separatorToken!241))) (printWithSeparatorTokenList!310 thiss!18206 (t!272404 (t!272404 tokens!494)) separatorToken!241)))))

(declare-fun b!3456731 () Bool)

(assert (=> b!3456731 (= e!2141519 Nil!37143)))

(assert (= (and d!994128 c!591647) b!3456730))

(assert (= (and d!994128 (not c!591647)) b!3456731))

(assert (=> b!3456730 m!3856249))

(declare-fun m!3856751 () Bool)

(assert (=> b!3456730 m!3856751))

(assert (=> b!3456730 m!3856263))

(declare-fun m!3856753 () Bool)

(assert (=> b!3456730 m!3856753))

(assert (=> b!3456730 m!3856263))

(assert (=> b!3456730 m!3856249))

(assert (=> b!3456730 m!3856259))

(assert (=> b!3456730 m!3856259))

(assert (=> b!3456730 m!3856267))

(assert (=> b!3456730 m!3856751))

(assert (=> b!3456730 m!3856251))

(assert (=> b!3456730 m!3856251))

(assert (=> b!3456730 m!3856267))

(assert (=> b!3456435 d!994128))

(declare-fun d!994132 () Bool)

(assert (=> d!994132 (= (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) (list!13520 (c!591583 (charsOf!3448 (h!42565 (t!272404 tokens!494))))))))

(declare-fun bs!560096 () Bool)

(assert (= bs!560096 d!994132))

(declare-fun m!3856755 () Bool)

(assert (=> bs!560096 m!3856755))

(assert (=> b!3456435 d!994132))

(declare-fun b!3456734 () Bool)

(declare-fun res!1394507 () Bool)

(declare-fun e!2141521 () Bool)

(assert (=> b!3456734 (=> (not res!1394507) (not e!2141521))))

(declare-fun lt!1174358 () List!37267)

(assert (=> b!3456734 (= res!1394507 (= (size!28169 lt!1174358) (+ (size!28169 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494))))) (size!28169 lt!1174216))))))

(declare-fun b!3456733 () Bool)

(declare-fun e!2141520 () List!37267)

(assert (=> b!3456733 (= e!2141520 (Cons!37143 (h!42563 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494))))) (++!9151 (t!272402 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494))))) lt!1174216)))))

(declare-fun b!3456735 () Bool)

(assert (=> b!3456735 (= e!2141521 (or (not (= lt!1174216 Nil!37143)) (= lt!1174358 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))))))))

(declare-fun b!3456732 () Bool)

(assert (=> b!3456732 (= e!2141520 lt!1174216)))

(declare-fun d!994134 () Bool)

(assert (=> d!994134 e!2141521))

(declare-fun res!1394508 () Bool)

(assert (=> d!994134 (=> (not res!1394508) (not e!2141521))))

(assert (=> d!994134 (= res!1394508 (= (content!5180 lt!1174358) ((_ map or) (content!5180 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494))))) (content!5180 lt!1174216))))))

(assert (=> d!994134 (= lt!1174358 e!2141520)))

(declare-fun c!591648 () Bool)

(assert (=> d!994134 (= c!591648 ((_ is Nil!37143) (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494))))))))

(assert (=> d!994134 (= (++!9151 (list!13517 (charsOf!3448 (h!42565 (t!272404 tokens!494)))) lt!1174216) lt!1174358)))

(assert (= (and d!994134 c!591648) b!3456732))

(assert (= (and d!994134 (not c!591648)) b!3456733))

(assert (= (and d!994134 res!1394508) b!3456734))

(assert (= (and b!3456734 res!1394507) b!3456735))

(declare-fun m!3856757 () Bool)

(assert (=> b!3456734 m!3856757))

(assert (=> b!3456734 m!3856259))

(declare-fun m!3856759 () Bool)

(assert (=> b!3456734 m!3856759))

(assert (=> b!3456734 m!3856693))

(declare-fun m!3856761 () Bool)

(assert (=> b!3456733 m!3856761))

(declare-fun m!3856763 () Bool)

(assert (=> d!994134 m!3856763))

(assert (=> d!994134 m!3856259))

(declare-fun m!3856765 () Bool)

(assert (=> d!994134 m!3856765))

(assert (=> d!994134 m!3856701))

(assert (=> b!3456435 d!994134))

(declare-fun d!994136 () Bool)

(assert (=> d!994136 (= (list!13517 (charsOf!3448 separatorToken!241)) (list!13520 (c!591583 (charsOf!3448 separatorToken!241))))))

(declare-fun bs!560097 () Bool)

(assert (= bs!560097 d!994136))

(declare-fun m!3856767 () Bool)

(assert (=> bs!560097 m!3856767))

(assert (=> b!3456435 d!994136))

(declare-fun d!994138 () Bool)

(declare-fun lt!1174359 () BalanceConc!22100)

(assert (=> d!994138 (= (list!13517 lt!1174359) (originalCharacters!6148 (h!42565 (t!272404 tokens!494))))))

(assert (=> d!994138 (= lt!1174359 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (value!175329 (h!42565 (t!272404 tokens!494)))))))

(assert (=> d!994138 (= (charsOf!3448 (h!42565 (t!272404 tokens!494))) lt!1174359)))

(declare-fun b_lambda!99401 () Bool)

(assert (=> (not b_lambda!99401) (not d!994138)))

(declare-fun t!272427 () Bool)

(declare-fun tb!188211 () Bool)

(assert (=> (and b!3456410 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494)))))) t!272427) tb!188211))

(declare-fun b!3456736 () Bool)

(declare-fun e!2141522 () Bool)

(declare-fun tp!1077502 () Bool)

(assert (=> b!3456736 (= e!2141522 (and (inv!50311 (c!591583 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (value!175329 (h!42565 (t!272404 tokens!494)))))) tp!1077502))))

(declare-fun result!232152 () Bool)

(assert (=> tb!188211 (= result!232152 (and (inv!50312 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (value!175329 (h!42565 (t!272404 tokens!494))))) e!2141522))))

(assert (= tb!188211 b!3456736))

(declare-fun m!3856769 () Bool)

(assert (=> b!3456736 m!3856769))

(declare-fun m!3856771 () Bool)

(assert (=> tb!188211 m!3856771))

(assert (=> d!994138 t!272427))

(declare-fun b_and!242977 () Bool)

(assert (= b_and!242971 (and (=> t!272427 result!232152) b_and!242977)))

(declare-fun t!272429 () Bool)

(declare-fun tb!188213 () Bool)

(assert (=> (and b!3456428 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494)))))) t!272429) tb!188213))

(declare-fun result!232154 () Bool)

(assert (= result!232154 result!232152))

(assert (=> d!994138 t!272429))

(declare-fun b_and!242979 () Bool)

(assert (= b_and!242973 (and (=> t!272429 result!232154) b_and!242979)))

(declare-fun t!272431 () Bool)

(declare-fun tb!188215 () Bool)

(assert (=> (and b!3456421 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494)))))) t!272431) tb!188215))

(declare-fun result!232156 () Bool)

(assert (= result!232156 result!232152))

(assert (=> d!994138 t!272431))

(declare-fun b_and!242981 () Bool)

(assert (= b_and!242975 (and (=> t!272431 result!232156) b_and!242981)))

(declare-fun m!3856773 () Bool)

(assert (=> d!994138 m!3856773))

(declare-fun m!3856775 () Bool)

(assert (=> d!994138 m!3856775))

(assert (=> b!3456435 d!994138))

(declare-fun d!994140 () Bool)

(assert (=> d!994140 (= (inv!50306 (tag!6040 (rule!8022 separatorToken!241))) (= (mod (str.len (value!175328 (tag!6040 (rule!8022 separatorToken!241)))) 2) 0))))

(assert (=> b!3456414 d!994140))

(declare-fun d!994142 () Bool)

(declare-fun res!1394509 () Bool)

(declare-fun e!2141523 () Bool)

(assert (=> d!994142 (=> (not res!1394509) (not e!2141523))))

(assert (=> d!994142 (= res!1394509 (semiInverseModEq!2281 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toValue!7658 (transformation!5434 (rule!8022 separatorToken!241)))))))

(assert (=> d!994142 (= (inv!50309 (transformation!5434 (rule!8022 separatorToken!241))) e!2141523)))

(declare-fun b!3456737 () Bool)

(assert (=> b!3456737 (= e!2141523 (equivClasses!2180 (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toValue!7658 (transformation!5434 (rule!8022 separatorToken!241)))))))

(assert (= (and d!994142 res!1394509) b!3456737))

(declare-fun m!3856777 () Bool)

(assert (=> d!994142 m!3856777))

(declare-fun m!3856779 () Bool)

(assert (=> b!3456737 m!3856779))

(assert (=> b!3456414 d!994142))

(declare-fun b!3456740 () Bool)

(declare-fun res!1394510 () Bool)

(declare-fun e!2141525 () Bool)

(assert (=> b!3456740 (=> (not res!1394510) (not e!2141525))))

(declare-fun lt!1174360 () List!37267)

(assert (=> b!3456740 (= res!1394510 (= (size!28169 lt!1174360) (+ (size!28169 (++!9151 lt!1174209 lt!1174216)) (size!28169 lt!1174203))))))

(declare-fun e!2141524 () List!37267)

(declare-fun b!3456739 () Bool)

(assert (=> b!3456739 (= e!2141524 (Cons!37143 (h!42563 (++!9151 lt!1174209 lt!1174216)) (++!9151 (t!272402 (++!9151 lt!1174209 lt!1174216)) lt!1174203)))))

(declare-fun b!3456741 () Bool)

(assert (=> b!3456741 (= e!2141525 (or (not (= lt!1174203 Nil!37143)) (= lt!1174360 (++!9151 lt!1174209 lt!1174216))))))

(declare-fun b!3456738 () Bool)

(assert (=> b!3456738 (= e!2141524 lt!1174203)))

(declare-fun d!994144 () Bool)

(assert (=> d!994144 e!2141525))

(declare-fun res!1394511 () Bool)

(assert (=> d!994144 (=> (not res!1394511) (not e!2141525))))

(assert (=> d!994144 (= res!1394511 (= (content!5180 lt!1174360) ((_ map or) (content!5180 (++!9151 lt!1174209 lt!1174216)) (content!5180 lt!1174203))))))

(assert (=> d!994144 (= lt!1174360 e!2141524)))

(declare-fun c!591649 () Bool)

(assert (=> d!994144 (= c!591649 ((_ is Nil!37143) (++!9151 lt!1174209 lt!1174216)))))

(assert (=> d!994144 (= (++!9151 (++!9151 lt!1174209 lt!1174216) lt!1174203) lt!1174360)))

(assert (= (and d!994144 c!591649) b!3456738))

(assert (= (and d!994144 (not c!591649)) b!3456739))

(assert (= (and d!994144 res!1394511) b!3456740))

(assert (= (and b!3456740 res!1394510) b!3456741))

(declare-fun m!3856781 () Bool)

(assert (=> b!3456740 m!3856781))

(assert (=> b!3456740 m!3856199))

(declare-fun m!3856783 () Bool)

(assert (=> b!3456740 m!3856783))

(assert (=> b!3456740 m!3856695))

(declare-fun m!3856785 () Bool)

(assert (=> b!3456739 m!3856785))

(declare-fun m!3856787 () Bool)

(assert (=> d!994144 m!3856787))

(assert (=> d!994144 m!3856199))

(declare-fun m!3856789 () Bool)

(assert (=> d!994144 m!3856789))

(assert (=> d!994144 m!3856703))

(assert (=> b!3456412 d!994144))

(declare-fun b!3456744 () Bool)

(declare-fun res!1394512 () Bool)

(declare-fun e!2141527 () Bool)

(assert (=> b!3456744 (=> (not res!1394512) (not e!2141527))))

(declare-fun lt!1174361 () List!37267)

(assert (=> b!3456744 (= res!1394512 (= (size!28169 lt!1174361) (+ (size!28169 lt!1174209) (size!28169 lt!1174216))))))

(declare-fun b!3456743 () Bool)

(declare-fun e!2141526 () List!37267)

(assert (=> b!3456743 (= e!2141526 (Cons!37143 (h!42563 lt!1174209) (++!9151 (t!272402 lt!1174209) lt!1174216)))))

(declare-fun b!3456745 () Bool)

(assert (=> b!3456745 (= e!2141527 (or (not (= lt!1174216 Nil!37143)) (= lt!1174361 lt!1174209)))))

(declare-fun b!3456742 () Bool)

(assert (=> b!3456742 (= e!2141526 lt!1174216)))

(declare-fun d!994146 () Bool)

(assert (=> d!994146 e!2141527))

(declare-fun res!1394513 () Bool)

(assert (=> d!994146 (=> (not res!1394513) (not e!2141527))))

(assert (=> d!994146 (= res!1394513 (= (content!5180 lt!1174361) ((_ map or) (content!5180 lt!1174209) (content!5180 lt!1174216))))))

(assert (=> d!994146 (= lt!1174361 e!2141526)))

(declare-fun c!591650 () Bool)

(assert (=> d!994146 (= c!591650 ((_ is Nil!37143) lt!1174209))))

(assert (=> d!994146 (= (++!9151 lt!1174209 lt!1174216) lt!1174361)))

(assert (= (and d!994146 c!591650) b!3456742))

(assert (= (and d!994146 (not c!591650)) b!3456743))

(assert (= (and d!994146 res!1394513) b!3456744))

(assert (= (and b!3456744 res!1394512) b!3456745))

(declare-fun m!3856791 () Bool)

(assert (=> b!3456744 m!3856791))

(assert (=> b!3456744 m!3856323))

(assert (=> b!3456744 m!3856693))

(declare-fun m!3856793 () Bool)

(assert (=> b!3456743 m!3856793))

(declare-fun m!3856795 () Bool)

(assert (=> d!994146 m!3856795))

(declare-fun m!3856797 () Bool)

(assert (=> d!994146 m!3856797))

(assert (=> d!994146 m!3856701))

(assert (=> b!3456412 d!994146))

(declare-fun d!994148 () Bool)

(declare-fun lt!1174362 () Bool)

(declare-fun e!2141529 () Bool)

(assert (=> d!994148 (= lt!1174362 e!2141529)))

(declare-fun res!1394514 () Bool)

(assert (=> d!994148 (=> (not res!1394514) (not e!2141529))))

(assert (=> d!994148 (= res!1394514 (= (list!13519 (_1!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 (t!272404 tokens!494))))))) (list!13519 (singletonSeq!2530 (h!42565 (t!272404 tokens!494))))))))

(declare-fun e!2141528 () Bool)

(assert (=> d!994148 (= lt!1174362 e!2141528)))

(declare-fun res!1394515 () Bool)

(assert (=> d!994148 (=> (not res!1394515) (not e!2141528))))

(declare-fun lt!1174363 () tuple2!36852)

(assert (=> d!994148 (= res!1394515 (= (size!28168 (_1!21560 lt!1174363)) 1))))

(assert (=> d!994148 (= lt!1174363 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 (t!272404 tokens!494))))))))

(assert (=> d!994148 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994148 (= (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 (t!272404 tokens!494))) lt!1174362)))

(declare-fun b!3456746 () Bool)

(declare-fun res!1394516 () Bool)

(assert (=> b!3456746 (=> (not res!1394516) (not e!2141528))))

(assert (=> b!3456746 (= res!1394516 (= (apply!8734 (_1!21560 lt!1174363) 0) (h!42565 (t!272404 tokens!494))))))

(declare-fun b!3456747 () Bool)

(assert (=> b!3456747 (= e!2141528 (isEmpty!21485 (_2!21560 lt!1174363)))))

(declare-fun b!3456748 () Bool)

(assert (=> b!3456748 (= e!2141529 (isEmpty!21485 (_2!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 (t!272404 tokens!494))))))))))

(assert (= (and d!994148 res!1394515) b!3456746))

(assert (= (and b!3456746 res!1394516) b!3456747))

(assert (= (and d!994148 res!1394514) b!3456748))

(assert (=> d!994148 m!3856227))

(assert (=> d!994148 m!3856321))

(declare-fun m!3856799 () Bool)

(assert (=> d!994148 m!3856799))

(declare-fun m!3856801 () Bool)

(assert (=> d!994148 m!3856801))

(declare-fun m!3856803 () Bool)

(assert (=> d!994148 m!3856803))

(declare-fun m!3856805 () Bool)

(assert (=> d!994148 m!3856805))

(declare-fun m!3856807 () Bool)

(assert (=> d!994148 m!3856807))

(assert (=> d!994148 m!3856321))

(assert (=> d!994148 m!3856321))

(assert (=> d!994148 m!3856801))

(declare-fun m!3856809 () Bool)

(assert (=> b!3456746 m!3856809))

(declare-fun m!3856811 () Bool)

(assert (=> b!3456747 m!3856811))

(assert (=> b!3456748 m!3856321))

(assert (=> b!3456748 m!3856321))

(assert (=> b!3456748 m!3856801))

(assert (=> b!3456748 m!3856801))

(assert (=> b!3456748 m!3856803))

(declare-fun m!3856813 () Bool)

(assert (=> b!3456748 m!3856813))

(assert (=> b!3456413 d!994148))

(declare-fun d!994150 () Bool)

(declare-fun lt!1174366 () Int)

(declare-fun size!28173 (List!37269) Int)

(assert (=> d!994150 (= lt!1174366 (size!28173 (list!13519 (_1!21560 lt!1174213))))))

(declare-fun size!28174 (Conc!11244) Int)

(assert (=> d!994150 (= lt!1174366 (size!28174 (c!591584 (_1!21560 lt!1174213))))))

(assert (=> d!994150 (= (size!28168 (_1!21560 lt!1174213)) lt!1174366)))

(declare-fun bs!560098 () Bool)

(assert (= bs!560098 d!994150))

(assert (=> bs!560098 m!3856631))

(assert (=> bs!560098 m!3856631))

(declare-fun m!3856815 () Bool)

(assert (=> bs!560098 m!3856815))

(declare-fun m!3856817 () Bool)

(assert (=> bs!560098 m!3856817))

(assert (=> b!3456413 d!994150))

(declare-fun d!994152 () Bool)

(declare-fun isEmpty!21492 (Option!7515) Bool)

(assert (=> d!994152 (= (isDefined!5788 lt!1174201) (not (isEmpty!21492 lt!1174201)))))

(declare-fun bs!560099 () Bool)

(assert (= bs!560099 d!994152))

(declare-fun m!3856819 () Bool)

(assert (=> bs!560099 m!3856819))

(assert (=> b!3456413 d!994152))

(declare-fun d!994154 () Bool)

(declare-fun lt!1174369 () Bool)

(assert (=> d!994154 (= lt!1174369 (select (content!5180 (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241)))) lt!1174214))))

(declare-fun e!2141535 () Bool)

(assert (=> d!994154 (= lt!1174369 e!2141535)))

(declare-fun res!1394522 () Bool)

(assert (=> d!994154 (=> (not res!1394522) (not e!2141535))))

(assert (=> d!994154 (= res!1394522 ((_ is Cons!37143) (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241)))))))

(assert (=> d!994154 (= (contains!6878 (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241))) lt!1174214) lt!1174369)))

(declare-fun b!3456753 () Bool)

(declare-fun e!2141534 () Bool)

(assert (=> b!3456753 (= e!2141535 e!2141534)))

(declare-fun res!1394521 () Bool)

(assert (=> b!3456753 (=> res!1394521 e!2141534)))

(assert (=> b!3456753 (= res!1394521 (= (h!42563 (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241)))) lt!1174214))))

(declare-fun b!3456754 () Bool)

(assert (=> b!3456754 (= e!2141534 (contains!6878 (t!272402 (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241)))) lt!1174214))))

(assert (= (and d!994154 res!1394522) b!3456753))

(assert (= (and b!3456753 (not res!1394521)) b!3456754))

(assert (=> d!994154 m!3856303))

(declare-fun m!3856821 () Bool)

(assert (=> d!994154 m!3856821))

(declare-fun m!3856823 () Bool)

(assert (=> d!994154 m!3856823))

(declare-fun m!3856825 () Bool)

(assert (=> b!3456754 m!3856825))

(assert (=> b!3456413 d!994154))

(declare-fun d!994156 () Bool)

(declare-fun e!2141549 () Bool)

(assert (=> d!994156 e!2141549))

(declare-fun res!1394533 () Bool)

(assert (=> d!994156 (=> (not res!1394533) (not e!2141549))))

(assert (=> d!994156 (= res!1394533 (isDefined!5788 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 (h!42565 tokens!494))))))))

(declare-fun lt!1174383 () Unit!52472)

(declare-fun choose!19981 (LexerInterface!5023 List!37268 List!37267 Token!10234) Unit!52472)

(assert (=> d!994156 (= lt!1174383 (choose!19981 thiss!18206 rules!2135 lt!1174209 (h!42565 tokens!494)))))

(assert (=> d!994156 (rulesInvariant!4420 thiss!18206 rules!2135)))

(assert (=> d!994156 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1077 thiss!18206 rules!2135 lt!1174209 (h!42565 tokens!494)) lt!1174383)))

(declare-fun b!3456775 () Bool)

(declare-fun res!1394534 () Bool)

(assert (=> b!3456775 (=> (not res!1394534) (not e!2141549))))

(assert (=> b!3456775 (= res!1394534 (matchR!4777 (regex!5434 (get!11884 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 (h!42565 tokens!494)))))) (list!13517 (charsOf!3448 (h!42565 tokens!494)))))))

(declare-fun b!3456776 () Bool)

(assert (=> b!3456776 (= e!2141549 (= (rule!8022 (h!42565 tokens!494)) (get!11884 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 (h!42565 tokens!494)))))))))

(assert (= (and d!994156 res!1394533) b!3456775))

(assert (= (and b!3456775 res!1394534) b!3456776))

(assert (=> d!994156 m!3856283))

(assert (=> d!994156 m!3856283))

(declare-fun m!3856841 () Bool)

(assert (=> d!994156 m!3856841))

(declare-fun m!3856843 () Bool)

(assert (=> d!994156 m!3856843))

(assert (=> d!994156 m!3856215))

(assert (=> b!3456775 m!3856245))

(assert (=> b!3456775 m!3856245))

(assert (=> b!3456775 m!3856247))

(assert (=> b!3456775 m!3856247))

(declare-fun m!3856849 () Bool)

(assert (=> b!3456775 m!3856849))

(assert (=> b!3456775 m!3856283))

(declare-fun m!3856853 () Bool)

(assert (=> b!3456775 m!3856853))

(assert (=> b!3456775 m!3856283))

(assert (=> b!3456776 m!3856283))

(assert (=> b!3456776 m!3856283))

(assert (=> b!3456776 m!3856853))

(assert (=> b!3456413 d!994156))

(declare-fun b!3456804 () Bool)

(declare-fun lt!1174408 () Unit!52472)

(declare-fun lt!1174406 () Unit!52472)

(assert (=> b!3456804 (= lt!1174408 lt!1174406)))

(assert (=> b!3456804 (rulesInvariant!4420 thiss!18206 (t!272403 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!430 (LexerInterface!5023 Rule!10668 List!37268) Unit!52472)

(assert (=> b!3456804 (= lt!1174406 (lemmaInvariantOnRulesThenOnTail!430 thiss!18206 (h!42564 rules!2135) (t!272403 rules!2135)))))

(declare-fun e!2141571 () Option!7515)

(assert (=> b!3456804 (= e!2141571 (getRuleFromTag!1077 thiss!18206 (t!272403 rules!2135) (tag!6040 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun b!3456805 () Bool)

(assert (=> b!3456805 (= e!2141571 None!7514)))

(declare-fun b!3456806 () Bool)

(declare-fun e!2141572 () Option!7515)

(assert (=> b!3456806 (= e!2141572 e!2141571)))

(declare-fun c!591663 () Bool)

(assert (=> b!3456806 (= c!591663 (and ((_ is Cons!37144) rules!2135) (not (= (tag!6040 (h!42564 rules!2135)) (tag!6040 (rule!8022 (h!42565 tokens!494)))))))))

(declare-fun b!3456807 () Bool)

(declare-fun e!2141570 () Bool)

(declare-fun e!2141573 () Bool)

(assert (=> b!3456807 (= e!2141570 e!2141573)))

(declare-fun res!1394551 () Bool)

(assert (=> b!3456807 (=> (not res!1394551) (not e!2141573))))

(declare-fun lt!1174407 () Option!7515)

(assert (=> b!3456807 (= res!1394551 (contains!6877 rules!2135 (get!11884 lt!1174407)))))

(declare-fun d!994166 () Bool)

(assert (=> d!994166 e!2141570))

(declare-fun res!1394550 () Bool)

(assert (=> d!994166 (=> res!1394550 e!2141570)))

(assert (=> d!994166 (= res!1394550 (isEmpty!21492 lt!1174407))))

(assert (=> d!994166 (= lt!1174407 e!2141572)))

(declare-fun c!591664 () Bool)

(assert (=> d!994166 (= c!591664 (and ((_ is Cons!37144) rules!2135) (= (tag!6040 (h!42564 rules!2135)) (tag!6040 (rule!8022 (h!42565 tokens!494))))))))

(assert (=> d!994166 (rulesInvariant!4420 thiss!18206 rules!2135)))

(assert (=> d!994166 (= (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 (h!42565 tokens!494)))) lt!1174407)))

(declare-fun b!3456808 () Bool)

(assert (=> b!3456808 (= e!2141573 (= (tag!6040 (get!11884 lt!1174407)) (tag!6040 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun b!3456809 () Bool)

(assert (=> b!3456809 (= e!2141572 (Some!7514 (h!42564 rules!2135)))))

(assert (= (and d!994166 c!591664) b!3456809))

(assert (= (and d!994166 (not c!591664)) b!3456806))

(assert (= (and b!3456806 c!591663) b!3456804))

(assert (= (and b!3456806 (not c!591663)) b!3456805))

(assert (= (and d!994166 (not res!1394550)) b!3456807))

(assert (= (and b!3456807 res!1394551) b!3456808))

(declare-fun m!3856921 () Bool)

(assert (=> b!3456804 m!3856921))

(declare-fun m!3856923 () Bool)

(assert (=> b!3456804 m!3856923))

(declare-fun m!3856925 () Bool)

(assert (=> b!3456804 m!3856925))

(declare-fun m!3856927 () Bool)

(assert (=> b!3456807 m!3856927))

(assert (=> b!3456807 m!3856927))

(declare-fun m!3856929 () Bool)

(assert (=> b!3456807 m!3856929))

(declare-fun m!3856931 () Bool)

(assert (=> d!994166 m!3856931))

(assert (=> d!994166 m!3856215))

(assert (=> b!3456808 m!3856927))

(assert (=> b!3456413 d!994166))

(declare-fun d!994180 () Bool)

(declare-fun e!2141576 () Bool)

(assert (=> d!994180 e!2141576))

(declare-fun res!1394554 () Bool)

(assert (=> d!994180 (=> (not res!1394554) (not e!2141576))))

(declare-fun lt!1174410 () BalanceConc!22102)

(assert (=> d!994180 (= res!1394554 (= (list!13519 lt!1174410) (Cons!37145 separatorToken!241 Nil!37145)))))

(assert (=> d!994180 (= lt!1174410 (singleton!1118 separatorToken!241))))

(assert (=> d!994180 (= (singletonSeq!2530 separatorToken!241) lt!1174410)))

(declare-fun b!3456812 () Bool)

(assert (=> b!3456812 (= e!2141576 (isBalanced!3411 (c!591584 lt!1174410)))))

(assert (= (and d!994180 res!1394554) b!3456812))

(declare-fun m!3856939 () Bool)

(assert (=> d!994180 m!3856939))

(declare-fun m!3856941 () Bool)

(assert (=> d!994180 m!3856941))

(declare-fun m!3856943 () Bool)

(assert (=> b!3456812 m!3856943))

(assert (=> b!3456413 d!994180))

(declare-fun d!994184 () Bool)

(declare-fun e!2141579 () Bool)

(assert (=> d!994184 e!2141579))

(declare-fun res!1394557 () Bool)

(assert (=> d!994184 (=> (not res!1394557) (not e!2141579))))

(assert (=> d!994184 (= res!1394557 (isDefined!5788 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 separatorToken!241)))))))

(declare-fun lt!1174412 () Unit!52472)

(assert (=> d!994184 (= lt!1174412 (choose!19981 thiss!18206 rules!2135 lt!1174216 separatorToken!241))))

(assert (=> d!994184 (rulesInvariant!4420 thiss!18206 rules!2135)))

(assert (=> d!994184 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1077 thiss!18206 rules!2135 lt!1174216 separatorToken!241) lt!1174412)))

(declare-fun b!3456815 () Bool)

(declare-fun res!1394558 () Bool)

(assert (=> b!3456815 (=> (not res!1394558) (not e!2141579))))

(assert (=> b!3456815 (= res!1394558 (matchR!4777 (regex!5434 (get!11884 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 separatorToken!241))))) (list!13517 (charsOf!3448 separatorToken!241))))))

(declare-fun b!3456816 () Bool)

(assert (=> b!3456816 (= e!2141579 (= (rule!8022 separatorToken!241) (get!11884 (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 separatorToken!241))))))))

(assert (= (and d!994184 res!1394557) b!3456815))

(assert (= (and b!3456815 res!1394558) b!3456816))

(assert (=> d!994184 m!3856295))

(assert (=> d!994184 m!3856295))

(declare-fun m!3856951 () Bool)

(assert (=> d!994184 m!3856951))

(declare-fun m!3856953 () Bool)

(assert (=> d!994184 m!3856953))

(assert (=> d!994184 m!3856215))

(assert (=> b!3456815 m!3856251))

(assert (=> b!3456815 m!3856251))

(assert (=> b!3456815 m!3856267))

(assert (=> b!3456815 m!3856267))

(declare-fun m!3856959 () Bool)

(assert (=> b!3456815 m!3856959))

(assert (=> b!3456815 m!3856295))

(declare-fun m!3856961 () Bool)

(assert (=> b!3456815 m!3856961))

(assert (=> b!3456815 m!3856295))

(assert (=> b!3456816 m!3856295))

(assert (=> b!3456816 m!3856295))

(assert (=> b!3456816 m!3856961))

(assert (=> b!3456413 d!994184))

(declare-fun d!994192 () Bool)

(assert (=> d!994192 (= (head!7311 lt!1174216) (h!42563 lt!1174216))))

(assert (=> b!3456413 d!994192))

(declare-fun d!994194 () Bool)

(declare-fun lt!1174413 () Bool)

(assert (=> d!994194 (= lt!1174413 (select (content!5178 rules!2135) (rule!8022 (h!42565 tokens!494))))))

(declare-fun e!2141582 () Bool)

(assert (=> d!994194 (= lt!1174413 e!2141582)))

(declare-fun res!1394560 () Bool)

(assert (=> d!994194 (=> (not res!1394560) (not e!2141582))))

(assert (=> d!994194 (= res!1394560 ((_ is Cons!37144) rules!2135))))

(assert (=> d!994194 (= (contains!6877 rules!2135 (rule!8022 (h!42565 tokens!494))) lt!1174413)))

(declare-fun b!3456818 () Bool)

(declare-fun e!2141581 () Bool)

(assert (=> b!3456818 (= e!2141582 e!2141581)))

(declare-fun res!1394561 () Bool)

(assert (=> b!3456818 (=> res!1394561 e!2141581)))

(assert (=> b!3456818 (= res!1394561 (= (h!42564 rules!2135) (rule!8022 (h!42565 tokens!494))))))

(declare-fun b!3456819 () Bool)

(assert (=> b!3456819 (= e!2141581 (contains!6877 (t!272403 rules!2135) (rule!8022 (h!42565 tokens!494))))))

(assert (= (and d!994194 res!1394560) b!3456818))

(assert (= (and b!3456818 (not res!1394561)) b!3456819))

(assert (=> d!994194 m!3856557))

(declare-fun m!3856963 () Bool)

(assert (=> d!994194 m!3856963))

(declare-fun m!3856965 () Bool)

(assert (=> b!3456819 m!3856965))

(assert (=> b!3456413 d!994194))

(declare-fun d!994196 () Bool)

(declare-fun lt!1174414 () BalanceConc!22100)

(assert (=> d!994196 (= (list!13517 lt!1174414) (printList!1571 thiss!18206 (list!13519 lt!1174197)))))

(assert (=> d!994196 (= lt!1174414 (printTailRec!1518 thiss!18206 lt!1174197 0 (BalanceConc!22101 Empty!11243)))))

(assert (=> d!994196 (= (print!2088 thiss!18206 lt!1174197) lt!1174414)))

(declare-fun bs!560104 () Bool)

(assert (= bs!560104 d!994196))

(declare-fun m!3856967 () Bool)

(assert (=> bs!560104 m!3856967))

(declare-fun m!3856969 () Bool)

(assert (=> bs!560104 m!3856969))

(assert (=> bs!560104 m!3856969))

(declare-fun m!3856971 () Bool)

(assert (=> bs!560104 m!3856971))

(assert (=> bs!560104 m!3856285))

(assert (=> b!3456413 d!994196))

(declare-fun d!994198 () Bool)

(assert (=> d!994198 (= (maxPrefixOneRule!1730 thiss!18206 (rule!8022 (h!42565 tokens!494)) lt!1174209) (Some!7515 (tuple2!36855 (Token!10235 (apply!8735 (transformation!5434 (rule!8022 (h!42565 tokens!494))) (seqFromList!3922 lt!1174209)) (rule!8022 (h!42565 tokens!494)) (size!28169 lt!1174209) lt!1174209) Nil!37143)))))

(declare-fun lt!1174428 () Unit!52472)

(declare-fun choose!19982 (LexerInterface!5023 List!37268 List!37267 List!37267 List!37267 Rule!10668) Unit!52472)

(assert (=> d!994198 (= lt!1174428 (choose!19982 thiss!18206 rules!2135 lt!1174209 lt!1174209 Nil!37143 (rule!8022 (h!42565 tokens!494))))))

(assert (=> d!994198 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994198 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!823 thiss!18206 rules!2135 lt!1174209 lt!1174209 Nil!37143 (rule!8022 (h!42565 tokens!494))) lt!1174428)))

(declare-fun bs!560108 () Bool)

(assert (= bs!560108 d!994198))

(assert (=> bs!560108 m!3856339))

(declare-fun m!3857013 () Bool)

(assert (=> bs!560108 m!3857013))

(assert (=> bs!560108 m!3856339))

(declare-fun m!3857015 () Bool)

(assert (=> bs!560108 m!3857015))

(assert (=> bs!560108 m!3856323))

(assert (=> bs!560108 m!3856315))

(assert (=> bs!560108 m!3856227))

(assert (=> b!3456413 d!994198))

(declare-fun b!3456995 () Bool)

(declare-fun lt!1174466 () tuple2!36852)

(declare-fun e!2141688 () Bool)

(declare-datatypes ((tuple2!36860 0))(
  ( (tuple2!36861 (_1!21564 List!37269) (_2!21564 List!37267)) )
))
(declare-fun lexList!1446 (LexerInterface!5023 List!37268 List!37267) tuple2!36860)

(assert (=> b!3456995 (= e!2141688 (= (list!13517 (_2!21560 lt!1174466)) (_2!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174211)))))))

(declare-fun d!994212 () Bool)

(assert (=> d!994212 e!2141688))

(declare-fun res!1394656 () Bool)

(assert (=> d!994212 (=> (not res!1394656) (not e!2141688))))

(declare-fun e!2141689 () Bool)

(assert (=> d!994212 (= res!1394656 e!2141689)))

(declare-fun c!591704 () Bool)

(assert (=> d!994212 (= c!591704 (> (size!28168 (_1!21560 lt!1174466)) 0))))

(declare-fun lexTailRecV2!1054 (LexerInterface!5023 List!37268 BalanceConc!22100 BalanceConc!22100 BalanceConc!22100 BalanceConc!22102) tuple2!36852)

(assert (=> d!994212 (= lt!1174466 (lexTailRecV2!1054 thiss!18206 rules!2135 lt!1174211 (BalanceConc!22101 Empty!11243) lt!1174211 (BalanceConc!22103 Empty!11244)))))

(assert (=> d!994212 (= (lex!2349 thiss!18206 rules!2135 lt!1174211) lt!1174466)))

(declare-fun b!3456996 () Bool)

(assert (=> b!3456996 (= e!2141689 (= (_2!21560 lt!1174466) lt!1174211))))

(declare-fun b!3456997 () Bool)

(declare-fun res!1394654 () Bool)

(assert (=> b!3456997 (=> (not res!1394654) (not e!2141688))))

(assert (=> b!3456997 (= res!1394654 (= (list!13519 (_1!21560 lt!1174466)) (_1!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174211)))))))

(declare-fun b!3456998 () Bool)

(declare-fun e!2141687 () Bool)

(assert (=> b!3456998 (= e!2141689 e!2141687)))

(declare-fun res!1394655 () Bool)

(declare-fun size!28175 (BalanceConc!22100) Int)

(assert (=> b!3456998 (= res!1394655 (< (size!28175 (_2!21560 lt!1174466)) (size!28175 lt!1174211)))))

(assert (=> b!3456998 (=> (not res!1394655) (not e!2141687))))

(declare-fun b!3456999 () Bool)

(assert (=> b!3456999 (= e!2141687 (not (isEmpty!21484 (_1!21560 lt!1174466))))))

(assert (= (and d!994212 c!591704) b!3456998))

(assert (= (and d!994212 (not c!591704)) b!3456996))

(assert (= (and b!3456998 res!1394655) b!3456999))

(assert (= (and d!994212 res!1394656) b!3456997))

(assert (= (and b!3456997 res!1394654) b!3456995))

(declare-fun m!3857275 () Bool)

(assert (=> b!3456997 m!3857275))

(declare-fun m!3857277 () Bool)

(assert (=> b!3456997 m!3857277))

(assert (=> b!3456997 m!3857277))

(declare-fun m!3857279 () Bool)

(assert (=> b!3456997 m!3857279))

(declare-fun m!3857281 () Bool)

(assert (=> b!3456999 m!3857281))

(declare-fun m!3857283 () Bool)

(assert (=> b!3456995 m!3857283))

(assert (=> b!3456995 m!3857277))

(assert (=> b!3456995 m!3857277))

(assert (=> b!3456995 m!3857279))

(declare-fun m!3857285 () Bool)

(assert (=> d!994212 m!3857285))

(declare-fun m!3857287 () Bool)

(assert (=> d!994212 m!3857287))

(declare-fun m!3857289 () Bool)

(assert (=> b!3456998 m!3857289))

(declare-fun m!3857291 () Bool)

(assert (=> b!3456998 m!3857291))

(assert (=> b!3456413 d!994212))

(declare-fun d!994284 () Bool)

(declare-fun lt!1174467 () BalanceConc!22100)

(assert (=> d!994284 (= (list!13517 lt!1174467) (printList!1571 thiss!18206 (list!13519 lt!1174210)))))

(assert (=> d!994284 (= lt!1174467 (printTailRec!1518 thiss!18206 lt!1174210 0 (BalanceConc!22101 Empty!11243)))))

(assert (=> d!994284 (= (print!2088 thiss!18206 lt!1174210) lt!1174467)))

(declare-fun bs!560116 () Bool)

(assert (= bs!560116 d!994284))

(declare-fun m!3857293 () Bool)

(assert (=> bs!560116 m!3857293))

(declare-fun m!3857295 () Bool)

(assert (=> bs!560116 m!3857295))

(assert (=> bs!560116 m!3857295))

(declare-fun m!3857297 () Bool)

(assert (=> bs!560116 m!3857297))

(assert (=> bs!560116 m!3856277))

(assert (=> b!3456413 d!994284))

(declare-fun b!3457016 () Bool)

(declare-fun e!2141701 () List!37267)

(declare-fun call!249342 () List!37267)

(assert (=> b!3457016 (= e!2141701 call!249342)))

(declare-fun bm!249335 () Bool)

(declare-fun c!591716 () Bool)

(declare-fun call!249340 () List!37267)

(declare-fun c!591714 () Bool)

(assert (=> bm!249335 (= call!249340 (usedCharacters!668 (ite c!591716 (reg!10522 (regex!5434 (rule!8022 (h!42565 tokens!494)))) (ite c!591714 (regTwo!20899 (regex!5434 (rule!8022 (h!42565 tokens!494)))) (regOne!20898 (regex!5434 (rule!8022 (h!42565 tokens!494))))))))))

(declare-fun b!3457017 () Bool)

(declare-fun e!2141700 () List!37267)

(assert (=> b!3457017 (= e!2141700 call!249340)))

(declare-fun bm!249336 () Bool)

(declare-fun call!249343 () List!37267)

(assert (=> bm!249336 (= call!249343 call!249340)))

(declare-fun b!3457018 () Bool)

(assert (=> b!3457018 (= e!2141701 call!249342)))

(declare-fun b!3457019 () Bool)

(declare-fun e!2141699 () List!37267)

(declare-fun e!2141698 () List!37267)

(assert (=> b!3457019 (= e!2141699 e!2141698)))

(declare-fun c!591715 () Bool)

(assert (=> b!3457019 (= c!591715 ((_ is ElementMatch!10193) (regex!5434 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun b!3457020 () Bool)

(assert (=> b!3457020 (= e!2141698 (Cons!37143 (c!591582 (regex!5434 (rule!8022 (h!42565 tokens!494)))) Nil!37143))))

(declare-fun call!249341 () List!37267)

(declare-fun bm!249337 () Bool)

(assert (=> bm!249337 (= call!249342 (++!9151 (ite c!591714 call!249341 call!249343) (ite c!591714 call!249343 call!249341)))))

(declare-fun b!3457022 () Bool)

(assert (=> b!3457022 (= e!2141699 Nil!37143)))

(declare-fun bm!249338 () Bool)

(assert (=> bm!249338 (= call!249341 (usedCharacters!668 (ite c!591714 (regOne!20899 (regex!5434 (rule!8022 (h!42565 tokens!494)))) (regTwo!20898 (regex!5434 (rule!8022 (h!42565 tokens!494)))))))))

(declare-fun b!3457023 () Bool)

(assert (=> b!3457023 (= e!2141700 e!2141701)))

(assert (=> b!3457023 (= c!591714 ((_ is Union!10193) (regex!5434 (rule!8022 (h!42565 tokens!494)))))))

(declare-fun d!994286 () Bool)

(declare-fun c!591713 () Bool)

(assert (=> d!994286 (= c!591713 (or ((_ is EmptyExpr!10193) (regex!5434 (rule!8022 (h!42565 tokens!494)))) ((_ is EmptyLang!10193) (regex!5434 (rule!8022 (h!42565 tokens!494))))))))

(assert (=> d!994286 (= (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494)))) e!2141699)))

(declare-fun b!3457021 () Bool)

(assert (=> b!3457021 (= c!591716 ((_ is Star!10193) (regex!5434 (rule!8022 (h!42565 tokens!494)))))))

(assert (=> b!3457021 (= e!2141698 e!2141700)))

(assert (= (and d!994286 c!591713) b!3457022))

(assert (= (and d!994286 (not c!591713)) b!3457019))

(assert (= (and b!3457019 c!591715) b!3457020))

(assert (= (and b!3457019 (not c!591715)) b!3457021))

(assert (= (and b!3457021 c!591716) b!3457017))

(assert (= (and b!3457021 (not c!591716)) b!3457023))

(assert (= (and b!3457023 c!591714) b!3457018))

(assert (= (and b!3457023 (not c!591714)) b!3457016))

(assert (= (or b!3457018 b!3457016) bm!249336))

(assert (= (or b!3457018 b!3457016) bm!249338))

(assert (= (or b!3457018 b!3457016) bm!249337))

(assert (= (or b!3457017 bm!249336) bm!249335))

(declare-fun m!3857299 () Bool)

(assert (=> bm!249335 m!3857299))

(declare-fun m!3857301 () Bool)

(assert (=> bm!249337 m!3857301))

(declare-fun m!3857303 () Bool)

(assert (=> bm!249338 m!3857303))

(assert (=> b!3456413 d!994286))

(declare-fun e!2141703 () Bool)

(declare-fun b!3457024 () Bool)

(declare-fun lt!1174468 () tuple2!36852)

(assert (=> b!3457024 (= e!2141703 (= (list!13517 (_2!21560 lt!1174468)) (_2!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174202)))))))

(declare-fun d!994288 () Bool)

(assert (=> d!994288 e!2141703))

(declare-fun res!1394659 () Bool)

(assert (=> d!994288 (=> (not res!1394659) (not e!2141703))))

(declare-fun e!2141704 () Bool)

(assert (=> d!994288 (= res!1394659 e!2141704)))

(declare-fun c!591717 () Bool)

(assert (=> d!994288 (= c!591717 (> (size!28168 (_1!21560 lt!1174468)) 0))))

(assert (=> d!994288 (= lt!1174468 (lexTailRecV2!1054 thiss!18206 rules!2135 lt!1174202 (BalanceConc!22101 Empty!11243) lt!1174202 (BalanceConc!22103 Empty!11244)))))

(assert (=> d!994288 (= (lex!2349 thiss!18206 rules!2135 lt!1174202) lt!1174468)))

(declare-fun b!3457025 () Bool)

(assert (=> b!3457025 (= e!2141704 (= (_2!21560 lt!1174468) lt!1174202))))

(declare-fun b!3457026 () Bool)

(declare-fun res!1394657 () Bool)

(assert (=> b!3457026 (=> (not res!1394657) (not e!2141703))))

(assert (=> b!3457026 (= res!1394657 (= (list!13519 (_1!21560 lt!1174468)) (_1!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174202)))))))

(declare-fun b!3457027 () Bool)

(declare-fun e!2141702 () Bool)

(assert (=> b!3457027 (= e!2141704 e!2141702)))

(declare-fun res!1394658 () Bool)

(assert (=> b!3457027 (= res!1394658 (< (size!28175 (_2!21560 lt!1174468)) (size!28175 lt!1174202)))))

(assert (=> b!3457027 (=> (not res!1394658) (not e!2141702))))

(declare-fun b!3457028 () Bool)

(assert (=> b!3457028 (= e!2141702 (not (isEmpty!21484 (_1!21560 lt!1174468))))))

(assert (= (and d!994288 c!591717) b!3457027))

(assert (= (and d!994288 (not c!591717)) b!3457025))

(assert (= (and b!3457027 res!1394658) b!3457028))

(assert (= (and d!994288 res!1394659) b!3457026))

(assert (= (and b!3457026 res!1394657) b!3457024))

(declare-fun m!3857305 () Bool)

(assert (=> b!3457026 m!3857305))

(declare-fun m!3857307 () Bool)

(assert (=> b!3457026 m!3857307))

(assert (=> b!3457026 m!3857307))

(declare-fun m!3857309 () Bool)

(assert (=> b!3457026 m!3857309))

(declare-fun m!3857311 () Bool)

(assert (=> b!3457028 m!3857311))

(declare-fun m!3857313 () Bool)

(assert (=> b!3457024 m!3857313))

(assert (=> b!3457024 m!3857307))

(assert (=> b!3457024 m!3857307))

(assert (=> b!3457024 m!3857309))

(declare-fun m!3857315 () Bool)

(assert (=> d!994288 m!3857315))

(declare-fun m!3857317 () Bool)

(assert (=> d!994288 m!3857317))

(declare-fun m!3857319 () Bool)

(assert (=> b!3457027 m!3857319))

(declare-fun m!3857321 () Bool)

(assert (=> b!3457027 m!3857321))

(assert (=> b!3456413 d!994288))

(declare-fun d!994290 () Bool)

(assert (=> d!994290 (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 tokens!494))))

(declare-fun lt!1174471 () Unit!52472)

(declare-fun choose!19984 (LexerInterface!5023 List!37268 List!37269 Token!10234) Unit!52472)

(assert (=> d!994290 (= lt!1174471 (choose!19984 thiss!18206 rules!2135 tokens!494 (h!42565 tokens!494)))))

(assert (=> d!994290 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994290 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1012 thiss!18206 rules!2135 tokens!494 (h!42565 tokens!494)) lt!1174471)))

(declare-fun bs!560117 () Bool)

(assert (= bs!560117 d!994290))

(assert (=> bs!560117 m!3856187))

(declare-fun m!3857323 () Bool)

(assert (=> bs!560117 m!3857323))

(assert (=> bs!560117 m!3856227))

(assert (=> b!3456413 d!994290))

(declare-fun d!994292 () Bool)

(assert (=> d!994292 (not (contains!6878 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494)))) lt!1174214))))

(declare-fun lt!1174474 () Unit!52472)

(declare-fun choose!19985 (LexerInterface!5023 List!37268 List!37268 Rule!10668 Rule!10668 C!20572) Unit!52472)

(assert (=> d!994292 (= lt!1174474 (choose!19985 thiss!18206 rules!2135 rules!2135 (rule!8022 (h!42565 tokens!494)) (rule!8022 separatorToken!241) lt!1174214))))

(assert (=> d!994292 (rulesInvariant!4420 thiss!18206 rules!2135)))

(assert (=> d!994292 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!234 thiss!18206 rules!2135 rules!2135 (rule!8022 (h!42565 tokens!494)) (rule!8022 separatorToken!241) lt!1174214) lt!1174474)))

(declare-fun bs!560118 () Bool)

(assert (= bs!560118 d!994292))

(assert (=> bs!560118 m!3856327))

(assert (=> bs!560118 m!3856327))

(assert (=> bs!560118 m!3856331))

(declare-fun m!3857325 () Bool)

(assert (=> bs!560118 m!3857325))

(assert (=> bs!560118 m!3856215))

(assert (=> b!3456413 d!994292))

(declare-fun d!994294 () Bool)

(declare-fun lt!1174477 () Int)

(assert (=> d!994294 (>= lt!1174477 0)))

(declare-fun e!2141707 () Int)

(assert (=> d!994294 (= lt!1174477 e!2141707)))

(declare-fun c!591721 () Bool)

(assert (=> d!994294 (= c!591721 ((_ is Nil!37143) lt!1174209))))

(assert (=> d!994294 (= (size!28169 lt!1174209) lt!1174477)))

(declare-fun b!3457033 () Bool)

(assert (=> b!3457033 (= e!2141707 0)))

(declare-fun b!3457034 () Bool)

(assert (=> b!3457034 (= e!2141707 (+ 1 (size!28169 (t!272402 lt!1174209))))))

(assert (= (and d!994294 c!591721) b!3457033))

(assert (= (and d!994294 (not c!591721)) b!3457034))

(declare-fun m!3857327 () Bool)

(assert (=> b!3457034 m!3857327))

(assert (=> b!3456413 d!994294))

(declare-fun d!994296 () Bool)

(declare-fun lt!1174478 () Bool)

(assert (=> d!994296 (= lt!1174478 (select (content!5180 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494))))) lt!1174214))))

(declare-fun e!2141709 () Bool)

(assert (=> d!994296 (= lt!1174478 e!2141709)))

(declare-fun res!1394661 () Bool)

(assert (=> d!994296 (=> (not res!1394661) (not e!2141709))))

(assert (=> d!994296 (= res!1394661 ((_ is Cons!37143) (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494))))))))

(assert (=> d!994296 (= (contains!6878 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494)))) lt!1174214) lt!1174478)))

(declare-fun b!3457035 () Bool)

(declare-fun e!2141708 () Bool)

(assert (=> b!3457035 (= e!2141709 e!2141708)))

(declare-fun res!1394660 () Bool)

(assert (=> b!3457035 (=> res!1394660 e!2141708)))

(assert (=> b!3457035 (= res!1394660 (= (h!42563 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494))))) lt!1174214))))

(declare-fun b!3457036 () Bool)

(assert (=> b!3457036 (= e!2141708 (contains!6878 (t!272402 (usedCharacters!668 (regex!5434 (rule!8022 (h!42565 tokens!494))))) lt!1174214))))

(assert (= (and d!994296 res!1394661) b!3457035))

(assert (= (and b!3457035 (not res!1394660)) b!3457036))

(assert (=> d!994296 m!3856327))

(declare-fun m!3857329 () Bool)

(assert (=> d!994296 m!3857329))

(declare-fun m!3857331 () Bool)

(assert (=> d!994296 m!3857331))

(declare-fun m!3857333 () Bool)

(assert (=> b!3457036 m!3857333))

(assert (=> b!3456413 d!994296))

(declare-fun b!3457037 () Bool)

(declare-fun lt!1174483 () Unit!52472)

(declare-fun lt!1174481 () Unit!52472)

(assert (=> b!3457037 (= lt!1174483 lt!1174481)))

(assert (=> b!3457037 (rulesInvariant!4420 thiss!18206 (t!272403 rules!2135))))

(assert (=> b!3457037 (= lt!1174481 (lemmaInvariantOnRulesThenOnTail!430 thiss!18206 (h!42564 rules!2135) (t!272403 rules!2135)))))

(declare-fun e!2141711 () Option!7515)

(assert (=> b!3457037 (= e!2141711 (getRuleFromTag!1077 thiss!18206 (t!272403 rules!2135) (tag!6040 (rule!8022 separatorToken!241))))))

(declare-fun b!3457038 () Bool)

(assert (=> b!3457038 (= e!2141711 None!7514)))

(declare-fun b!3457039 () Bool)

(declare-fun e!2141712 () Option!7515)

(assert (=> b!3457039 (= e!2141712 e!2141711)))

(declare-fun c!591722 () Bool)

(assert (=> b!3457039 (= c!591722 (and ((_ is Cons!37144) rules!2135) (not (= (tag!6040 (h!42564 rules!2135)) (tag!6040 (rule!8022 separatorToken!241))))))))

(declare-fun b!3457040 () Bool)

(declare-fun e!2141710 () Bool)

(declare-fun e!2141713 () Bool)

(assert (=> b!3457040 (= e!2141710 e!2141713)))

(declare-fun res!1394663 () Bool)

(assert (=> b!3457040 (=> (not res!1394663) (not e!2141713))))

(declare-fun lt!1174482 () Option!7515)

(assert (=> b!3457040 (= res!1394663 (contains!6877 rules!2135 (get!11884 lt!1174482)))))

(declare-fun d!994298 () Bool)

(assert (=> d!994298 e!2141710))

(declare-fun res!1394662 () Bool)

(assert (=> d!994298 (=> res!1394662 e!2141710)))

(assert (=> d!994298 (= res!1394662 (isEmpty!21492 lt!1174482))))

(assert (=> d!994298 (= lt!1174482 e!2141712)))

(declare-fun c!591723 () Bool)

(assert (=> d!994298 (= c!591723 (and ((_ is Cons!37144) rules!2135) (= (tag!6040 (h!42564 rules!2135)) (tag!6040 (rule!8022 separatorToken!241)))))))

(assert (=> d!994298 (rulesInvariant!4420 thiss!18206 rules!2135)))

(assert (=> d!994298 (= (getRuleFromTag!1077 thiss!18206 rules!2135 (tag!6040 (rule!8022 separatorToken!241))) lt!1174482)))

(declare-fun b!3457041 () Bool)

(assert (=> b!3457041 (= e!2141713 (= (tag!6040 (get!11884 lt!1174482)) (tag!6040 (rule!8022 separatorToken!241))))))

(declare-fun b!3457042 () Bool)

(assert (=> b!3457042 (= e!2141712 (Some!7514 (h!42564 rules!2135)))))

(assert (= (and d!994298 c!591723) b!3457042))

(assert (= (and d!994298 (not c!591723)) b!3457039))

(assert (= (and b!3457039 c!591722) b!3457037))

(assert (= (and b!3457039 (not c!591722)) b!3457038))

(assert (= (and d!994298 (not res!1394662)) b!3457040))

(assert (= (and b!3457040 res!1394663) b!3457041))

(assert (=> b!3457037 m!3856921))

(assert (=> b!3457037 m!3856923))

(declare-fun m!3857335 () Bool)

(assert (=> b!3457037 m!3857335))

(declare-fun m!3857337 () Bool)

(assert (=> b!3457040 m!3857337))

(assert (=> b!3457040 m!3857337))

(declare-fun m!3857339 () Bool)

(assert (=> b!3457040 m!3857339))

(declare-fun m!3857341 () Bool)

(assert (=> d!994298 m!3857341))

(assert (=> d!994298 m!3856215))

(assert (=> b!3457041 m!3857337))

(assert (=> b!3456413 d!994298))

(declare-fun b!3457148 () Bool)

(declare-fun e!2141784 () Option!7516)

(assert (=> b!3457148 (= e!2141784 None!7515)))

(declare-fun b!3457149 () Bool)

(declare-datatypes ((tuple2!36862 0))(
  ( (tuple2!36863 (_1!21565 List!37267) (_2!21565 List!37267)) )
))
(declare-fun lt!1174502 () tuple2!36862)

(assert (=> b!3457149 (= e!2141784 (Some!7515 (tuple2!36855 (Token!10235 (apply!8735 (transformation!5434 (rule!8022 (h!42565 tokens!494))) (seqFromList!3922 (_1!21565 lt!1174502))) (rule!8022 (h!42565 tokens!494)) (size!28175 (seqFromList!3922 (_1!21565 lt!1174502))) (_1!21565 lt!1174502)) (_2!21565 lt!1174502))))))

(declare-fun lt!1174499 () Unit!52472)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!880 (Regex!10193 List!37267) Unit!52472)

(assert (=> b!3457149 (= lt!1174499 (longestMatchIsAcceptedByMatchOrIsEmpty!880 (regex!5434 (rule!8022 (h!42565 tokens!494))) lt!1174209))))

(declare-fun res!1394698 () Bool)

(declare-fun findLongestMatchInner!907 (Regex!10193 List!37267 Int List!37267 List!37267 Int) tuple2!36862)

(assert (=> b!3457149 (= res!1394698 (isEmpty!21487 (_1!21565 (findLongestMatchInner!907 (regex!5434 (rule!8022 (h!42565 tokens!494))) Nil!37143 (size!28169 Nil!37143) lt!1174209 lt!1174209 (size!28169 lt!1174209)))))))

(declare-fun e!2141786 () Bool)

(assert (=> b!3457149 (=> res!1394698 e!2141786)))

(assert (=> b!3457149 e!2141786))

(declare-fun lt!1174503 () Unit!52472)

(assert (=> b!3457149 (= lt!1174503 lt!1174499)))

(declare-fun lt!1174501 () Unit!52472)

(declare-fun lemmaSemiInverse!1257 (TokenValueInjection!10756 BalanceConc!22100) Unit!52472)

(assert (=> b!3457149 (= lt!1174501 (lemmaSemiInverse!1257 (transformation!5434 (rule!8022 (h!42565 tokens!494))) (seqFromList!3922 (_1!21565 lt!1174502))))))

(declare-fun b!3457151 () Bool)

(declare-fun e!2141785 () Bool)

(declare-fun e!2141787 () Bool)

(assert (=> b!3457151 (= e!2141785 e!2141787)))

(declare-fun res!1394702 () Bool)

(assert (=> b!3457151 (=> (not res!1394702) (not e!2141787))))

(declare-fun lt!1174500 () Option!7516)

(declare-fun get!11886 (Option!7516) tuple2!36854)

(assert (=> b!3457151 (= res!1394702 (matchR!4777 (regex!5434 (rule!8022 (h!42565 tokens!494))) (list!13517 (charsOf!3448 (_1!21561 (get!11886 lt!1174500))))))))

(declare-fun b!3457152 () Bool)

(declare-fun res!1394700 () Bool)

(assert (=> b!3457152 (=> (not res!1394700) (not e!2141787))))

(assert (=> b!3457152 (= res!1394700 (= (value!175329 (_1!21561 (get!11886 lt!1174500))) (apply!8735 (transformation!5434 (rule!8022 (_1!21561 (get!11886 lt!1174500)))) (seqFromList!3922 (originalCharacters!6148 (_1!21561 (get!11886 lt!1174500)))))))))

(declare-fun b!3457150 () Bool)

(assert (=> b!3457150 (= e!2141786 (matchR!4777 (regex!5434 (rule!8022 (h!42565 tokens!494))) (_1!21565 (findLongestMatchInner!907 (regex!5434 (rule!8022 (h!42565 tokens!494))) Nil!37143 (size!28169 Nil!37143) lt!1174209 lt!1174209 (size!28169 lt!1174209)))))))

(declare-fun d!994300 () Bool)

(assert (=> d!994300 e!2141785))

(declare-fun res!1394699 () Bool)

(assert (=> d!994300 (=> res!1394699 e!2141785)))

(declare-fun isEmpty!21494 (Option!7516) Bool)

(assert (=> d!994300 (= res!1394699 (isEmpty!21494 lt!1174500))))

(assert (=> d!994300 (= lt!1174500 e!2141784)))

(declare-fun c!591731 () Bool)

(assert (=> d!994300 (= c!591731 (isEmpty!21487 (_1!21565 lt!1174502)))))

(declare-fun findLongestMatch!822 (Regex!10193 List!37267) tuple2!36862)

(assert (=> d!994300 (= lt!1174502 (findLongestMatch!822 (regex!5434 (rule!8022 (h!42565 tokens!494))) lt!1174209))))

(declare-fun ruleValid!1736 (LexerInterface!5023 Rule!10668) Bool)

(assert (=> d!994300 (ruleValid!1736 thiss!18206 (rule!8022 (h!42565 tokens!494)))))

(assert (=> d!994300 (= (maxPrefixOneRule!1730 thiss!18206 (rule!8022 (h!42565 tokens!494)) lt!1174209) lt!1174500)))

(declare-fun b!3457153 () Bool)

(declare-fun res!1394701 () Bool)

(assert (=> b!3457153 (=> (not res!1394701) (not e!2141787))))

(assert (=> b!3457153 (= res!1394701 (< (size!28169 (_2!21561 (get!11886 lt!1174500))) (size!28169 lt!1174209)))))

(declare-fun b!3457154 () Bool)

(declare-fun res!1394696 () Bool)

(assert (=> b!3457154 (=> (not res!1394696) (not e!2141787))))

(assert (=> b!3457154 (= res!1394696 (= (rule!8022 (_1!21561 (get!11886 lt!1174500))) (rule!8022 (h!42565 tokens!494))))))

(declare-fun b!3457155 () Bool)

(declare-fun res!1394697 () Bool)

(assert (=> b!3457155 (=> (not res!1394697) (not e!2141787))))

(assert (=> b!3457155 (= res!1394697 (= (++!9151 (list!13517 (charsOf!3448 (_1!21561 (get!11886 lt!1174500)))) (_2!21561 (get!11886 lt!1174500))) lt!1174209))))

(declare-fun b!3457156 () Bool)

(assert (=> b!3457156 (= e!2141787 (= (size!28167 (_1!21561 (get!11886 lt!1174500))) (size!28169 (originalCharacters!6148 (_1!21561 (get!11886 lt!1174500))))))))

(assert (= (and d!994300 c!591731) b!3457148))

(assert (= (and d!994300 (not c!591731)) b!3457149))

(assert (= (and b!3457149 (not res!1394698)) b!3457150))

(assert (= (and d!994300 (not res!1394699)) b!3457151))

(assert (= (and b!3457151 res!1394702) b!3457155))

(assert (= (and b!3457155 res!1394697) b!3457153))

(assert (= (and b!3457153 res!1394701) b!3457154))

(assert (= (and b!3457154 res!1394696) b!3457152))

(assert (= (and b!3457152 res!1394700) b!3457156))

(declare-fun m!3857399 () Bool)

(assert (=> b!3457153 m!3857399))

(declare-fun m!3857401 () Bool)

(assert (=> b!3457153 m!3857401))

(assert (=> b!3457153 m!3856323))

(declare-fun m!3857403 () Bool)

(assert (=> d!994300 m!3857403))

(declare-fun m!3857405 () Bool)

(assert (=> d!994300 m!3857405))

(declare-fun m!3857407 () Bool)

(assert (=> d!994300 m!3857407))

(declare-fun m!3857409 () Bool)

(assert (=> d!994300 m!3857409))

(assert (=> b!3457151 m!3857399))

(declare-fun m!3857411 () Bool)

(assert (=> b!3457151 m!3857411))

(assert (=> b!3457151 m!3857411))

(declare-fun m!3857413 () Bool)

(assert (=> b!3457151 m!3857413))

(assert (=> b!3457151 m!3857413))

(declare-fun m!3857415 () Bool)

(assert (=> b!3457151 m!3857415))

(assert (=> b!3457156 m!3857399))

(declare-fun m!3857417 () Bool)

(assert (=> b!3457156 m!3857417))

(assert (=> b!3457155 m!3857399))

(assert (=> b!3457155 m!3857411))

(assert (=> b!3457155 m!3857411))

(assert (=> b!3457155 m!3857413))

(assert (=> b!3457155 m!3857413))

(declare-fun m!3857419 () Bool)

(assert (=> b!3457155 m!3857419))

(declare-fun m!3857421 () Bool)

(assert (=> b!3457149 m!3857421))

(declare-fun m!3857423 () Bool)

(assert (=> b!3457149 m!3857423))

(declare-fun m!3857425 () Bool)

(assert (=> b!3457149 m!3857425))

(assert (=> b!3457149 m!3857423))

(assert (=> b!3457149 m!3856323))

(assert (=> b!3457149 m!3857423))

(declare-fun m!3857427 () Bool)

(assert (=> b!3457149 m!3857427))

(declare-fun m!3857429 () Bool)

(assert (=> b!3457149 m!3857429))

(assert (=> b!3457149 m!3857429))

(assert (=> b!3457149 m!3856323))

(declare-fun m!3857431 () Bool)

(assert (=> b!3457149 m!3857431))

(declare-fun m!3857433 () Bool)

(assert (=> b!3457149 m!3857433))

(assert (=> b!3457149 m!3857423))

(declare-fun m!3857435 () Bool)

(assert (=> b!3457149 m!3857435))

(assert (=> b!3457152 m!3857399))

(declare-fun m!3857437 () Bool)

(assert (=> b!3457152 m!3857437))

(assert (=> b!3457152 m!3857437))

(declare-fun m!3857439 () Bool)

(assert (=> b!3457152 m!3857439))

(assert (=> b!3457154 m!3857399))

(assert (=> b!3457150 m!3857429))

(assert (=> b!3457150 m!3856323))

(assert (=> b!3457150 m!3857429))

(assert (=> b!3457150 m!3856323))

(assert (=> b!3457150 m!3857431))

(declare-fun m!3857441 () Bool)

(assert (=> b!3457150 m!3857441))

(assert (=> b!3456413 d!994300))

(declare-fun d!994322 () Bool)

(declare-fun lt!1174504 () Int)

(assert (=> d!994322 (= lt!1174504 (size!28173 (list!13519 (_1!21560 lt!1174212))))))

(assert (=> d!994322 (= lt!1174504 (size!28174 (c!591584 (_1!21560 lt!1174212))))))

(assert (=> d!994322 (= (size!28168 (_1!21560 lt!1174212)) lt!1174504)))

(declare-fun bs!560126 () Bool)

(assert (= bs!560126 d!994322))

(assert (=> bs!560126 m!3856567))

(assert (=> bs!560126 m!3856567))

(declare-fun m!3857443 () Bool)

(assert (=> bs!560126 m!3857443))

(declare-fun m!3857445 () Bool)

(assert (=> bs!560126 m!3857445))

(assert (=> b!3456413 d!994322))

(declare-fun d!994324 () Bool)

(declare-fun e!2141788 () Bool)

(assert (=> d!994324 e!2141788))

(declare-fun res!1394703 () Bool)

(assert (=> d!994324 (=> (not res!1394703) (not e!2141788))))

(declare-fun lt!1174505 () BalanceConc!22102)

(assert (=> d!994324 (= res!1394703 (= (list!13519 lt!1174505) (Cons!37145 (h!42565 (t!272404 tokens!494)) Nil!37145)))))

(assert (=> d!994324 (= lt!1174505 (singleton!1118 (h!42565 (t!272404 tokens!494))))))

(assert (=> d!994324 (= (singletonSeq!2530 (h!42565 (t!272404 tokens!494))) lt!1174505)))

(declare-fun b!3457157 () Bool)

(assert (=> b!3457157 (= e!2141788 (isBalanced!3411 (c!591584 lt!1174505)))))

(assert (= (and d!994324 res!1394703) b!3457157))

(declare-fun m!3857447 () Bool)

(assert (=> d!994324 m!3857447))

(declare-fun m!3857449 () Bool)

(assert (=> d!994324 m!3857449))

(declare-fun m!3857451 () Bool)

(assert (=> b!3457157 m!3857451))

(assert (=> b!3456413 d!994324))

(declare-fun d!994326 () Bool)

(declare-fun dynLambda!15637 (Int Token!10234) Bool)

(assert (=> d!994326 (dynLambda!15637 lambda!121737 (h!42565 (t!272404 tokens!494)))))

(declare-fun lt!1174508 () Unit!52472)

(declare-fun choose!19986 (List!37269 Int Token!10234) Unit!52472)

(assert (=> d!994326 (= lt!1174508 (choose!19986 tokens!494 lambda!121737 (h!42565 (t!272404 tokens!494))))))

(declare-fun e!2141791 () Bool)

(assert (=> d!994326 e!2141791))

(declare-fun res!1394706 () Bool)

(assert (=> d!994326 (=> (not res!1394706) (not e!2141791))))

(assert (=> d!994326 (= res!1394706 (forall!7911 tokens!494 lambda!121737))))

(assert (=> d!994326 (= (forallContained!1381 tokens!494 lambda!121737 (h!42565 (t!272404 tokens!494))) lt!1174508)))

(declare-fun b!3457160 () Bool)

(declare-fun contains!6880 (List!37269 Token!10234) Bool)

(assert (=> b!3457160 (= e!2141791 (contains!6880 tokens!494 (h!42565 (t!272404 tokens!494))))))

(assert (= (and d!994326 res!1394706) b!3457160))

(declare-fun b_lambda!99437 () Bool)

(assert (=> (not b_lambda!99437) (not d!994326)))

(declare-fun m!3857453 () Bool)

(assert (=> d!994326 m!3857453))

(declare-fun m!3857455 () Bool)

(assert (=> d!994326 m!3857455))

(declare-fun m!3857457 () Bool)

(assert (=> d!994326 m!3857457))

(declare-fun m!3857459 () Bool)

(assert (=> b!3457160 m!3857459))

(assert (=> b!3456413 d!994326))

(declare-fun d!994328 () Bool)

(declare-fun lt!1174511 () BalanceConc!22100)

(assert (=> d!994328 (= (list!13517 lt!1174511) (printListTailRec!686 thiss!18206 (dropList!1203 lt!1174210 0) (list!13517 (BalanceConc!22101 Empty!11243))))))

(declare-fun e!2141793 () BalanceConc!22100)

(assert (=> d!994328 (= lt!1174511 e!2141793)))

(declare-fun c!591732 () Bool)

(assert (=> d!994328 (= c!591732 (>= 0 (size!28168 lt!1174210)))))

(declare-fun e!2141792 () Bool)

(assert (=> d!994328 e!2141792))

(declare-fun res!1394707 () Bool)

(assert (=> d!994328 (=> (not res!1394707) (not e!2141792))))

(assert (=> d!994328 (= res!1394707 (>= 0 0))))

(assert (=> d!994328 (= (printTailRec!1518 thiss!18206 lt!1174210 0 (BalanceConc!22101 Empty!11243)) lt!1174511)))

(declare-fun b!3457161 () Bool)

(assert (=> b!3457161 (= e!2141792 (<= 0 (size!28168 lt!1174210)))))

(declare-fun b!3457162 () Bool)

(assert (=> b!3457162 (= e!2141793 (BalanceConc!22101 Empty!11243))))

(declare-fun b!3457163 () Bool)

(assert (=> b!3457163 (= e!2141793 (printTailRec!1518 thiss!18206 lt!1174210 (+ 0 1) (++!9153 (BalanceConc!22101 Empty!11243) (charsOf!3448 (apply!8734 lt!1174210 0)))))))

(declare-fun lt!1174514 () List!37269)

(assert (=> b!3457163 (= lt!1174514 (list!13519 lt!1174210))))

(declare-fun lt!1174515 () Unit!52472)

(assert (=> b!3457163 (= lt!1174515 (lemmaDropApply!1161 lt!1174514 0))))

(assert (=> b!3457163 (= (head!7313 (drop!2009 lt!1174514 0)) (apply!8737 lt!1174514 0))))

(declare-fun lt!1174510 () Unit!52472)

(assert (=> b!3457163 (= lt!1174510 lt!1174515)))

(declare-fun lt!1174509 () List!37269)

(assert (=> b!3457163 (= lt!1174509 (list!13519 lt!1174210))))

(declare-fun lt!1174513 () Unit!52472)

(assert (=> b!3457163 (= lt!1174513 (lemmaDropTail!1045 lt!1174509 0))))

(assert (=> b!3457163 (= (tail!5428 (drop!2009 lt!1174509 0)) (drop!2009 lt!1174509 (+ 0 1)))))

(declare-fun lt!1174512 () Unit!52472)

(assert (=> b!3457163 (= lt!1174512 lt!1174513)))

(assert (= (and d!994328 res!1394707) b!3457161))

(assert (= (and d!994328 c!591732) b!3457162))

(assert (= (and d!994328 (not c!591732)) b!3457163))

(declare-fun m!3857461 () Bool)

(assert (=> d!994328 m!3857461))

(declare-fun m!3857463 () Bool)

(assert (=> d!994328 m!3857463))

(declare-fun m!3857465 () Bool)

(assert (=> d!994328 m!3857465))

(assert (=> d!994328 m!3856583))

(assert (=> d!994328 m!3857461))

(assert (=> d!994328 m!3856583))

(declare-fun m!3857467 () Bool)

(assert (=> d!994328 m!3857467))

(assert (=> b!3457161 m!3857463))

(declare-fun m!3857469 () Bool)

(assert (=> b!3457163 m!3857469))

(declare-fun m!3857471 () Bool)

(assert (=> b!3457163 m!3857471))

(assert (=> b!3457163 m!3857469))

(declare-fun m!3857473 () Bool)

(assert (=> b!3457163 m!3857473))

(declare-fun m!3857475 () Bool)

(assert (=> b!3457163 m!3857475))

(declare-fun m!3857477 () Bool)

(assert (=> b!3457163 m!3857477))

(declare-fun m!3857479 () Bool)

(assert (=> b!3457163 m!3857479))

(declare-fun m!3857481 () Bool)

(assert (=> b!3457163 m!3857481))

(assert (=> b!3457163 m!3857295))

(declare-fun m!3857483 () Bool)

(assert (=> b!3457163 m!3857483))

(declare-fun m!3857485 () Bool)

(assert (=> b!3457163 m!3857485))

(assert (=> b!3457163 m!3857477))

(assert (=> b!3457163 m!3857473))

(declare-fun m!3857487 () Bool)

(assert (=> b!3457163 m!3857487))

(declare-fun m!3857489 () Bool)

(assert (=> b!3457163 m!3857489))

(declare-fun m!3857491 () Bool)

(assert (=> b!3457163 m!3857491))

(assert (=> b!3457163 m!3857479))

(assert (=> b!3457163 m!3857483))

(assert (=> b!3456413 d!994328))

(declare-fun d!994330 () Bool)

(assert (=> d!994330 (= (isDefined!5788 lt!1174198) (not (isEmpty!21492 lt!1174198)))))

(declare-fun bs!560127 () Bool)

(assert (= bs!560127 d!994330))

(declare-fun m!3857493 () Bool)

(assert (=> bs!560127 m!3857493))

(assert (=> b!3456413 d!994330))

(declare-fun d!994332 () Bool)

(declare-fun dynLambda!15638 (Int BalanceConc!22100) TokenValue!5664)

(assert (=> d!994332 (= (apply!8735 (transformation!5434 (rule!8022 (h!42565 tokens!494))) lt!1174224) (dynLambda!15638 (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) lt!1174224))))

(declare-fun b_lambda!99439 () Bool)

(assert (=> (not b_lambda!99439) (not d!994332)))

(declare-fun t!272472 () Bool)

(declare-fun tb!188251 () Bool)

(assert (=> (and b!3456410 (= (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272472) tb!188251))

(declare-fun result!232202 () Bool)

(assert (=> tb!188251 (= result!232202 (inv!21 (dynLambda!15638 (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) lt!1174224)))))

(declare-fun m!3857495 () Bool)

(assert (=> tb!188251 m!3857495))

(assert (=> d!994332 t!272472))

(declare-fun b_and!243021 () Bool)

(assert (= b_and!242947 (and (=> t!272472 result!232202) b_and!243021)))

(declare-fun tb!188253 () Bool)

(declare-fun t!272474 () Bool)

(assert (=> (and b!3456428 (= (toValue!7658 (transformation!5434 (h!42564 rules!2135))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272474) tb!188253))

(declare-fun result!232206 () Bool)

(assert (= result!232206 result!232202))

(assert (=> d!994332 t!272474))

(declare-fun b_and!243023 () Bool)

(assert (= b_and!242951 (and (=> t!272474 result!232206) b_and!243023)))

(declare-fun tb!188255 () Bool)

(declare-fun t!272476 () Bool)

(assert (=> (and b!3456421 (= (toValue!7658 (transformation!5434 (rule!8022 separatorToken!241))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272476) tb!188255))

(declare-fun result!232208 () Bool)

(assert (= result!232208 result!232202))

(assert (=> d!994332 t!272476))

(declare-fun b_and!243025 () Bool)

(assert (= b_and!242955 (and (=> t!272476 result!232208) b_and!243025)))

(declare-fun m!3857497 () Bool)

(assert (=> d!994332 m!3857497))

(assert (=> b!3456413 d!994332))

(declare-fun b!3457166 () Bool)

(declare-fun e!2141800 () List!37267)

(declare-fun call!249347 () List!37267)

(assert (=> b!3457166 (= e!2141800 call!249347)))

(declare-fun c!591734 () Bool)

(declare-fun bm!249340 () Bool)

(declare-fun c!591736 () Bool)

(declare-fun call!249345 () List!37267)

(assert (=> bm!249340 (= call!249345 (usedCharacters!668 (ite c!591736 (reg!10522 (regex!5434 (rule!8022 separatorToken!241))) (ite c!591734 (regTwo!20899 (regex!5434 (rule!8022 separatorToken!241))) (regOne!20898 (regex!5434 (rule!8022 separatorToken!241)))))))))

(declare-fun b!3457167 () Bool)

(declare-fun e!2141799 () List!37267)

(assert (=> b!3457167 (= e!2141799 call!249345)))

(declare-fun bm!249341 () Bool)

(declare-fun call!249348 () List!37267)

(assert (=> bm!249341 (= call!249348 call!249345)))

(declare-fun b!3457168 () Bool)

(assert (=> b!3457168 (= e!2141800 call!249347)))

(declare-fun b!3457169 () Bool)

(declare-fun e!2141798 () List!37267)

(declare-fun e!2141797 () List!37267)

(assert (=> b!3457169 (= e!2141798 e!2141797)))

(declare-fun c!591735 () Bool)

(assert (=> b!3457169 (= c!591735 ((_ is ElementMatch!10193) (regex!5434 (rule!8022 separatorToken!241))))))

(declare-fun b!3457170 () Bool)

(assert (=> b!3457170 (= e!2141797 (Cons!37143 (c!591582 (regex!5434 (rule!8022 separatorToken!241))) Nil!37143))))

(declare-fun bm!249342 () Bool)

(declare-fun call!249346 () List!37267)

(assert (=> bm!249342 (= call!249347 (++!9151 (ite c!591734 call!249346 call!249348) (ite c!591734 call!249348 call!249346)))))

(declare-fun b!3457172 () Bool)

(assert (=> b!3457172 (= e!2141798 Nil!37143)))

(declare-fun bm!249343 () Bool)

(assert (=> bm!249343 (= call!249346 (usedCharacters!668 (ite c!591734 (regOne!20899 (regex!5434 (rule!8022 separatorToken!241))) (regTwo!20898 (regex!5434 (rule!8022 separatorToken!241))))))))

(declare-fun b!3457173 () Bool)

(assert (=> b!3457173 (= e!2141799 e!2141800)))

(assert (=> b!3457173 (= c!591734 ((_ is Union!10193) (regex!5434 (rule!8022 separatorToken!241))))))

(declare-fun d!994334 () Bool)

(declare-fun c!591733 () Bool)

(assert (=> d!994334 (= c!591733 (or ((_ is EmptyExpr!10193) (regex!5434 (rule!8022 separatorToken!241))) ((_ is EmptyLang!10193) (regex!5434 (rule!8022 separatorToken!241)))))))

(assert (=> d!994334 (= (usedCharacters!668 (regex!5434 (rule!8022 separatorToken!241))) e!2141798)))

(declare-fun b!3457171 () Bool)

(assert (=> b!3457171 (= c!591736 ((_ is Star!10193) (regex!5434 (rule!8022 separatorToken!241))))))

(assert (=> b!3457171 (= e!2141797 e!2141799)))

(assert (= (and d!994334 c!591733) b!3457172))

(assert (= (and d!994334 (not c!591733)) b!3457169))

(assert (= (and b!3457169 c!591735) b!3457170))

(assert (= (and b!3457169 (not c!591735)) b!3457171))

(assert (= (and b!3457171 c!591736) b!3457167))

(assert (= (and b!3457171 (not c!591736)) b!3457173))

(assert (= (and b!3457173 c!591734) b!3457168))

(assert (= (and b!3457173 (not c!591734)) b!3457166))

(assert (= (or b!3457168 b!3457166) bm!249341))

(assert (= (or b!3457168 b!3457166) bm!249343))

(assert (= (or b!3457168 b!3457166) bm!249342))

(assert (= (or b!3457167 bm!249341) bm!249340))

(declare-fun m!3857499 () Bool)

(assert (=> bm!249340 m!3857499))

(declare-fun m!3857501 () Bool)

(assert (=> bm!249342 m!3857501))

(declare-fun m!3857503 () Bool)

(assert (=> bm!249343 m!3857503))

(assert (=> b!3456413 d!994334))

(declare-fun d!994336 () Bool)

(declare-fun lt!1174518 () BalanceConc!22100)

(assert (=> d!994336 (= (list!13517 lt!1174518) (printListTailRec!686 thiss!18206 (dropList!1203 lt!1174197 0) (list!13517 (BalanceConc!22101 Empty!11243))))))

(declare-fun e!2141802 () BalanceConc!22100)

(assert (=> d!994336 (= lt!1174518 e!2141802)))

(declare-fun c!591737 () Bool)

(assert (=> d!994336 (= c!591737 (>= 0 (size!28168 lt!1174197)))))

(declare-fun e!2141801 () Bool)

(assert (=> d!994336 e!2141801))

(declare-fun res!1394708 () Bool)

(assert (=> d!994336 (=> (not res!1394708) (not e!2141801))))

(assert (=> d!994336 (= res!1394708 (>= 0 0))))

(assert (=> d!994336 (= (printTailRec!1518 thiss!18206 lt!1174197 0 (BalanceConc!22101 Empty!11243)) lt!1174518)))

(declare-fun b!3457174 () Bool)

(assert (=> b!3457174 (= e!2141801 (<= 0 (size!28168 lt!1174197)))))

(declare-fun b!3457175 () Bool)

(assert (=> b!3457175 (= e!2141802 (BalanceConc!22101 Empty!11243))))

(declare-fun b!3457176 () Bool)

(assert (=> b!3457176 (= e!2141802 (printTailRec!1518 thiss!18206 lt!1174197 (+ 0 1) (++!9153 (BalanceConc!22101 Empty!11243) (charsOf!3448 (apply!8734 lt!1174197 0)))))))

(declare-fun lt!1174521 () List!37269)

(assert (=> b!3457176 (= lt!1174521 (list!13519 lt!1174197))))

(declare-fun lt!1174522 () Unit!52472)

(assert (=> b!3457176 (= lt!1174522 (lemmaDropApply!1161 lt!1174521 0))))

(assert (=> b!3457176 (= (head!7313 (drop!2009 lt!1174521 0)) (apply!8737 lt!1174521 0))))

(declare-fun lt!1174517 () Unit!52472)

(assert (=> b!3457176 (= lt!1174517 lt!1174522)))

(declare-fun lt!1174516 () List!37269)

(assert (=> b!3457176 (= lt!1174516 (list!13519 lt!1174197))))

(declare-fun lt!1174520 () Unit!52472)

(assert (=> b!3457176 (= lt!1174520 (lemmaDropTail!1045 lt!1174516 0))))

(assert (=> b!3457176 (= (tail!5428 (drop!2009 lt!1174516 0)) (drop!2009 lt!1174516 (+ 0 1)))))

(declare-fun lt!1174519 () Unit!52472)

(assert (=> b!3457176 (= lt!1174519 lt!1174520)))

(assert (= (and d!994336 res!1394708) b!3457174))

(assert (= (and d!994336 c!591737) b!3457175))

(assert (= (and d!994336 (not c!591737)) b!3457176))

(declare-fun m!3857505 () Bool)

(assert (=> d!994336 m!3857505))

(declare-fun m!3857507 () Bool)

(assert (=> d!994336 m!3857507))

(declare-fun m!3857509 () Bool)

(assert (=> d!994336 m!3857509))

(assert (=> d!994336 m!3856583))

(assert (=> d!994336 m!3857505))

(assert (=> d!994336 m!3856583))

(declare-fun m!3857511 () Bool)

(assert (=> d!994336 m!3857511))

(assert (=> b!3457174 m!3857507))

(declare-fun m!3857513 () Bool)

(assert (=> b!3457176 m!3857513))

(declare-fun m!3857515 () Bool)

(assert (=> b!3457176 m!3857515))

(assert (=> b!3457176 m!3857513))

(declare-fun m!3857517 () Bool)

(assert (=> b!3457176 m!3857517))

(declare-fun m!3857519 () Bool)

(assert (=> b!3457176 m!3857519))

(declare-fun m!3857521 () Bool)

(assert (=> b!3457176 m!3857521))

(declare-fun m!3857523 () Bool)

(assert (=> b!3457176 m!3857523))

(declare-fun m!3857525 () Bool)

(assert (=> b!3457176 m!3857525))

(assert (=> b!3457176 m!3856969))

(declare-fun m!3857527 () Bool)

(assert (=> b!3457176 m!3857527))

(declare-fun m!3857529 () Bool)

(assert (=> b!3457176 m!3857529))

(assert (=> b!3457176 m!3857521))

(assert (=> b!3457176 m!3857517))

(declare-fun m!3857531 () Bool)

(assert (=> b!3457176 m!3857531))

(declare-fun m!3857533 () Bool)

(assert (=> b!3457176 m!3857533))

(declare-fun m!3857535 () Bool)

(assert (=> b!3457176 m!3857535))

(assert (=> b!3457176 m!3857523))

(assert (=> b!3457176 m!3857527))

(assert (=> b!3456413 d!994336))

(declare-fun d!994338 () Bool)

(declare-fun res!1394709 () Bool)

(declare-fun e!2141803 () Bool)

(assert (=> d!994338 (=> (not res!1394709) (not e!2141803))))

(assert (=> d!994338 (= res!1394709 (not (isEmpty!21487 (originalCharacters!6148 (h!42565 tokens!494)))))))

(assert (=> d!994338 (= (inv!50310 (h!42565 tokens!494)) e!2141803)))

(declare-fun b!3457177 () Bool)

(declare-fun res!1394710 () Bool)

(assert (=> b!3457177 (=> (not res!1394710) (not e!2141803))))

(assert (=> b!3457177 (= res!1394710 (= (originalCharacters!6148 (h!42565 tokens!494)) (list!13517 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (value!175329 (h!42565 tokens!494))))))))

(declare-fun b!3457178 () Bool)

(assert (=> b!3457178 (= e!2141803 (= (size!28167 (h!42565 tokens!494)) (size!28169 (originalCharacters!6148 (h!42565 tokens!494)))))))

(assert (= (and d!994338 res!1394709) b!3457177))

(assert (= (and b!3457177 res!1394710) b!3457178))

(declare-fun b_lambda!99441 () Bool)

(assert (=> (not b_lambda!99441) (not b!3457177)))

(declare-fun t!272478 () Bool)

(declare-fun tb!188257 () Bool)

(assert (=> (and b!3456410 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272478) tb!188257))

(declare-fun b!3457179 () Bool)

(declare-fun e!2141804 () Bool)

(declare-fun tp!1077564 () Bool)

(assert (=> b!3457179 (= e!2141804 (and (inv!50311 (c!591583 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (value!175329 (h!42565 tokens!494))))) tp!1077564))))

(declare-fun result!232210 () Bool)

(assert (=> tb!188257 (= result!232210 (and (inv!50312 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (value!175329 (h!42565 tokens!494)))) e!2141804))))

(assert (= tb!188257 b!3457179))

(declare-fun m!3857537 () Bool)

(assert (=> b!3457179 m!3857537))

(declare-fun m!3857539 () Bool)

(assert (=> tb!188257 m!3857539))

(assert (=> b!3457177 t!272478))

(declare-fun b_and!243027 () Bool)

(assert (= b_and!242977 (and (=> t!272478 result!232210) b_and!243027)))

(declare-fun t!272480 () Bool)

(declare-fun tb!188259 () Bool)

(assert (=> (and b!3456428 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272480) tb!188259))

(declare-fun result!232212 () Bool)

(assert (= result!232212 result!232210))

(assert (=> b!3457177 t!272480))

(declare-fun b_and!243029 () Bool)

(assert (= b_and!242979 (and (=> t!272480 result!232212) b_and!243029)))

(declare-fun tb!188261 () Bool)

(declare-fun t!272482 () Bool)

(assert (=> (and b!3456421 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272482) tb!188261))

(declare-fun result!232214 () Bool)

(assert (= result!232214 result!232210))

(assert (=> b!3457177 t!272482))

(declare-fun b_and!243031 () Bool)

(assert (= b_and!242981 (and (=> t!272482 result!232214) b_and!243031)))

(declare-fun m!3857541 () Bool)

(assert (=> d!994338 m!3857541))

(declare-fun m!3857543 () Bool)

(assert (=> b!3457177 m!3857543))

(assert (=> b!3457177 m!3857543))

(declare-fun m!3857545 () Bool)

(assert (=> b!3457177 m!3857545))

(declare-fun m!3857547 () Bool)

(assert (=> b!3457178 m!3857547))

(assert (=> b!3456434 d!994338))

(declare-fun lt!1174525 () Bool)

(declare-fun d!994340 () Bool)

(declare-fun isEmpty!21495 (List!37269) Bool)

(assert (=> d!994340 (= lt!1174525 (isEmpty!21495 (list!13519 (_1!21560 (lex!2349 thiss!18206 rules!2135 lt!1174224)))))))

(declare-fun isEmpty!21496 (Conc!11244) Bool)

(assert (=> d!994340 (= lt!1174525 (isEmpty!21496 (c!591584 (_1!21560 (lex!2349 thiss!18206 rules!2135 lt!1174224)))))))

(assert (=> d!994340 (= (isEmpty!21484 (_1!21560 (lex!2349 thiss!18206 rules!2135 lt!1174224))) lt!1174525)))

(declare-fun bs!560128 () Bool)

(assert (= bs!560128 d!994340))

(declare-fun m!3857549 () Bool)

(assert (=> bs!560128 m!3857549))

(assert (=> bs!560128 m!3857549))

(declare-fun m!3857551 () Bool)

(assert (=> bs!560128 m!3857551))

(declare-fun m!3857553 () Bool)

(assert (=> bs!560128 m!3857553))

(assert (=> b!3456411 d!994340))

(declare-fun e!2141806 () Bool)

(declare-fun b!3457180 () Bool)

(declare-fun lt!1174526 () tuple2!36852)

(assert (=> b!3457180 (= e!2141806 (= (list!13517 (_2!21560 lt!1174526)) (_2!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174224)))))))

(declare-fun d!994342 () Bool)

(assert (=> d!994342 e!2141806))

(declare-fun res!1394713 () Bool)

(assert (=> d!994342 (=> (not res!1394713) (not e!2141806))))

(declare-fun e!2141807 () Bool)

(assert (=> d!994342 (= res!1394713 e!2141807)))

(declare-fun c!591738 () Bool)

(assert (=> d!994342 (= c!591738 (> (size!28168 (_1!21560 lt!1174526)) 0))))

(assert (=> d!994342 (= lt!1174526 (lexTailRecV2!1054 thiss!18206 rules!2135 lt!1174224 (BalanceConc!22101 Empty!11243) lt!1174224 (BalanceConc!22103 Empty!11244)))))

(assert (=> d!994342 (= (lex!2349 thiss!18206 rules!2135 lt!1174224) lt!1174526)))

(declare-fun b!3457181 () Bool)

(assert (=> b!3457181 (= e!2141807 (= (_2!21560 lt!1174526) lt!1174224))))

(declare-fun b!3457182 () Bool)

(declare-fun res!1394711 () Bool)

(assert (=> b!3457182 (=> (not res!1394711) (not e!2141806))))

(assert (=> b!3457182 (= res!1394711 (= (list!13519 (_1!21560 lt!1174526)) (_1!21564 (lexList!1446 thiss!18206 rules!2135 (list!13517 lt!1174224)))))))

(declare-fun b!3457183 () Bool)

(declare-fun e!2141805 () Bool)

(assert (=> b!3457183 (= e!2141807 e!2141805)))

(declare-fun res!1394712 () Bool)

(assert (=> b!3457183 (= res!1394712 (< (size!28175 (_2!21560 lt!1174526)) (size!28175 lt!1174224)))))

(assert (=> b!3457183 (=> (not res!1394712) (not e!2141805))))

(declare-fun b!3457184 () Bool)

(assert (=> b!3457184 (= e!2141805 (not (isEmpty!21484 (_1!21560 lt!1174526))))))

(assert (= (and d!994342 c!591738) b!3457183))

(assert (= (and d!994342 (not c!591738)) b!3457181))

(assert (= (and b!3457183 res!1394712) b!3457184))

(assert (= (and d!994342 res!1394713) b!3457182))

(assert (= (and b!3457182 res!1394711) b!3457180))

(declare-fun m!3857555 () Bool)

(assert (=> b!3457182 m!3857555))

(declare-fun m!3857557 () Bool)

(assert (=> b!3457182 m!3857557))

(assert (=> b!3457182 m!3857557))

(declare-fun m!3857559 () Bool)

(assert (=> b!3457182 m!3857559))

(declare-fun m!3857561 () Bool)

(assert (=> b!3457184 m!3857561))

(declare-fun m!3857563 () Bool)

(assert (=> b!3457180 m!3857563))

(assert (=> b!3457180 m!3857557))

(assert (=> b!3457180 m!3857557))

(assert (=> b!3457180 m!3857559))

(declare-fun m!3857565 () Bool)

(assert (=> d!994342 m!3857565))

(declare-fun m!3857567 () Bool)

(assert (=> d!994342 m!3857567))

(declare-fun m!3857569 () Bool)

(assert (=> b!3457183 m!3857569))

(declare-fun m!3857571 () Bool)

(assert (=> b!3457183 m!3857571))

(assert (=> b!3456411 d!994342))

(declare-fun d!994344 () Bool)

(declare-fun fromListB!1779 (List!37267) BalanceConc!22100)

(assert (=> d!994344 (= (seqFromList!3922 lt!1174209) (fromListB!1779 lt!1174209))))

(declare-fun bs!560129 () Bool)

(assert (= bs!560129 d!994344))

(declare-fun m!3857573 () Bool)

(assert (=> bs!560129 m!3857573))

(assert (=> b!3456411 d!994344))

(declare-fun d!994346 () Bool)

(declare-fun lt!1174529 () Bool)

(assert (=> d!994346 (= lt!1174529 (isEmpty!21487 (list!13517 (_2!21560 lt!1174212))))))

(declare-fun isEmpty!21497 (Conc!11243) Bool)

(assert (=> d!994346 (= lt!1174529 (isEmpty!21497 (c!591583 (_2!21560 lt!1174212))))))

(assert (=> d!994346 (= (isEmpty!21485 (_2!21560 lt!1174212)) lt!1174529)))

(declare-fun bs!560130 () Bool)

(assert (= bs!560130 d!994346))

(declare-fun m!3857575 () Bool)

(assert (=> bs!560130 m!3857575))

(assert (=> bs!560130 m!3857575))

(declare-fun m!3857577 () Bool)

(assert (=> bs!560130 m!3857577))

(declare-fun m!3857579 () Bool)

(assert (=> bs!560130 m!3857579))

(assert (=> b!3456432 d!994346))

(declare-fun d!994348 () Bool)

(assert (=> d!994348 (= (list!13517 (charsOf!3448 (h!42565 tokens!494))) (list!13520 (c!591583 (charsOf!3448 (h!42565 tokens!494)))))))

(declare-fun bs!560131 () Bool)

(assert (= bs!560131 d!994348))

(declare-fun m!3857581 () Bool)

(assert (=> bs!560131 m!3857581))

(assert (=> b!3456433 d!994348))

(declare-fun d!994350 () Bool)

(declare-fun lt!1174530 () BalanceConc!22100)

(assert (=> d!994350 (= (list!13517 lt!1174530) (originalCharacters!6148 (h!42565 tokens!494)))))

(assert (=> d!994350 (= lt!1174530 (dynLambda!15635 (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (value!175329 (h!42565 tokens!494))))))

(assert (=> d!994350 (= (charsOf!3448 (h!42565 tokens!494)) lt!1174530)))

(declare-fun b_lambda!99443 () Bool)

(assert (=> (not b_lambda!99443) (not d!994350)))

(assert (=> d!994350 t!272478))

(declare-fun b_and!243033 () Bool)

(assert (= b_and!243027 (and (=> t!272478 result!232210) b_and!243033)))

(assert (=> d!994350 t!272480))

(declare-fun b_and!243035 () Bool)

(assert (= b_and!243029 (and (=> t!272480 result!232212) b_and!243035)))

(assert (=> d!994350 t!272482))

(declare-fun b_and!243037 () Bool)

(assert (= b_and!243031 (and (=> t!272482 result!232214) b_and!243037)))

(declare-fun m!3857583 () Bool)

(assert (=> d!994350 m!3857583))

(assert (=> d!994350 m!3857543))

(assert (=> b!3456433 d!994350))

(declare-fun d!994352 () Bool)

(declare-fun res!1394718 () Bool)

(declare-fun e!2141812 () Bool)

(assert (=> d!994352 (=> res!1394718 e!2141812)))

(assert (=> d!994352 (= res!1394718 (not ((_ is Cons!37144) rules!2135)))))

(assert (=> d!994352 (= (sepAndNonSepRulesDisjointChars!1628 rules!2135 rules!2135) e!2141812)))

(declare-fun b!3457189 () Bool)

(declare-fun e!2141813 () Bool)

(assert (=> b!3457189 (= e!2141812 e!2141813)))

(declare-fun res!1394719 () Bool)

(assert (=> b!3457189 (=> (not res!1394719) (not e!2141813))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!717 (Rule!10668 List!37268) Bool)

(assert (=> b!3457189 (= res!1394719 (ruleDisjointCharsFromAllFromOtherType!717 (h!42564 rules!2135) rules!2135))))

(declare-fun b!3457190 () Bool)

(assert (=> b!3457190 (= e!2141813 (sepAndNonSepRulesDisjointChars!1628 rules!2135 (t!272403 rules!2135)))))

(assert (= (and d!994352 (not res!1394718)) b!3457189))

(assert (= (and b!3457189 res!1394719) b!3457190))

(declare-fun m!3857585 () Bool)

(assert (=> b!3457189 m!3857585))

(declare-fun m!3857587 () Bool)

(assert (=> b!3457190 m!3857587))

(assert (=> b!3456431 d!994352))

(declare-fun d!994354 () Bool)

(assert (=> d!994354 (= (inv!50306 (tag!6040 (h!42564 rules!2135))) (= (mod (str.len (value!175328 (tag!6040 (h!42564 rules!2135)))) 2) 0))))

(assert (=> b!3456439 d!994354))

(declare-fun d!994356 () Bool)

(declare-fun res!1394720 () Bool)

(declare-fun e!2141814 () Bool)

(assert (=> d!994356 (=> (not res!1394720) (not e!2141814))))

(assert (=> d!994356 (= res!1394720 (semiInverseModEq!2281 (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toValue!7658 (transformation!5434 (h!42564 rules!2135)))))))

(assert (=> d!994356 (= (inv!50309 (transformation!5434 (h!42564 rules!2135))) e!2141814)))

(declare-fun b!3457191 () Bool)

(assert (=> b!3457191 (= e!2141814 (equivClasses!2180 (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toValue!7658 (transformation!5434 (h!42564 rules!2135)))))))

(assert (= (and d!994356 res!1394720) b!3457191))

(declare-fun m!3857589 () Bool)

(assert (=> d!994356 m!3857589))

(declare-fun m!3857591 () Bool)

(assert (=> b!3457191 m!3857591))

(assert (=> b!3456439 d!994356))

(declare-fun d!994358 () Bool)

(assert (=> d!994358 (not (matchR!4777 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216))))

(declare-fun lt!1174533 () Unit!52472)

(declare-fun choose!19987 (Regex!10193 List!37267 C!20572) Unit!52472)

(assert (=> d!994358 (= lt!1174533 (choose!19987 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216 lt!1174214))))

(assert (=> d!994358 (validRegex!4641 (regex!5434 (rule!8022 separatorToken!241)))))

(assert (=> d!994358 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!492 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216 lt!1174214) lt!1174533)))

(declare-fun bs!560132 () Bool)

(assert (= bs!560132 d!994358))

(assert (=> bs!560132 m!3856205))

(declare-fun m!3857593 () Bool)

(assert (=> bs!560132 m!3857593))

(declare-fun m!3857595 () Bool)

(assert (=> bs!560132 m!3857595))

(assert (=> b!3456418 d!994358))

(declare-fun b!3457192 () Bool)

(declare-fun e!2141816 () Bool)

(declare-fun e!2141815 () Bool)

(assert (=> b!3457192 (= e!2141816 e!2141815)))

(declare-fun c!591742 () Bool)

(assert (=> b!3457192 (= c!591742 ((_ is EmptyLang!10193) (regex!5434 (rule!8022 separatorToken!241))))))

(declare-fun b!3457193 () Bool)

(declare-fun e!2141819 () Bool)

(declare-fun e!2141817 () Bool)

(assert (=> b!3457193 (= e!2141819 e!2141817)))

(declare-fun res!1394725 () Bool)

(assert (=> b!3457193 (=> (not res!1394725) (not e!2141817))))

(declare-fun lt!1174534 () Bool)

(assert (=> b!3457193 (= res!1394725 (not lt!1174534))))

(declare-fun d!994360 () Bool)

(assert (=> d!994360 e!2141816))

(declare-fun c!591740 () Bool)

(assert (=> d!994360 (= c!591740 ((_ is EmptyExpr!10193) (regex!5434 (rule!8022 separatorToken!241))))))

(declare-fun e!2141818 () Bool)

(assert (=> d!994360 (= lt!1174534 e!2141818)))

(declare-fun c!591741 () Bool)

(assert (=> d!994360 (= c!591741 (isEmpty!21487 lt!1174216))))

(assert (=> d!994360 (validRegex!4641 (regex!5434 (rule!8022 separatorToken!241)))))

(assert (=> d!994360 (= (matchR!4777 (regex!5434 (rule!8022 separatorToken!241)) lt!1174216) lt!1174534)))

(declare-fun b!3457194 () Bool)

(assert (=> b!3457194 (= e!2141818 (matchR!4777 (derivativeStep!3038 (regex!5434 (rule!8022 separatorToken!241)) (head!7311 lt!1174216)) (tail!5427 lt!1174216)))))

(declare-fun b!3457195 () Bool)

(declare-fun res!1394728 () Bool)

(declare-fun e!2141820 () Bool)

(assert (=> b!3457195 (=> (not res!1394728) (not e!2141820))))

(declare-fun call!249349 () Bool)

(assert (=> b!3457195 (= res!1394728 (not call!249349))))

(declare-fun b!3457196 () Bool)

(declare-fun e!2141821 () Bool)

(assert (=> b!3457196 (= e!2141817 e!2141821)))

(declare-fun res!1394724 () Bool)

(assert (=> b!3457196 (=> res!1394724 e!2141821)))

(assert (=> b!3457196 (= res!1394724 call!249349)))

(declare-fun b!3457197 () Bool)

(declare-fun res!1394721 () Bool)

(assert (=> b!3457197 (=> res!1394721 e!2141819)))

(assert (=> b!3457197 (= res!1394721 e!2141820)))

(declare-fun res!1394726 () Bool)

(assert (=> b!3457197 (=> (not res!1394726) (not e!2141820))))

(assert (=> b!3457197 (= res!1394726 lt!1174534)))

(declare-fun b!3457198 () Bool)

(declare-fun res!1394723 () Bool)

(assert (=> b!3457198 (=> (not res!1394723) (not e!2141820))))

(assert (=> b!3457198 (= res!1394723 (isEmpty!21487 (tail!5427 lt!1174216)))))

(declare-fun b!3457199 () Bool)

(assert (=> b!3457199 (= e!2141816 (= lt!1174534 call!249349))))

(declare-fun b!3457200 () Bool)

(declare-fun res!1394722 () Bool)

(assert (=> b!3457200 (=> res!1394722 e!2141819)))

(assert (=> b!3457200 (= res!1394722 (not ((_ is ElementMatch!10193) (regex!5434 (rule!8022 separatorToken!241)))))))

(assert (=> b!3457200 (= e!2141815 e!2141819)))

(declare-fun b!3457201 () Bool)

(assert (=> b!3457201 (= e!2141820 (= (head!7311 lt!1174216) (c!591582 (regex!5434 (rule!8022 separatorToken!241)))))))

(declare-fun b!3457202 () Bool)

(declare-fun res!1394727 () Bool)

(assert (=> b!3457202 (=> res!1394727 e!2141821)))

(assert (=> b!3457202 (= res!1394727 (not (isEmpty!21487 (tail!5427 lt!1174216))))))

(declare-fun b!3457203 () Bool)

(assert (=> b!3457203 (= e!2141815 (not lt!1174534))))

(declare-fun b!3457204 () Bool)

(assert (=> b!3457204 (= e!2141821 (not (= (head!7311 lt!1174216) (c!591582 (regex!5434 (rule!8022 separatorToken!241))))))))

(declare-fun bm!249344 () Bool)

(assert (=> bm!249344 (= call!249349 (isEmpty!21487 lt!1174216))))

(declare-fun b!3457205 () Bool)

(assert (=> b!3457205 (= e!2141818 (nullable!3485 (regex!5434 (rule!8022 separatorToken!241))))))

(assert (= (and d!994360 c!591741) b!3457205))

(assert (= (and d!994360 (not c!591741)) b!3457194))

(assert (= (and d!994360 c!591740) b!3457199))

(assert (= (and d!994360 (not c!591740)) b!3457192))

(assert (= (and b!3457192 c!591742) b!3457203))

(assert (= (and b!3457192 (not c!591742)) b!3457200))

(assert (= (and b!3457200 (not res!1394722)) b!3457197))

(assert (= (and b!3457197 res!1394726) b!3457195))

(assert (= (and b!3457195 res!1394728) b!3457198))

(assert (= (and b!3457198 res!1394723) b!3457201))

(assert (= (and b!3457197 (not res!1394721)) b!3457193))

(assert (= (and b!3457193 res!1394725) b!3457196))

(assert (= (and b!3457196 (not res!1394724)) b!3457202))

(assert (= (and b!3457202 (not res!1394727)) b!3457204))

(assert (= (or b!3457199 b!3457195 b!3457196) bm!249344))

(declare-fun m!3857597 () Bool)

(assert (=> bm!249344 m!3857597))

(assert (=> d!994360 m!3857597))

(assert (=> d!994360 m!3857595))

(declare-fun m!3857599 () Bool)

(assert (=> b!3457198 m!3857599))

(assert (=> b!3457198 m!3857599))

(declare-fun m!3857601 () Bool)

(assert (=> b!3457198 m!3857601))

(assert (=> b!3457204 m!3856309))

(assert (=> b!3457201 m!3856309))

(assert (=> b!3457194 m!3856309))

(assert (=> b!3457194 m!3856309))

(declare-fun m!3857603 () Bool)

(assert (=> b!3457194 m!3857603))

(assert (=> b!3457194 m!3857599))

(assert (=> b!3457194 m!3857603))

(assert (=> b!3457194 m!3857599))

(declare-fun m!3857605 () Bool)

(assert (=> b!3457194 m!3857605))

(assert (=> b!3457202 m!3857599))

(assert (=> b!3457202 m!3857599))

(assert (=> b!3457202 m!3857601))

(declare-fun m!3857607 () Bool)

(assert (=> b!3457205 m!3857607))

(assert (=> b!3456418 d!994360))

(declare-fun d!994362 () Bool)

(assert (=> d!994362 (dynLambda!15637 lambda!121736 (h!42565 (t!272404 tokens!494)))))

(declare-fun lt!1174535 () Unit!52472)

(assert (=> d!994362 (= lt!1174535 (choose!19986 tokens!494 lambda!121736 (h!42565 (t!272404 tokens!494))))))

(declare-fun e!2141822 () Bool)

(assert (=> d!994362 e!2141822))

(declare-fun res!1394729 () Bool)

(assert (=> d!994362 (=> (not res!1394729) (not e!2141822))))

(assert (=> d!994362 (= res!1394729 (forall!7911 tokens!494 lambda!121736))))

(assert (=> d!994362 (= (forallContained!1381 tokens!494 lambda!121736 (h!42565 (t!272404 tokens!494))) lt!1174535)))

(declare-fun b!3457206 () Bool)

(assert (=> b!3457206 (= e!2141822 (contains!6880 tokens!494 (h!42565 (t!272404 tokens!494))))))

(assert (= (and d!994362 res!1394729) b!3457206))

(declare-fun b_lambda!99445 () Bool)

(assert (=> (not b_lambda!99445) (not d!994362)))

(declare-fun m!3857609 () Bool)

(assert (=> d!994362 m!3857609))

(declare-fun m!3857611 () Bool)

(assert (=> d!994362 m!3857611))

(assert (=> d!994362 m!3856189))

(assert (=> b!3457206 m!3857459))

(assert (=> b!3456416 d!994362))

(declare-fun d!994364 () Bool)

(assert (=> d!994364 (dynLambda!15637 lambda!121736 (h!42565 tokens!494))))

(declare-fun lt!1174536 () Unit!52472)

(assert (=> d!994364 (= lt!1174536 (choose!19986 tokens!494 lambda!121736 (h!42565 tokens!494)))))

(declare-fun e!2141823 () Bool)

(assert (=> d!994364 e!2141823))

(declare-fun res!1394730 () Bool)

(assert (=> d!994364 (=> (not res!1394730) (not e!2141823))))

(assert (=> d!994364 (= res!1394730 (forall!7911 tokens!494 lambda!121736))))

(assert (=> d!994364 (= (forallContained!1381 tokens!494 lambda!121736 (h!42565 tokens!494)) lt!1174536)))

(declare-fun b!3457207 () Bool)

(assert (=> b!3457207 (= e!2141823 (contains!6880 tokens!494 (h!42565 tokens!494)))))

(assert (= (and d!994364 res!1394730) b!3457207))

(declare-fun b_lambda!99447 () Bool)

(assert (=> (not b_lambda!99447) (not d!994364)))

(declare-fun m!3857613 () Bool)

(assert (=> d!994364 m!3857613))

(declare-fun m!3857615 () Bool)

(assert (=> d!994364 m!3857615))

(assert (=> d!994364 m!3856189))

(declare-fun m!3857617 () Bool)

(assert (=> b!3457207 m!3857617))

(assert (=> b!3456416 d!994364))

(declare-fun b!3457210 () Bool)

(declare-fun res!1394731 () Bool)

(declare-fun e!2141825 () Bool)

(assert (=> b!3457210 (=> (not res!1394731) (not e!2141825))))

(declare-fun lt!1174537 () List!37267)

(assert (=> b!3457210 (= res!1394731 (= (size!28169 lt!1174537) (+ (size!28169 lt!1174209) (size!28169 lt!1174228))))))

(declare-fun b!3457209 () Bool)

(declare-fun e!2141824 () List!37267)

(assert (=> b!3457209 (= e!2141824 (Cons!37143 (h!42563 lt!1174209) (++!9151 (t!272402 lt!1174209) lt!1174228)))))

(declare-fun b!3457211 () Bool)

(assert (=> b!3457211 (= e!2141825 (or (not (= lt!1174228 Nil!37143)) (= lt!1174537 lt!1174209)))))

(declare-fun b!3457208 () Bool)

(assert (=> b!3457208 (= e!2141824 lt!1174228)))

(declare-fun d!994366 () Bool)

(assert (=> d!994366 e!2141825))

(declare-fun res!1394732 () Bool)

(assert (=> d!994366 (=> (not res!1394732) (not e!2141825))))

(assert (=> d!994366 (= res!1394732 (= (content!5180 lt!1174537) ((_ map or) (content!5180 lt!1174209) (content!5180 lt!1174228))))))

(assert (=> d!994366 (= lt!1174537 e!2141824)))

(declare-fun c!591743 () Bool)

(assert (=> d!994366 (= c!591743 ((_ is Nil!37143) lt!1174209))))

(assert (=> d!994366 (= (++!9151 lt!1174209 lt!1174228) lt!1174537)))

(assert (= (and d!994366 c!591743) b!3457208))

(assert (= (and d!994366 (not c!591743)) b!3457209))

(assert (= (and d!994366 res!1394732) b!3457210))

(assert (= (and b!3457210 res!1394731) b!3457211))

(declare-fun m!3857619 () Bool)

(assert (=> b!3457210 m!3857619))

(assert (=> b!3457210 m!3856323))

(declare-fun m!3857621 () Bool)

(assert (=> b!3457210 m!3857621))

(declare-fun m!3857623 () Bool)

(assert (=> b!3457209 m!3857623))

(declare-fun m!3857625 () Bool)

(assert (=> d!994366 m!3857625))

(assert (=> d!994366 m!3856797))

(declare-fun m!3857627 () Bool)

(assert (=> d!994366 m!3857627))

(assert (=> b!3456417 d!994366))

(declare-fun d!994368 () Bool)

(assert (=> d!994368 (= (++!9151 (++!9151 lt!1174209 lt!1174216) lt!1174203) (++!9151 lt!1174209 (++!9151 lt!1174216 lt!1174203)))))

(declare-fun lt!1174540 () Unit!52472)

(declare-fun choose!19988 (List!37267 List!37267 List!37267) Unit!52472)

(assert (=> d!994368 (= lt!1174540 (choose!19988 lt!1174209 lt!1174216 lt!1174203))))

(assert (=> d!994368 (= (lemmaConcatAssociativity!1952 lt!1174209 lt!1174216 lt!1174203) lt!1174540)))

(declare-fun bs!560133 () Bool)

(assert (= bs!560133 d!994368))

(declare-fun m!3857629 () Bool)

(assert (=> bs!560133 m!3857629))

(assert (=> bs!560133 m!3856255))

(assert (=> bs!560133 m!3856255))

(declare-fun m!3857631 () Bool)

(assert (=> bs!560133 m!3857631))

(assert (=> bs!560133 m!3856199))

(assert (=> bs!560133 m!3856201))

(assert (=> bs!560133 m!3856199))

(assert (=> b!3456417 d!994368))

(declare-fun d!994370 () Bool)

(declare-fun res!1394737 () Bool)

(declare-fun e!2141830 () Bool)

(assert (=> d!994370 (=> res!1394737 e!2141830)))

(assert (=> d!994370 (= res!1394737 ((_ is Nil!37145) tokens!494))))

(assert (=> d!994370 (= (forall!7911 tokens!494 lambda!121736) e!2141830)))

(declare-fun b!3457216 () Bool)

(declare-fun e!2141831 () Bool)

(assert (=> b!3457216 (= e!2141830 e!2141831)))

(declare-fun res!1394738 () Bool)

(assert (=> b!3457216 (=> (not res!1394738) (not e!2141831))))

(assert (=> b!3457216 (= res!1394738 (dynLambda!15637 lambda!121736 (h!42565 tokens!494)))))

(declare-fun b!3457217 () Bool)

(assert (=> b!3457217 (= e!2141831 (forall!7911 (t!272404 tokens!494) lambda!121736))))

(assert (= (and d!994370 (not res!1394737)) b!3457216))

(assert (= (and b!3457216 res!1394738) b!3457217))

(declare-fun b_lambda!99449 () Bool)

(assert (=> (not b_lambda!99449) (not b!3457216)))

(assert (=> b!3457216 m!3857613))

(declare-fun m!3857633 () Bool)

(assert (=> b!3457217 m!3857633))

(assert (=> b!3456438 d!994370))

(declare-fun b!3457218 () Bool)

(declare-fun e!2141833 () Bool)

(declare-fun e!2141832 () Bool)

(assert (=> b!3457218 (= e!2141833 e!2141832)))

(declare-fun c!591746 () Bool)

(assert (=> b!3457218 (= c!591746 ((_ is EmptyLang!10193) (regex!5434 lt!1174215)))))

(declare-fun b!3457219 () Bool)

(declare-fun e!2141836 () Bool)

(declare-fun e!2141834 () Bool)

(assert (=> b!3457219 (= e!2141836 e!2141834)))

(declare-fun res!1394743 () Bool)

(assert (=> b!3457219 (=> (not res!1394743) (not e!2141834))))

(declare-fun lt!1174541 () Bool)

(assert (=> b!3457219 (= res!1394743 (not lt!1174541))))

(declare-fun d!994372 () Bool)

(assert (=> d!994372 e!2141833))

(declare-fun c!591744 () Bool)

(assert (=> d!994372 (= c!591744 ((_ is EmptyExpr!10193) (regex!5434 lt!1174215)))))

(declare-fun e!2141835 () Bool)

(assert (=> d!994372 (= lt!1174541 e!2141835)))

(declare-fun c!591745 () Bool)

(assert (=> d!994372 (= c!591745 (isEmpty!21487 lt!1174216))))

(assert (=> d!994372 (validRegex!4641 (regex!5434 lt!1174215))))

(assert (=> d!994372 (= (matchR!4777 (regex!5434 lt!1174215) lt!1174216) lt!1174541)))

(declare-fun b!3457220 () Bool)

(assert (=> b!3457220 (= e!2141835 (matchR!4777 (derivativeStep!3038 (regex!5434 lt!1174215) (head!7311 lt!1174216)) (tail!5427 lt!1174216)))))

(declare-fun b!3457221 () Bool)

(declare-fun res!1394746 () Bool)

(declare-fun e!2141837 () Bool)

(assert (=> b!3457221 (=> (not res!1394746) (not e!2141837))))

(declare-fun call!249350 () Bool)

(assert (=> b!3457221 (= res!1394746 (not call!249350))))

(declare-fun b!3457222 () Bool)

(declare-fun e!2141838 () Bool)

(assert (=> b!3457222 (= e!2141834 e!2141838)))

(declare-fun res!1394742 () Bool)

(assert (=> b!3457222 (=> res!1394742 e!2141838)))

(assert (=> b!3457222 (= res!1394742 call!249350)))

(declare-fun b!3457223 () Bool)

(declare-fun res!1394739 () Bool)

(assert (=> b!3457223 (=> res!1394739 e!2141836)))

(assert (=> b!3457223 (= res!1394739 e!2141837)))

(declare-fun res!1394744 () Bool)

(assert (=> b!3457223 (=> (not res!1394744) (not e!2141837))))

(assert (=> b!3457223 (= res!1394744 lt!1174541)))

(declare-fun b!3457224 () Bool)

(declare-fun res!1394741 () Bool)

(assert (=> b!3457224 (=> (not res!1394741) (not e!2141837))))

(assert (=> b!3457224 (= res!1394741 (isEmpty!21487 (tail!5427 lt!1174216)))))

(declare-fun b!3457225 () Bool)

(assert (=> b!3457225 (= e!2141833 (= lt!1174541 call!249350))))

(declare-fun b!3457226 () Bool)

(declare-fun res!1394740 () Bool)

(assert (=> b!3457226 (=> res!1394740 e!2141836)))

(assert (=> b!3457226 (= res!1394740 (not ((_ is ElementMatch!10193) (regex!5434 lt!1174215))))))

(assert (=> b!3457226 (= e!2141832 e!2141836)))

(declare-fun b!3457227 () Bool)

(assert (=> b!3457227 (= e!2141837 (= (head!7311 lt!1174216) (c!591582 (regex!5434 lt!1174215))))))

(declare-fun b!3457228 () Bool)

(declare-fun res!1394745 () Bool)

(assert (=> b!3457228 (=> res!1394745 e!2141838)))

(assert (=> b!3457228 (= res!1394745 (not (isEmpty!21487 (tail!5427 lt!1174216))))))

(declare-fun b!3457229 () Bool)

(assert (=> b!3457229 (= e!2141832 (not lt!1174541))))

(declare-fun b!3457230 () Bool)

(assert (=> b!3457230 (= e!2141838 (not (= (head!7311 lt!1174216) (c!591582 (regex!5434 lt!1174215)))))))

(declare-fun bm!249345 () Bool)

(assert (=> bm!249345 (= call!249350 (isEmpty!21487 lt!1174216))))

(declare-fun b!3457231 () Bool)

(assert (=> b!3457231 (= e!2141835 (nullable!3485 (regex!5434 lt!1174215)))))

(assert (= (and d!994372 c!591745) b!3457231))

(assert (= (and d!994372 (not c!591745)) b!3457220))

(assert (= (and d!994372 c!591744) b!3457225))

(assert (= (and d!994372 (not c!591744)) b!3457218))

(assert (= (and b!3457218 c!591746) b!3457229))

(assert (= (and b!3457218 (not c!591746)) b!3457226))

(assert (= (and b!3457226 (not res!1394740)) b!3457223))

(assert (= (and b!3457223 res!1394744) b!3457221))

(assert (= (and b!3457221 res!1394746) b!3457224))

(assert (= (and b!3457224 res!1394741) b!3457227))

(assert (= (and b!3457223 (not res!1394739)) b!3457219))

(assert (= (and b!3457219 res!1394743) b!3457222))

(assert (= (and b!3457222 (not res!1394742)) b!3457228))

(assert (= (and b!3457228 (not res!1394745)) b!3457230))

(assert (= (or b!3457225 b!3457221 b!3457222) bm!249345))

(assert (=> bm!249345 m!3857597))

(assert (=> d!994372 m!3857597))

(declare-fun m!3857635 () Bool)

(assert (=> d!994372 m!3857635))

(assert (=> b!3457224 m!3857599))

(assert (=> b!3457224 m!3857599))

(assert (=> b!3457224 m!3857601))

(assert (=> b!3457230 m!3856309))

(assert (=> b!3457227 m!3856309))

(assert (=> b!3457220 m!3856309))

(assert (=> b!3457220 m!3856309))

(declare-fun m!3857637 () Bool)

(assert (=> b!3457220 m!3857637))

(assert (=> b!3457220 m!3857599))

(assert (=> b!3457220 m!3857637))

(assert (=> b!3457220 m!3857599))

(declare-fun m!3857639 () Bool)

(assert (=> b!3457220 m!3857639))

(assert (=> b!3457228 m!3857599))

(assert (=> b!3457228 m!3857599))

(assert (=> b!3457228 m!3857601))

(declare-fun m!3857641 () Bool)

(assert (=> b!3457231 m!3857641))

(assert (=> b!3456415 d!994372))

(declare-fun d!994374 () Bool)

(assert (=> d!994374 (= (get!11884 lt!1174198) (v!36822 lt!1174198))))

(assert (=> b!3456415 d!994374))

(declare-fun d!994376 () Bool)

(declare-fun lt!1174542 () Bool)

(declare-fun e!2141840 () Bool)

(assert (=> d!994376 (= lt!1174542 e!2141840)))

(declare-fun res!1394747 () Bool)

(assert (=> d!994376 (=> (not res!1394747) (not e!2141840))))

(assert (=> d!994376 (= res!1394747 (= (list!13519 (_1!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 tokens!494)))))) (list!13519 (singletonSeq!2530 (h!42565 tokens!494)))))))

(declare-fun e!2141839 () Bool)

(assert (=> d!994376 (= lt!1174542 e!2141839)))

(declare-fun res!1394748 () Bool)

(assert (=> d!994376 (=> (not res!1394748) (not e!2141839))))

(declare-fun lt!1174543 () tuple2!36852)

(assert (=> d!994376 (= res!1394748 (= (size!28168 (_1!21560 lt!1174543)) 1))))

(assert (=> d!994376 (= lt!1174543 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 tokens!494)))))))

(assert (=> d!994376 (not (isEmpty!21483 rules!2135))))

(assert (=> d!994376 (= (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 tokens!494)) lt!1174542)))

(declare-fun b!3457232 () Bool)

(declare-fun res!1394749 () Bool)

(assert (=> b!3457232 (=> (not res!1394749) (not e!2141839))))

(assert (=> b!3457232 (= res!1394749 (= (apply!8734 (_1!21560 lt!1174543) 0) (h!42565 tokens!494)))))

(declare-fun b!3457233 () Bool)

(assert (=> b!3457233 (= e!2141839 (isEmpty!21485 (_2!21560 lt!1174543)))))

(declare-fun b!3457234 () Bool)

(assert (=> b!3457234 (= e!2141840 (isEmpty!21485 (_2!21560 (lex!2349 thiss!18206 rules!2135 (print!2088 thiss!18206 (singletonSeq!2530 (h!42565 tokens!494)))))))))

(assert (= (and d!994376 res!1394748) b!3457232))

(assert (= (and b!3457232 res!1394749) b!3457233))

(assert (= (and d!994376 res!1394747) b!3457234))

(assert (=> d!994376 m!3856227))

(assert (=> d!994376 m!3856219))

(declare-fun m!3857643 () Bool)

(assert (=> d!994376 m!3857643))

(declare-fun m!3857645 () Bool)

(assert (=> d!994376 m!3857645))

(declare-fun m!3857647 () Bool)

(assert (=> d!994376 m!3857647))

(declare-fun m!3857649 () Bool)

(assert (=> d!994376 m!3857649))

(declare-fun m!3857651 () Bool)

(assert (=> d!994376 m!3857651))

(assert (=> d!994376 m!3856219))

(assert (=> d!994376 m!3856219))

(assert (=> d!994376 m!3857645))

(declare-fun m!3857653 () Bool)

(assert (=> b!3457232 m!3857653))

(declare-fun m!3857655 () Bool)

(assert (=> b!3457233 m!3857655))

(assert (=> b!3457234 m!3856219))

(assert (=> b!3457234 m!3856219))

(assert (=> b!3457234 m!3857645))

(assert (=> b!3457234 m!3857645))

(assert (=> b!3457234 m!3857647))

(declare-fun m!3857657 () Bool)

(assert (=> b!3457234 m!3857657))

(assert (=> b!3456436 d!994376))

(declare-fun d!994378 () Bool)

(declare-fun lt!1174544 () Bool)

(assert (=> d!994378 (= lt!1174544 (isEmpty!21487 (list!13517 (_2!21560 lt!1174213))))))

(assert (=> d!994378 (= lt!1174544 (isEmpty!21497 (c!591583 (_2!21560 lt!1174213))))))

(assert (=> d!994378 (= (isEmpty!21485 (_2!21560 lt!1174213)) lt!1174544)))

(declare-fun bs!560134 () Bool)

(assert (= bs!560134 d!994378))

(declare-fun m!3857659 () Bool)

(assert (=> bs!560134 m!3857659))

(assert (=> bs!560134 m!3857659))

(declare-fun m!3857661 () Bool)

(assert (=> bs!560134 m!3857661))

(declare-fun m!3857663 () Bool)

(assert (=> bs!560134 m!3857663))

(assert (=> b!3456437 d!994378))

(declare-fun b!3457247 () Bool)

(declare-fun e!2141843 () Bool)

(declare-fun tp!1077578 () Bool)

(assert (=> b!3457247 (= e!2141843 tp!1077578)))

(declare-fun b!3457248 () Bool)

(declare-fun tp!1077576 () Bool)

(declare-fun tp!1077579 () Bool)

(assert (=> b!3457248 (= e!2141843 (and tp!1077576 tp!1077579))))

(declare-fun b!3457245 () Bool)

(declare-fun tp_is_empty!17553 () Bool)

(assert (=> b!3457245 (= e!2141843 tp_is_empty!17553)))

(declare-fun b!3457246 () Bool)

(declare-fun tp!1077577 () Bool)

(declare-fun tp!1077575 () Bool)

(assert (=> b!3457246 (= e!2141843 (and tp!1077577 tp!1077575))))

(assert (=> b!3456424 (= tp!1077493 e!2141843)))

(assert (= (and b!3456424 ((_ is ElementMatch!10193) (regex!5434 (rule!8022 (h!42565 tokens!494))))) b!3457245))

(assert (= (and b!3456424 ((_ is Concat!15857) (regex!5434 (rule!8022 (h!42565 tokens!494))))) b!3457246))

(assert (= (and b!3456424 ((_ is Star!10193) (regex!5434 (rule!8022 (h!42565 tokens!494))))) b!3457247))

(assert (= (and b!3456424 ((_ is Union!10193) (regex!5434 (rule!8022 (h!42565 tokens!494))))) b!3457248))

(declare-fun b!3457251 () Bool)

(declare-fun e!2141844 () Bool)

(declare-fun tp!1077583 () Bool)

(assert (=> b!3457251 (= e!2141844 tp!1077583)))

(declare-fun b!3457252 () Bool)

(declare-fun tp!1077581 () Bool)

(declare-fun tp!1077584 () Bool)

(assert (=> b!3457252 (= e!2141844 (and tp!1077581 tp!1077584))))

(declare-fun b!3457249 () Bool)

(assert (=> b!3457249 (= e!2141844 tp_is_empty!17553)))

(declare-fun b!3457250 () Bool)

(declare-fun tp!1077582 () Bool)

(declare-fun tp!1077580 () Bool)

(assert (=> b!3457250 (= e!2141844 (and tp!1077582 tp!1077580))))

(assert (=> b!3456414 (= tp!1077486 e!2141844)))

(assert (= (and b!3456414 ((_ is ElementMatch!10193) (regex!5434 (rule!8022 separatorToken!241)))) b!3457249))

(assert (= (and b!3456414 ((_ is Concat!15857) (regex!5434 (rule!8022 separatorToken!241)))) b!3457250))

(assert (= (and b!3456414 ((_ is Star!10193) (regex!5434 (rule!8022 separatorToken!241)))) b!3457251))

(assert (= (and b!3456414 ((_ is Union!10193) (regex!5434 (rule!8022 separatorToken!241)))) b!3457252))

(declare-fun b!3457266 () Bool)

(declare-fun b_free!89813 () Bool)

(declare-fun b_next!90517 () Bool)

(assert (=> b!3457266 (= b_free!89813 (not b_next!90517))))

(declare-fun t!272484 () Bool)

(declare-fun tb!188263 () Bool)

(assert (=> (and b!3457266 (= (toValue!7658 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272484) tb!188263))

(declare-fun result!232220 () Bool)

(assert (= result!232220 result!232202))

(assert (=> d!994332 t!272484))

(declare-fun tp!1077597 () Bool)

(declare-fun b_and!243039 () Bool)

(assert (=> b!3457266 (= tp!1077597 (and (=> t!272484 result!232220) b_and!243039))))

(declare-fun b_free!89815 () Bool)

(declare-fun b_next!90519 () Bool)

(assert (=> b!3457266 (= b_free!89815 (not b_next!90519))))

(declare-fun t!272486 () Bool)

(declare-fun tb!188265 () Bool)

(assert (=> (and b!3457266 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272486) tb!188265))

(declare-fun result!232222 () Bool)

(assert (= result!232222 result!232210))

(assert (=> b!3457177 t!272486))

(assert (=> d!994350 t!272486))

(declare-fun tb!188267 () Bool)

(declare-fun t!272488 () Bool)

(assert (=> (and b!3457266 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241)))) t!272488) tb!188267))

(declare-fun result!232224 () Bool)

(assert (= result!232224 result!232144))

(assert (=> b!3456584 t!272488))

(declare-fun t!272490 () Bool)

(declare-fun tb!188269 () Bool)

(assert (=> (and b!3457266 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494)))))) t!272490) tb!188269))

(declare-fun result!232226 () Bool)

(assert (= result!232226 result!232152))

(assert (=> d!994138 t!272490))

(assert (=> d!994120 t!272488))

(declare-fun tp!1077595 () Bool)

(declare-fun b_and!243041 () Bool)

(assert (=> b!3457266 (= tp!1077595 (and (=> t!272490 result!232226) (=> t!272486 result!232222) (=> t!272488 result!232224) b_and!243041))))

(declare-fun e!2141858 () Bool)

(declare-fun tp!1077598 () Bool)

(declare-fun b!3457265 () Bool)

(declare-fun e!2141857 () Bool)

(assert (=> b!3457265 (= e!2141857 (and tp!1077598 (inv!50306 (tag!6040 (rule!8022 (h!42565 (t!272404 tokens!494))))) (inv!50309 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) e!2141858))))

(declare-fun e!2141862 () Bool)

(assert (=> b!3456434 (= tp!1077488 e!2141862)))

(declare-fun b!3457263 () Bool)

(declare-fun e!2141860 () Bool)

(declare-fun tp!1077596 () Bool)

(assert (=> b!3457263 (= e!2141862 (and (inv!50310 (h!42565 (t!272404 tokens!494))) e!2141860 tp!1077596))))

(declare-fun b!3457264 () Bool)

(declare-fun tp!1077599 () Bool)

(assert (=> b!3457264 (= e!2141860 (and (inv!21 (value!175329 (h!42565 (t!272404 tokens!494)))) e!2141857 tp!1077599))))

(assert (=> b!3457266 (= e!2141858 (and tp!1077597 tp!1077595))))

(assert (= b!3457265 b!3457266))

(assert (= b!3457264 b!3457265))

(assert (= b!3457263 b!3457264))

(assert (= (and b!3456434 ((_ is Cons!37145) (t!272404 tokens!494))) b!3457263))

(declare-fun m!3857665 () Bool)

(assert (=> b!3457265 m!3857665))

(declare-fun m!3857667 () Bool)

(assert (=> b!3457265 m!3857667))

(declare-fun m!3857669 () Bool)

(assert (=> b!3457263 m!3857669))

(declare-fun m!3857671 () Bool)

(assert (=> b!3457264 m!3857671))

(declare-fun b!3457271 () Bool)

(declare-fun e!2141865 () Bool)

(declare-fun tp!1077602 () Bool)

(assert (=> b!3457271 (= e!2141865 (and tp_is_empty!17553 tp!1077602))))

(assert (=> b!3456422 (= tp!1077492 e!2141865)))

(assert (= (and b!3456422 ((_ is Cons!37143) (originalCharacters!6148 (h!42565 tokens!494)))) b!3457271))

(declare-fun b!3457272 () Bool)

(declare-fun e!2141866 () Bool)

(declare-fun tp!1077603 () Bool)

(assert (=> b!3457272 (= e!2141866 (and tp_is_empty!17553 tp!1077603))))

(assert (=> b!3456420 (= tp!1077495 e!2141866)))

(assert (= (and b!3456420 ((_ is Cons!37143) (originalCharacters!6148 separatorToken!241))) b!3457272))

(declare-fun b!3457275 () Bool)

(declare-fun e!2141869 () Bool)

(assert (=> b!3457275 (= e!2141869 true)))

(declare-fun b!3457274 () Bool)

(declare-fun e!2141868 () Bool)

(assert (=> b!3457274 (= e!2141868 e!2141869)))

(declare-fun b!3457273 () Bool)

(declare-fun e!2141867 () Bool)

(assert (=> b!3457273 (= e!2141867 e!2141868)))

(assert (=> b!3456448 e!2141867))

(assert (= b!3457274 b!3457275))

(assert (= b!3457273 b!3457274))

(assert (= (and b!3456448 ((_ is Cons!37144) (t!272403 rules!2135))) b!3457273))

(assert (=> b!3457275 (< (dynLambda!15630 order!19761 (toValue!7658 (transformation!5434 (h!42564 (t!272403 rules!2135))))) (dynLambda!15631 order!19763 lambda!121737))))

(assert (=> b!3457275 (< (dynLambda!15632 order!19765 (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135))))) (dynLambda!15631 order!19763 lambda!121737))))

(declare-fun b!3457278 () Bool)

(declare-fun e!2141870 () Bool)

(declare-fun tp!1077607 () Bool)

(assert (=> b!3457278 (= e!2141870 tp!1077607)))

(declare-fun b!3457279 () Bool)

(declare-fun tp!1077605 () Bool)

(declare-fun tp!1077608 () Bool)

(assert (=> b!3457279 (= e!2141870 (and tp!1077605 tp!1077608))))

(declare-fun b!3457276 () Bool)

(assert (=> b!3457276 (= e!2141870 tp_is_empty!17553)))

(declare-fun b!3457277 () Bool)

(declare-fun tp!1077606 () Bool)

(declare-fun tp!1077604 () Bool)

(assert (=> b!3457277 (= e!2141870 (and tp!1077606 tp!1077604))))

(assert (=> b!3456439 (= tp!1077496 e!2141870)))

(assert (= (and b!3456439 ((_ is ElementMatch!10193) (regex!5434 (h!42564 rules!2135)))) b!3457276))

(assert (= (and b!3456439 ((_ is Concat!15857) (regex!5434 (h!42564 rules!2135)))) b!3457277))

(assert (= (and b!3456439 ((_ is Star!10193) (regex!5434 (h!42564 rules!2135)))) b!3457278))

(assert (= (and b!3456439 ((_ is Union!10193) (regex!5434 (h!42564 rules!2135)))) b!3457279))

(declare-fun b!3457290 () Bool)

(declare-fun b_free!89817 () Bool)

(declare-fun b_next!90521 () Bool)

(assert (=> b!3457290 (= b_free!89817 (not b_next!90521))))

(declare-fun tb!188271 () Bool)

(declare-fun t!272492 () Bool)

(assert (=> (and b!3457290 (= (toValue!7658 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272492) tb!188271))

(declare-fun result!232232 () Bool)

(assert (= result!232232 result!232202))

(assert (=> d!994332 t!272492))

(declare-fun b_and!243043 () Bool)

(declare-fun tp!1077620 () Bool)

(assert (=> b!3457290 (= tp!1077620 (and (=> t!272492 result!232232) b_and!243043))))

(declare-fun b_free!89819 () Bool)

(declare-fun b_next!90523 () Bool)

(assert (=> b!3457290 (= b_free!89819 (not b_next!90523))))

(declare-fun tb!188273 () Bool)

(declare-fun t!272494 () Bool)

(assert (=> (and b!3457290 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494))))) t!272494) tb!188273))

(declare-fun result!232234 () Bool)

(assert (= result!232234 result!232210))

(assert (=> b!3457177 t!272494))

(assert (=> d!994350 t!272494))

(declare-fun tb!188275 () Bool)

(declare-fun t!272496 () Bool)

(assert (=> (and b!3457290 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241)))) t!272496) tb!188275))

(declare-fun result!232236 () Bool)

(assert (= result!232236 result!232144))

(assert (=> b!3456584 t!272496))

(declare-fun tb!188277 () Bool)

(declare-fun t!272498 () Bool)

(assert (=> (and b!3457290 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494)))))) t!272498) tb!188277))

(declare-fun result!232238 () Bool)

(assert (= result!232238 result!232152))

(assert (=> d!994138 t!272498))

(assert (=> d!994120 t!272496))

(declare-fun b_and!243045 () Bool)

(declare-fun tp!1077618 () Bool)

(assert (=> b!3457290 (= tp!1077618 (and (=> t!272496 result!232236) (=> t!272498 result!232238) (=> t!272494 result!232234) b_and!243045))))

(declare-fun e!2141880 () Bool)

(assert (=> b!3457290 (= e!2141880 (and tp!1077620 tp!1077618))))

(declare-fun e!2141881 () Bool)

(declare-fun b!3457289 () Bool)

(declare-fun tp!1077617 () Bool)

(assert (=> b!3457289 (= e!2141881 (and tp!1077617 (inv!50306 (tag!6040 (h!42564 (t!272403 rules!2135)))) (inv!50309 (transformation!5434 (h!42564 (t!272403 rules!2135)))) e!2141880))))

(declare-fun b!3457288 () Bool)

(declare-fun e!2141882 () Bool)

(declare-fun tp!1077619 () Bool)

(assert (=> b!3457288 (= e!2141882 (and e!2141881 tp!1077619))))

(assert (=> b!3456426 (= tp!1077490 e!2141882)))

(assert (= b!3457289 b!3457290))

(assert (= b!3457288 b!3457289))

(assert (= (and b!3456426 ((_ is Cons!37144) (t!272403 rules!2135))) b!3457288))

(declare-fun m!3857673 () Bool)

(assert (=> b!3457289 m!3857673))

(declare-fun m!3857675 () Bool)

(assert (=> b!3457289 m!3857675))

(declare-fun b_lambda!99451 () Bool)

(assert (= b_lambda!99437 (or b!3456413 b_lambda!99451)))

(declare-fun bs!560135 () Bool)

(declare-fun d!994380 () Bool)

(assert (= bs!560135 (and d!994380 b!3456413)))

(assert (=> bs!560135 (= (dynLambda!15637 lambda!121737 (h!42565 (t!272404 tokens!494))) (rulesProduceIndividualToken!2515 thiss!18206 rules!2135 (h!42565 (t!272404 tokens!494))))))

(assert (=> bs!560135 m!3856307))

(assert (=> d!994326 d!994380))

(declare-fun b_lambda!99453 () Bool)

(assert (= b_lambda!99399 (or (and b!3457266 b_free!89815 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3456421 b_free!89803) (and b!3456428 b_free!89799 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3456410 b_free!89795 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3457290 b_free!89819 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) b_lambda!99453)))

(declare-fun b_lambda!99455 () Bool)

(assert (= b_lambda!99445 (or b!3456438 b_lambda!99455)))

(declare-fun bs!560136 () Bool)

(declare-fun d!994382 () Bool)

(assert (= bs!560136 (and d!994382 b!3456438)))

(assert (=> bs!560136 (= (dynLambda!15637 lambda!121736 (h!42565 (t!272404 tokens!494))) (not (isSeparator!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))))

(assert (=> d!994362 d!994382))

(declare-fun b_lambda!99457 () Bool)

(assert (= b_lambda!99441 (or (and b!3457290 b_free!89819 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456410 b_free!89795) (and b!3457266 b_free!89815 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456428 b_free!89799 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456421 b_free!89803 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) b_lambda!99457)))

(declare-fun b_lambda!99459 () Bool)

(assert (= b_lambda!99397 (or (and b!3457266 b_free!89815 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3456421 b_free!89803) (and b!3456428 b_free!89799 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3456410 b_free!89795 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) (and b!3457290 b_free!89819 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))))) b_lambda!99459)))

(declare-fun b_lambda!99461 () Bool)

(assert (= b_lambda!99447 (or b!3456438 b_lambda!99461)))

(declare-fun bs!560137 () Bool)

(declare-fun d!994384 () Bool)

(assert (= bs!560137 (and d!994384 b!3456438)))

(assert (=> bs!560137 (= (dynLambda!15637 lambda!121736 (h!42565 tokens!494)) (not (isSeparator!5434 (rule!8022 (h!42565 tokens!494)))))))

(assert (=> d!994364 d!994384))

(declare-fun b_lambda!99463 () Bool)

(assert (= b_lambda!99443 (or (and b!3457290 b_free!89819 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456410 b_free!89795) (and b!3457266 b_free!89815 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456428 b_free!89799 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456421 b_free!89803 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) b_lambda!99463)))

(declare-fun b_lambda!99465 () Bool)

(assert (= b_lambda!99439 (or (and b!3457266 b_free!89813 (= (toValue!7658 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456410 b_free!89793) (and b!3456421 b_free!89801 (= (toValue!7658 (transformation!5434 (rule!8022 separatorToken!241))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3456428 b_free!89797 (= (toValue!7658 (transformation!5434 (h!42564 rules!2135))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) (and b!3457290 b_free!89817 (= (toValue!7658 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toValue!7658 (transformation!5434 (rule!8022 (h!42565 tokens!494)))))) b_lambda!99465)))

(declare-fun b_lambda!99467 () Bool)

(assert (= b_lambda!99449 (or b!3456438 b_lambda!99467)))

(assert (=> b!3457216 d!994384))

(declare-fun b_lambda!99469 () Bool)

(assert (= b_lambda!99401 (or (and b!3456428 b_free!89799 (= (toChars!7517 (transformation!5434 (h!42564 rules!2135))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))) (and b!3457290 b_free!89819 (= (toChars!7517 (transformation!5434 (h!42564 (t!272403 rules!2135)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))) (and b!3456410 b_free!89795 (= (toChars!7517 (transformation!5434 (rule!8022 (h!42565 tokens!494)))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))) (and b!3456421 b_free!89803 (= (toChars!7517 (transformation!5434 (rule!8022 separatorToken!241))) (toChars!7517 (transformation!5434 (rule!8022 (h!42565 (t!272404 tokens!494))))))) (and b!3457266 b_free!89815) b_lambda!99469)))

(check-sat (not b!3456997) (not d!994148) (not d!994356) (not d!994360) (not d!994052) (not b_next!90501) (not b_next!90497) (not b!3456629) (not b!3456999) (not b!3456776) (not tb!188251) (not b!3457265) (not b!3456707) (not b!3456728) b_and!243045 (not d!994338) (not b!3456663) (not b!3457252) (not d!994138) (not b!3456628) (not bm!249340) (not b!3456579) (not b!3457251) (not d!994156) (not b!3456574) (not d!994054) b_and!243033 (not b!3457027) (not b!3456559) (not b!3456584) (not b_lambda!99469) (not b!3456558) (not d!994184) (not bm!249322) (not b!3457154) b_and!243039 (not b!3457155) (not b!3457037) (not d!994372) (not b!3456808) (not b!3457231) (not d!994284) (not b!3457279) (not d!994106) (not b!3457206) (not d!994328) (not b!3456744) (not b!3457210) (not d!994362) (not b!3457230) (not b!3457178) (not d!994180) (not b!3456656) (not b_lambda!99457) (not b!3456804) (not d!994136) (not b!3457180) (not b!3456995) (not b!3457040) (not b!3457289) (not b!3457174) (not d!994132) (not b!3456489) (not b!3456661) b_and!243037 (not b!3457234) (not b!3457228) (not b_next!90503) (not b!3456819) (not b!3457163) (not b_lambda!99467) (not d!994152) (not d!994348) (not b!3457202) (not bm!249344) (not b!3457198) (not b_lambda!99453) (not d!994142) (not d!994368) (not b!3457220) b_and!243023 (not d!994290) (not d!994112) (not d!994212) (not b!3457250) (not b!3456807) (not d!994118) (not b!3456638) (not b!3457041) (not bm!249337) (not b!3457233) (not b!3456775) (not b!3457160) (not b!3456693) (not b!3456743) (not bm!249342) (not d!994376) (not b!3457149) (not b!3457248) (not d!994144) (not d!994300) (not bm!249338) (not b!3457190) (not b!3456748) (not d!994122) (not b!3457024) (not d!994094) (not b!3457161) (not b_next!90517) (not b!3457227) (not b!3456737) (not d!994342) (not d!994298) (not b!3457026) (not b!3457263) (not d!994092) tp_is_empty!17553 (not b_next!90505) (not b!3457036) (not b!3456557) (not b!3456723) (not b!3457182) (not b_next!90521) (not d!994120) (not b_lambda!99465) (not b!3457201) (not b!3456739) (not b_next!90523) (not b!3457247) (not b!3456815) (not b!3456585) (not d!994150) (not d!994330) (not b!3456747) (not d!994366) (not b!3456711) (not b!3457177) (not tb!188211) (not b!3456576) (not b!3457204) (not b!3456572) (not b!3457191) (not d!994364) b_and!243043 (not b!3456641) (not b!3457151) (not b_next!90519) (not b!3457034) (not d!994322) (not d!994296) (not d!994146) (not d!994116) (not b!3457176) (not b_lambda!99455) (not d!994196) (not b_lambda!99451) (not b!3457028) (not b_next!90507) (not b!3456736) (not b!3457189) (not b!3456710) (not b!3456644) (not d!994134) (not d!994292) (not b!3456631) (not d!994110) (not d!994288) (not d!994086) (not b!3456733) b_and!243041 (not d!994346) (not d!994340) (not b!3456734) (not d!994336) (not d!994194) (not d!994344) (not tb!188205) (not d!994326) (not b!3457288) (not b!3457209) (not d!994098) (not bm!249335) b_and!243021 (not d!994324) (not b!3456746) (not d!994378) (not d!994350) (not b!3457184) (not b!3456740) (not b!3457179) (not b!3457278) (not b!3456625) (not b!3457183) (not b!3456632) (not b!3457232) (not d!994358) (not b!3456590) (not b!3457153) (not b!3457152) (not b!3456621) (not bs!560135) b_and!243035 (not b!3457273) (not b!3456730) (not b!3456577) (not b!3457277) (not b!3457217) (not d!994088) (not b!3456816) (not d!994104) (not b!3456998) (not b_next!90499) (not b_lambda!99463) (not b!3457271) (not d!994198) (not d!994096) (not b!3457150) (not b!3456754) (not b!3457224) (not d!994100) (not b!3456653) (not b!3456651) (not b!3457246) (not b!3457194) (not b!3457157) (not b!3456571) (not b!3456694) (not d!994166) (not b_lambda!99459) (not bm!249343) (not b!3457272) (not b_lambda!99461) (not bm!249345) (not b!3457264) (not b!3456812) (not b!3457205) (not b!3457156) (not d!994154) (not b!3456706) (not tb!188257) (not b!3457207) b_and!243025)
(check-sat b_and!243045 b_and!243033 b_and!243039 b_and!243037 (not b_next!90503) b_and!243023 (not b_next!90517) (not b_next!90505) b_and!243043 (not b_next!90519) (not b_next!90507) b_and!243041 b_and!243021 b_and!243035 (not b_next!90499) b_and!243025 (not b_next!90501) (not b_next!90497) (not b_next!90521) (not b_next!90523))
