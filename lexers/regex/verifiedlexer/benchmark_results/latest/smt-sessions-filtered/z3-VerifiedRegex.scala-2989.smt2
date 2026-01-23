; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!178318 () Bool)

(assert start!178318)

(declare-fun b!1788918 () Bool)

(declare-fun b_free!49759 () Bool)

(declare-fun b_next!50463 () Bool)

(assert (=> b!1788918 (= b_free!49759 (not b_next!50463))))

(declare-fun tp!505790 () Bool)

(declare-fun b_and!137915 () Bool)

(assert (=> b!1788918 (= tp!505790 b_and!137915)))

(declare-fun b_free!49761 () Bool)

(declare-fun b_next!50465 () Bool)

(assert (=> b!1788918 (= b_free!49761 (not b_next!50465))))

(declare-fun tp!505784 () Bool)

(declare-fun b_and!137917 () Bool)

(assert (=> b!1788918 (= tp!505784 b_and!137917)))

(declare-fun b!1788909 () Bool)

(declare-fun b_free!49763 () Bool)

(declare-fun b_next!50467 () Bool)

(assert (=> b!1788909 (= b_free!49763 (not b_next!50467))))

(declare-fun tp!505792 () Bool)

(declare-fun b_and!137919 () Bool)

(assert (=> b!1788909 (= tp!505792 b_and!137919)))

(declare-fun b_free!49765 () Bool)

(declare-fun b_next!50469 () Bool)

(assert (=> b!1788909 (= b_free!49765 (not b_next!50469))))

(declare-fun tp!505794 () Bool)

(declare-fun b_and!137921 () Bool)

(assert (=> b!1788909 (= tp!505794 b_and!137921)))

(declare-fun b!1788916 () Bool)

(declare-fun b_free!49767 () Bool)

(declare-fun b_next!50471 () Bool)

(assert (=> b!1788916 (= b_free!49767 (not b_next!50471))))

(declare-fun tp!505793 () Bool)

(declare-fun b_and!137923 () Bool)

(assert (=> b!1788916 (= tp!505793 b_and!137923)))

(declare-fun b_free!49769 () Bool)

(declare-fun b_next!50473 () Bool)

(assert (=> b!1788916 (= b_free!49769 (not b_next!50473))))

(declare-fun tp!505783 () Bool)

(declare-fun b_and!137925 () Bool)

(assert (=> b!1788916 (= tp!505783 b_and!137925)))

(declare-fun b!1788948 () Bool)

(declare-fun e!1145033 () Bool)

(assert (=> b!1788948 (= e!1145033 true)))

(declare-fun b!1788947 () Bool)

(declare-fun e!1145032 () Bool)

(assert (=> b!1788947 (= e!1145032 e!1145033)))

(declare-fun b!1788946 () Bool)

(declare-fun e!1145031 () Bool)

(assert (=> b!1788946 (= e!1145031 e!1145032)))

(declare-fun b!1788907 () Bool)

(assert (=> b!1788907 e!1145031))

(assert (= b!1788947 b!1788948))

(assert (= b!1788946 b!1788947))

(assert (= b!1788907 b!1788946))

(declare-fun lambda!70840 () Int)

(declare-fun order!12819 () Int)

(declare-fun order!12821 () Int)

(declare-datatypes ((List!19797 0))(
  ( (Nil!19727) (Cons!19727 (h!25128 (_ BitVec 16)) (t!167432 List!19797)) )
))
(declare-datatypes ((TokenValue!3629 0))(
  ( (FloatLiteralValue!7258 (text!25848 List!19797)) (TokenValueExt!3628 (__x!12560 Int)) (Broken!18145 (value!110508 List!19797)) (Object!3698) (End!3629) (Def!3629) (Underscore!3629) (Match!3629) (Else!3629) (Error!3629) (Case!3629) (If!3629) (Extends!3629) (Abstract!3629) (Class!3629) (Val!3629) (DelimiterValue!7258 (del!3689 List!19797)) (KeywordValue!3635 (value!110509 List!19797)) (CommentValue!7258 (value!110510 List!19797)) (WhitespaceValue!7258 (value!110511 List!19797)) (IndentationValue!3629 (value!110512 List!19797)) (String!22476) (Int32!3629) (Broken!18146 (value!110513 List!19797)) (Boolean!3630) (Unit!34146) (OperatorValue!3632 (op!3689 List!19797)) (IdentifierValue!7258 (value!110514 List!19797)) (IdentifierValue!7259 (value!110515 List!19797)) (WhitespaceValue!7259 (value!110516 List!19797)) (True!7258) (False!7258) (Broken!18147 (value!110517 List!19797)) (Broken!18148 (value!110518 List!19797)) (True!7259) (RightBrace!3629) (RightBracket!3629) (Colon!3629) (Null!3629) (Comma!3629) (LeftBracket!3629) (False!7259) (LeftBrace!3629) (ImaginaryLiteralValue!3629 (text!25849 List!19797)) (StringLiteralValue!10887 (value!110519 List!19797)) (EOFValue!3629 (value!110520 List!19797)) (IdentValue!3629 (value!110521 List!19797)) (DelimiterValue!7259 (value!110522 List!19797)) (DedentValue!3629 (value!110523 List!19797)) (NewLineValue!3629 (value!110524 List!19797)) (IntegerValue!10887 (value!110525 (_ BitVec 32)) (text!25850 List!19797)) (IntegerValue!10888 (value!110526 Int) (text!25851 List!19797)) (Times!3629) (Or!3629) (Equal!3629) (Minus!3629) (Broken!18149 (value!110527 List!19797)) (And!3629) (Div!3629) (LessEqual!3629) (Mod!3629) (Concat!8496) (Not!3629) (Plus!3629) (SpaceValue!3629 (value!110528 List!19797)) (IntegerValue!10889 (value!110529 Int) (text!25852 List!19797)) (StringLiteralValue!10888 (text!25853 List!19797)) (FloatLiteralValue!7259 (text!25854 List!19797)) (BytesLiteralValue!3629 (value!110530 List!19797)) (CommentValue!7259 (value!110531 List!19797)) (StringLiteralValue!10889 (value!110532 List!19797)) (ErrorTokenValue!3629 (msg!3690 List!19797)) )
))
(declare-datatypes ((C!9908 0))(
  ( (C!9909 (val!5550 Int)) )
))
(declare-datatypes ((List!19798 0))(
  ( (Nil!19728) (Cons!19728 (h!25129 C!9908) (t!167433 List!19798)) )
))
(declare-datatypes ((Regex!4867 0))(
  ( (ElementMatch!4867 (c!290840 C!9908)) (Concat!8497 (regOne!10246 Regex!4867) (regTwo!10246 Regex!4867)) (EmptyExpr!4867) (Star!4867 (reg!5196 Regex!4867)) (EmptyLang!4867) (Union!4867 (regOne!10247 Regex!4867) (regTwo!10247 Regex!4867)) )
))
(declare-datatypes ((String!22477 0))(
  ( (String!22478 (value!110533 String)) )
))
(declare-datatypes ((IArray!13131 0))(
  ( (IArray!13132 (innerList!6623 List!19798)) )
))
(declare-datatypes ((Conc!6563 0))(
  ( (Node!6563 (left!15822 Conc!6563) (right!16152 Conc!6563) (csize!13356 Int) (cheight!6774 Int)) (Leaf!9553 (xs!9439 IArray!13131) (csize!13357 Int)) (Empty!6563) )
))
(declare-datatypes ((BalanceConc!13070 0))(
  ( (BalanceConc!13071 (c!290841 Conc!6563)) )
))
(declare-datatypes ((TokenValueInjection!6918 0))(
  ( (TokenValueInjection!6919 (toValue!5066 Int) (toChars!4925 Int)) )
))
(declare-datatypes ((Rule!6878 0))(
  ( (Rule!6879 (regex!3539 Regex!4867) (tag!3945 String!22477) (isSeparator!3539 Bool) (transformation!3539 TokenValueInjection!6918)) )
))
(declare-datatypes ((Token!6644 0))(
  ( (Token!6645 (value!110534 TokenValue!3629) (rule!5635 Rule!6878) (size!15672 Int) (originalCharacters!4353 List!19798)) )
))
(declare-datatypes ((tuple2!19310 0))(
  ( (tuple2!19311 (_1!11057 Token!6644) (_2!11057 List!19798)) )
))
(declare-fun lt!697425 () tuple2!19310)

(declare-fun dynLambda!9759 (Int Int) Int)

(declare-fun dynLambda!9760 (Int Int) Int)

(assert (=> b!1788948 (< (dynLambda!9759 order!12819 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9760 order!12821 lambda!70840))))

(declare-fun order!12823 () Int)

(declare-fun dynLambda!9761 (Int Int) Int)

(assert (=> b!1788948 (< (dynLambda!9761 order!12823 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9760 order!12821 lambda!70840))))

(declare-fun b!1788895 () Bool)

(declare-fun res!806883 () Bool)

(declare-fun e!1145015 () Bool)

(assert (=> b!1788895 (=> (not res!806883) (not e!1145015))))

(declare-fun token!523 () Token!6644)

(declare-fun rule!422 () Rule!6878)

(assert (=> b!1788895 (= res!806883 (= (rule!5635 token!523) rule!422))))

(declare-fun b!1788896 () Bool)

(declare-fun res!806890 () Bool)

(declare-fun e!1144993 () Bool)

(assert (=> b!1788896 (=> (not res!806890) (not e!1144993))))

(declare-datatypes ((List!19799 0))(
  ( (Nil!19729) (Cons!19729 (h!25130 Rule!6878) (t!167434 List!19799)) )
))
(declare-fun rules!3447 () List!19799)

(declare-fun isEmpty!12470 (List!19799) Bool)

(assert (=> b!1788896 (= res!806890 (not (isEmpty!12470 rules!3447)))))

(declare-fun b!1788897 () Bool)

(declare-datatypes ((Unit!34147 0))(
  ( (Unit!34148) )
))
(declare-fun e!1144992 () Unit!34147)

(declare-fun Unit!34149 () Unit!34147)

(assert (=> b!1788897 (= e!1144992 Unit!34149)))

(declare-fun lt!697447 () Unit!34147)

(declare-datatypes ((LexerInterface!3168 0))(
  ( (LexerInterfaceExt!3165 (__x!12561 Int)) (Lexer!3166) )
))
(declare-fun thiss!24550 () LexerInterface!3168)

(declare-fun lt!697435 () List!19798)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!246 (LexerInterface!3168 List!19799 List!19798 Token!6644 Rule!6878 List!19798) Unit!34147)

(assert (=> b!1788897 (= lt!697447 (lemmaMaxPrefixThenMatchesRulesRegex!246 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425) (rule!5635 (_1!11057 lt!697425)) (_2!11057 lt!697425)))))

(declare-fun lt!697444 () Regex!4867)

(declare-fun lt!697424 () List!19798)

(declare-fun matchR!2340 (Regex!4867 List!19798) Bool)

(assert (=> b!1788897 (matchR!2340 lt!697444 lt!697424)))

(declare-fun lt!697418 () List!19798)

(declare-fun lt!697446 () List!19798)

(declare-fun getSuffix!946 (List!19798 List!19798) List!19798)

(assert (=> b!1788897 (= lt!697418 (getSuffix!946 lt!697435 lt!697446))))

(declare-fun lt!697404 () Unit!34147)

(declare-fun suffix!1421 () List!19798)

(declare-fun lemmaSamePrefixThenSameSuffix!890 (List!19798 List!19798 List!19798 List!19798 List!19798) Unit!34147)

(assert (=> b!1788897 (= lt!697404 (lemmaSamePrefixThenSameSuffix!890 lt!697446 suffix!1421 lt!697446 lt!697418 lt!697435))))

(assert (=> b!1788897 (= suffix!1421 lt!697418)))

(declare-fun lt!697408 () Unit!34147)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!315 (List!19798 List!19798) Unit!34147)

(assert (=> b!1788897 (= lt!697408 (lemmaAddHeadSuffixToPrefixStillPrefix!315 lt!697446 lt!697435))))

(declare-fun isPrefix!1779 (List!19798 List!19798) Bool)

(declare-fun ++!5363 (List!19798 List!19798) List!19798)

(declare-fun head!4196 (List!19798) C!9908)

(assert (=> b!1788897 (isPrefix!1779 (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728)) lt!697435)))

(declare-fun lt!697436 () List!19798)

(declare-fun lt!697431 () Unit!34147)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!187 (List!19798 List!19798 List!19798) Unit!34147)

(assert (=> b!1788897 (= lt!697431 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!187 lt!697424 lt!697436 lt!697435))))

(assert (=> b!1788897 (isPrefix!1779 lt!697436 lt!697424)))

(declare-fun lt!697403 () Unit!34147)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!178 (Regex!4867 List!19798 List!19798) Unit!34147)

(assert (=> b!1788897 (= lt!697403 (lemmaNotPrefixMatchThenCannotMatchLonger!178 lt!697444 lt!697436 lt!697424))))

(assert (=> b!1788897 false))

(declare-fun b!1788899 () Bool)

(declare-fun e!1145021 () Bool)

(declare-fun e!1145024 () Bool)

(assert (=> b!1788899 (= e!1145021 e!1145024)))

(declare-fun res!806881 () Bool)

(assert (=> b!1788899 (=> res!806881 e!1145024)))

(declare-fun lt!697410 () Bool)

(assert (=> b!1788899 (= res!806881 lt!697410)))

(declare-fun lt!697428 () Unit!34147)

(assert (=> b!1788899 (= lt!697428 e!1144992)))

(declare-fun c!290839 () Bool)

(assert (=> b!1788899 (= c!290839 lt!697410)))

(declare-fun lt!697415 () Int)

(declare-fun lt!697406 () Int)

(assert (=> b!1788899 (= lt!697410 (> lt!697415 lt!697406))))

(declare-fun lt!697417 () BalanceConc!13070)

(declare-fun size!15673 (BalanceConc!13070) Int)

(assert (=> b!1788899 (= lt!697406 (size!15673 lt!697417))))

(assert (=> b!1788899 (matchR!2340 lt!697444 lt!697446)))

(declare-fun lt!697437 () Unit!34147)

(assert (=> b!1788899 (= lt!697437 (lemmaMaxPrefixThenMatchesRulesRegex!246 thiss!24550 rules!3447 lt!697446 token!523 rule!422 Nil!19728))))

(declare-fun b!1788900 () Bool)

(declare-fun Unit!34150 () Unit!34147)

(assert (=> b!1788900 (= e!1144992 Unit!34150)))

(declare-fun b!1788901 () Bool)

(declare-fun e!1145000 () Bool)

(declare-fun tp!505789 () Bool)

(declare-fun e!1145008 () Bool)

(declare-fun inv!25697 (String!22477) Bool)

(declare-fun inv!25702 (TokenValueInjection!6918) Bool)

(assert (=> b!1788901 (= e!1145000 (and tp!505789 (inv!25697 (tag!3945 (rule!5635 token!523))) (inv!25702 (transformation!3539 (rule!5635 token!523))) e!1145008))))

(declare-fun b!1788902 () Bool)

(declare-fun res!806901 () Bool)

(declare-fun e!1145022 () Bool)

(assert (=> b!1788902 (=> res!806901 e!1145022)))

(declare-fun contains!3571 (List!19799 Rule!6878) Bool)

(assert (=> b!1788902 (= res!806901 (not (contains!3571 rules!3447 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1788903 () Bool)

(declare-fun e!1145005 () Bool)

(declare-fun tp_is_empty!7977 () Bool)

(declare-fun tp!505791 () Bool)

(assert (=> b!1788903 (= e!1145005 (and tp_is_empty!7977 tp!505791))))

(declare-fun b!1788904 () Bool)

(declare-fun res!806889 () Bool)

(assert (=> b!1788904 (=> (not res!806889) (not e!1145015))))

(declare-fun lt!697427 () tuple2!19310)

(declare-fun isEmpty!12471 (List!19798) Bool)

(assert (=> b!1788904 (= res!806889 (isEmpty!12471 (_2!11057 lt!697427)))))

(declare-fun b!1788905 () Bool)

(declare-fun tp!505787 () Bool)

(declare-fun e!1144997 () Bool)

(declare-fun e!1145013 () Bool)

(assert (=> b!1788905 (= e!1145013 (and tp!505787 (inv!25697 (tag!3945 (h!25130 rules!3447))) (inv!25702 (transformation!3539 (h!25130 rules!3447))) e!1144997))))

(declare-fun b!1788906 () Bool)

(declare-fun e!1145002 () Unit!34147)

(declare-fun Unit!34151 () Unit!34147)

(assert (=> b!1788906 (= e!1145002 Unit!34151)))

(declare-fun e!1145011 () Bool)

(declare-fun e!1145009 () Bool)

(assert (=> b!1788907 (= e!1145011 e!1145009)))

(declare-fun res!806880 () Bool)

(assert (=> b!1788907 (=> res!806880 e!1145009)))

(declare-fun Forall!906 (Int) Bool)

(assert (=> b!1788907 (= res!806880 (not (Forall!906 lambda!70840)))))

(declare-fun lt!697434 () Unit!34147)

(declare-fun lemmaInv!738 (TokenValueInjection!6918) Unit!34147)

(assert (=> b!1788907 (= lt!697434 (lemmaInv!738 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1788908 () Bool)

(declare-fun e!1145023 () Bool)

(assert (=> b!1788908 (= e!1145023 false)))

(assert (=> b!1788909 (= e!1144997 (and tp!505792 tp!505794))))

(declare-fun b!1788910 () Bool)

(declare-fun tp!505785 () Bool)

(declare-fun e!1145001 () Bool)

(declare-fun inv!21 (TokenValue!3629) Bool)

(assert (=> b!1788910 (= e!1145001 (and (inv!21 (value!110534 token!523)) e!1145000 tp!505785))))

(declare-fun b!1788911 () Bool)

(declare-fun e!1144999 () Bool)

(assert (=> b!1788911 (= e!1144999 e!1145011)))

(declare-fun res!806897 () Bool)

(assert (=> b!1788911 (=> res!806897 e!1145011)))

(assert (=> b!1788911 (= res!806897 (not (isPrefix!1779 lt!697424 lt!697435)))))

(assert (=> b!1788911 (isPrefix!1779 lt!697424 (++!5363 lt!697424 (_2!11057 lt!697425)))))

(declare-fun lt!697448 () Unit!34147)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1288 (List!19798 List!19798) Unit!34147)

(assert (=> b!1788911 (= lt!697448 (lemmaConcatTwoListThenFirstIsPrefix!1288 lt!697424 (_2!11057 lt!697425)))))

(declare-fun lt!697414 () BalanceConc!13070)

(declare-fun list!8025 (BalanceConc!13070) List!19798)

(assert (=> b!1788911 (= lt!697424 (list!8025 lt!697414))))

(declare-fun charsOf!2188 (Token!6644) BalanceConc!13070)

(assert (=> b!1788911 (= lt!697414 (charsOf!2188 (_1!11057 lt!697425)))))

(declare-fun e!1145003 () Bool)

(assert (=> b!1788911 e!1145003))

(declare-fun res!806878 () Bool)

(assert (=> b!1788911 (=> (not res!806878) (not e!1145003))))

(declare-datatypes ((Option!4100 0))(
  ( (None!4099) (Some!4099 (v!25600 Rule!6878)) )
))
(declare-fun lt!697445 () Option!4100)

(declare-fun isDefined!3443 (Option!4100) Bool)

(assert (=> b!1788911 (= res!806878 (isDefined!3443 lt!697445))))

(declare-fun getRuleFromTag!587 (LexerInterface!3168 List!19799 String!22477) Option!4100)

(assert (=> b!1788911 (= lt!697445 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun lt!697401 () Unit!34147)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!587 (LexerInterface!3168 List!19799 List!19798 Token!6644) Unit!34147)

(assert (=> b!1788911 (= lt!697401 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!587 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425)))))

(declare-datatypes ((Option!4101 0))(
  ( (None!4100) (Some!4100 (v!25601 tuple2!19310)) )
))
(declare-fun lt!697416 () Option!4101)

(declare-fun get!6087 (Option!4101) tuple2!19310)

(assert (=> b!1788911 (= lt!697425 (get!6087 lt!697416))))

(declare-fun lt!697419 () Unit!34147)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!690 (LexerInterface!3168 List!19799 List!19798 List!19798) Unit!34147)

(assert (=> b!1788911 (= lt!697419 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!690 thiss!24550 rules!3447 lt!697446 suffix!1421))))

(declare-fun maxPrefix!1722 (LexerInterface!3168 List!19799 List!19798) Option!4101)

(assert (=> b!1788911 (= lt!697416 (maxPrefix!1722 thiss!24550 rules!3447 lt!697435))))

(assert (=> b!1788911 (isPrefix!1779 lt!697446 lt!697435)))

(declare-fun lt!697426 () Unit!34147)

(assert (=> b!1788911 (= lt!697426 (lemmaConcatTwoListThenFirstIsPrefix!1288 lt!697446 suffix!1421))))

(assert (=> b!1788911 (= lt!697435 (++!5363 lt!697446 suffix!1421))))

(declare-fun b!1788912 () Bool)

(declare-fun e!1145004 () Bool)

(assert (=> b!1788912 (= e!1145015 (not e!1145004))))

(declare-fun res!806887 () Bool)

(assert (=> b!1788912 (=> res!806887 e!1145004)))

(assert (=> b!1788912 (= res!806887 (not (matchR!2340 (regex!3539 rule!422) lt!697446)))))

(declare-fun ruleValid!1037 (LexerInterface!3168 Rule!6878) Bool)

(assert (=> b!1788912 (ruleValid!1037 thiss!24550 rule!422)))

(declare-fun lt!697421 () Unit!34147)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!560 (LexerInterface!3168 Rule!6878 List!19799) Unit!34147)

(assert (=> b!1788912 (= lt!697421 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!560 thiss!24550 rule!422 rules!3447))))

(declare-fun res!806879 () Bool)

(assert (=> start!178318 (=> (not res!806879) (not e!1144993))))

(get-info :version)

(assert (=> start!178318 (= res!806879 ((_ is Lexer!3166) thiss!24550))))

(assert (=> start!178318 e!1144993))

(assert (=> start!178318 e!1145005))

(declare-fun e!1145018 () Bool)

(assert (=> start!178318 e!1145018))

(assert (=> start!178318 true))

(declare-fun inv!25703 (Token!6644) Bool)

(assert (=> start!178318 (and (inv!25703 token!523) e!1145001)))

(declare-fun e!1144996 () Bool)

(assert (=> start!178318 e!1144996))

(declare-fun b!1788898 () Bool)

(declare-fun res!806892 () Bool)

(assert (=> b!1788898 (=> res!806892 e!1145004)))

(assert (=> b!1788898 (= res!806892 (isEmpty!12471 suffix!1421))))

(declare-fun b!1788913 () Bool)

(declare-fun e!1144994 () Bool)

(assert (=> b!1788913 (= e!1144994 e!1145021)))

(declare-fun res!806893 () Bool)

(assert (=> b!1788913 (=> res!806893 e!1145021)))

(declare-fun lt!697405 () List!19798)

(declare-fun lt!697441 () Option!4101)

(assert (=> b!1788913 (= res!806893 (or (not (= lt!697405 (_2!11057 lt!697425))) (not (= lt!697441 (Some!4100 (tuple2!19311 (_1!11057 lt!697425) lt!697405))))))))

(assert (=> b!1788913 (= (_2!11057 lt!697425) lt!697405)))

(declare-fun lt!697412 () Unit!34147)

(assert (=> b!1788913 (= lt!697412 (lemmaSamePrefixThenSameSuffix!890 lt!697424 (_2!11057 lt!697425) lt!697424 lt!697405 lt!697435))))

(assert (=> b!1788913 (= lt!697405 (getSuffix!946 lt!697435 lt!697424))))

(declare-fun lt!697442 () TokenValue!3629)

(declare-fun lt!697411 () Int)

(assert (=> b!1788913 (= lt!697441 (Some!4100 (tuple2!19311 (Token!6645 lt!697442 (rule!5635 (_1!11057 lt!697425)) lt!697411 lt!697424) (_2!11057 lt!697425))))))

(declare-fun maxPrefixOneRule!1091 (LexerInterface!3168 Rule!6878 List!19798) Option!4101)

(assert (=> b!1788913 (= lt!697441 (maxPrefixOneRule!1091 thiss!24550 (rule!5635 (_1!11057 lt!697425)) lt!697435))))

(declare-fun size!15674 (List!19798) Int)

(assert (=> b!1788913 (= lt!697411 (size!15674 lt!697424))))

(declare-fun apply!5339 (TokenValueInjection!6918 BalanceConc!13070) TokenValue!3629)

(declare-fun seqFromList!2508 (List!19798) BalanceConc!13070)

(assert (=> b!1788913 (= lt!697442 (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) (seqFromList!2508 lt!697424)))))

(declare-fun lt!697429 () Unit!34147)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!469 (LexerInterface!3168 List!19799 List!19798 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> b!1788913 (= lt!697429 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!469 thiss!24550 rules!3447 lt!697424 lt!697435 (_2!11057 lt!697425) (rule!5635 (_1!11057 lt!697425))))))

(declare-fun b!1788914 () Bool)

(declare-fun e!1145019 () Bool)

(assert (=> b!1788914 (= e!1145019 e!1145022)))

(declare-fun res!806902 () Bool)

(assert (=> b!1788914 (=> res!806902 e!1145022)))

(declare-fun lt!697440 () Int)

(declare-fun lt!697432 () Int)

(assert (=> b!1788914 (= res!806902 (>= lt!697440 lt!697432))))

(declare-fun lt!697413 () Unit!34147)

(assert (=> b!1788914 (= lt!697413 e!1145002)))

(declare-fun c!290838 () Bool)

(assert (=> b!1788914 (= c!290838 (< lt!697432 lt!697440))))

(declare-fun getIndex!204 (List!19799 Rule!6878) Int)

(assert (=> b!1788914 (= lt!697440 (getIndex!204 rules!3447 (rule!5635 (_1!11057 lt!697425))))))

(assert (=> b!1788914 (= lt!697432 (getIndex!204 rules!3447 (rule!5635 token!523)))))

(declare-fun b!1788915 () Bool)

(declare-fun res!806899 () Bool)

(assert (=> b!1788915 (=> (not res!806899) (not e!1144993))))

(declare-fun rulesInvariant!2837 (LexerInterface!3168 List!19799) Bool)

(assert (=> b!1788915 (= res!806899 (rulesInvariant!2837 thiss!24550 rules!3447))))

(assert (=> b!1788916 (= e!1145008 (and tp!505793 tp!505783))))

(declare-fun e!1144995 () Bool)

(declare-fun b!1788917 () Bool)

(declare-fun tp!505786 () Bool)

(assert (=> b!1788917 (= e!1145018 (and tp!505786 (inv!25697 (tag!3945 rule!422)) (inv!25702 (transformation!3539 rule!422)) e!1144995))))

(assert (=> b!1788918 (= e!1144995 (and tp!505790 tp!505784))))

(declare-fun b!1788919 () Bool)

(declare-fun res!806895 () Bool)

(assert (=> b!1788919 (=> (not res!806895) (not e!1144993))))

(assert (=> b!1788919 (= res!806895 (contains!3571 rules!3447 rule!422))))

(declare-fun b!1788920 () Bool)

(declare-fun e!1145006 () Unit!34147)

(declare-fun Unit!34152 () Unit!34147)

(assert (=> b!1788920 (= e!1145006 Unit!34152)))

(declare-fun b!1788921 () Bool)

(declare-fun res!806885 () Bool)

(assert (=> b!1788921 (=> res!806885 e!1145022)))

(assert (=> b!1788921 (= res!806885 (not (isPrefix!1779 lt!697446 lt!697446)))))

(declare-fun b!1788922 () Bool)

(declare-fun e!1145014 () Bool)

(assert (=> b!1788922 (= e!1145014 e!1144994)))

(declare-fun res!806876 () Bool)

(assert (=> b!1788922 (=> res!806876 e!1144994)))

(declare-fun lt!697439 () TokenValue!3629)

(assert (=> b!1788922 (= res!806876 (not (= lt!697416 (Some!4100 (tuple2!19311 (Token!6645 lt!697439 (rule!5635 (_1!11057 lt!697425)) lt!697415 lt!697424) (_2!11057 lt!697425))))))))

(assert (=> b!1788922 (= lt!697415 (size!15673 lt!697414))))

(assert (=> b!1788922 (= lt!697439 (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414))))

(declare-fun lt!697433 () Unit!34147)

(declare-fun lemmaCharactersSize!597 (Token!6644) Unit!34147)

(assert (=> b!1788922 (= lt!697433 (lemmaCharactersSize!597 (_1!11057 lt!697425)))))

(declare-fun lt!697430 () Unit!34147)

(declare-fun lemmaEqSameImage!450 (TokenValueInjection!6918 BalanceConc!13070 BalanceConc!13070) Unit!34147)

(assert (=> b!1788922 (= lt!697430 (lemmaEqSameImage!450 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414 (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425)))))))

(declare-fun b!1788923 () Bool)

(declare-fun tp!505788 () Bool)

(assert (=> b!1788923 (= e!1144996 (and e!1145013 tp!505788))))

(declare-fun b!1788924 () Bool)

(declare-fun res!806888 () Bool)

(assert (=> b!1788924 (=> res!806888 e!1145011)))

(assert (=> b!1788924 (= res!806888 (not (matchR!2340 (regex!3539 (rule!5635 (_1!11057 lt!697425))) lt!697424)))))

(declare-fun b!1788925 () Bool)

(declare-fun res!806900 () Bool)

(assert (=> b!1788925 (=> res!806900 e!1145014)))

(declare-fun dynLambda!9762 (Int TokenValue!3629) BalanceConc!13070)

(assert (=> b!1788925 (= res!806900 (not (= lt!697414 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))))

(declare-fun b!1788926 () Bool)

(declare-fun Unit!34153 () Unit!34147)

(assert (=> b!1788926 (= e!1145006 Unit!34153)))

(declare-fun lt!697423 () Unit!34147)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!248 (LexerInterface!3168 List!19799 Rule!6878 List!19798 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> b!1788926 (= lt!697423 (lemmaMaxPrefixOutputsMaxPrefix!248 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 lt!697446 rule!422))))

(assert (=> b!1788926 false))

(declare-fun b!1788927 () Bool)

(declare-fun res!806875 () Bool)

(assert (=> b!1788927 (=> res!806875 e!1145022)))

(assert (=> b!1788927 (= res!806875 (not (contains!3571 rules!3447 (rule!5635 token!523))))))

(declare-fun b!1788928 () Bool)

(declare-fun Unit!34154 () Unit!34147)

(assert (=> b!1788928 (= e!1145002 Unit!34154)))

(declare-fun lt!697409 () Unit!34147)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!160 (LexerInterface!3168 List!19799 Rule!6878 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> b!1788928 (= lt!697409 (lemmaMaxPrefNoSmallerRuleMatches!160 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 (rule!5635 token!523)))))

(declare-fun res!806898 () Bool)

(assert (=> b!1788928 (= res!806898 (not (matchR!2340 (regex!3539 (rule!5635 token!523)) lt!697424)))))

(assert (=> b!1788928 (=> (not res!806898) (not e!1145023))))

(assert (=> b!1788928 e!1145023))

(declare-fun b!1788929 () Bool)

(declare-fun e!1145016 () Bool)

(assert (=> b!1788929 (= e!1145016 e!1145015)))

(declare-fun res!806886 () Bool)

(assert (=> b!1788929 (=> (not res!806886) (not e!1145015))))

(assert (=> b!1788929 (= res!806886 (= (_1!11057 lt!697427) token!523))))

(declare-fun lt!697443 () Option!4101)

(assert (=> b!1788929 (= lt!697427 (get!6087 lt!697443))))

(declare-fun b!1788930 () Bool)

(assert (=> b!1788930 (= e!1144993 e!1145016)))

(declare-fun res!806894 () Bool)

(assert (=> b!1788930 (=> (not res!806894) (not e!1145016))))

(declare-fun isDefined!3444 (Option!4101) Bool)

(assert (=> b!1788930 (= res!806894 (isDefined!3444 lt!697443))))

(assert (=> b!1788930 (= lt!697443 (maxPrefix!1722 thiss!24550 rules!3447 lt!697446))))

(assert (=> b!1788930 (= lt!697446 (list!8025 lt!697417))))

(assert (=> b!1788930 (= lt!697417 (charsOf!2188 token!523))))

(declare-fun b!1788931 () Bool)

(declare-fun e!1145020 () Bool)

(assert (=> b!1788931 (= e!1145003 e!1145020)))

(declare-fun res!806896 () Bool)

(assert (=> b!1788931 (=> (not res!806896) (not e!1145020))))

(declare-fun lt!697420 () Rule!6878)

(assert (=> b!1788931 (= res!806896 (matchR!2340 (regex!3539 lt!697420) (list!8025 (charsOf!2188 (_1!11057 lt!697425)))))))

(declare-fun get!6088 (Option!4100) Rule!6878)

(assert (=> b!1788931 (= lt!697420 (get!6088 lt!697445))))

(declare-fun b!1788932 () Bool)

(declare-fun e!1145012 () Bool)

(assert (=> b!1788932 (= e!1145012 e!1145019)))

(declare-fun res!806882 () Bool)

(assert (=> b!1788932 (=> res!806882 e!1145019)))

(assert (=> b!1788932 (= res!806882 (= (rule!5635 (_1!11057 lt!697425)) (rule!5635 token!523)))))

(assert (=> b!1788932 (= suffix!1421 (_2!11057 lt!697425))))

(declare-fun lt!697407 () Unit!34147)

(assert (=> b!1788932 (= lt!697407 (lemmaSamePrefixThenSameSuffix!890 lt!697446 suffix!1421 lt!697446 (_2!11057 lt!697425) lt!697435))))

(assert (=> b!1788932 (= lt!697424 lt!697446)))

(declare-fun lt!697438 () Unit!34147)

(declare-fun lemmaIsPrefixSameLengthThenSameList!275 (List!19798 List!19798 List!19798) Unit!34147)

(assert (=> b!1788932 (= lt!697438 (lemmaIsPrefixSameLengthThenSameList!275 lt!697424 lt!697446 lt!697435))))

(declare-fun b!1788933 () Bool)

(assert (=> b!1788933 (= e!1145009 e!1145014)))

(declare-fun res!806884 () Bool)

(assert (=> b!1788933 (=> res!806884 e!1145014)))

(declare-fun dynLambda!9763 (Int BalanceConc!13070) TokenValue!3629)

(assert (=> b!1788933 (= res!806884 (not (= (list!8025 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))) lt!697424)))))

(declare-fun lt!697402 () Unit!34147)

(declare-fun lemmaSemiInverse!677 (TokenValueInjection!6918 BalanceConc!13070) Unit!34147)

(assert (=> b!1788933 (= lt!697402 (lemmaSemiInverse!677 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414))))

(declare-fun b!1788934 () Bool)

(assert (=> b!1788934 (= e!1145020 (= (rule!5635 (_1!11057 lt!697425)) lt!697420))))

(declare-fun b!1788935 () Bool)

(assert (=> b!1788935 (= e!1145024 e!1145012)))

(declare-fun res!806891 () Bool)

(assert (=> b!1788935 (=> res!806891 e!1145012)))

(assert (=> b!1788935 (= res!806891 (not (= lt!697415 lt!697406)))))

(declare-fun lt!697422 () Unit!34147)

(assert (=> b!1788935 (= lt!697422 e!1145006)))

(declare-fun c!290837 () Bool)

(assert (=> b!1788935 (= c!290837 (< lt!697415 lt!697406))))

(declare-fun b!1788936 () Bool)

(assert (=> b!1788936 (= e!1145004 e!1144999)))

(declare-fun res!806877 () Bool)

(assert (=> b!1788936 (=> res!806877 e!1144999)))

(declare-fun prefixMatch!750 (Regex!4867 List!19798) Bool)

(assert (=> b!1788936 (= res!806877 (prefixMatch!750 lt!697444 lt!697436))))

(assert (=> b!1788936 (= lt!697436 (++!5363 lt!697446 (Cons!19728 (head!4196 suffix!1421) Nil!19728)))))

(declare-fun rulesRegex!895 (LexerInterface!3168 List!19799) Regex!4867)

(assert (=> b!1788936 (= lt!697444 (rulesRegex!895 thiss!24550 rules!3447))))

(declare-fun b!1788937 () Bool)

(assert (=> b!1788937 (= e!1145022 (not (isEmpty!12471 lt!697446)))))

(assert (= (and start!178318 res!806879) b!1788896))

(assert (= (and b!1788896 res!806890) b!1788915))

(assert (= (and b!1788915 res!806899) b!1788919))

(assert (= (and b!1788919 res!806895) b!1788930))

(assert (= (and b!1788930 res!806894) b!1788929))

(assert (= (and b!1788929 res!806886) b!1788904))

(assert (= (and b!1788904 res!806889) b!1788895))

(assert (= (and b!1788895 res!806883) b!1788912))

(assert (= (and b!1788912 (not res!806887)) b!1788898))

(assert (= (and b!1788898 (not res!806892)) b!1788936))

(assert (= (and b!1788936 (not res!806877)) b!1788911))

(assert (= (and b!1788911 res!806878) b!1788931))

(assert (= (and b!1788931 res!806896) b!1788934))

(assert (= (and b!1788911 (not res!806897)) b!1788924))

(assert (= (and b!1788924 (not res!806888)) b!1788907))

(assert (= (and b!1788907 (not res!806880)) b!1788933))

(assert (= (and b!1788933 (not res!806884)) b!1788925))

(assert (= (and b!1788925 (not res!806900)) b!1788922))

(assert (= (and b!1788922 (not res!806876)) b!1788913))

(assert (= (and b!1788913 (not res!806893)) b!1788899))

(assert (= (and b!1788899 c!290839) b!1788897))

(assert (= (and b!1788899 (not c!290839)) b!1788900))

(assert (= (and b!1788899 (not res!806881)) b!1788935))

(assert (= (and b!1788935 c!290837) b!1788926))

(assert (= (and b!1788935 (not c!290837)) b!1788920))

(assert (= (and b!1788935 (not res!806891)) b!1788932))

(assert (= (and b!1788932 (not res!806882)) b!1788914))

(assert (= (and b!1788914 c!290838) b!1788928))

(assert (= (and b!1788914 (not c!290838)) b!1788906))

(assert (= (and b!1788928 res!806898) b!1788908))

(assert (= (and b!1788914 (not res!806902)) b!1788921))

(assert (= (and b!1788921 (not res!806885)) b!1788927))

(assert (= (and b!1788927 (not res!806875)) b!1788902))

(assert (= (and b!1788902 (not res!806901)) b!1788937))

(assert (= (and start!178318 ((_ is Cons!19728) suffix!1421)) b!1788903))

(assert (= b!1788917 b!1788918))

(assert (= start!178318 b!1788917))

(assert (= b!1788901 b!1788916))

(assert (= b!1788910 b!1788901))

(assert (= start!178318 b!1788910))

(assert (= b!1788905 b!1788909))

(assert (= b!1788923 b!1788905))

(assert (= (and start!178318 ((_ is Cons!19729) rules!3447)) b!1788923))

(declare-fun b_lambda!58767 () Bool)

(assert (=> (not b_lambda!58767) (not b!1788925)))

(declare-fun tb!109027 () Bool)

(declare-fun t!167415 () Bool)

(assert (=> (and b!1788918 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167415) tb!109027))

(declare-fun b!1788953 () Bool)

(declare-fun e!1145036 () Bool)

(declare-fun tp!505797 () Bool)

(declare-fun inv!25704 (Conc!6563) Bool)

(assert (=> b!1788953 (= e!1145036 (and (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))) tp!505797))))

(declare-fun result!131190 () Bool)

(declare-fun inv!25705 (BalanceConc!13070) Bool)

(assert (=> tb!109027 (= result!131190 (and (inv!25705 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))) e!1145036))))

(assert (= tb!109027 b!1788953))

(declare-fun m!2213079 () Bool)

(assert (=> b!1788953 m!2213079))

(declare-fun m!2213081 () Bool)

(assert (=> tb!109027 m!2213081))

(assert (=> b!1788925 t!167415))

(declare-fun b_and!137927 () Bool)

(assert (= b_and!137917 (and (=> t!167415 result!131190) b_and!137927)))

(declare-fun t!167417 () Bool)

(declare-fun tb!109029 () Bool)

(assert (=> (and b!1788909 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167417) tb!109029))

(declare-fun result!131194 () Bool)

(assert (= result!131194 result!131190))

(assert (=> b!1788925 t!167417))

(declare-fun b_and!137929 () Bool)

(assert (= b_and!137921 (and (=> t!167417 result!131194) b_and!137929)))

(declare-fun tb!109031 () Bool)

(declare-fun t!167419 () Bool)

(assert (=> (and b!1788916 (= (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167419) tb!109031))

(declare-fun result!131196 () Bool)

(assert (= result!131196 result!131190))

(assert (=> b!1788925 t!167419))

(declare-fun b_and!137931 () Bool)

(assert (= b_and!137925 (and (=> t!167419 result!131196) b_and!137931)))

(declare-fun b_lambda!58769 () Bool)

(assert (=> (not b_lambda!58769) (not b!1788933)))

(declare-fun t!167421 () Bool)

(declare-fun tb!109033 () Bool)

(assert (=> (and b!1788918 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167421) tb!109033))

(declare-fun e!1145037 () Bool)

(declare-fun tp!505798 () Bool)

(declare-fun b!1788954 () Bool)

(assert (=> b!1788954 (= e!1145037 (and (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))) tp!505798))))

(declare-fun result!131198 () Bool)

(assert (=> tb!109033 (= result!131198 (and (inv!25705 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))) e!1145037))))

(assert (= tb!109033 b!1788954))

(declare-fun m!2213083 () Bool)

(assert (=> b!1788954 m!2213083))

(declare-fun m!2213085 () Bool)

(assert (=> tb!109033 m!2213085))

(assert (=> b!1788933 t!167421))

(declare-fun b_and!137933 () Bool)

(assert (= b_and!137927 (and (=> t!167421 result!131198) b_and!137933)))

(declare-fun t!167423 () Bool)

(declare-fun tb!109035 () Bool)

(assert (=> (and b!1788909 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167423) tb!109035))

(declare-fun result!131200 () Bool)

(assert (= result!131200 result!131198))

(assert (=> b!1788933 t!167423))

(declare-fun b_and!137935 () Bool)

(assert (= b_and!137929 (and (=> t!167423 result!131200) b_and!137935)))

(declare-fun t!167425 () Bool)

(declare-fun tb!109037 () Bool)

(assert (=> (and b!1788916 (= (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167425) tb!109037))

(declare-fun result!131202 () Bool)

(assert (= result!131202 result!131198))

(assert (=> b!1788933 t!167425))

(declare-fun b_and!137937 () Bool)

(assert (= b_and!137931 (and (=> t!167425 result!131202) b_and!137937)))

(declare-fun b_lambda!58771 () Bool)

(assert (=> (not b_lambda!58771) (not b!1788933)))

(declare-fun t!167427 () Bool)

(declare-fun tb!109039 () Bool)

(assert (=> (and b!1788918 (= (toValue!5066 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167427) tb!109039))

(declare-fun result!131204 () Bool)

(assert (=> tb!109039 (= result!131204 (inv!21 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(declare-fun m!2213087 () Bool)

(assert (=> tb!109039 m!2213087))

(assert (=> b!1788933 t!167427))

(declare-fun b_and!137939 () Bool)

(assert (= b_and!137915 (and (=> t!167427 result!131204) b_and!137939)))

(declare-fun t!167429 () Bool)

(declare-fun tb!109041 () Bool)

(assert (=> (and b!1788909 (= (toValue!5066 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167429) tb!109041))

(declare-fun result!131208 () Bool)

(assert (= result!131208 result!131204))

(assert (=> b!1788933 t!167429))

(declare-fun b_and!137941 () Bool)

(assert (= b_and!137919 (and (=> t!167429 result!131208) b_and!137941)))

(declare-fun tb!109043 () Bool)

(declare-fun t!167431 () Bool)

(assert (=> (and b!1788916 (= (toValue!5066 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167431) tb!109043))

(declare-fun result!131210 () Bool)

(assert (= result!131210 result!131204))

(assert (=> b!1788933 t!167431))

(declare-fun b_and!137943 () Bool)

(assert (= b_and!137923 (and (=> t!167431 result!131210) b_and!137943)))

(declare-fun m!2213089 () Bool)

(assert (=> b!1788929 m!2213089))

(declare-fun m!2213091 () Bool)

(assert (=> b!1788928 m!2213091))

(declare-fun m!2213093 () Bool)

(assert (=> b!1788928 m!2213093))

(declare-fun m!2213095 () Bool)

(assert (=> b!1788901 m!2213095))

(declare-fun m!2213097 () Bool)

(assert (=> b!1788901 m!2213097))

(declare-fun m!2213099 () Bool)

(assert (=> b!1788905 m!2213099))

(declare-fun m!2213101 () Bool)

(assert (=> b!1788905 m!2213101))

(declare-fun m!2213103 () Bool)

(assert (=> b!1788912 m!2213103))

(declare-fun m!2213105 () Bool)

(assert (=> b!1788912 m!2213105))

(declare-fun m!2213107 () Bool)

(assert (=> b!1788912 m!2213107))

(declare-fun m!2213109 () Bool)

(assert (=> b!1788937 m!2213109))

(declare-fun m!2213111 () Bool)

(assert (=> b!1788925 m!2213111))

(declare-fun m!2213113 () Bool)

(assert (=> b!1788919 m!2213113))

(declare-fun m!2213115 () Bool)

(assert (=> b!1788921 m!2213115))

(declare-fun m!2213117 () Bool)

(assert (=> b!1788927 m!2213117))

(declare-fun m!2213119 () Bool)

(assert (=> b!1788913 m!2213119))

(declare-fun m!2213121 () Bool)

(assert (=> b!1788913 m!2213121))

(declare-fun m!2213123 () Bool)

(assert (=> b!1788913 m!2213123))

(declare-fun m!2213125 () Bool)

(assert (=> b!1788913 m!2213125))

(declare-fun m!2213127 () Bool)

(assert (=> b!1788913 m!2213127))

(declare-fun m!2213129 () Bool)

(assert (=> b!1788913 m!2213129))

(declare-fun m!2213131 () Bool)

(assert (=> b!1788913 m!2213131))

(assert (=> b!1788913 m!2213125))

(declare-fun m!2213133 () Bool)

(assert (=> b!1788907 m!2213133))

(declare-fun m!2213135 () Bool)

(assert (=> b!1788907 m!2213135))

(declare-fun m!2213137 () Bool)

(assert (=> b!1788896 m!2213137))

(declare-fun m!2213139 () Bool)

(assert (=> b!1788897 m!2213139))

(declare-fun m!2213141 () Bool)

(assert (=> b!1788897 m!2213141))

(declare-fun m!2213143 () Bool)

(assert (=> b!1788897 m!2213143))

(declare-fun m!2213145 () Bool)

(assert (=> b!1788897 m!2213145))

(declare-fun m!2213147 () Bool)

(assert (=> b!1788897 m!2213147))

(declare-fun m!2213149 () Bool)

(assert (=> b!1788897 m!2213149))

(declare-fun m!2213151 () Bool)

(assert (=> b!1788897 m!2213151))

(declare-fun m!2213153 () Bool)

(assert (=> b!1788897 m!2213153))

(declare-fun m!2213155 () Bool)

(assert (=> b!1788897 m!2213155))

(declare-fun m!2213157 () Bool)

(assert (=> b!1788897 m!2213157))

(assert (=> b!1788897 m!2213141))

(declare-fun m!2213159 () Bool)

(assert (=> b!1788897 m!2213159))

(declare-fun m!2213161 () Bool)

(assert (=> b!1788910 m!2213161))

(declare-fun m!2213163 () Bool)

(assert (=> b!1788933 m!2213163))

(assert (=> b!1788933 m!2213163))

(declare-fun m!2213165 () Bool)

(assert (=> b!1788933 m!2213165))

(assert (=> b!1788933 m!2213165))

(declare-fun m!2213167 () Bool)

(assert (=> b!1788933 m!2213167))

(declare-fun m!2213169 () Bool)

(assert (=> b!1788933 m!2213169))

(declare-fun m!2213171 () Bool)

(assert (=> b!1788931 m!2213171))

(assert (=> b!1788931 m!2213171))

(declare-fun m!2213173 () Bool)

(assert (=> b!1788931 m!2213173))

(assert (=> b!1788931 m!2213173))

(declare-fun m!2213175 () Bool)

(assert (=> b!1788931 m!2213175))

(declare-fun m!2213177 () Bool)

(assert (=> b!1788931 m!2213177))

(declare-fun m!2213179 () Bool)

(assert (=> b!1788898 m!2213179))

(declare-fun m!2213181 () Bool)

(assert (=> start!178318 m!2213181))

(declare-fun m!2213183 () Bool)

(assert (=> b!1788924 m!2213183))

(declare-fun m!2213185 () Bool)

(assert (=> b!1788932 m!2213185))

(declare-fun m!2213187 () Bool)

(assert (=> b!1788932 m!2213187))

(declare-fun m!2213189 () Bool)

(assert (=> b!1788911 m!2213189))

(declare-fun m!2213191 () Bool)

(assert (=> b!1788911 m!2213191))

(declare-fun m!2213193 () Bool)

(assert (=> b!1788911 m!2213193))

(declare-fun m!2213195 () Bool)

(assert (=> b!1788911 m!2213195))

(declare-fun m!2213197 () Bool)

(assert (=> b!1788911 m!2213197))

(declare-fun m!2213199 () Bool)

(assert (=> b!1788911 m!2213199))

(declare-fun m!2213201 () Bool)

(assert (=> b!1788911 m!2213201))

(declare-fun m!2213203 () Bool)

(assert (=> b!1788911 m!2213203))

(declare-fun m!2213205 () Bool)

(assert (=> b!1788911 m!2213205))

(declare-fun m!2213207 () Bool)

(assert (=> b!1788911 m!2213207))

(declare-fun m!2213209 () Bool)

(assert (=> b!1788911 m!2213209))

(declare-fun m!2213211 () Bool)

(assert (=> b!1788911 m!2213211))

(assert (=> b!1788911 m!2213171))

(assert (=> b!1788911 m!2213211))

(declare-fun m!2213213 () Bool)

(assert (=> b!1788911 m!2213213))

(declare-fun m!2213215 () Bool)

(assert (=> b!1788911 m!2213215))

(declare-fun m!2213217 () Bool)

(assert (=> b!1788902 m!2213217))

(declare-fun m!2213219 () Bool)

(assert (=> b!1788899 m!2213219))

(declare-fun m!2213221 () Bool)

(assert (=> b!1788899 m!2213221))

(declare-fun m!2213223 () Bool)

(assert (=> b!1788899 m!2213223))

(declare-fun m!2213225 () Bool)

(assert (=> b!1788904 m!2213225))

(declare-fun m!2213227 () Bool)

(assert (=> b!1788915 m!2213227))

(declare-fun m!2213229 () Bool)

(assert (=> b!1788917 m!2213229))

(declare-fun m!2213231 () Bool)

(assert (=> b!1788917 m!2213231))

(declare-fun m!2213233 () Bool)

(assert (=> b!1788930 m!2213233))

(declare-fun m!2213235 () Bool)

(assert (=> b!1788930 m!2213235))

(declare-fun m!2213237 () Bool)

(assert (=> b!1788930 m!2213237))

(declare-fun m!2213239 () Bool)

(assert (=> b!1788930 m!2213239))

(declare-fun m!2213241 () Bool)

(assert (=> b!1788926 m!2213241))

(declare-fun m!2213243 () Bool)

(assert (=> b!1788922 m!2213243))

(declare-fun m!2213245 () Bool)

(assert (=> b!1788922 m!2213245))

(assert (=> b!1788922 m!2213243))

(declare-fun m!2213247 () Bool)

(assert (=> b!1788922 m!2213247))

(declare-fun m!2213249 () Bool)

(assert (=> b!1788922 m!2213249))

(declare-fun m!2213251 () Bool)

(assert (=> b!1788922 m!2213251))

(declare-fun m!2213253 () Bool)

(assert (=> b!1788914 m!2213253))

(declare-fun m!2213255 () Bool)

(assert (=> b!1788914 m!2213255))

(declare-fun m!2213257 () Bool)

(assert (=> b!1788936 m!2213257))

(declare-fun m!2213259 () Bool)

(assert (=> b!1788936 m!2213259))

(declare-fun m!2213261 () Bool)

(assert (=> b!1788936 m!2213261))

(declare-fun m!2213263 () Bool)

(assert (=> b!1788936 m!2213263))

(check-sat (not b!1788921) (not b!1788911) (not b!1788912) (not b!1788954) (not b!1788923) (not tb!109039) (not b!1788924) (not b!1788937) (not b!1788914) (not b!1788932) (not b!1788915) (not tb!109033) (not b!1788922) (not b!1788905) (not b!1788928) (not b!1788927) (not b!1788910) b_and!137943 (not b_next!50469) b_and!137935 tp_is_empty!7977 (not b!1788926) (not b!1788903) (not b!1788919) (not b!1788917) (not b_next!50471) (not b_lambda!58767) (not b!1788936) (not b!1788902) (not tb!109027) (not b!1788896) b_and!137937 (not b!1788913) (not b!1788904) (not b!1788929) (not b!1788931) (not b!1788898) (not b!1788907) (not b_next!50465) b_and!137939 (not b!1788930) b_and!137933 (not b!1788897) (not b!1788901) (not b!1788899) (not start!178318) b_and!137941 (not b!1788953) (not b!1788933) (not b_next!50473) (not b_lambda!58769) (not b_next!50463) (not b_next!50467) (not b_lambda!58771))
(check-sat b_and!137935 (not b_next!50471) b_and!137937 (not b_next!50465) b_and!137939 b_and!137933 b_and!137941 (not b_next!50467) b_and!137943 (not b_next!50469) (not b_next!50473) (not b_next!50463))
(get-model)

(declare-fun d!545822 () Bool)

(declare-fun lt!697489 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2877 (List!19799) (InoxSet Rule!6878))

(assert (=> d!545822 (= lt!697489 (select (content!2877 rules!3447) (rule!5635 (_1!11057 lt!697425))))))

(declare-fun e!1145119 () Bool)

(assert (=> d!545822 (= lt!697489 e!1145119)))

(declare-fun res!806982 () Bool)

(assert (=> d!545822 (=> (not res!806982) (not e!1145119))))

(assert (=> d!545822 (= res!806982 ((_ is Cons!19729) rules!3447))))

(assert (=> d!545822 (= (contains!3571 rules!3447 (rule!5635 (_1!11057 lt!697425))) lt!697489)))

(declare-fun b!1789091 () Bool)

(declare-fun e!1145118 () Bool)

(assert (=> b!1789091 (= e!1145119 e!1145118)))

(declare-fun res!806981 () Bool)

(assert (=> b!1789091 (=> res!806981 e!1145118)))

(assert (=> b!1789091 (= res!806981 (= (h!25130 rules!3447) (rule!5635 (_1!11057 lt!697425))))))

(declare-fun b!1789092 () Bool)

(assert (=> b!1789092 (= e!1145118 (contains!3571 (t!167434 rules!3447) (rule!5635 (_1!11057 lt!697425))))))

(assert (= (and d!545822 res!806982) b!1789091))

(assert (= (and b!1789091 (not res!806981)) b!1789092))

(declare-fun m!2213375 () Bool)

(assert (=> d!545822 m!2213375))

(declare-fun m!2213377 () Bool)

(assert (=> d!545822 m!2213377))

(declare-fun m!2213379 () Bool)

(assert (=> b!1789092 m!2213379))

(assert (=> b!1788902 d!545822))

(declare-fun b!1789137 () Bool)

(declare-fun e!1145152 () Bool)

(declare-fun e!1145150 () Bool)

(assert (=> b!1789137 (= e!1145152 e!1145150)))

(declare-fun c!290882 () Bool)

(assert (=> b!1789137 (= c!290882 ((_ is EmptyLang!4867) (regex!3539 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun d!545828 () Bool)

(assert (=> d!545828 e!1145152))

(declare-fun c!290881 () Bool)

(assert (=> d!545828 (= c!290881 ((_ is EmptyExpr!4867) (regex!3539 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun lt!697502 () Bool)

(declare-fun e!1145151 () Bool)

(assert (=> d!545828 (= lt!697502 e!1145151)))

(declare-fun c!290880 () Bool)

(assert (=> d!545828 (= c!290880 (isEmpty!12471 lt!697424))))

(declare-fun validRegex!1975 (Regex!4867) Bool)

(assert (=> d!545828 (validRegex!1975 (regex!3539 (rule!5635 (_1!11057 lt!697425))))))

(assert (=> d!545828 (= (matchR!2340 (regex!3539 (rule!5635 (_1!11057 lt!697425))) lt!697424) lt!697502)))

(declare-fun b!1789138 () Bool)

(declare-fun e!1145149 () Bool)

(assert (=> b!1789138 (= e!1145149 (= (head!4196 lt!697424) (c!290840 (regex!3539 (rule!5635 (_1!11057 lt!697425))))))))

(declare-fun b!1789139 () Bool)

(declare-fun e!1145148 () Bool)

(assert (=> b!1789139 (= e!1145148 (not (= (head!4196 lt!697424) (c!290840 (regex!3539 (rule!5635 (_1!11057 lt!697425)))))))))

(declare-fun b!1789140 () Bool)

(declare-fun res!807007 () Bool)

(assert (=> b!1789140 (=> (not res!807007) (not e!1145149))))

(declare-fun tail!2677 (List!19798) List!19798)

(assert (=> b!1789140 (= res!807007 (isEmpty!12471 (tail!2677 lt!697424)))))

(declare-fun b!1789141 () Bool)

(declare-fun derivativeStep!1270 (Regex!4867 C!9908) Regex!4867)

(assert (=> b!1789141 (= e!1145151 (matchR!2340 (derivativeStep!1270 (regex!3539 (rule!5635 (_1!11057 lt!697425))) (head!4196 lt!697424)) (tail!2677 lt!697424)))))

(declare-fun b!1789142 () Bool)

(declare-fun e!1145146 () Bool)

(assert (=> b!1789142 (= e!1145146 e!1145148)))

(declare-fun res!807009 () Bool)

(assert (=> b!1789142 (=> res!807009 e!1145148)))

(declare-fun call!111418 () Bool)

(assert (=> b!1789142 (= res!807009 call!111418)))

(declare-fun b!1789143 () Bool)

(declare-fun res!807012 () Bool)

(assert (=> b!1789143 (=> (not res!807012) (not e!1145149))))

(assert (=> b!1789143 (= res!807012 (not call!111418))))

(declare-fun b!1789144 () Bool)

(declare-fun e!1145147 () Bool)

(assert (=> b!1789144 (= e!1145147 e!1145146)))

(declare-fun res!807010 () Bool)

(assert (=> b!1789144 (=> (not res!807010) (not e!1145146))))

(assert (=> b!1789144 (= res!807010 (not lt!697502))))

(declare-fun bm!111413 () Bool)

(assert (=> bm!111413 (= call!111418 (isEmpty!12471 lt!697424))))

(declare-fun b!1789145 () Bool)

(assert (=> b!1789145 (= e!1145150 (not lt!697502))))

(declare-fun b!1789146 () Bool)

(declare-fun res!807008 () Bool)

(assert (=> b!1789146 (=> res!807008 e!1145147)))

(assert (=> b!1789146 (= res!807008 (not ((_ is ElementMatch!4867) (regex!3539 (rule!5635 (_1!11057 lt!697425))))))))

(assert (=> b!1789146 (= e!1145150 e!1145147)))

(declare-fun b!1789147 () Bool)

(declare-fun res!807014 () Bool)

(assert (=> b!1789147 (=> res!807014 e!1145148)))

(assert (=> b!1789147 (= res!807014 (not (isEmpty!12471 (tail!2677 lt!697424))))))

(declare-fun b!1789148 () Bool)

(assert (=> b!1789148 (= e!1145152 (= lt!697502 call!111418))))

(declare-fun b!1789149 () Bool)

(declare-fun nullable!1501 (Regex!4867) Bool)

(assert (=> b!1789149 (= e!1145151 (nullable!1501 (regex!3539 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1789150 () Bool)

(declare-fun res!807011 () Bool)

(assert (=> b!1789150 (=> res!807011 e!1145147)))

(assert (=> b!1789150 (= res!807011 e!1145149)))

(declare-fun res!807013 () Bool)

(assert (=> b!1789150 (=> (not res!807013) (not e!1145149))))

(assert (=> b!1789150 (= res!807013 lt!697502)))

(assert (= (and d!545828 c!290880) b!1789149))

(assert (= (and d!545828 (not c!290880)) b!1789141))

(assert (= (and d!545828 c!290881) b!1789148))

(assert (= (and d!545828 (not c!290881)) b!1789137))

(assert (= (and b!1789137 c!290882) b!1789145))

(assert (= (and b!1789137 (not c!290882)) b!1789146))

(assert (= (and b!1789146 (not res!807008)) b!1789150))

(assert (= (and b!1789150 res!807013) b!1789143))

(assert (= (and b!1789143 res!807012) b!1789140))

(assert (= (and b!1789140 res!807007) b!1789138))

(assert (= (and b!1789150 (not res!807011)) b!1789144))

(assert (= (and b!1789144 res!807010) b!1789142))

(assert (= (and b!1789142 (not res!807009)) b!1789147))

(assert (= (and b!1789147 (not res!807014)) b!1789139))

(assert (= (or b!1789148 b!1789142 b!1789143) bm!111413))

(declare-fun m!2213399 () Bool)

(assert (=> b!1789139 m!2213399))

(declare-fun m!2213401 () Bool)

(assert (=> bm!111413 m!2213401))

(assert (=> d!545828 m!2213401))

(declare-fun m!2213403 () Bool)

(assert (=> d!545828 m!2213403))

(declare-fun m!2213405 () Bool)

(assert (=> b!1789149 m!2213405))

(assert (=> b!1789141 m!2213399))

(assert (=> b!1789141 m!2213399))

(declare-fun m!2213407 () Bool)

(assert (=> b!1789141 m!2213407))

(declare-fun m!2213409 () Bool)

(assert (=> b!1789141 m!2213409))

(assert (=> b!1789141 m!2213407))

(assert (=> b!1789141 m!2213409))

(declare-fun m!2213411 () Bool)

(assert (=> b!1789141 m!2213411))

(assert (=> b!1789140 m!2213409))

(assert (=> b!1789140 m!2213409))

(declare-fun m!2213413 () Bool)

(assert (=> b!1789140 m!2213413))

(assert (=> b!1789147 m!2213409))

(assert (=> b!1789147 m!2213409))

(assert (=> b!1789147 m!2213413))

(assert (=> b!1789138 m!2213399))

(assert (=> b!1788924 d!545828))

(declare-fun d!545844 () Bool)

(assert (=> d!545844 (= (isEmpty!12471 (_2!11057 lt!697427)) ((_ is Nil!19728) (_2!11057 lt!697427)))))

(assert (=> b!1788904 d!545844))

(declare-fun d!545846 () Bool)

(assert (=> d!545846 (not (matchR!2340 (regex!3539 rule!422) lt!697446))))

(declare-fun lt!697506 () Unit!34147)

(declare-fun choose!11317 (LexerInterface!3168 List!19799 Rule!6878 List!19798 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> d!545846 (= lt!697506 (choose!11317 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 lt!697446 rule!422))))

(assert (=> d!545846 (isPrefix!1779 lt!697424 lt!697435)))

(assert (=> d!545846 (= (lemmaMaxPrefixOutputsMaxPrefix!248 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 lt!697446 rule!422) lt!697506)))

(declare-fun bs!405548 () Bool)

(assert (= bs!405548 d!545846))

(assert (=> bs!405548 m!2213103))

(declare-fun m!2213425 () Bool)

(assert (=> bs!405548 m!2213425))

(assert (=> bs!405548 m!2213189))

(assert (=> b!1788926 d!545846))

(declare-fun d!545854 () Bool)

(assert (=> d!545854 (= (inv!25697 (tag!3945 (h!25130 rules!3447))) (= (mod (str.len (value!110533 (tag!3945 (h!25130 rules!3447)))) 2) 0))))

(assert (=> b!1788905 d!545854))

(declare-fun d!545856 () Bool)

(declare-fun res!807022 () Bool)

(declare-fun e!1145164 () Bool)

(assert (=> d!545856 (=> (not res!807022) (not e!1145164))))

(declare-fun semiInverseModEq!1416 (Int Int) Bool)

(assert (=> d!545856 (= res!807022 (semiInverseModEq!1416 (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (h!25130 rules!3447)))))))

(assert (=> d!545856 (= (inv!25702 (transformation!3539 (h!25130 rules!3447))) e!1145164)))

(declare-fun b!1789163 () Bool)

(declare-fun equivClasses!1357 (Int Int) Bool)

(assert (=> b!1789163 (= e!1145164 (equivClasses!1357 (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (h!25130 rules!3447)))))))

(assert (= (and d!545856 res!807022) b!1789163))

(declare-fun m!2213437 () Bool)

(assert (=> d!545856 m!2213437))

(declare-fun m!2213439 () Bool)

(assert (=> b!1789163 m!2213439))

(assert (=> b!1788905 d!545856))

(declare-fun d!545866 () Bool)

(declare-fun lt!697508 () Bool)

(assert (=> d!545866 (= lt!697508 (select (content!2877 rules!3447) (rule!5635 token!523)))))

(declare-fun e!1145166 () Bool)

(assert (=> d!545866 (= lt!697508 e!1145166)))

(declare-fun res!807024 () Bool)

(assert (=> d!545866 (=> (not res!807024) (not e!1145166))))

(assert (=> d!545866 (= res!807024 ((_ is Cons!19729) rules!3447))))

(assert (=> d!545866 (= (contains!3571 rules!3447 (rule!5635 token!523)) lt!697508)))

(declare-fun b!1789164 () Bool)

(declare-fun e!1145165 () Bool)

(assert (=> b!1789164 (= e!1145166 e!1145165)))

(declare-fun res!807023 () Bool)

(assert (=> b!1789164 (=> res!807023 e!1145165)))

(assert (=> b!1789164 (= res!807023 (= (h!25130 rules!3447) (rule!5635 token!523)))))

(declare-fun b!1789165 () Bool)

(assert (=> b!1789165 (= e!1145165 (contains!3571 (t!167434 rules!3447) (rule!5635 token!523)))))

(assert (= (and d!545866 res!807024) b!1789164))

(assert (= (and b!1789164 (not res!807023)) b!1789165))

(assert (=> d!545866 m!2213375))

(declare-fun m!2213441 () Bool)

(assert (=> d!545866 m!2213441))

(declare-fun m!2213443 () Bool)

(assert (=> b!1789165 m!2213443))

(assert (=> b!1788927 d!545866))

(declare-fun b!1789183 () Bool)

(declare-fun e!1145177 () Bool)

(declare-fun inv!15 (TokenValue!3629) Bool)

(assert (=> b!1789183 (= e!1145177 (inv!15 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(declare-fun b!1789184 () Bool)

(declare-fun e!1145179 () Bool)

(declare-fun inv!17 (TokenValue!3629) Bool)

(assert (=> b!1789184 (= e!1145179 (inv!17 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(declare-fun b!1789185 () Bool)

(declare-fun e!1145178 () Bool)

(declare-fun inv!16 (TokenValue!3629) Bool)

(assert (=> b!1789185 (= e!1145178 (inv!16 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(declare-fun b!1789186 () Bool)

(declare-fun res!807033 () Bool)

(assert (=> b!1789186 (=> res!807033 e!1145177)))

(assert (=> b!1789186 (= res!807033 (not ((_ is IntegerValue!10889) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))))

(assert (=> b!1789186 (= e!1145179 e!1145177)))

(declare-fun b!1789187 () Bool)

(assert (=> b!1789187 (= e!1145178 e!1145179)))

(declare-fun c!290888 () Bool)

(assert (=> b!1789187 (= c!290888 ((_ is IntegerValue!10888) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(declare-fun d!545868 () Bool)

(declare-fun c!290887 () Bool)

(assert (=> d!545868 (= c!290887 ((_ is IntegerValue!10887) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))

(assert (=> d!545868 (= (inv!21 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)) e!1145178)))

(assert (= (and d!545868 c!290887) b!1789185))

(assert (= (and d!545868 (not c!290887)) b!1789187))

(assert (= (and b!1789187 c!290888) b!1789184))

(assert (= (and b!1789187 (not c!290888)) b!1789186))

(assert (= (and b!1789186 (not res!807033)) b!1789183))

(declare-fun m!2213459 () Bool)

(assert (=> b!1789183 m!2213459))

(declare-fun m!2213461 () Bool)

(assert (=> b!1789184 m!2213461))

(declare-fun m!2213463 () Bool)

(assert (=> b!1789185 m!2213463))

(assert (=> tb!109039 d!545868))

(declare-fun d!545874 () Bool)

(assert (=> d!545874 (not (matchR!2340 (regex!3539 (rule!5635 token!523)) lt!697424))))

(declare-fun lt!697515 () Unit!34147)

(declare-fun choose!11318 (LexerInterface!3168 List!19799 Rule!6878 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> d!545874 (= lt!697515 (choose!11318 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 (rule!5635 token!523)))))

(assert (=> d!545874 (isPrefix!1779 lt!697424 lt!697435)))

(assert (=> d!545874 (= (lemmaMaxPrefNoSmallerRuleMatches!160 thiss!24550 rules!3447 (rule!5635 (_1!11057 lt!697425)) lt!697424 lt!697435 (rule!5635 token!523)) lt!697515)))

(declare-fun bs!405552 () Bool)

(assert (= bs!405552 d!545874))

(assert (=> bs!405552 m!2213093))

(declare-fun m!2213471 () Bool)

(assert (=> bs!405552 m!2213471))

(assert (=> bs!405552 m!2213189))

(assert (=> b!1788928 d!545874))

(declare-fun b!1789191 () Bool)

(declare-fun e!1145188 () Bool)

(declare-fun e!1145186 () Bool)

(assert (=> b!1789191 (= e!1145188 e!1145186)))

(declare-fun c!290892 () Bool)

(assert (=> b!1789191 (= c!290892 ((_ is EmptyLang!4867) (regex!3539 (rule!5635 token!523))))))

(declare-fun d!545880 () Bool)

(assert (=> d!545880 e!1145188))

(declare-fun c!290891 () Bool)

(assert (=> d!545880 (= c!290891 ((_ is EmptyExpr!4867) (regex!3539 (rule!5635 token!523))))))

(declare-fun lt!697516 () Bool)

(declare-fun e!1145187 () Bool)

(assert (=> d!545880 (= lt!697516 e!1145187)))

(declare-fun c!290890 () Bool)

(assert (=> d!545880 (= c!290890 (isEmpty!12471 lt!697424))))

(assert (=> d!545880 (validRegex!1975 (regex!3539 (rule!5635 token!523)))))

(assert (=> d!545880 (= (matchR!2340 (regex!3539 (rule!5635 token!523)) lt!697424) lt!697516)))

(declare-fun b!1789192 () Bool)

(declare-fun e!1145185 () Bool)

(assert (=> b!1789192 (= e!1145185 (= (head!4196 lt!697424) (c!290840 (regex!3539 (rule!5635 token!523)))))))

(declare-fun b!1789193 () Bool)

(declare-fun e!1145184 () Bool)

(assert (=> b!1789193 (= e!1145184 (not (= (head!4196 lt!697424) (c!290840 (regex!3539 (rule!5635 token!523))))))))

(declare-fun b!1789194 () Bool)

(declare-fun res!807035 () Bool)

(assert (=> b!1789194 (=> (not res!807035) (not e!1145185))))

(assert (=> b!1789194 (= res!807035 (isEmpty!12471 (tail!2677 lt!697424)))))

(declare-fun b!1789195 () Bool)

(assert (=> b!1789195 (= e!1145187 (matchR!2340 (derivativeStep!1270 (regex!3539 (rule!5635 token!523)) (head!4196 lt!697424)) (tail!2677 lt!697424)))))

(declare-fun b!1789196 () Bool)

(declare-fun e!1145182 () Bool)

(assert (=> b!1789196 (= e!1145182 e!1145184)))

(declare-fun res!807037 () Bool)

(assert (=> b!1789196 (=> res!807037 e!1145184)))

(declare-fun call!111419 () Bool)

(assert (=> b!1789196 (= res!807037 call!111419)))

(declare-fun b!1789197 () Bool)

(declare-fun res!807040 () Bool)

(assert (=> b!1789197 (=> (not res!807040) (not e!1145185))))

(assert (=> b!1789197 (= res!807040 (not call!111419))))

(declare-fun b!1789198 () Bool)

(declare-fun e!1145183 () Bool)

(assert (=> b!1789198 (= e!1145183 e!1145182)))

(declare-fun res!807038 () Bool)

(assert (=> b!1789198 (=> (not res!807038) (not e!1145182))))

(assert (=> b!1789198 (= res!807038 (not lt!697516))))

(declare-fun bm!111414 () Bool)

(assert (=> bm!111414 (= call!111419 (isEmpty!12471 lt!697424))))

(declare-fun b!1789199 () Bool)

(assert (=> b!1789199 (= e!1145186 (not lt!697516))))

(declare-fun b!1789200 () Bool)

(declare-fun res!807036 () Bool)

(assert (=> b!1789200 (=> res!807036 e!1145183)))

(assert (=> b!1789200 (= res!807036 (not ((_ is ElementMatch!4867) (regex!3539 (rule!5635 token!523)))))))

(assert (=> b!1789200 (= e!1145186 e!1145183)))

(declare-fun b!1789201 () Bool)

(declare-fun res!807042 () Bool)

(assert (=> b!1789201 (=> res!807042 e!1145184)))

(assert (=> b!1789201 (= res!807042 (not (isEmpty!12471 (tail!2677 lt!697424))))))

(declare-fun b!1789202 () Bool)

(assert (=> b!1789202 (= e!1145188 (= lt!697516 call!111419))))

(declare-fun b!1789203 () Bool)

(assert (=> b!1789203 (= e!1145187 (nullable!1501 (regex!3539 (rule!5635 token!523))))))

(declare-fun b!1789204 () Bool)

(declare-fun res!807039 () Bool)

(assert (=> b!1789204 (=> res!807039 e!1145183)))

(assert (=> b!1789204 (= res!807039 e!1145185)))

(declare-fun res!807041 () Bool)

(assert (=> b!1789204 (=> (not res!807041) (not e!1145185))))

(assert (=> b!1789204 (= res!807041 lt!697516)))

(assert (= (and d!545880 c!290890) b!1789203))

(assert (= (and d!545880 (not c!290890)) b!1789195))

(assert (= (and d!545880 c!290891) b!1789202))

(assert (= (and d!545880 (not c!290891)) b!1789191))

(assert (= (and b!1789191 c!290892) b!1789199))

(assert (= (and b!1789191 (not c!290892)) b!1789200))

(assert (= (and b!1789200 (not res!807036)) b!1789204))

(assert (= (and b!1789204 res!807041) b!1789197))

(assert (= (and b!1789197 res!807040) b!1789194))

(assert (= (and b!1789194 res!807035) b!1789192))

(assert (= (and b!1789204 (not res!807039)) b!1789198))

(assert (= (and b!1789198 res!807038) b!1789196))

(assert (= (and b!1789196 (not res!807037)) b!1789201))

(assert (= (and b!1789201 (not res!807042)) b!1789193))

(assert (= (or b!1789202 b!1789196 b!1789197) bm!111414))

(assert (=> b!1789193 m!2213399))

(assert (=> bm!111414 m!2213401))

(assert (=> d!545880 m!2213401))

(declare-fun m!2213473 () Bool)

(assert (=> d!545880 m!2213473))

(declare-fun m!2213475 () Bool)

(assert (=> b!1789203 m!2213475))

(assert (=> b!1789195 m!2213399))

(assert (=> b!1789195 m!2213399))

(declare-fun m!2213477 () Bool)

(assert (=> b!1789195 m!2213477))

(assert (=> b!1789195 m!2213409))

(assert (=> b!1789195 m!2213477))

(assert (=> b!1789195 m!2213409))

(declare-fun m!2213479 () Bool)

(assert (=> b!1789195 m!2213479))

(assert (=> b!1789194 m!2213409))

(assert (=> b!1789194 m!2213409))

(assert (=> b!1789194 m!2213413))

(assert (=> b!1789201 m!2213409))

(assert (=> b!1789201 m!2213409))

(assert (=> b!1789201 m!2213413))

(assert (=> b!1789192 m!2213399))

(assert (=> b!1788928 d!545880))

(declare-fun d!545882 () Bool)

(declare-fun choose!11319 (Int) Bool)

(assert (=> d!545882 (= (Forall!906 lambda!70840) (choose!11319 lambda!70840))))

(declare-fun bs!405553 () Bool)

(assert (= bs!405553 d!545882))

(declare-fun m!2213481 () Bool)

(assert (=> bs!405553 m!2213481))

(assert (=> b!1788907 d!545882))

(declare-fun d!545884 () Bool)

(declare-fun e!1145198 () Bool)

(assert (=> d!545884 e!1145198))

(declare-fun res!807053 () Bool)

(assert (=> d!545884 (=> (not res!807053) (not e!1145198))))

(assert (=> d!545884 (= res!807053 (semiInverseModEq!1416 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))))))

(declare-fun Unit!34156 () Unit!34147)

(assert (=> d!545884 (= (lemmaInv!738 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) Unit!34156)))

(declare-fun b!1789221 () Bool)

(assert (=> b!1789221 (= e!1145198 (equivClasses!1357 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))))))

(assert (= (and d!545884 res!807053) b!1789221))

(declare-fun m!2213493 () Bool)

(assert (=> d!545884 m!2213493))

(declare-fun m!2213495 () Bool)

(assert (=> b!1789221 m!2213495))

(assert (=> b!1788907 d!545884))

(declare-fun d!545890 () Bool)

(assert (=> d!545890 (= (get!6087 lt!697443) (v!25601 lt!697443))))

(assert (=> b!1788929 d!545890))

(declare-fun d!545892 () Bool)

(declare-fun isEmpty!12472 (Option!4101) Bool)

(assert (=> d!545892 (= (isDefined!3444 lt!697443) (not (isEmpty!12472 lt!697443)))))

(declare-fun bs!405555 () Bool)

(assert (= bs!405555 d!545892))

(declare-fun m!2213497 () Bool)

(assert (=> bs!405555 m!2213497))

(assert (=> b!1788930 d!545892))

(declare-fun b!1789267 () Bool)

(declare-fun res!807073 () Bool)

(declare-fun e!1145222 () Bool)

(assert (=> b!1789267 (=> (not res!807073) (not e!1145222))))

(declare-fun lt!697542 () Option!4101)

(assert (=> b!1789267 (= res!807073 (< (size!15674 (_2!11057 (get!6087 lt!697542))) (size!15674 lt!697446)))))

(declare-fun b!1789268 () Bool)

(declare-fun e!1145220 () Option!4101)

(declare-fun call!111423 () Option!4101)

(assert (=> b!1789268 (= e!1145220 call!111423)))

(declare-fun b!1789269 () Bool)

(assert (=> b!1789269 (= e!1145222 (contains!3571 rules!3447 (rule!5635 (_1!11057 (get!6087 lt!697542)))))))

(declare-fun b!1789270 () Bool)

(declare-fun res!807075 () Bool)

(assert (=> b!1789270 (=> (not res!807075) (not e!1145222))))

(assert (=> b!1789270 (= res!807075 (= (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697542)))) (originalCharacters!4353 (_1!11057 (get!6087 lt!697542)))))))

(declare-fun bm!111418 () Bool)

(assert (=> bm!111418 (= call!111423 (maxPrefixOneRule!1091 thiss!24550 (h!25130 rules!3447) lt!697446))))

(declare-fun b!1789272 () Bool)

(declare-fun res!807077 () Bool)

(assert (=> b!1789272 (=> (not res!807077) (not e!1145222))))

(assert (=> b!1789272 (= res!807077 (= (value!110534 (_1!11057 (get!6087 lt!697542))) (apply!5339 (transformation!3539 (rule!5635 (_1!11057 (get!6087 lt!697542)))) (seqFromList!2508 (originalCharacters!4353 (_1!11057 (get!6087 lt!697542)))))))))

(declare-fun b!1789273 () Bool)

(declare-fun res!807076 () Bool)

(assert (=> b!1789273 (=> (not res!807076) (not e!1145222))))

(assert (=> b!1789273 (= res!807076 (matchR!2340 (regex!3539 (rule!5635 (_1!11057 (get!6087 lt!697542)))) (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697542))))))))

(declare-fun b!1789274 () Bool)

(declare-fun res!807074 () Bool)

(assert (=> b!1789274 (=> (not res!807074) (not e!1145222))))

(assert (=> b!1789274 (= res!807074 (= (++!5363 (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697542)))) (_2!11057 (get!6087 lt!697542))) lt!697446))))

(declare-fun b!1789275 () Bool)

(declare-fun lt!697543 () Option!4101)

(declare-fun lt!697540 () Option!4101)

(assert (=> b!1789275 (= e!1145220 (ite (and ((_ is None!4100) lt!697543) ((_ is None!4100) lt!697540)) None!4100 (ite ((_ is None!4100) lt!697540) lt!697543 (ite ((_ is None!4100) lt!697543) lt!697540 (ite (>= (size!15672 (_1!11057 (v!25601 lt!697543))) (size!15672 (_1!11057 (v!25601 lt!697540)))) lt!697543 lt!697540)))))))

(assert (=> b!1789275 (= lt!697543 call!111423)))

(assert (=> b!1789275 (= lt!697540 (maxPrefix!1722 thiss!24550 (t!167434 rules!3447) lt!697446))))

(declare-fun d!545894 () Bool)

(declare-fun e!1145221 () Bool)

(assert (=> d!545894 e!1145221))

(declare-fun res!807078 () Bool)

(assert (=> d!545894 (=> res!807078 e!1145221)))

(assert (=> d!545894 (= res!807078 (isEmpty!12472 lt!697542))))

(assert (=> d!545894 (= lt!697542 e!1145220)))

(declare-fun c!290909 () Bool)

(assert (=> d!545894 (= c!290909 (and ((_ is Cons!19729) rules!3447) ((_ is Nil!19729) (t!167434 rules!3447))))))

(declare-fun lt!697539 () Unit!34147)

(declare-fun lt!697541 () Unit!34147)

(assert (=> d!545894 (= lt!697539 lt!697541)))

(assert (=> d!545894 (isPrefix!1779 lt!697446 lt!697446)))

(declare-fun lemmaIsPrefixRefl!1169 (List!19798 List!19798) Unit!34147)

(assert (=> d!545894 (= lt!697541 (lemmaIsPrefixRefl!1169 lt!697446 lt!697446))))

(declare-fun rulesValidInductive!1205 (LexerInterface!3168 List!19799) Bool)

(assert (=> d!545894 (rulesValidInductive!1205 thiss!24550 rules!3447)))

(assert (=> d!545894 (= (maxPrefix!1722 thiss!24550 rules!3447 lt!697446) lt!697542)))

(declare-fun b!1789271 () Bool)

(assert (=> b!1789271 (= e!1145221 e!1145222)))

(declare-fun res!807079 () Bool)

(assert (=> b!1789271 (=> (not res!807079) (not e!1145222))))

(assert (=> b!1789271 (= res!807079 (isDefined!3444 lt!697542))))

(assert (= (and d!545894 c!290909) b!1789268))

(assert (= (and d!545894 (not c!290909)) b!1789275))

(assert (= (or b!1789268 b!1789275) bm!111418))

(assert (= (and d!545894 (not res!807078)) b!1789271))

(assert (= (and b!1789271 res!807079) b!1789270))

(assert (= (and b!1789270 res!807075) b!1789267))

(assert (= (and b!1789267 res!807073) b!1789274))

(assert (= (and b!1789274 res!807074) b!1789272))

(assert (= (and b!1789272 res!807077) b!1789273))

(assert (= (and b!1789273 res!807076) b!1789269))

(declare-fun m!2213535 () Bool)

(assert (=> b!1789273 m!2213535))

(declare-fun m!2213537 () Bool)

(assert (=> b!1789273 m!2213537))

(assert (=> b!1789273 m!2213537))

(declare-fun m!2213539 () Bool)

(assert (=> b!1789273 m!2213539))

(assert (=> b!1789273 m!2213539))

(declare-fun m!2213541 () Bool)

(assert (=> b!1789273 m!2213541))

(assert (=> b!1789269 m!2213535))

(declare-fun m!2213543 () Bool)

(assert (=> b!1789269 m!2213543))

(declare-fun m!2213545 () Bool)

(assert (=> d!545894 m!2213545))

(assert (=> d!545894 m!2213115))

(declare-fun m!2213547 () Bool)

(assert (=> d!545894 m!2213547))

(declare-fun m!2213549 () Bool)

(assert (=> d!545894 m!2213549))

(assert (=> b!1789274 m!2213535))

(assert (=> b!1789274 m!2213537))

(assert (=> b!1789274 m!2213537))

(assert (=> b!1789274 m!2213539))

(assert (=> b!1789274 m!2213539))

(declare-fun m!2213551 () Bool)

(assert (=> b!1789274 m!2213551))

(declare-fun m!2213553 () Bool)

(assert (=> b!1789271 m!2213553))

(declare-fun m!2213555 () Bool)

(assert (=> bm!111418 m!2213555))

(declare-fun m!2213557 () Bool)

(assert (=> b!1789275 m!2213557))

(assert (=> b!1789270 m!2213535))

(assert (=> b!1789270 m!2213537))

(assert (=> b!1789270 m!2213537))

(assert (=> b!1789270 m!2213539))

(assert (=> b!1789272 m!2213535))

(declare-fun m!2213559 () Bool)

(assert (=> b!1789272 m!2213559))

(assert (=> b!1789272 m!2213559))

(declare-fun m!2213561 () Bool)

(assert (=> b!1789272 m!2213561))

(assert (=> b!1789267 m!2213535))

(declare-fun m!2213563 () Bool)

(assert (=> b!1789267 m!2213563))

(declare-fun m!2213565 () Bool)

(assert (=> b!1789267 m!2213565))

(assert (=> b!1788930 d!545894))

(declare-fun d!545910 () Bool)

(declare-fun list!8026 (Conc!6563) List!19798)

(assert (=> d!545910 (= (list!8025 lt!697417) (list!8026 (c!290841 lt!697417)))))

(declare-fun bs!405558 () Bool)

(assert (= bs!405558 d!545910))

(declare-fun m!2213567 () Bool)

(assert (=> bs!405558 m!2213567))

(assert (=> b!1788930 d!545910))

(declare-fun d!545912 () Bool)

(declare-fun lt!697546 () BalanceConc!13070)

(assert (=> d!545912 (= (list!8025 lt!697546) (originalCharacters!4353 token!523))))

(assert (=> d!545912 (= lt!697546 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (value!110534 token!523)))))

(assert (=> d!545912 (= (charsOf!2188 token!523) lt!697546)))

(declare-fun b_lambda!58781 () Bool)

(assert (=> (not b_lambda!58781) (not d!545912)))

(declare-fun tb!109057 () Bool)

(declare-fun t!167448 () Bool)

(assert (=> (and b!1788918 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 token!523)))) t!167448) tb!109057))

(declare-fun b!1789276 () Bool)

(declare-fun e!1145223 () Bool)

(declare-fun tp!505800 () Bool)

(assert (=> b!1789276 (= e!1145223 (and (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (value!110534 token!523)))) tp!505800))))

(declare-fun result!131224 () Bool)

(assert (=> tb!109057 (= result!131224 (and (inv!25705 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (value!110534 token!523))) e!1145223))))

(assert (= tb!109057 b!1789276))

(declare-fun m!2213569 () Bool)

(assert (=> b!1789276 m!2213569))

(declare-fun m!2213571 () Bool)

(assert (=> tb!109057 m!2213571))

(assert (=> d!545912 t!167448))

(declare-fun b_and!137969 () Bool)

(assert (= b_and!137933 (and (=> t!167448 result!131224) b_and!137969)))

(declare-fun tb!109059 () Bool)

(declare-fun t!167450 () Bool)

(assert (=> (and b!1788909 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 token!523)))) t!167450) tb!109059))

(declare-fun result!131226 () Bool)

(assert (= result!131226 result!131224))

(assert (=> d!545912 t!167450))

(declare-fun b_and!137971 () Bool)

(assert (= b_and!137935 (and (=> t!167450 result!131226) b_and!137971)))

(declare-fun t!167452 () Bool)

(declare-fun tb!109061 () Bool)

(assert (=> (and b!1788916 (= (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toChars!4925 (transformation!3539 (rule!5635 token!523)))) t!167452) tb!109061))

(declare-fun result!131228 () Bool)

(assert (= result!131228 result!131224))

(assert (=> d!545912 t!167452))

(declare-fun b_and!137973 () Bool)

(assert (= b_and!137937 (and (=> t!167452 result!131228) b_and!137973)))

(declare-fun m!2213573 () Bool)

(assert (=> d!545912 m!2213573))

(declare-fun m!2213575 () Bool)

(assert (=> d!545912 m!2213575))

(assert (=> b!1788930 d!545912))

(declare-fun d!545914 () Bool)

(declare-fun c!290912 () Bool)

(assert (=> d!545914 (= c!290912 ((_ is Node!6563) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))))

(declare-fun e!1145228 () Bool)

(assert (=> d!545914 (= (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))) e!1145228)))

(declare-fun b!1789283 () Bool)

(declare-fun inv!25708 (Conc!6563) Bool)

(assert (=> b!1789283 (= e!1145228 (inv!25708 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))))

(declare-fun b!1789284 () Bool)

(declare-fun e!1145229 () Bool)

(assert (=> b!1789284 (= e!1145228 e!1145229)))

(declare-fun res!807082 () Bool)

(assert (=> b!1789284 (= res!807082 (not ((_ is Leaf!9553) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))))))

(assert (=> b!1789284 (=> res!807082 e!1145229)))

(declare-fun b!1789285 () Bool)

(declare-fun inv!25709 (Conc!6563) Bool)

(assert (=> b!1789285 (= e!1145229 (inv!25709 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))))

(assert (= (and d!545914 c!290912) b!1789283))

(assert (= (and d!545914 (not c!290912)) b!1789284))

(assert (= (and b!1789284 (not res!807082)) b!1789285))

(declare-fun m!2213577 () Bool)

(assert (=> b!1789283 m!2213577))

(declare-fun m!2213579 () Bool)

(assert (=> b!1789285 m!2213579))

(assert (=> b!1788953 d!545914))

(declare-fun b!1789286 () Bool)

(declare-fun e!1145236 () Bool)

(declare-fun e!1145234 () Bool)

(assert (=> b!1789286 (= e!1145236 e!1145234)))

(declare-fun c!290915 () Bool)

(assert (=> b!1789286 (= c!290915 ((_ is EmptyLang!4867) (regex!3539 lt!697420)))))

(declare-fun d!545916 () Bool)

(assert (=> d!545916 e!1145236))

(declare-fun c!290914 () Bool)

(assert (=> d!545916 (= c!290914 ((_ is EmptyExpr!4867) (regex!3539 lt!697420)))))

(declare-fun lt!697547 () Bool)

(declare-fun e!1145235 () Bool)

(assert (=> d!545916 (= lt!697547 e!1145235)))

(declare-fun c!290913 () Bool)

(assert (=> d!545916 (= c!290913 (isEmpty!12471 (list!8025 (charsOf!2188 (_1!11057 lt!697425)))))))

(assert (=> d!545916 (validRegex!1975 (regex!3539 lt!697420))))

(assert (=> d!545916 (= (matchR!2340 (regex!3539 lt!697420) (list!8025 (charsOf!2188 (_1!11057 lt!697425)))) lt!697547)))

(declare-fun b!1789287 () Bool)

(declare-fun e!1145233 () Bool)

(assert (=> b!1789287 (= e!1145233 (= (head!4196 (list!8025 (charsOf!2188 (_1!11057 lt!697425)))) (c!290840 (regex!3539 lt!697420))))))

(declare-fun b!1789288 () Bool)

(declare-fun e!1145232 () Bool)

(assert (=> b!1789288 (= e!1145232 (not (= (head!4196 (list!8025 (charsOf!2188 (_1!11057 lt!697425)))) (c!290840 (regex!3539 lt!697420)))))))

(declare-fun b!1789289 () Bool)

(declare-fun res!807083 () Bool)

(assert (=> b!1789289 (=> (not res!807083) (not e!1145233))))

(assert (=> b!1789289 (= res!807083 (isEmpty!12471 (tail!2677 (list!8025 (charsOf!2188 (_1!11057 lt!697425))))))))

(declare-fun b!1789290 () Bool)

(assert (=> b!1789290 (= e!1145235 (matchR!2340 (derivativeStep!1270 (regex!3539 lt!697420) (head!4196 (list!8025 (charsOf!2188 (_1!11057 lt!697425))))) (tail!2677 (list!8025 (charsOf!2188 (_1!11057 lt!697425))))))))

(declare-fun b!1789291 () Bool)

(declare-fun e!1145230 () Bool)

(assert (=> b!1789291 (= e!1145230 e!1145232)))

(declare-fun res!807085 () Bool)

(assert (=> b!1789291 (=> res!807085 e!1145232)))

(declare-fun call!111424 () Bool)

(assert (=> b!1789291 (= res!807085 call!111424)))

(declare-fun b!1789292 () Bool)

(declare-fun res!807088 () Bool)

(assert (=> b!1789292 (=> (not res!807088) (not e!1145233))))

(assert (=> b!1789292 (= res!807088 (not call!111424))))

(declare-fun b!1789293 () Bool)

(declare-fun e!1145231 () Bool)

(assert (=> b!1789293 (= e!1145231 e!1145230)))

(declare-fun res!807086 () Bool)

(assert (=> b!1789293 (=> (not res!807086) (not e!1145230))))

(assert (=> b!1789293 (= res!807086 (not lt!697547))))

(declare-fun bm!111419 () Bool)

(assert (=> bm!111419 (= call!111424 (isEmpty!12471 (list!8025 (charsOf!2188 (_1!11057 lt!697425)))))))

(declare-fun b!1789294 () Bool)

(assert (=> b!1789294 (= e!1145234 (not lt!697547))))

(declare-fun b!1789295 () Bool)

(declare-fun res!807084 () Bool)

(assert (=> b!1789295 (=> res!807084 e!1145231)))

(assert (=> b!1789295 (= res!807084 (not ((_ is ElementMatch!4867) (regex!3539 lt!697420))))))

(assert (=> b!1789295 (= e!1145234 e!1145231)))

(declare-fun b!1789296 () Bool)

(declare-fun res!807090 () Bool)

(assert (=> b!1789296 (=> res!807090 e!1145232)))

(assert (=> b!1789296 (= res!807090 (not (isEmpty!12471 (tail!2677 (list!8025 (charsOf!2188 (_1!11057 lt!697425)))))))))

(declare-fun b!1789297 () Bool)

(assert (=> b!1789297 (= e!1145236 (= lt!697547 call!111424))))

(declare-fun b!1789298 () Bool)

(assert (=> b!1789298 (= e!1145235 (nullable!1501 (regex!3539 lt!697420)))))

(declare-fun b!1789299 () Bool)

(declare-fun res!807087 () Bool)

(assert (=> b!1789299 (=> res!807087 e!1145231)))

(assert (=> b!1789299 (= res!807087 e!1145233)))

(declare-fun res!807089 () Bool)

(assert (=> b!1789299 (=> (not res!807089) (not e!1145233))))

(assert (=> b!1789299 (= res!807089 lt!697547)))

(assert (= (and d!545916 c!290913) b!1789298))

(assert (= (and d!545916 (not c!290913)) b!1789290))

(assert (= (and d!545916 c!290914) b!1789297))

(assert (= (and d!545916 (not c!290914)) b!1789286))

(assert (= (and b!1789286 c!290915) b!1789294))

(assert (= (and b!1789286 (not c!290915)) b!1789295))

(assert (= (and b!1789295 (not res!807084)) b!1789299))

(assert (= (and b!1789299 res!807089) b!1789292))

(assert (= (and b!1789292 res!807088) b!1789289))

(assert (= (and b!1789289 res!807083) b!1789287))

(assert (= (and b!1789299 (not res!807087)) b!1789293))

(assert (= (and b!1789293 res!807086) b!1789291))

(assert (= (and b!1789291 (not res!807085)) b!1789296))

(assert (= (and b!1789296 (not res!807090)) b!1789288))

(assert (= (or b!1789297 b!1789291 b!1789292) bm!111419))

(assert (=> b!1789288 m!2213173))

(declare-fun m!2213581 () Bool)

(assert (=> b!1789288 m!2213581))

(assert (=> bm!111419 m!2213173))

(declare-fun m!2213583 () Bool)

(assert (=> bm!111419 m!2213583))

(assert (=> d!545916 m!2213173))

(assert (=> d!545916 m!2213583))

(declare-fun m!2213585 () Bool)

(assert (=> d!545916 m!2213585))

(declare-fun m!2213587 () Bool)

(assert (=> b!1789298 m!2213587))

(assert (=> b!1789290 m!2213173))

(assert (=> b!1789290 m!2213581))

(assert (=> b!1789290 m!2213581))

(declare-fun m!2213589 () Bool)

(assert (=> b!1789290 m!2213589))

(assert (=> b!1789290 m!2213173))

(declare-fun m!2213591 () Bool)

(assert (=> b!1789290 m!2213591))

(assert (=> b!1789290 m!2213589))

(assert (=> b!1789290 m!2213591))

(declare-fun m!2213593 () Bool)

(assert (=> b!1789290 m!2213593))

(assert (=> b!1789289 m!2213173))

(assert (=> b!1789289 m!2213591))

(assert (=> b!1789289 m!2213591))

(declare-fun m!2213595 () Bool)

(assert (=> b!1789289 m!2213595))

(assert (=> b!1789296 m!2213173))

(assert (=> b!1789296 m!2213591))

(assert (=> b!1789296 m!2213591))

(assert (=> b!1789296 m!2213595))

(assert (=> b!1789287 m!2213173))

(assert (=> b!1789287 m!2213581))

(assert (=> b!1788931 d!545916))

(declare-fun d!545918 () Bool)

(assert (=> d!545918 (= (list!8025 (charsOf!2188 (_1!11057 lt!697425))) (list!8026 (c!290841 (charsOf!2188 (_1!11057 lt!697425)))))))

(declare-fun bs!405559 () Bool)

(assert (= bs!405559 d!545918))

(declare-fun m!2213597 () Bool)

(assert (=> bs!405559 m!2213597))

(assert (=> b!1788931 d!545918))

(declare-fun d!545920 () Bool)

(declare-fun lt!697548 () BalanceConc!13070)

(assert (=> d!545920 (= (list!8025 lt!697548) (originalCharacters!4353 (_1!11057 lt!697425)))))

(assert (=> d!545920 (= lt!697548 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))

(assert (=> d!545920 (= (charsOf!2188 (_1!11057 lt!697425)) lt!697548)))

(declare-fun b_lambda!58783 () Bool)

(assert (=> (not b_lambda!58783) (not d!545920)))

(assert (=> d!545920 t!167415))

(declare-fun b_and!137975 () Bool)

(assert (= b_and!137969 (and (=> t!167415 result!131190) b_and!137975)))

(assert (=> d!545920 t!167417))

(declare-fun b_and!137977 () Bool)

(assert (= b_and!137971 (and (=> t!167417 result!131194) b_and!137977)))

(assert (=> d!545920 t!167419))

(declare-fun b_and!137979 () Bool)

(assert (= b_and!137973 (and (=> t!167419 result!131196) b_and!137979)))

(declare-fun m!2213599 () Bool)

(assert (=> d!545920 m!2213599))

(assert (=> d!545920 m!2213111))

(assert (=> b!1788931 d!545920))

(declare-fun d!545922 () Bool)

(assert (=> d!545922 (= (get!6088 lt!697445) (v!25600 lt!697445))))

(assert (=> b!1788931 d!545922))

(declare-fun b!1789300 () Bool)

(declare-fun e!1145237 () Bool)

(assert (=> b!1789300 (= e!1145237 (inv!15 (value!110534 token!523)))))

(declare-fun b!1789301 () Bool)

(declare-fun e!1145239 () Bool)

(assert (=> b!1789301 (= e!1145239 (inv!17 (value!110534 token!523)))))

(declare-fun b!1789302 () Bool)

(declare-fun e!1145238 () Bool)

(assert (=> b!1789302 (= e!1145238 (inv!16 (value!110534 token!523)))))

(declare-fun b!1789303 () Bool)

(declare-fun res!807091 () Bool)

(assert (=> b!1789303 (=> res!807091 e!1145237)))

(assert (=> b!1789303 (= res!807091 (not ((_ is IntegerValue!10889) (value!110534 token!523))))))

(assert (=> b!1789303 (= e!1145239 e!1145237)))

(declare-fun b!1789304 () Bool)

(assert (=> b!1789304 (= e!1145238 e!1145239)))

(declare-fun c!290917 () Bool)

(assert (=> b!1789304 (= c!290917 ((_ is IntegerValue!10888) (value!110534 token!523)))))

(declare-fun d!545924 () Bool)

(declare-fun c!290916 () Bool)

(assert (=> d!545924 (= c!290916 ((_ is IntegerValue!10887) (value!110534 token!523)))))

(assert (=> d!545924 (= (inv!21 (value!110534 token!523)) e!1145238)))

(assert (= (and d!545924 c!290916) b!1789302))

(assert (= (and d!545924 (not c!290916)) b!1789304))

(assert (= (and b!1789304 c!290917) b!1789301))

(assert (= (and b!1789304 (not c!290917)) b!1789303))

(assert (= (and b!1789303 (not res!807091)) b!1789300))

(declare-fun m!2213601 () Bool)

(assert (=> b!1789300 m!2213601))

(declare-fun m!2213603 () Bool)

(assert (=> b!1789301 m!2213603))

(declare-fun m!2213605 () Bool)

(assert (=> b!1789302 m!2213605))

(assert (=> b!1788910 d!545924))

(declare-fun d!545926 () Bool)

(assert (=> d!545926 (= suffix!1421 (_2!11057 lt!697425))))

(declare-fun lt!697551 () Unit!34147)

(declare-fun choose!11323 (List!19798 List!19798 List!19798 List!19798 List!19798) Unit!34147)

(assert (=> d!545926 (= lt!697551 (choose!11323 lt!697446 suffix!1421 lt!697446 (_2!11057 lt!697425) lt!697435))))

(assert (=> d!545926 (isPrefix!1779 lt!697446 lt!697435)))

(assert (=> d!545926 (= (lemmaSamePrefixThenSameSuffix!890 lt!697446 suffix!1421 lt!697446 (_2!11057 lt!697425) lt!697435) lt!697551)))

(declare-fun bs!405560 () Bool)

(assert (= bs!405560 d!545926))

(declare-fun m!2213607 () Bool)

(assert (=> bs!405560 m!2213607))

(assert (=> bs!405560 m!2213209))

(assert (=> b!1788932 d!545926))

(declare-fun d!545928 () Bool)

(assert (=> d!545928 (= lt!697424 lt!697446)))

(declare-fun lt!697554 () Unit!34147)

(declare-fun choose!11324 (List!19798 List!19798 List!19798) Unit!34147)

(assert (=> d!545928 (= lt!697554 (choose!11324 lt!697424 lt!697446 lt!697435))))

(assert (=> d!545928 (isPrefix!1779 lt!697424 lt!697435)))

(assert (=> d!545928 (= (lemmaIsPrefixSameLengthThenSameList!275 lt!697424 lt!697446 lt!697435) lt!697554)))

(declare-fun bs!405561 () Bool)

(assert (= bs!405561 d!545928))

(declare-fun m!2213609 () Bool)

(assert (=> bs!405561 m!2213609))

(assert (=> bs!405561 m!2213189))

(assert (=> b!1788932 d!545928))

(declare-fun b!1789314 () Bool)

(declare-fun res!807103 () Bool)

(declare-fun e!1145248 () Bool)

(assert (=> b!1789314 (=> (not res!807103) (not e!1145248))))

(assert (=> b!1789314 (= res!807103 (= (head!4196 lt!697424) (head!4196 (++!5363 lt!697424 (_2!11057 lt!697425)))))))

(declare-fun b!1789316 () Bool)

(declare-fun e!1145247 () Bool)

(assert (=> b!1789316 (= e!1145247 (>= (size!15674 (++!5363 lt!697424 (_2!11057 lt!697425))) (size!15674 lt!697424)))))

(declare-fun b!1789313 () Bool)

(declare-fun e!1145246 () Bool)

(assert (=> b!1789313 (= e!1145246 e!1145248)))

(declare-fun res!807101 () Bool)

(assert (=> b!1789313 (=> (not res!807101) (not e!1145248))))

(assert (=> b!1789313 (= res!807101 (not ((_ is Nil!19728) (++!5363 lt!697424 (_2!11057 lt!697425)))))))

(declare-fun b!1789315 () Bool)

(assert (=> b!1789315 (= e!1145248 (isPrefix!1779 (tail!2677 lt!697424) (tail!2677 (++!5363 lt!697424 (_2!11057 lt!697425)))))))

(declare-fun d!545930 () Bool)

(assert (=> d!545930 e!1145247))

(declare-fun res!807102 () Bool)

(assert (=> d!545930 (=> res!807102 e!1145247)))

(declare-fun lt!697557 () Bool)

(assert (=> d!545930 (= res!807102 (not lt!697557))))

(assert (=> d!545930 (= lt!697557 e!1145246)))

(declare-fun res!807100 () Bool)

(assert (=> d!545930 (=> res!807100 e!1145246)))

(assert (=> d!545930 (= res!807100 ((_ is Nil!19728) lt!697424))))

(assert (=> d!545930 (= (isPrefix!1779 lt!697424 (++!5363 lt!697424 (_2!11057 lt!697425))) lt!697557)))

(assert (= (and d!545930 (not res!807100)) b!1789313))

(assert (= (and b!1789313 res!807101) b!1789314))

(assert (= (and b!1789314 res!807103) b!1789315))

(assert (= (and d!545930 (not res!807102)) b!1789316))

(assert (=> b!1789314 m!2213399))

(assert (=> b!1789314 m!2213211))

(declare-fun m!2213611 () Bool)

(assert (=> b!1789314 m!2213611))

(assert (=> b!1789316 m!2213211))

(declare-fun m!2213613 () Bool)

(assert (=> b!1789316 m!2213613))

(assert (=> b!1789316 m!2213131))

(assert (=> b!1789315 m!2213409))

(assert (=> b!1789315 m!2213211))

(declare-fun m!2213615 () Bool)

(assert (=> b!1789315 m!2213615))

(assert (=> b!1789315 m!2213409))

(assert (=> b!1789315 m!2213615))

(declare-fun m!2213617 () Bool)

(assert (=> b!1789315 m!2213617))

(assert (=> b!1788911 d!545930))

(declare-fun d!545932 () Bool)

(assert (=> d!545932 (isPrefix!1779 lt!697424 (++!5363 lt!697424 (_2!11057 lt!697425)))))

(declare-fun lt!697560 () Unit!34147)

(declare-fun choose!11326 (List!19798 List!19798) Unit!34147)

(assert (=> d!545932 (= lt!697560 (choose!11326 lt!697424 (_2!11057 lt!697425)))))

(assert (=> d!545932 (= (lemmaConcatTwoListThenFirstIsPrefix!1288 lt!697424 (_2!11057 lt!697425)) lt!697560)))

(declare-fun bs!405562 () Bool)

(assert (= bs!405562 d!545932))

(assert (=> bs!405562 m!2213211))

(assert (=> bs!405562 m!2213211))

(assert (=> bs!405562 m!2213213))

(declare-fun m!2213619 () Bool)

(assert (=> bs!405562 m!2213619))

(assert (=> b!1788911 d!545932))

(declare-fun b!1789330 () Bool)

(declare-fun e!1145259 () Bool)

(declare-fun lt!697567 () Option!4100)

(assert (=> b!1789330 (= e!1145259 (= (tag!3945 (get!6088 lt!697567)) (tag!3945 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1789331 () Bool)

(declare-fun e!1145257 () Bool)

(assert (=> b!1789331 (= e!1145257 e!1145259)))

(declare-fun res!807109 () Bool)

(assert (=> b!1789331 (=> (not res!807109) (not e!1145259))))

(assert (=> b!1789331 (= res!807109 (contains!3571 rules!3447 (get!6088 lt!697567)))))

(declare-fun b!1789332 () Bool)

(declare-fun lt!697569 () Unit!34147)

(declare-fun lt!697568 () Unit!34147)

(assert (=> b!1789332 (= lt!697569 lt!697568)))

(assert (=> b!1789332 (rulesInvariant!2837 thiss!24550 (t!167434 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!229 (LexerInterface!3168 Rule!6878 List!19799) Unit!34147)

(assert (=> b!1789332 (= lt!697568 (lemmaInvariantOnRulesThenOnTail!229 thiss!24550 (h!25130 rules!3447) (t!167434 rules!3447)))))

(declare-fun e!1145258 () Option!4100)

(assert (=> b!1789332 (= e!1145258 (getRuleFromTag!587 thiss!24550 (t!167434 rules!3447) (tag!3945 (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1789333 () Bool)

(declare-fun e!1145260 () Option!4100)

(assert (=> b!1789333 (= e!1145260 (Some!4099 (h!25130 rules!3447)))))

(declare-fun b!1789334 () Bool)

(assert (=> b!1789334 (= e!1145260 e!1145258)))

(declare-fun c!290922 () Bool)

(assert (=> b!1789334 (= c!290922 (and ((_ is Cons!19729) rules!3447) (not (= (tag!3945 (h!25130 rules!3447)) (tag!3945 (rule!5635 (_1!11057 lt!697425)))))))))

(declare-fun d!545934 () Bool)

(assert (=> d!545934 e!1145257))

(declare-fun res!807108 () Bool)

(assert (=> d!545934 (=> res!807108 e!1145257)))

(declare-fun isEmpty!12473 (Option!4100) Bool)

(assert (=> d!545934 (= res!807108 (isEmpty!12473 lt!697567))))

(assert (=> d!545934 (= lt!697567 e!1145260)))

(declare-fun c!290923 () Bool)

(assert (=> d!545934 (= c!290923 (and ((_ is Cons!19729) rules!3447) (= (tag!3945 (h!25130 rules!3447)) (tag!3945 (rule!5635 (_1!11057 lt!697425))))))))

(assert (=> d!545934 (rulesInvariant!2837 thiss!24550 rules!3447)))

(assert (=> d!545934 (= (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 (_1!11057 lt!697425)))) lt!697567)))

(declare-fun b!1789329 () Bool)

(assert (=> b!1789329 (= e!1145258 None!4099)))

(assert (= (and d!545934 c!290923) b!1789333))

(assert (= (and d!545934 (not c!290923)) b!1789334))

(assert (= (and b!1789334 c!290922) b!1789332))

(assert (= (and b!1789334 (not c!290922)) b!1789329))

(assert (= (and d!545934 (not res!807108)) b!1789331))

(assert (= (and b!1789331 res!807109) b!1789330))

(declare-fun m!2213621 () Bool)

(assert (=> b!1789330 m!2213621))

(assert (=> b!1789331 m!2213621))

(assert (=> b!1789331 m!2213621))

(declare-fun m!2213623 () Bool)

(assert (=> b!1789331 m!2213623))

(declare-fun m!2213625 () Bool)

(assert (=> b!1789332 m!2213625))

(declare-fun m!2213627 () Bool)

(assert (=> b!1789332 m!2213627))

(declare-fun m!2213629 () Bool)

(assert (=> b!1789332 m!2213629))

(declare-fun m!2213631 () Bool)

(assert (=> d!545934 m!2213631))

(assert (=> d!545934 m!2213227))

(assert (=> b!1788911 d!545934))

(declare-fun d!545936 () Bool)

(declare-fun e!1145265 () Bool)

(assert (=> d!545936 e!1145265))

(declare-fun res!807114 () Bool)

(assert (=> d!545936 (=> (not res!807114) (not e!1145265))))

(assert (=> d!545936 (= res!807114 (isDefined!3443 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 (_1!11057 lt!697425))))))))

(declare-fun lt!697580 () Unit!34147)

(declare-fun choose!11327 (LexerInterface!3168 List!19799 List!19798 Token!6644) Unit!34147)

(assert (=> d!545936 (= lt!697580 (choose!11327 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425)))))

(assert (=> d!545936 (rulesInvariant!2837 thiss!24550 rules!3447)))

(assert (=> d!545936 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!587 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425)) lt!697580)))

(declare-fun b!1789343 () Bool)

(declare-fun res!807115 () Bool)

(assert (=> b!1789343 (=> (not res!807115) (not e!1145265))))

(assert (=> b!1789343 (= res!807115 (matchR!2340 (regex!3539 (get!6088 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 (_1!11057 lt!697425)))))) (list!8025 (charsOf!2188 (_1!11057 lt!697425)))))))

(declare-fun b!1789344 () Bool)

(assert (=> b!1789344 (= e!1145265 (= (rule!5635 (_1!11057 lt!697425)) (get!6088 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 (_1!11057 lt!697425)))))))))

(assert (= (and d!545936 res!807114) b!1789343))

(assert (= (and b!1789343 res!807115) b!1789344))

(assert (=> d!545936 m!2213197))

(assert (=> d!545936 m!2213197))

(declare-fun m!2213633 () Bool)

(assert (=> d!545936 m!2213633))

(declare-fun m!2213635 () Bool)

(assert (=> d!545936 m!2213635))

(assert (=> d!545936 m!2213227))

(assert (=> b!1789343 m!2213197))

(assert (=> b!1789343 m!2213171))

(assert (=> b!1789343 m!2213173))

(assert (=> b!1789343 m!2213171))

(assert (=> b!1789343 m!2213173))

(declare-fun m!2213637 () Bool)

(assert (=> b!1789343 m!2213637))

(assert (=> b!1789343 m!2213197))

(declare-fun m!2213639 () Bool)

(assert (=> b!1789343 m!2213639))

(assert (=> b!1789344 m!2213197))

(assert (=> b!1789344 m!2213197))

(assert (=> b!1789344 m!2213639))

(assert (=> b!1788911 d!545936))

(assert (=> b!1788911 d!545920))

(declare-fun d!545938 () Bool)

(assert (=> d!545938 (= (get!6087 lt!697416) (v!25601 lt!697416))))

(assert (=> b!1788911 d!545938))

(declare-fun b!1789358 () Bool)

(declare-fun res!807131 () Bool)

(declare-fun e!1145274 () Bool)

(assert (=> b!1789358 (=> (not res!807131) (not e!1145274))))

(assert (=> b!1789358 (= res!807131 (= (head!4196 lt!697446) (head!4196 lt!697435)))))

(declare-fun b!1789360 () Bool)

(declare-fun e!1145273 () Bool)

(assert (=> b!1789360 (= e!1145273 (>= (size!15674 lt!697435) (size!15674 lt!697446)))))

(declare-fun b!1789357 () Bool)

(declare-fun e!1145272 () Bool)

(assert (=> b!1789357 (= e!1145272 e!1145274)))

(declare-fun res!807129 () Bool)

(assert (=> b!1789357 (=> (not res!807129) (not e!1145274))))

(assert (=> b!1789357 (= res!807129 (not ((_ is Nil!19728) lt!697435)))))

(declare-fun b!1789359 () Bool)

(assert (=> b!1789359 (= e!1145274 (isPrefix!1779 (tail!2677 lt!697446) (tail!2677 lt!697435)))))

(declare-fun d!545940 () Bool)

(assert (=> d!545940 e!1145273))

(declare-fun res!807130 () Bool)

(assert (=> d!545940 (=> res!807130 e!1145273)))

(declare-fun lt!697583 () Bool)

(assert (=> d!545940 (= res!807130 (not lt!697583))))

(assert (=> d!545940 (= lt!697583 e!1145272)))

(declare-fun res!807128 () Bool)

(assert (=> d!545940 (=> res!807128 e!1145272)))

(assert (=> d!545940 (= res!807128 ((_ is Nil!19728) lt!697446))))

(assert (=> d!545940 (= (isPrefix!1779 lt!697446 lt!697435) lt!697583)))

(assert (= (and d!545940 (not res!807128)) b!1789357))

(assert (= (and b!1789357 res!807129) b!1789358))

(assert (= (and b!1789358 res!807131) b!1789359))

(assert (= (and d!545940 (not res!807130)) b!1789360))

(declare-fun m!2213641 () Bool)

(assert (=> b!1789358 m!2213641))

(declare-fun m!2213643 () Bool)

(assert (=> b!1789358 m!2213643))

(declare-fun m!2213645 () Bool)

(assert (=> b!1789360 m!2213645))

(assert (=> b!1789360 m!2213565))

(declare-fun m!2213647 () Bool)

(assert (=> b!1789359 m!2213647))

(declare-fun m!2213649 () Bool)

(assert (=> b!1789359 m!2213649))

(assert (=> b!1789359 m!2213647))

(assert (=> b!1789359 m!2213649))

(declare-fun m!2213651 () Bool)

(assert (=> b!1789359 m!2213651))

(assert (=> b!1788911 d!545940))

(declare-fun b!1789372 () Bool)

(declare-fun e!1145280 () List!19798)

(assert (=> b!1789372 (= e!1145280 (Cons!19728 (h!25129 lt!697424) (++!5363 (t!167433 lt!697424) (_2!11057 lt!697425))))))

(declare-fun lt!697586 () List!19798)

(declare-fun b!1789374 () Bool)

(declare-fun e!1145279 () Bool)

(assert (=> b!1789374 (= e!1145279 (or (not (= (_2!11057 lt!697425) Nil!19728)) (= lt!697586 lt!697424)))))

(declare-fun b!1789371 () Bool)

(assert (=> b!1789371 (= e!1145280 (_2!11057 lt!697425))))

(declare-fun b!1789373 () Bool)

(declare-fun res!807138 () Bool)

(assert (=> b!1789373 (=> (not res!807138) (not e!1145279))))

(assert (=> b!1789373 (= res!807138 (= (size!15674 lt!697586) (+ (size!15674 lt!697424) (size!15674 (_2!11057 lt!697425)))))))

(declare-fun d!545942 () Bool)

(assert (=> d!545942 e!1145279))

(declare-fun res!807139 () Bool)

(assert (=> d!545942 (=> (not res!807139) (not e!1145279))))

(declare-fun content!2879 (List!19798) (InoxSet C!9908))

(assert (=> d!545942 (= res!807139 (= (content!2879 lt!697586) ((_ map or) (content!2879 lt!697424) (content!2879 (_2!11057 lt!697425)))))))

(assert (=> d!545942 (= lt!697586 e!1145280)))

(declare-fun c!290928 () Bool)

(assert (=> d!545942 (= c!290928 ((_ is Nil!19728) lt!697424))))

(assert (=> d!545942 (= (++!5363 lt!697424 (_2!11057 lt!697425)) lt!697586)))

(assert (= (and d!545942 c!290928) b!1789371))

(assert (= (and d!545942 (not c!290928)) b!1789372))

(assert (= (and d!545942 res!807139) b!1789373))

(assert (= (and b!1789373 res!807138) b!1789374))

(declare-fun m!2213653 () Bool)

(assert (=> b!1789372 m!2213653))

(declare-fun m!2213655 () Bool)

(assert (=> b!1789373 m!2213655))

(assert (=> b!1789373 m!2213131))

(declare-fun m!2213657 () Bool)

(assert (=> b!1789373 m!2213657))

(declare-fun m!2213659 () Bool)

(assert (=> d!545942 m!2213659))

(declare-fun m!2213661 () Bool)

(assert (=> d!545942 m!2213661))

(declare-fun m!2213663 () Bool)

(assert (=> d!545942 m!2213663))

(assert (=> b!1788911 d!545942))

(declare-fun b!1789375 () Bool)

(declare-fun res!807140 () Bool)

(declare-fun e!1145283 () Bool)

(assert (=> b!1789375 (=> (not res!807140) (not e!1145283))))

(declare-fun lt!697590 () Option!4101)

(assert (=> b!1789375 (= res!807140 (< (size!15674 (_2!11057 (get!6087 lt!697590))) (size!15674 lt!697435)))))

(declare-fun b!1789376 () Bool)

(declare-fun e!1145281 () Option!4101)

(declare-fun call!111425 () Option!4101)

(assert (=> b!1789376 (= e!1145281 call!111425)))

(declare-fun b!1789377 () Bool)

(assert (=> b!1789377 (= e!1145283 (contains!3571 rules!3447 (rule!5635 (_1!11057 (get!6087 lt!697590)))))))

(declare-fun b!1789378 () Bool)

(declare-fun res!807142 () Bool)

(assert (=> b!1789378 (=> (not res!807142) (not e!1145283))))

(assert (=> b!1789378 (= res!807142 (= (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697590)))) (originalCharacters!4353 (_1!11057 (get!6087 lt!697590)))))))

(declare-fun bm!111420 () Bool)

(assert (=> bm!111420 (= call!111425 (maxPrefixOneRule!1091 thiss!24550 (h!25130 rules!3447) lt!697435))))

(declare-fun b!1789380 () Bool)

(declare-fun res!807144 () Bool)

(assert (=> b!1789380 (=> (not res!807144) (not e!1145283))))

(assert (=> b!1789380 (= res!807144 (= (value!110534 (_1!11057 (get!6087 lt!697590))) (apply!5339 (transformation!3539 (rule!5635 (_1!11057 (get!6087 lt!697590)))) (seqFromList!2508 (originalCharacters!4353 (_1!11057 (get!6087 lt!697590)))))))))

(declare-fun b!1789381 () Bool)

(declare-fun res!807143 () Bool)

(assert (=> b!1789381 (=> (not res!807143) (not e!1145283))))

(assert (=> b!1789381 (= res!807143 (matchR!2340 (regex!3539 (rule!5635 (_1!11057 (get!6087 lt!697590)))) (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697590))))))))

(declare-fun b!1789382 () Bool)

(declare-fun res!807141 () Bool)

(assert (=> b!1789382 (=> (not res!807141) (not e!1145283))))

(assert (=> b!1789382 (= res!807141 (= (++!5363 (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697590)))) (_2!11057 (get!6087 lt!697590))) lt!697435))))

(declare-fun b!1789383 () Bool)

(declare-fun lt!697591 () Option!4101)

(declare-fun lt!697588 () Option!4101)

(assert (=> b!1789383 (= e!1145281 (ite (and ((_ is None!4100) lt!697591) ((_ is None!4100) lt!697588)) None!4100 (ite ((_ is None!4100) lt!697588) lt!697591 (ite ((_ is None!4100) lt!697591) lt!697588 (ite (>= (size!15672 (_1!11057 (v!25601 lt!697591))) (size!15672 (_1!11057 (v!25601 lt!697588)))) lt!697591 lt!697588)))))))

(assert (=> b!1789383 (= lt!697591 call!111425)))

(assert (=> b!1789383 (= lt!697588 (maxPrefix!1722 thiss!24550 (t!167434 rules!3447) lt!697435))))

(declare-fun d!545944 () Bool)

(declare-fun e!1145282 () Bool)

(assert (=> d!545944 e!1145282))

(declare-fun res!807145 () Bool)

(assert (=> d!545944 (=> res!807145 e!1145282)))

(assert (=> d!545944 (= res!807145 (isEmpty!12472 lt!697590))))

(assert (=> d!545944 (= lt!697590 e!1145281)))

(declare-fun c!290929 () Bool)

(assert (=> d!545944 (= c!290929 (and ((_ is Cons!19729) rules!3447) ((_ is Nil!19729) (t!167434 rules!3447))))))

(declare-fun lt!697587 () Unit!34147)

(declare-fun lt!697589 () Unit!34147)

(assert (=> d!545944 (= lt!697587 lt!697589)))

(assert (=> d!545944 (isPrefix!1779 lt!697435 lt!697435)))

(assert (=> d!545944 (= lt!697589 (lemmaIsPrefixRefl!1169 lt!697435 lt!697435))))

(assert (=> d!545944 (rulesValidInductive!1205 thiss!24550 rules!3447)))

(assert (=> d!545944 (= (maxPrefix!1722 thiss!24550 rules!3447 lt!697435) lt!697590)))

(declare-fun b!1789379 () Bool)

(assert (=> b!1789379 (= e!1145282 e!1145283)))

(declare-fun res!807146 () Bool)

(assert (=> b!1789379 (=> (not res!807146) (not e!1145283))))

(assert (=> b!1789379 (= res!807146 (isDefined!3444 lt!697590))))

(assert (= (and d!545944 c!290929) b!1789376))

(assert (= (and d!545944 (not c!290929)) b!1789383))

(assert (= (or b!1789376 b!1789383) bm!111420))

(assert (= (and d!545944 (not res!807145)) b!1789379))

(assert (= (and b!1789379 res!807146) b!1789378))

(assert (= (and b!1789378 res!807142) b!1789375))

(assert (= (and b!1789375 res!807140) b!1789382))

(assert (= (and b!1789382 res!807141) b!1789380))

(assert (= (and b!1789380 res!807144) b!1789381))

(assert (= (and b!1789381 res!807143) b!1789377))

(declare-fun m!2213665 () Bool)

(assert (=> b!1789381 m!2213665))

(declare-fun m!2213667 () Bool)

(assert (=> b!1789381 m!2213667))

(assert (=> b!1789381 m!2213667))

(declare-fun m!2213669 () Bool)

(assert (=> b!1789381 m!2213669))

(assert (=> b!1789381 m!2213669))

(declare-fun m!2213671 () Bool)

(assert (=> b!1789381 m!2213671))

(assert (=> b!1789377 m!2213665))

(declare-fun m!2213673 () Bool)

(assert (=> b!1789377 m!2213673))

(declare-fun m!2213675 () Bool)

(assert (=> d!545944 m!2213675))

(declare-fun m!2213677 () Bool)

(assert (=> d!545944 m!2213677))

(declare-fun m!2213679 () Bool)

(assert (=> d!545944 m!2213679))

(assert (=> d!545944 m!2213549))

(assert (=> b!1789382 m!2213665))

(assert (=> b!1789382 m!2213667))

(assert (=> b!1789382 m!2213667))

(assert (=> b!1789382 m!2213669))

(assert (=> b!1789382 m!2213669))

(declare-fun m!2213681 () Bool)

(assert (=> b!1789382 m!2213681))

(declare-fun m!2213683 () Bool)

(assert (=> b!1789379 m!2213683))

(declare-fun m!2213685 () Bool)

(assert (=> bm!111420 m!2213685))

(declare-fun m!2213687 () Bool)

(assert (=> b!1789383 m!2213687))

(assert (=> b!1789378 m!2213665))

(assert (=> b!1789378 m!2213667))

(assert (=> b!1789378 m!2213667))

(assert (=> b!1789378 m!2213669))

(assert (=> b!1789380 m!2213665))

(declare-fun m!2213689 () Bool)

(assert (=> b!1789380 m!2213689))

(assert (=> b!1789380 m!2213689))

(declare-fun m!2213691 () Bool)

(assert (=> b!1789380 m!2213691))

(assert (=> b!1789375 m!2213665))

(declare-fun m!2213693 () Bool)

(assert (=> b!1789375 m!2213693))

(assert (=> b!1789375 m!2213645))

(assert (=> b!1788911 d!545944))

(declare-fun d!545946 () Bool)

(assert (=> d!545946 (= (isDefined!3443 lt!697445) (not (isEmpty!12473 lt!697445)))))

(declare-fun bs!405563 () Bool)

(assert (= bs!405563 d!545946))

(declare-fun m!2213695 () Bool)

(assert (=> bs!405563 m!2213695))

(assert (=> b!1788911 d!545946))

(declare-fun d!545948 () Bool)

(assert (=> d!545948 (isDefined!3444 (maxPrefix!1722 thiss!24550 rules!3447 (++!5363 lt!697446 suffix!1421)))))

(declare-fun lt!697673 () Unit!34147)

(declare-fun e!1145331 () Unit!34147)

(assert (=> d!545948 (= lt!697673 e!1145331)))

(declare-fun c!290948 () Bool)

(assert (=> d!545948 (= c!290948 (isEmpty!12472 (maxPrefix!1722 thiss!24550 rules!3447 (++!5363 lt!697446 suffix!1421))))))

(declare-fun lt!697669 () Unit!34147)

(declare-fun lt!697674 () Unit!34147)

(assert (=> d!545948 (= lt!697669 lt!697674)))

(declare-fun e!1145330 () Bool)

(assert (=> d!545948 e!1145330))

(declare-fun res!807197 () Bool)

(assert (=> d!545948 (=> (not res!807197) (not e!1145330))))

(declare-fun lt!697676 () Token!6644)

(assert (=> d!545948 (= res!807197 (isDefined!3443 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 lt!697676)))))))

(assert (=> d!545948 (= lt!697674 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!587 thiss!24550 rules!3447 lt!697446 lt!697676))))

(declare-fun lt!697670 () Unit!34147)

(declare-fun lt!697671 () Unit!34147)

(assert (=> d!545948 (= lt!697670 lt!697671)))

(declare-fun lt!697683 () List!19798)

(assert (=> d!545948 (isPrefix!1779 lt!697683 (++!5363 lt!697446 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!350 (List!19798 List!19798 List!19798) Unit!34147)

(assert (=> d!545948 (= lt!697671 (lemmaPrefixStaysPrefixWhenAddingToSuffix!350 lt!697683 lt!697446 suffix!1421))))

(assert (=> d!545948 (= lt!697683 (list!8025 (charsOf!2188 lt!697676)))))

(declare-fun lt!697672 () Unit!34147)

(declare-fun lt!697677 () Unit!34147)

(assert (=> d!545948 (= lt!697672 lt!697677)))

(declare-fun lt!697679 () List!19798)

(declare-fun lt!697682 () List!19798)

(assert (=> d!545948 (isPrefix!1779 lt!697679 (++!5363 lt!697679 lt!697682))))

(assert (=> d!545948 (= lt!697677 (lemmaConcatTwoListThenFirstIsPrefix!1288 lt!697679 lt!697682))))

(assert (=> d!545948 (= lt!697682 (_2!11057 (get!6087 (maxPrefix!1722 thiss!24550 rules!3447 lt!697446))))))

(assert (=> d!545948 (= lt!697679 (list!8025 (charsOf!2188 lt!697676)))))

(declare-datatypes ((List!19801 0))(
  ( (Nil!19731) (Cons!19731 (h!25132 Token!6644) (t!167496 List!19801)) )
))
(declare-fun head!4197 (List!19801) Token!6644)

(declare-datatypes ((IArray!13133 0))(
  ( (IArray!13134 (innerList!6624 List!19801)) )
))
(declare-datatypes ((Conc!6564 0))(
  ( (Node!6564 (left!15823 Conc!6564) (right!16153 Conc!6564) (csize!13358 Int) (cheight!6775 Int)) (Leaf!9554 (xs!9440 IArray!13133) (csize!13359 Int)) (Empty!6564) )
))
(declare-datatypes ((BalanceConc!13072 0))(
  ( (BalanceConc!13073 (c!290996 Conc!6564)) )
))
(declare-fun list!8028 (BalanceConc!13072) List!19801)

(declare-datatypes ((tuple2!19314 0))(
  ( (tuple2!19315 (_1!11059 BalanceConc!13072) (_2!11059 BalanceConc!13070)) )
))
(declare-fun lex!1489 (LexerInterface!3168 List!19799 BalanceConc!13070) tuple2!19314)

(assert (=> d!545948 (= lt!697676 (head!4197 (list!8028 (_1!11059 (lex!1489 thiss!24550 rules!3447 (seqFromList!2508 lt!697446))))))))

(assert (=> d!545948 (not (isEmpty!12470 rules!3447))))

(assert (=> d!545948 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!690 thiss!24550 rules!3447 lt!697446 suffix!1421) lt!697673)))

(declare-fun b!1789476 () Bool)

(declare-fun Unit!34158 () Unit!34147)

(assert (=> b!1789476 (= e!1145331 Unit!34158)))

(declare-fun b!1789474 () Bool)

(assert (=> b!1789474 (= e!1145330 (= (rule!5635 lt!697676) (get!6088 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 lt!697676))))))))

(declare-fun b!1789473 () Bool)

(declare-fun res!807198 () Bool)

(assert (=> b!1789473 (=> (not res!807198) (not e!1145330))))

(assert (=> b!1789473 (= res!807198 (matchR!2340 (regex!3539 (get!6088 (getRuleFromTag!587 thiss!24550 rules!3447 (tag!3945 (rule!5635 lt!697676))))) (list!8025 (charsOf!2188 lt!697676))))))

(declare-fun b!1789475 () Bool)

(declare-fun Unit!34159 () Unit!34147)

(assert (=> b!1789475 (= e!1145331 Unit!34159)))

(declare-fun lt!697684 () List!19798)

(assert (=> b!1789475 (= lt!697684 (++!5363 lt!697446 suffix!1421))))

(declare-fun lt!697680 () Unit!34147)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!358 (LexerInterface!3168 Rule!6878 List!19799 List!19798) Unit!34147)

(assert (=> b!1789475 (= lt!697680 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!358 thiss!24550 (rule!5635 lt!697676) rules!3447 lt!697684))))

(assert (=> b!1789475 (isEmpty!12472 (maxPrefixOneRule!1091 thiss!24550 (rule!5635 lt!697676) lt!697684))))

(declare-fun lt!697678 () Unit!34147)

(assert (=> b!1789475 (= lt!697678 lt!697680)))

(declare-fun lt!697675 () List!19798)

(assert (=> b!1789475 (= lt!697675 (list!8025 (charsOf!2188 lt!697676)))))

(declare-fun lt!697681 () Unit!34147)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!354 (LexerInterface!3168 Rule!6878 List!19798 List!19798) Unit!34147)

(assert (=> b!1789475 (= lt!697681 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!354 thiss!24550 (rule!5635 lt!697676) lt!697675 (++!5363 lt!697446 suffix!1421)))))

(assert (=> b!1789475 (not (matchR!2340 (regex!3539 (rule!5635 lt!697676)) lt!697675))))

(declare-fun lt!697685 () Unit!34147)

(assert (=> b!1789475 (= lt!697685 lt!697681)))

(assert (=> b!1789475 false))

(assert (= (and d!545948 res!807197) b!1789473))

(assert (= (and b!1789473 res!807198) b!1789474))

(assert (= (and d!545948 c!290948) b!1789475))

(assert (= (and d!545948 (not c!290948)) b!1789476))

(declare-fun m!2213837 () Bool)

(assert (=> d!545948 m!2213837))

(declare-fun m!2213839 () Bool)

(assert (=> d!545948 m!2213839))

(assert (=> d!545948 m!2213235))

(declare-fun m!2213841 () Bool)

(assert (=> d!545948 m!2213841))

(declare-fun m!2213843 () Bool)

(assert (=> d!545948 m!2213843))

(declare-fun m!2213845 () Bool)

(assert (=> d!545948 m!2213845))

(assert (=> d!545948 m!2213845))

(declare-fun m!2213847 () Bool)

(assert (=> d!545948 m!2213847))

(assert (=> d!545948 m!2213235))

(declare-fun m!2213849 () Bool)

(assert (=> d!545948 m!2213849))

(declare-fun m!2213851 () Bool)

(assert (=> d!545948 m!2213851))

(declare-fun m!2213853 () Bool)

(assert (=> d!545948 m!2213853))

(assert (=> d!545948 m!2213191))

(assert (=> d!545948 m!2213137))

(declare-fun m!2213855 () Bool)

(assert (=> d!545948 m!2213855))

(declare-fun m!2213857 () Bool)

(assert (=> d!545948 m!2213857))

(assert (=> d!545948 m!2213855))

(declare-fun m!2213859 () Bool)

(assert (=> d!545948 m!2213859))

(declare-fun m!2213861 () Bool)

(assert (=> d!545948 m!2213861))

(declare-fun m!2213863 () Bool)

(assert (=> d!545948 m!2213863))

(declare-fun m!2213865 () Bool)

(assert (=> d!545948 m!2213865))

(assert (=> d!545948 m!2213839))

(declare-fun m!2213867 () Bool)

(assert (=> d!545948 m!2213867))

(assert (=> d!545948 m!2213191))

(assert (=> d!545948 m!2213855))

(assert (=> d!545948 m!2213849))

(assert (=> d!545948 m!2213861))

(assert (=> d!545948 m!2213837))

(declare-fun m!2213869 () Bool)

(assert (=> d!545948 m!2213869))

(assert (=> d!545948 m!2213191))

(declare-fun m!2213871 () Bool)

(assert (=> d!545948 m!2213871))

(assert (=> b!1789474 m!2213839))

(assert (=> b!1789474 m!2213839))

(declare-fun m!2213873 () Bool)

(assert (=> b!1789474 m!2213873))

(assert (=> b!1789473 m!2213839))

(assert (=> b!1789473 m!2213863))

(declare-fun m!2213875 () Bool)

(assert (=> b!1789473 m!2213875))

(assert (=> b!1789473 m!2213839))

(assert (=> b!1789473 m!2213873))

(assert (=> b!1789473 m!2213861))

(assert (=> b!1789473 m!2213863))

(assert (=> b!1789473 m!2213861))

(declare-fun m!2213877 () Bool)

(assert (=> b!1789475 m!2213877))

(declare-fun m!2213879 () Bool)

(assert (=> b!1789475 m!2213879))

(assert (=> b!1789475 m!2213191))

(declare-fun m!2213881 () Bool)

(assert (=> b!1789475 m!2213881))

(declare-fun m!2213883 () Bool)

(assert (=> b!1789475 m!2213883))

(assert (=> b!1789475 m!2213861))

(assert (=> b!1789475 m!2213863))

(assert (=> b!1789475 m!2213191))

(assert (=> b!1789475 m!2213877))

(assert (=> b!1789475 m!2213861))

(declare-fun m!2213885 () Bool)

(assert (=> b!1789475 m!2213885))

(assert (=> b!1788911 d!545948))

(declare-fun d!545984 () Bool)

(assert (=> d!545984 (isPrefix!1779 lt!697446 (++!5363 lt!697446 suffix!1421))))

(declare-fun lt!697686 () Unit!34147)

(assert (=> d!545984 (= lt!697686 (choose!11326 lt!697446 suffix!1421))))

(assert (=> d!545984 (= (lemmaConcatTwoListThenFirstIsPrefix!1288 lt!697446 suffix!1421) lt!697686)))

(declare-fun bs!405571 () Bool)

(assert (= bs!405571 d!545984))

(assert (=> bs!405571 m!2213191))

(assert (=> bs!405571 m!2213191))

(declare-fun m!2213887 () Bool)

(assert (=> bs!405571 m!2213887))

(declare-fun m!2213889 () Bool)

(assert (=> bs!405571 m!2213889))

(assert (=> b!1788911 d!545984))

(declare-fun b!1789478 () Bool)

(declare-fun res!807202 () Bool)

(declare-fun e!1145334 () Bool)

(assert (=> b!1789478 (=> (not res!807202) (not e!1145334))))

(assert (=> b!1789478 (= res!807202 (= (head!4196 lt!697424) (head!4196 lt!697435)))))

(declare-fun b!1789480 () Bool)

(declare-fun e!1145333 () Bool)

(assert (=> b!1789480 (= e!1145333 (>= (size!15674 lt!697435) (size!15674 lt!697424)))))

(declare-fun b!1789477 () Bool)

(declare-fun e!1145332 () Bool)

(assert (=> b!1789477 (= e!1145332 e!1145334)))

(declare-fun res!807200 () Bool)

(assert (=> b!1789477 (=> (not res!807200) (not e!1145334))))

(assert (=> b!1789477 (= res!807200 (not ((_ is Nil!19728) lt!697435)))))

(declare-fun b!1789479 () Bool)

(assert (=> b!1789479 (= e!1145334 (isPrefix!1779 (tail!2677 lt!697424) (tail!2677 lt!697435)))))

(declare-fun d!545986 () Bool)

(assert (=> d!545986 e!1145333))

(declare-fun res!807201 () Bool)

(assert (=> d!545986 (=> res!807201 e!1145333)))

(declare-fun lt!697687 () Bool)

(assert (=> d!545986 (= res!807201 (not lt!697687))))

(assert (=> d!545986 (= lt!697687 e!1145332)))

(declare-fun res!807199 () Bool)

(assert (=> d!545986 (=> res!807199 e!1145332)))

(assert (=> d!545986 (= res!807199 ((_ is Nil!19728) lt!697424))))

(assert (=> d!545986 (= (isPrefix!1779 lt!697424 lt!697435) lt!697687)))

(assert (= (and d!545986 (not res!807199)) b!1789477))

(assert (= (and b!1789477 res!807200) b!1789478))

(assert (= (and b!1789478 res!807202) b!1789479))

(assert (= (and d!545986 (not res!807201)) b!1789480))

(assert (=> b!1789478 m!2213399))

(assert (=> b!1789478 m!2213643))

(assert (=> b!1789480 m!2213645))

(assert (=> b!1789480 m!2213131))

(assert (=> b!1789479 m!2213409))

(assert (=> b!1789479 m!2213649))

(assert (=> b!1789479 m!2213409))

(assert (=> b!1789479 m!2213649))

(declare-fun m!2213891 () Bool)

(assert (=> b!1789479 m!2213891))

(assert (=> b!1788911 d!545986))

(declare-fun d!545988 () Bool)

(assert (=> d!545988 (= (list!8025 lt!697414) (list!8026 (c!290841 lt!697414)))))

(declare-fun bs!405572 () Bool)

(assert (= bs!405572 d!545988))

(declare-fun m!2213893 () Bool)

(assert (=> bs!405572 m!2213893))

(assert (=> b!1788911 d!545988))

(declare-fun b!1789482 () Bool)

(declare-fun e!1145336 () List!19798)

(assert (=> b!1789482 (= e!1145336 (Cons!19728 (h!25129 lt!697446) (++!5363 (t!167433 lt!697446) suffix!1421)))))

(declare-fun b!1789484 () Bool)

(declare-fun e!1145335 () Bool)

(declare-fun lt!697688 () List!19798)

(assert (=> b!1789484 (= e!1145335 (or (not (= suffix!1421 Nil!19728)) (= lt!697688 lt!697446)))))

(declare-fun b!1789481 () Bool)

(assert (=> b!1789481 (= e!1145336 suffix!1421)))

(declare-fun b!1789483 () Bool)

(declare-fun res!807203 () Bool)

(assert (=> b!1789483 (=> (not res!807203) (not e!1145335))))

(assert (=> b!1789483 (= res!807203 (= (size!15674 lt!697688) (+ (size!15674 lt!697446) (size!15674 suffix!1421))))))

(declare-fun d!545990 () Bool)

(assert (=> d!545990 e!1145335))

(declare-fun res!807204 () Bool)

(assert (=> d!545990 (=> (not res!807204) (not e!1145335))))

(assert (=> d!545990 (= res!807204 (= (content!2879 lt!697688) ((_ map or) (content!2879 lt!697446) (content!2879 suffix!1421))))))

(assert (=> d!545990 (= lt!697688 e!1145336)))

(declare-fun c!290949 () Bool)

(assert (=> d!545990 (= c!290949 ((_ is Nil!19728) lt!697446))))

(assert (=> d!545990 (= (++!5363 lt!697446 suffix!1421) lt!697688)))

(assert (= (and d!545990 c!290949) b!1789481))

(assert (= (and d!545990 (not c!290949)) b!1789482))

(assert (= (and d!545990 res!807204) b!1789483))

(assert (= (and b!1789483 res!807203) b!1789484))

(declare-fun m!2213895 () Bool)

(assert (=> b!1789482 m!2213895))

(declare-fun m!2213897 () Bool)

(assert (=> b!1789483 m!2213897))

(assert (=> b!1789483 m!2213565))

(declare-fun m!2213899 () Bool)

(assert (=> b!1789483 m!2213899))

(declare-fun m!2213901 () Bool)

(assert (=> d!545990 m!2213901))

(declare-fun m!2213903 () Bool)

(assert (=> d!545990 m!2213903))

(declare-fun m!2213905 () Bool)

(assert (=> d!545990 m!2213905))

(assert (=> b!1788911 d!545990))

(declare-fun d!545992 () Bool)

(assert (=> d!545992 (= (list!8025 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))) (list!8026 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))))

(declare-fun bs!405573 () Bool)

(assert (= bs!405573 d!545992))

(declare-fun m!2213907 () Bool)

(assert (=> bs!405573 m!2213907))

(assert (=> b!1788933 d!545992))

(declare-fun bs!405574 () Bool)

(declare-fun d!545994 () Bool)

(assert (= bs!405574 (and d!545994 b!1788907)))

(declare-fun lambda!70852 () Int)

(assert (=> bs!405574 (= lambda!70852 lambda!70840)))

(declare-fun b!1789489 () Bool)

(declare-fun e!1145339 () Bool)

(assert (=> b!1789489 (= e!1145339 true)))

(assert (=> d!545994 e!1145339))

(assert (= d!545994 b!1789489))

(assert (=> b!1789489 (< (dynLambda!9759 order!12819 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9760 order!12821 lambda!70852))))

(assert (=> b!1789489 (< (dynLambda!9761 order!12823 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9760 order!12821 lambda!70852))))

(assert (=> d!545994 (= (list!8025 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))) (list!8025 lt!697414))))

(declare-fun lt!697691 () Unit!34147)

(declare-fun ForallOf!353 (Int BalanceConc!13070) Unit!34147)

(assert (=> d!545994 (= lt!697691 (ForallOf!353 lambda!70852 lt!697414))))

(assert (=> d!545994 (= (lemmaSemiInverse!677 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414) lt!697691)))

(declare-fun b_lambda!58793 () Bool)

(assert (=> (not b_lambda!58793) (not d!545994)))

(assert (=> d!545994 t!167421))

(declare-fun b_and!138005 () Bool)

(assert (= b_and!137975 (and (=> t!167421 result!131198) b_and!138005)))

(assert (=> d!545994 t!167423))

(declare-fun b_and!138007 () Bool)

(assert (= b_and!137977 (and (=> t!167423 result!131200) b_and!138007)))

(assert (=> d!545994 t!167425))

(declare-fun b_and!138009 () Bool)

(assert (= b_and!137979 (and (=> t!167425 result!131202) b_and!138009)))

(declare-fun b_lambda!58795 () Bool)

(assert (=> (not b_lambda!58795) (not d!545994)))

(assert (=> d!545994 t!167427))

(declare-fun b_and!138011 () Bool)

(assert (= b_and!137939 (and (=> t!167427 result!131204) b_and!138011)))

(assert (=> d!545994 t!167429))

(declare-fun b_and!138013 () Bool)

(assert (= b_and!137941 (and (=> t!167429 result!131208) b_and!138013)))

(assert (=> d!545994 t!167431))

(declare-fun b_and!138015 () Bool)

(assert (= b_and!137943 (and (=> t!167431 result!131210) b_and!138015)))

(assert (=> d!545994 m!2213163))

(assert (=> d!545994 m!2213165))

(assert (=> d!545994 m!2213199))

(assert (=> d!545994 m!2213165))

(assert (=> d!545994 m!2213167))

(assert (=> d!545994 m!2213163))

(declare-fun m!2213909 () Bool)

(assert (=> d!545994 m!2213909))

(assert (=> b!1788933 d!545994))

(declare-fun b!1789490 () Bool)

(declare-fun e!1145346 () Bool)

(declare-fun e!1145344 () Bool)

(assert (=> b!1789490 (= e!1145346 e!1145344)))

(declare-fun c!290953 () Bool)

(assert (=> b!1789490 (= c!290953 ((_ is EmptyLang!4867) (regex!3539 rule!422)))))

(declare-fun d!545996 () Bool)

(assert (=> d!545996 e!1145346))

(declare-fun c!290952 () Bool)

(assert (=> d!545996 (= c!290952 ((_ is EmptyExpr!4867) (regex!3539 rule!422)))))

(declare-fun lt!697692 () Bool)

(declare-fun e!1145345 () Bool)

(assert (=> d!545996 (= lt!697692 e!1145345)))

(declare-fun c!290951 () Bool)

(assert (=> d!545996 (= c!290951 (isEmpty!12471 lt!697446))))

(assert (=> d!545996 (validRegex!1975 (regex!3539 rule!422))))

(assert (=> d!545996 (= (matchR!2340 (regex!3539 rule!422) lt!697446) lt!697692)))

(declare-fun b!1789491 () Bool)

(declare-fun e!1145343 () Bool)

(assert (=> b!1789491 (= e!1145343 (= (head!4196 lt!697446) (c!290840 (regex!3539 rule!422))))))

(declare-fun b!1789492 () Bool)

(declare-fun e!1145342 () Bool)

(assert (=> b!1789492 (= e!1145342 (not (= (head!4196 lt!697446) (c!290840 (regex!3539 rule!422)))))))

(declare-fun b!1789493 () Bool)

(declare-fun res!807205 () Bool)

(assert (=> b!1789493 (=> (not res!807205) (not e!1145343))))

(assert (=> b!1789493 (= res!807205 (isEmpty!12471 (tail!2677 lt!697446)))))

(declare-fun b!1789494 () Bool)

(assert (=> b!1789494 (= e!1145345 (matchR!2340 (derivativeStep!1270 (regex!3539 rule!422) (head!4196 lt!697446)) (tail!2677 lt!697446)))))

(declare-fun b!1789495 () Bool)

(declare-fun e!1145340 () Bool)

(assert (=> b!1789495 (= e!1145340 e!1145342)))

(declare-fun res!807207 () Bool)

(assert (=> b!1789495 (=> res!807207 e!1145342)))

(declare-fun call!111429 () Bool)

(assert (=> b!1789495 (= res!807207 call!111429)))

(declare-fun b!1789496 () Bool)

(declare-fun res!807210 () Bool)

(assert (=> b!1789496 (=> (not res!807210) (not e!1145343))))

(assert (=> b!1789496 (= res!807210 (not call!111429))))

(declare-fun b!1789497 () Bool)

(declare-fun e!1145341 () Bool)

(assert (=> b!1789497 (= e!1145341 e!1145340)))

(declare-fun res!807208 () Bool)

(assert (=> b!1789497 (=> (not res!807208) (not e!1145340))))

(assert (=> b!1789497 (= res!807208 (not lt!697692))))

(declare-fun bm!111424 () Bool)

(assert (=> bm!111424 (= call!111429 (isEmpty!12471 lt!697446))))

(declare-fun b!1789498 () Bool)

(assert (=> b!1789498 (= e!1145344 (not lt!697692))))

(declare-fun b!1789499 () Bool)

(declare-fun res!807206 () Bool)

(assert (=> b!1789499 (=> res!807206 e!1145341)))

(assert (=> b!1789499 (= res!807206 (not ((_ is ElementMatch!4867) (regex!3539 rule!422))))))

(assert (=> b!1789499 (= e!1145344 e!1145341)))

(declare-fun b!1789500 () Bool)

(declare-fun res!807212 () Bool)

(assert (=> b!1789500 (=> res!807212 e!1145342)))

(assert (=> b!1789500 (= res!807212 (not (isEmpty!12471 (tail!2677 lt!697446))))))

(declare-fun b!1789501 () Bool)

(assert (=> b!1789501 (= e!1145346 (= lt!697692 call!111429))))

(declare-fun b!1789502 () Bool)

(assert (=> b!1789502 (= e!1145345 (nullable!1501 (regex!3539 rule!422)))))

(declare-fun b!1789503 () Bool)

(declare-fun res!807209 () Bool)

(assert (=> b!1789503 (=> res!807209 e!1145341)))

(assert (=> b!1789503 (= res!807209 e!1145343)))

(declare-fun res!807211 () Bool)

(assert (=> b!1789503 (=> (not res!807211) (not e!1145343))))

(assert (=> b!1789503 (= res!807211 lt!697692)))

(assert (= (and d!545996 c!290951) b!1789502))

(assert (= (and d!545996 (not c!290951)) b!1789494))

(assert (= (and d!545996 c!290952) b!1789501))

(assert (= (and d!545996 (not c!290952)) b!1789490))

(assert (= (and b!1789490 c!290953) b!1789498))

(assert (= (and b!1789490 (not c!290953)) b!1789499))

(assert (= (and b!1789499 (not res!807206)) b!1789503))

(assert (= (and b!1789503 res!807211) b!1789496))

(assert (= (and b!1789496 res!807210) b!1789493))

(assert (= (and b!1789493 res!807205) b!1789491))

(assert (= (and b!1789503 (not res!807209)) b!1789497))

(assert (= (and b!1789497 res!807208) b!1789495))

(assert (= (and b!1789495 (not res!807207)) b!1789500))

(assert (= (and b!1789500 (not res!807212)) b!1789492))

(assert (= (or b!1789501 b!1789495 b!1789496) bm!111424))

(assert (=> b!1789492 m!2213641))

(assert (=> bm!111424 m!2213109))

(assert (=> d!545996 m!2213109))

(declare-fun m!2213911 () Bool)

(assert (=> d!545996 m!2213911))

(declare-fun m!2213913 () Bool)

(assert (=> b!1789502 m!2213913))

(assert (=> b!1789494 m!2213641))

(assert (=> b!1789494 m!2213641))

(declare-fun m!2213915 () Bool)

(assert (=> b!1789494 m!2213915))

(assert (=> b!1789494 m!2213647))

(assert (=> b!1789494 m!2213915))

(assert (=> b!1789494 m!2213647))

(declare-fun m!2213917 () Bool)

(assert (=> b!1789494 m!2213917))

(assert (=> b!1789493 m!2213647))

(assert (=> b!1789493 m!2213647))

(declare-fun m!2213919 () Bool)

(assert (=> b!1789493 m!2213919))

(assert (=> b!1789500 m!2213647))

(assert (=> b!1789500 m!2213647))

(assert (=> b!1789500 m!2213919))

(assert (=> b!1789491 m!2213641))

(assert (=> b!1788912 d!545996))

(declare-fun d!545998 () Bool)

(declare-fun res!807217 () Bool)

(declare-fun e!1145349 () Bool)

(assert (=> d!545998 (=> (not res!807217) (not e!1145349))))

(assert (=> d!545998 (= res!807217 (validRegex!1975 (regex!3539 rule!422)))))

(assert (=> d!545998 (= (ruleValid!1037 thiss!24550 rule!422) e!1145349)))

(declare-fun b!1789508 () Bool)

(declare-fun res!807218 () Bool)

(assert (=> b!1789508 (=> (not res!807218) (not e!1145349))))

(assert (=> b!1789508 (= res!807218 (not (nullable!1501 (regex!3539 rule!422))))))

(declare-fun b!1789509 () Bool)

(assert (=> b!1789509 (= e!1145349 (not (= (tag!3945 rule!422) (String!22478 ""))))))

(assert (= (and d!545998 res!807217) b!1789508))

(assert (= (and b!1789508 res!807218) b!1789509))

(assert (=> d!545998 m!2213911))

(assert (=> b!1789508 m!2213913))

(assert (=> b!1788912 d!545998))

(declare-fun d!546000 () Bool)

(assert (=> d!546000 (ruleValid!1037 thiss!24550 rule!422)))

(declare-fun lt!697695 () Unit!34147)

(declare-fun choose!11328 (LexerInterface!3168 Rule!6878 List!19799) Unit!34147)

(assert (=> d!546000 (= lt!697695 (choose!11328 thiss!24550 rule!422 rules!3447))))

(assert (=> d!546000 (contains!3571 rules!3447 rule!422)))

(assert (=> d!546000 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!560 thiss!24550 rule!422 rules!3447) lt!697695)))

(declare-fun bs!405575 () Bool)

(assert (= bs!405575 d!546000))

(assert (=> bs!405575 m!2213105))

(declare-fun m!2213921 () Bool)

(assert (=> bs!405575 m!2213921))

(assert (=> bs!405575 m!2213113))

(assert (=> b!1788912 d!546000))

(declare-fun d!546002 () Bool)

(assert (=> d!546002 (= (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) (seqFromList!2508 lt!697424)) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (seqFromList!2508 lt!697424)))))

(declare-fun b_lambda!58797 () Bool)

(assert (=> (not b_lambda!58797) (not d!546002)))

(declare-fun tb!109069 () Bool)

(declare-fun t!167460 () Bool)

(assert (=> (and b!1788918 (= (toValue!5066 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167460) tb!109069))

(declare-fun result!131236 () Bool)

(assert (=> tb!109069 (= result!131236 (inv!21 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (seqFromList!2508 lt!697424))))))

(declare-fun m!2213923 () Bool)

(assert (=> tb!109069 m!2213923))

(assert (=> d!546002 t!167460))

(declare-fun b_and!138017 () Bool)

(assert (= b_and!138011 (and (=> t!167460 result!131236) b_and!138017)))

(declare-fun t!167462 () Bool)

(declare-fun tb!109071 () Bool)

(assert (=> (and b!1788909 (= (toValue!5066 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167462) tb!109071))

(declare-fun result!131238 () Bool)

(assert (= result!131238 result!131236))

(assert (=> d!546002 t!167462))

(declare-fun b_and!138019 () Bool)

(assert (= b_and!138013 (and (=> t!167462 result!131238) b_and!138019)))

(declare-fun t!167464 () Bool)

(declare-fun tb!109073 () Bool)

(assert (=> (and b!1788916 (= (toValue!5066 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167464) tb!109073))

(declare-fun result!131240 () Bool)

(assert (= result!131240 result!131236))

(assert (=> d!546002 t!167464))

(declare-fun b_and!138021 () Bool)

(assert (= b_and!138015 (and (=> t!167464 result!131240) b_and!138021)))

(assert (=> d!546002 m!2213125))

(declare-fun m!2213925 () Bool)

(assert (=> d!546002 m!2213925))

(assert (=> b!1788913 d!546002))

(declare-fun d!546004 () Bool)

(assert (=> d!546004 (= (maxPrefixOneRule!1091 thiss!24550 (rule!5635 (_1!11057 lt!697425)) lt!697435) (Some!4100 (tuple2!19311 (Token!6645 (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) (seqFromList!2508 lt!697424)) (rule!5635 (_1!11057 lt!697425)) (size!15674 lt!697424) lt!697424) (_2!11057 lt!697425))))))

(declare-fun lt!697698 () Unit!34147)

(declare-fun choose!11329 (LexerInterface!3168 List!19799 List!19798 List!19798 List!19798 Rule!6878) Unit!34147)

(assert (=> d!546004 (= lt!697698 (choose!11329 thiss!24550 rules!3447 lt!697424 lt!697435 (_2!11057 lt!697425) (rule!5635 (_1!11057 lt!697425))))))

(assert (=> d!546004 (not (isEmpty!12470 rules!3447))))

(assert (=> d!546004 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!469 thiss!24550 rules!3447 lt!697424 lt!697435 (_2!11057 lt!697425) (rule!5635 (_1!11057 lt!697425))) lt!697698)))

(declare-fun bs!405576 () Bool)

(assert (= bs!405576 d!546004))

(assert (=> bs!405576 m!2213137))

(assert (=> bs!405576 m!2213125))

(assert (=> bs!405576 m!2213127))

(assert (=> bs!405576 m!2213125))

(assert (=> bs!405576 m!2213131))

(assert (=> bs!405576 m!2213129))

(declare-fun m!2213927 () Bool)

(assert (=> bs!405576 m!2213927))

(assert (=> b!1788913 d!546004))

(declare-fun d!546006 () Bool)

(declare-fun lt!697701 () Int)

(assert (=> d!546006 (>= lt!697701 0)))

(declare-fun e!1145353 () Int)

(assert (=> d!546006 (= lt!697701 e!1145353)))

(declare-fun c!290956 () Bool)

(assert (=> d!546006 (= c!290956 ((_ is Nil!19728) lt!697424))))

(assert (=> d!546006 (= (size!15674 lt!697424) lt!697701)))

(declare-fun b!1789514 () Bool)

(assert (=> b!1789514 (= e!1145353 0)))

(declare-fun b!1789515 () Bool)

(assert (=> b!1789515 (= e!1145353 (+ 1 (size!15674 (t!167433 lt!697424))))))

(assert (= (and d!546006 c!290956) b!1789514))

(assert (= (and d!546006 (not c!290956)) b!1789515))

(declare-fun m!2213929 () Bool)

(assert (=> b!1789515 m!2213929))

(assert (=> b!1788913 d!546006))

(declare-fun b!1789565 () Bool)

(declare-fun e!1145379 () Bool)

(declare-fun e!1145377 () Bool)

(assert (=> b!1789565 (= e!1145379 e!1145377)))

(declare-fun res!807262 () Bool)

(assert (=> b!1789565 (=> (not res!807262) (not e!1145377))))

(declare-fun lt!697780 () Option!4101)

(assert (=> b!1789565 (= res!807262 (matchR!2340 (regex!3539 (rule!5635 (_1!11057 lt!697425))) (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697780))))))))

(declare-fun b!1789566 () Bool)

(declare-fun e!1145380 () Option!4101)

(declare-datatypes ((tuple2!19318 0))(
  ( (tuple2!19319 (_1!11061 List!19798) (_2!11061 List!19798)) )
))
(declare-fun lt!697781 () tuple2!19318)

(assert (=> b!1789566 (= e!1145380 (Some!4100 (tuple2!19311 (Token!6645 (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) (seqFromList!2508 (_1!11061 lt!697781))) (rule!5635 (_1!11057 lt!697425)) (size!15673 (seqFromList!2508 (_1!11061 lt!697781))) (_1!11061 lt!697781)) (_2!11061 lt!697781))))))

(declare-fun lt!697778 () Unit!34147)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!463 (Regex!4867 List!19798) Unit!34147)

(assert (=> b!1789566 (= lt!697778 (longestMatchIsAcceptedByMatchOrIsEmpty!463 (regex!3539 (rule!5635 (_1!11057 lt!697425))) lt!697435))))

(declare-fun res!807258 () Bool)

(declare-fun findLongestMatchInner!479 (Regex!4867 List!19798 Int List!19798 List!19798 Int) tuple2!19318)

(assert (=> b!1789566 (= res!807258 (isEmpty!12471 (_1!11061 (findLongestMatchInner!479 (regex!3539 (rule!5635 (_1!11057 lt!697425))) Nil!19728 (size!15674 Nil!19728) lt!697435 lt!697435 (size!15674 lt!697435)))))))

(declare-fun e!1145378 () Bool)

(assert (=> b!1789566 (=> res!807258 e!1145378)))

(assert (=> b!1789566 e!1145378))

(declare-fun lt!697777 () Unit!34147)

(assert (=> b!1789566 (= lt!697777 lt!697778)))

(declare-fun lt!697779 () Unit!34147)

(assert (=> b!1789566 (= lt!697779 (lemmaSemiInverse!677 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) (seqFromList!2508 (_1!11061 lt!697781))))))

(declare-fun b!1789567 () Bool)

(declare-fun res!807261 () Bool)

(assert (=> b!1789567 (=> (not res!807261) (not e!1145377))))

(assert (=> b!1789567 (= res!807261 (= (rule!5635 (_1!11057 (get!6087 lt!697780))) (rule!5635 (_1!11057 lt!697425))))))

(declare-fun b!1789568 () Bool)

(assert (=> b!1789568 (= e!1145380 None!4100)))

(declare-fun d!546008 () Bool)

(assert (=> d!546008 e!1145379))

(declare-fun res!807259 () Bool)

(assert (=> d!546008 (=> res!807259 e!1145379)))

(assert (=> d!546008 (= res!807259 (isEmpty!12472 lt!697780))))

(assert (=> d!546008 (= lt!697780 e!1145380)))

(declare-fun c!290963 () Bool)

(assert (=> d!546008 (= c!290963 (isEmpty!12471 (_1!11061 lt!697781)))))

(declare-fun findLongestMatch!406 (Regex!4867 List!19798) tuple2!19318)

(assert (=> d!546008 (= lt!697781 (findLongestMatch!406 (regex!3539 (rule!5635 (_1!11057 lt!697425))) lt!697435))))

(assert (=> d!546008 (ruleValid!1037 thiss!24550 (rule!5635 (_1!11057 lt!697425)))))

(assert (=> d!546008 (= (maxPrefixOneRule!1091 thiss!24550 (rule!5635 (_1!11057 lt!697425)) lt!697435) lt!697780)))

(declare-fun b!1789569 () Bool)

(assert (=> b!1789569 (= e!1145377 (= (size!15672 (_1!11057 (get!6087 lt!697780))) (size!15674 (originalCharacters!4353 (_1!11057 (get!6087 lt!697780))))))))

(declare-fun b!1789570 () Bool)

(declare-fun res!807257 () Bool)

(assert (=> b!1789570 (=> (not res!807257) (not e!1145377))))

(assert (=> b!1789570 (= res!807257 (< (size!15674 (_2!11057 (get!6087 lt!697780))) (size!15674 lt!697435)))))

(declare-fun b!1789571 () Bool)

(assert (=> b!1789571 (= e!1145378 (matchR!2340 (regex!3539 (rule!5635 (_1!11057 lt!697425))) (_1!11061 (findLongestMatchInner!479 (regex!3539 (rule!5635 (_1!11057 lt!697425))) Nil!19728 (size!15674 Nil!19728) lt!697435 lt!697435 (size!15674 lt!697435)))))))

(declare-fun b!1789572 () Bool)

(declare-fun res!807256 () Bool)

(assert (=> b!1789572 (=> (not res!807256) (not e!1145377))))

(assert (=> b!1789572 (= res!807256 (= (value!110534 (_1!11057 (get!6087 lt!697780))) (apply!5339 (transformation!3539 (rule!5635 (_1!11057 (get!6087 lt!697780)))) (seqFromList!2508 (originalCharacters!4353 (_1!11057 (get!6087 lt!697780)))))))))

(declare-fun b!1789573 () Bool)

(declare-fun res!807260 () Bool)

(assert (=> b!1789573 (=> (not res!807260) (not e!1145377))))

(assert (=> b!1789573 (= res!807260 (= (++!5363 (list!8025 (charsOf!2188 (_1!11057 (get!6087 lt!697780)))) (_2!11057 (get!6087 lt!697780))) lt!697435))))

(assert (= (and d!546008 c!290963) b!1789568))

(assert (= (and d!546008 (not c!290963)) b!1789566))

(assert (= (and b!1789566 (not res!807258)) b!1789571))

(assert (= (and d!546008 (not res!807259)) b!1789565))

(assert (= (and b!1789565 res!807262) b!1789573))

(assert (= (and b!1789573 res!807260) b!1789570))

(assert (= (and b!1789570 res!807257) b!1789567))

(assert (= (and b!1789567 res!807261) b!1789572))

(assert (= (and b!1789572 res!807256) b!1789569))

(declare-fun m!2214031 () Bool)

(assert (=> b!1789573 m!2214031))

(declare-fun m!2214033 () Bool)

(assert (=> b!1789573 m!2214033))

(assert (=> b!1789573 m!2214033))

(declare-fun m!2214035 () Bool)

(assert (=> b!1789573 m!2214035))

(assert (=> b!1789573 m!2214035))

(declare-fun m!2214037 () Bool)

(assert (=> b!1789573 m!2214037))

(assert (=> b!1789569 m!2214031))

(declare-fun m!2214039 () Bool)

(assert (=> b!1789569 m!2214039))

(assert (=> b!1789567 m!2214031))

(assert (=> b!1789572 m!2214031))

(declare-fun m!2214041 () Bool)

(assert (=> b!1789572 m!2214041))

(assert (=> b!1789572 m!2214041))

(declare-fun m!2214043 () Bool)

(assert (=> b!1789572 m!2214043))

(assert (=> b!1789565 m!2214031))

(assert (=> b!1789565 m!2214033))

(assert (=> b!1789565 m!2214033))

(assert (=> b!1789565 m!2214035))

(assert (=> b!1789565 m!2214035))

(declare-fun m!2214045 () Bool)

(assert (=> b!1789565 m!2214045))

(assert (=> b!1789570 m!2214031))

(declare-fun m!2214047 () Bool)

(assert (=> b!1789570 m!2214047))

(assert (=> b!1789570 m!2213645))

(declare-fun m!2214049 () Bool)

(assert (=> d!546008 m!2214049))

(declare-fun m!2214051 () Bool)

(assert (=> d!546008 m!2214051))

(declare-fun m!2214053 () Bool)

(assert (=> d!546008 m!2214053))

(declare-fun m!2214055 () Bool)

(assert (=> d!546008 m!2214055))

(declare-fun m!2214057 () Bool)

(assert (=> b!1789566 m!2214057))

(declare-fun m!2214059 () Bool)

(assert (=> b!1789566 m!2214059))

(assert (=> b!1789566 m!2213645))

(assert (=> b!1789566 m!2214059))

(declare-fun m!2214061 () Bool)

(assert (=> b!1789566 m!2214061))

(assert (=> b!1789566 m!2214057))

(assert (=> b!1789566 m!2213645))

(declare-fun m!2214063 () Bool)

(assert (=> b!1789566 m!2214063))

(assert (=> b!1789566 m!2214059))

(declare-fun m!2214065 () Bool)

(assert (=> b!1789566 m!2214065))

(assert (=> b!1789566 m!2214059))

(declare-fun m!2214067 () Bool)

(assert (=> b!1789566 m!2214067))

(declare-fun m!2214069 () Bool)

(assert (=> b!1789566 m!2214069))

(declare-fun m!2214071 () Bool)

(assert (=> b!1789566 m!2214071))

(assert (=> b!1789571 m!2214057))

(assert (=> b!1789571 m!2213645))

(assert (=> b!1789571 m!2214057))

(assert (=> b!1789571 m!2213645))

(assert (=> b!1789571 m!2214063))

(declare-fun m!2214073 () Bool)

(assert (=> b!1789571 m!2214073))

(assert (=> b!1788913 d!546008))

(declare-fun d!546028 () Bool)

(declare-fun lt!697788 () List!19798)

(assert (=> d!546028 (= (++!5363 lt!697424 lt!697788) lt!697435)))

(declare-fun e!1145398 () List!19798)

(assert (=> d!546028 (= lt!697788 e!1145398)))

(declare-fun c!290971 () Bool)

(assert (=> d!546028 (= c!290971 ((_ is Cons!19728) lt!697424))))

(assert (=> d!546028 (>= (size!15674 lt!697435) (size!15674 lt!697424))))

(assert (=> d!546028 (= (getSuffix!946 lt!697435 lt!697424) lt!697788)))

(declare-fun b!1789602 () Bool)

(assert (=> b!1789602 (= e!1145398 (getSuffix!946 (tail!2677 lt!697435) (t!167433 lt!697424)))))

(declare-fun b!1789603 () Bool)

(assert (=> b!1789603 (= e!1145398 lt!697435)))

(assert (= (and d!546028 c!290971) b!1789602))

(assert (= (and d!546028 (not c!290971)) b!1789603))

(declare-fun m!2214105 () Bool)

(assert (=> d!546028 m!2214105))

(assert (=> d!546028 m!2213645))

(assert (=> d!546028 m!2213131))

(assert (=> b!1789602 m!2213649))

(assert (=> b!1789602 m!2213649))

(declare-fun m!2214109 () Bool)

(assert (=> b!1789602 m!2214109))

(assert (=> b!1788913 d!546028))

(declare-fun d!546052 () Bool)

(declare-fun fromListB!1150 (List!19798) BalanceConc!13070)

(assert (=> d!546052 (= (seqFromList!2508 lt!697424) (fromListB!1150 lt!697424))))

(declare-fun bs!405582 () Bool)

(assert (= bs!405582 d!546052))

(declare-fun m!2214123 () Bool)

(assert (=> bs!405582 m!2214123))

(assert (=> b!1788913 d!546052))

(declare-fun d!546060 () Bool)

(assert (=> d!546060 (= (_2!11057 lt!697425) lt!697405)))

(declare-fun lt!697791 () Unit!34147)

(assert (=> d!546060 (= lt!697791 (choose!11323 lt!697424 (_2!11057 lt!697425) lt!697424 lt!697405 lt!697435))))

(assert (=> d!546060 (isPrefix!1779 lt!697424 lt!697435)))

(assert (=> d!546060 (= (lemmaSamePrefixThenSameSuffix!890 lt!697424 (_2!11057 lt!697425) lt!697424 lt!697405 lt!697435) lt!697791)))

(declare-fun bs!405583 () Bool)

(assert (= bs!405583 d!546060))

(declare-fun m!2214135 () Bool)

(assert (=> bs!405583 m!2214135))

(assert (=> bs!405583 m!2213189))

(assert (=> b!1788913 d!546060))

(declare-fun d!546064 () Bool)

(declare-fun res!807295 () Bool)

(declare-fun e!1145419 () Bool)

(assert (=> d!546064 (=> (not res!807295) (not e!1145419))))

(assert (=> d!546064 (= res!807295 (not (isEmpty!12471 (originalCharacters!4353 token!523))))))

(assert (=> d!546064 (= (inv!25703 token!523) e!1145419)))

(declare-fun b!1789652 () Bool)

(declare-fun res!807296 () Bool)

(assert (=> b!1789652 (=> (not res!807296) (not e!1145419))))

(assert (=> b!1789652 (= res!807296 (= (originalCharacters!4353 token!523) (list!8025 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (value!110534 token!523)))))))

(declare-fun b!1789653 () Bool)

(assert (=> b!1789653 (= e!1145419 (= (size!15672 token!523) (size!15674 (originalCharacters!4353 token!523))))))

(assert (= (and d!546064 res!807295) b!1789652))

(assert (= (and b!1789652 res!807296) b!1789653))

(declare-fun b_lambda!58801 () Bool)

(assert (=> (not b_lambda!58801) (not b!1789652)))

(assert (=> b!1789652 t!167448))

(declare-fun b_and!138029 () Bool)

(assert (= b_and!138005 (and (=> t!167448 result!131224) b_and!138029)))

(assert (=> b!1789652 t!167450))

(declare-fun b_and!138031 () Bool)

(assert (= b_and!138007 (and (=> t!167450 result!131226) b_and!138031)))

(assert (=> b!1789652 t!167452))

(declare-fun b_and!138033 () Bool)

(assert (= b_and!138009 (and (=> t!167452 result!131228) b_and!138033)))

(declare-fun m!2214139 () Bool)

(assert (=> d!546064 m!2214139))

(assert (=> b!1789652 m!2213575))

(assert (=> b!1789652 m!2213575))

(declare-fun m!2214141 () Bool)

(assert (=> b!1789652 m!2214141))

(declare-fun m!2214143 () Bool)

(assert (=> b!1789653 m!2214143))

(assert (=> start!178318 d!546064))

(declare-fun d!546068 () Bool)

(declare-fun isBalanced!2054 (Conc!6563) Bool)

(assert (=> d!546068 (= (inv!25705 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))) (isBalanced!2054 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))))))

(declare-fun bs!405585 () Bool)

(assert (= bs!405585 d!546068))

(declare-fun m!2214151 () Bool)

(assert (=> bs!405585 m!2214151))

(assert (=> tb!109027 d!546068))

(declare-fun b!1789693 () Bool)

(declare-fun e!1145449 () Int)

(assert (=> b!1789693 (= e!1145449 (+ 1 (getIndex!204 (t!167434 rules!3447) (rule!5635 (_1!11057 lt!697425)))))))

(declare-fun b!1789691 () Bool)

(declare-fun e!1145448 () Int)

(assert (=> b!1789691 (= e!1145448 0)))

(declare-fun b!1789694 () Bool)

(assert (=> b!1789694 (= e!1145449 (- 1))))

(declare-fun b!1789692 () Bool)

(assert (=> b!1789692 (= e!1145448 e!1145449)))

(declare-fun c!290980 () Bool)

(assert (=> b!1789692 (= c!290980 (and ((_ is Cons!19729) rules!3447) (not (= (h!25130 rules!3447) (rule!5635 (_1!11057 lt!697425))))))))

(declare-fun d!546070 () Bool)

(declare-fun lt!697794 () Int)

(assert (=> d!546070 (>= lt!697794 0)))

(assert (=> d!546070 (= lt!697794 e!1145448)))

(declare-fun c!290979 () Bool)

(assert (=> d!546070 (= c!290979 (and ((_ is Cons!19729) rules!3447) (= (h!25130 rules!3447) (rule!5635 (_1!11057 lt!697425)))))))

(assert (=> d!546070 (contains!3571 rules!3447 (rule!5635 (_1!11057 lt!697425)))))

(assert (=> d!546070 (= (getIndex!204 rules!3447 (rule!5635 (_1!11057 lt!697425))) lt!697794)))

(assert (= (and d!546070 c!290979) b!1789691))

(assert (= (and d!546070 (not c!290979)) b!1789692))

(assert (= (and b!1789692 c!290980) b!1789693))

(assert (= (and b!1789692 (not c!290980)) b!1789694))

(declare-fun m!2214163 () Bool)

(assert (=> b!1789693 m!2214163))

(assert (=> d!546070 m!2213217))

(assert (=> b!1788914 d!546070))

(declare-fun b!1789697 () Bool)

(declare-fun e!1145451 () Int)

(assert (=> b!1789697 (= e!1145451 (+ 1 (getIndex!204 (t!167434 rules!3447) (rule!5635 token!523))))))

(declare-fun b!1789695 () Bool)

(declare-fun e!1145450 () Int)

(assert (=> b!1789695 (= e!1145450 0)))

(declare-fun b!1789698 () Bool)

(assert (=> b!1789698 (= e!1145451 (- 1))))

(declare-fun b!1789696 () Bool)

(assert (=> b!1789696 (= e!1145450 e!1145451)))

(declare-fun c!290982 () Bool)

(assert (=> b!1789696 (= c!290982 (and ((_ is Cons!19729) rules!3447) (not (= (h!25130 rules!3447) (rule!5635 token!523)))))))

(declare-fun d!546072 () Bool)

(declare-fun lt!697795 () Int)

(assert (=> d!546072 (>= lt!697795 0)))

(assert (=> d!546072 (= lt!697795 e!1145450)))

(declare-fun c!290981 () Bool)

(assert (=> d!546072 (= c!290981 (and ((_ is Cons!19729) rules!3447) (= (h!25130 rules!3447) (rule!5635 token!523))))))

(assert (=> d!546072 (contains!3571 rules!3447 (rule!5635 token!523))))

(assert (=> d!546072 (= (getIndex!204 rules!3447 (rule!5635 token!523)) lt!697795)))

(assert (= (and d!546072 c!290981) b!1789695))

(assert (= (and d!546072 (not c!290981)) b!1789696))

(assert (= (and b!1789696 c!290982) b!1789697))

(assert (= (and b!1789696 (not c!290982)) b!1789698))

(declare-fun m!2214165 () Bool)

(assert (=> b!1789697 m!2214165))

(assert (=> d!546072 m!2213117))

(assert (=> b!1788914 d!546072))

(declare-fun d!546074 () Bool)

(declare-fun c!290985 () Bool)

(assert (=> d!546074 (= c!290985 (isEmpty!12471 lt!697436))))

(declare-fun e!1145454 () Bool)

(assert (=> d!546074 (= (prefixMatch!750 lt!697444 lt!697436) e!1145454)))

(declare-fun b!1789703 () Bool)

(declare-fun lostCause!611 (Regex!4867) Bool)

(assert (=> b!1789703 (= e!1145454 (not (lostCause!611 lt!697444)))))

(declare-fun b!1789704 () Bool)

(assert (=> b!1789704 (= e!1145454 (prefixMatch!750 (derivativeStep!1270 lt!697444 (head!4196 lt!697436)) (tail!2677 lt!697436)))))

(assert (= (and d!546074 c!290985) b!1789703))

(assert (= (and d!546074 (not c!290985)) b!1789704))

(declare-fun m!2214167 () Bool)

(assert (=> d!546074 m!2214167))

(declare-fun m!2214169 () Bool)

(assert (=> b!1789703 m!2214169))

(declare-fun m!2214171 () Bool)

(assert (=> b!1789704 m!2214171))

(assert (=> b!1789704 m!2214171))

(declare-fun m!2214173 () Bool)

(assert (=> b!1789704 m!2214173))

(declare-fun m!2214175 () Bool)

(assert (=> b!1789704 m!2214175))

(assert (=> b!1789704 m!2214173))

(assert (=> b!1789704 m!2214175))

(declare-fun m!2214177 () Bool)

(assert (=> b!1789704 m!2214177))

(assert (=> b!1788936 d!546074))

(declare-fun b!1789706 () Bool)

(declare-fun e!1145456 () List!19798)

(assert (=> b!1789706 (= e!1145456 (Cons!19728 (h!25129 lt!697446) (++!5363 (t!167433 lt!697446) (Cons!19728 (head!4196 suffix!1421) Nil!19728))))))

(declare-fun e!1145455 () Bool)

(declare-fun lt!697796 () List!19798)

(declare-fun b!1789708 () Bool)

(assert (=> b!1789708 (= e!1145455 (or (not (= (Cons!19728 (head!4196 suffix!1421) Nil!19728) Nil!19728)) (= lt!697796 lt!697446)))))

(declare-fun b!1789705 () Bool)

(assert (=> b!1789705 (= e!1145456 (Cons!19728 (head!4196 suffix!1421) Nil!19728))))

(declare-fun b!1789707 () Bool)

(declare-fun res!807297 () Bool)

(assert (=> b!1789707 (=> (not res!807297) (not e!1145455))))

(assert (=> b!1789707 (= res!807297 (= (size!15674 lt!697796) (+ (size!15674 lt!697446) (size!15674 (Cons!19728 (head!4196 suffix!1421) Nil!19728)))))))

(declare-fun d!546076 () Bool)

(assert (=> d!546076 e!1145455))

(declare-fun res!807298 () Bool)

(assert (=> d!546076 (=> (not res!807298) (not e!1145455))))

(assert (=> d!546076 (= res!807298 (= (content!2879 lt!697796) ((_ map or) (content!2879 lt!697446) (content!2879 (Cons!19728 (head!4196 suffix!1421) Nil!19728)))))))

(assert (=> d!546076 (= lt!697796 e!1145456)))

(declare-fun c!290986 () Bool)

(assert (=> d!546076 (= c!290986 ((_ is Nil!19728) lt!697446))))

(assert (=> d!546076 (= (++!5363 lt!697446 (Cons!19728 (head!4196 suffix!1421) Nil!19728)) lt!697796)))

(assert (= (and d!546076 c!290986) b!1789705))

(assert (= (and d!546076 (not c!290986)) b!1789706))

(assert (= (and d!546076 res!807298) b!1789707))

(assert (= (and b!1789707 res!807297) b!1789708))

(declare-fun m!2214179 () Bool)

(assert (=> b!1789706 m!2214179))

(declare-fun m!2214181 () Bool)

(assert (=> b!1789707 m!2214181))

(assert (=> b!1789707 m!2213565))

(declare-fun m!2214183 () Bool)

(assert (=> b!1789707 m!2214183))

(declare-fun m!2214185 () Bool)

(assert (=> d!546076 m!2214185))

(assert (=> d!546076 m!2213903))

(declare-fun m!2214187 () Bool)

(assert (=> d!546076 m!2214187))

(assert (=> b!1788936 d!546076))

(declare-fun d!546078 () Bool)

(assert (=> d!546078 (= (head!4196 suffix!1421) (h!25129 suffix!1421))))

(assert (=> b!1788936 d!546078))

(declare-fun d!546080 () Bool)

(declare-fun lt!697799 () Unit!34147)

(declare-fun lemma!424 (List!19799 LexerInterface!3168 List!19799) Unit!34147)

(assert (=> d!546080 (= lt!697799 (lemma!424 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70855 () Int)

(declare-datatypes ((List!19804 0))(
  ( (Nil!19734) (Cons!19734 (h!25135 Regex!4867) (t!167499 List!19804)) )
))
(declare-fun generalisedUnion!432 (List!19804) Regex!4867)

(declare-fun map!4073 (List!19799 Int) List!19804)

(assert (=> d!546080 (= (rulesRegex!895 thiss!24550 rules!3447) (generalisedUnion!432 (map!4073 rules!3447 lambda!70855)))))

(declare-fun bs!405586 () Bool)

(assert (= bs!405586 d!546080))

(declare-fun m!2214189 () Bool)

(assert (=> bs!405586 m!2214189))

(declare-fun m!2214191 () Bool)

(assert (=> bs!405586 m!2214191))

(assert (=> bs!405586 m!2214191))

(declare-fun m!2214193 () Bool)

(assert (=> bs!405586 m!2214193))

(assert (=> b!1788936 d!546080))

(declare-fun d!546082 () Bool)

(declare-fun res!807301 () Bool)

(declare-fun e!1145459 () Bool)

(assert (=> d!546082 (=> (not res!807301) (not e!1145459))))

(declare-fun rulesValid!1341 (LexerInterface!3168 List!19799) Bool)

(assert (=> d!546082 (= res!807301 (rulesValid!1341 thiss!24550 rules!3447))))

(assert (=> d!546082 (= (rulesInvariant!2837 thiss!24550 rules!3447) e!1145459)))

(declare-fun b!1789711 () Bool)

(declare-datatypes ((List!19805 0))(
  ( (Nil!19735) (Cons!19735 (h!25136 String!22477) (t!167500 List!19805)) )
))
(declare-fun noDuplicateTag!1341 (LexerInterface!3168 List!19799 List!19805) Bool)

(assert (=> b!1789711 (= e!1145459 (noDuplicateTag!1341 thiss!24550 rules!3447 Nil!19735))))

(assert (= (and d!546082 res!807301) b!1789711))

(declare-fun m!2214195 () Bool)

(assert (=> d!546082 m!2214195))

(declare-fun m!2214197 () Bool)

(assert (=> b!1789711 m!2214197))

(assert (=> b!1788915 d!546082))

(declare-fun d!546084 () Bool)

(assert (=> d!546084 (= (isEmpty!12471 lt!697446) ((_ is Nil!19728) lt!697446))))

(assert (=> b!1788937 d!546084))

(declare-fun d!546086 () Bool)

(assert (=> d!546086 (= (inv!25705 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))) (isBalanced!2054 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))))

(declare-fun bs!405587 () Bool)

(assert (= bs!405587 d!546086))

(declare-fun m!2214199 () Bool)

(assert (=> bs!405587 m!2214199))

(assert (=> tb!109033 d!546086))

(declare-fun d!546088 () Bool)

(assert (=> d!546088 (= (inv!25697 (tag!3945 rule!422)) (= (mod (str.len (value!110533 (tag!3945 rule!422))) 2) 0))))

(assert (=> b!1788917 d!546088))

(declare-fun d!546090 () Bool)

(declare-fun res!807302 () Bool)

(declare-fun e!1145460 () Bool)

(assert (=> d!546090 (=> (not res!807302) (not e!1145460))))

(assert (=> d!546090 (= res!807302 (semiInverseModEq!1416 (toChars!4925 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 rule!422))))))

(assert (=> d!546090 (= (inv!25702 (transformation!3539 rule!422)) e!1145460)))

(declare-fun b!1789712 () Bool)

(assert (=> b!1789712 (= e!1145460 (equivClasses!1357 (toChars!4925 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 rule!422))))))

(assert (= (and d!546090 res!807302) b!1789712))

(declare-fun m!2214201 () Bool)

(assert (=> d!546090 m!2214201))

(declare-fun m!2214203 () Bool)

(assert (=> b!1789712 m!2214203))

(assert (=> b!1788917 d!546090))

(declare-fun d!546092 () Bool)

(assert (=> d!546092 (= (isEmpty!12470 rules!3447) ((_ is Nil!19729) rules!3447))))

(assert (=> b!1788896 d!546092))

(declare-fun d!546094 () Bool)

(assert (=> d!546094 (not (matchR!2340 lt!697444 lt!697424))))

(declare-fun lt!697802 () Unit!34147)

(declare-fun choose!11332 (Regex!4867 List!19798 List!19798) Unit!34147)

(assert (=> d!546094 (= lt!697802 (choose!11332 lt!697444 lt!697436 lt!697424))))

(assert (=> d!546094 (validRegex!1975 lt!697444)))

(assert (=> d!546094 (= (lemmaNotPrefixMatchThenCannotMatchLonger!178 lt!697444 lt!697436 lt!697424) lt!697802)))

(declare-fun bs!405588 () Bool)

(assert (= bs!405588 d!546094))

(assert (=> bs!405588 m!2213159))

(declare-fun m!2214205 () Bool)

(assert (=> bs!405588 m!2214205))

(declare-fun m!2214207 () Bool)

(assert (=> bs!405588 m!2214207))

(assert (=> b!1788897 d!546094))

(declare-fun b!1789713 () Bool)

(declare-fun e!1145467 () Bool)

(declare-fun e!1145465 () Bool)

(assert (=> b!1789713 (= e!1145467 e!1145465)))

(declare-fun c!290989 () Bool)

(assert (=> b!1789713 (= c!290989 ((_ is EmptyLang!4867) lt!697444))))

(declare-fun d!546096 () Bool)

(assert (=> d!546096 e!1145467))

(declare-fun c!290988 () Bool)

(assert (=> d!546096 (= c!290988 ((_ is EmptyExpr!4867) lt!697444))))

(declare-fun lt!697803 () Bool)

(declare-fun e!1145466 () Bool)

(assert (=> d!546096 (= lt!697803 e!1145466)))

(declare-fun c!290987 () Bool)

(assert (=> d!546096 (= c!290987 (isEmpty!12471 lt!697424))))

(assert (=> d!546096 (validRegex!1975 lt!697444)))

(assert (=> d!546096 (= (matchR!2340 lt!697444 lt!697424) lt!697803)))

(declare-fun b!1789714 () Bool)

(declare-fun e!1145464 () Bool)

(assert (=> b!1789714 (= e!1145464 (= (head!4196 lt!697424) (c!290840 lt!697444)))))

(declare-fun b!1789715 () Bool)

(declare-fun e!1145463 () Bool)

(assert (=> b!1789715 (= e!1145463 (not (= (head!4196 lt!697424) (c!290840 lt!697444))))))

(declare-fun b!1789716 () Bool)

(declare-fun res!807303 () Bool)

(assert (=> b!1789716 (=> (not res!807303) (not e!1145464))))

(assert (=> b!1789716 (= res!807303 (isEmpty!12471 (tail!2677 lt!697424)))))

(declare-fun b!1789717 () Bool)

(assert (=> b!1789717 (= e!1145466 (matchR!2340 (derivativeStep!1270 lt!697444 (head!4196 lt!697424)) (tail!2677 lt!697424)))))

(declare-fun b!1789718 () Bool)

(declare-fun e!1145461 () Bool)

(assert (=> b!1789718 (= e!1145461 e!1145463)))

(declare-fun res!807305 () Bool)

(assert (=> b!1789718 (=> res!807305 e!1145463)))

(declare-fun call!111433 () Bool)

(assert (=> b!1789718 (= res!807305 call!111433)))

(declare-fun b!1789719 () Bool)

(declare-fun res!807308 () Bool)

(assert (=> b!1789719 (=> (not res!807308) (not e!1145464))))

(assert (=> b!1789719 (= res!807308 (not call!111433))))

(declare-fun b!1789720 () Bool)

(declare-fun e!1145462 () Bool)

(assert (=> b!1789720 (= e!1145462 e!1145461)))

(declare-fun res!807306 () Bool)

(assert (=> b!1789720 (=> (not res!807306) (not e!1145461))))

(assert (=> b!1789720 (= res!807306 (not lt!697803))))

(declare-fun bm!111428 () Bool)

(assert (=> bm!111428 (= call!111433 (isEmpty!12471 lt!697424))))

(declare-fun b!1789721 () Bool)

(assert (=> b!1789721 (= e!1145465 (not lt!697803))))

(declare-fun b!1789722 () Bool)

(declare-fun res!807304 () Bool)

(assert (=> b!1789722 (=> res!807304 e!1145462)))

(assert (=> b!1789722 (= res!807304 (not ((_ is ElementMatch!4867) lt!697444)))))

(assert (=> b!1789722 (= e!1145465 e!1145462)))

(declare-fun b!1789723 () Bool)

(declare-fun res!807310 () Bool)

(assert (=> b!1789723 (=> res!807310 e!1145463)))

(assert (=> b!1789723 (= res!807310 (not (isEmpty!12471 (tail!2677 lt!697424))))))

(declare-fun b!1789724 () Bool)

(assert (=> b!1789724 (= e!1145467 (= lt!697803 call!111433))))

(declare-fun b!1789725 () Bool)

(assert (=> b!1789725 (= e!1145466 (nullable!1501 lt!697444))))

(declare-fun b!1789726 () Bool)

(declare-fun res!807307 () Bool)

(assert (=> b!1789726 (=> res!807307 e!1145462)))

(assert (=> b!1789726 (= res!807307 e!1145464)))

(declare-fun res!807309 () Bool)

(assert (=> b!1789726 (=> (not res!807309) (not e!1145464))))

(assert (=> b!1789726 (= res!807309 lt!697803)))

(assert (= (and d!546096 c!290987) b!1789725))

(assert (= (and d!546096 (not c!290987)) b!1789717))

(assert (= (and d!546096 c!290988) b!1789724))

(assert (= (and d!546096 (not c!290988)) b!1789713))

(assert (= (and b!1789713 c!290989) b!1789721))

(assert (= (and b!1789713 (not c!290989)) b!1789722))

(assert (= (and b!1789722 (not res!807304)) b!1789726))

(assert (= (and b!1789726 res!807309) b!1789719))

(assert (= (and b!1789719 res!807308) b!1789716))

(assert (= (and b!1789716 res!807303) b!1789714))

(assert (= (and b!1789726 (not res!807307)) b!1789720))

(assert (= (and b!1789720 res!807306) b!1789718))

(assert (= (and b!1789718 (not res!807305)) b!1789723))

(assert (= (and b!1789723 (not res!807310)) b!1789715))

(assert (= (or b!1789724 b!1789718 b!1789719) bm!111428))

(assert (=> b!1789715 m!2213399))

(assert (=> bm!111428 m!2213401))

(assert (=> d!546096 m!2213401))

(assert (=> d!546096 m!2214207))

(declare-fun m!2214209 () Bool)

(assert (=> b!1789725 m!2214209))

(assert (=> b!1789717 m!2213399))

(assert (=> b!1789717 m!2213399))

(declare-fun m!2214211 () Bool)

(assert (=> b!1789717 m!2214211))

(assert (=> b!1789717 m!2213409))

(assert (=> b!1789717 m!2214211))

(assert (=> b!1789717 m!2213409))

(declare-fun m!2214213 () Bool)

(assert (=> b!1789717 m!2214213))

(assert (=> b!1789716 m!2213409))

(assert (=> b!1789716 m!2213409))

(assert (=> b!1789716 m!2213413))

(assert (=> b!1789723 m!2213409))

(assert (=> b!1789723 m!2213409))

(assert (=> b!1789723 m!2213413))

(assert (=> b!1789714 m!2213399))

(assert (=> b!1788897 d!546096))

(declare-fun d!546098 () Bool)

(assert (=> d!546098 (isPrefix!1779 lt!697436 lt!697424)))

(declare-fun lt!697806 () Unit!34147)

(declare-fun choose!11333 (List!19798 List!19798 List!19798) Unit!34147)

(assert (=> d!546098 (= lt!697806 (choose!11333 lt!697424 lt!697436 lt!697435))))

(assert (=> d!546098 (isPrefix!1779 lt!697424 lt!697435)))

(assert (=> d!546098 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!187 lt!697424 lt!697436 lt!697435) lt!697806)))

(declare-fun bs!405589 () Bool)

(assert (= bs!405589 d!546098))

(assert (=> bs!405589 m!2213157))

(declare-fun m!2214215 () Bool)

(assert (=> bs!405589 m!2214215))

(assert (=> bs!405589 m!2213189))

(assert (=> b!1788897 d!546098))

(declare-fun d!546100 () Bool)

(assert (=> d!546100 (= (head!4196 lt!697418) (h!25129 lt!697418))))

(assert (=> b!1788897 d!546100))

(declare-fun d!546102 () Bool)

(assert (=> d!546102 (= suffix!1421 lt!697418)))

(declare-fun lt!697807 () Unit!34147)

(assert (=> d!546102 (= lt!697807 (choose!11323 lt!697446 suffix!1421 lt!697446 lt!697418 lt!697435))))

(assert (=> d!546102 (isPrefix!1779 lt!697446 lt!697435)))

(assert (=> d!546102 (= (lemmaSamePrefixThenSameSuffix!890 lt!697446 suffix!1421 lt!697446 lt!697418 lt!697435) lt!697807)))

(declare-fun bs!405590 () Bool)

(assert (= bs!405590 d!546102))

(declare-fun m!2214217 () Bool)

(assert (=> bs!405590 m!2214217))

(assert (=> bs!405590 m!2213209))

(assert (=> b!1788897 d!546102))

(declare-fun d!546104 () Bool)

(assert (=> d!546104 (matchR!2340 (rulesRegex!895 thiss!24550 rules!3447) (list!8025 (charsOf!2188 (_1!11057 lt!697425))))))

(declare-fun lt!697810 () Unit!34147)

(declare-fun choose!11334 (LexerInterface!3168 List!19799 List!19798 Token!6644 Rule!6878 List!19798) Unit!34147)

(assert (=> d!546104 (= lt!697810 (choose!11334 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425) (rule!5635 (_1!11057 lt!697425)) (_2!11057 lt!697425)))))

(assert (=> d!546104 (not (isEmpty!12470 rules!3447))))

(assert (=> d!546104 (= (lemmaMaxPrefixThenMatchesRulesRegex!246 thiss!24550 rules!3447 lt!697435 (_1!11057 lt!697425) (rule!5635 (_1!11057 lt!697425)) (_2!11057 lt!697425)) lt!697810)))

(declare-fun bs!405591 () Bool)

(assert (= bs!405591 d!546104))

(assert (=> bs!405591 m!2213263))

(assert (=> bs!405591 m!2213173))

(declare-fun m!2214219 () Bool)

(assert (=> bs!405591 m!2214219))

(assert (=> bs!405591 m!2213263))

(assert (=> bs!405591 m!2213171))

(assert (=> bs!405591 m!2213171))

(assert (=> bs!405591 m!2213173))

(declare-fun m!2214221 () Bool)

(assert (=> bs!405591 m!2214221))

(assert (=> bs!405591 m!2213137))

(assert (=> b!1788897 d!546104))

(declare-fun d!546106 () Bool)

(assert (=> d!546106 (isPrefix!1779 (++!5363 lt!697446 (Cons!19728 (head!4196 (getSuffix!946 lt!697435 lt!697446)) Nil!19728)) lt!697435)))

(declare-fun lt!697813 () Unit!34147)

(declare-fun choose!11335 (List!19798 List!19798) Unit!34147)

(assert (=> d!546106 (= lt!697813 (choose!11335 lt!697446 lt!697435))))

(assert (=> d!546106 (isPrefix!1779 lt!697446 lt!697435)))

(assert (=> d!546106 (= (lemmaAddHeadSuffixToPrefixStillPrefix!315 lt!697446 lt!697435) lt!697813)))

(declare-fun bs!405592 () Bool)

(assert (= bs!405592 d!546106))

(declare-fun m!2214223 () Bool)

(assert (=> bs!405592 m!2214223))

(assert (=> bs!405592 m!2213147))

(declare-fun m!2214225 () Bool)

(assert (=> bs!405592 m!2214225))

(assert (=> bs!405592 m!2213209))

(declare-fun m!2214227 () Bool)

(assert (=> bs!405592 m!2214227))

(assert (=> bs!405592 m!2214227))

(declare-fun m!2214229 () Bool)

(assert (=> bs!405592 m!2214229))

(assert (=> bs!405592 m!2213147))

(assert (=> b!1788897 d!546106))

(declare-fun b!1789728 () Bool)

(declare-fun res!807314 () Bool)

(declare-fun e!1145470 () Bool)

(assert (=> b!1789728 (=> (not res!807314) (not e!1145470))))

(assert (=> b!1789728 (= res!807314 (= (head!4196 (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728))) (head!4196 lt!697435)))))

(declare-fun e!1145469 () Bool)

(declare-fun b!1789730 () Bool)

(assert (=> b!1789730 (= e!1145469 (>= (size!15674 lt!697435) (size!15674 (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728)))))))

(declare-fun b!1789727 () Bool)

(declare-fun e!1145468 () Bool)

(assert (=> b!1789727 (= e!1145468 e!1145470)))

(declare-fun res!807312 () Bool)

(assert (=> b!1789727 (=> (not res!807312) (not e!1145470))))

(assert (=> b!1789727 (= res!807312 (not ((_ is Nil!19728) lt!697435)))))

(declare-fun b!1789729 () Bool)

(assert (=> b!1789729 (= e!1145470 (isPrefix!1779 (tail!2677 (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728))) (tail!2677 lt!697435)))))

(declare-fun d!546108 () Bool)

(assert (=> d!546108 e!1145469))

(declare-fun res!807313 () Bool)

(assert (=> d!546108 (=> res!807313 e!1145469)))

(declare-fun lt!697814 () Bool)

(assert (=> d!546108 (= res!807313 (not lt!697814))))

(assert (=> d!546108 (= lt!697814 e!1145468)))

(declare-fun res!807311 () Bool)

(assert (=> d!546108 (=> res!807311 e!1145468)))

(assert (=> d!546108 (= res!807311 ((_ is Nil!19728) (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728))))))

(assert (=> d!546108 (= (isPrefix!1779 (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728)) lt!697435) lt!697814)))

(assert (= (and d!546108 (not res!807311)) b!1789727))

(assert (= (and b!1789727 res!807312) b!1789728))

(assert (= (and b!1789728 res!807314) b!1789729))

(assert (= (and d!546108 (not res!807313)) b!1789730))

(assert (=> b!1789728 m!2213141))

(declare-fun m!2214231 () Bool)

(assert (=> b!1789728 m!2214231))

(assert (=> b!1789728 m!2213643))

(assert (=> b!1789730 m!2213645))

(assert (=> b!1789730 m!2213141))

(declare-fun m!2214233 () Bool)

(assert (=> b!1789730 m!2214233))

(assert (=> b!1789729 m!2213141))

(declare-fun m!2214235 () Bool)

(assert (=> b!1789729 m!2214235))

(assert (=> b!1789729 m!2213649))

(assert (=> b!1789729 m!2214235))

(assert (=> b!1789729 m!2213649))

(declare-fun m!2214237 () Bool)

(assert (=> b!1789729 m!2214237))

(assert (=> b!1788897 d!546108))

(declare-fun b!1789732 () Bool)

(declare-fun e!1145472 () List!19798)

(assert (=> b!1789732 (= e!1145472 (Cons!19728 (h!25129 lt!697446) (++!5363 (t!167433 lt!697446) (Cons!19728 (head!4196 lt!697418) Nil!19728))))))

(declare-fun b!1789734 () Bool)

(declare-fun lt!697815 () List!19798)

(declare-fun e!1145471 () Bool)

(assert (=> b!1789734 (= e!1145471 (or (not (= (Cons!19728 (head!4196 lt!697418) Nil!19728) Nil!19728)) (= lt!697815 lt!697446)))))

(declare-fun b!1789731 () Bool)

(assert (=> b!1789731 (= e!1145472 (Cons!19728 (head!4196 lt!697418) Nil!19728))))

(declare-fun b!1789733 () Bool)

(declare-fun res!807315 () Bool)

(assert (=> b!1789733 (=> (not res!807315) (not e!1145471))))

(assert (=> b!1789733 (= res!807315 (= (size!15674 lt!697815) (+ (size!15674 lt!697446) (size!15674 (Cons!19728 (head!4196 lt!697418) Nil!19728)))))))

(declare-fun d!546110 () Bool)

(assert (=> d!546110 e!1145471))

(declare-fun res!807316 () Bool)

(assert (=> d!546110 (=> (not res!807316) (not e!1145471))))

(assert (=> d!546110 (= res!807316 (= (content!2879 lt!697815) ((_ map or) (content!2879 lt!697446) (content!2879 (Cons!19728 (head!4196 lt!697418) Nil!19728)))))))

(assert (=> d!546110 (= lt!697815 e!1145472)))

(declare-fun c!290990 () Bool)

(assert (=> d!546110 (= c!290990 ((_ is Nil!19728) lt!697446))))

(assert (=> d!546110 (= (++!5363 lt!697446 (Cons!19728 (head!4196 lt!697418) Nil!19728)) lt!697815)))

(assert (= (and d!546110 c!290990) b!1789731))

(assert (= (and d!546110 (not c!290990)) b!1789732))

(assert (= (and d!546110 res!807316) b!1789733))

(assert (= (and b!1789733 res!807315) b!1789734))

(declare-fun m!2214239 () Bool)

(assert (=> b!1789732 m!2214239))

(declare-fun m!2214241 () Bool)

(assert (=> b!1789733 m!2214241))

(assert (=> b!1789733 m!2213565))

(declare-fun m!2214243 () Bool)

(assert (=> b!1789733 m!2214243))

(declare-fun m!2214245 () Bool)

(assert (=> d!546110 m!2214245))

(assert (=> d!546110 m!2213903))

(declare-fun m!2214247 () Bool)

(assert (=> d!546110 m!2214247))

(assert (=> b!1788897 d!546110))

(declare-fun b!1789736 () Bool)

(declare-fun res!807320 () Bool)

(declare-fun e!1145475 () Bool)

(assert (=> b!1789736 (=> (not res!807320) (not e!1145475))))

(assert (=> b!1789736 (= res!807320 (= (head!4196 lt!697436) (head!4196 lt!697424)))))

(declare-fun b!1789738 () Bool)

(declare-fun e!1145474 () Bool)

(assert (=> b!1789738 (= e!1145474 (>= (size!15674 lt!697424) (size!15674 lt!697436)))))

(declare-fun b!1789735 () Bool)

(declare-fun e!1145473 () Bool)

(assert (=> b!1789735 (= e!1145473 e!1145475)))

(declare-fun res!807318 () Bool)

(assert (=> b!1789735 (=> (not res!807318) (not e!1145475))))

(assert (=> b!1789735 (= res!807318 (not ((_ is Nil!19728) lt!697424)))))

(declare-fun b!1789737 () Bool)

(assert (=> b!1789737 (= e!1145475 (isPrefix!1779 (tail!2677 lt!697436) (tail!2677 lt!697424)))))

(declare-fun d!546112 () Bool)

(assert (=> d!546112 e!1145474))

(declare-fun res!807319 () Bool)

(assert (=> d!546112 (=> res!807319 e!1145474)))

(declare-fun lt!697816 () Bool)

(assert (=> d!546112 (= res!807319 (not lt!697816))))

(assert (=> d!546112 (= lt!697816 e!1145473)))

(declare-fun res!807317 () Bool)

(assert (=> d!546112 (=> res!807317 e!1145473)))

(assert (=> d!546112 (= res!807317 ((_ is Nil!19728) lt!697436))))

(assert (=> d!546112 (= (isPrefix!1779 lt!697436 lt!697424) lt!697816)))

(assert (= (and d!546112 (not res!807317)) b!1789735))

(assert (= (and b!1789735 res!807318) b!1789736))

(assert (= (and b!1789736 res!807320) b!1789737))

(assert (= (and d!546112 (not res!807319)) b!1789738))

(assert (=> b!1789736 m!2214171))

(assert (=> b!1789736 m!2213399))

(assert (=> b!1789738 m!2213131))

(declare-fun m!2214249 () Bool)

(assert (=> b!1789738 m!2214249))

(assert (=> b!1789737 m!2214175))

(assert (=> b!1789737 m!2213409))

(assert (=> b!1789737 m!2214175))

(assert (=> b!1789737 m!2213409))

(declare-fun m!2214251 () Bool)

(assert (=> b!1789737 m!2214251))

(assert (=> b!1788897 d!546112))

(declare-fun d!546114 () Bool)

(declare-fun lt!697817 () List!19798)

(assert (=> d!546114 (= (++!5363 lt!697446 lt!697817) lt!697435)))

(declare-fun e!1145476 () List!19798)

(assert (=> d!546114 (= lt!697817 e!1145476)))

(declare-fun c!290991 () Bool)

(assert (=> d!546114 (= c!290991 ((_ is Cons!19728) lt!697446))))

(assert (=> d!546114 (>= (size!15674 lt!697435) (size!15674 lt!697446))))

(assert (=> d!546114 (= (getSuffix!946 lt!697435 lt!697446) lt!697817)))

(declare-fun b!1789739 () Bool)

(assert (=> b!1789739 (= e!1145476 (getSuffix!946 (tail!2677 lt!697435) (t!167433 lt!697446)))))

(declare-fun b!1789740 () Bool)

(assert (=> b!1789740 (= e!1145476 lt!697435)))

(assert (= (and d!546114 c!290991) b!1789739))

(assert (= (and d!546114 (not c!290991)) b!1789740))

(declare-fun m!2214253 () Bool)

(assert (=> d!546114 m!2214253))

(assert (=> d!546114 m!2213645))

(assert (=> d!546114 m!2213565))

(assert (=> b!1789739 m!2213649))

(assert (=> b!1789739 m!2213649))

(declare-fun m!2214255 () Bool)

(assert (=> b!1789739 m!2214255))

(assert (=> b!1788897 d!546114))

(declare-fun d!546116 () Bool)

(declare-fun lt!697818 () Bool)

(assert (=> d!546116 (= lt!697818 (select (content!2877 rules!3447) rule!422))))

(declare-fun e!1145478 () Bool)

(assert (=> d!546116 (= lt!697818 e!1145478)))

(declare-fun res!807322 () Bool)

(assert (=> d!546116 (=> (not res!807322) (not e!1145478))))

(assert (=> d!546116 (= res!807322 ((_ is Cons!19729) rules!3447))))

(assert (=> d!546116 (= (contains!3571 rules!3447 rule!422) lt!697818)))

(declare-fun b!1789741 () Bool)

(declare-fun e!1145477 () Bool)

(assert (=> b!1789741 (= e!1145478 e!1145477)))

(declare-fun res!807321 () Bool)

(assert (=> b!1789741 (=> res!807321 e!1145477)))

(assert (=> b!1789741 (= res!807321 (= (h!25130 rules!3447) rule!422))))

(declare-fun b!1789742 () Bool)

(assert (=> b!1789742 (= e!1145477 (contains!3571 (t!167434 rules!3447) rule!422))))

(assert (= (and d!546116 res!807322) b!1789741))

(assert (= (and b!1789741 (not res!807321)) b!1789742))

(assert (=> d!546116 m!2213375))

(declare-fun m!2214257 () Bool)

(assert (=> d!546116 m!2214257))

(declare-fun m!2214259 () Bool)

(assert (=> b!1789742 m!2214259))

(assert (=> b!1788919 d!546116))

(declare-fun d!546118 () Bool)

(assert (=> d!546118 (= (isEmpty!12471 suffix!1421) ((_ is Nil!19728) suffix!1421))))

(assert (=> b!1788898 d!546118))

(declare-fun d!546120 () Bool)

(declare-fun lt!697821 () Int)

(assert (=> d!546120 (= lt!697821 (size!15674 (list!8025 lt!697417)))))

(declare-fun size!15676 (Conc!6563) Int)

(assert (=> d!546120 (= lt!697821 (size!15676 (c!290841 lt!697417)))))

(assert (=> d!546120 (= (size!15673 lt!697417) lt!697821)))

(declare-fun bs!405593 () Bool)

(assert (= bs!405593 d!546120))

(assert (=> bs!405593 m!2213237))

(assert (=> bs!405593 m!2213237))

(declare-fun m!2214261 () Bool)

(assert (=> bs!405593 m!2214261))

(declare-fun m!2214263 () Bool)

(assert (=> bs!405593 m!2214263))

(assert (=> b!1788899 d!546120))

(declare-fun b!1789743 () Bool)

(declare-fun e!1145485 () Bool)

(declare-fun e!1145483 () Bool)

(assert (=> b!1789743 (= e!1145485 e!1145483)))

(declare-fun c!290994 () Bool)

(assert (=> b!1789743 (= c!290994 ((_ is EmptyLang!4867) lt!697444))))

(declare-fun d!546122 () Bool)

(assert (=> d!546122 e!1145485))

(declare-fun c!290993 () Bool)

(assert (=> d!546122 (= c!290993 ((_ is EmptyExpr!4867) lt!697444))))

(declare-fun lt!697822 () Bool)

(declare-fun e!1145484 () Bool)

(assert (=> d!546122 (= lt!697822 e!1145484)))

(declare-fun c!290992 () Bool)

(assert (=> d!546122 (= c!290992 (isEmpty!12471 lt!697446))))

(assert (=> d!546122 (validRegex!1975 lt!697444)))

(assert (=> d!546122 (= (matchR!2340 lt!697444 lt!697446) lt!697822)))

(declare-fun b!1789744 () Bool)

(declare-fun e!1145482 () Bool)

(assert (=> b!1789744 (= e!1145482 (= (head!4196 lt!697446) (c!290840 lt!697444)))))

(declare-fun b!1789745 () Bool)

(declare-fun e!1145481 () Bool)

(assert (=> b!1789745 (= e!1145481 (not (= (head!4196 lt!697446) (c!290840 lt!697444))))))

(declare-fun b!1789746 () Bool)

(declare-fun res!807323 () Bool)

(assert (=> b!1789746 (=> (not res!807323) (not e!1145482))))

(assert (=> b!1789746 (= res!807323 (isEmpty!12471 (tail!2677 lt!697446)))))

(declare-fun b!1789747 () Bool)

(assert (=> b!1789747 (= e!1145484 (matchR!2340 (derivativeStep!1270 lt!697444 (head!4196 lt!697446)) (tail!2677 lt!697446)))))

(declare-fun b!1789748 () Bool)

(declare-fun e!1145479 () Bool)

(assert (=> b!1789748 (= e!1145479 e!1145481)))

(declare-fun res!807325 () Bool)

(assert (=> b!1789748 (=> res!807325 e!1145481)))

(declare-fun call!111434 () Bool)

(assert (=> b!1789748 (= res!807325 call!111434)))

(declare-fun b!1789749 () Bool)

(declare-fun res!807328 () Bool)

(assert (=> b!1789749 (=> (not res!807328) (not e!1145482))))

(assert (=> b!1789749 (= res!807328 (not call!111434))))

(declare-fun b!1789750 () Bool)

(declare-fun e!1145480 () Bool)

(assert (=> b!1789750 (= e!1145480 e!1145479)))

(declare-fun res!807326 () Bool)

(assert (=> b!1789750 (=> (not res!807326) (not e!1145479))))

(assert (=> b!1789750 (= res!807326 (not lt!697822))))

(declare-fun bm!111429 () Bool)

(assert (=> bm!111429 (= call!111434 (isEmpty!12471 lt!697446))))

(declare-fun b!1789751 () Bool)

(assert (=> b!1789751 (= e!1145483 (not lt!697822))))

(declare-fun b!1789752 () Bool)

(declare-fun res!807324 () Bool)

(assert (=> b!1789752 (=> res!807324 e!1145480)))

(assert (=> b!1789752 (= res!807324 (not ((_ is ElementMatch!4867) lt!697444)))))

(assert (=> b!1789752 (= e!1145483 e!1145480)))

(declare-fun b!1789753 () Bool)

(declare-fun res!807330 () Bool)

(assert (=> b!1789753 (=> res!807330 e!1145481)))

(assert (=> b!1789753 (= res!807330 (not (isEmpty!12471 (tail!2677 lt!697446))))))

(declare-fun b!1789754 () Bool)

(assert (=> b!1789754 (= e!1145485 (= lt!697822 call!111434))))

(declare-fun b!1789755 () Bool)

(assert (=> b!1789755 (= e!1145484 (nullable!1501 lt!697444))))

(declare-fun b!1789756 () Bool)

(declare-fun res!807327 () Bool)

(assert (=> b!1789756 (=> res!807327 e!1145480)))

(assert (=> b!1789756 (= res!807327 e!1145482)))

(declare-fun res!807329 () Bool)

(assert (=> b!1789756 (=> (not res!807329) (not e!1145482))))

(assert (=> b!1789756 (= res!807329 lt!697822)))

(assert (= (and d!546122 c!290992) b!1789755))

(assert (= (and d!546122 (not c!290992)) b!1789747))

(assert (= (and d!546122 c!290993) b!1789754))

(assert (= (and d!546122 (not c!290993)) b!1789743))

(assert (= (and b!1789743 c!290994) b!1789751))

(assert (= (and b!1789743 (not c!290994)) b!1789752))

(assert (= (and b!1789752 (not res!807324)) b!1789756))

(assert (= (and b!1789756 res!807329) b!1789749))

(assert (= (and b!1789749 res!807328) b!1789746))

(assert (= (and b!1789746 res!807323) b!1789744))

(assert (= (and b!1789756 (not res!807327)) b!1789750))

(assert (= (and b!1789750 res!807326) b!1789748))

(assert (= (and b!1789748 (not res!807325)) b!1789753))

(assert (= (and b!1789753 (not res!807330)) b!1789745))

(assert (= (or b!1789754 b!1789748 b!1789749) bm!111429))

(assert (=> b!1789745 m!2213641))

(assert (=> bm!111429 m!2213109))

(assert (=> d!546122 m!2213109))

(assert (=> d!546122 m!2214207))

(assert (=> b!1789755 m!2214209))

(assert (=> b!1789747 m!2213641))

(assert (=> b!1789747 m!2213641))

(declare-fun m!2214265 () Bool)

(assert (=> b!1789747 m!2214265))

(assert (=> b!1789747 m!2213647))

(assert (=> b!1789747 m!2214265))

(assert (=> b!1789747 m!2213647))

(declare-fun m!2214267 () Bool)

(assert (=> b!1789747 m!2214267))

(assert (=> b!1789746 m!2213647))

(assert (=> b!1789746 m!2213647))

(assert (=> b!1789746 m!2213919))

(assert (=> b!1789753 m!2213647))

(assert (=> b!1789753 m!2213647))

(assert (=> b!1789753 m!2213919))

(assert (=> b!1789744 m!2213641))

(assert (=> b!1788899 d!546122))

(declare-fun d!546124 () Bool)

(assert (=> d!546124 (matchR!2340 (rulesRegex!895 thiss!24550 rules!3447) (list!8025 (charsOf!2188 token!523)))))

(declare-fun lt!697823 () Unit!34147)

(assert (=> d!546124 (= lt!697823 (choose!11334 thiss!24550 rules!3447 lt!697446 token!523 rule!422 Nil!19728))))

(assert (=> d!546124 (not (isEmpty!12470 rules!3447))))

(assert (=> d!546124 (= (lemmaMaxPrefixThenMatchesRulesRegex!246 thiss!24550 rules!3447 lt!697446 token!523 rule!422 Nil!19728) lt!697823)))

(declare-fun bs!405594 () Bool)

(assert (= bs!405594 d!546124))

(assert (=> bs!405594 m!2213263))

(declare-fun m!2214269 () Bool)

(assert (=> bs!405594 m!2214269))

(declare-fun m!2214271 () Bool)

(assert (=> bs!405594 m!2214271))

(assert (=> bs!405594 m!2213263))

(assert (=> bs!405594 m!2213239))

(assert (=> bs!405594 m!2213239))

(assert (=> bs!405594 m!2214269))

(declare-fun m!2214273 () Bool)

(assert (=> bs!405594 m!2214273))

(assert (=> bs!405594 m!2213137))

(assert (=> b!1788899 d!546124))

(declare-fun d!546126 () Bool)

(declare-fun c!290995 () Bool)

(assert (=> d!546126 (= c!290995 ((_ is Node!6563) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))))

(declare-fun e!1145486 () Bool)

(assert (=> d!546126 (= (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))) e!1145486)))

(declare-fun b!1789757 () Bool)

(assert (=> b!1789757 (= e!1145486 (inv!25708 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))))

(declare-fun b!1789758 () Bool)

(declare-fun e!1145487 () Bool)

(assert (=> b!1789758 (= e!1145486 e!1145487)))

(declare-fun res!807331 () Bool)

(assert (=> b!1789758 (= res!807331 (not ((_ is Leaf!9553) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))))))

(assert (=> b!1789758 (=> res!807331 e!1145487)))

(declare-fun b!1789759 () Bool)

(assert (=> b!1789759 (= e!1145487 (inv!25709 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))))))

(assert (= (and d!546126 c!290995) b!1789757))

(assert (= (and d!546126 (not c!290995)) b!1789758))

(assert (= (and b!1789758 (not res!807331)) b!1789759))

(declare-fun m!2214275 () Bool)

(assert (=> b!1789757 m!2214275))

(declare-fun m!2214277 () Bool)

(assert (=> b!1789759 m!2214277))

(assert (=> b!1788954 d!546126))

(declare-fun b!1789761 () Bool)

(declare-fun res!807335 () Bool)

(declare-fun e!1145490 () Bool)

(assert (=> b!1789761 (=> (not res!807335) (not e!1145490))))

(assert (=> b!1789761 (= res!807335 (= (head!4196 lt!697446) (head!4196 lt!697446)))))

(declare-fun b!1789763 () Bool)

(declare-fun e!1145489 () Bool)

(assert (=> b!1789763 (= e!1145489 (>= (size!15674 lt!697446) (size!15674 lt!697446)))))

(declare-fun b!1789760 () Bool)

(declare-fun e!1145488 () Bool)

(assert (=> b!1789760 (= e!1145488 e!1145490)))

(declare-fun res!807333 () Bool)

(assert (=> b!1789760 (=> (not res!807333) (not e!1145490))))

(assert (=> b!1789760 (= res!807333 (not ((_ is Nil!19728) lt!697446)))))

(declare-fun b!1789762 () Bool)

(assert (=> b!1789762 (= e!1145490 (isPrefix!1779 (tail!2677 lt!697446) (tail!2677 lt!697446)))))

(declare-fun d!546128 () Bool)

(assert (=> d!546128 e!1145489))

(declare-fun res!807334 () Bool)

(assert (=> d!546128 (=> res!807334 e!1145489)))

(declare-fun lt!697824 () Bool)

(assert (=> d!546128 (= res!807334 (not lt!697824))))

(assert (=> d!546128 (= lt!697824 e!1145488)))

(declare-fun res!807332 () Bool)

(assert (=> d!546128 (=> res!807332 e!1145488)))

(assert (=> d!546128 (= res!807332 ((_ is Nil!19728) lt!697446))))

(assert (=> d!546128 (= (isPrefix!1779 lt!697446 lt!697446) lt!697824)))

(assert (= (and d!546128 (not res!807332)) b!1789760))

(assert (= (and b!1789760 res!807333) b!1789761))

(assert (= (and b!1789761 res!807335) b!1789762))

(assert (= (and d!546128 (not res!807334)) b!1789763))

(assert (=> b!1789761 m!2213641))

(assert (=> b!1789761 m!2213641))

(assert (=> b!1789763 m!2213565))

(assert (=> b!1789763 m!2213565))

(assert (=> b!1789762 m!2213647))

(assert (=> b!1789762 m!2213647))

(assert (=> b!1789762 m!2213647))

(assert (=> b!1789762 m!2213647))

(declare-fun m!2214279 () Bool)

(assert (=> b!1789762 m!2214279))

(assert (=> b!1788921 d!546128))

(declare-fun d!546130 () Bool)

(declare-fun lt!697825 () Int)

(assert (=> d!546130 (= lt!697825 (size!15674 (list!8025 lt!697414)))))

(assert (=> d!546130 (= lt!697825 (size!15676 (c!290841 lt!697414)))))

(assert (=> d!546130 (= (size!15673 lt!697414) lt!697825)))

(declare-fun bs!405595 () Bool)

(assert (= bs!405595 d!546130))

(assert (=> bs!405595 m!2213199))

(assert (=> bs!405595 m!2213199))

(declare-fun m!2214281 () Bool)

(assert (=> bs!405595 m!2214281))

(declare-fun m!2214283 () Bool)

(assert (=> bs!405595 m!2214283))

(assert (=> b!1788922 d!546130))

(declare-fun b!1789770 () Bool)

(declare-fun e!1145495 () Bool)

(assert (=> b!1789770 (= e!1145495 true)))

(declare-fun d!546132 () Bool)

(assert (=> d!546132 e!1145495))

(assert (= d!546132 b!1789770))

(declare-fun lambda!70858 () Int)

(declare-fun order!12827 () Int)

(declare-fun dynLambda!9765 (Int Int) Int)

(assert (=> b!1789770 (< (dynLambda!9759 order!12819 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9765 order!12827 lambda!70858))))

(assert (=> b!1789770 (< (dynLambda!9761 order!12823 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) (dynLambda!9765 order!12827 lambda!70858))))

(assert (=> d!546132 (= (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425)))))))

(declare-fun lt!697828 () Unit!34147)

(declare-fun Forall2of!161 (Int BalanceConc!13070 BalanceConc!13070) Unit!34147)

(assert (=> d!546132 (= lt!697828 (Forall2of!161 lambda!70858 lt!697414 (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425)))))))

(assert (=> d!546132 (= (list!8025 lt!697414) (list!8025 (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425)))))))

(assert (=> d!546132 (= (lemmaEqSameImage!450 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414 (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425)))) lt!697828)))

(declare-fun b_lambda!58813 () Bool)

(assert (=> (not b_lambda!58813) (not d!546132)))

(assert (=> d!546132 t!167427))

(declare-fun b_and!138039 () Bool)

(assert (= b_and!138017 (and (=> t!167427 result!131204) b_and!138039)))

(assert (=> d!546132 t!167429))

(declare-fun b_and!138041 () Bool)

(assert (= b_and!138019 (and (=> t!167429 result!131208) b_and!138041)))

(assert (=> d!546132 t!167431))

(declare-fun b_and!138043 () Bool)

(assert (= b_and!138021 (and (=> t!167431 result!131210) b_and!138043)))

(declare-fun b_lambda!58815 () Bool)

(assert (=> (not b_lambda!58815) (not d!546132)))

(declare-fun tb!109087 () Bool)

(declare-fun t!167478 () Bool)

(assert (=> (and b!1788918 (= (toValue!5066 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167478) tb!109087))

(declare-fun result!131262 () Bool)

(assert (=> tb!109087 (= result!131262 (inv!21 (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425))))))))

(declare-fun m!2214285 () Bool)

(assert (=> tb!109087 m!2214285))

(assert (=> d!546132 t!167478))

(declare-fun b_and!138045 () Bool)

(assert (= b_and!138039 (and (=> t!167478 result!131262) b_and!138045)))

(declare-fun tb!109089 () Bool)

(declare-fun t!167480 () Bool)

(assert (=> (and b!1788909 (= (toValue!5066 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167480) tb!109089))

(declare-fun result!131264 () Bool)

(assert (= result!131264 result!131262))

(assert (=> d!546132 t!167480))

(declare-fun b_and!138047 () Bool)

(assert (= b_and!138041 (and (=> t!167480 result!131264) b_and!138047)))

(declare-fun t!167482 () Bool)

(declare-fun tb!109091 () Bool)

(assert (=> (and b!1788916 (= (toValue!5066 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167482) tb!109091))

(declare-fun result!131266 () Bool)

(assert (= result!131266 result!131262))

(assert (=> d!546132 t!167482))

(declare-fun b_and!138049 () Bool)

(assert (= b_and!138043 (and (=> t!167482 result!131266) b_and!138049)))

(assert (=> d!546132 m!2213243))

(declare-fun m!2214287 () Bool)

(assert (=> d!546132 m!2214287))

(assert (=> d!546132 m!2213163))

(assert (=> d!546132 m!2213243))

(declare-fun m!2214289 () Bool)

(assert (=> d!546132 m!2214289))

(assert (=> d!546132 m!2213199))

(assert (=> d!546132 m!2213243))

(declare-fun m!2214291 () Bool)

(assert (=> d!546132 m!2214291))

(assert (=> b!1788922 d!546132))

(declare-fun d!546134 () Bool)

(assert (=> d!546134 (= (apply!5339 (transformation!3539 (rule!5635 (_1!11057 lt!697425))) lt!697414) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))

(declare-fun b_lambda!58817 () Bool)

(assert (=> (not b_lambda!58817) (not d!546134)))

(assert (=> d!546134 t!167427))

(declare-fun b_and!138051 () Bool)

(assert (= b_and!138045 (and (=> t!167427 result!131204) b_and!138051)))

(assert (=> d!546134 t!167429))

(declare-fun b_and!138053 () Bool)

(assert (= b_and!138047 (and (=> t!167429 result!131208) b_and!138053)))

(assert (=> d!546134 t!167431))

(declare-fun b_and!138055 () Bool)

(assert (= b_and!138049 (and (=> t!167431 result!131210) b_and!138055)))

(assert (=> d!546134 m!2213163))

(assert (=> b!1788922 d!546134))

(declare-fun d!546136 () Bool)

(assert (=> d!546136 (= (seqFromList!2508 (originalCharacters!4353 (_1!11057 lt!697425))) (fromListB!1150 (originalCharacters!4353 (_1!11057 lt!697425))))))

(declare-fun bs!405596 () Bool)

(assert (= bs!405596 d!546136))

(declare-fun m!2214293 () Bool)

(assert (=> bs!405596 m!2214293))

(assert (=> b!1788922 d!546136))

(declare-fun d!546138 () Bool)

(assert (=> d!546138 (= (size!15672 (_1!11057 lt!697425)) (size!15674 (originalCharacters!4353 (_1!11057 lt!697425))))))

(declare-fun Unit!34162 () Unit!34147)

(assert (=> d!546138 (= (lemmaCharactersSize!597 (_1!11057 lt!697425)) Unit!34162)))

(declare-fun bs!405597 () Bool)

(assert (= bs!405597 d!546138))

(declare-fun m!2214295 () Bool)

(assert (=> bs!405597 m!2214295))

(assert (=> b!1788922 d!546138))

(declare-fun d!546140 () Bool)

(assert (=> d!546140 (= (inv!25697 (tag!3945 (rule!5635 token!523))) (= (mod (str.len (value!110533 (tag!3945 (rule!5635 token!523)))) 2) 0))))

(assert (=> b!1788901 d!546140))

(declare-fun d!546142 () Bool)

(declare-fun res!807338 () Bool)

(declare-fun e!1145497 () Bool)

(assert (=> d!546142 (=> (not res!807338) (not e!1145497))))

(assert (=> d!546142 (= res!807338 (semiInverseModEq!1416 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 token!523)))))))

(assert (=> d!546142 (= (inv!25702 (transformation!3539 (rule!5635 token!523))) e!1145497)))

(declare-fun b!1789771 () Bool)

(assert (=> b!1789771 (= e!1145497 (equivClasses!1357 (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 token!523)))))))

(assert (= (and d!546142 res!807338) b!1789771))

(declare-fun m!2214297 () Bool)

(assert (=> d!546142 m!2214297))

(declare-fun m!2214299 () Bool)

(assert (=> b!1789771 m!2214299))

(assert (=> b!1788901 d!546142))

(declare-fun b!1789782 () Bool)

(declare-fun b_free!49775 () Bool)

(declare-fun b_next!50479 () Bool)

(assert (=> b!1789782 (= b_free!49775 (not b_next!50479))))

(declare-fun tb!109093 () Bool)

(declare-fun t!167484 () Bool)

(assert (=> (and b!1789782 (= (toValue!5066 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167484) tb!109093))

(declare-fun result!131270 () Bool)

(assert (= result!131270 result!131204))

(assert (=> d!546134 t!167484))

(assert (=> d!545994 t!167484))

(declare-fun tb!109095 () Bool)

(declare-fun t!167486 () Bool)

(assert (=> (and b!1789782 (= (toValue!5066 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167486) tb!109095))

(declare-fun result!131272 () Bool)

(assert (= result!131272 result!131262))

(assert (=> d!546132 t!167486))

(assert (=> d!546132 t!167484))

(declare-fun t!167488 () Bool)

(declare-fun tb!109097 () Bool)

(assert (=> (and b!1789782 (= (toValue!5066 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167488) tb!109097))

(declare-fun result!131274 () Bool)

(assert (= result!131274 result!131236))

(assert (=> d!546002 t!167488))

(assert (=> b!1788933 t!167484))

(declare-fun tp!505863 () Bool)

(declare-fun b_and!138057 () Bool)

(assert (=> b!1789782 (= tp!505863 (and (=> t!167484 result!131270) (=> t!167488 result!131274) (=> t!167486 result!131272) b_and!138057))))

(declare-fun b_free!49777 () Bool)

(declare-fun b_next!50481 () Bool)

(assert (=> b!1789782 (= b_free!49777 (not b_next!50481))))

(declare-fun t!167490 () Bool)

(declare-fun tb!109099 () Bool)

(assert (=> (and b!1789782 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167490) tb!109099))

(declare-fun result!131276 () Bool)

(assert (= result!131276 result!131190))

(assert (=> b!1788925 t!167490))

(declare-fun tb!109101 () Bool)

(declare-fun t!167492 () Bool)

(assert (=> (and b!1789782 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425))))) t!167492) tb!109101))

(declare-fun result!131278 () Bool)

(assert (= result!131278 result!131198))

(assert (=> b!1788933 t!167492))

(assert (=> d!545920 t!167490))

(assert (=> d!545994 t!167492))

(declare-fun t!167494 () Bool)

(declare-fun tb!109103 () Bool)

(assert (=> (and b!1789782 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 token!523)))) t!167494) tb!109103))

(declare-fun result!131280 () Bool)

(assert (= result!131280 result!131224))

(assert (=> b!1789652 t!167494))

(assert (=> d!545912 t!167494))

(declare-fun tp!505865 () Bool)

(declare-fun b_and!138059 () Bool)

(assert (=> b!1789782 (= tp!505865 (and (=> t!167492 result!131278) (=> t!167490 result!131276) (=> t!167494 result!131280) b_and!138059))))

(declare-fun e!1145509 () Bool)

(assert (=> b!1789782 (= e!1145509 (and tp!505863 tp!505865))))

(declare-fun e!1145507 () Bool)

(declare-fun b!1789781 () Bool)

(declare-fun tp!505864 () Bool)

(assert (=> b!1789781 (= e!1145507 (and tp!505864 (inv!25697 (tag!3945 (h!25130 (t!167434 rules!3447)))) (inv!25702 (transformation!3539 (h!25130 (t!167434 rules!3447)))) e!1145509))))

(declare-fun b!1789780 () Bool)

(declare-fun e!1145508 () Bool)

(declare-fun tp!505862 () Bool)

(assert (=> b!1789780 (= e!1145508 (and e!1145507 tp!505862))))

(assert (=> b!1788923 (= tp!505788 e!1145508)))

(assert (= b!1789781 b!1789782))

(assert (= b!1789780 b!1789781))

(assert (= (and b!1788923 ((_ is Cons!19729) (t!167434 rules!3447))) b!1789780))

(declare-fun m!2214301 () Bool)

(assert (=> b!1789781 m!2214301))

(declare-fun m!2214303 () Bool)

(assert (=> b!1789781 m!2214303))

(declare-fun b!1789787 () Bool)

(declare-fun e!1145512 () Bool)

(declare-fun tp!505868 () Bool)

(assert (=> b!1789787 (= e!1145512 (and tp_is_empty!7977 tp!505868))))

(assert (=> b!1788903 (= tp!505791 e!1145512)))

(assert (= (and b!1788903 ((_ is Cons!19728) (t!167433 suffix!1421))) b!1789787))

(declare-fun tp!505877 () Bool)

(declare-fun b!1789796 () Bool)

(declare-fun e!1145518 () Bool)

(declare-fun tp!505876 () Bool)

(assert (=> b!1789796 (= e!1145518 (and (inv!25704 (left!15822 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))) tp!505876 (inv!25704 (right!16152 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))) tp!505877))))

(declare-fun b!1789798 () Bool)

(declare-fun e!1145517 () Bool)

(declare-fun tp!505875 () Bool)

(assert (=> b!1789798 (= e!1145517 tp!505875)))

(declare-fun b!1789797 () Bool)

(declare-fun inv!25711 (IArray!13131) Bool)

(assert (=> b!1789797 (= e!1145518 (and (inv!25711 (xs!9439 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))) e!1145517))))

(assert (=> b!1788953 (= tp!505797 (and (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425))))) e!1145518))))

(assert (= (and b!1788953 ((_ is Node!6563) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))) b!1789796))

(assert (= b!1789797 b!1789798))

(assert (= (and b!1788953 ((_ is Leaf!9553) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (value!110534 (_1!11057 lt!697425)))))) b!1789797))

(declare-fun m!2214305 () Bool)

(assert (=> b!1789796 m!2214305))

(declare-fun m!2214307 () Bool)

(assert (=> b!1789796 m!2214307))

(declare-fun m!2214309 () Bool)

(assert (=> b!1789797 m!2214309))

(assert (=> b!1788953 m!2213079))

(declare-fun b!1789799 () Bool)

(declare-fun e!1145519 () Bool)

(declare-fun tp!505878 () Bool)

(assert (=> b!1789799 (= e!1145519 (and tp_is_empty!7977 tp!505878))))

(assert (=> b!1788910 (= tp!505785 e!1145519)))

(assert (= (and b!1788910 ((_ is Cons!19728) (originalCharacters!4353 token!523))) b!1789799))

(declare-fun b!1789800 () Bool)

(declare-fun e!1145521 () Bool)

(declare-fun tp!505881 () Bool)

(declare-fun tp!505880 () Bool)

(assert (=> b!1789800 (= e!1145521 (and (inv!25704 (left!15822 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))) tp!505880 (inv!25704 (right!16152 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))) tp!505881))))

(declare-fun b!1789802 () Bool)

(declare-fun e!1145520 () Bool)

(declare-fun tp!505879 () Bool)

(assert (=> b!1789802 (= e!1145520 tp!505879)))

(declare-fun b!1789801 () Bool)

(assert (=> b!1789801 (= e!1145521 (and (inv!25711 (xs!9439 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))) e!1145520))))

(assert (=> b!1788954 (= tp!505798 (and (inv!25704 (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414)))) e!1145521))))

(assert (= (and b!1788954 ((_ is Node!6563) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))) b!1789800))

(assert (= b!1789801 b!1789802))

(assert (= (and b!1788954 ((_ is Leaf!9553) (c!290841 (dynLambda!9762 (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) (dynLambda!9763 (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))) lt!697414))))) b!1789801))

(declare-fun m!2214311 () Bool)

(assert (=> b!1789800 m!2214311))

(declare-fun m!2214313 () Bool)

(assert (=> b!1789800 m!2214313))

(declare-fun m!2214315 () Bool)

(assert (=> b!1789801 m!2214315))

(assert (=> b!1788954 m!2213083))

(declare-fun b!1789813 () Bool)

(declare-fun e!1145524 () Bool)

(assert (=> b!1789813 (= e!1145524 tp_is_empty!7977)))

(assert (=> b!1788905 (= tp!505787 e!1145524)))

(declare-fun b!1789814 () Bool)

(declare-fun tp!505893 () Bool)

(declare-fun tp!505892 () Bool)

(assert (=> b!1789814 (= e!1145524 (and tp!505893 tp!505892))))

(declare-fun b!1789815 () Bool)

(declare-fun tp!505894 () Bool)

(assert (=> b!1789815 (= e!1145524 tp!505894)))

(declare-fun b!1789816 () Bool)

(declare-fun tp!505896 () Bool)

(declare-fun tp!505895 () Bool)

(assert (=> b!1789816 (= e!1145524 (and tp!505896 tp!505895))))

(assert (= (and b!1788905 ((_ is ElementMatch!4867) (regex!3539 (h!25130 rules!3447)))) b!1789813))

(assert (= (and b!1788905 ((_ is Concat!8497) (regex!3539 (h!25130 rules!3447)))) b!1789814))

(assert (= (and b!1788905 ((_ is Star!4867) (regex!3539 (h!25130 rules!3447)))) b!1789815))

(assert (= (and b!1788905 ((_ is Union!4867) (regex!3539 (h!25130 rules!3447)))) b!1789816))

(declare-fun b!1789817 () Bool)

(declare-fun e!1145525 () Bool)

(assert (=> b!1789817 (= e!1145525 tp_is_empty!7977)))

(assert (=> b!1788901 (= tp!505789 e!1145525)))

(declare-fun b!1789818 () Bool)

(declare-fun tp!505898 () Bool)

(declare-fun tp!505897 () Bool)

(assert (=> b!1789818 (= e!1145525 (and tp!505898 tp!505897))))

(declare-fun b!1789819 () Bool)

(declare-fun tp!505899 () Bool)

(assert (=> b!1789819 (= e!1145525 tp!505899)))

(declare-fun b!1789820 () Bool)

(declare-fun tp!505901 () Bool)

(declare-fun tp!505900 () Bool)

(assert (=> b!1789820 (= e!1145525 (and tp!505901 tp!505900))))

(assert (= (and b!1788901 ((_ is ElementMatch!4867) (regex!3539 (rule!5635 token!523)))) b!1789817))

(assert (= (and b!1788901 ((_ is Concat!8497) (regex!3539 (rule!5635 token!523)))) b!1789818))

(assert (= (and b!1788901 ((_ is Star!4867) (regex!3539 (rule!5635 token!523)))) b!1789819))

(assert (= (and b!1788901 ((_ is Union!4867) (regex!3539 (rule!5635 token!523)))) b!1789820))

(declare-fun b!1789821 () Bool)

(declare-fun e!1145526 () Bool)

(assert (=> b!1789821 (= e!1145526 tp_is_empty!7977)))

(assert (=> b!1788917 (= tp!505786 e!1145526)))

(declare-fun b!1789822 () Bool)

(declare-fun tp!505903 () Bool)

(declare-fun tp!505902 () Bool)

(assert (=> b!1789822 (= e!1145526 (and tp!505903 tp!505902))))

(declare-fun b!1789823 () Bool)

(declare-fun tp!505904 () Bool)

(assert (=> b!1789823 (= e!1145526 tp!505904)))

(declare-fun b!1789824 () Bool)

(declare-fun tp!505906 () Bool)

(declare-fun tp!505905 () Bool)

(assert (=> b!1789824 (= e!1145526 (and tp!505906 tp!505905))))

(assert (= (and b!1788917 ((_ is ElementMatch!4867) (regex!3539 rule!422))) b!1789821))

(assert (= (and b!1788917 ((_ is Concat!8497) (regex!3539 rule!422))) b!1789822))

(assert (= (and b!1788917 ((_ is Star!4867) (regex!3539 rule!422))) b!1789823))

(assert (= (and b!1788917 ((_ is Union!4867) (regex!3539 rule!422))) b!1789824))

(declare-fun b_lambda!58819 () Bool)

(assert (= b_lambda!58781 (or (and b!1788918 b_free!49761 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) (and b!1788909 b_free!49765 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) (and b!1788916 b_free!49769) (and b!1789782 b_free!49777 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) b_lambda!58819)))

(declare-fun b_lambda!58821 () Bool)

(assert (= b_lambda!58767 (or (and b!1788918 b_free!49761 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788909 b_free!49765 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788916 b_free!49769 (= (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1789782 b_free!49777 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) b_lambda!58821)))

(declare-fun b_lambda!58823 () Bool)

(assert (= b_lambda!58769 (or (and b!1788918 b_free!49761 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788909 b_free!49765 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788916 b_free!49769 (= (toChars!4925 (transformation!3539 (rule!5635 token!523))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1789782 b_free!49777 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) b_lambda!58823)))

(declare-fun b_lambda!58825 () Bool)

(assert (= b_lambda!58801 (or (and b!1788918 b_free!49761 (= (toChars!4925 (transformation!3539 rule!422)) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) (and b!1788909 b_free!49765 (= (toChars!4925 (transformation!3539 (h!25130 rules!3447))) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) (and b!1788916 b_free!49769) (and b!1789782 b_free!49777 (= (toChars!4925 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toChars!4925 (transformation!3539 (rule!5635 token!523))))) b_lambda!58825)))

(declare-fun b_lambda!58827 () Bool)

(assert (= b_lambda!58771 (or (and b!1788918 b_free!49759 (= (toValue!5066 (transformation!3539 rule!422)) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788909 b_free!49763 (= (toValue!5066 (transformation!3539 (h!25130 rules!3447))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1788916 b_free!49767 (= (toValue!5066 (transformation!3539 (rule!5635 token!523))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) (and b!1789782 b_free!49775 (= (toValue!5066 (transformation!3539 (h!25130 (t!167434 rules!3447)))) (toValue!5066 (transformation!3539 (rule!5635 (_1!11057 lt!697425)))))) b_lambda!58827)))

(check-sat (not b!1789797) b_and!138031 (not d!545916) (not d!546074) (not d!546064) (not b_lambda!58821) (not d!545846) (not b_lambda!58797) (not b!1789747) (not bm!111413) (not b!1789703) (not d!545984) b_and!138053 (not b_lambda!58819) (not bm!111418) (not b!1789819) (not b!1789379) (not b_lambda!58823) (not b!1789372) (not d!545934) (not d!546082) (not b!1789573) (not b!1789500) (not b!1789331) (not b!1789802) (not d!546090) (not b!1789343) (not b!1789271) (not b!1789165) (not d!546008) (not b!1789269) (not d!545918) (not bm!111419) (not d!546130) (not d!546116) (not b!1789781) (not b!1789732) (not d!546142) (not b!1789275) (not tb!109087) (not b!1789571) (not d!546102) (not b!1789359) (not b!1789270) (not b!1789742) (not bm!111428) (not d!545990) (not b_lambda!58817) (not d!546052) (not b_next!50469) (not b!1789473) (not b!1789725) (not d!545942) (not b!1789203) (not b!1789771) (not b!1789267) (not d!545988) (not b!1789729) (not b!1789185) (not b!1789602) (not b!1789360) (not b!1789759) (not b!1789566) (not d!545866) (not d!545946) (not bm!111414) (not b!1788954) (not b!1789712) (not d!545994) (not b!1789796) (not tb!109069) (not b!1789737) (not b!1789296) (not b!1789780) (not d!545892) (not d!546086) (not d!546122) (not b!1789704) (not b!1789288) (not d!546106) (not b!1789508) (not b!1789693) tp_is_empty!7977 (not d!546124) (not d!545828) (not d!546132) (not b!1789475) (not b!1789493) (not b!1789201) (not d!546004) (not b!1789358) (not b!1789818) (not b!1789194) (not b!1789382) (not b_lambda!58815) (not b!1789745) (not b!1789515) (not b!1789380) (not b_next!50479) (not d!545880) (not d!545882) (not d!546094) (not b!1789273) (not b!1789482) (not b!1789744) (not b!1789814) (not b!1789378) (not b!1789149) (not b!1789572) (not b!1789733) (not d!546070) (not b!1789302) (not d!546104) (not b!1789723) (not b!1789287) (not b_next!50471) (not d!545932) (not b!1789192) (not b!1789728) (not b!1789706) (not b!1789272) (not b_next!50481) (not b!1789800) (not b!1789570) (not b!1789276) (not b!1789373) (not b!1789567) (not d!546072) (not b!1789141) (not d!545856) (not b!1789195) (not b!1789139) (not d!546114) (not b!1789298) (not b!1789332) (not b!1789314) (not b!1789301) (not b!1789138) (not b!1789823) (not b!1789569) (not d!546000) (not d!546138) (not d!546076) (not b!1789478) (not d!545884) (not b!1789184) (not tb!109057) (not b!1789300) (not b_lambda!58827) (not b_lambda!58825) (not d!546028) (not b!1789316) (not b!1789820) (not d!545948) (not b!1789383) (not d!545920) (not b!1789289) (not d!545910) (not b!1789344) (not b_next!50465) (not b_lambda!58783) (not b!1789565) (not b!1789147) (not d!545998) (not d!546068) (not b!1789761) (not b!1789739) (not d!546120) (not b_lambda!58813) (not b!1789801) (not b!1789799) (not b!1789652) (not b!1789492) (not b!1789787) (not b!1789274) (not b!1789736) (not b!1789707) (not b!1789653) (not b!1789738) (not b!1789315) (not b!1789377) (not bm!111429) b_and!138055 (not b!1789381) (not b!1789183) (not b!1789330) (not b!1789711) (not b!1789502) (not d!545822) (not b!1789474) (not b!1789730) (not d!545912) (not b!1789716) b_and!138051 (not b!1788953) (not d!545874) (not d!546080) (not b!1789717) (not b!1789815) (not b!1789714) (not b!1789798) (not b_lambda!58795) (not b!1789753) (not b!1789715) (not b!1789746) b_and!138029 (not d!546098) (not b!1789163) (not b!1789375) (not d!545996) (not d!545944) (not b!1789824) (not d!545928) (not d!546136) (not b!1789755) (not b!1789285) (not bm!111424) (not b!1789494) (not b!1789822) (not b_next!50473) (not d!545926) (not b!1789283) (not b!1789140) (not b!1789763) (not b_lambda!58793) (not b!1789193) (not b_next!50463) (not d!545992) (not b!1789697) (not b!1789483) (not d!545936) (not b!1789092) (not b!1789491) (not d!546096) (not b_next!50467) (not b!1789757) (not d!546060) (not d!546110) (not b!1789479) (not b!1789480) b_and!138033 b_and!138057 (not d!545894) (not b!1789290) (not b!1789762) (not b!1789816) b_and!138059 (not b!1789221) (not bm!111420))
(check-sat (not b_next!50469) (not b_next!50479) (not b_next!50471) (not b_next!50481) (not b_next!50465) b_and!138055 b_and!138051 b_and!138029 (not b_next!50467) b_and!138031 b_and!138053 (not b_next!50473) (not b_next!50463) b_and!138033 b_and!138057 b_and!138059)
