; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!343410 () Bool)

(assert start!343410)

(declare-fun b!3666052 () Bool)

(declare-fun b_free!96769 () Bool)

(declare-fun b_next!97473 () Bool)

(assert (=> b!3666052 (= b_free!96769 (not b_next!97473))))

(declare-fun tp!1116087 () Bool)

(declare-fun b_and!272643 () Bool)

(assert (=> b!3666052 (= tp!1116087 b_and!272643)))

(declare-fun b_free!96771 () Bool)

(declare-fun b_next!97475 () Bool)

(assert (=> b!3666052 (= b_free!96771 (not b_next!97475))))

(declare-fun tp!1116081 () Bool)

(declare-fun b_and!272645 () Bool)

(assert (=> b!3666052 (= tp!1116081 b_and!272645)))

(declare-fun b!3666059 () Bool)

(declare-fun b_free!96773 () Bool)

(declare-fun b_next!97477 () Bool)

(assert (=> b!3666059 (= b_free!96773 (not b_next!97477))))

(declare-fun tp!1116088 () Bool)

(declare-fun b_and!272647 () Bool)

(assert (=> b!3666059 (= tp!1116088 b_and!272647)))

(declare-fun b_free!96775 () Bool)

(declare-fun b_next!97479 () Bool)

(assert (=> b!3666059 (= b_free!96775 (not b_next!97479))))

(declare-fun tp!1116091 () Bool)

(declare-fun b_and!272649 () Bool)

(assert (=> b!3666059 (= tp!1116091 b_and!272649)))

(declare-fun b!3666063 () Bool)

(declare-fun b_free!96777 () Bool)

(declare-fun b_next!97481 () Bool)

(assert (=> b!3666063 (= b_free!96777 (not b_next!97481))))

(declare-fun tp!1116084 () Bool)

(declare-fun b_and!272651 () Bool)

(assert (=> b!3666063 (= tp!1116084 b_and!272651)))

(declare-fun b_free!96779 () Bool)

(declare-fun b_next!97483 () Bool)

(assert (=> b!3666063 (= b_free!96779 (not b_next!97483))))

(declare-fun tp!1116085 () Bool)

(declare-fun b_and!272653 () Bool)

(assert (=> b!3666063 (= tp!1116085 b_and!272653)))

(declare-fun b!3666054 () Bool)

(declare-fun b_free!96781 () Bool)

(declare-fun b_next!97485 () Bool)

(assert (=> b!3666054 (= b_free!96781 (not b_next!97485))))

(declare-fun tp!1116094 () Bool)

(declare-fun b_and!272655 () Bool)

(assert (=> b!3666054 (= tp!1116094 b_and!272655)))

(declare-fun b_free!96783 () Bool)

(declare-fun b_next!97487 () Bool)

(assert (=> b!3666054 (= b_free!96783 (not b_next!97487))))

(declare-fun tp!1116092 () Bool)

(declare-fun b_and!272657 () Bool)

(assert (=> b!3666054 (= tp!1116092 b_and!272657)))

(declare-fun b!3666035 () Bool)

(declare-datatypes ((Unit!56066 0))(
  ( (Unit!56067) )
))
(declare-fun e!2269919 () Unit!56066)

(declare-fun Unit!56068 () Unit!56066)

(assert (=> b!3666035 (= e!2269919 Unit!56068)))

(declare-fun lt!1276261 () Unit!56066)

(declare-datatypes ((C!21316 0))(
  ( (C!21317 (val!12706 Int)) )
))
(declare-datatypes ((List!38785 0))(
  ( (Nil!38661) (Cons!38661 (h!44081 C!21316) (t!299180 List!38785)) )
))
(declare-fun lt!1276266 () List!38785)

(declare-datatypes ((Regex!10565 0))(
  ( (ElementMatch!10565 (c!633800 C!21316)) (Concat!16601 (regOne!21642 Regex!10565) (regTwo!21642 Regex!10565)) (EmptyExpr!10565) (Star!10565 (reg!10894 Regex!10565)) (EmptyLang!10565) (Union!10565 (regOne!21643 Regex!10565) (regTwo!21643 Regex!10565)) )
))
(declare-datatypes ((String!43513 0))(
  ( (String!43514 (value!185905 String)) )
))
(declare-datatypes ((List!38786 0))(
  ( (Nil!38662) (Cons!38662 (h!44082 (_ BitVec 16)) (t!299181 List!38786)) )
))
(declare-datatypes ((TokenValue!6036 0))(
  ( (FloatLiteralValue!12072 (text!42697 List!38786)) (TokenValueExt!6035 (__x!24289 Int)) (Broken!30180 (value!185906 List!38786)) (Object!6159) (End!6036) (Def!6036) (Underscore!6036) (Match!6036) (Else!6036) (Error!6036) (Case!6036) (If!6036) (Extends!6036) (Abstract!6036) (Class!6036) (Val!6036) (DelimiterValue!12072 (del!6096 List!38786)) (KeywordValue!6042 (value!185907 List!38786)) (CommentValue!12072 (value!185908 List!38786)) (WhitespaceValue!12072 (value!185909 List!38786)) (IndentationValue!6036 (value!185910 List!38786)) (String!43515) (Int32!6036) (Broken!30181 (value!185911 List!38786)) (Boolean!6037) (Unit!56069) (OperatorValue!6039 (op!6096 List!38786)) (IdentifierValue!12072 (value!185912 List!38786)) (IdentifierValue!12073 (value!185913 List!38786)) (WhitespaceValue!12073 (value!185914 List!38786)) (True!12072) (False!12072) (Broken!30182 (value!185915 List!38786)) (Broken!30183 (value!185916 List!38786)) (True!12073) (RightBrace!6036) (RightBracket!6036) (Colon!6036) (Null!6036) (Comma!6036) (LeftBracket!6036) (False!12073) (LeftBrace!6036) (ImaginaryLiteralValue!6036 (text!42698 List!38786)) (StringLiteralValue!18108 (value!185917 List!38786)) (EOFValue!6036 (value!185918 List!38786)) (IdentValue!6036 (value!185919 List!38786)) (DelimiterValue!12073 (value!185920 List!38786)) (DedentValue!6036 (value!185921 List!38786)) (NewLineValue!6036 (value!185922 List!38786)) (IntegerValue!18108 (value!185923 (_ BitVec 32)) (text!42699 List!38786)) (IntegerValue!18109 (value!185924 Int) (text!42700 List!38786)) (Times!6036) (Or!6036) (Equal!6036) (Minus!6036) (Broken!30184 (value!185925 List!38786)) (And!6036) (Div!6036) (LessEqual!6036) (Mod!6036) (Concat!16602) (Not!6036) (Plus!6036) (SpaceValue!6036 (value!185926 List!38786)) (IntegerValue!18110 (value!185927 Int) (text!42701 List!38786)) (StringLiteralValue!18109 (text!42702 List!38786)) (FloatLiteralValue!12073 (text!42703 List!38786)) (BytesLiteralValue!6036 (value!185928 List!38786)) (CommentValue!12073 (value!185929 List!38786)) (StringLiteralValue!18110 (value!185930 List!38786)) (ErrorTokenValue!6036 (msg!6097 List!38786)) )
))
(declare-datatypes ((IArray!23655 0))(
  ( (IArray!23656 (innerList!11885 List!38785)) )
))
(declare-datatypes ((Conc!11825 0))(
  ( (Node!11825 (left!30174 Conc!11825) (right!30504 Conc!11825) (csize!23880 Int) (cheight!12036 Int)) (Leaf!18339 (xs!15027 IArray!23655) (csize!23881 Int)) (Empty!11825) )
))
(declare-datatypes ((BalanceConc!23264 0))(
  ( (BalanceConc!23265 (c!633801 Conc!11825)) )
))
(declare-datatypes ((TokenValueInjection!11500 0))(
  ( (TokenValueInjection!11501 (toValue!8102 Int) (toChars!7961 Int)) )
))
(declare-datatypes ((Rule!11412 0))(
  ( (Rule!11413 (regex!5806 Regex!10565) (tag!6590 String!43513) (isSeparator!5806 Bool) (transformation!5806 TokenValueInjection!11500)) )
))
(declare-fun rule!403 () Rule!11412)

(declare-fun lt!1276245 () C!21316)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!754 (Regex!10565 List!38785 C!21316) Unit!56066)

(assert (=> b!3666035 (= lt!1276261 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!754 (regex!5806 rule!403) lt!1276266 lt!1276245))))

(assert (=> b!3666035 false))

(declare-fun b!3666036 () Bool)

(declare-fun res!1488506 () Bool)

(declare-fun e!2269910 () Bool)

(assert (=> b!3666036 (=> res!1488506 e!2269910)))

(declare-fun anOtherTypeRule!33 () Rule!11412)

(declare-fun lt!1276232 () C!21316)

(declare-fun contains!7679 (List!38785 C!21316) Bool)

(declare-fun usedCharacters!1018 (Regex!10565) List!38785)

(assert (=> b!3666036 (= res!1488506 (not (contains!7679 (usedCharacters!1018 (regex!5806 anOtherTypeRule!33)) lt!1276232)))))

(declare-fun b!3666037 () Bool)

(declare-fun res!1488495 () Bool)

(declare-fun e!2269908 () Bool)

(assert (=> b!3666037 (=> (not res!1488495) (not e!2269908))))

(declare-datatypes ((List!38787 0))(
  ( (Nil!38663) (Cons!38663 (h!44083 Rule!11412) (t!299182 List!38787)) )
))
(declare-fun rules!3307 () List!38787)

(declare-fun contains!7680 (List!38787 Rule!11412) Bool)

(assert (=> b!3666037 (= res!1488495 (contains!7680 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3666038 () Bool)

(declare-fun e!2269909 () Bool)

(declare-fun e!2269918 () Bool)

(declare-fun tp!1116086 () Bool)

(assert (=> b!3666038 (= e!2269909 (and e!2269918 tp!1116086))))

(declare-fun b!3666039 () Bool)

(assert (=> b!3666039 false))

(declare-fun lt!1276260 () Unit!56066)

(declare-fun call!265312 () Unit!56066)

(assert (=> b!3666039 (= lt!1276260 call!265312)))

(declare-fun call!265315 () Bool)

(assert (=> b!3666039 (not call!265315)))

(declare-datatypes ((LexerInterface!5395 0))(
  ( (LexerInterfaceExt!5392 (__x!24290 Int)) (Lexer!5393) )
))
(declare-fun thiss!23823 () LexerInterface!5395)

(declare-datatypes ((Token!10978 0))(
  ( (Token!10979 (value!185931 TokenValue!6036) (rule!8624 Rule!11412) (size!29543 Int) (originalCharacters!6520 List!38785)) )
))
(declare-datatypes ((tuple2!38532 0))(
  ( (tuple2!38533 (_1!22400 Token!10978) (_2!22400 List!38785)) )
))
(declare-fun lt!1276230 () tuple2!38532)

(declare-fun lt!1276247 () Unit!56066)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!334 (LexerInterface!5395 List!38787 List!38787 Rule!11412 Rule!11412 C!21316) Unit!56066)

(assert (=> b!3666039 (= lt!1276247 (lemmaSepRuleNotContainsCharContainedInANonSepRule!334 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8624 (_1!22400 lt!1276230)) lt!1276232))))

(declare-fun e!2269916 () Unit!56066)

(declare-fun Unit!56070 () Unit!56066)

(assert (=> b!3666039 (= e!2269916 Unit!56070)))

(declare-fun b!3666040 () Bool)

(declare-fun res!1488509 () Bool)

(assert (=> b!3666040 (=> (not res!1488509) (not e!2269908))))

(assert (=> b!3666040 (= res!1488509 (contains!7680 rules!3307 rule!403))))

(declare-fun bm!265306 () Bool)

(declare-fun call!265311 () List!38785)

(assert (=> bm!265306 (= call!265315 (contains!7679 call!265311 lt!1276232))))

(declare-fun bm!265307 () Bool)

(declare-fun call!265313 () List!38785)

(assert (=> bm!265307 (= call!265313 (usedCharacters!1018 (regex!5806 (rule!8624 (_1!22400 lt!1276230)))))))

(declare-fun b!3666042 () Bool)

(declare-fun e!2269895 () Bool)

(declare-fun e!2269928 () Bool)

(assert (=> b!3666042 (= e!2269895 e!2269928)))

(declare-fun res!1488491 () Bool)

(assert (=> b!3666042 (=> res!1488491 e!2269928)))

(declare-fun token!511 () Token!10978)

(assert (=> b!3666042 (= res!1488491 (= (rule!8624 (_1!22400 lt!1276230)) (rule!8624 token!511)))))

(declare-fun lt!1276254 () List!38785)

(assert (=> b!3666042 (= lt!1276254 lt!1276266)))

(declare-fun lt!1276250 () List!38785)

(declare-fun lt!1276217 () Unit!56066)

(declare-fun lemmaIsPrefixSameLengthThenSameList!631 (List!38785 List!38785 List!38785) Unit!56066)

(assert (=> b!3666042 (= lt!1276217 (lemmaIsPrefixSameLengthThenSameList!631 lt!1276254 lt!1276266 lt!1276250))))

(declare-fun lt!1276257 () Unit!56066)

(declare-fun e!2269922 () Unit!56066)

(assert (=> b!3666042 (= lt!1276257 e!2269922)))

(declare-fun c!633796 () Bool)

(declare-fun lt!1276256 () Int)

(declare-fun lt!1276262 () Int)

(assert (=> b!3666042 (= c!633796 (< lt!1276256 lt!1276262))))

(declare-fun lt!1276258 () Unit!56066)

(declare-fun e!2269904 () Unit!56066)

(assert (=> b!3666042 (= lt!1276258 e!2269904)))

(declare-fun c!633797 () Bool)

(assert (=> b!3666042 (= c!633797 (> lt!1276256 lt!1276262))))

(declare-fun lt!1276220 () BalanceConc!23264)

(declare-fun size!29544 (BalanceConc!23264) Int)

(assert (=> b!3666042 (= lt!1276262 (size!29544 lt!1276220))))

(declare-fun lt!1276229 () Unit!56066)

(declare-fun e!2269906 () Unit!56066)

(assert (=> b!3666042 (= lt!1276229 e!2269906)))

(declare-fun c!633798 () Bool)

(assert (=> b!3666042 (= c!633798 (isSeparator!5806 rule!403))))

(declare-fun lt!1276226 () Unit!56066)

(assert (=> b!3666042 (= lt!1276226 e!2269919)))

(declare-fun c!633793 () Bool)

(declare-fun lt!1276235 () List!38785)

(assert (=> b!3666042 (= c!633793 (not (contains!7679 lt!1276235 lt!1276245)))))

(declare-fun head!7840 (List!38785) C!21316)

(assert (=> b!3666042 (= lt!1276245 (head!7840 lt!1276254))))

(declare-fun b!3666043 () Bool)

(declare-fun Unit!56071 () Unit!56066)

(assert (=> b!3666043 (= e!2269922 Unit!56071)))

(declare-fun bm!265308 () Bool)

(declare-fun call!265314 () Bool)

(assert (=> bm!265308 (= call!265314 (contains!7679 call!265313 lt!1276245))))

(declare-fun b!3666044 () Bool)

(declare-fun e!2269902 () Bool)

(assert (=> b!3666044 (= e!2269902 e!2269910)))

(declare-fun res!1488497 () Bool)

(assert (=> b!3666044 (=> res!1488497 e!2269910)))

(assert (=> b!3666044 (= res!1488497 (contains!7679 lt!1276235 lt!1276232))))

(declare-fun suffix!1395 () List!38785)

(assert (=> b!3666044 (= lt!1276232 (head!7840 suffix!1395))))

(assert (=> b!3666044 (= lt!1276235 (usedCharacters!1018 (regex!5806 rule!403)))))

(declare-fun b!3666045 () Bool)

(declare-fun e!2269911 () Bool)

(declare-fun e!2269913 () Bool)

(declare-fun tp!1116089 () Bool)

(declare-fun inv!52136 (String!43513) Bool)

(declare-fun inv!52139 (TokenValueInjection!11500) Bool)

(assert (=> b!3666045 (= e!2269913 (and tp!1116089 (inv!52136 (tag!6590 anOtherTypeRule!33)) (inv!52139 (transformation!5806 anOtherTypeRule!33)) e!2269911))))

(declare-fun b!3666046 () Bool)

(declare-fun e!2269896 () Bool)

(assert (=> b!3666046 (= e!2269910 e!2269896)))

(declare-fun res!1488494 () Bool)

(assert (=> b!3666046 (=> res!1488494 e!2269896)))

(declare-fun isPrefix!3169 (List!38785 List!38785) Bool)

(assert (=> b!3666046 (= res!1488494 (not (isPrefix!3169 lt!1276254 lt!1276250)))))

(declare-fun ++!9622 (List!38785 List!38785) List!38785)

(assert (=> b!3666046 (isPrefix!3169 lt!1276254 (++!9622 lt!1276254 (_2!22400 lt!1276230)))))

(declare-fun lt!1276264 () Unit!56066)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2088 (List!38785 List!38785) Unit!56066)

(assert (=> b!3666046 (= lt!1276264 (lemmaConcatTwoListThenFirstIsPrefix!2088 lt!1276254 (_2!22400 lt!1276230)))))

(declare-fun lt!1276243 () BalanceConc!23264)

(declare-fun list!14352 (BalanceConc!23264) List!38785)

(assert (=> b!3666046 (= lt!1276254 (list!14352 lt!1276243))))

(declare-fun charsOf!3820 (Token!10978) BalanceConc!23264)

(assert (=> b!3666046 (= lt!1276243 (charsOf!3820 (_1!22400 lt!1276230)))))

(declare-fun e!2269912 () Bool)

(assert (=> b!3666046 e!2269912))

(declare-fun res!1488504 () Bool)

(assert (=> b!3666046 (=> (not res!1488504) (not e!2269912))))

(declare-datatypes ((Option!8240 0))(
  ( (None!8239) (Some!8239 (v!38139 Rule!11412)) )
))
(declare-fun lt!1276223 () Option!8240)

(declare-fun isDefined!6472 (Option!8240) Bool)

(assert (=> b!3666046 (= res!1488504 (isDefined!6472 lt!1276223))))

(declare-fun getRuleFromTag!1410 (LexerInterface!5395 List!38787 String!43513) Option!8240)

(assert (=> b!3666046 (= lt!1276223 (getRuleFromTag!1410 thiss!23823 rules!3307 (tag!6590 (rule!8624 (_1!22400 lt!1276230)))))))

(declare-fun lt!1276246 () Unit!56066)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1410 (LexerInterface!5395 List!38787 List!38785 Token!10978) Unit!56066)

(assert (=> b!3666046 (= lt!1276246 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1410 thiss!23823 rules!3307 lt!1276250 (_1!22400 lt!1276230)))))

(declare-datatypes ((Option!8241 0))(
  ( (None!8240) (Some!8240 (v!38140 tuple2!38532)) )
))
(declare-fun lt!1276239 () Option!8241)

(declare-fun get!12753 (Option!8241) tuple2!38532)

(assert (=> b!3666046 (= lt!1276230 (get!12753 lt!1276239))))

(declare-fun lt!1276251 () Unit!56066)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1073 (LexerInterface!5395 List!38787 List!38785 List!38785) Unit!56066)

(assert (=> b!3666046 (= lt!1276251 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1073 thiss!23823 rules!3307 lt!1276266 suffix!1395))))

(declare-fun maxPrefix!2929 (LexerInterface!5395 List!38787 List!38785) Option!8241)

(assert (=> b!3666046 (= lt!1276239 (maxPrefix!2929 thiss!23823 rules!3307 lt!1276250))))

(assert (=> b!3666046 (isPrefix!3169 lt!1276266 lt!1276250)))

(declare-fun lt!1276221 () Unit!56066)

(assert (=> b!3666046 (= lt!1276221 (lemmaConcatTwoListThenFirstIsPrefix!2088 lt!1276266 suffix!1395))))

(assert (=> b!3666046 (= lt!1276250 (++!9622 lt!1276266 suffix!1395))))

(declare-fun b!3666047 () Bool)

(declare-fun e!2269930 () Bool)

(assert (=> b!3666047 (= e!2269930 e!2269895)))

(declare-fun res!1488501 () Bool)

(assert (=> b!3666047 (=> res!1488501 e!2269895)))

(declare-fun lt!1276237 () List!38785)

(declare-fun lt!1276236 () Option!8241)

(assert (=> b!3666047 (= res!1488501 (or (not (= lt!1276237 (_2!22400 lt!1276230))) (not (= lt!1276236 (Some!8240 (tuple2!38533 (_1!22400 lt!1276230) lt!1276237))))))))

(assert (=> b!3666047 (= (_2!22400 lt!1276230) lt!1276237)))

(declare-fun lt!1276263 () Unit!56066)

(declare-fun lemmaSamePrefixThenSameSuffix!1496 (List!38785 List!38785 List!38785 List!38785 List!38785) Unit!56066)

(assert (=> b!3666047 (= lt!1276263 (lemmaSamePrefixThenSameSuffix!1496 lt!1276254 (_2!22400 lt!1276230) lt!1276254 lt!1276237 lt!1276250))))

(declare-fun getSuffix!1722 (List!38785 List!38785) List!38785)

(assert (=> b!3666047 (= lt!1276237 (getSuffix!1722 lt!1276250 lt!1276254))))

(declare-fun lt!1276240 () TokenValue!6036)

(declare-fun lt!1276252 () Int)

(assert (=> b!3666047 (= lt!1276236 (Some!8240 (tuple2!38533 (Token!10979 lt!1276240 (rule!8624 (_1!22400 lt!1276230)) lt!1276252 lt!1276254) (_2!22400 lt!1276230))))))

(declare-fun maxPrefixOneRule!2067 (LexerInterface!5395 Rule!11412 List!38785) Option!8241)

(assert (=> b!3666047 (= lt!1276236 (maxPrefixOneRule!2067 thiss!23823 (rule!8624 (_1!22400 lt!1276230)) lt!1276250))))

(declare-fun size!29545 (List!38785) Int)

(assert (=> b!3666047 (= lt!1276252 (size!29545 lt!1276254))))

(declare-fun apply!9308 (TokenValueInjection!11500 BalanceConc!23264) TokenValue!6036)

(declare-fun seqFromList!4355 (List!38785) BalanceConc!23264)

(assert (=> b!3666047 (= lt!1276240 (apply!9308 (transformation!5806 (rule!8624 (_1!22400 lt!1276230))) (seqFromList!4355 lt!1276254)))))

(declare-fun lt!1276248 () Unit!56066)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1123 (LexerInterface!5395 List!38787 List!38785 List!38785 List!38785 Rule!11412) Unit!56066)

(assert (=> b!3666047 (= lt!1276248 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1123 thiss!23823 rules!3307 lt!1276254 lt!1276250 (_2!22400 lt!1276230) (rule!8624 (_1!22400 lt!1276230))))))

(declare-fun b!3666048 () Bool)

(declare-fun Unit!56072 () Unit!56066)

(assert (=> b!3666048 (= e!2269922 Unit!56072)))

(declare-fun lt!1276249 () Unit!56066)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!348 (LexerInterface!5395 List!38787 Rule!11412 List!38785 List!38785 List!38785 Rule!11412) Unit!56066)

(assert (=> b!3666048 (= lt!1276249 (lemmaMaxPrefixOutputsMaxPrefix!348 thiss!23823 rules!3307 (rule!8624 (_1!22400 lt!1276230)) lt!1276254 lt!1276250 lt!1276266 rule!403))))

(assert (=> b!3666048 false))

(declare-fun b!3666049 () Bool)

(declare-fun res!1488487 () Bool)

(assert (=> b!3666049 (=> res!1488487 e!2269896)))

(declare-fun matchR!5134 (Regex!10565 List!38785) Bool)

(assert (=> b!3666049 (= res!1488487 (not (matchR!5134 (regex!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276254)))))

(declare-fun bm!265309 () Bool)

(assert (=> bm!265309 (= call!265312 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!754 (regex!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276254 lt!1276232))))

(declare-fun b!3666050 () Bool)

(declare-fun e!2269923 () Unit!56066)

(assert (=> b!3666050 (= e!2269906 e!2269923)))

(declare-fun c!633799 () Bool)

(assert (=> b!3666050 (= c!633799 (not (isSeparator!5806 (rule!8624 (_1!22400 lt!1276230)))))))

(declare-fun b!3666051 () Bool)

(declare-fun e!2269921 () Bool)

(assert (=> b!3666051 (= e!2269912 e!2269921)))

(declare-fun res!1488499 () Bool)

(assert (=> b!3666051 (=> (not res!1488499) (not e!2269921))))

(declare-fun lt!1276218 () Rule!11412)

(assert (=> b!3666051 (= res!1488499 (matchR!5134 (regex!5806 lt!1276218) (list!14352 (charsOf!3820 (_1!22400 lt!1276230)))))))

(declare-fun get!12754 (Option!8240) Rule!11412)

(assert (=> b!3666051 (= lt!1276218 (get!12754 lt!1276223))))

(declare-fun e!2269901 () Bool)

(assert (=> b!3666052 (= e!2269901 (and tp!1116087 tp!1116081))))

(declare-fun b!3666053 () Bool)

(declare-fun tp!1116093 () Bool)

(assert (=> b!3666053 (= e!2269918 (and tp!1116093 (inv!52136 (tag!6590 (h!44083 rules!3307))) (inv!52139 (transformation!5806 (h!44083 rules!3307))) e!2269901))))

(declare-fun e!2269905 () Bool)

(assert (=> b!3666054 (= e!2269905 (and tp!1116094 tp!1116092))))

(declare-fun b!3666055 () Bool)

(assert (=> b!3666055 (= e!2269921 (= (rule!8624 (_1!22400 lt!1276230)) lt!1276218))))

(declare-fun b!3666056 () Bool)

(declare-fun e!2269926 () Unit!56066)

(declare-fun Unit!56073 () Unit!56066)

(assert (=> b!3666056 (= e!2269926 Unit!56073)))

(declare-fun tp!1116082 () Bool)

(declare-fun e!2269899 () Bool)

(declare-fun b!3666057 () Bool)

(declare-fun e!2269920 () Bool)

(assert (=> b!3666057 (= e!2269899 (and tp!1116082 (inv!52136 (tag!6590 (rule!8624 token!511))) (inv!52139 (transformation!5806 (rule!8624 token!511))) e!2269920))))

(declare-fun b!3666058 () Bool)

(assert (=> b!3666058 (= e!2269906 e!2269926)))

(declare-fun c!633792 () Bool)

(assert (=> b!3666058 (= c!633792 (isSeparator!5806 (rule!8624 (_1!22400 lt!1276230))))))

(declare-fun bm!265310 () Bool)

(declare-fun call!265316 () Unit!56066)

(assert (=> bm!265310 (= call!265316 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!754 (regex!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276254 lt!1276245))))

(assert (=> b!3666059 (= e!2269911 (and tp!1116088 tp!1116091))))

(declare-fun b!3666060 () Bool)

(declare-fun res!1488502 () Bool)

(assert (=> b!3666060 (=> (not res!1488502) (not e!2269908))))

(declare-fun rulesInvariant!4792 (LexerInterface!5395 List!38787) Bool)

(assert (=> b!3666060 (= res!1488502 (rulesInvariant!4792 thiss!23823 rules!3307))))

(declare-fun b!3666061 () Bool)

(declare-fun e!2269897 () Bool)

(assert (=> b!3666061 (= e!2269897 false)))

(declare-fun b!3666062 () Bool)

(declare-fun e!2269903 () Unit!56066)

(declare-fun Unit!56074 () Unit!56066)

(assert (=> b!3666062 (= e!2269903 Unit!56074)))

(declare-fun lt!1276234 () Unit!56066)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!186 (List!38785) Unit!56066)

(assert (=> b!3666062 (= lt!1276234 (lemmaGetSuffixOnListWithItSelfIsEmpty!186 lt!1276266))))

(declare-fun isEmpty!22938 (List!38785) Bool)

(assert (=> b!3666062 (isEmpty!22938 (getSuffix!1722 lt!1276266 lt!1276266))))

(declare-fun lt!1276255 () Unit!56066)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!214 (LexerInterface!5395 List!38787 Rule!11412 List!38785 List!38785 Rule!11412) Unit!56066)

(assert (=> b!3666062 (= lt!1276255 (lemmaMaxPrefNoSmallerRuleMatches!214 thiss!23823 rules!3307 rule!403 lt!1276266 lt!1276266 (rule!8624 (_1!22400 lt!1276230))))))

(declare-fun res!1488493 () Bool)

(assert (=> b!3666062 (= res!1488493 (not (matchR!5134 (regex!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276266)))))

(assert (=> b!3666062 (=> (not res!1488493) (not e!2269897))))

(assert (=> b!3666062 e!2269897))

(assert (=> b!3666063 (= e!2269920 (and tp!1116084 tp!1116085))))

(declare-fun b!3666064 () Bool)

(declare-fun res!1488503 () Bool)

(assert (=> b!3666064 (=> (not res!1488503) (not e!2269908))))

(declare-fun isEmpty!22939 (List!38787) Bool)

(assert (=> b!3666064 (= res!1488503 (not (isEmpty!22939 rules!3307)))))

(declare-fun b!3666065 () Bool)

(declare-fun Unit!56075 () Unit!56066)

(assert (=> b!3666065 (= e!2269919 Unit!56075)))

(declare-fun b!3666066 () Bool)

(assert (=> b!3666066 false))

(declare-fun lt!1276265 () Unit!56066)

(assert (=> b!3666066 (= lt!1276265 call!265312)))

(assert (=> b!3666066 (not call!265315)))

(declare-fun lt!1276219 () Unit!56066)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!452 (LexerInterface!5395 List!38787 List!38787 Rule!11412 Rule!11412 C!21316) Unit!56066)

(assert (=> b!3666066 (= lt!1276219 (lemmaNonSepRuleNotContainsCharContainedInASepRule!452 thiss!23823 rules!3307 rules!3307 (rule!8624 (_1!22400 lt!1276230)) anOtherTypeRule!33 lt!1276232))))

(declare-fun Unit!56076 () Unit!56066)

(assert (=> b!3666066 (= e!2269916 Unit!56076)))

(declare-fun b!3666067 () Bool)

(assert (=> b!3666067 false))

(declare-fun lt!1276227 () Unit!56066)

(assert (=> b!3666067 (= lt!1276227 call!265316)))

(assert (=> b!3666067 (not call!265314)))

(declare-fun lt!1276242 () Unit!56066)

(assert (=> b!3666067 (= lt!1276242 (lemmaNonSepRuleNotContainsCharContainedInASepRule!452 thiss!23823 rules!3307 rules!3307 (rule!8624 (_1!22400 lt!1276230)) rule!403 lt!1276245))))

(declare-fun Unit!56077 () Unit!56066)

(assert (=> b!3666067 (= e!2269923 Unit!56077)))

(declare-fun b!3666068 () Bool)

(declare-fun e!2269917 () Bool)

(assert (=> b!3666068 (= e!2269917 (not e!2269902))))

(declare-fun res!1488490 () Bool)

(assert (=> b!3666068 (=> res!1488490 e!2269902)))

(assert (=> b!3666068 (= res!1488490 (not (matchR!5134 (regex!5806 rule!403) lt!1276266)))))

(declare-fun ruleValid!2070 (LexerInterface!5395 Rule!11412) Bool)

(assert (=> b!3666068 (ruleValid!2070 thiss!23823 rule!403)))

(declare-fun lt!1276222 () Unit!56066)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1224 (LexerInterface!5395 Rule!11412 List!38787) Unit!56066)

(assert (=> b!3666068 (= lt!1276222 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1224 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3666069 () Bool)

(declare-fun e!2269915 () Bool)

(declare-fun tp_is_empty!18213 () Bool)

(declare-fun tp!1116090 () Bool)

(assert (=> b!3666069 (= e!2269915 (and tp_is_empty!18213 tp!1116090))))

(declare-fun b!3666070 () Bool)

(assert (=> b!3666070 (= e!2269896 e!2269930)))

(declare-fun res!1488508 () Bool)

(assert (=> b!3666070 (=> res!1488508 e!2269930)))

(declare-fun lt!1276244 () TokenValue!6036)

(assert (=> b!3666070 (= res!1488508 (not (= lt!1276239 (Some!8240 (tuple2!38533 (Token!10979 lt!1276244 (rule!8624 (_1!22400 lt!1276230)) lt!1276256 lt!1276254) (_2!22400 lt!1276230))))))))

(assert (=> b!3666070 (= lt!1276256 (size!29544 lt!1276243))))

(assert (=> b!3666070 (= lt!1276244 (apply!9308 (transformation!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276243))))

(declare-fun lt!1276253 () Unit!56066)

(declare-fun lemmaCharactersSize!851 (Token!10978) Unit!56066)

(assert (=> b!3666070 (= lt!1276253 (lemmaCharactersSize!851 (_1!22400 lt!1276230)))))

(declare-fun lt!1276228 () Unit!56066)

(declare-fun lemmaEqSameImage!989 (TokenValueInjection!11500 BalanceConc!23264 BalanceConc!23264) Unit!56066)

(assert (=> b!3666070 (= lt!1276228 (lemmaEqSameImage!989 (transformation!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276243 (seqFromList!4355 (originalCharacters!6520 (_1!22400 lt!1276230)))))))

(declare-fun lt!1276259 () Unit!56066)

(declare-fun lemmaSemiInverse!1555 (TokenValueInjection!11500 BalanceConc!23264) Unit!56066)

(assert (=> b!3666070 (= lt!1276259 (lemmaSemiInverse!1555 (transformation!5806 (rule!8624 (_1!22400 lt!1276230))) lt!1276243))))

(declare-fun tp!1116080 () Bool)

(declare-fun b!3666071 () Bool)

(declare-fun e!2269929 () Bool)

(declare-fun inv!21 (TokenValue!6036) Bool)

(assert (=> b!3666071 (= e!2269929 (and (inv!21 (value!185931 token!511)) e!2269899 tp!1116080))))

(declare-fun b!3666072 () Bool)

(declare-fun e!2269898 () Bool)

(assert (=> b!3666072 (= e!2269898 e!2269917)))

(declare-fun res!1488492 () Bool)

(assert (=> b!3666072 (=> (not res!1488492) (not e!2269917))))

(declare-fun lt!1276224 () tuple2!38532)

(assert (=> b!3666072 (= res!1488492 (= (_1!22400 lt!1276224) token!511))))

(declare-fun lt!1276238 () Option!8241)

(assert (=> b!3666072 (= lt!1276224 (get!12753 lt!1276238))))

(declare-fun bm!265311 () Bool)

(assert (=> bm!265311 (= call!265311 (usedCharacters!1018 (regex!5806 (rule!8624 (_1!22400 lt!1276230)))))))

(declare-fun b!3666073 () Bool)

(declare-fun res!1488496 () Bool)

(assert (=> b!3666073 (=> (not res!1488496) (not e!2269917))))

(assert (=> b!3666073 (= res!1488496 (= (rule!8624 token!511) rule!403))))

(declare-fun b!3666074 () Bool)

(declare-fun Unit!56078 () Unit!56066)

(assert (=> b!3666074 (= e!2269904 Unit!56078)))

(declare-fun res!1488489 () Bool)

(assert (=> start!343410 (=> (not res!1488489) (not e!2269908))))

(get-info :version)

(assert (=> start!343410 (= res!1488489 ((_ is Lexer!5393) thiss!23823))))

(assert (=> start!343410 e!2269908))

(assert (=> start!343410 e!2269909))

(assert (=> start!343410 e!2269915))

(assert (=> start!343410 true))

(declare-fun inv!52140 (Token!10978) Bool)

(assert (=> start!343410 (and (inv!52140 token!511) e!2269929)))

(declare-fun e!2269900 () Bool)

(assert (=> start!343410 e!2269900))

(assert (=> start!343410 e!2269913))

(declare-fun b!3666041 () Bool)

(declare-fun res!1488488 () Bool)

(assert (=> b!3666041 (=> res!1488488 e!2269902)))

(assert (=> b!3666041 (= res!1488488 (isEmpty!22938 suffix!1395))))

(declare-fun b!3666075 () Bool)

(declare-fun tp!1116083 () Bool)

(assert (=> b!3666075 (= e!2269900 (and tp!1116083 (inv!52136 (tag!6590 rule!403)) (inv!52139 (transformation!5806 rule!403)) e!2269905))))

(declare-fun b!3666076 () Bool)

(declare-fun res!1488507 () Bool)

(assert (=> b!3666076 (=> res!1488507 e!2269910)))

(declare-fun sepAndNonSepRulesDisjointChars!1974 (List!38787 List!38787) Bool)

(assert (=> b!3666076 (= res!1488507 (not (sepAndNonSepRulesDisjointChars!1974 rules!3307 rules!3307)))))

(declare-fun b!3666077 () Bool)

(declare-fun res!1488505 () Bool)

(assert (=> b!3666077 (=> (not res!1488505) (not e!2269917))))

(assert (=> b!3666077 (= res!1488505 (isEmpty!22938 (_2!22400 lt!1276224)))))

(declare-fun b!3666078 () Bool)

(assert (=> b!3666078 (= e!2269908 e!2269898)))

(declare-fun res!1488500 () Bool)

(assert (=> b!3666078 (=> (not res!1488500) (not e!2269898))))

(declare-fun isDefined!6473 (Option!8241) Bool)

(assert (=> b!3666078 (= res!1488500 (isDefined!6473 lt!1276238))))

(assert (=> b!3666078 (= lt!1276238 (maxPrefix!2929 thiss!23823 rules!3307 lt!1276266))))

(assert (=> b!3666078 (= lt!1276266 (list!14352 lt!1276220))))

(assert (=> b!3666078 (= lt!1276220 (charsOf!3820 token!511))))

(declare-fun b!3666079 () Bool)

(assert (=> b!3666079 (= e!2269904 e!2269916)))

(declare-fun lt!1276241 () Unit!56066)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!114 (List!38785 List!38785 List!38785 List!38785) Unit!56066)

(assert (=> b!3666079 (= lt!1276241 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!114 lt!1276266 suffix!1395 lt!1276254 lt!1276250))))

(assert (=> b!3666079 (contains!7679 lt!1276254 lt!1276232)))

(declare-fun c!633795 () Bool)

(assert (=> b!3666079 (= c!633795 (isSeparator!5806 rule!403))))

(declare-fun b!3666080 () Bool)

(assert (=> b!3666080 (= e!2269928 true)))

(declare-fun lt!1276231 () Unit!56066)

(assert (=> b!3666080 (= lt!1276231 e!2269903)))

(declare-fun c!633794 () Bool)

(declare-fun getIndex!474 (List!38787 Rule!11412) Int)

(assert (=> b!3666080 (= c!633794 (< (getIndex!474 rules!3307 (rule!8624 (_1!22400 lt!1276230))) (getIndex!474 rules!3307 rule!403)))))

(declare-fun b!3666081 () Bool)

(declare-fun Unit!56079 () Unit!56066)

(assert (=> b!3666081 (= e!2269923 Unit!56079)))

(declare-fun b!3666082 () Bool)

(declare-fun Unit!56080 () Unit!56066)

(assert (=> b!3666082 (= e!2269903 Unit!56080)))

(declare-fun b!3666083 () Bool)

(declare-fun res!1488498 () Bool)

(assert (=> b!3666083 (=> (not res!1488498) (not e!2269908))))

(assert (=> b!3666083 (= res!1488498 (not (= (isSeparator!5806 anOtherTypeRule!33) (isSeparator!5806 rule!403))))))

(declare-fun b!3666084 () Bool)

(assert (=> b!3666084 false))

(declare-fun lt!1276225 () Unit!56066)

(assert (=> b!3666084 (= lt!1276225 call!265316)))

(assert (=> b!3666084 (not call!265314)))

(declare-fun lt!1276233 () Unit!56066)

(assert (=> b!3666084 (= lt!1276233 (lemmaSepRuleNotContainsCharContainedInANonSepRule!334 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8624 (_1!22400 lt!1276230)) lt!1276245))))

(declare-fun Unit!56081 () Unit!56066)

(assert (=> b!3666084 (= e!2269926 Unit!56081)))

(assert (= (and start!343410 res!1488489) b!3666064))

(assert (= (and b!3666064 res!1488503) b!3666060))

(assert (= (and b!3666060 res!1488502) b!3666040))

(assert (= (and b!3666040 res!1488509) b!3666037))

(assert (= (and b!3666037 res!1488495) b!3666083))

(assert (= (and b!3666083 res!1488498) b!3666078))

(assert (= (and b!3666078 res!1488500) b!3666072))

(assert (= (and b!3666072 res!1488492) b!3666077))

(assert (= (and b!3666077 res!1488505) b!3666073))

(assert (= (and b!3666073 res!1488496) b!3666068))

(assert (= (and b!3666068 (not res!1488490)) b!3666041))

(assert (= (and b!3666041 (not res!1488488)) b!3666044))

(assert (= (and b!3666044 (not res!1488497)) b!3666036))

(assert (= (and b!3666036 (not res!1488506)) b!3666076))

(assert (= (and b!3666076 (not res!1488507)) b!3666046))

(assert (= (and b!3666046 res!1488504) b!3666051))

(assert (= (and b!3666051 res!1488499) b!3666055))

(assert (= (and b!3666046 (not res!1488494)) b!3666049))

(assert (= (and b!3666049 (not res!1488487)) b!3666070))

(assert (= (and b!3666070 (not res!1488508)) b!3666047))

(assert (= (and b!3666047 (not res!1488501)) b!3666042))

(assert (= (and b!3666042 c!633793) b!3666035))

(assert (= (and b!3666042 (not c!633793)) b!3666065))

(assert (= (and b!3666042 c!633798) b!3666050))

(assert (= (and b!3666042 (not c!633798)) b!3666058))

(assert (= (and b!3666050 c!633799) b!3666067))

(assert (= (and b!3666050 (not c!633799)) b!3666081))

(assert (= (and b!3666058 c!633792) b!3666084))

(assert (= (and b!3666058 (not c!633792)) b!3666056))

(assert (= (or b!3666067 b!3666084) bm!265310))

(assert (= (or b!3666067 b!3666084) bm!265307))

(assert (= (or b!3666067 b!3666084) bm!265308))

(assert (= (and b!3666042 c!633797) b!3666079))

(assert (= (and b!3666042 (not c!633797)) b!3666074))

(assert (= (and b!3666079 c!633795) b!3666039))

(assert (= (and b!3666079 (not c!633795)) b!3666066))

(assert (= (or b!3666039 b!3666066) bm!265309))

(assert (= (or b!3666039 b!3666066) bm!265311))

(assert (= (or b!3666039 b!3666066) bm!265306))

(assert (= (and b!3666042 c!633796) b!3666048))

(assert (= (and b!3666042 (not c!633796)) b!3666043))

(assert (= (and b!3666042 (not res!1488491)) b!3666080))

(assert (= (and b!3666080 c!633794) b!3666062))

(assert (= (and b!3666080 (not c!633794)) b!3666082))

(assert (= (and b!3666062 res!1488493) b!3666061))

(assert (= b!3666053 b!3666052))

(assert (= b!3666038 b!3666053))

(assert (= (and start!343410 ((_ is Cons!38663) rules!3307)) b!3666038))

(assert (= (and start!343410 ((_ is Cons!38661) suffix!1395)) b!3666069))

(assert (= b!3666057 b!3666063))

(assert (= b!3666071 b!3666057))

(assert (= start!343410 b!3666071))

(assert (= b!3666075 b!3666054))

(assert (= start!343410 b!3666075))

(assert (= b!3666045 b!3666059))

(assert (= start!343410 b!3666045))

(declare-fun m!4173845 () Bool)

(assert (=> b!3666067 m!4173845))

(declare-fun m!4173847 () Bool)

(assert (=> b!3666060 m!4173847))

(declare-fun m!4173849 () Bool)

(assert (=> b!3666053 m!4173849))

(declare-fun m!4173851 () Bool)

(assert (=> b!3666053 m!4173851))

(declare-fun m!4173853 () Bool)

(assert (=> bm!265308 m!4173853))

(declare-fun m!4173855 () Bool)

(assert (=> b!3666039 m!4173855))

(declare-fun m!4173857 () Bool)

(assert (=> b!3666046 m!4173857))

(declare-fun m!4173859 () Bool)

(assert (=> b!3666046 m!4173859))

(declare-fun m!4173861 () Bool)

(assert (=> b!3666046 m!4173861))

(declare-fun m!4173863 () Bool)

(assert (=> b!3666046 m!4173863))

(declare-fun m!4173865 () Bool)

(assert (=> b!3666046 m!4173865))

(declare-fun m!4173867 () Bool)

(assert (=> b!3666046 m!4173867))

(declare-fun m!4173869 () Bool)

(assert (=> b!3666046 m!4173869))

(declare-fun m!4173871 () Bool)

(assert (=> b!3666046 m!4173871))

(assert (=> b!3666046 m!4173869))

(declare-fun m!4173873 () Bool)

(assert (=> b!3666046 m!4173873))

(declare-fun m!4173875 () Bool)

(assert (=> b!3666046 m!4173875))

(declare-fun m!4173877 () Bool)

(assert (=> b!3666046 m!4173877))

(declare-fun m!4173879 () Bool)

(assert (=> b!3666046 m!4173879))

(declare-fun m!4173881 () Bool)

(assert (=> b!3666046 m!4173881))

(declare-fun m!4173883 () Bool)

(assert (=> b!3666046 m!4173883))

(declare-fun m!4173885 () Bool)

(assert (=> b!3666046 m!4173885))

(declare-fun m!4173887 () Bool)

(assert (=> b!3666035 m!4173887))

(declare-fun m!4173889 () Bool)

(assert (=> b!3666045 m!4173889))

(declare-fun m!4173891 () Bool)

(assert (=> b!3666045 m!4173891))

(declare-fun m!4173893 () Bool)

(assert (=> b!3666040 m!4173893))

(declare-fun m!4173895 () Bool)

(assert (=> b!3666041 m!4173895))

(declare-fun m!4173897 () Bool)

(assert (=> b!3666077 m!4173897))

(declare-fun m!4173899 () Bool)

(assert (=> b!3666062 m!4173899))

(declare-fun m!4173901 () Bool)

(assert (=> b!3666062 m!4173901))

(declare-fun m!4173903 () Bool)

(assert (=> b!3666062 m!4173903))

(declare-fun m!4173905 () Bool)

(assert (=> b!3666062 m!4173905))

(declare-fun m!4173907 () Bool)

(assert (=> b!3666062 m!4173907))

(assert (=> b!3666062 m!4173903))

(declare-fun m!4173909 () Bool)

(assert (=> b!3666044 m!4173909))

(declare-fun m!4173911 () Bool)

(assert (=> b!3666044 m!4173911))

(declare-fun m!4173913 () Bool)

(assert (=> b!3666044 m!4173913))

(declare-fun m!4173915 () Bool)

(assert (=> bm!265311 m!4173915))

(declare-fun m!4173917 () Bool)

(assert (=> b!3666048 m!4173917))

(declare-fun m!4173919 () Bool)

(assert (=> bm!265306 m!4173919))

(declare-fun m!4173921 () Bool)

(assert (=> b!3666057 m!4173921))

(declare-fun m!4173923 () Bool)

(assert (=> b!3666057 m!4173923))

(declare-fun m!4173925 () Bool)

(assert (=> b!3666036 m!4173925))

(assert (=> b!3666036 m!4173925))

(declare-fun m!4173927 () Bool)

(assert (=> b!3666036 m!4173927))

(declare-fun m!4173929 () Bool)

(assert (=> b!3666042 m!4173929))

(declare-fun m!4173931 () Bool)

(assert (=> b!3666042 m!4173931))

(declare-fun m!4173933 () Bool)

(assert (=> b!3666042 m!4173933))

(declare-fun m!4173935 () Bool)

(assert (=> b!3666042 m!4173935))

(declare-fun m!4173937 () Bool)

(assert (=> b!3666078 m!4173937))

(declare-fun m!4173939 () Bool)

(assert (=> b!3666078 m!4173939))

(declare-fun m!4173941 () Bool)

(assert (=> b!3666078 m!4173941))

(declare-fun m!4173943 () Bool)

(assert (=> b!3666078 m!4173943))

(assert (=> bm!265307 m!4173915))

(declare-fun m!4173945 () Bool)

(assert (=> b!3666070 m!4173945))

(declare-fun m!4173947 () Bool)

(assert (=> b!3666070 m!4173947))

(declare-fun m!4173949 () Bool)

(assert (=> b!3666070 m!4173949))

(declare-fun m!4173951 () Bool)

(assert (=> b!3666070 m!4173951))

(declare-fun m!4173953 () Bool)

(assert (=> b!3666070 m!4173953))

(assert (=> b!3666070 m!4173951))

(declare-fun m!4173955 () Bool)

(assert (=> b!3666070 m!4173955))

(declare-fun m!4173957 () Bool)

(assert (=> b!3666075 m!4173957))

(declare-fun m!4173959 () Bool)

(assert (=> b!3666075 m!4173959))

(declare-fun m!4173961 () Bool)

(assert (=> b!3666047 m!4173961))

(declare-fun m!4173963 () Bool)

(assert (=> b!3666047 m!4173963))

(declare-fun m!4173965 () Bool)

(assert (=> b!3666047 m!4173965))

(declare-fun m!4173967 () Bool)

(assert (=> b!3666047 m!4173967))

(declare-fun m!4173969 () Bool)

(assert (=> b!3666047 m!4173969))

(declare-fun m!4173971 () Bool)

(assert (=> b!3666047 m!4173971))

(assert (=> b!3666047 m!4173969))

(declare-fun m!4173973 () Bool)

(assert (=> b!3666047 m!4173973))

(declare-fun m!4173975 () Bool)

(assert (=> b!3666066 m!4173975))

(declare-fun m!4173977 () Bool)

(assert (=> b!3666072 m!4173977))

(declare-fun m!4173979 () Bool)

(assert (=> b!3666068 m!4173979))

(declare-fun m!4173981 () Bool)

(assert (=> b!3666068 m!4173981))

(declare-fun m!4173983 () Bool)

(assert (=> b!3666068 m!4173983))

(declare-fun m!4173985 () Bool)

(assert (=> b!3666049 m!4173985))

(declare-fun m!4173987 () Bool)

(assert (=> b!3666076 m!4173987))

(declare-fun m!4173989 () Bool)

(assert (=> b!3666079 m!4173989))

(declare-fun m!4173991 () Bool)

(assert (=> b!3666079 m!4173991))

(declare-fun m!4173993 () Bool)

(assert (=> bm!265310 m!4173993))

(declare-fun m!4173995 () Bool)

(assert (=> b!3666084 m!4173995))

(declare-fun m!4173997 () Bool)

(assert (=> b!3666080 m!4173997))

(declare-fun m!4173999 () Bool)

(assert (=> b!3666080 m!4173999))

(declare-fun m!4174001 () Bool)

(assert (=> b!3666037 m!4174001))

(declare-fun m!4174003 () Bool)

(assert (=> bm!265309 m!4174003))

(declare-fun m!4174005 () Bool)

(assert (=> b!3666064 m!4174005))

(assert (=> b!3666051 m!4173885))

(assert (=> b!3666051 m!4173885))

(declare-fun m!4174007 () Bool)

(assert (=> b!3666051 m!4174007))

(assert (=> b!3666051 m!4174007))

(declare-fun m!4174009 () Bool)

(assert (=> b!3666051 m!4174009))

(declare-fun m!4174011 () Bool)

(assert (=> b!3666051 m!4174011))

(declare-fun m!4174013 () Bool)

(assert (=> b!3666071 m!4174013))

(declare-fun m!4174015 () Bool)

(assert (=> start!343410 m!4174015))

(check-sat (not b!3666039) (not b!3666048) (not b!3666075) (not b!3666068) b_and!272649 b_and!272657 (not b_next!97483) (not b!3666038) (not b_next!97477) (not b!3666060) b_and!272643 (not b!3666067) (not b!3666077) (not bm!265311) (not b_next!97479) (not b!3666042) (not start!343410) (not b!3666080) b_and!272653 (not b!3666040) (not bm!265308) (not b!3666069) (not b!3666047) (not b!3666053) (not b!3666072) (not b!3666070) (not b!3666062) b_and!272651 (not b!3666045) (not b!3666051) b_and!272647 (not b!3666079) (not b_next!97485) (not b!3666064) (not b_next!97475) (not b!3666044) (not b!3666037) (not b!3666035) (not b_next!97481) (not bm!265306) (not b!3666076) (not b!3666078) (not b_next!97487) (not bm!265307) (not b!3666049) b_and!272655 (not b_next!97473) b_and!272645 (not b!3666041) (not b!3666057) (not bm!265310) (not b!3666036) (not b!3666066) (not bm!265309) (not b!3666084) tp_is_empty!18213 (not b!3666071) (not b!3666046))
(check-sat (not b_next!97479) b_and!272653 b_and!272649 b_and!272657 b_and!272651 (not b_next!97483) (not b_next!97477) b_and!272647 (not b_next!97485) (not b_next!97475) (not b_next!97481) b_and!272643 (not b_next!97487) b_and!272655 (not b_next!97473) b_and!272645)
