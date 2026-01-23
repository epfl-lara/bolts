; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24258 () Bool)

(assert start!24258)

(declare-fun b!227063 () Bool)

(declare-fun b_free!8497 () Bool)

(declare-fun b_next!8497 () Bool)

(assert (=> b!227063 (= b_free!8497 (not b_next!8497))))

(declare-fun tp!93450 () Bool)

(declare-fun b_and!16849 () Bool)

(assert (=> b!227063 (= tp!93450 b_and!16849)))

(declare-fun b_free!8499 () Bool)

(declare-fun b_next!8499 () Bool)

(assert (=> b!227063 (= b_free!8499 (not b_next!8499))))

(declare-fun tp!93446 () Bool)

(declare-fun b_and!16851 () Bool)

(assert (=> b!227063 (= tp!93446 b_and!16851)))

(declare-fun b!227093 () Bool)

(declare-fun b_free!8501 () Bool)

(declare-fun b_next!8501 () Bool)

(assert (=> b!227093 (= b_free!8501 (not b_next!8501))))

(declare-fun tp!93445 () Bool)

(declare-fun b_and!16853 () Bool)

(assert (=> b!227093 (= tp!93445 b_and!16853)))

(declare-fun b_free!8503 () Bool)

(declare-fun b_next!8503 () Bool)

(assert (=> b!227093 (= b_free!8503 (not b_next!8503))))

(declare-fun tp!93448 () Bool)

(declare-fun b_and!16855 () Bool)

(assert (=> b!227093 (= tp!93448 b_and!16855)))

(declare-fun b!227064 () Bool)

(declare-fun b_free!8505 () Bool)

(declare-fun b_next!8505 () Bool)

(assert (=> b!227064 (= b_free!8505 (not b_next!8505))))

(declare-fun tp!93444 () Bool)

(declare-fun b_and!16857 () Bool)

(assert (=> b!227064 (= tp!93444 b_and!16857)))

(declare-fun b_free!8507 () Bool)

(declare-fun b_next!8507 () Bool)

(assert (=> b!227064 (= b_free!8507 (not b_next!8507))))

(declare-fun tp!93451 () Bool)

(declare-fun b_and!16859 () Bool)

(assert (=> b!227064 (= tp!93451 b_and!16859)))

(declare-fun bs!24148 () Bool)

(declare-fun b!227054 () Bool)

(declare-fun b!227072 () Bool)

(assert (= bs!24148 (and b!227054 b!227072)))

(declare-fun lambda!7138 () Int)

(declare-fun lambda!7137 () Int)

(assert (=> bs!24148 (not (= lambda!7138 lambda!7137))))

(declare-fun b!227108 () Bool)

(declare-fun e!140313 () Bool)

(assert (=> b!227108 (= e!140313 true)))

(declare-fun b!227107 () Bool)

(declare-fun e!140312 () Bool)

(assert (=> b!227107 (= e!140312 e!140313)))

(declare-fun b!227106 () Bool)

(declare-fun e!140311 () Bool)

(assert (=> b!227106 (= e!140311 e!140312)))

(assert (=> b!227054 e!140311))

(assert (= b!227107 b!227108))

(assert (= b!227106 b!227107))

(declare-datatypes ((List!3447 0))(
  ( (Nil!3437) (Cons!3437 (h!8834 (_ BitVec 16)) (t!33313 List!3447)) )
))
(declare-datatypes ((TokenValue!665 0))(
  ( (FloatLiteralValue!1330 (text!5100 List!3447)) (TokenValueExt!664 (__x!2817 Int)) (Broken!3325 (value!22615 List!3447)) (Object!674) (End!665) (Def!665) (Underscore!665) (Match!665) (Else!665) (Error!665) (Case!665) (If!665) (Extends!665) (Abstract!665) (Class!665) (Val!665) (DelimiterValue!1330 (del!725 List!3447)) (KeywordValue!671 (value!22616 List!3447)) (CommentValue!1330 (value!22617 List!3447)) (WhitespaceValue!1330 (value!22618 List!3447)) (IndentationValue!665 (value!22619 List!3447)) (String!4404) (Int32!665) (Broken!3326 (value!22620 List!3447)) (Boolean!666) (Unit!3905) (OperatorValue!668 (op!725 List!3447)) (IdentifierValue!1330 (value!22621 List!3447)) (IdentifierValue!1331 (value!22622 List!3447)) (WhitespaceValue!1331 (value!22623 List!3447)) (True!1330) (False!1330) (Broken!3327 (value!22624 List!3447)) (Broken!3328 (value!22625 List!3447)) (True!1331) (RightBrace!665) (RightBracket!665) (Colon!665) (Null!665) (Comma!665) (LeftBracket!665) (False!1331) (LeftBrace!665) (ImaginaryLiteralValue!665 (text!5101 List!3447)) (StringLiteralValue!1995 (value!22626 List!3447)) (EOFValue!665 (value!22627 List!3447)) (IdentValue!665 (value!22628 List!3447)) (DelimiterValue!1331 (value!22629 List!3447)) (DedentValue!665 (value!22630 List!3447)) (NewLineValue!665 (value!22631 List!3447)) (IntegerValue!1995 (value!22632 (_ BitVec 32)) (text!5102 List!3447)) (IntegerValue!1996 (value!22633 Int) (text!5103 List!3447)) (Times!665) (Or!665) (Equal!665) (Minus!665) (Broken!3329 (value!22634 List!3447)) (And!665) (Div!665) (LessEqual!665) (Mod!665) (Concat!1532) (Not!665) (Plus!665) (SpaceValue!665 (value!22635 List!3447)) (IntegerValue!1997 (value!22636 Int) (text!5104 List!3447)) (StringLiteralValue!1996 (text!5105 List!3447)) (FloatLiteralValue!1331 (text!5106 List!3447)) (BytesLiteralValue!665 (value!22637 List!3447)) (CommentValue!1331 (value!22638 List!3447)) (StringLiteralValue!1997 (value!22639 List!3447)) (ErrorTokenValue!665 (msg!726 List!3447)) )
))
(declare-datatypes ((C!2656 0))(
  ( (C!2657 (val!1214 Int)) )
))
(declare-datatypes ((List!3448 0))(
  ( (Nil!3438) (Cons!3438 (h!8835 C!2656) (t!33314 List!3448)) )
))
(declare-datatypes ((IArray!2217 0))(
  ( (IArray!2218 (innerList!1166 List!3448)) )
))
(declare-datatypes ((Conc!1108 0))(
  ( (Node!1108 (left!2772 Conc!1108) (right!3102 Conc!1108) (csize!2446 Int) (cheight!1319 Int)) (Leaf!1769 (xs!3703 IArray!2217) (csize!2447 Int)) (Empty!1108) )
))
(declare-datatypes ((BalanceConc!2224 0))(
  ( (BalanceConc!2225 (c!43553 Conc!1108)) )
))
(declare-datatypes ((TokenValueInjection!1102 0))(
  ( (TokenValueInjection!1103 (toValue!1338 Int) (toChars!1197 Int)) )
))
(declare-datatypes ((String!4405 0))(
  ( (String!4406 (value!22640 String)) )
))
(declare-datatypes ((Regex!867 0))(
  ( (ElementMatch!867 (c!43554 C!2656)) (Concat!1533 (regOne!2246 Regex!867) (regTwo!2246 Regex!867)) (EmptyExpr!867) (Star!867 (reg!1196 Regex!867)) (EmptyLang!867) (Union!867 (regOne!2247 Regex!867) (regTwo!2247 Regex!867)) )
))
(declare-datatypes ((Rule!1086 0))(
  ( (Rule!1087 (regex!643 Regex!867) (tag!841 String!4405) (isSeparator!643 Bool) (transformation!643 TokenValueInjection!1102)) )
))
(declare-datatypes ((List!3449 0))(
  ( (Nil!3439) (Cons!3439 (h!8836 Rule!1086) (t!33315 List!3449)) )
))
(declare-fun rules!1920 () List!3449)

(get-info :version)

(assert (= (and b!227054 ((_ is Cons!3439) rules!1920)) b!227106))

(declare-fun order!2381 () Int)

(declare-fun order!2383 () Int)

(declare-fun dynLambda!1595 (Int Int) Int)

(declare-fun dynLambda!1596 (Int Int) Int)

(assert (=> b!227108 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7138))))

(declare-fun order!2385 () Int)

(declare-fun dynLambda!1597 (Int Int) Int)

(assert (=> b!227108 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7138))))

(assert (=> b!227054 true))

(declare-fun b!227048 () Bool)

(declare-fun e!140292 () Bool)

(declare-fun e!140271 () Bool)

(declare-fun tp!93455 () Bool)

(assert (=> b!227048 (= e!140292 (and e!140271 tp!93455))))

(declare-fun b!227049 () Bool)

(declare-fun e!140278 () Bool)

(declare-fun e!140286 () Bool)

(assert (=> b!227049 (= e!140278 (not e!140286))))

(declare-fun res!104499 () Bool)

(assert (=> b!227049 (=> res!104499 e!140286)))

(declare-fun lt!88002 () List!3448)

(declare-fun lt!87984 () BalanceConc!2224)

(declare-fun list!1320 (BalanceConc!2224) List!3448)

(assert (=> b!227049 (= res!104499 (not (= lt!88002 (list!1320 lt!87984))))))

(declare-datatypes ((Token!1030 0))(
  ( (Token!1031 (value!22641 TokenValue!665) (rule!1198 Rule!1086) (size!2754 Int) (originalCharacters!686 List!3448)) )
))
(declare-fun separatorToken!170 () Token!1030)

(declare-datatypes ((List!3450 0))(
  ( (Nil!3440) (Cons!3440 (h!8837 Token!1030) (t!33316 List!3450)) )
))
(declare-fun tokens!465 () List!3450)

(declare-datatypes ((LexerInterface!529 0))(
  ( (LexerInterfaceExt!526 (__x!2818 Int)) (Lexer!527) )
))
(declare-fun thiss!17480 () LexerInterface!529)

(declare-datatypes ((IArray!2219 0))(
  ( (IArray!2220 (innerList!1167 List!3450)) )
))
(declare-datatypes ((Conc!1109 0))(
  ( (Node!1109 (left!2773 Conc!1109) (right!3103 Conc!1109) (csize!2448 Int) (cheight!1320 Int)) (Leaf!1770 (xs!3704 IArray!2219) (csize!2449 Int)) (Empty!1109) )
))
(declare-datatypes ((BalanceConc!2226 0))(
  ( (BalanceConc!2227 (c!43555 Conc!1109)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!212 (LexerInterface!529 List!3449 BalanceConc!2226 Token!1030 Int) BalanceConc!2224)

(declare-fun seqFromList!663 (List!3450) BalanceConc!2226)

(assert (=> b!227049 (= lt!87984 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 (seqFromList!663 (t!33316 tokens!465)) separatorToken!170 0))))

(declare-fun lt!87998 () List!3448)

(declare-fun lt!87974 () List!3448)

(assert (=> b!227049 (= lt!87998 lt!87974)))

(declare-fun lt!88004 () List!3448)

(declare-fun lt!88022 () List!3448)

(declare-fun ++!862 (List!3448 List!3448) List!3448)

(assert (=> b!227049 (= lt!87974 (++!862 lt!88004 lt!88022))))

(declare-fun lt!87975 () List!3448)

(assert (=> b!227049 (= lt!87998 (++!862 (++!862 lt!88004 lt!87975) lt!88002))))

(declare-datatypes ((Unit!3906 0))(
  ( (Unit!3907) )
))
(declare-fun lt!87991 () Unit!3906)

(declare-fun lemmaConcatAssociativity!344 (List!3448 List!3448 List!3448) Unit!3906)

(assert (=> b!227049 (= lt!87991 (lemmaConcatAssociativity!344 lt!88004 lt!87975 lt!88002))))

(declare-fun charsOf!298 (Token!1030) BalanceConc!2224)

(assert (=> b!227049 (= lt!88004 (list!1320 (charsOf!298 (h!8837 tokens!465))))))

(assert (=> b!227049 (= lt!88022 (++!862 lt!87975 lt!88002))))

(declare-fun printWithSeparatorTokenWhenNeededList!222 (LexerInterface!529 List!3449 List!3450 Token!1030) List!3448)

(assert (=> b!227049 (= lt!88002 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170))))

(assert (=> b!227049 (= lt!87975 (list!1320 (charsOf!298 separatorToken!170)))))

(declare-fun b!227050 () Bool)

(declare-fun e!140297 () Bool)

(declare-datatypes ((tuple2!3696 0))(
  ( (tuple2!3697 (_1!2064 Token!1030) (_2!2064 List!3448)) )
))
(declare-datatypes ((Option!621 0))(
  ( (None!620) (Some!620 (v!14303 tuple2!3696)) )
))
(declare-fun lt!87979 () Option!621)

(declare-fun get!1082 (Option!621) tuple2!3696)

(declare-fun head!781 (List!3450) Token!1030)

(assert (=> b!227050 (= e!140297 (= (_1!2064 (get!1082 lt!87979)) (head!781 tokens!465)))))

(declare-fun b!227051 () Bool)

(declare-fun e!140280 () Unit!3906)

(declare-fun Unit!3908 () Unit!3906)

(assert (=> b!227051 (= e!140280 Unit!3908)))

(declare-fun lt!87988 () Token!1030)

(declare-fun lt!88000 () C!2656)

(declare-fun lt!87992 () Unit!3906)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!36 (LexerInterface!529 List!3449 List!3449 Rule!1086 Rule!1086 C!2656) Unit!3906)

(assert (=> b!227051 (= lt!87992 (lemmaSepRuleNotContainsCharContainedInANonSepRule!36 thiss!17480 rules!1920 rules!1920 (rule!1198 lt!87988) (rule!1198 separatorToken!170) lt!88000))))

(assert (=> b!227051 false))

(declare-fun b!227052 () Bool)

(declare-fun e!140293 () Bool)

(declare-fun e!140284 () Bool)

(assert (=> b!227052 (= e!140293 e!140284)))

(declare-fun res!104489 () Bool)

(assert (=> b!227052 (=> (not res!104489) (not e!140284))))

(declare-fun lt!88011 () Rule!1086)

(declare-fun matchR!205 (Regex!867 List!3448) Bool)

(assert (=> b!227052 (= res!104489 (matchR!205 (regex!643 lt!88011) lt!87975))))

(declare-datatypes ((Option!622 0))(
  ( (None!621) (Some!621 (v!14304 Rule!1086)) )
))
(declare-fun lt!88017 () Option!622)

(declare-fun get!1083 (Option!622) Rule!1086)

(assert (=> b!227052 (= lt!88011 (get!1083 lt!88017))))

(declare-fun b!227053 () Bool)

(declare-fun e!140285 () Bool)

(declare-fun e!140290 () Bool)

(assert (=> b!227053 (= e!140285 e!140290)))

(declare-fun res!104506 () Bool)

(assert (=> b!227053 (=> res!104506 e!140290)))

(declare-fun lt!88014 () Bool)

(assert (=> b!227053 (= res!104506 (not lt!88014))))

(declare-fun e!140294 () Bool)

(assert (=> b!227053 e!140294))

(declare-fun res!104482 () Bool)

(assert (=> b!227053 (=> (not res!104482) (not e!140294))))

(declare-fun lt!87996 () tuple2!3696)

(assert (=> b!227053 (= res!104482 (= (_1!2064 lt!87996) (h!8837 tokens!465)))))

(declare-fun lt!87995 () Option!621)

(assert (=> b!227053 (= lt!87996 (get!1082 lt!87995))))

(declare-fun isDefined!472 (Option!621) Bool)

(assert (=> b!227053 (isDefined!472 lt!87995)))

(declare-fun maxPrefix!259 (LexerInterface!529 List!3449 List!3448) Option!621)

(assert (=> b!227053 (= lt!87995 (maxPrefix!259 thiss!17480 rules!1920 lt!88004))))

(declare-fun e!140287 () Bool)

(assert (=> b!227054 (= e!140287 e!140285)))

(declare-fun res!104490 () Bool)

(assert (=> b!227054 (=> res!104490 e!140285)))

(declare-datatypes ((tuple2!3698 0))(
  ( (tuple2!3699 (_1!2065 Token!1030) (_2!2065 BalanceConc!2224)) )
))
(declare-datatypes ((Option!623 0))(
  ( (None!622) (Some!622 (v!14305 tuple2!3698)) )
))
(declare-fun isDefined!473 (Option!623) Bool)

(declare-fun maxPrefixZipperSequence!222 (LexerInterface!529 List!3449 BalanceConc!2224) Option!623)

(declare-fun seqFromList!664 (List!3448) BalanceConc!2224)

(assert (=> b!227054 (= res!104490 (not (isDefined!473 (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))

(declare-fun lt!88016 () Unit!3906)

(declare-fun forallContained!210 (List!3450 Int Token!1030) Unit!3906)

(assert (=> b!227054 (= lt!88016 (forallContained!210 tokens!465 lambda!7138 (h!8837 tokens!465)))))

(assert (=> b!227054 (= lt!88004 (originalCharacters!686 (h!8837 tokens!465)))))

(declare-fun b!227055 () Bool)

(declare-fun res!104495 () Bool)

(declare-fun e!140299 () Bool)

(assert (=> b!227055 (=> res!104495 e!140299)))

(declare-fun filter!37 (List!3450 Int) List!3450)

(declare-datatypes ((tuple2!3700 0))(
  ( (tuple2!3701 (_1!2066 List!3450) (_2!2066 List!3448)) )
))
(declare-fun lexList!157 (LexerInterface!529 List!3449 List!3448) tuple2!3700)

(assert (=> b!227055 (= res!104495 (not (= (filter!37 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)) lambda!7137) (t!33316 tokens!465))))))

(declare-fun b!227056 () Bool)

(declare-fun res!104494 () Bool)

(assert (=> b!227056 (=> (not res!104494) (not e!140278))))

(declare-fun lt!88008 () List!3448)

(declare-fun lt!88007 () List!3448)

(assert (=> b!227056 (= res!104494 (= (list!1320 (seqFromList!664 lt!88008)) lt!88007))))

(declare-fun b!227057 () Bool)

(declare-fun e!140273 () Bool)

(assert (=> b!227057 (= e!140273 e!140287)))

(declare-fun res!104485 () Bool)

(assert (=> b!227057 (=> res!104485 e!140287)))

(declare-fun lt!88001 () List!3448)

(declare-fun lt!87982 () List!3448)

(assert (=> b!227057 (= res!104485 (or (not (= lt!87982 lt!88001)) (not (= lt!88001 lt!88004)) (not (= lt!87982 lt!88004))))))

(declare-fun printList!213 (LexerInterface!529 List!3450) List!3448)

(assert (=> b!227057 (= lt!88001 (printList!213 thiss!17480 (Cons!3440 (h!8837 tokens!465) Nil!3440)))))

(declare-fun lt!88005 () BalanceConc!2224)

(assert (=> b!227057 (= lt!87982 (list!1320 lt!88005))))

(declare-fun lt!87976 () BalanceConc!2226)

(declare-fun printTailRec!223 (LexerInterface!529 BalanceConc!2226 Int BalanceConc!2224) BalanceConc!2224)

(assert (=> b!227057 (= lt!88005 (printTailRec!223 thiss!17480 lt!87976 0 (BalanceConc!2225 Empty!1108)))))

(declare-fun print!260 (LexerInterface!529 BalanceConc!2226) BalanceConc!2224)

(assert (=> b!227057 (= lt!88005 (print!260 thiss!17480 lt!87976))))

(declare-fun singletonSeq!195 (Token!1030) BalanceConc!2226)

(assert (=> b!227057 (= lt!87976 (singletonSeq!195 (h!8837 tokens!465)))))

(declare-fun b!227058 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!179 (LexerInterface!529 List!3449 List!3450) Bool)

(assert (=> b!227058 (= e!140299 (rulesProduceEachTokenIndividuallyList!179 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!227059 () Bool)

(declare-fun e!140296 () Unit!3906)

(declare-fun Unit!3909 () Unit!3906)

(assert (=> b!227059 (= e!140296 Unit!3909)))

(declare-fun e!140274 () Bool)

(declare-fun b!227060 () Bool)

(declare-fun tp!93449 () Bool)

(declare-fun inv!4288 (String!4405) Bool)

(declare-fun inv!4291 (TokenValueInjection!1102) Bool)

(assert (=> b!227060 (= e!140271 (and tp!93449 (inv!4288 (tag!841 (h!8836 rules!1920))) (inv!4291 (transformation!643 (h!8836 rules!1920))) e!140274))))

(declare-fun b!227061 () Bool)

(assert (=> b!227061 (= e!140286 e!140273)))

(declare-fun res!104504 () Bool)

(assert (=> b!227061 (=> res!104504 e!140273)))

(declare-fun e!140277 () Bool)

(assert (=> b!227061 (= res!104504 e!140277)))

(declare-fun res!104492 () Bool)

(assert (=> b!227061 (=> (not res!104492) (not e!140277))))

(assert (=> b!227061 (= res!104492 (not lt!88014))))

(assert (=> b!227061 (= lt!88014 (= lt!88008 lt!87974))))

(declare-fun b!227062 () Bool)

(declare-fun Unit!3910 () Unit!3906)

(assert (=> b!227062 (= e!140296 Unit!3910)))

(declare-fun lt!88009 () Unit!3906)

(declare-fun lt!87999 () C!2656)

(declare-fun lt!88013 () List!3448)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!42 (Regex!867 List!3448 C!2656) Unit!3906)

(assert (=> b!227062 (= lt!88009 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!42 (regex!643 (rule!1198 lt!87988)) lt!88013 lt!87999))))

(declare-fun res!104510 () Bool)

(assert (=> b!227062 (= res!104510 (not (matchR!205 (regex!643 (rule!1198 lt!87988)) lt!88013)))))

(declare-fun e!140272 () Bool)

(assert (=> b!227062 (=> (not res!104510) (not e!140272))))

(assert (=> b!227062 e!140272))

(declare-fun e!140268 () Bool)

(assert (=> b!227063 (= e!140268 (and tp!93450 tp!93446))))

(declare-fun e!140304 () Bool)

(assert (=> b!227064 (= e!140304 (and tp!93444 tp!93451))))

(declare-fun b!227065 () Bool)

(declare-fun res!104496 () Bool)

(declare-fun e!140267 () Bool)

(assert (=> b!227065 (=> (not res!104496) (not e!140267))))

(declare-fun rulesProduceIndividualToken!278 (LexerInterface!529 List!3449 Token!1030) Bool)

(assert (=> b!227065 (= res!104496 (rulesProduceIndividualToken!278 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!227066 () Bool)

(declare-fun res!104484 () Bool)

(assert (=> b!227066 (=> res!104484 e!140287)))

(declare-fun isEmpty!1958 (BalanceConc!2226) Bool)

(declare-datatypes ((tuple2!3702 0))(
  ( (tuple2!3703 (_1!2067 BalanceConc!2226) (_2!2067 BalanceConc!2224)) )
))
(declare-fun lex!329 (LexerInterface!529 List!3449 BalanceConc!2224) tuple2!3702)

(assert (=> b!227066 (= res!104484 (isEmpty!1958 (_1!2067 (lex!329 thiss!17480 rules!1920 (seqFromList!664 lt!88004)))))))

(declare-fun b!227067 () Bool)

(assert (=> b!227067 (= e!140277 (not (= lt!88008 (++!862 lt!88004 lt!88002))))))

(declare-fun b!227068 () Bool)

(assert (=> b!227068 (= e!140272 false)))

(declare-fun tp!93447 () Bool)

(declare-fun e!140270 () Bool)

(declare-fun b!227069 () Bool)

(declare-fun e!140300 () Bool)

(declare-fun inv!4292 (Token!1030) Bool)

(assert (=> b!227069 (= e!140300 (and (inv!4292 (h!8837 tokens!465)) e!140270 tp!93447))))

(declare-fun b!227070 () Bool)

(declare-fun e!140302 () Unit!3906)

(declare-fun Unit!3911 () Unit!3906)

(assert (=> b!227070 (= e!140302 Unit!3911)))

(declare-fun b!227071 () Bool)

(assert (=> b!227071 (= e!140267 e!140278)))

(declare-fun res!104511 () Bool)

(assert (=> b!227071 (=> (not res!104511) (not e!140278))))

(assert (=> b!227071 (= res!104511 (= lt!88008 lt!88007))))

(declare-fun lt!87985 () BalanceConc!2226)

(assert (=> b!227071 (= lt!88007 (list!1320 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 lt!87985 separatorToken!170 0)))))

(assert (=> b!227071 (= lt!88008 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!104486 () Bool)

(assert (=> b!227072 (=> (not res!104486) (not e!140267))))

(declare-fun forall!773 (List!3450 Int) Bool)

(assert (=> b!227072 (= res!104486 (forall!773 tokens!465 lambda!7137))))

(declare-fun b!227073 () Bool)

(declare-fun e!140281 () Bool)

(assert (=> b!227073 (= e!140281 e!140297)))

(declare-fun res!104505 () Bool)

(assert (=> b!227073 (=> (not res!104505) (not e!140297))))

(assert (=> b!227073 (= res!104505 (isDefined!472 lt!87979))))

(assert (=> b!227073 (= lt!87979 (maxPrefix!259 thiss!17480 rules!1920 lt!88008))))

(declare-fun b!227074 () Bool)

(declare-fun res!104515 () Bool)

(declare-fun e!140279 () Bool)

(assert (=> b!227074 (=> (not res!104515) (not e!140279))))

(declare-fun isEmpty!1959 (List!3449) Bool)

(assert (=> b!227074 (= res!104515 (not (isEmpty!1959 rules!1920)))))

(declare-fun b!227075 () Bool)

(declare-fun Unit!3912 () Unit!3906)

(assert (=> b!227075 (= e!140302 Unit!3912)))

(assert (=> b!227075 false))

(declare-fun b!227076 () Bool)

(declare-fun res!104501 () Bool)

(declare-fun e!140283 () Bool)

(assert (=> b!227076 (=> (not res!104501) (not e!140283))))

(declare-fun lt!87973 () tuple2!3702)

(declare-fun apply!614 (BalanceConc!2226 Int) Token!1030)

(assert (=> b!227076 (= res!104501 (= (apply!614 (_1!2067 lt!87973) 0) separatorToken!170))))

(declare-fun b!227077 () Bool)

(declare-fun e!140303 () Bool)

(declare-fun tp!93453 () Bool)

(assert (=> b!227077 (= e!140303 (and tp!93453 (inv!4288 (tag!841 (rule!1198 (h!8837 tokens!465)))) (inv!4291 (transformation!643 (rule!1198 (h!8837 tokens!465)))) e!140268))))

(declare-fun b!227078 () Bool)

(declare-fun res!104503 () Bool)

(assert (=> b!227078 (=> res!104503 e!140287)))

(assert (=> b!227078 (= res!104503 (not (rulesProduceIndividualToken!278 thiss!17480 rules!1920 (h!8837 tokens!465))))))

(declare-fun b!227079 () Bool)

(declare-fun res!104509 () Bool)

(assert (=> b!227079 (=> (not res!104509) (not e!140267))))

(declare-fun sepAndNonSepRulesDisjointChars!232 (List!3449 List!3449) Bool)

(assert (=> b!227079 (= res!104509 (sepAndNonSepRulesDisjointChars!232 rules!1920 rules!1920))))

(declare-fun b!227080 () Bool)

(declare-fun isEmpty!1960 (BalanceConc!2224) Bool)

(assert (=> b!227080 (= e!140283 (isEmpty!1960 (_2!2067 lt!87973)))))

(declare-fun b!227081 () Bool)

(declare-fun res!104512 () Bool)

(assert (=> b!227081 (=> (not res!104512) (not e!140267))))

(assert (=> b!227081 (= res!104512 ((_ is Cons!3440) tokens!465))))

(declare-fun b!227082 () Bool)

(assert (=> b!227082 (= e!140284 (= (rule!1198 separatorToken!170) lt!88011))))

(declare-fun b!227083 () Bool)

(declare-fun e!140276 () Bool)

(declare-fun e!140269 () Bool)

(assert (=> b!227083 (= e!140276 e!140269)))

(declare-fun res!104507 () Bool)

(assert (=> b!227083 (=> (not res!104507) (not e!140269))))

(declare-fun lt!88020 () Rule!1086)

(assert (=> b!227083 (= res!104507 (matchR!205 (regex!643 lt!88020) lt!88013))))

(declare-fun lt!88006 () Option!622)

(assert (=> b!227083 (= lt!88020 (get!1083 lt!88006))))

(declare-fun b!227084 () Bool)

(declare-fun res!104497 () Bool)

(assert (=> b!227084 (=> (not res!104497) (not e!140267))))

(assert (=> b!227084 (= res!104497 (isSeparator!643 (rule!1198 separatorToken!170)))))

(declare-fun b!227085 () Bool)

(assert (=> b!227085 (= e!140269 (= (rule!1198 lt!87988) lt!88020))))

(declare-fun b!227086 () Bool)

(declare-fun res!104508 () Bool)

(assert (=> b!227086 (=> (not res!104508) (not e!140294))))

(declare-fun isEmpty!1961 (List!3448) Bool)

(assert (=> b!227086 (= res!104508 (isEmpty!1961 (_2!2064 lt!87996)))))

(declare-fun b!227087 () Bool)

(declare-fun tp!93443 () Bool)

(declare-fun e!140298 () Bool)

(assert (=> b!227087 (= e!140298 (and tp!93443 (inv!4288 (tag!841 (rule!1198 separatorToken!170))) (inv!4291 (transformation!643 (rule!1198 separatorToken!170))) e!140304))))

(declare-fun res!104493 () Bool)

(assert (=> start!24258 (=> (not res!104493) (not e!140279))))

(assert (=> start!24258 (= res!104493 ((_ is Lexer!527) thiss!17480))))

(assert (=> start!24258 e!140279))

(assert (=> start!24258 true))

(assert (=> start!24258 e!140292))

(declare-fun e!140291 () Bool)

(assert (=> start!24258 (and (inv!4292 separatorToken!170) e!140291)))

(assert (=> start!24258 e!140300))

(declare-fun b!227088 () Bool)

(declare-fun res!104498 () Bool)

(assert (=> b!227088 (=> (not res!104498) (not e!140279))))

(declare-fun rulesInvariant!495 (LexerInterface!529 List!3449) Bool)

(assert (=> b!227088 (= res!104498 (rulesInvariant!495 thiss!17480 rules!1920))))

(declare-fun b!227089 () Bool)

(assert (=> b!227089 (= e!140290 e!140299)))

(declare-fun res!104487 () Bool)

(assert (=> b!227089 (=> res!104487 e!140299)))

(declare-fun lt!88003 () List!3450)

(assert (=> b!227089 (= res!104487 (not (= (filter!37 lt!88003 lambda!7137) (t!33316 tokens!465))))))

(assert (=> b!227089 (= (filter!37 lt!88003 lambda!7137) (t!33316 tokens!465))))

(declare-fun list!1321 (BalanceConc!2226) List!3450)

(assert (=> b!227089 (= lt!88003 (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 lt!87984))))))

(declare-fun lt!88012 () Unit!3906)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!28 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> b!227089 (= lt!88012 (theoremInvertabilityFromTokensSepTokenWhenNeeded!28 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170))))

(declare-fun lt!87972 () Option!621)

(assert (=> b!227089 (= lt!87972 (Some!620 (tuple2!3697 separatorToken!170 lt!88002)))))

(declare-fun lt!88010 () Unit!3906)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!34 (LexerInterface!529 List!3449 Token!1030 Rule!1086 List!3448 Rule!1086) Unit!3906)

(assert (=> b!227089 (= lt!88010 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!34 thiss!17480 rules!1920 separatorToken!170 (rule!1198 separatorToken!170) lt!88002 (rule!1198 lt!87988)))))

(declare-fun lt!87990 () Unit!3906)

(assert (=> b!227089 (= lt!87990 e!140280)))

(declare-fun c!43550 () Bool)

(declare-fun contains!614 (List!3448 C!2656) Bool)

(declare-fun usedCharacters!48 (Regex!867) List!3448)

(assert (=> b!227089 (= c!43550 (contains!614 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170))) lt!88000))))

(declare-fun head!782 (List!3448) C!2656)

(assert (=> b!227089 (= lt!88000 (head!782 lt!88002))))

(declare-fun lt!87980 () Unit!3906)

(assert (=> b!227089 (= lt!87980 e!140296)))

(declare-fun c!43552 () Bool)

(assert (=> b!227089 (= c!43552 (not (contains!614 (usedCharacters!48 (regex!643 (rule!1198 lt!87988))) lt!87999)))))

(assert (=> b!227089 (= lt!87999 (head!782 lt!88013))))

(assert (=> b!227089 e!140276))

(declare-fun res!104514 () Bool)

(assert (=> b!227089 (=> (not res!104514) (not e!140276))))

(declare-fun isDefined!474 (Option!622) Bool)

(assert (=> b!227089 (= res!104514 (isDefined!474 lt!88006))))

(declare-fun getRuleFromTag!84 (LexerInterface!529 List!3449 String!4405) Option!622)

(assert (=> b!227089 (= lt!88006 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 lt!87988))))))

(declare-fun lt!87983 () Unit!3906)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!84 (LexerInterface!529 List!3449 List!3448 Token!1030) Unit!3906)

(assert (=> b!227089 (= lt!87983 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!84 thiss!17480 rules!1920 lt!88013 lt!87988))))

(assert (=> b!227089 (= lt!88013 (list!1320 (charsOf!298 lt!87988)))))

(declare-fun lt!87977 () Unit!3906)

(assert (=> b!227089 (= lt!87977 (forallContained!210 tokens!465 lambda!7138 lt!87988))))

(declare-fun e!140301 () Bool)

(assert (=> b!227089 e!140301))

(declare-fun res!104502 () Bool)

(assert (=> b!227089 (=> (not res!104502) (not e!140301))))

(declare-fun lt!87989 () tuple2!3702)

(declare-fun size!2755 (BalanceConc!2226) Int)

(assert (=> b!227089 (= res!104502 (= (size!2755 (_1!2067 lt!87989)) 1))))

(declare-fun lt!87987 () BalanceConc!2224)

(assert (=> b!227089 (= lt!87989 (lex!329 thiss!17480 rules!1920 lt!87987))))

(declare-fun lt!88018 () BalanceConc!2226)

(assert (=> b!227089 (= lt!87987 (printTailRec!223 thiss!17480 lt!88018 0 (BalanceConc!2225 Empty!1108)))))

(assert (=> b!227089 (= lt!87987 (print!260 thiss!17480 lt!88018))))

(assert (=> b!227089 (= lt!88018 (singletonSeq!195 lt!87988))))

(assert (=> b!227089 e!140293))

(declare-fun res!104500 () Bool)

(assert (=> b!227089 (=> (not res!104500) (not e!140293))))

(assert (=> b!227089 (= res!104500 (isDefined!474 lt!88017))))

(assert (=> b!227089 (= lt!88017 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 separatorToken!170))))))

(declare-fun lt!88021 () Unit!3906)

(assert (=> b!227089 (= lt!88021 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!84 thiss!17480 rules!1920 lt!87975 separatorToken!170))))

(assert (=> b!227089 e!140283))

(declare-fun res!104488 () Bool)

(assert (=> b!227089 (=> (not res!104488) (not e!140283))))

(assert (=> b!227089 (= res!104488 (= (size!2755 (_1!2067 lt!87973)) 1))))

(declare-fun lt!87993 () BalanceConc!2224)

(assert (=> b!227089 (= lt!87973 (lex!329 thiss!17480 rules!1920 lt!87993))))

(declare-fun lt!87997 () BalanceConc!2226)

(assert (=> b!227089 (= lt!87993 (printTailRec!223 thiss!17480 lt!87997 0 (BalanceConc!2225 Empty!1108)))))

(assert (=> b!227089 (= lt!87993 (print!260 thiss!17480 lt!87997))))

(assert (=> b!227089 (= lt!87997 (singletonSeq!195 separatorToken!170))))

(assert (=> b!227089 (rulesProduceIndividualToken!278 thiss!17480 rules!1920 lt!87988)))

(declare-fun lt!87981 () Unit!3906)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!96 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> b!227089 (= lt!87981 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!96 thiss!17480 rules!1920 tokens!465 lt!87988))))

(assert (=> b!227089 (= lt!87988 (head!781 (t!33316 tokens!465)))))

(declare-fun lt!87986 () Unit!3906)

(assert (=> b!227089 (= lt!87986 e!140302)))

(declare-fun c!43551 () Bool)

(declare-fun isEmpty!1962 (List!3450) Bool)

(assert (=> b!227089 (= c!43551 (isEmpty!1962 (t!33316 tokens!465)))))

(assert (=> b!227089 (= lt!87972 (maxPrefix!259 thiss!17480 rules!1920 lt!88022))))

(declare-fun lt!88015 () tuple2!3696)

(assert (=> b!227089 (= lt!88022 (_2!2064 lt!88015))))

(declare-fun lt!88019 () Unit!3906)

(declare-fun lemmaSamePrefixThenSameSuffix!164 (List!3448 List!3448 List!3448 List!3448 List!3448) Unit!3906)

(assert (=> b!227089 (= lt!88019 (lemmaSamePrefixThenSameSuffix!164 lt!88004 lt!88022 lt!88004 (_2!2064 lt!88015) lt!88008))))

(assert (=> b!227089 (= lt!88015 (get!1082 (maxPrefix!259 thiss!17480 rules!1920 lt!88008)))))

(declare-fun isPrefix!339 (List!3448 List!3448) Bool)

(assert (=> b!227089 (isPrefix!339 lt!88004 lt!87974)))

(declare-fun lt!87994 () Unit!3906)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!234 (List!3448 List!3448) Unit!3906)

(assert (=> b!227089 (= lt!87994 (lemmaConcatTwoListThenFirstIsPrefix!234 lt!88004 lt!88022))))

(assert (=> b!227089 e!140281))

(declare-fun res!104491 () Bool)

(assert (=> b!227089 (=> res!104491 e!140281)))

(assert (=> b!227089 (= res!104491 (isEmpty!1962 tokens!465))))

(declare-fun lt!87978 () Unit!3906)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!104 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> b!227089 (= lt!87978 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!104 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!227090 () Bool)

(declare-fun res!104513 () Bool)

(assert (=> b!227090 (=> (not res!104513) (not e!140301))))

(assert (=> b!227090 (= res!104513 (= (apply!614 (_1!2067 lt!87989) 0) lt!87988))))

(declare-fun b!227091 () Bool)

(assert (=> b!227091 (= e!140279 e!140267)))

(declare-fun res!104483 () Bool)

(assert (=> b!227091 (=> (not res!104483) (not e!140267))))

(declare-fun rulesProduceEachTokenIndividually!321 (LexerInterface!529 List!3449 BalanceConc!2226) Bool)

(assert (=> b!227091 (= res!104483 (rulesProduceEachTokenIndividually!321 thiss!17480 rules!1920 lt!87985))))

(assert (=> b!227091 (= lt!87985 (seqFromList!663 tokens!465))))

(declare-fun b!227092 () Bool)

(declare-fun Unit!3913 () Unit!3906)

(assert (=> b!227092 (= e!140280 Unit!3913)))

(assert (=> b!227093 (= e!140274 (and tp!93445 tp!93448))))

(declare-fun b!227094 () Bool)

(assert (=> b!227094 (= e!140301 (isEmpty!1960 (_2!2067 lt!87989)))))

(declare-fun b!227095 () Bool)

(assert (=> b!227095 (= e!140294 (matchR!205 (regex!643 (rule!1198 (h!8837 tokens!465))) lt!88004))))

(declare-fun b!227096 () Bool)

(declare-fun tp!93454 () Bool)

(declare-fun inv!21 (TokenValue!665) Bool)

(assert (=> b!227096 (= e!140291 (and (inv!21 (value!22641 separatorToken!170)) e!140298 tp!93454))))

(declare-fun tp!93452 () Bool)

(declare-fun b!227097 () Bool)

(assert (=> b!227097 (= e!140270 (and (inv!21 (value!22641 (h!8837 tokens!465))) e!140303 tp!93452))))

(assert (= (and start!24258 res!104493) b!227074))

(assert (= (and b!227074 res!104515) b!227088))

(assert (= (and b!227088 res!104498) b!227091))

(assert (= (and b!227091 res!104483) b!227065))

(assert (= (and b!227065 res!104496) b!227084))

(assert (= (and b!227084 res!104497) b!227072))

(assert (= (and b!227072 res!104486) b!227079))

(assert (= (and b!227079 res!104509) b!227081))

(assert (= (and b!227081 res!104512) b!227071))

(assert (= (and b!227071 res!104511) b!227056))

(assert (= (and b!227056 res!104494) b!227049))

(assert (= (and b!227049 (not res!104499)) b!227061))

(assert (= (and b!227061 res!104492) b!227067))

(assert (= (and b!227061 (not res!104504)) b!227057))

(assert (= (and b!227057 (not res!104485)) b!227078))

(assert (= (and b!227078 (not res!104503)) b!227066))

(assert (= (and b!227066 (not res!104484)) b!227054))

(assert (= (and b!227054 (not res!104490)) b!227053))

(assert (= (and b!227053 res!104482) b!227086))

(assert (= (and b!227086 res!104508) b!227095))

(assert (= (and b!227053 (not res!104506)) b!227089))

(assert (= (and b!227089 (not res!104491)) b!227073))

(assert (= (and b!227073 res!104505) b!227050))

(assert (= (and b!227089 c!43551) b!227075))

(assert (= (and b!227089 (not c!43551)) b!227070))

(assert (= (and b!227089 res!104488) b!227076))

(assert (= (and b!227076 res!104501) b!227080))

(assert (= (and b!227089 res!104500) b!227052))

(assert (= (and b!227052 res!104489) b!227082))

(assert (= (and b!227089 res!104502) b!227090))

(assert (= (and b!227090 res!104513) b!227094))

(assert (= (and b!227089 res!104514) b!227083))

(assert (= (and b!227083 res!104507) b!227085))

(assert (= (and b!227089 c!43552) b!227062))

(assert (= (and b!227089 (not c!43552)) b!227059))

(assert (= (and b!227062 res!104510) b!227068))

(assert (= (and b!227089 c!43550) b!227051))

(assert (= (and b!227089 (not c!43550)) b!227092))

(assert (= (and b!227089 (not res!104487)) b!227055))

(assert (= (and b!227055 (not res!104495)) b!227058))

(assert (= b!227060 b!227093))

(assert (= b!227048 b!227060))

(assert (= (and start!24258 ((_ is Cons!3439) rules!1920)) b!227048))

(assert (= b!227087 b!227064))

(assert (= b!227096 b!227087))

(assert (= start!24258 b!227096))

(assert (= b!227077 b!227063))

(assert (= b!227097 b!227077))

(assert (= b!227069 b!227097))

(assert (= (and start!24258 ((_ is Cons!3440) tokens!465)) b!227069))

(declare-fun m!267021 () Bool)

(assert (=> b!227077 m!267021))

(declare-fun m!267023 () Bool)

(assert (=> b!227077 m!267023))

(declare-fun m!267025 () Bool)

(assert (=> b!227057 m!267025))

(declare-fun m!267027 () Bool)

(assert (=> b!227057 m!267027))

(declare-fun m!267029 () Bool)

(assert (=> b!227057 m!267029))

(declare-fun m!267031 () Bool)

(assert (=> b!227057 m!267031))

(declare-fun m!267033 () Bool)

(assert (=> b!227057 m!267033))

(declare-fun m!267035 () Bool)

(assert (=> b!227053 m!267035))

(declare-fun m!267037 () Bool)

(assert (=> b!227053 m!267037))

(declare-fun m!267039 () Bool)

(assert (=> b!227053 m!267039))

(declare-fun m!267041 () Bool)

(assert (=> b!227062 m!267041))

(declare-fun m!267043 () Bool)

(assert (=> b!227062 m!267043))

(declare-fun m!267045 () Bool)

(assert (=> b!227076 m!267045))

(declare-fun m!267047 () Bool)

(assert (=> b!227078 m!267047))

(declare-fun m!267049 () Bool)

(assert (=> b!227094 m!267049))

(declare-fun m!267051 () Bool)

(assert (=> b!227086 m!267051))

(declare-fun m!267053 () Bool)

(assert (=> b!227097 m!267053))

(declare-fun m!267055 () Bool)

(assert (=> b!227049 m!267055))

(declare-fun m!267057 () Bool)

(assert (=> b!227049 m!267057))

(declare-fun m!267059 () Bool)

(assert (=> b!227049 m!267059))

(declare-fun m!267061 () Bool)

(assert (=> b!227049 m!267061))

(declare-fun m!267063 () Bool)

(assert (=> b!227049 m!267063))

(assert (=> b!227049 m!267059))

(declare-fun m!267065 () Bool)

(assert (=> b!227049 m!267065))

(assert (=> b!227049 m!267061))

(declare-fun m!267067 () Bool)

(assert (=> b!227049 m!267067))

(declare-fun m!267069 () Bool)

(assert (=> b!227049 m!267069))

(declare-fun m!267071 () Bool)

(assert (=> b!227049 m!267071))

(declare-fun m!267073 () Bool)

(assert (=> b!227049 m!267073))

(declare-fun m!267075 () Bool)

(assert (=> b!227049 m!267075))

(assert (=> b!227049 m!267073))

(declare-fun m!267077 () Bool)

(assert (=> b!227049 m!267077))

(assert (=> b!227049 m!267055))

(declare-fun m!267079 () Bool)

(assert (=> b!227049 m!267079))

(declare-fun m!267081 () Bool)

(assert (=> b!227074 m!267081))

(declare-fun m!267083 () Bool)

(assert (=> start!24258 m!267083))

(declare-fun m!267085 () Bool)

(assert (=> b!227060 m!267085))

(declare-fun m!267087 () Bool)

(assert (=> b!227060 m!267087))

(declare-fun m!267089 () Bool)

(assert (=> b!227096 m!267089))

(declare-fun m!267091 () Bool)

(assert (=> b!227088 m!267091))

(declare-fun m!267093 () Bool)

(assert (=> b!227050 m!267093))

(declare-fun m!267095 () Bool)

(assert (=> b!227050 m!267095))

(declare-fun m!267097 () Bool)

(assert (=> b!227090 m!267097))

(declare-fun m!267099 () Bool)

(assert (=> b!227080 m!267099))

(declare-fun m!267101 () Bool)

(assert (=> b!227083 m!267101))

(declare-fun m!267103 () Bool)

(assert (=> b!227083 m!267103))

(declare-fun m!267105 () Bool)

(assert (=> b!227054 m!267105))

(assert (=> b!227054 m!267105))

(declare-fun m!267107 () Bool)

(assert (=> b!227054 m!267107))

(assert (=> b!227054 m!267107))

(declare-fun m!267109 () Bool)

(assert (=> b!227054 m!267109))

(declare-fun m!267111 () Bool)

(assert (=> b!227054 m!267111))

(declare-fun m!267113 () Bool)

(assert (=> b!227067 m!267113))

(declare-fun m!267115 () Bool)

(assert (=> b!227056 m!267115))

(assert (=> b!227056 m!267115))

(declare-fun m!267117 () Bool)

(assert (=> b!227056 m!267117))

(declare-fun m!267119 () Bool)

(assert (=> b!227069 m!267119))

(declare-fun m!267121 () Bool)

(assert (=> b!227058 m!267121))

(declare-fun m!267123 () Bool)

(assert (=> b!227071 m!267123))

(assert (=> b!227071 m!267123))

(declare-fun m!267125 () Bool)

(assert (=> b!227071 m!267125))

(declare-fun m!267127 () Bool)

(assert (=> b!227071 m!267127))

(declare-fun m!267129 () Bool)

(assert (=> b!227051 m!267129))

(declare-fun m!267131 () Bool)

(assert (=> b!227055 m!267131))

(declare-fun m!267133 () Bool)

(assert (=> b!227055 m!267133))

(declare-fun m!267135 () Bool)

(assert (=> b!227073 m!267135))

(declare-fun m!267137 () Bool)

(assert (=> b!227073 m!267137))

(declare-fun m!267139 () Bool)

(assert (=> b!227065 m!267139))

(declare-fun m!267141 () Bool)

(assert (=> b!227089 m!267141))

(declare-fun m!267143 () Bool)

(assert (=> b!227089 m!267143))

(declare-fun m!267145 () Bool)

(assert (=> b!227089 m!267145))

(declare-fun m!267147 () Bool)

(assert (=> b!227089 m!267147))

(declare-fun m!267149 () Bool)

(assert (=> b!227089 m!267149))

(declare-fun m!267151 () Bool)

(assert (=> b!227089 m!267151))

(declare-fun m!267153 () Bool)

(assert (=> b!227089 m!267153))

(declare-fun m!267155 () Bool)

(assert (=> b!227089 m!267155))

(declare-fun m!267157 () Bool)

(assert (=> b!227089 m!267157))

(declare-fun m!267159 () Bool)

(assert (=> b!227089 m!267159))

(declare-fun m!267161 () Bool)

(assert (=> b!227089 m!267161))

(declare-fun m!267163 () Bool)

(assert (=> b!227089 m!267163))

(declare-fun m!267165 () Bool)

(assert (=> b!227089 m!267165))

(declare-fun m!267167 () Bool)

(assert (=> b!227089 m!267167))

(declare-fun m!267169 () Bool)

(assert (=> b!227089 m!267169))

(declare-fun m!267171 () Bool)

(assert (=> b!227089 m!267171))

(declare-fun m!267173 () Bool)

(assert (=> b!227089 m!267173))

(assert (=> b!227089 m!267137))

(declare-fun m!267175 () Bool)

(assert (=> b!227089 m!267175))

(declare-fun m!267177 () Bool)

(assert (=> b!227089 m!267177))

(declare-fun m!267179 () Bool)

(assert (=> b!227089 m!267179))

(declare-fun m!267181 () Bool)

(assert (=> b!227089 m!267181))

(declare-fun m!267183 () Bool)

(assert (=> b!227089 m!267183))

(declare-fun m!267185 () Bool)

(assert (=> b!227089 m!267185))

(declare-fun m!267187 () Bool)

(assert (=> b!227089 m!267187))

(declare-fun m!267189 () Bool)

(assert (=> b!227089 m!267189))

(declare-fun m!267191 () Bool)

(assert (=> b!227089 m!267191))

(declare-fun m!267193 () Bool)

(assert (=> b!227089 m!267193))

(assert (=> b!227089 m!267173))

(declare-fun m!267195 () Bool)

(assert (=> b!227089 m!267195))

(declare-fun m!267197 () Bool)

(assert (=> b!227089 m!267197))

(declare-fun m!267199 () Bool)

(assert (=> b!227089 m!267199))

(declare-fun m!267201 () Bool)

(assert (=> b!227089 m!267201))

(assert (=> b!227089 m!267189))

(declare-fun m!267203 () Bool)

(assert (=> b!227089 m!267203))

(declare-fun m!267205 () Bool)

(assert (=> b!227089 m!267205))

(declare-fun m!267207 () Bool)

(assert (=> b!227089 m!267207))

(assert (=> b!227089 m!267145))

(assert (=> b!227089 m!267179))

(declare-fun m!267209 () Bool)

(assert (=> b!227089 m!267209))

(declare-fun m!267211 () Bool)

(assert (=> b!227089 m!267211))

(declare-fun m!267213 () Bool)

(assert (=> b!227089 m!267213))

(declare-fun m!267215 () Bool)

(assert (=> b!227089 m!267215))

(assert (=> b!227089 m!267137))

(declare-fun m!267217 () Bool)

(assert (=> b!227089 m!267217))

(declare-fun m!267219 () Bool)

(assert (=> b!227089 m!267219))

(declare-fun m!267221 () Bool)

(assert (=> b!227089 m!267221))

(declare-fun m!267223 () Bool)

(assert (=> b!227079 m!267223))

(declare-fun m!267225 () Bool)

(assert (=> b!227087 m!267225))

(declare-fun m!267227 () Bool)

(assert (=> b!227087 m!267227))

(declare-fun m!267229 () Bool)

(assert (=> b!227072 m!267229))

(declare-fun m!267231 () Bool)

(assert (=> b!227052 m!267231))

(declare-fun m!267233 () Bool)

(assert (=> b!227052 m!267233))

(declare-fun m!267235 () Bool)

(assert (=> b!227091 m!267235))

(declare-fun m!267237 () Bool)

(assert (=> b!227091 m!267237))

(declare-fun m!267239 () Bool)

(assert (=> b!227095 m!267239))

(declare-fun m!267241 () Bool)

(assert (=> b!227066 m!267241))

(assert (=> b!227066 m!267241))

(declare-fun m!267243 () Bool)

(assert (=> b!227066 m!267243))

(declare-fun m!267245 () Bool)

(assert (=> b!227066 m!267245))

(check-sat (not b!227062) (not b!227079) (not b!227066) (not b!227089) (not b!227067) (not b!227074) (not b!227053) (not b!227060) (not b!227056) (not b!227087) (not b!227083) b_and!16859 (not b!227096) (not b!227057) b_and!16851 (not b!227054) (not b_next!8503) (not b_next!8507) (not b!227095) (not b!227094) (not start!24258) (not b!227049) (not b!227050) (not b!227055) (not b!227106) b_and!16857 (not b!227077) (not b!227072) (not b_next!8499) (not b!227088) (not b!227052) (not b!227071) (not b_next!8501) (not b!227048) (not b!227091) b_and!16853 (not b_next!8497) (not b!227065) (not b!227076) (not b!227069) (not b!227080) (not b!227073) (not b!227078) (not b!227090) b_and!16855 (not b_next!8505) (not b!227058) (not b!227086) b_and!16849 (not b!227051) (not b!227097))
(check-sat b_and!16859 b_and!16851 b_and!16857 (not b_next!8499) (not b_next!8501) b_and!16849 (not b_next!8503) (not b_next!8507) b_and!16853 (not b_next!8497) b_and!16855 (not b_next!8505))
(get-model)

(declare-fun bs!24154 () Bool)

(declare-fun d!62737 () Bool)

(assert (= bs!24154 (and d!62737 b!227072)))

(declare-fun lambda!7141 () Int)

(assert (=> bs!24154 (not (= lambda!7141 lambda!7137))))

(declare-fun bs!24155 () Bool)

(assert (= bs!24155 (and d!62737 b!227054)))

(assert (=> bs!24155 (= lambda!7141 lambda!7138)))

(declare-fun b!227253 () Bool)

(declare-fun e!140393 () Bool)

(assert (=> b!227253 (= e!140393 true)))

(declare-fun b!227252 () Bool)

(declare-fun e!140392 () Bool)

(assert (=> b!227252 (= e!140392 e!140393)))

(declare-fun b!227251 () Bool)

(declare-fun e!140391 () Bool)

(assert (=> b!227251 (= e!140391 e!140392)))

(assert (=> d!62737 e!140391))

(assert (= b!227252 b!227253))

(assert (= b!227251 b!227252))

(assert (= (and d!62737 ((_ is Cons!3439) rules!1920)) b!227251))

(assert (=> b!227253 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7141))))

(assert (=> b!227253 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7141))))

(assert (=> d!62737 true))

(declare-fun lt!88056 () Bool)

(assert (=> d!62737 (= lt!88056 (forall!773 tokens!465 lambda!7141))))

(declare-fun e!140389 () Bool)

(assert (=> d!62737 (= lt!88056 e!140389)))

(declare-fun res!104618 () Bool)

(assert (=> d!62737 (=> res!104618 e!140389)))

(assert (=> d!62737 (= res!104618 (not ((_ is Cons!3440) tokens!465)))))

(assert (=> d!62737 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62737 (= (rulesProduceEachTokenIndividuallyList!179 thiss!17480 rules!1920 tokens!465) lt!88056)))

(declare-fun b!227249 () Bool)

(declare-fun e!140390 () Bool)

(assert (=> b!227249 (= e!140389 e!140390)))

(declare-fun res!104619 () Bool)

(assert (=> b!227249 (=> (not res!104619) (not e!140390))))

(assert (=> b!227249 (= res!104619 (rulesProduceIndividualToken!278 thiss!17480 rules!1920 (h!8837 tokens!465)))))

(declare-fun b!227250 () Bool)

(assert (=> b!227250 (= e!140390 (rulesProduceEachTokenIndividuallyList!179 thiss!17480 rules!1920 (t!33316 tokens!465)))))

(assert (= (and d!62737 (not res!104618)) b!227249))

(assert (= (and b!227249 res!104619) b!227250))

(declare-fun m!267403 () Bool)

(assert (=> d!62737 m!267403))

(assert (=> d!62737 m!267081))

(assert (=> b!227249 m!267047))

(declare-fun m!267405 () Bool)

(assert (=> b!227250 m!267405))

(assert (=> b!227058 d!62737))

(declare-fun d!62765 () Bool)

(declare-fun res!104624 () Bool)

(declare-fun e!140398 () Bool)

(assert (=> d!62765 (=> res!104624 e!140398)))

(assert (=> d!62765 (= res!104624 (not ((_ is Cons!3439) rules!1920)))))

(assert (=> d!62765 (= (sepAndNonSepRulesDisjointChars!232 rules!1920 rules!1920) e!140398)))

(declare-fun b!227258 () Bool)

(declare-fun e!140399 () Bool)

(assert (=> b!227258 (= e!140398 e!140399)))

(declare-fun res!104625 () Bool)

(assert (=> b!227258 (=> (not res!104625) (not e!140399))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!80 (Rule!1086 List!3449) Bool)

(assert (=> b!227258 (= res!104625 (ruleDisjointCharsFromAllFromOtherType!80 (h!8836 rules!1920) rules!1920))))

(declare-fun b!227259 () Bool)

(assert (=> b!227259 (= e!140399 (sepAndNonSepRulesDisjointChars!232 rules!1920 (t!33315 rules!1920)))))

(assert (= (and d!62765 (not res!104624)) b!227258))

(assert (= (and b!227258 res!104625) b!227259))

(declare-fun m!267407 () Bool)

(assert (=> b!227258 m!267407))

(declare-fun m!267409 () Bool)

(assert (=> b!227259 m!267409))

(assert (=> b!227079 d!62765))

(declare-fun d!62767 () Bool)

(declare-fun lt!88059 () Bool)

(assert (=> d!62767 (= lt!88059 (isEmpty!1961 (list!1320 (_2!2067 lt!87973))))))

(declare-fun isEmpty!1965 (Conc!1108) Bool)

(assert (=> d!62767 (= lt!88059 (isEmpty!1965 (c!43553 (_2!2067 lt!87973))))))

(assert (=> d!62767 (= (isEmpty!1960 (_2!2067 lt!87973)) lt!88059)))

(declare-fun bs!24156 () Bool)

(assert (= bs!24156 d!62767))

(declare-fun m!267411 () Bool)

(assert (=> bs!24156 m!267411))

(assert (=> bs!24156 m!267411))

(declare-fun m!267413 () Bool)

(assert (=> bs!24156 m!267413))

(declare-fun m!267415 () Bool)

(assert (=> bs!24156 m!267415))

(assert (=> b!227080 d!62767))

(declare-fun d!62769 () Bool)

(assert (=> d!62769 (= (inv!4288 (tag!841 (h!8836 rules!1920))) (= (mod (str.len (value!22640 (tag!841 (h!8836 rules!1920)))) 2) 0))))

(assert (=> b!227060 d!62769))

(declare-fun d!62771 () Bool)

(declare-fun res!104628 () Bool)

(declare-fun e!140402 () Bool)

(assert (=> d!62771 (=> (not res!104628) (not e!140402))))

(declare-fun semiInverseModEq!221 (Int Int) Bool)

(assert (=> d!62771 (= res!104628 (semiInverseModEq!221 (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toValue!1338 (transformation!643 (h!8836 rules!1920)))))))

(assert (=> d!62771 (= (inv!4291 (transformation!643 (h!8836 rules!1920))) e!140402)))

(declare-fun b!227262 () Bool)

(declare-fun equivClasses!204 (Int Int) Bool)

(assert (=> b!227262 (= e!140402 (equivClasses!204 (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toValue!1338 (transformation!643 (h!8836 rules!1920)))))))

(assert (= (and d!62771 res!104628) b!227262))

(declare-fun m!267417 () Bool)

(assert (=> d!62771 m!267417))

(declare-fun m!267419 () Bool)

(assert (=> b!227262 m!267419))

(assert (=> b!227060 d!62771))

(declare-fun d!62773 () Bool)

(assert (=> d!62773 (not (matchR!205 (regex!643 (rule!1198 lt!87988)) lt!88013))))

(declare-fun lt!88062 () Unit!3906)

(declare-fun choose!2185 (Regex!867 List!3448 C!2656) Unit!3906)

(assert (=> d!62773 (= lt!88062 (choose!2185 (regex!643 (rule!1198 lt!87988)) lt!88013 lt!87999))))

(declare-fun validRegex!223 (Regex!867) Bool)

(assert (=> d!62773 (validRegex!223 (regex!643 (rule!1198 lt!87988)))))

(assert (=> d!62773 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!42 (regex!643 (rule!1198 lt!87988)) lt!88013 lt!87999) lt!88062)))

(declare-fun bs!24157 () Bool)

(assert (= bs!24157 d!62773))

(assert (=> bs!24157 m!267043))

(declare-fun m!267421 () Bool)

(assert (=> bs!24157 m!267421))

(declare-fun m!267423 () Bool)

(assert (=> bs!24157 m!267423))

(assert (=> b!227062 d!62773))

(declare-fun b!227291 () Bool)

(declare-fun res!104648 () Bool)

(declare-fun e!140423 () Bool)

(assert (=> b!227291 (=> (not res!104648) (not e!140423))))

(declare-fun call!11569 () Bool)

(assert (=> b!227291 (= res!104648 (not call!11569))))

(declare-fun b!227292 () Bool)

(declare-fun e!140420 () Bool)

(declare-fun lt!88065 () Bool)

(assert (=> b!227292 (= e!140420 (not lt!88065))))

(declare-fun d!62775 () Bool)

(declare-fun e!140419 () Bool)

(assert (=> d!62775 e!140419))

(declare-fun c!43585 () Bool)

(assert (=> d!62775 (= c!43585 ((_ is EmptyExpr!867) (regex!643 (rule!1198 lt!87988))))))

(declare-fun e!140421 () Bool)

(assert (=> d!62775 (= lt!88065 e!140421)))

(declare-fun c!43586 () Bool)

(assert (=> d!62775 (= c!43586 (isEmpty!1961 lt!88013))))

(assert (=> d!62775 (validRegex!223 (regex!643 (rule!1198 lt!87988)))))

(assert (=> d!62775 (= (matchR!205 (regex!643 (rule!1198 lt!87988)) lt!88013) lt!88065)))

(declare-fun b!227293 () Bool)

(declare-fun res!104645 () Bool)

(declare-fun e!140422 () Bool)

(assert (=> b!227293 (=> res!104645 e!140422)))

(assert (=> b!227293 (= res!104645 e!140423)))

(declare-fun res!104650 () Bool)

(assert (=> b!227293 (=> (not res!104650) (not e!140423))))

(assert (=> b!227293 (= res!104650 lt!88065)))

(declare-fun bm!11564 () Bool)

(assert (=> bm!11564 (= call!11569 (isEmpty!1961 lt!88013))))

(declare-fun b!227294 () Bool)

(declare-fun e!140417 () Bool)

(declare-fun e!140418 () Bool)

(assert (=> b!227294 (= e!140417 e!140418)))

(declare-fun res!104652 () Bool)

(assert (=> b!227294 (=> res!104652 e!140418)))

(assert (=> b!227294 (= res!104652 call!11569)))

(declare-fun b!227295 () Bool)

(assert (=> b!227295 (= e!140418 (not (= (head!782 lt!88013) (c!43554 (regex!643 (rule!1198 lt!87988))))))))

(declare-fun b!227296 () Bool)

(assert (=> b!227296 (= e!140422 e!140417)))

(declare-fun res!104651 () Bool)

(assert (=> b!227296 (=> (not res!104651) (not e!140417))))

(assert (=> b!227296 (= res!104651 (not lt!88065))))

(declare-fun b!227297 () Bool)

(declare-fun derivativeStep!114 (Regex!867 C!2656) Regex!867)

(declare-fun tail!425 (List!3448) List!3448)

(assert (=> b!227297 (= e!140421 (matchR!205 (derivativeStep!114 (regex!643 (rule!1198 lt!87988)) (head!782 lt!88013)) (tail!425 lt!88013)))))

(declare-fun b!227298 () Bool)

(assert (=> b!227298 (= e!140419 e!140420)))

(declare-fun c!43587 () Bool)

(assert (=> b!227298 (= c!43587 ((_ is EmptyLang!867) (regex!643 (rule!1198 lt!87988))))))

(declare-fun b!227299 () Bool)

(declare-fun res!104647 () Bool)

(assert (=> b!227299 (=> res!104647 e!140418)))

(assert (=> b!227299 (= res!104647 (not (isEmpty!1961 (tail!425 lt!88013))))))

(declare-fun b!227300 () Bool)

(declare-fun nullable!148 (Regex!867) Bool)

(assert (=> b!227300 (= e!140421 (nullable!148 (regex!643 (rule!1198 lt!87988))))))

(declare-fun b!227301 () Bool)

(assert (=> b!227301 (= e!140419 (= lt!88065 call!11569))))

(declare-fun b!227302 () Bool)

(assert (=> b!227302 (= e!140423 (= (head!782 lt!88013) (c!43554 (regex!643 (rule!1198 lt!87988)))))))

(declare-fun b!227303 () Bool)

(declare-fun res!104649 () Bool)

(assert (=> b!227303 (=> (not res!104649) (not e!140423))))

(assert (=> b!227303 (= res!104649 (isEmpty!1961 (tail!425 lt!88013)))))

(declare-fun b!227304 () Bool)

(declare-fun res!104646 () Bool)

(assert (=> b!227304 (=> res!104646 e!140422)))

(assert (=> b!227304 (= res!104646 (not ((_ is ElementMatch!867) (regex!643 (rule!1198 lt!87988)))))))

(assert (=> b!227304 (= e!140420 e!140422)))

(assert (= (and d!62775 c!43586) b!227300))

(assert (= (and d!62775 (not c!43586)) b!227297))

(assert (= (and d!62775 c!43585) b!227301))

(assert (= (and d!62775 (not c!43585)) b!227298))

(assert (= (and b!227298 c!43587) b!227292))

(assert (= (and b!227298 (not c!43587)) b!227304))

(assert (= (and b!227304 (not res!104646)) b!227293))

(assert (= (and b!227293 res!104650) b!227291))

(assert (= (and b!227291 res!104648) b!227303))

(assert (= (and b!227303 res!104649) b!227302))

(assert (= (and b!227293 (not res!104645)) b!227296))

(assert (= (and b!227296 res!104651) b!227294))

(assert (= (and b!227294 (not res!104652)) b!227299))

(assert (= (and b!227299 (not res!104647)) b!227295))

(assert (= (or b!227301 b!227291 b!227294) bm!11564))

(declare-fun m!267425 () Bool)

(assert (=> b!227300 m!267425))

(declare-fun m!267427 () Bool)

(assert (=> bm!11564 m!267427))

(assert (=> b!227297 m!267167))

(assert (=> b!227297 m!267167))

(declare-fun m!267429 () Bool)

(assert (=> b!227297 m!267429))

(declare-fun m!267431 () Bool)

(assert (=> b!227297 m!267431))

(assert (=> b!227297 m!267429))

(assert (=> b!227297 m!267431))

(declare-fun m!267433 () Bool)

(assert (=> b!227297 m!267433))

(assert (=> d!62775 m!267427))

(assert (=> d!62775 m!267423))

(assert (=> b!227295 m!267167))

(assert (=> b!227299 m!267431))

(assert (=> b!227299 m!267431))

(declare-fun m!267435 () Bool)

(assert (=> b!227299 m!267435))

(assert (=> b!227302 m!267167))

(assert (=> b!227303 m!267431))

(assert (=> b!227303 m!267431))

(assert (=> b!227303 m!267435))

(assert (=> b!227062 d!62775))

(declare-fun b!227305 () Bool)

(declare-fun res!104656 () Bool)

(declare-fun e!140430 () Bool)

(assert (=> b!227305 (=> (not res!104656) (not e!140430))))

(declare-fun call!11570 () Bool)

(assert (=> b!227305 (= res!104656 (not call!11570))))

(declare-fun b!227306 () Bool)

(declare-fun e!140427 () Bool)

(declare-fun lt!88066 () Bool)

(assert (=> b!227306 (= e!140427 (not lt!88066))))

(declare-fun d!62777 () Bool)

(declare-fun e!140426 () Bool)

(assert (=> d!62777 e!140426))

(declare-fun c!43588 () Bool)

(assert (=> d!62777 (= c!43588 ((_ is EmptyExpr!867) (regex!643 lt!88020)))))

(declare-fun e!140428 () Bool)

(assert (=> d!62777 (= lt!88066 e!140428)))

(declare-fun c!43589 () Bool)

(assert (=> d!62777 (= c!43589 (isEmpty!1961 lt!88013))))

(assert (=> d!62777 (validRegex!223 (regex!643 lt!88020))))

(assert (=> d!62777 (= (matchR!205 (regex!643 lt!88020) lt!88013) lt!88066)))

(declare-fun b!227307 () Bool)

(declare-fun res!104653 () Bool)

(declare-fun e!140429 () Bool)

(assert (=> b!227307 (=> res!104653 e!140429)))

(assert (=> b!227307 (= res!104653 e!140430)))

(declare-fun res!104658 () Bool)

(assert (=> b!227307 (=> (not res!104658) (not e!140430))))

(assert (=> b!227307 (= res!104658 lt!88066)))

(declare-fun bm!11565 () Bool)

(assert (=> bm!11565 (= call!11570 (isEmpty!1961 lt!88013))))

(declare-fun b!227308 () Bool)

(declare-fun e!140424 () Bool)

(declare-fun e!140425 () Bool)

(assert (=> b!227308 (= e!140424 e!140425)))

(declare-fun res!104660 () Bool)

(assert (=> b!227308 (=> res!104660 e!140425)))

(assert (=> b!227308 (= res!104660 call!11570)))

(declare-fun b!227309 () Bool)

(assert (=> b!227309 (= e!140425 (not (= (head!782 lt!88013) (c!43554 (regex!643 lt!88020)))))))

(declare-fun b!227310 () Bool)

(assert (=> b!227310 (= e!140429 e!140424)))

(declare-fun res!104659 () Bool)

(assert (=> b!227310 (=> (not res!104659) (not e!140424))))

(assert (=> b!227310 (= res!104659 (not lt!88066))))

(declare-fun b!227311 () Bool)

(assert (=> b!227311 (= e!140428 (matchR!205 (derivativeStep!114 (regex!643 lt!88020) (head!782 lt!88013)) (tail!425 lt!88013)))))

(declare-fun b!227312 () Bool)

(assert (=> b!227312 (= e!140426 e!140427)))

(declare-fun c!43590 () Bool)

(assert (=> b!227312 (= c!43590 ((_ is EmptyLang!867) (regex!643 lt!88020)))))

(declare-fun b!227313 () Bool)

(declare-fun res!104655 () Bool)

(assert (=> b!227313 (=> res!104655 e!140425)))

(assert (=> b!227313 (= res!104655 (not (isEmpty!1961 (tail!425 lt!88013))))))

(declare-fun b!227314 () Bool)

(assert (=> b!227314 (= e!140428 (nullable!148 (regex!643 lt!88020)))))

(declare-fun b!227315 () Bool)

(assert (=> b!227315 (= e!140426 (= lt!88066 call!11570))))

(declare-fun b!227316 () Bool)

(assert (=> b!227316 (= e!140430 (= (head!782 lt!88013) (c!43554 (regex!643 lt!88020))))))

(declare-fun b!227317 () Bool)

(declare-fun res!104657 () Bool)

(assert (=> b!227317 (=> (not res!104657) (not e!140430))))

(assert (=> b!227317 (= res!104657 (isEmpty!1961 (tail!425 lt!88013)))))

(declare-fun b!227318 () Bool)

(declare-fun res!104654 () Bool)

(assert (=> b!227318 (=> res!104654 e!140429)))

(assert (=> b!227318 (= res!104654 (not ((_ is ElementMatch!867) (regex!643 lt!88020))))))

(assert (=> b!227318 (= e!140427 e!140429)))

(assert (= (and d!62777 c!43589) b!227314))

(assert (= (and d!62777 (not c!43589)) b!227311))

(assert (= (and d!62777 c!43588) b!227315))

(assert (= (and d!62777 (not c!43588)) b!227312))

(assert (= (and b!227312 c!43590) b!227306))

(assert (= (and b!227312 (not c!43590)) b!227318))

(assert (= (and b!227318 (not res!104654)) b!227307))

(assert (= (and b!227307 res!104658) b!227305))

(assert (= (and b!227305 res!104656) b!227317))

(assert (= (and b!227317 res!104657) b!227316))

(assert (= (and b!227307 (not res!104653)) b!227310))

(assert (= (and b!227310 res!104659) b!227308))

(assert (= (and b!227308 (not res!104660)) b!227313))

(assert (= (and b!227313 (not res!104655)) b!227309))

(assert (= (or b!227315 b!227305 b!227308) bm!11565))

(declare-fun m!267437 () Bool)

(assert (=> b!227314 m!267437))

(assert (=> bm!11565 m!267427))

(assert (=> b!227311 m!267167))

(assert (=> b!227311 m!267167))

(declare-fun m!267439 () Bool)

(assert (=> b!227311 m!267439))

(assert (=> b!227311 m!267431))

(assert (=> b!227311 m!267439))

(assert (=> b!227311 m!267431))

(declare-fun m!267441 () Bool)

(assert (=> b!227311 m!267441))

(assert (=> d!62777 m!267427))

(declare-fun m!267443 () Bool)

(assert (=> d!62777 m!267443))

(assert (=> b!227309 m!267167))

(assert (=> b!227313 m!267431))

(assert (=> b!227313 m!267431))

(assert (=> b!227313 m!267435))

(assert (=> b!227316 m!267167))

(assert (=> b!227317 m!267431))

(assert (=> b!227317 m!267431))

(assert (=> b!227317 m!267435))

(assert (=> b!227083 d!62777))

(declare-fun d!62779 () Bool)

(assert (=> d!62779 (= (get!1083 lt!88006) (v!14304 lt!88006))))

(assert (=> b!227083 d!62779))

(declare-fun d!62781 () Bool)

(assert (=> d!62781 (= (isEmpty!1961 (_2!2064 lt!87996)) ((_ is Nil!3438) (_2!2064 lt!87996)))))

(assert (=> b!227086 d!62781))

(declare-fun d!62783 () Bool)

(declare-fun lt!88114 () Bool)

(declare-fun e!140457 () Bool)

(assert (=> d!62783 (= lt!88114 e!140457)))

(declare-fun res!104676 () Bool)

(assert (=> d!62783 (=> (not res!104676) (not e!140457))))

(assert (=> d!62783 (= res!104676 (= (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 separatorToken!170))))) (list!1321 (singletonSeq!195 separatorToken!170))))))

(declare-fun e!140456 () Bool)

(assert (=> d!62783 (= lt!88114 e!140456)))

(declare-fun res!104678 () Bool)

(assert (=> d!62783 (=> (not res!104678) (not e!140456))))

(declare-fun lt!88113 () tuple2!3702)

(assert (=> d!62783 (= res!104678 (= (size!2755 (_1!2067 lt!88113)) 1))))

(assert (=> d!62783 (= lt!88113 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 separatorToken!170))))))

(assert (=> d!62783 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62783 (= (rulesProduceIndividualToken!278 thiss!17480 rules!1920 separatorToken!170) lt!88114)))

(declare-fun b!227355 () Bool)

(declare-fun res!104677 () Bool)

(assert (=> b!227355 (=> (not res!104677) (not e!140456))))

(assert (=> b!227355 (= res!104677 (= (apply!614 (_1!2067 lt!88113) 0) separatorToken!170))))

(declare-fun b!227356 () Bool)

(assert (=> b!227356 (= e!140456 (isEmpty!1960 (_2!2067 lt!88113)))))

(declare-fun b!227357 () Bool)

(assert (=> b!227357 (= e!140457 (isEmpty!1960 (_2!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 separatorToken!170))))))))

(assert (= (and d!62783 res!104678) b!227355))

(assert (= (and b!227355 res!104677) b!227356))

(assert (= (and d!62783 res!104676) b!227357))

(assert (=> d!62783 m!267187))

(declare-fun m!267505 () Bool)

(assert (=> d!62783 m!267505))

(assert (=> d!62783 m!267187))

(declare-fun m!267507 () Bool)

(assert (=> d!62783 m!267507))

(assert (=> d!62783 m!267081))

(declare-fun m!267509 () Bool)

(assert (=> d!62783 m!267509))

(declare-fun m!267511 () Bool)

(assert (=> d!62783 m!267511))

(declare-fun m!267513 () Bool)

(assert (=> d!62783 m!267513))

(assert (=> d!62783 m!267187))

(assert (=> d!62783 m!267509))

(declare-fun m!267515 () Bool)

(assert (=> b!227355 m!267515))

(declare-fun m!267517 () Bool)

(assert (=> b!227356 m!267517))

(assert (=> b!227357 m!267187))

(assert (=> b!227357 m!267187))

(assert (=> b!227357 m!267509))

(assert (=> b!227357 m!267509))

(assert (=> b!227357 m!267511))

(declare-fun m!267519 () Bool)

(assert (=> b!227357 m!267519))

(assert (=> b!227065 d!62783))

(declare-fun lt!88117 () Bool)

(declare-fun d!62787 () Bool)

(assert (=> d!62787 (= lt!88117 (isEmpty!1962 (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 (seqFromList!664 lt!88004))))))))

(declare-fun isEmpty!1966 (Conc!1109) Bool)

(assert (=> d!62787 (= lt!88117 (isEmpty!1966 (c!43555 (_1!2067 (lex!329 thiss!17480 rules!1920 (seqFromList!664 lt!88004))))))))

(assert (=> d!62787 (= (isEmpty!1958 (_1!2067 (lex!329 thiss!17480 rules!1920 (seqFromList!664 lt!88004)))) lt!88117)))

(declare-fun bs!24163 () Bool)

(assert (= bs!24163 d!62787))

(declare-fun m!267521 () Bool)

(assert (=> bs!24163 m!267521))

(assert (=> bs!24163 m!267521))

(declare-fun m!267523 () Bool)

(assert (=> bs!24163 m!267523))

(declare-fun m!267525 () Bool)

(assert (=> bs!24163 m!267525))

(assert (=> b!227066 d!62787))

(declare-fun b!227426 () Bool)

(declare-fun e!140495 () Bool)

(declare-fun lt!88143 () tuple2!3702)

(assert (=> b!227426 (= e!140495 (= (_2!2067 lt!88143) (seqFromList!664 lt!88004)))))

(declare-fun b!227427 () Bool)

(declare-fun res!104703 () Bool)

(declare-fun e!140497 () Bool)

(assert (=> b!227427 (=> (not res!104703) (not e!140497))))

(assert (=> b!227427 (= res!104703 (= (list!1321 (_1!2067 lt!88143)) (_1!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 (seqFromList!664 lt!88004))))))))

(declare-fun d!62789 () Bool)

(assert (=> d!62789 e!140497))

(declare-fun res!104704 () Bool)

(assert (=> d!62789 (=> (not res!104704) (not e!140497))))

(assert (=> d!62789 (= res!104704 e!140495)))

(declare-fun c!43621 () Bool)

(assert (=> d!62789 (= c!43621 (> (size!2755 (_1!2067 lt!88143)) 0))))

(declare-fun lexTailRecV2!141 (LexerInterface!529 List!3449 BalanceConc!2224 BalanceConc!2224 BalanceConc!2224 BalanceConc!2226) tuple2!3702)

(assert (=> d!62789 (= lt!88143 (lexTailRecV2!141 thiss!17480 rules!1920 (seqFromList!664 lt!88004) (BalanceConc!2225 Empty!1108) (seqFromList!664 lt!88004) (BalanceConc!2227 Empty!1109)))))

(assert (=> d!62789 (= (lex!329 thiss!17480 rules!1920 (seqFromList!664 lt!88004)) lt!88143)))

(declare-fun b!227428 () Bool)

(declare-fun e!140496 () Bool)

(assert (=> b!227428 (= e!140496 (not (isEmpty!1958 (_1!2067 lt!88143))))))

(declare-fun b!227429 () Bool)

(assert (=> b!227429 (= e!140497 (= (list!1320 (_2!2067 lt!88143)) (_2!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 (seqFromList!664 lt!88004))))))))

(declare-fun b!227430 () Bool)

(assert (=> b!227430 (= e!140495 e!140496)))

(declare-fun res!104705 () Bool)

(declare-fun size!2757 (BalanceConc!2224) Int)

(assert (=> b!227430 (= res!104705 (< (size!2757 (_2!2067 lt!88143)) (size!2757 (seqFromList!664 lt!88004))))))

(assert (=> b!227430 (=> (not res!104705) (not e!140496))))

(assert (= (and d!62789 c!43621) b!227430))

(assert (= (and d!62789 (not c!43621)) b!227426))

(assert (= (and b!227430 res!104705) b!227428))

(assert (= (and d!62789 res!104704) b!227427))

(assert (= (and b!227427 res!104703) b!227429))

(declare-fun m!267583 () Bool)

(assert (=> b!227428 m!267583))

(declare-fun m!267585 () Bool)

(assert (=> b!227429 m!267585))

(assert (=> b!227429 m!267241))

(declare-fun m!267587 () Bool)

(assert (=> b!227429 m!267587))

(assert (=> b!227429 m!267587))

(declare-fun m!267589 () Bool)

(assert (=> b!227429 m!267589))

(declare-fun m!267591 () Bool)

(assert (=> b!227430 m!267591))

(assert (=> b!227430 m!267241))

(declare-fun m!267593 () Bool)

(assert (=> b!227430 m!267593))

(declare-fun m!267595 () Bool)

(assert (=> d!62789 m!267595))

(assert (=> d!62789 m!267241))

(assert (=> d!62789 m!267241))

(declare-fun m!267597 () Bool)

(assert (=> d!62789 m!267597))

(declare-fun m!267599 () Bool)

(assert (=> b!227427 m!267599))

(assert (=> b!227427 m!267241))

(assert (=> b!227427 m!267587))

(assert (=> b!227427 m!267587))

(assert (=> b!227427 m!267589))

(assert (=> b!227066 d!62789))

(declare-fun d!62803 () Bool)

(declare-fun fromListB!246 (List!3448) BalanceConc!2224)

(assert (=> d!62803 (= (seqFromList!664 lt!88004) (fromListB!246 lt!88004))))

(declare-fun bs!24169 () Bool)

(assert (= bs!24169 d!62803))

(declare-fun m!267601 () Bool)

(assert (=> bs!24169 m!267601))

(assert (=> b!227066 d!62803))

(declare-fun d!62805 () Bool)

(assert (=> d!62805 (= (inv!4288 (tag!841 (rule!1198 separatorToken!170))) (= (mod (str.len (value!22640 (tag!841 (rule!1198 separatorToken!170)))) 2) 0))))

(assert (=> b!227087 d!62805))

(declare-fun d!62807 () Bool)

(declare-fun res!104706 () Bool)

(declare-fun e!140498 () Bool)

(assert (=> d!62807 (=> (not res!104706) (not e!140498))))

(assert (=> d!62807 (= res!104706 (semiInverseModEq!221 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toValue!1338 (transformation!643 (rule!1198 separatorToken!170)))))))

(assert (=> d!62807 (= (inv!4291 (transformation!643 (rule!1198 separatorToken!170))) e!140498)))

(declare-fun b!227431 () Bool)

(assert (=> b!227431 (= e!140498 (equivClasses!204 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toValue!1338 (transformation!643 (rule!1198 separatorToken!170)))))))

(assert (= (and d!62807 res!104706) b!227431))

(declare-fun m!267603 () Bool)

(assert (=> d!62807 m!267603))

(declare-fun m!267605 () Bool)

(assert (=> b!227431 m!267605))

(assert (=> b!227087 d!62807))

(declare-fun d!62809 () Bool)

(declare-fun res!104709 () Bool)

(declare-fun e!140501 () Bool)

(assert (=> d!62809 (=> (not res!104709) (not e!140501))))

(declare-fun rulesValid!187 (LexerInterface!529 List!3449) Bool)

(assert (=> d!62809 (= res!104709 (rulesValid!187 thiss!17480 rules!1920))))

(assert (=> d!62809 (= (rulesInvariant!495 thiss!17480 rules!1920) e!140501)))

(declare-fun b!227434 () Bool)

(declare-datatypes ((List!3452 0))(
  ( (Nil!3442) (Cons!3442 (h!8839 String!4405) (t!33408 List!3452)) )
))
(declare-fun noDuplicateTag!187 (LexerInterface!529 List!3449 List!3452) Bool)

(assert (=> b!227434 (= e!140501 (noDuplicateTag!187 thiss!17480 rules!1920 Nil!3442))))

(assert (= (and d!62809 res!104709) b!227434))

(declare-fun m!267607 () Bool)

(assert (=> d!62809 m!267607))

(declare-fun m!267609 () Bool)

(assert (=> b!227434 m!267609))

(assert (=> b!227088 d!62809))

(declare-fun d!62811 () Bool)

(declare-fun e!140506 () Bool)

(assert (=> d!62811 e!140506))

(declare-fun res!104715 () Bool)

(assert (=> d!62811 (=> (not res!104715) (not e!140506))))

(declare-fun lt!88146 () List!3448)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!476 (List!3448) (InoxSet C!2656))

(assert (=> d!62811 (= res!104715 (= (content!476 lt!88146) ((_ map or) (content!476 lt!88004) (content!476 lt!88002))))))

(declare-fun e!140507 () List!3448)

(assert (=> d!62811 (= lt!88146 e!140507)))

(declare-fun c!43624 () Bool)

(assert (=> d!62811 (= c!43624 ((_ is Nil!3438) lt!88004))))

(assert (=> d!62811 (= (++!862 lt!88004 lt!88002) lt!88146)))

(declare-fun b!227443 () Bool)

(assert (=> b!227443 (= e!140507 lt!88002)))

(declare-fun b!227444 () Bool)

(assert (=> b!227444 (= e!140507 (Cons!3438 (h!8835 lt!88004) (++!862 (t!33314 lt!88004) lt!88002)))))

(declare-fun b!227446 () Bool)

(assert (=> b!227446 (= e!140506 (or (not (= lt!88002 Nil!3438)) (= lt!88146 lt!88004)))))

(declare-fun b!227445 () Bool)

(declare-fun res!104714 () Bool)

(assert (=> b!227445 (=> (not res!104714) (not e!140506))))

(declare-fun size!2758 (List!3448) Int)

(assert (=> b!227445 (= res!104714 (= (size!2758 lt!88146) (+ (size!2758 lt!88004) (size!2758 lt!88002))))))

(assert (= (and d!62811 c!43624) b!227443))

(assert (= (and d!62811 (not c!43624)) b!227444))

(assert (= (and d!62811 res!104715) b!227445))

(assert (= (and b!227445 res!104714) b!227446))

(declare-fun m!267611 () Bool)

(assert (=> d!62811 m!267611))

(declare-fun m!267613 () Bool)

(assert (=> d!62811 m!267613))

(declare-fun m!267615 () Bool)

(assert (=> d!62811 m!267615))

(declare-fun m!267617 () Bool)

(assert (=> b!227444 m!267617))

(declare-fun m!267619 () Bool)

(assert (=> b!227445 m!267619))

(declare-fun m!267621 () Bool)

(assert (=> b!227445 m!267621))

(declare-fun m!267623 () Bool)

(assert (=> b!227445 m!267623))

(assert (=> b!227067 d!62811))

(declare-fun d!62813 () Bool)

(declare-fun res!104720 () Bool)

(declare-fun e!140510 () Bool)

(assert (=> d!62813 (=> (not res!104720) (not e!140510))))

(assert (=> d!62813 (= res!104720 (not (isEmpty!1961 (originalCharacters!686 separatorToken!170))))))

(assert (=> d!62813 (= (inv!4292 separatorToken!170) e!140510)))

(declare-fun b!227451 () Bool)

(declare-fun res!104721 () Bool)

(assert (=> b!227451 (=> (not res!104721) (not e!140510))))

(declare-fun dynLambda!1599 (Int TokenValue!665) BalanceConc!2224)

(assert (=> b!227451 (= res!104721 (= (originalCharacters!686 separatorToken!170) (list!1320 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (value!22641 separatorToken!170)))))))

(declare-fun b!227452 () Bool)

(assert (=> b!227452 (= e!140510 (= (size!2754 separatorToken!170) (size!2758 (originalCharacters!686 separatorToken!170))))))

(assert (= (and d!62813 res!104720) b!227451))

(assert (= (and b!227451 res!104721) b!227452))

(declare-fun b_lambda!6283 () Bool)

(assert (=> (not b_lambda!6283) (not b!227451)))

(declare-fun tb!11361 () Bool)

(declare-fun t!33339 () Bool)

(assert (=> (and b!227063 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170)))) t!33339) tb!11361))

(declare-fun b!227457 () Bool)

(declare-fun e!140513 () Bool)

(declare-fun tp!93462 () Bool)

(declare-fun inv!4295 (Conc!1108) Bool)

(assert (=> b!227457 (= e!140513 (and (inv!4295 (c!43553 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (value!22641 separatorToken!170)))) tp!93462))))

(declare-fun result!14530 () Bool)

(declare-fun inv!4296 (BalanceConc!2224) Bool)

(assert (=> tb!11361 (= result!14530 (and (inv!4296 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (value!22641 separatorToken!170))) e!140513))))

(assert (= tb!11361 b!227457))

(declare-fun m!267625 () Bool)

(assert (=> b!227457 m!267625))

(declare-fun m!267627 () Bool)

(assert (=> tb!11361 m!267627))

(assert (=> b!227451 t!33339))

(declare-fun b_and!16873 () Bool)

(assert (= b_and!16851 (and (=> t!33339 result!14530) b_and!16873)))

(declare-fun tb!11363 () Bool)

(declare-fun t!33341 () Bool)

(assert (=> (and b!227093 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170)))) t!33341) tb!11363))

(declare-fun result!14534 () Bool)

(assert (= result!14534 result!14530))

(assert (=> b!227451 t!33341))

(declare-fun b_and!16875 () Bool)

(assert (= b_and!16855 (and (=> t!33341 result!14534) b_and!16875)))

(declare-fun t!33343 () Bool)

(declare-fun tb!11365 () Bool)

(assert (=> (and b!227064 (= (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170)))) t!33343) tb!11365))

(declare-fun result!14536 () Bool)

(assert (= result!14536 result!14530))

(assert (=> b!227451 t!33343))

(declare-fun b_and!16877 () Bool)

(assert (= b_and!16859 (and (=> t!33343 result!14536) b_and!16877)))

(declare-fun m!267629 () Bool)

(assert (=> d!62813 m!267629))

(declare-fun m!267631 () Bool)

(assert (=> b!227451 m!267631))

(assert (=> b!227451 m!267631))

(declare-fun m!267633 () Bool)

(assert (=> b!227451 m!267633))

(declare-fun m!267635 () Bool)

(assert (=> b!227452 m!267635))

(assert (=> start!24258 d!62813))

(declare-fun b!227477 () Bool)

(declare-fun res!104740 () Bool)

(declare-fun e!140520 () Bool)

(assert (=> b!227477 (=> (not res!104740) (not e!140520))))

(declare-fun lt!88159 () Option!621)

(declare-fun apply!618 (TokenValueInjection!1102 BalanceConc!2224) TokenValue!665)

(assert (=> b!227477 (= res!104740 (= (value!22641 (_1!2064 (get!1082 lt!88159))) (apply!618 (transformation!643 (rule!1198 (_1!2064 (get!1082 lt!88159)))) (seqFromList!664 (originalCharacters!686 (_1!2064 (get!1082 lt!88159)))))))))

(declare-fun b!227478 () Bool)

(declare-fun contains!616 (List!3449 Rule!1086) Bool)

(assert (=> b!227478 (= e!140520 (contains!616 rules!1920 (rule!1198 (_1!2064 (get!1082 lt!88159)))))))

(declare-fun b!227479 () Bool)

(declare-fun e!140521 () Bool)

(assert (=> b!227479 (= e!140521 e!140520)))

(declare-fun res!104739 () Bool)

(assert (=> b!227479 (=> (not res!104739) (not e!140520))))

(assert (=> b!227479 (= res!104739 (isDefined!472 lt!88159))))

(declare-fun b!227480 () Bool)

(declare-fun e!140522 () Option!621)

(declare-fun lt!88158 () Option!621)

(declare-fun lt!88157 () Option!621)

(assert (=> b!227480 (= e!140522 (ite (and ((_ is None!620) lt!88158) ((_ is None!620) lt!88157)) None!620 (ite ((_ is None!620) lt!88157) lt!88158 (ite ((_ is None!620) lt!88158) lt!88157 (ite (>= (size!2754 (_1!2064 (v!14303 lt!88158))) (size!2754 (_1!2064 (v!14303 lt!88157)))) lt!88158 lt!88157)))))))

(declare-fun call!11605 () Option!621)

(assert (=> b!227480 (= lt!88158 call!11605)))

(assert (=> b!227480 (= lt!88157 (maxPrefix!259 thiss!17480 (t!33315 rules!1920) lt!88008))))

(declare-fun bm!11600 () Bool)

(declare-fun maxPrefixOneRule!113 (LexerInterface!529 Rule!1086 List!3448) Option!621)

(assert (=> bm!11600 (= call!11605 (maxPrefixOneRule!113 thiss!17480 (h!8836 rules!1920) lt!88008))))

(declare-fun b!227481 () Bool)

(declare-fun res!104738 () Bool)

(assert (=> b!227481 (=> (not res!104738) (not e!140520))))

(assert (=> b!227481 (= res!104738 (matchR!205 (regex!643 (rule!1198 (_1!2064 (get!1082 lt!88159)))) (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88159))))))))

(declare-fun b!227482 () Bool)

(declare-fun res!104737 () Bool)

(assert (=> b!227482 (=> (not res!104737) (not e!140520))))

(assert (=> b!227482 (= res!104737 (< (size!2758 (_2!2064 (get!1082 lt!88159))) (size!2758 lt!88008)))))

(declare-fun d!62815 () Bool)

(assert (=> d!62815 e!140521))

(declare-fun res!104742 () Bool)

(assert (=> d!62815 (=> res!104742 e!140521)))

(declare-fun isEmpty!1967 (Option!621) Bool)

(assert (=> d!62815 (= res!104742 (isEmpty!1967 lt!88159))))

(assert (=> d!62815 (= lt!88159 e!140522)))

(declare-fun c!43627 () Bool)

(assert (=> d!62815 (= c!43627 (and ((_ is Cons!3439) rules!1920) ((_ is Nil!3439) (t!33315 rules!1920))))))

(declare-fun lt!88161 () Unit!3906)

(declare-fun lt!88160 () Unit!3906)

(assert (=> d!62815 (= lt!88161 lt!88160)))

(assert (=> d!62815 (isPrefix!339 lt!88008 lt!88008)))

(declare-fun lemmaIsPrefixRefl!179 (List!3448 List!3448) Unit!3906)

(assert (=> d!62815 (= lt!88160 (lemmaIsPrefixRefl!179 lt!88008 lt!88008))))

(declare-fun rulesValidInductive!168 (LexerInterface!529 List!3449) Bool)

(assert (=> d!62815 (rulesValidInductive!168 thiss!17480 rules!1920)))

(assert (=> d!62815 (= (maxPrefix!259 thiss!17480 rules!1920 lt!88008) lt!88159)))

(declare-fun b!227476 () Bool)

(declare-fun res!104736 () Bool)

(assert (=> b!227476 (=> (not res!104736) (not e!140520))))

(assert (=> b!227476 (= res!104736 (= (++!862 (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88159)))) (_2!2064 (get!1082 lt!88159))) lt!88008))))

(declare-fun b!227483 () Bool)

(assert (=> b!227483 (= e!140522 call!11605)))

(declare-fun b!227484 () Bool)

(declare-fun res!104741 () Bool)

(assert (=> b!227484 (=> (not res!104741) (not e!140520))))

(assert (=> b!227484 (= res!104741 (= (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88159)))) (originalCharacters!686 (_1!2064 (get!1082 lt!88159)))))))

(assert (= (and d!62815 c!43627) b!227483))

(assert (= (and d!62815 (not c!43627)) b!227480))

(assert (= (or b!227483 b!227480) bm!11600))

(assert (= (and d!62815 (not res!104742)) b!227479))

(assert (= (and b!227479 res!104739) b!227484))

(assert (= (and b!227484 res!104741) b!227482))

(assert (= (and b!227482 res!104737) b!227476))

(assert (= (and b!227476 res!104736) b!227477))

(assert (= (and b!227477 res!104740) b!227481))

(assert (= (and b!227481 res!104738) b!227478))

(declare-fun m!267637 () Bool)

(assert (=> bm!11600 m!267637))

(declare-fun m!267639 () Bool)

(assert (=> b!227481 m!267639))

(declare-fun m!267641 () Bool)

(assert (=> b!227481 m!267641))

(assert (=> b!227481 m!267641))

(declare-fun m!267643 () Bool)

(assert (=> b!227481 m!267643))

(assert (=> b!227481 m!267643))

(declare-fun m!267645 () Bool)

(assert (=> b!227481 m!267645))

(assert (=> b!227478 m!267639))

(declare-fun m!267647 () Bool)

(assert (=> b!227478 m!267647))

(declare-fun m!267649 () Bool)

(assert (=> d!62815 m!267649))

(declare-fun m!267651 () Bool)

(assert (=> d!62815 m!267651))

(declare-fun m!267653 () Bool)

(assert (=> d!62815 m!267653))

(declare-fun m!267655 () Bool)

(assert (=> d!62815 m!267655))

(assert (=> b!227484 m!267639))

(assert (=> b!227484 m!267641))

(assert (=> b!227484 m!267641))

(assert (=> b!227484 m!267643))

(assert (=> b!227477 m!267639))

(declare-fun m!267657 () Bool)

(assert (=> b!227477 m!267657))

(assert (=> b!227477 m!267657))

(declare-fun m!267659 () Bool)

(assert (=> b!227477 m!267659))

(declare-fun m!267661 () Bool)

(assert (=> b!227480 m!267661))

(assert (=> b!227482 m!267639))

(declare-fun m!267663 () Bool)

(assert (=> b!227482 m!267663))

(declare-fun m!267665 () Bool)

(assert (=> b!227482 m!267665))

(declare-fun m!267667 () Bool)

(assert (=> b!227479 m!267667))

(assert (=> b!227476 m!267639))

(assert (=> b!227476 m!267641))

(assert (=> b!227476 m!267641))

(assert (=> b!227476 m!267643))

(assert (=> b!227476 m!267643))

(declare-fun m!267669 () Bool)

(assert (=> b!227476 m!267669))

(assert (=> b!227089 d!62815))

(declare-fun d!62817 () Bool)

(declare-fun dynLambda!1600 (Int Token!1030) Bool)

(assert (=> d!62817 (dynLambda!1600 lambda!7138 lt!87988)))

(declare-fun lt!88164 () Unit!3906)

(declare-fun choose!2187 (List!3450 Int Token!1030) Unit!3906)

(assert (=> d!62817 (= lt!88164 (choose!2187 tokens!465 lambda!7138 lt!87988))))

(declare-fun e!140525 () Bool)

(assert (=> d!62817 e!140525))

(declare-fun res!104745 () Bool)

(assert (=> d!62817 (=> (not res!104745) (not e!140525))))

(assert (=> d!62817 (= res!104745 (forall!773 tokens!465 lambda!7138))))

(assert (=> d!62817 (= (forallContained!210 tokens!465 lambda!7138 lt!87988) lt!88164)))

(declare-fun b!227487 () Bool)

(declare-fun contains!617 (List!3450 Token!1030) Bool)

(assert (=> b!227487 (= e!140525 (contains!617 tokens!465 lt!87988))))

(assert (= (and d!62817 res!104745) b!227487))

(declare-fun b_lambda!6285 () Bool)

(assert (=> (not b_lambda!6285) (not d!62817)))

(declare-fun m!267671 () Bool)

(assert (=> d!62817 m!267671))

(declare-fun m!267673 () Bool)

(assert (=> d!62817 m!267673))

(declare-fun m!267675 () Bool)

(assert (=> d!62817 m!267675))

(declare-fun m!267677 () Bool)

(assert (=> b!227487 m!267677))

(assert (=> b!227089 d!62817))

(declare-fun d!62819 () Bool)

(assert (=> d!62819 (= (head!782 lt!88002) (h!8835 lt!88002))))

(assert (=> b!227089 d!62819))

(declare-fun b!227488 () Bool)

(declare-fun e!140526 () Bool)

(declare-fun lt!88165 () tuple2!3702)

(assert (=> b!227488 (= e!140526 (= (_2!2067 lt!88165) lt!87984))))

(declare-fun b!227489 () Bool)

(declare-fun res!104746 () Bool)

(declare-fun e!140528 () Bool)

(assert (=> b!227489 (=> (not res!104746) (not e!140528))))

(assert (=> b!227489 (= res!104746 (= (list!1321 (_1!2067 lt!88165)) (_1!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87984)))))))

(declare-fun d!62821 () Bool)

(assert (=> d!62821 e!140528))

(declare-fun res!104747 () Bool)

(assert (=> d!62821 (=> (not res!104747) (not e!140528))))

(assert (=> d!62821 (= res!104747 e!140526)))

(declare-fun c!43628 () Bool)

(assert (=> d!62821 (= c!43628 (> (size!2755 (_1!2067 lt!88165)) 0))))

(assert (=> d!62821 (= lt!88165 (lexTailRecV2!141 thiss!17480 rules!1920 lt!87984 (BalanceConc!2225 Empty!1108) lt!87984 (BalanceConc!2227 Empty!1109)))))

(assert (=> d!62821 (= (lex!329 thiss!17480 rules!1920 lt!87984) lt!88165)))

(declare-fun b!227490 () Bool)

(declare-fun e!140527 () Bool)

(assert (=> b!227490 (= e!140527 (not (isEmpty!1958 (_1!2067 lt!88165))))))

(declare-fun b!227491 () Bool)

(assert (=> b!227491 (= e!140528 (= (list!1320 (_2!2067 lt!88165)) (_2!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87984)))))))

(declare-fun b!227492 () Bool)

(assert (=> b!227492 (= e!140526 e!140527)))

(declare-fun res!104748 () Bool)

(assert (=> b!227492 (= res!104748 (< (size!2757 (_2!2067 lt!88165)) (size!2757 lt!87984)))))

(assert (=> b!227492 (=> (not res!104748) (not e!140527))))

(assert (= (and d!62821 c!43628) b!227492))

(assert (= (and d!62821 (not c!43628)) b!227488))

(assert (= (and b!227492 res!104748) b!227490))

(assert (= (and d!62821 res!104747) b!227489))

(assert (= (and b!227489 res!104746) b!227491))

(declare-fun m!267679 () Bool)

(assert (=> b!227490 m!267679))

(declare-fun m!267681 () Bool)

(assert (=> b!227491 m!267681))

(assert (=> b!227491 m!267069))

(assert (=> b!227491 m!267069))

(declare-fun m!267683 () Bool)

(assert (=> b!227491 m!267683))

(declare-fun m!267685 () Bool)

(assert (=> b!227492 m!267685))

(declare-fun m!267687 () Bool)

(assert (=> b!227492 m!267687))

(declare-fun m!267689 () Bool)

(assert (=> d!62821 m!267689))

(declare-fun m!267691 () Bool)

(assert (=> d!62821 m!267691))

(declare-fun m!267693 () Bool)

(assert (=> b!227489 m!267693))

(assert (=> b!227489 m!267069))

(assert (=> b!227489 m!267069))

(assert (=> b!227489 m!267683))

(assert (=> b!227089 d!62821))

(declare-fun d!62823 () Bool)

(declare-fun lt!88168 () Bool)

(assert (=> d!62823 (= lt!88168 (select (content!476 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170)))) lt!88000))))

(declare-fun e!140533 () Bool)

(assert (=> d!62823 (= lt!88168 e!140533)))

(declare-fun res!104754 () Bool)

(assert (=> d!62823 (=> (not res!104754) (not e!140533))))

(assert (=> d!62823 (= res!104754 ((_ is Cons!3438) (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170)))))))

(assert (=> d!62823 (= (contains!614 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170))) lt!88000) lt!88168)))

(declare-fun b!227497 () Bool)

(declare-fun e!140534 () Bool)

(assert (=> b!227497 (= e!140533 e!140534)))

(declare-fun res!104753 () Bool)

(assert (=> b!227497 (=> res!104753 e!140534)))

(assert (=> b!227497 (= res!104753 (= (h!8835 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170)))) lt!88000))))

(declare-fun b!227498 () Bool)

(assert (=> b!227498 (= e!140534 (contains!614 (t!33314 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170)))) lt!88000))))

(assert (= (and d!62823 res!104754) b!227497))

(assert (= (and b!227497 (not res!104753)) b!227498))

(assert (=> d!62823 m!267179))

(declare-fun m!267695 () Bool)

(assert (=> d!62823 m!267695))

(declare-fun m!267697 () Bool)

(assert (=> d!62823 m!267697))

(declare-fun m!267699 () Bool)

(assert (=> b!227498 m!267699))

(assert (=> b!227089 d!62823))

(declare-fun b!227499 () Bool)

(declare-fun e!140535 () Bool)

(declare-fun lt!88169 () tuple2!3702)

(assert (=> b!227499 (= e!140535 (= (_2!2067 lt!88169) lt!87987))))

(declare-fun b!227500 () Bool)

(declare-fun res!104755 () Bool)

(declare-fun e!140537 () Bool)

(assert (=> b!227500 (=> (not res!104755) (not e!140537))))

(assert (=> b!227500 (= res!104755 (= (list!1321 (_1!2067 lt!88169)) (_1!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87987)))))))

(declare-fun d!62825 () Bool)

(assert (=> d!62825 e!140537))

(declare-fun res!104756 () Bool)

(assert (=> d!62825 (=> (not res!104756) (not e!140537))))

(assert (=> d!62825 (= res!104756 e!140535)))

(declare-fun c!43629 () Bool)

(assert (=> d!62825 (= c!43629 (> (size!2755 (_1!2067 lt!88169)) 0))))

(assert (=> d!62825 (= lt!88169 (lexTailRecV2!141 thiss!17480 rules!1920 lt!87987 (BalanceConc!2225 Empty!1108) lt!87987 (BalanceConc!2227 Empty!1109)))))

(assert (=> d!62825 (= (lex!329 thiss!17480 rules!1920 lt!87987) lt!88169)))

(declare-fun b!227501 () Bool)

(declare-fun e!140536 () Bool)

(assert (=> b!227501 (= e!140536 (not (isEmpty!1958 (_1!2067 lt!88169))))))

(declare-fun b!227502 () Bool)

(assert (=> b!227502 (= e!140537 (= (list!1320 (_2!2067 lt!88169)) (_2!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87987)))))))

(declare-fun b!227503 () Bool)

(assert (=> b!227503 (= e!140535 e!140536)))

(declare-fun res!104757 () Bool)

(assert (=> b!227503 (= res!104757 (< (size!2757 (_2!2067 lt!88169)) (size!2757 lt!87987)))))

(assert (=> b!227503 (=> (not res!104757) (not e!140536))))

(assert (= (and d!62825 c!43629) b!227503))

(assert (= (and d!62825 (not c!43629)) b!227499))

(assert (= (and b!227503 res!104757) b!227501))

(assert (= (and d!62825 res!104756) b!227500))

(assert (= (and b!227500 res!104755) b!227502))

(declare-fun m!267701 () Bool)

(assert (=> b!227501 m!267701))

(declare-fun m!267703 () Bool)

(assert (=> b!227502 m!267703))

(declare-fun m!267705 () Bool)

(assert (=> b!227502 m!267705))

(assert (=> b!227502 m!267705))

(declare-fun m!267707 () Bool)

(assert (=> b!227502 m!267707))

(declare-fun m!267709 () Bool)

(assert (=> b!227503 m!267709))

(declare-fun m!267711 () Bool)

(assert (=> b!227503 m!267711))

(declare-fun m!267713 () Bool)

(assert (=> d!62825 m!267713))

(declare-fun m!267715 () Bool)

(assert (=> d!62825 m!267715))

(declare-fun m!267717 () Bool)

(assert (=> b!227500 m!267717))

(assert (=> b!227500 m!267705))

(assert (=> b!227500 m!267705))

(assert (=> b!227500 m!267707))

(assert (=> b!227089 d!62825))

(declare-fun d!62827 () Bool)

(declare-fun lt!88172 () BalanceConc!2224)

(assert (=> d!62827 (= (list!1320 lt!88172) (originalCharacters!686 lt!87988))))

(assert (=> d!62827 (= lt!88172 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 lt!87988))) (value!22641 lt!87988)))))

(assert (=> d!62827 (= (charsOf!298 lt!87988) lt!88172)))

(declare-fun b_lambda!6287 () Bool)

(assert (=> (not b_lambda!6287) (not d!62827)))

(declare-fun t!33345 () Bool)

(declare-fun tb!11367 () Bool)

(assert (=> (and b!227063 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toChars!1197 (transformation!643 (rule!1198 lt!87988)))) t!33345) tb!11367))

(declare-fun b!227504 () Bool)

(declare-fun e!140538 () Bool)

(declare-fun tp!93463 () Bool)

(assert (=> b!227504 (= e!140538 (and (inv!4295 (c!43553 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 lt!87988))) (value!22641 lt!87988)))) tp!93463))))

(declare-fun result!14538 () Bool)

(assert (=> tb!11367 (= result!14538 (and (inv!4296 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 lt!87988))) (value!22641 lt!87988))) e!140538))))

(assert (= tb!11367 b!227504))

(declare-fun m!267719 () Bool)

(assert (=> b!227504 m!267719))

(declare-fun m!267721 () Bool)

(assert (=> tb!11367 m!267721))

(assert (=> d!62827 t!33345))

(declare-fun b_and!16879 () Bool)

(assert (= b_and!16873 (and (=> t!33345 result!14538) b_and!16879)))

(declare-fun tb!11369 () Bool)

(declare-fun t!33347 () Bool)

(assert (=> (and b!227093 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 lt!87988)))) t!33347) tb!11369))

(declare-fun result!14540 () Bool)

(assert (= result!14540 result!14538))

(assert (=> d!62827 t!33347))

(declare-fun b_and!16881 () Bool)

(assert (= b_and!16875 (and (=> t!33347 result!14540) b_and!16881)))

(declare-fun tb!11371 () Bool)

(declare-fun t!33349 () Bool)

(assert (=> (and b!227064 (= (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toChars!1197 (transformation!643 (rule!1198 lt!87988)))) t!33349) tb!11371))

(declare-fun result!14542 () Bool)

(assert (= result!14542 result!14538))

(assert (=> d!62827 t!33349))

(declare-fun b_and!16883 () Bool)

(assert (= b_and!16877 (and (=> t!33349 result!14542) b_and!16883)))

(declare-fun m!267723 () Bool)

(assert (=> d!62827 m!267723))

(declare-fun m!267725 () Bool)

(assert (=> d!62827 m!267725))

(assert (=> b!227089 d!62827))

(declare-fun d!62829 () Bool)

(declare-fun lt!88183 () BalanceConc!2224)

(assert (=> d!62829 (= (list!1320 lt!88183) (printList!213 thiss!17480 (list!1321 lt!87997)))))

(assert (=> d!62829 (= lt!88183 (printTailRec!223 thiss!17480 lt!87997 0 (BalanceConc!2225 Empty!1108)))))

(assert (=> d!62829 (= (print!260 thiss!17480 lt!87997) lt!88183)))

(declare-fun bs!24171 () Bool)

(assert (= bs!24171 d!62829))

(declare-fun m!267761 () Bool)

(assert (=> bs!24171 m!267761))

(declare-fun m!267763 () Bool)

(assert (=> bs!24171 m!267763))

(assert (=> bs!24171 m!267763))

(declare-fun m!267765 () Bool)

(assert (=> bs!24171 m!267765))

(assert (=> bs!24171 m!267159))

(assert (=> b!227089 d!62829))

(declare-fun d!62835 () Bool)

(declare-fun lt!88223 () BalanceConc!2224)

(declare-fun printListTailRec!97 (LexerInterface!529 List!3450 List!3448) List!3448)

(declare-fun dropList!130 (BalanceConc!2226 Int) List!3450)

(assert (=> d!62835 (= (list!1320 lt!88223) (printListTailRec!97 thiss!17480 (dropList!130 lt!88018 0) (list!1320 (BalanceConc!2225 Empty!1108))))))

(declare-fun e!140553 () BalanceConc!2224)

(assert (=> d!62835 (= lt!88223 e!140553)))

(declare-fun c!43636 () Bool)

(assert (=> d!62835 (= c!43636 (>= 0 (size!2755 lt!88018)))))

(declare-fun e!140552 () Bool)

(assert (=> d!62835 e!140552))

(declare-fun res!104770 () Bool)

(assert (=> d!62835 (=> (not res!104770) (not e!140552))))

(assert (=> d!62835 (= res!104770 (>= 0 0))))

(assert (=> d!62835 (= (printTailRec!223 thiss!17480 lt!88018 0 (BalanceConc!2225 Empty!1108)) lt!88223)))

(declare-fun b!227529 () Bool)

(assert (=> b!227529 (= e!140552 (<= 0 (size!2755 lt!88018)))))

(declare-fun b!227530 () Bool)

(assert (=> b!227530 (= e!140553 (BalanceConc!2225 Empty!1108))))

(declare-fun b!227531 () Bool)

(declare-fun ++!864 (BalanceConc!2224 BalanceConc!2224) BalanceConc!2224)

(assert (=> b!227531 (= e!140553 (printTailRec!223 thiss!17480 lt!88018 (+ 0 1) (++!864 (BalanceConc!2225 Empty!1108) (charsOf!298 (apply!614 lt!88018 0)))))))

(declare-fun lt!88224 () List!3450)

(assert (=> b!227531 (= lt!88224 (list!1321 lt!88018))))

(declare-fun lt!88228 () Unit!3906)

(declare-fun lemmaDropApply!170 (List!3450 Int) Unit!3906)

(assert (=> b!227531 (= lt!88228 (lemmaDropApply!170 lt!88224 0))))

(declare-fun drop!183 (List!3450 Int) List!3450)

(declare-fun apply!619 (List!3450 Int) Token!1030)

(assert (=> b!227531 (= (head!781 (drop!183 lt!88224 0)) (apply!619 lt!88224 0))))

(declare-fun lt!88225 () Unit!3906)

(assert (=> b!227531 (= lt!88225 lt!88228)))

(declare-fun lt!88227 () List!3450)

(assert (=> b!227531 (= lt!88227 (list!1321 lt!88018))))

(declare-fun lt!88222 () Unit!3906)

(declare-fun lemmaDropTail!162 (List!3450 Int) Unit!3906)

(assert (=> b!227531 (= lt!88222 (lemmaDropTail!162 lt!88227 0))))

(declare-fun tail!426 (List!3450) List!3450)

(assert (=> b!227531 (= (tail!426 (drop!183 lt!88227 0)) (drop!183 lt!88227 (+ 0 1)))))

(declare-fun lt!88226 () Unit!3906)

(assert (=> b!227531 (= lt!88226 lt!88222)))

(assert (= (and d!62835 res!104770) b!227529))

(assert (= (and d!62835 c!43636) b!227530))

(assert (= (and d!62835 (not c!43636)) b!227531))

(declare-fun m!267807 () Bool)

(assert (=> d!62835 m!267807))

(declare-fun m!267809 () Bool)

(assert (=> d!62835 m!267809))

(assert (=> d!62835 m!267809))

(declare-fun m!267811 () Bool)

(assert (=> d!62835 m!267811))

(declare-fun m!267813 () Bool)

(assert (=> d!62835 m!267813))

(assert (=> d!62835 m!267811))

(declare-fun m!267815 () Bool)

(assert (=> d!62835 m!267815))

(assert (=> b!227529 m!267807))

(declare-fun m!267817 () Bool)

(assert (=> b!227531 m!267817))

(declare-fun m!267819 () Bool)

(assert (=> b!227531 m!267819))

(declare-fun m!267821 () Bool)

(assert (=> b!227531 m!267821))

(declare-fun m!267823 () Bool)

(assert (=> b!227531 m!267823))

(declare-fun m!267825 () Bool)

(assert (=> b!227531 m!267825))

(declare-fun m!267827 () Bool)

(assert (=> b!227531 m!267827))

(declare-fun m!267829 () Bool)

(assert (=> b!227531 m!267829))

(assert (=> b!227531 m!267821))

(declare-fun m!267831 () Bool)

(assert (=> b!227531 m!267831))

(declare-fun m!267833 () Bool)

(assert (=> b!227531 m!267833))

(declare-fun m!267835 () Bool)

(assert (=> b!227531 m!267835))

(assert (=> b!227531 m!267833))

(declare-fun m!267837 () Bool)

(assert (=> b!227531 m!267837))

(declare-fun m!267839 () Bool)

(assert (=> b!227531 m!267839))

(assert (=> b!227531 m!267831))

(assert (=> b!227531 m!267825))

(assert (=> b!227531 m!267817))

(declare-fun m!267841 () Bool)

(assert (=> b!227531 m!267841))

(assert (=> b!227089 d!62835))

(declare-fun b!227548 () Bool)

(declare-fun e!140562 () List!3448)

(assert (=> b!227548 (= e!140562 (Cons!3438 (c!43554 (regex!643 (rule!1198 lt!87988))) Nil!3438))))

(declare-fun d!62841 () Bool)

(declare-fun c!43648 () Bool)

(assert (=> d!62841 (= c!43648 (or ((_ is EmptyExpr!867) (regex!643 (rule!1198 lt!87988))) ((_ is EmptyLang!867) (regex!643 (rule!1198 lt!87988)))))))

(declare-fun e!140563 () List!3448)

(assert (=> d!62841 (= (usedCharacters!48 (regex!643 (rule!1198 lt!87988))) e!140563)))

(declare-fun c!43646 () Bool)

(declare-fun call!11618 () List!3448)

(declare-fun c!43645 () Bool)

(declare-fun bm!11610 () Bool)

(assert (=> bm!11610 (= call!11618 (usedCharacters!48 (ite c!43645 (reg!1196 (regex!643 (rule!1198 lt!87988))) (ite c!43646 (regTwo!2247 (regex!643 (rule!1198 lt!87988))) (regTwo!2246 (regex!643 (rule!1198 lt!87988)))))))))

(declare-fun bm!11611 () Bool)

(declare-fun call!11615 () List!3448)

(declare-fun call!11616 () List!3448)

(declare-fun call!11617 () List!3448)

(assert (=> bm!11611 (= call!11615 (++!862 call!11616 call!11617))))

(declare-fun b!227549 () Bool)

(assert (=> b!227549 (= c!43645 ((_ is Star!867) (regex!643 (rule!1198 lt!87988))))))

(declare-fun e!140564 () List!3448)

(assert (=> b!227549 (= e!140562 e!140564)))

(declare-fun b!227550 () Bool)

(declare-fun e!140565 () List!3448)

(assert (=> b!227550 (= e!140565 call!11615)))

(declare-fun b!227551 () Bool)

(assert (=> b!227551 (= e!140563 e!140562)))

(declare-fun c!43647 () Bool)

(assert (=> b!227551 (= c!43647 ((_ is ElementMatch!867) (regex!643 (rule!1198 lt!87988))))))

(declare-fun bm!11612 () Bool)

(assert (=> bm!11612 (= call!11616 (usedCharacters!48 (ite c!43646 (regOne!2247 (regex!643 (rule!1198 lt!87988))) (regOne!2246 (regex!643 (rule!1198 lt!87988))))))))

(declare-fun b!227552 () Bool)

(assert (=> b!227552 (= e!140563 Nil!3438)))

(declare-fun b!227553 () Bool)

(assert (=> b!227553 (= e!140565 call!11615)))

(declare-fun b!227554 () Bool)

(assert (=> b!227554 (= e!140564 e!140565)))

(assert (=> b!227554 (= c!43646 ((_ is Union!867) (regex!643 (rule!1198 lt!87988))))))

(declare-fun b!227555 () Bool)

(assert (=> b!227555 (= e!140564 call!11618)))

(declare-fun bm!11613 () Bool)

(assert (=> bm!11613 (= call!11617 call!11618)))

(assert (= (and d!62841 c!43648) b!227552))

(assert (= (and d!62841 (not c!43648)) b!227551))

(assert (= (and b!227551 c!43647) b!227548))

(assert (= (and b!227551 (not c!43647)) b!227549))

(assert (= (and b!227549 c!43645) b!227555))

(assert (= (and b!227549 (not c!43645)) b!227554))

(assert (= (and b!227554 c!43646) b!227550))

(assert (= (and b!227554 (not c!43646)) b!227553))

(assert (= (or b!227550 b!227553) bm!11612))

(assert (= (or b!227550 b!227553) bm!11613))

(assert (= (or b!227550 b!227553) bm!11611))

(assert (= (or b!227555 bm!11613) bm!11610))

(declare-fun m!267843 () Bool)

(assert (=> bm!11610 m!267843))

(declare-fun m!267845 () Bool)

(assert (=> bm!11611 m!267845))

(declare-fun m!267847 () Bool)

(assert (=> bm!11612 m!267847))

(assert (=> b!227089 d!62841))

(declare-fun bs!24177 () Bool)

(declare-fun d!62843 () Bool)

(assert (= bs!24177 (and d!62843 b!227072)))

(declare-fun lambda!7153 () Int)

(assert (=> bs!24177 (= lambda!7153 lambda!7137)))

(declare-fun bs!24178 () Bool)

(assert (= bs!24178 (and d!62843 b!227054)))

(assert (=> bs!24178 (not (= lambda!7153 lambda!7138))))

(declare-fun bs!24179 () Bool)

(assert (= bs!24179 (and d!62843 d!62737)))

(assert (=> bs!24179 (not (= lambda!7153 lambda!7141))))

(assert (=> d!62843 (= (filter!37 (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 (seqFromList!663 (t!33316 tokens!465)) separatorToken!170 0)))) lambda!7153) (t!33316 tokens!465))))

(declare-fun lt!88246 () Unit!3906)

(declare-fun choose!2190 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> d!62843 (= lt!88246 (choose!2190 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170))))

(assert (=> d!62843 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62843 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!28 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170) lt!88246)))

(declare-fun bs!24180 () Bool)

(assert (= bs!24180 d!62843))

(declare-fun m!267887 () Bool)

(assert (=> bs!24180 m!267887))

(declare-fun m!267889 () Bool)

(assert (=> bs!24180 m!267889))

(declare-fun m!267891 () Bool)

(assert (=> bs!24180 m!267891))

(assert (=> bs!24180 m!267081))

(assert (=> bs!24180 m!267055))

(assert (=> bs!24180 m!267079))

(declare-fun m!267893 () Bool)

(assert (=> bs!24180 m!267893))

(assert (=> bs!24180 m!267889))

(assert (=> bs!24180 m!267055))

(assert (=> bs!24180 m!267079))

(assert (=> b!227089 d!62843))

(declare-fun d!62859 () Bool)

(declare-fun e!140577 () Bool)

(assert (=> d!62859 e!140577))

(declare-fun res!104788 () Bool)

(assert (=> d!62859 (=> (not res!104788) (not e!140577))))

(declare-fun lt!88252 () BalanceConc!2226)

(assert (=> d!62859 (= res!104788 (= (list!1321 lt!88252) (Cons!3440 separatorToken!170 Nil!3440)))))

(declare-fun singleton!78 (Token!1030) BalanceConc!2226)

(assert (=> d!62859 (= lt!88252 (singleton!78 separatorToken!170))))

(assert (=> d!62859 (= (singletonSeq!195 separatorToken!170) lt!88252)))

(declare-fun b!227573 () Bool)

(declare-fun isBalanced!295 (Conc!1109) Bool)

(assert (=> b!227573 (= e!140577 (isBalanced!295 (c!43555 lt!88252)))))

(assert (= (and d!62859 res!104788) b!227573))

(declare-fun m!267901 () Bool)

(assert (=> d!62859 m!267901))

(declare-fun m!267903 () Bool)

(assert (=> d!62859 m!267903))

(declare-fun m!267905 () Bool)

(assert (=> b!227573 m!267905))

(assert (=> b!227089 d!62859))

(declare-fun d!62863 () Bool)

(declare-fun lt!88255 () Int)

(declare-fun size!2761 (List!3450) Int)

(assert (=> d!62863 (= lt!88255 (size!2761 (list!1321 (_1!2067 lt!87973))))))

(declare-fun size!2762 (Conc!1109) Int)

(assert (=> d!62863 (= lt!88255 (size!2762 (c!43555 (_1!2067 lt!87973))))))

(assert (=> d!62863 (= (size!2755 (_1!2067 lt!87973)) lt!88255)))

(declare-fun bs!24182 () Bool)

(assert (= bs!24182 d!62863))

(declare-fun m!267907 () Bool)

(assert (=> bs!24182 m!267907))

(assert (=> bs!24182 m!267907))

(declare-fun m!267909 () Bool)

(assert (=> bs!24182 m!267909))

(declare-fun m!267911 () Bool)

(assert (=> bs!24182 m!267911))

(assert (=> b!227089 d!62863))

(declare-fun d!62865 () Bool)

(assert (=> d!62865 (rulesProduceIndividualToken!278 thiss!17480 rules!1920 lt!87988)))

(declare-fun lt!88261 () Unit!3906)

(declare-fun choose!2191 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> d!62865 (= lt!88261 (choose!2191 thiss!17480 rules!1920 tokens!465 lt!87988))))

(assert (=> d!62865 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62865 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!96 thiss!17480 rules!1920 tokens!465 lt!87988) lt!88261)))

(declare-fun bs!24190 () Bool)

(assert (= bs!24190 d!62865))

(assert (=> bs!24190 m!267141))

(declare-fun m!267929 () Bool)

(assert (=> bs!24190 m!267929))

(assert (=> bs!24190 m!267081))

(assert (=> b!227089 d!62865))

(declare-fun b!227601 () Bool)

(declare-fun res!104793 () Bool)

(declare-fun e!140592 () Bool)

(assert (=> b!227601 (=> (not res!104793) (not e!140592))))

(declare-fun lt!88266 () Option!621)

(assert (=> b!227601 (= res!104793 (= (value!22641 (_1!2064 (get!1082 lt!88266))) (apply!618 (transformation!643 (rule!1198 (_1!2064 (get!1082 lt!88266)))) (seqFromList!664 (originalCharacters!686 (_1!2064 (get!1082 lt!88266)))))))))

(declare-fun b!227602 () Bool)

(assert (=> b!227602 (= e!140592 (contains!616 rules!1920 (rule!1198 (_1!2064 (get!1082 lt!88266)))))))

(declare-fun b!227603 () Bool)

(declare-fun e!140593 () Bool)

(assert (=> b!227603 (= e!140593 e!140592)))

(declare-fun res!104792 () Bool)

(assert (=> b!227603 (=> (not res!104792) (not e!140592))))

(assert (=> b!227603 (= res!104792 (isDefined!472 lt!88266))))

(declare-fun b!227604 () Bool)

(declare-fun e!140594 () Option!621)

(declare-fun lt!88265 () Option!621)

(declare-fun lt!88264 () Option!621)

(assert (=> b!227604 (= e!140594 (ite (and ((_ is None!620) lt!88265) ((_ is None!620) lt!88264)) None!620 (ite ((_ is None!620) lt!88264) lt!88265 (ite ((_ is None!620) lt!88265) lt!88264 (ite (>= (size!2754 (_1!2064 (v!14303 lt!88265))) (size!2754 (_1!2064 (v!14303 lt!88264)))) lt!88265 lt!88264)))))))

(declare-fun call!11631 () Option!621)

(assert (=> b!227604 (= lt!88265 call!11631)))

(assert (=> b!227604 (= lt!88264 (maxPrefix!259 thiss!17480 (t!33315 rules!1920) lt!88022))))

(declare-fun bm!11626 () Bool)

(assert (=> bm!11626 (= call!11631 (maxPrefixOneRule!113 thiss!17480 (h!8836 rules!1920) lt!88022))))

(declare-fun b!227605 () Bool)

(declare-fun res!104791 () Bool)

(assert (=> b!227605 (=> (not res!104791) (not e!140592))))

(assert (=> b!227605 (= res!104791 (matchR!205 (regex!643 (rule!1198 (_1!2064 (get!1082 lt!88266)))) (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88266))))))))

(declare-fun b!227606 () Bool)

(declare-fun res!104790 () Bool)

(assert (=> b!227606 (=> (not res!104790) (not e!140592))))

(assert (=> b!227606 (= res!104790 (< (size!2758 (_2!2064 (get!1082 lt!88266))) (size!2758 lt!88022)))))

(declare-fun d!62873 () Bool)

(assert (=> d!62873 e!140593))

(declare-fun res!104797 () Bool)

(assert (=> d!62873 (=> res!104797 e!140593)))

(assert (=> d!62873 (= res!104797 (isEmpty!1967 lt!88266))))

(assert (=> d!62873 (= lt!88266 e!140594)))

(declare-fun c!43661 () Bool)

(assert (=> d!62873 (= c!43661 (and ((_ is Cons!3439) rules!1920) ((_ is Nil!3439) (t!33315 rules!1920))))))

(declare-fun lt!88268 () Unit!3906)

(declare-fun lt!88267 () Unit!3906)

(assert (=> d!62873 (= lt!88268 lt!88267)))

(assert (=> d!62873 (isPrefix!339 lt!88022 lt!88022)))

(assert (=> d!62873 (= lt!88267 (lemmaIsPrefixRefl!179 lt!88022 lt!88022))))

(assert (=> d!62873 (rulesValidInductive!168 thiss!17480 rules!1920)))

(assert (=> d!62873 (= (maxPrefix!259 thiss!17480 rules!1920 lt!88022) lt!88266)))

(declare-fun b!227599 () Bool)

(declare-fun res!104789 () Bool)

(assert (=> b!227599 (=> (not res!104789) (not e!140592))))

(assert (=> b!227599 (= res!104789 (= (++!862 (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88266)))) (_2!2064 (get!1082 lt!88266))) lt!88022))))

(declare-fun b!227607 () Bool)

(assert (=> b!227607 (= e!140594 call!11631)))

(declare-fun b!227608 () Bool)

(declare-fun res!104796 () Bool)

(assert (=> b!227608 (=> (not res!104796) (not e!140592))))

(assert (=> b!227608 (= res!104796 (= (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88266)))) (originalCharacters!686 (_1!2064 (get!1082 lt!88266)))))))

(assert (= (and d!62873 c!43661) b!227607))

(assert (= (and d!62873 (not c!43661)) b!227604))

(assert (= (or b!227607 b!227604) bm!11626))

(assert (= (and d!62873 (not res!104797)) b!227603))

(assert (= (and b!227603 res!104792) b!227608))

(assert (= (and b!227608 res!104796) b!227606))

(assert (= (and b!227606 res!104790) b!227599))

(assert (= (and b!227599 res!104789) b!227601))

(assert (= (and b!227601 res!104793) b!227605))

(assert (= (and b!227605 res!104791) b!227602))

(declare-fun m!267937 () Bool)

(assert (=> bm!11626 m!267937))

(declare-fun m!267939 () Bool)

(assert (=> b!227605 m!267939))

(declare-fun m!267941 () Bool)

(assert (=> b!227605 m!267941))

(assert (=> b!227605 m!267941))

(declare-fun m!267943 () Bool)

(assert (=> b!227605 m!267943))

(assert (=> b!227605 m!267943))

(declare-fun m!267945 () Bool)

(assert (=> b!227605 m!267945))

(assert (=> b!227602 m!267939))

(declare-fun m!267947 () Bool)

(assert (=> b!227602 m!267947))

(declare-fun m!267949 () Bool)

(assert (=> d!62873 m!267949))

(declare-fun m!267951 () Bool)

(assert (=> d!62873 m!267951))

(declare-fun m!267953 () Bool)

(assert (=> d!62873 m!267953))

(assert (=> d!62873 m!267655))

(assert (=> b!227608 m!267939))

(assert (=> b!227608 m!267941))

(assert (=> b!227608 m!267941))

(assert (=> b!227608 m!267943))

(assert (=> b!227601 m!267939))

(declare-fun m!267955 () Bool)

(assert (=> b!227601 m!267955))

(assert (=> b!227601 m!267955))

(declare-fun m!267957 () Bool)

(assert (=> b!227601 m!267957))

(declare-fun m!267959 () Bool)

(assert (=> b!227604 m!267959))

(assert (=> b!227606 m!267939))

(declare-fun m!267961 () Bool)

(assert (=> b!227606 m!267961))

(declare-fun m!267963 () Bool)

(assert (=> b!227606 m!267963))

(declare-fun m!267965 () Bool)

(assert (=> b!227603 m!267965))

(assert (=> b!227599 m!267939))

(assert (=> b!227599 m!267941))

(assert (=> b!227599 m!267941))

(assert (=> b!227599 m!267943))

(assert (=> b!227599 m!267943))

(declare-fun m!267967 () Bool)

(assert (=> b!227599 m!267967))

(assert (=> b!227089 d!62873))

(declare-fun d!62879 () Bool)

(assert (=> d!62879 (isPrefix!339 lt!88004 (++!862 lt!88004 lt!88022))))

(declare-fun lt!88275 () Unit!3906)

(declare-fun choose!2193 (List!3448 List!3448) Unit!3906)

(assert (=> d!62879 (= lt!88275 (choose!2193 lt!88004 lt!88022))))

(assert (=> d!62879 (= (lemmaConcatTwoListThenFirstIsPrefix!234 lt!88004 lt!88022) lt!88275)))

(declare-fun bs!24192 () Bool)

(assert (= bs!24192 d!62879))

(assert (=> bs!24192 m!267067))

(assert (=> bs!24192 m!267067))

(declare-fun m!267973 () Bool)

(assert (=> bs!24192 m!267973))

(declare-fun m!267975 () Bool)

(assert (=> bs!24192 m!267975))

(assert (=> b!227089 d!62879))

(declare-fun d!62883 () Bool)

(assert (=> d!62883 (= (maxPrefix!259 thiss!17480 rules!1920 (++!862 (list!1320 (charsOf!298 separatorToken!170)) lt!88002)) (Some!620 (tuple2!3697 separatorToken!170 lt!88002)))))

(declare-fun lt!88293 () Unit!3906)

(declare-fun choose!2195 (LexerInterface!529 List!3449 Token!1030 Rule!1086 List!3448 Rule!1086) Unit!3906)

(assert (=> d!62883 (= lt!88293 (choose!2195 thiss!17480 rules!1920 separatorToken!170 (rule!1198 separatorToken!170) lt!88002 (rule!1198 lt!87988)))))

(assert (=> d!62883 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62883 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!34 thiss!17480 rules!1920 separatorToken!170 (rule!1198 separatorToken!170) lt!88002 (rule!1198 lt!87988)) lt!88293)))

(declare-fun bs!24194 () Bool)

(assert (= bs!24194 d!62883))

(assert (=> bs!24194 m!267081))

(assert (=> bs!24194 m!267061))

(assert (=> bs!24194 m!267063))

(assert (=> bs!24194 m!267061))

(assert (=> bs!24194 m!267063))

(declare-fun m!268013 () Bool)

(assert (=> bs!24194 m!268013))

(declare-fun m!268015 () Bool)

(assert (=> bs!24194 m!268015))

(assert (=> bs!24194 m!268013))

(declare-fun m!268017 () Bool)

(assert (=> bs!24194 m!268017))

(assert (=> b!227089 d!62883))

(declare-fun d!62899 () Bool)

(assert (=> d!62899 (= (get!1082 (maxPrefix!259 thiss!17480 rules!1920 lt!88008)) (v!14303 (maxPrefix!259 thiss!17480 rules!1920 lt!88008)))))

(assert (=> b!227089 d!62899))

(declare-fun d!62901 () Bool)

(assert (=> d!62901 (= (isEmpty!1962 (t!33316 tokens!465)) ((_ is Nil!3440) (t!33316 tokens!465)))))

(assert (=> b!227089 d!62901))

(declare-fun d!62903 () Bool)

(assert (=> d!62903 (= (head!782 lt!88013) (h!8835 lt!88013))))

(assert (=> b!227089 d!62903))

(declare-fun b!227637 () Bool)

(declare-fun e!140617 () Bool)

(declare-fun lt!88294 () tuple2!3702)

(assert (=> b!227637 (= e!140617 (= (_2!2067 lt!88294) lt!87993))))

(declare-fun b!227638 () Bool)

(declare-fun res!104814 () Bool)

(declare-fun e!140619 () Bool)

(assert (=> b!227638 (=> (not res!104814) (not e!140619))))

(assert (=> b!227638 (= res!104814 (= (list!1321 (_1!2067 lt!88294)) (_1!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87993)))))))

(declare-fun d!62905 () Bool)

(assert (=> d!62905 e!140619))

(declare-fun res!104815 () Bool)

(assert (=> d!62905 (=> (not res!104815) (not e!140619))))

(assert (=> d!62905 (= res!104815 e!140617)))

(declare-fun c!43668 () Bool)

(assert (=> d!62905 (= c!43668 (> (size!2755 (_1!2067 lt!88294)) 0))))

(assert (=> d!62905 (= lt!88294 (lexTailRecV2!141 thiss!17480 rules!1920 lt!87993 (BalanceConc!2225 Empty!1108) lt!87993 (BalanceConc!2227 Empty!1109)))))

(assert (=> d!62905 (= (lex!329 thiss!17480 rules!1920 lt!87993) lt!88294)))

(declare-fun b!227639 () Bool)

(declare-fun e!140618 () Bool)

(assert (=> b!227639 (= e!140618 (not (isEmpty!1958 (_1!2067 lt!88294))))))

(declare-fun b!227640 () Bool)

(assert (=> b!227640 (= e!140619 (= (list!1320 (_2!2067 lt!88294)) (_2!2066 (lexList!157 thiss!17480 rules!1920 (list!1320 lt!87993)))))))

(declare-fun b!227641 () Bool)

(assert (=> b!227641 (= e!140617 e!140618)))

(declare-fun res!104816 () Bool)

(assert (=> b!227641 (= res!104816 (< (size!2757 (_2!2067 lt!88294)) (size!2757 lt!87993)))))

(assert (=> b!227641 (=> (not res!104816) (not e!140618))))

(assert (= (and d!62905 c!43668) b!227641))

(assert (= (and d!62905 (not c!43668)) b!227637))

(assert (= (and b!227641 res!104816) b!227639))

(assert (= (and d!62905 res!104815) b!227638))

(assert (= (and b!227638 res!104814) b!227640))

(declare-fun m!268019 () Bool)

(assert (=> b!227639 m!268019))

(declare-fun m!268021 () Bool)

(assert (=> b!227640 m!268021))

(declare-fun m!268023 () Bool)

(assert (=> b!227640 m!268023))

(assert (=> b!227640 m!268023))

(declare-fun m!268025 () Bool)

(assert (=> b!227640 m!268025))

(declare-fun m!268027 () Bool)

(assert (=> b!227641 m!268027))

(declare-fun m!268029 () Bool)

(assert (=> b!227641 m!268029))

(declare-fun m!268031 () Bool)

(assert (=> d!62905 m!268031))

(declare-fun m!268033 () Bool)

(assert (=> d!62905 m!268033))

(declare-fun m!268035 () Bool)

(assert (=> b!227638 m!268035))

(assert (=> b!227638 m!268023))

(assert (=> b!227638 m!268023))

(assert (=> b!227638 m!268025))

(assert (=> b!227089 d!62905))

(declare-fun d!62907 () Bool)

(declare-fun lt!88295 () BalanceConc!2224)

(assert (=> d!62907 (= (list!1320 lt!88295) (printList!213 thiss!17480 (list!1321 lt!88018)))))

(assert (=> d!62907 (= lt!88295 (printTailRec!223 thiss!17480 lt!88018 0 (BalanceConc!2225 Empty!1108)))))

(assert (=> d!62907 (= (print!260 thiss!17480 lt!88018) lt!88295)))

(declare-fun bs!24195 () Bool)

(assert (= bs!24195 d!62907))

(declare-fun m!268037 () Bool)

(assert (=> bs!24195 m!268037))

(assert (=> bs!24195 m!267823))

(assert (=> bs!24195 m!267823))

(declare-fun m!268039 () Bool)

(assert (=> bs!24195 m!268039))

(assert (=> bs!24195 m!267219))

(assert (=> b!227089 d!62907))

(declare-fun d!62909 () Bool)

(declare-fun e!140622 () Bool)

(assert (=> d!62909 e!140622))

(declare-fun res!104821 () Bool)

(assert (=> d!62909 (=> (not res!104821) (not e!140622))))

(assert (=> d!62909 (= res!104821 (isDefined!474 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 lt!87988)))))))

(declare-fun lt!88298 () Unit!3906)

(declare-fun choose!2196 (LexerInterface!529 List!3449 List!3448 Token!1030) Unit!3906)

(assert (=> d!62909 (= lt!88298 (choose!2196 thiss!17480 rules!1920 lt!88013 lt!87988))))

(assert (=> d!62909 (rulesInvariant!495 thiss!17480 rules!1920)))

(assert (=> d!62909 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!84 thiss!17480 rules!1920 lt!88013 lt!87988) lt!88298)))

(declare-fun b!227646 () Bool)

(declare-fun res!104822 () Bool)

(assert (=> b!227646 (=> (not res!104822) (not e!140622))))

(assert (=> b!227646 (= res!104822 (matchR!205 (regex!643 (get!1083 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 lt!87988))))) (list!1320 (charsOf!298 lt!87988))))))

(declare-fun b!227647 () Bool)

(assert (=> b!227647 (= e!140622 (= (rule!1198 lt!87988) (get!1083 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 lt!87988))))))))

(assert (= (and d!62909 res!104821) b!227646))

(assert (= (and b!227646 res!104822) b!227647))

(assert (=> d!62909 m!267163))

(assert (=> d!62909 m!267163))

(declare-fun m!268041 () Bool)

(assert (=> d!62909 m!268041))

(declare-fun m!268043 () Bool)

(assert (=> d!62909 m!268043))

(assert (=> d!62909 m!267091))

(assert (=> b!227646 m!267163))

(declare-fun m!268045 () Bool)

(assert (=> b!227646 m!268045))

(assert (=> b!227646 m!267173))

(assert (=> b!227646 m!267163))

(assert (=> b!227646 m!267195))

(declare-fun m!268047 () Bool)

(assert (=> b!227646 m!268047))

(assert (=> b!227646 m!267173))

(assert (=> b!227646 m!267195))

(assert (=> b!227647 m!267163))

(assert (=> b!227647 m!267163))

(assert (=> b!227647 m!268045))

(assert (=> b!227089 d!62909))

(declare-fun d!62911 () Bool)

(declare-fun e!140623 () Bool)

(assert (=> d!62911 e!140623))

(declare-fun res!104823 () Bool)

(assert (=> d!62911 (=> (not res!104823) (not e!140623))))

(declare-fun lt!88299 () BalanceConc!2226)

(assert (=> d!62911 (= res!104823 (= (list!1321 lt!88299) (Cons!3440 lt!87988 Nil!3440)))))

(assert (=> d!62911 (= lt!88299 (singleton!78 lt!87988))))

(assert (=> d!62911 (= (singletonSeq!195 lt!87988) lt!88299)))

(declare-fun b!227648 () Bool)

(assert (=> b!227648 (= e!140623 (isBalanced!295 (c!43555 lt!88299)))))

(assert (= (and d!62911 res!104823) b!227648))

(declare-fun m!268049 () Bool)

(assert (=> d!62911 m!268049))

(declare-fun m!268051 () Bool)

(assert (=> d!62911 m!268051))

(declare-fun m!268053 () Bool)

(assert (=> b!227648 m!268053))

(assert (=> b!227089 d!62911))

(declare-fun d!62913 () Bool)

(declare-fun isEmpty!1969 (Option!622) Bool)

(assert (=> d!62913 (= (isDefined!474 lt!88017) (not (isEmpty!1969 lt!88017)))))

(declare-fun bs!24196 () Bool)

(assert (= bs!24196 d!62913))

(declare-fun m!268055 () Bool)

(assert (=> bs!24196 m!268055))

(assert (=> b!227089 d!62913))

(declare-fun d!62915 () Bool)

(assert (=> d!62915 (= (isEmpty!1962 tokens!465) ((_ is Nil!3440) tokens!465))))

(assert (=> b!227089 d!62915))

(declare-fun b!227657 () Bool)

(declare-fun e!140630 () Bool)

(declare-fun e!140631 () Bool)

(assert (=> b!227657 (= e!140630 e!140631)))

(declare-fun res!104833 () Bool)

(assert (=> b!227657 (=> (not res!104833) (not e!140631))))

(assert (=> b!227657 (= res!104833 (not ((_ is Nil!3438) lt!87974)))))

(declare-fun b!227658 () Bool)

(declare-fun res!104834 () Bool)

(assert (=> b!227658 (=> (not res!104834) (not e!140631))))

(assert (=> b!227658 (= res!104834 (= (head!782 lt!88004) (head!782 lt!87974)))))

(declare-fun b!227659 () Bool)

(assert (=> b!227659 (= e!140631 (isPrefix!339 (tail!425 lt!88004) (tail!425 lt!87974)))))

(declare-fun d!62917 () Bool)

(declare-fun e!140632 () Bool)

(assert (=> d!62917 e!140632))

(declare-fun res!104832 () Bool)

(assert (=> d!62917 (=> res!104832 e!140632)))

(declare-fun lt!88302 () Bool)

(assert (=> d!62917 (= res!104832 (not lt!88302))))

(assert (=> d!62917 (= lt!88302 e!140630)))

(declare-fun res!104835 () Bool)

(assert (=> d!62917 (=> res!104835 e!140630)))

(assert (=> d!62917 (= res!104835 ((_ is Nil!3438) lt!88004))))

(assert (=> d!62917 (= (isPrefix!339 lt!88004 lt!87974) lt!88302)))

(declare-fun b!227660 () Bool)

(assert (=> b!227660 (= e!140632 (>= (size!2758 lt!87974) (size!2758 lt!88004)))))

(assert (= (and d!62917 (not res!104835)) b!227657))

(assert (= (and b!227657 res!104833) b!227658))

(assert (= (and b!227658 res!104834) b!227659))

(assert (= (and d!62917 (not res!104832)) b!227660))

(declare-fun m!268057 () Bool)

(assert (=> b!227658 m!268057))

(declare-fun m!268059 () Bool)

(assert (=> b!227658 m!268059))

(declare-fun m!268061 () Bool)

(assert (=> b!227659 m!268061))

(declare-fun m!268063 () Bool)

(assert (=> b!227659 m!268063))

(assert (=> b!227659 m!268061))

(assert (=> b!227659 m!268063))

(declare-fun m!268065 () Bool)

(assert (=> b!227659 m!268065))

(declare-fun m!268067 () Bool)

(assert (=> b!227660 m!268067))

(assert (=> b!227660 m!267621))

(assert (=> b!227089 d!62917))

(declare-fun d!62919 () Bool)

(declare-fun list!1324 (Conc!1108) List!3448)

(assert (=> d!62919 (= (list!1320 (charsOf!298 lt!87988)) (list!1324 (c!43553 (charsOf!298 lt!87988))))))

(declare-fun bs!24197 () Bool)

(assert (= bs!24197 d!62919))

(declare-fun m!268069 () Bool)

(assert (=> bs!24197 m!268069))

(assert (=> b!227089 d!62919))

(declare-fun d!62921 () Bool)

(declare-fun list!1325 (Conc!1109) List!3450)

(assert (=> d!62921 (= (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 lt!87984))) (list!1325 (c!43555 (_1!2067 (lex!329 thiss!17480 rules!1920 lt!87984)))))))

(declare-fun bs!24198 () Bool)

(assert (= bs!24198 d!62921))

(declare-fun m!268071 () Bool)

(assert (=> bs!24198 m!268071))

(assert (=> b!227089 d!62921))

(declare-fun d!62923 () Bool)

(assert (=> d!62923 (= (isDefined!474 lt!88006) (not (isEmpty!1969 lt!88006)))))

(declare-fun bs!24199 () Bool)

(assert (= bs!24199 d!62923))

(declare-fun m!268073 () Bool)

(assert (=> bs!24199 m!268073))

(assert (=> b!227089 d!62923))

(declare-fun d!62925 () Bool)

(declare-fun lt!88303 () Int)

(assert (=> d!62925 (= lt!88303 (size!2761 (list!1321 (_1!2067 lt!87989))))))

(assert (=> d!62925 (= lt!88303 (size!2762 (c!43555 (_1!2067 lt!87989))))))

(assert (=> d!62925 (= (size!2755 (_1!2067 lt!87989)) lt!88303)))

(declare-fun bs!24200 () Bool)

(assert (= bs!24200 d!62925))

(declare-fun m!268075 () Bool)

(assert (=> bs!24200 m!268075))

(assert (=> bs!24200 m!268075))

(declare-fun m!268077 () Bool)

(assert (=> bs!24200 m!268077))

(declare-fun m!268079 () Bool)

(assert (=> bs!24200 m!268079))

(assert (=> b!227089 d!62925))

(declare-fun b!227673 () Bool)

(declare-fun e!140642 () Option!622)

(assert (=> b!227673 (= e!140642 (Some!621 (h!8836 rules!1920)))))

(declare-fun b!227674 () Bool)

(declare-fun e!140644 () Option!622)

(assert (=> b!227674 (= e!140644 None!621)))

(declare-fun b!227675 () Bool)

(declare-fun lt!88310 () Unit!3906)

(declare-fun lt!88312 () Unit!3906)

(assert (=> b!227675 (= lt!88310 lt!88312)))

(assert (=> b!227675 (rulesInvariant!495 thiss!17480 (t!33315 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!21 (LexerInterface!529 Rule!1086 List!3449) Unit!3906)

(assert (=> b!227675 (= lt!88312 (lemmaInvariantOnRulesThenOnTail!21 thiss!17480 (h!8836 rules!1920) (t!33315 rules!1920)))))

(assert (=> b!227675 (= e!140644 (getRuleFromTag!84 thiss!17480 (t!33315 rules!1920) (tag!841 (rule!1198 lt!87988))))))

(declare-fun b!227676 () Bool)

(declare-fun e!140641 () Bool)

(declare-fun e!140643 () Bool)

(assert (=> b!227676 (= e!140641 e!140643)))

(declare-fun res!104841 () Bool)

(assert (=> b!227676 (=> (not res!104841) (not e!140643))))

(declare-fun lt!88311 () Option!622)

(assert (=> b!227676 (= res!104841 (contains!616 rules!1920 (get!1083 lt!88311)))))

(declare-fun d!62927 () Bool)

(assert (=> d!62927 e!140641))

(declare-fun res!104840 () Bool)

(assert (=> d!62927 (=> res!104840 e!140641)))

(assert (=> d!62927 (= res!104840 (isEmpty!1969 lt!88311))))

(assert (=> d!62927 (= lt!88311 e!140642)))

(declare-fun c!43674 () Bool)

(assert (=> d!62927 (= c!43674 (and ((_ is Cons!3439) rules!1920) (= (tag!841 (h!8836 rules!1920)) (tag!841 (rule!1198 lt!87988)))))))

(assert (=> d!62927 (rulesInvariant!495 thiss!17480 rules!1920)))

(assert (=> d!62927 (= (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 lt!87988))) lt!88311)))

(declare-fun b!227677 () Bool)

(assert (=> b!227677 (= e!140643 (= (tag!841 (get!1083 lt!88311)) (tag!841 (rule!1198 lt!87988))))))

(declare-fun b!227678 () Bool)

(assert (=> b!227678 (= e!140642 e!140644)))

(declare-fun c!43673 () Bool)

(assert (=> b!227678 (= c!43673 (and ((_ is Cons!3439) rules!1920) (not (= (tag!841 (h!8836 rules!1920)) (tag!841 (rule!1198 lt!87988))))))))

(assert (= (and d!62927 c!43674) b!227673))

(assert (= (and d!62927 (not c!43674)) b!227678))

(assert (= (and b!227678 c!43673) b!227675))

(assert (= (and b!227678 (not c!43673)) b!227674))

(assert (= (and d!62927 (not res!104840)) b!227676))

(assert (= (and b!227676 res!104841) b!227677))

(declare-fun m!268081 () Bool)

(assert (=> b!227675 m!268081))

(declare-fun m!268083 () Bool)

(assert (=> b!227675 m!268083))

(declare-fun m!268085 () Bool)

(assert (=> b!227675 m!268085))

(declare-fun m!268087 () Bool)

(assert (=> b!227676 m!268087))

(assert (=> b!227676 m!268087))

(declare-fun m!268089 () Bool)

(assert (=> b!227676 m!268089))

(declare-fun m!268091 () Bool)

(assert (=> d!62927 m!268091))

(assert (=> d!62927 m!267091))

(assert (=> b!227677 m!268087))

(assert (=> b!227089 d!62927))

(declare-fun b!227679 () Bool)

(declare-fun e!140646 () Option!622)

(assert (=> b!227679 (= e!140646 (Some!621 (h!8836 rules!1920)))))

(declare-fun b!227680 () Bool)

(declare-fun e!140648 () Option!622)

(assert (=> b!227680 (= e!140648 None!621)))

(declare-fun b!227681 () Bool)

(declare-fun lt!88313 () Unit!3906)

(declare-fun lt!88315 () Unit!3906)

(assert (=> b!227681 (= lt!88313 lt!88315)))

(assert (=> b!227681 (rulesInvariant!495 thiss!17480 (t!33315 rules!1920))))

(assert (=> b!227681 (= lt!88315 (lemmaInvariantOnRulesThenOnTail!21 thiss!17480 (h!8836 rules!1920) (t!33315 rules!1920)))))

(assert (=> b!227681 (= e!140648 (getRuleFromTag!84 thiss!17480 (t!33315 rules!1920) (tag!841 (rule!1198 separatorToken!170))))))

(declare-fun b!227682 () Bool)

(declare-fun e!140645 () Bool)

(declare-fun e!140647 () Bool)

(assert (=> b!227682 (= e!140645 e!140647)))

(declare-fun res!104843 () Bool)

(assert (=> b!227682 (=> (not res!104843) (not e!140647))))

(declare-fun lt!88314 () Option!622)

(assert (=> b!227682 (= res!104843 (contains!616 rules!1920 (get!1083 lt!88314)))))

(declare-fun d!62929 () Bool)

(assert (=> d!62929 e!140645))

(declare-fun res!104842 () Bool)

(assert (=> d!62929 (=> res!104842 e!140645)))

(assert (=> d!62929 (= res!104842 (isEmpty!1969 lt!88314))))

(assert (=> d!62929 (= lt!88314 e!140646)))

(declare-fun c!43676 () Bool)

(assert (=> d!62929 (= c!43676 (and ((_ is Cons!3439) rules!1920) (= (tag!841 (h!8836 rules!1920)) (tag!841 (rule!1198 separatorToken!170)))))))

(assert (=> d!62929 (rulesInvariant!495 thiss!17480 rules!1920)))

(assert (=> d!62929 (= (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 separatorToken!170))) lt!88314)))

(declare-fun b!227683 () Bool)

(assert (=> b!227683 (= e!140647 (= (tag!841 (get!1083 lt!88314)) (tag!841 (rule!1198 separatorToken!170))))))

(declare-fun b!227684 () Bool)

(assert (=> b!227684 (= e!140646 e!140648)))

(declare-fun c!43675 () Bool)

(assert (=> b!227684 (= c!43675 (and ((_ is Cons!3439) rules!1920) (not (= (tag!841 (h!8836 rules!1920)) (tag!841 (rule!1198 separatorToken!170))))))))

(assert (= (and d!62929 c!43676) b!227679))

(assert (= (and d!62929 (not c!43676)) b!227684))

(assert (= (and b!227684 c!43675) b!227681))

(assert (= (and b!227684 (not c!43675)) b!227680))

(assert (= (and d!62929 (not res!104842)) b!227682))

(assert (= (and b!227682 res!104843) b!227683))

(assert (=> b!227681 m!268081))

(assert (=> b!227681 m!268083))

(declare-fun m!268093 () Bool)

(assert (=> b!227681 m!268093))

(declare-fun m!268095 () Bool)

(assert (=> b!227682 m!268095))

(assert (=> b!227682 m!268095))

(declare-fun m!268097 () Bool)

(assert (=> b!227682 m!268097))

(declare-fun m!268099 () Bool)

(assert (=> d!62929 m!268099))

(assert (=> d!62929 m!267091))

(assert (=> b!227683 m!268095))

(assert (=> b!227089 d!62929))

(declare-fun d!62931 () Bool)

(declare-fun lt!88316 () Bool)

(assert (=> d!62931 (= lt!88316 (select (content!476 (usedCharacters!48 (regex!643 (rule!1198 lt!87988)))) lt!87999))))

(declare-fun e!140649 () Bool)

(assert (=> d!62931 (= lt!88316 e!140649)))

(declare-fun res!104845 () Bool)

(assert (=> d!62931 (=> (not res!104845) (not e!140649))))

(assert (=> d!62931 (= res!104845 ((_ is Cons!3438) (usedCharacters!48 (regex!643 (rule!1198 lt!87988)))))))

(assert (=> d!62931 (= (contains!614 (usedCharacters!48 (regex!643 (rule!1198 lt!87988))) lt!87999) lt!88316)))

(declare-fun b!227685 () Bool)

(declare-fun e!140650 () Bool)

(assert (=> b!227685 (= e!140649 e!140650)))

(declare-fun res!104844 () Bool)

(assert (=> b!227685 (=> res!104844 e!140650)))

(assert (=> b!227685 (= res!104844 (= (h!8835 (usedCharacters!48 (regex!643 (rule!1198 lt!87988)))) lt!87999))))

(declare-fun b!227686 () Bool)

(assert (=> b!227686 (= e!140650 (contains!614 (t!33314 (usedCharacters!48 (regex!643 (rule!1198 lt!87988)))) lt!87999))))

(assert (= (and d!62931 res!104845) b!227685))

(assert (= (and b!227685 (not res!104844)) b!227686))

(assert (=> d!62931 m!267145))

(declare-fun m!268101 () Bool)

(assert (=> d!62931 m!268101))

(declare-fun m!268103 () Bool)

(assert (=> d!62931 m!268103))

(declare-fun m!268105 () Bool)

(assert (=> b!227686 m!268105))

(assert (=> b!227089 d!62931))

(declare-fun d!62933 () Bool)

(assert (=> d!62933 (= (head!781 (t!33316 tokens!465)) (h!8837 (t!33316 tokens!465)))))

(assert (=> b!227089 d!62933))

(declare-fun d!62935 () Bool)

(declare-fun e!140683 () Bool)

(assert (=> d!62935 e!140683))

(declare-fun res!104879 () Bool)

(assert (=> d!62935 (=> res!104879 e!140683)))

(assert (=> d!62935 (= res!104879 (isEmpty!1962 tokens!465))))

(declare-fun lt!88332 () Unit!3906)

(declare-fun choose!2199 (LexerInterface!529 List!3449 List!3450 Token!1030) Unit!3906)

(assert (=> d!62935 (= lt!88332 (choose!2199 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!62935 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62935 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!104 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!88332)))

(declare-fun b!227732 () Bool)

(declare-fun e!140684 () Bool)

(assert (=> b!227732 (= e!140683 e!140684)))

(declare-fun res!104880 () Bool)

(assert (=> b!227732 (=> (not res!104880) (not e!140684))))

(assert (=> b!227732 (= res!104880 (isDefined!472 (maxPrefix!259 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!227733 () Bool)

(assert (=> b!227733 (= e!140684 (= (_1!2064 (get!1082 (maxPrefix!259 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!781 tokens!465)))))

(assert (= (and d!62935 (not res!104879)) b!227732))

(assert (= (and b!227732 res!104880) b!227733))

(assert (=> d!62935 m!267143))

(declare-fun m!268167 () Bool)

(assert (=> d!62935 m!268167))

(assert (=> d!62935 m!267081))

(assert (=> b!227732 m!267127))

(assert (=> b!227732 m!267127))

(declare-fun m!268169 () Bool)

(assert (=> b!227732 m!268169))

(assert (=> b!227732 m!268169))

(declare-fun m!268171 () Bool)

(assert (=> b!227732 m!268171))

(assert (=> b!227733 m!267127))

(assert (=> b!227733 m!267127))

(assert (=> b!227733 m!268169))

(assert (=> b!227733 m!268169))

(declare-fun m!268173 () Bool)

(assert (=> b!227733 m!268173))

(assert (=> b!227733 m!267095))

(assert (=> b!227089 d!62935))

(declare-fun d!62951 () Bool)

(assert (=> d!62951 (= lt!88022 (_2!2064 lt!88015))))

(declare-fun lt!88335 () Unit!3906)

(declare-fun choose!2200 (List!3448 List!3448 List!3448 List!3448 List!3448) Unit!3906)

(assert (=> d!62951 (= lt!88335 (choose!2200 lt!88004 lt!88022 lt!88004 (_2!2064 lt!88015) lt!88008))))

(assert (=> d!62951 (isPrefix!339 lt!88004 lt!88008)))

(assert (=> d!62951 (= (lemmaSamePrefixThenSameSuffix!164 lt!88004 lt!88022 lt!88004 (_2!2064 lt!88015) lt!88008) lt!88335)))

(declare-fun bs!24201 () Bool)

(assert (= bs!24201 d!62951))

(declare-fun m!268175 () Bool)

(assert (=> bs!24201 m!268175))

(declare-fun m!268177 () Bool)

(assert (=> bs!24201 m!268177))

(assert (=> b!227089 d!62951))

(declare-fun b!227734 () Bool)

(declare-fun e!140685 () List!3448)

(assert (=> b!227734 (= e!140685 (Cons!3438 (c!43554 (regex!643 (rule!1198 separatorToken!170))) Nil!3438))))

(declare-fun d!62953 () Bool)

(declare-fun c!43686 () Bool)

(assert (=> d!62953 (= c!43686 (or ((_ is EmptyExpr!867) (regex!643 (rule!1198 separatorToken!170))) ((_ is EmptyLang!867) (regex!643 (rule!1198 separatorToken!170)))))))

(declare-fun e!140686 () List!3448)

(assert (=> d!62953 (= (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170))) e!140686)))

(declare-fun bm!11627 () Bool)

(declare-fun c!43683 () Bool)

(declare-fun call!11635 () List!3448)

(declare-fun c!43684 () Bool)

(assert (=> bm!11627 (= call!11635 (usedCharacters!48 (ite c!43683 (reg!1196 (regex!643 (rule!1198 separatorToken!170))) (ite c!43684 (regTwo!2247 (regex!643 (rule!1198 separatorToken!170))) (regTwo!2246 (regex!643 (rule!1198 separatorToken!170)))))))))

(declare-fun bm!11628 () Bool)

(declare-fun call!11632 () List!3448)

(declare-fun call!11633 () List!3448)

(declare-fun call!11634 () List!3448)

(assert (=> bm!11628 (= call!11632 (++!862 call!11633 call!11634))))

(declare-fun b!227735 () Bool)

(assert (=> b!227735 (= c!43683 ((_ is Star!867) (regex!643 (rule!1198 separatorToken!170))))))

(declare-fun e!140687 () List!3448)

(assert (=> b!227735 (= e!140685 e!140687)))

(declare-fun b!227736 () Bool)

(declare-fun e!140688 () List!3448)

(assert (=> b!227736 (= e!140688 call!11632)))

(declare-fun b!227737 () Bool)

(assert (=> b!227737 (= e!140686 e!140685)))

(declare-fun c!43685 () Bool)

(assert (=> b!227737 (= c!43685 ((_ is ElementMatch!867) (regex!643 (rule!1198 separatorToken!170))))))

(declare-fun bm!11629 () Bool)

(assert (=> bm!11629 (= call!11633 (usedCharacters!48 (ite c!43684 (regOne!2247 (regex!643 (rule!1198 separatorToken!170))) (regOne!2246 (regex!643 (rule!1198 separatorToken!170))))))))

(declare-fun b!227738 () Bool)

(assert (=> b!227738 (= e!140686 Nil!3438)))

(declare-fun b!227739 () Bool)

(assert (=> b!227739 (= e!140688 call!11632)))

(declare-fun b!227740 () Bool)

(assert (=> b!227740 (= e!140687 e!140688)))

(assert (=> b!227740 (= c!43684 ((_ is Union!867) (regex!643 (rule!1198 separatorToken!170))))))

(declare-fun b!227741 () Bool)

(assert (=> b!227741 (= e!140687 call!11635)))

(declare-fun bm!11630 () Bool)

(assert (=> bm!11630 (= call!11634 call!11635)))

(assert (= (and d!62953 c!43686) b!227738))

(assert (= (and d!62953 (not c!43686)) b!227737))

(assert (= (and b!227737 c!43685) b!227734))

(assert (= (and b!227737 (not c!43685)) b!227735))

(assert (= (and b!227735 c!43683) b!227741))

(assert (= (and b!227735 (not c!43683)) b!227740))

(assert (= (and b!227740 c!43684) b!227736))

(assert (= (and b!227740 (not c!43684)) b!227739))

(assert (= (or b!227736 b!227739) bm!11629))

(assert (= (or b!227736 b!227739) bm!11630))

(assert (= (or b!227736 b!227739) bm!11628))

(assert (= (or b!227741 bm!11630) bm!11627))

(declare-fun m!268179 () Bool)

(assert (=> bm!11627 m!268179))

(declare-fun m!268181 () Bool)

(assert (=> bm!11628 m!268181))

(declare-fun m!268183 () Bool)

(assert (=> bm!11629 m!268183))

(assert (=> b!227089 d!62953))

(declare-fun d!62955 () Bool)

(declare-fun lt!88337 () Bool)

(declare-fun e!140690 () Bool)

(assert (=> d!62955 (= lt!88337 e!140690)))

(declare-fun res!104881 () Bool)

(assert (=> d!62955 (=> (not res!104881) (not e!140690))))

(assert (=> d!62955 (= res!104881 (= (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 lt!87988))))) (list!1321 (singletonSeq!195 lt!87988))))))

(declare-fun e!140689 () Bool)

(assert (=> d!62955 (= lt!88337 e!140689)))

(declare-fun res!104883 () Bool)

(assert (=> d!62955 (=> (not res!104883) (not e!140689))))

(declare-fun lt!88336 () tuple2!3702)

(assert (=> d!62955 (= res!104883 (= (size!2755 (_1!2067 lt!88336)) 1))))

(assert (=> d!62955 (= lt!88336 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 lt!87988))))))

(assert (=> d!62955 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62955 (= (rulesProduceIndividualToken!278 thiss!17480 rules!1920 lt!87988) lt!88337)))

(declare-fun b!227742 () Bool)

(declare-fun res!104882 () Bool)

(assert (=> b!227742 (=> (not res!104882) (not e!140689))))

(assert (=> b!227742 (= res!104882 (= (apply!614 (_1!2067 lt!88336) 0) lt!87988))))

(declare-fun b!227743 () Bool)

(assert (=> b!227743 (= e!140689 (isEmpty!1960 (_2!2067 lt!88336)))))

(declare-fun b!227744 () Bool)

(assert (=> b!227744 (= e!140690 (isEmpty!1960 (_2!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 lt!87988))))))))

(assert (= (and d!62955 res!104883) b!227742))

(assert (= (and b!227742 res!104882) b!227743))

(assert (= (and d!62955 res!104881) b!227744))

(assert (=> d!62955 m!267157))

(declare-fun m!268185 () Bool)

(assert (=> d!62955 m!268185))

(assert (=> d!62955 m!267157))

(declare-fun m!268187 () Bool)

(assert (=> d!62955 m!268187))

(assert (=> d!62955 m!267081))

(declare-fun m!268189 () Bool)

(assert (=> d!62955 m!268189))

(declare-fun m!268191 () Bool)

(assert (=> d!62955 m!268191))

(declare-fun m!268193 () Bool)

(assert (=> d!62955 m!268193))

(assert (=> d!62955 m!267157))

(assert (=> d!62955 m!268189))

(declare-fun m!268195 () Bool)

(assert (=> b!227742 m!268195))

(declare-fun m!268197 () Bool)

(assert (=> b!227743 m!268197))

(assert (=> b!227744 m!267157))

(assert (=> b!227744 m!267157))

(assert (=> b!227744 m!268189))

(assert (=> b!227744 m!268189))

(assert (=> b!227744 m!268191))

(declare-fun m!268199 () Bool)

(assert (=> b!227744 m!268199))

(assert (=> b!227089 d!62955))

(declare-fun b!227757 () Bool)

(declare-fun e!140698 () Bool)

(declare-fun lt!88340 () List!3450)

(assert (=> b!227757 (= e!140698 (forall!773 lt!88340 lambda!7137))))

(declare-fun bm!11633 () Bool)

(declare-fun call!11638 () List!3450)

(assert (=> bm!11633 (= call!11638 (filter!37 (t!33316 lt!88003) lambda!7137))))

(declare-fun b!227759 () Bool)

(declare-fun e!140697 () List!3450)

(assert (=> b!227759 (= e!140697 Nil!3440)))

(declare-fun b!227760 () Bool)

(declare-fun e!140699 () List!3450)

(assert (=> b!227760 (= e!140699 call!11638)))

(declare-fun b!227761 () Bool)

(declare-fun res!104889 () Bool)

(assert (=> b!227761 (=> (not res!104889) (not e!140698))))

(declare-fun content!478 (List!3450) (InoxSet Token!1030))

(assert (=> b!227761 (= res!104889 (= ((_ map implies) (content!478 lt!88340) (content!478 lt!88003)) ((as const (InoxSet Token!1030)) true)))))

(declare-fun b!227762 () Bool)

(assert (=> b!227762 (= e!140697 e!140699)))

(declare-fun c!43691 () Bool)

(assert (=> b!227762 (= c!43691 (dynLambda!1600 lambda!7137 (h!8837 lt!88003)))))

(declare-fun d!62957 () Bool)

(assert (=> d!62957 e!140698))

(declare-fun res!104888 () Bool)

(assert (=> d!62957 (=> (not res!104888) (not e!140698))))

(assert (=> d!62957 (= res!104888 (<= (size!2761 lt!88340) (size!2761 lt!88003)))))

(assert (=> d!62957 (= lt!88340 e!140697)))

(declare-fun c!43692 () Bool)

(assert (=> d!62957 (= c!43692 ((_ is Nil!3440) lt!88003))))

(assert (=> d!62957 (= (filter!37 lt!88003 lambda!7137) lt!88340)))

(declare-fun b!227758 () Bool)

(assert (=> b!227758 (= e!140699 (Cons!3440 (h!8837 lt!88003) call!11638))))

(assert (= (and d!62957 c!43692) b!227759))

(assert (= (and d!62957 (not c!43692)) b!227762))

(assert (= (and b!227762 c!43691) b!227758))

(assert (= (and b!227762 (not c!43691)) b!227760))

(assert (= (or b!227758 b!227760) bm!11633))

(assert (= (and d!62957 res!104888) b!227761))

(assert (= (and b!227761 res!104889) b!227757))

(declare-fun b_lambda!6291 () Bool)

(assert (=> (not b_lambda!6291) (not b!227762)))

(declare-fun m!268201 () Bool)

(assert (=> b!227761 m!268201))

(declare-fun m!268203 () Bool)

(assert (=> b!227761 m!268203))

(declare-fun m!268205 () Bool)

(assert (=> b!227757 m!268205))

(declare-fun m!268207 () Bool)

(assert (=> b!227762 m!268207))

(declare-fun m!268209 () Bool)

(assert (=> d!62957 m!268209))

(declare-fun m!268211 () Bool)

(assert (=> d!62957 m!268211))

(declare-fun m!268213 () Bool)

(assert (=> bm!11633 m!268213))

(assert (=> b!227089 d!62957))

(declare-fun d!62959 () Bool)

(declare-fun e!140700 () Bool)

(assert (=> d!62959 e!140700))

(declare-fun res!104890 () Bool)

(assert (=> d!62959 (=> (not res!104890) (not e!140700))))

(assert (=> d!62959 (= res!104890 (isDefined!474 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 separatorToken!170)))))))

(declare-fun lt!88341 () Unit!3906)

(assert (=> d!62959 (= lt!88341 (choose!2196 thiss!17480 rules!1920 lt!87975 separatorToken!170))))

(assert (=> d!62959 (rulesInvariant!495 thiss!17480 rules!1920)))

(assert (=> d!62959 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!84 thiss!17480 rules!1920 lt!87975 separatorToken!170) lt!88341)))

(declare-fun b!227763 () Bool)

(declare-fun res!104891 () Bool)

(assert (=> b!227763 (=> (not res!104891) (not e!140700))))

(assert (=> b!227763 (= res!104891 (matchR!205 (regex!643 (get!1083 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 separatorToken!170))))) (list!1320 (charsOf!298 separatorToken!170))))))

(declare-fun b!227764 () Bool)

(assert (=> b!227764 (= e!140700 (= (rule!1198 separatorToken!170) (get!1083 (getRuleFromTag!84 thiss!17480 rules!1920 (tag!841 (rule!1198 separatorToken!170))))))))

(assert (= (and d!62959 res!104890) b!227763))

(assert (= (and b!227763 res!104891) b!227764))

(assert (=> d!62959 m!267213))

(assert (=> d!62959 m!267213))

(declare-fun m!268215 () Bool)

(assert (=> d!62959 m!268215))

(declare-fun m!268217 () Bool)

(assert (=> d!62959 m!268217))

(assert (=> d!62959 m!267091))

(assert (=> b!227763 m!267213))

(declare-fun m!268219 () Bool)

(assert (=> b!227763 m!268219))

(assert (=> b!227763 m!267061))

(assert (=> b!227763 m!267213))

(assert (=> b!227763 m!267063))

(declare-fun m!268221 () Bool)

(assert (=> b!227763 m!268221))

(assert (=> b!227763 m!267061))

(assert (=> b!227763 m!267063))

(assert (=> b!227764 m!267213))

(assert (=> b!227764 m!267213))

(assert (=> b!227764 m!268219))

(assert (=> b!227089 d!62959))

(declare-fun d!62961 () Bool)

(declare-fun lt!88343 () BalanceConc!2224)

(assert (=> d!62961 (= (list!1320 lt!88343) (printListTailRec!97 thiss!17480 (dropList!130 lt!87997 0) (list!1320 (BalanceConc!2225 Empty!1108))))))

(declare-fun e!140702 () BalanceConc!2224)

(assert (=> d!62961 (= lt!88343 e!140702)))

(declare-fun c!43693 () Bool)

(assert (=> d!62961 (= c!43693 (>= 0 (size!2755 lt!87997)))))

(declare-fun e!140701 () Bool)

(assert (=> d!62961 e!140701))

(declare-fun res!104892 () Bool)

(assert (=> d!62961 (=> (not res!104892) (not e!140701))))

(assert (=> d!62961 (= res!104892 (>= 0 0))))

(assert (=> d!62961 (= (printTailRec!223 thiss!17480 lt!87997 0 (BalanceConc!2225 Empty!1108)) lt!88343)))

(declare-fun b!227765 () Bool)

(assert (=> b!227765 (= e!140701 (<= 0 (size!2755 lt!87997)))))

(declare-fun b!227766 () Bool)

(assert (=> b!227766 (= e!140702 (BalanceConc!2225 Empty!1108))))

(declare-fun b!227767 () Bool)

(assert (=> b!227767 (= e!140702 (printTailRec!223 thiss!17480 lt!87997 (+ 0 1) (++!864 (BalanceConc!2225 Empty!1108) (charsOf!298 (apply!614 lt!87997 0)))))))

(declare-fun lt!88344 () List!3450)

(assert (=> b!227767 (= lt!88344 (list!1321 lt!87997))))

(declare-fun lt!88348 () Unit!3906)

(assert (=> b!227767 (= lt!88348 (lemmaDropApply!170 lt!88344 0))))

(assert (=> b!227767 (= (head!781 (drop!183 lt!88344 0)) (apply!619 lt!88344 0))))

(declare-fun lt!88345 () Unit!3906)

(assert (=> b!227767 (= lt!88345 lt!88348)))

(declare-fun lt!88347 () List!3450)

(assert (=> b!227767 (= lt!88347 (list!1321 lt!87997))))

(declare-fun lt!88342 () Unit!3906)

(assert (=> b!227767 (= lt!88342 (lemmaDropTail!162 lt!88347 0))))

(assert (=> b!227767 (= (tail!426 (drop!183 lt!88347 0)) (drop!183 lt!88347 (+ 0 1)))))

(declare-fun lt!88346 () Unit!3906)

(assert (=> b!227767 (= lt!88346 lt!88342)))

(assert (= (and d!62961 res!104892) b!227765))

(assert (= (and d!62961 c!43693) b!227766))

(assert (= (and d!62961 (not c!43693)) b!227767))

(declare-fun m!268223 () Bool)

(assert (=> d!62961 m!268223))

(declare-fun m!268225 () Bool)

(assert (=> d!62961 m!268225))

(assert (=> d!62961 m!268225))

(assert (=> d!62961 m!267811))

(declare-fun m!268227 () Bool)

(assert (=> d!62961 m!268227))

(assert (=> d!62961 m!267811))

(declare-fun m!268229 () Bool)

(assert (=> d!62961 m!268229))

(assert (=> b!227765 m!268223))

(declare-fun m!268231 () Bool)

(assert (=> b!227767 m!268231))

(declare-fun m!268233 () Bool)

(assert (=> b!227767 m!268233))

(declare-fun m!268235 () Bool)

(assert (=> b!227767 m!268235))

(assert (=> b!227767 m!267763))

(declare-fun m!268237 () Bool)

(assert (=> b!227767 m!268237))

(declare-fun m!268239 () Bool)

(assert (=> b!227767 m!268239))

(declare-fun m!268241 () Bool)

(assert (=> b!227767 m!268241))

(assert (=> b!227767 m!268235))

(declare-fun m!268243 () Bool)

(assert (=> b!227767 m!268243))

(declare-fun m!268245 () Bool)

(assert (=> b!227767 m!268245))

(declare-fun m!268247 () Bool)

(assert (=> b!227767 m!268247))

(assert (=> b!227767 m!268245))

(declare-fun m!268249 () Bool)

(assert (=> b!227767 m!268249))

(declare-fun m!268251 () Bool)

(assert (=> b!227767 m!268251))

(assert (=> b!227767 m!268243))

(assert (=> b!227767 m!268237))

(assert (=> b!227767 m!268231))

(declare-fun m!268253 () Bool)

(assert (=> b!227767 m!268253))

(assert (=> b!227089 d!62961))

(declare-fun d!62963 () Bool)

(declare-fun lt!88351 () Token!1030)

(assert (=> d!62963 (= lt!88351 (apply!619 (list!1321 (_1!2067 lt!87989)) 0))))

(declare-fun apply!620 (Conc!1109 Int) Token!1030)

(assert (=> d!62963 (= lt!88351 (apply!620 (c!43555 (_1!2067 lt!87989)) 0))))

(declare-fun e!140705 () Bool)

(assert (=> d!62963 e!140705))

(declare-fun res!104895 () Bool)

(assert (=> d!62963 (=> (not res!104895) (not e!140705))))

(assert (=> d!62963 (= res!104895 (<= 0 0))))

(assert (=> d!62963 (= (apply!614 (_1!2067 lt!87989) 0) lt!88351)))

(declare-fun b!227770 () Bool)

(assert (=> b!227770 (= e!140705 (< 0 (size!2755 (_1!2067 lt!87989))))))

(assert (= (and d!62963 res!104895) b!227770))

(assert (=> d!62963 m!268075))

(assert (=> d!62963 m!268075))

(declare-fun m!268255 () Bool)

(assert (=> d!62963 m!268255))

(declare-fun m!268257 () Bool)

(assert (=> d!62963 m!268257))

(assert (=> b!227770 m!267153))

(assert (=> b!227090 d!62963))

(declare-fun d!62965 () Bool)

(declare-fun res!104896 () Bool)

(declare-fun e!140706 () Bool)

(assert (=> d!62965 (=> (not res!104896) (not e!140706))))

(assert (=> d!62965 (= res!104896 (not (isEmpty!1961 (originalCharacters!686 (h!8837 tokens!465)))))))

(assert (=> d!62965 (= (inv!4292 (h!8837 tokens!465)) e!140706)))

(declare-fun b!227771 () Bool)

(declare-fun res!104897 () Bool)

(assert (=> b!227771 (=> (not res!104897) (not e!140706))))

(assert (=> b!227771 (= res!104897 (= (originalCharacters!686 (h!8837 tokens!465)) (list!1320 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (value!22641 (h!8837 tokens!465))))))))

(declare-fun b!227772 () Bool)

(assert (=> b!227772 (= e!140706 (= (size!2754 (h!8837 tokens!465)) (size!2758 (originalCharacters!686 (h!8837 tokens!465)))))))

(assert (= (and d!62965 res!104896) b!227771))

(assert (= (and b!227771 res!104897) b!227772))

(declare-fun b_lambda!6293 () Bool)

(assert (=> (not b_lambda!6293) (not b!227771)))

(declare-fun t!33356 () Bool)

(declare-fun tb!11373 () Bool)

(assert (=> (and b!227063 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465))))) t!33356) tb!11373))

(declare-fun b!227773 () Bool)

(declare-fun e!140707 () Bool)

(declare-fun tp!93464 () Bool)

(assert (=> b!227773 (= e!140707 (and (inv!4295 (c!43553 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (value!22641 (h!8837 tokens!465))))) tp!93464))))

(declare-fun result!14544 () Bool)

(assert (=> tb!11373 (= result!14544 (and (inv!4296 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (value!22641 (h!8837 tokens!465)))) e!140707))))

(assert (= tb!11373 b!227773))

(declare-fun m!268259 () Bool)

(assert (=> b!227773 m!268259))

(declare-fun m!268261 () Bool)

(assert (=> tb!11373 m!268261))

(assert (=> b!227771 t!33356))

(declare-fun b_and!16885 () Bool)

(assert (= b_and!16879 (and (=> t!33356 result!14544) b_and!16885)))

(declare-fun tb!11375 () Bool)

(declare-fun t!33358 () Bool)

(assert (=> (and b!227093 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465))))) t!33358) tb!11375))

(declare-fun result!14546 () Bool)

(assert (= result!14546 result!14544))

(assert (=> b!227771 t!33358))

(declare-fun b_and!16887 () Bool)

(assert (= b_and!16881 (and (=> t!33358 result!14546) b_and!16887)))

(declare-fun t!33360 () Bool)

(declare-fun tb!11377 () Bool)

(assert (=> (and b!227064 (= (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465))))) t!33360) tb!11377))

(declare-fun result!14548 () Bool)

(assert (= result!14548 result!14544))

(assert (=> b!227771 t!33360))

(declare-fun b_and!16889 () Bool)

(assert (= b_and!16883 (and (=> t!33360 result!14548) b_and!16889)))

(declare-fun m!268263 () Bool)

(assert (=> d!62965 m!268263))

(declare-fun m!268265 () Bool)

(assert (=> b!227771 m!268265))

(assert (=> b!227771 m!268265))

(declare-fun m!268267 () Bool)

(assert (=> b!227771 m!268267))

(declare-fun m!268269 () Bool)

(assert (=> b!227772 m!268269))

(assert (=> b!227069 d!62965))

(declare-fun bs!24204 () Bool)

(declare-fun d!62967 () Bool)

(assert (= bs!24204 (and d!62967 b!227072)))

(declare-fun lambda!7161 () Int)

(assert (=> bs!24204 (not (= lambda!7161 lambda!7137))))

(declare-fun bs!24205 () Bool)

(assert (= bs!24205 (and d!62967 b!227054)))

(assert (=> bs!24205 (= lambda!7161 lambda!7138)))

(declare-fun bs!24206 () Bool)

(assert (= bs!24206 (and d!62967 d!62737)))

(assert (=> bs!24206 (= lambda!7161 lambda!7141)))

(declare-fun bs!24207 () Bool)

(assert (= bs!24207 (and d!62967 d!62843)))

(assert (=> bs!24207 (not (= lambda!7161 lambda!7153))))

(declare-fun b!227829 () Bool)

(declare-fun e!140744 () Bool)

(assert (=> b!227829 (= e!140744 true)))

(declare-fun b!227828 () Bool)

(declare-fun e!140743 () Bool)

(assert (=> b!227828 (= e!140743 e!140744)))

(declare-fun b!227827 () Bool)

(declare-fun e!140742 () Bool)

(assert (=> b!227827 (= e!140742 e!140743)))

(assert (=> d!62967 e!140742))

(assert (= b!227828 b!227829))

(assert (= b!227827 b!227828))

(assert (= (and d!62967 ((_ is Cons!3439) rules!1920)) b!227827))

(assert (=> b!227829 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7161))))

(assert (=> b!227829 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7161))))

(assert (=> d!62967 true))

(declare-fun e!140741 () Bool)

(assert (=> d!62967 e!140741))

(declare-fun res!104921 () Bool)

(assert (=> d!62967 (=> (not res!104921) (not e!140741))))

(declare-fun lt!88374 () Bool)

(assert (=> d!62967 (= res!104921 (= lt!88374 (forall!773 (list!1321 lt!87985) lambda!7161)))))

(declare-fun forall!774 (BalanceConc!2226 Int) Bool)

(assert (=> d!62967 (= lt!88374 (forall!774 lt!87985 lambda!7161))))

(assert (=> d!62967 (not (isEmpty!1959 rules!1920))))

(assert (=> d!62967 (= (rulesProduceEachTokenIndividually!321 thiss!17480 rules!1920 lt!87985) lt!88374)))

(declare-fun b!227826 () Bool)

(assert (=> b!227826 (= e!140741 (= lt!88374 (rulesProduceEachTokenIndividuallyList!179 thiss!17480 rules!1920 (list!1321 lt!87985))))))

(assert (= (and d!62967 res!104921) b!227826))

(declare-fun m!268383 () Bool)

(assert (=> d!62967 m!268383))

(assert (=> d!62967 m!268383))

(declare-fun m!268385 () Bool)

(assert (=> d!62967 m!268385))

(declare-fun m!268387 () Bool)

(assert (=> d!62967 m!268387))

(assert (=> d!62967 m!267081))

(assert (=> b!227826 m!268383))

(assert (=> b!227826 m!268383))

(declare-fun m!268389 () Bool)

(assert (=> b!227826 m!268389))

(assert (=> b!227091 d!62967))

(declare-fun d!62995 () Bool)

(declare-fun fromListB!247 (List!3450) BalanceConc!2226)

(assert (=> d!62995 (= (seqFromList!663 tokens!465) (fromListB!247 tokens!465))))

(declare-fun bs!24208 () Bool)

(assert (= bs!24208 d!62995))

(declare-fun m!268391 () Bool)

(assert (=> bs!24208 m!268391))

(assert (=> b!227091 d!62995))

(declare-fun d!62997 () Bool)

(declare-fun e!140745 () Bool)

(assert (=> d!62997 e!140745))

(declare-fun res!104923 () Bool)

(assert (=> d!62997 (=> (not res!104923) (not e!140745))))

(declare-fun lt!88375 () List!3448)

(assert (=> d!62997 (= res!104923 (= (content!476 lt!88375) ((_ map or) (content!476 lt!87975) (content!476 lt!88002))))))

(declare-fun e!140746 () List!3448)

(assert (=> d!62997 (= lt!88375 e!140746)))

(declare-fun c!43708 () Bool)

(assert (=> d!62997 (= c!43708 ((_ is Nil!3438) lt!87975))))

(assert (=> d!62997 (= (++!862 lt!87975 lt!88002) lt!88375)))

(declare-fun b!227830 () Bool)

(assert (=> b!227830 (= e!140746 lt!88002)))

(declare-fun b!227831 () Bool)

(assert (=> b!227831 (= e!140746 (Cons!3438 (h!8835 lt!87975) (++!862 (t!33314 lt!87975) lt!88002)))))

(declare-fun b!227833 () Bool)

(assert (=> b!227833 (= e!140745 (or (not (= lt!88002 Nil!3438)) (= lt!88375 lt!87975)))))

(declare-fun b!227832 () Bool)

(declare-fun res!104922 () Bool)

(assert (=> b!227832 (=> (not res!104922) (not e!140745))))

(assert (=> b!227832 (= res!104922 (= (size!2758 lt!88375) (+ (size!2758 lt!87975) (size!2758 lt!88002))))))

(assert (= (and d!62997 c!43708) b!227830))

(assert (= (and d!62997 (not c!43708)) b!227831))

(assert (= (and d!62997 res!104923) b!227832))

(assert (= (and b!227832 res!104922) b!227833))

(declare-fun m!268393 () Bool)

(assert (=> d!62997 m!268393))

(declare-fun m!268395 () Bool)

(assert (=> d!62997 m!268395))

(assert (=> d!62997 m!267615))

(declare-fun m!268397 () Bool)

(assert (=> b!227831 m!268397))

(declare-fun m!268399 () Bool)

(assert (=> b!227832 m!268399))

(declare-fun m!268401 () Bool)

(assert (=> b!227832 m!268401))

(assert (=> b!227832 m!267623))

(assert (=> b!227049 d!62997))

(declare-fun d!62999 () Bool)

(assert (=> d!62999 (= (seqFromList!663 (t!33316 tokens!465)) (fromListB!247 (t!33316 tokens!465)))))

(declare-fun bs!24209 () Bool)

(assert (= bs!24209 d!62999))

(declare-fun m!268403 () Bool)

(assert (=> bs!24209 m!268403))

(assert (=> b!227049 d!62999))

(declare-fun d!63001 () Bool)

(assert (=> d!63001 (= (list!1320 (charsOf!298 separatorToken!170)) (list!1324 (c!43553 (charsOf!298 separatorToken!170))))))

(declare-fun bs!24210 () Bool)

(assert (= bs!24210 d!63001))

(declare-fun m!268405 () Bool)

(assert (=> bs!24210 m!268405))

(assert (=> b!227049 d!63001))

(declare-fun d!63003 () Bool)

(declare-fun e!140747 () Bool)

(assert (=> d!63003 e!140747))

(declare-fun res!104925 () Bool)

(assert (=> d!63003 (=> (not res!104925) (not e!140747))))

(declare-fun lt!88376 () List!3448)

(assert (=> d!63003 (= res!104925 (= (content!476 lt!88376) ((_ map or) (content!476 (++!862 lt!88004 lt!87975)) (content!476 lt!88002))))))

(declare-fun e!140748 () List!3448)

(assert (=> d!63003 (= lt!88376 e!140748)))

(declare-fun c!43709 () Bool)

(assert (=> d!63003 (= c!43709 ((_ is Nil!3438) (++!862 lt!88004 lt!87975)))))

(assert (=> d!63003 (= (++!862 (++!862 lt!88004 lt!87975) lt!88002) lt!88376)))

(declare-fun b!227834 () Bool)

(assert (=> b!227834 (= e!140748 lt!88002)))

(declare-fun b!227835 () Bool)

(assert (=> b!227835 (= e!140748 (Cons!3438 (h!8835 (++!862 lt!88004 lt!87975)) (++!862 (t!33314 (++!862 lt!88004 lt!87975)) lt!88002)))))

(declare-fun b!227837 () Bool)

(assert (=> b!227837 (= e!140747 (or (not (= lt!88002 Nil!3438)) (= lt!88376 (++!862 lt!88004 lt!87975))))))

(declare-fun b!227836 () Bool)

(declare-fun res!104924 () Bool)

(assert (=> b!227836 (=> (not res!104924) (not e!140747))))

(assert (=> b!227836 (= res!104924 (= (size!2758 lt!88376) (+ (size!2758 (++!862 lt!88004 lt!87975)) (size!2758 lt!88002))))))

(assert (= (and d!63003 c!43709) b!227834))

(assert (= (and d!63003 (not c!43709)) b!227835))

(assert (= (and d!63003 res!104925) b!227836))

(assert (= (and b!227836 res!104924) b!227837))

(declare-fun m!268407 () Bool)

(assert (=> d!63003 m!268407))

(assert (=> d!63003 m!267059))

(declare-fun m!268409 () Bool)

(assert (=> d!63003 m!268409))

(assert (=> d!63003 m!267615))

(declare-fun m!268411 () Bool)

(assert (=> b!227835 m!268411))

(declare-fun m!268413 () Bool)

(assert (=> b!227836 m!268413))

(assert (=> b!227836 m!267059))

(declare-fun m!268415 () Bool)

(assert (=> b!227836 m!268415))

(assert (=> b!227836 m!267623))

(assert (=> b!227049 d!63003))

(declare-fun bs!24220 () Bool)

(declare-fun b!227876 () Bool)

(assert (= bs!24220 (and b!227876 d!62737)))

(declare-fun lambda!7169 () Int)

(assert (=> bs!24220 (= lambda!7169 lambda!7141)))

(declare-fun bs!24221 () Bool)

(assert (= bs!24221 (and b!227876 b!227054)))

(assert (=> bs!24221 (= lambda!7169 lambda!7138)))

(declare-fun bs!24222 () Bool)

(assert (= bs!24222 (and b!227876 b!227072)))

(assert (=> bs!24222 (not (= lambda!7169 lambda!7137))))

(declare-fun bs!24223 () Bool)

(assert (= bs!24223 (and b!227876 d!62967)))

(assert (=> bs!24223 (= lambda!7169 lambda!7161)))

(declare-fun bs!24224 () Bool)

(assert (= bs!24224 (and b!227876 d!62843)))

(assert (=> bs!24224 (not (= lambda!7169 lambda!7153))))

(declare-fun b!227879 () Bool)

(declare-fun e!140776 () Bool)

(assert (=> b!227879 (= e!140776 true)))

(declare-fun b!227878 () Bool)

(declare-fun e!140775 () Bool)

(assert (=> b!227878 (= e!140775 e!140776)))

(declare-fun b!227877 () Bool)

(declare-fun e!140774 () Bool)

(assert (=> b!227877 (= e!140774 e!140775)))

(assert (=> b!227876 e!140774))

(assert (= b!227878 b!227879))

(assert (= b!227877 b!227878))

(assert (= (and b!227876 ((_ is Cons!3439) rules!1920)) b!227877))

(assert (=> b!227879 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7169))))

(assert (=> b!227879 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7169))))

(assert (=> b!227876 true))

(declare-fun b!227869 () Bool)

(declare-fun e!140773 () List!3448)

(assert (=> b!227869 (= e!140773 Nil!3438)))

(assert (=> b!227869 (= (print!260 thiss!17480 (singletonSeq!195 (h!8837 (t!33316 tokens!465)))) (printTailRec!223 thiss!17480 (singletonSeq!195 (h!8837 (t!33316 tokens!465))) 0 (BalanceConc!2225 Empty!1108)))))

(declare-fun lt!88403 () Unit!3906)

(declare-fun Unit!3918 () Unit!3906)

(assert (=> b!227869 (= lt!88403 Unit!3918)))

(declare-fun lt!88399 () Unit!3906)

(declare-fun call!11657 () List!3448)

(declare-fun lt!88398 () List!3448)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!78 (LexerInterface!529 List!3449 List!3448 List!3448) Unit!3906)

(assert (=> b!227869 (= lt!88399 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!78 thiss!17480 rules!1920 call!11657 lt!88398))))

(assert (=> b!227869 false))

(declare-fun lt!88402 () Unit!3906)

(declare-fun Unit!3919 () Unit!3906)

(assert (=> b!227869 (= lt!88402 Unit!3919)))

(declare-fun bm!11651 () Bool)

(declare-fun call!11656 () BalanceConc!2224)

(assert (=> bm!11651 (= call!11656 (charsOf!298 (h!8837 (t!33316 tokens!465))))))

(declare-fun call!11659 () List!3448)

(declare-fun bm!11652 () Bool)

(declare-fun call!11658 () List!3448)

(declare-fun c!43719 () Bool)

(assert (=> bm!11652 (= call!11659 (++!862 call!11658 (ite c!43719 lt!88398 call!11657)))))

(declare-fun bm!11653 () Bool)

(declare-fun e!140770 () BalanceConc!2224)

(assert (=> bm!11653 (= call!11657 (list!1320 e!140770))))

(declare-fun c!43722 () Bool)

(declare-fun c!43721 () Bool)

(assert (=> bm!11653 (= c!43722 c!43721)))

(declare-fun b!227870 () Bool)

(declare-fun e!140771 () List!3448)

(assert (=> b!227870 (= e!140771 Nil!3438)))

(declare-fun b!227871 () Bool)

(declare-fun call!11660 () BalanceConc!2224)

(assert (=> b!227871 (= e!140770 call!11660)))

(declare-fun bm!11654 () Bool)

(assert (=> bm!11654 (= call!11660 call!11656)))

(declare-fun b!227873 () Bool)

(declare-fun lt!88400 () Option!621)

(assert (=> b!227873 (= c!43721 (and ((_ is Some!620) lt!88400) (not (= (_1!2064 (v!14303 lt!88400)) (h!8837 (t!33316 tokens!465))))))))

(declare-fun e!140772 () List!3448)

(assert (=> b!227873 (= e!140772 e!140773)))

(declare-fun b!227874 () Bool)

(assert (=> b!227874 (= e!140773 (++!862 call!11659 lt!88398))))

(declare-fun bm!11655 () Bool)

(assert (=> bm!11655 (= call!11658 (list!1320 (ite c!43719 call!11656 call!11660)))))

(declare-fun b!227875 () Bool)

(assert (=> b!227875 (= e!140772 call!11659)))

(assert (=> b!227876 (= e!140771 e!140772)))

(declare-fun lt!88401 () Unit!3906)

(assert (=> b!227876 (= lt!88401 (forallContained!210 (t!33316 tokens!465) lambda!7169 (h!8837 (t!33316 tokens!465))))))

(assert (=> b!227876 (= lt!88398 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (t!33316 (t!33316 tokens!465)) separatorToken!170))))

(assert (=> b!227876 (= lt!88400 (maxPrefix!259 thiss!17480 rules!1920 (++!862 (list!1320 (charsOf!298 (h!8837 (t!33316 tokens!465)))) lt!88398)))))

(assert (=> b!227876 (= c!43719 (and ((_ is Some!620) lt!88400) (= (_1!2064 (v!14303 lt!88400)) (h!8837 (t!33316 tokens!465)))))))

(declare-fun b!227872 () Bool)

(assert (=> b!227872 (= e!140770 (charsOf!298 separatorToken!170))))

(declare-fun d!63005 () Bool)

(declare-fun c!43720 () Bool)

(assert (=> d!63005 (= c!43720 ((_ is Cons!3440) (t!33316 tokens!465)))))

(assert (=> d!63005 (= (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170) e!140771)))

(assert (= (and d!63005 c!43720) b!227876))

(assert (= (and d!63005 (not c!43720)) b!227870))

(assert (= (and b!227876 c!43719) b!227875))

(assert (= (and b!227876 (not c!43719)) b!227873))

(assert (= (and b!227873 c!43721) b!227874))

(assert (= (and b!227873 (not c!43721)) b!227869))

(assert (= (or b!227874 b!227869) bm!11654))

(assert (= (or b!227874 b!227869) bm!11653))

(assert (= (and bm!11653 c!43722) b!227872))

(assert (= (and bm!11653 (not c!43722)) b!227871))

(assert (= (or b!227875 bm!11654) bm!11651))

(assert (= (or b!227875 b!227874) bm!11655))

(assert (= (or b!227875 b!227874) bm!11652))

(declare-fun m!268451 () Bool)

(assert (=> bm!11651 m!268451))

(declare-fun m!268453 () Bool)

(assert (=> bm!11653 m!268453))

(declare-fun m!268455 () Bool)

(assert (=> bm!11655 m!268455))

(declare-fun m!268457 () Bool)

(assert (=> b!227869 m!268457))

(assert (=> b!227869 m!268457))

(declare-fun m!268459 () Bool)

(assert (=> b!227869 m!268459))

(assert (=> b!227869 m!268457))

(declare-fun m!268461 () Bool)

(assert (=> b!227869 m!268461))

(declare-fun m!268463 () Bool)

(assert (=> b!227869 m!268463))

(declare-fun m!268465 () Bool)

(assert (=> b!227874 m!268465))

(assert (=> b!227872 m!267061))

(declare-fun m!268467 () Bool)

(assert (=> b!227876 m!268467))

(declare-fun m!268469 () Bool)

(assert (=> b!227876 m!268469))

(declare-fun m!268471 () Bool)

(assert (=> b!227876 m!268471))

(declare-fun m!268473 () Bool)

(assert (=> b!227876 m!268473))

(assert (=> b!227876 m!268451))

(assert (=> b!227876 m!268471))

(assert (=> b!227876 m!268451))

(assert (=> b!227876 m!268473))

(declare-fun m!268475 () Bool)

(assert (=> b!227876 m!268475))

(declare-fun m!268477 () Bool)

(assert (=> bm!11652 m!268477))

(assert (=> b!227049 d!63005))

(declare-fun d!63017 () Bool)

(declare-fun e!140777 () Bool)

(assert (=> d!63017 e!140777))

(declare-fun res!104937 () Bool)

(assert (=> d!63017 (=> (not res!104937) (not e!140777))))

(declare-fun lt!88404 () List!3448)

(assert (=> d!63017 (= res!104937 (= (content!476 lt!88404) ((_ map or) (content!476 lt!88004) (content!476 lt!87975))))))

(declare-fun e!140778 () List!3448)

(assert (=> d!63017 (= lt!88404 e!140778)))

(declare-fun c!43723 () Bool)

(assert (=> d!63017 (= c!43723 ((_ is Nil!3438) lt!88004))))

(assert (=> d!63017 (= (++!862 lt!88004 lt!87975) lt!88404)))

(declare-fun b!227880 () Bool)

(assert (=> b!227880 (= e!140778 lt!87975)))

(declare-fun b!227881 () Bool)

(assert (=> b!227881 (= e!140778 (Cons!3438 (h!8835 lt!88004) (++!862 (t!33314 lt!88004) lt!87975)))))

(declare-fun b!227883 () Bool)

(assert (=> b!227883 (= e!140777 (or (not (= lt!87975 Nil!3438)) (= lt!88404 lt!88004)))))

(declare-fun b!227882 () Bool)

(declare-fun res!104936 () Bool)

(assert (=> b!227882 (=> (not res!104936) (not e!140777))))

(assert (=> b!227882 (= res!104936 (= (size!2758 lt!88404) (+ (size!2758 lt!88004) (size!2758 lt!87975))))))

(assert (= (and d!63017 c!43723) b!227880))

(assert (= (and d!63017 (not c!43723)) b!227881))

(assert (= (and d!63017 res!104937) b!227882))

(assert (= (and b!227882 res!104936) b!227883))

(declare-fun m!268479 () Bool)

(assert (=> d!63017 m!268479))

(assert (=> d!63017 m!267613))

(assert (=> d!63017 m!268395))

(declare-fun m!268481 () Bool)

(assert (=> b!227881 m!268481))

(declare-fun m!268483 () Bool)

(assert (=> b!227882 m!268483))

(assert (=> b!227882 m!267621))

(assert (=> b!227882 m!268401))

(assert (=> b!227049 d!63017))

(declare-fun bs!24271 () Bool)

(declare-fun d!63019 () Bool)

(assert (= bs!24271 (and d!63019 d!62737)))

(declare-fun lambda!7180 () Int)

(assert (=> bs!24271 (not (= lambda!7180 lambda!7141))))

(declare-fun bs!24272 () Bool)

(assert (= bs!24272 (and d!63019 b!227054)))

(assert (=> bs!24272 (not (= lambda!7180 lambda!7138))))

(declare-fun bs!24273 () Bool)

(assert (= bs!24273 (and d!63019 b!227072)))

(assert (=> bs!24273 (= lambda!7180 lambda!7137)))

(declare-fun bs!24274 () Bool)

(assert (= bs!24274 (and d!63019 d!62843)))

(assert (=> bs!24274 (= lambda!7180 lambda!7153)))

(declare-fun bs!24275 () Bool)

(assert (= bs!24275 (and d!63019 d!62967)))

(assert (=> bs!24275 (not (= lambda!7180 lambda!7161))))

(declare-fun bs!24276 () Bool)

(assert (= bs!24276 (and d!63019 b!227876)))

(assert (=> bs!24276 (not (= lambda!7180 lambda!7169))))

(declare-fun bs!24277 () Bool)

(declare-fun b!228030 () Bool)

(assert (= bs!24277 (and b!228030 d!62737)))

(declare-fun lambda!7181 () Int)

(assert (=> bs!24277 (= lambda!7181 lambda!7141)))

(declare-fun bs!24278 () Bool)

(assert (= bs!24278 (and b!228030 b!227054)))

(assert (=> bs!24278 (= lambda!7181 lambda!7138)))

(declare-fun bs!24279 () Bool)

(assert (= bs!24279 (and b!228030 d!63019)))

(assert (=> bs!24279 (not (= lambda!7181 lambda!7180))))

(declare-fun bs!24280 () Bool)

(assert (= bs!24280 (and b!228030 b!227072)))

(assert (=> bs!24280 (not (= lambda!7181 lambda!7137))))

(declare-fun bs!24281 () Bool)

(assert (= bs!24281 (and b!228030 d!62843)))

(assert (=> bs!24281 (not (= lambda!7181 lambda!7153))))

(declare-fun bs!24282 () Bool)

(assert (= bs!24282 (and b!228030 d!62967)))

(assert (=> bs!24282 (= lambda!7181 lambda!7161)))

(declare-fun bs!24283 () Bool)

(assert (= bs!24283 (and b!228030 b!227876)))

(assert (=> bs!24283 (= lambda!7181 lambda!7169)))

(declare-fun b!228056 () Bool)

(declare-fun e!140889 () Bool)

(assert (=> b!228056 (= e!140889 true)))

(declare-fun b!228055 () Bool)

(declare-fun e!140888 () Bool)

(assert (=> b!228055 (= e!140888 e!140889)))

(declare-fun b!228054 () Bool)

(declare-fun e!140887 () Bool)

(assert (=> b!228054 (= e!140887 e!140888)))

(assert (=> b!228030 e!140887))

(assert (= b!228055 b!228056))

(assert (= b!228054 b!228055))

(assert (= (and b!228030 ((_ is Cons!3439) rules!1920)) b!228054))

(assert (=> b!228056 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7181))))

(assert (=> b!228056 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7181))))

(assert (=> b!228030 true))

(declare-fun e!140879 () BalanceConc!2224)

(declare-fun e!140880 () BalanceConc!2224)

(assert (=> b!228030 (= e!140879 e!140880)))

(declare-fun lt!88520 () List!3450)

(assert (=> b!228030 (= lt!88520 (list!1321 (seqFromList!663 (t!33316 tokens!465))))))

(declare-fun lt!88518 () Unit!3906)

(assert (=> b!228030 (= lt!88518 (lemmaDropApply!170 lt!88520 0))))

(assert (=> b!228030 (= (head!781 (drop!183 lt!88520 0)) (apply!619 lt!88520 0))))

(declare-fun lt!88526 () Unit!3906)

(assert (=> b!228030 (= lt!88526 lt!88518)))

(declare-fun lt!88525 () List!3450)

(assert (=> b!228030 (= lt!88525 (list!1321 (seqFromList!663 (t!33316 tokens!465))))))

(declare-fun lt!88524 () Unit!3906)

(assert (=> b!228030 (= lt!88524 (lemmaDropTail!162 lt!88525 0))))

(assert (=> b!228030 (= (tail!426 (drop!183 lt!88525 0)) (drop!183 lt!88525 (+ 0 1)))))

(declare-fun lt!88521 () Unit!3906)

(assert (=> b!228030 (= lt!88521 lt!88524)))

(declare-fun lt!88527 () Unit!3906)

(assert (=> b!228030 (= lt!88527 (forallContained!210 (list!1321 (seqFromList!663 (t!33316 tokens!465))) lambda!7181 (apply!614 (seqFromList!663 (t!33316 tokens!465)) 0)))))

(declare-fun lt!88514 () BalanceConc!2224)

(assert (=> b!228030 (= lt!88514 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 (seqFromList!663 (t!33316 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!88523 () Option!623)

(assert (=> b!228030 (= lt!88523 (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (++!864 (charsOf!298 (apply!614 (seqFromList!663 (t!33316 tokens!465)) 0)) lt!88514)))))

(declare-fun res!105003 () Bool)

(assert (=> b!228030 (= res!105003 ((_ is Some!622) lt!88523))))

(declare-fun e!140881 () Bool)

(assert (=> b!228030 (=> (not res!105003) (not e!140881))))

(declare-fun c!43763 () Bool)

(assert (=> b!228030 (= c!43763 e!140881)))

(declare-fun b!228031 () Bool)

(declare-fun c!43764 () Bool)

(declare-fun e!140876 () Bool)

(assert (=> b!228031 (= c!43764 e!140876)))

(declare-fun res!105002 () Bool)

(assert (=> b!228031 (=> (not res!105002) (not e!140876))))

(assert (=> b!228031 (= res!105002 ((_ is Some!622) lt!88523))))

(declare-fun e!140877 () BalanceConc!2224)

(assert (=> b!228031 (= e!140880 e!140877)))

(declare-fun call!11687 () Token!1030)

(declare-fun bm!11680 () Bool)

(declare-fun call!11689 () BalanceConc!2224)

(declare-fun call!11686 () Token!1030)

(assert (=> bm!11680 (= call!11689 (charsOf!298 (ite c!43763 call!11686 (ite c!43764 separatorToken!170 call!11687))))))

(declare-fun bm!11681 () Bool)

(assert (=> bm!11681 (= call!11687 call!11686)))

(declare-fun bm!11682 () Bool)

(declare-fun call!11688 () BalanceConc!2224)

(assert (=> bm!11682 (= call!11688 call!11689)))

(declare-fun bm!11683 () Bool)

(assert (=> bm!11683 (= call!11686 (apply!614 (seqFromList!663 (t!33316 tokens!465)) 0))))

(declare-fun b!228033 () Bool)

(declare-fun e!140875 () Bool)

(assert (=> b!228033 (= e!140875 (<= 0 (size!2755 (seqFromList!663 (t!33316 tokens!465)))))))

(declare-fun b!228034 () Bool)

(assert (=> b!228034 (= e!140876 (not (= (_1!2065 (v!14305 lt!88523)) call!11686)))))

(declare-fun b!228035 () Bool)

(declare-fun e!140878 () BalanceConc!2224)

(assert (=> b!228035 (= e!140878 (charsOf!298 call!11687))))

(declare-fun b!228036 () Bool)

(assert (=> b!228036 (= e!140881 (= (_1!2065 (v!14305 lt!88523)) (apply!614 (seqFromList!663 (t!33316 tokens!465)) 0)))))

(declare-fun b!228037 () Bool)

(declare-fun call!11685 () BalanceConc!2224)

(assert (=> b!228037 (= e!140877 (++!864 call!11685 lt!88514))))

(declare-fun lt!88517 () BalanceConc!2224)

(assert (=> d!63019 (= (list!1320 lt!88517) (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (dropList!130 (seqFromList!663 (t!33316 tokens!465)) 0) separatorToken!170))))

(assert (=> d!63019 (= lt!88517 e!140879)))

(declare-fun c!43762 () Bool)

(assert (=> d!63019 (= c!43762 (>= 0 (size!2755 (seqFromList!663 (t!33316 tokens!465)))))))

(declare-fun lt!88515 () Unit!3906)

(declare-fun lemmaContentSubsetPreservesForall!74 (List!3450 List!3450 Int) Unit!3906)

(assert (=> d!63019 (= lt!88515 (lemmaContentSubsetPreservesForall!74 (list!1321 (seqFromList!663 (t!33316 tokens!465))) (dropList!130 (seqFromList!663 (t!33316 tokens!465)) 0) lambda!7180))))

(assert (=> d!63019 e!140875))

(declare-fun res!105001 () Bool)

(assert (=> d!63019 (=> (not res!105001) (not e!140875))))

(assert (=> d!63019 (= res!105001 (>= 0 0))))

(assert (=> d!63019 (= (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 (seqFromList!663 (t!33316 tokens!465)) separatorToken!170 0) lt!88517)))

(declare-fun b!228032 () Bool)

(assert (=> b!228032 (= e!140880 call!11685)))

(declare-fun b!228038 () Bool)

(assert (=> b!228038 (= e!140879 (BalanceConc!2225 Empty!1108))))

(declare-fun bm!11684 () Bool)

(declare-fun c!43765 () Bool)

(assert (=> bm!11684 (= c!43765 c!43763)))

(assert (=> bm!11684 (= call!11685 (++!864 e!140878 (ite c!43763 lt!88514 call!11688)))))

(declare-fun b!228039 () Bool)

(assert (=> b!228039 (= e!140877 (BalanceConc!2225 Empty!1108))))

(assert (=> b!228039 (= (print!260 thiss!17480 (singletonSeq!195 call!11687)) (printTailRec!223 thiss!17480 (singletonSeq!195 call!11687) 0 (BalanceConc!2225 Empty!1108)))))

(declare-fun lt!88519 () Unit!3906)

(declare-fun Unit!3920 () Unit!3906)

(assert (=> b!228039 (= lt!88519 Unit!3920)))

(declare-fun lt!88516 () Unit!3906)

(assert (=> b!228039 (= lt!88516 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!78 thiss!17480 rules!1920 (list!1320 call!11688) (list!1320 lt!88514)))))

(assert (=> b!228039 false))

(declare-fun lt!88522 () Unit!3906)

(declare-fun Unit!3921 () Unit!3906)

(assert (=> b!228039 (= lt!88522 Unit!3921)))

(declare-fun b!228040 () Bool)

(assert (=> b!228040 (= e!140878 call!11689)))

(assert (= (and d!63019 res!105001) b!228033))

(assert (= (and d!63019 c!43762) b!228038))

(assert (= (and d!63019 (not c!43762)) b!228030))

(assert (= (and b!228030 res!105003) b!228036))

(assert (= (and b!228030 c!43763) b!228032))

(assert (= (and b!228030 (not c!43763)) b!228031))

(assert (= (and b!228031 res!105002) b!228034))

(assert (= (and b!228031 c!43764) b!228037))

(assert (= (and b!228031 (not c!43764)) b!228039))

(assert (= (or b!228037 b!228039) bm!11681))

(assert (= (or b!228037 b!228039) bm!11682))

(assert (= (or b!228032 bm!11681 b!228034) bm!11683))

(assert (= (or b!228032 bm!11682) bm!11680))

(assert (= (or b!228032 b!228037) bm!11684))

(assert (= (and bm!11684 c!43765) b!228040))

(assert (= (and bm!11684 (not c!43765)) b!228035))

(declare-fun m!268793 () Bool)

(assert (=> b!228039 m!268793))

(declare-fun m!268795 () Bool)

(assert (=> b!228039 m!268795))

(declare-fun m!268797 () Bool)

(assert (=> b!228039 m!268797))

(assert (=> b!228039 m!268795))

(declare-fun m!268799 () Bool)

(assert (=> b!228039 m!268799))

(assert (=> b!228039 m!268793))

(assert (=> b!228039 m!268799))

(declare-fun m!268801 () Bool)

(assert (=> b!228039 m!268801))

(assert (=> b!228039 m!268795))

(declare-fun m!268803 () Bool)

(assert (=> b!228039 m!268803))

(declare-fun m!268805 () Bool)

(assert (=> bm!11680 m!268805))

(assert (=> b!228030 m!267055))

(declare-fun m!268807 () Bool)

(assert (=> b!228030 m!268807))

(assert (=> b!228030 m!267055))

(declare-fun m!268809 () Bool)

(assert (=> b!228030 m!268809))

(declare-fun m!268811 () Bool)

(assert (=> b!228030 m!268811))

(declare-fun m!268813 () Bool)

(assert (=> b!228030 m!268813))

(declare-fun m!268815 () Bool)

(assert (=> b!228030 m!268815))

(declare-fun m!268817 () Bool)

(assert (=> b!228030 m!268817))

(declare-fun m!268819 () Bool)

(assert (=> b!228030 m!268819))

(declare-fun m!268821 () Bool)

(assert (=> b!228030 m!268821))

(declare-fun m!268823 () Bool)

(assert (=> b!228030 m!268823))

(assert (=> b!228030 m!268811))

(assert (=> b!228030 m!268807))

(assert (=> b!228030 m!268809))

(declare-fun m!268825 () Bool)

(assert (=> b!228030 m!268825))

(assert (=> b!228030 m!268815))

(declare-fun m!268827 () Bool)

(assert (=> b!228030 m!268827))

(assert (=> b!228030 m!268809))

(declare-fun m!268829 () Bool)

(assert (=> b!228030 m!268829))

(declare-fun m!268831 () Bool)

(assert (=> b!228030 m!268831))

(declare-fun m!268833 () Bool)

(assert (=> b!228030 m!268833))

(assert (=> b!228030 m!267055))

(declare-fun m!268835 () Bool)

(assert (=> b!228030 m!268835))

(assert (=> b!228030 m!268829))

(assert (=> b!228030 m!268819))

(assert (=> b!228036 m!267055))

(assert (=> b!228036 m!268809))

(declare-fun m!268837 () Bool)

(assert (=> bm!11684 m!268837))

(declare-fun m!268839 () Bool)

(assert (=> b!228037 m!268839))

(assert (=> b!228033 m!267055))

(declare-fun m!268841 () Bool)

(assert (=> b!228033 m!268841))

(declare-fun m!268843 () Bool)

(assert (=> b!228035 m!268843))

(declare-fun m!268845 () Bool)

(assert (=> d!63019 m!268845))

(declare-fun m!268847 () Bool)

(assert (=> d!63019 m!268847))

(assert (=> d!63019 m!267055))

(assert (=> d!63019 m!268807))

(assert (=> d!63019 m!268807))

(assert (=> d!63019 m!268845))

(declare-fun m!268849 () Bool)

(assert (=> d!63019 m!268849))

(declare-fun m!268851 () Bool)

(assert (=> d!63019 m!268851))

(assert (=> d!63019 m!267055))

(assert (=> d!63019 m!268845))

(assert (=> d!63019 m!267055))

(assert (=> d!63019 m!268841))

(assert (=> bm!11683 m!267055))

(assert (=> bm!11683 m!268809))

(assert (=> b!227049 d!63019))

(declare-fun d!63083 () Bool)

(assert (=> d!63083 (= (list!1320 (charsOf!298 (h!8837 tokens!465))) (list!1324 (c!43553 (charsOf!298 (h!8837 tokens!465)))))))

(declare-fun bs!24284 () Bool)

(assert (= bs!24284 d!63083))

(declare-fun m!268853 () Bool)

(assert (=> bs!24284 m!268853))

(assert (=> b!227049 d!63083))

(declare-fun d!63085 () Bool)

(declare-fun lt!88528 () BalanceConc!2224)

(assert (=> d!63085 (= (list!1320 lt!88528) (originalCharacters!686 (h!8837 tokens!465)))))

(assert (=> d!63085 (= lt!88528 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (value!22641 (h!8837 tokens!465))))))

(assert (=> d!63085 (= (charsOf!298 (h!8837 tokens!465)) lt!88528)))

(declare-fun b_lambda!6309 () Bool)

(assert (=> (not b_lambda!6309) (not d!63085)))

(assert (=> d!63085 t!33356))

(declare-fun b_and!16913 () Bool)

(assert (= b_and!16885 (and (=> t!33356 result!14544) b_and!16913)))

(assert (=> d!63085 t!33358))

(declare-fun b_and!16915 () Bool)

(assert (= b_and!16887 (and (=> t!33358 result!14546) b_and!16915)))

(assert (=> d!63085 t!33360))

(declare-fun b_and!16917 () Bool)

(assert (= b_and!16889 (and (=> t!33360 result!14548) b_and!16917)))

(declare-fun m!268855 () Bool)

(assert (=> d!63085 m!268855))

(assert (=> d!63085 m!268265))

(assert (=> b!227049 d!63085))

(declare-fun d!63087 () Bool)

(assert (=> d!63087 (= (list!1320 lt!87984) (list!1324 (c!43553 lt!87984)))))

(declare-fun bs!24285 () Bool)

(assert (= bs!24285 d!63087))

(declare-fun m!268857 () Bool)

(assert (=> bs!24285 m!268857))

(assert (=> b!227049 d!63087))

(declare-fun d!63089 () Bool)

(declare-fun e!140915 () Bool)

(assert (=> d!63089 e!140915))

(declare-fun res!105005 () Bool)

(assert (=> d!63089 (=> (not res!105005) (not e!140915))))

(declare-fun lt!88529 () List!3448)

(assert (=> d!63089 (= res!105005 (= (content!476 lt!88529) ((_ map or) (content!476 lt!88004) (content!476 lt!88022))))))

(declare-fun e!140916 () List!3448)

(assert (=> d!63089 (= lt!88529 e!140916)))

(declare-fun c!43766 () Bool)

(assert (=> d!63089 (= c!43766 ((_ is Nil!3438) lt!88004))))

(assert (=> d!63089 (= (++!862 lt!88004 lt!88022) lt!88529)))

(declare-fun b!228089 () Bool)

(assert (=> b!228089 (= e!140916 lt!88022)))

(declare-fun b!228090 () Bool)

(assert (=> b!228090 (= e!140916 (Cons!3438 (h!8835 lt!88004) (++!862 (t!33314 lt!88004) lt!88022)))))

(declare-fun b!228092 () Bool)

(assert (=> b!228092 (= e!140915 (or (not (= lt!88022 Nil!3438)) (= lt!88529 lt!88004)))))

(declare-fun b!228091 () Bool)

(declare-fun res!105004 () Bool)

(assert (=> b!228091 (=> (not res!105004) (not e!140915))))

(assert (=> b!228091 (= res!105004 (= (size!2758 lt!88529) (+ (size!2758 lt!88004) (size!2758 lt!88022))))))

(assert (= (and d!63089 c!43766) b!228089))

(assert (= (and d!63089 (not c!43766)) b!228090))

(assert (= (and d!63089 res!105005) b!228091))

(assert (= (and b!228091 res!105004) b!228092))

(declare-fun m!268867 () Bool)

(assert (=> d!63089 m!268867))

(assert (=> d!63089 m!267613))

(declare-fun m!268869 () Bool)

(assert (=> d!63089 m!268869))

(declare-fun m!268871 () Bool)

(assert (=> b!228090 m!268871))

(declare-fun m!268873 () Bool)

(assert (=> b!228091 m!268873))

(assert (=> b!228091 m!267621))

(assert (=> b!228091 m!267963))

(assert (=> b!227049 d!63089))

(declare-fun d!63091 () Bool)

(assert (=> d!63091 (= (++!862 (++!862 lt!88004 lt!87975) lt!88002) (++!862 lt!88004 (++!862 lt!87975 lt!88002)))))

(declare-fun lt!88532 () Unit!3906)

(declare-fun choose!2203 (List!3448 List!3448 List!3448) Unit!3906)

(assert (=> d!63091 (= lt!88532 (choose!2203 lt!88004 lt!87975 lt!88002))))

(assert (=> d!63091 (= (lemmaConcatAssociativity!344 lt!88004 lt!87975 lt!88002) lt!88532)))

(declare-fun bs!24286 () Bool)

(assert (= bs!24286 d!63091))

(declare-fun m!268877 () Bool)

(assert (=> bs!24286 m!268877))

(assert (=> bs!24286 m!267059))

(assert (=> bs!24286 m!267077))

(assert (=> bs!24286 m!267077))

(declare-fun m!268881 () Bool)

(assert (=> bs!24286 m!268881))

(assert (=> bs!24286 m!267059))

(assert (=> bs!24286 m!267065))

(assert (=> b!227049 d!63091))

(declare-fun d!63093 () Bool)

(declare-fun lt!88533 () BalanceConc!2224)

(assert (=> d!63093 (= (list!1320 lt!88533) (originalCharacters!686 separatorToken!170))))

(assert (=> d!63093 (= lt!88533 (dynLambda!1599 (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (value!22641 separatorToken!170)))))

(assert (=> d!63093 (= (charsOf!298 separatorToken!170) lt!88533)))

(declare-fun b_lambda!6325 () Bool)

(assert (=> (not b_lambda!6325) (not d!63093)))

(assert (=> d!63093 t!33339))

(declare-fun b_and!16923 () Bool)

(assert (= b_and!16913 (and (=> t!33339 result!14530) b_and!16923)))

(assert (=> d!63093 t!33341))

(declare-fun b_and!16925 () Bool)

(assert (= b_and!16915 (and (=> t!33341 result!14534) b_and!16925)))

(assert (=> d!63093 t!33343))

(declare-fun b_and!16927 () Bool)

(assert (= b_and!16917 (and (=> t!33343 result!14536) b_and!16927)))

(declare-fun m!268883 () Bool)

(assert (=> d!63093 m!268883))

(assert (=> d!63093 m!267631))

(assert (=> b!227049 d!63093))

(declare-fun d!63097 () Bool)

(assert (=> d!63097 (= (get!1082 lt!87979) (v!14303 lt!87979))))

(assert (=> b!227050 d!63097))

(declare-fun d!63101 () Bool)

(assert (=> d!63101 (= (head!781 tokens!465) (h!8837 tokens!465))))

(assert (=> b!227050 d!63101))

(declare-fun d!63103 () Bool)

(assert (=> d!63103 (= (list!1320 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 lt!87985 separatorToken!170 0)) (list!1324 (c!43553 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 lt!87985 separatorToken!170 0))))))

(declare-fun bs!24289 () Bool)

(assert (= bs!24289 d!63103))

(declare-fun m!268885 () Bool)

(assert (=> bs!24289 m!268885))

(assert (=> b!227071 d!63103))

(declare-fun bs!24293 () Bool)

(declare-fun d!63106 () Bool)

(assert (= bs!24293 (and d!63106 b!228030)))

(declare-fun lambda!7182 () Int)

(assert (=> bs!24293 (not (= lambda!7182 lambda!7181))))

(declare-fun bs!24294 () Bool)

(assert (= bs!24294 (and d!63106 d!62737)))

(assert (=> bs!24294 (not (= lambda!7182 lambda!7141))))

(declare-fun bs!24295 () Bool)

(assert (= bs!24295 (and d!63106 b!227054)))

(assert (=> bs!24295 (not (= lambda!7182 lambda!7138))))

(declare-fun bs!24296 () Bool)

(assert (= bs!24296 (and d!63106 d!63019)))

(assert (=> bs!24296 (= lambda!7182 lambda!7180)))

(declare-fun bs!24297 () Bool)

(assert (= bs!24297 (and d!63106 b!227072)))

(assert (=> bs!24297 (= lambda!7182 lambda!7137)))

(declare-fun bs!24298 () Bool)

(assert (= bs!24298 (and d!63106 d!62843)))

(assert (=> bs!24298 (= lambda!7182 lambda!7153)))

(declare-fun bs!24299 () Bool)

(assert (= bs!24299 (and d!63106 d!62967)))

(assert (=> bs!24299 (not (= lambda!7182 lambda!7161))))

(declare-fun bs!24300 () Bool)

(assert (= bs!24300 (and d!63106 b!227876)))

(assert (=> bs!24300 (not (= lambda!7182 lambda!7169))))

(declare-fun bs!24301 () Bool)

(declare-fun b!228104 () Bool)

(assert (= bs!24301 (and b!228104 b!228030)))

(declare-fun lambda!7183 () Int)

(assert (=> bs!24301 (= lambda!7183 lambda!7181)))

(declare-fun bs!24302 () Bool)

(assert (= bs!24302 (and b!228104 d!62737)))

(assert (=> bs!24302 (= lambda!7183 lambda!7141)))

(declare-fun bs!24303 () Bool)

(assert (= bs!24303 (and b!228104 d!63106)))

(assert (=> bs!24303 (not (= lambda!7183 lambda!7182))))

(declare-fun bs!24304 () Bool)

(assert (= bs!24304 (and b!228104 b!227054)))

(assert (=> bs!24304 (= lambda!7183 lambda!7138)))

(declare-fun bs!24305 () Bool)

(assert (= bs!24305 (and b!228104 d!63019)))

(assert (=> bs!24305 (not (= lambda!7183 lambda!7180))))

(declare-fun bs!24306 () Bool)

(assert (= bs!24306 (and b!228104 b!227072)))

(assert (=> bs!24306 (not (= lambda!7183 lambda!7137))))

(declare-fun bs!24307 () Bool)

(assert (= bs!24307 (and b!228104 d!62843)))

(assert (=> bs!24307 (not (= lambda!7183 lambda!7153))))

(declare-fun bs!24308 () Bool)

(assert (= bs!24308 (and b!228104 d!62967)))

(assert (=> bs!24308 (= lambda!7183 lambda!7161)))

(declare-fun bs!24309 () Bool)

(assert (= bs!24309 (and b!228104 b!227876)))

(assert (=> bs!24309 (= lambda!7183 lambda!7169)))

(declare-fun b!228117 () Bool)

(declare-fun e!140938 () Bool)

(assert (=> b!228117 (= e!140938 true)))

(declare-fun b!228116 () Bool)

(declare-fun e!140937 () Bool)

(assert (=> b!228116 (= e!140937 e!140938)))

(declare-fun b!228115 () Bool)

(declare-fun e!140936 () Bool)

(assert (=> b!228115 (= e!140936 e!140937)))

(assert (=> b!228104 e!140936))

(assert (= b!228116 b!228117))

(assert (= b!228115 b!228116))

(assert (= (and b!228104 ((_ is Cons!3439) rules!1920)) b!228115))

(assert (=> b!228117 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7183))))

(assert (=> b!228117 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7183))))

(assert (=> b!228104 true))

(declare-fun e!140933 () BalanceConc!2224)

(declare-fun e!140934 () BalanceConc!2224)

(assert (=> b!228104 (= e!140933 e!140934)))

(declare-fun lt!88540 () List!3450)

(assert (=> b!228104 (= lt!88540 (list!1321 lt!87985))))

(declare-fun lt!88538 () Unit!3906)

(assert (=> b!228104 (= lt!88538 (lemmaDropApply!170 lt!88540 0))))

(assert (=> b!228104 (= (head!781 (drop!183 lt!88540 0)) (apply!619 lt!88540 0))))

(declare-fun lt!88546 () Unit!3906)

(assert (=> b!228104 (= lt!88546 lt!88538)))

(declare-fun lt!88545 () List!3450)

(assert (=> b!228104 (= lt!88545 (list!1321 lt!87985))))

(declare-fun lt!88544 () Unit!3906)

(assert (=> b!228104 (= lt!88544 (lemmaDropTail!162 lt!88545 0))))

(assert (=> b!228104 (= (tail!426 (drop!183 lt!88545 0)) (drop!183 lt!88545 (+ 0 1)))))

(declare-fun lt!88541 () Unit!3906)

(assert (=> b!228104 (= lt!88541 lt!88544)))

(declare-fun lt!88547 () Unit!3906)

(assert (=> b!228104 (= lt!88547 (forallContained!210 (list!1321 lt!87985) lambda!7183 (apply!614 lt!87985 0)))))

(declare-fun lt!88534 () BalanceConc!2224)

(assert (=> b!228104 (= lt!88534 (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 lt!87985 separatorToken!170 (+ 0 1)))))

(declare-fun lt!88543 () Option!623)

(assert (=> b!228104 (= lt!88543 (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (++!864 (charsOf!298 (apply!614 lt!87985 0)) lt!88534)))))

(declare-fun res!105008 () Bool)

(assert (=> b!228104 (= res!105008 ((_ is Some!622) lt!88543))))

(declare-fun e!140935 () Bool)

(assert (=> b!228104 (=> (not res!105008) (not e!140935))))

(declare-fun c!43768 () Bool)

(assert (=> b!228104 (= c!43768 e!140935)))

(declare-fun b!228105 () Bool)

(declare-fun c!43769 () Bool)

(declare-fun e!140930 () Bool)

(assert (=> b!228105 (= c!43769 e!140930)))

(declare-fun res!105007 () Bool)

(assert (=> b!228105 (=> (not res!105007) (not e!140930))))

(assert (=> b!228105 (= res!105007 ((_ is Some!622) lt!88543))))

(declare-fun e!140931 () BalanceConc!2224)

(assert (=> b!228105 (= e!140934 e!140931)))

(declare-fun bm!11685 () Bool)

(declare-fun call!11694 () BalanceConc!2224)

(declare-fun call!11692 () Token!1030)

(declare-fun call!11691 () Token!1030)

(assert (=> bm!11685 (= call!11694 (charsOf!298 (ite c!43768 call!11691 (ite c!43769 separatorToken!170 call!11692))))))

(declare-fun bm!11686 () Bool)

(assert (=> bm!11686 (= call!11692 call!11691)))

(declare-fun bm!11687 () Bool)

(declare-fun call!11693 () BalanceConc!2224)

(assert (=> bm!11687 (= call!11693 call!11694)))

(declare-fun bm!11688 () Bool)

(assert (=> bm!11688 (= call!11691 (apply!614 lt!87985 0))))

(declare-fun b!228107 () Bool)

(declare-fun e!140929 () Bool)

(assert (=> b!228107 (= e!140929 (<= 0 (size!2755 lt!87985)))))

(declare-fun b!228108 () Bool)

(assert (=> b!228108 (= e!140930 (not (= (_1!2065 (v!14305 lt!88543)) call!11691)))))

(declare-fun b!228109 () Bool)

(declare-fun e!140932 () BalanceConc!2224)

(assert (=> b!228109 (= e!140932 (charsOf!298 call!11692))))

(declare-fun b!228110 () Bool)

(assert (=> b!228110 (= e!140935 (= (_1!2065 (v!14305 lt!88543)) (apply!614 lt!87985 0)))))

(declare-fun b!228111 () Bool)

(declare-fun call!11690 () BalanceConc!2224)

(assert (=> b!228111 (= e!140931 (++!864 call!11690 lt!88534))))

(declare-fun lt!88537 () BalanceConc!2224)

(assert (=> d!63106 (= (list!1320 lt!88537) (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (dropList!130 lt!87985 0) separatorToken!170))))

(assert (=> d!63106 (= lt!88537 e!140933)))

(declare-fun c!43767 () Bool)

(assert (=> d!63106 (= c!43767 (>= 0 (size!2755 lt!87985)))))

(declare-fun lt!88535 () Unit!3906)

(assert (=> d!63106 (= lt!88535 (lemmaContentSubsetPreservesForall!74 (list!1321 lt!87985) (dropList!130 lt!87985 0) lambda!7182))))

(assert (=> d!63106 e!140929))

(declare-fun res!105006 () Bool)

(assert (=> d!63106 (=> (not res!105006) (not e!140929))))

(assert (=> d!63106 (= res!105006 (>= 0 0))))

(assert (=> d!63106 (= (printWithSeparatorTokenWhenNeededRec!212 thiss!17480 rules!1920 lt!87985 separatorToken!170 0) lt!88537)))

(declare-fun b!228106 () Bool)

(assert (=> b!228106 (= e!140934 call!11690)))

(declare-fun b!228112 () Bool)

(assert (=> b!228112 (= e!140933 (BalanceConc!2225 Empty!1108))))

(declare-fun bm!11689 () Bool)

(declare-fun c!43770 () Bool)

(assert (=> bm!11689 (= c!43770 c!43768)))

(assert (=> bm!11689 (= call!11690 (++!864 e!140932 (ite c!43768 lt!88534 call!11693)))))

(declare-fun b!228113 () Bool)

(assert (=> b!228113 (= e!140931 (BalanceConc!2225 Empty!1108))))

(assert (=> b!228113 (= (print!260 thiss!17480 (singletonSeq!195 call!11692)) (printTailRec!223 thiss!17480 (singletonSeq!195 call!11692) 0 (BalanceConc!2225 Empty!1108)))))

(declare-fun lt!88539 () Unit!3906)

(declare-fun Unit!3922 () Unit!3906)

(assert (=> b!228113 (= lt!88539 Unit!3922)))

(declare-fun lt!88536 () Unit!3906)

(assert (=> b!228113 (= lt!88536 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!78 thiss!17480 rules!1920 (list!1320 call!11693) (list!1320 lt!88534)))))

(assert (=> b!228113 false))

(declare-fun lt!88542 () Unit!3906)

(declare-fun Unit!3923 () Unit!3906)

(assert (=> b!228113 (= lt!88542 Unit!3923)))

(declare-fun b!228114 () Bool)

(assert (=> b!228114 (= e!140932 call!11694)))

(assert (= (and d!63106 res!105006) b!228107))

(assert (= (and d!63106 c!43767) b!228112))

(assert (= (and d!63106 (not c!43767)) b!228104))

(assert (= (and b!228104 res!105008) b!228110))

(assert (= (and b!228104 c!43768) b!228106))

(assert (= (and b!228104 (not c!43768)) b!228105))

(assert (= (and b!228105 res!105007) b!228108))

(assert (= (and b!228105 c!43769) b!228111))

(assert (= (and b!228105 (not c!43769)) b!228113))

(assert (= (or b!228111 b!228113) bm!11686))

(assert (= (or b!228111 b!228113) bm!11687))

(assert (= (or b!228106 bm!11686 b!228108) bm!11688))

(assert (= (or b!228106 bm!11687) bm!11685))

(assert (= (or b!228106 b!228111) bm!11689))

(assert (= (and bm!11689 c!43770) b!228114))

(assert (= (and bm!11689 (not c!43770)) b!228109))

(declare-fun m!268887 () Bool)

(assert (=> b!228113 m!268887))

(declare-fun m!268889 () Bool)

(assert (=> b!228113 m!268889))

(declare-fun m!268891 () Bool)

(assert (=> b!228113 m!268891))

(assert (=> b!228113 m!268889))

(declare-fun m!268893 () Bool)

(assert (=> b!228113 m!268893))

(assert (=> b!228113 m!268887))

(assert (=> b!228113 m!268893))

(declare-fun m!268895 () Bool)

(assert (=> b!228113 m!268895))

(assert (=> b!228113 m!268889))

(declare-fun m!268897 () Bool)

(assert (=> b!228113 m!268897))

(declare-fun m!268899 () Bool)

(assert (=> bm!11685 m!268899))

(assert (=> b!228104 m!268383))

(declare-fun m!268901 () Bool)

(assert (=> b!228104 m!268901))

(declare-fun m!268903 () Bool)

(assert (=> b!228104 m!268903))

(declare-fun m!268905 () Bool)

(assert (=> b!228104 m!268905))

(declare-fun m!268907 () Bool)

(assert (=> b!228104 m!268907))

(declare-fun m!268909 () Bool)

(assert (=> b!228104 m!268909))

(declare-fun m!268911 () Bool)

(assert (=> b!228104 m!268911))

(declare-fun m!268913 () Bool)

(assert (=> b!228104 m!268913))

(declare-fun m!268915 () Bool)

(assert (=> b!228104 m!268915))

(assert (=> b!228104 m!268903))

(assert (=> b!228104 m!268383))

(assert (=> b!228104 m!268901))

(declare-fun m!268917 () Bool)

(assert (=> b!228104 m!268917))

(assert (=> b!228104 m!268907))

(declare-fun m!268919 () Bool)

(assert (=> b!228104 m!268919))

(assert (=> b!228104 m!268901))

(declare-fun m!268921 () Bool)

(assert (=> b!228104 m!268921))

(declare-fun m!268923 () Bool)

(assert (=> b!228104 m!268923))

(declare-fun m!268925 () Bool)

(assert (=> b!228104 m!268925))

(declare-fun m!268927 () Bool)

(assert (=> b!228104 m!268927))

(assert (=> b!228104 m!268921))

(assert (=> b!228104 m!268911))

(assert (=> b!228110 m!268901))

(declare-fun m!268929 () Bool)

(assert (=> bm!11689 m!268929))

(declare-fun m!268931 () Bool)

(assert (=> b!228111 m!268931))

(declare-fun m!268933 () Bool)

(assert (=> b!228107 m!268933))

(declare-fun m!268935 () Bool)

(assert (=> b!228109 m!268935))

(declare-fun m!268937 () Bool)

(assert (=> d!63106 m!268937))

(declare-fun m!268939 () Bool)

(assert (=> d!63106 m!268939))

(assert (=> d!63106 m!268383))

(assert (=> d!63106 m!268383))

(assert (=> d!63106 m!268937))

(declare-fun m!268941 () Bool)

(assert (=> d!63106 m!268941))

(declare-fun m!268943 () Bool)

(assert (=> d!63106 m!268943))

(assert (=> d!63106 m!268937))

(assert (=> d!63106 m!268933))

(assert (=> bm!11688 m!268901))

(assert (=> b!227071 d!63106))

(declare-fun bs!24310 () Bool)

(declare-fun b!228125 () Bool)

(assert (= bs!24310 (and b!228125 b!228030)))

(declare-fun lambda!7184 () Int)

(assert (=> bs!24310 (= lambda!7184 lambda!7181)))

(declare-fun bs!24311 () Bool)

(assert (= bs!24311 (and b!228125 d!62737)))

(assert (=> bs!24311 (= lambda!7184 lambda!7141)))

(declare-fun bs!24312 () Bool)

(assert (= bs!24312 (and b!228125 b!228104)))

(assert (=> bs!24312 (= lambda!7184 lambda!7183)))

(declare-fun bs!24313 () Bool)

(assert (= bs!24313 (and b!228125 d!63106)))

(assert (=> bs!24313 (not (= lambda!7184 lambda!7182))))

(declare-fun bs!24314 () Bool)

(assert (= bs!24314 (and b!228125 b!227054)))

(assert (=> bs!24314 (= lambda!7184 lambda!7138)))

(declare-fun bs!24315 () Bool)

(assert (= bs!24315 (and b!228125 d!63019)))

(assert (=> bs!24315 (not (= lambda!7184 lambda!7180))))

(declare-fun bs!24316 () Bool)

(assert (= bs!24316 (and b!228125 b!227072)))

(assert (=> bs!24316 (not (= lambda!7184 lambda!7137))))

(declare-fun bs!24317 () Bool)

(assert (= bs!24317 (and b!228125 d!62843)))

(assert (=> bs!24317 (not (= lambda!7184 lambda!7153))))

(declare-fun bs!24318 () Bool)

(assert (= bs!24318 (and b!228125 d!62967)))

(assert (=> bs!24318 (= lambda!7184 lambda!7161)))

(declare-fun bs!24319 () Bool)

(assert (= bs!24319 (and b!228125 b!227876)))

(assert (=> bs!24319 (= lambda!7184 lambda!7169)))

(declare-fun b!228128 () Bool)

(declare-fun e!140945 () Bool)

(assert (=> b!228128 (= e!140945 true)))

(declare-fun b!228127 () Bool)

(declare-fun e!140944 () Bool)

(assert (=> b!228127 (= e!140944 e!140945)))

(declare-fun b!228126 () Bool)

(declare-fun e!140943 () Bool)

(assert (=> b!228126 (= e!140943 e!140944)))

(assert (=> b!228125 e!140943))

(assert (= b!228127 b!228128))

(assert (= b!228126 b!228127))

(assert (= (and b!228125 ((_ is Cons!3439) rules!1920)) b!228126))

(assert (=> b!228128 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7184))))

(assert (=> b!228128 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 rules!1920)))) (dynLambda!1596 order!2383 lambda!7184))))

(assert (=> b!228125 true))

(declare-fun b!228118 () Bool)

(declare-fun e!140942 () List!3448)

(assert (=> b!228118 (= e!140942 Nil!3438)))

(assert (=> b!228118 (= (print!260 thiss!17480 (singletonSeq!195 (h!8837 tokens!465))) (printTailRec!223 thiss!17480 (singletonSeq!195 (h!8837 tokens!465)) 0 (BalanceConc!2225 Empty!1108)))))

(declare-fun lt!88553 () Unit!3906)

(declare-fun Unit!3924 () Unit!3906)

(assert (=> b!228118 (= lt!88553 Unit!3924)))

(declare-fun lt!88549 () Unit!3906)

(declare-fun lt!88548 () List!3448)

(declare-fun call!11696 () List!3448)

(assert (=> b!228118 (= lt!88549 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!78 thiss!17480 rules!1920 call!11696 lt!88548))))

(assert (=> b!228118 false))

(declare-fun lt!88552 () Unit!3906)

(declare-fun Unit!3925 () Unit!3906)

(assert (=> b!228118 (= lt!88552 Unit!3925)))

(declare-fun bm!11690 () Bool)

(declare-fun call!11695 () BalanceConc!2224)

(assert (=> bm!11690 (= call!11695 (charsOf!298 (h!8837 tokens!465)))))

(declare-fun c!43771 () Bool)

(declare-fun bm!11691 () Bool)

(declare-fun call!11698 () List!3448)

(declare-fun call!11697 () List!3448)

(assert (=> bm!11691 (= call!11698 (++!862 call!11697 (ite c!43771 lt!88548 call!11696)))))

(declare-fun bm!11692 () Bool)

(declare-fun e!140939 () BalanceConc!2224)

(assert (=> bm!11692 (= call!11696 (list!1320 e!140939))))

(declare-fun c!43774 () Bool)

(declare-fun c!43773 () Bool)

(assert (=> bm!11692 (= c!43774 c!43773)))

(declare-fun b!228119 () Bool)

(declare-fun e!140940 () List!3448)

(assert (=> b!228119 (= e!140940 Nil!3438)))

(declare-fun b!228120 () Bool)

(declare-fun call!11699 () BalanceConc!2224)

(assert (=> b!228120 (= e!140939 call!11699)))

(declare-fun bm!11693 () Bool)

(assert (=> bm!11693 (= call!11699 call!11695)))

(declare-fun b!228122 () Bool)

(declare-fun lt!88550 () Option!621)

(assert (=> b!228122 (= c!43773 (and ((_ is Some!620) lt!88550) (not (= (_1!2064 (v!14303 lt!88550)) (h!8837 tokens!465)))))))

(declare-fun e!140941 () List!3448)

(assert (=> b!228122 (= e!140941 e!140942)))

(declare-fun b!228123 () Bool)

(assert (=> b!228123 (= e!140942 (++!862 call!11698 lt!88548))))

(declare-fun bm!11694 () Bool)

(assert (=> bm!11694 (= call!11697 (list!1320 (ite c!43771 call!11695 call!11699)))))

(declare-fun b!228124 () Bool)

(assert (=> b!228124 (= e!140941 call!11698)))

(assert (=> b!228125 (= e!140940 e!140941)))

(declare-fun lt!88551 () Unit!3906)

(assert (=> b!228125 (= lt!88551 (forallContained!210 tokens!465 lambda!7184 (h!8837 tokens!465)))))

(assert (=> b!228125 (= lt!88548 (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 (t!33316 tokens!465) separatorToken!170))))

(assert (=> b!228125 (= lt!88550 (maxPrefix!259 thiss!17480 rules!1920 (++!862 (list!1320 (charsOf!298 (h!8837 tokens!465))) lt!88548)))))

(assert (=> b!228125 (= c!43771 (and ((_ is Some!620) lt!88550) (= (_1!2064 (v!14303 lt!88550)) (h!8837 tokens!465))))))

(declare-fun b!228121 () Bool)

(assert (=> b!228121 (= e!140939 (charsOf!298 separatorToken!170))))

(declare-fun d!63113 () Bool)

(declare-fun c!43772 () Bool)

(assert (=> d!63113 (= c!43772 ((_ is Cons!3440) tokens!465))))

(assert (=> d!63113 (= (printWithSeparatorTokenWhenNeededList!222 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!140940)))

(assert (= (and d!63113 c!43772) b!228125))

(assert (= (and d!63113 (not c!43772)) b!228119))

(assert (= (and b!228125 c!43771) b!228124))

(assert (= (and b!228125 (not c!43771)) b!228122))

(assert (= (and b!228122 c!43773) b!228123))

(assert (= (and b!228122 (not c!43773)) b!228118))

(assert (= (or b!228123 b!228118) bm!11693))

(assert (= (or b!228123 b!228118) bm!11692))

(assert (= (and bm!11692 c!43774) b!228121))

(assert (= (and bm!11692 (not c!43774)) b!228120))

(assert (= (or b!228124 bm!11693) bm!11690))

(assert (= (or b!228124 b!228123) bm!11694))

(assert (= (or b!228124 b!228123) bm!11691))

(assert (=> bm!11690 m!267073))

(declare-fun m!268945 () Bool)

(assert (=> bm!11692 m!268945))

(declare-fun m!268947 () Bool)

(assert (=> bm!11694 m!268947))

(assert (=> b!228118 m!267029))

(assert (=> b!228118 m!267029))

(declare-fun m!268949 () Bool)

(assert (=> b!228118 m!268949))

(assert (=> b!228118 m!267029))

(declare-fun m!268951 () Bool)

(assert (=> b!228118 m!268951))

(declare-fun m!268953 () Bool)

(assert (=> b!228118 m!268953))

(declare-fun m!268955 () Bool)

(assert (=> b!228123 m!268955))

(assert (=> b!228121 m!267061))

(assert (=> b!228125 m!267057))

(declare-fun m!268957 () Bool)

(assert (=> b!228125 m!268957))

(assert (=> b!228125 m!267075))

(declare-fun m!268959 () Bool)

(assert (=> b!228125 m!268959))

(assert (=> b!228125 m!267073))

(assert (=> b!228125 m!267075))

(assert (=> b!228125 m!267073))

(assert (=> b!228125 m!268959))

(declare-fun m!268961 () Bool)

(assert (=> b!228125 m!268961))

(declare-fun m!268963 () Bool)

(assert (=> bm!11691 m!268963))

(assert (=> b!227071 d!63113))

(declare-fun d!63115 () Bool)

(declare-fun res!105013 () Bool)

(declare-fun e!140950 () Bool)

(assert (=> d!63115 (=> res!105013 e!140950)))

(assert (=> d!63115 (= res!105013 ((_ is Nil!3440) tokens!465))))

(assert (=> d!63115 (= (forall!773 tokens!465 lambda!7137) e!140950)))

(declare-fun b!228133 () Bool)

(declare-fun e!140951 () Bool)

(assert (=> b!228133 (= e!140950 e!140951)))

(declare-fun res!105014 () Bool)

(assert (=> b!228133 (=> (not res!105014) (not e!140951))))

(assert (=> b!228133 (= res!105014 (dynLambda!1600 lambda!7137 (h!8837 tokens!465)))))

(declare-fun b!228134 () Bool)

(assert (=> b!228134 (= e!140951 (forall!773 (t!33316 tokens!465) lambda!7137))))

(assert (= (and d!63115 (not res!105013)) b!228133))

(assert (= (and b!228133 res!105014) b!228134))

(declare-fun b_lambda!6331 () Bool)

(assert (=> (not b_lambda!6331) (not b!228133)))

(declare-fun m!268965 () Bool)

(assert (=> b!228133 m!268965))

(declare-fun m!268967 () Bool)

(assert (=> b!228134 m!268967))

(assert (=> b!227072 d!63115))

(declare-fun d!63117 () Bool)

(declare-fun lt!88554 () Bool)

(assert (=> d!63117 (= lt!88554 (isEmpty!1961 (list!1320 (_2!2067 lt!87989))))))

(assert (=> d!63117 (= lt!88554 (isEmpty!1965 (c!43553 (_2!2067 lt!87989))))))

(assert (=> d!63117 (= (isEmpty!1960 (_2!2067 lt!87989)) lt!88554)))

(declare-fun bs!24320 () Bool)

(assert (= bs!24320 d!63117))

(declare-fun m!268969 () Bool)

(assert (=> bs!24320 m!268969))

(assert (=> bs!24320 m!268969))

(declare-fun m!268971 () Bool)

(assert (=> bs!24320 m!268971))

(declare-fun m!268973 () Bool)

(assert (=> bs!24320 m!268973))

(assert (=> b!227094 d!63117))

(declare-fun d!63119 () Bool)

(assert (=> d!63119 (not (contains!614 (usedCharacters!48 (regex!643 (rule!1198 separatorToken!170))) lt!88000))))

(declare-fun lt!88557 () Unit!3906)

(declare-fun choose!2204 (LexerInterface!529 List!3449 List!3449 Rule!1086 Rule!1086 C!2656) Unit!3906)

(assert (=> d!63119 (= lt!88557 (choose!2204 thiss!17480 rules!1920 rules!1920 (rule!1198 lt!87988) (rule!1198 separatorToken!170) lt!88000))))

(assert (=> d!63119 (rulesInvariant!495 thiss!17480 rules!1920)))

(assert (=> d!63119 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!36 thiss!17480 rules!1920 rules!1920 (rule!1198 lt!87988) (rule!1198 separatorToken!170) lt!88000) lt!88557)))

(declare-fun bs!24321 () Bool)

(assert (= bs!24321 d!63119))

(assert (=> bs!24321 m!267179))

(assert (=> bs!24321 m!267179))

(assert (=> bs!24321 m!267181))

(declare-fun m!268975 () Bool)

(assert (=> bs!24321 m!268975))

(assert (=> bs!24321 m!267091))

(assert (=> b!227051 d!63119))

(declare-fun b!228135 () Bool)

(declare-fun res!105018 () Bool)

(declare-fun e!140958 () Bool)

(assert (=> b!228135 (=> (not res!105018) (not e!140958))))

(declare-fun call!11700 () Bool)

(assert (=> b!228135 (= res!105018 (not call!11700))))

(declare-fun b!228136 () Bool)

(declare-fun e!140955 () Bool)

(declare-fun lt!88558 () Bool)

(assert (=> b!228136 (= e!140955 (not lt!88558))))

(declare-fun d!63121 () Bool)

(declare-fun e!140954 () Bool)

(assert (=> d!63121 e!140954))

(declare-fun c!43776 () Bool)

(assert (=> d!63121 (= c!43776 ((_ is EmptyExpr!867) (regex!643 lt!88011)))))

(declare-fun e!140956 () Bool)

(assert (=> d!63121 (= lt!88558 e!140956)))

(declare-fun c!43777 () Bool)

(assert (=> d!63121 (= c!43777 (isEmpty!1961 lt!87975))))

(assert (=> d!63121 (validRegex!223 (regex!643 lt!88011))))

(assert (=> d!63121 (= (matchR!205 (regex!643 lt!88011) lt!87975) lt!88558)))

(declare-fun b!228137 () Bool)

(declare-fun res!105015 () Bool)

(declare-fun e!140957 () Bool)

(assert (=> b!228137 (=> res!105015 e!140957)))

(assert (=> b!228137 (= res!105015 e!140958)))

(declare-fun res!105020 () Bool)

(assert (=> b!228137 (=> (not res!105020) (not e!140958))))

(assert (=> b!228137 (= res!105020 lt!88558)))

(declare-fun bm!11695 () Bool)

(assert (=> bm!11695 (= call!11700 (isEmpty!1961 lt!87975))))

(declare-fun b!228138 () Bool)

(declare-fun e!140952 () Bool)

(declare-fun e!140953 () Bool)

(assert (=> b!228138 (= e!140952 e!140953)))

(declare-fun res!105022 () Bool)

(assert (=> b!228138 (=> res!105022 e!140953)))

(assert (=> b!228138 (= res!105022 call!11700)))

(declare-fun b!228139 () Bool)

(assert (=> b!228139 (= e!140953 (not (= (head!782 lt!87975) (c!43554 (regex!643 lt!88011)))))))

(declare-fun b!228140 () Bool)

(assert (=> b!228140 (= e!140957 e!140952)))

(declare-fun res!105021 () Bool)

(assert (=> b!228140 (=> (not res!105021) (not e!140952))))

(assert (=> b!228140 (= res!105021 (not lt!88558))))

(declare-fun b!228141 () Bool)

(assert (=> b!228141 (= e!140956 (matchR!205 (derivativeStep!114 (regex!643 lt!88011) (head!782 lt!87975)) (tail!425 lt!87975)))))

(declare-fun b!228142 () Bool)

(assert (=> b!228142 (= e!140954 e!140955)))

(declare-fun c!43778 () Bool)

(assert (=> b!228142 (= c!43778 ((_ is EmptyLang!867) (regex!643 lt!88011)))))

(declare-fun b!228143 () Bool)

(declare-fun res!105017 () Bool)

(assert (=> b!228143 (=> res!105017 e!140953)))

(assert (=> b!228143 (= res!105017 (not (isEmpty!1961 (tail!425 lt!87975))))))

(declare-fun b!228144 () Bool)

(assert (=> b!228144 (= e!140956 (nullable!148 (regex!643 lt!88011)))))

(declare-fun b!228145 () Bool)

(assert (=> b!228145 (= e!140954 (= lt!88558 call!11700))))

(declare-fun b!228146 () Bool)

(assert (=> b!228146 (= e!140958 (= (head!782 lt!87975) (c!43554 (regex!643 lt!88011))))))

(declare-fun b!228147 () Bool)

(declare-fun res!105019 () Bool)

(assert (=> b!228147 (=> (not res!105019) (not e!140958))))

(assert (=> b!228147 (= res!105019 (isEmpty!1961 (tail!425 lt!87975)))))

(declare-fun b!228148 () Bool)

(declare-fun res!105016 () Bool)

(assert (=> b!228148 (=> res!105016 e!140957)))

(assert (=> b!228148 (= res!105016 (not ((_ is ElementMatch!867) (regex!643 lt!88011))))))

(assert (=> b!228148 (= e!140955 e!140957)))

(assert (= (and d!63121 c!43777) b!228144))

(assert (= (and d!63121 (not c!43777)) b!228141))

(assert (= (and d!63121 c!43776) b!228145))

(assert (= (and d!63121 (not c!43776)) b!228142))

(assert (= (and b!228142 c!43778) b!228136))

(assert (= (and b!228142 (not c!43778)) b!228148))

(assert (= (and b!228148 (not res!105016)) b!228137))

(assert (= (and b!228137 res!105020) b!228135))

(assert (= (and b!228135 res!105018) b!228147))

(assert (= (and b!228147 res!105019) b!228146))

(assert (= (and b!228137 (not res!105015)) b!228140))

(assert (= (and b!228140 res!105021) b!228138))

(assert (= (and b!228138 (not res!105022)) b!228143))

(assert (= (and b!228143 (not res!105017)) b!228139))

(assert (= (or b!228145 b!228135 b!228138) bm!11695))

(declare-fun m!268977 () Bool)

(assert (=> b!228144 m!268977))

(declare-fun m!268979 () Bool)

(assert (=> bm!11695 m!268979))

(declare-fun m!268981 () Bool)

(assert (=> b!228141 m!268981))

(assert (=> b!228141 m!268981))

(declare-fun m!268983 () Bool)

(assert (=> b!228141 m!268983))

(declare-fun m!268985 () Bool)

(assert (=> b!228141 m!268985))

(assert (=> b!228141 m!268983))

(assert (=> b!228141 m!268985))

(declare-fun m!268987 () Bool)

(assert (=> b!228141 m!268987))

(assert (=> d!63121 m!268979))

(declare-fun m!268989 () Bool)

(assert (=> d!63121 m!268989))

(assert (=> b!228139 m!268981))

(assert (=> b!228143 m!268985))

(assert (=> b!228143 m!268985))

(declare-fun m!268991 () Bool)

(assert (=> b!228143 m!268991))

(assert (=> b!228146 m!268981))

(assert (=> b!228147 m!268985))

(assert (=> b!228147 m!268985))

(assert (=> b!228147 m!268991))

(assert (=> b!227052 d!63121))

(declare-fun d!63123 () Bool)

(assert (=> d!63123 (= (get!1083 lt!88017) (v!14304 lt!88017))))

(assert (=> b!227052 d!63123))

(declare-fun d!63125 () Bool)

(assert (=> d!63125 (= (isDefined!472 lt!87979) (not (isEmpty!1967 lt!87979)))))

(declare-fun bs!24322 () Bool)

(assert (= bs!24322 d!63125))

(declare-fun m!268993 () Bool)

(assert (=> bs!24322 m!268993))

(assert (=> b!227073 d!63125))

(assert (=> b!227073 d!62815))

(declare-fun d!63127 () Bool)

(assert (=> d!63127 (= (isEmpty!1959 rules!1920) ((_ is Nil!3439) rules!1920))))

(assert (=> b!227074 d!63127))

(declare-fun b!228149 () Bool)

(declare-fun res!105026 () Bool)

(declare-fun e!140965 () Bool)

(assert (=> b!228149 (=> (not res!105026) (not e!140965))))

(declare-fun call!11701 () Bool)

(assert (=> b!228149 (= res!105026 (not call!11701))))

(declare-fun b!228150 () Bool)

(declare-fun e!140962 () Bool)

(declare-fun lt!88559 () Bool)

(assert (=> b!228150 (= e!140962 (not lt!88559))))

(declare-fun d!63129 () Bool)

(declare-fun e!140961 () Bool)

(assert (=> d!63129 e!140961))

(declare-fun c!43779 () Bool)

(assert (=> d!63129 (= c!43779 ((_ is EmptyExpr!867) (regex!643 (rule!1198 (h!8837 tokens!465)))))))

(declare-fun e!140963 () Bool)

(assert (=> d!63129 (= lt!88559 e!140963)))

(declare-fun c!43780 () Bool)

(assert (=> d!63129 (= c!43780 (isEmpty!1961 lt!88004))))

(assert (=> d!63129 (validRegex!223 (regex!643 (rule!1198 (h!8837 tokens!465))))))

(assert (=> d!63129 (= (matchR!205 (regex!643 (rule!1198 (h!8837 tokens!465))) lt!88004) lt!88559)))

(declare-fun b!228151 () Bool)

(declare-fun res!105023 () Bool)

(declare-fun e!140964 () Bool)

(assert (=> b!228151 (=> res!105023 e!140964)))

(assert (=> b!228151 (= res!105023 e!140965)))

(declare-fun res!105028 () Bool)

(assert (=> b!228151 (=> (not res!105028) (not e!140965))))

(assert (=> b!228151 (= res!105028 lt!88559)))

(declare-fun bm!11696 () Bool)

(assert (=> bm!11696 (= call!11701 (isEmpty!1961 lt!88004))))

(declare-fun b!228152 () Bool)

(declare-fun e!140959 () Bool)

(declare-fun e!140960 () Bool)

(assert (=> b!228152 (= e!140959 e!140960)))

(declare-fun res!105030 () Bool)

(assert (=> b!228152 (=> res!105030 e!140960)))

(assert (=> b!228152 (= res!105030 call!11701)))

(declare-fun b!228153 () Bool)

(assert (=> b!228153 (= e!140960 (not (= (head!782 lt!88004) (c!43554 (regex!643 (rule!1198 (h!8837 tokens!465)))))))))

(declare-fun b!228154 () Bool)

(assert (=> b!228154 (= e!140964 e!140959)))

(declare-fun res!105029 () Bool)

(assert (=> b!228154 (=> (not res!105029) (not e!140959))))

(assert (=> b!228154 (= res!105029 (not lt!88559))))

(declare-fun b!228155 () Bool)

(assert (=> b!228155 (= e!140963 (matchR!205 (derivativeStep!114 (regex!643 (rule!1198 (h!8837 tokens!465))) (head!782 lt!88004)) (tail!425 lt!88004)))))

(declare-fun b!228156 () Bool)

(assert (=> b!228156 (= e!140961 e!140962)))

(declare-fun c!43781 () Bool)

(assert (=> b!228156 (= c!43781 ((_ is EmptyLang!867) (regex!643 (rule!1198 (h!8837 tokens!465)))))))

(declare-fun b!228157 () Bool)

(declare-fun res!105025 () Bool)

(assert (=> b!228157 (=> res!105025 e!140960)))

(assert (=> b!228157 (= res!105025 (not (isEmpty!1961 (tail!425 lt!88004))))))

(declare-fun b!228158 () Bool)

(assert (=> b!228158 (= e!140963 (nullable!148 (regex!643 (rule!1198 (h!8837 tokens!465)))))))

(declare-fun b!228159 () Bool)

(assert (=> b!228159 (= e!140961 (= lt!88559 call!11701))))

(declare-fun b!228160 () Bool)

(assert (=> b!228160 (= e!140965 (= (head!782 lt!88004) (c!43554 (regex!643 (rule!1198 (h!8837 tokens!465))))))))

(declare-fun b!228161 () Bool)

(declare-fun res!105027 () Bool)

(assert (=> b!228161 (=> (not res!105027) (not e!140965))))

(assert (=> b!228161 (= res!105027 (isEmpty!1961 (tail!425 lt!88004)))))

(declare-fun b!228162 () Bool)

(declare-fun res!105024 () Bool)

(assert (=> b!228162 (=> res!105024 e!140964)))

(assert (=> b!228162 (= res!105024 (not ((_ is ElementMatch!867) (regex!643 (rule!1198 (h!8837 tokens!465))))))))

(assert (=> b!228162 (= e!140962 e!140964)))

(assert (= (and d!63129 c!43780) b!228158))

(assert (= (and d!63129 (not c!43780)) b!228155))

(assert (= (and d!63129 c!43779) b!228159))

(assert (= (and d!63129 (not c!43779)) b!228156))

(assert (= (and b!228156 c!43781) b!228150))

(assert (= (and b!228156 (not c!43781)) b!228162))

(assert (= (and b!228162 (not res!105024)) b!228151))

(assert (= (and b!228151 res!105028) b!228149))

(assert (= (and b!228149 res!105026) b!228161))

(assert (= (and b!228161 res!105027) b!228160))

(assert (= (and b!228151 (not res!105023)) b!228154))

(assert (= (and b!228154 res!105029) b!228152))

(assert (= (and b!228152 (not res!105030)) b!228157))

(assert (= (and b!228157 (not res!105025)) b!228153))

(assert (= (or b!228159 b!228149 b!228152) bm!11696))

(declare-fun m!268995 () Bool)

(assert (=> b!228158 m!268995))

(declare-fun m!268997 () Bool)

(assert (=> bm!11696 m!268997))

(assert (=> b!228155 m!268057))

(assert (=> b!228155 m!268057))

(declare-fun m!268999 () Bool)

(assert (=> b!228155 m!268999))

(assert (=> b!228155 m!268061))

(assert (=> b!228155 m!268999))

(assert (=> b!228155 m!268061))

(declare-fun m!269001 () Bool)

(assert (=> b!228155 m!269001))

(assert (=> d!63129 m!268997))

(declare-fun m!269003 () Bool)

(assert (=> d!63129 m!269003))

(assert (=> b!228153 m!268057))

(assert (=> b!228157 m!268061))

(assert (=> b!228157 m!268061))

(declare-fun m!269005 () Bool)

(assert (=> b!228157 m!269005))

(assert (=> b!228160 m!268057))

(assert (=> b!228161 m!268061))

(assert (=> b!228161 m!268061))

(assert (=> b!228161 m!269005))

(assert (=> b!227095 d!63129))

(declare-fun b!228173 () Bool)

(declare-fun e!140974 () Bool)

(declare-fun inv!15 (TokenValue!665) Bool)

(assert (=> b!228173 (= e!140974 (inv!15 (value!22641 separatorToken!170)))))

(declare-fun d!63131 () Bool)

(declare-fun c!43786 () Bool)

(assert (=> d!63131 (= c!43786 ((_ is IntegerValue!1995) (value!22641 separatorToken!170)))))

(declare-fun e!140972 () Bool)

(assert (=> d!63131 (= (inv!21 (value!22641 separatorToken!170)) e!140972)))

(declare-fun b!228174 () Bool)

(declare-fun res!105033 () Bool)

(assert (=> b!228174 (=> res!105033 e!140974)))

(assert (=> b!228174 (= res!105033 (not ((_ is IntegerValue!1997) (value!22641 separatorToken!170))))))

(declare-fun e!140973 () Bool)

(assert (=> b!228174 (= e!140973 e!140974)))

(declare-fun b!228175 () Bool)

(declare-fun inv!17 (TokenValue!665) Bool)

(assert (=> b!228175 (= e!140973 (inv!17 (value!22641 separatorToken!170)))))

(declare-fun b!228176 () Bool)

(declare-fun inv!16 (TokenValue!665) Bool)

(assert (=> b!228176 (= e!140972 (inv!16 (value!22641 separatorToken!170)))))

(declare-fun b!228177 () Bool)

(assert (=> b!228177 (= e!140972 e!140973)))

(declare-fun c!43787 () Bool)

(assert (=> b!228177 (= c!43787 ((_ is IntegerValue!1996) (value!22641 separatorToken!170)))))

(assert (= (and d!63131 c!43786) b!228176))

(assert (= (and d!63131 (not c!43786)) b!228177))

(assert (= (and b!228177 c!43787) b!228175))

(assert (= (and b!228177 (not c!43787)) b!228174))

(assert (= (and b!228174 (not res!105033)) b!228173))

(declare-fun m!269007 () Bool)

(assert (=> b!228173 m!269007))

(declare-fun m!269009 () Bool)

(assert (=> b!228175 m!269009))

(declare-fun m!269011 () Bool)

(assert (=> b!228176 m!269011))

(assert (=> b!227096 d!63131))

(declare-fun d!63133 () Bool)

(assert (=> d!63133 (= (get!1082 lt!87995) (v!14303 lt!87995))))

(assert (=> b!227053 d!63133))

(declare-fun d!63135 () Bool)

(assert (=> d!63135 (= (isDefined!472 lt!87995) (not (isEmpty!1967 lt!87995)))))

(declare-fun bs!24323 () Bool)

(assert (= bs!24323 d!63135))

(declare-fun m!269013 () Bool)

(assert (=> bs!24323 m!269013))

(assert (=> b!227053 d!63135))

(declare-fun b!228179 () Bool)

(declare-fun res!105038 () Bool)

(declare-fun e!140975 () Bool)

(assert (=> b!228179 (=> (not res!105038) (not e!140975))))

(declare-fun lt!88562 () Option!621)

(assert (=> b!228179 (= res!105038 (= (value!22641 (_1!2064 (get!1082 lt!88562))) (apply!618 (transformation!643 (rule!1198 (_1!2064 (get!1082 lt!88562)))) (seqFromList!664 (originalCharacters!686 (_1!2064 (get!1082 lt!88562)))))))))

(declare-fun b!228180 () Bool)

(assert (=> b!228180 (= e!140975 (contains!616 rules!1920 (rule!1198 (_1!2064 (get!1082 lt!88562)))))))

(declare-fun b!228181 () Bool)

(declare-fun e!140976 () Bool)

(assert (=> b!228181 (= e!140976 e!140975)))

(declare-fun res!105037 () Bool)

(assert (=> b!228181 (=> (not res!105037) (not e!140975))))

(assert (=> b!228181 (= res!105037 (isDefined!472 lt!88562))))

(declare-fun b!228182 () Bool)

(declare-fun e!140977 () Option!621)

(declare-fun lt!88561 () Option!621)

(declare-fun lt!88560 () Option!621)

(assert (=> b!228182 (= e!140977 (ite (and ((_ is None!620) lt!88561) ((_ is None!620) lt!88560)) None!620 (ite ((_ is None!620) lt!88560) lt!88561 (ite ((_ is None!620) lt!88561) lt!88560 (ite (>= (size!2754 (_1!2064 (v!14303 lt!88561))) (size!2754 (_1!2064 (v!14303 lt!88560)))) lt!88561 lt!88560)))))))

(declare-fun call!11702 () Option!621)

(assert (=> b!228182 (= lt!88561 call!11702)))

(assert (=> b!228182 (= lt!88560 (maxPrefix!259 thiss!17480 (t!33315 rules!1920) lt!88004))))

(declare-fun bm!11697 () Bool)

(assert (=> bm!11697 (= call!11702 (maxPrefixOneRule!113 thiss!17480 (h!8836 rules!1920) lt!88004))))

(declare-fun b!228183 () Bool)

(declare-fun res!105036 () Bool)

(assert (=> b!228183 (=> (not res!105036) (not e!140975))))

(assert (=> b!228183 (= res!105036 (matchR!205 (regex!643 (rule!1198 (_1!2064 (get!1082 lt!88562)))) (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88562))))))))

(declare-fun b!228184 () Bool)

(declare-fun res!105035 () Bool)

(assert (=> b!228184 (=> (not res!105035) (not e!140975))))

(assert (=> b!228184 (= res!105035 (< (size!2758 (_2!2064 (get!1082 lt!88562))) (size!2758 lt!88004)))))

(declare-fun d!63137 () Bool)

(assert (=> d!63137 e!140976))

(declare-fun res!105040 () Bool)

(assert (=> d!63137 (=> res!105040 e!140976)))

(assert (=> d!63137 (= res!105040 (isEmpty!1967 lt!88562))))

(assert (=> d!63137 (= lt!88562 e!140977)))

(declare-fun c!43788 () Bool)

(assert (=> d!63137 (= c!43788 (and ((_ is Cons!3439) rules!1920) ((_ is Nil!3439) (t!33315 rules!1920))))))

(declare-fun lt!88564 () Unit!3906)

(declare-fun lt!88563 () Unit!3906)

(assert (=> d!63137 (= lt!88564 lt!88563)))

(assert (=> d!63137 (isPrefix!339 lt!88004 lt!88004)))

(assert (=> d!63137 (= lt!88563 (lemmaIsPrefixRefl!179 lt!88004 lt!88004))))

(assert (=> d!63137 (rulesValidInductive!168 thiss!17480 rules!1920)))

(assert (=> d!63137 (= (maxPrefix!259 thiss!17480 rules!1920 lt!88004) lt!88562)))

(declare-fun b!228178 () Bool)

(declare-fun res!105034 () Bool)

(assert (=> b!228178 (=> (not res!105034) (not e!140975))))

(assert (=> b!228178 (= res!105034 (= (++!862 (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88562)))) (_2!2064 (get!1082 lt!88562))) lt!88004))))

(declare-fun b!228185 () Bool)

(assert (=> b!228185 (= e!140977 call!11702)))

(declare-fun b!228186 () Bool)

(declare-fun res!105039 () Bool)

(assert (=> b!228186 (=> (not res!105039) (not e!140975))))

(assert (=> b!228186 (= res!105039 (= (list!1320 (charsOf!298 (_1!2064 (get!1082 lt!88562)))) (originalCharacters!686 (_1!2064 (get!1082 lt!88562)))))))

(assert (= (and d!63137 c!43788) b!228185))

(assert (= (and d!63137 (not c!43788)) b!228182))

(assert (= (or b!228185 b!228182) bm!11697))

(assert (= (and d!63137 (not res!105040)) b!228181))

(assert (= (and b!228181 res!105037) b!228186))

(assert (= (and b!228186 res!105039) b!228184))

(assert (= (and b!228184 res!105035) b!228178))

(assert (= (and b!228178 res!105034) b!228179))

(assert (= (and b!228179 res!105038) b!228183))

(assert (= (and b!228183 res!105036) b!228180))

(declare-fun m!269015 () Bool)

(assert (=> bm!11697 m!269015))

(declare-fun m!269017 () Bool)

(assert (=> b!228183 m!269017))

(declare-fun m!269019 () Bool)

(assert (=> b!228183 m!269019))

(assert (=> b!228183 m!269019))

(declare-fun m!269021 () Bool)

(assert (=> b!228183 m!269021))

(assert (=> b!228183 m!269021))

(declare-fun m!269023 () Bool)

(assert (=> b!228183 m!269023))

(assert (=> b!228180 m!269017))

(declare-fun m!269025 () Bool)

(assert (=> b!228180 m!269025))

(declare-fun m!269027 () Bool)

(assert (=> d!63137 m!269027))

(declare-fun m!269029 () Bool)

(assert (=> d!63137 m!269029))

(declare-fun m!269031 () Bool)

(assert (=> d!63137 m!269031))

(assert (=> d!63137 m!267655))

(assert (=> b!228186 m!269017))

(assert (=> b!228186 m!269019))

(assert (=> b!228186 m!269019))

(assert (=> b!228186 m!269021))

(assert (=> b!228179 m!269017))

(declare-fun m!269033 () Bool)

(assert (=> b!228179 m!269033))

(assert (=> b!228179 m!269033))

(declare-fun m!269035 () Bool)

(assert (=> b!228179 m!269035))

(declare-fun m!269037 () Bool)

(assert (=> b!228182 m!269037))

(assert (=> b!228184 m!269017))

(declare-fun m!269039 () Bool)

(assert (=> b!228184 m!269039))

(assert (=> b!228184 m!267621))

(declare-fun m!269041 () Bool)

(assert (=> b!228181 m!269041))

(assert (=> b!228178 m!269017))

(assert (=> b!228178 m!269019))

(assert (=> b!228178 m!269019))

(assert (=> b!228178 m!269021))

(assert (=> b!228178 m!269021))

(declare-fun m!269043 () Bool)

(assert (=> b!228178 m!269043))

(assert (=> b!227053 d!63137))

(declare-fun d!63139 () Bool)

(declare-fun isEmpty!1971 (Option!623) Bool)

(assert (=> d!63139 (= (isDefined!473 (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465))))) (not (isEmpty!1971 (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))

(declare-fun bs!24324 () Bool)

(assert (= bs!24324 d!63139))

(assert (=> bs!24324 m!267107))

(declare-fun m!269045 () Bool)

(assert (=> bs!24324 m!269045))

(assert (=> b!227054 d!63139))

(declare-fun b!228203 () Bool)

(declare-fun res!105054 () Bool)

(declare-fun e!140993 () Bool)

(assert (=> b!228203 (=> (not res!105054) (not e!140993))))

(declare-fun e!140990 () Bool)

(assert (=> b!228203 (= res!105054 e!140990)))

(declare-fun res!105055 () Bool)

(assert (=> b!228203 (=> res!105055 e!140990)))

(declare-fun lt!88585 () Option!623)

(assert (=> b!228203 (= res!105055 (not (isDefined!473 lt!88585)))))

(declare-fun e!140991 () Bool)

(declare-fun b!228204 () Bool)

(declare-fun get!1084 (Option!623) tuple2!3698)

(declare-fun maxPrefixZipper!82 (LexerInterface!529 List!3449 List!3448) Option!621)

(assert (=> b!228204 (= e!140991 (= (list!1320 (_2!2065 (get!1084 lt!88585))) (_2!2064 (get!1082 (maxPrefixZipper!82 thiss!17480 rules!1920 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))))

(declare-fun bm!11700 () Bool)

(declare-fun call!11705 () Option!623)

(declare-fun maxPrefixOneRuleZipperSequence!83 (LexerInterface!529 Rule!1086 BalanceConc!2224) Option!623)

(assert (=> bm!11700 (= call!11705 (maxPrefixOneRuleZipperSequence!83 thiss!17480 (h!8836 rules!1920) (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))

(declare-fun b!228205 () Bool)

(declare-fun e!140995 () Option!623)

(assert (=> b!228205 (= e!140995 call!11705)))

(declare-fun b!228206 () Bool)

(assert (=> b!228206 (= e!140990 e!140991)))

(declare-fun res!105056 () Bool)

(assert (=> b!228206 (=> (not res!105056) (not e!140991))))

(assert (=> b!228206 (= res!105056 (= (_1!2065 (get!1084 lt!88585)) (_1!2064 (get!1082 (maxPrefixZipper!82 thiss!17480 rules!1920 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))))

(declare-fun b!228207 () Bool)

(declare-fun e!140992 () Bool)

(assert (=> b!228207 (= e!140993 e!140992)))

(declare-fun res!105053 () Bool)

(assert (=> b!228207 (=> res!105053 e!140992)))

(assert (=> b!228207 (= res!105053 (not (isDefined!473 lt!88585)))))

(declare-fun d!63141 () Bool)

(assert (=> d!63141 e!140993))

(declare-fun res!105058 () Bool)

(assert (=> d!63141 (=> (not res!105058) (not e!140993))))

(assert (=> d!63141 (= res!105058 (= (isDefined!473 lt!88585) (isDefined!472 (maxPrefixZipper!82 thiss!17480 rules!1920 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465))))))))))

(assert (=> d!63141 (= lt!88585 e!140995)))

(declare-fun c!43791 () Bool)

(assert (=> d!63141 (= c!43791 (and ((_ is Cons!3439) rules!1920) ((_ is Nil!3439) (t!33315 rules!1920))))))

(declare-fun lt!88581 () Unit!3906)

(declare-fun lt!88579 () Unit!3906)

(assert (=> d!63141 (= lt!88581 lt!88579)))

(declare-fun lt!88583 () List!3448)

(declare-fun lt!88582 () List!3448)

(assert (=> d!63141 (isPrefix!339 lt!88583 lt!88582)))

(assert (=> d!63141 (= lt!88579 (lemmaIsPrefixRefl!179 lt!88583 lt!88582))))

(assert (=> d!63141 (= lt!88582 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))

(assert (=> d!63141 (= lt!88583 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))

(assert (=> d!63141 (rulesValidInductive!168 thiss!17480 rules!1920)))

(assert (=> d!63141 (= (maxPrefixZipperSequence!222 thiss!17480 rules!1920 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))) lt!88585)))

(declare-fun b!228208 () Bool)

(declare-fun lt!88580 () Option!623)

(declare-fun lt!88584 () Option!623)

(assert (=> b!228208 (= e!140995 (ite (and ((_ is None!622) lt!88580) ((_ is None!622) lt!88584)) None!622 (ite ((_ is None!622) lt!88584) lt!88580 (ite ((_ is None!622) lt!88580) lt!88584 (ite (>= (size!2754 (_1!2065 (v!14305 lt!88580))) (size!2754 (_1!2065 (v!14305 lt!88584)))) lt!88580 lt!88584)))))))

(assert (=> b!228208 (= lt!88580 call!11705)))

(assert (=> b!228208 (= lt!88584 (maxPrefixZipperSequence!222 thiss!17480 (t!33315 rules!1920) (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))

(declare-fun b!228209 () Bool)

(declare-fun e!140994 () Bool)

(assert (=> b!228209 (= e!140992 e!140994)))

(declare-fun res!105057 () Bool)

(assert (=> b!228209 (=> (not res!105057) (not e!140994))))

(assert (=> b!228209 (= res!105057 (= (_1!2065 (get!1084 lt!88585)) (_1!2064 (get!1082 (maxPrefix!259 thiss!17480 rules!1920 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))))

(declare-fun b!228210 () Bool)

(assert (=> b!228210 (= e!140994 (= (list!1320 (_2!2065 (get!1084 lt!88585))) (_2!2064 (get!1082 (maxPrefix!259 thiss!17480 rules!1920 (list!1320 (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465)))))))))))

(assert (= (and d!63141 c!43791) b!228205))

(assert (= (and d!63141 (not c!43791)) b!228208))

(assert (= (or b!228205 b!228208) bm!11700))

(assert (= (and d!63141 res!105058) b!228203))

(assert (= (and b!228203 (not res!105055)) b!228206))

(assert (= (and b!228206 res!105056) b!228204))

(assert (= (and b!228203 res!105054) b!228207))

(assert (= (and b!228207 (not res!105053)) b!228209))

(assert (= (and b!228209 res!105057) b!228210))

(declare-fun m!269047 () Bool)

(assert (=> b!228204 m!269047))

(assert (=> b!228204 m!267105))

(declare-fun m!269049 () Bool)

(assert (=> b!228204 m!269049))

(declare-fun m!269051 () Bool)

(assert (=> b!228204 m!269051))

(declare-fun m!269053 () Bool)

(assert (=> b!228204 m!269053))

(declare-fun m!269055 () Bool)

(assert (=> b!228204 m!269055))

(assert (=> b!228204 m!269049))

(assert (=> b!228204 m!269053))

(declare-fun m!269057 () Bool)

(assert (=> d!63141 m!269057))

(declare-fun m!269059 () Bool)

(assert (=> d!63141 m!269059))

(declare-fun m!269061 () Bool)

(assert (=> d!63141 m!269061))

(assert (=> d!63141 m!269049))

(assert (=> d!63141 m!269053))

(assert (=> d!63141 m!267655))

(assert (=> d!63141 m!269053))

(declare-fun m!269063 () Bool)

(assert (=> d!63141 m!269063))

(assert (=> d!63141 m!267105))

(assert (=> d!63141 m!269049))

(assert (=> b!228209 m!269051))

(assert (=> b!228209 m!267105))

(assert (=> b!228209 m!269049))

(assert (=> b!228209 m!269049))

(declare-fun m!269065 () Bool)

(assert (=> b!228209 m!269065))

(assert (=> b!228209 m!269065))

(declare-fun m!269067 () Bool)

(assert (=> b!228209 m!269067))

(assert (=> b!228206 m!269051))

(assert (=> b!228206 m!267105))

(assert (=> b!228206 m!269049))

(assert (=> b!228206 m!269049))

(assert (=> b!228206 m!269053))

(assert (=> b!228206 m!269053))

(assert (=> b!228206 m!269055))

(assert (=> b!228203 m!269061))

(assert (=> bm!11700 m!267105))

(declare-fun m!269069 () Bool)

(assert (=> bm!11700 m!269069))

(assert (=> b!228210 m!269047))

(assert (=> b!228210 m!267105))

(assert (=> b!228210 m!269049))

(assert (=> b!228210 m!269051))

(assert (=> b!228210 m!269065))

(assert (=> b!228210 m!269067))

(assert (=> b!228210 m!269049))

(assert (=> b!228210 m!269065))

(assert (=> b!228208 m!267105))

(declare-fun m!269071 () Bool)

(assert (=> b!228208 m!269071))

(assert (=> b!228207 m!269061))

(assert (=> b!227054 d!63141))

(declare-fun d!63143 () Bool)

(assert (=> d!63143 (= (seqFromList!664 (originalCharacters!686 (h!8837 tokens!465))) (fromListB!246 (originalCharacters!686 (h!8837 tokens!465))))))

(declare-fun bs!24325 () Bool)

(assert (= bs!24325 d!63143))

(declare-fun m!269073 () Bool)

(assert (=> bs!24325 m!269073))

(assert (=> b!227054 d!63143))

(declare-fun d!63145 () Bool)

(assert (=> d!63145 (dynLambda!1600 lambda!7138 (h!8837 tokens!465))))

(declare-fun lt!88586 () Unit!3906)

(assert (=> d!63145 (= lt!88586 (choose!2187 tokens!465 lambda!7138 (h!8837 tokens!465)))))

(declare-fun e!140996 () Bool)

(assert (=> d!63145 e!140996))

(declare-fun res!105059 () Bool)

(assert (=> d!63145 (=> (not res!105059) (not e!140996))))

(assert (=> d!63145 (= res!105059 (forall!773 tokens!465 lambda!7138))))

(assert (=> d!63145 (= (forallContained!210 tokens!465 lambda!7138 (h!8837 tokens!465)) lt!88586)))

(declare-fun b!228211 () Bool)

(assert (=> b!228211 (= e!140996 (contains!617 tokens!465 (h!8837 tokens!465)))))

(assert (= (and d!63145 res!105059) b!228211))

(declare-fun b_lambda!6333 () Bool)

(assert (=> (not b_lambda!6333) (not d!63145)))

(declare-fun m!269075 () Bool)

(assert (=> d!63145 m!269075))

(declare-fun m!269077 () Bool)

(assert (=> d!63145 m!269077))

(assert (=> d!63145 m!267675))

(declare-fun m!269079 () Bool)

(assert (=> b!228211 m!269079))

(assert (=> b!227054 d!63145))

(declare-fun d!63147 () Bool)

(declare-fun lt!88587 () Token!1030)

(assert (=> d!63147 (= lt!88587 (apply!619 (list!1321 (_1!2067 lt!87973)) 0))))

(assert (=> d!63147 (= lt!88587 (apply!620 (c!43555 (_1!2067 lt!87973)) 0))))

(declare-fun e!140997 () Bool)

(assert (=> d!63147 e!140997))

(declare-fun res!105060 () Bool)

(assert (=> d!63147 (=> (not res!105060) (not e!140997))))

(assert (=> d!63147 (= res!105060 (<= 0 0))))

(assert (=> d!63147 (= (apply!614 (_1!2067 lt!87973) 0) lt!88587)))

(declare-fun b!228212 () Bool)

(assert (=> b!228212 (= e!140997 (< 0 (size!2755 (_1!2067 lt!87973))))))

(assert (= (and d!63147 res!105060) b!228212))

(assert (=> d!63147 m!267907))

(assert (=> d!63147 m!267907))

(declare-fun m!269081 () Bool)

(assert (=> d!63147 m!269081))

(declare-fun m!269083 () Bool)

(assert (=> d!63147 m!269083))

(assert (=> b!228212 m!267155))

(assert (=> b!227076 d!63147))

(declare-fun b!228213 () Bool)

(declare-fun e!141000 () Bool)

(assert (=> b!228213 (= e!141000 (inv!15 (value!22641 (h!8837 tokens!465))))))

(declare-fun d!63149 () Bool)

(declare-fun c!43792 () Bool)

(assert (=> d!63149 (= c!43792 ((_ is IntegerValue!1995) (value!22641 (h!8837 tokens!465))))))

(declare-fun e!140998 () Bool)

(assert (=> d!63149 (= (inv!21 (value!22641 (h!8837 tokens!465))) e!140998)))

(declare-fun b!228214 () Bool)

(declare-fun res!105061 () Bool)

(assert (=> b!228214 (=> res!105061 e!141000)))

(assert (=> b!228214 (= res!105061 (not ((_ is IntegerValue!1997) (value!22641 (h!8837 tokens!465)))))))

(declare-fun e!140999 () Bool)

(assert (=> b!228214 (= e!140999 e!141000)))

(declare-fun b!228215 () Bool)

(assert (=> b!228215 (= e!140999 (inv!17 (value!22641 (h!8837 tokens!465))))))

(declare-fun b!228216 () Bool)

(assert (=> b!228216 (= e!140998 (inv!16 (value!22641 (h!8837 tokens!465))))))

(declare-fun b!228217 () Bool)

(assert (=> b!228217 (= e!140998 e!140999)))

(declare-fun c!43793 () Bool)

(assert (=> b!228217 (= c!43793 ((_ is IntegerValue!1996) (value!22641 (h!8837 tokens!465))))))

(assert (= (and d!63149 c!43792) b!228216))

(assert (= (and d!63149 (not c!43792)) b!228217))

(assert (= (and b!228217 c!43793) b!228215))

(assert (= (and b!228217 (not c!43793)) b!228214))

(assert (= (and b!228214 (not res!105061)) b!228213))

(declare-fun m!269085 () Bool)

(assert (=> b!228213 m!269085))

(declare-fun m!269087 () Bool)

(assert (=> b!228215 m!269087))

(declare-fun m!269089 () Bool)

(assert (=> b!228216 m!269089))

(assert (=> b!227097 d!63149))

(declare-fun b!228218 () Bool)

(declare-fun e!141002 () Bool)

(declare-fun lt!88588 () List!3450)

(assert (=> b!228218 (= e!141002 (forall!773 lt!88588 lambda!7137))))

(declare-fun call!11706 () List!3450)

(declare-fun bm!11701 () Bool)

(assert (=> bm!11701 (= call!11706 (filter!37 (t!33316 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002))) lambda!7137))))

(declare-fun b!228220 () Bool)

(declare-fun e!141001 () List!3450)

(assert (=> b!228220 (= e!141001 Nil!3440)))

(declare-fun b!228221 () Bool)

(declare-fun e!141003 () List!3450)

(assert (=> b!228221 (= e!141003 call!11706)))

(declare-fun b!228222 () Bool)

(declare-fun res!105063 () Bool)

(assert (=> b!228222 (=> (not res!105063) (not e!141002))))

(assert (=> b!228222 (= res!105063 (= ((_ map implies) (content!478 lt!88588) (content!478 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)))) ((as const (InoxSet Token!1030)) true)))))

(declare-fun b!228223 () Bool)

(assert (=> b!228223 (= e!141001 e!141003)))

(declare-fun c!43794 () Bool)

(assert (=> b!228223 (= c!43794 (dynLambda!1600 lambda!7137 (h!8837 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)))))))

(declare-fun d!63151 () Bool)

(assert (=> d!63151 e!141002))

(declare-fun res!105062 () Bool)

(assert (=> d!63151 (=> (not res!105062) (not e!141002))))

(assert (=> d!63151 (= res!105062 (<= (size!2761 lt!88588) (size!2761 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)))))))

(assert (=> d!63151 (= lt!88588 e!141001)))

(declare-fun c!43795 () Bool)

(assert (=> d!63151 (= c!43795 ((_ is Nil!3440) (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002))))))

(assert (=> d!63151 (= (filter!37 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)) lambda!7137) lt!88588)))

(declare-fun b!228219 () Bool)

(assert (=> b!228219 (= e!141003 (Cons!3440 (h!8837 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002))) call!11706))))

(assert (= (and d!63151 c!43795) b!228220))

(assert (= (and d!63151 (not c!43795)) b!228223))

(assert (= (and b!228223 c!43794) b!228219))

(assert (= (and b!228223 (not c!43794)) b!228221))

(assert (= (or b!228219 b!228221) bm!11701))

(assert (= (and d!63151 res!105062) b!228222))

(assert (= (and b!228222 res!105063) b!228218))

(declare-fun b_lambda!6335 () Bool)

(assert (=> (not b_lambda!6335) (not b!228223)))

(declare-fun m!269091 () Bool)

(assert (=> b!228222 m!269091))

(declare-fun m!269093 () Bool)

(assert (=> b!228222 m!269093))

(declare-fun m!269095 () Bool)

(assert (=> b!228218 m!269095))

(declare-fun m!269097 () Bool)

(assert (=> b!228223 m!269097))

(declare-fun m!269099 () Bool)

(assert (=> d!63151 m!269099))

(declare-fun m!269101 () Bool)

(assert (=> d!63151 m!269101))

(declare-fun m!269103 () Bool)

(assert (=> bm!11701 m!269103))

(assert (=> b!227055 d!63151))

(declare-fun d!63153 () Bool)

(declare-fun e!141011 () Bool)

(assert (=> d!63153 e!141011))

(declare-fun c!43801 () Bool)

(declare-fun lt!88595 () tuple2!3700)

(assert (=> d!63153 (= c!43801 (> (size!2761 (_1!2066 lt!88595)) 0))))

(declare-fun e!141010 () tuple2!3700)

(assert (=> d!63153 (= lt!88595 e!141010)))

(declare-fun c!43800 () Bool)

(declare-fun lt!88596 () Option!621)

(assert (=> d!63153 (= c!43800 ((_ is Some!620) lt!88596))))

(assert (=> d!63153 (= lt!88596 (maxPrefix!259 thiss!17480 rules!1920 lt!88002))))

(assert (=> d!63153 (= (lexList!157 thiss!17480 rules!1920 lt!88002) lt!88595)))

(declare-fun b!228234 () Bool)

(assert (=> b!228234 (= e!141010 (tuple2!3701 Nil!3440 lt!88002))))

(declare-fun b!228235 () Bool)

(declare-fun lt!88597 () tuple2!3700)

(assert (=> b!228235 (= e!141010 (tuple2!3701 (Cons!3440 (_1!2064 (v!14303 lt!88596)) (_1!2066 lt!88597)) (_2!2066 lt!88597)))))

(assert (=> b!228235 (= lt!88597 (lexList!157 thiss!17480 rules!1920 (_2!2064 (v!14303 lt!88596))))))

(declare-fun b!228236 () Bool)

(assert (=> b!228236 (= e!141011 (= (_2!2066 lt!88595) lt!88002))))

(declare-fun b!228237 () Bool)

(declare-fun e!141012 () Bool)

(assert (=> b!228237 (= e!141012 (not (isEmpty!1962 (_1!2066 lt!88595))))))

(declare-fun b!228238 () Bool)

(assert (=> b!228238 (= e!141011 e!141012)))

(declare-fun res!105066 () Bool)

(assert (=> b!228238 (= res!105066 (< (size!2758 (_2!2066 lt!88595)) (size!2758 lt!88002)))))

(assert (=> b!228238 (=> (not res!105066) (not e!141012))))

(assert (= (and d!63153 c!43800) b!228235))

(assert (= (and d!63153 (not c!43800)) b!228234))

(assert (= (and d!63153 c!43801) b!228238))

(assert (= (and d!63153 (not c!43801)) b!228236))

(assert (= (and b!228238 res!105066) b!228237))

(declare-fun m!269105 () Bool)

(assert (=> d!63153 m!269105))

(declare-fun m!269107 () Bool)

(assert (=> d!63153 m!269107))

(declare-fun m!269109 () Bool)

(assert (=> b!228235 m!269109))

(declare-fun m!269111 () Bool)

(assert (=> b!228237 m!269111))

(declare-fun m!269113 () Bool)

(assert (=> b!228238 m!269113))

(assert (=> b!228238 m!267623))

(assert (=> b!227055 d!63153))

(declare-fun d!63155 () Bool)

(assert (=> d!63155 (= (list!1320 (seqFromList!664 lt!88008)) (list!1324 (c!43553 (seqFromList!664 lt!88008))))))

(declare-fun bs!24326 () Bool)

(assert (= bs!24326 d!63155))

(declare-fun m!269115 () Bool)

(assert (=> bs!24326 m!269115))

(assert (=> b!227056 d!63155))

(declare-fun d!63157 () Bool)

(assert (=> d!63157 (= (seqFromList!664 lt!88008) (fromListB!246 lt!88008))))

(declare-fun bs!24327 () Bool)

(assert (= bs!24327 d!63157))

(declare-fun m!269117 () Bool)

(assert (=> bs!24327 m!269117))

(assert (=> b!227056 d!63157))

(declare-fun d!63159 () Bool)

(assert (=> d!63159 (= (inv!4288 (tag!841 (rule!1198 (h!8837 tokens!465)))) (= (mod (str.len (value!22640 (tag!841 (rule!1198 (h!8837 tokens!465))))) 2) 0))))

(assert (=> b!227077 d!63159))

(declare-fun d!63161 () Bool)

(declare-fun res!105067 () Bool)

(declare-fun e!141013 () Bool)

(assert (=> d!63161 (=> (not res!105067) (not e!141013))))

(assert (=> d!63161 (= res!105067 (semiInverseModEq!221 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toValue!1338 (transformation!643 (rule!1198 (h!8837 tokens!465))))))))

(assert (=> d!63161 (= (inv!4291 (transformation!643 (rule!1198 (h!8837 tokens!465)))) e!141013)))

(declare-fun b!228239 () Bool)

(assert (=> b!228239 (= e!141013 (equivClasses!204 (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toValue!1338 (transformation!643 (rule!1198 (h!8837 tokens!465))))))))

(assert (= (and d!63161 res!105067) b!228239))

(declare-fun m!269119 () Bool)

(assert (=> d!63161 m!269119))

(declare-fun m!269121 () Bool)

(assert (=> b!228239 m!269121))

(assert (=> b!227077 d!63161))

(declare-fun d!63163 () Bool)

(declare-fun lt!88599 () Bool)

(declare-fun e!141015 () Bool)

(assert (=> d!63163 (= lt!88599 e!141015)))

(declare-fun res!105068 () Bool)

(assert (=> d!63163 (=> (not res!105068) (not e!141015))))

(assert (=> d!63163 (= res!105068 (= (list!1321 (_1!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 (h!8837 tokens!465)))))) (list!1321 (singletonSeq!195 (h!8837 tokens!465)))))))

(declare-fun e!141014 () Bool)

(assert (=> d!63163 (= lt!88599 e!141014)))

(declare-fun res!105070 () Bool)

(assert (=> d!63163 (=> (not res!105070) (not e!141014))))

(declare-fun lt!88598 () tuple2!3702)

(assert (=> d!63163 (= res!105070 (= (size!2755 (_1!2067 lt!88598)) 1))))

(assert (=> d!63163 (= lt!88598 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 (h!8837 tokens!465)))))))

(assert (=> d!63163 (not (isEmpty!1959 rules!1920))))

(assert (=> d!63163 (= (rulesProduceIndividualToken!278 thiss!17480 rules!1920 (h!8837 tokens!465)) lt!88599)))

(declare-fun b!228240 () Bool)

(declare-fun res!105069 () Bool)

(assert (=> b!228240 (=> (not res!105069) (not e!141014))))

(assert (=> b!228240 (= res!105069 (= (apply!614 (_1!2067 lt!88598) 0) (h!8837 tokens!465)))))

(declare-fun b!228241 () Bool)

(assert (=> b!228241 (= e!141014 (isEmpty!1960 (_2!2067 lt!88598)))))

(declare-fun b!228242 () Bool)

(assert (=> b!228242 (= e!141015 (isEmpty!1960 (_2!2067 (lex!329 thiss!17480 rules!1920 (print!260 thiss!17480 (singletonSeq!195 (h!8837 tokens!465)))))))))

(assert (= (and d!63163 res!105070) b!228240))

(assert (= (and b!228240 res!105069) b!228241))

(assert (= (and d!63163 res!105068) b!228242))

(assert (=> d!63163 m!267029))

(declare-fun m!269123 () Bool)

(assert (=> d!63163 m!269123))

(assert (=> d!63163 m!267029))

(declare-fun m!269125 () Bool)

(assert (=> d!63163 m!269125))

(assert (=> d!63163 m!267081))

(assert (=> d!63163 m!268949))

(declare-fun m!269127 () Bool)

(assert (=> d!63163 m!269127))

(declare-fun m!269129 () Bool)

(assert (=> d!63163 m!269129))

(assert (=> d!63163 m!267029))

(assert (=> d!63163 m!268949))

(declare-fun m!269131 () Bool)

(assert (=> b!228240 m!269131))

(declare-fun m!269133 () Bool)

(assert (=> b!228241 m!269133))

(assert (=> b!228242 m!267029))

(assert (=> b!228242 m!267029))

(assert (=> b!228242 m!268949))

(assert (=> b!228242 m!268949))

(assert (=> b!228242 m!269127))

(declare-fun m!269135 () Bool)

(assert (=> b!228242 m!269135))

(assert (=> b!227078 d!63163))

(declare-fun d!63165 () Bool)

(declare-fun lt!88600 () BalanceConc!2224)

(assert (=> d!63165 (= (list!1320 lt!88600) (printList!213 thiss!17480 (list!1321 lt!87976)))))

(assert (=> d!63165 (= lt!88600 (printTailRec!223 thiss!17480 lt!87976 0 (BalanceConc!2225 Empty!1108)))))

(assert (=> d!63165 (= (print!260 thiss!17480 lt!87976) lt!88600)))

(declare-fun bs!24328 () Bool)

(assert (= bs!24328 d!63165))

(declare-fun m!269137 () Bool)

(assert (=> bs!24328 m!269137))

(declare-fun m!269139 () Bool)

(assert (=> bs!24328 m!269139))

(assert (=> bs!24328 m!269139))

(declare-fun m!269141 () Bool)

(assert (=> bs!24328 m!269141))

(assert (=> bs!24328 m!267027))

(assert (=> b!227057 d!63165))

(declare-fun d!63167 () Bool)

(declare-fun e!141016 () Bool)

(assert (=> d!63167 e!141016))

(declare-fun res!105071 () Bool)

(assert (=> d!63167 (=> (not res!105071) (not e!141016))))

(declare-fun lt!88601 () BalanceConc!2226)

(assert (=> d!63167 (= res!105071 (= (list!1321 lt!88601) (Cons!3440 (h!8837 tokens!465) Nil!3440)))))

(assert (=> d!63167 (= lt!88601 (singleton!78 (h!8837 tokens!465)))))

(assert (=> d!63167 (= (singletonSeq!195 (h!8837 tokens!465)) lt!88601)))

(declare-fun b!228243 () Bool)

(assert (=> b!228243 (= e!141016 (isBalanced!295 (c!43555 lt!88601)))))

(assert (= (and d!63167 res!105071) b!228243))

(declare-fun m!269143 () Bool)

(assert (=> d!63167 m!269143))

(declare-fun m!269145 () Bool)

(assert (=> d!63167 m!269145))

(declare-fun m!269147 () Bool)

(assert (=> b!228243 m!269147))

(assert (=> b!227057 d!63167))

(declare-fun d!63169 () Bool)

(declare-fun c!43804 () Bool)

(assert (=> d!63169 (= c!43804 ((_ is Cons!3440) (Cons!3440 (h!8837 tokens!465) Nil!3440)))))

(declare-fun e!141019 () List!3448)

(assert (=> d!63169 (= (printList!213 thiss!17480 (Cons!3440 (h!8837 tokens!465) Nil!3440)) e!141019)))

(declare-fun b!228248 () Bool)

(assert (=> b!228248 (= e!141019 (++!862 (list!1320 (charsOf!298 (h!8837 (Cons!3440 (h!8837 tokens!465) Nil!3440)))) (printList!213 thiss!17480 (t!33316 (Cons!3440 (h!8837 tokens!465) Nil!3440)))))))

(declare-fun b!228249 () Bool)

(assert (=> b!228249 (= e!141019 Nil!3438)))

(assert (= (and d!63169 c!43804) b!228248))

(assert (= (and d!63169 (not c!43804)) b!228249))

(declare-fun m!269149 () Bool)

(assert (=> b!228248 m!269149))

(assert (=> b!228248 m!269149))

(declare-fun m!269151 () Bool)

(assert (=> b!228248 m!269151))

(declare-fun m!269153 () Bool)

(assert (=> b!228248 m!269153))

(assert (=> b!228248 m!269151))

(assert (=> b!228248 m!269153))

(declare-fun m!269155 () Bool)

(assert (=> b!228248 m!269155))

(assert (=> b!227057 d!63169))

(declare-fun d!63171 () Bool)

(declare-fun lt!88603 () BalanceConc!2224)

(assert (=> d!63171 (= (list!1320 lt!88603) (printListTailRec!97 thiss!17480 (dropList!130 lt!87976 0) (list!1320 (BalanceConc!2225 Empty!1108))))))

(declare-fun e!141021 () BalanceConc!2224)

(assert (=> d!63171 (= lt!88603 e!141021)))

(declare-fun c!43805 () Bool)

(assert (=> d!63171 (= c!43805 (>= 0 (size!2755 lt!87976)))))

(declare-fun e!141020 () Bool)

(assert (=> d!63171 e!141020))

(declare-fun res!105072 () Bool)

(assert (=> d!63171 (=> (not res!105072) (not e!141020))))

(assert (=> d!63171 (= res!105072 (>= 0 0))))

(assert (=> d!63171 (= (printTailRec!223 thiss!17480 lt!87976 0 (BalanceConc!2225 Empty!1108)) lt!88603)))

(declare-fun b!228250 () Bool)

(assert (=> b!228250 (= e!141020 (<= 0 (size!2755 lt!87976)))))

(declare-fun b!228251 () Bool)

(assert (=> b!228251 (= e!141021 (BalanceConc!2225 Empty!1108))))

(declare-fun b!228252 () Bool)

(assert (=> b!228252 (= e!141021 (printTailRec!223 thiss!17480 lt!87976 (+ 0 1) (++!864 (BalanceConc!2225 Empty!1108) (charsOf!298 (apply!614 lt!87976 0)))))))

(declare-fun lt!88604 () List!3450)

(assert (=> b!228252 (= lt!88604 (list!1321 lt!87976))))

(declare-fun lt!88608 () Unit!3906)

(assert (=> b!228252 (= lt!88608 (lemmaDropApply!170 lt!88604 0))))

(assert (=> b!228252 (= (head!781 (drop!183 lt!88604 0)) (apply!619 lt!88604 0))))

(declare-fun lt!88605 () Unit!3906)

(assert (=> b!228252 (= lt!88605 lt!88608)))

(declare-fun lt!88607 () List!3450)

(assert (=> b!228252 (= lt!88607 (list!1321 lt!87976))))

(declare-fun lt!88602 () Unit!3906)

(assert (=> b!228252 (= lt!88602 (lemmaDropTail!162 lt!88607 0))))

(assert (=> b!228252 (= (tail!426 (drop!183 lt!88607 0)) (drop!183 lt!88607 (+ 0 1)))))

(declare-fun lt!88606 () Unit!3906)

(assert (=> b!228252 (= lt!88606 lt!88602)))

(assert (= (and d!63171 res!105072) b!228250))

(assert (= (and d!63171 c!43805) b!228251))

(assert (= (and d!63171 (not c!43805)) b!228252))

(declare-fun m!269157 () Bool)

(assert (=> d!63171 m!269157))

(declare-fun m!269159 () Bool)

(assert (=> d!63171 m!269159))

(assert (=> d!63171 m!269159))

(assert (=> d!63171 m!267811))

(declare-fun m!269161 () Bool)

(assert (=> d!63171 m!269161))

(assert (=> d!63171 m!267811))

(declare-fun m!269163 () Bool)

(assert (=> d!63171 m!269163))

(assert (=> b!228250 m!269157))

(declare-fun m!269165 () Bool)

(assert (=> b!228252 m!269165))

(declare-fun m!269167 () Bool)

(assert (=> b!228252 m!269167))

(declare-fun m!269169 () Bool)

(assert (=> b!228252 m!269169))

(assert (=> b!228252 m!269139))

(declare-fun m!269171 () Bool)

(assert (=> b!228252 m!269171))

(declare-fun m!269173 () Bool)

(assert (=> b!228252 m!269173))

(declare-fun m!269175 () Bool)

(assert (=> b!228252 m!269175))

(assert (=> b!228252 m!269169))

(declare-fun m!269177 () Bool)

(assert (=> b!228252 m!269177))

(declare-fun m!269179 () Bool)

(assert (=> b!228252 m!269179))

(declare-fun m!269181 () Bool)

(assert (=> b!228252 m!269181))

(assert (=> b!228252 m!269179))

(declare-fun m!269183 () Bool)

(assert (=> b!228252 m!269183))

(declare-fun m!269185 () Bool)

(assert (=> b!228252 m!269185))

(assert (=> b!228252 m!269177))

(assert (=> b!228252 m!269171))

(assert (=> b!228252 m!269165))

(declare-fun m!269187 () Bool)

(assert (=> b!228252 m!269187))

(assert (=> b!227057 d!63171))

(declare-fun d!63173 () Bool)

(assert (=> d!63173 (= (list!1320 lt!88005) (list!1324 (c!43553 lt!88005)))))

(declare-fun bs!24329 () Bool)

(assert (= bs!24329 d!63173))

(declare-fun m!269189 () Bool)

(assert (=> bs!24329 m!269189))

(assert (=> b!227057 d!63173))

(declare-fun b!228263 () Bool)

(declare-fun b_free!8517 () Bool)

(declare-fun b_next!8517 () Bool)

(assert (=> b!228263 (= b_free!8517 (not b_next!8517))))

(declare-fun tp!93532 () Bool)

(declare-fun b_and!16929 () Bool)

(assert (=> b!228263 (= tp!93532 b_and!16929)))

(declare-fun b_free!8519 () Bool)

(declare-fun b_next!8519 () Bool)

(assert (=> b!228263 (= b_free!8519 (not b_next!8519))))

(declare-fun tb!11397 () Bool)

(declare-fun t!33397 () Bool)

(assert (=> (and b!228263 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170)))) t!33397) tb!11397))

(declare-fun result!14578 () Bool)

(assert (= result!14578 result!14530))

(assert (=> d!63093 t!33397))

(declare-fun t!33399 () Bool)

(declare-fun tb!11399 () Bool)

(assert (=> (and b!228263 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 lt!87988)))) t!33399) tb!11399))

(declare-fun result!14580 () Bool)

(assert (= result!14580 result!14538))

(assert (=> d!62827 t!33399))

(declare-fun tb!11401 () Bool)

(declare-fun t!33401 () Bool)

(assert (=> (and b!228263 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465))))) t!33401) tb!11401))

(declare-fun result!14582 () Bool)

(assert (= result!14582 result!14544))

(assert (=> b!227771 t!33401))

(assert (=> b!227451 t!33397))

(assert (=> d!63085 t!33401))

(declare-fun b_and!16931 () Bool)

(declare-fun tp!93533 () Bool)

(assert (=> b!228263 (= tp!93533 (and (=> t!33401 result!14582) (=> t!33399 result!14580) (=> t!33397 result!14578) b_and!16931))))

(declare-fun e!141032 () Bool)

(assert (=> b!228263 (= e!141032 (and tp!93532 tp!93533))))

(declare-fun e!141033 () Bool)

(declare-fun b!228262 () Bool)

(declare-fun tp!93531 () Bool)

(assert (=> b!228262 (= e!141033 (and tp!93531 (inv!4288 (tag!841 (h!8836 (t!33315 rules!1920)))) (inv!4291 (transformation!643 (h!8836 (t!33315 rules!1920)))) e!141032))))

(declare-fun b!228261 () Bool)

(declare-fun e!141030 () Bool)

(declare-fun tp!93530 () Bool)

(assert (=> b!228261 (= e!141030 (and e!141033 tp!93530))))

(assert (=> b!227048 (= tp!93455 e!141030)))

(assert (= b!228262 b!228263))

(assert (= b!228261 b!228262))

(assert (= (and b!227048 ((_ is Cons!3439) (t!33315 rules!1920))) b!228261))

(declare-fun m!269191 () Bool)

(assert (=> b!228262 m!269191))

(declare-fun m!269193 () Bool)

(assert (=> b!228262 m!269193))

(declare-fun b!228277 () Bool)

(declare-fun b_free!8521 () Bool)

(declare-fun b_next!8521 () Bool)

(assert (=> b!228277 (= b_free!8521 (not b_next!8521))))

(declare-fun tp!93544 () Bool)

(declare-fun b_and!16933 () Bool)

(assert (=> b!228277 (= tp!93544 b_and!16933)))

(declare-fun b_free!8523 () Bool)

(declare-fun b_next!8523 () Bool)

(assert (=> b!228277 (= b_free!8523 (not b_next!8523))))

(declare-fun tb!11403 () Bool)

(declare-fun t!33403 () Bool)

(assert (=> (and b!228277 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170)))) t!33403) tb!11403))

(declare-fun result!14586 () Bool)

(assert (= result!14586 result!14530))

(assert (=> d!63093 t!33403))

(declare-fun tb!11405 () Bool)

(declare-fun t!33405 () Bool)

(assert (=> (and b!228277 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 lt!87988)))) t!33405) tb!11405))

(declare-fun result!14588 () Bool)

(assert (= result!14588 result!14538))

(assert (=> d!62827 t!33405))

(declare-fun t!33407 () Bool)

(declare-fun tb!11407 () Bool)

(assert (=> (and b!228277 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465))))) t!33407) tb!11407))

(declare-fun result!14590 () Bool)

(assert (= result!14590 result!14544))

(assert (=> b!227771 t!33407))

(assert (=> b!227451 t!33403))

(assert (=> d!63085 t!33407))

(declare-fun tp!93546 () Bool)

(declare-fun b_and!16935 () Bool)

(assert (=> b!228277 (= tp!93546 (and (=> t!33407 result!14590) (=> t!33405 result!14588) (=> t!33403 result!14586) b_and!16935))))

(declare-fun e!141047 () Bool)

(assert (=> b!228277 (= e!141047 (and tp!93544 tp!93546))))

(declare-fun e!141049 () Bool)

(declare-fun b!228276 () Bool)

(declare-fun tp!93545 () Bool)

(assert (=> b!228276 (= e!141049 (and tp!93545 (inv!4288 (tag!841 (rule!1198 (h!8837 (t!33316 tokens!465))))) (inv!4291 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) e!141047))))

(declare-fun b!228274 () Bool)

(declare-fun tp!93547 () Bool)

(declare-fun e!141050 () Bool)

(declare-fun e!141046 () Bool)

(assert (=> b!228274 (= e!141046 (and (inv!4292 (h!8837 (t!33316 tokens!465))) e!141050 tp!93547))))

(assert (=> b!227069 (= tp!93447 e!141046)))

(declare-fun b!228275 () Bool)

(declare-fun tp!93548 () Bool)

(assert (=> b!228275 (= e!141050 (and (inv!21 (value!22641 (h!8837 (t!33316 tokens!465)))) e!141049 tp!93548))))

(assert (= b!228276 b!228277))

(assert (= b!228275 b!228276))

(assert (= b!228274 b!228275))

(assert (= (and b!227069 ((_ is Cons!3440) (t!33316 tokens!465))) b!228274))

(declare-fun m!269195 () Bool)

(assert (=> b!228276 m!269195))

(declare-fun m!269197 () Bool)

(assert (=> b!228276 m!269197))

(declare-fun m!269199 () Bool)

(assert (=> b!228274 m!269199))

(declare-fun m!269201 () Bool)

(assert (=> b!228275 m!269201))

(declare-fun b!228291 () Bool)

(declare-fun e!141054 () Bool)

(declare-fun tp!93560 () Bool)

(declare-fun tp!93559 () Bool)

(assert (=> b!228291 (= e!141054 (and tp!93560 tp!93559))))

(declare-fun b!228290 () Bool)

(declare-fun tp!93563 () Bool)

(assert (=> b!228290 (= e!141054 tp!93563)))

(declare-fun b!228289 () Bool)

(declare-fun tp!93562 () Bool)

(declare-fun tp!93561 () Bool)

(assert (=> b!228289 (= e!141054 (and tp!93562 tp!93561))))

(declare-fun b!228288 () Bool)

(declare-fun tp_is_empty!1739 () Bool)

(assert (=> b!228288 (= e!141054 tp_is_empty!1739)))

(assert (=> b!227060 (= tp!93449 e!141054)))

(assert (= (and b!227060 ((_ is ElementMatch!867) (regex!643 (h!8836 rules!1920)))) b!228288))

(assert (= (and b!227060 ((_ is Concat!1533) (regex!643 (h!8836 rules!1920)))) b!228289))

(assert (= (and b!227060 ((_ is Star!867) (regex!643 (h!8836 rules!1920)))) b!228290))

(assert (= (and b!227060 ((_ is Union!867) (regex!643 (h!8836 rules!1920)))) b!228291))

(declare-fun b!228296 () Bool)

(declare-fun e!141057 () Bool)

(declare-fun tp!93566 () Bool)

(assert (=> b!228296 (= e!141057 (and tp_is_empty!1739 tp!93566))))

(assert (=> b!227096 (= tp!93454 e!141057)))

(assert (= (and b!227096 ((_ is Cons!3438) (originalCharacters!686 separatorToken!170))) b!228296))

(declare-fun b!228297 () Bool)

(declare-fun e!141058 () Bool)

(declare-fun tp!93567 () Bool)

(assert (=> b!228297 (= e!141058 (and tp_is_empty!1739 tp!93567))))

(assert (=> b!227097 (= tp!93452 e!141058)))

(assert (= (and b!227097 ((_ is Cons!3438) (originalCharacters!686 (h!8837 tokens!465)))) b!228297))

(declare-fun b!228301 () Bool)

(declare-fun e!141059 () Bool)

(declare-fun tp!93569 () Bool)

(declare-fun tp!93568 () Bool)

(assert (=> b!228301 (= e!141059 (and tp!93569 tp!93568))))

(declare-fun b!228300 () Bool)

(declare-fun tp!93572 () Bool)

(assert (=> b!228300 (= e!141059 tp!93572)))

(declare-fun b!228299 () Bool)

(declare-fun tp!93571 () Bool)

(declare-fun tp!93570 () Bool)

(assert (=> b!228299 (= e!141059 (and tp!93571 tp!93570))))

(declare-fun b!228298 () Bool)

(assert (=> b!228298 (= e!141059 tp_is_empty!1739)))

(assert (=> b!227087 (= tp!93443 e!141059)))

(assert (= (and b!227087 ((_ is ElementMatch!867) (regex!643 (rule!1198 separatorToken!170)))) b!228298))

(assert (= (and b!227087 ((_ is Concat!1533) (regex!643 (rule!1198 separatorToken!170)))) b!228299))

(assert (= (and b!227087 ((_ is Star!867) (regex!643 (rule!1198 separatorToken!170)))) b!228300))

(assert (= (and b!227087 ((_ is Union!867) (regex!643 (rule!1198 separatorToken!170)))) b!228301))

(declare-fun b!228304 () Bool)

(declare-fun e!141062 () Bool)

(assert (=> b!228304 (= e!141062 true)))

(declare-fun b!228303 () Bool)

(declare-fun e!141061 () Bool)

(assert (=> b!228303 (= e!141061 e!141062)))

(declare-fun b!228302 () Bool)

(declare-fun e!141060 () Bool)

(assert (=> b!228302 (= e!141060 e!141061)))

(assert (=> b!227106 e!141060))

(assert (= b!228303 b!228304))

(assert (= b!228302 b!228303))

(assert (= (and b!227106 ((_ is Cons!3439) (t!33315 rules!1920))) b!228302))

(assert (=> b!228304 (< (dynLambda!1595 order!2381 (toValue!1338 (transformation!643 (h!8836 (t!33315 rules!1920))))) (dynLambda!1596 order!2383 lambda!7138))))

(assert (=> b!228304 (< (dynLambda!1597 order!2385 (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920))))) (dynLambda!1596 order!2383 lambda!7138))))

(declare-fun b!228308 () Bool)

(declare-fun e!141063 () Bool)

(declare-fun tp!93574 () Bool)

(declare-fun tp!93573 () Bool)

(assert (=> b!228308 (= e!141063 (and tp!93574 tp!93573))))

(declare-fun b!228307 () Bool)

(declare-fun tp!93577 () Bool)

(assert (=> b!228307 (= e!141063 tp!93577)))

(declare-fun b!228306 () Bool)

(declare-fun tp!93576 () Bool)

(declare-fun tp!93575 () Bool)

(assert (=> b!228306 (= e!141063 (and tp!93576 tp!93575))))

(declare-fun b!228305 () Bool)

(assert (=> b!228305 (= e!141063 tp_is_empty!1739)))

(assert (=> b!227077 (= tp!93453 e!141063)))

(assert (= (and b!227077 ((_ is ElementMatch!867) (regex!643 (rule!1198 (h!8837 tokens!465))))) b!228305))

(assert (= (and b!227077 ((_ is Concat!1533) (regex!643 (rule!1198 (h!8837 tokens!465))))) b!228306))

(assert (= (and b!227077 ((_ is Star!867) (regex!643 (rule!1198 (h!8837 tokens!465))))) b!228307))

(assert (= (and b!227077 ((_ is Union!867) (regex!643 (rule!1198 (h!8837 tokens!465))))) b!228308))

(declare-fun b_lambda!6337 () Bool)

(assert (= b_lambda!6331 (or b!227072 b_lambda!6337)))

(declare-fun bs!24330 () Bool)

(declare-fun d!63175 () Bool)

(assert (= bs!24330 (and d!63175 b!227072)))

(assert (=> bs!24330 (= (dynLambda!1600 lambda!7137 (h!8837 tokens!465)) (not (isSeparator!643 (rule!1198 (h!8837 tokens!465)))))))

(assert (=> b!228133 d!63175))

(declare-fun b_lambda!6339 () Bool)

(assert (= b_lambda!6335 (or b!227072 b_lambda!6339)))

(declare-fun bs!24331 () Bool)

(declare-fun d!63177 () Bool)

(assert (= bs!24331 (and d!63177 b!227072)))

(assert (=> bs!24331 (= (dynLambda!1600 lambda!7137 (h!8837 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)))) (not (isSeparator!643 (rule!1198 (h!8837 (_1!2066 (lexList!157 thiss!17480 rules!1920 lt!88002)))))))))

(assert (=> b!228223 d!63177))

(declare-fun b_lambda!6341 () Bool)

(assert (= b_lambda!6309 (or (and b!228277 b_free!8523 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227093 b_free!8503 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227064 b_free!8507 (= (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227063 b_free!8499) (and b!228263 b_free!8519 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) b_lambda!6341)))

(declare-fun b_lambda!6343 () Bool)

(assert (= b_lambda!6325 (or (and b!228263 b_free!8519 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227063 b_free!8499 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!228277 b_free!8523 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227093 b_free!8503 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227064 b_free!8507) b_lambda!6343)))

(declare-fun b_lambda!6345 () Bool)

(assert (= b_lambda!6291 (or b!227072 b_lambda!6345)))

(declare-fun bs!24332 () Bool)

(declare-fun d!63179 () Bool)

(assert (= bs!24332 (and d!63179 b!227072)))

(assert (=> bs!24332 (= (dynLambda!1600 lambda!7137 (h!8837 lt!88003)) (not (isSeparator!643 (rule!1198 (h!8837 lt!88003)))))))

(assert (=> b!227762 d!63179))

(declare-fun b_lambda!6347 () Bool)

(assert (= b_lambda!6285 (or b!227054 b_lambda!6347)))

(declare-fun bs!24333 () Bool)

(declare-fun d!63181 () Bool)

(assert (= bs!24333 (and d!63181 b!227054)))

(assert (=> bs!24333 (= (dynLambda!1600 lambda!7138 lt!87988) (rulesProduceIndividualToken!278 thiss!17480 rules!1920 lt!87988))))

(assert (=> bs!24333 m!267141))

(assert (=> d!62817 d!63181))

(declare-fun b_lambda!6349 () Bool)

(assert (= b_lambda!6283 (or (and b!228263 b_free!8519 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227063 b_free!8499 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!228277 b_free!8523 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227093 b_free!8503 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))))) (and b!227064 b_free!8507) b_lambda!6349)))

(declare-fun b_lambda!6351 () Bool)

(assert (= b_lambda!6293 (or (and b!228277 b_free!8523 (= (toChars!1197 (transformation!643 (rule!1198 (h!8837 (t!33316 tokens!465))))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227093 b_free!8503 (= (toChars!1197 (transformation!643 (h!8836 rules!1920))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227064 b_free!8507 (= (toChars!1197 (transformation!643 (rule!1198 separatorToken!170))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) (and b!227063 b_free!8499) (and b!228263 b_free!8519 (= (toChars!1197 (transformation!643 (h!8836 (t!33315 rules!1920)))) (toChars!1197 (transformation!643 (rule!1198 (h!8837 tokens!465)))))) b_lambda!6351)))

(declare-fun b_lambda!6353 () Bool)

(assert (= b_lambda!6333 (or b!227054 b_lambda!6353)))

(declare-fun bs!24334 () Bool)

(declare-fun d!63183 () Bool)

(assert (= bs!24334 (and d!63183 b!227054)))

(assert (=> bs!24334 (= (dynLambda!1600 lambda!7138 (h!8837 tokens!465)) (rulesProduceIndividualToken!278 thiss!17480 rules!1920 (h!8837 tokens!465)))))

(assert (=> bs!24334 m!267047))

(assert (=> d!63145 d!63183))

(check-sat (not bm!11683) (not b!227743) (not b!228109) (not b!227675) (not b!228213) (not b!227604) (not b!227602) (not b!228184) (not d!63091) (not d!62773) (not b!227646) (not d!63129) (not b!227647) (not b!228210) (not b!228297) (not b!227658) (not bm!11694) b_and!16923 (not bm!11611) (not b!227502) (not d!62907) (not d!63121) (not b!227355) (not d!62787) (not d!63137) (not b!228186) (not d!62927) (not b!227498) (not b!227601) (not b!228155) (not b!228110) (not b!228276) (not b!228091) (not b_next!8523) b_and!16931 (not b!228035) (not b!227431) (not b!227482) (not b!228291) (not d!62921) (not b!227451) (not b!227251) (not b_lambda!6287) (not b!227835) (not b!227481) (not d!63135) (not b!228178) (not b!227299) (not b!228123) (not b!227487) (not d!63145) (not b!227297) (not b!228250) (not d!62809) (not b!228037) (not d!62965) (not b!227249) (not b!227259) (not b!227262) (not b!228215) (not b!227732) b_and!16927 (not d!62905) (not b!228242) (not b!228211) (not b!228300) (not d!62967) (not b!228182) (not bm!11627) (not bm!11692) (not d!62815) (not b!227876) (not b_lambda!6337) (not b!228111) (not b!228141) (not b!228125) (not b!228126) (not b!228248) (not b!227444) (not b!227827) (not b!227503) (not b!227640) (not d!62935) (not b!228104) (not b!227484) (not bs!24333) (not bm!11626) (not b_next!8503) (not b!227742) (not b_next!8507) (not d!63003) (not b!227874) (not b!228204) (not b!227761) (not b!228176) (not b!227872) (not b!227836) (not b!227757) (not b!227356) (not b_lambda!6339) (not b!228207) (not b!228139) (not b!227476) (not d!62771) (not b!228036) (not b!228240) (not b!228238) (not d!62813) (not d!62817) (not d!63139) (not b!227430) (not d!63093) (not b!228144) (not b!228039) (not d!63001) (not b!228175) (not d!63143) (not b!227660) (not b!228216) (not b!228054) (not d!63151) (not bs!24334) (not d!63017) (not b!228115) (not d!62873) (not bm!11685) (not b!227491) (not d!62807) (not b!228033) (not b!227489) (not d!62803) (not bm!11689) (not b!227317) (not d!62775) (not b!227686) (not b!228146) (not b!227659) (not bm!11653) (not b!228206) (not d!63157) (not b!227682) (not b!228118) (not d!62961) (not b!227357) (not bm!11701) (not d!63089) (not b!227882) (not d!63163) (not b!227445) (not d!62811) (not b!227832) (not d!63119) (not d!62883) b_and!16857 (not d!62929) (not d!62959) (not bm!11610) (not d!62909) (not b!228121) (not d!62835) (not b_lambda!6341) (not b!227504) (not b!228157) (not b!228243) (not d!63171) (not b!228161) (not b!228134) (not d!62789) (not b!228302) (not b!227573) (not b!227500) (not b!227480) (not d!62737) (not b!227677) (not b!227770) (not b!227492) (not b!228209) (not d!63083) (not b!227452) b_and!16929 b_and!16933 (not b!228237) (not b_next!8499) (not b!228179) (not b_lambda!6353) (not bm!11565) (not d!62863) (not b!228261) (not d!63173) (not b!227764) (not bm!11564) (not bm!11655) (not bm!11652) (not bm!11695) (not b!227314) (not b!228262) (not b!227295) (not d!63153) (not b!228239) (not b!228173) (not b!228158) (not tb!11361) (not b!228160) (not b!227311) (not b!227733) (not d!62783) (not b!228289) (not bm!11612) (not d!63019) (not b!228181) (not b!228183) (not b!227258) (not b!228275) (not b!227479) b_and!16935 (not b!227250) (not b!228235) (not b!227608) (not b!227765) (not b_lambda!6345) (not d!62923) (not b!227763) (not bm!11688) (not b!227303) (not d!63161) (not b_next!8519) (not b!228030) (not b!227681) (not b_next!8501) (not d!62963) (not b!227529) (not d!62829) (not tb!11373) (not b!228180) (not b!228143) (not b!228107) (not b!228147) (not b!227490) (not bm!11684) (not b!227877) (not b!227309) (not bm!11690) (not bm!11680) (not b_lambda!6351) (not b!227881) (not d!62825) (not bm!11651) (not b!228218) b_and!16853 (not tb!11367) (not b_next!8497) (not b!227434) (not b!227683) (not bm!11633) (not d!62951) (not b!227428) (not d!62995) (not b!227639) (not b!228301) (not b!227638) (not d!63106) (not d!62999) (not d!63165) (not b!227676) (not b!228203) (not d!62859) (not b_next!8521) (not b!227599) (not b!228252) (not b!228290) b_and!16925 (not bm!11691) (not b!227869) (not bm!11628) (not d!62767) (not bm!11696) (not d!63117) (not b!227606) (not b!227826) (not b!227429) (not bm!11700) (not d!63147) (not b!227605) (not b_lambda!6343) (not b!227603) (not d!63085) (not d!63167) tp_is_empty!1739 (not b!228308) (not b!227773) (not b!227641) (not b!228113) (not d!62777) (not d!62827) (not d!62919) (not d!63155) (not b!227300) (not b!227477) (not bm!11697) (not b!227457) (not d!62913) (not b_lambda!6349) (not b!228153) (not b!228274) (not d!62865) (not d!62931) (not b!227427) (not d!62955) (not d!63125) (not b!227744) (not d!62879) (not d!63087) (not b!228222) (not d!62843) (not d!62925) (not b!228299) (not b!228241) (not b_next!8505) (not d!62997) (not b!228307) (not b!228296) (not b!227313) (not b!227478) (not bm!11600) (not b!227767) (not d!63141) (not b!227316) (not b!227648) (not d!62957) (not b!227831) (not b!227501) (not b_lambda!6347) (not b!227531) (not b!228212) b_and!16849 (not bm!11629) (not d!63103) (not b!228208) (not b!228090) (not d!62823) (not b!228306) (not b!227772) (not d!62911) (not b!227302) (not b_next!8517) (not d!62821) (not b!227771))
(check-sat b_and!16923 b_and!16927 b_and!16857 b_and!16935 (not b_next!8505) b_and!16849 (not b_next!8517) (not b_next!8523) b_and!16931 (not b_next!8503) (not b_next!8507) (not b_next!8499) b_and!16929 b_and!16933 (not b_next!8519) (not b_next!8501) b_and!16853 (not b_next!8497) (not b_next!8521) b_and!16925)
