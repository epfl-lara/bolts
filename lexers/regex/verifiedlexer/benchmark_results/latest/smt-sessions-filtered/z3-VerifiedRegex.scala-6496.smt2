; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341702 () Bool)

(assert start!341702)

(declare-fun b!3653189 () Bool)

(declare-fun b_free!96153 () Bool)

(declare-fun b_next!96857 () Bool)

(assert (=> b!3653189 (= b_free!96153 (not b_next!96857))))

(declare-fun tp!1113474 () Bool)

(declare-fun b_and!270419 () Bool)

(assert (=> b!3653189 (= tp!1113474 b_and!270419)))

(declare-fun b_free!96155 () Bool)

(declare-fun b_next!96859 () Bool)

(assert (=> b!3653189 (= b_free!96155 (not b_next!96859))))

(declare-fun tp!1113462 () Bool)

(declare-fun b_and!270421 () Bool)

(assert (=> b!3653189 (= tp!1113462 b_and!270421)))

(declare-fun b!3653155 () Bool)

(declare-fun b_free!96157 () Bool)

(declare-fun b_next!96861 () Bool)

(assert (=> b!3653155 (= b_free!96157 (not b_next!96861))))

(declare-fun tp!1113467 () Bool)

(declare-fun b_and!270423 () Bool)

(assert (=> b!3653155 (= tp!1113467 b_and!270423)))

(declare-fun b_free!96159 () Bool)

(declare-fun b_next!96863 () Bool)

(assert (=> b!3653155 (= b_free!96159 (not b_next!96863))))

(declare-fun tp!1113471 () Bool)

(declare-fun b_and!270425 () Bool)

(assert (=> b!3653155 (= tp!1113471 b_and!270425)))

(declare-fun b!3653177 () Bool)

(declare-fun b_free!96161 () Bool)

(declare-fun b_next!96865 () Bool)

(assert (=> b!3653177 (= b_free!96161 (not b_next!96865))))

(declare-fun tp!1113461 () Bool)

(declare-fun b_and!270427 () Bool)

(assert (=> b!3653177 (= tp!1113461 b_and!270427)))

(declare-fun b_free!96163 () Bool)

(declare-fun b_next!96867 () Bool)

(assert (=> b!3653177 (= b_free!96163 (not b_next!96867))))

(declare-fun tp!1113468 () Bool)

(declare-fun b_and!270429 () Bool)

(assert (=> b!3653177 (= tp!1113468 b_and!270429)))

(declare-fun b!3653174 () Bool)

(declare-fun b_free!96165 () Bool)

(declare-fun b_next!96869 () Bool)

(assert (=> b!3653174 (= b_free!96165 (not b_next!96869))))

(declare-fun tp!1113465 () Bool)

(declare-fun b_and!270431 () Bool)

(assert (=> b!3653174 (= tp!1113465 b_and!270431)))

(declare-fun b_free!96167 () Bool)

(declare-fun b_next!96871 () Bool)

(assert (=> b!3653174 (= b_free!96167 (not b_next!96871))))

(declare-fun tp!1113473 () Bool)

(declare-fun b_and!270433 () Bool)

(assert (=> b!3653174 (= tp!1113473 b_and!270433)))

(declare-fun b!3653149 () Bool)

(declare-fun e!2261827 () Bool)

(declare-fun e!2261814 () Bool)

(assert (=> b!3653149 (= e!2261827 (not e!2261814))))

(declare-fun res!1482313 () Bool)

(assert (=> b!3653149 (=> res!1482313 e!2261814)))

(declare-datatypes ((List!38651 0))(
  ( (Nil!38527) (Cons!38527 (h!43947 (_ BitVec 16)) (t!297754 List!38651)) )
))
(declare-datatypes ((TokenValue!6002 0))(
  ( (FloatLiteralValue!12004 (text!42459 List!38651)) (TokenValueExt!6001 (__x!24221 Int)) (Broken!30010 (value!184936 List!38651)) (Object!6125) (End!6002) (Def!6002) (Underscore!6002) (Match!6002) (Else!6002) (Error!6002) (Case!6002) (If!6002) (Extends!6002) (Abstract!6002) (Class!6002) (Val!6002) (DelimiterValue!12004 (del!6062 List!38651)) (KeywordValue!6008 (value!184937 List!38651)) (CommentValue!12004 (value!184938 List!38651)) (WhitespaceValue!12004 (value!184939 List!38651)) (IndentationValue!6002 (value!184940 List!38651)) (String!43343) (Int32!6002) (Broken!30011 (value!184941 List!38651)) (Boolean!6003) (Unit!55571) (OperatorValue!6005 (op!6062 List!38651)) (IdentifierValue!12004 (value!184942 List!38651)) (IdentifierValue!12005 (value!184943 List!38651)) (WhitespaceValue!12005 (value!184944 List!38651)) (True!12004) (False!12004) (Broken!30012 (value!184945 List!38651)) (Broken!30013 (value!184946 List!38651)) (True!12005) (RightBrace!6002) (RightBracket!6002) (Colon!6002) (Null!6002) (Comma!6002) (LeftBracket!6002) (False!12005) (LeftBrace!6002) (ImaginaryLiteralValue!6002 (text!42460 List!38651)) (StringLiteralValue!18006 (value!184947 List!38651)) (EOFValue!6002 (value!184948 List!38651)) (IdentValue!6002 (value!184949 List!38651)) (DelimiterValue!12005 (value!184950 List!38651)) (DedentValue!6002 (value!184951 List!38651)) (NewLineValue!6002 (value!184952 List!38651)) (IntegerValue!18006 (value!184953 (_ BitVec 32)) (text!42461 List!38651)) (IntegerValue!18007 (value!184954 Int) (text!42462 List!38651)) (Times!6002) (Or!6002) (Equal!6002) (Minus!6002) (Broken!30014 (value!184955 List!38651)) (And!6002) (Div!6002) (LessEqual!6002) (Mod!6002) (Concat!16533) (Not!6002) (Plus!6002) (SpaceValue!6002 (value!184956 List!38651)) (IntegerValue!18008 (value!184957 Int) (text!42463 List!38651)) (StringLiteralValue!18007 (text!42464 List!38651)) (FloatLiteralValue!12005 (text!42465 List!38651)) (BytesLiteralValue!6002 (value!184958 List!38651)) (CommentValue!12005 (value!184959 List!38651)) (StringLiteralValue!18008 (value!184960 List!38651)) (ErrorTokenValue!6002 (msg!6063 List!38651)) )
))
(declare-datatypes ((C!21248 0))(
  ( (C!21249 (val!12672 Int)) )
))
(declare-datatypes ((Regex!10531 0))(
  ( (ElementMatch!10531 (c!631394 C!21248)) (Concat!16534 (regOne!21574 Regex!10531) (regTwo!21574 Regex!10531)) (EmptyExpr!10531) (Star!10531 (reg!10860 Regex!10531)) (EmptyLang!10531) (Union!10531 (regOne!21575 Regex!10531) (regTwo!21575 Regex!10531)) )
))
(declare-datatypes ((String!43344 0))(
  ( (String!43345 (value!184961 String)) )
))
(declare-datatypes ((List!38652 0))(
  ( (Nil!38528) (Cons!38528 (h!43948 C!21248) (t!297755 List!38652)) )
))
(declare-datatypes ((IArray!23555 0))(
  ( (IArray!23556 (innerList!11835 List!38652)) )
))
(declare-datatypes ((Conc!11775 0))(
  ( (Node!11775 (left!30075 Conc!11775) (right!30405 Conc!11775) (csize!23780 Int) (cheight!11986 Int)) (Leaf!18272 (xs!14977 IArray!23555) (csize!23781 Int)) (Empty!11775) )
))
(declare-datatypes ((BalanceConc!23164 0))(
  ( (BalanceConc!23165 (c!631395 Conc!11775)) )
))
(declare-datatypes ((TokenValueInjection!11432 0))(
  ( (TokenValueInjection!11433 (toValue!8064 Int) (toChars!7923 Int)) )
))
(declare-datatypes ((Rule!11344 0))(
  ( (Rule!11345 (regex!5772 Regex!10531) (tag!6540 String!43344) (isSeparator!5772 Bool) (transformation!5772 TokenValueInjection!11432)) )
))
(declare-fun rule!403 () Rule!11344)

(declare-fun lt!1267951 () List!38652)

(declare-fun matchR!5100 (Regex!10531 List!38652) Bool)

(assert (=> b!3653149 (= res!1482313 (not (matchR!5100 (regex!5772 rule!403) lt!1267951)))))

(declare-datatypes ((LexerInterface!5361 0))(
  ( (LexerInterfaceExt!5358 (__x!24222 Int)) (Lexer!5359) )
))
(declare-fun thiss!23823 () LexerInterface!5361)

(declare-fun ruleValid!2036 (LexerInterface!5361 Rule!11344) Bool)

(assert (=> b!3653149 (ruleValid!2036 thiss!23823 rule!403)))

(declare-datatypes ((List!38653 0))(
  ( (Nil!38529) (Cons!38529 (h!43949 Rule!11344) (t!297756 List!38653)) )
))
(declare-fun rules!3307 () List!38653)

(declare-datatypes ((Unit!55572 0))(
  ( (Unit!55573) )
))
(declare-fun lt!1267945 () Unit!55572)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1190 (LexerInterface!5361 Rule!11344 List!38653) Unit!55572)

(assert (=> b!3653149 (= lt!1267945 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1190 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3653150 () Bool)

(declare-fun e!2261825 () Bool)

(declare-fun e!2261834 () Bool)

(assert (=> b!3653150 (= e!2261825 e!2261834)))

(declare-fun res!1482317 () Bool)

(assert (=> b!3653150 (=> res!1482317 e!2261834)))

(assert (=> b!3653150 (= res!1482317 (isSeparator!5772 rule!403))))

(declare-fun lt!1267971 () List!38652)

(declare-fun lt!1267973 () C!21248)

(declare-fun contains!7609 (List!38652 C!21248) Bool)

(assert (=> b!3653150 (contains!7609 lt!1267971 lt!1267973)))

(declare-fun suffix!1395 () List!38652)

(declare-fun lt!1267976 () Unit!55572)

(declare-fun lt!1267968 () List!38652)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!80 (List!38652 List!38652 List!38652 List!38652) Unit!55572)

(assert (=> b!3653150 (= lt!1267976 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!80 lt!1267951 suffix!1395 lt!1267971 lt!1267968))))

(declare-fun b!3653151 () Bool)

(declare-fun res!1482328 () Bool)

(declare-fun e!2261822 () Bool)

(assert (=> b!3653151 (=> (not res!1482328) (not e!2261822))))

(declare-fun contains!7610 (List!38653 Rule!11344) Bool)

(assert (=> b!3653151 (= res!1482328 (contains!7610 rules!3307 rule!403))))

(declare-fun b!3653152 () Bool)

(declare-fun e!2261830 () Unit!55572)

(declare-fun Unit!55574 () Unit!55572)

(assert (=> b!3653152 (= e!2261830 Unit!55574)))

(declare-fun b!3653153 () Bool)

(assert (=> b!3653153 false))

(declare-fun lt!1267959 () Unit!55572)

(declare-fun call!264041 () Unit!55572)

(assert (=> b!3653153 (= lt!1267959 call!264041)))

(declare-fun call!264040 () Bool)

(assert (=> b!3653153 (not call!264040)))

(declare-datatypes ((Token!10910 0))(
  ( (Token!10911 (value!184962 TokenValue!6002) (rule!8574 Rule!11344) (size!29423 Int) (originalCharacters!6486 List!38652)) )
))
(declare-datatypes ((tuple2!38396 0))(
  ( (tuple2!38397 (_1!22332 Token!10910) (_2!22332 List!38652)) )
))
(declare-fun lt!1267940 () tuple2!38396)

(declare-fun lt!1267943 () C!21248)

(declare-fun lt!1267962 () Unit!55572)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!418 (LexerInterface!5361 List!38653 List!38653 Rule!11344 Rule!11344 C!21248) Unit!55572)

(assert (=> b!3653153 (= lt!1267962 (lemmaNonSepRuleNotContainsCharContainedInASepRule!418 thiss!23823 rules!3307 rules!3307 (rule!8574 (_1!22332 lt!1267940)) rule!403 lt!1267943))))

(declare-fun Unit!55575 () Unit!55572)

(assert (=> b!3653153 (= e!2261830 Unit!55575)))

(declare-fun b!3653154 () Bool)

(assert (=> b!3653154 (= e!2261834 true)))

(assert (=> b!3653154 false))

(declare-fun lt!1267966 () Unit!55572)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!720 (Regex!10531 List!38652 C!21248) Unit!55572)

(assert (=> b!3653154 (= lt!1267966 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!720 (regex!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267971 lt!1267973))))

(declare-fun usedCharacters!984 (Regex!10531) List!38652)

(assert (=> b!3653154 (not (contains!7609 (usedCharacters!984 (regex!5772 (rule!8574 (_1!22332 lt!1267940)))) lt!1267973))))

(declare-fun anOtherTypeRule!33 () Rule!11344)

(declare-fun lt!1267947 () Unit!55572)

(assert (=> b!3653154 (= lt!1267947 (lemmaNonSepRuleNotContainsCharContainedInASepRule!418 thiss!23823 rules!3307 rules!3307 (rule!8574 (_1!22332 lt!1267940)) anOtherTypeRule!33 lt!1267973))))

(declare-fun e!2261829 () Bool)

(assert (=> b!3653155 (= e!2261829 (and tp!1113467 tp!1113471))))

(declare-fun b!3653156 () Bool)

(declare-fun e!2261818 () Bool)

(declare-fun e!2261837 () Bool)

(assert (=> b!3653156 (= e!2261818 e!2261837)))

(declare-fun res!1482330 () Bool)

(assert (=> b!3653156 (=> res!1482330 e!2261837)))

(declare-fun lt!1267946 () Int)

(declare-datatypes ((Option!8172 0))(
  ( (None!8171) (Some!8171 (v!38039 tuple2!38396)) )
))
(declare-fun lt!1267969 () Option!8172)

(declare-fun lt!1267972 () TokenValue!6002)

(assert (=> b!3653156 (= res!1482330 (not (= lt!1267969 (Some!8171 (tuple2!38397 (Token!10911 lt!1267972 (rule!8574 (_1!22332 lt!1267940)) lt!1267946 lt!1267971) (_2!22332 lt!1267940))))))))

(declare-fun lt!1267958 () BalanceConc!23164)

(declare-fun size!29424 (BalanceConc!23164) Int)

(assert (=> b!3653156 (= lt!1267946 (size!29424 lt!1267958))))

(declare-fun apply!9274 (TokenValueInjection!11432 BalanceConc!23164) TokenValue!6002)

(assert (=> b!3653156 (= lt!1267972 (apply!9274 (transformation!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267958))))

(declare-fun lt!1267957 () Unit!55572)

(declare-fun lemmaCharactersSize!817 (Token!10910) Unit!55572)

(assert (=> b!3653156 (= lt!1267957 (lemmaCharactersSize!817 (_1!22332 lt!1267940)))))

(declare-fun lt!1267938 () Unit!55572)

(declare-fun lemmaEqSameImage!955 (TokenValueInjection!11432 BalanceConc!23164 BalanceConc!23164) Unit!55572)

(declare-fun seqFromList!4321 (List!38652) BalanceConc!23164)

(assert (=> b!3653156 (= lt!1267938 (lemmaEqSameImage!955 (transformation!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267958 (seqFromList!4321 (originalCharacters!6486 (_1!22332 lt!1267940)))))))

(declare-fun lt!1267937 () Unit!55572)

(declare-fun lemmaSemiInverse!1521 (TokenValueInjection!11432 BalanceConc!23164) Unit!55572)

(assert (=> b!3653156 (= lt!1267937 (lemmaSemiInverse!1521 (transformation!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267958))))

(declare-fun b!3653157 () Bool)

(declare-fun e!2261835 () Bool)

(assert (=> b!3653157 (= e!2261835 e!2261825)))

(declare-fun res!1482334 () Bool)

(assert (=> b!3653157 (=> res!1482334 e!2261825)))

(declare-fun lt!1267955 () BalanceConc!23164)

(assert (=> b!3653157 (= res!1482334 (<= lt!1267946 (size!29424 lt!1267955)))))

(declare-fun lt!1267963 () Unit!55572)

(declare-fun e!2261823 () Unit!55572)

(assert (=> b!3653157 (= lt!1267963 e!2261823)))

(declare-fun c!631392 () Bool)

(assert (=> b!3653157 (= c!631392 (isSeparator!5772 rule!403))))

(declare-fun lt!1267939 () Unit!55572)

(declare-fun e!2261816 () Unit!55572)

(assert (=> b!3653157 (= lt!1267939 e!2261816)))

(declare-fun c!631390 () Bool)

(declare-fun lt!1267953 () List!38652)

(assert (=> b!3653157 (= c!631390 (not (contains!7609 lt!1267953 lt!1267943)))))

(declare-fun head!7790 (List!38652) C!21248)

(assert (=> b!3653157 (= lt!1267943 (head!7790 lt!1267971))))

(declare-fun b!3653158 () Bool)

(assert (=> b!3653158 false))

(declare-fun lt!1267950 () Unit!55572)

(assert (=> b!3653158 (= lt!1267950 call!264041)))

(assert (=> b!3653158 (not call!264040)))

(declare-fun lt!1267974 () Unit!55572)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!300 (LexerInterface!5361 List!38653 List!38653 Rule!11344 Rule!11344 C!21248) Unit!55572)

(assert (=> b!3653158 (= lt!1267974 (lemmaSepRuleNotContainsCharContainedInANonSepRule!300 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8574 (_1!22332 lt!1267940)) lt!1267943))))

(declare-fun e!2261826 () Unit!55572)

(declare-fun Unit!55576 () Unit!55572)

(assert (=> b!3653158 (= e!2261826 Unit!55576)))

(declare-fun res!1482324 () Bool)

(assert (=> start!341702 (=> (not res!1482324) (not e!2261822))))

(get-info :version)

(assert (=> start!341702 (= res!1482324 ((_ is Lexer!5359) thiss!23823))))

(assert (=> start!341702 e!2261822))

(declare-fun e!2261813 () Bool)

(assert (=> start!341702 e!2261813))

(declare-fun e!2261842 () Bool)

(assert (=> start!341702 e!2261842))

(assert (=> start!341702 true))

(declare-fun token!511 () Token!10910)

(declare-fun e!2261838 () Bool)

(declare-fun inv!51982 (Token!10910) Bool)

(assert (=> start!341702 (and (inv!51982 token!511) e!2261838)))

(declare-fun e!2261839 () Bool)

(assert (=> start!341702 e!2261839))

(declare-fun e!2261844 () Bool)

(assert (=> start!341702 e!2261844))

(declare-fun tp!1113464 () Bool)

(declare-fun b!3653159 () Bool)

(declare-fun e!2261819 () Bool)

(declare-fun inv!51979 (String!43344) Bool)

(declare-fun inv!51983 (TokenValueInjection!11432) Bool)

(assert (=> b!3653159 (= e!2261844 (and tp!1113464 (inv!51979 (tag!6540 anOtherTypeRule!33)) (inv!51983 (transformation!5772 anOtherTypeRule!33)) e!2261819))))

(declare-fun b!3653160 () Bool)

(declare-fun e!2261836 () Bool)

(assert (=> b!3653160 (= e!2261836 e!2261818)))

(declare-fun res!1482332 () Bool)

(assert (=> b!3653160 (=> res!1482332 e!2261818)))

(declare-fun isPrefix!3135 (List!38652 List!38652) Bool)

(assert (=> b!3653160 (= res!1482332 (not (isPrefix!3135 lt!1267971 lt!1267968)))))

(declare-fun ++!9588 (List!38652 List!38652) List!38652)

(assert (=> b!3653160 (isPrefix!3135 lt!1267971 (++!9588 lt!1267971 (_2!22332 lt!1267940)))))

(declare-fun lt!1267965 () Unit!55572)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2054 (List!38652 List!38652) Unit!55572)

(assert (=> b!3653160 (= lt!1267965 (lemmaConcatTwoListThenFirstIsPrefix!2054 lt!1267971 (_2!22332 lt!1267940)))))

(declare-fun list!14282 (BalanceConc!23164) List!38652)

(assert (=> b!3653160 (= lt!1267971 (list!14282 lt!1267958))))

(declare-fun charsOf!3786 (Token!10910) BalanceConc!23164)

(assert (=> b!3653160 (= lt!1267958 (charsOf!3786 (_1!22332 lt!1267940)))))

(declare-fun e!2261817 () Bool)

(assert (=> b!3653160 e!2261817))

(declare-fun res!1482318 () Bool)

(assert (=> b!3653160 (=> (not res!1482318) (not e!2261817))))

(declare-datatypes ((Option!8173 0))(
  ( (None!8172) (Some!8172 (v!38040 Rule!11344)) )
))
(declare-fun lt!1267961 () Option!8173)

(declare-fun isDefined!6404 (Option!8173) Bool)

(assert (=> b!3653160 (= res!1482318 (isDefined!6404 lt!1267961))))

(declare-fun getRuleFromTag!1376 (LexerInterface!5361 List!38653 String!43344) Option!8173)

(assert (=> b!3653160 (= lt!1267961 (getRuleFromTag!1376 thiss!23823 rules!3307 (tag!6540 (rule!8574 (_1!22332 lt!1267940)))))))

(declare-fun lt!1267975 () Unit!55572)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1376 (LexerInterface!5361 List!38653 List!38652 Token!10910) Unit!55572)

(assert (=> b!3653160 (= lt!1267975 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1376 thiss!23823 rules!3307 lt!1267968 (_1!22332 lt!1267940)))))

(declare-fun get!12668 (Option!8172) tuple2!38396)

(assert (=> b!3653160 (= lt!1267940 (get!12668 lt!1267969))))

(declare-fun lt!1267960 () Unit!55572)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1039 (LexerInterface!5361 List!38653 List!38652 List!38652) Unit!55572)

(assert (=> b!3653160 (= lt!1267960 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1039 thiss!23823 rules!3307 lt!1267951 suffix!1395))))

(declare-fun maxPrefix!2895 (LexerInterface!5361 List!38653 List!38652) Option!8172)

(assert (=> b!3653160 (= lt!1267969 (maxPrefix!2895 thiss!23823 rules!3307 lt!1267968))))

(assert (=> b!3653160 (isPrefix!3135 lt!1267951 lt!1267968)))

(declare-fun lt!1267954 () Unit!55572)

(assert (=> b!3653160 (= lt!1267954 (lemmaConcatTwoListThenFirstIsPrefix!2054 lt!1267951 suffix!1395))))

(assert (=> b!3653160 (= lt!1267968 (++!9588 lt!1267951 suffix!1395))))

(declare-fun b!3653161 () Bool)

(declare-fun res!1482333 () Bool)

(assert (=> b!3653161 (=> (not res!1482333) (not e!2261827))))

(declare-fun lt!1267967 () tuple2!38396)

(declare-fun isEmpty!22836 (List!38652) Bool)

(assert (=> b!3653161 (= res!1482333 (isEmpty!22836 (_2!22332 lt!1267967)))))

(declare-fun bm!264035 () Bool)

(declare-fun call!264042 () List!38652)

(assert (=> bm!264035 (= call!264040 (contains!7609 call!264042 lt!1267943))))

(declare-fun b!3653162 () Bool)

(declare-fun tp_is_empty!18145 () Bool)

(declare-fun tp!1113463 () Bool)

(assert (=> b!3653162 (= e!2261842 (and tp_is_empty!18145 tp!1113463))))

(declare-fun b!3653163 () Bool)

(assert (=> b!3653163 (= e!2261823 e!2261830)))

(declare-fun c!631393 () Bool)

(assert (=> b!3653163 (= c!631393 (not (isSeparator!5772 (rule!8574 (_1!22332 lt!1267940)))))))

(declare-fun b!3653164 () Bool)

(declare-fun res!1482326 () Bool)

(assert (=> b!3653164 (=> res!1482326 e!2261814)))

(assert (=> b!3653164 (= res!1482326 (isEmpty!22836 suffix!1395))))

(declare-fun b!3653165 () Bool)

(declare-fun e!2261821 () Bool)

(declare-fun lt!1267970 () Rule!11344)

(assert (=> b!3653165 (= e!2261821 (= (rule!8574 (_1!22332 lt!1267940)) lt!1267970))))

(declare-fun b!3653166 () Bool)

(declare-fun res!1482319 () Bool)

(assert (=> b!3653166 (=> (not res!1482319) (not e!2261822))))

(assert (=> b!3653166 (= res!1482319 (contains!7610 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3653167 () Bool)

(declare-fun res!1482331 () Bool)

(assert (=> b!3653167 (=> (not res!1482331) (not e!2261822))))

(declare-fun isEmpty!22837 (List!38653) Bool)

(assert (=> b!3653167 (= res!1482331 (not (isEmpty!22837 rules!3307)))))

(declare-fun b!3653168 () Bool)

(declare-fun Unit!55577 () Unit!55572)

(assert (=> b!3653168 (= e!2261826 Unit!55577)))

(declare-fun b!3653169 () Bool)

(assert (=> b!3653169 (= e!2261823 e!2261826)))

(declare-fun c!631391 () Bool)

(assert (=> b!3653169 (= c!631391 (isSeparator!5772 (rule!8574 (_1!22332 lt!1267940))))))

(declare-fun b!3653170 () Bool)

(declare-fun res!1482316 () Bool)

(assert (=> b!3653170 (=> (not res!1482316) (not e!2261822))))

(assert (=> b!3653170 (= res!1482316 (not (= (isSeparator!5772 anOtherTypeRule!33) (isSeparator!5772 rule!403))))))

(declare-fun b!3653171 () Bool)

(declare-fun res!1482320 () Bool)

(assert (=> b!3653171 (=> (not res!1482320) (not e!2261827))))

(assert (=> b!3653171 (= res!1482320 (= (rule!8574 token!511) rule!403))))

(declare-fun e!2261832 () Bool)

(declare-fun tp!1113466 () Bool)

(declare-fun b!3653172 () Bool)

(declare-fun inv!21 (TokenValue!6002) Bool)

(assert (=> b!3653172 (= e!2261838 (and (inv!21 (value!184962 token!511)) e!2261832 tp!1113466))))

(declare-fun bm!264036 () Bool)

(assert (=> bm!264036 (= call!264041 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!720 (regex!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267971 lt!1267943))))

(declare-fun b!3653173 () Bool)

(assert (=> b!3653173 (= e!2261837 e!2261835)))

(declare-fun res!1482322 () Bool)

(assert (=> b!3653173 (=> res!1482322 e!2261835)))

(declare-fun lt!1267949 () List!38652)

(declare-fun lt!1267942 () Option!8172)

(assert (=> b!3653173 (= res!1482322 (or (not (= lt!1267949 (_2!22332 lt!1267940))) (not (= lt!1267942 (Some!8171 (tuple2!38397 (_1!22332 lt!1267940) lt!1267949))))))))

(assert (=> b!3653173 (= (_2!22332 lt!1267940) lt!1267949)))

(declare-fun lt!1267956 () Unit!55572)

(declare-fun lemmaSamePrefixThenSameSuffix!1462 (List!38652 List!38652 List!38652 List!38652 List!38652) Unit!55572)

(assert (=> b!3653173 (= lt!1267956 (lemmaSamePrefixThenSameSuffix!1462 lt!1267971 (_2!22332 lt!1267940) lt!1267971 lt!1267949 lt!1267968))))

(declare-fun getSuffix!1688 (List!38652 List!38652) List!38652)

(assert (=> b!3653173 (= lt!1267949 (getSuffix!1688 lt!1267968 lt!1267971))))

(declare-fun lt!1267944 () Int)

(declare-fun lt!1267952 () TokenValue!6002)

(assert (=> b!3653173 (= lt!1267942 (Some!8171 (tuple2!38397 (Token!10911 lt!1267952 (rule!8574 (_1!22332 lt!1267940)) lt!1267944 lt!1267971) (_2!22332 lt!1267940))))))

(declare-fun maxPrefixOneRule!2033 (LexerInterface!5361 Rule!11344 List!38652) Option!8172)

(assert (=> b!3653173 (= lt!1267942 (maxPrefixOneRule!2033 thiss!23823 (rule!8574 (_1!22332 lt!1267940)) lt!1267968))))

(declare-fun size!29425 (List!38652) Int)

(assert (=> b!3653173 (= lt!1267944 (size!29425 lt!1267971))))

(assert (=> b!3653173 (= lt!1267952 (apply!9274 (transformation!5772 (rule!8574 (_1!22332 lt!1267940))) (seqFromList!4321 lt!1267971)))))

(declare-fun lt!1267964 () Unit!55572)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1089 (LexerInterface!5361 List!38653 List!38652 List!38652 List!38652 Rule!11344) Unit!55572)

(assert (=> b!3653173 (= lt!1267964 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1089 thiss!23823 rules!3307 lt!1267971 lt!1267968 (_2!22332 lt!1267940) (rule!8574 (_1!22332 lt!1267940))))))

(declare-fun e!2261843 () Bool)

(assert (=> b!3653174 (= e!2261843 (and tp!1113465 tp!1113473))))

(declare-fun b!3653175 () Bool)

(declare-fun res!1482315 () Bool)

(assert (=> b!3653175 (=> res!1482315 e!2261836)))

(assert (=> b!3653175 (= res!1482315 (not (contains!7609 (usedCharacters!984 (regex!5772 anOtherTypeRule!33)) lt!1267973)))))

(declare-fun b!3653176 () Bool)

(declare-fun res!1482325 () Bool)

(assert (=> b!3653176 (=> res!1482325 e!2261836)))

(declare-fun sepAndNonSepRulesDisjointChars!1940 (List!38653 List!38653) Bool)

(assert (=> b!3653176 (= res!1482325 (not (sepAndNonSepRulesDisjointChars!1940 rules!3307 rules!3307)))))

(assert (=> b!3653177 (= e!2261819 (and tp!1113461 tp!1113468))))

(declare-fun b!3653178 () Bool)

(declare-fun res!1482327 () Bool)

(assert (=> b!3653178 (=> (not res!1482327) (not e!2261822))))

(declare-fun rulesInvariant!4758 (LexerInterface!5361 List!38653) Bool)

(assert (=> b!3653178 (= res!1482327 (rulesInvariant!4758 thiss!23823 rules!3307))))

(declare-fun b!3653179 () Bool)

(declare-fun Unit!55578 () Unit!55572)

(assert (=> b!3653179 (= e!2261816 Unit!55578)))

(declare-fun tp!1113460 () Bool)

(declare-fun e!2261824 () Bool)

(declare-fun b!3653180 () Bool)

(assert (=> b!3653180 (= e!2261824 (and tp!1113460 (inv!51979 (tag!6540 (h!43949 rules!3307))) (inv!51983 (transformation!5772 (h!43949 rules!3307))) e!2261829))))

(declare-fun b!3653181 () Bool)

(declare-fun e!2261815 () Bool)

(assert (=> b!3653181 (= e!2261815 e!2261827)))

(declare-fun res!1482321 () Bool)

(assert (=> b!3653181 (=> (not res!1482321) (not e!2261827))))

(assert (=> b!3653181 (= res!1482321 (= (_1!22332 lt!1267967) token!511))))

(declare-fun lt!1267948 () Option!8172)

(assert (=> b!3653181 (= lt!1267967 (get!12668 lt!1267948))))

(declare-fun b!3653182 () Bool)

(assert (=> b!3653182 (= e!2261814 e!2261836)))

(declare-fun res!1482314 () Bool)

(assert (=> b!3653182 (=> res!1482314 e!2261836)))

(assert (=> b!3653182 (= res!1482314 (contains!7609 lt!1267953 lt!1267973))))

(assert (=> b!3653182 (= lt!1267973 (head!7790 suffix!1395))))

(assert (=> b!3653182 (= lt!1267953 (usedCharacters!984 (regex!5772 rule!403)))))

(declare-fun b!3653183 () Bool)

(declare-fun tp!1113469 () Bool)

(assert (=> b!3653183 (= e!2261832 (and tp!1113469 (inv!51979 (tag!6540 (rule!8574 token!511))) (inv!51983 (transformation!5772 (rule!8574 token!511))) e!2261843))))

(declare-fun b!3653184 () Bool)

(assert (=> b!3653184 (= e!2261822 e!2261815)))

(declare-fun res!1482323 () Bool)

(assert (=> b!3653184 (=> (not res!1482323) (not e!2261815))))

(declare-fun isDefined!6405 (Option!8172) Bool)

(assert (=> b!3653184 (= res!1482323 (isDefined!6405 lt!1267948))))

(assert (=> b!3653184 (= lt!1267948 (maxPrefix!2895 thiss!23823 rules!3307 lt!1267951))))

(assert (=> b!3653184 (= lt!1267951 (list!14282 lt!1267955))))

(assert (=> b!3653184 (= lt!1267955 (charsOf!3786 token!511))))

(declare-fun bm!264037 () Bool)

(assert (=> bm!264037 (= call!264042 (usedCharacters!984 (regex!5772 (rule!8574 (_1!22332 lt!1267940)))))))

(declare-fun b!3653185 () Bool)

(assert (=> b!3653185 (= e!2261817 e!2261821)))

(declare-fun res!1482329 () Bool)

(assert (=> b!3653185 (=> (not res!1482329) (not e!2261821))))

(assert (=> b!3653185 (= res!1482329 (matchR!5100 (regex!5772 lt!1267970) (list!14282 (charsOf!3786 (_1!22332 lt!1267940)))))))

(declare-fun get!12669 (Option!8173) Rule!11344)

(assert (=> b!3653185 (= lt!1267970 (get!12669 lt!1267961))))

(declare-fun b!3653186 () Bool)

(declare-fun Unit!55579 () Unit!55572)

(assert (=> b!3653186 (= e!2261816 Unit!55579)))

(declare-fun lt!1267941 () Unit!55572)

(assert (=> b!3653186 (= lt!1267941 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!720 (regex!5772 rule!403) lt!1267951 lt!1267943))))

(assert (=> b!3653186 false))

(declare-fun tp!1113470 () Bool)

(declare-fun e!2261833 () Bool)

(declare-fun b!3653187 () Bool)

(assert (=> b!3653187 (= e!2261839 (and tp!1113470 (inv!51979 (tag!6540 rule!403)) (inv!51983 (transformation!5772 rule!403)) e!2261833))))

(declare-fun b!3653188 () Bool)

(declare-fun tp!1113472 () Bool)

(assert (=> b!3653188 (= e!2261813 (and e!2261824 tp!1113472))))

(assert (=> b!3653189 (= e!2261833 (and tp!1113474 tp!1113462))))

(declare-fun b!3653190 () Bool)

(declare-fun res!1482335 () Bool)

(assert (=> b!3653190 (=> res!1482335 e!2261818)))

(assert (=> b!3653190 (= res!1482335 (not (matchR!5100 (regex!5772 (rule!8574 (_1!22332 lt!1267940))) lt!1267971)))))

(assert (= (and start!341702 res!1482324) b!3653167))

(assert (= (and b!3653167 res!1482331) b!3653178))

(assert (= (and b!3653178 res!1482327) b!3653151))

(assert (= (and b!3653151 res!1482328) b!3653166))

(assert (= (and b!3653166 res!1482319) b!3653170))

(assert (= (and b!3653170 res!1482316) b!3653184))

(assert (= (and b!3653184 res!1482323) b!3653181))

(assert (= (and b!3653181 res!1482321) b!3653161))

(assert (= (and b!3653161 res!1482333) b!3653171))

(assert (= (and b!3653171 res!1482320) b!3653149))

(assert (= (and b!3653149 (not res!1482313)) b!3653164))

(assert (= (and b!3653164 (not res!1482326)) b!3653182))

(assert (= (and b!3653182 (not res!1482314)) b!3653175))

(assert (= (and b!3653175 (not res!1482315)) b!3653176))

(assert (= (and b!3653176 (not res!1482325)) b!3653160))

(assert (= (and b!3653160 res!1482318) b!3653185))

(assert (= (and b!3653185 res!1482329) b!3653165))

(assert (= (and b!3653160 (not res!1482332)) b!3653190))

(assert (= (and b!3653190 (not res!1482335)) b!3653156))

(assert (= (and b!3653156 (not res!1482330)) b!3653173))

(assert (= (and b!3653173 (not res!1482322)) b!3653157))

(assert (= (and b!3653157 c!631390) b!3653186))

(assert (= (and b!3653157 (not c!631390)) b!3653179))

(assert (= (and b!3653157 c!631392) b!3653163))

(assert (= (and b!3653157 (not c!631392)) b!3653169))

(assert (= (and b!3653163 c!631393) b!3653153))

(assert (= (and b!3653163 (not c!631393)) b!3653152))

(assert (= (and b!3653169 c!631391) b!3653158))

(assert (= (and b!3653169 (not c!631391)) b!3653168))

(assert (= (or b!3653153 b!3653158) bm!264036))

(assert (= (or b!3653153 b!3653158) bm!264037))

(assert (= (or b!3653153 b!3653158) bm!264035))

(assert (= (and b!3653157 (not res!1482334)) b!3653150))

(assert (= (and b!3653150 (not res!1482317)) b!3653154))

(assert (= b!3653180 b!3653155))

(assert (= b!3653188 b!3653180))

(assert (= (and start!341702 ((_ is Cons!38529) rules!3307)) b!3653188))

(assert (= (and start!341702 ((_ is Cons!38528) suffix!1395)) b!3653162))

(assert (= b!3653183 b!3653174))

(assert (= b!3653172 b!3653183))

(assert (= start!341702 b!3653172))

(assert (= b!3653187 b!3653189))

(assert (= start!341702 b!3653187))

(assert (= b!3653159 b!3653177))

(assert (= start!341702 b!3653159))

(declare-fun m!4158105 () Bool)

(assert (=> b!3653150 m!4158105))

(declare-fun m!4158107 () Bool)

(assert (=> b!3653150 m!4158107))

(declare-fun m!4158109 () Bool)

(assert (=> b!3653151 m!4158109))

(declare-fun m!4158111 () Bool)

(assert (=> b!3653185 m!4158111))

(assert (=> b!3653185 m!4158111))

(declare-fun m!4158113 () Bool)

(assert (=> b!3653185 m!4158113))

(assert (=> b!3653185 m!4158113))

(declare-fun m!4158115 () Bool)

(assert (=> b!3653185 m!4158115))

(declare-fun m!4158117 () Bool)

(assert (=> b!3653185 m!4158117))

(declare-fun m!4158119 () Bool)

(assert (=> b!3653164 m!4158119))

(declare-fun m!4158121 () Bool)

(assert (=> b!3653181 m!4158121))

(declare-fun m!4158123 () Bool)

(assert (=> b!3653175 m!4158123))

(assert (=> b!3653175 m!4158123))

(declare-fun m!4158125 () Bool)

(assert (=> b!3653175 m!4158125))

(declare-fun m!4158127 () Bool)

(assert (=> b!3653186 m!4158127))

(declare-fun m!4158129 () Bool)

(assert (=> b!3653158 m!4158129))

(declare-fun m!4158131 () Bool)

(assert (=> b!3653167 m!4158131))

(declare-fun m!4158133 () Bool)

(assert (=> b!3653159 m!4158133))

(declare-fun m!4158135 () Bool)

(assert (=> b!3653159 m!4158135))

(declare-fun m!4158137 () Bool)

(assert (=> bm!264035 m!4158137))

(declare-fun m!4158139 () Bool)

(assert (=> b!3653183 m!4158139))

(declare-fun m!4158141 () Bool)

(assert (=> b!3653183 m!4158141))

(declare-fun m!4158143 () Bool)

(assert (=> b!3653190 m!4158143))

(declare-fun m!4158145 () Bool)

(assert (=> b!3653173 m!4158145))

(declare-fun m!4158147 () Bool)

(assert (=> b!3653173 m!4158147))

(declare-fun m!4158149 () Bool)

(assert (=> b!3653173 m!4158149))

(declare-fun m!4158151 () Bool)

(assert (=> b!3653173 m!4158151))

(assert (=> b!3653173 m!4158145))

(declare-fun m!4158153 () Bool)

(assert (=> b!3653173 m!4158153))

(declare-fun m!4158155 () Bool)

(assert (=> b!3653173 m!4158155))

(declare-fun m!4158157 () Bool)

(assert (=> b!3653173 m!4158157))

(declare-fun m!4158159 () Bool)

(assert (=> b!3653176 m!4158159))

(declare-fun m!4158161 () Bool)

(assert (=> b!3653182 m!4158161))

(declare-fun m!4158163 () Bool)

(assert (=> b!3653182 m!4158163))

(declare-fun m!4158165 () Bool)

(assert (=> b!3653182 m!4158165))

(declare-fun m!4158167 () Bool)

(assert (=> b!3653154 m!4158167))

(declare-fun m!4158169 () Bool)

(assert (=> b!3653154 m!4158169))

(assert (=> b!3653154 m!4158169))

(declare-fun m!4158171 () Bool)

(assert (=> b!3653154 m!4158171))

(declare-fun m!4158173 () Bool)

(assert (=> b!3653154 m!4158173))

(declare-fun m!4158175 () Bool)

(assert (=> b!3653187 m!4158175))

(declare-fun m!4158177 () Bool)

(assert (=> b!3653187 m!4158177))

(declare-fun m!4158179 () Bool)

(assert (=> b!3653184 m!4158179))

(declare-fun m!4158181 () Bool)

(assert (=> b!3653184 m!4158181))

(declare-fun m!4158183 () Bool)

(assert (=> b!3653184 m!4158183))

(declare-fun m!4158185 () Bool)

(assert (=> b!3653184 m!4158185))

(declare-fun m!4158187 () Bool)

(assert (=> b!3653156 m!4158187))

(declare-fun m!4158189 () Bool)

(assert (=> b!3653156 m!4158189))

(declare-fun m!4158191 () Bool)

(assert (=> b!3653156 m!4158191))

(assert (=> b!3653156 m!4158189))

(declare-fun m!4158193 () Bool)

(assert (=> b!3653156 m!4158193))

(declare-fun m!4158195 () Bool)

(assert (=> b!3653156 m!4158195))

(declare-fun m!4158197 () Bool)

(assert (=> b!3653156 m!4158197))

(declare-fun m!4158199 () Bool)

(assert (=> b!3653161 m!4158199))

(declare-fun m!4158201 () Bool)

(assert (=> b!3653180 m!4158201))

(declare-fun m!4158203 () Bool)

(assert (=> b!3653180 m!4158203))

(assert (=> bm!264037 m!4158169))

(declare-fun m!4158205 () Bool)

(assert (=> b!3653157 m!4158205))

(declare-fun m!4158207 () Bool)

(assert (=> b!3653157 m!4158207))

(declare-fun m!4158209 () Bool)

(assert (=> b!3653157 m!4158209))

(declare-fun m!4158211 () Bool)

(assert (=> b!3653178 m!4158211))

(declare-fun m!4158213 () Bool)

(assert (=> b!3653149 m!4158213))

(declare-fun m!4158215 () Bool)

(assert (=> b!3653149 m!4158215))

(declare-fun m!4158217 () Bool)

(assert (=> b!3653149 m!4158217))

(declare-fun m!4158219 () Bool)

(assert (=> bm!264036 m!4158219))

(declare-fun m!4158221 () Bool)

(assert (=> b!3653160 m!4158221))

(declare-fun m!4158223 () Bool)

(assert (=> b!3653160 m!4158223))

(declare-fun m!4158225 () Bool)

(assert (=> b!3653160 m!4158225))

(declare-fun m!4158227 () Bool)

(assert (=> b!3653160 m!4158227))

(assert (=> b!3653160 m!4158223))

(declare-fun m!4158229 () Bool)

(assert (=> b!3653160 m!4158229))

(declare-fun m!4158231 () Bool)

(assert (=> b!3653160 m!4158231))

(declare-fun m!4158233 () Bool)

(assert (=> b!3653160 m!4158233))

(declare-fun m!4158235 () Bool)

(assert (=> b!3653160 m!4158235))

(declare-fun m!4158237 () Bool)

(assert (=> b!3653160 m!4158237))

(assert (=> b!3653160 m!4158111))

(declare-fun m!4158239 () Bool)

(assert (=> b!3653160 m!4158239))

(declare-fun m!4158241 () Bool)

(assert (=> b!3653160 m!4158241))

(declare-fun m!4158243 () Bool)

(assert (=> b!3653160 m!4158243))

(declare-fun m!4158245 () Bool)

(assert (=> b!3653160 m!4158245))

(declare-fun m!4158247 () Bool)

(assert (=> b!3653160 m!4158247))

(declare-fun m!4158249 () Bool)

(assert (=> b!3653153 m!4158249))

(declare-fun m!4158251 () Bool)

(assert (=> b!3653172 m!4158251))

(declare-fun m!4158253 () Bool)

(assert (=> b!3653166 m!4158253))

(declare-fun m!4158255 () Bool)

(assert (=> start!341702 m!4158255))

(check-sat (not b!3653153) (not b!3653149) (not b_next!96861) (not b!3653159) (not bm!264037) (not b!3653157) (not b_next!96857) b_and!270423 b_and!270419 (not b_next!96863) (not bm!264036) (not b!3653172) b_and!270431 (not b!3653162) (not start!341702) (not bm!264035) (not b!3653186) (not b!3653180) (not b!3653150) (not b!3653184) (not b!3653154) b_and!270427 (not b!3653160) (not b!3653156) (not b!3653167) b_and!270421 (not b!3653185) (not b_next!96871) (not b!3653164) (not b_next!96867) (not b!3653190) (not b!3653151) (not b!3653175) b_and!270425 (not b!3653158) (not b!3653183) (not b!3653166) (not b!3653178) (not b_next!96865) (not b!3653188) (not b!3653181) (not b!3653173) (not b_next!96869) b_and!270433 b_and!270429 (not b_next!96859) (not b!3653187) tp_is_empty!18145 (not b!3653176) (not b!3653161) (not b!3653182))
(check-sat (not b_next!96861) b_and!270427 (not b_next!96857) b_and!270423 b_and!270419 (not b_next!96863) b_and!270425 b_and!270431 (not b_next!96865) (not b_next!96859) b_and!270421 (not b_next!96871) (not b_next!96867) (not b_next!96869) b_and!270433 b_and!270429)
