; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171370 () Bool)

(assert start!171370)

(declare-fun b!1741047 () Bool)

(declare-fun b_free!47859 () Bool)

(declare-fun b_next!48563 () Bool)

(assert (=> b!1741047 (= b_free!47859 (not b_next!48563))))

(declare-fun tp!495756 () Bool)

(declare-fun b_and!129405 () Bool)

(assert (=> b!1741047 (= tp!495756 b_and!129405)))

(declare-fun b_free!47861 () Bool)

(declare-fun b_next!48565 () Bool)

(assert (=> b!1741047 (= b_free!47861 (not b_next!48565))))

(declare-fun tp!495761 () Bool)

(declare-fun b_and!129407 () Bool)

(assert (=> b!1741047 (= tp!495761 b_and!129407)))

(declare-fun b!1741031 () Bool)

(declare-fun b_free!47863 () Bool)

(declare-fun b_next!48567 () Bool)

(assert (=> b!1741031 (= b_free!47863 (not b_next!48567))))

(declare-fun tp!495753 () Bool)

(declare-fun b_and!129409 () Bool)

(assert (=> b!1741031 (= tp!495753 b_and!129409)))

(declare-fun b_free!47865 () Bool)

(declare-fun b_next!48569 () Bool)

(assert (=> b!1741031 (= b_free!47865 (not b_next!48569))))

(declare-fun tp!495764 () Bool)

(declare-fun b_and!129411 () Bool)

(assert (=> b!1741031 (= tp!495764 b_and!129411)))

(declare-fun b!1741041 () Bool)

(declare-fun b_free!47867 () Bool)

(declare-fun b_next!48571 () Bool)

(assert (=> b!1741041 (= b_free!47867 (not b_next!48571))))

(declare-fun tp!495754 () Bool)

(declare-fun b_and!129413 () Bool)

(assert (=> b!1741041 (= tp!495754 b_and!129413)))

(declare-fun b_free!47869 () Bool)

(declare-fun b_next!48573 () Bool)

(assert (=> b!1741041 (= b_free!47869 (not b_next!48573))))

(declare-fun tp!495757 () Bool)

(declare-fun b_and!129415 () Bool)

(assert (=> b!1741041 (= tp!495757 b_and!129415)))

(declare-fun b!1741027 () Bool)

(declare-fun res!782666 () Bool)

(declare-fun e!1114361 () Bool)

(assert (=> b!1741027 (=> res!782666 e!1114361)))

(declare-datatypes ((C!9644 0))(
  ( (C!9645 (val!5418 Int)) )
))
(declare-datatypes ((List!19199 0))(
  ( (Nil!19129) (Cons!19129 (h!24530 C!9644) (t!161866 List!19199)) )
))
(declare-fun suffix!1421 () List!19199)

(declare-fun isEmpty!12041 (List!19199) Bool)

(assert (=> b!1741027 (= res!782666 (isEmpty!12041 suffix!1421))))

(declare-fun b!1741028 () Bool)

(declare-fun res!782678 () Bool)

(assert (=> b!1741028 (=> res!782678 e!1114361)))

(declare-datatypes ((LexerInterface!3036 0))(
  ( (LexerInterfaceExt!3033 (__x!12296 Int)) (Lexer!3034) )
))
(declare-fun thiss!24550 () LexerInterface!3036)

(declare-fun lt!671307 () List!19199)

(declare-datatypes ((List!19200 0))(
  ( (Nil!19130) (Cons!19130 (h!24531 (_ BitVec 16)) (t!161867 List!19200)) )
))
(declare-datatypes ((TokenValue!3497 0))(
  ( (FloatLiteralValue!6994 (text!24924 List!19200)) (TokenValueExt!3496 (__x!12297 Int)) (Broken!17485 (value!106746 List!19200)) (Object!3566) (End!3497) (Def!3497) (Underscore!3497) (Match!3497) (Else!3497) (Error!3497) (Case!3497) (If!3497) (Extends!3497) (Abstract!3497) (Class!3497) (Val!3497) (DelimiterValue!6994 (del!3557 List!19200)) (KeywordValue!3503 (value!106747 List!19200)) (CommentValue!6994 (value!106748 List!19200)) (WhitespaceValue!6994 (value!106749 List!19200)) (IndentationValue!3497 (value!106750 List!19200)) (String!21816) (Int32!3497) (Broken!17486 (value!106751 List!19200)) (Boolean!3498) (Unit!33198) (OperatorValue!3500 (op!3557 List!19200)) (IdentifierValue!6994 (value!106752 List!19200)) (IdentifierValue!6995 (value!106753 List!19200)) (WhitespaceValue!6995 (value!106754 List!19200)) (True!6994) (False!6994) (Broken!17487 (value!106755 List!19200)) (Broken!17488 (value!106756 List!19200)) (True!6995) (RightBrace!3497) (RightBracket!3497) (Colon!3497) (Null!3497) (Comma!3497) (LeftBracket!3497) (False!6995) (LeftBrace!3497) (ImaginaryLiteralValue!3497 (text!24925 List!19200)) (StringLiteralValue!10491 (value!106757 List!19200)) (EOFValue!3497 (value!106758 List!19200)) (IdentValue!3497 (value!106759 List!19200)) (DelimiterValue!6995 (value!106760 List!19200)) (DedentValue!3497 (value!106761 List!19200)) (NewLineValue!3497 (value!106762 List!19200)) (IntegerValue!10491 (value!106763 (_ BitVec 32)) (text!24926 List!19200)) (IntegerValue!10492 (value!106764 Int) (text!24927 List!19200)) (Times!3497) (Or!3497) (Equal!3497) (Minus!3497) (Broken!17489 (value!106765 List!19200)) (And!3497) (Div!3497) (LessEqual!3497) (Mod!3497) (Concat!8232) (Not!3497) (Plus!3497) (SpaceValue!3497 (value!106766 List!19200)) (IntegerValue!10493 (value!106767 Int) (text!24928 List!19200)) (StringLiteralValue!10492 (text!24929 List!19200)) (FloatLiteralValue!6995 (text!24930 List!19200)) (BytesLiteralValue!3497 (value!106768 List!19200)) (CommentValue!6995 (value!106769 List!19200)) (StringLiteralValue!10493 (value!106770 List!19200)) (ErrorTokenValue!3497 (msg!3558 List!19200)) )
))
(declare-datatypes ((Regex!4735 0))(
  ( (ElementMatch!4735 (c!284078 C!9644)) (Concat!8233 (regOne!9982 Regex!4735) (regTwo!9982 Regex!4735)) (EmptyExpr!4735) (Star!4735 (reg!5064 Regex!4735)) (EmptyLang!4735) (Union!4735 (regOne!9983 Regex!4735) (regTwo!9983 Regex!4735)) )
))
(declare-datatypes ((String!21817 0))(
  ( (String!21818 (value!106771 String)) )
))
(declare-datatypes ((IArray!12731 0))(
  ( (IArray!12732 (innerList!6423 List!19199)) )
))
(declare-datatypes ((Conc!6363 0))(
  ( (Node!6363 (left!15300 Conc!6363) (right!15630 Conc!6363) (csize!12956 Int) (cheight!6574 Int)) (Leaf!9287 (xs!9239 IArray!12731) (csize!12957 Int)) (Empty!6363) )
))
(declare-datatypes ((BalanceConc!12670 0))(
  ( (BalanceConc!12671 (c!284079 Conc!6363)) )
))
(declare-datatypes ((TokenValueInjection!6654 0))(
  ( (TokenValueInjection!6655 (toValue!4914 Int) (toChars!4773 Int)) )
))
(declare-datatypes ((Rule!6614 0))(
  ( (Rule!6615 (regex!3407 Regex!4735) (tag!3745 String!21817) (isSeparator!3407 Bool) (transformation!3407 TokenValueInjection!6654)) )
))
(declare-datatypes ((List!19201 0))(
  ( (Nil!19131) (Cons!19131 (h!24532 Rule!6614) (t!161868 List!19201)) )
))
(declare-fun rules!3447 () List!19201)

(declare-fun prefixMatch!620 (Regex!4735 List!19199) Bool)

(declare-fun rulesRegex!765 (LexerInterface!3036 List!19201) Regex!4735)

(declare-fun ++!5232 (List!19199 List!19199) List!19199)

(declare-fun head!3988 (List!19199) C!9644)

(assert (=> b!1741028 (= res!782678 (prefixMatch!620 (rulesRegex!765 thiss!24550 rules!3447) (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129))))))

(declare-fun b!1741029 () Bool)

(declare-fun e!1114355 () Bool)

(declare-datatypes ((Token!6380 0))(
  ( (Token!6381 (value!106772 TokenValue!3497) (rule!5409 Rule!6614) (size!15204 Int) (originalCharacters!4221 List!19199)) )
))
(declare-datatypes ((tuple2!18782 0))(
  ( (tuple2!18783 (_1!10793 Token!6380) (_2!10793 List!19199)) )
))
(declare-fun lt!671314 () tuple2!18782)

(declare-fun lt!671313 () Rule!6614)

(assert (=> b!1741029 (= e!1114355 (= (rule!5409 (_1!10793 lt!671314)) lt!671313))))

(declare-fun b!1741030 () Bool)

(declare-fun token!523 () Token!6380)

(declare-fun tp!495763 () Bool)

(declare-fun e!1114351 () Bool)

(declare-fun e!1114366 () Bool)

(declare-fun inv!21 (TokenValue!3497) Bool)

(assert (=> b!1741030 (= e!1114366 (and (inv!21 (value!106772 token!523)) e!1114351 tp!495763))))

(declare-fun e!1114363 () Bool)

(assert (=> b!1741031 (= e!1114363 (and tp!495753 tp!495764))))

(declare-fun b!1741032 () Bool)

(declare-fun e!1114360 () Bool)

(declare-fun e!1114367 () Bool)

(declare-fun tp!495758 () Bool)

(assert (=> b!1741032 (= e!1114360 (and e!1114367 tp!495758))))

(declare-fun e!1114350 () Bool)

(declare-fun tp!495762 () Bool)

(declare-fun rule!422 () Rule!6614)

(declare-fun e!1114352 () Bool)

(declare-fun b!1741033 () Bool)

(declare-fun inv!24789 (String!21817) Bool)

(declare-fun inv!24792 (TokenValueInjection!6654) Bool)

(assert (=> b!1741033 (= e!1114352 (and tp!495762 (inv!24789 (tag!3745 rule!422)) (inv!24792 (transformation!3407 rule!422)) e!1114350))))

(declare-fun b!1741034 () Bool)

(declare-fun e!1114359 () Bool)

(assert (=> b!1741034 (= e!1114359 e!1114355)))

(declare-fun res!782676 () Bool)

(assert (=> b!1741034 (=> (not res!782676) (not e!1114355))))

(declare-fun matchR!2209 (Regex!4735 List!19199) Bool)

(declare-fun list!7736 (BalanceConc!12670) List!19199)

(declare-fun charsOf!2056 (Token!6380) BalanceConc!12670)

(assert (=> b!1741034 (= res!782676 (matchR!2209 (regex!3407 lt!671313) (list!7736 (charsOf!2056 (_1!10793 lt!671314)))))))

(declare-datatypes ((Option!3838 0))(
  ( (None!3837) (Some!3837 (v!25268 Rule!6614)) )
))
(declare-fun lt!671311 () Option!3838)

(declare-fun get!5759 (Option!3838) Rule!6614)

(assert (=> b!1741034 (= lt!671313 (get!5759 lt!671311))))

(declare-fun b!1741035 () Bool)

(declare-fun e!1114353 () Bool)

(declare-fun e!1114362 () Bool)

(assert (=> b!1741035 (= e!1114353 e!1114362)))

(declare-fun res!782670 () Bool)

(assert (=> b!1741035 (=> (not res!782670) (not e!1114362))))

(declare-fun lt!671316 () tuple2!18782)

(assert (=> b!1741035 (= res!782670 (= (_1!10793 lt!671316) token!523))))

(declare-datatypes ((Option!3839 0))(
  ( (None!3838) (Some!3838 (v!25269 tuple2!18782)) )
))
(declare-fun lt!671308 () Option!3839)

(declare-fun get!5760 (Option!3839) tuple2!18782)

(assert (=> b!1741035 (= lt!671316 (get!5760 lt!671308))))

(declare-fun b!1741036 () Bool)

(declare-fun res!782671 () Bool)

(declare-fun e!1114358 () Bool)

(assert (=> b!1741036 (=> (not res!782671) (not e!1114358))))

(declare-fun isEmpty!12042 (List!19201) Bool)

(assert (=> b!1741036 (= res!782671 (not (isEmpty!12042 rules!3447)))))

(declare-fun res!782667 () Bool)

(assert (=> start!171370 (=> (not res!782667) (not e!1114358))))

(get-info :version)

(assert (=> start!171370 (= res!782667 ((_ is Lexer!3034) thiss!24550))))

(assert (=> start!171370 e!1114358))

(declare-fun e!1114356 () Bool)

(assert (=> start!171370 e!1114356))

(assert (=> start!171370 e!1114352))

(assert (=> start!171370 true))

(declare-fun inv!24793 (Token!6380) Bool)

(assert (=> start!171370 (and (inv!24793 token!523) e!1114366)))

(assert (=> start!171370 e!1114360))

(declare-fun b!1741037 () Bool)

(declare-fun lt!671310 () List!19199)

(declare-fun lt!671309 () List!19199)

(declare-fun isPrefix!1648 (List!19199 List!19199) Bool)

(assert (=> b!1741037 (= e!1114361 (isPrefix!1648 lt!671310 lt!671309))))

(assert (=> b!1741037 (isPrefix!1648 lt!671310 (++!5232 lt!671310 (_2!10793 lt!671314)))))

(declare-datatypes ((Unit!33199 0))(
  ( (Unit!33200) )
))
(declare-fun lt!671312 () Unit!33199)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1158 (List!19199 List!19199) Unit!33199)

(assert (=> b!1741037 (= lt!671312 (lemmaConcatTwoListThenFirstIsPrefix!1158 lt!671310 (_2!10793 lt!671314)))))

(assert (=> b!1741037 (= lt!671310 (list!7736 (charsOf!2056 (_1!10793 lt!671314))))))

(assert (=> b!1741037 e!1114359))

(declare-fun res!782674 () Bool)

(assert (=> b!1741037 (=> (not res!782674) (not e!1114359))))

(declare-fun isDefined!3181 (Option!3838) Bool)

(assert (=> b!1741037 (= res!782674 (isDefined!3181 lt!671311))))

(declare-fun getRuleFromTag!457 (LexerInterface!3036 List!19201 String!21817) Option!3838)

(assert (=> b!1741037 (= lt!671311 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 (_1!10793 lt!671314)))))))

(declare-fun lt!671317 () Unit!33199)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!457 (LexerInterface!3036 List!19201 List!19199 Token!6380) Unit!33199)

(assert (=> b!1741037 (= lt!671317 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!457 thiss!24550 rules!3447 lt!671309 (_1!10793 lt!671314)))))

(declare-fun lt!671306 () Option!3839)

(assert (=> b!1741037 (= lt!671314 (get!5760 lt!671306))))

(declare-fun lt!671305 () Unit!33199)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!560 (LexerInterface!3036 List!19201 List!19199 List!19199) Unit!33199)

(assert (=> b!1741037 (= lt!671305 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!560 thiss!24550 rules!3447 lt!671307 suffix!1421))))

(declare-fun maxPrefix!1590 (LexerInterface!3036 List!19201 List!19199) Option!3839)

(assert (=> b!1741037 (= lt!671306 (maxPrefix!1590 thiss!24550 rules!3447 lt!671309))))

(assert (=> b!1741037 (isPrefix!1648 lt!671307 lt!671309)))

(declare-fun lt!671315 () Unit!33199)

(assert (=> b!1741037 (= lt!671315 (lemmaConcatTwoListThenFirstIsPrefix!1158 lt!671307 suffix!1421))))

(assert (=> b!1741037 (= lt!671309 (++!5232 lt!671307 suffix!1421))))

(declare-fun b!1741038 () Bool)

(declare-fun res!782677 () Bool)

(assert (=> b!1741038 (=> (not res!782677) (not e!1114362))))

(assert (=> b!1741038 (= res!782677 (= (rule!5409 token!523) rule!422))))

(declare-fun tp!495760 () Bool)

(declare-fun b!1741039 () Bool)

(assert (=> b!1741039 (= e!1114351 (and tp!495760 (inv!24789 (tag!3745 (rule!5409 token!523))) (inv!24792 (transformation!3407 (rule!5409 token!523))) e!1114363))))

(declare-fun b!1741040 () Bool)

(declare-fun res!782672 () Bool)

(assert (=> b!1741040 (=> (not res!782672) (not e!1114358))))

(declare-fun rulesInvariant!2705 (LexerInterface!3036 List!19201) Bool)

(assert (=> b!1741040 (= res!782672 (rulesInvariant!2705 thiss!24550 rules!3447))))

(assert (=> b!1741041 (= e!1114350 (and tp!495754 tp!495757))))

(declare-fun b!1741042 () Bool)

(declare-fun res!782673 () Bool)

(assert (=> b!1741042 (=> (not res!782673) (not e!1114358))))

(declare-fun contains!3429 (List!19201 Rule!6614) Bool)

(assert (=> b!1741042 (= res!782673 (contains!3429 rules!3447 rule!422))))

(declare-fun b!1741043 () Bool)

(declare-fun tp_is_empty!7713 () Bool)

(declare-fun tp!495759 () Bool)

(assert (=> b!1741043 (= e!1114356 (and tp_is_empty!7713 tp!495759))))

(declare-fun b!1741044 () Bool)

(declare-fun tp!495755 () Bool)

(declare-fun e!1114364 () Bool)

(assert (=> b!1741044 (= e!1114367 (and tp!495755 (inv!24789 (tag!3745 (h!24532 rules!3447))) (inv!24792 (transformation!3407 (h!24532 rules!3447))) e!1114364))))

(declare-fun b!1741045 () Bool)

(assert (=> b!1741045 (= e!1114358 e!1114353)))

(declare-fun res!782669 () Bool)

(assert (=> b!1741045 (=> (not res!782669) (not e!1114353))))

(declare-fun isDefined!3182 (Option!3839) Bool)

(assert (=> b!1741045 (= res!782669 (isDefined!3182 lt!671308))))

(assert (=> b!1741045 (= lt!671308 (maxPrefix!1590 thiss!24550 rules!3447 lt!671307))))

(assert (=> b!1741045 (= lt!671307 (list!7736 (charsOf!2056 token!523)))))

(declare-fun b!1741046 () Bool)

(assert (=> b!1741046 (= e!1114362 (not e!1114361))))

(declare-fun res!782668 () Bool)

(assert (=> b!1741046 (=> res!782668 e!1114361)))

(assert (=> b!1741046 (= res!782668 (not (matchR!2209 (regex!3407 rule!422) lt!671307)))))

(declare-fun ruleValid!906 (LexerInterface!3036 Rule!6614) Bool)

(assert (=> b!1741046 (ruleValid!906 thiss!24550 rule!422)))

(declare-fun lt!671318 () Unit!33199)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!430 (LexerInterface!3036 Rule!6614 List!19201) Unit!33199)

(assert (=> b!1741046 (= lt!671318 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!430 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1741047 (= e!1114364 (and tp!495756 tp!495761))))

(declare-fun b!1741048 () Bool)

(declare-fun res!782675 () Bool)

(assert (=> b!1741048 (=> (not res!782675) (not e!1114362))))

(assert (=> b!1741048 (= res!782675 (isEmpty!12041 (_2!10793 lt!671316)))))

(assert (= (and start!171370 res!782667) b!1741036))

(assert (= (and b!1741036 res!782671) b!1741040))

(assert (= (and b!1741040 res!782672) b!1741042))

(assert (= (and b!1741042 res!782673) b!1741045))

(assert (= (and b!1741045 res!782669) b!1741035))

(assert (= (and b!1741035 res!782670) b!1741048))

(assert (= (and b!1741048 res!782675) b!1741038))

(assert (= (and b!1741038 res!782677) b!1741046))

(assert (= (and b!1741046 (not res!782668)) b!1741027))

(assert (= (and b!1741027 (not res!782666)) b!1741028))

(assert (= (and b!1741028 (not res!782678)) b!1741037))

(assert (= (and b!1741037 res!782674) b!1741034))

(assert (= (and b!1741034 res!782676) b!1741029))

(assert (= (and start!171370 ((_ is Cons!19129) suffix!1421)) b!1741043))

(assert (= b!1741033 b!1741041))

(assert (= start!171370 b!1741033))

(assert (= b!1741039 b!1741031))

(assert (= b!1741030 b!1741039))

(assert (= start!171370 b!1741030))

(assert (= b!1741044 b!1741047))

(assert (= b!1741032 b!1741044))

(assert (= (and start!171370 ((_ is Cons!19131) rules!3447)) b!1741032))

(declare-fun m!2151969 () Bool)

(assert (=> b!1741046 m!2151969))

(declare-fun m!2151971 () Bool)

(assert (=> b!1741046 m!2151971))

(declare-fun m!2151973 () Bool)

(assert (=> b!1741046 m!2151973))

(declare-fun m!2151975 () Bool)

(assert (=> b!1741034 m!2151975))

(assert (=> b!1741034 m!2151975))

(declare-fun m!2151977 () Bool)

(assert (=> b!1741034 m!2151977))

(assert (=> b!1741034 m!2151977))

(declare-fun m!2151979 () Bool)

(assert (=> b!1741034 m!2151979))

(declare-fun m!2151981 () Bool)

(assert (=> b!1741034 m!2151981))

(declare-fun m!2151983 () Bool)

(assert (=> b!1741042 m!2151983))

(declare-fun m!2151985 () Bool)

(assert (=> b!1741030 m!2151985))

(declare-fun m!2151987 () Bool)

(assert (=> b!1741048 m!2151987))

(declare-fun m!2151989 () Bool)

(assert (=> b!1741036 m!2151989))

(declare-fun m!2151991 () Bool)

(assert (=> b!1741044 m!2151991))

(declare-fun m!2151993 () Bool)

(assert (=> b!1741044 m!2151993))

(declare-fun m!2151995 () Bool)

(assert (=> b!1741039 m!2151995))

(declare-fun m!2151997 () Bool)

(assert (=> b!1741039 m!2151997))

(declare-fun m!2151999 () Bool)

(assert (=> start!171370 m!2151999))

(declare-fun m!2152001 () Bool)

(assert (=> b!1741033 m!2152001))

(declare-fun m!2152003 () Bool)

(assert (=> b!1741033 m!2152003))

(declare-fun m!2152005 () Bool)

(assert (=> b!1741045 m!2152005))

(declare-fun m!2152007 () Bool)

(assert (=> b!1741045 m!2152007))

(declare-fun m!2152009 () Bool)

(assert (=> b!1741045 m!2152009))

(assert (=> b!1741045 m!2152009))

(declare-fun m!2152011 () Bool)

(assert (=> b!1741045 m!2152011))

(declare-fun m!2152013 () Bool)

(assert (=> b!1741027 m!2152013))

(declare-fun m!2152015 () Bool)

(assert (=> b!1741040 m!2152015))

(declare-fun m!2152017 () Bool)

(assert (=> b!1741028 m!2152017))

(declare-fun m!2152019 () Bool)

(assert (=> b!1741028 m!2152019))

(declare-fun m!2152021 () Bool)

(assert (=> b!1741028 m!2152021))

(assert (=> b!1741028 m!2152017))

(assert (=> b!1741028 m!2152021))

(declare-fun m!2152023 () Bool)

(assert (=> b!1741028 m!2152023))

(declare-fun m!2152025 () Bool)

(assert (=> b!1741037 m!2152025))

(declare-fun m!2152027 () Bool)

(assert (=> b!1741037 m!2152027))

(declare-fun m!2152029 () Bool)

(assert (=> b!1741037 m!2152029))

(declare-fun m!2152031 () Bool)

(assert (=> b!1741037 m!2152031))

(declare-fun m!2152033 () Bool)

(assert (=> b!1741037 m!2152033))

(declare-fun m!2152035 () Bool)

(assert (=> b!1741037 m!2152035))

(declare-fun m!2152037 () Bool)

(assert (=> b!1741037 m!2152037))

(declare-fun m!2152039 () Bool)

(assert (=> b!1741037 m!2152039))

(declare-fun m!2152041 () Bool)

(assert (=> b!1741037 m!2152041))

(assert (=> b!1741037 m!2151975))

(assert (=> b!1741037 m!2151977))

(assert (=> b!1741037 m!2152025))

(declare-fun m!2152043 () Bool)

(assert (=> b!1741037 m!2152043))

(assert (=> b!1741037 m!2151975))

(declare-fun m!2152045 () Bool)

(assert (=> b!1741037 m!2152045))

(declare-fun m!2152047 () Bool)

(assert (=> b!1741037 m!2152047))

(declare-fun m!2152049 () Bool)

(assert (=> b!1741037 m!2152049))

(declare-fun m!2152051 () Bool)

(assert (=> b!1741035 m!2152051))

(check-sat (not b!1741035) b_and!129407 (not b!1741028) (not b!1741034) (not b_next!48567) (not b!1741048) b_and!129405 b_and!129415 (not b!1741039) (not b!1741027) (not b!1741037) (not start!171370) (not b!1741036) (not b!1741040) (not b!1741044) (not b!1741032) tp_is_empty!7713 b_and!129413 (not b_next!48569) (not b_next!48571) b_and!129409 b_and!129411 (not b_next!48565) (not b_next!48573) (not b!1741045) (not b!1741046) (not b!1741043) (not b_next!48563) (not b!1741033) (not b!1741042) (not b!1741030))
(check-sat b_and!129407 (not b_next!48567) (not b_next!48563) b_and!129405 b_and!129415 b_and!129413 (not b_next!48569) (not b_next!48571) b_and!129409 b_and!129411 (not b_next!48565) (not b_next!48573))
(get-model)

(declare-fun d!531986 () Bool)

(assert (=> d!531986 (= (isEmpty!12042 rules!3447) ((_ is Nil!19131) rules!3447))))

(assert (=> b!1741036 d!531986))

(declare-fun b!1741186 () Bool)

(declare-fun res!782786 () Bool)

(declare-fun e!1114443 () Bool)

(assert (=> b!1741186 (=> (not res!782786) (not e!1114443))))

(assert (=> b!1741186 (= res!782786 (= (head!3988 lt!671310) (head!3988 lt!671309)))))

(declare-fun b!1741188 () Bool)

(declare-fun e!1114445 () Bool)

(declare-fun size!15206 (List!19199) Int)

(assert (=> b!1741188 (= e!1114445 (>= (size!15206 lt!671309) (size!15206 lt!671310)))))

(declare-fun b!1741187 () Bool)

(declare-fun tail!2599 (List!19199) List!19199)

(assert (=> b!1741187 (= e!1114443 (isPrefix!1648 (tail!2599 lt!671310) (tail!2599 lt!671309)))))

(declare-fun d!531988 () Bool)

(assert (=> d!531988 e!1114445))

(declare-fun res!782785 () Bool)

(assert (=> d!531988 (=> res!782785 e!1114445)))

(declare-fun lt!671355 () Bool)

(assert (=> d!531988 (= res!782785 (not lt!671355))))

(declare-fun e!1114444 () Bool)

(assert (=> d!531988 (= lt!671355 e!1114444)))

(declare-fun res!782783 () Bool)

(assert (=> d!531988 (=> res!782783 e!1114444)))

(assert (=> d!531988 (= res!782783 ((_ is Nil!19129) lt!671310))))

(assert (=> d!531988 (= (isPrefix!1648 lt!671310 lt!671309) lt!671355)))

(declare-fun b!1741185 () Bool)

(assert (=> b!1741185 (= e!1114444 e!1114443)))

(declare-fun res!782784 () Bool)

(assert (=> b!1741185 (=> (not res!782784) (not e!1114443))))

(assert (=> b!1741185 (= res!782784 (not ((_ is Nil!19129) lt!671309)))))

(assert (= (and d!531988 (not res!782783)) b!1741185))

(assert (= (and b!1741185 res!782784) b!1741186))

(assert (= (and b!1741186 res!782786) b!1741187))

(assert (= (and d!531988 (not res!782785)) b!1741188))

(declare-fun m!2152171 () Bool)

(assert (=> b!1741186 m!2152171))

(declare-fun m!2152173 () Bool)

(assert (=> b!1741186 m!2152173))

(declare-fun m!2152175 () Bool)

(assert (=> b!1741188 m!2152175))

(declare-fun m!2152177 () Bool)

(assert (=> b!1741188 m!2152177))

(declare-fun m!2152179 () Bool)

(assert (=> b!1741187 m!2152179))

(declare-fun m!2152181 () Bool)

(assert (=> b!1741187 m!2152181))

(assert (=> b!1741187 m!2152179))

(assert (=> b!1741187 m!2152181))

(declare-fun m!2152183 () Bool)

(assert (=> b!1741187 m!2152183))

(assert (=> b!1741037 d!531988))

(declare-fun d!531998 () Bool)

(declare-fun lt!671358 () BalanceConc!12670)

(assert (=> d!531998 (= (list!7736 lt!671358) (originalCharacters!4221 (_1!10793 lt!671314)))))

(declare-fun dynLambda!9046 (Int TokenValue!3497) BalanceConc!12670)

(assert (=> d!531998 (= lt!671358 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314)))) (value!106772 (_1!10793 lt!671314))))))

(assert (=> d!531998 (= (charsOf!2056 (_1!10793 lt!671314)) lt!671358)))

(declare-fun b_lambda!55779 () Bool)

(assert (=> (not b_lambda!55779) (not d!531998)))

(declare-fun t!161876 () Bool)

(declare-fun tb!104109 () Bool)

(assert (=> (and b!1741047 (= (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314))))) t!161876) tb!104109))

(declare-fun b!1741193 () Bool)

(declare-fun e!1114448 () Bool)

(declare-fun tp!495770 () Bool)

(declare-fun inv!24796 (Conc!6363) Bool)

(assert (=> b!1741193 (= e!1114448 (and (inv!24796 (c!284079 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314)))) (value!106772 (_1!10793 lt!671314))))) tp!495770))))

(declare-fun result!125214 () Bool)

(declare-fun inv!24797 (BalanceConc!12670) Bool)

(assert (=> tb!104109 (= result!125214 (and (inv!24797 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314)))) (value!106772 (_1!10793 lt!671314)))) e!1114448))))

(assert (= tb!104109 b!1741193))

(declare-fun m!2152185 () Bool)

(assert (=> b!1741193 m!2152185))

(declare-fun m!2152187 () Bool)

(assert (=> tb!104109 m!2152187))

(assert (=> d!531998 t!161876))

(declare-fun b_and!129423 () Bool)

(assert (= b_and!129407 (and (=> t!161876 result!125214) b_and!129423)))

(declare-fun tb!104111 () Bool)

(declare-fun t!161878 () Bool)

(assert (=> (and b!1741031 (= (toChars!4773 (transformation!3407 (rule!5409 token!523))) (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314))))) t!161878) tb!104111))

(declare-fun result!125218 () Bool)

(assert (= result!125218 result!125214))

(assert (=> d!531998 t!161878))

(declare-fun b_and!129425 () Bool)

(assert (= b_and!129411 (and (=> t!161878 result!125218) b_and!129425)))

(declare-fun t!161880 () Bool)

(declare-fun tb!104113 () Bool)

(assert (=> (and b!1741041 (= (toChars!4773 (transformation!3407 rule!422)) (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314))))) t!161880) tb!104113))

(declare-fun result!125220 () Bool)

(assert (= result!125220 result!125214))

(assert (=> d!531998 t!161880))

(declare-fun b_and!129427 () Bool)

(assert (= b_and!129415 (and (=> t!161880 result!125220) b_and!129427)))

(declare-fun m!2152189 () Bool)

(assert (=> d!531998 m!2152189))

(declare-fun m!2152191 () Bool)

(assert (=> d!531998 m!2152191))

(assert (=> b!1741037 d!531998))

(declare-fun d!532000 () Bool)

(assert (=> d!532000 (isPrefix!1648 lt!671310 (++!5232 lt!671310 (_2!10793 lt!671314)))))

(declare-fun lt!671361 () Unit!33199)

(declare-fun choose!10721 (List!19199 List!19199) Unit!33199)

(assert (=> d!532000 (= lt!671361 (choose!10721 lt!671310 (_2!10793 lt!671314)))))

(assert (=> d!532000 (= (lemmaConcatTwoListThenFirstIsPrefix!1158 lt!671310 (_2!10793 lt!671314)) lt!671361)))

(declare-fun bs!403013 () Bool)

(assert (= bs!403013 d!532000))

(assert (=> bs!403013 m!2152025))

(assert (=> bs!403013 m!2152025))

(assert (=> bs!403013 m!2152027))

(declare-fun m!2152193 () Bool)

(assert (=> bs!403013 m!2152193))

(assert (=> b!1741037 d!532000))

(declare-fun b!1741205 () Bool)

(declare-fun e!1114453 () Bool)

(declare-fun lt!671364 () List!19199)

(assert (=> b!1741205 (= e!1114453 (or (not (= (_2!10793 lt!671314) Nil!19129)) (= lt!671364 lt!671310)))))

(declare-fun b!1741203 () Bool)

(declare-fun e!1114454 () List!19199)

(assert (=> b!1741203 (= e!1114454 (Cons!19129 (h!24530 lt!671310) (++!5232 (t!161866 lt!671310) (_2!10793 lt!671314))))))

(declare-fun b!1741202 () Bool)

(assert (=> b!1741202 (= e!1114454 (_2!10793 lt!671314))))

(declare-fun d!532002 () Bool)

(assert (=> d!532002 e!1114453))

(declare-fun res!782792 () Bool)

(assert (=> d!532002 (=> (not res!782792) (not e!1114453))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2743 (List!19199) (InoxSet C!9644))

(assert (=> d!532002 (= res!782792 (= (content!2743 lt!671364) ((_ map or) (content!2743 lt!671310) (content!2743 (_2!10793 lt!671314)))))))

(assert (=> d!532002 (= lt!671364 e!1114454)))

(declare-fun c!284100 () Bool)

(assert (=> d!532002 (= c!284100 ((_ is Nil!19129) lt!671310))))

(assert (=> d!532002 (= (++!5232 lt!671310 (_2!10793 lt!671314)) lt!671364)))

(declare-fun b!1741204 () Bool)

(declare-fun res!782791 () Bool)

(assert (=> b!1741204 (=> (not res!782791) (not e!1114453))))

(assert (=> b!1741204 (= res!782791 (= (size!15206 lt!671364) (+ (size!15206 lt!671310) (size!15206 (_2!10793 lt!671314)))))))

(assert (= (and d!532002 c!284100) b!1741202))

(assert (= (and d!532002 (not c!284100)) b!1741203))

(assert (= (and d!532002 res!782792) b!1741204))

(assert (= (and b!1741204 res!782791) b!1741205))

(declare-fun m!2152195 () Bool)

(assert (=> b!1741203 m!2152195))

(declare-fun m!2152197 () Bool)

(assert (=> d!532002 m!2152197))

(declare-fun m!2152199 () Bool)

(assert (=> d!532002 m!2152199))

(declare-fun m!2152201 () Bool)

(assert (=> d!532002 m!2152201))

(declare-fun m!2152203 () Bool)

(assert (=> b!1741204 m!2152203))

(assert (=> b!1741204 m!2152177))

(declare-fun m!2152205 () Bool)

(assert (=> b!1741204 m!2152205))

(assert (=> b!1741037 d!532002))

(declare-fun e!1114535 () Bool)

(declare-fun b!1741347 () Bool)

(declare-fun lt!671486 () Token!6380)

(assert (=> b!1741347 (= e!1114535 (= (rule!5409 lt!671486) (get!5759 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 lt!671486))))))))

(declare-fun d!532004 () Bool)

(assert (=> d!532004 (isDefined!3182 (maxPrefix!1590 thiss!24550 rules!3447 (++!5232 lt!671307 suffix!1421)))))

(declare-fun lt!671494 () Unit!33199)

(declare-fun e!1114534 () Unit!33199)

(assert (=> d!532004 (= lt!671494 e!1114534)))

(declare-fun c!284124 () Bool)

(declare-fun isEmpty!12045 (Option!3839) Bool)

(assert (=> d!532004 (= c!284124 (isEmpty!12045 (maxPrefix!1590 thiss!24550 rules!3447 (++!5232 lt!671307 suffix!1421))))))

(declare-fun lt!671492 () Unit!33199)

(declare-fun lt!671482 () Unit!33199)

(assert (=> d!532004 (= lt!671492 lt!671482)))

(assert (=> d!532004 e!1114535))

(declare-fun res!782848 () Bool)

(assert (=> d!532004 (=> (not res!782848) (not e!1114535))))

(assert (=> d!532004 (= res!782848 (isDefined!3181 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 lt!671486)))))))

(assert (=> d!532004 (= lt!671482 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!457 thiss!24550 rules!3447 lt!671307 lt!671486))))

(declare-fun lt!671480 () Unit!33199)

(declare-fun lt!671495 () Unit!33199)

(assert (=> d!532004 (= lt!671480 lt!671495)))

(declare-fun lt!671481 () List!19199)

(assert (=> d!532004 (isPrefix!1648 lt!671481 (++!5232 lt!671307 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!283 (List!19199 List!19199 List!19199) Unit!33199)

(assert (=> d!532004 (= lt!671495 (lemmaPrefixStaysPrefixWhenAddingToSuffix!283 lt!671481 lt!671307 suffix!1421))))

(assert (=> d!532004 (= lt!671481 (list!7736 (charsOf!2056 lt!671486)))))

(declare-fun lt!671490 () Unit!33199)

(declare-fun lt!671493 () Unit!33199)

(assert (=> d!532004 (= lt!671490 lt!671493)))

(declare-fun lt!671483 () List!19199)

(declare-fun lt!671488 () List!19199)

(assert (=> d!532004 (isPrefix!1648 lt!671483 (++!5232 lt!671483 lt!671488))))

(assert (=> d!532004 (= lt!671493 (lemmaConcatTwoListThenFirstIsPrefix!1158 lt!671483 lt!671488))))

(assert (=> d!532004 (= lt!671488 (_2!10793 (get!5760 (maxPrefix!1590 thiss!24550 rules!3447 lt!671307))))))

(assert (=> d!532004 (= lt!671483 (list!7736 (charsOf!2056 lt!671486)))))

(declare-datatypes ((List!19203 0))(
  ( (Nil!19133) (Cons!19133 (h!24534 Token!6380) (t!161902 List!19203)) )
))
(declare-fun head!3990 (List!19203) Token!6380)

(declare-datatypes ((IArray!12735 0))(
  ( (IArray!12736 (innerList!6425 List!19203)) )
))
(declare-datatypes ((Conc!6365 0))(
  ( (Node!6365 (left!15302 Conc!6365) (right!15632 Conc!6365) (csize!12960 Int) (cheight!6576 Int)) (Leaf!9289 (xs!9241 IArray!12735) (csize!12961 Int)) (Empty!6365) )
))
(declare-datatypes ((BalanceConc!12674 0))(
  ( (BalanceConc!12675 (c!284159 Conc!6365)) )
))
(declare-fun list!7739 (BalanceConc!12674) List!19203)

(declare-datatypes ((tuple2!18786 0))(
  ( (tuple2!18787 (_1!10795 BalanceConc!12674) (_2!10795 BalanceConc!12670)) )
))
(declare-fun lex!1422 (LexerInterface!3036 List!19201 BalanceConc!12670) tuple2!18786)

(declare-fun seqFromList!2381 (List!19199) BalanceConc!12670)

(assert (=> d!532004 (= lt!671486 (head!3990 (list!7739 (_1!10795 (lex!1422 thiss!24550 rules!3447 (seqFromList!2381 lt!671307))))))))

(assert (=> d!532004 (not (isEmpty!12042 rules!3447))))

(assert (=> d!532004 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!560 thiss!24550 rules!3447 lt!671307 suffix!1421) lt!671494)))

(declare-fun b!1741348 () Bool)

(declare-fun Unit!33203 () Unit!33199)

(assert (=> b!1741348 (= e!1114534 Unit!33203)))

(declare-fun lt!671491 () List!19199)

(assert (=> b!1741348 (= lt!671491 (++!5232 lt!671307 suffix!1421))))

(declare-fun lt!671489 () Unit!33199)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!291 (LexerInterface!3036 Rule!6614 List!19201 List!19199) Unit!33199)

(assert (=> b!1741348 (= lt!671489 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!291 thiss!24550 (rule!5409 lt!671486) rules!3447 lt!671491))))

(declare-fun maxPrefixOneRule!966 (LexerInterface!3036 Rule!6614 List!19199) Option!3839)

(assert (=> b!1741348 (isEmpty!12045 (maxPrefixOneRule!966 thiss!24550 (rule!5409 lt!671486) lt!671491))))

(declare-fun lt!671487 () Unit!33199)

(assert (=> b!1741348 (= lt!671487 lt!671489)))

(declare-fun lt!671479 () List!19199)

(assert (=> b!1741348 (= lt!671479 (list!7736 (charsOf!2056 lt!671486)))))

(declare-fun lt!671485 () Unit!33199)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!287 (LexerInterface!3036 Rule!6614 List!19199 List!19199) Unit!33199)

(assert (=> b!1741348 (= lt!671485 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!287 thiss!24550 (rule!5409 lt!671486) lt!671479 (++!5232 lt!671307 suffix!1421)))))

(assert (=> b!1741348 (not (matchR!2209 (regex!3407 (rule!5409 lt!671486)) lt!671479))))

(declare-fun lt!671484 () Unit!33199)

(assert (=> b!1741348 (= lt!671484 lt!671485)))

(assert (=> b!1741348 false))

(declare-fun b!1741349 () Bool)

(declare-fun Unit!33204 () Unit!33199)

(assert (=> b!1741349 (= e!1114534 Unit!33204)))

(declare-fun b!1741346 () Bool)

(declare-fun res!782847 () Bool)

(assert (=> b!1741346 (=> (not res!782847) (not e!1114535))))

(assert (=> b!1741346 (= res!782847 (matchR!2209 (regex!3407 (get!5759 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 lt!671486))))) (list!7736 (charsOf!2056 lt!671486))))))

(assert (= (and d!532004 res!782848) b!1741346))

(assert (= (and b!1741346 res!782847) b!1741347))

(assert (= (and d!532004 c!284124) b!1741348))

(assert (= (and d!532004 (not c!284124)) b!1741349))

(declare-fun m!2152401 () Bool)

(assert (=> b!1741347 m!2152401))

(assert (=> b!1741347 m!2152401))

(declare-fun m!2152403 () Bool)

(assert (=> b!1741347 m!2152403))

(declare-fun m!2152405 () Bool)

(assert (=> d!532004 m!2152405))

(declare-fun m!2152407 () Bool)

(assert (=> d!532004 m!2152407))

(declare-fun m!2152409 () Bool)

(assert (=> d!532004 m!2152409))

(declare-fun m!2152411 () Bool)

(assert (=> d!532004 m!2152411))

(declare-fun m!2152413 () Bool)

(assert (=> d!532004 m!2152413))

(declare-fun m!2152415 () Bool)

(assert (=> d!532004 m!2152415))

(declare-fun m!2152417 () Bool)

(assert (=> d!532004 m!2152417))

(assert (=> d!532004 m!2152007))

(assert (=> d!532004 m!2152007))

(declare-fun m!2152419 () Bool)

(assert (=> d!532004 m!2152419))

(assert (=> d!532004 m!2152415))

(assert (=> d!532004 m!2152035))

(assert (=> d!532004 m!2152411))

(assert (=> d!532004 m!2152035))

(assert (=> d!532004 m!2152405))

(assert (=> d!532004 m!2152401))

(declare-fun m!2152421 () Bool)

(assert (=> d!532004 m!2152421))

(assert (=> d!532004 m!2152401))

(assert (=> d!532004 m!2152405))

(declare-fun m!2152423 () Bool)

(assert (=> d!532004 m!2152423))

(assert (=> d!532004 m!2152035))

(declare-fun m!2152425 () Bool)

(assert (=> d!532004 m!2152425))

(assert (=> d!532004 m!2151989))

(declare-fun m!2152427 () Bool)

(assert (=> d!532004 m!2152427))

(declare-fun m!2152429 () Bool)

(assert (=> d!532004 m!2152429))

(declare-fun m!2152431 () Bool)

(assert (=> d!532004 m!2152431))

(declare-fun m!2152433 () Bool)

(assert (=> d!532004 m!2152433))

(assert (=> d!532004 m!2152431))

(declare-fun m!2152435 () Bool)

(assert (=> d!532004 m!2152435))

(assert (=> d!532004 m!2152429))

(declare-fun m!2152437 () Bool)

(assert (=> d!532004 m!2152437))

(declare-fun m!2152439 () Bool)

(assert (=> b!1741348 m!2152439))

(declare-fun m!2152441 () Bool)

(assert (=> b!1741348 m!2152441))

(assert (=> b!1741348 m!2152035))

(declare-fun m!2152443 () Bool)

(assert (=> b!1741348 m!2152443))

(assert (=> b!1741348 m!2152431))

(assert (=> b!1741348 m!2152035))

(assert (=> b!1741348 m!2152439))

(declare-fun m!2152445 () Bool)

(assert (=> b!1741348 m!2152445))

(assert (=> b!1741348 m!2152431))

(assert (=> b!1741348 m!2152435))

(declare-fun m!2152447 () Bool)

(assert (=> b!1741348 m!2152447))

(assert (=> b!1741346 m!2152401))

(assert (=> b!1741346 m!2152403))

(assert (=> b!1741346 m!2152401))

(assert (=> b!1741346 m!2152435))

(declare-fun m!2152449 () Bool)

(assert (=> b!1741346 m!2152449))

(assert (=> b!1741346 m!2152431))

(assert (=> b!1741346 m!2152431))

(assert (=> b!1741346 m!2152435))

(assert (=> b!1741037 d!532004))

(declare-fun b!1741368 () Bool)

(declare-fun res!782863 () Bool)

(declare-fun e!1114543 () Bool)

(assert (=> b!1741368 (=> (not res!782863) (not e!1114543))))

(declare-fun lt!671509 () Option!3839)

(assert (=> b!1741368 (= res!782863 (matchR!2209 (regex!3407 (rule!5409 (_1!10793 (get!5760 lt!671509)))) (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671509))))))))

(declare-fun b!1741369 () Bool)

(declare-fun e!1114542 () Option!3839)

(declare-fun call!110075 () Option!3839)

(assert (=> b!1741369 (= e!1114542 call!110075)))

(declare-fun d!532054 () Bool)

(declare-fun e!1114544 () Bool)

(assert (=> d!532054 e!1114544))

(declare-fun res!782867 () Bool)

(assert (=> d!532054 (=> res!782867 e!1114544)))

(assert (=> d!532054 (= res!782867 (isEmpty!12045 lt!671509))))

(assert (=> d!532054 (= lt!671509 e!1114542)))

(declare-fun c!284127 () Bool)

(assert (=> d!532054 (= c!284127 (and ((_ is Cons!19131) rules!3447) ((_ is Nil!19131) (t!161868 rules!3447))))))

(declare-fun lt!671506 () Unit!33199)

(declare-fun lt!671508 () Unit!33199)

(assert (=> d!532054 (= lt!671506 lt!671508)))

(assert (=> d!532054 (isPrefix!1648 lt!671309 lt!671309)))

(declare-fun lemmaIsPrefixRefl!1099 (List!19199 List!19199) Unit!33199)

(assert (=> d!532054 (= lt!671508 (lemmaIsPrefixRefl!1099 lt!671309 lt!671309))))

(declare-fun rulesValidInductive!1136 (LexerInterface!3036 List!19201) Bool)

(assert (=> d!532054 (rulesValidInductive!1136 thiss!24550 rules!3447)))

(assert (=> d!532054 (= (maxPrefix!1590 thiss!24550 rules!3447 lt!671309) lt!671509)))

(declare-fun b!1741370 () Bool)

(declare-fun res!782869 () Bool)

(assert (=> b!1741370 (=> (not res!782869) (not e!1114543))))

(assert (=> b!1741370 (= res!782869 (= (++!5232 (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671509)))) (_2!10793 (get!5760 lt!671509))) lt!671309))))

(declare-fun b!1741371 () Bool)

(assert (=> b!1741371 (= e!1114544 e!1114543)))

(declare-fun res!782868 () Bool)

(assert (=> b!1741371 (=> (not res!782868) (not e!1114543))))

(assert (=> b!1741371 (= res!782868 (isDefined!3182 lt!671509))))

(declare-fun bm!110070 () Bool)

(assert (=> bm!110070 (= call!110075 (maxPrefixOneRule!966 thiss!24550 (h!24532 rules!3447) lt!671309))))

(declare-fun b!1741372 () Bool)

(declare-fun res!782864 () Bool)

(assert (=> b!1741372 (=> (not res!782864) (not e!1114543))))

(assert (=> b!1741372 (= res!782864 (< (size!15206 (_2!10793 (get!5760 lt!671509))) (size!15206 lt!671309)))))

(declare-fun b!1741373 () Bool)

(declare-fun lt!671507 () Option!3839)

(declare-fun lt!671510 () Option!3839)

(assert (=> b!1741373 (= e!1114542 (ite (and ((_ is None!3838) lt!671507) ((_ is None!3838) lt!671510)) None!3838 (ite ((_ is None!3838) lt!671510) lt!671507 (ite ((_ is None!3838) lt!671507) lt!671510 (ite (>= (size!15204 (_1!10793 (v!25269 lt!671507))) (size!15204 (_1!10793 (v!25269 lt!671510)))) lt!671507 lt!671510)))))))

(assert (=> b!1741373 (= lt!671507 call!110075)))

(assert (=> b!1741373 (= lt!671510 (maxPrefix!1590 thiss!24550 (t!161868 rules!3447) lt!671309))))

(declare-fun b!1741374 () Bool)

(assert (=> b!1741374 (= e!1114543 (contains!3429 rules!3447 (rule!5409 (_1!10793 (get!5760 lt!671509)))))))

(declare-fun b!1741375 () Bool)

(declare-fun res!782866 () Bool)

(assert (=> b!1741375 (=> (not res!782866) (not e!1114543))))

(declare-fun apply!5212 (TokenValueInjection!6654 BalanceConc!12670) TokenValue!3497)

(assert (=> b!1741375 (= res!782866 (= (value!106772 (_1!10793 (get!5760 lt!671509))) (apply!5212 (transformation!3407 (rule!5409 (_1!10793 (get!5760 lt!671509)))) (seqFromList!2381 (originalCharacters!4221 (_1!10793 (get!5760 lt!671509)))))))))

(declare-fun b!1741376 () Bool)

(declare-fun res!782865 () Bool)

(assert (=> b!1741376 (=> (not res!782865) (not e!1114543))))

(assert (=> b!1741376 (= res!782865 (= (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671509)))) (originalCharacters!4221 (_1!10793 (get!5760 lt!671509)))))))

(assert (= (and d!532054 c!284127) b!1741369))

(assert (= (and d!532054 (not c!284127)) b!1741373))

(assert (= (or b!1741369 b!1741373) bm!110070))

(assert (= (and d!532054 (not res!782867)) b!1741371))

(assert (= (and b!1741371 res!782868) b!1741376))

(assert (= (and b!1741376 res!782865) b!1741372))

(assert (= (and b!1741372 res!782864) b!1741370))

(assert (= (and b!1741370 res!782869) b!1741375))

(assert (= (and b!1741375 res!782866) b!1741368))

(assert (= (and b!1741368 res!782863) b!1741374))

(declare-fun m!2152451 () Bool)

(assert (=> b!1741372 m!2152451))

(declare-fun m!2152453 () Bool)

(assert (=> b!1741372 m!2152453))

(assert (=> b!1741372 m!2152175))

(assert (=> b!1741374 m!2152451))

(declare-fun m!2152455 () Bool)

(assert (=> b!1741374 m!2152455))

(declare-fun m!2152457 () Bool)

(assert (=> b!1741373 m!2152457))

(declare-fun m!2152459 () Bool)

(assert (=> bm!110070 m!2152459))

(declare-fun m!2152461 () Bool)

(assert (=> d!532054 m!2152461))

(declare-fun m!2152463 () Bool)

(assert (=> d!532054 m!2152463))

(declare-fun m!2152465 () Bool)

(assert (=> d!532054 m!2152465))

(declare-fun m!2152467 () Bool)

(assert (=> d!532054 m!2152467))

(assert (=> b!1741376 m!2152451))

(declare-fun m!2152469 () Bool)

(assert (=> b!1741376 m!2152469))

(assert (=> b!1741376 m!2152469))

(declare-fun m!2152471 () Bool)

(assert (=> b!1741376 m!2152471))

(declare-fun m!2152473 () Bool)

(assert (=> b!1741371 m!2152473))

(assert (=> b!1741368 m!2152451))

(assert (=> b!1741368 m!2152469))

(assert (=> b!1741368 m!2152469))

(assert (=> b!1741368 m!2152471))

(assert (=> b!1741368 m!2152471))

(declare-fun m!2152475 () Bool)

(assert (=> b!1741368 m!2152475))

(assert (=> b!1741375 m!2152451))

(declare-fun m!2152477 () Bool)

(assert (=> b!1741375 m!2152477))

(assert (=> b!1741375 m!2152477))

(declare-fun m!2152479 () Bool)

(assert (=> b!1741375 m!2152479))

(assert (=> b!1741370 m!2152451))

(assert (=> b!1741370 m!2152469))

(assert (=> b!1741370 m!2152469))

(assert (=> b!1741370 m!2152471))

(assert (=> b!1741370 m!2152471))

(declare-fun m!2152481 () Bool)

(assert (=> b!1741370 m!2152481))

(assert (=> b!1741037 d!532054))

(declare-fun d!532056 () Bool)

(assert (=> d!532056 (isPrefix!1648 lt!671307 (++!5232 lt!671307 suffix!1421))))

(declare-fun lt!671511 () Unit!33199)

(assert (=> d!532056 (= lt!671511 (choose!10721 lt!671307 suffix!1421))))

(assert (=> d!532056 (= (lemmaConcatTwoListThenFirstIsPrefix!1158 lt!671307 suffix!1421) lt!671511)))

(declare-fun bs!403019 () Bool)

(assert (= bs!403019 d!532056))

(assert (=> bs!403019 m!2152035))

(assert (=> bs!403019 m!2152035))

(declare-fun m!2152483 () Bool)

(assert (=> bs!403019 m!2152483))

(declare-fun m!2152485 () Bool)

(assert (=> bs!403019 m!2152485))

(assert (=> b!1741037 d!532056))

(declare-fun d!532058 () Bool)

(declare-fun isEmpty!12046 (Option!3838) Bool)

(assert (=> d!532058 (= (isDefined!3181 lt!671311) (not (isEmpty!12046 lt!671311)))))

(declare-fun bs!403020 () Bool)

(assert (= bs!403020 d!532058))

(declare-fun m!2152487 () Bool)

(assert (=> bs!403020 m!2152487))

(assert (=> b!1741037 d!532058))

(declare-fun e!1114545 () Bool)

(declare-fun b!1741380 () Bool)

(declare-fun lt!671512 () List!19199)

(assert (=> b!1741380 (= e!1114545 (or (not (= suffix!1421 Nil!19129)) (= lt!671512 lt!671307)))))

(declare-fun b!1741378 () Bool)

(declare-fun e!1114546 () List!19199)

(assert (=> b!1741378 (= e!1114546 (Cons!19129 (h!24530 lt!671307) (++!5232 (t!161866 lt!671307) suffix!1421)))))

(declare-fun b!1741377 () Bool)

(assert (=> b!1741377 (= e!1114546 suffix!1421)))

(declare-fun d!532060 () Bool)

(assert (=> d!532060 e!1114545))

(declare-fun res!782871 () Bool)

(assert (=> d!532060 (=> (not res!782871) (not e!1114545))))

(assert (=> d!532060 (= res!782871 (= (content!2743 lt!671512) ((_ map or) (content!2743 lt!671307) (content!2743 suffix!1421))))))

(assert (=> d!532060 (= lt!671512 e!1114546)))

(declare-fun c!284128 () Bool)

(assert (=> d!532060 (= c!284128 ((_ is Nil!19129) lt!671307))))

(assert (=> d!532060 (= (++!5232 lt!671307 suffix!1421) lt!671512)))

(declare-fun b!1741379 () Bool)

(declare-fun res!782870 () Bool)

(assert (=> b!1741379 (=> (not res!782870) (not e!1114545))))

(assert (=> b!1741379 (= res!782870 (= (size!15206 lt!671512) (+ (size!15206 lt!671307) (size!15206 suffix!1421))))))

(assert (= (and d!532060 c!284128) b!1741377))

(assert (= (and d!532060 (not c!284128)) b!1741378))

(assert (= (and d!532060 res!782871) b!1741379))

(assert (= (and b!1741379 res!782870) b!1741380))

(declare-fun m!2152489 () Bool)

(assert (=> b!1741378 m!2152489))

(declare-fun m!2152491 () Bool)

(assert (=> d!532060 m!2152491))

(declare-fun m!2152493 () Bool)

(assert (=> d!532060 m!2152493))

(declare-fun m!2152495 () Bool)

(assert (=> d!532060 m!2152495))

(declare-fun m!2152497 () Bool)

(assert (=> b!1741379 m!2152497))

(declare-fun m!2152499 () Bool)

(assert (=> b!1741379 m!2152499))

(declare-fun m!2152501 () Bool)

(assert (=> b!1741379 m!2152501))

(assert (=> b!1741037 d!532060))

(declare-fun d!532062 () Bool)

(declare-fun list!7740 (Conc!6363) List!19199)

(assert (=> d!532062 (= (list!7736 (charsOf!2056 (_1!10793 lt!671314))) (list!7740 (c!284079 (charsOf!2056 (_1!10793 lt!671314)))))))

(declare-fun bs!403021 () Bool)

(assert (= bs!403021 d!532062))

(declare-fun m!2152503 () Bool)

(assert (=> bs!403021 m!2152503))

(assert (=> b!1741037 d!532062))

(declare-fun d!532064 () Bool)

(assert (=> d!532064 (= (get!5760 lt!671306) (v!25269 lt!671306))))

(assert (=> b!1741037 d!532064))

(declare-fun b!1741382 () Bool)

(declare-fun res!782875 () Bool)

(declare-fun e!1114547 () Bool)

(assert (=> b!1741382 (=> (not res!782875) (not e!1114547))))

(assert (=> b!1741382 (= res!782875 (= (head!3988 lt!671310) (head!3988 (++!5232 lt!671310 (_2!10793 lt!671314)))))))

(declare-fun b!1741384 () Bool)

(declare-fun e!1114549 () Bool)

(assert (=> b!1741384 (= e!1114549 (>= (size!15206 (++!5232 lt!671310 (_2!10793 lt!671314))) (size!15206 lt!671310)))))

(declare-fun b!1741383 () Bool)

(assert (=> b!1741383 (= e!1114547 (isPrefix!1648 (tail!2599 lt!671310) (tail!2599 (++!5232 lt!671310 (_2!10793 lt!671314)))))))

(declare-fun d!532066 () Bool)

(assert (=> d!532066 e!1114549))

(declare-fun res!782874 () Bool)

(assert (=> d!532066 (=> res!782874 e!1114549)))

(declare-fun lt!671513 () Bool)

(assert (=> d!532066 (= res!782874 (not lt!671513))))

(declare-fun e!1114548 () Bool)

(assert (=> d!532066 (= lt!671513 e!1114548)))

(declare-fun res!782872 () Bool)

(assert (=> d!532066 (=> res!782872 e!1114548)))

(assert (=> d!532066 (= res!782872 ((_ is Nil!19129) lt!671310))))

(assert (=> d!532066 (= (isPrefix!1648 lt!671310 (++!5232 lt!671310 (_2!10793 lt!671314))) lt!671513)))

(declare-fun b!1741381 () Bool)

(assert (=> b!1741381 (= e!1114548 e!1114547)))

(declare-fun res!782873 () Bool)

(assert (=> b!1741381 (=> (not res!782873) (not e!1114547))))

(assert (=> b!1741381 (= res!782873 (not ((_ is Nil!19129) (++!5232 lt!671310 (_2!10793 lt!671314)))))))

(assert (= (and d!532066 (not res!782872)) b!1741381))

(assert (= (and b!1741381 res!782873) b!1741382))

(assert (= (and b!1741382 res!782875) b!1741383))

(assert (= (and d!532066 (not res!782874)) b!1741384))

(assert (=> b!1741382 m!2152171))

(assert (=> b!1741382 m!2152025))

(declare-fun m!2152505 () Bool)

(assert (=> b!1741382 m!2152505))

(assert (=> b!1741384 m!2152025))

(declare-fun m!2152507 () Bool)

(assert (=> b!1741384 m!2152507))

(assert (=> b!1741384 m!2152177))

(assert (=> b!1741383 m!2152179))

(assert (=> b!1741383 m!2152025))

(declare-fun m!2152509 () Bool)

(assert (=> b!1741383 m!2152509))

(assert (=> b!1741383 m!2152179))

(assert (=> b!1741383 m!2152509))

(declare-fun m!2152511 () Bool)

(assert (=> b!1741383 m!2152511))

(assert (=> b!1741037 d!532066))

(declare-fun b!1741386 () Bool)

(declare-fun res!782879 () Bool)

(declare-fun e!1114550 () Bool)

(assert (=> b!1741386 (=> (not res!782879) (not e!1114550))))

(assert (=> b!1741386 (= res!782879 (= (head!3988 lt!671307) (head!3988 lt!671309)))))

(declare-fun b!1741388 () Bool)

(declare-fun e!1114552 () Bool)

(assert (=> b!1741388 (= e!1114552 (>= (size!15206 lt!671309) (size!15206 lt!671307)))))

(declare-fun b!1741387 () Bool)

(assert (=> b!1741387 (= e!1114550 (isPrefix!1648 (tail!2599 lt!671307) (tail!2599 lt!671309)))))

(declare-fun d!532068 () Bool)

(assert (=> d!532068 e!1114552))

(declare-fun res!782878 () Bool)

(assert (=> d!532068 (=> res!782878 e!1114552)))

(declare-fun lt!671514 () Bool)

(assert (=> d!532068 (= res!782878 (not lt!671514))))

(declare-fun e!1114551 () Bool)

(assert (=> d!532068 (= lt!671514 e!1114551)))

(declare-fun res!782876 () Bool)

(assert (=> d!532068 (=> res!782876 e!1114551)))

(assert (=> d!532068 (= res!782876 ((_ is Nil!19129) lt!671307))))

(assert (=> d!532068 (= (isPrefix!1648 lt!671307 lt!671309) lt!671514)))

(declare-fun b!1741385 () Bool)

(assert (=> b!1741385 (= e!1114551 e!1114550)))

(declare-fun res!782877 () Bool)

(assert (=> b!1741385 (=> (not res!782877) (not e!1114550))))

(assert (=> b!1741385 (= res!782877 (not ((_ is Nil!19129) lt!671309)))))

(assert (= (and d!532068 (not res!782876)) b!1741385))

(assert (= (and b!1741385 res!782877) b!1741386))

(assert (= (and b!1741386 res!782879) b!1741387))

(assert (= (and d!532068 (not res!782878)) b!1741388))

(declare-fun m!2152513 () Bool)

(assert (=> b!1741386 m!2152513))

(assert (=> b!1741386 m!2152173))

(assert (=> b!1741388 m!2152175))

(assert (=> b!1741388 m!2152499))

(declare-fun m!2152515 () Bool)

(assert (=> b!1741387 m!2152515))

(assert (=> b!1741387 m!2152181))

(assert (=> b!1741387 m!2152515))

(assert (=> b!1741387 m!2152181))

(declare-fun m!2152517 () Bool)

(assert (=> b!1741387 m!2152517))

(assert (=> b!1741037 d!532068))

(declare-fun b!1741401 () Bool)

(declare-fun e!1114562 () Bool)

(declare-fun e!1114563 () Bool)

(assert (=> b!1741401 (= e!1114562 e!1114563)))

(declare-fun res!782885 () Bool)

(assert (=> b!1741401 (=> (not res!782885) (not e!1114563))))

(declare-fun lt!671522 () Option!3838)

(assert (=> b!1741401 (= res!782885 (contains!3429 rules!3447 (get!5759 lt!671522)))))

(declare-fun b!1741403 () Bool)

(declare-fun lt!671523 () Unit!33199)

(declare-fun lt!671521 () Unit!33199)

(assert (=> b!1741403 (= lt!671523 lt!671521)))

(assert (=> b!1741403 (rulesInvariant!2705 thiss!24550 (t!161868 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!162 (LexerInterface!3036 Rule!6614 List!19201) Unit!33199)

(assert (=> b!1741403 (= lt!671521 (lemmaInvariantOnRulesThenOnTail!162 thiss!24550 (h!24532 rules!3447) (t!161868 rules!3447)))))

(declare-fun e!1114561 () Option!3838)

(assert (=> b!1741403 (= e!1114561 (getRuleFromTag!457 thiss!24550 (t!161868 rules!3447) (tag!3745 (rule!5409 (_1!10793 lt!671314)))))))

(declare-fun b!1741404 () Bool)

(assert (=> b!1741404 (= e!1114563 (= (tag!3745 (get!5759 lt!671522)) (tag!3745 (rule!5409 (_1!10793 lt!671314)))))))

(declare-fun b!1741405 () Bool)

(declare-fun e!1114564 () Option!3838)

(assert (=> b!1741405 (= e!1114564 e!1114561)))

(declare-fun c!284134 () Bool)

(assert (=> b!1741405 (= c!284134 (and ((_ is Cons!19131) rules!3447) (not (= (tag!3745 (h!24532 rules!3447)) (tag!3745 (rule!5409 (_1!10793 lt!671314)))))))))

(declare-fun b!1741406 () Bool)

(assert (=> b!1741406 (= e!1114561 None!3837)))

(declare-fun b!1741402 () Bool)

(assert (=> b!1741402 (= e!1114564 (Some!3837 (h!24532 rules!3447)))))

(declare-fun d!532070 () Bool)

(assert (=> d!532070 e!1114562))

(declare-fun res!782884 () Bool)

(assert (=> d!532070 (=> res!782884 e!1114562)))

(assert (=> d!532070 (= res!782884 (isEmpty!12046 lt!671522))))

(assert (=> d!532070 (= lt!671522 e!1114564)))

(declare-fun c!284133 () Bool)

(assert (=> d!532070 (= c!284133 (and ((_ is Cons!19131) rules!3447) (= (tag!3745 (h!24532 rules!3447)) (tag!3745 (rule!5409 (_1!10793 lt!671314))))))))

(assert (=> d!532070 (rulesInvariant!2705 thiss!24550 rules!3447)))

(assert (=> d!532070 (= (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 (_1!10793 lt!671314)))) lt!671522)))

(assert (= (and d!532070 c!284133) b!1741402))

(assert (= (and d!532070 (not c!284133)) b!1741405))

(assert (= (and b!1741405 c!284134) b!1741403))

(assert (= (and b!1741405 (not c!284134)) b!1741406))

(assert (= (and d!532070 (not res!782884)) b!1741401))

(assert (= (and b!1741401 res!782885) b!1741404))

(declare-fun m!2152519 () Bool)

(assert (=> b!1741401 m!2152519))

(assert (=> b!1741401 m!2152519))

(declare-fun m!2152521 () Bool)

(assert (=> b!1741401 m!2152521))

(declare-fun m!2152523 () Bool)

(assert (=> b!1741403 m!2152523))

(declare-fun m!2152525 () Bool)

(assert (=> b!1741403 m!2152525))

(declare-fun m!2152527 () Bool)

(assert (=> b!1741403 m!2152527))

(assert (=> b!1741404 m!2152519))

(declare-fun m!2152529 () Bool)

(assert (=> d!532070 m!2152529))

(assert (=> d!532070 m!2152015))

(assert (=> b!1741037 d!532070))

(declare-fun d!532072 () Bool)

(declare-fun e!1114567 () Bool)

(assert (=> d!532072 e!1114567))

(declare-fun res!782890 () Bool)

(assert (=> d!532072 (=> (not res!782890) (not e!1114567))))

(assert (=> d!532072 (= res!782890 (isDefined!3181 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 (_1!10793 lt!671314))))))))

(declare-fun lt!671526 () Unit!33199)

(declare-fun choose!10722 (LexerInterface!3036 List!19201 List!19199 Token!6380) Unit!33199)

(assert (=> d!532072 (= lt!671526 (choose!10722 thiss!24550 rules!3447 lt!671309 (_1!10793 lt!671314)))))

(assert (=> d!532072 (rulesInvariant!2705 thiss!24550 rules!3447)))

(assert (=> d!532072 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!457 thiss!24550 rules!3447 lt!671309 (_1!10793 lt!671314)) lt!671526)))

(declare-fun b!1741411 () Bool)

(declare-fun res!782891 () Bool)

(assert (=> b!1741411 (=> (not res!782891) (not e!1114567))))

(assert (=> b!1741411 (= res!782891 (matchR!2209 (regex!3407 (get!5759 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 (_1!10793 lt!671314)))))) (list!7736 (charsOf!2056 (_1!10793 lt!671314)))))))

(declare-fun b!1741412 () Bool)

(assert (=> b!1741412 (= e!1114567 (= (rule!5409 (_1!10793 lt!671314)) (get!5759 (getRuleFromTag!457 thiss!24550 rules!3447 (tag!3745 (rule!5409 (_1!10793 lt!671314)))))))))

(assert (= (and d!532072 res!782890) b!1741411))

(assert (= (and b!1741411 res!782891) b!1741412))

(assert (=> d!532072 m!2152041))

(assert (=> d!532072 m!2152041))

(declare-fun m!2152531 () Bool)

(assert (=> d!532072 m!2152531))

(declare-fun m!2152533 () Bool)

(assert (=> d!532072 m!2152533))

(assert (=> d!532072 m!2152015))

(assert (=> b!1741411 m!2151977))

(declare-fun m!2152535 () Bool)

(assert (=> b!1741411 m!2152535))

(assert (=> b!1741411 m!2152041))

(assert (=> b!1741411 m!2151975))

(assert (=> b!1741411 m!2151977))

(assert (=> b!1741411 m!2151975))

(assert (=> b!1741411 m!2152041))

(declare-fun m!2152537 () Bool)

(assert (=> b!1741411 m!2152537))

(assert (=> b!1741412 m!2152041))

(assert (=> b!1741412 m!2152041))

(assert (=> b!1741412 m!2152537))

(assert (=> b!1741037 d!532072))

(declare-fun d!532074 () Bool)

(assert (=> d!532074 (= (get!5760 lt!671308) (v!25269 lt!671308))))

(assert (=> b!1741035 d!532074))

(declare-fun b!1741441 () Bool)

(declare-fun e!1114583 () Bool)

(declare-fun lt!671529 () Bool)

(assert (=> b!1741441 (= e!1114583 (not lt!671529))))

(declare-fun b!1741442 () Bool)

(declare-fun e!1114588 () Bool)

(declare-fun call!110078 () Bool)

(assert (=> b!1741442 (= e!1114588 (= lt!671529 call!110078))))

(declare-fun b!1741443 () Bool)

(declare-fun e!1114582 () Bool)

(declare-fun derivativeStep!1202 (Regex!4735 C!9644) Regex!4735)

(assert (=> b!1741443 (= e!1114582 (matchR!2209 (derivativeStep!1202 (regex!3407 rule!422) (head!3988 lt!671307)) (tail!2599 lt!671307)))))

(declare-fun d!532076 () Bool)

(assert (=> d!532076 e!1114588))

(declare-fun c!284141 () Bool)

(assert (=> d!532076 (= c!284141 ((_ is EmptyExpr!4735) (regex!3407 rule!422)))))

(assert (=> d!532076 (= lt!671529 e!1114582)))

(declare-fun c!284142 () Bool)

(assert (=> d!532076 (= c!284142 (isEmpty!12041 lt!671307))))

(declare-fun validRegex!1908 (Regex!4735) Bool)

(assert (=> d!532076 (validRegex!1908 (regex!3407 rule!422))))

(assert (=> d!532076 (= (matchR!2209 (regex!3407 rule!422) lt!671307) lt!671529)))

(declare-fun b!1741444 () Bool)

(declare-fun e!1114587 () Bool)

(assert (=> b!1741444 (= e!1114587 (= (head!3988 lt!671307) (c!284078 (regex!3407 rule!422))))))

(declare-fun b!1741445 () Bool)

(declare-fun res!782910 () Bool)

(assert (=> b!1741445 (=> (not res!782910) (not e!1114587))))

(assert (=> b!1741445 (= res!782910 (isEmpty!12041 (tail!2599 lt!671307)))))

(declare-fun b!1741446 () Bool)

(declare-fun res!782911 () Bool)

(assert (=> b!1741446 (=> (not res!782911) (not e!1114587))))

(assert (=> b!1741446 (= res!782911 (not call!110078))))

(declare-fun b!1741447 () Bool)

(declare-fun res!782909 () Bool)

(declare-fun e!1114585 () Bool)

(assert (=> b!1741447 (=> res!782909 e!1114585)))

(assert (=> b!1741447 (= res!782909 e!1114587)))

(declare-fun res!782912 () Bool)

(assert (=> b!1741447 (=> (not res!782912) (not e!1114587))))

(assert (=> b!1741447 (= res!782912 lt!671529)))

(declare-fun b!1741448 () Bool)

(declare-fun e!1114586 () Bool)

(assert (=> b!1741448 (= e!1114585 e!1114586)))

(declare-fun res!782908 () Bool)

(assert (=> b!1741448 (=> (not res!782908) (not e!1114586))))

(assert (=> b!1741448 (= res!782908 (not lt!671529))))

(declare-fun b!1741449 () Bool)

(declare-fun res!782915 () Bool)

(assert (=> b!1741449 (=> res!782915 e!1114585)))

(assert (=> b!1741449 (= res!782915 (not ((_ is ElementMatch!4735) (regex!3407 rule!422))))))

(assert (=> b!1741449 (= e!1114583 e!1114585)))

(declare-fun bm!110073 () Bool)

(assert (=> bm!110073 (= call!110078 (isEmpty!12041 lt!671307))))

(declare-fun b!1741450 () Bool)

(declare-fun e!1114584 () Bool)

(assert (=> b!1741450 (= e!1114586 e!1114584)))

(declare-fun res!782914 () Bool)

(assert (=> b!1741450 (=> res!782914 e!1114584)))

(assert (=> b!1741450 (= res!782914 call!110078)))

(declare-fun b!1741451 () Bool)

(declare-fun nullable!1434 (Regex!4735) Bool)

(assert (=> b!1741451 (= e!1114582 (nullable!1434 (regex!3407 rule!422)))))

(declare-fun b!1741452 () Bool)

(declare-fun res!782913 () Bool)

(assert (=> b!1741452 (=> res!782913 e!1114584)))

(assert (=> b!1741452 (= res!782913 (not (isEmpty!12041 (tail!2599 lt!671307))))))

(declare-fun b!1741453 () Bool)

(assert (=> b!1741453 (= e!1114584 (not (= (head!3988 lt!671307) (c!284078 (regex!3407 rule!422)))))))

(declare-fun b!1741454 () Bool)

(assert (=> b!1741454 (= e!1114588 e!1114583)))

(declare-fun c!284143 () Bool)

(assert (=> b!1741454 (= c!284143 ((_ is EmptyLang!4735) (regex!3407 rule!422)))))

(assert (= (and d!532076 c!284142) b!1741451))

(assert (= (and d!532076 (not c!284142)) b!1741443))

(assert (= (and d!532076 c!284141) b!1741442))

(assert (= (and d!532076 (not c!284141)) b!1741454))

(assert (= (and b!1741454 c!284143) b!1741441))

(assert (= (and b!1741454 (not c!284143)) b!1741449))

(assert (= (and b!1741449 (not res!782915)) b!1741447))

(assert (= (and b!1741447 res!782912) b!1741446))

(assert (= (and b!1741446 res!782911) b!1741445))

(assert (= (and b!1741445 res!782910) b!1741444))

(assert (= (and b!1741447 (not res!782909)) b!1741448))

(assert (= (and b!1741448 res!782908) b!1741450))

(assert (= (and b!1741450 (not res!782914)) b!1741452))

(assert (= (and b!1741452 (not res!782913)) b!1741453))

(assert (= (or b!1741442 b!1741450 b!1741446) bm!110073))

(assert (=> b!1741443 m!2152513))

(assert (=> b!1741443 m!2152513))

(declare-fun m!2152539 () Bool)

(assert (=> b!1741443 m!2152539))

(assert (=> b!1741443 m!2152515))

(assert (=> b!1741443 m!2152539))

(assert (=> b!1741443 m!2152515))

(declare-fun m!2152541 () Bool)

(assert (=> b!1741443 m!2152541))

(assert (=> b!1741445 m!2152515))

(assert (=> b!1741445 m!2152515))

(declare-fun m!2152543 () Bool)

(assert (=> b!1741445 m!2152543))

(declare-fun m!2152545 () Bool)

(assert (=> b!1741451 m!2152545))

(assert (=> b!1741453 m!2152513))

(assert (=> b!1741452 m!2152515))

(assert (=> b!1741452 m!2152515))

(assert (=> b!1741452 m!2152543))

(declare-fun m!2152547 () Bool)

(assert (=> bm!110073 m!2152547))

(assert (=> d!532076 m!2152547))

(declare-fun m!2152549 () Bool)

(assert (=> d!532076 m!2152549))

(assert (=> b!1741444 m!2152513))

(assert (=> b!1741046 d!532076))

(declare-fun d!532078 () Bool)

(declare-fun res!782920 () Bool)

(declare-fun e!1114591 () Bool)

(assert (=> d!532078 (=> (not res!782920) (not e!1114591))))

(assert (=> d!532078 (= res!782920 (validRegex!1908 (regex!3407 rule!422)))))

(assert (=> d!532078 (= (ruleValid!906 thiss!24550 rule!422) e!1114591)))

(declare-fun b!1741459 () Bool)

(declare-fun res!782921 () Bool)

(assert (=> b!1741459 (=> (not res!782921) (not e!1114591))))

(assert (=> b!1741459 (= res!782921 (not (nullable!1434 (regex!3407 rule!422))))))

(declare-fun b!1741460 () Bool)

(assert (=> b!1741460 (= e!1114591 (not (= (tag!3745 rule!422) (String!21818 ""))))))

(assert (= (and d!532078 res!782920) b!1741459))

(assert (= (and b!1741459 res!782921) b!1741460))

(assert (=> d!532078 m!2152549))

(assert (=> b!1741459 m!2152545))

(assert (=> b!1741046 d!532078))

(declare-fun d!532080 () Bool)

(assert (=> d!532080 (ruleValid!906 thiss!24550 rule!422)))

(declare-fun lt!671532 () Unit!33199)

(declare-fun choose!10723 (LexerInterface!3036 Rule!6614 List!19201) Unit!33199)

(assert (=> d!532080 (= lt!671532 (choose!10723 thiss!24550 rule!422 rules!3447))))

(assert (=> d!532080 (contains!3429 rules!3447 rule!422)))

(assert (=> d!532080 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!430 thiss!24550 rule!422 rules!3447) lt!671532)))

(declare-fun bs!403022 () Bool)

(assert (= bs!403022 d!532080))

(assert (=> bs!403022 m!2151971))

(declare-fun m!2152551 () Bool)

(assert (=> bs!403022 m!2152551))

(assert (=> bs!403022 m!2151983))

(assert (=> b!1741046 d!532080))

(declare-fun d!532082 () Bool)

(assert (=> d!532082 (= (inv!24789 (tag!3745 (rule!5409 token!523))) (= (mod (str.len (value!106771 (tag!3745 (rule!5409 token!523)))) 2) 0))))

(assert (=> b!1741039 d!532082))

(declare-fun d!532084 () Bool)

(declare-fun res!782924 () Bool)

(declare-fun e!1114594 () Bool)

(assert (=> d!532084 (=> (not res!782924) (not e!1114594))))

(declare-fun semiInverseModEq!1347 (Int Int) Bool)

(assert (=> d!532084 (= res!782924 (semiInverseModEq!1347 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (toValue!4914 (transformation!3407 (rule!5409 token!523)))))))

(assert (=> d!532084 (= (inv!24792 (transformation!3407 (rule!5409 token!523))) e!1114594)))

(declare-fun b!1741463 () Bool)

(declare-fun equivClasses!1288 (Int Int) Bool)

(assert (=> b!1741463 (= e!1114594 (equivClasses!1288 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (toValue!4914 (transformation!3407 (rule!5409 token!523)))))))

(assert (= (and d!532084 res!782924) b!1741463))

(declare-fun m!2152553 () Bool)

(assert (=> d!532084 m!2152553))

(declare-fun m!2152555 () Bool)

(assert (=> b!1741463 m!2152555))

(assert (=> b!1741039 d!532084))

(declare-fun d!532086 () Bool)

(declare-fun res!782929 () Bool)

(declare-fun e!1114597 () Bool)

(assert (=> d!532086 (=> (not res!782929) (not e!1114597))))

(assert (=> d!532086 (= res!782929 (not (isEmpty!12041 (originalCharacters!4221 token!523))))))

(assert (=> d!532086 (= (inv!24793 token!523) e!1114597)))

(declare-fun b!1741468 () Bool)

(declare-fun res!782930 () Bool)

(assert (=> b!1741468 (=> (not res!782930) (not e!1114597))))

(assert (=> b!1741468 (= res!782930 (= (originalCharacters!4221 token!523) (list!7736 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (value!106772 token!523)))))))

(declare-fun b!1741469 () Bool)

(assert (=> b!1741469 (= e!1114597 (= (size!15204 token!523) (size!15206 (originalCharacters!4221 token!523))))))

(assert (= (and d!532086 res!782929) b!1741468))

(assert (= (and b!1741468 res!782930) b!1741469))

(declare-fun b_lambda!55789 () Bool)

(assert (=> (not b_lambda!55789) (not b!1741468)))

(declare-fun t!161893 () Bool)

(declare-fun tb!104125 () Bool)

(assert (=> (and b!1741047 (= (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toChars!4773 (transformation!3407 (rule!5409 token!523)))) t!161893) tb!104125))

(declare-fun b!1741470 () Bool)

(declare-fun e!1114598 () Bool)

(declare-fun tp!495813 () Bool)

(assert (=> b!1741470 (= e!1114598 (and (inv!24796 (c!284079 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (value!106772 token!523)))) tp!495813))))

(declare-fun result!125238 () Bool)

(assert (=> tb!104125 (= result!125238 (and (inv!24797 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (value!106772 token!523))) e!1114598))))

(assert (= tb!104125 b!1741470))

(declare-fun m!2152557 () Bool)

(assert (=> b!1741470 m!2152557))

(declare-fun m!2152559 () Bool)

(assert (=> tb!104125 m!2152559))

(assert (=> b!1741468 t!161893))

(declare-fun b_and!129445 () Bool)

(assert (= b_and!129423 (and (=> t!161893 result!125238) b_and!129445)))

(declare-fun t!161895 () Bool)

(declare-fun tb!104127 () Bool)

(assert (=> (and b!1741031 (= (toChars!4773 (transformation!3407 (rule!5409 token!523))) (toChars!4773 (transformation!3407 (rule!5409 token!523)))) t!161895) tb!104127))

(declare-fun result!125240 () Bool)

(assert (= result!125240 result!125238))

(assert (=> b!1741468 t!161895))

(declare-fun b_and!129447 () Bool)

(assert (= b_and!129425 (and (=> t!161895 result!125240) b_and!129447)))

(declare-fun t!161897 () Bool)

(declare-fun tb!104129 () Bool)

(assert (=> (and b!1741041 (= (toChars!4773 (transformation!3407 rule!422)) (toChars!4773 (transformation!3407 (rule!5409 token!523)))) t!161897) tb!104129))

(declare-fun result!125242 () Bool)

(assert (= result!125242 result!125238))

(assert (=> b!1741468 t!161897))

(declare-fun b_and!129449 () Bool)

(assert (= b_and!129427 (and (=> t!161897 result!125242) b_and!129449)))

(declare-fun m!2152561 () Bool)

(assert (=> d!532086 m!2152561))

(declare-fun m!2152563 () Bool)

(assert (=> b!1741468 m!2152563))

(assert (=> b!1741468 m!2152563))

(declare-fun m!2152565 () Bool)

(assert (=> b!1741468 m!2152565))

(declare-fun m!2152567 () Bool)

(assert (=> b!1741469 m!2152567))

(assert (=> start!171370 d!532086))

(declare-fun d!532088 () Bool)

(declare-fun c!284147 () Bool)

(assert (=> d!532088 (= c!284147 (isEmpty!12041 (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129))))))

(declare-fun e!1114601 () Bool)

(assert (=> d!532088 (= (prefixMatch!620 (rulesRegex!765 thiss!24550 rules!3447) (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129))) e!1114601)))

(declare-fun b!1741475 () Bool)

(declare-fun lostCause!544 (Regex!4735) Bool)

(assert (=> b!1741475 (= e!1114601 (not (lostCause!544 (rulesRegex!765 thiss!24550 rules!3447))))))

(declare-fun b!1741476 () Bool)

(assert (=> b!1741476 (= e!1114601 (prefixMatch!620 (derivativeStep!1202 (rulesRegex!765 thiss!24550 rules!3447) (head!3988 (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129)))) (tail!2599 (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129)))))))

(assert (= (and d!532088 c!284147) b!1741475))

(assert (= (and d!532088 (not c!284147)) b!1741476))

(assert (=> d!532088 m!2152021))

(declare-fun m!2152569 () Bool)

(assert (=> d!532088 m!2152569))

(assert (=> b!1741475 m!2152017))

(declare-fun m!2152571 () Bool)

(assert (=> b!1741475 m!2152571))

(assert (=> b!1741476 m!2152021))

(declare-fun m!2152573 () Bool)

(assert (=> b!1741476 m!2152573))

(assert (=> b!1741476 m!2152017))

(assert (=> b!1741476 m!2152573))

(declare-fun m!2152575 () Bool)

(assert (=> b!1741476 m!2152575))

(assert (=> b!1741476 m!2152021))

(declare-fun m!2152577 () Bool)

(assert (=> b!1741476 m!2152577))

(assert (=> b!1741476 m!2152575))

(assert (=> b!1741476 m!2152577))

(declare-fun m!2152579 () Bool)

(assert (=> b!1741476 m!2152579))

(assert (=> b!1741028 d!532088))

(declare-fun d!532090 () Bool)

(declare-fun lt!671535 () Unit!33199)

(declare-fun lemma!357 (List!19201 LexerInterface!3036 List!19201) Unit!33199)

(assert (=> d!532090 (= lt!671535 (lemma!357 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69602 () Int)

(declare-datatypes ((List!19206 0))(
  ( (Nil!19136) (Cons!19136 (h!24537 Regex!4735) (t!161905 List!19206)) )
))
(declare-fun generalisedUnion!365 (List!19206) Regex!4735)

(declare-fun map!3940 (List!19201 Int) List!19206)

(assert (=> d!532090 (= (rulesRegex!765 thiss!24550 rules!3447) (generalisedUnion!365 (map!3940 rules!3447 lambda!69602)))))

(declare-fun bs!403023 () Bool)

(assert (= bs!403023 d!532090))

(declare-fun m!2152581 () Bool)

(assert (=> bs!403023 m!2152581))

(declare-fun m!2152583 () Bool)

(assert (=> bs!403023 m!2152583))

(assert (=> bs!403023 m!2152583))

(declare-fun m!2152585 () Bool)

(assert (=> bs!403023 m!2152585))

(assert (=> b!1741028 d!532090))

(declare-fun lt!671536 () List!19199)

(declare-fun e!1114602 () Bool)

(declare-fun b!1741480 () Bool)

(assert (=> b!1741480 (= e!1114602 (or (not (= (Cons!19129 (head!3988 suffix!1421) Nil!19129) Nil!19129)) (= lt!671536 lt!671307)))))

(declare-fun b!1741478 () Bool)

(declare-fun e!1114603 () List!19199)

(assert (=> b!1741478 (= e!1114603 (Cons!19129 (h!24530 lt!671307) (++!5232 (t!161866 lt!671307) (Cons!19129 (head!3988 suffix!1421) Nil!19129))))))

(declare-fun b!1741477 () Bool)

(assert (=> b!1741477 (= e!1114603 (Cons!19129 (head!3988 suffix!1421) Nil!19129))))

(declare-fun d!532092 () Bool)

(assert (=> d!532092 e!1114602))

(declare-fun res!782932 () Bool)

(assert (=> d!532092 (=> (not res!782932) (not e!1114602))))

(assert (=> d!532092 (= res!782932 (= (content!2743 lt!671536) ((_ map or) (content!2743 lt!671307) (content!2743 (Cons!19129 (head!3988 suffix!1421) Nil!19129)))))))

(assert (=> d!532092 (= lt!671536 e!1114603)))

(declare-fun c!284148 () Bool)

(assert (=> d!532092 (= c!284148 ((_ is Nil!19129) lt!671307))))

(assert (=> d!532092 (= (++!5232 lt!671307 (Cons!19129 (head!3988 suffix!1421) Nil!19129)) lt!671536)))

(declare-fun b!1741479 () Bool)

(declare-fun res!782931 () Bool)

(assert (=> b!1741479 (=> (not res!782931) (not e!1114602))))

(assert (=> b!1741479 (= res!782931 (= (size!15206 lt!671536) (+ (size!15206 lt!671307) (size!15206 (Cons!19129 (head!3988 suffix!1421) Nil!19129)))))))

(assert (= (and d!532092 c!284148) b!1741477))

(assert (= (and d!532092 (not c!284148)) b!1741478))

(assert (= (and d!532092 res!782932) b!1741479))

(assert (= (and b!1741479 res!782931) b!1741480))

(declare-fun m!2152587 () Bool)

(assert (=> b!1741478 m!2152587))

(declare-fun m!2152589 () Bool)

(assert (=> d!532092 m!2152589))

(assert (=> d!532092 m!2152493))

(declare-fun m!2152591 () Bool)

(assert (=> d!532092 m!2152591))

(declare-fun m!2152593 () Bool)

(assert (=> b!1741479 m!2152593))

(assert (=> b!1741479 m!2152499))

(declare-fun m!2152595 () Bool)

(assert (=> b!1741479 m!2152595))

(assert (=> b!1741028 d!532092))

(declare-fun d!532094 () Bool)

(assert (=> d!532094 (= (head!3988 suffix!1421) (h!24530 suffix!1421))))

(assert (=> b!1741028 d!532094))

(declare-fun d!532096 () Bool)

(assert (=> d!532096 (= (isEmpty!12041 suffix!1421) ((_ is Nil!19129) suffix!1421))))

(assert (=> b!1741027 d!532096))

(declare-fun d!532098 () Bool)

(assert (=> d!532098 (= (isEmpty!12041 (_2!10793 lt!671316)) ((_ is Nil!19129) (_2!10793 lt!671316)))))

(assert (=> b!1741048 d!532098))

(declare-fun d!532100 () Bool)

(declare-fun lt!671539 () Bool)

(declare-fun content!2744 (List!19201) (InoxSet Rule!6614))

(assert (=> d!532100 (= lt!671539 (select (content!2744 rules!3447) rule!422))))

(declare-fun e!1114609 () Bool)

(assert (=> d!532100 (= lt!671539 e!1114609)))

(declare-fun res!782937 () Bool)

(assert (=> d!532100 (=> (not res!782937) (not e!1114609))))

(assert (=> d!532100 (= res!782937 ((_ is Cons!19131) rules!3447))))

(assert (=> d!532100 (= (contains!3429 rules!3447 rule!422) lt!671539)))

(declare-fun b!1741485 () Bool)

(declare-fun e!1114608 () Bool)

(assert (=> b!1741485 (= e!1114609 e!1114608)))

(declare-fun res!782938 () Bool)

(assert (=> b!1741485 (=> res!782938 e!1114608)))

(assert (=> b!1741485 (= res!782938 (= (h!24532 rules!3447) rule!422))))

(declare-fun b!1741486 () Bool)

(assert (=> b!1741486 (= e!1114608 (contains!3429 (t!161868 rules!3447) rule!422))))

(assert (= (and d!532100 res!782937) b!1741485))

(assert (= (and b!1741485 (not res!782938)) b!1741486))

(declare-fun m!2152597 () Bool)

(assert (=> d!532100 m!2152597))

(declare-fun m!2152599 () Bool)

(assert (=> d!532100 m!2152599))

(declare-fun m!2152601 () Bool)

(assert (=> b!1741486 m!2152601))

(assert (=> b!1741042 d!532100))

(declare-fun d!532102 () Bool)

(declare-fun res!782941 () Bool)

(declare-fun e!1114612 () Bool)

(assert (=> d!532102 (=> (not res!782941) (not e!1114612))))

(declare-fun rulesValid!1274 (LexerInterface!3036 List!19201) Bool)

(assert (=> d!532102 (= res!782941 (rulesValid!1274 thiss!24550 rules!3447))))

(assert (=> d!532102 (= (rulesInvariant!2705 thiss!24550 rules!3447) e!1114612)))

(declare-fun b!1741489 () Bool)

(declare-datatypes ((List!19207 0))(
  ( (Nil!19137) (Cons!19137 (h!24538 String!21817) (t!161906 List!19207)) )
))
(declare-fun noDuplicateTag!1274 (LexerInterface!3036 List!19201 List!19207) Bool)

(assert (=> b!1741489 (= e!1114612 (noDuplicateTag!1274 thiss!24550 rules!3447 Nil!19137))))

(assert (= (and d!532102 res!782941) b!1741489))

(declare-fun m!2152603 () Bool)

(assert (=> d!532102 m!2152603))

(declare-fun m!2152605 () Bool)

(assert (=> b!1741489 m!2152605))

(assert (=> b!1741040 d!532102))

(declare-fun b!1741500 () Bool)

(declare-fun e!1114620 () Bool)

(declare-fun e!1114619 () Bool)

(assert (=> b!1741500 (= e!1114620 e!1114619)))

(declare-fun c!284153 () Bool)

(assert (=> b!1741500 (= c!284153 ((_ is IntegerValue!10492) (value!106772 token!523)))))

(declare-fun b!1741501 () Bool)

(declare-fun res!782944 () Bool)

(declare-fun e!1114621 () Bool)

(assert (=> b!1741501 (=> res!782944 e!1114621)))

(assert (=> b!1741501 (= res!782944 (not ((_ is IntegerValue!10493) (value!106772 token!523))))))

(assert (=> b!1741501 (= e!1114619 e!1114621)))

(declare-fun b!1741502 () Bool)

(declare-fun inv!15 (TokenValue!3497) Bool)

(assert (=> b!1741502 (= e!1114621 (inv!15 (value!106772 token!523)))))

(declare-fun b!1741503 () Bool)

(declare-fun inv!16 (TokenValue!3497) Bool)

(assert (=> b!1741503 (= e!1114620 (inv!16 (value!106772 token!523)))))

(declare-fun d!532104 () Bool)

(declare-fun c!284154 () Bool)

(assert (=> d!532104 (= c!284154 ((_ is IntegerValue!10491) (value!106772 token!523)))))

(assert (=> d!532104 (= (inv!21 (value!106772 token!523)) e!1114620)))

(declare-fun b!1741504 () Bool)

(declare-fun inv!17 (TokenValue!3497) Bool)

(assert (=> b!1741504 (= e!1114619 (inv!17 (value!106772 token!523)))))

(assert (= (and d!532104 c!284154) b!1741503))

(assert (= (and d!532104 (not c!284154)) b!1741500))

(assert (= (and b!1741500 c!284153) b!1741504))

(assert (= (and b!1741500 (not c!284153)) b!1741501))

(assert (= (and b!1741501 (not res!782944)) b!1741502))

(declare-fun m!2152607 () Bool)

(assert (=> b!1741502 m!2152607))

(declare-fun m!2152609 () Bool)

(assert (=> b!1741503 m!2152609))

(declare-fun m!2152611 () Bool)

(assert (=> b!1741504 m!2152611))

(assert (=> b!1741030 d!532104))

(declare-fun d!532106 () Bool)

(assert (=> d!532106 (= (inv!24789 (tag!3745 (h!24532 rules!3447))) (= (mod (str.len (value!106771 (tag!3745 (h!24532 rules!3447)))) 2) 0))))

(assert (=> b!1741044 d!532106))

(declare-fun d!532108 () Bool)

(declare-fun res!782945 () Bool)

(declare-fun e!1114622 () Bool)

(assert (=> d!532108 (=> (not res!782945) (not e!1114622))))

(assert (=> d!532108 (= res!782945 (semiInverseModEq!1347 (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toValue!4914 (transformation!3407 (h!24532 rules!3447)))))))

(assert (=> d!532108 (= (inv!24792 (transformation!3407 (h!24532 rules!3447))) e!1114622)))

(declare-fun b!1741505 () Bool)

(assert (=> b!1741505 (= e!1114622 (equivClasses!1288 (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toValue!4914 (transformation!3407 (h!24532 rules!3447)))))))

(assert (= (and d!532108 res!782945) b!1741505))

(declare-fun m!2152613 () Bool)

(assert (=> d!532108 m!2152613))

(declare-fun m!2152615 () Bool)

(assert (=> b!1741505 m!2152615))

(assert (=> b!1741044 d!532108))

(declare-fun d!532110 () Bool)

(assert (=> d!532110 (= (isDefined!3182 lt!671308) (not (isEmpty!12045 lt!671308)))))

(declare-fun bs!403024 () Bool)

(assert (= bs!403024 d!532110))

(declare-fun m!2152617 () Bool)

(assert (=> bs!403024 m!2152617))

(assert (=> b!1741045 d!532110))

(declare-fun b!1741506 () Bool)

(declare-fun res!782946 () Bool)

(declare-fun e!1114624 () Bool)

(assert (=> b!1741506 (=> (not res!782946) (not e!1114624))))

(declare-fun lt!671543 () Option!3839)

(assert (=> b!1741506 (= res!782946 (matchR!2209 (regex!3407 (rule!5409 (_1!10793 (get!5760 lt!671543)))) (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671543))))))))

(declare-fun b!1741507 () Bool)

(declare-fun e!1114623 () Option!3839)

(declare-fun call!110079 () Option!3839)

(assert (=> b!1741507 (= e!1114623 call!110079)))

(declare-fun d!532112 () Bool)

(declare-fun e!1114625 () Bool)

(assert (=> d!532112 e!1114625))

(declare-fun res!782950 () Bool)

(assert (=> d!532112 (=> res!782950 e!1114625)))

(assert (=> d!532112 (= res!782950 (isEmpty!12045 lt!671543))))

(assert (=> d!532112 (= lt!671543 e!1114623)))

(declare-fun c!284155 () Bool)

(assert (=> d!532112 (= c!284155 (and ((_ is Cons!19131) rules!3447) ((_ is Nil!19131) (t!161868 rules!3447))))))

(declare-fun lt!671540 () Unit!33199)

(declare-fun lt!671542 () Unit!33199)

(assert (=> d!532112 (= lt!671540 lt!671542)))

(assert (=> d!532112 (isPrefix!1648 lt!671307 lt!671307)))

(assert (=> d!532112 (= lt!671542 (lemmaIsPrefixRefl!1099 lt!671307 lt!671307))))

(assert (=> d!532112 (rulesValidInductive!1136 thiss!24550 rules!3447)))

(assert (=> d!532112 (= (maxPrefix!1590 thiss!24550 rules!3447 lt!671307) lt!671543)))

(declare-fun b!1741508 () Bool)

(declare-fun res!782952 () Bool)

(assert (=> b!1741508 (=> (not res!782952) (not e!1114624))))

(assert (=> b!1741508 (= res!782952 (= (++!5232 (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671543)))) (_2!10793 (get!5760 lt!671543))) lt!671307))))

(declare-fun b!1741509 () Bool)

(assert (=> b!1741509 (= e!1114625 e!1114624)))

(declare-fun res!782951 () Bool)

(assert (=> b!1741509 (=> (not res!782951) (not e!1114624))))

(assert (=> b!1741509 (= res!782951 (isDefined!3182 lt!671543))))

(declare-fun bm!110074 () Bool)

(assert (=> bm!110074 (= call!110079 (maxPrefixOneRule!966 thiss!24550 (h!24532 rules!3447) lt!671307))))

(declare-fun b!1741510 () Bool)

(declare-fun res!782947 () Bool)

(assert (=> b!1741510 (=> (not res!782947) (not e!1114624))))

(assert (=> b!1741510 (= res!782947 (< (size!15206 (_2!10793 (get!5760 lt!671543))) (size!15206 lt!671307)))))

(declare-fun b!1741511 () Bool)

(declare-fun lt!671541 () Option!3839)

(declare-fun lt!671544 () Option!3839)

(assert (=> b!1741511 (= e!1114623 (ite (and ((_ is None!3838) lt!671541) ((_ is None!3838) lt!671544)) None!3838 (ite ((_ is None!3838) lt!671544) lt!671541 (ite ((_ is None!3838) lt!671541) lt!671544 (ite (>= (size!15204 (_1!10793 (v!25269 lt!671541))) (size!15204 (_1!10793 (v!25269 lt!671544)))) lt!671541 lt!671544)))))))

(assert (=> b!1741511 (= lt!671541 call!110079)))

(assert (=> b!1741511 (= lt!671544 (maxPrefix!1590 thiss!24550 (t!161868 rules!3447) lt!671307))))

(declare-fun b!1741512 () Bool)

(assert (=> b!1741512 (= e!1114624 (contains!3429 rules!3447 (rule!5409 (_1!10793 (get!5760 lt!671543)))))))

(declare-fun b!1741513 () Bool)

(declare-fun res!782949 () Bool)

(assert (=> b!1741513 (=> (not res!782949) (not e!1114624))))

(assert (=> b!1741513 (= res!782949 (= (value!106772 (_1!10793 (get!5760 lt!671543))) (apply!5212 (transformation!3407 (rule!5409 (_1!10793 (get!5760 lt!671543)))) (seqFromList!2381 (originalCharacters!4221 (_1!10793 (get!5760 lt!671543)))))))))

(declare-fun b!1741514 () Bool)

(declare-fun res!782948 () Bool)

(assert (=> b!1741514 (=> (not res!782948) (not e!1114624))))

(assert (=> b!1741514 (= res!782948 (= (list!7736 (charsOf!2056 (_1!10793 (get!5760 lt!671543)))) (originalCharacters!4221 (_1!10793 (get!5760 lt!671543)))))))

(assert (= (and d!532112 c!284155) b!1741507))

(assert (= (and d!532112 (not c!284155)) b!1741511))

(assert (= (or b!1741507 b!1741511) bm!110074))

(assert (= (and d!532112 (not res!782950)) b!1741509))

(assert (= (and b!1741509 res!782951) b!1741514))

(assert (= (and b!1741514 res!782948) b!1741510))

(assert (= (and b!1741510 res!782947) b!1741508))

(assert (= (and b!1741508 res!782952) b!1741513))

(assert (= (and b!1741513 res!782949) b!1741506))

(assert (= (and b!1741506 res!782946) b!1741512))

(declare-fun m!2152619 () Bool)

(assert (=> b!1741510 m!2152619))

(declare-fun m!2152621 () Bool)

(assert (=> b!1741510 m!2152621))

(assert (=> b!1741510 m!2152499))

(assert (=> b!1741512 m!2152619))

(declare-fun m!2152623 () Bool)

(assert (=> b!1741512 m!2152623))

(declare-fun m!2152625 () Bool)

(assert (=> b!1741511 m!2152625))

(declare-fun m!2152627 () Bool)

(assert (=> bm!110074 m!2152627))

(declare-fun m!2152629 () Bool)

(assert (=> d!532112 m!2152629))

(declare-fun m!2152631 () Bool)

(assert (=> d!532112 m!2152631))

(declare-fun m!2152633 () Bool)

(assert (=> d!532112 m!2152633))

(assert (=> d!532112 m!2152467))

(assert (=> b!1741514 m!2152619))

(declare-fun m!2152635 () Bool)

(assert (=> b!1741514 m!2152635))

(assert (=> b!1741514 m!2152635))

(declare-fun m!2152637 () Bool)

(assert (=> b!1741514 m!2152637))

(declare-fun m!2152639 () Bool)

(assert (=> b!1741509 m!2152639))

(assert (=> b!1741506 m!2152619))

(assert (=> b!1741506 m!2152635))

(assert (=> b!1741506 m!2152635))

(assert (=> b!1741506 m!2152637))

(assert (=> b!1741506 m!2152637))

(declare-fun m!2152641 () Bool)

(assert (=> b!1741506 m!2152641))

(assert (=> b!1741513 m!2152619))

(declare-fun m!2152643 () Bool)

(assert (=> b!1741513 m!2152643))

(assert (=> b!1741513 m!2152643))

(declare-fun m!2152645 () Bool)

(assert (=> b!1741513 m!2152645))

(assert (=> b!1741508 m!2152619))

(assert (=> b!1741508 m!2152635))

(assert (=> b!1741508 m!2152635))

(assert (=> b!1741508 m!2152637))

(assert (=> b!1741508 m!2152637))

(declare-fun m!2152647 () Bool)

(assert (=> b!1741508 m!2152647))

(assert (=> b!1741045 d!532112))

(declare-fun d!532114 () Bool)

(assert (=> d!532114 (= (list!7736 (charsOf!2056 token!523)) (list!7740 (c!284079 (charsOf!2056 token!523))))))

(declare-fun bs!403025 () Bool)

(assert (= bs!403025 d!532114))

(declare-fun m!2152649 () Bool)

(assert (=> bs!403025 m!2152649))

(assert (=> b!1741045 d!532114))

(declare-fun d!532116 () Bool)

(declare-fun lt!671545 () BalanceConc!12670)

(assert (=> d!532116 (= (list!7736 lt!671545) (originalCharacters!4221 token!523))))

(assert (=> d!532116 (= lt!671545 (dynLambda!9046 (toChars!4773 (transformation!3407 (rule!5409 token!523))) (value!106772 token!523)))))

(assert (=> d!532116 (= (charsOf!2056 token!523) lt!671545)))

(declare-fun b_lambda!55791 () Bool)

(assert (=> (not b_lambda!55791) (not d!532116)))

(assert (=> d!532116 t!161893))

(declare-fun b_and!129451 () Bool)

(assert (= b_and!129445 (and (=> t!161893 result!125238) b_and!129451)))

(assert (=> d!532116 t!161895))

(declare-fun b_and!129453 () Bool)

(assert (= b_and!129447 (and (=> t!161895 result!125240) b_and!129453)))

(assert (=> d!532116 t!161897))

(declare-fun b_and!129455 () Bool)

(assert (= b_and!129449 (and (=> t!161897 result!125242) b_and!129455)))

(declare-fun m!2152651 () Bool)

(assert (=> d!532116 m!2152651))

(assert (=> d!532116 m!2152563))

(assert (=> b!1741045 d!532116))

(declare-fun b!1741515 () Bool)

(declare-fun e!1114627 () Bool)

(declare-fun lt!671546 () Bool)

(assert (=> b!1741515 (= e!1114627 (not lt!671546))))

(declare-fun b!1741516 () Bool)

(declare-fun e!1114632 () Bool)

(declare-fun call!110080 () Bool)

(assert (=> b!1741516 (= e!1114632 (= lt!671546 call!110080))))

(declare-fun b!1741517 () Bool)

(declare-fun e!1114626 () Bool)

(assert (=> b!1741517 (= e!1114626 (matchR!2209 (derivativeStep!1202 (regex!3407 lt!671313) (head!3988 (list!7736 (charsOf!2056 (_1!10793 lt!671314))))) (tail!2599 (list!7736 (charsOf!2056 (_1!10793 lt!671314))))))))

(declare-fun d!532118 () Bool)

(assert (=> d!532118 e!1114632))

(declare-fun c!284156 () Bool)

(assert (=> d!532118 (= c!284156 ((_ is EmptyExpr!4735) (regex!3407 lt!671313)))))

(assert (=> d!532118 (= lt!671546 e!1114626)))

(declare-fun c!284157 () Bool)

(assert (=> d!532118 (= c!284157 (isEmpty!12041 (list!7736 (charsOf!2056 (_1!10793 lt!671314)))))))

(assert (=> d!532118 (validRegex!1908 (regex!3407 lt!671313))))

(assert (=> d!532118 (= (matchR!2209 (regex!3407 lt!671313) (list!7736 (charsOf!2056 (_1!10793 lt!671314)))) lt!671546)))

(declare-fun b!1741518 () Bool)

(declare-fun e!1114631 () Bool)

(assert (=> b!1741518 (= e!1114631 (= (head!3988 (list!7736 (charsOf!2056 (_1!10793 lt!671314)))) (c!284078 (regex!3407 lt!671313))))))

(declare-fun b!1741519 () Bool)

(declare-fun res!782955 () Bool)

(assert (=> b!1741519 (=> (not res!782955) (not e!1114631))))

(assert (=> b!1741519 (= res!782955 (isEmpty!12041 (tail!2599 (list!7736 (charsOf!2056 (_1!10793 lt!671314))))))))

(declare-fun b!1741520 () Bool)

(declare-fun res!782956 () Bool)

(assert (=> b!1741520 (=> (not res!782956) (not e!1114631))))

(assert (=> b!1741520 (= res!782956 (not call!110080))))

(declare-fun b!1741521 () Bool)

(declare-fun res!782954 () Bool)

(declare-fun e!1114629 () Bool)

(assert (=> b!1741521 (=> res!782954 e!1114629)))

(assert (=> b!1741521 (= res!782954 e!1114631)))

(declare-fun res!782957 () Bool)

(assert (=> b!1741521 (=> (not res!782957) (not e!1114631))))

(assert (=> b!1741521 (= res!782957 lt!671546)))

(declare-fun b!1741522 () Bool)

(declare-fun e!1114630 () Bool)

(assert (=> b!1741522 (= e!1114629 e!1114630)))

(declare-fun res!782953 () Bool)

(assert (=> b!1741522 (=> (not res!782953) (not e!1114630))))

(assert (=> b!1741522 (= res!782953 (not lt!671546))))

(declare-fun b!1741523 () Bool)

(declare-fun res!782960 () Bool)

(assert (=> b!1741523 (=> res!782960 e!1114629)))

(assert (=> b!1741523 (= res!782960 (not ((_ is ElementMatch!4735) (regex!3407 lt!671313))))))

(assert (=> b!1741523 (= e!1114627 e!1114629)))

(declare-fun bm!110075 () Bool)

(assert (=> bm!110075 (= call!110080 (isEmpty!12041 (list!7736 (charsOf!2056 (_1!10793 lt!671314)))))))

(declare-fun b!1741524 () Bool)

(declare-fun e!1114628 () Bool)

(assert (=> b!1741524 (= e!1114630 e!1114628)))

(declare-fun res!782959 () Bool)

(assert (=> b!1741524 (=> res!782959 e!1114628)))

(assert (=> b!1741524 (= res!782959 call!110080)))

(declare-fun b!1741525 () Bool)

(assert (=> b!1741525 (= e!1114626 (nullable!1434 (regex!3407 lt!671313)))))

(declare-fun b!1741526 () Bool)

(declare-fun res!782958 () Bool)

(assert (=> b!1741526 (=> res!782958 e!1114628)))

(assert (=> b!1741526 (= res!782958 (not (isEmpty!12041 (tail!2599 (list!7736 (charsOf!2056 (_1!10793 lt!671314)))))))))

(declare-fun b!1741527 () Bool)

(assert (=> b!1741527 (= e!1114628 (not (= (head!3988 (list!7736 (charsOf!2056 (_1!10793 lt!671314)))) (c!284078 (regex!3407 lt!671313)))))))

(declare-fun b!1741528 () Bool)

(assert (=> b!1741528 (= e!1114632 e!1114627)))

(declare-fun c!284158 () Bool)

(assert (=> b!1741528 (= c!284158 ((_ is EmptyLang!4735) (regex!3407 lt!671313)))))

(assert (= (and d!532118 c!284157) b!1741525))

(assert (= (and d!532118 (not c!284157)) b!1741517))

(assert (= (and d!532118 c!284156) b!1741516))

(assert (= (and d!532118 (not c!284156)) b!1741528))

(assert (= (and b!1741528 c!284158) b!1741515))

(assert (= (and b!1741528 (not c!284158)) b!1741523))

(assert (= (and b!1741523 (not res!782960)) b!1741521))

(assert (= (and b!1741521 res!782957) b!1741520))

(assert (= (and b!1741520 res!782956) b!1741519))

(assert (= (and b!1741519 res!782955) b!1741518))

(assert (= (and b!1741521 (not res!782954)) b!1741522))

(assert (= (and b!1741522 res!782953) b!1741524))

(assert (= (and b!1741524 (not res!782959)) b!1741526))

(assert (= (and b!1741526 (not res!782958)) b!1741527))

(assert (= (or b!1741516 b!1741524 b!1741520) bm!110075))

(assert (=> b!1741517 m!2151977))

(declare-fun m!2152653 () Bool)

(assert (=> b!1741517 m!2152653))

(assert (=> b!1741517 m!2152653))

(declare-fun m!2152655 () Bool)

(assert (=> b!1741517 m!2152655))

(assert (=> b!1741517 m!2151977))

(declare-fun m!2152657 () Bool)

(assert (=> b!1741517 m!2152657))

(assert (=> b!1741517 m!2152655))

(assert (=> b!1741517 m!2152657))

(declare-fun m!2152659 () Bool)

(assert (=> b!1741517 m!2152659))

(assert (=> b!1741519 m!2151977))

(assert (=> b!1741519 m!2152657))

(assert (=> b!1741519 m!2152657))

(declare-fun m!2152661 () Bool)

(assert (=> b!1741519 m!2152661))

(declare-fun m!2152663 () Bool)

(assert (=> b!1741525 m!2152663))

(assert (=> b!1741527 m!2151977))

(assert (=> b!1741527 m!2152653))

(assert (=> b!1741526 m!2151977))

(assert (=> b!1741526 m!2152657))

(assert (=> b!1741526 m!2152657))

(assert (=> b!1741526 m!2152661))

(assert (=> bm!110075 m!2151977))

(declare-fun m!2152665 () Bool)

(assert (=> bm!110075 m!2152665))

(assert (=> d!532118 m!2151977))

(assert (=> d!532118 m!2152665))

(declare-fun m!2152667 () Bool)

(assert (=> d!532118 m!2152667))

(assert (=> b!1741518 m!2151977))

(assert (=> b!1741518 m!2152653))

(assert (=> b!1741034 d!532118))

(assert (=> b!1741034 d!532062))

(assert (=> b!1741034 d!531998))

(declare-fun d!532120 () Bool)

(assert (=> d!532120 (= (get!5759 lt!671311) (v!25268 lt!671311))))

(assert (=> b!1741034 d!532120))

(declare-fun d!532122 () Bool)

(assert (=> d!532122 (= (inv!24789 (tag!3745 rule!422)) (= (mod (str.len (value!106771 (tag!3745 rule!422))) 2) 0))))

(assert (=> b!1741033 d!532122))

(declare-fun d!532124 () Bool)

(declare-fun res!782961 () Bool)

(declare-fun e!1114633 () Bool)

(assert (=> d!532124 (=> (not res!782961) (not e!1114633))))

(assert (=> d!532124 (= res!782961 (semiInverseModEq!1347 (toChars!4773 (transformation!3407 rule!422)) (toValue!4914 (transformation!3407 rule!422))))))

(assert (=> d!532124 (= (inv!24792 (transformation!3407 rule!422)) e!1114633)))

(declare-fun b!1741529 () Bool)

(assert (=> b!1741529 (= e!1114633 (equivClasses!1288 (toChars!4773 (transformation!3407 rule!422)) (toValue!4914 (transformation!3407 rule!422))))))

(assert (= (and d!532124 res!782961) b!1741529))

(declare-fun m!2152669 () Bool)

(assert (=> d!532124 m!2152669))

(declare-fun m!2152671 () Bool)

(assert (=> b!1741529 m!2152671))

(assert (=> b!1741033 d!532124))

(declare-fun b!1741534 () Bool)

(declare-fun e!1114636 () Bool)

(declare-fun tp!495816 () Bool)

(assert (=> b!1741534 (= e!1114636 (and tp_is_empty!7713 tp!495816))))

(assert (=> b!1741030 (= tp!495763 e!1114636)))

(assert (= (and b!1741030 ((_ is Cons!19129) (originalCharacters!4221 token!523))) b!1741534))

(declare-fun e!1114639 () Bool)

(assert (=> b!1741039 (= tp!495760 e!1114639)))

(declare-fun b!1741547 () Bool)

(declare-fun tp!495828 () Bool)

(assert (=> b!1741547 (= e!1114639 tp!495828)))

(declare-fun b!1741546 () Bool)

(declare-fun tp!495831 () Bool)

(declare-fun tp!495829 () Bool)

(assert (=> b!1741546 (= e!1114639 (and tp!495831 tp!495829))))

(declare-fun b!1741548 () Bool)

(declare-fun tp!495830 () Bool)

(declare-fun tp!495827 () Bool)

(assert (=> b!1741548 (= e!1114639 (and tp!495830 tp!495827))))

(declare-fun b!1741545 () Bool)

(assert (=> b!1741545 (= e!1114639 tp_is_empty!7713)))

(assert (= (and b!1741039 ((_ is ElementMatch!4735) (regex!3407 (rule!5409 token!523)))) b!1741545))

(assert (= (and b!1741039 ((_ is Concat!8233) (regex!3407 (rule!5409 token!523)))) b!1741546))

(assert (= (and b!1741039 ((_ is Star!4735) (regex!3407 (rule!5409 token!523)))) b!1741547))

(assert (= (and b!1741039 ((_ is Union!4735) (regex!3407 (rule!5409 token!523)))) b!1741548))

(declare-fun e!1114640 () Bool)

(assert (=> b!1741044 (= tp!495755 e!1114640)))

(declare-fun b!1741551 () Bool)

(declare-fun tp!495833 () Bool)

(assert (=> b!1741551 (= e!1114640 tp!495833)))

(declare-fun b!1741550 () Bool)

(declare-fun tp!495836 () Bool)

(declare-fun tp!495834 () Bool)

(assert (=> b!1741550 (= e!1114640 (and tp!495836 tp!495834))))

(declare-fun b!1741552 () Bool)

(declare-fun tp!495835 () Bool)

(declare-fun tp!495832 () Bool)

(assert (=> b!1741552 (= e!1114640 (and tp!495835 tp!495832))))

(declare-fun b!1741549 () Bool)

(assert (=> b!1741549 (= e!1114640 tp_is_empty!7713)))

(assert (= (and b!1741044 ((_ is ElementMatch!4735) (regex!3407 (h!24532 rules!3447)))) b!1741549))

(assert (= (and b!1741044 ((_ is Concat!8233) (regex!3407 (h!24532 rules!3447)))) b!1741550))

(assert (= (and b!1741044 ((_ is Star!4735) (regex!3407 (h!24532 rules!3447)))) b!1741551))

(assert (= (and b!1741044 ((_ is Union!4735) (regex!3407 (h!24532 rules!3447)))) b!1741552))

(declare-fun b!1741553 () Bool)

(declare-fun e!1114641 () Bool)

(declare-fun tp!495837 () Bool)

(assert (=> b!1741553 (= e!1114641 (and tp_is_empty!7713 tp!495837))))

(assert (=> b!1741043 (= tp!495759 e!1114641)))

(assert (= (and b!1741043 ((_ is Cons!19129) (t!161866 suffix!1421))) b!1741553))

(declare-fun b!1741564 () Bool)

(declare-fun b_free!47875 () Bool)

(declare-fun b_next!48579 () Bool)

(assert (=> b!1741564 (= b_free!47875 (not b_next!48579))))

(declare-fun tp!495846 () Bool)

(declare-fun b_and!129457 () Bool)

(assert (=> b!1741564 (= tp!495846 b_and!129457)))

(declare-fun b_free!47877 () Bool)

(declare-fun b_next!48581 () Bool)

(assert (=> b!1741564 (= b_free!47877 (not b_next!48581))))

(declare-fun t!161899 () Bool)

(declare-fun tb!104131 () Bool)

(assert (=> (and b!1741564 (= (toChars!4773 (transformation!3407 (h!24532 (t!161868 rules!3447)))) (toChars!4773 (transformation!3407 (rule!5409 (_1!10793 lt!671314))))) t!161899) tb!104131))

(declare-fun result!125250 () Bool)

(assert (= result!125250 result!125214))

(assert (=> d!531998 t!161899))

(declare-fun t!161901 () Bool)

(declare-fun tb!104133 () Bool)

(assert (=> (and b!1741564 (= (toChars!4773 (transformation!3407 (h!24532 (t!161868 rules!3447)))) (toChars!4773 (transformation!3407 (rule!5409 token!523)))) t!161901) tb!104133))

(declare-fun result!125252 () Bool)

(assert (= result!125252 result!125238))

(assert (=> b!1741468 t!161901))

(assert (=> d!532116 t!161901))

(declare-fun b_and!129459 () Bool)

(declare-fun tp!495849 () Bool)

(assert (=> b!1741564 (= tp!495849 (and (=> t!161899 result!125250) (=> t!161901 result!125252) b_and!129459))))

(declare-fun e!1114650 () Bool)

(assert (=> b!1741564 (= e!1114650 (and tp!495846 tp!495849))))

(declare-fun tp!495847 () Bool)

(declare-fun e!1114653 () Bool)

(declare-fun b!1741563 () Bool)

(assert (=> b!1741563 (= e!1114653 (and tp!495847 (inv!24789 (tag!3745 (h!24532 (t!161868 rules!3447)))) (inv!24792 (transformation!3407 (h!24532 (t!161868 rules!3447)))) e!1114650))))

(declare-fun b!1741562 () Bool)

(declare-fun e!1114652 () Bool)

(declare-fun tp!495848 () Bool)

(assert (=> b!1741562 (= e!1114652 (and e!1114653 tp!495848))))

(assert (=> b!1741032 (= tp!495758 e!1114652)))

(assert (= b!1741563 b!1741564))

(assert (= b!1741562 b!1741563))

(assert (= (and b!1741032 ((_ is Cons!19131) (t!161868 rules!3447))) b!1741562))

(declare-fun m!2152673 () Bool)

(assert (=> b!1741563 m!2152673))

(declare-fun m!2152675 () Bool)

(assert (=> b!1741563 m!2152675))

(declare-fun e!1114654 () Bool)

(assert (=> b!1741033 (= tp!495762 e!1114654)))

(declare-fun b!1741567 () Bool)

(declare-fun tp!495851 () Bool)

(assert (=> b!1741567 (= e!1114654 tp!495851)))

(declare-fun b!1741566 () Bool)

(declare-fun tp!495854 () Bool)

(declare-fun tp!495852 () Bool)

(assert (=> b!1741566 (= e!1114654 (and tp!495854 tp!495852))))

(declare-fun b!1741568 () Bool)

(declare-fun tp!495853 () Bool)

(declare-fun tp!495850 () Bool)

(assert (=> b!1741568 (= e!1114654 (and tp!495853 tp!495850))))

(declare-fun b!1741565 () Bool)

(assert (=> b!1741565 (= e!1114654 tp_is_empty!7713)))

(assert (= (and b!1741033 ((_ is ElementMatch!4735) (regex!3407 rule!422))) b!1741565))

(assert (= (and b!1741033 ((_ is Concat!8233) (regex!3407 rule!422))) b!1741566))

(assert (= (and b!1741033 ((_ is Star!4735) (regex!3407 rule!422))) b!1741567))

(assert (= (and b!1741033 ((_ is Union!4735) (regex!3407 rule!422))) b!1741568))

(declare-fun b_lambda!55793 () Bool)

(assert (= b_lambda!55791 (or (and b!1741047 b_free!47861 (= (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) (and b!1741031 b_free!47865) (and b!1741041 b_free!47869 (= (toChars!4773 (transformation!3407 rule!422)) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) (and b!1741564 b_free!47877 (= (toChars!4773 (transformation!3407 (h!24532 (t!161868 rules!3447)))) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) b_lambda!55793)))

(declare-fun b_lambda!55795 () Bool)

(assert (= b_lambda!55789 (or (and b!1741047 b_free!47861 (= (toChars!4773 (transformation!3407 (h!24532 rules!3447))) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) (and b!1741031 b_free!47865) (and b!1741041 b_free!47869 (= (toChars!4773 (transformation!3407 rule!422)) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) (and b!1741564 b_free!47877 (= (toChars!4773 (transformation!3407 (h!24532 (t!161868 rules!3447)))) (toChars!4773 (transformation!3407 (rule!5409 token!523))))) b_lambda!55795)))

(check-sat (not b!1741475) (not b!1741371) (not b!1741503) (not bm!110073) b_and!129453 (not b!1741404) (not b!1741388) (not b!1741387) (not b!1741505) (not b!1741401) (not b!1741563) (not b!1741382) (not b!1741502) (not d!532090) (not b!1741509) (not b!1741384) (not b_next!48569) (not b!1741443) (not b!1741370) (not b_next!48571) (not d!532062) (not d!532102) b_and!129409 (not b!1741444) (not b_next!48565) (not b_next!48573) (not d!532110) (not b_lambda!55795) (not d!532100) b_and!129459 (not b!1741368) (not d!531998) (not b!1741511) (not b!1741478) (not b_next!48567) (not b_next!48579) (not b!1741517) (not d!532002) (not b!1741519) (not bm!110075) (not b!1741373) (not d!532070) (not b!1741567) (not b!1741508) (not b!1741186) (not b!1741476) (not b!1741469) (not b!1741553) (not b_next!48563) (not b!1741379) b_and!129405 (not b!1741412) (not b!1741375) b_and!129451 (not b!1741546) (not b!1741468) (not d!532058) (not d!532088) (not tb!104109) (not b!1741529) (not b!1741525) (not b!1741548) (not b!1741403) b_and!129457 (not d!532060) b_and!129455 (not b!1741506) (not b!1741562) (not b!1741547) (not d!532116) (not b!1741386) (not b!1741534) (not d!532080) (not bm!110070) (not d!532124) (not b!1741504) (not b!1741204) (not d!532112) (not d!532056) (not d!532076) (not b!1741378) (not b_lambda!55779) (not b!1741489) (not b!1741510) (not b!1741566) (not b!1741527) (not b!1741550) (not d!532108) (not d!532084) (not b!1741479) (not b!1741451) (not b!1741445) (not b!1741526) (not b!1741518) (not b!1741347) (not b!1741376) (not b!1741187) (not b!1741513) (not b!1741470) (not d!532000) (not tb!104125) (not b!1741512) (not d!532114) (not b!1741552) (not b!1741452) (not b!1741514) (not b!1741374) (not b!1741348) (not b!1741486) (not b!1741203) (not b!1741372) (not b!1741453) (not d!532072) (not b!1741551) (not d!532118) (not b!1741346) (not b!1741193) (not b!1741383) (not bm!110074) (not d!532004) (not b_next!48581) (not d!532086) (not b!1741568) (not b!1741459) (not d!532078) (not b!1741463) (not b!1741188) (not b!1741411) tp_is_empty!7713 (not b_lambda!55793) b_and!129413 (not d!532054) (not d!532092))
(check-sat b_and!129453 b_and!129409 b_and!129459 (not b_next!48563) b_and!129405 b_and!129451 b_and!129457 b_and!129455 (not b_next!48581) b_and!129413 (not b_next!48569) (not b_next!48571) (not b_next!48565) (not b_next!48573) (not b_next!48567) (not b_next!48579))
