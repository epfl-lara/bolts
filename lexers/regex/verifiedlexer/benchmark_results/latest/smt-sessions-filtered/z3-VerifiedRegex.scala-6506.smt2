; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!342266 () Bool)

(assert start!342266)

(declare-fun b!3658302 () Bool)

(declare-fun b_free!96497 () Bool)

(declare-fun b_next!97201 () Bool)

(assert (=> b!3658302 (= b_free!96497 (not b_next!97201))))

(declare-fun tp!1114683 () Bool)

(declare-fun b_and!271259 () Bool)

(assert (=> b!3658302 (= tp!1114683 b_and!271259)))

(declare-fun b_free!96499 () Bool)

(declare-fun b_next!97203 () Bool)

(assert (=> b!3658302 (= b_free!96499 (not b_next!97203))))

(declare-fun tp!1114680 () Bool)

(declare-fun b_and!271261 () Bool)

(assert (=> b!3658302 (= tp!1114680 b_and!271261)))

(declare-fun b!3658282 () Bool)

(declare-fun b_free!96501 () Bool)

(declare-fun b_next!97205 () Bool)

(assert (=> b!3658282 (= b_free!96501 (not b_next!97205))))

(declare-fun tp!1114679 () Bool)

(declare-fun b_and!271263 () Bool)

(assert (=> b!3658282 (= tp!1114679 b_and!271263)))

(declare-fun b_free!96503 () Bool)

(declare-fun b_next!97207 () Bool)

(assert (=> b!3658282 (= b_free!96503 (not b_next!97207))))

(declare-fun tp!1114673 () Bool)

(declare-fun b_and!271265 () Bool)

(assert (=> b!3658282 (= tp!1114673 b_and!271265)))

(declare-fun b!3658304 () Bool)

(declare-fun b_free!96505 () Bool)

(declare-fun b_next!97209 () Bool)

(assert (=> b!3658304 (= b_free!96505 (not b_next!97209))))

(declare-fun tp!1114675 () Bool)

(declare-fun b_and!271267 () Bool)

(assert (=> b!3658304 (= tp!1114675 b_and!271267)))

(declare-fun b_free!96507 () Bool)

(declare-fun b_next!97211 () Bool)

(assert (=> b!3658304 (= b_free!96507 (not b_next!97211))))

(declare-fun tp!1114676 () Bool)

(declare-fun b_and!271269 () Bool)

(assert (=> b!3658304 (= tp!1114676 b_and!271269)))

(declare-fun b!3658301 () Bool)

(declare-fun b_free!96509 () Bool)

(declare-fun b_next!97213 () Bool)

(assert (=> b!3658301 (= b_free!96509 (not b_next!97213))))

(declare-fun tp!1114684 () Bool)

(declare-fun b_and!271271 () Bool)

(assert (=> b!3658301 (= tp!1114684 b_and!271271)))

(declare-fun b_free!96511 () Bool)

(declare-fun b_next!97215 () Bool)

(assert (=> b!3658301 (= b_free!96511 (not b_next!97215))))

(declare-fun tp!1114674 () Bool)

(declare-fun b_and!271273 () Bool)

(assert (=> b!3658301 (= tp!1114674 b_and!271273)))

(declare-fun b!3658267 () Bool)

(declare-fun e!2265189 () Bool)

(declare-fun tp_is_empty!18185 () Bool)

(declare-fun tp!1114672 () Bool)

(assert (=> b!3658267 (= e!2265189 (and tp_is_empty!18185 tp!1114672))))

(declare-fun b!3658268 () Bool)

(assert (=> b!3658268 false))

(declare-datatypes ((Unit!55832 0))(
  ( (Unit!55833) )
))
(declare-fun lt!1271786 () Unit!55832)

(declare-fun call!264575 () Unit!55832)

(assert (=> b!3658268 (= lt!1271786 call!264575)))

(declare-fun call!264572 () Bool)

(assert (=> b!3658268 (not call!264572)))

(declare-datatypes ((List!38723 0))(
  ( (Nil!38599) (Cons!38599 (h!44019 (_ BitVec 16)) (t!298226 List!38723)) )
))
(declare-datatypes ((TokenValue!6022 0))(
  ( (FloatLiteralValue!12044 (text!42599 List!38723)) (TokenValueExt!6021 (__x!24261 Int)) (Broken!30110 (value!185506 List!38723)) (Object!6145) (End!6022) (Def!6022) (Underscore!6022) (Match!6022) (Else!6022) (Error!6022) (Case!6022) (If!6022) (Extends!6022) (Abstract!6022) (Class!6022) (Val!6022) (DelimiterValue!12044 (del!6082 List!38723)) (KeywordValue!6028 (value!185507 List!38723)) (CommentValue!12044 (value!185508 List!38723)) (WhitespaceValue!12044 (value!185509 List!38723)) (IndentationValue!6022 (value!185510 List!38723)) (String!43443) (Int32!6022) (Broken!30111 (value!185511 List!38723)) (Boolean!6023) (Unit!55834) (OperatorValue!6025 (op!6082 List!38723)) (IdentifierValue!12044 (value!185512 List!38723)) (IdentifierValue!12045 (value!185513 List!38723)) (WhitespaceValue!12045 (value!185514 List!38723)) (True!12044) (False!12044) (Broken!30112 (value!185515 List!38723)) (Broken!30113 (value!185516 List!38723)) (True!12045) (RightBrace!6022) (RightBracket!6022) (Colon!6022) (Null!6022) (Comma!6022) (LeftBracket!6022) (False!12045) (LeftBrace!6022) (ImaginaryLiteralValue!6022 (text!42600 List!38723)) (StringLiteralValue!18066 (value!185517 List!38723)) (EOFValue!6022 (value!185518 List!38723)) (IdentValue!6022 (value!185519 List!38723)) (DelimiterValue!12045 (value!185520 List!38723)) (DedentValue!6022 (value!185521 List!38723)) (NewLineValue!6022 (value!185522 List!38723)) (IntegerValue!18066 (value!185523 (_ BitVec 32)) (text!42601 List!38723)) (IntegerValue!18067 (value!185524 Int) (text!42602 List!38723)) (Times!6022) (Or!6022) (Equal!6022) (Minus!6022) (Broken!30114 (value!185525 List!38723)) (And!6022) (Div!6022) (LessEqual!6022) (Mod!6022) (Concat!16573) (Not!6022) (Plus!6022) (SpaceValue!6022 (value!185526 List!38723)) (IntegerValue!18068 (value!185527 Int) (text!42603 List!38723)) (StringLiteralValue!18067 (text!42604 List!38723)) (FloatLiteralValue!12045 (text!42605 List!38723)) (BytesLiteralValue!6022 (value!185528 List!38723)) (CommentValue!12045 (value!185529 List!38723)) (StringLiteralValue!18068 (value!185530 List!38723)) (ErrorTokenValue!6022 (msg!6083 List!38723)) )
))
(declare-datatypes ((C!21288 0))(
  ( (C!21289 (val!12692 Int)) )
))
(declare-datatypes ((Regex!10551 0))(
  ( (ElementMatch!10551 (c!632262 C!21288)) (Concat!16574 (regOne!21614 Regex!10551) (regTwo!21614 Regex!10551)) (EmptyExpr!10551) (Star!10551 (reg!10880 Regex!10551)) (EmptyLang!10551) (Union!10551 (regOne!21615 Regex!10551) (regTwo!21615 Regex!10551)) )
))
(declare-datatypes ((String!43444 0))(
  ( (String!43445 (value!185531 String)) )
))
(declare-datatypes ((List!38724 0))(
  ( (Nil!38600) (Cons!38600 (h!44020 C!21288) (t!298227 List!38724)) )
))
(declare-datatypes ((IArray!23607 0))(
  ( (IArray!23608 (innerList!11861 List!38724)) )
))
(declare-datatypes ((Conc!11801 0))(
  ( (Node!11801 (left!30123 Conc!11801) (right!30453 Conc!11801) (csize!23832 Int) (cheight!12012 Int)) (Leaf!18308 (xs!15003 IArray!23607) (csize!23833 Int)) (Empty!11801) )
))
(declare-datatypes ((BalanceConc!23216 0))(
  ( (BalanceConc!23217 (c!632263 Conc!11801)) )
))
(declare-datatypes ((TokenValueInjection!11472 0))(
  ( (TokenValueInjection!11473 (toValue!8084 Int) (toChars!7943 Int)) )
))
(declare-datatypes ((Rule!11384 0))(
  ( (Rule!11385 (regex!5792 Regex!10551) (tag!6566 String!43444) (isSeparator!5792 Bool) (transformation!5792 TokenValueInjection!11472)) )
))
(declare-datatypes ((List!38725 0))(
  ( (Nil!38601) (Cons!38601 (h!44021 Rule!11384) (t!298228 List!38725)) )
))
(declare-fun rules!3307 () List!38725)

(declare-datatypes ((Token!10950 0))(
  ( (Token!10951 (value!185532 TokenValue!6022) (rule!8600 Rule!11384) (size!29489 Int) (originalCharacters!6506 List!38724)) )
))
(declare-datatypes ((tuple2!38460 0))(
  ( (tuple2!38461 (_1!22364 Token!10950) (_2!22364 List!38724)) )
))
(declare-fun lt!1271773 () tuple2!38460)

(declare-fun lt!1271789 () Unit!55832)

(declare-fun anOtherTypeRule!33 () Rule!11384)

(declare-fun lt!1271774 () C!21288)

(declare-datatypes ((LexerInterface!5381 0))(
  ( (LexerInterfaceExt!5378 (__x!24262 Int)) (Lexer!5379) )
))
(declare-fun thiss!23823 () LexerInterface!5381)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!320 (LexerInterface!5381 List!38725 List!38725 Rule!11384 Rule!11384 C!21288) Unit!55832)

(assert (=> b!3658268 (= lt!1271789 (lemmaSepRuleNotContainsCharContainedInANonSepRule!320 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8600 (_1!22364 lt!1271773)) lt!1271774))))

(declare-fun e!2265187 () Unit!55832)

(declare-fun Unit!55835 () Unit!55832)

(assert (=> b!3658268 (= e!2265187 Unit!55835)))

(declare-fun e!2265183 () Bool)

(declare-fun tp!1114671 () Bool)

(declare-fun rule!403 () Rule!11384)

(declare-fun e!2265184 () Bool)

(declare-fun b!3658269 () Bool)

(declare-fun inv!52061 (String!43444) Bool)

(declare-fun inv!52064 (TokenValueInjection!11472) Bool)

(assert (=> b!3658269 (= e!2265184 (and tp!1114671 (inv!52061 (tag!6566 rule!403)) (inv!52064 (transformation!5792 rule!403)) e!2265183))))

(declare-fun b!3658270 () Bool)

(declare-fun e!2265197 () Bool)

(declare-fun token!511 () Token!10950)

(declare-fun e!2265191 () Bool)

(declare-fun tp!1114678 () Bool)

(assert (=> b!3658270 (= e!2265197 (and tp!1114678 (inv!52061 (tag!6566 (rule!8600 token!511))) (inv!52064 (transformation!5792 (rule!8600 token!511))) e!2265191))))

(declare-fun b!3658271 () Bool)

(declare-fun e!2265194 () Bool)

(declare-fun e!2265199 () Bool)

(declare-fun tp!1114682 () Bool)

(assert (=> b!3658271 (= e!2265194 (and e!2265199 tp!1114682))))

(declare-fun b!3658272 () Bool)

(declare-fun res!1484883 () Bool)

(declare-fun e!2265182 () Bool)

(assert (=> b!3658272 (=> (not res!1484883) (not e!2265182))))

(assert (=> b!3658272 (= res!1484883 (= (rule!8600 token!511) rule!403))))

(declare-fun b!3658273 () Bool)

(declare-fun e!2265201 () Unit!55832)

(assert (=> b!3658273 (= e!2265201 e!2265187)))

(declare-fun lt!1271805 () Unit!55832)

(declare-fun suffix!1395 () List!38724)

(declare-fun lt!1271777 () List!38724)

(declare-fun lt!1271781 () List!38724)

(declare-fun lt!1271799 () List!38724)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!100 (List!38724 List!38724 List!38724 List!38724) Unit!55832)

(assert (=> b!3658273 (= lt!1271805 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!100 lt!1271777 suffix!1395 lt!1271781 lt!1271799))))

(declare-fun contains!7649 (List!38724 C!21288) Bool)

(assert (=> b!3658273 (contains!7649 lt!1271781 lt!1271774)))

(declare-fun c!632259 () Bool)

(assert (=> b!3658273 (= c!632259 (isSeparator!5792 rule!403))))

(declare-fun b!3658274 () Bool)

(declare-fun e!2265208 () Unit!55832)

(declare-fun Unit!55836 () Unit!55832)

(assert (=> b!3658274 (= e!2265208 Unit!55836)))

(declare-fun tp!1114670 () Bool)

(declare-fun b!3658275 () Bool)

(declare-fun e!2265176 () Bool)

(declare-fun inv!21 (TokenValue!6022) Bool)

(assert (=> b!3658275 (= e!2265176 (and (inv!21 (value!185532 token!511)) e!2265197 tp!1114670))))

(declare-fun b!3658276 () Bool)

(declare-fun res!1484888 () Bool)

(declare-fun e!2265179 () Bool)

(assert (=> b!3658276 (=> (not res!1484888) (not e!2265179))))

(assert (=> b!3658276 (= res!1484888 (not (= (isSeparator!5792 anOtherTypeRule!33) (isSeparator!5792 rule!403))))))

(declare-fun b!3658277 () Bool)

(declare-fun res!1484889 () Bool)

(declare-fun e!2265192 () Bool)

(assert (=> b!3658277 (=> res!1484889 e!2265192)))

(declare-fun matchR!5120 (Regex!10551 List!38724) Bool)

(assert (=> b!3658277 (= res!1484889 (not (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781)))))

(declare-fun b!3658278 () Bool)

(declare-fun e!2265200 () Unit!55832)

(declare-fun Unit!55837 () Unit!55832)

(assert (=> b!3658278 (= e!2265200 Unit!55837)))

(declare-fun b!3658279 () Bool)

(declare-fun e!2265205 () Unit!55832)

(declare-fun Unit!55838 () Unit!55832)

(assert (=> b!3658279 (= e!2265205 Unit!55838)))

(declare-fun b!3658280 () Bool)

(declare-fun e!2265177 () Bool)

(assert (=> b!3658280 (= e!2265179 e!2265177)))

(declare-fun res!1484890 () Bool)

(assert (=> b!3658280 (=> (not res!1484890) (not e!2265177))))

(declare-datatypes ((Option!8212 0))(
  ( (None!8211) (Some!8211 (v!38091 tuple2!38460)) )
))
(declare-fun lt!1271796 () Option!8212)

(declare-fun isDefined!6444 (Option!8212) Bool)

(assert (=> b!3658280 (= res!1484890 (isDefined!6444 lt!1271796))))

(declare-fun maxPrefix!2915 (LexerInterface!5381 List!38725 List!38724) Option!8212)

(assert (=> b!3658280 (= lt!1271796 (maxPrefix!2915 thiss!23823 rules!3307 lt!1271777))))

(declare-fun lt!1271794 () BalanceConc!23216)

(declare-fun list!14314 (BalanceConc!23216) List!38724)

(assert (=> b!3658280 (= lt!1271777 (list!14314 lt!1271794))))

(declare-fun charsOf!3806 (Token!10950) BalanceConc!23216)

(assert (=> b!3658280 (= lt!1271794 (charsOf!3806 token!511))))

(declare-fun b!3658281 () Bool)

(declare-fun res!1484892 () Bool)

(declare-fun e!2265180 () Bool)

(assert (=> b!3658281 (=> res!1484892 e!2265180)))

(declare-fun isEmpty!22888 (List!38724) Bool)

(assert (=> b!3658281 (= res!1484892 (isEmpty!22888 suffix!1395))))

(assert (=> b!3658282 (= e!2265183 (and tp!1114679 tp!1114673))))

(declare-fun b!3658283 () Bool)

(declare-fun res!1484885 () Bool)

(assert (=> b!3658283 (=> (not res!1484885) (not e!2265179))))

(declare-fun rulesInvariant!4778 (LexerInterface!5381 List!38725) Bool)

(assert (=> b!3658283 (= res!1484885 (rulesInvariant!4778 thiss!23823 rules!3307))))

(declare-fun b!3658284 () Bool)

(declare-fun e!2265202 () Bool)

(assert (=> b!3658284 (= e!2265180 e!2265202)))

(declare-fun res!1484875 () Bool)

(assert (=> b!3658284 (=> res!1484875 e!2265202)))

(declare-fun lt!1271807 () List!38724)

(assert (=> b!3658284 (= res!1484875 (contains!7649 lt!1271807 lt!1271774))))

(declare-fun head!7816 (List!38724) C!21288)

(assert (=> b!3658284 (= lt!1271774 (head!7816 suffix!1395))))

(declare-fun usedCharacters!1004 (Regex!10551) List!38724)

(assert (=> b!3658284 (= lt!1271807 (usedCharacters!1004 (regex!5792 rule!403)))))

(declare-fun b!3658285 () Bool)

(declare-fun e!2265207 () Unit!55832)

(declare-fun Unit!55839 () Unit!55832)

(assert (=> b!3658285 (= e!2265207 Unit!55839)))

(declare-fun b!3658286 () Bool)

(declare-fun Unit!55840 () Unit!55832)

(assert (=> b!3658286 (= e!2265208 Unit!55840)))

(declare-fun lt!1271776 () Unit!55832)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!334 (LexerInterface!5381 List!38725 Rule!11384 List!38724 List!38724 List!38724 Rule!11384) Unit!55832)

(assert (=> b!3658286 (= lt!1271776 (lemmaMaxPrefixOutputsMaxPrefix!334 thiss!23823 rules!3307 (rule!8600 (_1!22364 lt!1271773)) lt!1271781 lt!1271799 lt!1271777 rule!403))))

(assert (=> b!3658286 false))

(declare-fun b!3658287 () Bool)

(declare-fun Unit!55841 () Unit!55832)

(assert (=> b!3658287 (= e!2265205 Unit!55841)))

(declare-fun lt!1271792 () Unit!55832)

(declare-fun lt!1271778 () C!21288)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (Regex!10551 List!38724 C!21288) Unit!55832)

(assert (=> b!3658287 (= lt!1271792 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 rule!403) lt!1271777 lt!1271778))))

(assert (=> b!3658287 false))

(declare-fun b!3658288 () Bool)

(declare-fun e!2265186 () Bool)

(declare-fun lt!1271767 () Int)

(declare-fun size!29490 (List!38724) Int)

(assert (=> b!3658288 (= e!2265186 (= lt!1271767 (size!29490 lt!1271777)))))

(declare-fun lt!1271768 () Unit!55832)

(assert (=> b!3658288 (= lt!1271768 e!2265208)))

(declare-fun c!632260 () Bool)

(declare-fun lt!1271795 () Int)

(declare-fun lt!1271787 () Int)

(assert (=> b!3658288 (= c!632260 (< lt!1271795 lt!1271787))))

(declare-fun lt!1271784 () Unit!55832)

(assert (=> b!3658288 (= lt!1271784 e!2265201)))

(declare-fun c!632261 () Bool)

(assert (=> b!3658288 (= c!632261 (> lt!1271795 lt!1271787))))

(declare-fun size!29491 (BalanceConc!23216) Int)

(assert (=> b!3658288 (= lt!1271787 (size!29491 lt!1271794))))

(declare-fun lt!1271772 () Unit!55832)

(declare-fun e!2265193 () Unit!55832)

(assert (=> b!3658288 (= lt!1271772 e!2265193)))

(declare-fun c!632258 () Bool)

(assert (=> b!3658288 (= c!632258 (isSeparator!5792 rule!403))))

(declare-fun lt!1271793 () Unit!55832)

(assert (=> b!3658288 (= lt!1271793 e!2265205)))

(declare-fun c!632256 () Bool)

(assert (=> b!3658288 (= c!632256 (not (contains!7649 lt!1271807 lt!1271778)))))

(assert (=> b!3658288 (= lt!1271778 (head!7816 lt!1271781))))

(declare-fun b!3658289 () Bool)

(declare-fun res!1484879 () Bool)

(assert (=> b!3658289 (=> (not res!1484879) (not e!2265179))))

(declare-fun contains!7650 (List!38725 Rule!11384) Bool)

(assert (=> b!3658289 (= res!1484879 (contains!7650 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3658290 () Bool)

(assert (=> b!3658290 false))

(declare-fun lt!1271780 () Unit!55832)

(declare-fun call!264574 () Unit!55832)

(assert (=> b!3658290 (= lt!1271780 call!264574)))

(declare-fun call!264571 () Bool)

(assert (=> b!3658290 (not call!264571)))

(declare-fun lt!1271803 () Unit!55832)

(assert (=> b!3658290 (= lt!1271803 (lemmaSepRuleNotContainsCharContainedInANonSepRule!320 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8600 (_1!22364 lt!1271773)) lt!1271778))))

(declare-fun Unit!55842 () Unit!55832)

(assert (=> b!3658290 (= e!2265200 Unit!55842)))

(declare-fun b!3658291 () Bool)

(declare-fun e!2265198 () Bool)

(assert (=> b!3658291 (= e!2265192 e!2265198)))

(declare-fun res!1484886 () Bool)

(assert (=> b!3658291 (=> res!1484886 e!2265198)))

(declare-fun lt!1271775 () TokenValue!6022)

(declare-fun lt!1271782 () Option!8212)

(assert (=> b!3658291 (= res!1484886 (not (= lt!1271782 (Some!8211 (tuple2!38461 (Token!10951 lt!1271775 (rule!8600 (_1!22364 lt!1271773)) lt!1271795 lt!1271781) (_2!22364 lt!1271773))))))))

(declare-fun lt!1271802 () BalanceConc!23216)

(assert (=> b!3658291 (= lt!1271795 (size!29491 lt!1271802))))

(declare-fun apply!9294 (TokenValueInjection!11472 BalanceConc!23216) TokenValue!6022)

(assert (=> b!3658291 (= lt!1271775 (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802))))

(declare-fun lt!1271788 () Unit!55832)

(declare-fun lemmaCharactersSize!837 (Token!10950) Unit!55832)

(assert (=> b!3658291 (= lt!1271788 (lemmaCharactersSize!837 (_1!22364 lt!1271773)))))

(declare-fun lt!1271790 () Unit!55832)

(declare-fun lemmaEqSameImage!975 (TokenValueInjection!11472 BalanceConc!23216 BalanceConc!23216) Unit!55832)

(declare-fun seqFromList!4341 (List!38724) BalanceConc!23216)

(assert (=> b!3658291 (= lt!1271790 (lemmaEqSameImage!975 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802 (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773)))))))

(declare-fun lt!1271779 () Unit!55832)

(declare-fun lemmaSemiInverse!1541 (TokenValueInjection!11472 BalanceConc!23216) Unit!55832)

(assert (=> b!3658291 (= lt!1271779 (lemmaSemiInverse!1541 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802))))

(declare-fun b!3658292 () Bool)

(assert (=> b!3658292 (= e!2265202 e!2265192)))

(declare-fun res!1484881 () Bool)

(assert (=> b!3658292 (=> res!1484881 e!2265192)))

(declare-fun isPrefix!3155 (List!38724 List!38724) Bool)

(assert (=> b!3658292 (= res!1484881 (not (isPrefix!3155 lt!1271781 lt!1271799)))))

(declare-fun ++!9608 (List!38724 List!38724) List!38724)

(assert (=> b!3658292 (isPrefix!3155 lt!1271781 (++!9608 lt!1271781 (_2!22364 lt!1271773)))))

(declare-fun lt!1271770 () Unit!55832)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2074 (List!38724 List!38724) Unit!55832)

(assert (=> b!3658292 (= lt!1271770 (lemmaConcatTwoListThenFirstIsPrefix!2074 lt!1271781 (_2!22364 lt!1271773)))))

(assert (=> b!3658292 (= lt!1271781 (list!14314 lt!1271802))))

(assert (=> b!3658292 (= lt!1271802 (charsOf!3806 (_1!22364 lt!1271773)))))

(declare-fun e!2265178 () Bool)

(assert (=> b!3658292 e!2265178))

(declare-fun res!1484893 () Bool)

(assert (=> b!3658292 (=> (not res!1484893) (not e!2265178))))

(declare-datatypes ((Option!8213 0))(
  ( (None!8212) (Some!8212 (v!38092 Rule!11384)) )
))
(declare-fun lt!1271806 () Option!8213)

(declare-fun isDefined!6445 (Option!8213) Bool)

(assert (=> b!3658292 (= res!1484893 (isDefined!6445 lt!1271806))))

(declare-fun getRuleFromTag!1396 (LexerInterface!5381 List!38725 String!43444) Option!8213)

(assert (=> b!3658292 (= lt!1271806 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun lt!1271771 () Unit!55832)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1396 (LexerInterface!5381 List!38725 List!38724 Token!10950) Unit!55832)

(assert (=> b!3658292 (= lt!1271771 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1396 thiss!23823 rules!3307 lt!1271799 (_1!22364 lt!1271773)))))

(declare-fun get!12718 (Option!8212) tuple2!38460)

(assert (=> b!3658292 (= lt!1271773 (get!12718 lt!1271782))))

(declare-fun lt!1271783 () Unit!55832)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1059 (LexerInterface!5381 List!38725 List!38724 List!38724) Unit!55832)

(assert (=> b!3658292 (= lt!1271783 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1059 thiss!23823 rules!3307 lt!1271777 suffix!1395))))

(assert (=> b!3658292 (= lt!1271782 (maxPrefix!2915 thiss!23823 rules!3307 lt!1271799))))

(assert (=> b!3658292 (isPrefix!3155 lt!1271777 lt!1271799)))

(declare-fun lt!1271804 () Unit!55832)

(assert (=> b!3658292 (= lt!1271804 (lemmaConcatTwoListThenFirstIsPrefix!2074 lt!1271777 suffix!1395))))

(assert (=> b!3658292 (= lt!1271799 (++!9608 lt!1271777 suffix!1395))))

(declare-fun b!3658293 () Bool)

(declare-fun Unit!55843 () Unit!55832)

(assert (=> b!3658293 (= e!2265201 Unit!55843)))

(declare-fun b!3658294 () Bool)

(assert (=> b!3658294 false))

(declare-fun lt!1271791 () Unit!55832)

(assert (=> b!3658294 (= lt!1271791 call!264575)))

(assert (=> b!3658294 (not call!264572)))

(declare-fun lt!1271798 () Unit!55832)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!438 (LexerInterface!5381 List!38725 List!38725 Rule!11384 Rule!11384 C!21288) Unit!55832)

(assert (=> b!3658294 (= lt!1271798 (lemmaNonSepRuleNotContainsCharContainedInASepRule!438 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) anOtherTypeRule!33 lt!1271774))))

(declare-fun Unit!55844 () Unit!55832)

(assert (=> b!3658294 (= e!2265187 Unit!55844)))

(declare-fun b!3658295 () Bool)

(assert (=> b!3658295 false))

(declare-fun lt!1271764 () Unit!55832)

(assert (=> b!3658295 (= lt!1271764 call!264574)))

(assert (=> b!3658295 (not call!264571)))

(declare-fun lt!1271765 () Unit!55832)

(assert (=> b!3658295 (= lt!1271765 (lemmaNonSepRuleNotContainsCharContainedInASepRule!438 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) rule!403 lt!1271778))))

(declare-fun Unit!55845 () Unit!55832)

(assert (=> b!3658295 (= e!2265207 Unit!55845)))

(declare-fun b!3658296 () Bool)

(assert (=> b!3658296 (= e!2265177 e!2265182)))

(declare-fun res!1484894 () Bool)

(assert (=> b!3658296 (=> (not res!1484894) (not e!2265182))))

(declare-fun lt!1271769 () tuple2!38460)

(assert (=> b!3658296 (= res!1484894 (= (_1!22364 lt!1271769) token!511))))

(assert (=> b!3658296 (= lt!1271769 (get!12718 lt!1271796))))

(declare-fun b!3658297 () Bool)

(declare-fun tp!1114677 () Bool)

(declare-fun e!2265181 () Bool)

(declare-fun e!2265190 () Bool)

(assert (=> b!3658297 (= e!2265181 (and tp!1114677 (inv!52061 (tag!6566 anOtherTypeRule!33)) (inv!52064 (transformation!5792 anOtherTypeRule!33)) e!2265190))))

(declare-fun b!3658298 () Bool)

(assert (=> b!3658298 (= e!2265198 e!2265186)))

(declare-fun res!1484882 () Bool)

(assert (=> b!3658298 (=> res!1484882 e!2265186)))

(declare-fun lt!1271766 () List!38724)

(declare-fun lt!1271785 () Option!8212)

(assert (=> b!3658298 (= res!1484882 (or (not (= lt!1271766 (_2!22364 lt!1271773))) (not (= lt!1271785 (Some!8211 (tuple2!38461 (_1!22364 lt!1271773) lt!1271766))))))))

(assert (=> b!3658298 (= (_2!22364 lt!1271773) lt!1271766)))

(declare-fun lt!1271800 () Unit!55832)

(declare-fun lemmaSamePrefixThenSameSuffix!1482 (List!38724 List!38724 List!38724 List!38724 List!38724) Unit!55832)

(assert (=> b!3658298 (= lt!1271800 (lemmaSamePrefixThenSameSuffix!1482 lt!1271781 (_2!22364 lt!1271773) lt!1271781 lt!1271766 lt!1271799))))

(declare-fun getSuffix!1708 (List!38724 List!38724) List!38724)

(assert (=> b!3658298 (= lt!1271766 (getSuffix!1708 lt!1271799 lt!1271781))))

(declare-fun lt!1271797 () TokenValue!6022)

(assert (=> b!3658298 (= lt!1271785 (Some!8211 (tuple2!38461 (Token!10951 lt!1271797 (rule!8600 (_1!22364 lt!1271773)) lt!1271767 lt!1271781) (_2!22364 lt!1271773))))))

(declare-fun maxPrefixOneRule!2053 (LexerInterface!5381 Rule!11384 List!38724) Option!8212)

(assert (=> b!3658298 (= lt!1271785 (maxPrefixOneRule!2053 thiss!23823 (rule!8600 (_1!22364 lt!1271773)) lt!1271799))))

(assert (=> b!3658298 (= lt!1271767 (size!29490 lt!1271781))))

(assert (=> b!3658298 (= lt!1271797 (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) (seqFromList!4341 lt!1271781)))))

(declare-fun lt!1271763 () Unit!55832)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1109 (LexerInterface!5381 List!38725 List!38724 List!38724 List!38724 Rule!11384) Unit!55832)

(assert (=> b!3658298 (= lt!1271763 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1109 thiss!23823 rules!3307 lt!1271781 lt!1271799 (_2!22364 lt!1271773) (rule!8600 (_1!22364 lt!1271773))))))

(declare-fun b!3658299 () Bool)

(declare-fun e!2265188 () Bool)

(declare-fun tp!1114681 () Bool)

(assert (=> b!3658299 (= e!2265199 (and tp!1114681 (inv!52061 (tag!6566 (h!44021 rules!3307))) (inv!52064 (transformation!5792 (h!44021 rules!3307))) e!2265188))))

(declare-fun b!3658300 () Bool)

(assert (=> b!3658300 (= e!2265182 (not e!2265180))))

(declare-fun res!1484876 () Bool)

(assert (=> b!3658300 (=> res!1484876 e!2265180)))

(assert (=> b!3658300 (= res!1484876 (not (matchR!5120 (regex!5792 rule!403) lt!1271777)))))

(declare-fun ruleValid!2056 (LexerInterface!5381 Rule!11384) Bool)

(assert (=> b!3658300 (ruleValid!2056 thiss!23823 rule!403)))

(declare-fun lt!1271808 () Unit!55832)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1210 (LexerInterface!5381 Rule!11384 List!38725) Unit!55832)

(assert (=> b!3658300 (= lt!1271808 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1210 thiss!23823 rule!403 rules!3307))))

(declare-fun res!1484874 () Bool)

(assert (=> start!342266 (=> (not res!1484874) (not e!2265179))))

(get-info :version)

(assert (=> start!342266 (= res!1484874 ((_ is Lexer!5379) thiss!23823))))

(assert (=> start!342266 e!2265179))

(assert (=> start!342266 e!2265194))

(assert (=> start!342266 e!2265189))

(assert (=> start!342266 true))

(declare-fun inv!52065 (Token!10950) Bool)

(assert (=> start!342266 (and (inv!52065 token!511) e!2265176)))

(assert (=> start!342266 e!2265184))

(assert (=> start!342266 e!2265181))

(declare-fun bm!264566 () Bool)

(declare-fun call!264576 () List!38724)

(assert (=> bm!264566 (= call!264576 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun bm!264567 () Bool)

(assert (=> bm!264567 (= call!264575 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271774))))

(assert (=> b!3658301 (= e!2265190 (and tp!1114684 tp!1114674))))

(declare-fun bm!264568 () Bool)

(assert (=> bm!264568 (= call!264572 (contains!7649 call!264576 lt!1271774))))

(assert (=> b!3658302 (= e!2265191 (and tp!1114683 tp!1114680))))

(declare-fun b!3658303 () Bool)

(declare-fun res!1484877 () Bool)

(assert (=> b!3658303 (=> res!1484877 e!2265202)))

(declare-fun sepAndNonSepRulesDisjointChars!1960 (List!38725 List!38725) Bool)

(assert (=> b!3658303 (= res!1484877 (not (sepAndNonSepRulesDisjointChars!1960 rules!3307 rules!3307)))))

(declare-fun bm!264569 () Bool)

(assert (=> bm!264569 (= call!264574 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271778))))

(assert (=> b!3658304 (= e!2265188 (and tp!1114675 tp!1114676))))

(declare-fun b!3658305 () Bool)

(declare-fun res!1484887 () Bool)

(assert (=> b!3658305 (=> (not res!1484887) (not e!2265179))))

(assert (=> b!3658305 (= res!1484887 (contains!7650 rules!3307 rule!403))))

(declare-fun b!3658306 () Bool)

(declare-fun e!2265196 () Bool)

(declare-fun lt!1271801 () Rule!11384)

(assert (=> b!3658306 (= e!2265196 (= (rule!8600 (_1!22364 lt!1271773)) lt!1271801))))

(declare-fun bm!264570 () Bool)

(declare-fun call!264573 () List!38724)

(assert (=> bm!264570 (= call!264573 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3658307 () Bool)

(assert (=> b!3658307 (= e!2265178 e!2265196)))

(declare-fun res!1484880 () Bool)

(assert (=> b!3658307 (=> (not res!1484880) (not e!2265196))))

(assert (=> b!3658307 (= res!1484880 (matchR!5120 (regex!5792 lt!1271801) (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))))))

(declare-fun get!12719 (Option!8213) Rule!11384)

(assert (=> b!3658307 (= lt!1271801 (get!12719 lt!1271806))))

(declare-fun b!3658308 () Bool)

(declare-fun res!1484878 () Bool)

(assert (=> b!3658308 (=> res!1484878 e!2265202)))

(assert (=> b!3658308 (= res!1484878 (not (contains!7649 (usedCharacters!1004 (regex!5792 anOtherTypeRule!33)) lt!1271774)))))

(declare-fun b!3658309 () Bool)

(assert (=> b!3658309 (= e!2265193 e!2265200)))

(declare-fun c!632257 () Bool)

(assert (=> b!3658309 (= c!632257 (isSeparator!5792 (rule!8600 (_1!22364 lt!1271773))))))

(declare-fun b!3658310 () Bool)

(declare-fun res!1484884 () Bool)

(assert (=> b!3658310 (=> (not res!1484884) (not e!2265179))))

(declare-fun isEmpty!22889 (List!38725) Bool)

(assert (=> b!3658310 (= res!1484884 (not (isEmpty!22889 rules!3307)))))

(declare-fun bm!264571 () Bool)

(assert (=> bm!264571 (= call!264571 (contains!7649 call!264573 lt!1271778))))

(declare-fun b!3658311 () Bool)

(assert (=> b!3658311 (= e!2265193 e!2265207)))

(declare-fun c!632255 () Bool)

(assert (=> b!3658311 (= c!632255 (not (isSeparator!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3658312 () Bool)

(declare-fun res!1484891 () Bool)

(assert (=> b!3658312 (=> (not res!1484891) (not e!2265182))))

(assert (=> b!3658312 (= res!1484891 (isEmpty!22888 (_2!22364 lt!1271769)))))

(assert (= (and start!342266 res!1484874) b!3658310))

(assert (= (and b!3658310 res!1484884) b!3658283))

(assert (= (and b!3658283 res!1484885) b!3658305))

(assert (= (and b!3658305 res!1484887) b!3658289))

(assert (= (and b!3658289 res!1484879) b!3658276))

(assert (= (and b!3658276 res!1484888) b!3658280))

(assert (= (and b!3658280 res!1484890) b!3658296))

(assert (= (and b!3658296 res!1484894) b!3658312))

(assert (= (and b!3658312 res!1484891) b!3658272))

(assert (= (and b!3658272 res!1484883) b!3658300))

(assert (= (and b!3658300 (not res!1484876)) b!3658281))

(assert (= (and b!3658281 (not res!1484892)) b!3658284))

(assert (= (and b!3658284 (not res!1484875)) b!3658308))

(assert (= (and b!3658308 (not res!1484878)) b!3658303))

(assert (= (and b!3658303 (not res!1484877)) b!3658292))

(assert (= (and b!3658292 res!1484893) b!3658307))

(assert (= (and b!3658307 res!1484880) b!3658306))

(assert (= (and b!3658292 (not res!1484881)) b!3658277))

(assert (= (and b!3658277 (not res!1484889)) b!3658291))

(assert (= (and b!3658291 (not res!1484886)) b!3658298))

(assert (= (and b!3658298 (not res!1484882)) b!3658288))

(assert (= (and b!3658288 c!632256) b!3658287))

(assert (= (and b!3658288 (not c!632256)) b!3658279))

(assert (= (and b!3658288 c!632258) b!3658311))

(assert (= (and b!3658288 (not c!632258)) b!3658309))

(assert (= (and b!3658311 c!632255) b!3658295))

(assert (= (and b!3658311 (not c!632255)) b!3658285))

(assert (= (and b!3658309 c!632257) b!3658290))

(assert (= (and b!3658309 (not c!632257)) b!3658278))

(assert (= (or b!3658295 b!3658290) bm!264569))

(assert (= (or b!3658295 b!3658290) bm!264570))

(assert (= (or b!3658295 b!3658290) bm!264571))

(assert (= (and b!3658288 c!632261) b!3658273))

(assert (= (and b!3658288 (not c!632261)) b!3658293))

(assert (= (and b!3658273 c!632259) b!3658268))

(assert (= (and b!3658273 (not c!632259)) b!3658294))

(assert (= (or b!3658268 b!3658294) bm!264567))

(assert (= (or b!3658268 b!3658294) bm!264566))

(assert (= (or b!3658268 b!3658294) bm!264568))

(assert (= (and b!3658288 c!632260) b!3658286))

(assert (= (and b!3658288 (not c!632260)) b!3658274))

(assert (= b!3658299 b!3658304))

(assert (= b!3658271 b!3658299))

(assert (= (and start!342266 ((_ is Cons!38601) rules!3307)) b!3658271))

(assert (= (and start!342266 ((_ is Cons!38600) suffix!1395)) b!3658267))

(assert (= b!3658270 b!3658302))

(assert (= b!3658275 b!3658270))

(assert (= start!342266 b!3658275))

(assert (= b!3658269 b!3658282))

(assert (= start!342266 b!3658269))

(assert (= b!3658297 b!3658301))

(assert (= start!342266 b!3658297))

(declare-fun m!4164207 () Bool)

(assert (=> b!3658286 m!4164207))

(declare-fun m!4164209 () Bool)

(assert (=> bm!264568 m!4164209))

(declare-fun m!4164211 () Bool)

(assert (=> b!3658305 m!4164211))

(declare-fun m!4164213 () Bool)

(assert (=> b!3658269 m!4164213))

(declare-fun m!4164215 () Bool)

(assert (=> b!3658269 m!4164215))

(declare-fun m!4164217 () Bool)

(assert (=> bm!264570 m!4164217))

(declare-fun m!4164219 () Bool)

(assert (=> b!3658292 m!4164219))

(declare-fun m!4164221 () Bool)

(assert (=> b!3658292 m!4164221))

(declare-fun m!4164223 () Bool)

(assert (=> b!3658292 m!4164223))

(declare-fun m!4164225 () Bool)

(assert (=> b!3658292 m!4164225))

(declare-fun m!4164227 () Bool)

(assert (=> b!3658292 m!4164227))

(declare-fun m!4164229 () Bool)

(assert (=> b!3658292 m!4164229))

(declare-fun m!4164231 () Bool)

(assert (=> b!3658292 m!4164231))

(declare-fun m!4164233 () Bool)

(assert (=> b!3658292 m!4164233))

(declare-fun m!4164235 () Bool)

(assert (=> b!3658292 m!4164235))

(declare-fun m!4164237 () Bool)

(assert (=> b!3658292 m!4164237))

(declare-fun m!4164239 () Bool)

(assert (=> b!3658292 m!4164239))

(declare-fun m!4164241 () Bool)

(assert (=> b!3658292 m!4164241))

(declare-fun m!4164243 () Bool)

(assert (=> b!3658292 m!4164243))

(declare-fun m!4164245 () Bool)

(assert (=> b!3658292 m!4164245))

(assert (=> b!3658292 m!4164221))

(declare-fun m!4164247 () Bool)

(assert (=> b!3658292 m!4164247))

(declare-fun m!4164249 () Bool)

(assert (=> b!3658297 m!4164249))

(declare-fun m!4164251 () Bool)

(assert (=> b!3658297 m!4164251))

(declare-fun m!4164253 () Bool)

(assert (=> b!3658291 m!4164253))

(declare-fun m!4164255 () Bool)

(assert (=> b!3658291 m!4164255))

(declare-fun m!4164257 () Bool)

(assert (=> b!3658291 m!4164257))

(declare-fun m!4164259 () Bool)

(assert (=> b!3658291 m!4164259))

(declare-fun m!4164261 () Bool)

(assert (=> b!3658291 m!4164261))

(declare-fun m!4164263 () Bool)

(assert (=> b!3658291 m!4164263))

(assert (=> b!3658291 m!4164259))

(declare-fun m!4164265 () Bool)

(assert (=> b!3658277 m!4164265))

(declare-fun m!4164267 () Bool)

(assert (=> b!3658287 m!4164267))

(declare-fun m!4164269 () Bool)

(assert (=> b!3658299 m!4164269))

(declare-fun m!4164271 () Bool)

(assert (=> b!3658299 m!4164271))

(assert (=> bm!264566 m!4164217))

(declare-fun m!4164273 () Bool)

(assert (=> b!3658312 m!4164273))

(declare-fun m!4164275 () Bool)

(assert (=> b!3658280 m!4164275))

(declare-fun m!4164277 () Bool)

(assert (=> b!3658280 m!4164277))

(declare-fun m!4164279 () Bool)

(assert (=> b!3658280 m!4164279))

(declare-fun m!4164281 () Bool)

(assert (=> b!3658280 m!4164281))

(declare-fun m!4164283 () Bool)

(assert (=> b!3658283 m!4164283))

(declare-fun m!4164285 () Bool)

(assert (=> b!3658273 m!4164285))

(declare-fun m!4164287 () Bool)

(assert (=> b!3658273 m!4164287))

(declare-fun m!4164289 () Bool)

(assert (=> b!3658289 m!4164289))

(declare-fun m!4164291 () Bool)

(assert (=> b!3658294 m!4164291))

(declare-fun m!4164293 () Bool)

(assert (=> b!3658300 m!4164293))

(declare-fun m!4164295 () Bool)

(assert (=> b!3658300 m!4164295))

(declare-fun m!4164297 () Bool)

(assert (=> b!3658300 m!4164297))

(declare-fun m!4164299 () Bool)

(assert (=> b!3658303 m!4164299))

(declare-fun m!4164301 () Bool)

(assert (=> b!3658290 m!4164301))

(assert (=> b!3658307 m!4164223))

(assert (=> b!3658307 m!4164223))

(declare-fun m!4164303 () Bool)

(assert (=> b!3658307 m!4164303))

(assert (=> b!3658307 m!4164303))

(declare-fun m!4164305 () Bool)

(assert (=> b!3658307 m!4164305))

(declare-fun m!4164307 () Bool)

(assert (=> b!3658307 m!4164307))

(declare-fun m!4164309 () Bool)

(assert (=> start!342266 m!4164309))

(declare-fun m!4164311 () Bool)

(assert (=> b!3658296 m!4164311))

(declare-fun m!4164313 () Bool)

(assert (=> b!3658275 m!4164313))

(declare-fun m!4164315 () Bool)

(assert (=> b!3658270 m!4164315))

(declare-fun m!4164317 () Bool)

(assert (=> b!3658270 m!4164317))

(declare-fun m!4164319 () Bool)

(assert (=> bm!264571 m!4164319))

(declare-fun m!4164321 () Bool)

(assert (=> b!3658295 m!4164321))

(declare-fun m!4164323 () Bool)

(assert (=> b!3658310 m!4164323))

(declare-fun m!4164325 () Bool)

(assert (=> bm!264567 m!4164325))

(declare-fun m!4164327 () Bool)

(assert (=> bm!264569 m!4164327))

(declare-fun m!4164329 () Bool)

(assert (=> b!3658298 m!4164329))

(declare-fun m!4164331 () Bool)

(assert (=> b!3658298 m!4164331))

(declare-fun m!4164333 () Bool)

(assert (=> b!3658298 m!4164333))

(declare-fun m!4164335 () Bool)

(assert (=> b!3658298 m!4164335))

(declare-fun m!4164337 () Bool)

(assert (=> b!3658298 m!4164337))

(declare-fun m!4164339 () Bool)

(assert (=> b!3658298 m!4164339))

(declare-fun m!4164341 () Bool)

(assert (=> b!3658298 m!4164341))

(assert (=> b!3658298 m!4164335))

(declare-fun m!4164343 () Bool)

(assert (=> b!3658281 m!4164343))

(declare-fun m!4164345 () Bool)

(assert (=> b!3658268 m!4164345))

(declare-fun m!4164347 () Bool)

(assert (=> b!3658288 m!4164347))

(declare-fun m!4164349 () Bool)

(assert (=> b!3658288 m!4164349))

(declare-fun m!4164351 () Bool)

(assert (=> b!3658288 m!4164351))

(declare-fun m!4164353 () Bool)

(assert (=> b!3658288 m!4164353))

(declare-fun m!4164355 () Bool)

(assert (=> b!3658308 m!4164355))

(assert (=> b!3658308 m!4164355))

(declare-fun m!4164357 () Bool)

(assert (=> b!3658308 m!4164357))

(declare-fun m!4164359 () Bool)

(assert (=> b!3658284 m!4164359))

(declare-fun m!4164361 () Bool)

(assert (=> b!3658284 m!4164361))

(declare-fun m!4164363 () Bool)

(assert (=> b!3658284 m!4164363))

(check-sat (not b!3658307) (not b_next!97203) (not b!3658289) (not b!3658296) b_and!271269 (not b!3658280) (not b!3658283) (not b!3658294) b_and!271259 b_and!271267 (not b!3658281) (not b!3658305) (not b!3658271) (not b_next!97205) (not b!3658310) b_and!271263 (not b!3658312) b_and!271261 (not b!3658303) (not bm!264566) b_and!271273 (not b!3658291) (not b!3658267) (not b!3658270) (not b!3658284) (not b_next!97213) tp_is_empty!18185 b_and!271265 (not b!3658295) (not bm!264571) (not bm!264567) (not b!3658287) (not b_next!97201) b_and!271271 (not b!3658299) (not b!3658268) (not b!3658286) (not b!3658275) (not bm!264568) (not b!3658297) (not b!3658300) (not b!3658277) (not b_next!97215) (not b_next!97207) (not b!3658273) (not b!3658290) (not start!342266) (not b!3658308) (not b!3658298) (not b!3658269) (not b!3658292) (not b_next!97209) (not bm!264569) (not b_next!97211) (not bm!264570) (not b!3658288))
(check-sat (not b_next!97203) b_and!271261 b_and!271273 b_and!271269 (not b_next!97201) b_and!271271 b_and!271259 b_and!271267 (not b_next!97215) (not b_next!97207) (not b_next!97209) (not b_next!97211) (not b_next!97205) b_and!271263 (not b_next!97213) b_and!271265)
(get-model)

(declare-fun d!1074227 () Bool)

(declare-fun c!632282 () Bool)

(assert (=> d!1074227 (= c!632282 ((_ is IntegerValue!18066) (value!185532 token!511)))))

(declare-fun e!2265253 () Bool)

(assert (=> d!1074227 (= (inv!21 (value!185532 token!511)) e!2265253)))

(declare-fun b!3658392 () Bool)

(declare-fun e!2265254 () Bool)

(declare-fun inv!17 (TokenValue!6022) Bool)

(assert (=> b!3658392 (= e!2265254 (inv!17 (value!185532 token!511)))))

(declare-fun b!3658393 () Bool)

(declare-fun inv!16 (TokenValue!6022) Bool)

(assert (=> b!3658393 (= e!2265253 (inv!16 (value!185532 token!511)))))

(declare-fun b!3658394 () Bool)

(assert (=> b!3658394 (= e!2265253 e!2265254)))

(declare-fun c!632281 () Bool)

(assert (=> b!3658394 (= c!632281 ((_ is IntegerValue!18067) (value!185532 token!511)))))

(declare-fun b!3658395 () Bool)

(declare-fun e!2265255 () Bool)

(declare-fun inv!15 (TokenValue!6022) Bool)

(assert (=> b!3658395 (= e!2265255 (inv!15 (value!185532 token!511)))))

(declare-fun b!3658396 () Bool)

(declare-fun res!1484952 () Bool)

(assert (=> b!3658396 (=> res!1484952 e!2265255)))

(assert (=> b!3658396 (= res!1484952 (not ((_ is IntegerValue!18068) (value!185532 token!511))))))

(assert (=> b!3658396 (= e!2265254 e!2265255)))

(assert (= (and d!1074227 c!632282) b!3658393))

(assert (= (and d!1074227 (not c!632282)) b!3658394))

(assert (= (and b!3658394 c!632281) b!3658392))

(assert (= (and b!3658394 (not c!632281)) b!3658396))

(assert (= (and b!3658396 (not res!1484952)) b!3658395))

(declare-fun m!4164413 () Bool)

(assert (=> b!3658392 m!4164413))

(declare-fun m!4164415 () Bool)

(assert (=> b!3658393 m!4164415))

(declare-fun m!4164417 () Bool)

(assert (=> b!3658395 m!4164417))

(assert (=> b!3658275 d!1074227))

(declare-fun d!1074241 () Bool)

(assert (=> d!1074241 (= (get!12718 lt!1271796) (v!38091 lt!1271796))))

(assert (=> b!3658296 d!1074241))

(declare-fun d!1074245 () Bool)

(assert (=> d!1074245 (= (inv!52061 (tag!6566 anOtherTypeRule!33)) (= (mod (str.len (value!185531 (tag!6566 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3658297 d!1074245))

(declare-fun d!1074247 () Bool)

(declare-fun res!1484964 () Bool)

(declare-fun e!2265268 () Bool)

(assert (=> d!1074247 (=> (not res!1484964) (not e!2265268))))

(declare-fun semiInverseModEq!2467 (Int Int) Bool)

(assert (=> d!1074247 (= res!1484964 (semiInverseModEq!2467 (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toValue!8084 (transformation!5792 anOtherTypeRule!33))))))

(assert (=> d!1074247 (= (inv!52064 (transformation!5792 anOtherTypeRule!33)) e!2265268)))

(declare-fun b!3658412 () Bool)

(declare-fun equivClasses!2366 (Int Int) Bool)

(assert (=> b!3658412 (= e!2265268 (equivClasses!2366 (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toValue!8084 (transformation!5792 anOtherTypeRule!33))))))

(assert (= (and d!1074247 res!1484964) b!3658412))

(declare-fun m!4164431 () Bool)

(assert (=> d!1074247 m!4164431))

(declare-fun m!4164433 () Bool)

(assert (=> b!3658412 m!4164433))

(assert (=> b!3658297 d!1074247))

(declare-fun d!1074253 () Bool)

(assert (=> d!1074253 (= (isEmpty!22888 (_2!22364 lt!1271769)) ((_ is Nil!38600) (_2!22364 lt!1271769)))))

(assert (=> b!3658312 d!1074253))

(declare-fun d!1074255 () Bool)

(assert (=> d!1074255 (= (inv!52061 (tag!6566 (h!44021 rules!3307))) (= (mod (str.len (value!185531 (tag!6566 (h!44021 rules!3307)))) 2) 0))))

(assert (=> b!3658299 d!1074255))

(declare-fun d!1074257 () Bool)

(declare-fun res!1484965 () Bool)

(declare-fun e!2265276 () Bool)

(assert (=> d!1074257 (=> (not res!1484965) (not e!2265276))))

(assert (=> d!1074257 (= res!1484965 (semiInverseModEq!2467 (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toValue!8084 (transformation!5792 (h!44021 rules!3307)))))))

(assert (=> d!1074257 (= (inv!52064 (transformation!5792 (h!44021 rules!3307))) e!2265276)))

(declare-fun b!3658425 () Bool)

(assert (=> b!3658425 (= e!2265276 (equivClasses!2366 (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toValue!8084 (transformation!5792 (h!44021 rules!3307)))))))

(assert (= (and d!1074257 res!1484965) b!3658425))

(declare-fun m!4164435 () Bool)

(assert (=> d!1074257 m!4164435))

(declare-fun m!4164437 () Bool)

(assert (=> b!3658425 m!4164437))

(assert (=> b!3658299 d!1074257))

(declare-fun b!3658471 () Bool)

(declare-fun e!2265306 () Bool)

(declare-fun e!2265309 () Bool)

(assert (=> b!3658471 (= e!2265306 e!2265309)))

(declare-fun c!632302 () Bool)

(assert (=> b!3658471 (= c!632302 ((_ is EmptyLang!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3658472 () Bool)

(declare-fun e!2265307 () Bool)

(declare-fun derivativeStep!3216 (Regex!10551 C!21288) Regex!10551)

(declare-fun tail!5665 (List!38724) List!38724)

(assert (=> b!3658472 (= e!2265307 (matchR!5120 (derivativeStep!3216 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) (head!7816 lt!1271781)) (tail!5665 lt!1271781)))))

(declare-fun bm!264590 () Bool)

(declare-fun call!264595 () Bool)

(assert (=> bm!264590 (= call!264595 (isEmpty!22888 lt!1271781))))

(declare-fun d!1074259 () Bool)

(assert (=> d!1074259 e!2265306))

(declare-fun c!632304 () Bool)

(assert (=> d!1074259 (= c!632304 ((_ is EmptyExpr!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun lt!1271834 () Bool)

(assert (=> d!1074259 (= lt!1271834 e!2265307)))

(declare-fun c!632303 () Bool)

(assert (=> d!1074259 (= c!632303 (isEmpty!22888 lt!1271781))))

(declare-fun validRegex!4829 (Regex!10551) Bool)

(assert (=> d!1074259 (validRegex!4829 (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))

(assert (=> d!1074259 (= (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781) lt!1271834)))

(declare-fun b!3658473 () Bool)

(declare-fun res!1484991 () Bool)

(declare-fun e!2265308 () Bool)

(assert (=> b!3658473 (=> (not res!1484991) (not e!2265308))))

(assert (=> b!3658473 (= res!1484991 (isEmpty!22888 (tail!5665 lt!1271781)))))

(declare-fun b!3658474 () Bool)

(declare-fun e!2265305 () Bool)

(declare-fun e!2265311 () Bool)

(assert (=> b!3658474 (= e!2265305 e!2265311)))

(declare-fun res!1484996 () Bool)

(assert (=> b!3658474 (=> res!1484996 e!2265311)))

(assert (=> b!3658474 (= res!1484996 call!264595)))

(declare-fun b!3658475 () Bool)

(assert (=> b!3658475 (= e!2265309 (not lt!1271834))))

(declare-fun b!3658476 () Bool)

(assert (=> b!3658476 (= e!2265308 (= (head!7816 lt!1271781) (c!632262 (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))))

(declare-fun b!3658477 () Bool)

(declare-fun nullable!3667 (Regex!10551) Bool)

(assert (=> b!3658477 (= e!2265307 (nullable!3667 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3658478 () Bool)

(declare-fun res!1484990 () Bool)

(declare-fun e!2265310 () Bool)

(assert (=> b!3658478 (=> res!1484990 e!2265310)))

(assert (=> b!3658478 (= res!1484990 e!2265308)))

(declare-fun res!1484992 () Bool)

(assert (=> b!3658478 (=> (not res!1484992) (not e!2265308))))

(assert (=> b!3658478 (= res!1484992 lt!1271834)))

(declare-fun b!3658479 () Bool)

(assert (=> b!3658479 (= e!2265310 e!2265305)))

(declare-fun res!1484989 () Bool)

(assert (=> b!3658479 (=> (not res!1484989) (not e!2265305))))

(assert (=> b!3658479 (= res!1484989 (not lt!1271834))))

(declare-fun b!3658480 () Bool)

(declare-fun res!1484995 () Bool)

(assert (=> b!3658480 (=> res!1484995 e!2265310)))

(assert (=> b!3658480 (= res!1484995 (not ((_ is ElementMatch!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))))

(assert (=> b!3658480 (= e!2265309 e!2265310)))

(declare-fun b!3658481 () Bool)

(assert (=> b!3658481 (= e!2265311 (not (= (head!7816 lt!1271781) (c!632262 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))))

(declare-fun b!3658482 () Bool)

(declare-fun res!1484994 () Bool)

(assert (=> b!3658482 (=> res!1484994 e!2265311)))

(assert (=> b!3658482 (= res!1484994 (not (isEmpty!22888 (tail!5665 lt!1271781))))))

(declare-fun b!3658483 () Bool)

(assert (=> b!3658483 (= e!2265306 (= lt!1271834 call!264595))))

(declare-fun b!3658484 () Bool)

(declare-fun res!1484993 () Bool)

(assert (=> b!3658484 (=> (not res!1484993) (not e!2265308))))

(assert (=> b!3658484 (= res!1484993 (not call!264595))))

(assert (= (and d!1074259 c!632303) b!3658477))

(assert (= (and d!1074259 (not c!632303)) b!3658472))

(assert (= (and d!1074259 c!632304) b!3658483))

(assert (= (and d!1074259 (not c!632304)) b!3658471))

(assert (= (and b!3658471 c!632302) b!3658475))

(assert (= (and b!3658471 (not c!632302)) b!3658480))

(assert (= (and b!3658480 (not res!1484995)) b!3658478))

(assert (= (and b!3658478 res!1484992) b!3658484))

(assert (= (and b!3658484 res!1484993) b!3658473))

(assert (= (and b!3658473 res!1484991) b!3658476))

(assert (= (and b!3658478 (not res!1484990)) b!3658479))

(assert (= (and b!3658479 res!1484989) b!3658474))

(assert (= (and b!3658474 (not res!1484996)) b!3658482))

(assert (= (and b!3658482 (not res!1484994)) b!3658481))

(assert (= (or b!3658483 b!3658474 b!3658484) bm!264590))

(declare-fun m!4164459 () Bool)

(assert (=> d!1074259 m!4164459))

(declare-fun m!4164461 () Bool)

(assert (=> d!1074259 m!4164461))

(assert (=> b!3658472 m!4164353))

(assert (=> b!3658472 m!4164353))

(declare-fun m!4164463 () Bool)

(assert (=> b!3658472 m!4164463))

(declare-fun m!4164465 () Bool)

(assert (=> b!3658472 m!4164465))

(assert (=> b!3658472 m!4164463))

(assert (=> b!3658472 m!4164465))

(declare-fun m!4164467 () Bool)

(assert (=> b!3658472 m!4164467))

(assert (=> b!3658482 m!4164465))

(assert (=> b!3658482 m!4164465))

(declare-fun m!4164469 () Bool)

(assert (=> b!3658482 m!4164469))

(declare-fun m!4164471 () Bool)

(assert (=> b!3658477 m!4164471))

(assert (=> b!3658473 m!4164465))

(assert (=> b!3658473 m!4164465))

(assert (=> b!3658473 m!4164469))

(assert (=> b!3658481 m!4164353))

(assert (=> b!3658476 m!4164353))

(assert (=> bm!264590 m!4164459))

(assert (=> b!3658277 d!1074259))

(declare-fun d!1074273 () Bool)

(declare-fun lt!1271837 () List!38724)

(assert (=> d!1074273 (= (++!9608 lt!1271781 lt!1271837) lt!1271799)))

(declare-fun e!2265314 () List!38724)

(assert (=> d!1074273 (= lt!1271837 e!2265314)))

(declare-fun c!632307 () Bool)

(assert (=> d!1074273 (= c!632307 ((_ is Cons!38600) lt!1271781))))

(assert (=> d!1074273 (>= (size!29490 lt!1271799) (size!29490 lt!1271781))))

(assert (=> d!1074273 (= (getSuffix!1708 lt!1271799 lt!1271781) lt!1271837)))

(declare-fun b!3658489 () Bool)

(assert (=> b!3658489 (= e!2265314 (getSuffix!1708 (tail!5665 lt!1271799) (t!298227 lt!1271781)))))

(declare-fun b!3658490 () Bool)

(assert (=> b!3658490 (= e!2265314 lt!1271799)))

(assert (= (and d!1074273 c!632307) b!3658489))

(assert (= (and d!1074273 (not c!632307)) b!3658490))

(declare-fun m!4164473 () Bool)

(assert (=> d!1074273 m!4164473))

(declare-fun m!4164475 () Bool)

(assert (=> d!1074273 m!4164475))

(assert (=> d!1074273 m!4164333))

(declare-fun m!4164477 () Bool)

(assert (=> b!3658489 m!4164477))

(assert (=> b!3658489 m!4164477))

(declare-fun m!4164479 () Bool)

(assert (=> b!3658489 m!4164479))

(assert (=> b!3658298 d!1074273))

(declare-fun d!1074275 () Bool)

(declare-fun dynLambda!16843 (Int BalanceConc!23216) TokenValue!6022)

(assert (=> d!1074275 (= (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) (seqFromList!4341 lt!1271781)) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (seqFromList!4341 lt!1271781)))))

(declare-fun b_lambda!108489 () Bool)

(assert (=> (not b_lambda!108489) (not d!1074275)))

(declare-fun tb!211269 () Bool)

(declare-fun t!298238 () Bool)

(assert (=> (and b!3658302 (= (toValue!8084 (transformation!5792 (rule!8600 token!511))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298238) tb!211269))

(declare-fun result!257232 () Bool)

(assert (=> tb!211269 (= result!257232 (inv!21 (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (seqFromList!4341 lt!1271781))))))

(declare-fun m!4164481 () Bool)

(assert (=> tb!211269 m!4164481))

(assert (=> d!1074275 t!298238))

(declare-fun b_and!271283 () Bool)

(assert (= b_and!271259 (and (=> t!298238 result!257232) b_and!271283)))

(declare-fun t!298240 () Bool)

(declare-fun tb!211271 () Bool)

(assert (=> (and b!3658282 (= (toValue!8084 (transformation!5792 rule!403)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298240) tb!211271))

(declare-fun result!257236 () Bool)

(assert (= result!257236 result!257232))

(assert (=> d!1074275 t!298240))

(declare-fun b_and!271285 () Bool)

(assert (= b_and!271263 (and (=> t!298240 result!257236) b_and!271285)))

(declare-fun t!298242 () Bool)

(declare-fun tb!211273 () Bool)

(assert (=> (and b!3658304 (= (toValue!8084 (transformation!5792 (h!44021 rules!3307))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298242) tb!211273))

(declare-fun result!257238 () Bool)

(assert (= result!257238 result!257232))

(assert (=> d!1074275 t!298242))

(declare-fun b_and!271287 () Bool)

(assert (= b_and!271267 (and (=> t!298242 result!257238) b_and!271287)))

(declare-fun tb!211275 () Bool)

(declare-fun t!298244 () Bool)

(assert (=> (and b!3658301 (= (toValue!8084 (transformation!5792 anOtherTypeRule!33)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298244) tb!211275))

(declare-fun result!257240 () Bool)

(assert (= result!257240 result!257232))

(assert (=> d!1074275 t!298244))

(declare-fun b_and!271289 () Bool)

(assert (= b_and!271271 (and (=> t!298244 result!257240) b_and!271289)))

(assert (=> d!1074275 m!4164335))

(declare-fun m!4164483 () Bool)

(assert (=> d!1074275 m!4164483))

(assert (=> b!3658298 d!1074275))

(declare-fun d!1074277 () Bool)

(assert (=> d!1074277 (= (maxPrefixOneRule!2053 thiss!23823 (rule!8600 (_1!22364 lt!1271773)) lt!1271799) (Some!8211 (tuple2!38461 (Token!10951 (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) (seqFromList!4341 lt!1271781)) (rule!8600 (_1!22364 lt!1271773)) (size!29490 lt!1271781) lt!1271781) (_2!22364 lt!1271773))))))

(declare-fun lt!1271855 () Unit!55832)

(declare-fun choose!21616 (LexerInterface!5381 List!38725 List!38724 List!38724 List!38724 Rule!11384) Unit!55832)

(assert (=> d!1074277 (= lt!1271855 (choose!21616 thiss!23823 rules!3307 lt!1271781 lt!1271799 (_2!22364 lt!1271773) (rule!8600 (_1!22364 lt!1271773))))))

(assert (=> d!1074277 (not (isEmpty!22889 rules!3307))))

(assert (=> d!1074277 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1109 thiss!23823 rules!3307 lt!1271781 lt!1271799 (_2!22364 lt!1271773) (rule!8600 (_1!22364 lt!1271773))) lt!1271855)))

(declare-fun bs!572499 () Bool)

(assert (= bs!572499 d!1074277))

(declare-fun m!4164531 () Bool)

(assert (=> bs!572499 m!4164531))

(assert (=> bs!572499 m!4164339))

(assert (=> bs!572499 m!4164335))

(assert (=> bs!572499 m!4164323))

(assert (=> bs!572499 m!4164333))

(assert (=> bs!572499 m!4164335))

(assert (=> bs!572499 m!4164337))

(assert (=> b!3658298 d!1074277))

(declare-fun d!1074281 () Bool)

(declare-fun lt!1271858 () Int)

(assert (=> d!1074281 (>= lt!1271858 0)))

(declare-fun e!2265332 () Int)

(assert (=> d!1074281 (= lt!1271858 e!2265332)))

(declare-fun c!632313 () Bool)

(assert (=> d!1074281 (= c!632313 ((_ is Nil!38600) lt!1271781))))

(assert (=> d!1074281 (= (size!29490 lt!1271781) lt!1271858)))

(declare-fun b!3658524 () Bool)

(assert (=> b!3658524 (= e!2265332 0)))

(declare-fun b!3658525 () Bool)

(assert (=> b!3658525 (= e!2265332 (+ 1 (size!29490 (t!298227 lt!1271781))))))

(assert (= (and d!1074281 c!632313) b!3658524))

(assert (= (and d!1074281 (not c!632313)) b!3658525))

(declare-fun m!4164533 () Bool)

(assert (=> b!3658525 m!4164533))

(assert (=> b!3658298 d!1074281))

(declare-fun d!1074283 () Bool)

(assert (=> d!1074283 (= (_2!22364 lt!1271773) lt!1271766)))

(declare-fun lt!1271861 () Unit!55832)

(declare-fun choose!21618 (List!38724 List!38724 List!38724 List!38724 List!38724) Unit!55832)

(assert (=> d!1074283 (= lt!1271861 (choose!21618 lt!1271781 (_2!22364 lt!1271773) lt!1271781 lt!1271766 lt!1271799))))

(assert (=> d!1074283 (isPrefix!3155 lt!1271781 lt!1271799)))

(assert (=> d!1074283 (= (lemmaSamePrefixThenSameSuffix!1482 lt!1271781 (_2!22364 lt!1271773) lt!1271781 lt!1271766 lt!1271799) lt!1271861)))

(declare-fun bs!572500 () Bool)

(assert (= bs!572500 d!1074283))

(declare-fun m!4164535 () Bool)

(assert (=> bs!572500 m!4164535))

(assert (=> bs!572500 m!4164233))

(assert (=> b!3658298 d!1074283))

(declare-fun d!1074285 () Bool)

(declare-fun fromListB!2002 (List!38724) BalanceConc!23216)

(assert (=> d!1074285 (= (seqFromList!4341 lt!1271781) (fromListB!2002 lt!1271781))))

(declare-fun bs!572502 () Bool)

(assert (= bs!572502 d!1074285))

(declare-fun m!4164539 () Bool)

(assert (=> bs!572502 m!4164539))

(assert (=> b!3658298 d!1074285))

(declare-fun b!3658625 () Bool)

(declare-fun e!2265385 () Option!8212)

(declare-datatypes ((tuple2!38464 0))(
  ( (tuple2!38465 (_1!22366 List!38724) (_2!22366 List!38724)) )
))
(declare-fun lt!1271919 () tuple2!38464)

(assert (=> b!3658625 (= e!2265385 (Some!8211 (tuple2!38461 (Token!10951 (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) (seqFromList!4341 (_1!22366 lt!1271919))) (rule!8600 (_1!22364 lt!1271773)) (size!29491 (seqFromList!4341 (_1!22366 lt!1271919))) (_1!22366 lt!1271919)) (_2!22366 lt!1271919))))))

(declare-fun lt!1271920 () Unit!55832)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1036 (Regex!10551 List!38724) Unit!55832)

(assert (=> b!3658625 (= lt!1271920 (longestMatchIsAcceptedByMatchOrIsEmpty!1036 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271799))))

(declare-fun res!1485083 () Bool)

(declare-fun findLongestMatchInner!1063 (Regex!10551 List!38724 Int List!38724 List!38724 Int) tuple2!38464)

(assert (=> b!3658625 (= res!1485083 (isEmpty!22888 (_1!22366 (findLongestMatchInner!1063 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) Nil!38600 (size!29490 Nil!38600) lt!1271799 lt!1271799 (size!29490 lt!1271799)))))))

(declare-fun e!2265383 () Bool)

(assert (=> b!3658625 (=> res!1485083 e!2265383)))

(assert (=> b!3658625 e!2265383))

(declare-fun lt!1271916 () Unit!55832)

(assert (=> b!3658625 (= lt!1271916 lt!1271920)))

(declare-fun lt!1271918 () Unit!55832)

(assert (=> b!3658625 (= lt!1271918 (lemmaSemiInverse!1541 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) (seqFromList!4341 (_1!22366 lt!1271919))))))

(declare-fun b!3658626 () Bool)

(declare-fun e!2265384 () Bool)

(declare-fun lt!1271917 () Option!8212)

(assert (=> b!3658626 (= e!2265384 (= (size!29489 (_1!22364 (get!12718 lt!1271917))) (size!29490 (originalCharacters!6506 (_1!22364 (get!12718 lt!1271917))))))))

(declare-fun b!3658627 () Bool)

(declare-fun res!1485088 () Bool)

(assert (=> b!3658627 (=> (not res!1485088) (not e!2265384))))

(assert (=> b!3658627 (= res!1485088 (= (value!185532 (_1!22364 (get!12718 lt!1271917))) (apply!9294 (transformation!5792 (rule!8600 (_1!22364 (get!12718 lt!1271917)))) (seqFromList!4341 (originalCharacters!6506 (_1!22364 (get!12718 lt!1271917)))))))))

(declare-fun b!3658628 () Bool)

(declare-fun e!2265386 () Bool)

(assert (=> b!3658628 (= e!2265386 e!2265384)))

(declare-fun res!1485086 () Bool)

(assert (=> b!3658628 (=> (not res!1485086) (not e!2265384))))

(assert (=> b!3658628 (= res!1485086 (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1271917))))))))

(declare-fun b!3658630 () Bool)

(assert (=> b!3658630 (= e!2265385 None!8211)))

(declare-fun b!3658631 () Bool)

(declare-fun res!1485085 () Bool)

(assert (=> b!3658631 (=> (not res!1485085) (not e!2265384))))

(assert (=> b!3658631 (= res!1485085 (< (size!29490 (_2!22364 (get!12718 lt!1271917))) (size!29490 lt!1271799)))))

(declare-fun b!3658629 () Bool)

(declare-fun res!1485087 () Bool)

(assert (=> b!3658629 (=> (not res!1485087) (not e!2265384))))

(assert (=> b!3658629 (= res!1485087 (= (++!9608 (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1271917)))) (_2!22364 (get!12718 lt!1271917))) lt!1271799))))

(declare-fun d!1074289 () Bool)

(assert (=> d!1074289 e!2265386))

(declare-fun res!1485089 () Bool)

(assert (=> d!1074289 (=> res!1485089 e!2265386)))

(declare-fun isEmpty!22891 (Option!8212) Bool)

(assert (=> d!1074289 (= res!1485089 (isEmpty!22891 lt!1271917))))

(assert (=> d!1074289 (= lt!1271917 e!2265385)))

(declare-fun c!632329 () Bool)

(assert (=> d!1074289 (= c!632329 (isEmpty!22888 (_1!22366 lt!1271919)))))

(declare-fun findLongestMatch!978 (Regex!10551 List!38724) tuple2!38464)

(assert (=> d!1074289 (= lt!1271919 (findLongestMatch!978 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271799))))

(assert (=> d!1074289 (ruleValid!2056 thiss!23823 (rule!8600 (_1!22364 lt!1271773)))))

(assert (=> d!1074289 (= (maxPrefixOneRule!2053 thiss!23823 (rule!8600 (_1!22364 lt!1271773)) lt!1271799) lt!1271917)))

(declare-fun b!3658632 () Bool)

(assert (=> b!3658632 (= e!2265383 (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) (_1!22366 (findLongestMatchInner!1063 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) Nil!38600 (size!29490 Nil!38600) lt!1271799 lt!1271799 (size!29490 lt!1271799)))))))

(declare-fun b!3658633 () Bool)

(declare-fun res!1485084 () Bool)

(assert (=> b!3658633 (=> (not res!1485084) (not e!2265384))))

(assert (=> b!3658633 (= res!1485084 (= (rule!8600 (_1!22364 (get!12718 lt!1271917))) (rule!8600 (_1!22364 lt!1271773))))))

(assert (= (and d!1074289 c!632329) b!3658630))

(assert (= (and d!1074289 (not c!632329)) b!3658625))

(assert (= (and b!3658625 (not res!1485083)) b!3658632))

(assert (= (and d!1074289 (not res!1485089)) b!3658628))

(assert (= (and b!3658628 res!1485086) b!3658629))

(assert (= (and b!3658629 res!1485087) b!3658631))

(assert (= (and b!3658631 res!1485085) b!3658633))

(assert (= (and b!3658633 res!1485084) b!3658627))

(assert (= (and b!3658627 res!1485088) b!3658626))

(declare-fun m!4164659 () Bool)

(assert (=> b!3658625 m!4164659))

(assert (=> b!3658625 m!4164475))

(declare-fun m!4164661 () Bool)

(assert (=> b!3658625 m!4164661))

(declare-fun m!4164663 () Bool)

(assert (=> b!3658625 m!4164663))

(assert (=> b!3658625 m!4164659))

(declare-fun m!4164665 () Bool)

(assert (=> b!3658625 m!4164665))

(declare-fun m!4164667 () Bool)

(assert (=> b!3658625 m!4164667))

(assert (=> b!3658625 m!4164475))

(assert (=> b!3658625 m!4164665))

(declare-fun m!4164669 () Bool)

(assert (=> b!3658625 m!4164669))

(assert (=> b!3658625 m!4164665))

(assert (=> b!3658625 m!4164665))

(declare-fun m!4164671 () Bool)

(assert (=> b!3658625 m!4164671))

(declare-fun m!4164673 () Bool)

(assert (=> b!3658625 m!4164673))

(declare-fun m!4164675 () Bool)

(assert (=> b!3658628 m!4164675))

(declare-fun m!4164677 () Bool)

(assert (=> b!3658628 m!4164677))

(assert (=> b!3658628 m!4164677))

(declare-fun m!4164679 () Bool)

(assert (=> b!3658628 m!4164679))

(assert (=> b!3658628 m!4164679))

(declare-fun m!4164681 () Bool)

(assert (=> b!3658628 m!4164681))

(declare-fun m!4164683 () Bool)

(assert (=> d!1074289 m!4164683))

(declare-fun m!4164685 () Bool)

(assert (=> d!1074289 m!4164685))

(declare-fun m!4164687 () Bool)

(assert (=> d!1074289 m!4164687))

(declare-fun m!4164689 () Bool)

(assert (=> d!1074289 m!4164689))

(assert (=> b!3658627 m!4164675))

(declare-fun m!4164691 () Bool)

(assert (=> b!3658627 m!4164691))

(assert (=> b!3658627 m!4164691))

(declare-fun m!4164693 () Bool)

(assert (=> b!3658627 m!4164693))

(assert (=> b!3658633 m!4164675))

(assert (=> b!3658629 m!4164675))

(assert (=> b!3658629 m!4164677))

(assert (=> b!3658629 m!4164677))

(assert (=> b!3658629 m!4164679))

(assert (=> b!3658629 m!4164679))

(declare-fun m!4164695 () Bool)

(assert (=> b!3658629 m!4164695))

(assert (=> b!3658632 m!4164659))

(assert (=> b!3658632 m!4164475))

(assert (=> b!3658632 m!4164659))

(assert (=> b!3658632 m!4164475))

(assert (=> b!3658632 m!4164661))

(declare-fun m!4164697 () Bool)

(assert (=> b!3658632 m!4164697))

(assert (=> b!3658626 m!4164675))

(declare-fun m!4164699 () Bool)

(assert (=> b!3658626 m!4164699))

(assert (=> b!3658631 m!4164675))

(declare-fun m!4164701 () Bool)

(assert (=> b!3658631 m!4164701))

(assert (=> b!3658631 m!4164475))

(assert (=> b!3658298 d!1074289))

(declare-fun b!3658634 () Bool)

(declare-fun e!2265388 () Bool)

(declare-fun e!2265391 () Bool)

(assert (=> b!3658634 (= e!2265388 e!2265391)))

(declare-fun c!632330 () Bool)

(assert (=> b!3658634 (= c!632330 ((_ is EmptyLang!10551) (regex!5792 rule!403)))))

(declare-fun b!3658635 () Bool)

(declare-fun e!2265389 () Bool)

(assert (=> b!3658635 (= e!2265389 (matchR!5120 (derivativeStep!3216 (regex!5792 rule!403) (head!7816 lt!1271777)) (tail!5665 lt!1271777)))))

(declare-fun bm!264595 () Bool)

(declare-fun call!264600 () Bool)

(assert (=> bm!264595 (= call!264600 (isEmpty!22888 lt!1271777))))

(declare-fun d!1074333 () Bool)

(assert (=> d!1074333 e!2265388))

(declare-fun c!632332 () Bool)

(assert (=> d!1074333 (= c!632332 ((_ is EmptyExpr!10551) (regex!5792 rule!403)))))

(declare-fun lt!1271921 () Bool)

(assert (=> d!1074333 (= lt!1271921 e!2265389)))

(declare-fun c!632331 () Bool)

(assert (=> d!1074333 (= c!632331 (isEmpty!22888 lt!1271777))))

(assert (=> d!1074333 (validRegex!4829 (regex!5792 rule!403))))

(assert (=> d!1074333 (= (matchR!5120 (regex!5792 rule!403) lt!1271777) lt!1271921)))

(declare-fun b!3658636 () Bool)

(declare-fun res!1485092 () Bool)

(declare-fun e!2265390 () Bool)

(assert (=> b!3658636 (=> (not res!1485092) (not e!2265390))))

(assert (=> b!3658636 (= res!1485092 (isEmpty!22888 (tail!5665 lt!1271777)))))

(declare-fun b!3658637 () Bool)

(declare-fun e!2265387 () Bool)

(declare-fun e!2265393 () Bool)

(assert (=> b!3658637 (= e!2265387 e!2265393)))

(declare-fun res!1485097 () Bool)

(assert (=> b!3658637 (=> res!1485097 e!2265393)))

(assert (=> b!3658637 (= res!1485097 call!264600)))

(declare-fun b!3658638 () Bool)

(assert (=> b!3658638 (= e!2265391 (not lt!1271921))))

(declare-fun b!3658639 () Bool)

(assert (=> b!3658639 (= e!2265390 (= (head!7816 lt!1271777) (c!632262 (regex!5792 rule!403))))))

(declare-fun b!3658640 () Bool)

(assert (=> b!3658640 (= e!2265389 (nullable!3667 (regex!5792 rule!403)))))

(declare-fun b!3658641 () Bool)

(declare-fun res!1485091 () Bool)

(declare-fun e!2265392 () Bool)

(assert (=> b!3658641 (=> res!1485091 e!2265392)))

(assert (=> b!3658641 (= res!1485091 e!2265390)))

(declare-fun res!1485093 () Bool)

(assert (=> b!3658641 (=> (not res!1485093) (not e!2265390))))

(assert (=> b!3658641 (= res!1485093 lt!1271921)))

(declare-fun b!3658642 () Bool)

(assert (=> b!3658642 (= e!2265392 e!2265387)))

(declare-fun res!1485090 () Bool)

(assert (=> b!3658642 (=> (not res!1485090) (not e!2265387))))

(assert (=> b!3658642 (= res!1485090 (not lt!1271921))))

(declare-fun b!3658643 () Bool)

(declare-fun res!1485096 () Bool)

(assert (=> b!3658643 (=> res!1485096 e!2265392)))

(assert (=> b!3658643 (= res!1485096 (not ((_ is ElementMatch!10551) (regex!5792 rule!403))))))

(assert (=> b!3658643 (= e!2265391 e!2265392)))

(declare-fun b!3658644 () Bool)

(assert (=> b!3658644 (= e!2265393 (not (= (head!7816 lt!1271777) (c!632262 (regex!5792 rule!403)))))))

(declare-fun b!3658645 () Bool)

(declare-fun res!1485095 () Bool)

(assert (=> b!3658645 (=> res!1485095 e!2265393)))

(assert (=> b!3658645 (= res!1485095 (not (isEmpty!22888 (tail!5665 lt!1271777))))))

(declare-fun b!3658646 () Bool)

(assert (=> b!3658646 (= e!2265388 (= lt!1271921 call!264600))))

(declare-fun b!3658647 () Bool)

(declare-fun res!1485094 () Bool)

(assert (=> b!3658647 (=> (not res!1485094) (not e!2265390))))

(assert (=> b!3658647 (= res!1485094 (not call!264600))))

(assert (= (and d!1074333 c!632331) b!3658640))

(assert (= (and d!1074333 (not c!632331)) b!3658635))

(assert (= (and d!1074333 c!632332) b!3658646))

(assert (= (and d!1074333 (not c!632332)) b!3658634))

(assert (= (and b!3658634 c!632330) b!3658638))

(assert (= (and b!3658634 (not c!632330)) b!3658643))

(assert (= (and b!3658643 (not res!1485096)) b!3658641))

(assert (= (and b!3658641 res!1485093) b!3658647))

(assert (= (and b!3658647 res!1485094) b!3658636))

(assert (= (and b!3658636 res!1485092) b!3658639))

(assert (= (and b!3658641 (not res!1485091)) b!3658642))

(assert (= (and b!3658642 res!1485090) b!3658637))

(assert (= (and b!3658637 (not res!1485097)) b!3658645))

(assert (= (and b!3658645 (not res!1485095)) b!3658644))

(assert (= (or b!3658646 b!3658637 b!3658647) bm!264595))

(declare-fun m!4164703 () Bool)

(assert (=> d!1074333 m!4164703))

(declare-fun m!4164705 () Bool)

(assert (=> d!1074333 m!4164705))

(declare-fun m!4164707 () Bool)

(assert (=> b!3658635 m!4164707))

(assert (=> b!3658635 m!4164707))

(declare-fun m!4164709 () Bool)

(assert (=> b!3658635 m!4164709))

(declare-fun m!4164711 () Bool)

(assert (=> b!3658635 m!4164711))

(assert (=> b!3658635 m!4164709))

(assert (=> b!3658635 m!4164711))

(declare-fun m!4164713 () Bool)

(assert (=> b!3658635 m!4164713))

(assert (=> b!3658645 m!4164711))

(assert (=> b!3658645 m!4164711))

(declare-fun m!4164715 () Bool)

(assert (=> b!3658645 m!4164715))

(declare-fun m!4164717 () Bool)

(assert (=> b!3658640 m!4164717))

(assert (=> b!3658636 m!4164711))

(assert (=> b!3658636 m!4164711))

(assert (=> b!3658636 m!4164715))

(assert (=> b!3658644 m!4164707))

(assert (=> b!3658639 m!4164707))

(assert (=> bm!264595 m!4164703))

(assert (=> b!3658300 d!1074333))

(declare-fun d!1074335 () Bool)

(declare-fun res!1485102 () Bool)

(declare-fun e!2265396 () Bool)

(assert (=> d!1074335 (=> (not res!1485102) (not e!2265396))))

(assert (=> d!1074335 (= res!1485102 (validRegex!4829 (regex!5792 rule!403)))))

(assert (=> d!1074335 (= (ruleValid!2056 thiss!23823 rule!403) e!2265396)))

(declare-fun b!3658652 () Bool)

(declare-fun res!1485103 () Bool)

(assert (=> b!3658652 (=> (not res!1485103) (not e!2265396))))

(assert (=> b!3658652 (= res!1485103 (not (nullable!3667 (regex!5792 rule!403))))))

(declare-fun b!3658653 () Bool)

(assert (=> b!3658653 (= e!2265396 (not (= (tag!6566 rule!403) (String!43445 ""))))))

(assert (= (and d!1074335 res!1485102) b!3658652))

(assert (= (and b!3658652 res!1485103) b!3658653))

(assert (=> d!1074335 m!4164705))

(assert (=> b!3658652 m!4164717))

(assert (=> b!3658300 d!1074335))

(declare-fun d!1074337 () Bool)

(assert (=> d!1074337 (ruleValid!2056 thiss!23823 rule!403)))

(declare-fun lt!1271924 () Unit!55832)

(declare-fun choose!21620 (LexerInterface!5381 Rule!11384 List!38725) Unit!55832)

(assert (=> d!1074337 (= lt!1271924 (choose!21620 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1074337 (contains!7650 rules!3307 rule!403)))

(assert (=> d!1074337 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1210 thiss!23823 rule!403 rules!3307) lt!1271924)))

(declare-fun bs!572513 () Bool)

(assert (= bs!572513 d!1074337))

(assert (=> bs!572513 m!4164295))

(declare-fun m!4164719 () Bool)

(assert (=> bs!572513 m!4164719))

(assert (=> bs!572513 m!4164211))

(assert (=> b!3658300 d!1074337))

(declare-fun d!1074339 () Bool)

(assert (=> d!1074339 (= (apply!9294 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802))))

(declare-fun b_lambda!108497 () Bool)

(assert (=> (not b_lambda!108497) (not d!1074339)))

(declare-fun tb!211293 () Bool)

(declare-fun t!298262 () Bool)

(assert (=> (and b!3658302 (= (toValue!8084 (transformation!5792 (rule!8600 token!511))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298262) tb!211293))

(declare-fun result!257260 () Bool)

(assert (=> tb!211293 (= result!257260 (inv!21 (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802)))))

(declare-fun m!4164721 () Bool)

(assert (=> tb!211293 m!4164721))

(assert (=> d!1074339 t!298262))

(declare-fun b_and!271315 () Bool)

(assert (= b_and!271283 (and (=> t!298262 result!257260) b_and!271315)))

(declare-fun tb!211295 () Bool)

(declare-fun t!298264 () Bool)

(assert (=> (and b!3658282 (= (toValue!8084 (transformation!5792 rule!403)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298264) tb!211295))

(declare-fun result!257262 () Bool)

(assert (= result!257262 result!257260))

(assert (=> d!1074339 t!298264))

(declare-fun b_and!271317 () Bool)

(assert (= b_and!271285 (and (=> t!298264 result!257262) b_and!271317)))

(declare-fun tb!211297 () Bool)

(declare-fun t!298266 () Bool)

(assert (=> (and b!3658304 (= (toValue!8084 (transformation!5792 (h!44021 rules!3307))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298266) tb!211297))

(declare-fun result!257264 () Bool)

(assert (= result!257264 result!257260))

(assert (=> d!1074339 t!298266))

(declare-fun b_and!271319 () Bool)

(assert (= b_and!271287 (and (=> t!298266 result!257264) b_and!271319)))

(declare-fun tb!211299 () Bool)

(declare-fun t!298268 () Bool)

(assert (=> (and b!3658301 (= (toValue!8084 (transformation!5792 anOtherTypeRule!33)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298268) tb!211299))

(declare-fun result!257266 () Bool)

(assert (= result!257266 result!257260))

(assert (=> d!1074339 t!298268))

(declare-fun b_and!271321 () Bool)

(assert (= b_and!271289 (and (=> t!298268 result!257266) b_and!271321)))

(declare-fun m!4164723 () Bool)

(assert (=> d!1074339 m!4164723))

(assert (=> b!3658291 d!1074339))

(declare-fun b!3658774 () Bool)

(declare-fun e!2265470 () Bool)

(assert (=> b!3658774 (= e!2265470 true)))

(declare-fun d!1074341 () Bool)

(assert (=> d!1074341 e!2265470))

(assert (= d!1074341 b!3658774))

(declare-fun order!21283 () Int)

(declare-fun lambda!124542 () Int)

(declare-fun order!21285 () Int)

(declare-fun dynLambda!16845 (Int Int) Int)

(declare-fun dynLambda!16846 (Int Int) Int)

(assert (=> b!3658774 (< (dynLambda!16845 order!21283 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) (dynLambda!16846 order!21285 lambda!124542))))

(declare-fun order!21287 () Int)

(declare-fun dynLambda!16847 (Int Int) Int)

(assert (=> b!3658774 (< (dynLambda!16847 order!21287 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) (dynLambda!16846 order!21285 lambda!124542))))

(assert (=> d!1074341 (= (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773)))))))

(declare-fun lt!1272017 () Unit!55832)

(declare-fun Forall2of!381 (Int BalanceConc!23216 BalanceConc!23216) Unit!55832)

(assert (=> d!1074341 (= lt!1272017 (Forall2of!381 lambda!124542 lt!1271802 (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773)))))))

(assert (=> d!1074341 (= (list!14314 lt!1271802) (list!14314 (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773)))))))

(assert (=> d!1074341 (= (lemmaEqSameImage!975 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802 (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773)))) lt!1272017)))

(declare-fun b_lambda!108499 () Bool)

(assert (=> (not b_lambda!108499) (not d!1074341)))

(assert (=> d!1074341 t!298262))

(declare-fun b_and!271323 () Bool)

(assert (= b_and!271315 (and (=> t!298262 result!257260) b_and!271323)))

(assert (=> d!1074341 t!298264))

(declare-fun b_and!271325 () Bool)

(assert (= b_and!271317 (and (=> t!298264 result!257262) b_and!271325)))

(assert (=> d!1074341 t!298266))

(declare-fun b_and!271327 () Bool)

(assert (= b_and!271319 (and (=> t!298266 result!257264) b_and!271327)))

(assert (=> d!1074341 t!298268))

(declare-fun b_and!271329 () Bool)

(assert (= b_and!271321 (and (=> t!298268 result!257266) b_and!271329)))

(declare-fun b_lambda!108501 () Bool)

(assert (=> (not b_lambda!108501) (not d!1074341)))

(declare-fun tb!211301 () Bool)

(declare-fun t!298270 () Bool)

(assert (=> (and b!3658302 (= (toValue!8084 (transformation!5792 (rule!8600 token!511))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298270) tb!211301))

(declare-fun result!257268 () Bool)

(assert (=> tb!211301 (= result!257268 (inv!21 (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773))))))))

(declare-fun m!4164919 () Bool)

(assert (=> tb!211301 m!4164919))

(assert (=> d!1074341 t!298270))

(declare-fun b_and!271331 () Bool)

(assert (= b_and!271323 (and (=> t!298270 result!257268) b_and!271331)))

(declare-fun tb!211303 () Bool)

(declare-fun t!298272 () Bool)

(assert (=> (and b!3658282 (= (toValue!8084 (transformation!5792 rule!403)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298272) tb!211303))

(declare-fun result!257270 () Bool)

(assert (= result!257270 result!257268))

(assert (=> d!1074341 t!298272))

(declare-fun b_and!271333 () Bool)

(assert (= b_and!271325 (and (=> t!298272 result!257270) b_and!271333)))

(declare-fun t!298274 () Bool)

(declare-fun tb!211305 () Bool)

(assert (=> (and b!3658304 (= (toValue!8084 (transformation!5792 (h!44021 rules!3307))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298274) tb!211305))

(declare-fun result!257272 () Bool)

(assert (= result!257272 result!257268))

(assert (=> d!1074341 t!298274))

(declare-fun b_and!271335 () Bool)

(assert (= b_and!271327 (and (=> t!298274 result!257272) b_and!271335)))

(declare-fun t!298276 () Bool)

(declare-fun tb!211307 () Bool)

(assert (=> (and b!3658301 (= (toValue!8084 (transformation!5792 anOtherTypeRule!33)) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298276) tb!211307))

(declare-fun result!257274 () Bool)

(assert (= result!257274 result!257268))

(assert (=> d!1074341 t!298276))

(declare-fun b_and!271337 () Bool)

(assert (= b_and!271329 (and (=> t!298276 result!257274) b_and!271337)))

(assert (=> d!1074341 m!4164259))

(declare-fun m!4164921 () Bool)

(assert (=> d!1074341 m!4164921))

(assert (=> d!1074341 m!4164259))

(declare-fun m!4164923 () Bool)

(assert (=> d!1074341 m!4164923))

(assert (=> d!1074341 m!4164259))

(declare-fun m!4164925 () Bool)

(assert (=> d!1074341 m!4164925))

(assert (=> d!1074341 m!4164243))

(assert (=> d!1074341 m!4164723))

(assert (=> b!3658291 d!1074341))

(declare-fun d!1074401 () Bool)

(assert (=> d!1074401 (= (size!29489 (_1!22364 lt!1271773)) (size!29490 (originalCharacters!6506 (_1!22364 lt!1271773))))))

(declare-fun Unit!55846 () Unit!55832)

(assert (=> d!1074401 (= (lemmaCharactersSize!837 (_1!22364 lt!1271773)) Unit!55846)))

(declare-fun bs!572519 () Bool)

(assert (= bs!572519 d!1074401))

(declare-fun m!4164927 () Bool)

(assert (=> bs!572519 m!4164927))

(assert (=> b!3658291 d!1074401))

(declare-fun b!3658779 () Bool)

(declare-fun e!2265474 () Bool)

(assert (=> b!3658779 (= e!2265474 true)))

(declare-fun d!1074403 () Bool)

(assert (=> d!1074403 e!2265474))

(assert (= d!1074403 b!3658779))

(declare-fun order!21289 () Int)

(declare-fun lambda!124545 () Int)

(declare-fun dynLambda!16848 (Int Int) Int)

(assert (=> b!3658779 (< (dynLambda!16845 order!21283 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) (dynLambda!16848 order!21289 lambda!124545))))

(assert (=> b!3658779 (< (dynLambda!16847 order!21287 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) (dynLambda!16848 order!21289 lambda!124545))))

(declare-fun dynLambda!16849 (Int TokenValue!6022) BalanceConc!23216)

(assert (=> d!1074403 (= (list!14314 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802))) (list!14314 lt!1271802))))

(declare-fun lt!1272020 () Unit!55832)

(declare-fun ForallOf!723 (Int BalanceConc!23216) Unit!55832)

(assert (=> d!1074403 (= lt!1272020 (ForallOf!723 lambda!124545 lt!1271802))))

(assert (=> d!1074403 (= (lemmaSemiInverse!1541 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271802) lt!1272020)))

(declare-fun b_lambda!108503 () Bool)

(assert (=> (not b_lambda!108503) (not d!1074403)))

(declare-fun tb!211309 () Bool)

(declare-fun t!298278 () Bool)

(assert (=> (and b!3658302 (= (toChars!7943 (transformation!5792 (rule!8600 token!511))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298278) tb!211309))

(declare-fun e!2265477 () Bool)

(declare-fun b!3658784 () Bool)

(declare-fun tp!1114691 () Bool)

(declare-fun inv!52068 (Conc!11801) Bool)

(assert (=> b!3658784 (= e!2265477 (and (inv!52068 (c!632263 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802)))) tp!1114691))))

(declare-fun result!257276 () Bool)

(declare-fun inv!52069 (BalanceConc!23216) Bool)

(assert (=> tb!211309 (= result!257276 (and (inv!52069 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (dynLambda!16843 (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271802))) e!2265477))))

(assert (= tb!211309 b!3658784))

(declare-fun m!4164929 () Bool)

(assert (=> b!3658784 m!4164929))

(declare-fun m!4164931 () Bool)

(assert (=> tb!211309 m!4164931))

(assert (=> d!1074403 t!298278))

(declare-fun b_and!271339 () Bool)

(assert (= b_and!271261 (and (=> t!298278 result!257276) b_and!271339)))

(declare-fun tb!211311 () Bool)

(declare-fun t!298280 () Bool)

(assert (=> (and b!3658282 (= (toChars!7943 (transformation!5792 rule!403)) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298280) tb!211311))

(declare-fun result!257280 () Bool)

(assert (= result!257280 result!257276))

(assert (=> d!1074403 t!298280))

(declare-fun b_and!271341 () Bool)

(assert (= b_and!271265 (and (=> t!298280 result!257280) b_and!271341)))

(declare-fun tb!211313 () Bool)

(declare-fun t!298282 () Bool)

(assert (=> (and b!3658304 (= (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298282) tb!211313))

(declare-fun result!257282 () Bool)

(assert (= result!257282 result!257276))

(assert (=> d!1074403 t!298282))

(declare-fun b_and!271343 () Bool)

(assert (= b_and!271269 (and (=> t!298282 result!257282) b_and!271343)))

(declare-fun tb!211315 () Bool)

(declare-fun t!298284 () Bool)

(assert (=> (and b!3658301 (= (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298284) tb!211315))

(declare-fun result!257284 () Bool)

(assert (= result!257284 result!257276))

(assert (=> d!1074403 t!298284))

(declare-fun b_and!271345 () Bool)

(assert (= b_and!271273 (and (=> t!298284 result!257284) b_and!271345)))

(declare-fun b_lambda!108505 () Bool)

(assert (=> (not b_lambda!108505) (not d!1074403)))

(assert (=> d!1074403 t!298262))

(declare-fun b_and!271347 () Bool)

(assert (= b_and!271331 (and (=> t!298262 result!257260) b_and!271347)))

(assert (=> d!1074403 t!298264))

(declare-fun b_and!271349 () Bool)

(assert (= b_and!271333 (and (=> t!298264 result!257262) b_and!271349)))

(assert (=> d!1074403 t!298266))

(declare-fun b_and!271351 () Bool)

(assert (= b_and!271335 (and (=> t!298266 result!257264) b_and!271351)))

(assert (=> d!1074403 t!298268))

(declare-fun b_and!271353 () Bool)

(assert (= b_and!271337 (and (=> t!298268 result!257266) b_and!271353)))

(declare-fun m!4164933 () Bool)

(assert (=> d!1074403 m!4164933))

(assert (=> d!1074403 m!4164723))

(declare-fun m!4164935 () Bool)

(assert (=> d!1074403 m!4164935))

(assert (=> d!1074403 m!4164935))

(declare-fun m!4164937 () Bool)

(assert (=> d!1074403 m!4164937))

(assert (=> d!1074403 m!4164723))

(assert (=> d!1074403 m!4164243))

(assert (=> b!3658291 d!1074403))

(declare-fun d!1074405 () Bool)

(assert (=> d!1074405 (= (seqFromList!4341 (originalCharacters!6506 (_1!22364 lt!1271773))) (fromListB!2002 (originalCharacters!6506 (_1!22364 lt!1271773))))))

(declare-fun bs!572520 () Bool)

(assert (= bs!572520 d!1074405))

(declare-fun m!4164939 () Bool)

(assert (=> bs!572520 m!4164939))

(assert (=> b!3658291 d!1074405))

(declare-fun d!1074407 () Bool)

(declare-fun lt!1272023 () Int)

(assert (=> d!1074407 (= lt!1272023 (size!29490 (list!14314 lt!1271802)))))

(declare-fun size!29492 (Conc!11801) Int)

(assert (=> d!1074407 (= lt!1272023 (size!29492 (c!632263 lt!1271802)))))

(assert (=> d!1074407 (= (size!29491 lt!1271802) lt!1272023)))

(declare-fun bs!572521 () Bool)

(assert (= bs!572521 d!1074407))

(assert (=> bs!572521 m!4164243))

(assert (=> bs!572521 m!4164243))

(declare-fun m!4164941 () Bool)

(assert (=> bs!572521 m!4164941))

(declare-fun m!4164943 () Bool)

(assert (=> bs!572521 m!4164943))

(assert (=> b!3658291 d!1074407))

(declare-fun b!3658785 () Bool)

(declare-fun e!2265479 () Bool)

(declare-fun e!2265482 () Bool)

(assert (=> b!3658785 (= e!2265479 e!2265482)))

(declare-fun c!632364 () Bool)

(assert (=> b!3658785 (= c!632364 ((_ is EmptyLang!10551) (regex!5792 lt!1271801)))))

(declare-fun b!3658786 () Bool)

(declare-fun e!2265480 () Bool)

(assert (=> b!3658786 (= e!2265480 (matchR!5120 (derivativeStep!3216 (regex!5792 lt!1271801) (head!7816 (list!14314 (charsOf!3806 (_1!22364 lt!1271773))))) (tail!5665 (list!14314 (charsOf!3806 (_1!22364 lt!1271773))))))))

(declare-fun bm!264605 () Bool)

(declare-fun call!264610 () Bool)

(assert (=> bm!264605 (= call!264610 (isEmpty!22888 (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))))))

(declare-fun d!1074409 () Bool)

(assert (=> d!1074409 e!2265479))

(declare-fun c!632366 () Bool)

(assert (=> d!1074409 (= c!632366 ((_ is EmptyExpr!10551) (regex!5792 lt!1271801)))))

(declare-fun lt!1272024 () Bool)

(assert (=> d!1074409 (= lt!1272024 e!2265480)))

(declare-fun c!632365 () Bool)

(assert (=> d!1074409 (= c!632365 (isEmpty!22888 (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))))))

(assert (=> d!1074409 (validRegex!4829 (regex!5792 lt!1271801))))

(assert (=> d!1074409 (= (matchR!5120 (regex!5792 lt!1271801) (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))) lt!1272024)))

(declare-fun b!3658787 () Bool)

(declare-fun res!1485164 () Bool)

(declare-fun e!2265481 () Bool)

(assert (=> b!3658787 (=> (not res!1485164) (not e!2265481))))

(assert (=> b!3658787 (= res!1485164 (isEmpty!22888 (tail!5665 (list!14314 (charsOf!3806 (_1!22364 lt!1271773))))))))

(declare-fun b!3658788 () Bool)

(declare-fun e!2265478 () Bool)

(declare-fun e!2265484 () Bool)

(assert (=> b!3658788 (= e!2265478 e!2265484)))

(declare-fun res!1485169 () Bool)

(assert (=> b!3658788 (=> res!1485169 e!2265484)))

(assert (=> b!3658788 (= res!1485169 call!264610)))

(declare-fun b!3658789 () Bool)

(assert (=> b!3658789 (= e!2265482 (not lt!1272024))))

(declare-fun b!3658790 () Bool)

(assert (=> b!3658790 (= e!2265481 (= (head!7816 (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))) (c!632262 (regex!5792 lt!1271801))))))

(declare-fun b!3658791 () Bool)

(assert (=> b!3658791 (= e!2265480 (nullable!3667 (regex!5792 lt!1271801)))))

(declare-fun b!3658792 () Bool)

(declare-fun res!1485163 () Bool)

(declare-fun e!2265483 () Bool)

(assert (=> b!3658792 (=> res!1485163 e!2265483)))

(assert (=> b!3658792 (= res!1485163 e!2265481)))

(declare-fun res!1485165 () Bool)

(assert (=> b!3658792 (=> (not res!1485165) (not e!2265481))))

(assert (=> b!3658792 (= res!1485165 lt!1272024)))

(declare-fun b!3658793 () Bool)

(assert (=> b!3658793 (= e!2265483 e!2265478)))

(declare-fun res!1485162 () Bool)

(assert (=> b!3658793 (=> (not res!1485162) (not e!2265478))))

(assert (=> b!3658793 (= res!1485162 (not lt!1272024))))

(declare-fun b!3658794 () Bool)

(declare-fun res!1485168 () Bool)

(assert (=> b!3658794 (=> res!1485168 e!2265483)))

(assert (=> b!3658794 (= res!1485168 (not ((_ is ElementMatch!10551) (regex!5792 lt!1271801))))))

(assert (=> b!3658794 (= e!2265482 e!2265483)))

(declare-fun b!3658795 () Bool)

(assert (=> b!3658795 (= e!2265484 (not (= (head!7816 (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))) (c!632262 (regex!5792 lt!1271801)))))))

(declare-fun b!3658796 () Bool)

(declare-fun res!1485167 () Bool)

(assert (=> b!3658796 (=> res!1485167 e!2265484)))

(assert (=> b!3658796 (= res!1485167 (not (isEmpty!22888 (tail!5665 (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))))))))

(declare-fun b!3658797 () Bool)

(assert (=> b!3658797 (= e!2265479 (= lt!1272024 call!264610))))

(declare-fun b!3658798 () Bool)

(declare-fun res!1485166 () Bool)

(assert (=> b!3658798 (=> (not res!1485166) (not e!2265481))))

(assert (=> b!3658798 (= res!1485166 (not call!264610))))

(assert (= (and d!1074409 c!632365) b!3658791))

(assert (= (and d!1074409 (not c!632365)) b!3658786))

(assert (= (and d!1074409 c!632366) b!3658797))

(assert (= (and d!1074409 (not c!632366)) b!3658785))

(assert (= (and b!3658785 c!632364) b!3658789))

(assert (= (and b!3658785 (not c!632364)) b!3658794))

(assert (= (and b!3658794 (not res!1485168)) b!3658792))

(assert (= (and b!3658792 res!1485165) b!3658798))

(assert (= (and b!3658798 res!1485166) b!3658787))

(assert (= (and b!3658787 res!1485164) b!3658790))

(assert (= (and b!3658792 (not res!1485163)) b!3658793))

(assert (= (and b!3658793 res!1485162) b!3658788))

(assert (= (and b!3658788 (not res!1485169)) b!3658796))

(assert (= (and b!3658796 (not res!1485167)) b!3658795))

(assert (= (or b!3658797 b!3658788 b!3658798) bm!264605))

(assert (=> d!1074409 m!4164303))

(declare-fun m!4164945 () Bool)

(assert (=> d!1074409 m!4164945))

(declare-fun m!4164947 () Bool)

(assert (=> d!1074409 m!4164947))

(assert (=> b!3658786 m!4164303))

(declare-fun m!4164949 () Bool)

(assert (=> b!3658786 m!4164949))

(assert (=> b!3658786 m!4164949))

(declare-fun m!4164951 () Bool)

(assert (=> b!3658786 m!4164951))

(assert (=> b!3658786 m!4164303))

(declare-fun m!4164953 () Bool)

(assert (=> b!3658786 m!4164953))

(assert (=> b!3658786 m!4164951))

(assert (=> b!3658786 m!4164953))

(declare-fun m!4164955 () Bool)

(assert (=> b!3658786 m!4164955))

(assert (=> b!3658796 m!4164303))

(assert (=> b!3658796 m!4164953))

(assert (=> b!3658796 m!4164953))

(declare-fun m!4164957 () Bool)

(assert (=> b!3658796 m!4164957))

(declare-fun m!4164959 () Bool)

(assert (=> b!3658791 m!4164959))

(assert (=> b!3658787 m!4164303))

(assert (=> b!3658787 m!4164953))

(assert (=> b!3658787 m!4164953))

(assert (=> b!3658787 m!4164957))

(assert (=> b!3658795 m!4164303))

(assert (=> b!3658795 m!4164949))

(assert (=> b!3658790 m!4164303))

(assert (=> b!3658790 m!4164949))

(assert (=> bm!264605 m!4164303))

(assert (=> bm!264605 m!4164945))

(assert (=> b!3658307 d!1074409))

(declare-fun d!1074411 () Bool)

(declare-fun list!14316 (Conc!11801) List!38724)

(assert (=> d!1074411 (= (list!14314 (charsOf!3806 (_1!22364 lt!1271773))) (list!14316 (c!632263 (charsOf!3806 (_1!22364 lt!1271773)))))))

(declare-fun bs!572522 () Bool)

(assert (= bs!572522 d!1074411))

(declare-fun m!4164961 () Bool)

(assert (=> bs!572522 m!4164961))

(assert (=> b!3658307 d!1074411))

(declare-fun d!1074413 () Bool)

(declare-fun lt!1272027 () BalanceConc!23216)

(assert (=> d!1074413 (= (list!14314 lt!1272027) (originalCharacters!6506 (_1!22364 lt!1271773)))))

(assert (=> d!1074413 (= lt!1272027 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (value!185532 (_1!22364 lt!1271773))))))

(assert (=> d!1074413 (= (charsOf!3806 (_1!22364 lt!1271773)) lt!1272027)))

(declare-fun b_lambda!108507 () Bool)

(assert (=> (not b_lambda!108507) (not d!1074413)))

(declare-fun tb!211317 () Bool)

(declare-fun t!298286 () Bool)

(assert (=> (and b!3658302 (= (toChars!7943 (transformation!5792 (rule!8600 token!511))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298286) tb!211317))

(declare-fun b!3658799 () Bool)

(declare-fun e!2265485 () Bool)

(declare-fun tp!1114692 () Bool)

(assert (=> b!3658799 (= e!2265485 (and (inv!52068 (c!632263 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (value!185532 (_1!22364 lt!1271773))))) tp!1114692))))

(declare-fun result!257286 () Bool)

(assert (=> tb!211317 (= result!257286 (and (inv!52069 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773)))) (value!185532 (_1!22364 lt!1271773)))) e!2265485))))

(assert (= tb!211317 b!3658799))

(declare-fun m!4164963 () Bool)

(assert (=> b!3658799 m!4164963))

(declare-fun m!4164965 () Bool)

(assert (=> tb!211317 m!4164965))

(assert (=> d!1074413 t!298286))

(declare-fun b_and!271355 () Bool)

(assert (= b_and!271339 (and (=> t!298286 result!257286) b_and!271355)))

(declare-fun tb!211319 () Bool)

(declare-fun t!298288 () Bool)

(assert (=> (and b!3658282 (= (toChars!7943 (transformation!5792 rule!403)) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298288) tb!211319))

(declare-fun result!257288 () Bool)

(assert (= result!257288 result!257286))

(assert (=> d!1074413 t!298288))

(declare-fun b_and!271357 () Bool)

(assert (= b_and!271341 (and (=> t!298288 result!257288) b_and!271357)))

(declare-fun t!298290 () Bool)

(declare-fun tb!211321 () Bool)

(assert (=> (and b!3658304 (= (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298290) tb!211321))

(declare-fun result!257290 () Bool)

(assert (= result!257290 result!257286))

(assert (=> d!1074413 t!298290))

(declare-fun b_and!271359 () Bool)

(assert (= b_and!271343 (and (=> t!298290 result!257290) b_and!271359)))

(declare-fun t!298292 () Bool)

(declare-fun tb!211323 () Bool)

(assert (=> (and b!3658301 (= (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298292) tb!211323))

(declare-fun result!257292 () Bool)

(assert (= result!257292 result!257286))

(assert (=> d!1074413 t!298292))

(declare-fun b_and!271361 () Bool)

(assert (= b_and!271345 (and (=> t!298292 result!257292) b_and!271361)))

(declare-fun m!4164967 () Bool)

(assert (=> d!1074413 m!4164967))

(declare-fun m!4164969 () Bool)

(assert (=> d!1074413 m!4164969))

(assert (=> b!3658307 d!1074413))

(declare-fun d!1074415 () Bool)

(assert (=> d!1074415 (= (get!12719 lt!1271806) (v!38092 lt!1271806))))

(assert (=> b!3658307 d!1074415))

(declare-fun d!1074417 () Bool)

(assert (=> d!1074417 (= (inv!52061 (tag!6566 rule!403)) (= (mod (str.len (value!185531 (tag!6566 rule!403))) 2) 0))))

(assert (=> b!3658269 d!1074417))

(declare-fun d!1074419 () Bool)

(declare-fun res!1485170 () Bool)

(declare-fun e!2265486 () Bool)

(assert (=> d!1074419 (=> (not res!1485170) (not e!2265486))))

(assert (=> d!1074419 (= res!1485170 (semiInverseModEq!2467 (toChars!7943 (transformation!5792 rule!403)) (toValue!8084 (transformation!5792 rule!403))))))

(assert (=> d!1074419 (= (inv!52064 (transformation!5792 rule!403)) e!2265486)))

(declare-fun b!3658800 () Bool)

(assert (=> b!3658800 (= e!2265486 (equivClasses!2366 (toChars!7943 (transformation!5792 rule!403)) (toValue!8084 (transformation!5792 rule!403))))))

(assert (= (and d!1074419 res!1485170) b!3658800))

(declare-fun m!4164971 () Bool)

(assert (=> d!1074419 m!4164971))

(declare-fun m!4164973 () Bool)

(assert (=> b!3658800 m!4164973))

(assert (=> b!3658269 d!1074419))

(declare-fun d!1074421 () Bool)

(assert (=> d!1074421 (not (contains!7649 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271778))))

(declare-fun lt!1272030 () Unit!55832)

(declare-fun choose!21623 (LexerInterface!5381 List!38725 List!38725 Rule!11384 Rule!11384 C!21288) Unit!55832)

(assert (=> d!1074421 (= lt!1272030 (choose!21623 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8600 (_1!22364 lt!1271773)) lt!1271778))))

(assert (=> d!1074421 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074421 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!320 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8600 (_1!22364 lt!1271773)) lt!1271778) lt!1272030)))

(declare-fun bs!572523 () Bool)

(assert (= bs!572523 d!1074421))

(assert (=> bs!572523 m!4164217))

(assert (=> bs!572523 m!4164217))

(declare-fun m!4164975 () Bool)

(assert (=> bs!572523 m!4164975))

(declare-fun m!4164977 () Bool)

(assert (=> bs!572523 m!4164977))

(assert (=> bs!572523 m!4164283))

(assert (=> b!3658290 d!1074421))

(declare-fun d!1074423 () Bool)

(declare-fun e!2265494 () Bool)

(assert (=> d!1074423 e!2265494))

(declare-fun res!1485180 () Bool)

(assert (=> d!1074423 (=> res!1485180 e!2265494)))

(declare-fun lt!1272033 () Bool)

(assert (=> d!1074423 (= res!1485180 (not lt!1272033))))

(declare-fun e!2265495 () Bool)

(assert (=> d!1074423 (= lt!1272033 e!2265495)))

(declare-fun res!1485179 () Bool)

(assert (=> d!1074423 (=> res!1485179 e!2265495)))

(assert (=> d!1074423 (= res!1485179 ((_ is Nil!38600) lt!1271781))))

(assert (=> d!1074423 (= (isPrefix!3155 lt!1271781 (++!9608 lt!1271781 (_2!22364 lt!1271773))) lt!1272033)))

(declare-fun b!3658812 () Bool)

(assert (=> b!3658812 (= e!2265494 (>= (size!29490 (++!9608 lt!1271781 (_2!22364 lt!1271773))) (size!29490 lt!1271781)))))

(declare-fun b!3658811 () Bool)

(declare-fun e!2265493 () Bool)

(assert (=> b!3658811 (= e!2265493 (isPrefix!3155 (tail!5665 lt!1271781) (tail!5665 (++!9608 lt!1271781 (_2!22364 lt!1271773)))))))

(declare-fun b!3658810 () Bool)

(declare-fun res!1485182 () Bool)

(assert (=> b!3658810 (=> (not res!1485182) (not e!2265493))))

(assert (=> b!3658810 (= res!1485182 (= (head!7816 lt!1271781) (head!7816 (++!9608 lt!1271781 (_2!22364 lt!1271773)))))))

(declare-fun b!3658809 () Bool)

(assert (=> b!3658809 (= e!2265495 e!2265493)))

(declare-fun res!1485181 () Bool)

(assert (=> b!3658809 (=> (not res!1485181) (not e!2265493))))

(assert (=> b!3658809 (= res!1485181 (not ((_ is Nil!38600) (++!9608 lt!1271781 (_2!22364 lt!1271773)))))))

(assert (= (and d!1074423 (not res!1485179)) b!3658809))

(assert (= (and b!3658809 res!1485181) b!3658810))

(assert (= (and b!3658810 res!1485182) b!3658811))

(assert (= (and d!1074423 (not res!1485180)) b!3658812))

(assert (=> b!3658812 m!4164221))

(declare-fun m!4164979 () Bool)

(assert (=> b!3658812 m!4164979))

(assert (=> b!3658812 m!4164333))

(assert (=> b!3658811 m!4164465))

(assert (=> b!3658811 m!4164221))

(declare-fun m!4164981 () Bool)

(assert (=> b!3658811 m!4164981))

(assert (=> b!3658811 m!4164465))

(assert (=> b!3658811 m!4164981))

(declare-fun m!4164983 () Bool)

(assert (=> b!3658811 m!4164983))

(assert (=> b!3658810 m!4164353))

(assert (=> b!3658810 m!4164221))

(declare-fun m!4164985 () Bool)

(assert (=> b!3658810 m!4164985))

(assert (=> b!3658292 d!1074423))

(declare-fun d!1074425 () Bool)

(assert (=> d!1074425 (isPrefix!3155 lt!1271781 (++!9608 lt!1271781 (_2!22364 lt!1271773)))))

(declare-fun lt!1272036 () Unit!55832)

(declare-fun choose!21624 (List!38724 List!38724) Unit!55832)

(assert (=> d!1074425 (= lt!1272036 (choose!21624 lt!1271781 (_2!22364 lt!1271773)))))

(assert (=> d!1074425 (= (lemmaConcatTwoListThenFirstIsPrefix!2074 lt!1271781 (_2!22364 lt!1271773)) lt!1272036)))

(declare-fun bs!572524 () Bool)

(assert (= bs!572524 d!1074425))

(assert (=> bs!572524 m!4164221))

(assert (=> bs!572524 m!4164221))

(assert (=> bs!572524 m!4164247))

(declare-fun m!4164987 () Bool)

(assert (=> bs!572524 m!4164987))

(assert (=> b!3658292 d!1074425))

(declare-fun d!1074427 () Bool)

(declare-fun e!2265497 () Bool)

(assert (=> d!1074427 e!2265497))

(declare-fun res!1485184 () Bool)

(assert (=> d!1074427 (=> res!1485184 e!2265497)))

(declare-fun lt!1272037 () Bool)

(assert (=> d!1074427 (= res!1485184 (not lt!1272037))))

(declare-fun e!2265498 () Bool)

(assert (=> d!1074427 (= lt!1272037 e!2265498)))

(declare-fun res!1485183 () Bool)

(assert (=> d!1074427 (=> res!1485183 e!2265498)))

(assert (=> d!1074427 (= res!1485183 ((_ is Nil!38600) lt!1271781))))

(assert (=> d!1074427 (= (isPrefix!3155 lt!1271781 lt!1271799) lt!1272037)))

(declare-fun b!3658816 () Bool)

(assert (=> b!3658816 (= e!2265497 (>= (size!29490 lt!1271799) (size!29490 lt!1271781)))))

(declare-fun b!3658815 () Bool)

(declare-fun e!2265496 () Bool)

(assert (=> b!3658815 (= e!2265496 (isPrefix!3155 (tail!5665 lt!1271781) (tail!5665 lt!1271799)))))

(declare-fun b!3658814 () Bool)

(declare-fun res!1485186 () Bool)

(assert (=> b!3658814 (=> (not res!1485186) (not e!2265496))))

(assert (=> b!3658814 (= res!1485186 (= (head!7816 lt!1271781) (head!7816 lt!1271799)))))

(declare-fun b!3658813 () Bool)

(assert (=> b!3658813 (= e!2265498 e!2265496)))

(declare-fun res!1485185 () Bool)

(assert (=> b!3658813 (=> (not res!1485185) (not e!2265496))))

(assert (=> b!3658813 (= res!1485185 (not ((_ is Nil!38600) lt!1271799)))))

(assert (= (and d!1074427 (not res!1485183)) b!3658813))

(assert (= (and b!3658813 res!1485185) b!3658814))

(assert (= (and b!3658814 res!1485186) b!3658815))

(assert (= (and d!1074427 (not res!1485184)) b!3658816))

(assert (=> b!3658816 m!4164475))

(assert (=> b!3658816 m!4164333))

(assert (=> b!3658815 m!4164465))

(assert (=> b!3658815 m!4164477))

(assert (=> b!3658815 m!4164465))

(assert (=> b!3658815 m!4164477))

(declare-fun m!4164989 () Bool)

(assert (=> b!3658815 m!4164989))

(assert (=> b!3658814 m!4164353))

(declare-fun m!4164991 () Bool)

(assert (=> b!3658814 m!4164991))

(assert (=> b!3658292 d!1074427))

(declare-fun d!1074429 () Bool)

(assert (=> d!1074429 (= (list!14314 lt!1271802) (list!14316 (c!632263 lt!1271802)))))

(declare-fun bs!572525 () Bool)

(assert (= bs!572525 d!1074429))

(declare-fun m!4164993 () Bool)

(assert (=> bs!572525 m!4164993))

(assert (=> b!3658292 d!1074429))

(declare-fun d!1074431 () Bool)

(declare-fun e!2265501 () Bool)

(assert (=> d!1074431 e!2265501))

(declare-fun res!1485191 () Bool)

(assert (=> d!1074431 (=> (not res!1485191) (not e!2265501))))

(assert (=> d!1074431 (= res!1485191 (isDefined!6445 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 (_1!22364 lt!1271773))))))))

(declare-fun lt!1272040 () Unit!55832)

(declare-fun choose!21625 (LexerInterface!5381 List!38725 List!38724 Token!10950) Unit!55832)

(assert (=> d!1074431 (= lt!1272040 (choose!21625 thiss!23823 rules!3307 lt!1271799 (_1!22364 lt!1271773)))))

(assert (=> d!1074431 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074431 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1396 thiss!23823 rules!3307 lt!1271799 (_1!22364 lt!1271773)) lt!1272040)))

(declare-fun b!3658821 () Bool)

(declare-fun res!1485192 () Bool)

(assert (=> b!3658821 (=> (not res!1485192) (not e!2265501))))

(assert (=> b!3658821 (= res!1485192 (matchR!5120 (regex!5792 (get!12719 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))) (list!14314 (charsOf!3806 (_1!22364 lt!1271773)))))))

(declare-fun b!3658822 () Bool)

(assert (=> b!3658822 (= e!2265501 (= (rule!8600 (_1!22364 lt!1271773)) (get!12719 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))))))

(assert (= (and d!1074431 res!1485191) b!3658821))

(assert (= (and b!3658821 res!1485192) b!3658822))

(assert (=> d!1074431 m!4164239))

(assert (=> d!1074431 m!4164239))

(declare-fun m!4164995 () Bool)

(assert (=> d!1074431 m!4164995))

(declare-fun m!4164997 () Bool)

(assert (=> d!1074431 m!4164997))

(assert (=> d!1074431 m!4164283))

(assert (=> b!3658821 m!4164223))

(assert (=> b!3658821 m!4164303))

(declare-fun m!4164999 () Bool)

(assert (=> b!3658821 m!4164999))

(assert (=> b!3658821 m!4164239))

(assert (=> b!3658821 m!4164223))

(assert (=> b!3658821 m!4164303))

(assert (=> b!3658821 m!4164239))

(declare-fun m!4165001 () Bool)

(assert (=> b!3658821 m!4165001))

(assert (=> b!3658822 m!4164239))

(assert (=> b!3658822 m!4164239))

(assert (=> b!3658822 m!4165001))

(assert (=> b!3658292 d!1074431))

(declare-fun b!3658835 () Bool)

(declare-fun e!2265511 () Option!8213)

(declare-fun e!2265510 () Option!8213)

(assert (=> b!3658835 (= e!2265511 e!2265510)))

(declare-fun c!632372 () Bool)

(assert (=> b!3658835 (= c!632372 (and ((_ is Cons!38601) rules!3307) (not (= (tag!6566 (h!44021 rules!3307)) (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))))))

(declare-fun b!3658836 () Bool)

(declare-fun lt!1272048 () Unit!55832)

(declare-fun lt!1272049 () Unit!55832)

(assert (=> b!3658836 (= lt!1272048 lt!1272049)))

(assert (=> b!3658836 (rulesInvariant!4778 thiss!23823 (t!298228 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!596 (LexerInterface!5381 Rule!11384 List!38725) Unit!55832)

(assert (=> b!3658836 (= lt!1272049 (lemmaInvariantOnRulesThenOnTail!596 thiss!23823 (h!44021 rules!3307) (t!298228 rules!3307)))))

(assert (=> b!3658836 (= e!2265510 (getRuleFromTag!1396 thiss!23823 (t!298228 rules!3307) (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun d!1074433 () Bool)

(declare-fun e!2265513 () Bool)

(assert (=> d!1074433 e!2265513))

(declare-fun res!1485197 () Bool)

(assert (=> d!1074433 (=> res!1485197 e!2265513)))

(declare-fun lt!1272047 () Option!8213)

(declare-fun isEmpty!22893 (Option!8213) Bool)

(assert (=> d!1074433 (= res!1485197 (isEmpty!22893 lt!1272047))))

(assert (=> d!1074433 (= lt!1272047 e!2265511)))

(declare-fun c!632373 () Bool)

(assert (=> d!1074433 (= c!632373 (and ((_ is Cons!38601) rules!3307) (= (tag!6566 (h!44021 rules!3307)) (tag!6566 (rule!8600 (_1!22364 lt!1271773))))))))

(assert (=> d!1074433 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074433 (= (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 (_1!22364 lt!1271773)))) lt!1272047)))

(declare-fun b!3658837 () Bool)

(declare-fun e!2265512 () Bool)

(assert (=> b!3658837 (= e!2265512 (= (tag!6566 (get!12719 lt!1272047)) (tag!6566 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3658838 () Bool)

(assert (=> b!3658838 (= e!2265510 None!8212)))

(declare-fun b!3658839 () Bool)

(assert (=> b!3658839 (= e!2265511 (Some!8212 (h!44021 rules!3307)))))

(declare-fun b!3658840 () Bool)

(assert (=> b!3658840 (= e!2265513 e!2265512)))

(declare-fun res!1485198 () Bool)

(assert (=> b!3658840 (=> (not res!1485198) (not e!2265512))))

(assert (=> b!3658840 (= res!1485198 (contains!7650 rules!3307 (get!12719 lt!1272047)))))

(assert (= (and d!1074433 c!632373) b!3658839))

(assert (= (and d!1074433 (not c!632373)) b!3658835))

(assert (= (and b!3658835 c!632372) b!3658836))

(assert (= (and b!3658835 (not c!632372)) b!3658838))

(assert (= (and d!1074433 (not res!1485197)) b!3658840))

(assert (= (and b!3658840 res!1485198) b!3658837))

(declare-fun m!4165003 () Bool)

(assert (=> b!3658836 m!4165003))

(declare-fun m!4165005 () Bool)

(assert (=> b!3658836 m!4165005))

(declare-fun m!4165007 () Bool)

(assert (=> b!3658836 m!4165007))

(declare-fun m!4165009 () Bool)

(assert (=> d!1074433 m!4165009))

(assert (=> d!1074433 m!4164283))

(declare-fun m!4165011 () Bool)

(assert (=> b!3658837 m!4165011))

(assert (=> b!3658840 m!4165011))

(assert (=> b!3658840 m!4165011))

(declare-fun m!4165013 () Bool)

(assert (=> b!3658840 m!4165013))

(assert (=> b!3658292 d!1074433))

(declare-fun call!264613 () Option!8212)

(declare-fun bm!264608 () Bool)

(assert (=> bm!264608 (= call!264613 (maxPrefixOneRule!2053 thiss!23823 (h!44021 rules!3307) lt!1271799))))

(declare-fun b!3658859 () Bool)

(declare-fun e!2265521 () Option!8212)

(assert (=> b!3658859 (= e!2265521 call!264613)))

(declare-fun b!3658860 () Bool)

(declare-fun e!2265520 () Bool)

(declare-fun e!2265522 () Bool)

(assert (=> b!3658860 (= e!2265520 e!2265522)))

(declare-fun res!1485214 () Bool)

(assert (=> b!3658860 (=> (not res!1485214) (not e!2265522))))

(declare-fun lt!1272061 () Option!8212)

(assert (=> b!3658860 (= res!1485214 (isDefined!6444 lt!1272061))))

(declare-fun b!3658861 () Bool)

(declare-fun res!1485217 () Bool)

(assert (=> b!3658861 (=> (not res!1485217) (not e!2265522))))

(assert (=> b!3658861 (= res!1485217 (< (size!29490 (_2!22364 (get!12718 lt!1272061))) (size!29490 lt!1271799)))))

(declare-fun b!3658862 () Bool)

(declare-fun res!1485216 () Bool)

(assert (=> b!3658862 (=> (not res!1485216) (not e!2265522))))

(assert (=> b!3658862 (= res!1485216 (= (value!185532 (_1!22364 (get!12718 lt!1272061))) (apply!9294 (transformation!5792 (rule!8600 (_1!22364 (get!12718 lt!1272061)))) (seqFromList!4341 (originalCharacters!6506 (_1!22364 (get!12718 lt!1272061)))))))))

(declare-fun b!3658863 () Bool)

(assert (=> b!3658863 (= e!2265522 (contains!7650 rules!3307 (rule!8600 (_1!22364 (get!12718 lt!1272061)))))))

(declare-fun b!3658864 () Bool)

(declare-fun res!1485215 () Bool)

(assert (=> b!3658864 (=> (not res!1485215) (not e!2265522))))

(assert (=> b!3658864 (= res!1485215 (matchR!5120 (regex!5792 (rule!8600 (_1!22364 (get!12718 lt!1272061)))) (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272061))))))))

(declare-fun b!3658865 () Bool)

(declare-fun res!1485218 () Bool)

(assert (=> b!3658865 (=> (not res!1485218) (not e!2265522))))

(assert (=> b!3658865 (= res!1485218 (= (++!9608 (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272061)))) (_2!22364 (get!12718 lt!1272061))) lt!1271799))))

(declare-fun d!1074435 () Bool)

(assert (=> d!1074435 e!2265520))

(declare-fun res!1485213 () Bool)

(assert (=> d!1074435 (=> res!1485213 e!2265520)))

(assert (=> d!1074435 (= res!1485213 (isEmpty!22891 lt!1272061))))

(assert (=> d!1074435 (= lt!1272061 e!2265521)))

(declare-fun c!632376 () Bool)

(assert (=> d!1074435 (= c!632376 (and ((_ is Cons!38601) rules!3307) ((_ is Nil!38601) (t!298228 rules!3307))))))

(declare-fun lt!1272062 () Unit!55832)

(declare-fun lt!1272064 () Unit!55832)

(assert (=> d!1074435 (= lt!1272062 lt!1272064)))

(assert (=> d!1074435 (isPrefix!3155 lt!1271799 lt!1271799)))

(declare-fun lemmaIsPrefixRefl!1990 (List!38724 List!38724) Unit!55832)

(assert (=> d!1074435 (= lt!1272064 (lemmaIsPrefixRefl!1990 lt!1271799 lt!1271799))))

(declare-fun rulesValidInductive!2053 (LexerInterface!5381 List!38725) Bool)

(assert (=> d!1074435 (rulesValidInductive!2053 thiss!23823 rules!3307)))

(assert (=> d!1074435 (= (maxPrefix!2915 thiss!23823 rules!3307 lt!1271799) lt!1272061)))

(declare-fun b!3658866 () Bool)

(declare-fun res!1485219 () Bool)

(assert (=> b!3658866 (=> (not res!1485219) (not e!2265522))))

(assert (=> b!3658866 (= res!1485219 (= (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272061)))) (originalCharacters!6506 (_1!22364 (get!12718 lt!1272061)))))))

(declare-fun b!3658867 () Bool)

(declare-fun lt!1272063 () Option!8212)

(declare-fun lt!1272060 () Option!8212)

(assert (=> b!3658867 (= e!2265521 (ite (and ((_ is None!8211) lt!1272063) ((_ is None!8211) lt!1272060)) None!8211 (ite ((_ is None!8211) lt!1272060) lt!1272063 (ite ((_ is None!8211) lt!1272063) lt!1272060 (ite (>= (size!29489 (_1!22364 (v!38091 lt!1272063))) (size!29489 (_1!22364 (v!38091 lt!1272060)))) lt!1272063 lt!1272060)))))))

(assert (=> b!3658867 (= lt!1272063 call!264613)))

(assert (=> b!3658867 (= lt!1272060 (maxPrefix!2915 thiss!23823 (t!298228 rules!3307) lt!1271799))))

(assert (= (and d!1074435 c!632376) b!3658859))

(assert (= (and d!1074435 (not c!632376)) b!3658867))

(assert (= (or b!3658859 b!3658867) bm!264608))

(assert (= (and d!1074435 (not res!1485213)) b!3658860))

(assert (= (and b!3658860 res!1485214) b!3658866))

(assert (= (and b!3658866 res!1485219) b!3658861))

(assert (= (and b!3658861 res!1485217) b!3658865))

(assert (= (and b!3658865 res!1485218) b!3658862))

(assert (= (and b!3658862 res!1485216) b!3658864))

(assert (= (and b!3658864 res!1485215) b!3658863))

(declare-fun m!4165015 () Bool)

(assert (=> b!3658862 m!4165015))

(declare-fun m!4165017 () Bool)

(assert (=> b!3658862 m!4165017))

(assert (=> b!3658862 m!4165017))

(declare-fun m!4165019 () Bool)

(assert (=> b!3658862 m!4165019))

(assert (=> b!3658865 m!4165015))

(declare-fun m!4165021 () Bool)

(assert (=> b!3658865 m!4165021))

(assert (=> b!3658865 m!4165021))

(declare-fun m!4165023 () Bool)

(assert (=> b!3658865 m!4165023))

(assert (=> b!3658865 m!4165023))

(declare-fun m!4165025 () Bool)

(assert (=> b!3658865 m!4165025))

(declare-fun m!4165027 () Bool)

(assert (=> b!3658867 m!4165027))

(declare-fun m!4165029 () Bool)

(assert (=> b!3658860 m!4165029))

(assert (=> b!3658863 m!4165015))

(declare-fun m!4165031 () Bool)

(assert (=> b!3658863 m!4165031))

(declare-fun m!4165033 () Bool)

(assert (=> d!1074435 m!4165033))

(declare-fun m!4165035 () Bool)

(assert (=> d!1074435 m!4165035))

(declare-fun m!4165037 () Bool)

(assert (=> d!1074435 m!4165037))

(declare-fun m!4165039 () Bool)

(assert (=> d!1074435 m!4165039))

(assert (=> b!3658864 m!4165015))

(assert (=> b!3658864 m!4165021))

(assert (=> b!3658864 m!4165021))

(assert (=> b!3658864 m!4165023))

(assert (=> b!3658864 m!4165023))

(declare-fun m!4165041 () Bool)

(assert (=> b!3658864 m!4165041))

(declare-fun m!4165043 () Bool)

(assert (=> bm!264608 m!4165043))

(assert (=> b!3658866 m!4165015))

(assert (=> b!3658866 m!4165021))

(assert (=> b!3658866 m!4165021))

(assert (=> b!3658866 m!4165023))

(assert (=> b!3658861 m!4165015))

(declare-fun m!4165045 () Bool)

(assert (=> b!3658861 m!4165045))

(assert (=> b!3658861 m!4164475))

(assert (=> b!3658292 d!1074435))

(declare-fun d!1074437 () Bool)

(declare-fun e!2265524 () Bool)

(assert (=> d!1074437 e!2265524))

(declare-fun res!1485221 () Bool)

(assert (=> d!1074437 (=> res!1485221 e!2265524)))

(declare-fun lt!1272065 () Bool)

(assert (=> d!1074437 (= res!1485221 (not lt!1272065))))

(declare-fun e!2265525 () Bool)

(assert (=> d!1074437 (= lt!1272065 e!2265525)))

(declare-fun res!1485220 () Bool)

(assert (=> d!1074437 (=> res!1485220 e!2265525)))

(assert (=> d!1074437 (= res!1485220 ((_ is Nil!38600) lt!1271777))))

(assert (=> d!1074437 (= (isPrefix!3155 lt!1271777 lt!1271799) lt!1272065)))

(declare-fun b!3658871 () Bool)

(assert (=> b!3658871 (= e!2265524 (>= (size!29490 lt!1271799) (size!29490 lt!1271777)))))

(declare-fun b!3658870 () Bool)

(declare-fun e!2265523 () Bool)

(assert (=> b!3658870 (= e!2265523 (isPrefix!3155 (tail!5665 lt!1271777) (tail!5665 lt!1271799)))))

(declare-fun b!3658869 () Bool)

(declare-fun res!1485223 () Bool)

(assert (=> b!3658869 (=> (not res!1485223) (not e!2265523))))

(assert (=> b!3658869 (= res!1485223 (= (head!7816 lt!1271777) (head!7816 lt!1271799)))))

(declare-fun b!3658868 () Bool)

(assert (=> b!3658868 (= e!2265525 e!2265523)))

(declare-fun res!1485222 () Bool)

(assert (=> b!3658868 (=> (not res!1485222) (not e!2265523))))

(assert (=> b!3658868 (= res!1485222 (not ((_ is Nil!38600) lt!1271799)))))

(assert (= (and d!1074437 (not res!1485220)) b!3658868))

(assert (= (and b!3658868 res!1485222) b!3658869))

(assert (= (and b!3658869 res!1485223) b!3658870))

(assert (= (and d!1074437 (not res!1485221)) b!3658871))

(assert (=> b!3658871 m!4164475))

(assert (=> b!3658871 m!4164347))

(assert (=> b!3658870 m!4164711))

(assert (=> b!3658870 m!4164477))

(assert (=> b!3658870 m!4164711))

(assert (=> b!3658870 m!4164477))

(declare-fun m!4165047 () Bool)

(assert (=> b!3658870 m!4165047))

(assert (=> b!3658869 m!4164707))

(assert (=> b!3658869 m!4164991))

(assert (=> b!3658292 d!1074437))

(declare-fun d!1074439 () Bool)

(assert (=> d!1074439 (isPrefix!3155 lt!1271777 (++!9608 lt!1271777 suffix!1395))))

(declare-fun lt!1272066 () Unit!55832)

(assert (=> d!1074439 (= lt!1272066 (choose!21624 lt!1271777 suffix!1395))))

(assert (=> d!1074439 (= (lemmaConcatTwoListThenFirstIsPrefix!2074 lt!1271777 suffix!1395) lt!1272066)))

(declare-fun bs!572526 () Bool)

(assert (= bs!572526 d!1074439))

(assert (=> bs!572526 m!4164229))

(assert (=> bs!572526 m!4164229))

(declare-fun m!4165049 () Bool)

(assert (=> bs!572526 m!4165049))

(declare-fun m!4165051 () Bool)

(assert (=> bs!572526 m!4165051))

(assert (=> b!3658292 d!1074439))

(assert (=> b!3658292 d!1074413))

(declare-fun d!1074441 () Bool)

(assert (=> d!1074441 (= (get!12718 lt!1271782) (v!38091 lt!1271782))))

(assert (=> b!3658292 d!1074441))

(declare-fun b!3658939 () Bool)

(declare-fun e!2265563 () Unit!55832)

(declare-fun Unit!55849 () Unit!55832)

(assert (=> b!3658939 (= e!2265563 Unit!55849)))

(declare-fun b!3658936 () Bool)

(declare-fun res!1485231 () Bool)

(declare-fun e!2265564 () Bool)

(assert (=> b!3658936 (=> (not res!1485231) (not e!2265564))))

(declare-fun lt!1272110 () Token!10950)

(assert (=> b!3658936 (= res!1485231 (matchR!5120 (regex!5792 (get!12719 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 lt!1272110))))) (list!14314 (charsOf!3806 lt!1272110))))))

(declare-fun d!1074443 () Bool)

(assert (=> d!1074443 (isDefined!6444 (maxPrefix!2915 thiss!23823 rules!3307 (++!9608 lt!1271777 suffix!1395)))))

(declare-fun lt!1272109 () Unit!55832)

(assert (=> d!1074443 (= lt!1272109 e!2265563)))

(declare-fun c!632379 () Bool)

(assert (=> d!1074443 (= c!632379 (isEmpty!22891 (maxPrefix!2915 thiss!23823 rules!3307 (++!9608 lt!1271777 suffix!1395))))))

(declare-fun lt!1272119 () Unit!55832)

(declare-fun lt!1272122 () Unit!55832)

(assert (=> d!1074443 (= lt!1272119 lt!1272122)))

(assert (=> d!1074443 e!2265564))

(declare-fun res!1485230 () Bool)

(assert (=> d!1074443 (=> (not res!1485230) (not e!2265564))))

(assert (=> d!1074443 (= res!1485230 (isDefined!6445 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 lt!1272110)))))))

(assert (=> d!1074443 (= lt!1272122 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1396 thiss!23823 rules!3307 lt!1271777 lt!1272110))))

(declare-fun lt!1272113 () Unit!55832)

(declare-fun lt!1272107 () Unit!55832)

(assert (=> d!1074443 (= lt!1272113 lt!1272107)))

(declare-fun lt!1272120 () List!38724)

(assert (=> d!1074443 (isPrefix!3155 lt!1272120 (++!9608 lt!1271777 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!518 (List!38724 List!38724 List!38724) Unit!55832)

(assert (=> d!1074443 (= lt!1272107 (lemmaPrefixStaysPrefixWhenAddingToSuffix!518 lt!1272120 lt!1271777 suffix!1395))))

(assert (=> d!1074443 (= lt!1272120 (list!14314 (charsOf!3806 lt!1272110)))))

(declare-fun lt!1272118 () Unit!55832)

(declare-fun lt!1272112 () Unit!55832)

(assert (=> d!1074443 (= lt!1272118 lt!1272112)))

(declare-fun lt!1272121 () List!38724)

(declare-fun lt!1272111 () List!38724)

(assert (=> d!1074443 (isPrefix!3155 lt!1272121 (++!9608 lt!1272121 lt!1272111))))

(assert (=> d!1074443 (= lt!1272112 (lemmaConcatTwoListThenFirstIsPrefix!2074 lt!1272121 lt!1272111))))

(assert (=> d!1074443 (= lt!1272111 (_2!22364 (get!12718 (maxPrefix!2915 thiss!23823 rules!3307 lt!1271777))))))

(assert (=> d!1074443 (= lt!1272121 (list!14314 (charsOf!3806 lt!1272110)))))

(declare-datatypes ((List!38727 0))(
  ( (Nil!38603) (Cons!38603 (h!44023 Token!10950) (t!298350 List!38727)) )
))
(declare-fun head!7818 (List!38727) Token!10950)

(declare-datatypes ((IArray!23611 0))(
  ( (IArray!23612 (innerList!11863 List!38727)) )
))
(declare-datatypes ((Conc!11803 0))(
  ( (Node!11803 (left!30129 Conc!11803) (right!30459 Conc!11803) (csize!23836 Int) (cheight!12014 Int)) (Leaf!18310 (xs!15005 IArray!23611) (csize!23837 Int)) (Empty!11803) )
))
(declare-datatypes ((BalanceConc!23220 0))(
  ( (BalanceConc!23221 (c!632409 Conc!11803)) )
))
(declare-fun list!14318 (BalanceConc!23220) List!38727)

(declare-datatypes ((tuple2!38468 0))(
  ( (tuple2!38469 (_1!22368 BalanceConc!23220) (_2!22368 BalanceConc!23216)) )
))
(declare-fun lex!2550 (LexerInterface!5381 List!38725 BalanceConc!23216) tuple2!38468)

(assert (=> d!1074443 (= lt!1272110 (head!7818 (list!14318 (_1!22368 (lex!2550 thiss!23823 rules!3307 (seqFromList!4341 lt!1271777))))))))

(assert (=> d!1074443 (not (isEmpty!22889 rules!3307))))

(assert (=> d!1074443 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1059 thiss!23823 rules!3307 lt!1271777 suffix!1395) lt!1272109)))

(declare-fun b!3658938 () Bool)

(declare-fun Unit!55850 () Unit!55832)

(assert (=> b!3658938 (= e!2265563 Unit!55850)))

(declare-fun lt!1272116 () List!38724)

(assert (=> b!3658938 (= lt!1272116 (++!9608 lt!1271777 suffix!1395))))

(declare-fun lt!1272106 () Unit!55832)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!554 (LexerInterface!5381 Rule!11384 List!38725 List!38724) Unit!55832)

(assert (=> b!3658938 (= lt!1272106 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!554 thiss!23823 (rule!8600 lt!1272110) rules!3307 lt!1272116))))

(assert (=> b!3658938 (isEmpty!22891 (maxPrefixOneRule!2053 thiss!23823 (rule!8600 lt!1272110) lt!1272116))))

(declare-fun lt!1272114 () Unit!55832)

(assert (=> b!3658938 (= lt!1272114 lt!1272106)))

(declare-fun lt!1272115 () List!38724)

(assert (=> b!3658938 (= lt!1272115 (list!14314 (charsOf!3806 lt!1272110)))))

(declare-fun lt!1272108 () Unit!55832)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!542 (LexerInterface!5381 Rule!11384 List!38724 List!38724) Unit!55832)

(assert (=> b!3658938 (= lt!1272108 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!542 thiss!23823 (rule!8600 lt!1272110) lt!1272115 (++!9608 lt!1271777 suffix!1395)))))

(assert (=> b!3658938 (not (matchR!5120 (regex!5792 (rule!8600 lt!1272110)) lt!1272115))))

(declare-fun lt!1272117 () Unit!55832)

(assert (=> b!3658938 (= lt!1272117 lt!1272108)))

(assert (=> b!3658938 false))

(declare-fun b!3658937 () Bool)

(assert (=> b!3658937 (= e!2265564 (= (rule!8600 lt!1272110) (get!12719 (getRuleFromTag!1396 thiss!23823 rules!3307 (tag!6566 (rule!8600 lt!1272110))))))))

(assert (= (and d!1074443 res!1485230) b!3658936))

(assert (= (and b!3658936 res!1485231) b!3658937))

(assert (= (and d!1074443 c!632379) b!3658938))

(assert (= (and d!1074443 (not c!632379)) b!3658939))

(declare-fun m!4165087 () Bool)

(assert (=> b!3658936 m!4165087))

(declare-fun m!4165089 () Bool)

(assert (=> b!3658936 m!4165089))

(declare-fun m!4165091 () Bool)

(assert (=> b!3658936 m!4165091))

(declare-fun m!4165093 () Bool)

(assert (=> b!3658936 m!4165093))

(declare-fun m!4165095 () Bool)

(assert (=> b!3658936 m!4165095))

(assert (=> b!3658936 m!4165087))

(assert (=> b!3658936 m!4165093))

(assert (=> b!3658936 m!4165089))

(declare-fun m!4165097 () Bool)

(assert (=> d!1074443 m!4165097))

(declare-fun m!4165099 () Bool)

(assert (=> d!1074443 m!4165099))

(declare-fun m!4165101 () Bool)

(assert (=> d!1074443 m!4165101))

(assert (=> d!1074443 m!4164323))

(assert (=> d!1074443 m!4164277))

(declare-fun m!4165103 () Bool)

(assert (=> d!1074443 m!4165103))

(assert (=> d!1074443 m!4164277))

(declare-fun m!4165105 () Bool)

(assert (=> d!1074443 m!4165105))

(declare-fun m!4165107 () Bool)

(assert (=> d!1074443 m!4165107))

(declare-fun m!4165109 () Bool)

(assert (=> d!1074443 m!4165109))

(declare-fun m!4165111 () Bool)

(assert (=> d!1074443 m!4165111))

(declare-fun m!4165113 () Bool)

(assert (=> d!1074443 m!4165113))

(assert (=> d!1074443 m!4165087))

(assert (=> d!1074443 m!4164229))

(assert (=> d!1074443 m!4164229))

(assert (=> d!1074443 m!4165105))

(assert (=> d!1074443 m!4165089))

(declare-fun m!4165115 () Bool)

(assert (=> d!1074443 m!4165115))

(declare-fun m!4165117 () Bool)

(assert (=> d!1074443 m!4165117))

(declare-fun m!4165119 () Bool)

(assert (=> d!1074443 m!4165119))

(assert (=> d!1074443 m!4165087))

(assert (=> d!1074443 m!4165093))

(assert (=> d!1074443 m!4164229))

(declare-fun m!4165121 () Bool)

(assert (=> d!1074443 m!4165121))

(assert (=> d!1074443 m!4165089))

(assert (=> d!1074443 m!4165117))

(declare-fun m!4165123 () Bool)

(assert (=> d!1074443 m!4165123))

(assert (=> d!1074443 m!4165109))

(assert (=> d!1074443 m!4165097))

(assert (=> d!1074443 m!4165105))

(declare-fun m!4165125 () Bool)

(assert (=> d!1074443 m!4165125))

(declare-fun m!4165127 () Bool)

(assert (=> b!3658938 m!4165127))

(declare-fun m!4165129 () Bool)

(assert (=> b!3658938 m!4165129))

(assert (=> b!3658938 m!4164229))

(declare-fun m!4165131 () Bool)

(assert (=> b!3658938 m!4165131))

(assert (=> b!3658938 m!4165087))

(assert (=> b!3658938 m!4165093))

(declare-fun m!4165133 () Bool)

(assert (=> b!3658938 m!4165133))

(declare-fun m!4165135 () Bool)

(assert (=> b!3658938 m!4165135))

(assert (=> b!3658938 m!4165087))

(assert (=> b!3658938 m!4164229))

(assert (=> b!3658938 m!4165133))

(assert (=> b!3658937 m!4165089))

(assert (=> b!3658937 m!4165089))

(assert (=> b!3658937 m!4165091))

(assert (=> b!3658292 d!1074443))

(declare-fun e!2265569 () Bool)

(declare-fun lt!1272125 () List!38724)

(declare-fun b!3658951 () Bool)

(assert (=> b!3658951 (= e!2265569 (or (not (= (_2!22364 lt!1271773) Nil!38600)) (= lt!1272125 lt!1271781)))))

(declare-fun b!3658948 () Bool)

(declare-fun e!2265570 () List!38724)

(assert (=> b!3658948 (= e!2265570 (_2!22364 lt!1271773))))

(declare-fun d!1074459 () Bool)

(assert (=> d!1074459 e!2265569))

(declare-fun res!1485236 () Bool)

(assert (=> d!1074459 (=> (not res!1485236) (not e!2265569))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5574 (List!38724) (InoxSet C!21288))

(assert (=> d!1074459 (= res!1485236 (= (content!5574 lt!1272125) ((_ map or) (content!5574 lt!1271781) (content!5574 (_2!22364 lt!1271773)))))))

(assert (=> d!1074459 (= lt!1272125 e!2265570)))

(declare-fun c!632382 () Bool)

(assert (=> d!1074459 (= c!632382 ((_ is Nil!38600) lt!1271781))))

(assert (=> d!1074459 (= (++!9608 lt!1271781 (_2!22364 lt!1271773)) lt!1272125)))

(declare-fun b!3658950 () Bool)

(declare-fun res!1485237 () Bool)

(assert (=> b!3658950 (=> (not res!1485237) (not e!2265569))))

(assert (=> b!3658950 (= res!1485237 (= (size!29490 lt!1272125) (+ (size!29490 lt!1271781) (size!29490 (_2!22364 lt!1271773)))))))

(declare-fun b!3658949 () Bool)

(assert (=> b!3658949 (= e!2265570 (Cons!38600 (h!44020 lt!1271781) (++!9608 (t!298227 lt!1271781) (_2!22364 lt!1271773))))))

(assert (= (and d!1074459 c!632382) b!3658948))

(assert (= (and d!1074459 (not c!632382)) b!3658949))

(assert (= (and d!1074459 res!1485236) b!3658950))

(assert (= (and b!3658950 res!1485237) b!3658951))

(declare-fun m!4165137 () Bool)

(assert (=> d!1074459 m!4165137))

(declare-fun m!4165139 () Bool)

(assert (=> d!1074459 m!4165139))

(declare-fun m!4165141 () Bool)

(assert (=> d!1074459 m!4165141))

(declare-fun m!4165143 () Bool)

(assert (=> b!3658950 m!4165143))

(assert (=> b!3658950 m!4164333))

(declare-fun m!4165145 () Bool)

(assert (=> b!3658950 m!4165145))

(declare-fun m!4165147 () Bool)

(assert (=> b!3658949 m!4165147))

(assert (=> b!3658292 d!1074459))

(declare-fun b!3658955 () Bool)

(declare-fun lt!1272126 () List!38724)

(declare-fun e!2265571 () Bool)

(assert (=> b!3658955 (= e!2265571 (or (not (= suffix!1395 Nil!38600)) (= lt!1272126 lt!1271777)))))

(declare-fun b!3658952 () Bool)

(declare-fun e!2265572 () List!38724)

(assert (=> b!3658952 (= e!2265572 suffix!1395)))

(declare-fun d!1074461 () Bool)

(assert (=> d!1074461 e!2265571))

(declare-fun res!1485238 () Bool)

(assert (=> d!1074461 (=> (not res!1485238) (not e!2265571))))

(assert (=> d!1074461 (= res!1485238 (= (content!5574 lt!1272126) ((_ map or) (content!5574 lt!1271777) (content!5574 suffix!1395))))))

(assert (=> d!1074461 (= lt!1272126 e!2265572)))

(declare-fun c!632383 () Bool)

(assert (=> d!1074461 (= c!632383 ((_ is Nil!38600) lt!1271777))))

(assert (=> d!1074461 (= (++!9608 lt!1271777 suffix!1395) lt!1272126)))

(declare-fun b!3658954 () Bool)

(declare-fun res!1485239 () Bool)

(assert (=> b!3658954 (=> (not res!1485239) (not e!2265571))))

(assert (=> b!3658954 (= res!1485239 (= (size!29490 lt!1272126) (+ (size!29490 lt!1271777) (size!29490 suffix!1395))))))

(declare-fun b!3658953 () Bool)

(assert (=> b!3658953 (= e!2265572 (Cons!38600 (h!44020 lt!1271777) (++!9608 (t!298227 lt!1271777) suffix!1395)))))

(assert (= (and d!1074461 c!632383) b!3658952))

(assert (= (and d!1074461 (not c!632383)) b!3658953))

(assert (= (and d!1074461 res!1485238) b!3658954))

(assert (= (and b!3658954 res!1485239) b!3658955))

(declare-fun m!4165149 () Bool)

(assert (=> d!1074461 m!4165149))

(declare-fun m!4165151 () Bool)

(assert (=> d!1074461 m!4165151))

(declare-fun m!4165153 () Bool)

(assert (=> d!1074461 m!4165153))

(declare-fun m!4165155 () Bool)

(assert (=> b!3658954 m!4165155))

(assert (=> b!3658954 m!4164347))

(declare-fun m!4165157 () Bool)

(assert (=> b!3658954 m!4165157))

(declare-fun m!4165159 () Bool)

(assert (=> b!3658953 m!4165159))

(assert (=> b!3658292 d!1074461))

(declare-fun d!1074463 () Bool)

(assert (=> d!1074463 (= (isDefined!6445 lt!1271806) (not (isEmpty!22893 lt!1271806)))))

(declare-fun bs!572530 () Bool)

(assert (= bs!572530 d!1074463))

(declare-fun m!4165161 () Bool)

(assert (=> bs!572530 m!4165161))

(assert (=> b!3658292 d!1074463))

(declare-fun d!1074465 () Bool)

(declare-fun lt!1272129 () Bool)

(assert (=> d!1074465 (= lt!1272129 (select (content!5574 (usedCharacters!1004 (regex!5792 anOtherTypeRule!33))) lt!1271774))))

(declare-fun e!2265578 () Bool)

(assert (=> d!1074465 (= lt!1272129 e!2265578)))

(declare-fun res!1485245 () Bool)

(assert (=> d!1074465 (=> (not res!1485245) (not e!2265578))))

(assert (=> d!1074465 (= res!1485245 ((_ is Cons!38600) (usedCharacters!1004 (regex!5792 anOtherTypeRule!33))))))

(assert (=> d!1074465 (= (contains!7649 (usedCharacters!1004 (regex!5792 anOtherTypeRule!33)) lt!1271774) lt!1272129)))

(declare-fun b!3658960 () Bool)

(declare-fun e!2265577 () Bool)

(assert (=> b!3658960 (= e!2265578 e!2265577)))

(declare-fun res!1485244 () Bool)

(assert (=> b!3658960 (=> res!1485244 e!2265577)))

(assert (=> b!3658960 (= res!1485244 (= (h!44020 (usedCharacters!1004 (regex!5792 anOtherTypeRule!33))) lt!1271774))))

(declare-fun b!3658961 () Bool)

(assert (=> b!3658961 (= e!2265577 (contains!7649 (t!298227 (usedCharacters!1004 (regex!5792 anOtherTypeRule!33))) lt!1271774))))

(assert (= (and d!1074465 res!1485245) b!3658960))

(assert (= (and b!3658960 (not res!1485244)) b!3658961))

(assert (=> d!1074465 m!4164355))

(declare-fun m!4165163 () Bool)

(assert (=> d!1074465 m!4165163))

(declare-fun m!4165165 () Bool)

(assert (=> d!1074465 m!4165165))

(declare-fun m!4165167 () Bool)

(assert (=> b!3658961 m!4165167))

(assert (=> b!3658308 d!1074465))

(declare-fun b!3658978 () Bool)

(declare-fun e!2265587 () List!38724)

(declare-fun e!2265588 () List!38724)

(assert (=> b!3658978 (= e!2265587 e!2265588)))

(declare-fun c!632392 () Bool)

(assert (=> b!3658978 (= c!632392 ((_ is ElementMatch!10551) (regex!5792 anOtherTypeRule!33)))))

(declare-fun b!3658979 () Bool)

(declare-fun e!2265590 () List!38724)

(declare-fun call!264625 () List!38724)

(assert (=> b!3658979 (= e!2265590 call!264625)))

(declare-fun call!264622 () List!38724)

(declare-fun bm!264617 () Bool)

(declare-fun c!632393 () Bool)

(declare-fun c!632395 () Bool)

(assert (=> bm!264617 (= call!264622 (usedCharacters!1004 (ite c!632393 (reg!10880 (regex!5792 anOtherTypeRule!33)) (ite c!632395 (regOne!21615 (regex!5792 anOtherTypeRule!33)) (regTwo!21614 (regex!5792 anOtherTypeRule!33))))))))

(declare-fun b!3658980 () Bool)

(declare-fun e!2265589 () List!38724)

(assert (=> b!3658980 (= e!2265589 e!2265590)))

(assert (=> b!3658980 (= c!632395 ((_ is Union!10551) (regex!5792 anOtherTypeRule!33)))))

(declare-fun b!3658981 () Bool)

(assert (=> b!3658981 (= e!2265589 call!264622)))

(declare-fun d!1074467 () Bool)

(declare-fun c!632394 () Bool)

(assert (=> d!1074467 (= c!632394 (or ((_ is EmptyExpr!10551) (regex!5792 anOtherTypeRule!33)) ((_ is EmptyLang!10551) (regex!5792 anOtherTypeRule!33))))))

(assert (=> d!1074467 (= (usedCharacters!1004 (regex!5792 anOtherTypeRule!33)) e!2265587)))

(declare-fun b!3658982 () Bool)

(assert (=> b!3658982 (= e!2265587 Nil!38600)))

(declare-fun bm!264618 () Bool)

(declare-fun call!264624 () List!38724)

(assert (=> bm!264618 (= call!264624 call!264622)))

(declare-fun b!3658983 () Bool)

(assert (=> b!3658983 (= c!632393 ((_ is Star!10551) (regex!5792 anOtherTypeRule!33)))))

(assert (=> b!3658983 (= e!2265588 e!2265589)))

(declare-fun bm!264619 () Bool)

(declare-fun call!264623 () List!38724)

(assert (=> bm!264619 (= call!264623 (usedCharacters!1004 (ite c!632395 (regTwo!21615 (regex!5792 anOtherTypeRule!33)) (regOne!21614 (regex!5792 anOtherTypeRule!33)))))))

(declare-fun bm!264620 () Bool)

(assert (=> bm!264620 (= call!264625 (++!9608 (ite c!632395 call!264624 call!264623) (ite c!632395 call!264623 call!264624)))))

(declare-fun b!3658984 () Bool)

(assert (=> b!3658984 (= e!2265590 call!264625)))

(declare-fun b!3658985 () Bool)

(assert (=> b!3658985 (= e!2265588 (Cons!38600 (c!632262 (regex!5792 anOtherTypeRule!33)) Nil!38600))))

(assert (= (and d!1074467 c!632394) b!3658982))

(assert (= (and d!1074467 (not c!632394)) b!3658978))

(assert (= (and b!3658978 c!632392) b!3658985))

(assert (= (and b!3658978 (not c!632392)) b!3658983))

(assert (= (and b!3658983 c!632393) b!3658981))

(assert (= (and b!3658983 (not c!632393)) b!3658980))

(assert (= (and b!3658980 c!632395) b!3658979))

(assert (= (and b!3658980 (not c!632395)) b!3658984))

(assert (= (or b!3658979 b!3658984) bm!264618))

(assert (= (or b!3658979 b!3658984) bm!264619))

(assert (= (or b!3658979 b!3658984) bm!264620))

(assert (= (or b!3658981 bm!264618) bm!264617))

(declare-fun m!4165169 () Bool)

(assert (=> bm!264617 m!4165169))

(declare-fun m!4165171 () Bool)

(assert (=> bm!264619 m!4165171))

(declare-fun m!4165173 () Bool)

(assert (=> bm!264620 m!4165173))

(assert (=> b!3658308 d!1074467))

(declare-fun d!1074469 () Bool)

(assert (=> d!1074469 (= (inv!52061 (tag!6566 (rule!8600 token!511))) (= (mod (str.len (value!185531 (tag!6566 (rule!8600 token!511)))) 2) 0))))

(assert (=> b!3658270 d!1074469))

(declare-fun d!1074471 () Bool)

(declare-fun res!1485246 () Bool)

(declare-fun e!2265591 () Bool)

(assert (=> d!1074471 (=> (not res!1485246) (not e!2265591))))

(assert (=> d!1074471 (= res!1485246 (semiInverseModEq!2467 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (toValue!8084 (transformation!5792 (rule!8600 token!511)))))))

(assert (=> d!1074471 (= (inv!52064 (transformation!5792 (rule!8600 token!511))) e!2265591)))

(declare-fun b!3658986 () Bool)

(assert (=> b!3658986 (= e!2265591 (equivClasses!2366 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (toValue!8084 (transformation!5792 (rule!8600 token!511)))))))

(assert (= (and d!1074471 res!1485246) b!3658986))

(declare-fun m!4165175 () Bool)

(assert (=> d!1074471 m!4165175))

(declare-fun m!4165177 () Bool)

(assert (=> b!3658986 m!4165177))

(assert (=> b!3658270 d!1074471))

(declare-fun d!1074473 () Bool)

(assert (=> d!1074473 (= (isEmpty!22889 rules!3307) ((_ is Nil!38601) rules!3307))))

(assert (=> b!3658310 d!1074473))

(declare-fun d!1074475 () Bool)

(assert (=> d!1074475 (not (contains!7649 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271778))))

(declare-fun lt!1272132 () Unit!55832)

(declare-fun choose!21628 (LexerInterface!5381 List!38725 List!38725 Rule!11384 Rule!11384 C!21288) Unit!55832)

(assert (=> d!1074475 (= lt!1272132 (choose!21628 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) rule!403 lt!1271778))))

(assert (=> d!1074475 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074475 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!438 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) rule!403 lt!1271778) lt!1272132)))

(declare-fun bs!572531 () Bool)

(assert (= bs!572531 d!1074475))

(assert (=> bs!572531 m!4164217))

(assert (=> bs!572531 m!4164217))

(assert (=> bs!572531 m!4164975))

(declare-fun m!4165179 () Bool)

(assert (=> bs!572531 m!4165179))

(assert (=> bs!572531 m!4164283))

(assert (=> b!3658295 d!1074475))

(declare-fun d!1074477 () Bool)

(declare-fun lt!1272133 () Bool)

(assert (=> d!1074477 (= lt!1272133 (select (content!5574 call!264573) lt!1271778))))

(declare-fun e!2265593 () Bool)

(assert (=> d!1074477 (= lt!1272133 e!2265593)))

(declare-fun res!1485248 () Bool)

(assert (=> d!1074477 (=> (not res!1485248) (not e!2265593))))

(assert (=> d!1074477 (= res!1485248 ((_ is Cons!38600) call!264573))))

(assert (=> d!1074477 (= (contains!7649 call!264573 lt!1271778) lt!1272133)))

(declare-fun b!3658987 () Bool)

(declare-fun e!2265592 () Bool)

(assert (=> b!3658987 (= e!2265593 e!2265592)))

(declare-fun res!1485247 () Bool)

(assert (=> b!3658987 (=> res!1485247 e!2265592)))

(assert (=> b!3658987 (= res!1485247 (= (h!44020 call!264573) lt!1271778))))

(declare-fun b!3658988 () Bool)

(assert (=> b!3658988 (= e!2265592 (contains!7649 (t!298227 call!264573) lt!1271778))))

(assert (= (and d!1074477 res!1485248) b!3658987))

(assert (= (and b!3658987 (not res!1485247)) b!3658988))

(declare-fun m!4165181 () Bool)

(assert (=> d!1074477 m!4165181))

(declare-fun m!4165183 () Bool)

(assert (=> d!1074477 m!4165183))

(declare-fun m!4165185 () Bool)

(assert (=> b!3658988 m!4165185))

(assert (=> bm!264571 d!1074477))

(declare-fun d!1074479 () Bool)

(assert (=> d!1074479 (contains!7649 lt!1271781 (head!7816 suffix!1395))))

(declare-fun lt!1272136 () Unit!55832)

(declare-fun choose!21629 (List!38724 List!38724 List!38724 List!38724) Unit!55832)

(assert (=> d!1074479 (= lt!1272136 (choose!21629 lt!1271777 suffix!1395 lt!1271781 lt!1271799))))

(assert (=> d!1074479 (isPrefix!3155 lt!1271781 lt!1271799)))

(assert (=> d!1074479 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!100 lt!1271777 suffix!1395 lt!1271781 lt!1271799) lt!1272136)))

(declare-fun bs!572532 () Bool)

(assert (= bs!572532 d!1074479))

(assert (=> bs!572532 m!4164361))

(assert (=> bs!572532 m!4164361))

(declare-fun m!4165187 () Bool)

(assert (=> bs!572532 m!4165187))

(declare-fun m!4165189 () Bool)

(assert (=> bs!572532 m!4165189))

(assert (=> bs!572532 m!4164233))

(assert (=> b!3658273 d!1074479))

(declare-fun d!1074481 () Bool)

(declare-fun lt!1272137 () Bool)

(assert (=> d!1074481 (= lt!1272137 (select (content!5574 lt!1271781) lt!1271774))))

(declare-fun e!2265595 () Bool)

(assert (=> d!1074481 (= lt!1272137 e!2265595)))

(declare-fun res!1485250 () Bool)

(assert (=> d!1074481 (=> (not res!1485250) (not e!2265595))))

(assert (=> d!1074481 (= res!1485250 ((_ is Cons!38600) lt!1271781))))

(assert (=> d!1074481 (= (contains!7649 lt!1271781 lt!1271774) lt!1272137)))

(declare-fun b!3658989 () Bool)

(declare-fun e!2265594 () Bool)

(assert (=> b!3658989 (= e!2265595 e!2265594)))

(declare-fun res!1485249 () Bool)

(assert (=> b!3658989 (=> res!1485249 e!2265594)))

(assert (=> b!3658989 (= res!1485249 (= (h!44020 lt!1271781) lt!1271774))))

(declare-fun b!3658990 () Bool)

(assert (=> b!3658990 (= e!2265594 (contains!7649 (t!298227 lt!1271781) lt!1271774))))

(assert (= (and d!1074481 res!1485250) b!3658989))

(assert (= (and b!3658989 (not res!1485249)) b!3658990))

(assert (=> d!1074481 m!4165139))

(declare-fun m!4165191 () Bool)

(assert (=> d!1074481 m!4165191))

(declare-fun m!4165193 () Bool)

(assert (=> b!3658990 m!4165193))

(assert (=> b!3658273 d!1074481))

(declare-fun d!1074483 () Bool)

(assert (=> d!1074483 (not (contains!7649 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271774))))

(declare-fun lt!1272138 () Unit!55832)

(assert (=> d!1074483 (= lt!1272138 (choose!21628 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) anOtherTypeRule!33 lt!1271774))))

(assert (=> d!1074483 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074483 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!438 thiss!23823 rules!3307 rules!3307 (rule!8600 (_1!22364 lt!1271773)) anOtherTypeRule!33 lt!1271774) lt!1272138)))

(declare-fun bs!572533 () Bool)

(assert (= bs!572533 d!1074483))

(assert (=> bs!572533 m!4164217))

(assert (=> bs!572533 m!4164217))

(declare-fun m!4165195 () Bool)

(assert (=> bs!572533 m!4165195))

(declare-fun m!4165197 () Bool)

(assert (=> bs!572533 m!4165197))

(assert (=> bs!572533 m!4164283))

(assert (=> b!3658294 d!1074483))

(declare-fun d!1074485 () Bool)

(assert (=> d!1074485 (not (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781))))

(declare-fun lt!1272141 () Unit!55832)

(declare-fun choose!21630 (Regex!10551 List!38724 C!21288) Unit!55832)

(assert (=> d!1074485 (= lt!1272141 (choose!21630 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271778))))

(assert (=> d!1074485 (validRegex!4829 (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))

(assert (=> d!1074485 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271778) lt!1272141)))

(declare-fun bs!572534 () Bool)

(assert (= bs!572534 d!1074485))

(assert (=> bs!572534 m!4164265))

(declare-fun m!4165199 () Bool)

(assert (=> bs!572534 m!4165199))

(assert (=> bs!572534 m!4164461))

(assert (=> bm!264569 d!1074485))

(declare-fun d!1074487 () Bool)

(declare-fun res!1485255 () Bool)

(declare-fun e!2265598 () Bool)

(assert (=> d!1074487 (=> (not res!1485255) (not e!2265598))))

(assert (=> d!1074487 (= res!1485255 (not (isEmpty!22888 (originalCharacters!6506 token!511))))))

(assert (=> d!1074487 (= (inv!52065 token!511) e!2265598)))

(declare-fun b!3658995 () Bool)

(declare-fun res!1485256 () Bool)

(assert (=> b!3658995 (=> (not res!1485256) (not e!2265598))))

(assert (=> b!3658995 (= res!1485256 (= (originalCharacters!6506 token!511) (list!14314 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (value!185532 token!511)))))))

(declare-fun b!3658996 () Bool)

(assert (=> b!3658996 (= e!2265598 (= (size!29489 token!511) (size!29490 (originalCharacters!6506 token!511))))))

(assert (= (and d!1074487 res!1485255) b!3658995))

(assert (= (and b!3658995 res!1485256) b!3658996))

(declare-fun b_lambda!108523 () Bool)

(assert (=> (not b_lambda!108523) (not b!3658995)))

(declare-fun t!298330 () Bool)

(declare-fun tb!211361 () Bool)

(assert (=> (and b!3658302 (= (toChars!7943 (transformation!5792 (rule!8600 token!511))) (toChars!7943 (transformation!5792 (rule!8600 token!511)))) t!298330) tb!211361))

(declare-fun b!3658997 () Bool)

(declare-fun e!2265599 () Bool)

(declare-fun tp!1114740 () Bool)

(assert (=> b!3658997 (= e!2265599 (and (inv!52068 (c!632263 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (value!185532 token!511)))) tp!1114740))))

(declare-fun result!257336 () Bool)

(assert (=> tb!211361 (= result!257336 (and (inv!52069 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (value!185532 token!511))) e!2265599))))

(assert (= tb!211361 b!3658997))

(declare-fun m!4165201 () Bool)

(assert (=> b!3658997 m!4165201))

(declare-fun m!4165203 () Bool)

(assert (=> tb!211361 m!4165203))

(assert (=> b!3658995 t!298330))

(declare-fun b_and!271407 () Bool)

(assert (= b_and!271355 (and (=> t!298330 result!257336) b_and!271407)))

(declare-fun t!298332 () Bool)

(declare-fun tb!211363 () Bool)

(assert (=> (and b!3658282 (= (toChars!7943 (transformation!5792 rule!403)) (toChars!7943 (transformation!5792 (rule!8600 token!511)))) t!298332) tb!211363))

(declare-fun result!257338 () Bool)

(assert (= result!257338 result!257336))

(assert (=> b!3658995 t!298332))

(declare-fun b_and!271409 () Bool)

(assert (= b_and!271357 (and (=> t!298332 result!257338) b_and!271409)))

(declare-fun t!298334 () Bool)

(declare-fun tb!211365 () Bool)

(assert (=> (and b!3658304 (= (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toChars!7943 (transformation!5792 (rule!8600 token!511)))) t!298334) tb!211365))

(declare-fun result!257340 () Bool)

(assert (= result!257340 result!257336))

(assert (=> b!3658995 t!298334))

(declare-fun b_and!271411 () Bool)

(assert (= b_and!271359 (and (=> t!298334 result!257340) b_and!271411)))

(declare-fun t!298336 () Bool)

(declare-fun tb!211367 () Bool)

(assert (=> (and b!3658301 (= (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toChars!7943 (transformation!5792 (rule!8600 token!511)))) t!298336) tb!211367))

(declare-fun result!257342 () Bool)

(assert (= result!257342 result!257336))

(assert (=> b!3658995 t!298336))

(declare-fun b_and!271413 () Bool)

(assert (= b_and!271361 (and (=> t!298336 result!257342) b_and!271413)))

(declare-fun m!4165205 () Bool)

(assert (=> d!1074487 m!4165205))

(declare-fun m!4165207 () Bool)

(assert (=> b!3658995 m!4165207))

(assert (=> b!3658995 m!4165207))

(declare-fun m!4165209 () Bool)

(assert (=> b!3658995 m!4165209))

(declare-fun m!4165211 () Bool)

(assert (=> b!3658996 m!4165211))

(assert (=> start!342266 d!1074487))

(declare-fun d!1074489 () Bool)

(declare-fun res!1485261 () Bool)

(declare-fun e!2265604 () Bool)

(assert (=> d!1074489 (=> res!1485261 e!2265604)))

(assert (=> d!1074489 (= res!1485261 (not ((_ is Cons!38601) rules!3307)))))

(assert (=> d!1074489 (= (sepAndNonSepRulesDisjointChars!1960 rules!3307 rules!3307) e!2265604)))

(declare-fun b!3659002 () Bool)

(declare-fun e!2265605 () Bool)

(assert (=> b!3659002 (= e!2265604 e!2265605)))

(declare-fun res!1485262 () Bool)

(assert (=> b!3659002 (=> (not res!1485262) (not e!2265605))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!891 (Rule!11384 List!38725) Bool)

(assert (=> b!3659002 (= res!1485262 (ruleDisjointCharsFromAllFromOtherType!891 (h!44021 rules!3307) rules!3307))))

(declare-fun b!3659003 () Bool)

(assert (=> b!3659003 (= e!2265605 (sepAndNonSepRulesDisjointChars!1960 rules!3307 (t!298228 rules!3307)))))

(assert (= (and d!1074489 (not res!1485261)) b!3659002))

(assert (= (and b!3659002 res!1485262) b!3659003))

(declare-fun m!4165213 () Bool)

(assert (=> b!3659002 m!4165213))

(declare-fun m!4165215 () Bool)

(assert (=> b!3659003 m!4165215))

(assert (=> b!3658303 d!1074489))

(declare-fun d!1074491 () Bool)

(assert (=> d!1074491 (not (matchR!5120 (regex!5792 rule!403) lt!1271777))))

(declare-fun lt!1272142 () Unit!55832)

(assert (=> d!1074491 (= lt!1272142 (choose!21630 (regex!5792 rule!403) lt!1271777 lt!1271778))))

(assert (=> d!1074491 (validRegex!4829 (regex!5792 rule!403))))

(assert (=> d!1074491 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 rule!403) lt!1271777 lt!1271778) lt!1272142)))

(declare-fun bs!572535 () Bool)

(assert (= bs!572535 d!1074491))

(assert (=> bs!572535 m!4164293))

(declare-fun m!4165217 () Bool)

(assert (=> bs!572535 m!4165217))

(assert (=> bs!572535 m!4164705))

(assert (=> b!3658287 d!1074491))

(declare-fun d!1074493 () Bool)

(assert (=> d!1074493 (not (matchR!5120 (regex!5792 rule!403) lt!1271777))))

(declare-fun lt!1272145 () Unit!55832)

(declare-fun choose!21631 (LexerInterface!5381 List!38725 Rule!11384 List!38724 List!38724 List!38724 Rule!11384) Unit!55832)

(assert (=> d!1074493 (= lt!1272145 (choose!21631 thiss!23823 rules!3307 (rule!8600 (_1!22364 lt!1271773)) lt!1271781 lt!1271799 lt!1271777 rule!403))))

(assert (=> d!1074493 (isPrefix!3155 lt!1271781 lt!1271799)))

(assert (=> d!1074493 (= (lemmaMaxPrefixOutputsMaxPrefix!334 thiss!23823 rules!3307 (rule!8600 (_1!22364 lt!1271773)) lt!1271781 lt!1271799 lt!1271777 rule!403) lt!1272145)))

(declare-fun bs!572536 () Bool)

(assert (= bs!572536 d!1074493))

(assert (=> bs!572536 m!4164293))

(declare-fun m!4165219 () Bool)

(assert (=> bs!572536 m!4165219))

(assert (=> bs!572536 m!4164233))

(assert (=> b!3658286 d!1074493))

(declare-fun d!1074495 () Bool)

(declare-fun lt!1272146 () Int)

(assert (=> d!1074495 (>= lt!1272146 0)))

(declare-fun e!2265606 () Int)

(assert (=> d!1074495 (= lt!1272146 e!2265606)))

(declare-fun c!632398 () Bool)

(assert (=> d!1074495 (= c!632398 ((_ is Nil!38600) lt!1271777))))

(assert (=> d!1074495 (= (size!29490 lt!1271777) lt!1272146)))

(declare-fun b!3659004 () Bool)

(assert (=> b!3659004 (= e!2265606 0)))

(declare-fun b!3659005 () Bool)

(assert (=> b!3659005 (= e!2265606 (+ 1 (size!29490 (t!298227 lt!1271777))))))

(assert (= (and d!1074495 c!632398) b!3659004))

(assert (= (and d!1074495 (not c!632398)) b!3659005))

(declare-fun m!4165221 () Bool)

(assert (=> b!3659005 m!4165221))

(assert (=> b!3658288 d!1074495))

(declare-fun d!1074497 () Bool)

(declare-fun lt!1272147 () Int)

(assert (=> d!1074497 (= lt!1272147 (size!29490 (list!14314 lt!1271794)))))

(assert (=> d!1074497 (= lt!1272147 (size!29492 (c!632263 lt!1271794)))))

(assert (=> d!1074497 (= (size!29491 lt!1271794) lt!1272147)))

(declare-fun bs!572537 () Bool)

(assert (= bs!572537 d!1074497))

(assert (=> bs!572537 m!4164279))

(assert (=> bs!572537 m!4164279))

(declare-fun m!4165223 () Bool)

(assert (=> bs!572537 m!4165223))

(declare-fun m!4165225 () Bool)

(assert (=> bs!572537 m!4165225))

(assert (=> b!3658288 d!1074497))

(declare-fun d!1074499 () Bool)

(declare-fun lt!1272148 () Bool)

(assert (=> d!1074499 (= lt!1272148 (select (content!5574 lt!1271807) lt!1271778))))

(declare-fun e!2265608 () Bool)

(assert (=> d!1074499 (= lt!1272148 e!2265608)))

(declare-fun res!1485264 () Bool)

(assert (=> d!1074499 (=> (not res!1485264) (not e!2265608))))

(assert (=> d!1074499 (= res!1485264 ((_ is Cons!38600) lt!1271807))))

(assert (=> d!1074499 (= (contains!7649 lt!1271807 lt!1271778) lt!1272148)))

(declare-fun b!3659006 () Bool)

(declare-fun e!2265607 () Bool)

(assert (=> b!3659006 (= e!2265608 e!2265607)))

(declare-fun res!1485263 () Bool)

(assert (=> b!3659006 (=> res!1485263 e!2265607)))

(assert (=> b!3659006 (= res!1485263 (= (h!44020 lt!1271807) lt!1271778))))

(declare-fun b!3659007 () Bool)

(assert (=> b!3659007 (= e!2265607 (contains!7649 (t!298227 lt!1271807) lt!1271778))))

(assert (= (and d!1074499 res!1485264) b!3659006))

(assert (= (and b!3659006 (not res!1485263)) b!3659007))

(declare-fun m!4165227 () Bool)

(assert (=> d!1074499 m!4165227))

(declare-fun m!4165229 () Bool)

(assert (=> d!1074499 m!4165229))

(declare-fun m!4165231 () Bool)

(assert (=> b!3659007 m!4165231))

(assert (=> b!3658288 d!1074499))

(declare-fun d!1074501 () Bool)

(assert (=> d!1074501 (= (head!7816 lt!1271781) (h!44020 lt!1271781))))

(assert (=> b!3658288 d!1074501))

(declare-fun d!1074503 () Bool)

(declare-fun lt!1272151 () Bool)

(declare-fun content!5575 (List!38725) (InoxSet Rule!11384))

(assert (=> d!1074503 (= lt!1272151 (select (content!5575 rules!3307) rule!403))))

(declare-fun e!2265613 () Bool)

(assert (=> d!1074503 (= lt!1272151 e!2265613)))

(declare-fun res!1485270 () Bool)

(assert (=> d!1074503 (=> (not res!1485270) (not e!2265613))))

(assert (=> d!1074503 (= res!1485270 ((_ is Cons!38601) rules!3307))))

(assert (=> d!1074503 (= (contains!7650 rules!3307 rule!403) lt!1272151)))

(declare-fun b!3659012 () Bool)

(declare-fun e!2265614 () Bool)

(assert (=> b!3659012 (= e!2265613 e!2265614)))

(declare-fun res!1485269 () Bool)

(assert (=> b!3659012 (=> res!1485269 e!2265614)))

(assert (=> b!3659012 (= res!1485269 (= (h!44021 rules!3307) rule!403))))

(declare-fun b!3659013 () Bool)

(assert (=> b!3659013 (= e!2265614 (contains!7650 (t!298228 rules!3307) rule!403))))

(assert (= (and d!1074503 res!1485270) b!3659012))

(assert (= (and b!3659012 (not res!1485269)) b!3659013))

(declare-fun m!4165233 () Bool)

(assert (=> d!1074503 m!4165233))

(declare-fun m!4165235 () Bool)

(assert (=> d!1074503 m!4165235))

(declare-fun m!4165237 () Bool)

(assert (=> b!3659013 m!4165237))

(assert (=> b!3658305 d!1074503))

(declare-fun b!3659014 () Bool)

(declare-fun e!2265615 () List!38724)

(declare-fun e!2265616 () List!38724)

(assert (=> b!3659014 (= e!2265615 e!2265616)))

(declare-fun c!632399 () Bool)

(assert (=> b!3659014 (= c!632399 ((_ is ElementMatch!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3659015 () Bool)

(declare-fun e!2265618 () List!38724)

(declare-fun call!264629 () List!38724)

(assert (=> b!3659015 (= e!2265618 call!264629)))

(declare-fun call!264626 () List!38724)

(declare-fun bm!264621 () Bool)

(declare-fun c!632402 () Bool)

(declare-fun c!632400 () Bool)

(assert (=> bm!264621 (= call!264626 (usedCharacters!1004 (ite c!632400 (reg!10880 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) (ite c!632402 (regOne!21615 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) (regTwo!21614 (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))))))

(declare-fun b!3659016 () Bool)

(declare-fun e!2265617 () List!38724)

(assert (=> b!3659016 (= e!2265617 e!2265618)))

(assert (=> b!3659016 (= c!632402 ((_ is Union!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(declare-fun b!3659017 () Bool)

(assert (=> b!3659017 (= e!2265617 call!264626)))

(declare-fun d!1074505 () Bool)

(declare-fun c!632401 () Bool)

(assert (=> d!1074505 (= c!632401 (or ((_ is EmptyExpr!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) ((_ is EmptyLang!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))))

(assert (=> d!1074505 (= (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) e!2265615)))

(declare-fun b!3659018 () Bool)

(assert (=> b!3659018 (= e!2265615 Nil!38600)))

(declare-fun bm!264622 () Bool)

(declare-fun call!264628 () List!38724)

(assert (=> bm!264622 (= call!264628 call!264626)))

(declare-fun b!3659019 () Bool)

(assert (=> b!3659019 (= c!632400 ((_ is Star!10551) (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))

(assert (=> b!3659019 (= e!2265616 e!2265617)))

(declare-fun bm!264623 () Bool)

(declare-fun call!264627 () List!38724)

(assert (=> bm!264623 (= call!264627 (usedCharacters!1004 (ite c!632402 (regTwo!21615 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) (regOne!21614 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))))))))

(declare-fun bm!264624 () Bool)

(assert (=> bm!264624 (= call!264629 (++!9608 (ite c!632402 call!264628 call!264627) (ite c!632402 call!264627 call!264628)))))

(declare-fun b!3659020 () Bool)

(assert (=> b!3659020 (= e!2265618 call!264629)))

(declare-fun b!3659021 () Bool)

(assert (=> b!3659021 (= e!2265616 (Cons!38600 (c!632262 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) Nil!38600))))

(assert (= (and d!1074505 c!632401) b!3659018))

(assert (= (and d!1074505 (not c!632401)) b!3659014))

(assert (= (and b!3659014 c!632399) b!3659021))

(assert (= (and b!3659014 (not c!632399)) b!3659019))

(assert (= (and b!3659019 c!632400) b!3659017))

(assert (= (and b!3659019 (not c!632400)) b!3659016))

(assert (= (and b!3659016 c!632402) b!3659015))

(assert (= (and b!3659016 (not c!632402)) b!3659020))

(assert (= (or b!3659015 b!3659020) bm!264622))

(assert (= (or b!3659015 b!3659020) bm!264623))

(assert (= (or b!3659015 b!3659020) bm!264624))

(assert (= (or b!3659017 bm!264622) bm!264621))

(declare-fun m!4165239 () Bool)

(assert (=> bm!264621 m!4165239))

(declare-fun m!4165241 () Bool)

(assert (=> bm!264623 m!4165241))

(declare-fun m!4165243 () Bool)

(assert (=> bm!264624 m!4165243))

(assert (=> bm!264570 d!1074505))

(declare-fun d!1074507 () Bool)

(assert (=> d!1074507 (not (contains!7649 (usedCharacters!1004 (regex!5792 (rule!8600 (_1!22364 lt!1271773)))) lt!1271774))))

(declare-fun lt!1272152 () Unit!55832)

(assert (=> d!1074507 (= lt!1272152 (choose!21623 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8600 (_1!22364 lt!1271773)) lt!1271774))))

(assert (=> d!1074507 (rulesInvariant!4778 thiss!23823 rules!3307)))

(assert (=> d!1074507 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!320 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8600 (_1!22364 lt!1271773)) lt!1271774) lt!1272152)))

(declare-fun bs!572538 () Bool)

(assert (= bs!572538 d!1074507))

(assert (=> bs!572538 m!4164217))

(assert (=> bs!572538 m!4164217))

(assert (=> bs!572538 m!4165195))

(declare-fun m!4165245 () Bool)

(assert (=> bs!572538 m!4165245))

(assert (=> bs!572538 m!4164283))

(assert (=> b!3658268 d!1074507))

(declare-fun d!1074509 () Bool)

(declare-fun lt!1272153 () Bool)

(assert (=> d!1074509 (= lt!1272153 (select (content!5575 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2265619 () Bool)

(assert (=> d!1074509 (= lt!1272153 e!2265619)))

(declare-fun res!1485272 () Bool)

(assert (=> d!1074509 (=> (not res!1485272) (not e!2265619))))

(assert (=> d!1074509 (= res!1485272 ((_ is Cons!38601) rules!3307))))

(assert (=> d!1074509 (= (contains!7650 rules!3307 anOtherTypeRule!33) lt!1272153)))

(declare-fun b!3659022 () Bool)

(declare-fun e!2265620 () Bool)

(assert (=> b!3659022 (= e!2265619 e!2265620)))

(declare-fun res!1485271 () Bool)

(assert (=> b!3659022 (=> res!1485271 e!2265620)))

(assert (=> b!3659022 (= res!1485271 (= (h!44021 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3659023 () Bool)

(assert (=> b!3659023 (= e!2265620 (contains!7650 (t!298228 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1074509 res!1485272) b!3659022))

(assert (= (and b!3659022 (not res!1485271)) b!3659023))

(assert (=> d!1074509 m!4165233))

(declare-fun m!4165247 () Bool)

(assert (=> d!1074509 m!4165247))

(declare-fun m!4165249 () Bool)

(assert (=> b!3659023 m!4165249))

(assert (=> b!3658289 d!1074509))

(declare-fun d!1074511 () Bool)

(assert (=> d!1074511 (= (isDefined!6444 lt!1271796) (not (isEmpty!22891 lt!1271796)))))

(declare-fun bs!572539 () Bool)

(assert (= bs!572539 d!1074511))

(declare-fun m!4165251 () Bool)

(assert (=> bs!572539 m!4165251))

(assert (=> b!3658280 d!1074511))

(declare-fun bm!264625 () Bool)

(declare-fun call!264630 () Option!8212)

(assert (=> bm!264625 (= call!264630 (maxPrefixOneRule!2053 thiss!23823 (h!44021 rules!3307) lt!1271777))))

(declare-fun b!3659024 () Bool)

(declare-fun e!2265622 () Option!8212)

(assert (=> b!3659024 (= e!2265622 call!264630)))

(declare-fun b!3659025 () Bool)

(declare-fun e!2265621 () Bool)

(declare-fun e!2265623 () Bool)

(assert (=> b!3659025 (= e!2265621 e!2265623)))

(declare-fun res!1485274 () Bool)

(assert (=> b!3659025 (=> (not res!1485274) (not e!2265623))))

(declare-fun lt!1272155 () Option!8212)

(assert (=> b!3659025 (= res!1485274 (isDefined!6444 lt!1272155))))

(declare-fun b!3659026 () Bool)

(declare-fun res!1485277 () Bool)

(assert (=> b!3659026 (=> (not res!1485277) (not e!2265623))))

(assert (=> b!3659026 (= res!1485277 (< (size!29490 (_2!22364 (get!12718 lt!1272155))) (size!29490 lt!1271777)))))

(declare-fun b!3659027 () Bool)

(declare-fun res!1485276 () Bool)

(assert (=> b!3659027 (=> (not res!1485276) (not e!2265623))))

(assert (=> b!3659027 (= res!1485276 (= (value!185532 (_1!22364 (get!12718 lt!1272155))) (apply!9294 (transformation!5792 (rule!8600 (_1!22364 (get!12718 lt!1272155)))) (seqFromList!4341 (originalCharacters!6506 (_1!22364 (get!12718 lt!1272155)))))))))

(declare-fun b!3659028 () Bool)

(assert (=> b!3659028 (= e!2265623 (contains!7650 rules!3307 (rule!8600 (_1!22364 (get!12718 lt!1272155)))))))

(declare-fun b!3659029 () Bool)

(declare-fun res!1485275 () Bool)

(assert (=> b!3659029 (=> (not res!1485275) (not e!2265623))))

(assert (=> b!3659029 (= res!1485275 (matchR!5120 (regex!5792 (rule!8600 (_1!22364 (get!12718 lt!1272155)))) (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272155))))))))

(declare-fun b!3659030 () Bool)

(declare-fun res!1485278 () Bool)

(assert (=> b!3659030 (=> (not res!1485278) (not e!2265623))))

(assert (=> b!3659030 (= res!1485278 (= (++!9608 (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272155)))) (_2!22364 (get!12718 lt!1272155))) lt!1271777))))

(declare-fun d!1074513 () Bool)

(assert (=> d!1074513 e!2265621))

(declare-fun res!1485273 () Bool)

(assert (=> d!1074513 (=> res!1485273 e!2265621)))

(assert (=> d!1074513 (= res!1485273 (isEmpty!22891 lt!1272155))))

(assert (=> d!1074513 (= lt!1272155 e!2265622)))

(declare-fun c!632403 () Bool)

(assert (=> d!1074513 (= c!632403 (and ((_ is Cons!38601) rules!3307) ((_ is Nil!38601) (t!298228 rules!3307))))))

(declare-fun lt!1272156 () Unit!55832)

(declare-fun lt!1272158 () Unit!55832)

(assert (=> d!1074513 (= lt!1272156 lt!1272158)))

(assert (=> d!1074513 (isPrefix!3155 lt!1271777 lt!1271777)))

(assert (=> d!1074513 (= lt!1272158 (lemmaIsPrefixRefl!1990 lt!1271777 lt!1271777))))

(assert (=> d!1074513 (rulesValidInductive!2053 thiss!23823 rules!3307)))

(assert (=> d!1074513 (= (maxPrefix!2915 thiss!23823 rules!3307 lt!1271777) lt!1272155)))

(declare-fun b!3659031 () Bool)

(declare-fun res!1485279 () Bool)

(assert (=> b!3659031 (=> (not res!1485279) (not e!2265623))))

(assert (=> b!3659031 (= res!1485279 (= (list!14314 (charsOf!3806 (_1!22364 (get!12718 lt!1272155)))) (originalCharacters!6506 (_1!22364 (get!12718 lt!1272155)))))))

(declare-fun b!3659032 () Bool)

(declare-fun lt!1272157 () Option!8212)

(declare-fun lt!1272154 () Option!8212)

(assert (=> b!3659032 (= e!2265622 (ite (and ((_ is None!8211) lt!1272157) ((_ is None!8211) lt!1272154)) None!8211 (ite ((_ is None!8211) lt!1272154) lt!1272157 (ite ((_ is None!8211) lt!1272157) lt!1272154 (ite (>= (size!29489 (_1!22364 (v!38091 lt!1272157))) (size!29489 (_1!22364 (v!38091 lt!1272154)))) lt!1272157 lt!1272154)))))))

(assert (=> b!3659032 (= lt!1272157 call!264630)))

(assert (=> b!3659032 (= lt!1272154 (maxPrefix!2915 thiss!23823 (t!298228 rules!3307) lt!1271777))))

(assert (= (and d!1074513 c!632403) b!3659024))

(assert (= (and d!1074513 (not c!632403)) b!3659032))

(assert (= (or b!3659024 b!3659032) bm!264625))

(assert (= (and d!1074513 (not res!1485273)) b!3659025))

(assert (= (and b!3659025 res!1485274) b!3659031))

(assert (= (and b!3659031 res!1485279) b!3659026))

(assert (= (and b!3659026 res!1485277) b!3659030))

(assert (= (and b!3659030 res!1485278) b!3659027))

(assert (= (and b!3659027 res!1485276) b!3659029))

(assert (= (and b!3659029 res!1485275) b!3659028))

(declare-fun m!4165253 () Bool)

(assert (=> b!3659027 m!4165253))

(declare-fun m!4165255 () Bool)

(assert (=> b!3659027 m!4165255))

(assert (=> b!3659027 m!4165255))

(declare-fun m!4165257 () Bool)

(assert (=> b!3659027 m!4165257))

(assert (=> b!3659030 m!4165253))

(declare-fun m!4165259 () Bool)

(assert (=> b!3659030 m!4165259))

(assert (=> b!3659030 m!4165259))

(declare-fun m!4165261 () Bool)

(assert (=> b!3659030 m!4165261))

(assert (=> b!3659030 m!4165261))

(declare-fun m!4165263 () Bool)

(assert (=> b!3659030 m!4165263))

(declare-fun m!4165265 () Bool)

(assert (=> b!3659032 m!4165265))

(declare-fun m!4165267 () Bool)

(assert (=> b!3659025 m!4165267))

(assert (=> b!3659028 m!4165253))

(declare-fun m!4165269 () Bool)

(assert (=> b!3659028 m!4165269))

(declare-fun m!4165271 () Bool)

(assert (=> d!1074513 m!4165271))

(declare-fun m!4165273 () Bool)

(assert (=> d!1074513 m!4165273))

(declare-fun m!4165275 () Bool)

(assert (=> d!1074513 m!4165275))

(assert (=> d!1074513 m!4165039))

(assert (=> b!3659029 m!4165253))

(assert (=> b!3659029 m!4165259))

(assert (=> b!3659029 m!4165259))

(assert (=> b!3659029 m!4165261))

(assert (=> b!3659029 m!4165261))

(declare-fun m!4165277 () Bool)

(assert (=> b!3659029 m!4165277))

(declare-fun m!4165279 () Bool)

(assert (=> bm!264625 m!4165279))

(assert (=> b!3659031 m!4165253))

(assert (=> b!3659031 m!4165259))

(assert (=> b!3659031 m!4165259))

(assert (=> b!3659031 m!4165261))

(assert (=> b!3659026 m!4165253))

(declare-fun m!4165281 () Bool)

(assert (=> b!3659026 m!4165281))

(assert (=> b!3659026 m!4164347))

(assert (=> b!3658280 d!1074513))

(declare-fun d!1074515 () Bool)

(assert (=> d!1074515 (= (list!14314 lt!1271794) (list!14316 (c!632263 lt!1271794)))))

(declare-fun bs!572540 () Bool)

(assert (= bs!572540 d!1074515))

(declare-fun m!4165283 () Bool)

(assert (=> bs!572540 m!4165283))

(assert (=> b!3658280 d!1074515))

(declare-fun d!1074517 () Bool)

(declare-fun lt!1272159 () BalanceConc!23216)

(assert (=> d!1074517 (= (list!14314 lt!1272159) (originalCharacters!6506 token!511))))

(assert (=> d!1074517 (= lt!1272159 (dynLambda!16849 (toChars!7943 (transformation!5792 (rule!8600 token!511))) (value!185532 token!511)))))

(assert (=> d!1074517 (= (charsOf!3806 token!511) lt!1272159)))

(declare-fun b_lambda!108525 () Bool)

(assert (=> (not b_lambda!108525) (not d!1074517)))

(assert (=> d!1074517 t!298330))

(declare-fun b_and!271415 () Bool)

(assert (= b_and!271407 (and (=> t!298330 result!257336) b_and!271415)))

(assert (=> d!1074517 t!298332))

(declare-fun b_and!271417 () Bool)

(assert (= b_and!271409 (and (=> t!298332 result!257338) b_and!271417)))

(assert (=> d!1074517 t!298334))

(declare-fun b_and!271419 () Bool)

(assert (= b_and!271411 (and (=> t!298334 result!257340) b_and!271419)))

(assert (=> d!1074517 t!298336))

(declare-fun b_and!271421 () Bool)

(assert (= b_and!271413 (and (=> t!298336 result!257342) b_and!271421)))

(declare-fun m!4165285 () Bool)

(assert (=> d!1074517 m!4165285))

(assert (=> d!1074517 m!4165207))

(assert (=> b!3658280 d!1074517))

(assert (=> bm!264566 d!1074505))

(declare-fun d!1074519 () Bool)

(assert (=> d!1074519 (= (isEmpty!22888 suffix!1395) ((_ is Nil!38600) suffix!1395))))

(assert (=> b!3658281 d!1074519))

(declare-fun d!1074521 () Bool)

(assert (=> d!1074521 (not (matchR!5120 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781))))

(declare-fun lt!1272160 () Unit!55832)

(assert (=> d!1074521 (= lt!1272160 (choose!21630 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271774))))

(assert (=> d!1074521 (validRegex!4829 (regex!5792 (rule!8600 (_1!22364 lt!1271773))))))

(assert (=> d!1074521 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!740 (regex!5792 (rule!8600 (_1!22364 lt!1271773))) lt!1271781 lt!1271774) lt!1272160)))

(declare-fun bs!572541 () Bool)

(assert (= bs!572541 d!1074521))

(assert (=> bs!572541 m!4164265))

(declare-fun m!4165287 () Bool)

(assert (=> bs!572541 m!4165287))

(assert (=> bs!572541 m!4164461))

(assert (=> bm!264567 d!1074521))

(declare-fun d!1074523 () Bool)

(declare-fun res!1485282 () Bool)

(declare-fun e!2265626 () Bool)

(assert (=> d!1074523 (=> (not res!1485282) (not e!2265626))))

(declare-fun rulesValid!2224 (LexerInterface!5381 List!38725) Bool)

(assert (=> d!1074523 (= res!1485282 (rulesValid!2224 thiss!23823 rules!3307))))

(assert (=> d!1074523 (= (rulesInvariant!4778 thiss!23823 rules!3307) e!2265626)))

(declare-fun b!3659035 () Bool)

(declare-datatypes ((List!38729 0))(
  ( (Nil!38605) (Cons!38605 (h!44025 String!43444) (t!298352 List!38729)) )
))
(declare-fun noDuplicateTag!2220 (LexerInterface!5381 List!38725 List!38729) Bool)

(assert (=> b!3659035 (= e!2265626 (noDuplicateTag!2220 thiss!23823 rules!3307 Nil!38605))))

(assert (= (and d!1074523 res!1485282) b!3659035))

(declare-fun m!4165289 () Bool)

(assert (=> d!1074523 m!4165289))

(declare-fun m!4165291 () Bool)

(assert (=> b!3659035 m!4165291))

(assert (=> b!3658283 d!1074523))

(declare-fun d!1074525 () Bool)

(declare-fun lt!1272161 () Bool)

(assert (=> d!1074525 (= lt!1272161 (select (content!5574 call!264576) lt!1271774))))

(declare-fun e!2265628 () Bool)

(assert (=> d!1074525 (= lt!1272161 e!2265628)))

(declare-fun res!1485284 () Bool)

(assert (=> d!1074525 (=> (not res!1485284) (not e!2265628))))

(assert (=> d!1074525 (= res!1485284 ((_ is Cons!38600) call!264576))))

(assert (=> d!1074525 (= (contains!7649 call!264576 lt!1271774) lt!1272161)))

(declare-fun b!3659036 () Bool)

(declare-fun e!2265627 () Bool)

(assert (=> b!3659036 (= e!2265628 e!2265627)))

(declare-fun res!1485283 () Bool)

(assert (=> b!3659036 (=> res!1485283 e!2265627)))

(assert (=> b!3659036 (= res!1485283 (= (h!44020 call!264576) lt!1271774))))

(declare-fun b!3659037 () Bool)

(assert (=> b!3659037 (= e!2265627 (contains!7649 (t!298227 call!264576) lt!1271774))))

(assert (= (and d!1074525 res!1485284) b!3659036))

(assert (= (and b!3659036 (not res!1485283)) b!3659037))

(declare-fun m!4165293 () Bool)

(assert (=> d!1074525 m!4165293))

(declare-fun m!4165295 () Bool)

(assert (=> d!1074525 m!4165295))

(declare-fun m!4165297 () Bool)

(assert (=> b!3659037 m!4165297))

(assert (=> bm!264568 d!1074525))

(declare-fun d!1074527 () Bool)

(declare-fun lt!1272162 () Bool)

(assert (=> d!1074527 (= lt!1272162 (select (content!5574 lt!1271807) lt!1271774))))

(declare-fun e!2265630 () Bool)

(assert (=> d!1074527 (= lt!1272162 e!2265630)))

(declare-fun res!1485286 () Bool)

(assert (=> d!1074527 (=> (not res!1485286) (not e!2265630))))

(assert (=> d!1074527 (= res!1485286 ((_ is Cons!38600) lt!1271807))))

(assert (=> d!1074527 (= (contains!7649 lt!1271807 lt!1271774) lt!1272162)))

(declare-fun b!3659038 () Bool)

(declare-fun e!2265629 () Bool)

(assert (=> b!3659038 (= e!2265630 e!2265629)))

(declare-fun res!1485285 () Bool)

(assert (=> b!3659038 (=> res!1485285 e!2265629)))

(assert (=> b!3659038 (= res!1485285 (= (h!44020 lt!1271807) lt!1271774))))

(declare-fun b!3659039 () Bool)

(assert (=> b!3659039 (= e!2265629 (contains!7649 (t!298227 lt!1271807) lt!1271774))))

(assert (= (and d!1074527 res!1485286) b!3659038))

(assert (= (and b!3659038 (not res!1485285)) b!3659039))

(assert (=> d!1074527 m!4165227))

(declare-fun m!4165299 () Bool)

(assert (=> d!1074527 m!4165299))

(declare-fun m!4165301 () Bool)

(assert (=> b!3659039 m!4165301))

(assert (=> b!3658284 d!1074527))

(declare-fun d!1074529 () Bool)

(assert (=> d!1074529 (= (head!7816 suffix!1395) (h!44020 suffix!1395))))

(assert (=> b!3658284 d!1074529))

(declare-fun b!3659040 () Bool)

(declare-fun e!2265631 () List!38724)

(declare-fun e!2265632 () List!38724)

(assert (=> b!3659040 (= e!2265631 e!2265632)))

(declare-fun c!632404 () Bool)

(assert (=> b!3659040 (= c!632404 ((_ is ElementMatch!10551) (regex!5792 rule!403)))))

(declare-fun b!3659041 () Bool)

(declare-fun e!2265634 () List!38724)

(declare-fun call!264634 () List!38724)

(assert (=> b!3659041 (= e!2265634 call!264634)))

(declare-fun bm!264626 () Bool)

(declare-fun c!632407 () Bool)

(declare-fun call!264631 () List!38724)

(declare-fun c!632405 () Bool)

(assert (=> bm!264626 (= call!264631 (usedCharacters!1004 (ite c!632405 (reg!10880 (regex!5792 rule!403)) (ite c!632407 (regOne!21615 (regex!5792 rule!403)) (regTwo!21614 (regex!5792 rule!403))))))))

(declare-fun b!3659042 () Bool)

(declare-fun e!2265633 () List!38724)

(assert (=> b!3659042 (= e!2265633 e!2265634)))

(assert (=> b!3659042 (= c!632407 ((_ is Union!10551) (regex!5792 rule!403)))))

(declare-fun b!3659043 () Bool)

(assert (=> b!3659043 (= e!2265633 call!264631)))

(declare-fun d!1074531 () Bool)

(declare-fun c!632406 () Bool)

(assert (=> d!1074531 (= c!632406 (or ((_ is EmptyExpr!10551) (regex!5792 rule!403)) ((_ is EmptyLang!10551) (regex!5792 rule!403))))))

(assert (=> d!1074531 (= (usedCharacters!1004 (regex!5792 rule!403)) e!2265631)))

(declare-fun b!3659044 () Bool)

(assert (=> b!3659044 (= e!2265631 Nil!38600)))

(declare-fun bm!264627 () Bool)

(declare-fun call!264633 () List!38724)

(assert (=> bm!264627 (= call!264633 call!264631)))

(declare-fun b!3659045 () Bool)

(assert (=> b!3659045 (= c!632405 ((_ is Star!10551) (regex!5792 rule!403)))))

(assert (=> b!3659045 (= e!2265632 e!2265633)))

(declare-fun bm!264628 () Bool)

(declare-fun call!264632 () List!38724)

(assert (=> bm!264628 (= call!264632 (usedCharacters!1004 (ite c!632407 (regTwo!21615 (regex!5792 rule!403)) (regOne!21614 (regex!5792 rule!403)))))))

(declare-fun bm!264629 () Bool)

(assert (=> bm!264629 (= call!264634 (++!9608 (ite c!632407 call!264633 call!264632) (ite c!632407 call!264632 call!264633)))))

(declare-fun b!3659046 () Bool)

(assert (=> b!3659046 (= e!2265634 call!264634)))

(declare-fun b!3659047 () Bool)

(assert (=> b!3659047 (= e!2265632 (Cons!38600 (c!632262 (regex!5792 rule!403)) Nil!38600))))

(assert (= (and d!1074531 c!632406) b!3659044))

(assert (= (and d!1074531 (not c!632406)) b!3659040))

(assert (= (and b!3659040 c!632404) b!3659047))

(assert (= (and b!3659040 (not c!632404)) b!3659045))

(assert (= (and b!3659045 c!632405) b!3659043))

(assert (= (and b!3659045 (not c!632405)) b!3659042))

(assert (= (and b!3659042 c!632407) b!3659041))

(assert (= (and b!3659042 (not c!632407)) b!3659046))

(assert (= (or b!3659041 b!3659046) bm!264627))

(assert (= (or b!3659041 b!3659046) bm!264628))

(assert (= (or b!3659041 b!3659046) bm!264629))

(assert (= (or b!3659043 bm!264627) bm!264626))

(declare-fun m!4165303 () Bool)

(assert (=> bm!264626 m!4165303))

(declare-fun m!4165305 () Bool)

(assert (=> bm!264628 m!4165305))

(declare-fun m!4165307 () Bool)

(assert (=> bm!264629 m!4165307))

(assert (=> b!3658284 d!1074531))

(declare-fun b!3659052 () Bool)

(declare-fun e!2265637 () Bool)

(declare-fun tp!1114743 () Bool)

(assert (=> b!3659052 (= e!2265637 (and tp_is_empty!18185 tp!1114743))))

(assert (=> b!3658275 (= tp!1114670 e!2265637)))

(assert (= (and b!3658275 ((_ is Cons!38600) (originalCharacters!6506 token!511))) b!3659052))

(declare-fun b!3659063 () Bool)

(declare-fun e!2265640 () Bool)

(assert (=> b!3659063 (= e!2265640 tp_is_empty!18185)))

(declare-fun b!3659066 () Bool)

(declare-fun tp!1114755 () Bool)

(declare-fun tp!1114754 () Bool)

(assert (=> b!3659066 (= e!2265640 (and tp!1114755 tp!1114754))))

(assert (=> b!3658269 (= tp!1114671 e!2265640)))

(declare-fun b!3659064 () Bool)

(declare-fun tp!1114756 () Bool)

(declare-fun tp!1114757 () Bool)

(assert (=> b!3659064 (= e!2265640 (and tp!1114756 tp!1114757))))

(declare-fun b!3659065 () Bool)

(declare-fun tp!1114758 () Bool)

(assert (=> b!3659065 (= e!2265640 tp!1114758)))

(assert (= (and b!3658269 ((_ is ElementMatch!10551) (regex!5792 rule!403))) b!3659063))

(assert (= (and b!3658269 ((_ is Concat!16574) (regex!5792 rule!403))) b!3659064))

(assert (= (and b!3658269 ((_ is Star!10551) (regex!5792 rule!403))) b!3659065))

(assert (= (and b!3658269 ((_ is Union!10551) (regex!5792 rule!403))) b!3659066))

(declare-fun b!3659077 () Bool)

(declare-fun b_free!96517 () Bool)

(declare-fun b_next!97221 () Bool)

(assert (=> b!3659077 (= b_free!96517 (not b_next!97221))))

(declare-fun t!298338 () Bool)

(declare-fun tb!211369 () Bool)

(assert (=> (and b!3659077 (= (toValue!8084 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298338) tb!211369))

(declare-fun result!257350 () Bool)

(assert (= result!257350 result!257260))

(assert (=> d!1074339 t!298338))

(declare-fun t!298340 () Bool)

(declare-fun tb!211371 () Bool)

(assert (=> (and b!3659077 (= (toValue!8084 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298340) tb!211371))

(declare-fun result!257352 () Bool)

(assert (= result!257352 result!257268))

(assert (=> d!1074341 t!298340))

(assert (=> d!1074341 t!298338))

(declare-fun tb!211373 () Bool)

(declare-fun t!298342 () Bool)

(assert (=> (and b!3659077 (= (toValue!8084 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toValue!8084 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298342) tb!211373))

(declare-fun result!257354 () Bool)

(assert (= result!257354 result!257232))

(assert (=> d!1074275 t!298342))

(assert (=> d!1074403 t!298338))

(declare-fun tp!1114767 () Bool)

(declare-fun b_and!271423 () Bool)

(assert (=> b!3659077 (= tp!1114767 (and (=> t!298338 result!257350) (=> t!298342 result!257354) (=> t!298340 result!257352) b_and!271423))))

(declare-fun b_free!96519 () Bool)

(declare-fun b_next!97223 () Bool)

(assert (=> b!3659077 (= b_free!96519 (not b_next!97223))))

(declare-fun t!298344 () Bool)

(declare-fun tb!211375 () Bool)

(assert (=> (and b!3659077 (= (toChars!7943 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298344) tb!211375))

(declare-fun result!257356 () Bool)

(assert (= result!257356 result!257276))

(assert (=> d!1074403 t!298344))

(declare-fun t!298346 () Bool)

(declare-fun tb!211377 () Bool)

(assert (=> (and b!3659077 (= (toChars!7943 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toChars!7943 (transformation!5792 (rule!8600 (_1!22364 lt!1271773))))) t!298346) tb!211377))

(declare-fun result!257358 () Bool)

(assert (= result!257358 result!257286))

(assert (=> d!1074413 t!298346))

(declare-fun tb!211379 () Bool)

(declare-fun t!298348 () Bool)

(assert (=> (and b!3659077 (= (toChars!7943 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toChars!7943 (transformation!5792 (rule!8600 token!511)))) t!298348) tb!211379))

(declare-fun result!257360 () Bool)

(assert (= result!257360 result!257336))

(assert (=> b!3658995 t!298348))

(assert (=> d!1074517 t!298348))

(declare-fun tp!1114769 () Bool)

(declare-fun b_and!271425 () Bool)

(assert (=> b!3659077 (= tp!1114769 (and (=> t!298344 result!257356) (=> t!298346 result!257358) (=> t!298348 result!257360) b_and!271425))))

(declare-fun e!2265652 () Bool)

(assert (=> b!3659077 (= e!2265652 (and tp!1114767 tp!1114769))))

(declare-fun tp!1114770 () Bool)

(declare-fun e!2265651 () Bool)

(declare-fun b!3659076 () Bool)

(assert (=> b!3659076 (= e!2265651 (and tp!1114770 (inv!52061 (tag!6566 (h!44021 (t!298228 rules!3307)))) (inv!52064 (transformation!5792 (h!44021 (t!298228 rules!3307)))) e!2265652))))

(declare-fun b!3659075 () Bool)

(declare-fun e!2265649 () Bool)

(declare-fun tp!1114768 () Bool)

(assert (=> b!3659075 (= e!2265649 (and e!2265651 tp!1114768))))

(assert (=> b!3658271 (= tp!1114682 e!2265649)))

(assert (= b!3659076 b!3659077))

(assert (= b!3659075 b!3659076))

(assert (= (and b!3658271 ((_ is Cons!38601) (t!298228 rules!3307))) b!3659075))

(declare-fun m!4165309 () Bool)

(assert (=> b!3659076 m!4165309))

(declare-fun m!4165311 () Bool)

(assert (=> b!3659076 m!4165311))

(declare-fun b!3659078 () Bool)

(declare-fun e!2265653 () Bool)

(assert (=> b!3659078 (= e!2265653 tp_is_empty!18185)))

(declare-fun b!3659081 () Bool)

(declare-fun tp!1114772 () Bool)

(declare-fun tp!1114771 () Bool)

(assert (=> b!3659081 (= e!2265653 (and tp!1114772 tp!1114771))))

(assert (=> b!3658297 (= tp!1114677 e!2265653)))

(declare-fun b!3659079 () Bool)

(declare-fun tp!1114773 () Bool)

(declare-fun tp!1114774 () Bool)

(assert (=> b!3659079 (= e!2265653 (and tp!1114773 tp!1114774))))

(declare-fun b!3659080 () Bool)

(declare-fun tp!1114775 () Bool)

(assert (=> b!3659080 (= e!2265653 tp!1114775)))

(assert (= (and b!3658297 ((_ is ElementMatch!10551) (regex!5792 anOtherTypeRule!33))) b!3659078))

(assert (= (and b!3658297 ((_ is Concat!16574) (regex!5792 anOtherTypeRule!33))) b!3659079))

(assert (= (and b!3658297 ((_ is Star!10551) (regex!5792 anOtherTypeRule!33))) b!3659080))

(assert (= (and b!3658297 ((_ is Union!10551) (regex!5792 anOtherTypeRule!33))) b!3659081))

(declare-fun b!3659082 () Bool)

(declare-fun e!2265654 () Bool)

(assert (=> b!3659082 (= e!2265654 tp_is_empty!18185)))

(declare-fun b!3659085 () Bool)

(declare-fun tp!1114777 () Bool)

(declare-fun tp!1114776 () Bool)

(assert (=> b!3659085 (= e!2265654 (and tp!1114777 tp!1114776))))

(assert (=> b!3658270 (= tp!1114678 e!2265654)))

(declare-fun b!3659083 () Bool)

(declare-fun tp!1114778 () Bool)

(declare-fun tp!1114779 () Bool)

(assert (=> b!3659083 (= e!2265654 (and tp!1114778 tp!1114779))))

(declare-fun b!3659084 () Bool)

(declare-fun tp!1114780 () Bool)

(assert (=> b!3659084 (= e!2265654 tp!1114780)))

(assert (= (and b!3658270 ((_ is ElementMatch!10551) (regex!5792 (rule!8600 token!511)))) b!3659082))

(assert (= (and b!3658270 ((_ is Concat!16574) (regex!5792 (rule!8600 token!511)))) b!3659083))

(assert (= (and b!3658270 ((_ is Star!10551) (regex!5792 (rule!8600 token!511)))) b!3659084))

(assert (= (and b!3658270 ((_ is Union!10551) (regex!5792 (rule!8600 token!511)))) b!3659085))

(declare-fun b!3659086 () Bool)

(declare-fun e!2265655 () Bool)

(declare-fun tp!1114781 () Bool)

(assert (=> b!3659086 (= e!2265655 (and tp_is_empty!18185 tp!1114781))))

(assert (=> b!3658267 (= tp!1114672 e!2265655)))

(assert (= (and b!3658267 ((_ is Cons!38600) (t!298227 suffix!1395))) b!3659086))

(declare-fun b!3659087 () Bool)

(declare-fun e!2265656 () Bool)

(assert (=> b!3659087 (= e!2265656 tp_is_empty!18185)))

(declare-fun b!3659090 () Bool)

(declare-fun tp!1114783 () Bool)

(declare-fun tp!1114782 () Bool)

(assert (=> b!3659090 (= e!2265656 (and tp!1114783 tp!1114782))))

(assert (=> b!3658299 (= tp!1114681 e!2265656)))

(declare-fun b!3659088 () Bool)

(declare-fun tp!1114784 () Bool)

(declare-fun tp!1114785 () Bool)

(assert (=> b!3659088 (= e!2265656 (and tp!1114784 tp!1114785))))

(declare-fun b!3659089 () Bool)

(declare-fun tp!1114786 () Bool)

(assert (=> b!3659089 (= e!2265656 tp!1114786)))

(assert (= (and b!3658299 ((_ is ElementMatch!10551) (regex!5792 (h!44021 rules!3307)))) b!3659087))

(assert (= (and b!3658299 ((_ is Concat!16574) (regex!5792 (h!44021 rules!3307)))) b!3659088))

(assert (= (and b!3658299 ((_ is Star!10551) (regex!5792 (h!44021 rules!3307)))) b!3659089))

(assert (= (and b!3658299 ((_ is Union!10551) (regex!5792 (h!44021 rules!3307)))) b!3659090))

(declare-fun b_lambda!108527 () Bool)

(assert (= b_lambda!108523 (or (and b!3658302 b_free!96499) (and b!3658301 b_free!96511 (= (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3659077 b_free!96519 (= (toChars!7943 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3658282 b_free!96503 (= (toChars!7943 (transformation!5792 rule!403)) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3658304 b_free!96507 (= (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) b_lambda!108527)))

(declare-fun b_lambda!108529 () Bool)

(assert (= b_lambda!108525 (or (and b!3658302 b_free!96499) (and b!3658301 b_free!96511 (= (toChars!7943 (transformation!5792 anOtherTypeRule!33)) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3659077 b_free!96519 (= (toChars!7943 (transformation!5792 (h!44021 (t!298228 rules!3307)))) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3658282 b_free!96503 (= (toChars!7943 (transformation!5792 rule!403)) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) (and b!3658304 b_free!96507 (= (toChars!7943 (transformation!5792 (h!44021 rules!3307))) (toChars!7943 (transformation!5792 (rule!8600 token!511))))) b_lambda!108529)))

(check-sat (not b!3658996) (not b!3658865) (not b!3659079) (not b!3659032) (not b!3659035) (not b!3659088) b_and!271351 (not b_next!97205) (not d!1074459) (not b!3659023) (not b!3658412) (not b!3659007) (not b_lambda!108527) (not b!3658810) (not b_lambda!108499) (not b!3659037) (not b!3658784) (not b!3659052) (not b!3658525) (not b!3659030) b_and!271349 (not d!1074413) (not b_lambda!108503) (not b!3659083) (not b!3658476) (not b!3658949) (not d!1074483) (not d!1074475) (not bm!264628) (not bm!264605) (not b!3658861) (not b!3659076) (not b_next!97203) (not b!3658787) (not d!1074435) (not d!1074407) (not b!3658862) (not d!1074527) (not b!3659066) (not d!1074463) (not b!3658799) (not b!3659031) (not b!3658395) b_and!271425 (not d!1074259) (not b!3659005) (not d!1074479) (not b!3658866) (not b!3658950) (not b!3658815) b_and!271347 (not b!3658836) (not bm!264619) b_and!271421 (not d!1074481) b_and!271415 (not d!1074517) (not b!3658629) (not b!3658472) (not bm!264626) (not d!1074471) (not b!3658937) (not d!1074419) (not b!3658800) (not bm!264595) (not d!1074283) (not b!3659065) (not b_next!97213) (not b!3658636) (not tb!211293) (not b!3658814) tp_is_empty!18185 (not d!1074503) (not d!1074409) (not b!3658954) (not b!3658995) (not b!3658990) (not b!3658631) (not b!3658997) (not d!1074257) (not b_lambda!108501) (not b!3659027) (not bm!264608) (not d!1074337) (not d!1074487) (not b!3658482) (not d!1074341) (not b!3658639) (not d!1074511) (not b!3658635) (not d!1074401) (not b!3659002) (not b!3659081) (not b_lambda!108489) (not b!3658822) (not b!3659039) (not b_next!97201) (not b!3659090) (not d!1074499) (not b!3659025) (not d!1074289) (not d!1074477) (not b!3658864) (not d!1074433) (not b!3658869) (not bm!264617) (not bm!264624) (not bm!264590) (not bm!264620) (not d!1074525) (not b!3659084) (not tb!211309) (not b!3658633) (not tb!211301) (not d!1074497) (not d!1074523) (not b!3658986) (not b!3658837) (not d!1074411) (not d!1074485) (not d!1074465) (not b!3658393) (not d!1074425) (not b_next!97223) (not b!3659080) (not d!1074439) (not b!3658871) (not tb!211269) (not b!3658863) (not b!3658473) b_and!271353 (not b!3658870) (not b!3658812) (not d!1074247) (not bm!264621) (not d!1074273) (not b!3658489) (not bm!264623) (not d!1074493) (not b!3658790) (not d!1074403) (not b!3658626) (not b!3658481) (not b!3658425) (not b!3658628) (not b!3658645) (not d!1074515) (not b!3658988) (not b!3658627) (not b!3658811) (not d!1074333) (not b!3658632) (not b!3658936) (not b!3658840) (not b!3659013) (not b!3658867) (not d!1074421) (not d!1074509) (not d!1074443) (not b!3658961) (not b_next!97221) (not b!3658786) (not tb!211361) (not b!3658816) (not b!3659086) (not d!1074461) (not b!3659026) (not b!3658625) (not d!1074521) (not b!3659003) (not b_lambda!108497) (not bm!264629) (not d!1074285) (not b_next!97215) (not b!3658791) (not tb!211317) (not b!3658640) (not b_next!97207) (not d!1074507) (not b!3659064) (not b!3659028) (not b!3658392) b_and!271417 (not b_next!97209) (not d!1074491) (not d!1074277) (not b!3658477) (not d!1074405) (not b!3659089) (not b_lambda!108505) (not b!3658938) (not b_lambda!108507) (not b!3659075) b_and!271419 (not b!3658953) (not b_next!97211) (not b!3659085) (not b!3658795) (not b_lambda!108529) (not b!3658796) (not b!3658644) (not d!1074513) (not d!1074429) (not bm!264625) (not b!3658821) (not b!3659029) (not b!3658652) (not d!1074335) (not b!3658860) (not d!1074431) b_and!271423)
(check-sat b_and!271351 (not b_next!97205) b_and!271349 (not b_next!97203) b_and!271425 (not b_next!97213) (not b_next!97201) (not b_next!97223) b_and!271353 (not b_next!97221) (not b_next!97215) (not b_next!97209) b_and!271423 b_and!271347 b_and!271421 b_and!271415 (not b_next!97207) b_and!271417 b_and!271419 (not b_next!97211))
