; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341514 () Bool)

(assert start!341514)

(declare-fun b!3651592 () Bool)

(declare-fun b_free!96049 () Bool)

(declare-fun b_next!96753 () Bool)

(assert (=> b!3651592 (= b_free!96049 (not b_next!96753))))

(declare-fun tp!1113099 () Bool)

(declare-fun b_and!270171 () Bool)

(assert (=> b!3651592 (= tp!1113099 b_and!270171)))

(declare-fun b_free!96051 () Bool)

(declare-fun b_next!96755 () Bool)

(assert (=> b!3651592 (= b_free!96051 (not b_next!96755))))

(declare-fun tp!1113089 () Bool)

(declare-fun b_and!270173 () Bool)

(assert (=> b!3651592 (= tp!1113089 b_and!270173)))

(declare-fun b!3651597 () Bool)

(declare-fun b_free!96053 () Bool)

(declare-fun b_next!96757 () Bool)

(assert (=> b!3651597 (= b_free!96053 (not b_next!96757))))

(declare-fun tp!1113101 () Bool)

(declare-fun b_and!270175 () Bool)

(assert (=> b!3651597 (= tp!1113101 b_and!270175)))

(declare-fun b_free!96055 () Bool)

(declare-fun b_next!96759 () Bool)

(assert (=> b!3651597 (= b_free!96055 (not b_next!96759))))

(declare-fun tp!1113090 () Bool)

(declare-fun b_and!270177 () Bool)

(assert (=> b!3651597 (= tp!1113090 b_and!270177)))

(declare-fun b!3651589 () Bool)

(declare-fun b_free!96057 () Bool)

(declare-fun b_next!96761 () Bool)

(assert (=> b!3651589 (= b_free!96057 (not b_next!96761))))

(declare-fun tp!1113097 () Bool)

(declare-fun b_and!270179 () Bool)

(assert (=> b!3651589 (= tp!1113097 b_and!270179)))

(declare-fun b_free!96059 () Bool)

(declare-fun b_next!96763 () Bool)

(assert (=> b!3651589 (= b_free!96059 (not b_next!96763))))

(declare-fun tp!1113092 () Bool)

(declare-fun b_and!270181 () Bool)

(assert (=> b!3651589 (= tp!1113092 b_and!270181)))

(declare-fun b!3651584 () Bool)

(declare-fun b_free!96061 () Bool)

(declare-fun b_next!96765 () Bool)

(assert (=> b!3651584 (= b_free!96061 (not b_next!96765))))

(declare-fun tp!1113102 () Bool)

(declare-fun b_and!270183 () Bool)

(assert (=> b!3651584 (= tp!1113102 b_and!270183)))

(declare-fun b_free!96063 () Bool)

(declare-fun b_next!96767 () Bool)

(assert (=> b!3651584 (= b_free!96063 (not b_next!96767))))

(declare-fun tp!1113095 () Bool)

(declare-fun b_and!270185 () Bool)

(assert (=> b!3651584 (= tp!1113095 b_and!270185)))

(declare-fun b!3651558 () Bool)

(declare-fun e!2260756 () Bool)

(declare-fun e!2260773 () Bool)

(assert (=> b!3651558 (= e!2260756 e!2260773)))

(declare-fun res!1481492 () Bool)

(assert (=> b!3651558 (=> res!1481492 e!2260773)))

(declare-datatypes ((C!21236 0))(
  ( (C!21237 (val!12666 Int)) )
))
(declare-datatypes ((List!38629 0))(
  ( (Nil!38505) (Cons!38505 (h!43925 C!21236) (t!297612 List!38629)) )
))
(declare-fun lt!1266899 () List!38629)

(declare-fun lt!1266900 () List!38629)

(declare-fun isPrefix!3129 (List!38629 List!38629) Bool)

(assert (=> b!3651558 (= res!1481492 (not (isPrefix!3129 lt!1266899 lt!1266900)))))

(declare-datatypes ((List!38630 0))(
  ( (Nil!38506) (Cons!38506 (h!43926 (_ BitVec 16)) (t!297613 List!38630)) )
))
(declare-datatypes ((TokenValue!5996 0))(
  ( (FloatLiteralValue!11992 (text!42417 List!38630)) (TokenValueExt!5995 (__x!24209 Int)) (Broken!29980 (value!184765 List!38630)) (Object!6119) (End!5996) (Def!5996) (Underscore!5996) (Match!5996) (Else!5996) (Error!5996) (Case!5996) (If!5996) (Extends!5996) (Abstract!5996) (Class!5996) (Val!5996) (DelimiterValue!11992 (del!6056 List!38630)) (KeywordValue!6002 (value!184766 List!38630)) (CommentValue!11992 (value!184767 List!38630)) (WhitespaceValue!11992 (value!184768 List!38630)) (IndentationValue!5996 (value!184769 List!38630)) (String!43313) (Int32!5996) (Broken!29981 (value!184770 List!38630)) (Boolean!5997) (Unit!55511) (OperatorValue!5999 (op!6056 List!38630)) (IdentifierValue!11992 (value!184771 List!38630)) (IdentifierValue!11993 (value!184772 List!38630)) (WhitespaceValue!11993 (value!184773 List!38630)) (True!11992) (False!11992) (Broken!29982 (value!184774 List!38630)) (Broken!29983 (value!184775 List!38630)) (True!11993) (RightBrace!5996) (RightBracket!5996) (Colon!5996) (Null!5996) (Comma!5996) (LeftBracket!5996) (False!11993) (LeftBrace!5996) (ImaginaryLiteralValue!5996 (text!42418 List!38630)) (StringLiteralValue!17988 (value!184776 List!38630)) (EOFValue!5996 (value!184777 List!38630)) (IdentValue!5996 (value!184778 List!38630)) (DelimiterValue!11993 (value!184779 List!38630)) (DedentValue!5996 (value!184780 List!38630)) (NewLineValue!5996 (value!184781 List!38630)) (IntegerValue!17988 (value!184782 (_ BitVec 32)) (text!42419 List!38630)) (IntegerValue!17989 (value!184783 Int) (text!42420 List!38630)) (Times!5996) (Or!5996) (Equal!5996) (Minus!5996) (Broken!29984 (value!184784 List!38630)) (And!5996) (Div!5996) (LessEqual!5996) (Mod!5996) (Concat!16521) (Not!5996) (Plus!5996) (SpaceValue!5996 (value!184785 List!38630)) (IntegerValue!17990 (value!184786 Int) (text!42421 List!38630)) (StringLiteralValue!17989 (text!42422 List!38630)) (FloatLiteralValue!11993 (text!42423 List!38630)) (BytesLiteralValue!5996 (value!184787 List!38630)) (CommentValue!11993 (value!184788 List!38630)) (StringLiteralValue!17990 (value!184789 List!38630)) (ErrorTokenValue!5996 (msg!6057 List!38630)) )
))
(declare-datatypes ((Regex!10525 0))(
  ( (ElementMatch!10525 (c!631148 C!21236)) (Concat!16522 (regOne!21562 Regex!10525) (regTwo!21562 Regex!10525)) (EmptyExpr!10525) (Star!10525 (reg!10854 Regex!10525)) (EmptyLang!10525) (Union!10525 (regOne!21563 Regex!10525) (regTwo!21563 Regex!10525)) )
))
(declare-datatypes ((String!43314 0))(
  ( (String!43315 (value!184790 String)) )
))
(declare-datatypes ((IArray!23539 0))(
  ( (IArray!23540 (innerList!11827 List!38629)) )
))
(declare-datatypes ((Conc!11767 0))(
  ( (Node!11767 (left!30060 Conc!11767) (right!30390 Conc!11767) (csize!23764 Int) (cheight!11978 Int)) (Leaf!18261 (xs!14969 IArray!23539) (csize!23765 Int)) (Empty!11767) )
))
(declare-datatypes ((BalanceConc!23148 0))(
  ( (BalanceConc!23149 (c!631149 Conc!11767)) )
))
(declare-datatypes ((TokenValueInjection!11420 0))(
  ( (TokenValueInjection!11421 (toValue!8058 Int) (toChars!7917 Int)) )
))
(declare-datatypes ((Rule!11332 0))(
  ( (Rule!11333 (regex!5766 Regex!10525) (tag!6532 String!43314) (isSeparator!5766 Bool) (transformation!5766 TokenValueInjection!11420)) )
))
(declare-datatypes ((Token!10898 0))(
  ( (Token!10899 (value!184791 TokenValue!5996) (rule!8566 Rule!11332) (size!29403 Int) (originalCharacters!6480 List!38629)) )
))
(declare-datatypes ((tuple2!38376 0))(
  ( (tuple2!38377 (_1!22322 Token!10898) (_2!22322 List!38629)) )
))
(declare-fun lt!1266926 () tuple2!38376)

(declare-fun ++!9582 (List!38629 List!38629) List!38629)

(assert (=> b!3651558 (isPrefix!3129 lt!1266899 (++!9582 lt!1266899 (_2!22322 lt!1266926)))))

(declare-datatypes ((Unit!55512 0))(
  ( (Unit!55513) )
))
(declare-fun lt!1266902 () Unit!55512)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2048 (List!38629 List!38629) Unit!55512)

(assert (=> b!3651558 (= lt!1266902 (lemmaConcatTwoListThenFirstIsPrefix!2048 lt!1266899 (_2!22322 lt!1266926)))))

(declare-fun lt!1266908 () BalanceConc!23148)

(declare-fun list!14272 (BalanceConc!23148) List!38629)

(assert (=> b!3651558 (= lt!1266899 (list!14272 lt!1266908))))

(declare-fun charsOf!3780 (Token!10898) BalanceConc!23148)

(assert (=> b!3651558 (= lt!1266908 (charsOf!3780 (_1!22322 lt!1266926)))))

(declare-fun e!2260771 () Bool)

(assert (=> b!3651558 e!2260771))

(declare-fun res!1481474 () Bool)

(assert (=> b!3651558 (=> (not res!1481474) (not e!2260771))))

(declare-datatypes ((Option!8160 0))(
  ( (None!8159) (Some!8159 (v!38023 Rule!11332)) )
))
(declare-fun lt!1266907 () Option!8160)

(declare-fun isDefined!6392 (Option!8160) Bool)

(assert (=> b!3651558 (= res!1481474 (isDefined!6392 lt!1266907))))

(declare-datatypes ((List!38631 0))(
  ( (Nil!38507) (Cons!38507 (h!43927 Rule!11332) (t!297614 List!38631)) )
))
(declare-fun rules!3307 () List!38631)

(declare-datatypes ((LexerInterface!5355 0))(
  ( (LexerInterfaceExt!5352 (__x!24210 Int)) (Lexer!5353) )
))
(declare-fun thiss!23823 () LexerInterface!5355)

(declare-fun getRuleFromTag!1370 (LexerInterface!5355 List!38631 String!43314) Option!8160)

(assert (=> b!3651558 (= lt!1266907 (getRuleFromTag!1370 thiss!23823 rules!3307 (tag!6532 (rule!8566 (_1!22322 lt!1266926)))))))

(declare-fun lt!1266904 () Unit!55512)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1370 (LexerInterface!5355 List!38631 List!38629 Token!10898) Unit!55512)

(assert (=> b!3651558 (= lt!1266904 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1370 thiss!23823 rules!3307 lt!1266900 (_1!22322 lt!1266926)))))

(declare-datatypes ((Option!8161 0))(
  ( (None!8160) (Some!8160 (v!38024 tuple2!38376)) )
))
(declare-fun lt!1266920 () Option!8161)

(declare-fun get!12653 (Option!8161) tuple2!38376)

(assert (=> b!3651558 (= lt!1266926 (get!12653 lt!1266920))))

(declare-fun lt!1266896 () List!38629)

(declare-fun suffix!1395 () List!38629)

(declare-fun lt!1266914 () Unit!55512)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1033 (LexerInterface!5355 List!38631 List!38629 List!38629) Unit!55512)

(assert (=> b!3651558 (= lt!1266914 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1033 thiss!23823 rules!3307 lt!1266896 suffix!1395))))

(declare-fun maxPrefix!2889 (LexerInterface!5355 List!38631 List!38629) Option!8161)

(assert (=> b!3651558 (= lt!1266920 (maxPrefix!2889 thiss!23823 rules!3307 lt!1266900))))

(assert (=> b!3651558 (isPrefix!3129 lt!1266896 lt!1266900)))

(declare-fun lt!1266898 () Unit!55512)

(assert (=> b!3651558 (= lt!1266898 (lemmaConcatTwoListThenFirstIsPrefix!2048 lt!1266896 suffix!1395))))

(assert (=> b!3651558 (= lt!1266900 (++!9582 lt!1266896 suffix!1395))))

(declare-fun b!3651559 () Bool)

(declare-fun res!1481479 () Bool)

(assert (=> b!3651559 (=> res!1481479 e!2260773)))

(declare-fun matchR!5094 (Regex!10525 List!38629) Bool)

(assert (=> b!3651559 (= res!1481479 (not (matchR!5094 (regex!5766 (rule!8566 (_1!22322 lt!1266926))) lt!1266899)))))

(declare-fun e!2260758 () Bool)

(declare-fun b!3651560 () Bool)

(declare-fun rule!403 () Rule!11332)

(declare-fun e!2260762 () Bool)

(declare-fun tp!1113098 () Bool)

(declare-fun inv!51954 (String!43314) Bool)

(declare-fun inv!51957 (TokenValueInjection!11420) Bool)

(assert (=> b!3651560 (= e!2260762 (and tp!1113098 (inv!51954 (tag!6532 rule!403)) (inv!51957 (transformation!5766 rule!403)) e!2260758))))

(declare-fun b!3651561 () Bool)

(declare-fun res!1481487 () Bool)

(declare-fun e!2260769 () Bool)

(assert (=> b!3651561 (=> (not res!1481487) (not e!2260769))))

(declare-fun token!511 () Token!10898)

(assert (=> b!3651561 (= res!1481487 (= (rule!8566 token!511) rule!403))))

(declare-fun e!2260777 () Bool)

(declare-fun e!2260755 () Bool)

(declare-fun b!3651562 () Bool)

(declare-fun tp!1113093 () Bool)

(declare-fun inv!21 (TokenValue!5996) Bool)

(assert (=> b!3651562 (= e!2260777 (and (inv!21 (value!184791 token!511)) e!2260755 tp!1113093))))

(declare-fun b!3651563 () Bool)

(declare-fun e!2260775 () Bool)

(declare-fun tp_is_empty!18133 () Bool)

(declare-fun tp!1113096 () Bool)

(assert (=> b!3651563 (= e!2260775 (and tp_is_empty!18133 tp!1113096))))

(declare-fun b!3651564 () Bool)

(declare-fun res!1481475 () Bool)

(declare-fun e!2260764 () Bool)

(assert (=> b!3651564 (=> (not res!1481475) (not e!2260764))))

(declare-fun isEmpty!22820 (List!38631) Bool)

(assert (=> b!3651564 (= res!1481475 (not (isEmpty!22820 rules!3307)))))

(declare-fun b!3651565 () Bool)

(declare-fun e!2260752 () Bool)

(declare-fun e!2260757 () Bool)

(assert (=> b!3651565 (= e!2260752 e!2260757)))

(declare-fun res!1481472 () Bool)

(assert (=> b!3651565 (=> res!1481472 e!2260757)))

(declare-fun lt!1266912 () Option!8161)

(declare-fun lt!1266927 () List!38629)

(assert (=> b!3651565 (= res!1481472 (or (not (= lt!1266927 (_2!22322 lt!1266926))) (not (= lt!1266912 (Some!8160 (tuple2!38377 (_1!22322 lt!1266926) lt!1266927))))))))

(assert (=> b!3651565 (= (_2!22322 lt!1266926) lt!1266927)))

(declare-fun lt!1266928 () Unit!55512)

(declare-fun lemmaSamePrefixThenSameSuffix!1456 (List!38629 List!38629 List!38629 List!38629 List!38629) Unit!55512)

(assert (=> b!3651565 (= lt!1266928 (lemmaSamePrefixThenSameSuffix!1456 lt!1266899 (_2!22322 lt!1266926) lt!1266899 lt!1266927 lt!1266900))))

(declare-fun getSuffix!1682 (List!38629 List!38629) List!38629)

(assert (=> b!3651565 (= lt!1266927 (getSuffix!1682 lt!1266900 lt!1266899))))

(declare-fun lt!1266930 () Int)

(declare-fun lt!1266895 () TokenValue!5996)

(assert (=> b!3651565 (= lt!1266912 (Some!8160 (tuple2!38377 (Token!10899 lt!1266895 (rule!8566 (_1!22322 lt!1266926)) lt!1266930 lt!1266899) (_2!22322 lt!1266926))))))

(declare-fun maxPrefixOneRule!2027 (LexerInterface!5355 Rule!11332 List!38629) Option!8161)

(assert (=> b!3651565 (= lt!1266912 (maxPrefixOneRule!2027 thiss!23823 (rule!8566 (_1!22322 lt!1266926)) lt!1266900))))

(declare-fun size!29404 (List!38629) Int)

(assert (=> b!3651565 (= lt!1266930 (size!29404 lt!1266899))))

(declare-fun apply!9268 (TokenValueInjection!11420 BalanceConc!23148) TokenValue!5996)

(declare-fun seqFromList!4315 (List!38629) BalanceConc!23148)

(assert (=> b!3651565 (= lt!1266895 (apply!9268 (transformation!5766 (rule!8566 (_1!22322 lt!1266926))) (seqFromList!4315 lt!1266899)))))

(declare-fun lt!1266903 () Unit!55512)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1083 (LexerInterface!5355 List!38631 List!38629 List!38629 List!38629 Rule!11332) Unit!55512)

(assert (=> b!3651565 (= lt!1266903 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1083 thiss!23823 rules!3307 lt!1266899 lt!1266900 (_2!22322 lt!1266926) (rule!8566 (_1!22322 lt!1266926))))))

(declare-fun b!3651566 () Bool)

(declare-fun e!2260780 () Unit!55512)

(declare-fun Unit!55514 () Unit!55512)

(assert (=> b!3651566 (= e!2260780 Unit!55514)))

(declare-fun b!3651567 () Bool)

(assert (=> b!3651567 false))

(declare-fun lt!1266916 () Unit!55512)

(declare-fun call!263911 () Unit!55512)

(assert (=> b!3651567 (= lt!1266916 call!263911)))

(declare-fun call!263910 () Bool)

(assert (=> b!3651567 (not call!263910)))

(declare-fun lt!1266919 () C!21236)

(declare-fun lt!1266918 () Unit!55512)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!294 (LexerInterface!5355 List!38631 List!38631 Rule!11332 Rule!11332 C!21236) Unit!55512)

(assert (=> b!3651567 (= lt!1266918 (lemmaSepRuleNotContainsCharContainedInANonSepRule!294 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8566 (_1!22322 lt!1266926)) lt!1266919))))

(declare-fun e!2260765 () Unit!55512)

(declare-fun Unit!55515 () Unit!55512)

(assert (=> b!3651567 (= e!2260765 Unit!55515)))

(declare-fun e!2260766 () Bool)

(declare-fun b!3651568 () Bool)

(declare-fun e!2260759 () Bool)

(declare-fun tp!1113094 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11332)

(assert (=> b!3651568 (= e!2260766 (and tp!1113094 (inv!51954 (tag!6532 anOtherTypeRule!33)) (inv!51957 (transformation!5766 anOtherTypeRule!33)) e!2260759))))

(declare-fun b!3651569 () Bool)

(declare-fun res!1481470 () Bool)

(assert (=> b!3651569 (=> res!1481470 e!2260756)))

(declare-fun lt!1266915 () C!21236)

(declare-fun contains!7597 (List!38629 C!21236) Bool)

(declare-fun usedCharacters!978 (Regex!10525) List!38629)

(assert (=> b!3651569 (= res!1481470 (not (contains!7597 (usedCharacters!978 (regex!5766 anOtherTypeRule!33)) lt!1266915)))))

(declare-fun b!3651570 () Bool)

(declare-fun e!2260772 () Bool)

(declare-fun e!2260751 () Bool)

(assert (=> b!3651570 (= e!2260772 e!2260751)))

(declare-fun res!1481491 () Bool)

(assert (=> b!3651570 (=> res!1481491 e!2260751)))

(assert (=> b!3651570 (= res!1481491 (isSeparator!5766 rule!403))))

(assert (=> b!3651570 (contains!7597 lt!1266899 lt!1266915)))

(declare-fun lt!1266931 () Unit!55512)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!74 (List!38629 List!38629 List!38629 List!38629) Unit!55512)

(assert (=> b!3651570 (= lt!1266931 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!74 lt!1266896 suffix!1395 lt!1266899 lt!1266900))))

(declare-fun b!3651571 () Bool)

(declare-fun e!2260776 () Unit!55512)

(assert (=> b!3651571 (= e!2260776 e!2260765)))

(declare-fun c!631146 () Bool)

(assert (=> b!3651571 (= c!631146 (isSeparator!5766 (rule!8566 (_1!22322 lt!1266926))))))

(declare-fun b!3651572 () Bool)

(declare-fun e!2260779 () Unit!55512)

(assert (=> b!3651572 (= e!2260776 e!2260779)))

(declare-fun c!631144 () Bool)

(assert (=> b!3651572 (= c!631144 (not (isSeparator!5766 (rule!8566 (_1!22322 lt!1266926)))))))

(declare-fun b!3651573 () Bool)

(declare-fun e!2260768 () Bool)

(declare-fun lt!1266917 () Rule!11332)

(assert (=> b!3651573 (= e!2260768 (= (rule!8566 (_1!22322 lt!1266926)) lt!1266917))))

(declare-fun b!3651574 () Bool)

(declare-fun res!1481486 () Bool)

(assert (=> b!3651574 (=> res!1481486 e!2260751)))

(declare-fun contains!7598 (List!38631 Rule!11332) Bool)

(assert (=> b!3651574 (= res!1481486 (not (contains!7598 rules!3307 (rule!8566 (_1!22322 lt!1266926)))))))

(declare-fun b!3651575 () Bool)

(declare-fun e!2260763 () Bool)

(assert (=> b!3651575 (= e!2260769 (not e!2260763))))

(declare-fun res!1481482 () Bool)

(assert (=> b!3651575 (=> res!1481482 e!2260763)))

(assert (=> b!3651575 (= res!1481482 (not (matchR!5094 (regex!5766 rule!403) lt!1266896)))))

(declare-fun ruleValid!2030 (LexerInterface!5355 Rule!11332) Bool)

(assert (=> b!3651575 (ruleValid!2030 thiss!23823 rule!403)))

(declare-fun lt!1266906 () Unit!55512)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1184 (LexerInterface!5355 Rule!11332 List!38631) Unit!55512)

(assert (=> b!3651575 (= lt!1266906 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1184 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3651576 () Bool)

(declare-fun res!1481484 () Bool)

(assert (=> b!3651576 (=> res!1481484 e!2260756)))

(declare-fun sepAndNonSepRulesDisjointChars!1934 (List!38631 List!38631) Bool)

(assert (=> b!3651576 (= res!1481484 (not (sepAndNonSepRulesDisjointChars!1934 rules!3307 rules!3307)))))

(declare-fun b!3651577 () Bool)

(declare-fun res!1481483 () Bool)

(assert (=> b!3651577 (=> (not res!1481483) (not e!2260764))))

(assert (=> b!3651577 (= res!1481483 (not (= (isSeparator!5766 anOtherTypeRule!33) (isSeparator!5766 rule!403))))))

(declare-fun b!3651578 () Bool)

(declare-fun e!2260770 () Bool)

(declare-fun e!2260754 () Bool)

(declare-fun tp!1113088 () Bool)

(assert (=> b!3651578 (= e!2260770 (and e!2260754 tp!1113088))))

(declare-fun bm!263905 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!714 (Regex!10525 List!38629 C!21236) Unit!55512)

(assert (=> bm!263905 (= call!263911 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!714 (regex!5766 (rule!8566 (_1!22322 lt!1266926))) lt!1266899 lt!1266919))))

(declare-fun b!3651579 () Bool)

(declare-fun e!2260761 () Bool)

(assert (=> b!3651579 (= e!2260764 e!2260761)))

(declare-fun res!1481471 () Bool)

(assert (=> b!3651579 (=> (not res!1481471) (not e!2260761))))

(declare-fun lt!1266932 () Option!8161)

(declare-fun isDefined!6393 (Option!8161) Bool)

(assert (=> b!3651579 (= res!1481471 (isDefined!6393 lt!1266932))))

(assert (=> b!3651579 (= lt!1266932 (maxPrefix!2889 thiss!23823 rules!3307 lt!1266896))))

(declare-fun lt!1266922 () BalanceConc!23148)

(assert (=> b!3651579 (= lt!1266896 (list!14272 lt!1266922))))

(assert (=> b!3651579 (= lt!1266922 (charsOf!3780 token!511))))

(declare-fun b!3651580 () Bool)

(assert (=> b!3651580 (= e!2260763 e!2260756)))

(declare-fun res!1481485 () Bool)

(assert (=> b!3651580 (=> res!1481485 e!2260756)))

(declare-fun lt!1266925 () List!38629)

(assert (=> b!3651580 (= res!1481485 (contains!7597 lt!1266925 lt!1266915))))

(declare-fun head!7782 (List!38629) C!21236)

(assert (=> b!3651580 (= lt!1266915 (head!7782 suffix!1395))))

(assert (=> b!3651580 (= lt!1266925 (usedCharacters!978 (regex!5766 rule!403)))))

(declare-fun b!3651581 () Bool)

(assert (=> b!3651581 (= e!2260773 e!2260752)))

(declare-fun res!1481473 () Bool)

(assert (=> b!3651581 (=> res!1481473 e!2260752)))

(declare-fun lt!1266923 () TokenValue!5996)

(declare-fun lt!1266897 () Int)

(assert (=> b!3651581 (= res!1481473 (not (= lt!1266920 (Some!8160 (tuple2!38377 (Token!10899 lt!1266923 (rule!8566 (_1!22322 lt!1266926)) lt!1266897 lt!1266899) (_2!22322 lt!1266926))))))))

(declare-fun size!29405 (BalanceConc!23148) Int)

(assert (=> b!3651581 (= lt!1266897 (size!29405 lt!1266908))))

(assert (=> b!3651581 (= lt!1266923 (apply!9268 (transformation!5766 (rule!8566 (_1!22322 lt!1266926))) lt!1266908))))

(declare-fun lt!1266910 () Unit!55512)

(declare-fun lemmaCharactersSize!811 (Token!10898) Unit!55512)

(assert (=> b!3651581 (= lt!1266910 (lemmaCharactersSize!811 (_1!22322 lt!1266926)))))

(declare-fun lt!1266905 () Unit!55512)

(declare-fun lemmaEqSameImage!949 (TokenValueInjection!11420 BalanceConc!23148 BalanceConc!23148) Unit!55512)

(assert (=> b!3651581 (= lt!1266905 (lemmaEqSameImage!949 (transformation!5766 (rule!8566 (_1!22322 lt!1266926))) lt!1266908 (seqFromList!4315 (originalCharacters!6480 (_1!22322 lt!1266926)))))))

(declare-fun lt!1266929 () Unit!55512)

(declare-fun lemmaSemiInverse!1515 (TokenValueInjection!11420 BalanceConc!23148) Unit!55512)

(assert (=> b!3651581 (= lt!1266929 (lemmaSemiInverse!1515 (transformation!5766 (rule!8566 (_1!22322 lt!1266926))) lt!1266908))))

(declare-fun b!3651582 () Bool)

(declare-fun res!1481478 () Bool)

(assert (=> b!3651582 (=> (not res!1481478) (not e!2260764))))

(assert (=> b!3651582 (= res!1481478 (contains!7598 rules!3307 rule!403))))

(declare-fun b!3651583 () Bool)

(declare-fun Unit!55516 () Unit!55512)

(assert (=> b!3651583 (= e!2260780 Unit!55516)))

(declare-fun lt!1266924 () Unit!55512)

(assert (=> b!3651583 (= lt!1266924 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!714 (regex!5766 rule!403) lt!1266896 lt!1266919))))

(assert (=> b!3651583 false))

(assert (=> b!3651584 (= e!2260759 (and tp!1113102 tp!1113095))))

(declare-fun b!3651585 () Bool)

(declare-fun e!2260767 () Bool)

(declare-fun tp!1113100 () Bool)

(assert (=> b!3651585 (= e!2260755 (and tp!1113100 (inv!51954 (tag!6532 (rule!8566 token!511))) (inv!51957 (transformation!5766 (rule!8566 token!511))) e!2260767))))

(declare-fun b!3651586 () Bool)

(assert (=> b!3651586 (= e!2260757 e!2260772)))

(declare-fun res!1481480 () Bool)

(assert (=> b!3651586 (=> res!1481480 e!2260772)))

(assert (=> b!3651586 (= res!1481480 (<= lt!1266897 (size!29405 lt!1266922)))))

(declare-fun lt!1266901 () Unit!55512)

(assert (=> b!3651586 (= lt!1266901 e!2260776)))

(declare-fun c!631147 () Bool)

(assert (=> b!3651586 (= c!631147 (isSeparator!5766 rule!403))))

(declare-fun lt!1266909 () Unit!55512)

(assert (=> b!3651586 (= lt!1266909 e!2260780)))

(declare-fun c!631145 () Bool)

(assert (=> b!3651586 (= c!631145 (not (contains!7597 lt!1266925 lt!1266919)))))

(assert (=> b!3651586 (= lt!1266919 (head!7782 lt!1266899))))

(declare-fun b!3651587 () Bool)

(declare-fun Unit!55517 () Unit!55512)

(assert (=> b!3651587 (= e!2260779 Unit!55517)))

(declare-fun b!3651588 () Bool)

(declare-fun Unit!55518 () Unit!55512)

(assert (=> b!3651588 (= e!2260765 Unit!55518)))

(declare-fun e!2260749 () Bool)

(assert (=> b!3651589 (= e!2260749 (and tp!1113097 tp!1113092))))

(declare-fun b!3651590 () Bool)

(assert (=> b!3651590 (= e!2260771 e!2260768)))

(declare-fun res!1481469 () Bool)

(assert (=> b!3651590 (=> (not res!1481469) (not e!2260768))))

(assert (=> b!3651590 (= res!1481469 (matchR!5094 (regex!5766 lt!1266917) (list!14272 (charsOf!3780 (_1!22322 lt!1266926)))))))

(declare-fun get!12654 (Option!8160) Rule!11332)

(assert (=> b!3651590 (= lt!1266917 (get!12654 lt!1266907))))

(declare-fun b!3651591 () Bool)

(declare-fun res!1481490 () Bool)

(assert (=> b!3651591 (=> (not res!1481490) (not e!2260764))))

(declare-fun rulesInvariant!4752 (LexerInterface!5355 List!38631) Bool)

(assert (=> b!3651591 (= res!1481490 (rulesInvariant!4752 thiss!23823 rules!3307))))

(assert (=> b!3651592 (= e!2260758 (and tp!1113099 tp!1113089))))

(declare-fun b!3651593 () Bool)

(declare-fun res!1481476 () Bool)

(assert (=> b!3651593 (=> (not res!1481476) (not e!2260764))))

(assert (=> b!3651593 (= res!1481476 (contains!7598 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1113091 () Bool)

(declare-fun b!3651594 () Bool)

(assert (=> b!3651594 (= e!2260754 (and tp!1113091 (inv!51954 (tag!6532 (h!43927 rules!3307))) (inv!51957 (transformation!5766 (h!43927 rules!3307))) e!2260749))))

(declare-fun b!3651595 () Bool)

(declare-fun res!1481481 () Bool)

(assert (=> b!3651595 (=> res!1481481 e!2260763)))

(declare-fun isEmpty!22821 (List!38629) Bool)

(assert (=> b!3651595 (= res!1481481 (isEmpty!22821 suffix!1395))))

(declare-fun bm!263906 () Bool)

(declare-fun call!263912 () List!38629)

(assert (=> bm!263906 (= call!263910 (contains!7597 call!263912 lt!1266919))))

(declare-fun b!3651596 () Bool)

(assert (=> b!3651596 (= e!2260761 e!2260769)))

(declare-fun res!1481489 () Bool)

(assert (=> b!3651596 (=> (not res!1481489) (not e!2260769))))

(declare-fun lt!1266911 () tuple2!38376)

(assert (=> b!3651596 (= res!1481489 (= (_1!22322 lt!1266911) token!511))))

(assert (=> b!3651596 (= lt!1266911 (get!12653 lt!1266932))))

(declare-fun bm!263907 () Bool)

(assert (=> bm!263907 (= call!263912 (usedCharacters!978 (regex!5766 (rule!8566 (_1!22322 lt!1266926)))))))

(declare-fun res!1481488 () Bool)

(assert (=> start!341514 (=> (not res!1481488) (not e!2260764))))

(get-info :version)

(assert (=> start!341514 (= res!1481488 ((_ is Lexer!5353) thiss!23823))))

(assert (=> start!341514 e!2260764))

(assert (=> start!341514 e!2260770))

(assert (=> start!341514 e!2260775))

(assert (=> start!341514 true))

(declare-fun inv!51958 (Token!10898) Bool)

(assert (=> start!341514 (and (inv!51958 token!511) e!2260777)))

(assert (=> start!341514 e!2260762))

(assert (=> start!341514 e!2260766))

(assert (=> b!3651597 (= e!2260767 (and tp!1113101 tp!1113090))))

(declare-fun b!3651598 () Bool)

(declare-fun res!1481477 () Bool)

(assert (=> b!3651598 (=> (not res!1481477) (not e!2260769))))

(assert (=> b!3651598 (= res!1481477 (isEmpty!22821 (_2!22322 lt!1266911)))))

(declare-fun b!3651599 () Bool)

(assert (=> b!3651599 false))

(declare-fun lt!1266921 () Unit!55512)

(assert (=> b!3651599 (= lt!1266921 call!263911)))

(assert (=> b!3651599 (not call!263910)))

(declare-fun lt!1266913 () Unit!55512)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!412 (LexerInterface!5355 List!38631 List!38631 Rule!11332 Rule!11332 C!21236) Unit!55512)

(assert (=> b!3651599 (= lt!1266913 (lemmaNonSepRuleNotContainsCharContainedInASepRule!412 thiss!23823 rules!3307 rules!3307 (rule!8566 (_1!22322 lt!1266926)) rule!403 lt!1266919))))

(declare-fun Unit!55519 () Unit!55512)

(assert (=> b!3651599 (= e!2260779 Unit!55519)))

(declare-fun b!3651600 () Bool)

(assert (=> b!3651600 (= e!2260751 (not (isSeparator!5766 (rule!8566 (_1!22322 lt!1266926)))))))

(assert (= (and start!341514 res!1481488) b!3651564))

(assert (= (and b!3651564 res!1481475) b!3651591))

(assert (= (and b!3651591 res!1481490) b!3651582))

(assert (= (and b!3651582 res!1481478) b!3651593))

(assert (= (and b!3651593 res!1481476) b!3651577))

(assert (= (and b!3651577 res!1481483) b!3651579))

(assert (= (and b!3651579 res!1481471) b!3651596))

(assert (= (and b!3651596 res!1481489) b!3651598))

(assert (= (and b!3651598 res!1481477) b!3651561))

(assert (= (and b!3651561 res!1481487) b!3651575))

(assert (= (and b!3651575 (not res!1481482)) b!3651595))

(assert (= (and b!3651595 (not res!1481481)) b!3651580))

(assert (= (and b!3651580 (not res!1481485)) b!3651569))

(assert (= (and b!3651569 (not res!1481470)) b!3651576))

(assert (= (and b!3651576 (not res!1481484)) b!3651558))

(assert (= (and b!3651558 res!1481474) b!3651590))

(assert (= (and b!3651590 res!1481469) b!3651573))

(assert (= (and b!3651558 (not res!1481492)) b!3651559))

(assert (= (and b!3651559 (not res!1481479)) b!3651581))

(assert (= (and b!3651581 (not res!1481473)) b!3651565))

(assert (= (and b!3651565 (not res!1481472)) b!3651586))

(assert (= (and b!3651586 c!631145) b!3651583))

(assert (= (and b!3651586 (not c!631145)) b!3651566))

(assert (= (and b!3651586 c!631147) b!3651572))

(assert (= (and b!3651586 (not c!631147)) b!3651571))

(assert (= (and b!3651572 c!631144) b!3651599))

(assert (= (and b!3651572 (not c!631144)) b!3651587))

(assert (= (and b!3651571 c!631146) b!3651567))

(assert (= (and b!3651571 (not c!631146)) b!3651588))

(assert (= (or b!3651599 b!3651567) bm!263905))

(assert (= (or b!3651599 b!3651567) bm!263907))

(assert (= (or b!3651599 b!3651567) bm!263906))

(assert (= (and b!3651586 (not res!1481480)) b!3651570))

(assert (= (and b!3651570 (not res!1481491)) b!3651574))

(assert (= (and b!3651574 (not res!1481486)) b!3651600))

(assert (= b!3651594 b!3651589))

(assert (= b!3651578 b!3651594))

(assert (= (and start!341514 ((_ is Cons!38507) rules!3307)) b!3651578))

(assert (= (and start!341514 ((_ is Cons!38505) suffix!1395)) b!3651563))

(assert (= b!3651585 b!3651597))

(assert (= b!3651562 b!3651585))

(assert (= start!341514 b!3651562))

(assert (= b!3651560 b!3651592))

(assert (= start!341514 b!3651560))

(assert (= b!3651568 b!3651584))

(assert (= start!341514 b!3651568))

(declare-fun m!4156265 () Bool)

(assert (=> b!3651590 m!4156265))

(assert (=> b!3651590 m!4156265))

(declare-fun m!4156267 () Bool)

(assert (=> b!3651590 m!4156267))

(assert (=> b!3651590 m!4156267))

(declare-fun m!4156269 () Bool)

(assert (=> b!3651590 m!4156269))

(declare-fun m!4156271 () Bool)

(assert (=> b!3651590 m!4156271))

(declare-fun m!4156273 () Bool)

(assert (=> b!3651562 m!4156273))

(declare-fun m!4156275 () Bool)

(assert (=> start!341514 m!4156275))

(declare-fun m!4156277 () Bool)

(assert (=> b!3651591 m!4156277))

(declare-fun m!4156279 () Bool)

(assert (=> b!3651564 m!4156279))

(declare-fun m!4156281 () Bool)

(assert (=> b!3651575 m!4156281))

(declare-fun m!4156283 () Bool)

(assert (=> b!3651575 m!4156283))

(declare-fun m!4156285 () Bool)

(assert (=> b!3651575 m!4156285))

(declare-fun m!4156287 () Bool)

(assert (=> b!3651569 m!4156287))

(assert (=> b!3651569 m!4156287))

(declare-fun m!4156289 () Bool)

(assert (=> b!3651569 m!4156289))

(declare-fun m!4156291 () Bool)

(assert (=> b!3651565 m!4156291))

(declare-fun m!4156293 () Bool)

(assert (=> b!3651565 m!4156293))

(declare-fun m!4156295 () Bool)

(assert (=> b!3651565 m!4156295))

(declare-fun m!4156297 () Bool)

(assert (=> b!3651565 m!4156297))

(assert (=> b!3651565 m!4156291))

(declare-fun m!4156299 () Bool)

(assert (=> b!3651565 m!4156299))

(declare-fun m!4156301 () Bool)

(assert (=> b!3651565 m!4156301))

(declare-fun m!4156303 () Bool)

(assert (=> b!3651565 m!4156303))

(declare-fun m!4156305 () Bool)

(assert (=> bm!263906 m!4156305))

(declare-fun m!4156307 () Bool)

(assert (=> b!3651570 m!4156307))

(declare-fun m!4156309 () Bool)

(assert (=> b!3651570 m!4156309))

(declare-fun m!4156311 () Bool)

(assert (=> b!3651583 m!4156311))

(declare-fun m!4156313 () Bool)

(assert (=> b!3651596 m!4156313))

(declare-fun m!4156315 () Bool)

(assert (=> b!3651582 m!4156315))

(declare-fun m!4156317 () Bool)

(assert (=> b!3651599 m!4156317))

(declare-fun m!4156319 () Bool)

(assert (=> b!3651559 m!4156319))

(declare-fun m!4156321 () Bool)

(assert (=> b!3651560 m!4156321))

(declare-fun m!4156323 () Bool)

(assert (=> b!3651560 m!4156323))

(declare-fun m!4156325 () Bool)

(assert (=> bm!263907 m!4156325))

(declare-fun m!4156327 () Bool)

(assert (=> b!3651581 m!4156327))

(declare-fun m!4156329 () Bool)

(assert (=> b!3651581 m!4156329))

(declare-fun m!4156331 () Bool)

(assert (=> b!3651581 m!4156331))

(assert (=> b!3651581 m!4156331))

(declare-fun m!4156333 () Bool)

(assert (=> b!3651581 m!4156333))

(declare-fun m!4156335 () Bool)

(assert (=> b!3651581 m!4156335))

(declare-fun m!4156337 () Bool)

(assert (=> b!3651581 m!4156337))

(declare-fun m!4156339 () Bool)

(assert (=> b!3651579 m!4156339))

(declare-fun m!4156341 () Bool)

(assert (=> b!3651579 m!4156341))

(declare-fun m!4156343 () Bool)

(assert (=> b!3651579 m!4156343))

(declare-fun m!4156345 () Bool)

(assert (=> b!3651579 m!4156345))

(declare-fun m!4156347 () Bool)

(assert (=> b!3651580 m!4156347))

(declare-fun m!4156349 () Bool)

(assert (=> b!3651580 m!4156349))

(declare-fun m!4156351 () Bool)

(assert (=> b!3651580 m!4156351))

(declare-fun m!4156353 () Bool)

(assert (=> b!3651594 m!4156353))

(declare-fun m!4156355 () Bool)

(assert (=> b!3651594 m!4156355))

(declare-fun m!4156357 () Bool)

(assert (=> b!3651567 m!4156357))

(declare-fun m!4156359 () Bool)

(assert (=> b!3651585 m!4156359))

(declare-fun m!4156361 () Bool)

(assert (=> b!3651585 m!4156361))

(declare-fun m!4156363 () Bool)

(assert (=> b!3651574 m!4156363))

(declare-fun m!4156365 () Bool)

(assert (=> b!3651586 m!4156365))

(declare-fun m!4156367 () Bool)

(assert (=> b!3651586 m!4156367))

(declare-fun m!4156369 () Bool)

(assert (=> b!3651586 m!4156369))

(declare-fun m!4156371 () Bool)

(assert (=> b!3651558 m!4156371))

(declare-fun m!4156373 () Bool)

(assert (=> b!3651558 m!4156373))

(declare-fun m!4156375 () Bool)

(assert (=> b!3651558 m!4156375))

(declare-fun m!4156377 () Bool)

(assert (=> b!3651558 m!4156377))

(declare-fun m!4156379 () Bool)

(assert (=> b!3651558 m!4156379))

(declare-fun m!4156381 () Bool)

(assert (=> b!3651558 m!4156381))

(declare-fun m!4156383 () Bool)

(assert (=> b!3651558 m!4156383))

(declare-fun m!4156385 () Bool)

(assert (=> b!3651558 m!4156385))

(assert (=> b!3651558 m!4156265))

(declare-fun m!4156387 () Bool)

(assert (=> b!3651558 m!4156387))

(declare-fun m!4156389 () Bool)

(assert (=> b!3651558 m!4156389))

(assert (=> b!3651558 m!4156377))

(declare-fun m!4156391 () Bool)

(assert (=> b!3651558 m!4156391))

(declare-fun m!4156393 () Bool)

(assert (=> b!3651558 m!4156393))

(declare-fun m!4156395 () Bool)

(assert (=> b!3651558 m!4156395))

(declare-fun m!4156397 () Bool)

(assert (=> b!3651558 m!4156397))

(declare-fun m!4156399 () Bool)

(assert (=> b!3651576 m!4156399))

(declare-fun m!4156401 () Bool)

(assert (=> b!3651593 m!4156401))

(declare-fun m!4156403 () Bool)

(assert (=> b!3651568 m!4156403))

(declare-fun m!4156405 () Bool)

(assert (=> b!3651568 m!4156405))

(declare-fun m!4156407 () Bool)

(assert (=> b!3651598 m!4156407))

(declare-fun m!4156409 () Bool)

(assert (=> b!3651595 m!4156409))

(declare-fun m!4156411 () Bool)

(assert (=> bm!263905 m!4156411))

(check-sat (not bm!263907) (not b!3651599) (not b_next!96761) (not b!3651585) (not b_next!96765) (not b!3651564) (not b_next!96763) (not bm!263906) b_and!270181 (not b!3651579) (not b_next!96755) (not b!3651576) (not b!3651594) (not b!3651580) b_and!270185 (not b!3651567) (not start!341514) (not bm!263905) (not b!3651582) b_and!270171 tp_is_empty!18133 (not b!3651563) (not b_next!96767) (not b!3651575) (not b!3651568) (not b!3651569) (not b!3651591) (not b!3651578) (not b!3651570) b_and!270183 (not b!3651560) b_and!270173 (not b_next!96757) (not b!3651562) (not b!3651593) (not b!3651559) (not b!3651583) (not b!3651598) b_and!270179 (not b!3651558) (not b!3651595) (not b!3651574) (not b!3651586) (not b!3651565) (not b_next!96753) (not b!3651581) b_and!270175 (not b_next!96759) b_and!270177 (not b!3651590) (not b!3651596))
(check-sat b_and!270185 b_and!270171 (not b_next!96767) b_and!270183 (not b_next!96761) (not b_next!96765) b_and!270179 (not b_next!96763) b_and!270181 (not b_next!96753) b_and!270175 (not b_next!96755) b_and!270173 (not b_next!96757) (not b_next!96759) b_and!270177)
