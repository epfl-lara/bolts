; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340970 () Bool)

(assert start!340970)

(declare-fun b!3647680 () Bool)

(declare-fun b_free!95833 () Bool)

(declare-fun b_next!96537 () Bool)

(assert (=> b!3647680 (= b_free!95833 (not b_next!96537))))

(declare-fun tp!1112244 () Bool)

(declare-fun b_and!269523 () Bool)

(assert (=> b!3647680 (= tp!1112244 b_and!269523)))

(declare-fun b_free!95835 () Bool)

(declare-fun b_next!96539 () Bool)

(assert (=> b!3647680 (= b_free!95835 (not b_next!96539))))

(declare-fun tp!1112248 () Bool)

(declare-fun b_and!269525 () Bool)

(assert (=> b!3647680 (= tp!1112248 b_and!269525)))

(declare-fun b!3647678 () Bool)

(declare-fun b_free!95837 () Bool)

(declare-fun b_next!96541 () Bool)

(assert (=> b!3647678 (= b_free!95837 (not b_next!96541))))

(declare-fun tp!1112255 () Bool)

(declare-fun b_and!269527 () Bool)

(assert (=> b!3647678 (= tp!1112255 b_and!269527)))

(declare-fun b_free!95839 () Bool)

(declare-fun b_next!96543 () Bool)

(assert (=> b!3647678 (= b_free!95839 (not b_next!96543))))

(declare-fun tp!1112252 () Bool)

(declare-fun b_and!269529 () Bool)

(assert (=> b!3647678 (= tp!1112252 b_and!269529)))

(declare-fun b!3647674 () Bool)

(declare-fun b_free!95841 () Bool)

(declare-fun b_next!96545 () Bool)

(assert (=> b!3647674 (= b_free!95841 (not b_next!96545))))

(declare-fun tp!1112251 () Bool)

(declare-fun b_and!269531 () Bool)

(assert (=> b!3647674 (= tp!1112251 b_and!269531)))

(declare-fun b_free!95843 () Bool)

(declare-fun b_next!96547 () Bool)

(assert (=> b!3647674 (= b_free!95843 (not b_next!96547))))

(declare-fun tp!1112247 () Bool)

(declare-fun b_and!269533 () Bool)

(assert (=> b!3647674 (= tp!1112247 b_and!269533)))

(declare-fun b!3647677 () Bool)

(declare-fun b_free!95845 () Bool)

(declare-fun b_next!96549 () Bool)

(assert (=> b!3647677 (= b_free!95845 (not b_next!96549))))

(declare-fun tp!1112249 () Bool)

(declare-fun b_and!269535 () Bool)

(assert (=> b!3647677 (= tp!1112249 b_and!269535)))

(declare-fun b_free!95847 () Bool)

(declare-fun b_next!96551 () Bool)

(assert (=> b!3647677 (= b_free!95847 (not b_next!96551))))

(declare-fun tp!1112250 () Bool)

(declare-fun b_and!269537 () Bool)

(assert (=> b!3647677 (= tp!1112250 b_and!269537)))

(declare-fun b!3647653 () Bool)

(declare-fun res!1479426 () Bool)

(declare-fun e!2258246 () Bool)

(assert (=> b!3647653 (=> (not res!1479426) (not e!2258246))))

(declare-datatypes ((LexerInterface!5343 0))(
  ( (LexerInterfaceExt!5340 (__x!24185 Int)) (Lexer!5341) )
))
(declare-fun thiss!23823 () LexerInterface!5343)

(declare-datatypes ((List!38581 0))(
  ( (Nil!38457) (Cons!38457 (h!43877 (_ BitVec 16)) (t!297204 List!38581)) )
))
(declare-datatypes ((TokenValue!5984 0))(
  ( (FloatLiteralValue!11968 (text!42333 List!38581)) (TokenValueExt!5983 (__x!24186 Int)) (Broken!29920 (value!184423 List!38581)) (Object!6107) (End!5984) (Def!5984) (Underscore!5984) (Match!5984) (Else!5984) (Error!5984) (Case!5984) (If!5984) (Extends!5984) (Abstract!5984) (Class!5984) (Val!5984) (DelimiterValue!11968 (del!6044 List!38581)) (KeywordValue!5990 (value!184424 List!38581)) (CommentValue!11968 (value!184425 List!38581)) (WhitespaceValue!11968 (value!184426 List!38581)) (IndentationValue!5984 (value!184427 List!38581)) (String!43253) (Int32!5984) (Broken!29921 (value!184428 List!38581)) (Boolean!5985) (Unit!55385) (OperatorValue!5987 (op!6044 List!38581)) (IdentifierValue!11968 (value!184429 List!38581)) (IdentifierValue!11969 (value!184430 List!38581)) (WhitespaceValue!11969 (value!184431 List!38581)) (True!11968) (False!11968) (Broken!29922 (value!184432 List!38581)) (Broken!29923 (value!184433 List!38581)) (True!11969) (RightBrace!5984) (RightBracket!5984) (Colon!5984) (Null!5984) (Comma!5984) (LeftBracket!5984) (False!11969) (LeftBrace!5984) (ImaginaryLiteralValue!5984 (text!42334 List!38581)) (StringLiteralValue!17952 (value!184434 List!38581)) (EOFValue!5984 (value!184435 List!38581)) (IdentValue!5984 (value!184436 List!38581)) (DelimiterValue!11969 (value!184437 List!38581)) (DedentValue!5984 (value!184438 List!38581)) (NewLineValue!5984 (value!184439 List!38581)) (IntegerValue!17952 (value!184440 (_ BitVec 32)) (text!42335 List!38581)) (IntegerValue!17953 (value!184441 Int) (text!42336 List!38581)) (Times!5984) (Or!5984) (Equal!5984) (Minus!5984) (Broken!29924 (value!184442 List!38581)) (And!5984) (Div!5984) (LessEqual!5984) (Mod!5984) (Concat!16497) (Not!5984) (Plus!5984) (SpaceValue!5984 (value!184443 List!38581)) (IntegerValue!17954 (value!184444 Int) (text!42337 List!38581)) (StringLiteralValue!17953 (text!42338 List!38581)) (FloatLiteralValue!11969 (text!42339 List!38581)) (BytesLiteralValue!5984 (value!184445 List!38581)) (CommentValue!11969 (value!184446 List!38581)) (StringLiteralValue!17954 (value!184447 List!38581)) (ErrorTokenValue!5984 (msg!6045 List!38581)) )
))
(declare-datatypes ((C!21212 0))(
  ( (C!21213 (val!12654 Int)) )
))
(declare-datatypes ((Regex!10513 0))(
  ( (ElementMatch!10513 (c!630524 C!21212)) (Concat!16498 (regOne!21538 Regex!10513) (regTwo!21538 Regex!10513)) (EmptyExpr!10513) (Star!10513 (reg!10842 Regex!10513)) (EmptyLang!10513) (Union!10513 (regOne!21539 Regex!10513) (regTwo!21539 Regex!10513)) )
))
(declare-datatypes ((String!43254 0))(
  ( (String!43255 (value!184448 String)) )
))
(declare-datatypes ((List!38582 0))(
  ( (Nil!38458) (Cons!38458 (h!43878 C!21212) (t!297205 List!38582)) )
))
(declare-datatypes ((IArray!23503 0))(
  ( (IArray!23504 (innerList!11809 List!38582)) )
))
(declare-datatypes ((Conc!11749 0))(
  ( (Node!11749 (left!30024 Conc!11749) (right!30354 Conc!11749) (csize!23728 Int) (cheight!11960 Int)) (Leaf!18237 (xs!14951 IArray!23503) (csize!23729 Int)) (Empty!11749) )
))
(declare-datatypes ((BalanceConc!23112 0))(
  ( (BalanceConc!23113 (c!630525 Conc!11749)) )
))
(declare-datatypes ((TokenValueInjection!11396 0))(
  ( (TokenValueInjection!11397 (toValue!8046 Int) (toChars!7905 Int)) )
))
(declare-datatypes ((Rule!11308 0))(
  ( (Rule!11309 (regex!5754 Regex!10513) (tag!6514 String!43254) (isSeparator!5754 Bool) (transformation!5754 TokenValueInjection!11396)) )
))
(declare-datatypes ((List!38583 0))(
  ( (Nil!38459) (Cons!38459 (h!43879 Rule!11308) (t!297206 List!38583)) )
))
(declare-fun rules!3307 () List!38583)

(declare-fun rulesInvariant!4740 (LexerInterface!5343 List!38583) Bool)

(assert (=> b!3647653 (= res!1479426 (rulesInvariant!4740 thiss!23823 rules!3307))))

(declare-fun bm!263605 () Bool)

(declare-fun call!263611 () Bool)

(declare-fun call!263610 () List!38582)

(declare-fun lt!1264505 () C!21212)

(declare-fun contains!7573 (List!38582 C!21212) Bool)

(assert (=> bm!263605 (= call!263611 (contains!7573 call!263610 lt!1264505))))

(declare-fun b!3647654 () Bool)

(declare-fun e!2258220 () Bool)

(declare-fun e!2258244 () Bool)

(assert (=> b!3647654 (= e!2258220 e!2258244)))

(declare-fun res!1479436 () Bool)

(assert (=> b!3647654 (=> (not res!1479436) (not e!2258244))))

(declare-fun lt!1264506 () Rule!11308)

(declare-datatypes ((Token!10874 0))(
  ( (Token!10875 (value!184449 TokenValue!5984) (rule!8548 Rule!11308) (size!29361 Int) (originalCharacters!6468 List!38582)) )
))
(declare-datatypes ((tuple2!38328 0))(
  ( (tuple2!38329 (_1!22298 Token!10874) (_2!22298 List!38582)) )
))
(declare-fun lt!1264488 () tuple2!38328)

(declare-fun matchR!5082 (Regex!10513 List!38582) Bool)

(declare-fun list!14248 (BalanceConc!23112) List!38582)

(declare-fun charsOf!3768 (Token!10874) BalanceConc!23112)

(assert (=> b!3647654 (= res!1479436 (matchR!5082 (regex!5754 lt!1264506) (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))))))

(declare-datatypes ((Option!8136 0))(
  ( (None!8135) (Some!8135 (v!37987 Rule!11308)) )
))
(declare-fun lt!1264502 () Option!8136)

(declare-fun get!12623 (Option!8136) Rule!11308)

(assert (=> b!3647654 (= lt!1264506 (get!12623 lt!1264502))))

(declare-fun b!3647655 () Bool)

(declare-fun e!2258229 () Bool)

(declare-fun e!2258227 () Bool)

(assert (=> b!3647655 (= e!2258229 (not e!2258227))))

(declare-fun res!1479424 () Bool)

(assert (=> b!3647655 (=> res!1479424 e!2258227)))

(declare-fun rule!403 () Rule!11308)

(declare-fun lt!1264520 () List!38582)

(assert (=> b!3647655 (= res!1479424 (not (matchR!5082 (regex!5754 rule!403) lt!1264520)))))

(declare-fun ruleValid!2018 (LexerInterface!5343 Rule!11308) Bool)

(assert (=> b!3647655 (ruleValid!2018 thiss!23823 rule!403)))

(declare-datatypes ((Unit!55386 0))(
  ( (Unit!55387) )
))
(declare-fun lt!1264515 () Unit!55386)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1172 (LexerInterface!5343 Rule!11308 List!38583) Unit!55386)

(assert (=> b!3647655 (= lt!1264515 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1172 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3647656 () Bool)

(declare-fun e!2258241 () Bool)

(assert (=> b!3647656 (= e!2258241 e!2258229)))

(declare-fun res!1479430 () Bool)

(assert (=> b!3647656 (=> (not res!1479430) (not e!2258229))))

(declare-fun lt!1264523 () tuple2!38328)

(declare-fun token!511 () Token!10874)

(assert (=> b!3647656 (= res!1479430 (= (_1!22298 lt!1264523) token!511))))

(declare-datatypes ((Option!8137 0))(
  ( (None!8136) (Some!8136 (v!37988 tuple2!38328)) )
))
(declare-fun lt!1264518 () Option!8137)

(declare-fun get!12624 (Option!8137) tuple2!38328)

(assert (=> b!3647656 (= lt!1264523 (get!12624 lt!1264518))))

(declare-fun b!3647657 () Bool)

(declare-fun res!1479420 () Bool)

(declare-fun e!2258230 () Bool)

(assert (=> b!3647657 (=> res!1479420 e!2258230)))

(declare-fun anOtherTypeRule!33 () Rule!11308)

(declare-fun lt!1264496 () C!21212)

(declare-fun usedCharacters!966 (Regex!10513) List!38582)

(assert (=> b!3647657 (= res!1479420 (not (contains!7573 (usedCharacters!966 (regex!5754 anOtherTypeRule!33)) lt!1264496)))))

(declare-fun b!3647658 () Bool)

(declare-fun res!1479422 () Bool)

(assert (=> b!3647658 (=> (not res!1479422) (not e!2258229))))

(assert (=> b!3647658 (= res!1479422 (= (rule!8548 token!511) rule!403))))

(declare-fun bm!263606 () Bool)

(declare-fun lt!1264499 () List!38582)

(declare-fun call!263612 () Unit!55386)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!702 (Regex!10513 List!38582 C!21212) Unit!55386)

(assert (=> bm!263606 (= call!263612 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!702 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499 lt!1264505))))

(declare-fun b!3647659 () Bool)

(declare-fun e!2258243 () Bool)

(declare-fun e!2258218 () Bool)

(assert (=> b!3647659 (= e!2258243 e!2258218)))

(declare-fun res!1479419 () Bool)

(assert (=> b!3647659 (=> res!1479419 e!2258218)))

(declare-fun lt!1264498 () Option!8137)

(declare-fun lt!1264487 () List!38582)

(assert (=> b!3647659 (= res!1479419 (or (not (= lt!1264487 (_2!22298 lt!1264488))) (not (= lt!1264498 (Some!8136 (tuple2!38329 (_1!22298 lt!1264488) lt!1264487))))))))

(assert (=> b!3647659 (= (_2!22298 lt!1264488) lt!1264487)))

(declare-fun lt!1264508 () List!38582)

(declare-fun lt!1264509 () Unit!55386)

(declare-fun lemmaSamePrefixThenSameSuffix!1444 (List!38582 List!38582 List!38582 List!38582 List!38582) Unit!55386)

(assert (=> b!3647659 (= lt!1264509 (lemmaSamePrefixThenSameSuffix!1444 lt!1264499 (_2!22298 lt!1264488) lt!1264499 lt!1264487 lt!1264508))))

(declare-fun getSuffix!1670 (List!38582 List!38582) List!38582)

(assert (=> b!3647659 (= lt!1264487 (getSuffix!1670 lt!1264508 lt!1264499))))

(declare-fun lt!1264493 () Int)

(declare-fun lt!1264492 () TokenValue!5984)

(assert (=> b!3647659 (= lt!1264498 (Some!8136 (tuple2!38329 (Token!10875 lt!1264492 (rule!8548 (_1!22298 lt!1264488)) lt!1264493 lt!1264499) (_2!22298 lt!1264488))))))

(declare-fun maxPrefixOneRule!2015 (LexerInterface!5343 Rule!11308 List!38582) Option!8137)

(assert (=> b!3647659 (= lt!1264498 (maxPrefixOneRule!2015 thiss!23823 (rule!8548 (_1!22298 lt!1264488)) lt!1264508))))

(declare-fun size!29362 (List!38582) Int)

(assert (=> b!3647659 (= lt!1264493 (size!29362 lt!1264499))))

(declare-fun apply!9256 (TokenValueInjection!11396 BalanceConc!23112) TokenValue!5984)

(declare-fun seqFromList!4303 (List!38582) BalanceConc!23112)

(assert (=> b!3647659 (= lt!1264492 (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) (seqFromList!4303 lt!1264499)))))

(declare-fun lt!1264512 () Unit!55386)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1071 (LexerInterface!5343 List!38583 List!38582 List!38582 List!38582 Rule!11308) Unit!55386)

(assert (=> b!3647659 (= lt!1264512 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1071 thiss!23823 rules!3307 lt!1264499 lt!1264508 (_2!22298 lt!1264488) (rule!8548 (_1!22298 lt!1264488))))))

(declare-fun b!3647660 () Bool)

(declare-fun res!1479421 () Bool)

(assert (=> b!3647660 (=> (not res!1479421) (not e!2258246))))

(declare-fun contains!7574 (List!38583 Rule!11308) Bool)

(assert (=> b!3647660 (= res!1479421 (contains!7574 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3647661 () Bool)

(declare-fun res!1479425 () Bool)

(assert (=> b!3647661 (=> (not res!1479425) (not e!2258246))))

(assert (=> b!3647661 (= res!1479425 (contains!7574 rules!3307 rule!403))))

(declare-fun b!3647662 () Bool)

(declare-fun e!2258247 () Bool)

(declare-fun tp!1112242 () Bool)

(declare-fun e!2258235 () Bool)

(declare-fun inv!51900 (String!43254) Bool)

(declare-fun inv!51903 (TokenValueInjection!11396) Bool)

(assert (=> b!3647662 (= e!2258247 (and tp!1112242 (inv!51900 (tag!6514 (rule!8548 token!511))) (inv!51903 (transformation!5754 (rule!8548 token!511))) e!2258235))))

(declare-fun b!3647663 () Bool)

(declare-fun e!2258228 () Bool)

(declare-fun e!2258238 () Bool)

(assert (=> b!3647663 (= e!2258228 e!2258238)))

(declare-fun res!1479415 () Bool)

(assert (=> b!3647663 (=> res!1479415 e!2258238)))

(assert (=> b!3647663 (= res!1479415 (not (isSeparator!5754 rule!403)))))

(assert (=> b!3647663 (contains!7573 lt!1264499 lt!1264496)))

(declare-fun suffix!1395 () List!38582)

(declare-fun lt!1264491 () Unit!55386)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!62 (List!38582 List!38582 List!38582 List!38582) Unit!55386)

(assert (=> b!3647663 (= lt!1264491 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!62 lt!1264520 suffix!1395 lt!1264499 lt!1264508))))

(declare-fun b!3647664 () Bool)

(assert (=> b!3647664 (= e!2258238 (contains!7574 rules!3307 (rule!8548 (_1!22298 lt!1264488))))))

(declare-fun b!3647665 () Bool)

(declare-fun res!1479418 () Bool)

(assert (=> b!3647665 (=> (not res!1479418) (not e!2258246))))

(declare-fun isEmpty!22784 (List!38583) Bool)

(assert (=> b!3647665 (= res!1479418 (not (isEmpty!22784 rules!3307)))))

(declare-fun res!1479435 () Bool)

(assert (=> start!340970 (=> (not res!1479435) (not e!2258246))))

(get-info :version)

(assert (=> start!340970 (= res!1479435 ((_ is Lexer!5341) thiss!23823))))

(assert (=> start!340970 e!2258246))

(declare-fun e!2258240 () Bool)

(assert (=> start!340970 e!2258240))

(declare-fun e!2258221 () Bool)

(assert (=> start!340970 e!2258221))

(assert (=> start!340970 true))

(declare-fun e!2258248 () Bool)

(declare-fun inv!51904 (Token!10874) Bool)

(assert (=> start!340970 (and (inv!51904 token!511) e!2258248)))

(declare-fun e!2258223 () Bool)

(assert (=> start!340970 e!2258223))

(declare-fun e!2258232 () Bool)

(assert (=> start!340970 e!2258232))

(declare-fun b!3647666 () Bool)

(declare-fun e!2258224 () Bool)

(assert (=> b!3647666 (= e!2258224 e!2258243)))

(declare-fun res!1479431 () Bool)

(assert (=> b!3647666 (=> res!1479431 e!2258243)))

(declare-fun lt!1264503 () TokenValue!5984)

(declare-fun lt!1264500 () Int)

(declare-fun lt!1264497 () Option!8137)

(assert (=> b!3647666 (= res!1479431 (not (= lt!1264497 (Some!8136 (tuple2!38329 (Token!10875 lt!1264503 (rule!8548 (_1!22298 lt!1264488)) lt!1264500 lt!1264499) (_2!22298 lt!1264488))))))))

(declare-fun lt!1264517 () BalanceConc!23112)

(declare-fun size!29363 (BalanceConc!23112) Int)

(assert (=> b!3647666 (= lt!1264500 (size!29363 lt!1264517))))

(assert (=> b!3647666 (= lt!1264503 (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517))))

(declare-fun lt!1264511 () Unit!55386)

(declare-fun lemmaCharactersSize!799 (Token!10874) Unit!55386)

(assert (=> b!3647666 (= lt!1264511 (lemmaCharactersSize!799 (_1!22298 lt!1264488)))))

(declare-fun lt!1264495 () Unit!55386)

(declare-fun lemmaEqSameImage!937 (TokenValueInjection!11396 BalanceConc!23112 BalanceConc!23112) Unit!55386)

(assert (=> b!3647666 (= lt!1264495 (lemmaEqSameImage!937 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517 (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488)))))))

(declare-fun lt!1264524 () Unit!55386)

(declare-fun lemmaSemiInverse!1503 (TokenValueInjection!11396 BalanceConc!23112) Unit!55386)

(assert (=> b!3647666 (= lt!1264524 (lemmaSemiInverse!1503 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517))))

(declare-fun bm!263607 () Bool)

(assert (=> bm!263607 (= call!263610 (usedCharacters!966 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3647667 () Bool)

(declare-fun e!2258239 () Unit!55386)

(declare-fun e!2258225 () Unit!55386)

(assert (=> b!3647667 (= e!2258239 e!2258225)))

(declare-fun c!630523 () Bool)

(assert (=> b!3647667 (= c!630523 (not (isSeparator!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3647668 () Bool)

(declare-fun e!2258226 () Unit!55386)

(assert (=> b!3647668 (= e!2258239 e!2258226)))

(declare-fun c!630521 () Bool)

(assert (=> b!3647668 (= c!630521 (isSeparator!5754 (rule!8548 (_1!22298 lt!1264488))))))

(declare-fun b!3647669 () Bool)

(assert (=> b!3647669 false))

(declare-fun lt!1264516 () Unit!55386)

(assert (=> b!3647669 (= lt!1264516 call!263612)))

(assert (=> b!3647669 (not call!263611)))

(declare-fun lt!1264513 () Unit!55386)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!400 (LexerInterface!5343 List!38583 List!38583 Rule!11308 Rule!11308 C!21212) Unit!55386)

(assert (=> b!3647669 (= lt!1264513 (lemmaNonSepRuleNotContainsCharContainedInASepRule!400 thiss!23823 rules!3307 rules!3307 (rule!8548 (_1!22298 lt!1264488)) rule!403 lt!1264505))))

(declare-fun Unit!55388 () Unit!55386)

(assert (=> b!3647669 (= e!2258225 Unit!55388)))

(declare-fun b!3647670 () Bool)

(declare-fun Unit!55389 () Unit!55386)

(assert (=> b!3647670 (= e!2258226 Unit!55389)))

(declare-fun b!3647671 () Bool)

(declare-fun res!1479433 () Bool)

(assert (=> b!3647671 (=> res!1479433 e!2258227)))

(declare-fun isEmpty!22785 (List!38582) Bool)

(assert (=> b!3647671 (= res!1479433 (isEmpty!22785 suffix!1395))))

(declare-fun b!3647672 () Bool)

(assert (=> b!3647672 false))

(declare-fun lt!1264504 () Unit!55386)

(assert (=> b!3647672 (= lt!1264504 call!263612)))

(assert (=> b!3647672 (not call!263611)))

(declare-fun lt!1264490 () Unit!55386)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!282 (LexerInterface!5343 List!38583 List!38583 Rule!11308 Rule!11308 C!21212) Unit!55386)

(assert (=> b!3647672 (= lt!1264490 (lemmaSepRuleNotContainsCharContainedInANonSepRule!282 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8548 (_1!22298 lt!1264488)) lt!1264505))))

(declare-fun Unit!55390 () Unit!55386)

(assert (=> b!3647672 (= e!2258226 Unit!55390)))

(declare-fun b!3647673 () Bool)

(assert (=> b!3647673 (= e!2258227 e!2258230)))

(declare-fun res!1479428 () Bool)

(assert (=> b!3647673 (=> res!1479428 e!2258230)))

(declare-fun lt!1264501 () List!38582)

(assert (=> b!3647673 (= res!1479428 (contains!7573 lt!1264501 lt!1264496))))

(declare-fun head!7764 (List!38582) C!21212)

(assert (=> b!3647673 (= lt!1264496 (head!7764 suffix!1395))))

(assert (=> b!3647673 (= lt!1264501 (usedCharacters!966 (regex!5754 rule!403)))))

(assert (=> b!3647674 (= e!2258235 (and tp!1112251 tp!1112247))))

(declare-fun e!2258236 () Bool)

(declare-fun tp!1112245 () Bool)

(declare-fun b!3647675 () Bool)

(assert (=> b!3647675 (= e!2258232 (and tp!1112245 (inv!51900 (tag!6514 anOtherTypeRule!33)) (inv!51903 (transformation!5754 anOtherTypeRule!33)) e!2258236))))

(declare-fun b!3647676 () Bool)

(declare-fun e!2258222 () Unit!55386)

(declare-fun Unit!55391 () Unit!55386)

(assert (=> b!3647676 (= e!2258222 Unit!55391)))

(assert (=> b!3647677 (= e!2258236 (and tp!1112249 tp!1112250))))

(declare-fun e!2258242 () Bool)

(assert (=> b!3647678 (= e!2258242 (and tp!1112255 tp!1112252))))

(declare-fun b!3647679 () Bool)

(declare-fun res!1479427 () Bool)

(assert (=> b!3647679 (=> (not res!1479427) (not e!2258246))))

(assert (=> b!3647679 (= res!1479427 (not (= (isSeparator!5754 anOtherTypeRule!33) (isSeparator!5754 rule!403))))))

(declare-fun e!2258217 () Bool)

(assert (=> b!3647680 (= e!2258217 (and tp!1112244 tp!1112248))))

(declare-fun b!3647681 () Bool)

(declare-fun res!1479434 () Bool)

(assert (=> b!3647681 (=> res!1479434 e!2258224)))

(assert (=> b!3647681 (= res!1479434 (not (matchR!5082 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499)))))

(declare-fun b!3647682 () Bool)

(assert (=> b!3647682 (= e!2258244 (= (rule!8548 (_1!22298 lt!1264488)) lt!1264506))))

(declare-fun b!3647683 () Bool)

(declare-fun Unit!55392 () Unit!55386)

(assert (=> b!3647683 (= e!2258225 Unit!55392)))

(declare-fun b!3647684 () Bool)

(assert (=> b!3647684 (= e!2258230 e!2258224)))

(declare-fun res!1479432 () Bool)

(assert (=> b!3647684 (=> res!1479432 e!2258224)))

(declare-fun isPrefix!3117 (List!38582 List!38582) Bool)

(assert (=> b!3647684 (= res!1479432 (not (isPrefix!3117 lt!1264499 lt!1264508)))))

(declare-fun ++!9570 (List!38582 List!38582) List!38582)

(assert (=> b!3647684 (isPrefix!3117 lt!1264499 (++!9570 lt!1264499 (_2!22298 lt!1264488)))))

(declare-fun lt!1264489 () Unit!55386)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2036 (List!38582 List!38582) Unit!55386)

(assert (=> b!3647684 (= lt!1264489 (lemmaConcatTwoListThenFirstIsPrefix!2036 lt!1264499 (_2!22298 lt!1264488)))))

(assert (=> b!3647684 (= lt!1264499 (list!14248 lt!1264517))))

(assert (=> b!3647684 (= lt!1264517 (charsOf!3768 (_1!22298 lt!1264488)))))

(assert (=> b!3647684 e!2258220))

(declare-fun res!1479417 () Bool)

(assert (=> b!3647684 (=> (not res!1479417) (not e!2258220))))

(declare-fun isDefined!6368 (Option!8136) Bool)

(assert (=> b!3647684 (= res!1479417 (isDefined!6368 lt!1264502))))

(declare-fun getRuleFromTag!1358 (LexerInterface!5343 List!38583 String!43254) Option!8136)

(assert (=> b!3647684 (= lt!1264502 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun lt!1264514 () Unit!55386)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1358 (LexerInterface!5343 List!38583 List!38582 Token!10874) Unit!55386)

(assert (=> b!3647684 (= lt!1264514 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1358 thiss!23823 rules!3307 lt!1264508 (_1!22298 lt!1264488)))))

(assert (=> b!3647684 (= lt!1264488 (get!12624 lt!1264497))))

(declare-fun lt!1264519 () Unit!55386)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1021 (LexerInterface!5343 List!38583 List!38582 List!38582) Unit!55386)

(assert (=> b!3647684 (= lt!1264519 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1021 thiss!23823 rules!3307 lt!1264520 suffix!1395))))

(declare-fun maxPrefix!2877 (LexerInterface!5343 List!38583 List!38582) Option!8137)

(assert (=> b!3647684 (= lt!1264497 (maxPrefix!2877 thiss!23823 rules!3307 lt!1264508))))

(assert (=> b!3647684 (isPrefix!3117 lt!1264520 lt!1264508)))

(declare-fun lt!1264507 () Unit!55386)

(assert (=> b!3647684 (= lt!1264507 (lemmaConcatTwoListThenFirstIsPrefix!2036 lt!1264520 suffix!1395))))

(assert (=> b!3647684 (= lt!1264508 (++!9570 lt!1264520 suffix!1395))))

(declare-fun b!3647685 () Bool)

(declare-fun res!1479437 () Bool)

(assert (=> b!3647685 (=> (not res!1479437) (not e!2258229))))

(assert (=> b!3647685 (= res!1479437 (isEmpty!22785 (_2!22298 lt!1264523)))))

(declare-fun b!3647686 () Bool)

(assert (=> b!3647686 (= e!2258218 e!2258228)))

(declare-fun res!1479423 () Bool)

(assert (=> b!3647686 (=> res!1479423 e!2258228)))

(declare-fun lt!1264510 () BalanceConc!23112)

(assert (=> b!3647686 (= res!1479423 (<= lt!1264500 (size!29363 lt!1264510)))))

(declare-fun lt!1264521 () Unit!55386)

(assert (=> b!3647686 (= lt!1264521 e!2258239)))

(declare-fun c!630520 () Bool)

(assert (=> b!3647686 (= c!630520 (isSeparator!5754 rule!403))))

(declare-fun lt!1264522 () Unit!55386)

(assert (=> b!3647686 (= lt!1264522 e!2258222)))

(declare-fun c!630522 () Bool)

(assert (=> b!3647686 (= c!630522 (not (contains!7573 lt!1264501 lt!1264505)))))

(assert (=> b!3647686 (= lt!1264505 (head!7764 lt!1264499))))

(declare-fun b!3647687 () Bool)

(declare-fun e!2258231 () Bool)

(declare-fun tp!1112246 () Bool)

(assert (=> b!3647687 (= e!2258240 (and e!2258231 tp!1112246))))

(declare-fun tp!1112253 () Bool)

(declare-fun b!3647688 () Bool)

(assert (=> b!3647688 (= e!2258231 (and tp!1112253 (inv!51900 (tag!6514 (h!43879 rules!3307))) (inv!51903 (transformation!5754 (h!43879 rules!3307))) e!2258217))))

(declare-fun b!3647689 () Bool)

(declare-fun tp!1112256 () Bool)

(declare-fun inv!21 (TokenValue!5984) Bool)

(assert (=> b!3647689 (= e!2258248 (and (inv!21 (value!184449 token!511)) e!2258247 tp!1112256))))

(declare-fun b!3647690 () Bool)

(declare-fun tp!1112254 () Bool)

(assert (=> b!3647690 (= e!2258223 (and tp!1112254 (inv!51900 (tag!6514 rule!403)) (inv!51903 (transformation!5754 rule!403)) e!2258242))))

(declare-fun b!3647691 () Bool)

(assert (=> b!3647691 (= e!2258246 e!2258241)))

(declare-fun res!1479416 () Bool)

(assert (=> b!3647691 (=> (not res!1479416) (not e!2258241))))

(declare-fun isDefined!6369 (Option!8137) Bool)

(assert (=> b!3647691 (= res!1479416 (isDefined!6369 lt!1264518))))

(assert (=> b!3647691 (= lt!1264518 (maxPrefix!2877 thiss!23823 rules!3307 lt!1264520))))

(assert (=> b!3647691 (= lt!1264520 (list!14248 lt!1264510))))

(assert (=> b!3647691 (= lt!1264510 (charsOf!3768 token!511))))

(declare-fun b!3647692 () Bool)

(declare-fun Unit!55393 () Unit!55386)

(assert (=> b!3647692 (= e!2258222 Unit!55393)))

(declare-fun lt!1264494 () Unit!55386)

(assert (=> b!3647692 (= lt!1264494 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!702 (regex!5754 rule!403) lt!1264520 lt!1264505))))

(assert (=> b!3647692 false))

(declare-fun b!3647693 () Bool)

(declare-fun res!1479429 () Bool)

(assert (=> b!3647693 (=> res!1479429 e!2258230)))

(declare-fun sepAndNonSepRulesDisjointChars!1922 (List!38583 List!38583) Bool)

(assert (=> b!3647693 (= res!1479429 (not (sepAndNonSepRulesDisjointChars!1922 rules!3307 rules!3307)))))

(declare-fun b!3647694 () Bool)

(declare-fun tp_is_empty!18109 () Bool)

(declare-fun tp!1112243 () Bool)

(assert (=> b!3647694 (= e!2258221 (and tp_is_empty!18109 tp!1112243))))

(assert (= (and start!340970 res!1479435) b!3647665))

(assert (= (and b!3647665 res!1479418) b!3647653))

(assert (= (and b!3647653 res!1479426) b!3647661))

(assert (= (and b!3647661 res!1479425) b!3647660))

(assert (= (and b!3647660 res!1479421) b!3647679))

(assert (= (and b!3647679 res!1479427) b!3647691))

(assert (= (and b!3647691 res!1479416) b!3647656))

(assert (= (and b!3647656 res!1479430) b!3647685))

(assert (= (and b!3647685 res!1479437) b!3647658))

(assert (= (and b!3647658 res!1479422) b!3647655))

(assert (= (and b!3647655 (not res!1479424)) b!3647671))

(assert (= (and b!3647671 (not res!1479433)) b!3647673))

(assert (= (and b!3647673 (not res!1479428)) b!3647657))

(assert (= (and b!3647657 (not res!1479420)) b!3647693))

(assert (= (and b!3647693 (not res!1479429)) b!3647684))

(assert (= (and b!3647684 res!1479417) b!3647654))

(assert (= (and b!3647654 res!1479436) b!3647682))

(assert (= (and b!3647684 (not res!1479432)) b!3647681))

(assert (= (and b!3647681 (not res!1479434)) b!3647666))

(assert (= (and b!3647666 (not res!1479431)) b!3647659))

(assert (= (and b!3647659 (not res!1479419)) b!3647686))

(assert (= (and b!3647686 c!630522) b!3647692))

(assert (= (and b!3647686 (not c!630522)) b!3647676))

(assert (= (and b!3647686 c!630520) b!3647667))

(assert (= (and b!3647686 (not c!630520)) b!3647668))

(assert (= (and b!3647667 c!630523) b!3647669))

(assert (= (and b!3647667 (not c!630523)) b!3647683))

(assert (= (and b!3647668 c!630521) b!3647672))

(assert (= (and b!3647668 (not c!630521)) b!3647670))

(assert (= (or b!3647669 b!3647672) bm!263606))

(assert (= (or b!3647669 b!3647672) bm!263607))

(assert (= (or b!3647669 b!3647672) bm!263605))

(assert (= (and b!3647686 (not res!1479423)) b!3647663))

(assert (= (and b!3647663 (not res!1479415)) b!3647664))

(assert (= b!3647688 b!3647680))

(assert (= b!3647687 b!3647688))

(assert (= (and start!340970 ((_ is Cons!38459) rules!3307)) b!3647687))

(assert (= (and start!340970 ((_ is Cons!38458) suffix!1395)) b!3647694))

(assert (= b!3647662 b!3647674))

(assert (= b!3647689 b!3647662))

(assert (= start!340970 b!3647689))

(assert (= b!3647690 b!3647678))

(assert (= start!340970 b!3647690))

(assert (= b!3647675 b!3647677))

(assert (= start!340970 b!3647675))

(declare-fun m!4151685 () Bool)

(assert (=> b!3647656 m!4151685))

(declare-fun m!4151687 () Bool)

(assert (=> b!3647693 m!4151687))

(declare-fun m!4151689 () Bool)

(assert (=> b!3647675 m!4151689))

(declare-fun m!4151691 () Bool)

(assert (=> b!3647675 m!4151691))

(declare-fun m!4151693 () Bool)

(assert (=> b!3647659 m!4151693))

(declare-fun m!4151695 () Bool)

(assert (=> b!3647659 m!4151695))

(declare-fun m!4151697 () Bool)

(assert (=> b!3647659 m!4151697))

(assert (=> b!3647659 m!4151693))

(declare-fun m!4151699 () Bool)

(assert (=> b!3647659 m!4151699))

(declare-fun m!4151701 () Bool)

(assert (=> b!3647659 m!4151701))

(declare-fun m!4151703 () Bool)

(assert (=> b!3647659 m!4151703))

(declare-fun m!4151705 () Bool)

(assert (=> b!3647659 m!4151705))

(declare-fun m!4151707 () Bool)

(assert (=> b!3647655 m!4151707))

(declare-fun m!4151709 () Bool)

(assert (=> b!3647655 m!4151709))

(declare-fun m!4151711 () Bool)

(assert (=> b!3647655 m!4151711))

(declare-fun m!4151713 () Bool)

(assert (=> b!3647690 m!4151713))

(declare-fun m!4151715 () Bool)

(assert (=> b!3647690 m!4151715))

(declare-fun m!4151717 () Bool)

(assert (=> b!3647665 m!4151717))

(declare-fun m!4151719 () Bool)

(assert (=> b!3647688 m!4151719))

(declare-fun m!4151721 () Bool)

(assert (=> b!3647688 m!4151721))

(declare-fun m!4151723 () Bool)

(assert (=> b!3647653 m!4151723))

(declare-fun m!4151725 () Bool)

(assert (=> b!3647664 m!4151725))

(declare-fun m!4151727 () Bool)

(assert (=> b!3647662 m!4151727))

(declare-fun m!4151729 () Bool)

(assert (=> b!3647662 m!4151729))

(declare-fun m!4151731 () Bool)

(assert (=> b!3647673 m!4151731))

(declare-fun m!4151733 () Bool)

(assert (=> b!3647673 m!4151733))

(declare-fun m!4151735 () Bool)

(assert (=> b!3647673 m!4151735))

(declare-fun m!4151737 () Bool)

(assert (=> b!3647686 m!4151737))

(declare-fun m!4151739 () Bool)

(assert (=> b!3647686 m!4151739))

(declare-fun m!4151741 () Bool)

(assert (=> b!3647686 m!4151741))

(declare-fun m!4151743 () Bool)

(assert (=> b!3647666 m!4151743))

(declare-fun m!4151745 () Bool)

(assert (=> b!3647666 m!4151745))

(declare-fun m!4151747 () Bool)

(assert (=> b!3647666 m!4151747))

(declare-fun m!4151749 () Bool)

(assert (=> b!3647666 m!4151749))

(declare-fun m!4151751 () Bool)

(assert (=> b!3647666 m!4151751))

(assert (=> b!3647666 m!4151743))

(declare-fun m!4151753 () Bool)

(assert (=> b!3647666 m!4151753))

(declare-fun m!4151755 () Bool)

(assert (=> b!3647671 m!4151755))

(declare-fun m!4151757 () Bool)

(assert (=> b!3647689 m!4151757))

(declare-fun m!4151759 () Bool)

(assert (=> b!3647684 m!4151759))

(declare-fun m!4151761 () Bool)

(assert (=> b!3647684 m!4151761))

(declare-fun m!4151763 () Bool)

(assert (=> b!3647684 m!4151763))

(assert (=> b!3647684 m!4151761))

(declare-fun m!4151765 () Bool)

(assert (=> b!3647684 m!4151765))

(declare-fun m!4151767 () Bool)

(assert (=> b!3647684 m!4151767))

(declare-fun m!4151769 () Bool)

(assert (=> b!3647684 m!4151769))

(declare-fun m!4151771 () Bool)

(assert (=> b!3647684 m!4151771))

(declare-fun m!4151773 () Bool)

(assert (=> b!3647684 m!4151773))

(declare-fun m!4151775 () Bool)

(assert (=> b!3647684 m!4151775))

(declare-fun m!4151777 () Bool)

(assert (=> b!3647684 m!4151777))

(declare-fun m!4151779 () Bool)

(assert (=> b!3647684 m!4151779))

(declare-fun m!4151781 () Bool)

(assert (=> b!3647684 m!4151781))

(declare-fun m!4151783 () Bool)

(assert (=> b!3647684 m!4151783))

(declare-fun m!4151785 () Bool)

(assert (=> b!3647684 m!4151785))

(declare-fun m!4151787 () Bool)

(assert (=> b!3647684 m!4151787))

(declare-fun m!4151789 () Bool)

(assert (=> bm!263605 m!4151789))

(declare-fun m!4151791 () Bool)

(assert (=> start!340970 m!4151791))

(declare-fun m!4151793 () Bool)

(assert (=> b!3647661 m!4151793))

(assert (=> b!3647654 m!4151773))

(assert (=> b!3647654 m!4151773))

(declare-fun m!4151795 () Bool)

(assert (=> b!3647654 m!4151795))

(assert (=> b!3647654 m!4151795))

(declare-fun m!4151797 () Bool)

(assert (=> b!3647654 m!4151797))

(declare-fun m!4151799 () Bool)

(assert (=> b!3647654 m!4151799))

(declare-fun m!4151801 () Bool)

(assert (=> bm!263607 m!4151801))

(declare-fun m!4151803 () Bool)

(assert (=> bm!263606 m!4151803))

(declare-fun m!4151805 () Bool)

(assert (=> b!3647685 m!4151805))

(declare-fun m!4151807 () Bool)

(assert (=> b!3647660 m!4151807))

(declare-fun m!4151809 () Bool)

(assert (=> b!3647663 m!4151809))

(declare-fun m!4151811 () Bool)

(assert (=> b!3647663 m!4151811))

(declare-fun m!4151813 () Bool)

(assert (=> b!3647692 m!4151813))

(declare-fun m!4151815 () Bool)

(assert (=> b!3647672 m!4151815))

(declare-fun m!4151817 () Bool)

(assert (=> b!3647657 m!4151817))

(assert (=> b!3647657 m!4151817))

(declare-fun m!4151819 () Bool)

(assert (=> b!3647657 m!4151819))

(declare-fun m!4151821 () Bool)

(assert (=> b!3647681 m!4151821))

(declare-fun m!4151823 () Bool)

(assert (=> b!3647691 m!4151823))

(declare-fun m!4151825 () Bool)

(assert (=> b!3647691 m!4151825))

(declare-fun m!4151827 () Bool)

(assert (=> b!3647691 m!4151827))

(declare-fun m!4151829 () Bool)

(assert (=> b!3647691 m!4151829))

(declare-fun m!4151831 () Bool)

(assert (=> b!3647669 m!4151831))

(check-sat tp_is_empty!18109 (not b!3647693) (not b!3647666) (not b!3647663) b_and!269531 b_and!269525 (not b!3647681) (not start!340970) (not b!3647660) (not b_next!96537) (not b!3647685) (not b!3647672) (not b!3647661) (not b!3647690) (not b!3647665) (not b!3647688) b_and!269535 (not b_next!96539) b_and!269527 b_and!269537 (not b_next!96541) (not b!3647653) (not b!3647689) (not b!3647662) (not b_next!96551) (not b_next!96545) (not b!3647673) (not b!3647671) b_and!269523 (not b!3647675) (not b!3647686) (not b!3647659) (not b!3647656) (not b!3647687) (not bm!263606) (not bm!263607) (not b!3647655) (not b_next!96547) (not b!3647684) (not b_next!96543) b_and!269533 (not b!3647691) (not b_next!96549) (not b!3647692) (not b!3647694) (not b!3647654) (not b!3647664) (not b!3647669) (not b!3647657) (not bm!263605) b_and!269529)
(check-sat b_and!269535 (not b_next!96547) b_and!269531 b_and!269525 (not b_next!96549) (not b_next!96537) b_and!269529 (not b_next!96539) b_and!269527 b_and!269537 (not b_next!96541) (not b_next!96551) (not b_next!96545) b_and!269523 (not b_next!96543) b_and!269533)
(get-model)

(declare-fun d!1072014 () Bool)

(declare-fun isEmpty!22786 (Option!8137) Bool)

(assert (=> d!1072014 (= (isDefined!6369 lt!1264518) (not (isEmpty!22786 lt!1264518)))))

(declare-fun bs!572142 () Bool)

(assert (= bs!572142 d!1072014))

(declare-fun m!4151833 () Bool)

(assert (=> bs!572142 m!4151833))

(assert (=> b!3647691 d!1072014))

(declare-fun b!3647713 () Bool)

(declare-fun e!2258257 () Option!8137)

(declare-fun lt!1264539 () Option!8137)

(declare-fun lt!1264540 () Option!8137)

(assert (=> b!3647713 (= e!2258257 (ite (and ((_ is None!8136) lt!1264539) ((_ is None!8136) lt!1264540)) None!8136 (ite ((_ is None!8136) lt!1264540) lt!1264539 (ite ((_ is None!8136) lt!1264539) lt!1264540 (ite (>= (size!29361 (_1!22298 (v!37988 lt!1264539))) (size!29361 (_1!22298 (v!37988 lt!1264540)))) lt!1264539 lt!1264540)))))))

(declare-fun call!263615 () Option!8137)

(assert (=> b!3647713 (= lt!1264539 call!263615)))

(assert (=> b!3647713 (= lt!1264540 (maxPrefix!2877 thiss!23823 (t!297206 rules!3307) lt!1264520))))

(declare-fun b!3647715 () Bool)

(declare-fun res!1479464 () Bool)

(declare-fun e!2258256 () Bool)

(assert (=> b!3647715 (=> (not res!1479464) (not e!2258256))))

(declare-fun lt!1264537 () Option!8137)

(assert (=> b!3647715 (= res!1479464 (= (++!9570 (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264537)))) (_2!22298 (get!12624 lt!1264537))) lt!1264520))))

(declare-fun b!3647716 () Bool)

(declare-fun res!1479466 () Bool)

(assert (=> b!3647716 (=> (not res!1479466) (not e!2258256))))

(assert (=> b!3647716 (= res!1479466 (= (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264537)))) (originalCharacters!6468 (_1!22298 (get!12624 lt!1264537)))))))

(declare-fun b!3647717 () Bool)

(declare-fun e!2258255 () Bool)

(assert (=> b!3647717 (= e!2258255 e!2258256)))

(declare-fun res!1479465 () Bool)

(assert (=> b!3647717 (=> (not res!1479465) (not e!2258256))))

(assert (=> b!3647717 (= res!1479465 (isDefined!6369 lt!1264537))))

(declare-fun b!3647718 () Bool)

(declare-fun res!1479463 () Bool)

(assert (=> b!3647718 (=> (not res!1479463) (not e!2258256))))

(assert (=> b!3647718 (= res!1479463 (< (size!29362 (_2!22298 (get!12624 lt!1264537))) (size!29362 lt!1264520)))))

(declare-fun b!3647719 () Bool)

(assert (=> b!3647719 (= e!2258257 call!263615)))

(declare-fun b!3647720 () Bool)

(declare-fun res!1479467 () Bool)

(assert (=> b!3647720 (=> (not res!1479467) (not e!2258256))))

(assert (=> b!3647720 (= res!1479467 (= (value!184449 (_1!22298 (get!12624 lt!1264537))) (apply!9256 (transformation!5754 (rule!8548 (_1!22298 (get!12624 lt!1264537)))) (seqFromList!4303 (originalCharacters!6468 (_1!22298 (get!12624 lt!1264537)))))))))

(declare-fun bm!263610 () Bool)

(assert (=> bm!263610 (= call!263615 (maxPrefixOneRule!2015 thiss!23823 (h!43879 rules!3307) lt!1264520))))

(declare-fun b!3647721 () Bool)

(assert (=> b!3647721 (= e!2258256 (contains!7574 rules!3307 (rule!8548 (_1!22298 (get!12624 lt!1264537)))))))

(declare-fun d!1072016 () Bool)

(assert (=> d!1072016 e!2258255))

(declare-fun res!1479469 () Bool)

(assert (=> d!1072016 (=> res!1479469 e!2258255)))

(assert (=> d!1072016 (= res!1479469 (isEmpty!22786 lt!1264537))))

(assert (=> d!1072016 (= lt!1264537 e!2258257)))

(declare-fun c!630528 () Bool)

(assert (=> d!1072016 (= c!630528 (and ((_ is Cons!38459) rules!3307) ((_ is Nil!38459) (t!297206 rules!3307))))))

(declare-fun lt!1264541 () Unit!55386)

(declare-fun lt!1264538 () Unit!55386)

(assert (=> d!1072016 (= lt!1264541 lt!1264538)))

(assert (=> d!1072016 (isPrefix!3117 lt!1264520 lt!1264520)))

(declare-fun lemmaIsPrefixRefl!1973 (List!38582 List!38582) Unit!55386)

(assert (=> d!1072016 (= lt!1264538 (lemmaIsPrefixRefl!1973 lt!1264520 lt!1264520))))

(declare-fun rulesValidInductive!2038 (LexerInterface!5343 List!38583) Bool)

(assert (=> d!1072016 (rulesValidInductive!2038 thiss!23823 rules!3307)))

(assert (=> d!1072016 (= (maxPrefix!2877 thiss!23823 rules!3307 lt!1264520) lt!1264537)))

(declare-fun b!3647714 () Bool)

(declare-fun res!1479468 () Bool)

(assert (=> b!3647714 (=> (not res!1479468) (not e!2258256))))

(assert (=> b!3647714 (= res!1479468 (matchR!5082 (regex!5754 (rule!8548 (_1!22298 (get!12624 lt!1264537)))) (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264537))))))))

(assert (= (and d!1072016 c!630528) b!3647719))

(assert (= (and d!1072016 (not c!630528)) b!3647713))

(assert (= (or b!3647719 b!3647713) bm!263610))

(assert (= (and d!1072016 (not res!1479469)) b!3647717))

(assert (= (and b!3647717 res!1479465) b!3647716))

(assert (= (and b!3647716 res!1479466) b!3647718))

(assert (= (and b!3647718 res!1479463) b!3647715))

(assert (= (and b!3647715 res!1479464) b!3647720))

(assert (= (and b!3647720 res!1479467) b!3647714))

(assert (= (and b!3647714 res!1479468) b!3647721))

(declare-fun m!4151835 () Bool)

(assert (=> b!3647717 m!4151835))

(declare-fun m!4151837 () Bool)

(assert (=> b!3647720 m!4151837))

(declare-fun m!4151839 () Bool)

(assert (=> b!3647720 m!4151839))

(assert (=> b!3647720 m!4151839))

(declare-fun m!4151841 () Bool)

(assert (=> b!3647720 m!4151841))

(assert (=> b!3647718 m!4151837))

(declare-fun m!4151843 () Bool)

(assert (=> b!3647718 m!4151843))

(declare-fun m!4151845 () Bool)

(assert (=> b!3647718 m!4151845))

(assert (=> b!3647716 m!4151837))

(declare-fun m!4151847 () Bool)

(assert (=> b!3647716 m!4151847))

(assert (=> b!3647716 m!4151847))

(declare-fun m!4151849 () Bool)

(assert (=> b!3647716 m!4151849))

(assert (=> b!3647721 m!4151837))

(declare-fun m!4151851 () Bool)

(assert (=> b!3647721 m!4151851))

(assert (=> b!3647715 m!4151837))

(assert (=> b!3647715 m!4151847))

(assert (=> b!3647715 m!4151847))

(assert (=> b!3647715 m!4151849))

(assert (=> b!3647715 m!4151849))

(declare-fun m!4151853 () Bool)

(assert (=> b!3647715 m!4151853))

(declare-fun m!4151855 () Bool)

(assert (=> bm!263610 m!4151855))

(declare-fun m!4151857 () Bool)

(assert (=> b!3647713 m!4151857))

(declare-fun m!4151859 () Bool)

(assert (=> d!1072016 m!4151859))

(declare-fun m!4151861 () Bool)

(assert (=> d!1072016 m!4151861))

(declare-fun m!4151863 () Bool)

(assert (=> d!1072016 m!4151863))

(declare-fun m!4151865 () Bool)

(assert (=> d!1072016 m!4151865))

(assert (=> b!3647714 m!4151837))

(assert (=> b!3647714 m!4151847))

(assert (=> b!3647714 m!4151847))

(assert (=> b!3647714 m!4151849))

(assert (=> b!3647714 m!4151849))

(declare-fun m!4151867 () Bool)

(assert (=> b!3647714 m!4151867))

(assert (=> b!3647691 d!1072016))

(declare-fun d!1072020 () Bool)

(declare-fun list!14249 (Conc!11749) List!38582)

(assert (=> d!1072020 (= (list!14248 lt!1264510) (list!14249 (c!630525 lt!1264510)))))

(declare-fun bs!572143 () Bool)

(assert (= bs!572143 d!1072020))

(declare-fun m!4151869 () Bool)

(assert (=> bs!572143 m!4151869))

(assert (=> b!3647691 d!1072020))

(declare-fun d!1072022 () Bool)

(declare-fun lt!1264544 () BalanceConc!23112)

(assert (=> d!1072022 (= (list!14248 lt!1264544) (originalCharacters!6468 token!511))))

(declare-fun dynLambda!16764 (Int TokenValue!5984) BalanceConc!23112)

(assert (=> d!1072022 (= lt!1264544 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (value!184449 token!511)))))

(assert (=> d!1072022 (= (charsOf!3768 token!511) lt!1264544)))

(declare-fun b_lambda!108163 () Bool)

(assert (=> (not b_lambda!108163) (not d!1072022)))

(declare-fun t!297208 () Bool)

(declare-fun tb!210381 () Bool)

(assert (=> (and b!3647680 (= (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toChars!7905 (transformation!5754 (rule!8548 token!511)))) t!297208) tb!210381))

(declare-fun b!3647726 () Bool)

(declare-fun e!2258260 () Bool)

(declare-fun tp!1112259 () Bool)

(declare-fun inv!51907 (Conc!11749) Bool)

(assert (=> b!3647726 (= e!2258260 (and (inv!51907 (c!630525 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (value!184449 token!511)))) tp!1112259))))

(declare-fun result!256202 () Bool)

(declare-fun inv!51908 (BalanceConc!23112) Bool)

(assert (=> tb!210381 (= result!256202 (and (inv!51908 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (value!184449 token!511))) e!2258260))))

(assert (= tb!210381 b!3647726))

(declare-fun m!4151871 () Bool)

(assert (=> b!3647726 m!4151871))

(declare-fun m!4151873 () Bool)

(assert (=> tb!210381 m!4151873))

(assert (=> d!1072022 t!297208))

(declare-fun b_and!269539 () Bool)

(assert (= b_and!269525 (and (=> t!297208 result!256202) b_and!269539)))

(declare-fun t!297210 () Bool)

(declare-fun tb!210383 () Bool)

(assert (=> (and b!3647678 (= (toChars!7905 (transformation!5754 rule!403)) (toChars!7905 (transformation!5754 (rule!8548 token!511)))) t!297210) tb!210383))

(declare-fun result!256206 () Bool)

(assert (= result!256206 result!256202))

(assert (=> d!1072022 t!297210))

(declare-fun b_and!269541 () Bool)

(assert (= b_and!269529 (and (=> t!297210 result!256206) b_and!269541)))

(declare-fun t!297212 () Bool)

(declare-fun tb!210385 () Bool)

(assert (=> (and b!3647674 (= (toChars!7905 (transformation!5754 (rule!8548 token!511))) (toChars!7905 (transformation!5754 (rule!8548 token!511)))) t!297212) tb!210385))

(declare-fun result!256208 () Bool)

(assert (= result!256208 result!256202))

(assert (=> d!1072022 t!297212))

(declare-fun b_and!269543 () Bool)

(assert (= b_and!269533 (and (=> t!297212 result!256208) b_and!269543)))

(declare-fun t!297214 () Bool)

(declare-fun tb!210387 () Bool)

(assert (=> (and b!3647677 (= (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toChars!7905 (transformation!5754 (rule!8548 token!511)))) t!297214) tb!210387))

(declare-fun result!256210 () Bool)

(assert (= result!256210 result!256202))

(assert (=> d!1072022 t!297214))

(declare-fun b_and!269545 () Bool)

(assert (= b_and!269537 (and (=> t!297214 result!256210) b_and!269545)))

(declare-fun m!4151875 () Bool)

(assert (=> d!1072022 m!4151875))

(declare-fun m!4151877 () Bool)

(assert (=> d!1072022 m!4151877))

(assert (=> b!3647691 d!1072022))

(declare-fun d!1072024 () Bool)

(assert (=> d!1072024 (= (isEmpty!22785 suffix!1395) ((_ is Nil!38458) suffix!1395))))

(assert (=> b!3647671 d!1072024))

(declare-fun d!1072026 () Bool)

(assert (=> d!1072026 (not (matchR!5082 (regex!5754 rule!403) lt!1264520))))

(declare-fun lt!1264547 () Unit!55386)

(declare-fun choose!21486 (Regex!10513 List!38582 C!21212) Unit!55386)

(assert (=> d!1072026 (= lt!1264547 (choose!21486 (regex!5754 rule!403) lt!1264520 lt!1264505))))

(declare-fun validRegex!4815 (Regex!10513) Bool)

(assert (=> d!1072026 (validRegex!4815 (regex!5754 rule!403))))

(assert (=> d!1072026 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!702 (regex!5754 rule!403) lt!1264520 lt!1264505) lt!1264547)))

(declare-fun bs!572144 () Bool)

(assert (= bs!572144 d!1072026))

(assert (=> bs!572144 m!4151707))

(declare-fun m!4151879 () Bool)

(assert (=> bs!572144 m!4151879))

(declare-fun m!4151881 () Bool)

(assert (=> bs!572144 m!4151881))

(assert (=> b!3647692 d!1072026))

(declare-fun d!1072028 () Bool)

(declare-fun res!1479474 () Bool)

(declare-fun e!2258265 () Bool)

(assert (=> d!1072028 (=> res!1479474 e!2258265)))

(assert (=> d!1072028 (= res!1479474 (not ((_ is Cons!38459) rules!3307)))))

(assert (=> d!1072028 (= (sepAndNonSepRulesDisjointChars!1922 rules!3307 rules!3307) e!2258265)))

(declare-fun b!3647731 () Bool)

(declare-fun e!2258266 () Bool)

(assert (=> b!3647731 (= e!2258265 e!2258266)))

(declare-fun res!1479475 () Bool)

(assert (=> b!3647731 (=> (not res!1479475) (not e!2258266))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!876 (Rule!11308 List!38583) Bool)

(assert (=> b!3647731 (= res!1479475 (ruleDisjointCharsFromAllFromOtherType!876 (h!43879 rules!3307) rules!3307))))

(declare-fun b!3647732 () Bool)

(assert (=> b!3647732 (= e!2258266 (sepAndNonSepRulesDisjointChars!1922 rules!3307 (t!297206 rules!3307)))))

(assert (= (and d!1072028 (not res!1479474)) b!3647731))

(assert (= (and b!3647731 res!1479475) b!3647732))

(declare-fun m!4151883 () Bool)

(assert (=> b!3647731 m!4151883))

(declare-fun m!4151885 () Bool)

(assert (=> b!3647732 m!4151885))

(assert (=> b!3647693 d!1072028))

(declare-fun d!1072030 () Bool)

(declare-fun res!1479478 () Bool)

(declare-fun e!2258269 () Bool)

(assert (=> d!1072030 (=> (not res!1479478) (not e!2258269))))

(declare-fun rulesValid!2209 (LexerInterface!5343 List!38583) Bool)

(assert (=> d!1072030 (= res!1479478 (rulesValid!2209 thiss!23823 rules!3307))))

(assert (=> d!1072030 (= (rulesInvariant!4740 thiss!23823 rules!3307) e!2258269)))

(declare-fun b!3647735 () Bool)

(declare-datatypes ((List!38584 0))(
  ( (Nil!38460) (Cons!38460 (h!43880 String!43254) (t!297327 List!38584)) )
))
(declare-fun noDuplicateTag!2205 (LexerInterface!5343 List!38583 List!38584) Bool)

(assert (=> b!3647735 (= e!2258269 (noDuplicateTag!2205 thiss!23823 rules!3307 Nil!38460))))

(assert (= (and d!1072030 res!1479478) b!3647735))

(declare-fun m!4151887 () Bool)

(assert (=> d!1072030 m!4151887))

(declare-fun m!4151889 () Bool)

(assert (=> b!3647735 m!4151889))

(assert (=> b!3647653 d!1072030))

(declare-fun d!1072032 () Bool)

(assert (=> d!1072032 (= (inv!51900 (tag!6514 (h!43879 rules!3307))) (= (mod (str.len (value!184448 (tag!6514 (h!43879 rules!3307)))) 2) 0))))

(assert (=> b!3647688 d!1072032))

(declare-fun d!1072034 () Bool)

(declare-fun res!1479481 () Bool)

(declare-fun e!2258272 () Bool)

(assert (=> d!1072034 (=> (not res!1479481) (not e!2258272))))

(declare-fun semiInverseModEq!2453 (Int Int) Bool)

(assert (=> d!1072034 (= res!1479481 (semiInverseModEq!2453 (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toValue!8046 (transformation!5754 (h!43879 rules!3307)))))))

(assert (=> d!1072034 (= (inv!51903 (transformation!5754 (h!43879 rules!3307))) e!2258272)))

(declare-fun b!3647738 () Bool)

(declare-fun equivClasses!2352 (Int Int) Bool)

(assert (=> b!3647738 (= e!2258272 (equivClasses!2352 (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toValue!8046 (transformation!5754 (h!43879 rules!3307)))))))

(assert (= (and d!1072034 res!1479481) b!3647738))

(declare-fun m!4151891 () Bool)

(assert (=> d!1072034 m!4151891))

(declare-fun m!4151893 () Bool)

(assert (=> b!3647738 m!4151893))

(assert (=> b!3647688 d!1072034))

(declare-fun d!1072036 () Bool)

(declare-fun c!630534 () Bool)

(assert (=> d!1072036 (= c!630534 ((_ is IntegerValue!17952) (value!184449 token!511)))))

(declare-fun e!2258279 () Bool)

(assert (=> d!1072036 (= (inv!21 (value!184449 token!511)) e!2258279)))

(declare-fun b!3647749 () Bool)

(declare-fun inv!16 (TokenValue!5984) Bool)

(assert (=> b!3647749 (= e!2258279 (inv!16 (value!184449 token!511)))))

(declare-fun b!3647750 () Bool)

(declare-fun res!1479484 () Bool)

(declare-fun e!2258280 () Bool)

(assert (=> b!3647750 (=> res!1479484 e!2258280)))

(assert (=> b!3647750 (= res!1479484 (not ((_ is IntegerValue!17954) (value!184449 token!511))))))

(declare-fun e!2258281 () Bool)

(assert (=> b!3647750 (= e!2258281 e!2258280)))

(declare-fun b!3647751 () Bool)

(assert (=> b!3647751 (= e!2258279 e!2258281)))

(declare-fun c!630535 () Bool)

(assert (=> b!3647751 (= c!630535 ((_ is IntegerValue!17953) (value!184449 token!511)))))

(declare-fun b!3647752 () Bool)

(declare-fun inv!15 (TokenValue!5984) Bool)

(assert (=> b!3647752 (= e!2258280 (inv!15 (value!184449 token!511)))))

(declare-fun b!3647753 () Bool)

(declare-fun inv!17 (TokenValue!5984) Bool)

(assert (=> b!3647753 (= e!2258281 (inv!17 (value!184449 token!511)))))

(assert (= (and d!1072036 c!630534) b!3647749))

(assert (= (and d!1072036 (not c!630534)) b!3647751))

(assert (= (and b!3647751 c!630535) b!3647753))

(assert (= (and b!3647751 (not c!630535)) b!3647750))

(assert (= (and b!3647750 (not res!1479484)) b!3647752))

(declare-fun m!4151895 () Bool)

(assert (=> b!3647749 m!4151895))

(declare-fun m!4151897 () Bool)

(assert (=> b!3647752 m!4151897))

(declare-fun m!4151899 () Bool)

(assert (=> b!3647753 m!4151899))

(assert (=> b!3647689 d!1072036))

(declare-fun d!1072038 () Bool)

(assert (=> d!1072038 (not (contains!7573 (usedCharacters!966 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264505))))

(declare-fun lt!1264550 () Unit!55386)

(declare-fun choose!21488 (LexerInterface!5343 List!38583 List!38583 Rule!11308 Rule!11308 C!21212) Unit!55386)

(assert (=> d!1072038 (= lt!1264550 (choose!21488 thiss!23823 rules!3307 rules!3307 (rule!8548 (_1!22298 lt!1264488)) rule!403 lt!1264505))))

(assert (=> d!1072038 (rulesInvariant!4740 thiss!23823 rules!3307)))

(assert (=> d!1072038 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!400 thiss!23823 rules!3307 rules!3307 (rule!8548 (_1!22298 lt!1264488)) rule!403 lt!1264505) lt!1264550)))

(declare-fun bs!572145 () Bool)

(assert (= bs!572145 d!1072038))

(assert (=> bs!572145 m!4151801))

(assert (=> bs!572145 m!4151801))

(declare-fun m!4151901 () Bool)

(assert (=> bs!572145 m!4151901))

(declare-fun m!4151903 () Bool)

(assert (=> bs!572145 m!4151903))

(assert (=> bs!572145 m!4151723))

(assert (=> b!3647669 d!1072038))

(declare-fun d!1072040 () Bool)

(assert (=> d!1072040 (= (inv!51900 (tag!6514 rule!403)) (= (mod (str.len (value!184448 (tag!6514 rule!403))) 2) 0))))

(assert (=> b!3647690 d!1072040))

(declare-fun d!1072042 () Bool)

(declare-fun res!1479485 () Bool)

(declare-fun e!2258282 () Bool)

(assert (=> d!1072042 (=> (not res!1479485) (not e!2258282))))

(assert (=> d!1072042 (= res!1479485 (semiInverseModEq!2453 (toChars!7905 (transformation!5754 rule!403)) (toValue!8046 (transformation!5754 rule!403))))))

(assert (=> d!1072042 (= (inv!51903 (transformation!5754 rule!403)) e!2258282)))

(declare-fun b!3647754 () Bool)

(assert (=> b!3647754 (= e!2258282 (equivClasses!2352 (toChars!7905 (transformation!5754 rule!403)) (toValue!8046 (transformation!5754 rule!403))))))

(assert (= (and d!1072042 res!1479485) b!3647754))

(declare-fun m!4151905 () Bool)

(assert (=> d!1072042 m!4151905))

(declare-fun m!4151907 () Bool)

(assert (=> b!3647754 m!4151907))

(assert (=> b!3647690 d!1072042))

(declare-fun d!1072044 () Bool)

(assert (=> d!1072044 (= (isEmpty!22784 rules!3307) ((_ is Nil!38459) rules!3307))))

(assert (=> b!3647665 d!1072044))

(declare-fun d!1072046 () Bool)

(assert (=> d!1072046 (= (size!29361 (_1!22298 lt!1264488)) (size!29362 (originalCharacters!6468 (_1!22298 lt!1264488))))))

(declare-fun Unit!55395 () Unit!55386)

(assert (=> d!1072046 (= (lemmaCharactersSize!799 (_1!22298 lt!1264488)) Unit!55395)))

(declare-fun bs!572146 () Bool)

(assert (= bs!572146 d!1072046))

(declare-fun m!4151909 () Bool)

(assert (=> bs!572146 m!4151909))

(assert (=> b!3647666 d!1072046))

(declare-fun d!1072048 () Bool)

(declare-fun fromListB!1989 (List!38582) BalanceConc!23112)

(assert (=> d!1072048 (= (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488))) (fromListB!1989 (originalCharacters!6468 (_1!22298 lt!1264488))))))

(declare-fun bs!572147 () Bool)

(assert (= bs!572147 d!1072048))

(declare-fun m!4151911 () Bool)

(assert (=> bs!572147 m!4151911))

(assert (=> b!3647666 d!1072048))

(declare-fun d!1072050 () Bool)

(declare-fun dynLambda!16765 (Int BalanceConc!23112) TokenValue!5984)

(assert (=> d!1072050 (= (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517))))

(declare-fun b_lambda!108165 () Bool)

(assert (=> (not b_lambda!108165) (not d!1072050)))

(declare-fun t!297216 () Bool)

(declare-fun tb!210389 () Bool)

(assert (=> (and b!3647680 (= (toValue!8046 (transformation!5754 (h!43879 rules!3307))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297216) tb!210389))

(declare-fun result!256212 () Bool)

(assert (=> tb!210389 (= result!256212 (inv!21 (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517)))))

(declare-fun m!4151913 () Bool)

(assert (=> tb!210389 m!4151913))

(assert (=> d!1072050 t!297216))

(declare-fun b_and!269547 () Bool)

(assert (= b_and!269523 (and (=> t!297216 result!256212) b_and!269547)))

(declare-fun t!297218 () Bool)

(declare-fun tb!210391 () Bool)

(assert (=> (and b!3647678 (= (toValue!8046 (transformation!5754 rule!403)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297218) tb!210391))

(declare-fun result!256216 () Bool)

(assert (= result!256216 result!256212))

(assert (=> d!1072050 t!297218))

(declare-fun b_and!269549 () Bool)

(assert (= b_and!269527 (and (=> t!297218 result!256216) b_and!269549)))

(declare-fun t!297220 () Bool)

(declare-fun tb!210393 () Bool)

(assert (=> (and b!3647674 (= (toValue!8046 (transformation!5754 (rule!8548 token!511))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297220) tb!210393))

(declare-fun result!256218 () Bool)

(assert (= result!256218 result!256212))

(assert (=> d!1072050 t!297220))

(declare-fun b_and!269551 () Bool)

(assert (= b_and!269531 (and (=> t!297220 result!256218) b_and!269551)))

(declare-fun t!297222 () Bool)

(declare-fun tb!210395 () Bool)

(assert (=> (and b!3647677 (= (toValue!8046 (transformation!5754 anOtherTypeRule!33)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297222) tb!210395))

(declare-fun result!256220 () Bool)

(assert (= result!256220 result!256212))

(assert (=> d!1072050 t!297222))

(declare-fun b_and!269553 () Bool)

(assert (= b_and!269535 (and (=> t!297222 result!256220) b_and!269553)))

(declare-fun m!4151915 () Bool)

(assert (=> d!1072050 m!4151915))

(assert (=> b!3647666 d!1072050))

(declare-fun b!3647884 () Bool)

(declare-fun e!2258367 () Bool)

(assert (=> b!3647884 (= e!2258367 true)))

(declare-fun d!1072052 () Bool)

(assert (=> d!1072052 e!2258367))

(assert (= d!1072052 b!3647884))

(declare-fun order!21179 () Int)

(declare-fun order!21181 () Int)

(declare-fun lambda!124460 () Int)

(declare-fun dynLambda!16766 (Int Int) Int)

(declare-fun dynLambda!16767 (Int Int) Int)

(assert (=> b!3647884 (< (dynLambda!16766 order!21179 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) (dynLambda!16767 order!21181 lambda!124460))))

(declare-fun order!21183 () Int)

(declare-fun dynLambda!16768 (Int Int) Int)

(assert (=> b!3647884 (< (dynLambda!16768 order!21183 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) (dynLambda!16767 order!21181 lambda!124460))))

(assert (=> d!1072052 (= (list!14248 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517))) (list!14248 lt!1264517))))

(declare-fun lt!1264595 () Unit!55386)

(declare-fun ForallOf!710 (Int BalanceConc!23112) Unit!55386)

(assert (=> d!1072052 (= lt!1264595 (ForallOf!710 lambda!124460 lt!1264517))))

(assert (=> d!1072052 (= (lemmaSemiInverse!1503 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517) lt!1264595)))

(declare-fun b_lambda!108179 () Bool)

(assert (=> (not b_lambda!108179) (not d!1072052)))

(declare-fun tb!210429 () Bool)

(declare-fun t!297256 () Bool)

(assert (=> (and b!3647680 (= (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297256) tb!210429))

(declare-fun tp!1112264 () Bool)

(declare-fun b!3647885 () Bool)

(declare-fun e!2258368 () Bool)

(assert (=> b!3647885 (= e!2258368 (and (inv!51907 (c!630525 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517)))) tp!1112264))))

(declare-fun result!256258 () Bool)

(assert (=> tb!210429 (= result!256258 (and (inv!51908 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517))) e!2258368))))

(assert (= tb!210429 b!3647885))

(declare-fun m!4152037 () Bool)

(assert (=> b!3647885 m!4152037))

(declare-fun m!4152039 () Bool)

(assert (=> tb!210429 m!4152039))

(assert (=> d!1072052 t!297256))

(declare-fun b_and!269603 () Bool)

(assert (= b_and!269539 (and (=> t!297256 result!256258) b_and!269603)))

(declare-fun t!297258 () Bool)

(declare-fun tb!210431 () Bool)

(assert (=> (and b!3647678 (= (toChars!7905 (transformation!5754 rule!403)) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297258) tb!210431))

(declare-fun result!256260 () Bool)

(assert (= result!256260 result!256258))

(assert (=> d!1072052 t!297258))

(declare-fun b_and!269605 () Bool)

(assert (= b_and!269541 (and (=> t!297258 result!256260) b_and!269605)))

(declare-fun tb!210433 () Bool)

(declare-fun t!297260 () Bool)

(assert (=> (and b!3647674 (= (toChars!7905 (transformation!5754 (rule!8548 token!511))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297260) tb!210433))

(declare-fun result!256262 () Bool)

(assert (= result!256262 result!256258))

(assert (=> d!1072052 t!297260))

(declare-fun b_and!269607 () Bool)

(assert (= b_and!269543 (and (=> t!297260 result!256262) b_and!269607)))

(declare-fun t!297262 () Bool)

(declare-fun tb!210435 () Bool)

(assert (=> (and b!3647677 (= (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297262) tb!210435))

(declare-fun result!256264 () Bool)

(assert (= result!256264 result!256258))

(assert (=> d!1072052 t!297262))

(declare-fun b_and!269609 () Bool)

(assert (= b_and!269545 (and (=> t!297262 result!256264) b_and!269609)))

(declare-fun b_lambda!108181 () Bool)

(assert (=> (not b_lambda!108181) (not d!1072052)))

(assert (=> d!1072052 t!297216))

(declare-fun b_and!269611 () Bool)

(assert (= b_and!269547 (and (=> t!297216 result!256212) b_and!269611)))

(assert (=> d!1072052 t!297218))

(declare-fun b_and!269613 () Bool)

(assert (= b_and!269549 (and (=> t!297218 result!256216) b_and!269613)))

(assert (=> d!1072052 t!297220))

(declare-fun b_and!269615 () Bool)

(assert (= b_and!269551 (and (=> t!297220 result!256218) b_and!269615)))

(assert (=> d!1072052 t!297222))

(declare-fun b_and!269617 () Bool)

(assert (= b_and!269553 (and (=> t!297222 result!256220) b_and!269617)))

(declare-fun m!4152041 () Bool)

(assert (=> d!1072052 m!4152041))

(assert (=> d!1072052 m!4151915))

(assert (=> d!1072052 m!4151779))

(declare-fun m!4152043 () Bool)

(assert (=> d!1072052 m!4152043))

(declare-fun m!4152045 () Bool)

(assert (=> d!1072052 m!4152045))

(assert (=> d!1072052 m!4151915))

(assert (=> d!1072052 m!4152043))

(assert (=> b!3647666 d!1072052))

(declare-fun d!1072104 () Bool)

(declare-fun lt!1264598 () Int)

(assert (=> d!1072104 (= lt!1264598 (size!29362 (list!14248 lt!1264517)))))

(declare-fun size!29365 (Conc!11749) Int)

(assert (=> d!1072104 (= lt!1264598 (size!29365 (c!630525 lt!1264517)))))

(assert (=> d!1072104 (= (size!29363 lt!1264517) lt!1264598)))

(declare-fun bs!572156 () Bool)

(assert (= bs!572156 d!1072104))

(assert (=> bs!572156 m!4151779))

(assert (=> bs!572156 m!4151779))

(declare-fun m!4152047 () Bool)

(assert (=> bs!572156 m!4152047))

(declare-fun m!4152049 () Bool)

(assert (=> bs!572156 m!4152049))

(assert (=> b!3647666 d!1072104))

(declare-fun b!3647892 () Bool)

(declare-fun e!2258373 () Bool)

(assert (=> b!3647892 (= e!2258373 true)))

(declare-fun d!1072106 () Bool)

(assert (=> d!1072106 e!2258373))

(assert (= d!1072106 b!3647892))

(declare-fun lambda!124463 () Int)

(declare-fun order!21185 () Int)

(declare-fun dynLambda!16769 (Int Int) Int)

(assert (=> b!3647892 (< (dynLambda!16766 order!21179 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) (dynLambda!16769 order!21185 lambda!124463))))

(assert (=> b!3647892 (< (dynLambda!16768 order!21183 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) (dynLambda!16769 order!21185 lambda!124463))))

(assert (=> d!1072106 (= (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264517) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488)))))))

(declare-fun lt!1264601 () Unit!55386)

(declare-fun Forall2of!368 (Int BalanceConc!23112 BalanceConc!23112) Unit!55386)

(assert (=> d!1072106 (= lt!1264601 (Forall2of!368 lambda!124463 lt!1264517 (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488)))))))

(assert (=> d!1072106 (= (list!14248 lt!1264517) (list!14248 (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488)))))))

(assert (=> d!1072106 (= (lemmaEqSameImage!937 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264517 (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488)))) lt!1264601)))

(declare-fun b_lambda!108183 () Bool)

(assert (=> (not b_lambda!108183) (not d!1072106)))

(assert (=> d!1072106 t!297216))

(declare-fun b_and!269619 () Bool)

(assert (= b_and!269611 (and (=> t!297216 result!256212) b_and!269619)))

(assert (=> d!1072106 t!297218))

(declare-fun b_and!269621 () Bool)

(assert (= b_and!269613 (and (=> t!297218 result!256216) b_and!269621)))

(assert (=> d!1072106 t!297220))

(declare-fun b_and!269623 () Bool)

(assert (= b_and!269615 (and (=> t!297220 result!256218) b_and!269623)))

(assert (=> d!1072106 t!297222))

(declare-fun b_and!269625 () Bool)

(assert (= b_and!269617 (and (=> t!297222 result!256220) b_and!269625)))

(declare-fun b_lambda!108185 () Bool)

(assert (=> (not b_lambda!108185) (not d!1072106)))

(declare-fun t!297264 () Bool)

(declare-fun tb!210437 () Bool)

(assert (=> (and b!3647680 (= (toValue!8046 (transformation!5754 (h!43879 rules!3307))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297264) tb!210437))

(declare-fun result!256266 () Bool)

(assert (=> tb!210437 (= result!256266 (inv!21 (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (seqFromList!4303 (originalCharacters!6468 (_1!22298 lt!1264488))))))))

(declare-fun m!4152051 () Bool)

(assert (=> tb!210437 m!4152051))

(assert (=> d!1072106 t!297264))

(declare-fun b_and!269627 () Bool)

(assert (= b_and!269619 (and (=> t!297264 result!256266) b_and!269627)))

(declare-fun tb!210439 () Bool)

(declare-fun t!297266 () Bool)

(assert (=> (and b!3647678 (= (toValue!8046 (transformation!5754 rule!403)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297266) tb!210439))

(declare-fun result!256268 () Bool)

(assert (= result!256268 result!256266))

(assert (=> d!1072106 t!297266))

(declare-fun b_and!269629 () Bool)

(assert (= b_and!269621 (and (=> t!297266 result!256268) b_and!269629)))

(declare-fun tb!210441 () Bool)

(declare-fun t!297268 () Bool)

(assert (=> (and b!3647674 (= (toValue!8046 (transformation!5754 (rule!8548 token!511))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297268) tb!210441))

(declare-fun result!256270 () Bool)

(assert (= result!256270 result!256266))

(assert (=> d!1072106 t!297268))

(declare-fun b_and!269631 () Bool)

(assert (= b_and!269623 (and (=> t!297268 result!256270) b_and!269631)))

(declare-fun tb!210443 () Bool)

(declare-fun t!297270 () Bool)

(assert (=> (and b!3647677 (= (toValue!8046 (transformation!5754 anOtherTypeRule!33)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297270) tb!210443))

(declare-fun result!256272 () Bool)

(assert (= result!256272 result!256266))

(assert (=> d!1072106 t!297270))

(declare-fun b_and!269633 () Bool)

(assert (= b_and!269625 (and (=> t!297270 result!256272) b_and!269633)))

(assert (=> d!1072106 m!4151743))

(declare-fun m!4152053 () Bool)

(assert (=> d!1072106 m!4152053))

(assert (=> d!1072106 m!4151779))

(assert (=> d!1072106 m!4151915))

(assert (=> d!1072106 m!4151743))

(declare-fun m!4152055 () Bool)

(assert (=> d!1072106 m!4152055))

(assert (=> d!1072106 m!4151743))

(declare-fun m!4152057 () Bool)

(assert (=> d!1072106 m!4152057))

(assert (=> b!3647666 d!1072106))

(declare-fun d!1072108 () Bool)

(declare-fun lt!1264602 () Int)

(assert (=> d!1072108 (= lt!1264602 (size!29362 (list!14248 lt!1264510)))))

(assert (=> d!1072108 (= lt!1264602 (size!29365 (c!630525 lt!1264510)))))

(assert (=> d!1072108 (= (size!29363 lt!1264510) lt!1264602)))

(declare-fun bs!572157 () Bool)

(assert (= bs!572157 d!1072108))

(assert (=> bs!572157 m!4151827))

(assert (=> bs!572157 m!4151827))

(declare-fun m!4152059 () Bool)

(assert (=> bs!572157 m!4152059))

(declare-fun m!4152061 () Bool)

(assert (=> bs!572157 m!4152061))

(assert (=> b!3647686 d!1072108))

(declare-fun d!1072110 () Bool)

(declare-fun lt!1264605 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5545 (List!38582) (InoxSet C!21212))

(assert (=> d!1072110 (= lt!1264605 (select (content!5545 lt!1264501) lt!1264505))))

(declare-fun e!2258379 () Bool)

(assert (=> d!1072110 (= lt!1264605 e!2258379)))

(declare-fun res!1479562 () Bool)

(assert (=> d!1072110 (=> (not res!1479562) (not e!2258379))))

(assert (=> d!1072110 (= res!1479562 ((_ is Cons!38458) lt!1264501))))

(assert (=> d!1072110 (= (contains!7573 lt!1264501 lt!1264505) lt!1264605)))

(declare-fun b!3647897 () Bool)

(declare-fun e!2258380 () Bool)

(assert (=> b!3647897 (= e!2258379 e!2258380)))

(declare-fun res!1479561 () Bool)

(assert (=> b!3647897 (=> res!1479561 e!2258380)))

(assert (=> b!3647897 (= res!1479561 (= (h!43878 lt!1264501) lt!1264505))))

(declare-fun b!3647898 () Bool)

(assert (=> b!3647898 (= e!2258380 (contains!7573 (t!297205 lt!1264501) lt!1264505))))

(assert (= (and d!1072110 res!1479562) b!3647897))

(assert (= (and b!3647897 (not res!1479561)) b!3647898))

(declare-fun m!4152063 () Bool)

(assert (=> d!1072110 m!4152063))

(declare-fun m!4152065 () Bool)

(assert (=> d!1072110 m!4152065))

(declare-fun m!4152067 () Bool)

(assert (=> b!3647898 m!4152067))

(assert (=> b!3647686 d!1072110))

(declare-fun d!1072112 () Bool)

(assert (=> d!1072112 (= (head!7764 lt!1264499) (h!43878 lt!1264499))))

(assert (=> b!3647686 d!1072112))

(declare-fun b!3647915 () Bool)

(declare-fun e!2258391 () List!38582)

(assert (=> b!3647915 (= e!2258391 Nil!38458)))

(declare-fun b!3647916 () Bool)

(declare-fun e!2258389 () List!38582)

(declare-fun call!263629 () List!38582)

(assert (=> b!3647916 (= e!2258389 call!263629)))

(declare-fun b!3647917 () Bool)

(declare-fun e!2258392 () List!38582)

(declare-fun call!263631 () List!38582)

(assert (=> b!3647917 (= e!2258392 call!263631)))

(declare-fun d!1072114 () Bool)

(declare-fun c!630569 () Bool)

(assert (=> d!1072114 (= c!630569 (or ((_ is EmptyExpr!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) ((_ is EmptyLang!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))))

(assert (=> d!1072114 (= (usedCharacters!966 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) e!2258391)))

(declare-fun b!3647918 () Bool)

(assert (=> b!3647918 (= e!2258389 e!2258392)))

(declare-fun c!630568 () Bool)

(assert (=> b!3647918 (= c!630568 ((_ is Union!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3647919 () Bool)

(declare-fun c!630567 () Bool)

(assert (=> b!3647919 (= c!630567 ((_ is Star!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun e!2258390 () List!38582)

(assert (=> b!3647919 (= e!2258390 e!2258389)))

(declare-fun bm!263623 () Bool)

(declare-fun call!263630 () List!38582)

(assert (=> bm!263623 (= call!263630 call!263629)))

(declare-fun bm!263624 () Bool)

(declare-fun call!263628 () List!38582)

(assert (=> bm!263624 (= call!263631 (++!9570 (ite c!630568 call!263630 call!263628) (ite c!630568 call!263628 call!263630)))))

(declare-fun b!3647920 () Bool)

(assert (=> b!3647920 (= e!2258390 (Cons!38458 (c!630524 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) Nil!38458))))

(declare-fun b!3647921 () Bool)

(assert (=> b!3647921 (= e!2258392 call!263631)))

(declare-fun bm!263625 () Bool)

(assert (=> bm!263625 (= call!263628 (usedCharacters!966 (ite c!630568 (regTwo!21539 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) (regOne!21538 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))))

(declare-fun bm!263626 () Bool)

(assert (=> bm!263626 (= call!263629 (usedCharacters!966 (ite c!630567 (reg!10842 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) (ite c!630568 (regOne!21539 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) (regTwo!21538 (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))))))

(declare-fun b!3647922 () Bool)

(assert (=> b!3647922 (= e!2258391 e!2258390)))

(declare-fun c!630570 () Bool)

(assert (=> b!3647922 (= c!630570 ((_ is ElementMatch!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(assert (= (and d!1072114 c!630569) b!3647915))

(assert (= (and d!1072114 (not c!630569)) b!3647922))

(assert (= (and b!3647922 c!630570) b!3647920))

(assert (= (and b!3647922 (not c!630570)) b!3647919))

(assert (= (and b!3647919 c!630567) b!3647916))

(assert (= (and b!3647919 (not c!630567)) b!3647918))

(assert (= (and b!3647918 c!630568) b!3647921))

(assert (= (and b!3647918 (not c!630568)) b!3647917))

(assert (= (or b!3647921 b!3647917) bm!263623))

(assert (= (or b!3647921 b!3647917) bm!263625))

(assert (= (or b!3647921 b!3647917) bm!263624))

(assert (= (or b!3647916 bm!263623) bm!263626))

(declare-fun m!4152069 () Bool)

(assert (=> bm!263624 m!4152069))

(declare-fun m!4152071 () Bool)

(assert (=> bm!263625 m!4152071))

(declare-fun m!4152073 () Bool)

(assert (=> bm!263626 m!4152073))

(assert (=> bm!263607 d!1072114))

(declare-fun d!1072116 () Bool)

(declare-fun lt!1264606 () Bool)

(assert (=> d!1072116 (= lt!1264606 (select (content!5545 lt!1264499) lt!1264496))))

(declare-fun e!2258393 () Bool)

(assert (=> d!1072116 (= lt!1264606 e!2258393)))

(declare-fun res!1479564 () Bool)

(assert (=> d!1072116 (=> (not res!1479564) (not e!2258393))))

(assert (=> d!1072116 (= res!1479564 ((_ is Cons!38458) lt!1264499))))

(assert (=> d!1072116 (= (contains!7573 lt!1264499 lt!1264496) lt!1264606)))

(declare-fun b!3647923 () Bool)

(declare-fun e!2258394 () Bool)

(assert (=> b!3647923 (= e!2258393 e!2258394)))

(declare-fun res!1479563 () Bool)

(assert (=> b!3647923 (=> res!1479563 e!2258394)))

(assert (=> b!3647923 (= res!1479563 (= (h!43878 lt!1264499) lt!1264496))))

(declare-fun b!3647924 () Bool)

(assert (=> b!3647924 (= e!2258394 (contains!7573 (t!297205 lt!1264499) lt!1264496))))

(assert (= (and d!1072116 res!1479564) b!3647923))

(assert (= (and b!3647923 (not res!1479563)) b!3647924))

(declare-fun m!4152075 () Bool)

(assert (=> d!1072116 m!4152075))

(declare-fun m!4152077 () Bool)

(assert (=> d!1072116 m!4152077))

(declare-fun m!4152079 () Bool)

(assert (=> b!3647924 m!4152079))

(assert (=> b!3647663 d!1072116))

(declare-fun d!1072118 () Bool)

(assert (=> d!1072118 (contains!7573 lt!1264499 (head!7764 suffix!1395))))

(declare-fun lt!1264609 () Unit!55386)

(declare-fun choose!21489 (List!38582 List!38582 List!38582 List!38582) Unit!55386)

(assert (=> d!1072118 (= lt!1264609 (choose!21489 lt!1264520 suffix!1395 lt!1264499 lt!1264508))))

(assert (=> d!1072118 (isPrefix!3117 lt!1264499 lt!1264508)))

(assert (=> d!1072118 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!62 lt!1264520 suffix!1395 lt!1264499 lt!1264508) lt!1264609)))

(declare-fun bs!572158 () Bool)

(assert (= bs!572158 d!1072118))

(assert (=> bs!572158 m!4151733))

(assert (=> bs!572158 m!4151733))

(declare-fun m!4152081 () Bool)

(assert (=> bs!572158 m!4152081))

(declare-fun m!4152083 () Bool)

(assert (=> bs!572158 m!4152083))

(assert (=> bs!572158 m!4151787))

(assert (=> b!3647663 d!1072118))

(declare-fun d!1072120 () Bool)

(declare-fun lt!1264612 () Bool)

(declare-fun content!5547 (List!38583) (InoxSet Rule!11308))

(assert (=> d!1072120 (= lt!1264612 (select (content!5547 rules!3307) (rule!8548 (_1!22298 lt!1264488))))))

(declare-fun e!2258400 () Bool)

(assert (=> d!1072120 (= lt!1264612 e!2258400)))

(declare-fun res!1479570 () Bool)

(assert (=> d!1072120 (=> (not res!1479570) (not e!2258400))))

(assert (=> d!1072120 (= res!1479570 ((_ is Cons!38459) rules!3307))))

(assert (=> d!1072120 (= (contains!7574 rules!3307 (rule!8548 (_1!22298 lt!1264488))) lt!1264612)))

(declare-fun b!3647929 () Bool)

(declare-fun e!2258399 () Bool)

(assert (=> b!3647929 (= e!2258400 e!2258399)))

(declare-fun res!1479569 () Bool)

(assert (=> b!3647929 (=> res!1479569 e!2258399)))

(assert (=> b!3647929 (= res!1479569 (= (h!43879 rules!3307) (rule!8548 (_1!22298 lt!1264488))))))

(declare-fun b!3647930 () Bool)

(assert (=> b!3647930 (= e!2258399 (contains!7574 (t!297206 rules!3307) (rule!8548 (_1!22298 lt!1264488))))))

(assert (= (and d!1072120 res!1479570) b!3647929))

(assert (= (and b!3647929 (not res!1479569)) b!3647930))

(declare-fun m!4152085 () Bool)

(assert (=> d!1072120 m!4152085))

(declare-fun m!4152087 () Bool)

(assert (=> d!1072120 m!4152087))

(declare-fun m!4152089 () Bool)

(assert (=> b!3647930 m!4152089))

(assert (=> b!3647664 d!1072120))

(declare-fun b!3648103 () Bool)

(declare-fun e!2258491 () Unit!55386)

(declare-fun Unit!55398 () Unit!55386)

(assert (=> b!3648103 (= e!2258491 Unit!55398)))

(declare-fun lt!1264754 () List!38582)

(assert (=> b!3648103 (= lt!1264754 (++!9570 lt!1264520 suffix!1395))))

(declare-fun lt!1264744 () Token!10874)

(declare-fun lt!1264758 () Unit!55386)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!540 (LexerInterface!5343 Rule!11308 List!38583 List!38582) Unit!55386)

(assert (=> b!3648103 (= lt!1264758 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!540 thiss!23823 (rule!8548 lt!1264744) rules!3307 lt!1264754))))

(assert (=> b!3648103 (isEmpty!22786 (maxPrefixOneRule!2015 thiss!23823 (rule!8548 lt!1264744) lt!1264754))))

(declare-fun lt!1264746 () Unit!55386)

(assert (=> b!3648103 (= lt!1264746 lt!1264758)))

(declare-fun lt!1264750 () List!38582)

(assert (=> b!3648103 (= lt!1264750 (list!14248 (charsOf!3768 lt!1264744)))))

(declare-fun lt!1264753 () Unit!55386)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!528 (LexerInterface!5343 Rule!11308 List!38582 List!38582) Unit!55386)

(assert (=> b!3648103 (= lt!1264753 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!528 thiss!23823 (rule!8548 lt!1264744) lt!1264750 (++!9570 lt!1264520 suffix!1395)))))

(assert (=> b!3648103 (not (matchR!5082 (regex!5754 (rule!8548 lt!1264744)) lt!1264750))))

(declare-fun lt!1264757 () Unit!55386)

(assert (=> b!3648103 (= lt!1264757 lt!1264753)))

(assert (=> b!3648103 false))

(declare-fun e!2258492 () Bool)

(declare-fun b!3648102 () Bool)

(assert (=> b!3648102 (= e!2258492 (= (rule!8548 lt!1264744) (get!12623 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 lt!1264744))))))))

(declare-fun d!1072122 () Bool)

(assert (=> d!1072122 (isDefined!6369 (maxPrefix!2877 thiss!23823 rules!3307 (++!9570 lt!1264520 suffix!1395)))))

(declare-fun lt!1264747 () Unit!55386)

(assert (=> d!1072122 (= lt!1264747 e!2258491)))

(declare-fun c!630613 () Bool)

(assert (=> d!1072122 (= c!630613 (isEmpty!22786 (maxPrefix!2877 thiss!23823 rules!3307 (++!9570 lt!1264520 suffix!1395))))))

(declare-fun lt!1264759 () Unit!55386)

(declare-fun lt!1264752 () Unit!55386)

(assert (=> d!1072122 (= lt!1264759 lt!1264752)))

(assert (=> d!1072122 e!2258492))

(declare-fun res!1479656 () Bool)

(assert (=> d!1072122 (=> (not res!1479656) (not e!2258492))))

(assert (=> d!1072122 (= res!1479656 (isDefined!6368 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 lt!1264744)))))))

(assert (=> d!1072122 (= lt!1264752 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1358 thiss!23823 rules!3307 lt!1264520 lt!1264744))))

(declare-fun lt!1264749 () Unit!55386)

(declare-fun lt!1264748 () Unit!55386)

(assert (=> d!1072122 (= lt!1264749 lt!1264748)))

(declare-fun lt!1264756 () List!38582)

(assert (=> d!1072122 (isPrefix!3117 lt!1264756 (++!9570 lt!1264520 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!504 (List!38582 List!38582 List!38582) Unit!55386)

(assert (=> d!1072122 (= lt!1264748 (lemmaPrefixStaysPrefixWhenAddingToSuffix!504 lt!1264756 lt!1264520 suffix!1395))))

(assert (=> d!1072122 (= lt!1264756 (list!14248 (charsOf!3768 lt!1264744)))))

(declare-fun lt!1264751 () Unit!55386)

(declare-fun lt!1264755 () Unit!55386)

(assert (=> d!1072122 (= lt!1264751 lt!1264755)))

(declare-fun lt!1264743 () List!38582)

(declare-fun lt!1264745 () List!38582)

(assert (=> d!1072122 (isPrefix!3117 lt!1264743 (++!9570 lt!1264743 lt!1264745))))

(assert (=> d!1072122 (= lt!1264755 (lemmaConcatTwoListThenFirstIsPrefix!2036 lt!1264743 lt!1264745))))

(assert (=> d!1072122 (= lt!1264745 (_2!22298 (get!12624 (maxPrefix!2877 thiss!23823 rules!3307 lt!1264520))))))

(assert (=> d!1072122 (= lt!1264743 (list!14248 (charsOf!3768 lt!1264744)))))

(declare-datatypes ((List!38586 0))(
  ( (Nil!38462) (Cons!38462 (h!43882 Token!10874) (t!297329 List!38586)) )
))
(declare-fun head!7766 (List!38586) Token!10874)

(declare-datatypes ((IArray!23507 0))(
  ( (IArray!23508 (innerList!11811 List!38586)) )
))
(declare-datatypes ((Conc!11751 0))(
  ( (Node!11751 (left!30030 Conc!11751) (right!30360 Conc!11751) (csize!23732 Int) (cheight!11962 Int)) (Leaf!18239 (xs!14953 IArray!23507) (csize!23733 Int)) (Empty!11751) )
))
(declare-datatypes ((BalanceConc!23116 0))(
  ( (BalanceConc!23117 (c!630669 Conc!11751)) )
))
(declare-fun list!14251 (BalanceConc!23116) List!38586)

(declare-datatypes ((tuple2!38332 0))(
  ( (tuple2!38333 (_1!22300 BalanceConc!23116) (_2!22300 BalanceConc!23112)) )
))
(declare-fun lex!2536 (LexerInterface!5343 List!38583 BalanceConc!23112) tuple2!38332)

(assert (=> d!1072122 (= lt!1264744 (head!7766 (list!14251 (_1!22300 (lex!2536 thiss!23823 rules!3307 (seqFromList!4303 lt!1264520))))))))

(assert (=> d!1072122 (not (isEmpty!22784 rules!3307))))

(assert (=> d!1072122 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1021 thiss!23823 rules!3307 lt!1264520 suffix!1395) lt!1264747)))

(declare-fun b!3648104 () Bool)

(declare-fun Unit!55399 () Unit!55386)

(assert (=> b!3648104 (= e!2258491 Unit!55399)))

(declare-fun b!3648101 () Bool)

(declare-fun res!1479657 () Bool)

(assert (=> b!3648101 (=> (not res!1479657) (not e!2258492))))

(assert (=> b!3648101 (= res!1479657 (matchR!5082 (regex!5754 (get!12623 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 lt!1264744))))) (list!14248 (charsOf!3768 lt!1264744))))))

(assert (= (and d!1072122 res!1479656) b!3648101))

(assert (= (and b!3648101 res!1479657) b!3648102))

(assert (= (and d!1072122 c!630613) b!3648103))

(assert (= (and d!1072122 (not c!630613)) b!3648104))

(declare-fun m!4152343 () Bool)

(assert (=> b!3648103 m!4152343))

(declare-fun m!4152345 () Bool)

(assert (=> b!3648103 m!4152345))

(declare-fun m!4152347 () Bool)

(assert (=> b!3648103 m!4152347))

(declare-fun m!4152349 () Bool)

(assert (=> b!3648103 m!4152349))

(declare-fun m!4152351 () Bool)

(assert (=> b!3648103 m!4152351))

(assert (=> b!3648103 m!4151785))

(declare-fun m!4152353 () Bool)

(assert (=> b!3648103 m!4152353))

(assert (=> b!3648103 m!4151785))

(declare-fun m!4152355 () Bool)

(assert (=> b!3648103 m!4152355))

(assert (=> b!3648103 m!4152349))

(assert (=> b!3648103 m!4152343))

(declare-fun m!4152357 () Bool)

(assert (=> b!3648102 m!4152357))

(assert (=> b!3648102 m!4152357))

(declare-fun m!4152359 () Bool)

(assert (=> b!3648102 m!4152359))

(declare-fun m!4152361 () Bool)

(assert (=> d!1072122 m!4152361))

(declare-fun m!4152363 () Bool)

(assert (=> d!1072122 m!4152363))

(declare-fun m!4152365 () Bool)

(assert (=> d!1072122 m!4152365))

(declare-fun m!4152367 () Bool)

(assert (=> d!1072122 m!4152367))

(assert (=> d!1072122 m!4152349))

(declare-fun m!4152369 () Bool)

(assert (=> d!1072122 m!4152369))

(declare-fun m!4152371 () Bool)

(assert (=> d!1072122 m!4152371))

(assert (=> d!1072122 m!4151785))

(assert (=> d!1072122 m!4152369))

(declare-fun m!4152373 () Bool)

(assert (=> d!1072122 m!4152373))

(declare-fun m!4152375 () Bool)

(assert (=> d!1072122 m!4152375))

(assert (=> d!1072122 m!4151825))

(assert (=> d!1072122 m!4151785))

(declare-fun m!4152377 () Bool)

(assert (=> d!1072122 m!4152377))

(declare-fun m!4152379 () Bool)

(assert (=> d!1072122 m!4152379))

(assert (=> d!1072122 m!4152349))

(assert (=> d!1072122 m!4152351))

(assert (=> d!1072122 m!4152373))

(assert (=> d!1072122 m!4151825))

(declare-fun m!4152381 () Bool)

(assert (=> d!1072122 m!4152381))

(assert (=> d!1072122 m!4152363))

(assert (=> d!1072122 m!4152369))

(declare-fun m!4152383 () Bool)

(assert (=> d!1072122 m!4152383))

(assert (=> d!1072122 m!4152357))

(assert (=> d!1072122 m!4151717))

(assert (=> d!1072122 m!4151785))

(declare-fun m!4152385 () Bool)

(assert (=> d!1072122 m!4152385))

(assert (=> d!1072122 m!4152367))

(declare-fun m!4152387 () Bool)

(assert (=> d!1072122 m!4152387))

(assert (=> d!1072122 m!4152357))

(declare-fun m!4152389 () Bool)

(assert (=> d!1072122 m!4152389))

(assert (=> b!3648101 m!4152349))

(assert (=> b!3648101 m!4152351))

(assert (=> b!3648101 m!4152357))

(assert (=> b!3648101 m!4152351))

(declare-fun m!4152391 () Bool)

(assert (=> b!3648101 m!4152391))

(assert (=> b!3648101 m!4152357))

(assert (=> b!3648101 m!4152359))

(assert (=> b!3648101 m!4152349))

(assert (=> b!3647684 d!1072122))

(declare-fun d!1072192 () Bool)

(assert (=> d!1072192 (= (list!14248 lt!1264517) (list!14249 (c!630525 lt!1264517)))))

(declare-fun bs!572169 () Bool)

(assert (= bs!572169 d!1072192))

(declare-fun m!4152393 () Bool)

(assert (=> bs!572169 m!4152393))

(assert (=> b!3647684 d!1072192))

(declare-fun b!3648105 () Bool)

(declare-fun e!2258495 () Option!8137)

(declare-fun lt!1264763 () Option!8137)

(declare-fun lt!1264764 () Option!8137)

(assert (=> b!3648105 (= e!2258495 (ite (and ((_ is None!8136) lt!1264763) ((_ is None!8136) lt!1264764)) None!8136 (ite ((_ is None!8136) lt!1264764) lt!1264763 (ite ((_ is None!8136) lt!1264763) lt!1264764 (ite (>= (size!29361 (_1!22298 (v!37988 lt!1264763))) (size!29361 (_1!22298 (v!37988 lt!1264764)))) lt!1264763 lt!1264764)))))))

(declare-fun call!263657 () Option!8137)

(assert (=> b!3648105 (= lt!1264763 call!263657)))

(assert (=> b!3648105 (= lt!1264764 (maxPrefix!2877 thiss!23823 (t!297206 rules!3307) lt!1264508))))

(declare-fun b!3648107 () Bool)

(declare-fun res!1479659 () Bool)

(declare-fun e!2258494 () Bool)

(assert (=> b!3648107 (=> (not res!1479659) (not e!2258494))))

(declare-fun lt!1264761 () Option!8137)

(assert (=> b!3648107 (= res!1479659 (= (++!9570 (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264761)))) (_2!22298 (get!12624 lt!1264761))) lt!1264508))))

(declare-fun b!3648108 () Bool)

(declare-fun res!1479661 () Bool)

(assert (=> b!3648108 (=> (not res!1479661) (not e!2258494))))

(assert (=> b!3648108 (= res!1479661 (= (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264761)))) (originalCharacters!6468 (_1!22298 (get!12624 lt!1264761)))))))

(declare-fun b!3648109 () Bool)

(declare-fun e!2258493 () Bool)

(assert (=> b!3648109 (= e!2258493 e!2258494)))

(declare-fun res!1479660 () Bool)

(assert (=> b!3648109 (=> (not res!1479660) (not e!2258494))))

(assert (=> b!3648109 (= res!1479660 (isDefined!6369 lt!1264761))))

(declare-fun b!3648110 () Bool)

(declare-fun res!1479658 () Bool)

(assert (=> b!3648110 (=> (not res!1479658) (not e!2258494))))

(assert (=> b!3648110 (= res!1479658 (< (size!29362 (_2!22298 (get!12624 lt!1264761))) (size!29362 lt!1264508)))))

(declare-fun b!3648111 () Bool)

(assert (=> b!3648111 (= e!2258495 call!263657)))

(declare-fun b!3648112 () Bool)

(declare-fun res!1479662 () Bool)

(assert (=> b!3648112 (=> (not res!1479662) (not e!2258494))))

(assert (=> b!3648112 (= res!1479662 (= (value!184449 (_1!22298 (get!12624 lt!1264761))) (apply!9256 (transformation!5754 (rule!8548 (_1!22298 (get!12624 lt!1264761)))) (seqFromList!4303 (originalCharacters!6468 (_1!22298 (get!12624 lt!1264761)))))))))

(declare-fun bm!263652 () Bool)

(assert (=> bm!263652 (= call!263657 (maxPrefixOneRule!2015 thiss!23823 (h!43879 rules!3307) lt!1264508))))

(declare-fun b!3648113 () Bool)

(assert (=> b!3648113 (= e!2258494 (contains!7574 rules!3307 (rule!8548 (_1!22298 (get!12624 lt!1264761)))))))

(declare-fun d!1072194 () Bool)

(assert (=> d!1072194 e!2258493))

(declare-fun res!1479664 () Bool)

(assert (=> d!1072194 (=> res!1479664 e!2258493)))

(assert (=> d!1072194 (= res!1479664 (isEmpty!22786 lt!1264761))))

(assert (=> d!1072194 (= lt!1264761 e!2258495)))

(declare-fun c!630614 () Bool)

(assert (=> d!1072194 (= c!630614 (and ((_ is Cons!38459) rules!3307) ((_ is Nil!38459) (t!297206 rules!3307))))))

(declare-fun lt!1264765 () Unit!55386)

(declare-fun lt!1264762 () Unit!55386)

(assert (=> d!1072194 (= lt!1264765 lt!1264762)))

(assert (=> d!1072194 (isPrefix!3117 lt!1264508 lt!1264508)))

(assert (=> d!1072194 (= lt!1264762 (lemmaIsPrefixRefl!1973 lt!1264508 lt!1264508))))

(assert (=> d!1072194 (rulesValidInductive!2038 thiss!23823 rules!3307)))

(assert (=> d!1072194 (= (maxPrefix!2877 thiss!23823 rules!3307 lt!1264508) lt!1264761)))

(declare-fun b!3648106 () Bool)

(declare-fun res!1479663 () Bool)

(assert (=> b!3648106 (=> (not res!1479663) (not e!2258494))))

(assert (=> b!3648106 (= res!1479663 (matchR!5082 (regex!5754 (rule!8548 (_1!22298 (get!12624 lt!1264761)))) (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264761))))))))

(assert (= (and d!1072194 c!630614) b!3648111))

(assert (= (and d!1072194 (not c!630614)) b!3648105))

(assert (= (or b!3648111 b!3648105) bm!263652))

(assert (= (and d!1072194 (not res!1479664)) b!3648109))

(assert (= (and b!3648109 res!1479660) b!3648108))

(assert (= (and b!3648108 res!1479661) b!3648110))

(assert (= (and b!3648110 res!1479658) b!3648107))

(assert (= (and b!3648107 res!1479659) b!3648112))

(assert (= (and b!3648112 res!1479662) b!3648106))

(assert (= (and b!3648106 res!1479663) b!3648113))

(declare-fun m!4152395 () Bool)

(assert (=> b!3648109 m!4152395))

(declare-fun m!4152397 () Bool)

(assert (=> b!3648112 m!4152397))

(declare-fun m!4152399 () Bool)

(assert (=> b!3648112 m!4152399))

(assert (=> b!3648112 m!4152399))

(declare-fun m!4152401 () Bool)

(assert (=> b!3648112 m!4152401))

(assert (=> b!3648110 m!4152397))

(declare-fun m!4152403 () Bool)

(assert (=> b!3648110 m!4152403))

(declare-fun m!4152405 () Bool)

(assert (=> b!3648110 m!4152405))

(assert (=> b!3648108 m!4152397))

(declare-fun m!4152407 () Bool)

(assert (=> b!3648108 m!4152407))

(assert (=> b!3648108 m!4152407))

(declare-fun m!4152409 () Bool)

(assert (=> b!3648108 m!4152409))

(assert (=> b!3648113 m!4152397))

(declare-fun m!4152411 () Bool)

(assert (=> b!3648113 m!4152411))

(assert (=> b!3648107 m!4152397))

(assert (=> b!3648107 m!4152407))

(assert (=> b!3648107 m!4152407))

(assert (=> b!3648107 m!4152409))

(assert (=> b!3648107 m!4152409))

(declare-fun m!4152413 () Bool)

(assert (=> b!3648107 m!4152413))

(declare-fun m!4152415 () Bool)

(assert (=> bm!263652 m!4152415))

(declare-fun m!4152417 () Bool)

(assert (=> b!3648105 m!4152417))

(declare-fun m!4152419 () Bool)

(assert (=> d!1072194 m!4152419))

(declare-fun m!4152421 () Bool)

(assert (=> d!1072194 m!4152421))

(declare-fun m!4152423 () Bool)

(assert (=> d!1072194 m!4152423))

(assert (=> d!1072194 m!4151865))

(assert (=> b!3648106 m!4152397))

(assert (=> b!3648106 m!4152407))

(assert (=> b!3648106 m!4152407))

(assert (=> b!3648106 m!4152409))

(assert (=> b!3648106 m!4152409))

(declare-fun m!4152425 () Bool)

(assert (=> b!3648106 m!4152425))

(assert (=> b!3647684 d!1072194))

(declare-fun d!1072196 () Bool)

(assert (=> d!1072196 (isPrefix!3117 lt!1264520 (++!9570 lt!1264520 suffix!1395))))

(declare-fun lt!1264768 () Unit!55386)

(declare-fun choose!21491 (List!38582 List!38582) Unit!55386)

(assert (=> d!1072196 (= lt!1264768 (choose!21491 lt!1264520 suffix!1395))))

(assert (=> d!1072196 (= (lemmaConcatTwoListThenFirstIsPrefix!2036 lt!1264520 suffix!1395) lt!1264768)))

(declare-fun bs!572170 () Bool)

(assert (= bs!572170 d!1072196))

(assert (=> bs!572170 m!4151785))

(assert (=> bs!572170 m!4151785))

(declare-fun m!4152427 () Bool)

(assert (=> bs!572170 m!4152427))

(declare-fun m!4152429 () Bool)

(assert (=> bs!572170 m!4152429))

(assert (=> b!3647684 d!1072196))

(declare-fun d!1072198 () Bool)

(assert (=> d!1072198 (= (get!12624 lt!1264497) (v!37988 lt!1264497))))

(assert (=> b!3647684 d!1072198))

(declare-fun d!1072200 () Bool)

(declare-fun e!2258503 () Bool)

(assert (=> d!1072200 e!2258503))

(declare-fun res!1479676 () Bool)

(assert (=> d!1072200 (=> res!1479676 e!2258503)))

(declare-fun lt!1264771 () Bool)

(assert (=> d!1072200 (= res!1479676 (not lt!1264771))))

(declare-fun e!2258502 () Bool)

(assert (=> d!1072200 (= lt!1264771 e!2258502)))

(declare-fun res!1479674 () Bool)

(assert (=> d!1072200 (=> res!1479674 e!2258502)))

(assert (=> d!1072200 (= res!1479674 ((_ is Nil!38458) lt!1264520))))

(assert (=> d!1072200 (= (isPrefix!3117 lt!1264520 lt!1264508) lt!1264771)))

(declare-fun b!3648125 () Bool)

(assert (=> b!3648125 (= e!2258503 (>= (size!29362 lt!1264508) (size!29362 lt!1264520)))))

(declare-fun b!3648124 () Bool)

(declare-fun e!2258504 () Bool)

(declare-fun tail!5651 (List!38582) List!38582)

(assert (=> b!3648124 (= e!2258504 (isPrefix!3117 (tail!5651 lt!1264520) (tail!5651 lt!1264508)))))

(declare-fun b!3648122 () Bool)

(assert (=> b!3648122 (= e!2258502 e!2258504)))

(declare-fun res!1479675 () Bool)

(assert (=> b!3648122 (=> (not res!1479675) (not e!2258504))))

(assert (=> b!3648122 (= res!1479675 (not ((_ is Nil!38458) lt!1264508)))))

(declare-fun b!3648123 () Bool)

(declare-fun res!1479673 () Bool)

(assert (=> b!3648123 (=> (not res!1479673) (not e!2258504))))

(assert (=> b!3648123 (= res!1479673 (= (head!7764 lt!1264520) (head!7764 lt!1264508)))))

(assert (= (and d!1072200 (not res!1479674)) b!3648122))

(assert (= (and b!3648122 res!1479675) b!3648123))

(assert (= (and b!3648123 res!1479673) b!3648124))

(assert (= (and d!1072200 (not res!1479676)) b!3648125))

(assert (=> b!3648125 m!4152405))

(assert (=> b!3648125 m!4151845))

(declare-fun m!4152431 () Bool)

(assert (=> b!3648124 m!4152431))

(declare-fun m!4152433 () Bool)

(assert (=> b!3648124 m!4152433))

(assert (=> b!3648124 m!4152431))

(assert (=> b!3648124 m!4152433))

(declare-fun m!4152435 () Bool)

(assert (=> b!3648124 m!4152435))

(declare-fun m!4152437 () Bool)

(assert (=> b!3648123 m!4152437))

(declare-fun m!4152439 () Bool)

(assert (=> b!3648123 m!4152439))

(assert (=> b!3647684 d!1072200))

(declare-fun d!1072202 () Bool)

(declare-fun lt!1264772 () BalanceConc!23112)

(assert (=> d!1072202 (= (list!14248 lt!1264772) (originalCharacters!6468 (_1!22298 lt!1264488)))))

(assert (=> d!1072202 (= lt!1264772 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (value!184449 (_1!22298 lt!1264488))))))

(assert (=> d!1072202 (= (charsOf!3768 (_1!22298 lt!1264488)) lt!1264772)))

(declare-fun b_lambda!108189 () Bool)

(assert (=> (not b_lambda!108189) (not d!1072202)))

(declare-fun tb!210453 () Bool)

(declare-fun t!297280 () Bool)

(assert (=> (and b!3647680 (= (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297280) tb!210453))

(declare-fun b!3648126 () Bool)

(declare-fun e!2258505 () Bool)

(declare-fun tp!1112266 () Bool)

(assert (=> b!3648126 (= e!2258505 (and (inv!51907 (c!630525 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (value!184449 (_1!22298 lt!1264488))))) tp!1112266))))

(declare-fun result!256282 () Bool)

(assert (=> tb!210453 (= result!256282 (and (inv!51908 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (value!184449 (_1!22298 lt!1264488)))) e!2258505))))

(assert (= tb!210453 b!3648126))

(declare-fun m!4152441 () Bool)

(assert (=> b!3648126 m!4152441))

(declare-fun m!4152443 () Bool)

(assert (=> tb!210453 m!4152443))

(assert (=> d!1072202 t!297280))

(declare-fun b_and!269643 () Bool)

(assert (= b_and!269603 (and (=> t!297280 result!256282) b_and!269643)))

(declare-fun t!297282 () Bool)

(declare-fun tb!210455 () Bool)

(assert (=> (and b!3647678 (= (toChars!7905 (transformation!5754 rule!403)) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297282) tb!210455))

(declare-fun result!256284 () Bool)

(assert (= result!256284 result!256282))

(assert (=> d!1072202 t!297282))

(declare-fun b_and!269645 () Bool)

(assert (= b_and!269605 (and (=> t!297282 result!256284) b_and!269645)))

(declare-fun t!297284 () Bool)

(declare-fun tb!210457 () Bool)

(assert (=> (and b!3647674 (= (toChars!7905 (transformation!5754 (rule!8548 token!511))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297284) tb!210457))

(declare-fun result!256286 () Bool)

(assert (= result!256286 result!256282))

(assert (=> d!1072202 t!297284))

(declare-fun b_and!269647 () Bool)

(assert (= b_and!269607 (and (=> t!297284 result!256286) b_and!269647)))

(declare-fun t!297286 () Bool)

(declare-fun tb!210459 () Bool)

(assert (=> (and b!3647677 (= (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297286) tb!210459))

(declare-fun result!256288 () Bool)

(assert (= result!256288 result!256282))

(assert (=> d!1072202 t!297286))

(declare-fun b_and!269649 () Bool)

(assert (= b_and!269609 (and (=> t!297286 result!256288) b_and!269649)))

(declare-fun m!4152445 () Bool)

(assert (=> d!1072202 m!4152445))

(declare-fun m!4152447 () Bool)

(assert (=> d!1072202 m!4152447))

(assert (=> b!3647684 d!1072202))

(declare-fun d!1072204 () Bool)

(declare-fun e!2258508 () Bool)

(assert (=> d!1072204 e!2258508))

(declare-fun res!1479681 () Bool)

(assert (=> d!1072204 (=> (not res!1479681) (not e!2258508))))

(assert (=> d!1072204 (= res!1479681 (isDefined!6368 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 (_1!22298 lt!1264488))))))))

(declare-fun lt!1264775 () Unit!55386)

(declare-fun choose!21492 (LexerInterface!5343 List!38583 List!38582 Token!10874) Unit!55386)

(assert (=> d!1072204 (= lt!1264775 (choose!21492 thiss!23823 rules!3307 lt!1264508 (_1!22298 lt!1264488)))))

(assert (=> d!1072204 (rulesInvariant!4740 thiss!23823 rules!3307)))

(assert (=> d!1072204 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1358 thiss!23823 rules!3307 lt!1264508 (_1!22298 lt!1264488)) lt!1264775)))

(declare-fun b!3648131 () Bool)

(declare-fun res!1479682 () Bool)

(assert (=> b!3648131 (=> (not res!1479682) (not e!2258508))))

(assert (=> b!3648131 (= res!1479682 (matchR!5082 (regex!5754 (get!12623 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))) (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))))))

(declare-fun b!3648132 () Bool)

(assert (=> b!3648132 (= e!2258508 (= (rule!8548 (_1!22298 lt!1264488)) (get!12623 (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))))))

(assert (= (and d!1072204 res!1479681) b!3648131))

(assert (= (and b!3648131 res!1479682) b!3648132))

(assert (=> d!1072204 m!4151765))

(assert (=> d!1072204 m!4151765))

(declare-fun m!4152449 () Bool)

(assert (=> d!1072204 m!4152449))

(declare-fun m!4152451 () Bool)

(assert (=> d!1072204 m!4152451))

(assert (=> d!1072204 m!4151723))

(assert (=> b!3648131 m!4151773))

(assert (=> b!3648131 m!4151795))

(assert (=> b!3648131 m!4151773))

(assert (=> b!3648131 m!4151765))

(assert (=> b!3648131 m!4151795))

(declare-fun m!4152453 () Bool)

(assert (=> b!3648131 m!4152453))

(assert (=> b!3648131 m!4151765))

(declare-fun m!4152455 () Bool)

(assert (=> b!3648131 m!4152455))

(assert (=> b!3648132 m!4151765))

(assert (=> b!3648132 m!4151765))

(assert (=> b!3648132 m!4152455))

(assert (=> b!3647684 d!1072204))

(declare-fun d!1072206 () Bool)

(declare-fun e!2258510 () Bool)

(assert (=> d!1072206 e!2258510))

(declare-fun res!1479686 () Bool)

(assert (=> d!1072206 (=> res!1479686 e!2258510)))

(declare-fun lt!1264776 () Bool)

(assert (=> d!1072206 (= res!1479686 (not lt!1264776))))

(declare-fun e!2258509 () Bool)

(assert (=> d!1072206 (= lt!1264776 e!2258509)))

(declare-fun res!1479684 () Bool)

(assert (=> d!1072206 (=> res!1479684 e!2258509)))

(assert (=> d!1072206 (= res!1479684 ((_ is Nil!38458) lt!1264499))))

(assert (=> d!1072206 (= (isPrefix!3117 lt!1264499 lt!1264508) lt!1264776)))

(declare-fun b!3648136 () Bool)

(assert (=> b!3648136 (= e!2258510 (>= (size!29362 lt!1264508) (size!29362 lt!1264499)))))

(declare-fun b!3648135 () Bool)

(declare-fun e!2258511 () Bool)

(assert (=> b!3648135 (= e!2258511 (isPrefix!3117 (tail!5651 lt!1264499) (tail!5651 lt!1264508)))))

(declare-fun b!3648133 () Bool)

(assert (=> b!3648133 (= e!2258509 e!2258511)))

(declare-fun res!1479685 () Bool)

(assert (=> b!3648133 (=> (not res!1479685) (not e!2258511))))

(assert (=> b!3648133 (= res!1479685 (not ((_ is Nil!38458) lt!1264508)))))

(declare-fun b!3648134 () Bool)

(declare-fun res!1479683 () Bool)

(assert (=> b!3648134 (=> (not res!1479683) (not e!2258511))))

(assert (=> b!3648134 (= res!1479683 (= (head!7764 lt!1264499) (head!7764 lt!1264508)))))

(assert (= (and d!1072206 (not res!1479684)) b!3648133))

(assert (= (and b!3648133 res!1479685) b!3648134))

(assert (= (and b!3648134 res!1479683) b!3648135))

(assert (= (and d!1072206 (not res!1479686)) b!3648136))

(assert (=> b!3648136 m!4152405))

(assert (=> b!3648136 m!4151697))

(declare-fun m!4152457 () Bool)

(assert (=> b!3648135 m!4152457))

(assert (=> b!3648135 m!4152433))

(assert (=> b!3648135 m!4152457))

(assert (=> b!3648135 m!4152433))

(declare-fun m!4152459 () Bool)

(assert (=> b!3648135 m!4152459))

(assert (=> b!3648134 m!4151741))

(assert (=> b!3648134 m!4152439))

(assert (=> b!3647684 d!1072206))

(declare-fun b!3648146 () Bool)

(declare-fun e!2258516 () List!38582)

(assert (=> b!3648146 (= e!2258516 (Cons!38458 (h!43878 lt!1264499) (++!9570 (t!297205 lt!1264499) (_2!22298 lt!1264488))))))

(declare-fun b!3648145 () Bool)

(assert (=> b!3648145 (= e!2258516 (_2!22298 lt!1264488))))

(declare-fun e!2258517 () Bool)

(declare-fun b!3648148 () Bool)

(declare-fun lt!1264779 () List!38582)

(assert (=> b!3648148 (= e!2258517 (or (not (= (_2!22298 lt!1264488) Nil!38458)) (= lt!1264779 lt!1264499)))))

(declare-fun d!1072208 () Bool)

(assert (=> d!1072208 e!2258517))

(declare-fun res!1479692 () Bool)

(assert (=> d!1072208 (=> (not res!1479692) (not e!2258517))))

(assert (=> d!1072208 (= res!1479692 (= (content!5545 lt!1264779) ((_ map or) (content!5545 lt!1264499) (content!5545 (_2!22298 lt!1264488)))))))

(assert (=> d!1072208 (= lt!1264779 e!2258516)))

(declare-fun c!630617 () Bool)

(assert (=> d!1072208 (= c!630617 ((_ is Nil!38458) lt!1264499))))

(assert (=> d!1072208 (= (++!9570 lt!1264499 (_2!22298 lt!1264488)) lt!1264779)))

(declare-fun b!3648147 () Bool)

(declare-fun res!1479691 () Bool)

(assert (=> b!3648147 (=> (not res!1479691) (not e!2258517))))

(assert (=> b!3648147 (= res!1479691 (= (size!29362 lt!1264779) (+ (size!29362 lt!1264499) (size!29362 (_2!22298 lt!1264488)))))))

(assert (= (and d!1072208 c!630617) b!3648145))

(assert (= (and d!1072208 (not c!630617)) b!3648146))

(assert (= (and d!1072208 res!1479692) b!3648147))

(assert (= (and b!3648147 res!1479691) b!3648148))

(declare-fun m!4152461 () Bool)

(assert (=> b!3648146 m!4152461))

(declare-fun m!4152463 () Bool)

(assert (=> d!1072208 m!4152463))

(assert (=> d!1072208 m!4152075))

(declare-fun m!4152465 () Bool)

(assert (=> d!1072208 m!4152465))

(declare-fun m!4152467 () Bool)

(assert (=> b!3648147 m!4152467))

(assert (=> b!3648147 m!4151697))

(declare-fun m!4152469 () Bool)

(assert (=> b!3648147 m!4152469))

(assert (=> b!3647684 d!1072208))

(declare-fun d!1072210 () Bool)

(declare-fun e!2258519 () Bool)

(assert (=> d!1072210 e!2258519))

(declare-fun res!1479696 () Bool)

(assert (=> d!1072210 (=> res!1479696 e!2258519)))

(declare-fun lt!1264780 () Bool)

(assert (=> d!1072210 (= res!1479696 (not lt!1264780))))

(declare-fun e!2258518 () Bool)

(assert (=> d!1072210 (= lt!1264780 e!2258518)))

(declare-fun res!1479694 () Bool)

(assert (=> d!1072210 (=> res!1479694 e!2258518)))

(assert (=> d!1072210 (= res!1479694 ((_ is Nil!38458) lt!1264499))))

(assert (=> d!1072210 (= (isPrefix!3117 lt!1264499 (++!9570 lt!1264499 (_2!22298 lt!1264488))) lt!1264780)))

(declare-fun b!3648152 () Bool)

(assert (=> b!3648152 (= e!2258519 (>= (size!29362 (++!9570 lt!1264499 (_2!22298 lt!1264488))) (size!29362 lt!1264499)))))

(declare-fun b!3648151 () Bool)

(declare-fun e!2258520 () Bool)

(assert (=> b!3648151 (= e!2258520 (isPrefix!3117 (tail!5651 lt!1264499) (tail!5651 (++!9570 lt!1264499 (_2!22298 lt!1264488)))))))

(declare-fun b!3648149 () Bool)

(assert (=> b!3648149 (= e!2258518 e!2258520)))

(declare-fun res!1479695 () Bool)

(assert (=> b!3648149 (=> (not res!1479695) (not e!2258520))))

(assert (=> b!3648149 (= res!1479695 (not ((_ is Nil!38458) (++!9570 lt!1264499 (_2!22298 lt!1264488)))))))

(declare-fun b!3648150 () Bool)

(declare-fun res!1479693 () Bool)

(assert (=> b!3648150 (=> (not res!1479693) (not e!2258520))))

(assert (=> b!3648150 (= res!1479693 (= (head!7764 lt!1264499) (head!7764 (++!9570 lt!1264499 (_2!22298 lt!1264488)))))))

(assert (= (and d!1072210 (not res!1479694)) b!3648149))

(assert (= (and b!3648149 res!1479695) b!3648150))

(assert (= (and b!3648150 res!1479693) b!3648151))

(assert (= (and d!1072210 (not res!1479696)) b!3648152))

(assert (=> b!3648152 m!4151761))

(declare-fun m!4152471 () Bool)

(assert (=> b!3648152 m!4152471))

(assert (=> b!3648152 m!4151697))

(assert (=> b!3648151 m!4152457))

(assert (=> b!3648151 m!4151761))

(declare-fun m!4152473 () Bool)

(assert (=> b!3648151 m!4152473))

(assert (=> b!3648151 m!4152457))

(assert (=> b!3648151 m!4152473))

(declare-fun m!4152475 () Bool)

(assert (=> b!3648151 m!4152475))

(assert (=> b!3648150 m!4151741))

(assert (=> b!3648150 m!4151761))

(declare-fun m!4152477 () Bool)

(assert (=> b!3648150 m!4152477))

(assert (=> b!3647684 d!1072210))

(declare-fun b!3648165 () Bool)

(declare-fun e!2258529 () Option!8136)

(declare-fun e!2258532 () Option!8136)

(assert (=> b!3648165 (= e!2258529 e!2258532)))

(declare-fun c!630622 () Bool)

(assert (=> b!3648165 (= c!630622 (and ((_ is Cons!38459) rules!3307) (not (= (tag!6514 (h!43879 rules!3307)) (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))))))

(declare-fun b!3648166 () Bool)

(declare-fun lt!1264789 () Unit!55386)

(declare-fun lt!1264787 () Unit!55386)

(assert (=> b!3648166 (= lt!1264789 lt!1264787)))

(assert (=> b!3648166 (rulesInvariant!4740 thiss!23823 (t!297206 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!583 (LexerInterface!5343 Rule!11308 List!38583) Unit!55386)

(assert (=> b!3648166 (= lt!1264787 (lemmaInvariantOnRulesThenOnTail!583 thiss!23823 (h!43879 rules!3307) (t!297206 rules!3307)))))

(assert (=> b!3648166 (= e!2258532 (getRuleFromTag!1358 thiss!23823 (t!297206 rules!3307) (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3648167 () Bool)

(declare-fun e!2258530 () Bool)

(declare-fun lt!1264788 () Option!8136)

(assert (=> b!3648167 (= e!2258530 (= (tag!6514 (get!12623 lt!1264788)) (tag!6514 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun d!1072212 () Bool)

(declare-fun e!2258531 () Bool)

(assert (=> d!1072212 e!2258531))

(declare-fun res!1479702 () Bool)

(assert (=> d!1072212 (=> res!1479702 e!2258531)))

(declare-fun isEmpty!22789 (Option!8136) Bool)

(assert (=> d!1072212 (= res!1479702 (isEmpty!22789 lt!1264788))))

(assert (=> d!1072212 (= lt!1264788 e!2258529)))

(declare-fun c!630623 () Bool)

(assert (=> d!1072212 (= c!630623 (and ((_ is Cons!38459) rules!3307) (= (tag!6514 (h!43879 rules!3307)) (tag!6514 (rule!8548 (_1!22298 lt!1264488))))))))

(assert (=> d!1072212 (rulesInvariant!4740 thiss!23823 rules!3307)))

(assert (=> d!1072212 (= (getRuleFromTag!1358 thiss!23823 rules!3307 (tag!6514 (rule!8548 (_1!22298 lt!1264488)))) lt!1264788)))

(declare-fun b!3648168 () Bool)

(assert (=> b!3648168 (= e!2258529 (Some!8135 (h!43879 rules!3307)))))

(declare-fun b!3648169 () Bool)

(assert (=> b!3648169 (= e!2258532 None!8135)))

(declare-fun b!3648170 () Bool)

(assert (=> b!3648170 (= e!2258531 e!2258530)))

(declare-fun res!1479701 () Bool)

(assert (=> b!3648170 (=> (not res!1479701) (not e!2258530))))

(assert (=> b!3648170 (= res!1479701 (contains!7574 rules!3307 (get!12623 lt!1264788)))))

(assert (= (and d!1072212 c!630623) b!3648168))

(assert (= (and d!1072212 (not c!630623)) b!3648165))

(assert (= (and b!3648165 c!630622) b!3648166))

(assert (= (and b!3648165 (not c!630622)) b!3648169))

(assert (= (and d!1072212 (not res!1479702)) b!3648170))

(assert (= (and b!3648170 res!1479701) b!3648167))

(declare-fun m!4152479 () Bool)

(assert (=> b!3648166 m!4152479))

(declare-fun m!4152481 () Bool)

(assert (=> b!3648166 m!4152481))

(declare-fun m!4152483 () Bool)

(assert (=> b!3648166 m!4152483))

(declare-fun m!4152485 () Bool)

(assert (=> b!3648167 m!4152485))

(declare-fun m!4152487 () Bool)

(assert (=> d!1072212 m!4152487))

(assert (=> d!1072212 m!4151723))

(assert (=> b!3648170 m!4152485))

(assert (=> b!3648170 m!4152485))

(declare-fun m!4152489 () Bool)

(assert (=> b!3648170 m!4152489))

(assert (=> b!3647684 d!1072212))

(declare-fun d!1072214 () Bool)

(assert (=> d!1072214 (= (isDefined!6368 lt!1264502) (not (isEmpty!22789 lt!1264502)))))

(declare-fun bs!572171 () Bool)

(assert (= bs!572171 d!1072214))

(declare-fun m!4152491 () Bool)

(assert (=> bs!572171 m!4152491))

(assert (=> b!3647684 d!1072214))

(declare-fun b!3648172 () Bool)

(declare-fun e!2258533 () List!38582)

(assert (=> b!3648172 (= e!2258533 (Cons!38458 (h!43878 lt!1264520) (++!9570 (t!297205 lt!1264520) suffix!1395)))))

(declare-fun b!3648171 () Bool)

(assert (=> b!3648171 (= e!2258533 suffix!1395)))

(declare-fun lt!1264790 () List!38582)

(declare-fun b!3648174 () Bool)

(declare-fun e!2258534 () Bool)

(assert (=> b!3648174 (= e!2258534 (or (not (= suffix!1395 Nil!38458)) (= lt!1264790 lt!1264520)))))

(declare-fun d!1072216 () Bool)

(assert (=> d!1072216 e!2258534))

(declare-fun res!1479704 () Bool)

(assert (=> d!1072216 (=> (not res!1479704) (not e!2258534))))

(assert (=> d!1072216 (= res!1479704 (= (content!5545 lt!1264790) ((_ map or) (content!5545 lt!1264520) (content!5545 suffix!1395))))))

(assert (=> d!1072216 (= lt!1264790 e!2258533)))

(declare-fun c!630624 () Bool)

(assert (=> d!1072216 (= c!630624 ((_ is Nil!38458) lt!1264520))))

(assert (=> d!1072216 (= (++!9570 lt!1264520 suffix!1395) lt!1264790)))

(declare-fun b!3648173 () Bool)

(declare-fun res!1479703 () Bool)

(assert (=> b!3648173 (=> (not res!1479703) (not e!2258534))))

(assert (=> b!3648173 (= res!1479703 (= (size!29362 lt!1264790) (+ (size!29362 lt!1264520) (size!29362 suffix!1395))))))

(assert (= (and d!1072216 c!630624) b!3648171))

(assert (= (and d!1072216 (not c!630624)) b!3648172))

(assert (= (and d!1072216 res!1479704) b!3648173))

(assert (= (and b!3648173 res!1479703) b!3648174))

(declare-fun m!4152493 () Bool)

(assert (=> b!3648172 m!4152493))

(declare-fun m!4152495 () Bool)

(assert (=> d!1072216 m!4152495))

(declare-fun m!4152497 () Bool)

(assert (=> d!1072216 m!4152497))

(declare-fun m!4152499 () Bool)

(assert (=> d!1072216 m!4152499))

(declare-fun m!4152501 () Bool)

(assert (=> b!3648173 m!4152501))

(assert (=> b!3648173 m!4151845))

(declare-fun m!4152503 () Bool)

(assert (=> b!3648173 m!4152503))

(assert (=> b!3647684 d!1072216))

(declare-fun d!1072218 () Bool)

(assert (=> d!1072218 (isPrefix!3117 lt!1264499 (++!9570 lt!1264499 (_2!22298 lt!1264488)))))

(declare-fun lt!1264791 () Unit!55386)

(assert (=> d!1072218 (= lt!1264791 (choose!21491 lt!1264499 (_2!22298 lt!1264488)))))

(assert (=> d!1072218 (= (lemmaConcatTwoListThenFirstIsPrefix!2036 lt!1264499 (_2!22298 lt!1264488)) lt!1264791)))

(declare-fun bs!572172 () Bool)

(assert (= bs!572172 d!1072218))

(assert (=> bs!572172 m!4151761))

(assert (=> bs!572172 m!4151761))

(assert (=> bs!572172 m!4151763))

(declare-fun m!4152505 () Bool)

(assert (=> bs!572172 m!4152505))

(assert (=> b!3647684 d!1072218))

(declare-fun d!1072220 () Bool)

(assert (=> d!1072220 (= (isEmpty!22785 (_2!22298 lt!1264523)) ((_ is Nil!38458) (_2!22298 lt!1264523)))))

(assert (=> b!3647685 d!1072220))

(declare-fun d!1072222 () Bool)

(declare-fun lt!1264792 () Bool)

(assert (=> d!1072222 (= lt!1264792 (select (content!5547 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2258536 () Bool)

(assert (=> d!1072222 (= lt!1264792 e!2258536)))

(declare-fun res!1479706 () Bool)

(assert (=> d!1072222 (=> (not res!1479706) (not e!2258536))))

(assert (=> d!1072222 (= res!1479706 ((_ is Cons!38459) rules!3307))))

(assert (=> d!1072222 (= (contains!7574 rules!3307 anOtherTypeRule!33) lt!1264792)))

(declare-fun b!3648175 () Bool)

(declare-fun e!2258535 () Bool)

(assert (=> b!3648175 (= e!2258536 e!2258535)))

(declare-fun res!1479705 () Bool)

(assert (=> b!3648175 (=> res!1479705 e!2258535)))

(assert (=> b!3648175 (= res!1479705 (= (h!43879 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3648176 () Bool)

(assert (=> b!3648176 (= e!2258535 (contains!7574 (t!297206 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1072222 res!1479706) b!3648175))

(assert (= (and b!3648175 (not res!1479705)) b!3648176))

(assert (=> d!1072222 m!4152085))

(declare-fun m!4152507 () Bool)

(assert (=> d!1072222 m!4152507))

(declare-fun m!4152509 () Bool)

(assert (=> b!3648176 m!4152509))

(assert (=> b!3647660 d!1072222))

(declare-fun b!3648232 () Bool)

(declare-fun res!1479751 () Bool)

(declare-fun e!2258564 () Bool)

(assert (=> b!3648232 (=> res!1479751 e!2258564)))

(assert (=> b!3648232 (= res!1479751 (not (isEmpty!22785 (tail!5651 lt!1264499))))))

(declare-fun b!3648233 () Bool)

(declare-fun res!1479750 () Bool)

(declare-fun e!2258568 () Bool)

(assert (=> b!3648233 (=> res!1479750 e!2258568)))

(declare-fun e!2258563 () Bool)

(assert (=> b!3648233 (= res!1479750 e!2258563)))

(declare-fun res!1479746 () Bool)

(assert (=> b!3648233 (=> (not res!1479746) (not e!2258563))))

(declare-fun lt!1264810 () Bool)

(assert (=> b!3648233 (= res!1479746 lt!1264810)))

(declare-fun b!3648234 () Bool)

(declare-fun res!1479744 () Bool)

(assert (=> b!3648234 (=> (not res!1479744) (not e!2258563))))

(assert (=> b!3648234 (= res!1479744 (isEmpty!22785 (tail!5651 lt!1264499)))))

(declare-fun b!3648235 () Bool)

(declare-fun e!2258566 () Bool)

(declare-fun e!2258565 () Bool)

(assert (=> b!3648235 (= e!2258566 e!2258565)))

(declare-fun c!630635 () Bool)

(assert (=> b!3648235 (= c!630635 ((_ is EmptyLang!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3648236 () Bool)

(declare-fun e!2258567 () Bool)

(assert (=> b!3648236 (= e!2258568 e!2258567)))

(declare-fun res!1479748 () Bool)

(assert (=> b!3648236 (=> (not res!1479748) (not e!2258567))))

(assert (=> b!3648236 (= res!1479748 (not lt!1264810))))

(declare-fun b!3648238 () Bool)

(declare-fun res!1479745 () Bool)

(assert (=> b!3648238 (=> res!1479745 e!2258568)))

(assert (=> b!3648238 (= res!1479745 (not ((_ is ElementMatch!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))))

(assert (=> b!3648238 (= e!2258565 e!2258568)))

(declare-fun bm!263655 () Bool)

(declare-fun call!263660 () Bool)

(assert (=> bm!263655 (= call!263660 (isEmpty!22785 lt!1264499))))

(declare-fun b!3648239 () Bool)

(declare-fun res!1479747 () Bool)

(assert (=> b!3648239 (=> (not res!1479747) (not e!2258563))))

(assert (=> b!3648239 (= res!1479747 (not call!263660))))

(declare-fun b!3648240 () Bool)

(assert (=> b!3648240 (= e!2258566 (= lt!1264810 call!263660))))

(declare-fun b!3648241 () Bool)

(declare-fun e!2258569 () Bool)

(declare-fun derivativeStep!3202 (Regex!10513 C!21212) Regex!10513)

(assert (=> b!3648241 (= e!2258569 (matchR!5082 (derivativeStep!3202 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) (head!7764 lt!1264499)) (tail!5651 lt!1264499)))))

(declare-fun b!3648242 () Bool)

(declare-fun nullable!3653 (Regex!10513) Bool)

(assert (=> b!3648242 (= e!2258569 (nullable!3653 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(declare-fun b!3648243 () Bool)

(assert (=> b!3648243 (= e!2258567 e!2258564)))

(declare-fun res!1479749 () Bool)

(assert (=> b!3648243 (=> res!1479749 e!2258564)))

(assert (=> b!3648243 (= res!1479749 call!263660)))

(declare-fun d!1072224 () Bool)

(assert (=> d!1072224 e!2258566))

(declare-fun c!630634 () Bool)

(assert (=> d!1072224 (= c!630634 ((_ is EmptyExpr!10513) (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))

(assert (=> d!1072224 (= lt!1264810 e!2258569)))

(declare-fun c!630636 () Bool)

(assert (=> d!1072224 (= c!630636 (isEmpty!22785 lt!1264499))))

(assert (=> d!1072224 (validRegex!4815 (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))

(assert (=> d!1072224 (= (matchR!5082 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499) lt!1264810)))

(declare-fun b!3648237 () Bool)

(assert (=> b!3648237 (= e!2258564 (not (= (head!7764 lt!1264499) (c!630524 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))))))))

(declare-fun b!3648244 () Bool)

(assert (=> b!3648244 (= e!2258565 (not lt!1264810))))

(declare-fun b!3648245 () Bool)

(assert (=> b!3648245 (= e!2258563 (= (head!7764 lt!1264499) (c!630524 (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))))

(assert (= (and d!1072224 c!630636) b!3648242))

(assert (= (and d!1072224 (not c!630636)) b!3648241))

(assert (= (and d!1072224 c!630634) b!3648240))

(assert (= (and d!1072224 (not c!630634)) b!3648235))

(assert (= (and b!3648235 c!630635) b!3648244))

(assert (= (and b!3648235 (not c!630635)) b!3648238))

(assert (= (and b!3648238 (not res!1479745)) b!3648233))

(assert (= (and b!3648233 res!1479746) b!3648239))

(assert (= (and b!3648239 res!1479747) b!3648234))

(assert (= (and b!3648234 res!1479744) b!3648245))

(assert (= (and b!3648233 (not res!1479750)) b!3648236))

(assert (= (and b!3648236 res!1479748) b!3648243))

(assert (= (and b!3648243 (not res!1479749)) b!3648232))

(assert (= (and b!3648232 (not res!1479751)) b!3648237))

(assert (= (or b!3648240 b!3648243 b!3648239) bm!263655))

(assert (=> b!3648232 m!4152457))

(assert (=> b!3648232 m!4152457))

(declare-fun m!4152533 () Bool)

(assert (=> b!3648232 m!4152533))

(assert (=> b!3648234 m!4152457))

(assert (=> b!3648234 m!4152457))

(assert (=> b!3648234 m!4152533))

(declare-fun m!4152537 () Bool)

(assert (=> bm!263655 m!4152537))

(assert (=> b!3648241 m!4151741))

(assert (=> b!3648241 m!4151741))

(declare-fun m!4152539 () Bool)

(assert (=> b!3648241 m!4152539))

(assert (=> b!3648241 m!4152457))

(assert (=> b!3648241 m!4152539))

(assert (=> b!3648241 m!4152457))

(declare-fun m!4152541 () Bool)

(assert (=> b!3648241 m!4152541))

(assert (=> b!3648245 m!4151741))

(assert (=> d!1072224 m!4152537))

(declare-fun m!4152545 () Bool)

(assert (=> d!1072224 m!4152545))

(assert (=> b!3648237 m!4151741))

(declare-fun m!4152547 () Bool)

(assert (=> b!3648242 m!4152547))

(assert (=> b!3647681 d!1072224))

(declare-fun d!1072226 () Bool)

(declare-fun res!1479756 () Bool)

(declare-fun e!2258573 () Bool)

(assert (=> d!1072226 (=> (not res!1479756) (not e!2258573))))

(assert (=> d!1072226 (= res!1479756 (not (isEmpty!22785 (originalCharacters!6468 token!511))))))

(assert (=> d!1072226 (= (inv!51904 token!511) e!2258573)))

(declare-fun b!3648254 () Bool)

(declare-fun res!1479757 () Bool)

(assert (=> b!3648254 (=> (not res!1479757) (not e!2258573))))

(assert (=> b!3648254 (= res!1479757 (= (originalCharacters!6468 token!511) (list!14248 (dynLambda!16764 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (value!184449 token!511)))))))

(declare-fun b!3648255 () Bool)

(assert (=> b!3648255 (= e!2258573 (= (size!29361 token!511) (size!29362 (originalCharacters!6468 token!511))))))

(assert (= (and d!1072226 res!1479756) b!3648254))

(assert (= (and b!3648254 res!1479757) b!3648255))

(declare-fun b_lambda!108191 () Bool)

(assert (=> (not b_lambda!108191) (not b!3648254)))

(assert (=> b!3648254 t!297208))

(declare-fun b_and!269651 () Bool)

(assert (= b_and!269643 (and (=> t!297208 result!256202) b_and!269651)))

(assert (=> b!3648254 t!297210))

(declare-fun b_and!269653 () Bool)

(assert (= b_and!269645 (and (=> t!297210 result!256206) b_and!269653)))

(assert (=> b!3648254 t!297212))

(declare-fun b_and!269655 () Bool)

(assert (= b_and!269647 (and (=> t!297212 result!256208) b_and!269655)))

(assert (=> b!3648254 t!297214))

(declare-fun b_and!269657 () Bool)

(assert (= b_and!269649 (and (=> t!297214 result!256210) b_and!269657)))

(declare-fun m!4152567 () Bool)

(assert (=> d!1072226 m!4152567))

(assert (=> b!3648254 m!4151877))

(assert (=> b!3648254 m!4151877))

(declare-fun m!4152569 () Bool)

(assert (=> b!3648254 m!4152569))

(declare-fun m!4152571 () Bool)

(assert (=> b!3648255 m!4152571))

(assert (=> start!340970 d!1072226))

(declare-fun d!1072230 () Bool)

(declare-fun lt!1264813 () Bool)

(assert (=> d!1072230 (= lt!1264813 (select (content!5547 rules!3307) rule!403))))

(declare-fun e!2258576 () Bool)

(assert (=> d!1072230 (= lt!1264813 e!2258576)))

(declare-fun res!1479759 () Bool)

(assert (=> d!1072230 (=> (not res!1479759) (not e!2258576))))

(assert (=> d!1072230 (= res!1479759 ((_ is Cons!38459) rules!3307))))

(assert (=> d!1072230 (= (contains!7574 rules!3307 rule!403) lt!1264813)))

(declare-fun b!3648256 () Bool)

(declare-fun e!2258575 () Bool)

(assert (=> b!3648256 (= e!2258576 e!2258575)))

(declare-fun res!1479758 () Bool)

(assert (=> b!3648256 (=> res!1479758 e!2258575)))

(assert (=> b!3648256 (= res!1479758 (= (h!43879 rules!3307) rule!403))))

(declare-fun b!3648257 () Bool)

(assert (=> b!3648257 (= e!2258575 (contains!7574 (t!297206 rules!3307) rule!403))))

(assert (= (and d!1072230 res!1479759) b!3648256))

(assert (= (and b!3648256 (not res!1479758)) b!3648257))

(assert (=> d!1072230 m!4152085))

(declare-fun m!4152573 () Bool)

(assert (=> d!1072230 m!4152573))

(declare-fun m!4152575 () Bool)

(assert (=> b!3648257 m!4152575))

(assert (=> b!3647661 d!1072230))

(declare-fun d!1072232 () Bool)

(assert (=> d!1072232 (= (inv!51900 (tag!6514 (rule!8548 token!511))) (= (mod (str.len (value!184448 (tag!6514 (rule!8548 token!511)))) 2) 0))))

(assert (=> b!3647662 d!1072232))

(declare-fun d!1072234 () Bool)

(declare-fun res!1479760 () Bool)

(declare-fun e!2258578 () Bool)

(assert (=> d!1072234 (=> (not res!1479760) (not e!2258578))))

(assert (=> d!1072234 (= res!1479760 (semiInverseModEq!2453 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (toValue!8046 (transformation!5754 (rule!8548 token!511)))))))

(assert (=> d!1072234 (= (inv!51903 (transformation!5754 (rule!8548 token!511))) e!2258578)))

(declare-fun b!3648260 () Bool)

(assert (=> b!3648260 (= e!2258578 (equivClasses!2352 (toChars!7905 (transformation!5754 (rule!8548 token!511))) (toValue!8046 (transformation!5754 (rule!8548 token!511)))))))

(assert (= (and d!1072234 res!1479760) b!3648260))

(declare-fun m!4152579 () Bool)

(assert (=> d!1072234 m!4152579))

(declare-fun m!4152581 () Bool)

(assert (=> b!3648260 m!4152581))

(assert (=> b!3647662 d!1072234))

(declare-fun d!1072236 () Bool)

(assert (=> d!1072236 (not (matchR!5082 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499))))

(declare-fun lt!1264815 () Unit!55386)

(assert (=> d!1072236 (= lt!1264815 (choose!21486 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499 lt!1264505))))

(assert (=> d!1072236 (validRegex!4815 (regex!5754 (rule!8548 (_1!22298 lt!1264488))))))

(assert (=> d!1072236 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!702 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264499 lt!1264505) lt!1264815)))

(declare-fun bs!572173 () Bool)

(assert (= bs!572173 d!1072236))

(assert (=> bs!572173 m!4151821))

(declare-fun m!4152585 () Bool)

(assert (=> bs!572173 m!4152585))

(assert (=> bs!572173 m!4152545))

(assert (=> bm!263606 d!1072236))

(declare-fun d!1072240 () Bool)

(assert (=> d!1072240 (= (maxPrefixOneRule!2015 thiss!23823 (rule!8548 (_1!22298 lt!1264488)) lt!1264508) (Some!8136 (tuple2!38329 (Token!10875 (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) (seqFromList!4303 lt!1264499)) (rule!8548 (_1!22298 lt!1264488)) (size!29362 lt!1264499) lt!1264499) (_2!22298 lt!1264488))))))

(declare-fun lt!1264826 () Unit!55386)

(declare-fun choose!21494 (LexerInterface!5343 List!38583 List!38582 List!38582 List!38582 Rule!11308) Unit!55386)

(assert (=> d!1072240 (= lt!1264826 (choose!21494 thiss!23823 rules!3307 lt!1264499 lt!1264508 (_2!22298 lt!1264488) (rule!8548 (_1!22298 lt!1264488))))))

(assert (=> d!1072240 (not (isEmpty!22784 rules!3307))))

(assert (=> d!1072240 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1071 thiss!23823 rules!3307 lt!1264499 lt!1264508 (_2!22298 lt!1264488) (rule!8548 (_1!22298 lt!1264488))) lt!1264826)))

(declare-fun bs!572175 () Bool)

(assert (= bs!572175 d!1072240))

(assert (=> bs!572175 m!4151697))

(assert (=> bs!572175 m!4151693))

(assert (=> bs!572175 m!4151695))

(assert (=> bs!572175 m!4151717))

(assert (=> bs!572175 m!4151693))

(declare-fun m!4152615 () Bool)

(assert (=> bs!572175 m!4152615))

(assert (=> bs!572175 m!4151701))

(assert (=> b!3647659 d!1072240))

(declare-fun d!1072262 () Bool)

(declare-fun e!2258633 () Bool)

(assert (=> d!1072262 e!2258633))

(declare-fun res!1479801 () Bool)

(assert (=> d!1072262 (=> res!1479801 e!2258633)))

(declare-fun lt!1264841 () Option!8137)

(assert (=> d!1072262 (= res!1479801 (isEmpty!22786 lt!1264841))))

(declare-fun e!2258632 () Option!8137)

(assert (=> d!1072262 (= lt!1264841 e!2258632)))

(declare-fun c!630646 () Bool)

(declare-datatypes ((tuple2!38334 0))(
  ( (tuple2!38335 (_1!22301 List!38582) (_2!22301 List!38582)) )
))
(declare-fun lt!1264844 () tuple2!38334)

(assert (=> d!1072262 (= c!630646 (isEmpty!22785 (_1!22301 lt!1264844)))))

(declare-fun findLongestMatch!963 (Regex!10513 List!38582) tuple2!38334)

(assert (=> d!1072262 (= lt!1264844 (findLongestMatch!963 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264508))))

(assert (=> d!1072262 (ruleValid!2018 thiss!23823 (rule!8548 (_1!22298 lt!1264488)))))

(assert (=> d!1072262 (= (maxPrefixOneRule!2015 thiss!23823 (rule!8548 (_1!22298 lt!1264488)) lt!1264508) lt!1264841)))

(declare-fun b!3648348 () Bool)

(declare-fun e!2258630 () Bool)

(assert (=> b!3648348 (= e!2258633 e!2258630)))

(declare-fun res!1479798 () Bool)

(assert (=> b!3648348 (=> (not res!1479798) (not e!2258630))))

(assert (=> b!3648348 (= res!1479798 (matchR!5082 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264841))))))))

(declare-fun b!3648349 () Bool)

(declare-fun res!1479799 () Bool)

(assert (=> b!3648349 (=> (not res!1479799) (not e!2258630))))

(assert (=> b!3648349 (= res!1479799 (< (size!29362 (_2!22298 (get!12624 lt!1264841))) (size!29362 lt!1264508)))))

(declare-fun b!3648350 () Bool)

(assert (=> b!3648350 (= e!2258632 None!8136)))

(declare-fun b!3648351 () Bool)

(assert (=> b!3648351 (= e!2258630 (= (size!29361 (_1!22298 (get!12624 lt!1264841))) (size!29362 (originalCharacters!6468 (_1!22298 (get!12624 lt!1264841))))))))

(declare-fun b!3648352 () Bool)

(assert (=> b!3648352 (= e!2258632 (Some!8136 (tuple2!38329 (Token!10875 (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) (seqFromList!4303 (_1!22301 lt!1264844))) (rule!8548 (_1!22298 lt!1264488)) (size!29363 (seqFromList!4303 (_1!22301 lt!1264844))) (_1!22301 lt!1264844)) (_2!22301 lt!1264844))))))

(declare-fun lt!1264843 () Unit!55386)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1021 (Regex!10513 List!38582) Unit!55386)

(assert (=> b!3648352 (= lt!1264843 (longestMatchIsAcceptedByMatchOrIsEmpty!1021 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) lt!1264508))))

(declare-fun res!1479796 () Bool)

(declare-fun findLongestMatchInner!1048 (Regex!10513 List!38582 Int List!38582 List!38582 Int) tuple2!38334)

(assert (=> b!3648352 (= res!1479796 (isEmpty!22785 (_1!22301 (findLongestMatchInner!1048 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) Nil!38458 (size!29362 Nil!38458) lt!1264508 lt!1264508 (size!29362 lt!1264508)))))))

(declare-fun e!2258631 () Bool)

(assert (=> b!3648352 (=> res!1479796 e!2258631)))

(assert (=> b!3648352 e!2258631))

(declare-fun lt!1264840 () Unit!55386)

(assert (=> b!3648352 (= lt!1264840 lt!1264843)))

(declare-fun lt!1264842 () Unit!55386)

(assert (=> b!3648352 (= lt!1264842 (lemmaSemiInverse!1503 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) (seqFromList!4303 (_1!22301 lt!1264844))))))

(declare-fun b!3648353 () Bool)

(declare-fun res!1479795 () Bool)

(assert (=> b!3648353 (=> (not res!1479795) (not e!2258630))))

(assert (=> b!3648353 (= res!1479795 (= (++!9570 (list!14248 (charsOf!3768 (_1!22298 (get!12624 lt!1264841)))) (_2!22298 (get!12624 lt!1264841))) lt!1264508))))

(declare-fun b!3648354 () Bool)

(assert (=> b!3648354 (= e!2258631 (matchR!5082 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) (_1!22301 (findLongestMatchInner!1048 (regex!5754 (rule!8548 (_1!22298 lt!1264488))) Nil!38458 (size!29362 Nil!38458) lt!1264508 lt!1264508 (size!29362 lt!1264508)))))))

(declare-fun b!3648355 () Bool)

(declare-fun res!1479797 () Bool)

(assert (=> b!3648355 (=> (not res!1479797) (not e!2258630))))

(assert (=> b!3648355 (= res!1479797 (= (value!184449 (_1!22298 (get!12624 lt!1264841))) (apply!9256 (transformation!5754 (rule!8548 (_1!22298 (get!12624 lt!1264841)))) (seqFromList!4303 (originalCharacters!6468 (_1!22298 (get!12624 lt!1264841)))))))))

(declare-fun b!3648356 () Bool)

(declare-fun res!1479800 () Bool)

(assert (=> b!3648356 (=> (not res!1479800) (not e!2258630))))

(assert (=> b!3648356 (= res!1479800 (= (rule!8548 (_1!22298 (get!12624 lt!1264841))) (rule!8548 (_1!22298 lt!1264488))))))

(assert (= (and d!1072262 c!630646) b!3648350))

(assert (= (and d!1072262 (not c!630646)) b!3648352))

(assert (= (and b!3648352 (not res!1479796)) b!3648354))

(assert (= (and d!1072262 (not res!1479801)) b!3648348))

(assert (= (and b!3648348 res!1479798) b!3648353))

(assert (= (and b!3648353 res!1479795) b!3648349))

(assert (= (and b!3648349 res!1479799) b!3648356))

(assert (= (and b!3648356 res!1479800) b!3648355))

(assert (= (and b!3648355 res!1479797) b!3648351))

(declare-fun m!4152631 () Bool)

(assert (=> b!3648351 m!4152631))

(declare-fun m!4152633 () Bool)

(assert (=> b!3648351 m!4152633))

(assert (=> b!3648355 m!4152631))

(declare-fun m!4152635 () Bool)

(assert (=> b!3648355 m!4152635))

(assert (=> b!3648355 m!4152635))

(declare-fun m!4152637 () Bool)

(assert (=> b!3648355 m!4152637))

(assert (=> b!3648348 m!4152631))

(declare-fun m!4152639 () Bool)

(assert (=> b!3648348 m!4152639))

(assert (=> b!3648348 m!4152639))

(declare-fun m!4152641 () Bool)

(assert (=> b!3648348 m!4152641))

(assert (=> b!3648348 m!4152641))

(declare-fun m!4152643 () Bool)

(assert (=> b!3648348 m!4152643))

(declare-fun m!4152645 () Bool)

(assert (=> d!1072262 m!4152645))

(declare-fun m!4152647 () Bool)

(assert (=> d!1072262 m!4152647))

(declare-fun m!4152649 () Bool)

(assert (=> d!1072262 m!4152649))

(declare-fun m!4152651 () Bool)

(assert (=> d!1072262 m!4152651))

(declare-fun m!4152653 () Bool)

(assert (=> b!3648352 m!4152653))

(declare-fun m!4152655 () Bool)

(assert (=> b!3648352 m!4152655))

(assert (=> b!3648352 m!4152405))

(declare-fun m!4152657 () Bool)

(assert (=> b!3648352 m!4152657))

(assert (=> b!3648352 m!4152653))

(declare-fun m!4152659 () Bool)

(assert (=> b!3648352 m!4152659))

(assert (=> b!3648352 m!4152405))

(declare-fun m!4152661 () Bool)

(assert (=> b!3648352 m!4152661))

(assert (=> b!3648352 m!4152653))

(declare-fun m!4152663 () Bool)

(assert (=> b!3648352 m!4152663))

(assert (=> b!3648352 m!4152659))

(assert (=> b!3648352 m!4152653))

(declare-fun m!4152665 () Bool)

(assert (=> b!3648352 m!4152665))

(declare-fun m!4152667 () Bool)

(assert (=> b!3648352 m!4152667))

(assert (=> b!3648356 m!4152631))

(assert (=> b!3648353 m!4152631))

(assert (=> b!3648353 m!4152639))

(assert (=> b!3648353 m!4152639))

(assert (=> b!3648353 m!4152641))

(assert (=> b!3648353 m!4152641))

(declare-fun m!4152669 () Bool)

(assert (=> b!3648353 m!4152669))

(assert (=> b!3648354 m!4152659))

(assert (=> b!3648354 m!4152405))

(assert (=> b!3648354 m!4152659))

(assert (=> b!3648354 m!4152405))

(assert (=> b!3648354 m!4152661))

(declare-fun m!4152671 () Bool)

(assert (=> b!3648354 m!4152671))

(assert (=> b!3648349 m!4152631))

(declare-fun m!4152673 () Bool)

(assert (=> b!3648349 m!4152673))

(assert (=> b!3648349 m!4152405))

(assert (=> b!3647659 d!1072262))

(declare-fun d!1072268 () Bool)

(assert (=> d!1072268 (= (_2!22298 lt!1264488) lt!1264487)))

(declare-fun lt!1264847 () Unit!55386)

(declare-fun choose!21496 (List!38582 List!38582 List!38582 List!38582 List!38582) Unit!55386)

(assert (=> d!1072268 (= lt!1264847 (choose!21496 lt!1264499 (_2!22298 lt!1264488) lt!1264499 lt!1264487 lt!1264508))))

(assert (=> d!1072268 (isPrefix!3117 lt!1264499 lt!1264508)))

(assert (=> d!1072268 (= (lemmaSamePrefixThenSameSuffix!1444 lt!1264499 (_2!22298 lt!1264488) lt!1264499 lt!1264487 lt!1264508) lt!1264847)))

(declare-fun bs!572177 () Bool)

(assert (= bs!572177 d!1072268))

(declare-fun m!4152675 () Bool)

(assert (=> bs!572177 m!4152675))

(assert (=> bs!572177 m!4151787))

(assert (=> b!3647659 d!1072268))

(declare-fun d!1072270 () Bool)

(assert (=> d!1072270 (= (apply!9256 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))) (seqFromList!4303 lt!1264499)) (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (seqFromList!4303 lt!1264499)))))

(declare-fun b_lambda!108201 () Bool)

(assert (=> (not b_lambda!108201) (not d!1072270)))

(declare-fun tb!210481 () Bool)

(declare-fun t!297308 () Bool)

(assert (=> (and b!3647680 (= (toValue!8046 (transformation!5754 (h!43879 rules!3307))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297308) tb!210481))

(declare-fun result!256316 () Bool)

(assert (=> tb!210481 (= result!256316 (inv!21 (dynLambda!16765 (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488)))) (seqFromList!4303 lt!1264499))))))

(declare-fun m!4152677 () Bool)

(assert (=> tb!210481 m!4152677))

(assert (=> d!1072270 t!297308))

(declare-fun b_and!269679 () Bool)

(assert (= b_and!269627 (and (=> t!297308 result!256316) b_and!269679)))

(declare-fun tb!210483 () Bool)

(declare-fun t!297310 () Bool)

(assert (=> (and b!3647678 (= (toValue!8046 (transformation!5754 rule!403)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297310) tb!210483))

(declare-fun result!256318 () Bool)

(assert (= result!256318 result!256316))

(assert (=> d!1072270 t!297310))

(declare-fun b_and!269681 () Bool)

(assert (= b_and!269629 (and (=> t!297310 result!256318) b_and!269681)))

(declare-fun t!297312 () Bool)

(declare-fun tb!210485 () Bool)

(assert (=> (and b!3647674 (= (toValue!8046 (transformation!5754 (rule!8548 token!511))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297312) tb!210485))

(declare-fun result!256320 () Bool)

(assert (= result!256320 result!256316))

(assert (=> d!1072270 t!297312))

(declare-fun b_and!269683 () Bool)

(assert (= b_and!269631 (and (=> t!297312 result!256320) b_and!269683)))

(declare-fun t!297314 () Bool)

(declare-fun tb!210487 () Bool)

(assert (=> (and b!3647677 (= (toValue!8046 (transformation!5754 anOtherTypeRule!33)) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297314) tb!210487))

(declare-fun result!256322 () Bool)

(assert (= result!256322 result!256316))

(assert (=> d!1072270 t!297314))

(declare-fun b_and!269685 () Bool)

(assert (= b_and!269633 (and (=> t!297314 result!256322) b_and!269685)))

(assert (=> d!1072270 m!4151693))

(declare-fun m!4152679 () Bool)

(assert (=> d!1072270 m!4152679))

(assert (=> b!3647659 d!1072270))

(declare-fun d!1072272 () Bool)

(declare-fun lt!1264850 () Int)

(assert (=> d!1072272 (>= lt!1264850 0)))

(declare-fun e!2258637 () Int)

(assert (=> d!1072272 (= lt!1264850 e!2258637)))

(declare-fun c!630649 () Bool)

(assert (=> d!1072272 (= c!630649 ((_ is Nil!38458) lt!1264499))))

(assert (=> d!1072272 (= (size!29362 lt!1264499) lt!1264850)))

(declare-fun b!3648361 () Bool)

(assert (=> b!3648361 (= e!2258637 0)))

(declare-fun b!3648362 () Bool)

(assert (=> b!3648362 (= e!2258637 (+ 1 (size!29362 (t!297205 lt!1264499))))))

(assert (= (and d!1072272 c!630649) b!3648361))

(assert (= (and d!1072272 (not c!630649)) b!3648362))

(declare-fun m!4152681 () Bool)

(assert (=> b!3648362 m!4152681))

(assert (=> b!3647659 d!1072272))

(declare-fun d!1072274 () Bool)

(declare-fun lt!1264853 () List!38582)

(assert (=> d!1072274 (= (++!9570 lt!1264499 lt!1264853) lt!1264508)))

(declare-fun e!2258640 () List!38582)

(assert (=> d!1072274 (= lt!1264853 e!2258640)))

(declare-fun c!630652 () Bool)

(assert (=> d!1072274 (= c!630652 ((_ is Cons!38458) lt!1264499))))

(assert (=> d!1072274 (>= (size!29362 lt!1264508) (size!29362 lt!1264499))))

(assert (=> d!1072274 (= (getSuffix!1670 lt!1264508 lt!1264499) lt!1264853)))

(declare-fun b!3648367 () Bool)

(assert (=> b!3648367 (= e!2258640 (getSuffix!1670 (tail!5651 lt!1264508) (t!297205 lt!1264499)))))

(declare-fun b!3648368 () Bool)

(assert (=> b!3648368 (= e!2258640 lt!1264508)))

(assert (= (and d!1072274 c!630652) b!3648367))

(assert (= (and d!1072274 (not c!630652)) b!3648368))

(declare-fun m!4152683 () Bool)

(assert (=> d!1072274 m!4152683))

(assert (=> d!1072274 m!4152405))

(assert (=> d!1072274 m!4151697))

(assert (=> b!3648367 m!4152433))

(assert (=> b!3648367 m!4152433))

(declare-fun m!4152685 () Bool)

(assert (=> b!3648367 m!4152685))

(assert (=> b!3647659 d!1072274))

(declare-fun d!1072276 () Bool)

(assert (=> d!1072276 (= (seqFromList!4303 lt!1264499) (fromListB!1989 lt!1264499))))

(declare-fun bs!572178 () Bool)

(assert (= bs!572178 d!1072276))

(declare-fun m!4152687 () Bool)

(assert (=> bs!572178 m!4152687))

(assert (=> b!3647659 d!1072276))

(declare-fun d!1072278 () Bool)

(assert (=> d!1072278 (= (inv!51900 (tag!6514 anOtherTypeRule!33)) (= (mod (str.len (value!184448 (tag!6514 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3647675 d!1072278))

(declare-fun d!1072280 () Bool)

(declare-fun res!1479802 () Bool)

(declare-fun e!2258641 () Bool)

(assert (=> d!1072280 (=> (not res!1479802) (not e!2258641))))

(assert (=> d!1072280 (= res!1479802 (semiInverseModEq!2453 (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toValue!8046 (transformation!5754 anOtherTypeRule!33))))))

(assert (=> d!1072280 (= (inv!51903 (transformation!5754 anOtherTypeRule!33)) e!2258641)))

(declare-fun b!3648369 () Bool)

(assert (=> b!3648369 (= e!2258641 (equivClasses!2352 (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toValue!8046 (transformation!5754 anOtherTypeRule!33))))))

(assert (= (and d!1072280 res!1479802) b!3648369))

(declare-fun m!4152689 () Bool)

(assert (=> d!1072280 m!4152689))

(declare-fun m!4152691 () Bool)

(assert (=> b!3648369 m!4152691))

(assert (=> b!3647675 d!1072280))

(declare-fun d!1072282 () Bool)

(assert (=> d!1072282 (= (get!12624 lt!1264518) (v!37988 lt!1264518))))

(assert (=> b!3647656 d!1072282))

(declare-fun d!1072284 () Bool)

(declare-fun lt!1264854 () Bool)

(assert (=> d!1072284 (= lt!1264854 (select (content!5545 (usedCharacters!966 (regex!5754 anOtherTypeRule!33))) lt!1264496))))

(declare-fun e!2258642 () Bool)

(assert (=> d!1072284 (= lt!1264854 e!2258642)))

(declare-fun res!1479804 () Bool)

(assert (=> d!1072284 (=> (not res!1479804) (not e!2258642))))

(assert (=> d!1072284 (= res!1479804 ((_ is Cons!38458) (usedCharacters!966 (regex!5754 anOtherTypeRule!33))))))

(assert (=> d!1072284 (= (contains!7573 (usedCharacters!966 (regex!5754 anOtherTypeRule!33)) lt!1264496) lt!1264854)))

(declare-fun b!3648370 () Bool)

(declare-fun e!2258643 () Bool)

(assert (=> b!3648370 (= e!2258642 e!2258643)))

(declare-fun res!1479803 () Bool)

(assert (=> b!3648370 (=> res!1479803 e!2258643)))

(assert (=> b!3648370 (= res!1479803 (= (h!43878 (usedCharacters!966 (regex!5754 anOtherTypeRule!33))) lt!1264496))))

(declare-fun b!3648371 () Bool)

(assert (=> b!3648371 (= e!2258643 (contains!7573 (t!297205 (usedCharacters!966 (regex!5754 anOtherTypeRule!33))) lt!1264496))))

(assert (= (and d!1072284 res!1479804) b!3648370))

(assert (= (and b!3648370 (not res!1479803)) b!3648371))

(assert (=> d!1072284 m!4151817))

(declare-fun m!4152693 () Bool)

(assert (=> d!1072284 m!4152693))

(declare-fun m!4152695 () Bool)

(assert (=> d!1072284 m!4152695))

(declare-fun m!4152697 () Bool)

(assert (=> b!3648371 m!4152697))

(assert (=> b!3647657 d!1072284))

(declare-fun b!3648372 () Bool)

(declare-fun e!2258646 () List!38582)

(assert (=> b!3648372 (= e!2258646 Nil!38458)))

(declare-fun b!3648373 () Bool)

(declare-fun e!2258644 () List!38582)

(declare-fun call!263662 () List!38582)

(assert (=> b!3648373 (= e!2258644 call!263662)))

(declare-fun b!3648374 () Bool)

(declare-fun e!2258647 () List!38582)

(declare-fun call!263664 () List!38582)

(assert (=> b!3648374 (= e!2258647 call!263664)))

(declare-fun d!1072286 () Bool)

(declare-fun c!630655 () Bool)

(assert (=> d!1072286 (= c!630655 (or ((_ is EmptyExpr!10513) (regex!5754 anOtherTypeRule!33)) ((_ is EmptyLang!10513) (regex!5754 anOtherTypeRule!33))))))

(assert (=> d!1072286 (= (usedCharacters!966 (regex!5754 anOtherTypeRule!33)) e!2258646)))

(declare-fun b!3648375 () Bool)

(assert (=> b!3648375 (= e!2258644 e!2258647)))

(declare-fun c!630654 () Bool)

(assert (=> b!3648375 (= c!630654 ((_ is Union!10513) (regex!5754 anOtherTypeRule!33)))))

(declare-fun b!3648376 () Bool)

(declare-fun c!630653 () Bool)

(assert (=> b!3648376 (= c!630653 ((_ is Star!10513) (regex!5754 anOtherTypeRule!33)))))

(declare-fun e!2258645 () List!38582)

(assert (=> b!3648376 (= e!2258645 e!2258644)))

(declare-fun bm!263656 () Bool)

(declare-fun call!263663 () List!38582)

(assert (=> bm!263656 (= call!263663 call!263662)))

(declare-fun bm!263657 () Bool)

(declare-fun call!263661 () List!38582)

(assert (=> bm!263657 (= call!263664 (++!9570 (ite c!630654 call!263663 call!263661) (ite c!630654 call!263661 call!263663)))))

(declare-fun b!3648377 () Bool)

(assert (=> b!3648377 (= e!2258645 (Cons!38458 (c!630524 (regex!5754 anOtherTypeRule!33)) Nil!38458))))

(declare-fun b!3648378 () Bool)

(assert (=> b!3648378 (= e!2258647 call!263664)))

(declare-fun bm!263658 () Bool)

(assert (=> bm!263658 (= call!263661 (usedCharacters!966 (ite c!630654 (regTwo!21539 (regex!5754 anOtherTypeRule!33)) (regOne!21538 (regex!5754 anOtherTypeRule!33)))))))

(declare-fun bm!263659 () Bool)

(assert (=> bm!263659 (= call!263662 (usedCharacters!966 (ite c!630653 (reg!10842 (regex!5754 anOtherTypeRule!33)) (ite c!630654 (regOne!21539 (regex!5754 anOtherTypeRule!33)) (regTwo!21538 (regex!5754 anOtherTypeRule!33))))))))

(declare-fun b!3648379 () Bool)

(assert (=> b!3648379 (= e!2258646 e!2258645)))

(declare-fun c!630656 () Bool)

(assert (=> b!3648379 (= c!630656 ((_ is ElementMatch!10513) (regex!5754 anOtherTypeRule!33)))))

(assert (= (and d!1072286 c!630655) b!3648372))

(assert (= (and d!1072286 (not c!630655)) b!3648379))

(assert (= (and b!3648379 c!630656) b!3648377))

(assert (= (and b!3648379 (not c!630656)) b!3648376))

(assert (= (and b!3648376 c!630653) b!3648373))

(assert (= (and b!3648376 (not c!630653)) b!3648375))

(assert (= (and b!3648375 c!630654) b!3648378))

(assert (= (and b!3648375 (not c!630654)) b!3648374))

(assert (= (or b!3648378 b!3648374) bm!263656))

(assert (= (or b!3648378 b!3648374) bm!263658))

(assert (= (or b!3648378 b!3648374) bm!263657))

(assert (= (or b!3648373 bm!263656) bm!263659))

(declare-fun m!4152699 () Bool)

(assert (=> bm!263657 m!4152699))

(declare-fun m!4152701 () Bool)

(assert (=> bm!263658 m!4152701))

(declare-fun m!4152703 () Bool)

(assert (=> bm!263659 m!4152703))

(assert (=> b!3647657 d!1072286))

(declare-fun d!1072288 () Bool)

(declare-fun lt!1264855 () Bool)

(assert (=> d!1072288 (= lt!1264855 (select (content!5545 call!263610) lt!1264505))))

(declare-fun e!2258648 () Bool)

(assert (=> d!1072288 (= lt!1264855 e!2258648)))

(declare-fun res!1479806 () Bool)

(assert (=> d!1072288 (=> (not res!1479806) (not e!2258648))))

(assert (=> d!1072288 (= res!1479806 ((_ is Cons!38458) call!263610))))

(assert (=> d!1072288 (= (contains!7573 call!263610 lt!1264505) lt!1264855)))

(declare-fun b!3648380 () Bool)

(declare-fun e!2258649 () Bool)

(assert (=> b!3648380 (= e!2258648 e!2258649)))

(declare-fun res!1479805 () Bool)

(assert (=> b!3648380 (=> res!1479805 e!2258649)))

(assert (=> b!3648380 (= res!1479805 (= (h!43878 call!263610) lt!1264505))))

(declare-fun b!3648381 () Bool)

(assert (=> b!3648381 (= e!2258649 (contains!7573 (t!297205 call!263610) lt!1264505))))

(assert (= (and d!1072288 res!1479806) b!3648380))

(assert (= (and b!3648380 (not res!1479805)) b!3648381))

(declare-fun m!4152705 () Bool)

(assert (=> d!1072288 m!4152705))

(declare-fun m!4152707 () Bool)

(assert (=> d!1072288 m!4152707))

(declare-fun m!4152709 () Bool)

(assert (=> b!3648381 m!4152709))

(assert (=> bm!263605 d!1072288))

(declare-fun d!1072290 () Bool)

(assert (=> d!1072290 (not (contains!7573 (usedCharacters!966 (regex!5754 (rule!8548 (_1!22298 lt!1264488)))) lt!1264505))))

(declare-fun lt!1264858 () Unit!55386)

(declare-fun choose!21498 (LexerInterface!5343 List!38583 List!38583 Rule!11308 Rule!11308 C!21212) Unit!55386)

(assert (=> d!1072290 (= lt!1264858 (choose!21498 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8548 (_1!22298 lt!1264488)) lt!1264505))))

(assert (=> d!1072290 (rulesInvariant!4740 thiss!23823 rules!3307)))

(assert (=> d!1072290 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!282 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8548 (_1!22298 lt!1264488)) lt!1264505) lt!1264858)))

(declare-fun bs!572179 () Bool)

(assert (= bs!572179 d!1072290))

(assert (=> bs!572179 m!4151801))

(assert (=> bs!572179 m!4151801))

(assert (=> bs!572179 m!4151901))

(declare-fun m!4152711 () Bool)

(assert (=> bs!572179 m!4152711))

(assert (=> bs!572179 m!4151723))

(assert (=> b!3647672 d!1072290))

(declare-fun d!1072292 () Bool)

(declare-fun lt!1264859 () Bool)

(assert (=> d!1072292 (= lt!1264859 (select (content!5545 lt!1264501) lt!1264496))))

(declare-fun e!2258650 () Bool)

(assert (=> d!1072292 (= lt!1264859 e!2258650)))

(declare-fun res!1479808 () Bool)

(assert (=> d!1072292 (=> (not res!1479808) (not e!2258650))))

(assert (=> d!1072292 (= res!1479808 ((_ is Cons!38458) lt!1264501))))

(assert (=> d!1072292 (= (contains!7573 lt!1264501 lt!1264496) lt!1264859)))

(declare-fun b!3648382 () Bool)

(declare-fun e!2258651 () Bool)

(assert (=> b!3648382 (= e!2258650 e!2258651)))

(declare-fun res!1479807 () Bool)

(assert (=> b!3648382 (=> res!1479807 e!2258651)))

(assert (=> b!3648382 (= res!1479807 (= (h!43878 lt!1264501) lt!1264496))))

(declare-fun b!3648383 () Bool)

(assert (=> b!3648383 (= e!2258651 (contains!7573 (t!297205 lt!1264501) lt!1264496))))

(assert (= (and d!1072292 res!1479808) b!3648382))

(assert (= (and b!3648382 (not res!1479807)) b!3648383))

(assert (=> d!1072292 m!4152063))

(declare-fun m!4152713 () Bool)

(assert (=> d!1072292 m!4152713))

(declare-fun m!4152715 () Bool)

(assert (=> b!3648383 m!4152715))

(assert (=> b!3647673 d!1072292))

(declare-fun d!1072294 () Bool)

(assert (=> d!1072294 (= (head!7764 suffix!1395) (h!43878 suffix!1395))))

(assert (=> b!3647673 d!1072294))

(declare-fun b!3648384 () Bool)

(declare-fun e!2258654 () List!38582)

(assert (=> b!3648384 (= e!2258654 Nil!38458)))

(declare-fun b!3648385 () Bool)

(declare-fun e!2258652 () List!38582)

(declare-fun call!263666 () List!38582)

(assert (=> b!3648385 (= e!2258652 call!263666)))

(declare-fun b!3648386 () Bool)

(declare-fun e!2258655 () List!38582)

(declare-fun call!263668 () List!38582)

(assert (=> b!3648386 (= e!2258655 call!263668)))

(declare-fun d!1072296 () Bool)

(declare-fun c!630660 () Bool)

(assert (=> d!1072296 (= c!630660 (or ((_ is EmptyExpr!10513) (regex!5754 rule!403)) ((_ is EmptyLang!10513) (regex!5754 rule!403))))))

(assert (=> d!1072296 (= (usedCharacters!966 (regex!5754 rule!403)) e!2258654)))

(declare-fun b!3648387 () Bool)

(assert (=> b!3648387 (= e!2258652 e!2258655)))

(declare-fun c!630659 () Bool)

(assert (=> b!3648387 (= c!630659 ((_ is Union!10513) (regex!5754 rule!403)))))

(declare-fun b!3648388 () Bool)

(declare-fun c!630658 () Bool)

(assert (=> b!3648388 (= c!630658 ((_ is Star!10513) (regex!5754 rule!403)))))

(declare-fun e!2258653 () List!38582)

(assert (=> b!3648388 (= e!2258653 e!2258652)))

(declare-fun bm!263660 () Bool)

(declare-fun call!263667 () List!38582)

(assert (=> bm!263660 (= call!263667 call!263666)))

(declare-fun bm!263661 () Bool)

(declare-fun call!263665 () List!38582)

(assert (=> bm!263661 (= call!263668 (++!9570 (ite c!630659 call!263667 call!263665) (ite c!630659 call!263665 call!263667)))))

(declare-fun b!3648389 () Bool)

(assert (=> b!3648389 (= e!2258653 (Cons!38458 (c!630524 (regex!5754 rule!403)) Nil!38458))))

(declare-fun b!3648390 () Bool)

(assert (=> b!3648390 (= e!2258655 call!263668)))

(declare-fun bm!263662 () Bool)

(assert (=> bm!263662 (= call!263665 (usedCharacters!966 (ite c!630659 (regTwo!21539 (regex!5754 rule!403)) (regOne!21538 (regex!5754 rule!403)))))))

(declare-fun bm!263663 () Bool)

(assert (=> bm!263663 (= call!263666 (usedCharacters!966 (ite c!630658 (reg!10842 (regex!5754 rule!403)) (ite c!630659 (regOne!21539 (regex!5754 rule!403)) (regTwo!21538 (regex!5754 rule!403))))))))

(declare-fun b!3648391 () Bool)

(assert (=> b!3648391 (= e!2258654 e!2258653)))

(declare-fun c!630661 () Bool)

(assert (=> b!3648391 (= c!630661 ((_ is ElementMatch!10513) (regex!5754 rule!403)))))

(assert (= (and d!1072296 c!630660) b!3648384))

(assert (= (and d!1072296 (not c!630660)) b!3648391))

(assert (= (and b!3648391 c!630661) b!3648389))

(assert (= (and b!3648391 (not c!630661)) b!3648388))

(assert (= (and b!3648388 c!630658) b!3648385))

(assert (= (and b!3648388 (not c!630658)) b!3648387))

(assert (= (and b!3648387 c!630659) b!3648390))

(assert (= (and b!3648387 (not c!630659)) b!3648386))

(assert (= (or b!3648390 b!3648386) bm!263660))

(assert (= (or b!3648390 b!3648386) bm!263662))

(assert (= (or b!3648390 b!3648386) bm!263661))

(assert (= (or b!3648385 bm!263660) bm!263663))

(declare-fun m!4152717 () Bool)

(assert (=> bm!263661 m!4152717))

(declare-fun m!4152719 () Bool)

(assert (=> bm!263662 m!4152719))

(declare-fun m!4152721 () Bool)

(assert (=> bm!263663 m!4152721))

(assert (=> b!3647673 d!1072296))

(declare-fun b!3648392 () Bool)

(declare-fun res!1479816 () Bool)

(declare-fun e!2258657 () Bool)

(assert (=> b!3648392 (=> res!1479816 e!2258657)))

(assert (=> b!3648392 (= res!1479816 (not (isEmpty!22785 (tail!5651 (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))))))))

(declare-fun b!3648393 () Bool)

(declare-fun res!1479815 () Bool)

(declare-fun e!2258661 () Bool)

(assert (=> b!3648393 (=> res!1479815 e!2258661)))

(declare-fun e!2258656 () Bool)

(assert (=> b!3648393 (= res!1479815 e!2258656)))

(declare-fun res!1479811 () Bool)

(assert (=> b!3648393 (=> (not res!1479811) (not e!2258656))))

(declare-fun lt!1264860 () Bool)

(assert (=> b!3648393 (= res!1479811 lt!1264860)))

(declare-fun b!3648394 () Bool)

(declare-fun res!1479809 () Bool)

(assert (=> b!3648394 (=> (not res!1479809) (not e!2258656))))

(assert (=> b!3648394 (= res!1479809 (isEmpty!22785 (tail!5651 (list!14248 (charsOf!3768 (_1!22298 lt!1264488))))))))

(declare-fun b!3648395 () Bool)

(declare-fun e!2258659 () Bool)

(declare-fun e!2258658 () Bool)

(assert (=> b!3648395 (= e!2258659 e!2258658)))

(declare-fun c!630663 () Bool)

(assert (=> b!3648395 (= c!630663 ((_ is EmptyLang!10513) (regex!5754 lt!1264506)))))

(declare-fun b!3648396 () Bool)

(declare-fun e!2258660 () Bool)

(assert (=> b!3648396 (= e!2258661 e!2258660)))

(declare-fun res!1479813 () Bool)

(assert (=> b!3648396 (=> (not res!1479813) (not e!2258660))))

(assert (=> b!3648396 (= res!1479813 (not lt!1264860))))

(declare-fun b!3648398 () Bool)

(declare-fun res!1479810 () Bool)

(assert (=> b!3648398 (=> res!1479810 e!2258661)))

(assert (=> b!3648398 (= res!1479810 (not ((_ is ElementMatch!10513) (regex!5754 lt!1264506))))))

(assert (=> b!3648398 (= e!2258658 e!2258661)))

(declare-fun bm!263664 () Bool)

(declare-fun call!263669 () Bool)

(assert (=> bm!263664 (= call!263669 (isEmpty!22785 (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))))))

(declare-fun b!3648399 () Bool)

(declare-fun res!1479812 () Bool)

(assert (=> b!3648399 (=> (not res!1479812) (not e!2258656))))

(assert (=> b!3648399 (= res!1479812 (not call!263669))))

(declare-fun b!3648400 () Bool)

(assert (=> b!3648400 (= e!2258659 (= lt!1264860 call!263669))))

(declare-fun b!3648401 () Bool)

(declare-fun e!2258662 () Bool)

(assert (=> b!3648401 (= e!2258662 (matchR!5082 (derivativeStep!3202 (regex!5754 lt!1264506) (head!7764 (list!14248 (charsOf!3768 (_1!22298 lt!1264488))))) (tail!5651 (list!14248 (charsOf!3768 (_1!22298 lt!1264488))))))))

(declare-fun b!3648402 () Bool)

(assert (=> b!3648402 (= e!2258662 (nullable!3653 (regex!5754 lt!1264506)))))

(declare-fun b!3648403 () Bool)

(assert (=> b!3648403 (= e!2258660 e!2258657)))

(declare-fun res!1479814 () Bool)

(assert (=> b!3648403 (=> res!1479814 e!2258657)))

(assert (=> b!3648403 (= res!1479814 call!263669)))

(declare-fun d!1072298 () Bool)

(assert (=> d!1072298 e!2258659))

(declare-fun c!630662 () Bool)

(assert (=> d!1072298 (= c!630662 ((_ is EmptyExpr!10513) (regex!5754 lt!1264506)))))

(assert (=> d!1072298 (= lt!1264860 e!2258662)))

(declare-fun c!630664 () Bool)

(assert (=> d!1072298 (= c!630664 (isEmpty!22785 (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))))))

(assert (=> d!1072298 (validRegex!4815 (regex!5754 lt!1264506))))

(assert (=> d!1072298 (= (matchR!5082 (regex!5754 lt!1264506) (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))) lt!1264860)))

(declare-fun b!3648397 () Bool)

(assert (=> b!3648397 (= e!2258657 (not (= (head!7764 (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))) (c!630524 (regex!5754 lt!1264506)))))))

(declare-fun b!3648404 () Bool)

(assert (=> b!3648404 (= e!2258658 (not lt!1264860))))

(declare-fun b!3648405 () Bool)

(assert (=> b!3648405 (= e!2258656 (= (head!7764 (list!14248 (charsOf!3768 (_1!22298 lt!1264488)))) (c!630524 (regex!5754 lt!1264506))))))

(assert (= (and d!1072298 c!630664) b!3648402))

(assert (= (and d!1072298 (not c!630664)) b!3648401))

(assert (= (and d!1072298 c!630662) b!3648400))

(assert (= (and d!1072298 (not c!630662)) b!3648395))

(assert (= (and b!3648395 c!630663) b!3648404))

(assert (= (and b!3648395 (not c!630663)) b!3648398))

(assert (= (and b!3648398 (not res!1479810)) b!3648393))

(assert (= (and b!3648393 res!1479811) b!3648399))

(assert (= (and b!3648399 res!1479812) b!3648394))

(assert (= (and b!3648394 res!1479809) b!3648405))

(assert (= (and b!3648393 (not res!1479815)) b!3648396))

(assert (= (and b!3648396 res!1479813) b!3648403))

(assert (= (and b!3648403 (not res!1479814)) b!3648392))

(assert (= (and b!3648392 (not res!1479816)) b!3648397))

(assert (= (or b!3648400 b!3648403 b!3648399) bm!263664))

(assert (=> b!3648392 m!4151795))

(declare-fun m!4152723 () Bool)

(assert (=> b!3648392 m!4152723))

(assert (=> b!3648392 m!4152723))

(declare-fun m!4152725 () Bool)

(assert (=> b!3648392 m!4152725))

(assert (=> b!3648394 m!4151795))

(assert (=> b!3648394 m!4152723))

(assert (=> b!3648394 m!4152723))

(assert (=> b!3648394 m!4152725))

(assert (=> bm!263664 m!4151795))

(declare-fun m!4152727 () Bool)

(assert (=> bm!263664 m!4152727))

(assert (=> b!3648401 m!4151795))

(declare-fun m!4152729 () Bool)

(assert (=> b!3648401 m!4152729))

(assert (=> b!3648401 m!4152729))

(declare-fun m!4152731 () Bool)

(assert (=> b!3648401 m!4152731))

(assert (=> b!3648401 m!4151795))

(assert (=> b!3648401 m!4152723))

(assert (=> b!3648401 m!4152731))

(assert (=> b!3648401 m!4152723))

(declare-fun m!4152733 () Bool)

(assert (=> b!3648401 m!4152733))

(assert (=> b!3648405 m!4151795))

(assert (=> b!3648405 m!4152729))

(assert (=> d!1072298 m!4151795))

(assert (=> d!1072298 m!4152727))

(declare-fun m!4152735 () Bool)

(assert (=> d!1072298 m!4152735))

(assert (=> b!3648397 m!4151795))

(assert (=> b!3648397 m!4152729))

(declare-fun m!4152737 () Bool)

(assert (=> b!3648402 m!4152737))

(assert (=> b!3647654 d!1072298))

(declare-fun d!1072300 () Bool)

(assert (=> d!1072300 (= (list!14248 (charsOf!3768 (_1!22298 lt!1264488))) (list!14249 (c!630525 (charsOf!3768 (_1!22298 lt!1264488)))))))

(declare-fun bs!572180 () Bool)

(assert (= bs!572180 d!1072300))

(declare-fun m!4152739 () Bool)

(assert (=> bs!572180 m!4152739))

(assert (=> b!3647654 d!1072300))

(assert (=> b!3647654 d!1072202))

(declare-fun d!1072302 () Bool)

(assert (=> d!1072302 (= (get!12623 lt!1264502) (v!37987 lt!1264502))))

(assert (=> b!3647654 d!1072302))

(declare-fun b!3648406 () Bool)

(declare-fun res!1479824 () Bool)

(declare-fun e!2258664 () Bool)

(assert (=> b!3648406 (=> res!1479824 e!2258664)))

(assert (=> b!3648406 (= res!1479824 (not (isEmpty!22785 (tail!5651 lt!1264520))))))

(declare-fun b!3648407 () Bool)

(declare-fun res!1479823 () Bool)

(declare-fun e!2258668 () Bool)

(assert (=> b!3648407 (=> res!1479823 e!2258668)))

(declare-fun e!2258663 () Bool)

(assert (=> b!3648407 (= res!1479823 e!2258663)))

(declare-fun res!1479819 () Bool)

(assert (=> b!3648407 (=> (not res!1479819) (not e!2258663))))

(declare-fun lt!1264861 () Bool)

(assert (=> b!3648407 (= res!1479819 lt!1264861)))

(declare-fun b!3648408 () Bool)

(declare-fun res!1479817 () Bool)

(assert (=> b!3648408 (=> (not res!1479817) (not e!2258663))))

(assert (=> b!3648408 (= res!1479817 (isEmpty!22785 (tail!5651 lt!1264520)))))

(declare-fun b!3648409 () Bool)

(declare-fun e!2258666 () Bool)

(declare-fun e!2258665 () Bool)

(assert (=> b!3648409 (= e!2258666 e!2258665)))

(declare-fun c!630666 () Bool)

(assert (=> b!3648409 (= c!630666 ((_ is EmptyLang!10513) (regex!5754 rule!403)))))

(declare-fun b!3648410 () Bool)

(declare-fun e!2258667 () Bool)

(assert (=> b!3648410 (= e!2258668 e!2258667)))

(declare-fun res!1479821 () Bool)

(assert (=> b!3648410 (=> (not res!1479821) (not e!2258667))))

(assert (=> b!3648410 (= res!1479821 (not lt!1264861))))

(declare-fun b!3648412 () Bool)

(declare-fun res!1479818 () Bool)

(assert (=> b!3648412 (=> res!1479818 e!2258668)))

(assert (=> b!3648412 (= res!1479818 (not ((_ is ElementMatch!10513) (regex!5754 rule!403))))))

(assert (=> b!3648412 (= e!2258665 e!2258668)))

(declare-fun bm!263665 () Bool)

(declare-fun call!263670 () Bool)

(assert (=> bm!263665 (= call!263670 (isEmpty!22785 lt!1264520))))

(declare-fun b!3648413 () Bool)

(declare-fun res!1479820 () Bool)

(assert (=> b!3648413 (=> (not res!1479820) (not e!2258663))))

(assert (=> b!3648413 (= res!1479820 (not call!263670))))

(declare-fun b!3648414 () Bool)

(assert (=> b!3648414 (= e!2258666 (= lt!1264861 call!263670))))

(declare-fun b!3648415 () Bool)

(declare-fun e!2258669 () Bool)

(assert (=> b!3648415 (= e!2258669 (matchR!5082 (derivativeStep!3202 (regex!5754 rule!403) (head!7764 lt!1264520)) (tail!5651 lt!1264520)))))

(declare-fun b!3648416 () Bool)

(assert (=> b!3648416 (= e!2258669 (nullable!3653 (regex!5754 rule!403)))))

(declare-fun b!3648417 () Bool)

(assert (=> b!3648417 (= e!2258667 e!2258664)))

(declare-fun res!1479822 () Bool)

(assert (=> b!3648417 (=> res!1479822 e!2258664)))

(assert (=> b!3648417 (= res!1479822 call!263670)))

(declare-fun d!1072304 () Bool)

(assert (=> d!1072304 e!2258666))

(declare-fun c!630665 () Bool)

(assert (=> d!1072304 (= c!630665 ((_ is EmptyExpr!10513) (regex!5754 rule!403)))))

(assert (=> d!1072304 (= lt!1264861 e!2258669)))

(declare-fun c!630667 () Bool)

(assert (=> d!1072304 (= c!630667 (isEmpty!22785 lt!1264520))))

(assert (=> d!1072304 (validRegex!4815 (regex!5754 rule!403))))

(assert (=> d!1072304 (= (matchR!5082 (regex!5754 rule!403) lt!1264520) lt!1264861)))

(declare-fun b!3648411 () Bool)

(assert (=> b!3648411 (= e!2258664 (not (= (head!7764 lt!1264520) (c!630524 (regex!5754 rule!403)))))))

(declare-fun b!3648418 () Bool)

(assert (=> b!3648418 (= e!2258665 (not lt!1264861))))

(declare-fun b!3648419 () Bool)

(assert (=> b!3648419 (= e!2258663 (= (head!7764 lt!1264520) (c!630524 (regex!5754 rule!403))))))

(assert (= (and d!1072304 c!630667) b!3648416))

(assert (= (and d!1072304 (not c!630667)) b!3648415))

(assert (= (and d!1072304 c!630665) b!3648414))

(assert (= (and d!1072304 (not c!630665)) b!3648409))

(assert (= (and b!3648409 c!630666) b!3648418))

(assert (= (and b!3648409 (not c!630666)) b!3648412))

(assert (= (and b!3648412 (not res!1479818)) b!3648407))

(assert (= (and b!3648407 res!1479819) b!3648413))

(assert (= (and b!3648413 res!1479820) b!3648408))

(assert (= (and b!3648408 res!1479817) b!3648419))

(assert (= (and b!3648407 (not res!1479823)) b!3648410))

(assert (= (and b!3648410 res!1479821) b!3648417))

(assert (= (and b!3648417 (not res!1479822)) b!3648406))

(assert (= (and b!3648406 (not res!1479824)) b!3648411))

(assert (= (or b!3648414 b!3648417 b!3648413) bm!263665))

(assert (=> b!3648406 m!4152431))

(assert (=> b!3648406 m!4152431))

(declare-fun m!4152741 () Bool)

(assert (=> b!3648406 m!4152741))

(assert (=> b!3648408 m!4152431))

(assert (=> b!3648408 m!4152431))

(assert (=> b!3648408 m!4152741))

(declare-fun m!4152743 () Bool)

(assert (=> bm!263665 m!4152743))

(assert (=> b!3648415 m!4152437))

(assert (=> b!3648415 m!4152437))

(declare-fun m!4152745 () Bool)

(assert (=> b!3648415 m!4152745))

(assert (=> b!3648415 m!4152431))

(assert (=> b!3648415 m!4152745))

(assert (=> b!3648415 m!4152431))

(declare-fun m!4152747 () Bool)

(assert (=> b!3648415 m!4152747))

(assert (=> b!3648419 m!4152437))

(assert (=> d!1072304 m!4152743))

(assert (=> d!1072304 m!4151881))

(assert (=> b!3648411 m!4152437))

(declare-fun m!4152749 () Bool)

(assert (=> b!3648416 m!4152749))

(assert (=> b!3647655 d!1072304))

(declare-fun d!1072306 () Bool)

(declare-fun res!1479829 () Bool)

(declare-fun e!2258672 () Bool)

(assert (=> d!1072306 (=> (not res!1479829) (not e!2258672))))

(assert (=> d!1072306 (= res!1479829 (validRegex!4815 (regex!5754 rule!403)))))

(assert (=> d!1072306 (= (ruleValid!2018 thiss!23823 rule!403) e!2258672)))

(declare-fun b!3648424 () Bool)

(declare-fun res!1479830 () Bool)

(assert (=> b!3648424 (=> (not res!1479830) (not e!2258672))))

(assert (=> b!3648424 (= res!1479830 (not (nullable!3653 (regex!5754 rule!403))))))

(declare-fun b!3648425 () Bool)

(assert (=> b!3648425 (= e!2258672 (not (= (tag!6514 rule!403) (String!43255 ""))))))

(assert (= (and d!1072306 res!1479829) b!3648424))

(assert (= (and b!3648424 res!1479830) b!3648425))

(assert (=> d!1072306 m!4151881))

(assert (=> b!3648424 m!4152749))

(assert (=> b!3647655 d!1072306))

(declare-fun d!1072308 () Bool)

(assert (=> d!1072308 (ruleValid!2018 thiss!23823 rule!403)))

(declare-fun lt!1264864 () Unit!55386)

(declare-fun choose!21500 (LexerInterface!5343 Rule!11308 List!38583) Unit!55386)

(assert (=> d!1072308 (= lt!1264864 (choose!21500 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1072308 (contains!7574 rules!3307 rule!403)))

(assert (=> d!1072308 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1172 thiss!23823 rule!403 rules!3307) lt!1264864)))

(declare-fun bs!572181 () Bool)

(assert (= bs!572181 d!1072308))

(assert (=> bs!572181 m!4151709))

(declare-fun m!4152751 () Bool)

(assert (=> bs!572181 m!4152751))

(assert (=> bs!572181 m!4151793))

(assert (=> b!3647655 d!1072308))

(declare-fun b!3648436 () Bool)

(declare-fun e!2258675 () Bool)

(assert (=> b!3648436 (= e!2258675 tp_is_empty!18109)))

(declare-fun b!3648438 () Bool)

(declare-fun tp!1112327 () Bool)

(assert (=> b!3648438 (= e!2258675 tp!1112327)))

(assert (=> b!3647675 (= tp!1112245 e!2258675)))

(declare-fun b!3648437 () Bool)

(declare-fun tp!1112325 () Bool)

(declare-fun tp!1112324 () Bool)

(assert (=> b!3648437 (= e!2258675 (and tp!1112325 tp!1112324))))

(declare-fun b!3648439 () Bool)

(declare-fun tp!1112326 () Bool)

(declare-fun tp!1112323 () Bool)

(assert (=> b!3648439 (= e!2258675 (and tp!1112326 tp!1112323))))

(assert (= (and b!3647675 ((_ is ElementMatch!10513) (regex!5754 anOtherTypeRule!33))) b!3648436))

(assert (= (and b!3647675 ((_ is Concat!16498) (regex!5754 anOtherTypeRule!33))) b!3648437))

(assert (= (and b!3647675 ((_ is Star!10513) (regex!5754 anOtherTypeRule!33))) b!3648438))

(assert (= (and b!3647675 ((_ is Union!10513) (regex!5754 anOtherTypeRule!33))) b!3648439))

(declare-fun b!3648450 () Bool)

(declare-fun b_free!95853 () Bool)

(declare-fun b_next!96557 () Bool)

(assert (=> b!3648450 (= b_free!95853 (not b_next!96557))))

(declare-fun tb!210489 () Bool)

(declare-fun t!297316 () Bool)

(assert (=> (and b!3648450 (= (toValue!8046 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297316) tb!210489))

(declare-fun result!256328 () Bool)

(assert (= result!256328 result!256316))

(assert (=> d!1072270 t!297316))

(declare-fun t!297318 () Bool)

(declare-fun tb!210491 () Bool)

(assert (=> (and b!3648450 (= (toValue!8046 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297318) tb!210491))

(declare-fun result!256330 () Bool)

(assert (= result!256330 result!256212))

(assert (=> d!1072052 t!297318))

(assert (=> d!1072106 t!297318))

(declare-fun tb!210493 () Bool)

(declare-fun t!297320 () Bool)

(assert (=> (and b!3648450 (= (toValue!8046 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toValue!8046 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297320) tb!210493))

(declare-fun result!256332 () Bool)

(assert (= result!256332 result!256266))

(assert (=> d!1072106 t!297320))

(assert (=> d!1072050 t!297318))

(declare-fun tp!1112338 () Bool)

(declare-fun b_and!269687 () Bool)

(assert (=> b!3648450 (= tp!1112338 (and (=> t!297318 result!256330) (=> t!297316 result!256328) (=> t!297320 result!256332) b_and!269687))))

(declare-fun b_free!95855 () Bool)

(declare-fun b_next!96559 () Bool)

(assert (=> b!3648450 (= b_free!95855 (not b_next!96559))))

(declare-fun tb!210495 () Bool)

(declare-fun t!297322 () Bool)

(assert (=> (and b!3648450 (= (toChars!7905 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toChars!7905 (transformation!5754 (rule!8548 token!511)))) t!297322) tb!210495))

(declare-fun result!256334 () Bool)

(assert (= result!256334 result!256202))

(assert (=> d!1072022 t!297322))

(declare-fun t!297324 () Bool)

(declare-fun tb!210497 () Bool)

(assert (=> (and b!3648450 (= (toChars!7905 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297324) tb!210497))

(declare-fun result!256336 () Bool)

(assert (= result!256336 result!256258))

(assert (=> d!1072052 t!297324))

(declare-fun tb!210499 () Bool)

(declare-fun t!297326 () Bool)

(assert (=> (and b!3648450 (= (toChars!7905 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toChars!7905 (transformation!5754 (rule!8548 (_1!22298 lt!1264488))))) t!297326) tb!210499))

(declare-fun result!256338 () Bool)

(assert (= result!256338 result!256282))

(assert (=> d!1072202 t!297326))

(assert (=> b!3648254 t!297322))

(declare-fun b_and!269689 () Bool)

(declare-fun tp!1112337 () Bool)

(assert (=> b!3648450 (= tp!1112337 (and (=> t!297322 result!256334) (=> t!297324 result!256336) (=> t!297326 result!256338) b_and!269689))))

(declare-fun e!2258685 () Bool)

(assert (=> b!3648450 (= e!2258685 (and tp!1112338 tp!1112337))))

(declare-fun e!2258687 () Bool)

(declare-fun b!3648449 () Bool)

(declare-fun tp!1112336 () Bool)

(assert (=> b!3648449 (= e!2258687 (and tp!1112336 (inv!51900 (tag!6514 (h!43879 (t!297206 rules!3307)))) (inv!51903 (transformation!5754 (h!43879 (t!297206 rules!3307)))) e!2258685))))

(declare-fun b!3648448 () Bool)

(declare-fun e!2258686 () Bool)

(declare-fun tp!1112339 () Bool)

(assert (=> b!3648448 (= e!2258686 (and e!2258687 tp!1112339))))

(assert (=> b!3647687 (= tp!1112246 e!2258686)))

(assert (= b!3648449 b!3648450))

(assert (= b!3648448 b!3648449))

(assert (= (and b!3647687 ((_ is Cons!38459) (t!297206 rules!3307))) b!3648448))

(declare-fun m!4152753 () Bool)

(assert (=> b!3648449 m!4152753))

(declare-fun m!4152755 () Bool)

(assert (=> b!3648449 m!4152755))

(declare-fun b!3648451 () Bool)

(declare-fun e!2258688 () Bool)

(assert (=> b!3648451 (= e!2258688 tp_is_empty!18109)))

(declare-fun b!3648453 () Bool)

(declare-fun tp!1112344 () Bool)

(assert (=> b!3648453 (= e!2258688 tp!1112344)))

(assert (=> b!3647662 (= tp!1112242 e!2258688)))

(declare-fun b!3648452 () Bool)

(declare-fun tp!1112342 () Bool)

(declare-fun tp!1112341 () Bool)

(assert (=> b!3648452 (= e!2258688 (and tp!1112342 tp!1112341))))

(declare-fun b!3648454 () Bool)

(declare-fun tp!1112343 () Bool)

(declare-fun tp!1112340 () Bool)

(assert (=> b!3648454 (= e!2258688 (and tp!1112343 tp!1112340))))

(assert (= (and b!3647662 ((_ is ElementMatch!10513) (regex!5754 (rule!8548 token!511)))) b!3648451))

(assert (= (and b!3647662 ((_ is Concat!16498) (regex!5754 (rule!8548 token!511)))) b!3648452))

(assert (= (and b!3647662 ((_ is Star!10513) (regex!5754 (rule!8548 token!511)))) b!3648453))

(assert (= (and b!3647662 ((_ is Union!10513) (regex!5754 (rule!8548 token!511)))) b!3648454))

(declare-fun b!3648455 () Bool)

(declare-fun e!2258689 () Bool)

(assert (=> b!3648455 (= e!2258689 tp_is_empty!18109)))

(declare-fun b!3648457 () Bool)

(declare-fun tp!1112349 () Bool)

(assert (=> b!3648457 (= e!2258689 tp!1112349)))

(assert (=> b!3647688 (= tp!1112253 e!2258689)))

(declare-fun b!3648456 () Bool)

(declare-fun tp!1112347 () Bool)

(declare-fun tp!1112346 () Bool)

(assert (=> b!3648456 (= e!2258689 (and tp!1112347 tp!1112346))))

(declare-fun b!3648458 () Bool)

(declare-fun tp!1112348 () Bool)

(declare-fun tp!1112345 () Bool)

(assert (=> b!3648458 (= e!2258689 (and tp!1112348 tp!1112345))))

(assert (= (and b!3647688 ((_ is ElementMatch!10513) (regex!5754 (h!43879 rules!3307)))) b!3648455))

(assert (= (and b!3647688 ((_ is Concat!16498) (regex!5754 (h!43879 rules!3307)))) b!3648456))

(assert (= (and b!3647688 ((_ is Star!10513) (regex!5754 (h!43879 rules!3307)))) b!3648457))

(assert (= (and b!3647688 ((_ is Union!10513) (regex!5754 (h!43879 rules!3307)))) b!3648458))

(declare-fun b!3648463 () Bool)

(declare-fun e!2258692 () Bool)

(declare-fun tp!1112352 () Bool)

(assert (=> b!3648463 (= e!2258692 (and tp_is_empty!18109 tp!1112352))))

(assert (=> b!3647689 (= tp!1112256 e!2258692)))

(assert (= (and b!3647689 ((_ is Cons!38458) (originalCharacters!6468 token!511))) b!3648463))

(declare-fun b!3648464 () Bool)

(declare-fun e!2258693 () Bool)

(declare-fun tp!1112353 () Bool)

(assert (=> b!3648464 (= e!2258693 (and tp_is_empty!18109 tp!1112353))))

(assert (=> b!3647694 (= tp!1112243 e!2258693)))

(assert (= (and b!3647694 ((_ is Cons!38458) (t!297205 suffix!1395))) b!3648464))

(declare-fun b!3648465 () Bool)

(declare-fun e!2258694 () Bool)

(assert (=> b!3648465 (= e!2258694 tp_is_empty!18109)))

(declare-fun b!3648467 () Bool)

(declare-fun tp!1112358 () Bool)

(assert (=> b!3648467 (= e!2258694 tp!1112358)))

(assert (=> b!3647690 (= tp!1112254 e!2258694)))

(declare-fun b!3648466 () Bool)

(declare-fun tp!1112356 () Bool)

(declare-fun tp!1112355 () Bool)

(assert (=> b!3648466 (= e!2258694 (and tp!1112356 tp!1112355))))

(declare-fun b!3648468 () Bool)

(declare-fun tp!1112357 () Bool)

(declare-fun tp!1112354 () Bool)

(assert (=> b!3648468 (= e!2258694 (and tp!1112357 tp!1112354))))

(assert (= (and b!3647690 ((_ is ElementMatch!10513) (regex!5754 rule!403))) b!3648465))

(assert (= (and b!3647690 ((_ is Concat!16498) (regex!5754 rule!403))) b!3648466))

(assert (= (and b!3647690 ((_ is Star!10513) (regex!5754 rule!403))) b!3648467))

(assert (= (and b!3647690 ((_ is Union!10513) (regex!5754 rule!403))) b!3648468))

(declare-fun b_lambda!108203 () Bool)

(assert (= b_lambda!108163 (or (and b!3647674 b_free!95843) (and b!3647680 b_free!95835 (= (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3647678 b_free!95839 (= (toChars!7905 (transformation!5754 rule!403)) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3647677 b_free!95847 (= (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3648450 b_free!95855 (= (toChars!7905 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) b_lambda!108203)))

(declare-fun b_lambda!108205 () Bool)

(assert (= b_lambda!108191 (or (and b!3647674 b_free!95843) (and b!3647680 b_free!95835 (= (toChars!7905 (transformation!5754 (h!43879 rules!3307))) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3647678 b_free!95839 (= (toChars!7905 (transformation!5754 rule!403)) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3647677 b_free!95847 (= (toChars!7905 (transformation!5754 anOtherTypeRule!33)) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) (and b!3648450 b_free!95855 (= (toChars!7905 (transformation!5754 (h!43879 (t!297206 rules!3307)))) (toChars!7905 (transformation!5754 (rule!8548 token!511))))) b_lambda!108205)))

(check-sat (not b!3648234) (not b!3647731) (not d!1072038) (not d!1072298) tp_is_empty!18109 (not b!3648367) (not b!3648124) (not b!3648176) (not d!1072212) (not d!1072234) (not d!1072030) b_and!269679 (not b_lambda!108183) (not b!3648260) (not tb!210453) (not b!3647754) (not d!1072224) b_and!269687 (not d!1072034) (not b!3648468) (not b!3648353) (not d!1072290) (not b!3648411) (not d!1072218) (not tb!210389) (not b!3648103) b_and!269655 (not d!1072276) (not b_next!96539) (not d!1072280) (not d!1072208) (not b_next!96541) (not bm!263661) (not b!3648146) (not b!3648438) (not b!3647732) (not b_next!96551) b_and!269657 (not b!3648167) (not b!3648415) (not b!3648136) (not b!3647714) (not b!3648401) (not b!3648135) (not b!3648349) (not b!3648166) (not d!1072284) (not b!3648355) (not d!1072300) (not b!3648416) (not b!3648453) (not b!3648245) b_and!269681 (not b!3648466) (not d!1072192) (not b!3648170) (not b_next!96545) (not b!3648105) (not b!3648392) (not d!1072016) (not b_lambda!108179) (not d!1072204) (not d!1072042) (not tb!210381) (not b!3648456) (not d!1072116) (not tb!210429) (not b_next!96559) (not b!3647716) (not d!1072014) (not b!3648151) (not b!3648463) (not b!3648402) (not b_lambda!108201) (not bm!263655) (not b_next!96557) (not b!3648448) (not bm!263624) (not b!3648369) (not b!3648134) (not b!3648126) (not b!3648383) (not b!3648113) (not b!3648172) (not d!1072196) (not d!1072226) (not bm!263626) (not b!3648362) (not b!3648406) (not tb!210481) (not b!3647718) (not b!3648109) (not d!1072120) (not b!3648255) (not b!3648348) (not d!1072268) (not b!3648457) (not b!3648381) (not b_lambda!108205) (not b!3648107) (not bm!263625) (not b!3648106) (not b!3648102) (not b!3648108) (not d!1072104) (not b_lambda!108203) (not b!3647752) (not b!3648454) (not d!1072240) (not b!3648452) (not b!3647924) (not b_lambda!108165) (not b_next!96547) (not d!1072046) (not d!1072214) (not bm!263652) (not b!3648449) (not b!3648132) (not b!3648150) (not b!3648439) (not b!3648173) (not b_next!96543) b_and!269651 (not b!3648424) (not b!3648464) (not b!3648110) (not b!3648242) (not b!3647749) (not d!1072288) (not d!1072304) (not b!3647738) (not tb!210437) (not b!3648408) (not d!1072108) (not b!3647898) (not b!3648123) (not b!3648356) (not b!3648351) (not b_lambda!108181) (not d!1072048) (not b!3648397) (not d!1072262) (not b!3648371) b_and!269653 (not b!3648458) (not bm!263657) (not bm!263610) (not b_next!96549) (not b!3648352) (not d!1072202) (not b!3648241) (not d!1072306) (not b!3648354) (not b!3648394) (not d!1072020) (not b!3648405) (not d!1072230) (not d!1072292) (not b!3648237) (not b_lambda!108189) (not b!3647753) (not b!3648112) (not b_lambda!108185) (not b!3648152) (not b!3648437) (not d!1072052) (not b!3648254) (not d!1072216) (not d!1072308) (not d!1072106) (not bm!263659) (not d!1072236) (not b!3647930) (not bm!263664) b_and!269689 (not b!3647713) (not b!3648147) (not bm!263662) b_and!269685 (not b_next!96537) (not bm!263658) (not d!1072274) (not b!3647885) (not b!3647715) (not b!3647717) (not bm!263663) (not b!3647720) (not b!3647735) (not b!3648257) b_and!269683 (not d!1072026) (not b!3648131) (not d!1072110) (not b!3648125) (not d!1072022) (not b!3648232) (not b!3647721) (not d!1072194) (not bm!263665) (not d!1072118) (not d!1072122) (not b!3648101) (not b!3648419) (not b!3647726) (not b!3648467) (not d!1072222))
(check-sat b_and!269679 b_and!269687 b_and!269681 (not b_next!96545) (not b_next!96559) (not b_next!96557) (not b_next!96547) (not b_next!96543) b_and!269651 b_and!269689 b_and!269685 (not b_next!96537) b_and!269683 (not b_next!96539) b_and!269655 (not b_next!96541) (not b_next!96551) b_and!269657 b_and!269653 (not b_next!96549))
