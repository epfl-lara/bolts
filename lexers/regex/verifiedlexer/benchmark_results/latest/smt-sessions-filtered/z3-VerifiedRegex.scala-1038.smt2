; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51944 () Bool)

(assert start!51944)

(declare-fun b!564155 () Bool)

(declare-fun b_free!15677 () Bool)

(declare-fun b_next!15693 () Bool)

(assert (=> b!564155 (= b_free!15677 (not b_next!15693))))

(declare-fun tp!178097 () Bool)

(declare-fun b_and!55011 () Bool)

(assert (=> b!564155 (= tp!178097 b_and!55011)))

(declare-fun b_free!15679 () Bool)

(declare-fun b_next!15695 () Bool)

(assert (=> b!564155 (= b_free!15679 (not b_next!15695))))

(declare-fun tp!178095 () Bool)

(declare-fun b_and!55013 () Bool)

(assert (=> b!564155 (= tp!178095 b_and!55013)))

(declare-fun b!564136 () Bool)

(declare-fun b_free!15681 () Bool)

(declare-fun b_next!15697 () Bool)

(assert (=> b!564136 (= b_free!15681 (not b_next!15697))))

(declare-fun tp!178093 () Bool)

(declare-fun b_and!55015 () Bool)

(assert (=> b!564136 (= tp!178093 b_and!55015)))

(declare-fun b_free!15683 () Bool)

(declare-fun b_next!15699 () Bool)

(assert (=> b!564136 (= b_free!15683 (not b_next!15699))))

(declare-fun tp!178099 () Bool)

(declare-fun b_and!55017 () Bool)

(assert (=> b!564136 (= tp!178099 b_and!55017)))

(declare-fun b!564128 () Bool)

(declare-fun e!340796 () Bool)

(declare-fun e!340802 () Bool)

(assert (=> b!564128 (= e!340796 e!340802)))

(declare-fun res!241393 () Bool)

(assert (=> b!564128 (=> res!241393 e!340802)))

(declare-fun lt!237245 () Int)

(declare-fun lt!237238 () Int)

(assert (=> b!564128 (= res!241393 (>= lt!237245 lt!237238))))

(declare-fun b!564129 () Bool)

(declare-fun e!340805 () Bool)

(declare-fun e!340788 () Bool)

(assert (=> b!564129 (= e!340805 e!340788)))

(declare-fun res!241397 () Bool)

(assert (=> b!564129 (=> res!241397 e!340788)))

(assert (=> b!564129 (= res!241397 (>= lt!237245 lt!237238))))

(assert (=> b!564129 e!340796))

(declare-fun res!241406 () Bool)

(assert (=> b!564129 (=> (not res!241406) (not e!340796))))

(declare-datatypes ((C!3716 0))(
  ( (C!3717 (val!2084 Int)) )
))
(declare-datatypes ((List!5554 0))(
  ( (Nil!5544) (Cons!5544 (h!10945 C!3716) (t!76189 List!5554)) )
))
(declare-fun suffix!1342 () List!5554)

(declare-fun lt!237239 () List!5554)

(declare-datatypes ((Regex!1397 0))(
  ( (ElementMatch!1397 (c!106063 C!3716)) (Concat!2484 (regOne!3306 Regex!1397) (regTwo!3306 Regex!1397)) (EmptyExpr!1397) (Star!1397 (reg!1726 Regex!1397)) (EmptyLang!1397) (Union!1397 (regOne!3307 Regex!1397) (regTwo!3307 Regex!1397)) )
))
(declare-datatypes ((List!5555 0))(
  ( (Nil!5545) (Cons!5545 (h!10946 (_ BitVec 16)) (t!76190 List!5555)) )
))
(declare-datatypes ((TokenValue!1087 0))(
  ( (FloatLiteralValue!2174 (text!8054 List!5555)) (TokenValueExt!1086 (__x!4072 Int)) (Broken!5435 (value!35136 List!5555)) (Object!1096) (End!1087) (Def!1087) (Underscore!1087) (Match!1087) (Else!1087) (Error!1087) (Case!1087) (If!1087) (Extends!1087) (Abstract!1087) (Class!1087) (Val!1087) (DelimiterValue!2174 (del!1147 List!5555)) (KeywordValue!1093 (value!35137 List!5555)) (CommentValue!2174 (value!35138 List!5555)) (WhitespaceValue!2174 (value!35139 List!5555)) (IndentationValue!1087 (value!35140 List!5555)) (String!7178) (Int32!1087) (Broken!5436 (value!35141 List!5555)) (Boolean!1088) (Unit!9910) (OperatorValue!1090 (op!1147 List!5555)) (IdentifierValue!2174 (value!35142 List!5555)) (IdentifierValue!2175 (value!35143 List!5555)) (WhitespaceValue!2175 (value!35144 List!5555)) (True!2174) (False!2174) (Broken!5437 (value!35145 List!5555)) (Broken!5438 (value!35146 List!5555)) (True!2175) (RightBrace!1087) (RightBracket!1087) (Colon!1087) (Null!1087) (Comma!1087) (LeftBracket!1087) (False!2175) (LeftBrace!1087) (ImaginaryLiteralValue!1087 (text!8055 List!5555)) (StringLiteralValue!3261 (value!35147 List!5555)) (EOFValue!1087 (value!35148 List!5555)) (IdentValue!1087 (value!35149 List!5555)) (DelimiterValue!2175 (value!35150 List!5555)) (DedentValue!1087 (value!35151 List!5555)) (NewLineValue!1087 (value!35152 List!5555)) (IntegerValue!3261 (value!35153 (_ BitVec 32)) (text!8056 List!5555)) (IntegerValue!3262 (value!35154 Int) (text!8057 List!5555)) (Times!1087) (Or!1087) (Equal!1087) (Minus!1087) (Broken!5439 (value!35155 List!5555)) (And!1087) (Div!1087) (LessEqual!1087) (Mod!1087) (Concat!2485) (Not!1087) (Plus!1087) (SpaceValue!1087 (value!35156 List!5555)) (IntegerValue!3263 (value!35157 Int) (text!8058 List!5555)) (StringLiteralValue!3262 (text!8059 List!5555)) (FloatLiteralValue!2175 (text!8060 List!5555)) (BytesLiteralValue!1087 (value!35158 List!5555)) (CommentValue!2175 (value!35159 List!5555)) (StringLiteralValue!3263 (value!35160 List!5555)) (ErrorTokenValue!1087 (msg!1148 List!5555)) )
))
(declare-datatypes ((String!7179 0))(
  ( (String!7180 (value!35161 String)) )
))
(declare-datatypes ((IArray!3561 0))(
  ( (IArray!3562 (innerList!1838 List!5554)) )
))
(declare-datatypes ((Conc!1780 0))(
  ( (Node!1780 (left!4556 Conc!1780) (right!4886 Conc!1780) (csize!3790 Int) (cheight!1991 Int)) (Leaf!2819 (xs!4417 IArray!3561) (csize!3791 Int)) (Empty!1780) )
))
(declare-datatypes ((BalanceConc!3568 0))(
  ( (BalanceConc!3569 (c!106064 Conc!1780)) )
))
(declare-datatypes ((TokenValueInjection!1942 0))(
  ( (TokenValueInjection!1943 (toValue!1918 Int) (toChars!1777 Int)) )
))
(declare-datatypes ((Rule!1926 0))(
  ( (Rule!1927 (regex!1063 Regex!1397) (tag!1325 String!7179) (isSeparator!1063 Bool) (transformation!1063 TokenValueInjection!1942)) )
))
(declare-datatypes ((Token!1862 0))(
  ( (Token!1863 (value!35162 TokenValue!1087) (rule!1797 Rule!1926) (size!4422 Int) (originalCharacters!1102 List!5554)) )
))
(declare-fun token!491 () Token!1862)

(declare-datatypes ((LexerInterface!949 0))(
  ( (LexerInterfaceExt!946 (__x!4073 Int)) (Lexer!947) )
))
(declare-fun thiss!22590 () LexerInterface!949)

(declare-fun lt!237252 () List!5554)

(declare-fun lt!237264 () TokenValue!1087)

(declare-datatypes ((tuple2!6548 0))(
  ( (tuple2!6549 (_1!3538 Token!1862) (_2!3538 List!5554)) )
))
(declare-datatypes ((Option!1414 0))(
  ( (None!1413) (Some!1413 (v!16256 tuple2!6548)) )
))
(declare-fun maxPrefixOneRule!348 (LexerInterface!949 Rule!1926 List!5554) Option!1414)

(assert (=> b!564129 (= res!241406 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 token!491) lt!237239) (Some!1413 (tuple2!6549 (Token!1863 lt!237264 (rule!1797 token!491) lt!237238 lt!237252) suffix!1342))))))

(declare-datatypes ((List!5556 0))(
  ( (Nil!5546) (Cons!5546 (h!10947 Rule!1926) (t!76191 List!5556)) )
))
(declare-fun rules!3103 () List!5556)

(declare-datatypes ((Unit!9911 0))(
  ( (Unit!9912) )
))
(declare-fun lt!237242 () Unit!9911)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!98 (LexerInterface!949 List!5556 List!5554 List!5554 List!5554 Rule!1926) Unit!9911)

(assert (=> b!564129 (= lt!237242 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!98 thiss!22590 rules!3103 lt!237252 lt!237239 suffix!1342 (rule!1797 token!491)))))

(declare-fun lt!237259 () List!5554)

(declare-fun lt!237237 () Option!1414)

(declare-fun lt!237257 () TokenValue!1087)

(declare-fun input!2705 () List!5554)

(assert (=> b!564129 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) input!2705) (Some!1413 (tuple2!6549 (Token!1863 lt!237257 (rule!1797 (_1!3538 (v!16256 lt!237237))) lt!237245 lt!237259) (_2!3538 (v!16256 lt!237237)))))))

(declare-fun lt!237251 () Unit!9911)

(assert (=> b!564129 (= lt!237251 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!98 thiss!22590 rules!3103 lt!237259 input!2705 (_2!3538 (v!16256 lt!237237)) (rule!1797 (_1!3538 (v!16256 lt!237237)))))))

(declare-fun e!340790 () Bool)

(assert (=> b!564129 e!340790))

(declare-fun res!241392 () Bool)

(assert (=> b!564129 (=> (not res!241392) (not e!340790))))

(assert (=> b!564129 (= res!241392 (= (value!35162 token!491) lt!237264))))

(declare-fun apply!1328 (TokenValueInjection!1942 BalanceConc!3568) TokenValue!1087)

(declare-fun seqFromList!1251 (List!5554) BalanceConc!3568)

(assert (=> b!564129 (= lt!237264 (apply!1328 (transformation!1063 (rule!1797 token!491)) (seqFromList!1251 lt!237252)))))

(declare-fun lt!237241 () List!5554)

(assert (=> b!564129 (= suffix!1342 lt!237241)))

(declare-fun lt!237247 () Unit!9911)

(declare-fun lemmaSamePrefixThenSameSuffix!420 (List!5554 List!5554 List!5554 List!5554 List!5554) Unit!9911)

(assert (=> b!564129 (= lt!237247 (lemmaSamePrefixThenSameSuffix!420 lt!237252 suffix!1342 lt!237252 lt!237241 lt!237239))))

(declare-fun getSuffix!216 (List!5554 List!5554) List!5554)

(assert (=> b!564129 (= lt!237241 (getSuffix!216 lt!237239 lt!237252))))

(declare-fun b!564130 () Bool)

(declare-fun e!340811 () Unit!9911)

(declare-fun Unit!9913 () Unit!9911)

(assert (=> b!564130 (= e!340811 Unit!9913)))

(declare-fun lt!237260 () List!5554)

(declare-fun b!564131 () Bool)

(declare-fun lt!237250 () tuple2!6548)

(declare-fun e!340791 () Bool)

(assert (=> b!564131 (= e!340791 (and (= (size!4422 (_1!3538 (v!16256 lt!237237))) lt!237245) (= (originalCharacters!1102 (_1!3538 (v!16256 lt!237237))) lt!237259) (= lt!237250 (tuple2!6549 (Token!1863 lt!237257 (rule!1797 (_1!3538 (v!16256 lt!237237))) lt!237245 lt!237259) lt!237260))))))

(declare-fun tp!178102 () Bool)

(declare-fun b!564132 () Bool)

(declare-fun e!340800 () Bool)

(declare-fun e!340801 () Bool)

(declare-fun inv!21 (TokenValue!1087) Bool)

(assert (=> b!564132 (= e!340801 (and (inv!21 (value!35162 token!491)) e!340800 tp!178102))))

(declare-fun tp!178096 () Bool)

(declare-fun b!564133 () Bool)

(declare-fun e!340804 () Bool)

(declare-fun inv!6965 (String!7179) Bool)

(declare-fun inv!6968 (TokenValueInjection!1942) Bool)

(assert (=> b!564133 (= e!340800 (and tp!178096 (inv!6965 (tag!1325 (rule!1797 token!491))) (inv!6968 (transformation!1063 (rule!1797 token!491))) e!340804))))

(declare-fun b!564134 () Bool)

(declare-fun e!340794 () Bool)

(declare-fun e!340798 () Bool)

(declare-fun tp!178101 () Bool)

(assert (=> b!564134 (= e!340794 (and e!340798 tp!178101))))

(declare-fun b!564135 () Bool)

(declare-fun e!340806 () Bool)

(declare-fun get!2109 (Option!1414) tuple2!6548)

(assert (=> b!564135 (= e!340806 (= (_1!3538 (get!2109 lt!237237)) (_1!3538 (v!16256 lt!237237))))))

(declare-fun b!564137 () Bool)

(assert (=> b!564137 (= e!340790 (and (= (size!4422 token!491) lt!237238) (= (originalCharacters!1102 token!491) lt!237252) (= (tuple2!6549 token!491 suffix!1342) (tuple2!6549 (Token!1863 lt!237264 (rule!1797 token!491) lt!237238 lt!237252) lt!237241))))))

(declare-fun b!564138 () Bool)

(declare-fun e!340793 () Bool)

(declare-fun tp_is_empty!3149 () Bool)

(declare-fun tp!178100 () Bool)

(assert (=> b!564138 (= e!340793 (and tp_is_empty!3149 tp!178100))))

(declare-fun b!564139 () Bool)

(declare-fun res!241403 () Bool)

(declare-fun e!340795 () Bool)

(assert (=> b!564139 (=> (not res!241403) (not e!340795))))

(declare-fun rulesInvariant!912 (LexerInterface!949 List!5556) Bool)

(assert (=> b!564139 (= res!241403 (rulesInvariant!912 thiss!22590 rules!3103))))

(declare-fun b!564140 () Bool)

(declare-fun e!340808 () Bool)

(declare-fun e!340799 () Bool)

(assert (=> b!564140 (= e!340808 e!340799)))

(declare-fun res!241390 () Bool)

(assert (=> b!564140 (=> (not res!241390) (not e!340799))))

(declare-fun lt!237253 () Option!1414)

(declare-fun isDefined!1225 (Option!1414) Bool)

(assert (=> b!564140 (= res!241390 (isDefined!1225 lt!237253))))

(declare-fun maxPrefix!647 (LexerInterface!949 List!5556 List!5554) Option!1414)

(assert (=> b!564140 (= lt!237253 (maxPrefix!647 thiss!22590 rules!3103 lt!237239))))

(declare-fun ++!1551 (List!5554 List!5554) List!5554)

(assert (=> b!564140 (= lt!237239 (++!1551 input!2705 suffix!1342))))

(declare-fun b!564141 () Bool)

(declare-fun Unit!9914 () Unit!9911)

(assert (=> b!564141 (= e!340811 Unit!9914)))

(assert (=> b!564141 false))

(declare-fun b!564142 () Bool)

(declare-fun res!241389 () Bool)

(assert (=> b!564142 (=> res!241389 e!340788)))

(declare-fun contains!1297 (List!5556 Rule!1926) Bool)

(assert (=> b!564142 (= res!241389 (not (contains!1297 rules!3103 (rule!1797 token!491))))))

(declare-fun e!340789 () Bool)

(declare-fun tp!178094 () Bool)

(declare-fun b!564143 () Bool)

(assert (=> b!564143 (= e!340798 (and tp!178094 (inv!6965 (tag!1325 (h!10947 rules!3103))) (inv!6968 (transformation!1063 (h!10947 rules!3103))) e!340789))))

(declare-fun b!564144 () Bool)

(declare-fun e!340803 () Bool)

(assert (=> b!564144 (= e!340803 (not e!340805))))

(declare-fun res!241399 () Bool)

(assert (=> b!564144 (=> res!241399 e!340805)))

(declare-fun lt!237263 () List!5554)

(declare-fun isPrefix!697 (List!5554 List!5554) Bool)

(assert (=> b!564144 (= res!241399 (not (isPrefix!697 input!2705 lt!237263)))))

(assert (=> b!564144 (isPrefix!697 lt!237252 lt!237263)))

(declare-fun lt!237261 () Unit!9911)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!544 (List!5554 List!5554) Unit!9911)

(assert (=> b!564144 (= lt!237261 (lemmaConcatTwoListThenFirstIsPrefix!544 lt!237252 suffix!1342))))

(assert (=> b!564144 (isPrefix!697 input!2705 lt!237239)))

(declare-fun lt!237254 () Unit!9911)

(assert (=> b!564144 (= lt!237254 (lemmaConcatTwoListThenFirstIsPrefix!544 input!2705 suffix!1342))))

(assert (=> b!564144 e!340791))

(declare-fun res!241395 () Bool)

(assert (=> b!564144 (=> (not res!241395) (not e!340791))))

(assert (=> b!564144 (= res!241395 (= (value!35162 (_1!3538 (v!16256 lt!237237))) lt!237257))))

(assert (=> b!564144 (= lt!237257 (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (seqFromList!1251 lt!237259)))))

(declare-fun lt!237243 () Unit!9911)

(declare-fun lemmaInv!199 (TokenValueInjection!1942) Unit!9911)

(assert (=> b!564144 (= lt!237243 (lemmaInv!199 (transformation!1063 (rule!1797 token!491))))))

(declare-fun lt!237258 () Unit!9911)

(assert (=> b!564144 (= lt!237258 (lemmaInv!199 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))))))

(declare-fun ruleValid!273 (LexerInterface!949 Rule!1926) Bool)

(assert (=> b!564144 (ruleValid!273 thiss!22590 (rule!1797 token!491))))

(declare-fun lt!237246 () Unit!9911)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!130 (LexerInterface!949 Rule!1926 List!5556) Unit!9911)

(assert (=> b!564144 (= lt!237246 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!130 thiss!22590 (rule!1797 token!491) rules!3103))))

(assert (=> b!564144 (ruleValid!273 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))))))

(declare-fun lt!237248 () Unit!9911)

(assert (=> b!564144 (= lt!237248 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!130 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) rules!3103))))

(assert (=> b!564144 (isPrefix!697 input!2705 input!2705)))

(declare-fun lt!237255 () Unit!9911)

(declare-fun lemmaIsPrefixRefl!435 (List!5554 List!5554) Unit!9911)

(assert (=> b!564144 (= lt!237255 (lemmaIsPrefixRefl!435 input!2705 input!2705))))

(assert (=> b!564144 (= (_2!3538 (v!16256 lt!237237)) lt!237260)))

(declare-fun lt!237236 () Unit!9911)

(assert (=> b!564144 (= lt!237236 (lemmaSamePrefixThenSameSuffix!420 lt!237259 (_2!3538 (v!16256 lt!237237)) lt!237259 lt!237260 input!2705))))

(assert (=> b!564144 (= lt!237260 (getSuffix!216 input!2705 lt!237259))))

(declare-fun lt!237244 () List!5554)

(assert (=> b!564144 (isPrefix!697 lt!237259 lt!237244)))

(assert (=> b!564144 (= lt!237244 (++!1551 lt!237259 (_2!3538 (v!16256 lt!237237))))))

(declare-fun lt!237256 () Unit!9911)

(assert (=> b!564144 (= lt!237256 (lemmaConcatTwoListThenFirstIsPrefix!544 lt!237259 (_2!3538 (v!16256 lt!237237))))))

(declare-fun lt!237240 () Unit!9911)

(declare-fun lemmaCharactersSize!130 (Token!1862) Unit!9911)

(assert (=> b!564144 (= lt!237240 (lemmaCharactersSize!130 token!491))))

(declare-fun lt!237266 () Unit!9911)

(assert (=> b!564144 (= lt!237266 (lemmaCharactersSize!130 (_1!3538 (v!16256 lt!237237))))))

(declare-fun lt!237249 () Unit!9911)

(assert (=> b!564144 (= lt!237249 e!340811)))

(declare-fun c!106062 () Bool)

(assert (=> b!564144 (= c!106062 (> lt!237245 lt!237238))))

(declare-fun size!4423 (List!5554) Int)

(assert (=> b!564144 (= lt!237238 (size!4423 lt!237252))))

(assert (=> b!564144 (= lt!237245 (size!4423 lt!237259))))

(declare-fun list!2301 (BalanceConc!3568) List!5554)

(declare-fun charsOf!692 (Token!1862) BalanceConc!3568)

(assert (=> b!564144 (= lt!237259 (list!2301 (charsOf!692 (_1!3538 (v!16256 lt!237237)))))))

(assert (=> b!564144 (= lt!237237 (Some!1413 lt!237250))))

(assert (=> b!564144 (= lt!237250 (tuple2!6549 (_1!3538 (v!16256 lt!237237)) (_2!3538 (v!16256 lt!237237))))))

(declare-fun lt!237262 () Unit!9911)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!140 (List!5554 List!5554 List!5554 List!5554) Unit!9911)

(assert (=> b!564144 (= lt!237262 (lemmaConcatSameAndSameSizesThenSameLists!140 lt!237252 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!564145 () Bool)

(declare-fun res!241387 () Bool)

(assert (=> b!564145 (=> res!241387 e!340788)))

(declare-fun matchR!544 (Regex!1397 List!5554) Bool)

(assert (=> b!564145 (= res!241387 (not (matchR!544 (regex!1063 (rule!1797 token!491)) input!2705)))))

(declare-fun b!564146 () Bool)

(declare-fun e!340787 () Bool)

(assert (=> b!564146 (= e!340787 e!340803)))

(declare-fun res!241402 () Bool)

(assert (=> b!564146 (=> (not res!241402) (not e!340803))))

(assert (=> b!564146 (= res!241402 (= lt!237263 lt!237239))))

(assert (=> b!564146 (= lt!237263 (++!1551 lt!237252 suffix!1342))))

(declare-fun b!564147 () Bool)

(declare-fun e!340797 () Bool)

(assert (=> b!564147 (= e!340797 e!340787)))

(declare-fun res!241404 () Bool)

(assert (=> b!564147 (=> (not res!241404) (not e!340787))))

(get-info :version)

(assert (=> b!564147 (= res!241404 ((_ is Some!1413) lt!237237))))

(assert (=> b!564147 (= lt!237237 (maxPrefix!647 thiss!22590 rules!3103 input!2705))))

(declare-fun b!564148 () Bool)

(declare-fun res!241385 () Bool)

(assert (=> b!564148 (=> (not res!241385) (not e!340791))))

(assert (=> b!564148 (= res!241385 (= (size!4422 (_1!3538 (v!16256 lt!237237))) (size!4423 (originalCharacters!1102 (_1!3538 (v!16256 lt!237237))))))))

(declare-fun b!564149 () Bool)

(assert (=> b!564149 (= e!340795 e!340808)))

(declare-fun res!241388 () Bool)

(assert (=> b!564149 (=> (not res!241388) (not e!340808))))

(assert (=> b!564149 (= res!241388 (= lt!237252 input!2705))))

(assert (=> b!564149 (= lt!237252 (list!2301 (charsOf!692 token!491)))))

(declare-fun b!564150 () Bool)

(declare-fun res!241394 () Bool)

(assert (=> b!564150 (=> (not res!241394) (not e!340795))))

(declare-fun isEmpty!4003 (List!5556) Bool)

(assert (=> b!564150 (= res!241394 (not (isEmpty!4003 rules!3103)))))

(assert (=> b!564136 (= e!340789 (and tp!178093 tp!178099))))

(declare-fun res!241405 () Bool)

(assert (=> start!51944 (=> (not res!241405) (not e!340795))))

(assert (=> start!51944 (= res!241405 ((_ is Lexer!947) thiss!22590))))

(assert (=> start!51944 e!340795))

(declare-fun e!340807 () Bool)

(assert (=> start!51944 e!340807))

(assert (=> start!51944 e!340794))

(declare-fun inv!6969 (Token!1862) Bool)

(assert (=> start!51944 (and (inv!6969 token!491) e!340801)))

(assert (=> start!51944 true))

(assert (=> start!51944 e!340793))

(declare-fun b!564151 () Bool)

(assert (=> b!564151 (= e!340799 e!340797)))

(declare-fun res!241401 () Bool)

(assert (=> b!564151 (=> (not res!241401) (not e!340797))))

(declare-fun lt!237265 () tuple2!6548)

(assert (=> b!564151 (= res!241401 (and (= (_1!3538 lt!237265) token!491) (= (_2!3538 lt!237265) suffix!1342)))))

(assert (=> b!564151 (= lt!237265 (get!2109 lt!237253))))

(declare-fun b!564152 () Bool)

(declare-fun tp!178098 () Bool)

(assert (=> b!564152 (= e!340807 (and tp_is_empty!3149 tp!178098))))

(declare-fun b!564153 () Bool)

(declare-fun res!241400 () Bool)

(assert (=> b!564153 (=> (not res!241400) (not e!340790))))

(assert (=> b!564153 (= res!241400 (= (size!4422 token!491) (size!4423 (originalCharacters!1102 token!491))))))

(declare-fun b!564154 () Bool)

(assert (=> b!564154 (= e!340788 (= lt!237244 input!2705))))

(assert (=> b!564155 (= e!340804 (and tp!178097 tp!178095))))

(declare-fun b!564156 () Bool)

(declare-fun res!241386 () Bool)

(assert (=> b!564156 (=> res!241386 e!340788)))

(assert (=> b!564156 (= res!241386 (not (= (getSuffix!216 input!2705 input!2705) Nil!5544)))))

(declare-fun b!564157 () Bool)

(assert (=> b!564157 (= e!340802 e!340806)))

(declare-fun res!241396 () Bool)

(assert (=> b!564157 (=> (not res!241396) (not e!340806))))

(assert (=> b!564157 (= res!241396 (isDefined!1225 lt!237237))))

(declare-fun b!564158 () Bool)

(declare-fun res!241398 () Bool)

(assert (=> b!564158 (=> (not res!241398) (not e!340795))))

(declare-fun isEmpty!4004 (List!5554) Bool)

(assert (=> b!564158 (= res!241398 (not (isEmpty!4004 input!2705)))))

(declare-fun b!564159 () Bool)

(declare-fun res!241391 () Bool)

(assert (=> b!564159 (=> res!241391 e!340788)))

(assert (=> b!564159 (= res!241391 (not (isPrefix!697 lt!237252 input!2705)))))

(assert (= (and start!51944 res!241405) b!564150))

(assert (= (and b!564150 res!241394) b!564139))

(assert (= (and b!564139 res!241403) b!564158))

(assert (= (and b!564158 res!241398) b!564149))

(assert (= (and b!564149 res!241388) b!564140))

(assert (= (and b!564140 res!241390) b!564151))

(assert (= (and b!564151 res!241401) b!564147))

(assert (= (and b!564147 res!241404) b!564146))

(assert (= (and b!564146 res!241402) b!564144))

(assert (= (and b!564144 c!106062) b!564141))

(assert (= (and b!564144 (not c!106062)) b!564130))

(assert (= (and b!564144 res!241395) b!564148))

(assert (= (and b!564148 res!241385) b!564131))

(assert (= (and b!564144 (not res!241399)) b!564129))

(assert (= (and b!564129 res!241392) b!564153))

(assert (= (and b!564153 res!241400) b!564137))

(assert (= (and b!564129 res!241406) b!564128))

(assert (= (and b!564128 (not res!241393)) b!564157))

(assert (= (and b!564157 res!241396) b!564135))

(assert (= (and b!564129 (not res!241397)) b!564142))

(assert (= (and b!564142 (not res!241389)) b!564145))

(assert (= (and b!564145 (not res!241387)) b!564159))

(assert (= (and b!564159 (not res!241391)) b!564156))

(assert (= (and b!564156 (not res!241386)) b!564154))

(assert (= (and start!51944 ((_ is Cons!5544) suffix!1342)) b!564152))

(assert (= b!564143 b!564136))

(assert (= b!564134 b!564143))

(assert (= (and start!51944 ((_ is Cons!5546) rules!3103)) b!564134))

(assert (= b!564133 b!564155))

(assert (= b!564132 b!564133))

(assert (= start!51944 b!564132))

(assert (= (and start!51944 ((_ is Cons!5544) input!2705)) b!564138))

(declare-fun m!817225 () Bool)

(assert (=> b!564139 m!817225))

(declare-fun m!817227 () Bool)

(assert (=> b!564151 m!817227))

(declare-fun m!817229 () Bool)

(assert (=> b!564156 m!817229))

(declare-fun m!817231 () Bool)

(assert (=> b!564135 m!817231))

(declare-fun m!817233 () Bool)

(assert (=> b!564149 m!817233))

(assert (=> b!564149 m!817233))

(declare-fun m!817235 () Bool)

(assert (=> b!564149 m!817235))

(declare-fun m!817237 () Bool)

(assert (=> b!564158 m!817237))

(declare-fun m!817239 () Bool)

(assert (=> b!564153 m!817239))

(declare-fun m!817241 () Bool)

(assert (=> start!51944 m!817241))

(declare-fun m!817243 () Bool)

(assert (=> b!564150 m!817243))

(declare-fun m!817245 () Bool)

(assert (=> b!564143 m!817245))

(declare-fun m!817247 () Bool)

(assert (=> b!564143 m!817247))

(declare-fun m!817249 () Bool)

(assert (=> b!564129 m!817249))

(declare-fun m!817251 () Bool)

(assert (=> b!564129 m!817251))

(declare-fun m!817253 () Bool)

(assert (=> b!564129 m!817253))

(declare-fun m!817255 () Bool)

(assert (=> b!564129 m!817255))

(declare-fun m!817257 () Bool)

(assert (=> b!564129 m!817257))

(declare-fun m!817259 () Bool)

(assert (=> b!564129 m!817259))

(declare-fun m!817261 () Bool)

(assert (=> b!564129 m!817261))

(declare-fun m!817263 () Bool)

(assert (=> b!564129 m!817263))

(assert (=> b!564129 m!817257))

(declare-fun m!817265 () Bool)

(assert (=> b!564147 m!817265))

(declare-fun m!817267 () Bool)

(assert (=> b!564159 m!817267))

(declare-fun m!817269 () Bool)

(assert (=> b!564133 m!817269))

(declare-fun m!817271 () Bool)

(assert (=> b!564133 m!817271))

(declare-fun m!817273 () Bool)

(assert (=> b!564145 m!817273))

(declare-fun m!817275 () Bool)

(assert (=> b!564148 m!817275))

(declare-fun m!817277 () Bool)

(assert (=> b!564142 m!817277))

(declare-fun m!817279 () Bool)

(assert (=> b!564144 m!817279))

(declare-fun m!817281 () Bool)

(assert (=> b!564144 m!817281))

(declare-fun m!817283 () Bool)

(assert (=> b!564144 m!817283))

(declare-fun m!817285 () Bool)

(assert (=> b!564144 m!817285))

(declare-fun m!817287 () Bool)

(assert (=> b!564144 m!817287))

(declare-fun m!817289 () Bool)

(assert (=> b!564144 m!817289))

(declare-fun m!817291 () Bool)

(assert (=> b!564144 m!817291))

(declare-fun m!817293 () Bool)

(assert (=> b!564144 m!817293))

(declare-fun m!817295 () Bool)

(assert (=> b!564144 m!817295))

(declare-fun m!817297 () Bool)

(assert (=> b!564144 m!817297))

(declare-fun m!817299 () Bool)

(assert (=> b!564144 m!817299))

(declare-fun m!817301 () Bool)

(assert (=> b!564144 m!817301))

(declare-fun m!817303 () Bool)

(assert (=> b!564144 m!817303))

(declare-fun m!817305 () Bool)

(assert (=> b!564144 m!817305))

(declare-fun m!817307 () Bool)

(assert (=> b!564144 m!817307))

(declare-fun m!817309 () Bool)

(assert (=> b!564144 m!817309))

(declare-fun m!817311 () Bool)

(assert (=> b!564144 m!817311))

(declare-fun m!817313 () Bool)

(assert (=> b!564144 m!817313))

(declare-fun m!817315 () Bool)

(assert (=> b!564144 m!817315))

(assert (=> b!564144 m!817301))

(declare-fun m!817317 () Bool)

(assert (=> b!564144 m!817317))

(declare-fun m!817319 () Bool)

(assert (=> b!564144 m!817319))

(declare-fun m!817321 () Bool)

(assert (=> b!564144 m!817321))

(declare-fun m!817323 () Bool)

(assert (=> b!564144 m!817323))

(declare-fun m!817325 () Bool)

(assert (=> b!564144 m!817325))

(assert (=> b!564144 m!817297))

(declare-fun m!817327 () Bool)

(assert (=> b!564144 m!817327))

(declare-fun m!817329 () Bool)

(assert (=> b!564144 m!817329))

(declare-fun m!817331 () Bool)

(assert (=> b!564144 m!817331))

(declare-fun m!817333 () Bool)

(assert (=> b!564132 m!817333))

(declare-fun m!817335 () Bool)

(assert (=> b!564146 m!817335))

(declare-fun m!817337 () Bool)

(assert (=> b!564157 m!817337))

(declare-fun m!817339 () Bool)

(assert (=> b!564140 m!817339))

(declare-fun m!817341 () Bool)

(assert (=> b!564140 m!817341))

(declare-fun m!817343 () Bool)

(assert (=> b!564140 m!817343))

(check-sat (not b!564148) (not b!564147) (not b!564132) (not b_next!15697) (not b!564151) b_and!55011 (not b!564158) (not b!564143) b_and!55015 (not b!564144) (not b!564149) (not b_next!15695) (not start!51944) (not b!564140) (not b_next!15693) (not b!564152) (not b!564153) (not b!564129) (not b_next!15699) (not b!564156) (not b!564146) (not b!564138) (not b!564142) (not b!564135) (not b!564134) b_and!55013 (not b!564133) (not b!564139) (not b!564157) (not b!564145) (not b!564159) tp_is_empty!3149 (not b!564150) b_and!55017)
(check-sat (not b_next!15697) (not b_next!15693) b_and!55011 b_and!55015 (not b_next!15699) b_and!55013 (not b_next!15695) b_and!55017)
(get-model)

(declare-fun b!564228 () Bool)

(declare-fun res!241461 () Bool)

(declare-fun e!340852 () Bool)

(assert (=> b!564228 (=> (not res!241461) (not e!340852))))

(declare-fun tail!737 (List!5554) List!5554)

(assert (=> b!564228 (= res!241461 (isEmpty!4004 (tail!737 input!2705)))))

(declare-fun b!564229 () Bool)

(declare-fun e!340850 () Bool)

(declare-fun e!340849 () Bool)

(assert (=> b!564229 (= e!340850 e!340849)))

(declare-fun res!241464 () Bool)

(assert (=> b!564229 (=> res!241464 e!340849)))

(declare-fun call!39310 () Bool)

(assert (=> b!564229 (= res!241464 call!39310)))

(declare-fun b!564230 () Bool)

(declare-fun head!1208 (List!5554) C!3716)

(assert (=> b!564230 (= e!340849 (not (= (head!1208 input!2705) (c!106063 (regex!1063 (rule!1797 token!491))))))))

(declare-fun b!564231 () Bool)

(declare-fun e!340851 () Bool)

(declare-fun nullable!371 (Regex!1397) Bool)

(assert (=> b!564231 (= e!340851 (nullable!371 (regex!1063 (rule!1797 token!491))))))

(declare-fun b!564232 () Bool)

(declare-fun derivativeStep!285 (Regex!1397 C!3716) Regex!1397)

(assert (=> b!564232 (= e!340851 (matchR!544 (derivativeStep!285 (regex!1063 (rule!1797 token!491)) (head!1208 input!2705)) (tail!737 input!2705)))))

(declare-fun b!564233 () Bool)

(declare-fun e!340854 () Bool)

(declare-fun lt!237274 () Bool)

(assert (=> b!564233 (= e!340854 (= lt!237274 call!39310))))

(declare-fun d!197919 () Bool)

(assert (=> d!197919 e!340854))

(declare-fun c!106078 () Bool)

(assert (=> d!197919 (= c!106078 ((_ is EmptyExpr!1397) (regex!1063 (rule!1797 token!491))))))

(assert (=> d!197919 (= lt!237274 e!340851)))

(declare-fun c!106079 () Bool)

(assert (=> d!197919 (= c!106079 (isEmpty!4004 input!2705))))

(declare-fun validRegex!466 (Regex!1397) Bool)

(assert (=> d!197919 (validRegex!466 (regex!1063 (rule!1797 token!491)))))

(assert (=> d!197919 (= (matchR!544 (regex!1063 (rule!1797 token!491)) input!2705) lt!237274)))

(declare-fun b!564234 () Bool)

(declare-fun res!241465 () Bool)

(declare-fun e!340853 () Bool)

(assert (=> b!564234 (=> res!241465 e!340853)))

(assert (=> b!564234 (= res!241465 (not ((_ is ElementMatch!1397) (regex!1063 (rule!1797 token!491)))))))

(declare-fun e!340855 () Bool)

(assert (=> b!564234 (= e!340855 e!340853)))

(declare-fun bm!39305 () Bool)

(assert (=> bm!39305 (= call!39310 (isEmpty!4004 input!2705))))

(declare-fun b!564235 () Bool)

(assert (=> b!564235 (= e!340854 e!340855)))

(declare-fun c!106077 () Bool)

(assert (=> b!564235 (= c!106077 ((_ is EmptyLang!1397) (regex!1063 (rule!1797 token!491))))))

(declare-fun b!564236 () Bool)

(assert (=> b!564236 (= e!340852 (= (head!1208 input!2705) (c!106063 (regex!1063 (rule!1797 token!491)))))))

(declare-fun b!564237 () Bool)

(declare-fun res!241463 () Bool)

(assert (=> b!564237 (=> (not res!241463) (not e!340852))))

(assert (=> b!564237 (= res!241463 (not call!39310))))

(declare-fun b!564238 () Bool)

(assert (=> b!564238 (= e!340855 (not lt!237274))))

(declare-fun b!564239 () Bool)

(assert (=> b!564239 (= e!340853 e!340850)))

(declare-fun res!241466 () Bool)

(assert (=> b!564239 (=> (not res!241466) (not e!340850))))

(assert (=> b!564239 (= res!241466 (not lt!237274))))

(declare-fun b!564240 () Bool)

(declare-fun res!241460 () Bool)

(assert (=> b!564240 (=> res!241460 e!340849)))

(assert (=> b!564240 (= res!241460 (not (isEmpty!4004 (tail!737 input!2705))))))

(declare-fun b!564241 () Bool)

(declare-fun res!241462 () Bool)

(assert (=> b!564241 (=> res!241462 e!340853)))

(assert (=> b!564241 (= res!241462 e!340852)))

(declare-fun res!241459 () Bool)

(assert (=> b!564241 (=> (not res!241459) (not e!340852))))

(assert (=> b!564241 (= res!241459 lt!237274)))

(assert (= (and d!197919 c!106079) b!564231))

(assert (= (and d!197919 (not c!106079)) b!564232))

(assert (= (and d!197919 c!106078) b!564233))

(assert (= (and d!197919 (not c!106078)) b!564235))

(assert (= (and b!564235 c!106077) b!564238))

(assert (= (and b!564235 (not c!106077)) b!564234))

(assert (= (and b!564234 (not res!241465)) b!564241))

(assert (= (and b!564241 res!241459) b!564237))

(assert (= (and b!564237 res!241463) b!564228))

(assert (= (and b!564228 res!241461) b!564236))

(assert (= (and b!564241 (not res!241462)) b!564239))

(assert (= (and b!564239 res!241466) b!564229))

(assert (= (and b!564229 (not res!241464)) b!564240))

(assert (= (and b!564240 (not res!241460)) b!564230))

(assert (= (or b!564233 b!564229 b!564237) bm!39305))

(declare-fun m!817367 () Bool)

(assert (=> b!564232 m!817367))

(assert (=> b!564232 m!817367))

(declare-fun m!817369 () Bool)

(assert (=> b!564232 m!817369))

(declare-fun m!817371 () Bool)

(assert (=> b!564232 m!817371))

(assert (=> b!564232 m!817369))

(assert (=> b!564232 m!817371))

(declare-fun m!817373 () Bool)

(assert (=> b!564232 m!817373))

(assert (=> bm!39305 m!817237))

(assert (=> d!197919 m!817237))

(declare-fun m!817375 () Bool)

(assert (=> d!197919 m!817375))

(assert (=> b!564236 m!817367))

(assert (=> b!564228 m!817371))

(assert (=> b!564228 m!817371))

(declare-fun m!817377 () Bool)

(assert (=> b!564228 m!817377))

(assert (=> b!564230 m!817367))

(declare-fun m!817379 () Bool)

(assert (=> b!564231 m!817379))

(assert (=> b!564240 m!817371))

(assert (=> b!564240 m!817371))

(assert (=> b!564240 m!817377))

(assert (=> b!564145 d!197919))

(declare-fun d!197929 () Bool)

(assert (=> d!197929 (and (= lt!237252 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!237284 () Unit!9911)

(declare-fun choose!4002 (List!5554 List!5554 List!5554 List!5554) Unit!9911)

(assert (=> d!197929 (= lt!237284 (choose!4002 lt!237252 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!197929 (= (++!1551 lt!237252 suffix!1342) (++!1551 input!2705 suffix!1342))))

(assert (=> d!197929 (= (lemmaConcatSameAndSameSizesThenSameLists!140 lt!237252 suffix!1342 input!2705 suffix!1342) lt!237284)))

(declare-fun bs!68624 () Bool)

(assert (= bs!68624 d!197929))

(declare-fun m!817387 () Bool)

(assert (=> bs!68624 m!817387))

(assert (=> bs!68624 m!817335))

(assert (=> bs!68624 m!817343))

(assert (=> b!564144 d!197929))

(declare-fun d!197937 () Bool)

(assert (=> d!197937 (= (_2!3538 (v!16256 lt!237237)) lt!237260)))

(declare-fun lt!237290 () Unit!9911)

(declare-fun choose!4003 (List!5554 List!5554 List!5554 List!5554 List!5554) Unit!9911)

(assert (=> d!197937 (= lt!237290 (choose!4003 lt!237259 (_2!3538 (v!16256 lt!237237)) lt!237259 lt!237260 input!2705))))

(assert (=> d!197937 (isPrefix!697 lt!237259 input!2705)))

(assert (=> d!197937 (= (lemmaSamePrefixThenSameSuffix!420 lt!237259 (_2!3538 (v!16256 lt!237237)) lt!237259 lt!237260 input!2705) lt!237290)))

(declare-fun bs!68626 () Bool)

(assert (= bs!68626 d!197937))

(declare-fun m!817401 () Bool)

(assert (=> bs!68626 m!817401))

(declare-fun m!817403 () Bool)

(assert (=> bs!68626 m!817403))

(assert (=> b!564144 d!197937))

(declare-fun b!564288 () Bool)

(declare-fun e!340885 () Bool)

(assert (=> b!564288 (= e!340885 (>= (size!4423 lt!237244) (size!4423 lt!237259)))))

(declare-fun d!197945 () Bool)

(assert (=> d!197945 e!340885))

(declare-fun res!241494 () Bool)

(assert (=> d!197945 (=> res!241494 e!340885)))

(declare-fun lt!237293 () Bool)

(assert (=> d!197945 (= res!241494 (not lt!237293))))

(declare-fun e!340886 () Bool)

(assert (=> d!197945 (= lt!237293 e!340886)))

(declare-fun res!241495 () Bool)

(assert (=> d!197945 (=> res!241495 e!340886)))

(assert (=> d!197945 (= res!241495 ((_ is Nil!5544) lt!237259))))

(assert (=> d!197945 (= (isPrefix!697 lt!237259 lt!237244) lt!237293)))

(declare-fun b!564287 () Bool)

(declare-fun e!340884 () Bool)

(assert (=> b!564287 (= e!340884 (isPrefix!697 (tail!737 lt!237259) (tail!737 lt!237244)))))

(declare-fun b!564286 () Bool)

(declare-fun res!241493 () Bool)

(assert (=> b!564286 (=> (not res!241493) (not e!340884))))

(assert (=> b!564286 (= res!241493 (= (head!1208 lt!237259) (head!1208 lt!237244)))))

(declare-fun b!564285 () Bool)

(assert (=> b!564285 (= e!340886 e!340884)))

(declare-fun res!241492 () Bool)

(assert (=> b!564285 (=> (not res!241492) (not e!340884))))

(assert (=> b!564285 (= res!241492 (not ((_ is Nil!5544) lt!237244)))))

(assert (= (and d!197945 (not res!241495)) b!564285))

(assert (= (and b!564285 res!241492) b!564286))

(assert (= (and b!564286 res!241493) b!564287))

(assert (= (and d!197945 (not res!241494)) b!564288))

(declare-fun m!817405 () Bool)

(assert (=> b!564288 m!817405))

(assert (=> b!564288 m!817307))

(declare-fun m!817407 () Bool)

(assert (=> b!564287 m!817407))

(declare-fun m!817409 () Bool)

(assert (=> b!564287 m!817409))

(assert (=> b!564287 m!817407))

(assert (=> b!564287 m!817409))

(declare-fun m!817411 () Bool)

(assert (=> b!564287 m!817411))

(declare-fun m!817413 () Bool)

(assert (=> b!564286 m!817413))

(declare-fun m!817415 () Bool)

(assert (=> b!564286 m!817415))

(assert (=> b!564144 d!197945))

(declare-fun b!564292 () Bool)

(declare-fun e!340888 () Bool)

(assert (=> b!564292 (= e!340888 (>= (size!4423 input!2705) (size!4423 input!2705)))))

(declare-fun d!197947 () Bool)

(assert (=> d!197947 e!340888))

(declare-fun res!241498 () Bool)

(assert (=> d!197947 (=> res!241498 e!340888)))

(declare-fun lt!237294 () Bool)

(assert (=> d!197947 (= res!241498 (not lt!237294))))

(declare-fun e!340889 () Bool)

(assert (=> d!197947 (= lt!237294 e!340889)))

(declare-fun res!241499 () Bool)

(assert (=> d!197947 (=> res!241499 e!340889)))

(assert (=> d!197947 (= res!241499 ((_ is Nil!5544) input!2705))))

(assert (=> d!197947 (= (isPrefix!697 input!2705 input!2705) lt!237294)))

(declare-fun b!564291 () Bool)

(declare-fun e!340887 () Bool)

(assert (=> b!564291 (= e!340887 (isPrefix!697 (tail!737 input!2705) (tail!737 input!2705)))))

(declare-fun b!564290 () Bool)

(declare-fun res!241497 () Bool)

(assert (=> b!564290 (=> (not res!241497) (not e!340887))))

(assert (=> b!564290 (= res!241497 (= (head!1208 input!2705) (head!1208 input!2705)))))

(declare-fun b!564289 () Bool)

(assert (=> b!564289 (= e!340889 e!340887)))

(declare-fun res!241496 () Bool)

(assert (=> b!564289 (=> (not res!241496) (not e!340887))))

(assert (=> b!564289 (= res!241496 (not ((_ is Nil!5544) input!2705)))))

(assert (= (and d!197947 (not res!241499)) b!564289))

(assert (= (and b!564289 res!241496) b!564290))

(assert (= (and b!564290 res!241497) b!564291))

(assert (= (and d!197947 (not res!241498)) b!564292))

(declare-fun m!817417 () Bool)

(assert (=> b!564292 m!817417))

(assert (=> b!564292 m!817417))

(assert (=> b!564291 m!817371))

(assert (=> b!564291 m!817371))

(assert (=> b!564291 m!817371))

(assert (=> b!564291 m!817371))

(declare-fun m!817419 () Bool)

(assert (=> b!564291 m!817419))

(assert (=> b!564290 m!817367))

(assert (=> b!564290 m!817367))

(assert (=> b!564144 d!197947))

(declare-fun d!197949 () Bool)

(assert (=> d!197949 (= (size!4422 (_1!3538 (v!16256 lt!237237))) (size!4423 (originalCharacters!1102 (_1!3538 (v!16256 lt!237237)))))))

(declare-fun Unit!9915 () Unit!9911)

(assert (=> d!197949 (= (lemmaCharactersSize!130 (_1!3538 (v!16256 lt!237237))) Unit!9915)))

(declare-fun bs!68627 () Bool)

(assert (= bs!68627 d!197949))

(assert (=> bs!68627 m!817275))

(assert (=> b!564144 d!197949))

(declare-fun d!197951 () Bool)

(declare-fun dynLambda!3218 (Int BalanceConc!3568) TokenValue!1087)

(assert (=> d!197951 (= (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (seqFromList!1251 lt!237259)) (dynLambda!3218 (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (seqFromList!1251 lt!237259)))))

(declare-fun b_lambda!21757 () Bool)

(assert (=> (not b_lambda!21757) (not d!197951)))

(declare-fun tb!49195 () Bool)

(declare-fun t!76193 () Bool)

(assert (=> (and b!564155 (= (toValue!1918 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76193) tb!49195))

(declare-fun result!55038 () Bool)

(assert (=> tb!49195 (= result!55038 (inv!21 (dynLambda!3218 (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (seqFromList!1251 lt!237259))))))

(declare-fun m!817421 () Bool)

(assert (=> tb!49195 m!817421))

(assert (=> d!197951 t!76193))

(declare-fun b_and!55019 () Bool)

(assert (= b_and!55011 (and (=> t!76193 result!55038) b_and!55019)))

(declare-fun t!76195 () Bool)

(declare-fun tb!49197 () Bool)

(assert (=> (and b!564136 (= (toValue!1918 (transformation!1063 (h!10947 rules!3103))) (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76195) tb!49197))

(declare-fun result!55042 () Bool)

(assert (= result!55042 result!55038))

(assert (=> d!197951 t!76195))

(declare-fun b_and!55021 () Bool)

(assert (= b_and!55015 (and (=> t!76195 result!55042) b_and!55021)))

(assert (=> d!197951 m!817297))

(declare-fun m!817423 () Bool)

(assert (=> d!197951 m!817423))

(assert (=> b!564144 d!197951))

(declare-fun d!197953 () Bool)

(declare-fun lt!237307 () Int)

(assert (=> d!197953 (>= lt!237307 0)))

(declare-fun e!340901 () Int)

(assert (=> d!197953 (= lt!237307 e!340901)))

(declare-fun c!106093 () Bool)

(assert (=> d!197953 (= c!106093 ((_ is Nil!5544) lt!237252))))

(assert (=> d!197953 (= (size!4423 lt!237252) lt!237307)))

(declare-fun b!564317 () Bool)

(assert (=> b!564317 (= e!340901 0)))

(declare-fun b!564318 () Bool)

(assert (=> b!564318 (= e!340901 (+ 1 (size!4423 (t!76189 lt!237252))))))

(assert (= (and d!197953 c!106093) b!564317))

(assert (= (and d!197953 (not c!106093)) b!564318))

(declare-fun m!817425 () Bool)

(assert (=> b!564318 m!817425))

(assert (=> b!564144 d!197953))

(declare-fun d!197955 () Bool)

(declare-fun res!241525 () Bool)

(declare-fun e!340907 () Bool)

(assert (=> d!197955 (=> (not res!241525) (not e!340907))))

(assert (=> d!197955 (= res!241525 (validRegex!466 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))))))

(assert (=> d!197955 (= (ruleValid!273 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237)))) e!340907)))

(declare-fun b!564332 () Bool)

(declare-fun res!241526 () Bool)

(assert (=> b!564332 (=> (not res!241526) (not e!340907))))

(assert (=> b!564332 (= res!241526 (not (nullable!371 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))))))

(declare-fun b!564333 () Bool)

(assert (=> b!564333 (= e!340907 (not (= (tag!1325 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (String!7180 ""))))))

(assert (= (and d!197955 res!241525) b!564332))

(assert (= (and b!564332 res!241526) b!564333))

(declare-fun m!817461 () Bool)

(assert (=> d!197955 m!817461))

(declare-fun m!817463 () Bool)

(assert (=> b!564332 m!817463))

(assert (=> b!564144 d!197955))

(declare-fun b!564337 () Bool)

(declare-fun e!340909 () Bool)

(assert (=> b!564337 (= e!340909 (>= (size!4423 lt!237263) (size!4423 input!2705)))))

(declare-fun d!197959 () Bool)

(assert (=> d!197959 e!340909))

(declare-fun res!241529 () Bool)

(assert (=> d!197959 (=> res!241529 e!340909)))

(declare-fun lt!237313 () Bool)

(assert (=> d!197959 (= res!241529 (not lt!237313))))

(declare-fun e!340910 () Bool)

(assert (=> d!197959 (= lt!237313 e!340910)))

(declare-fun res!241530 () Bool)

(assert (=> d!197959 (=> res!241530 e!340910)))

(assert (=> d!197959 (= res!241530 ((_ is Nil!5544) input!2705))))

(assert (=> d!197959 (= (isPrefix!697 input!2705 lt!237263) lt!237313)))

(declare-fun b!564336 () Bool)

(declare-fun e!340908 () Bool)

(assert (=> b!564336 (= e!340908 (isPrefix!697 (tail!737 input!2705) (tail!737 lt!237263)))))

(declare-fun b!564335 () Bool)

(declare-fun res!241528 () Bool)

(assert (=> b!564335 (=> (not res!241528) (not e!340908))))

(assert (=> b!564335 (= res!241528 (= (head!1208 input!2705) (head!1208 lt!237263)))))

(declare-fun b!564334 () Bool)

(assert (=> b!564334 (= e!340910 e!340908)))

(declare-fun res!241527 () Bool)

(assert (=> b!564334 (=> (not res!241527) (not e!340908))))

(assert (=> b!564334 (= res!241527 (not ((_ is Nil!5544) lt!237263)))))

(assert (= (and d!197959 (not res!241530)) b!564334))

(assert (= (and b!564334 res!241527) b!564335))

(assert (= (and b!564335 res!241528) b!564336))

(assert (= (and d!197959 (not res!241529)) b!564337))

(declare-fun m!817465 () Bool)

(assert (=> b!564337 m!817465))

(assert (=> b!564337 m!817417))

(assert (=> b!564336 m!817371))

(declare-fun m!817467 () Bool)

(assert (=> b!564336 m!817467))

(assert (=> b!564336 m!817371))

(assert (=> b!564336 m!817467))

(declare-fun m!817469 () Bool)

(assert (=> b!564336 m!817469))

(assert (=> b!564335 m!817367))

(declare-fun m!817471 () Bool)

(assert (=> b!564335 m!817471))

(assert (=> b!564144 d!197959))

(declare-fun d!197961 () Bool)

(declare-fun lt!237314 () Int)

(assert (=> d!197961 (>= lt!237314 0)))

(declare-fun e!340911 () Int)

(assert (=> d!197961 (= lt!237314 e!340911)))

(declare-fun c!106095 () Bool)

(assert (=> d!197961 (= c!106095 ((_ is Nil!5544) lt!237259))))

(assert (=> d!197961 (= (size!4423 lt!237259) lt!237314)))

(declare-fun b!564338 () Bool)

(assert (=> b!564338 (= e!340911 0)))

(declare-fun b!564339 () Bool)

(assert (=> b!564339 (= e!340911 (+ 1 (size!4423 (t!76189 lt!237259))))))

(assert (= (and d!197961 c!106095) b!564338))

(assert (= (and d!197961 (not c!106095)) b!564339))

(declare-fun m!817473 () Bool)

(assert (=> b!564339 m!817473))

(assert (=> b!564144 d!197961))

(declare-fun b!564347 () Bool)

(declare-fun e!340915 () Bool)

(assert (=> b!564347 (= e!340915 (>= (size!4423 lt!237239) (size!4423 input!2705)))))

(declare-fun d!197963 () Bool)

(assert (=> d!197963 e!340915))

(declare-fun res!241533 () Bool)

(assert (=> d!197963 (=> res!241533 e!340915)))

(declare-fun lt!237317 () Bool)

(assert (=> d!197963 (= res!241533 (not lt!237317))))

(declare-fun e!340916 () Bool)

(assert (=> d!197963 (= lt!237317 e!340916)))

(declare-fun res!241534 () Bool)

(assert (=> d!197963 (=> res!241534 e!340916)))

(assert (=> d!197963 (= res!241534 ((_ is Nil!5544) input!2705))))

(assert (=> d!197963 (= (isPrefix!697 input!2705 lt!237239) lt!237317)))

(declare-fun b!564346 () Bool)

(declare-fun e!340914 () Bool)

(assert (=> b!564346 (= e!340914 (isPrefix!697 (tail!737 input!2705) (tail!737 lt!237239)))))

(declare-fun b!564345 () Bool)

(declare-fun res!241532 () Bool)

(assert (=> b!564345 (=> (not res!241532) (not e!340914))))

(assert (=> b!564345 (= res!241532 (= (head!1208 input!2705) (head!1208 lt!237239)))))

(declare-fun b!564344 () Bool)

(assert (=> b!564344 (= e!340916 e!340914)))

(declare-fun res!241531 () Bool)

(assert (=> b!564344 (=> (not res!241531) (not e!340914))))

(assert (=> b!564344 (= res!241531 (not ((_ is Nil!5544) lt!237239)))))

(assert (= (and d!197963 (not res!241534)) b!564344))

(assert (= (and b!564344 res!241531) b!564345))

(assert (= (and b!564345 res!241532) b!564346))

(assert (= (and d!197963 (not res!241533)) b!564347))

(declare-fun m!817475 () Bool)

(assert (=> b!564347 m!817475))

(assert (=> b!564347 m!817417))

(assert (=> b!564346 m!817371))

(declare-fun m!817477 () Bool)

(assert (=> b!564346 m!817477))

(assert (=> b!564346 m!817371))

(assert (=> b!564346 m!817477))

(declare-fun m!817479 () Bool)

(assert (=> b!564346 m!817479))

(assert (=> b!564345 m!817367))

(declare-fun m!817481 () Bool)

(assert (=> b!564345 m!817481))

(assert (=> b!564144 d!197963))

(declare-fun d!197965 () Bool)

(assert (=> d!197965 (ruleValid!273 thiss!22590 (rule!1797 token!491))))

(declare-fun lt!237321 () Unit!9911)

(declare-fun choose!4006 (LexerInterface!949 Rule!1926 List!5556) Unit!9911)

(assert (=> d!197965 (= lt!237321 (choose!4006 thiss!22590 (rule!1797 token!491) rules!3103))))

(assert (=> d!197965 (contains!1297 rules!3103 (rule!1797 token!491))))

(assert (=> d!197965 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!130 thiss!22590 (rule!1797 token!491) rules!3103) lt!237321)))

(declare-fun bs!68628 () Bool)

(assert (= bs!68628 d!197965))

(assert (=> bs!68628 m!817287))

(declare-fun m!817503 () Bool)

(assert (=> bs!68628 m!817503))

(assert (=> bs!68628 m!817277))

(assert (=> b!564144 d!197965))

(declare-fun d!197977 () Bool)

(assert (=> d!197977 (isPrefix!697 input!2705 (++!1551 input!2705 suffix!1342))))

(declare-fun lt!237324 () Unit!9911)

(declare-fun choose!4007 (List!5554 List!5554) Unit!9911)

(assert (=> d!197977 (= lt!237324 (choose!4007 input!2705 suffix!1342))))

(assert (=> d!197977 (= (lemmaConcatTwoListThenFirstIsPrefix!544 input!2705 suffix!1342) lt!237324)))

(declare-fun bs!68629 () Bool)

(assert (= bs!68629 d!197977))

(assert (=> bs!68629 m!817343))

(assert (=> bs!68629 m!817343))

(declare-fun m!817505 () Bool)

(assert (=> bs!68629 m!817505))

(declare-fun m!817507 () Bool)

(assert (=> bs!68629 m!817507))

(assert (=> b!564144 d!197977))

(declare-fun d!197979 () Bool)

(declare-fun list!2303 (Conc!1780) List!5554)

(assert (=> d!197979 (= (list!2301 (charsOf!692 (_1!3538 (v!16256 lt!237237)))) (list!2303 (c!106064 (charsOf!692 (_1!3538 (v!16256 lt!237237))))))))

(declare-fun bs!68630 () Bool)

(assert (= bs!68630 d!197979))

(declare-fun m!817509 () Bool)

(assert (=> bs!68630 m!817509))

(assert (=> b!564144 d!197979))

(declare-fun d!197981 () Bool)

(declare-fun res!241545 () Bool)

(declare-fun e!340925 () Bool)

(assert (=> d!197981 (=> (not res!241545) (not e!340925))))

(assert (=> d!197981 (= res!241545 (validRegex!466 (regex!1063 (rule!1797 token!491))))))

(assert (=> d!197981 (= (ruleValid!273 thiss!22590 (rule!1797 token!491)) e!340925)))

(declare-fun b!564360 () Bool)

(declare-fun res!241546 () Bool)

(assert (=> b!564360 (=> (not res!241546) (not e!340925))))

(assert (=> b!564360 (= res!241546 (not (nullable!371 (regex!1063 (rule!1797 token!491)))))))

(declare-fun b!564361 () Bool)

(assert (=> b!564361 (= e!340925 (not (= (tag!1325 (rule!1797 token!491)) (String!7180 ""))))))

(assert (= (and d!197981 res!241545) b!564360))

(assert (= (and b!564360 res!241546) b!564361))

(assert (=> d!197981 m!817375))

(assert (=> b!564360 m!817379))

(assert (=> b!564144 d!197981))

(declare-fun d!197983 () Bool)

(assert (=> d!197983 (isPrefix!697 input!2705 input!2705)))

(declare-fun lt!237327 () Unit!9911)

(declare-fun choose!4008 (List!5554 List!5554) Unit!9911)

(assert (=> d!197983 (= lt!237327 (choose!4008 input!2705 input!2705))))

(assert (=> d!197983 (= (lemmaIsPrefixRefl!435 input!2705 input!2705) lt!237327)))

(declare-fun bs!68631 () Bool)

(assert (= bs!68631 d!197983))

(assert (=> bs!68631 m!817331))

(declare-fun m!817511 () Bool)

(assert (=> bs!68631 m!817511))

(assert (=> b!564144 d!197983))

(declare-fun d!197985 () Bool)

(declare-fun lt!237330 () BalanceConc!3568)

(assert (=> d!197985 (= (list!2301 lt!237330) (originalCharacters!1102 (_1!3538 (v!16256 lt!237237))))))

(declare-fun dynLambda!3220 (Int TokenValue!1087) BalanceConc!3568)

(assert (=> d!197985 (= lt!237330 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (value!35162 (_1!3538 (v!16256 lt!237237)))))))

(assert (=> d!197985 (= (charsOf!692 (_1!3538 (v!16256 lt!237237))) lt!237330)))

(declare-fun b_lambda!21759 () Bool)

(assert (=> (not b_lambda!21759) (not d!197985)))

(declare-fun t!76197 () Bool)

(declare-fun tb!49199 () Bool)

(assert (=> (and b!564155 (= (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76197) tb!49199))

(declare-fun b!564366 () Bool)

(declare-fun e!340928 () Bool)

(declare-fun tp!178105 () Bool)

(declare-fun inv!6970 (Conc!1780) Bool)

(assert (=> b!564366 (= e!340928 (and (inv!6970 (c!106064 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (value!35162 (_1!3538 (v!16256 lt!237237)))))) tp!178105))))

(declare-fun result!55044 () Bool)

(declare-fun inv!6971 (BalanceConc!3568) Bool)

(assert (=> tb!49199 (= result!55044 (and (inv!6971 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (value!35162 (_1!3538 (v!16256 lt!237237))))) e!340928))))

(assert (= tb!49199 b!564366))

(declare-fun m!817513 () Bool)

(assert (=> b!564366 m!817513))

(declare-fun m!817515 () Bool)

(assert (=> tb!49199 m!817515))

(assert (=> d!197985 t!76197))

(declare-fun b_and!55023 () Bool)

(assert (= b_and!55013 (and (=> t!76197 result!55044) b_and!55023)))

(declare-fun t!76199 () Bool)

(declare-fun tb!49201 () Bool)

(assert (=> (and b!564136 (= (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76199) tb!49201))

(declare-fun result!55048 () Bool)

(assert (= result!55048 result!55044))

(assert (=> d!197985 t!76199))

(declare-fun b_and!55025 () Bool)

(assert (= b_and!55017 (and (=> t!76199 result!55048) b_and!55025)))

(declare-fun m!817517 () Bool)

(assert (=> d!197985 m!817517))

(declare-fun m!817519 () Bool)

(assert (=> d!197985 m!817519))

(assert (=> b!564144 d!197985))

(declare-fun b!564375 () Bool)

(declare-fun e!340934 () List!5554)

(assert (=> b!564375 (= e!340934 (_2!3538 (v!16256 lt!237237)))))

(declare-fun d!197987 () Bool)

(declare-fun e!340933 () Bool)

(assert (=> d!197987 e!340933))

(declare-fun res!241551 () Bool)

(assert (=> d!197987 (=> (not res!241551) (not e!340933))))

(declare-fun lt!237333 () List!5554)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!974 (List!5554) (InoxSet C!3716))

(assert (=> d!197987 (= res!241551 (= (content!974 lt!237333) ((_ map or) (content!974 lt!237259) (content!974 (_2!3538 (v!16256 lt!237237))))))))

(assert (=> d!197987 (= lt!237333 e!340934)))

(declare-fun c!106101 () Bool)

(assert (=> d!197987 (= c!106101 ((_ is Nil!5544) lt!237259))))

(assert (=> d!197987 (= (++!1551 lt!237259 (_2!3538 (v!16256 lt!237237))) lt!237333)))

(declare-fun b!564376 () Bool)

(assert (=> b!564376 (= e!340934 (Cons!5544 (h!10945 lt!237259) (++!1551 (t!76189 lt!237259) (_2!3538 (v!16256 lt!237237)))))))

(declare-fun b!564378 () Bool)

(assert (=> b!564378 (= e!340933 (or (not (= (_2!3538 (v!16256 lt!237237)) Nil!5544)) (= lt!237333 lt!237259)))))

(declare-fun b!564377 () Bool)

(declare-fun res!241552 () Bool)

(assert (=> b!564377 (=> (not res!241552) (not e!340933))))

(assert (=> b!564377 (= res!241552 (= (size!4423 lt!237333) (+ (size!4423 lt!237259) (size!4423 (_2!3538 (v!16256 lt!237237))))))))

(assert (= (and d!197987 c!106101) b!564375))

(assert (= (and d!197987 (not c!106101)) b!564376))

(assert (= (and d!197987 res!241551) b!564377))

(assert (= (and b!564377 res!241552) b!564378))

(declare-fun m!817521 () Bool)

(assert (=> d!197987 m!817521))

(declare-fun m!817523 () Bool)

(assert (=> d!197987 m!817523))

(declare-fun m!817525 () Bool)

(assert (=> d!197987 m!817525))

(declare-fun m!817527 () Bool)

(assert (=> b!564376 m!817527))

(declare-fun m!817529 () Bool)

(assert (=> b!564377 m!817529))

(assert (=> b!564377 m!817307))

(declare-fun m!817531 () Bool)

(assert (=> b!564377 m!817531))

(assert (=> b!564144 d!197987))

(declare-fun d!197989 () Bool)

(assert (=> d!197989 (isPrefix!697 lt!237252 (++!1551 lt!237252 suffix!1342))))

(declare-fun lt!237334 () Unit!9911)

(assert (=> d!197989 (= lt!237334 (choose!4007 lt!237252 suffix!1342))))

(assert (=> d!197989 (= (lemmaConcatTwoListThenFirstIsPrefix!544 lt!237252 suffix!1342) lt!237334)))

(declare-fun bs!68632 () Bool)

(assert (= bs!68632 d!197989))

(assert (=> bs!68632 m!817335))

(assert (=> bs!68632 m!817335))

(declare-fun m!817533 () Bool)

(assert (=> bs!68632 m!817533))

(declare-fun m!817535 () Bool)

(assert (=> bs!68632 m!817535))

(assert (=> b!564144 d!197989))

(declare-fun d!197991 () Bool)

(declare-fun e!340937 () Bool)

(assert (=> d!197991 e!340937))

(declare-fun res!241555 () Bool)

(assert (=> d!197991 (=> (not res!241555) (not e!340937))))

(declare-fun semiInverseModEq!409 (Int Int) Bool)

(assert (=> d!197991 (= res!241555 (semiInverseModEq!409 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))))))

(declare-fun Unit!9916 () Unit!9911)

(assert (=> d!197991 (= (lemmaInv!199 (transformation!1063 (rule!1797 token!491))) Unit!9916)))

(declare-fun b!564381 () Bool)

(declare-fun equivClasses!392 (Int Int) Bool)

(assert (=> b!564381 (= e!340937 (equivClasses!392 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))))))

(assert (= (and d!197991 res!241555) b!564381))

(declare-fun m!817537 () Bool)

(assert (=> d!197991 m!817537))

(declare-fun m!817539 () Bool)

(assert (=> b!564381 m!817539))

(assert (=> b!564144 d!197991))

(declare-fun d!197993 () Bool)

(assert (=> d!197993 (ruleValid!273 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))))))

(declare-fun lt!237335 () Unit!9911)

(assert (=> d!197993 (= lt!237335 (choose!4006 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) rules!3103))))

(assert (=> d!197993 (contains!1297 rules!3103 (rule!1797 (_1!3538 (v!16256 lt!237237))))))

(assert (=> d!197993 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!130 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) rules!3103) lt!237335)))

(declare-fun bs!68633 () Bool)

(assert (= bs!68633 d!197993))

(assert (=> bs!68633 m!817313))

(declare-fun m!817541 () Bool)

(assert (=> bs!68633 m!817541))

(declare-fun m!817543 () Bool)

(assert (=> bs!68633 m!817543))

(assert (=> b!564144 d!197993))

(declare-fun d!197995 () Bool)

(assert (=> d!197995 (= (size!4422 token!491) (size!4423 (originalCharacters!1102 token!491)))))

(declare-fun Unit!9918 () Unit!9911)

(assert (=> d!197995 (= (lemmaCharactersSize!130 token!491) Unit!9918)))

(declare-fun bs!68634 () Bool)

(assert (= bs!68634 d!197995))

(assert (=> bs!68634 m!817239))

(assert (=> b!564144 d!197995))

(declare-fun d!197997 () Bool)

(assert (=> d!197997 (isPrefix!697 lt!237259 (++!1551 lt!237259 (_2!3538 (v!16256 lt!237237))))))

(declare-fun lt!237336 () Unit!9911)

(assert (=> d!197997 (= lt!237336 (choose!4007 lt!237259 (_2!3538 (v!16256 lt!237237))))))

(assert (=> d!197997 (= (lemmaConcatTwoListThenFirstIsPrefix!544 lt!237259 (_2!3538 (v!16256 lt!237237))) lt!237336)))

(declare-fun bs!68635 () Bool)

(assert (= bs!68635 d!197997))

(assert (=> bs!68635 m!817309))

(assert (=> bs!68635 m!817309))

(declare-fun m!817545 () Bool)

(assert (=> bs!68635 m!817545))

(declare-fun m!817547 () Bool)

(assert (=> bs!68635 m!817547))

(assert (=> b!564144 d!197997))

(declare-fun d!197999 () Bool)

(declare-fun lt!237349 () List!5554)

(assert (=> d!197999 (= (++!1551 lt!237259 lt!237349) input!2705)))

(declare-fun e!340948 () List!5554)

(assert (=> d!197999 (= lt!237349 e!340948)))

(declare-fun c!106106 () Bool)

(assert (=> d!197999 (= c!106106 ((_ is Cons!5544) lt!237259))))

(assert (=> d!197999 (>= (size!4423 input!2705) (size!4423 lt!237259))))

(assert (=> d!197999 (= (getSuffix!216 input!2705 lt!237259) lt!237349)))

(declare-fun b!564404 () Bool)

(assert (=> b!564404 (= e!340948 (getSuffix!216 (tail!737 input!2705) (t!76189 lt!237259)))))

(declare-fun b!564405 () Bool)

(assert (=> b!564405 (= e!340948 input!2705)))

(assert (= (and d!197999 c!106106) b!564404))

(assert (= (and d!197999 (not c!106106)) b!564405))

(declare-fun m!817549 () Bool)

(assert (=> d!197999 m!817549))

(assert (=> d!197999 m!817417))

(assert (=> d!197999 m!817307))

(assert (=> b!564404 m!817371))

(assert (=> b!564404 m!817371))

(declare-fun m!817551 () Bool)

(assert (=> b!564404 m!817551))

(assert (=> b!564144 d!197999))

(declare-fun b!564409 () Bool)

(declare-fun e!340950 () Bool)

(assert (=> b!564409 (= e!340950 (>= (size!4423 lt!237263) (size!4423 lt!237252)))))

(declare-fun d!198001 () Bool)

(assert (=> d!198001 e!340950))

(declare-fun res!241572 () Bool)

(assert (=> d!198001 (=> res!241572 e!340950)))

(declare-fun lt!237350 () Bool)

(assert (=> d!198001 (= res!241572 (not lt!237350))))

(declare-fun e!340951 () Bool)

(assert (=> d!198001 (= lt!237350 e!340951)))

(declare-fun res!241573 () Bool)

(assert (=> d!198001 (=> res!241573 e!340951)))

(assert (=> d!198001 (= res!241573 ((_ is Nil!5544) lt!237252))))

(assert (=> d!198001 (= (isPrefix!697 lt!237252 lt!237263) lt!237350)))

(declare-fun b!564408 () Bool)

(declare-fun e!340949 () Bool)

(assert (=> b!564408 (= e!340949 (isPrefix!697 (tail!737 lt!237252) (tail!737 lt!237263)))))

(declare-fun b!564407 () Bool)

(declare-fun res!241571 () Bool)

(assert (=> b!564407 (=> (not res!241571) (not e!340949))))

(assert (=> b!564407 (= res!241571 (= (head!1208 lt!237252) (head!1208 lt!237263)))))

(declare-fun b!564406 () Bool)

(assert (=> b!564406 (= e!340951 e!340949)))

(declare-fun res!241570 () Bool)

(assert (=> b!564406 (=> (not res!241570) (not e!340949))))

(assert (=> b!564406 (= res!241570 (not ((_ is Nil!5544) lt!237263)))))

(assert (= (and d!198001 (not res!241573)) b!564406))

(assert (= (and b!564406 res!241570) b!564407))

(assert (= (and b!564407 res!241571) b!564408))

(assert (= (and d!198001 (not res!241572)) b!564409))

(assert (=> b!564409 m!817465))

(assert (=> b!564409 m!817291))

(declare-fun m!817553 () Bool)

(assert (=> b!564408 m!817553))

(assert (=> b!564408 m!817467))

(assert (=> b!564408 m!817553))

(assert (=> b!564408 m!817467))

(declare-fun m!817555 () Bool)

(assert (=> b!564408 m!817555))

(declare-fun m!817557 () Bool)

(assert (=> b!564407 m!817557))

(assert (=> b!564407 m!817471))

(assert (=> b!564144 d!198001))

(declare-fun d!198003 () Bool)

(declare-fun fromListB!545 (List!5554) BalanceConc!3568)

(assert (=> d!198003 (= (seqFromList!1251 lt!237259) (fromListB!545 lt!237259))))

(declare-fun bs!68636 () Bool)

(assert (= bs!68636 d!198003))

(declare-fun m!817559 () Bool)

(assert (=> bs!68636 m!817559))

(assert (=> b!564144 d!198003))

(declare-fun d!198005 () Bool)

(declare-fun e!340952 () Bool)

(assert (=> d!198005 e!340952))

(declare-fun res!241574 () Bool)

(assert (=> d!198005 (=> (not res!241574) (not e!340952))))

(assert (=> d!198005 (= res!241574 (semiInverseModEq!409 (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))))))

(declare-fun Unit!9919 () Unit!9911)

(assert (=> d!198005 (= (lemmaInv!199 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) Unit!9919)))

(declare-fun b!564410 () Bool)

(assert (=> b!564410 (= e!340952 (equivClasses!392 (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237))))) (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))))))

(assert (= (and d!198005 res!241574) b!564410))

(declare-fun m!817561 () Bool)

(assert (=> d!198005 m!817561))

(declare-fun m!817563 () Bool)

(assert (=> b!564410 m!817563))

(assert (=> b!564144 d!198005))

(declare-fun d!198007 () Bool)

(assert (=> d!198007 (= (inv!6965 (tag!1325 (rule!1797 token!491))) (= (mod (str.len (value!35161 (tag!1325 (rule!1797 token!491)))) 2) 0))))

(assert (=> b!564133 d!198007))

(declare-fun d!198009 () Bool)

(declare-fun res!241584 () Bool)

(declare-fun e!340959 () Bool)

(assert (=> d!198009 (=> (not res!241584) (not e!340959))))

(assert (=> d!198009 (= res!241584 (semiInverseModEq!409 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))))))

(assert (=> d!198009 (= (inv!6968 (transformation!1063 (rule!1797 token!491))) e!340959)))

(declare-fun b!564422 () Bool)

(assert (=> b!564422 (= e!340959 (equivClasses!392 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))))))

(assert (= (and d!198009 res!241584) b!564422))

(assert (=> d!198009 m!817537))

(assert (=> b!564422 m!817539))

(assert (=> b!564133 d!198009))

(declare-fun d!198013 () Bool)

(assert (=> d!198013 (= (inv!6965 (tag!1325 (h!10947 rules!3103))) (= (mod (str.len (value!35161 (tag!1325 (h!10947 rules!3103)))) 2) 0))))

(assert (=> b!564143 d!198013))

(declare-fun d!198015 () Bool)

(declare-fun res!241585 () Bool)

(declare-fun e!340960 () Bool)

(assert (=> d!198015 (=> (not res!241585) (not e!340960))))

(assert (=> d!198015 (= res!241585 (semiInverseModEq!409 (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toValue!1918 (transformation!1063 (h!10947 rules!3103)))))))

(assert (=> d!198015 (= (inv!6968 (transformation!1063 (h!10947 rules!3103))) e!340960)))

(declare-fun b!564423 () Bool)

(assert (=> b!564423 (= e!340960 (equivClasses!392 (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toValue!1918 (transformation!1063 (h!10947 rules!3103)))))))

(assert (= (and d!198015 res!241585) b!564423))

(declare-fun m!817609 () Bool)

(assert (=> d!198015 m!817609))

(declare-fun m!817611 () Bool)

(assert (=> b!564423 m!817611))

(assert (=> b!564143 d!198015))

(declare-fun d!198019 () Bool)

(declare-fun c!106114 () Bool)

(assert (=> d!198019 (= c!106114 ((_ is IntegerValue!3261) (value!35162 token!491)))))

(declare-fun e!340971 () Bool)

(assert (=> d!198019 (= (inv!21 (value!35162 token!491)) e!340971)))

(declare-fun b!564443 () Bool)

(declare-fun e!340973 () Bool)

(declare-fun inv!15 (TokenValue!1087) Bool)

(assert (=> b!564443 (= e!340973 (inv!15 (value!35162 token!491)))))

(declare-fun b!564444 () Bool)

(declare-fun e!340972 () Bool)

(declare-fun inv!17 (TokenValue!1087) Bool)

(assert (=> b!564444 (= e!340972 (inv!17 (value!35162 token!491)))))

(declare-fun b!564445 () Bool)

(declare-fun res!241595 () Bool)

(assert (=> b!564445 (=> res!241595 e!340973)))

(assert (=> b!564445 (= res!241595 (not ((_ is IntegerValue!3263) (value!35162 token!491))))))

(assert (=> b!564445 (= e!340972 e!340973)))

(declare-fun b!564446 () Bool)

(assert (=> b!564446 (= e!340971 e!340972)))

(declare-fun c!106113 () Bool)

(assert (=> b!564446 (= c!106113 ((_ is IntegerValue!3262) (value!35162 token!491)))))

(declare-fun b!564447 () Bool)

(declare-fun inv!16 (TokenValue!1087) Bool)

(assert (=> b!564447 (= e!340971 (inv!16 (value!35162 token!491)))))

(assert (= (and d!198019 c!106114) b!564447))

(assert (= (and d!198019 (not c!106114)) b!564446))

(assert (= (and b!564446 c!106113) b!564444))

(assert (= (and b!564446 (not c!106113)) b!564445))

(assert (= (and b!564445 (not res!241595)) b!564443))

(declare-fun m!817657 () Bool)

(assert (=> b!564443 m!817657))

(declare-fun m!817659 () Bool)

(assert (=> b!564444 m!817659))

(declare-fun m!817661 () Bool)

(assert (=> b!564447 m!817661))

(assert (=> b!564132 d!198019))

(declare-fun d!198025 () Bool)

(declare-fun lt!237364 () Int)

(assert (=> d!198025 (>= lt!237364 0)))

(declare-fun e!340974 () Int)

(assert (=> d!198025 (= lt!237364 e!340974)))

(declare-fun c!106115 () Bool)

(assert (=> d!198025 (= c!106115 ((_ is Nil!5544) (originalCharacters!1102 token!491)))))

(assert (=> d!198025 (= (size!4423 (originalCharacters!1102 token!491)) lt!237364)))

(declare-fun b!564448 () Bool)

(assert (=> b!564448 (= e!340974 0)))

(declare-fun b!564449 () Bool)

(assert (=> b!564449 (= e!340974 (+ 1 (size!4423 (t!76189 (originalCharacters!1102 token!491)))))))

(assert (= (and d!198025 c!106115) b!564448))

(assert (= (and d!198025 (not c!106115)) b!564449))

(declare-fun m!817663 () Bool)

(assert (=> b!564449 m!817663))

(assert (=> b!564153 d!198025))

(declare-fun d!198027 () Bool)

(declare-fun lt!237367 () Bool)

(declare-fun content!975 (List!5556) (InoxSet Rule!1926))

(assert (=> d!198027 (= lt!237367 (select (content!975 rules!3103) (rule!1797 token!491)))))

(declare-fun e!340980 () Bool)

(assert (=> d!198027 (= lt!237367 e!340980)))

(declare-fun res!241601 () Bool)

(assert (=> d!198027 (=> (not res!241601) (not e!340980))))

(assert (=> d!198027 (= res!241601 ((_ is Cons!5546) rules!3103))))

(assert (=> d!198027 (= (contains!1297 rules!3103 (rule!1797 token!491)) lt!237367)))

(declare-fun b!564454 () Bool)

(declare-fun e!340979 () Bool)

(assert (=> b!564454 (= e!340980 e!340979)))

(declare-fun res!241600 () Bool)

(assert (=> b!564454 (=> res!241600 e!340979)))

(assert (=> b!564454 (= res!241600 (= (h!10947 rules!3103) (rule!1797 token!491)))))

(declare-fun b!564455 () Bool)

(assert (=> b!564455 (= e!340979 (contains!1297 (t!76191 rules!3103) (rule!1797 token!491)))))

(assert (= (and d!198027 res!241601) b!564454))

(assert (= (and b!564454 (not res!241600)) b!564455))

(declare-fun m!817665 () Bool)

(assert (=> d!198027 m!817665))

(declare-fun m!817667 () Bool)

(assert (=> d!198027 m!817667))

(declare-fun m!817669 () Bool)

(assert (=> b!564455 m!817669))

(assert (=> b!564142 d!198027))

(declare-fun d!198029 () Bool)

(assert (=> d!198029 (= (get!2109 lt!237253) (v!16256 lt!237253))))

(assert (=> b!564151 d!198029))

(declare-fun d!198031 () Bool)

(declare-fun isEmpty!4006 (Option!1414) Bool)

(assert (=> d!198031 (= (isDefined!1225 lt!237253) (not (isEmpty!4006 lt!237253)))))

(declare-fun bs!68639 () Bool)

(assert (= bs!68639 d!198031))

(declare-fun m!817671 () Bool)

(assert (=> bs!68639 m!817671))

(assert (=> b!564140 d!198031))

(declare-fun b!564544 () Bool)

(declare-fun res!241661 () Bool)

(declare-fun e!341035 () Bool)

(assert (=> b!564544 (=> (not res!241661) (not e!341035))))

(declare-fun lt!237414 () Option!1414)

(assert (=> b!564544 (= res!241661 (= (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237414)))) (originalCharacters!1102 (_1!3538 (get!2109 lt!237414)))))))

(declare-fun bm!39312 () Bool)

(declare-fun call!39317 () Option!1414)

(assert (=> bm!39312 (= call!39317 (maxPrefixOneRule!348 thiss!22590 (h!10947 rules!3103) lt!237239))))

(declare-fun b!564545 () Bool)

(declare-fun e!341036 () Option!1414)

(assert (=> b!564545 (= e!341036 call!39317)))

(declare-fun b!564546 () Bool)

(declare-fun lt!237412 () Option!1414)

(declare-fun lt!237413 () Option!1414)

(assert (=> b!564546 (= e!341036 (ite (and ((_ is None!1413) lt!237412) ((_ is None!1413) lt!237413)) None!1413 (ite ((_ is None!1413) lt!237413) lt!237412 (ite ((_ is None!1413) lt!237412) lt!237413 (ite (>= (size!4422 (_1!3538 (v!16256 lt!237412))) (size!4422 (_1!3538 (v!16256 lt!237413)))) lt!237412 lt!237413)))))))

(assert (=> b!564546 (= lt!237412 call!39317)))

(assert (=> b!564546 (= lt!237413 (maxPrefix!647 thiss!22590 (t!76191 rules!3103) lt!237239))))

(declare-fun b!564547 () Bool)

(declare-fun res!241656 () Bool)

(assert (=> b!564547 (=> (not res!241656) (not e!341035))))

(assert (=> b!564547 (= res!241656 (< (size!4423 (_2!3538 (get!2109 lt!237414))) (size!4423 lt!237239)))))

(declare-fun b!564548 () Bool)

(declare-fun res!241660 () Bool)

(assert (=> b!564548 (=> (not res!241660) (not e!341035))))

(assert (=> b!564548 (= res!241660 (= (++!1551 (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237414)))) (_2!3538 (get!2109 lt!237414))) lt!237239))))

(declare-fun d!198033 () Bool)

(declare-fun e!341034 () Bool)

(assert (=> d!198033 e!341034))

(declare-fun res!241658 () Bool)

(assert (=> d!198033 (=> res!241658 e!341034)))

(assert (=> d!198033 (= res!241658 (isEmpty!4006 lt!237414))))

(assert (=> d!198033 (= lt!237414 e!341036)))

(declare-fun c!106130 () Bool)

(assert (=> d!198033 (= c!106130 (and ((_ is Cons!5546) rules!3103) ((_ is Nil!5546) (t!76191 rules!3103))))))

(declare-fun lt!237415 () Unit!9911)

(declare-fun lt!237416 () Unit!9911)

(assert (=> d!198033 (= lt!237415 lt!237416)))

(assert (=> d!198033 (isPrefix!697 lt!237239 lt!237239)))

(assert (=> d!198033 (= lt!237416 (lemmaIsPrefixRefl!435 lt!237239 lt!237239))))

(declare-fun rulesValidInductive!378 (LexerInterface!949 List!5556) Bool)

(assert (=> d!198033 (rulesValidInductive!378 thiss!22590 rules!3103)))

(assert (=> d!198033 (= (maxPrefix!647 thiss!22590 rules!3103 lt!237239) lt!237414)))

(declare-fun b!564549 () Bool)

(assert (=> b!564549 (= e!341035 (contains!1297 rules!3103 (rule!1797 (_1!3538 (get!2109 lt!237414)))))))

(declare-fun b!564550 () Bool)

(declare-fun res!241655 () Bool)

(assert (=> b!564550 (=> (not res!241655) (not e!341035))))

(assert (=> b!564550 (= res!241655 (= (value!35162 (_1!3538 (get!2109 lt!237414))) (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (get!2109 lt!237414)))) (seqFromList!1251 (originalCharacters!1102 (_1!3538 (get!2109 lt!237414)))))))))

(declare-fun b!564551 () Bool)

(assert (=> b!564551 (= e!341034 e!341035)))

(declare-fun res!241657 () Bool)

(assert (=> b!564551 (=> (not res!241657) (not e!341035))))

(assert (=> b!564551 (= res!241657 (isDefined!1225 lt!237414))))

(declare-fun b!564552 () Bool)

(declare-fun res!241659 () Bool)

(assert (=> b!564552 (=> (not res!241659) (not e!341035))))

(assert (=> b!564552 (= res!241659 (matchR!544 (regex!1063 (rule!1797 (_1!3538 (get!2109 lt!237414)))) (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237414))))))))

(assert (= (and d!198033 c!106130) b!564545))

(assert (= (and d!198033 (not c!106130)) b!564546))

(assert (= (or b!564545 b!564546) bm!39312))

(assert (= (and d!198033 (not res!241658)) b!564551))

(assert (= (and b!564551 res!241657) b!564544))

(assert (= (and b!564544 res!241661) b!564547))

(assert (= (and b!564547 res!241656) b!564548))

(assert (= (and b!564548 res!241660) b!564550))

(assert (= (and b!564550 res!241655) b!564552))

(assert (= (and b!564552 res!241659) b!564549))

(declare-fun m!817801 () Bool)

(assert (=> b!564552 m!817801))

(declare-fun m!817803 () Bool)

(assert (=> b!564552 m!817803))

(assert (=> b!564552 m!817803))

(declare-fun m!817805 () Bool)

(assert (=> b!564552 m!817805))

(assert (=> b!564552 m!817805))

(declare-fun m!817807 () Bool)

(assert (=> b!564552 m!817807))

(declare-fun m!817811 () Bool)

(assert (=> bm!39312 m!817811))

(assert (=> b!564548 m!817801))

(assert (=> b!564548 m!817803))

(assert (=> b!564548 m!817803))

(assert (=> b!564548 m!817805))

(assert (=> b!564548 m!817805))

(declare-fun m!817819 () Bool)

(assert (=> b!564548 m!817819))

(declare-fun m!817821 () Bool)

(assert (=> b!564551 m!817821))

(declare-fun m!817823 () Bool)

(assert (=> d!198033 m!817823))

(declare-fun m!817825 () Bool)

(assert (=> d!198033 m!817825))

(declare-fun m!817827 () Bool)

(assert (=> d!198033 m!817827))

(declare-fun m!817829 () Bool)

(assert (=> d!198033 m!817829))

(assert (=> b!564544 m!817801))

(assert (=> b!564544 m!817803))

(assert (=> b!564544 m!817803))

(assert (=> b!564544 m!817805))

(assert (=> b!564549 m!817801))

(declare-fun m!817835 () Bool)

(assert (=> b!564549 m!817835))

(declare-fun m!817837 () Bool)

(assert (=> b!564546 m!817837))

(assert (=> b!564547 m!817801))

(declare-fun m!817841 () Bool)

(assert (=> b!564547 m!817841))

(assert (=> b!564547 m!817475))

(assert (=> b!564550 m!817801))

(declare-fun m!817847 () Bool)

(assert (=> b!564550 m!817847))

(assert (=> b!564550 m!817847))

(declare-fun m!817849 () Bool)

(assert (=> b!564550 m!817849))

(assert (=> b!564140 d!198033))

(declare-fun b!564562 () Bool)

(declare-fun e!341041 () List!5554)

(assert (=> b!564562 (= e!341041 suffix!1342)))

(declare-fun d!198105 () Bool)

(declare-fun e!341040 () Bool)

(assert (=> d!198105 e!341040))

(declare-fun res!241669 () Bool)

(assert (=> d!198105 (=> (not res!241669) (not e!341040))))

(declare-fun lt!237422 () List!5554)

(assert (=> d!198105 (= res!241669 (= (content!974 lt!237422) ((_ map or) (content!974 input!2705) (content!974 suffix!1342))))))

(assert (=> d!198105 (= lt!237422 e!341041)))

(declare-fun c!106132 () Bool)

(assert (=> d!198105 (= c!106132 ((_ is Nil!5544) input!2705))))

(assert (=> d!198105 (= (++!1551 input!2705 suffix!1342) lt!237422)))

(declare-fun b!564563 () Bool)

(assert (=> b!564563 (= e!341041 (Cons!5544 (h!10945 input!2705) (++!1551 (t!76189 input!2705) suffix!1342)))))

(declare-fun b!564565 () Bool)

(assert (=> b!564565 (= e!341040 (or (not (= suffix!1342 Nil!5544)) (= lt!237422 input!2705)))))

(declare-fun b!564564 () Bool)

(declare-fun res!241670 () Bool)

(assert (=> b!564564 (=> (not res!241670) (not e!341040))))

(assert (=> b!564564 (= res!241670 (= (size!4423 lt!237422) (+ (size!4423 input!2705) (size!4423 suffix!1342))))))

(assert (= (and d!198105 c!106132) b!564562))

(assert (= (and d!198105 (not c!106132)) b!564563))

(assert (= (and d!198105 res!241669) b!564564))

(assert (= (and b!564564 res!241670) b!564565))

(declare-fun m!817859 () Bool)

(assert (=> d!198105 m!817859))

(declare-fun m!817861 () Bool)

(assert (=> d!198105 m!817861))

(declare-fun m!817863 () Bool)

(assert (=> d!198105 m!817863))

(declare-fun m!817865 () Bool)

(assert (=> b!564563 m!817865))

(declare-fun m!817867 () Bool)

(assert (=> b!564564 m!817867))

(assert (=> b!564564 m!817417))

(declare-fun m!817869 () Bool)

(assert (=> b!564564 m!817869))

(assert (=> b!564140 d!198105))

(declare-fun b!564629 () Bool)

(declare-fun e!341077 () Option!1414)

(assert (=> b!564629 (= e!341077 None!1413)))

(declare-fun d!198109 () Bool)

(declare-fun e!341076 () Bool)

(assert (=> d!198109 e!341076))

(declare-fun res!241697 () Bool)

(assert (=> d!198109 (=> res!241697 e!341076)))

(declare-fun lt!237435 () Option!1414)

(assert (=> d!198109 (= res!241697 (isEmpty!4006 lt!237435))))

(assert (=> d!198109 (= lt!237435 e!341077)))

(declare-fun c!106136 () Bool)

(declare-datatypes ((tuple2!6552 0))(
  ( (tuple2!6553 (_1!3540 List!5554) (_2!3540 List!5554)) )
))
(declare-fun lt!237437 () tuple2!6552)

(assert (=> d!198109 (= c!106136 (isEmpty!4004 (_1!3540 lt!237437)))))

(declare-fun findLongestMatch!134 (Regex!1397 List!5554) tuple2!6552)

(assert (=> d!198109 (= lt!237437 (findLongestMatch!134 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) input!2705))))

(assert (=> d!198109 (ruleValid!273 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))))))

(assert (=> d!198109 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) input!2705) lt!237435)))

(declare-fun b!564630 () Bool)

(declare-fun e!341079 () Bool)

(assert (=> b!564630 (= e!341079 (= (size!4422 (_1!3538 (get!2109 lt!237435))) (size!4423 (originalCharacters!1102 (_1!3538 (get!2109 lt!237435))))))))

(declare-fun b!564631 () Bool)

(declare-fun res!241695 () Bool)

(assert (=> b!564631 (=> (not res!241695) (not e!341079))))

(assert (=> b!564631 (= res!241695 (= (rule!1797 (_1!3538 (get!2109 lt!237435))) (rule!1797 (_1!3538 (v!16256 lt!237237)))))))

(declare-fun b!564632 () Bool)

(declare-fun res!241696 () Bool)

(assert (=> b!564632 (=> (not res!241696) (not e!341079))))

(assert (=> b!564632 (= res!241696 (< (size!4423 (_2!3538 (get!2109 lt!237435))) (size!4423 input!2705)))))

(declare-fun b!564633 () Bool)

(declare-fun res!241693 () Bool)

(assert (=> b!564633 (=> (not res!241693) (not e!341079))))

(assert (=> b!564633 (= res!241693 (= (value!35162 (_1!3538 (get!2109 lt!237435))) (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (get!2109 lt!237435)))) (seqFromList!1251 (originalCharacters!1102 (_1!3538 (get!2109 lt!237435)))))))))

(declare-fun b!564634 () Bool)

(declare-fun size!4425 (BalanceConc!3568) Int)

(assert (=> b!564634 (= e!341077 (Some!1413 (tuple2!6549 (Token!1863 (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (seqFromList!1251 (_1!3540 lt!237437))) (rule!1797 (_1!3538 (v!16256 lt!237237))) (size!4425 (seqFromList!1251 (_1!3540 lt!237437))) (_1!3540 lt!237437)) (_2!3540 lt!237437))))))

(declare-fun lt!237436 () Unit!9911)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!139 (Regex!1397 List!5554) Unit!9911)

(assert (=> b!564634 (= lt!237436 (longestMatchIsAcceptedByMatchOrIsEmpty!139 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) input!2705))))

(declare-fun res!241692 () Bool)

(declare-fun findLongestMatchInner!155 (Regex!1397 List!5554 Int List!5554 List!5554 Int) tuple2!6552)

(assert (=> b!564634 (= res!241692 (isEmpty!4004 (_1!3540 (findLongestMatchInner!155 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) Nil!5544 (size!4423 Nil!5544) input!2705 input!2705 (size!4423 input!2705)))))))

(declare-fun e!341078 () Bool)

(assert (=> b!564634 (=> res!241692 e!341078)))

(assert (=> b!564634 e!341078))

(declare-fun lt!237439 () Unit!9911)

(assert (=> b!564634 (= lt!237439 lt!237436)))

(declare-fun lt!237438 () Unit!9911)

(declare-fun lemmaSemiInverse!174 (TokenValueInjection!1942 BalanceConc!3568) Unit!9911)

(assert (=> b!564634 (= lt!237438 (lemmaSemiInverse!174 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (seqFromList!1251 (_1!3540 lt!237437))))))

(declare-fun b!564635 () Bool)

(declare-fun res!241694 () Bool)

(assert (=> b!564635 (=> (not res!241694) (not e!341079))))

(assert (=> b!564635 (= res!241694 (= (++!1551 (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237435)))) (_2!3538 (get!2109 lt!237435))) input!2705))))

(declare-fun b!564636 () Bool)

(assert (=> b!564636 (= e!341076 e!341079)))

(declare-fun res!241691 () Bool)

(assert (=> b!564636 (=> (not res!241691) (not e!341079))))

(assert (=> b!564636 (= res!241691 (matchR!544 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237435))))))))

(declare-fun b!564637 () Bool)

(assert (=> b!564637 (= e!341078 (matchR!544 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (_1!3540 (findLongestMatchInner!155 (regex!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) Nil!5544 (size!4423 Nil!5544) input!2705 input!2705 (size!4423 input!2705)))))))

(assert (= (and d!198109 c!106136) b!564629))

(assert (= (and d!198109 (not c!106136)) b!564634))

(assert (= (and b!564634 (not res!241692)) b!564637))

(assert (= (and d!198109 (not res!241697)) b!564636))

(assert (= (and b!564636 res!241691) b!564635))

(assert (= (and b!564635 res!241694) b!564632))

(assert (= (and b!564632 res!241696) b!564631))

(assert (= (and b!564631 res!241695) b!564633))

(assert (= (and b!564633 res!241693) b!564630))

(declare-fun m!817891 () Bool)

(assert (=> b!564632 m!817891))

(declare-fun m!817893 () Bool)

(assert (=> b!564632 m!817893))

(assert (=> b!564632 m!817417))

(assert (=> b!564636 m!817891))

(declare-fun m!817895 () Bool)

(assert (=> b!564636 m!817895))

(assert (=> b!564636 m!817895))

(declare-fun m!817897 () Bool)

(assert (=> b!564636 m!817897))

(assert (=> b!564636 m!817897))

(declare-fun m!817899 () Bool)

(assert (=> b!564636 m!817899))

(assert (=> b!564633 m!817891))

(declare-fun m!817901 () Bool)

(assert (=> b!564633 m!817901))

(assert (=> b!564633 m!817901))

(declare-fun m!817903 () Bool)

(assert (=> b!564633 m!817903))

(assert (=> b!564631 m!817891))

(assert (=> b!564635 m!817891))

(assert (=> b!564635 m!817895))

(assert (=> b!564635 m!817895))

(assert (=> b!564635 m!817897))

(assert (=> b!564635 m!817897))

(declare-fun m!817905 () Bool)

(assert (=> b!564635 m!817905))

(declare-fun m!817907 () Bool)

(assert (=> b!564634 m!817907))

(declare-fun m!817909 () Bool)

(assert (=> b!564634 m!817909))

(assert (=> b!564634 m!817907))

(assert (=> b!564634 m!817417))

(assert (=> b!564634 m!817907))

(declare-fun m!817911 () Bool)

(assert (=> b!564634 m!817911))

(declare-fun m!817913 () Bool)

(assert (=> b!564634 m!817913))

(declare-fun m!817915 () Bool)

(assert (=> b!564634 m!817915))

(declare-fun m!817917 () Bool)

(assert (=> b!564634 m!817917))

(assert (=> b!564634 m!817417))

(declare-fun m!817919 () Bool)

(assert (=> b!564634 m!817919))

(assert (=> b!564634 m!817907))

(declare-fun m!817921 () Bool)

(assert (=> b!564634 m!817921))

(assert (=> b!564634 m!817917))

(declare-fun m!817923 () Bool)

(assert (=> d!198109 m!817923))

(declare-fun m!817925 () Bool)

(assert (=> d!198109 m!817925))

(declare-fun m!817927 () Bool)

(assert (=> d!198109 m!817927))

(assert (=> d!198109 m!817313))

(assert (=> b!564637 m!817917))

(assert (=> b!564637 m!817417))

(assert (=> b!564637 m!817917))

(assert (=> b!564637 m!817417))

(assert (=> b!564637 m!817919))

(declare-fun m!817929 () Bool)

(assert (=> b!564637 m!817929))

(assert (=> b!564630 m!817891))

(declare-fun m!817931 () Bool)

(assert (=> b!564630 m!817931))

(assert (=> b!564129 d!198109))

(declare-fun b!564638 () Bool)

(declare-fun e!341081 () Option!1414)

(assert (=> b!564638 (= e!341081 None!1413)))

(declare-fun d!198119 () Bool)

(declare-fun e!341080 () Bool)

(assert (=> d!198119 e!341080))

(declare-fun res!241704 () Bool)

(assert (=> d!198119 (=> res!241704 e!341080)))

(declare-fun lt!237440 () Option!1414)

(assert (=> d!198119 (= res!241704 (isEmpty!4006 lt!237440))))

(assert (=> d!198119 (= lt!237440 e!341081)))

(declare-fun c!106137 () Bool)

(declare-fun lt!237442 () tuple2!6552)

(assert (=> d!198119 (= c!106137 (isEmpty!4004 (_1!3540 lt!237442)))))

(assert (=> d!198119 (= lt!237442 (findLongestMatch!134 (regex!1063 (rule!1797 token!491)) lt!237239))))

(assert (=> d!198119 (ruleValid!273 thiss!22590 (rule!1797 token!491))))

(assert (=> d!198119 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 token!491) lt!237239) lt!237440)))

(declare-fun b!564639 () Bool)

(declare-fun e!341083 () Bool)

(assert (=> b!564639 (= e!341083 (= (size!4422 (_1!3538 (get!2109 lt!237440))) (size!4423 (originalCharacters!1102 (_1!3538 (get!2109 lt!237440))))))))

(declare-fun b!564640 () Bool)

(declare-fun res!241702 () Bool)

(assert (=> b!564640 (=> (not res!241702) (not e!341083))))

(assert (=> b!564640 (= res!241702 (= (rule!1797 (_1!3538 (get!2109 lt!237440))) (rule!1797 token!491)))))

(declare-fun b!564641 () Bool)

(declare-fun res!241703 () Bool)

(assert (=> b!564641 (=> (not res!241703) (not e!341083))))

(assert (=> b!564641 (= res!241703 (< (size!4423 (_2!3538 (get!2109 lt!237440))) (size!4423 lt!237239)))))

(declare-fun b!564642 () Bool)

(declare-fun res!241700 () Bool)

(assert (=> b!564642 (=> (not res!241700) (not e!341083))))

(assert (=> b!564642 (= res!241700 (= (value!35162 (_1!3538 (get!2109 lt!237440))) (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (get!2109 lt!237440)))) (seqFromList!1251 (originalCharacters!1102 (_1!3538 (get!2109 lt!237440)))))))))

(declare-fun b!564643 () Bool)

(assert (=> b!564643 (= e!341081 (Some!1413 (tuple2!6549 (Token!1863 (apply!1328 (transformation!1063 (rule!1797 token!491)) (seqFromList!1251 (_1!3540 lt!237442))) (rule!1797 token!491) (size!4425 (seqFromList!1251 (_1!3540 lt!237442))) (_1!3540 lt!237442)) (_2!3540 lt!237442))))))

(declare-fun lt!237441 () Unit!9911)

(assert (=> b!564643 (= lt!237441 (longestMatchIsAcceptedByMatchOrIsEmpty!139 (regex!1063 (rule!1797 token!491)) lt!237239))))

(declare-fun res!241699 () Bool)

(assert (=> b!564643 (= res!241699 (isEmpty!4004 (_1!3540 (findLongestMatchInner!155 (regex!1063 (rule!1797 token!491)) Nil!5544 (size!4423 Nil!5544) lt!237239 lt!237239 (size!4423 lt!237239)))))))

(declare-fun e!341082 () Bool)

(assert (=> b!564643 (=> res!241699 e!341082)))

(assert (=> b!564643 e!341082))

(declare-fun lt!237444 () Unit!9911)

(assert (=> b!564643 (= lt!237444 lt!237441)))

(declare-fun lt!237443 () Unit!9911)

(assert (=> b!564643 (= lt!237443 (lemmaSemiInverse!174 (transformation!1063 (rule!1797 token!491)) (seqFromList!1251 (_1!3540 lt!237442))))))

(declare-fun b!564644 () Bool)

(declare-fun res!241701 () Bool)

(assert (=> b!564644 (=> (not res!241701) (not e!341083))))

(assert (=> b!564644 (= res!241701 (= (++!1551 (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237440)))) (_2!3538 (get!2109 lt!237440))) lt!237239))))

(declare-fun b!564645 () Bool)

(assert (=> b!564645 (= e!341080 e!341083)))

(declare-fun res!241698 () Bool)

(assert (=> b!564645 (=> (not res!241698) (not e!341083))))

(assert (=> b!564645 (= res!241698 (matchR!544 (regex!1063 (rule!1797 token!491)) (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237440))))))))

(declare-fun b!564646 () Bool)

(assert (=> b!564646 (= e!341082 (matchR!544 (regex!1063 (rule!1797 token!491)) (_1!3540 (findLongestMatchInner!155 (regex!1063 (rule!1797 token!491)) Nil!5544 (size!4423 Nil!5544) lt!237239 lt!237239 (size!4423 lt!237239)))))))

(assert (= (and d!198119 c!106137) b!564638))

(assert (= (and d!198119 (not c!106137)) b!564643))

(assert (= (and b!564643 (not res!241699)) b!564646))

(assert (= (and d!198119 (not res!241704)) b!564645))

(assert (= (and b!564645 res!241698) b!564644))

(assert (= (and b!564644 res!241701) b!564641))

(assert (= (and b!564641 res!241703) b!564640))

(assert (= (and b!564640 res!241702) b!564642))

(assert (= (and b!564642 res!241700) b!564639))

(declare-fun m!817933 () Bool)

(assert (=> b!564641 m!817933))

(declare-fun m!817935 () Bool)

(assert (=> b!564641 m!817935))

(assert (=> b!564641 m!817475))

(assert (=> b!564645 m!817933))

(declare-fun m!817937 () Bool)

(assert (=> b!564645 m!817937))

(assert (=> b!564645 m!817937))

(declare-fun m!817939 () Bool)

(assert (=> b!564645 m!817939))

(assert (=> b!564645 m!817939))

(declare-fun m!817941 () Bool)

(assert (=> b!564645 m!817941))

(assert (=> b!564642 m!817933))

(declare-fun m!817943 () Bool)

(assert (=> b!564642 m!817943))

(assert (=> b!564642 m!817943))

(declare-fun m!817945 () Bool)

(assert (=> b!564642 m!817945))

(assert (=> b!564640 m!817933))

(assert (=> b!564644 m!817933))

(assert (=> b!564644 m!817937))

(assert (=> b!564644 m!817937))

(assert (=> b!564644 m!817939))

(assert (=> b!564644 m!817939))

(declare-fun m!817947 () Bool)

(assert (=> b!564644 m!817947))

(declare-fun m!817949 () Bool)

(assert (=> b!564643 m!817949))

(declare-fun m!817951 () Bool)

(assert (=> b!564643 m!817951))

(assert (=> b!564643 m!817949))

(assert (=> b!564643 m!817475))

(assert (=> b!564643 m!817949))

(declare-fun m!817953 () Bool)

(assert (=> b!564643 m!817953))

(declare-fun m!817955 () Bool)

(assert (=> b!564643 m!817955))

(declare-fun m!817957 () Bool)

(assert (=> b!564643 m!817957))

(assert (=> b!564643 m!817917))

(assert (=> b!564643 m!817475))

(declare-fun m!817959 () Bool)

(assert (=> b!564643 m!817959))

(assert (=> b!564643 m!817949))

(declare-fun m!817961 () Bool)

(assert (=> b!564643 m!817961))

(assert (=> b!564643 m!817917))

(declare-fun m!817963 () Bool)

(assert (=> d!198119 m!817963))

(declare-fun m!817965 () Bool)

(assert (=> d!198119 m!817965))

(declare-fun m!817967 () Bool)

(assert (=> d!198119 m!817967))

(assert (=> d!198119 m!817287))

(assert (=> b!564646 m!817917))

(assert (=> b!564646 m!817475))

(assert (=> b!564646 m!817917))

(assert (=> b!564646 m!817475))

(assert (=> b!564646 m!817959))

(declare-fun m!817969 () Bool)

(assert (=> b!564646 m!817969))

(assert (=> b!564639 m!817933))

(declare-fun m!817971 () Bool)

(assert (=> b!564639 m!817971))

(assert (=> b!564129 d!198119))

(declare-fun d!198121 () Bool)

(declare-fun lt!237445 () List!5554)

(assert (=> d!198121 (= (++!1551 lt!237252 lt!237445) lt!237239)))

(declare-fun e!341084 () List!5554)

(assert (=> d!198121 (= lt!237445 e!341084)))

(declare-fun c!106138 () Bool)

(assert (=> d!198121 (= c!106138 ((_ is Cons!5544) lt!237252))))

(assert (=> d!198121 (>= (size!4423 lt!237239) (size!4423 lt!237252))))

(assert (=> d!198121 (= (getSuffix!216 lt!237239 lt!237252) lt!237445)))

(declare-fun b!564647 () Bool)

(assert (=> b!564647 (= e!341084 (getSuffix!216 (tail!737 lt!237239) (t!76189 lt!237252)))))

(declare-fun b!564648 () Bool)

(assert (=> b!564648 (= e!341084 lt!237239)))

(assert (= (and d!198121 c!106138) b!564647))

(assert (= (and d!198121 (not c!106138)) b!564648))

(declare-fun m!817973 () Bool)

(assert (=> d!198121 m!817973))

(assert (=> d!198121 m!817475))

(assert (=> d!198121 m!817291))

(assert (=> b!564647 m!817477))

(assert (=> b!564647 m!817477))

(declare-fun m!817975 () Bool)

(assert (=> b!564647 m!817975))

(assert (=> b!564129 d!198121))

(declare-fun d!198123 () Bool)

(assert (=> d!198123 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 token!491) lt!237239) (Some!1413 (tuple2!6549 (Token!1863 (apply!1328 (transformation!1063 (rule!1797 token!491)) (seqFromList!1251 lt!237252)) (rule!1797 token!491) (size!4423 lt!237252) lt!237252) suffix!1342)))))

(declare-fun lt!237448 () Unit!9911)

(declare-fun choose!4012 (LexerInterface!949 List!5556 List!5554 List!5554 List!5554 Rule!1926) Unit!9911)

(assert (=> d!198123 (= lt!237448 (choose!4012 thiss!22590 rules!3103 lt!237252 lt!237239 suffix!1342 (rule!1797 token!491)))))

(assert (=> d!198123 (not (isEmpty!4003 rules!3103))))

(assert (=> d!198123 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!98 thiss!22590 rules!3103 lt!237252 lt!237239 suffix!1342 (rule!1797 token!491)) lt!237448)))

(declare-fun bs!68656 () Bool)

(assert (= bs!68656 d!198123))

(assert (=> bs!68656 m!817257))

(assert (=> bs!68656 m!817259))

(assert (=> bs!68656 m!817291))

(assert (=> bs!68656 m!817243))

(assert (=> bs!68656 m!817251))

(declare-fun m!817977 () Bool)

(assert (=> bs!68656 m!817977))

(assert (=> bs!68656 m!817257))

(assert (=> b!564129 d!198123))

(declare-fun d!198125 () Bool)

(assert (=> d!198125 (= (apply!1328 (transformation!1063 (rule!1797 token!491)) (seqFromList!1251 lt!237252)) (dynLambda!3218 (toValue!1918 (transformation!1063 (rule!1797 token!491))) (seqFromList!1251 lt!237252)))))

(declare-fun b_lambda!21777 () Bool)

(assert (=> (not b_lambda!21777) (not d!198125)))

(declare-fun t!76225 () Bool)

(declare-fun tb!49227 () Bool)

(assert (=> (and b!564155 (= (toValue!1918 (transformation!1063 (rule!1797 token!491))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))) t!76225) tb!49227))

(declare-fun result!55084 () Bool)

(assert (=> tb!49227 (= result!55084 (inv!21 (dynLambda!3218 (toValue!1918 (transformation!1063 (rule!1797 token!491))) (seqFromList!1251 lt!237252))))))

(declare-fun m!817979 () Bool)

(assert (=> tb!49227 m!817979))

(assert (=> d!198125 t!76225))

(declare-fun b_and!55051 () Bool)

(assert (= b_and!55019 (and (=> t!76225 result!55084) b_and!55051)))

(declare-fun t!76227 () Bool)

(declare-fun tb!49229 () Bool)

(assert (=> (and b!564136 (= (toValue!1918 (transformation!1063 (h!10947 rules!3103))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))) t!76227) tb!49229))

(declare-fun result!55086 () Bool)

(assert (= result!55086 result!55084))

(assert (=> d!198125 t!76227))

(declare-fun b_and!55053 () Bool)

(assert (= b_and!55021 (and (=> t!76227 result!55086) b_and!55053)))

(assert (=> d!198125 m!817257))

(declare-fun m!817981 () Bool)

(assert (=> d!198125 m!817981))

(assert (=> b!564129 d!198125))

(declare-fun d!198127 () Bool)

(assert (=> d!198127 (= (maxPrefixOneRule!348 thiss!22590 (rule!1797 (_1!3538 (v!16256 lt!237237))) input!2705) (Some!1413 (tuple2!6549 (Token!1863 (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))) (seqFromList!1251 lt!237259)) (rule!1797 (_1!3538 (v!16256 lt!237237))) (size!4423 lt!237259) lt!237259) (_2!3538 (v!16256 lt!237237)))))))

(declare-fun lt!237449 () Unit!9911)

(assert (=> d!198127 (= lt!237449 (choose!4012 thiss!22590 rules!3103 lt!237259 input!2705 (_2!3538 (v!16256 lt!237237)) (rule!1797 (_1!3538 (v!16256 lt!237237)))))))

(assert (=> d!198127 (not (isEmpty!4003 rules!3103))))

(assert (=> d!198127 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!98 thiss!22590 rules!3103 lt!237259 input!2705 (_2!3538 (v!16256 lt!237237)) (rule!1797 (_1!3538 (v!16256 lt!237237)))) lt!237449)))

(declare-fun bs!68657 () Bool)

(assert (= bs!68657 d!198127))

(assert (=> bs!68657 m!817297))

(assert (=> bs!68657 m!817327))

(assert (=> bs!68657 m!817307))

(assert (=> bs!68657 m!817243))

(assert (=> bs!68657 m!817255))

(declare-fun m!817983 () Bool)

(assert (=> bs!68657 m!817983))

(assert (=> bs!68657 m!817297))

(assert (=> b!564129 d!198127))

(declare-fun d!198129 () Bool)

(assert (=> d!198129 (= suffix!1342 lt!237241)))

(declare-fun lt!237450 () Unit!9911)

(assert (=> d!198129 (= lt!237450 (choose!4003 lt!237252 suffix!1342 lt!237252 lt!237241 lt!237239))))

(assert (=> d!198129 (isPrefix!697 lt!237252 lt!237239)))

(assert (=> d!198129 (= (lemmaSamePrefixThenSameSuffix!420 lt!237252 suffix!1342 lt!237252 lt!237241 lt!237239) lt!237450)))

(declare-fun bs!68658 () Bool)

(assert (= bs!68658 d!198129))

(declare-fun m!817985 () Bool)

(assert (=> bs!68658 m!817985))

(declare-fun m!817987 () Bool)

(assert (=> bs!68658 m!817987))

(assert (=> b!564129 d!198129))

(declare-fun d!198131 () Bool)

(assert (=> d!198131 (= (seqFromList!1251 lt!237252) (fromListB!545 lt!237252))))

(declare-fun bs!68659 () Bool)

(assert (= bs!68659 d!198131))

(declare-fun m!817989 () Bool)

(assert (=> bs!68659 m!817989))

(assert (=> b!564129 d!198131))

(declare-fun d!198133 () Bool)

(assert (=> d!198133 (= (isEmpty!4003 rules!3103) ((_ is Nil!5546) rules!3103))))

(assert (=> b!564150 d!198133))

(declare-fun d!198135 () Bool)

(declare-fun res!241707 () Bool)

(declare-fun e!341088 () Bool)

(assert (=> d!198135 (=> (not res!241707) (not e!341088))))

(declare-fun rulesValid!373 (LexerInterface!949 List!5556) Bool)

(assert (=> d!198135 (= res!241707 (rulesValid!373 thiss!22590 rules!3103))))

(assert (=> d!198135 (= (rulesInvariant!912 thiss!22590 rules!3103) e!341088)))

(declare-fun b!564651 () Bool)

(declare-datatypes ((List!5558 0))(
  ( (Nil!5548) (Cons!5548 (h!10949 String!7179) (t!76241 List!5558)) )
))
(declare-fun noDuplicateTag!373 (LexerInterface!949 List!5556 List!5558) Bool)

(assert (=> b!564651 (= e!341088 (noDuplicateTag!373 thiss!22590 rules!3103 Nil!5548))))

(assert (= (and d!198135 res!241707) b!564651))

(declare-fun m!817991 () Bool)

(assert (=> d!198135 m!817991))

(declare-fun m!817993 () Bool)

(assert (=> b!564651 m!817993))

(assert (=> b!564139 d!198135))

(declare-fun d!198137 () Bool)

(assert (=> d!198137 (= (list!2301 (charsOf!692 token!491)) (list!2303 (c!106064 (charsOf!692 token!491))))))

(declare-fun bs!68660 () Bool)

(assert (= bs!68660 d!198137))

(declare-fun m!817995 () Bool)

(assert (=> bs!68660 m!817995))

(assert (=> b!564149 d!198137))

(declare-fun d!198139 () Bool)

(declare-fun lt!237451 () BalanceConc!3568)

(assert (=> d!198139 (= (list!2301 lt!237451) (originalCharacters!1102 token!491))))

(assert (=> d!198139 (= lt!237451 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (value!35162 token!491)))))

(assert (=> d!198139 (= (charsOf!692 token!491) lt!237451)))

(declare-fun b_lambda!21779 () Bool)

(assert (=> (not b_lambda!21779) (not d!198139)))

(declare-fun t!76229 () Bool)

(declare-fun tb!49231 () Bool)

(assert (=> (and b!564155 (= (toChars!1777 (transformation!1063 (rule!1797 token!491))) (toChars!1777 (transformation!1063 (rule!1797 token!491)))) t!76229) tb!49231))

(declare-fun b!564652 () Bool)

(declare-fun e!341089 () Bool)

(declare-fun tp!178147 () Bool)

(assert (=> b!564652 (= e!341089 (and (inv!6970 (c!106064 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (value!35162 token!491)))) tp!178147))))

(declare-fun result!55088 () Bool)

(assert (=> tb!49231 (= result!55088 (and (inv!6971 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (value!35162 token!491))) e!341089))))

(assert (= tb!49231 b!564652))

(declare-fun m!817997 () Bool)

(assert (=> b!564652 m!817997))

(declare-fun m!817999 () Bool)

(assert (=> tb!49231 m!817999))

(assert (=> d!198139 t!76229))

(declare-fun b_and!55055 () Bool)

(assert (= b_and!55023 (and (=> t!76229 result!55088) b_and!55055)))

(declare-fun t!76231 () Bool)

(declare-fun tb!49233 () Bool)

(assert (=> (and b!564136 (= (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toChars!1777 (transformation!1063 (rule!1797 token!491)))) t!76231) tb!49233))

(declare-fun result!55090 () Bool)

(assert (= result!55090 result!55088))

(assert (=> d!198139 t!76231))

(declare-fun b_and!55057 () Bool)

(assert (= b_and!55025 (and (=> t!76231 result!55090) b_and!55057)))

(declare-fun m!818001 () Bool)

(assert (=> d!198139 m!818001))

(declare-fun m!818003 () Bool)

(assert (=> d!198139 m!818003))

(assert (=> b!564149 d!198139))

(declare-fun b!564656 () Bool)

(declare-fun e!341091 () Bool)

(assert (=> b!564656 (= e!341091 (>= (size!4423 input!2705) (size!4423 lt!237252)))))

(declare-fun d!198141 () Bool)

(assert (=> d!198141 e!341091))

(declare-fun res!241710 () Bool)

(assert (=> d!198141 (=> res!241710 e!341091)))

(declare-fun lt!237452 () Bool)

(assert (=> d!198141 (= res!241710 (not lt!237452))))

(declare-fun e!341092 () Bool)

(assert (=> d!198141 (= lt!237452 e!341092)))

(declare-fun res!241711 () Bool)

(assert (=> d!198141 (=> res!241711 e!341092)))

(assert (=> d!198141 (= res!241711 ((_ is Nil!5544) lt!237252))))

(assert (=> d!198141 (= (isPrefix!697 lt!237252 input!2705) lt!237452)))

(declare-fun b!564655 () Bool)

(declare-fun e!341090 () Bool)

(assert (=> b!564655 (= e!341090 (isPrefix!697 (tail!737 lt!237252) (tail!737 input!2705)))))

(declare-fun b!564654 () Bool)

(declare-fun res!241709 () Bool)

(assert (=> b!564654 (=> (not res!241709) (not e!341090))))

(assert (=> b!564654 (= res!241709 (= (head!1208 lt!237252) (head!1208 input!2705)))))

(declare-fun b!564653 () Bool)

(assert (=> b!564653 (= e!341092 e!341090)))

(declare-fun res!241708 () Bool)

(assert (=> b!564653 (=> (not res!241708) (not e!341090))))

(assert (=> b!564653 (= res!241708 (not ((_ is Nil!5544) input!2705)))))

(assert (= (and d!198141 (not res!241711)) b!564653))

(assert (= (and b!564653 res!241708) b!564654))

(assert (= (and b!564654 res!241709) b!564655))

(assert (= (and d!198141 (not res!241710)) b!564656))

(assert (=> b!564656 m!817417))

(assert (=> b!564656 m!817291))

(assert (=> b!564655 m!817553))

(assert (=> b!564655 m!817371))

(assert (=> b!564655 m!817553))

(assert (=> b!564655 m!817371))

(declare-fun m!818005 () Bool)

(assert (=> b!564655 m!818005))

(assert (=> b!564654 m!817557))

(assert (=> b!564654 m!817367))

(assert (=> b!564159 d!198141))

(declare-fun d!198143 () Bool)

(declare-fun lt!237453 () Int)

(assert (=> d!198143 (>= lt!237453 0)))

(declare-fun e!341093 () Int)

(assert (=> d!198143 (= lt!237453 e!341093)))

(declare-fun c!106139 () Bool)

(assert (=> d!198143 (= c!106139 ((_ is Nil!5544) (originalCharacters!1102 (_1!3538 (v!16256 lt!237237)))))))

(assert (=> d!198143 (= (size!4423 (originalCharacters!1102 (_1!3538 (v!16256 lt!237237)))) lt!237453)))

(declare-fun b!564657 () Bool)

(assert (=> b!564657 (= e!341093 0)))

(declare-fun b!564658 () Bool)

(assert (=> b!564658 (= e!341093 (+ 1 (size!4423 (t!76189 (originalCharacters!1102 (_1!3538 (v!16256 lt!237237)))))))))

(assert (= (and d!198143 c!106139) b!564657))

(assert (= (and d!198143 (not c!106139)) b!564658))

(declare-fun m!818007 () Bool)

(assert (=> b!564658 m!818007))

(assert (=> b!564148 d!198143))

(declare-fun d!198145 () Bool)

(declare-fun res!241716 () Bool)

(declare-fun e!341096 () Bool)

(assert (=> d!198145 (=> (not res!241716) (not e!341096))))

(assert (=> d!198145 (= res!241716 (not (isEmpty!4004 (originalCharacters!1102 token!491))))))

(assert (=> d!198145 (= (inv!6969 token!491) e!341096)))

(declare-fun b!564663 () Bool)

(declare-fun res!241717 () Bool)

(assert (=> b!564663 (=> (not res!241717) (not e!341096))))

(assert (=> b!564663 (= res!241717 (= (originalCharacters!1102 token!491) (list!2301 (dynLambda!3220 (toChars!1777 (transformation!1063 (rule!1797 token!491))) (value!35162 token!491)))))))

(declare-fun b!564664 () Bool)

(assert (=> b!564664 (= e!341096 (= (size!4422 token!491) (size!4423 (originalCharacters!1102 token!491))))))

(assert (= (and d!198145 res!241716) b!564663))

(assert (= (and b!564663 res!241717) b!564664))

(declare-fun b_lambda!21781 () Bool)

(assert (=> (not b_lambda!21781) (not b!564663)))

(assert (=> b!564663 t!76229))

(declare-fun b_and!55059 () Bool)

(assert (= b_and!55055 (and (=> t!76229 result!55088) b_and!55059)))

(assert (=> b!564663 t!76231))

(declare-fun b_and!55061 () Bool)

(assert (= b_and!55057 (and (=> t!76231 result!55090) b_and!55061)))

(declare-fun m!818009 () Bool)

(assert (=> d!198145 m!818009))

(assert (=> b!564663 m!818003))

(assert (=> b!564663 m!818003))

(declare-fun m!818011 () Bool)

(assert (=> b!564663 m!818011))

(assert (=> b!564664 m!817239))

(assert (=> start!51944 d!198145))

(declare-fun d!198147 () Bool)

(assert (=> d!198147 (= (isEmpty!4004 input!2705) ((_ is Nil!5544) input!2705))))

(assert (=> b!564158 d!198147))

(declare-fun b!564665 () Bool)

(declare-fun res!241724 () Bool)

(declare-fun e!341098 () Bool)

(assert (=> b!564665 (=> (not res!241724) (not e!341098))))

(declare-fun lt!237456 () Option!1414)

(assert (=> b!564665 (= res!241724 (= (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237456)))) (originalCharacters!1102 (_1!3538 (get!2109 lt!237456)))))))

(declare-fun call!39319 () Option!1414)

(declare-fun bm!39314 () Bool)

(assert (=> bm!39314 (= call!39319 (maxPrefixOneRule!348 thiss!22590 (h!10947 rules!3103) input!2705))))

(declare-fun b!564666 () Bool)

(declare-fun e!341099 () Option!1414)

(assert (=> b!564666 (= e!341099 call!39319)))

(declare-fun b!564667 () Bool)

(declare-fun lt!237454 () Option!1414)

(declare-fun lt!237455 () Option!1414)

(assert (=> b!564667 (= e!341099 (ite (and ((_ is None!1413) lt!237454) ((_ is None!1413) lt!237455)) None!1413 (ite ((_ is None!1413) lt!237455) lt!237454 (ite ((_ is None!1413) lt!237454) lt!237455 (ite (>= (size!4422 (_1!3538 (v!16256 lt!237454))) (size!4422 (_1!3538 (v!16256 lt!237455)))) lt!237454 lt!237455)))))))

(assert (=> b!564667 (= lt!237454 call!39319)))

(assert (=> b!564667 (= lt!237455 (maxPrefix!647 thiss!22590 (t!76191 rules!3103) input!2705))))

(declare-fun b!564668 () Bool)

(declare-fun res!241719 () Bool)

(assert (=> b!564668 (=> (not res!241719) (not e!341098))))

(assert (=> b!564668 (= res!241719 (< (size!4423 (_2!3538 (get!2109 lt!237456))) (size!4423 input!2705)))))

(declare-fun b!564669 () Bool)

(declare-fun res!241723 () Bool)

(assert (=> b!564669 (=> (not res!241723) (not e!341098))))

(assert (=> b!564669 (= res!241723 (= (++!1551 (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237456)))) (_2!3538 (get!2109 lt!237456))) input!2705))))

(declare-fun d!198149 () Bool)

(declare-fun e!341097 () Bool)

(assert (=> d!198149 e!341097))

(declare-fun res!241721 () Bool)

(assert (=> d!198149 (=> res!241721 e!341097)))

(assert (=> d!198149 (= res!241721 (isEmpty!4006 lt!237456))))

(assert (=> d!198149 (= lt!237456 e!341099)))

(declare-fun c!106140 () Bool)

(assert (=> d!198149 (= c!106140 (and ((_ is Cons!5546) rules!3103) ((_ is Nil!5546) (t!76191 rules!3103))))))

(declare-fun lt!237457 () Unit!9911)

(declare-fun lt!237458 () Unit!9911)

(assert (=> d!198149 (= lt!237457 lt!237458)))

(assert (=> d!198149 (isPrefix!697 input!2705 input!2705)))

(assert (=> d!198149 (= lt!237458 (lemmaIsPrefixRefl!435 input!2705 input!2705))))

(assert (=> d!198149 (rulesValidInductive!378 thiss!22590 rules!3103)))

(assert (=> d!198149 (= (maxPrefix!647 thiss!22590 rules!3103 input!2705) lt!237456)))

(declare-fun b!564670 () Bool)

(assert (=> b!564670 (= e!341098 (contains!1297 rules!3103 (rule!1797 (_1!3538 (get!2109 lt!237456)))))))

(declare-fun b!564671 () Bool)

(declare-fun res!241718 () Bool)

(assert (=> b!564671 (=> (not res!241718) (not e!341098))))

(assert (=> b!564671 (= res!241718 (= (value!35162 (_1!3538 (get!2109 lt!237456))) (apply!1328 (transformation!1063 (rule!1797 (_1!3538 (get!2109 lt!237456)))) (seqFromList!1251 (originalCharacters!1102 (_1!3538 (get!2109 lt!237456)))))))))

(declare-fun b!564672 () Bool)

(assert (=> b!564672 (= e!341097 e!341098)))

(declare-fun res!241720 () Bool)

(assert (=> b!564672 (=> (not res!241720) (not e!341098))))

(assert (=> b!564672 (= res!241720 (isDefined!1225 lt!237456))))

(declare-fun b!564673 () Bool)

(declare-fun res!241722 () Bool)

(assert (=> b!564673 (=> (not res!241722) (not e!341098))))

(assert (=> b!564673 (= res!241722 (matchR!544 (regex!1063 (rule!1797 (_1!3538 (get!2109 lt!237456)))) (list!2301 (charsOf!692 (_1!3538 (get!2109 lt!237456))))))))

(assert (= (and d!198149 c!106140) b!564666))

(assert (= (and d!198149 (not c!106140)) b!564667))

(assert (= (or b!564666 b!564667) bm!39314))

(assert (= (and d!198149 (not res!241721)) b!564672))

(assert (= (and b!564672 res!241720) b!564665))

(assert (= (and b!564665 res!241724) b!564668))

(assert (= (and b!564668 res!241719) b!564669))

(assert (= (and b!564669 res!241723) b!564671))

(assert (= (and b!564671 res!241718) b!564673))

(assert (= (and b!564673 res!241722) b!564670))

(declare-fun m!818013 () Bool)

(assert (=> b!564673 m!818013))

(declare-fun m!818015 () Bool)

(assert (=> b!564673 m!818015))

(assert (=> b!564673 m!818015))

(declare-fun m!818017 () Bool)

(assert (=> b!564673 m!818017))

(assert (=> b!564673 m!818017))

(declare-fun m!818019 () Bool)

(assert (=> b!564673 m!818019))

(declare-fun m!818021 () Bool)

(assert (=> bm!39314 m!818021))

(assert (=> b!564669 m!818013))

(assert (=> b!564669 m!818015))

(assert (=> b!564669 m!818015))

(assert (=> b!564669 m!818017))

(assert (=> b!564669 m!818017))

(declare-fun m!818023 () Bool)

(assert (=> b!564669 m!818023))

(declare-fun m!818025 () Bool)

(assert (=> b!564672 m!818025))

(declare-fun m!818027 () Bool)

(assert (=> d!198149 m!818027))

(assert (=> d!198149 m!817331))

(assert (=> d!198149 m!817317))

(assert (=> d!198149 m!817829))

(assert (=> b!564665 m!818013))

(assert (=> b!564665 m!818015))

(assert (=> b!564665 m!818015))

(assert (=> b!564665 m!818017))

(assert (=> b!564670 m!818013))

(declare-fun m!818029 () Bool)

(assert (=> b!564670 m!818029))

(declare-fun m!818031 () Bool)

(assert (=> b!564667 m!818031))

(assert (=> b!564668 m!818013))

(declare-fun m!818033 () Bool)

(assert (=> b!564668 m!818033))

(assert (=> b!564668 m!817417))

(assert (=> b!564671 m!818013))

(declare-fun m!818035 () Bool)

(assert (=> b!564671 m!818035))

(assert (=> b!564671 m!818035))

(declare-fun m!818037 () Bool)

(assert (=> b!564671 m!818037))

(assert (=> b!564147 d!198149))

(declare-fun d!198151 () Bool)

(assert (=> d!198151 (= (isDefined!1225 lt!237237) (not (isEmpty!4006 lt!237237)))))

(declare-fun bs!68661 () Bool)

(assert (= bs!68661 d!198151))

(declare-fun m!818039 () Bool)

(assert (=> bs!68661 m!818039))

(assert (=> b!564157 d!198151))

(declare-fun b!564674 () Bool)

(declare-fun e!341101 () List!5554)

(assert (=> b!564674 (= e!341101 suffix!1342)))

(declare-fun d!198153 () Bool)

(declare-fun e!341100 () Bool)

(assert (=> d!198153 e!341100))

(declare-fun res!241725 () Bool)

(assert (=> d!198153 (=> (not res!241725) (not e!341100))))

(declare-fun lt!237459 () List!5554)

(assert (=> d!198153 (= res!241725 (= (content!974 lt!237459) ((_ map or) (content!974 lt!237252) (content!974 suffix!1342))))))

(assert (=> d!198153 (= lt!237459 e!341101)))

(declare-fun c!106141 () Bool)

(assert (=> d!198153 (= c!106141 ((_ is Nil!5544) lt!237252))))

(assert (=> d!198153 (= (++!1551 lt!237252 suffix!1342) lt!237459)))

(declare-fun b!564675 () Bool)

(assert (=> b!564675 (= e!341101 (Cons!5544 (h!10945 lt!237252) (++!1551 (t!76189 lt!237252) suffix!1342)))))

(declare-fun b!564677 () Bool)

(assert (=> b!564677 (= e!341100 (or (not (= suffix!1342 Nil!5544)) (= lt!237459 lt!237252)))))

(declare-fun b!564676 () Bool)

(declare-fun res!241726 () Bool)

(assert (=> b!564676 (=> (not res!241726) (not e!341100))))

(assert (=> b!564676 (= res!241726 (= (size!4423 lt!237459) (+ (size!4423 lt!237252) (size!4423 suffix!1342))))))

(assert (= (and d!198153 c!106141) b!564674))

(assert (= (and d!198153 (not c!106141)) b!564675))

(assert (= (and d!198153 res!241725) b!564676))

(assert (= (and b!564676 res!241726) b!564677))

(declare-fun m!818041 () Bool)

(assert (=> d!198153 m!818041))

(declare-fun m!818043 () Bool)

(assert (=> d!198153 m!818043))

(assert (=> d!198153 m!817863))

(declare-fun m!818045 () Bool)

(assert (=> b!564675 m!818045))

(declare-fun m!818047 () Bool)

(assert (=> b!564676 m!818047))

(assert (=> b!564676 m!817291))

(assert (=> b!564676 m!817869))

(assert (=> b!564146 d!198153))

(declare-fun d!198155 () Bool)

(assert (=> d!198155 (= (get!2109 lt!237237) (v!16256 lt!237237))))

(assert (=> b!564135 d!198155))

(declare-fun d!198157 () Bool)

(declare-fun lt!237460 () List!5554)

(assert (=> d!198157 (= (++!1551 input!2705 lt!237460) input!2705)))

(declare-fun e!341102 () List!5554)

(assert (=> d!198157 (= lt!237460 e!341102)))

(declare-fun c!106142 () Bool)

(assert (=> d!198157 (= c!106142 ((_ is Cons!5544) input!2705))))

(assert (=> d!198157 (>= (size!4423 input!2705) (size!4423 input!2705))))

(assert (=> d!198157 (= (getSuffix!216 input!2705 input!2705) lt!237460)))

(declare-fun b!564678 () Bool)

(assert (=> b!564678 (= e!341102 (getSuffix!216 (tail!737 input!2705) (t!76189 input!2705)))))

(declare-fun b!564679 () Bool)

(assert (=> b!564679 (= e!341102 input!2705)))

(assert (= (and d!198157 c!106142) b!564678))

(assert (= (and d!198157 (not c!106142)) b!564679))

(declare-fun m!818049 () Bool)

(assert (=> d!198157 m!818049))

(assert (=> d!198157 m!817417))

(assert (=> d!198157 m!817417))

(assert (=> b!564678 m!817371))

(assert (=> b!564678 m!817371))

(declare-fun m!818051 () Bool)

(assert (=> b!564678 m!818051))

(assert (=> b!564156 d!198157))

(declare-fun b!564690 () Bool)

(declare-fun b_free!15689 () Bool)

(declare-fun b_next!15705 () Bool)

(assert (=> b!564690 (= b_free!15689 (not b_next!15705))))

(declare-fun t!76234 () Bool)

(declare-fun tb!49235 () Bool)

(assert (=> (and b!564690 (= (toValue!1918 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toValue!1918 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76234) tb!49235))

(declare-fun result!55094 () Bool)

(assert (= result!55094 result!55038))

(assert (=> d!197951 t!76234))

(declare-fun tb!49237 () Bool)

(declare-fun t!76236 () Bool)

(assert (=> (and b!564690 (= (toValue!1918 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toValue!1918 (transformation!1063 (rule!1797 token!491)))) t!76236) tb!49237))

(declare-fun result!55096 () Bool)

(assert (= result!55096 result!55084))

(assert (=> d!198125 t!76236))

(declare-fun tp!178158 () Bool)

(declare-fun b_and!55063 () Bool)

(assert (=> b!564690 (= tp!178158 (and (=> t!76234 result!55094) (=> t!76236 result!55096) b_and!55063))))

(declare-fun b_free!15691 () Bool)

(declare-fun b_next!15707 () Bool)

(assert (=> b!564690 (= b_free!15691 (not b_next!15707))))

(declare-fun tb!49239 () Bool)

(declare-fun t!76238 () Bool)

(assert (=> (and b!564690 (= (toChars!1777 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toChars!1777 (transformation!1063 (rule!1797 (_1!3538 (v!16256 lt!237237)))))) t!76238) tb!49239))

(declare-fun result!55098 () Bool)

(assert (= result!55098 result!55044))

(assert (=> d!197985 t!76238))

(declare-fun t!76240 () Bool)

(declare-fun tb!49241 () Bool)

(assert (=> (and b!564690 (= (toChars!1777 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toChars!1777 (transformation!1063 (rule!1797 token!491)))) t!76240) tb!49241))

(declare-fun result!55100 () Bool)

(assert (= result!55100 result!55088))

(assert (=> d!198139 t!76240))

(assert (=> b!564663 t!76240))

(declare-fun tp!178159 () Bool)

(declare-fun b_and!55065 () Bool)

(assert (=> b!564690 (= tp!178159 (and (=> t!76238 result!55098) (=> t!76240 result!55100) b_and!55065))))

(declare-fun e!341114 () Bool)

(assert (=> b!564690 (= e!341114 (and tp!178158 tp!178159))))

(declare-fun b!564689 () Bool)

(declare-fun tp!178156 () Bool)

(declare-fun e!341113 () Bool)

(assert (=> b!564689 (= e!341113 (and tp!178156 (inv!6965 (tag!1325 (h!10947 (t!76191 rules!3103)))) (inv!6968 (transformation!1063 (h!10947 (t!76191 rules!3103)))) e!341114))))

(declare-fun b!564688 () Bool)

(declare-fun e!341112 () Bool)

(declare-fun tp!178157 () Bool)

(assert (=> b!564688 (= e!341112 (and e!341113 tp!178157))))

(assert (=> b!564134 (= tp!178101 e!341112)))

(assert (= b!564689 b!564690))

(assert (= b!564688 b!564689))

(assert (= (and b!564134 ((_ is Cons!5546) (t!76191 rules!3103))) b!564688))

(declare-fun m!818053 () Bool)

(assert (=> b!564689 m!818053))

(declare-fun m!818055 () Bool)

(assert (=> b!564689 m!818055))

(declare-fun b!564703 () Bool)

(declare-fun e!341117 () Bool)

(declare-fun tp!178170 () Bool)

(assert (=> b!564703 (= e!341117 tp!178170)))

(declare-fun b!564702 () Bool)

(declare-fun tp!178174 () Bool)

(declare-fun tp!178171 () Bool)

(assert (=> b!564702 (= e!341117 (and tp!178174 tp!178171))))

(declare-fun b!564701 () Bool)

(assert (=> b!564701 (= e!341117 tp_is_empty!3149)))

(declare-fun b!564704 () Bool)

(declare-fun tp!178173 () Bool)

(declare-fun tp!178172 () Bool)

(assert (=> b!564704 (= e!341117 (and tp!178173 tp!178172))))

(assert (=> b!564133 (= tp!178096 e!341117)))

(assert (= (and b!564133 ((_ is ElementMatch!1397) (regex!1063 (rule!1797 token!491)))) b!564701))

(assert (= (and b!564133 ((_ is Concat!2484) (regex!1063 (rule!1797 token!491)))) b!564702))

(assert (= (and b!564133 ((_ is Star!1397) (regex!1063 (rule!1797 token!491)))) b!564703))

(assert (= (and b!564133 ((_ is Union!1397) (regex!1063 (rule!1797 token!491)))) b!564704))

(declare-fun b!564709 () Bool)

(declare-fun e!341120 () Bool)

(declare-fun tp!178177 () Bool)

(assert (=> b!564709 (= e!341120 (and tp_is_empty!3149 tp!178177))))

(assert (=> b!564138 (= tp!178100 e!341120)))

(assert (= (and b!564138 ((_ is Cons!5544) (t!76189 input!2705))) b!564709))

(declare-fun b!564712 () Bool)

(declare-fun e!341121 () Bool)

(declare-fun tp!178178 () Bool)

(assert (=> b!564712 (= e!341121 tp!178178)))

(declare-fun b!564711 () Bool)

(declare-fun tp!178182 () Bool)

(declare-fun tp!178179 () Bool)

(assert (=> b!564711 (= e!341121 (and tp!178182 tp!178179))))

(declare-fun b!564710 () Bool)

(assert (=> b!564710 (= e!341121 tp_is_empty!3149)))

(declare-fun b!564713 () Bool)

(declare-fun tp!178181 () Bool)

(declare-fun tp!178180 () Bool)

(assert (=> b!564713 (= e!341121 (and tp!178181 tp!178180))))

(assert (=> b!564143 (= tp!178094 e!341121)))

(assert (= (and b!564143 ((_ is ElementMatch!1397) (regex!1063 (h!10947 rules!3103)))) b!564710))

(assert (= (and b!564143 ((_ is Concat!2484) (regex!1063 (h!10947 rules!3103)))) b!564711))

(assert (= (and b!564143 ((_ is Star!1397) (regex!1063 (h!10947 rules!3103)))) b!564712))

(assert (= (and b!564143 ((_ is Union!1397) (regex!1063 (h!10947 rules!3103)))) b!564713))

(declare-fun b!564714 () Bool)

(declare-fun e!341122 () Bool)

(declare-fun tp!178183 () Bool)

(assert (=> b!564714 (= e!341122 (and tp_is_empty!3149 tp!178183))))

(assert (=> b!564132 (= tp!178102 e!341122)))

(assert (= (and b!564132 ((_ is Cons!5544) (originalCharacters!1102 token!491))) b!564714))

(declare-fun b!564715 () Bool)

(declare-fun e!341123 () Bool)

(declare-fun tp!178184 () Bool)

(assert (=> b!564715 (= e!341123 (and tp_is_empty!3149 tp!178184))))

(assert (=> b!564152 (= tp!178098 e!341123)))

(assert (= (and b!564152 ((_ is Cons!5544) (t!76189 suffix!1342))) b!564715))

(declare-fun b_lambda!21783 () Bool)

(assert (= b_lambda!21779 (or (and b!564155 b_free!15679) (and b!564136 b_free!15683 (= (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toChars!1777 (transformation!1063 (rule!1797 token!491))))) (and b!564690 b_free!15691 (= (toChars!1777 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toChars!1777 (transformation!1063 (rule!1797 token!491))))) b_lambda!21783)))

(declare-fun b_lambda!21785 () Bool)

(assert (= b_lambda!21781 (or (and b!564155 b_free!15679) (and b!564136 b_free!15683 (= (toChars!1777 (transformation!1063 (h!10947 rules!3103))) (toChars!1777 (transformation!1063 (rule!1797 token!491))))) (and b!564690 b_free!15691 (= (toChars!1777 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toChars!1777 (transformation!1063 (rule!1797 token!491))))) b_lambda!21785)))

(declare-fun b_lambda!21787 () Bool)

(assert (= b_lambda!21777 (or (and b!564155 b_free!15677) (and b!564136 b_free!15681 (= (toValue!1918 (transformation!1063 (h!10947 rules!3103))) (toValue!1918 (transformation!1063 (rule!1797 token!491))))) (and b!564690 b_free!15689 (= (toValue!1918 (transformation!1063 (h!10947 (t!76191 rules!3103)))) (toValue!1918 (transformation!1063 (rule!1797 token!491))))) b_lambda!21787)))

(check-sat (not b!564232) (not b!564702) (not b!564339) (not b!564292) (not b!564669) (not d!197977) (not b!564290) (not b!564407) (not d!198157) (not d!197981) (not d!197987) (not b!564667) b_and!55051 (not b_next!15707) (not d!198149) (not b_lambda!21787) (not d!198123) (not b!564544) (not b!564377) (not b!564404) (not b!564345) (not b!564646) (not d!197937) (not b!564644) (not d!197999) (not b!564704) (not b!564711) (not b!564639) (not b!564688) (not b!564564) (not b_next!15697) (not b!564376) (not tb!49199) (not b_lambda!21783) (not d!198033) (not b!564550) (not b!564381) (not b!564689) (not b_next!15693) (not d!198135) (not b!564423) (not b!564632) (not b!564630) (not b!564647) (not b!564318) (not b!564287) (not b!564703) (not d!198003) (not b!564551) (not d!198031) (not d!197993) (not d!197929) (not b!564637) (not b!564230) (not b!564409) (not b!564670) (not b!564408) (not d!197991) (not bm!39305) (not b!564546) (not b_next!15705) (not b!564455) (not bm!39312) (not d!198153) (not b!564658) (not b!564656) (not b!564676) (not b!564665) (not tb!49227) (not d!197949) (not d!197919) (not b!564422) (not b!564655) (not b!564240) (not d!197995) (not b!564548) (not b!564449) (not b!564231) (not b!564672) (not b_next!15699) (not b!564337) (not bm!39314) (not b!564552) (not b!564444) (not d!198151) (not d!197955) (not b!564549) (not b!564713) (not d!198005) (not d!197979) (not b!564715) (not b!564288) (not b!564635) (not b!564410) (not b!564228) (not b!564673) (not b!564668) (not b!564633) (not b!564332) (not b_lambda!21785) (not b!564714) (not b!564636) (not b!564336) (not b!564631) (not b!564663) (not b!564447) (not b!564335) (not b_lambda!21759) (not d!198129) (not b!564664) (not d!198105) (not tb!49195) b_and!55063 (not b!564236) b_and!55059 b_and!55061 (not d!198109) (not d!197985) (not b!564643) (not d!197997) (not b_lambda!21757) (not d!198015) (not b!564651) (not d!198119) (not b_next!15695) (not b!564640) (not d!198137) (not b!564347) (not b!564291) (not d!198131) (not b!564675) (not d!198139) (not b!564678) (not b!564712) (not b!564547) (not d!198027) (not b!564346) (not d!198009) (not b!564671) (not b!564654) b_and!55053 (not b!564634) (not b!564443) b_and!55065 (not d!197989) tp_is_empty!3149 (not tb!49231) (not d!197983) (not b!564641) (not d!198121) (not b!564360) (not b!564645) (not b!564286) (not d!198145) (not d!197965) (not b!564652) (not b!564366) (not b!564709) (not b!564642) (not b!564563) (not d!198127))
(check-sat b_and!55051 (not b_next!15707) (not b_next!15697) (not b_next!15693) (not b_next!15705) (not b_next!15699) b_and!55063 (not b_next!15695) b_and!55053 b_and!55065 b_and!55059 b_and!55061)
