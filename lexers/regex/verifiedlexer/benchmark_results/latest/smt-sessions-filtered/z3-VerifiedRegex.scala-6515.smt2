; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343610 () Bool)

(assert start!343610)

(declare-fun b!3667501 () Bool)

(declare-fun b_free!96841 () Bool)

(declare-fun b_next!97545 () Bool)

(assert (=> b!3667501 (= b_free!96841 (not b_next!97545))))

(declare-fun tp!1116369 () Bool)

(declare-fun b_and!272859 () Bool)

(assert (=> b!3667501 (= tp!1116369 b_and!272859)))

(declare-fun b_free!96843 () Bool)

(declare-fun b_next!97547 () Bool)

(assert (=> b!3667501 (= b_free!96843 (not b_next!97547))))

(declare-fun tp!1116375 () Bool)

(declare-fun b_and!272861 () Bool)

(assert (=> b!3667501 (= tp!1116375 b_and!272861)))

(declare-fun b!3667529 () Bool)

(declare-fun b_free!96845 () Bool)

(declare-fun b_next!97549 () Bool)

(assert (=> b!3667529 (= b_free!96845 (not b_next!97549))))

(declare-fun tp!1116374 () Bool)

(declare-fun b_and!272863 () Bool)

(assert (=> b!3667529 (= tp!1116374 b_and!272863)))

(declare-fun b_free!96847 () Bool)

(declare-fun b_next!97551 () Bool)

(assert (=> b!3667529 (= b_free!96847 (not b_next!97551))))

(declare-fun tp!1116362 () Bool)

(declare-fun b_and!272865 () Bool)

(assert (=> b!3667529 (= tp!1116362 b_and!272865)))

(declare-fun b!3667525 () Bool)

(declare-fun b_free!96849 () Bool)

(declare-fun b_next!97553 () Bool)

(assert (=> b!3667525 (= b_free!96849 (not b_next!97553))))

(declare-fun tp!1116373 () Bool)

(declare-fun b_and!272867 () Bool)

(assert (=> b!3667525 (= tp!1116373 b_and!272867)))

(declare-fun b_free!96851 () Bool)

(declare-fun b_next!97555 () Bool)

(assert (=> b!3667525 (= b_free!96851 (not b_next!97555))))

(declare-fun tp!1116376 () Bool)

(declare-fun b_and!272869 () Bool)

(assert (=> b!3667525 (= tp!1116376 b_and!272869)))

(declare-fun b!3667513 () Bool)

(declare-fun b_free!96853 () Bool)

(declare-fun b_next!97557 () Bool)

(assert (=> b!3667513 (= b_free!96853 (not b_next!97557))))

(declare-fun tp!1116372 () Bool)

(declare-fun b_and!272871 () Bool)

(assert (=> b!3667513 (= tp!1116372 b_and!272871)))

(declare-fun b_free!96855 () Bool)

(declare-fun b_next!97559 () Bool)

(assert (=> b!3667513 (= b_free!96855 (not b_next!97559))))

(declare-fun tp!1116364 () Bool)

(declare-fun b_and!272873 () Bool)

(assert (=> b!3667513 (= tp!1116364 b_and!272873)))

(declare-fun b!3667488 () Bool)

(declare-datatypes ((Unit!56136 0))(
  ( (Unit!56137) )
))
(declare-fun e!2270822 () Unit!56136)

(declare-fun Unit!56138 () Unit!56136)

(assert (=> b!3667488 (= e!2270822 Unit!56138)))

(declare-datatypes ((List!38801 0))(
  ( (Nil!38677) (Cons!38677 (h!44097 (_ BitVec 16)) (t!299316 List!38801)) )
))
(declare-datatypes ((TokenValue!6040 0))(
  ( (FloatLiteralValue!12080 (text!42725 List!38801)) (TokenValueExt!6039 (__x!24297 Int)) (Broken!30200 (value!186019 List!38801)) (Object!6163) (End!6040) (Def!6040) (Underscore!6040) (Match!6040) (Else!6040) (Error!6040) (Case!6040) (If!6040) (Extends!6040) (Abstract!6040) (Class!6040) (Val!6040) (DelimiterValue!12080 (del!6100 List!38801)) (KeywordValue!6046 (value!186020 List!38801)) (CommentValue!12080 (value!186021 List!38801)) (WhitespaceValue!12080 (value!186022 List!38801)) (IndentationValue!6040 (value!186023 List!38801)) (String!43533) (Int32!6040) (Broken!30201 (value!186024 List!38801)) (Boolean!6041) (Unit!56139) (OperatorValue!6043 (op!6100 List!38801)) (IdentifierValue!12080 (value!186025 List!38801)) (IdentifierValue!12081 (value!186026 List!38801)) (WhitespaceValue!12081 (value!186027 List!38801)) (True!12080) (False!12080) (Broken!30202 (value!186028 List!38801)) (Broken!30203 (value!186029 List!38801)) (True!12081) (RightBrace!6040) (RightBracket!6040) (Colon!6040) (Null!6040) (Comma!6040) (LeftBracket!6040) (False!12081) (LeftBrace!6040) (ImaginaryLiteralValue!6040 (text!42726 List!38801)) (StringLiteralValue!18120 (value!186030 List!38801)) (EOFValue!6040 (value!186031 List!38801)) (IdentValue!6040 (value!186032 List!38801)) (DelimiterValue!12081 (value!186033 List!38801)) (DedentValue!6040 (value!186034 List!38801)) (NewLineValue!6040 (value!186035 List!38801)) (IntegerValue!18120 (value!186036 (_ BitVec 32)) (text!42727 List!38801)) (IntegerValue!18121 (value!186037 Int) (text!42728 List!38801)) (Times!6040) (Or!6040) (Equal!6040) (Minus!6040) (Broken!30204 (value!186038 List!38801)) (And!6040) (Div!6040) (LessEqual!6040) (Mod!6040) (Concat!16609) (Not!6040) (Plus!6040) (SpaceValue!6040 (value!186039 List!38801)) (IntegerValue!18122 (value!186040 Int) (text!42729 List!38801)) (StringLiteralValue!18121 (text!42730 List!38801)) (FloatLiteralValue!12081 (text!42731 List!38801)) (BytesLiteralValue!6040 (value!186041 List!38801)) (CommentValue!12081 (value!186042 List!38801)) (StringLiteralValue!18122 (value!186043 List!38801)) (ErrorTokenValue!6040 (msg!6101 List!38801)) )
))
(declare-datatypes ((C!21324 0))(
  ( (C!21325 (val!12710 Int)) )
))
(declare-datatypes ((Regex!10569 0))(
  ( (ElementMatch!10569 (c!634076 C!21324)) (Concat!16610 (regOne!21650 Regex!10569) (regTwo!21650 Regex!10569)) (EmptyExpr!10569) (Star!10569 (reg!10898 Regex!10569)) (EmptyLang!10569) (Union!10569 (regOne!21651 Regex!10569) (regTwo!21651 Regex!10569)) )
))
(declare-datatypes ((String!43534 0))(
  ( (String!43535 (value!186044 String)) )
))
(declare-datatypes ((List!38802 0))(
  ( (Nil!38678) (Cons!38678 (h!44098 C!21324) (t!299317 List!38802)) )
))
(declare-datatypes ((IArray!23667 0))(
  ( (IArray!23668 (innerList!11891 List!38802)) )
))
(declare-datatypes ((Conc!11831 0))(
  ( (Node!11831 (left!30186 Conc!11831) (right!30516 Conc!11831) (csize!23892 Int) (cheight!12042 Int)) (Leaf!18347 (xs!15033 IArray!23667) (csize!23893 Int)) (Empty!11831) )
))
(declare-datatypes ((BalanceConc!23276 0))(
  ( (BalanceConc!23277 (c!634077 Conc!11831)) )
))
(declare-datatypes ((TokenValueInjection!11508 0))(
  ( (TokenValueInjection!11509 (toValue!8106 Int) (toChars!7965 Int)) )
))
(declare-datatypes ((Rule!11420 0))(
  ( (Rule!11421 (regex!5810 Regex!10569) (tag!6596 String!43534) (isSeparator!5810 Bool) (transformation!5810 TokenValueInjection!11508)) )
))
(declare-datatypes ((List!38803 0))(
  ( (Nil!38679) (Cons!38679 (h!44099 Rule!11420) (t!299318 List!38803)) )
))
(declare-fun rules!3307 () List!38803)

(declare-fun lt!1277255 () List!38802)

(declare-fun lt!1277230 () List!38802)

(declare-datatypes ((Token!10986 0))(
  ( (Token!10987 (value!186045 TokenValue!6040) (rule!8630 Rule!11420) (size!29557 Int) (originalCharacters!6524 List!38802)) )
))
(declare-datatypes ((tuple2!38548 0))(
  ( (tuple2!38549 (_1!22408 Token!10986) (_2!22408 List!38802)) )
))
(declare-fun lt!1277267 () tuple2!38548)

(declare-fun lt!1277236 () List!38802)

(declare-datatypes ((LexerInterface!5399 0))(
  ( (LexerInterfaceExt!5396 (__x!24298 Int)) (Lexer!5397) )
))
(declare-fun thiss!23823 () LexerInterface!5399)

(declare-fun rule!403 () Rule!11420)

(declare-fun lt!1277241 () Unit!56136)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!352 (LexerInterface!5399 List!38803 Rule!11420 List!38802 List!38802 List!38802 Rule!11420) Unit!56136)

(assert (=> b!3667488 (= lt!1277241 (lemmaMaxPrefixOutputsMaxPrefix!352 thiss!23823 rules!3307 (rule!8630 (_1!22408 lt!1277267)) lt!1277230 lt!1277255 lt!1277236 rule!403))))

(assert (=> b!3667488 false))

(declare-fun b!3667489 () Bool)

(declare-fun e!2270835 () Bool)

(declare-fun e!2270830 () Bool)

(assert (=> b!3667489 (= e!2270835 e!2270830)))

(declare-fun res!1489210 () Bool)

(assert (=> b!3667489 (=> res!1489210 e!2270830)))

(declare-fun lt!1277247 () Int)

(declare-fun lt!1277269 () Int)

(assert (=> b!3667489 (= res!1489210 (>= lt!1277247 lt!1277269))))

(declare-fun lt!1277234 () Unit!56136)

(declare-fun e!2270831 () Unit!56136)

(assert (=> b!3667489 (= lt!1277234 e!2270831)))

(declare-fun c!634073 () Bool)

(assert (=> b!3667489 (= c!634073 (< lt!1277269 lt!1277247))))

(declare-fun getIndex!478 (List!38803 Rule!11420) Int)

(assert (=> b!3667489 (= lt!1277247 (getIndex!478 rules!3307 rule!403))))

(assert (=> b!3667489 (= lt!1277269 (getIndex!478 rules!3307 (rule!8630 (_1!22408 lt!1277267))))))

(declare-fun b!3667490 () Bool)

(declare-fun e!2270853 () Bool)

(declare-fun e!2270828 () Bool)

(declare-fun tp!1116363 () Bool)

(declare-fun inv!52154 (String!43534) Bool)

(declare-fun inv!52157 (TokenValueInjection!11508) Bool)

(assert (=> b!3667490 (= e!2270828 (and tp!1116363 (inv!52154 (tag!6596 rule!403)) (inv!52157 (transformation!5810 rule!403)) e!2270853))))

(declare-fun b!3667491 () Bool)

(declare-fun e!2270834 () Unit!56136)

(declare-fun e!2270823 () Unit!56136)

(assert (=> b!3667491 (= e!2270834 e!2270823)))

(declare-fun c!634071 () Bool)

(assert (=> b!3667491 (= c!634071 (isSeparator!5810 (rule!8630 (_1!22408 lt!1277267))))))

(declare-fun b!3667492 () Bool)

(declare-fun res!1489196 () Bool)

(declare-fun e!2270838 () Bool)

(assert (=> b!3667492 (=> (not res!1489196) (not e!2270838))))

(declare-fun lt!1277278 () tuple2!38548)

(declare-fun isEmpty!22950 (List!38802) Bool)

(assert (=> b!3667492 (= res!1489196 (isEmpty!22950 (_2!22408 lt!1277278)))))

(declare-fun b!3667493 () Bool)

(declare-fun e!2270858 () Bool)

(declare-fun e!2270839 () Bool)

(assert (=> b!3667493 (= e!2270858 e!2270839)))

(declare-fun res!1489192 () Bool)

(assert (=> b!3667493 (=> res!1489192 e!2270839)))

(declare-fun isPrefix!3173 (List!38802 List!38802) Bool)

(assert (=> b!3667493 (= res!1489192 (not (isPrefix!3173 lt!1277230 lt!1277255)))))

(declare-fun ++!9626 (List!38802 List!38802) List!38802)

(assert (=> b!3667493 (isPrefix!3173 lt!1277230 (++!9626 lt!1277230 (_2!22408 lt!1277267)))))

(declare-fun lt!1277235 () Unit!56136)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2092 (List!38802 List!38802) Unit!56136)

(assert (=> b!3667493 (= lt!1277235 (lemmaConcatTwoListThenFirstIsPrefix!2092 lt!1277230 (_2!22408 lt!1277267)))))

(declare-fun lt!1277239 () BalanceConc!23276)

(declare-fun list!14360 (BalanceConc!23276) List!38802)

(assert (=> b!3667493 (= lt!1277230 (list!14360 lt!1277239))))

(declare-fun charsOf!3824 (Token!10986) BalanceConc!23276)

(assert (=> b!3667493 (= lt!1277239 (charsOf!3824 (_1!22408 lt!1277267)))))

(declare-fun e!2270846 () Bool)

(assert (=> b!3667493 e!2270846))

(declare-fun res!1489198 () Bool)

(assert (=> b!3667493 (=> (not res!1489198) (not e!2270846))))

(declare-datatypes ((Option!8248 0))(
  ( (None!8247) (Some!8247 (v!38151 Rule!11420)) )
))
(declare-fun lt!1277238 () Option!8248)

(declare-fun isDefined!6480 (Option!8248) Bool)

(assert (=> b!3667493 (= res!1489198 (isDefined!6480 lt!1277238))))

(declare-fun getRuleFromTag!1414 (LexerInterface!5399 List!38803 String!43534) Option!8248)

(assert (=> b!3667493 (= lt!1277238 (getRuleFromTag!1414 thiss!23823 rules!3307 (tag!6596 (rule!8630 (_1!22408 lt!1277267)))))))

(declare-fun lt!1277265 () Unit!56136)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1414 (LexerInterface!5399 List!38803 List!38802 Token!10986) Unit!56136)

(assert (=> b!3667493 (= lt!1277265 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1414 thiss!23823 rules!3307 lt!1277255 (_1!22408 lt!1277267)))))

(declare-datatypes ((Option!8249 0))(
  ( (None!8248) (Some!8248 (v!38152 tuple2!38548)) )
))
(declare-fun lt!1277258 () Option!8249)

(declare-fun get!12763 (Option!8249) tuple2!38548)

(assert (=> b!3667493 (= lt!1277267 (get!12763 lt!1277258))))

(declare-fun lt!1277276 () Unit!56136)

(declare-fun suffix!1395 () List!38802)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1077 (LexerInterface!5399 List!38803 List!38802 List!38802) Unit!56136)

(assert (=> b!3667493 (= lt!1277276 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1077 thiss!23823 rules!3307 lt!1277236 suffix!1395))))

(declare-fun maxPrefix!2933 (LexerInterface!5399 List!38803 List!38802) Option!8249)

(assert (=> b!3667493 (= lt!1277258 (maxPrefix!2933 thiss!23823 rules!3307 lt!1277255))))

(assert (=> b!3667493 (isPrefix!3173 lt!1277236 lt!1277255)))

(declare-fun lt!1277249 () Unit!56136)

(assert (=> b!3667493 (= lt!1277249 (lemmaConcatTwoListThenFirstIsPrefix!2092 lt!1277236 suffix!1395))))

(assert (=> b!3667493 (= lt!1277255 (++!9626 lt!1277236 suffix!1395))))

(declare-fun bm!265438 () Bool)

(declare-fun call!265443 () List!38802)

(declare-fun usedCharacters!1022 (Regex!10569) List!38802)

(assert (=> bm!265438 (= call!265443 (usedCharacters!1022 (regex!5810 (rule!8630 (_1!22408 lt!1277267)))))))

(declare-fun lt!1277233 () C!21324)

(declare-fun bm!265439 () Bool)

(declare-fun call!265446 () Unit!56136)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!758 (Regex!10569 List!38802 C!21324) Unit!56136)

(assert (=> bm!265439 (= call!265446 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!758 (regex!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277230 lt!1277233))))

(declare-fun b!3667495 () Bool)

(declare-fun e!2270856 () Bool)

(assert (=> b!3667495 (= e!2270846 e!2270856)))

(declare-fun res!1489193 () Bool)

(assert (=> b!3667495 (=> (not res!1489193) (not e!2270856))))

(declare-fun lt!1277228 () Rule!11420)

(declare-fun matchR!5138 (Regex!10569 List!38802) Bool)

(assert (=> b!3667495 (= res!1489193 (matchR!5138 (regex!5810 lt!1277228) (list!14360 (charsOf!3824 (_1!22408 lt!1277267)))))))

(declare-fun get!12764 (Option!8248) Rule!11420)

(assert (=> b!3667495 (= lt!1277228 (get!12764 lt!1277238))))

(declare-fun b!3667496 () Bool)

(declare-fun e!2270829 () Bool)

(declare-fun e!2270827 () Bool)

(assert (=> b!3667496 (= e!2270829 e!2270827)))

(declare-fun res!1489207 () Bool)

(assert (=> b!3667496 (=> (not res!1489207) (not e!2270827))))

(declare-fun lt!1277272 () Option!8249)

(declare-fun isDefined!6481 (Option!8249) Bool)

(assert (=> b!3667496 (= res!1489207 (isDefined!6481 lt!1277272))))

(assert (=> b!3667496 (= lt!1277272 (maxPrefix!2933 thiss!23823 rules!3307 lt!1277236))))

(declare-fun lt!1277243 () BalanceConc!23276)

(assert (=> b!3667496 (= lt!1277236 (list!14360 lt!1277243))))

(declare-fun token!511 () Token!10986)

(assert (=> b!3667496 (= lt!1277243 (charsOf!3824 token!511))))

(declare-fun b!3667497 () Bool)

(assert (=> b!3667497 (= e!2270830 true)))

(declare-fun lt!1277240 () Bool)

(declare-fun contains!7687 (List!38803 Rule!11420) Bool)

(assert (=> b!3667497 (= lt!1277240 (contains!7687 rules!3307 (rule!8630 (_1!22408 lt!1277267))))))

(declare-fun b!3667498 () Bool)

(assert (=> b!3667498 false))

(declare-fun lt!1277270 () Unit!56136)

(assert (=> b!3667498 (= lt!1277270 call!265446)))

(declare-fun call!265447 () Bool)

(assert (=> b!3667498 (not call!265447)))

(declare-fun lt!1277275 () Unit!56136)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!338 (LexerInterface!5399 List!38803 List!38803 Rule!11420 Rule!11420 C!21324) Unit!56136)

(assert (=> b!3667498 (= lt!1277275 (lemmaSepRuleNotContainsCharContainedInANonSepRule!338 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8630 (_1!22408 lt!1277267)) lt!1277233))))

(declare-fun Unit!56140 () Unit!56136)

(assert (=> b!3667498 (= e!2270823 Unit!56140)))

(declare-fun b!3667499 () Bool)

(assert (=> b!3667499 (= e!2270827 e!2270838)))

(declare-fun res!1489197 () Bool)

(assert (=> b!3667499 (=> (not res!1489197) (not e!2270838))))

(assert (=> b!3667499 (= res!1489197 (= (_1!22408 lt!1277278) token!511))))

(assert (=> b!3667499 (= lt!1277278 (get!12763 lt!1277272))))

(declare-fun b!3667500 () Bool)

(declare-fun e!2270841 () Bool)

(declare-fun tp_is_empty!18221 () Bool)

(declare-fun tp!1116368 () Bool)

(assert (=> b!3667500 (= e!2270841 (and tp_is_empty!18221 tp!1116368))))

(declare-fun e!2270824 () Bool)

(assert (=> b!3667501 (= e!2270824 (and tp!1116369 tp!1116375))))

(declare-fun b!3667502 () Bool)

(assert (=> b!3667502 false))

(declare-fun lt!1277253 () Unit!56136)

(declare-fun call!265448 () Unit!56136)

(assert (=> b!3667502 (= lt!1277253 call!265448)))

(declare-fun call!265445 () Bool)

(assert (=> b!3667502 (not call!265445)))

(declare-fun lt!1277262 () C!21324)

(declare-fun anOtherTypeRule!33 () Rule!11420)

(declare-fun lt!1277266 () Unit!56136)

(assert (=> b!3667502 (= lt!1277266 (lemmaSepRuleNotContainsCharContainedInANonSepRule!338 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8630 (_1!22408 lt!1277267)) lt!1277262))))

(declare-fun e!2270854 () Unit!56136)

(declare-fun Unit!56141 () Unit!56136)

(assert (=> b!3667502 (= e!2270854 Unit!56141)))

(declare-fun b!3667503 () Bool)

(declare-fun e!2270836 () Unit!56136)

(declare-fun Unit!56142 () Unit!56136)

(assert (=> b!3667503 (= e!2270836 Unit!56142)))

(declare-fun b!3667504 () Bool)

(declare-fun e!2270844 () Unit!56136)

(declare-fun Unit!56143 () Unit!56136)

(assert (=> b!3667504 (= e!2270844 Unit!56143)))

(declare-fun b!3667505 () Bool)

(declare-fun e!2270848 () Bool)

(assert (=> b!3667505 (= e!2270839 e!2270848)))

(declare-fun res!1489209 () Bool)

(assert (=> b!3667505 (=> res!1489209 e!2270848)))

(declare-fun lt!1277244 () TokenValue!6040)

(declare-fun lt!1277257 () Int)

(assert (=> b!3667505 (= res!1489209 (not (= lt!1277258 (Some!8248 (tuple2!38549 (Token!10987 lt!1277244 (rule!8630 (_1!22408 lt!1277267)) lt!1277257 lt!1277230) (_2!22408 lt!1277267))))))))

(declare-fun size!29558 (BalanceConc!23276) Int)

(assert (=> b!3667505 (= lt!1277257 (size!29558 lt!1277239))))

(declare-fun apply!9312 (TokenValueInjection!11508 BalanceConc!23276) TokenValue!6040)

(assert (=> b!3667505 (= lt!1277244 (apply!9312 (transformation!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277239))))

(declare-fun lt!1277250 () Unit!56136)

(declare-fun lemmaCharactersSize!855 (Token!10986) Unit!56136)

(assert (=> b!3667505 (= lt!1277250 (lemmaCharactersSize!855 (_1!22408 lt!1277267)))))

(declare-fun lt!1277229 () Unit!56136)

(declare-fun lemmaEqSameImage!993 (TokenValueInjection!11508 BalanceConc!23276 BalanceConc!23276) Unit!56136)

(declare-fun seqFromList!4359 (List!38802) BalanceConc!23276)

(assert (=> b!3667505 (= lt!1277229 (lemmaEqSameImage!993 (transformation!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277239 (seqFromList!4359 (originalCharacters!6524 (_1!22408 lt!1277267)))))))

(declare-fun lt!1277263 () Unit!56136)

(declare-fun lemmaSemiInverse!1559 (TokenValueInjection!11508 BalanceConc!23276) Unit!56136)

(assert (=> b!3667505 (= lt!1277263 (lemmaSemiInverse!1559 (transformation!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277239))))

(declare-fun b!3667506 () Bool)

(declare-fun Unit!56144 () Unit!56136)

(assert (=> b!3667506 (= e!2270831 Unit!56144)))

(declare-fun b!3667507 () Bool)

(declare-fun Unit!56145 () Unit!56136)

(assert (=> b!3667507 (= e!2270836 Unit!56145)))

(declare-fun lt!1277268 () Unit!56136)

(assert (=> b!3667507 (= lt!1277268 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!758 (regex!5810 rule!403) lt!1277236 lt!1277233))))

(assert (=> b!3667507 false))

(declare-fun b!3667508 () Bool)

(assert (=> b!3667508 false))

(declare-fun lt!1277254 () Unit!56136)

(assert (=> b!3667508 (= lt!1277254 call!265448)))

(assert (=> b!3667508 (not call!265445)))

(declare-fun lt!1277242 () Unit!56136)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!456 (LexerInterface!5399 List!38803 List!38803 Rule!11420 Rule!11420 C!21324) Unit!56136)

(assert (=> b!3667508 (= lt!1277242 (lemmaNonSepRuleNotContainsCharContainedInASepRule!456 thiss!23823 rules!3307 rules!3307 (rule!8630 (_1!22408 lt!1277267)) anOtherTypeRule!33 lt!1277262))))

(declare-fun Unit!56146 () Unit!56136)

(assert (=> b!3667508 (= e!2270854 Unit!56146)))

(declare-fun bm!265440 () Bool)

(declare-fun contains!7688 (List!38802 C!21324) Bool)

(assert (=> bm!265440 (= call!265447 (contains!7688 call!265443 lt!1277233))))

(declare-fun b!3667509 () Bool)

(declare-fun Unit!56147 () Unit!56136)

(assert (=> b!3667509 (= e!2270831 Unit!56147)))

(declare-fun lt!1277279 () Unit!56136)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!190 (List!38802) Unit!56136)

(assert (=> b!3667509 (= lt!1277279 (lemmaGetSuffixOnListWithItSelfIsEmpty!190 lt!1277236))))

(declare-fun getSuffix!1726 (List!38802 List!38802) List!38802)

(assert (=> b!3667509 (isEmpty!22950 (getSuffix!1726 lt!1277236 lt!1277236))))

(declare-fun lt!1277248 () Unit!56136)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!218 (LexerInterface!5399 List!38803 Rule!11420 List!38802 List!38802 Rule!11420) Unit!56136)

(assert (=> b!3667509 (= lt!1277248 (lemmaMaxPrefNoSmallerRuleMatches!218 thiss!23823 rules!3307 rule!403 lt!1277236 lt!1277236 (rule!8630 (_1!22408 lt!1277267))))))

(declare-fun res!1489190 () Bool)

(assert (=> b!3667509 (= res!1489190 (not (matchR!5138 (regex!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277236)))))

(declare-fun e!2270843 () Bool)

(assert (=> b!3667509 (=> (not res!1489190) (not e!2270843))))

(assert (=> b!3667509 e!2270843))

(declare-fun b!3667510 () Bool)

(declare-fun res!1489189 () Bool)

(assert (=> b!3667510 (=> res!1489189 e!2270839)))

(assert (=> b!3667510 (= res!1489189 (not (matchR!5138 (regex!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277230)))))

(declare-fun b!3667511 () Bool)

(declare-fun res!1489191 () Bool)

(declare-fun e!2270832 () Bool)

(assert (=> b!3667511 (=> res!1489191 e!2270832)))

(assert (=> b!3667511 (= res!1489191 (isEmpty!22950 suffix!1395))))

(declare-fun b!3667512 () Bool)

(declare-fun e!2270847 () Unit!56136)

(declare-fun Unit!56148 () Unit!56136)

(assert (=> b!3667512 (= e!2270847 Unit!56148)))

(assert (=> b!3667513 (= e!2270853 (and tp!1116372 tp!1116364))))

(declare-fun b!3667514 () Bool)

(assert (=> b!3667514 (= e!2270843 false)))

(declare-fun b!3667515 () Bool)

(assert (=> b!3667515 false))

(declare-fun lt!1277261 () Unit!56136)

(assert (=> b!3667515 (= lt!1277261 call!265446)))

(assert (=> b!3667515 (not call!265447)))

(declare-fun lt!1277252 () Unit!56136)

(assert (=> b!3667515 (= lt!1277252 (lemmaNonSepRuleNotContainsCharContainedInASepRule!456 thiss!23823 rules!3307 rules!3307 (rule!8630 (_1!22408 lt!1277267)) rule!403 lt!1277233))))

(declare-fun Unit!56149 () Unit!56136)

(assert (=> b!3667515 (= e!2270847 Unit!56149)))

(declare-fun b!3667516 () Bool)

(declare-fun e!2270850 () Bool)

(assert (=> b!3667516 (= e!2270848 e!2270850)))

(declare-fun res!1489188 () Bool)

(assert (=> b!3667516 (=> res!1489188 e!2270850)))

(declare-fun lt!1277271 () List!38802)

(declare-fun lt!1277260 () Option!8249)

(assert (=> b!3667516 (= res!1489188 (or (not (= lt!1277271 (_2!22408 lt!1277267))) (not (= lt!1277260 (Some!8248 (tuple2!38549 (_1!22408 lt!1277267) lt!1277271))))))))

(assert (=> b!3667516 (= (_2!22408 lt!1277267) lt!1277271)))

(declare-fun lt!1277280 () Unit!56136)

(declare-fun lemmaSamePrefixThenSameSuffix!1500 (List!38802 List!38802 List!38802 List!38802 List!38802) Unit!56136)

(assert (=> b!3667516 (= lt!1277280 (lemmaSamePrefixThenSameSuffix!1500 lt!1277230 (_2!22408 lt!1277267) lt!1277230 lt!1277271 lt!1277255))))

(assert (=> b!3667516 (= lt!1277271 (getSuffix!1726 lt!1277255 lt!1277230))))

(declare-fun lt!1277259 () TokenValue!6040)

(declare-fun lt!1277237 () Int)

(assert (=> b!3667516 (= lt!1277260 (Some!8248 (tuple2!38549 (Token!10987 lt!1277259 (rule!8630 (_1!22408 lt!1277267)) lt!1277237 lt!1277230) (_2!22408 lt!1277267))))))

(declare-fun maxPrefixOneRule!2071 (LexerInterface!5399 Rule!11420 List!38802) Option!8249)

(assert (=> b!3667516 (= lt!1277260 (maxPrefixOneRule!2071 thiss!23823 (rule!8630 (_1!22408 lt!1277267)) lt!1277255))))

(declare-fun size!29559 (List!38802) Int)

(assert (=> b!3667516 (= lt!1277237 (size!29559 lt!1277230))))

(assert (=> b!3667516 (= lt!1277259 (apply!9312 (transformation!5810 (rule!8630 (_1!22408 lt!1277267))) (seqFromList!4359 lt!1277230)))))

(declare-fun lt!1277231 () Unit!56136)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1127 (LexerInterface!5399 List!38803 List!38802 List!38802 List!38802 Rule!11420) Unit!56136)

(assert (=> b!3667516 (= lt!1277231 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1127 thiss!23823 rules!3307 lt!1277230 lt!1277255 (_2!22408 lt!1277267) (rule!8630 (_1!22408 lt!1277267))))))

(declare-fun bm!265441 () Bool)

(assert (=> bm!265441 (= call!265448 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!758 (regex!5810 (rule!8630 (_1!22408 lt!1277267))) lt!1277230 lt!1277262))))

(declare-fun tp!1116371 () Bool)

(declare-fun e!2270826 () Bool)

(declare-fun b!3667517 () Bool)

(assert (=> b!3667517 (= e!2270826 (and tp!1116371 (inv!52154 (tag!6596 (h!44099 rules!3307))) (inv!52157 (transformation!5810 (h!44099 rules!3307))) e!2270824))))

(declare-fun e!2270851 () Bool)

(declare-fun b!3667518 () Bool)

(declare-fun e!2270852 () Bool)

(declare-fun tp!1116370 () Bool)

(declare-fun inv!21 (TokenValue!6040) Bool)

(assert (=> b!3667518 (= e!2270852 (and (inv!21 (value!186045 token!511)) e!2270851 tp!1116370))))

(declare-fun b!3667519 () Bool)

(declare-fun res!1489204 () Bool)

(assert (=> b!3667519 (=> res!1489204 e!2270858)))

(declare-fun sepAndNonSepRulesDisjointChars!1978 (List!38803 List!38803) Bool)

(assert (=> b!3667519 (= res!1489204 (not (sepAndNonSepRulesDisjointChars!1978 rules!3307 rules!3307)))))

(declare-fun e!2270840 () Bool)

(declare-fun tp!1116367 () Bool)

(declare-fun b!3667520 () Bool)

(declare-fun e!2270849 () Bool)

(assert (=> b!3667520 (= e!2270840 (and tp!1116367 (inv!52154 (tag!6596 anOtherTypeRule!33)) (inv!52157 (transformation!5810 anOtherTypeRule!33)) e!2270849))))

(declare-fun b!3667521 () Bool)

(assert (=> b!3667521 (= e!2270834 e!2270847)))

(declare-fun c!634068 () Bool)

(assert (=> b!3667521 (= c!634068 (not (isSeparator!5810 (rule!8630 (_1!22408 lt!1277267)))))))

(declare-fun b!3667522 () Bool)

(declare-fun res!1489208 () Bool)

(assert (=> b!3667522 (=> (not res!1489208) (not e!2270829))))

(assert (=> b!3667522 (= res!1489208 (not (= (isSeparator!5810 anOtherTypeRule!33) (isSeparator!5810 rule!403))))))

(declare-fun b!3667523 () Bool)

(declare-fun res!1489205 () Bool)

(assert (=> b!3667523 (=> (not res!1489205) (not e!2270829))))

(assert (=> b!3667523 (= res!1489205 (contains!7687 rules!3307 rule!403))))

(declare-fun e!2270857 () Bool)

(declare-fun b!3667524 () Bool)

(declare-fun tp!1116365 () Bool)

(assert (=> b!3667524 (= e!2270851 (and tp!1116365 (inv!52154 (tag!6596 (rule!8630 token!511))) (inv!52157 (transformation!5810 (rule!8630 token!511))) e!2270857))))

(assert (=> b!3667525 (= e!2270849 (and tp!1116373 tp!1116376))))

(declare-fun b!3667526 () Bool)

(assert (=> b!3667526 (= e!2270856 (= (rule!8630 (_1!22408 lt!1277267)) lt!1277228))))

(declare-fun b!3667527 () Bool)

(declare-fun Unit!56150 () Unit!56136)

(assert (=> b!3667527 (= e!2270822 Unit!56150)))

(declare-fun b!3667528 () Bool)

(assert (=> b!3667528 (= e!2270838 (not e!2270832))))

(declare-fun res!1489187 () Bool)

(assert (=> b!3667528 (=> res!1489187 e!2270832)))

(assert (=> b!3667528 (= res!1489187 (not (matchR!5138 (regex!5810 rule!403) lt!1277236)))))

(declare-fun ruleValid!2074 (LexerInterface!5399 Rule!11420) Bool)

(assert (=> b!3667528 (ruleValid!2074 thiss!23823 rule!403)))

(declare-fun lt!1277246 () Unit!56136)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1228 (LexerInterface!5399 Rule!11420 List!38803) Unit!56136)

(assert (=> b!3667528 (= lt!1277246 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1228 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3667529 (= e!2270857 (and tp!1116374 tp!1116362))))

(declare-fun bm!265442 () Bool)

(declare-fun call!265444 () List!38802)

(assert (=> bm!265442 (= call!265445 (contains!7688 call!265444 lt!1277262))))

(declare-fun b!3667530 () Bool)

(declare-fun res!1489202 () Bool)

(assert (=> b!3667530 (=> res!1489202 e!2270858)))

(assert (=> b!3667530 (= res!1489202 (not (contains!7688 (usedCharacters!1022 (regex!5810 anOtherTypeRule!33)) lt!1277262)))))

(declare-fun b!3667531 () Bool)

(declare-fun res!1489201 () Bool)

(assert (=> b!3667531 (=> (not res!1489201) (not e!2270829))))

(declare-fun isEmpty!22951 (List!38803) Bool)

(assert (=> b!3667531 (= res!1489201 (not (isEmpty!22951 rules!3307)))))

(declare-fun b!3667532 () Bool)

(assert (=> b!3667532 (= e!2270844 e!2270854)))

(declare-fun lt!1277245 () Unit!56136)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!118 (List!38802 List!38802 List!38802 List!38802) Unit!56136)

(assert (=> b!3667532 (= lt!1277245 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!118 lt!1277236 suffix!1395 lt!1277230 lt!1277255))))

(assert (=> b!3667532 (contains!7688 lt!1277230 lt!1277262)))

(declare-fun c!634075 () Bool)

(assert (=> b!3667532 (= c!634075 (isSeparator!5810 rule!403))))

(declare-fun b!3667533 () Bool)

(declare-fun res!1489200 () Bool)

(assert (=> b!3667533 (=> (not res!1489200) (not e!2270838))))

(assert (=> b!3667533 (= res!1489200 (= (rule!8630 token!511) rule!403))))

(declare-fun b!3667534 () Bool)

(declare-fun e!2270837 () Bool)

(declare-fun tp!1116366 () Bool)

(assert (=> b!3667534 (= e!2270837 (and e!2270826 tp!1116366))))

(declare-fun b!3667535 () Bool)

(declare-fun Unit!56151 () Unit!56136)

(assert (=> b!3667535 (= e!2270823 Unit!56151)))

(declare-fun b!3667536 () Bool)

(declare-fun res!1489199 () Bool)

(assert (=> b!3667536 (=> (not res!1489199) (not e!2270829))))

(declare-fun rulesInvariant!4796 (LexerInterface!5399 List!38803) Bool)

(assert (=> b!3667536 (= res!1489199 (rulesInvariant!4796 thiss!23823 rules!3307))))

(declare-fun bm!265443 () Bool)

(assert (=> bm!265443 (= call!265444 (usedCharacters!1022 (regex!5810 (rule!8630 (_1!22408 lt!1277267)))))))

(declare-fun b!3667537 () Bool)

(assert (=> b!3667537 (= e!2270850 e!2270835)))

(declare-fun res!1489194 () Bool)

(assert (=> b!3667537 (=> res!1489194 e!2270835)))

(assert (=> b!3667537 (= res!1489194 (= (rule!8630 (_1!22408 lt!1277267)) (rule!8630 token!511)))))

(assert (=> b!3667537 (= lt!1277230 lt!1277236)))

(declare-fun lt!1277274 () Unit!56136)

(declare-fun lemmaIsPrefixSameLengthThenSameList!635 (List!38802 List!38802 List!38802) Unit!56136)

(assert (=> b!3667537 (= lt!1277274 (lemmaIsPrefixSameLengthThenSameList!635 lt!1277230 lt!1277236 lt!1277255))))

(declare-fun lt!1277264 () Unit!56136)

(assert (=> b!3667537 (= lt!1277264 e!2270822)))

(declare-fun c!634074 () Bool)

(declare-fun lt!1277251 () Int)

(assert (=> b!3667537 (= c!634074 (< lt!1277257 lt!1277251))))

(declare-fun lt!1277232 () Unit!56136)

(assert (=> b!3667537 (= lt!1277232 e!2270844)))

(declare-fun c!634072 () Bool)

(assert (=> b!3667537 (= c!634072 (> lt!1277257 lt!1277251))))

(assert (=> b!3667537 (= lt!1277251 (size!29558 lt!1277243))))

(declare-fun lt!1277256 () Unit!56136)

(assert (=> b!3667537 (= lt!1277256 e!2270834)))

(declare-fun c!634070 () Bool)

(assert (=> b!3667537 (= c!634070 (isSeparator!5810 rule!403))))

(declare-fun lt!1277273 () Unit!56136)

(assert (=> b!3667537 (= lt!1277273 e!2270836)))

(declare-fun c!634069 () Bool)

(declare-fun lt!1277277 () List!38802)

(assert (=> b!3667537 (= c!634069 (not (contains!7688 lt!1277277 lt!1277233)))))

(declare-fun head!7846 (List!38802) C!21324)

(assert (=> b!3667537 (= lt!1277233 (head!7846 lt!1277230))))

(declare-fun b!3667538 () Bool)

(assert (=> b!3667538 (= e!2270832 e!2270858)))

(declare-fun res!1489206 () Bool)

(assert (=> b!3667538 (=> res!1489206 e!2270858)))

(assert (=> b!3667538 (= res!1489206 (contains!7688 lt!1277277 lt!1277262))))

(assert (=> b!3667538 (= lt!1277262 (head!7846 suffix!1395))))

(assert (=> b!3667538 (= lt!1277277 (usedCharacters!1022 (regex!5810 rule!403)))))

(declare-fun b!3667494 () Bool)

(declare-fun res!1489195 () Bool)

(assert (=> b!3667494 (=> (not res!1489195) (not e!2270829))))

(assert (=> b!3667494 (= res!1489195 (contains!7687 rules!3307 anOtherTypeRule!33))))

(declare-fun res!1489203 () Bool)

(assert (=> start!343610 (=> (not res!1489203) (not e!2270829))))

(get-info :version)

(assert (=> start!343610 (= res!1489203 ((_ is Lexer!5397) thiss!23823))))

(assert (=> start!343610 e!2270829))

(assert (=> start!343610 e!2270837))

(assert (=> start!343610 e!2270841))

(assert (=> start!343610 true))

(declare-fun inv!52158 (Token!10986) Bool)

(assert (=> start!343610 (and (inv!52158 token!511) e!2270852)))

(assert (=> start!343610 e!2270828))

(assert (=> start!343610 e!2270840))

(assert (= (and start!343610 res!1489203) b!3667531))

(assert (= (and b!3667531 res!1489201) b!3667536))

(assert (= (and b!3667536 res!1489199) b!3667523))

(assert (= (and b!3667523 res!1489205) b!3667494))

(assert (= (and b!3667494 res!1489195) b!3667522))

(assert (= (and b!3667522 res!1489208) b!3667496))

(assert (= (and b!3667496 res!1489207) b!3667499))

(assert (= (and b!3667499 res!1489197) b!3667492))

(assert (= (and b!3667492 res!1489196) b!3667533))

(assert (= (and b!3667533 res!1489200) b!3667528))

(assert (= (and b!3667528 (not res!1489187)) b!3667511))

(assert (= (and b!3667511 (not res!1489191)) b!3667538))

(assert (= (and b!3667538 (not res!1489206)) b!3667530))

(assert (= (and b!3667530 (not res!1489202)) b!3667519))

(assert (= (and b!3667519 (not res!1489204)) b!3667493))

(assert (= (and b!3667493 res!1489198) b!3667495))

(assert (= (and b!3667495 res!1489193) b!3667526))

(assert (= (and b!3667493 (not res!1489192)) b!3667510))

(assert (= (and b!3667510 (not res!1489189)) b!3667505))

(assert (= (and b!3667505 (not res!1489209)) b!3667516))

(assert (= (and b!3667516 (not res!1489188)) b!3667537))

(assert (= (and b!3667537 c!634069) b!3667507))

(assert (= (and b!3667537 (not c!634069)) b!3667503))

(assert (= (and b!3667537 c!634070) b!3667521))

(assert (= (and b!3667537 (not c!634070)) b!3667491))

(assert (= (and b!3667521 c!634068) b!3667515))

(assert (= (and b!3667521 (not c!634068)) b!3667512))

(assert (= (and b!3667491 c!634071) b!3667498))

(assert (= (and b!3667491 (not c!634071)) b!3667535))

(assert (= (or b!3667515 b!3667498) bm!265439))

(assert (= (or b!3667515 b!3667498) bm!265438))

(assert (= (or b!3667515 b!3667498) bm!265440))

(assert (= (and b!3667537 c!634072) b!3667532))

(assert (= (and b!3667537 (not c!634072)) b!3667504))

(assert (= (and b!3667532 c!634075) b!3667502))

(assert (= (and b!3667532 (not c!634075)) b!3667508))

(assert (= (or b!3667502 b!3667508) bm!265441))

(assert (= (or b!3667502 b!3667508) bm!265443))

(assert (= (or b!3667502 b!3667508) bm!265442))

(assert (= (and b!3667537 c!634074) b!3667488))

(assert (= (and b!3667537 (not c!634074)) b!3667527))

(assert (= (and b!3667537 (not res!1489194)) b!3667489))

(assert (= (and b!3667489 c!634073) b!3667509))

(assert (= (and b!3667489 (not c!634073)) b!3667506))

(assert (= (and b!3667509 res!1489190) b!3667514))

(assert (= (and b!3667489 (not res!1489210)) b!3667497))

(assert (= b!3667517 b!3667501))

(assert (= b!3667534 b!3667517))

(assert (= (and start!343610 ((_ is Cons!38679) rules!3307)) b!3667534))

(assert (= (and start!343610 ((_ is Cons!38678) suffix!1395)) b!3667500))

(assert (= b!3667524 b!3667529))

(assert (= b!3667518 b!3667524))

(assert (= start!343610 b!3667518))

(assert (= b!3667490 b!3667513))

(assert (= start!343610 b!3667490))

(assert (= b!3667520 b!3667525))

(assert (= start!343610 b!3667520))

(declare-fun m!4175531 () Bool)

(assert (=> b!3667537 m!4175531))

(declare-fun m!4175533 () Bool)

(assert (=> b!3667537 m!4175533))

(declare-fun m!4175535 () Bool)

(assert (=> b!3667537 m!4175535))

(declare-fun m!4175537 () Bool)

(assert (=> b!3667537 m!4175537))

(declare-fun m!4175539 () Bool)

(assert (=> b!3667497 m!4175539))

(declare-fun m!4175541 () Bool)

(assert (=> b!3667519 m!4175541))

(declare-fun m!4175543 () Bool)

(assert (=> start!343610 m!4175543))

(declare-fun m!4175545 () Bool)

(assert (=> bm!265442 m!4175545))

(declare-fun m!4175547 () Bool)

(assert (=> b!3667531 m!4175547))

(declare-fun m!4175549 () Bool)

(assert (=> b!3667520 m!4175549))

(declare-fun m!4175551 () Bool)

(assert (=> b!3667520 m!4175551))

(declare-fun m!4175553 () Bool)

(assert (=> b!3667510 m!4175553))

(declare-fun m!4175555 () Bool)

(assert (=> b!3667516 m!4175555))

(declare-fun m!4175557 () Bool)

(assert (=> b!3667516 m!4175557))

(declare-fun m!4175559 () Bool)

(assert (=> b!3667516 m!4175559))

(declare-fun m!4175561 () Bool)

(assert (=> b!3667516 m!4175561))

(declare-fun m!4175563 () Bool)

(assert (=> b!3667516 m!4175563))

(declare-fun m!4175565 () Bool)

(assert (=> b!3667516 m!4175565))

(declare-fun m!4175567 () Bool)

(assert (=> b!3667516 m!4175567))

(assert (=> b!3667516 m!4175561))

(declare-fun m!4175569 () Bool)

(assert (=> b!3667508 m!4175569))

(declare-fun m!4175571 () Bool)

(assert (=> b!3667499 m!4175571))

(declare-fun m!4175573 () Bool)

(assert (=> b!3667536 m!4175573))

(declare-fun m!4175575 () Bool)

(assert (=> b!3667494 m!4175575))

(declare-fun m!4175577 () Bool)

(assert (=> b!3667505 m!4175577))

(declare-fun m!4175579 () Bool)

(assert (=> b!3667505 m!4175579))

(declare-fun m!4175581 () Bool)

(assert (=> b!3667505 m!4175581))

(declare-fun m!4175583 () Bool)

(assert (=> b!3667505 m!4175583))

(assert (=> b!3667505 m!4175581))

(declare-fun m!4175585 () Bool)

(assert (=> b!3667505 m!4175585))

(declare-fun m!4175587 () Bool)

(assert (=> b!3667505 m!4175587))

(declare-fun m!4175589 () Bool)

(assert (=> b!3667502 m!4175589))

(declare-fun m!4175591 () Bool)

(assert (=> b!3667488 m!4175591))

(declare-fun m!4175593 () Bool)

(assert (=> bm!265438 m!4175593))

(declare-fun m!4175595 () Bool)

(assert (=> bm!265440 m!4175595))

(declare-fun m!4175597 () Bool)

(assert (=> b!3667493 m!4175597))

(declare-fun m!4175599 () Bool)

(assert (=> b!3667493 m!4175599))

(declare-fun m!4175601 () Bool)

(assert (=> b!3667493 m!4175601))

(declare-fun m!4175603 () Bool)

(assert (=> b!3667493 m!4175603))

(declare-fun m!4175605 () Bool)

(assert (=> b!3667493 m!4175605))

(declare-fun m!4175607 () Bool)

(assert (=> b!3667493 m!4175607))

(declare-fun m!4175609 () Bool)

(assert (=> b!3667493 m!4175609))

(declare-fun m!4175611 () Bool)

(assert (=> b!3667493 m!4175611))

(declare-fun m!4175613 () Bool)

(assert (=> b!3667493 m!4175613))

(declare-fun m!4175615 () Bool)

(assert (=> b!3667493 m!4175615))

(declare-fun m!4175617 () Bool)

(assert (=> b!3667493 m!4175617))

(declare-fun m!4175619 () Bool)

(assert (=> b!3667493 m!4175619))

(declare-fun m!4175621 () Bool)

(assert (=> b!3667493 m!4175621))

(declare-fun m!4175623 () Bool)

(assert (=> b!3667493 m!4175623))

(assert (=> b!3667493 m!4175615))

(declare-fun m!4175625 () Bool)

(assert (=> b!3667493 m!4175625))

(declare-fun m!4175627 () Bool)

(assert (=> bm!265441 m!4175627))

(declare-fun m!4175629 () Bool)

(assert (=> b!3667489 m!4175629))

(declare-fun m!4175631 () Bool)

(assert (=> b!3667489 m!4175631))

(declare-fun m!4175633 () Bool)

(assert (=> b!3667518 m!4175633))

(declare-fun m!4175635 () Bool)

(assert (=> b!3667524 m!4175635))

(declare-fun m!4175637 () Bool)

(assert (=> b!3667524 m!4175637))

(declare-fun m!4175639 () Bool)

(assert (=> b!3667538 m!4175639))

(declare-fun m!4175641 () Bool)

(assert (=> b!3667538 m!4175641))

(declare-fun m!4175643 () Bool)

(assert (=> b!3667538 m!4175643))

(declare-fun m!4175645 () Bool)

(assert (=> b!3667490 m!4175645))

(declare-fun m!4175647 () Bool)

(assert (=> b!3667490 m!4175647))

(assert (=> bm!265443 m!4175593))

(assert (=> b!3667495 m!4175599))

(assert (=> b!3667495 m!4175599))

(declare-fun m!4175649 () Bool)

(assert (=> b!3667495 m!4175649))

(assert (=> b!3667495 m!4175649))

(declare-fun m!4175651 () Bool)

(assert (=> b!3667495 m!4175651))

(declare-fun m!4175653 () Bool)

(assert (=> b!3667495 m!4175653))

(declare-fun m!4175655 () Bool)

(assert (=> b!3667498 m!4175655))

(declare-fun m!4175657 () Bool)

(assert (=> b!3667528 m!4175657))

(declare-fun m!4175659 () Bool)

(assert (=> b!3667528 m!4175659))

(declare-fun m!4175661 () Bool)

(assert (=> b!3667528 m!4175661))

(declare-fun m!4175663 () Bool)

(assert (=> b!3667509 m!4175663))

(declare-fun m!4175665 () Bool)

(assert (=> b!3667509 m!4175665))

(declare-fun m!4175667 () Bool)

(assert (=> b!3667509 m!4175667))

(declare-fun m!4175669 () Bool)

(assert (=> b!3667509 m!4175669))

(assert (=> b!3667509 m!4175665))

(declare-fun m!4175671 () Bool)

(assert (=> b!3667509 m!4175671))

(declare-fun m!4175673 () Bool)

(assert (=> b!3667511 m!4175673))

(declare-fun m!4175675 () Bool)

(assert (=> b!3667515 m!4175675))

(declare-fun m!4175677 () Bool)

(assert (=> bm!265439 m!4175677))

(declare-fun m!4175679 () Bool)

(assert (=> b!3667507 m!4175679))

(declare-fun m!4175681 () Bool)

(assert (=> b!3667492 m!4175681))

(declare-fun m!4175683 () Bool)

(assert (=> b!3667523 m!4175683))

(declare-fun m!4175685 () Bool)

(assert (=> b!3667496 m!4175685))

(declare-fun m!4175687 () Bool)

(assert (=> b!3667496 m!4175687))

(declare-fun m!4175689 () Bool)

(assert (=> b!3667496 m!4175689))

(declare-fun m!4175691 () Bool)

(assert (=> b!3667496 m!4175691))

(declare-fun m!4175693 () Bool)

(assert (=> b!3667532 m!4175693))

(declare-fun m!4175695 () Bool)

(assert (=> b!3667532 m!4175695))

(declare-fun m!4175697 () Bool)

(assert (=> b!3667517 m!4175697))

(declare-fun m!4175699 () Bool)

(assert (=> b!3667517 m!4175699))

(declare-fun m!4175701 () Bool)

(assert (=> b!3667530 m!4175701))

(assert (=> b!3667530 m!4175701))

(declare-fun m!4175703 () Bool)

(assert (=> b!3667530 m!4175703))

(check-sat (not b!3667538) (not bm!265441) (not b!3667497) b_and!272871 (not b!3667530) (not b!3667505) (not bm!265438) (not b!3667492) (not b!3667524) (not b!3667507) b_and!272873 (not b!3667519) (not b!3667509) (not b_next!97549) (not b_next!97551) (not b!3667531) (not bm!265442) (not b!3667502) (not b!3667498) (not b!3667496) (not b_next!97547) (not b!3667537) (not b!3667511) (not b_next!97545) b_and!272859 (not b!3667488) (not b!3667494) (not b!3667523) (not b!3667510) (not b!3667500) (not b!3667508) (not b!3667490) (not b!3667520) (not b!3667518) tp_is_empty!18221 (not b!3667528) (not b_next!97553) (not b!3667536) b_and!272863 (not b!3667489) (not b_next!97555) (not bm!265443) (not b!3667532) (not b!3667516) (not bm!265439) b_and!272869 (not b!3667495) b_and!272865 (not bm!265440) (not b_next!97559) b_and!272867 (not start!343610) (not b_next!97557) (not b!3667517) (not b!3667534) (not b!3667499) (not b!3667515) b_and!272861 (not b!3667493))
(check-sat b_and!272873 (not b_next!97547) b_and!272871 (not b_next!97553) b_and!272863 (not b_next!97555) (not b_next!97557) b_and!272861 (not b_next!97549) (not b_next!97551) (not b_next!97545) b_and!272859 b_and!272869 b_and!272865 (not b_next!97559) b_and!272867)
