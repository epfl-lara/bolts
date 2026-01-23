; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335874 () Bool)

(assert start!335874)

(declare-fun b!3608464 () Bool)

(declare-fun b_free!93601 () Bool)

(declare-fun b_next!94305 () Bool)

(assert (=> b!3608464 (= b_free!93601 (not b_next!94305))))

(declare-fun tp!1103200 () Bool)

(declare-fun b_and!262931 () Bool)

(assert (=> b!3608464 (= tp!1103200 b_and!262931)))

(declare-fun b_free!93603 () Bool)

(declare-fun b_next!94307 () Bool)

(assert (=> b!3608464 (= b_free!93603 (not b_next!94307))))

(declare-fun tp!1103201 () Bool)

(declare-fun b_and!262933 () Bool)

(assert (=> b!3608464 (= tp!1103201 b_and!262933)))

(declare-fun b!3608489 () Bool)

(declare-fun b_free!93605 () Bool)

(declare-fun b_next!94309 () Bool)

(assert (=> b!3608489 (= b_free!93605 (not b_next!94309))))

(declare-fun tp!1103206 () Bool)

(declare-fun b_and!262935 () Bool)

(assert (=> b!3608489 (= tp!1103206 b_and!262935)))

(declare-fun b_free!93607 () Bool)

(declare-fun b_next!94311 () Bool)

(assert (=> b!3608489 (= b_free!93607 (not b_next!94311))))

(declare-fun tp!1103197 () Bool)

(declare-fun b_and!262937 () Bool)

(assert (=> b!3608489 (= tp!1103197 b_and!262937)))

(declare-fun b!3608485 () Bool)

(declare-fun b_free!93609 () Bool)

(declare-fun b_next!94313 () Bool)

(assert (=> b!3608485 (= b_free!93609 (not b_next!94313))))

(declare-fun tp!1103192 () Bool)

(declare-fun b_and!262939 () Bool)

(assert (=> b!3608485 (= tp!1103192 b_and!262939)))

(declare-fun b_free!93611 () Bool)

(declare-fun b_next!94315 () Bool)

(assert (=> b!3608485 (= b_free!93611 (not b_next!94315))))

(declare-fun tp!1103198 () Bool)

(declare-fun b_and!262941 () Bool)

(assert (=> b!3608485 (= tp!1103198 b_and!262941)))

(declare-fun b!3608488 () Bool)

(declare-fun b_free!93613 () Bool)

(declare-fun b_next!94317 () Bool)

(assert (=> b!3608488 (= b_free!93613 (not b_next!94317))))

(declare-fun tp!1103203 () Bool)

(declare-fun b_and!262943 () Bool)

(assert (=> b!3608488 (= tp!1103203 b_and!262943)))

(declare-fun b_free!93615 () Bool)

(declare-fun b_next!94319 () Bool)

(assert (=> b!3608488 (= b_free!93615 (not b_next!94319))))

(declare-fun tp!1103196 () Bool)

(declare-fun b_and!262945 () Bool)

(assert (=> b!3608488 (= tp!1103196 b_and!262945)))

(declare-fun b!3608461 () Bool)

(declare-fun res!1459333 () Bool)

(declare-fun e!2233143 () Bool)

(assert (=> b!3608461 (=> (not res!1459333) (not e!2233143))))

(declare-datatypes ((List!38095 0))(
  ( (Nil!37971) (Cons!37971 (h!43391 (_ BitVec 16)) (t!293146 List!38095)) )
))
(declare-datatypes ((TokenValue!5860 0))(
  ( (FloatLiteralValue!11720 (text!41465 List!38095)) (TokenValueExt!5859 (__x!23937 Int)) (Broken!29300 (value!180889 List!38095)) (Object!5983) (End!5860) (Def!5860) (Underscore!5860) (Match!5860) (Else!5860) (Error!5860) (Case!5860) (If!5860) (Extends!5860) (Abstract!5860) (Class!5860) (Val!5860) (DelimiterValue!11720 (del!5920 List!38095)) (KeywordValue!5866 (value!180890 List!38095)) (CommentValue!11720 (value!180891 List!38095)) (WhitespaceValue!11720 (value!180892 List!38095)) (IndentationValue!5860 (value!180893 List!38095)) (String!42633) (Int32!5860) (Broken!29301 (value!180894 List!38095)) (Boolean!5861) (Unit!54105) (OperatorValue!5863 (op!5920 List!38095)) (IdentifierValue!11720 (value!180895 List!38095)) (IdentifierValue!11721 (value!180896 List!38095)) (WhitespaceValue!11721 (value!180897 List!38095)) (True!11720) (False!11720) (Broken!29302 (value!180898 List!38095)) (Broken!29303 (value!180899 List!38095)) (True!11721) (RightBrace!5860) (RightBracket!5860) (Colon!5860) (Null!5860) (Comma!5860) (LeftBracket!5860) (False!11721) (LeftBrace!5860) (ImaginaryLiteralValue!5860 (text!41466 List!38095)) (StringLiteralValue!17580 (value!180900 List!38095)) (EOFValue!5860 (value!180901 List!38095)) (IdentValue!5860 (value!180902 List!38095)) (DelimiterValue!11721 (value!180903 List!38095)) (DedentValue!5860 (value!180904 List!38095)) (NewLineValue!5860 (value!180905 List!38095)) (IntegerValue!17580 (value!180906 (_ BitVec 32)) (text!41467 List!38095)) (IntegerValue!17581 (value!180907 Int) (text!41468 List!38095)) (Times!5860) (Or!5860) (Equal!5860) (Minus!5860) (Broken!29304 (value!180908 List!38095)) (And!5860) (Div!5860) (LessEqual!5860) (Mod!5860) (Concat!16249) (Not!5860) (Plus!5860) (SpaceValue!5860 (value!180909 List!38095)) (IntegerValue!17582 (value!180910 Int) (text!41469 List!38095)) (StringLiteralValue!17581 (text!41470 List!38095)) (FloatLiteralValue!11721 (text!41471 List!38095)) (BytesLiteralValue!5860 (value!180911 List!38095)) (CommentValue!11721 (value!180912 List!38095)) (StringLiteralValue!17582 (value!180913 List!38095)) (ErrorTokenValue!5860 (msg!5921 List!38095)) )
))
(declare-datatypes ((C!20964 0))(
  ( (C!20965 (val!12530 Int)) )
))
(declare-datatypes ((Regex!10389 0))(
  ( (ElementMatch!10389 (c!624322 C!20964)) (Concat!16250 (regOne!21290 Regex!10389) (regTwo!21290 Regex!10389)) (EmptyExpr!10389) (Star!10389 (reg!10718 Regex!10389)) (EmptyLang!10389) (Union!10389 (regOne!21291 Regex!10389) (regTwo!21291 Regex!10389)) )
))
(declare-datatypes ((String!42634 0))(
  ( (String!42635 (value!180914 String)) )
))
(declare-datatypes ((List!38096 0))(
  ( (Nil!37972) (Cons!37972 (h!43392 C!20964) (t!293147 List!38096)) )
))
(declare-datatypes ((IArray!23143 0))(
  ( (IArray!23144 (innerList!11629 List!38096)) )
))
(declare-datatypes ((Conc!11569 0))(
  ( (Node!11569 (left!29670 Conc!11569) (right!30000 Conc!11569) (csize!23368 Int) (cheight!11780 Int)) (Leaf!17995 (xs!14771 IArray!23143) (csize!23369 Int)) (Empty!11569) )
))
(declare-datatypes ((BalanceConc!22752 0))(
  ( (BalanceConc!22753 (c!624323 Conc!11569)) )
))
(declare-datatypes ((TokenValueInjection!11148 0))(
  ( (TokenValueInjection!11149 (toValue!7914 Int) (toChars!7773 Int)) )
))
(declare-datatypes ((Rule!11060 0))(
  ( (Rule!11061 (regex!5630 Regex!10389) (tag!6334 String!42634) (isSeparator!5630 Bool) (transformation!5630 TokenValueInjection!11148)) )
))
(declare-datatypes ((List!38097 0))(
  ( (Nil!37973) (Cons!37973 (h!43393 Rule!11060) (t!293148 List!38097)) )
))
(declare-fun rules!3307 () List!38097)

(declare-fun anOtherTypeRule!33 () Rule!11060)

(declare-fun contains!7323 (List!38097 Rule!11060) Bool)

(assert (=> b!3608461 (= res!1459333 (contains!7323 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3608462 () Bool)

(declare-fun e!2233161 () Bool)

(declare-fun e!2233135 () Bool)

(declare-fun tp!1103194 () Bool)

(assert (=> b!3608462 (= e!2233161 (and e!2233135 tp!1103194))))

(declare-fun b!3608463 () Bool)

(declare-datatypes ((Unit!54106 0))(
  ( (Unit!54107) )
))
(declare-fun e!2233159 () Unit!54106)

(declare-fun e!2233155 () Unit!54106)

(assert (=> b!3608463 (= e!2233159 e!2233155)))

(declare-fun c!624321 () Bool)

(declare-datatypes ((Token!10626 0))(
  ( (Token!10627 (value!180915 TokenValue!5860) (rule!8378 Rule!11060) (size!28945 Int) (originalCharacters!6344 List!38096)) )
))
(declare-datatypes ((tuple2!37868 0))(
  ( (tuple2!37869 (_1!22068 Token!10626) (_2!22068 List!38096)) )
))
(declare-fun lt!1241621 () tuple2!37868)

(assert (=> b!3608463 (= c!624321 (isSeparator!5630 (rule!8378 (_1!22068 lt!1241621))))))

(declare-fun e!2233139 () Bool)

(assert (=> b!3608464 (= e!2233139 (and tp!1103200 tp!1103201))))

(declare-fun b!3608465 () Bool)

(declare-fun e!2233150 () Bool)

(declare-fun e!2233152 () Bool)

(assert (=> b!3608465 (= e!2233150 e!2233152)))

(declare-fun res!1459350 () Bool)

(assert (=> b!3608465 (=> res!1459350 e!2233152)))

(declare-fun rule!403 () Rule!11060)

(assert (=> b!3608465 (= res!1459350 (not (isSeparator!5630 rule!403)))))

(declare-fun lt!1241625 () List!38096)

(declare-fun lt!1241632 () C!20964)

(declare-fun contains!7324 (List!38096 C!20964) Bool)

(assert (=> b!3608465 (contains!7324 lt!1241625 lt!1241632)))

(declare-fun suffix!1395 () List!38096)

(declare-fun lt!1241602 () List!38096)

(declare-fun lt!1241610 () List!38096)

(declare-fun lt!1241627 () Unit!54106)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!8 (List!38096 List!38096 List!38096 List!38096) Unit!54106)

(assert (=> b!3608465 (= lt!1241627 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!8 lt!1241602 suffix!1395 lt!1241625 lt!1241610))))

(declare-fun b!3608466 () Bool)

(declare-fun Unit!54108 () Unit!54106)

(assert (=> b!3608466 (= e!2233155 Unit!54108)))

(declare-fun bm!260831 () Bool)

(declare-fun call!260836 () List!38096)

(declare-fun usedCharacters!844 (Regex!10389) List!38096)

(assert (=> bm!260831 (= call!260836 (usedCharacters!844 (regex!5630 (rule!8378 (_1!22068 lt!1241621)))))))

(declare-fun b!3608467 () Bool)

(declare-fun e!2233132 () Bool)

(declare-fun e!2233146 () Bool)

(assert (=> b!3608467 (= e!2233132 e!2233146)))

(declare-fun res!1459349 () Bool)

(assert (=> b!3608467 (=> (not res!1459349) (not e!2233146))))

(declare-fun lt!1241623 () Rule!11060)

(declare-fun matchR!4958 (Regex!10389 List!38096) Bool)

(declare-fun list!14002 (BalanceConc!22752) List!38096)

(declare-fun charsOf!3644 (Token!10626) BalanceConc!22752)

(assert (=> b!3608467 (= res!1459349 (matchR!4958 (regex!5630 lt!1241623) (list!14002 (charsOf!3644 (_1!22068 lt!1241621)))))))

(declare-datatypes ((Option!7890 0))(
  ( (None!7889) (Some!7889 (v!37627 Rule!11060)) )
))
(declare-fun lt!1241608 () Option!7890)

(declare-fun get!12315 (Option!7890) Rule!11060)

(assert (=> b!3608467 (= lt!1241623 (get!12315 lt!1241608))))

(declare-fun b!3608468 () Bool)

(assert (=> b!3608468 (= e!2233146 (= (rule!8378 (_1!22068 lt!1241621)) lt!1241623))))

(declare-fun b!3608469 () Bool)

(declare-fun e!2233156 () Unit!54106)

(declare-fun Unit!54109 () Unit!54106)

(assert (=> b!3608469 (= e!2233156 Unit!54109)))

(declare-fun b!3608470 () Bool)

(declare-fun e!2233134 () Bool)

(declare-fun tp!1103202 () Bool)

(declare-fun inv!51339 (String!42634) Bool)

(declare-fun inv!51342 (TokenValueInjection!11148) Bool)

(assert (=> b!3608470 (= e!2233134 (and tp!1103202 (inv!51339 (tag!6334 anOtherTypeRule!33)) (inv!51342 (transformation!5630 anOtherTypeRule!33)) e!2233139))))

(declare-fun b!3608471 () Bool)

(declare-fun res!1459347 () Bool)

(declare-fun e!2233141 () Bool)

(assert (=> b!3608471 (=> res!1459347 e!2233141)))

(assert (=> b!3608471 (= res!1459347 (not (contains!7324 (usedCharacters!844 (regex!5630 anOtherTypeRule!33)) lt!1241632)))))

(declare-fun b!3608472 () Bool)

(declare-fun res!1459348 () Bool)

(declare-fun e!2233154 () Bool)

(assert (=> b!3608472 (=> res!1459348 e!2233154)))

(declare-fun isEmpty!22418 (List!38096) Bool)

(assert (=> b!3608472 (= res!1459348 (isEmpty!22418 suffix!1395))))

(declare-fun b!3608473 () Bool)

(declare-fun res!1459336 () Bool)

(assert (=> b!3608473 (=> (not res!1459336) (not e!2233143))))

(assert (=> b!3608473 (= res!1459336 (contains!7323 rules!3307 rule!403))))

(declare-fun b!3608474 () Bool)

(declare-fun token!511 () Token!10626)

(declare-fun e!2233145 () Bool)

(declare-fun tp!1103205 () Bool)

(declare-fun e!2233142 () Bool)

(assert (=> b!3608474 (= e!2233145 (and tp!1103205 (inv!51339 (tag!6334 (rule!8378 token!511))) (inv!51342 (transformation!5630 (rule!8378 token!511))) e!2233142))))

(declare-fun b!3608475 () Bool)

(assert (=> b!3608475 (= e!2233154 e!2233141)))

(declare-fun res!1459345 () Bool)

(assert (=> b!3608475 (=> res!1459345 e!2233141)))

(declare-fun lt!1241595 () List!38096)

(assert (=> b!3608475 (= res!1459345 (contains!7324 lt!1241595 lt!1241632))))

(declare-fun head!7586 (List!38096) C!20964)

(assert (=> b!3608475 (= lt!1241632 (head!7586 suffix!1395))))

(assert (=> b!3608475 (= lt!1241595 (usedCharacters!844 (regex!5630 rule!403)))))

(declare-fun b!3608476 () Bool)

(declare-fun e!2233148 () Bool)

(assert (=> b!3608476 (= e!2233143 e!2233148)))

(declare-fun res!1459351 () Bool)

(assert (=> b!3608476 (=> (not res!1459351) (not e!2233148))))

(declare-datatypes ((Option!7891 0))(
  ( (None!7890) (Some!7890 (v!37628 tuple2!37868)) )
))
(declare-fun lt!1241599 () Option!7891)

(declare-fun isDefined!6122 (Option!7891) Bool)

(assert (=> b!3608476 (= res!1459351 (isDefined!6122 lt!1241599))))

(declare-datatypes ((LexerInterface!5219 0))(
  ( (LexerInterfaceExt!5216 (__x!23938 Int)) (Lexer!5217) )
))
(declare-fun thiss!23823 () LexerInterface!5219)

(declare-fun maxPrefix!2753 (LexerInterface!5219 List!38097 List!38096) Option!7891)

(assert (=> b!3608476 (= lt!1241599 (maxPrefix!2753 thiss!23823 rules!3307 lt!1241602))))

(declare-fun lt!1241601 () BalanceConc!22752)

(assert (=> b!3608476 (= lt!1241602 (list!14002 lt!1241601))))

(assert (=> b!3608476 (= lt!1241601 (charsOf!3644 token!511))))

(declare-fun b!3608477 () Bool)

(declare-fun res!1459353 () Bool)

(assert (=> b!3608477 (=> res!1459353 e!2233141)))

(declare-fun sepAndNonSepRulesDisjointChars!1800 (List!38097 List!38097) Bool)

(assert (=> b!3608477 (= res!1459353 (not (sepAndNonSepRulesDisjointChars!1800 rules!3307 rules!3307)))))

(declare-fun e!2233136 () Bool)

(declare-fun b!3608478 () Bool)

(declare-fun tp!1103195 () Bool)

(assert (=> b!3608478 (= e!2233135 (and tp!1103195 (inv!51339 (tag!6334 (h!43393 rules!3307))) (inv!51342 (transformation!5630 (h!43393 rules!3307))) e!2233136))))

(declare-fun b!3608479 () Bool)

(declare-fun tp!1103204 () Bool)

(declare-fun e!2233151 () Bool)

(declare-fun inv!21 (TokenValue!5860) Bool)

(assert (=> b!3608479 (= e!2233151 (and (inv!21 (value!180915 token!511)) e!2233145 tp!1103204))))

(declare-fun res!1459346 () Bool)

(assert (=> start!335874 (=> (not res!1459346) (not e!2233143))))

(get-info :version)

(assert (=> start!335874 (= res!1459346 ((_ is Lexer!5217) thiss!23823))))

(assert (=> start!335874 e!2233143))

(assert (=> start!335874 e!2233161))

(declare-fun e!2233153 () Bool)

(assert (=> start!335874 e!2233153))

(assert (=> start!335874 true))

(declare-fun inv!51343 (Token!10626) Bool)

(assert (=> start!335874 (and (inv!51343 token!511) e!2233151)))

(declare-fun e!2233158 () Bool)

(assert (=> start!335874 e!2233158))

(assert (=> start!335874 e!2233134))

(declare-fun b!3608480 () Bool)

(assert (=> b!3608480 false))

(declare-fun lt!1241617 () Unit!54106)

(declare-fun call!260837 () Unit!54106)

(assert (=> b!3608480 (= lt!1241617 call!260837)))

(declare-fun call!260838 () Bool)

(assert (=> b!3608480 (not call!260838)))

(declare-fun lt!1241609 () Unit!54106)

(declare-fun lt!1241626 () C!20964)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!336 (LexerInterface!5219 List!38097 List!38097 Rule!11060 Rule!11060 C!20964) Unit!54106)

(assert (=> b!3608480 (= lt!1241609 (lemmaNonSepRuleNotContainsCharContainedInASepRule!336 thiss!23823 rules!3307 rules!3307 (rule!8378 (_1!22068 lt!1241621)) rule!403 lt!1241626))))

(declare-fun e!2233133 () Unit!54106)

(declare-fun Unit!54110 () Unit!54106)

(assert (=> b!3608480 (= e!2233133 Unit!54110)))

(declare-fun b!3608481 () Bool)

(declare-fun res!1459343 () Bool)

(declare-fun e!2233160 () Bool)

(assert (=> b!3608481 (=> (not res!1459343) (not e!2233160))))

(declare-fun lt!1241618 () tuple2!37868)

(assert (=> b!3608481 (= res!1459343 (isEmpty!22418 (_2!22068 lt!1241618)))))

(declare-fun b!3608482 () Bool)

(declare-fun Unit!54111 () Unit!54106)

(assert (=> b!3608482 (= e!2233156 Unit!54111)))

(declare-fun lt!1241596 () Unit!54106)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!614 (Regex!10389 List!38096 C!20964) Unit!54106)

(assert (=> b!3608482 (= lt!1241596 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!614 (regex!5630 rule!403) lt!1241602 lt!1241626))))

(assert (=> b!3608482 false))

(declare-fun b!3608483 () Bool)

(declare-fun res!1459332 () Bool)

(assert (=> b!3608483 (=> (not res!1459332) (not e!2233143))))

(declare-fun rulesInvariant!4616 (LexerInterface!5219 List!38097) Bool)

(assert (=> b!3608483 (= res!1459332 (rulesInvariant!4616 thiss!23823 rules!3307))))

(declare-fun b!3608484 () Bool)

(assert (=> b!3608484 (= e!2233160 (not e!2233154))))

(declare-fun res!1459337 () Bool)

(assert (=> b!3608484 (=> res!1459337 e!2233154)))

(assert (=> b!3608484 (= res!1459337 (not (matchR!4958 (regex!5630 rule!403) lt!1241602)))))

(declare-fun ruleValid!1895 (LexerInterface!5219 Rule!11060) Bool)

(assert (=> b!3608484 (ruleValid!1895 thiss!23823 rule!403)))

(declare-fun lt!1241613 () Unit!54106)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1050 (LexerInterface!5219 Rule!11060 List!38097) Unit!54106)

(assert (=> b!3608484 (= lt!1241613 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1050 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3608485 (= e!2233142 (and tp!1103192 tp!1103198))))

(declare-fun b!3608486 () Bool)

(declare-fun res!1459354 () Bool)

(assert (=> b!3608486 (=> (not res!1459354) (not e!2233143))))

(declare-fun isEmpty!22419 (List!38097) Bool)

(assert (=> b!3608486 (= res!1459354 (not (isEmpty!22419 rules!3307)))))

(declare-fun b!3608487 () Bool)

(assert (=> b!3608487 (= e!2233148 e!2233160)))

(declare-fun res!1459338 () Bool)

(assert (=> b!3608487 (=> (not res!1459338) (not e!2233160))))

(assert (=> b!3608487 (= res!1459338 (= (_1!22068 lt!1241618) token!511))))

(declare-fun get!12316 (Option!7891) tuple2!37868)

(assert (=> b!3608487 (= lt!1241618 (get!12316 lt!1241599))))

(declare-fun bm!260832 () Bool)

(assert (=> bm!260832 (= call!260838 (contains!7324 call!260836 lt!1241626))))

(assert (=> b!3608488 (= e!2233136 (and tp!1103203 tp!1103196))))

(declare-fun e!2233137 () Bool)

(assert (=> b!3608489 (= e!2233137 (and tp!1103206 tp!1103197))))

(declare-fun b!3608490 () Bool)

(declare-fun res!1459334 () Bool)

(assert (=> b!3608490 (=> (not res!1459334) (not e!2233160))))

(assert (=> b!3608490 (= res!1459334 (= (rule!8378 token!511) rule!403))))

(declare-fun b!3608491 () Bool)

(assert (=> b!3608491 (= e!2233152 true)))

(assert (=> b!3608491 (not (contains!7324 (usedCharacters!844 (regex!5630 (rule!8378 (_1!22068 lt!1241621)))) lt!1241632))))

(declare-fun lt!1241604 () Unit!54106)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!218 (LexerInterface!5219 List!38097 List!38097 Rule!11060 Rule!11060 C!20964) Unit!54106)

(assert (=> b!3608491 (= lt!1241604 (lemmaSepRuleNotContainsCharContainedInANonSepRule!218 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8378 (_1!22068 lt!1241621)) lt!1241632))))

(declare-fun b!3608492 () Bool)

(declare-fun e!2233138 () Bool)

(declare-fun e!2233140 () Bool)

(assert (=> b!3608492 (= e!2233138 e!2233140)))

(declare-fun res!1459341 () Bool)

(assert (=> b!3608492 (=> res!1459341 e!2233140)))

(declare-fun lt!1241616 () List!38096)

(declare-fun lt!1241622 () Option!7891)

(assert (=> b!3608492 (= res!1459341 (or (not (= lt!1241616 (_2!22068 lt!1241621))) (not (= lt!1241622 (Some!7890 (tuple2!37869 (_1!22068 lt!1241621) lt!1241616))))))))

(assert (=> b!3608492 (= (_2!22068 lt!1241621) lt!1241616)))

(declare-fun lt!1241630 () Unit!54106)

(declare-fun lemmaSamePrefixThenSameSuffix!1348 (List!38096 List!38096 List!38096 List!38096 List!38096) Unit!54106)

(assert (=> b!3608492 (= lt!1241630 (lemmaSamePrefixThenSameSuffix!1348 lt!1241625 (_2!22068 lt!1241621) lt!1241625 lt!1241616 lt!1241610))))

(declare-fun getSuffix!1568 (List!38096 List!38096) List!38096)

(assert (=> b!3608492 (= lt!1241616 (getSuffix!1568 lt!1241610 lt!1241625))))

(declare-fun lt!1241603 () TokenValue!5860)

(declare-fun lt!1241594 () Int)

(assert (=> b!3608492 (= lt!1241622 (Some!7890 (tuple2!37869 (Token!10627 lt!1241603 (rule!8378 (_1!22068 lt!1241621)) lt!1241594 lt!1241625) (_2!22068 lt!1241621))))))

(declare-fun maxPrefixOneRule!1897 (LexerInterface!5219 Rule!11060 List!38096) Option!7891)

(assert (=> b!3608492 (= lt!1241622 (maxPrefixOneRule!1897 thiss!23823 (rule!8378 (_1!22068 lt!1241621)) lt!1241610))))

(declare-fun size!28946 (List!38096) Int)

(assert (=> b!3608492 (= lt!1241594 (size!28946 lt!1241625))))

(declare-fun apply!9136 (TokenValueInjection!11148 BalanceConc!22752) TokenValue!5860)

(declare-fun seqFromList!4183 (List!38096) BalanceConc!22752)

(assert (=> b!3608492 (= lt!1241603 (apply!9136 (transformation!5630 (rule!8378 (_1!22068 lt!1241621))) (seqFromList!4183 lt!1241625)))))

(declare-fun lt!1241598 () Unit!54106)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!969 (LexerInterface!5219 List!38097 List!38096 List!38096 List!38096 Rule!11060) Unit!54106)

(assert (=> b!3608492 (= lt!1241598 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!969 thiss!23823 rules!3307 lt!1241625 lt!1241610 (_2!22068 lt!1241621) (rule!8378 (_1!22068 lt!1241621))))))

(declare-fun b!3608493 () Bool)

(declare-fun tp_is_empty!17861 () Bool)

(declare-fun tp!1103199 () Bool)

(assert (=> b!3608493 (= e!2233153 (and tp_is_empty!17861 tp!1103199))))

(declare-fun b!3608494 () Bool)

(declare-fun Unit!54112 () Unit!54106)

(assert (=> b!3608494 (= e!2233133 Unit!54112)))

(declare-fun b!3608495 () Bool)

(declare-fun tp!1103193 () Bool)

(assert (=> b!3608495 (= e!2233158 (and tp!1103193 (inv!51339 (tag!6334 rule!403)) (inv!51342 (transformation!5630 rule!403)) e!2233137))))

(declare-fun b!3608496 () Bool)

(declare-fun e!2233147 () Bool)

(assert (=> b!3608496 (= e!2233141 e!2233147)))

(declare-fun res!1459352 () Bool)

(assert (=> b!3608496 (=> res!1459352 e!2233147)))

(declare-fun isPrefix!2993 (List!38096 List!38096) Bool)

(assert (=> b!3608496 (= res!1459352 (not (isPrefix!2993 lt!1241625 lt!1241610)))))

(declare-fun ++!9446 (List!38096 List!38096) List!38096)

(assert (=> b!3608496 (isPrefix!2993 lt!1241625 (++!9446 lt!1241625 (_2!22068 lt!1241621)))))

(declare-fun lt!1241620 () Unit!54106)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1914 (List!38096 List!38096) Unit!54106)

(assert (=> b!3608496 (= lt!1241620 (lemmaConcatTwoListThenFirstIsPrefix!1914 lt!1241625 (_2!22068 lt!1241621)))))

(declare-fun lt!1241614 () BalanceConc!22752)

(assert (=> b!3608496 (= lt!1241625 (list!14002 lt!1241614))))

(assert (=> b!3608496 (= lt!1241614 (charsOf!3644 (_1!22068 lt!1241621)))))

(assert (=> b!3608496 e!2233132))

(declare-fun res!1459339 () Bool)

(assert (=> b!3608496 (=> (not res!1459339) (not e!2233132))))

(declare-fun isDefined!6123 (Option!7890) Bool)

(assert (=> b!3608496 (= res!1459339 (isDefined!6123 lt!1241608))))

(declare-fun getRuleFromTag!1236 (LexerInterface!5219 List!38097 String!42634) Option!7890)

(assert (=> b!3608496 (= lt!1241608 (getRuleFromTag!1236 thiss!23823 rules!3307 (tag!6334 (rule!8378 (_1!22068 lt!1241621)))))))

(declare-fun lt!1241624 () Unit!54106)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1236 (LexerInterface!5219 List!38097 List!38096 Token!10626) Unit!54106)

(assert (=> b!3608496 (= lt!1241624 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1236 thiss!23823 rules!3307 lt!1241610 (_1!22068 lt!1241621)))))

(declare-fun lt!1241631 () Option!7891)

(assert (=> b!3608496 (= lt!1241621 (get!12316 lt!1241631))))

(declare-fun lt!1241612 () Unit!54106)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!899 (LexerInterface!5219 List!38097 List!38096 List!38096) Unit!54106)

(assert (=> b!3608496 (= lt!1241612 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!899 thiss!23823 rules!3307 lt!1241602 suffix!1395))))

(assert (=> b!3608496 (= lt!1241631 (maxPrefix!2753 thiss!23823 rules!3307 lt!1241610))))

(assert (=> b!3608496 (isPrefix!2993 lt!1241602 lt!1241610)))

(declare-fun lt!1241606 () Unit!54106)

(assert (=> b!3608496 (= lt!1241606 (lemmaConcatTwoListThenFirstIsPrefix!1914 lt!1241602 suffix!1395))))

(assert (=> b!3608496 (= lt!1241610 (++!9446 lt!1241602 suffix!1395))))

(declare-fun bm!260833 () Bool)

(assert (=> bm!260833 (= call!260837 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!614 (regex!5630 (rule!8378 (_1!22068 lt!1241621))) lt!1241625 lt!1241626))))

(declare-fun b!3608497 () Bool)

(assert (=> b!3608497 false))

(declare-fun lt!1241607 () Unit!54106)

(assert (=> b!3608497 (= lt!1241607 call!260837)))

(assert (=> b!3608497 (not call!260838)))

(declare-fun lt!1241628 () Unit!54106)

(assert (=> b!3608497 (= lt!1241628 (lemmaSepRuleNotContainsCharContainedInANonSepRule!218 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8378 (_1!22068 lt!1241621)) lt!1241626))))

(declare-fun Unit!54113 () Unit!54106)

(assert (=> b!3608497 (= e!2233155 Unit!54113)))

(declare-fun b!3608498 () Bool)

(declare-fun res!1459344 () Bool)

(assert (=> b!3608498 (=> res!1459344 e!2233147)))

(assert (=> b!3608498 (= res!1459344 (not (matchR!4958 (regex!5630 (rule!8378 (_1!22068 lt!1241621))) lt!1241625)))))

(declare-fun b!3608499 () Bool)

(assert (=> b!3608499 (= e!2233140 e!2233150)))

(declare-fun res!1459340 () Bool)

(assert (=> b!3608499 (=> res!1459340 e!2233150)))

(declare-fun lt!1241619 () Int)

(declare-fun size!28947 (BalanceConc!22752) Int)

(assert (=> b!3608499 (= res!1459340 (<= lt!1241619 (size!28947 lt!1241601)))))

(declare-fun lt!1241605 () Unit!54106)

(assert (=> b!3608499 (= lt!1241605 e!2233159)))

(declare-fun c!624318 () Bool)

(assert (=> b!3608499 (= c!624318 (isSeparator!5630 rule!403))))

(declare-fun lt!1241629 () Unit!54106)

(assert (=> b!3608499 (= lt!1241629 e!2233156)))

(declare-fun c!624320 () Bool)

(assert (=> b!3608499 (= c!624320 (not (contains!7324 lt!1241595 lt!1241626)))))

(assert (=> b!3608499 (= lt!1241626 (head!7586 lt!1241625))))

(declare-fun b!3608500 () Bool)

(declare-fun res!1459335 () Bool)

(assert (=> b!3608500 (=> (not res!1459335) (not e!2233143))))

(assert (=> b!3608500 (= res!1459335 (not (= (isSeparator!5630 anOtherTypeRule!33) (isSeparator!5630 rule!403))))))

(declare-fun b!3608501 () Bool)

(assert (=> b!3608501 (= e!2233159 e!2233133)))

(declare-fun c!624319 () Bool)

(assert (=> b!3608501 (= c!624319 (not (isSeparator!5630 (rule!8378 (_1!22068 lt!1241621)))))))

(declare-fun b!3608502 () Bool)

(assert (=> b!3608502 (= e!2233147 e!2233138)))

(declare-fun res!1459342 () Bool)

(assert (=> b!3608502 (=> res!1459342 e!2233138)))

(declare-fun lt!1241611 () TokenValue!5860)

(assert (=> b!3608502 (= res!1459342 (not (= lt!1241631 (Some!7890 (tuple2!37869 (Token!10627 lt!1241611 (rule!8378 (_1!22068 lt!1241621)) lt!1241619 lt!1241625) (_2!22068 lt!1241621))))))))

(assert (=> b!3608502 (= lt!1241619 (size!28947 lt!1241614))))

(assert (=> b!3608502 (= lt!1241611 (apply!9136 (transformation!5630 (rule!8378 (_1!22068 lt!1241621))) lt!1241614))))

(declare-fun lt!1241600 () Unit!54106)

(declare-fun lemmaCharactersSize!683 (Token!10626) Unit!54106)

(assert (=> b!3608502 (= lt!1241600 (lemmaCharactersSize!683 (_1!22068 lt!1241621)))))

(declare-fun lt!1241615 () Unit!54106)

(declare-fun lemmaEqSameImage!821 (TokenValueInjection!11148 BalanceConc!22752 BalanceConc!22752) Unit!54106)

(assert (=> b!3608502 (= lt!1241615 (lemmaEqSameImage!821 (transformation!5630 (rule!8378 (_1!22068 lt!1241621))) lt!1241614 (seqFromList!4183 (originalCharacters!6344 (_1!22068 lt!1241621)))))))

(declare-fun lt!1241597 () Unit!54106)

(declare-fun lemmaSemiInverse!1387 (TokenValueInjection!11148 BalanceConc!22752) Unit!54106)

(assert (=> b!3608502 (= lt!1241597 (lemmaSemiInverse!1387 (transformation!5630 (rule!8378 (_1!22068 lt!1241621))) lt!1241614))))

(assert (= (and start!335874 res!1459346) b!3608486))

(assert (= (and b!3608486 res!1459354) b!3608483))

(assert (= (and b!3608483 res!1459332) b!3608473))

(assert (= (and b!3608473 res!1459336) b!3608461))

(assert (= (and b!3608461 res!1459333) b!3608500))

(assert (= (and b!3608500 res!1459335) b!3608476))

(assert (= (and b!3608476 res!1459351) b!3608487))

(assert (= (and b!3608487 res!1459338) b!3608481))

(assert (= (and b!3608481 res!1459343) b!3608490))

(assert (= (and b!3608490 res!1459334) b!3608484))

(assert (= (and b!3608484 (not res!1459337)) b!3608472))

(assert (= (and b!3608472 (not res!1459348)) b!3608475))

(assert (= (and b!3608475 (not res!1459345)) b!3608471))

(assert (= (and b!3608471 (not res!1459347)) b!3608477))

(assert (= (and b!3608477 (not res!1459353)) b!3608496))

(assert (= (and b!3608496 res!1459339) b!3608467))

(assert (= (and b!3608467 res!1459349) b!3608468))

(assert (= (and b!3608496 (not res!1459352)) b!3608498))

(assert (= (and b!3608498 (not res!1459344)) b!3608502))

(assert (= (and b!3608502 (not res!1459342)) b!3608492))

(assert (= (and b!3608492 (not res!1459341)) b!3608499))

(assert (= (and b!3608499 c!624320) b!3608482))

(assert (= (and b!3608499 (not c!624320)) b!3608469))

(assert (= (and b!3608499 c!624318) b!3608501))

(assert (= (and b!3608499 (not c!624318)) b!3608463))

(assert (= (and b!3608501 c!624319) b!3608480))

(assert (= (and b!3608501 (not c!624319)) b!3608494))

(assert (= (and b!3608463 c!624321) b!3608497))

(assert (= (and b!3608463 (not c!624321)) b!3608466))

(assert (= (or b!3608480 b!3608497) bm!260833))

(assert (= (or b!3608480 b!3608497) bm!260831))

(assert (= (or b!3608480 b!3608497) bm!260832))

(assert (= (and b!3608499 (not res!1459340)) b!3608465))

(assert (= (and b!3608465 (not res!1459350)) b!3608491))

(assert (= b!3608478 b!3608488))

(assert (= b!3608462 b!3608478))

(assert (= (and start!335874 ((_ is Cons!37973) rules!3307)) b!3608462))

(assert (= (and start!335874 ((_ is Cons!37972) suffix!1395)) b!3608493))

(assert (= b!3608474 b!3608485))

(assert (= b!3608479 b!3608474))

(assert (= start!335874 b!3608479))

(assert (= b!3608495 b!3608489))

(assert (= start!335874 b!3608495))

(assert (= b!3608470 b!3608464))

(assert (= start!335874 b!3608470))

(declare-fun m!4105695 () Bool)

(assert (=> b!3608476 m!4105695))

(declare-fun m!4105697 () Bool)

(assert (=> b!3608476 m!4105697))

(declare-fun m!4105699 () Bool)

(assert (=> b!3608476 m!4105699))

(declare-fun m!4105701 () Bool)

(assert (=> b!3608476 m!4105701))

(declare-fun m!4105703 () Bool)

(assert (=> b!3608492 m!4105703))

(declare-fun m!4105705 () Bool)

(assert (=> b!3608492 m!4105705))

(declare-fun m!4105707 () Bool)

(assert (=> b!3608492 m!4105707))

(declare-fun m!4105709 () Bool)

(assert (=> b!3608492 m!4105709))

(declare-fun m!4105711 () Bool)

(assert (=> b!3608492 m!4105711))

(assert (=> b!3608492 m!4105709))

(declare-fun m!4105713 () Bool)

(assert (=> b!3608492 m!4105713))

(declare-fun m!4105715 () Bool)

(assert (=> b!3608492 m!4105715))

(declare-fun m!4105717 () Bool)

(assert (=> b!3608498 m!4105717))

(declare-fun m!4105719 () Bool)

(assert (=> bm!260832 m!4105719))

(declare-fun m!4105721 () Bool)

(assert (=> b!3608472 m!4105721))

(declare-fun m!4105723 () Bool)

(assert (=> b!3608480 m!4105723))

(declare-fun m!4105725 () Bool)

(assert (=> b!3608470 m!4105725))

(declare-fun m!4105727 () Bool)

(assert (=> b!3608470 m!4105727))

(declare-fun m!4105729 () Bool)

(assert (=> b!3608497 m!4105729))

(declare-fun m!4105731 () Bool)

(assert (=> bm!260833 m!4105731))

(declare-fun m!4105733 () Bool)

(assert (=> b!3608475 m!4105733))

(declare-fun m!4105735 () Bool)

(assert (=> b!3608475 m!4105735))

(declare-fun m!4105737 () Bool)

(assert (=> b!3608475 m!4105737))

(declare-fun m!4105739 () Bool)

(assert (=> b!3608471 m!4105739))

(assert (=> b!3608471 m!4105739))

(declare-fun m!4105741 () Bool)

(assert (=> b!3608471 m!4105741))

(declare-fun m!4105743 () Bool)

(assert (=> b!3608479 m!4105743))

(declare-fun m!4105745 () Bool)

(assert (=> b!3608474 m!4105745))

(declare-fun m!4105747 () Bool)

(assert (=> b!3608474 m!4105747))

(declare-fun m!4105749 () Bool)

(assert (=> b!3608482 m!4105749))

(declare-fun m!4105751 () Bool)

(assert (=> b!3608487 m!4105751))

(declare-fun m!4105753 () Bool)

(assert (=> b!3608483 m!4105753))

(declare-fun m!4105755 () Bool)

(assert (=> bm!260831 m!4105755))

(declare-fun m!4105757 () Bool)

(assert (=> b!3608467 m!4105757))

(assert (=> b!3608467 m!4105757))

(declare-fun m!4105759 () Bool)

(assert (=> b!3608467 m!4105759))

(assert (=> b!3608467 m!4105759))

(declare-fun m!4105761 () Bool)

(assert (=> b!3608467 m!4105761))

(declare-fun m!4105763 () Bool)

(assert (=> b!3608467 m!4105763))

(declare-fun m!4105765 () Bool)

(assert (=> b!3608473 m!4105765))

(declare-fun m!4105767 () Bool)

(assert (=> b!3608481 m!4105767))

(declare-fun m!4105769 () Bool)

(assert (=> b!3608486 m!4105769))

(declare-fun m!4105771 () Bool)

(assert (=> b!3608477 m!4105771))

(declare-fun m!4105773 () Bool)

(assert (=> b!3608495 m!4105773))

(declare-fun m!4105775 () Bool)

(assert (=> b!3608495 m!4105775))

(assert (=> b!3608491 m!4105755))

(assert (=> b!3608491 m!4105755))

(declare-fun m!4105777 () Bool)

(assert (=> b!3608491 m!4105777))

(declare-fun m!4105779 () Bool)

(assert (=> b!3608491 m!4105779))

(declare-fun m!4105781 () Bool)

(assert (=> start!335874 m!4105781))

(declare-fun m!4105783 () Bool)

(assert (=> b!3608484 m!4105783))

(declare-fun m!4105785 () Bool)

(assert (=> b!3608484 m!4105785))

(declare-fun m!4105787 () Bool)

(assert (=> b!3608484 m!4105787))

(declare-fun m!4105789 () Bool)

(assert (=> b!3608499 m!4105789))

(declare-fun m!4105791 () Bool)

(assert (=> b!3608499 m!4105791))

(declare-fun m!4105793 () Bool)

(assert (=> b!3608499 m!4105793))

(declare-fun m!4105795 () Bool)

(assert (=> b!3608478 m!4105795))

(declare-fun m!4105797 () Bool)

(assert (=> b!3608478 m!4105797))

(declare-fun m!4105799 () Bool)

(assert (=> b!3608461 m!4105799))

(declare-fun m!4105801 () Bool)

(assert (=> b!3608502 m!4105801))

(declare-fun m!4105803 () Bool)

(assert (=> b!3608502 m!4105803))

(declare-fun m!4105805 () Bool)

(assert (=> b!3608502 m!4105805))

(assert (=> b!3608502 m!4105801))

(declare-fun m!4105807 () Bool)

(assert (=> b!3608502 m!4105807))

(declare-fun m!4105809 () Bool)

(assert (=> b!3608502 m!4105809))

(declare-fun m!4105811 () Bool)

(assert (=> b!3608502 m!4105811))

(declare-fun m!4105813 () Bool)

(assert (=> b!3608496 m!4105813))

(declare-fun m!4105815 () Bool)

(assert (=> b!3608496 m!4105815))

(declare-fun m!4105817 () Bool)

(assert (=> b!3608496 m!4105817))

(declare-fun m!4105819 () Bool)

(assert (=> b!3608496 m!4105819))

(assert (=> b!3608496 m!4105757))

(declare-fun m!4105821 () Bool)

(assert (=> b!3608496 m!4105821))

(declare-fun m!4105823 () Bool)

(assert (=> b!3608496 m!4105823))

(declare-fun m!4105825 () Bool)

(assert (=> b!3608496 m!4105825))

(declare-fun m!4105827 () Bool)

(assert (=> b!3608496 m!4105827))

(declare-fun m!4105829 () Bool)

(assert (=> b!3608496 m!4105829))

(declare-fun m!4105831 () Bool)

(assert (=> b!3608496 m!4105831))

(assert (=> b!3608496 m!4105819))

(declare-fun m!4105833 () Bool)

(assert (=> b!3608496 m!4105833))

(declare-fun m!4105835 () Bool)

(assert (=> b!3608496 m!4105835))

(declare-fun m!4105837 () Bool)

(assert (=> b!3608496 m!4105837))

(declare-fun m!4105839 () Bool)

(assert (=> b!3608496 m!4105839))

(declare-fun m!4105841 () Bool)

(assert (=> b!3608465 m!4105841))

(declare-fun m!4105843 () Bool)

(assert (=> b!3608465 m!4105843))

(check-sat (not b!3608497) b_and!262933 (not b!3608474) (not b!3608461) (not b_next!94307) (not b_next!94315) (not b!3608496) (not bm!260833) (not b!3608476) (not b!3608472) (not b_next!94319) (not b!3608484) b_and!262931 (not b!3608462) (not b!3608465) (not b!3608475) b_and!262941 (not b!3608470) b_and!262939 (not b!3608493) (not b!3608467) (not b_next!94311) (not b!3608502) b_and!262945 (not b!3608471) (not b!3608473) (not b!3608487) (not b!3608480) tp_is_empty!17861 (not b_next!94305) (not b!3608498) (not b!3608492) (not b!3608499) (not b!3608491) (not b!3608486) (not b!3608478) b_and!262937 (not bm!260831) b_and!262935 (not bm!260832) (not b_next!94317) (not b!3608481) (not b_next!94313) (not b_next!94309) (not start!335874) b_and!262943 (not b!3608483) (not b!3608477) (not b!3608495) (not b!3608479) (not b!3608482))
(check-sat b_and!262933 (not b_next!94307) (not b_next!94311) (not b_next!94315) b_and!262945 (not b_next!94305) (not b_next!94319) b_and!262931 b_and!262937 b_and!262935 (not b_next!94317) b_and!262943 b_and!262941 b_and!262939 (not b_next!94313) (not b_next!94309))
