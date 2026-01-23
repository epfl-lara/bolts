; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!171764 () Bool)

(assert start!171764)

(declare-fun b!1743888 () Bool)

(declare-fun b_free!47967 () Bool)

(declare-fun b_next!48671 () Bool)

(assert (=> b!1743888 (= b_free!47967 (not b_next!48671))))

(declare-fun tp!496392 () Bool)

(declare-fun b_and!129665 () Bool)

(assert (=> b!1743888 (= tp!496392 b_and!129665)))

(declare-fun b_free!47969 () Bool)

(declare-fun b_next!48673 () Bool)

(assert (=> b!1743888 (= b_free!47969 (not b_next!48673))))

(declare-fun tp!496396 () Bool)

(declare-fun b_and!129667 () Bool)

(assert (=> b!1743888 (= tp!496396 b_and!129667)))

(declare-fun b!1743883 () Bool)

(declare-fun b_free!47971 () Bool)

(declare-fun b_next!48675 () Bool)

(assert (=> b!1743883 (= b_free!47971 (not b_next!48675))))

(declare-fun tp!496388 () Bool)

(declare-fun b_and!129669 () Bool)

(assert (=> b!1743883 (= tp!496388 b_and!129669)))

(declare-fun b_free!47973 () Bool)

(declare-fun b_next!48677 () Bool)

(assert (=> b!1743883 (= b_free!47973 (not b_next!48677))))

(declare-fun tp!496393 () Bool)

(declare-fun b_and!129671 () Bool)

(assert (=> b!1743883 (= tp!496393 b_and!129671)))

(declare-fun b!1743876 () Bool)

(declare-fun b_free!47975 () Bool)

(declare-fun b_next!48679 () Bool)

(assert (=> b!1743876 (= b_free!47975 (not b_next!48679))))

(declare-fun tp!496394 () Bool)

(declare-fun b_and!129673 () Bool)

(assert (=> b!1743876 (= tp!496394 b_and!129673)))

(declare-fun b_free!47977 () Bool)

(declare-fun b_next!48681 () Bool)

(assert (=> b!1743876 (= b_free!47977 (not b_next!48681))))

(declare-fun tp!496398 () Bool)

(declare-fun b_and!129675 () Bool)

(assert (=> b!1743876 (= tp!496398 b_and!129675)))

(declare-fun b!1743906 () Bool)

(declare-fun e!1116084 () Bool)

(assert (=> b!1743906 (= e!1116084 true)))

(declare-fun b!1743905 () Bool)

(declare-fun e!1116083 () Bool)

(assert (=> b!1743905 (= e!1116083 e!1116084)))

(declare-fun b!1743904 () Bool)

(declare-fun e!1116082 () Bool)

(assert (=> b!1743904 (= e!1116082 e!1116083)))

(declare-fun b!1743875 () Bool)

(assert (=> b!1743875 e!1116082))

(assert (= b!1743905 b!1743906))

(assert (= b!1743904 b!1743905))

(assert (= b!1743875 b!1743904))

(declare-datatypes ((List!19232 0))(
  ( (Nil!19162) (Cons!19162 (h!24563 (_ BitVec 16)) (t!162085 List!19232)) )
))
(declare-datatypes ((TokenValue!3504 0))(
  ( (FloatLiteralValue!7008 (text!24973 List!19232)) (TokenValueExt!3503 (__x!12310 Int)) (Broken!17520 (value!106947 List!19232)) (Object!3573) (End!3504) (Def!3504) (Underscore!3504) (Match!3504) (Else!3504) (Error!3504) (Case!3504) (If!3504) (Extends!3504) (Abstract!3504) (Class!3504) (Val!3504) (DelimiterValue!7008 (del!3564 List!19232)) (KeywordValue!3510 (value!106948 List!19232)) (CommentValue!7008 (value!106949 List!19232)) (WhitespaceValue!7008 (value!106950 List!19232)) (IndentationValue!3504 (value!106951 List!19232)) (String!21853) (Int32!3504) (Broken!17521 (value!106952 List!19232)) (Boolean!3505) (Unit!33233) (OperatorValue!3507 (op!3564 List!19232)) (IdentifierValue!7008 (value!106953 List!19232)) (IdentifierValue!7009 (value!106954 List!19232)) (WhitespaceValue!7009 (value!106955 List!19232)) (True!7008) (False!7008) (Broken!17522 (value!106956 List!19232)) (Broken!17523 (value!106957 List!19232)) (True!7009) (RightBrace!3504) (RightBracket!3504) (Colon!3504) (Null!3504) (Comma!3504) (LeftBracket!3504) (False!7009) (LeftBrace!3504) (ImaginaryLiteralValue!3504 (text!24974 List!19232)) (StringLiteralValue!10512 (value!106958 List!19232)) (EOFValue!3504 (value!106959 List!19232)) (IdentValue!3504 (value!106960 List!19232)) (DelimiterValue!7009 (value!106961 List!19232)) (DedentValue!3504 (value!106962 List!19232)) (NewLineValue!3504 (value!106963 List!19232)) (IntegerValue!10512 (value!106964 (_ BitVec 32)) (text!24975 List!19232)) (IntegerValue!10513 (value!106965 Int) (text!24976 List!19232)) (Times!3504) (Or!3504) (Equal!3504) (Minus!3504) (Broken!17524 (value!106966 List!19232)) (And!3504) (Div!3504) (LessEqual!3504) (Mod!3504) (Concat!8246) (Not!3504) (Plus!3504) (SpaceValue!3504 (value!106967 List!19232)) (IntegerValue!10514 (value!106968 Int) (text!24977 List!19232)) (StringLiteralValue!10513 (text!24978 List!19232)) (FloatLiteralValue!7009 (text!24979 List!19232)) (BytesLiteralValue!3504 (value!106969 List!19232)) (CommentValue!7009 (value!106970 List!19232)) (StringLiteralValue!10514 (value!106971 List!19232)) (ErrorTokenValue!3504 (msg!3565 List!19232)) )
))
(declare-datatypes ((String!21854 0))(
  ( (String!21855 (value!106972 String)) )
))
(declare-datatypes ((C!9658 0))(
  ( (C!9659 (val!5425 Int)) )
))
(declare-datatypes ((List!19233 0))(
  ( (Nil!19163) (Cons!19163 (h!24564 C!9658) (t!162086 List!19233)) )
))
(declare-datatypes ((Regex!4742 0))(
  ( (ElementMatch!4742 (c!284553 C!9658)) (Concat!8247 (regOne!9996 Regex!4742) (regTwo!9996 Regex!4742)) (EmptyExpr!4742) (Star!4742 (reg!5071 Regex!4742)) (EmptyLang!4742) (Union!4742 (regOne!9997 Regex!4742) (regTwo!9997 Regex!4742)) )
))
(declare-datatypes ((IArray!12753 0))(
  ( (IArray!12754 (innerList!6434 List!19233)) )
))
(declare-datatypes ((Conc!6374 0))(
  ( (Node!6374 (left!15321 Conc!6374) (right!15651 Conc!6374) (csize!12978 Int) (cheight!6585 Int)) (Leaf!9302 (xs!9250 IArray!12753) (csize!12979 Int)) (Empty!6374) )
))
(declare-datatypes ((BalanceConc!12692 0))(
  ( (BalanceConc!12693 (c!284554 Conc!6374)) )
))
(declare-datatypes ((TokenValueInjection!6668 0))(
  ( (TokenValueInjection!6669 (toValue!4925 Int) (toChars!4784 Int)) )
))
(declare-datatypes ((Rule!6628 0))(
  ( (Rule!6629 (regex!3414 Regex!4742) (tag!3756 String!21854) (isSeparator!3414 Bool) (transformation!3414 TokenValueInjection!6668)) )
))
(declare-datatypes ((Token!6394 0))(
  ( (Token!6395 (value!106973 TokenValue!3504) (rule!5418 Rule!6628) (size!15223 Int) (originalCharacters!4228 List!19233)) )
))
(declare-datatypes ((tuple2!18812 0))(
  ( (tuple2!18813 (_1!10808 Token!6394) (_2!10808 List!19233)) )
))
(declare-fun lt!672346 () tuple2!18812)

(declare-fun lambda!69671 () Int)

(declare-fun order!11963 () Int)

(declare-fun order!11961 () Int)

(declare-fun dynLambda!9061 (Int Int) Int)

(declare-fun dynLambda!9062 (Int Int) Int)

(assert (=> b!1743906 (< (dynLambda!9061 order!11961 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) (dynLambda!9062 order!11963 lambda!69671))))

(declare-fun order!11965 () Int)

(declare-fun dynLambda!9063 (Int Int) Int)

(assert (=> b!1743906 (< (dynLambda!9063 order!11965 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) (dynLambda!9062 order!11963 lambda!69671))))

(declare-fun b!1743871 () Bool)

(declare-fun e!1116063 () Bool)

(declare-fun e!1116068 () Bool)

(assert (=> b!1743871 (= e!1116063 (not e!1116068))))

(declare-fun res!784068 () Bool)

(assert (=> b!1743871 (=> res!784068 e!1116068)))

(declare-fun rule!422 () Rule!6628)

(declare-fun lt!672348 () List!19233)

(declare-fun matchR!2216 (Regex!4742 List!19233) Bool)

(assert (=> b!1743871 (= res!784068 (not (matchR!2216 (regex!3414 rule!422) lt!672348)))))

(declare-datatypes ((LexerInterface!3043 0))(
  ( (LexerInterfaceExt!3040 (__x!12311 Int)) (Lexer!3041) )
))
(declare-fun thiss!24550 () LexerInterface!3043)

(declare-fun ruleValid!913 (LexerInterface!3043 Rule!6628) Bool)

(assert (=> b!1743871 (ruleValid!913 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33234 0))(
  ( (Unit!33235) )
))
(declare-fun lt!672355 () Unit!33234)

(declare-datatypes ((List!19234 0))(
  ( (Nil!19164) (Cons!19164 (h!24565 Rule!6628) (t!162087 List!19234)) )
))
(declare-fun rules!3447 () List!19234)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!437 (LexerInterface!3043 Rule!6628 List!19234) Unit!33234)

(assert (=> b!1743871 (= lt!672355 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!437 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1743872 () Bool)

(declare-fun e!1116065 () Bool)

(assert (=> b!1743872 (= e!1116068 e!1116065)))

(declare-fun res!784059 () Bool)

(assert (=> b!1743872 (=> res!784059 e!1116065)))

(declare-fun lt!672349 () List!19233)

(declare-fun lt!672354 () List!19233)

(declare-fun isPrefix!1655 (List!19233 List!19233) Bool)

(assert (=> b!1743872 (= res!784059 (not (isPrefix!1655 lt!672349 lt!672354)))))

(declare-fun ++!5239 (List!19233 List!19233) List!19233)

(assert (=> b!1743872 (isPrefix!1655 lt!672349 (++!5239 lt!672349 (_2!10808 lt!672346)))))

(declare-fun lt!672351 () Unit!33234)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1165 (List!19233 List!19233) Unit!33234)

(assert (=> b!1743872 (= lt!672351 (lemmaConcatTwoListThenFirstIsPrefix!1165 lt!672349 (_2!10808 lt!672346)))))

(declare-fun lt!672353 () BalanceConc!12692)

(declare-fun list!7755 (BalanceConc!12692) List!19233)

(assert (=> b!1743872 (= lt!672349 (list!7755 lt!672353))))

(declare-fun charsOf!2063 (Token!6394) BalanceConc!12692)

(assert (=> b!1743872 (= lt!672353 (charsOf!2063 (_1!10808 lt!672346)))))

(declare-fun e!1116066 () Bool)

(assert (=> b!1743872 e!1116066))

(declare-fun res!784073 () Bool)

(assert (=> b!1743872 (=> (not res!784073) (not e!1116066))))

(declare-datatypes ((Option!3852 0))(
  ( (None!3851) (Some!3851 (v!25286 Rule!6628)) )
))
(declare-fun lt!672357 () Option!3852)

(declare-fun isDefined!3195 (Option!3852) Bool)

(assert (=> b!1743872 (= res!784073 (isDefined!3195 lt!672357))))

(declare-fun getRuleFromTag!464 (LexerInterface!3043 List!19234 String!21854) Option!3852)

(assert (=> b!1743872 (= lt!672357 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 (_1!10808 lt!672346)))))))

(declare-fun lt!672352 () Unit!33234)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!464 (LexerInterface!3043 List!19234 List!19233 Token!6394) Unit!33234)

(assert (=> b!1743872 (= lt!672352 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!464 thiss!24550 rules!3447 lt!672354 (_1!10808 lt!672346)))))

(declare-datatypes ((Option!3853 0))(
  ( (None!3852) (Some!3852 (v!25287 tuple2!18812)) )
))
(declare-fun lt!672359 () Option!3853)

(declare-fun get!5777 (Option!3853) tuple2!18812)

(assert (=> b!1743872 (= lt!672346 (get!5777 lt!672359))))

(declare-fun suffix!1421 () List!19233)

(declare-fun lt!672361 () Unit!33234)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!567 (LexerInterface!3043 List!19234 List!19233 List!19233) Unit!33234)

(assert (=> b!1743872 (= lt!672361 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!567 thiss!24550 rules!3447 lt!672348 suffix!1421))))

(declare-fun maxPrefix!1597 (LexerInterface!3043 List!19234 List!19233) Option!3853)

(assert (=> b!1743872 (= lt!672359 (maxPrefix!1597 thiss!24550 rules!3447 lt!672354))))

(assert (=> b!1743872 (isPrefix!1655 lt!672348 lt!672354)))

(declare-fun lt!672356 () Unit!33234)

(assert (=> b!1743872 (= lt!672356 (lemmaConcatTwoListThenFirstIsPrefix!1165 lt!672348 suffix!1421))))

(assert (=> b!1743872 (= lt!672354 (++!5239 lt!672348 suffix!1421))))

(declare-fun b!1743873 () Bool)

(declare-fun e!1116069 () Bool)

(declare-fun token!523 () Token!6394)

(declare-fun e!1116059 () Bool)

(declare-fun tp!496389 () Bool)

(declare-fun inv!24829 (String!21854) Bool)

(declare-fun inv!24832 (TokenValueInjection!6668) Bool)

(assert (=> b!1743873 (= e!1116059 (and tp!496389 (inv!24829 (tag!3756 (rule!5418 token!523))) (inv!24832 (transformation!3414 (rule!5418 token!523))) e!1116069))))

(declare-fun b!1743874 () Bool)

(declare-fun res!784069 () Bool)

(assert (=> b!1743874 (=> (not res!784069) (not e!1116063))))

(declare-fun lt!672350 () tuple2!18812)

(declare-fun isEmpty!12067 (List!19233) Bool)

(assert (=> b!1743874 (= res!784069 (isEmpty!12067 (_2!10808 lt!672350)))))

(declare-fun e!1116055 () Bool)

(assert (=> b!1743875 (= e!1116065 e!1116055)))

(declare-fun res!784066 () Bool)

(assert (=> b!1743875 (=> res!784066 e!1116055)))

(declare-fun Forall!783 (Int) Bool)

(assert (=> b!1743875 (= res!784066 (not (Forall!783 lambda!69671)))))

(declare-fun lt!672347 () Unit!33234)

(declare-fun lemmaInv!615 (TokenValueInjection!6668) Unit!33234)

(assert (=> b!1743875 (= lt!672347 (lemmaInv!615 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))))

(assert (=> b!1743876 (= e!1116069 (and tp!496394 tp!496398))))

(declare-fun b!1743877 () Bool)

(declare-fun dynLambda!9064 (Int TokenValue!3504) BalanceConc!12692)

(declare-fun dynLambda!9065 (Int BalanceConc!12692) TokenValue!3504)

(assert (=> b!1743877 (= e!1116055 (= (list!7755 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))) lt!672349))))

(declare-fun lt!672345 () Unit!33234)

(declare-fun lemmaSemiInverse!554 (TokenValueInjection!6668 BalanceConc!12692) Unit!33234)

(assert (=> b!1743877 (= lt!672345 (lemmaSemiInverse!554 (transformation!3414 (rule!5418 (_1!10808 lt!672346))) lt!672353))))

(declare-fun b!1743878 () Bool)

(declare-fun res!784060 () Bool)

(declare-fun e!1116064 () Bool)

(assert (=> b!1743878 (=> (not res!784060) (not e!1116064))))

(declare-fun rulesInvariant!2712 (LexerInterface!3043 List!19234) Bool)

(assert (=> b!1743878 (= res!784060 (rulesInvariant!2712 thiss!24550 rules!3447))))

(declare-fun b!1743880 () Bool)

(declare-fun res!784071 () Bool)

(assert (=> b!1743880 (=> res!784071 e!1116068)))

(declare-fun prefixMatch!627 (Regex!4742 List!19233) Bool)

(declare-fun rulesRegex!772 (LexerInterface!3043 List!19234) Regex!4742)

(declare-fun head!4001 (List!19233) C!9658)

(assert (=> b!1743880 (= res!784071 (prefixMatch!627 (rulesRegex!772 thiss!24550 rules!3447) (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163))))))

(declare-fun b!1743881 () Bool)

(declare-fun e!1116067 () Bool)

(declare-fun tp!496397 () Bool)

(declare-fun e!1116070 () Bool)

(assert (=> b!1743881 (= e!1116067 (and tp!496397 (inv!24829 (tag!3756 (h!24565 rules!3447))) (inv!24832 (transformation!3414 (h!24565 rules!3447))) e!1116070))))

(declare-fun b!1743882 () Bool)

(declare-fun e!1116056 () Bool)

(assert (=> b!1743882 (= e!1116064 e!1116056)))

(declare-fun res!784064 () Bool)

(assert (=> b!1743882 (=> (not res!784064) (not e!1116056))))

(declare-fun lt!672360 () Option!3853)

(declare-fun isDefined!3196 (Option!3853) Bool)

(assert (=> b!1743882 (= res!784064 (isDefined!3196 lt!672360))))

(assert (=> b!1743882 (= lt!672360 (maxPrefix!1597 thiss!24550 rules!3447 lt!672348))))

(assert (=> b!1743882 (= lt!672348 (list!7755 (charsOf!2063 token!523)))))

(declare-fun e!1116071 () Bool)

(assert (=> b!1743883 (= e!1116071 (and tp!496388 tp!496393))))

(declare-fun b!1743884 () Bool)

(declare-fun e!1116072 () Bool)

(assert (=> b!1743884 (= e!1116066 e!1116072)))

(declare-fun res!784072 () Bool)

(assert (=> b!1743884 (=> (not res!784072) (not e!1116072))))

(declare-fun lt!672358 () Rule!6628)

(assert (=> b!1743884 (= res!784072 (matchR!2216 (regex!3414 lt!672358) (list!7755 (charsOf!2063 (_1!10808 lt!672346)))))))

(declare-fun get!5778 (Option!3852) Rule!6628)

(assert (=> b!1743884 (= lt!672358 (get!5778 lt!672357))))

(declare-fun b!1743885 () Bool)

(assert (=> b!1743885 (= e!1116056 e!1116063)))

(declare-fun res!784063 () Bool)

(assert (=> b!1743885 (=> (not res!784063) (not e!1116063))))

(assert (=> b!1743885 (= res!784063 (= (_1!10808 lt!672350) token!523))))

(assert (=> b!1743885 (= lt!672350 (get!5777 lt!672360))))

(declare-fun b!1743886 () Bool)

(declare-fun tp!496387 () Bool)

(declare-fun e!1116057 () Bool)

(assert (=> b!1743886 (= e!1116057 (and tp!496387 (inv!24829 (tag!3756 rule!422)) (inv!24832 (transformation!3414 rule!422)) e!1116071))))

(declare-fun b!1743887 () Bool)

(declare-fun res!784067 () Bool)

(assert (=> b!1743887 (=> (not res!784067) (not e!1116064))))

(declare-fun isEmpty!12068 (List!19234) Bool)

(assert (=> b!1743887 (= res!784067 (not (isEmpty!12068 rules!3447)))))

(assert (=> b!1743888 (= e!1116070 (and tp!496392 tp!496396))))

(declare-fun b!1743889 () Bool)

(declare-fun e!1116061 () Bool)

(declare-fun tp!496390 () Bool)

(assert (=> b!1743889 (= e!1116061 (and e!1116067 tp!496390))))

(declare-fun tp!496391 () Bool)

(declare-fun b!1743890 () Bool)

(declare-fun e!1116058 () Bool)

(declare-fun inv!21 (TokenValue!3504) Bool)

(assert (=> b!1743890 (= e!1116058 (and (inv!21 (value!106973 token!523)) e!1116059 tp!496391))))

(declare-fun b!1743891 () Bool)

(declare-fun res!784061 () Bool)

(assert (=> b!1743891 (=> (not res!784061) (not e!1116064))))

(declare-fun contains!3438 (List!19234 Rule!6628) Bool)

(assert (=> b!1743891 (= res!784061 (contains!3438 rules!3447 rule!422))))

(declare-fun b!1743892 () Bool)

(declare-fun res!784074 () Bool)

(assert (=> b!1743892 (=> res!784074 e!1116068)))

(assert (=> b!1743892 (= res!784074 (isEmpty!12067 suffix!1421))))

(declare-fun b!1743893 () Bool)

(declare-fun e!1116062 () Bool)

(declare-fun tp_is_empty!7727 () Bool)

(declare-fun tp!496395 () Bool)

(assert (=> b!1743893 (= e!1116062 (and tp_is_empty!7727 tp!496395))))

(declare-fun res!784065 () Bool)

(assert (=> start!171764 (=> (not res!784065) (not e!1116064))))

(assert (=> start!171764 (= res!784065 (is-Lexer!3041 thiss!24550))))

(assert (=> start!171764 e!1116064))

(assert (=> start!171764 e!1116062))

(assert (=> start!171764 e!1116057))

(assert (=> start!171764 true))

(declare-fun inv!24833 (Token!6394) Bool)

(assert (=> start!171764 (and (inv!24833 token!523) e!1116058)))

(assert (=> start!171764 e!1116061))

(declare-fun b!1743879 () Bool)

(declare-fun res!784062 () Bool)

(assert (=> b!1743879 (=> (not res!784062) (not e!1116063))))

(assert (=> b!1743879 (= res!784062 (= (rule!5418 token!523) rule!422))))

(declare-fun b!1743894 () Bool)

(assert (=> b!1743894 (= e!1116072 (= (rule!5418 (_1!10808 lt!672346)) lt!672358))))

(declare-fun b!1743895 () Bool)

(declare-fun res!784070 () Bool)

(assert (=> b!1743895 (=> res!784070 e!1116065)))

(assert (=> b!1743895 (= res!784070 (not (matchR!2216 (regex!3414 (rule!5418 (_1!10808 lt!672346))) lt!672349)))))

(assert (= (and start!171764 res!784065) b!1743887))

(assert (= (and b!1743887 res!784067) b!1743878))

(assert (= (and b!1743878 res!784060) b!1743891))

(assert (= (and b!1743891 res!784061) b!1743882))

(assert (= (and b!1743882 res!784064) b!1743885))

(assert (= (and b!1743885 res!784063) b!1743874))

(assert (= (and b!1743874 res!784069) b!1743879))

(assert (= (and b!1743879 res!784062) b!1743871))

(assert (= (and b!1743871 (not res!784068)) b!1743892))

(assert (= (and b!1743892 (not res!784074)) b!1743880))

(assert (= (and b!1743880 (not res!784071)) b!1743872))

(assert (= (and b!1743872 res!784073) b!1743884))

(assert (= (and b!1743884 res!784072) b!1743894))

(assert (= (and b!1743872 (not res!784059)) b!1743895))

(assert (= (and b!1743895 (not res!784070)) b!1743875))

(assert (= (and b!1743875 (not res!784066)) b!1743877))

(assert (= (and start!171764 (is-Cons!19163 suffix!1421)) b!1743893))

(assert (= b!1743886 b!1743883))

(assert (= start!171764 b!1743886))

(assert (= b!1743873 b!1743876))

(assert (= b!1743890 b!1743873))

(assert (= start!171764 b!1743890))

(assert (= b!1743881 b!1743888))

(assert (= b!1743889 b!1743881))

(assert (= (and start!171764 (is-Cons!19164 rules!3447)) b!1743889))

(declare-fun b_lambda!55849 () Bool)

(assert (=> (not b_lambda!55849) (not b!1743877)))

(declare-fun tb!104275 () Bool)

(declare-fun t!162074 () Bool)

(assert (=> (and b!1743888 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162074) tb!104275))

(declare-fun b!1743911 () Bool)

(declare-fun tp!496401 () Bool)

(declare-fun e!1116087 () Bool)

(declare-fun inv!24834 (Conc!6374) Bool)

(assert (=> b!1743911 (= e!1116087 (and (inv!24834 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))) tp!496401))))

(declare-fun result!125418 () Bool)

(declare-fun inv!24835 (BalanceConc!12692) Bool)

(assert (=> tb!104275 (= result!125418 (and (inv!24835 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))) e!1116087))))

(assert (= tb!104275 b!1743911))

(declare-fun m!2155501 () Bool)

(assert (=> b!1743911 m!2155501))

(declare-fun m!2155503 () Bool)

(assert (=> tb!104275 m!2155503))

(assert (=> b!1743877 t!162074))

(declare-fun b_and!129677 () Bool)

(assert (= b_and!129667 (and (=> t!162074 result!125418) b_and!129677)))

(declare-fun t!162076 () Bool)

(declare-fun tb!104277 () Bool)

(assert (=> (and b!1743883 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162076) tb!104277))

(declare-fun result!125422 () Bool)

(assert (= result!125422 result!125418))

(assert (=> b!1743877 t!162076))

(declare-fun b_and!129679 () Bool)

(assert (= b_and!129671 (and (=> t!162076 result!125422) b_and!129679)))

(declare-fun tb!104279 () Bool)

(declare-fun t!162078 () Bool)

(assert (=> (and b!1743876 (= (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162078) tb!104279))

(declare-fun result!125424 () Bool)

(assert (= result!125424 result!125418))

(assert (=> b!1743877 t!162078))

(declare-fun b_and!129681 () Bool)

(assert (= b_and!129675 (and (=> t!162078 result!125424) b_and!129681)))

(declare-fun b_lambda!55851 () Bool)

(assert (=> (not b_lambda!55851) (not b!1743877)))

(declare-fun t!162080 () Bool)

(declare-fun tb!104281 () Bool)

(assert (=> (and b!1743888 (= (toValue!4925 (transformation!3414 (h!24565 rules!3447))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162080) tb!104281))

(declare-fun result!125426 () Bool)

(assert (=> tb!104281 (= result!125426 (inv!21 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(declare-fun m!2155505 () Bool)

(assert (=> tb!104281 m!2155505))

(assert (=> b!1743877 t!162080))

(declare-fun b_and!129683 () Bool)

(assert (= b_and!129665 (and (=> t!162080 result!125426) b_and!129683)))

(declare-fun tb!104283 () Bool)

(declare-fun t!162082 () Bool)

(assert (=> (and b!1743883 (= (toValue!4925 (transformation!3414 rule!422)) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162082) tb!104283))

(declare-fun result!125430 () Bool)

(assert (= result!125430 result!125426))

(assert (=> b!1743877 t!162082))

(declare-fun b_and!129685 () Bool)

(assert (= b_and!129669 (and (=> t!162082 result!125430) b_and!129685)))

(declare-fun tb!104285 () Bool)

(declare-fun t!162084 () Bool)

(assert (=> (and b!1743876 (= (toValue!4925 (transformation!3414 (rule!5418 token!523))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162084) tb!104285))

(declare-fun result!125432 () Bool)

(assert (= result!125432 result!125426))

(assert (=> b!1743877 t!162084))

(declare-fun b_and!129687 () Bool)

(assert (= b_and!129673 (and (=> t!162084 result!125432) b_and!129687)))

(declare-fun m!2155507 () Bool)

(assert (=> b!1743887 m!2155507))

(declare-fun m!2155509 () Bool)

(assert (=> b!1743878 m!2155509))

(declare-fun m!2155511 () Bool)

(assert (=> b!1743877 m!2155511))

(assert (=> b!1743877 m!2155511))

(declare-fun m!2155513 () Bool)

(assert (=> b!1743877 m!2155513))

(assert (=> b!1743877 m!2155513))

(declare-fun m!2155515 () Bool)

(assert (=> b!1743877 m!2155515))

(declare-fun m!2155517 () Bool)

(assert (=> b!1743877 m!2155517))

(declare-fun m!2155519 () Bool)

(assert (=> b!1743874 m!2155519))

(declare-fun m!2155521 () Bool)

(assert (=> b!1743873 m!2155521))

(declare-fun m!2155523 () Bool)

(assert (=> b!1743873 m!2155523))

(declare-fun m!2155525 () Bool)

(assert (=> b!1743895 m!2155525))

(declare-fun m!2155527 () Bool)

(assert (=> b!1743882 m!2155527))

(declare-fun m!2155529 () Bool)

(assert (=> b!1743882 m!2155529))

(declare-fun m!2155531 () Bool)

(assert (=> b!1743882 m!2155531))

(assert (=> b!1743882 m!2155531))

(declare-fun m!2155533 () Bool)

(assert (=> b!1743882 m!2155533))

(declare-fun m!2155535 () Bool)

(assert (=> b!1743891 m!2155535))

(declare-fun m!2155537 () Bool)

(assert (=> b!1743871 m!2155537))

(declare-fun m!2155539 () Bool)

(assert (=> b!1743871 m!2155539))

(declare-fun m!2155541 () Bool)

(assert (=> b!1743871 m!2155541))

(declare-fun m!2155543 () Bool)

(assert (=> b!1743872 m!2155543))

(declare-fun m!2155545 () Bool)

(assert (=> b!1743872 m!2155545))

(declare-fun m!2155547 () Bool)

(assert (=> b!1743872 m!2155547))

(declare-fun m!2155549 () Bool)

(assert (=> b!1743872 m!2155549))

(declare-fun m!2155551 () Bool)

(assert (=> b!1743872 m!2155551))

(declare-fun m!2155553 () Bool)

(assert (=> b!1743872 m!2155553))

(declare-fun m!2155555 () Bool)

(assert (=> b!1743872 m!2155555))

(declare-fun m!2155557 () Bool)

(assert (=> b!1743872 m!2155557))

(assert (=> b!1743872 m!2155549))

(declare-fun m!2155559 () Bool)

(assert (=> b!1743872 m!2155559))

(declare-fun m!2155561 () Bool)

(assert (=> b!1743872 m!2155561))

(declare-fun m!2155563 () Bool)

(assert (=> b!1743872 m!2155563))

(declare-fun m!2155565 () Bool)

(assert (=> b!1743872 m!2155565))

(declare-fun m!2155567 () Bool)

(assert (=> b!1743872 m!2155567))

(declare-fun m!2155569 () Bool)

(assert (=> b!1743872 m!2155569))

(declare-fun m!2155571 () Bool)

(assert (=> b!1743872 m!2155571))

(declare-fun m!2155573 () Bool)

(assert (=> b!1743892 m!2155573))

(declare-fun m!2155575 () Bool)

(assert (=> b!1743881 m!2155575))

(declare-fun m!2155577 () Bool)

(assert (=> b!1743881 m!2155577))

(declare-fun m!2155579 () Bool)

(assert (=> b!1743885 m!2155579))

(declare-fun m!2155581 () Bool)

(assert (=> start!171764 m!2155581))

(assert (=> b!1743884 m!2155543))

(assert (=> b!1743884 m!2155543))

(declare-fun m!2155583 () Bool)

(assert (=> b!1743884 m!2155583))

(assert (=> b!1743884 m!2155583))

(declare-fun m!2155585 () Bool)

(assert (=> b!1743884 m!2155585))

(declare-fun m!2155587 () Bool)

(assert (=> b!1743884 m!2155587))

(declare-fun m!2155589 () Bool)

(assert (=> b!1743880 m!2155589))

(declare-fun m!2155591 () Bool)

(assert (=> b!1743880 m!2155591))

(declare-fun m!2155593 () Bool)

(assert (=> b!1743880 m!2155593))

(assert (=> b!1743880 m!2155589))

(assert (=> b!1743880 m!2155593))

(declare-fun m!2155595 () Bool)

(assert (=> b!1743880 m!2155595))

(declare-fun m!2155597 () Bool)

(assert (=> b!1743890 m!2155597))

(declare-fun m!2155599 () Bool)

(assert (=> b!1743875 m!2155599))

(declare-fun m!2155601 () Bool)

(assert (=> b!1743875 m!2155601))

(declare-fun m!2155603 () Bool)

(assert (=> b!1743886 m!2155603))

(declare-fun m!2155605 () Bool)

(assert (=> b!1743886 m!2155605))

(push 1)

(assert (not b!1743874))

(assert (not b!1743895))

(assert (not b_next!48679))

(assert (not b_lambda!55851))

(assert (not b_next!48673))

(assert (not tb!104281))

(assert b_and!129677)

(assert (not b!1743884))

(assert (not b!1743885))

(assert b_and!129685)

(assert (not b_next!48681))

(assert (not b!1743875))

(assert (not b_lambda!55849))

(assert (not b!1743911))

(assert (not start!171764))

(assert (not b!1743871))

(assert (not b!1743891))

(assert (not b!1743872))

(assert (not b!1743877))

(assert (not b!1743887))

(assert (not b!1743886))

(assert (not b!1743893))

(assert (not b!1743892))

(assert (not tb!104275))

(assert (not b!1743890))

(assert (not b!1743882))

(assert b_and!129681)

(assert b_and!129683)

(assert (not b!1743880))

(assert (not b_next!48677))

(assert b_and!129679)

(assert (not b_next!48671))

(assert (not b!1743889))

(assert tp_is_empty!7727)

(assert b_and!129687)

(assert (not b!1743878))

(assert (not b!1743881))

(assert (not b_next!48675))

(assert (not b!1743873))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!48679))

(assert (not b_next!48673))

(assert (not b_next!48671))

(assert b_and!129677)

(assert b_and!129687)

(assert (not b_next!48675))

(assert b_and!129685)

(assert (not b_next!48681))

(assert b_and!129681)

(assert b_and!129683)

(assert (not b_next!48677))

(assert b_and!129679)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!532962 () Bool)

(declare-fun choose!10742 (Int) Bool)

(assert (=> d!532962 (= (Forall!783 lambda!69671) (choose!10742 lambda!69671))))

(declare-fun bs!403178 () Bool)

(assert (= bs!403178 d!532962))

(declare-fun m!2155713 () Bool)

(assert (=> bs!403178 m!2155713))

(assert (=> b!1743875 d!532962))

(declare-fun d!532964 () Bool)

(declare-fun e!1116171 () Bool)

(assert (=> d!532964 e!1116171))

(declare-fun res!784125 () Bool)

(assert (=> d!532964 (=> (not res!784125) (not e!1116171))))

(declare-fun semiInverseModEq!1350 (Int Int) Bool)

(assert (=> d!532964 (= res!784125 (semiInverseModEq!1350 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))))))

(declare-fun Unit!33239 () Unit!33234)

(assert (=> d!532964 (= (lemmaInv!615 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) Unit!33239)))

(declare-fun b!1744009 () Bool)

(declare-fun equivClasses!1291 (Int Int) Bool)

(assert (=> b!1744009 (= e!1116171 (equivClasses!1291 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))))))

(assert (= (and d!532964 res!784125) b!1744009))

(declare-fun m!2155715 () Bool)

(assert (=> d!532964 m!2155715))

(declare-fun m!2155717 () Bool)

(assert (=> b!1744009 m!2155717))

(assert (=> b!1743875 d!532964))

(declare-fun d!532966 () Bool)

(declare-fun res!784130 () Bool)

(declare-fun e!1116174 () Bool)

(assert (=> d!532966 (=> (not res!784130) (not e!1116174))))

(assert (=> d!532966 (= res!784130 (not (isEmpty!12067 (originalCharacters!4228 token!523))))))

(assert (=> d!532966 (= (inv!24833 token!523) e!1116174)))

(declare-fun b!1744014 () Bool)

(declare-fun res!784131 () Bool)

(assert (=> b!1744014 (=> (not res!784131) (not e!1116174))))

(assert (=> b!1744014 (= res!784131 (= (originalCharacters!4228 token!523) (list!7755 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (value!106973 token!523)))))))

(declare-fun b!1744015 () Bool)

(declare-fun size!15225 (List!19233) Int)

(assert (=> b!1744015 (= e!1116174 (= (size!15223 token!523) (size!15225 (originalCharacters!4228 token!523))))))

(assert (= (and d!532966 res!784130) b!1744014))

(assert (= (and b!1744014 res!784131) b!1744015))

(declare-fun b_lambda!55857 () Bool)

(assert (=> (not b_lambda!55857) (not b!1744014)))

(declare-fun t!162104 () Bool)

(declare-fun tb!104299 () Bool)

(assert (=> (and b!1743888 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 token!523)))) t!162104) tb!104299))

(declare-fun b!1744016 () Bool)

(declare-fun e!1116175 () Bool)

(declare-fun tp!496441 () Bool)

(assert (=> b!1744016 (= e!1116175 (and (inv!24834 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (value!106973 token!523)))) tp!496441))))

(declare-fun result!125450 () Bool)

(assert (=> tb!104299 (= result!125450 (and (inv!24835 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (value!106973 token!523))) e!1116175))))

(assert (= tb!104299 b!1744016))

(declare-fun m!2155719 () Bool)

(assert (=> b!1744016 m!2155719))

(declare-fun m!2155721 () Bool)

(assert (=> tb!104299 m!2155721))

(assert (=> b!1744014 t!162104))

(declare-fun b_and!129713 () Bool)

(assert (= b_and!129677 (and (=> t!162104 result!125450) b_and!129713)))

(declare-fun tb!104301 () Bool)

(declare-fun t!162106 () Bool)

(assert (=> (and b!1743883 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 token!523)))) t!162106) tb!104301))

(declare-fun result!125452 () Bool)

(assert (= result!125452 result!125450))

(assert (=> b!1744014 t!162106))

(declare-fun b_and!129715 () Bool)

(assert (= b_and!129679 (and (=> t!162106 result!125452) b_and!129715)))

(declare-fun t!162108 () Bool)

(declare-fun tb!104303 () Bool)

(assert (=> (and b!1743876 (= (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toChars!4784 (transformation!3414 (rule!5418 token!523)))) t!162108) tb!104303))

(declare-fun result!125454 () Bool)

(assert (= result!125454 result!125450))

(assert (=> b!1744014 t!162108))

(declare-fun b_and!129717 () Bool)

(assert (= b_and!129681 (and (=> t!162108 result!125454) b_and!129717)))

(declare-fun m!2155723 () Bool)

(assert (=> d!532966 m!2155723))

(declare-fun m!2155725 () Bool)

(assert (=> b!1744014 m!2155725))

(assert (=> b!1744014 m!2155725))

(declare-fun m!2155727 () Bool)

(assert (=> b!1744014 m!2155727))

(declare-fun m!2155729 () Bool)

(assert (=> b!1744015 m!2155729))

(assert (=> start!171764 d!532966))

(declare-fun d!532968 () Bool)

(assert (=> d!532968 (= (inv!24829 (tag!3756 rule!422)) (= (mod (str.len (value!106972 (tag!3756 rule!422))) 2) 0))))

(assert (=> b!1743886 d!532968))

(declare-fun d!532970 () Bool)

(declare-fun res!784134 () Bool)

(declare-fun e!1116178 () Bool)

(assert (=> d!532970 (=> (not res!784134) (not e!1116178))))

(assert (=> d!532970 (= res!784134 (semiInverseModEq!1350 (toChars!4784 (transformation!3414 rule!422)) (toValue!4925 (transformation!3414 rule!422))))))

(assert (=> d!532970 (= (inv!24832 (transformation!3414 rule!422)) e!1116178)))

(declare-fun b!1744019 () Bool)

(assert (=> b!1744019 (= e!1116178 (equivClasses!1291 (toChars!4784 (transformation!3414 rule!422)) (toValue!4925 (transformation!3414 rule!422))))))

(assert (= (and d!532970 res!784134) b!1744019))

(declare-fun m!2155731 () Bool)

(assert (=> d!532970 m!2155731))

(declare-fun m!2155733 () Bool)

(assert (=> b!1744019 m!2155733))

(assert (=> b!1743886 d!532970))

(declare-fun b!1744049 () Bool)

(declare-fun e!1116195 () Bool)

(assert (=> b!1744049 (= e!1116195 (= (head!4001 (list!7755 (charsOf!2063 (_1!10808 lt!672346)))) (c!284553 (regex!3414 lt!672358))))))

(declare-fun b!1744050 () Bool)

(declare-fun e!1116196 () Bool)

(declare-fun lt!672415 () Bool)

(assert (=> b!1744050 (= e!1116196 (not lt!672415))))

(declare-fun b!1744051 () Bool)

(declare-fun res!784152 () Bool)

(declare-fun e!1116193 () Bool)

(assert (=> b!1744051 (=> res!784152 e!1116193)))

(declare-fun tail!2604 (List!19233) List!19233)

(assert (=> b!1744051 (= res!784152 (not (isEmpty!12067 (tail!2604 (list!7755 (charsOf!2063 (_1!10808 lt!672346)))))))))

(declare-fun b!1744052 () Bool)

(declare-fun res!784155 () Bool)

(declare-fun e!1116197 () Bool)

(assert (=> b!1744052 (=> res!784155 e!1116197)))

(assert (=> b!1744052 (= res!784155 (not (is-ElementMatch!4742 (regex!3414 lt!672358))))))

(assert (=> b!1744052 (= e!1116196 e!1116197)))

(declare-fun b!1744053 () Bool)

(declare-fun res!784153 () Bool)

(assert (=> b!1744053 (=> res!784153 e!1116197)))

(assert (=> b!1744053 (= res!784153 e!1116195)))

(declare-fun res!784158 () Bool)

(assert (=> b!1744053 (=> (not res!784158) (not e!1116195))))

(assert (=> b!1744053 (= res!784158 lt!672415)))

(declare-fun b!1744054 () Bool)

(declare-fun e!1116199 () Bool)

(declare-fun derivativeStep!1205 (Regex!4742 C!9658) Regex!4742)

(assert (=> b!1744054 (= e!1116199 (matchR!2216 (derivativeStep!1205 (regex!3414 lt!672358) (head!4001 (list!7755 (charsOf!2063 (_1!10808 lt!672346))))) (tail!2604 (list!7755 (charsOf!2063 (_1!10808 lt!672346))))))))

(declare-fun b!1744055 () Bool)

(declare-fun e!1116194 () Bool)

(assert (=> b!1744055 (= e!1116197 e!1116194)))

(declare-fun res!784156 () Bool)

(assert (=> b!1744055 (=> (not res!784156) (not e!1116194))))

(assert (=> b!1744055 (= res!784156 (not lt!672415))))

(declare-fun b!1744056 () Bool)

(declare-fun nullable!1437 (Regex!4742) Bool)

(assert (=> b!1744056 (= e!1116199 (nullable!1437 (regex!3414 lt!672358)))))

(declare-fun b!1744057 () Bool)

(declare-fun res!784157 () Bool)

(assert (=> b!1744057 (=> (not res!784157) (not e!1116195))))

(assert (=> b!1744057 (= res!784157 (isEmpty!12067 (tail!2604 (list!7755 (charsOf!2063 (_1!10808 lt!672346))))))))

(declare-fun b!1744058 () Bool)

(declare-fun e!1116198 () Bool)

(assert (=> b!1744058 (= e!1116198 e!1116196)))

(declare-fun c!284565 () Bool)

(assert (=> b!1744058 (= c!284565 (is-EmptyLang!4742 (regex!3414 lt!672358)))))

(declare-fun bm!110196 () Bool)

(declare-fun call!110201 () Bool)

(assert (=> bm!110196 (= call!110201 (isEmpty!12067 (list!7755 (charsOf!2063 (_1!10808 lt!672346)))))))

(declare-fun d!532972 () Bool)

(assert (=> d!532972 e!1116198))

(declare-fun c!284564 () Bool)

(assert (=> d!532972 (= c!284564 (is-EmptyExpr!4742 (regex!3414 lt!672358)))))

(assert (=> d!532972 (= lt!672415 e!1116199)))

(declare-fun c!284566 () Bool)

(assert (=> d!532972 (= c!284566 (isEmpty!12067 (list!7755 (charsOf!2063 (_1!10808 lt!672346)))))))

(declare-fun validRegex!1911 (Regex!4742) Bool)

(assert (=> d!532972 (validRegex!1911 (regex!3414 lt!672358))))

(assert (=> d!532972 (= (matchR!2216 (regex!3414 lt!672358) (list!7755 (charsOf!2063 (_1!10808 lt!672346)))) lt!672415)))

(declare-fun b!1744048 () Bool)

(assert (=> b!1744048 (= e!1116194 e!1116193)))

(declare-fun res!784154 () Bool)

(assert (=> b!1744048 (=> res!784154 e!1116193)))

(assert (=> b!1744048 (= res!784154 call!110201)))

(declare-fun b!1744059 () Bool)

(assert (=> b!1744059 (= e!1116198 (= lt!672415 call!110201))))

(declare-fun b!1744060 () Bool)

(declare-fun res!784151 () Bool)

(assert (=> b!1744060 (=> (not res!784151) (not e!1116195))))

(assert (=> b!1744060 (= res!784151 (not call!110201))))

(declare-fun b!1744061 () Bool)

(assert (=> b!1744061 (= e!1116193 (not (= (head!4001 (list!7755 (charsOf!2063 (_1!10808 lt!672346)))) (c!284553 (regex!3414 lt!672358)))))))

(assert (= (and d!532972 c!284566) b!1744056))

(assert (= (and d!532972 (not c!284566)) b!1744054))

(assert (= (and d!532972 c!284564) b!1744059))

(assert (= (and d!532972 (not c!284564)) b!1744058))

(assert (= (and b!1744058 c!284565) b!1744050))

(assert (= (and b!1744058 (not c!284565)) b!1744052))

(assert (= (and b!1744052 (not res!784155)) b!1744053))

(assert (= (and b!1744053 res!784158) b!1744060))

(assert (= (and b!1744060 res!784151) b!1744057))

(assert (= (and b!1744057 res!784157) b!1744049))

(assert (= (and b!1744053 (not res!784153)) b!1744055))

(assert (= (and b!1744055 res!784156) b!1744048))

(assert (= (and b!1744048 (not res!784154)) b!1744051))

(assert (= (and b!1744051 (not res!784152)) b!1744061))

(assert (= (or b!1744059 b!1744048 b!1744060) bm!110196))

(assert (=> d!532972 m!2155583))

(declare-fun m!2155735 () Bool)

(assert (=> d!532972 m!2155735))

(declare-fun m!2155737 () Bool)

(assert (=> d!532972 m!2155737))

(assert (=> b!1744054 m!2155583))

(declare-fun m!2155739 () Bool)

(assert (=> b!1744054 m!2155739))

(assert (=> b!1744054 m!2155739))

(declare-fun m!2155741 () Bool)

(assert (=> b!1744054 m!2155741))

(assert (=> b!1744054 m!2155583))

(declare-fun m!2155743 () Bool)

(assert (=> b!1744054 m!2155743))

(assert (=> b!1744054 m!2155741))

(assert (=> b!1744054 m!2155743))

(declare-fun m!2155745 () Bool)

(assert (=> b!1744054 m!2155745))

(assert (=> b!1744057 m!2155583))

(assert (=> b!1744057 m!2155743))

(assert (=> b!1744057 m!2155743))

(declare-fun m!2155747 () Bool)

(assert (=> b!1744057 m!2155747))

(assert (=> b!1744049 m!2155583))

(assert (=> b!1744049 m!2155739))

(assert (=> b!1744061 m!2155583))

(assert (=> b!1744061 m!2155739))

(declare-fun m!2155749 () Bool)

(assert (=> b!1744056 m!2155749))

(assert (=> b!1744051 m!2155583))

(assert (=> b!1744051 m!2155743))

(assert (=> b!1744051 m!2155743))

(assert (=> b!1744051 m!2155747))

(assert (=> bm!110196 m!2155583))

(assert (=> bm!110196 m!2155735))

(assert (=> b!1743884 d!532972))

(declare-fun d!532974 () Bool)

(declare-fun list!7757 (Conc!6374) List!19233)

(assert (=> d!532974 (= (list!7755 (charsOf!2063 (_1!10808 lt!672346))) (list!7757 (c!284554 (charsOf!2063 (_1!10808 lt!672346)))))))

(declare-fun bs!403179 () Bool)

(assert (= bs!403179 d!532974))

(declare-fun m!2155751 () Bool)

(assert (=> bs!403179 m!2155751))

(assert (=> b!1743884 d!532974))

(declare-fun d!532976 () Bool)

(declare-fun lt!672418 () BalanceConc!12692)

(assert (=> d!532976 (= (list!7755 lt!672418) (originalCharacters!4228 (_1!10808 lt!672346)))))

(assert (=> d!532976 (= lt!672418 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (value!106973 (_1!10808 lt!672346))))))

(assert (=> d!532976 (= (charsOf!2063 (_1!10808 lt!672346)) lt!672418)))

(declare-fun b_lambda!55859 () Bool)

(assert (=> (not b_lambda!55859) (not d!532976)))

(declare-fun tb!104305 () Bool)

(declare-fun t!162110 () Bool)

(assert (=> (and b!1743888 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162110) tb!104305))

(declare-fun b!1744062 () Bool)

(declare-fun e!1116200 () Bool)

(declare-fun tp!496442 () Bool)

(assert (=> b!1744062 (= e!1116200 (and (inv!24834 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (value!106973 (_1!10808 lt!672346))))) tp!496442))))

(declare-fun result!125456 () Bool)

(assert (=> tb!104305 (= result!125456 (and (inv!24835 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (value!106973 (_1!10808 lt!672346)))) e!1116200))))

(assert (= tb!104305 b!1744062))

(declare-fun m!2155753 () Bool)

(assert (=> b!1744062 m!2155753))

(declare-fun m!2155755 () Bool)

(assert (=> tb!104305 m!2155755))

(assert (=> d!532976 t!162110))

(declare-fun b_and!129719 () Bool)

(assert (= b_and!129713 (and (=> t!162110 result!125456) b_and!129719)))

(declare-fun t!162112 () Bool)

(declare-fun tb!104307 () Bool)

(assert (=> (and b!1743883 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162112) tb!104307))

(declare-fun result!125458 () Bool)

(assert (= result!125458 result!125456))

(assert (=> d!532976 t!162112))

(declare-fun b_and!129721 () Bool)

(assert (= b_and!129715 (and (=> t!162112 result!125458) b_and!129721)))

(declare-fun t!162114 () Bool)

(declare-fun tb!104309 () Bool)

(assert (=> (and b!1743876 (= (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162114) tb!104309))

(declare-fun result!125460 () Bool)

(assert (= result!125460 result!125456))

(assert (=> d!532976 t!162114))

(declare-fun b_and!129723 () Bool)

(assert (= b_and!129717 (and (=> t!162114 result!125460) b_and!129723)))

(declare-fun m!2155757 () Bool)

(assert (=> d!532976 m!2155757))

(declare-fun m!2155759 () Bool)

(assert (=> d!532976 m!2155759))

(assert (=> b!1743884 d!532976))

(declare-fun d!532978 () Bool)

(assert (=> d!532978 (= (get!5778 lt!672357) (v!25286 lt!672357))))

(assert (=> b!1743884 d!532978))

(declare-fun b!1744064 () Bool)

(declare-fun e!1116203 () Bool)

(assert (=> b!1744064 (= e!1116203 (= (head!4001 lt!672349) (c!284553 (regex!3414 (rule!5418 (_1!10808 lt!672346))))))))

(declare-fun b!1744065 () Bool)

(declare-fun e!1116204 () Bool)

(declare-fun lt!672419 () Bool)

(assert (=> b!1744065 (= e!1116204 (not lt!672419))))

(declare-fun b!1744066 () Bool)

(declare-fun res!784160 () Bool)

(declare-fun e!1116201 () Bool)

(assert (=> b!1744066 (=> res!784160 e!1116201)))

(assert (=> b!1744066 (= res!784160 (not (isEmpty!12067 (tail!2604 lt!672349))))))

(declare-fun b!1744067 () Bool)

(declare-fun res!784163 () Bool)

(declare-fun e!1116205 () Bool)

(assert (=> b!1744067 (=> res!784163 e!1116205)))

(assert (=> b!1744067 (= res!784163 (not (is-ElementMatch!4742 (regex!3414 (rule!5418 (_1!10808 lt!672346))))))))

(assert (=> b!1744067 (= e!1116204 e!1116205)))

(declare-fun b!1744068 () Bool)

(declare-fun res!784161 () Bool)

(assert (=> b!1744068 (=> res!784161 e!1116205)))

(assert (=> b!1744068 (= res!784161 e!1116203)))

(declare-fun res!784166 () Bool)

(assert (=> b!1744068 (=> (not res!784166) (not e!1116203))))

(assert (=> b!1744068 (= res!784166 lt!672419)))

(declare-fun b!1744069 () Bool)

(declare-fun e!1116207 () Bool)

(assert (=> b!1744069 (= e!1116207 (matchR!2216 (derivativeStep!1205 (regex!3414 (rule!5418 (_1!10808 lt!672346))) (head!4001 lt!672349)) (tail!2604 lt!672349)))))

(declare-fun b!1744070 () Bool)

(declare-fun e!1116202 () Bool)

(assert (=> b!1744070 (= e!1116205 e!1116202)))

(declare-fun res!784164 () Bool)

(assert (=> b!1744070 (=> (not res!784164) (not e!1116202))))

(assert (=> b!1744070 (= res!784164 (not lt!672419))))

(declare-fun b!1744071 () Bool)

(assert (=> b!1744071 (= e!1116207 (nullable!1437 (regex!3414 (rule!5418 (_1!10808 lt!672346)))))))

(declare-fun b!1744072 () Bool)

(declare-fun res!784165 () Bool)

(assert (=> b!1744072 (=> (not res!784165) (not e!1116203))))

(assert (=> b!1744072 (= res!784165 (isEmpty!12067 (tail!2604 lt!672349)))))

(declare-fun b!1744073 () Bool)

(declare-fun e!1116206 () Bool)

(assert (=> b!1744073 (= e!1116206 e!1116204)))

(declare-fun c!284568 () Bool)

(assert (=> b!1744073 (= c!284568 (is-EmptyLang!4742 (regex!3414 (rule!5418 (_1!10808 lt!672346)))))))

(declare-fun bm!110197 () Bool)

(declare-fun call!110202 () Bool)

(assert (=> bm!110197 (= call!110202 (isEmpty!12067 lt!672349))))

(declare-fun d!532980 () Bool)

(assert (=> d!532980 e!1116206))

(declare-fun c!284567 () Bool)

(assert (=> d!532980 (= c!284567 (is-EmptyExpr!4742 (regex!3414 (rule!5418 (_1!10808 lt!672346)))))))

(assert (=> d!532980 (= lt!672419 e!1116207)))

(declare-fun c!284569 () Bool)

(assert (=> d!532980 (= c!284569 (isEmpty!12067 lt!672349))))

(assert (=> d!532980 (validRegex!1911 (regex!3414 (rule!5418 (_1!10808 lt!672346))))))

(assert (=> d!532980 (= (matchR!2216 (regex!3414 (rule!5418 (_1!10808 lt!672346))) lt!672349) lt!672419)))

(declare-fun b!1744063 () Bool)

(assert (=> b!1744063 (= e!1116202 e!1116201)))

(declare-fun res!784162 () Bool)

(assert (=> b!1744063 (=> res!784162 e!1116201)))

(assert (=> b!1744063 (= res!784162 call!110202)))

(declare-fun b!1744074 () Bool)

(assert (=> b!1744074 (= e!1116206 (= lt!672419 call!110202))))

(declare-fun b!1744075 () Bool)

(declare-fun res!784159 () Bool)

(assert (=> b!1744075 (=> (not res!784159) (not e!1116203))))

(assert (=> b!1744075 (= res!784159 (not call!110202))))

(declare-fun b!1744076 () Bool)

(assert (=> b!1744076 (= e!1116201 (not (= (head!4001 lt!672349) (c!284553 (regex!3414 (rule!5418 (_1!10808 lt!672346)))))))))

(assert (= (and d!532980 c!284569) b!1744071))

(assert (= (and d!532980 (not c!284569)) b!1744069))

(assert (= (and d!532980 c!284567) b!1744074))

(assert (= (and d!532980 (not c!284567)) b!1744073))

(assert (= (and b!1744073 c!284568) b!1744065))

(assert (= (and b!1744073 (not c!284568)) b!1744067))

(assert (= (and b!1744067 (not res!784163)) b!1744068))

(assert (= (and b!1744068 res!784166) b!1744075))

(assert (= (and b!1744075 res!784159) b!1744072))

(assert (= (and b!1744072 res!784165) b!1744064))

(assert (= (and b!1744068 (not res!784161)) b!1744070))

(assert (= (and b!1744070 res!784164) b!1744063))

(assert (= (and b!1744063 (not res!784162)) b!1744066))

(assert (= (and b!1744066 (not res!784160)) b!1744076))

(assert (= (or b!1744074 b!1744063 b!1744075) bm!110197))

(declare-fun m!2155761 () Bool)

(assert (=> d!532980 m!2155761))

(declare-fun m!2155763 () Bool)

(assert (=> d!532980 m!2155763))

(declare-fun m!2155765 () Bool)

(assert (=> b!1744069 m!2155765))

(assert (=> b!1744069 m!2155765))

(declare-fun m!2155767 () Bool)

(assert (=> b!1744069 m!2155767))

(declare-fun m!2155769 () Bool)

(assert (=> b!1744069 m!2155769))

(assert (=> b!1744069 m!2155767))

(assert (=> b!1744069 m!2155769))

(declare-fun m!2155771 () Bool)

(assert (=> b!1744069 m!2155771))

(assert (=> b!1744072 m!2155769))

(assert (=> b!1744072 m!2155769))

(declare-fun m!2155773 () Bool)

(assert (=> b!1744072 m!2155773))

(assert (=> b!1744064 m!2155765))

(assert (=> b!1744076 m!2155765))

(declare-fun m!2155775 () Bool)

(assert (=> b!1744071 m!2155775))

(assert (=> b!1744066 m!2155769))

(assert (=> b!1744066 m!2155769))

(assert (=> b!1744066 m!2155773))

(assert (=> bm!110197 m!2155761))

(assert (=> b!1743895 d!532980))

(declare-fun b!1744087 () Bool)

(declare-fun e!1116214 () Bool)

(declare-fun e!1116215 () Bool)

(assert (=> b!1744087 (= e!1116214 e!1116215)))

(declare-fun c!284575 () Bool)

(assert (=> b!1744087 (= c!284575 (is-IntegerValue!10513 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(declare-fun b!1744088 () Bool)

(declare-fun res!784169 () Bool)

(declare-fun e!1116216 () Bool)

(assert (=> b!1744088 (=> res!784169 e!1116216)))

(assert (=> b!1744088 (= res!784169 (not (is-IntegerValue!10514 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))))

(assert (=> b!1744088 (= e!1116215 e!1116216)))

(declare-fun b!1744089 () Bool)

(declare-fun inv!15 (TokenValue!3504) Bool)

(assert (=> b!1744089 (= e!1116216 (inv!15 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(declare-fun d!532982 () Bool)

(declare-fun c!284574 () Bool)

(assert (=> d!532982 (= c!284574 (is-IntegerValue!10512 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(assert (=> d!532982 (= (inv!21 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)) e!1116214)))

(declare-fun b!1744090 () Bool)

(declare-fun inv!16 (TokenValue!3504) Bool)

(assert (=> b!1744090 (= e!1116214 (inv!16 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(declare-fun b!1744091 () Bool)

(declare-fun inv!17 (TokenValue!3504) Bool)

(assert (=> b!1744091 (= e!1116215 (inv!17 (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))

(assert (= (and d!532982 c!284574) b!1744090))

(assert (= (and d!532982 (not c!284574)) b!1744087))

(assert (= (and b!1744087 c!284575) b!1744091))

(assert (= (and b!1744087 (not c!284575)) b!1744088))

(assert (= (and b!1744088 (not res!784169)) b!1744089))

(declare-fun m!2155777 () Bool)

(assert (=> b!1744089 m!2155777))

(declare-fun m!2155779 () Bool)

(assert (=> b!1744090 m!2155779))

(declare-fun m!2155781 () Bool)

(assert (=> b!1744091 m!2155781))

(assert (=> tb!104281 d!532982))

(declare-fun d!532984 () Bool)

(assert (=> d!532984 (= (isEmpty!12067 (_2!10808 lt!672350)) (is-Nil!19163 (_2!10808 lt!672350)))))

(assert (=> b!1743874 d!532984))

(declare-fun d!532986 () Bool)

(assert (=> d!532986 (= (get!5777 lt!672360) (v!25287 lt!672360))))

(assert (=> b!1743885 d!532986))

(declare-fun d!532988 () Bool)

(declare-fun c!284578 () Bool)

(assert (=> d!532988 (= c!284578 (is-Node!6374 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))))

(declare-fun e!1116221 () Bool)

(assert (=> d!532988 (= (inv!24834 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))) e!1116221)))

(declare-fun b!1744098 () Bool)

(declare-fun inv!24840 (Conc!6374) Bool)

(assert (=> b!1744098 (= e!1116221 (inv!24840 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))))

(declare-fun b!1744099 () Bool)

(declare-fun e!1116222 () Bool)

(assert (=> b!1744099 (= e!1116221 e!1116222)))

(declare-fun res!784172 () Bool)

(assert (=> b!1744099 (= res!784172 (not (is-Leaf!9302 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))))))

(assert (=> b!1744099 (=> res!784172 e!1116222)))

(declare-fun b!1744100 () Bool)

(declare-fun inv!24841 (Conc!6374) Bool)

(assert (=> b!1744100 (= e!1116222 (inv!24841 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))))

(assert (= (and d!532988 c!284578) b!1744098))

(assert (= (and d!532988 (not c!284578)) b!1744099))

(assert (= (and b!1744099 (not res!784172)) b!1744100))

(declare-fun m!2155783 () Bool)

(assert (=> b!1744098 m!2155783))

(declare-fun m!2155785 () Bool)

(assert (=> b!1744100 m!2155785))

(assert (=> b!1743911 d!532988))

(declare-fun d!532990 () Bool)

(declare-fun res!784175 () Bool)

(declare-fun e!1116225 () Bool)

(assert (=> d!532990 (=> (not res!784175) (not e!1116225))))

(declare-fun rulesValid!1277 (LexerInterface!3043 List!19234) Bool)

(assert (=> d!532990 (= res!784175 (rulesValid!1277 thiss!24550 rules!3447))))

(assert (=> d!532990 (= (rulesInvariant!2712 thiss!24550 rules!3447) e!1116225)))

(declare-fun b!1744103 () Bool)

(declare-datatypes ((List!19238 0))(
  ( (Nil!19168) (Cons!19168 (h!24569 String!21854) (t!162123 List!19238)) )
))
(declare-fun noDuplicateTag!1277 (LexerInterface!3043 List!19234 List!19238) Bool)

(assert (=> b!1744103 (= e!1116225 (noDuplicateTag!1277 thiss!24550 rules!3447 Nil!19168))))

(assert (= (and d!532990 res!784175) b!1744103))

(declare-fun m!2155787 () Bool)

(assert (=> d!532990 m!2155787))

(declare-fun m!2155789 () Bool)

(assert (=> b!1744103 m!2155789))

(assert (=> b!1743878 d!532990))

(declare-fun d!532992 () Bool)

(assert (=> d!532992 (= (isEmpty!12068 rules!3447) (is-Nil!19164 rules!3447))))

(assert (=> b!1743887 d!532992))

(declare-fun d!532994 () Bool)

(assert (=> d!532994 (= (list!7755 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))) (list!7757 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))))

(declare-fun bs!403180 () Bool)

(assert (= bs!403180 d!532994))

(declare-fun m!2155791 () Bool)

(assert (=> bs!403180 m!2155791))

(assert (=> b!1743877 d!532994))

(declare-fun bs!403181 () Bool)

(declare-fun d!532996 () Bool)

(assert (= bs!403181 (and d!532996 b!1743875)))

(declare-fun lambda!69677 () Int)

(assert (=> bs!403181 (= lambda!69677 lambda!69671)))

(declare-fun b!1744108 () Bool)

(declare-fun e!1116228 () Bool)

(assert (=> b!1744108 (= e!1116228 true)))

(assert (=> d!532996 e!1116228))

(assert (= d!532996 b!1744108))

(assert (=> b!1744108 (< (dynLambda!9061 order!11961 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) (dynLambda!9062 order!11963 lambda!69677))))

(assert (=> b!1744108 (< (dynLambda!9063 order!11965 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) (dynLambda!9062 order!11963 lambda!69677))))

(assert (=> d!532996 (= (list!7755 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))) (list!7755 lt!672353))))

(declare-fun lt!672422 () Unit!33234)

(declare-fun ForallOf!289 (Int BalanceConc!12692) Unit!33234)

(assert (=> d!532996 (= lt!672422 (ForallOf!289 lambda!69677 lt!672353))))

(assert (=> d!532996 (= (lemmaSemiInverse!554 (transformation!3414 (rule!5418 (_1!10808 lt!672346))) lt!672353) lt!672422)))

(declare-fun b_lambda!55861 () Bool)

(assert (=> (not b_lambda!55861) (not d!532996)))

(assert (=> d!532996 t!162074))

(declare-fun b_and!129725 () Bool)

(assert (= b_and!129719 (and (=> t!162074 result!125418) b_and!129725)))

(assert (=> d!532996 t!162076))

(declare-fun b_and!129727 () Bool)

(assert (= b_and!129721 (and (=> t!162076 result!125422) b_and!129727)))

(assert (=> d!532996 t!162078))

(declare-fun b_and!129729 () Bool)

(assert (= b_and!129723 (and (=> t!162078 result!125424) b_and!129729)))

(declare-fun b_lambda!55863 () Bool)

(assert (=> (not b_lambda!55863) (not d!532996)))

(assert (=> d!532996 t!162080))

(declare-fun b_and!129731 () Bool)

(assert (= b_and!129683 (and (=> t!162080 result!125426) b_and!129731)))

(assert (=> d!532996 t!162082))

(declare-fun b_and!129733 () Bool)

(assert (= b_and!129685 (and (=> t!162082 result!125430) b_and!129733)))

(assert (=> d!532996 t!162084))

(declare-fun b_and!129735 () Bool)

(assert (= b_and!129687 (and (=> t!162084 result!125432) b_and!129735)))

(declare-fun m!2155793 () Bool)

(assert (=> d!532996 m!2155793))

(assert (=> d!532996 m!2155513))

(assert (=> d!532996 m!2155515))

(assert (=> d!532996 m!2155567))

(assert (=> d!532996 m!2155511))

(assert (=> d!532996 m!2155511))

(assert (=> d!532996 m!2155513))

(assert (=> b!1743877 d!532996))

(declare-fun d!532998 () Bool)

(declare-fun c!284582 () Bool)

(assert (=> d!532998 (= c!284582 (isEmpty!12067 (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163))))))

(declare-fun e!1116231 () Bool)

(assert (=> d!532998 (= (prefixMatch!627 (rulesRegex!772 thiss!24550 rules!3447) (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163))) e!1116231)))

(declare-fun b!1744113 () Bool)

(declare-fun lostCause!547 (Regex!4742) Bool)

(assert (=> b!1744113 (= e!1116231 (not (lostCause!547 (rulesRegex!772 thiss!24550 rules!3447))))))

(declare-fun b!1744114 () Bool)

(assert (=> b!1744114 (= e!1116231 (prefixMatch!627 (derivativeStep!1205 (rulesRegex!772 thiss!24550 rules!3447) (head!4001 (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163)))) (tail!2604 (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163)))))))

(assert (= (and d!532998 c!284582) b!1744113))

(assert (= (and d!532998 (not c!284582)) b!1744114))

(assert (=> d!532998 m!2155593))

(declare-fun m!2155795 () Bool)

(assert (=> d!532998 m!2155795))

(assert (=> b!1744113 m!2155589))

(declare-fun m!2155797 () Bool)

(assert (=> b!1744113 m!2155797))

(assert (=> b!1744114 m!2155593))

(declare-fun m!2155799 () Bool)

(assert (=> b!1744114 m!2155799))

(assert (=> b!1744114 m!2155589))

(assert (=> b!1744114 m!2155799))

(declare-fun m!2155801 () Bool)

(assert (=> b!1744114 m!2155801))

(assert (=> b!1744114 m!2155593))

(declare-fun m!2155803 () Bool)

(assert (=> b!1744114 m!2155803))

(assert (=> b!1744114 m!2155801))

(assert (=> b!1744114 m!2155803))

(declare-fun m!2155805 () Bool)

(assert (=> b!1744114 m!2155805))

(assert (=> b!1743880 d!532998))

(declare-fun d!533000 () Bool)

(declare-fun lt!672425 () Unit!33234)

(declare-fun lemma!360 (List!19234 LexerInterface!3043 List!19234) Unit!33234)

(assert (=> d!533000 (= lt!672425 (lemma!360 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69680 () Int)

(declare-datatypes ((List!19239 0))(
  ( (Nil!19169) (Cons!19169 (h!24570 Regex!4742) (t!162130 List!19239)) )
))
(declare-fun generalisedUnion!368 (List!19239) Regex!4742)

(declare-fun map!3947 (List!19234 Int) List!19239)

(assert (=> d!533000 (= (rulesRegex!772 thiss!24550 rules!3447) (generalisedUnion!368 (map!3947 rules!3447 lambda!69680)))))

(declare-fun bs!403182 () Bool)

(assert (= bs!403182 d!533000))

(declare-fun m!2155807 () Bool)

(assert (=> bs!403182 m!2155807))

(declare-fun m!2155809 () Bool)

(assert (=> bs!403182 m!2155809))

(assert (=> bs!403182 m!2155809))

(declare-fun m!2155811 () Bool)

(assert (=> bs!403182 m!2155811))

(assert (=> b!1743880 d!533000))

(declare-fun d!533002 () Bool)

(declare-fun e!1116236 () Bool)

(assert (=> d!533002 e!1116236))

(declare-fun res!784181 () Bool)

(assert (=> d!533002 (=> (not res!784181) (not e!1116236))))

(declare-fun lt!672428 () List!19233)

(declare-fun content!2749 (List!19233) (Set C!9658))

(assert (=> d!533002 (= res!784181 (= (content!2749 lt!672428) (set.union (content!2749 lt!672348) (content!2749 (Cons!19163 (head!4001 suffix!1421) Nil!19163)))))))

(declare-fun e!1116237 () List!19233)

(assert (=> d!533002 (= lt!672428 e!1116237)))

(declare-fun c!284585 () Bool)

(assert (=> d!533002 (= c!284585 (is-Nil!19163 lt!672348))))

(assert (=> d!533002 (= (++!5239 lt!672348 (Cons!19163 (head!4001 suffix!1421) Nil!19163)) lt!672428)))

(declare-fun b!1744124 () Bool)

(assert (=> b!1744124 (= e!1116237 (Cons!19163 (h!24564 lt!672348) (++!5239 (t!162086 lt!672348) (Cons!19163 (head!4001 suffix!1421) Nil!19163))))))

(declare-fun b!1744123 () Bool)

(assert (=> b!1744123 (= e!1116237 (Cons!19163 (head!4001 suffix!1421) Nil!19163))))

(declare-fun b!1744125 () Bool)

(declare-fun res!784180 () Bool)

(assert (=> b!1744125 (=> (not res!784180) (not e!1116236))))

(assert (=> b!1744125 (= res!784180 (= (size!15225 lt!672428) (+ (size!15225 lt!672348) (size!15225 (Cons!19163 (head!4001 suffix!1421) Nil!19163)))))))

(declare-fun b!1744126 () Bool)

(assert (=> b!1744126 (= e!1116236 (or (not (= (Cons!19163 (head!4001 suffix!1421) Nil!19163) Nil!19163)) (= lt!672428 lt!672348)))))

(assert (= (and d!533002 c!284585) b!1744123))

(assert (= (and d!533002 (not c!284585)) b!1744124))

(assert (= (and d!533002 res!784181) b!1744125))

(assert (= (and b!1744125 res!784180) b!1744126))

(declare-fun m!2155813 () Bool)

(assert (=> d!533002 m!2155813))

(declare-fun m!2155815 () Bool)

(assert (=> d!533002 m!2155815))

(declare-fun m!2155817 () Bool)

(assert (=> d!533002 m!2155817))

(declare-fun m!2155819 () Bool)

(assert (=> b!1744124 m!2155819))

(declare-fun m!2155821 () Bool)

(assert (=> b!1744125 m!2155821))

(declare-fun m!2155823 () Bool)

(assert (=> b!1744125 m!2155823))

(declare-fun m!2155825 () Bool)

(assert (=> b!1744125 m!2155825))

(assert (=> b!1743880 d!533002))

(declare-fun d!533004 () Bool)

(assert (=> d!533004 (= (head!4001 suffix!1421) (h!24564 suffix!1421))))

(assert (=> b!1743880 d!533004))

(declare-fun d!533006 () Bool)

(declare-fun lt!672431 () Bool)

(declare-fun content!2750 (List!19234) (Set Rule!6628))

(assert (=> d!533006 (= lt!672431 (set.member rule!422 (content!2750 rules!3447)))))

(declare-fun e!1116243 () Bool)

(assert (=> d!533006 (= lt!672431 e!1116243)))

(declare-fun res!784187 () Bool)

(assert (=> d!533006 (=> (not res!784187) (not e!1116243))))

(assert (=> d!533006 (= res!784187 (is-Cons!19164 rules!3447))))

(assert (=> d!533006 (= (contains!3438 rules!3447 rule!422) lt!672431)))

(declare-fun b!1744131 () Bool)

(declare-fun e!1116242 () Bool)

(assert (=> b!1744131 (= e!1116243 e!1116242)))

(declare-fun res!784186 () Bool)

(assert (=> b!1744131 (=> res!784186 e!1116242)))

(assert (=> b!1744131 (= res!784186 (= (h!24565 rules!3447) rule!422))))

(declare-fun b!1744132 () Bool)

(assert (=> b!1744132 (= e!1116242 (contains!3438 (t!162087 rules!3447) rule!422))))

(assert (= (and d!533006 res!784187) b!1744131))

(assert (= (and b!1744131 (not res!784186)) b!1744132))

(declare-fun m!2155827 () Bool)

(assert (=> d!533006 m!2155827))

(declare-fun m!2155829 () Bool)

(assert (=> d!533006 m!2155829))

(declare-fun m!2155831 () Bool)

(assert (=> b!1744132 m!2155831))

(assert (=> b!1743891 d!533006))

(declare-fun d!533008 () Bool)

(assert (=> d!533008 (= (inv!24829 (tag!3756 (h!24565 rules!3447))) (= (mod (str.len (value!106972 (tag!3756 (h!24565 rules!3447)))) 2) 0))))

(assert (=> b!1743881 d!533008))

(declare-fun d!533010 () Bool)

(declare-fun res!784188 () Bool)

(declare-fun e!1116244 () Bool)

(assert (=> d!533010 (=> (not res!784188) (not e!1116244))))

(assert (=> d!533010 (= res!784188 (semiInverseModEq!1350 (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toValue!4925 (transformation!3414 (h!24565 rules!3447)))))))

(assert (=> d!533010 (= (inv!24832 (transformation!3414 (h!24565 rules!3447))) e!1116244)))

(declare-fun b!1744133 () Bool)

(assert (=> b!1744133 (= e!1116244 (equivClasses!1291 (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toValue!4925 (transformation!3414 (h!24565 rules!3447)))))))

(assert (= (and d!533010 res!784188) b!1744133))

(declare-fun m!2155833 () Bool)

(assert (=> d!533010 m!2155833))

(declare-fun m!2155835 () Bool)

(assert (=> b!1744133 m!2155835))

(assert (=> b!1743881 d!533010))

(declare-fun b!1744134 () Bool)

(declare-fun e!1116245 () Bool)

(declare-fun e!1116246 () Bool)

(assert (=> b!1744134 (= e!1116245 e!1116246)))

(declare-fun c!284587 () Bool)

(assert (=> b!1744134 (= c!284587 (is-IntegerValue!10513 (value!106973 token!523)))))

(declare-fun b!1744135 () Bool)

(declare-fun res!784189 () Bool)

(declare-fun e!1116247 () Bool)

(assert (=> b!1744135 (=> res!784189 e!1116247)))

(assert (=> b!1744135 (= res!784189 (not (is-IntegerValue!10514 (value!106973 token!523))))))

(assert (=> b!1744135 (= e!1116246 e!1116247)))

(declare-fun b!1744136 () Bool)

(assert (=> b!1744136 (= e!1116247 (inv!15 (value!106973 token!523)))))

(declare-fun d!533012 () Bool)

(declare-fun c!284586 () Bool)

(assert (=> d!533012 (= c!284586 (is-IntegerValue!10512 (value!106973 token!523)))))

(assert (=> d!533012 (= (inv!21 (value!106973 token!523)) e!1116245)))

(declare-fun b!1744137 () Bool)

(assert (=> b!1744137 (= e!1116245 (inv!16 (value!106973 token!523)))))

(declare-fun b!1744138 () Bool)

(assert (=> b!1744138 (= e!1116246 (inv!17 (value!106973 token!523)))))

(assert (= (and d!533012 c!284586) b!1744137))

(assert (= (and d!533012 (not c!284586)) b!1744134))

(assert (= (and b!1744134 c!284587) b!1744138))

(assert (= (and b!1744134 (not c!284587)) b!1744135))

(assert (= (and b!1744135 (not res!784189)) b!1744136))

(declare-fun m!2155837 () Bool)

(assert (=> b!1744136 m!2155837))

(declare-fun m!2155839 () Bool)

(assert (=> b!1744137 m!2155839))

(declare-fun m!2155841 () Bool)

(assert (=> b!1744138 m!2155841))

(assert (=> b!1743890 d!533012))

(declare-fun d!533014 () Bool)

(declare-fun e!1116248 () Bool)

(assert (=> d!533014 e!1116248))

(declare-fun res!784191 () Bool)

(assert (=> d!533014 (=> (not res!784191) (not e!1116248))))

(declare-fun lt!672432 () List!19233)

(assert (=> d!533014 (= res!784191 (= (content!2749 lt!672432) (set.union (content!2749 lt!672348) (content!2749 suffix!1421))))))

(declare-fun e!1116249 () List!19233)

(assert (=> d!533014 (= lt!672432 e!1116249)))

(declare-fun c!284588 () Bool)

(assert (=> d!533014 (= c!284588 (is-Nil!19163 lt!672348))))

(assert (=> d!533014 (= (++!5239 lt!672348 suffix!1421) lt!672432)))

(declare-fun b!1744140 () Bool)

(assert (=> b!1744140 (= e!1116249 (Cons!19163 (h!24564 lt!672348) (++!5239 (t!162086 lt!672348) suffix!1421)))))

(declare-fun b!1744139 () Bool)

(assert (=> b!1744139 (= e!1116249 suffix!1421)))

(declare-fun b!1744141 () Bool)

(declare-fun res!784190 () Bool)

(assert (=> b!1744141 (=> (not res!784190) (not e!1116248))))

(assert (=> b!1744141 (= res!784190 (= (size!15225 lt!672432) (+ (size!15225 lt!672348) (size!15225 suffix!1421))))))

(declare-fun b!1744142 () Bool)

(assert (=> b!1744142 (= e!1116248 (or (not (= suffix!1421 Nil!19163)) (= lt!672432 lt!672348)))))

(assert (= (and d!533014 c!284588) b!1744139))

(assert (= (and d!533014 (not c!284588)) b!1744140))

(assert (= (and d!533014 res!784191) b!1744141))

(assert (= (and b!1744141 res!784190) b!1744142))

(declare-fun m!2155843 () Bool)

(assert (=> d!533014 m!2155843))

(assert (=> d!533014 m!2155815))

(declare-fun m!2155845 () Bool)

(assert (=> d!533014 m!2155845))

(declare-fun m!2155847 () Bool)

(assert (=> b!1744140 m!2155847))

(declare-fun m!2155849 () Bool)

(assert (=> b!1744141 m!2155849))

(assert (=> b!1744141 m!2155823))

(declare-fun m!2155851 () Bool)

(assert (=> b!1744141 m!2155851))

(assert (=> b!1743872 d!533014))

(declare-fun b!1744156 () Bool)

(declare-fun e!1116258 () Option!3852)

(assert (=> b!1744156 (= e!1116258 None!3851)))

(declare-fun b!1744157 () Bool)

(declare-fun e!1116261 () Bool)

(declare-fun lt!672440 () Option!3852)

(assert (=> b!1744157 (= e!1116261 (= (tag!3756 (get!5778 lt!672440)) (tag!3756 (rule!5418 (_1!10808 lt!672346)))))))

(declare-fun b!1744158 () Bool)

(declare-fun e!1116259 () Option!3852)

(assert (=> b!1744158 (= e!1116259 (Some!3851 (h!24565 rules!3447)))))

(declare-fun b!1744159 () Bool)

(declare-fun e!1116260 () Bool)

(assert (=> b!1744159 (= e!1116260 e!1116261)))

(declare-fun res!784197 () Bool)

(assert (=> b!1744159 (=> (not res!784197) (not e!1116261))))

(assert (=> b!1744159 (= res!784197 (contains!3438 rules!3447 (get!5778 lt!672440)))))

(declare-fun b!1744160 () Bool)

(assert (=> b!1744160 (= e!1116259 e!1116258)))

(declare-fun c!284594 () Bool)

(assert (=> b!1744160 (= c!284594 (and (is-Cons!19164 rules!3447) (not (= (tag!3756 (h!24565 rules!3447)) (tag!3756 (rule!5418 (_1!10808 lt!672346)))))))))

(declare-fun d!533016 () Bool)

(assert (=> d!533016 e!1116260))

(declare-fun res!784196 () Bool)

(assert (=> d!533016 (=> res!784196 e!1116260)))

(declare-fun isEmpty!12071 (Option!3852) Bool)

(assert (=> d!533016 (= res!784196 (isEmpty!12071 lt!672440))))

(assert (=> d!533016 (= lt!672440 e!1116259)))

(declare-fun c!284593 () Bool)

(assert (=> d!533016 (= c!284593 (and (is-Cons!19164 rules!3447) (= (tag!3756 (h!24565 rules!3447)) (tag!3756 (rule!5418 (_1!10808 lt!672346))))))))

(assert (=> d!533016 (rulesInvariant!2712 thiss!24550 rules!3447)))

(assert (=> d!533016 (= (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 (_1!10808 lt!672346)))) lt!672440)))

(declare-fun b!1744155 () Bool)

(declare-fun lt!672439 () Unit!33234)

(declare-fun lt!672441 () Unit!33234)

(assert (=> b!1744155 (= lt!672439 lt!672441)))

(assert (=> b!1744155 (rulesInvariant!2712 thiss!24550 (t!162087 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!165 (LexerInterface!3043 Rule!6628 List!19234) Unit!33234)

(assert (=> b!1744155 (= lt!672441 (lemmaInvariantOnRulesThenOnTail!165 thiss!24550 (h!24565 rules!3447) (t!162087 rules!3447)))))

(assert (=> b!1744155 (= e!1116258 (getRuleFromTag!464 thiss!24550 (t!162087 rules!3447) (tag!3756 (rule!5418 (_1!10808 lt!672346)))))))

(assert (= (and d!533016 c!284593) b!1744158))

(assert (= (and d!533016 (not c!284593)) b!1744160))

(assert (= (and b!1744160 c!284594) b!1744155))

(assert (= (and b!1744160 (not c!284594)) b!1744156))

(assert (= (and d!533016 (not res!784196)) b!1744159))

(assert (= (and b!1744159 res!784197) b!1744157))

(declare-fun m!2155853 () Bool)

(assert (=> b!1744157 m!2155853))

(assert (=> b!1744159 m!2155853))

(assert (=> b!1744159 m!2155853))

(declare-fun m!2155855 () Bool)

(assert (=> b!1744159 m!2155855))

(declare-fun m!2155857 () Bool)

(assert (=> d!533016 m!2155857))

(assert (=> d!533016 m!2155509))

(declare-fun m!2155859 () Bool)

(assert (=> b!1744155 m!2155859))

(declare-fun m!2155861 () Bool)

(assert (=> b!1744155 m!2155861))

(declare-fun m!2155863 () Bool)

(assert (=> b!1744155 m!2155863))

(assert (=> b!1743872 d!533016))

(assert (=> b!1743872 d!532976))

(declare-fun d!533018 () Bool)

(assert (=> d!533018 (isPrefix!1655 lt!672348 (++!5239 lt!672348 suffix!1421))))

(declare-fun lt!672444 () Unit!33234)

(declare-fun choose!10743 (List!19233 List!19233) Unit!33234)

(assert (=> d!533018 (= lt!672444 (choose!10743 lt!672348 suffix!1421))))

(assert (=> d!533018 (= (lemmaConcatTwoListThenFirstIsPrefix!1165 lt!672348 suffix!1421) lt!672444)))

(declare-fun bs!403183 () Bool)

(assert (= bs!403183 d!533018))

(assert (=> bs!403183 m!2155555))

(assert (=> bs!403183 m!2155555))

(declare-fun m!2155865 () Bool)

(assert (=> bs!403183 m!2155865))

(declare-fun m!2155867 () Bool)

(assert (=> bs!403183 m!2155867))

(assert (=> b!1743872 d!533018))

(declare-fun d!533020 () Bool)

(declare-fun e!1116262 () Bool)

(assert (=> d!533020 e!1116262))

(declare-fun res!784199 () Bool)

(assert (=> d!533020 (=> (not res!784199) (not e!1116262))))

(declare-fun lt!672445 () List!19233)

(assert (=> d!533020 (= res!784199 (= (content!2749 lt!672445) (set.union (content!2749 lt!672349) (content!2749 (_2!10808 lt!672346)))))))

(declare-fun e!1116263 () List!19233)

(assert (=> d!533020 (= lt!672445 e!1116263)))

(declare-fun c!284595 () Bool)

(assert (=> d!533020 (= c!284595 (is-Nil!19163 lt!672349))))

(assert (=> d!533020 (= (++!5239 lt!672349 (_2!10808 lt!672346)) lt!672445)))

(declare-fun b!1744162 () Bool)

(assert (=> b!1744162 (= e!1116263 (Cons!19163 (h!24564 lt!672349) (++!5239 (t!162086 lt!672349) (_2!10808 lt!672346))))))

(declare-fun b!1744161 () Bool)

(assert (=> b!1744161 (= e!1116263 (_2!10808 lt!672346))))

(declare-fun b!1744163 () Bool)

(declare-fun res!784198 () Bool)

(assert (=> b!1744163 (=> (not res!784198) (not e!1116262))))

(assert (=> b!1744163 (= res!784198 (= (size!15225 lt!672445) (+ (size!15225 lt!672349) (size!15225 (_2!10808 lt!672346)))))))

(declare-fun b!1744164 () Bool)

(assert (=> b!1744164 (= e!1116262 (or (not (= (_2!10808 lt!672346) Nil!19163)) (= lt!672445 lt!672349)))))

(assert (= (and d!533020 c!284595) b!1744161))

(assert (= (and d!533020 (not c!284595)) b!1744162))

(assert (= (and d!533020 res!784199) b!1744163))

(assert (= (and b!1744163 res!784198) b!1744164))

(declare-fun m!2155869 () Bool)

(assert (=> d!533020 m!2155869))

(declare-fun m!2155871 () Bool)

(assert (=> d!533020 m!2155871))

(declare-fun m!2155873 () Bool)

(assert (=> d!533020 m!2155873))

(declare-fun m!2155875 () Bool)

(assert (=> b!1744162 m!2155875))

(declare-fun m!2155877 () Bool)

(assert (=> b!1744163 m!2155877))

(declare-fun m!2155879 () Bool)

(assert (=> b!1744163 m!2155879))

(declare-fun m!2155881 () Bool)

(assert (=> b!1744163 m!2155881))

(assert (=> b!1743872 d!533020))

(declare-fun d!533022 () Bool)

(declare-fun e!1116266 () Bool)

(assert (=> d!533022 e!1116266))

(declare-fun res!784204 () Bool)

(assert (=> d!533022 (=> (not res!784204) (not e!1116266))))

(assert (=> d!533022 (= res!784204 (isDefined!3195 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 (_1!10808 lt!672346))))))))

(declare-fun lt!672448 () Unit!33234)

(declare-fun choose!10744 (LexerInterface!3043 List!19234 List!19233 Token!6394) Unit!33234)

(assert (=> d!533022 (= lt!672448 (choose!10744 thiss!24550 rules!3447 lt!672354 (_1!10808 lt!672346)))))

(assert (=> d!533022 (rulesInvariant!2712 thiss!24550 rules!3447)))

(assert (=> d!533022 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!464 thiss!24550 rules!3447 lt!672354 (_1!10808 lt!672346)) lt!672448)))

(declare-fun b!1744169 () Bool)

(declare-fun res!784205 () Bool)

(assert (=> b!1744169 (=> (not res!784205) (not e!1116266))))

(assert (=> b!1744169 (= res!784205 (matchR!2216 (regex!3414 (get!5778 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 (_1!10808 lt!672346)))))) (list!7755 (charsOf!2063 (_1!10808 lt!672346)))))))

(declare-fun b!1744170 () Bool)

(assert (=> b!1744170 (= e!1116266 (= (rule!5418 (_1!10808 lt!672346)) (get!5778 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 (_1!10808 lt!672346)))))))))

(assert (= (and d!533022 res!784204) b!1744169))

(assert (= (and b!1744169 res!784205) b!1744170))

(assert (=> d!533022 m!2155557))

(assert (=> d!533022 m!2155557))

(declare-fun m!2155883 () Bool)

(assert (=> d!533022 m!2155883))

(declare-fun m!2155885 () Bool)

(assert (=> d!533022 m!2155885))

(assert (=> d!533022 m!2155509))

(assert (=> b!1744169 m!2155557))

(assert (=> b!1744169 m!2155543))

(assert (=> b!1744169 m!2155557))

(declare-fun m!2155887 () Bool)

(assert (=> b!1744169 m!2155887))

(assert (=> b!1744169 m!2155583))

(declare-fun m!2155889 () Bool)

(assert (=> b!1744169 m!2155889))

(assert (=> b!1744169 m!2155543))

(assert (=> b!1744169 m!2155583))

(assert (=> b!1744170 m!2155557))

(assert (=> b!1744170 m!2155557))

(assert (=> b!1744170 m!2155887))

(assert (=> b!1743872 d!533022))

(declare-fun d!533024 () Bool)

(assert (=> d!533024 (= (list!7755 lt!672353) (list!7757 (c!284554 lt!672353)))))

(declare-fun bs!403184 () Bool)

(assert (= bs!403184 d!533024))

(declare-fun m!2155891 () Bool)

(assert (=> bs!403184 m!2155891))

(assert (=> b!1743872 d!533024))

(declare-fun b!1744179 () Bool)

(declare-fun e!1116275 () Bool)

(declare-fun e!1116274 () Bool)

(assert (=> b!1744179 (= e!1116275 e!1116274)))

(declare-fun res!784214 () Bool)

(assert (=> b!1744179 (=> (not res!784214) (not e!1116274))))

(assert (=> b!1744179 (= res!784214 (not (is-Nil!19163 (++!5239 lt!672349 (_2!10808 lt!672346)))))))

(declare-fun d!533026 () Bool)

(declare-fun e!1116273 () Bool)

(assert (=> d!533026 e!1116273))

(declare-fun res!784216 () Bool)

(assert (=> d!533026 (=> res!784216 e!1116273)))

(declare-fun lt!672451 () Bool)

(assert (=> d!533026 (= res!784216 (not lt!672451))))

(assert (=> d!533026 (= lt!672451 e!1116275)))

(declare-fun res!784215 () Bool)

(assert (=> d!533026 (=> res!784215 e!1116275)))

(assert (=> d!533026 (= res!784215 (is-Nil!19163 lt!672349))))

(assert (=> d!533026 (= (isPrefix!1655 lt!672349 (++!5239 lt!672349 (_2!10808 lt!672346))) lt!672451)))

(declare-fun b!1744180 () Bool)

(declare-fun res!784217 () Bool)

(assert (=> b!1744180 (=> (not res!784217) (not e!1116274))))

(assert (=> b!1744180 (= res!784217 (= (head!4001 lt!672349) (head!4001 (++!5239 lt!672349 (_2!10808 lt!672346)))))))

(declare-fun b!1744181 () Bool)

(assert (=> b!1744181 (= e!1116274 (isPrefix!1655 (tail!2604 lt!672349) (tail!2604 (++!5239 lt!672349 (_2!10808 lt!672346)))))))

(declare-fun b!1744182 () Bool)

(assert (=> b!1744182 (= e!1116273 (>= (size!15225 (++!5239 lt!672349 (_2!10808 lt!672346))) (size!15225 lt!672349)))))

(assert (= (and d!533026 (not res!784215)) b!1744179))

(assert (= (and b!1744179 res!784214) b!1744180))

(assert (= (and b!1744180 res!784217) b!1744181))

(assert (= (and d!533026 (not res!784216)) b!1744182))

(assert (=> b!1744180 m!2155765))

(assert (=> b!1744180 m!2155549))

(declare-fun m!2155893 () Bool)

(assert (=> b!1744180 m!2155893))

(assert (=> b!1744181 m!2155769))

(assert (=> b!1744181 m!2155549))

(declare-fun m!2155895 () Bool)

(assert (=> b!1744181 m!2155895))

(assert (=> b!1744181 m!2155769))

(assert (=> b!1744181 m!2155895))

(declare-fun m!2155897 () Bool)

(assert (=> b!1744181 m!2155897))

(assert (=> b!1744182 m!2155549))

(declare-fun m!2155899 () Bool)

(assert (=> b!1744182 m!2155899))

(assert (=> b!1744182 m!2155879))

(assert (=> b!1743872 d!533026))

(declare-fun d!533030 () Bool)

(assert (=> d!533030 (isPrefix!1655 lt!672349 (++!5239 lt!672349 (_2!10808 lt!672346)))))

(declare-fun lt!672452 () Unit!33234)

(assert (=> d!533030 (= lt!672452 (choose!10743 lt!672349 (_2!10808 lt!672346)))))

(assert (=> d!533030 (= (lemmaConcatTwoListThenFirstIsPrefix!1165 lt!672349 (_2!10808 lt!672346)) lt!672452)))

(declare-fun bs!403185 () Bool)

(assert (= bs!403185 d!533030))

(assert (=> bs!403185 m!2155549))

(assert (=> bs!403185 m!2155549))

(assert (=> bs!403185 m!2155559))

(declare-fun m!2155901 () Bool)

(assert (=> bs!403185 m!2155901))

(assert (=> b!1743872 d!533030))

(declare-fun b!1744219 () Bool)

(declare-fun res!784240 () Bool)

(declare-fun e!1116292 () Bool)

(assert (=> b!1744219 (=> (not res!784240) (not e!1116292))))

(declare-fun lt!672471 () Option!3853)

(assert (=> b!1744219 (= res!784240 (matchR!2216 (regex!3414 (rule!5418 (_1!10808 (get!5777 lt!672471)))) (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672471))))))))

(declare-fun b!1744220 () Bool)

(declare-fun res!784238 () Bool)

(assert (=> b!1744220 (=> (not res!784238) (not e!1116292))))

(assert (=> b!1744220 (= res!784238 (= (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672471)))) (originalCharacters!4228 (_1!10808 (get!5777 lt!672471)))))))

(declare-fun b!1744221 () Bool)

(declare-fun e!1116293 () Bool)

(assert (=> b!1744221 (= e!1116293 e!1116292)))

(declare-fun res!784242 () Bool)

(assert (=> b!1744221 (=> (not res!784242) (not e!1116292))))

(assert (=> b!1744221 (= res!784242 (isDefined!3196 lt!672471))))

(declare-fun b!1744222 () Bool)

(assert (=> b!1744222 (= e!1116292 (contains!3438 rules!3447 (rule!5418 (_1!10808 (get!5777 lt!672471)))))))

(declare-fun b!1744223 () Bool)

(declare-fun e!1116291 () Option!3853)

(declare-fun lt!672470 () Option!3853)

(declare-fun lt!672469 () Option!3853)

(assert (=> b!1744223 (= e!1116291 (ite (and (is-None!3852 lt!672470) (is-None!3852 lt!672469)) None!3852 (ite (is-None!3852 lt!672469) lt!672470 (ite (is-None!3852 lt!672470) lt!672469 (ite (>= (size!15223 (_1!10808 (v!25287 lt!672470))) (size!15223 (_1!10808 (v!25287 lt!672469)))) lt!672470 lt!672469)))))))

(declare-fun call!110205 () Option!3853)

(assert (=> b!1744223 (= lt!672470 call!110205)))

(assert (=> b!1744223 (= lt!672469 (maxPrefix!1597 thiss!24550 (t!162087 rules!3447) lt!672354))))

(declare-fun b!1744224 () Bool)

(declare-fun res!784244 () Bool)

(assert (=> b!1744224 (=> (not res!784244) (not e!1116292))))

(declare-fun apply!5215 (TokenValueInjection!6668 BalanceConc!12692) TokenValue!3504)

(declare-fun seqFromList!2384 (List!19233) BalanceConc!12692)

(assert (=> b!1744224 (= res!784244 (= (value!106973 (_1!10808 (get!5777 lt!672471))) (apply!5215 (transformation!3414 (rule!5418 (_1!10808 (get!5777 lt!672471)))) (seqFromList!2384 (originalCharacters!4228 (_1!10808 (get!5777 lt!672471)))))))))

(declare-fun b!1744225 () Bool)

(declare-fun res!784241 () Bool)

(assert (=> b!1744225 (=> (not res!784241) (not e!1116292))))

(assert (=> b!1744225 (= res!784241 (= (++!5239 (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672471)))) (_2!10808 (get!5777 lt!672471))) lt!672354))))

(declare-fun bm!110200 () Bool)

(declare-fun maxPrefixOneRule!969 (LexerInterface!3043 Rule!6628 List!19233) Option!3853)

(assert (=> bm!110200 (= call!110205 (maxPrefixOneRule!969 thiss!24550 (h!24565 rules!3447) lt!672354))))

(declare-fun b!1744227 () Bool)

(declare-fun res!784243 () Bool)

(assert (=> b!1744227 (=> (not res!784243) (not e!1116292))))

(assert (=> b!1744227 (= res!784243 (< (size!15225 (_2!10808 (get!5777 lt!672471))) (size!15225 lt!672354)))))

(declare-fun b!1744226 () Bool)

(assert (=> b!1744226 (= e!1116291 call!110205)))

(declare-fun d!533032 () Bool)

(assert (=> d!533032 e!1116293))

(declare-fun res!784239 () Bool)

(assert (=> d!533032 (=> res!784239 e!1116293)))

(declare-fun isEmpty!12072 (Option!3853) Bool)

(assert (=> d!533032 (= res!784239 (isEmpty!12072 lt!672471))))

(assert (=> d!533032 (= lt!672471 e!1116291)))

(declare-fun c!284604 () Bool)

(assert (=> d!533032 (= c!284604 (and (is-Cons!19164 rules!3447) (is-Nil!19164 (t!162087 rules!3447))))))

(declare-fun lt!672472 () Unit!33234)

(declare-fun lt!672473 () Unit!33234)

(assert (=> d!533032 (= lt!672472 lt!672473)))

(assert (=> d!533032 (isPrefix!1655 lt!672354 lt!672354)))

(declare-fun lemmaIsPrefixRefl!1102 (List!19233 List!19233) Unit!33234)

(assert (=> d!533032 (= lt!672473 (lemmaIsPrefixRefl!1102 lt!672354 lt!672354))))

(declare-fun rulesValidInductive!1139 (LexerInterface!3043 List!19234) Bool)

(assert (=> d!533032 (rulesValidInductive!1139 thiss!24550 rules!3447)))

(assert (=> d!533032 (= (maxPrefix!1597 thiss!24550 rules!3447 lt!672354) lt!672471)))

(assert (= (and d!533032 c!284604) b!1744226))

(assert (= (and d!533032 (not c!284604)) b!1744223))

(assert (= (or b!1744226 b!1744223) bm!110200))

(assert (= (and d!533032 (not res!784239)) b!1744221))

(assert (= (and b!1744221 res!784242) b!1744220))

(assert (= (and b!1744220 res!784238) b!1744227))

(assert (= (and b!1744227 res!784243) b!1744225))

(assert (= (and b!1744225 res!784241) b!1744224))

(assert (= (and b!1744224 res!784244) b!1744219))

(assert (= (and b!1744219 res!784240) b!1744222))

(declare-fun m!2155935 () Bool)

(assert (=> b!1744224 m!2155935))

(declare-fun m!2155937 () Bool)

(assert (=> b!1744224 m!2155937))

(assert (=> b!1744224 m!2155937))

(declare-fun m!2155939 () Bool)

(assert (=> b!1744224 m!2155939))

(declare-fun m!2155941 () Bool)

(assert (=> b!1744221 m!2155941))

(declare-fun m!2155943 () Bool)

(assert (=> d!533032 m!2155943))

(declare-fun m!2155945 () Bool)

(assert (=> d!533032 m!2155945))

(declare-fun m!2155947 () Bool)

(assert (=> d!533032 m!2155947))

(declare-fun m!2155949 () Bool)

(assert (=> d!533032 m!2155949))

(declare-fun m!2155951 () Bool)

(assert (=> b!1744223 m!2155951))

(assert (=> b!1744225 m!2155935))

(declare-fun m!2155953 () Bool)

(assert (=> b!1744225 m!2155953))

(assert (=> b!1744225 m!2155953))

(declare-fun m!2155955 () Bool)

(assert (=> b!1744225 m!2155955))

(assert (=> b!1744225 m!2155955))

(declare-fun m!2155957 () Bool)

(assert (=> b!1744225 m!2155957))

(assert (=> b!1744227 m!2155935))

(declare-fun m!2155959 () Bool)

(assert (=> b!1744227 m!2155959))

(declare-fun m!2155961 () Bool)

(assert (=> b!1744227 m!2155961))

(declare-fun m!2155963 () Bool)

(assert (=> bm!110200 m!2155963))

(assert (=> b!1744222 m!2155935))

(declare-fun m!2155965 () Bool)

(assert (=> b!1744222 m!2155965))

(assert (=> b!1744219 m!2155935))

(assert (=> b!1744219 m!2155953))

(assert (=> b!1744219 m!2155953))

(assert (=> b!1744219 m!2155955))

(assert (=> b!1744219 m!2155955))

(declare-fun m!2155967 () Bool)

(assert (=> b!1744219 m!2155967))

(assert (=> b!1744220 m!2155935))

(assert (=> b!1744220 m!2155953))

(assert (=> b!1744220 m!2155953))

(assert (=> b!1744220 m!2155955))

(assert (=> b!1743872 d!533032))

(declare-fun b!1744228 () Bool)

(declare-fun e!1116296 () Bool)

(declare-fun e!1116295 () Bool)

(assert (=> b!1744228 (= e!1116296 e!1116295)))

(declare-fun res!784245 () Bool)

(assert (=> b!1744228 (=> (not res!784245) (not e!1116295))))

(assert (=> b!1744228 (= res!784245 (not (is-Nil!19163 lt!672354)))))

(declare-fun d!533042 () Bool)

(declare-fun e!1116294 () Bool)

(assert (=> d!533042 e!1116294))

(declare-fun res!784247 () Bool)

(assert (=> d!533042 (=> res!784247 e!1116294)))

(declare-fun lt!672474 () Bool)

(assert (=> d!533042 (= res!784247 (not lt!672474))))

(assert (=> d!533042 (= lt!672474 e!1116296)))

(declare-fun res!784246 () Bool)

(assert (=> d!533042 (=> res!784246 e!1116296)))

(assert (=> d!533042 (= res!784246 (is-Nil!19163 lt!672349))))

(assert (=> d!533042 (= (isPrefix!1655 lt!672349 lt!672354) lt!672474)))

(declare-fun b!1744229 () Bool)

(declare-fun res!784248 () Bool)

(assert (=> b!1744229 (=> (not res!784248) (not e!1116295))))

(assert (=> b!1744229 (= res!784248 (= (head!4001 lt!672349) (head!4001 lt!672354)))))

(declare-fun b!1744230 () Bool)

(assert (=> b!1744230 (= e!1116295 (isPrefix!1655 (tail!2604 lt!672349) (tail!2604 lt!672354)))))

(declare-fun b!1744231 () Bool)

(assert (=> b!1744231 (= e!1116294 (>= (size!15225 lt!672354) (size!15225 lt!672349)))))

(assert (= (and d!533042 (not res!784246)) b!1744228))

(assert (= (and b!1744228 res!784245) b!1744229))

(assert (= (and b!1744229 res!784248) b!1744230))

(assert (= (and d!533042 (not res!784247)) b!1744231))

(assert (=> b!1744229 m!2155765))

(declare-fun m!2155969 () Bool)

(assert (=> b!1744229 m!2155969))

(assert (=> b!1744230 m!2155769))

(declare-fun m!2155971 () Bool)

(assert (=> b!1744230 m!2155971))

(assert (=> b!1744230 m!2155769))

(assert (=> b!1744230 m!2155971))

(declare-fun m!2155973 () Bool)

(assert (=> b!1744230 m!2155973))

(assert (=> b!1744231 m!2155961))

(assert (=> b!1744231 m!2155879))

(assert (=> b!1743872 d!533042))

(declare-fun d!533044 () Bool)

(assert (=> d!533044 (isDefined!3196 (maxPrefix!1597 thiss!24550 rules!3447 (++!5239 lt!672348 suffix!1421)))))

(declare-fun lt!672539 () Unit!33234)

(declare-fun e!1116336 () Unit!33234)

(assert (=> d!533044 (= lt!672539 e!1116336)))

(declare-fun c!284618 () Bool)

(assert (=> d!533044 (= c!284618 (isEmpty!12072 (maxPrefix!1597 thiss!24550 rules!3447 (++!5239 lt!672348 suffix!1421))))))

(declare-fun lt!672542 () Unit!33234)

(declare-fun lt!672536 () Unit!33234)

(assert (=> d!533044 (= lt!672542 lt!672536)))

(declare-fun e!1116337 () Bool)

(assert (=> d!533044 e!1116337))

(declare-fun res!784283 () Bool)

(assert (=> d!533044 (=> (not res!784283) (not e!1116337))))

(declare-fun lt!672547 () Token!6394)

(assert (=> d!533044 (= res!784283 (isDefined!3195 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 lt!672547)))))))

(assert (=> d!533044 (= lt!672536 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!464 thiss!24550 rules!3447 lt!672348 lt!672547))))

(declare-fun lt!672541 () Unit!33234)

(declare-fun lt!672531 () Unit!33234)

(assert (=> d!533044 (= lt!672541 lt!672531)))

(declare-fun lt!672538 () List!19233)

(assert (=> d!533044 (isPrefix!1655 lt!672538 (++!5239 lt!672348 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!286 (List!19233 List!19233 List!19233) Unit!33234)

(assert (=> d!533044 (= lt!672531 (lemmaPrefixStaysPrefixWhenAddingToSuffix!286 lt!672538 lt!672348 suffix!1421))))

(assert (=> d!533044 (= lt!672538 (list!7755 (charsOf!2063 lt!672547)))))

(declare-fun lt!672545 () Unit!33234)

(declare-fun lt!672540 () Unit!33234)

(assert (=> d!533044 (= lt!672545 lt!672540)))

(declare-fun lt!672543 () List!19233)

(declare-fun lt!672532 () List!19233)

(assert (=> d!533044 (isPrefix!1655 lt!672543 (++!5239 lt!672543 lt!672532))))

(assert (=> d!533044 (= lt!672540 (lemmaConcatTwoListThenFirstIsPrefix!1165 lt!672543 lt!672532))))

(assert (=> d!533044 (= lt!672532 (_2!10808 (get!5777 (maxPrefix!1597 thiss!24550 rules!3447 lt!672348))))))

(assert (=> d!533044 (= lt!672543 (list!7755 (charsOf!2063 lt!672547)))))

(declare-datatypes ((List!19240 0))(
  ( (Nil!19170) (Cons!19170 (h!24571 Token!6394) (t!162137 List!19240)) )
))
(declare-fun head!4003 (List!19240) Token!6394)

(declare-datatypes ((IArray!12757 0))(
  ( (IArray!12758 (innerList!6436 List!19240)) )
))
(declare-datatypes ((Conc!6376 0))(
  ( (Node!6376 (left!15325 Conc!6376) (right!15655 Conc!6376) (csize!12982 Int) (cheight!6587 Int)) (Leaf!9304 (xs!9252 IArray!12757) (csize!12983 Int)) (Empty!6376) )
))
(declare-datatypes ((BalanceConc!12696 0))(
  ( (BalanceConc!12697 (c!284651 Conc!6376)) )
))
(declare-fun list!7758 (BalanceConc!12696) List!19240)

(declare-datatypes ((tuple2!18816 0))(
  ( (tuple2!18817 (_1!10810 BalanceConc!12696) (_2!10810 BalanceConc!12692)) )
))
(declare-fun lex!1425 (LexerInterface!3043 List!19234 BalanceConc!12692) tuple2!18816)

(assert (=> d!533044 (= lt!672547 (head!4003 (list!7758 (_1!10810 (lex!1425 thiss!24550 rules!3447 (seqFromList!2384 lt!672348))))))))

(assert (=> d!533044 (not (isEmpty!12068 rules!3447))))

(assert (=> d!533044 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!567 thiss!24550 rules!3447 lt!672348 suffix!1421) lt!672539)))

(declare-fun b!1744294 () Bool)

(declare-fun res!784282 () Bool)

(assert (=> b!1744294 (=> (not res!784282) (not e!1116337))))

(assert (=> b!1744294 (= res!784282 (matchR!2216 (regex!3414 (get!5778 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 lt!672547))))) (list!7755 (charsOf!2063 lt!672547))))))

(declare-fun b!1744296 () Bool)

(declare-fun Unit!33240 () Unit!33234)

(assert (=> b!1744296 (= e!1116336 Unit!33240)))

(declare-fun lt!672533 () List!19233)

(assert (=> b!1744296 (= lt!672533 (++!5239 lt!672348 suffix!1421))))

(declare-fun lt!672544 () Unit!33234)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!294 (LexerInterface!3043 Rule!6628 List!19234 List!19233) Unit!33234)

(assert (=> b!1744296 (= lt!672544 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!294 thiss!24550 (rule!5418 lt!672547) rules!3447 lt!672533))))

(assert (=> b!1744296 (isEmpty!12072 (maxPrefixOneRule!969 thiss!24550 (rule!5418 lt!672547) lt!672533))))

(declare-fun lt!672537 () Unit!33234)

(assert (=> b!1744296 (= lt!672537 lt!672544)))

(declare-fun lt!672535 () List!19233)

(assert (=> b!1744296 (= lt!672535 (list!7755 (charsOf!2063 lt!672547)))))

(declare-fun lt!672546 () Unit!33234)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!290 (LexerInterface!3043 Rule!6628 List!19233 List!19233) Unit!33234)

(assert (=> b!1744296 (= lt!672546 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!290 thiss!24550 (rule!5418 lt!672547) lt!672535 (++!5239 lt!672348 suffix!1421)))))

(assert (=> b!1744296 (not (matchR!2216 (regex!3414 (rule!5418 lt!672547)) lt!672535))))

(declare-fun lt!672534 () Unit!33234)

(assert (=> b!1744296 (= lt!672534 lt!672546)))

(assert (=> b!1744296 false))

(declare-fun b!1744295 () Bool)

(assert (=> b!1744295 (= e!1116337 (= (rule!5418 lt!672547) (get!5778 (getRuleFromTag!464 thiss!24550 rules!3447 (tag!3756 (rule!5418 lt!672547))))))))

(declare-fun b!1744297 () Bool)

(declare-fun Unit!33241 () Unit!33234)

(assert (=> b!1744297 (= e!1116336 Unit!33241)))

(assert (= (and d!533044 res!784283) b!1744294))

(assert (= (and b!1744294 res!784282) b!1744295))

(assert (= (and d!533044 c!284618) b!1744296))

(assert (= (and d!533044 (not c!284618)) b!1744297))

(assert (=> d!533044 m!2155555))

(declare-fun m!2156035 () Bool)

(assert (=> d!533044 m!2156035))

(declare-fun m!2156037 () Bool)

(assert (=> d!533044 m!2156037))

(assert (=> d!533044 m!2155507))

(assert (=> d!533044 m!2156037))

(declare-fun m!2156039 () Bool)

(assert (=> d!533044 m!2156039))

(declare-fun m!2156041 () Bool)

(assert (=> d!533044 m!2156041))

(declare-fun m!2156043 () Bool)

(assert (=> d!533044 m!2156043))

(assert (=> d!533044 m!2155555))

(declare-fun m!2156045 () Bool)

(assert (=> d!533044 m!2156045))

(declare-fun m!2156047 () Bool)

(assert (=> d!533044 m!2156047))

(declare-fun m!2156049 () Bool)

(assert (=> d!533044 m!2156049))

(declare-fun m!2156051 () Bool)

(assert (=> d!533044 m!2156051))

(assert (=> d!533044 m!2156047))

(assert (=> d!533044 m!2155555))

(assert (=> d!533044 m!2156045))

(declare-fun m!2156053 () Bool)

(assert (=> d!533044 m!2156053))

(assert (=> d!533044 m!2156041))

(declare-fun m!2156055 () Bool)

(assert (=> d!533044 m!2156055))

(declare-fun m!2156057 () Bool)

(assert (=> d!533044 m!2156057))

(declare-fun m!2156059 () Bool)

(assert (=> d!533044 m!2156059))

(assert (=> d!533044 m!2156045))

(declare-fun m!2156061 () Bool)

(assert (=> d!533044 m!2156061))

(declare-fun m!2156063 () Bool)

(assert (=> d!533044 m!2156063))

(declare-fun m!2156065 () Bool)

(assert (=> d!533044 m!2156065))

(assert (=> d!533044 m!2156057))

(assert (=> d!533044 m!2155529))

(declare-fun m!2156067 () Bool)

(assert (=> d!533044 m!2156067))

(assert (=> d!533044 m!2156063))

(assert (=> d!533044 m!2155529))

(declare-fun m!2156069 () Bool)

(assert (=> d!533044 m!2156069))

(assert (=> b!1744294 m!2156063))

(assert (=> b!1744294 m!2156065))

(assert (=> b!1744294 m!2156065))

(declare-fun m!2156071 () Bool)

(assert (=> b!1744294 m!2156071))

(assert (=> b!1744294 m!2156063))

(assert (=> b!1744294 m!2156047))

(assert (=> b!1744294 m!2156047))

(declare-fun m!2156073 () Bool)

(assert (=> b!1744294 m!2156073))

(declare-fun m!2156075 () Bool)

(assert (=> b!1744296 m!2156075))

(declare-fun m!2156077 () Bool)

(assert (=> b!1744296 m!2156077))

(assert (=> b!1744296 m!2156075))

(declare-fun m!2156079 () Bool)

(assert (=> b!1744296 m!2156079))

(assert (=> b!1744296 m!2156063))

(assert (=> b!1744296 m!2156065))

(declare-fun m!2156081 () Bool)

(assert (=> b!1744296 m!2156081))

(assert (=> b!1744296 m!2156063))

(assert (=> b!1744296 m!2155555))

(declare-fun m!2156083 () Bool)

(assert (=> b!1744296 m!2156083))

(assert (=> b!1744296 m!2155555))

(assert (=> b!1744295 m!2156047))

(assert (=> b!1744295 m!2156047))

(assert (=> b!1744295 m!2156073))

(assert (=> b!1743872 d!533044))

(declare-fun d!533068 () Bool)

(assert (=> d!533068 (= (isDefined!3195 lt!672357) (not (isEmpty!12071 lt!672357)))))

(declare-fun bs!403192 () Bool)

(assert (= bs!403192 d!533068))

(declare-fun m!2156085 () Bool)

(assert (=> bs!403192 m!2156085))

(assert (=> b!1743872 d!533068))

(declare-fun b!1744298 () Bool)

(declare-fun e!1116340 () Bool)

(declare-fun e!1116339 () Bool)

(assert (=> b!1744298 (= e!1116340 e!1116339)))

(declare-fun res!784284 () Bool)

(assert (=> b!1744298 (=> (not res!784284) (not e!1116339))))

(assert (=> b!1744298 (= res!784284 (not (is-Nil!19163 lt!672354)))))

(declare-fun d!533070 () Bool)

(declare-fun e!1116338 () Bool)

(assert (=> d!533070 e!1116338))

(declare-fun res!784286 () Bool)

(assert (=> d!533070 (=> res!784286 e!1116338)))

(declare-fun lt!672548 () Bool)

(assert (=> d!533070 (= res!784286 (not lt!672548))))

(assert (=> d!533070 (= lt!672548 e!1116340)))

(declare-fun res!784285 () Bool)

(assert (=> d!533070 (=> res!784285 e!1116340)))

(assert (=> d!533070 (= res!784285 (is-Nil!19163 lt!672348))))

(assert (=> d!533070 (= (isPrefix!1655 lt!672348 lt!672354) lt!672548)))

(declare-fun b!1744299 () Bool)

(declare-fun res!784287 () Bool)

(assert (=> b!1744299 (=> (not res!784287) (not e!1116339))))

(assert (=> b!1744299 (= res!784287 (= (head!4001 lt!672348) (head!4001 lt!672354)))))

(declare-fun b!1744300 () Bool)

(assert (=> b!1744300 (= e!1116339 (isPrefix!1655 (tail!2604 lt!672348) (tail!2604 lt!672354)))))

(declare-fun b!1744301 () Bool)

(assert (=> b!1744301 (= e!1116338 (>= (size!15225 lt!672354) (size!15225 lt!672348)))))

(assert (= (and d!533070 (not res!784285)) b!1744298))

(assert (= (and b!1744298 res!784284) b!1744299))

(assert (= (and b!1744299 res!784287) b!1744300))

(assert (= (and d!533070 (not res!784286)) b!1744301))

(declare-fun m!2156087 () Bool)

(assert (=> b!1744299 m!2156087))

(assert (=> b!1744299 m!2155969))

(declare-fun m!2156089 () Bool)

(assert (=> b!1744300 m!2156089))

(assert (=> b!1744300 m!2155971))

(assert (=> b!1744300 m!2156089))

(assert (=> b!1744300 m!2155971))

(declare-fun m!2156091 () Bool)

(assert (=> b!1744300 m!2156091))

(assert (=> b!1744301 m!2155961))

(assert (=> b!1744301 m!2155823))

(assert (=> b!1743872 d!533070))

(declare-fun d!533072 () Bool)

(assert (=> d!533072 (= (get!5777 lt!672359) (v!25287 lt!672359))))

(assert (=> b!1743872 d!533072))

(declare-fun d!533074 () Bool)

(assert (=> d!533074 (= (inv!24829 (tag!3756 (rule!5418 token!523))) (= (mod (str.len (value!106972 (tag!3756 (rule!5418 token!523)))) 2) 0))))

(assert (=> b!1743873 d!533074))

(declare-fun d!533076 () Bool)

(declare-fun res!784288 () Bool)

(declare-fun e!1116341 () Bool)

(assert (=> d!533076 (=> (not res!784288) (not e!1116341))))

(assert (=> d!533076 (= res!784288 (semiInverseModEq!1350 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toValue!4925 (transformation!3414 (rule!5418 token!523)))))))

(assert (=> d!533076 (= (inv!24832 (transformation!3414 (rule!5418 token!523))) e!1116341)))

(declare-fun b!1744302 () Bool)

(assert (=> b!1744302 (= e!1116341 (equivClasses!1291 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toValue!4925 (transformation!3414 (rule!5418 token!523)))))))

(assert (= (and d!533076 res!784288) b!1744302))

(declare-fun m!2156093 () Bool)

(assert (=> d!533076 m!2156093))

(declare-fun m!2156095 () Bool)

(assert (=> b!1744302 m!2156095))

(assert (=> b!1743873 d!533076))

(declare-fun d!533078 () Bool)

(assert (=> d!533078 (= (isEmpty!12067 suffix!1421) (is-Nil!19163 suffix!1421))))

(assert (=> b!1743892 d!533078))

(declare-fun b!1744304 () Bool)

(declare-fun e!1116344 () Bool)

(assert (=> b!1744304 (= e!1116344 (= (head!4001 lt!672348) (c!284553 (regex!3414 rule!422))))))

(declare-fun b!1744305 () Bool)

(declare-fun e!1116345 () Bool)

(declare-fun lt!672549 () Bool)

(assert (=> b!1744305 (= e!1116345 (not lt!672549))))

(declare-fun b!1744306 () Bool)

(declare-fun res!784290 () Bool)

(declare-fun e!1116342 () Bool)

(assert (=> b!1744306 (=> res!784290 e!1116342)))

(assert (=> b!1744306 (= res!784290 (not (isEmpty!12067 (tail!2604 lt!672348))))))

(declare-fun b!1744307 () Bool)

(declare-fun res!784293 () Bool)

(declare-fun e!1116346 () Bool)

(assert (=> b!1744307 (=> res!784293 e!1116346)))

(assert (=> b!1744307 (= res!784293 (not (is-ElementMatch!4742 (regex!3414 rule!422))))))

(assert (=> b!1744307 (= e!1116345 e!1116346)))

(declare-fun b!1744308 () Bool)

(declare-fun res!784291 () Bool)

(assert (=> b!1744308 (=> res!784291 e!1116346)))

(assert (=> b!1744308 (= res!784291 e!1116344)))

(declare-fun res!784296 () Bool)

(assert (=> b!1744308 (=> (not res!784296) (not e!1116344))))

(assert (=> b!1744308 (= res!784296 lt!672549)))

(declare-fun b!1744309 () Bool)

(declare-fun e!1116348 () Bool)

(assert (=> b!1744309 (= e!1116348 (matchR!2216 (derivativeStep!1205 (regex!3414 rule!422) (head!4001 lt!672348)) (tail!2604 lt!672348)))))

(declare-fun b!1744310 () Bool)

(declare-fun e!1116343 () Bool)

(assert (=> b!1744310 (= e!1116346 e!1116343)))

(declare-fun res!784294 () Bool)

(assert (=> b!1744310 (=> (not res!784294) (not e!1116343))))

(assert (=> b!1744310 (= res!784294 (not lt!672549))))

(declare-fun b!1744311 () Bool)

(assert (=> b!1744311 (= e!1116348 (nullable!1437 (regex!3414 rule!422)))))

(declare-fun b!1744312 () Bool)

(declare-fun res!784295 () Bool)

(assert (=> b!1744312 (=> (not res!784295) (not e!1116344))))

(assert (=> b!1744312 (= res!784295 (isEmpty!12067 (tail!2604 lt!672348)))))

(declare-fun b!1744313 () Bool)

(declare-fun e!1116347 () Bool)

(assert (=> b!1744313 (= e!1116347 e!1116345)))

(declare-fun c!284620 () Bool)

(assert (=> b!1744313 (= c!284620 (is-EmptyLang!4742 (regex!3414 rule!422)))))

(declare-fun bm!110201 () Bool)

(declare-fun call!110206 () Bool)

(assert (=> bm!110201 (= call!110206 (isEmpty!12067 lt!672348))))

(declare-fun d!533080 () Bool)

(assert (=> d!533080 e!1116347))

(declare-fun c!284619 () Bool)

(assert (=> d!533080 (= c!284619 (is-EmptyExpr!4742 (regex!3414 rule!422)))))

(assert (=> d!533080 (= lt!672549 e!1116348)))

(declare-fun c!284621 () Bool)

(assert (=> d!533080 (= c!284621 (isEmpty!12067 lt!672348))))

(assert (=> d!533080 (validRegex!1911 (regex!3414 rule!422))))

(assert (=> d!533080 (= (matchR!2216 (regex!3414 rule!422) lt!672348) lt!672549)))

(declare-fun b!1744303 () Bool)

(assert (=> b!1744303 (= e!1116343 e!1116342)))

(declare-fun res!784292 () Bool)

(assert (=> b!1744303 (=> res!784292 e!1116342)))

(assert (=> b!1744303 (= res!784292 call!110206)))

(declare-fun b!1744314 () Bool)

(assert (=> b!1744314 (= e!1116347 (= lt!672549 call!110206))))

(declare-fun b!1744315 () Bool)

(declare-fun res!784289 () Bool)

(assert (=> b!1744315 (=> (not res!784289) (not e!1116344))))

(assert (=> b!1744315 (= res!784289 (not call!110206))))

(declare-fun b!1744316 () Bool)

(assert (=> b!1744316 (= e!1116342 (not (= (head!4001 lt!672348) (c!284553 (regex!3414 rule!422)))))))

(assert (= (and d!533080 c!284621) b!1744311))

(assert (= (and d!533080 (not c!284621)) b!1744309))

(assert (= (and d!533080 c!284619) b!1744314))

(assert (= (and d!533080 (not c!284619)) b!1744313))

(assert (= (and b!1744313 c!284620) b!1744305))

(assert (= (and b!1744313 (not c!284620)) b!1744307))

(assert (= (and b!1744307 (not res!784293)) b!1744308))

(assert (= (and b!1744308 res!784296) b!1744315))

(assert (= (and b!1744315 res!784289) b!1744312))

(assert (= (and b!1744312 res!784295) b!1744304))

(assert (= (and b!1744308 (not res!784291)) b!1744310))

(assert (= (and b!1744310 res!784294) b!1744303))

(assert (= (and b!1744303 (not res!784292)) b!1744306))

(assert (= (and b!1744306 (not res!784290)) b!1744316))

(assert (= (or b!1744314 b!1744303 b!1744315) bm!110201))

(declare-fun m!2156097 () Bool)

(assert (=> d!533080 m!2156097))

(declare-fun m!2156099 () Bool)

(assert (=> d!533080 m!2156099))

(assert (=> b!1744309 m!2156087))

(assert (=> b!1744309 m!2156087))

(declare-fun m!2156101 () Bool)

(assert (=> b!1744309 m!2156101))

(assert (=> b!1744309 m!2156089))

(assert (=> b!1744309 m!2156101))

(assert (=> b!1744309 m!2156089))

(declare-fun m!2156103 () Bool)

(assert (=> b!1744309 m!2156103))

(assert (=> b!1744312 m!2156089))

(assert (=> b!1744312 m!2156089))

(declare-fun m!2156105 () Bool)

(assert (=> b!1744312 m!2156105))

(assert (=> b!1744304 m!2156087))

(assert (=> b!1744316 m!2156087))

(declare-fun m!2156107 () Bool)

(assert (=> b!1744311 m!2156107))

(assert (=> b!1744306 m!2156089))

(assert (=> b!1744306 m!2156089))

(assert (=> b!1744306 m!2156105))

(assert (=> bm!110201 m!2156097))

(assert (=> b!1743871 d!533080))

(declare-fun d!533082 () Bool)

(declare-fun res!784301 () Bool)

(declare-fun e!1116351 () Bool)

(assert (=> d!533082 (=> (not res!784301) (not e!1116351))))

(assert (=> d!533082 (= res!784301 (validRegex!1911 (regex!3414 rule!422)))))

(assert (=> d!533082 (= (ruleValid!913 thiss!24550 rule!422) e!1116351)))

(declare-fun b!1744321 () Bool)

(declare-fun res!784302 () Bool)

(assert (=> b!1744321 (=> (not res!784302) (not e!1116351))))

(assert (=> b!1744321 (= res!784302 (not (nullable!1437 (regex!3414 rule!422))))))

(declare-fun b!1744322 () Bool)

(assert (=> b!1744322 (= e!1116351 (not (= (tag!3756 rule!422) (String!21855 ""))))))

(assert (= (and d!533082 res!784301) b!1744321))

(assert (= (and b!1744321 res!784302) b!1744322))

(assert (=> d!533082 m!2156099))

(assert (=> b!1744321 m!2156107))

(assert (=> b!1743871 d!533082))

(declare-fun d!533084 () Bool)

(assert (=> d!533084 (ruleValid!913 thiss!24550 rule!422)))

(declare-fun lt!672552 () Unit!33234)

(declare-fun choose!10745 (LexerInterface!3043 Rule!6628 List!19234) Unit!33234)

(assert (=> d!533084 (= lt!672552 (choose!10745 thiss!24550 rule!422 rules!3447))))

(assert (=> d!533084 (contains!3438 rules!3447 rule!422)))

(assert (=> d!533084 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!437 thiss!24550 rule!422 rules!3447) lt!672552)))

(declare-fun bs!403193 () Bool)

(assert (= bs!403193 d!533084))

(assert (=> bs!403193 m!2155539))

(declare-fun m!2156109 () Bool)

(assert (=> bs!403193 m!2156109))

(assert (=> bs!403193 m!2155535))

(assert (=> b!1743871 d!533084))

(declare-fun d!533086 () Bool)

(declare-fun isBalanced!1989 (Conc!6374) Bool)

(assert (=> d!533086 (= (inv!24835 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))) (isBalanced!1989 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))))))

(declare-fun bs!403194 () Bool)

(assert (= bs!403194 d!533086))

(declare-fun m!2156111 () Bool)

(assert (=> bs!403194 m!2156111))

(assert (=> tb!104275 d!533086))

(declare-fun d!533088 () Bool)

(assert (=> d!533088 (= (isDefined!3196 lt!672360) (not (isEmpty!12072 lt!672360)))))

(declare-fun bs!403195 () Bool)

(assert (= bs!403195 d!533088))

(declare-fun m!2156113 () Bool)

(assert (=> bs!403195 m!2156113))

(assert (=> b!1743882 d!533088))

(declare-fun b!1744323 () Bool)

(declare-fun res!784305 () Bool)

(declare-fun e!1116353 () Bool)

(assert (=> b!1744323 (=> (not res!784305) (not e!1116353))))

(declare-fun lt!672555 () Option!3853)

(assert (=> b!1744323 (= res!784305 (matchR!2216 (regex!3414 (rule!5418 (_1!10808 (get!5777 lt!672555)))) (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672555))))))))

(declare-fun b!1744324 () Bool)

(declare-fun res!784303 () Bool)

(assert (=> b!1744324 (=> (not res!784303) (not e!1116353))))

(assert (=> b!1744324 (= res!784303 (= (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672555)))) (originalCharacters!4228 (_1!10808 (get!5777 lt!672555)))))))

(declare-fun b!1744325 () Bool)

(declare-fun e!1116354 () Bool)

(assert (=> b!1744325 (= e!1116354 e!1116353)))

(declare-fun res!784307 () Bool)

(assert (=> b!1744325 (=> (not res!784307) (not e!1116353))))

(assert (=> b!1744325 (= res!784307 (isDefined!3196 lt!672555))))

(declare-fun b!1744326 () Bool)

(assert (=> b!1744326 (= e!1116353 (contains!3438 rules!3447 (rule!5418 (_1!10808 (get!5777 lt!672555)))))))

(declare-fun b!1744327 () Bool)

(declare-fun e!1116352 () Option!3853)

(declare-fun lt!672554 () Option!3853)

(declare-fun lt!672553 () Option!3853)

(assert (=> b!1744327 (= e!1116352 (ite (and (is-None!3852 lt!672554) (is-None!3852 lt!672553)) None!3852 (ite (is-None!3852 lt!672553) lt!672554 (ite (is-None!3852 lt!672554) lt!672553 (ite (>= (size!15223 (_1!10808 (v!25287 lt!672554))) (size!15223 (_1!10808 (v!25287 lt!672553)))) lt!672554 lt!672553)))))))

(declare-fun call!110207 () Option!3853)

(assert (=> b!1744327 (= lt!672554 call!110207)))

(assert (=> b!1744327 (= lt!672553 (maxPrefix!1597 thiss!24550 (t!162087 rules!3447) lt!672348))))

(declare-fun b!1744328 () Bool)

(declare-fun res!784309 () Bool)

(assert (=> b!1744328 (=> (not res!784309) (not e!1116353))))

(assert (=> b!1744328 (= res!784309 (= (value!106973 (_1!10808 (get!5777 lt!672555))) (apply!5215 (transformation!3414 (rule!5418 (_1!10808 (get!5777 lt!672555)))) (seqFromList!2384 (originalCharacters!4228 (_1!10808 (get!5777 lt!672555)))))))))

(declare-fun b!1744329 () Bool)

(declare-fun res!784306 () Bool)

(assert (=> b!1744329 (=> (not res!784306) (not e!1116353))))

(assert (=> b!1744329 (= res!784306 (= (++!5239 (list!7755 (charsOf!2063 (_1!10808 (get!5777 lt!672555)))) (_2!10808 (get!5777 lt!672555))) lt!672348))))

(declare-fun bm!110202 () Bool)

(assert (=> bm!110202 (= call!110207 (maxPrefixOneRule!969 thiss!24550 (h!24565 rules!3447) lt!672348))))

(declare-fun b!1744331 () Bool)

(declare-fun res!784308 () Bool)

(assert (=> b!1744331 (=> (not res!784308) (not e!1116353))))

(assert (=> b!1744331 (= res!784308 (< (size!15225 (_2!10808 (get!5777 lt!672555))) (size!15225 lt!672348)))))

(declare-fun b!1744330 () Bool)

(assert (=> b!1744330 (= e!1116352 call!110207)))

(declare-fun d!533090 () Bool)

(assert (=> d!533090 e!1116354))

(declare-fun res!784304 () Bool)

(assert (=> d!533090 (=> res!784304 e!1116354)))

(assert (=> d!533090 (= res!784304 (isEmpty!12072 lt!672555))))

(assert (=> d!533090 (= lt!672555 e!1116352)))

(declare-fun c!284622 () Bool)

(assert (=> d!533090 (= c!284622 (and (is-Cons!19164 rules!3447) (is-Nil!19164 (t!162087 rules!3447))))))

(declare-fun lt!672556 () Unit!33234)

(declare-fun lt!672557 () Unit!33234)

(assert (=> d!533090 (= lt!672556 lt!672557)))

(assert (=> d!533090 (isPrefix!1655 lt!672348 lt!672348)))

(assert (=> d!533090 (= lt!672557 (lemmaIsPrefixRefl!1102 lt!672348 lt!672348))))

(assert (=> d!533090 (rulesValidInductive!1139 thiss!24550 rules!3447)))

(assert (=> d!533090 (= (maxPrefix!1597 thiss!24550 rules!3447 lt!672348) lt!672555)))

(assert (= (and d!533090 c!284622) b!1744330))

(assert (= (and d!533090 (not c!284622)) b!1744327))

(assert (= (or b!1744330 b!1744327) bm!110202))

(assert (= (and d!533090 (not res!784304)) b!1744325))

(assert (= (and b!1744325 res!784307) b!1744324))

(assert (= (and b!1744324 res!784303) b!1744331))

(assert (= (and b!1744331 res!784308) b!1744329))

(assert (= (and b!1744329 res!784306) b!1744328))

(assert (= (and b!1744328 res!784309) b!1744323))

(assert (= (and b!1744323 res!784305) b!1744326))

(declare-fun m!2156115 () Bool)

(assert (=> b!1744328 m!2156115))

(declare-fun m!2156117 () Bool)

(assert (=> b!1744328 m!2156117))

(assert (=> b!1744328 m!2156117))

(declare-fun m!2156119 () Bool)

(assert (=> b!1744328 m!2156119))

(declare-fun m!2156121 () Bool)

(assert (=> b!1744325 m!2156121))

(declare-fun m!2156123 () Bool)

(assert (=> d!533090 m!2156123))

(declare-fun m!2156125 () Bool)

(assert (=> d!533090 m!2156125))

(declare-fun m!2156127 () Bool)

(assert (=> d!533090 m!2156127))

(assert (=> d!533090 m!2155949))

(declare-fun m!2156129 () Bool)

(assert (=> b!1744327 m!2156129))

(assert (=> b!1744329 m!2156115))

(declare-fun m!2156131 () Bool)

(assert (=> b!1744329 m!2156131))

(assert (=> b!1744329 m!2156131))

(declare-fun m!2156133 () Bool)

(assert (=> b!1744329 m!2156133))

(assert (=> b!1744329 m!2156133))

(declare-fun m!2156135 () Bool)

(assert (=> b!1744329 m!2156135))

(assert (=> b!1744331 m!2156115))

(declare-fun m!2156137 () Bool)

(assert (=> b!1744331 m!2156137))

(assert (=> b!1744331 m!2155823))

(declare-fun m!2156139 () Bool)

(assert (=> bm!110202 m!2156139))

(assert (=> b!1744326 m!2156115))

(declare-fun m!2156141 () Bool)

(assert (=> b!1744326 m!2156141))

(assert (=> b!1744323 m!2156115))

(assert (=> b!1744323 m!2156131))

(assert (=> b!1744323 m!2156131))

(assert (=> b!1744323 m!2156133))

(assert (=> b!1744323 m!2156133))

(declare-fun m!2156143 () Bool)

(assert (=> b!1744323 m!2156143))

(assert (=> b!1744324 m!2156115))

(assert (=> b!1744324 m!2156131))

(assert (=> b!1744324 m!2156131))

(assert (=> b!1744324 m!2156133))

(assert (=> b!1743882 d!533090))

(declare-fun d!533092 () Bool)

(assert (=> d!533092 (= (list!7755 (charsOf!2063 token!523)) (list!7757 (c!284554 (charsOf!2063 token!523))))))

(declare-fun bs!403196 () Bool)

(assert (= bs!403196 d!533092))

(declare-fun m!2156145 () Bool)

(assert (=> bs!403196 m!2156145))

(assert (=> b!1743882 d!533092))

(declare-fun d!533094 () Bool)

(declare-fun lt!672558 () BalanceConc!12692)

(assert (=> d!533094 (= (list!7755 lt!672558) (originalCharacters!4228 token!523))))

(assert (=> d!533094 (= lt!672558 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 token!523))) (value!106973 token!523)))))

(assert (=> d!533094 (= (charsOf!2063 token!523) lt!672558)))

(declare-fun b_lambda!55869 () Bool)

(assert (=> (not b_lambda!55869) (not d!533094)))

(assert (=> d!533094 t!162104))

(declare-fun b_and!129749 () Bool)

(assert (= b_and!129725 (and (=> t!162104 result!125450) b_and!129749)))

(assert (=> d!533094 t!162106))

(declare-fun b_and!129751 () Bool)

(assert (= b_and!129727 (and (=> t!162106 result!125452) b_and!129751)))

(assert (=> d!533094 t!162108))

(declare-fun b_and!129753 () Bool)

(assert (= b_and!129729 (and (=> t!162108 result!125454) b_and!129753)))

(declare-fun m!2156147 () Bool)

(assert (=> d!533094 m!2156147))

(assert (=> d!533094 m!2155725))

(assert (=> b!1743882 d!533094))

(declare-fun b!1744345 () Bool)

(declare-fun e!1116357 () Bool)

(declare-fun tp!496454 () Bool)

(declare-fun tp!496457 () Bool)

(assert (=> b!1744345 (= e!1116357 (and tp!496454 tp!496457))))

(assert (=> b!1743886 (= tp!496387 e!1116357)))

(declare-fun b!1744343 () Bool)

(declare-fun tp!496453 () Bool)

(declare-fun tp!496456 () Bool)

(assert (=> b!1744343 (= e!1116357 (and tp!496453 tp!496456))))

(declare-fun b!1744342 () Bool)

(assert (=> b!1744342 (= e!1116357 tp_is_empty!7727)))

(declare-fun b!1744344 () Bool)

(declare-fun tp!496455 () Bool)

(assert (=> b!1744344 (= e!1116357 tp!496455)))

(assert (= (and b!1743886 (is-ElementMatch!4742 (regex!3414 rule!422))) b!1744342))

(assert (= (and b!1743886 (is-Concat!8247 (regex!3414 rule!422))) b!1744343))

(assert (= (and b!1743886 (is-Star!4742 (regex!3414 rule!422))) b!1744344))

(assert (= (and b!1743886 (is-Union!4742 (regex!3414 rule!422))) b!1744345))

(declare-fun b!1744349 () Bool)

(declare-fun e!1116358 () Bool)

(declare-fun tp!496459 () Bool)

(declare-fun tp!496462 () Bool)

(assert (=> b!1744349 (= e!1116358 (and tp!496459 tp!496462))))

(assert (=> b!1743881 (= tp!496397 e!1116358)))

(declare-fun b!1744347 () Bool)

(declare-fun tp!496458 () Bool)

(declare-fun tp!496461 () Bool)

(assert (=> b!1744347 (= e!1116358 (and tp!496458 tp!496461))))

(declare-fun b!1744346 () Bool)

(assert (=> b!1744346 (= e!1116358 tp_is_empty!7727)))

(declare-fun b!1744348 () Bool)

(declare-fun tp!496460 () Bool)

(assert (=> b!1744348 (= e!1116358 tp!496460)))

(assert (= (and b!1743881 (is-ElementMatch!4742 (regex!3414 (h!24565 rules!3447)))) b!1744346))

(assert (= (and b!1743881 (is-Concat!8247 (regex!3414 (h!24565 rules!3447)))) b!1744347))

(assert (= (and b!1743881 (is-Star!4742 (regex!3414 (h!24565 rules!3447)))) b!1744348))

(assert (= (and b!1743881 (is-Union!4742 (regex!3414 (h!24565 rules!3447)))) b!1744349))

(declare-fun b!1744354 () Bool)

(declare-fun e!1116361 () Bool)

(declare-fun tp!496465 () Bool)

(assert (=> b!1744354 (= e!1116361 (and tp_is_empty!7727 tp!496465))))

(assert (=> b!1743890 (= tp!496391 e!1116361)))

(assert (= (and b!1743890 (is-Cons!19163 (originalCharacters!4228 token!523))) b!1744354))

(declare-fun b!1744363 () Bool)

(declare-fun tp!496473 () Bool)

(declare-fun e!1116367 () Bool)

(declare-fun tp!496474 () Bool)

(assert (=> b!1744363 (= e!1116367 (and (inv!24834 (left!15321 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))) tp!496473 (inv!24834 (right!15651 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))) tp!496474))))

(declare-fun b!1744365 () Bool)

(declare-fun e!1116366 () Bool)

(declare-fun tp!496472 () Bool)

(assert (=> b!1744365 (= e!1116366 tp!496472)))

(declare-fun b!1744364 () Bool)

(declare-fun inv!24844 (IArray!12753) Bool)

(assert (=> b!1744364 (= e!1116367 (and (inv!24844 (xs!9250 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))) e!1116366))))

(assert (=> b!1743911 (= tp!496401 (and (inv!24834 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353)))) e!1116367))))

(assert (= (and b!1743911 (is-Node!6374 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))) b!1744363))

(assert (= b!1744364 b!1744365))

(assert (= (and b!1743911 (is-Leaf!9302 (c!284554 (dynLambda!9064 (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) (dynLambda!9065 (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))) lt!672353))))) b!1744364))

(declare-fun m!2156149 () Bool)

(assert (=> b!1744363 m!2156149))

(declare-fun m!2156151 () Bool)

(assert (=> b!1744363 m!2156151))

(declare-fun m!2156153 () Bool)

(assert (=> b!1744364 m!2156153))

(assert (=> b!1743911 m!2155501))

(declare-fun b!1744376 () Bool)

(declare-fun b_free!47991 () Bool)

(declare-fun b_next!48695 () Bool)

(assert (=> b!1744376 (= b_free!47991 (not b_next!48695))))

(declare-fun t!162116 () Bool)

(declare-fun tb!104311 () Bool)

(assert (=> (and b!1744376 (= (toValue!4925 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162116) tb!104311))

(declare-fun result!125470 () Bool)

(assert (= result!125470 result!125426))

(assert (=> b!1743877 t!162116))

(assert (=> d!532996 t!162116))

(declare-fun tp!496484 () Bool)

(declare-fun b_and!129755 () Bool)

(assert (=> b!1744376 (= tp!496484 (and (=> t!162116 result!125470) b_and!129755))))

(declare-fun b_free!47993 () Bool)

(declare-fun b_next!48697 () Bool)

(assert (=> b!1744376 (= b_free!47993 (not b_next!48697))))

(declare-fun t!162118 () Bool)

(declare-fun tb!104313 () Bool)

(assert (=> (and b!1744376 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 token!523)))) t!162118) tb!104313))

(declare-fun result!125472 () Bool)

(assert (= result!125472 result!125450))

(assert (=> b!1744014 t!162118))

(declare-fun tb!104315 () Bool)

(declare-fun t!162120 () Bool)

(assert (=> (and b!1744376 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162120) tb!104315))

(declare-fun result!125474 () Bool)

(assert (= result!125474 result!125418))

(assert (=> b!1743877 t!162120))

(declare-fun tb!104317 () Bool)

(declare-fun t!162122 () Bool)

(assert (=> (and b!1744376 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346))))) t!162122) tb!104317))

(declare-fun result!125476 () Bool)

(assert (= result!125476 result!125456))

(assert (=> d!532976 t!162122))

(assert (=> d!533094 t!162118))

(assert (=> d!532996 t!162120))

(declare-fun b_and!129757 () Bool)

(declare-fun tp!496485 () Bool)

(assert (=> b!1744376 (= tp!496485 (and (=> t!162120 result!125474) (=> t!162118 result!125472) (=> t!162122 result!125476) b_and!129757))))

(declare-fun e!1116378 () Bool)

(assert (=> b!1744376 (= e!1116378 (and tp!496484 tp!496485))))

(declare-fun b!1744375 () Bool)

(declare-fun tp!496486 () Bool)

(declare-fun e!1116379 () Bool)

(assert (=> b!1744375 (= e!1116379 (and tp!496486 (inv!24829 (tag!3756 (h!24565 (t!162087 rules!3447)))) (inv!24832 (transformation!3414 (h!24565 (t!162087 rules!3447)))) e!1116378))))

(declare-fun b!1744374 () Bool)

(declare-fun e!1116376 () Bool)

(declare-fun tp!496483 () Bool)

(assert (=> b!1744374 (= e!1116376 (and e!1116379 tp!496483))))

(assert (=> b!1743889 (= tp!496390 e!1116376)))

(assert (= b!1744375 b!1744376))

(assert (= b!1744374 b!1744375))

(assert (= (and b!1743889 (is-Cons!19164 (t!162087 rules!3447))) b!1744374))

(declare-fun m!2156155 () Bool)

(assert (=> b!1744375 m!2156155))

(declare-fun m!2156157 () Bool)

(assert (=> b!1744375 m!2156157))

(declare-fun b!1744380 () Bool)

(declare-fun e!1116380 () Bool)

(declare-fun tp!496488 () Bool)

(declare-fun tp!496491 () Bool)

(assert (=> b!1744380 (= e!1116380 (and tp!496488 tp!496491))))

(assert (=> b!1743873 (= tp!496389 e!1116380)))

(declare-fun b!1744378 () Bool)

(declare-fun tp!496487 () Bool)

(declare-fun tp!496490 () Bool)

(assert (=> b!1744378 (= e!1116380 (and tp!496487 tp!496490))))

(declare-fun b!1744377 () Bool)

(assert (=> b!1744377 (= e!1116380 tp_is_empty!7727)))

(declare-fun b!1744379 () Bool)

(declare-fun tp!496489 () Bool)

(assert (=> b!1744379 (= e!1116380 tp!496489)))

(assert (= (and b!1743873 (is-ElementMatch!4742 (regex!3414 (rule!5418 token!523)))) b!1744377))

(assert (= (and b!1743873 (is-Concat!8247 (regex!3414 (rule!5418 token!523)))) b!1744378))

(assert (= (and b!1743873 (is-Star!4742 (regex!3414 (rule!5418 token!523)))) b!1744379))

(assert (= (and b!1743873 (is-Union!4742 (regex!3414 (rule!5418 token!523)))) b!1744380))

(declare-fun b!1744381 () Bool)

(declare-fun e!1116381 () Bool)

(declare-fun tp!496492 () Bool)

(assert (=> b!1744381 (= e!1116381 (and tp_is_empty!7727 tp!496492))))

(assert (=> b!1743893 (= tp!496395 e!1116381)))

(assert (= (and b!1743893 (is-Cons!19163 (t!162086 suffix!1421))) b!1744381))

(declare-fun b_lambda!55871 () Bool)

(assert (= b_lambda!55869 (or (and b!1743888 b_free!47969 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) (and b!1743883 b_free!47973 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) (and b!1743876 b_free!47977) (and b!1744376 b_free!47993 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) b_lambda!55871)))

(declare-fun b_lambda!55873 () Bool)

(assert (= b_lambda!55851 (or (and b!1743888 b_free!47967 (= (toValue!4925 (transformation!3414 (h!24565 rules!3447))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1743883 b_free!47971 (= (toValue!4925 (transformation!3414 rule!422)) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1743876 b_free!47975 (= (toValue!4925 (transformation!3414 (rule!5418 token!523))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1744376 b_free!47991 (= (toValue!4925 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toValue!4925 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) b_lambda!55873)))

(declare-fun b_lambda!55875 () Bool)

(assert (= b_lambda!55857 (or (and b!1743888 b_free!47969 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) (and b!1743883 b_free!47973 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) (and b!1743876 b_free!47977) (and b!1744376 b_free!47993 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 token!523))))) b_lambda!55875)))

(declare-fun b_lambda!55877 () Bool)

(assert (= b_lambda!55849 (or (and b!1743888 b_free!47969 (= (toChars!4784 (transformation!3414 (h!24565 rules!3447))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1743883 b_free!47973 (= (toChars!4784 (transformation!3414 rule!422)) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1743876 b_free!47977 (= (toChars!4784 (transformation!3414 (rule!5418 token!523))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) (and b!1744376 b_free!47993 (= (toChars!4784 (transformation!3414 (h!24565 (t!162087 rules!3447)))) (toChars!4784 (transformation!3414 (rule!5418 (_1!10808 lt!672346)))))) b_lambda!55877)))

(push 1)

(assert (not b!1744157))

(assert (not b!1744231))

(assert (not b!1744365))

(assert b_and!129735)

(assert (not b!1743911))

(assert (not d!532976))

(assert (not b!1744091))

(assert (not b_next!48697))

(assert (not b!1744009))

(assert (not b!1744076))

(assert (not b!1744316))

(assert (not b!1744344))

(assert (not d!533090))

(assert (not b_lambda!55859))

(assert (not d!533094))

(assert b_and!129731)

(assert (not b!1744071))

(assert (not d!532962))

(assert (not d!532972))

(assert (not b!1744014))

(assert (not b!1744072))

(assert (not b!1744224))

(assert (not b!1744124))

(assert (not b!1744227))

(assert (not b!1744220))

(assert (not b!1744306))

(assert (not b!1744061))

(assert (not b!1744098))

(assert (not b!1744132))

(assert (not b_next!48679))

(assert (not b!1744348))

(assert (not b!1744159))

(assert (not d!533084))

(assert (not b!1744302))

(assert (not b!1744221))

(assert (not b!1744230))

(assert (not b!1744163))

(assert (not d!533076))

(assert (not b!1744327))

(assert (not d!533018))

(assert (not d!532994))

(assert (not b!1744294))

(assert (not b!1744113))

(assert (not b!1744326))

(assert (not d!532966))

(assert (not tb!104299))

(assert (not b!1744331))

(assert b_and!129751)

(assert (not d!532974))

(assert (not b!1744182))

(assert (not b!1744133))

(assert (not b!1744379))

(assert (not b!1744169))

(assert (not b!1744057))

(assert (not b_lambda!55875))

(assert (not b!1744300))

(assert (not b!1744299))

(assert (not b!1744015))

(assert (not b_lambda!55871))

(assert (not b!1744364))

(assert (not b!1744328))

(assert (not bm!110202))

(assert (not bm!110196))

(assert (not d!532998))

(assert (not b!1744304))

(assert (not b!1744141))

(assert (not b!1744056))

(assert (not b!1744181))

(assert (not d!533086))

(assert (not b_lambda!55873))

(assert (not d!533088))

(assert (not d!532996))

(assert (not b!1744069))

(assert (not d!532970))

(assert b_and!129755)

(assert (not b!1744125))

(assert (not d!533006))

(assert (not b!1744225))

(assert (not d!532990))

(assert (not b!1744343))

(assert (not b_next!48673))

(assert (not d!533092))

(assert (not d!533030))

(assert (not b_lambda!55863))

(assert (not b!1744354))

(assert (not b!1744219))

(assert (not b!1744103))

(assert (not b_lambda!55861))

(assert (not b!1744180))

(assert (not d!533032))

(assert (not b!1744311))

(assert (not b!1744329))

(assert (not b!1744222))

(assert (not b_next!48677))

(assert (not d!533002))

(assert (not b!1744100))

(assert (not b!1744363))

(assert b_and!129753)

(assert (not b!1744090))

(assert (not d!532964))

(assert (not b!1744374))

(assert (not b!1744114))

(assert (not d!533022))

(assert (not b!1744323))

(assert (not b!1744162))

(assert (not b!1744170))

(assert (not b!1744375))

(assert (not b!1744140))

(assert (not b!1744345))

(assert (not b!1744309))

(assert (not b_next!48671))

(assert (not b!1744223))

(assert (not b!1744019))

(assert (not b!1744381))

(assert (not b!1744066))

(assert (not b!1744137))

(assert (not b!1744049))

(assert (not b!1744312))

(assert (not b!1744347))

(assert tp_is_empty!7727)

(assert (not b!1744324))

(assert (not b!1744089))

(assert (not b!1744349))

(assert (not b_next!48695))

(assert (not bm!110200))

(assert (not b_next!48675))

(assert (not bm!110201))

(assert (not d!533010))

(assert (not b_lambda!55877))

(assert b_and!129757)

(assert (not d!533024))

(assert (not b!1744051))

(assert (not b!1744138))

(assert b_and!129749)

(assert (not b!1744296))

(assert b_and!129733)

(assert (not d!533080))

(assert (not b!1744155))

(assert (not d!533044))

(assert (not b!1744229))

(assert (not b!1744378))

(assert (not tb!104305))

(assert (not b!1744136))

(assert (not b!1744016))

(assert (not d!533068))

(assert (not b!1744062))

(assert (not d!533000))

(assert (not bm!110197))

(assert (not b!1744301))

(assert (not d!533016))

(assert (not d!533020))

(assert (not d!533082))

(assert (not b!1744321))

(assert (not b!1744325))

(assert (not b!1744064))

(assert (not d!533014))

(assert (not d!532980))

(assert (not b_next!48681))

(assert (not b!1744054))

(assert (not b!1744380))

(assert (not b!1744295))

(check-sat)

(pop 1)

(push 1)

(assert b_and!129731)

(assert (not b_next!48679))

(assert b_and!129751)

(assert b_and!129755)

(assert (not b_next!48673))

(assert (not b_next!48677))

(assert b_and!129753)

(assert (not b_next!48671))

(assert (not b_next!48695))

(assert b_and!129749)

(assert b_and!129733)

(assert (not b_next!48681))

(assert b_and!129735)

(assert (not b_next!48697))

(assert (not b_next!48675))

(assert b_and!129757)

(check-sat)

(pop 1)

