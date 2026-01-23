; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337054 () Bool)

(assert start!337054)

(declare-fun b!3618884 () Bool)

(declare-fun b_free!94257 () Bool)

(declare-fun b_next!94961 () Bool)

(assert (=> b!3618884 (= b_free!94257 (not b_next!94961))))

(declare-fun tp!1105518 () Bool)

(declare-fun b_and!264467 () Bool)

(assert (=> b!3618884 (= tp!1105518 b_and!264467)))

(declare-fun b_free!94259 () Bool)

(declare-fun b_next!94963 () Bool)

(assert (=> b!3618884 (= b_free!94259 (not b_next!94963))))

(declare-fun tp!1105525 () Bool)

(declare-fun b_and!264469 () Bool)

(assert (=> b!3618884 (= tp!1105525 b_and!264469)))

(declare-fun b!3618904 () Bool)

(declare-fun b_free!94261 () Bool)

(declare-fun b_next!94965 () Bool)

(assert (=> b!3618904 (= b_free!94261 (not b_next!94965))))

(declare-fun tp!1105528 () Bool)

(declare-fun b_and!264471 () Bool)

(assert (=> b!3618904 (= tp!1105528 b_and!264471)))

(declare-fun b_free!94263 () Bool)

(declare-fun b_next!94967 () Bool)

(assert (=> b!3618904 (= b_free!94263 (not b_next!94967))))

(declare-fun tp!1105520 () Bool)

(declare-fun b_and!264473 () Bool)

(assert (=> b!3618904 (= tp!1105520 b_and!264473)))

(declare-fun b!3618882 () Bool)

(declare-fun b_free!94265 () Bool)

(declare-fun b_next!94969 () Bool)

(assert (=> b!3618882 (= b_free!94265 (not b_next!94969))))

(declare-fun tp!1105519 () Bool)

(declare-fun b_and!264475 () Bool)

(assert (=> b!3618882 (= tp!1105519 b_and!264475)))

(declare-fun b_free!94267 () Bool)

(declare-fun b_next!94971 () Bool)

(assert (=> b!3618882 (= b_free!94267 (not b_next!94971))))

(declare-fun tp!1105527 () Bool)

(declare-fun b_and!264477 () Bool)

(assert (=> b!3618882 (= tp!1105527 b_and!264477)))

(declare-fun b!3618917 () Bool)

(declare-fun b_free!94269 () Bool)

(declare-fun b_next!94973 () Bool)

(assert (=> b!3618917 (= b_free!94269 (not b_next!94973))))

(declare-fun tp!1105522 () Bool)

(declare-fun b_and!264479 () Bool)

(assert (=> b!3618917 (= tp!1105522 b_and!264479)))

(declare-fun b_free!94271 () Bool)

(declare-fun b_next!94975 () Bool)

(assert (=> b!3618917 (= b_free!94271 (not b_next!94975))))

(declare-fun tp!1105517 () Bool)

(declare-fun b_and!264481 () Bool)

(assert (=> b!3618917 (= tp!1105517 b_and!264481)))

(declare-fun b!3618876 () Bool)

(declare-datatypes ((Unit!54702 0))(
  ( (Unit!54703) )
))
(declare-fun e!2239930 () Unit!54702)

(declare-fun Unit!54704 () Unit!54702)

(assert (=> b!3618876 (= e!2239930 Unit!54704)))

(declare-fun b!3618877 () Bool)

(declare-fun e!2239917 () Bool)

(declare-fun e!2239928 () Bool)

(assert (=> b!3618877 (= e!2239917 (not e!2239928))))

(declare-fun res!1464361 () Bool)

(assert (=> b!3618877 (=> res!1464361 e!2239928)))

(declare-datatypes ((List!38233 0))(
  ( (Nil!38109) (Cons!38109 (h!43529 (_ BitVec 16)) (t!294024 List!38233)) )
))
(declare-datatypes ((TokenValue!5898 0))(
  ( (FloatLiteralValue!11796 (text!41731 List!38233)) (TokenValueExt!5897 (__x!24013 Int)) (Broken!29490 (value!181972 List!38233)) (Object!6021) (End!5898) (Def!5898) (Underscore!5898) (Match!5898) (Else!5898) (Error!5898) (Case!5898) (If!5898) (Extends!5898) (Abstract!5898) (Class!5898) (Val!5898) (DelimiterValue!11796 (del!5958 List!38233)) (KeywordValue!5904 (value!181973 List!38233)) (CommentValue!11796 (value!181974 List!38233)) (WhitespaceValue!11796 (value!181975 List!38233)) (IndentationValue!5898 (value!181976 List!38233)) (String!42823) (Int32!5898) (Broken!29491 (value!181977 List!38233)) (Boolean!5899) (Unit!54705) (OperatorValue!5901 (op!5958 List!38233)) (IdentifierValue!11796 (value!181978 List!38233)) (IdentifierValue!11797 (value!181979 List!38233)) (WhitespaceValue!11797 (value!181980 List!38233)) (True!11796) (False!11796) (Broken!29492 (value!181981 List!38233)) (Broken!29493 (value!181982 List!38233)) (True!11797) (RightBrace!5898) (RightBracket!5898) (Colon!5898) (Null!5898) (Comma!5898) (LeftBracket!5898) (False!11797) (LeftBrace!5898) (ImaginaryLiteralValue!5898 (text!41732 List!38233)) (StringLiteralValue!17694 (value!181983 List!38233)) (EOFValue!5898 (value!181984 List!38233)) (IdentValue!5898 (value!181985 List!38233)) (DelimiterValue!11797 (value!181986 List!38233)) (DedentValue!5898 (value!181987 List!38233)) (NewLineValue!5898 (value!181988 List!38233)) (IntegerValue!17694 (value!181989 (_ BitVec 32)) (text!41733 List!38233)) (IntegerValue!17695 (value!181990 Int) (text!41734 List!38233)) (Times!5898) (Or!5898) (Equal!5898) (Minus!5898) (Broken!29494 (value!181991 List!38233)) (And!5898) (Div!5898) (LessEqual!5898) (Mod!5898) (Concat!16325) (Not!5898) (Plus!5898) (SpaceValue!5898 (value!181992 List!38233)) (IntegerValue!17696 (value!181993 Int) (text!41735 List!38233)) (StringLiteralValue!17695 (text!41736 List!38233)) (FloatLiteralValue!11797 (text!41737 List!38233)) (BytesLiteralValue!5898 (value!181994 List!38233)) (CommentValue!11797 (value!181995 List!38233)) (StringLiteralValue!17696 (value!181996 List!38233)) (ErrorTokenValue!5898 (msg!5959 List!38233)) )
))
(declare-datatypes ((C!21040 0))(
  ( (C!21041 (val!12568 Int)) )
))
(declare-datatypes ((Regex!10427 0))(
  ( (ElementMatch!10427 (c!626226 C!21040)) (Concat!16326 (regOne!21366 Regex!10427) (regTwo!21366 Regex!10427)) (EmptyExpr!10427) (Star!10427 (reg!10756 Regex!10427)) (EmptyLang!10427) (Union!10427 (regOne!21367 Regex!10427) (regTwo!21367 Regex!10427)) )
))
(declare-datatypes ((String!42824 0))(
  ( (String!42825 (value!181997 String)) )
))
(declare-datatypes ((List!38234 0))(
  ( (Nil!38110) (Cons!38110 (h!43530 C!21040) (t!294025 List!38234)) )
))
(declare-datatypes ((IArray!23243 0))(
  ( (IArray!23244 (innerList!11679 List!38234)) )
))
(declare-datatypes ((Conc!11619 0))(
  ( (Node!11619 (left!29763 Conc!11619) (right!30093 Conc!11619) (csize!23468 Int) (cheight!11830 Int)) (Leaf!18064 (xs!14821 IArray!23243) (csize!23469 Int)) (Empty!11619) )
))
(declare-datatypes ((BalanceConc!22852 0))(
  ( (BalanceConc!22853 (c!626227 Conc!11619)) )
))
(declare-datatypes ((TokenValueInjection!11224 0))(
  ( (TokenValueInjection!11225 (toValue!7952 Int) (toChars!7811 Int)) )
))
(declare-datatypes ((Rule!11136 0))(
  ( (Rule!11137 (regex!5668 Regex!10427) (tag!6384 String!42824) (isSeparator!5668 Bool) (transformation!5668 TokenValueInjection!11224)) )
))
(declare-fun rule!403 () Rule!11136)

(declare-fun lt!1249548 () List!38234)

(declare-fun matchR!4996 (Regex!10427 List!38234) Bool)

(assert (=> b!3618877 (= res!1464361 (not (matchR!4996 (regex!5668 rule!403) lt!1249548)))))

(declare-datatypes ((LexerInterface!5257 0))(
  ( (LexerInterfaceExt!5254 (__x!24014 Int)) (Lexer!5255) )
))
(declare-fun thiss!23823 () LexerInterface!5257)

(declare-fun ruleValid!1933 (LexerInterface!5257 Rule!11136) Bool)

(assert (=> b!3618877 (ruleValid!1933 thiss!23823 rule!403)))

(declare-datatypes ((List!38235 0))(
  ( (Nil!38111) (Cons!38111 (h!43531 Rule!11136) (t!294026 List!38235)) )
))
(declare-fun rules!3307 () List!38235)

(declare-fun lt!1249583 () Unit!54702)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1088 (LexerInterface!5257 Rule!11136 List!38235) Unit!54702)

(assert (=> b!3618877 (= lt!1249583 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1088 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3618878 () Bool)

(declare-fun e!2239910 () Unit!54702)

(declare-fun Unit!54706 () Unit!54702)

(assert (=> b!3618878 (= e!2239910 Unit!54706)))

(declare-fun b!3618879 () Bool)

(declare-fun e!2239897 () Bool)

(declare-fun e!2239900 () Bool)

(assert (=> b!3618879 (= e!2239897 e!2239900)))

(declare-fun res!1464359 () Bool)

(assert (=> b!3618879 (=> (not res!1464359) (not e!2239900))))

(declare-fun lt!1249541 () Rule!11136)

(declare-datatypes ((Token!10702 0))(
  ( (Token!10703 (value!181998 TokenValue!5898) (rule!8428 Rule!11136) (size!29071 Int) (originalCharacters!6382 List!38234)) )
))
(declare-datatypes ((tuple2!37992 0))(
  ( (tuple2!37993 (_1!22130 Token!10702) (_2!22130 List!38234)) )
))
(declare-fun lt!1249572 () tuple2!37992)

(declare-fun list!14064 (BalanceConc!22852) List!38234)

(declare-fun charsOf!3682 (Token!10702) BalanceConc!22852)

(assert (=> b!3618879 (= res!1464359 (matchR!4996 (regex!5668 lt!1249541) (list!14064 (charsOf!3682 (_1!22130 lt!1249572)))))))

(declare-datatypes ((Option!7966 0))(
  ( (None!7965) (Some!7965 (v!37727 Rule!11136)) )
))
(declare-fun lt!1249544 () Option!7966)

(declare-fun get!12410 (Option!7966) Rule!11136)

(assert (=> b!3618879 (= lt!1249541 (get!12410 lt!1249544))))

(declare-fun b!3618881 () Bool)

(declare-fun e!2239916 () Unit!54702)

(declare-fun Unit!54707 () Unit!54702)

(assert (=> b!3618881 (= e!2239916 Unit!54707)))

(declare-fun lt!1249545 () List!38234)

(declare-fun lt!1249538 () Unit!54702)

(declare-fun lt!1249546 () List!38234)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!316 (LexerInterface!5257 List!38235 Rule!11136 List!38234 List!38234 List!38234 Rule!11136) Unit!54702)

(assert (=> b!3618881 (= lt!1249538 (lemmaMaxPrefixOutputsMaxPrefix!316 thiss!23823 rules!3307 (rule!8428 (_1!22130 lt!1249572)) lt!1249546 lt!1249545 lt!1249548 rule!403))))

(assert (=> b!3618881 false))

(declare-fun e!2239901 () Bool)

(assert (=> b!3618882 (= e!2239901 (and tp!1105519 tp!1105527))))

(declare-fun b!3618883 () Bool)

(declare-fun e!2239908 () Bool)

(assert (=> b!3618883 e!2239908))

(declare-fun res!1464360 () Bool)

(assert (=> b!3618883 (=> (not res!1464360) (not e!2239908))))

(assert (=> b!3618883 (= res!1464360 (not (matchR!4996 (regex!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249548)))))

(declare-fun lt!1249561 () Unit!54702)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!202 (LexerInterface!5257 List!38235 Rule!11136 List!38234 List!38234 Rule!11136) Unit!54702)

(assert (=> b!3618883 (= lt!1249561 (lemmaMaxPrefNoSmallerRuleMatches!202 thiss!23823 rules!3307 rule!403 lt!1249548 lt!1249548 (rule!8428 (_1!22130 lt!1249572))))))

(declare-fun isEmpty!22518 (List!38234) Bool)

(declare-fun getSuffix!1606 (List!38234 List!38234) List!38234)

(assert (=> b!3618883 (isEmpty!22518 (getSuffix!1606 lt!1249548 lt!1249548))))

(declare-fun lt!1249552 () Unit!54702)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!162 (List!38234) Unit!54702)

(assert (=> b!3618883 (= lt!1249552 (lemmaGetSuffixOnListWithItSelfIsEmpty!162 lt!1249548))))

(declare-fun e!2239905 () Unit!54702)

(declare-fun Unit!54708 () Unit!54702)

(assert (=> b!3618883 (= e!2239905 Unit!54708)))

(declare-fun e!2239907 () Bool)

(assert (=> b!3618884 (= e!2239907 (and tp!1105518 tp!1105525))))

(declare-fun bm!261792 () Bool)

(declare-fun call!261802 () Bool)

(declare-fun call!261798 () List!38234)

(declare-fun lt!1249575 () C!21040)

(declare-fun contains!7399 (List!38234 C!21040) Bool)

(assert (=> bm!261792 (= call!261802 (contains!7399 call!261798 lt!1249575))))

(declare-fun b!3618885 () Bool)

(declare-fun res!1464366 () Bool)

(declare-fun e!2239919 () Bool)

(assert (=> b!3618885 (=> res!1464366 e!2239919)))

(declare-fun sepAndNonSepRulesDisjointChars!1838 (List!38235 List!38235) Bool)

(assert (=> b!3618885 (= res!1464366 (not (sepAndNonSepRulesDisjointChars!1838 rules!3307 rules!3307)))))

(declare-fun b!3618886 () Bool)

(declare-fun e!2239898 () Bool)

(assert (=> b!3618886 (= e!2239898 true)))

(declare-fun lt!1249593 () List!38234)

(declare-fun lt!1249577 () List!38234)

(declare-fun ++!9484 (List!38234 List!38234) List!38234)

(assert (=> b!3618886 (= lt!1249593 (++!9484 lt!1249548 lt!1249577))))

(declare-datatypes ((Option!7967 0))(
  ( (None!7966) (Some!7966 (v!37728 tuple2!37992)) )
))
(declare-fun maxPrefixOneRule!1935 (LexerInterface!5257 Rule!11136 List!38234) Option!7967)

(declare-fun apply!9174 (TokenValueInjection!11224 BalanceConc!22852) TokenValue!5898)

(declare-fun seqFromList!4221 (List!38234) BalanceConc!22852)

(declare-fun size!29072 (List!38234) Int)

(assert (=> b!3618886 (= (maxPrefixOneRule!1935 thiss!23823 rule!403 lt!1249545) (Some!7966 (tuple2!37993 (Token!10703 (apply!9174 (transformation!5668 rule!403) (seqFromList!4221 lt!1249548)) rule!403 (size!29072 lt!1249548) lt!1249548) lt!1249577)))))

(declare-fun lt!1249542 () Unit!54702)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1007 (LexerInterface!5257 List!38235 List!38234 List!38234 List!38234 Rule!11136) Unit!54702)

(assert (=> b!3618886 (= lt!1249542 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1007 thiss!23823 rules!3307 lt!1249548 lt!1249545 lt!1249577 rule!403))))

(assert (=> b!3618886 (= lt!1249577 (getSuffix!1606 lt!1249545 lt!1249548))))

(declare-fun lt!1249563 () Unit!54702)

(assert (=> b!3618886 (= lt!1249563 e!2239910)))

(declare-fun c!626222 () Bool)

(declare-fun token!511 () Token!10702)

(assert (=> b!3618886 (= c!626222 (not (= (rule!8428 (_1!22130 lt!1249572)) (rule!8428 token!511))))))

(assert (=> b!3618886 (= lt!1249546 lt!1249548)))

(declare-fun lt!1249562 () Unit!54702)

(declare-fun lemmaIsPrefixSameLengthThenSameList!605 (List!38234 List!38234 List!38234) Unit!54702)

(assert (=> b!3618886 (= lt!1249562 (lemmaIsPrefixSameLengthThenSameList!605 lt!1249546 lt!1249548 lt!1249545))))

(declare-fun lt!1249556 () Unit!54702)

(assert (=> b!3618886 (= lt!1249556 e!2239916)))

(declare-fun c!626225 () Bool)

(declare-fun lt!1249586 () Int)

(declare-fun lt!1249584 () Int)

(assert (=> b!3618886 (= c!626225 (< lt!1249586 lt!1249584))))

(declare-fun lt!1249576 () Unit!54702)

(declare-fun e!2239912 () Unit!54702)

(assert (=> b!3618886 (= lt!1249576 e!2239912)))

(declare-fun c!626220 () Bool)

(assert (=> b!3618886 (= c!626220 (> lt!1249586 lt!1249584))))

(declare-fun lt!1249571 () BalanceConc!22852)

(declare-fun size!29073 (BalanceConc!22852) Int)

(assert (=> b!3618886 (= lt!1249584 (size!29073 lt!1249571))))

(declare-fun lt!1249540 () Unit!54702)

(declare-fun e!2239922 () Unit!54702)

(assert (=> b!3618886 (= lt!1249540 e!2239922)))

(declare-fun c!626219 () Bool)

(assert (=> b!3618886 (= c!626219 (isSeparator!5668 rule!403))))

(declare-fun lt!1249574 () Unit!54702)

(declare-fun e!2239904 () Unit!54702)

(assert (=> b!3618886 (= lt!1249574 e!2239904)))

(declare-fun c!626224 () Bool)

(declare-fun lt!1249591 () List!38234)

(declare-fun lt!1249565 () C!21040)

(assert (=> b!3618886 (= c!626224 (not (contains!7399 lt!1249591 lt!1249565)))))

(declare-fun head!7636 (List!38234) C!21040)

(assert (=> b!3618886 (= lt!1249565 (head!7636 lt!1249546))))

(declare-fun b!3618887 () Bool)

(assert (=> b!3618887 false))

(declare-fun lt!1249566 () Unit!54702)

(declare-fun call!261800 () Unit!54702)

(assert (=> b!3618887 (= lt!1249566 call!261800)))

(assert (=> b!3618887 (not call!261802)))

(declare-fun lt!1249536 () Unit!54702)

(declare-fun anOtherTypeRule!33 () Rule!11136)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!374 (LexerInterface!5257 List!38235 List!38235 Rule!11136 Rule!11136 C!21040) Unit!54702)

(assert (=> b!3618887 (= lt!1249536 (lemmaNonSepRuleNotContainsCharContainedInASepRule!374 thiss!23823 rules!3307 rules!3307 (rule!8428 (_1!22130 lt!1249572)) anOtherTypeRule!33 lt!1249575))))

(declare-fun e!2239906 () Unit!54702)

(declare-fun Unit!54709 () Unit!54702)

(assert (=> b!3618887 (= e!2239906 Unit!54709)))

(declare-fun b!3618888 () Bool)

(declare-fun e!2239903 () Bool)

(declare-fun e!2239915 () Bool)

(declare-fun tp!1105515 () Bool)

(assert (=> b!3618888 (= e!2239903 (and e!2239915 tp!1105515))))

(declare-fun b!3618889 () Bool)

(declare-fun res!1464358 () Bool)

(declare-fun e!2239918 () Bool)

(assert (=> b!3618889 (=> res!1464358 e!2239918)))

(assert (=> b!3618889 (= res!1464358 (not (matchR!4996 (regex!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249546)))))

(declare-fun e!2239902 () Bool)

(declare-fun tp!1105514 () Bool)

(declare-fun e!2239925 () Bool)

(declare-fun b!3618890 () Bool)

(declare-fun inv!51496 (String!42824) Bool)

(declare-fun inv!51499 (TokenValueInjection!11224) Bool)

(assert (=> b!3618890 (= e!2239925 (and tp!1105514 (inv!51496 (tag!6384 (rule!8428 token!511))) (inv!51499 (transformation!5668 (rule!8428 token!511))) e!2239902))))

(declare-fun tp!1105524 () Bool)

(declare-fun b!3618891 () Bool)

(declare-fun e!2239924 () Bool)

(declare-fun e!2239932 () Bool)

(assert (=> b!3618891 (= e!2239932 (and tp!1105524 (inv!51496 (tag!6384 rule!403)) (inv!51499 (transformation!5668 rule!403)) e!2239924))))

(declare-fun b!3618892 () Bool)

(assert (=> b!3618892 (= e!2239900 (= (rule!8428 (_1!22130 lt!1249572)) lt!1249541))))

(declare-fun b!3618893 () Bool)

(assert (=> b!3618893 false))

(declare-fun lt!1249551 () Unit!54702)

(declare-fun call!261799 () Unit!54702)

(assert (=> b!3618893 (= lt!1249551 call!261799)))

(declare-fun call!261797 () Bool)

(assert (=> b!3618893 (not call!261797)))

(declare-fun lt!1249549 () Unit!54702)

(assert (=> b!3618893 (= lt!1249549 (lemmaNonSepRuleNotContainsCharContainedInASepRule!374 thiss!23823 rules!3307 rules!3307 (rule!8428 (_1!22130 lt!1249572)) rule!403 lt!1249565))))

(declare-fun Unit!54710 () Unit!54702)

(assert (=> b!3618893 (= e!2239930 Unit!54710)))

(declare-fun b!3618894 () Bool)

(declare-fun res!1464372 () Bool)

(declare-fun e!2239911 () Bool)

(assert (=> b!3618894 (=> (not res!1464372) (not e!2239911))))

(assert (=> b!3618894 (= res!1464372 (not (= (isSeparator!5668 anOtherTypeRule!33) (isSeparator!5668 rule!403))))))

(declare-fun b!3618895 () Bool)

(declare-fun Unit!54711 () Unit!54702)

(assert (=> b!3618895 (= e!2239916 Unit!54711)))

(declare-fun bm!261793 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!652 (Regex!10427 List!38234 C!21040) Unit!54702)

(assert (=> bm!261793 (= call!261799 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!652 (regex!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249546 lt!1249565))))

(declare-fun bm!261794 () Bool)

(declare-fun call!261801 () List!38234)

(assert (=> bm!261794 (= call!261797 (contains!7399 call!261801 lt!1249565))))

(declare-fun b!3618896 () Bool)

(assert (=> b!3618896 false))

(declare-fun lt!1249554 () Unit!54702)

(assert (=> b!3618896 (= lt!1249554 call!261799)))

(assert (=> b!3618896 (not call!261797)))

(declare-fun lt!1249573 () Unit!54702)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!256 (LexerInterface!5257 List!38235 List!38235 Rule!11136 Rule!11136 C!21040) Unit!54702)

(assert (=> b!3618896 (= lt!1249573 (lemmaSepRuleNotContainsCharContainedInANonSepRule!256 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8428 (_1!22130 lt!1249572)) lt!1249565))))

(declare-fun e!2239923 () Unit!54702)

(declare-fun Unit!54712 () Unit!54702)

(assert (=> b!3618896 (= e!2239923 Unit!54712)))

(declare-fun b!3618897 () Bool)

(declare-fun e!2239931 () Bool)

(assert (=> b!3618897 (= e!2239931 e!2239917)))

(declare-fun res!1464368 () Bool)

(assert (=> b!3618897 (=> (not res!1464368) (not e!2239917))))

(declare-fun lt!1249555 () tuple2!37992)

(assert (=> b!3618897 (= res!1464368 (= (_1!22130 lt!1249555) token!511))))

(declare-fun lt!1249543 () Option!7967)

(declare-fun get!12411 (Option!7967) tuple2!37992)

(assert (=> b!3618897 (= lt!1249555 (get!12411 lt!1249543))))

(declare-fun b!3618898 () Bool)

(assert (=> b!3618898 (= e!2239919 e!2239918)))

(declare-fun res!1464377 () Bool)

(assert (=> b!3618898 (=> res!1464377 e!2239918)))

(declare-fun isPrefix!3031 (List!38234 List!38234) Bool)

(assert (=> b!3618898 (= res!1464377 (not (isPrefix!3031 lt!1249546 lt!1249545)))))

(assert (=> b!3618898 (isPrefix!3031 lt!1249546 (++!9484 lt!1249546 (_2!22130 lt!1249572)))))

(declare-fun lt!1249580 () Unit!54702)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1952 (List!38234 List!38234) Unit!54702)

(assert (=> b!3618898 (= lt!1249580 (lemmaConcatTwoListThenFirstIsPrefix!1952 lt!1249546 (_2!22130 lt!1249572)))))

(declare-fun lt!1249594 () BalanceConc!22852)

(assert (=> b!3618898 (= lt!1249546 (list!14064 lt!1249594))))

(assert (=> b!3618898 (= lt!1249594 (charsOf!3682 (_1!22130 lt!1249572)))))

(assert (=> b!3618898 e!2239897))

(declare-fun res!1464379 () Bool)

(assert (=> b!3618898 (=> (not res!1464379) (not e!2239897))))

(declare-fun isDefined!6198 (Option!7966) Bool)

(assert (=> b!3618898 (= res!1464379 (isDefined!6198 lt!1249544))))

(declare-fun getRuleFromTag!1274 (LexerInterface!5257 List!38235 String!42824) Option!7966)

(assert (=> b!3618898 (= lt!1249544 (getRuleFromTag!1274 thiss!23823 rules!3307 (tag!6384 (rule!8428 (_1!22130 lt!1249572)))))))

(declare-fun lt!1249558 () Unit!54702)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1274 (LexerInterface!5257 List!38235 List!38234 Token!10702) Unit!54702)

(assert (=> b!3618898 (= lt!1249558 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1274 thiss!23823 rules!3307 lt!1249545 (_1!22130 lt!1249572)))))

(declare-fun lt!1249590 () Option!7967)

(assert (=> b!3618898 (= lt!1249572 (get!12411 lt!1249590))))

(declare-fun lt!1249587 () Unit!54702)

(declare-fun suffix!1395 () List!38234)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!937 (LexerInterface!5257 List!38235 List!38234 List!38234) Unit!54702)

(assert (=> b!3618898 (= lt!1249587 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!937 thiss!23823 rules!3307 lt!1249548 suffix!1395))))

(declare-fun maxPrefix!2791 (LexerInterface!5257 List!38235 List!38234) Option!7967)

(assert (=> b!3618898 (= lt!1249590 (maxPrefix!2791 thiss!23823 rules!3307 lt!1249545))))

(assert (=> b!3618898 (isPrefix!3031 lt!1249548 lt!1249545)))

(declare-fun lt!1249581 () Unit!54702)

(assert (=> b!3618898 (= lt!1249581 (lemmaConcatTwoListThenFirstIsPrefix!1952 lt!1249548 suffix!1395))))

(assert (=> b!3618898 (= lt!1249545 (++!9484 lt!1249548 suffix!1395))))

(declare-fun b!3618899 () Bool)

(assert (=> b!3618899 (= e!2239922 e!2239923)))

(declare-fun c!626217 () Bool)

(assert (=> b!3618899 (= c!626217 (isSeparator!5668 (rule!8428 (_1!22130 lt!1249572))))))

(declare-fun e!2239920 () Bool)

(declare-fun b!3618900 () Bool)

(declare-fun tp!1105516 () Bool)

(assert (=> b!3618900 (= e!2239920 (and tp!1105516 (inv!51496 (tag!6384 anOtherTypeRule!33)) (inv!51499 (transformation!5668 anOtherTypeRule!33)) e!2239907))))

(declare-fun b!3618901 () Bool)

(declare-fun Unit!54713 () Unit!54702)

(assert (=> b!3618901 (= e!2239910 Unit!54713)))

(declare-fun lt!1249588 () Int)

(declare-fun getIndex!450 (List!38235 Rule!11136) Int)

(assert (=> b!3618901 (= lt!1249588 (getIndex!450 rules!3307 (rule!8428 (_1!22130 lt!1249572))))))

(declare-fun lt!1249550 () Int)

(assert (=> b!3618901 (= lt!1249550 (getIndex!450 rules!3307 rule!403))))

(declare-fun c!626223 () Bool)

(assert (=> b!3618901 (= c!626223 (< lt!1249588 lt!1249550))))

(declare-fun lt!1249579 () Unit!54702)

(assert (=> b!3618901 (= lt!1249579 e!2239905)))

(declare-fun c!626218 () Bool)

(assert (=> b!3618901 (= c!626218 (< lt!1249550 lt!1249588))))

(declare-fun lt!1249582 () Unit!54702)

(declare-fun e!2239929 () Unit!54702)

(assert (=> b!3618901 (= lt!1249582 e!2239929)))

(declare-fun lt!1249567 () Unit!54702)

(declare-fun lemmaSameIndexThenSameElement!218 (List!38235 Rule!11136 Rule!11136) Unit!54702)

(assert (=> b!3618901 (= lt!1249567 (lemmaSameIndexThenSameElement!218 rules!3307 (rule!8428 (_1!22130 lt!1249572)) rule!403))))

(assert (=> b!3618901 false))

(declare-fun res!1464378 () Bool)

(assert (=> start!337054 (=> (not res!1464378) (not e!2239911))))

(get-info :version)

(assert (=> start!337054 (= res!1464378 ((_ is Lexer!5255) thiss!23823))))

(assert (=> start!337054 e!2239911))

(assert (=> start!337054 e!2239903))

(declare-fun e!2239921 () Bool)

(assert (=> start!337054 e!2239921))

(assert (=> start!337054 true))

(declare-fun e!2239914 () Bool)

(declare-fun inv!51500 (Token!10702) Bool)

(assert (=> start!337054 (and (inv!51500 token!511) e!2239914)))

(assert (=> start!337054 e!2239932))

(assert (=> start!337054 e!2239920))

(declare-fun b!3618880 () Bool)

(declare-fun res!1464376 () Bool)

(assert (=> b!3618880 (=> res!1464376 e!2239919)))

(declare-fun usedCharacters!882 (Regex!10427) List!38234)

(assert (=> b!3618880 (= res!1464376 (not (contains!7399 (usedCharacters!882 (regex!5668 anOtherTypeRule!33)) lt!1249575)))))

(declare-fun b!3618902 () Bool)

(declare-fun res!1464374 () Bool)

(assert (=> b!3618902 (=> (not res!1464374) (not e!2239911))))

(declare-fun isEmpty!22519 (List!38235) Bool)

(assert (=> b!3618902 (= res!1464374 (not (isEmpty!22519 rules!3307)))))

(declare-fun b!3618903 () Bool)

(declare-fun Unit!54714 () Unit!54702)

(assert (=> b!3618903 (= e!2239905 Unit!54714)))

(assert (=> b!3618904 (= e!2239902 (and tp!1105528 tp!1105520))))

(declare-fun tp!1105523 () Bool)

(declare-fun b!3618905 () Bool)

(assert (=> b!3618905 (= e!2239915 (and tp!1105523 (inv!51496 (tag!6384 (h!43531 rules!3307))) (inv!51499 (transformation!5668 (h!43531 rules!3307))) e!2239901))))

(declare-fun b!3618906 () Bool)

(declare-fun Unit!54715 () Unit!54702)

(assert (=> b!3618906 (= e!2239904 Unit!54715)))

(declare-fun b!3618907 () Bool)

(declare-fun Unit!54716 () Unit!54702)

(assert (=> b!3618907 (= e!2239904 Unit!54716)))

(declare-fun lt!1249557 () Unit!54702)

(assert (=> b!3618907 (= lt!1249557 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!652 (regex!5668 rule!403) lt!1249548 lt!1249565))))

(assert (=> b!3618907 false))

(declare-fun b!3618908 () Bool)

(assert (=> b!3618908 false))

(declare-fun lt!1249559 () Unit!54702)

(assert (=> b!3618908 (= lt!1249559 (lemmaMaxPrefNoSmallerRuleMatches!202 thiss!23823 rules!3307 (rule!8428 (_1!22130 lt!1249572)) lt!1249548 lt!1249545 rule!403))))

(declare-fun Unit!54717 () Unit!54702)

(assert (=> b!3618908 (= e!2239929 Unit!54717)))

(declare-fun b!3618909 () Bool)

(assert (=> b!3618909 (= e!2239922 e!2239930)))

(declare-fun c!626221 () Bool)

(assert (=> b!3618909 (= c!626221 (not (isSeparator!5668 (rule!8428 (_1!22130 lt!1249572)))))))

(declare-fun b!3618910 () Bool)

(assert (=> b!3618910 (= e!2239908 false)))

(declare-fun b!3618911 () Bool)

(assert (=> b!3618911 false))

(declare-fun lt!1249564 () Unit!54702)

(assert (=> b!3618911 (= lt!1249564 call!261800)))

(assert (=> b!3618911 (not call!261802)))

(declare-fun lt!1249569 () Unit!54702)

(assert (=> b!3618911 (= lt!1249569 (lemmaSepRuleNotContainsCharContainedInANonSepRule!256 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8428 (_1!22130 lt!1249572)) lt!1249575))))

(declare-fun Unit!54718 () Unit!54702)

(assert (=> b!3618911 (= e!2239906 Unit!54718)))

(declare-fun b!3618912 () Bool)

(declare-fun tp_is_empty!17937 () Bool)

(declare-fun tp!1105526 () Bool)

(assert (=> b!3618912 (= e!2239921 (and tp_is_empty!17937 tp!1105526))))

(declare-fun b!3618913 () Bool)

(declare-fun res!1464365 () Bool)

(assert (=> b!3618913 (=> (not res!1464365) (not e!2239911))))

(declare-fun contains!7400 (List!38235 Rule!11136) Bool)

(assert (=> b!3618913 (= res!1464365 (contains!7400 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3618914 () Bool)

(declare-fun Unit!54719 () Unit!54702)

(assert (=> b!3618914 (= e!2239912 Unit!54719)))

(declare-fun b!3618915 () Bool)

(declare-fun e!2239896 () Bool)

(assert (=> b!3618915 (= e!2239896 e!2239898)))

(declare-fun res!1464373 () Bool)

(assert (=> b!3618915 (=> res!1464373 e!2239898)))

(declare-fun lt!1249589 () Option!7967)

(declare-fun lt!1249578 () List!38234)

(assert (=> b!3618915 (= res!1464373 (or (not (= lt!1249578 (_2!22130 lt!1249572))) (not (= lt!1249589 (Some!7966 (tuple2!37993 (_1!22130 lt!1249572) lt!1249578))))))))

(assert (=> b!3618915 (= (_2!22130 lt!1249572) lt!1249578)))

(declare-fun lt!1249537 () Unit!54702)

(declare-fun lemmaSamePrefixThenSameSuffix!1386 (List!38234 List!38234 List!38234 List!38234 List!38234) Unit!54702)

(assert (=> b!3618915 (= lt!1249537 (lemmaSamePrefixThenSameSuffix!1386 lt!1249546 (_2!22130 lt!1249572) lt!1249546 lt!1249578 lt!1249545))))

(assert (=> b!3618915 (= lt!1249578 (getSuffix!1606 lt!1249545 lt!1249546))))

(declare-fun lt!1249553 () Int)

(declare-fun lt!1249560 () TokenValue!5898)

(assert (=> b!3618915 (= lt!1249589 (Some!7966 (tuple2!37993 (Token!10703 lt!1249560 (rule!8428 (_1!22130 lt!1249572)) lt!1249553 lt!1249546) (_2!22130 lt!1249572))))))

(assert (=> b!3618915 (= lt!1249589 (maxPrefixOneRule!1935 thiss!23823 (rule!8428 (_1!22130 lt!1249572)) lt!1249545))))

(assert (=> b!3618915 (= lt!1249553 (size!29072 lt!1249546))))

(assert (=> b!3618915 (= lt!1249560 (apply!9174 (transformation!5668 (rule!8428 (_1!22130 lt!1249572))) (seqFromList!4221 lt!1249546)))))

(declare-fun lt!1249570 () Unit!54702)

(assert (=> b!3618915 (= lt!1249570 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1007 thiss!23823 rules!3307 lt!1249546 lt!1249545 (_2!22130 lt!1249572) (rule!8428 (_1!22130 lt!1249572))))))

(declare-fun b!3618916 () Bool)

(declare-fun res!1464364 () Bool)

(assert (=> b!3618916 (=> (not res!1464364) (not e!2239917))))

(assert (=> b!3618916 (= res!1464364 (isEmpty!22518 (_2!22130 lt!1249555)))))

(declare-fun bm!261795 () Bool)

(assert (=> bm!261795 (= call!261800 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!652 (regex!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249546 lt!1249575))))

(assert (=> b!3618917 (= e!2239924 (and tp!1105522 tp!1105517))))

(declare-fun bm!261796 () Bool)

(assert (=> bm!261796 (= call!261798 (usedCharacters!882 (regex!5668 (rule!8428 (_1!22130 lt!1249572)))))))

(declare-fun tp!1105521 () Bool)

(declare-fun b!3618918 () Bool)

(declare-fun inv!21 (TokenValue!5898) Bool)

(assert (=> b!3618918 (= e!2239914 (and (inv!21 (value!181998 token!511)) e!2239925 tp!1105521))))

(declare-fun b!3618919 () Bool)

(declare-fun res!1464363 () Bool)

(assert (=> b!3618919 (=> (not res!1464363) (not e!2239911))))

(declare-fun rulesInvariant!4654 (LexerInterface!5257 List!38235) Bool)

(assert (=> b!3618919 (= res!1464363 (rulesInvariant!4654 thiss!23823 rules!3307))))

(declare-fun b!3618920 () Bool)

(assert (=> b!3618920 (= e!2239912 e!2239906)))

(declare-fun lt!1249547 () Unit!54702)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!46 (List!38234 List!38234 List!38234 List!38234) Unit!54702)

(assert (=> b!3618920 (= lt!1249547 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!46 lt!1249548 suffix!1395 lt!1249546 lt!1249545))))

(assert (=> b!3618920 (contains!7399 lt!1249546 lt!1249575)))

(declare-fun c!626216 () Bool)

(assert (=> b!3618920 (= c!626216 (isSeparator!5668 rule!403))))

(declare-fun b!3618921 () Bool)

(assert (=> b!3618921 (= e!2239928 e!2239919)))

(declare-fun res!1464375 () Bool)

(assert (=> b!3618921 (=> res!1464375 e!2239919)))

(assert (=> b!3618921 (= res!1464375 (contains!7399 lt!1249591 lt!1249575))))

(assert (=> b!3618921 (= lt!1249575 (head!7636 suffix!1395))))

(assert (=> b!3618921 (= lt!1249591 (usedCharacters!882 (regex!5668 rule!403)))))

(declare-fun b!3618922 () Bool)

(declare-fun res!1464362 () Bool)

(assert (=> b!3618922 (=> (not res!1464362) (not e!2239911))))

(assert (=> b!3618922 (= res!1464362 (contains!7400 rules!3307 rule!403))))

(declare-fun b!3618923 () Bool)

(assert (=> b!3618923 (= e!2239918 e!2239896)))

(declare-fun res!1464371 () Bool)

(assert (=> b!3618923 (=> res!1464371 e!2239896)))

(declare-fun lt!1249585 () TokenValue!5898)

(assert (=> b!3618923 (= res!1464371 (not (= lt!1249590 (Some!7966 (tuple2!37993 (Token!10703 lt!1249585 (rule!8428 (_1!22130 lt!1249572)) lt!1249586 lt!1249546) (_2!22130 lt!1249572))))))))

(assert (=> b!3618923 (= lt!1249586 (size!29073 lt!1249594))))

(assert (=> b!3618923 (= lt!1249585 (apply!9174 (transformation!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249594))))

(declare-fun lt!1249568 () Unit!54702)

(declare-fun lemmaCharactersSize!721 (Token!10702) Unit!54702)

(assert (=> b!3618923 (= lt!1249568 (lemmaCharactersSize!721 (_1!22130 lt!1249572)))))

(declare-fun lt!1249539 () Unit!54702)

(declare-fun lemmaEqSameImage!859 (TokenValueInjection!11224 BalanceConc!22852 BalanceConc!22852) Unit!54702)

(assert (=> b!3618923 (= lt!1249539 (lemmaEqSameImage!859 (transformation!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249594 (seqFromList!4221 (originalCharacters!6382 (_1!22130 lt!1249572)))))))

(declare-fun lt!1249592 () Unit!54702)

(declare-fun lemmaSemiInverse!1425 (TokenValueInjection!11224 BalanceConc!22852) Unit!54702)

(assert (=> b!3618923 (= lt!1249592 (lemmaSemiInverse!1425 (transformation!5668 (rule!8428 (_1!22130 lt!1249572))) lt!1249594))))

(declare-fun b!3618924 () Bool)

(declare-fun res!1464370 () Bool)

(assert (=> b!3618924 (=> res!1464370 e!2239928)))

(assert (=> b!3618924 (= res!1464370 (isEmpty!22518 suffix!1395))))

(declare-fun bm!261797 () Bool)

(assert (=> bm!261797 (= call!261801 (usedCharacters!882 (regex!5668 (rule!8428 (_1!22130 lt!1249572)))))))

(declare-fun b!3618925 () Bool)

(assert (=> b!3618925 (= e!2239911 e!2239931)))

(declare-fun res!1464367 () Bool)

(assert (=> b!3618925 (=> (not res!1464367) (not e!2239931))))

(declare-fun isDefined!6199 (Option!7967) Bool)

(assert (=> b!3618925 (= res!1464367 (isDefined!6199 lt!1249543))))

(assert (=> b!3618925 (= lt!1249543 (maxPrefix!2791 thiss!23823 rules!3307 lt!1249548))))

(assert (=> b!3618925 (= lt!1249548 (list!14064 lt!1249571))))

(assert (=> b!3618925 (= lt!1249571 (charsOf!3682 token!511))))

(declare-fun b!3618926 () Bool)

(declare-fun res!1464369 () Bool)

(assert (=> b!3618926 (=> (not res!1464369) (not e!2239917))))

(assert (=> b!3618926 (= res!1464369 (= (rule!8428 token!511) rule!403))))

(declare-fun b!3618927 () Bool)

(declare-fun Unit!54720 () Unit!54702)

(assert (=> b!3618927 (= e!2239923 Unit!54720)))

(declare-fun b!3618928 () Bool)

(declare-fun Unit!54721 () Unit!54702)

(assert (=> b!3618928 (= e!2239929 Unit!54721)))

(assert (= (and start!337054 res!1464378) b!3618902))

(assert (= (and b!3618902 res!1464374) b!3618919))

(assert (= (and b!3618919 res!1464363) b!3618922))

(assert (= (and b!3618922 res!1464362) b!3618913))

(assert (= (and b!3618913 res!1464365) b!3618894))

(assert (= (and b!3618894 res!1464372) b!3618925))

(assert (= (and b!3618925 res!1464367) b!3618897))

(assert (= (and b!3618897 res!1464368) b!3618916))

(assert (= (and b!3618916 res!1464364) b!3618926))

(assert (= (and b!3618926 res!1464369) b!3618877))

(assert (= (and b!3618877 (not res!1464361)) b!3618924))

(assert (= (and b!3618924 (not res!1464370)) b!3618921))

(assert (= (and b!3618921 (not res!1464375)) b!3618880))

(assert (= (and b!3618880 (not res!1464376)) b!3618885))

(assert (= (and b!3618885 (not res!1464366)) b!3618898))

(assert (= (and b!3618898 res!1464379) b!3618879))

(assert (= (and b!3618879 res!1464359) b!3618892))

(assert (= (and b!3618898 (not res!1464377)) b!3618889))

(assert (= (and b!3618889 (not res!1464358)) b!3618923))

(assert (= (and b!3618923 (not res!1464371)) b!3618915))

(assert (= (and b!3618915 (not res!1464373)) b!3618886))

(assert (= (and b!3618886 c!626224) b!3618907))

(assert (= (and b!3618886 (not c!626224)) b!3618906))

(assert (= (and b!3618886 c!626219) b!3618909))

(assert (= (and b!3618886 (not c!626219)) b!3618899))

(assert (= (and b!3618909 c!626221) b!3618893))

(assert (= (and b!3618909 (not c!626221)) b!3618876))

(assert (= (and b!3618899 c!626217) b!3618896))

(assert (= (and b!3618899 (not c!626217)) b!3618927))

(assert (= (or b!3618893 b!3618896) bm!261793))

(assert (= (or b!3618893 b!3618896) bm!261797))

(assert (= (or b!3618893 b!3618896) bm!261794))

(assert (= (and b!3618886 c!626220) b!3618920))

(assert (= (and b!3618886 (not c!626220)) b!3618914))

(assert (= (and b!3618920 c!626216) b!3618911))

(assert (= (and b!3618920 (not c!626216)) b!3618887))

(assert (= (or b!3618911 b!3618887) bm!261795))

(assert (= (or b!3618911 b!3618887) bm!261796))

(assert (= (or b!3618911 b!3618887) bm!261792))

(assert (= (and b!3618886 c!626225) b!3618881))

(assert (= (and b!3618886 (not c!626225)) b!3618895))

(assert (= (and b!3618886 c!626222) b!3618901))

(assert (= (and b!3618886 (not c!626222)) b!3618878))

(assert (= (and b!3618901 c!626223) b!3618883))

(assert (= (and b!3618901 (not c!626223)) b!3618903))

(assert (= (and b!3618883 res!1464360) b!3618910))

(assert (= (and b!3618901 c!626218) b!3618908))

(assert (= (and b!3618901 (not c!626218)) b!3618928))

(assert (= b!3618905 b!3618882))

(assert (= b!3618888 b!3618905))

(assert (= (and start!337054 ((_ is Cons!38111) rules!3307)) b!3618888))

(assert (= (and start!337054 ((_ is Cons!38110) suffix!1395)) b!3618912))

(assert (= b!3618890 b!3618904))

(assert (= b!3618918 b!3618890))

(assert (= start!337054 b!3618918))

(assert (= b!3618891 b!3618917))

(assert (= start!337054 b!3618891))

(assert (= b!3618900 b!3618884))

(assert (= start!337054 b!3618900))

(declare-fun m!4118027 () Bool)

(assert (=> bm!261795 m!4118027))

(declare-fun m!4118029 () Bool)

(assert (=> b!3618900 m!4118029))

(declare-fun m!4118031 () Bool)

(assert (=> b!3618900 m!4118031))

(declare-fun m!4118033 () Bool)

(assert (=> b!3618918 m!4118033))

(declare-fun m!4118035 () Bool)

(assert (=> bm!261794 m!4118035))

(declare-fun m!4118037 () Bool)

(assert (=> b!3618898 m!4118037))

(declare-fun m!4118039 () Bool)

(assert (=> b!3618898 m!4118039))

(declare-fun m!4118041 () Bool)

(assert (=> b!3618898 m!4118041))

(declare-fun m!4118043 () Bool)

(assert (=> b!3618898 m!4118043))

(declare-fun m!4118045 () Bool)

(assert (=> b!3618898 m!4118045))

(declare-fun m!4118047 () Bool)

(assert (=> b!3618898 m!4118047))

(declare-fun m!4118049 () Bool)

(assert (=> b!3618898 m!4118049))

(declare-fun m!4118051 () Bool)

(assert (=> b!3618898 m!4118051))

(declare-fun m!4118053 () Bool)

(assert (=> b!3618898 m!4118053))

(declare-fun m!4118055 () Bool)

(assert (=> b!3618898 m!4118055))

(declare-fun m!4118057 () Bool)

(assert (=> b!3618898 m!4118057))

(declare-fun m!4118059 () Bool)

(assert (=> b!3618898 m!4118059))

(declare-fun m!4118061 () Bool)

(assert (=> b!3618898 m!4118061))

(declare-fun m!4118063 () Bool)

(assert (=> b!3618898 m!4118063))

(assert (=> b!3618898 m!4118053))

(declare-fun m!4118065 () Bool)

(assert (=> b!3618898 m!4118065))

(declare-fun m!4118067 () Bool)

(assert (=> b!3618911 m!4118067))

(declare-fun m!4118069 () Bool)

(assert (=> b!3618883 m!4118069))

(declare-fun m!4118071 () Bool)

(assert (=> b!3618883 m!4118071))

(declare-fun m!4118073 () Bool)

(assert (=> b!3618883 m!4118073))

(declare-fun m!4118075 () Bool)

(assert (=> b!3618883 m!4118075))

(assert (=> b!3618883 m!4118069))

(declare-fun m!4118077 () Bool)

(assert (=> b!3618883 m!4118077))

(declare-fun m!4118079 () Bool)

(assert (=> b!3618908 m!4118079))

(declare-fun m!4118081 () Bool)

(assert (=> bm!261796 m!4118081))

(declare-fun m!4118083 () Bool)

(assert (=> b!3618890 m!4118083))

(declare-fun m!4118085 () Bool)

(assert (=> b!3618890 m!4118085))

(assert (=> bm!261797 m!4118081))

(declare-fun m!4118087 () Bool)

(assert (=> bm!261793 m!4118087))

(declare-fun m!4118089 () Bool)

(assert (=> b!3618880 m!4118089))

(assert (=> b!3618880 m!4118089))

(declare-fun m!4118091 () Bool)

(assert (=> b!3618880 m!4118091))

(declare-fun m!4118093 () Bool)

(assert (=> b!3618905 m!4118093))

(declare-fun m!4118095 () Bool)

(assert (=> b!3618905 m!4118095))

(declare-fun m!4118097 () Bool)

(assert (=> b!3618896 m!4118097))

(declare-fun m!4118099 () Bool)

(assert (=> b!3618915 m!4118099))

(declare-fun m!4118101 () Bool)

(assert (=> b!3618915 m!4118101))

(assert (=> b!3618915 m!4118099))

(declare-fun m!4118103 () Bool)

(assert (=> b!3618915 m!4118103))

(declare-fun m!4118105 () Bool)

(assert (=> b!3618915 m!4118105))

(declare-fun m!4118107 () Bool)

(assert (=> b!3618915 m!4118107))

(declare-fun m!4118109 () Bool)

(assert (=> b!3618915 m!4118109))

(declare-fun m!4118111 () Bool)

(assert (=> b!3618915 m!4118111))

(declare-fun m!4118113 () Bool)

(assert (=> b!3618920 m!4118113))

(declare-fun m!4118115 () Bool)

(assert (=> b!3618920 m!4118115))

(declare-fun m!4118117 () Bool)

(assert (=> bm!261792 m!4118117))

(declare-fun m!4118119 () Bool)

(assert (=> b!3618877 m!4118119))

(declare-fun m!4118121 () Bool)

(assert (=> b!3618877 m!4118121))

(declare-fun m!4118123 () Bool)

(assert (=> b!3618877 m!4118123))

(declare-fun m!4118125 () Bool)

(assert (=> b!3618891 m!4118125))

(declare-fun m!4118127 () Bool)

(assert (=> b!3618891 m!4118127))

(declare-fun m!4118129 () Bool)

(assert (=> b!3618923 m!4118129))

(declare-fun m!4118131 () Bool)

(assert (=> b!3618923 m!4118131))

(declare-fun m!4118133 () Bool)

(assert (=> b!3618923 m!4118133))

(assert (=> b!3618923 m!4118131))

(declare-fun m!4118135 () Bool)

(assert (=> b!3618923 m!4118135))

(declare-fun m!4118137 () Bool)

(assert (=> b!3618923 m!4118137))

(declare-fun m!4118139 () Bool)

(assert (=> b!3618923 m!4118139))

(declare-fun m!4118141 () Bool)

(assert (=> b!3618889 m!4118141))

(declare-fun m!4118143 () Bool)

(assert (=> b!3618885 m!4118143))

(declare-fun m!4118145 () Bool)

(assert (=> b!3618901 m!4118145))

(declare-fun m!4118147 () Bool)

(assert (=> b!3618901 m!4118147))

(declare-fun m!4118149 () Bool)

(assert (=> b!3618901 m!4118149))

(declare-fun m!4118151 () Bool)

(assert (=> b!3618887 m!4118151))

(declare-fun m!4118153 () Bool)

(assert (=> b!3618922 m!4118153))

(declare-fun m!4118155 () Bool)

(assert (=> b!3618921 m!4118155))

(declare-fun m!4118157 () Bool)

(assert (=> b!3618921 m!4118157))

(declare-fun m!4118159 () Bool)

(assert (=> b!3618921 m!4118159))

(declare-fun m!4118161 () Bool)

(assert (=> b!3618907 m!4118161))

(declare-fun m!4118163 () Bool)

(assert (=> b!3618916 m!4118163))

(declare-fun m!4118165 () Bool)

(assert (=> b!3618897 m!4118165))

(declare-fun m!4118167 () Bool)

(assert (=> b!3618913 m!4118167))

(declare-fun m!4118169 () Bool)

(assert (=> b!3618886 m!4118169))

(declare-fun m!4118171 () Bool)

(assert (=> b!3618886 m!4118171))

(declare-fun m!4118173 () Bool)

(assert (=> b!3618886 m!4118173))

(declare-fun m!4118175 () Bool)

(assert (=> b!3618886 m!4118175))

(declare-fun m!4118177 () Bool)

(assert (=> b!3618886 m!4118177))

(declare-fun m!4118179 () Bool)

(assert (=> b!3618886 m!4118179))

(declare-fun m!4118181 () Bool)

(assert (=> b!3618886 m!4118181))

(declare-fun m!4118183 () Bool)

(assert (=> b!3618886 m!4118183))

(declare-fun m!4118185 () Bool)

(assert (=> b!3618886 m!4118185))

(declare-fun m!4118187 () Bool)

(assert (=> b!3618886 m!4118187))

(declare-fun m!4118189 () Bool)

(assert (=> b!3618886 m!4118189))

(assert (=> b!3618886 m!4118175))

(declare-fun m!4118191 () Bool)

(assert (=> b!3618919 m!4118191))

(declare-fun m!4118193 () Bool)

(assert (=> b!3618893 m!4118193))

(declare-fun m!4118195 () Bool)

(assert (=> b!3618925 m!4118195))

(declare-fun m!4118197 () Bool)

(assert (=> b!3618925 m!4118197))

(declare-fun m!4118199 () Bool)

(assert (=> b!3618925 m!4118199))

(declare-fun m!4118201 () Bool)

(assert (=> b!3618925 m!4118201))

(declare-fun m!4118203 () Bool)

(assert (=> b!3618881 m!4118203))

(assert (=> b!3618879 m!4118039))

(assert (=> b!3618879 m!4118039))

(declare-fun m!4118205 () Bool)

(assert (=> b!3618879 m!4118205))

(assert (=> b!3618879 m!4118205))

(declare-fun m!4118207 () Bool)

(assert (=> b!3618879 m!4118207))

(declare-fun m!4118209 () Bool)

(assert (=> b!3618879 m!4118209))

(declare-fun m!4118211 () Bool)

(assert (=> b!3618924 m!4118211))

(declare-fun m!4118213 () Bool)

(assert (=> start!337054 m!4118213))

(declare-fun m!4118215 () Bool)

(assert (=> b!3618902 m!4118215))

(check-sat b_and!264475 (not b!3618911) b_and!264479 (not b!3618890) (not b!3618920) (not b!3618913) (not b!3618887) b_and!264471 (not b!3618881) (not b!3618908) (not b!3618900) (not b!3618896) (not b!3618907) (not b_next!94963) (not b_next!94961) (not b_next!94965) (not b!3618919) (not b!3618901) (not bm!261792) (not b!3618923) (not b!3618916) (not b!3618921) (not b!3618891) (not b!3618893) (not b!3618897) (not b!3618905) (not b_next!94975) (not b!3618877) (not b_next!94967) (not b!3618902) (not bm!261793) (not bm!261795) (not b!3618889) (not b!3618918) (not b!3618912) b_and!264477 (not bm!261794) (not b!3618924) (not b!3618898) b_and!264469 (not bm!261796) (not b!3618883) (not b!3618886) b_and!264481 b_and!264467 (not b!3618915) (not b_next!94969) b_and!264473 (not b_next!94973) tp_is_empty!17937 (not bm!261797) (not b!3618879) (not b!3618925) (not b!3618888) (not start!337054) (not b!3618922) (not b!3618880) (not b!3618885) (not b_next!94971))
(check-sat b_and!264471 (not b_next!94965) b_and!264475 b_and!264477 b_and!264469 (not b_next!94969) b_and!264479 (not b_next!94971) (not b_next!94963) (not b_next!94961) (not b_next!94967) (not b_next!94975) b_and!264481 b_and!264467 b_and!264473 (not b_next!94973))
