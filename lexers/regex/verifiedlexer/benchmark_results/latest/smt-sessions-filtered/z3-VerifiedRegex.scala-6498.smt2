; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341710 () Bool)

(assert start!341710)

(declare-fun b!3653697 () Bool)

(declare-fun b_free!96217 () Bool)

(declare-fun b_next!96921 () Bool)

(assert (=> b!3653697 (= b_free!96217 (not b_next!96921))))

(declare-fun tp!1113652 () Bool)

(declare-fun b_and!270483 () Bool)

(assert (=> b!3653697 (= tp!1113652 b_and!270483)))

(declare-fun b_free!96219 () Bool)

(declare-fun b_next!96923 () Bool)

(assert (=> b!3653697 (= b_free!96219 (not b_next!96923))))

(declare-fun tp!1113640 () Bool)

(declare-fun b_and!270485 () Bool)

(assert (=> b!3653697 (= tp!1113640 b_and!270485)))

(declare-fun b!3653686 () Bool)

(declare-fun b_free!96221 () Bool)

(declare-fun b_next!96925 () Bool)

(assert (=> b!3653686 (= b_free!96221 (not b_next!96925))))

(declare-fun tp!1113649 () Bool)

(declare-fun b_and!270487 () Bool)

(assert (=> b!3653686 (= tp!1113649 b_and!270487)))

(declare-fun b_free!96223 () Bool)

(declare-fun b_next!96927 () Bool)

(assert (=> b!3653686 (= b_free!96223 (not b_next!96927))))

(declare-fun tp!1113643 () Bool)

(declare-fun b_and!270489 () Bool)

(assert (=> b!3653686 (= tp!1113643 b_and!270489)))

(declare-fun b!3653680 () Bool)

(declare-fun b_free!96225 () Bool)

(declare-fun b_next!96929 () Bool)

(assert (=> b!3653680 (= b_free!96225 (not b_next!96929))))

(declare-fun tp!1113653 () Bool)

(declare-fun b_and!270491 () Bool)

(assert (=> b!3653680 (= tp!1113653 b_and!270491)))

(declare-fun b_free!96227 () Bool)

(declare-fun b_next!96931 () Bool)

(assert (=> b!3653680 (= b_free!96227 (not b_next!96931))))

(declare-fun tp!1113647 () Bool)

(declare-fun b_and!270493 () Bool)

(assert (=> b!3653680 (= tp!1113647 b_and!270493)))

(declare-fun b!3653713 () Bool)

(declare-fun b_free!96229 () Bool)

(declare-fun b_next!96933 () Bool)

(assert (=> b!3653713 (= b_free!96229 (not b_next!96933))))

(declare-fun tp!1113650 () Bool)

(declare-fun b_and!270495 () Bool)

(assert (=> b!3653713 (= tp!1113650 b_and!270495)))

(declare-fun b_free!96231 () Bool)

(declare-fun b_next!96935 () Bool)

(assert (=> b!3653713 (= b_free!96231 (not b_next!96935))))

(declare-fun tp!1113654 () Bool)

(declare-fun b_and!270497 () Bool)

(assert (=> b!3653713 (= tp!1113654 b_and!270497)))

(declare-fun e!2262210 () Bool)

(assert (=> b!3653680 (= e!2262210 (and tp!1113653 tp!1113647))))

(declare-fun b!3653681 () Bool)

(declare-fun e!2262215 () Bool)

(declare-fun e!2262220 () Bool)

(assert (=> b!3653681 (= e!2262215 e!2262220)))

(declare-fun res!1482586 () Bool)

(assert (=> b!3653681 (=> res!1482586 e!2262220)))

(declare-datatypes ((C!21256 0))(
  ( (C!21257 (val!12676 Int)) )
))
(declare-datatypes ((List!38663 0))(
  ( (Nil!38539) (Cons!38539 (h!43959 C!21256) (t!297766 List!38663)) )
))
(declare-fun lt!1268478 () List!38663)

(declare-fun lt!1268488 () Int)

(declare-datatypes ((List!38664 0))(
  ( (Nil!38540) (Cons!38540 (h!43960 (_ BitVec 16)) (t!297767 List!38664)) )
))
(declare-datatypes ((TokenValue!6006 0))(
  ( (FloatLiteralValue!12012 (text!42487 List!38664)) (TokenValueExt!6005 (__x!24229 Int)) (Broken!30030 (value!185050 List!38664)) (Object!6129) (End!6006) (Def!6006) (Underscore!6006) (Match!6006) (Else!6006) (Error!6006) (Case!6006) (If!6006) (Extends!6006) (Abstract!6006) (Class!6006) (Val!6006) (DelimiterValue!12012 (del!6066 List!38664)) (KeywordValue!6012 (value!185051 List!38664)) (CommentValue!12012 (value!185052 List!38664)) (WhitespaceValue!12012 (value!185053 List!38664)) (IndentationValue!6006 (value!185054 List!38664)) (String!43363) (Int32!6006) (Broken!30031 (value!185055 List!38664)) (Boolean!6007) (Unit!55616) (OperatorValue!6009 (op!6066 List!38664)) (IdentifierValue!12012 (value!185056 List!38664)) (IdentifierValue!12013 (value!185057 List!38664)) (WhitespaceValue!12013 (value!185058 List!38664)) (True!12012) (False!12012) (Broken!30032 (value!185059 List!38664)) (Broken!30033 (value!185060 List!38664)) (True!12013) (RightBrace!6006) (RightBracket!6006) (Colon!6006) (Null!6006) (Comma!6006) (LeftBracket!6006) (False!12013) (LeftBrace!6006) (ImaginaryLiteralValue!6006 (text!42488 List!38664)) (StringLiteralValue!18018 (value!185061 List!38664)) (EOFValue!6006 (value!185062 List!38664)) (IdentValue!6006 (value!185063 List!38664)) (DelimiterValue!12013 (value!185064 List!38664)) (DedentValue!6006 (value!185065 List!38664)) (NewLineValue!6006 (value!185066 List!38664)) (IntegerValue!18018 (value!185067 (_ BitVec 32)) (text!42489 List!38664)) (IntegerValue!18019 (value!185068 Int) (text!42490 List!38664)) (Times!6006) (Or!6006) (Equal!6006) (Minus!6006) (Broken!30034 (value!185069 List!38664)) (And!6006) (Div!6006) (LessEqual!6006) (Mod!6006) (Concat!16541) (Not!6006) (Plus!6006) (SpaceValue!6006 (value!185070 List!38664)) (IntegerValue!18020 (value!185071 Int) (text!42491 List!38664)) (StringLiteralValue!18019 (text!42492 List!38664)) (FloatLiteralValue!12013 (text!42493 List!38664)) (BytesLiteralValue!6006 (value!185072 List!38664)) (CommentValue!12013 (value!185073 List!38664)) (StringLiteralValue!18020 (value!185074 List!38664)) (ErrorTokenValue!6006 (msg!6067 List!38664)) )
))
(declare-datatypes ((Regex!10535 0))(
  ( (ElementMatch!10535 (c!631478 C!21256)) (Concat!16542 (regOne!21582 Regex!10535) (regTwo!21582 Regex!10535)) (EmptyExpr!10535) (Star!10535 (reg!10864 Regex!10535)) (EmptyLang!10535) (Union!10535 (regOne!21583 Regex!10535) (regTwo!21583 Regex!10535)) )
))
(declare-datatypes ((String!43364 0))(
  ( (String!43365 (value!185075 String)) )
))
(declare-datatypes ((IArray!23563 0))(
  ( (IArray!23564 (innerList!11839 List!38663)) )
))
(declare-datatypes ((Conc!11779 0))(
  ( (Node!11779 (left!30081 Conc!11779) (right!30411 Conc!11779) (csize!23788 Int) (cheight!11990 Int)) (Leaf!18278 (xs!14981 IArray!23563) (csize!23789 Int)) (Empty!11779) )
))
(declare-datatypes ((BalanceConc!23172 0))(
  ( (BalanceConc!23173 (c!631479 Conc!11779)) )
))
(declare-datatypes ((TokenValueInjection!11440 0))(
  ( (TokenValueInjection!11441 (toValue!8068 Int) (toChars!7927 Int)) )
))
(declare-datatypes ((Rule!11352 0))(
  ( (Rule!11353 (regex!5776 Regex!10535) (tag!6544 String!43364) (isSeparator!5776 Bool) (transformation!5776 TokenValueInjection!11440)) )
))
(declare-datatypes ((Token!10918 0))(
  ( (Token!10919 (value!185076 TokenValue!6006) (rule!8578 Rule!11352) (size!29435 Int) (originalCharacters!6490 List!38663)) )
))
(declare-datatypes ((tuple2!38404 0))(
  ( (tuple2!38405 (_1!22336 Token!10918) (_2!22336 List!38663)) )
))
(declare-fun lt!1268489 () tuple2!38404)

(declare-fun lt!1268475 () TokenValue!6006)

(declare-datatypes ((Option!8180 0))(
  ( (None!8179) (Some!8179 (v!38047 tuple2!38404)) )
))
(declare-fun lt!1268483 () Option!8180)

(assert (=> b!3653681 (= res!1482586 (not (= lt!1268483 (Some!8179 (tuple2!38405 (Token!10919 lt!1268475 (rule!8578 (_1!22336 lt!1268489)) lt!1268488 lt!1268478) (_2!22336 lt!1268489))))))))

(declare-fun lt!1268493 () BalanceConc!23172)

(declare-fun size!29436 (BalanceConc!23172) Int)

(assert (=> b!3653681 (= lt!1268488 (size!29436 lt!1268493))))

(declare-fun apply!9278 (TokenValueInjection!11440 BalanceConc!23172) TokenValue!6006)

(assert (=> b!3653681 (= lt!1268475 (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493))))

(declare-datatypes ((Unit!55617 0))(
  ( (Unit!55618) )
))
(declare-fun lt!1268494 () Unit!55617)

(declare-fun lemmaCharactersSize!821 (Token!10918) Unit!55617)

(assert (=> b!3653681 (= lt!1268494 (lemmaCharactersSize!821 (_1!22336 lt!1268489)))))

(declare-fun lt!1268485 () Unit!55617)

(declare-fun lemmaEqSameImage!959 (TokenValueInjection!11440 BalanceConc!23172 BalanceConc!23172) Unit!55617)

(declare-fun seqFromList!4325 (List!38663) BalanceConc!23172)

(assert (=> b!3653681 (= lt!1268485 (lemmaEqSameImage!959 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493 (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489)))))))

(declare-fun lt!1268481 () Unit!55617)

(declare-fun lemmaSemiInverse!1525 (TokenValueInjection!11440 BalanceConc!23172) Unit!55617)

(assert (=> b!3653681 (= lt!1268481 (lemmaSemiInverse!1525 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493))))

(declare-fun lt!1268460 () C!21256)

(declare-fun bm!264104 () Bool)

(declare-fun call!264114 () Unit!55617)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (Regex!10535 List!38663 C!21256) Unit!55617)

(assert (=> bm!264104 (= call!264114 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268460))))

(declare-fun b!3653682 () Bool)

(declare-fun res!1482587 () Bool)

(declare-fun e!2262222 () Bool)

(assert (=> b!3653682 (=> (not res!1482587) (not e!2262222))))

(declare-fun lt!1268482 () tuple2!38404)

(declare-fun isEmpty!22844 (List!38663) Bool)

(assert (=> b!3653682 (= res!1482587 (isEmpty!22844 (_2!22336 lt!1268482)))))

(declare-fun b!3653683 () Bool)

(declare-fun e!2262206 () Unit!55617)

(declare-fun Unit!55619 () Unit!55617)

(assert (=> b!3653683 (= e!2262206 Unit!55619)))

(declare-fun lt!1268463 () Unit!55617)

(declare-fun rule!403 () Rule!11352)

(declare-fun lt!1268491 () C!21256)

(declare-fun lt!1268480 () List!38663)

(assert (=> b!3653683 (= lt!1268463 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 rule!403) lt!1268480 lt!1268491))))

(assert (=> b!3653683 false))

(declare-fun b!3653684 () Bool)

(declare-fun Unit!55620 () Unit!55617)

(assert (=> b!3653684 (= e!2262206 Unit!55620)))

(declare-fun b!3653685 () Bool)

(declare-fun e!2262202 () Unit!55617)

(declare-fun e!2262234 () Unit!55617)

(assert (=> b!3653685 (= e!2262202 e!2262234)))

(declare-fun c!631476 () Bool)

(assert (=> b!3653685 (= c!631476 (isSeparator!5776 (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun e!2262223 () Bool)

(assert (=> b!3653686 (= e!2262223 (and tp!1113649 tp!1113643))))

(declare-fun b!3653687 () Bool)

(declare-fun e!2262204 () Bool)

(declare-fun e!2262224 () Bool)

(assert (=> b!3653687 (= e!2262204 e!2262224)))

(declare-fun res!1482573 () Bool)

(assert (=> b!3653687 (=> res!1482573 e!2262224)))

(declare-fun lt!1268458 () List!38663)

(declare-fun contains!7617 (List!38663 C!21256) Bool)

(assert (=> b!3653687 (= res!1482573 (contains!7617 lt!1268458 lt!1268460))))

(declare-fun suffix!1395 () List!38663)

(declare-fun head!7794 (List!38663) C!21256)

(assert (=> b!3653687 (= lt!1268460 (head!7794 suffix!1395))))

(declare-fun usedCharacters!988 (Regex!10535) List!38663)

(assert (=> b!3653687 (= lt!1268458 (usedCharacters!988 (regex!5776 rule!403)))))

(declare-fun call!264111 () Unit!55617)

(declare-fun bm!264105 () Bool)

(assert (=> bm!264105 (= call!264111 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268491))))

(declare-fun b!3653689 () Bool)

(assert (=> b!3653689 false))

(declare-fun lt!1268459 () Unit!55617)

(assert (=> b!3653689 (= lt!1268459 call!264114)))

(declare-fun call!264109 () Bool)

(assert (=> b!3653689 (not call!264109)))

(declare-datatypes ((List!38665 0))(
  ( (Nil!38541) (Cons!38541 (h!43961 Rule!11352) (t!297768 List!38665)) )
))
(declare-fun rules!3307 () List!38665)

(declare-datatypes ((LexerInterface!5365 0))(
  ( (LexerInterfaceExt!5362 (__x!24230 Int)) (Lexer!5363) )
))
(declare-fun thiss!23823 () LexerInterface!5365)

(declare-fun lt!1268490 () Unit!55617)

(declare-fun anOtherTypeRule!33 () Rule!11352)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!422 (LexerInterface!5365 List!38665 List!38665 Rule!11352 Rule!11352 C!21256) Unit!55617)

(assert (=> b!3653689 (= lt!1268490 (lemmaNonSepRuleNotContainsCharContainedInASepRule!422 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) anOtherTypeRule!33 lt!1268460))))

(declare-fun e!2262225 () Unit!55617)

(declare-fun Unit!55621 () Unit!55617)

(assert (=> b!3653689 (= e!2262225 Unit!55621)))

(declare-fun b!3653690 () Bool)

(declare-fun e!2262216 () Bool)

(declare-fun e!2262231 () Bool)

(assert (=> b!3653690 (= e!2262216 e!2262231)))

(declare-fun res!1482589 () Bool)

(assert (=> b!3653690 (=> (not res!1482589) (not e!2262231))))

(declare-fun lt!1268487 () Rule!11352)

(declare-fun matchR!5104 (Regex!10535 List!38663) Bool)

(declare-fun list!14286 (BalanceConc!23172) List!38663)

(declare-fun charsOf!3790 (Token!10918) BalanceConc!23172)

(assert (=> b!3653690 (= res!1482589 (matchR!5104 (regex!5776 lt!1268487) (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))))))

(declare-datatypes ((Option!8181 0))(
  ( (None!8180) (Some!8180 (v!38048 Rule!11352)) )
))
(declare-fun lt!1268456 () Option!8181)

(declare-fun get!12678 (Option!8181) Rule!11352)

(assert (=> b!3653690 (= lt!1268487 (get!12678 lt!1268456))))

(declare-fun bm!264106 () Bool)

(declare-fun call!264113 () List!38663)

(assert (=> bm!264106 (= call!264113 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3653691 () Bool)

(declare-fun e!2262227 () Bool)

(declare-fun e!2262218 () Bool)

(assert (=> b!3653691 (= e!2262227 e!2262218)))

(declare-fun res!1482577 () Bool)

(assert (=> b!3653691 (=> res!1482577 e!2262218)))

(declare-fun lt!1268469 () Int)

(assert (=> b!3653691 (= res!1482577 (>= lt!1268488 lt!1268469))))

(declare-fun lt!1268476 () Unit!55617)

(declare-fun e!2262229 () Unit!55617)

(assert (=> b!3653691 (= lt!1268476 e!2262229)))

(declare-fun c!631474 () Bool)

(assert (=> b!3653691 (= c!631474 (> lt!1268488 lt!1268469))))

(declare-fun lt!1268465 () BalanceConc!23172)

(assert (=> b!3653691 (= lt!1268469 (size!29436 lt!1268465))))

(declare-fun lt!1268468 () Unit!55617)

(assert (=> b!3653691 (= lt!1268468 e!2262202)))

(declare-fun c!631477 () Bool)

(assert (=> b!3653691 (= c!631477 (isSeparator!5776 rule!403))))

(declare-fun lt!1268461 () Unit!55617)

(assert (=> b!3653691 (= lt!1268461 e!2262206)))

(declare-fun c!631475 () Bool)

(assert (=> b!3653691 (= c!631475 (not (contains!7617 lt!1268458 lt!1268491)))))

(assert (=> b!3653691 (= lt!1268491 (head!7794 lt!1268478))))

(declare-fun b!3653692 () Bool)

(declare-fun res!1482592 () Bool)

(assert (=> b!3653692 (=> res!1482592 e!2262215)))

(assert (=> b!3653692 (= res!1482592 (not (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478)))))

(declare-fun b!3653693 () Bool)

(declare-fun res!1482583 () Bool)

(assert (=> b!3653693 (=> res!1482583 e!2262224)))

(assert (=> b!3653693 (= res!1482583 (not (contains!7617 (usedCharacters!988 (regex!5776 anOtherTypeRule!33)) lt!1268460)))))

(declare-fun b!3653694 () Bool)

(declare-fun Unit!55622 () Unit!55617)

(assert (=> b!3653694 (= e!2262234 Unit!55622)))

(declare-fun b!3653695 () Bool)

(assert (=> b!3653695 (= e!2262231 (= (rule!8578 (_1!22336 lt!1268489)) lt!1268487))))

(declare-fun b!3653696 () Bool)

(assert (=> b!3653696 false))

(declare-fun lt!1268486 () Unit!55617)

(assert (=> b!3653696 (= lt!1268486 call!264111)))

(declare-fun call!264112 () Bool)

(assert (=> b!3653696 (not call!264112)))

(declare-fun lt!1268497 () Unit!55617)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!304 (LexerInterface!5365 List!38665 List!38665 Rule!11352 Rule!11352 C!21256) Unit!55617)

(assert (=> b!3653696 (= lt!1268497 (lemmaSepRuleNotContainsCharContainedInANonSepRule!304 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8578 (_1!22336 lt!1268489)) lt!1268491))))

(declare-fun Unit!55623 () Unit!55617)

(assert (=> b!3653696 (= e!2262234 Unit!55623)))

(declare-fun e!2262232 () Bool)

(assert (=> b!3653697 (= e!2262232 (and tp!1113652 tp!1113640))))

(declare-fun b!3653698 () Bool)

(declare-fun e!2262233 () Bool)

(declare-fun e!2262221 () Bool)

(declare-fun tp!1113651 () Bool)

(assert (=> b!3653698 (= e!2262233 (and e!2262221 tp!1113651))))

(declare-fun b!3653699 () Bool)

(declare-fun contains!7618 (List!38665 Rule!11352) Bool)

(assert (=> b!3653699 (= e!2262218 (contains!7618 rules!3307 (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun e!2262205 () Bool)

(declare-fun b!3653700 () Bool)

(declare-fun tp!1113644 () Bool)

(declare-fun inv!51993 (String!43364) Bool)

(declare-fun inv!51996 (TokenValueInjection!11440) Bool)

(assert (=> b!3653700 (= e!2262205 (and tp!1113644 (inv!51993 (tag!6544 rule!403)) (inv!51996 (transformation!5776 rule!403)) e!2262223))))

(declare-fun b!3653701 () Bool)

(declare-fun e!2262217 () Unit!55617)

(assert (=> b!3653701 (= e!2262202 e!2262217)))

(declare-fun c!631472 () Bool)

(assert (=> b!3653701 (= c!631472 (not (isSeparator!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3653702 () Bool)

(declare-fun res!1482588 () Bool)

(declare-fun e!2262211 () Bool)

(assert (=> b!3653702 (=> (not res!1482588) (not e!2262211))))

(assert (=> b!3653702 (= res!1482588 (contains!7618 rules!3307 rule!403))))

(declare-fun b!3653703 () Bool)

(declare-fun e!2262203 () Bool)

(declare-fun tp!1113642 () Bool)

(assert (=> b!3653703 (= e!2262203 (and tp!1113642 (inv!51993 (tag!6544 anOtherTypeRule!33)) (inv!51996 (transformation!5776 anOtherTypeRule!33)) e!2262232))))

(declare-fun b!3653704 () Bool)

(declare-fun e!2262228 () Bool)

(assert (=> b!3653704 (= e!2262211 e!2262228)))

(declare-fun res!1482582 () Bool)

(assert (=> b!3653704 (=> (not res!1482582) (not e!2262228))))

(declare-fun lt!1268467 () Option!8180)

(declare-fun isDefined!6412 (Option!8180) Bool)

(assert (=> b!3653704 (= res!1482582 (isDefined!6412 lt!1268467))))

(declare-fun maxPrefix!2899 (LexerInterface!5365 List!38665 List!38663) Option!8180)

(assert (=> b!3653704 (= lt!1268467 (maxPrefix!2899 thiss!23823 rules!3307 lt!1268480))))

(assert (=> b!3653704 (= lt!1268480 (list!14286 lt!1268465))))

(declare-fun token!511 () Token!10918)

(assert (=> b!3653704 (= lt!1268465 (charsOf!3790 token!511))))

(declare-fun b!3653705 () Bool)

(assert (=> b!3653705 (= e!2262220 e!2262227)))

(declare-fun res!1482575 () Bool)

(assert (=> b!3653705 (=> res!1482575 e!2262227)))

(declare-fun lt!1268479 () List!38663)

(declare-fun lt!1268466 () Option!8180)

(assert (=> b!3653705 (= res!1482575 (or (not (= lt!1268479 (_2!22336 lt!1268489))) (not (= lt!1268466 (Some!8179 (tuple2!38405 (_1!22336 lt!1268489) lt!1268479))))))))

(assert (=> b!3653705 (= (_2!22336 lt!1268489) lt!1268479)))

(declare-fun lt!1268474 () Unit!55617)

(declare-fun lt!1268492 () List!38663)

(declare-fun lemmaSamePrefixThenSameSuffix!1466 (List!38663 List!38663 List!38663 List!38663 List!38663) Unit!55617)

(assert (=> b!3653705 (= lt!1268474 (lemmaSamePrefixThenSameSuffix!1466 lt!1268478 (_2!22336 lt!1268489) lt!1268478 lt!1268479 lt!1268492))))

(declare-fun getSuffix!1692 (List!38663 List!38663) List!38663)

(assert (=> b!3653705 (= lt!1268479 (getSuffix!1692 lt!1268492 lt!1268478))))

(declare-fun lt!1268498 () Int)

(declare-fun lt!1268455 () TokenValue!6006)

(assert (=> b!3653705 (= lt!1268466 (Some!8179 (tuple2!38405 (Token!10919 lt!1268455 (rule!8578 (_1!22336 lt!1268489)) lt!1268498 lt!1268478) (_2!22336 lt!1268489))))))

(declare-fun maxPrefixOneRule!2037 (LexerInterface!5365 Rule!11352 List!38663) Option!8180)

(assert (=> b!3653705 (= lt!1268466 (maxPrefixOneRule!2037 thiss!23823 (rule!8578 (_1!22336 lt!1268489)) lt!1268492))))

(declare-fun size!29437 (List!38663) Int)

(assert (=> b!3653705 (= lt!1268498 (size!29437 lt!1268478))))

(assert (=> b!3653705 (= lt!1268455 (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) (seqFromList!4325 lt!1268478)))))

(declare-fun lt!1268471 () Unit!55617)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1093 (LexerInterface!5365 List!38665 List!38663 List!38663 List!38663 Rule!11352) Unit!55617)

(assert (=> b!3653705 (= lt!1268471 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1093 thiss!23823 rules!3307 lt!1268478 lt!1268492 (_2!22336 lt!1268489) (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun b!3653706 () Bool)

(declare-fun e!2262230 () Bool)

(declare-fun tp_is_empty!18153 () Bool)

(declare-fun tp!1113641 () Bool)

(assert (=> b!3653706 (= e!2262230 (and tp_is_empty!18153 tp!1113641))))

(declare-fun b!3653707 () Bool)

(declare-fun res!1482590 () Bool)

(assert (=> b!3653707 (=> (not res!1482590) (not e!2262211))))

(declare-fun rulesInvariant!4762 (LexerInterface!5365 List!38665) Bool)

(assert (=> b!3653707 (= res!1482590 (rulesInvariant!4762 thiss!23823 rules!3307))))

(declare-fun b!3653708 () Bool)

(declare-fun Unit!55624 () Unit!55617)

(assert (=> b!3653708 (= e!2262229 Unit!55624)))

(declare-fun tp!1113645 () Bool)

(declare-fun b!3653709 () Bool)

(assert (=> b!3653709 (= e!2262221 (and tp!1113645 (inv!51993 (tag!6544 (h!43961 rules!3307))) (inv!51996 (transformation!5776 (h!43961 rules!3307))) e!2262210))))

(declare-fun b!3653710 () Bool)

(declare-fun res!1482578 () Bool)

(assert (=> b!3653710 (=> res!1482578 e!2262224)))

(declare-fun sepAndNonSepRulesDisjointChars!1944 (List!38665 List!38665) Bool)

(assert (=> b!3653710 (= res!1482578 (not (sepAndNonSepRulesDisjointChars!1944 rules!3307 rules!3307)))))

(declare-fun b!3653711 () Bool)

(declare-fun res!1482579 () Bool)

(assert (=> b!3653711 (=> (not res!1482579) (not e!2262211))))

(assert (=> b!3653711 (= res!1482579 (contains!7618 rules!3307 anOtherTypeRule!33))))

(declare-fun bm!264107 () Bool)

(declare-fun call!264110 () List!38663)

(assert (=> bm!264107 (= call!264109 (contains!7617 call!264110 lt!1268460))))

(declare-fun res!1482585 () Bool)

(assert (=> start!341710 (=> (not res!1482585) (not e!2262211))))

(get-info :version)

(assert (=> start!341710 (= res!1482585 ((_ is Lexer!5363) thiss!23823))))

(assert (=> start!341710 e!2262211))

(assert (=> start!341710 e!2262233))

(assert (=> start!341710 e!2262230))

(assert (=> start!341710 true))

(declare-fun e!2262209 () Bool)

(declare-fun inv!51997 (Token!10918) Bool)

(assert (=> start!341710 (and (inv!51997 token!511) e!2262209)))

(assert (=> start!341710 e!2262205))

(assert (=> start!341710 e!2262203))

(declare-fun b!3653688 () Bool)

(declare-fun res!1482593 () Bool)

(assert (=> b!3653688 (=> (not res!1482593) (not e!2262222))))

(assert (=> b!3653688 (= res!1482593 (= (rule!8578 token!511) rule!403))))

(declare-fun bm!264108 () Bool)

(assert (=> bm!264108 (= call!264110 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3653712 () Bool)

(assert (=> b!3653712 (= e!2262224 e!2262215)))

(declare-fun res!1482572 () Bool)

(assert (=> b!3653712 (=> res!1482572 e!2262215)))

(declare-fun isPrefix!3139 (List!38663 List!38663) Bool)

(assert (=> b!3653712 (= res!1482572 (not (isPrefix!3139 lt!1268478 lt!1268492)))))

(declare-fun ++!9592 (List!38663 List!38663) List!38663)

(assert (=> b!3653712 (isPrefix!3139 lt!1268478 (++!9592 lt!1268478 (_2!22336 lt!1268489)))))

(declare-fun lt!1268473 () Unit!55617)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2058 (List!38663 List!38663) Unit!55617)

(assert (=> b!3653712 (= lt!1268473 (lemmaConcatTwoListThenFirstIsPrefix!2058 lt!1268478 (_2!22336 lt!1268489)))))

(assert (=> b!3653712 (= lt!1268478 (list!14286 lt!1268493))))

(assert (=> b!3653712 (= lt!1268493 (charsOf!3790 (_1!22336 lt!1268489)))))

(assert (=> b!3653712 e!2262216))

(declare-fun res!1482576 () Bool)

(assert (=> b!3653712 (=> (not res!1482576) (not e!2262216))))

(declare-fun isDefined!6413 (Option!8181) Bool)

(assert (=> b!3653712 (= res!1482576 (isDefined!6413 lt!1268456))))

(declare-fun getRuleFromTag!1380 (LexerInterface!5365 List!38665 String!43364) Option!8181)

(assert (=> b!3653712 (= lt!1268456 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun lt!1268462 () Unit!55617)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1380 (LexerInterface!5365 List!38665 List!38663 Token!10918) Unit!55617)

(assert (=> b!3653712 (= lt!1268462 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1380 thiss!23823 rules!3307 lt!1268492 (_1!22336 lt!1268489)))))

(declare-fun get!12679 (Option!8180) tuple2!38404)

(assert (=> b!3653712 (= lt!1268489 (get!12679 lt!1268483))))

(declare-fun lt!1268484 () Unit!55617)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1043 (LexerInterface!5365 List!38665 List!38663 List!38663) Unit!55617)

(assert (=> b!3653712 (= lt!1268484 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1043 thiss!23823 rules!3307 lt!1268480 suffix!1395))))

(assert (=> b!3653712 (= lt!1268483 (maxPrefix!2899 thiss!23823 rules!3307 lt!1268492))))

(assert (=> b!3653712 (isPrefix!3139 lt!1268480 lt!1268492)))

(declare-fun lt!1268495 () Unit!55617)

(assert (=> b!3653712 (= lt!1268495 (lemmaConcatTwoListThenFirstIsPrefix!2058 lt!1268480 suffix!1395))))

(assert (=> b!3653712 (= lt!1268492 (++!9592 lt!1268480 suffix!1395))))

(declare-fun e!2262214 () Bool)

(assert (=> b!3653713 (= e!2262214 (and tp!1113650 tp!1113654))))

(declare-fun b!3653714 () Bool)

(declare-fun res!1482580 () Bool)

(assert (=> b!3653714 (=> res!1482580 e!2262204)))

(assert (=> b!3653714 (= res!1482580 (isEmpty!22844 suffix!1395))))

(declare-fun b!3653715 () Bool)

(assert (=> b!3653715 false))

(declare-fun lt!1268470 () Unit!55617)

(assert (=> b!3653715 (= lt!1268470 call!264111)))

(assert (=> b!3653715 (not call!264112)))

(declare-fun lt!1268496 () Unit!55617)

(assert (=> b!3653715 (= lt!1268496 (lemmaNonSepRuleNotContainsCharContainedInASepRule!422 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) rule!403 lt!1268491))))

(declare-fun Unit!55625 () Unit!55617)

(assert (=> b!3653715 (= e!2262217 Unit!55625)))

(declare-fun b!3653716 () Bool)

(declare-fun res!1482584 () Bool)

(assert (=> b!3653716 (=> (not res!1482584) (not e!2262211))))

(assert (=> b!3653716 (= res!1482584 (not (= (isSeparator!5776 anOtherTypeRule!33) (isSeparator!5776 rule!403))))))

(declare-fun tp!1113646 () Bool)

(declare-fun e!2262219 () Bool)

(declare-fun b!3653717 () Bool)

(assert (=> b!3653717 (= e!2262219 (and tp!1113646 (inv!51993 (tag!6544 (rule!8578 token!511))) (inv!51996 (transformation!5776 (rule!8578 token!511))) e!2262214))))

(declare-fun b!3653718 () Bool)

(assert (=> b!3653718 (= e!2262228 e!2262222)))

(declare-fun res!1482581 () Bool)

(assert (=> b!3653718 (=> (not res!1482581) (not e!2262222))))

(assert (=> b!3653718 (= res!1482581 (= (_1!22336 lt!1268482) token!511))))

(assert (=> b!3653718 (= lt!1268482 (get!12679 lt!1268467))))

(declare-fun b!3653719 () Bool)

(declare-fun Unit!55626 () Unit!55617)

(assert (=> b!3653719 (= e!2262217 Unit!55626)))

(declare-fun bm!264109 () Bool)

(assert (=> bm!264109 (= call!264112 (contains!7617 call!264113 lt!1268491))))

(declare-fun b!3653720 () Bool)

(declare-fun tp!1113648 () Bool)

(declare-fun inv!21 (TokenValue!6006) Bool)

(assert (=> b!3653720 (= e!2262209 (and (inv!21 (value!185076 token!511)) e!2262219 tp!1113648))))

(declare-fun b!3653721 () Bool)

(assert (=> b!3653721 (= e!2262222 (not e!2262204))))

(declare-fun res!1482574 () Bool)

(assert (=> b!3653721 (=> res!1482574 e!2262204)))

(assert (=> b!3653721 (= res!1482574 (not (matchR!5104 (regex!5776 rule!403) lt!1268480)))))

(declare-fun ruleValid!2040 (LexerInterface!5365 Rule!11352) Bool)

(assert (=> b!3653721 (ruleValid!2040 thiss!23823 rule!403)))

(declare-fun lt!1268477 () Unit!55617)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1194 (LexerInterface!5365 Rule!11352 List!38665) Unit!55617)

(assert (=> b!3653721 (= lt!1268477 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1194 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3653722 () Bool)

(assert (=> b!3653722 (= e!2262229 e!2262225)))

(declare-fun lt!1268464 () Unit!55617)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!84 (List!38663 List!38663 List!38663 List!38663) Unit!55617)

(assert (=> b!3653722 (= lt!1268464 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!84 lt!1268480 suffix!1395 lt!1268478 lt!1268492))))

(assert (=> b!3653722 (contains!7617 lt!1268478 lt!1268460)))

(declare-fun c!631473 () Bool)

(assert (=> b!3653722 (= c!631473 (isSeparator!5776 rule!403))))

(declare-fun b!3653723 () Bool)

(assert (=> b!3653723 false))

(declare-fun lt!1268472 () Unit!55617)

(assert (=> b!3653723 (= lt!1268472 call!264114)))

(assert (=> b!3653723 (not call!264109)))

(declare-fun lt!1268457 () Unit!55617)

(assert (=> b!3653723 (= lt!1268457 (lemmaSepRuleNotContainsCharContainedInANonSepRule!304 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8578 (_1!22336 lt!1268489)) lt!1268460))))

(declare-fun Unit!55627 () Unit!55617)

(assert (=> b!3653723 (= e!2262225 Unit!55627)))

(declare-fun b!3653724 () Bool)

(declare-fun res!1482591 () Bool)

(assert (=> b!3653724 (=> (not res!1482591) (not e!2262211))))

(declare-fun isEmpty!22845 (List!38665) Bool)

(assert (=> b!3653724 (= res!1482591 (not (isEmpty!22845 rules!3307)))))

(assert (= (and start!341710 res!1482585) b!3653724))

(assert (= (and b!3653724 res!1482591) b!3653707))

(assert (= (and b!3653707 res!1482590) b!3653702))

(assert (= (and b!3653702 res!1482588) b!3653711))

(assert (= (and b!3653711 res!1482579) b!3653716))

(assert (= (and b!3653716 res!1482584) b!3653704))

(assert (= (and b!3653704 res!1482582) b!3653718))

(assert (= (and b!3653718 res!1482581) b!3653682))

(assert (= (and b!3653682 res!1482587) b!3653688))

(assert (= (and b!3653688 res!1482593) b!3653721))

(assert (= (and b!3653721 (not res!1482574)) b!3653714))

(assert (= (and b!3653714 (not res!1482580)) b!3653687))

(assert (= (and b!3653687 (not res!1482573)) b!3653693))

(assert (= (and b!3653693 (not res!1482583)) b!3653710))

(assert (= (and b!3653710 (not res!1482578)) b!3653712))

(assert (= (and b!3653712 res!1482576) b!3653690))

(assert (= (and b!3653690 res!1482589) b!3653695))

(assert (= (and b!3653712 (not res!1482572)) b!3653692))

(assert (= (and b!3653692 (not res!1482592)) b!3653681))

(assert (= (and b!3653681 (not res!1482586)) b!3653705))

(assert (= (and b!3653705 (not res!1482575)) b!3653691))

(assert (= (and b!3653691 c!631475) b!3653683))

(assert (= (and b!3653691 (not c!631475)) b!3653684))

(assert (= (and b!3653691 c!631477) b!3653701))

(assert (= (and b!3653691 (not c!631477)) b!3653685))

(assert (= (and b!3653701 c!631472) b!3653715))

(assert (= (and b!3653701 (not c!631472)) b!3653719))

(assert (= (and b!3653685 c!631476) b!3653696))

(assert (= (and b!3653685 (not c!631476)) b!3653694))

(assert (= (or b!3653715 b!3653696) bm!264105))

(assert (= (or b!3653715 b!3653696) bm!264106))

(assert (= (or b!3653715 b!3653696) bm!264109))

(assert (= (and b!3653691 c!631474) b!3653722))

(assert (= (and b!3653691 (not c!631474)) b!3653708))

(assert (= (and b!3653722 c!631473) b!3653723))

(assert (= (and b!3653722 (not c!631473)) b!3653689))

(assert (= (or b!3653723 b!3653689) bm!264104))

(assert (= (or b!3653723 b!3653689) bm!264108))

(assert (= (or b!3653723 b!3653689) bm!264107))

(assert (= (and b!3653691 (not res!1482577)) b!3653699))

(assert (= b!3653709 b!3653680))

(assert (= b!3653698 b!3653709))

(assert (= (and start!341710 ((_ is Cons!38541) rules!3307)) b!3653698))

(assert (= (and start!341710 ((_ is Cons!38539) suffix!1395)) b!3653706))

(assert (= b!3653717 b!3653713))

(assert (= b!3653720 b!3653717))

(assert (= start!341710 b!3653720))

(assert (= b!3653700 b!3653686))

(assert (= start!341710 b!3653700))

(assert (= b!3653703 b!3653697))

(assert (= start!341710 b!3653703))

(declare-fun m!4158721 () Bool)

(assert (=> b!3653690 m!4158721))

(assert (=> b!3653690 m!4158721))

(declare-fun m!4158723 () Bool)

(assert (=> b!3653690 m!4158723))

(assert (=> b!3653690 m!4158723))

(declare-fun m!4158725 () Bool)

(assert (=> b!3653690 m!4158725))

(declare-fun m!4158727 () Bool)

(assert (=> b!3653690 m!4158727))

(declare-fun m!4158729 () Bool)

(assert (=> b!3653702 m!4158729))

(declare-fun m!4158731 () Bool)

(assert (=> b!3653689 m!4158731))

(declare-fun m!4158733 () Bool)

(assert (=> b!3653718 m!4158733))

(declare-fun m!4158735 () Bool)

(assert (=> bm!264106 m!4158735))

(declare-fun m!4158737 () Bool)

(assert (=> b!3653693 m!4158737))

(assert (=> b!3653693 m!4158737))

(declare-fun m!4158739 () Bool)

(assert (=> b!3653693 m!4158739))

(declare-fun m!4158741 () Bool)

(assert (=> b!3653723 m!4158741))

(declare-fun m!4158743 () Bool)

(assert (=> bm!264104 m!4158743))

(declare-fun m!4158745 () Bool)

(assert (=> b!3653710 m!4158745))

(declare-fun m!4158747 () Bool)

(assert (=> b!3653682 m!4158747))

(declare-fun m!4158749 () Bool)

(assert (=> b!3653683 m!4158749))

(declare-fun m!4158751 () Bool)

(assert (=> b!3653703 m!4158751))

(declare-fun m!4158753 () Bool)

(assert (=> b!3653703 m!4158753))

(declare-fun m!4158755 () Bool)

(assert (=> b!3653704 m!4158755))

(declare-fun m!4158757 () Bool)

(assert (=> b!3653704 m!4158757))

(declare-fun m!4158759 () Bool)

(assert (=> b!3653704 m!4158759))

(declare-fun m!4158761 () Bool)

(assert (=> b!3653704 m!4158761))

(assert (=> bm!264108 m!4158735))

(declare-fun m!4158763 () Bool)

(assert (=> b!3653722 m!4158763))

(declare-fun m!4158765 () Bool)

(assert (=> b!3653722 m!4158765))

(declare-fun m!4158767 () Bool)

(assert (=> bm!264109 m!4158767))

(declare-fun m!4158769 () Bool)

(assert (=> b!3653687 m!4158769))

(declare-fun m!4158771 () Bool)

(assert (=> b!3653687 m!4158771))

(declare-fun m!4158773 () Bool)

(assert (=> b!3653687 m!4158773))

(declare-fun m!4158775 () Bool)

(assert (=> b!3653699 m!4158775))

(declare-fun m!4158777 () Bool)

(assert (=> b!3653720 m!4158777))

(declare-fun m!4158779 () Bool)

(assert (=> b!3653711 m!4158779))

(declare-fun m!4158781 () Bool)

(assert (=> b!3653721 m!4158781))

(declare-fun m!4158783 () Bool)

(assert (=> b!3653721 m!4158783))

(declare-fun m!4158785 () Bool)

(assert (=> b!3653721 m!4158785))

(declare-fun m!4158787 () Bool)

(assert (=> b!3653717 m!4158787))

(declare-fun m!4158789 () Bool)

(assert (=> b!3653717 m!4158789))

(declare-fun m!4158791 () Bool)

(assert (=> b!3653709 m!4158791))

(declare-fun m!4158793 () Bool)

(assert (=> b!3653709 m!4158793))

(declare-fun m!4158795 () Bool)

(assert (=> b!3653707 m!4158795))

(declare-fun m!4158797 () Bool)

(assert (=> bm!264105 m!4158797))

(declare-fun m!4158799 () Bool)

(assert (=> b!3653715 m!4158799))

(declare-fun m!4158801 () Bool)

(assert (=> b!3653692 m!4158801))

(declare-fun m!4158803 () Bool)

(assert (=> b!3653700 m!4158803))

(declare-fun m!4158805 () Bool)

(assert (=> b!3653700 m!4158805))

(declare-fun m!4158807 () Bool)

(assert (=> b!3653696 m!4158807))

(declare-fun m!4158809 () Bool)

(assert (=> b!3653705 m!4158809))

(declare-fun m!4158811 () Bool)

(assert (=> b!3653705 m!4158811))

(declare-fun m!4158813 () Bool)

(assert (=> b!3653705 m!4158813))

(declare-fun m!4158815 () Bool)

(assert (=> b!3653705 m!4158815))

(assert (=> b!3653705 m!4158813))

(declare-fun m!4158817 () Bool)

(assert (=> b!3653705 m!4158817))

(declare-fun m!4158819 () Bool)

(assert (=> b!3653705 m!4158819))

(declare-fun m!4158821 () Bool)

(assert (=> b!3653705 m!4158821))

(declare-fun m!4158823 () Bool)

(assert (=> b!3653714 m!4158823))

(declare-fun m!4158825 () Bool)

(assert (=> b!3653712 m!4158825))

(declare-fun m!4158827 () Bool)

(assert (=> b!3653712 m!4158827))

(declare-fun m!4158829 () Bool)

(assert (=> b!3653712 m!4158829))

(declare-fun m!4158831 () Bool)

(assert (=> b!3653712 m!4158831))

(declare-fun m!4158833 () Bool)

(assert (=> b!3653712 m!4158833))

(declare-fun m!4158835 () Bool)

(assert (=> b!3653712 m!4158835))

(declare-fun m!4158837 () Bool)

(assert (=> b!3653712 m!4158837))

(assert (=> b!3653712 m!4158829))

(assert (=> b!3653712 m!4158721))

(declare-fun m!4158839 () Bool)

(assert (=> b!3653712 m!4158839))

(declare-fun m!4158841 () Bool)

(assert (=> b!3653712 m!4158841))

(declare-fun m!4158843 () Bool)

(assert (=> b!3653712 m!4158843))

(declare-fun m!4158845 () Bool)

(assert (=> b!3653712 m!4158845))

(declare-fun m!4158847 () Bool)

(assert (=> b!3653712 m!4158847))

(declare-fun m!4158849 () Bool)

(assert (=> b!3653712 m!4158849))

(declare-fun m!4158851 () Bool)

(assert (=> b!3653712 m!4158851))

(declare-fun m!4158853 () Bool)

(assert (=> b!3653691 m!4158853))

(declare-fun m!4158855 () Bool)

(assert (=> b!3653691 m!4158855))

(declare-fun m!4158857 () Bool)

(assert (=> b!3653691 m!4158857))

(declare-fun m!4158859 () Bool)

(assert (=> b!3653681 m!4158859))

(declare-fun m!4158861 () Bool)

(assert (=> b!3653681 m!4158861))

(declare-fun m!4158863 () Bool)

(assert (=> b!3653681 m!4158863))

(declare-fun m!4158865 () Bool)

(assert (=> b!3653681 m!4158865))

(assert (=> b!3653681 m!4158863))

(declare-fun m!4158867 () Bool)

(assert (=> b!3653681 m!4158867))

(declare-fun m!4158869 () Bool)

(assert (=> b!3653681 m!4158869))

(declare-fun m!4158871 () Bool)

(assert (=> start!341710 m!4158871))

(declare-fun m!4158873 () Bool)

(assert (=> bm!264107 m!4158873))

(declare-fun m!4158875 () Bool)

(assert (=> b!3653724 m!4158875))

(check-sat b_and!270495 (not b!3653720) (not b!3653696) tp_is_empty!18153 (not b!3653712) (not b!3653687) (not b!3653693) (not start!341710) (not bm!264105) (not b!3653704) (not b!3653681) (not b!3653702) (not b!3653698) (not b!3653714) (not bm!264109) (not b!3653715) (not b!3653692) (not b!3653710) (not b!3653690) (not b_next!96931) (not b!3653699) (not b!3653717) (not b_next!96927) b_and!270497 b_and!270493 (not b_next!96933) (not bm!264106) (not bm!264108) (not b_next!96935) (not b!3653707) (not b_next!96921) (not b!3653689) (not b!3653723) b_and!270489 (not b!3653721) (not b!3653709) (not b!3653706) (not b!3653682) (not bm!264107) (not b_next!96923) (not b!3653705) (not bm!264104) b_and!270491 (not b!3653683) (not b!3653691) (not b_next!96929) (not b!3653722) (not b_next!96925) (not b!3653700) (not b!3653724) (not b!3653711) (not b!3653703) b_and!270483 b_and!270485 (not b!3653718) b_and!270487)
(check-sat b_and!270495 (not b_next!96931) (not b_next!96927) (not b_next!96935) (not b_next!96921) b_and!270489 (not b_next!96929) (not b_next!96925) b_and!270487 b_and!270497 b_and!270493 (not b_next!96933) (not b_next!96923) b_and!270491 b_and!270483 b_and!270485)
(get-model)

(declare-fun b!3653797 () Bool)

(declare-fun e!2262273 () List!38663)

(declare-fun e!2262275 () List!38663)

(assert (=> b!3653797 (= e!2262273 e!2262275)))

(declare-fun c!631504 () Bool)

(assert (=> b!3653797 (= c!631504 ((_ is Union!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun c!631506 () Bool)

(declare-fun bm!264118 () Bool)

(declare-fun call!264123 () List!38663)

(assert (=> bm!264118 (= call!264123 (usedCharacters!988 (ite c!631506 (reg!10864 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) (ite c!631504 (regTwo!21583 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) (regOne!21582 (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))))))

(declare-fun b!3653798 () Bool)

(declare-fun e!2262274 () List!38663)

(declare-fun e!2262276 () List!38663)

(assert (=> b!3653798 (= e!2262274 e!2262276)))

(declare-fun c!631505 () Bool)

(assert (=> b!3653798 (= c!631505 ((_ is ElementMatch!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3653799 () Bool)

(assert (=> b!3653799 (= e!2262273 call!264123)))

(declare-fun d!1073235 () Bool)

(declare-fun c!631503 () Bool)

(assert (=> d!1073235 (= c!631503 (or ((_ is EmptyExpr!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) ((_ is EmptyLang!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))))

(assert (=> d!1073235 (= (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) e!2262274)))

(declare-fun bm!264119 () Bool)

(declare-fun call!264126 () List!38663)

(assert (=> bm!264119 (= call!264126 (usedCharacters!988 (ite c!631504 (regOne!21583 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) (regTwo!21582 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))))

(declare-fun b!3653800 () Bool)

(declare-fun call!264125 () List!38663)

(assert (=> b!3653800 (= e!2262275 call!264125)))

(declare-fun b!3653801 () Bool)

(assert (=> b!3653801 (= e!2262276 (Cons!38539 (c!631478 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) Nil!38539))))

(declare-fun bm!264120 () Bool)

(declare-fun call!264124 () List!38663)

(assert (=> bm!264120 (= call!264124 call!264123)))

(declare-fun bm!264121 () Bool)

(assert (=> bm!264121 (= call!264125 (++!9592 (ite c!631504 call!264126 call!264124) (ite c!631504 call!264124 call!264126)))))

(declare-fun b!3653802 () Bool)

(assert (=> b!3653802 (= c!631506 ((_ is Star!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(assert (=> b!3653802 (= e!2262276 e!2262273)))

(declare-fun b!3653803 () Bool)

(assert (=> b!3653803 (= e!2262274 Nil!38539)))

(declare-fun b!3653804 () Bool)

(assert (=> b!3653804 (= e!2262275 call!264125)))

(assert (= (and d!1073235 c!631503) b!3653803))

(assert (= (and d!1073235 (not c!631503)) b!3653798))

(assert (= (and b!3653798 c!631505) b!3653801))

(assert (= (and b!3653798 (not c!631505)) b!3653802))

(assert (= (and b!3653802 c!631506) b!3653799))

(assert (= (and b!3653802 (not c!631506)) b!3653797))

(assert (= (and b!3653797 c!631504) b!3653800))

(assert (= (and b!3653797 (not c!631504)) b!3653804))

(assert (= (or b!3653800 b!3653804) bm!264119))

(assert (= (or b!3653800 b!3653804) bm!264120))

(assert (= (or b!3653800 b!3653804) bm!264121))

(assert (= (or b!3653799 bm!264120) bm!264118))

(declare-fun m!4158945 () Bool)

(assert (=> bm!264118 m!4158945))

(declare-fun m!4158947 () Bool)

(assert (=> bm!264119 m!4158947))

(declare-fun m!4158949 () Bool)

(assert (=> bm!264121 m!4158949))

(assert (=> bm!264108 d!1073235))

(declare-fun d!1073243 () Bool)

(declare-fun lt!1268530 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5562 (List!38663) (InoxSet C!21256))

(assert (=> d!1073243 (= lt!1268530 (select (content!5562 call!264110) lt!1268460))))

(declare-fun e!2262286 () Bool)

(assert (=> d!1073243 (= lt!1268530 e!2262286)))

(declare-fun res!1482638 () Bool)

(assert (=> d!1073243 (=> (not res!1482638) (not e!2262286))))

(assert (=> d!1073243 (= res!1482638 ((_ is Cons!38539) call!264110))))

(assert (=> d!1073243 (= (contains!7617 call!264110 lt!1268460) lt!1268530)))

(declare-fun b!3653813 () Bool)

(declare-fun e!2262285 () Bool)

(assert (=> b!3653813 (= e!2262286 e!2262285)))

(declare-fun res!1482637 () Bool)

(assert (=> b!3653813 (=> res!1482637 e!2262285)))

(assert (=> b!3653813 (= res!1482637 (= (h!43959 call!264110) lt!1268460))))

(declare-fun b!3653814 () Bool)

(assert (=> b!3653814 (= e!2262285 (contains!7617 (t!297766 call!264110) lt!1268460))))

(assert (= (and d!1073243 res!1482638) b!3653813))

(assert (= (and b!3653813 (not res!1482637)) b!3653814))

(declare-fun m!4158953 () Bool)

(assert (=> d!1073243 m!4158953))

(declare-fun m!4158955 () Bool)

(assert (=> d!1073243 m!4158955))

(declare-fun m!4158957 () Bool)

(assert (=> b!3653814 m!4158957))

(assert (=> bm!264107 d!1073243))

(declare-fun d!1073247 () Bool)

(declare-fun lt!1268534 () Int)

(assert (=> d!1073247 (= lt!1268534 (size!29437 (list!14286 lt!1268465)))))

(declare-fun size!29438 (Conc!11779) Int)

(assert (=> d!1073247 (= lt!1268534 (size!29438 (c!631479 lt!1268465)))))

(assert (=> d!1073247 (= (size!29436 lt!1268465) lt!1268534)))

(declare-fun bs!572331 () Bool)

(assert (= bs!572331 d!1073247))

(assert (=> bs!572331 m!4158759))

(assert (=> bs!572331 m!4158759))

(declare-fun m!4158965 () Bool)

(assert (=> bs!572331 m!4158965))

(declare-fun m!4158967 () Bool)

(assert (=> bs!572331 m!4158967))

(assert (=> b!3653691 d!1073247))

(declare-fun d!1073251 () Bool)

(declare-fun lt!1268535 () Bool)

(assert (=> d!1073251 (= lt!1268535 (select (content!5562 lt!1268458) lt!1268491))))

(declare-fun e!2262290 () Bool)

(assert (=> d!1073251 (= lt!1268535 e!2262290)))

(declare-fun res!1482642 () Bool)

(assert (=> d!1073251 (=> (not res!1482642) (not e!2262290))))

(assert (=> d!1073251 (= res!1482642 ((_ is Cons!38539) lt!1268458))))

(assert (=> d!1073251 (= (contains!7617 lt!1268458 lt!1268491) lt!1268535)))

(declare-fun b!3653817 () Bool)

(declare-fun e!2262289 () Bool)

(assert (=> b!3653817 (= e!2262290 e!2262289)))

(declare-fun res!1482641 () Bool)

(assert (=> b!3653817 (=> res!1482641 e!2262289)))

(assert (=> b!3653817 (= res!1482641 (= (h!43959 lt!1268458) lt!1268491))))

(declare-fun b!3653818 () Bool)

(assert (=> b!3653818 (= e!2262289 (contains!7617 (t!297766 lt!1268458) lt!1268491))))

(assert (= (and d!1073251 res!1482642) b!3653817))

(assert (= (and b!3653817 (not res!1482641)) b!3653818))

(declare-fun m!4158969 () Bool)

(assert (=> d!1073251 m!4158969))

(declare-fun m!4158971 () Bool)

(assert (=> d!1073251 m!4158971))

(declare-fun m!4158973 () Bool)

(assert (=> b!3653818 m!4158973))

(assert (=> b!3653691 d!1073251))

(declare-fun d!1073253 () Bool)

(assert (=> d!1073253 (= (head!7794 lt!1268478) (h!43959 lt!1268478))))

(assert (=> b!3653691 d!1073253))

(declare-fun b!3653847 () Bool)

(declare-fun e!2262306 () Bool)

(declare-fun tail!5659 (List!38663) List!38663)

(assert (=> b!3653847 (= e!2262306 (isPrefix!3139 (tail!5659 lt!1268480) (tail!5659 lt!1268492)))))

(declare-fun b!3653846 () Bool)

(declare-fun res!1482664 () Bool)

(assert (=> b!3653846 (=> (not res!1482664) (not e!2262306))))

(assert (=> b!3653846 (= res!1482664 (= (head!7794 lt!1268480) (head!7794 lt!1268492)))))

(declare-fun b!3653848 () Bool)

(declare-fun e!2262307 () Bool)

(assert (=> b!3653848 (= e!2262307 (>= (size!29437 lt!1268492) (size!29437 lt!1268480)))))

(declare-fun b!3653845 () Bool)

(declare-fun e!2262308 () Bool)

(assert (=> b!3653845 (= e!2262308 e!2262306)))

(declare-fun res!1482663 () Bool)

(assert (=> b!3653845 (=> (not res!1482663) (not e!2262306))))

(assert (=> b!3653845 (= res!1482663 (not ((_ is Nil!38539) lt!1268492)))))

(declare-fun d!1073255 () Bool)

(assert (=> d!1073255 e!2262307))

(declare-fun res!1482665 () Bool)

(assert (=> d!1073255 (=> res!1482665 e!2262307)))

(declare-fun lt!1268544 () Bool)

(assert (=> d!1073255 (= res!1482665 (not lt!1268544))))

(assert (=> d!1073255 (= lt!1268544 e!2262308)))

(declare-fun res!1482666 () Bool)

(assert (=> d!1073255 (=> res!1482666 e!2262308)))

(assert (=> d!1073255 (= res!1482666 ((_ is Nil!38539) lt!1268480))))

(assert (=> d!1073255 (= (isPrefix!3139 lt!1268480 lt!1268492) lt!1268544)))

(assert (= (and d!1073255 (not res!1482666)) b!3653845))

(assert (= (and b!3653845 res!1482663) b!3653846))

(assert (= (and b!3653846 res!1482664) b!3653847))

(assert (= (and d!1073255 (not res!1482665)) b!3653848))

(declare-fun m!4158997 () Bool)

(assert (=> b!3653847 m!4158997))

(declare-fun m!4158999 () Bool)

(assert (=> b!3653847 m!4158999))

(assert (=> b!3653847 m!4158997))

(assert (=> b!3653847 m!4158999))

(declare-fun m!4159001 () Bool)

(assert (=> b!3653847 m!4159001))

(declare-fun m!4159003 () Bool)

(assert (=> b!3653846 m!4159003))

(declare-fun m!4159005 () Bool)

(assert (=> b!3653846 m!4159005))

(declare-fun m!4159007 () Bool)

(assert (=> b!3653848 m!4159007))

(declare-fun m!4159009 () Bool)

(assert (=> b!3653848 m!4159009))

(assert (=> b!3653712 d!1073255))

(declare-fun d!1073263 () Bool)

(declare-fun list!14289 (Conc!11779) List!38663)

(assert (=> d!1073263 (= (list!14286 lt!1268493) (list!14289 (c!631479 lt!1268493)))))

(declare-fun bs!572333 () Bool)

(assert (= bs!572333 d!1073263))

(declare-fun m!4159011 () Bool)

(assert (=> bs!572333 m!4159011))

(assert (=> b!3653712 d!1073263))

(declare-fun d!1073265 () Bool)

(declare-fun isEmpty!22848 (Option!8181) Bool)

(assert (=> d!1073265 (= (isDefined!6413 lt!1268456) (not (isEmpty!22848 lt!1268456)))))

(declare-fun bs!572334 () Bool)

(assert (= bs!572334 d!1073265))

(declare-fun m!4159013 () Bool)

(assert (=> bs!572334 m!4159013))

(assert (=> b!3653712 d!1073265))

(declare-fun d!1073267 () Bool)

(declare-fun lt!1268547 () BalanceConc!23172)

(assert (=> d!1073267 (= (list!14286 lt!1268547) (originalCharacters!6490 (_1!22336 lt!1268489)))))

(declare-fun dynLambda!16807 (Int TokenValue!6006) BalanceConc!23172)

(assert (=> d!1073267 (= lt!1268547 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (value!185076 (_1!22336 lt!1268489))))))

(assert (=> d!1073267 (= (charsOf!3790 (_1!22336 lt!1268489)) lt!1268547)))

(declare-fun b_lambda!108341 () Bool)

(assert (=> (not b_lambda!108341) (not d!1073267)))

(declare-fun tb!210869 () Bool)

(declare-fun t!297778 () Bool)

(assert (=> (and b!3653697 (= (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297778) tb!210869))

(declare-fun b!3653853 () Bool)

(declare-fun e!2262311 () Bool)

(declare-fun tp!1113657 () Bool)

(declare-fun inv!51998 (Conc!11779) Bool)

(assert (=> b!3653853 (= e!2262311 (and (inv!51998 (c!631479 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (value!185076 (_1!22336 lt!1268489))))) tp!1113657))))

(declare-fun result!256772 () Bool)

(declare-fun inv!51999 (BalanceConc!23172) Bool)

(assert (=> tb!210869 (= result!256772 (and (inv!51999 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (value!185076 (_1!22336 lt!1268489)))) e!2262311))))

(assert (= tb!210869 b!3653853))

(declare-fun m!4159015 () Bool)

(assert (=> b!3653853 m!4159015))

(declare-fun m!4159017 () Bool)

(assert (=> tb!210869 m!4159017))

(assert (=> d!1073267 t!297778))

(declare-fun b_and!270507 () Bool)

(assert (= b_and!270485 (and (=> t!297778 result!256772) b_and!270507)))

(declare-fun tb!210871 () Bool)

(declare-fun t!297780 () Bool)

(assert (=> (and b!3653686 (= (toChars!7927 (transformation!5776 rule!403)) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297780) tb!210871))

(declare-fun result!256776 () Bool)

(assert (= result!256776 result!256772))

(assert (=> d!1073267 t!297780))

(declare-fun b_and!270509 () Bool)

(assert (= b_and!270489 (and (=> t!297780 result!256776) b_and!270509)))

(declare-fun t!297782 () Bool)

(declare-fun tb!210873 () Bool)

(assert (=> (and b!3653680 (= (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297782) tb!210873))

(declare-fun result!256778 () Bool)

(assert (= result!256778 result!256772))

(assert (=> d!1073267 t!297782))

(declare-fun b_and!270511 () Bool)

(assert (= b_and!270493 (and (=> t!297782 result!256778) b_and!270511)))

(declare-fun t!297784 () Bool)

(declare-fun tb!210875 () Bool)

(assert (=> (and b!3653713 (= (toChars!7927 (transformation!5776 (rule!8578 token!511))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297784) tb!210875))

(declare-fun result!256780 () Bool)

(assert (= result!256780 result!256772))

(assert (=> d!1073267 t!297784))

(declare-fun b_and!270513 () Bool)

(assert (= b_and!270497 (and (=> t!297784 result!256780) b_and!270513)))

(declare-fun m!4159019 () Bool)

(assert (=> d!1073267 m!4159019))

(declare-fun m!4159021 () Bool)

(assert (=> d!1073267 m!4159021))

(assert (=> b!3653712 d!1073267))

(declare-fun b!3653862 () Bool)

(declare-fun e!2262316 () List!38663)

(assert (=> b!3653862 (= e!2262316 suffix!1395)))

(declare-fun b!3653864 () Bool)

(declare-fun res!1482672 () Bool)

(declare-fun e!2262317 () Bool)

(assert (=> b!3653864 (=> (not res!1482672) (not e!2262317))))

(declare-fun lt!1268550 () List!38663)

(assert (=> b!3653864 (= res!1482672 (= (size!29437 lt!1268550) (+ (size!29437 lt!1268480) (size!29437 suffix!1395))))))

(declare-fun b!3653865 () Bool)

(assert (=> b!3653865 (= e!2262317 (or (not (= suffix!1395 Nil!38539)) (= lt!1268550 lt!1268480)))))

(declare-fun d!1073269 () Bool)

(assert (=> d!1073269 e!2262317))

(declare-fun res!1482671 () Bool)

(assert (=> d!1073269 (=> (not res!1482671) (not e!2262317))))

(assert (=> d!1073269 (= res!1482671 (= (content!5562 lt!1268550) ((_ map or) (content!5562 lt!1268480) (content!5562 suffix!1395))))))

(assert (=> d!1073269 (= lt!1268550 e!2262316)))

(declare-fun c!631512 () Bool)

(assert (=> d!1073269 (= c!631512 ((_ is Nil!38539) lt!1268480))))

(assert (=> d!1073269 (= (++!9592 lt!1268480 suffix!1395) lt!1268550)))

(declare-fun b!3653863 () Bool)

(assert (=> b!3653863 (= e!2262316 (Cons!38539 (h!43959 lt!1268480) (++!9592 (t!297766 lt!1268480) suffix!1395)))))

(assert (= (and d!1073269 c!631512) b!3653862))

(assert (= (and d!1073269 (not c!631512)) b!3653863))

(assert (= (and d!1073269 res!1482671) b!3653864))

(assert (= (and b!3653864 res!1482672) b!3653865))

(declare-fun m!4159023 () Bool)

(assert (=> b!3653864 m!4159023))

(assert (=> b!3653864 m!4159009))

(declare-fun m!4159025 () Bool)

(assert (=> b!3653864 m!4159025))

(declare-fun m!4159027 () Bool)

(assert (=> d!1073269 m!4159027))

(declare-fun m!4159029 () Bool)

(assert (=> d!1073269 m!4159029))

(declare-fun m!4159031 () Bool)

(assert (=> d!1073269 m!4159031))

(declare-fun m!4159033 () Bool)

(assert (=> b!3653863 m!4159033))

(assert (=> b!3653712 d!1073269))

(declare-fun d!1073271 () Bool)

(declare-fun e!2262320 () Bool)

(assert (=> d!1073271 e!2262320))

(declare-fun res!1482677 () Bool)

(assert (=> d!1073271 (=> (not res!1482677) (not e!2262320))))

(assert (=> d!1073271 (= res!1482677 (isDefined!6413 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 (_1!22336 lt!1268489))))))))

(declare-fun lt!1268553 () Unit!55617)

(declare-fun choose!21558 (LexerInterface!5365 List!38665 List!38663 Token!10918) Unit!55617)

(assert (=> d!1073271 (= lt!1268553 (choose!21558 thiss!23823 rules!3307 lt!1268492 (_1!22336 lt!1268489)))))

(assert (=> d!1073271 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073271 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1380 thiss!23823 rules!3307 lt!1268492 (_1!22336 lt!1268489)) lt!1268553)))

(declare-fun b!3653870 () Bool)

(declare-fun res!1482678 () Bool)

(assert (=> b!3653870 (=> (not res!1482678) (not e!2262320))))

(assert (=> b!3653870 (= res!1482678 (matchR!5104 (regex!5776 (get!12678 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))) (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))))))

(declare-fun b!3653871 () Bool)

(assert (=> b!3653871 (= e!2262320 (= (rule!8578 (_1!22336 lt!1268489)) (get!12678 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))))))

(assert (= (and d!1073271 res!1482677) b!3653870))

(assert (= (and b!3653870 res!1482678) b!3653871))

(assert (=> d!1073271 m!4158839))

(assert (=> d!1073271 m!4158839))

(declare-fun m!4159035 () Bool)

(assert (=> d!1073271 m!4159035))

(declare-fun m!4159037 () Bool)

(assert (=> d!1073271 m!4159037))

(assert (=> d!1073271 m!4158795))

(assert (=> b!3653870 m!4158721))

(assert (=> b!3653870 m!4158723))

(declare-fun m!4159039 () Bool)

(assert (=> b!3653870 m!4159039))

(assert (=> b!3653870 m!4158721))

(assert (=> b!3653870 m!4158723))

(assert (=> b!3653870 m!4158839))

(declare-fun m!4159041 () Bool)

(assert (=> b!3653870 m!4159041))

(assert (=> b!3653870 m!4158839))

(assert (=> b!3653871 m!4158839))

(assert (=> b!3653871 m!4158839))

(assert (=> b!3653871 m!4159041))

(assert (=> b!3653712 d!1073271))

(declare-fun d!1073273 () Bool)

(assert (=> d!1073273 (isPrefix!3139 lt!1268478 (++!9592 lt!1268478 (_2!22336 lt!1268489)))))

(declare-fun lt!1268556 () Unit!55617)

(declare-fun choose!21559 (List!38663 List!38663) Unit!55617)

(assert (=> d!1073273 (= lt!1268556 (choose!21559 lt!1268478 (_2!22336 lt!1268489)))))

(assert (=> d!1073273 (= (lemmaConcatTwoListThenFirstIsPrefix!2058 lt!1268478 (_2!22336 lt!1268489)) lt!1268556)))

(declare-fun bs!572335 () Bool)

(assert (= bs!572335 d!1073273))

(assert (=> bs!572335 m!4158829))

(assert (=> bs!572335 m!4158829))

(assert (=> bs!572335 m!4158831))

(declare-fun m!4159043 () Bool)

(assert (=> bs!572335 m!4159043))

(assert (=> b!3653712 d!1073273))

(declare-fun b!3653872 () Bool)

(declare-fun e!2262321 () List!38663)

(assert (=> b!3653872 (= e!2262321 (_2!22336 lt!1268489))))

(declare-fun b!3653874 () Bool)

(declare-fun res!1482680 () Bool)

(declare-fun e!2262322 () Bool)

(assert (=> b!3653874 (=> (not res!1482680) (not e!2262322))))

(declare-fun lt!1268557 () List!38663)

(assert (=> b!3653874 (= res!1482680 (= (size!29437 lt!1268557) (+ (size!29437 lt!1268478) (size!29437 (_2!22336 lt!1268489)))))))

(declare-fun b!3653875 () Bool)

(assert (=> b!3653875 (= e!2262322 (or (not (= (_2!22336 lt!1268489) Nil!38539)) (= lt!1268557 lt!1268478)))))

(declare-fun d!1073275 () Bool)

(assert (=> d!1073275 e!2262322))

(declare-fun res!1482679 () Bool)

(assert (=> d!1073275 (=> (not res!1482679) (not e!2262322))))

(assert (=> d!1073275 (= res!1482679 (= (content!5562 lt!1268557) ((_ map or) (content!5562 lt!1268478) (content!5562 (_2!22336 lt!1268489)))))))

(assert (=> d!1073275 (= lt!1268557 e!2262321)))

(declare-fun c!631513 () Bool)

(assert (=> d!1073275 (= c!631513 ((_ is Nil!38539) lt!1268478))))

(assert (=> d!1073275 (= (++!9592 lt!1268478 (_2!22336 lt!1268489)) lt!1268557)))

(declare-fun b!3653873 () Bool)

(assert (=> b!3653873 (= e!2262321 (Cons!38539 (h!43959 lt!1268478) (++!9592 (t!297766 lt!1268478) (_2!22336 lt!1268489))))))

(assert (= (and d!1073275 c!631513) b!3653872))

(assert (= (and d!1073275 (not c!631513)) b!3653873))

(assert (= (and d!1073275 res!1482679) b!3653874))

(assert (= (and b!3653874 res!1482680) b!3653875))

(declare-fun m!4159045 () Bool)

(assert (=> b!3653874 m!4159045))

(assert (=> b!3653874 m!4158815))

(declare-fun m!4159047 () Bool)

(assert (=> b!3653874 m!4159047))

(declare-fun m!4159049 () Bool)

(assert (=> d!1073275 m!4159049))

(declare-fun m!4159051 () Bool)

(assert (=> d!1073275 m!4159051))

(declare-fun m!4159053 () Bool)

(assert (=> d!1073275 m!4159053))

(declare-fun m!4159055 () Bool)

(assert (=> b!3653873 m!4159055))

(assert (=> b!3653712 d!1073275))

(declare-fun b!3653878 () Bool)

(declare-fun e!2262323 () Bool)

(assert (=> b!3653878 (= e!2262323 (isPrefix!3139 (tail!5659 lt!1268478) (tail!5659 (++!9592 lt!1268478 (_2!22336 lt!1268489)))))))

(declare-fun b!3653877 () Bool)

(declare-fun res!1482682 () Bool)

(assert (=> b!3653877 (=> (not res!1482682) (not e!2262323))))

(assert (=> b!3653877 (= res!1482682 (= (head!7794 lt!1268478) (head!7794 (++!9592 lt!1268478 (_2!22336 lt!1268489)))))))

(declare-fun b!3653879 () Bool)

(declare-fun e!2262324 () Bool)

(assert (=> b!3653879 (= e!2262324 (>= (size!29437 (++!9592 lt!1268478 (_2!22336 lt!1268489))) (size!29437 lt!1268478)))))

(declare-fun b!3653876 () Bool)

(declare-fun e!2262325 () Bool)

(assert (=> b!3653876 (= e!2262325 e!2262323)))

(declare-fun res!1482681 () Bool)

(assert (=> b!3653876 (=> (not res!1482681) (not e!2262323))))

(assert (=> b!3653876 (= res!1482681 (not ((_ is Nil!38539) (++!9592 lt!1268478 (_2!22336 lt!1268489)))))))

(declare-fun d!1073277 () Bool)

(assert (=> d!1073277 e!2262324))

(declare-fun res!1482683 () Bool)

(assert (=> d!1073277 (=> res!1482683 e!2262324)))

(declare-fun lt!1268558 () Bool)

(assert (=> d!1073277 (= res!1482683 (not lt!1268558))))

(assert (=> d!1073277 (= lt!1268558 e!2262325)))

(declare-fun res!1482684 () Bool)

(assert (=> d!1073277 (=> res!1482684 e!2262325)))

(assert (=> d!1073277 (= res!1482684 ((_ is Nil!38539) lt!1268478))))

(assert (=> d!1073277 (= (isPrefix!3139 lt!1268478 (++!9592 lt!1268478 (_2!22336 lt!1268489))) lt!1268558)))

(assert (= (and d!1073277 (not res!1482684)) b!3653876))

(assert (= (and b!3653876 res!1482681) b!3653877))

(assert (= (and b!3653877 res!1482682) b!3653878))

(assert (= (and d!1073277 (not res!1482683)) b!3653879))

(declare-fun m!4159057 () Bool)

(assert (=> b!3653878 m!4159057))

(assert (=> b!3653878 m!4158829))

(declare-fun m!4159059 () Bool)

(assert (=> b!3653878 m!4159059))

(assert (=> b!3653878 m!4159057))

(assert (=> b!3653878 m!4159059))

(declare-fun m!4159061 () Bool)

(assert (=> b!3653878 m!4159061))

(assert (=> b!3653877 m!4158857))

(assert (=> b!3653877 m!4158829))

(declare-fun m!4159063 () Bool)

(assert (=> b!3653877 m!4159063))

(assert (=> b!3653879 m!4158829))

(declare-fun m!4159065 () Bool)

(assert (=> b!3653879 m!4159065))

(assert (=> b!3653879 m!4158815))

(assert (=> b!3653712 d!1073277))

(declare-fun b!3653882 () Bool)

(declare-fun e!2262326 () Bool)

(assert (=> b!3653882 (= e!2262326 (isPrefix!3139 (tail!5659 lt!1268478) (tail!5659 lt!1268492)))))

(declare-fun b!3653881 () Bool)

(declare-fun res!1482686 () Bool)

(assert (=> b!3653881 (=> (not res!1482686) (not e!2262326))))

(assert (=> b!3653881 (= res!1482686 (= (head!7794 lt!1268478) (head!7794 lt!1268492)))))

(declare-fun b!3653883 () Bool)

(declare-fun e!2262327 () Bool)

(assert (=> b!3653883 (= e!2262327 (>= (size!29437 lt!1268492) (size!29437 lt!1268478)))))

(declare-fun b!3653880 () Bool)

(declare-fun e!2262328 () Bool)

(assert (=> b!3653880 (= e!2262328 e!2262326)))

(declare-fun res!1482685 () Bool)

(assert (=> b!3653880 (=> (not res!1482685) (not e!2262326))))

(assert (=> b!3653880 (= res!1482685 (not ((_ is Nil!38539) lt!1268492)))))

(declare-fun d!1073279 () Bool)

(assert (=> d!1073279 e!2262327))

(declare-fun res!1482687 () Bool)

(assert (=> d!1073279 (=> res!1482687 e!2262327)))

(declare-fun lt!1268559 () Bool)

(assert (=> d!1073279 (= res!1482687 (not lt!1268559))))

(assert (=> d!1073279 (= lt!1268559 e!2262328)))

(declare-fun res!1482688 () Bool)

(assert (=> d!1073279 (=> res!1482688 e!2262328)))

(assert (=> d!1073279 (= res!1482688 ((_ is Nil!38539) lt!1268478))))

(assert (=> d!1073279 (= (isPrefix!3139 lt!1268478 lt!1268492) lt!1268559)))

(assert (= (and d!1073279 (not res!1482688)) b!3653880))

(assert (= (and b!3653880 res!1482685) b!3653881))

(assert (= (and b!3653881 res!1482686) b!3653882))

(assert (= (and d!1073279 (not res!1482687)) b!3653883))

(assert (=> b!3653882 m!4159057))

(assert (=> b!3653882 m!4158999))

(assert (=> b!3653882 m!4159057))

(assert (=> b!3653882 m!4158999))

(declare-fun m!4159067 () Bool)

(assert (=> b!3653882 m!4159067))

(assert (=> b!3653881 m!4158857))

(assert (=> b!3653881 m!4159005))

(assert (=> b!3653883 m!4159007))

(assert (=> b!3653883 m!4158815))

(assert (=> b!3653712 d!1073279))

(declare-fun e!2262391 () Bool)

(declare-fun lt!1268685 () Token!10918)

(declare-fun b!3653998 () Bool)

(assert (=> b!3653998 (= e!2262391 (= (rule!8578 lt!1268685) (get!12678 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 lt!1268685))))))))

(declare-fun b!3654000 () Bool)

(declare-fun e!2262392 () Unit!55617)

(declare-fun Unit!55630 () Unit!55617)

(assert (=> b!3654000 (= e!2262392 Unit!55630)))

(declare-fun d!1073281 () Bool)

(assert (=> d!1073281 (isDefined!6412 (maxPrefix!2899 thiss!23823 rules!3307 (++!9592 lt!1268480 suffix!1395)))))

(declare-fun lt!1268691 () Unit!55617)

(assert (=> d!1073281 (= lt!1268691 e!2262392)))

(declare-fun c!631537 () Bool)

(declare-fun isEmpty!22849 (Option!8180) Bool)

(assert (=> d!1073281 (= c!631537 (isEmpty!22849 (maxPrefix!2899 thiss!23823 rules!3307 (++!9592 lt!1268480 suffix!1395))))))

(declare-fun lt!1268695 () Unit!55617)

(declare-fun lt!1268688 () Unit!55617)

(assert (=> d!1073281 (= lt!1268695 lt!1268688)))

(assert (=> d!1073281 e!2262391))

(declare-fun res!1482751 () Bool)

(assert (=> d!1073281 (=> (not res!1482751) (not e!2262391))))

(assert (=> d!1073281 (= res!1482751 (isDefined!6413 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 lt!1268685)))))))

(assert (=> d!1073281 (= lt!1268688 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1380 thiss!23823 rules!3307 lt!1268480 lt!1268685))))

(declare-fun lt!1268684 () Unit!55617)

(declare-fun lt!1268690 () Unit!55617)

(assert (=> d!1073281 (= lt!1268684 lt!1268690)))

(declare-fun lt!1268693 () List!38663)

(assert (=> d!1073281 (isPrefix!3139 lt!1268693 (++!9592 lt!1268480 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!512 (List!38663 List!38663 List!38663) Unit!55617)

(assert (=> d!1073281 (= lt!1268690 (lemmaPrefixStaysPrefixWhenAddingToSuffix!512 lt!1268693 lt!1268480 suffix!1395))))

(assert (=> d!1073281 (= lt!1268693 (list!14286 (charsOf!3790 lt!1268685)))))

(declare-fun lt!1268686 () Unit!55617)

(declare-fun lt!1268687 () Unit!55617)

(assert (=> d!1073281 (= lt!1268686 lt!1268687)))

(declare-fun lt!1268696 () List!38663)

(declare-fun lt!1268698 () List!38663)

(assert (=> d!1073281 (isPrefix!3139 lt!1268696 (++!9592 lt!1268696 lt!1268698))))

(assert (=> d!1073281 (= lt!1268687 (lemmaConcatTwoListThenFirstIsPrefix!2058 lt!1268696 lt!1268698))))

(assert (=> d!1073281 (= lt!1268698 (_2!22336 (get!12679 (maxPrefix!2899 thiss!23823 rules!3307 lt!1268480))))))

(assert (=> d!1073281 (= lt!1268696 (list!14286 (charsOf!3790 lt!1268685)))))

(declare-datatypes ((List!38667 0))(
  ( (Nil!38543) (Cons!38543 (h!43963 Token!10918) (t!297890 List!38667)) )
))
(declare-fun head!7796 (List!38667) Token!10918)

(declare-datatypes ((IArray!23567 0))(
  ( (IArray!23568 (innerList!11841 List!38667)) )
))
(declare-datatypes ((Conc!11781 0))(
  ( (Node!11781 (left!30087 Conc!11781) (right!30417 Conc!11781) (csize!23792 Int) (cheight!11992 Int)) (Leaf!18280 (xs!14983 IArray!23567) (csize!23793 Int)) (Empty!11781) )
))
(declare-datatypes ((BalanceConc!23176 0))(
  ( (BalanceConc!23177 (c!631623 Conc!11781)) )
))
(declare-fun list!14290 (BalanceConc!23176) List!38667)

(declare-datatypes ((tuple2!38410 0))(
  ( (tuple2!38411 (_1!22339 BalanceConc!23176) (_2!22339 BalanceConc!23172)) )
))
(declare-fun lex!2544 (LexerInterface!5365 List!38665 BalanceConc!23172) tuple2!38410)

(assert (=> d!1073281 (= lt!1268685 (head!7796 (list!14290 (_1!22339 (lex!2544 thiss!23823 rules!3307 (seqFromList!4325 lt!1268480))))))))

(assert (=> d!1073281 (not (isEmpty!22845 rules!3307))))

(assert (=> d!1073281 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1043 thiss!23823 rules!3307 lt!1268480 suffix!1395) lt!1268691)))

(declare-fun b!3653997 () Bool)

(declare-fun res!1482752 () Bool)

(assert (=> b!3653997 (=> (not res!1482752) (not e!2262391))))

(assert (=> b!3653997 (= res!1482752 (matchR!5104 (regex!5776 (get!12678 (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 lt!1268685))))) (list!14286 (charsOf!3790 lt!1268685))))))

(declare-fun b!3653999 () Bool)

(declare-fun Unit!55631 () Unit!55617)

(assert (=> b!3653999 (= e!2262392 Unit!55631)))

(declare-fun lt!1268683 () List!38663)

(assert (=> b!3653999 (= lt!1268683 (++!9592 lt!1268480 suffix!1395))))

(declare-fun lt!1268682 () Unit!55617)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!548 (LexerInterface!5365 Rule!11352 List!38665 List!38663) Unit!55617)

(assert (=> b!3653999 (= lt!1268682 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!548 thiss!23823 (rule!8578 lt!1268685) rules!3307 lt!1268683))))

(assert (=> b!3653999 (isEmpty!22849 (maxPrefixOneRule!2037 thiss!23823 (rule!8578 lt!1268685) lt!1268683))))

(declare-fun lt!1268694 () Unit!55617)

(assert (=> b!3653999 (= lt!1268694 lt!1268682)))

(declare-fun lt!1268697 () List!38663)

(assert (=> b!3653999 (= lt!1268697 (list!14286 (charsOf!3790 lt!1268685)))))

(declare-fun lt!1268689 () Unit!55617)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!536 (LexerInterface!5365 Rule!11352 List!38663 List!38663) Unit!55617)

(assert (=> b!3653999 (= lt!1268689 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!536 thiss!23823 (rule!8578 lt!1268685) lt!1268697 (++!9592 lt!1268480 suffix!1395)))))

(assert (=> b!3653999 (not (matchR!5104 (regex!5776 (rule!8578 lt!1268685)) lt!1268697))))

(declare-fun lt!1268692 () Unit!55617)

(assert (=> b!3653999 (= lt!1268692 lt!1268689)))

(assert (=> b!3653999 false))

(assert (= (and d!1073281 res!1482751) b!3653997))

(assert (= (and b!3653997 res!1482752) b!3653998))

(assert (= (and d!1073281 c!631537) b!3653999))

(assert (= (and d!1073281 (not c!631537)) b!3654000))

(declare-fun m!4159217 () Bool)

(assert (=> b!3653998 m!4159217))

(assert (=> b!3653998 m!4159217))

(declare-fun m!4159219 () Bool)

(assert (=> b!3653998 m!4159219))

(assert (=> d!1073281 m!4158825))

(declare-fun m!4159221 () Bool)

(assert (=> d!1073281 m!4159221))

(declare-fun m!4159223 () Bool)

(assert (=> d!1073281 m!4159223))

(declare-fun m!4159225 () Bool)

(assert (=> d!1073281 m!4159225))

(assert (=> d!1073281 m!4158875))

(declare-fun m!4159227 () Bool)

(assert (=> d!1073281 m!4159227))

(assert (=> d!1073281 m!4158825))

(assert (=> d!1073281 m!4159223))

(declare-fun m!4159229 () Bool)

(assert (=> d!1073281 m!4159229))

(assert (=> d!1073281 m!4158757))

(declare-fun m!4159231 () Bool)

(assert (=> d!1073281 m!4159231))

(assert (=> d!1073281 m!4159227))

(declare-fun m!4159233 () Bool)

(assert (=> d!1073281 m!4159233))

(assert (=> d!1073281 m!4159217))

(declare-fun m!4159235 () Bool)

(assert (=> d!1073281 m!4159235))

(declare-fun m!4159237 () Bool)

(assert (=> d!1073281 m!4159237))

(declare-fun m!4159239 () Bool)

(assert (=> d!1073281 m!4159239))

(assert (=> d!1073281 m!4158825))

(assert (=> d!1073281 m!4158757))

(declare-fun m!4159241 () Bool)

(assert (=> d!1073281 m!4159241))

(assert (=> d!1073281 m!4159223))

(declare-fun m!4159243 () Bool)

(assert (=> d!1073281 m!4159243))

(declare-fun m!4159245 () Bool)

(assert (=> d!1073281 m!4159245))

(declare-fun m!4159247 () Bool)

(assert (=> d!1073281 m!4159247))

(declare-fun m!4159249 () Bool)

(assert (=> d!1073281 m!4159249))

(assert (=> d!1073281 m!4159247))

(declare-fun m!4159251 () Bool)

(assert (=> d!1073281 m!4159251))

(assert (=> d!1073281 m!4159217))

(assert (=> d!1073281 m!4159241))

(declare-fun m!4159253 () Bool)

(assert (=> d!1073281 m!4159253))

(assert (=> d!1073281 m!4159237))

(assert (=> b!3653997 m!4159217))

(assert (=> b!3653997 m!4159219))

(assert (=> b!3653997 m!4159217))

(assert (=> b!3653997 m!4159241))

(assert (=> b!3653997 m!4159253))

(assert (=> b!3653997 m!4159241))

(assert (=> b!3653997 m!4159253))

(declare-fun m!4159255 () Bool)

(assert (=> b!3653997 m!4159255))

(assert (=> b!3653999 m!4158825))

(declare-fun m!4159257 () Bool)

(assert (=> b!3653999 m!4159257))

(assert (=> b!3653999 m!4159241))

(declare-fun m!4159259 () Bool)

(assert (=> b!3653999 m!4159259))

(declare-fun m!4159261 () Bool)

(assert (=> b!3653999 m!4159261))

(assert (=> b!3653999 m!4159259))

(declare-fun m!4159263 () Bool)

(assert (=> b!3653999 m!4159263))

(declare-fun m!4159265 () Bool)

(assert (=> b!3653999 m!4159265))

(assert (=> b!3653999 m!4158825))

(assert (=> b!3653999 m!4159241))

(assert (=> b!3653999 m!4159253))

(assert (=> b!3653712 d!1073281))

(declare-fun bm!264139 () Bool)

(declare-fun call!264144 () Option!8180)

(assert (=> bm!264139 (= call!264144 (maxPrefixOneRule!2037 thiss!23823 (h!43961 rules!3307) lt!1268492))))

(declare-fun b!3654027 () Bool)

(declare-fun e!2262405 () Option!8180)

(declare-fun lt!1268716 () Option!8180)

(declare-fun lt!1268715 () Option!8180)

(assert (=> b!3654027 (= e!2262405 (ite (and ((_ is None!8179) lt!1268716) ((_ is None!8179) lt!1268715)) None!8179 (ite ((_ is None!8179) lt!1268715) lt!1268716 (ite ((_ is None!8179) lt!1268716) lt!1268715 (ite (>= (size!29435 (_1!22336 (v!38047 lt!1268716))) (size!29435 (_1!22336 (v!38047 lt!1268715)))) lt!1268716 lt!1268715)))))))

(assert (=> b!3654027 (= lt!1268716 call!264144)))

(assert (=> b!3654027 (= lt!1268715 (maxPrefix!2899 thiss!23823 (t!297768 rules!3307) lt!1268492))))

(declare-fun d!1073311 () Bool)

(declare-fun e!2262403 () Bool)

(assert (=> d!1073311 e!2262403))

(declare-fun res!1482767 () Bool)

(assert (=> d!1073311 (=> res!1482767 e!2262403)))

(declare-fun lt!1268718 () Option!8180)

(assert (=> d!1073311 (= res!1482767 (isEmpty!22849 lt!1268718))))

(assert (=> d!1073311 (= lt!1268718 e!2262405)))

(declare-fun c!631545 () Bool)

(assert (=> d!1073311 (= c!631545 (and ((_ is Cons!38541) rules!3307) ((_ is Nil!38541) (t!297768 rules!3307))))))

(declare-fun lt!1268717 () Unit!55617)

(declare-fun lt!1268714 () Unit!55617)

(assert (=> d!1073311 (= lt!1268717 lt!1268714)))

(assert (=> d!1073311 (isPrefix!3139 lt!1268492 lt!1268492)))

(declare-fun lemmaIsPrefixRefl!1982 (List!38663 List!38663) Unit!55617)

(assert (=> d!1073311 (= lt!1268714 (lemmaIsPrefixRefl!1982 lt!1268492 lt!1268492))))

(declare-fun rulesValidInductive!2047 (LexerInterface!5365 List!38665) Bool)

(assert (=> d!1073311 (rulesValidInductive!2047 thiss!23823 rules!3307)))

(assert (=> d!1073311 (= (maxPrefix!2899 thiss!23823 rules!3307 lt!1268492) lt!1268718)))

(declare-fun b!3654028 () Bool)

(assert (=> b!3654028 (= e!2262405 call!264144)))

(declare-fun b!3654029 () Bool)

(declare-fun res!1482768 () Bool)

(declare-fun e!2262404 () Bool)

(assert (=> b!3654029 (=> (not res!1482768) (not e!2262404))))

(assert (=> b!3654029 (= res!1482768 (< (size!29437 (_2!22336 (get!12679 lt!1268718))) (size!29437 lt!1268492)))))

(declare-fun b!3654030 () Bool)

(assert (=> b!3654030 (= e!2262404 (contains!7618 rules!3307 (rule!8578 (_1!22336 (get!12679 lt!1268718)))))))

(declare-fun b!3654031 () Bool)

(assert (=> b!3654031 (= e!2262403 e!2262404)))

(declare-fun res!1482773 () Bool)

(assert (=> b!3654031 (=> (not res!1482773) (not e!2262404))))

(assert (=> b!3654031 (= res!1482773 (isDefined!6412 lt!1268718))))

(declare-fun b!3654032 () Bool)

(declare-fun res!1482769 () Bool)

(assert (=> b!3654032 (=> (not res!1482769) (not e!2262404))))

(assert (=> b!3654032 (= res!1482769 (= (value!185076 (_1!22336 (get!12679 lt!1268718))) (apply!9278 (transformation!5776 (rule!8578 (_1!22336 (get!12679 lt!1268718)))) (seqFromList!4325 (originalCharacters!6490 (_1!22336 (get!12679 lt!1268718)))))))))

(declare-fun b!3654033 () Bool)

(declare-fun res!1482772 () Bool)

(assert (=> b!3654033 (=> (not res!1482772) (not e!2262404))))

(assert (=> b!3654033 (= res!1482772 (= (++!9592 (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268718)))) (_2!22336 (get!12679 lt!1268718))) lt!1268492))))

(declare-fun b!3654034 () Bool)

(declare-fun res!1482770 () Bool)

(assert (=> b!3654034 (=> (not res!1482770) (not e!2262404))))

(assert (=> b!3654034 (= res!1482770 (= (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268718)))) (originalCharacters!6490 (_1!22336 (get!12679 lt!1268718)))))))

(declare-fun b!3654035 () Bool)

(declare-fun res!1482771 () Bool)

(assert (=> b!3654035 (=> (not res!1482771) (not e!2262404))))

(assert (=> b!3654035 (= res!1482771 (matchR!5104 (regex!5776 (rule!8578 (_1!22336 (get!12679 lt!1268718)))) (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268718))))))))

(assert (= (and d!1073311 c!631545) b!3654028))

(assert (= (and d!1073311 (not c!631545)) b!3654027))

(assert (= (or b!3654028 b!3654027) bm!264139))

(assert (= (and d!1073311 (not res!1482767)) b!3654031))

(assert (= (and b!3654031 res!1482773) b!3654034))

(assert (= (and b!3654034 res!1482770) b!3654029))

(assert (= (and b!3654029 res!1482768) b!3654033))

(assert (= (and b!3654033 res!1482772) b!3654032))

(assert (= (and b!3654032 res!1482769) b!3654035))

(assert (= (and b!3654035 res!1482771) b!3654030))

(declare-fun m!4159277 () Bool)

(assert (=> b!3654029 m!4159277))

(declare-fun m!4159279 () Bool)

(assert (=> b!3654029 m!4159279))

(assert (=> b!3654029 m!4159007))

(assert (=> b!3654034 m!4159277))

(declare-fun m!4159281 () Bool)

(assert (=> b!3654034 m!4159281))

(assert (=> b!3654034 m!4159281))

(declare-fun m!4159283 () Bool)

(assert (=> b!3654034 m!4159283))

(declare-fun m!4159285 () Bool)

(assert (=> b!3654031 m!4159285))

(declare-fun m!4159287 () Bool)

(assert (=> b!3654027 m!4159287))

(declare-fun m!4159289 () Bool)

(assert (=> bm!264139 m!4159289))

(assert (=> b!3654032 m!4159277))

(declare-fun m!4159291 () Bool)

(assert (=> b!3654032 m!4159291))

(assert (=> b!3654032 m!4159291))

(declare-fun m!4159293 () Bool)

(assert (=> b!3654032 m!4159293))

(assert (=> b!3654030 m!4159277))

(declare-fun m!4159295 () Bool)

(assert (=> b!3654030 m!4159295))

(declare-fun m!4159297 () Bool)

(assert (=> d!1073311 m!4159297))

(declare-fun m!4159299 () Bool)

(assert (=> d!1073311 m!4159299))

(declare-fun m!4159301 () Bool)

(assert (=> d!1073311 m!4159301))

(declare-fun m!4159303 () Bool)

(assert (=> d!1073311 m!4159303))

(assert (=> b!3654033 m!4159277))

(assert (=> b!3654033 m!4159281))

(assert (=> b!3654033 m!4159281))

(assert (=> b!3654033 m!4159283))

(assert (=> b!3654033 m!4159283))

(declare-fun m!4159305 () Bool)

(assert (=> b!3654033 m!4159305))

(assert (=> b!3654035 m!4159277))

(assert (=> b!3654035 m!4159281))

(assert (=> b!3654035 m!4159281))

(assert (=> b!3654035 m!4159283))

(assert (=> b!3654035 m!4159283))

(declare-fun m!4159307 () Bool)

(assert (=> b!3654035 m!4159307))

(assert (=> b!3653712 d!1073311))

(declare-fun d!1073317 () Bool)

(assert (=> d!1073317 (= (get!12679 lt!1268483) (v!38047 lt!1268483))))

(assert (=> b!3653712 d!1073317))

(declare-fun d!1073319 () Bool)

(declare-fun e!2262417 () Bool)

(assert (=> d!1073319 e!2262417))

(declare-fun res!1482779 () Bool)

(assert (=> d!1073319 (=> res!1482779 e!2262417)))

(declare-fun lt!1268726 () Option!8181)

(assert (=> d!1073319 (= res!1482779 (isEmpty!22848 lt!1268726))))

(declare-fun e!2262414 () Option!8181)

(assert (=> d!1073319 (= lt!1268726 e!2262414)))

(declare-fun c!631550 () Bool)

(assert (=> d!1073319 (= c!631550 (and ((_ is Cons!38541) rules!3307) (= (tag!6544 (h!43961 rules!3307)) (tag!6544 (rule!8578 (_1!22336 lt!1268489))))))))

(assert (=> d!1073319 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073319 (= (getRuleFromTag!1380 thiss!23823 rules!3307 (tag!6544 (rule!8578 (_1!22336 lt!1268489)))) lt!1268726)))

(declare-fun b!3654048 () Bool)

(declare-fun e!2262415 () Option!8181)

(assert (=> b!3654048 (= e!2262414 e!2262415)))

(declare-fun c!631551 () Bool)

(assert (=> b!3654048 (= c!631551 (and ((_ is Cons!38541) rules!3307) (not (= (tag!6544 (h!43961 rules!3307)) (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))))))

(declare-fun b!3654049 () Bool)

(declare-fun lt!1268725 () Unit!55617)

(declare-fun lt!1268727 () Unit!55617)

(assert (=> b!3654049 (= lt!1268725 lt!1268727)))

(assert (=> b!3654049 (rulesInvariant!4762 thiss!23823 (t!297768 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!591 (LexerInterface!5365 Rule!11352 List!38665) Unit!55617)

(assert (=> b!3654049 (= lt!1268727 (lemmaInvariantOnRulesThenOnTail!591 thiss!23823 (h!43961 rules!3307) (t!297768 rules!3307)))))

(assert (=> b!3654049 (= e!2262415 (getRuleFromTag!1380 thiss!23823 (t!297768 rules!3307) (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3654050 () Bool)

(declare-fun e!2262416 () Bool)

(assert (=> b!3654050 (= e!2262417 e!2262416)))

(declare-fun res!1482778 () Bool)

(assert (=> b!3654050 (=> (not res!1482778) (not e!2262416))))

(assert (=> b!3654050 (= res!1482778 (contains!7618 rules!3307 (get!12678 lt!1268726)))))

(declare-fun b!3654051 () Bool)

(assert (=> b!3654051 (= e!2262414 (Some!8180 (h!43961 rules!3307)))))

(declare-fun b!3654052 () Bool)

(assert (=> b!3654052 (= e!2262416 (= (tag!6544 (get!12678 lt!1268726)) (tag!6544 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3654053 () Bool)

(assert (=> b!3654053 (= e!2262415 None!8180)))

(assert (= (and d!1073319 c!631550) b!3654051))

(assert (= (and d!1073319 (not c!631550)) b!3654048))

(assert (= (and b!3654048 c!631551) b!3654049))

(assert (= (and b!3654048 (not c!631551)) b!3654053))

(assert (= (and d!1073319 (not res!1482779)) b!3654050))

(assert (= (and b!3654050 res!1482778) b!3654052))

(declare-fun m!4159309 () Bool)

(assert (=> d!1073319 m!4159309))

(assert (=> d!1073319 m!4158795))

(declare-fun m!4159311 () Bool)

(assert (=> b!3654049 m!4159311))

(declare-fun m!4159313 () Bool)

(assert (=> b!3654049 m!4159313))

(declare-fun m!4159315 () Bool)

(assert (=> b!3654049 m!4159315))

(declare-fun m!4159317 () Bool)

(assert (=> b!3654050 m!4159317))

(assert (=> b!3654050 m!4159317))

(declare-fun m!4159319 () Bool)

(assert (=> b!3654050 m!4159319))

(assert (=> b!3654052 m!4159317))

(assert (=> b!3653712 d!1073319))

(declare-fun d!1073321 () Bool)

(assert (=> d!1073321 (isPrefix!3139 lt!1268480 (++!9592 lt!1268480 suffix!1395))))

(declare-fun lt!1268728 () Unit!55617)

(assert (=> d!1073321 (= lt!1268728 (choose!21559 lt!1268480 suffix!1395))))

(assert (=> d!1073321 (= (lemmaConcatTwoListThenFirstIsPrefix!2058 lt!1268480 suffix!1395) lt!1268728)))

(declare-fun bs!572340 () Bool)

(assert (= bs!572340 d!1073321))

(assert (=> bs!572340 m!4158825))

(assert (=> bs!572340 m!4158825))

(declare-fun m!4159321 () Bool)

(assert (=> bs!572340 m!4159321))

(declare-fun m!4159323 () Bool)

(assert (=> bs!572340 m!4159323))

(assert (=> b!3653712 d!1073321))

(declare-fun d!1073323 () Bool)

(declare-fun lt!1268729 () Bool)

(assert (=> d!1073323 (= lt!1268729 (select (content!5562 (usedCharacters!988 (regex!5776 anOtherTypeRule!33))) lt!1268460))))

(declare-fun e!2262419 () Bool)

(assert (=> d!1073323 (= lt!1268729 e!2262419)))

(declare-fun res!1482781 () Bool)

(assert (=> d!1073323 (=> (not res!1482781) (not e!2262419))))

(assert (=> d!1073323 (= res!1482781 ((_ is Cons!38539) (usedCharacters!988 (regex!5776 anOtherTypeRule!33))))))

(assert (=> d!1073323 (= (contains!7617 (usedCharacters!988 (regex!5776 anOtherTypeRule!33)) lt!1268460) lt!1268729)))

(declare-fun b!3654054 () Bool)

(declare-fun e!2262418 () Bool)

(assert (=> b!3654054 (= e!2262419 e!2262418)))

(declare-fun res!1482780 () Bool)

(assert (=> b!3654054 (=> res!1482780 e!2262418)))

(assert (=> b!3654054 (= res!1482780 (= (h!43959 (usedCharacters!988 (regex!5776 anOtherTypeRule!33))) lt!1268460))))

(declare-fun b!3654055 () Bool)

(assert (=> b!3654055 (= e!2262418 (contains!7617 (t!297766 (usedCharacters!988 (regex!5776 anOtherTypeRule!33))) lt!1268460))))

(assert (= (and d!1073323 res!1482781) b!3654054))

(assert (= (and b!3654054 (not res!1482780)) b!3654055))

(assert (=> d!1073323 m!4158737))

(declare-fun m!4159325 () Bool)

(assert (=> d!1073323 m!4159325))

(declare-fun m!4159327 () Bool)

(assert (=> d!1073323 m!4159327))

(declare-fun m!4159329 () Bool)

(assert (=> b!3654055 m!4159329))

(assert (=> b!3653693 d!1073323))

(declare-fun b!3654056 () Bool)

(declare-fun e!2262420 () List!38663)

(declare-fun e!2262422 () List!38663)

(assert (=> b!3654056 (= e!2262420 e!2262422)))

(declare-fun c!631553 () Bool)

(assert (=> b!3654056 (= c!631553 ((_ is Union!10535) (regex!5776 anOtherTypeRule!33)))))

(declare-fun c!631555 () Bool)

(declare-fun bm!264140 () Bool)

(declare-fun call!264145 () List!38663)

(assert (=> bm!264140 (= call!264145 (usedCharacters!988 (ite c!631555 (reg!10864 (regex!5776 anOtherTypeRule!33)) (ite c!631553 (regTwo!21583 (regex!5776 anOtherTypeRule!33)) (regOne!21582 (regex!5776 anOtherTypeRule!33))))))))

(declare-fun b!3654057 () Bool)

(declare-fun e!2262421 () List!38663)

(declare-fun e!2262423 () List!38663)

(assert (=> b!3654057 (= e!2262421 e!2262423)))

(declare-fun c!631554 () Bool)

(assert (=> b!3654057 (= c!631554 ((_ is ElementMatch!10535) (regex!5776 anOtherTypeRule!33)))))

(declare-fun b!3654058 () Bool)

(assert (=> b!3654058 (= e!2262420 call!264145)))

(declare-fun d!1073325 () Bool)

(declare-fun c!631552 () Bool)

(assert (=> d!1073325 (= c!631552 (or ((_ is EmptyExpr!10535) (regex!5776 anOtherTypeRule!33)) ((_ is EmptyLang!10535) (regex!5776 anOtherTypeRule!33))))))

(assert (=> d!1073325 (= (usedCharacters!988 (regex!5776 anOtherTypeRule!33)) e!2262421)))

(declare-fun bm!264141 () Bool)

(declare-fun call!264148 () List!38663)

(assert (=> bm!264141 (= call!264148 (usedCharacters!988 (ite c!631553 (regOne!21583 (regex!5776 anOtherTypeRule!33)) (regTwo!21582 (regex!5776 anOtherTypeRule!33)))))))

(declare-fun b!3654059 () Bool)

(declare-fun call!264147 () List!38663)

(assert (=> b!3654059 (= e!2262422 call!264147)))

(declare-fun b!3654060 () Bool)

(assert (=> b!3654060 (= e!2262423 (Cons!38539 (c!631478 (regex!5776 anOtherTypeRule!33)) Nil!38539))))

(declare-fun bm!264142 () Bool)

(declare-fun call!264146 () List!38663)

(assert (=> bm!264142 (= call!264146 call!264145)))

(declare-fun bm!264143 () Bool)

(assert (=> bm!264143 (= call!264147 (++!9592 (ite c!631553 call!264148 call!264146) (ite c!631553 call!264146 call!264148)))))

(declare-fun b!3654061 () Bool)

(assert (=> b!3654061 (= c!631555 ((_ is Star!10535) (regex!5776 anOtherTypeRule!33)))))

(assert (=> b!3654061 (= e!2262423 e!2262420)))

(declare-fun b!3654062 () Bool)

(assert (=> b!3654062 (= e!2262421 Nil!38539)))

(declare-fun b!3654063 () Bool)

(assert (=> b!3654063 (= e!2262422 call!264147)))

(assert (= (and d!1073325 c!631552) b!3654062))

(assert (= (and d!1073325 (not c!631552)) b!3654057))

(assert (= (and b!3654057 c!631554) b!3654060))

(assert (= (and b!3654057 (not c!631554)) b!3654061))

(assert (= (and b!3654061 c!631555) b!3654058))

(assert (= (and b!3654061 (not c!631555)) b!3654056))

(assert (= (and b!3654056 c!631553) b!3654059))

(assert (= (and b!3654056 (not c!631553)) b!3654063))

(assert (= (or b!3654059 b!3654063) bm!264141))

(assert (= (or b!3654059 b!3654063) bm!264142))

(assert (= (or b!3654059 b!3654063) bm!264143))

(assert (= (or b!3654058 bm!264142) bm!264140))

(declare-fun m!4159331 () Bool)

(assert (=> bm!264140 m!4159331))

(declare-fun m!4159333 () Bool)

(assert (=> bm!264141 m!4159333))

(declare-fun m!4159335 () Bool)

(assert (=> bm!264143 m!4159335))

(assert (=> b!3653693 d!1073325))

(declare-fun b!3654092 () Bool)

(declare-fun e!2262442 () Bool)

(declare-fun e!2262438 () Bool)

(assert (=> b!3654092 (= e!2262442 e!2262438)))

(declare-fun c!631563 () Bool)

(assert (=> b!3654092 (= c!631563 ((_ is EmptyLang!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3654093 () Bool)

(declare-fun e!2262441 () Bool)

(assert (=> b!3654093 (= e!2262441 (not (= (head!7794 lt!1268478) (c!631478 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))))

(declare-fun b!3654094 () Bool)

(declare-fun lt!1268732 () Bool)

(declare-fun call!264151 () Bool)

(assert (=> b!3654094 (= e!2262442 (= lt!1268732 call!264151))))

(declare-fun b!3654095 () Bool)

(declare-fun res!1482805 () Bool)

(declare-fun e!2262443 () Bool)

(assert (=> b!3654095 (=> (not res!1482805) (not e!2262443))))

(assert (=> b!3654095 (= res!1482805 (isEmpty!22844 (tail!5659 lt!1268478)))))

(declare-fun b!3654096 () Bool)

(declare-fun res!1482800 () Bool)

(declare-fun e!2262439 () Bool)

(assert (=> b!3654096 (=> res!1482800 e!2262439)))

(assert (=> b!3654096 (= res!1482800 e!2262443)))

(declare-fun res!1482798 () Bool)

(assert (=> b!3654096 (=> (not res!1482798) (not e!2262443))))

(assert (=> b!3654096 (= res!1482798 lt!1268732)))

(declare-fun b!3654097 () Bool)

(declare-fun res!1482804 () Bool)

(assert (=> b!3654097 (=> (not res!1482804) (not e!2262443))))

(assert (=> b!3654097 (= res!1482804 (not call!264151))))

(declare-fun b!3654098 () Bool)

(assert (=> b!3654098 (= e!2262438 (not lt!1268732))))

(declare-fun b!3654099 () Bool)

(assert (=> b!3654099 (= e!2262443 (= (head!7794 lt!1268478) (c!631478 (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))))

(declare-fun b!3654100 () Bool)

(declare-fun e!2262440 () Bool)

(declare-fun derivativeStep!3209 (Regex!10535 C!21256) Regex!10535)

(assert (=> b!3654100 (= e!2262440 (matchR!5104 (derivativeStep!3209 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) (head!7794 lt!1268478)) (tail!5659 lt!1268478)))))

(declare-fun b!3654101 () Bool)

(declare-fun e!2262444 () Bool)

(assert (=> b!3654101 (= e!2262439 e!2262444)))

(declare-fun res!1482803 () Bool)

(assert (=> b!3654101 (=> (not res!1482803) (not e!2262444))))

(assert (=> b!3654101 (= res!1482803 (not lt!1268732))))

(declare-fun b!3654102 () Bool)

(declare-fun nullable!3660 (Regex!10535) Bool)

(assert (=> b!3654102 (= e!2262440 (nullable!3660 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(declare-fun b!3654103 () Bool)

(declare-fun res!1482802 () Bool)

(assert (=> b!3654103 (=> res!1482802 e!2262441)))

(assert (=> b!3654103 (= res!1482802 (not (isEmpty!22844 (tail!5659 lt!1268478))))))

(declare-fun d!1073327 () Bool)

(assert (=> d!1073327 e!2262442))

(declare-fun c!631564 () Bool)

(assert (=> d!1073327 (= c!631564 ((_ is EmptyExpr!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489)))))))

(assert (=> d!1073327 (= lt!1268732 e!2262440)))

(declare-fun c!631562 () Bool)

(assert (=> d!1073327 (= c!631562 (isEmpty!22844 lt!1268478))))

(declare-fun validRegex!4823 (Regex!10535) Bool)

(assert (=> d!1073327 (validRegex!4823 (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))

(assert (=> d!1073327 (= (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478) lt!1268732)))

(declare-fun bm!264146 () Bool)

(assert (=> bm!264146 (= call!264151 (isEmpty!22844 lt!1268478))))

(declare-fun b!3654104 () Bool)

(assert (=> b!3654104 (= e!2262444 e!2262441)))

(declare-fun res!1482799 () Bool)

(assert (=> b!3654104 (=> res!1482799 e!2262441)))

(assert (=> b!3654104 (= res!1482799 call!264151)))

(declare-fun b!3654105 () Bool)

(declare-fun res!1482801 () Bool)

(assert (=> b!3654105 (=> res!1482801 e!2262439)))

(assert (=> b!3654105 (= res!1482801 (not ((_ is ElementMatch!10535) (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))))

(assert (=> b!3654105 (= e!2262438 e!2262439)))

(assert (= (and d!1073327 c!631562) b!3654102))

(assert (= (and d!1073327 (not c!631562)) b!3654100))

(assert (= (and d!1073327 c!631564) b!3654094))

(assert (= (and d!1073327 (not c!631564)) b!3654092))

(assert (= (and b!3654092 c!631563) b!3654098))

(assert (= (and b!3654092 (not c!631563)) b!3654105))

(assert (= (and b!3654105 (not res!1482801)) b!3654096))

(assert (= (and b!3654096 res!1482798) b!3654097))

(assert (= (and b!3654097 res!1482804) b!3654095))

(assert (= (and b!3654095 res!1482805) b!3654099))

(assert (= (and b!3654096 (not res!1482800)) b!3654101))

(assert (= (and b!3654101 res!1482803) b!3654104))

(assert (= (and b!3654104 (not res!1482799)) b!3654103))

(assert (= (and b!3654103 (not res!1482802)) b!3654093))

(assert (= (or b!3654094 b!3654097 b!3654104) bm!264146))

(assert (=> b!3654099 m!4158857))

(assert (=> b!3654095 m!4159057))

(assert (=> b!3654095 m!4159057))

(declare-fun m!4159337 () Bool)

(assert (=> b!3654095 m!4159337))

(assert (=> b!3654093 m!4158857))

(declare-fun m!4159339 () Bool)

(assert (=> d!1073327 m!4159339))

(declare-fun m!4159341 () Bool)

(assert (=> d!1073327 m!4159341))

(declare-fun m!4159343 () Bool)

(assert (=> b!3654102 m!4159343))

(assert (=> b!3654103 m!4159057))

(assert (=> b!3654103 m!4159057))

(assert (=> b!3654103 m!4159337))

(assert (=> bm!264146 m!4159339))

(assert (=> b!3654100 m!4158857))

(assert (=> b!3654100 m!4158857))

(declare-fun m!4159345 () Bool)

(assert (=> b!3654100 m!4159345))

(assert (=> b!3654100 m!4159057))

(assert (=> b!3654100 m!4159345))

(assert (=> b!3654100 m!4159057))

(declare-fun m!4159347 () Bool)

(assert (=> b!3654100 m!4159347))

(assert (=> b!3653692 d!1073327))

(declare-fun d!1073329 () Bool)

(assert (=> d!1073329 (not (contains!7617 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268491))))

(declare-fun lt!1268735 () Unit!55617)

(declare-fun choose!21561 (LexerInterface!5365 List!38665 List!38665 Rule!11352 Rule!11352 C!21256) Unit!55617)

(assert (=> d!1073329 (= lt!1268735 (choose!21561 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) rule!403 lt!1268491))))

(assert (=> d!1073329 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073329 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!422 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) rule!403 lt!1268491) lt!1268735)))

(declare-fun bs!572341 () Bool)

(assert (= bs!572341 d!1073329))

(assert (=> bs!572341 m!4158735))

(assert (=> bs!572341 m!4158735))

(declare-fun m!4159349 () Bool)

(assert (=> bs!572341 m!4159349))

(declare-fun m!4159351 () Bool)

(assert (=> bs!572341 m!4159351))

(assert (=> bs!572341 m!4158795))

(assert (=> b!3653715 d!1073329))

(declare-fun d!1073331 () Bool)

(assert (=> d!1073331 (= (isEmpty!22844 suffix!1395) ((_ is Nil!38539) suffix!1395))))

(assert (=> b!3653714 d!1073331))

(declare-fun d!1073333 () Bool)

(declare-fun res!1482808 () Bool)

(declare-fun e!2262447 () Bool)

(assert (=> d!1073333 (=> (not res!1482808) (not e!2262447))))

(declare-fun rulesValid!2218 (LexerInterface!5365 List!38665) Bool)

(assert (=> d!1073333 (= res!1482808 (rulesValid!2218 thiss!23823 rules!3307))))

(assert (=> d!1073333 (= (rulesInvariant!4762 thiss!23823 rules!3307) e!2262447)))

(declare-fun b!3654108 () Bool)

(declare-datatypes ((List!38669 0))(
  ( (Nil!38545) (Cons!38545 (h!43965 String!43364) (t!297892 List!38669)) )
))
(declare-fun noDuplicateTag!2214 (LexerInterface!5365 List!38665 List!38669) Bool)

(assert (=> b!3654108 (= e!2262447 (noDuplicateTag!2214 thiss!23823 rules!3307 Nil!38545))))

(assert (= (and d!1073333 res!1482808) b!3654108))

(declare-fun m!4159353 () Bool)

(assert (=> d!1073333 m!4159353))

(declare-fun m!4159355 () Bool)

(assert (=> b!3654108 m!4159355))

(assert (=> b!3653707 d!1073333))

(declare-fun d!1073335 () Bool)

(assert (=> d!1073335 (= (inv!51993 (tag!6544 (h!43961 rules!3307))) (= (mod (str.len (value!185075 (tag!6544 (h!43961 rules!3307)))) 2) 0))))

(assert (=> b!3653709 d!1073335))

(declare-fun d!1073337 () Bool)

(declare-fun res!1482811 () Bool)

(declare-fun e!2262450 () Bool)

(assert (=> d!1073337 (=> (not res!1482811) (not e!2262450))))

(declare-fun semiInverseModEq!2461 (Int Int) Bool)

(assert (=> d!1073337 (= res!1482811 (semiInverseModEq!2461 (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toValue!8068 (transformation!5776 (h!43961 rules!3307)))))))

(assert (=> d!1073337 (= (inv!51996 (transformation!5776 (h!43961 rules!3307))) e!2262450)))

(declare-fun b!3654111 () Bool)

(declare-fun equivClasses!2360 (Int Int) Bool)

(assert (=> b!3654111 (= e!2262450 (equivClasses!2360 (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toValue!8068 (transformation!5776 (h!43961 rules!3307)))))))

(assert (= (and d!1073337 res!1482811) b!3654111))

(declare-fun m!4159357 () Bool)

(assert (=> d!1073337 m!4159357))

(declare-fun m!4159359 () Bool)

(assert (=> b!3654111 m!4159359))

(assert (=> b!3653709 d!1073337))

(declare-fun d!1073339 () Bool)

(assert (=> d!1073339 (not (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478))))

(declare-fun lt!1268738 () Unit!55617)

(declare-fun choose!21563 (Regex!10535 List!38663 C!21256) Unit!55617)

(assert (=> d!1073339 (= lt!1268738 (choose!21563 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268491))))

(assert (=> d!1073339 (validRegex!4823 (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))

(assert (=> d!1073339 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268491) lt!1268738)))

(declare-fun bs!572342 () Bool)

(assert (= bs!572342 d!1073339))

(assert (=> bs!572342 m!4158801))

(declare-fun m!4159361 () Bool)

(assert (=> bs!572342 m!4159361))

(assert (=> bs!572342 m!4159341))

(assert (=> bm!264105 d!1073339))

(declare-fun d!1073341 () Bool)

(declare-fun res!1482816 () Bool)

(declare-fun e!2262455 () Bool)

(assert (=> d!1073341 (=> res!1482816 e!2262455)))

(assert (=> d!1073341 (= res!1482816 (not ((_ is Cons!38541) rules!3307)))))

(assert (=> d!1073341 (= (sepAndNonSepRulesDisjointChars!1944 rules!3307 rules!3307) e!2262455)))

(declare-fun b!3654116 () Bool)

(declare-fun e!2262456 () Bool)

(assert (=> b!3654116 (= e!2262455 e!2262456)))

(declare-fun res!1482817 () Bool)

(assert (=> b!3654116 (=> (not res!1482817) (not e!2262456))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!884 (Rule!11352 List!38665) Bool)

(assert (=> b!3654116 (= res!1482817 (ruleDisjointCharsFromAllFromOtherType!884 (h!43961 rules!3307) rules!3307))))

(declare-fun b!3654117 () Bool)

(assert (=> b!3654117 (= e!2262456 (sepAndNonSepRulesDisjointChars!1944 rules!3307 (t!297768 rules!3307)))))

(assert (= (and d!1073341 (not res!1482816)) b!3654116))

(assert (= (and b!3654116 res!1482817) b!3654117))

(declare-fun m!4159363 () Bool)

(assert (=> b!3654116 m!4159363))

(declare-fun m!4159365 () Bool)

(assert (=> b!3654117 m!4159365))

(assert (=> b!3653710 d!1073341))

(declare-fun b!3654118 () Bool)

(declare-fun e!2262461 () Bool)

(declare-fun e!2262457 () Bool)

(assert (=> b!3654118 (= e!2262461 e!2262457)))

(declare-fun c!631568 () Bool)

(assert (=> b!3654118 (= c!631568 ((_ is EmptyLang!10535) (regex!5776 lt!1268487)))))

(declare-fun b!3654119 () Bool)

(declare-fun e!2262460 () Bool)

(assert (=> b!3654119 (= e!2262460 (not (= (head!7794 (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))) (c!631478 (regex!5776 lt!1268487)))))))

(declare-fun b!3654120 () Bool)

(declare-fun lt!1268739 () Bool)

(declare-fun call!264152 () Bool)

(assert (=> b!3654120 (= e!2262461 (= lt!1268739 call!264152))))

(declare-fun b!3654121 () Bool)

(declare-fun res!1482825 () Bool)

(declare-fun e!2262462 () Bool)

(assert (=> b!3654121 (=> (not res!1482825) (not e!2262462))))

(assert (=> b!3654121 (= res!1482825 (isEmpty!22844 (tail!5659 (list!14286 (charsOf!3790 (_1!22336 lt!1268489))))))))

(declare-fun b!3654122 () Bool)

(declare-fun res!1482820 () Bool)

(declare-fun e!2262458 () Bool)

(assert (=> b!3654122 (=> res!1482820 e!2262458)))

(assert (=> b!3654122 (= res!1482820 e!2262462)))

(declare-fun res!1482818 () Bool)

(assert (=> b!3654122 (=> (not res!1482818) (not e!2262462))))

(assert (=> b!3654122 (= res!1482818 lt!1268739)))

(declare-fun b!3654123 () Bool)

(declare-fun res!1482824 () Bool)

(assert (=> b!3654123 (=> (not res!1482824) (not e!2262462))))

(assert (=> b!3654123 (= res!1482824 (not call!264152))))

(declare-fun b!3654124 () Bool)

(assert (=> b!3654124 (= e!2262457 (not lt!1268739))))

(declare-fun b!3654125 () Bool)

(assert (=> b!3654125 (= e!2262462 (= (head!7794 (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))) (c!631478 (regex!5776 lt!1268487))))))

(declare-fun b!3654126 () Bool)

(declare-fun e!2262459 () Bool)

(assert (=> b!3654126 (= e!2262459 (matchR!5104 (derivativeStep!3209 (regex!5776 lt!1268487) (head!7794 (list!14286 (charsOf!3790 (_1!22336 lt!1268489))))) (tail!5659 (list!14286 (charsOf!3790 (_1!22336 lt!1268489))))))))

(declare-fun b!3654127 () Bool)

(declare-fun e!2262463 () Bool)

(assert (=> b!3654127 (= e!2262458 e!2262463)))

(declare-fun res!1482823 () Bool)

(assert (=> b!3654127 (=> (not res!1482823) (not e!2262463))))

(assert (=> b!3654127 (= res!1482823 (not lt!1268739))))

(declare-fun b!3654128 () Bool)

(assert (=> b!3654128 (= e!2262459 (nullable!3660 (regex!5776 lt!1268487)))))

(declare-fun b!3654129 () Bool)

(declare-fun res!1482822 () Bool)

(assert (=> b!3654129 (=> res!1482822 e!2262460)))

(assert (=> b!3654129 (= res!1482822 (not (isEmpty!22844 (tail!5659 (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))))))))

(declare-fun d!1073343 () Bool)

(assert (=> d!1073343 e!2262461))

(declare-fun c!631569 () Bool)

(assert (=> d!1073343 (= c!631569 ((_ is EmptyExpr!10535) (regex!5776 lt!1268487)))))

(assert (=> d!1073343 (= lt!1268739 e!2262459)))

(declare-fun c!631567 () Bool)

(assert (=> d!1073343 (= c!631567 (isEmpty!22844 (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))))))

(assert (=> d!1073343 (validRegex!4823 (regex!5776 lt!1268487))))

(assert (=> d!1073343 (= (matchR!5104 (regex!5776 lt!1268487) (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))) lt!1268739)))

(declare-fun bm!264147 () Bool)

(assert (=> bm!264147 (= call!264152 (isEmpty!22844 (list!14286 (charsOf!3790 (_1!22336 lt!1268489)))))))

(declare-fun b!3654130 () Bool)

(assert (=> b!3654130 (= e!2262463 e!2262460)))

(declare-fun res!1482819 () Bool)

(assert (=> b!3654130 (=> res!1482819 e!2262460)))

(assert (=> b!3654130 (= res!1482819 call!264152)))

(declare-fun b!3654131 () Bool)

(declare-fun res!1482821 () Bool)

(assert (=> b!3654131 (=> res!1482821 e!2262458)))

(assert (=> b!3654131 (= res!1482821 (not ((_ is ElementMatch!10535) (regex!5776 lt!1268487))))))

(assert (=> b!3654131 (= e!2262457 e!2262458)))

(assert (= (and d!1073343 c!631567) b!3654128))

(assert (= (and d!1073343 (not c!631567)) b!3654126))

(assert (= (and d!1073343 c!631569) b!3654120))

(assert (= (and d!1073343 (not c!631569)) b!3654118))

(assert (= (and b!3654118 c!631568) b!3654124))

(assert (= (and b!3654118 (not c!631568)) b!3654131))

(assert (= (and b!3654131 (not res!1482821)) b!3654122))

(assert (= (and b!3654122 res!1482818) b!3654123))

(assert (= (and b!3654123 res!1482824) b!3654121))

(assert (= (and b!3654121 res!1482825) b!3654125))

(assert (= (and b!3654122 (not res!1482820)) b!3654127))

(assert (= (and b!3654127 res!1482823) b!3654130))

(assert (= (and b!3654130 (not res!1482819)) b!3654129))

(assert (= (and b!3654129 (not res!1482822)) b!3654119))

(assert (= (or b!3654120 b!3654123 b!3654130) bm!264147))

(assert (=> b!3654125 m!4158723))

(declare-fun m!4159367 () Bool)

(assert (=> b!3654125 m!4159367))

(assert (=> b!3654121 m!4158723))

(declare-fun m!4159369 () Bool)

(assert (=> b!3654121 m!4159369))

(assert (=> b!3654121 m!4159369))

(declare-fun m!4159371 () Bool)

(assert (=> b!3654121 m!4159371))

(assert (=> b!3654119 m!4158723))

(assert (=> b!3654119 m!4159367))

(assert (=> d!1073343 m!4158723))

(declare-fun m!4159373 () Bool)

(assert (=> d!1073343 m!4159373))

(declare-fun m!4159375 () Bool)

(assert (=> d!1073343 m!4159375))

(declare-fun m!4159377 () Bool)

(assert (=> b!3654128 m!4159377))

(assert (=> b!3654129 m!4158723))

(assert (=> b!3654129 m!4159369))

(assert (=> b!3654129 m!4159369))

(assert (=> b!3654129 m!4159371))

(assert (=> bm!264147 m!4158723))

(assert (=> bm!264147 m!4159373))

(assert (=> b!3654126 m!4158723))

(assert (=> b!3654126 m!4159367))

(assert (=> b!3654126 m!4159367))

(declare-fun m!4159379 () Bool)

(assert (=> b!3654126 m!4159379))

(assert (=> b!3654126 m!4158723))

(assert (=> b!3654126 m!4159369))

(assert (=> b!3654126 m!4159379))

(assert (=> b!3654126 m!4159369))

(declare-fun m!4159381 () Bool)

(assert (=> b!3654126 m!4159381))

(assert (=> b!3653690 d!1073343))

(declare-fun d!1073345 () Bool)

(assert (=> d!1073345 (= (list!14286 (charsOf!3790 (_1!22336 lt!1268489))) (list!14289 (c!631479 (charsOf!3790 (_1!22336 lt!1268489)))))))

(declare-fun bs!572343 () Bool)

(assert (= bs!572343 d!1073345))

(declare-fun m!4159383 () Bool)

(assert (=> bs!572343 m!4159383))

(assert (=> b!3653690 d!1073345))

(assert (=> b!3653690 d!1073267))

(declare-fun d!1073347 () Bool)

(assert (=> d!1073347 (= (get!12678 lt!1268456) (v!38048 lt!1268456))))

(assert (=> b!3653690 d!1073347))

(declare-fun d!1073349 () Bool)

(assert (=> d!1073349 (not (contains!7617 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268460))))

(declare-fun lt!1268740 () Unit!55617)

(assert (=> d!1073349 (= lt!1268740 (choose!21561 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) anOtherTypeRule!33 lt!1268460))))

(assert (=> d!1073349 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073349 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!422 thiss!23823 rules!3307 rules!3307 (rule!8578 (_1!22336 lt!1268489)) anOtherTypeRule!33 lt!1268460) lt!1268740)))

(declare-fun bs!572344 () Bool)

(assert (= bs!572344 d!1073349))

(assert (=> bs!572344 m!4158735))

(assert (=> bs!572344 m!4158735))

(declare-fun m!4159385 () Bool)

(assert (=> bs!572344 m!4159385))

(declare-fun m!4159387 () Bool)

(assert (=> bs!572344 m!4159387))

(assert (=> bs!572344 m!4158795))

(assert (=> b!3653689 d!1073349))

(assert (=> bm!264106 d!1073235))

(declare-fun d!1073351 () Bool)

(declare-fun lt!1268743 () Bool)

(declare-fun content!5563 (List!38665) (InoxSet Rule!11352))

(assert (=> d!1073351 (= lt!1268743 (select (content!5563 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2262469 () Bool)

(assert (=> d!1073351 (= lt!1268743 e!2262469)))

(declare-fun res!1482831 () Bool)

(assert (=> d!1073351 (=> (not res!1482831) (not e!2262469))))

(assert (=> d!1073351 (= res!1482831 ((_ is Cons!38541) rules!3307))))

(assert (=> d!1073351 (= (contains!7618 rules!3307 anOtherTypeRule!33) lt!1268743)))

(declare-fun b!3654136 () Bool)

(declare-fun e!2262468 () Bool)

(assert (=> b!3654136 (= e!2262469 e!2262468)))

(declare-fun res!1482830 () Bool)

(assert (=> b!3654136 (=> res!1482830 e!2262468)))

(assert (=> b!3654136 (= res!1482830 (= (h!43961 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3654137 () Bool)

(assert (=> b!3654137 (= e!2262468 (contains!7618 (t!297768 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1073351 res!1482831) b!3654136))

(assert (= (and b!3654136 (not res!1482830)) b!3654137))

(declare-fun m!4159389 () Bool)

(assert (=> d!1073351 m!4159389))

(declare-fun m!4159391 () Bool)

(assert (=> d!1073351 m!4159391))

(declare-fun m!4159393 () Bool)

(assert (=> b!3654137 m!4159393))

(assert (=> b!3653711 d!1073351))

(declare-fun d!1073353 () Bool)

(declare-fun lt!1268744 () Bool)

(assert (=> d!1073353 (= lt!1268744 (select (content!5563 rules!3307) rule!403))))

(declare-fun e!2262471 () Bool)

(assert (=> d!1073353 (= lt!1268744 e!2262471)))

(declare-fun res!1482833 () Bool)

(assert (=> d!1073353 (=> (not res!1482833) (not e!2262471))))

(assert (=> d!1073353 (= res!1482833 ((_ is Cons!38541) rules!3307))))

(assert (=> d!1073353 (= (contains!7618 rules!3307 rule!403) lt!1268744)))

(declare-fun b!3654138 () Bool)

(declare-fun e!2262470 () Bool)

(assert (=> b!3654138 (= e!2262471 e!2262470)))

(declare-fun res!1482832 () Bool)

(assert (=> b!3654138 (=> res!1482832 e!2262470)))

(assert (=> b!3654138 (= res!1482832 (= (h!43961 rules!3307) rule!403))))

(declare-fun b!3654139 () Bool)

(assert (=> b!3654139 (= e!2262470 (contains!7618 (t!297768 rules!3307) rule!403))))

(assert (= (and d!1073353 res!1482833) b!3654138))

(assert (= (and b!3654138 (not res!1482832)) b!3654139))

(assert (=> d!1073353 m!4159389))

(declare-fun m!4159395 () Bool)

(assert (=> d!1073353 m!4159395))

(declare-fun m!4159397 () Bool)

(assert (=> b!3654139 m!4159397))

(assert (=> b!3653702 d!1073353))

(declare-fun d!1073355 () Bool)

(assert (=> d!1073355 (not (matchR!5104 (regex!5776 rule!403) lt!1268480))))

(declare-fun lt!1268745 () Unit!55617)

(assert (=> d!1073355 (= lt!1268745 (choose!21563 (regex!5776 rule!403) lt!1268480 lt!1268491))))

(assert (=> d!1073355 (validRegex!4823 (regex!5776 rule!403))))

(assert (=> d!1073355 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 rule!403) lt!1268480 lt!1268491) lt!1268745)))

(declare-fun bs!572345 () Bool)

(assert (= bs!572345 d!1073355))

(assert (=> bs!572345 m!4158781))

(declare-fun m!4159399 () Bool)

(assert (=> bs!572345 m!4159399))

(declare-fun m!4159401 () Bool)

(assert (=> bs!572345 m!4159401))

(assert (=> b!3653683 d!1073355))

(declare-fun d!1073357 () Bool)

(assert (=> d!1073357 (= (isEmpty!22844 (_2!22336 lt!1268482)) ((_ is Nil!38539) (_2!22336 lt!1268482)))))

(assert (=> b!3653682 d!1073357))

(declare-fun b!3654150 () Bool)

(declare-fun e!2262478 () Bool)

(declare-fun inv!17 (TokenValue!6006) Bool)

(assert (=> b!3654150 (= e!2262478 (inv!17 (value!185076 token!511)))))

(declare-fun b!3654151 () Bool)

(declare-fun e!2262480 () Bool)

(assert (=> b!3654151 (= e!2262480 e!2262478)))

(declare-fun c!631575 () Bool)

(assert (=> b!3654151 (= c!631575 ((_ is IntegerValue!18019) (value!185076 token!511)))))

(declare-fun d!1073359 () Bool)

(declare-fun c!631574 () Bool)

(assert (=> d!1073359 (= c!631574 ((_ is IntegerValue!18018) (value!185076 token!511)))))

(assert (=> d!1073359 (= (inv!21 (value!185076 token!511)) e!2262480)))

(declare-fun b!3654152 () Bool)

(declare-fun e!2262479 () Bool)

(declare-fun inv!15 (TokenValue!6006) Bool)

(assert (=> b!3654152 (= e!2262479 (inv!15 (value!185076 token!511)))))

(declare-fun b!3654153 () Bool)

(declare-fun inv!16 (TokenValue!6006) Bool)

(assert (=> b!3654153 (= e!2262480 (inv!16 (value!185076 token!511)))))

(declare-fun b!3654154 () Bool)

(declare-fun res!1482836 () Bool)

(assert (=> b!3654154 (=> res!1482836 e!2262479)))

(assert (=> b!3654154 (= res!1482836 (not ((_ is IntegerValue!18020) (value!185076 token!511))))))

(assert (=> b!3654154 (= e!2262478 e!2262479)))

(assert (= (and d!1073359 c!631574) b!3654153))

(assert (= (and d!1073359 (not c!631574)) b!3654151))

(assert (= (and b!3654151 c!631575) b!3654150))

(assert (= (and b!3654151 (not c!631575)) b!3654154))

(assert (= (and b!3654154 (not res!1482836)) b!3654152))

(declare-fun m!4159403 () Bool)

(assert (=> b!3654150 m!4159403))

(declare-fun m!4159405 () Bool)

(assert (=> b!3654152 m!4159405))

(declare-fun m!4159407 () Bool)

(assert (=> b!3654153 m!4159407))

(assert (=> b!3653720 d!1073359))

(declare-fun d!1073361 () Bool)

(assert (=> d!1073361 (contains!7617 lt!1268478 (head!7794 suffix!1395))))

(declare-fun lt!1268748 () Unit!55617)

(declare-fun choose!21565 (List!38663 List!38663 List!38663 List!38663) Unit!55617)

(assert (=> d!1073361 (= lt!1268748 (choose!21565 lt!1268480 suffix!1395 lt!1268478 lt!1268492))))

(assert (=> d!1073361 (isPrefix!3139 lt!1268478 lt!1268492)))

(assert (=> d!1073361 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!84 lt!1268480 suffix!1395 lt!1268478 lt!1268492) lt!1268748)))

(declare-fun bs!572346 () Bool)

(assert (= bs!572346 d!1073361))

(assert (=> bs!572346 m!4158771))

(assert (=> bs!572346 m!4158771))

(declare-fun m!4159409 () Bool)

(assert (=> bs!572346 m!4159409))

(declare-fun m!4159411 () Bool)

(assert (=> bs!572346 m!4159411))

(assert (=> bs!572346 m!4158851))

(assert (=> b!3653722 d!1073361))

(declare-fun d!1073363 () Bool)

(declare-fun lt!1268749 () Bool)

(assert (=> d!1073363 (= lt!1268749 (select (content!5562 lt!1268478) lt!1268460))))

(declare-fun e!2262482 () Bool)

(assert (=> d!1073363 (= lt!1268749 e!2262482)))

(declare-fun res!1482838 () Bool)

(assert (=> d!1073363 (=> (not res!1482838) (not e!2262482))))

(assert (=> d!1073363 (= res!1482838 ((_ is Cons!38539) lt!1268478))))

(assert (=> d!1073363 (= (contains!7617 lt!1268478 lt!1268460) lt!1268749)))

(declare-fun b!3654155 () Bool)

(declare-fun e!2262481 () Bool)

(assert (=> b!3654155 (= e!2262482 e!2262481)))

(declare-fun res!1482837 () Bool)

(assert (=> b!3654155 (=> res!1482837 e!2262481)))

(assert (=> b!3654155 (= res!1482837 (= (h!43959 lt!1268478) lt!1268460))))

(declare-fun b!3654156 () Bool)

(assert (=> b!3654156 (= e!2262481 (contains!7617 (t!297766 lt!1268478) lt!1268460))))

(assert (= (and d!1073363 res!1482838) b!3654155))

(assert (= (and b!3654155 (not res!1482837)) b!3654156))

(assert (=> d!1073363 m!4159051))

(declare-fun m!4159413 () Bool)

(assert (=> d!1073363 m!4159413))

(declare-fun m!4159415 () Bool)

(assert (=> b!3654156 m!4159415))

(assert (=> b!3653722 d!1073363))

(declare-fun b!3654157 () Bool)

(declare-fun e!2262487 () Bool)

(declare-fun e!2262483 () Bool)

(assert (=> b!3654157 (= e!2262487 e!2262483)))

(declare-fun c!631577 () Bool)

(assert (=> b!3654157 (= c!631577 ((_ is EmptyLang!10535) (regex!5776 rule!403)))))

(declare-fun b!3654158 () Bool)

(declare-fun e!2262486 () Bool)

(assert (=> b!3654158 (= e!2262486 (not (= (head!7794 lt!1268480) (c!631478 (regex!5776 rule!403)))))))

(declare-fun b!3654159 () Bool)

(declare-fun lt!1268750 () Bool)

(declare-fun call!264153 () Bool)

(assert (=> b!3654159 (= e!2262487 (= lt!1268750 call!264153))))

(declare-fun b!3654160 () Bool)

(declare-fun res!1482846 () Bool)

(declare-fun e!2262488 () Bool)

(assert (=> b!3654160 (=> (not res!1482846) (not e!2262488))))

(assert (=> b!3654160 (= res!1482846 (isEmpty!22844 (tail!5659 lt!1268480)))))

(declare-fun b!3654161 () Bool)

(declare-fun res!1482841 () Bool)

(declare-fun e!2262484 () Bool)

(assert (=> b!3654161 (=> res!1482841 e!2262484)))

(assert (=> b!3654161 (= res!1482841 e!2262488)))

(declare-fun res!1482839 () Bool)

(assert (=> b!3654161 (=> (not res!1482839) (not e!2262488))))

(assert (=> b!3654161 (= res!1482839 lt!1268750)))

(declare-fun b!3654162 () Bool)

(declare-fun res!1482845 () Bool)

(assert (=> b!3654162 (=> (not res!1482845) (not e!2262488))))

(assert (=> b!3654162 (= res!1482845 (not call!264153))))

(declare-fun b!3654163 () Bool)

(assert (=> b!3654163 (= e!2262483 (not lt!1268750))))

(declare-fun b!3654164 () Bool)

(assert (=> b!3654164 (= e!2262488 (= (head!7794 lt!1268480) (c!631478 (regex!5776 rule!403))))))

(declare-fun b!3654165 () Bool)

(declare-fun e!2262485 () Bool)

(assert (=> b!3654165 (= e!2262485 (matchR!5104 (derivativeStep!3209 (regex!5776 rule!403) (head!7794 lt!1268480)) (tail!5659 lt!1268480)))))

(declare-fun b!3654166 () Bool)

(declare-fun e!2262489 () Bool)

(assert (=> b!3654166 (= e!2262484 e!2262489)))

(declare-fun res!1482844 () Bool)

(assert (=> b!3654166 (=> (not res!1482844) (not e!2262489))))

(assert (=> b!3654166 (= res!1482844 (not lt!1268750))))

(declare-fun b!3654167 () Bool)

(assert (=> b!3654167 (= e!2262485 (nullable!3660 (regex!5776 rule!403)))))

(declare-fun b!3654168 () Bool)

(declare-fun res!1482843 () Bool)

(assert (=> b!3654168 (=> res!1482843 e!2262486)))

(assert (=> b!3654168 (= res!1482843 (not (isEmpty!22844 (tail!5659 lt!1268480))))))

(declare-fun d!1073365 () Bool)

(assert (=> d!1073365 e!2262487))

(declare-fun c!631578 () Bool)

(assert (=> d!1073365 (= c!631578 ((_ is EmptyExpr!10535) (regex!5776 rule!403)))))

(assert (=> d!1073365 (= lt!1268750 e!2262485)))

(declare-fun c!631576 () Bool)

(assert (=> d!1073365 (= c!631576 (isEmpty!22844 lt!1268480))))

(assert (=> d!1073365 (validRegex!4823 (regex!5776 rule!403))))

(assert (=> d!1073365 (= (matchR!5104 (regex!5776 rule!403) lt!1268480) lt!1268750)))

(declare-fun bm!264148 () Bool)

(assert (=> bm!264148 (= call!264153 (isEmpty!22844 lt!1268480))))

(declare-fun b!3654169 () Bool)

(assert (=> b!3654169 (= e!2262489 e!2262486)))

(declare-fun res!1482840 () Bool)

(assert (=> b!3654169 (=> res!1482840 e!2262486)))

(assert (=> b!3654169 (= res!1482840 call!264153)))

(declare-fun b!3654170 () Bool)

(declare-fun res!1482842 () Bool)

(assert (=> b!3654170 (=> res!1482842 e!2262484)))

(assert (=> b!3654170 (= res!1482842 (not ((_ is ElementMatch!10535) (regex!5776 rule!403))))))

(assert (=> b!3654170 (= e!2262483 e!2262484)))

(assert (= (and d!1073365 c!631576) b!3654167))

(assert (= (and d!1073365 (not c!631576)) b!3654165))

(assert (= (and d!1073365 c!631578) b!3654159))

(assert (= (and d!1073365 (not c!631578)) b!3654157))

(assert (= (and b!3654157 c!631577) b!3654163))

(assert (= (and b!3654157 (not c!631577)) b!3654170))

(assert (= (and b!3654170 (not res!1482842)) b!3654161))

(assert (= (and b!3654161 res!1482839) b!3654162))

(assert (= (and b!3654162 res!1482845) b!3654160))

(assert (= (and b!3654160 res!1482846) b!3654164))

(assert (= (and b!3654161 (not res!1482841)) b!3654166))

(assert (= (and b!3654166 res!1482844) b!3654169))

(assert (= (and b!3654169 (not res!1482840)) b!3654168))

(assert (= (and b!3654168 (not res!1482843)) b!3654158))

(assert (= (or b!3654159 b!3654162 b!3654169) bm!264148))

(assert (=> b!3654164 m!4159003))

(assert (=> b!3654160 m!4158997))

(assert (=> b!3654160 m!4158997))

(declare-fun m!4159417 () Bool)

(assert (=> b!3654160 m!4159417))

(assert (=> b!3654158 m!4159003))

(declare-fun m!4159419 () Bool)

(assert (=> d!1073365 m!4159419))

(assert (=> d!1073365 m!4159401))

(declare-fun m!4159421 () Bool)

(assert (=> b!3654167 m!4159421))

(assert (=> b!3654168 m!4158997))

(assert (=> b!3654168 m!4158997))

(assert (=> b!3654168 m!4159417))

(assert (=> bm!264148 m!4159419))

(assert (=> b!3654165 m!4159003))

(assert (=> b!3654165 m!4159003))

(declare-fun m!4159423 () Bool)

(assert (=> b!3654165 m!4159423))

(assert (=> b!3654165 m!4158997))

(assert (=> b!3654165 m!4159423))

(assert (=> b!3654165 m!4158997))

(declare-fun m!4159425 () Bool)

(assert (=> b!3654165 m!4159425))

(assert (=> b!3653721 d!1073365))

(declare-fun d!1073367 () Bool)

(declare-fun res!1482851 () Bool)

(declare-fun e!2262492 () Bool)

(assert (=> d!1073367 (=> (not res!1482851) (not e!2262492))))

(assert (=> d!1073367 (= res!1482851 (validRegex!4823 (regex!5776 rule!403)))))

(assert (=> d!1073367 (= (ruleValid!2040 thiss!23823 rule!403) e!2262492)))

(declare-fun b!3654175 () Bool)

(declare-fun res!1482852 () Bool)

(assert (=> b!3654175 (=> (not res!1482852) (not e!2262492))))

(assert (=> b!3654175 (= res!1482852 (not (nullable!3660 (regex!5776 rule!403))))))

(declare-fun b!3654176 () Bool)

(assert (=> b!3654176 (= e!2262492 (not (= (tag!6544 rule!403) (String!43365 ""))))))

(assert (= (and d!1073367 res!1482851) b!3654175))

(assert (= (and b!3654175 res!1482852) b!3654176))

(assert (=> d!1073367 m!4159401))

(assert (=> b!3654175 m!4159421))

(assert (=> b!3653721 d!1073367))

(declare-fun d!1073369 () Bool)

(assert (=> d!1073369 (ruleValid!2040 thiss!23823 rule!403)))

(declare-fun lt!1268753 () Unit!55617)

(declare-fun choose!21566 (LexerInterface!5365 Rule!11352 List!38665) Unit!55617)

(assert (=> d!1073369 (= lt!1268753 (choose!21566 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1073369 (contains!7618 rules!3307 rule!403)))

(assert (=> d!1073369 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1194 thiss!23823 rule!403 rules!3307) lt!1268753)))

(declare-fun bs!572347 () Bool)

(assert (= bs!572347 d!1073369))

(assert (=> bs!572347 m!4158783))

(declare-fun m!4159427 () Bool)

(assert (=> bs!572347 m!4159427))

(assert (=> bs!572347 m!4158729))

(assert (=> b!3653721 d!1073369))

(declare-fun d!1073371 () Bool)

(assert (=> d!1073371 (= (inv!51993 (tag!6544 anOtherTypeRule!33)) (= (mod (str.len (value!185075 (tag!6544 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3653703 d!1073371))

(declare-fun d!1073373 () Bool)

(declare-fun res!1482853 () Bool)

(declare-fun e!2262493 () Bool)

(assert (=> d!1073373 (=> (not res!1482853) (not e!2262493))))

(assert (=> d!1073373 (= res!1482853 (semiInverseModEq!2461 (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toValue!8068 (transformation!5776 anOtherTypeRule!33))))))

(assert (=> d!1073373 (= (inv!51996 (transformation!5776 anOtherTypeRule!33)) e!2262493)))

(declare-fun b!3654177 () Bool)

(assert (=> b!3654177 (= e!2262493 (equivClasses!2360 (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toValue!8068 (transformation!5776 anOtherTypeRule!33))))))

(assert (= (and d!1073373 res!1482853) b!3654177))

(declare-fun m!4159429 () Bool)

(assert (=> d!1073373 m!4159429))

(declare-fun m!4159431 () Bool)

(assert (=> b!3654177 m!4159431))

(assert (=> b!3653703 d!1073373))

(declare-fun d!1073375 () Bool)

(assert (=> d!1073375 (not (contains!7617 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268460))))

(declare-fun lt!1268756 () Unit!55617)

(declare-fun choose!21567 (LexerInterface!5365 List!38665 List!38665 Rule!11352 Rule!11352 C!21256) Unit!55617)

(assert (=> d!1073375 (= lt!1268756 (choose!21567 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8578 (_1!22336 lt!1268489)) lt!1268460))))

(assert (=> d!1073375 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073375 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!304 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8578 (_1!22336 lt!1268489)) lt!1268460) lt!1268756)))

(declare-fun bs!572348 () Bool)

(assert (= bs!572348 d!1073375))

(assert (=> bs!572348 m!4158735))

(assert (=> bs!572348 m!4158735))

(assert (=> bs!572348 m!4159385))

(declare-fun m!4159433 () Bool)

(assert (=> bs!572348 m!4159433))

(assert (=> bs!572348 m!4158795))

(assert (=> b!3653723 d!1073375))

(declare-fun d!1073377 () Bool)

(declare-fun res!1482858 () Bool)

(declare-fun e!2262496 () Bool)

(assert (=> d!1073377 (=> (not res!1482858) (not e!2262496))))

(assert (=> d!1073377 (= res!1482858 (not (isEmpty!22844 (originalCharacters!6490 token!511))))))

(assert (=> d!1073377 (= (inv!51997 token!511) e!2262496)))

(declare-fun b!3654182 () Bool)

(declare-fun res!1482859 () Bool)

(assert (=> b!3654182 (=> (not res!1482859) (not e!2262496))))

(assert (=> b!3654182 (= res!1482859 (= (originalCharacters!6490 token!511) (list!14286 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (value!185076 token!511)))))))

(declare-fun b!3654183 () Bool)

(assert (=> b!3654183 (= e!2262496 (= (size!29435 token!511) (size!29437 (originalCharacters!6490 token!511))))))

(assert (= (and d!1073377 res!1482858) b!3654182))

(assert (= (and b!3654182 res!1482859) b!3654183))

(declare-fun b_lambda!108345 () Bool)

(assert (=> (not b_lambda!108345) (not b!3654182)))

(declare-fun t!297794 () Bool)

(declare-fun tb!210885 () Bool)

(assert (=> (and b!3653697 (= (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toChars!7927 (transformation!5776 (rule!8578 token!511)))) t!297794) tb!210885))

(declare-fun b!3654184 () Bool)

(declare-fun e!2262497 () Bool)

(declare-fun tp!1113661 () Bool)

(assert (=> b!3654184 (= e!2262497 (and (inv!51998 (c!631479 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (value!185076 token!511)))) tp!1113661))))

(declare-fun result!256792 () Bool)

(assert (=> tb!210885 (= result!256792 (and (inv!51999 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (value!185076 token!511))) e!2262497))))

(assert (= tb!210885 b!3654184))

(declare-fun m!4159435 () Bool)

(assert (=> b!3654184 m!4159435))

(declare-fun m!4159437 () Bool)

(assert (=> tb!210885 m!4159437))

(assert (=> b!3654182 t!297794))

(declare-fun b_and!270523 () Bool)

(assert (= b_and!270507 (and (=> t!297794 result!256792) b_and!270523)))

(declare-fun t!297796 () Bool)

(declare-fun tb!210887 () Bool)

(assert (=> (and b!3653686 (= (toChars!7927 (transformation!5776 rule!403)) (toChars!7927 (transformation!5776 (rule!8578 token!511)))) t!297796) tb!210887))

(declare-fun result!256794 () Bool)

(assert (= result!256794 result!256792))

(assert (=> b!3654182 t!297796))

(declare-fun b_and!270525 () Bool)

(assert (= b_and!270509 (and (=> t!297796 result!256794) b_and!270525)))

(declare-fun t!297798 () Bool)

(declare-fun tb!210889 () Bool)

(assert (=> (and b!3653680 (= (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toChars!7927 (transformation!5776 (rule!8578 token!511)))) t!297798) tb!210889))

(declare-fun result!256796 () Bool)

(assert (= result!256796 result!256792))

(assert (=> b!3654182 t!297798))

(declare-fun b_and!270527 () Bool)

(assert (= b_and!270511 (and (=> t!297798 result!256796) b_and!270527)))

(declare-fun t!297800 () Bool)

(declare-fun tb!210891 () Bool)

(assert (=> (and b!3653713 (= (toChars!7927 (transformation!5776 (rule!8578 token!511))) (toChars!7927 (transformation!5776 (rule!8578 token!511)))) t!297800) tb!210891))

(declare-fun result!256798 () Bool)

(assert (= result!256798 result!256792))

(assert (=> b!3654182 t!297800))

(declare-fun b_and!270529 () Bool)

(assert (= b_and!270513 (and (=> t!297800 result!256798) b_and!270529)))

(declare-fun m!4159439 () Bool)

(assert (=> d!1073377 m!4159439))

(declare-fun m!4159441 () Bool)

(assert (=> b!3654182 m!4159441))

(assert (=> b!3654182 m!4159441))

(declare-fun m!4159443 () Bool)

(assert (=> b!3654182 m!4159443))

(declare-fun m!4159445 () Bool)

(assert (=> b!3654183 m!4159445))

(assert (=> start!341710 d!1073377))

(declare-fun d!1073379 () Bool)

(declare-fun lt!1268759 () Int)

(assert (=> d!1073379 (>= lt!1268759 0)))

(declare-fun e!2262500 () Int)

(assert (=> d!1073379 (= lt!1268759 e!2262500)))

(declare-fun c!631582 () Bool)

(assert (=> d!1073379 (= c!631582 ((_ is Nil!38539) lt!1268478))))

(assert (=> d!1073379 (= (size!29437 lt!1268478) lt!1268759)))

(declare-fun b!3654189 () Bool)

(assert (=> b!3654189 (= e!2262500 0)))

(declare-fun b!3654190 () Bool)

(assert (=> b!3654190 (= e!2262500 (+ 1 (size!29437 (t!297766 lt!1268478))))))

(assert (= (and d!1073379 c!631582) b!3654189))

(assert (= (and d!1073379 (not c!631582)) b!3654190))

(declare-fun m!4159447 () Bool)

(assert (=> b!3654190 m!4159447))

(assert (=> b!3653705 d!1073379))

(declare-fun d!1073381 () Bool)

(declare-fun dynLambda!16813 (Int BalanceConc!23172) TokenValue!6006)

(assert (=> d!1073381 (= (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) (seqFromList!4325 lt!1268478)) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (seqFromList!4325 lt!1268478)))))

(declare-fun b_lambda!108347 () Bool)

(assert (=> (not b_lambda!108347) (not d!1073381)))

(declare-fun t!297802 () Bool)

(declare-fun tb!210893 () Bool)

(assert (=> (and b!3653697 (= (toValue!8068 (transformation!5776 anOtherTypeRule!33)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297802) tb!210893))

(declare-fun result!256800 () Bool)

(assert (=> tb!210893 (= result!256800 (inv!21 (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (seqFromList!4325 lt!1268478))))))

(declare-fun m!4159449 () Bool)

(assert (=> tb!210893 m!4159449))

(assert (=> d!1073381 t!297802))

(declare-fun b_and!270531 () Bool)

(assert (= b_and!270483 (and (=> t!297802 result!256800) b_and!270531)))

(declare-fun tb!210895 () Bool)

(declare-fun t!297804 () Bool)

(assert (=> (and b!3653686 (= (toValue!8068 (transformation!5776 rule!403)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297804) tb!210895))

(declare-fun result!256804 () Bool)

(assert (= result!256804 result!256800))

(assert (=> d!1073381 t!297804))

(declare-fun b_and!270533 () Bool)

(assert (= b_and!270487 (and (=> t!297804 result!256804) b_and!270533)))

(declare-fun t!297806 () Bool)

(declare-fun tb!210897 () Bool)

(assert (=> (and b!3653680 (= (toValue!8068 (transformation!5776 (h!43961 rules!3307))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297806) tb!210897))

(declare-fun result!256806 () Bool)

(assert (= result!256806 result!256800))

(assert (=> d!1073381 t!297806))

(declare-fun b_and!270535 () Bool)

(assert (= b_and!270491 (and (=> t!297806 result!256806) b_and!270535)))

(declare-fun tb!210899 () Bool)

(declare-fun t!297808 () Bool)

(assert (=> (and b!3653713 (= (toValue!8068 (transformation!5776 (rule!8578 token!511))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297808) tb!210899))

(declare-fun result!256808 () Bool)

(assert (= result!256808 result!256800))

(assert (=> d!1073381 t!297808))

(declare-fun b_and!270537 () Bool)

(assert (= b_and!270495 (and (=> t!297808 result!256808) b_and!270537)))

(assert (=> d!1073381 m!4158813))

(declare-fun m!4159451 () Bool)

(assert (=> d!1073381 m!4159451))

(assert (=> b!3653705 d!1073381))

(declare-fun d!1073383 () Bool)

(declare-fun fromListB!1997 (List!38663) BalanceConc!23172)

(assert (=> d!1073383 (= (seqFromList!4325 lt!1268478) (fromListB!1997 lt!1268478))))

(declare-fun bs!572349 () Bool)

(assert (= bs!572349 d!1073383))

(declare-fun m!4159453 () Bool)

(assert (=> bs!572349 m!4159453))

(assert (=> b!3653705 d!1073383))

(declare-fun d!1073385 () Bool)

(assert (=> d!1073385 (= (maxPrefixOneRule!2037 thiss!23823 (rule!8578 (_1!22336 lt!1268489)) lt!1268492) (Some!8179 (tuple2!38405 (Token!10919 (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) (seqFromList!4325 lt!1268478)) (rule!8578 (_1!22336 lt!1268489)) (size!29437 lt!1268478) lt!1268478) (_2!22336 lt!1268489))))))

(declare-fun lt!1268762 () Unit!55617)

(declare-fun choose!21568 (LexerInterface!5365 List!38665 List!38663 List!38663 List!38663 Rule!11352) Unit!55617)

(assert (=> d!1073385 (= lt!1268762 (choose!21568 thiss!23823 rules!3307 lt!1268478 lt!1268492 (_2!22336 lt!1268489) (rule!8578 (_1!22336 lt!1268489))))))

(assert (=> d!1073385 (not (isEmpty!22845 rules!3307))))

(assert (=> d!1073385 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1093 thiss!23823 rules!3307 lt!1268478 lt!1268492 (_2!22336 lt!1268489) (rule!8578 (_1!22336 lt!1268489))) lt!1268762)))

(declare-fun bs!572350 () Bool)

(assert (= bs!572350 d!1073385))

(assert (=> bs!572350 m!4158813))

(assert (=> bs!572350 m!4158815))

(assert (=> bs!572350 m!4158813))

(assert (=> bs!572350 m!4158817))

(declare-fun m!4159455 () Bool)

(assert (=> bs!572350 m!4159455))

(assert (=> bs!572350 m!4158875))

(assert (=> bs!572350 m!4158811))

(assert (=> b!3653705 d!1073385))

(declare-fun b!3654211 () Bool)

(declare-fun e!2262515 () Option!8180)

(assert (=> b!3654211 (= e!2262515 None!8179)))

(declare-fun b!3654212 () Bool)

(declare-fun res!1482876 () Bool)

(declare-fun e!2262513 () Bool)

(assert (=> b!3654212 (=> (not res!1482876) (not e!2262513))))

(declare-fun lt!1268775 () Option!8180)

(assert (=> b!3654212 (= res!1482876 (= (++!9592 (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268775)))) (_2!22336 (get!12679 lt!1268775))) lt!1268492))))

(declare-fun b!3654213 () Bool)

(declare-fun res!1482874 () Bool)

(assert (=> b!3654213 (=> (not res!1482874) (not e!2262513))))

(assert (=> b!3654213 (= res!1482874 (= (rule!8578 (_1!22336 (get!12679 lt!1268775))) (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun b!3654214 () Bool)

(declare-datatypes ((tuple2!38412 0))(
  ( (tuple2!38413 (_1!22340 List!38663) (_2!22340 List!38663)) )
))
(declare-fun lt!1268777 () tuple2!38412)

(assert (=> b!3654214 (= e!2262515 (Some!8179 (tuple2!38405 (Token!10919 (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) (seqFromList!4325 (_1!22340 lt!1268777))) (rule!8578 (_1!22336 lt!1268489)) (size!29436 (seqFromList!4325 (_1!22340 lt!1268777))) (_1!22340 lt!1268777)) (_2!22340 lt!1268777))))))

(declare-fun lt!1268774 () Unit!55617)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1030 (Regex!10535 List!38663) Unit!55617)

(assert (=> b!3654214 (= lt!1268774 (longestMatchIsAcceptedByMatchOrIsEmpty!1030 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268492))))

(declare-fun res!1482880 () Bool)

(declare-fun findLongestMatchInner!1057 (Regex!10535 List!38663 Int List!38663 List!38663 Int) tuple2!38412)

(assert (=> b!3654214 (= res!1482880 (isEmpty!22844 (_1!22340 (findLongestMatchInner!1057 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) Nil!38539 (size!29437 Nil!38539) lt!1268492 lt!1268492 (size!29437 lt!1268492)))))))

(declare-fun e!2262512 () Bool)

(assert (=> b!3654214 (=> res!1482880 e!2262512)))

(assert (=> b!3654214 e!2262512))

(declare-fun lt!1268776 () Unit!55617)

(assert (=> b!3654214 (= lt!1268776 lt!1268774)))

(declare-fun lt!1268773 () Unit!55617)

(assert (=> b!3654214 (= lt!1268773 (lemmaSemiInverse!1525 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) (seqFromList!4325 (_1!22340 lt!1268777))))))

(declare-fun b!3654215 () Bool)

(declare-fun e!2262514 () Bool)

(assert (=> b!3654215 (= e!2262514 e!2262513)))

(declare-fun res!1482879 () Bool)

(assert (=> b!3654215 (=> (not res!1482879) (not e!2262513))))

(assert (=> b!3654215 (= res!1482879 (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268775))))))))

(declare-fun d!1073387 () Bool)

(assert (=> d!1073387 e!2262514))

(declare-fun res!1482875 () Bool)

(assert (=> d!1073387 (=> res!1482875 e!2262514)))

(assert (=> d!1073387 (= res!1482875 (isEmpty!22849 lt!1268775))))

(assert (=> d!1073387 (= lt!1268775 e!2262515)))

(declare-fun c!631585 () Bool)

(assert (=> d!1073387 (= c!631585 (isEmpty!22844 (_1!22340 lt!1268777)))))

(declare-fun findLongestMatch!972 (Regex!10535 List!38663) tuple2!38412)

(assert (=> d!1073387 (= lt!1268777 (findLongestMatch!972 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268492))))

(assert (=> d!1073387 (ruleValid!2040 thiss!23823 (rule!8578 (_1!22336 lt!1268489)))))

(assert (=> d!1073387 (= (maxPrefixOneRule!2037 thiss!23823 (rule!8578 (_1!22336 lt!1268489)) lt!1268492) lt!1268775)))

(declare-fun b!3654216 () Bool)

(declare-fun res!1482877 () Bool)

(assert (=> b!3654216 (=> (not res!1482877) (not e!2262513))))

(assert (=> b!3654216 (= res!1482877 (< (size!29437 (_2!22336 (get!12679 lt!1268775))) (size!29437 lt!1268492)))))

(declare-fun b!3654217 () Bool)

(assert (=> b!3654217 (= e!2262513 (= (size!29435 (_1!22336 (get!12679 lt!1268775))) (size!29437 (originalCharacters!6490 (_1!22336 (get!12679 lt!1268775))))))))

(declare-fun b!3654218 () Bool)

(assert (=> b!3654218 (= e!2262512 (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) (_1!22340 (findLongestMatchInner!1057 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) Nil!38539 (size!29437 Nil!38539) lt!1268492 lt!1268492 (size!29437 lt!1268492)))))))

(declare-fun b!3654219 () Bool)

(declare-fun res!1482878 () Bool)

(assert (=> b!3654219 (=> (not res!1482878) (not e!2262513))))

(assert (=> b!3654219 (= res!1482878 (= (value!185076 (_1!22336 (get!12679 lt!1268775))) (apply!9278 (transformation!5776 (rule!8578 (_1!22336 (get!12679 lt!1268775)))) (seqFromList!4325 (originalCharacters!6490 (_1!22336 (get!12679 lt!1268775)))))))))

(assert (= (and d!1073387 c!631585) b!3654211))

(assert (= (and d!1073387 (not c!631585)) b!3654214))

(assert (= (and b!3654214 (not res!1482880)) b!3654218))

(assert (= (and d!1073387 (not res!1482875)) b!3654215))

(assert (= (and b!3654215 res!1482879) b!3654212))

(assert (= (and b!3654212 res!1482876) b!3654216))

(assert (= (and b!3654216 res!1482877) b!3654213))

(assert (= (and b!3654213 res!1482874) b!3654219))

(assert (= (and b!3654219 res!1482878) b!3654217))

(declare-fun m!4159457 () Bool)

(assert (=> b!3654218 m!4159457))

(assert (=> b!3654218 m!4159007))

(assert (=> b!3654218 m!4159457))

(assert (=> b!3654218 m!4159007))

(declare-fun m!4159459 () Bool)

(assert (=> b!3654218 m!4159459))

(declare-fun m!4159461 () Bool)

(assert (=> b!3654218 m!4159461))

(declare-fun m!4159463 () Bool)

(assert (=> b!3654212 m!4159463))

(declare-fun m!4159465 () Bool)

(assert (=> b!3654212 m!4159465))

(assert (=> b!3654212 m!4159465))

(declare-fun m!4159467 () Bool)

(assert (=> b!3654212 m!4159467))

(assert (=> b!3654212 m!4159467))

(declare-fun m!4159469 () Bool)

(assert (=> b!3654212 m!4159469))

(assert (=> b!3654213 m!4159463))

(assert (=> b!3654219 m!4159463))

(declare-fun m!4159471 () Bool)

(assert (=> b!3654219 m!4159471))

(assert (=> b!3654219 m!4159471))

(declare-fun m!4159473 () Bool)

(assert (=> b!3654219 m!4159473))

(assert (=> b!3654216 m!4159463))

(declare-fun m!4159475 () Bool)

(assert (=> b!3654216 m!4159475))

(assert (=> b!3654216 m!4159007))

(assert (=> b!3654217 m!4159463))

(declare-fun m!4159477 () Bool)

(assert (=> b!3654217 m!4159477))

(declare-fun m!4159479 () Bool)

(assert (=> d!1073387 m!4159479))

(declare-fun m!4159481 () Bool)

(assert (=> d!1073387 m!4159481))

(declare-fun m!4159483 () Bool)

(assert (=> d!1073387 m!4159483))

(declare-fun m!4159485 () Bool)

(assert (=> d!1073387 m!4159485))

(declare-fun m!4159487 () Bool)

(assert (=> b!3654214 m!4159487))

(declare-fun m!4159489 () Bool)

(assert (=> b!3654214 m!4159489))

(assert (=> b!3654214 m!4159457))

(assert (=> b!3654214 m!4159007))

(assert (=> b!3654214 m!4159459))

(assert (=> b!3654214 m!4159487))

(declare-fun m!4159491 () Bool)

(assert (=> b!3654214 m!4159491))

(assert (=> b!3654214 m!4159487))

(declare-fun m!4159493 () Bool)

(assert (=> b!3654214 m!4159493))

(declare-fun m!4159495 () Bool)

(assert (=> b!3654214 m!4159495))

(assert (=> b!3654214 m!4159487))

(declare-fun m!4159497 () Bool)

(assert (=> b!3654214 m!4159497))

(assert (=> b!3654214 m!4159007))

(assert (=> b!3654214 m!4159457))

(assert (=> b!3654215 m!4159463))

(assert (=> b!3654215 m!4159465))

(assert (=> b!3654215 m!4159465))

(assert (=> b!3654215 m!4159467))

(assert (=> b!3654215 m!4159467))

(declare-fun m!4159499 () Bool)

(assert (=> b!3654215 m!4159499))

(assert (=> b!3653705 d!1073387))

(declare-fun d!1073389 () Bool)

(assert (=> d!1073389 (= (_2!22336 lt!1268489) lt!1268479)))

(declare-fun lt!1268780 () Unit!55617)

(declare-fun choose!21570 (List!38663 List!38663 List!38663 List!38663 List!38663) Unit!55617)

(assert (=> d!1073389 (= lt!1268780 (choose!21570 lt!1268478 (_2!22336 lt!1268489) lt!1268478 lt!1268479 lt!1268492))))

(assert (=> d!1073389 (isPrefix!3139 lt!1268478 lt!1268492)))

(assert (=> d!1073389 (= (lemmaSamePrefixThenSameSuffix!1466 lt!1268478 (_2!22336 lt!1268489) lt!1268478 lt!1268479 lt!1268492) lt!1268780)))

(declare-fun bs!572351 () Bool)

(assert (= bs!572351 d!1073389))

(declare-fun m!4159501 () Bool)

(assert (=> bs!572351 m!4159501))

(assert (=> bs!572351 m!4158851))

(assert (=> b!3653705 d!1073389))

(declare-fun d!1073391 () Bool)

(declare-fun lt!1268783 () List!38663)

(assert (=> d!1073391 (= (++!9592 lt!1268478 lt!1268783) lt!1268492)))

(declare-fun e!2262518 () List!38663)

(assert (=> d!1073391 (= lt!1268783 e!2262518)))

(declare-fun c!631588 () Bool)

(assert (=> d!1073391 (= c!631588 ((_ is Cons!38539) lt!1268478))))

(assert (=> d!1073391 (>= (size!29437 lt!1268492) (size!29437 lt!1268478))))

(assert (=> d!1073391 (= (getSuffix!1692 lt!1268492 lt!1268478) lt!1268783)))

(declare-fun b!3654224 () Bool)

(assert (=> b!3654224 (= e!2262518 (getSuffix!1692 (tail!5659 lt!1268492) (t!297766 lt!1268478)))))

(declare-fun b!3654225 () Bool)

(assert (=> b!3654225 (= e!2262518 lt!1268492)))

(assert (= (and d!1073391 c!631588) b!3654224))

(assert (= (and d!1073391 (not c!631588)) b!3654225))

(declare-fun m!4159503 () Bool)

(assert (=> d!1073391 m!4159503))

(assert (=> d!1073391 m!4159007))

(assert (=> d!1073391 m!4158815))

(assert (=> b!3654224 m!4158999))

(assert (=> b!3654224 m!4158999))

(declare-fun m!4159505 () Bool)

(assert (=> b!3654224 m!4159505))

(assert (=> b!3653705 d!1073391))

(declare-fun d!1073393 () Bool)

(assert (=> d!1073393 (= (isDefined!6412 lt!1268467) (not (isEmpty!22849 lt!1268467)))))

(declare-fun bs!572352 () Bool)

(assert (= bs!572352 d!1073393))

(declare-fun m!4159507 () Bool)

(assert (=> bs!572352 m!4159507))

(assert (=> b!3653704 d!1073393))

(declare-fun call!264154 () Option!8180)

(declare-fun bm!264149 () Bool)

(assert (=> bm!264149 (= call!264154 (maxPrefixOneRule!2037 thiss!23823 (h!43961 rules!3307) lt!1268480))))

(declare-fun b!3654226 () Bool)

(declare-fun e!2262521 () Option!8180)

(declare-fun lt!1268786 () Option!8180)

(declare-fun lt!1268785 () Option!8180)

(assert (=> b!3654226 (= e!2262521 (ite (and ((_ is None!8179) lt!1268786) ((_ is None!8179) lt!1268785)) None!8179 (ite ((_ is None!8179) lt!1268785) lt!1268786 (ite ((_ is None!8179) lt!1268786) lt!1268785 (ite (>= (size!29435 (_1!22336 (v!38047 lt!1268786))) (size!29435 (_1!22336 (v!38047 lt!1268785)))) lt!1268786 lt!1268785)))))))

(assert (=> b!3654226 (= lt!1268786 call!264154)))

(assert (=> b!3654226 (= lt!1268785 (maxPrefix!2899 thiss!23823 (t!297768 rules!3307) lt!1268480))))

(declare-fun d!1073395 () Bool)

(declare-fun e!2262519 () Bool)

(assert (=> d!1073395 e!2262519))

(declare-fun res!1482881 () Bool)

(assert (=> d!1073395 (=> res!1482881 e!2262519)))

(declare-fun lt!1268788 () Option!8180)

(assert (=> d!1073395 (= res!1482881 (isEmpty!22849 lt!1268788))))

(assert (=> d!1073395 (= lt!1268788 e!2262521)))

(declare-fun c!631589 () Bool)

(assert (=> d!1073395 (= c!631589 (and ((_ is Cons!38541) rules!3307) ((_ is Nil!38541) (t!297768 rules!3307))))))

(declare-fun lt!1268787 () Unit!55617)

(declare-fun lt!1268784 () Unit!55617)

(assert (=> d!1073395 (= lt!1268787 lt!1268784)))

(assert (=> d!1073395 (isPrefix!3139 lt!1268480 lt!1268480)))

(assert (=> d!1073395 (= lt!1268784 (lemmaIsPrefixRefl!1982 lt!1268480 lt!1268480))))

(assert (=> d!1073395 (rulesValidInductive!2047 thiss!23823 rules!3307)))

(assert (=> d!1073395 (= (maxPrefix!2899 thiss!23823 rules!3307 lt!1268480) lt!1268788)))

(declare-fun b!3654227 () Bool)

(assert (=> b!3654227 (= e!2262521 call!264154)))

(declare-fun b!3654228 () Bool)

(declare-fun res!1482882 () Bool)

(declare-fun e!2262520 () Bool)

(assert (=> b!3654228 (=> (not res!1482882) (not e!2262520))))

(assert (=> b!3654228 (= res!1482882 (< (size!29437 (_2!22336 (get!12679 lt!1268788))) (size!29437 lt!1268480)))))

(declare-fun b!3654229 () Bool)

(assert (=> b!3654229 (= e!2262520 (contains!7618 rules!3307 (rule!8578 (_1!22336 (get!12679 lt!1268788)))))))

(declare-fun b!3654230 () Bool)

(assert (=> b!3654230 (= e!2262519 e!2262520)))

(declare-fun res!1482887 () Bool)

(assert (=> b!3654230 (=> (not res!1482887) (not e!2262520))))

(assert (=> b!3654230 (= res!1482887 (isDefined!6412 lt!1268788))))

(declare-fun b!3654231 () Bool)

(declare-fun res!1482883 () Bool)

(assert (=> b!3654231 (=> (not res!1482883) (not e!2262520))))

(assert (=> b!3654231 (= res!1482883 (= (value!185076 (_1!22336 (get!12679 lt!1268788))) (apply!9278 (transformation!5776 (rule!8578 (_1!22336 (get!12679 lt!1268788)))) (seqFromList!4325 (originalCharacters!6490 (_1!22336 (get!12679 lt!1268788)))))))))

(declare-fun b!3654232 () Bool)

(declare-fun res!1482886 () Bool)

(assert (=> b!3654232 (=> (not res!1482886) (not e!2262520))))

(assert (=> b!3654232 (= res!1482886 (= (++!9592 (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268788)))) (_2!22336 (get!12679 lt!1268788))) lt!1268480))))

(declare-fun b!3654233 () Bool)

(declare-fun res!1482884 () Bool)

(assert (=> b!3654233 (=> (not res!1482884) (not e!2262520))))

(assert (=> b!3654233 (= res!1482884 (= (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268788)))) (originalCharacters!6490 (_1!22336 (get!12679 lt!1268788)))))))

(declare-fun b!3654234 () Bool)

(declare-fun res!1482885 () Bool)

(assert (=> b!3654234 (=> (not res!1482885) (not e!2262520))))

(assert (=> b!3654234 (= res!1482885 (matchR!5104 (regex!5776 (rule!8578 (_1!22336 (get!12679 lt!1268788)))) (list!14286 (charsOf!3790 (_1!22336 (get!12679 lt!1268788))))))))

(assert (= (and d!1073395 c!631589) b!3654227))

(assert (= (and d!1073395 (not c!631589)) b!3654226))

(assert (= (or b!3654227 b!3654226) bm!264149))

(assert (= (and d!1073395 (not res!1482881)) b!3654230))

(assert (= (and b!3654230 res!1482887) b!3654233))

(assert (= (and b!3654233 res!1482884) b!3654228))

(assert (= (and b!3654228 res!1482882) b!3654232))

(assert (= (and b!3654232 res!1482886) b!3654231))

(assert (= (and b!3654231 res!1482883) b!3654234))

(assert (= (and b!3654234 res!1482885) b!3654229))

(declare-fun m!4159509 () Bool)

(assert (=> b!3654228 m!4159509))

(declare-fun m!4159511 () Bool)

(assert (=> b!3654228 m!4159511))

(assert (=> b!3654228 m!4159009))

(assert (=> b!3654233 m!4159509))

(declare-fun m!4159513 () Bool)

(assert (=> b!3654233 m!4159513))

(assert (=> b!3654233 m!4159513))

(declare-fun m!4159515 () Bool)

(assert (=> b!3654233 m!4159515))

(declare-fun m!4159517 () Bool)

(assert (=> b!3654230 m!4159517))

(declare-fun m!4159519 () Bool)

(assert (=> b!3654226 m!4159519))

(declare-fun m!4159521 () Bool)

(assert (=> bm!264149 m!4159521))

(assert (=> b!3654231 m!4159509))

(declare-fun m!4159523 () Bool)

(assert (=> b!3654231 m!4159523))

(assert (=> b!3654231 m!4159523))

(declare-fun m!4159525 () Bool)

(assert (=> b!3654231 m!4159525))

(assert (=> b!3654229 m!4159509))

(declare-fun m!4159527 () Bool)

(assert (=> b!3654229 m!4159527))

(declare-fun m!4159529 () Bool)

(assert (=> d!1073395 m!4159529))

(declare-fun m!4159531 () Bool)

(assert (=> d!1073395 m!4159531))

(declare-fun m!4159533 () Bool)

(assert (=> d!1073395 m!4159533))

(assert (=> d!1073395 m!4159303))

(assert (=> b!3654232 m!4159509))

(assert (=> b!3654232 m!4159513))

(assert (=> b!3654232 m!4159513))

(assert (=> b!3654232 m!4159515))

(assert (=> b!3654232 m!4159515))

(declare-fun m!4159535 () Bool)

(assert (=> b!3654232 m!4159535))

(assert (=> b!3654234 m!4159509))

(assert (=> b!3654234 m!4159513))

(assert (=> b!3654234 m!4159513))

(assert (=> b!3654234 m!4159515))

(assert (=> b!3654234 m!4159515))

(declare-fun m!4159537 () Bool)

(assert (=> b!3654234 m!4159537))

(assert (=> b!3653704 d!1073395))

(declare-fun d!1073397 () Bool)

(assert (=> d!1073397 (= (list!14286 lt!1268465) (list!14289 (c!631479 lt!1268465)))))

(declare-fun bs!572353 () Bool)

(assert (= bs!572353 d!1073397))

(declare-fun m!4159539 () Bool)

(assert (=> bs!572353 m!4159539))

(assert (=> b!3653704 d!1073397))

(declare-fun d!1073399 () Bool)

(declare-fun lt!1268789 () BalanceConc!23172)

(assert (=> d!1073399 (= (list!14286 lt!1268789) (originalCharacters!6490 token!511))))

(assert (=> d!1073399 (= lt!1268789 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (value!185076 token!511)))))

(assert (=> d!1073399 (= (charsOf!3790 token!511) lt!1268789)))

(declare-fun b_lambda!108349 () Bool)

(assert (=> (not b_lambda!108349) (not d!1073399)))

(assert (=> d!1073399 t!297794))

(declare-fun b_and!270539 () Bool)

(assert (= b_and!270523 (and (=> t!297794 result!256792) b_and!270539)))

(assert (=> d!1073399 t!297796))

(declare-fun b_and!270541 () Bool)

(assert (= b_and!270525 (and (=> t!297796 result!256794) b_and!270541)))

(assert (=> d!1073399 t!297798))

(declare-fun b_and!270543 () Bool)

(assert (= b_and!270527 (and (=> t!297798 result!256796) b_and!270543)))

(assert (=> d!1073399 t!297800))

(declare-fun b_and!270545 () Bool)

(assert (= b_and!270529 (and (=> t!297800 result!256798) b_and!270545)))

(declare-fun m!4159541 () Bool)

(assert (=> d!1073399 m!4159541))

(assert (=> d!1073399 m!4159441))

(assert (=> b!3653704 d!1073399))

(declare-fun d!1073401 () Bool)

(declare-fun lt!1268790 () Bool)

(assert (=> d!1073401 (= lt!1268790 (select (content!5562 lt!1268458) lt!1268460))))

(declare-fun e!2262523 () Bool)

(assert (=> d!1073401 (= lt!1268790 e!2262523)))

(declare-fun res!1482889 () Bool)

(assert (=> d!1073401 (=> (not res!1482889) (not e!2262523))))

(assert (=> d!1073401 (= res!1482889 ((_ is Cons!38539) lt!1268458))))

(assert (=> d!1073401 (= (contains!7617 lt!1268458 lt!1268460) lt!1268790)))

(declare-fun b!3654235 () Bool)

(declare-fun e!2262522 () Bool)

(assert (=> b!3654235 (= e!2262523 e!2262522)))

(declare-fun res!1482888 () Bool)

(assert (=> b!3654235 (=> res!1482888 e!2262522)))

(assert (=> b!3654235 (= res!1482888 (= (h!43959 lt!1268458) lt!1268460))))

(declare-fun b!3654236 () Bool)

(assert (=> b!3654236 (= e!2262522 (contains!7617 (t!297766 lt!1268458) lt!1268460))))

(assert (= (and d!1073401 res!1482889) b!3654235))

(assert (= (and b!3654235 (not res!1482888)) b!3654236))

(assert (=> d!1073401 m!4158969))

(declare-fun m!4159543 () Bool)

(assert (=> d!1073401 m!4159543))

(declare-fun m!4159545 () Bool)

(assert (=> b!3654236 m!4159545))

(assert (=> b!3653687 d!1073401))

(declare-fun d!1073403 () Bool)

(assert (=> d!1073403 (= (head!7794 suffix!1395) (h!43959 suffix!1395))))

(assert (=> b!3653687 d!1073403))

(declare-fun b!3654237 () Bool)

(declare-fun e!2262524 () List!38663)

(declare-fun e!2262526 () List!38663)

(assert (=> b!3654237 (= e!2262524 e!2262526)))

(declare-fun c!631591 () Bool)

(assert (=> b!3654237 (= c!631591 ((_ is Union!10535) (regex!5776 rule!403)))))

(declare-fun bm!264150 () Bool)

(declare-fun call!264155 () List!38663)

(declare-fun c!631593 () Bool)

(assert (=> bm!264150 (= call!264155 (usedCharacters!988 (ite c!631593 (reg!10864 (regex!5776 rule!403)) (ite c!631591 (regTwo!21583 (regex!5776 rule!403)) (regOne!21582 (regex!5776 rule!403))))))))

(declare-fun b!3654238 () Bool)

(declare-fun e!2262525 () List!38663)

(declare-fun e!2262527 () List!38663)

(assert (=> b!3654238 (= e!2262525 e!2262527)))

(declare-fun c!631592 () Bool)

(assert (=> b!3654238 (= c!631592 ((_ is ElementMatch!10535) (regex!5776 rule!403)))))

(declare-fun b!3654239 () Bool)

(assert (=> b!3654239 (= e!2262524 call!264155)))

(declare-fun d!1073405 () Bool)

(declare-fun c!631590 () Bool)

(assert (=> d!1073405 (= c!631590 (or ((_ is EmptyExpr!10535) (regex!5776 rule!403)) ((_ is EmptyLang!10535) (regex!5776 rule!403))))))

(assert (=> d!1073405 (= (usedCharacters!988 (regex!5776 rule!403)) e!2262525)))

(declare-fun bm!264151 () Bool)

(declare-fun call!264158 () List!38663)

(assert (=> bm!264151 (= call!264158 (usedCharacters!988 (ite c!631591 (regOne!21583 (regex!5776 rule!403)) (regTwo!21582 (regex!5776 rule!403)))))))

(declare-fun b!3654240 () Bool)

(declare-fun call!264157 () List!38663)

(assert (=> b!3654240 (= e!2262526 call!264157)))

(declare-fun b!3654241 () Bool)

(assert (=> b!3654241 (= e!2262527 (Cons!38539 (c!631478 (regex!5776 rule!403)) Nil!38539))))

(declare-fun bm!264152 () Bool)

(declare-fun call!264156 () List!38663)

(assert (=> bm!264152 (= call!264156 call!264155)))

(declare-fun bm!264153 () Bool)

(assert (=> bm!264153 (= call!264157 (++!9592 (ite c!631591 call!264158 call!264156) (ite c!631591 call!264156 call!264158)))))

(declare-fun b!3654242 () Bool)

(assert (=> b!3654242 (= c!631593 ((_ is Star!10535) (regex!5776 rule!403)))))

(assert (=> b!3654242 (= e!2262527 e!2262524)))

(declare-fun b!3654243 () Bool)

(assert (=> b!3654243 (= e!2262525 Nil!38539)))

(declare-fun b!3654244 () Bool)

(assert (=> b!3654244 (= e!2262526 call!264157)))

(assert (= (and d!1073405 c!631590) b!3654243))

(assert (= (and d!1073405 (not c!631590)) b!3654238))

(assert (= (and b!3654238 c!631592) b!3654241))

(assert (= (and b!3654238 (not c!631592)) b!3654242))

(assert (= (and b!3654242 c!631593) b!3654239))

(assert (= (and b!3654242 (not c!631593)) b!3654237))

(assert (= (and b!3654237 c!631591) b!3654240))

(assert (= (and b!3654237 (not c!631591)) b!3654244))

(assert (= (or b!3654240 b!3654244) bm!264151))

(assert (= (or b!3654240 b!3654244) bm!264152))

(assert (= (or b!3654240 b!3654244) bm!264153))

(assert (= (or b!3654239 bm!264152) bm!264150))

(declare-fun m!4159547 () Bool)

(assert (=> bm!264150 m!4159547))

(declare-fun m!4159549 () Bool)

(assert (=> bm!264151 m!4159549))

(declare-fun m!4159551 () Bool)

(assert (=> bm!264153 m!4159551))

(assert (=> b!3653687 d!1073405))

(declare-fun d!1073407 () Bool)

(assert (=> d!1073407 (= (isEmpty!22845 rules!3307) ((_ is Nil!38541) rules!3307))))

(assert (=> b!3653724 d!1073407))

(declare-fun d!1073409 () Bool)

(assert (=> d!1073409 (not (contains!7617 (usedCharacters!988 (regex!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268491))))

(declare-fun lt!1268791 () Unit!55617)

(assert (=> d!1073409 (= lt!1268791 (choose!21567 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8578 (_1!22336 lt!1268489)) lt!1268491))))

(assert (=> d!1073409 (rulesInvariant!4762 thiss!23823 rules!3307)))

(assert (=> d!1073409 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!304 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8578 (_1!22336 lt!1268489)) lt!1268491) lt!1268791)))

(declare-fun bs!572354 () Bool)

(assert (= bs!572354 d!1073409))

(assert (=> bs!572354 m!4158735))

(assert (=> bs!572354 m!4158735))

(assert (=> bs!572354 m!4159349))

(declare-fun m!4159553 () Bool)

(assert (=> bs!572354 m!4159553))

(assert (=> bs!572354 m!4158795))

(assert (=> b!3653696 d!1073409))

(declare-fun d!1073411 () Bool)

(assert (=> d!1073411 (= (inv!51993 (tag!6544 (rule!8578 token!511))) (= (mod (str.len (value!185075 (tag!6544 (rule!8578 token!511)))) 2) 0))))

(assert (=> b!3653717 d!1073411))

(declare-fun d!1073413 () Bool)

(declare-fun res!1482890 () Bool)

(declare-fun e!2262528 () Bool)

(assert (=> d!1073413 (=> (not res!1482890) (not e!2262528))))

(assert (=> d!1073413 (= res!1482890 (semiInverseModEq!2461 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (toValue!8068 (transformation!5776 (rule!8578 token!511)))))))

(assert (=> d!1073413 (= (inv!51996 (transformation!5776 (rule!8578 token!511))) e!2262528)))

(declare-fun b!3654245 () Bool)

(assert (=> b!3654245 (= e!2262528 (equivClasses!2360 (toChars!7927 (transformation!5776 (rule!8578 token!511))) (toValue!8068 (transformation!5776 (rule!8578 token!511)))))))

(assert (= (and d!1073413 res!1482890) b!3654245))

(declare-fun m!4159555 () Bool)

(assert (=> d!1073413 m!4159555))

(declare-fun m!4159557 () Bool)

(assert (=> b!3654245 m!4159557))

(assert (=> b!3653717 d!1073413))

(declare-fun d!1073415 () Bool)

(assert (=> d!1073415 (= (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489))) (fromListB!1997 (originalCharacters!6490 (_1!22336 lt!1268489))))))

(declare-fun bs!572355 () Bool)

(assert (= bs!572355 d!1073415))

(declare-fun m!4159559 () Bool)

(assert (=> bs!572355 m!4159559))

(assert (=> b!3653681 d!1073415))

(declare-fun d!1073417 () Bool)

(assert (=> d!1073417 (= (apply!9278 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493))))

(declare-fun b_lambda!108351 () Bool)

(assert (=> (not b_lambda!108351) (not d!1073417)))

(declare-fun tb!210901 () Bool)

(declare-fun t!297810 () Bool)

(assert (=> (and b!3653697 (= (toValue!8068 (transformation!5776 anOtherTypeRule!33)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297810) tb!210901))

(declare-fun result!256810 () Bool)

(assert (=> tb!210901 (= result!256810 (inv!21 (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493)))))

(declare-fun m!4159561 () Bool)

(assert (=> tb!210901 m!4159561))

(assert (=> d!1073417 t!297810))

(declare-fun b_and!270547 () Bool)

(assert (= b_and!270531 (and (=> t!297810 result!256810) b_and!270547)))

(declare-fun tb!210903 () Bool)

(declare-fun t!297812 () Bool)

(assert (=> (and b!3653686 (= (toValue!8068 (transformation!5776 rule!403)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297812) tb!210903))

(declare-fun result!256812 () Bool)

(assert (= result!256812 result!256810))

(assert (=> d!1073417 t!297812))

(declare-fun b_and!270549 () Bool)

(assert (= b_and!270533 (and (=> t!297812 result!256812) b_and!270549)))

(declare-fun tb!210905 () Bool)

(declare-fun t!297814 () Bool)

(assert (=> (and b!3653680 (= (toValue!8068 (transformation!5776 (h!43961 rules!3307))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297814) tb!210905))

(declare-fun result!256814 () Bool)

(assert (= result!256814 result!256810))

(assert (=> d!1073417 t!297814))

(declare-fun b_and!270551 () Bool)

(assert (= b_and!270535 (and (=> t!297814 result!256814) b_and!270551)))

(declare-fun t!297816 () Bool)

(declare-fun tb!210907 () Bool)

(assert (=> (and b!3653713 (= (toValue!8068 (transformation!5776 (rule!8578 token!511))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297816) tb!210907))

(declare-fun result!256816 () Bool)

(assert (= result!256816 result!256810))

(assert (=> d!1073417 t!297816))

(declare-fun b_and!270553 () Bool)

(assert (= b_and!270537 (and (=> t!297816 result!256816) b_and!270553)))

(declare-fun m!4159563 () Bool)

(assert (=> d!1073417 m!4159563))

(assert (=> b!3653681 d!1073417))

(declare-fun d!1073419 () Bool)

(assert (=> d!1073419 (= (size!29435 (_1!22336 lt!1268489)) (size!29437 (originalCharacters!6490 (_1!22336 lt!1268489))))))

(declare-fun Unit!55633 () Unit!55617)

(assert (=> d!1073419 (= (lemmaCharactersSize!821 (_1!22336 lt!1268489)) Unit!55633)))

(declare-fun bs!572356 () Bool)

(assert (= bs!572356 d!1073419))

(declare-fun m!4159565 () Bool)

(assert (=> bs!572356 m!4159565))

(assert (=> b!3653681 d!1073419))

(declare-fun d!1073421 () Bool)

(declare-fun lt!1268792 () Int)

(assert (=> d!1073421 (= lt!1268792 (size!29437 (list!14286 lt!1268493)))))

(assert (=> d!1073421 (= lt!1268792 (size!29438 (c!631479 lt!1268493)))))

(assert (=> d!1073421 (= (size!29436 lt!1268493) lt!1268792)))

(declare-fun bs!572357 () Bool)

(assert (= bs!572357 d!1073421))

(assert (=> bs!572357 m!4158845))

(assert (=> bs!572357 m!4158845))

(declare-fun m!4159567 () Bool)

(assert (=> bs!572357 m!4159567))

(declare-fun m!4159569 () Bool)

(assert (=> bs!572357 m!4159569))

(assert (=> b!3653681 d!1073421))

(declare-fun b!3654448 () Bool)

(declare-fun e!2262652 () Bool)

(assert (=> b!3654448 (= e!2262652 true)))

(declare-fun d!1073423 () Bool)

(assert (=> d!1073423 e!2262652))

(assert (= d!1073423 b!3654448))

(declare-fun order!21245 () Int)

(declare-fun lambda!124508 () Int)

(declare-fun order!21243 () Int)

(declare-fun dynLambda!16814 (Int Int) Int)

(declare-fun dynLambda!16815 (Int Int) Int)

(assert (=> b!3654448 (< (dynLambda!16814 order!21243 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) (dynLambda!16815 order!21245 lambda!124508))))

(declare-fun order!21247 () Int)

(declare-fun dynLambda!16816 (Int Int) Int)

(assert (=> b!3654448 (< (dynLambda!16816 order!21247 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) (dynLambda!16815 order!21245 lambda!124508))))

(assert (=> d!1073423 (= (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489)))))))

(declare-fun lt!1268840 () Unit!55617)

(declare-fun Forall2of!376 (Int BalanceConc!23172 BalanceConc!23172) Unit!55617)

(assert (=> d!1073423 (= lt!1268840 (Forall2of!376 lambda!124508 lt!1268493 (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489)))))))

(assert (=> d!1073423 (= (list!14286 lt!1268493) (list!14286 (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489)))))))

(assert (=> d!1073423 (= (lemmaEqSameImage!959 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493 (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489)))) lt!1268840)))

(declare-fun b_lambda!108371 () Bool)

(assert (=> (not b_lambda!108371) (not d!1073423)))

(assert (=> d!1073423 t!297810))

(declare-fun b_and!270615 () Bool)

(assert (= b_and!270547 (and (=> t!297810 result!256810) b_and!270615)))

(assert (=> d!1073423 t!297812))

(declare-fun b_and!270617 () Bool)

(assert (= b_and!270549 (and (=> t!297812 result!256812) b_and!270617)))

(assert (=> d!1073423 t!297814))

(declare-fun b_and!270619 () Bool)

(assert (= b_and!270551 (and (=> t!297814 result!256814) b_and!270619)))

(assert (=> d!1073423 t!297816))

(declare-fun b_and!270621 () Bool)

(assert (= b_and!270553 (and (=> t!297816 result!256816) b_and!270621)))

(declare-fun b_lambda!108373 () Bool)

(assert (=> (not b_lambda!108373) (not d!1073423)))

(declare-fun t!297863 () Bool)

(declare-fun tb!210953 () Bool)

(assert (=> (and b!3653697 (= (toValue!8068 (transformation!5776 anOtherTypeRule!33)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297863) tb!210953))

(declare-fun result!256868 () Bool)

(assert (=> tb!210953 (= result!256868 (inv!21 (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (seqFromList!4325 (originalCharacters!6490 (_1!22336 lt!1268489))))))))

(declare-fun m!4159791 () Bool)

(assert (=> tb!210953 m!4159791))

(assert (=> d!1073423 t!297863))

(declare-fun b_and!270623 () Bool)

(assert (= b_and!270615 (and (=> t!297863 result!256868) b_and!270623)))

(declare-fun t!297865 () Bool)

(declare-fun tb!210955 () Bool)

(assert (=> (and b!3653686 (= (toValue!8068 (transformation!5776 rule!403)) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297865) tb!210955))

(declare-fun result!256870 () Bool)

(assert (= result!256870 result!256868))

(assert (=> d!1073423 t!297865))

(declare-fun b_and!270625 () Bool)

(assert (= b_and!270617 (and (=> t!297865 result!256870) b_and!270625)))

(declare-fun tb!210957 () Bool)

(declare-fun t!297867 () Bool)

(assert (=> (and b!3653680 (= (toValue!8068 (transformation!5776 (h!43961 rules!3307))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297867) tb!210957))

(declare-fun result!256872 () Bool)

(assert (= result!256872 result!256868))

(assert (=> d!1073423 t!297867))

(declare-fun b_and!270627 () Bool)

(assert (= b_and!270619 (and (=> t!297867 result!256872) b_and!270627)))

(declare-fun t!297869 () Bool)

(declare-fun tb!210959 () Bool)

(assert (=> (and b!3653713 (= (toValue!8068 (transformation!5776 (rule!8578 token!511))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297869) tb!210959))

(declare-fun result!256874 () Bool)

(assert (= result!256874 result!256868))

(assert (=> d!1073423 t!297869))

(declare-fun b_and!270629 () Bool)

(assert (= b_and!270621 (and (=> t!297869 result!256874) b_and!270629)))

(assert (=> d!1073423 m!4158863))

(declare-fun m!4159793 () Bool)

(assert (=> d!1073423 m!4159793))

(assert (=> d!1073423 m!4158845))

(assert (=> d!1073423 m!4159563))

(assert (=> d!1073423 m!4158863))

(declare-fun m!4159795 () Bool)

(assert (=> d!1073423 m!4159795))

(assert (=> d!1073423 m!4158863))

(declare-fun m!4159797 () Bool)

(assert (=> d!1073423 m!4159797))

(assert (=> b!3653681 d!1073423))

(declare-fun b!3654453 () Bool)

(declare-fun e!2262656 () Bool)

(assert (=> b!3654453 (= e!2262656 true)))

(declare-fun d!1073523 () Bool)

(assert (=> d!1073523 e!2262656))

(assert (= d!1073523 b!3654453))

(declare-fun order!21249 () Int)

(declare-fun lambda!124511 () Int)

(declare-fun dynLambda!16817 (Int Int) Int)

(assert (=> b!3654453 (< (dynLambda!16814 order!21243 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) (dynLambda!16817 order!21249 lambda!124511))))

(assert (=> b!3654453 (< (dynLambda!16816 order!21247 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) (dynLambda!16817 order!21249 lambda!124511))))

(assert (=> d!1073523 (= (list!14286 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493))) (list!14286 lt!1268493))))

(declare-fun lt!1268843 () Unit!55617)

(declare-fun ForallOf!718 (Int BalanceConc!23172) Unit!55617)

(assert (=> d!1073523 (= lt!1268843 (ForallOf!718 lambda!124511 lt!1268493))))

(assert (=> d!1073523 (= (lemmaSemiInverse!1525 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268493) lt!1268843)))

(declare-fun b_lambda!108375 () Bool)

(assert (=> (not b_lambda!108375) (not d!1073523)))

(declare-fun t!297871 () Bool)

(declare-fun tb!210961 () Bool)

(assert (=> (and b!3653697 (= (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297871) tb!210961))

(declare-fun b!3654454 () Bool)

(declare-fun tp!1113710 () Bool)

(declare-fun e!2262657 () Bool)

(assert (=> b!3654454 (= e!2262657 (and (inv!51998 (c!631479 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493)))) tp!1113710))))

(declare-fun result!256876 () Bool)

(assert (=> tb!210961 (= result!256876 (and (inv!51999 (dynLambda!16807 (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) (dynLambda!16813 (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489)))) lt!1268493))) e!2262657))))

(assert (= tb!210961 b!3654454))

(declare-fun m!4159799 () Bool)

(assert (=> b!3654454 m!4159799))

(declare-fun m!4159801 () Bool)

(assert (=> tb!210961 m!4159801))

(assert (=> d!1073523 t!297871))

(declare-fun b_and!270631 () Bool)

(assert (= b_and!270539 (and (=> t!297871 result!256876) b_and!270631)))

(declare-fun tb!210963 () Bool)

(declare-fun t!297873 () Bool)

(assert (=> (and b!3653686 (= (toChars!7927 (transformation!5776 rule!403)) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297873) tb!210963))

(declare-fun result!256878 () Bool)

(assert (= result!256878 result!256876))

(assert (=> d!1073523 t!297873))

(declare-fun b_and!270633 () Bool)

(assert (= b_and!270541 (and (=> t!297873 result!256878) b_and!270633)))

(declare-fun t!297875 () Bool)

(declare-fun tb!210965 () Bool)

(assert (=> (and b!3653680 (= (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297875) tb!210965))

(declare-fun result!256880 () Bool)

(assert (= result!256880 result!256876))

(assert (=> d!1073523 t!297875))

(declare-fun b_and!270635 () Bool)

(assert (= b_and!270543 (and (=> t!297875 result!256880) b_and!270635)))

(declare-fun t!297877 () Bool)

(declare-fun tb!210967 () Bool)

(assert (=> (and b!3653713 (= (toChars!7927 (transformation!5776 (rule!8578 token!511))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297877) tb!210967))

(declare-fun result!256882 () Bool)

(assert (= result!256882 result!256876))

(assert (=> d!1073523 t!297877))

(declare-fun b_and!270637 () Bool)

(assert (= b_and!270545 (and (=> t!297877 result!256882) b_and!270637)))

(declare-fun b_lambda!108377 () Bool)

(assert (=> (not b_lambda!108377) (not d!1073523)))

(assert (=> d!1073523 t!297810))

(declare-fun b_and!270639 () Bool)

(assert (= b_and!270623 (and (=> t!297810 result!256810) b_and!270639)))

(assert (=> d!1073523 t!297812))

(declare-fun b_and!270641 () Bool)

(assert (= b_and!270625 (and (=> t!297812 result!256812) b_and!270641)))

(assert (=> d!1073523 t!297814))

(declare-fun b_and!270643 () Bool)

(assert (= b_and!270627 (and (=> t!297814 result!256814) b_and!270643)))

(assert (=> d!1073523 t!297816))

(declare-fun b_and!270645 () Bool)

(assert (= b_and!270629 (and (=> t!297816 result!256816) b_and!270645)))

(assert (=> d!1073523 m!4159563))

(assert (=> d!1073523 m!4158845))

(declare-fun m!4159803 () Bool)

(assert (=> d!1073523 m!4159803))

(assert (=> d!1073523 m!4159563))

(declare-fun m!4159805 () Bool)

(assert (=> d!1073523 m!4159805))

(assert (=> d!1073523 m!4159805))

(declare-fun m!4159807 () Bool)

(assert (=> d!1073523 m!4159807))

(assert (=> b!3653681 d!1073523))

(declare-fun d!1073525 () Bool)

(assert (=> d!1073525 (= (get!12679 lt!1268467) (v!38047 lt!1268467))))

(assert (=> b!3653718 d!1073525))

(declare-fun d!1073527 () Bool)

(declare-fun lt!1268844 () Bool)

(assert (=> d!1073527 (= lt!1268844 (select (content!5563 rules!3307) (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun e!2262659 () Bool)

(assert (=> d!1073527 (= lt!1268844 e!2262659)))

(declare-fun res!1482987 () Bool)

(assert (=> d!1073527 (=> (not res!1482987) (not e!2262659))))

(assert (=> d!1073527 (= res!1482987 ((_ is Cons!38541) rules!3307))))

(assert (=> d!1073527 (= (contains!7618 rules!3307 (rule!8578 (_1!22336 lt!1268489))) lt!1268844)))

(declare-fun b!3654455 () Bool)

(declare-fun e!2262658 () Bool)

(assert (=> b!3654455 (= e!2262659 e!2262658)))

(declare-fun res!1482986 () Bool)

(assert (=> b!3654455 (=> res!1482986 e!2262658)))

(assert (=> b!3654455 (= res!1482986 (= (h!43961 rules!3307) (rule!8578 (_1!22336 lt!1268489))))))

(declare-fun b!3654456 () Bool)

(assert (=> b!3654456 (= e!2262658 (contains!7618 (t!297768 rules!3307) (rule!8578 (_1!22336 lt!1268489))))))

(assert (= (and d!1073527 res!1482987) b!3654455))

(assert (= (and b!3654455 (not res!1482986)) b!3654456))

(assert (=> d!1073527 m!4159389))

(declare-fun m!4159809 () Bool)

(assert (=> d!1073527 m!4159809))

(declare-fun m!4159811 () Bool)

(assert (=> b!3654456 m!4159811))

(assert (=> b!3653699 d!1073527))

(declare-fun d!1073529 () Bool)

(declare-fun lt!1268845 () Bool)

(assert (=> d!1073529 (= lt!1268845 (select (content!5562 call!264113) lt!1268491))))

(declare-fun e!2262661 () Bool)

(assert (=> d!1073529 (= lt!1268845 e!2262661)))

(declare-fun res!1482989 () Bool)

(assert (=> d!1073529 (=> (not res!1482989) (not e!2262661))))

(assert (=> d!1073529 (= res!1482989 ((_ is Cons!38539) call!264113))))

(assert (=> d!1073529 (= (contains!7617 call!264113 lt!1268491) lt!1268845)))

(declare-fun b!3654457 () Bool)

(declare-fun e!2262660 () Bool)

(assert (=> b!3654457 (= e!2262661 e!2262660)))

(declare-fun res!1482988 () Bool)

(assert (=> b!3654457 (=> res!1482988 e!2262660)))

(assert (=> b!3654457 (= res!1482988 (= (h!43959 call!264113) lt!1268491))))

(declare-fun b!3654458 () Bool)

(assert (=> b!3654458 (= e!2262660 (contains!7617 (t!297766 call!264113) lt!1268491))))

(assert (= (and d!1073529 res!1482989) b!3654457))

(assert (= (and b!3654457 (not res!1482988)) b!3654458))

(declare-fun m!4159813 () Bool)

(assert (=> d!1073529 m!4159813))

(declare-fun m!4159815 () Bool)

(assert (=> d!1073529 m!4159815))

(declare-fun m!4159817 () Bool)

(assert (=> b!3654458 m!4159817))

(assert (=> bm!264109 d!1073529))

(declare-fun d!1073531 () Bool)

(assert (=> d!1073531 (= (inv!51993 (tag!6544 rule!403)) (= (mod (str.len (value!185075 (tag!6544 rule!403))) 2) 0))))

(assert (=> b!3653700 d!1073531))

(declare-fun d!1073533 () Bool)

(declare-fun res!1482990 () Bool)

(declare-fun e!2262662 () Bool)

(assert (=> d!1073533 (=> (not res!1482990) (not e!2262662))))

(assert (=> d!1073533 (= res!1482990 (semiInverseModEq!2461 (toChars!7927 (transformation!5776 rule!403)) (toValue!8068 (transformation!5776 rule!403))))))

(assert (=> d!1073533 (= (inv!51996 (transformation!5776 rule!403)) e!2262662)))

(declare-fun b!3654459 () Bool)

(assert (=> b!3654459 (= e!2262662 (equivClasses!2360 (toChars!7927 (transformation!5776 rule!403)) (toValue!8068 (transformation!5776 rule!403))))))

(assert (= (and d!1073533 res!1482990) b!3654459))

(declare-fun m!4159819 () Bool)

(assert (=> d!1073533 m!4159819))

(declare-fun m!4159821 () Bool)

(assert (=> b!3654459 m!4159821))

(assert (=> b!3653700 d!1073533))

(declare-fun d!1073535 () Bool)

(assert (=> d!1073535 (not (matchR!5104 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478))))

(declare-fun lt!1268846 () Unit!55617)

(assert (=> d!1073535 (= lt!1268846 (choose!21563 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268460))))

(assert (=> d!1073535 (validRegex!4823 (regex!5776 (rule!8578 (_1!22336 lt!1268489))))))

(assert (=> d!1073535 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!724 (regex!5776 (rule!8578 (_1!22336 lt!1268489))) lt!1268478 lt!1268460) lt!1268846)))

(declare-fun bs!572373 () Bool)

(assert (= bs!572373 d!1073535))

(assert (=> bs!572373 m!4158801))

(declare-fun m!4159823 () Bool)

(assert (=> bs!572373 m!4159823))

(assert (=> bs!572373 m!4159341))

(assert (=> bm!264104 d!1073535))

(declare-fun b!3654464 () Bool)

(declare-fun e!2262665 () Bool)

(declare-fun tp!1113713 () Bool)

(assert (=> b!3654464 (= e!2262665 (and tp_is_empty!18153 tp!1113713))))

(assert (=> b!3653720 (= tp!1113648 e!2262665)))

(assert (= (and b!3653720 ((_ is Cons!38539) (originalCharacters!6490 token!511))) b!3654464))

(declare-fun b!3654475 () Bool)

(declare-fun b_free!96237 () Bool)

(declare-fun b_next!96941 () Bool)

(assert (=> b!3654475 (= b_free!96237 (not b_next!96941))))

(declare-fun t!297879 () Bool)

(declare-fun tb!210969 () Bool)

(assert (=> (and b!3654475 (= (toValue!8068 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297879) tb!210969))

(declare-fun result!256888 () Bool)

(assert (= result!256888 result!256810))

(assert (=> d!1073523 t!297879))

(assert (=> d!1073417 t!297879))

(declare-fun tb!210971 () Bool)

(declare-fun t!297881 () Bool)

(assert (=> (and b!3654475 (= (toValue!8068 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297881) tb!210971))

(declare-fun result!256890 () Bool)

(assert (= result!256890 result!256800))

(assert (=> d!1073381 t!297881))

(declare-fun t!297883 () Bool)

(declare-fun tb!210973 () Bool)

(assert (=> (and b!3654475 (= (toValue!8068 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toValue!8068 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297883) tb!210973))

(declare-fun result!256892 () Bool)

(assert (= result!256892 result!256868))

(assert (=> d!1073423 t!297883))

(assert (=> d!1073423 t!297879))

(declare-fun b_and!270647 () Bool)

(declare-fun tp!1113722 () Bool)

(assert (=> b!3654475 (= tp!1113722 (and (=> t!297879 result!256888) (=> t!297883 result!256892) (=> t!297881 result!256890) b_and!270647))))

(declare-fun b_free!96239 () Bool)

(declare-fun b_next!96943 () Bool)

(assert (=> b!3654475 (= b_free!96239 (not b_next!96943))))

(declare-fun t!297885 () Bool)

(declare-fun tb!210975 () Bool)

(assert (=> (and b!3654475 (= (toChars!7927 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297885) tb!210975))

(declare-fun result!256894 () Bool)

(assert (= result!256894 result!256772))

(assert (=> d!1073267 t!297885))

(declare-fun tb!210977 () Bool)

(declare-fun t!297887 () Bool)

(assert (=> (and b!3654475 (= (toChars!7927 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toChars!7927 (transformation!5776 (rule!8578 token!511)))) t!297887) tb!210977))

(declare-fun result!256896 () Bool)

(assert (= result!256896 result!256792))

(assert (=> b!3654182 t!297887))

(assert (=> d!1073399 t!297887))

(declare-fun t!297889 () Bool)

(declare-fun tb!210979 () Bool)

(assert (=> (and b!3654475 (= (toChars!7927 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toChars!7927 (transformation!5776 (rule!8578 (_1!22336 lt!1268489))))) t!297889) tb!210979))

(declare-fun result!256898 () Bool)

(assert (= result!256898 result!256876))

(assert (=> d!1073523 t!297889))

(declare-fun b_and!270649 () Bool)

(declare-fun tp!1113723 () Bool)

(assert (=> b!3654475 (= tp!1113723 (and (=> t!297885 result!256894) (=> t!297887 result!256896) (=> t!297889 result!256898) b_and!270649))))

(declare-fun e!2262674 () Bool)

(assert (=> b!3654475 (= e!2262674 (and tp!1113722 tp!1113723))))

(declare-fun e!2262675 () Bool)

(declare-fun tp!1113725 () Bool)

(declare-fun b!3654474 () Bool)

(assert (=> b!3654474 (= e!2262675 (and tp!1113725 (inv!51993 (tag!6544 (h!43961 (t!297768 rules!3307)))) (inv!51996 (transformation!5776 (h!43961 (t!297768 rules!3307)))) e!2262674))))

(declare-fun b!3654473 () Bool)

(declare-fun e!2262676 () Bool)

(declare-fun tp!1113724 () Bool)

(assert (=> b!3654473 (= e!2262676 (and e!2262675 tp!1113724))))

(assert (=> b!3653698 (= tp!1113651 e!2262676)))

(assert (= b!3654474 b!3654475))

(assert (= b!3654473 b!3654474))

(assert (= (and b!3653698 ((_ is Cons!38541) (t!297768 rules!3307))) b!3654473))

(declare-fun m!4159825 () Bool)

(assert (=> b!3654474 m!4159825))

(declare-fun m!4159827 () Bool)

(assert (=> b!3654474 m!4159827))

(declare-fun b!3654487 () Bool)

(declare-fun e!2262680 () Bool)

(declare-fun tp!1113740 () Bool)

(declare-fun tp!1113737 () Bool)

(assert (=> b!3654487 (= e!2262680 (and tp!1113740 tp!1113737))))

(declare-fun b!3654489 () Bool)

(declare-fun tp!1113739 () Bool)

(declare-fun tp!1113738 () Bool)

(assert (=> b!3654489 (= e!2262680 (and tp!1113739 tp!1113738))))

(assert (=> b!3653709 (= tp!1113645 e!2262680)))

(declare-fun b!3654488 () Bool)

(declare-fun tp!1113736 () Bool)

(assert (=> b!3654488 (= e!2262680 tp!1113736)))

(declare-fun b!3654486 () Bool)

(assert (=> b!3654486 (= e!2262680 tp_is_empty!18153)))

(assert (= (and b!3653709 ((_ is ElementMatch!10535) (regex!5776 (h!43961 rules!3307)))) b!3654486))

(assert (= (and b!3653709 ((_ is Concat!16542) (regex!5776 (h!43961 rules!3307)))) b!3654487))

(assert (= (and b!3653709 ((_ is Star!10535) (regex!5776 (h!43961 rules!3307)))) b!3654488))

(assert (= (and b!3653709 ((_ is Union!10535) (regex!5776 (h!43961 rules!3307)))) b!3654489))

(declare-fun b!3654491 () Bool)

(declare-fun e!2262681 () Bool)

(declare-fun tp!1113745 () Bool)

(declare-fun tp!1113742 () Bool)

(assert (=> b!3654491 (= e!2262681 (and tp!1113745 tp!1113742))))

(declare-fun b!3654493 () Bool)

(declare-fun tp!1113744 () Bool)

(declare-fun tp!1113743 () Bool)

(assert (=> b!3654493 (= e!2262681 (and tp!1113744 tp!1113743))))

(assert (=> b!3653717 (= tp!1113646 e!2262681)))

(declare-fun b!3654492 () Bool)

(declare-fun tp!1113741 () Bool)

(assert (=> b!3654492 (= e!2262681 tp!1113741)))

(declare-fun b!3654490 () Bool)

(assert (=> b!3654490 (= e!2262681 tp_is_empty!18153)))

(assert (= (and b!3653717 ((_ is ElementMatch!10535) (regex!5776 (rule!8578 token!511)))) b!3654490))

(assert (= (and b!3653717 ((_ is Concat!16542) (regex!5776 (rule!8578 token!511)))) b!3654491))

(assert (= (and b!3653717 ((_ is Star!10535) (regex!5776 (rule!8578 token!511)))) b!3654492))

(assert (= (and b!3653717 ((_ is Union!10535) (regex!5776 (rule!8578 token!511)))) b!3654493))

(declare-fun b!3654495 () Bool)

(declare-fun e!2262682 () Bool)

(declare-fun tp!1113750 () Bool)

(declare-fun tp!1113747 () Bool)

(assert (=> b!3654495 (= e!2262682 (and tp!1113750 tp!1113747))))

(declare-fun b!3654497 () Bool)

(declare-fun tp!1113749 () Bool)

(declare-fun tp!1113748 () Bool)

(assert (=> b!3654497 (= e!2262682 (and tp!1113749 tp!1113748))))

(assert (=> b!3653703 (= tp!1113642 e!2262682)))

(declare-fun b!3654496 () Bool)

(declare-fun tp!1113746 () Bool)

(assert (=> b!3654496 (= e!2262682 tp!1113746)))

(declare-fun b!3654494 () Bool)

(assert (=> b!3654494 (= e!2262682 tp_is_empty!18153)))

(assert (= (and b!3653703 ((_ is ElementMatch!10535) (regex!5776 anOtherTypeRule!33))) b!3654494))

(assert (= (and b!3653703 ((_ is Concat!16542) (regex!5776 anOtherTypeRule!33))) b!3654495))

(assert (= (and b!3653703 ((_ is Star!10535) (regex!5776 anOtherTypeRule!33))) b!3654496))

(assert (= (and b!3653703 ((_ is Union!10535) (regex!5776 anOtherTypeRule!33))) b!3654497))

(declare-fun b!3654498 () Bool)

(declare-fun e!2262683 () Bool)

(declare-fun tp!1113751 () Bool)

(assert (=> b!3654498 (= e!2262683 (and tp_is_empty!18153 tp!1113751))))

(assert (=> b!3653706 (= tp!1113641 e!2262683)))

(assert (= (and b!3653706 ((_ is Cons!38539) (t!297766 suffix!1395))) b!3654498))

(declare-fun b!3654500 () Bool)

(declare-fun e!2262684 () Bool)

(declare-fun tp!1113756 () Bool)

(declare-fun tp!1113753 () Bool)

(assert (=> b!3654500 (= e!2262684 (and tp!1113756 tp!1113753))))

(declare-fun b!3654502 () Bool)

(declare-fun tp!1113755 () Bool)

(declare-fun tp!1113754 () Bool)

(assert (=> b!3654502 (= e!2262684 (and tp!1113755 tp!1113754))))

(assert (=> b!3653700 (= tp!1113644 e!2262684)))

(declare-fun b!3654501 () Bool)

(declare-fun tp!1113752 () Bool)

(assert (=> b!3654501 (= e!2262684 tp!1113752)))

(declare-fun b!3654499 () Bool)

(assert (=> b!3654499 (= e!2262684 tp_is_empty!18153)))

(assert (= (and b!3653700 ((_ is ElementMatch!10535) (regex!5776 rule!403))) b!3654499))

(assert (= (and b!3653700 ((_ is Concat!16542) (regex!5776 rule!403))) b!3654500))

(assert (= (and b!3653700 ((_ is Star!10535) (regex!5776 rule!403))) b!3654501))

(assert (= (and b!3653700 ((_ is Union!10535) (regex!5776 rule!403))) b!3654502))

(declare-fun b_lambda!108379 () Bool)

(assert (= b_lambda!108345 (or (and b!3653713 b_free!96231) (and b!3654475 b_free!96239 (= (toChars!7927 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653680 b_free!96227 (= (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653686 b_free!96223 (= (toChars!7927 (transformation!5776 rule!403)) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653697 b_free!96219 (= (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) b_lambda!108379)))

(declare-fun b_lambda!108381 () Bool)

(assert (= b_lambda!108349 (or (and b!3653713 b_free!96231) (and b!3654475 b_free!96239 (= (toChars!7927 (transformation!5776 (h!43961 (t!297768 rules!3307)))) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653680 b_free!96227 (= (toChars!7927 (transformation!5776 (h!43961 rules!3307))) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653686 b_free!96223 (= (toChars!7927 (transformation!5776 rule!403)) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) (and b!3653697 b_free!96219 (= (toChars!7927 (transformation!5776 anOtherTypeRule!33)) (toChars!7927 (transformation!5776 (rule!8578 token!511))))) b_lambda!108381)))

(check-sat (not b!3654501) (not b_lambda!108347) (not bm!264118) (not bm!264139) (not b!3654126) (not b!3654498) (not tb!210869) (not b!3654108) (not d!1073365) (not bm!264147) (not b!3653882) (not b!3654102) (not b!3654454) (not d!1073401) (not d!1073389) (not b!3653818) (not b_lambda!108341) (not d!1073267) (not d!1073247) b_and!270635 (not b!3653871) (not b!3654228) (not b_next!96931) (not bm!264149) (not b!3654217) (not b!3653853) (not d!1073419) (not b!3653997) (not d!1073395) (not b!3654093) (not b!3654497) (not d!1073399) (not b!3654184) (not b_next!96927) (not b_lambda!108351) (not d!1073323) (not b!3654116) (not b_next!96933) (not d!1073535) (not bm!264141) b_and!270637 (not d!1073385) (not b!3654117) (not d!1073271) (not d!1073243) (not b!3654488) (not d!1073333) (not bm!264121) (not b!3654034) (not b!3653846) (not d!1073343) (not b_next!96935) (not b!3654158) (not bm!264150) (not b!3653879) (not d!1073349) (not b!3654502) (not d!1073353) (not b!3654182) (not b!3654031) (not d!1073391) b_and!270649 (not b!3654214) (not b!3654128) (not b!3654139) (not b!3654049) (not d!1073409) (not b!3654218) (not b!3654212) (not b!3654177) tp_is_empty!18153 (not b!3654160) (not b!3654150) (not b!3654190) (not b_lambda!108379) (not d!1073523) (not b!3654100) (not bm!264148) (not bm!264146) (not d!1073393) (not d!1073529) (not b_lambda!108371) (not tb!210885) (not d!1073345) (not d!1073275) (not b!3654459) (not d!1073351) (not b!3654245) (not d!1073355) (not b!3654030) b_and!270647 (not b!3653874) (not b!3653877) (not b!3653878) (not b!3654137) (not d!1073265) (not d!1073415) (not b!3653863) (not d!1073377) (not b!3654121) (not tb!210893) (not d!1073363) (not b!3654027) b_and!270639 (not d!1073319) (not b_next!96921) (not b!3653873) (not b!3654033) (not b_lambda!108377) (not b!3654230) (not d!1073527) (not b!3654156) (not b!3654496) (not b!3654495) (not b!3653848) (not b!3654153) (not d!1073373) (not b!3654233) (not b!3654111) (not b!3654216) (not b!3653883) (not b!3654215) (not b!3654050) (not b!3653814) (not d!1073369) (not d!1073361) (not b!3654500) (not b!3654119) (not b!3654052) (not b!3654231) (not bm!264151) (not b!3654234) (not b_lambda!108381) (not b!3654164) (not b!3654492) (not d!1073421) (not b!3654029) (not bm!264143) (not b!3654491) (not b!3654165) (not b!3654055) (not d!1073329) (not b!3654232) (not b!3654489) (not d!1073321) (not b!3654103) (not bm!264119) (not b_lambda!108373) (not d!1073311) (not d!1073397) (not bm!264153) (not b_next!96923) (not b_next!96941) (not d!1073367) b_and!270643 (not d!1073375) (not b!3653881) (not d!1073327) (not b_next!96943) b_and!270631 (not d!1073273) (not d!1073263) (not b!3654129) (not d!1073413) (not b!3653999) (not b!3654035) (not tb!210953) (not b_next!96929) (not b_next!96925) (not b!3654473) (not b!3654493) (not b_lambda!108375) (not b!3653870) (not d!1073269) (not d!1073423) (not b!3654099) (not d!1073251) (not b!3654456) (not b!3654152) b_and!270645 (not b!3654226) (not d!1073281) (not b!3654168) (not b!3653998) (not tb!210901) (not b!3654032) b_and!270641 (not b!3654213) (not d!1073339) (not d!1073387) (not b!3654125) (not b!3654464) (not b!3654219) (not b!3654487) (not tb!210961) (not b!3654167) (not b!3654183) (not d!1073383) (not b!3654458) (not b!3654236) (not b!3653864) (not d!1073337) (not bm!264140) (not b!3653847) (not d!1073533) (not b!3654095) (not b!3654175) (not b!3654229) b_and!270633 (not b!3654474) (not b!3654224))
(check-sat b_and!270635 (not b_next!96931) (not b_next!96927) (not b_next!96935) b_and!270649 b_and!270647 b_and!270639 (not b_next!96921) (not b_next!96925) b_and!270645 b_and!270641 b_and!270633 b_and!270637 (not b_next!96933) (not b_next!96923) (not b_next!96941) b_and!270643 (not b_next!96943) b_and!270631 (not b_next!96929))
