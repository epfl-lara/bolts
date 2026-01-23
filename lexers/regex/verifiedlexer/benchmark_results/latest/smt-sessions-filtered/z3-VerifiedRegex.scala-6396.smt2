; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333198 () Bool)

(assert start!333198)

(declare-fun b!3590300 () Bool)

(declare-fun b_free!92545 () Bool)

(declare-fun b_next!93249 () Bool)

(assert (=> b!3590300 (= b_free!92545 (not b_next!93249))))

(declare-fun tp!1098960 () Bool)

(declare-fun b_and!259571 () Bool)

(assert (=> b!3590300 (= tp!1098960 b_and!259571)))

(declare-fun b_free!92547 () Bool)

(declare-fun b_next!93251 () Bool)

(assert (=> b!3590300 (= b_free!92547 (not b_next!93251))))

(declare-fun tp!1098963 () Bool)

(declare-fun b_and!259573 () Bool)

(assert (=> b!3590300 (= tp!1098963 b_and!259573)))

(declare-fun b!3590314 () Bool)

(declare-fun b_free!92549 () Bool)

(declare-fun b_next!93253 () Bool)

(assert (=> b!3590314 (= b_free!92549 (not b_next!93253))))

(declare-fun tp!1098964 () Bool)

(declare-fun b_and!259575 () Bool)

(assert (=> b!3590314 (= tp!1098964 b_and!259575)))

(declare-fun b_free!92551 () Bool)

(declare-fun b_next!93255 () Bool)

(assert (=> b!3590314 (= b_free!92551 (not b_next!93255))))

(declare-fun tp!1098956 () Bool)

(declare-fun b_and!259577 () Bool)

(assert (=> b!3590314 (= tp!1098956 b_and!259577)))

(declare-fun b!3590308 () Bool)

(declare-fun b_free!92553 () Bool)

(declare-fun b_next!93257 () Bool)

(assert (=> b!3590308 (= b_free!92553 (not b_next!93257))))

(declare-fun tp!1098962 () Bool)

(declare-fun b_and!259579 () Bool)

(assert (=> b!3590308 (= tp!1098962 b_and!259579)))

(declare-fun b_free!92555 () Bool)

(declare-fun b_next!93259 () Bool)

(assert (=> b!3590308 (= b_free!92555 (not b_next!93259))))

(declare-fun tp!1098958 () Bool)

(declare-fun b_and!259581 () Bool)

(assert (=> b!3590308 (= tp!1098958 b_and!259581)))

(declare-fun b!3590297 () Bool)

(declare-fun b_free!92557 () Bool)

(declare-fun b_next!93261 () Bool)

(assert (=> b!3590297 (= b_free!92557 (not b_next!93261))))

(declare-fun tp!1098961 () Bool)

(declare-fun b_and!259583 () Bool)

(assert (=> b!3590297 (= tp!1098961 b_and!259583)))

(declare-fun b_free!92559 () Bool)

(declare-fun b_next!93263 () Bool)

(assert (=> b!3590297 (= b_free!92559 (not b_next!93263))))

(declare-fun tp!1098959 () Bool)

(declare-fun b_and!259585 () Bool)

(assert (=> b!3590297 (= tp!1098959 b_and!259585)))

(declare-fun b!3590282 () Bool)

(declare-fun res!1449362 () Bool)

(declare-fun e!2221454 () Bool)

(assert (=> b!3590282 (=> res!1449362 e!2221454)))

(declare-datatypes ((List!37859 0))(
  ( (Nil!37735) (Cons!37735 (h!43155 (_ BitVec 16)) (t!290990 List!37859)) )
))
(declare-datatypes ((TokenValue!5802 0))(
  ( (FloatLiteralValue!11604 (text!41059 List!37859)) (TokenValueExt!5801 (__x!23821 Int)) (Broken!29010 (value!179236 List!37859)) (Object!5925) (End!5802) (Def!5802) (Underscore!5802) (Match!5802) (Else!5802) (Error!5802) (Case!5802) (If!5802) (Extends!5802) (Abstract!5802) (Class!5802) (Val!5802) (DelimiterValue!11604 (del!5862 List!37859)) (KeywordValue!5808 (value!179237 List!37859)) (CommentValue!11604 (value!179238 List!37859)) (WhitespaceValue!11604 (value!179239 List!37859)) (IndentationValue!5802 (value!179240 List!37859)) (String!42343) (Int32!5802) (Broken!29011 (value!179241 List!37859)) (Boolean!5803) (Unit!53734) (OperatorValue!5805 (op!5862 List!37859)) (IdentifierValue!11604 (value!179242 List!37859)) (IdentifierValue!11605 (value!179243 List!37859)) (WhitespaceValue!11605 (value!179244 List!37859)) (True!11604) (False!11604) (Broken!29012 (value!179245 List!37859)) (Broken!29013 (value!179246 List!37859)) (True!11605) (RightBrace!5802) (RightBracket!5802) (Colon!5802) (Null!5802) (Comma!5802) (LeftBracket!5802) (False!11605) (LeftBrace!5802) (ImaginaryLiteralValue!5802 (text!41060 List!37859)) (StringLiteralValue!17406 (value!179247 List!37859)) (EOFValue!5802 (value!179248 List!37859)) (IdentValue!5802 (value!179249 List!37859)) (DelimiterValue!11605 (value!179250 List!37859)) (DedentValue!5802 (value!179251 List!37859)) (NewLineValue!5802 (value!179252 List!37859)) (IntegerValue!17406 (value!179253 (_ BitVec 32)) (text!41061 List!37859)) (IntegerValue!17407 (value!179254 Int) (text!41062 List!37859)) (Times!5802) (Or!5802) (Equal!5802) (Minus!5802) (Broken!29014 (value!179255 List!37859)) (And!5802) (Div!5802) (LessEqual!5802) (Mod!5802) (Concat!16133) (Not!5802) (Plus!5802) (SpaceValue!5802 (value!179256 List!37859)) (IntegerValue!17408 (value!179257 Int) (text!41063 List!37859)) (StringLiteralValue!17407 (text!41064 List!37859)) (FloatLiteralValue!11605 (text!41065 List!37859)) (BytesLiteralValue!5802 (value!179258 List!37859)) (CommentValue!11605 (value!179259 List!37859)) (StringLiteralValue!17408 (value!179260 List!37859)) (ErrorTokenValue!5802 (msg!5863 List!37859)) )
))
(declare-datatypes ((C!20848 0))(
  ( (C!20849 (val!12472 Int)) )
))
(declare-datatypes ((Regex!10331 0))(
  ( (ElementMatch!10331 (c!621812 C!20848)) (Concat!16134 (regOne!21174 Regex!10331) (regTwo!21174 Regex!10331)) (EmptyExpr!10331) (Star!10331 (reg!10660 Regex!10331)) (EmptyLang!10331) (Union!10331 (regOne!21175 Regex!10331) (regTwo!21175 Regex!10331)) )
))
(declare-datatypes ((String!42344 0))(
  ( (String!42345 (value!179261 String)) )
))
(declare-datatypes ((List!37860 0))(
  ( (Nil!37736) (Cons!37736 (h!43156 C!20848) (t!290991 List!37860)) )
))
(declare-datatypes ((IArray!22963 0))(
  ( (IArray!22964 (innerList!11539 List!37860)) )
))
(declare-datatypes ((Conc!11479 0))(
  ( (Node!11479 (left!29487 Conc!11479) (right!29817 Conc!11479) (csize!23188 Int) (cheight!11690 Int)) (Leaf!17876 (xs!14681 IArray!22963) (csize!23189 Int)) (Empty!11479) )
))
(declare-datatypes ((BalanceConc!22572 0))(
  ( (BalanceConc!22573 (c!621813 Conc!11479)) )
))
(declare-datatypes ((TokenValueInjection!11032 0))(
  ( (TokenValueInjection!11033 (toValue!7856 Int) (toChars!7715 Int)) )
))
(declare-datatypes ((Rule!10944 0))(
  ( (Rule!10945 (regex!5572 Regex!10331) (tag!6244 String!42344) (isSeparator!5572 Bool) (transformation!5572 TokenValueInjection!11032)) )
))
(declare-datatypes ((Token!10510 0))(
  ( (Token!10511 (value!179262 TokenValue!5802) (rule!8288 Rule!10944) (size!28740 Int) (originalCharacters!6286 List!37860)) )
))
(declare-datatypes ((tuple2!37624 0))(
  ( (tuple2!37625 (_1!21946 Token!10510) (_2!21946 List!37860)) )
))
(declare-fun lt!1231557 () tuple2!37624)

(declare-fun lt!1231554 () List!37860)

(declare-fun matchR!4900 (Regex!10331 List!37860) Bool)

(assert (=> b!3590282 (= res!1449362 (not (matchR!4900 (regex!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231554)))))

(declare-fun b!3590283 () Bool)

(declare-fun res!1449361 () Bool)

(declare-fun e!2221467 () Bool)

(assert (=> b!3590283 (=> res!1449361 e!2221467)))

(declare-datatypes ((List!37861 0))(
  ( (Nil!37737) (Cons!37737 (h!43157 Rule!10944) (t!290992 List!37861)) )
))
(declare-fun rules!3307 () List!37861)

(declare-fun sepAndNonSepRulesDisjointChars!1742 (List!37861 List!37861) Bool)

(assert (=> b!3590283 (= res!1449361 (not (sepAndNonSepRulesDisjointChars!1742 rules!3307 rules!3307)))))

(declare-fun b!3590284 () Bool)

(declare-fun e!2221463 () Bool)

(assert (=> b!3590284 (= e!2221463 e!2221467)))

(declare-fun res!1449374 () Bool)

(assert (=> b!3590284 (=> res!1449374 e!2221467)))

(declare-fun rule!403 () Rule!10944)

(declare-fun lt!1231562 () C!20848)

(declare-fun contains!7207 (List!37860 C!20848) Bool)

(declare-fun usedCharacters!786 (Regex!10331) List!37860)

(assert (=> b!3590284 (= res!1449374 (contains!7207 (usedCharacters!786 (regex!5572 rule!403)) lt!1231562))))

(declare-fun suffix!1395 () List!37860)

(declare-fun head!7496 (List!37860) C!20848)

(assert (=> b!3590284 (= lt!1231562 (head!7496 suffix!1395))))

(declare-fun b!3590285 () Bool)

(declare-fun e!2221450 () Bool)

(assert (=> b!3590285 (= e!2221450 (not e!2221463))))

(declare-fun res!1449363 () Bool)

(assert (=> b!3590285 (=> res!1449363 e!2221463)))

(declare-fun lt!1231556 () List!37860)

(assert (=> b!3590285 (= res!1449363 (not (matchR!4900 (regex!5572 rule!403) lt!1231556)))))

(declare-datatypes ((LexerInterface!5161 0))(
  ( (LexerInterfaceExt!5158 (__x!23822 Int)) (Lexer!5159) )
))
(declare-fun thiss!23823 () LexerInterface!5161)

(declare-fun ruleValid!1837 (LexerInterface!5161 Rule!10944) Bool)

(assert (=> b!3590285 (ruleValid!1837 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53735 0))(
  ( (Unit!53736) )
))
(declare-fun lt!1231546 () Unit!53735)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!992 (LexerInterface!5161 Rule!10944 List!37861) Unit!53735)

(assert (=> b!3590285 (= lt!1231546 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!992 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3590286 () Bool)

(declare-fun res!1449367 () Bool)

(assert (=> b!3590286 (=> (not res!1449367) (not e!2221450))))

(declare-fun token!511 () Token!10510)

(assert (=> b!3590286 (= res!1449367 (= (rule!8288 token!511) rule!403))))

(declare-fun b!3590287 () Bool)

(declare-fun res!1449358 () Bool)

(assert (=> b!3590287 (=> res!1449358 e!2221467)))

(declare-fun anOtherTypeRule!33 () Rule!10944)

(assert (=> b!3590287 (= res!1449358 (not (contains!7207 (usedCharacters!786 (regex!5572 anOtherTypeRule!33)) lt!1231562)))))

(declare-fun tp!1098950 () Bool)

(declare-fun b!3590288 () Bool)

(declare-fun e!2221472 () Bool)

(declare-fun e!2221459 () Bool)

(declare-fun inv!51072 (String!42344) Bool)

(declare-fun inv!51075 (TokenValueInjection!11032) Bool)

(assert (=> b!3590288 (= e!2221459 (and tp!1098950 (inv!51072 (tag!6244 (rule!8288 token!511))) (inv!51075 (transformation!5572 (rule!8288 token!511))) e!2221472))))

(declare-fun b!3590289 () Bool)

(declare-fun e!2221451 () Bool)

(assert (=> b!3590289 (= e!2221454 e!2221451)))

(declare-fun res!1449352 () Bool)

(assert (=> b!3590289 (=> res!1449352 e!2221451)))

(declare-datatypes ((Option!7774 0))(
  ( (None!7773) (Some!7773 (v!37447 tuple2!37624)) )
))
(declare-fun lt!1231558 () Option!7774)

(declare-fun lt!1231567 () BalanceConc!22572)

(declare-fun apply!9078 (TokenValueInjection!11032 BalanceConc!22572) TokenValue!5802)

(declare-fun size!28741 (BalanceConc!22572) Int)

(assert (=> b!3590289 (= res!1449352 (not (= lt!1231558 (Some!7773 (tuple2!37625 (Token!10511 (apply!9078 (transformation!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231567) (rule!8288 (_1!21946 lt!1231557)) (size!28741 lt!1231567) lt!1231554) (_2!21946 lt!1231557))))))))

(declare-fun lt!1231549 () Unit!53735)

(declare-fun lemmaCharactersSize!625 (Token!10510) Unit!53735)

(assert (=> b!3590289 (= lt!1231549 (lemmaCharactersSize!625 (_1!21946 lt!1231557)))))

(declare-fun lt!1231551 () Unit!53735)

(declare-fun lemmaEqSameImage!763 (TokenValueInjection!11032 BalanceConc!22572 BalanceConc!22572) Unit!53735)

(declare-fun seqFromList!4125 (List!37860) BalanceConc!22572)

(assert (=> b!3590289 (= lt!1231551 (lemmaEqSameImage!763 (transformation!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231567 (seqFromList!4125 (originalCharacters!6286 (_1!21946 lt!1231557)))))))

(declare-fun lt!1231548 () Unit!53735)

(declare-fun lemmaSemiInverse!1329 (TokenValueInjection!11032 BalanceConc!22572) Unit!53735)

(assert (=> b!3590289 (= lt!1231548 (lemmaSemiInverse!1329 (transformation!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231567))))

(declare-fun e!2221469 () Bool)

(declare-fun e!2221465 () Bool)

(declare-fun tp!1098957 () Bool)

(declare-fun b!3590290 () Bool)

(assert (=> b!3590290 (= e!2221465 (and tp!1098957 (inv!51072 (tag!6244 (h!43157 rules!3307))) (inv!51075 (transformation!5572 (h!43157 rules!3307))) e!2221469))))

(declare-fun b!3590291 () Bool)

(declare-fun e!2221473 () Bool)

(declare-fun e!2221470 () Bool)

(assert (=> b!3590291 (= e!2221473 e!2221470)))

(declare-fun res!1449369 () Bool)

(assert (=> b!3590291 (=> (not res!1449369) (not e!2221470))))

(declare-fun lt!1231566 () Rule!10944)

(declare-fun list!13880 (BalanceConc!22572) List!37860)

(declare-fun charsOf!3586 (Token!10510) BalanceConc!22572)

(assert (=> b!3590291 (= res!1449369 (matchR!4900 (regex!5572 lt!1231566) (list!13880 (charsOf!3586 (_1!21946 lt!1231557)))))))

(declare-datatypes ((Option!7775 0))(
  ( (None!7774) (Some!7774 (v!37448 Rule!10944)) )
))
(declare-fun lt!1231559 () Option!7775)

(declare-fun get!12170 (Option!7775) Rule!10944)

(assert (=> b!3590291 (= lt!1231566 (get!12170 lt!1231559))))

(declare-fun b!3590292 () Bool)

(declare-fun e!2221468 () Bool)

(declare-fun tp!1098954 () Bool)

(assert (=> b!3590292 (= e!2221468 (and e!2221465 tp!1098954))))

(declare-fun tp!1098951 () Bool)

(declare-fun e!2221455 () Bool)

(declare-fun b!3590293 () Bool)

(declare-fun inv!21 (TokenValue!5802) Bool)

(assert (=> b!3590293 (= e!2221455 (and (inv!21 (value!179262 token!511)) e!2221459 tp!1098951))))

(declare-fun res!1449356 () Bool)

(declare-fun e!2221474 () Bool)

(assert (=> start!333198 (=> (not res!1449356) (not e!2221474))))

(get-info :version)

(assert (=> start!333198 (= res!1449356 ((_ is Lexer!5159) thiss!23823))))

(assert (=> start!333198 e!2221474))

(assert (=> start!333198 e!2221468))

(declare-fun e!2221462 () Bool)

(assert (=> start!333198 e!2221462))

(assert (=> start!333198 true))

(declare-fun inv!51076 (Token!10510) Bool)

(assert (=> start!333198 (and (inv!51076 token!511) e!2221455)))

(declare-fun e!2221452 () Bool)

(assert (=> start!333198 e!2221452))

(declare-fun e!2221458 () Bool)

(assert (=> start!333198 e!2221458))

(declare-fun b!3590294 () Bool)

(declare-fun res!1449355 () Bool)

(assert (=> b!3590294 (=> (not res!1449355) (not e!2221450))))

(declare-fun lt!1231550 () tuple2!37624)

(declare-fun isEmpty!22238 (List!37860) Bool)

(assert (=> b!3590294 (= res!1449355 (isEmpty!22238 (_2!21946 lt!1231550)))))

(declare-fun b!3590295 () Bool)

(declare-fun e!2221457 () Bool)

(assert (=> b!3590295 (= e!2221451 e!2221457)))

(declare-fun res!1449366 () Bool)

(assert (=> b!3590295 (=> res!1449366 e!2221457)))

(declare-fun lt!1231564 () BalanceConc!22572)

(declare-fun size!28742 (List!37860) Int)

(assert (=> b!3590295 (= res!1449366 (not (= lt!1231558 (Some!7773 (tuple2!37625 (Token!10511 (apply!9078 (transformation!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231564) (rule!8288 (_1!21946 lt!1231557)) (size!28742 lt!1231554) lt!1231554) (_2!21946 lt!1231557))))))))

(declare-fun lt!1231560 () Unit!53735)

(assert (=> b!3590295 (= lt!1231560 (lemmaSemiInverse!1329 (transformation!5572 (rule!8288 (_1!21946 lt!1231557))) lt!1231564))))

(assert (=> b!3590295 (= lt!1231564 (seqFromList!4125 lt!1231554))))

(declare-fun b!3590296 () Bool)

(declare-fun res!1449357 () Bool)

(assert (=> b!3590296 (=> (not res!1449357) (not e!2221474))))

(declare-fun isEmpty!22239 (List!37861) Bool)

(assert (=> b!3590296 (= res!1449357 (not (isEmpty!22239 rules!3307)))))

(declare-fun e!2221453 () Bool)

(assert (=> b!3590297 (= e!2221453 (and tp!1098961 tp!1098959))))

(declare-fun b!3590298 () Bool)

(declare-fun res!1449372 () Bool)

(assert (=> b!3590298 (=> (not res!1449372) (not e!2221474))))

(declare-fun rulesInvariant!4558 (LexerInterface!5161 List!37861) Bool)

(assert (=> b!3590298 (= res!1449372 (rulesInvariant!4558 thiss!23823 rules!3307))))

(declare-fun b!3590299 () Bool)

(declare-fun res!1449375 () Bool)

(assert (=> b!3590299 (=> res!1449375 e!2221451)))

(assert (=> b!3590299 (= res!1449375 (isEmpty!22238 lt!1231554))))

(assert (=> b!3590300 (= e!2221469 (and tp!1098960 tp!1098963))))

(declare-fun b!3590301 () Bool)

(declare-fun res!1449364 () Bool)

(assert (=> b!3590301 (=> (not res!1449364) (not e!2221474))))

(declare-fun contains!7208 (List!37861 Rule!10944) Bool)

(assert (=> b!3590301 (= res!1449364 (contains!7208 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1098955 () Bool)

(declare-fun b!3590302 () Bool)

(declare-fun e!2221449 () Bool)

(assert (=> b!3590302 (= e!2221452 (and tp!1098955 (inv!51072 (tag!6244 rule!403)) (inv!51075 (transformation!5572 rule!403)) e!2221449))))

(declare-fun b!3590303 () Bool)

(declare-fun e!2221460 () Bool)

(assert (=> b!3590303 (= e!2221460 e!2221450)))

(declare-fun res!1449371 () Bool)

(assert (=> b!3590303 (=> (not res!1449371) (not e!2221450))))

(assert (=> b!3590303 (= res!1449371 (= (_1!21946 lt!1231550) token!511))))

(declare-fun lt!1231563 () Option!7774)

(declare-fun get!12171 (Option!7774) tuple2!37624)

(assert (=> b!3590303 (= lt!1231550 (get!12171 lt!1231563))))

(declare-fun b!3590304 () Bool)

(assert (=> b!3590304 (= e!2221474 e!2221460)))

(declare-fun res!1449373 () Bool)

(assert (=> b!3590304 (=> (not res!1449373) (not e!2221460))))

(declare-fun isDefined!6006 (Option!7774) Bool)

(assert (=> b!3590304 (= res!1449373 (isDefined!6006 lt!1231563))))

(declare-fun maxPrefix!2695 (LexerInterface!5161 List!37861 List!37860) Option!7774)

(assert (=> b!3590304 (= lt!1231563 (maxPrefix!2695 thiss!23823 rules!3307 lt!1231556))))

(assert (=> b!3590304 (= lt!1231556 (list!13880 (charsOf!3586 token!511)))))

(declare-fun b!3590305 () Bool)

(declare-fun res!1449368 () Bool)

(assert (=> b!3590305 (=> (not res!1449368) (not e!2221474))))

(assert (=> b!3590305 (= res!1449368 (not (= (isSeparator!5572 anOtherTypeRule!33) (isSeparator!5572 rule!403))))))

(declare-fun b!3590306 () Bool)

(assert (=> b!3590306 (= e!2221470 (= (rule!8288 (_1!21946 lt!1231557)) lt!1231566))))

(declare-fun b!3590307 () Bool)

(declare-fun res!1449353 () Bool)

(assert (=> b!3590307 (=> (not res!1449353) (not e!2221474))))

(assert (=> b!3590307 (= res!1449353 (contains!7208 rules!3307 rule!403))))

(assert (=> b!3590308 (= e!2221472 (and tp!1098962 tp!1098958))))

(declare-fun b!3590309 () Bool)

(assert (=> b!3590309 (= e!2221467 e!2221454)))

(declare-fun res!1449354 () Bool)

(assert (=> b!3590309 (=> res!1449354 e!2221454)))

(declare-fun lt!1231547 () List!37860)

(declare-fun isPrefix!2935 (List!37860 List!37860) Bool)

(assert (=> b!3590309 (= res!1449354 (not (isPrefix!2935 lt!1231554 lt!1231547)))))

(declare-fun lt!1231555 () List!37860)

(assert (=> b!3590309 (isPrefix!2935 lt!1231554 lt!1231555)))

(declare-fun ++!9388 (List!37860 List!37860) List!37860)

(assert (=> b!3590309 (= lt!1231555 (++!9388 lt!1231554 (_2!21946 lt!1231557)))))

(declare-fun lt!1231565 () Unit!53735)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1856 (List!37860 List!37860) Unit!53735)

(assert (=> b!3590309 (= lt!1231565 (lemmaConcatTwoListThenFirstIsPrefix!1856 lt!1231554 (_2!21946 lt!1231557)))))

(assert (=> b!3590309 (= lt!1231554 (list!13880 lt!1231567))))

(assert (=> b!3590309 (= lt!1231567 (charsOf!3586 (_1!21946 lt!1231557)))))

(assert (=> b!3590309 e!2221473))

(declare-fun res!1449360 () Bool)

(assert (=> b!3590309 (=> (not res!1449360) (not e!2221473))))

(declare-fun isDefined!6007 (Option!7775) Bool)

(assert (=> b!3590309 (= res!1449360 (isDefined!6007 lt!1231559))))

(declare-fun getRuleFromTag!1178 (LexerInterface!5161 List!37861 String!42344) Option!7775)

(assert (=> b!3590309 (= lt!1231559 (getRuleFromTag!1178 thiss!23823 rules!3307 (tag!6244 (rule!8288 (_1!21946 lt!1231557)))))))

(declare-fun lt!1231553 () Unit!53735)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1178 (LexerInterface!5161 List!37861 List!37860 Token!10510) Unit!53735)

(assert (=> b!3590309 (= lt!1231553 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1178 thiss!23823 rules!3307 lt!1231547 (_1!21946 lt!1231557)))))

(assert (=> b!3590309 (= lt!1231557 (get!12171 lt!1231558))))

(declare-fun lt!1231561 () Unit!53735)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!841 (LexerInterface!5161 List!37861 List!37860 List!37860) Unit!53735)

(assert (=> b!3590309 (= lt!1231561 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!841 thiss!23823 rules!3307 lt!1231556 suffix!1395))))

(assert (=> b!3590309 (= lt!1231558 (maxPrefix!2695 thiss!23823 rules!3307 lt!1231547))))

(assert (=> b!3590309 (isPrefix!2935 lt!1231556 lt!1231547)))

(declare-fun lt!1231568 () Unit!53735)

(assert (=> b!3590309 (= lt!1231568 (lemmaConcatTwoListThenFirstIsPrefix!1856 lt!1231556 suffix!1395))))

(assert (=> b!3590309 (= lt!1231547 (++!9388 lt!1231556 suffix!1395))))

(declare-fun b!3590310 () Bool)

(declare-fun res!1449365 () Bool)

(assert (=> b!3590310 (=> res!1449365 e!2221451)))

(assert (=> b!3590310 (= res!1449365 (not (contains!7208 rules!3307 (rule!8288 (_1!21946 lt!1231557)))))))

(declare-fun b!3590311 () Bool)

(declare-fun tp!1098952 () Bool)

(assert (=> b!3590311 (= e!2221458 (and tp!1098952 (inv!51072 (tag!6244 anOtherTypeRule!33)) (inv!51075 (transformation!5572 anOtherTypeRule!33)) e!2221453))))

(declare-fun b!3590312 () Bool)

(assert (=> b!3590312 (= e!2221457 true)))

(assert (=> b!3590312 (ruleValid!1837 thiss!23823 (rule!8288 (_1!21946 lt!1231557)))))

(declare-fun lt!1231552 () Unit!53735)

(assert (=> b!3590312 (= lt!1231552 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!992 thiss!23823 (rule!8288 (_1!21946 lt!1231557)) rules!3307))))

(declare-fun b!3590313 () Bool)

(declare-fun res!1449370 () Bool)

(assert (=> b!3590313 (=> res!1449370 e!2221451)))

(assert (=> b!3590313 (= res!1449370 (not (= lt!1231547 lt!1231555)))))

(assert (=> b!3590314 (= e!2221449 (and tp!1098964 tp!1098956))))

(declare-fun b!3590315 () Bool)

(declare-fun res!1449359 () Bool)

(assert (=> b!3590315 (=> res!1449359 e!2221463)))

(assert (=> b!3590315 (= res!1449359 (isEmpty!22238 suffix!1395))))

(declare-fun b!3590316 () Bool)

(declare-fun tp_is_empty!17745 () Bool)

(declare-fun tp!1098953 () Bool)

(assert (=> b!3590316 (= e!2221462 (and tp_is_empty!17745 tp!1098953))))

(assert (= (and start!333198 res!1449356) b!3590296))

(assert (= (and b!3590296 res!1449357) b!3590298))

(assert (= (and b!3590298 res!1449372) b!3590307))

(assert (= (and b!3590307 res!1449353) b!3590301))

(assert (= (and b!3590301 res!1449364) b!3590305))

(assert (= (and b!3590305 res!1449368) b!3590304))

(assert (= (and b!3590304 res!1449373) b!3590303))

(assert (= (and b!3590303 res!1449371) b!3590294))

(assert (= (and b!3590294 res!1449355) b!3590286))

(assert (= (and b!3590286 res!1449367) b!3590285))

(assert (= (and b!3590285 (not res!1449363)) b!3590315))

(assert (= (and b!3590315 (not res!1449359)) b!3590284))

(assert (= (and b!3590284 (not res!1449374)) b!3590287))

(assert (= (and b!3590287 (not res!1449358)) b!3590283))

(assert (= (and b!3590283 (not res!1449361)) b!3590309))

(assert (= (and b!3590309 res!1449360) b!3590291))

(assert (= (and b!3590291 res!1449369) b!3590306))

(assert (= (and b!3590309 (not res!1449354)) b!3590282))

(assert (= (and b!3590282 (not res!1449362)) b!3590289))

(assert (= (and b!3590289 (not res!1449352)) b!3590310))

(assert (= (and b!3590310 (not res!1449365)) b!3590313))

(assert (= (and b!3590313 (not res!1449370)) b!3590299))

(assert (= (and b!3590299 (not res!1449375)) b!3590295))

(assert (= (and b!3590295 (not res!1449366)) b!3590312))

(assert (= b!3590290 b!3590300))

(assert (= b!3590292 b!3590290))

(assert (= (and start!333198 ((_ is Cons!37737) rules!3307)) b!3590292))

(assert (= (and start!333198 ((_ is Cons!37736) suffix!1395)) b!3590316))

(assert (= b!3590288 b!3590308))

(assert (= b!3590293 b!3590288))

(assert (= start!333198 b!3590293))

(assert (= b!3590302 b!3590314))

(assert (= start!333198 b!3590302))

(assert (= b!3590311 b!3590297))

(assert (= start!333198 b!3590311))

(declare-fun m!4084179 () Bool)

(assert (=> b!3590312 m!4084179))

(declare-fun m!4084181 () Bool)

(assert (=> b!3590312 m!4084181))

(declare-fun m!4084183 () Bool)

(assert (=> b!3590294 m!4084183))

(declare-fun m!4084185 () Bool)

(assert (=> b!3590287 m!4084185))

(assert (=> b!3590287 m!4084185))

(declare-fun m!4084187 () Bool)

(assert (=> b!3590287 m!4084187))

(declare-fun m!4084189 () Bool)

(assert (=> b!3590310 m!4084189))

(declare-fun m!4084191 () Bool)

(assert (=> b!3590291 m!4084191))

(assert (=> b!3590291 m!4084191))

(declare-fun m!4084193 () Bool)

(assert (=> b!3590291 m!4084193))

(assert (=> b!3590291 m!4084193))

(declare-fun m!4084195 () Bool)

(assert (=> b!3590291 m!4084195))

(declare-fun m!4084197 () Bool)

(assert (=> b!3590291 m!4084197))

(declare-fun m!4084199 () Bool)

(assert (=> b!3590302 m!4084199))

(declare-fun m!4084201 () Bool)

(assert (=> b!3590302 m!4084201))

(declare-fun m!4084203 () Bool)

(assert (=> b!3590303 m!4084203))

(declare-fun m!4084205 () Bool)

(assert (=> b!3590315 m!4084205))

(declare-fun m!4084207 () Bool)

(assert (=> b!3590307 m!4084207))

(declare-fun m!4084209 () Bool)

(assert (=> b!3590309 m!4084209))

(assert (=> b!3590309 m!4084191))

(declare-fun m!4084211 () Bool)

(assert (=> b!3590309 m!4084211))

(declare-fun m!4084213 () Bool)

(assert (=> b!3590309 m!4084213))

(declare-fun m!4084215 () Bool)

(assert (=> b!3590309 m!4084215))

(declare-fun m!4084217 () Bool)

(assert (=> b!3590309 m!4084217))

(declare-fun m!4084219 () Bool)

(assert (=> b!3590309 m!4084219))

(declare-fun m!4084221 () Bool)

(assert (=> b!3590309 m!4084221))

(declare-fun m!4084223 () Bool)

(assert (=> b!3590309 m!4084223))

(declare-fun m!4084225 () Bool)

(assert (=> b!3590309 m!4084225))

(declare-fun m!4084227 () Bool)

(assert (=> b!3590309 m!4084227))

(declare-fun m!4084229 () Bool)

(assert (=> b!3590309 m!4084229))

(declare-fun m!4084231 () Bool)

(assert (=> b!3590309 m!4084231))

(declare-fun m!4084233 () Bool)

(assert (=> b!3590309 m!4084233))

(declare-fun m!4084235 () Bool)

(assert (=> b!3590309 m!4084235))

(declare-fun m!4084237 () Bool)

(assert (=> b!3590293 m!4084237))

(declare-fun m!4084239 () Bool)

(assert (=> b!3590288 m!4084239))

(declare-fun m!4084241 () Bool)

(assert (=> b!3590288 m!4084241))

(declare-fun m!4084243 () Bool)

(assert (=> b!3590299 m!4084243))

(declare-fun m!4084245 () Bool)

(assert (=> b!3590295 m!4084245))

(declare-fun m!4084247 () Bool)

(assert (=> b!3590295 m!4084247))

(declare-fun m!4084249 () Bool)

(assert (=> b!3590295 m!4084249))

(declare-fun m!4084251 () Bool)

(assert (=> b!3590295 m!4084251))

(declare-fun m!4084253 () Bool)

(assert (=> b!3590285 m!4084253))

(declare-fun m!4084255 () Bool)

(assert (=> b!3590285 m!4084255))

(declare-fun m!4084257 () Bool)

(assert (=> b!3590285 m!4084257))

(declare-fun m!4084259 () Bool)

(assert (=> b!3590283 m!4084259))

(declare-fun m!4084261 () Bool)

(assert (=> b!3590289 m!4084261))

(declare-fun m!4084263 () Bool)

(assert (=> b!3590289 m!4084263))

(declare-fun m!4084265 () Bool)

(assert (=> b!3590289 m!4084265))

(declare-fun m!4084267 () Bool)

(assert (=> b!3590289 m!4084267))

(declare-fun m!4084269 () Bool)

(assert (=> b!3590289 m!4084269))

(declare-fun m!4084271 () Bool)

(assert (=> b!3590289 m!4084271))

(assert (=> b!3590289 m!4084269))

(declare-fun m!4084273 () Bool)

(assert (=> b!3590296 m!4084273))

(declare-fun m!4084275 () Bool)

(assert (=> b!3590290 m!4084275))

(declare-fun m!4084277 () Bool)

(assert (=> b!3590290 m!4084277))

(declare-fun m!4084279 () Bool)

(assert (=> b!3590282 m!4084279))

(declare-fun m!4084281 () Bool)

(assert (=> b!3590304 m!4084281))

(declare-fun m!4084283 () Bool)

(assert (=> b!3590304 m!4084283))

(declare-fun m!4084285 () Bool)

(assert (=> b!3590304 m!4084285))

(assert (=> b!3590304 m!4084285))

(declare-fun m!4084287 () Bool)

(assert (=> b!3590304 m!4084287))

(declare-fun m!4084289 () Bool)

(assert (=> b!3590298 m!4084289))

(declare-fun m!4084291 () Bool)

(assert (=> b!3590301 m!4084291))

(declare-fun m!4084293 () Bool)

(assert (=> b!3590311 m!4084293))

(declare-fun m!4084295 () Bool)

(assert (=> b!3590311 m!4084295))

(declare-fun m!4084297 () Bool)

(assert (=> b!3590284 m!4084297))

(assert (=> b!3590284 m!4084297))

(declare-fun m!4084299 () Bool)

(assert (=> b!3590284 m!4084299))

(declare-fun m!4084301 () Bool)

(assert (=> b!3590284 m!4084301))

(declare-fun m!4084303 () Bool)

(assert (=> start!333198 m!4084303))

(check-sat (not b!3590291) (not b_next!93253) (not b!3590315) (not b!3590310) (not b!3590296) b_and!259585 (not b!3590301) (not b!3590287) (not start!333198) (not b_next!93263) (not b!3590293) (not b!3590290) b_and!259575 b_and!259583 (not b!3590295) (not b!3590282) (not b!3590288) (not b!3590312) (not b_next!93251) (not b!3590289) (not b_next!93255) b_and!259573 b_and!259581 (not b_next!93261) b_and!259571 (not b!3590304) (not b_next!93257) (not b!3590303) (not b!3590302) (not b!3590299) (not b!3590292) (not b!3590294) (not b!3590309) b_and!259579 (not b!3590283) (not b!3590298) (not b!3590284) b_and!259577 (not b_next!93259) (not b!3590311) tp_is_empty!17745 (not b!3590285) (not b!3590307) (not b_next!93249) (not b!3590316))
(check-sat (not b_next!93253) (not b_next!93263) (not b_next!93251) b_and!259579 b_and!259585 b_and!259577 (not b_next!93259) (not b_next!93249) b_and!259575 b_and!259583 (not b_next!93255) b_and!259573 b_and!259581 (not b_next!93257) (not b_next!93261) b_and!259571)
