; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!119976 () Bool)

(assert start!119976)

(declare-fun b!1342627 () Bool)

(declare-fun b_free!32735 () Bool)

(declare-fun b_next!33439 () Bool)

(assert (=> b!1342627 (= b_free!32735 (not b_next!33439))))

(declare-fun tp!388769 () Bool)

(declare-fun b_and!89871 () Bool)

(assert (=> b!1342627 (= tp!388769 b_and!89871)))

(declare-fun b_free!32737 () Bool)

(declare-fun b_next!33441 () Bool)

(assert (=> b!1342627 (= b_free!32737 (not b_next!33441))))

(declare-fun tp!388763 () Bool)

(declare-fun b_and!89873 () Bool)

(assert (=> b!1342627 (= tp!388763 b_and!89873)))

(declare-fun b!1342634 () Bool)

(declare-fun b_free!32739 () Bool)

(declare-fun b_next!33443 () Bool)

(assert (=> b!1342634 (= b_free!32739 (not b_next!33443))))

(declare-fun tp!388767 () Bool)

(declare-fun b_and!89875 () Bool)

(assert (=> b!1342634 (= tp!388767 b_and!89875)))

(declare-fun b_free!32741 () Bool)

(declare-fun b_next!33445 () Bool)

(assert (=> b!1342634 (= b_free!32741 (not b_next!33445))))

(declare-fun tp!388764 () Bool)

(declare-fun b_and!89877 () Bool)

(assert (=> b!1342634 (= tp!388764 b_and!89877)))

(declare-fun b!1342631 () Bool)

(declare-fun b_free!32743 () Bool)

(declare-fun b_next!33447 () Bool)

(assert (=> b!1342631 (= b_free!32743 (not b_next!33447))))

(declare-fun tp!388766 () Bool)

(declare-fun b_and!89879 () Bool)

(assert (=> b!1342631 (= tp!388766 b_and!89879)))

(declare-fun b_free!32745 () Bool)

(declare-fun b_next!33449 () Bool)

(assert (=> b!1342631 (= b_free!32745 (not b_next!33449))))

(declare-fun tp!388770 () Bool)

(declare-fun b_and!89881 () Bool)

(assert (=> b!1342631 (= tp!388770 b_and!89881)))

(declare-fun b!1342646 () Bool)

(assert (=> b!1342646 true))

(assert (=> b!1342646 true))

(declare-fun b!1342630 () Bool)

(assert (=> b!1342630 true))

(declare-fun b!1342620 () Bool)

(declare-fun res!604974 () Bool)

(declare-fun e!859831 () Bool)

(assert (=> b!1342620 (=> (not res!604974) (not e!859831))))

(declare-datatypes ((List!13785 0))(
  ( (Nil!13719) (Cons!13719 (h!19120 (_ BitVec 16)) (t!119584 List!13785)) )
))
(declare-datatypes ((TokenValue!2468 0))(
  ( (FloatLiteralValue!4936 (text!17721 List!13785)) (TokenValueExt!2467 (__x!8765 Int)) (Broken!12340 (value!77381 List!13785)) (Object!2533) (End!2468) (Def!2468) (Underscore!2468) (Match!2468) (Else!2468) (Error!2468) (Case!2468) (If!2468) (Extends!2468) (Abstract!2468) (Class!2468) (Val!2468) (DelimiterValue!4936 (del!2528 List!13785)) (KeywordValue!2474 (value!77382 List!13785)) (CommentValue!4936 (value!77383 List!13785)) (WhitespaceValue!4936 (value!77384 List!13785)) (IndentationValue!2468 (value!77385 List!13785)) (String!16577) (Int32!2468) (Broken!12341 (value!77386 List!13785)) (Boolean!2469) (Unit!19833) (OperatorValue!2471 (op!2528 List!13785)) (IdentifierValue!4936 (value!77387 List!13785)) (IdentifierValue!4937 (value!77388 List!13785)) (WhitespaceValue!4937 (value!77389 List!13785)) (True!4936) (False!4936) (Broken!12342 (value!77390 List!13785)) (Broken!12343 (value!77391 List!13785)) (True!4937) (RightBrace!2468) (RightBracket!2468) (Colon!2468) (Null!2468) (Comma!2468) (LeftBracket!2468) (False!4937) (LeftBrace!2468) (ImaginaryLiteralValue!2468 (text!17722 List!13785)) (StringLiteralValue!7404 (value!77392 List!13785)) (EOFValue!2468 (value!77393 List!13785)) (IdentValue!2468 (value!77394 List!13785)) (DelimiterValue!4937 (value!77395 List!13785)) (DedentValue!2468 (value!77396 List!13785)) (NewLineValue!2468 (value!77397 List!13785)) (IntegerValue!7404 (value!77398 (_ BitVec 32)) (text!17723 List!13785)) (IntegerValue!7405 (value!77399 Int) (text!17724 List!13785)) (Times!2468) (Or!2468) (Equal!2468) (Minus!2468) (Broken!12344 (value!77400 List!13785)) (And!2468) (Div!2468) (LessEqual!2468) (Mod!2468) (Concat!6160) (Not!2468) (Plus!2468) (SpaceValue!2468 (value!77401 List!13785)) (IntegerValue!7406 (value!77402 Int) (text!17725 List!13785)) (StringLiteralValue!7405 (text!17726 List!13785)) (FloatLiteralValue!4937 (text!17727 List!13785)) (BytesLiteralValue!2468 (value!77403 List!13785)) (CommentValue!4937 (value!77404 List!13785)) (StringLiteralValue!7406 (value!77405 List!13785)) (ErrorTokenValue!2468 (msg!2529 List!13785)) )
))
(declare-datatypes ((C!7674 0))(
  ( (C!7675 (val!4397 Int)) )
))
(declare-datatypes ((List!13786 0))(
  ( (Nil!13720) (Cons!13720 (h!19121 C!7674) (t!119585 List!13786)) )
))
(declare-datatypes ((IArray!9045 0))(
  ( (IArray!9046 (innerList!4580 List!13786)) )
))
(declare-datatypes ((Conc!4520 0))(
  ( (Node!4520 (left!11765 Conc!4520) (right!12095 Conc!4520) (csize!9270 Int) (cheight!4731 Int)) (Leaf!6906 (xs!7239 IArray!9045) (csize!9271 Int)) (Empty!4520) )
))
(declare-datatypes ((BalanceConc!8980 0))(
  ( (BalanceConc!8981 (c!219907 Conc!4520)) )
))
(declare-datatypes ((Regex!3692 0))(
  ( (ElementMatch!3692 (c!219908 C!7674)) (Concat!6161 (regOne!7896 Regex!3692) (regTwo!7896 Regex!3692)) (EmptyExpr!3692) (Star!3692 (reg!4021 Regex!3692)) (EmptyLang!3692) (Union!3692 (regOne!7897 Regex!3692) (regTwo!7897 Regex!3692)) )
))
(declare-datatypes ((String!16578 0))(
  ( (String!16579 (value!77406 String)) )
))
(declare-datatypes ((TokenValueInjection!4596 0))(
  ( (TokenValueInjection!4597 (toValue!3621 Int) (toChars!3480 Int)) )
))
(declare-datatypes ((Rule!4556 0))(
  ( (Rule!4557 (regex!2378 Regex!3692) (tag!2640 String!16578) (isSeparator!2378 Bool) (transformation!2378 TokenValueInjection!4596)) )
))
(declare-datatypes ((Token!4418 0))(
  ( (Token!4419 (value!77407 TokenValue!2468) (rule!4123 Rule!4556) (size!11183 Int) (originalCharacters!3240 List!13786)) )
))
(declare-fun t1!34 () Token!4418)

(declare-fun t2!34 () Token!4418)

(assert (=> b!1342620 (= res!604974 (not (= (isSeparator!2378 (rule!4123 t1!34)) (isSeparator!2378 (rule!4123 t2!34)))))))

(declare-fun b!1342621 () Bool)

(declare-fun res!604970 () Bool)

(assert (=> b!1342621 (=> (not res!604970) (not e!859831))))

(declare-datatypes ((LexerInterface!2073 0))(
  ( (LexerInterfaceExt!2070 (__x!8766 Int)) (Lexer!2071) )
))
(declare-fun thiss!19762 () LexerInterface!2073)

(declare-datatypes ((List!13787 0))(
  ( (Nil!13721) (Cons!13721 (h!19122 Rule!4556) (t!119586 List!13787)) )
))
(declare-fun rules!2550 () List!13787)

(declare-fun rulesProduceIndividualToken!1042 (LexerInterface!2073 List!13787 Token!4418) Bool)

(assert (=> b!1342621 (= res!604970 (rulesProduceIndividualToken!1042 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1342622 () Bool)

(declare-fun e!859834 () Bool)

(assert (=> b!1342622 (= e!859831 e!859834)))

(declare-fun res!604982 () Bool)

(assert (=> b!1342622 (=> (not res!604982) (not e!859834))))

(declare-fun lt!444166 () BalanceConc!8980)

(declare-fun size!11184 (BalanceConc!8980) Int)

(assert (=> b!1342622 (= res!604982 (> (size!11184 lt!444166) 0))))

(declare-fun charsOf!1350 (Token!4418) BalanceConc!8980)

(assert (=> b!1342622 (= lt!444166 (charsOf!1350 t2!34))))

(declare-fun e!859820 () Bool)

(declare-fun tp!388761 () Bool)

(declare-fun b!1342623 () Bool)

(declare-fun e!859818 () Bool)

(declare-fun inv!21 (TokenValue!2468) Bool)

(assert (=> b!1342623 (= e!859818 (and (inv!21 (value!77407 t2!34)) e!859820 tp!388761))))

(declare-fun b!1342624 () Bool)

(declare-fun res!604984 () Bool)

(assert (=> b!1342624 (=> (not res!604984) (not e!859831))))

(declare-fun rulesInvariant!1943 (LexerInterface!2073 List!13787) Bool)

(assert (=> b!1342624 (= res!604984 (rulesInvariant!1943 thiss!19762 rules!2550))))

(declare-fun e!859824 () Bool)

(declare-fun b!1342625 () Bool)

(declare-fun tp!388771 () Bool)

(declare-fun e!859835 () Bool)

(declare-fun inv!18056 (String!16578) Bool)

(declare-fun inv!18059 (TokenValueInjection!4596) Bool)

(assert (=> b!1342625 (= e!859835 (and tp!388771 (inv!18056 (tag!2640 (rule!4123 t1!34))) (inv!18059 (transformation!2378 (rule!4123 t1!34))) e!859824))))

(declare-fun b!1342626 () Bool)

(declare-fun res!604971 () Bool)

(assert (=> b!1342626 (=> (not res!604971) (not e!859831))))

(declare-fun isEmpty!8188 (List!13787) Bool)

(assert (=> b!1342626 (= res!604971 (not (isEmpty!8188 rules!2550)))))

(declare-fun e!859830 () Bool)

(assert (=> b!1342627 (= e!859830 (and tp!388769 tp!388763))))

(declare-fun b!1342628 () Bool)

(declare-fun e!859821 () Bool)

(assert (=> b!1342628 (= e!859834 e!859821)))

(declare-fun res!604969 () Bool)

(assert (=> b!1342628 (=> (not res!604969) (not e!859821))))

(declare-fun lt!444171 () Regex!3692)

(declare-fun lt!444164 () List!13786)

(declare-fun prefixMatch!201 (Regex!3692 List!13786) Bool)

(assert (=> b!1342628 (= res!604969 (prefixMatch!201 lt!444171 lt!444164))))

(declare-fun rulesRegex!261 (LexerInterface!2073 List!13787) Regex!3692)

(assert (=> b!1342628 (= lt!444171 (rulesRegex!261 thiss!19762 rules!2550))))

(declare-fun lt!444169 () List!13786)

(declare-fun lt!444161 () C!7674)

(declare-fun ++!3515 (List!13786 List!13786) List!13786)

(assert (=> b!1342628 (= lt!444164 (++!3515 lt!444169 (Cons!13720 lt!444161 Nil!13720)))))

(declare-fun apply!3250 (BalanceConc!8980 Int) C!7674)

(assert (=> b!1342628 (= lt!444161 (apply!3250 lt!444166 0))))

(declare-fun lt!444163 () BalanceConc!8980)

(declare-fun list!5228 (BalanceConc!8980) List!13786)

(assert (=> b!1342628 (= lt!444169 (list!5228 lt!444163))))

(assert (=> b!1342628 (= lt!444163 (charsOf!1350 t1!34))))

(declare-fun b!1342629 () Bool)

(declare-fun e!859833 () Bool)

(declare-fun e!859822 () Bool)

(assert (=> b!1342629 (= e!859833 e!859822)))

(declare-fun res!604968 () Bool)

(assert (=> b!1342629 (=> res!604968 e!859822)))

(declare-fun lt!444162 () List!13786)

(declare-fun getSuffix!540 (List!13786 List!13786) List!13786)

(assert (=> b!1342629 (= res!604968 (not (= lt!444162 (++!3515 lt!444164 (getSuffix!540 lt!444162 lt!444164)))))))

(declare-fun lambda!56304 () Int)

(declare-fun pickWitness!147 (Int) List!13786)

(assert (=> b!1342629 (= lt!444162 (pickWitness!147 lambda!56304))))

(declare-fun e!859828 () Bool)

(declare-fun e!859817 () Bool)

(assert (=> b!1342630 (= e!859828 e!859817)))

(declare-fun res!604980 () Bool)

(assert (=> b!1342630 (=> res!604980 e!859817)))

(declare-fun lambda!56305 () Int)

(declare-fun lambda!56306 () Int)

(declare-datatypes ((List!13788 0))(
  ( (Nil!13722) (Cons!13722 (h!19123 Regex!3692) (t!119587 List!13788)) )
))
(declare-fun exists!416 (List!13788 Int) Bool)

(declare-fun map!3028 (List!13787 Int) List!13788)

(assert (=> b!1342630 (= res!604980 (not (exists!416 (map!3028 rules!2550 lambda!56305) lambda!56306)))))

(declare-fun lt!444170 () List!13788)

(assert (=> b!1342630 (exists!416 lt!444170 lambda!56306)))

(declare-datatypes ((Unit!19834 0))(
  ( (Unit!19835) )
))
(declare-fun lt!444168 () Unit!19834)

(declare-fun matchRGenUnionSpec!109 (Regex!3692 List!13788 List!13786) Unit!19834)

(assert (=> b!1342630 (= lt!444168 (matchRGenUnionSpec!109 lt!444171 lt!444170 lt!444162))))

(assert (=> b!1342630 (= lt!444170 (map!3028 rules!2550 lambda!56305))))

(assert (=> b!1342631 (= e!859824 (and tp!388766 tp!388770))))

(declare-fun b!1342632 () Bool)

(declare-fun contains!2506 (List!13788 Regex!3692) Bool)

(declare-fun getWitness!306 (List!13788 Int) Regex!3692)

(assert (=> b!1342632 (= e!859817 (contains!2506 (map!3028 rules!2550 lambda!56305) (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306)))))

(declare-fun e!859825 () Bool)

(assert (=> b!1342634 (= e!859825 (and tp!388767 tp!388764))))

(declare-fun b!1342635 () Bool)

(declare-fun res!604977 () Bool)

(assert (=> b!1342635 (=> res!604977 e!859828)))

(declare-fun contains!2507 (List!13786 C!7674) Bool)

(assert (=> b!1342635 (= res!604977 (not (contains!2507 lt!444162 lt!444161)))))

(declare-fun b!1342636 () Bool)

(declare-fun res!604976 () Bool)

(assert (=> b!1342636 (=> res!604976 e!859828)))

(assert (=> b!1342636 (= res!604976 (not (contains!2507 lt!444164 lt!444161)))))

(declare-fun b!1342637 () Bool)

(declare-fun res!604967 () Bool)

(assert (=> b!1342637 (=> res!604967 e!859828)))

(declare-fun lt!444165 () C!7674)

(assert (=> b!1342637 (= res!604967 (not (contains!2507 lt!444162 lt!444165)))))

(declare-fun b!1342638 () Bool)

(declare-fun tp!388765 () Bool)

(declare-fun e!859837 () Bool)

(assert (=> b!1342638 (= e!859837 (and tp!388765 (inv!18056 (tag!2640 (h!19122 rules!2550))) (inv!18059 (transformation!2378 (h!19122 rules!2550))) e!859830))))

(declare-fun b!1342639 () Bool)

(declare-fun res!604983 () Bool)

(assert (=> b!1342639 (=> (not res!604983) (not e!859834))))

(declare-fun sepAndNonSepRulesDisjointChars!751 (List!13787 List!13787) Bool)

(assert (=> b!1342639 (= res!604983 (sepAndNonSepRulesDisjointChars!751 rules!2550 rules!2550))))

(declare-fun b!1342640 () Bool)

(declare-fun e!859819 () Bool)

(declare-fun tp!388768 () Bool)

(assert (=> b!1342640 (= e!859819 (and e!859837 tp!388768))))

(declare-fun res!604981 () Bool)

(assert (=> start!119976 (=> (not res!604981) (not e!859831))))

(assert (=> start!119976 (= res!604981 (is-Lexer!2071 thiss!19762))))

(assert (=> start!119976 e!859831))

(assert (=> start!119976 true))

(assert (=> start!119976 e!859819))

(declare-fun e!859836 () Bool)

(declare-fun inv!18060 (Token!4418) Bool)

(assert (=> start!119976 (and (inv!18060 t1!34) e!859836)))

(assert (=> start!119976 (and (inv!18060 t2!34) e!859818)))

(declare-fun b!1342633 () Bool)

(declare-fun res!604979 () Bool)

(assert (=> b!1342633 (=> (not res!604979) (not e!859831))))

(assert (=> b!1342633 (= res!604979 (rulesProduceIndividualToken!1042 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1342641 () Bool)

(declare-fun res!604975 () Bool)

(assert (=> b!1342641 (=> res!604975 e!859828)))

(declare-fun matchR!1685 (Regex!3692 List!13786) Bool)

(assert (=> b!1342641 (= res!604975 (not (matchR!1685 lt!444171 lt!444162)))))

(declare-fun b!1342642 () Bool)

(assert (=> b!1342642 (= e!859822 e!859828)))

(declare-fun res!604978 () Bool)

(assert (=> b!1342642 (=> res!604978 e!859828)))

(assert (=> b!1342642 (= res!604978 (not (contains!2507 lt!444164 lt!444165)))))

(assert (=> b!1342642 (= lt!444165 (apply!3250 lt!444163 0))))

(declare-fun b!1342643 () Bool)

(declare-fun res!604972 () Bool)

(assert (=> b!1342643 (=> (not res!604972) (not e!859834))))

(declare-fun separableTokensPredicate!356 (LexerInterface!2073 Token!4418 Token!4418 List!13787) Bool)

(assert (=> b!1342643 (= res!604972 (not (separableTokensPredicate!356 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!388772 () Bool)

(declare-fun b!1342644 () Bool)

(assert (=> b!1342644 (= e!859820 (and tp!388772 (inv!18056 (tag!2640 (rule!4123 t2!34))) (inv!18059 (transformation!2378 (rule!4123 t2!34))) e!859825))))

(declare-fun b!1342645 () Bool)

(declare-fun tp!388762 () Bool)

(assert (=> b!1342645 (= e!859836 (and (inv!21 (value!77407 t1!34)) e!859835 tp!388762))))

(assert (=> b!1342646 (= e!859821 (not e!859833))))

(declare-fun res!604973 () Bool)

(assert (=> b!1342646 (=> res!604973 e!859833)))

(declare-fun Exists!844 (Int) Bool)

(assert (=> b!1342646 (= res!604973 (not (Exists!844 lambda!56304)))))

(assert (=> b!1342646 (Exists!844 lambda!56304)))

(declare-fun lt!444167 () Unit!19834)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!162 (Regex!3692 List!13786) Unit!19834)

(assert (=> b!1342646 (= lt!444167 (lemmaPrefixMatchThenExistsStringThatMatches!162 lt!444171 lt!444164))))

(assert (= (and start!119976 res!604981) b!1342626))

(assert (= (and b!1342626 res!604971) b!1342624))

(assert (= (and b!1342624 res!604984) b!1342621))

(assert (= (and b!1342621 res!604970) b!1342633))

(assert (= (and b!1342633 res!604979) b!1342620))

(assert (= (and b!1342620 res!604974) b!1342622))

(assert (= (and b!1342622 res!604982) b!1342639))

(assert (= (and b!1342639 res!604983) b!1342643))

(assert (= (and b!1342643 res!604972) b!1342628))

(assert (= (and b!1342628 res!604969) b!1342646))

(assert (= (and b!1342646 (not res!604973)) b!1342629))

(assert (= (and b!1342629 (not res!604968)) b!1342642))

(assert (= (and b!1342642 (not res!604978)) b!1342637))

(assert (= (and b!1342637 (not res!604967)) b!1342636))

(assert (= (and b!1342636 (not res!604976)) b!1342635))

(assert (= (and b!1342635 (not res!604977)) b!1342641))

(assert (= (and b!1342641 (not res!604975)) b!1342630))

(assert (= (and b!1342630 (not res!604980)) b!1342632))

(assert (= b!1342638 b!1342627))

(assert (= b!1342640 b!1342638))

(assert (= (and start!119976 (is-Cons!13721 rules!2550)) b!1342640))

(assert (= b!1342625 b!1342631))

(assert (= b!1342645 b!1342625))

(assert (= start!119976 b!1342645))

(assert (= b!1342644 b!1342634))

(assert (= b!1342623 b!1342644))

(assert (= start!119976 b!1342623))

(declare-fun m!1501199 () Bool)

(assert (=> b!1342622 m!1501199))

(declare-fun m!1501201 () Bool)

(assert (=> b!1342622 m!1501201))

(declare-fun m!1501203 () Bool)

(assert (=> b!1342633 m!1501203))

(declare-fun m!1501205 () Bool)

(assert (=> b!1342632 m!1501205))

(assert (=> b!1342632 m!1501205))

(assert (=> b!1342632 m!1501205))

(declare-fun m!1501207 () Bool)

(assert (=> b!1342632 m!1501207))

(assert (=> b!1342632 m!1501205))

(assert (=> b!1342632 m!1501207))

(declare-fun m!1501209 () Bool)

(assert (=> b!1342632 m!1501209))

(declare-fun m!1501211 () Bool)

(assert (=> b!1342646 m!1501211))

(assert (=> b!1342646 m!1501211))

(declare-fun m!1501213 () Bool)

(assert (=> b!1342646 m!1501213))

(declare-fun m!1501215 () Bool)

(assert (=> b!1342643 m!1501215))

(declare-fun m!1501217 () Bool)

(assert (=> b!1342624 m!1501217))

(declare-fun m!1501219 () Bool)

(assert (=> b!1342635 m!1501219))

(declare-fun m!1501221 () Bool)

(assert (=> b!1342628 m!1501221))

(declare-fun m!1501223 () Bool)

(assert (=> b!1342628 m!1501223))

(declare-fun m!1501225 () Bool)

(assert (=> b!1342628 m!1501225))

(declare-fun m!1501227 () Bool)

(assert (=> b!1342628 m!1501227))

(declare-fun m!1501229 () Bool)

(assert (=> b!1342628 m!1501229))

(declare-fun m!1501231 () Bool)

(assert (=> b!1342628 m!1501231))

(declare-fun m!1501233 () Bool)

(assert (=> b!1342636 m!1501233))

(declare-fun m!1501235 () Bool)

(assert (=> b!1342644 m!1501235))

(declare-fun m!1501237 () Bool)

(assert (=> b!1342644 m!1501237))

(declare-fun m!1501239 () Bool)

(assert (=> b!1342625 m!1501239))

(declare-fun m!1501241 () Bool)

(assert (=> b!1342625 m!1501241))

(declare-fun m!1501243 () Bool)

(assert (=> b!1342626 m!1501243))

(declare-fun m!1501245 () Bool)

(assert (=> b!1342639 m!1501245))

(declare-fun m!1501247 () Bool)

(assert (=> b!1342621 m!1501247))

(declare-fun m!1501249 () Bool)

(assert (=> b!1342637 m!1501249))

(declare-fun m!1501251 () Bool)

(assert (=> start!119976 m!1501251))

(declare-fun m!1501253 () Bool)

(assert (=> start!119976 m!1501253))

(declare-fun m!1501255 () Bool)

(assert (=> b!1342638 m!1501255))

(declare-fun m!1501257 () Bool)

(assert (=> b!1342638 m!1501257))

(declare-fun m!1501259 () Bool)

(assert (=> b!1342645 m!1501259))

(declare-fun m!1501261 () Bool)

(assert (=> b!1342630 m!1501261))

(assert (=> b!1342630 m!1501205))

(declare-fun m!1501263 () Bool)

(assert (=> b!1342630 m!1501263))

(assert (=> b!1342630 m!1501205))

(declare-fun m!1501265 () Bool)

(assert (=> b!1342630 m!1501265))

(assert (=> b!1342630 m!1501205))

(declare-fun m!1501267 () Bool)

(assert (=> b!1342642 m!1501267))

(declare-fun m!1501269 () Bool)

(assert (=> b!1342642 m!1501269))

(declare-fun m!1501271 () Bool)

(assert (=> b!1342623 m!1501271))

(declare-fun m!1501273 () Bool)

(assert (=> b!1342641 m!1501273))

(declare-fun m!1501275 () Bool)

(assert (=> b!1342629 m!1501275))

(assert (=> b!1342629 m!1501275))

(declare-fun m!1501277 () Bool)

(assert (=> b!1342629 m!1501277))

(declare-fun m!1501279 () Bool)

(assert (=> b!1342629 m!1501279))

(push 1)

(assert (not b!1342639))

(assert (not b!1342624))

(assert (not start!119976))

(assert b_and!89871)

(assert (not b!1342635))

(assert b_and!89875)

(assert (not b!1342641))

(assert (not b_next!33447))

(assert (not b!1342630))

(assert b_and!89873)

(assert (not b!1342646))

(assert (not b!1342644))

(assert (not b_next!33449))

(assert b_and!89879)

(assert (not b!1342643))

(assert (not b!1342628))

(assert (not b!1342625))

(assert (not b!1342633))

(assert (not b!1342626))

(assert (not b!1342622))

(assert (not b!1342621))

(assert (not b!1342638))

(assert (not b!1342629))

(assert (not b!1342632))

(assert (not b_next!33441))

(assert (not b!1342637))

(assert (not b!1342640))

(assert (not b!1342623))

(assert b_and!89881)

(assert (not b_next!33445))

(assert (not b_next!33439))

(assert (not b_next!33443))

(assert (not b!1342645))

(assert (not b!1342642))

(assert b_and!89877)

(assert (not b!1342636))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!33449))

(assert b_and!89879)

(assert b_and!89871)

(assert (not b_next!33441))

(assert b_and!89875)

(assert (not b_next!33447))

(assert b_and!89881)

(assert (not b_next!33443))

(assert b_and!89877)

(assert b_and!89873)

(assert (not b_next!33445))

(assert (not b_next!33439))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!378786 () Bool)

(declare-fun list!5230 (Conc!4520) List!13786)

(assert (=> d!378786 (= (list!5228 lt!444163) (list!5230 (c!219907 lt!444163)))))

(declare-fun bs!332409 () Bool)

(assert (= bs!332409 d!378786))

(declare-fun m!1501363 () Bool)

(assert (=> bs!332409 m!1501363))

(assert (=> b!1342628 d!378786))

(declare-fun d!378788 () Bool)

(declare-fun c!219913 () Bool)

(declare-fun isEmpty!8190 (List!13786) Bool)

(assert (=> d!378788 (= c!219913 (isEmpty!8190 lt!444164))))

(declare-fun e!859915 () Bool)

(assert (=> d!378788 (= (prefixMatch!201 lt!444171 lt!444164) e!859915)))

(declare-fun b!1342756 () Bool)

(declare-fun lostCause!308 (Regex!3692) Bool)

(assert (=> b!1342756 (= e!859915 (not (lostCause!308 lt!444171)))))

(declare-fun b!1342757 () Bool)

(declare-fun derivativeStep!932 (Regex!3692 C!7674) Regex!3692)

(declare-fun head!2384 (List!13786) C!7674)

(declare-fun tail!1933 (List!13786) List!13786)

(assert (=> b!1342757 (= e!859915 (prefixMatch!201 (derivativeStep!932 lt!444171 (head!2384 lt!444164)) (tail!1933 lt!444164)))))

(assert (= (and d!378788 c!219913) b!1342756))

(assert (= (and d!378788 (not c!219913)) b!1342757))

(declare-fun m!1501365 () Bool)

(assert (=> d!378788 m!1501365))

(declare-fun m!1501367 () Bool)

(assert (=> b!1342756 m!1501367))

(declare-fun m!1501369 () Bool)

(assert (=> b!1342757 m!1501369))

(assert (=> b!1342757 m!1501369))

(declare-fun m!1501371 () Bool)

(assert (=> b!1342757 m!1501371))

(declare-fun m!1501373 () Bool)

(assert (=> b!1342757 m!1501373))

(assert (=> b!1342757 m!1501371))

(assert (=> b!1342757 m!1501373))

(declare-fun m!1501375 () Bool)

(assert (=> b!1342757 m!1501375))

(assert (=> b!1342628 d!378788))

(declare-fun d!378790 () Bool)

(declare-fun e!859920 () Bool)

(assert (=> d!378790 e!859920))

(declare-fun res!605062 () Bool)

(assert (=> d!378790 (=> (not res!605062) (not e!859920))))

(declare-fun lt!444207 () List!13786)

(declare-fun content!1950 (List!13786) (Set C!7674))

(assert (=> d!378790 (= res!605062 (= (content!1950 lt!444207) (set.union (content!1950 lt!444169) (content!1950 (Cons!13720 lt!444161 Nil!13720)))))))

(declare-fun e!859921 () List!13786)

(assert (=> d!378790 (= lt!444207 e!859921)))

(declare-fun c!219916 () Bool)

(assert (=> d!378790 (= c!219916 (is-Nil!13720 lt!444169))))

(assert (=> d!378790 (= (++!3515 lt!444169 (Cons!13720 lt!444161 Nil!13720)) lt!444207)))

(declare-fun b!1342769 () Bool)

(assert (=> b!1342769 (= e!859920 (or (not (= (Cons!13720 lt!444161 Nil!13720) Nil!13720)) (= lt!444207 lt!444169)))))

(declare-fun b!1342767 () Bool)

(assert (=> b!1342767 (= e!859921 (Cons!13720 (h!19121 lt!444169) (++!3515 (t!119585 lt!444169) (Cons!13720 lt!444161 Nil!13720))))))

(declare-fun b!1342766 () Bool)

(assert (=> b!1342766 (= e!859921 (Cons!13720 lt!444161 Nil!13720))))

(declare-fun b!1342768 () Bool)

(declare-fun res!605061 () Bool)

(assert (=> b!1342768 (=> (not res!605061) (not e!859920))))

(declare-fun size!11187 (List!13786) Int)

(assert (=> b!1342768 (= res!605061 (= (size!11187 lt!444207) (+ (size!11187 lt!444169) (size!11187 (Cons!13720 lt!444161 Nil!13720)))))))

(assert (= (and d!378790 c!219916) b!1342766))

(assert (= (and d!378790 (not c!219916)) b!1342767))

(assert (= (and d!378790 res!605062) b!1342768))

(assert (= (and b!1342768 res!605061) b!1342769))

(declare-fun m!1501377 () Bool)

(assert (=> d!378790 m!1501377))

(declare-fun m!1501379 () Bool)

(assert (=> d!378790 m!1501379))

(declare-fun m!1501381 () Bool)

(assert (=> d!378790 m!1501381))

(declare-fun m!1501383 () Bool)

(assert (=> b!1342767 m!1501383))

(declare-fun m!1501385 () Bool)

(assert (=> b!1342768 m!1501385))

(declare-fun m!1501387 () Bool)

(assert (=> b!1342768 m!1501387))

(declare-fun m!1501389 () Bool)

(assert (=> b!1342768 m!1501389))

(assert (=> b!1342628 d!378790))

(declare-fun bs!332410 () Bool)

(declare-fun d!378792 () Bool)

(assert (= bs!332410 (and d!378792 b!1342630)))

(declare-fun lambda!56332 () Int)

(assert (=> bs!332410 (= lambda!56332 lambda!56305)))

(declare-fun lt!444210 () Unit!19834)

(declare-fun lemma!102 (List!13787 LexerInterface!2073 List!13787) Unit!19834)

(assert (=> d!378792 (= lt!444210 (lemma!102 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!110 (List!13788) Regex!3692)

(assert (=> d!378792 (= (rulesRegex!261 thiss!19762 rules!2550) (generalisedUnion!110 (map!3028 rules!2550 lambda!56332)))))

(declare-fun bs!332411 () Bool)

(assert (= bs!332411 d!378792))

(declare-fun m!1501391 () Bool)

(assert (=> bs!332411 m!1501391))

(declare-fun m!1501393 () Bool)

(assert (=> bs!332411 m!1501393))

(assert (=> bs!332411 m!1501393))

(declare-fun m!1501395 () Bool)

(assert (=> bs!332411 m!1501395))

(assert (=> b!1342628 d!378792))

(declare-fun d!378794 () Bool)

(declare-fun lt!444213 () BalanceConc!8980)

(assert (=> d!378794 (= (list!5228 lt!444213) (originalCharacters!3240 t1!34))))

(declare-fun dynLambda!6053 (Int TokenValue!2468) BalanceConc!8980)

(assert (=> d!378794 (= lt!444213 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (value!77407 t1!34)))))

(assert (=> d!378794 (= (charsOf!1350 t1!34) lt!444213)))

(declare-fun b_lambda!39719 () Bool)

(assert (=> (not b_lambda!39719) (not d!378794)))

(declare-fun t!119593 () Bool)

(declare-fun tb!70657 () Bool)

(assert (=> (and b!1342627 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t1!34)))) t!119593) tb!70657))

(declare-fun b!1342774 () Bool)

(declare-fun e!859924 () Bool)

(declare-fun tp!388811 () Bool)

(declare-fun inv!18063 (Conc!4520) Bool)

(assert (=> b!1342774 (= e!859924 (and (inv!18063 (c!219907 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (value!77407 t1!34)))) tp!388811))))

(declare-fun result!85890 () Bool)

(declare-fun inv!18064 (BalanceConc!8980) Bool)

(assert (=> tb!70657 (= result!85890 (and (inv!18064 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (value!77407 t1!34))) e!859924))))

(assert (= tb!70657 b!1342774))

(declare-fun m!1501397 () Bool)

(assert (=> b!1342774 m!1501397))

(declare-fun m!1501399 () Bool)

(assert (=> tb!70657 m!1501399))

(assert (=> d!378794 t!119593))

(declare-fun b_and!89895 () Bool)

(assert (= b_and!89873 (and (=> t!119593 result!85890) b_and!89895)))

(declare-fun tb!70659 () Bool)

(declare-fun t!119595 () Bool)

(assert (=> (and b!1342634 (= (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toChars!3480 (transformation!2378 (rule!4123 t1!34)))) t!119595) tb!70659))

(declare-fun result!85894 () Bool)

(assert (= result!85894 result!85890))

(assert (=> d!378794 t!119595))

(declare-fun b_and!89897 () Bool)

(assert (= b_and!89877 (and (=> t!119595 result!85894) b_and!89897)))

(declare-fun t!119597 () Bool)

(declare-fun tb!70661 () Bool)

(assert (=> (and b!1342631 (= (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toChars!3480 (transformation!2378 (rule!4123 t1!34)))) t!119597) tb!70661))

(declare-fun result!85896 () Bool)

(assert (= result!85896 result!85890))

(assert (=> d!378794 t!119597))

(declare-fun b_and!89899 () Bool)

(assert (= b_and!89881 (and (=> t!119597 result!85896) b_and!89899)))

(declare-fun m!1501401 () Bool)

(assert (=> d!378794 m!1501401))

(declare-fun m!1501403 () Bool)

(assert (=> d!378794 m!1501403))

(assert (=> b!1342628 d!378794))

(declare-fun d!378796 () Bool)

(declare-fun lt!444216 () C!7674)

(declare-fun apply!3252 (List!13786 Int) C!7674)

(assert (=> d!378796 (= lt!444216 (apply!3252 (list!5228 lt!444166) 0))))

(declare-fun apply!3253 (Conc!4520 Int) C!7674)

(assert (=> d!378796 (= lt!444216 (apply!3253 (c!219907 lt!444166) 0))))

(declare-fun e!859927 () Bool)

(assert (=> d!378796 e!859927))

(declare-fun res!605067 () Bool)

(assert (=> d!378796 (=> (not res!605067) (not e!859927))))

(assert (=> d!378796 (= res!605067 (<= 0 0))))

(assert (=> d!378796 (= (apply!3250 lt!444166 0) lt!444216)))

(declare-fun b!1342777 () Bool)

(assert (=> b!1342777 (= e!859927 (< 0 (size!11184 lt!444166)))))

(assert (= (and d!378796 res!605067) b!1342777))

(declare-fun m!1501405 () Bool)

(assert (=> d!378796 m!1501405))

(assert (=> d!378796 m!1501405))

(declare-fun m!1501407 () Bool)

(assert (=> d!378796 m!1501407))

(declare-fun m!1501409 () Bool)

(assert (=> d!378796 m!1501409))

(assert (=> b!1342777 m!1501199))

(assert (=> b!1342628 d!378796))

(declare-fun d!378798 () Bool)

(assert (=> d!378798 (= (inv!18056 (tag!2640 (h!19122 rules!2550))) (= (mod (str.len (value!77406 (tag!2640 (h!19122 rules!2550)))) 2) 0))))

(assert (=> b!1342638 d!378798))

(declare-fun d!378800 () Bool)

(declare-fun res!605070 () Bool)

(declare-fun e!859930 () Bool)

(assert (=> d!378800 (=> (not res!605070) (not e!859930))))

(declare-fun semiInverseModEq!903 (Int Int) Bool)

(assert (=> d!378800 (= res!605070 (semiInverseModEq!903 (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toValue!3621 (transformation!2378 (h!19122 rules!2550)))))))

(assert (=> d!378800 (= (inv!18059 (transformation!2378 (h!19122 rules!2550))) e!859930)))

(declare-fun b!1342780 () Bool)

(declare-fun equivClasses!862 (Int Int) Bool)

(assert (=> b!1342780 (= e!859930 (equivClasses!862 (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toValue!3621 (transformation!2378 (h!19122 rules!2550)))))))

(assert (= (and d!378800 res!605070) b!1342780))

(declare-fun m!1501411 () Bool)

(assert (=> d!378800 m!1501411))

(declare-fun m!1501413 () Bool)

(assert (=> b!1342780 m!1501413))

(assert (=> b!1342638 d!378800))

(declare-fun d!378802 () Bool)

(declare-fun e!859931 () Bool)

(assert (=> d!378802 e!859931))

(declare-fun res!605072 () Bool)

(assert (=> d!378802 (=> (not res!605072) (not e!859931))))

(declare-fun lt!444217 () List!13786)

(assert (=> d!378802 (= res!605072 (= (content!1950 lt!444217) (set.union (content!1950 lt!444164) (content!1950 (getSuffix!540 lt!444162 lt!444164)))))))

(declare-fun e!859932 () List!13786)

(assert (=> d!378802 (= lt!444217 e!859932)))

(declare-fun c!219917 () Bool)

(assert (=> d!378802 (= c!219917 (is-Nil!13720 lt!444164))))

(assert (=> d!378802 (= (++!3515 lt!444164 (getSuffix!540 lt!444162 lt!444164)) lt!444217)))

(declare-fun b!1342784 () Bool)

(assert (=> b!1342784 (= e!859931 (or (not (= (getSuffix!540 lt!444162 lt!444164) Nil!13720)) (= lt!444217 lt!444164)))))

(declare-fun b!1342782 () Bool)

(assert (=> b!1342782 (= e!859932 (Cons!13720 (h!19121 lt!444164) (++!3515 (t!119585 lt!444164) (getSuffix!540 lt!444162 lt!444164))))))

(declare-fun b!1342781 () Bool)

(assert (=> b!1342781 (= e!859932 (getSuffix!540 lt!444162 lt!444164))))

(declare-fun b!1342783 () Bool)

(declare-fun res!605071 () Bool)

(assert (=> b!1342783 (=> (not res!605071) (not e!859931))))

(assert (=> b!1342783 (= res!605071 (= (size!11187 lt!444217) (+ (size!11187 lt!444164) (size!11187 (getSuffix!540 lt!444162 lt!444164)))))))

(assert (= (and d!378802 c!219917) b!1342781))

(assert (= (and d!378802 (not c!219917)) b!1342782))

(assert (= (and d!378802 res!605072) b!1342783))

(assert (= (and b!1342783 res!605071) b!1342784))

(declare-fun m!1501415 () Bool)

(assert (=> d!378802 m!1501415))

(declare-fun m!1501417 () Bool)

(assert (=> d!378802 m!1501417))

(assert (=> d!378802 m!1501275))

(declare-fun m!1501419 () Bool)

(assert (=> d!378802 m!1501419))

(assert (=> b!1342782 m!1501275))

(declare-fun m!1501421 () Bool)

(assert (=> b!1342782 m!1501421))

(declare-fun m!1501423 () Bool)

(assert (=> b!1342783 m!1501423))

(declare-fun m!1501425 () Bool)

(assert (=> b!1342783 m!1501425))

(assert (=> b!1342783 m!1501275))

(declare-fun m!1501427 () Bool)

(assert (=> b!1342783 m!1501427))

(assert (=> b!1342629 d!378802))

(declare-fun d!378804 () Bool)

(declare-fun lt!444220 () List!13786)

(assert (=> d!378804 (= (++!3515 lt!444164 lt!444220) lt!444162)))

(declare-fun e!859935 () List!13786)

(assert (=> d!378804 (= lt!444220 e!859935)))

(declare-fun c!219920 () Bool)

(assert (=> d!378804 (= c!219920 (is-Cons!13720 lt!444164))))

(assert (=> d!378804 (>= (size!11187 lt!444162) (size!11187 lt!444164))))

(assert (=> d!378804 (= (getSuffix!540 lt!444162 lt!444164) lt!444220)))

(declare-fun b!1342789 () Bool)

(assert (=> b!1342789 (= e!859935 (getSuffix!540 (tail!1933 lt!444162) (t!119585 lt!444164)))))

(declare-fun b!1342790 () Bool)

(assert (=> b!1342790 (= e!859935 lt!444162)))

(assert (= (and d!378804 c!219920) b!1342789))

(assert (= (and d!378804 (not c!219920)) b!1342790))

(declare-fun m!1501429 () Bool)

(assert (=> d!378804 m!1501429))

(declare-fun m!1501431 () Bool)

(assert (=> d!378804 m!1501431))

(assert (=> d!378804 m!1501425))

(declare-fun m!1501433 () Bool)

(assert (=> b!1342789 m!1501433))

(assert (=> b!1342789 m!1501433))

(declare-fun m!1501435 () Bool)

(assert (=> b!1342789 m!1501435))

(assert (=> b!1342629 d!378804))

(declare-fun d!378806 () Bool)

(declare-fun lt!444223 () List!13786)

(declare-fun dynLambda!6054 (Int List!13786) Bool)

(assert (=> d!378806 (dynLambda!6054 lambda!56304 lt!444223)))

(declare-fun choose!8236 (Int) List!13786)

(assert (=> d!378806 (= lt!444223 (choose!8236 lambda!56304))))

(assert (=> d!378806 (Exists!844 lambda!56304)))

(assert (=> d!378806 (= (pickWitness!147 lambda!56304) lt!444223)))

(declare-fun b_lambda!39721 () Bool)

(assert (=> (not b_lambda!39721) (not d!378806)))

(declare-fun bs!332412 () Bool)

(assert (= bs!332412 d!378806))

(declare-fun m!1501437 () Bool)

(assert (=> bs!332412 m!1501437))

(declare-fun m!1501439 () Bool)

(assert (=> bs!332412 m!1501439))

(assert (=> bs!332412 m!1501211))

(assert (=> b!1342629 d!378806))

(declare-fun d!378808 () Bool)

(declare-fun res!605077 () Bool)

(declare-fun e!859940 () Bool)

(assert (=> d!378808 (=> res!605077 e!859940)))

(assert (=> d!378808 (= res!605077 (not (is-Cons!13721 rules!2550)))))

(assert (=> d!378808 (= (sepAndNonSepRulesDisjointChars!751 rules!2550 rules!2550) e!859940)))

(declare-fun b!1342795 () Bool)

(declare-fun e!859941 () Bool)

(assert (=> b!1342795 (= e!859940 e!859941)))

(declare-fun res!605078 () Bool)

(assert (=> b!1342795 (=> (not res!605078) (not e!859941))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!345 (Rule!4556 List!13787) Bool)

(assert (=> b!1342795 (= res!605078 (ruleDisjointCharsFromAllFromOtherType!345 (h!19122 rules!2550) rules!2550))))

(declare-fun b!1342796 () Bool)

(assert (=> b!1342796 (= e!859941 (sepAndNonSepRulesDisjointChars!751 rules!2550 (t!119586 rules!2550)))))

(assert (= (and d!378808 (not res!605077)) b!1342795))

(assert (= (and b!1342795 res!605078) b!1342796))

(declare-fun m!1501441 () Bool)

(assert (=> b!1342795 m!1501441))

(declare-fun m!1501443 () Bool)

(assert (=> b!1342796 m!1501443))

(assert (=> b!1342639 d!378808))

(declare-fun d!378810 () Bool)

(declare-fun lt!444226 () Bool)

(assert (=> d!378810 (= lt!444226 (set.member lt!444161 (content!1950 lt!444164)))))

(declare-fun e!859947 () Bool)

(assert (=> d!378810 (= lt!444226 e!859947)))

(declare-fun res!605083 () Bool)

(assert (=> d!378810 (=> (not res!605083) (not e!859947))))

(assert (=> d!378810 (= res!605083 (is-Cons!13720 lt!444164))))

(assert (=> d!378810 (= (contains!2507 lt!444164 lt!444161) lt!444226)))

(declare-fun b!1342801 () Bool)

(declare-fun e!859946 () Bool)

(assert (=> b!1342801 (= e!859947 e!859946)))

(declare-fun res!605084 () Bool)

(assert (=> b!1342801 (=> res!605084 e!859946)))

(assert (=> b!1342801 (= res!605084 (= (h!19121 lt!444164) lt!444161))))

(declare-fun b!1342802 () Bool)

(assert (=> b!1342802 (= e!859946 (contains!2507 (t!119585 lt!444164) lt!444161))))

(assert (= (and d!378810 res!605083) b!1342801))

(assert (= (and b!1342801 (not res!605084)) b!1342802))

(assert (=> d!378810 m!1501417))

(declare-fun m!1501445 () Bool)

(assert (=> d!378810 m!1501445))

(declare-fun m!1501447 () Bool)

(assert (=> b!1342802 m!1501447))

(assert (=> b!1342636 d!378810))

(declare-fun d!378812 () Bool)

(assert (=> d!378812 (= (inv!18056 (tag!2640 (rule!4123 t1!34))) (= (mod (str.len (value!77406 (tag!2640 (rule!4123 t1!34)))) 2) 0))))

(assert (=> b!1342625 d!378812))

(declare-fun d!378814 () Bool)

(declare-fun res!605085 () Bool)

(declare-fun e!859948 () Bool)

(assert (=> d!378814 (=> (not res!605085) (not e!859948))))

(assert (=> d!378814 (= res!605085 (semiInverseModEq!903 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toValue!3621 (transformation!2378 (rule!4123 t1!34)))))))

(assert (=> d!378814 (= (inv!18059 (transformation!2378 (rule!4123 t1!34))) e!859948)))

(declare-fun b!1342803 () Bool)

(assert (=> b!1342803 (= e!859948 (equivClasses!862 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toValue!3621 (transformation!2378 (rule!4123 t1!34)))))))

(assert (= (and d!378814 res!605085) b!1342803))

(declare-fun m!1501449 () Bool)

(assert (=> d!378814 m!1501449))

(declare-fun m!1501451 () Bool)

(assert (=> b!1342803 m!1501451))

(assert (=> b!1342625 d!378814))

(declare-fun d!378816 () Bool)

(declare-fun choose!8237 (Int) Bool)

(assert (=> d!378816 (= (Exists!844 lambda!56304) (choose!8237 lambda!56304))))

(declare-fun bs!332413 () Bool)

(assert (= bs!332413 d!378816))

(declare-fun m!1501453 () Bool)

(assert (=> bs!332413 m!1501453))

(assert (=> b!1342646 d!378816))

(declare-fun bs!332414 () Bool)

(declare-fun d!378818 () Bool)

(assert (= bs!332414 (and d!378818 b!1342646)))

(declare-fun lambda!56335 () Int)

(assert (=> bs!332414 (= lambda!56335 lambda!56304)))

(assert (=> d!378818 true))

(assert (=> d!378818 true))

(assert (=> d!378818 (Exists!844 lambda!56335)))

(declare-fun lt!444229 () Unit!19834)

(declare-fun choose!8238 (Regex!3692 List!13786) Unit!19834)

(assert (=> d!378818 (= lt!444229 (choose!8238 lt!444171 lt!444164))))

(declare-fun validRegex!1594 (Regex!3692) Bool)

(assert (=> d!378818 (validRegex!1594 lt!444171)))

(assert (=> d!378818 (= (lemmaPrefixMatchThenExistsStringThatMatches!162 lt!444171 lt!444164) lt!444229)))

(declare-fun bs!332415 () Bool)

(assert (= bs!332415 d!378818))

(declare-fun m!1501455 () Bool)

(assert (=> bs!332415 m!1501455))

(declare-fun m!1501457 () Bool)

(assert (=> bs!332415 m!1501457))

(declare-fun m!1501459 () Bool)

(assert (=> bs!332415 m!1501459))

(assert (=> b!1342646 d!378818))

(declare-fun d!378820 () Bool)

(declare-fun lt!444230 () Bool)

(assert (=> d!378820 (= lt!444230 (set.member lt!444161 (content!1950 lt!444162)))))

(declare-fun e!859952 () Bool)

(assert (=> d!378820 (= lt!444230 e!859952)))

(declare-fun res!605088 () Bool)

(assert (=> d!378820 (=> (not res!605088) (not e!859952))))

(assert (=> d!378820 (= res!605088 (is-Cons!13720 lt!444162))))

(assert (=> d!378820 (= (contains!2507 lt!444162 lt!444161) lt!444230)))

(declare-fun b!1342806 () Bool)

(declare-fun e!859951 () Bool)

(assert (=> b!1342806 (= e!859952 e!859951)))

(declare-fun res!605089 () Bool)

(assert (=> b!1342806 (=> res!605089 e!859951)))

(assert (=> b!1342806 (= res!605089 (= (h!19121 lt!444162) lt!444161))))

(declare-fun b!1342807 () Bool)

(assert (=> b!1342807 (= e!859951 (contains!2507 (t!119585 lt!444162) lt!444161))))

(assert (= (and d!378820 res!605088) b!1342806))

(assert (= (and b!1342806 (not res!605089)) b!1342807))

(declare-fun m!1501461 () Bool)

(assert (=> d!378820 m!1501461))

(declare-fun m!1501463 () Bool)

(assert (=> d!378820 m!1501463))

(declare-fun m!1501465 () Bool)

(assert (=> b!1342807 m!1501465))

(assert (=> b!1342635 d!378820))

(declare-fun d!378822 () Bool)

(declare-fun lt!444231 () Bool)

(assert (=> d!378822 (= lt!444231 (set.member lt!444165 (content!1950 lt!444162)))))

(declare-fun e!859954 () Bool)

(assert (=> d!378822 (= lt!444231 e!859954)))

(declare-fun res!605090 () Bool)

(assert (=> d!378822 (=> (not res!605090) (not e!859954))))

(assert (=> d!378822 (= res!605090 (is-Cons!13720 lt!444162))))

(assert (=> d!378822 (= (contains!2507 lt!444162 lt!444165) lt!444231)))

(declare-fun b!1342808 () Bool)

(declare-fun e!859953 () Bool)

(assert (=> b!1342808 (= e!859954 e!859953)))

(declare-fun res!605091 () Bool)

(assert (=> b!1342808 (=> res!605091 e!859953)))

(assert (=> b!1342808 (= res!605091 (= (h!19121 lt!444162) lt!444165))))

(declare-fun b!1342809 () Bool)

(assert (=> b!1342809 (= e!859953 (contains!2507 (t!119585 lt!444162) lt!444165))))

(assert (= (and d!378822 res!605090) b!1342808))

(assert (= (and b!1342808 (not res!605091)) b!1342809))

(assert (=> d!378822 m!1501461))

(declare-fun m!1501467 () Bool)

(assert (=> d!378822 m!1501467))

(declare-fun m!1501469 () Bool)

(assert (=> b!1342809 m!1501469))

(assert (=> b!1342637 d!378822))

(declare-fun d!378824 () Bool)

(assert (=> d!378824 (= (isEmpty!8188 rules!2550) (is-Nil!13721 rules!2550))))

(assert (=> b!1342626 d!378824))

(declare-fun d!378826 () Bool)

(assert (=> d!378826 (= (inv!18056 (tag!2640 (rule!4123 t2!34))) (= (mod (str.len (value!77406 (tag!2640 (rule!4123 t2!34)))) 2) 0))))

(assert (=> b!1342644 d!378826))

(declare-fun d!378828 () Bool)

(declare-fun res!605092 () Bool)

(declare-fun e!859955 () Bool)

(assert (=> d!378828 (=> (not res!605092) (not e!859955))))

(assert (=> d!378828 (= res!605092 (semiInverseModEq!903 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toValue!3621 (transformation!2378 (rule!4123 t2!34)))))))

(assert (=> d!378828 (= (inv!18059 (transformation!2378 (rule!4123 t2!34))) e!859955)))

(declare-fun b!1342810 () Bool)

(assert (=> b!1342810 (= e!859955 (equivClasses!862 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toValue!3621 (transformation!2378 (rule!4123 t2!34)))))))

(assert (= (and d!378828 res!605092) b!1342810))

(declare-fun m!1501471 () Bool)

(assert (=> d!378828 m!1501471))

(declare-fun m!1501473 () Bool)

(assert (=> b!1342810 m!1501473))

(assert (=> b!1342644 d!378828))

(declare-fun d!378830 () Bool)

(declare-fun res!605097 () Bool)

(declare-fun e!859958 () Bool)

(assert (=> d!378830 (=> (not res!605097) (not e!859958))))

(assert (=> d!378830 (= res!605097 (not (isEmpty!8190 (originalCharacters!3240 t1!34))))))

(assert (=> d!378830 (= (inv!18060 t1!34) e!859958)))

(declare-fun b!1342815 () Bool)

(declare-fun res!605098 () Bool)

(assert (=> b!1342815 (=> (not res!605098) (not e!859958))))

(assert (=> b!1342815 (= res!605098 (= (originalCharacters!3240 t1!34) (list!5228 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (value!77407 t1!34)))))))

(declare-fun b!1342816 () Bool)

(assert (=> b!1342816 (= e!859958 (= (size!11183 t1!34) (size!11187 (originalCharacters!3240 t1!34))))))

(assert (= (and d!378830 res!605097) b!1342815))

(assert (= (and b!1342815 res!605098) b!1342816))

(declare-fun b_lambda!39723 () Bool)

(assert (=> (not b_lambda!39723) (not b!1342815)))

(assert (=> b!1342815 t!119593))

(declare-fun b_and!89901 () Bool)

(assert (= b_and!89895 (and (=> t!119593 result!85890) b_and!89901)))

(assert (=> b!1342815 t!119595))

(declare-fun b_and!89903 () Bool)

(assert (= b_and!89897 (and (=> t!119595 result!85894) b_and!89903)))

(assert (=> b!1342815 t!119597))

(declare-fun b_and!89905 () Bool)

(assert (= b_and!89899 (and (=> t!119597 result!85896) b_and!89905)))

(declare-fun m!1501475 () Bool)

(assert (=> d!378830 m!1501475))

(assert (=> b!1342815 m!1501403))

(assert (=> b!1342815 m!1501403))

(declare-fun m!1501477 () Bool)

(assert (=> b!1342815 m!1501477))

(declare-fun m!1501479 () Bool)

(assert (=> b!1342816 m!1501479))

(assert (=> start!119976 d!378830))

(declare-fun d!378832 () Bool)

(declare-fun res!605099 () Bool)

(declare-fun e!859959 () Bool)

(assert (=> d!378832 (=> (not res!605099) (not e!859959))))

(assert (=> d!378832 (= res!605099 (not (isEmpty!8190 (originalCharacters!3240 t2!34))))))

(assert (=> d!378832 (= (inv!18060 t2!34) e!859959)))

(declare-fun b!1342817 () Bool)

(declare-fun res!605100 () Bool)

(assert (=> b!1342817 (=> (not res!605100) (not e!859959))))

(assert (=> b!1342817 (= res!605100 (= (originalCharacters!3240 t2!34) (list!5228 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (value!77407 t2!34)))))))

(declare-fun b!1342818 () Bool)

(assert (=> b!1342818 (= e!859959 (= (size!11183 t2!34) (size!11187 (originalCharacters!3240 t2!34))))))

(assert (= (and d!378832 res!605099) b!1342817))

(assert (= (and b!1342817 res!605100) b!1342818))

(declare-fun b_lambda!39725 () Bool)

(assert (=> (not b_lambda!39725) (not b!1342817)))

(declare-fun tb!70663 () Bool)

(declare-fun t!119599 () Bool)

(assert (=> (and b!1342627 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t2!34)))) t!119599) tb!70663))

(declare-fun b!1342819 () Bool)

(declare-fun e!859960 () Bool)

(declare-fun tp!388812 () Bool)

(assert (=> b!1342819 (= e!859960 (and (inv!18063 (c!219907 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (value!77407 t2!34)))) tp!388812))))

(declare-fun result!85898 () Bool)

(assert (=> tb!70663 (= result!85898 (and (inv!18064 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (value!77407 t2!34))) e!859960))))

(assert (= tb!70663 b!1342819))

(declare-fun m!1501481 () Bool)

(assert (=> b!1342819 m!1501481))

(declare-fun m!1501483 () Bool)

(assert (=> tb!70663 m!1501483))

(assert (=> b!1342817 t!119599))

(declare-fun b_and!89907 () Bool)

(assert (= b_and!89901 (and (=> t!119599 result!85898) b_and!89907)))

(declare-fun t!119601 () Bool)

(declare-fun tb!70665 () Bool)

(assert (=> (and b!1342634 (= (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toChars!3480 (transformation!2378 (rule!4123 t2!34)))) t!119601) tb!70665))

(declare-fun result!85900 () Bool)

(assert (= result!85900 result!85898))

(assert (=> b!1342817 t!119601))

(declare-fun b_and!89909 () Bool)

(assert (= b_and!89903 (and (=> t!119601 result!85900) b_and!89909)))

(declare-fun tb!70667 () Bool)

(declare-fun t!119603 () Bool)

(assert (=> (and b!1342631 (= (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toChars!3480 (transformation!2378 (rule!4123 t2!34)))) t!119603) tb!70667))

(declare-fun result!85902 () Bool)

(assert (= result!85902 result!85898))

(assert (=> b!1342817 t!119603))

(declare-fun b_and!89911 () Bool)

(assert (= b_and!89905 (and (=> t!119603 result!85902) b_and!89911)))

(declare-fun m!1501485 () Bool)

(assert (=> d!378832 m!1501485))

(declare-fun m!1501487 () Bool)

(assert (=> b!1342817 m!1501487))

(assert (=> b!1342817 m!1501487))

(declare-fun m!1501489 () Bool)

(assert (=> b!1342817 m!1501489))

(declare-fun m!1501491 () Bool)

(assert (=> b!1342818 m!1501491))

(assert (=> start!119976 d!378832))

(declare-fun d!378834 () Bool)

(declare-fun lt!444237 () Bool)

(declare-fun e!859966 () Bool)

(assert (=> d!378834 (= lt!444237 e!859966)))

(declare-fun res!605107 () Bool)

(assert (=> d!378834 (=> (not res!605107) (not e!859966))))

(declare-datatypes ((List!13793 0))(
  ( (Nil!13727) (Cons!13727 (h!19128 Token!4418) (t!119622 List!13793)) )
))
(declare-datatypes ((IArray!9049 0))(
  ( (IArray!9050 (innerList!4582 List!13793)) )
))
(declare-datatypes ((Conc!4522 0))(
  ( (Node!4522 (left!11769 Conc!4522) (right!12099 Conc!4522) (csize!9274 Int) (cheight!4733 Int)) (Leaf!6908 (xs!7241 IArray!9049) (csize!9275 Int)) (Empty!4522) )
))
(declare-datatypes ((BalanceConc!8984 0))(
  ( (BalanceConc!8985 (c!219974 Conc!4522)) )
))
(declare-fun list!5231 (BalanceConc!8984) List!13793)

(declare-datatypes ((tuple2!13308 0))(
  ( (tuple2!13309 (_1!7540 BalanceConc!8984) (_2!7540 BalanceConc!8980)) )
))
(declare-fun lex!902 (LexerInterface!2073 List!13787 BalanceConc!8980) tuple2!13308)

(declare-fun print!841 (LexerInterface!2073 BalanceConc!8984) BalanceConc!8980)

(declare-fun singletonSeq!987 (Token!4418) BalanceConc!8984)

(assert (=> d!378834 (= res!605107 (= (list!5231 (_1!7540 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t2!34))))) (list!5231 (singletonSeq!987 t2!34))))))

(declare-fun e!859965 () Bool)

(assert (=> d!378834 (= lt!444237 e!859965)))

(declare-fun res!605108 () Bool)

(assert (=> d!378834 (=> (not res!605108) (not e!859965))))

(declare-fun lt!444236 () tuple2!13308)

(declare-fun size!11188 (BalanceConc!8984) Int)

(assert (=> d!378834 (= res!605108 (= (size!11188 (_1!7540 lt!444236)) 1))))

(assert (=> d!378834 (= lt!444236 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t2!34))))))

(assert (=> d!378834 (not (isEmpty!8188 rules!2550))))

(assert (=> d!378834 (= (rulesProduceIndividualToken!1042 thiss!19762 rules!2550 t2!34) lt!444237)))

(declare-fun b!1342826 () Bool)

(declare-fun res!605109 () Bool)

(assert (=> b!1342826 (=> (not res!605109) (not e!859965))))

(declare-fun apply!3254 (BalanceConc!8984 Int) Token!4418)

(assert (=> b!1342826 (= res!605109 (= (apply!3254 (_1!7540 lt!444236) 0) t2!34))))

(declare-fun b!1342827 () Bool)

(declare-fun isEmpty!8191 (BalanceConc!8980) Bool)

(assert (=> b!1342827 (= e!859965 (isEmpty!8191 (_2!7540 lt!444236)))))

(declare-fun b!1342828 () Bool)

(assert (=> b!1342828 (= e!859966 (isEmpty!8191 (_2!7540 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t2!34))))))))

(assert (= (and d!378834 res!605108) b!1342826))

(assert (= (and b!1342826 res!605109) b!1342827))

(assert (= (and d!378834 res!605107) b!1342828))

(declare-fun m!1501493 () Bool)

(assert (=> d!378834 m!1501493))

(declare-fun m!1501495 () Bool)

(assert (=> d!378834 m!1501495))

(declare-fun m!1501497 () Bool)

(assert (=> d!378834 m!1501497))

(declare-fun m!1501499 () Bool)

(assert (=> d!378834 m!1501499))

(assert (=> d!378834 m!1501243))

(declare-fun m!1501501 () Bool)

(assert (=> d!378834 m!1501501))

(assert (=> d!378834 m!1501497))

(assert (=> d!378834 m!1501493))

(assert (=> d!378834 m!1501497))

(declare-fun m!1501503 () Bool)

(assert (=> d!378834 m!1501503))

(declare-fun m!1501505 () Bool)

(assert (=> b!1342826 m!1501505))

(declare-fun m!1501507 () Bool)

(assert (=> b!1342827 m!1501507))

(assert (=> b!1342828 m!1501497))

(assert (=> b!1342828 m!1501497))

(assert (=> b!1342828 m!1501493))

(assert (=> b!1342828 m!1501493))

(assert (=> b!1342828 m!1501495))

(declare-fun m!1501509 () Bool)

(assert (=> b!1342828 m!1501509))

(assert (=> b!1342633 d!378834))

(declare-fun d!378838 () Bool)

(declare-fun lt!444240 () Int)

(assert (=> d!378838 (= lt!444240 (size!11187 (list!5228 lt!444166)))))

(declare-fun size!11189 (Conc!4520) Int)

(assert (=> d!378838 (= lt!444240 (size!11189 (c!219907 lt!444166)))))

(assert (=> d!378838 (= (size!11184 lt!444166) lt!444240)))

(declare-fun bs!332416 () Bool)

(assert (= bs!332416 d!378838))

(assert (=> bs!332416 m!1501405))

(assert (=> bs!332416 m!1501405))

(declare-fun m!1501511 () Bool)

(assert (=> bs!332416 m!1501511))

(declare-fun m!1501513 () Bool)

(assert (=> bs!332416 m!1501513))

(assert (=> b!1342622 d!378838))

(declare-fun d!378840 () Bool)

(declare-fun lt!444241 () BalanceConc!8980)

(assert (=> d!378840 (= (list!5228 lt!444241) (originalCharacters!3240 t2!34))))

(assert (=> d!378840 (= lt!444241 (dynLambda!6053 (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (value!77407 t2!34)))))

(assert (=> d!378840 (= (charsOf!1350 t2!34) lt!444241)))

(declare-fun b_lambda!39727 () Bool)

(assert (=> (not b_lambda!39727) (not d!378840)))

(assert (=> d!378840 t!119599))

(declare-fun b_and!89913 () Bool)

(assert (= b_and!89907 (and (=> t!119599 result!85898) b_and!89913)))

(assert (=> d!378840 t!119601))

(declare-fun b_and!89915 () Bool)

(assert (= b_and!89909 (and (=> t!119601 result!85900) b_and!89915)))

(assert (=> d!378840 t!119603))

(declare-fun b_and!89917 () Bool)

(assert (= b_and!89911 (and (=> t!119603 result!85902) b_and!89917)))

(declare-fun m!1501515 () Bool)

(assert (=> d!378840 m!1501515))

(assert (=> d!378840 m!1501487))

(assert (=> b!1342622 d!378840))

(declare-fun d!378842 () Bool)

(declare-fun prefixMatchZipperSequence!221 (Regex!3692 BalanceConc!8980) Bool)

(declare-fun ++!3517 (BalanceConc!8980 BalanceConc!8980) BalanceConc!8980)

(declare-fun singletonSeq!988 (C!7674) BalanceConc!8980)

(assert (=> d!378842 (= (separableTokensPredicate!356 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!221 (rulesRegex!261 thiss!19762 rules!2550) (++!3517 (charsOf!1350 t1!34) (singletonSeq!988 (apply!3250 (charsOf!1350 t2!34) 0))))))))

(declare-fun bs!332417 () Bool)

(assert (= bs!332417 d!378842))

(assert (=> bs!332417 m!1501201))

(declare-fun m!1501517 () Bool)

(assert (=> bs!332417 m!1501517))

(assert (=> bs!332417 m!1501221))

(assert (=> bs!332417 m!1501229))

(declare-fun m!1501519 () Bool)

(assert (=> bs!332417 m!1501519))

(declare-fun m!1501521 () Bool)

(assert (=> bs!332417 m!1501521))

(assert (=> bs!332417 m!1501229))

(assert (=> bs!332417 m!1501201))

(assert (=> bs!332417 m!1501221))

(declare-fun m!1501523 () Bool)

(assert (=> bs!332417 m!1501523))

(assert (=> bs!332417 m!1501519))

(assert (=> bs!332417 m!1501517))

(assert (=> bs!332417 m!1501523))

(assert (=> b!1342643 d!378842))

(declare-fun d!378844 () Bool)

(declare-fun res!605112 () Bool)

(declare-fun e!859969 () Bool)

(assert (=> d!378844 (=> (not res!605112) (not e!859969))))

(declare-fun rulesValid!872 (LexerInterface!2073 List!13787) Bool)

(assert (=> d!378844 (= res!605112 (rulesValid!872 thiss!19762 rules!2550))))

(assert (=> d!378844 (= (rulesInvariant!1943 thiss!19762 rules!2550) e!859969)))

(declare-fun b!1342831 () Bool)

(declare-datatypes ((List!13794 0))(
  ( (Nil!13728) (Cons!13728 (h!19129 String!16578) (t!119623 List!13794)) )
))
(declare-fun noDuplicateTag!872 (LexerInterface!2073 List!13787 List!13794) Bool)

(assert (=> b!1342831 (= e!859969 (noDuplicateTag!872 thiss!19762 rules!2550 Nil!13728))))

(assert (= (and d!378844 res!605112) b!1342831))

(declare-fun m!1501525 () Bool)

(assert (=> d!378844 m!1501525))

(declare-fun m!1501527 () Bool)

(assert (=> b!1342831 m!1501527))

(assert (=> b!1342624 d!378844))

(declare-fun b!1342842 () Bool)

(declare-fun res!605115 () Bool)

(declare-fun e!859978 () Bool)

(assert (=> b!1342842 (=> res!605115 e!859978)))

(assert (=> b!1342842 (= res!605115 (not (is-IntegerValue!7406 (value!77407 t1!34))))))

(declare-fun e!859977 () Bool)

(assert (=> b!1342842 (= e!859977 e!859978)))

(declare-fun b!1342843 () Bool)

(declare-fun e!859976 () Bool)

(declare-fun inv!16 (TokenValue!2468) Bool)

(assert (=> b!1342843 (= e!859976 (inv!16 (value!77407 t1!34)))))

(declare-fun d!378846 () Bool)

(declare-fun c!219925 () Bool)

(assert (=> d!378846 (= c!219925 (is-IntegerValue!7404 (value!77407 t1!34)))))

(assert (=> d!378846 (= (inv!21 (value!77407 t1!34)) e!859976)))

(declare-fun b!1342844 () Bool)

(declare-fun inv!17 (TokenValue!2468) Bool)

(assert (=> b!1342844 (= e!859977 (inv!17 (value!77407 t1!34)))))

(declare-fun b!1342845 () Bool)

(assert (=> b!1342845 (= e!859976 e!859977)))

(declare-fun c!219926 () Bool)

(assert (=> b!1342845 (= c!219926 (is-IntegerValue!7405 (value!77407 t1!34)))))

(declare-fun b!1342846 () Bool)

(declare-fun inv!15 (TokenValue!2468) Bool)

(assert (=> b!1342846 (= e!859978 (inv!15 (value!77407 t1!34)))))

(assert (= (and d!378846 c!219925) b!1342843))

(assert (= (and d!378846 (not c!219925)) b!1342845))

(assert (= (and b!1342845 c!219926) b!1342844))

(assert (= (and b!1342845 (not c!219926)) b!1342842))

(assert (= (and b!1342842 (not res!605115)) b!1342846))

(declare-fun m!1501529 () Bool)

(assert (=> b!1342843 m!1501529))

(declare-fun m!1501531 () Bool)

(assert (=> b!1342844 m!1501531))

(declare-fun m!1501533 () Bool)

(assert (=> b!1342846 m!1501533))

(assert (=> b!1342645 d!378846))

(declare-fun b!1342847 () Bool)

(declare-fun res!605116 () Bool)

(declare-fun e!859981 () Bool)

(assert (=> b!1342847 (=> res!605116 e!859981)))

(assert (=> b!1342847 (= res!605116 (not (is-IntegerValue!7406 (value!77407 t2!34))))))

(declare-fun e!859980 () Bool)

(assert (=> b!1342847 (= e!859980 e!859981)))

(declare-fun b!1342848 () Bool)

(declare-fun e!859979 () Bool)

(assert (=> b!1342848 (= e!859979 (inv!16 (value!77407 t2!34)))))

(declare-fun d!378848 () Bool)

(declare-fun c!219927 () Bool)

(assert (=> d!378848 (= c!219927 (is-IntegerValue!7404 (value!77407 t2!34)))))

(assert (=> d!378848 (= (inv!21 (value!77407 t2!34)) e!859979)))

(declare-fun b!1342849 () Bool)

(assert (=> b!1342849 (= e!859980 (inv!17 (value!77407 t2!34)))))

(declare-fun b!1342850 () Bool)

(assert (=> b!1342850 (= e!859979 e!859980)))

(declare-fun c!219928 () Bool)

(assert (=> b!1342850 (= c!219928 (is-IntegerValue!7405 (value!77407 t2!34)))))

(declare-fun b!1342851 () Bool)

(assert (=> b!1342851 (= e!859981 (inv!15 (value!77407 t2!34)))))

(assert (= (and d!378848 c!219927) b!1342848))

(assert (= (and d!378848 (not c!219927)) b!1342850))

(assert (= (and b!1342850 c!219928) b!1342849))

(assert (= (and b!1342850 (not c!219928)) b!1342847))

(assert (= (and b!1342847 (not res!605116)) b!1342851))

(declare-fun m!1501535 () Bool)

(assert (=> b!1342848 m!1501535))

(declare-fun m!1501537 () Bool)

(assert (=> b!1342849 m!1501537))

(declare-fun m!1501539 () Bool)

(assert (=> b!1342851 m!1501539))

(assert (=> b!1342623 d!378848))

(declare-fun b!1342881 () Bool)

(declare-fun res!605134 () Bool)

(declare-fun e!859999 () Bool)

(assert (=> b!1342881 (=> (not res!605134) (not e!859999))))

(assert (=> b!1342881 (= res!605134 (isEmpty!8190 (tail!1933 lt!444162)))))

(declare-fun b!1342882 () Bool)

(declare-fun e!860002 () Bool)

(declare-fun e!859998 () Bool)

(assert (=> b!1342882 (= e!860002 e!859998)))

(declare-fun c!219935 () Bool)

(assert (=> b!1342882 (= c!219935 (is-EmptyLang!3692 lt!444171))))

(declare-fun b!1342883 () Bool)

(declare-fun res!605140 () Bool)

(declare-fun e!860000 () Bool)

(assert (=> b!1342883 (=> res!605140 e!860000)))

(assert (=> b!1342883 (= res!605140 (not (is-ElementMatch!3692 lt!444171)))))

(assert (=> b!1342883 (= e!859998 e!860000)))

(declare-fun bm!90497 () Bool)

(declare-fun call!90502 () Bool)

(assert (=> bm!90497 (= call!90502 (isEmpty!8190 lt!444162))))

(declare-fun b!1342884 () Bool)

(declare-fun res!605137 () Bool)

(declare-fun e!859996 () Bool)

(assert (=> b!1342884 (=> res!605137 e!859996)))

(assert (=> b!1342884 (= res!605137 (not (isEmpty!8190 (tail!1933 lt!444162))))))

(declare-fun b!1342885 () Bool)

(declare-fun e!859997 () Bool)

(assert (=> b!1342885 (= e!859997 (matchR!1685 (derivativeStep!932 lt!444171 (head!2384 lt!444162)) (tail!1933 lt!444162)))))

(declare-fun b!1342886 () Bool)

(declare-fun lt!444244 () Bool)

(assert (=> b!1342886 (= e!860002 (= lt!444244 call!90502))))

(declare-fun b!1342887 () Bool)

(declare-fun res!605139 () Bool)

(assert (=> b!1342887 (=> (not res!605139) (not e!859999))))

(assert (=> b!1342887 (= res!605139 (not call!90502))))

(declare-fun b!1342888 () Bool)

(declare-fun nullable!1174 (Regex!3692) Bool)

(assert (=> b!1342888 (= e!859997 (nullable!1174 lt!444171))))

(declare-fun b!1342889 () Bool)

(assert (=> b!1342889 (= e!859999 (= (head!2384 lt!444162) (c!219908 lt!444171)))))

(declare-fun b!1342880 () Bool)

(declare-fun res!605135 () Bool)

(assert (=> b!1342880 (=> res!605135 e!860000)))

(assert (=> b!1342880 (= res!605135 e!859999)))

(declare-fun res!605138 () Bool)

(assert (=> b!1342880 (=> (not res!605138) (not e!859999))))

(assert (=> b!1342880 (= res!605138 lt!444244)))

(declare-fun d!378850 () Bool)

(assert (=> d!378850 e!860002))

(declare-fun c!219937 () Bool)

(assert (=> d!378850 (= c!219937 (is-EmptyExpr!3692 lt!444171))))

(assert (=> d!378850 (= lt!444244 e!859997)))

(declare-fun c!219936 () Bool)

(assert (=> d!378850 (= c!219936 (isEmpty!8190 lt!444162))))

(assert (=> d!378850 (validRegex!1594 lt!444171)))

(assert (=> d!378850 (= (matchR!1685 lt!444171 lt!444162) lt!444244)))

(declare-fun b!1342890 () Bool)

(assert (=> b!1342890 (= e!859996 (not (= (head!2384 lt!444162) (c!219908 lt!444171))))))

(declare-fun b!1342891 () Bool)

(declare-fun e!860001 () Bool)

(assert (=> b!1342891 (= e!860000 e!860001)))

(declare-fun res!605136 () Bool)

(assert (=> b!1342891 (=> (not res!605136) (not e!860001))))

(assert (=> b!1342891 (= res!605136 (not lt!444244))))

(declare-fun b!1342892 () Bool)

(assert (=> b!1342892 (= e!859998 (not lt!444244))))

(declare-fun b!1342893 () Bool)

(assert (=> b!1342893 (= e!860001 e!859996)))

(declare-fun res!605133 () Bool)

(assert (=> b!1342893 (=> res!605133 e!859996)))

(assert (=> b!1342893 (= res!605133 call!90502)))

(assert (= (and d!378850 c!219936) b!1342888))

(assert (= (and d!378850 (not c!219936)) b!1342885))

(assert (= (and d!378850 c!219937) b!1342886))

(assert (= (and d!378850 (not c!219937)) b!1342882))

(assert (= (and b!1342882 c!219935) b!1342892))

(assert (= (and b!1342882 (not c!219935)) b!1342883))

(assert (= (and b!1342883 (not res!605140)) b!1342880))

(assert (= (and b!1342880 res!605138) b!1342887))

(assert (= (and b!1342887 res!605139) b!1342881))

(assert (= (and b!1342881 res!605134) b!1342889))

(assert (= (and b!1342880 (not res!605135)) b!1342891))

(assert (= (and b!1342891 res!605136) b!1342893))

(assert (= (and b!1342893 (not res!605133)) b!1342884))

(assert (= (and b!1342884 (not res!605137)) b!1342890))

(assert (= (or b!1342886 b!1342887 b!1342893) bm!90497))

(declare-fun m!1501541 () Bool)

(assert (=> d!378850 m!1501541))

(assert (=> d!378850 m!1501459))

(assert (=> b!1342884 m!1501433))

(assert (=> b!1342884 m!1501433))

(declare-fun m!1501543 () Bool)

(assert (=> b!1342884 m!1501543))

(declare-fun m!1501545 () Bool)

(assert (=> b!1342889 m!1501545))

(assert (=> b!1342890 m!1501545))

(declare-fun m!1501547 () Bool)

(assert (=> b!1342888 m!1501547))

(assert (=> bm!90497 m!1501541))

(assert (=> b!1342881 m!1501433))

(assert (=> b!1342881 m!1501433))

(assert (=> b!1342881 m!1501543))

(assert (=> b!1342885 m!1501545))

(assert (=> b!1342885 m!1501545))

(declare-fun m!1501549 () Bool)

(assert (=> b!1342885 m!1501549))

(assert (=> b!1342885 m!1501433))

(assert (=> b!1342885 m!1501549))

(assert (=> b!1342885 m!1501433))

(declare-fun m!1501551 () Bool)

(assert (=> b!1342885 m!1501551))

(assert (=> b!1342641 d!378850))

(declare-fun bs!332418 () Bool)

(declare-fun d!378852 () Bool)

(assert (= bs!332418 (and d!378852 b!1342630)))

(declare-fun lambda!56338 () Int)

(assert (=> bs!332418 (not (= lambda!56338 lambda!56306))))

(assert (=> d!378852 true))

(declare-fun order!8223 () Int)

(declare-fun dynLambda!6055 (Int Int) Int)

(assert (=> d!378852 (< (dynLambda!6055 order!8223 lambda!56306) (dynLambda!6055 order!8223 lambda!56338))))

(declare-fun forall!3345 (List!13788 Int) Bool)

(assert (=> d!378852 (= (exists!416 lt!444170 lambda!56306) (not (forall!3345 lt!444170 lambda!56338)))))

(declare-fun bs!332419 () Bool)

(assert (= bs!332419 d!378852))

(declare-fun m!1501553 () Bool)

(assert (=> bs!332419 m!1501553))

(assert (=> b!1342630 d!378852))

(declare-fun d!378854 () Bool)

(declare-fun lt!444247 () List!13788)

(declare-fun size!11190 (List!13788) Int)

(declare-fun size!11191 (List!13787) Int)

(assert (=> d!378854 (= (size!11190 lt!444247) (size!11191 rules!2550))))

(declare-fun e!860005 () List!13788)

(assert (=> d!378854 (= lt!444247 e!860005)))

(declare-fun c!219940 () Bool)

(assert (=> d!378854 (= c!219940 (is-Nil!13721 rules!2550))))

(assert (=> d!378854 (= (map!3028 rules!2550 lambda!56305) lt!444247)))

(declare-fun b!1342900 () Bool)

(assert (=> b!1342900 (= e!860005 Nil!13722)))

(declare-fun b!1342901 () Bool)

(declare-fun $colon$colon!176 (List!13788 Regex!3692) List!13788)

(declare-fun dynLambda!6056 (Int Rule!4556) Regex!3692)

(assert (=> b!1342901 (= e!860005 ($colon$colon!176 (map!3028 (t!119586 rules!2550) lambda!56305) (dynLambda!6056 lambda!56305 (h!19122 rules!2550))))))

(assert (= (and d!378854 c!219940) b!1342900))

(assert (= (and d!378854 (not c!219940)) b!1342901))

(declare-fun b_lambda!39729 () Bool)

(assert (=> (not b_lambda!39729) (not b!1342901)))

(declare-fun m!1501555 () Bool)

(assert (=> d!378854 m!1501555))

(declare-fun m!1501557 () Bool)

(assert (=> d!378854 m!1501557))

(declare-fun m!1501559 () Bool)

(assert (=> b!1342901 m!1501559))

(declare-fun m!1501561 () Bool)

(assert (=> b!1342901 m!1501561))

(assert (=> b!1342901 m!1501559))

(assert (=> b!1342901 m!1501561))

(declare-fun m!1501563 () Bool)

(assert (=> b!1342901 m!1501563))

(assert (=> b!1342630 d!378854))

(declare-fun bs!332420 () Bool)

(declare-fun d!378856 () Bool)

(assert (= bs!332420 (and d!378856 b!1342630)))

(declare-fun lambda!56343 () Int)

(assert (=> bs!332420 (not (= lambda!56343 lambda!56306))))

(declare-fun bs!332421 () Bool)

(assert (= bs!332421 (and d!378856 d!378852)))

(assert (=> bs!332421 (not (= lambda!56343 lambda!56338))))

(declare-fun lambda!56344 () Int)

(assert (=> bs!332420 (= lambda!56344 lambda!56306)))

(assert (=> bs!332421 (not (= lambda!56344 lambda!56338))))

(declare-fun bs!332422 () Bool)

(assert (= bs!332422 d!378856))

(assert (=> bs!332422 (not (= lambda!56344 lambda!56343))))

(assert (=> d!378856 true))

(assert (=> d!378856 (= (matchR!1685 lt!444171 lt!444162) (exists!416 lt!444170 lambda!56344))))

(declare-fun lt!444250 () Unit!19834)

(declare-fun choose!8239 (Regex!3692 List!13788 List!13786) Unit!19834)

(assert (=> d!378856 (= lt!444250 (choose!8239 lt!444171 lt!444170 lt!444162))))

(assert (=> d!378856 (forall!3345 lt!444170 lambda!56343)))

(assert (=> d!378856 (= (matchRGenUnionSpec!109 lt!444171 lt!444170 lt!444162) lt!444250)))

(assert (=> bs!332422 m!1501273))

(declare-fun m!1501565 () Bool)

(assert (=> bs!332422 m!1501565))

(declare-fun m!1501567 () Bool)

(assert (=> bs!332422 m!1501567))

(declare-fun m!1501569 () Bool)

(assert (=> bs!332422 m!1501569))

(assert (=> b!1342630 d!378856))

(declare-fun bs!332423 () Bool)

(declare-fun d!378858 () Bool)

(assert (= bs!332423 (and d!378858 b!1342630)))

(declare-fun lambda!56345 () Int)

(assert (=> bs!332423 (not (= lambda!56345 lambda!56306))))

(declare-fun bs!332424 () Bool)

(assert (= bs!332424 (and d!378858 d!378852)))

(assert (=> bs!332424 (= lambda!56345 lambda!56338)))

(declare-fun bs!332425 () Bool)

(assert (= bs!332425 (and d!378858 d!378856)))

(assert (=> bs!332425 (not (= lambda!56345 lambda!56343))))

(assert (=> bs!332425 (not (= lambda!56345 lambda!56344))))

(assert (=> d!378858 true))

(assert (=> d!378858 (< (dynLambda!6055 order!8223 lambda!56306) (dynLambda!6055 order!8223 lambda!56345))))

(assert (=> d!378858 (= (exists!416 (map!3028 rules!2550 lambda!56305) lambda!56306) (not (forall!3345 (map!3028 rules!2550 lambda!56305) lambda!56345)))))

(declare-fun bs!332426 () Bool)

(assert (= bs!332426 d!378858))

(assert (=> bs!332426 m!1501205))

(declare-fun m!1501571 () Bool)

(assert (=> bs!332426 m!1501571))

(assert (=> b!1342630 d!378858))

(declare-fun d!378860 () Bool)

(declare-fun lt!444253 () Bool)

(declare-fun content!1951 (List!13788) (Set Regex!3692))

(assert (=> d!378860 (= lt!444253 (set.member (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306) (content!1951 (map!3028 rules!2550 lambda!56305))))))

(declare-fun e!860012 () Bool)

(assert (=> d!378860 (= lt!444253 e!860012)))

(declare-fun res!605147 () Bool)

(assert (=> d!378860 (=> (not res!605147) (not e!860012))))

(assert (=> d!378860 (= res!605147 (is-Cons!13722 (map!3028 rules!2550 lambda!56305)))))

(assert (=> d!378860 (= (contains!2506 (map!3028 rules!2550 lambda!56305) (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306)) lt!444253)))

(declare-fun b!1342908 () Bool)

(declare-fun e!860013 () Bool)

(assert (=> b!1342908 (= e!860012 e!860013)))

(declare-fun res!605148 () Bool)

(assert (=> b!1342908 (=> res!605148 e!860013)))

(assert (=> b!1342908 (= res!605148 (= (h!19123 (map!3028 rules!2550 lambda!56305)) (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306)))))

(declare-fun b!1342909 () Bool)

(assert (=> b!1342909 (= e!860013 (contains!2506 (t!119587 (map!3028 rules!2550 lambda!56305)) (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306)))))

(assert (= (and d!378860 res!605147) b!1342908))

(assert (= (and b!1342908 (not res!605148)) b!1342909))

(assert (=> d!378860 m!1501205))

(declare-fun m!1501573 () Bool)

(assert (=> d!378860 m!1501573))

(assert (=> d!378860 m!1501207))

(declare-fun m!1501575 () Bool)

(assert (=> d!378860 m!1501575))

(assert (=> b!1342909 m!1501207))

(declare-fun m!1501577 () Bool)

(assert (=> b!1342909 m!1501577))

(assert (=> b!1342632 d!378860))

(assert (=> b!1342632 d!378854))

(declare-fun e!860023 () Bool)

(declare-fun b!1342922 () Bool)

(declare-fun dynLambda!6057 (Int Regex!3692) Bool)

(assert (=> b!1342922 (= e!860023 (dynLambda!6057 lambda!56306 (h!19123 (map!3028 rules!2550 lambda!56305))))))

(declare-fun e!860024 () Regex!3692)

(declare-fun b!1342923 () Bool)

(assert (=> b!1342923 (= e!860024 (getWitness!306 (t!119587 (map!3028 rules!2550 lambda!56305)) lambda!56306))))

(declare-fun b!1342924 () Bool)

(declare-fun e!860025 () Regex!3692)

(assert (=> b!1342924 (= e!860025 e!860024)))

(declare-fun c!219945 () Bool)

(assert (=> b!1342924 (= c!219945 (is-Cons!13722 (map!3028 rules!2550 lambda!56305)))))

(declare-fun b!1342925 () Bool)

(assert (=> b!1342925 (= e!860025 (h!19123 (map!3028 rules!2550 lambda!56305)))))

(declare-fun lt!444259 () Regex!3692)

(declare-fun e!860022 () Bool)

(declare-fun b!1342926 () Bool)

(assert (=> b!1342926 (= e!860022 (contains!2506 (map!3028 rules!2550 lambda!56305) lt!444259))))

(declare-fun b!1342927 () Bool)

(declare-fun lt!444258 () Unit!19834)

(declare-fun Unit!19839 () Unit!19834)

(assert (=> b!1342927 (= lt!444258 Unit!19839)))

(assert (=> b!1342927 false))

(declare-fun head!2385 (List!13788) Regex!3692)

(assert (=> b!1342927 (= e!860024 (head!2385 (map!3028 rules!2550 lambda!56305)))))

(declare-fun d!378862 () Bool)

(assert (=> d!378862 e!860022))

(declare-fun res!605153 () Bool)

(assert (=> d!378862 (=> (not res!605153) (not e!860022))))

(assert (=> d!378862 (= res!605153 (dynLambda!6057 lambda!56306 lt!444259))))

(assert (=> d!378862 (= lt!444259 e!860025)))

(declare-fun c!219946 () Bool)

(assert (=> d!378862 (= c!219946 e!860023)))

(declare-fun res!605154 () Bool)

(assert (=> d!378862 (=> (not res!605154) (not e!860023))))

(assert (=> d!378862 (= res!605154 (is-Cons!13722 (map!3028 rules!2550 lambda!56305)))))

(assert (=> d!378862 (exists!416 (map!3028 rules!2550 lambda!56305) lambda!56306)))

(assert (=> d!378862 (= (getWitness!306 (map!3028 rules!2550 lambda!56305) lambda!56306) lt!444259)))

(assert (= (and d!378862 res!605154) b!1342922))

(assert (= (and d!378862 c!219946) b!1342925))

(assert (= (and d!378862 (not c!219946)) b!1342924))

(assert (= (and b!1342924 c!219945) b!1342923))

(assert (= (and b!1342924 (not c!219945)) b!1342927))

(assert (= (and d!378862 res!605153) b!1342926))

(declare-fun b_lambda!39731 () Bool)

(assert (=> (not b_lambda!39731) (not b!1342922)))

(declare-fun b_lambda!39733 () Bool)

(assert (=> (not b_lambda!39733) (not d!378862)))

(declare-fun m!1501579 () Bool)

(assert (=> b!1342923 m!1501579))

(declare-fun m!1501581 () Bool)

(assert (=> b!1342922 m!1501581))

(assert (=> b!1342927 m!1501205))

(declare-fun m!1501583 () Bool)

(assert (=> b!1342927 m!1501583))

(assert (=> b!1342926 m!1501205))

(declare-fun m!1501585 () Bool)

(assert (=> b!1342926 m!1501585))

(declare-fun m!1501587 () Bool)

(assert (=> d!378862 m!1501587))

(assert (=> d!378862 m!1501205))

(assert (=> d!378862 m!1501263))

(assert (=> b!1342632 d!378862))

(declare-fun d!378864 () Bool)

(declare-fun lt!444261 () Bool)

(declare-fun e!860027 () Bool)

(assert (=> d!378864 (= lt!444261 e!860027)))

(declare-fun res!605155 () Bool)

(assert (=> d!378864 (=> (not res!605155) (not e!860027))))

(assert (=> d!378864 (= res!605155 (= (list!5231 (_1!7540 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t1!34))))) (list!5231 (singletonSeq!987 t1!34))))))

(declare-fun e!860026 () Bool)

(assert (=> d!378864 (= lt!444261 e!860026)))

(declare-fun res!605156 () Bool)

(assert (=> d!378864 (=> (not res!605156) (not e!860026))))

(declare-fun lt!444260 () tuple2!13308)

(assert (=> d!378864 (= res!605156 (= (size!11188 (_1!7540 lt!444260)) 1))))

(assert (=> d!378864 (= lt!444260 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t1!34))))))

(assert (=> d!378864 (not (isEmpty!8188 rules!2550))))

(assert (=> d!378864 (= (rulesProduceIndividualToken!1042 thiss!19762 rules!2550 t1!34) lt!444261)))

(declare-fun b!1342928 () Bool)

(declare-fun res!605157 () Bool)

(assert (=> b!1342928 (=> (not res!605157) (not e!860026))))

(assert (=> b!1342928 (= res!605157 (= (apply!3254 (_1!7540 lt!444260) 0) t1!34))))

(declare-fun b!1342929 () Bool)

(assert (=> b!1342929 (= e!860026 (isEmpty!8191 (_2!7540 lt!444260)))))

(declare-fun b!1342930 () Bool)

(assert (=> b!1342930 (= e!860027 (isEmpty!8191 (_2!7540 (lex!902 thiss!19762 rules!2550 (print!841 thiss!19762 (singletonSeq!987 t1!34))))))))

(assert (= (and d!378864 res!605156) b!1342928))

(assert (= (and b!1342928 res!605157) b!1342929))

(assert (= (and d!378864 res!605155) b!1342930))

(declare-fun m!1501589 () Bool)

(assert (=> d!378864 m!1501589))

(declare-fun m!1501591 () Bool)

(assert (=> d!378864 m!1501591))

(declare-fun m!1501593 () Bool)

(assert (=> d!378864 m!1501593))

(declare-fun m!1501595 () Bool)

(assert (=> d!378864 m!1501595))

(assert (=> d!378864 m!1501243))

(declare-fun m!1501597 () Bool)

(assert (=> d!378864 m!1501597))

(assert (=> d!378864 m!1501593))

(assert (=> d!378864 m!1501589))

(assert (=> d!378864 m!1501593))

(declare-fun m!1501599 () Bool)

(assert (=> d!378864 m!1501599))

(declare-fun m!1501601 () Bool)

(assert (=> b!1342928 m!1501601))

(declare-fun m!1501603 () Bool)

(assert (=> b!1342929 m!1501603))

(assert (=> b!1342930 m!1501593))

(assert (=> b!1342930 m!1501593))

(assert (=> b!1342930 m!1501589))

(assert (=> b!1342930 m!1501589))

(assert (=> b!1342930 m!1501591))

(declare-fun m!1501605 () Bool)

(assert (=> b!1342930 m!1501605))

(assert (=> b!1342621 d!378864))

(declare-fun d!378866 () Bool)

(declare-fun lt!444262 () Bool)

(assert (=> d!378866 (= lt!444262 (set.member lt!444165 (content!1950 lt!444164)))))

(declare-fun e!860029 () Bool)

(assert (=> d!378866 (= lt!444262 e!860029)))

(declare-fun res!605158 () Bool)

(assert (=> d!378866 (=> (not res!605158) (not e!860029))))

(assert (=> d!378866 (= res!605158 (is-Cons!13720 lt!444164))))

(assert (=> d!378866 (= (contains!2507 lt!444164 lt!444165) lt!444262)))

(declare-fun b!1342931 () Bool)

(declare-fun e!860028 () Bool)

(assert (=> b!1342931 (= e!860029 e!860028)))

(declare-fun res!605159 () Bool)

(assert (=> b!1342931 (=> res!605159 e!860028)))

(assert (=> b!1342931 (= res!605159 (= (h!19121 lt!444164) lt!444165))))

(declare-fun b!1342932 () Bool)

(assert (=> b!1342932 (= e!860028 (contains!2507 (t!119585 lt!444164) lt!444165))))

(assert (= (and d!378866 res!605158) b!1342931))

(assert (= (and b!1342931 (not res!605159)) b!1342932))

(assert (=> d!378866 m!1501417))

(declare-fun m!1501607 () Bool)

(assert (=> d!378866 m!1501607))

(declare-fun m!1501609 () Bool)

(assert (=> b!1342932 m!1501609))

(assert (=> b!1342642 d!378866))

(declare-fun d!378868 () Bool)

(declare-fun lt!444263 () C!7674)

(assert (=> d!378868 (= lt!444263 (apply!3252 (list!5228 lt!444163) 0))))

(assert (=> d!378868 (= lt!444263 (apply!3253 (c!219907 lt!444163) 0))))

(declare-fun e!860030 () Bool)

(assert (=> d!378868 e!860030))

(declare-fun res!605160 () Bool)

(assert (=> d!378868 (=> (not res!605160) (not e!860030))))

(assert (=> d!378868 (= res!605160 (<= 0 0))))

(assert (=> d!378868 (= (apply!3250 lt!444163 0) lt!444263)))

(declare-fun b!1342933 () Bool)

(assert (=> b!1342933 (= e!860030 (< 0 (size!11184 lt!444163)))))

(assert (= (and d!378868 res!605160) b!1342933))

(assert (=> d!378868 m!1501231))

(assert (=> d!378868 m!1501231))

(declare-fun m!1501611 () Bool)

(assert (=> d!378868 m!1501611))

(declare-fun m!1501613 () Bool)

(assert (=> d!378868 m!1501613))

(declare-fun m!1501615 () Bool)

(assert (=> b!1342933 m!1501615))

(assert (=> b!1342642 d!378868))

(declare-fun b!1342947 () Bool)

(declare-fun e!860033 () Bool)

(declare-fun tp!388825 () Bool)

(declare-fun tp!388824 () Bool)

(assert (=> b!1342947 (= e!860033 (and tp!388825 tp!388824))))

(assert (=> b!1342644 (= tp!388772 e!860033)))

(declare-fun b!1342944 () Bool)

(declare-fun tp_is_empty!6697 () Bool)

(assert (=> b!1342944 (= e!860033 tp_is_empty!6697)))

(declare-fun b!1342946 () Bool)

(declare-fun tp!388827 () Bool)

(assert (=> b!1342946 (= e!860033 tp!388827)))

(declare-fun b!1342945 () Bool)

(declare-fun tp!388826 () Bool)

(declare-fun tp!388823 () Bool)

(assert (=> b!1342945 (= e!860033 (and tp!388826 tp!388823))))

(assert (= (and b!1342644 (is-ElementMatch!3692 (regex!2378 (rule!4123 t2!34)))) b!1342944))

(assert (= (and b!1342644 (is-Concat!6161 (regex!2378 (rule!4123 t2!34)))) b!1342945))

(assert (= (and b!1342644 (is-Star!3692 (regex!2378 (rule!4123 t2!34)))) b!1342946))

(assert (= (and b!1342644 (is-Union!3692 (regex!2378 (rule!4123 t2!34)))) b!1342947))

(declare-fun b!1342951 () Bool)

(declare-fun e!860034 () Bool)

(declare-fun tp!388830 () Bool)

(declare-fun tp!388829 () Bool)

(assert (=> b!1342951 (= e!860034 (and tp!388830 tp!388829))))

(assert (=> b!1342638 (= tp!388765 e!860034)))

(declare-fun b!1342948 () Bool)

(assert (=> b!1342948 (= e!860034 tp_is_empty!6697)))

(declare-fun b!1342950 () Bool)

(declare-fun tp!388832 () Bool)

(assert (=> b!1342950 (= e!860034 tp!388832)))

(declare-fun b!1342949 () Bool)

(declare-fun tp!388831 () Bool)

(declare-fun tp!388828 () Bool)

(assert (=> b!1342949 (= e!860034 (and tp!388831 tp!388828))))

(assert (= (and b!1342638 (is-ElementMatch!3692 (regex!2378 (h!19122 rules!2550)))) b!1342948))

(assert (= (and b!1342638 (is-Concat!6161 (regex!2378 (h!19122 rules!2550)))) b!1342949))

(assert (= (and b!1342638 (is-Star!3692 (regex!2378 (h!19122 rules!2550)))) b!1342950))

(assert (= (and b!1342638 (is-Union!3692 (regex!2378 (h!19122 rules!2550)))) b!1342951))

(declare-fun b!1342962 () Bool)

(declare-fun b_free!32759 () Bool)

(declare-fun b_next!33463 () Bool)

(assert (=> b!1342962 (= b_free!32759 (not b_next!33463))))

(declare-fun tp!388841 () Bool)

(declare-fun b_and!89919 () Bool)

(assert (=> b!1342962 (= tp!388841 b_and!89919)))

(declare-fun b_free!32761 () Bool)

(declare-fun b_next!33465 () Bool)

(assert (=> b!1342962 (= b_free!32761 (not b_next!33465))))

(declare-fun t!119606 () Bool)

(declare-fun tb!70669 () Bool)

(assert (=> (and b!1342962 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t1!34)))) t!119606) tb!70669))

(declare-fun result!85908 () Bool)

(assert (= result!85908 result!85890))

(assert (=> d!378794 t!119606))

(assert (=> b!1342815 t!119606))

(declare-fun t!119608 () Bool)

(declare-fun tb!70671 () Bool)

(assert (=> (and b!1342962 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t2!34)))) t!119608) tb!70671))

(declare-fun result!85910 () Bool)

(assert (= result!85910 result!85898))

(assert (=> b!1342817 t!119608))

(assert (=> d!378840 t!119608))

(declare-fun tp!388842 () Bool)

(declare-fun b_and!89921 () Bool)

(assert (=> b!1342962 (= tp!388842 (and (=> t!119606 result!85908) (=> t!119608 result!85910) b_and!89921))))

(declare-fun e!860044 () Bool)

(assert (=> b!1342962 (= e!860044 (and tp!388841 tp!388842))))

(declare-fun e!860043 () Bool)

(declare-fun tp!388844 () Bool)

(declare-fun b!1342961 () Bool)

(assert (=> b!1342961 (= e!860043 (and tp!388844 (inv!18056 (tag!2640 (h!19122 (t!119586 rules!2550)))) (inv!18059 (transformation!2378 (h!19122 (t!119586 rules!2550)))) e!860044))))

(declare-fun b!1342960 () Bool)

(declare-fun e!860045 () Bool)

(declare-fun tp!388843 () Bool)

(assert (=> b!1342960 (= e!860045 (and e!860043 tp!388843))))

(assert (=> b!1342640 (= tp!388768 e!860045)))

(assert (= b!1342961 b!1342962))

(assert (= b!1342960 b!1342961))

(assert (= (and b!1342640 (is-Cons!13721 (t!119586 rules!2550))) b!1342960))

(declare-fun m!1501617 () Bool)

(assert (=> b!1342961 m!1501617))

(declare-fun m!1501619 () Bool)

(assert (=> b!1342961 m!1501619))

(declare-fun b!1342967 () Bool)

(declare-fun e!860049 () Bool)

(declare-fun tp!388847 () Bool)

(assert (=> b!1342967 (= e!860049 (and tp_is_empty!6697 tp!388847))))

(assert (=> b!1342645 (= tp!388762 e!860049)))

(assert (= (and b!1342645 (is-Cons!13720 (originalCharacters!3240 t1!34))) b!1342967))

(declare-fun b!1342968 () Bool)

(declare-fun e!860050 () Bool)

(declare-fun tp!388848 () Bool)

(assert (=> b!1342968 (= e!860050 (and tp_is_empty!6697 tp!388848))))

(assert (=> b!1342623 (= tp!388761 e!860050)))

(assert (= (and b!1342623 (is-Cons!13720 (originalCharacters!3240 t2!34))) b!1342968))

(declare-fun b!1342972 () Bool)

(declare-fun e!860051 () Bool)

(declare-fun tp!388851 () Bool)

(declare-fun tp!388850 () Bool)

(assert (=> b!1342972 (= e!860051 (and tp!388851 tp!388850))))

(assert (=> b!1342625 (= tp!388771 e!860051)))

(declare-fun b!1342969 () Bool)

(assert (=> b!1342969 (= e!860051 tp_is_empty!6697)))

(declare-fun b!1342971 () Bool)

(declare-fun tp!388853 () Bool)

(assert (=> b!1342971 (= e!860051 tp!388853)))

(declare-fun b!1342970 () Bool)

(declare-fun tp!388852 () Bool)

(declare-fun tp!388849 () Bool)

(assert (=> b!1342970 (= e!860051 (and tp!388852 tp!388849))))

(assert (= (and b!1342625 (is-ElementMatch!3692 (regex!2378 (rule!4123 t1!34)))) b!1342969))

(assert (= (and b!1342625 (is-Concat!6161 (regex!2378 (rule!4123 t1!34)))) b!1342970))

(assert (= (and b!1342625 (is-Star!3692 (regex!2378 (rule!4123 t1!34)))) b!1342971))

(assert (= (and b!1342625 (is-Union!3692 (regex!2378 (rule!4123 t1!34)))) b!1342972))

(declare-fun b_lambda!39735 () Bool)

(assert (= b_lambda!39733 (or b!1342630 b_lambda!39735)))

(declare-fun bs!332427 () Bool)

(declare-fun d!378870 () Bool)

(assert (= bs!332427 (and d!378870 b!1342630)))

(declare-fun res!605161 () Bool)

(declare-fun e!860052 () Bool)

(assert (=> bs!332427 (=> (not res!605161) (not e!860052))))

(assert (=> bs!332427 (= res!605161 (validRegex!1594 lt!444259))))

(assert (=> bs!332427 (= (dynLambda!6057 lambda!56306 lt!444259) e!860052)))

(declare-fun b!1342973 () Bool)

(assert (=> b!1342973 (= e!860052 (matchR!1685 lt!444259 lt!444162))))

(assert (= (and bs!332427 res!605161) b!1342973))

(declare-fun m!1501621 () Bool)

(assert (=> bs!332427 m!1501621))

(declare-fun m!1501623 () Bool)

(assert (=> b!1342973 m!1501623))

(assert (=> d!378862 d!378870))

(declare-fun b_lambda!39737 () Bool)

(assert (= b_lambda!39731 (or b!1342630 b_lambda!39737)))

(declare-fun bs!332428 () Bool)

(declare-fun d!378872 () Bool)

(assert (= bs!332428 (and d!378872 b!1342630)))

(declare-fun res!605162 () Bool)

(declare-fun e!860053 () Bool)

(assert (=> bs!332428 (=> (not res!605162) (not e!860053))))

(assert (=> bs!332428 (= res!605162 (validRegex!1594 (h!19123 (map!3028 rules!2550 lambda!56305))))))

(assert (=> bs!332428 (= (dynLambda!6057 lambda!56306 (h!19123 (map!3028 rules!2550 lambda!56305))) e!860053)))

(declare-fun b!1342974 () Bool)

(assert (=> b!1342974 (= e!860053 (matchR!1685 (h!19123 (map!3028 rules!2550 lambda!56305)) lt!444162))))

(assert (= (and bs!332428 res!605162) b!1342974))

(declare-fun m!1501625 () Bool)

(assert (=> bs!332428 m!1501625))

(declare-fun m!1501627 () Bool)

(assert (=> b!1342974 m!1501627))

(assert (=> b!1342922 d!378872))

(declare-fun b_lambda!39739 () Bool)

(assert (= b_lambda!39721 (or b!1342646 b_lambda!39739)))

(declare-fun bs!332429 () Bool)

(declare-fun d!378874 () Bool)

(assert (= bs!332429 (and d!378874 b!1342646)))

(declare-fun res!605163 () Bool)

(declare-fun e!860054 () Bool)

(assert (=> bs!332429 (=> (not res!605163) (not e!860054))))

(assert (=> bs!332429 (= res!605163 (matchR!1685 lt!444171 lt!444223))))

(assert (=> bs!332429 (= (dynLambda!6054 lambda!56304 lt!444223) e!860054)))

(declare-fun b!1342975 () Bool)

(declare-fun isPrefix!1104 (List!13786 List!13786) Bool)

(assert (=> b!1342975 (= e!860054 (isPrefix!1104 lt!444164 lt!444223))))

(assert (= (and bs!332429 res!605163) b!1342975))

(declare-fun m!1501629 () Bool)

(assert (=> bs!332429 m!1501629))

(declare-fun m!1501631 () Bool)

(assert (=> b!1342975 m!1501631))

(assert (=> d!378806 d!378874))

(declare-fun b_lambda!39741 () Bool)

(assert (= b_lambda!39719 (or (and b!1342627 b_free!32737 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) (and b!1342634 b_free!32741 (= (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) (and b!1342631 b_free!32745) (and b!1342962 b_free!32761 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) b_lambda!39741)))

(declare-fun b_lambda!39743 () Bool)

(assert (= b_lambda!39727 (or (and b!1342627 b_free!32737 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) (and b!1342634 b_free!32741) (and b!1342631 b_free!32745 (= (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) (and b!1342962 b_free!32761 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) b_lambda!39743)))

(declare-fun b_lambda!39745 () Bool)

(assert (= b_lambda!39723 (or (and b!1342627 b_free!32737 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) (and b!1342634 b_free!32741 (= (toChars!3480 (transformation!2378 (rule!4123 t2!34))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) (and b!1342631 b_free!32745) (and b!1342962 b_free!32761 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t1!34))))) b_lambda!39745)))

(declare-fun b_lambda!39747 () Bool)

(assert (= b_lambda!39725 (or (and b!1342627 b_free!32737 (= (toChars!3480 (transformation!2378 (h!19122 rules!2550))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) (and b!1342634 b_free!32741) (and b!1342631 b_free!32745 (= (toChars!3480 (transformation!2378 (rule!4123 t1!34))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) (and b!1342962 b_free!32761 (= (toChars!3480 (transformation!2378 (h!19122 (t!119586 rules!2550)))) (toChars!3480 (transformation!2378 (rule!4123 t2!34))))) b_lambda!39747)))

(declare-fun b_lambda!39749 () Bool)

(assert (= b_lambda!39729 (or b!1342630 b_lambda!39749)))

(declare-fun bs!332430 () Bool)

(declare-fun d!378876 () Bool)

(assert (= bs!332430 (and d!378876 b!1342630)))

(assert (=> bs!332430 (= (dynLambda!6056 lambda!56305 (h!19122 rules!2550)) (regex!2378 (h!19122 rules!2550)))))

(assert (=> b!1342901 d!378876))

(push 1)

(assert b_and!89917)

(assert (not b!1342926))

(assert (not b!1342848))

(assert (not b!1342929))

(assert (not b_next!33449))

(assert (not b!1342827))

(assert (not d!378850))

(assert (not b_lambda!39747))

(assert (not d!378814))

(assert b_and!89879)

(assert b_and!89915)

(assert (not b!1342774))

(assert (not b!1342777))

(assert (not b!1342930))

(assert (not b!1342972))

(assert (not b!1342932))

(assert (not d!378828))

(assert (not b_lambda!39749))

(assert (not b!1342783))

(assert (not b!1342889))

(assert (not d!378794))

(assert (not b_next!33465))

(assert (not d!378816))

(assert (not d!378804))

(assert (not b!1342960))

(assert (not b!1342975))

(assert (not d!378800))

(assert (not b_lambda!39735))

(assert (not d!378818))

(assert (not b!1342809))

(assert (not b!1342803))

(assert (not d!378786))

(assert (not d!378796))

(assert (not d!378842))

(assert (not b_lambda!39743))

(assert (not b!1342849))

(assert (not b!1342831))

(assert (not b!1342970))

(assert (not d!378820))

(assert (not d!378830))

(assert (not d!378832))

(assert (not b!1342951))

(assert (not d!378834))

(assert (not d!378806))

(assert b_and!89871)

(assert (not d!378868))

(assert b_and!89919)

(assert (not d!378860))

(assert (not d!378822))

(assert (not d!378788))

(assert (not d!378866))

(assert (not b!1342796))

(assert (not b!1342817))

(assert (not b_next!33441))

(assert (not tb!70657))

(assert tp_is_empty!6697)

(assert (not b!1342795))

(assert (not b!1342881))

(assert (not b!1342782))

(assert (not bs!332427))

(assert (not d!378838))

(assert (not b_lambda!39739))

(assert (not b!1342927))

(assert (not b!1342967))

(assert b_and!89875)

(assert (not b!1342946))

(assert (not b!1342950))

(assert b_and!89913)

(assert (not d!378862))

(assert (not b!1342933))

(assert (not b!1342789))

(assert (not b!1342885))

(assert (not b!1342828))

(assert (not b!1342961))

(assert (not d!378810))

(assert (not bm!90497))

(assert (not b!1342819))

(assert (not b!1342973))

(assert (not b_next!33447))

(assert (not d!378802))

(assert (not b!1342757))

(assert (not b_lambda!39741))

(assert (not d!378864))

(assert (not b!1342923))

(assert (not d!378792))

(assert (not b!1342815))

(assert (not tb!70663))

(assert (not b!1342884))

(assert (not b!1342844))

(assert (not b!1342802))

(assert (not b!1342807))

(assert (not b!1342949))

(assert (not b!1342901))

(assert (not b!1342767))

(assert (not b_next!33439))

(assert (not bs!332429))

(assert (not b_next!33445))

(assert (not b!1342846))

(assert (not d!378852))

(assert (not b!1342810))

(assert (not b!1342909))

(assert (not b!1342890))

(assert (not b!1342818))

(assert (not b!1342826))

(assert (not b!1342780))

(assert (not b_next!33443))

(assert (not b!1342945))

(assert (not b_lambda!39745))

(assert (not b!1342928))

(assert (not bs!332428))

(assert (not d!378840))

(assert (not b!1342968))

(assert (not b_next!33463))

(assert (not b!1342756))

(assert (not d!378790))

(assert b_and!89921)

(assert (not b!1342851))

(assert (not b!1342816))

(assert (not b!1342947))

(assert (not d!378858))

(assert (not d!378854))

(assert (not d!378856))

(assert (not b!1342843))

(assert (not b!1342971))

(assert (not b!1342768))

(assert (not b_lambda!39737))

(assert (not d!378844))

(assert (not b!1342974))

(assert (not b!1342888))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89917)

(assert (not b_next!33449))

(assert (not b_next!33465))

(assert (not b_next!33441))

(assert (not b_next!33447))

(assert (not b_next!33443))

(assert b_and!89879)

(assert b_and!89915)

(assert b_and!89871)

(assert b_and!89919)

(assert b_and!89875)

(assert b_and!89913)

(assert (not b_next!33445))

(assert (not b_next!33439))

(assert (not b_next!33463))

(assert b_and!89921)

(check-sat)

(pop 1)

