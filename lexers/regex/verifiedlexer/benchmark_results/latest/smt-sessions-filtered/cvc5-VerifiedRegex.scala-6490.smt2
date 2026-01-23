; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!341152 () Bool)

(assert start!341152)

(declare-fun b!3649098 () Bool)

(declare-fun b_free!95921 () Bool)

(declare-fun b_next!96625 () Bool)

(assert (=> b!3649098 (= b_free!95921 (not b_next!96625))))

(declare-fun tp!1112580 () Bool)

(declare-fun b_and!269755 () Bool)

(assert (=> b!3649098 (= tp!1112580 b_and!269755)))

(declare-fun b_free!95923 () Bool)

(declare-fun b_next!96627 () Bool)

(assert (=> b!3649098 (= b_free!95923 (not b_next!96627))))

(declare-fun tp!1112574 () Bool)

(declare-fun b_and!269757 () Bool)

(assert (=> b!3649098 (= tp!1112574 b_and!269757)))

(declare-fun b!3649087 () Bool)

(declare-fun b_free!95925 () Bool)

(declare-fun b_next!96629 () Bool)

(assert (=> b!3649087 (= b_free!95925 (not b_next!96629))))

(declare-fun tp!1112583 () Bool)

(declare-fun b_and!269759 () Bool)

(assert (=> b!3649087 (= tp!1112583 b_and!269759)))

(declare-fun b_free!95927 () Bool)

(declare-fun b_next!96631 () Bool)

(assert (=> b!3649087 (= b_free!95927 (not b_next!96631))))

(declare-fun tp!1112582 () Bool)

(declare-fun b_and!269761 () Bool)

(assert (=> b!3649087 (= tp!1112582 b_and!269761)))

(declare-fun b!3649074 () Bool)

(declare-fun b_free!95929 () Bool)

(declare-fun b_next!96633 () Bool)

(assert (=> b!3649074 (= b_free!95929 (not b_next!96633))))

(declare-fun tp!1112576 () Bool)

(declare-fun b_and!269763 () Bool)

(assert (=> b!3649074 (= tp!1112576 b_and!269763)))

(declare-fun b_free!95931 () Bool)

(declare-fun b_next!96635 () Bool)

(assert (=> b!3649074 (= b_free!95931 (not b_next!96635))))

(declare-fun tp!1112570 () Bool)

(declare-fun b_and!269765 () Bool)

(assert (=> b!3649074 (= tp!1112570 b_and!269765)))

(declare-fun b!3649110 () Bool)

(declare-fun b_free!95933 () Bool)

(declare-fun b_next!96637 () Bool)

(assert (=> b!3649110 (= b_free!95933 (not b_next!96637))))

(declare-fun tp!1112572 () Bool)

(declare-fun b_and!269767 () Bool)

(assert (=> b!3649110 (= tp!1112572 b_and!269767)))

(declare-fun b_free!95935 () Bool)

(declare-fun b_next!96639 () Bool)

(assert (=> b!3649110 (= b_free!95935 (not b_next!96639))))

(declare-fun tp!1112581 () Bool)

(declare-fun b_and!269769 () Bool)

(assert (=> b!3649110 (= tp!1112581 b_and!269769)))

(declare-fun b!3649069 () Bool)

(declare-fun e!2259148 () Bool)

(declare-fun e!2259156 () Bool)

(assert (=> b!3649069 (= e!2259148 e!2259156)))

(declare-fun res!1480171 () Bool)

(assert (=> b!3649069 (=> res!1480171 e!2259156)))

(declare-datatypes ((C!21222 0))(
  ( (C!21223 (val!12659 Int)) )
))
(declare-datatypes ((List!38600 0))(
  ( (Nil!38476) (Cons!38476 (h!43896 C!21222) (t!297343 List!38600)) )
))
(declare-fun lt!1265400 () List!38600)

(declare-fun lt!1265404 () C!21222)

(declare-fun contains!7583 (List!38600 C!21222) Bool)

(assert (=> b!3649069 (= res!1480171 (contains!7583 lt!1265400 lt!1265404))))

(declare-fun suffix!1395 () List!38600)

(declare-fun head!7771 (List!38600) C!21222)

(assert (=> b!3649069 (= lt!1265404 (head!7771 suffix!1395))))

(declare-datatypes ((List!38601 0))(
  ( (Nil!38477) (Cons!38477 (h!43897 (_ BitVec 16)) (t!297344 List!38601)) )
))
(declare-datatypes ((TokenValue!5989 0))(
  ( (FloatLiteralValue!11978 (text!42368 List!38601)) (TokenValueExt!5988 (__x!24195 Int)) (Broken!29945 (value!184567 List!38601)) (Object!6112) (End!5989) (Def!5989) (Underscore!5989) (Match!5989) (Else!5989) (Error!5989) (Case!5989) (If!5989) (Extends!5989) (Abstract!5989) (Class!5989) (Val!5989) (DelimiterValue!11978 (del!6049 List!38601)) (KeywordValue!5995 (value!184568 List!38601)) (CommentValue!11978 (value!184569 List!38601)) (WhitespaceValue!11978 (value!184570 List!38601)) (IndentationValue!5989 (value!184571 List!38601)) (String!43280) (Int32!5989) (Broken!29946 (value!184572 List!38601)) (Boolean!5990) (Unit!55436) (OperatorValue!5992 (op!6049 List!38601)) (IdentifierValue!11978 (value!184573 List!38601)) (IdentifierValue!11979 (value!184574 List!38601)) (WhitespaceValue!11979 (value!184575 List!38601)) (True!11978) (False!11978) (Broken!29947 (value!184576 List!38601)) (Broken!29948 (value!184577 List!38601)) (True!11979) (RightBrace!5989) (RightBracket!5989) (Colon!5989) (Null!5989) (Comma!5989) (LeftBracket!5989) (False!11979) (LeftBrace!5989) (ImaginaryLiteralValue!5989 (text!42369 List!38601)) (StringLiteralValue!17967 (value!184578 List!38601)) (EOFValue!5989 (value!184579 List!38601)) (IdentValue!5989 (value!184580 List!38601)) (DelimiterValue!11979 (value!184581 List!38601)) (DedentValue!5989 (value!184582 List!38601)) (NewLineValue!5989 (value!184583 List!38601)) (IntegerValue!17967 (value!184584 (_ BitVec 32)) (text!42370 List!38601)) (IntegerValue!17968 (value!184585 Int) (text!42371 List!38601)) (Times!5989) (Or!5989) (Equal!5989) (Minus!5989) (Broken!29949 (value!184586 List!38601)) (And!5989) (Div!5989) (LessEqual!5989) (Mod!5989) (Concat!16507) (Not!5989) (Plus!5989) (SpaceValue!5989 (value!184587 List!38601)) (IntegerValue!17969 (value!184588 Int) (text!42372 List!38601)) (StringLiteralValue!17968 (text!42373 List!38601)) (FloatLiteralValue!11979 (text!42374 List!38601)) (BytesLiteralValue!5989 (value!184589 List!38601)) (CommentValue!11979 (value!184590 List!38601)) (StringLiteralValue!17969 (value!184591 List!38601)) (ErrorTokenValue!5989 (msg!6050 List!38601)) )
))
(declare-datatypes ((Regex!10518 0))(
  ( (ElementMatch!10518 (c!630743 C!21222)) (Concat!16508 (regOne!21548 Regex!10518) (regTwo!21548 Regex!10518)) (EmptyExpr!10518) (Star!10518 (reg!10847 Regex!10518)) (EmptyLang!10518) (Union!10518 (regOne!21549 Regex!10518) (regTwo!21549 Regex!10518)) )
))
(declare-datatypes ((String!43281 0))(
  ( (String!43282 (value!184592 String)) )
))
(declare-datatypes ((IArray!23517 0))(
  ( (IArray!23518 (innerList!11816 List!38600)) )
))
(declare-datatypes ((Conc!11756 0))(
  ( (Node!11756 (left!30038 Conc!11756) (right!30368 Conc!11756) (csize!23742 Int) (cheight!11967 Int)) (Leaf!18247 (xs!14958 IArray!23517) (csize!23743 Int)) (Empty!11756) )
))
(declare-datatypes ((BalanceConc!23126 0))(
  ( (BalanceConc!23127 (c!630744 Conc!11756)) )
))
(declare-datatypes ((TokenValueInjection!11406 0))(
  ( (TokenValueInjection!11407 (toValue!8051 Int) (toChars!7910 Int)) )
))
(declare-datatypes ((Rule!11318 0))(
  ( (Rule!11319 (regex!5759 Regex!10518) (tag!6521 String!43281) (isSeparator!5759 Bool) (transformation!5759 TokenValueInjection!11406)) )
))
(declare-fun rule!403 () Rule!11318)

(declare-fun usedCharacters!971 (Regex!10518) List!38600)

(assert (=> b!3649069 (= lt!1265400 (usedCharacters!971 (regex!5759 rule!403)))))

(declare-fun b!3649070 () Bool)

(assert (=> b!3649070 false))

(declare-datatypes ((Unit!55437 0))(
  ( (Unit!55438) )
))
(declare-fun lt!1265415 () Unit!55437)

(declare-fun call!263715 () Unit!55437)

(assert (=> b!3649070 (= lt!1265415 call!263715)))

(declare-fun call!263713 () Bool)

(assert (=> b!3649070 (not call!263713)))

(declare-datatypes ((List!38602 0))(
  ( (Nil!38478) (Cons!38478 (h!43898 Rule!11318) (t!297345 List!38602)) )
))
(declare-fun rules!3307 () List!38602)

(declare-fun lt!1265409 () Unit!55437)

(declare-fun lt!1265408 () C!21222)

(declare-datatypes ((Token!10884 0))(
  ( (Token!10885 (value!184593 TokenValue!5989) (rule!8555 Rule!11318) (size!29378 Int) (originalCharacters!6473 List!38600)) )
))
(declare-datatypes ((tuple2!38346 0))(
  ( (tuple2!38347 (_1!22307 Token!10884) (_2!22307 List!38600)) )
))
(declare-fun lt!1265424 () tuple2!38346)

(declare-datatypes ((LexerInterface!5348 0))(
  ( (LexerInterfaceExt!5345 (__x!24196 Int)) (Lexer!5346) )
))
(declare-fun thiss!23823 () LexerInterface!5348)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!405 (LexerInterface!5348 List!38602 List!38602 Rule!11318 Rule!11318 C!21222) Unit!55437)

(assert (=> b!3649070 (= lt!1265409 (lemmaNonSepRuleNotContainsCharContainedInASepRule!405 thiss!23823 rules!3307 rules!3307 (rule!8555 (_1!22307 lt!1265424)) rule!403 lt!1265408))))

(declare-fun e!2259158 () Unit!55437)

(declare-fun Unit!55439 () Unit!55437)

(assert (=> b!3649070 (= e!2259158 Unit!55439)))

(declare-fun b!3649071 () Bool)

(declare-fun res!1480175 () Bool)

(declare-fun e!2259144 () Bool)

(assert (=> b!3649071 (=> (not res!1480175) (not e!2259144))))

(declare-fun contains!7584 (List!38602 Rule!11318) Bool)

(assert (=> b!3649071 (= res!1480175 (contains!7584 rules!3307 rule!403))))

(declare-fun b!3649072 () Bool)

(declare-fun res!1480186 () Bool)

(declare-fun e!2259166 () Bool)

(assert (=> b!3649072 (=> (not res!1480186) (not e!2259166))))

(declare-fun lt!1265437 () tuple2!38346)

(declare-fun isEmpty!22798 (List!38600) Bool)

(assert (=> b!3649072 (= res!1480186 (isEmpty!22798 (_2!22307 lt!1265437)))))

(declare-fun b!3649073 () Bool)

(declare-fun res!1480185 () Bool)

(assert (=> b!3649073 (=> (not res!1480185) (not e!2259166))))

(declare-fun token!511 () Token!10884)

(assert (=> b!3649073 (= res!1480185 (= (rule!8555 token!511) rule!403))))

(declare-fun e!2259162 () Bool)

(assert (=> b!3649074 (= e!2259162 (and tp!1112576 tp!1112570))))

(declare-fun b!3649075 () Bool)

(declare-fun e!2259157 () Bool)

(declare-fun validRegex!4816 (Regex!10518) Bool)

(assert (=> b!3649075 (= e!2259157 (validRegex!4816 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(assert (=> b!3649075 (not (contains!7583 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265404))))

(declare-fun lt!1265407 () Unit!55437)

(declare-fun anOtherTypeRule!33 () Rule!11318)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!287 (LexerInterface!5348 List!38602 List!38602 Rule!11318 Rule!11318 C!21222) Unit!55437)

(assert (=> b!3649075 (= lt!1265407 (lemmaSepRuleNotContainsCharContainedInANonSepRule!287 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8555 (_1!22307 lt!1265424)) lt!1265404))))

(declare-fun bm!263708 () Bool)

(declare-fun call!263714 () List!38600)

(assert (=> bm!263708 (= call!263714 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649076 () Bool)

(declare-fun res!1480182 () Bool)

(assert (=> b!3649076 (=> res!1480182 e!2259156)))

(assert (=> b!3649076 (= res!1480182 (not (contains!7583 (usedCharacters!971 (regex!5759 anOtherTypeRule!33)) lt!1265404)))))

(declare-fun b!3649078 () Bool)

(declare-fun e!2259169 () Unit!55437)

(declare-fun Unit!55440 () Unit!55437)

(assert (=> b!3649078 (= e!2259169 Unit!55440)))

(declare-fun b!3649079 () Bool)

(declare-fun e!2259159 () Bool)

(declare-fun e!2259168 () Bool)

(assert (=> b!3649079 (= e!2259159 e!2259168)))

(declare-fun res!1480167 () Bool)

(assert (=> b!3649079 (=> (not res!1480167) (not e!2259168))))

(declare-fun lt!1265429 () Rule!11318)

(declare-fun matchR!5087 (Regex!10518 List!38600) Bool)

(declare-fun list!14257 (BalanceConc!23126) List!38600)

(declare-fun charsOf!3773 (Token!10884) BalanceConc!23126)

(assert (=> b!3649079 (= res!1480167 (matchR!5087 (regex!5759 lt!1265429) (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))))))

(declare-datatypes ((Option!8146 0))(
  ( (None!8145) (Some!8145 (v!38001 Rule!11318)) )
))
(declare-fun lt!1265419 () Option!8146)

(declare-fun get!12636 (Option!8146) Rule!11318)

(assert (=> b!3649079 (= lt!1265429 (get!12636 lt!1265419))))

(declare-fun bm!263709 () Bool)

(assert (=> bm!263709 (= call!263713 (contains!7583 call!263714 lt!1265408))))

(declare-fun b!3649080 () Bool)

(declare-fun e!2259170 () Unit!55437)

(assert (=> b!3649080 (= e!2259170 e!2259158)))

(declare-fun c!630740 () Bool)

(assert (=> b!3649080 (= c!630740 (not (isSeparator!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649081 () Bool)

(assert (=> b!3649081 false))

(declare-fun lt!1265420 () Unit!55437)

(assert (=> b!3649081 (= lt!1265420 call!263715)))

(assert (=> b!3649081 (not call!263713)))

(declare-fun lt!1265405 () Unit!55437)

(assert (=> b!3649081 (= lt!1265405 (lemmaSepRuleNotContainsCharContainedInANonSepRule!287 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8555 (_1!22307 lt!1265424)) lt!1265408))))

(declare-fun e!2259145 () Unit!55437)

(declare-fun Unit!55441 () Unit!55437)

(assert (=> b!3649081 (= e!2259145 Unit!55441)))

(declare-fun b!3649082 () Bool)

(assert (=> b!3649082 (= e!2259168 (= (rule!8555 (_1!22307 lt!1265424)) lt!1265429))))

(declare-fun b!3649083 () Bool)

(declare-fun Unit!55442 () Unit!55437)

(assert (=> b!3649083 (= e!2259158 Unit!55442)))

(declare-fun e!2259171 () Bool)

(declare-fun b!3649084 () Bool)

(declare-fun e!2259150 () Bool)

(declare-fun tp!1112577 () Bool)

(declare-fun inv!51923 (String!43281) Bool)

(declare-fun inv!51926 (TokenValueInjection!11406) Bool)

(assert (=> b!3649084 (= e!2259171 (and tp!1112577 (inv!51923 (tag!6521 rule!403)) (inv!51926 (transformation!5759 rule!403)) e!2259150))))

(declare-fun b!3649085 () Bool)

(declare-fun e!2259167 () Bool)

(declare-fun e!2259164 () Bool)

(declare-fun tp!1112575 () Bool)

(assert (=> b!3649085 (= e!2259167 (and e!2259164 tp!1112575))))

(declare-fun b!3649086 () Bool)

(declare-fun e!2259155 () Bool)

(declare-fun e!2259163 () Bool)

(assert (=> b!3649086 (= e!2259155 e!2259163)))

(declare-fun res!1480174 () Bool)

(assert (=> b!3649086 (=> res!1480174 e!2259163)))

(declare-datatypes ((Option!8147 0))(
  ( (None!8146) (Some!8146 (v!38002 tuple2!38346)) )
))
(declare-fun lt!1265413 () Option!8147)

(declare-fun lt!1265411 () List!38600)

(declare-fun lt!1265412 () TokenValue!5989)

(declare-fun lt!1265417 () Int)

(assert (=> b!3649086 (= res!1480174 (not (= lt!1265413 (Some!8146 (tuple2!38347 (Token!10885 lt!1265412 (rule!8555 (_1!22307 lt!1265424)) lt!1265417 lt!1265411) (_2!22307 lt!1265424))))))))

(declare-fun lt!1265422 () BalanceConc!23126)

(declare-fun size!29379 (BalanceConc!23126) Int)

(assert (=> b!3649086 (= lt!1265417 (size!29379 lt!1265422))))

(declare-fun apply!9261 (TokenValueInjection!11406 BalanceConc!23126) TokenValue!5989)

(assert (=> b!3649086 (= lt!1265412 (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422))))

(declare-fun lt!1265430 () Unit!55437)

(declare-fun lemmaCharactersSize!804 (Token!10884) Unit!55437)

(assert (=> b!3649086 (= lt!1265430 (lemmaCharactersSize!804 (_1!22307 lt!1265424)))))

(declare-fun lt!1265403 () Unit!55437)

(declare-fun lemmaEqSameImage!942 (TokenValueInjection!11406 BalanceConc!23126 BalanceConc!23126) Unit!55437)

(declare-fun seqFromList!4308 (List!38600) BalanceConc!23126)

(assert (=> b!3649086 (= lt!1265403 (lemmaEqSameImage!942 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422 (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424)))))))

(declare-fun lt!1265426 () Unit!55437)

(declare-fun lemmaSemiInverse!1508 (TokenValueInjection!11406 BalanceConc!23126) Unit!55437)

(assert (=> b!3649086 (= lt!1265426 (lemmaSemiInverse!1508 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422))))

(assert (=> b!3649087 (= e!2259150 (and tp!1112583 tp!1112582))))

(declare-fun b!3649088 () Bool)

(declare-fun res!1480166 () Bool)

(assert (=> b!3649088 (=> res!1480166 e!2259148)))

(assert (=> b!3649088 (= res!1480166 (isEmpty!22798 suffix!1395))))

(declare-fun b!3649089 () Bool)

(declare-fun res!1480177 () Bool)

(assert (=> b!3649089 (=> (not res!1480177) (not e!2259144))))

(assert (=> b!3649089 (= res!1480177 (contains!7584 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3649090 () Bool)

(declare-fun e!2259172 () Bool)

(assert (=> b!3649090 (= e!2259163 e!2259172)))

(declare-fun res!1480173 () Bool)

(assert (=> b!3649090 (=> res!1480173 e!2259172)))

(declare-fun lt!1265432 () List!38600)

(declare-fun lt!1265431 () Option!8147)

(assert (=> b!3649090 (= res!1480173 (or (not (= lt!1265432 (_2!22307 lt!1265424))) (not (= lt!1265431 (Some!8146 (tuple2!38347 (_1!22307 lt!1265424) lt!1265432))))))))

(assert (=> b!3649090 (= (_2!22307 lt!1265424) lt!1265432)))

(declare-fun lt!1265399 () List!38600)

(declare-fun lt!1265435 () Unit!55437)

(declare-fun lemmaSamePrefixThenSameSuffix!1449 (List!38600 List!38600 List!38600 List!38600 List!38600) Unit!55437)

(assert (=> b!3649090 (= lt!1265435 (lemmaSamePrefixThenSameSuffix!1449 lt!1265411 (_2!22307 lt!1265424) lt!1265411 lt!1265432 lt!1265399))))

(declare-fun getSuffix!1675 (List!38600 List!38600) List!38600)

(assert (=> b!3649090 (= lt!1265432 (getSuffix!1675 lt!1265399 lt!1265411))))

(declare-fun lt!1265423 () TokenValue!5989)

(declare-fun lt!1265427 () Int)

(assert (=> b!3649090 (= lt!1265431 (Some!8146 (tuple2!38347 (Token!10885 lt!1265423 (rule!8555 (_1!22307 lt!1265424)) lt!1265427 lt!1265411) (_2!22307 lt!1265424))))))

(declare-fun maxPrefixOneRule!2020 (LexerInterface!5348 Rule!11318 List!38600) Option!8147)

(assert (=> b!3649090 (= lt!1265431 (maxPrefixOneRule!2020 thiss!23823 (rule!8555 (_1!22307 lt!1265424)) lt!1265399))))

(declare-fun size!29380 (List!38600) Int)

(assert (=> b!3649090 (= lt!1265427 (size!29380 lt!1265411))))

(assert (=> b!3649090 (= lt!1265423 (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) (seqFromList!4308 lt!1265411)))))

(declare-fun lt!1265428 () Unit!55437)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1076 (LexerInterface!5348 List!38602 List!38600 List!38600 List!38600 Rule!11318) Unit!55437)

(assert (=> b!3649090 (= lt!1265428 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1076 thiss!23823 rules!3307 lt!1265411 lt!1265399 (_2!22307 lt!1265424) (rule!8555 (_1!22307 lt!1265424))))))

(declare-fun tp!1112579 () Bool)

(declare-fun e!2259153 () Bool)

(declare-fun e!2259174 () Bool)

(declare-fun b!3649091 () Bool)

(assert (=> b!3649091 (= e!2259153 (and tp!1112579 (inv!51923 (tag!6521 anOtherTypeRule!33)) (inv!51926 (transformation!5759 anOtherTypeRule!33)) e!2259174))))

(declare-fun b!3649092 () Bool)

(declare-fun e!2259152 () Bool)

(declare-fun tp_is_empty!18119 () Bool)

(declare-fun tp!1112573 () Bool)

(assert (=> b!3649092 (= e!2259152 (and tp_is_empty!18119 tp!1112573))))

(declare-fun tp!1112569 () Bool)

(declare-fun b!3649093 () Bool)

(assert (=> b!3649093 (= e!2259164 (and tp!1112569 (inv!51923 (tag!6521 (h!43898 rules!3307))) (inv!51926 (transformation!5759 (h!43898 rules!3307))) e!2259162))))

(declare-fun b!3649094 () Bool)

(assert (=> b!3649094 (= e!2259170 e!2259145)))

(declare-fun c!630742 () Bool)

(assert (=> b!3649094 (= c!630742 (isSeparator!5759 (rule!8555 (_1!22307 lt!1265424))))))

(declare-fun b!3649095 () Bool)

(declare-fun Unit!55443 () Unit!55437)

(assert (=> b!3649095 (= e!2259169 Unit!55443)))

(declare-fun lt!1265406 () List!38600)

(declare-fun lt!1265433 () Unit!55437)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!707 (Regex!10518 List!38600 C!21222) Unit!55437)

(assert (=> b!3649095 (= lt!1265433 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!707 (regex!5759 rule!403) lt!1265406 lt!1265408))))

(assert (=> b!3649095 false))

(declare-fun bm!263710 () Bool)

(assert (=> bm!263710 (= call!263715 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!707 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411 lt!1265408))))

(declare-fun b!3649096 () Bool)

(declare-fun e!2259143 () Bool)

(declare-fun tp!1112571 () Bool)

(declare-fun e!2259160 () Bool)

(assert (=> b!3649096 (= e!2259143 (and tp!1112571 (inv!51923 (tag!6521 (rule!8555 token!511))) (inv!51926 (transformation!5759 (rule!8555 token!511))) e!2259160))))

(declare-fun b!3649097 () Bool)

(declare-fun Unit!55444 () Unit!55437)

(assert (=> b!3649097 (= e!2259145 Unit!55444)))

(assert (=> b!3649098 (= e!2259160 (and tp!1112580 tp!1112574))))

(declare-fun b!3649099 () Bool)

(declare-fun res!1480178 () Bool)

(assert (=> b!3649099 (=> (not res!1480178) (not e!2259144))))

(declare-fun rulesInvariant!4745 (LexerInterface!5348 List!38602) Bool)

(assert (=> b!3649099 (= res!1480178 (rulesInvariant!4745 thiss!23823 rules!3307))))

(declare-fun b!3649100 () Bool)

(declare-fun res!1480179 () Bool)

(assert (=> b!3649100 (=> res!1480179 e!2259156)))

(declare-fun sepAndNonSepRulesDisjointChars!1927 (List!38602 List!38602) Bool)

(assert (=> b!3649100 (= res!1480179 (not (sepAndNonSepRulesDisjointChars!1927 rules!3307 rules!3307)))))

(declare-fun b!3649101 () Bool)

(declare-fun res!1480172 () Bool)

(assert (=> b!3649101 (=> res!1480172 e!2259155)))

(assert (=> b!3649101 (= res!1480172 (not (matchR!5087 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411)))))

(declare-fun b!3649077 () Bool)

(declare-fun res!1480181 () Bool)

(assert (=> b!3649077 (=> (not res!1480181) (not e!2259144))))

(declare-fun isEmpty!22799 (List!38602) Bool)

(assert (=> b!3649077 (= res!1480181 (not (isEmpty!22799 rules!3307)))))

(declare-fun res!1480180 () Bool)

(assert (=> start!341152 (=> (not res!1480180) (not e!2259144))))

(assert (=> start!341152 (= res!1480180 (is-Lexer!5346 thiss!23823))))

(assert (=> start!341152 e!2259144))

(assert (=> start!341152 e!2259167))

(assert (=> start!341152 e!2259152))

(assert (=> start!341152 true))

(declare-fun e!2259165 () Bool)

(declare-fun inv!51927 (Token!10884) Bool)

(assert (=> start!341152 (and (inv!51927 token!511) e!2259165)))

(assert (=> start!341152 e!2259171))

(assert (=> start!341152 e!2259153))

(declare-fun b!3649102 () Bool)

(declare-fun e!2259161 () Bool)

(assert (=> b!3649102 (= e!2259161 e!2259157)))

(declare-fun res!1480169 () Bool)

(assert (=> b!3649102 (=> res!1480169 e!2259157)))

(assert (=> b!3649102 (= res!1480169 (not (isSeparator!5759 rule!403)))))

(assert (=> b!3649102 (contains!7583 lt!1265411 lt!1265404)))

(declare-fun lt!1265401 () Unit!55437)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!67 (List!38600 List!38600 List!38600 List!38600) Unit!55437)

(assert (=> b!3649102 (= lt!1265401 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!67 lt!1265406 suffix!1395 lt!1265411 lt!1265399))))

(declare-fun b!3649103 () Bool)

(assert (=> b!3649103 (= e!2259166 (not e!2259148))))

(declare-fun res!1480183 () Bool)

(assert (=> b!3649103 (=> res!1480183 e!2259148)))

(assert (=> b!3649103 (= res!1480183 (not (matchR!5087 (regex!5759 rule!403) lt!1265406)))))

(declare-fun ruleValid!2023 (LexerInterface!5348 Rule!11318) Bool)

(assert (=> b!3649103 (ruleValid!2023 thiss!23823 rule!403)))

(declare-fun lt!1265410 () Unit!55437)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1177 (LexerInterface!5348 Rule!11318 List!38602) Unit!55437)

(assert (=> b!3649103 (= lt!1265410 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1177 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3649104 () Bool)

(declare-fun e!2259146 () Bool)

(assert (=> b!3649104 (= e!2259146 e!2259166)))

(declare-fun res!1480165 () Bool)

(assert (=> b!3649104 (=> (not res!1480165) (not e!2259166))))

(assert (=> b!3649104 (= res!1480165 (= (_1!22307 lt!1265437) token!511))))

(declare-fun lt!1265421 () Option!8147)

(declare-fun get!12637 (Option!8147) tuple2!38346)

(assert (=> b!3649104 (= lt!1265437 (get!12637 lt!1265421))))

(declare-fun b!3649105 () Bool)

(assert (=> b!3649105 (= e!2259156 e!2259155)))

(declare-fun res!1480184 () Bool)

(assert (=> b!3649105 (=> res!1480184 e!2259155)))

(declare-fun isPrefix!3122 (List!38600 List!38600) Bool)

(assert (=> b!3649105 (= res!1480184 (not (isPrefix!3122 lt!1265411 lt!1265399)))))

(declare-fun ++!9575 (List!38600 List!38600) List!38600)

(assert (=> b!3649105 (isPrefix!3122 lt!1265411 (++!9575 lt!1265411 (_2!22307 lt!1265424)))))

(declare-fun lt!1265436 () Unit!55437)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2041 (List!38600 List!38600) Unit!55437)

(assert (=> b!3649105 (= lt!1265436 (lemmaConcatTwoListThenFirstIsPrefix!2041 lt!1265411 (_2!22307 lt!1265424)))))

(assert (=> b!3649105 (= lt!1265411 (list!14257 lt!1265422))))

(assert (=> b!3649105 (= lt!1265422 (charsOf!3773 (_1!22307 lt!1265424)))))

(assert (=> b!3649105 e!2259159))

(declare-fun res!1480176 () Bool)

(assert (=> b!3649105 (=> (not res!1480176) (not e!2259159))))

(declare-fun isDefined!6378 (Option!8146) Bool)

(assert (=> b!3649105 (= res!1480176 (isDefined!6378 lt!1265419))))

(declare-fun getRuleFromTag!1363 (LexerInterface!5348 List!38602 String!43281) Option!8146)

(assert (=> b!3649105 (= lt!1265419 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun lt!1265434 () Unit!55437)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1363 (LexerInterface!5348 List!38602 List!38600 Token!10884) Unit!55437)

(assert (=> b!3649105 (= lt!1265434 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1363 thiss!23823 rules!3307 lt!1265399 (_1!22307 lt!1265424)))))

(assert (=> b!3649105 (= lt!1265424 (get!12637 lt!1265413))))

(declare-fun lt!1265416 () Unit!55437)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1026 (LexerInterface!5348 List!38602 List!38600 List!38600) Unit!55437)

(assert (=> b!3649105 (= lt!1265416 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1026 thiss!23823 rules!3307 lt!1265406 suffix!1395))))

(declare-fun maxPrefix!2882 (LexerInterface!5348 List!38602 List!38600) Option!8147)

(assert (=> b!3649105 (= lt!1265413 (maxPrefix!2882 thiss!23823 rules!3307 lt!1265399))))

(assert (=> b!3649105 (isPrefix!3122 lt!1265406 lt!1265399)))

(declare-fun lt!1265402 () Unit!55437)

(assert (=> b!3649105 (= lt!1265402 (lemmaConcatTwoListThenFirstIsPrefix!2041 lt!1265406 suffix!1395))))

(assert (=> b!3649105 (= lt!1265399 (++!9575 lt!1265406 suffix!1395))))

(declare-fun b!3649106 () Bool)

(declare-fun res!1480168 () Bool)

(assert (=> b!3649106 (=> (not res!1480168) (not e!2259144))))

(assert (=> b!3649106 (= res!1480168 (not (= (isSeparator!5759 anOtherTypeRule!33) (isSeparator!5759 rule!403))))))

(declare-fun b!3649107 () Bool)

(assert (=> b!3649107 (= e!2259144 e!2259146)))

(declare-fun res!1480170 () Bool)

(assert (=> b!3649107 (=> (not res!1480170) (not e!2259146))))

(declare-fun isDefined!6379 (Option!8147) Bool)

(assert (=> b!3649107 (= res!1480170 (isDefined!6379 lt!1265421))))

(assert (=> b!3649107 (= lt!1265421 (maxPrefix!2882 thiss!23823 rules!3307 lt!1265406))))

(declare-fun lt!1265414 () BalanceConc!23126)

(assert (=> b!3649107 (= lt!1265406 (list!14257 lt!1265414))))

(assert (=> b!3649107 (= lt!1265414 (charsOf!3773 token!511))))

(declare-fun b!3649108 () Bool)

(assert (=> b!3649108 (= e!2259172 e!2259161)))

(declare-fun res!1480187 () Bool)

(assert (=> b!3649108 (=> res!1480187 e!2259161)))

(assert (=> b!3649108 (= res!1480187 (<= lt!1265417 (size!29379 lt!1265414)))))

(declare-fun lt!1265418 () Unit!55437)

(assert (=> b!3649108 (= lt!1265418 e!2259170)))

(declare-fun c!630739 () Bool)

(assert (=> b!3649108 (= c!630739 (isSeparator!5759 rule!403))))

(declare-fun lt!1265425 () Unit!55437)

(assert (=> b!3649108 (= lt!1265425 e!2259169)))

(declare-fun c!630741 () Bool)

(assert (=> b!3649108 (= c!630741 (not (contains!7583 lt!1265400 lt!1265408)))))

(assert (=> b!3649108 (= lt!1265408 (head!7771 lt!1265411))))

(declare-fun b!3649109 () Bool)

(declare-fun tp!1112578 () Bool)

(declare-fun inv!21 (TokenValue!5989) Bool)

(assert (=> b!3649109 (= e!2259165 (and (inv!21 (value!184593 token!511)) e!2259143 tp!1112578))))

(assert (=> b!3649110 (= e!2259174 (and tp!1112572 tp!1112581))))

(assert (= (and start!341152 res!1480180) b!3649077))

(assert (= (and b!3649077 res!1480181) b!3649099))

(assert (= (and b!3649099 res!1480178) b!3649071))

(assert (= (and b!3649071 res!1480175) b!3649089))

(assert (= (and b!3649089 res!1480177) b!3649106))

(assert (= (and b!3649106 res!1480168) b!3649107))

(assert (= (and b!3649107 res!1480170) b!3649104))

(assert (= (and b!3649104 res!1480165) b!3649072))

(assert (= (and b!3649072 res!1480186) b!3649073))

(assert (= (and b!3649073 res!1480185) b!3649103))

(assert (= (and b!3649103 (not res!1480183)) b!3649088))

(assert (= (and b!3649088 (not res!1480166)) b!3649069))

(assert (= (and b!3649069 (not res!1480171)) b!3649076))

(assert (= (and b!3649076 (not res!1480182)) b!3649100))

(assert (= (and b!3649100 (not res!1480179)) b!3649105))

(assert (= (and b!3649105 res!1480176) b!3649079))

(assert (= (and b!3649079 res!1480167) b!3649082))

(assert (= (and b!3649105 (not res!1480184)) b!3649101))

(assert (= (and b!3649101 (not res!1480172)) b!3649086))

(assert (= (and b!3649086 (not res!1480174)) b!3649090))

(assert (= (and b!3649090 (not res!1480173)) b!3649108))

(assert (= (and b!3649108 c!630741) b!3649095))

(assert (= (and b!3649108 (not c!630741)) b!3649078))

(assert (= (and b!3649108 c!630739) b!3649080))

(assert (= (and b!3649108 (not c!630739)) b!3649094))

(assert (= (and b!3649080 c!630740) b!3649070))

(assert (= (and b!3649080 (not c!630740)) b!3649083))

(assert (= (and b!3649094 c!630742) b!3649081))

(assert (= (and b!3649094 (not c!630742)) b!3649097))

(assert (= (or b!3649070 b!3649081) bm!263710))

(assert (= (or b!3649070 b!3649081) bm!263708))

(assert (= (or b!3649070 b!3649081) bm!263709))

(assert (= (and b!3649108 (not res!1480187)) b!3649102))

(assert (= (and b!3649102 (not res!1480169)) b!3649075))

(assert (= b!3649093 b!3649074))

(assert (= b!3649085 b!3649093))

(assert (= (and start!341152 (is-Cons!38478 rules!3307)) b!3649085))

(assert (= (and start!341152 (is-Cons!38476 suffix!1395)) b!3649092))

(assert (= b!3649096 b!3649098))

(assert (= b!3649109 b!3649096))

(assert (= start!341152 b!3649109))

(assert (= b!3649084 b!3649087))

(assert (= start!341152 b!3649084))

(assert (= b!3649091 b!3649110))

(assert (= start!341152 b!3649091))

(declare-fun m!4153349 () Bool)

(assert (=> b!3649089 m!4153349))

(declare-fun m!4153351 () Bool)

(assert (=> b!3649075 m!4153351))

(declare-fun m!4153353 () Bool)

(assert (=> b!3649075 m!4153353))

(assert (=> b!3649075 m!4153353))

(declare-fun m!4153355 () Bool)

(assert (=> b!3649075 m!4153355))

(declare-fun m!4153357 () Bool)

(assert (=> b!3649075 m!4153357))

(declare-fun m!4153359 () Bool)

(assert (=> b!3649084 m!4153359))

(declare-fun m!4153361 () Bool)

(assert (=> b!3649084 m!4153361))

(declare-fun m!4153363 () Bool)

(assert (=> b!3649101 m!4153363))

(declare-fun m!4153365 () Bool)

(assert (=> b!3649070 m!4153365))

(declare-fun m!4153367 () Bool)

(assert (=> b!3649096 m!4153367))

(declare-fun m!4153369 () Bool)

(assert (=> b!3649096 m!4153369))

(declare-fun m!4153371 () Bool)

(assert (=> b!3649072 m!4153371))

(declare-fun m!4153373 () Bool)

(assert (=> b!3649091 m!4153373))

(declare-fun m!4153375 () Bool)

(assert (=> b!3649091 m!4153375))

(declare-fun m!4153377 () Bool)

(assert (=> b!3649099 m!4153377))

(declare-fun m!4153379 () Bool)

(assert (=> b!3649108 m!4153379))

(declare-fun m!4153381 () Bool)

(assert (=> b!3649108 m!4153381))

(declare-fun m!4153383 () Bool)

(assert (=> b!3649108 m!4153383))

(declare-fun m!4153385 () Bool)

(assert (=> b!3649081 m!4153385))

(declare-fun m!4153387 () Bool)

(assert (=> b!3649109 m!4153387))

(declare-fun m!4153389 () Bool)

(assert (=> b!3649102 m!4153389))

(declare-fun m!4153391 () Bool)

(assert (=> b!3649102 m!4153391))

(declare-fun m!4153393 () Bool)

(assert (=> start!341152 m!4153393))

(declare-fun m!4153395 () Bool)

(assert (=> b!3649090 m!4153395))

(declare-fun m!4153397 () Bool)

(assert (=> b!3649090 m!4153397))

(declare-fun m!4153399 () Bool)

(assert (=> b!3649090 m!4153399))

(declare-fun m!4153401 () Bool)

(assert (=> b!3649090 m!4153401))

(assert (=> b!3649090 m!4153395))

(declare-fun m!4153403 () Bool)

(assert (=> b!3649090 m!4153403))

(declare-fun m!4153405 () Bool)

(assert (=> b!3649090 m!4153405))

(declare-fun m!4153407 () Bool)

(assert (=> b!3649090 m!4153407))

(declare-fun m!4153409 () Bool)

(assert (=> b!3649076 m!4153409))

(assert (=> b!3649076 m!4153409))

(declare-fun m!4153411 () Bool)

(assert (=> b!3649076 m!4153411))

(declare-fun m!4153413 () Bool)

(assert (=> b!3649095 m!4153413))

(declare-fun m!4153415 () Bool)

(assert (=> b!3649077 m!4153415))

(declare-fun m!4153417 () Bool)

(assert (=> bm!263710 m!4153417))

(declare-fun m!4153419 () Bool)

(assert (=> b!3649100 m!4153419))

(declare-fun m!4153421 () Bool)

(assert (=> b!3649105 m!4153421))

(declare-fun m!4153423 () Bool)

(assert (=> b!3649105 m!4153423))

(declare-fun m!4153425 () Bool)

(assert (=> b!3649105 m!4153425))

(declare-fun m!4153427 () Bool)

(assert (=> b!3649105 m!4153427))

(declare-fun m!4153429 () Bool)

(assert (=> b!3649105 m!4153429))

(declare-fun m!4153431 () Bool)

(assert (=> b!3649105 m!4153431))

(declare-fun m!4153433 () Bool)

(assert (=> b!3649105 m!4153433))

(declare-fun m!4153435 () Bool)

(assert (=> b!3649105 m!4153435))

(declare-fun m!4153437 () Bool)

(assert (=> b!3649105 m!4153437))

(declare-fun m!4153439 () Bool)

(assert (=> b!3649105 m!4153439))

(declare-fun m!4153441 () Bool)

(assert (=> b!3649105 m!4153441))

(declare-fun m!4153443 () Bool)

(assert (=> b!3649105 m!4153443))

(assert (=> b!3649105 m!4153423))

(declare-fun m!4153445 () Bool)

(assert (=> b!3649105 m!4153445))

(declare-fun m!4153447 () Bool)

(assert (=> b!3649105 m!4153447))

(declare-fun m!4153449 () Bool)

(assert (=> b!3649105 m!4153449))

(declare-fun m!4153451 () Bool)

(assert (=> b!3649088 m!4153451))

(declare-fun m!4153453 () Bool)

(assert (=> b!3649071 m!4153453))

(declare-fun m!4153455 () Bool)

(assert (=> b!3649104 m!4153455))

(declare-fun m!4153457 () Bool)

(assert (=> b!3649086 m!4153457))

(declare-fun m!4153459 () Bool)

(assert (=> b!3649086 m!4153459))

(declare-fun m!4153461 () Bool)

(assert (=> b!3649086 m!4153461))

(declare-fun m!4153463 () Bool)

(assert (=> b!3649086 m!4153463))

(assert (=> b!3649086 m!4153463))

(declare-fun m!4153465 () Bool)

(assert (=> b!3649086 m!4153465))

(declare-fun m!4153467 () Bool)

(assert (=> b!3649086 m!4153467))

(declare-fun m!4153469 () Bool)

(assert (=> b!3649069 m!4153469))

(declare-fun m!4153471 () Bool)

(assert (=> b!3649069 m!4153471))

(declare-fun m!4153473 () Bool)

(assert (=> b!3649069 m!4153473))

(declare-fun m!4153475 () Bool)

(assert (=> bm!263709 m!4153475))

(declare-fun m!4153477 () Bool)

(assert (=> b!3649107 m!4153477))

(declare-fun m!4153479 () Bool)

(assert (=> b!3649107 m!4153479))

(declare-fun m!4153481 () Bool)

(assert (=> b!3649107 m!4153481))

(declare-fun m!4153483 () Bool)

(assert (=> b!3649107 m!4153483))

(declare-fun m!4153485 () Bool)

(assert (=> b!3649103 m!4153485))

(declare-fun m!4153487 () Bool)

(assert (=> b!3649103 m!4153487))

(declare-fun m!4153489 () Bool)

(assert (=> b!3649103 m!4153489))

(assert (=> b!3649079 m!4153443))

(assert (=> b!3649079 m!4153443))

(declare-fun m!4153491 () Bool)

(assert (=> b!3649079 m!4153491))

(assert (=> b!3649079 m!4153491))

(declare-fun m!4153493 () Bool)

(assert (=> b!3649079 m!4153493))

(declare-fun m!4153495 () Bool)

(assert (=> b!3649079 m!4153495))

(assert (=> bm!263708 m!4153353))

(declare-fun m!4153497 () Bool)

(assert (=> b!3649093 m!4153497))

(declare-fun m!4153499 () Bool)

(assert (=> b!3649093 m!4153499))

(push 1)

(assert (not b!3649076))

(assert (not b_next!96627))

(assert (not b!3649091))

(assert (not b!3649089))

(assert (not b!3649085))

(assert (not b!3649081))

(assert b_and!269765)

(assert (not b_next!96629))

(assert (not b!3649070))

(assert b_and!269769)

(assert (not bm!263710))

(assert (not b!3649107))

(assert (not bm!263708))

(assert (not b_next!96635))

(assert b_and!269761)

(assert (not b!3649084))

(assert (not start!341152))

(assert tp_is_empty!18119)

(assert (not b!3649100))

(assert (not b!3649095))

(assert b_and!269767)

(assert (not b!3649071))

(assert (not b!3649092))

(assert b_and!269759)

(assert (not b!3649093))

(assert (not b!3649099))

(assert (not b!3649108))

(assert (not b!3649090))

(assert (not b!3649105))

(assert b_and!269763)

(assert (not b_next!96633))

(assert (not b!3649079))

(assert (not b!3649086))

(assert (not b_next!96639))

(assert (not b_next!96625))

(assert (not b!3649069))

(assert (not bm!263709))

(assert b_and!269757)

(assert (not b!3649075))

(assert (not b!3649096))

(assert (not b!3649109))

(assert (not b!3649088))

(assert (not b!3649102))

(assert (not b_next!96631))

(assert (not b!3649101))

(assert b_and!269755)

(assert (not b!3649072))

(assert (not b!3649103))

(assert (not b_next!96637))

(assert (not b!3649104))

(assert (not b!3649077))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!96627))

(assert b_and!269769)

(assert b_and!269767)

(assert b_and!269759)

(assert b_and!269763)

(assert (not b_next!96633))

(assert b_and!269765)

(assert (not b_next!96629))

(assert b_and!269757)

(assert (not b_next!96631))

(assert b_and!269755)

(assert (not b_next!96637))

(assert (not b_next!96635))

(assert b_and!269761)

(assert (not b_next!96639))

(assert (not b_next!96625))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1072313 () Bool)

(declare-fun lt!1265557 () Bool)

(declare-fun content!5548 (List!38602) (Set Rule!11318))

(assert (=> d!1072313 (= lt!1265557 (set.member anOtherTypeRule!33 (content!5548 rules!3307)))))

(declare-fun e!2259275 () Bool)

(assert (=> d!1072313 (= lt!1265557 e!2259275)))

(declare-fun res!1480270 () Bool)

(assert (=> d!1072313 (=> (not res!1480270) (not e!2259275))))

(assert (=> d!1072313 (= res!1480270 (is-Cons!38478 rules!3307))))

(assert (=> d!1072313 (= (contains!7584 rules!3307 anOtherTypeRule!33) lt!1265557)))

(declare-fun b!3649241 () Bool)

(declare-fun e!2259276 () Bool)

(assert (=> b!3649241 (= e!2259275 e!2259276)))

(declare-fun res!1480271 () Bool)

(assert (=> b!3649241 (=> res!1480271 e!2259276)))

(assert (=> b!3649241 (= res!1480271 (= (h!43898 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3649242 () Bool)

(assert (=> b!3649242 (= e!2259276 (contains!7584 (t!297345 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1072313 res!1480270) b!3649241))

(assert (= (and b!3649241 (not res!1480271)) b!3649242))

(declare-fun m!4153653 () Bool)

(assert (=> d!1072313 m!4153653))

(declare-fun m!4153655 () Bool)

(assert (=> d!1072313 m!4153655))

(declare-fun m!4153657 () Bool)

(assert (=> b!3649242 m!4153657))

(assert (=> b!3649089 d!1072313))

(declare-fun d!1072315 () Bool)

(assert (=> d!1072315 (not (contains!7583 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265408))))

(declare-fun lt!1265560 () Unit!55437)

(declare-fun choose!21501 (LexerInterface!5348 List!38602 List!38602 Rule!11318 Rule!11318 C!21222) Unit!55437)

(assert (=> d!1072315 (= lt!1265560 (choose!21501 thiss!23823 rules!3307 rules!3307 (rule!8555 (_1!22307 lt!1265424)) rule!403 lt!1265408))))

(assert (=> d!1072315 (rulesInvariant!4745 thiss!23823 rules!3307)))

(assert (=> d!1072315 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!405 thiss!23823 rules!3307 rules!3307 (rule!8555 (_1!22307 lt!1265424)) rule!403 lt!1265408) lt!1265560)))

(declare-fun bs!572188 () Bool)

(assert (= bs!572188 d!1072315))

(assert (=> bs!572188 m!4153353))

(assert (=> bs!572188 m!4153353))

(declare-fun m!4153659 () Bool)

(assert (=> bs!572188 m!4153659))

(declare-fun m!4153661 () Bool)

(assert (=> bs!572188 m!4153661))

(assert (=> bs!572188 m!4153377))

(assert (=> b!3649070 d!1072315))

(declare-fun d!1072317 () Bool)

(declare-fun lt!1265563 () List!38600)

(assert (=> d!1072317 (= (++!9575 lt!1265411 lt!1265563) lt!1265399)))

(declare-fun e!2259279 () List!38600)

(assert (=> d!1072317 (= lt!1265563 e!2259279)))

(declare-fun c!630763 () Bool)

(assert (=> d!1072317 (= c!630763 (is-Cons!38476 lt!1265411))))

(assert (=> d!1072317 (>= (size!29380 lt!1265399) (size!29380 lt!1265411))))

(assert (=> d!1072317 (= (getSuffix!1675 lt!1265399 lt!1265411) lt!1265563)))

(declare-fun b!3649247 () Bool)

(declare-fun tail!5652 (List!38600) List!38600)

(assert (=> b!3649247 (= e!2259279 (getSuffix!1675 (tail!5652 lt!1265399) (t!297343 lt!1265411)))))

(declare-fun b!3649248 () Bool)

(assert (=> b!3649248 (= e!2259279 lt!1265399)))

(assert (= (and d!1072317 c!630763) b!3649247))

(assert (= (and d!1072317 (not c!630763)) b!3649248))

(declare-fun m!4153663 () Bool)

(assert (=> d!1072317 m!4153663))

(declare-fun m!4153665 () Bool)

(assert (=> d!1072317 m!4153665))

(assert (=> d!1072317 m!4153401))

(declare-fun m!4153667 () Bool)

(assert (=> b!3649247 m!4153667))

(assert (=> b!3649247 m!4153667))

(declare-fun m!4153669 () Bool)

(assert (=> b!3649247 m!4153669))

(assert (=> b!3649090 d!1072317))

(declare-fun d!1072319 () Bool)

(declare-fun fromListB!1990 (List!38600) BalanceConc!23126)

(assert (=> d!1072319 (= (seqFromList!4308 lt!1265411) (fromListB!1990 lt!1265411))))

(declare-fun bs!572189 () Bool)

(assert (= bs!572189 d!1072319))

(declare-fun m!4153671 () Bool)

(assert (=> bs!572189 m!4153671))

(assert (=> b!3649090 d!1072319))

(declare-fun d!1072321 () Bool)

(assert (=> d!1072321 (= (_2!22307 lt!1265424) lt!1265432)))

(declare-fun lt!1265566 () Unit!55437)

(declare-fun choose!21502 (List!38600 List!38600 List!38600 List!38600 List!38600) Unit!55437)

(assert (=> d!1072321 (= lt!1265566 (choose!21502 lt!1265411 (_2!22307 lt!1265424) lt!1265411 lt!1265432 lt!1265399))))

(assert (=> d!1072321 (isPrefix!3122 lt!1265411 lt!1265399)))

(assert (=> d!1072321 (= (lemmaSamePrefixThenSameSuffix!1449 lt!1265411 (_2!22307 lt!1265424) lt!1265411 lt!1265432 lt!1265399) lt!1265566)))

(declare-fun bs!572190 () Bool)

(assert (= bs!572190 d!1072321))

(declare-fun m!4153673 () Bool)

(assert (=> bs!572190 m!4153673))

(assert (=> bs!572190 m!4153445))

(assert (=> b!3649090 d!1072321))

(declare-fun b!3649273 () Bool)

(declare-fun e!2259295 () Bool)

(declare-fun lt!1265582 () Option!8147)

(assert (=> b!3649273 (= e!2259295 (= (size!29378 (_1!22307 (get!12637 lt!1265582))) (size!29380 (originalCharacters!6473 (_1!22307 (get!12637 lt!1265582))))))))

(declare-fun b!3649274 () Bool)

(declare-fun e!2259293 () Bool)

(assert (=> b!3649274 (= e!2259293 e!2259295)))

(declare-fun res!1480296 () Bool)

(assert (=> b!3649274 (=> (not res!1480296) (not e!2259295))))

(assert (=> b!3649274 (= res!1480296 (matchR!5087 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265582))))))))

(declare-fun b!3649275 () Bool)

(declare-fun e!2259294 () Option!8147)

(declare-datatypes ((tuple2!38350 0))(
  ( (tuple2!38351 (_1!22309 List!38600) (_2!22309 List!38600)) )
))
(declare-fun lt!1265583 () tuple2!38350)

(assert (=> b!3649275 (= e!2259294 (Some!8146 (tuple2!38347 (Token!10885 (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) (seqFromList!4308 (_1!22309 lt!1265583))) (rule!8555 (_1!22307 lt!1265424)) (size!29379 (seqFromList!4308 (_1!22309 lt!1265583))) (_1!22309 lt!1265583)) (_2!22309 lt!1265583))))))

(declare-fun lt!1265581 () Unit!55437)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1023 (Regex!10518 List!38600) Unit!55437)

(assert (=> b!3649275 (= lt!1265581 (longestMatchIsAcceptedByMatchOrIsEmpty!1023 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265399))))

(declare-fun res!1480291 () Bool)

(declare-fun findLongestMatchInner!1050 (Regex!10518 List!38600 Int List!38600 List!38600 Int) tuple2!38350)

(assert (=> b!3649275 (= res!1480291 (isEmpty!22798 (_1!22309 (findLongestMatchInner!1050 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) Nil!38476 (size!29380 Nil!38476) lt!1265399 lt!1265399 (size!29380 lt!1265399)))))))

(declare-fun e!2259292 () Bool)

(assert (=> b!3649275 (=> res!1480291 e!2259292)))

(assert (=> b!3649275 e!2259292))

(declare-fun lt!1265580 () Unit!55437)

(assert (=> b!3649275 (= lt!1265580 lt!1265581)))

(declare-fun lt!1265579 () Unit!55437)

(assert (=> b!3649275 (= lt!1265579 (lemmaSemiInverse!1508 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) (seqFromList!4308 (_1!22309 lt!1265583))))))

(declare-fun b!3649276 () Bool)

(assert (=> b!3649276 (= e!2259294 None!8146)))

(declare-fun b!3649277 () Bool)

(declare-fun res!1480293 () Bool)

(assert (=> b!3649277 (=> (not res!1480293) (not e!2259295))))

(assert (=> b!3649277 (= res!1480293 (= (++!9575 (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265582)))) (_2!22307 (get!12637 lt!1265582))) lt!1265399))))

(declare-fun b!3649278 () Bool)

(declare-fun res!1480297 () Bool)

(assert (=> b!3649278 (=> (not res!1480297) (not e!2259295))))

(assert (=> b!3649278 (= res!1480297 (< (size!29380 (_2!22307 (get!12637 lt!1265582))) (size!29380 lt!1265399)))))

(declare-fun b!3649279 () Bool)

(declare-fun res!1480292 () Bool)

(assert (=> b!3649279 (=> (not res!1480292) (not e!2259295))))

(assert (=> b!3649279 (= res!1480292 (= (value!184593 (_1!22307 (get!12637 lt!1265582))) (apply!9261 (transformation!5759 (rule!8555 (_1!22307 (get!12637 lt!1265582)))) (seqFromList!4308 (originalCharacters!6473 (_1!22307 (get!12637 lt!1265582)))))))))

(declare-fun d!1072323 () Bool)

(assert (=> d!1072323 e!2259293))

(declare-fun res!1480298 () Bool)

(assert (=> d!1072323 (=> res!1480298 e!2259293)))

(declare-fun isEmpty!22802 (Option!8147) Bool)

(assert (=> d!1072323 (= res!1480298 (isEmpty!22802 lt!1265582))))

(assert (=> d!1072323 (= lt!1265582 e!2259294)))

(declare-fun c!630768 () Bool)

(assert (=> d!1072323 (= c!630768 (isEmpty!22798 (_1!22309 lt!1265583)))))

(declare-fun findLongestMatch!965 (Regex!10518 List!38600) tuple2!38350)

(assert (=> d!1072323 (= lt!1265583 (findLongestMatch!965 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265399))))

(assert (=> d!1072323 (ruleValid!2023 thiss!23823 (rule!8555 (_1!22307 lt!1265424)))))

(assert (=> d!1072323 (= (maxPrefixOneRule!2020 thiss!23823 (rule!8555 (_1!22307 lt!1265424)) lt!1265399) lt!1265582)))

(declare-fun b!3649280 () Bool)

(assert (=> b!3649280 (= e!2259292 (matchR!5087 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) (_1!22309 (findLongestMatchInner!1050 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) Nil!38476 (size!29380 Nil!38476) lt!1265399 lt!1265399 (size!29380 lt!1265399)))))))

(declare-fun b!3649281 () Bool)

(declare-fun res!1480290 () Bool)

(assert (=> b!3649281 (=> (not res!1480290) (not e!2259295))))

(assert (=> b!3649281 (= res!1480290 (= (rule!8555 (_1!22307 (get!12637 lt!1265582))) (rule!8555 (_1!22307 lt!1265424))))))

(assert (= (and d!1072323 c!630768) b!3649276))

(assert (= (and d!1072323 (not c!630768)) b!3649275))

(assert (= (and b!3649275 (not res!1480291)) b!3649280))

(assert (= (and d!1072323 (not res!1480298)) b!3649274))

(assert (= (and b!3649274 res!1480296) b!3649277))

(assert (= (and b!3649277 res!1480293) b!3649278))

(assert (= (and b!3649278 res!1480297) b!3649281))

(assert (= (and b!3649281 res!1480290) b!3649279))

(assert (= (and b!3649279 res!1480292) b!3649273))

(declare-fun m!4153675 () Bool)

(assert (=> b!3649275 m!4153675))

(declare-fun m!4153677 () Bool)

(assert (=> b!3649275 m!4153677))

(declare-fun m!4153679 () Bool)

(assert (=> b!3649275 m!4153679))

(assert (=> b!3649275 m!4153665))

(declare-fun m!4153681 () Bool)

(assert (=> b!3649275 m!4153681))

(declare-fun m!4153683 () Bool)

(assert (=> b!3649275 m!4153683))

(assert (=> b!3649275 m!4153665))

(declare-fun m!4153685 () Bool)

(assert (=> b!3649275 m!4153685))

(assert (=> b!3649275 m!4153675))

(declare-fun m!4153687 () Bool)

(assert (=> b!3649275 m!4153687))

(assert (=> b!3649275 m!4153683))

(assert (=> b!3649275 m!4153675))

(assert (=> b!3649275 m!4153675))

(declare-fun m!4153689 () Bool)

(assert (=> b!3649275 m!4153689))

(declare-fun m!4153691 () Bool)

(assert (=> b!3649279 m!4153691))

(declare-fun m!4153693 () Bool)

(assert (=> b!3649279 m!4153693))

(assert (=> b!3649279 m!4153693))

(declare-fun m!4153695 () Bool)

(assert (=> b!3649279 m!4153695))

(declare-fun m!4153697 () Bool)

(assert (=> d!1072323 m!4153697))

(declare-fun m!4153699 () Bool)

(assert (=> d!1072323 m!4153699))

(declare-fun m!4153701 () Bool)

(assert (=> d!1072323 m!4153701))

(declare-fun m!4153703 () Bool)

(assert (=> d!1072323 m!4153703))

(assert (=> b!3649277 m!4153691))

(declare-fun m!4153705 () Bool)

(assert (=> b!3649277 m!4153705))

(assert (=> b!3649277 m!4153705))

(declare-fun m!4153707 () Bool)

(assert (=> b!3649277 m!4153707))

(assert (=> b!3649277 m!4153707))

(declare-fun m!4153709 () Bool)

(assert (=> b!3649277 m!4153709))

(assert (=> b!3649281 m!4153691))

(assert (=> b!3649273 m!4153691))

(declare-fun m!4153711 () Bool)

(assert (=> b!3649273 m!4153711))

(assert (=> b!3649274 m!4153691))

(assert (=> b!3649274 m!4153705))

(assert (=> b!3649274 m!4153705))

(assert (=> b!3649274 m!4153707))

(assert (=> b!3649274 m!4153707))

(declare-fun m!4153713 () Bool)

(assert (=> b!3649274 m!4153713))

(assert (=> b!3649278 m!4153691))

(declare-fun m!4153715 () Bool)

(assert (=> b!3649278 m!4153715))

(assert (=> b!3649278 m!4153665))

(assert (=> b!3649280 m!4153683))

(assert (=> b!3649280 m!4153665))

(assert (=> b!3649280 m!4153683))

(assert (=> b!3649280 m!4153665))

(assert (=> b!3649280 m!4153685))

(declare-fun m!4153717 () Bool)

(assert (=> b!3649280 m!4153717))

(assert (=> b!3649090 d!1072323))

(declare-fun d!1072327 () Bool)

(declare-fun dynLambda!16770 (Int BalanceConc!23126) TokenValue!5989)

(assert (=> d!1072327 (= (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) (seqFromList!4308 lt!1265411)) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (seqFromList!4308 lt!1265411)))))

(declare-fun b_lambda!108207 () Bool)

(assert (=> (not b_lambda!108207) (not d!1072327)))

(declare-fun t!297350 () Bool)

(declare-fun tb!210501 () Bool)

(assert (=> (and b!3649098 (= (toValue!8051 (transformation!5759 (rule!8555 token!511))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297350) tb!210501))

(declare-fun result!256342 () Bool)

(assert (=> tb!210501 (= result!256342 (inv!21 (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (seqFromList!4308 lt!1265411))))))

(declare-fun m!4153727 () Bool)

(assert (=> tb!210501 m!4153727))

(assert (=> d!1072327 t!297350))

(declare-fun b_and!269787 () Bool)

(assert (= b_and!269755 (and (=> t!297350 result!256342) b_and!269787)))

(declare-fun tb!210503 () Bool)

(declare-fun t!297352 () Bool)

(assert (=> (and b!3649087 (= (toValue!8051 (transformation!5759 rule!403)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297352) tb!210503))

(declare-fun result!256346 () Bool)

(assert (= result!256346 result!256342))

(assert (=> d!1072327 t!297352))

(declare-fun b_and!269789 () Bool)

(assert (= b_and!269759 (and (=> t!297352 result!256346) b_and!269789)))

(declare-fun t!297354 () Bool)

(declare-fun tb!210505 () Bool)

(assert (=> (and b!3649074 (= (toValue!8051 (transformation!5759 (h!43898 rules!3307))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297354) tb!210505))

(declare-fun result!256348 () Bool)

(assert (= result!256348 result!256342))

(assert (=> d!1072327 t!297354))

(declare-fun b_and!269791 () Bool)

(assert (= b_and!269763 (and (=> t!297354 result!256348) b_and!269791)))

(declare-fun t!297356 () Bool)

(declare-fun tb!210507 () Bool)

(assert (=> (and b!3649110 (= (toValue!8051 (transformation!5759 anOtherTypeRule!33)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297356) tb!210507))

(declare-fun result!256350 () Bool)

(assert (= result!256350 result!256342))

(assert (=> d!1072327 t!297356))

(declare-fun b_and!269793 () Bool)

(assert (= b_and!269767 (and (=> t!297356 result!256350) b_and!269793)))

(assert (=> d!1072327 m!4153395))

(declare-fun m!4153733 () Bool)

(assert (=> d!1072327 m!4153733))

(assert (=> b!3649090 d!1072327))

(declare-fun d!1072331 () Bool)

(assert (=> d!1072331 (= (maxPrefixOneRule!2020 thiss!23823 (rule!8555 (_1!22307 lt!1265424)) lt!1265399) (Some!8146 (tuple2!38347 (Token!10885 (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) (seqFromList!4308 lt!1265411)) (rule!8555 (_1!22307 lt!1265424)) (size!29380 lt!1265411) lt!1265411) (_2!22307 lt!1265424))))))

(declare-fun lt!1265587 () Unit!55437)

(declare-fun choose!21503 (LexerInterface!5348 List!38602 List!38600 List!38600 List!38600 Rule!11318) Unit!55437)

(assert (=> d!1072331 (= lt!1265587 (choose!21503 thiss!23823 rules!3307 lt!1265411 lt!1265399 (_2!22307 lt!1265424) (rule!8555 (_1!22307 lt!1265424))))))

(assert (=> d!1072331 (not (isEmpty!22799 rules!3307))))

(assert (=> d!1072331 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1076 thiss!23823 rules!3307 lt!1265411 lt!1265399 (_2!22307 lt!1265424) (rule!8555 (_1!22307 lt!1265424))) lt!1265587)))

(declare-fun bs!572191 () Bool)

(assert (= bs!572191 d!1072331))

(assert (=> bs!572191 m!4153395))

(assert (=> bs!572191 m!4153397))

(assert (=> bs!572191 m!4153403))

(assert (=> bs!572191 m!4153415))

(assert (=> bs!572191 m!4153401))

(declare-fun m!4153735 () Bool)

(assert (=> bs!572191 m!4153735))

(assert (=> bs!572191 m!4153395))

(assert (=> b!3649090 d!1072331))

(declare-fun d!1072333 () Bool)

(declare-fun lt!1265590 () Int)

(assert (=> d!1072333 (>= lt!1265590 0)))

(declare-fun e!2259303 () Int)

(assert (=> d!1072333 (= lt!1265590 e!2259303)))

(declare-fun c!630772 () Bool)

(assert (=> d!1072333 (= c!630772 (is-Nil!38476 lt!1265411))))

(assert (=> d!1072333 (= (size!29380 lt!1265411) lt!1265590)))

(declare-fun b!3649294 () Bool)

(assert (=> b!3649294 (= e!2259303 0)))

(declare-fun b!3649295 () Bool)

(assert (=> b!3649295 (= e!2259303 (+ 1 (size!29380 (t!297343 lt!1265411))))))

(assert (= (and d!1072333 c!630772) b!3649294))

(assert (= (and d!1072333 (not c!630772)) b!3649295))

(declare-fun m!4153737 () Bool)

(assert (=> b!3649295 m!4153737))

(assert (=> b!3649090 d!1072333))

(declare-fun d!1072335 () Bool)

(declare-fun lt!1265591 () Bool)

(assert (=> d!1072335 (= lt!1265591 (set.member rule!403 (content!5548 rules!3307)))))

(declare-fun e!2259304 () Bool)

(assert (=> d!1072335 (= lt!1265591 e!2259304)))

(declare-fun res!1480301 () Bool)

(assert (=> d!1072335 (=> (not res!1480301) (not e!2259304))))

(assert (=> d!1072335 (= res!1480301 (is-Cons!38478 rules!3307))))

(assert (=> d!1072335 (= (contains!7584 rules!3307 rule!403) lt!1265591)))

(declare-fun b!3649296 () Bool)

(declare-fun e!2259305 () Bool)

(assert (=> b!3649296 (= e!2259304 e!2259305)))

(declare-fun res!1480302 () Bool)

(assert (=> b!3649296 (=> res!1480302 e!2259305)))

(assert (=> b!3649296 (= res!1480302 (= (h!43898 rules!3307) rule!403))))

(declare-fun b!3649297 () Bool)

(assert (=> b!3649297 (= e!2259305 (contains!7584 (t!297345 rules!3307) rule!403))))

(assert (= (and d!1072335 res!1480301) b!3649296))

(assert (= (and b!3649296 (not res!1480302)) b!3649297))

(assert (=> d!1072335 m!4153653))

(declare-fun m!4153739 () Bool)

(assert (=> d!1072335 m!4153739))

(declare-fun m!4153741 () Bool)

(assert (=> b!3649297 m!4153741))

(assert (=> b!3649071 d!1072335))

(declare-fun d!1072337 () Bool)

(assert (=> d!1072337 (= (inv!51923 (tag!6521 anOtherTypeRule!33)) (= (mod (str.len (value!184592 (tag!6521 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3649091 d!1072337))

(declare-fun d!1072339 () Bool)

(declare-fun res!1480305 () Bool)

(declare-fun e!2259308 () Bool)

(assert (=> d!1072339 (=> (not res!1480305) (not e!2259308))))

(declare-fun semiInverseModEq!2454 (Int Int) Bool)

(assert (=> d!1072339 (= res!1480305 (semiInverseModEq!2454 (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toValue!8051 (transformation!5759 anOtherTypeRule!33))))))

(assert (=> d!1072339 (= (inv!51926 (transformation!5759 anOtherTypeRule!33)) e!2259308)))

(declare-fun b!3649300 () Bool)

(declare-fun equivClasses!2353 (Int Int) Bool)

(assert (=> b!3649300 (= e!2259308 (equivClasses!2353 (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toValue!8051 (transformation!5759 anOtherTypeRule!33))))))

(assert (= (and d!1072339 res!1480305) b!3649300))

(declare-fun m!4153743 () Bool)

(assert (=> d!1072339 m!4153743))

(declare-fun m!4153745 () Bool)

(assert (=> b!3649300 m!4153745))

(assert (=> b!3649091 d!1072339))

(declare-fun d!1072341 () Bool)

(assert (=> d!1072341 (= (isEmpty!22798 (_2!22307 lt!1265437)) (is-Nil!38476 (_2!22307 lt!1265437)))))

(assert (=> b!3649072 d!1072341))

(declare-fun d!1072343 () Bool)

(assert (=> d!1072343 (= (inv!51923 (tag!6521 (h!43898 rules!3307))) (= (mod (str.len (value!184592 (tag!6521 (h!43898 rules!3307)))) 2) 0))))

(assert (=> b!3649093 d!1072343))

(declare-fun d!1072345 () Bool)

(declare-fun res!1480306 () Bool)

(declare-fun e!2259309 () Bool)

(assert (=> d!1072345 (=> (not res!1480306) (not e!2259309))))

(assert (=> d!1072345 (= res!1480306 (semiInverseModEq!2454 (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toValue!8051 (transformation!5759 (h!43898 rules!3307)))))))

(assert (=> d!1072345 (= (inv!51926 (transformation!5759 (h!43898 rules!3307))) e!2259309)))

(declare-fun b!3649301 () Bool)

(assert (=> b!3649301 (= e!2259309 (equivClasses!2353 (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toValue!8051 (transformation!5759 (h!43898 rules!3307)))))))

(assert (= (and d!1072345 res!1480306) b!3649301))

(declare-fun m!4153747 () Bool)

(assert (=> d!1072345 m!4153747))

(declare-fun m!4153749 () Bool)

(assert (=> b!3649301 m!4153749))

(assert (=> b!3649093 d!1072345))

(declare-fun d!1072347 () Bool)

(assert (=> d!1072347 (= (get!12637 lt!1265421) (v!38002 lt!1265421))))

(assert (=> b!3649104 d!1072347))

(declare-fun d!1072349 () Bool)

(assert (=> d!1072349 (= (inv!51923 (tag!6521 rule!403)) (= (mod (str.len (value!184592 (tag!6521 rule!403))) 2) 0))))

(assert (=> b!3649084 d!1072349))

(declare-fun d!1072351 () Bool)

(declare-fun res!1480307 () Bool)

(declare-fun e!2259310 () Bool)

(assert (=> d!1072351 (=> (not res!1480307) (not e!2259310))))

(assert (=> d!1072351 (= res!1480307 (semiInverseModEq!2454 (toChars!7910 (transformation!5759 rule!403)) (toValue!8051 (transformation!5759 rule!403))))))

(assert (=> d!1072351 (= (inv!51926 (transformation!5759 rule!403)) e!2259310)))

(declare-fun b!3649302 () Bool)

(assert (=> b!3649302 (= e!2259310 (equivClasses!2353 (toChars!7910 (transformation!5759 rule!403)) (toValue!8051 (transformation!5759 rule!403))))))

(assert (= (and d!1072351 res!1480307) b!3649302))

(declare-fun m!4153751 () Bool)

(assert (=> d!1072351 m!4153751))

(declare-fun m!4153753 () Bool)

(assert (=> b!3649302 m!4153753))

(assert (=> b!3649084 d!1072351))

(declare-fun d!1072353 () Bool)

(declare-fun e!2259318 () Bool)

(assert (=> d!1072353 e!2259318))

(declare-fun res!1480318 () Bool)

(assert (=> d!1072353 (=> res!1480318 e!2259318)))

(declare-fun lt!1265594 () Bool)

(assert (=> d!1072353 (= res!1480318 (not lt!1265594))))

(declare-fun e!2259317 () Bool)

(assert (=> d!1072353 (= lt!1265594 e!2259317)))

(declare-fun res!1480317 () Bool)

(assert (=> d!1072353 (=> res!1480317 e!2259317)))

(assert (=> d!1072353 (= res!1480317 (is-Nil!38476 lt!1265406))))

(assert (=> d!1072353 (= (isPrefix!3122 lt!1265406 lt!1265399) lt!1265594)))

(declare-fun b!3649311 () Bool)

(declare-fun e!2259319 () Bool)

(assert (=> b!3649311 (= e!2259317 e!2259319)))

(declare-fun res!1480319 () Bool)

(assert (=> b!3649311 (=> (not res!1480319) (not e!2259319))))

(assert (=> b!3649311 (= res!1480319 (not (is-Nil!38476 lt!1265399)))))

(declare-fun b!3649314 () Bool)

(assert (=> b!3649314 (= e!2259318 (>= (size!29380 lt!1265399) (size!29380 lt!1265406)))))

(declare-fun b!3649312 () Bool)

(declare-fun res!1480316 () Bool)

(assert (=> b!3649312 (=> (not res!1480316) (not e!2259319))))

(assert (=> b!3649312 (= res!1480316 (= (head!7771 lt!1265406) (head!7771 lt!1265399)))))

(declare-fun b!3649313 () Bool)

(assert (=> b!3649313 (= e!2259319 (isPrefix!3122 (tail!5652 lt!1265406) (tail!5652 lt!1265399)))))

(assert (= (and d!1072353 (not res!1480317)) b!3649311))

(assert (= (and b!3649311 res!1480319) b!3649312))

(assert (= (and b!3649312 res!1480316) b!3649313))

(assert (= (and d!1072353 (not res!1480318)) b!3649314))

(assert (=> b!3649314 m!4153665))

(declare-fun m!4153755 () Bool)

(assert (=> b!3649314 m!4153755))

(declare-fun m!4153757 () Bool)

(assert (=> b!3649312 m!4153757))

(declare-fun m!4153759 () Bool)

(assert (=> b!3649312 m!4153759))

(declare-fun m!4153761 () Bool)

(assert (=> b!3649313 m!4153761))

(assert (=> b!3649313 m!4153667))

(assert (=> b!3649313 m!4153761))

(assert (=> b!3649313 m!4153667))

(declare-fun m!4153763 () Bool)

(assert (=> b!3649313 m!4153763))

(assert (=> b!3649105 d!1072353))

(declare-fun d!1072355 () Bool)

(declare-fun isEmpty!22803 (Option!8146) Bool)

(assert (=> d!1072355 (= (isDefined!6378 lt!1265419) (not (isEmpty!22803 lt!1265419)))))

(declare-fun bs!572192 () Bool)

(assert (= bs!572192 d!1072355))

(declare-fun m!4153765 () Bool)

(assert (=> bs!572192 m!4153765))

(assert (=> b!3649105 d!1072355))

(declare-fun d!1072357 () Bool)

(declare-fun e!2259321 () Bool)

(assert (=> d!1072357 e!2259321))

(declare-fun res!1480322 () Bool)

(assert (=> d!1072357 (=> res!1480322 e!2259321)))

(declare-fun lt!1265595 () Bool)

(assert (=> d!1072357 (= res!1480322 (not lt!1265595))))

(declare-fun e!2259320 () Bool)

(assert (=> d!1072357 (= lt!1265595 e!2259320)))

(declare-fun res!1480321 () Bool)

(assert (=> d!1072357 (=> res!1480321 e!2259320)))

(assert (=> d!1072357 (= res!1480321 (is-Nil!38476 lt!1265411))))

(assert (=> d!1072357 (= (isPrefix!3122 lt!1265411 lt!1265399) lt!1265595)))

(declare-fun b!3649315 () Bool)

(declare-fun e!2259322 () Bool)

(assert (=> b!3649315 (= e!2259320 e!2259322)))

(declare-fun res!1480323 () Bool)

(assert (=> b!3649315 (=> (not res!1480323) (not e!2259322))))

(assert (=> b!3649315 (= res!1480323 (not (is-Nil!38476 lt!1265399)))))

(declare-fun b!3649318 () Bool)

(assert (=> b!3649318 (= e!2259321 (>= (size!29380 lt!1265399) (size!29380 lt!1265411)))))

(declare-fun b!3649316 () Bool)

(declare-fun res!1480320 () Bool)

(assert (=> b!3649316 (=> (not res!1480320) (not e!2259322))))

(assert (=> b!3649316 (= res!1480320 (= (head!7771 lt!1265411) (head!7771 lt!1265399)))))

(declare-fun b!3649317 () Bool)

(assert (=> b!3649317 (= e!2259322 (isPrefix!3122 (tail!5652 lt!1265411) (tail!5652 lt!1265399)))))

(assert (= (and d!1072357 (not res!1480321)) b!3649315))

(assert (= (and b!3649315 res!1480323) b!3649316))

(assert (= (and b!3649316 res!1480320) b!3649317))

(assert (= (and d!1072357 (not res!1480322)) b!3649318))

(assert (=> b!3649318 m!4153665))

(assert (=> b!3649318 m!4153401))

(assert (=> b!3649316 m!4153383))

(assert (=> b!3649316 m!4153759))

(declare-fun m!4153767 () Bool)

(assert (=> b!3649317 m!4153767))

(assert (=> b!3649317 m!4153667))

(assert (=> b!3649317 m!4153767))

(assert (=> b!3649317 m!4153667))

(declare-fun m!4153769 () Bool)

(assert (=> b!3649317 m!4153769))

(assert (=> b!3649105 d!1072357))

(declare-fun d!1072359 () Bool)

(declare-fun list!14259 (Conc!11756) List!38600)

(assert (=> d!1072359 (= (list!14257 lt!1265422) (list!14259 (c!630744 lt!1265422)))))

(declare-fun bs!572193 () Bool)

(assert (= bs!572193 d!1072359))

(declare-fun m!4153771 () Bool)

(assert (=> bs!572193 m!4153771))

(assert (=> b!3649105 d!1072359))

(declare-fun b!3649329 () Bool)

(declare-fun res!1480329 () Bool)

(declare-fun e!2259327 () Bool)

(assert (=> b!3649329 (=> (not res!1480329) (not e!2259327))))

(declare-fun lt!1265598 () List!38600)

(assert (=> b!3649329 (= res!1480329 (= (size!29380 lt!1265598) (+ (size!29380 lt!1265406) (size!29380 suffix!1395))))))

(declare-fun b!3649327 () Bool)

(declare-fun e!2259328 () List!38600)

(assert (=> b!3649327 (= e!2259328 suffix!1395)))

(declare-fun d!1072361 () Bool)

(assert (=> d!1072361 e!2259327))

(declare-fun res!1480328 () Bool)

(assert (=> d!1072361 (=> (not res!1480328) (not e!2259327))))

(declare-fun content!5549 (List!38600) (Set C!21222))

(assert (=> d!1072361 (= res!1480328 (= (content!5549 lt!1265598) (set.union (content!5549 lt!1265406) (content!5549 suffix!1395))))))

(assert (=> d!1072361 (= lt!1265598 e!2259328)))

(declare-fun c!630775 () Bool)

(assert (=> d!1072361 (= c!630775 (is-Nil!38476 lt!1265406))))

(assert (=> d!1072361 (= (++!9575 lt!1265406 suffix!1395) lt!1265598)))

(declare-fun b!3649330 () Bool)

(assert (=> b!3649330 (= e!2259327 (or (not (= suffix!1395 Nil!38476)) (= lt!1265598 lt!1265406)))))

(declare-fun b!3649328 () Bool)

(assert (=> b!3649328 (= e!2259328 (Cons!38476 (h!43896 lt!1265406) (++!9575 (t!297343 lt!1265406) suffix!1395)))))

(assert (= (and d!1072361 c!630775) b!3649327))

(assert (= (and d!1072361 (not c!630775)) b!3649328))

(assert (= (and d!1072361 res!1480328) b!3649329))

(assert (= (and b!3649329 res!1480329) b!3649330))

(declare-fun m!4153773 () Bool)

(assert (=> b!3649329 m!4153773))

(assert (=> b!3649329 m!4153755))

(declare-fun m!4153775 () Bool)

(assert (=> b!3649329 m!4153775))

(declare-fun m!4153777 () Bool)

(assert (=> d!1072361 m!4153777))

(declare-fun m!4153779 () Bool)

(assert (=> d!1072361 m!4153779))

(declare-fun m!4153781 () Bool)

(assert (=> d!1072361 m!4153781))

(declare-fun m!4153783 () Bool)

(assert (=> b!3649328 m!4153783))

(assert (=> b!3649105 d!1072361))

(declare-fun b!3649333 () Bool)

(declare-fun res!1480331 () Bool)

(declare-fun e!2259329 () Bool)

(assert (=> b!3649333 (=> (not res!1480331) (not e!2259329))))

(declare-fun lt!1265599 () List!38600)

(assert (=> b!3649333 (= res!1480331 (= (size!29380 lt!1265599) (+ (size!29380 lt!1265411) (size!29380 (_2!22307 lt!1265424)))))))

(declare-fun b!3649331 () Bool)

(declare-fun e!2259330 () List!38600)

(assert (=> b!3649331 (= e!2259330 (_2!22307 lt!1265424))))

(declare-fun d!1072363 () Bool)

(assert (=> d!1072363 e!2259329))

(declare-fun res!1480330 () Bool)

(assert (=> d!1072363 (=> (not res!1480330) (not e!2259329))))

(assert (=> d!1072363 (= res!1480330 (= (content!5549 lt!1265599) (set.union (content!5549 lt!1265411) (content!5549 (_2!22307 lt!1265424)))))))

(assert (=> d!1072363 (= lt!1265599 e!2259330)))

(declare-fun c!630776 () Bool)

(assert (=> d!1072363 (= c!630776 (is-Nil!38476 lt!1265411))))

(assert (=> d!1072363 (= (++!9575 lt!1265411 (_2!22307 lt!1265424)) lt!1265599)))

(declare-fun b!3649334 () Bool)

(assert (=> b!3649334 (= e!2259329 (or (not (= (_2!22307 lt!1265424) Nil!38476)) (= lt!1265599 lt!1265411)))))

(declare-fun b!3649332 () Bool)

(assert (=> b!3649332 (= e!2259330 (Cons!38476 (h!43896 lt!1265411) (++!9575 (t!297343 lt!1265411) (_2!22307 lt!1265424))))))

(assert (= (and d!1072363 c!630776) b!3649331))

(assert (= (and d!1072363 (not c!630776)) b!3649332))

(assert (= (and d!1072363 res!1480330) b!3649333))

(assert (= (and b!3649333 res!1480331) b!3649334))

(declare-fun m!4153785 () Bool)

(assert (=> b!3649333 m!4153785))

(assert (=> b!3649333 m!4153401))

(declare-fun m!4153787 () Bool)

(assert (=> b!3649333 m!4153787))

(declare-fun m!4153789 () Bool)

(assert (=> d!1072363 m!4153789))

(declare-fun m!4153791 () Bool)

(assert (=> d!1072363 m!4153791))

(declare-fun m!4153793 () Bool)

(assert (=> d!1072363 m!4153793))

(declare-fun m!4153795 () Bool)

(assert (=> b!3649332 m!4153795))

(assert (=> b!3649105 d!1072363))

(declare-fun d!1072365 () Bool)

(assert (=> d!1072365 (isPrefix!3122 lt!1265406 (++!9575 lt!1265406 suffix!1395))))

(declare-fun lt!1265602 () Unit!55437)

(declare-fun choose!21504 (List!38600 List!38600) Unit!55437)

(assert (=> d!1072365 (= lt!1265602 (choose!21504 lt!1265406 suffix!1395))))

(assert (=> d!1072365 (= (lemmaConcatTwoListThenFirstIsPrefix!2041 lt!1265406 suffix!1395) lt!1265602)))

(declare-fun bs!572194 () Bool)

(assert (= bs!572194 d!1072365))

(assert (=> bs!572194 m!4153433))

(assert (=> bs!572194 m!4153433))

(declare-fun m!4153797 () Bool)

(assert (=> bs!572194 m!4153797))

(declare-fun m!4153799 () Bool)

(assert (=> bs!572194 m!4153799))

(assert (=> b!3649105 d!1072365))

(declare-fun b!3649371 () Bool)

(declare-fun res!1480362 () Bool)

(declare-fun e!2259345 () Bool)

(assert (=> b!3649371 (=> (not res!1480362) (not e!2259345))))

(declare-fun lt!1265626 () Option!8147)

(assert (=> b!3649371 (= res!1480362 (= (++!9575 (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265626)))) (_2!22307 (get!12637 lt!1265626))) lt!1265399))))

(declare-fun b!3649373 () Bool)

(declare-fun e!2259343 () Bool)

(assert (=> b!3649373 (= e!2259343 e!2259345)))

(declare-fun res!1480364 () Bool)

(assert (=> b!3649373 (=> (not res!1480364) (not e!2259345))))

(assert (=> b!3649373 (= res!1480364 (isDefined!6379 lt!1265626))))

(declare-fun b!3649374 () Bool)

(declare-fun res!1480360 () Bool)

(assert (=> b!3649374 (=> (not res!1480360) (not e!2259345))))

(assert (=> b!3649374 (= res!1480360 (= (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265626)))) (originalCharacters!6473 (_1!22307 (get!12637 lt!1265626)))))))

(declare-fun b!3649375 () Bool)

(declare-fun res!1480365 () Bool)

(assert (=> b!3649375 (=> (not res!1480365) (not e!2259345))))

(assert (=> b!3649375 (= res!1480365 (matchR!5087 (regex!5759 (rule!8555 (_1!22307 (get!12637 lt!1265626)))) (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265626))))))))

(declare-fun call!263729 () Option!8147)

(declare-fun bm!263724 () Bool)

(assert (=> bm!263724 (= call!263729 (maxPrefixOneRule!2020 thiss!23823 (h!43898 rules!3307) lt!1265399))))

(declare-fun d!1072367 () Bool)

(assert (=> d!1072367 e!2259343))

(declare-fun res!1480361 () Bool)

(assert (=> d!1072367 (=> res!1480361 e!2259343)))

(assert (=> d!1072367 (= res!1480361 (isEmpty!22802 lt!1265626))))

(declare-fun e!2259344 () Option!8147)

(assert (=> d!1072367 (= lt!1265626 e!2259344)))

(declare-fun c!630781 () Bool)

(assert (=> d!1072367 (= c!630781 (and (is-Cons!38478 rules!3307) (is-Nil!38478 (t!297345 rules!3307))))))

(declare-fun lt!1265623 () Unit!55437)

(declare-fun lt!1265625 () Unit!55437)

(assert (=> d!1072367 (= lt!1265623 lt!1265625)))

(assert (=> d!1072367 (isPrefix!3122 lt!1265399 lt!1265399)))

(declare-fun lemmaIsPrefixRefl!1975 (List!38600 List!38600) Unit!55437)

(assert (=> d!1072367 (= lt!1265625 (lemmaIsPrefixRefl!1975 lt!1265399 lt!1265399))))

(declare-fun rulesValidInductive!2040 (LexerInterface!5348 List!38602) Bool)

(assert (=> d!1072367 (rulesValidInductive!2040 thiss!23823 rules!3307)))

(assert (=> d!1072367 (= (maxPrefix!2882 thiss!23823 rules!3307 lt!1265399) lt!1265626)))

(declare-fun b!3649372 () Bool)

(assert (=> b!3649372 (= e!2259345 (contains!7584 rules!3307 (rule!8555 (_1!22307 (get!12637 lt!1265626)))))))

(declare-fun b!3649376 () Bool)

(declare-fun res!1480366 () Bool)

(assert (=> b!3649376 (=> (not res!1480366) (not e!2259345))))

(assert (=> b!3649376 (= res!1480366 (< (size!29380 (_2!22307 (get!12637 lt!1265626))) (size!29380 lt!1265399)))))

(declare-fun b!3649377 () Bool)

(declare-fun res!1480363 () Bool)

(assert (=> b!3649377 (=> (not res!1480363) (not e!2259345))))

(assert (=> b!3649377 (= res!1480363 (= (value!184593 (_1!22307 (get!12637 lt!1265626))) (apply!9261 (transformation!5759 (rule!8555 (_1!22307 (get!12637 lt!1265626)))) (seqFromList!4308 (originalCharacters!6473 (_1!22307 (get!12637 lt!1265626)))))))))

(declare-fun b!3649378 () Bool)

(assert (=> b!3649378 (= e!2259344 call!263729)))

(declare-fun b!3649379 () Bool)

(declare-fun lt!1265624 () Option!8147)

(declare-fun lt!1265627 () Option!8147)

(assert (=> b!3649379 (= e!2259344 (ite (and (is-None!8146 lt!1265624) (is-None!8146 lt!1265627)) None!8146 (ite (is-None!8146 lt!1265627) lt!1265624 (ite (is-None!8146 lt!1265624) lt!1265627 (ite (>= (size!29378 (_1!22307 (v!38002 lt!1265624))) (size!29378 (_1!22307 (v!38002 lt!1265627)))) lt!1265624 lt!1265627)))))))

(assert (=> b!3649379 (= lt!1265624 call!263729)))

(assert (=> b!3649379 (= lt!1265627 (maxPrefix!2882 thiss!23823 (t!297345 rules!3307) lt!1265399))))

(assert (= (and d!1072367 c!630781) b!3649378))

(assert (= (and d!1072367 (not c!630781)) b!3649379))

(assert (= (or b!3649378 b!3649379) bm!263724))

(assert (= (and d!1072367 (not res!1480361)) b!3649373))

(assert (= (and b!3649373 res!1480364) b!3649374))

(assert (= (and b!3649374 res!1480360) b!3649376))

(assert (= (and b!3649376 res!1480366) b!3649371))

(assert (= (and b!3649371 res!1480362) b!3649377))

(assert (= (and b!3649377 res!1480363) b!3649375))

(assert (= (and b!3649375 res!1480365) b!3649372))

(declare-fun m!4153801 () Bool)

(assert (=> b!3649372 m!4153801))

(declare-fun m!4153803 () Bool)

(assert (=> b!3649372 m!4153803))

(assert (=> b!3649371 m!4153801))

(declare-fun m!4153805 () Bool)

(assert (=> b!3649371 m!4153805))

(assert (=> b!3649371 m!4153805))

(declare-fun m!4153807 () Bool)

(assert (=> b!3649371 m!4153807))

(assert (=> b!3649371 m!4153807))

(declare-fun m!4153809 () Bool)

(assert (=> b!3649371 m!4153809))

(declare-fun m!4153811 () Bool)

(assert (=> d!1072367 m!4153811))

(declare-fun m!4153813 () Bool)

(assert (=> d!1072367 m!4153813))

(declare-fun m!4153815 () Bool)

(assert (=> d!1072367 m!4153815))

(declare-fun m!4153817 () Bool)

(assert (=> d!1072367 m!4153817))

(declare-fun m!4153819 () Bool)

(assert (=> b!3649379 m!4153819))

(declare-fun m!4153821 () Bool)

(assert (=> bm!263724 m!4153821))

(assert (=> b!3649376 m!4153801))

(declare-fun m!4153823 () Bool)

(assert (=> b!3649376 m!4153823))

(assert (=> b!3649376 m!4153665))

(declare-fun m!4153825 () Bool)

(assert (=> b!3649373 m!4153825))

(assert (=> b!3649374 m!4153801))

(assert (=> b!3649374 m!4153805))

(assert (=> b!3649374 m!4153805))

(assert (=> b!3649374 m!4153807))

(assert (=> b!3649377 m!4153801))

(declare-fun m!4153827 () Bool)

(assert (=> b!3649377 m!4153827))

(assert (=> b!3649377 m!4153827))

(declare-fun m!4153829 () Bool)

(assert (=> b!3649377 m!4153829))

(assert (=> b!3649375 m!4153801))

(assert (=> b!3649375 m!4153805))

(assert (=> b!3649375 m!4153805))

(assert (=> b!3649375 m!4153807))

(assert (=> b!3649375 m!4153807))

(declare-fun m!4153831 () Bool)

(assert (=> b!3649375 m!4153831))

(assert (=> b!3649105 d!1072367))

(declare-fun d!1072369 () Bool)

(declare-fun e!2259350 () Bool)

(assert (=> d!1072369 e!2259350))

(declare-fun res!1480376 () Bool)

(assert (=> d!1072369 (=> res!1480376 e!2259350)))

(declare-fun lt!1265633 () Bool)

(assert (=> d!1072369 (= res!1480376 (not lt!1265633))))

(declare-fun e!2259349 () Bool)

(assert (=> d!1072369 (= lt!1265633 e!2259349)))

(declare-fun res!1480375 () Bool)

(assert (=> d!1072369 (=> res!1480375 e!2259349)))

(assert (=> d!1072369 (= res!1480375 (is-Nil!38476 lt!1265411))))

(assert (=> d!1072369 (= (isPrefix!3122 lt!1265411 (++!9575 lt!1265411 (_2!22307 lt!1265424))) lt!1265633)))

(declare-fun b!3649389 () Bool)

(declare-fun e!2259351 () Bool)

(assert (=> b!3649389 (= e!2259349 e!2259351)))

(declare-fun res!1480377 () Bool)

(assert (=> b!3649389 (=> (not res!1480377) (not e!2259351))))

(assert (=> b!3649389 (= res!1480377 (not (is-Nil!38476 (++!9575 lt!1265411 (_2!22307 lt!1265424)))))))

(declare-fun b!3649392 () Bool)

(assert (=> b!3649392 (= e!2259350 (>= (size!29380 (++!9575 lt!1265411 (_2!22307 lt!1265424))) (size!29380 lt!1265411)))))

(declare-fun b!3649390 () Bool)

(declare-fun res!1480374 () Bool)

(assert (=> b!3649390 (=> (not res!1480374) (not e!2259351))))

(assert (=> b!3649390 (= res!1480374 (= (head!7771 lt!1265411) (head!7771 (++!9575 lt!1265411 (_2!22307 lt!1265424)))))))

(declare-fun b!3649391 () Bool)

(assert (=> b!3649391 (= e!2259351 (isPrefix!3122 (tail!5652 lt!1265411) (tail!5652 (++!9575 lt!1265411 (_2!22307 lt!1265424)))))))

(assert (= (and d!1072369 (not res!1480375)) b!3649389))

(assert (= (and b!3649389 res!1480377) b!3649390))

(assert (= (and b!3649390 res!1480374) b!3649391))

(assert (= (and d!1072369 (not res!1480376)) b!3649392))

(assert (=> b!3649392 m!4153423))

(declare-fun m!4153833 () Bool)

(assert (=> b!3649392 m!4153833))

(assert (=> b!3649392 m!4153401))

(assert (=> b!3649390 m!4153383))

(assert (=> b!3649390 m!4153423))

(declare-fun m!4153835 () Bool)

(assert (=> b!3649390 m!4153835))

(assert (=> b!3649391 m!4153767))

(assert (=> b!3649391 m!4153423))

(declare-fun m!4153837 () Bool)

(assert (=> b!3649391 m!4153837))

(assert (=> b!3649391 m!4153767))

(assert (=> b!3649391 m!4153837))

(declare-fun m!4153839 () Bool)

(assert (=> b!3649391 m!4153839))

(assert (=> b!3649105 d!1072369))

(declare-fun d!1072371 () Bool)

(declare-fun lt!1265636 () BalanceConc!23126)

(assert (=> d!1072371 (= (list!14257 lt!1265636) (originalCharacters!6473 (_1!22307 lt!1265424)))))

(declare-fun dynLambda!16771 (Int TokenValue!5989) BalanceConc!23126)

(assert (=> d!1072371 (= lt!1265636 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (value!184593 (_1!22307 lt!1265424))))))

(assert (=> d!1072371 (= (charsOf!3773 (_1!22307 lt!1265424)) lt!1265636)))

(declare-fun b_lambda!108209 () Bool)

(assert (=> (not b_lambda!108209) (not d!1072371)))

(declare-fun t!297358 () Bool)

(declare-fun tb!210509 () Bool)

(assert (=> (and b!3649098 (= (toChars!7910 (transformation!5759 (rule!8555 token!511))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297358) tb!210509))

(declare-fun b!3649397 () Bool)

(declare-fun e!2259354 () Bool)

(declare-fun tp!1112631 () Bool)

(declare-fun inv!51930 (Conc!11756) Bool)

(assert (=> b!3649397 (= e!2259354 (and (inv!51930 (c!630744 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (value!184593 (_1!22307 lt!1265424))))) tp!1112631))))

(declare-fun result!256352 () Bool)

(declare-fun inv!51931 (BalanceConc!23126) Bool)

(assert (=> tb!210509 (= result!256352 (and (inv!51931 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (value!184593 (_1!22307 lt!1265424)))) e!2259354))))

(assert (= tb!210509 b!3649397))

(declare-fun m!4153863 () Bool)

(assert (=> b!3649397 m!4153863))

(declare-fun m!4153867 () Bool)

(assert (=> tb!210509 m!4153867))

(assert (=> d!1072371 t!297358))

(declare-fun b_and!269795 () Bool)

(assert (= b_and!269757 (and (=> t!297358 result!256352) b_and!269795)))

(declare-fun tb!210511 () Bool)

(declare-fun t!297360 () Bool)

(assert (=> (and b!3649087 (= (toChars!7910 (transformation!5759 rule!403)) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297360) tb!210511))

(declare-fun result!256356 () Bool)

(assert (= result!256356 result!256352))

(assert (=> d!1072371 t!297360))

(declare-fun b_and!269797 () Bool)

(assert (= b_and!269761 (and (=> t!297360 result!256356) b_and!269797)))

(declare-fun t!297362 () Bool)

(declare-fun tb!210513 () Bool)

(assert (=> (and b!3649074 (= (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297362) tb!210513))

(declare-fun result!256358 () Bool)

(assert (= result!256358 result!256352))

(assert (=> d!1072371 t!297362))

(declare-fun b_and!269799 () Bool)

(assert (= b_and!269765 (and (=> t!297362 result!256358) b_and!269799)))

(declare-fun t!297364 () Bool)

(declare-fun tb!210515 () Bool)

(assert (=> (and b!3649110 (= (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297364) tb!210515))

(declare-fun result!256360 () Bool)

(assert (= result!256360 result!256352))

(assert (=> d!1072371 t!297364))

(declare-fun b_and!269801 () Bool)

(assert (= b_and!269769 (and (=> t!297364 result!256360) b_and!269801)))

(declare-fun m!4153873 () Bool)

(assert (=> d!1072371 m!4153873))

(declare-fun m!4153877 () Bool)

(assert (=> d!1072371 m!4153877))

(assert (=> b!3649105 d!1072371))

(declare-fun b!3649432 () Bool)

(declare-fun e!2259376 () Unit!55437)

(declare-fun Unit!55454 () Unit!55437)

(assert (=> b!3649432 (= e!2259376 Unit!55454)))

(declare-fun lt!1265678 () List!38600)

(assert (=> b!3649432 (= lt!1265678 (++!9575 lt!1265406 suffix!1395))))

(declare-fun lt!1265690 () Token!10884)

(declare-fun lt!1265682 () Unit!55437)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!541 (LexerInterface!5348 Rule!11318 List!38602 List!38600) Unit!55437)

(assert (=> b!3649432 (= lt!1265682 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!541 thiss!23823 (rule!8555 lt!1265690) rules!3307 lt!1265678))))

(assert (=> b!3649432 (isEmpty!22802 (maxPrefixOneRule!2020 thiss!23823 (rule!8555 lt!1265690) lt!1265678))))

(declare-fun lt!1265693 () Unit!55437)

(assert (=> b!3649432 (= lt!1265693 lt!1265682)))

(declare-fun lt!1265686 () List!38600)

(assert (=> b!3649432 (= lt!1265686 (list!14257 (charsOf!3773 lt!1265690)))))

(declare-fun lt!1265687 () Unit!55437)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!529 (LexerInterface!5348 Rule!11318 List!38600 List!38600) Unit!55437)

(assert (=> b!3649432 (= lt!1265687 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!529 thiss!23823 (rule!8555 lt!1265690) lt!1265686 (++!9575 lt!1265406 suffix!1395)))))

(assert (=> b!3649432 (not (matchR!5087 (regex!5759 (rule!8555 lt!1265690)) lt!1265686))))

(declare-fun lt!1265689 () Unit!55437)

(assert (=> b!3649432 (= lt!1265689 lt!1265687)))

(assert (=> b!3649432 false))

(declare-fun b!3649430 () Bool)

(declare-fun res!1480405 () Bool)

(declare-fun e!2259377 () Bool)

(assert (=> b!3649430 (=> (not res!1480405) (not e!2259377))))

(assert (=> b!3649430 (= res!1480405 (matchR!5087 (regex!5759 (get!12636 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 lt!1265690))))) (list!14257 (charsOf!3773 lt!1265690))))))

(declare-fun d!1072373 () Bool)

(assert (=> d!1072373 (isDefined!6379 (maxPrefix!2882 thiss!23823 rules!3307 (++!9575 lt!1265406 suffix!1395)))))

(declare-fun lt!1265683 () Unit!55437)

(assert (=> d!1072373 (= lt!1265683 e!2259376)))

(declare-fun c!630786 () Bool)

(assert (=> d!1072373 (= c!630786 (isEmpty!22802 (maxPrefix!2882 thiss!23823 rules!3307 (++!9575 lt!1265406 suffix!1395))))))

(declare-fun lt!1265677 () Unit!55437)

(declare-fun lt!1265691 () Unit!55437)

(assert (=> d!1072373 (= lt!1265677 lt!1265691)))

(assert (=> d!1072373 e!2259377))

(declare-fun res!1480404 () Bool)

(assert (=> d!1072373 (=> (not res!1480404) (not e!2259377))))

(assert (=> d!1072373 (= res!1480404 (isDefined!6378 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 lt!1265690)))))))

(assert (=> d!1072373 (= lt!1265691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1363 thiss!23823 rules!3307 lt!1265406 lt!1265690))))

(declare-fun lt!1265681 () Unit!55437)

(declare-fun lt!1265680 () Unit!55437)

(assert (=> d!1072373 (= lt!1265681 lt!1265680)))

(declare-fun lt!1265685 () List!38600)

(assert (=> d!1072373 (isPrefix!3122 lt!1265685 (++!9575 lt!1265406 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!505 (List!38600 List!38600 List!38600) Unit!55437)

(assert (=> d!1072373 (= lt!1265680 (lemmaPrefixStaysPrefixWhenAddingToSuffix!505 lt!1265685 lt!1265406 suffix!1395))))

(assert (=> d!1072373 (= lt!1265685 (list!14257 (charsOf!3773 lt!1265690)))))

(declare-fun lt!1265692 () Unit!55437)

(declare-fun lt!1265684 () Unit!55437)

(assert (=> d!1072373 (= lt!1265692 lt!1265684)))

(declare-fun lt!1265688 () List!38600)

(declare-fun lt!1265679 () List!38600)

(assert (=> d!1072373 (isPrefix!3122 lt!1265688 (++!9575 lt!1265688 lt!1265679))))

(assert (=> d!1072373 (= lt!1265684 (lemmaConcatTwoListThenFirstIsPrefix!2041 lt!1265688 lt!1265679))))

(assert (=> d!1072373 (= lt!1265679 (_2!22307 (get!12637 (maxPrefix!2882 thiss!23823 rules!3307 lt!1265406))))))

(assert (=> d!1072373 (= lt!1265688 (list!14257 (charsOf!3773 lt!1265690)))))

(declare-datatypes ((List!38606 0))(
  ( (Nil!38482) (Cons!38482 (h!43902 Token!10884) (t!297457 List!38606)) )
))
(declare-fun head!7773 (List!38606) Token!10884)

(declare-datatypes ((IArray!23521 0))(
  ( (IArray!23522 (innerList!11818 List!38606)) )
))
(declare-datatypes ((Conc!11758 0))(
  ( (Node!11758 (left!30044 Conc!11758) (right!30374 Conc!11758) (csize!23746 Int) (cheight!11969 Int)) (Leaf!18249 (xs!14960 IArray!23521) (csize!23747 Int)) (Empty!11758) )
))
(declare-datatypes ((BalanceConc!23130 0))(
  ( (BalanceConc!23131 (c!630898 Conc!11758)) )
))
(declare-fun list!14260 (BalanceConc!23130) List!38606)

(declare-datatypes ((tuple2!38352 0))(
  ( (tuple2!38353 (_1!22310 BalanceConc!23130) (_2!22310 BalanceConc!23126)) )
))
(declare-fun lex!2537 (LexerInterface!5348 List!38602 BalanceConc!23126) tuple2!38352)

(assert (=> d!1072373 (= lt!1265690 (head!7773 (list!14260 (_1!22310 (lex!2537 thiss!23823 rules!3307 (seqFromList!4308 lt!1265406))))))))

(assert (=> d!1072373 (not (isEmpty!22799 rules!3307))))

(assert (=> d!1072373 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1026 thiss!23823 rules!3307 lt!1265406 suffix!1395) lt!1265683)))

(declare-fun b!3649431 () Bool)

(assert (=> b!3649431 (= e!2259377 (= (rule!8555 lt!1265690) (get!12636 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 lt!1265690))))))))

(declare-fun b!3649433 () Bool)

(declare-fun Unit!55455 () Unit!55437)

(assert (=> b!3649433 (= e!2259376 Unit!55455)))

(assert (= (and d!1072373 res!1480404) b!3649430))

(assert (= (and b!3649430 res!1480405) b!3649431))

(assert (= (and d!1072373 c!630786) b!3649432))

(assert (= (and d!1072373 (not c!630786)) b!3649433))

(declare-fun m!4153921 () Bool)

(assert (=> b!3649432 m!4153921))

(declare-fun m!4153923 () Bool)

(assert (=> b!3649432 m!4153923))

(assert (=> b!3649432 m!4153433))

(declare-fun m!4153925 () Bool)

(assert (=> b!3649432 m!4153925))

(declare-fun m!4153927 () Bool)

(assert (=> b!3649432 m!4153927))

(assert (=> b!3649432 m!4153433))

(declare-fun m!4153929 () Bool)

(assert (=> b!3649432 m!4153929))

(assert (=> b!3649432 m!4153921))

(assert (=> b!3649432 m!4153927))

(declare-fun m!4153931 () Bool)

(assert (=> b!3649432 m!4153931))

(declare-fun m!4153933 () Bool)

(assert (=> b!3649432 m!4153933))

(assert (=> b!3649430 m!4153927))

(assert (=> b!3649430 m!4153931))

(declare-fun m!4153935 () Bool)

(assert (=> b!3649430 m!4153935))

(assert (=> b!3649430 m!4153927))

(assert (=> b!3649430 m!4153931))

(declare-fun m!4153937 () Bool)

(assert (=> b!3649430 m!4153937))

(declare-fun m!4153939 () Bool)

(assert (=> b!3649430 m!4153939))

(assert (=> b!3649430 m!4153937))

(declare-fun m!4153941 () Bool)

(assert (=> d!1072373 m!4153941))

(declare-fun m!4153943 () Bool)

(assert (=> d!1072373 m!4153943))

(declare-fun m!4153945 () Bool)

(assert (=> d!1072373 m!4153945))

(assert (=> d!1072373 m!4153937))

(declare-fun m!4153947 () Bool)

(assert (=> d!1072373 m!4153947))

(declare-fun m!4153949 () Bool)

(assert (=> d!1072373 m!4153949))

(declare-fun m!4153951 () Bool)

(assert (=> d!1072373 m!4153951))

(declare-fun m!4153953 () Bool)

(assert (=> d!1072373 m!4153953))

(assert (=> d!1072373 m!4153927))

(declare-fun m!4153955 () Bool)

(assert (=> d!1072373 m!4153955))

(declare-fun m!4153957 () Bool)

(assert (=> d!1072373 m!4153957))

(assert (=> d!1072373 m!4153955))

(assert (=> d!1072373 m!4153943))

(assert (=> d!1072373 m!4153479))

(declare-fun m!4153959 () Bool)

(assert (=> d!1072373 m!4153959))

(assert (=> d!1072373 m!4153433))

(assert (=> d!1072373 m!4153949))

(declare-fun m!4153961 () Bool)

(assert (=> d!1072373 m!4153961))

(declare-fun m!4153963 () Bool)

(assert (=> d!1072373 m!4153963))

(assert (=> d!1072373 m!4153961))

(declare-fun m!4153965 () Bool)

(assert (=> d!1072373 m!4153965))

(assert (=> d!1072373 m!4153927))

(assert (=> d!1072373 m!4153931))

(assert (=> d!1072373 m!4153433))

(declare-fun m!4153967 () Bool)

(assert (=> d!1072373 m!4153967))

(assert (=> d!1072373 m!4153479))

(assert (=> d!1072373 m!4153433))

(assert (=> d!1072373 m!4153961))

(assert (=> d!1072373 m!4153415))

(assert (=> d!1072373 m!4153937))

(declare-fun m!4153969 () Bool)

(assert (=> d!1072373 m!4153969))

(assert (=> b!3649431 m!4153937))

(assert (=> b!3649431 m!4153937))

(assert (=> b!3649431 m!4153939))

(assert (=> b!3649105 d!1072373))

(declare-fun d!1072389 () Bool)

(declare-fun e!2259380 () Bool)

(assert (=> d!1072389 e!2259380))

(declare-fun res!1480410 () Bool)

(assert (=> d!1072389 (=> (not res!1480410) (not e!2259380))))

(assert (=> d!1072389 (= res!1480410 (isDefined!6378 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 (_1!22307 lt!1265424))))))))

(declare-fun lt!1265696 () Unit!55437)

(declare-fun choose!21505 (LexerInterface!5348 List!38602 List!38600 Token!10884) Unit!55437)

(assert (=> d!1072389 (= lt!1265696 (choose!21505 thiss!23823 rules!3307 lt!1265399 (_1!22307 lt!1265424)))))

(assert (=> d!1072389 (rulesInvariant!4745 thiss!23823 rules!3307)))

(assert (=> d!1072389 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1363 thiss!23823 rules!3307 lt!1265399 (_1!22307 lt!1265424)) lt!1265696)))

(declare-fun b!3649438 () Bool)

(declare-fun res!1480411 () Bool)

(assert (=> b!3649438 (=> (not res!1480411) (not e!2259380))))

(assert (=> b!3649438 (= res!1480411 (matchR!5087 (regex!5759 (get!12636 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))) (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))))))

(declare-fun b!3649439 () Bool)

(assert (=> b!3649439 (= e!2259380 (= (rule!8555 (_1!22307 lt!1265424)) (get!12636 (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))))))

(assert (= (and d!1072389 res!1480410) b!3649438))

(assert (= (and b!3649438 res!1480411) b!3649439))

(assert (=> d!1072389 m!4153431))

(assert (=> d!1072389 m!4153431))

(declare-fun m!4153971 () Bool)

(assert (=> d!1072389 m!4153971))

(declare-fun m!4153973 () Bool)

(assert (=> d!1072389 m!4153973))

(assert (=> d!1072389 m!4153377))

(assert (=> b!3649438 m!4153431))

(declare-fun m!4153975 () Bool)

(assert (=> b!3649438 m!4153975))

(assert (=> b!3649438 m!4153431))

(assert (=> b!3649438 m!4153491))

(declare-fun m!4153977 () Bool)

(assert (=> b!3649438 m!4153977))

(assert (=> b!3649438 m!4153443))

(assert (=> b!3649438 m!4153443))

(assert (=> b!3649438 m!4153491))

(assert (=> b!3649439 m!4153431))

(assert (=> b!3649439 m!4153431))

(assert (=> b!3649439 m!4153975))

(assert (=> b!3649105 d!1072389))

(declare-fun d!1072391 () Bool)

(assert (=> d!1072391 (isPrefix!3122 lt!1265411 (++!9575 lt!1265411 (_2!22307 lt!1265424)))))

(declare-fun lt!1265697 () Unit!55437)

(assert (=> d!1072391 (= lt!1265697 (choose!21504 lt!1265411 (_2!22307 lt!1265424)))))

(assert (=> d!1072391 (= (lemmaConcatTwoListThenFirstIsPrefix!2041 lt!1265411 (_2!22307 lt!1265424)) lt!1265697)))

(declare-fun bs!572196 () Bool)

(assert (= bs!572196 d!1072391))

(assert (=> bs!572196 m!4153423))

(assert (=> bs!572196 m!4153423))

(assert (=> bs!572196 m!4153425))

(declare-fun m!4153979 () Bool)

(assert (=> bs!572196 m!4153979))

(assert (=> b!3649105 d!1072391))

(declare-fun b!3649460 () Bool)

(declare-fun e!2259396 () Option!8146)

(declare-fun e!2259393 () Option!8146)

(assert (=> b!3649460 (= e!2259396 e!2259393)))

(declare-fun c!630793 () Bool)

(assert (=> b!3649460 (= c!630793 (and (is-Cons!38478 rules!3307) (not (= (tag!6521 (h!43898 rules!3307)) (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))))))

(declare-fun b!3649461 () Bool)

(assert (=> b!3649461 (= e!2259393 None!8145)))

(declare-fun b!3649462 () Bool)

(declare-fun e!2259395 () Bool)

(declare-fun e!2259394 () Bool)

(assert (=> b!3649462 (= e!2259395 e!2259394)))

(declare-fun res!1480420 () Bool)

(assert (=> b!3649462 (=> (not res!1480420) (not e!2259394))))

(declare-fun lt!1265739 () Option!8146)

(assert (=> b!3649462 (= res!1480420 (contains!7584 rules!3307 (get!12636 lt!1265739)))))

(declare-fun b!3649463 () Bool)

(assert (=> b!3649463 (= e!2259394 (= (tag!6521 (get!12636 lt!1265739)) (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649464 () Bool)

(declare-fun lt!1265740 () Unit!55437)

(declare-fun lt!1265738 () Unit!55437)

(assert (=> b!3649464 (= lt!1265740 lt!1265738)))

(assert (=> b!3649464 (rulesInvariant!4745 thiss!23823 (t!297345 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!584 (LexerInterface!5348 Rule!11318 List!38602) Unit!55437)

(assert (=> b!3649464 (= lt!1265738 (lemmaInvariantOnRulesThenOnTail!584 thiss!23823 (h!43898 rules!3307) (t!297345 rules!3307)))))

(assert (=> b!3649464 (= e!2259393 (getRuleFromTag!1363 thiss!23823 (t!297345 rules!3307) (tag!6521 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun d!1072393 () Bool)

(assert (=> d!1072393 e!2259395))

(declare-fun res!1480421 () Bool)

(assert (=> d!1072393 (=> res!1480421 e!2259395)))

(assert (=> d!1072393 (= res!1480421 (isEmpty!22803 lt!1265739))))

(assert (=> d!1072393 (= lt!1265739 e!2259396)))

(declare-fun c!630794 () Bool)

(assert (=> d!1072393 (= c!630794 (and (is-Cons!38478 rules!3307) (= (tag!6521 (h!43898 rules!3307)) (tag!6521 (rule!8555 (_1!22307 lt!1265424))))))))

(assert (=> d!1072393 (rulesInvariant!4745 thiss!23823 rules!3307)))

(assert (=> d!1072393 (= (getRuleFromTag!1363 thiss!23823 rules!3307 (tag!6521 (rule!8555 (_1!22307 lt!1265424)))) lt!1265739)))

(declare-fun b!3649465 () Bool)

(assert (=> b!3649465 (= e!2259396 (Some!8145 (h!43898 rules!3307)))))

(assert (= (and d!1072393 c!630794) b!3649465))

(assert (= (and d!1072393 (not c!630794)) b!3649460))

(assert (= (and b!3649460 c!630793) b!3649464))

(assert (= (and b!3649460 (not c!630793)) b!3649461))

(assert (= (and d!1072393 (not res!1480421)) b!3649462))

(assert (= (and b!3649462 res!1480420) b!3649463))

(declare-fun m!4153981 () Bool)

(assert (=> b!3649462 m!4153981))

(assert (=> b!3649462 m!4153981))

(declare-fun m!4153983 () Bool)

(assert (=> b!3649462 m!4153983))

(assert (=> b!3649463 m!4153981))

(declare-fun m!4153985 () Bool)

(assert (=> b!3649464 m!4153985))

(declare-fun m!4153987 () Bool)

(assert (=> b!3649464 m!4153987))

(declare-fun m!4153989 () Bool)

(assert (=> b!3649464 m!4153989))

(declare-fun m!4153991 () Bool)

(assert (=> d!1072393 m!4153991))

(assert (=> d!1072393 m!4153377))

(assert (=> b!3649105 d!1072393))

(declare-fun d!1072395 () Bool)

(assert (=> d!1072395 (= (get!12637 lt!1265413) (v!38002 lt!1265413))))

(assert (=> b!3649105 d!1072395))

(declare-fun b!3649687 () Bool)

(declare-fun e!2259524 () Bool)

(assert (=> b!3649687 (= e!2259524 true)))

(declare-fun d!1072397 () Bool)

(assert (=> d!1072397 e!2259524))

(assert (= d!1072397 b!3649687))

(declare-fun order!21189 () Int)

(declare-fun lambda!124466 () Int)

(declare-fun order!21187 () Int)

(declare-fun dynLambda!16772 (Int Int) Int)

(declare-fun dynLambda!16773 (Int Int) Int)

(assert (=> b!3649687 (< (dynLambda!16772 order!21187 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) (dynLambda!16773 order!21189 lambda!124466))))

(declare-fun order!21191 () Int)

(declare-fun dynLambda!16774 (Int Int) Int)

(assert (=> b!3649687 (< (dynLambda!16774 order!21191 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) (dynLambda!16773 order!21189 lambda!124466))))

(assert (=> d!1072397 (= (list!14257 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422))) (list!14257 lt!1265422))))

(declare-fun lt!1265843 () Unit!55437)

(declare-fun ForallOf!711 (Int BalanceConc!23126) Unit!55437)

(assert (=> d!1072397 (= lt!1265843 (ForallOf!711 lambda!124466 lt!1265422))))

(assert (=> d!1072397 (= (lemmaSemiInverse!1508 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422) lt!1265843)))

(declare-fun b_lambda!108219 () Bool)

(assert (=> (not b_lambda!108219) (not d!1072397)))

(declare-fun t!297390 () Bool)

(declare-fun tb!210541 () Bool)

(assert (=> (and b!3649098 (= (toChars!7910 (transformation!5759 (rule!8555 token!511))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297390) tb!210541))

(declare-fun tp!1112636 () Bool)

(declare-fun e!2259525 () Bool)

(declare-fun b!3649688 () Bool)

(assert (=> b!3649688 (= e!2259525 (and (inv!51930 (c!630744 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422)))) tp!1112636))))

(declare-fun result!256390 () Bool)

(assert (=> tb!210541 (= result!256390 (and (inv!51931 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422))) e!2259525))))

(assert (= tb!210541 b!3649688))

(declare-fun m!4154291 () Bool)

(assert (=> b!3649688 m!4154291))

(declare-fun m!4154293 () Bool)

(assert (=> tb!210541 m!4154293))

(assert (=> d!1072397 t!297390))

(declare-fun b_and!269835 () Bool)

(assert (= b_and!269795 (and (=> t!297390 result!256390) b_and!269835)))

(declare-fun t!297392 () Bool)

(declare-fun tb!210543 () Bool)

(assert (=> (and b!3649087 (= (toChars!7910 (transformation!5759 rule!403)) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297392) tb!210543))

(declare-fun result!256392 () Bool)

(assert (= result!256392 result!256390))

(assert (=> d!1072397 t!297392))

(declare-fun b_and!269837 () Bool)

(assert (= b_and!269797 (and (=> t!297392 result!256392) b_and!269837)))

(declare-fun tb!210545 () Bool)

(declare-fun t!297394 () Bool)

(assert (=> (and b!3649074 (= (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297394) tb!210545))

(declare-fun result!256394 () Bool)

(assert (= result!256394 result!256390))

(assert (=> d!1072397 t!297394))

(declare-fun b_and!269839 () Bool)

(assert (= b_and!269799 (and (=> t!297394 result!256394) b_and!269839)))

(declare-fun t!297396 () Bool)

(declare-fun tb!210547 () Bool)

(assert (=> (and b!3649110 (= (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297396) tb!210547))

(declare-fun result!256396 () Bool)

(assert (= result!256396 result!256390))

(assert (=> d!1072397 t!297396))

(declare-fun b_and!269841 () Bool)

(assert (= b_and!269801 (and (=> t!297396 result!256396) b_and!269841)))

(declare-fun b_lambda!108221 () Bool)

(assert (=> (not b_lambda!108221) (not d!1072397)))

(declare-fun tb!210549 () Bool)

(declare-fun t!297398 () Bool)

(assert (=> (and b!3649098 (= (toValue!8051 (transformation!5759 (rule!8555 token!511))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297398) tb!210549))

(declare-fun result!256398 () Bool)

(assert (=> tb!210549 (= result!256398 (inv!21 (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422)))))

(declare-fun m!4154295 () Bool)

(assert (=> tb!210549 m!4154295))

(assert (=> d!1072397 t!297398))

(declare-fun b_and!269843 () Bool)

(assert (= b_and!269787 (and (=> t!297398 result!256398) b_and!269843)))

(declare-fun t!297400 () Bool)

(declare-fun tb!210551 () Bool)

(assert (=> (and b!3649087 (= (toValue!8051 (transformation!5759 rule!403)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297400) tb!210551))

(declare-fun result!256400 () Bool)

(assert (= result!256400 result!256398))

(assert (=> d!1072397 t!297400))

(declare-fun b_and!269845 () Bool)

(assert (= b_and!269789 (and (=> t!297400 result!256400) b_and!269845)))

(declare-fun t!297402 () Bool)

(declare-fun tb!210553 () Bool)

(assert (=> (and b!3649074 (= (toValue!8051 (transformation!5759 (h!43898 rules!3307))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297402) tb!210553))

(declare-fun result!256402 () Bool)

(assert (= result!256402 result!256398))

(assert (=> d!1072397 t!297402))

(declare-fun b_and!269847 () Bool)

(assert (= b_and!269791 (and (=> t!297402 result!256402) b_and!269847)))

(declare-fun t!297404 () Bool)

(declare-fun tb!210555 () Bool)

(assert (=> (and b!3649110 (= (toValue!8051 (transformation!5759 anOtherTypeRule!33)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297404) tb!210555))

(declare-fun result!256404 () Bool)

(assert (= result!256404 result!256398))

(assert (=> d!1072397 t!297404))

(declare-fun b_and!269849 () Bool)

(assert (= b_and!269793 (and (=> t!297404 result!256404) b_and!269849)))

(declare-fun m!4154297 () Bool)

(assert (=> d!1072397 m!4154297))

(declare-fun m!4154299 () Bool)

(assert (=> d!1072397 m!4154299))

(declare-fun m!4154301 () Bool)

(assert (=> d!1072397 m!4154301))

(declare-fun m!4154303 () Bool)

(assert (=> d!1072397 m!4154303))

(assert (=> d!1072397 m!4154297))

(assert (=> d!1072397 m!4153449))

(assert (=> d!1072397 m!4154303))

(assert (=> b!3649086 d!1072397))

(declare-fun d!1072493 () Bool)

(assert (=> d!1072493 (= (size!29378 (_1!22307 lt!1265424)) (size!29380 (originalCharacters!6473 (_1!22307 lt!1265424))))))

(declare-fun Unit!55456 () Unit!55437)

(assert (=> d!1072493 (= (lemmaCharactersSize!804 (_1!22307 lt!1265424)) Unit!55456)))

(declare-fun bs!572215 () Bool)

(assert (= bs!572215 d!1072493))

(declare-fun m!4154305 () Bool)

(assert (=> bs!572215 m!4154305))

(assert (=> b!3649086 d!1072493))

(declare-fun d!1072495 () Bool)

(assert (=> d!1072495 (= (apply!9261 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422))))

(declare-fun b_lambda!108223 () Bool)

(assert (=> (not b_lambda!108223) (not d!1072495)))

(assert (=> d!1072495 t!297398))

(declare-fun b_and!269851 () Bool)

(assert (= b_and!269843 (and (=> t!297398 result!256398) b_and!269851)))

(assert (=> d!1072495 t!297400))

(declare-fun b_and!269853 () Bool)

(assert (= b_and!269845 (and (=> t!297400 result!256400) b_and!269853)))

(assert (=> d!1072495 t!297402))

(declare-fun b_and!269855 () Bool)

(assert (= b_and!269847 (and (=> t!297402 result!256402) b_and!269855)))

(assert (=> d!1072495 t!297404))

(declare-fun b_and!269857 () Bool)

(assert (= b_and!269849 (and (=> t!297404 result!256404) b_and!269857)))

(assert (=> d!1072495 m!4154303))

(assert (=> b!3649086 d!1072495))

(declare-fun d!1072497 () Bool)

(assert (=> d!1072497 (= (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424))) (fromListB!1990 (originalCharacters!6473 (_1!22307 lt!1265424))))))

(declare-fun bs!572216 () Bool)

(assert (= bs!572216 d!1072497))

(declare-fun m!4154307 () Bool)

(assert (=> bs!572216 m!4154307))

(assert (=> b!3649086 d!1072497))

(declare-fun d!1072499 () Bool)

(declare-fun lt!1265846 () Int)

(assert (=> d!1072499 (= lt!1265846 (size!29380 (list!14257 lt!1265422)))))

(declare-fun size!29384 (Conc!11756) Int)

(assert (=> d!1072499 (= lt!1265846 (size!29384 (c!630744 lt!1265422)))))

(assert (=> d!1072499 (= (size!29379 lt!1265422) lt!1265846)))

(declare-fun bs!572217 () Bool)

(assert (= bs!572217 d!1072499))

(assert (=> bs!572217 m!4153449))

(assert (=> bs!572217 m!4153449))

(declare-fun m!4154309 () Bool)

(assert (=> bs!572217 m!4154309))

(declare-fun m!4154311 () Bool)

(assert (=> bs!572217 m!4154311))

(assert (=> b!3649086 d!1072499))

(declare-fun b!3649695 () Bool)

(declare-fun e!2259531 () Bool)

(assert (=> b!3649695 (= e!2259531 true)))

(declare-fun d!1072501 () Bool)

(assert (=> d!1072501 e!2259531))

(assert (= d!1072501 b!3649695))

(declare-fun order!21193 () Int)

(declare-fun lambda!124469 () Int)

(declare-fun dynLambda!16775 (Int Int) Int)

(assert (=> b!3649695 (< (dynLambda!16772 order!21187 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) (dynLambda!16775 order!21193 lambda!124469))))

(assert (=> b!3649695 (< (dynLambda!16774 order!21191 (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) (dynLambda!16775 order!21193 lambda!124469))))

(assert (=> d!1072501 (= (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265422) (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424)))))))

(declare-fun lt!1265849 () Unit!55437)

(declare-fun Forall2of!369 (Int BalanceConc!23126 BalanceConc!23126) Unit!55437)

(assert (=> d!1072501 (= lt!1265849 (Forall2of!369 lambda!124469 lt!1265422 (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424)))))))

(assert (=> d!1072501 (= (list!14257 lt!1265422) (list!14257 (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424)))))))

(assert (=> d!1072501 (= (lemmaEqSameImage!942 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265422 (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424)))) lt!1265849)))

(declare-fun b_lambda!108225 () Bool)

(assert (=> (not b_lambda!108225) (not d!1072501)))

(assert (=> d!1072501 t!297398))

(declare-fun b_and!269859 () Bool)

(assert (= b_and!269851 (and (=> t!297398 result!256398) b_and!269859)))

(assert (=> d!1072501 t!297400))

(declare-fun b_and!269861 () Bool)

(assert (= b_and!269853 (and (=> t!297400 result!256400) b_and!269861)))

(assert (=> d!1072501 t!297402))

(declare-fun b_and!269863 () Bool)

(assert (= b_and!269855 (and (=> t!297402 result!256402) b_and!269863)))

(assert (=> d!1072501 t!297404))

(declare-fun b_and!269865 () Bool)

(assert (= b_and!269857 (and (=> t!297404 result!256404) b_and!269865)))

(declare-fun b_lambda!108227 () Bool)

(assert (=> (not b_lambda!108227) (not d!1072501)))

(declare-fun tb!210557 () Bool)

(declare-fun t!297406 () Bool)

(assert (=> (and b!3649098 (= (toValue!8051 (transformation!5759 (rule!8555 token!511))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297406) tb!210557))

(declare-fun result!256406 () Bool)

(assert (=> tb!210557 (= result!256406 (inv!21 (dynLambda!16770 (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424)))) (seqFromList!4308 (originalCharacters!6473 (_1!22307 lt!1265424))))))))

(declare-fun m!4154313 () Bool)

(assert (=> tb!210557 m!4154313))

(assert (=> d!1072501 t!297406))

(declare-fun b_and!269867 () Bool)

(assert (= b_and!269859 (and (=> t!297406 result!256406) b_and!269867)))

(declare-fun t!297408 () Bool)

(declare-fun tb!210559 () Bool)

(assert (=> (and b!3649087 (= (toValue!8051 (transformation!5759 rule!403)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297408) tb!210559))

(declare-fun result!256408 () Bool)

(assert (= result!256408 result!256406))

(assert (=> d!1072501 t!297408))

(declare-fun b_and!269869 () Bool)

(assert (= b_and!269861 (and (=> t!297408 result!256408) b_and!269869)))

(declare-fun tb!210561 () Bool)

(declare-fun t!297410 () Bool)

(assert (=> (and b!3649074 (= (toValue!8051 (transformation!5759 (h!43898 rules!3307))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297410) tb!210561))

(declare-fun result!256410 () Bool)

(assert (= result!256410 result!256406))

(assert (=> d!1072501 t!297410))

(declare-fun b_and!269871 () Bool)

(assert (= b_and!269863 (and (=> t!297410 result!256410) b_and!269871)))

(declare-fun t!297412 () Bool)

(declare-fun tb!210563 () Bool)

(assert (=> (and b!3649110 (= (toValue!8051 (transformation!5759 anOtherTypeRule!33)) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297412) tb!210563))

(declare-fun result!256412 () Bool)

(assert (= result!256412 result!256406))

(assert (=> d!1072501 t!297412))

(declare-fun b_and!269873 () Bool)

(assert (= b_and!269865 (and (=> t!297412 result!256412) b_and!269873)))

(assert (=> d!1072501 m!4153449))

(assert (=> d!1072501 m!4154303))

(assert (=> d!1072501 m!4153463))

(declare-fun m!4154315 () Bool)

(assert (=> d!1072501 m!4154315))

(assert (=> d!1072501 m!4153463))

(declare-fun m!4154317 () Bool)

(assert (=> d!1072501 m!4154317))

(assert (=> d!1072501 m!4153463))

(declare-fun m!4154319 () Bool)

(assert (=> d!1072501 m!4154319))

(assert (=> b!3649086 d!1072501))

(declare-fun d!1072503 () Bool)

(assert (=> d!1072503 (= (isDefined!6379 lt!1265421) (not (isEmpty!22802 lt!1265421)))))

(declare-fun bs!572218 () Bool)

(assert (= bs!572218 d!1072503))

(declare-fun m!4154321 () Bool)

(assert (=> bs!572218 m!4154321))

(assert (=> b!3649107 d!1072503))

(declare-fun b!3649696 () Bool)

(declare-fun res!1480547 () Bool)

(declare-fun e!2259535 () Bool)

(assert (=> b!3649696 (=> (not res!1480547) (not e!2259535))))

(declare-fun lt!1265853 () Option!8147)

(assert (=> b!3649696 (= res!1480547 (= (++!9575 (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265853)))) (_2!22307 (get!12637 lt!1265853))) lt!1265406))))

(declare-fun b!3649698 () Bool)

(declare-fun e!2259533 () Bool)

(assert (=> b!3649698 (= e!2259533 e!2259535)))

(declare-fun res!1480549 () Bool)

(assert (=> b!3649698 (=> (not res!1480549) (not e!2259535))))

(assert (=> b!3649698 (= res!1480549 (isDefined!6379 lt!1265853))))

(declare-fun b!3649699 () Bool)

(declare-fun res!1480545 () Bool)

(assert (=> b!3649699 (=> (not res!1480545) (not e!2259535))))

(assert (=> b!3649699 (= res!1480545 (= (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265853)))) (originalCharacters!6473 (_1!22307 (get!12637 lt!1265853)))))))

(declare-fun b!3649700 () Bool)

(declare-fun res!1480550 () Bool)

(assert (=> b!3649700 (=> (not res!1480550) (not e!2259535))))

(assert (=> b!3649700 (= res!1480550 (matchR!5087 (regex!5759 (rule!8555 (_1!22307 (get!12637 lt!1265853)))) (list!14257 (charsOf!3773 (_1!22307 (get!12637 lt!1265853))))))))

(declare-fun bm!263744 () Bool)

(declare-fun call!263749 () Option!8147)

(assert (=> bm!263744 (= call!263749 (maxPrefixOneRule!2020 thiss!23823 (h!43898 rules!3307) lt!1265406))))

(declare-fun d!1072505 () Bool)

(assert (=> d!1072505 e!2259533))

(declare-fun res!1480546 () Bool)

(assert (=> d!1072505 (=> res!1480546 e!2259533)))

(assert (=> d!1072505 (= res!1480546 (isEmpty!22802 lt!1265853))))

(declare-fun e!2259534 () Option!8147)

(assert (=> d!1072505 (= lt!1265853 e!2259534)))

(declare-fun c!630844 () Bool)

(assert (=> d!1072505 (= c!630844 (and (is-Cons!38478 rules!3307) (is-Nil!38478 (t!297345 rules!3307))))))

(declare-fun lt!1265850 () Unit!55437)

(declare-fun lt!1265852 () Unit!55437)

(assert (=> d!1072505 (= lt!1265850 lt!1265852)))

(assert (=> d!1072505 (isPrefix!3122 lt!1265406 lt!1265406)))

(assert (=> d!1072505 (= lt!1265852 (lemmaIsPrefixRefl!1975 lt!1265406 lt!1265406))))

(assert (=> d!1072505 (rulesValidInductive!2040 thiss!23823 rules!3307)))

(assert (=> d!1072505 (= (maxPrefix!2882 thiss!23823 rules!3307 lt!1265406) lt!1265853)))

(declare-fun b!3649697 () Bool)

(assert (=> b!3649697 (= e!2259535 (contains!7584 rules!3307 (rule!8555 (_1!22307 (get!12637 lt!1265853)))))))

(declare-fun b!3649701 () Bool)

(declare-fun res!1480551 () Bool)

(assert (=> b!3649701 (=> (not res!1480551) (not e!2259535))))

(assert (=> b!3649701 (= res!1480551 (< (size!29380 (_2!22307 (get!12637 lt!1265853))) (size!29380 lt!1265406)))))

(declare-fun b!3649702 () Bool)

(declare-fun res!1480548 () Bool)

(assert (=> b!3649702 (=> (not res!1480548) (not e!2259535))))

(assert (=> b!3649702 (= res!1480548 (= (value!184593 (_1!22307 (get!12637 lt!1265853))) (apply!9261 (transformation!5759 (rule!8555 (_1!22307 (get!12637 lt!1265853)))) (seqFromList!4308 (originalCharacters!6473 (_1!22307 (get!12637 lt!1265853)))))))))

(declare-fun b!3649703 () Bool)

(assert (=> b!3649703 (= e!2259534 call!263749)))

(declare-fun b!3649704 () Bool)

(declare-fun lt!1265851 () Option!8147)

(declare-fun lt!1265854 () Option!8147)

(assert (=> b!3649704 (= e!2259534 (ite (and (is-None!8146 lt!1265851) (is-None!8146 lt!1265854)) None!8146 (ite (is-None!8146 lt!1265854) lt!1265851 (ite (is-None!8146 lt!1265851) lt!1265854 (ite (>= (size!29378 (_1!22307 (v!38002 lt!1265851))) (size!29378 (_1!22307 (v!38002 lt!1265854)))) lt!1265851 lt!1265854)))))))

(assert (=> b!3649704 (= lt!1265851 call!263749)))

(assert (=> b!3649704 (= lt!1265854 (maxPrefix!2882 thiss!23823 (t!297345 rules!3307) lt!1265406))))

(assert (= (and d!1072505 c!630844) b!3649703))

(assert (= (and d!1072505 (not c!630844)) b!3649704))

(assert (= (or b!3649703 b!3649704) bm!263744))

(assert (= (and d!1072505 (not res!1480546)) b!3649698))

(assert (= (and b!3649698 res!1480549) b!3649699))

(assert (= (and b!3649699 res!1480545) b!3649701))

(assert (= (and b!3649701 res!1480551) b!3649696))

(assert (= (and b!3649696 res!1480547) b!3649702))

(assert (= (and b!3649702 res!1480548) b!3649700))

(assert (= (and b!3649700 res!1480550) b!3649697))

(declare-fun m!4154323 () Bool)

(assert (=> b!3649697 m!4154323))

(declare-fun m!4154325 () Bool)

(assert (=> b!3649697 m!4154325))

(assert (=> b!3649696 m!4154323))

(declare-fun m!4154327 () Bool)

(assert (=> b!3649696 m!4154327))

(assert (=> b!3649696 m!4154327))

(declare-fun m!4154329 () Bool)

(assert (=> b!3649696 m!4154329))

(assert (=> b!3649696 m!4154329))

(declare-fun m!4154331 () Bool)

(assert (=> b!3649696 m!4154331))

(declare-fun m!4154333 () Bool)

(assert (=> d!1072505 m!4154333))

(declare-fun m!4154335 () Bool)

(assert (=> d!1072505 m!4154335))

(declare-fun m!4154337 () Bool)

(assert (=> d!1072505 m!4154337))

(assert (=> d!1072505 m!4153817))

(declare-fun m!4154339 () Bool)

(assert (=> b!3649704 m!4154339))

(declare-fun m!4154341 () Bool)

(assert (=> bm!263744 m!4154341))

(assert (=> b!3649701 m!4154323))

(declare-fun m!4154343 () Bool)

(assert (=> b!3649701 m!4154343))

(assert (=> b!3649701 m!4153755))

(declare-fun m!4154345 () Bool)

(assert (=> b!3649698 m!4154345))

(assert (=> b!3649699 m!4154323))

(assert (=> b!3649699 m!4154327))

(assert (=> b!3649699 m!4154327))

(assert (=> b!3649699 m!4154329))

(assert (=> b!3649702 m!4154323))

(declare-fun m!4154347 () Bool)

(assert (=> b!3649702 m!4154347))

(assert (=> b!3649702 m!4154347))

(declare-fun m!4154349 () Bool)

(assert (=> b!3649702 m!4154349))

(assert (=> b!3649700 m!4154323))

(assert (=> b!3649700 m!4154327))

(assert (=> b!3649700 m!4154327))

(assert (=> b!3649700 m!4154329))

(assert (=> b!3649700 m!4154329))

(declare-fun m!4154351 () Bool)

(assert (=> b!3649700 m!4154351))

(assert (=> b!3649107 d!1072505))

(declare-fun d!1072507 () Bool)

(assert (=> d!1072507 (= (list!14257 lt!1265414) (list!14259 (c!630744 lt!1265414)))))

(declare-fun bs!572219 () Bool)

(assert (= bs!572219 d!1072507))

(declare-fun m!4154353 () Bool)

(assert (=> bs!572219 m!4154353))

(assert (=> b!3649107 d!1072507))

(declare-fun d!1072509 () Bool)

(declare-fun lt!1265855 () BalanceConc!23126)

(assert (=> d!1072509 (= (list!14257 lt!1265855) (originalCharacters!6473 token!511))))

(assert (=> d!1072509 (= lt!1265855 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (value!184593 token!511)))))

(assert (=> d!1072509 (= (charsOf!3773 token!511) lt!1265855)))

(declare-fun b_lambda!108229 () Bool)

(assert (=> (not b_lambda!108229) (not d!1072509)))

(declare-fun t!297414 () Bool)

(declare-fun tb!210565 () Bool)

(assert (=> (and b!3649098 (= (toChars!7910 (transformation!5759 (rule!8555 token!511))) (toChars!7910 (transformation!5759 (rule!8555 token!511)))) t!297414) tb!210565))

(declare-fun b!3649705 () Bool)

(declare-fun e!2259536 () Bool)

(declare-fun tp!1112637 () Bool)

(assert (=> b!3649705 (= e!2259536 (and (inv!51930 (c!630744 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (value!184593 token!511)))) tp!1112637))))

(declare-fun result!256414 () Bool)

(assert (=> tb!210565 (= result!256414 (and (inv!51931 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (value!184593 token!511))) e!2259536))))

(assert (= tb!210565 b!3649705))

(declare-fun m!4154355 () Bool)

(assert (=> b!3649705 m!4154355))

(declare-fun m!4154357 () Bool)

(assert (=> tb!210565 m!4154357))

(assert (=> d!1072509 t!297414))

(declare-fun b_and!269875 () Bool)

(assert (= b_and!269835 (and (=> t!297414 result!256414) b_and!269875)))

(declare-fun t!297416 () Bool)

(declare-fun tb!210567 () Bool)

(assert (=> (and b!3649087 (= (toChars!7910 (transformation!5759 rule!403)) (toChars!7910 (transformation!5759 (rule!8555 token!511)))) t!297416) tb!210567))

(declare-fun result!256416 () Bool)

(assert (= result!256416 result!256414))

(assert (=> d!1072509 t!297416))

(declare-fun b_and!269877 () Bool)

(assert (= b_and!269837 (and (=> t!297416 result!256416) b_and!269877)))

(declare-fun tb!210569 () Bool)

(declare-fun t!297418 () Bool)

(assert (=> (and b!3649074 (= (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toChars!7910 (transformation!5759 (rule!8555 token!511)))) t!297418) tb!210569))

(declare-fun result!256418 () Bool)

(assert (= result!256418 result!256414))

(assert (=> d!1072509 t!297418))

(declare-fun b_and!269879 () Bool)

(assert (= b_and!269839 (and (=> t!297418 result!256418) b_and!269879)))

(declare-fun t!297420 () Bool)

(declare-fun tb!210571 () Bool)

(assert (=> (and b!3649110 (= (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toChars!7910 (transformation!5759 (rule!8555 token!511)))) t!297420) tb!210571))

(declare-fun result!256420 () Bool)

(assert (= result!256420 result!256414))

(assert (=> d!1072509 t!297420))

(declare-fun b_and!269881 () Bool)

(assert (= b_and!269841 (and (=> t!297420 result!256420) b_and!269881)))

(declare-fun m!4154359 () Bool)

(assert (=> d!1072509 m!4154359))

(declare-fun m!4154361 () Bool)

(assert (=> d!1072509 m!4154361))

(assert (=> b!3649107 d!1072509))

(declare-fun d!1072511 () Bool)

(declare-fun lt!1265856 () Int)

(assert (=> d!1072511 (= lt!1265856 (size!29380 (list!14257 lt!1265414)))))

(assert (=> d!1072511 (= lt!1265856 (size!29384 (c!630744 lt!1265414)))))

(assert (=> d!1072511 (= (size!29379 lt!1265414) lt!1265856)))

(declare-fun bs!572220 () Bool)

(assert (= bs!572220 d!1072511))

(assert (=> bs!572220 m!4153481))

(assert (=> bs!572220 m!4153481))

(declare-fun m!4154363 () Bool)

(assert (=> bs!572220 m!4154363))

(declare-fun m!4154365 () Bool)

(assert (=> bs!572220 m!4154365))

(assert (=> b!3649108 d!1072511))

(declare-fun d!1072513 () Bool)

(declare-fun lt!1265859 () Bool)

(assert (=> d!1072513 (= lt!1265859 (set.member lt!1265408 (content!5549 lt!1265400)))))

(declare-fun e!2259541 () Bool)

(assert (=> d!1072513 (= lt!1265859 e!2259541)))

(declare-fun res!1480557 () Bool)

(assert (=> d!1072513 (=> (not res!1480557) (not e!2259541))))

(assert (=> d!1072513 (= res!1480557 (is-Cons!38476 lt!1265400))))

(assert (=> d!1072513 (= (contains!7583 lt!1265400 lt!1265408) lt!1265859)))

(declare-fun b!3649710 () Bool)

(declare-fun e!2259542 () Bool)

(assert (=> b!3649710 (= e!2259541 e!2259542)))

(declare-fun res!1480556 () Bool)

(assert (=> b!3649710 (=> res!1480556 e!2259542)))

(assert (=> b!3649710 (= res!1480556 (= (h!43896 lt!1265400) lt!1265408))))

(declare-fun b!3649711 () Bool)

(assert (=> b!3649711 (= e!2259542 (contains!7583 (t!297343 lt!1265400) lt!1265408))))

(assert (= (and d!1072513 res!1480557) b!3649710))

(assert (= (and b!3649710 (not res!1480556)) b!3649711))

(declare-fun m!4154367 () Bool)

(assert (=> d!1072513 m!4154367))

(declare-fun m!4154369 () Bool)

(assert (=> d!1072513 m!4154369))

(declare-fun m!4154371 () Bool)

(assert (=> b!3649711 m!4154371))

(assert (=> b!3649108 d!1072513))

(declare-fun d!1072515 () Bool)

(assert (=> d!1072515 (= (head!7771 lt!1265411) (h!43896 lt!1265411))))

(assert (=> b!3649108 d!1072515))

(declare-fun d!1072517 () Bool)

(assert (=> d!1072517 (= (isEmpty!22798 suffix!1395) (is-Nil!38476 suffix!1395))))

(assert (=> b!3649088 d!1072517))

(declare-fun d!1072519 () Bool)

(declare-fun lt!1265860 () Bool)

(assert (=> d!1072519 (= lt!1265860 (set.member lt!1265404 (content!5549 lt!1265400)))))

(declare-fun e!2259543 () Bool)

(assert (=> d!1072519 (= lt!1265860 e!2259543)))

(declare-fun res!1480559 () Bool)

(assert (=> d!1072519 (=> (not res!1480559) (not e!2259543))))

(assert (=> d!1072519 (= res!1480559 (is-Cons!38476 lt!1265400))))

(assert (=> d!1072519 (= (contains!7583 lt!1265400 lt!1265404) lt!1265860)))

(declare-fun b!3649712 () Bool)

(declare-fun e!2259544 () Bool)

(assert (=> b!3649712 (= e!2259543 e!2259544)))

(declare-fun res!1480558 () Bool)

(assert (=> b!3649712 (=> res!1480558 e!2259544)))

(assert (=> b!3649712 (= res!1480558 (= (h!43896 lt!1265400) lt!1265404))))

(declare-fun b!3649713 () Bool)

(assert (=> b!3649713 (= e!2259544 (contains!7583 (t!297343 lt!1265400) lt!1265404))))

(assert (= (and d!1072519 res!1480559) b!3649712))

(assert (= (and b!3649712 (not res!1480558)) b!3649713))

(assert (=> d!1072519 m!4154367))

(declare-fun m!4154373 () Bool)

(assert (=> d!1072519 m!4154373))

(declare-fun m!4154375 () Bool)

(assert (=> b!3649713 m!4154375))

(assert (=> b!3649069 d!1072519))

(declare-fun d!1072521 () Bool)

(assert (=> d!1072521 (= (head!7771 suffix!1395) (h!43896 suffix!1395))))

(assert (=> b!3649069 d!1072521))

(declare-fun b!3649730 () Bool)

(declare-fun e!2259554 () List!38600)

(declare-fun call!263759 () List!38600)

(assert (=> b!3649730 (= e!2259554 call!263759)))

(declare-fun b!3649731 () Bool)

(declare-fun e!2259553 () List!38600)

(declare-fun e!2259556 () List!38600)

(assert (=> b!3649731 (= e!2259553 e!2259556)))

(declare-fun c!630855 () Bool)

(assert (=> b!3649731 (= c!630855 (is-ElementMatch!10518 (regex!5759 rule!403)))))

(declare-fun d!1072523 () Bool)

(declare-fun c!630856 () Bool)

(assert (=> d!1072523 (= c!630856 (or (is-EmptyExpr!10518 (regex!5759 rule!403)) (is-EmptyLang!10518 (regex!5759 rule!403))))))

(assert (=> d!1072523 (= (usedCharacters!971 (regex!5759 rule!403)) e!2259553)))

(declare-fun b!3649732 () Bool)

(declare-fun e!2259555 () List!38600)

(assert (=> b!3649732 (= e!2259555 e!2259554)))

(declare-fun c!630853 () Bool)

(assert (=> b!3649732 (= c!630853 (is-Union!10518 (regex!5759 rule!403)))))

(declare-fun b!3649733 () Bool)

(declare-fun call!263758 () List!38600)

(assert (=> b!3649733 (= e!2259555 call!263758)))

(declare-fun c!630854 () Bool)

(declare-fun bm!263753 () Bool)

(assert (=> bm!263753 (= call!263758 (usedCharacters!971 (ite c!630854 (reg!10847 (regex!5759 rule!403)) (ite c!630853 (regOne!21549 (regex!5759 rule!403)) (regTwo!21548 (regex!5759 rule!403))))))))

(declare-fun call!263760 () List!38600)

(declare-fun call!263761 () List!38600)

(declare-fun bm!263754 () Bool)

(assert (=> bm!263754 (= call!263759 (++!9575 (ite c!630853 call!263760 call!263761) (ite c!630853 call!263761 call!263760)))))

(declare-fun b!3649734 () Bool)

(assert (=> b!3649734 (= c!630854 (is-Star!10518 (regex!5759 rule!403)))))

(assert (=> b!3649734 (= e!2259556 e!2259555)))

(declare-fun b!3649735 () Bool)

(assert (=> b!3649735 (= e!2259553 Nil!38476)))

(declare-fun bm!263755 () Bool)

(assert (=> bm!263755 (= call!263761 (usedCharacters!971 (ite c!630853 (regTwo!21549 (regex!5759 rule!403)) (regOne!21548 (regex!5759 rule!403)))))))

(declare-fun b!3649736 () Bool)

(assert (=> b!3649736 (= e!2259554 call!263759)))

(declare-fun b!3649737 () Bool)

(assert (=> b!3649737 (= e!2259556 (Cons!38476 (c!630743 (regex!5759 rule!403)) Nil!38476))))

(declare-fun bm!263756 () Bool)

(assert (=> bm!263756 (= call!263760 call!263758)))

(assert (= (and d!1072523 c!630856) b!3649735))

(assert (= (and d!1072523 (not c!630856)) b!3649731))

(assert (= (and b!3649731 c!630855) b!3649737))

(assert (= (and b!3649731 (not c!630855)) b!3649734))

(assert (= (and b!3649734 c!630854) b!3649733))

(assert (= (and b!3649734 (not c!630854)) b!3649732))

(assert (= (and b!3649732 c!630853) b!3649730))

(assert (= (and b!3649732 (not c!630853)) b!3649736))

(assert (= (or b!3649730 b!3649736) bm!263756))

(assert (= (or b!3649730 b!3649736) bm!263755))

(assert (= (or b!3649730 b!3649736) bm!263754))

(assert (= (or b!3649733 bm!263756) bm!263753))

(declare-fun m!4154377 () Bool)

(assert (=> bm!263753 m!4154377))

(declare-fun m!4154379 () Bool)

(assert (=> bm!263754 m!4154379))

(declare-fun m!4154381 () Bool)

(assert (=> bm!263755 m!4154381))

(assert (=> b!3649069 d!1072523))

(declare-fun b!3649748 () Bool)

(declare-fun e!2259563 () Bool)

(declare-fun inv!16 (TokenValue!5989) Bool)

(assert (=> b!3649748 (= e!2259563 (inv!16 (value!184593 token!511)))))

(declare-fun d!1072525 () Bool)

(declare-fun c!630862 () Bool)

(assert (=> d!1072525 (= c!630862 (is-IntegerValue!17967 (value!184593 token!511)))))

(assert (=> d!1072525 (= (inv!21 (value!184593 token!511)) e!2259563)))

(declare-fun b!3649749 () Bool)

(declare-fun e!2259565 () Bool)

(assert (=> b!3649749 (= e!2259563 e!2259565)))

(declare-fun c!630861 () Bool)

(assert (=> b!3649749 (= c!630861 (is-IntegerValue!17968 (value!184593 token!511)))))

(declare-fun b!3649750 () Bool)

(declare-fun e!2259564 () Bool)

(declare-fun inv!15 (TokenValue!5989) Bool)

(assert (=> b!3649750 (= e!2259564 (inv!15 (value!184593 token!511)))))

(declare-fun b!3649751 () Bool)

(declare-fun inv!17 (TokenValue!5989) Bool)

(assert (=> b!3649751 (= e!2259565 (inv!17 (value!184593 token!511)))))

(declare-fun b!3649752 () Bool)

(declare-fun res!1480562 () Bool)

(assert (=> b!3649752 (=> res!1480562 e!2259564)))

(assert (=> b!3649752 (= res!1480562 (not (is-IntegerValue!17969 (value!184593 token!511))))))

(assert (=> b!3649752 (= e!2259565 e!2259564)))

(assert (= (and d!1072525 c!630862) b!3649748))

(assert (= (and d!1072525 (not c!630862)) b!3649749))

(assert (= (and b!3649749 c!630861) b!3649751))

(assert (= (and b!3649749 (not c!630861)) b!3649752))

(assert (= (and b!3649752 (not res!1480562)) b!3649750))

(declare-fun m!4154383 () Bool)

(assert (=> b!3649748 m!4154383))

(declare-fun m!4154385 () Bool)

(assert (=> b!3649750 m!4154385))

(declare-fun m!4154387 () Bool)

(assert (=> b!3649751 m!4154387))

(assert (=> b!3649109 d!1072525))

(declare-fun d!1072527 () Bool)

(declare-fun res!1480565 () Bool)

(declare-fun e!2259568 () Bool)

(assert (=> d!1072527 (=> (not res!1480565) (not e!2259568))))

(declare-fun rulesValid!2211 (LexerInterface!5348 List!38602) Bool)

(assert (=> d!1072527 (= res!1480565 (rulesValid!2211 thiss!23823 rules!3307))))

(assert (=> d!1072527 (= (rulesInvariant!4745 thiss!23823 rules!3307) e!2259568)))

(declare-fun b!3649755 () Bool)

(declare-datatypes ((List!38608 0))(
  ( (Nil!38484) (Cons!38484 (h!43904 String!43281) (t!297471 List!38608)) )
))
(declare-fun noDuplicateTag!2207 (LexerInterface!5348 List!38602 List!38608) Bool)

(assert (=> b!3649755 (= e!2259568 (noDuplicateTag!2207 thiss!23823 rules!3307 Nil!38484))))

(assert (= (and d!1072527 res!1480565) b!3649755))

(declare-fun m!4154389 () Bool)

(assert (=> d!1072527 m!4154389))

(declare-fun m!4154391 () Bool)

(assert (=> b!3649755 m!4154391))

(assert (=> b!3649099 d!1072527))

(declare-fun d!1072529 () Bool)

(declare-fun lt!1265861 () Bool)

(assert (=> d!1072529 (= lt!1265861 (set.member lt!1265408 (content!5549 call!263714)))))

(declare-fun e!2259569 () Bool)

(assert (=> d!1072529 (= lt!1265861 e!2259569)))

(declare-fun res!1480567 () Bool)

(assert (=> d!1072529 (=> (not res!1480567) (not e!2259569))))

(assert (=> d!1072529 (= res!1480567 (is-Cons!38476 call!263714))))

(assert (=> d!1072529 (= (contains!7583 call!263714 lt!1265408) lt!1265861)))

(declare-fun b!3649756 () Bool)

(declare-fun e!2259570 () Bool)

(assert (=> b!3649756 (= e!2259569 e!2259570)))

(declare-fun res!1480566 () Bool)

(assert (=> b!3649756 (=> res!1480566 e!2259570)))

(assert (=> b!3649756 (= res!1480566 (= (h!43896 call!263714) lt!1265408))))

(declare-fun b!3649757 () Bool)

(assert (=> b!3649757 (= e!2259570 (contains!7583 (t!297343 call!263714) lt!1265408))))

(assert (= (and d!1072529 res!1480567) b!3649756))

(assert (= (and b!3649756 (not res!1480566)) b!3649757))

(declare-fun m!4154393 () Bool)

(assert (=> d!1072529 m!4154393))

(declare-fun m!4154395 () Bool)

(assert (=> d!1072529 m!4154395))

(declare-fun m!4154397 () Bool)

(assert (=> b!3649757 m!4154397))

(assert (=> bm!263709 d!1072529))

(declare-fun d!1072531 () Bool)

(declare-fun res!1480572 () Bool)

(declare-fun e!2259575 () Bool)

(assert (=> d!1072531 (=> res!1480572 e!2259575)))

(assert (=> d!1072531 (= res!1480572 (not (is-Cons!38478 rules!3307)))))

(assert (=> d!1072531 (= (sepAndNonSepRulesDisjointChars!1927 rules!3307 rules!3307) e!2259575)))

(declare-fun b!3649762 () Bool)

(declare-fun e!2259576 () Bool)

(assert (=> b!3649762 (= e!2259575 e!2259576)))

(declare-fun res!1480573 () Bool)

(assert (=> b!3649762 (=> (not res!1480573) (not e!2259576))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!878 (Rule!11318 List!38602) Bool)

(assert (=> b!3649762 (= res!1480573 (ruleDisjointCharsFromAllFromOtherType!878 (h!43898 rules!3307) rules!3307))))

(declare-fun b!3649763 () Bool)

(assert (=> b!3649763 (= e!2259576 (sepAndNonSepRulesDisjointChars!1927 rules!3307 (t!297345 rules!3307)))))

(assert (= (and d!1072531 (not res!1480572)) b!3649762))

(assert (= (and b!3649762 res!1480573) b!3649763))

(declare-fun m!4154399 () Bool)

(assert (=> b!3649762 m!4154399))

(declare-fun m!4154401 () Bool)

(assert (=> b!3649763 m!4154401))

(assert (=> b!3649100 d!1072531))

(declare-fun b!3649792 () Bool)

(declare-fun res!1480594 () Bool)

(declare-fun e!2259597 () Bool)

(assert (=> b!3649792 (=> res!1480594 e!2259597)))

(declare-fun e!2259591 () Bool)

(assert (=> b!3649792 (= res!1480594 e!2259591)))

(declare-fun res!1480591 () Bool)

(assert (=> b!3649792 (=> (not res!1480591) (not e!2259591))))

(declare-fun lt!1265864 () Bool)

(assert (=> b!3649792 (= res!1480591 lt!1265864)))

(declare-fun d!1072533 () Bool)

(declare-fun e!2259593 () Bool)

(assert (=> d!1072533 e!2259593))

(declare-fun c!630869 () Bool)

(assert (=> d!1072533 (= c!630869 (is-EmptyExpr!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun e!2259594 () Bool)

(assert (=> d!1072533 (= lt!1265864 e!2259594)))

(declare-fun c!630871 () Bool)

(assert (=> d!1072533 (= c!630871 (isEmpty!22798 lt!1265411))))

(assert (=> d!1072533 (validRegex!4816 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))

(assert (=> d!1072533 (= (matchR!5087 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411) lt!1265864)))

(declare-fun bm!263759 () Bool)

(declare-fun call!263764 () Bool)

(assert (=> bm!263759 (= call!263764 (isEmpty!22798 lt!1265411))))

(declare-fun b!3649793 () Bool)

(assert (=> b!3649793 (= e!2259591 (= (head!7771 lt!1265411) (c!630743 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))

(declare-fun b!3649794 () Bool)

(declare-fun res!1480597 () Bool)

(assert (=> b!3649794 (=> (not res!1480597) (not e!2259591))))

(assert (=> b!3649794 (= res!1480597 (not call!263764))))

(declare-fun b!3649795 () Bool)

(declare-fun nullable!3654 (Regex!10518) Bool)

(assert (=> b!3649795 (= e!2259594 (nullable!3654 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649796 () Bool)

(declare-fun e!2259596 () Bool)

(assert (=> b!3649796 (= e!2259597 e!2259596)))

(declare-fun res!1480590 () Bool)

(assert (=> b!3649796 (=> (not res!1480590) (not e!2259596))))

(assert (=> b!3649796 (= res!1480590 (not lt!1265864))))

(declare-fun b!3649797 () Bool)

(declare-fun e!2259592 () Bool)

(assert (=> b!3649797 (= e!2259593 e!2259592)))

(declare-fun c!630870 () Bool)

(assert (=> b!3649797 (= c!630870 (is-EmptyLang!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649798 () Bool)

(declare-fun res!1480593 () Bool)

(assert (=> b!3649798 (=> (not res!1480593) (not e!2259591))))

(assert (=> b!3649798 (= res!1480593 (isEmpty!22798 (tail!5652 lt!1265411)))))

(declare-fun b!3649799 () Bool)

(assert (=> b!3649799 (= e!2259593 (= lt!1265864 call!263764))))

(declare-fun b!3649800 () Bool)

(declare-fun res!1480596 () Bool)

(assert (=> b!3649800 (=> res!1480596 e!2259597)))

(assert (=> b!3649800 (= res!1480596 (not (is-ElementMatch!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))

(assert (=> b!3649800 (= e!2259592 e!2259597)))

(declare-fun b!3649801 () Bool)

(assert (=> b!3649801 (= e!2259592 (not lt!1265864))))

(declare-fun b!3649802 () Bool)

(declare-fun e!2259595 () Bool)

(assert (=> b!3649802 (= e!2259596 e!2259595)))

(declare-fun res!1480595 () Bool)

(assert (=> b!3649802 (=> res!1480595 e!2259595)))

(assert (=> b!3649802 (= res!1480595 call!263764)))

(declare-fun b!3649803 () Bool)

(assert (=> b!3649803 (= e!2259595 (not (= (head!7771 lt!1265411) (c!630743 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))))

(declare-fun b!3649804 () Bool)

(declare-fun derivativeStep!3203 (Regex!10518 C!21222) Regex!10518)

(assert (=> b!3649804 (= e!2259594 (matchR!5087 (derivativeStep!3203 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) (head!7771 lt!1265411)) (tail!5652 lt!1265411)))))

(declare-fun b!3649805 () Bool)

(declare-fun res!1480592 () Bool)

(assert (=> b!3649805 (=> res!1480592 e!2259595)))

(assert (=> b!3649805 (= res!1480592 (not (isEmpty!22798 (tail!5652 lt!1265411))))))

(assert (= (and d!1072533 c!630871) b!3649795))

(assert (= (and d!1072533 (not c!630871)) b!3649804))

(assert (= (and d!1072533 c!630869) b!3649799))

(assert (= (and d!1072533 (not c!630869)) b!3649797))

(assert (= (and b!3649797 c!630870) b!3649801))

(assert (= (and b!3649797 (not c!630870)) b!3649800))

(assert (= (and b!3649800 (not res!1480596)) b!3649792))

(assert (= (and b!3649792 res!1480591) b!3649794))

(assert (= (and b!3649794 res!1480597) b!3649798))

(assert (= (and b!3649798 res!1480593) b!3649793))

(assert (= (and b!3649792 (not res!1480594)) b!3649796))

(assert (= (and b!3649796 res!1480590) b!3649802))

(assert (= (and b!3649802 (not res!1480595)) b!3649805))

(assert (= (and b!3649805 (not res!1480592)) b!3649803))

(assert (= (or b!3649799 b!3649794 b!3649802) bm!263759))

(assert (=> b!3649798 m!4153767))

(assert (=> b!3649798 m!4153767))

(declare-fun m!4154403 () Bool)

(assert (=> b!3649798 m!4154403))

(declare-fun m!4154405 () Bool)

(assert (=> b!3649795 m!4154405))

(declare-fun m!4154407 () Bool)

(assert (=> bm!263759 m!4154407))

(assert (=> b!3649793 m!4153383))

(assert (=> b!3649805 m!4153767))

(assert (=> b!3649805 m!4153767))

(assert (=> b!3649805 m!4154403))

(assert (=> d!1072533 m!4154407))

(assert (=> d!1072533 m!4153351))

(assert (=> b!3649804 m!4153383))

(assert (=> b!3649804 m!4153383))

(declare-fun m!4154409 () Bool)

(assert (=> b!3649804 m!4154409))

(assert (=> b!3649804 m!4153767))

(assert (=> b!3649804 m!4154409))

(assert (=> b!3649804 m!4153767))

(declare-fun m!4154411 () Bool)

(assert (=> b!3649804 m!4154411))

(assert (=> b!3649803 m!4153383))

(assert (=> b!3649101 d!1072533))

(declare-fun d!1072535 () Bool)

(assert (=> d!1072535 (not (contains!7583 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265408))))

(declare-fun lt!1265867 () Unit!55437)

(declare-fun choose!21508 (LexerInterface!5348 List!38602 List!38602 Rule!11318 Rule!11318 C!21222) Unit!55437)

(assert (=> d!1072535 (= lt!1265867 (choose!21508 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8555 (_1!22307 lt!1265424)) lt!1265408))))

(assert (=> d!1072535 (rulesInvariant!4745 thiss!23823 rules!3307)))

(assert (=> d!1072535 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!287 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8555 (_1!22307 lt!1265424)) lt!1265408) lt!1265867)))

(declare-fun bs!572221 () Bool)

(assert (= bs!572221 d!1072535))

(assert (=> bs!572221 m!4153353))

(assert (=> bs!572221 m!4153353))

(assert (=> bs!572221 m!4153659))

(declare-fun m!4154413 () Bool)

(assert (=> bs!572221 m!4154413))

(assert (=> bs!572221 m!4153377))

(assert (=> b!3649081 d!1072535))

(declare-fun d!1072537 () Bool)

(declare-fun lt!1265868 () Bool)

(assert (=> d!1072537 (= lt!1265868 (set.member lt!1265404 (content!5549 lt!1265411)))))

(declare-fun e!2259598 () Bool)

(assert (=> d!1072537 (= lt!1265868 e!2259598)))

(declare-fun res!1480599 () Bool)

(assert (=> d!1072537 (=> (not res!1480599) (not e!2259598))))

(assert (=> d!1072537 (= res!1480599 (is-Cons!38476 lt!1265411))))

(assert (=> d!1072537 (= (contains!7583 lt!1265411 lt!1265404) lt!1265868)))

(declare-fun b!3649806 () Bool)

(declare-fun e!2259599 () Bool)

(assert (=> b!3649806 (= e!2259598 e!2259599)))

(declare-fun res!1480598 () Bool)

(assert (=> b!3649806 (=> res!1480598 e!2259599)))

(assert (=> b!3649806 (= res!1480598 (= (h!43896 lt!1265411) lt!1265404))))

(declare-fun b!3649807 () Bool)

(assert (=> b!3649807 (= e!2259599 (contains!7583 (t!297343 lt!1265411) lt!1265404))))

(assert (= (and d!1072537 res!1480599) b!3649806))

(assert (= (and b!3649806 (not res!1480598)) b!3649807))

(assert (=> d!1072537 m!4153791))

(declare-fun m!4154415 () Bool)

(assert (=> d!1072537 m!4154415))

(declare-fun m!4154417 () Bool)

(assert (=> b!3649807 m!4154417))

(assert (=> b!3649102 d!1072537))

(declare-fun d!1072539 () Bool)

(assert (=> d!1072539 (contains!7583 lt!1265411 (head!7771 suffix!1395))))

(declare-fun lt!1265871 () Unit!55437)

(declare-fun choose!21509 (List!38600 List!38600 List!38600 List!38600) Unit!55437)

(assert (=> d!1072539 (= lt!1265871 (choose!21509 lt!1265406 suffix!1395 lt!1265411 lt!1265399))))

(assert (=> d!1072539 (isPrefix!3122 lt!1265411 lt!1265399)))

(assert (=> d!1072539 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!67 lt!1265406 suffix!1395 lt!1265411 lt!1265399) lt!1265871)))

(declare-fun bs!572222 () Bool)

(assert (= bs!572222 d!1072539))

(assert (=> bs!572222 m!4153471))

(assert (=> bs!572222 m!4153471))

(declare-fun m!4154419 () Bool)

(assert (=> bs!572222 m!4154419))

(declare-fun m!4154421 () Bool)

(assert (=> bs!572222 m!4154421))

(assert (=> bs!572222 m!4153445))

(assert (=> b!3649102 d!1072539))

(declare-fun b!3649808 () Bool)

(declare-fun res!1480604 () Bool)

(declare-fun e!2259606 () Bool)

(assert (=> b!3649808 (=> res!1480604 e!2259606)))

(declare-fun e!2259600 () Bool)

(assert (=> b!3649808 (= res!1480604 e!2259600)))

(declare-fun res!1480601 () Bool)

(assert (=> b!3649808 (=> (not res!1480601) (not e!2259600))))

(declare-fun lt!1265872 () Bool)

(assert (=> b!3649808 (= res!1480601 lt!1265872)))

(declare-fun d!1072541 () Bool)

(declare-fun e!2259602 () Bool)

(assert (=> d!1072541 e!2259602))

(declare-fun c!630873 () Bool)

(assert (=> d!1072541 (= c!630873 (is-EmptyExpr!10518 (regex!5759 rule!403)))))

(declare-fun e!2259603 () Bool)

(assert (=> d!1072541 (= lt!1265872 e!2259603)))

(declare-fun c!630875 () Bool)

(assert (=> d!1072541 (= c!630875 (isEmpty!22798 lt!1265406))))

(assert (=> d!1072541 (validRegex!4816 (regex!5759 rule!403))))

(assert (=> d!1072541 (= (matchR!5087 (regex!5759 rule!403) lt!1265406) lt!1265872)))

(declare-fun bm!263760 () Bool)

(declare-fun call!263765 () Bool)

(assert (=> bm!263760 (= call!263765 (isEmpty!22798 lt!1265406))))

(declare-fun b!3649809 () Bool)

(assert (=> b!3649809 (= e!2259600 (= (head!7771 lt!1265406) (c!630743 (regex!5759 rule!403))))))

(declare-fun b!3649810 () Bool)

(declare-fun res!1480607 () Bool)

(assert (=> b!3649810 (=> (not res!1480607) (not e!2259600))))

(assert (=> b!3649810 (= res!1480607 (not call!263765))))

(declare-fun b!3649811 () Bool)

(assert (=> b!3649811 (= e!2259603 (nullable!3654 (regex!5759 rule!403)))))

(declare-fun b!3649812 () Bool)

(declare-fun e!2259605 () Bool)

(assert (=> b!3649812 (= e!2259606 e!2259605)))

(declare-fun res!1480600 () Bool)

(assert (=> b!3649812 (=> (not res!1480600) (not e!2259605))))

(assert (=> b!3649812 (= res!1480600 (not lt!1265872))))

(declare-fun b!3649813 () Bool)

(declare-fun e!2259601 () Bool)

(assert (=> b!3649813 (= e!2259602 e!2259601)))

(declare-fun c!630874 () Bool)

(assert (=> b!3649813 (= c!630874 (is-EmptyLang!10518 (regex!5759 rule!403)))))

(declare-fun b!3649814 () Bool)

(declare-fun res!1480603 () Bool)

(assert (=> b!3649814 (=> (not res!1480603) (not e!2259600))))

(assert (=> b!3649814 (= res!1480603 (isEmpty!22798 (tail!5652 lt!1265406)))))

(declare-fun b!3649815 () Bool)

(assert (=> b!3649815 (= e!2259602 (= lt!1265872 call!263765))))

(declare-fun b!3649816 () Bool)

(declare-fun res!1480606 () Bool)

(assert (=> b!3649816 (=> res!1480606 e!2259606)))

(assert (=> b!3649816 (= res!1480606 (not (is-ElementMatch!10518 (regex!5759 rule!403))))))

(assert (=> b!3649816 (= e!2259601 e!2259606)))

(declare-fun b!3649817 () Bool)

(assert (=> b!3649817 (= e!2259601 (not lt!1265872))))

(declare-fun b!3649818 () Bool)

(declare-fun e!2259604 () Bool)

(assert (=> b!3649818 (= e!2259605 e!2259604)))

(declare-fun res!1480605 () Bool)

(assert (=> b!3649818 (=> res!1480605 e!2259604)))

(assert (=> b!3649818 (= res!1480605 call!263765)))

(declare-fun b!3649819 () Bool)

(assert (=> b!3649819 (= e!2259604 (not (= (head!7771 lt!1265406) (c!630743 (regex!5759 rule!403)))))))

(declare-fun b!3649820 () Bool)

(assert (=> b!3649820 (= e!2259603 (matchR!5087 (derivativeStep!3203 (regex!5759 rule!403) (head!7771 lt!1265406)) (tail!5652 lt!1265406)))))

(declare-fun b!3649821 () Bool)

(declare-fun res!1480602 () Bool)

(assert (=> b!3649821 (=> res!1480602 e!2259604)))

(assert (=> b!3649821 (= res!1480602 (not (isEmpty!22798 (tail!5652 lt!1265406))))))

(assert (= (and d!1072541 c!630875) b!3649811))

(assert (= (and d!1072541 (not c!630875)) b!3649820))

(assert (= (and d!1072541 c!630873) b!3649815))

(assert (= (and d!1072541 (not c!630873)) b!3649813))

(assert (= (and b!3649813 c!630874) b!3649817))

(assert (= (and b!3649813 (not c!630874)) b!3649816))

(assert (= (and b!3649816 (not res!1480606)) b!3649808))

(assert (= (and b!3649808 res!1480601) b!3649810))

(assert (= (and b!3649810 res!1480607) b!3649814))

(assert (= (and b!3649814 res!1480603) b!3649809))

(assert (= (and b!3649808 (not res!1480604)) b!3649812))

(assert (= (and b!3649812 res!1480600) b!3649818))

(assert (= (and b!3649818 (not res!1480605)) b!3649821))

(assert (= (and b!3649821 (not res!1480602)) b!3649819))

(assert (= (or b!3649815 b!3649810 b!3649818) bm!263760))

(assert (=> b!3649814 m!4153761))

(assert (=> b!3649814 m!4153761))

(declare-fun m!4154423 () Bool)

(assert (=> b!3649814 m!4154423))

(declare-fun m!4154425 () Bool)

(assert (=> b!3649811 m!4154425))

(declare-fun m!4154427 () Bool)

(assert (=> bm!263760 m!4154427))

(assert (=> b!3649809 m!4153757))

(assert (=> b!3649821 m!4153761))

(assert (=> b!3649821 m!4153761))

(assert (=> b!3649821 m!4154423))

(assert (=> d!1072541 m!4154427))

(declare-fun m!4154429 () Bool)

(assert (=> d!1072541 m!4154429))

(assert (=> b!3649820 m!4153757))

(assert (=> b!3649820 m!4153757))

(declare-fun m!4154431 () Bool)

(assert (=> b!3649820 m!4154431))

(assert (=> b!3649820 m!4153761))

(assert (=> b!3649820 m!4154431))

(assert (=> b!3649820 m!4153761))

(declare-fun m!4154433 () Bool)

(assert (=> b!3649820 m!4154433))

(assert (=> b!3649819 m!4153757))

(assert (=> b!3649103 d!1072541))

(declare-fun d!1072543 () Bool)

(declare-fun res!1480612 () Bool)

(declare-fun e!2259609 () Bool)

(assert (=> d!1072543 (=> (not res!1480612) (not e!2259609))))

(assert (=> d!1072543 (= res!1480612 (validRegex!4816 (regex!5759 rule!403)))))

(assert (=> d!1072543 (= (ruleValid!2023 thiss!23823 rule!403) e!2259609)))

(declare-fun b!3649826 () Bool)

(declare-fun res!1480613 () Bool)

(assert (=> b!3649826 (=> (not res!1480613) (not e!2259609))))

(assert (=> b!3649826 (= res!1480613 (not (nullable!3654 (regex!5759 rule!403))))))

(declare-fun b!3649827 () Bool)

(assert (=> b!3649827 (= e!2259609 (not (= (tag!6521 rule!403) (String!43282 ""))))))

(assert (= (and d!1072543 res!1480612) b!3649826))

(assert (= (and b!3649826 res!1480613) b!3649827))

(assert (=> d!1072543 m!4154429))

(assert (=> b!3649826 m!4154425))

(assert (=> b!3649103 d!1072543))

(declare-fun d!1072545 () Bool)

(assert (=> d!1072545 (ruleValid!2023 thiss!23823 rule!403)))

(declare-fun lt!1265875 () Unit!55437)

(declare-fun choose!21510 (LexerInterface!5348 Rule!11318 List!38602) Unit!55437)

(assert (=> d!1072545 (= lt!1265875 (choose!21510 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1072545 (contains!7584 rules!3307 rule!403)))

(assert (=> d!1072545 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1177 thiss!23823 rule!403 rules!3307) lt!1265875)))

(declare-fun bs!572223 () Bool)

(assert (= bs!572223 d!1072545))

(assert (=> bs!572223 m!4153487))

(declare-fun m!4154435 () Bool)

(assert (=> bs!572223 m!4154435))

(assert (=> bs!572223 m!4153453))

(assert (=> b!3649103 d!1072545))

(declare-fun d!1072547 () Bool)

(declare-fun res!1480618 () Bool)

(declare-fun e!2259612 () Bool)

(assert (=> d!1072547 (=> (not res!1480618) (not e!2259612))))

(assert (=> d!1072547 (= res!1480618 (not (isEmpty!22798 (originalCharacters!6473 token!511))))))

(assert (=> d!1072547 (= (inv!51927 token!511) e!2259612)))

(declare-fun b!3649832 () Bool)

(declare-fun res!1480619 () Bool)

(assert (=> b!3649832 (=> (not res!1480619) (not e!2259612))))

(assert (=> b!3649832 (= res!1480619 (= (originalCharacters!6473 token!511) (list!14257 (dynLambda!16771 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (value!184593 token!511)))))))

(declare-fun b!3649833 () Bool)

(assert (=> b!3649833 (= e!2259612 (= (size!29378 token!511) (size!29380 (originalCharacters!6473 token!511))))))

(assert (= (and d!1072547 res!1480618) b!3649832))

(assert (= (and b!3649832 res!1480619) b!3649833))

(declare-fun b_lambda!108231 () Bool)

(assert (=> (not b_lambda!108231) (not b!3649832)))

(assert (=> b!3649832 t!297414))

(declare-fun b_and!269883 () Bool)

(assert (= b_and!269875 (and (=> t!297414 result!256414) b_and!269883)))

(assert (=> b!3649832 t!297416))

(declare-fun b_and!269885 () Bool)

(assert (= b_and!269877 (and (=> t!297416 result!256416) b_and!269885)))

(assert (=> b!3649832 t!297418))

(declare-fun b_and!269887 () Bool)

(assert (= b_and!269879 (and (=> t!297418 result!256418) b_and!269887)))

(assert (=> b!3649832 t!297420))

(declare-fun b_and!269889 () Bool)

(assert (= b_and!269881 (and (=> t!297420 result!256420) b_and!269889)))

(declare-fun m!4154437 () Bool)

(assert (=> d!1072547 m!4154437))

(assert (=> b!3649832 m!4154361))

(assert (=> b!3649832 m!4154361))

(declare-fun m!4154439 () Bool)

(assert (=> b!3649832 m!4154439))

(declare-fun m!4154441 () Bool)

(assert (=> b!3649833 m!4154441))

(assert (=> start!341152 d!1072547))

(declare-fun b!3649852 () Bool)

(declare-fun e!2259628 () Bool)

(declare-fun e!2259630 () Bool)

(assert (=> b!3649852 (= e!2259628 e!2259630)))

(declare-fun c!630881 () Bool)

(assert (=> b!3649852 (= c!630881 (is-Star!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649853 () Bool)

(declare-fun res!1480634 () Bool)

(declare-fun e!2259629 () Bool)

(assert (=> b!3649853 (=> res!1480634 e!2259629)))

(assert (=> b!3649853 (= res!1480634 (not (is-Concat!16508 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))

(declare-fun e!2259631 () Bool)

(assert (=> b!3649853 (= e!2259631 e!2259629)))

(declare-fun call!263774 () Bool)

(declare-fun c!630880 () Bool)

(declare-fun bm!263767 () Bool)

(assert (=> bm!263767 (= call!263774 (validRegex!4816 (ite c!630881 (reg!10847 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (ite c!630880 (regOne!21549 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (regTwo!21548 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))))

(declare-fun bm!263768 () Bool)

(declare-fun call!263772 () Bool)

(assert (=> bm!263768 (= call!263772 call!263774)))

(declare-fun b!3649854 () Bool)

(declare-fun e!2259633 () Bool)

(assert (=> b!3649854 (= e!2259630 e!2259633)))

(declare-fun res!1480631 () Bool)

(assert (=> b!3649854 (= res!1480631 (not (nullable!3654 (reg!10847 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))))

(assert (=> b!3649854 (=> (not res!1480631) (not e!2259633))))

(declare-fun b!3649855 () Bool)

(declare-fun res!1480632 () Bool)

(declare-fun e!2259627 () Bool)

(assert (=> b!3649855 (=> (not res!1480632) (not e!2259627))))

(assert (=> b!3649855 (= res!1480632 call!263772)))

(assert (=> b!3649855 (= e!2259631 e!2259627)))

(declare-fun b!3649856 () Bool)

(declare-fun call!263773 () Bool)

(assert (=> b!3649856 (= e!2259627 call!263773)))

(declare-fun d!1072549 () Bool)

(declare-fun res!1480633 () Bool)

(assert (=> d!1072549 (=> res!1480633 e!2259628)))

(assert (=> d!1072549 (= res!1480633 (is-ElementMatch!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(assert (=> d!1072549 (= (validRegex!4816 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) e!2259628)))

(declare-fun b!3649857 () Bool)

(declare-fun e!2259632 () Bool)

(assert (=> b!3649857 (= e!2259632 call!263772)))

(declare-fun b!3649858 () Bool)

(assert (=> b!3649858 (= e!2259630 e!2259631)))

(assert (=> b!3649858 (= c!630880 (is-Union!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649859 () Bool)

(assert (=> b!3649859 (= e!2259629 e!2259632)))

(declare-fun res!1480630 () Bool)

(assert (=> b!3649859 (=> (not res!1480630) (not e!2259632))))

(assert (=> b!3649859 (= res!1480630 call!263773)))

(declare-fun b!3649860 () Bool)

(assert (=> b!3649860 (= e!2259633 call!263774)))

(declare-fun bm!263769 () Bool)

(assert (=> bm!263769 (= call!263773 (validRegex!4816 (ite c!630880 (regTwo!21549 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (regOne!21548 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))))

(assert (= (and d!1072549 (not res!1480633)) b!3649852))

(assert (= (and b!3649852 c!630881) b!3649854))

(assert (= (and b!3649852 (not c!630881)) b!3649858))

(assert (= (and b!3649854 res!1480631) b!3649860))

(assert (= (and b!3649858 c!630880) b!3649855))

(assert (= (and b!3649858 (not c!630880)) b!3649853))

(assert (= (and b!3649855 res!1480632) b!3649856))

(assert (= (and b!3649853 (not res!1480634)) b!3649859))

(assert (= (and b!3649859 res!1480630) b!3649857))

(assert (= (or b!3649855 b!3649857) bm!263768))

(assert (= (or b!3649856 b!3649859) bm!263769))

(assert (= (or b!3649860 bm!263768) bm!263767))

(declare-fun m!4154443 () Bool)

(assert (=> bm!263767 m!4154443))

(declare-fun m!4154445 () Bool)

(assert (=> b!3649854 m!4154445))

(declare-fun m!4154447 () Bool)

(assert (=> bm!263769 m!4154447))

(assert (=> b!3649075 d!1072549))

(declare-fun d!1072551 () Bool)

(declare-fun lt!1265876 () Bool)

(assert (=> d!1072551 (= lt!1265876 (set.member lt!1265404 (content!5549 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))))

(declare-fun e!2259634 () Bool)

(assert (=> d!1072551 (= lt!1265876 e!2259634)))

(declare-fun res!1480636 () Bool)

(assert (=> d!1072551 (=> (not res!1480636) (not e!2259634))))

(assert (=> d!1072551 (= res!1480636 (is-Cons!38476 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))

(assert (=> d!1072551 (= (contains!7583 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265404) lt!1265876)))

(declare-fun b!3649861 () Bool)

(declare-fun e!2259635 () Bool)

(assert (=> b!3649861 (= e!2259634 e!2259635)))

(declare-fun res!1480635 () Bool)

(assert (=> b!3649861 (=> res!1480635 e!2259635)))

(assert (=> b!3649861 (= res!1480635 (= (h!43896 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))) lt!1265404))))

(declare-fun b!3649862 () Bool)

(assert (=> b!3649862 (= e!2259635 (contains!7583 (t!297343 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))) lt!1265404))))

(assert (= (and d!1072551 res!1480636) b!3649861))

(assert (= (and b!3649861 (not res!1480635)) b!3649862))

(assert (=> d!1072551 m!4153353))

(declare-fun m!4154449 () Bool)

(assert (=> d!1072551 m!4154449))

(declare-fun m!4154451 () Bool)

(assert (=> d!1072551 m!4154451))

(declare-fun m!4154453 () Bool)

(assert (=> b!3649862 m!4154453))

(assert (=> b!3649075 d!1072551))

(declare-fun b!3649863 () Bool)

(declare-fun e!2259637 () List!38600)

(declare-fun call!263776 () List!38600)

(assert (=> b!3649863 (= e!2259637 call!263776)))

(declare-fun b!3649864 () Bool)

(declare-fun e!2259636 () List!38600)

(declare-fun e!2259639 () List!38600)

(assert (=> b!3649864 (= e!2259636 e!2259639)))

(declare-fun c!630884 () Bool)

(assert (=> b!3649864 (= c!630884 (is-ElementMatch!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun d!1072553 () Bool)

(declare-fun c!630885 () Bool)

(assert (=> d!1072553 (= c!630885 (or (is-EmptyExpr!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (is-EmptyLang!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))

(assert (=> d!1072553 (= (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) e!2259636)))

(declare-fun b!3649865 () Bool)

(declare-fun e!2259638 () List!38600)

(assert (=> b!3649865 (= e!2259638 e!2259637)))

(declare-fun c!630882 () Bool)

(assert (=> b!3649865 (= c!630882 (is-Union!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(declare-fun b!3649866 () Bool)

(declare-fun call!263775 () List!38600)

(assert (=> b!3649866 (= e!2259638 call!263775)))

(declare-fun bm!263770 () Bool)

(declare-fun c!630883 () Bool)

(assert (=> bm!263770 (= call!263775 (usedCharacters!971 (ite c!630883 (reg!10847 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (ite c!630882 (regOne!21549 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (regTwo!21548 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))))))

(declare-fun call!263778 () List!38600)

(declare-fun bm!263771 () Bool)

(declare-fun call!263777 () List!38600)

(assert (=> bm!263771 (= call!263776 (++!9575 (ite c!630882 call!263777 call!263778) (ite c!630882 call!263778 call!263777)))))

(declare-fun b!3649867 () Bool)

(assert (=> b!3649867 (= c!630883 (is-Star!10518 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))

(assert (=> b!3649867 (= e!2259639 e!2259638)))

(declare-fun b!3649868 () Bool)

(assert (=> b!3649868 (= e!2259636 Nil!38476)))

(declare-fun bm!263772 () Bool)

(assert (=> bm!263772 (= call!263778 (usedCharacters!971 (ite c!630882 (regTwo!21549 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) (regOne!21548 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))))))))

(declare-fun b!3649869 () Bool)

(assert (=> b!3649869 (= e!2259637 call!263776)))

(declare-fun b!3649870 () Bool)

(assert (=> b!3649870 (= e!2259639 (Cons!38476 (c!630743 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) Nil!38476))))

(declare-fun bm!263773 () Bool)

(assert (=> bm!263773 (= call!263777 call!263775)))

(assert (= (and d!1072553 c!630885) b!3649868))

(assert (= (and d!1072553 (not c!630885)) b!3649864))

(assert (= (and b!3649864 c!630884) b!3649870))

(assert (= (and b!3649864 (not c!630884)) b!3649867))

(assert (= (and b!3649867 c!630883) b!3649866))

(assert (= (and b!3649867 (not c!630883)) b!3649865))

(assert (= (and b!3649865 c!630882) b!3649863))

(assert (= (and b!3649865 (not c!630882)) b!3649869))

(assert (= (or b!3649863 b!3649869) bm!263773))

(assert (= (or b!3649863 b!3649869) bm!263772))

(assert (= (or b!3649863 b!3649869) bm!263771))

(assert (= (or b!3649866 bm!263773) bm!263770))

(declare-fun m!4154455 () Bool)

(assert (=> bm!263770 m!4154455))

(declare-fun m!4154457 () Bool)

(assert (=> bm!263771 m!4154457))

(declare-fun m!4154459 () Bool)

(assert (=> bm!263772 m!4154459))

(assert (=> b!3649075 d!1072553))

(declare-fun d!1072555 () Bool)

(assert (=> d!1072555 (not (contains!7583 (usedCharacters!971 (regex!5759 (rule!8555 (_1!22307 lt!1265424)))) lt!1265404))))

(declare-fun lt!1265877 () Unit!55437)

(assert (=> d!1072555 (= lt!1265877 (choose!21508 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8555 (_1!22307 lt!1265424)) lt!1265404))))

(assert (=> d!1072555 (rulesInvariant!4745 thiss!23823 rules!3307)))

(assert (=> d!1072555 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!287 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8555 (_1!22307 lt!1265424)) lt!1265404) lt!1265877)))

(declare-fun bs!572224 () Bool)

(assert (= bs!572224 d!1072555))

(assert (=> bs!572224 m!4153353))

(assert (=> bs!572224 m!4153353))

(assert (=> bs!572224 m!4153355))

(declare-fun m!4154461 () Bool)

(assert (=> bs!572224 m!4154461))

(assert (=> bs!572224 m!4153377))

(assert (=> b!3649075 d!1072555))

(declare-fun d!1072557 () Bool)

(assert (=> d!1072557 (not (matchR!5087 (regex!5759 rule!403) lt!1265406))))

(declare-fun lt!1265880 () Unit!55437)

(declare-fun choose!21514 (Regex!10518 List!38600 C!21222) Unit!55437)

(assert (=> d!1072557 (= lt!1265880 (choose!21514 (regex!5759 rule!403) lt!1265406 lt!1265408))))

(assert (=> d!1072557 (validRegex!4816 (regex!5759 rule!403))))

(assert (=> d!1072557 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!707 (regex!5759 rule!403) lt!1265406 lt!1265408) lt!1265880)))

(declare-fun bs!572225 () Bool)

(assert (= bs!572225 d!1072557))

(assert (=> bs!572225 m!4153485))

(declare-fun m!4154463 () Bool)

(assert (=> bs!572225 m!4154463))

(assert (=> bs!572225 m!4154429))

(assert (=> b!3649095 d!1072557))

(assert (=> bm!263708 d!1072553))

(declare-fun d!1072559 () Bool)

(assert (=> d!1072559 (not (matchR!5087 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411))))

(declare-fun lt!1265881 () Unit!55437)

(assert (=> d!1072559 (= lt!1265881 (choose!21514 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411 lt!1265408))))

(assert (=> d!1072559 (validRegex!4816 (regex!5759 (rule!8555 (_1!22307 lt!1265424))))))

(assert (=> d!1072559 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!707 (regex!5759 (rule!8555 (_1!22307 lt!1265424))) lt!1265411 lt!1265408) lt!1265881)))

(declare-fun bs!572226 () Bool)

(assert (= bs!572226 d!1072559))

(assert (=> bs!572226 m!4153363))

(declare-fun m!4154465 () Bool)

(assert (=> bs!572226 m!4154465))

(assert (=> bs!572226 m!4153351))

(assert (=> bm!263710 d!1072559))

(declare-fun d!1072561 () Bool)

(declare-fun lt!1265882 () Bool)

(assert (=> d!1072561 (= lt!1265882 (set.member lt!1265404 (content!5549 (usedCharacters!971 (regex!5759 anOtherTypeRule!33)))))))

(declare-fun e!2259640 () Bool)

(assert (=> d!1072561 (= lt!1265882 e!2259640)))

(declare-fun res!1480638 () Bool)

(assert (=> d!1072561 (=> (not res!1480638) (not e!2259640))))

(assert (=> d!1072561 (= res!1480638 (is-Cons!38476 (usedCharacters!971 (regex!5759 anOtherTypeRule!33))))))

(assert (=> d!1072561 (= (contains!7583 (usedCharacters!971 (regex!5759 anOtherTypeRule!33)) lt!1265404) lt!1265882)))

(declare-fun b!3649871 () Bool)

(declare-fun e!2259641 () Bool)

(assert (=> b!3649871 (= e!2259640 e!2259641)))

(declare-fun res!1480637 () Bool)

(assert (=> b!3649871 (=> res!1480637 e!2259641)))

(assert (=> b!3649871 (= res!1480637 (= (h!43896 (usedCharacters!971 (regex!5759 anOtherTypeRule!33))) lt!1265404))))

(declare-fun b!3649872 () Bool)

(assert (=> b!3649872 (= e!2259641 (contains!7583 (t!297343 (usedCharacters!971 (regex!5759 anOtherTypeRule!33))) lt!1265404))))

(assert (= (and d!1072561 res!1480638) b!3649871))

(assert (= (and b!3649871 (not res!1480637)) b!3649872))

(assert (=> d!1072561 m!4153409))

(declare-fun m!4154467 () Bool)

(assert (=> d!1072561 m!4154467))

(declare-fun m!4154469 () Bool)

(assert (=> d!1072561 m!4154469))

(declare-fun m!4154471 () Bool)

(assert (=> b!3649872 m!4154471))

(assert (=> b!3649076 d!1072561))

(declare-fun b!3649873 () Bool)

(declare-fun e!2259643 () List!38600)

(declare-fun call!263780 () List!38600)

(assert (=> b!3649873 (= e!2259643 call!263780)))

(declare-fun b!3649874 () Bool)

(declare-fun e!2259642 () List!38600)

(declare-fun e!2259645 () List!38600)

(assert (=> b!3649874 (= e!2259642 e!2259645)))

(declare-fun c!630889 () Bool)

(assert (=> b!3649874 (= c!630889 (is-ElementMatch!10518 (regex!5759 anOtherTypeRule!33)))))

(declare-fun d!1072563 () Bool)

(declare-fun c!630890 () Bool)

(assert (=> d!1072563 (= c!630890 (or (is-EmptyExpr!10518 (regex!5759 anOtherTypeRule!33)) (is-EmptyLang!10518 (regex!5759 anOtherTypeRule!33))))))

(assert (=> d!1072563 (= (usedCharacters!971 (regex!5759 anOtherTypeRule!33)) e!2259642)))

(declare-fun b!3649875 () Bool)

(declare-fun e!2259644 () List!38600)

(assert (=> b!3649875 (= e!2259644 e!2259643)))

(declare-fun c!630887 () Bool)

(assert (=> b!3649875 (= c!630887 (is-Union!10518 (regex!5759 anOtherTypeRule!33)))))

(declare-fun b!3649876 () Bool)

(declare-fun call!263779 () List!38600)

(assert (=> b!3649876 (= e!2259644 call!263779)))

(declare-fun bm!263774 () Bool)

(declare-fun c!630888 () Bool)

(assert (=> bm!263774 (= call!263779 (usedCharacters!971 (ite c!630888 (reg!10847 (regex!5759 anOtherTypeRule!33)) (ite c!630887 (regOne!21549 (regex!5759 anOtherTypeRule!33)) (regTwo!21548 (regex!5759 anOtherTypeRule!33))))))))

(declare-fun bm!263775 () Bool)

(declare-fun call!263781 () List!38600)

(declare-fun call!263782 () List!38600)

(assert (=> bm!263775 (= call!263780 (++!9575 (ite c!630887 call!263781 call!263782) (ite c!630887 call!263782 call!263781)))))

(declare-fun b!3649877 () Bool)

(assert (=> b!3649877 (= c!630888 (is-Star!10518 (regex!5759 anOtherTypeRule!33)))))

(assert (=> b!3649877 (= e!2259645 e!2259644)))

(declare-fun b!3649878 () Bool)

(assert (=> b!3649878 (= e!2259642 Nil!38476)))

(declare-fun bm!263776 () Bool)

(assert (=> bm!263776 (= call!263782 (usedCharacters!971 (ite c!630887 (regTwo!21549 (regex!5759 anOtherTypeRule!33)) (regOne!21548 (regex!5759 anOtherTypeRule!33)))))))

(declare-fun b!3649879 () Bool)

(assert (=> b!3649879 (= e!2259643 call!263780)))

(declare-fun b!3649880 () Bool)

(assert (=> b!3649880 (= e!2259645 (Cons!38476 (c!630743 (regex!5759 anOtherTypeRule!33)) Nil!38476))))

(declare-fun bm!263777 () Bool)

(assert (=> bm!263777 (= call!263781 call!263779)))

(assert (= (and d!1072563 c!630890) b!3649878))

(assert (= (and d!1072563 (not c!630890)) b!3649874))

(assert (= (and b!3649874 c!630889) b!3649880))

(assert (= (and b!3649874 (not c!630889)) b!3649877))

(assert (= (and b!3649877 c!630888) b!3649876))

(assert (= (and b!3649877 (not c!630888)) b!3649875))

(assert (= (and b!3649875 c!630887) b!3649873))

(assert (= (and b!3649875 (not c!630887)) b!3649879))

(assert (= (or b!3649873 b!3649879) bm!263777))

(assert (= (or b!3649873 b!3649879) bm!263776))

(assert (= (or b!3649873 b!3649879) bm!263775))

(assert (= (or b!3649876 bm!263777) bm!263774))

(declare-fun m!4154473 () Bool)

(assert (=> bm!263774 m!4154473))

(declare-fun m!4154475 () Bool)

(assert (=> bm!263775 m!4154475))

(declare-fun m!4154477 () Bool)

(assert (=> bm!263776 m!4154477))

(assert (=> b!3649076 d!1072563))

(declare-fun d!1072565 () Bool)

(assert (=> d!1072565 (= (inv!51923 (tag!6521 (rule!8555 token!511))) (= (mod (str.len (value!184592 (tag!6521 (rule!8555 token!511)))) 2) 0))))

(assert (=> b!3649096 d!1072565))

(declare-fun d!1072567 () Bool)

(declare-fun res!1480639 () Bool)

(declare-fun e!2259646 () Bool)

(assert (=> d!1072567 (=> (not res!1480639) (not e!2259646))))

(assert (=> d!1072567 (= res!1480639 (semiInverseModEq!2454 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (toValue!8051 (transformation!5759 (rule!8555 token!511)))))))

(assert (=> d!1072567 (= (inv!51926 (transformation!5759 (rule!8555 token!511))) e!2259646)))

(declare-fun b!3649881 () Bool)

(assert (=> b!3649881 (= e!2259646 (equivClasses!2353 (toChars!7910 (transformation!5759 (rule!8555 token!511))) (toValue!8051 (transformation!5759 (rule!8555 token!511)))))))

(assert (= (and d!1072567 res!1480639) b!3649881))

(declare-fun m!4154479 () Bool)

(assert (=> d!1072567 m!4154479))

(declare-fun m!4154481 () Bool)

(assert (=> b!3649881 m!4154481))

(assert (=> b!3649096 d!1072567))

(declare-fun d!1072569 () Bool)

(assert (=> d!1072569 (= (isEmpty!22799 rules!3307) (is-Nil!38478 rules!3307))))

(assert (=> b!3649077 d!1072569))

(declare-fun b!3649882 () Bool)

(declare-fun res!1480644 () Bool)

(declare-fun e!2259653 () Bool)

(assert (=> b!3649882 (=> res!1480644 e!2259653)))

(declare-fun e!2259647 () Bool)

(assert (=> b!3649882 (= res!1480644 e!2259647)))

(declare-fun res!1480641 () Bool)

(assert (=> b!3649882 (=> (not res!1480641) (not e!2259647))))

(declare-fun lt!1265883 () Bool)

(assert (=> b!3649882 (= res!1480641 lt!1265883)))

(declare-fun d!1072571 () Bool)

(declare-fun e!2259649 () Bool)

(assert (=> d!1072571 e!2259649))

(declare-fun c!630891 () Bool)

(assert (=> d!1072571 (= c!630891 (is-EmptyExpr!10518 (regex!5759 lt!1265429)))))

(declare-fun e!2259650 () Bool)

(assert (=> d!1072571 (= lt!1265883 e!2259650)))

(declare-fun c!630893 () Bool)

(assert (=> d!1072571 (= c!630893 (isEmpty!22798 (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))))))

(assert (=> d!1072571 (validRegex!4816 (regex!5759 lt!1265429))))

(assert (=> d!1072571 (= (matchR!5087 (regex!5759 lt!1265429) (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))) lt!1265883)))

(declare-fun bm!263778 () Bool)

(declare-fun call!263783 () Bool)

(assert (=> bm!263778 (= call!263783 (isEmpty!22798 (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))))))

(declare-fun b!3649883 () Bool)

(assert (=> b!3649883 (= e!2259647 (= (head!7771 (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))) (c!630743 (regex!5759 lt!1265429))))))

(declare-fun b!3649884 () Bool)

(declare-fun res!1480647 () Bool)

(assert (=> b!3649884 (=> (not res!1480647) (not e!2259647))))

(assert (=> b!3649884 (= res!1480647 (not call!263783))))

(declare-fun b!3649885 () Bool)

(assert (=> b!3649885 (= e!2259650 (nullable!3654 (regex!5759 lt!1265429)))))

(declare-fun b!3649886 () Bool)

(declare-fun e!2259652 () Bool)

(assert (=> b!3649886 (= e!2259653 e!2259652)))

(declare-fun res!1480640 () Bool)

(assert (=> b!3649886 (=> (not res!1480640) (not e!2259652))))

(assert (=> b!3649886 (= res!1480640 (not lt!1265883))))

(declare-fun b!3649887 () Bool)

(declare-fun e!2259648 () Bool)

(assert (=> b!3649887 (= e!2259649 e!2259648)))

(declare-fun c!630892 () Bool)

(assert (=> b!3649887 (= c!630892 (is-EmptyLang!10518 (regex!5759 lt!1265429)))))

(declare-fun b!3649888 () Bool)

(declare-fun res!1480643 () Bool)

(assert (=> b!3649888 (=> (not res!1480643) (not e!2259647))))

(assert (=> b!3649888 (= res!1480643 (isEmpty!22798 (tail!5652 (list!14257 (charsOf!3773 (_1!22307 lt!1265424))))))))

(declare-fun b!3649889 () Bool)

(assert (=> b!3649889 (= e!2259649 (= lt!1265883 call!263783))))

(declare-fun b!3649890 () Bool)

(declare-fun res!1480646 () Bool)

(assert (=> b!3649890 (=> res!1480646 e!2259653)))

(assert (=> b!3649890 (= res!1480646 (not (is-ElementMatch!10518 (regex!5759 lt!1265429))))))

(assert (=> b!3649890 (= e!2259648 e!2259653)))

(declare-fun b!3649891 () Bool)

(assert (=> b!3649891 (= e!2259648 (not lt!1265883))))

(declare-fun b!3649892 () Bool)

(declare-fun e!2259651 () Bool)

(assert (=> b!3649892 (= e!2259652 e!2259651)))

(declare-fun res!1480645 () Bool)

(assert (=> b!3649892 (=> res!1480645 e!2259651)))

(assert (=> b!3649892 (= res!1480645 call!263783)))

(declare-fun b!3649893 () Bool)

(assert (=> b!3649893 (= e!2259651 (not (= (head!7771 (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))) (c!630743 (regex!5759 lt!1265429)))))))

(declare-fun b!3649894 () Bool)

(assert (=> b!3649894 (= e!2259650 (matchR!5087 (derivativeStep!3203 (regex!5759 lt!1265429) (head!7771 (list!14257 (charsOf!3773 (_1!22307 lt!1265424))))) (tail!5652 (list!14257 (charsOf!3773 (_1!22307 lt!1265424))))))))

(declare-fun b!3649895 () Bool)

(declare-fun res!1480642 () Bool)

(assert (=> b!3649895 (=> res!1480642 e!2259651)))

(assert (=> b!3649895 (= res!1480642 (not (isEmpty!22798 (tail!5652 (list!14257 (charsOf!3773 (_1!22307 lt!1265424)))))))))

(assert (= (and d!1072571 c!630893) b!3649885))

(assert (= (and d!1072571 (not c!630893)) b!3649894))

(assert (= (and d!1072571 c!630891) b!3649889))

(assert (= (and d!1072571 (not c!630891)) b!3649887))

(assert (= (and b!3649887 c!630892) b!3649891))

(assert (= (and b!3649887 (not c!630892)) b!3649890))

(assert (= (and b!3649890 (not res!1480646)) b!3649882))

(assert (= (and b!3649882 res!1480641) b!3649884))

(assert (= (and b!3649884 res!1480647) b!3649888))

(assert (= (and b!3649888 res!1480643) b!3649883))

(assert (= (and b!3649882 (not res!1480644)) b!3649886))

(assert (= (and b!3649886 res!1480640) b!3649892))

(assert (= (and b!3649892 (not res!1480645)) b!3649895))

(assert (= (and b!3649895 (not res!1480642)) b!3649893))

(assert (= (or b!3649889 b!3649884 b!3649892) bm!263778))

(assert (=> b!3649888 m!4153491))

(declare-fun m!4154483 () Bool)

(assert (=> b!3649888 m!4154483))

(assert (=> b!3649888 m!4154483))

(declare-fun m!4154485 () Bool)

(assert (=> b!3649888 m!4154485))

(declare-fun m!4154487 () Bool)

(assert (=> b!3649885 m!4154487))

(assert (=> bm!263778 m!4153491))

(declare-fun m!4154489 () Bool)

(assert (=> bm!263778 m!4154489))

(assert (=> b!3649883 m!4153491))

(declare-fun m!4154491 () Bool)

(assert (=> b!3649883 m!4154491))

(assert (=> b!3649895 m!4153491))

(assert (=> b!3649895 m!4154483))

(assert (=> b!3649895 m!4154483))

(assert (=> b!3649895 m!4154485))

(assert (=> d!1072571 m!4153491))

(assert (=> d!1072571 m!4154489))

(declare-fun m!4154493 () Bool)

(assert (=> d!1072571 m!4154493))

(assert (=> b!3649894 m!4153491))

(assert (=> b!3649894 m!4154491))

(assert (=> b!3649894 m!4154491))

(declare-fun m!4154495 () Bool)

(assert (=> b!3649894 m!4154495))

(assert (=> b!3649894 m!4153491))

(assert (=> b!3649894 m!4154483))

(assert (=> b!3649894 m!4154495))

(assert (=> b!3649894 m!4154483))

(declare-fun m!4154497 () Bool)

(assert (=> b!3649894 m!4154497))

(assert (=> b!3649893 m!4153491))

(assert (=> b!3649893 m!4154491))

(assert (=> b!3649079 d!1072571))

(declare-fun d!1072573 () Bool)

(assert (=> d!1072573 (= (list!14257 (charsOf!3773 (_1!22307 lt!1265424))) (list!14259 (c!630744 (charsOf!3773 (_1!22307 lt!1265424)))))))

(declare-fun bs!572227 () Bool)

(assert (= bs!572227 d!1072573))

(declare-fun m!4154499 () Bool)

(assert (=> bs!572227 m!4154499))

(assert (=> b!3649079 d!1072573))

(assert (=> b!3649079 d!1072371))

(declare-fun d!1072575 () Bool)

(assert (=> d!1072575 (= (get!12636 lt!1265419) (v!38001 lt!1265419))))

(assert (=> b!3649079 d!1072575))

(declare-fun b!3649906 () Bool)

(declare-fun e!2259656 () Bool)

(assert (=> b!3649906 (= e!2259656 tp_is_empty!18119)))

(declare-fun b!3649908 () Bool)

(declare-fun tp!1112651 () Bool)

(assert (=> b!3649908 (= e!2259656 tp!1112651)))

(declare-fun b!3649909 () Bool)

(declare-fun tp!1112648 () Bool)

(declare-fun tp!1112652 () Bool)

(assert (=> b!3649909 (= e!2259656 (and tp!1112648 tp!1112652))))

(assert (=> b!3649084 (= tp!1112577 e!2259656)))

(declare-fun b!3649907 () Bool)

(declare-fun tp!1112649 () Bool)

(declare-fun tp!1112650 () Bool)

(assert (=> b!3649907 (= e!2259656 (and tp!1112649 tp!1112650))))

(assert (= (and b!3649084 (is-ElementMatch!10518 (regex!5759 rule!403))) b!3649906))

(assert (= (and b!3649084 (is-Concat!16508 (regex!5759 rule!403))) b!3649907))

(assert (= (and b!3649084 (is-Star!10518 (regex!5759 rule!403))) b!3649908))

(assert (= (and b!3649084 (is-Union!10518 (regex!5759 rule!403))) b!3649909))

(declare-fun b!3649920 () Bool)

(declare-fun b_free!95953 () Bool)

(declare-fun b_next!96657 () Bool)

(assert (=> b!3649920 (= b_free!95953 (not b_next!96657))))

(declare-fun t!297422 () Bool)

(declare-fun tb!210573 () Bool)

(assert (=> (and b!3649920 (= (toValue!8051 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297422) tb!210573))

(declare-fun result!256426 () Bool)

(assert (= result!256426 result!256398))

(assert (=> d!1072501 t!297422))

(assert (=> d!1072495 t!297422))

(assert (=> d!1072397 t!297422))

(declare-fun t!297424 () Bool)

(declare-fun tb!210575 () Bool)

(assert (=> (and b!3649920 (= (toValue!8051 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297424) tb!210575))

(declare-fun result!256428 () Bool)

(assert (= result!256428 result!256342))

(assert (=> d!1072327 t!297424))

(declare-fun t!297426 () Bool)

(declare-fun tb!210577 () Bool)

(assert (=> (and b!3649920 (= (toValue!8051 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toValue!8051 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297426) tb!210577))

(declare-fun result!256430 () Bool)

(assert (= result!256430 result!256406))

(assert (=> d!1072501 t!297426))

(declare-fun tp!1112664 () Bool)

(declare-fun b_and!269891 () Bool)

(assert (=> b!3649920 (= tp!1112664 (and (=> t!297422 result!256426) (=> t!297424 result!256428) (=> t!297426 result!256430) b_and!269891))))

(declare-fun b_free!95955 () Bool)

(declare-fun b_next!96659 () Bool)

(assert (=> b!3649920 (= b_free!95955 (not b_next!96659))))

(declare-fun t!297428 () Bool)

(declare-fun tb!210579 () Bool)

(assert (=> (and b!3649920 (= (toChars!7910 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297428) tb!210579))

(declare-fun result!256432 () Bool)

(assert (= result!256432 result!256352))

(assert (=> d!1072371 t!297428))

(declare-fun tb!210581 () Bool)

(declare-fun t!297430 () Bool)

(assert (=> (and b!3649920 (= (toChars!7910 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toChars!7910 (transformation!5759 (rule!8555 (_1!22307 lt!1265424))))) t!297430) tb!210581))

(declare-fun result!256434 () Bool)

(assert (= result!256434 result!256390))

(assert (=> d!1072397 t!297430))

(declare-fun tb!210583 () Bool)

(declare-fun t!297432 () Bool)

(assert (=> (and b!3649920 (= (toChars!7910 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toChars!7910 (transformation!5759 (rule!8555 token!511)))) t!297432) tb!210583))

(declare-fun result!256436 () Bool)

(assert (= result!256436 result!256414))

(assert (=> d!1072509 t!297432))

(assert (=> b!3649832 t!297432))

(declare-fun b_and!269893 () Bool)

(declare-fun tp!1112663 () Bool)

(assert (=> b!3649920 (= tp!1112663 (and (=> t!297428 result!256432) (=> t!297430 result!256434) (=> t!297432 result!256436) b_and!269893))))

(declare-fun e!2259668 () Bool)

(assert (=> b!3649920 (= e!2259668 (and tp!1112664 tp!1112663))))

(declare-fun tp!1112662 () Bool)

(declare-fun b!3649919 () Bool)

(declare-fun e!2259666 () Bool)

(assert (=> b!3649919 (= e!2259666 (and tp!1112662 (inv!51923 (tag!6521 (h!43898 (t!297345 rules!3307)))) (inv!51926 (transformation!5759 (h!43898 (t!297345 rules!3307)))) e!2259668))))

(declare-fun b!3649918 () Bool)

(declare-fun e!2259667 () Bool)

(declare-fun tp!1112661 () Bool)

(assert (=> b!3649918 (= e!2259667 (and e!2259666 tp!1112661))))

(assert (=> b!3649085 (= tp!1112575 e!2259667)))

(assert (= b!3649919 b!3649920))

(assert (= b!3649918 b!3649919))

(assert (= (and b!3649085 (is-Cons!38478 (t!297345 rules!3307))) b!3649918))

(declare-fun m!4154501 () Bool)

(assert (=> b!3649919 m!4154501))

(declare-fun m!4154503 () Bool)

(assert (=> b!3649919 m!4154503))

(declare-fun b!3649921 () Bool)

(declare-fun e!2259669 () Bool)

(assert (=> b!3649921 (= e!2259669 tp_is_empty!18119)))

(declare-fun b!3649923 () Bool)

(declare-fun tp!1112668 () Bool)

(assert (=> b!3649923 (= e!2259669 tp!1112668)))

(declare-fun b!3649924 () Bool)

(declare-fun tp!1112665 () Bool)

(declare-fun tp!1112669 () Bool)

(assert (=> b!3649924 (= e!2259669 (and tp!1112665 tp!1112669))))

(assert (=> b!3649091 (= tp!1112579 e!2259669)))

(declare-fun b!3649922 () Bool)

(declare-fun tp!1112666 () Bool)

(declare-fun tp!1112667 () Bool)

(assert (=> b!3649922 (= e!2259669 (and tp!1112666 tp!1112667))))

(assert (= (and b!3649091 (is-ElementMatch!10518 (regex!5759 anOtherTypeRule!33))) b!3649921))

(assert (= (and b!3649091 (is-Concat!16508 (regex!5759 anOtherTypeRule!33))) b!3649922))

(assert (= (and b!3649091 (is-Star!10518 (regex!5759 anOtherTypeRule!33))) b!3649923))

(assert (= (and b!3649091 (is-Union!10518 (regex!5759 anOtherTypeRule!33))) b!3649924))

(declare-fun b!3649925 () Bool)

(declare-fun e!2259670 () Bool)

(assert (=> b!3649925 (= e!2259670 tp_is_empty!18119)))

(declare-fun b!3649927 () Bool)

(declare-fun tp!1112673 () Bool)

(assert (=> b!3649927 (= e!2259670 tp!1112673)))

(declare-fun b!3649928 () Bool)

(declare-fun tp!1112670 () Bool)

(declare-fun tp!1112674 () Bool)

(assert (=> b!3649928 (= e!2259670 (and tp!1112670 tp!1112674))))

(assert (=> b!3649096 (= tp!1112571 e!2259670)))

(declare-fun b!3649926 () Bool)

(declare-fun tp!1112671 () Bool)

(declare-fun tp!1112672 () Bool)

(assert (=> b!3649926 (= e!2259670 (and tp!1112671 tp!1112672))))

(assert (= (and b!3649096 (is-ElementMatch!10518 (regex!5759 (rule!8555 token!511)))) b!3649925))

(assert (= (and b!3649096 (is-Concat!16508 (regex!5759 (rule!8555 token!511)))) b!3649926))

(assert (= (and b!3649096 (is-Star!10518 (regex!5759 (rule!8555 token!511)))) b!3649927))

(assert (= (and b!3649096 (is-Union!10518 (regex!5759 (rule!8555 token!511)))) b!3649928))

(declare-fun b!3649933 () Bool)

(declare-fun e!2259673 () Bool)

(declare-fun tp!1112677 () Bool)

(assert (=> b!3649933 (= e!2259673 (and tp_is_empty!18119 tp!1112677))))

(assert (=> b!3649092 (= tp!1112573 e!2259673)))

(assert (= (and b!3649092 (is-Cons!38476 (t!297343 suffix!1395))) b!3649933))

(declare-fun b!3649934 () Bool)

(declare-fun e!2259674 () Bool)

(assert (=> b!3649934 (= e!2259674 tp_is_empty!18119)))

(declare-fun b!3649936 () Bool)

(declare-fun tp!1112681 () Bool)

(assert (=> b!3649936 (= e!2259674 tp!1112681)))

(declare-fun b!3649937 () Bool)

(declare-fun tp!1112678 () Bool)

(declare-fun tp!1112682 () Bool)

(assert (=> b!3649937 (= e!2259674 (and tp!1112678 tp!1112682))))

(assert (=> b!3649093 (= tp!1112569 e!2259674)))

(declare-fun b!3649935 () Bool)

(declare-fun tp!1112679 () Bool)

(declare-fun tp!1112680 () Bool)

(assert (=> b!3649935 (= e!2259674 (and tp!1112679 tp!1112680))))

(assert (= (and b!3649093 (is-ElementMatch!10518 (regex!5759 (h!43898 rules!3307)))) b!3649934))

(assert (= (and b!3649093 (is-Concat!16508 (regex!5759 (h!43898 rules!3307)))) b!3649935))

(assert (= (and b!3649093 (is-Star!10518 (regex!5759 (h!43898 rules!3307)))) b!3649936))

(assert (= (and b!3649093 (is-Union!10518 (regex!5759 (h!43898 rules!3307)))) b!3649937))

(declare-fun b!3649938 () Bool)

(declare-fun e!2259675 () Bool)

(declare-fun tp!1112683 () Bool)

(assert (=> b!3649938 (= e!2259675 (and tp_is_empty!18119 tp!1112683))))

(assert (=> b!3649109 (= tp!1112578 e!2259675)))

(assert (= (and b!3649109 (is-Cons!38476 (originalCharacters!6473 token!511))) b!3649938))

(declare-fun b_lambda!108233 () Bool)

(assert (= b_lambda!108229 (or (and b!3649098 b_free!95923) (and b!3649920 b_free!95955 (= (toChars!7910 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649087 b_free!95927 (= (toChars!7910 (transformation!5759 rule!403)) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649074 b_free!95931 (= (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649110 b_free!95935 (= (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) b_lambda!108233)))

(declare-fun b_lambda!108235 () Bool)

(assert (= b_lambda!108231 (or (and b!3649098 b_free!95923) (and b!3649920 b_free!95955 (= (toChars!7910 (transformation!5759 (h!43898 (t!297345 rules!3307)))) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649087 b_free!95927 (= (toChars!7910 (transformation!5759 rule!403)) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649074 b_free!95931 (= (toChars!7910 (transformation!5759 (h!43898 rules!3307))) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) (and b!3649110 b_free!95935 (= (toChars!7910 (transformation!5759 anOtherTypeRule!33)) (toChars!7910 (transformation!5759 (rule!8555 token!511))))) b_lambda!108235)))

(push 1)

(assert (not b!3649895))

(assert (not bm!263755))

(assert (not b!3649301))

(assert (not b!3649804))

(assert (not b!3649317))

(assert (not b_lambda!108207))

(assert (not b!3649281))

(assert (not d!1072535))

(assert (not b_next!96627))

(assert (not b!3649698))

(assert (not b!3649314))

(assert (not b!3649894))

(assert (not tb!210557))

(assert (not b!3649757))

(assert (not b!3649312))

(assert (not b!3649750))

(assert (not b_lambda!108227))

(assert (not b!3649833))

(assert (not b!3649688))

(assert (not b!3649814))

(assert (not d!1072363))

(assert (not d!1072317))

(assert (not b!3649832))

(assert (not b!3649700))

(assert (not b!3649820))

(assert (not b_next!96635))

(assert (not bm!263753))

(assert (not bm!263775))

(assert (not bm!263770))

(assert (not tb!210549))

(assert (not b!3649919))

(assert (not bm!263754))

(assert (not b!3649933))

(assert (not d!1072323))

(assert (not b!3649798))

(assert (not d!1072503))

(assert (not d!1072493))

(assert (not b!3649795))

(assert (not b!3649924))

(assert b_and!269889)

(assert (not b!3649805))

(assert (not b_next!96657))

(assert (not d!1072371))

(assert (not d!1072313))

(assert tp_is_empty!18119)

(assert (not b!3649696))

(assert (not bm!263760))

(assert b_and!269867)

(assert (not b!3649936))

(assert (not b!3649872))

(assert (not b!3649937))

(assert (not b!3649803))

(assert (not b!3649279))

(assert (not tb!210501))

(assert (not d!1072335))

(assert (not b!3649809))

(assert (not b!3649438))

(assert (not b!3649397))

(assert (not b!3649302))

(assert (not d!1072393))

(assert b_and!269869)

(assert (not b!3649432))

(assert (not d!1072527))

(assert (not b!3649313))

(assert (not b!3649881))

(assert (not b!3649430))

(assert (not b!3649297))

(assert (not b!3649821))

(assert (not b!3649275))

(assert (not b!3649888))

(assert (not b!3649811))

(assert (not b!3649300))

(assert (not d!1072519))

(assert b_and!269873)

(assert (not bm!263772))

(assert (not d!1072501))

(assert (not b!3649377))

(assert (not d!1072351))

(assert (not b!3649907))

(assert (not b!3649392))

(assert (not bm!263778))

(assert (not b!3649909))

(assert b_and!269885)

(assert b_and!269883)

(assert (not b!3649463))

(assert (not d!1072537))

(assert (not b!3649332))

(assert (not b_lambda!108225))

(assert (not b!3649755))

(assert (not d!1072331))

(assert b_and!269887)

(assert (not b_lambda!108209))

(assert (not b_lambda!108233))

(assert (not b!3649431))

(assert (not d!1072359))

(assert (not d!1072545))

(assert (not b!3649697))

(assert (not b!3649277))

(assert (not b_lambda!108219))

(assert (not b_next!96633))

(assert (not d!1072505))

(assert (not d!1072547))

(assert (not d!1072355))

(assert (not b_lambda!108221))

(assert (not d!1072507))

(assert (not b!3649763))

(assert (not d!1072573))

(assert (not b!3649390))

(assert (not b_lambda!108223))

(assert (not b!3649711))

(assert (not bm!263776))

(assert (not b!3649922))

(assert (not b_next!96639))

(assert (not b_next!96625))

(assert (not b!3649885))

(assert (not bm!263724))

(assert (not b!3649379))

(assert (not b!3649373))

(assert (not bm!263767))

(assert (not d!1072339))

(assert (not b!3649927))

(assert (not d!1072555))

(assert (not b_next!96629))

(assert (not b!3649318))

(assert (not b!3649926))

(assert (not b!3649705))

(assert (not b!3649883))

(assert (not tb!210509))

(assert (not d!1072571))

(assert (not b!3649274))

(assert (not b!3649854))

(assert (not d!1072567))

(assert (not d!1072539))

(assert (not d!1072551))

(assert (not bm!263774))

(assert (not d!1072541))

(assert (not d!1072315))

(assert (not d!1072361))

(assert (not b!3649295))

(assert (not d!1072529))

(assert (not d!1072561))

(assert (not b!3649938))

(assert (not b!3649704))

(assert (not d!1072511))

(assert (not b!3649935))

(assert (not tb!210541))

(assert (not b!3649372))

(assert (not b!3649462))

(assert (not b!3649819))

(assert (not bm!263769))

(assert (not bm!263744))

(assert (not b!3649713))

(assert (not b!3649316))

(assert (not b!3649702))

(assert (not d!1072499))

(assert (not d!1072543))

(assert (not d!1072367))

(assert (not b!3649893))

(assert (not b!3649329))

(assert (not d!1072391))

(assert (not d!1072497))

(assert (not b!3649807))

(assert (not b!3649391))

(assert (not b!3649280))

(assert (not b!3649375))

(assert (not d!1072321))

(assert (not b!3649762))

(assert (not b!3649908))

(assert (not d!1072533))

(assert (not d!1072397))

(assert (not b!3649376))

(assert (not d!1072365))

(assert (not b!3649328))

(assert (not b_next!96631))

(assert (not b_next!96659))

(assert (not b!3649278))

(assert (not tb!210565))

(assert (not b!3649701))

(assert (not bm!263771))

(assert (not b!3649699))

(assert (not b!3649923))

(assert (not d!1072319))

(assert (not d!1072389))

(assert b_and!269871)

(assert (not b!3649371))

(assert (not b!3649439))

(assert (not b!3649333))

(assert (not b_lambda!108235))

(assert (not b!3649273))

(assert (not d!1072345))

(assert (not b!3649464))

(assert (not b_next!96637))

(assert (not b!3649826))

(assert (not d!1072559))

(assert (not d!1072557))

(assert (not d!1072513))

(assert (not d!1072373))

(assert (not bm!263759))

(assert b_and!269893)

(assert (not b!3649247))

(assert (not b!3649918))

(assert (not b!3649751))

(assert (not d!1072509))

(assert (not b!3649793))

(assert (not b!3649242))

(assert (not b!3649862))

(assert (not b!3649374))

(assert (not b!3649928))

(assert (not b!3649748))

(assert b_and!269891)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!96627))

(assert (not b_next!96635))

(assert b_and!269889)

(assert (not b_next!96657))

(assert b_and!269867)

(assert b_and!269869)

(assert b_and!269873)

(assert b_and!269887)

(assert (not b_next!96633))

(assert (not b_next!96629))

(assert b_and!269871)

(assert (not b_next!96637))

(assert b_and!269893)

(assert b_and!269891)

(assert b_and!269885)

(assert b_and!269883)

(assert (not b_next!96639))

(assert (not b_next!96625))

(assert (not b_next!96631))

(assert (not b_next!96659))

(check-sat)

(pop 1)

