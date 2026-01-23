; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334842 () Bool)

(assert start!334842)

(declare-fun b!3601373 () Bool)

(declare-fun b_free!93201 () Bool)

(declare-fun b_next!93905 () Bool)

(assert (=> b!3601373 (= b_free!93201 (not b_next!93905))))

(declare-fun tp!1101593 () Bool)

(declare-fun b_and!261667 () Bool)

(assert (=> b!3601373 (= tp!1101593 b_and!261667)))

(declare-fun b_free!93203 () Bool)

(declare-fun b_next!93907 () Bool)

(assert (=> b!3601373 (= b_free!93203 (not b_next!93907))))

(declare-fun tp!1101597 () Bool)

(declare-fun b_and!261669 () Bool)

(assert (=> b!3601373 (= tp!1101597 b_and!261669)))

(declare-fun b!3601369 () Bool)

(declare-fun b_free!93205 () Bool)

(declare-fun b_next!93909 () Bool)

(assert (=> b!3601369 (= b_free!93205 (not b_next!93909))))

(declare-fun tp!1101601 () Bool)

(declare-fun b_and!261671 () Bool)

(assert (=> b!3601369 (= tp!1101601 b_and!261671)))

(declare-fun b_free!93207 () Bool)

(declare-fun b_next!93911 () Bool)

(assert (=> b!3601369 (= b_free!93207 (not b_next!93911))))

(declare-fun tp!1101596 () Bool)

(declare-fun b_and!261673 () Bool)

(assert (=> b!3601369 (= tp!1101596 b_and!261673)))

(declare-fun b!3601356 () Bool)

(declare-fun b_free!93209 () Bool)

(declare-fun b_next!93913 () Bool)

(assert (=> b!3601356 (= b_free!93209 (not b_next!93913))))

(declare-fun tp!1101590 () Bool)

(declare-fun b_and!261675 () Bool)

(assert (=> b!3601356 (= tp!1101590 b_and!261675)))

(declare-fun b_free!93211 () Bool)

(declare-fun b_next!93915 () Bool)

(assert (=> b!3601356 (= b_free!93211 (not b_next!93915))))

(declare-fun tp!1101604 () Bool)

(declare-fun b_and!261677 () Bool)

(assert (=> b!3601356 (= tp!1101604 b_and!261677)))

(declare-fun b!3601386 () Bool)

(declare-fun b_free!93213 () Bool)

(declare-fun b_next!93917 () Bool)

(assert (=> b!3601386 (= b_free!93213 (not b_next!93917))))

(declare-fun tp!1101595 () Bool)

(declare-fun b_and!261679 () Bool)

(assert (=> b!3601386 (= tp!1101595 b_and!261679)))

(declare-fun b_free!93215 () Bool)

(declare-fun b_next!93919 () Bool)

(assert (=> b!3601386 (= b_free!93215 (not b_next!93919))))

(declare-fun tp!1101592 () Bool)

(declare-fun b_and!261681 () Bool)

(assert (=> b!3601386 (= tp!1101592 b_and!261681)))

(declare-fun b!3601349 () Bool)

(declare-fun res!1455507 () Bool)

(declare-fun e!2228574 () Bool)

(assert (=> b!3601349 (=> (not res!1455507) (not e!2228574))))

(declare-datatypes ((LexerInterface!5197 0))(
  ( (LexerInterfaceExt!5194 (__x!23893 Int)) (Lexer!5195) )
))
(declare-fun thiss!23823 () LexerInterface!5197)

(declare-datatypes ((List!38007 0))(
  ( (Nil!37883) (Cons!37883 (h!43303 (_ BitVec 16)) (t!292338 List!38007)) )
))
(declare-datatypes ((TokenValue!5838 0))(
  ( (FloatLiteralValue!11676 (text!41311 List!38007)) (TokenValueExt!5837 (__x!23894 Int)) (Broken!29190 (value!180262 List!38007)) (Object!5961) (End!5838) (Def!5838) (Underscore!5838) (Match!5838) (Else!5838) (Error!5838) (Case!5838) (If!5838) (Extends!5838) (Abstract!5838) (Class!5838) (Val!5838) (DelimiterValue!11676 (del!5898 List!38007)) (KeywordValue!5844 (value!180263 List!38007)) (CommentValue!11676 (value!180264 List!38007)) (WhitespaceValue!11676 (value!180265 List!38007)) (IndentationValue!5838 (value!180266 List!38007)) (String!42523) (Int32!5838) (Broken!29191 (value!180267 List!38007)) (Boolean!5839) (Unit!53924) (OperatorValue!5841 (op!5898 List!38007)) (IdentifierValue!11676 (value!180268 List!38007)) (IdentifierValue!11677 (value!180269 List!38007)) (WhitespaceValue!11677 (value!180270 List!38007)) (True!11676) (False!11676) (Broken!29192 (value!180271 List!38007)) (Broken!29193 (value!180272 List!38007)) (True!11677) (RightBrace!5838) (RightBracket!5838) (Colon!5838) (Null!5838) (Comma!5838) (LeftBracket!5838) (False!11677) (LeftBrace!5838) (ImaginaryLiteralValue!5838 (text!41312 List!38007)) (StringLiteralValue!17514 (value!180273 List!38007)) (EOFValue!5838 (value!180274 List!38007)) (IdentValue!5838 (value!180275 List!38007)) (DelimiterValue!11677 (value!180276 List!38007)) (DedentValue!5838 (value!180277 List!38007)) (NewLineValue!5838 (value!180278 List!38007)) (IntegerValue!17514 (value!180279 (_ BitVec 32)) (text!41313 List!38007)) (IntegerValue!17515 (value!180280 Int) (text!41314 List!38007)) (Times!5838) (Or!5838) (Equal!5838) (Minus!5838) (Broken!29194 (value!180281 List!38007)) (And!5838) (Div!5838) (LessEqual!5838) (Mod!5838) (Concat!16205) (Not!5838) (Plus!5838) (SpaceValue!5838 (value!180282 List!38007)) (IntegerValue!17516 (value!180283 Int) (text!41315 List!38007)) (StringLiteralValue!17515 (text!41316 List!38007)) (FloatLiteralValue!11677 (text!41317 List!38007)) (BytesLiteralValue!5838 (value!180284 List!38007)) (CommentValue!11677 (value!180285 List!38007)) (StringLiteralValue!17516 (value!180286 List!38007)) (ErrorTokenValue!5838 (msg!5899 List!38007)) )
))
(declare-datatypes ((C!20920 0))(
  ( (C!20921 (val!12508 Int)) )
))
(declare-datatypes ((Regex!10367 0))(
  ( (ElementMatch!10367 (c!623274 C!20920)) (Concat!16206 (regOne!21246 Regex!10367) (regTwo!21246 Regex!10367)) (EmptyExpr!10367) (Star!10367 (reg!10696 Regex!10367)) (EmptyLang!10367) (Union!10367 (regOne!21247 Regex!10367) (regTwo!21247 Regex!10367)) )
))
(declare-datatypes ((String!42524 0))(
  ( (String!42525 (value!180287 String)) )
))
(declare-datatypes ((List!38008 0))(
  ( (Nil!37884) (Cons!37884 (h!43304 C!20920) (t!292339 List!38008)) )
))
(declare-datatypes ((IArray!23075 0))(
  ( (IArray!23076 (innerList!11595 List!38008)) )
))
(declare-datatypes ((Conc!11535 0))(
  ( (Node!11535 (left!29601 Conc!11535) (right!29931 Conc!11535) (csize!23300 Int) (cheight!11746 Int)) (Leaf!17950 (xs!14737 IArray!23075) (csize!23301 Int)) (Empty!11535) )
))
(declare-datatypes ((BalanceConc!22684 0))(
  ( (BalanceConc!22685 (c!623275 Conc!11535)) )
))
(declare-datatypes ((TokenValueInjection!11104 0))(
  ( (TokenValueInjection!11105 (toValue!7892 Int) (toChars!7751 Int)) )
))
(declare-datatypes ((Rule!11016 0))(
  ( (Rule!11017 (regex!5608 Regex!10367) (tag!6300 String!42524) (isSeparator!5608 Bool) (transformation!5608 TokenValueInjection!11104)) )
))
(declare-datatypes ((List!38009 0))(
  ( (Nil!37885) (Cons!37885 (h!43305 Rule!11016) (t!292340 List!38009)) )
))
(declare-fun rules!3307 () List!38009)

(declare-fun rulesInvariant!4594 (LexerInterface!5197 List!38009) Bool)

(assert (=> b!3601349 (= res!1455507 (rulesInvariant!4594 thiss!23823 rules!3307))))

(declare-fun b!3601350 () Bool)

(declare-datatypes ((Unit!53925 0))(
  ( (Unit!53926) )
))
(declare-fun e!2228568 () Unit!53925)

(declare-fun Unit!53927 () Unit!53925)

(assert (=> b!3601350 (= e!2228568 Unit!53927)))

(declare-fun rule!403 () Rule!11016)

(declare-fun lt!1237432 () C!20920)

(declare-fun lt!1237418 () Unit!53925)

(declare-fun lt!1237413 () List!38008)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!592 (Regex!10367 List!38008 C!20920) Unit!53925)

(assert (=> b!3601350 (= lt!1237418 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!592 (regex!5608 rule!403) lt!1237413 lt!1237432))))

(assert (=> b!3601350 false))

(declare-fun b!3601351 () Bool)

(declare-fun res!1455504 () Bool)

(assert (=> b!3601351 (=> (not res!1455504) (not e!2228574))))

(declare-fun anOtherTypeRule!33 () Rule!11016)

(declare-fun contains!7279 (List!38009 Rule!11016) Bool)

(assert (=> b!3601351 (= res!1455504 (contains!7279 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3601352 () Bool)

(declare-fun res!1455505 () Bool)

(assert (=> b!3601352 (=> (not res!1455505) (not e!2228574))))

(declare-fun isEmpty!22350 (List!38009) Bool)

(assert (=> b!3601352 (= res!1455505 (not (isEmpty!22350 rules!3307)))))

(declare-fun b!3601353 () Bool)

(declare-fun e!2228566 () Bool)

(declare-fun e!2228577 () Bool)

(declare-fun tp!1101599 () Bool)

(declare-fun inv!51238 (String!42524) Bool)

(declare-fun inv!51241 (TokenValueInjection!11104) Bool)

(assert (=> b!3601353 (= e!2228566 (and tp!1101599 (inv!51238 (tag!6300 rule!403)) (inv!51241 (transformation!5608 rule!403)) e!2228577))))

(declare-fun b!3601354 () Bool)

(declare-fun res!1455513 () Bool)

(declare-fun e!2228589 () Bool)

(assert (=> b!3601354 (=> (not res!1455513) (not e!2228589))))

(declare-datatypes ((Token!10582 0))(
  ( (Token!10583 (value!180288 TokenValue!5838) (rule!8344 Rule!11016) (size!28868 Int) (originalCharacters!6322 List!38008)) )
))
(declare-fun token!511 () Token!10582)

(assert (=> b!3601354 (= res!1455513 (= (rule!8344 token!511) rule!403))))

(declare-fun b!3601355 () Bool)

(declare-fun e!2228572 () Bool)

(declare-fun e!2228562 () Bool)

(assert (=> b!3601355 (= e!2228572 e!2228562)))

(declare-fun res!1455498 () Bool)

(assert (=> b!3601355 (=> res!1455498 e!2228562)))

(declare-datatypes ((tuple2!37776 0))(
  ( (tuple2!37777 (_1!22022 Token!10582) (_2!22022 List!38008)) )
))
(declare-datatypes ((Option!7846 0))(
  ( (None!7845) (Some!7845 (v!37559 tuple2!37776)) )
))
(declare-fun lt!1237427 () Option!7846)

(declare-fun lt!1237438 () List!38008)

(declare-fun lt!1237412 () tuple2!37776)

(declare-fun lt!1237431 () BalanceConc!22684)

(declare-fun apply!9114 (TokenValueInjection!11104 BalanceConc!22684) TokenValue!5838)

(declare-fun size!28869 (BalanceConc!22684) Int)

(assert (=> b!3601355 (= res!1455498 (not (= lt!1237427 (Some!7845 (tuple2!37777 (Token!10583 (apply!9114 (transformation!5608 (rule!8344 (_1!22022 lt!1237412))) lt!1237431) (rule!8344 (_1!22022 lt!1237412)) (size!28869 lt!1237431) lt!1237438) (_2!22022 lt!1237412))))))))

(declare-fun lt!1237425 () Unit!53925)

(declare-fun lemmaCharactersSize!661 (Token!10582) Unit!53925)

(assert (=> b!3601355 (= lt!1237425 (lemmaCharactersSize!661 (_1!22022 lt!1237412)))))

(declare-fun lt!1237426 () Unit!53925)

(declare-fun lemmaEqSameImage!799 (TokenValueInjection!11104 BalanceConc!22684 BalanceConc!22684) Unit!53925)

(declare-fun seqFromList!4161 (List!38008) BalanceConc!22684)

(assert (=> b!3601355 (= lt!1237426 (lemmaEqSameImage!799 (transformation!5608 (rule!8344 (_1!22022 lt!1237412))) lt!1237431 (seqFromList!4161 (originalCharacters!6322 (_1!22022 lt!1237412)))))))

(declare-fun lt!1237421 () Unit!53925)

(declare-fun lemmaSemiInverse!1365 (TokenValueInjection!11104 BalanceConc!22684) Unit!53925)

(assert (=> b!3601355 (= lt!1237421 (lemmaSemiInverse!1365 (transformation!5608 (rule!8344 (_1!22022 lt!1237412))) lt!1237431))))

(declare-fun e!2228590 () Bool)

(assert (=> b!3601356 (= e!2228590 (and tp!1101590 tp!1101604))))

(declare-fun b!3601357 () Bool)

(declare-fun res!1455499 () Bool)

(declare-fun e!2228580 () Bool)

(assert (=> b!3601357 (=> res!1455499 e!2228580)))

(declare-fun lt!1237436 () C!20920)

(declare-fun contains!7280 (List!38008 C!20920) Bool)

(declare-fun usedCharacters!822 (Regex!10367) List!38008)

(assert (=> b!3601357 (= res!1455499 (not (contains!7280 (usedCharacters!822 (regex!5608 anOtherTypeRule!33)) lt!1237436)))))

(declare-fun b!3601358 () Bool)

(declare-fun res!1455493 () Bool)

(declare-fun e!2228586 () Bool)

(assert (=> b!3601358 (=> res!1455493 e!2228586)))

(assert (=> b!3601358 (= res!1455493 (not (contains!7280 lt!1237413 lt!1237432)))))

(declare-fun b!3601359 () Bool)

(declare-fun e!2228573 () Bool)

(assert (=> b!3601359 (= e!2228589 (not e!2228573))))

(declare-fun res!1455511 () Bool)

(assert (=> b!3601359 (=> res!1455511 e!2228573)))

(declare-fun matchR!4936 (Regex!10367 List!38008) Bool)

(assert (=> b!3601359 (= res!1455511 (not (matchR!4936 (regex!5608 rule!403) lt!1237413)))))

(declare-fun ruleValid!1873 (LexerInterface!5197 Rule!11016) Bool)

(assert (=> b!3601359 (ruleValid!1873 thiss!23823 rule!403)))

(declare-fun lt!1237417 () Unit!53925)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1028 (LexerInterface!5197 Rule!11016 List!38009) Unit!53925)

(assert (=> b!3601359 (= lt!1237417 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1028 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3601360 () Bool)

(declare-fun e!2228578 () Bool)

(assert (=> b!3601360 (= e!2228586 e!2228578)))

(declare-fun res!1455496 () Bool)

(assert (=> b!3601360 (=> res!1455496 e!2228578)))

(declare-fun validRegex!4743 (Regex!10367) Bool)

(assert (=> b!3601360 (= res!1455496 (not (validRegex!4743 (regex!5608 (rule!8344 (_1!22022 lt!1237412))))))))

(assert (=> b!3601360 (not (contains!7280 (usedCharacters!822 (regex!5608 (rule!8344 (_1!22022 lt!1237412)))) lt!1237432))))

(declare-fun lt!1237440 () Unit!53925)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!326 (LexerInterface!5197 List!38009 List!38009 Rule!11016 Rule!11016 C!20920) Unit!53925)

(assert (=> b!3601360 (= lt!1237440 (lemmaNonSepRuleNotContainsCharContainedInASepRule!326 thiss!23823 rules!3307 rules!3307 (rule!8344 (_1!22022 lt!1237412)) rule!403 lt!1237432))))

(declare-fun b!3601361 () Bool)

(declare-fun res!1455509 () Bool)

(assert (=> b!3601361 (=> res!1455509 e!2228586)))

(declare-fun lt!1237423 () Bool)

(assert (=> b!3601361 (= res!1455509 lt!1237423)))

(declare-fun b!3601362 () Bool)

(declare-fun res!1455491 () Bool)

(assert (=> b!3601362 (=> res!1455491 e!2228572)))

(assert (=> b!3601362 (= res!1455491 (not (matchR!4936 (regex!5608 (rule!8344 (_1!22022 lt!1237412))) lt!1237438)))))

(declare-fun b!3601363 () Bool)

(declare-fun e!2228576 () Bool)

(assert (=> b!3601363 (= e!2228576 e!2228586)))

(declare-fun res!1455508 () Bool)

(assert (=> b!3601363 (=> res!1455508 e!2228586)))

(assert (=> b!3601363 (= res!1455508 (or (not (isSeparator!5608 rule!403)) (isSeparator!5608 (rule!8344 (_1!22022 lt!1237412)))))))

(declare-fun lt!1237439 () Unit!53925)

(assert (=> b!3601363 (= lt!1237439 e!2228568)))

(declare-fun c!623273 () Bool)

(assert (=> b!3601363 (= c!623273 lt!1237423)))

(declare-fun lt!1237410 () List!38008)

(assert (=> b!3601363 (= lt!1237423 (not (contains!7280 lt!1237410 lt!1237432)))))

(declare-fun head!7552 (List!38008) C!20920)

(assert (=> b!3601363 (= lt!1237432 (head!7552 lt!1237438))))

(declare-fun b!3601364 () Bool)

(declare-fun e!2228579 () Bool)

(declare-fun tp!1101602 () Bool)

(declare-fun e!2228575 () Bool)

(declare-fun inv!21 (TokenValue!5838) Bool)

(assert (=> b!3601364 (= e!2228579 (and (inv!21 (value!180288 token!511)) e!2228575 tp!1101602))))

(declare-fun b!3601365 () Bool)

(assert (=> b!3601365 (= e!2228578 true)))

(declare-fun lt!1237424 () Bool)

(assert (=> b!3601365 (= lt!1237424 (contains!7280 lt!1237438 lt!1237432))))

(declare-fun b!3601366 () Bool)

(declare-fun res!1455502 () Bool)

(assert (=> b!3601366 (=> res!1455502 e!2228573)))

(declare-fun suffix!1395 () List!38008)

(declare-fun isEmpty!22351 (List!38008) Bool)

(assert (=> b!3601366 (= res!1455502 (isEmpty!22351 suffix!1395))))

(declare-fun b!3601367 () Bool)

(declare-fun e!2228564 () Bool)

(declare-fun tp_is_empty!17817 () Bool)

(declare-fun tp!1101594 () Bool)

(assert (=> b!3601367 (= e!2228564 (and tp_is_empty!17817 tp!1101594))))

(declare-fun e!2228588 () Bool)

(declare-fun b!3601368 () Bool)

(declare-fun tp!1101600 () Bool)

(assert (=> b!3601368 (= e!2228575 (and tp!1101600 (inv!51238 (tag!6300 (rule!8344 token!511))) (inv!51241 (transformation!5608 (rule!8344 token!511))) e!2228588))))

(assert (=> b!3601369 (= e!2228577 (and tp!1101601 tp!1101596))))

(declare-fun b!3601370 () Bool)

(declare-fun e!2228563 () Bool)

(assert (=> b!3601370 (= e!2228574 e!2228563)))

(declare-fun res!1455514 () Bool)

(assert (=> b!3601370 (=> (not res!1455514) (not e!2228563))))

(declare-fun lt!1237429 () Option!7846)

(declare-fun isDefined!6078 (Option!7846) Bool)

(assert (=> b!3601370 (= res!1455514 (isDefined!6078 lt!1237429))))

(declare-fun maxPrefix!2731 (LexerInterface!5197 List!38009 List!38008) Option!7846)

(assert (=> b!3601370 (= lt!1237429 (maxPrefix!2731 thiss!23823 rules!3307 lt!1237413))))

(declare-fun list!13956 (BalanceConc!22684) List!38008)

(declare-fun charsOf!3622 (Token!10582) BalanceConc!22684)

(assert (=> b!3601370 (= lt!1237413 (list!13956 (charsOf!3622 token!511)))))

(declare-fun b!3601371 () Bool)

(declare-fun res!1455512 () Bool)

(assert (=> b!3601371 (=> (not res!1455512) (not e!2228574))))

(assert (=> b!3601371 (= res!1455512 (contains!7279 rules!3307 rule!403))))

(declare-fun res!1455506 () Bool)

(assert (=> start!334842 (=> (not res!1455506) (not e!2228574))))

(get-info :version)

(assert (=> start!334842 (= res!1455506 ((_ is Lexer!5195) thiss!23823))))

(assert (=> start!334842 e!2228574))

(declare-fun e!2228585 () Bool)

(assert (=> start!334842 e!2228585))

(assert (=> start!334842 e!2228564))

(assert (=> start!334842 true))

(declare-fun inv!51242 (Token!10582) Bool)

(assert (=> start!334842 (and (inv!51242 token!511) e!2228579)))

(assert (=> start!334842 e!2228566))

(declare-fun e!2228569 () Bool)

(assert (=> start!334842 e!2228569))

(declare-fun b!3601372 () Bool)

(declare-fun e!2228587 () Bool)

(declare-fun e!2228565 () Bool)

(assert (=> b!3601372 (= e!2228587 e!2228565)))

(declare-fun res!1455490 () Bool)

(assert (=> b!3601372 (=> (not res!1455490) (not e!2228565))))

(declare-fun lt!1237437 () Rule!11016)

(assert (=> b!3601372 (= res!1455490 (matchR!4936 (regex!5608 lt!1237437) (list!13956 (charsOf!3622 (_1!22022 lt!1237412)))))))

(declare-datatypes ((Option!7847 0))(
  ( (None!7846) (Some!7846 (v!37560 Rule!11016)) )
))
(declare-fun lt!1237422 () Option!7847)

(declare-fun get!12260 (Option!7847) Rule!11016)

(assert (=> b!3601372 (= lt!1237437 (get!12260 lt!1237422))))

(declare-fun e!2228583 () Bool)

(assert (=> b!3601373 (= e!2228583 (and tp!1101593 tp!1101597))))

(declare-fun b!3601374 () Bool)

(declare-fun e!2228570 () Bool)

(declare-fun tp!1101591 () Bool)

(assert (=> b!3601374 (= e!2228585 (and e!2228570 tp!1101591))))

(declare-fun b!3601375 () Bool)

(declare-fun res!1455494 () Bool)

(assert (=> b!3601375 (=> (not res!1455494) (not e!2228589))))

(declare-fun lt!1237435 () tuple2!37776)

(assert (=> b!3601375 (= res!1455494 (isEmpty!22351 (_2!22022 lt!1237435)))))

(declare-fun b!3601376 () Bool)

(declare-fun Unit!53928 () Unit!53925)

(assert (=> b!3601376 (= e!2228568 Unit!53928)))

(declare-fun tp!1101603 () Bool)

(declare-fun b!3601377 () Bool)

(assert (=> b!3601377 (= e!2228569 (and tp!1101603 (inv!51238 (tag!6300 anOtherTypeRule!33)) (inv!51241 (transformation!5608 anOtherTypeRule!33)) e!2228583))))

(declare-fun b!3601378 () Bool)

(assert (=> b!3601378 (= e!2228565 (= (rule!8344 (_1!22022 lt!1237412)) lt!1237437))))

(declare-fun b!3601379 () Bool)

(assert (=> b!3601379 (= e!2228563 e!2228589)))

(declare-fun res!1455497 () Bool)

(assert (=> b!3601379 (=> (not res!1455497) (not e!2228589))))

(assert (=> b!3601379 (= res!1455497 (= (_1!22022 lt!1237435) token!511))))

(declare-fun get!12261 (Option!7846) tuple2!37776)

(assert (=> b!3601379 (= lt!1237435 (get!12261 lt!1237429))))

(declare-fun b!3601380 () Bool)

(declare-fun res!1455501 () Bool)

(assert (=> b!3601380 (=> res!1455501 e!2228580)))

(declare-fun sepAndNonSepRulesDisjointChars!1778 (List!38009 List!38009) Bool)

(assert (=> b!3601380 (= res!1455501 (not (sepAndNonSepRulesDisjointChars!1778 rules!3307 rules!3307)))))

(declare-fun b!3601381 () Bool)

(declare-fun res!1455503 () Bool)

(assert (=> b!3601381 (=> (not res!1455503) (not e!2228574))))

(assert (=> b!3601381 (= res!1455503 (not (= (isSeparator!5608 anOtherTypeRule!33) (isSeparator!5608 rule!403))))))

(declare-fun b!3601382 () Bool)

(assert (=> b!3601382 (= e!2228573 e!2228580)))

(declare-fun res!1455510 () Bool)

(assert (=> b!3601382 (=> res!1455510 e!2228580)))

(assert (=> b!3601382 (= res!1455510 (contains!7280 lt!1237410 lt!1237436))))

(assert (=> b!3601382 (= lt!1237436 (head!7552 suffix!1395))))

(assert (=> b!3601382 (= lt!1237410 (usedCharacters!822 (regex!5608 rule!403)))))

(declare-fun b!3601383 () Bool)

(assert (=> b!3601383 (= e!2228580 e!2228572)))

(declare-fun res!1455500 () Bool)

(assert (=> b!3601383 (=> res!1455500 e!2228572)))

(declare-fun lt!1237433 () List!38008)

(declare-fun isPrefix!2971 (List!38008 List!38008) Bool)

(assert (=> b!3601383 (= res!1455500 (not (isPrefix!2971 lt!1237438 lt!1237433)))))

(declare-fun ++!9424 (List!38008 List!38008) List!38008)

(assert (=> b!3601383 (isPrefix!2971 lt!1237438 (++!9424 lt!1237438 (_2!22022 lt!1237412)))))

(declare-fun lt!1237434 () Unit!53925)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1892 (List!38008 List!38008) Unit!53925)

(assert (=> b!3601383 (= lt!1237434 (lemmaConcatTwoListThenFirstIsPrefix!1892 lt!1237438 (_2!22022 lt!1237412)))))

(assert (=> b!3601383 (= lt!1237438 (list!13956 lt!1237431))))

(assert (=> b!3601383 (= lt!1237431 (charsOf!3622 (_1!22022 lt!1237412)))))

(assert (=> b!3601383 e!2228587))

(declare-fun res!1455492 () Bool)

(assert (=> b!3601383 (=> (not res!1455492) (not e!2228587))))

(declare-fun isDefined!6079 (Option!7847) Bool)

(assert (=> b!3601383 (= res!1455492 (isDefined!6079 lt!1237422))))

(declare-fun getRuleFromTag!1214 (LexerInterface!5197 List!38009 String!42524) Option!7847)

(assert (=> b!3601383 (= lt!1237422 (getRuleFromTag!1214 thiss!23823 rules!3307 (tag!6300 (rule!8344 (_1!22022 lt!1237412)))))))

(declare-fun lt!1237420 () Unit!53925)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1214 (LexerInterface!5197 List!38009 List!38008 Token!10582) Unit!53925)

(assert (=> b!3601383 (= lt!1237420 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1214 thiss!23823 rules!3307 lt!1237433 (_1!22022 lt!1237412)))))

(assert (=> b!3601383 (= lt!1237412 (get!12261 lt!1237427))))

(declare-fun lt!1237415 () Unit!53925)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!877 (LexerInterface!5197 List!38009 List!38008 List!38008) Unit!53925)

(assert (=> b!3601383 (= lt!1237415 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!877 thiss!23823 rules!3307 lt!1237413 suffix!1395))))

(assert (=> b!3601383 (= lt!1237427 (maxPrefix!2731 thiss!23823 rules!3307 lt!1237433))))

(assert (=> b!3601383 (isPrefix!2971 lt!1237413 lt!1237433)))

(declare-fun lt!1237430 () Unit!53925)

(assert (=> b!3601383 (= lt!1237430 (lemmaConcatTwoListThenFirstIsPrefix!1892 lt!1237413 suffix!1395))))

(assert (=> b!3601383 (= lt!1237433 (++!9424 lt!1237413 suffix!1395))))

(declare-fun b!3601384 () Bool)

(assert (=> b!3601384 (= e!2228562 e!2228576)))

(declare-fun res!1455495 () Bool)

(assert (=> b!3601384 (=> res!1455495 e!2228576)))

(declare-fun lt!1237409 () Option!7846)

(declare-fun lt!1237414 () List!38008)

(assert (=> b!3601384 (= res!1455495 (or (not (= lt!1237414 (_2!22022 lt!1237412))) (not (= lt!1237409 (Some!7845 (tuple2!37777 (_1!22022 lt!1237412) lt!1237414))))))))

(assert (=> b!3601384 (= (_2!22022 lt!1237412) lt!1237414)))

(declare-fun lt!1237411 () Unit!53925)

(declare-fun lemmaSamePrefixThenSameSuffix!1326 (List!38008 List!38008 List!38008 List!38008 List!38008) Unit!53925)

(assert (=> b!3601384 (= lt!1237411 (lemmaSamePrefixThenSameSuffix!1326 lt!1237438 (_2!22022 lt!1237412) lt!1237438 lt!1237414 lt!1237433))))

(declare-fun getSuffix!1546 (List!38008 List!38008) List!38008)

(assert (=> b!3601384 (= lt!1237414 (getSuffix!1546 lt!1237433 lt!1237438))))

(declare-fun lt!1237419 () Int)

(declare-fun lt!1237428 () TokenValue!5838)

(assert (=> b!3601384 (= lt!1237409 (Some!7845 (tuple2!37777 (Token!10583 lt!1237428 (rule!8344 (_1!22022 lt!1237412)) lt!1237419 lt!1237438) (_2!22022 lt!1237412))))))

(declare-fun maxPrefixOneRule!1875 (LexerInterface!5197 Rule!11016 List!38008) Option!7846)

(assert (=> b!3601384 (= lt!1237409 (maxPrefixOneRule!1875 thiss!23823 (rule!8344 (_1!22022 lt!1237412)) lt!1237433))))

(declare-fun size!28870 (List!38008) Int)

(assert (=> b!3601384 (= lt!1237419 (size!28870 lt!1237438))))

(assert (=> b!3601384 (= lt!1237428 (apply!9114 (transformation!5608 (rule!8344 (_1!22022 lt!1237412))) (seqFromList!4161 lt!1237438)))))

(declare-fun lt!1237416 () Unit!53925)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!947 (LexerInterface!5197 List!38009 List!38008 List!38008 List!38008 Rule!11016) Unit!53925)

(assert (=> b!3601384 (= lt!1237416 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!947 thiss!23823 rules!3307 lt!1237438 lt!1237433 (_2!22022 lt!1237412) (rule!8344 (_1!22022 lt!1237412))))))

(declare-fun b!3601385 () Bool)

(declare-fun tp!1101598 () Bool)

(assert (=> b!3601385 (= e!2228570 (and tp!1101598 (inv!51238 (tag!6300 (h!43305 rules!3307))) (inv!51241 (transformation!5608 (h!43305 rules!3307))) e!2228590))))

(assert (=> b!3601386 (= e!2228588 (and tp!1101595 tp!1101592))))

(assert (= (and start!334842 res!1455506) b!3601352))

(assert (= (and b!3601352 res!1455505) b!3601349))

(assert (= (and b!3601349 res!1455507) b!3601371))

(assert (= (and b!3601371 res!1455512) b!3601351))

(assert (= (and b!3601351 res!1455504) b!3601381))

(assert (= (and b!3601381 res!1455503) b!3601370))

(assert (= (and b!3601370 res!1455514) b!3601379))

(assert (= (and b!3601379 res!1455497) b!3601375))

(assert (= (and b!3601375 res!1455494) b!3601354))

(assert (= (and b!3601354 res!1455513) b!3601359))

(assert (= (and b!3601359 (not res!1455511)) b!3601366))

(assert (= (and b!3601366 (not res!1455502)) b!3601382))

(assert (= (and b!3601382 (not res!1455510)) b!3601357))

(assert (= (and b!3601357 (not res!1455499)) b!3601380))

(assert (= (and b!3601380 (not res!1455501)) b!3601383))

(assert (= (and b!3601383 res!1455492) b!3601372))

(assert (= (and b!3601372 res!1455490) b!3601378))

(assert (= (and b!3601383 (not res!1455500)) b!3601362))

(assert (= (and b!3601362 (not res!1455491)) b!3601355))

(assert (= (and b!3601355 (not res!1455498)) b!3601384))

(assert (= (and b!3601384 (not res!1455495)) b!3601363))

(assert (= (and b!3601363 c!623273) b!3601350))

(assert (= (and b!3601363 (not c!623273)) b!3601376))

(assert (= (and b!3601363 (not res!1455508)) b!3601358))

(assert (= (and b!3601358 (not res!1455493)) b!3601361))

(assert (= (and b!3601361 (not res!1455509)) b!3601360))

(assert (= (and b!3601360 (not res!1455496)) b!3601365))

(assert (= b!3601385 b!3601356))

(assert (= b!3601374 b!3601385))

(assert (= (and start!334842 ((_ is Cons!37885) rules!3307)) b!3601374))

(assert (= (and start!334842 ((_ is Cons!37884) suffix!1395)) b!3601367))

(assert (= b!3601368 b!3601386))

(assert (= b!3601364 b!3601368))

(assert (= start!334842 b!3601364))

(assert (= b!3601353 b!3601369))

(assert (= start!334842 b!3601353))

(assert (= b!3601377 b!3601373))

(assert (= start!334842 b!3601377))

(declare-fun m!4097303 () Bool)

(assert (=> b!3601380 m!4097303))

(declare-fun m!4097305 () Bool)

(assert (=> b!3601371 m!4097305))

(declare-fun m!4097307 () Bool)

(assert (=> b!3601370 m!4097307))

(declare-fun m!4097309 () Bool)

(assert (=> b!3601370 m!4097309))

(declare-fun m!4097311 () Bool)

(assert (=> b!3601370 m!4097311))

(assert (=> b!3601370 m!4097311))

(declare-fun m!4097313 () Bool)

(assert (=> b!3601370 m!4097313))

(declare-fun m!4097315 () Bool)

(assert (=> b!3601357 m!4097315))

(assert (=> b!3601357 m!4097315))

(declare-fun m!4097317 () Bool)

(assert (=> b!3601357 m!4097317))

(declare-fun m!4097319 () Bool)

(assert (=> b!3601362 m!4097319))

(declare-fun m!4097321 () Bool)

(assert (=> b!3601352 m!4097321))

(declare-fun m!4097323 () Bool)

(assert (=> b!3601368 m!4097323))

(declare-fun m!4097325 () Bool)

(assert (=> b!3601368 m!4097325))

(declare-fun m!4097327 () Bool)

(assert (=> b!3601379 m!4097327))

(declare-fun m!4097329 () Bool)

(assert (=> b!3601358 m!4097329))

(declare-fun m!4097331 () Bool)

(assert (=> b!3601349 m!4097331))

(declare-fun m!4097333 () Bool)

(assert (=> b!3601353 m!4097333))

(declare-fun m!4097335 () Bool)

(assert (=> b!3601353 m!4097335))

(declare-fun m!4097337 () Bool)

(assert (=> b!3601359 m!4097337))

(declare-fun m!4097339 () Bool)

(assert (=> b!3601359 m!4097339))

(declare-fun m!4097341 () Bool)

(assert (=> b!3601359 m!4097341))

(declare-fun m!4097343 () Bool)

(assert (=> start!334842 m!4097343))

(declare-fun m!4097345 () Bool)

(assert (=> b!3601366 m!4097345))

(declare-fun m!4097347 () Bool)

(assert (=> b!3601377 m!4097347))

(declare-fun m!4097349 () Bool)

(assert (=> b!3601377 m!4097349))

(declare-fun m!4097351 () Bool)

(assert (=> b!3601365 m!4097351))

(declare-fun m!4097353 () Bool)

(assert (=> b!3601384 m!4097353))

(declare-fun m!4097355 () Bool)

(assert (=> b!3601384 m!4097355))

(declare-fun m!4097357 () Bool)

(assert (=> b!3601384 m!4097357))

(declare-fun m!4097359 () Bool)

(assert (=> b!3601384 m!4097359))

(declare-fun m!4097361 () Bool)

(assert (=> b!3601384 m!4097361))

(assert (=> b!3601384 m!4097353))

(declare-fun m!4097363 () Bool)

(assert (=> b!3601384 m!4097363))

(declare-fun m!4097365 () Bool)

(assert (=> b!3601384 m!4097365))

(declare-fun m!4097367 () Bool)

(assert (=> b!3601372 m!4097367))

(assert (=> b!3601372 m!4097367))

(declare-fun m!4097369 () Bool)

(assert (=> b!3601372 m!4097369))

(assert (=> b!3601372 m!4097369))

(declare-fun m!4097371 () Bool)

(assert (=> b!3601372 m!4097371))

(declare-fun m!4097373 () Bool)

(assert (=> b!3601372 m!4097373))

(declare-fun m!4097375 () Bool)

(assert (=> b!3601355 m!4097375))

(declare-fun m!4097377 () Bool)

(assert (=> b!3601355 m!4097377))

(declare-fun m!4097379 () Bool)

(assert (=> b!3601355 m!4097379))

(assert (=> b!3601355 m!4097377))

(declare-fun m!4097381 () Bool)

(assert (=> b!3601355 m!4097381))

(declare-fun m!4097383 () Bool)

(assert (=> b!3601355 m!4097383))

(declare-fun m!4097385 () Bool)

(assert (=> b!3601355 m!4097385))

(declare-fun m!4097387 () Bool)

(assert (=> b!3601383 m!4097387))

(declare-fun m!4097389 () Bool)

(assert (=> b!3601383 m!4097389))

(declare-fun m!4097391 () Bool)

(assert (=> b!3601383 m!4097391))

(declare-fun m!4097393 () Bool)

(assert (=> b!3601383 m!4097393))

(assert (=> b!3601383 m!4097391))

(declare-fun m!4097395 () Bool)

(assert (=> b!3601383 m!4097395))

(declare-fun m!4097397 () Bool)

(assert (=> b!3601383 m!4097397))

(declare-fun m!4097399 () Bool)

(assert (=> b!3601383 m!4097399))

(declare-fun m!4097401 () Bool)

(assert (=> b!3601383 m!4097401))

(assert (=> b!3601383 m!4097367))

(declare-fun m!4097403 () Bool)

(assert (=> b!3601383 m!4097403))

(declare-fun m!4097405 () Bool)

(assert (=> b!3601383 m!4097405))

(declare-fun m!4097407 () Bool)

(assert (=> b!3601383 m!4097407))

(declare-fun m!4097409 () Bool)

(assert (=> b!3601383 m!4097409))

(declare-fun m!4097411 () Bool)

(assert (=> b!3601383 m!4097411))

(declare-fun m!4097413 () Bool)

(assert (=> b!3601383 m!4097413))

(declare-fun m!4097415 () Bool)

(assert (=> b!3601364 m!4097415))

(declare-fun m!4097417 () Bool)

(assert (=> b!3601360 m!4097417))

(declare-fun m!4097419 () Bool)

(assert (=> b!3601360 m!4097419))

(assert (=> b!3601360 m!4097419))

(declare-fun m!4097421 () Bool)

(assert (=> b!3601360 m!4097421))

(declare-fun m!4097423 () Bool)

(assert (=> b!3601360 m!4097423))

(declare-fun m!4097425 () Bool)

(assert (=> b!3601382 m!4097425))

(declare-fun m!4097427 () Bool)

(assert (=> b!3601382 m!4097427))

(declare-fun m!4097429 () Bool)

(assert (=> b!3601382 m!4097429))

(declare-fun m!4097431 () Bool)

(assert (=> b!3601363 m!4097431))

(declare-fun m!4097433 () Bool)

(assert (=> b!3601363 m!4097433))

(declare-fun m!4097435 () Bool)

(assert (=> b!3601385 m!4097435))

(declare-fun m!4097437 () Bool)

(assert (=> b!3601385 m!4097437))

(declare-fun m!4097439 () Bool)

(assert (=> b!3601375 m!4097439))

(declare-fun m!4097441 () Bool)

(assert (=> b!3601351 m!4097441))

(declare-fun m!4097443 () Bool)

(assert (=> b!3601350 m!4097443))

(check-sat (not b!3601360) tp_is_empty!17817 (not b!3601352) (not b!3601351) b_and!261679 (not b!3601371) b_and!261675 (not b!3601383) (not b!3601363) (not b_next!93907) (not b_next!93919) (not b!3601355) (not b!3601366) b_and!261681 (not b!3601362) b_and!261673 (not b_next!93911) (not b!3601375) b_and!261669 (not b!3601380) b_and!261667 (not b!3601379) (not b!3601350) (not b!3601370) (not b!3601357) (not b!3601349) (not b_next!93909) (not b!3601353) (not b!3601367) (not start!334842) (not b!3601384) (not b!3601364) (not b_next!93915) (not b!3601359) (not b!3601372) (not b_next!93917) (not b!3601374) (not b!3601368) (not b!3601385) (not b!3601358) (not b!3601377) (not b!3601382) (not b_next!93905) (not b!3601365) (not b_next!93913) b_and!261677 b_and!261671)
(check-sat b_and!261673 b_and!261667 (not b_next!93909) b_and!261679 (not b_next!93915) b_and!261675 (not b_next!93917) (not b_next!93905) (not b_next!93907) (not b_next!93919) (not b_next!93913) b_and!261681 (not b_next!93911) b_and!261669 b_and!261677 b_and!261671)
