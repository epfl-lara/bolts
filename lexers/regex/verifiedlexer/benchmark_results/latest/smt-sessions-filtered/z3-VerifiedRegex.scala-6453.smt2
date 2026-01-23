; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337686 () Bool)

(assert start!337686)

(declare-fun b!3624585 () Bool)

(declare-fun b_free!94577 () Bool)

(declare-fun b_next!95281 () Bool)

(assert (=> b!3624585 (= b_free!94577 (not b_next!95281))))

(declare-fun tp!1106887 () Bool)

(declare-fun b_and!265319 () Bool)

(assert (=> b!3624585 (= tp!1106887 b_and!265319)))

(declare-fun b_free!94579 () Bool)

(declare-fun b_next!95283 () Bool)

(assert (=> b!3624585 (= b_free!94579 (not b_next!95283))))

(declare-fun tp!1106890 () Bool)

(declare-fun b_and!265321 () Bool)

(assert (=> b!3624585 (= tp!1106890 b_and!265321)))

(declare-fun b!3624577 () Bool)

(declare-fun b_free!94581 () Bool)

(declare-fun b_next!95285 () Bool)

(assert (=> b!3624577 (= b_free!94581 (not b_next!95285))))

(declare-fun tp!1106892 () Bool)

(declare-fun b_and!265323 () Bool)

(assert (=> b!3624577 (= tp!1106892 b_and!265323)))

(declare-fun b_free!94583 () Bool)

(declare-fun b_next!95287 () Bool)

(assert (=> b!3624577 (= b_free!94583 (not b_next!95287))))

(declare-fun tp!1106897 () Bool)

(declare-fun b_and!265325 () Bool)

(assert (=> b!3624577 (= tp!1106897 b_and!265325)))

(declare-fun b!3624586 () Bool)

(declare-fun b_free!94585 () Bool)

(declare-fun b_next!95289 () Bool)

(assert (=> b!3624586 (= b_free!94585 (not b_next!95289))))

(declare-fun tp!1106898 () Bool)

(declare-fun b_and!265327 () Bool)

(assert (=> b!3624586 (= tp!1106898 b_and!265327)))

(declare-fun b_free!94587 () Bool)

(declare-fun b_next!95291 () Bool)

(assert (=> b!3624586 (= b_free!94587 (not b_next!95291))))

(declare-fun tp!1106896 () Bool)

(declare-fun b_and!265329 () Bool)

(assert (=> b!3624586 (= tp!1106896 b_and!265329)))

(declare-fun b!3624571 () Bool)

(declare-fun b_free!94589 () Bool)

(declare-fun b_next!95293 () Bool)

(assert (=> b!3624571 (= b_free!94589 (not b_next!95293))))

(declare-fun tp!1106891 () Bool)

(declare-fun b_and!265331 () Bool)

(assert (=> b!3624571 (= tp!1106891 b_and!265331)))

(declare-fun b_free!94591 () Bool)

(declare-fun b_next!95295 () Bool)

(assert (=> b!3624571 (= b_free!94591 (not b_next!95295))))

(declare-fun tp!1106888 () Bool)

(declare-fun b_and!265333 () Bool)

(assert (=> b!3624571 (= tp!1106888 b_and!265333)))

(declare-fun b!3624566 () Bool)

(declare-fun e!2243500 () Bool)

(declare-fun e!2243493 () Bool)

(assert (=> b!3624566 (= e!2243500 e!2243493)))

(declare-fun res!1467065 () Bool)

(assert (=> b!3624566 (=> (not res!1467065) (not e!2243493))))

(declare-datatypes ((List!38299 0))(
  ( (Nil!38175) (Cons!38175 (h!43595 (_ BitVec 16)) (t!294514 List!38299)) )
))
(declare-datatypes ((TokenValue!5916 0))(
  ( (FloatLiteralValue!11832 (text!41857 List!38299)) (TokenValueExt!5915 (__x!24049 Int)) (Broken!29580 (value!182485 List!38299)) (Object!6039) (End!5916) (Def!5916) (Underscore!5916) (Match!5916) (Else!5916) (Error!5916) (Case!5916) (If!5916) (Extends!5916) (Abstract!5916) (Class!5916) (Val!5916) (DelimiterValue!11832 (del!5976 List!38299)) (KeywordValue!5922 (value!182486 List!38299)) (CommentValue!11832 (value!182487 List!38299)) (WhitespaceValue!11832 (value!182488 List!38299)) (IndentationValue!5916 (value!182489 List!38299)) (String!42913) (Int32!5916) (Broken!29581 (value!182490 List!38299)) (Boolean!5917) (Unit!54925) (OperatorValue!5919 (op!5976 List!38299)) (IdentifierValue!11832 (value!182491 List!38299)) (IdentifierValue!11833 (value!182492 List!38299)) (WhitespaceValue!11833 (value!182493 List!38299)) (True!11832) (False!11832) (Broken!29582 (value!182494 List!38299)) (Broken!29583 (value!182495 List!38299)) (True!11833) (RightBrace!5916) (RightBracket!5916) (Colon!5916) (Null!5916) (Comma!5916) (LeftBracket!5916) (False!11833) (LeftBrace!5916) (ImaginaryLiteralValue!5916 (text!41858 List!38299)) (StringLiteralValue!17748 (value!182496 List!38299)) (EOFValue!5916 (value!182497 List!38299)) (IdentValue!5916 (value!182498 List!38299)) (DelimiterValue!11833 (value!182499 List!38299)) (DedentValue!5916 (value!182500 List!38299)) (NewLineValue!5916 (value!182501 List!38299)) (IntegerValue!17748 (value!182502 (_ BitVec 32)) (text!41859 List!38299)) (IntegerValue!17749 (value!182503 Int) (text!41860 List!38299)) (Times!5916) (Or!5916) (Equal!5916) (Minus!5916) (Broken!29584 (value!182504 List!38299)) (And!5916) (Div!5916) (LessEqual!5916) (Mod!5916) (Concat!16361) (Not!5916) (Plus!5916) (SpaceValue!5916 (value!182505 List!38299)) (IntegerValue!17750 (value!182506 Int) (text!41861 List!38299)) (StringLiteralValue!17749 (text!41862 List!38299)) (FloatLiteralValue!11833 (text!41863 List!38299)) (BytesLiteralValue!5916 (value!182507 List!38299)) (CommentValue!11833 (value!182508 List!38299)) (StringLiteralValue!17750 (value!182509 List!38299)) (ErrorTokenValue!5916 (msg!5977 List!38299)) )
))
(declare-datatypes ((String!42914 0))(
  ( (String!42915 (value!182510 String)) )
))
(declare-datatypes ((C!21076 0))(
  ( (C!21077 (val!12586 Int)) )
))
(declare-datatypes ((Regex!10445 0))(
  ( (ElementMatch!10445 (c!627206 C!21076)) (Concat!16362 (regOne!21402 Regex!10445) (regTwo!21402 Regex!10445)) (EmptyExpr!10445) (Star!10445 (reg!10774 Regex!10445)) (EmptyLang!10445) (Union!10445 (regOne!21403 Regex!10445) (regTwo!21403 Regex!10445)) )
))
(declare-datatypes ((List!38300 0))(
  ( (Nil!38176) (Cons!38176 (h!43596 C!21076) (t!294515 List!38300)) )
))
(declare-datatypes ((IArray!23291 0))(
  ( (IArray!23292 (innerList!11703 List!38300)) )
))
(declare-datatypes ((Conc!11643 0))(
  ( (Node!11643 (left!29804 Conc!11643) (right!30134 Conc!11643) (csize!23516 Int) (cheight!11854 Int)) (Leaf!18097 (xs!14845 IArray!23291) (csize!23517 Int)) (Empty!11643) )
))
(declare-datatypes ((BalanceConc!22900 0))(
  ( (BalanceConc!22901 (c!627207 Conc!11643)) )
))
(declare-datatypes ((TokenValueInjection!11260 0))(
  ( (TokenValueInjection!11261 (toValue!7974 Int) (toChars!7833 Int)) )
))
(declare-datatypes ((Rule!11172 0))(
  ( (Rule!11173 (regex!5686 Regex!10445) (tag!6408 String!42914) (isSeparator!5686 Bool) (transformation!5686 TokenValueInjection!11260)) )
))
(declare-datatypes ((Token!10738 0))(
  ( (Token!10739 (value!182511 TokenValue!5916) (rule!8450 Rule!11172) (size!29121 Int) (originalCharacters!6400 List!38300)) )
))
(declare-datatypes ((tuple2!38052 0))(
  ( (tuple2!38053 (_1!22160 Token!10738) (_2!22160 List!38300)) )
))
(declare-fun lt!1252745 () tuple2!38052)

(declare-fun token!511 () Token!10738)

(assert (=> b!3624566 (= res!1467065 (= (_1!22160 lt!1252745) token!511))))

(declare-datatypes ((Option!8002 0))(
  ( (None!8001) (Some!8001 (v!37775 tuple2!38052)) )
))
(declare-fun lt!1252733 () Option!8002)

(declare-fun get!12455 (Option!8002) tuple2!38052)

(assert (=> b!3624566 (= lt!1252745 (get!12455 lt!1252733))))

(declare-fun b!3624567 () Bool)

(declare-fun e!2243504 () Bool)

(declare-fun e!2243507 () Bool)

(declare-fun tp!1106893 () Bool)

(declare-fun inv!51577 (String!42914) Bool)

(declare-fun inv!51580 (TokenValueInjection!11260) Bool)

(assert (=> b!3624567 (= e!2243504 (and tp!1106893 (inv!51577 (tag!6408 (rule!8450 token!511))) (inv!51580 (transformation!5686 (rule!8450 token!511))) e!2243507))))

(declare-fun b!3624568 () Bool)

(declare-fun res!1467066 () Bool)

(declare-fun e!2243492 () Bool)

(assert (=> b!3624568 (=> res!1467066 e!2243492)))

(declare-fun anOtherTypeRule!33 () Rule!11172)

(declare-fun lt!1252737 () C!21076)

(declare-fun contains!7437 (List!38300 C!21076) Bool)

(declare-fun usedCharacters!900 (Regex!10445) List!38300)

(assert (=> b!3624568 (= res!1467066 (not (contains!7437 (usedCharacters!900 (regex!5686 anOtherTypeRule!33)) lt!1252737)))))

(declare-fun b!3624569 () Bool)

(declare-fun res!1467075 () Bool)

(declare-fun e!2243490 () Bool)

(assert (=> b!3624569 (=> (not res!1467075) (not e!2243490))))

(declare-datatypes ((LexerInterface!5275 0))(
  ( (LexerInterfaceExt!5272 (__x!24050 Int)) (Lexer!5273) )
))
(declare-fun thiss!23823 () LexerInterface!5275)

(declare-datatypes ((List!38301 0))(
  ( (Nil!38177) (Cons!38177 (h!43597 Rule!11172) (t!294516 List!38301)) )
))
(declare-fun rules!3307 () List!38301)

(declare-fun rulesInvariant!4672 (LexerInterface!5275 List!38301) Bool)

(assert (=> b!3624569 (= res!1467075 (rulesInvariant!4672 thiss!23823 rules!3307))))

(declare-fun b!3624570 () Bool)

(declare-fun e!2243508 () Bool)

(declare-fun e!2243502 () Bool)

(declare-fun tp!1106894 () Bool)

(assert (=> b!3624570 (= e!2243508 (and e!2243502 tp!1106894))))

(declare-fun e!2243509 () Bool)

(assert (=> b!3624571 (= e!2243509 (and tp!1106891 tp!1106888))))

(declare-fun b!3624572 () Bool)

(declare-fun e!2243494 () Bool)

(declare-fun tp_is_empty!17973 () Bool)

(declare-fun tp!1106886 () Bool)

(assert (=> b!3624572 (= e!2243494 (and tp_is_empty!17973 tp!1106886))))

(declare-fun b!3624573 () Bool)

(declare-fun e!2243496 () Bool)

(assert (=> b!3624573 (= e!2243493 (not e!2243496))))

(declare-fun res!1467080 () Bool)

(assert (=> b!3624573 (=> res!1467080 e!2243496)))

(declare-fun rule!403 () Rule!11172)

(declare-fun lt!1252736 () List!38300)

(declare-fun matchR!5014 (Regex!10445 List!38300) Bool)

(assert (=> b!3624573 (= res!1467080 (not (matchR!5014 (regex!5686 rule!403) lt!1252736)))))

(declare-fun ruleValid!1951 (LexerInterface!5275 Rule!11172) Bool)

(assert (=> b!3624573 (ruleValid!1951 thiss!23823 rule!403)))

(declare-datatypes ((Unit!54926 0))(
  ( (Unit!54927) )
))
(declare-fun lt!1252738 () Unit!54926)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1106 (LexerInterface!5275 Rule!11172 List!38301) Unit!54926)

(assert (=> b!3624573 (= lt!1252738 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1106 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3624574 () Bool)

(declare-fun res!1467067 () Bool)

(assert (=> b!3624574 (=> res!1467067 e!2243496)))

(declare-fun suffix!1395 () List!38300)

(declare-fun isEmpty!22568 (List!38300) Bool)

(assert (=> b!3624574 (= res!1467067 (isEmpty!22568 suffix!1395))))

(declare-fun b!3624575 () Bool)

(declare-fun res!1467079 () Bool)

(assert (=> b!3624575 (=> (not res!1467079) (not e!2243490))))

(assert (=> b!3624575 (= res!1467079 (not (= (isSeparator!5686 anOtherTypeRule!33) (isSeparator!5686 rule!403))))))

(declare-fun e!2243505 () Bool)

(assert (=> b!3624577 (= e!2243505 (and tp!1106892 tp!1106897))))

(declare-fun b!3624578 () Bool)

(declare-fun e!2243510 () Bool)

(declare-fun e!2243499 () Bool)

(assert (=> b!3624578 (= e!2243510 e!2243499)))

(declare-fun res!1467081 () Bool)

(assert (=> b!3624578 (=> (not res!1467081) (not e!2243499))))

(declare-fun lt!1252746 () Rule!11172)

(declare-fun lt!1252739 () tuple2!38052)

(declare-fun list!14098 (BalanceConc!22900) List!38300)

(declare-fun charsOf!3700 (Token!10738) BalanceConc!22900)

(assert (=> b!3624578 (= res!1467081 (matchR!5014 (regex!5686 lt!1252746) (list!14098 (charsOf!3700 (_1!22160 lt!1252739)))))))

(declare-datatypes ((Option!8003 0))(
  ( (None!8002) (Some!8002 (v!37776 Rule!11172)) )
))
(declare-fun lt!1252731 () Option!8003)

(declare-fun get!12456 (Option!8003) Rule!11172)

(assert (=> b!3624578 (= lt!1252746 (get!12456 lt!1252731))))

(declare-fun b!3624579 () Bool)

(declare-fun res!1467074 () Bool)

(assert (=> b!3624579 (=> (not res!1467074) (not e!2243490))))

(declare-fun contains!7438 (List!38301 Rule!11172) Bool)

(assert (=> b!3624579 (= res!1467074 (contains!7438 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3624580 () Bool)

(assert (=> b!3624580 (= e!2243496 e!2243492)))

(declare-fun res!1467069 () Bool)

(assert (=> b!3624580 (=> res!1467069 e!2243492)))

(assert (=> b!3624580 (= res!1467069 (contains!7437 (usedCharacters!900 (regex!5686 rule!403)) lt!1252737))))

(declare-fun head!7660 (List!38300) C!21076)

(assert (=> b!3624580 (= lt!1252737 (head!7660 suffix!1395))))

(declare-fun b!3624581 () Bool)

(declare-fun e!2243495 () Bool)

(assert (=> b!3624581 (= e!2243492 e!2243495)))

(declare-fun res!1467071 () Bool)

(assert (=> b!3624581 (=> res!1467071 e!2243495)))

(declare-fun lt!1252734 () List!38300)

(declare-fun lt!1252735 () List!38300)

(declare-fun isPrefix!3049 (List!38300 List!38300) Bool)

(assert (=> b!3624581 (= res!1467071 (not (isPrefix!3049 lt!1252734 lt!1252735)))))

(declare-fun ++!9502 (List!38300 List!38300) List!38300)

(assert (=> b!3624581 (isPrefix!3049 lt!1252734 (++!9502 lt!1252734 (_2!22160 lt!1252739)))))

(declare-fun lt!1252729 () Unit!54926)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1970 (List!38300 List!38300) Unit!54926)

(assert (=> b!3624581 (= lt!1252729 (lemmaConcatTwoListThenFirstIsPrefix!1970 lt!1252734 (_2!22160 lt!1252739)))))

(declare-fun lt!1252730 () BalanceConc!22900)

(assert (=> b!3624581 (= lt!1252734 (list!14098 lt!1252730))))

(assert (=> b!3624581 (= lt!1252730 (charsOf!3700 (_1!22160 lt!1252739)))))

(assert (=> b!3624581 e!2243510))

(declare-fun res!1467073 () Bool)

(assert (=> b!3624581 (=> (not res!1467073) (not e!2243510))))

(declare-fun isDefined!6234 (Option!8003) Bool)

(assert (=> b!3624581 (= res!1467073 (isDefined!6234 lt!1252731))))

(declare-fun getRuleFromTag!1292 (LexerInterface!5275 List!38301 String!42914) Option!8003)

(assert (=> b!3624581 (= lt!1252731 (getRuleFromTag!1292 thiss!23823 rules!3307 (tag!6408 (rule!8450 (_1!22160 lt!1252739)))))))

(declare-fun lt!1252741 () Unit!54926)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1292 (LexerInterface!5275 List!38301 List!38300 Token!10738) Unit!54926)

(assert (=> b!3624581 (= lt!1252741 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1292 thiss!23823 rules!3307 lt!1252735 (_1!22160 lt!1252739)))))

(declare-fun lt!1252725 () Option!8002)

(assert (=> b!3624581 (= lt!1252739 (get!12455 lt!1252725))))

(declare-fun lt!1252728 () Unit!54926)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!955 (LexerInterface!5275 List!38301 List!38300 List!38300) Unit!54926)

(assert (=> b!3624581 (= lt!1252728 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!955 thiss!23823 rules!3307 lt!1252736 suffix!1395))))

(declare-fun maxPrefix!2809 (LexerInterface!5275 List!38301 List!38300) Option!8002)

(assert (=> b!3624581 (= lt!1252725 (maxPrefix!2809 thiss!23823 rules!3307 lt!1252735))))

(assert (=> b!3624581 (isPrefix!3049 lt!1252736 lt!1252735)))

(declare-fun lt!1252744 () Unit!54926)

(assert (=> b!3624581 (= lt!1252744 (lemmaConcatTwoListThenFirstIsPrefix!1970 lt!1252736 suffix!1395))))

(assert (=> b!3624581 (= lt!1252735 (++!9502 lt!1252736 suffix!1395))))

(declare-fun b!3624582 () Bool)

(assert (=> b!3624582 (= e!2243499 (= (rule!8450 (_1!22160 lt!1252739)) lt!1252746))))

(declare-fun tp!1106899 () Bool)

(declare-fun e!2243497 () Bool)

(declare-fun b!3624583 () Bool)

(assert (=> b!3624583 (= e!2243497 (and tp!1106899 (inv!51577 (tag!6408 anOtherTypeRule!33)) (inv!51580 (transformation!5686 anOtherTypeRule!33)) e!2243505))))

(declare-fun b!3624584 () Bool)

(declare-fun res!1467064 () Bool)

(assert (=> b!3624584 (=> (not res!1467064) (not e!2243493))))

(assert (=> b!3624584 (= res!1467064 (isEmpty!22568 (_2!22160 lt!1252745)))))

(declare-fun e!2243503 () Bool)

(assert (=> b!3624585 (= e!2243503 (and tp!1106887 tp!1106890))))

(assert (=> b!3624586 (= e!2243507 (and tp!1106898 tp!1106896))))

(declare-fun e!2243501 () Bool)

(declare-fun tp!1106900 () Bool)

(declare-fun b!3624587 () Bool)

(declare-fun inv!21 (TokenValue!5916) Bool)

(assert (=> b!3624587 (= e!2243501 (and (inv!21 (value!182511 token!511)) e!2243504 tp!1106900))))

(declare-fun tp!1106889 () Bool)

(declare-fun b!3624588 () Bool)

(declare-fun e!2243511 () Bool)

(assert (=> b!3624588 (= e!2243511 (and tp!1106889 (inv!51577 (tag!6408 rule!403)) (inv!51580 (transformation!5686 rule!403)) e!2243503))))

(declare-fun b!3624589 () Bool)

(declare-fun e!2243498 () Bool)

(declare-fun lt!1252740 () List!38300)

(assert (=> b!3624589 (= e!2243498 (= lt!1252740 (_2!22160 lt!1252739)))))

(assert (=> b!3624589 (= (_2!22160 lt!1252739) lt!1252740)))

(declare-fun lt!1252732 () Unit!54926)

(declare-fun lemmaSamePrefixThenSameSuffix!1396 (List!38300 List!38300 List!38300 List!38300 List!38300) Unit!54926)

(assert (=> b!3624589 (= lt!1252732 (lemmaSamePrefixThenSameSuffix!1396 lt!1252734 (_2!22160 lt!1252739) lt!1252734 lt!1252740 lt!1252735))))

(declare-fun getSuffix!1616 (List!38300 List!38300) List!38300)

(assert (=> b!3624589 (= lt!1252740 (getSuffix!1616 lt!1252735 lt!1252734))))

(declare-fun maxPrefixOneRule!1949 (LexerInterface!5275 Rule!11172 List!38300) Option!8002)

(declare-fun apply!9188 (TokenValueInjection!11260 BalanceConc!22900) TokenValue!5916)

(declare-fun seqFromList!4235 (List!38300) BalanceConc!22900)

(declare-fun size!29122 (List!38300) Int)

(assert (=> b!3624589 (= (maxPrefixOneRule!1949 thiss!23823 (rule!8450 (_1!22160 lt!1252739)) lt!1252735) (Some!8001 (tuple2!38053 (Token!10739 (apply!9188 (transformation!5686 (rule!8450 (_1!22160 lt!1252739))) (seqFromList!4235 lt!1252734)) (rule!8450 (_1!22160 lt!1252739)) (size!29122 lt!1252734) lt!1252734) (_2!22160 lt!1252739))))))

(declare-fun lt!1252726 () Unit!54926)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1017 (LexerInterface!5275 List!38301 List!38300 List!38300 List!38300 Rule!11172) Unit!54926)

(assert (=> b!3624589 (= lt!1252726 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1017 thiss!23823 rules!3307 lt!1252734 lt!1252735 (_2!22160 lt!1252739) (rule!8450 (_1!22160 lt!1252739))))))

(declare-fun b!3624590 () Bool)

(declare-fun res!1467076 () Bool)

(assert (=> b!3624590 (=> (not res!1467076) (not e!2243490))))

(assert (=> b!3624590 (= res!1467076 (contains!7438 rules!3307 rule!403))))

(declare-fun b!3624591 () Bool)

(declare-fun res!1467082 () Bool)

(assert (=> b!3624591 (=> res!1467082 e!2243495)))

(assert (=> b!3624591 (= res!1467082 (not (matchR!5014 (regex!5686 (rule!8450 (_1!22160 lt!1252739))) lt!1252734)))))

(declare-fun b!3624592 () Bool)

(declare-fun res!1467068 () Bool)

(assert (=> b!3624592 (=> (not res!1467068) (not e!2243493))))

(assert (=> b!3624592 (= res!1467068 (= (rule!8450 token!511) rule!403))))

(declare-fun b!3624593 () Bool)

(declare-fun res!1467063 () Bool)

(assert (=> b!3624593 (=> res!1467063 e!2243492)))

(declare-fun sepAndNonSepRulesDisjointChars!1856 (List!38301 List!38301) Bool)

(assert (=> b!3624593 (= res!1467063 (not (sepAndNonSepRulesDisjointChars!1856 rules!3307 rules!3307)))))

(declare-fun b!3624594 () Bool)

(assert (=> b!3624594 (= e!2243490 e!2243500)))

(declare-fun res!1467070 () Bool)

(assert (=> b!3624594 (=> (not res!1467070) (not e!2243500))))

(declare-fun isDefined!6235 (Option!8002) Bool)

(assert (=> b!3624594 (= res!1467070 (isDefined!6235 lt!1252733))))

(assert (=> b!3624594 (= lt!1252733 (maxPrefix!2809 thiss!23823 rules!3307 lt!1252736))))

(assert (=> b!3624594 (= lt!1252736 (list!14098 (charsOf!3700 token!511)))))

(declare-fun b!3624595 () Bool)

(declare-fun tp!1106895 () Bool)

(assert (=> b!3624595 (= e!2243502 (and tp!1106895 (inv!51577 (tag!6408 (h!43597 rules!3307))) (inv!51580 (transformation!5686 (h!43597 rules!3307))) e!2243509))))

(declare-fun b!3624596 () Bool)

(assert (=> b!3624596 (= e!2243495 e!2243498)))

(declare-fun res!1467078 () Bool)

(assert (=> b!3624596 (=> res!1467078 e!2243498)))

(declare-fun size!29123 (BalanceConc!22900) Int)

(assert (=> b!3624596 (= res!1467078 (not (= lt!1252725 (Some!8001 (tuple2!38053 (Token!10739 (apply!9188 (transformation!5686 (rule!8450 (_1!22160 lt!1252739))) lt!1252730) (rule!8450 (_1!22160 lt!1252739)) (size!29123 lt!1252730) lt!1252734) (_2!22160 lt!1252739))))))))

(declare-fun lt!1252743 () Unit!54926)

(declare-fun lemmaCharactersSize!733 (Token!10738) Unit!54926)

(assert (=> b!3624596 (= lt!1252743 (lemmaCharactersSize!733 (_1!22160 lt!1252739)))))

(declare-fun lt!1252742 () Unit!54926)

(declare-fun lemmaEqSameImage!871 (TokenValueInjection!11260 BalanceConc!22900 BalanceConc!22900) Unit!54926)

(assert (=> b!3624596 (= lt!1252742 (lemmaEqSameImage!871 (transformation!5686 (rule!8450 (_1!22160 lt!1252739))) lt!1252730 (seqFromList!4235 (originalCharacters!6400 (_1!22160 lt!1252739)))))))

(declare-fun lt!1252727 () Unit!54926)

(declare-fun lemmaSemiInverse!1437 (TokenValueInjection!11260 BalanceConc!22900) Unit!54926)

(assert (=> b!3624596 (= lt!1252727 (lemmaSemiInverse!1437 (transformation!5686 (rule!8450 (_1!22160 lt!1252739))) lt!1252730))))

(declare-fun res!1467077 () Bool)

(assert (=> start!337686 (=> (not res!1467077) (not e!2243490))))

(get-info :version)

(assert (=> start!337686 (= res!1467077 ((_ is Lexer!5273) thiss!23823))))

(assert (=> start!337686 e!2243490))

(assert (=> start!337686 e!2243508))

(assert (=> start!337686 e!2243494))

(assert (=> start!337686 true))

(declare-fun inv!51581 (Token!10738) Bool)

(assert (=> start!337686 (and (inv!51581 token!511) e!2243501)))

(assert (=> start!337686 e!2243511))

(assert (=> start!337686 e!2243497))

(declare-fun b!3624576 () Bool)

(declare-fun res!1467072 () Bool)

(assert (=> b!3624576 (=> (not res!1467072) (not e!2243490))))

(declare-fun isEmpty!22569 (List!38301) Bool)

(assert (=> b!3624576 (= res!1467072 (not (isEmpty!22569 rules!3307)))))

(assert (= (and start!337686 res!1467077) b!3624576))

(assert (= (and b!3624576 res!1467072) b!3624569))

(assert (= (and b!3624569 res!1467075) b!3624590))

(assert (= (and b!3624590 res!1467076) b!3624579))

(assert (= (and b!3624579 res!1467074) b!3624575))

(assert (= (and b!3624575 res!1467079) b!3624594))

(assert (= (and b!3624594 res!1467070) b!3624566))

(assert (= (and b!3624566 res!1467065) b!3624584))

(assert (= (and b!3624584 res!1467064) b!3624592))

(assert (= (and b!3624592 res!1467068) b!3624573))

(assert (= (and b!3624573 (not res!1467080)) b!3624574))

(assert (= (and b!3624574 (not res!1467067)) b!3624580))

(assert (= (and b!3624580 (not res!1467069)) b!3624568))

(assert (= (and b!3624568 (not res!1467066)) b!3624593))

(assert (= (and b!3624593 (not res!1467063)) b!3624581))

(assert (= (and b!3624581 res!1467073) b!3624578))

(assert (= (and b!3624578 res!1467081) b!3624582))

(assert (= (and b!3624581 (not res!1467071)) b!3624591))

(assert (= (and b!3624591 (not res!1467082)) b!3624596))

(assert (= (and b!3624596 (not res!1467078)) b!3624589))

(assert (= b!3624595 b!3624571))

(assert (= b!3624570 b!3624595))

(assert (= (and start!337686 ((_ is Cons!38177) rules!3307)) b!3624570))

(assert (= (and start!337686 ((_ is Cons!38176) suffix!1395)) b!3624572))

(assert (= b!3624567 b!3624586))

(assert (= b!3624587 b!3624567))

(assert (= start!337686 b!3624587))

(assert (= b!3624588 b!3624585))

(assert (= start!337686 b!3624588))

(assert (= b!3624583 b!3624577))

(assert (= start!337686 b!3624583))

(declare-fun m!4124921 () Bool)

(assert (=> b!3624580 m!4124921))

(assert (=> b!3624580 m!4124921))

(declare-fun m!4124923 () Bool)

(assert (=> b!3624580 m!4124923))

(declare-fun m!4124925 () Bool)

(assert (=> b!3624580 m!4124925))

(declare-fun m!4124927 () Bool)

(assert (=> b!3624579 m!4124927))

(declare-fun m!4124929 () Bool)

(assert (=> b!3624574 m!4124929))

(declare-fun m!4124931 () Bool)

(assert (=> b!3624566 m!4124931))

(declare-fun m!4124933 () Bool)

(assert (=> b!3624569 m!4124933))

(declare-fun m!4124935 () Bool)

(assert (=> b!3624567 m!4124935))

(declare-fun m!4124937 () Bool)

(assert (=> b!3624567 m!4124937))

(declare-fun m!4124939 () Bool)

(assert (=> b!3624594 m!4124939))

(declare-fun m!4124941 () Bool)

(assert (=> b!3624594 m!4124941))

(declare-fun m!4124943 () Bool)

(assert (=> b!3624594 m!4124943))

(assert (=> b!3624594 m!4124943))

(declare-fun m!4124945 () Bool)

(assert (=> b!3624594 m!4124945))

(declare-fun m!4124947 () Bool)

(assert (=> b!3624593 m!4124947))

(declare-fun m!4124949 () Bool)

(assert (=> b!3624578 m!4124949))

(assert (=> b!3624578 m!4124949))

(declare-fun m!4124951 () Bool)

(assert (=> b!3624578 m!4124951))

(assert (=> b!3624578 m!4124951))

(declare-fun m!4124953 () Bool)

(assert (=> b!3624578 m!4124953))

(declare-fun m!4124955 () Bool)

(assert (=> b!3624578 m!4124955))

(declare-fun m!4124957 () Bool)

(assert (=> b!3624596 m!4124957))

(declare-fun m!4124959 () Bool)

(assert (=> b!3624596 m!4124959))

(declare-fun m!4124961 () Bool)

(assert (=> b!3624596 m!4124961))

(assert (=> b!3624596 m!4124957))

(declare-fun m!4124963 () Bool)

(assert (=> b!3624596 m!4124963))

(declare-fun m!4124965 () Bool)

(assert (=> b!3624596 m!4124965))

(declare-fun m!4124967 () Bool)

(assert (=> b!3624596 m!4124967))

(declare-fun m!4124969 () Bool)

(assert (=> b!3624568 m!4124969))

(assert (=> b!3624568 m!4124969))

(declare-fun m!4124971 () Bool)

(assert (=> b!3624568 m!4124971))

(declare-fun m!4124973 () Bool)

(assert (=> b!3624591 m!4124973))

(declare-fun m!4124975 () Bool)

(assert (=> b!3624595 m!4124975))

(declare-fun m!4124977 () Bool)

(assert (=> b!3624595 m!4124977))

(declare-fun m!4124979 () Bool)

(assert (=> b!3624587 m!4124979))

(declare-fun m!4124981 () Bool)

(assert (=> b!3624576 m!4124981))

(declare-fun m!4124983 () Bool)

(assert (=> b!3624583 m!4124983))

(declare-fun m!4124985 () Bool)

(assert (=> b!3624583 m!4124985))

(declare-fun m!4124987 () Bool)

(assert (=> b!3624590 m!4124987))

(declare-fun m!4124989 () Bool)

(assert (=> start!337686 m!4124989))

(declare-fun m!4124991 () Bool)

(assert (=> b!3624581 m!4124991))

(declare-fun m!4124993 () Bool)

(assert (=> b!3624581 m!4124993))

(declare-fun m!4124995 () Bool)

(assert (=> b!3624581 m!4124995))

(declare-fun m!4124997 () Bool)

(assert (=> b!3624581 m!4124997))

(declare-fun m!4124999 () Bool)

(assert (=> b!3624581 m!4124999))

(declare-fun m!4125001 () Bool)

(assert (=> b!3624581 m!4125001))

(declare-fun m!4125003 () Bool)

(assert (=> b!3624581 m!4125003))

(assert (=> b!3624581 m!4124995))

(declare-fun m!4125005 () Bool)

(assert (=> b!3624581 m!4125005))

(declare-fun m!4125007 () Bool)

(assert (=> b!3624581 m!4125007))

(declare-fun m!4125009 () Bool)

(assert (=> b!3624581 m!4125009))

(declare-fun m!4125011 () Bool)

(assert (=> b!3624581 m!4125011))

(declare-fun m!4125013 () Bool)

(assert (=> b!3624581 m!4125013))

(assert (=> b!3624581 m!4124949))

(declare-fun m!4125015 () Bool)

(assert (=> b!3624581 m!4125015))

(declare-fun m!4125017 () Bool)

(assert (=> b!3624581 m!4125017))

(declare-fun m!4125019 () Bool)

(assert (=> b!3624588 m!4125019))

(declare-fun m!4125021 () Bool)

(assert (=> b!3624588 m!4125021))

(declare-fun m!4125023 () Bool)

(assert (=> b!3624584 m!4125023))

(declare-fun m!4125025 () Bool)

(assert (=> b!3624573 m!4125025))

(declare-fun m!4125027 () Bool)

(assert (=> b!3624573 m!4125027))

(declare-fun m!4125029 () Bool)

(assert (=> b!3624573 m!4125029))

(declare-fun m!4125031 () Bool)

(assert (=> b!3624589 m!4125031))

(declare-fun m!4125033 () Bool)

(assert (=> b!3624589 m!4125033))

(assert (=> b!3624589 m!4125031))

(declare-fun m!4125035 () Bool)

(assert (=> b!3624589 m!4125035))

(declare-fun m!4125037 () Bool)

(assert (=> b!3624589 m!4125037))

(declare-fun m!4125039 () Bool)

(assert (=> b!3624589 m!4125039))

(declare-fun m!4125041 () Bool)

(assert (=> b!3624589 m!4125041))

(declare-fun m!4125043 () Bool)

(assert (=> b!3624589 m!4125043))

(check-sat (not b!3624590) (not b!3624594) (not b_next!95295) b_and!265333 b_and!265331 (not b_next!95285) (not b!3624578) (not b!3624572) b_and!265319 (not b!3624595) (not b!3624588) (not b!3624576) b_and!265323 (not b_next!95281) (not b!3624568) (not b_next!95287) b_and!265329 b_and!265321 (not b_next!95293) (not b!3624587) (not b!3624591) (not b_next!95289) (not b!3624579) (not b!3624596) (not b!3624584) (not b!3624580) b_and!265327 (not b!3624570) (not b!3624589) (not b_next!95283) (not b!3624567) (not start!337686) (not b!3624569) tp_is_empty!17973 (not b!3624583) (not b!3624574) (not b!3624581) (not b!3624593) (not b_next!95291) (not b!3624573) (not b!3624566) b_and!265325)
(check-sat (not b_next!95287) (not b_next!95295) b_and!265327 b_and!265333 b_and!265331 (not b_next!95283) (not b_next!95285) b_and!265319 (not b_next!95291) b_and!265323 b_and!265325 (not b_next!95281) b_and!265329 b_and!265321 (not b_next!95293) (not b_next!95289))
