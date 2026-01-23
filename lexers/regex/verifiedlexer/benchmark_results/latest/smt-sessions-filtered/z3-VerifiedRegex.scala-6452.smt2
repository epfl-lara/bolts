; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337398 () Bool)

(assert start!337398)

(declare-fun b!3622375 () Bool)

(declare-fun b_free!94529 () Bool)

(declare-fun b_next!95233 () Bool)

(assert (=> b!3622375 (= b_free!94529 (not b_next!95233))))

(declare-fun tp!1106440 () Bool)

(declare-fun b_and!264947 () Bool)

(assert (=> b!3622375 (= tp!1106440 b_and!264947)))

(declare-fun b_free!94531 () Bool)

(declare-fun b_next!95235 () Bool)

(assert (=> b!3622375 (= b_free!94531 (not b_next!95235))))

(declare-fun tp!1106442 () Bool)

(declare-fun b_and!264949 () Bool)

(assert (=> b!3622375 (= tp!1106442 b_and!264949)))

(declare-fun b!3622397 () Bool)

(declare-fun b_free!94533 () Bool)

(declare-fun b_next!95237 () Bool)

(assert (=> b!3622397 (= b_free!94533 (not b_next!95237))))

(declare-fun tp!1106443 () Bool)

(declare-fun b_and!264951 () Bool)

(assert (=> b!3622397 (= tp!1106443 b_and!264951)))

(declare-fun b_free!94535 () Bool)

(declare-fun b_next!95239 () Bool)

(assert (=> b!3622397 (= b_free!94535 (not b_next!95239))))

(declare-fun tp!1106446 () Bool)

(declare-fun b_and!264953 () Bool)

(assert (=> b!3622397 (= tp!1106446 b_and!264953)))

(declare-fun b!3622381 () Bool)

(declare-fun b_free!94537 () Bool)

(declare-fun b_next!95241 () Bool)

(assert (=> b!3622381 (= b_free!94537 (not b_next!95241))))

(declare-fun tp!1106448 () Bool)

(declare-fun b_and!264955 () Bool)

(assert (=> b!3622381 (= tp!1106448 b_and!264955)))

(declare-fun b_free!94539 () Bool)

(declare-fun b_next!95243 () Bool)

(assert (=> b!3622381 (= b_free!94539 (not b_next!95243))))

(declare-fun tp!1106450 () Bool)

(declare-fun b_and!264957 () Bool)

(assert (=> b!3622381 (= tp!1106450 b_and!264957)))

(declare-fun b!3622399 () Bool)

(declare-fun b_free!94541 () Bool)

(declare-fun b_next!95245 () Bool)

(assert (=> b!3622399 (= b_free!94541 (not b_next!95245))))

(declare-fun tp!1106447 () Bool)

(declare-fun b_and!264959 () Bool)

(assert (=> b!3622399 (= tp!1106447 b_and!264959)))

(declare-fun b_free!94543 () Bool)

(declare-fun b_next!95247 () Bool)

(assert (=> b!3622399 (= b_free!94543 (not b_next!95247))))

(declare-fun tp!1106436 () Bool)

(declare-fun b_and!264961 () Bool)

(assert (=> b!3622399 (= tp!1106436 b_and!264961)))

(declare-fun b!3622371 () Bool)

(declare-fun res!1466089 () Bool)

(declare-fun e!2242246 () Bool)

(assert (=> b!3622371 (=> res!1466089 e!2242246)))

(declare-datatypes ((List!38289 0))(
  ( (Nil!38165) (Cons!38165 (h!43585 (_ BitVec 16)) (t!294260 List!38289)) )
))
(declare-datatypes ((TokenValue!5914 0))(
  ( (FloatLiteralValue!11828 (text!41843 List!38289)) (TokenValueExt!5913 (__x!24045 Int)) (Broken!29570 (value!182428 List!38289)) (Object!6037) (End!5914) (Def!5914) (Underscore!5914) (Match!5914) (Else!5914) (Error!5914) (Case!5914) (If!5914) (Extends!5914) (Abstract!5914) (Class!5914) (Val!5914) (DelimiterValue!11828 (del!5974 List!38289)) (KeywordValue!5920 (value!182429 List!38289)) (CommentValue!11828 (value!182430 List!38289)) (WhitespaceValue!11828 (value!182431 List!38289)) (IndentationValue!5914 (value!182432 List!38289)) (String!42903) (Int32!5914) (Broken!29571 (value!182433 List!38289)) (Boolean!5915) (Unit!54913) (OperatorValue!5917 (op!5974 List!38289)) (IdentifierValue!11828 (value!182434 List!38289)) (IdentifierValue!11829 (value!182435 List!38289)) (WhitespaceValue!11829 (value!182436 List!38289)) (True!11828) (False!11828) (Broken!29572 (value!182437 List!38289)) (Broken!29573 (value!182438 List!38289)) (True!11829) (RightBrace!5914) (RightBracket!5914) (Colon!5914) (Null!5914) (Comma!5914) (LeftBracket!5914) (False!11829) (LeftBrace!5914) (ImaginaryLiteralValue!5914 (text!41844 List!38289)) (StringLiteralValue!17742 (value!182439 List!38289)) (EOFValue!5914 (value!182440 List!38289)) (IdentValue!5914 (value!182441 List!38289)) (DelimiterValue!11829 (value!182442 List!38289)) (DedentValue!5914 (value!182443 List!38289)) (NewLineValue!5914 (value!182444 List!38289)) (IntegerValue!17742 (value!182445 (_ BitVec 32)) (text!41845 List!38289)) (IntegerValue!17743 (value!182446 Int) (text!41846 List!38289)) (Times!5914) (Or!5914) (Equal!5914) (Minus!5914) (Broken!29574 (value!182447 List!38289)) (And!5914) (Div!5914) (LessEqual!5914) (Mod!5914) (Concat!16357) (Not!5914) (Plus!5914) (SpaceValue!5914 (value!182448 List!38289)) (IntegerValue!17744 (value!182449 Int) (text!41847 List!38289)) (StringLiteralValue!17743 (text!41848 List!38289)) (FloatLiteralValue!11829 (text!41849 List!38289)) (BytesLiteralValue!5914 (value!182450 List!38289)) (CommentValue!11829 (value!182451 List!38289)) (StringLiteralValue!17744 (value!182452 List!38289)) (ErrorTokenValue!5914 (msg!5975 List!38289)) )
))
(declare-datatypes ((C!21072 0))(
  ( (C!21073 (val!12584 Int)) )
))
(declare-datatypes ((Regex!10443 0))(
  ( (ElementMatch!10443 (c!626792 C!21072)) (Concat!16358 (regOne!21398 Regex!10443) (regTwo!21398 Regex!10443)) (EmptyExpr!10443) (Star!10443 (reg!10772 Regex!10443)) (EmptyLang!10443) (Union!10443 (regOne!21399 Regex!10443) (regTwo!21399 Regex!10443)) )
))
(declare-datatypes ((String!42904 0))(
  ( (String!42905 (value!182453 String)) )
))
(declare-datatypes ((List!38290 0))(
  ( (Nil!38166) (Cons!38166 (h!43586 C!21072) (t!294261 List!38290)) )
))
(declare-datatypes ((IArray!23283 0))(
  ( (IArray!23284 (innerList!11699 List!38290)) )
))
(declare-datatypes ((Conc!11639 0))(
  ( (Node!11639 (left!29795 Conc!11639) (right!30125 Conc!11639) (csize!23508 Int) (cheight!11850 Int)) (Leaf!18092 (xs!14841 IArray!23283) (csize!23509 Int)) (Empty!11639) )
))
(declare-datatypes ((BalanceConc!22892 0))(
  ( (BalanceConc!22893 (c!626793 Conc!11639)) )
))
(declare-datatypes ((TokenValueInjection!11256 0))(
  ( (TokenValueInjection!11257 (toValue!7968 Int) (toChars!7827 Int)) )
))
(declare-datatypes ((Rule!11168 0))(
  ( (Rule!11169 (regex!5684 Regex!10443) (tag!6404 String!42904) (isSeparator!5684 Bool) (transformation!5684 TokenValueInjection!11256)) )
))
(declare-datatypes ((List!38291 0))(
  ( (Nil!38167) (Cons!38167 (h!43587 Rule!11168) (t!294262 List!38291)) )
))
(declare-fun rules!3307 () List!38291)

(declare-fun sepAndNonSepRulesDisjointChars!1854 (List!38291 List!38291) Bool)

(assert (=> b!3622371 (= res!1466089 (not (sepAndNonSepRulesDisjointChars!1854 rules!3307 rules!3307)))))

(declare-fun b!3622372 () Bool)

(declare-fun res!1466098 () Bool)

(declare-fun e!2242252 () Bool)

(assert (=> b!3622372 (=> (not res!1466098) (not e!2242252))))

(declare-datatypes ((Token!10734 0))(
  ( (Token!10735 (value!182454 TokenValue!5914) (rule!8446 Rule!11168) (size!29110 Int) (originalCharacters!6398 List!38290)) )
))
(declare-fun token!511 () Token!10734)

(declare-fun rule!403 () Rule!11168)

(assert (=> b!3622372 (= res!1466098 (= (rule!8446 token!511) rule!403))))

(declare-fun b!3622373 () Bool)

(declare-fun e!2242238 () Bool)

(assert (=> b!3622373 (= e!2242238 e!2242252)))

(declare-fun res!1466101 () Bool)

(assert (=> b!3622373 (=> (not res!1466101) (not e!2242252))))

(declare-datatypes ((tuple2!38036 0))(
  ( (tuple2!38037 (_1!22152 Token!10734) (_2!22152 List!38290)) )
))
(declare-fun lt!1252084 () tuple2!38036)

(assert (=> b!3622373 (= res!1466101 (= (_1!22152 lt!1252084) token!511))))

(declare-datatypes ((Option!7998 0))(
  ( (None!7997) (Some!7997 (v!37767 tuple2!38036)) )
))
(declare-fun lt!1252070 () Option!7998)

(declare-fun get!12450 (Option!7998) tuple2!38036)

(assert (=> b!3622373 (= lt!1252084 (get!12450 lt!1252070))))

(declare-fun b!3622374 () Bool)

(declare-fun e!2242258 () Bool)

(assert (=> b!3622374 (= e!2242258 e!2242246)))

(declare-fun res!1466092 () Bool)

(assert (=> b!3622374 (=> res!1466092 e!2242246)))

(declare-fun lt!1252080 () C!21072)

(declare-fun contains!7431 (List!38290 C!21072) Bool)

(declare-fun usedCharacters!898 (Regex!10443) List!38290)

(assert (=> b!3622374 (= res!1466092 (contains!7431 (usedCharacters!898 (regex!5684 rule!403)) lt!1252080))))

(declare-fun suffix!1395 () List!38290)

(declare-fun head!7656 (List!38290) C!21072)

(assert (=> b!3622374 (= lt!1252080 (head!7656 suffix!1395))))

(declare-fun e!2242243 () Bool)

(assert (=> b!3622375 (= e!2242243 (and tp!1106440 tp!1106442))))

(declare-fun tp!1106449 () Bool)

(declare-fun e!2242242 () Bool)

(declare-fun b!3622376 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11168)

(declare-fun e!2242241 () Bool)

(declare-fun inv!51560 (String!42904) Bool)

(declare-fun inv!51563 (TokenValueInjection!11256) Bool)

(assert (=> b!3622376 (= e!2242242 (and tp!1106449 (inv!51560 (tag!6404 anOtherTypeRule!33)) (inv!51563 (transformation!5684 anOtherTypeRule!33)) e!2242241))))

(declare-fun b!3622377 () Bool)

(declare-fun e!2242253 () Bool)

(assert (=> b!3622377 (= e!2242246 e!2242253)))

(declare-fun res!1466087 () Bool)

(assert (=> b!3622377 (=> res!1466087 e!2242253)))

(declare-fun lt!1252086 () List!38290)

(declare-fun lt!1252082 () List!38290)

(declare-fun isPrefix!3047 (List!38290 List!38290) Bool)

(assert (=> b!3622377 (= res!1466087 (not (isPrefix!3047 lt!1252086 lt!1252082)))))

(declare-fun lt!1252077 () tuple2!38036)

(declare-fun ++!9500 (List!38290 List!38290) List!38290)

(assert (=> b!3622377 (isPrefix!3047 lt!1252086 (++!9500 lt!1252086 (_2!22152 lt!1252077)))))

(declare-datatypes ((Unit!54914 0))(
  ( (Unit!54915) )
))
(declare-fun lt!1252079 () Unit!54914)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1968 (List!38290 List!38290) Unit!54914)

(assert (=> b!3622377 (= lt!1252079 (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252086 (_2!22152 lt!1252077)))))

(declare-fun lt!1252071 () BalanceConc!22892)

(declare-fun list!14088 (BalanceConc!22892) List!38290)

(assert (=> b!3622377 (= lt!1252086 (list!14088 lt!1252071))))

(declare-fun charsOf!3698 (Token!10734) BalanceConc!22892)

(assert (=> b!3622377 (= lt!1252071 (charsOf!3698 (_1!22152 lt!1252077)))))

(declare-fun e!2242235 () Bool)

(assert (=> b!3622377 e!2242235))

(declare-fun res!1466095 () Bool)

(assert (=> b!3622377 (=> (not res!1466095) (not e!2242235))))

(declare-datatypes ((Option!7999 0))(
  ( (None!7998) (Some!7998 (v!37768 Rule!11168)) )
))
(declare-fun lt!1252085 () Option!7999)

(declare-fun isDefined!6230 (Option!7999) Bool)

(assert (=> b!3622377 (= res!1466095 (isDefined!6230 lt!1252085))))

(declare-datatypes ((LexerInterface!5273 0))(
  ( (LexerInterfaceExt!5270 (__x!24046 Int)) (Lexer!5271) )
))
(declare-fun thiss!23823 () LexerInterface!5273)

(declare-fun getRuleFromTag!1290 (LexerInterface!5273 List!38291 String!42904) Option!7999)

(assert (=> b!3622377 (= lt!1252085 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun lt!1252076 () Unit!54914)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1290 (LexerInterface!5273 List!38291 List!38290 Token!10734) Unit!54914)

(assert (=> b!3622377 (= lt!1252076 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1290 thiss!23823 rules!3307 lt!1252082 (_1!22152 lt!1252077)))))

(declare-fun lt!1252078 () Option!7998)

(assert (=> b!3622377 (= lt!1252077 (get!12450 lt!1252078))))

(declare-fun lt!1252087 () Unit!54914)

(declare-fun lt!1252088 () List!38290)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!953 (LexerInterface!5273 List!38291 List!38290 List!38290) Unit!54914)

(assert (=> b!3622377 (= lt!1252087 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!953 thiss!23823 rules!3307 lt!1252088 suffix!1395))))

(declare-fun maxPrefix!2807 (LexerInterface!5273 List!38291 List!38290) Option!7998)

(assert (=> b!3622377 (= lt!1252078 (maxPrefix!2807 thiss!23823 rules!3307 lt!1252082))))

(assert (=> b!3622377 (isPrefix!3047 lt!1252088 lt!1252082)))

(declare-fun lt!1252083 () Unit!54914)

(assert (=> b!3622377 (= lt!1252083 (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252088 suffix!1395))))

(assert (=> b!3622377 (= lt!1252082 (++!9500 lt!1252088 suffix!1395))))

(declare-fun b!3622378 () Bool)

(declare-fun e!2242256 () Bool)

(declare-fun tp!1106438 () Bool)

(declare-fun e!2242247 () Bool)

(assert (=> b!3622378 (= e!2242256 (and tp!1106438 (inv!51560 (tag!6404 rule!403)) (inv!51563 (transformation!5684 rule!403)) e!2242247))))

(declare-fun b!3622379 () Bool)

(declare-fun e!2242248 () Bool)

(assert (=> b!3622379 (= e!2242248 e!2242238)))

(declare-fun res!1466094 () Bool)

(assert (=> b!3622379 (=> (not res!1466094) (not e!2242238))))

(declare-fun isDefined!6231 (Option!7998) Bool)

(assert (=> b!3622379 (= res!1466094 (isDefined!6231 lt!1252070))))

(assert (=> b!3622379 (= lt!1252070 (maxPrefix!2807 thiss!23823 rules!3307 lt!1252088))))

(assert (=> b!3622379 (= lt!1252088 (list!14088 (charsOf!3698 token!511)))))

(declare-fun e!2242244 () Bool)

(declare-fun tp!1106441 () Bool)

(declare-fun b!3622380 () Bool)

(assert (=> b!3622380 (= e!2242244 (and tp!1106441 (inv!51560 (tag!6404 (h!43587 rules!3307))) (inv!51563 (transformation!5684 (h!43587 rules!3307))) e!2242243))))

(assert (=> b!3622381 (= e!2242247 (and tp!1106448 tp!1106450))))

(declare-fun b!3622382 () Bool)

(declare-fun res!1466088 () Bool)

(assert (=> b!3622382 (=> (not res!1466088) (not e!2242248))))

(declare-fun contains!7432 (List!38291 Rule!11168) Bool)

(assert (=> b!3622382 (= res!1466088 (contains!7432 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3622383 () Bool)

(declare-fun e!2242245 () Bool)

(assert (=> b!3622383 (= e!2242235 e!2242245)))

(declare-fun res!1466096 () Bool)

(assert (=> b!3622383 (=> (not res!1466096) (not e!2242245))))

(declare-fun lt!1252074 () Rule!11168)

(declare-fun matchR!5012 (Regex!10443 List!38290) Bool)

(assert (=> b!3622383 (= res!1466096 (matchR!5012 (regex!5684 lt!1252074) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun get!12451 (Option!7999) Rule!11168)

(assert (=> b!3622383 (= lt!1252074 (get!12451 lt!1252085))))

(declare-fun b!3622384 () Bool)

(assert (=> b!3622384 (= e!2242252 (not e!2242258))))

(declare-fun res!1466099 () Bool)

(assert (=> b!3622384 (=> res!1466099 e!2242258)))

(assert (=> b!3622384 (= res!1466099 (not (matchR!5012 (regex!5684 rule!403) lt!1252088)))))

(declare-fun ruleValid!1949 (LexerInterface!5273 Rule!11168) Bool)

(assert (=> b!3622384 (ruleValid!1949 thiss!23823 rule!403)))

(declare-fun lt!1252081 () Unit!54914)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1104 (LexerInterface!5273 Rule!11168 List!38291) Unit!54914)

(assert (=> b!3622384 (= lt!1252081 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1104 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3622385 () Bool)

(declare-fun res!1466103 () Bool)

(assert (=> b!3622385 (=> (not res!1466103) (not e!2242248))))

(declare-fun isEmpty!22558 (List!38291) Bool)

(assert (=> b!3622385 (= res!1466103 (not (isEmpty!22558 rules!3307)))))

(declare-fun b!3622386 () Bool)

(declare-fun res!1466091 () Bool)

(assert (=> b!3622386 (=> (not res!1466091) (not e!2242252))))

(declare-fun isEmpty!22559 (List!38290) Bool)

(assert (=> b!3622386 (= res!1466091 (isEmpty!22559 (_2!22152 lt!1252084)))))

(declare-fun b!3622387 () Bool)

(declare-fun res!1466090 () Bool)

(assert (=> b!3622387 (=> (not res!1466090) (not e!2242248))))

(assert (=> b!3622387 (= res!1466090 (contains!7432 rules!3307 rule!403))))

(declare-fun res!1466105 () Bool)

(assert (=> start!337398 (=> (not res!1466105) (not e!2242248))))

(get-info :version)

(assert (=> start!337398 (= res!1466105 ((_ is Lexer!5271) thiss!23823))))

(assert (=> start!337398 e!2242248))

(declare-fun e!2242257 () Bool)

(assert (=> start!337398 e!2242257))

(declare-fun e!2242250 () Bool)

(assert (=> start!337398 e!2242250))

(assert (=> start!337398 true))

(declare-fun e!2242251 () Bool)

(declare-fun inv!51564 (Token!10734) Bool)

(assert (=> start!337398 (and (inv!51564 token!511) e!2242251)))

(assert (=> start!337398 e!2242256))

(assert (=> start!337398 e!2242242))

(declare-fun e!2242240 () Bool)

(declare-fun tp!1106444 () Bool)

(declare-fun b!3622388 () Bool)

(declare-fun inv!21 (TokenValue!5914) Bool)

(assert (=> b!3622388 (= e!2242251 (and (inv!21 (value!182454 token!511)) e!2242240 tp!1106444))))

(declare-fun b!3622389 () Bool)

(declare-fun tp_is_empty!17969 () Bool)

(declare-fun tp!1106439 () Bool)

(assert (=> b!3622389 (= e!2242250 (and tp_is_empty!17969 tp!1106439))))

(declare-fun b!3622390 () Bool)

(declare-fun res!1466100 () Bool)

(assert (=> b!3622390 (=> (not res!1466100) (not e!2242248))))

(declare-fun rulesInvariant!4670 (LexerInterface!5273 List!38291) Bool)

(assert (=> b!3622390 (= res!1466100 (rulesInvariant!4670 thiss!23823 rules!3307))))

(declare-fun b!3622391 () Bool)

(declare-fun tp!1106445 () Bool)

(assert (=> b!3622391 (= e!2242257 (and e!2242244 tp!1106445))))

(declare-fun b!3622392 () Bool)

(assert (=> b!3622392 (= e!2242245 (= (rule!8446 (_1!22152 lt!1252077)) lt!1252074))))

(declare-fun b!3622393 () Bool)

(declare-fun res!1466093 () Bool)

(assert (=> b!3622393 (=> res!1466093 e!2242258)))

(assert (=> b!3622393 (= res!1466093 (isEmpty!22559 suffix!1395))))

(declare-fun b!3622394 () Bool)

(declare-fun res!1466102 () Bool)

(assert (=> b!3622394 (=> res!1466102 e!2242253)))

(assert (=> b!3622394 (= res!1466102 (not (matchR!5012 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252086)))))

(declare-fun b!3622395 () Bool)

(declare-fun res!1466097 () Bool)

(assert (=> b!3622395 (=> (not res!1466097) (not e!2242248))))

(assert (=> b!3622395 (= res!1466097 (not (= (isSeparator!5684 anOtherTypeRule!33) (isSeparator!5684 rule!403))))))

(declare-fun b!3622396 () Bool)

(declare-fun apply!9186 (TokenValueInjection!11256 BalanceConc!22892) TokenValue!5914)

(declare-fun size!29111 (BalanceConc!22892) Int)

(assert (=> b!3622396 (= e!2242253 (= lt!1252078 (Some!7997 (tuple2!38037 (Token!10735 (apply!9186 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071) (rule!8446 (_1!22152 lt!1252077)) (size!29111 lt!1252071) lt!1252086) (_2!22152 lt!1252077)))))))

(declare-fun lt!1252075 () Unit!54914)

(declare-fun lemmaCharactersSize!731 (Token!10734) Unit!54914)

(assert (=> b!3622396 (= lt!1252075 (lemmaCharactersSize!731 (_1!22152 lt!1252077)))))

(declare-fun lt!1252072 () Unit!54914)

(declare-fun lemmaEqSameImage!869 (TokenValueInjection!11256 BalanceConc!22892 BalanceConc!22892) Unit!54914)

(declare-fun seqFromList!4233 (List!38290) BalanceConc!22892)

(assert (=> b!3622396 (= lt!1252072 (lemmaEqSameImage!869 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(declare-fun lt!1252073 () Unit!54914)

(declare-fun lemmaSemiInverse!1435 (TokenValueInjection!11256 BalanceConc!22892) Unit!54914)

(assert (=> b!3622396 (= lt!1252073 (lemmaSemiInverse!1435 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071))))

(assert (=> b!3622397 (= e!2242241 (and tp!1106443 tp!1106446))))

(declare-fun b!3622398 () Bool)

(declare-fun res!1466104 () Bool)

(assert (=> b!3622398 (=> res!1466104 e!2242246)))

(assert (=> b!3622398 (= res!1466104 (not (contains!7431 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)) lt!1252080)))))

(declare-fun e!2242249 () Bool)

(assert (=> b!3622399 (= e!2242249 (and tp!1106447 tp!1106436))))

(declare-fun tp!1106437 () Bool)

(declare-fun b!3622400 () Bool)

(assert (=> b!3622400 (= e!2242240 (and tp!1106437 (inv!51560 (tag!6404 (rule!8446 token!511))) (inv!51563 (transformation!5684 (rule!8446 token!511))) e!2242249))))

(assert (= (and start!337398 res!1466105) b!3622385))

(assert (= (and b!3622385 res!1466103) b!3622390))

(assert (= (and b!3622390 res!1466100) b!3622387))

(assert (= (and b!3622387 res!1466090) b!3622382))

(assert (= (and b!3622382 res!1466088) b!3622395))

(assert (= (and b!3622395 res!1466097) b!3622379))

(assert (= (and b!3622379 res!1466094) b!3622373))

(assert (= (and b!3622373 res!1466101) b!3622386))

(assert (= (and b!3622386 res!1466091) b!3622372))

(assert (= (and b!3622372 res!1466098) b!3622384))

(assert (= (and b!3622384 (not res!1466099)) b!3622393))

(assert (= (and b!3622393 (not res!1466093)) b!3622374))

(assert (= (and b!3622374 (not res!1466092)) b!3622398))

(assert (= (and b!3622398 (not res!1466104)) b!3622371))

(assert (= (and b!3622371 (not res!1466089)) b!3622377))

(assert (= (and b!3622377 res!1466095) b!3622383))

(assert (= (and b!3622383 res!1466096) b!3622392))

(assert (= (and b!3622377 (not res!1466087)) b!3622394))

(assert (= (and b!3622394 (not res!1466102)) b!3622396))

(assert (= b!3622380 b!3622375))

(assert (= b!3622391 b!3622380))

(assert (= (and start!337398 ((_ is Cons!38167) rules!3307)) b!3622391))

(assert (= (and start!337398 ((_ is Cons!38166) suffix!1395)) b!3622389))

(assert (= b!3622400 b!3622399))

(assert (= b!3622388 b!3622400))

(assert (= start!337398 b!3622388))

(assert (= b!3622378 b!3622381))

(assert (= start!337398 b!3622378))

(assert (= b!3622376 b!3622397))

(assert (= start!337398 b!3622376))

(declare-fun m!4122195 () Bool)

(assert (=> b!3622374 m!4122195))

(assert (=> b!3622374 m!4122195))

(declare-fun m!4122197 () Bool)

(assert (=> b!3622374 m!4122197))

(declare-fun m!4122199 () Bool)

(assert (=> b!3622374 m!4122199))

(declare-fun m!4122201 () Bool)

(assert (=> b!3622396 m!4122201))

(declare-fun m!4122203 () Bool)

(assert (=> b!3622396 m!4122203))

(declare-fun m!4122205 () Bool)

(assert (=> b!3622396 m!4122205))

(declare-fun m!4122207 () Bool)

(assert (=> b!3622396 m!4122207))

(declare-fun m!4122209 () Bool)

(assert (=> b!3622396 m!4122209))

(declare-fun m!4122211 () Bool)

(assert (=> b!3622396 m!4122211))

(assert (=> b!3622396 m!4122207))

(declare-fun m!4122213 () Bool)

(assert (=> b!3622386 m!4122213))

(declare-fun m!4122215 () Bool)

(assert (=> b!3622393 m!4122215))

(declare-fun m!4122217 () Bool)

(assert (=> b!3622390 m!4122217))

(declare-fun m!4122219 () Bool)

(assert (=> b!3622387 m!4122219))

(declare-fun m!4122221 () Bool)

(assert (=> b!3622382 m!4122221))

(declare-fun m!4122223 () Bool)

(assert (=> b!3622376 m!4122223))

(declare-fun m!4122225 () Bool)

(assert (=> b!3622376 m!4122225))

(declare-fun m!4122227 () Bool)

(assert (=> b!3622388 m!4122227))

(declare-fun m!4122229 () Bool)

(assert (=> b!3622378 m!4122229))

(declare-fun m!4122231 () Bool)

(assert (=> b!3622378 m!4122231))

(declare-fun m!4122233 () Bool)

(assert (=> b!3622385 m!4122233))

(declare-fun m!4122235 () Bool)

(assert (=> b!3622400 m!4122235))

(declare-fun m!4122237 () Bool)

(assert (=> b!3622400 m!4122237))

(declare-fun m!4122239 () Bool)

(assert (=> start!337398 m!4122239))

(declare-fun m!4122241 () Bool)

(assert (=> b!3622383 m!4122241))

(assert (=> b!3622383 m!4122241))

(declare-fun m!4122243 () Bool)

(assert (=> b!3622383 m!4122243))

(assert (=> b!3622383 m!4122243))

(declare-fun m!4122245 () Bool)

(assert (=> b!3622383 m!4122245))

(declare-fun m!4122247 () Bool)

(assert (=> b!3622383 m!4122247))

(declare-fun m!4122249 () Bool)

(assert (=> b!3622394 m!4122249))

(declare-fun m!4122251 () Bool)

(assert (=> b!3622379 m!4122251))

(declare-fun m!4122253 () Bool)

(assert (=> b!3622379 m!4122253))

(declare-fun m!4122255 () Bool)

(assert (=> b!3622379 m!4122255))

(assert (=> b!3622379 m!4122255))

(declare-fun m!4122257 () Bool)

(assert (=> b!3622379 m!4122257))

(declare-fun m!4122259 () Bool)

(assert (=> b!3622377 m!4122259))

(declare-fun m!4122261 () Bool)

(assert (=> b!3622377 m!4122261))

(declare-fun m!4122263 () Bool)

(assert (=> b!3622377 m!4122263))

(declare-fun m!4122265 () Bool)

(assert (=> b!3622377 m!4122265))

(declare-fun m!4122267 () Bool)

(assert (=> b!3622377 m!4122267))

(declare-fun m!4122269 () Bool)

(assert (=> b!3622377 m!4122269))

(declare-fun m!4122271 () Bool)

(assert (=> b!3622377 m!4122271))

(declare-fun m!4122273 () Bool)

(assert (=> b!3622377 m!4122273))

(declare-fun m!4122275 () Bool)

(assert (=> b!3622377 m!4122275))

(assert (=> b!3622377 m!4122241))

(declare-fun m!4122277 () Bool)

(assert (=> b!3622377 m!4122277))

(assert (=> b!3622377 m!4122263))

(declare-fun m!4122279 () Bool)

(assert (=> b!3622377 m!4122279))

(declare-fun m!4122281 () Bool)

(assert (=> b!3622377 m!4122281))

(declare-fun m!4122283 () Bool)

(assert (=> b!3622377 m!4122283))

(declare-fun m!4122285 () Bool)

(assert (=> b!3622377 m!4122285))

(declare-fun m!4122287 () Bool)

(assert (=> b!3622398 m!4122287))

(assert (=> b!3622398 m!4122287))

(declare-fun m!4122289 () Bool)

(assert (=> b!3622398 m!4122289))

(declare-fun m!4122291 () Bool)

(assert (=> b!3622384 m!4122291))

(declare-fun m!4122293 () Bool)

(assert (=> b!3622384 m!4122293))

(declare-fun m!4122295 () Bool)

(assert (=> b!3622384 m!4122295))

(declare-fun m!4122297 () Bool)

(assert (=> b!3622373 m!4122297))

(declare-fun m!4122299 () Bool)

(assert (=> b!3622380 m!4122299))

(declare-fun m!4122301 () Bool)

(assert (=> b!3622380 m!4122301))

(declare-fun m!4122303 () Bool)

(assert (=> b!3622371 m!4122303))

(check-sat (not b!3622371) (not b!3622390) b_and!264957 (not b!3622378) (not b!3622398) (not b!3622373) (not b_next!95245) (not b!3622391) (not b_next!95247) (not b_next!95235) (not b!3622379) (not b!3622377) (not b!3622382) (not b_next!95239) (not b_next!95237) b_and!264955 b_and!264949 (not b!3622386) tp_is_empty!17969 (not b!3622393) (not b!3622385) (not b!3622400) (not b!3622380) (not start!337398) (not b!3622388) (not b!3622383) (not b_next!95243) b_and!264947 b_and!264961 (not b!3622376) (not b!3622387) (not b!3622396) b_and!264953 b_and!264951 (not b_next!95241) (not b!3622389) (not b_next!95233) (not b!3622394) b_and!264959 (not b!3622374) (not b!3622384))
(check-sat b_and!264957 (not b_next!95243) (not b_next!95245) b_and!264953 (not b_next!95247) (not b_next!95235) (not b_next!95233) b_and!264959 (not b_next!95239) (not b_next!95237) b_and!264955 b_and!264949 b_and!264947 b_and!264961 b_and!264951 (not b_next!95241))
(get-model)

(declare-fun d!1065411 () Bool)

(assert (=> d!1065411 (= (inv!51560 (tag!6404 anOtherTypeRule!33)) (= (mod (str.len (value!182453 (tag!6404 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3622376 d!1065411))

(declare-fun d!1065413 () Bool)

(declare-fun res!1466184 () Bool)

(declare-fun e!2242337 () Bool)

(assert (=> d!1065413 (=> (not res!1466184) (not e!2242337))))

(declare-fun semiInverseModEq!2411 (Int Int) Bool)

(assert (=> d!1065413 (= res!1466184 (semiInverseModEq!2411 (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 anOtherTypeRule!33))))))

(assert (=> d!1065413 (= (inv!51563 (transformation!5684 anOtherTypeRule!33)) e!2242337)))

(declare-fun b!3622535 () Bool)

(declare-fun equivClasses!2310 (Int Int) Bool)

(assert (=> b!3622535 (= e!2242337 (equivClasses!2310 (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 anOtherTypeRule!33))))))

(assert (= (and d!1065413 res!1466184) b!3622535))

(declare-fun m!4122411 () Bool)

(assert (=> d!1065413 m!4122411))

(declare-fun m!4122413 () Bool)

(assert (=> b!3622535 m!4122413))

(assert (=> b!3622376 d!1065413))

(declare-fun d!1065415 () Bool)

(assert (=> d!1065415 (= (isEmpty!22559 (_2!22152 lt!1252084)) ((_ is Nil!38166) (_2!22152 lt!1252084)))))

(assert (=> b!3622386 d!1065415))

(declare-fun d!1065417 () Bool)

(declare-fun dynLambda!16510 (Int BalanceConc!22892) TokenValue!5914)

(assert (=> d!1065417 (= (apply!9186 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))

(declare-fun b_lambda!107121 () Bool)

(assert (=> (not b_lambda!107121) (not d!1065417)))

(declare-fun t!294272 () Bool)

(declare-fun tb!207745 () Bool)

(assert (=> (and b!3622375 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294272) tb!207745))

(declare-fun result!253144 () Bool)

(assert (=> tb!207745 (= result!253144 (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(declare-fun m!4122447 () Bool)

(assert (=> tb!207745 m!4122447))

(assert (=> d!1065417 t!294272))

(declare-fun b_and!264971 () Bool)

(assert (= b_and!264947 (and (=> t!294272 result!253144) b_and!264971)))

(declare-fun tb!207747 () Bool)

(declare-fun t!294274 () Bool)

(assert (=> (and b!3622397 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294274) tb!207747))

(declare-fun result!253148 () Bool)

(assert (= result!253148 result!253144))

(assert (=> d!1065417 t!294274))

(declare-fun b_and!264973 () Bool)

(assert (= b_and!264951 (and (=> t!294274 result!253148) b_and!264973)))

(declare-fun t!294276 () Bool)

(declare-fun tb!207749 () Bool)

(assert (=> (and b!3622381 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294276) tb!207749))

(declare-fun result!253150 () Bool)

(assert (= result!253150 result!253144))

(assert (=> d!1065417 t!294276))

(declare-fun b_and!264975 () Bool)

(assert (= b_and!264955 (and (=> t!294276 result!253150) b_and!264975)))

(declare-fun tb!207751 () Bool)

(declare-fun t!294278 () Bool)

(assert (=> (and b!3622399 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294278) tb!207751))

(declare-fun result!253152 () Bool)

(assert (= result!253152 result!253144))

(assert (=> d!1065417 t!294278))

(declare-fun b_and!264977 () Bool)

(assert (= b_and!264959 (and (=> t!294278 result!253152) b_and!264977)))

(declare-fun m!4122449 () Bool)

(assert (=> d!1065417 m!4122449))

(assert (=> b!3622396 d!1065417))

(declare-fun b!3622639 () Bool)

(declare-fun e!2242400 () Bool)

(assert (=> b!3622639 (= e!2242400 true)))

(declare-fun d!1065421 () Bool)

(assert (=> d!1065421 e!2242400))

(assert (= d!1065421 b!3622639))

(declare-fun order!20851 () Int)

(declare-fun order!20853 () Int)

(declare-fun lambda!124134 () Int)

(declare-fun dynLambda!16514 (Int Int) Int)

(declare-fun dynLambda!16515 (Int Int) Int)

(assert (=> b!3622639 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (dynLambda!16515 order!20853 lambda!124134))))

(declare-fun order!20855 () Int)

(declare-fun dynLambda!16516 (Int Int) Int)

(assert (=> b!3622639 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (dynLambda!16515 order!20853 lambda!124134))))

(assert (=> d!1065421 (= (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(declare-fun lt!1252203 () Unit!54914)

(declare-fun Forall2of!328 (Int BalanceConc!22892 BalanceConc!22892) Unit!54914)

(assert (=> d!1065421 (= lt!1252203 (Forall2of!328 lambda!124134 lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(assert (=> d!1065421 (= (list!14088 lt!1252071) (list!14088 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(assert (=> d!1065421 (= (lemmaEqSameImage!869 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))) lt!1252203)))

(declare-fun b_lambda!107125 () Bool)

(assert (=> (not b_lambda!107125) (not d!1065421)))

(assert (=> d!1065421 t!294272))

(declare-fun b_and!264987 () Bool)

(assert (= b_and!264971 (and (=> t!294272 result!253144) b_and!264987)))

(assert (=> d!1065421 t!294274))

(declare-fun b_and!264989 () Bool)

(assert (= b_and!264973 (and (=> t!294274 result!253148) b_and!264989)))

(assert (=> d!1065421 t!294276))

(declare-fun b_and!264991 () Bool)

(assert (= b_and!264975 (and (=> t!294276 result!253150) b_and!264991)))

(assert (=> d!1065421 t!294278))

(declare-fun b_and!264993 () Bool)

(assert (= b_and!264977 (and (=> t!294278 result!253152) b_and!264993)))

(declare-fun b_lambda!107127 () Bool)

(assert (=> (not b_lambda!107127) (not d!1065421)))

(declare-fun t!294288 () Bool)

(declare-fun tb!207761 () Bool)

(assert (=> (and b!3622375 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294288) tb!207761))

(declare-fun result!253164 () Bool)

(assert (=> tb!207761 (= result!253164 (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(declare-fun m!4122565 () Bool)

(assert (=> tb!207761 m!4122565))

(assert (=> d!1065421 t!294288))

(declare-fun b_and!264995 () Bool)

(assert (= b_and!264987 (and (=> t!294288 result!253164) b_and!264995)))

(declare-fun tb!207763 () Bool)

(declare-fun t!294290 () Bool)

(assert (=> (and b!3622397 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294290) tb!207763))

(declare-fun result!253166 () Bool)

(assert (= result!253166 result!253164))

(assert (=> d!1065421 t!294290))

(declare-fun b_and!264997 () Bool)

(assert (= b_and!264989 (and (=> t!294290 result!253166) b_and!264997)))

(declare-fun tb!207765 () Bool)

(declare-fun t!294292 () Bool)

(assert (=> (and b!3622381 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294292) tb!207765))

(declare-fun result!253168 () Bool)

(assert (= result!253168 result!253164))

(assert (=> d!1065421 t!294292))

(declare-fun b_and!264999 () Bool)

(assert (= b_and!264991 (and (=> t!294292 result!253168) b_and!264999)))

(declare-fun tb!207767 () Bool)

(declare-fun t!294294 () Bool)

(assert (=> (and b!3622399 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294294) tb!207767))

(declare-fun result!253170 () Bool)

(assert (= result!253170 result!253164))

(assert (=> d!1065421 t!294294))

(declare-fun b_and!265001 () Bool)

(assert (= b_and!264993 (and (=> t!294294 result!253170) b_and!265001)))

(assert (=> d!1065421 m!4122207))

(declare-fun m!4122567 () Bool)

(assert (=> d!1065421 m!4122567))

(assert (=> d!1065421 m!4122449))

(assert (=> d!1065421 m!4122207))

(declare-fun m!4122569 () Bool)

(assert (=> d!1065421 m!4122569))

(assert (=> d!1065421 m!4122269))

(assert (=> d!1065421 m!4122207))

(declare-fun m!4122571 () Bool)

(assert (=> d!1065421 m!4122571))

(assert (=> b!3622396 d!1065421))

(declare-fun b!3622644 () Bool)

(declare-fun e!2242404 () Bool)

(assert (=> b!3622644 (= e!2242404 true)))

(declare-fun d!1065451 () Bool)

(assert (=> d!1065451 e!2242404))

(assert (= d!1065451 b!3622644))

(declare-fun order!20857 () Int)

(declare-fun lambda!124137 () Int)

(declare-fun dynLambda!16518 (Int Int) Int)

(assert (=> b!3622644 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (dynLambda!16518 order!20857 lambda!124137))))

(assert (=> b!3622644 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (dynLambda!16518 order!20857 lambda!124137))))

(declare-fun dynLambda!16519 (Int TokenValue!5914) BalanceConc!22892)

(assert (=> d!1065451 (= (list!14088 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))) (list!14088 lt!1252071))))

(declare-fun lt!1252206 () Unit!54914)

(declare-fun ForallOf!670 (Int BalanceConc!22892) Unit!54914)

(assert (=> d!1065451 (= lt!1252206 (ForallOf!670 lambda!124137 lt!1252071))))

(assert (=> d!1065451 (= (lemmaSemiInverse!1435 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252071) lt!1252206)))

(declare-fun b_lambda!107129 () Bool)

(assert (=> (not b_lambda!107129) (not d!1065451)))

(declare-fun tb!207769 () Bool)

(declare-fun t!294296 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294296) tb!207769))

(declare-fun e!2242407 () Bool)

(declare-fun b!3622649 () Bool)

(declare-fun tp!1106456 () Bool)

(declare-fun inv!51567 (Conc!11639) Bool)

(assert (=> b!3622649 (= e!2242407 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))) tp!1106456))))

(declare-fun result!253172 () Bool)

(declare-fun inv!51568 (BalanceConc!22892) Bool)

(assert (=> tb!207769 (= result!253172 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))) e!2242407))))

(assert (= tb!207769 b!3622649))

(declare-fun m!4122573 () Bool)

(assert (=> b!3622649 m!4122573))

(declare-fun m!4122575 () Bool)

(assert (=> tb!207769 m!4122575))

(assert (=> d!1065451 t!294296))

(declare-fun b_and!265003 () Bool)

(assert (= b_and!264949 (and (=> t!294296 result!253172) b_and!265003)))

(declare-fun tb!207771 () Bool)

(declare-fun t!294298 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294298) tb!207771))

(declare-fun result!253176 () Bool)

(assert (= result!253176 result!253172))

(assert (=> d!1065451 t!294298))

(declare-fun b_and!265005 () Bool)

(assert (= b_and!264953 (and (=> t!294298 result!253176) b_and!265005)))

(declare-fun tb!207773 () Bool)

(declare-fun t!294300 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294300) tb!207773))

(declare-fun result!253178 () Bool)

(assert (= result!253178 result!253172))

(assert (=> d!1065451 t!294300))

(declare-fun b_and!265007 () Bool)

(assert (= b_and!264957 (and (=> t!294300 result!253178) b_and!265007)))

(declare-fun tb!207775 () Bool)

(declare-fun t!294302 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294302) tb!207775))

(declare-fun result!253180 () Bool)

(assert (= result!253180 result!253172))

(assert (=> d!1065451 t!294302))

(declare-fun b_and!265009 () Bool)

(assert (= b_and!264961 (and (=> t!294302 result!253180) b_and!265009)))

(declare-fun b_lambda!107131 () Bool)

(assert (=> (not b_lambda!107131) (not d!1065451)))

(assert (=> d!1065451 t!294272))

(declare-fun b_and!265011 () Bool)

(assert (= b_and!264995 (and (=> t!294272 result!253144) b_and!265011)))

(assert (=> d!1065451 t!294274))

(declare-fun b_and!265013 () Bool)

(assert (= b_and!264997 (and (=> t!294274 result!253148) b_and!265013)))

(assert (=> d!1065451 t!294276))

(declare-fun b_and!265015 () Bool)

(assert (= b_and!264999 (and (=> t!294276 result!253150) b_and!265015)))

(assert (=> d!1065451 t!294278))

(declare-fun b_and!265017 () Bool)

(assert (= b_and!265001 (and (=> t!294278 result!253152) b_and!265017)))

(assert (=> d!1065451 m!4122449))

(assert (=> d!1065451 m!4122449))

(declare-fun m!4122577 () Bool)

(assert (=> d!1065451 m!4122577))

(assert (=> d!1065451 m!4122269))

(declare-fun m!4122579 () Bool)

(assert (=> d!1065451 m!4122579))

(assert (=> d!1065451 m!4122577))

(declare-fun m!4122581 () Bool)

(assert (=> d!1065451 m!4122581))

(assert (=> b!3622396 d!1065451))

(declare-fun d!1065453 () Bool)

(declare-fun lt!1252209 () Int)

(declare-fun size!29114 (List!38290) Int)

(assert (=> d!1065453 (= lt!1252209 (size!29114 (list!14088 lt!1252071)))))

(declare-fun size!29115 (Conc!11639) Int)

(assert (=> d!1065453 (= lt!1252209 (size!29115 (c!626793 lt!1252071)))))

(assert (=> d!1065453 (= (size!29111 lt!1252071) lt!1252209)))

(declare-fun bs!571230 () Bool)

(assert (= bs!571230 d!1065453))

(assert (=> bs!571230 m!4122269))

(assert (=> bs!571230 m!4122269))

(declare-fun m!4122583 () Bool)

(assert (=> bs!571230 m!4122583))

(declare-fun m!4122585 () Bool)

(assert (=> bs!571230 m!4122585))

(assert (=> b!3622396 d!1065453))

(declare-fun d!1065455 () Bool)

(assert (=> d!1065455 (= (size!29110 (_1!22152 lt!1252077)) (size!29114 (originalCharacters!6398 (_1!22152 lt!1252077))))))

(declare-fun Unit!54919 () Unit!54914)

(assert (=> d!1065455 (= (lemmaCharactersSize!731 (_1!22152 lt!1252077)) Unit!54919)))

(declare-fun bs!571231 () Bool)

(assert (= bs!571231 d!1065455))

(declare-fun m!4122587 () Bool)

(assert (=> bs!571231 m!4122587))

(assert (=> b!3622396 d!1065455))

(declare-fun d!1065457 () Bool)

(declare-fun fromListB!1949 (List!38290) BalanceConc!22892)

(assert (=> d!1065457 (= (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))) (fromListB!1949 (originalCharacters!6398 (_1!22152 lt!1252077))))))

(declare-fun bs!571232 () Bool)

(assert (= bs!571232 d!1065457))

(declare-fun m!4122589 () Bool)

(assert (=> bs!571232 m!4122589))

(assert (=> b!3622396 d!1065457))

(declare-fun d!1065459 () Bool)

(assert (=> d!1065459 (= (isEmpty!22558 rules!3307) ((_ is Nil!38167) rules!3307))))

(assert (=> b!3622385 d!1065459))

(declare-fun d!1065461 () Bool)

(declare-fun lt!1252212 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5464 (List!38290) (InoxSet C!21072))

(assert (=> d!1065461 (= lt!1252212 (select (content!5464 (usedCharacters!898 (regex!5684 rule!403))) lt!1252080))))

(declare-fun e!2242413 () Bool)

(assert (=> d!1065461 (= lt!1252212 e!2242413)))

(declare-fun res!1466254 () Bool)

(assert (=> d!1065461 (=> (not res!1466254) (not e!2242413))))

(assert (=> d!1065461 (= res!1466254 ((_ is Cons!38166) (usedCharacters!898 (regex!5684 rule!403))))))

(assert (=> d!1065461 (= (contains!7431 (usedCharacters!898 (regex!5684 rule!403)) lt!1252080) lt!1252212)))

(declare-fun b!3622654 () Bool)

(declare-fun e!2242412 () Bool)

(assert (=> b!3622654 (= e!2242413 e!2242412)))

(declare-fun res!1466255 () Bool)

(assert (=> b!3622654 (=> res!1466255 e!2242412)))

(assert (=> b!3622654 (= res!1466255 (= (h!43586 (usedCharacters!898 (regex!5684 rule!403))) lt!1252080))))

(declare-fun b!3622655 () Bool)

(assert (=> b!3622655 (= e!2242412 (contains!7431 (t!294261 (usedCharacters!898 (regex!5684 rule!403))) lt!1252080))))

(assert (= (and d!1065461 res!1466254) b!3622654))

(assert (= (and b!3622654 (not res!1466255)) b!3622655))

(assert (=> d!1065461 m!4122195))

(declare-fun m!4122591 () Bool)

(assert (=> d!1065461 m!4122591))

(declare-fun m!4122593 () Bool)

(assert (=> d!1065461 m!4122593))

(declare-fun m!4122595 () Bool)

(assert (=> b!3622655 m!4122595))

(assert (=> b!3622374 d!1065461))

(declare-fun b!3622672 () Bool)

(declare-fun e!2242423 () List!38290)

(declare-fun call!262085 () List!38290)

(assert (=> b!3622672 (= e!2242423 call!262085)))

(declare-fun b!3622673 () Bool)

(declare-fun e!2242425 () List!38290)

(assert (=> b!3622673 (= e!2242425 Nil!38166)))

(declare-fun b!3622674 () Bool)

(declare-fun e!2242424 () List!38290)

(declare-fun call!262083 () List!38290)

(assert (=> b!3622674 (= e!2242424 call!262083)))

(declare-fun c!626849 () Bool)

(declare-fun bm!262077 () Bool)

(declare-fun c!626852 () Bool)

(assert (=> bm!262077 (= call!262085 (usedCharacters!898 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))))))

(declare-fun bm!262078 () Bool)

(declare-fun call!262082 () List!38290)

(assert (=> bm!262078 (= call!262082 call!262085)))

(declare-fun b!3622675 () Bool)

(declare-fun e!2242422 () List!38290)

(assert (=> b!3622675 (= e!2242422 (Cons!38166 (c!626792 (regex!5684 rule!403)) Nil!38166))))

(declare-fun b!3622676 () Bool)

(assert (=> b!3622676 (= c!626852 ((_ is Star!10443) (regex!5684 rule!403)))))

(assert (=> b!3622676 (= e!2242422 e!2242423)))

(declare-fun call!262084 () List!38290)

(declare-fun bm!262079 () Bool)

(assert (=> bm!262079 (= call!262083 (++!9500 (ite c!626849 call!262084 call!262082) (ite c!626849 call!262082 call!262084)))))

(declare-fun b!3622677 () Bool)

(assert (=> b!3622677 (= e!2242424 call!262083)))

(declare-fun bm!262080 () Bool)

(assert (=> bm!262080 (= call!262084 (usedCharacters!898 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))))))

(declare-fun b!3622679 () Bool)

(assert (=> b!3622679 (= e!2242423 e!2242424)))

(assert (=> b!3622679 (= c!626849 ((_ is Union!10443) (regex!5684 rule!403)))))

(declare-fun b!3622678 () Bool)

(assert (=> b!3622678 (= e!2242425 e!2242422)))

(declare-fun c!626850 () Bool)

(assert (=> b!3622678 (= c!626850 ((_ is ElementMatch!10443) (regex!5684 rule!403)))))

(declare-fun d!1065463 () Bool)

(declare-fun c!626851 () Bool)

(assert (=> d!1065463 (= c!626851 (or ((_ is EmptyExpr!10443) (regex!5684 rule!403)) ((_ is EmptyLang!10443) (regex!5684 rule!403))))))

(assert (=> d!1065463 (= (usedCharacters!898 (regex!5684 rule!403)) e!2242425)))

(assert (= (and d!1065463 c!626851) b!3622673))

(assert (= (and d!1065463 (not c!626851)) b!3622678))

(assert (= (and b!3622678 c!626850) b!3622675))

(assert (= (and b!3622678 (not c!626850)) b!3622676))

(assert (= (and b!3622676 c!626852) b!3622672))

(assert (= (and b!3622676 (not c!626852)) b!3622679))

(assert (= (and b!3622679 c!626849) b!3622677))

(assert (= (and b!3622679 (not c!626849)) b!3622674))

(assert (= (or b!3622677 b!3622674) bm!262080))

(assert (= (or b!3622677 b!3622674) bm!262078))

(assert (= (or b!3622677 b!3622674) bm!262079))

(assert (= (or b!3622672 bm!262078) bm!262077))

(declare-fun m!4122597 () Bool)

(assert (=> bm!262077 m!4122597))

(declare-fun m!4122599 () Bool)

(assert (=> bm!262079 m!4122599))

(declare-fun m!4122601 () Bool)

(assert (=> bm!262080 m!4122601))

(assert (=> b!3622374 d!1065463))

(declare-fun d!1065465 () Bool)

(assert (=> d!1065465 (= (head!7656 suffix!1395) (h!43586 suffix!1395))))

(assert (=> b!3622374 d!1065465))

(declare-fun d!1065467 () Bool)

(assert (=> d!1065467 (= (inv!51560 (tag!6404 (rule!8446 token!511))) (= (mod (str.len (value!182453 (tag!6404 (rule!8446 token!511)))) 2) 0))))

(assert (=> b!3622400 d!1065467))

(declare-fun d!1065469 () Bool)

(declare-fun res!1466256 () Bool)

(declare-fun e!2242426 () Bool)

(assert (=> d!1065469 (=> (not res!1466256) (not e!2242426))))

(assert (=> d!1065469 (= res!1466256 (semiInverseModEq!2411 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 token!511)))))))

(assert (=> d!1065469 (= (inv!51563 (transformation!5684 (rule!8446 token!511))) e!2242426)))

(declare-fun b!3622680 () Bool)

(assert (=> b!3622680 (= e!2242426 (equivClasses!2310 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 token!511)))))))

(assert (= (and d!1065469 res!1466256) b!3622680))

(declare-fun m!4122603 () Bool)

(assert (=> d!1065469 m!4122603))

(declare-fun m!4122605 () Bool)

(assert (=> b!3622680 m!4122605))

(assert (=> b!3622400 d!1065469))

(declare-fun d!1065471 () Bool)

(assert (=> d!1065471 (= (inv!51560 (tag!6404 rule!403)) (= (mod (str.len (value!182453 (tag!6404 rule!403))) 2) 0))))

(assert (=> b!3622378 d!1065471))

(declare-fun d!1065473 () Bool)

(declare-fun res!1466257 () Bool)

(declare-fun e!2242427 () Bool)

(assert (=> d!1065473 (=> (not res!1466257) (not e!2242427))))

(assert (=> d!1065473 (= res!1466257 (semiInverseModEq!2411 (toChars!7827 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 rule!403))))))

(assert (=> d!1065473 (= (inv!51563 (transformation!5684 rule!403)) e!2242427)))

(declare-fun b!3622681 () Bool)

(assert (=> b!3622681 (= e!2242427 (equivClasses!2310 (toChars!7827 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 rule!403))))))

(assert (= (and d!1065473 res!1466257) b!3622681))

(declare-fun m!4122607 () Bool)

(assert (=> d!1065473 m!4122607))

(declare-fun m!4122609 () Bool)

(assert (=> b!3622681 m!4122609))

(assert (=> b!3622378 d!1065473))

(declare-fun d!1065475 () Bool)

(declare-fun res!1466262 () Bool)

(declare-fun e!2242430 () Bool)

(assert (=> d!1065475 (=> (not res!1466262) (not e!2242430))))

(assert (=> d!1065475 (= res!1466262 (not (isEmpty!22559 (originalCharacters!6398 token!511))))))

(assert (=> d!1065475 (= (inv!51564 token!511) e!2242430)))

(declare-fun b!3622686 () Bool)

(declare-fun res!1466263 () Bool)

(assert (=> b!3622686 (=> (not res!1466263) (not e!2242430))))

(assert (=> b!3622686 (= res!1466263 (= (originalCharacters!6398 token!511) (list!14088 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(declare-fun b!3622687 () Bool)

(assert (=> b!3622687 (= e!2242430 (= (size!29110 token!511) (size!29114 (originalCharacters!6398 token!511))))))

(assert (= (and d!1065475 res!1466262) b!3622686))

(assert (= (and b!3622686 res!1466263) b!3622687))

(declare-fun b_lambda!107133 () Bool)

(assert (=> (not b_lambda!107133) (not b!3622686)))

(declare-fun t!294304 () Bool)

(declare-fun tb!207777 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294304) tb!207777))

(declare-fun b!3622688 () Bool)

(declare-fun e!2242431 () Bool)

(declare-fun tp!1106457 () Bool)

(assert (=> b!3622688 (= e!2242431 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))) tp!1106457))))

(declare-fun result!253182 () Bool)

(assert (=> tb!207777 (= result!253182 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))) e!2242431))))

(assert (= tb!207777 b!3622688))

(declare-fun m!4122611 () Bool)

(assert (=> b!3622688 m!4122611))

(declare-fun m!4122613 () Bool)

(assert (=> tb!207777 m!4122613))

(assert (=> b!3622686 t!294304))

(declare-fun b_and!265019 () Bool)

(assert (= b_and!265003 (and (=> t!294304 result!253182) b_and!265019)))

(declare-fun t!294306 () Bool)

(declare-fun tb!207779 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294306) tb!207779))

(declare-fun result!253184 () Bool)

(assert (= result!253184 result!253182))

(assert (=> b!3622686 t!294306))

(declare-fun b_and!265021 () Bool)

(assert (= b_and!265005 (and (=> t!294306 result!253184) b_and!265021)))

(declare-fun t!294308 () Bool)

(declare-fun tb!207781 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294308) tb!207781))

(declare-fun result!253186 () Bool)

(assert (= result!253186 result!253182))

(assert (=> b!3622686 t!294308))

(declare-fun b_and!265023 () Bool)

(assert (= b_and!265007 (and (=> t!294308 result!253186) b_and!265023)))

(declare-fun t!294310 () Bool)

(declare-fun tb!207783 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294310) tb!207783))

(declare-fun result!253188 () Bool)

(assert (= result!253188 result!253182))

(assert (=> b!3622686 t!294310))

(declare-fun b_and!265025 () Bool)

(assert (= b_and!265009 (and (=> t!294310 result!253188) b_and!265025)))

(declare-fun m!4122615 () Bool)

(assert (=> d!1065475 m!4122615))

(declare-fun m!4122617 () Bool)

(assert (=> b!3622686 m!4122617))

(assert (=> b!3622686 m!4122617))

(declare-fun m!4122619 () Bool)

(assert (=> b!3622686 m!4122619))

(declare-fun m!4122621 () Bool)

(assert (=> b!3622687 m!4122621))

(assert (=> start!337398 d!1065475))

(declare-fun b!3622699 () Bool)

(declare-fun res!1466266 () Bool)

(declare-fun e!2242439 () Bool)

(assert (=> b!3622699 (=> res!1466266 e!2242439)))

(assert (=> b!3622699 (= res!1466266 (not ((_ is IntegerValue!17744) (value!182454 token!511))))))

(declare-fun e!2242438 () Bool)

(assert (=> b!3622699 (= e!2242438 e!2242439)))

(declare-fun b!3622700 () Bool)

(declare-fun e!2242440 () Bool)

(assert (=> b!3622700 (= e!2242440 e!2242438)))

(declare-fun c!626858 () Bool)

(assert (=> b!3622700 (= c!626858 ((_ is IntegerValue!17743) (value!182454 token!511)))))

(declare-fun b!3622701 () Bool)

(declare-fun inv!16 (TokenValue!5914) Bool)

(assert (=> b!3622701 (= e!2242440 (inv!16 (value!182454 token!511)))))

(declare-fun b!3622703 () Bool)

(declare-fun inv!17 (TokenValue!5914) Bool)

(assert (=> b!3622703 (= e!2242438 (inv!17 (value!182454 token!511)))))

(declare-fun d!1065477 () Bool)

(declare-fun c!626857 () Bool)

(assert (=> d!1065477 (= c!626857 ((_ is IntegerValue!17742) (value!182454 token!511)))))

(assert (=> d!1065477 (= (inv!21 (value!182454 token!511)) e!2242440)))

(declare-fun b!3622702 () Bool)

(declare-fun inv!15 (TokenValue!5914) Bool)

(assert (=> b!3622702 (= e!2242439 (inv!15 (value!182454 token!511)))))

(assert (= (and d!1065477 c!626857) b!3622701))

(assert (= (and d!1065477 (not c!626857)) b!3622700))

(assert (= (and b!3622700 c!626858) b!3622703))

(assert (= (and b!3622700 (not c!626858)) b!3622699))

(assert (= (and b!3622699 (not res!1466266)) b!3622702))

(declare-fun m!4122623 () Bool)

(assert (=> b!3622701 m!4122623))

(declare-fun m!4122625 () Bool)

(assert (=> b!3622703 m!4122625))

(declare-fun m!4122627 () Bool)

(assert (=> b!3622702 m!4122627))

(assert (=> b!3622388 d!1065477))

(declare-fun d!1065479 () Bool)

(declare-fun isEmpty!22562 (Option!7999) Bool)

(assert (=> d!1065479 (= (isDefined!6230 lt!1252085) (not (isEmpty!22562 lt!1252085)))))

(declare-fun bs!571233 () Bool)

(assert (= bs!571233 d!1065479))

(declare-fun m!4122629 () Bool)

(assert (=> bs!571233 m!4122629))

(assert (=> b!3622377 d!1065479))

(declare-fun d!1065481 () Bool)

(declare-fun e!2242443 () Bool)

(assert (=> d!1065481 e!2242443))

(declare-fun res!1466271 () Bool)

(assert (=> d!1065481 (=> (not res!1466271) (not e!2242443))))

(assert (=> d!1065481 (= res!1466271 (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))

(declare-fun lt!1252215 () Unit!54914)

(declare-fun choose!21256 (LexerInterface!5273 List!38291 List!38290 Token!10734) Unit!54914)

(assert (=> d!1065481 (= lt!1252215 (choose!21256 thiss!23823 rules!3307 lt!1252082 (_1!22152 lt!1252077)))))

(assert (=> d!1065481 (rulesInvariant!4670 thiss!23823 rules!3307)))

(assert (=> d!1065481 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1290 thiss!23823 rules!3307 lt!1252082 (_1!22152 lt!1252077)) lt!1252215)))

(declare-fun b!3622708 () Bool)

(declare-fun res!1466272 () Bool)

(assert (=> b!3622708 (=> (not res!1466272) (not e!2242443))))

(assert (=> b!3622708 (= res!1466272 (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun b!3622709 () Bool)

(assert (=> b!3622709 (= e!2242443 (= (rule!8446 (_1!22152 lt!1252077)) (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(assert (= (and d!1065481 res!1466271) b!3622708))

(assert (= (and b!3622708 res!1466272) b!3622709))

(assert (=> d!1065481 m!4122281))

(assert (=> d!1065481 m!4122281))

(declare-fun m!4122631 () Bool)

(assert (=> d!1065481 m!4122631))

(declare-fun m!4122633 () Bool)

(assert (=> d!1065481 m!4122633))

(assert (=> d!1065481 m!4122217))

(assert (=> b!3622708 m!4122241))

(assert (=> b!3622708 m!4122243))

(assert (=> b!3622708 m!4122241))

(assert (=> b!3622708 m!4122281))

(assert (=> b!3622708 m!4122243))

(declare-fun m!4122635 () Bool)

(assert (=> b!3622708 m!4122635))

(assert (=> b!3622708 m!4122281))

(declare-fun m!4122637 () Bool)

(assert (=> b!3622708 m!4122637))

(assert (=> b!3622709 m!4122281))

(assert (=> b!3622709 m!4122281))

(assert (=> b!3622709 m!4122637))

(assert (=> b!3622377 d!1065481))

(declare-fun b!3622721 () Bool)

(declare-fun e!2242450 () Bool)

(assert (=> b!3622721 (= e!2242450 (>= (size!29114 lt!1252082) (size!29114 lt!1252088)))))

(declare-fun b!3622718 () Bool)

(declare-fun e!2242452 () Bool)

(declare-fun e!2242451 () Bool)

(assert (=> b!3622718 (= e!2242452 e!2242451)))

(declare-fun res!1466284 () Bool)

(assert (=> b!3622718 (=> (not res!1466284) (not e!2242451))))

(assert (=> b!3622718 (= res!1466284 (not ((_ is Nil!38166) lt!1252082)))))

(declare-fun d!1065483 () Bool)

(assert (=> d!1065483 e!2242450))

(declare-fun res!1466281 () Bool)

(assert (=> d!1065483 (=> res!1466281 e!2242450)))

(declare-fun lt!1252218 () Bool)

(assert (=> d!1065483 (= res!1466281 (not lt!1252218))))

(assert (=> d!1065483 (= lt!1252218 e!2242452)))

(declare-fun res!1466283 () Bool)

(assert (=> d!1065483 (=> res!1466283 e!2242452)))

(assert (=> d!1065483 (= res!1466283 ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1065483 (= (isPrefix!3047 lt!1252088 lt!1252082) lt!1252218)))

(declare-fun b!3622719 () Bool)

(declare-fun res!1466282 () Bool)

(assert (=> b!3622719 (=> (not res!1466282) (not e!2242451))))

(assert (=> b!3622719 (= res!1466282 (= (head!7656 lt!1252088) (head!7656 lt!1252082)))))

(declare-fun b!3622720 () Bool)

(declare-fun tail!5611 (List!38290) List!38290)

(assert (=> b!3622720 (= e!2242451 (isPrefix!3047 (tail!5611 lt!1252088) (tail!5611 lt!1252082)))))

(assert (= (and d!1065483 (not res!1466283)) b!3622718))

(assert (= (and b!3622718 res!1466284) b!3622719))

(assert (= (and b!3622719 res!1466282) b!3622720))

(assert (= (and d!1065483 (not res!1466281)) b!3622721))

(declare-fun m!4122639 () Bool)

(assert (=> b!3622721 m!4122639))

(declare-fun m!4122641 () Bool)

(assert (=> b!3622721 m!4122641))

(declare-fun m!4122643 () Bool)

(assert (=> b!3622719 m!4122643))

(declare-fun m!4122645 () Bool)

(assert (=> b!3622719 m!4122645))

(declare-fun m!4122647 () Bool)

(assert (=> b!3622720 m!4122647))

(declare-fun m!4122649 () Bool)

(assert (=> b!3622720 m!4122649))

(assert (=> b!3622720 m!4122647))

(assert (=> b!3622720 m!4122649))

(declare-fun m!4122651 () Bool)

(assert (=> b!3622720 m!4122651))

(assert (=> b!3622377 d!1065483))

(declare-fun d!1065485 () Bool)

(assert (=> d!1065485 (isPrefix!3047 lt!1252086 (++!9500 lt!1252086 (_2!22152 lt!1252077)))))

(declare-fun lt!1252221 () Unit!54914)

(declare-fun choose!21257 (List!38290 List!38290) Unit!54914)

(assert (=> d!1065485 (= lt!1252221 (choose!21257 lt!1252086 (_2!22152 lt!1252077)))))

(assert (=> d!1065485 (= (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252086 (_2!22152 lt!1252077)) lt!1252221)))

(declare-fun bs!571234 () Bool)

(assert (= bs!571234 d!1065485))

(assert (=> bs!571234 m!4122263))

(assert (=> bs!571234 m!4122263))

(assert (=> bs!571234 m!4122265))

(declare-fun m!4122653 () Bool)

(assert (=> bs!571234 m!4122653))

(assert (=> b!3622377 d!1065485))

(declare-fun b!3622725 () Bool)

(declare-fun e!2242453 () Bool)

(assert (=> b!3622725 (= e!2242453 (>= (size!29114 (++!9500 lt!1252086 (_2!22152 lt!1252077))) (size!29114 lt!1252086)))))

(declare-fun b!3622722 () Bool)

(declare-fun e!2242455 () Bool)

(declare-fun e!2242454 () Bool)

(assert (=> b!3622722 (= e!2242455 e!2242454)))

(declare-fun res!1466288 () Bool)

(assert (=> b!3622722 (=> (not res!1466288) (not e!2242454))))

(assert (=> b!3622722 (= res!1466288 (not ((_ is Nil!38166) (++!9500 lt!1252086 (_2!22152 lt!1252077)))))))

(declare-fun d!1065487 () Bool)

(assert (=> d!1065487 e!2242453))

(declare-fun res!1466285 () Bool)

(assert (=> d!1065487 (=> res!1466285 e!2242453)))

(declare-fun lt!1252222 () Bool)

(assert (=> d!1065487 (= res!1466285 (not lt!1252222))))

(assert (=> d!1065487 (= lt!1252222 e!2242455)))

(declare-fun res!1466287 () Bool)

(assert (=> d!1065487 (=> res!1466287 e!2242455)))

(assert (=> d!1065487 (= res!1466287 ((_ is Nil!38166) lt!1252086))))

(assert (=> d!1065487 (= (isPrefix!3047 lt!1252086 (++!9500 lt!1252086 (_2!22152 lt!1252077))) lt!1252222)))

(declare-fun b!3622723 () Bool)

(declare-fun res!1466286 () Bool)

(assert (=> b!3622723 (=> (not res!1466286) (not e!2242454))))

(assert (=> b!3622723 (= res!1466286 (= (head!7656 lt!1252086) (head!7656 (++!9500 lt!1252086 (_2!22152 lt!1252077)))))))

(declare-fun b!3622724 () Bool)

(assert (=> b!3622724 (= e!2242454 (isPrefix!3047 (tail!5611 lt!1252086) (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077)))))))

(assert (= (and d!1065487 (not res!1466287)) b!3622722))

(assert (= (and b!3622722 res!1466288) b!3622723))

(assert (= (and b!3622723 res!1466286) b!3622724))

(assert (= (and d!1065487 (not res!1466285)) b!3622725))

(assert (=> b!3622725 m!4122263))

(declare-fun m!4122655 () Bool)

(assert (=> b!3622725 m!4122655))

(declare-fun m!4122657 () Bool)

(assert (=> b!3622725 m!4122657))

(declare-fun m!4122659 () Bool)

(assert (=> b!3622723 m!4122659))

(assert (=> b!3622723 m!4122263))

(declare-fun m!4122661 () Bool)

(assert (=> b!3622723 m!4122661))

(declare-fun m!4122663 () Bool)

(assert (=> b!3622724 m!4122663))

(assert (=> b!3622724 m!4122263))

(declare-fun m!4122665 () Bool)

(assert (=> b!3622724 m!4122665))

(assert (=> b!3622724 m!4122663))

(assert (=> b!3622724 m!4122665))

(declare-fun m!4122667 () Bool)

(assert (=> b!3622724 m!4122667))

(assert (=> b!3622377 d!1065487))

(declare-fun b!3622744 () Bool)

(declare-fun e!2242462 () Option!7998)

(declare-fun call!262088 () Option!7998)

(assert (=> b!3622744 (= e!2242462 call!262088)))

(declare-fun bm!262083 () Bool)

(declare-fun maxPrefixOneRule!1947 (LexerInterface!5273 Rule!11168 List!38290) Option!7998)

(assert (=> bm!262083 (= call!262088 (maxPrefixOneRule!1947 thiss!23823 (h!43587 rules!3307) lt!1252082))))

(declare-fun d!1065489 () Bool)

(declare-fun e!2242464 () Bool)

(assert (=> d!1065489 e!2242464))

(declare-fun res!1466304 () Bool)

(assert (=> d!1065489 (=> res!1466304 e!2242464)))

(declare-fun lt!1252235 () Option!7998)

(declare-fun isEmpty!22563 (Option!7998) Bool)

(assert (=> d!1065489 (= res!1466304 (isEmpty!22563 lt!1252235))))

(assert (=> d!1065489 (= lt!1252235 e!2242462)))

(declare-fun c!626861 () Bool)

(assert (=> d!1065489 (= c!626861 (and ((_ is Cons!38167) rules!3307) ((_ is Nil!38167) (t!294262 rules!3307))))))

(declare-fun lt!1252234 () Unit!54914)

(declare-fun lt!1252237 () Unit!54914)

(assert (=> d!1065489 (= lt!1252234 lt!1252237)))

(assert (=> d!1065489 (isPrefix!3047 lt!1252082 lt!1252082)))

(declare-fun lemmaIsPrefixRefl!1932 (List!38290 List!38290) Unit!54914)

(assert (=> d!1065489 (= lt!1252237 (lemmaIsPrefixRefl!1932 lt!1252082 lt!1252082))))

(declare-fun rulesValidInductive!1997 (LexerInterface!5273 List!38291) Bool)

(assert (=> d!1065489 (rulesValidInductive!1997 thiss!23823 rules!3307)))

(assert (=> d!1065489 (= (maxPrefix!2807 thiss!23823 rules!3307 lt!1252082) lt!1252235)))

(declare-fun b!3622745 () Bool)

(declare-fun e!2242463 () Bool)

(assert (=> b!3622745 (= e!2242464 e!2242463)))

(declare-fun res!1466308 () Bool)

(assert (=> b!3622745 (=> (not res!1466308) (not e!2242463))))

(assert (=> b!3622745 (= res!1466308 (isDefined!6231 lt!1252235))))

(declare-fun b!3622746 () Bool)

(declare-fun res!1466305 () Bool)

(assert (=> b!3622746 (=> (not res!1466305) (not e!2242463))))

(assert (=> b!3622746 (= res!1466305 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235)))))))

(declare-fun b!3622747 () Bool)

(declare-fun res!1466307 () Bool)

(assert (=> b!3622747 (=> (not res!1466307) (not e!2242463))))

(assert (=> b!3622747 (= res!1466307 (< (size!29114 (_2!22152 (get!12450 lt!1252235))) (size!29114 lt!1252082)))))

(declare-fun b!3622748 () Bool)

(declare-fun res!1466309 () Bool)

(assert (=> b!3622748 (=> (not res!1466309) (not e!2242463))))

(assert (=> b!3622748 (= res!1466309 (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun b!3622749 () Bool)

(declare-fun lt!1252236 () Option!7998)

(declare-fun lt!1252233 () Option!7998)

(assert (=> b!3622749 (= e!2242462 (ite (and ((_ is None!7997) lt!1252236) ((_ is None!7997) lt!1252233)) None!7997 (ite ((_ is None!7997) lt!1252233) lt!1252236 (ite ((_ is None!7997) lt!1252236) lt!1252233 (ite (>= (size!29110 (_1!22152 (v!37767 lt!1252236))) (size!29110 (_1!22152 (v!37767 lt!1252233)))) lt!1252236 lt!1252233)))))))

(assert (=> b!3622749 (= lt!1252236 call!262088)))

(assert (=> b!3622749 (= lt!1252233 (maxPrefix!2807 thiss!23823 (t!294262 rules!3307) lt!1252082))))

(declare-fun b!3622750 () Bool)

(assert (=> b!3622750 (= e!2242463 (contains!7432 rules!3307 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))

(declare-fun b!3622751 () Bool)

(declare-fun res!1466303 () Bool)

(assert (=> b!3622751 (=> (not res!1466303) (not e!2242463))))

(assert (=> b!3622751 (= res!1466303 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))) (_2!22152 (get!12450 lt!1252235))) lt!1252082))))

(declare-fun b!3622752 () Bool)

(declare-fun res!1466306 () Bool)

(assert (=> b!3622752 (=> (not res!1466306) (not e!2242463))))

(assert (=> b!3622752 (= res!1466306 (= (value!182454 (_1!22152 (get!12450 lt!1252235))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235)))))))))

(assert (= (and d!1065489 c!626861) b!3622744))

(assert (= (and d!1065489 (not c!626861)) b!3622749))

(assert (= (or b!3622744 b!3622749) bm!262083))

(assert (= (and d!1065489 (not res!1466304)) b!3622745))

(assert (= (and b!3622745 res!1466308) b!3622746))

(assert (= (and b!3622746 res!1466305) b!3622747))

(assert (= (and b!3622747 res!1466307) b!3622751))

(assert (= (and b!3622751 res!1466303) b!3622752))

(assert (= (and b!3622752 res!1466306) b!3622748))

(assert (= (and b!3622748 res!1466309) b!3622750))

(declare-fun m!4122669 () Bool)

(assert (=> b!3622750 m!4122669))

(declare-fun m!4122671 () Bool)

(assert (=> b!3622750 m!4122671))

(assert (=> b!3622748 m!4122669))

(declare-fun m!4122673 () Bool)

(assert (=> b!3622748 m!4122673))

(assert (=> b!3622748 m!4122673))

(declare-fun m!4122675 () Bool)

(assert (=> b!3622748 m!4122675))

(assert (=> b!3622748 m!4122675))

(declare-fun m!4122677 () Bool)

(assert (=> b!3622748 m!4122677))

(assert (=> b!3622752 m!4122669))

(declare-fun m!4122679 () Bool)

(assert (=> b!3622752 m!4122679))

(assert (=> b!3622752 m!4122679))

(declare-fun m!4122681 () Bool)

(assert (=> b!3622752 m!4122681))

(declare-fun m!4122683 () Bool)

(assert (=> d!1065489 m!4122683))

(declare-fun m!4122685 () Bool)

(assert (=> d!1065489 m!4122685))

(declare-fun m!4122687 () Bool)

(assert (=> d!1065489 m!4122687))

(declare-fun m!4122689 () Bool)

(assert (=> d!1065489 m!4122689))

(declare-fun m!4122691 () Bool)

(assert (=> bm!262083 m!4122691))

(declare-fun m!4122693 () Bool)

(assert (=> b!3622749 m!4122693))

(assert (=> b!3622751 m!4122669))

(assert (=> b!3622751 m!4122673))

(assert (=> b!3622751 m!4122673))

(assert (=> b!3622751 m!4122675))

(assert (=> b!3622751 m!4122675))

(declare-fun m!4122695 () Bool)

(assert (=> b!3622751 m!4122695))

(assert (=> b!3622746 m!4122669))

(assert (=> b!3622746 m!4122673))

(assert (=> b!3622746 m!4122673))

(assert (=> b!3622746 m!4122675))

(declare-fun m!4122697 () Bool)

(assert (=> b!3622745 m!4122697))

(assert (=> b!3622747 m!4122669))

(declare-fun m!4122699 () Bool)

(assert (=> b!3622747 m!4122699))

(assert (=> b!3622747 m!4122639))

(assert (=> b!3622377 d!1065489))

(declare-fun d!1065491 () Bool)

(assert (=> d!1065491 (= (get!12450 lt!1252078) (v!37767 lt!1252078))))

(assert (=> b!3622377 d!1065491))

(declare-fun d!1065493 () Bool)

(declare-fun list!14091 (Conc!11639) List!38290)

(assert (=> d!1065493 (= (list!14088 lt!1252071) (list!14091 (c!626793 lt!1252071)))))

(declare-fun bs!571235 () Bool)

(assert (= bs!571235 d!1065493))

(declare-fun m!4122701 () Bool)

(assert (=> bs!571235 m!4122701))

(assert (=> b!3622377 d!1065493))

(declare-fun d!1065495 () Bool)

(declare-fun lt!1252241 () BalanceConc!22892)

(assert (=> d!1065495 (= (list!14088 lt!1252241) (originalCharacters!6398 (_1!22152 lt!1252077)))))

(assert (=> d!1065495 (= lt!1252241 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))))

(assert (=> d!1065495 (= (charsOf!3698 (_1!22152 lt!1252077)) lt!1252241)))

(declare-fun b_lambda!107135 () Bool)

(assert (=> (not b_lambda!107135) (not d!1065495)))

(declare-fun t!294312 () Bool)

(declare-fun tb!207785 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294312) tb!207785))

(declare-fun b!3622759 () Bool)

(declare-fun e!2242469 () Bool)

(declare-fun tp!1106458 () Bool)

(assert (=> b!3622759 (= e!2242469 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))) tp!1106458))))

(declare-fun result!253190 () Bool)

(assert (=> tb!207785 (= result!253190 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))) e!2242469))))

(assert (= tb!207785 b!3622759))

(declare-fun m!4122703 () Bool)

(assert (=> b!3622759 m!4122703))

(declare-fun m!4122705 () Bool)

(assert (=> tb!207785 m!4122705))

(assert (=> d!1065495 t!294312))

(declare-fun b_and!265027 () Bool)

(assert (= b_and!265019 (and (=> t!294312 result!253190) b_and!265027)))

(declare-fun tb!207787 () Bool)

(declare-fun t!294314 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294314) tb!207787))

(declare-fun result!253192 () Bool)

(assert (= result!253192 result!253190))

(assert (=> d!1065495 t!294314))

(declare-fun b_and!265029 () Bool)

(assert (= b_and!265021 (and (=> t!294314 result!253192) b_and!265029)))

(declare-fun tb!207789 () Bool)

(declare-fun t!294316 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294316) tb!207789))

(declare-fun result!253194 () Bool)

(assert (= result!253194 result!253190))

(assert (=> d!1065495 t!294316))

(declare-fun b_and!265031 () Bool)

(assert (= b_and!265023 (and (=> t!294316 result!253194) b_and!265031)))

(declare-fun t!294318 () Bool)

(declare-fun tb!207791 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294318) tb!207791))

(declare-fun result!253196 () Bool)

(assert (= result!253196 result!253190))

(assert (=> d!1065495 t!294318))

(declare-fun b_and!265033 () Bool)

(assert (= b_and!265025 (and (=> t!294318 result!253196) b_and!265033)))

(declare-fun m!4122707 () Bool)

(assert (=> d!1065495 m!4122707))

(declare-fun m!4122709 () Bool)

(assert (=> d!1065495 m!4122709))

(assert (=> b!3622377 d!1065495))

(declare-fun b!3622764 () Bool)

(declare-fun e!2242471 () Bool)

(assert (=> b!3622764 (= e!2242471 (>= (size!29114 lt!1252082) (size!29114 lt!1252086)))))

(declare-fun b!3622761 () Bool)

(declare-fun e!2242473 () Bool)

(declare-fun e!2242472 () Bool)

(assert (=> b!3622761 (= e!2242473 e!2242472)))

(declare-fun res!1466315 () Bool)

(assert (=> b!3622761 (=> (not res!1466315) (not e!2242472))))

(assert (=> b!3622761 (= res!1466315 (not ((_ is Nil!38166) lt!1252082)))))

(declare-fun d!1065497 () Bool)

(assert (=> d!1065497 e!2242471))

(declare-fun res!1466312 () Bool)

(assert (=> d!1065497 (=> res!1466312 e!2242471)))

(declare-fun lt!1252242 () Bool)

(assert (=> d!1065497 (= res!1466312 (not lt!1252242))))

(assert (=> d!1065497 (= lt!1252242 e!2242473)))

(declare-fun res!1466314 () Bool)

(assert (=> d!1065497 (=> res!1466314 e!2242473)))

(assert (=> d!1065497 (= res!1466314 ((_ is Nil!38166) lt!1252086))))

(assert (=> d!1065497 (= (isPrefix!3047 lt!1252086 lt!1252082) lt!1252242)))

(declare-fun b!3622762 () Bool)

(declare-fun res!1466313 () Bool)

(assert (=> b!3622762 (=> (not res!1466313) (not e!2242472))))

(assert (=> b!3622762 (= res!1466313 (= (head!7656 lt!1252086) (head!7656 lt!1252082)))))

(declare-fun b!3622763 () Bool)

(assert (=> b!3622763 (= e!2242472 (isPrefix!3047 (tail!5611 lt!1252086) (tail!5611 lt!1252082)))))

(assert (= (and d!1065497 (not res!1466314)) b!3622761))

(assert (= (and b!3622761 res!1466315) b!3622762))

(assert (= (and b!3622762 res!1466313) b!3622763))

(assert (= (and d!1065497 (not res!1466312)) b!3622764))

(assert (=> b!3622764 m!4122639))

(assert (=> b!3622764 m!4122657))

(assert (=> b!3622762 m!4122659))

(assert (=> b!3622762 m!4122645))

(assert (=> b!3622763 m!4122663))

(assert (=> b!3622763 m!4122649))

(assert (=> b!3622763 m!4122663))

(assert (=> b!3622763 m!4122649))

(declare-fun m!4122711 () Bool)

(assert (=> b!3622763 m!4122711))

(assert (=> b!3622377 d!1065497))

(declare-fun e!2242479 () Bool)

(declare-fun lt!1252247 () List!38290)

(declare-fun b!3622776 () Bool)

(assert (=> b!3622776 (= e!2242479 (or (not (= suffix!1395 Nil!38166)) (= lt!1252247 lt!1252088)))))

(declare-fun b!3622775 () Bool)

(declare-fun res!1466320 () Bool)

(assert (=> b!3622775 (=> (not res!1466320) (not e!2242479))))

(assert (=> b!3622775 (= res!1466320 (= (size!29114 lt!1252247) (+ (size!29114 lt!1252088) (size!29114 suffix!1395))))))

(declare-fun b!3622773 () Bool)

(declare-fun e!2242480 () List!38290)

(assert (=> b!3622773 (= e!2242480 suffix!1395)))

(declare-fun d!1065499 () Bool)

(assert (=> d!1065499 e!2242479))

(declare-fun res!1466321 () Bool)

(assert (=> d!1065499 (=> (not res!1466321) (not e!2242479))))

(assert (=> d!1065499 (= res!1466321 (= (content!5464 lt!1252247) ((_ map or) (content!5464 lt!1252088) (content!5464 suffix!1395))))))

(assert (=> d!1065499 (= lt!1252247 e!2242480)))

(declare-fun c!626865 () Bool)

(assert (=> d!1065499 (= c!626865 ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1065499 (= (++!9500 lt!1252088 suffix!1395) lt!1252247)))

(declare-fun b!3622774 () Bool)

(assert (=> b!3622774 (= e!2242480 (Cons!38166 (h!43586 lt!1252088) (++!9500 (t!294261 lt!1252088) suffix!1395)))))

(assert (= (and d!1065499 c!626865) b!3622773))

(assert (= (and d!1065499 (not c!626865)) b!3622774))

(assert (= (and d!1065499 res!1466321) b!3622775))

(assert (= (and b!3622775 res!1466320) b!3622776))

(declare-fun m!4122721 () Bool)

(assert (=> b!3622775 m!4122721))

(assert (=> b!3622775 m!4122641))

(declare-fun m!4122723 () Bool)

(assert (=> b!3622775 m!4122723))

(declare-fun m!4122725 () Bool)

(assert (=> d!1065499 m!4122725))

(declare-fun m!4122727 () Bool)

(assert (=> d!1065499 m!4122727))

(declare-fun m!4122729 () Bool)

(assert (=> d!1065499 m!4122729))

(declare-fun m!4122731 () Bool)

(assert (=> b!3622774 m!4122731))

(assert (=> b!3622377 d!1065499))

(declare-fun d!1065503 () Bool)

(assert (=> d!1065503 (isPrefix!3047 lt!1252088 (++!9500 lt!1252088 suffix!1395))))

(declare-fun lt!1252248 () Unit!54914)

(assert (=> d!1065503 (= lt!1252248 (choose!21257 lt!1252088 suffix!1395))))

(assert (=> d!1065503 (= (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252088 suffix!1395) lt!1252248)))

(declare-fun bs!571236 () Bool)

(assert (= bs!571236 d!1065503))

(assert (=> bs!571236 m!4122277))

(assert (=> bs!571236 m!4122277))

(declare-fun m!4122733 () Bool)

(assert (=> bs!571236 m!4122733))

(declare-fun m!4122735 () Bool)

(assert (=> bs!571236 m!4122735))

(assert (=> b!3622377 d!1065503))

(declare-fun b!3622813 () Bool)

(declare-fun e!2242505 () Bool)

(declare-fun lt!1252259 () Option!7999)

(assert (=> b!3622813 (= e!2242505 (= (tag!6404 (get!12451 lt!1252259)) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3622814 () Bool)

(declare-fun e!2242504 () Option!7999)

(declare-fun e!2242506 () Option!7999)

(assert (=> b!3622814 (= e!2242504 e!2242506)))

(declare-fun c!626873 () Bool)

(assert (=> b!3622814 (= c!626873 (and ((_ is Cons!38167) rules!3307) (not (= (tag!6404 (h!43587 rules!3307)) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(declare-fun b!3622815 () Bool)

(declare-fun lt!1252258 () Unit!54914)

(declare-fun lt!1252257 () Unit!54914)

(assert (=> b!3622815 (= lt!1252258 lt!1252257)))

(assert (=> b!3622815 (rulesInvariant!4670 thiss!23823 (t!294262 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!543 (LexerInterface!5273 Rule!11168 List!38291) Unit!54914)

(assert (=> b!3622815 (= lt!1252257 (lemmaInvariantOnRulesThenOnTail!543 thiss!23823 (h!43587 rules!3307) (t!294262 rules!3307)))))

(assert (=> b!3622815 (= e!2242506 (getRuleFromTag!1290 thiss!23823 (t!294262 rules!3307) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3622817 () Bool)

(assert (=> b!3622817 (= e!2242504 (Some!7998 (h!43587 rules!3307)))))

(declare-fun b!3622818 () Bool)

(assert (=> b!3622818 (= e!2242506 None!7998)))

(declare-fun d!1065505 () Bool)

(declare-fun e!2242507 () Bool)

(assert (=> d!1065505 e!2242507))

(declare-fun res!1466338 () Bool)

(assert (=> d!1065505 (=> res!1466338 e!2242507)))

(assert (=> d!1065505 (= res!1466338 (isEmpty!22562 lt!1252259))))

(assert (=> d!1065505 (= lt!1252259 e!2242504)))

(declare-fun c!626874 () Bool)

(assert (=> d!1065505 (= c!626874 (and ((_ is Cons!38167) rules!3307) (= (tag!6404 (h!43587 rules!3307)) (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> d!1065505 (rulesInvariant!4670 thiss!23823 rules!3307)))

(assert (=> d!1065505 (= (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))) lt!1252259)))

(declare-fun b!3622816 () Bool)

(assert (=> b!3622816 (= e!2242507 e!2242505)))

(declare-fun res!1466339 () Bool)

(assert (=> b!3622816 (=> (not res!1466339) (not e!2242505))))

(assert (=> b!3622816 (= res!1466339 (contains!7432 rules!3307 (get!12451 lt!1252259)))))

(assert (= (and d!1065505 c!626874) b!3622817))

(assert (= (and d!1065505 (not c!626874)) b!3622814))

(assert (= (and b!3622814 c!626873) b!3622815))

(assert (= (and b!3622814 (not c!626873)) b!3622818))

(assert (= (and d!1065505 (not res!1466338)) b!3622816))

(assert (= (and b!3622816 res!1466339) b!3622813))

(declare-fun m!4122769 () Bool)

(assert (=> b!3622813 m!4122769))

(declare-fun m!4122771 () Bool)

(assert (=> b!3622815 m!4122771))

(declare-fun m!4122775 () Bool)

(assert (=> b!3622815 m!4122775))

(declare-fun m!4122779 () Bool)

(assert (=> b!3622815 m!4122779))

(declare-fun m!4122781 () Bool)

(assert (=> d!1065505 m!4122781))

(assert (=> d!1065505 m!4122217))

(assert (=> b!3622816 m!4122769))

(assert (=> b!3622816 m!4122769))

(declare-fun m!4122783 () Bool)

(assert (=> b!3622816 m!4122783))

(assert (=> b!3622377 d!1065505))

(declare-fun b!3622902 () Bool)

(declare-fun e!2242553 () Bool)

(declare-fun lt!1252303 () Token!10734)

(assert (=> b!3622902 (= e!2242553 (= (rule!8446 lt!1252303) (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))

(declare-fun b!3622901 () Bool)

(declare-fun res!1466365 () Bool)

(assert (=> b!3622901 (=> (not res!1466365) (not e!2242553))))

(assert (=> b!3622901 (= res!1466365 (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))) (list!14088 (charsOf!3698 lt!1252303))))))

(declare-fun b!3622904 () Bool)

(declare-fun e!2242552 () Unit!54914)

(declare-fun Unit!54920 () Unit!54914)

(assert (=> b!3622904 (= e!2242552 Unit!54920)))

(declare-fun d!1065521 () Bool)

(assert (=> d!1065521 (isDefined!6231 (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395)))))

(declare-fun lt!1252308 () Unit!54914)

(assert (=> d!1065521 (= lt!1252308 e!2242552)))

(declare-fun c!626883 () Bool)

(assert (=> d!1065521 (= c!626883 (isEmpty!22563 (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395))))))

(declare-fun lt!1252318 () Unit!54914)

(declare-fun lt!1252317 () Unit!54914)

(assert (=> d!1065521 (= lt!1252318 lt!1252317)))

(assert (=> d!1065521 e!2242553))

(declare-fun res!1466364 () Bool)

(assert (=> d!1065521 (=> (not res!1466364) (not e!2242553))))

(assert (=> d!1065521 (= res!1466364 (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))

(assert (=> d!1065521 (= lt!1252317 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1290 thiss!23823 rules!3307 lt!1252088 lt!1252303))))

(declare-fun lt!1252305 () Unit!54914)

(declare-fun lt!1252311 () Unit!54914)

(assert (=> d!1065521 (= lt!1252305 lt!1252311)))

(declare-fun lt!1252307 () List!38290)

(assert (=> d!1065521 (isPrefix!3047 lt!1252307 (++!9500 lt!1252088 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!464 (List!38290 List!38290 List!38290) Unit!54914)

(assert (=> d!1065521 (= lt!1252311 (lemmaPrefixStaysPrefixWhenAddingToSuffix!464 lt!1252307 lt!1252088 suffix!1395))))

(assert (=> d!1065521 (= lt!1252307 (list!14088 (charsOf!3698 lt!1252303)))))

(declare-fun lt!1252306 () Unit!54914)

(declare-fun lt!1252304 () Unit!54914)

(assert (=> d!1065521 (= lt!1252306 lt!1252304)))

(declare-fun lt!1252312 () List!38290)

(declare-fun lt!1252313 () List!38290)

(assert (=> d!1065521 (isPrefix!3047 lt!1252312 (++!9500 lt!1252312 lt!1252313))))

(assert (=> d!1065521 (= lt!1252304 (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252312 lt!1252313))))

(assert (=> d!1065521 (= lt!1252313 (_2!22152 (get!12450 (maxPrefix!2807 thiss!23823 rules!3307 lt!1252088))))))

(assert (=> d!1065521 (= lt!1252312 (list!14088 (charsOf!3698 lt!1252303)))))

(declare-datatypes ((List!38294 0))(
  ( (Nil!38170) (Cons!38170 (h!43590 Token!10734) (t!294365 List!38294)) )
))
(declare-fun head!7658 (List!38294) Token!10734)

(declare-datatypes ((IArray!23287 0))(
  ( (IArray!23288 (innerList!11701 List!38294)) )
))
(declare-datatypes ((Conc!11641 0))(
  ( (Node!11641 (left!29801 Conc!11641) (right!30131 Conc!11641) (csize!23512 Int) (cheight!11852 Int)) (Leaf!18094 (xs!14843 IArray!23287) (csize!23513 Int)) (Empty!11641) )
))
(declare-datatypes ((BalanceConc!22896 0))(
  ( (BalanceConc!22897 (c!626905 Conc!11641)) )
))
(declare-fun list!14092 (BalanceConc!22896) List!38294)

(declare-datatypes ((tuple2!38040 0))(
  ( (tuple2!38041 (_1!22154 BalanceConc!22896) (_2!22154 BalanceConc!22892)) )
))
(declare-fun lex!2496 (LexerInterface!5273 List!38291 BalanceConc!22892) tuple2!38040)

(assert (=> d!1065521 (= lt!1252303 (head!7658 (list!14092 (_1!22154 (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088))))))))

(assert (=> d!1065521 (not (isEmpty!22558 rules!3307))))

(assert (=> d!1065521 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!953 thiss!23823 rules!3307 lt!1252088 suffix!1395) lt!1252308)))

(declare-fun b!3622903 () Bool)

(declare-fun Unit!54921 () Unit!54914)

(assert (=> b!3622903 (= e!2242552 Unit!54921)))

(declare-fun lt!1252310 () List!38290)

(assert (=> b!3622903 (= lt!1252310 (++!9500 lt!1252088 suffix!1395))))

(declare-fun lt!1252309 () Unit!54914)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!500 (LexerInterface!5273 Rule!11168 List!38291 List!38290) Unit!54914)

(assert (=> b!3622903 (= lt!1252309 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!500 thiss!23823 (rule!8446 lt!1252303) rules!3307 lt!1252310))))

(assert (=> b!3622903 (isEmpty!22563 (maxPrefixOneRule!1947 thiss!23823 (rule!8446 lt!1252303) lt!1252310))))

(declare-fun lt!1252302 () Unit!54914)

(assert (=> b!3622903 (= lt!1252302 lt!1252309)))

(declare-fun lt!1252314 () List!38290)

(assert (=> b!3622903 (= lt!1252314 (list!14088 (charsOf!3698 lt!1252303)))))

(declare-fun lt!1252315 () Unit!54914)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!488 (LexerInterface!5273 Rule!11168 List!38290 List!38290) Unit!54914)

(assert (=> b!3622903 (= lt!1252315 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!488 thiss!23823 (rule!8446 lt!1252303) lt!1252314 (++!9500 lt!1252088 suffix!1395)))))

(assert (=> b!3622903 (not (matchR!5012 (regex!5684 (rule!8446 lt!1252303)) lt!1252314))))

(declare-fun lt!1252316 () Unit!54914)

(assert (=> b!3622903 (= lt!1252316 lt!1252315)))

(assert (=> b!3622903 false))

(assert (= (and d!1065521 res!1466364) b!3622901))

(assert (= (and b!3622901 res!1466365) b!3622902))

(assert (= (and d!1065521 c!626883) b!3622903))

(assert (= (and d!1065521 (not c!626883)) b!3622904))

(declare-fun m!4122853 () Bool)

(assert (=> b!3622902 m!4122853))

(assert (=> b!3622902 m!4122853))

(declare-fun m!4122855 () Bool)

(assert (=> b!3622902 m!4122855))

(assert (=> b!3622901 m!4122853))

(assert (=> b!3622901 m!4122855))

(declare-fun m!4122857 () Bool)

(assert (=> b!3622901 m!4122857))

(declare-fun m!4122859 () Bool)

(assert (=> b!3622901 m!4122859))

(declare-fun m!4122861 () Bool)

(assert (=> b!3622901 m!4122861))

(assert (=> b!3622901 m!4122857))

(assert (=> b!3622901 m!4122861))

(assert (=> b!3622901 m!4122853))

(declare-fun m!4122863 () Bool)

(assert (=> d!1065521 m!4122863))

(declare-fun m!4122865 () Bool)

(assert (=> d!1065521 m!4122865))

(declare-fun m!4122867 () Bool)

(assert (=> d!1065521 m!4122867))

(declare-fun m!4122869 () Bool)

(assert (=> d!1065521 m!4122869))

(declare-fun m!4122871 () Bool)

(assert (=> d!1065521 m!4122871))

(assert (=> d!1065521 m!4122233))

(assert (=> d!1065521 m!4122277))

(declare-fun m!4122873 () Bool)

(assert (=> d!1065521 m!4122873))

(assert (=> d!1065521 m!4122277))

(assert (=> d!1065521 m!4122277))

(assert (=> d!1065521 m!4122865))

(declare-fun m!4122875 () Bool)

(assert (=> d!1065521 m!4122875))

(declare-fun m!4122877 () Bool)

(assert (=> d!1065521 m!4122877))

(assert (=> d!1065521 m!4122875))

(assert (=> d!1065521 m!4122861))

(assert (=> d!1065521 m!4122853))

(assert (=> d!1065521 m!4122853))

(declare-fun m!4122879 () Bool)

(assert (=> d!1065521 m!4122879))

(declare-fun m!4122881 () Bool)

(assert (=> d!1065521 m!4122881))

(assert (=> d!1065521 m!4122253))

(assert (=> d!1065521 m!4122869))

(declare-fun m!4122883 () Bool)

(assert (=> d!1065521 m!4122883))

(assert (=> d!1065521 m!4122883))

(declare-fun m!4122885 () Bool)

(assert (=> d!1065521 m!4122885))

(assert (=> d!1065521 m!4122253))

(declare-fun m!4122887 () Bool)

(assert (=> d!1065521 m!4122887))

(declare-fun m!4122889 () Bool)

(assert (=> d!1065521 m!4122889))

(assert (=> d!1065521 m!4122861))

(assert (=> d!1065521 m!4122857))

(assert (=> d!1065521 m!4122865))

(declare-fun m!4122891 () Bool)

(assert (=> d!1065521 m!4122891))

(assert (=> b!3622903 m!4122277))

(declare-fun m!4122893 () Bool)

(assert (=> b!3622903 m!4122893))

(assert (=> b!3622903 m!4122277))

(declare-fun m!4122895 () Bool)

(assert (=> b!3622903 m!4122895))

(declare-fun m!4122897 () Bool)

(assert (=> b!3622903 m!4122897))

(assert (=> b!3622903 m!4122861))

(assert (=> b!3622903 m!4122857))

(declare-fun m!4122899 () Bool)

(assert (=> b!3622903 m!4122899))

(assert (=> b!3622903 m!4122861))

(declare-fun m!4122901 () Bool)

(assert (=> b!3622903 m!4122901))

(assert (=> b!3622903 m!4122895))

(assert (=> b!3622377 d!1065521))

(declare-fun b!3622908 () Bool)

(declare-fun lt!1252319 () List!38290)

(declare-fun e!2242554 () Bool)

(assert (=> b!3622908 (= e!2242554 (or (not (= (_2!22152 lt!1252077) Nil!38166)) (= lt!1252319 lt!1252086)))))

(declare-fun b!3622907 () Bool)

(declare-fun res!1466366 () Bool)

(assert (=> b!3622907 (=> (not res!1466366) (not e!2242554))))

(assert (=> b!3622907 (= res!1466366 (= (size!29114 lt!1252319) (+ (size!29114 lt!1252086) (size!29114 (_2!22152 lt!1252077)))))))

(declare-fun b!3622905 () Bool)

(declare-fun e!2242555 () List!38290)

(assert (=> b!3622905 (= e!2242555 (_2!22152 lt!1252077))))

(declare-fun d!1065543 () Bool)

(assert (=> d!1065543 e!2242554))

(declare-fun res!1466367 () Bool)

(assert (=> d!1065543 (=> (not res!1466367) (not e!2242554))))

(assert (=> d!1065543 (= res!1466367 (= (content!5464 lt!1252319) ((_ map or) (content!5464 lt!1252086) (content!5464 (_2!22152 lt!1252077)))))))

(assert (=> d!1065543 (= lt!1252319 e!2242555)))

(declare-fun c!626884 () Bool)

(assert (=> d!1065543 (= c!626884 ((_ is Nil!38166) lt!1252086))))

(assert (=> d!1065543 (= (++!9500 lt!1252086 (_2!22152 lt!1252077)) lt!1252319)))

(declare-fun b!3622906 () Bool)

(assert (=> b!3622906 (= e!2242555 (Cons!38166 (h!43586 lt!1252086) (++!9500 (t!294261 lt!1252086) (_2!22152 lt!1252077))))))

(assert (= (and d!1065543 c!626884) b!3622905))

(assert (= (and d!1065543 (not c!626884)) b!3622906))

(assert (= (and d!1065543 res!1466367) b!3622907))

(assert (= (and b!3622907 res!1466366) b!3622908))

(declare-fun m!4122903 () Bool)

(assert (=> b!3622907 m!4122903))

(assert (=> b!3622907 m!4122657))

(declare-fun m!4122905 () Bool)

(assert (=> b!3622907 m!4122905))

(declare-fun m!4122907 () Bool)

(assert (=> d!1065543 m!4122907))

(declare-fun m!4122909 () Bool)

(assert (=> d!1065543 m!4122909))

(declare-fun m!4122911 () Bool)

(assert (=> d!1065543 m!4122911))

(declare-fun m!4122913 () Bool)

(assert (=> b!3622906 m!4122913))

(assert (=> b!3622377 d!1065543))

(declare-fun d!1065545 () Bool)

(declare-fun lt!1252320 () Bool)

(assert (=> d!1065545 (= lt!1252320 (select (content!5464 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) lt!1252080))))

(declare-fun e!2242557 () Bool)

(assert (=> d!1065545 (= lt!1252320 e!2242557)))

(declare-fun res!1466368 () Bool)

(assert (=> d!1065545 (=> (not res!1466368) (not e!2242557))))

(assert (=> d!1065545 (= res!1466368 ((_ is Cons!38166) (usedCharacters!898 (regex!5684 anOtherTypeRule!33))))))

(assert (=> d!1065545 (= (contains!7431 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)) lt!1252080) lt!1252320)))

(declare-fun b!3622909 () Bool)

(declare-fun e!2242556 () Bool)

(assert (=> b!3622909 (= e!2242557 e!2242556)))

(declare-fun res!1466369 () Bool)

(assert (=> b!3622909 (=> res!1466369 e!2242556)))

(assert (=> b!3622909 (= res!1466369 (= (h!43586 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) lt!1252080))))

(declare-fun b!3622910 () Bool)

(assert (=> b!3622910 (= e!2242556 (contains!7431 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) lt!1252080))))

(assert (= (and d!1065545 res!1466368) b!3622909))

(assert (= (and b!3622909 (not res!1466369)) b!3622910))

(assert (=> d!1065545 m!4122287))

(declare-fun m!4122915 () Bool)

(assert (=> d!1065545 m!4122915))

(declare-fun m!4122917 () Bool)

(assert (=> d!1065545 m!4122917))

(declare-fun m!4122919 () Bool)

(assert (=> b!3622910 m!4122919))

(assert (=> b!3622398 d!1065545))

(declare-fun b!3622911 () Bool)

(declare-fun e!2242559 () List!38290)

(declare-fun call!262098 () List!38290)

(assert (=> b!3622911 (= e!2242559 call!262098)))

(declare-fun b!3622912 () Bool)

(declare-fun e!2242561 () List!38290)

(assert (=> b!3622912 (= e!2242561 Nil!38166)))

(declare-fun b!3622913 () Bool)

(declare-fun e!2242560 () List!38290)

(declare-fun call!262096 () List!38290)

(assert (=> b!3622913 (= e!2242560 call!262096)))

(declare-fun bm!262090 () Bool)

(declare-fun c!626885 () Bool)

(declare-fun c!626888 () Bool)

(assert (=> bm!262090 (= call!262098 (usedCharacters!898 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))))))

(declare-fun bm!262091 () Bool)

(declare-fun call!262095 () List!38290)

(assert (=> bm!262091 (= call!262095 call!262098)))

(declare-fun b!3622914 () Bool)

(declare-fun e!2242558 () List!38290)

(assert (=> b!3622914 (= e!2242558 (Cons!38166 (c!626792 (regex!5684 anOtherTypeRule!33)) Nil!38166))))

(declare-fun b!3622915 () Bool)

(assert (=> b!3622915 (= c!626888 ((_ is Star!10443) (regex!5684 anOtherTypeRule!33)))))

(assert (=> b!3622915 (= e!2242558 e!2242559)))

(declare-fun call!262097 () List!38290)

(declare-fun bm!262092 () Bool)

(assert (=> bm!262092 (= call!262096 (++!9500 (ite c!626885 call!262097 call!262095) (ite c!626885 call!262095 call!262097)))))

(declare-fun b!3622916 () Bool)

(assert (=> b!3622916 (= e!2242560 call!262096)))

(declare-fun bm!262093 () Bool)

(assert (=> bm!262093 (= call!262097 (usedCharacters!898 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))))))

(declare-fun b!3622918 () Bool)

(assert (=> b!3622918 (= e!2242559 e!2242560)))

(assert (=> b!3622918 (= c!626885 ((_ is Union!10443) (regex!5684 anOtherTypeRule!33)))))

(declare-fun b!3622917 () Bool)

(assert (=> b!3622917 (= e!2242561 e!2242558)))

(declare-fun c!626886 () Bool)

(assert (=> b!3622917 (= c!626886 ((_ is ElementMatch!10443) (regex!5684 anOtherTypeRule!33)))))

(declare-fun d!1065547 () Bool)

(declare-fun c!626887 () Bool)

(assert (=> d!1065547 (= c!626887 (or ((_ is EmptyExpr!10443) (regex!5684 anOtherTypeRule!33)) ((_ is EmptyLang!10443) (regex!5684 anOtherTypeRule!33))))))

(assert (=> d!1065547 (= (usedCharacters!898 (regex!5684 anOtherTypeRule!33)) e!2242561)))

(assert (= (and d!1065547 c!626887) b!3622912))

(assert (= (and d!1065547 (not c!626887)) b!3622917))

(assert (= (and b!3622917 c!626886) b!3622914))

(assert (= (and b!3622917 (not c!626886)) b!3622915))

(assert (= (and b!3622915 c!626888) b!3622911))

(assert (= (and b!3622915 (not c!626888)) b!3622918))

(assert (= (and b!3622918 c!626885) b!3622916))

(assert (= (and b!3622918 (not c!626885)) b!3622913))

(assert (= (or b!3622916 b!3622913) bm!262093))

(assert (= (or b!3622916 b!3622913) bm!262091))

(assert (= (or b!3622916 b!3622913) bm!262092))

(assert (= (or b!3622911 bm!262091) bm!262090))

(declare-fun m!4122921 () Bool)

(assert (=> bm!262090 m!4122921))

(declare-fun m!4122923 () Bool)

(assert (=> bm!262092 m!4122923))

(declare-fun m!4122925 () Bool)

(assert (=> bm!262093 m!4122925))

(assert (=> b!3622398 d!1065547))

(declare-fun d!1065549 () Bool)

(declare-fun lt!1252323 () Bool)

(declare-fun content!5465 (List!38291) (InoxSet Rule!11168))

(assert (=> d!1065549 (= lt!1252323 (select (content!5465 rules!3307) rule!403))))

(declare-fun e!2242567 () Bool)

(assert (=> d!1065549 (= lt!1252323 e!2242567)))

(declare-fun res!1466374 () Bool)

(assert (=> d!1065549 (=> (not res!1466374) (not e!2242567))))

(assert (=> d!1065549 (= res!1466374 ((_ is Cons!38167) rules!3307))))

(assert (=> d!1065549 (= (contains!7432 rules!3307 rule!403) lt!1252323)))

(declare-fun b!3622923 () Bool)

(declare-fun e!2242566 () Bool)

(assert (=> b!3622923 (= e!2242567 e!2242566)))

(declare-fun res!1466375 () Bool)

(assert (=> b!3622923 (=> res!1466375 e!2242566)))

(assert (=> b!3622923 (= res!1466375 (= (h!43587 rules!3307) rule!403))))

(declare-fun b!3622924 () Bool)

(assert (=> b!3622924 (= e!2242566 (contains!7432 (t!294262 rules!3307) rule!403))))

(assert (= (and d!1065549 res!1466374) b!3622923))

(assert (= (and b!3622923 (not res!1466375)) b!3622924))

(declare-fun m!4122927 () Bool)

(assert (=> d!1065549 m!4122927))

(declare-fun m!4122929 () Bool)

(assert (=> d!1065549 m!4122929))

(declare-fun m!4122931 () Bool)

(assert (=> b!3622924 m!4122931))

(assert (=> b!3622387 d!1065549))

(declare-fun d!1065551 () Bool)

(declare-fun res!1466380 () Bool)

(declare-fun e!2242572 () Bool)

(assert (=> d!1065551 (=> res!1466380 e!2242572)))

(assert (=> d!1065551 (= res!1466380 (not ((_ is Cons!38167) rules!3307)))))

(assert (=> d!1065551 (= (sepAndNonSepRulesDisjointChars!1854 rules!3307 rules!3307) e!2242572)))

(declare-fun b!3622929 () Bool)

(declare-fun e!2242573 () Bool)

(assert (=> b!3622929 (= e!2242572 e!2242573)))

(declare-fun res!1466381 () Bool)

(assert (=> b!3622929 (=> (not res!1466381) (not e!2242573))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!837 (Rule!11168 List!38291) Bool)

(assert (=> b!3622929 (= res!1466381 (ruleDisjointCharsFromAllFromOtherType!837 (h!43587 rules!3307) rules!3307))))

(declare-fun b!3622930 () Bool)

(assert (=> b!3622930 (= e!2242573 (sepAndNonSepRulesDisjointChars!1854 rules!3307 (t!294262 rules!3307)))))

(assert (= (and d!1065551 (not res!1466380)) b!3622929))

(assert (= (and b!3622929 res!1466381) b!3622930))

(declare-fun m!4122933 () Bool)

(assert (=> b!3622929 m!4122933))

(declare-fun m!4122935 () Bool)

(assert (=> b!3622930 m!4122935))

(assert (=> b!3622371 d!1065551))

(declare-fun d!1065553 () Bool)

(assert (=> d!1065553 (= (inv!51560 (tag!6404 (h!43587 rules!3307))) (= (mod (str.len (value!182453 (tag!6404 (h!43587 rules!3307)))) 2) 0))))

(assert (=> b!3622380 d!1065553))

(declare-fun d!1065555 () Bool)

(declare-fun res!1466382 () Bool)

(declare-fun e!2242574 () Bool)

(assert (=> d!1065555 (=> (not res!1466382) (not e!2242574))))

(assert (=> d!1065555 (= res!1466382 (semiInverseModEq!2411 (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (h!43587 rules!3307)))))))

(assert (=> d!1065555 (= (inv!51563 (transformation!5684 (h!43587 rules!3307))) e!2242574)))

(declare-fun b!3622931 () Bool)

(assert (=> b!3622931 (= e!2242574 (equivClasses!2310 (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (h!43587 rules!3307)))))))

(assert (= (and d!1065555 res!1466382) b!3622931))

(declare-fun m!4122937 () Bool)

(assert (=> d!1065555 m!4122937))

(declare-fun m!4122939 () Bool)

(assert (=> b!3622931 m!4122939))

(assert (=> b!3622380 d!1065555))

(declare-fun d!1065557 () Bool)

(declare-fun res!1466385 () Bool)

(declare-fun e!2242577 () Bool)

(assert (=> d!1065557 (=> (not res!1466385) (not e!2242577))))

(declare-fun rulesValid!2168 (LexerInterface!5273 List!38291) Bool)

(assert (=> d!1065557 (= res!1466385 (rulesValid!2168 thiss!23823 rules!3307))))

(assert (=> d!1065557 (= (rulesInvariant!4670 thiss!23823 rules!3307) e!2242577)))

(declare-fun b!3622934 () Bool)

(declare-datatypes ((List!38295 0))(
  ( (Nil!38171) (Cons!38171 (h!43591 String!42904) (t!294366 List!38295)) )
))
(declare-fun noDuplicateTag!2164 (LexerInterface!5273 List!38291 List!38295) Bool)

(assert (=> b!3622934 (= e!2242577 (noDuplicateTag!2164 thiss!23823 rules!3307 Nil!38171))))

(assert (= (and d!1065557 res!1466385) b!3622934))

(declare-fun m!4122941 () Bool)

(assert (=> d!1065557 m!4122941))

(declare-fun m!4122943 () Bool)

(assert (=> b!3622934 m!4122943))

(assert (=> b!3622390 d!1065557))

(declare-fun d!1065559 () Bool)

(assert (=> d!1065559 (= (isDefined!6231 lt!1252070) (not (isEmpty!22563 lt!1252070)))))

(declare-fun bs!571240 () Bool)

(assert (= bs!571240 d!1065559))

(declare-fun m!4122945 () Bool)

(assert (=> bs!571240 m!4122945))

(assert (=> b!3622379 d!1065559))

(declare-fun b!3622935 () Bool)

(declare-fun e!2242578 () Option!7998)

(declare-fun call!262099 () Option!7998)

(assert (=> b!3622935 (= e!2242578 call!262099)))

(declare-fun bm!262094 () Bool)

(assert (=> bm!262094 (= call!262099 (maxPrefixOneRule!1947 thiss!23823 (h!43587 rules!3307) lt!1252088))))

(declare-fun d!1065561 () Bool)

(declare-fun e!2242580 () Bool)

(assert (=> d!1065561 e!2242580))

(declare-fun res!1466387 () Bool)

(assert (=> d!1065561 (=> res!1466387 e!2242580)))

(declare-fun lt!1252326 () Option!7998)

(assert (=> d!1065561 (= res!1466387 (isEmpty!22563 lt!1252326))))

(assert (=> d!1065561 (= lt!1252326 e!2242578)))

(declare-fun c!626889 () Bool)

(assert (=> d!1065561 (= c!626889 (and ((_ is Cons!38167) rules!3307) ((_ is Nil!38167) (t!294262 rules!3307))))))

(declare-fun lt!1252325 () Unit!54914)

(declare-fun lt!1252328 () Unit!54914)

(assert (=> d!1065561 (= lt!1252325 lt!1252328)))

(assert (=> d!1065561 (isPrefix!3047 lt!1252088 lt!1252088)))

(assert (=> d!1065561 (= lt!1252328 (lemmaIsPrefixRefl!1932 lt!1252088 lt!1252088))))

(assert (=> d!1065561 (rulesValidInductive!1997 thiss!23823 rules!3307)))

(assert (=> d!1065561 (= (maxPrefix!2807 thiss!23823 rules!3307 lt!1252088) lt!1252326)))

(declare-fun b!3622936 () Bool)

(declare-fun e!2242579 () Bool)

(assert (=> b!3622936 (= e!2242580 e!2242579)))

(declare-fun res!1466391 () Bool)

(assert (=> b!3622936 (=> (not res!1466391) (not e!2242579))))

(assert (=> b!3622936 (= res!1466391 (isDefined!6231 lt!1252326))))

(declare-fun b!3622937 () Bool)

(declare-fun res!1466388 () Bool)

(assert (=> b!3622937 (=> (not res!1466388) (not e!2242579))))

(assert (=> b!3622937 (= res!1466388 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326)))))))

(declare-fun b!3622938 () Bool)

(declare-fun res!1466390 () Bool)

(assert (=> b!3622938 (=> (not res!1466390) (not e!2242579))))

(assert (=> b!3622938 (= res!1466390 (< (size!29114 (_2!22152 (get!12450 lt!1252326))) (size!29114 lt!1252088)))))

(declare-fun b!3622939 () Bool)

(declare-fun res!1466392 () Bool)

(assert (=> b!3622939 (=> (not res!1466392) (not e!2242579))))

(assert (=> b!3622939 (= res!1466392 (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun b!3622940 () Bool)

(declare-fun lt!1252327 () Option!7998)

(declare-fun lt!1252324 () Option!7998)

(assert (=> b!3622940 (= e!2242578 (ite (and ((_ is None!7997) lt!1252327) ((_ is None!7997) lt!1252324)) None!7997 (ite ((_ is None!7997) lt!1252324) lt!1252327 (ite ((_ is None!7997) lt!1252327) lt!1252324 (ite (>= (size!29110 (_1!22152 (v!37767 lt!1252327))) (size!29110 (_1!22152 (v!37767 lt!1252324)))) lt!1252327 lt!1252324)))))))

(assert (=> b!3622940 (= lt!1252327 call!262099)))

(assert (=> b!3622940 (= lt!1252324 (maxPrefix!2807 thiss!23823 (t!294262 rules!3307) lt!1252088))))

(declare-fun b!3622941 () Bool)

(assert (=> b!3622941 (= e!2242579 (contains!7432 rules!3307 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))

(declare-fun b!3622942 () Bool)

(declare-fun res!1466386 () Bool)

(assert (=> b!3622942 (=> (not res!1466386) (not e!2242579))))

(assert (=> b!3622942 (= res!1466386 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))) (_2!22152 (get!12450 lt!1252326))) lt!1252088))))

(declare-fun b!3622943 () Bool)

(declare-fun res!1466389 () Bool)

(assert (=> b!3622943 (=> (not res!1466389) (not e!2242579))))

(assert (=> b!3622943 (= res!1466389 (= (value!182454 (_1!22152 (get!12450 lt!1252326))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326)))))))))

(assert (= (and d!1065561 c!626889) b!3622935))

(assert (= (and d!1065561 (not c!626889)) b!3622940))

(assert (= (or b!3622935 b!3622940) bm!262094))

(assert (= (and d!1065561 (not res!1466387)) b!3622936))

(assert (= (and b!3622936 res!1466391) b!3622937))

(assert (= (and b!3622937 res!1466388) b!3622938))

(assert (= (and b!3622938 res!1466390) b!3622942))

(assert (= (and b!3622942 res!1466386) b!3622943))

(assert (= (and b!3622943 res!1466389) b!3622939))

(assert (= (and b!3622939 res!1466392) b!3622941))

(declare-fun m!4122947 () Bool)

(assert (=> b!3622941 m!4122947))

(declare-fun m!4122949 () Bool)

(assert (=> b!3622941 m!4122949))

(assert (=> b!3622939 m!4122947))

(declare-fun m!4122951 () Bool)

(assert (=> b!3622939 m!4122951))

(assert (=> b!3622939 m!4122951))

(declare-fun m!4122953 () Bool)

(assert (=> b!3622939 m!4122953))

(assert (=> b!3622939 m!4122953))

(declare-fun m!4122955 () Bool)

(assert (=> b!3622939 m!4122955))

(assert (=> b!3622943 m!4122947))

(declare-fun m!4122957 () Bool)

(assert (=> b!3622943 m!4122957))

(assert (=> b!3622943 m!4122957))

(declare-fun m!4122959 () Bool)

(assert (=> b!3622943 m!4122959))

(declare-fun m!4122961 () Bool)

(assert (=> d!1065561 m!4122961))

(declare-fun m!4122963 () Bool)

(assert (=> d!1065561 m!4122963))

(declare-fun m!4122965 () Bool)

(assert (=> d!1065561 m!4122965))

(assert (=> d!1065561 m!4122689))

(declare-fun m!4122967 () Bool)

(assert (=> bm!262094 m!4122967))

(declare-fun m!4122969 () Bool)

(assert (=> b!3622940 m!4122969))

(assert (=> b!3622942 m!4122947))

(assert (=> b!3622942 m!4122951))

(assert (=> b!3622942 m!4122951))

(assert (=> b!3622942 m!4122953))

(assert (=> b!3622942 m!4122953))

(declare-fun m!4122971 () Bool)

(assert (=> b!3622942 m!4122971))

(assert (=> b!3622937 m!4122947))

(assert (=> b!3622937 m!4122951))

(assert (=> b!3622937 m!4122951))

(assert (=> b!3622937 m!4122953))

(declare-fun m!4122973 () Bool)

(assert (=> b!3622936 m!4122973))

(assert (=> b!3622938 m!4122947))

(declare-fun m!4122975 () Bool)

(assert (=> b!3622938 m!4122975))

(assert (=> b!3622938 m!4122641))

(assert (=> b!3622379 d!1065561))

(declare-fun d!1065563 () Bool)

(assert (=> d!1065563 (= (list!14088 (charsOf!3698 token!511)) (list!14091 (c!626793 (charsOf!3698 token!511))))))

(declare-fun bs!571241 () Bool)

(assert (= bs!571241 d!1065563))

(declare-fun m!4122977 () Bool)

(assert (=> bs!571241 m!4122977))

(assert (=> b!3622379 d!1065563))

(declare-fun d!1065565 () Bool)

(declare-fun lt!1252329 () BalanceConc!22892)

(assert (=> d!1065565 (= (list!14088 lt!1252329) (originalCharacters!6398 token!511))))

(assert (=> d!1065565 (= lt!1252329 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))

(assert (=> d!1065565 (= (charsOf!3698 token!511) lt!1252329)))

(declare-fun b_lambda!107153 () Bool)

(assert (=> (not b_lambda!107153) (not d!1065565)))

(assert (=> d!1065565 t!294304))

(declare-fun b_and!265087 () Bool)

(assert (= b_and!265027 (and (=> t!294304 result!253182) b_and!265087)))

(assert (=> d!1065565 t!294306))

(declare-fun b_and!265089 () Bool)

(assert (= b_and!265029 (and (=> t!294306 result!253184) b_and!265089)))

(assert (=> d!1065565 t!294308))

(declare-fun b_and!265091 () Bool)

(assert (= b_and!265031 (and (=> t!294308 result!253186) b_and!265091)))

(assert (=> d!1065565 t!294310))

(declare-fun b_and!265093 () Bool)

(assert (= b_and!265033 (and (=> t!294310 result!253188) b_and!265093)))

(declare-fun m!4122979 () Bool)

(assert (=> d!1065565 m!4122979))

(assert (=> d!1065565 m!4122617))

(assert (=> b!3622379 d!1065565))

(declare-fun b!3622972 () Bool)

(declare-fun e!2242597 () Bool)

(declare-fun e!2242595 () Bool)

(assert (=> b!3622972 (= e!2242597 e!2242595)))

(declare-fun c!626897 () Bool)

(assert (=> b!3622972 (= c!626897 ((_ is EmptyLang!10443) (regex!5684 rule!403)))))

(declare-fun b!3622974 () Bool)

(declare-fun e!2242600 () Bool)

(declare-fun e!2242596 () Bool)

(assert (=> b!3622974 (= e!2242600 e!2242596)))

(declare-fun res!1466412 () Bool)

(assert (=> b!3622974 (=> res!1466412 e!2242596)))

(declare-fun call!262102 () Bool)

(assert (=> b!3622974 (= res!1466412 call!262102)))

(declare-fun b!3622975 () Bool)

(declare-fun e!2242601 () Bool)

(declare-fun nullable!3613 (Regex!10443) Bool)

(assert (=> b!3622975 (= e!2242601 (nullable!3613 (regex!5684 rule!403)))))

(declare-fun b!3622976 () Bool)

(assert (=> b!3622976 (= e!2242596 (not (= (head!7656 lt!1252088) (c!626792 (regex!5684 rule!403)))))))

(declare-fun b!3622977 () Bool)

(declare-fun res!1466413 () Bool)

(declare-fun e!2242599 () Bool)

(assert (=> b!3622977 (=> (not res!1466413) (not e!2242599))))

(assert (=> b!3622977 (= res!1466413 (not call!262102))))

(declare-fun b!3622978 () Bool)

(declare-fun lt!1252332 () Bool)

(assert (=> b!3622978 (= e!2242595 (not lt!1252332))))

(declare-fun b!3622979 () Bool)

(declare-fun res!1466411 () Bool)

(assert (=> b!3622979 (=> res!1466411 e!2242596)))

(assert (=> b!3622979 (= res!1466411 (not (isEmpty!22559 (tail!5611 lt!1252088))))))

(declare-fun b!3622980 () Bool)

(assert (=> b!3622980 (= e!2242597 (= lt!1252332 call!262102))))

(declare-fun b!3622981 () Bool)

(declare-fun res!1466409 () Bool)

(declare-fun e!2242598 () Bool)

(assert (=> b!3622981 (=> res!1466409 e!2242598)))

(assert (=> b!3622981 (= res!1466409 (not ((_ is ElementMatch!10443) (regex!5684 rule!403))))))

(assert (=> b!3622981 (= e!2242595 e!2242598)))

(declare-fun b!3622982 () Bool)

(assert (=> b!3622982 (= e!2242599 (= (head!7656 lt!1252088) (c!626792 (regex!5684 rule!403))))))

(declare-fun bm!262097 () Bool)

(assert (=> bm!262097 (= call!262102 (isEmpty!22559 lt!1252088))))

(declare-fun b!3622983 () Bool)

(declare-fun derivativeStep!3162 (Regex!10443 C!21072) Regex!10443)

(assert (=> b!3622983 (= e!2242601 (matchR!5012 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)) (tail!5611 lt!1252088)))))

(declare-fun d!1065567 () Bool)

(assert (=> d!1065567 e!2242597))

(declare-fun c!626898 () Bool)

(assert (=> d!1065567 (= c!626898 ((_ is EmptyExpr!10443) (regex!5684 rule!403)))))

(assert (=> d!1065567 (= lt!1252332 e!2242601)))

(declare-fun c!626896 () Bool)

(assert (=> d!1065567 (= c!626896 (isEmpty!22559 lt!1252088))))

(declare-fun validRegex!4775 (Regex!10443) Bool)

(assert (=> d!1065567 (validRegex!4775 (regex!5684 rule!403))))

(assert (=> d!1065567 (= (matchR!5012 (regex!5684 rule!403) lt!1252088) lt!1252332)))

(declare-fun b!3622973 () Bool)

(declare-fun res!1466415 () Bool)

(assert (=> b!3622973 (=> res!1466415 e!2242598)))

(assert (=> b!3622973 (= res!1466415 e!2242599)))

(declare-fun res!1466416 () Bool)

(assert (=> b!3622973 (=> (not res!1466416) (not e!2242599))))

(assert (=> b!3622973 (= res!1466416 lt!1252332)))

(declare-fun b!3622984 () Bool)

(declare-fun res!1466414 () Bool)

(assert (=> b!3622984 (=> (not res!1466414) (not e!2242599))))

(assert (=> b!3622984 (= res!1466414 (isEmpty!22559 (tail!5611 lt!1252088)))))

(declare-fun b!3622985 () Bool)

(assert (=> b!3622985 (= e!2242598 e!2242600)))

(declare-fun res!1466410 () Bool)

(assert (=> b!3622985 (=> (not res!1466410) (not e!2242600))))

(assert (=> b!3622985 (= res!1466410 (not lt!1252332))))

(assert (= (and d!1065567 c!626896) b!3622975))

(assert (= (and d!1065567 (not c!626896)) b!3622983))

(assert (= (and d!1065567 c!626898) b!3622980))

(assert (= (and d!1065567 (not c!626898)) b!3622972))

(assert (= (and b!3622972 c!626897) b!3622978))

(assert (= (and b!3622972 (not c!626897)) b!3622981))

(assert (= (and b!3622981 (not res!1466409)) b!3622973))

(assert (= (and b!3622973 res!1466416) b!3622977))

(assert (= (and b!3622977 res!1466413) b!3622984))

(assert (= (and b!3622984 res!1466414) b!3622982))

(assert (= (and b!3622973 (not res!1466415)) b!3622985))

(assert (= (and b!3622985 res!1466410) b!3622974))

(assert (= (and b!3622974 (not res!1466412)) b!3622979))

(assert (= (and b!3622979 (not res!1466411)) b!3622976))

(assert (= (or b!3622980 b!3622974 b!3622977) bm!262097))

(assert (=> b!3622979 m!4122647))

(assert (=> b!3622979 m!4122647))

(declare-fun m!4122981 () Bool)

(assert (=> b!3622979 m!4122981))

(assert (=> b!3622984 m!4122647))

(assert (=> b!3622984 m!4122647))

(assert (=> b!3622984 m!4122981))

(declare-fun m!4122983 () Bool)

(assert (=> bm!262097 m!4122983))

(declare-fun m!4122985 () Bool)

(assert (=> b!3622975 m!4122985))

(assert (=> b!3622982 m!4122643))

(assert (=> d!1065567 m!4122983))

(declare-fun m!4122987 () Bool)

(assert (=> d!1065567 m!4122987))

(assert (=> b!3622976 m!4122643))

(assert (=> b!3622983 m!4122643))

(assert (=> b!3622983 m!4122643))

(declare-fun m!4122989 () Bool)

(assert (=> b!3622983 m!4122989))

(assert (=> b!3622983 m!4122647))

(assert (=> b!3622983 m!4122989))

(assert (=> b!3622983 m!4122647))

(declare-fun m!4122991 () Bool)

(assert (=> b!3622983 m!4122991))

(assert (=> b!3622384 d!1065567))

(declare-fun d!1065569 () Bool)

(declare-fun res!1466421 () Bool)

(declare-fun e!2242604 () Bool)

(assert (=> d!1065569 (=> (not res!1466421) (not e!2242604))))

(assert (=> d!1065569 (= res!1466421 (validRegex!4775 (regex!5684 rule!403)))))

(assert (=> d!1065569 (= (ruleValid!1949 thiss!23823 rule!403) e!2242604)))

(declare-fun b!3622990 () Bool)

(declare-fun res!1466422 () Bool)

(assert (=> b!3622990 (=> (not res!1466422) (not e!2242604))))

(assert (=> b!3622990 (= res!1466422 (not (nullable!3613 (regex!5684 rule!403))))))

(declare-fun b!3622991 () Bool)

(assert (=> b!3622991 (= e!2242604 (not (= (tag!6404 rule!403) (String!42905 ""))))))

(assert (= (and d!1065569 res!1466421) b!3622990))

(assert (= (and b!3622990 res!1466422) b!3622991))

(assert (=> d!1065569 m!4122987))

(assert (=> b!3622990 m!4122985))

(assert (=> b!3622384 d!1065569))

(declare-fun d!1065571 () Bool)

(assert (=> d!1065571 (ruleValid!1949 thiss!23823 rule!403)))

(declare-fun lt!1252335 () Unit!54914)

(declare-fun choose!21258 (LexerInterface!5273 Rule!11168 List!38291) Unit!54914)

(assert (=> d!1065571 (= lt!1252335 (choose!21258 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1065571 (contains!7432 rules!3307 rule!403)))

(assert (=> d!1065571 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1104 thiss!23823 rule!403 rules!3307) lt!1252335)))

(declare-fun bs!571242 () Bool)

(assert (= bs!571242 d!1065571))

(assert (=> bs!571242 m!4122293))

(declare-fun m!4122993 () Bool)

(assert (=> bs!571242 m!4122993))

(assert (=> bs!571242 m!4122219))

(assert (=> b!3622384 d!1065571))

(declare-fun d!1065573 () Bool)

(assert (=> d!1065573 (= (get!12450 lt!1252070) (v!37767 lt!1252070))))

(assert (=> b!3622373 d!1065573))

(declare-fun b!3622992 () Bool)

(declare-fun e!2242607 () Bool)

(declare-fun e!2242605 () Bool)

(assert (=> b!3622992 (= e!2242607 e!2242605)))

(declare-fun c!626900 () Bool)

(assert (=> b!3622992 (= c!626900 ((_ is EmptyLang!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3622994 () Bool)

(declare-fun e!2242610 () Bool)

(declare-fun e!2242606 () Bool)

(assert (=> b!3622994 (= e!2242610 e!2242606)))

(declare-fun res!1466426 () Bool)

(assert (=> b!3622994 (=> res!1466426 e!2242606)))

(declare-fun call!262103 () Bool)

(assert (=> b!3622994 (= res!1466426 call!262103)))

(declare-fun b!3622995 () Bool)

(declare-fun e!2242611 () Bool)

(assert (=> b!3622995 (= e!2242611 (nullable!3613 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3622996 () Bool)

(assert (=> b!3622996 (= e!2242606 (not (= (head!7656 lt!1252086) (c!626792 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))))

(declare-fun b!3622997 () Bool)

(declare-fun res!1466427 () Bool)

(declare-fun e!2242609 () Bool)

(assert (=> b!3622997 (=> (not res!1466427) (not e!2242609))))

(assert (=> b!3622997 (= res!1466427 (not call!262103))))

(declare-fun b!3622998 () Bool)

(declare-fun lt!1252336 () Bool)

(assert (=> b!3622998 (= e!2242605 (not lt!1252336))))

(declare-fun b!3622999 () Bool)

(declare-fun res!1466425 () Bool)

(assert (=> b!3622999 (=> res!1466425 e!2242606)))

(assert (=> b!3622999 (= res!1466425 (not (isEmpty!22559 (tail!5611 lt!1252086))))))

(declare-fun b!3623000 () Bool)

(assert (=> b!3623000 (= e!2242607 (= lt!1252336 call!262103))))

(declare-fun b!3623001 () Bool)

(declare-fun res!1466423 () Bool)

(declare-fun e!2242608 () Bool)

(assert (=> b!3623001 (=> res!1466423 e!2242608)))

(assert (=> b!3623001 (= res!1466423 (not ((_ is ElementMatch!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> b!3623001 (= e!2242605 e!2242608)))

(declare-fun b!3623002 () Bool)

(assert (=> b!3623002 (= e!2242609 (= (head!7656 lt!1252086) (c!626792 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))

(declare-fun bm!262098 () Bool)

(assert (=> bm!262098 (= call!262103 (isEmpty!22559 lt!1252086))))

(declare-fun b!3623003 () Bool)

(assert (=> b!3623003 (= e!2242611 (matchR!5012 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)) (tail!5611 lt!1252086)))))

(declare-fun d!1065575 () Bool)

(assert (=> d!1065575 e!2242607))

(declare-fun c!626901 () Bool)

(assert (=> d!1065575 (= c!626901 ((_ is EmptyExpr!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(assert (=> d!1065575 (= lt!1252336 e!2242611)))

(declare-fun c!626899 () Bool)

(assert (=> d!1065575 (= c!626899 (isEmpty!22559 lt!1252086))))

(assert (=> d!1065575 (validRegex!4775 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))

(assert (=> d!1065575 (= (matchR!5012 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) lt!1252086) lt!1252336)))

(declare-fun b!3622993 () Bool)

(declare-fun res!1466429 () Bool)

(assert (=> b!3622993 (=> res!1466429 e!2242608)))

(assert (=> b!3622993 (= res!1466429 e!2242609)))

(declare-fun res!1466430 () Bool)

(assert (=> b!3622993 (=> (not res!1466430) (not e!2242609))))

(assert (=> b!3622993 (= res!1466430 lt!1252336)))

(declare-fun b!3623004 () Bool)

(declare-fun res!1466428 () Bool)

(assert (=> b!3623004 (=> (not res!1466428) (not e!2242609))))

(assert (=> b!3623004 (= res!1466428 (isEmpty!22559 (tail!5611 lt!1252086)))))

(declare-fun b!3623005 () Bool)

(assert (=> b!3623005 (= e!2242608 e!2242610)))

(declare-fun res!1466424 () Bool)

(assert (=> b!3623005 (=> (not res!1466424) (not e!2242610))))

(assert (=> b!3623005 (= res!1466424 (not lt!1252336))))

(assert (= (and d!1065575 c!626899) b!3622995))

(assert (= (and d!1065575 (not c!626899)) b!3623003))

(assert (= (and d!1065575 c!626901) b!3623000))

(assert (= (and d!1065575 (not c!626901)) b!3622992))

(assert (= (and b!3622992 c!626900) b!3622998))

(assert (= (and b!3622992 (not c!626900)) b!3623001))

(assert (= (and b!3623001 (not res!1466423)) b!3622993))

(assert (= (and b!3622993 res!1466430) b!3622997))

(assert (= (and b!3622997 res!1466427) b!3623004))

(assert (= (and b!3623004 res!1466428) b!3623002))

(assert (= (and b!3622993 (not res!1466429)) b!3623005))

(assert (= (and b!3623005 res!1466424) b!3622994))

(assert (= (and b!3622994 (not res!1466426)) b!3622999))

(assert (= (and b!3622999 (not res!1466425)) b!3622996))

(assert (= (or b!3623000 b!3622994 b!3622997) bm!262098))

(assert (=> b!3622999 m!4122663))

(assert (=> b!3622999 m!4122663))

(declare-fun m!4122995 () Bool)

(assert (=> b!3622999 m!4122995))

(assert (=> b!3623004 m!4122663))

(assert (=> b!3623004 m!4122663))

(assert (=> b!3623004 m!4122995))

(declare-fun m!4122997 () Bool)

(assert (=> bm!262098 m!4122997))

(declare-fun m!4122999 () Bool)

(assert (=> b!3622995 m!4122999))

(assert (=> b!3623002 m!4122659))

(assert (=> d!1065575 m!4122997))

(declare-fun m!4123001 () Bool)

(assert (=> d!1065575 m!4123001))

(assert (=> b!3622996 m!4122659))

(assert (=> b!3623003 m!4122659))

(assert (=> b!3623003 m!4122659))

(declare-fun m!4123003 () Bool)

(assert (=> b!3623003 m!4123003))

(assert (=> b!3623003 m!4122663))

(assert (=> b!3623003 m!4123003))

(assert (=> b!3623003 m!4122663))

(declare-fun m!4123005 () Bool)

(assert (=> b!3623003 m!4123005))

(assert (=> b!3622394 d!1065575))

(declare-fun b!3623006 () Bool)

(declare-fun e!2242614 () Bool)

(declare-fun e!2242612 () Bool)

(assert (=> b!3623006 (= e!2242614 e!2242612)))

(declare-fun c!626903 () Bool)

(assert (=> b!3623006 (= c!626903 ((_ is EmptyLang!10443) (regex!5684 lt!1252074)))))

(declare-fun b!3623008 () Bool)

(declare-fun e!2242617 () Bool)

(declare-fun e!2242613 () Bool)

(assert (=> b!3623008 (= e!2242617 e!2242613)))

(declare-fun res!1466434 () Bool)

(assert (=> b!3623008 (=> res!1466434 e!2242613)))

(declare-fun call!262104 () Bool)

(assert (=> b!3623008 (= res!1466434 call!262104)))

(declare-fun b!3623009 () Bool)

(declare-fun e!2242618 () Bool)

(assert (=> b!3623009 (= e!2242618 (nullable!3613 (regex!5684 lt!1252074)))))

(declare-fun b!3623010 () Bool)

(assert (=> b!3623010 (= e!2242613 (not (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (c!626792 (regex!5684 lt!1252074)))))))

(declare-fun b!3623011 () Bool)

(declare-fun res!1466435 () Bool)

(declare-fun e!2242616 () Bool)

(assert (=> b!3623011 (=> (not res!1466435) (not e!2242616))))

(assert (=> b!3623011 (= res!1466435 (not call!262104))))

(declare-fun b!3623012 () Bool)

(declare-fun lt!1252337 () Bool)

(assert (=> b!3623012 (= e!2242612 (not lt!1252337))))

(declare-fun b!3623013 () Bool)

(declare-fun res!1466433 () Bool)

(assert (=> b!3623013 (=> res!1466433 e!2242613)))

(assert (=> b!3623013 (= res!1466433 (not (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3623014 () Bool)

(assert (=> b!3623014 (= e!2242614 (= lt!1252337 call!262104))))

(declare-fun b!3623015 () Bool)

(declare-fun res!1466431 () Bool)

(declare-fun e!2242615 () Bool)

(assert (=> b!3623015 (=> res!1466431 e!2242615)))

(assert (=> b!3623015 (= res!1466431 (not ((_ is ElementMatch!10443) (regex!5684 lt!1252074))))))

(assert (=> b!3623015 (= e!2242612 e!2242615)))

(declare-fun b!3623016 () Bool)

(assert (=> b!3623016 (= e!2242616 (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (c!626792 (regex!5684 lt!1252074))))))

(declare-fun bm!262099 () Bool)

(assert (=> bm!262099 (= call!262104 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun b!3623017 () Bool)

(assert (=> b!3623017 (= e!2242618 (matchR!5012 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun d!1065577 () Bool)

(assert (=> d!1065577 e!2242614))

(declare-fun c!626904 () Bool)

(assert (=> d!1065577 (= c!626904 ((_ is EmptyExpr!10443) (regex!5684 lt!1252074)))))

(assert (=> d!1065577 (= lt!1252337 e!2242618)))

(declare-fun c!626902 () Bool)

(assert (=> d!1065577 (= c!626902 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> d!1065577 (validRegex!4775 (regex!5684 lt!1252074))))

(assert (=> d!1065577 (= (matchR!5012 (regex!5684 lt!1252074) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) lt!1252337)))

(declare-fun b!3623007 () Bool)

(declare-fun res!1466437 () Bool)

(assert (=> b!3623007 (=> res!1466437 e!2242615)))

(assert (=> b!3623007 (= res!1466437 e!2242616)))

(declare-fun res!1466438 () Bool)

(assert (=> b!3623007 (=> (not res!1466438) (not e!2242616))))

(assert (=> b!3623007 (= res!1466438 lt!1252337)))

(declare-fun b!3623018 () Bool)

(declare-fun res!1466436 () Bool)

(assert (=> b!3623018 (=> (not res!1466436) (not e!2242616))))

(assert (=> b!3623018 (= res!1466436 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun b!3623019 () Bool)

(assert (=> b!3623019 (= e!2242615 e!2242617)))

(declare-fun res!1466432 () Bool)

(assert (=> b!3623019 (=> (not res!1466432) (not e!2242617))))

(assert (=> b!3623019 (= res!1466432 (not lt!1252337))))

(assert (= (and d!1065577 c!626902) b!3623009))

(assert (= (and d!1065577 (not c!626902)) b!3623017))

(assert (= (and d!1065577 c!626904) b!3623014))

(assert (= (and d!1065577 (not c!626904)) b!3623006))

(assert (= (and b!3623006 c!626903) b!3623012))

(assert (= (and b!3623006 (not c!626903)) b!3623015))

(assert (= (and b!3623015 (not res!1466431)) b!3623007))

(assert (= (and b!3623007 res!1466438) b!3623011))

(assert (= (and b!3623011 res!1466435) b!3623018))

(assert (= (and b!3623018 res!1466436) b!3623016))

(assert (= (and b!3623007 (not res!1466437)) b!3623019))

(assert (= (and b!3623019 res!1466432) b!3623008))

(assert (= (and b!3623008 (not res!1466434)) b!3623013))

(assert (= (and b!3623013 (not res!1466433)) b!3623010))

(assert (= (or b!3623014 b!3623008 b!3623011) bm!262099))

(assert (=> b!3623013 m!4122243))

(declare-fun m!4123007 () Bool)

(assert (=> b!3623013 m!4123007))

(assert (=> b!3623013 m!4123007))

(declare-fun m!4123009 () Bool)

(assert (=> b!3623013 m!4123009))

(assert (=> b!3623018 m!4122243))

(assert (=> b!3623018 m!4123007))

(assert (=> b!3623018 m!4123007))

(assert (=> b!3623018 m!4123009))

(assert (=> bm!262099 m!4122243))

(declare-fun m!4123011 () Bool)

(assert (=> bm!262099 m!4123011))

(declare-fun m!4123013 () Bool)

(assert (=> b!3623009 m!4123013))

(assert (=> b!3623016 m!4122243))

(declare-fun m!4123015 () Bool)

(assert (=> b!3623016 m!4123015))

(assert (=> d!1065577 m!4122243))

(assert (=> d!1065577 m!4123011))

(declare-fun m!4123017 () Bool)

(assert (=> d!1065577 m!4123017))

(assert (=> b!3623010 m!4122243))

(assert (=> b!3623010 m!4123015))

(assert (=> b!3623017 m!4122243))

(assert (=> b!3623017 m!4123015))

(assert (=> b!3623017 m!4123015))

(declare-fun m!4123019 () Bool)

(assert (=> b!3623017 m!4123019))

(assert (=> b!3623017 m!4122243))

(assert (=> b!3623017 m!4123007))

(assert (=> b!3623017 m!4123019))

(assert (=> b!3623017 m!4123007))

(declare-fun m!4123021 () Bool)

(assert (=> b!3623017 m!4123021))

(assert (=> b!3622383 d!1065577))

(declare-fun d!1065579 () Bool)

(assert (=> d!1065579 (= (list!14088 (charsOf!3698 (_1!22152 lt!1252077))) (list!14091 (c!626793 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun bs!571243 () Bool)

(assert (= bs!571243 d!1065579))

(declare-fun m!4123023 () Bool)

(assert (=> bs!571243 m!4123023))

(assert (=> b!3622383 d!1065579))

(assert (=> b!3622383 d!1065495))

(declare-fun d!1065581 () Bool)

(assert (=> d!1065581 (= (get!12451 lt!1252085) (v!37768 lt!1252085))))

(assert (=> b!3622383 d!1065581))

(declare-fun d!1065583 () Bool)

(assert (=> d!1065583 (= (isEmpty!22559 suffix!1395) ((_ is Nil!38166) suffix!1395))))

(assert (=> b!3622393 d!1065583))

(declare-fun d!1065585 () Bool)

(declare-fun lt!1252338 () Bool)

(assert (=> d!1065585 (= lt!1252338 (select (content!5465 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2242620 () Bool)

(assert (=> d!1065585 (= lt!1252338 e!2242620)))

(declare-fun res!1466439 () Bool)

(assert (=> d!1065585 (=> (not res!1466439) (not e!2242620))))

(assert (=> d!1065585 (= res!1466439 ((_ is Cons!38167) rules!3307))))

(assert (=> d!1065585 (= (contains!7432 rules!3307 anOtherTypeRule!33) lt!1252338)))

(declare-fun b!3623020 () Bool)

(declare-fun e!2242619 () Bool)

(assert (=> b!3623020 (= e!2242620 e!2242619)))

(declare-fun res!1466440 () Bool)

(assert (=> b!3623020 (=> res!1466440 e!2242619)))

(assert (=> b!3623020 (= res!1466440 (= (h!43587 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3623021 () Bool)

(assert (=> b!3623021 (= e!2242619 (contains!7432 (t!294262 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1065585 res!1466439) b!3623020))

(assert (= (and b!3623020 (not res!1466440)) b!3623021))

(assert (=> d!1065585 m!4122927))

(declare-fun m!4123025 () Bool)

(assert (=> d!1065585 m!4123025))

(declare-fun m!4123027 () Bool)

(assert (=> b!3623021 m!4123027))

(assert (=> b!3622382 d!1065585))

(declare-fun b!3623033 () Bool)

(declare-fun e!2242623 () Bool)

(declare-fun tp!1106521 () Bool)

(declare-fun tp!1106517 () Bool)

(assert (=> b!3623033 (= e!2242623 (and tp!1106521 tp!1106517))))

(declare-fun b!3623032 () Bool)

(assert (=> b!3623032 (= e!2242623 tp_is_empty!17969)))

(declare-fun b!3623034 () Bool)

(declare-fun tp!1106519 () Bool)

(assert (=> b!3623034 (= e!2242623 tp!1106519)))

(assert (=> b!3622376 (= tp!1106449 e!2242623)))

(declare-fun b!3623035 () Bool)

(declare-fun tp!1106518 () Bool)

(declare-fun tp!1106520 () Bool)

(assert (=> b!3623035 (= e!2242623 (and tp!1106518 tp!1106520))))

(assert (= (and b!3622376 ((_ is ElementMatch!10443) (regex!5684 anOtherTypeRule!33))) b!3623032))

(assert (= (and b!3622376 ((_ is Concat!16358) (regex!5684 anOtherTypeRule!33))) b!3623033))

(assert (= (and b!3622376 ((_ is Star!10443) (regex!5684 anOtherTypeRule!33))) b!3623034))

(assert (= (and b!3622376 ((_ is Union!10443) (regex!5684 anOtherTypeRule!33))) b!3623035))

(declare-fun b!3623046 () Bool)

(declare-fun b_free!94549 () Bool)

(declare-fun b_next!95253 () Bool)

(assert (=> b!3623046 (= b_free!94549 (not b_next!95253))))

(declare-fun tb!207827 () Bool)

(declare-fun t!294356 () Bool)

(assert (=> (and b!3623046 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294356) tb!207827))

(declare-fun result!253242 () Bool)

(assert (= result!253242 result!253144))

(assert (=> d!1065417 t!294356))

(assert (=> d!1065421 t!294356))

(declare-fun tb!207829 () Bool)

(declare-fun t!294358 () Bool)

(assert (=> (and b!3623046 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294358) tb!207829))

(declare-fun result!253244 () Bool)

(assert (= result!253244 result!253164))

(assert (=> d!1065421 t!294358))

(assert (=> d!1065451 t!294356))

(declare-fun tp!1106532 () Bool)

(declare-fun b_and!265095 () Bool)

(assert (=> b!3623046 (= tp!1106532 (and (=> t!294356 result!253242) (=> t!294358 result!253244) b_and!265095))))

(declare-fun b_free!94551 () Bool)

(declare-fun b_next!95255 () Bool)

(assert (=> b!3623046 (= b_free!94551 (not b_next!95255))))

(declare-fun t!294360 () Bool)

(declare-fun tb!207831 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294360) tb!207831))

(declare-fun result!253246 () Bool)

(assert (= result!253246 result!253172))

(assert (=> d!1065451 t!294360))

(declare-fun tb!207833 () Bool)

(declare-fun t!294362 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294362) tb!207833))

(declare-fun result!253248 () Bool)

(assert (= result!253248 result!253182))

(assert (=> b!3622686 t!294362))

(declare-fun tb!207835 () Bool)

(declare-fun t!294364 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294364) tb!207835))

(declare-fun result!253250 () Bool)

(assert (= result!253250 result!253190))

(assert (=> d!1065495 t!294364))

(assert (=> d!1065565 t!294362))

(declare-fun b_and!265097 () Bool)

(declare-fun tp!1106533 () Bool)

(assert (=> b!3623046 (= tp!1106533 (and (=> t!294360 result!253246) (=> t!294362 result!253248) (=> t!294364 result!253250) b_and!265097))))

(declare-fun e!2242634 () Bool)

(assert (=> b!3623046 (= e!2242634 (and tp!1106532 tp!1106533))))

(declare-fun e!2242632 () Bool)

(declare-fun b!3623045 () Bool)

(declare-fun tp!1106530 () Bool)

(assert (=> b!3623045 (= e!2242632 (and tp!1106530 (inv!51560 (tag!6404 (h!43587 (t!294262 rules!3307)))) (inv!51563 (transformation!5684 (h!43587 (t!294262 rules!3307)))) e!2242634))))

(declare-fun b!3623044 () Bool)

(declare-fun e!2242635 () Bool)

(declare-fun tp!1106531 () Bool)

(assert (=> b!3623044 (= e!2242635 (and e!2242632 tp!1106531))))

(assert (=> b!3622391 (= tp!1106445 e!2242635)))

(assert (= b!3623045 b!3623046))

(assert (= b!3623044 b!3623045))

(assert (= (and b!3622391 ((_ is Cons!38167) (t!294262 rules!3307))) b!3623044))

(declare-fun m!4123029 () Bool)

(assert (=> b!3623045 m!4123029))

(declare-fun m!4123031 () Bool)

(assert (=> b!3623045 m!4123031))

(declare-fun b!3623048 () Bool)

(declare-fun e!2242636 () Bool)

(declare-fun tp!1106538 () Bool)

(declare-fun tp!1106534 () Bool)

(assert (=> b!3623048 (= e!2242636 (and tp!1106538 tp!1106534))))

(declare-fun b!3623047 () Bool)

(assert (=> b!3623047 (= e!2242636 tp_is_empty!17969)))

(declare-fun b!3623049 () Bool)

(declare-fun tp!1106536 () Bool)

(assert (=> b!3623049 (= e!2242636 tp!1106536)))

(assert (=> b!3622380 (= tp!1106441 e!2242636)))

(declare-fun b!3623050 () Bool)

(declare-fun tp!1106535 () Bool)

(declare-fun tp!1106537 () Bool)

(assert (=> b!3623050 (= e!2242636 (and tp!1106535 tp!1106537))))

(assert (= (and b!3622380 ((_ is ElementMatch!10443) (regex!5684 (h!43587 rules!3307)))) b!3623047))

(assert (= (and b!3622380 ((_ is Concat!16358) (regex!5684 (h!43587 rules!3307)))) b!3623048))

(assert (= (and b!3622380 ((_ is Star!10443) (regex!5684 (h!43587 rules!3307)))) b!3623049))

(assert (= (and b!3622380 ((_ is Union!10443) (regex!5684 (h!43587 rules!3307)))) b!3623050))

(declare-fun b!3623052 () Bool)

(declare-fun e!2242637 () Bool)

(declare-fun tp!1106543 () Bool)

(declare-fun tp!1106539 () Bool)

(assert (=> b!3623052 (= e!2242637 (and tp!1106543 tp!1106539))))

(declare-fun b!3623051 () Bool)

(assert (=> b!3623051 (= e!2242637 tp_is_empty!17969)))

(declare-fun b!3623053 () Bool)

(declare-fun tp!1106541 () Bool)

(assert (=> b!3623053 (= e!2242637 tp!1106541)))

(assert (=> b!3622400 (= tp!1106437 e!2242637)))

(declare-fun b!3623054 () Bool)

(declare-fun tp!1106540 () Bool)

(declare-fun tp!1106542 () Bool)

(assert (=> b!3623054 (= e!2242637 (and tp!1106540 tp!1106542))))

(assert (= (and b!3622400 ((_ is ElementMatch!10443) (regex!5684 (rule!8446 token!511)))) b!3623051))

(assert (= (and b!3622400 ((_ is Concat!16358) (regex!5684 (rule!8446 token!511)))) b!3623052))

(assert (= (and b!3622400 ((_ is Star!10443) (regex!5684 (rule!8446 token!511)))) b!3623053))

(assert (= (and b!3622400 ((_ is Union!10443) (regex!5684 (rule!8446 token!511)))) b!3623054))

(declare-fun b!3623059 () Bool)

(declare-fun e!2242640 () Bool)

(declare-fun tp!1106546 () Bool)

(assert (=> b!3623059 (= e!2242640 (and tp_is_empty!17969 tp!1106546))))

(assert (=> b!3622389 (= tp!1106439 e!2242640)))

(assert (= (and b!3622389 ((_ is Cons!38166) (t!294261 suffix!1395))) b!3623059))

(declare-fun b!3623061 () Bool)

(declare-fun e!2242641 () Bool)

(declare-fun tp!1106551 () Bool)

(declare-fun tp!1106547 () Bool)

(assert (=> b!3623061 (= e!2242641 (and tp!1106551 tp!1106547))))

(declare-fun b!3623060 () Bool)

(assert (=> b!3623060 (= e!2242641 tp_is_empty!17969)))

(declare-fun b!3623062 () Bool)

(declare-fun tp!1106549 () Bool)

(assert (=> b!3623062 (= e!2242641 tp!1106549)))

(assert (=> b!3622378 (= tp!1106438 e!2242641)))

(declare-fun b!3623063 () Bool)

(declare-fun tp!1106548 () Bool)

(declare-fun tp!1106550 () Bool)

(assert (=> b!3623063 (= e!2242641 (and tp!1106548 tp!1106550))))

(assert (= (and b!3622378 ((_ is ElementMatch!10443) (regex!5684 rule!403))) b!3623060))

(assert (= (and b!3622378 ((_ is Concat!16358) (regex!5684 rule!403))) b!3623061))

(assert (= (and b!3622378 ((_ is Star!10443) (regex!5684 rule!403))) b!3623062))

(assert (= (and b!3622378 ((_ is Union!10443) (regex!5684 rule!403))) b!3623063))

(declare-fun b!3623064 () Bool)

(declare-fun e!2242642 () Bool)

(declare-fun tp!1106552 () Bool)

(assert (=> b!3623064 (= e!2242642 (and tp_is_empty!17969 tp!1106552))))

(assert (=> b!3622388 (= tp!1106444 e!2242642)))

(assert (= (and b!3622388 ((_ is Cons!38166) (originalCharacters!6398 token!511))) b!3623064))

(declare-fun b_lambda!107155 () Bool)

(assert (= b_lambda!107153 (or (and b!3623046 b_free!94551 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622397 b_free!94535 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622381 b_free!94539 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622375 b_free!94531 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622399 b_free!94543) b_lambda!107155)))

(declare-fun b_lambda!107157 () Bool)

(assert (= b_lambda!107133 (or (and b!3623046 b_free!94551 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622397 b_free!94535 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622381 b_free!94539 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622375 b_free!94531 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 token!511))))) (and b!3622399 b_free!94543) b_lambda!107157)))

(check-sat (not b!3622929) (not b!3623035) (not b!3622976) (not d!1065457) (not d!1065481) (not b!3622720) (not b!3622936) (not bm!262098) (not b!3623061) b_and!265097 (not b_lambda!107155) b_and!265093 (not b!3623044) (not b!3622982) (not b!3623004) (not b!3622708) (not b!3623049) (not tb!207785) (not bm!262099) (not b!3622747) (not b_next!95239) (not d!1065473) (not b_next!95237) b_and!265091 (not d!1065559) (not b!3623054) (not d!1065565) (not d!1065485) (not b!3622924) (not d!1065489) (not b!3622975) (not b!3622984) (not b!3623013) (not b!3623021) (not b_lambda!107121) tp_is_empty!17969 (not b!3623003) (not b!3623064) (not b!3623016) (not b!3622902) (not b_lambda!107157) (not tb!207777) (not b!3622816) (not b!3622938) (not d!1065503) (not b!3623009) (not bm!262080) (not d!1065555) b_and!265011 (not d!1065545) (not bm!262083) (not b!3622688) (not b!3622907) (not b!3622774) (not b!3622941) (not b!3622535) (not b!3622990) (not b!3622751) (not b!3623045) (not d!1065585) (not bm!262097) (not b!3622703) (not b!3622724) (not d!1065575) (not d!1065569) (not d!1065505) (not b!3623050) (not b!3622764) (not b!3622939) (not b_next!95243) (not b!3622709) (not d!1065475) (not b!3622745) (not d!1065469) (not b!3623017) (not b!3623063) (not d!1065493) (not bm!262094) (not b!3622813) (not b!3622979) (not b!3622999) (not d!1065561) (not b!3622759) (not b!3622901) (not b!3622940) (not b!3622725) b_and!265095 (not b_lambda!107135) (not d!1065479) (not tb!207745) (not d!1065421) (not b!3622750) (not bm!262079) b_and!265013 (not d!1065453) (not b!3622655) (not b!3622723) (not b!3622815) (not b!3622937) (not b!3623062) (not b!3622775) (not b!3622701) (not b!3623034) (not bm!262093) b_and!265015 (not b_next!95245) (not b!3622681) (not d!1065557) (not b!3622762) (not b_next!95253) (not b!3623059) (not b!3622686) (not b!3622746) (not b!3623002) (not d!1065455) (not b!3622934) (not b!3622721) (not b!3622906) (not d!1065495) (not b_next!95255) (not b_lambda!107125) (not b_lambda!107127) (not b!3622719) (not bm!262092) (not b_lambda!107129) (not b!3622749) (not b!3622748) (not d!1065451) (not b!3623048) (not d!1065579) (not b!3623010) (not b!3622910) (not b!3622930) (not b!3623018) (not b!3622942) (not b_next!95241) (not b!3622702) (not d!1065413) (not d!1065461) (not d!1065563) (not b!3622996) (not d!1065549) (not b_next!95247) (not b!3622983) (not bm!262090) (not b!3622903) (not b_next!95235) (not d!1065543) (not d!1065521) (not b!3622752) (not bm!262077) (not d!1065499) b_and!265089 (not tb!207769) b_and!265087 (not d!1065577) (not d!1065567) (not b!3623033) (not b!3622687) (not b!3622763) (not tb!207761) (not b!3622995) (not b_next!95233) (not b!3622680) (not b!3622943) (not b!3622649) (not b!3622931) (not d!1065571) (not b!3623052) b_and!265017 (not b_lambda!107131) (not b!3623053))
(check-sat b_and!265091 b_and!265011 (not b_next!95243) b_and!265095 b_and!265013 (not b_next!95253) (not b_next!95255) (not b_next!95241) (not b_next!95247) (not b_next!95235) (not b_next!95233) b_and!265017 b_and!265097 b_and!265093 (not b_next!95239) (not b_next!95237) b_and!265015 (not b_next!95245) b_and!265089 b_and!265087)
(get-model)

(declare-fun d!1065937 () Bool)

(declare-fun charsToInt!0 (List!38289) (_ BitVec 32))

(assert (=> d!1065937 (= (inv!16 (value!182454 token!511)) (= (charsToInt!0 (text!41845 (value!182454 token!511))) (value!182445 (value!182454 token!511))))))

(declare-fun bs!571315 () Bool)

(assert (= bs!571315 d!1065937))

(declare-fun m!4123915 () Bool)

(assert (=> bs!571315 m!4123915))

(assert (=> b!3622701 d!1065937))

(declare-fun d!1065939 () Bool)

(assert (=> d!1065939 (= (get!12450 lt!1252326) (v!37767 lt!1252326))))

(assert (=> b!3622943 d!1065939))

(declare-fun d!1065941 () Bool)

(assert (=> d!1065941 (= (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326))))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun b_lambda!107197 () Bool)

(assert (=> (not b_lambda!107197) (not d!1065941)))

(declare-fun t!294440 () Bool)

(declare-fun tb!207907 () Bool)

(assert (=> (and b!3622381 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294440) tb!207907))

(declare-fun result!253326 () Bool)

(assert (=> tb!207907 (= result!253326 (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326)))))))))

(declare-fun m!4123917 () Bool)

(assert (=> tb!207907 m!4123917))

(assert (=> d!1065941 t!294440))

(declare-fun b_and!265201 () Bool)

(assert (= b_and!265015 (and (=> t!294440 result!253326) b_and!265201)))

(declare-fun tb!207909 () Bool)

(declare-fun t!294442 () Bool)

(assert (=> (and b!3622399 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294442) tb!207909))

(declare-fun result!253328 () Bool)

(assert (= result!253328 result!253326))

(assert (=> d!1065941 t!294442))

(declare-fun b_and!265203 () Bool)

(assert (= b_and!265017 (and (=> t!294442 result!253328) b_and!265203)))

(declare-fun tb!207911 () Bool)

(declare-fun t!294444 () Bool)

(assert (=> (and b!3623046 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294444) tb!207911))

(declare-fun result!253330 () Bool)

(assert (= result!253330 result!253326))

(assert (=> d!1065941 t!294444))

(declare-fun b_and!265205 () Bool)

(assert (= b_and!265095 (and (=> t!294444 result!253330) b_and!265205)))

(declare-fun tb!207913 () Bool)

(declare-fun t!294446 () Bool)

(assert (=> (and b!3622397 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294446) tb!207913))

(declare-fun result!253332 () Bool)

(assert (= result!253332 result!253326))

(assert (=> d!1065941 t!294446))

(declare-fun b_and!265207 () Bool)

(assert (= b_and!265013 (and (=> t!294446 result!253332) b_and!265207)))

(declare-fun t!294448 () Bool)

(declare-fun tb!207915 () Bool)

(assert (=> (and b!3622375 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294448) tb!207915))

(declare-fun result!253334 () Bool)

(assert (= result!253334 result!253326))

(assert (=> d!1065941 t!294448))

(declare-fun b_and!265209 () Bool)

(assert (= b_and!265011 (and (=> t!294448 result!253334) b_and!265209)))

(assert (=> d!1065941 m!4122957))

(declare-fun m!4123919 () Bool)

(assert (=> d!1065941 m!4123919))

(assert (=> b!3622943 d!1065941))

(declare-fun d!1065943 () Bool)

(assert (=> d!1065943 (= (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326)))) (fromListB!1949 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326)))))))

(declare-fun bs!571316 () Bool)

(assert (= bs!571316 d!1065943))

(declare-fun m!4123921 () Bool)

(assert (=> bs!571316 m!4123921))

(assert (=> b!3622943 d!1065943))

(declare-fun d!1065945 () Bool)

(declare-fun res!1466706 () Bool)

(declare-fun e!2243009 () Bool)

(assert (=> d!1065945 (=> res!1466706 e!2243009)))

(assert (=> d!1065945 (= res!1466706 ((_ is Nil!38167) rules!3307))))

(assert (=> d!1065945 (= (noDuplicateTag!2164 thiss!23823 rules!3307 Nil!38171) e!2243009)))

(declare-fun b!3623742 () Bool)

(declare-fun e!2243010 () Bool)

(assert (=> b!3623742 (= e!2243009 e!2243010)))

(declare-fun res!1466707 () Bool)

(assert (=> b!3623742 (=> (not res!1466707) (not e!2243010))))

(declare-fun contains!7433 (List!38295 String!42904) Bool)

(assert (=> b!3623742 (= res!1466707 (not (contains!7433 Nil!38171 (tag!6404 (h!43587 rules!3307)))))))

(declare-fun b!3623743 () Bool)

(assert (=> b!3623743 (= e!2243010 (noDuplicateTag!2164 thiss!23823 (t!294262 rules!3307) (Cons!38171 (tag!6404 (h!43587 rules!3307)) Nil!38171)))))

(assert (= (and d!1065945 (not res!1466706)) b!3623742))

(assert (= (and b!3623742 res!1466707) b!3623743))

(declare-fun m!4123923 () Bool)

(assert (=> b!3623742 m!4123923))

(declare-fun m!4123925 () Bool)

(assert (=> b!3623743 m!4123925))

(assert (=> b!3622934 d!1065945))

(declare-fun d!1065947 () Bool)

(assert (=> d!1065947 (= (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))) (v!37768 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> b!3622709 d!1065947))

(assert (=> b!3622709 d!1065505))

(declare-fun d!1065949 () Bool)

(assert (=> d!1065949 (= (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) ((_ is Nil!38166) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(assert (=> b!3623013 d!1065949))

(declare-fun d!1065951 () Bool)

(assert (=> d!1065951 (= (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (t!294261 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> b!3623013 d!1065951))

(declare-fun d!1065953 () Bool)

(declare-fun lt!1252477 () Bool)

(assert (=> d!1065953 (= lt!1252477 (select (content!5464 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)))) lt!1252080))))

(declare-fun e!2243012 () Bool)

(assert (=> d!1065953 (= lt!1252477 e!2243012)))

(declare-fun res!1466708 () Bool)

(assert (=> d!1065953 (=> (not res!1466708) (not e!2243012))))

(assert (=> d!1065953 (= res!1466708 ((_ is Cons!38166) (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)))))))

(assert (=> d!1065953 (= (contains!7431 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) lt!1252080) lt!1252477)))

(declare-fun b!3623744 () Bool)

(declare-fun e!2243011 () Bool)

(assert (=> b!3623744 (= e!2243012 e!2243011)))

(declare-fun res!1466709 () Bool)

(assert (=> b!3623744 (=> res!1466709 e!2243011)))

(assert (=> b!3623744 (= res!1466709 (= (h!43586 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)))) lt!1252080))))

(declare-fun b!3623745 () Bool)

(assert (=> b!3623745 (= e!2243011 (contains!7431 (t!294261 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33)))) lt!1252080))))

(assert (= (and d!1065953 res!1466708) b!3623744))

(assert (= (and b!3623744 (not res!1466709)) b!3623745))

(declare-fun m!4123927 () Bool)

(assert (=> d!1065953 m!4123927))

(declare-fun m!4123929 () Bool)

(assert (=> d!1065953 m!4123929))

(declare-fun m!4123931 () Bool)

(assert (=> b!3623745 m!4123931))

(assert (=> b!3622910 d!1065953))

(declare-fun b!3623757 () Bool)

(declare-fun e!2243018 () List!38290)

(assert (=> b!3623757 (= e!2243018 (++!9500 (list!14091 (left!29795 (c!626793 (charsOf!3698 (_1!22152 lt!1252077))))) (list!14091 (right!30125 (c!626793 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3623755 () Bool)

(declare-fun e!2243017 () List!38290)

(assert (=> b!3623755 (= e!2243017 e!2243018)))

(declare-fun c!627059 () Bool)

(assert (=> b!3623755 (= c!627059 ((_ is Leaf!18092) (c!626793 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun b!3623756 () Bool)

(declare-fun list!14094 (IArray!23283) List!38290)

(assert (=> b!3623756 (= e!2243018 (list!14094 (xs!14841 (c!626793 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun d!1065955 () Bool)

(declare-fun c!627058 () Bool)

(assert (=> d!1065955 (= c!627058 ((_ is Empty!11639) (c!626793 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> d!1065955 (= (list!14091 (c!626793 (charsOf!3698 (_1!22152 lt!1252077)))) e!2243017)))

(declare-fun b!3623754 () Bool)

(assert (=> b!3623754 (= e!2243017 Nil!38166)))

(assert (= (and d!1065955 c!627058) b!3623754))

(assert (= (and d!1065955 (not c!627058)) b!3623755))

(assert (= (and b!3623755 c!627059) b!3623756))

(assert (= (and b!3623755 (not c!627059)) b!3623757))

(declare-fun m!4123933 () Bool)

(assert (=> b!3623757 m!4123933))

(declare-fun m!4123935 () Bool)

(assert (=> b!3623757 m!4123935))

(assert (=> b!3623757 m!4123933))

(assert (=> b!3623757 m!4123935))

(declare-fun m!4123937 () Bool)

(assert (=> b!3623757 m!4123937))

(declare-fun m!4123939 () Bool)

(assert (=> b!3623756 m!4123939))

(assert (=> d!1065579 d!1065955))

(declare-fun d!1065957 () Bool)

(assert (=> d!1065957 (= (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) ((_ is Nil!38166) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> bm!262099 d!1065957))

(declare-fun b!3623758 () Bool)

(declare-fun res!1466710 () Bool)

(declare-fun e!2243020 () Bool)

(assert (=> b!3623758 (=> res!1466710 e!2243020)))

(assert (=> b!3623758 (= res!1466710 (not ((_ is IntegerValue!17744) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))))

(declare-fun e!2243019 () Bool)

(assert (=> b!3623758 (= e!2243019 e!2243020)))

(declare-fun b!3623759 () Bool)

(declare-fun e!2243021 () Bool)

(assert (=> b!3623759 (= e!2243021 e!2243019)))

(declare-fun c!627061 () Bool)

(assert (=> b!3623759 (= c!627061 ((_ is IntegerValue!17743) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(declare-fun b!3623760 () Bool)

(assert (=> b!3623760 (= e!2243021 (inv!16 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(declare-fun b!3623762 () Bool)

(assert (=> b!3623762 (= e!2243019 (inv!17 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(declare-fun d!1065959 () Bool)

(declare-fun c!627060 () Bool)

(assert (=> d!1065959 (= c!627060 ((_ is IntegerValue!17742) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(assert (=> d!1065959 (= (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))) e!2243021)))

(declare-fun b!3623761 () Bool)

(assert (=> b!3623761 (= e!2243020 (inv!15 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(assert (= (and d!1065959 c!627060) b!3623760))

(assert (= (and d!1065959 (not c!627060)) b!3623759))

(assert (= (and b!3623759 c!627061) b!3623762))

(assert (= (and b!3623759 (not c!627061)) b!3623758))

(assert (= (and b!3623758 (not res!1466710)) b!3623761))

(declare-fun m!4123941 () Bool)

(assert (=> b!3623760 m!4123941))

(declare-fun m!4123943 () Bool)

(assert (=> b!3623762 m!4123943))

(declare-fun m!4123945 () Bool)

(assert (=> b!3623761 m!4123945))

(assert (=> tb!207761 d!1065959))

(declare-fun d!1065961 () Bool)

(declare-fun isBalanced!3501 (Conc!11639) Bool)

(assert (=> d!1065961 (= (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))) (isBalanced!3501 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))))))

(declare-fun bs!571317 () Bool)

(assert (= bs!571317 d!1065961))

(declare-fun m!4123947 () Bool)

(assert (=> bs!571317 m!4123947))

(assert (=> tb!207785 d!1065961))

(declare-fun d!1065963 () Bool)

(assert (=> d!1065963 (= (head!7656 lt!1252086) (h!43586 lt!1252086))))

(assert (=> b!3622723 d!1065963))

(declare-fun d!1065965 () Bool)

(assert (=> d!1065965 (= (head!7656 (++!9500 lt!1252086 (_2!22152 lt!1252077))) (h!43586 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))

(assert (=> b!3622723 d!1065965))

(declare-fun d!1065967 () Bool)

(declare-fun nullableFct!1038 (Regex!10443) Bool)

(assert (=> d!1065967 (= (nullable!3613 (regex!5684 lt!1252074)) (nullableFct!1038 (regex!5684 lt!1252074)))))

(declare-fun bs!571318 () Bool)

(assert (= bs!571318 d!1065967))

(declare-fun m!4123949 () Bool)

(assert (=> bs!571318 m!4123949))

(assert (=> b!3623009 d!1065967))

(declare-fun d!1065969 () Bool)

(assert (=> d!1065969 (= (inv!51560 (tag!6404 (h!43587 (t!294262 rules!3307)))) (= (mod (str.len (value!182453 (tag!6404 (h!43587 (t!294262 rules!3307))))) 2) 0))))

(assert (=> b!3623045 d!1065969))

(declare-fun d!1065971 () Bool)

(declare-fun res!1466711 () Bool)

(declare-fun e!2243022 () Bool)

(assert (=> d!1065971 (=> (not res!1466711) (not e!2243022))))

(assert (=> d!1065971 (= res!1466711 (semiInverseModEq!2411 (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307))))))))

(assert (=> d!1065971 (= (inv!51563 (transformation!5684 (h!43587 (t!294262 rules!3307)))) e!2243022)))

(declare-fun b!3623763 () Bool)

(assert (=> b!3623763 (= e!2243022 (equivClasses!2310 (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307))))))))

(assert (= (and d!1065971 res!1466711) b!3623763))

(declare-fun m!4123951 () Bool)

(assert (=> d!1065971 m!4123951))

(declare-fun m!4123953 () Bool)

(assert (=> b!3623763 m!4123953))

(assert (=> b!3623045 d!1065971))

(declare-fun b!3623764 () Bool)

(declare-fun res!1466712 () Bool)

(declare-fun e!2243024 () Bool)

(assert (=> b!3623764 (=> res!1466712 e!2243024)))

(assert (=> b!3623764 (= res!1466712 (not ((_ is IntegerValue!17744) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))))

(declare-fun e!2243023 () Bool)

(assert (=> b!3623764 (= e!2243023 e!2243024)))

(declare-fun b!3623765 () Bool)

(declare-fun e!2243025 () Bool)

(assert (=> b!3623765 (= e!2243025 e!2243023)))

(declare-fun c!627063 () Bool)

(assert (=> b!3623765 (= c!627063 ((_ is IntegerValue!17743) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(declare-fun b!3623766 () Bool)

(assert (=> b!3623766 (= e!2243025 (inv!16 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(declare-fun b!3623768 () Bool)

(assert (=> b!3623768 (= e!2243023 (inv!17 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(declare-fun d!1065973 () Bool)

(declare-fun c!627062 () Bool)

(assert (=> d!1065973 (= c!627062 ((_ is IntegerValue!17742) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(assert (=> d!1065973 (= (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)) e!2243025)))

(declare-fun b!3623767 () Bool)

(assert (=> b!3623767 (= e!2243024 (inv!15 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))

(assert (= (and d!1065973 c!627062) b!3623766))

(assert (= (and d!1065973 (not c!627062)) b!3623765))

(assert (= (and b!3623765 c!627063) b!3623768))

(assert (= (and b!3623765 (not c!627063)) b!3623764))

(assert (= (and b!3623764 (not res!1466712)) b!3623767))

(declare-fun m!4123955 () Bool)

(assert (=> b!3623766 m!4123955))

(declare-fun m!4123957 () Bool)

(assert (=> b!3623768 m!4123957))

(declare-fun m!4123959 () Bool)

(assert (=> b!3623767 m!4123959))

(assert (=> tb!207745 d!1065973))

(declare-fun bs!571319 () Bool)

(declare-fun d!1065975 () Bool)

(assert (= bs!571319 (and d!1065975 d!1065421)))

(declare-fun lambda!124164 () Int)

(assert (=> bs!571319 (= (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= lambda!124164 lambda!124134))))

(assert (=> d!1065975 true))

(assert (=> d!1065975 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 rule!403))) (dynLambda!16515 order!20853 lambda!124164))))

(declare-fun Forall2!964 (Int) Bool)

(assert (=> d!1065975 (= (equivClasses!2310 (toChars!7827 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 rule!403))) (Forall2!964 lambda!124164))))

(declare-fun bs!571320 () Bool)

(assert (= bs!571320 d!1065975))

(declare-fun m!4123961 () Bool)

(assert (=> bs!571320 m!4123961))

(assert (=> b!3622681 d!1065975))

(declare-fun b!3623773 () Bool)

(declare-fun e!2243030 () Bool)

(declare-fun e!2243028 () Bool)

(assert (=> b!3623773 (= e!2243030 e!2243028)))

(declare-fun c!627065 () Bool)

(assert (=> b!3623773 (= c!627065 ((_ is EmptyLang!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun b!3623775 () Bool)

(declare-fun e!2243033 () Bool)

(declare-fun e!2243029 () Bool)

(assert (=> b!3623775 (= e!2243033 e!2243029)))

(declare-fun res!1466718 () Bool)

(assert (=> b!3623775 (=> res!1466718 e!2243029)))

(declare-fun call!262170 () Bool)

(assert (=> b!3623775 (= res!1466718 call!262170)))

(declare-fun b!3623776 () Bool)

(declare-fun e!2243034 () Bool)

(assert (=> b!3623776 (= e!2243034 (nullable!3613 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun b!3623777 () Bool)

(assert (=> b!3623777 (= e!2243029 (not (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (c!626792 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))))))))

(declare-fun b!3623778 () Bool)

(declare-fun res!1466719 () Bool)

(declare-fun e!2243032 () Bool)

(assert (=> b!3623778 (=> (not res!1466719) (not e!2243032))))

(assert (=> b!3623778 (= res!1466719 (not call!262170))))

(declare-fun b!3623779 () Bool)

(declare-fun lt!1252478 () Bool)

(assert (=> b!3623779 (= e!2243028 (not lt!1252478))))

(declare-fun b!3623780 () Bool)

(declare-fun res!1466717 () Bool)

(assert (=> b!3623780 (=> res!1466717 e!2243029)))

(assert (=> b!3623780 (= res!1466717 (not (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))))

(declare-fun b!3623781 () Bool)

(assert (=> b!3623781 (= e!2243030 (= lt!1252478 call!262170))))

(declare-fun b!3623782 () Bool)

(declare-fun res!1466715 () Bool)

(declare-fun e!2243031 () Bool)

(assert (=> b!3623782 (=> res!1466715 e!2243031)))

(assert (=> b!3623782 (= res!1466715 (not ((_ is ElementMatch!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))))

(assert (=> b!3623782 (= e!2243028 e!2243031)))

(declare-fun b!3623783 () Bool)

(assert (=> b!3623783 (= e!2243032 (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (c!626792 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))))

(declare-fun bm!262165 () Bool)

(assert (=> bm!262165 (= call!262170 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun b!3623784 () Bool)

(assert (=> b!3623784 (= e!2243034 (matchR!5012 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))))) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))))))))

(declare-fun d!1065977 () Bool)

(assert (=> d!1065977 e!2243030))

(declare-fun c!627066 () Bool)

(assert (=> d!1065977 (= c!627066 ((_ is EmptyExpr!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))))))

(assert (=> d!1065977 (= lt!1252478 e!2243034)))

(declare-fun c!627064 () Bool)

(assert (=> d!1065977 (= c!627064 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))

(assert (=> d!1065977 (validRegex!4775 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))

(assert (=> d!1065977 (= (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) lt!1252478)))

(declare-fun b!3623774 () Bool)

(declare-fun res!1466721 () Bool)

(assert (=> b!3623774 (=> res!1466721 e!2243031)))

(assert (=> b!3623774 (= res!1466721 e!2243032)))

(declare-fun res!1466722 () Bool)

(assert (=> b!3623774 (=> (not res!1466722) (not e!2243032))))

(assert (=> b!3623774 (= res!1466722 lt!1252478)))

(declare-fun b!3623785 () Bool)

(declare-fun res!1466720 () Bool)

(assert (=> b!3623785 (=> (not res!1466720) (not e!2243032))))

(assert (=> b!3623785 (= res!1466720 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))))))))

(declare-fun b!3623786 () Bool)

(assert (=> b!3623786 (= e!2243031 e!2243033)))

(declare-fun res!1466716 () Bool)

(assert (=> b!3623786 (=> (not res!1466716) (not e!2243033))))

(assert (=> b!3623786 (= res!1466716 (not lt!1252478))))

(assert (= (and d!1065977 c!627064) b!3623776))

(assert (= (and d!1065977 (not c!627064)) b!3623784))

(assert (= (and d!1065977 c!627066) b!3623781))

(assert (= (and d!1065977 (not c!627066)) b!3623773))

(assert (= (and b!3623773 c!627065) b!3623779))

(assert (= (and b!3623773 (not c!627065)) b!3623782))

(assert (= (and b!3623782 (not res!1466715)) b!3623774))

(assert (= (and b!3623774 res!1466722) b!3623778))

(assert (= (and b!3623778 res!1466719) b!3623785))

(assert (= (and b!3623785 res!1466720) b!3623783))

(assert (= (and b!3623774 (not res!1466721)) b!3623786))

(assert (= (and b!3623786 res!1466716) b!3623775))

(assert (= (and b!3623775 (not res!1466718)) b!3623780))

(assert (= (and b!3623780 (not res!1466717)) b!3623777))

(assert (= (or b!3623781 b!3623775 b!3623778) bm!262165))

(assert (=> b!3623780 m!4122953))

(declare-fun m!4123963 () Bool)

(assert (=> b!3623780 m!4123963))

(assert (=> b!3623780 m!4123963))

(declare-fun m!4123965 () Bool)

(assert (=> b!3623780 m!4123965))

(assert (=> b!3623785 m!4122953))

(assert (=> b!3623785 m!4123963))

(assert (=> b!3623785 m!4123963))

(assert (=> b!3623785 m!4123965))

(assert (=> bm!262165 m!4122953))

(declare-fun m!4123967 () Bool)

(assert (=> bm!262165 m!4123967))

(declare-fun m!4123969 () Bool)

(assert (=> b!3623776 m!4123969))

(assert (=> b!3623783 m!4122953))

(declare-fun m!4123971 () Bool)

(assert (=> b!3623783 m!4123971))

(assert (=> d!1065977 m!4122953))

(assert (=> d!1065977 m!4123967))

(declare-fun m!4123973 () Bool)

(assert (=> d!1065977 m!4123973))

(assert (=> b!3623777 m!4122953))

(assert (=> b!3623777 m!4123971))

(assert (=> b!3623784 m!4122953))

(assert (=> b!3623784 m!4123971))

(assert (=> b!3623784 m!4123971))

(declare-fun m!4123975 () Bool)

(assert (=> b!3623784 m!4123975))

(assert (=> b!3623784 m!4122953))

(assert (=> b!3623784 m!4123963))

(assert (=> b!3623784 m!4123975))

(assert (=> b!3623784 m!4123963))

(declare-fun m!4123977 () Bool)

(assert (=> b!3623784 m!4123977))

(assert (=> b!3622939 d!1065977))

(assert (=> b!3622939 d!1065939))

(declare-fun d!1065979 () Bool)

(assert (=> d!1065979 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))) (list!14091 (c!626793 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))

(declare-fun bs!571321 () Bool)

(assert (= bs!571321 d!1065979))

(declare-fun m!4123979 () Bool)

(assert (=> bs!571321 m!4123979))

(assert (=> b!3622939 d!1065979))

(declare-fun d!1065981 () Bool)

(declare-fun lt!1252479 () BalanceConc!22892)

(assert (=> d!1065981 (= (list!14088 lt!1252479) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252326))))))

(assert (=> d!1065981 (= lt!1252479 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))) (value!182454 (_1!22152 (get!12450 lt!1252326)))))))

(assert (=> d!1065981 (= (charsOf!3698 (_1!22152 (get!12450 lt!1252326))) lt!1252479)))

(declare-fun b_lambda!107199 () Bool)

(assert (=> (not b_lambda!107199) (not d!1065981)))

(declare-fun t!294451 () Bool)

(declare-fun tb!207917 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294451) tb!207917))

(declare-fun b!3623787 () Bool)

(declare-fun e!2243035 () Bool)

(declare-fun tp!1106682 () Bool)

(assert (=> b!3623787 (= e!2243035 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))) (value!182454 (_1!22152 (get!12450 lt!1252326)))))) tp!1106682))))

(declare-fun result!253336 () Bool)

(assert (=> tb!207917 (= result!253336 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326))))) (value!182454 (_1!22152 (get!12450 lt!1252326))))) e!2243035))))

(assert (= tb!207917 b!3623787))

(declare-fun m!4123981 () Bool)

(assert (=> b!3623787 m!4123981))

(declare-fun m!4123983 () Bool)

(assert (=> tb!207917 m!4123983))

(assert (=> d!1065981 t!294451))

(declare-fun b_and!265211 () Bool)

(assert (= b_and!265097 (and (=> t!294451 result!253336) b_and!265211)))

(declare-fun tb!207919 () Bool)

(declare-fun t!294453 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294453) tb!207919))

(declare-fun result!253338 () Bool)

(assert (= result!253338 result!253336))

(assert (=> d!1065981 t!294453))

(declare-fun b_and!265213 () Bool)

(assert (= b_and!265089 (and (=> t!294453 result!253338) b_and!265213)))

(declare-fun tb!207921 () Bool)

(declare-fun t!294455 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294455) tb!207921))

(declare-fun result!253340 () Bool)

(assert (= result!253340 result!253336))

(assert (=> d!1065981 t!294455))

(declare-fun b_and!265215 () Bool)

(assert (= b_and!265091 (and (=> t!294455 result!253340) b_and!265215)))

(declare-fun tb!207923 () Bool)

(declare-fun t!294457 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294457) tb!207923))

(declare-fun result!253342 () Bool)

(assert (= result!253342 result!253336))

(assert (=> d!1065981 t!294457))

(declare-fun b_and!265217 () Bool)

(assert (= b_and!265087 (and (=> t!294457 result!253342) b_and!265217)))

(declare-fun t!294459 () Bool)

(declare-fun tb!207925 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294459) tb!207925))

(declare-fun result!253344 () Bool)

(assert (= result!253344 result!253336))

(assert (=> d!1065981 t!294459))

(declare-fun b_and!265219 () Bool)

(assert (= b_and!265093 (and (=> t!294459 result!253344) b_and!265219)))

(declare-fun m!4123985 () Bool)

(assert (=> d!1065981 m!4123985))

(declare-fun m!4123987 () Bool)

(assert (=> d!1065981 m!4123987))

(assert (=> b!3622939 d!1065981))

(assert (=> b!3623002 d!1065963))

(declare-fun b!3623788 () Bool)

(declare-fun e!2243036 () Option!7998)

(declare-fun call!262171 () Option!7998)

(assert (=> b!3623788 (= e!2243036 call!262171)))

(declare-fun bm!262166 () Bool)

(assert (=> bm!262166 (= call!262171 (maxPrefixOneRule!1947 thiss!23823 (h!43587 (t!294262 rules!3307)) lt!1252082))))

(declare-fun d!1065983 () Bool)

(declare-fun e!2243038 () Bool)

(assert (=> d!1065983 e!2243038))

(declare-fun res!1466724 () Bool)

(assert (=> d!1065983 (=> res!1466724 e!2243038)))

(declare-fun lt!1252482 () Option!7998)

(assert (=> d!1065983 (= res!1466724 (isEmpty!22563 lt!1252482))))

(assert (=> d!1065983 (= lt!1252482 e!2243036)))

(declare-fun c!627067 () Bool)

(assert (=> d!1065983 (= c!627067 (and ((_ is Cons!38167) (t!294262 rules!3307)) ((_ is Nil!38167) (t!294262 (t!294262 rules!3307)))))))

(declare-fun lt!1252481 () Unit!54914)

(declare-fun lt!1252484 () Unit!54914)

(assert (=> d!1065983 (= lt!1252481 lt!1252484)))

(assert (=> d!1065983 (isPrefix!3047 lt!1252082 lt!1252082)))

(assert (=> d!1065983 (= lt!1252484 (lemmaIsPrefixRefl!1932 lt!1252082 lt!1252082))))

(assert (=> d!1065983 (rulesValidInductive!1997 thiss!23823 (t!294262 rules!3307))))

(assert (=> d!1065983 (= (maxPrefix!2807 thiss!23823 (t!294262 rules!3307) lt!1252082) lt!1252482)))

(declare-fun b!3623789 () Bool)

(declare-fun e!2243037 () Bool)

(assert (=> b!3623789 (= e!2243038 e!2243037)))

(declare-fun res!1466728 () Bool)

(assert (=> b!3623789 (=> (not res!1466728) (not e!2243037))))

(assert (=> b!3623789 (= res!1466728 (isDefined!6231 lt!1252482))))

(declare-fun b!3623790 () Bool)

(declare-fun res!1466725 () Bool)

(assert (=> b!3623790 (=> (not res!1466725) (not e!2243037))))

(assert (=> b!3623790 (= res!1466725 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252482)))) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252482)))))))

(declare-fun b!3623791 () Bool)

(declare-fun res!1466727 () Bool)

(assert (=> b!3623791 (=> (not res!1466727) (not e!2243037))))

(assert (=> b!3623791 (= res!1466727 (< (size!29114 (_2!22152 (get!12450 lt!1252482))) (size!29114 lt!1252082)))))

(declare-fun b!3623792 () Bool)

(declare-fun res!1466729 () Bool)

(assert (=> b!3623792 (=> (not res!1466729) (not e!2243037))))

(assert (=> b!3623792 (= res!1466729 (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252482)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252482))))))))

(declare-fun b!3623793 () Bool)

(declare-fun lt!1252483 () Option!7998)

(declare-fun lt!1252480 () Option!7998)

(assert (=> b!3623793 (= e!2243036 (ite (and ((_ is None!7997) lt!1252483) ((_ is None!7997) lt!1252480)) None!7997 (ite ((_ is None!7997) lt!1252480) lt!1252483 (ite ((_ is None!7997) lt!1252483) lt!1252480 (ite (>= (size!29110 (_1!22152 (v!37767 lt!1252483))) (size!29110 (_1!22152 (v!37767 lt!1252480)))) lt!1252483 lt!1252480)))))))

(assert (=> b!3623793 (= lt!1252483 call!262171)))

(assert (=> b!3623793 (= lt!1252480 (maxPrefix!2807 thiss!23823 (t!294262 (t!294262 rules!3307)) lt!1252082))))

(declare-fun b!3623794 () Bool)

(assert (=> b!3623794 (= e!2243037 (contains!7432 (t!294262 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252482)))))))

(declare-fun b!3623795 () Bool)

(declare-fun res!1466723 () Bool)

(assert (=> b!3623795 (=> (not res!1466723) (not e!2243037))))

(assert (=> b!3623795 (= res!1466723 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252482)))) (_2!22152 (get!12450 lt!1252482))) lt!1252082))))

(declare-fun b!3623796 () Bool)

(declare-fun res!1466726 () Bool)

(assert (=> b!3623796 (=> (not res!1466726) (not e!2243037))))

(assert (=> b!3623796 (= res!1466726 (= (value!182454 (_1!22152 (get!12450 lt!1252482))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252482)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252482)))))))))

(assert (= (and d!1065983 c!627067) b!3623788))

(assert (= (and d!1065983 (not c!627067)) b!3623793))

(assert (= (or b!3623788 b!3623793) bm!262166))

(assert (= (and d!1065983 (not res!1466724)) b!3623789))

(assert (= (and b!3623789 res!1466728) b!3623790))

(assert (= (and b!3623790 res!1466725) b!3623791))

(assert (= (and b!3623791 res!1466727) b!3623795))

(assert (= (and b!3623795 res!1466723) b!3623796))

(assert (= (and b!3623796 res!1466726) b!3623792))

(assert (= (and b!3623792 res!1466729) b!3623794))

(declare-fun m!4123989 () Bool)

(assert (=> b!3623794 m!4123989))

(declare-fun m!4123991 () Bool)

(assert (=> b!3623794 m!4123991))

(assert (=> b!3623792 m!4123989))

(declare-fun m!4123993 () Bool)

(assert (=> b!3623792 m!4123993))

(assert (=> b!3623792 m!4123993))

(declare-fun m!4123995 () Bool)

(assert (=> b!3623792 m!4123995))

(assert (=> b!3623792 m!4123995))

(declare-fun m!4123997 () Bool)

(assert (=> b!3623792 m!4123997))

(assert (=> b!3623796 m!4123989))

(declare-fun m!4123999 () Bool)

(assert (=> b!3623796 m!4123999))

(assert (=> b!3623796 m!4123999))

(declare-fun m!4124001 () Bool)

(assert (=> b!3623796 m!4124001))

(declare-fun m!4124003 () Bool)

(assert (=> d!1065983 m!4124003))

(assert (=> d!1065983 m!4122685))

(assert (=> d!1065983 m!4122687))

(declare-fun m!4124005 () Bool)

(assert (=> d!1065983 m!4124005))

(declare-fun m!4124007 () Bool)

(assert (=> bm!262166 m!4124007))

(declare-fun m!4124009 () Bool)

(assert (=> b!3623793 m!4124009))

(assert (=> b!3623795 m!4123989))

(assert (=> b!3623795 m!4123993))

(assert (=> b!3623795 m!4123993))

(assert (=> b!3623795 m!4123995))

(assert (=> b!3623795 m!4123995))

(declare-fun m!4124011 () Bool)

(assert (=> b!3623795 m!4124011))

(assert (=> b!3623790 m!4123989))

(assert (=> b!3623790 m!4123993))

(assert (=> b!3623790 m!4123993))

(assert (=> b!3623790 m!4123995))

(declare-fun m!4124013 () Bool)

(assert (=> b!3623789 m!4124013))

(assert (=> b!3623791 m!4123989))

(declare-fun m!4124015 () Bool)

(assert (=> b!3623791 m!4124015))

(assert (=> b!3623791 m!4122639))

(assert (=> b!3622749 d!1065983))

(declare-fun b!3623797 () Bool)

(declare-fun e!2243040 () List!38290)

(declare-fun call!262175 () List!38290)

(assert (=> b!3623797 (= e!2243040 call!262175)))

(declare-fun b!3623798 () Bool)

(declare-fun e!2243042 () List!38290)

(assert (=> b!3623798 (= e!2243042 Nil!38166)))

(declare-fun b!3623799 () Bool)

(declare-fun e!2243041 () List!38290)

(declare-fun call!262173 () List!38290)

(assert (=> b!3623799 (= e!2243041 call!262173)))

(declare-fun c!627071 () Bool)

(declare-fun bm!262167 () Bool)

(declare-fun c!627068 () Bool)

(assert (=> bm!262167 (= call!262175 (usedCharacters!898 (ite c!627071 (reg!10772 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) (ite c!627068 (regTwo!21399 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) (regOne!21398 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403))))))))))

(declare-fun bm!262168 () Bool)

(declare-fun call!262172 () List!38290)

(assert (=> bm!262168 (= call!262172 call!262175)))

(declare-fun b!3623800 () Bool)

(declare-fun e!2243039 () List!38290)

(assert (=> b!3623800 (= e!2243039 (Cons!38166 (c!626792 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) Nil!38166))))

(declare-fun b!3623801 () Bool)

(assert (=> b!3623801 (= c!627071 ((_ is Star!10443) (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))))))

(assert (=> b!3623801 (= e!2243039 e!2243040)))

(declare-fun call!262174 () List!38290)

(declare-fun bm!262169 () Bool)

(assert (=> bm!262169 (= call!262173 (++!9500 (ite c!627068 call!262174 call!262172) (ite c!627068 call!262172 call!262174)))))

(declare-fun b!3623802 () Bool)

(assert (=> b!3623802 (= e!2243041 call!262173)))

(declare-fun bm!262170 () Bool)

(assert (=> bm!262170 (= call!262174 (usedCharacters!898 (ite c!627068 (regOne!21399 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) (regTwo!21398 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))))))))

(declare-fun b!3623804 () Bool)

(assert (=> b!3623804 (= e!2243040 e!2243041)))

(assert (=> b!3623804 (= c!627068 ((_ is Union!10443) (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))))))

(declare-fun b!3623803 () Bool)

(assert (=> b!3623803 (= e!2243042 e!2243039)))

(declare-fun c!627069 () Bool)

(assert (=> b!3623803 (= c!627069 ((_ is ElementMatch!10443) (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))))))

(declare-fun d!1065985 () Bool)

(declare-fun c!627070 () Bool)

(assert (=> d!1065985 (= c!627070 (or ((_ is EmptyExpr!10443) (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) ((_ is EmptyLang!10443) (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403))))))))

(assert (=> d!1065985 (= (usedCharacters!898 (ite c!626849 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403)))) e!2243042)))

(assert (= (and d!1065985 c!627070) b!3623798))

(assert (= (and d!1065985 (not c!627070)) b!3623803))

(assert (= (and b!3623803 c!627069) b!3623800))

(assert (= (and b!3623803 (not c!627069)) b!3623801))

(assert (= (and b!3623801 c!627071) b!3623797))

(assert (= (and b!3623801 (not c!627071)) b!3623804))

(assert (= (and b!3623804 c!627068) b!3623802))

(assert (= (and b!3623804 (not c!627068)) b!3623799))

(assert (= (or b!3623802 b!3623799) bm!262170))

(assert (= (or b!3623802 b!3623799) bm!262168))

(assert (= (or b!3623802 b!3623799) bm!262169))

(assert (= (or b!3623797 bm!262168) bm!262167))

(declare-fun m!4124017 () Bool)

(assert (=> bm!262167 m!4124017))

(declare-fun m!4124019 () Bool)

(assert (=> bm!262169 m!4124019))

(declare-fun m!4124021 () Bool)

(assert (=> bm!262170 m!4124021))

(assert (=> bm!262080 d!1065985))

(declare-fun d!1065987 () Bool)

(declare-fun lt!1252487 () Int)

(assert (=> d!1065987 (>= lt!1252487 0)))

(declare-fun e!2243045 () Int)

(assert (=> d!1065987 (= lt!1252487 e!2243045)))

(declare-fun c!627074 () Bool)

(assert (=> d!1065987 (= c!627074 ((_ is Nil!38166) lt!1252082))))

(assert (=> d!1065987 (= (size!29114 lt!1252082) lt!1252487)))

(declare-fun b!3623809 () Bool)

(assert (=> b!3623809 (= e!2243045 0)))

(declare-fun b!3623810 () Bool)

(assert (=> b!3623810 (= e!2243045 (+ 1 (size!29114 (t!294261 lt!1252082))))))

(assert (= (and d!1065987 c!627074) b!3623809))

(assert (= (and d!1065987 (not c!627074)) b!3623810))

(declare-fun m!4124023 () Bool)

(assert (=> b!3623810 m!4124023))

(assert (=> b!3622764 d!1065987))

(declare-fun d!1065989 () Bool)

(declare-fun lt!1252488 () Int)

(assert (=> d!1065989 (>= lt!1252488 0)))

(declare-fun e!2243046 () Int)

(assert (=> d!1065989 (= lt!1252488 e!2243046)))

(declare-fun c!627075 () Bool)

(assert (=> d!1065989 (= c!627075 ((_ is Nil!38166) lt!1252086))))

(assert (=> d!1065989 (= (size!29114 lt!1252086) lt!1252488)))

(declare-fun b!3623811 () Bool)

(assert (=> b!3623811 (= e!2243046 0)))

(declare-fun b!3623812 () Bool)

(assert (=> b!3623812 (= e!2243046 (+ 1 (size!29114 (t!294261 lt!1252086))))))

(assert (= (and d!1065989 c!627075) b!3623811))

(assert (= (and d!1065989 (not c!627075)) b!3623812))

(declare-fun m!4124025 () Bool)

(assert (=> b!3623812 m!4124025))

(assert (=> b!3622764 d!1065989))

(declare-fun d!1065991 () Bool)

(declare-fun res!1466730 () Bool)

(declare-fun e!2243047 () Bool)

(assert (=> d!1065991 (=> res!1466730 e!2243047)))

(assert (=> d!1065991 (= res!1466730 (not ((_ is Cons!38167) (t!294262 rules!3307))))))

(assert (=> d!1065991 (= (sepAndNonSepRulesDisjointChars!1854 rules!3307 (t!294262 rules!3307)) e!2243047)))

(declare-fun b!3623813 () Bool)

(declare-fun e!2243048 () Bool)

(assert (=> b!3623813 (= e!2243047 e!2243048)))

(declare-fun res!1466731 () Bool)

(assert (=> b!3623813 (=> (not res!1466731) (not e!2243048))))

(assert (=> b!3623813 (= res!1466731 (ruleDisjointCharsFromAllFromOtherType!837 (h!43587 (t!294262 rules!3307)) rules!3307))))

(declare-fun b!3623814 () Bool)

(assert (=> b!3623814 (= e!2243048 (sepAndNonSepRulesDisjointChars!1854 rules!3307 (t!294262 (t!294262 rules!3307))))))

(assert (= (and d!1065991 (not res!1466730)) b!3623813))

(assert (= (and b!3623813 res!1466731) b!3623814))

(declare-fun m!4124027 () Bool)

(assert (=> b!3623813 m!4124027))

(declare-fun m!4124029 () Bool)

(assert (=> b!3623814 m!4124029))

(assert (=> b!3622930 d!1065991))

(declare-fun d!1065993 () Bool)

(assert (=> d!1065993 (= (isEmpty!22559 (tail!5611 lt!1252088)) ((_ is Nil!38166) (tail!5611 lt!1252088)))))

(assert (=> b!3622984 d!1065993))

(declare-fun d!1065995 () Bool)

(assert (=> d!1065995 (= (tail!5611 lt!1252088) (t!294261 lt!1252088))))

(assert (=> b!3622984 d!1065995))

(declare-fun d!1065997 () Bool)

(declare-fun c!627078 () Bool)

(assert (=> d!1065997 (= c!627078 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))))

(declare-fun e!2243053 () Bool)

(assert (=> d!1065997 (= (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))) e!2243053)))

(declare-fun b!3623821 () Bool)

(declare-fun inv!51571 (Conc!11639) Bool)

(assert (=> b!3623821 (= e!2243053 (inv!51571 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))))

(declare-fun b!3623822 () Bool)

(declare-fun e!2243054 () Bool)

(assert (=> b!3623822 (= e!2243053 e!2243054)))

(declare-fun res!1466734 () Bool)

(assert (=> b!3623822 (= res!1466734 (not ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))))))

(assert (=> b!3623822 (=> res!1466734 e!2243054)))

(declare-fun b!3623823 () Bool)

(declare-fun inv!51572 (Conc!11639) Bool)

(assert (=> b!3623823 (= e!2243054 (inv!51572 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))))

(assert (= (and d!1065997 c!627078) b!3623821))

(assert (= (and d!1065997 (not c!627078)) b!3623822))

(assert (= (and b!3623822 (not res!1466734)) b!3623823))

(declare-fun m!4124031 () Bool)

(assert (=> b!3623821 m!4124031))

(declare-fun m!4124033 () Bool)

(assert (=> b!3623823 m!4124033))

(assert (=> b!3622649 d!1065997))

(declare-fun b!3623827 () Bool)

(declare-fun e!2243056 () List!38290)

(assert (=> b!3623827 (= e!2243056 (++!9500 (list!14091 (left!29795 (c!626793 lt!1252071))) (list!14091 (right!30125 (c!626793 lt!1252071)))))))

(declare-fun b!3623825 () Bool)

(declare-fun e!2243055 () List!38290)

(assert (=> b!3623825 (= e!2243055 e!2243056)))

(declare-fun c!627080 () Bool)

(assert (=> b!3623825 (= c!627080 ((_ is Leaf!18092) (c!626793 lt!1252071)))))

(declare-fun b!3623826 () Bool)

(assert (=> b!3623826 (= e!2243056 (list!14094 (xs!14841 (c!626793 lt!1252071))))))

(declare-fun d!1065999 () Bool)

(declare-fun c!627079 () Bool)

(assert (=> d!1065999 (= c!627079 ((_ is Empty!11639) (c!626793 lt!1252071)))))

(assert (=> d!1065999 (= (list!14091 (c!626793 lt!1252071)) e!2243055)))

(declare-fun b!3623824 () Bool)

(assert (=> b!3623824 (= e!2243055 Nil!38166)))

(assert (= (and d!1065999 c!627079) b!3623824))

(assert (= (and d!1065999 (not c!627079)) b!3623825))

(assert (= (and b!3623825 c!627080) b!3623826))

(assert (= (and b!3623825 (not c!627080)) b!3623827))

(declare-fun m!4124035 () Bool)

(assert (=> b!3623827 m!4124035))

(declare-fun m!4124037 () Bool)

(assert (=> b!3623827 m!4124037))

(assert (=> b!3623827 m!4124035))

(assert (=> b!3623827 m!4124037))

(declare-fun m!4124039 () Bool)

(assert (=> b!3623827 m!4124039))

(declare-fun m!4124041 () Bool)

(assert (=> b!3623826 m!4124041))

(assert (=> d!1065493 d!1065999))

(declare-fun b!3623846 () Bool)

(declare-fun res!1466750 () Bool)

(declare-fun e!2243068 () Bool)

(assert (=> b!3623846 (=> (not res!1466750) (not e!2243068))))

(declare-fun lt!1252499 () Option!7998)

(assert (=> b!3623846 (= res!1466750 (= (rule!8446 (_1!22152 (get!12450 lt!1252499))) (h!43587 rules!3307)))))

(declare-fun b!3623847 () Bool)

(declare-fun res!1466754 () Bool)

(assert (=> b!3623847 (=> (not res!1466754) (not e!2243068))))

(assert (=> b!3623847 (= res!1466754 (< (size!29114 (_2!22152 (get!12450 lt!1252499))) (size!29114 lt!1252082)))))

(declare-fun b!3623848 () Bool)

(declare-fun e!2243066 () Bool)

(declare-datatypes ((tuple2!38046 0))(
  ( (tuple2!38047 (_1!22157 List!38290) (_2!22157 List!38290)) )
))
(declare-fun findLongestMatchInner!1017 (Regex!10443 List!38290 Int List!38290 List!38290 Int) tuple2!38046)

(assert (=> b!3623848 (= e!2243066 (matchR!5012 (regex!5684 (h!43587 rules!3307)) (_1!22157 (findLongestMatchInner!1017 (regex!5684 (h!43587 rules!3307)) Nil!38166 (size!29114 Nil!38166) lt!1252082 lt!1252082 (size!29114 lt!1252082)))))))

(declare-fun d!1066001 () Bool)

(declare-fun e!2243065 () Bool)

(assert (=> d!1066001 e!2243065))

(declare-fun res!1466752 () Bool)

(assert (=> d!1066001 (=> res!1466752 e!2243065)))

(assert (=> d!1066001 (= res!1466752 (isEmpty!22563 lt!1252499))))

(declare-fun e!2243067 () Option!7998)

(assert (=> d!1066001 (= lt!1252499 e!2243067)))

(declare-fun c!627083 () Bool)

(declare-fun lt!1252503 () tuple2!38046)

(assert (=> d!1066001 (= c!627083 (isEmpty!22559 (_1!22157 lt!1252503)))))

(declare-fun findLongestMatch!932 (Regex!10443 List!38290) tuple2!38046)

(assert (=> d!1066001 (= lt!1252503 (findLongestMatch!932 (regex!5684 (h!43587 rules!3307)) lt!1252082))))

(assert (=> d!1066001 (ruleValid!1949 thiss!23823 (h!43587 rules!3307))))

(assert (=> d!1066001 (= (maxPrefixOneRule!1947 thiss!23823 (h!43587 rules!3307) lt!1252082) lt!1252499)))

(declare-fun b!3623849 () Bool)

(assert (=> b!3623849 (= e!2243067 (Some!7997 (tuple2!38037 (Token!10735 (apply!9186 (transformation!5684 (h!43587 rules!3307)) (seqFromList!4233 (_1!22157 lt!1252503))) (h!43587 rules!3307) (size!29111 (seqFromList!4233 (_1!22157 lt!1252503))) (_1!22157 lt!1252503)) (_2!22157 lt!1252503))))))

(declare-fun lt!1252502 () Unit!54914)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!990 (Regex!10443 List!38290) Unit!54914)

(assert (=> b!3623849 (= lt!1252502 (longestMatchIsAcceptedByMatchOrIsEmpty!990 (regex!5684 (h!43587 rules!3307)) lt!1252082))))

(declare-fun res!1466751 () Bool)

(assert (=> b!3623849 (= res!1466751 (isEmpty!22559 (_1!22157 (findLongestMatchInner!1017 (regex!5684 (h!43587 rules!3307)) Nil!38166 (size!29114 Nil!38166) lt!1252082 lt!1252082 (size!29114 lt!1252082)))))))

(assert (=> b!3623849 (=> res!1466751 e!2243066)))

(assert (=> b!3623849 e!2243066))

(declare-fun lt!1252500 () Unit!54914)

(assert (=> b!3623849 (= lt!1252500 lt!1252502)))

(declare-fun lt!1252501 () Unit!54914)

(assert (=> b!3623849 (= lt!1252501 (lemmaSemiInverse!1435 (transformation!5684 (h!43587 rules!3307)) (seqFromList!4233 (_1!22157 lt!1252503))))))

(declare-fun b!3623850 () Bool)

(assert (=> b!3623850 (= e!2243065 e!2243068)))

(declare-fun res!1466749 () Bool)

(assert (=> b!3623850 (=> (not res!1466749) (not e!2243068))))

(assert (=> b!3623850 (= res!1466749 (matchR!5012 (regex!5684 (h!43587 rules!3307)) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252499))))))))

(declare-fun b!3623851 () Bool)

(declare-fun res!1466753 () Bool)

(assert (=> b!3623851 (=> (not res!1466753) (not e!2243068))))

(assert (=> b!3623851 (= res!1466753 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252499)))) (_2!22152 (get!12450 lt!1252499))) lt!1252082))))

(declare-fun b!3623852 () Bool)

(declare-fun res!1466755 () Bool)

(assert (=> b!3623852 (=> (not res!1466755) (not e!2243068))))

(assert (=> b!3623852 (= res!1466755 (= (value!182454 (_1!22152 (get!12450 lt!1252499))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252499)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252499)))))))))

(declare-fun b!3623853 () Bool)

(assert (=> b!3623853 (= e!2243068 (= (size!29110 (_1!22152 (get!12450 lt!1252499))) (size!29114 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252499))))))))

(declare-fun b!3623854 () Bool)

(assert (=> b!3623854 (= e!2243067 None!7997)))

(assert (= (and d!1066001 c!627083) b!3623854))

(assert (= (and d!1066001 (not c!627083)) b!3623849))

(assert (= (and b!3623849 (not res!1466751)) b!3623848))

(assert (= (and d!1066001 (not res!1466752)) b!3623850))

(assert (= (and b!3623850 res!1466749) b!3623851))

(assert (= (and b!3623851 res!1466753) b!3623847))

(assert (= (and b!3623847 res!1466754) b!3623846))

(assert (= (and b!3623846 res!1466750) b!3623852))

(assert (= (and b!3623852 res!1466755) b!3623853))

(declare-fun m!4124043 () Bool)

(assert (=> b!3623849 m!4124043))

(declare-fun m!4124045 () Bool)

(assert (=> b!3623849 m!4124045))

(assert (=> b!3623849 m!4124043))

(declare-fun m!4124047 () Bool)

(assert (=> b!3623849 m!4124047))

(assert (=> b!3623849 m!4122639))

(declare-fun m!4124049 () Bool)

(assert (=> b!3623849 m!4124049))

(assert (=> b!3623849 m!4124043))

(declare-fun m!4124051 () Bool)

(assert (=> b!3623849 m!4124051))

(declare-fun m!4124053 () Bool)

(assert (=> b!3623849 m!4124053))

(assert (=> b!3623849 m!4122639))

(assert (=> b!3623849 m!4124043))

(declare-fun m!4124055 () Bool)

(assert (=> b!3623849 m!4124055))

(declare-fun m!4124057 () Bool)

(assert (=> b!3623849 m!4124057))

(assert (=> b!3623849 m!4124047))

(declare-fun m!4124059 () Bool)

(assert (=> b!3623853 m!4124059))

(declare-fun m!4124061 () Bool)

(assert (=> b!3623853 m!4124061))

(assert (=> b!3623846 m!4124059))

(assert (=> b!3623850 m!4124059))

(declare-fun m!4124063 () Bool)

(assert (=> b!3623850 m!4124063))

(assert (=> b!3623850 m!4124063))

(declare-fun m!4124065 () Bool)

(assert (=> b!3623850 m!4124065))

(assert (=> b!3623850 m!4124065))

(declare-fun m!4124067 () Bool)

(assert (=> b!3623850 m!4124067))

(assert (=> b!3623852 m!4124059))

(declare-fun m!4124069 () Bool)

(assert (=> b!3623852 m!4124069))

(assert (=> b!3623852 m!4124069))

(declare-fun m!4124071 () Bool)

(assert (=> b!3623852 m!4124071))

(assert (=> b!3623848 m!4124047))

(assert (=> b!3623848 m!4122639))

(assert (=> b!3623848 m!4124047))

(assert (=> b!3623848 m!4122639))

(assert (=> b!3623848 m!4124049))

(declare-fun m!4124073 () Bool)

(assert (=> b!3623848 m!4124073))

(assert (=> b!3623847 m!4124059))

(declare-fun m!4124075 () Bool)

(assert (=> b!3623847 m!4124075))

(assert (=> b!3623847 m!4122639))

(assert (=> b!3623851 m!4124059))

(assert (=> b!3623851 m!4124063))

(assert (=> b!3623851 m!4124063))

(assert (=> b!3623851 m!4124065))

(assert (=> b!3623851 m!4124065))

(declare-fun m!4124077 () Bool)

(assert (=> b!3623851 m!4124077))

(declare-fun m!4124079 () Bool)

(assert (=> d!1066001 m!4124079))

(declare-fun m!4124081 () Bool)

(assert (=> d!1066001 m!4124081))

(declare-fun m!4124083 () Bool)

(assert (=> d!1066001 m!4124083))

(declare-fun m!4124085 () Bool)

(assert (=> d!1066001 m!4124085))

(assert (=> bm!262083 d!1066001))

(declare-fun bs!571322 () Bool)

(declare-fun d!1066003 () Bool)

(assert (= bs!571322 (and d!1066003 d!1065421)))

(declare-fun lambda!124165 () Int)

(assert (=> bs!571322 (= (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= lambda!124165 lambda!124134))))

(declare-fun bs!571323 () Bool)

(assert (= bs!571323 (and d!1066003 d!1065975)))

(assert (=> bs!571323 (= (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 rule!403))) (= lambda!124165 lambda!124164))))

(assert (=> d!1066003 true))

(assert (=> d!1066003 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (dynLambda!16515 order!20853 lambda!124165))))

(assert (=> d!1066003 (= (equivClasses!2310 (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (Forall2!964 lambda!124165))))

(declare-fun bs!571324 () Bool)

(assert (= bs!571324 d!1066003))

(declare-fun m!4124087 () Bool)

(assert (=> bs!571324 m!4124087))

(assert (=> b!3622535 d!1066003))

(declare-fun d!1066005 () Bool)

(assert (=> d!1066005 (= (list!14088 (charsOf!3698 lt!1252303)) (list!14091 (c!626793 (charsOf!3698 lt!1252303))))))

(declare-fun bs!571325 () Bool)

(assert (= bs!571325 d!1066005))

(declare-fun m!4124089 () Bool)

(assert (=> bs!571325 m!4124089))

(assert (=> b!3622903 d!1066005))

(declare-fun b!3623855 () Bool)

(declare-fun e!2243071 () Bool)

(declare-fun e!2243069 () Bool)

(assert (=> b!3623855 (= e!2243071 e!2243069)))

(declare-fun c!627085 () Bool)

(assert (=> b!3623855 (= c!627085 ((_ is EmptyLang!10443) (regex!5684 (rule!8446 lt!1252303))))))

(declare-fun b!3623857 () Bool)

(declare-fun e!2243074 () Bool)

(declare-fun e!2243070 () Bool)

(assert (=> b!3623857 (= e!2243074 e!2243070)))

(declare-fun res!1466759 () Bool)

(assert (=> b!3623857 (=> res!1466759 e!2243070)))

(declare-fun call!262176 () Bool)

(assert (=> b!3623857 (= res!1466759 call!262176)))

(declare-fun b!3623858 () Bool)

(declare-fun e!2243075 () Bool)

(assert (=> b!3623858 (= e!2243075 (nullable!3613 (regex!5684 (rule!8446 lt!1252303))))))

(declare-fun b!3623859 () Bool)

(assert (=> b!3623859 (= e!2243070 (not (= (head!7656 lt!1252314) (c!626792 (regex!5684 (rule!8446 lt!1252303))))))))

(declare-fun b!3623860 () Bool)

(declare-fun res!1466760 () Bool)

(declare-fun e!2243073 () Bool)

(assert (=> b!3623860 (=> (not res!1466760) (not e!2243073))))

(assert (=> b!3623860 (= res!1466760 (not call!262176))))

(declare-fun b!3623861 () Bool)

(declare-fun lt!1252504 () Bool)

(assert (=> b!3623861 (= e!2243069 (not lt!1252504))))

(declare-fun b!3623862 () Bool)

(declare-fun res!1466758 () Bool)

(assert (=> b!3623862 (=> res!1466758 e!2243070)))

(assert (=> b!3623862 (= res!1466758 (not (isEmpty!22559 (tail!5611 lt!1252314))))))

(declare-fun b!3623863 () Bool)

(assert (=> b!3623863 (= e!2243071 (= lt!1252504 call!262176))))

(declare-fun b!3623864 () Bool)

(declare-fun res!1466756 () Bool)

(declare-fun e!2243072 () Bool)

(assert (=> b!3623864 (=> res!1466756 e!2243072)))

(assert (=> b!3623864 (= res!1466756 (not ((_ is ElementMatch!10443) (regex!5684 (rule!8446 lt!1252303)))))))

(assert (=> b!3623864 (= e!2243069 e!2243072)))

(declare-fun b!3623865 () Bool)

(assert (=> b!3623865 (= e!2243073 (= (head!7656 lt!1252314) (c!626792 (regex!5684 (rule!8446 lt!1252303)))))))

(declare-fun bm!262171 () Bool)

(assert (=> bm!262171 (= call!262176 (isEmpty!22559 lt!1252314))))

(declare-fun b!3623866 () Bool)

(assert (=> b!3623866 (= e!2243075 (matchR!5012 (derivativeStep!3162 (regex!5684 (rule!8446 lt!1252303)) (head!7656 lt!1252314)) (tail!5611 lt!1252314)))))

(declare-fun d!1066007 () Bool)

(assert (=> d!1066007 e!2243071))

(declare-fun c!627086 () Bool)

(assert (=> d!1066007 (= c!627086 ((_ is EmptyExpr!10443) (regex!5684 (rule!8446 lt!1252303))))))

(assert (=> d!1066007 (= lt!1252504 e!2243075)))

(declare-fun c!627084 () Bool)

(assert (=> d!1066007 (= c!627084 (isEmpty!22559 lt!1252314))))

(assert (=> d!1066007 (validRegex!4775 (regex!5684 (rule!8446 lt!1252303)))))

(assert (=> d!1066007 (= (matchR!5012 (regex!5684 (rule!8446 lt!1252303)) lt!1252314) lt!1252504)))

(declare-fun b!3623856 () Bool)

(declare-fun res!1466762 () Bool)

(assert (=> b!3623856 (=> res!1466762 e!2243072)))

(assert (=> b!3623856 (= res!1466762 e!2243073)))

(declare-fun res!1466763 () Bool)

(assert (=> b!3623856 (=> (not res!1466763) (not e!2243073))))

(assert (=> b!3623856 (= res!1466763 lt!1252504)))

(declare-fun b!3623867 () Bool)

(declare-fun res!1466761 () Bool)

(assert (=> b!3623867 (=> (not res!1466761) (not e!2243073))))

(assert (=> b!3623867 (= res!1466761 (isEmpty!22559 (tail!5611 lt!1252314)))))

(declare-fun b!3623868 () Bool)

(assert (=> b!3623868 (= e!2243072 e!2243074)))

(declare-fun res!1466757 () Bool)

(assert (=> b!3623868 (=> (not res!1466757) (not e!2243074))))

(assert (=> b!3623868 (= res!1466757 (not lt!1252504))))

(assert (= (and d!1066007 c!627084) b!3623858))

(assert (= (and d!1066007 (not c!627084)) b!3623866))

(assert (= (and d!1066007 c!627086) b!3623863))

(assert (= (and d!1066007 (not c!627086)) b!3623855))

(assert (= (and b!3623855 c!627085) b!3623861))

(assert (= (and b!3623855 (not c!627085)) b!3623864))

(assert (= (and b!3623864 (not res!1466756)) b!3623856))

(assert (= (and b!3623856 res!1466763) b!3623860))

(assert (= (and b!3623860 res!1466760) b!3623867))

(assert (= (and b!3623867 res!1466761) b!3623865))

(assert (= (and b!3623856 (not res!1466762)) b!3623868))

(assert (= (and b!3623868 res!1466757) b!3623857))

(assert (= (and b!3623857 (not res!1466759)) b!3623862))

(assert (= (and b!3623862 (not res!1466758)) b!3623859))

(assert (= (or b!3623863 b!3623857 b!3623860) bm!262171))

(declare-fun m!4124091 () Bool)

(assert (=> b!3623862 m!4124091))

(assert (=> b!3623862 m!4124091))

(declare-fun m!4124093 () Bool)

(assert (=> b!3623862 m!4124093))

(assert (=> b!3623867 m!4124091))

(assert (=> b!3623867 m!4124091))

(assert (=> b!3623867 m!4124093))

(declare-fun m!4124095 () Bool)

(assert (=> bm!262171 m!4124095))

(declare-fun m!4124097 () Bool)

(assert (=> b!3623858 m!4124097))

(declare-fun m!4124099 () Bool)

(assert (=> b!3623865 m!4124099))

(assert (=> d!1066007 m!4124095))

(declare-fun m!4124101 () Bool)

(assert (=> d!1066007 m!4124101))

(assert (=> b!3623859 m!4124099))

(assert (=> b!3623866 m!4124099))

(assert (=> b!3623866 m!4124099))

(declare-fun m!4124103 () Bool)

(assert (=> b!3623866 m!4124103))

(assert (=> b!3623866 m!4124091))

(assert (=> b!3623866 m!4124103))

(assert (=> b!3623866 m!4124091))

(declare-fun m!4124105 () Bool)

(assert (=> b!3623866 m!4124105))

(assert (=> b!3622903 d!1066007))

(declare-fun d!1066009 () Bool)

(declare-fun lt!1252505 () BalanceConc!22892)

(assert (=> d!1066009 (= (list!14088 lt!1252505) (originalCharacters!6398 lt!1252303))))

(assert (=> d!1066009 (= lt!1252505 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 lt!1252303))) (value!182454 lt!1252303)))))

(assert (=> d!1066009 (= (charsOf!3698 lt!1252303) lt!1252505)))

(declare-fun b_lambda!107201 () Bool)

(assert (=> (not b_lambda!107201) (not d!1066009)))

(declare-fun t!294461 () Bool)

(declare-fun tb!207927 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294461) tb!207927))

(declare-fun b!3623869 () Bool)

(declare-fun e!2243076 () Bool)

(declare-fun tp!1106683 () Bool)

(assert (=> b!3623869 (= e!2243076 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 lt!1252303))) (value!182454 lt!1252303)))) tp!1106683))))

(declare-fun result!253346 () Bool)

(assert (=> tb!207927 (= result!253346 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 lt!1252303))) (value!182454 lt!1252303))) e!2243076))))

(assert (= tb!207927 b!3623869))

(declare-fun m!4124107 () Bool)

(assert (=> b!3623869 m!4124107))

(declare-fun m!4124109 () Bool)

(assert (=> tb!207927 m!4124109))

(assert (=> d!1066009 t!294461))

(declare-fun b_and!265221 () Bool)

(assert (= b_and!265219 (and (=> t!294461 result!253346) b_and!265221)))

(declare-fun tb!207929 () Bool)

(declare-fun t!294463 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294463) tb!207929))

(declare-fun result!253348 () Bool)

(assert (= result!253348 result!253346))

(assert (=> d!1066009 t!294463))

(declare-fun b_and!265223 () Bool)

(assert (= b_and!265213 (and (=> t!294463 result!253348) b_and!265223)))

(declare-fun tb!207931 () Bool)

(declare-fun t!294465 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294465) tb!207931))

(declare-fun result!253350 () Bool)

(assert (= result!253350 result!253346))

(assert (=> d!1066009 t!294465))

(declare-fun b_and!265225 () Bool)

(assert (= b_and!265211 (and (=> t!294465 result!253350) b_and!265225)))

(declare-fun tb!207933 () Bool)

(declare-fun t!294467 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294467) tb!207933))

(declare-fun result!253352 () Bool)

(assert (= result!253352 result!253346))

(assert (=> d!1066009 t!294467))

(declare-fun b_and!265227 () Bool)

(assert (= b_and!265217 (and (=> t!294467 result!253352) b_and!265227)))

(declare-fun t!294469 () Bool)

(declare-fun tb!207935 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294469) tb!207935))

(declare-fun result!253354 () Bool)

(assert (= result!253354 result!253346))

(assert (=> d!1066009 t!294469))

(declare-fun b_and!265229 () Bool)

(assert (= b_and!265215 (and (=> t!294469 result!253354) b_and!265229)))

(declare-fun m!4124111 () Bool)

(assert (=> d!1066009 m!4124111))

(declare-fun m!4124113 () Bool)

(assert (=> d!1066009 m!4124113))

(assert (=> b!3622903 d!1066009))

(declare-fun b!3623870 () Bool)

(declare-fun res!1466765 () Bool)

(declare-fun e!2243080 () Bool)

(assert (=> b!3623870 (=> (not res!1466765) (not e!2243080))))

(declare-fun lt!1252506 () Option!7998)

(assert (=> b!3623870 (= res!1466765 (= (rule!8446 (_1!22152 (get!12450 lt!1252506))) (rule!8446 lt!1252303)))))

(declare-fun b!3623871 () Bool)

(declare-fun res!1466769 () Bool)

(assert (=> b!3623871 (=> (not res!1466769) (not e!2243080))))

(assert (=> b!3623871 (= res!1466769 (< (size!29114 (_2!22152 (get!12450 lt!1252506))) (size!29114 lt!1252310)))))

(declare-fun b!3623872 () Bool)

(declare-fun e!2243078 () Bool)

(assert (=> b!3623872 (= e!2243078 (matchR!5012 (regex!5684 (rule!8446 lt!1252303)) (_1!22157 (findLongestMatchInner!1017 (regex!5684 (rule!8446 lt!1252303)) Nil!38166 (size!29114 Nil!38166) lt!1252310 lt!1252310 (size!29114 lt!1252310)))))))

(declare-fun d!1066011 () Bool)

(declare-fun e!2243077 () Bool)

(assert (=> d!1066011 e!2243077))

(declare-fun res!1466767 () Bool)

(assert (=> d!1066011 (=> res!1466767 e!2243077)))

(assert (=> d!1066011 (= res!1466767 (isEmpty!22563 lt!1252506))))

(declare-fun e!2243079 () Option!7998)

(assert (=> d!1066011 (= lt!1252506 e!2243079)))

(declare-fun c!627087 () Bool)

(declare-fun lt!1252510 () tuple2!38046)

(assert (=> d!1066011 (= c!627087 (isEmpty!22559 (_1!22157 lt!1252510)))))

(assert (=> d!1066011 (= lt!1252510 (findLongestMatch!932 (regex!5684 (rule!8446 lt!1252303)) lt!1252310))))

(assert (=> d!1066011 (ruleValid!1949 thiss!23823 (rule!8446 lt!1252303))))

(assert (=> d!1066011 (= (maxPrefixOneRule!1947 thiss!23823 (rule!8446 lt!1252303) lt!1252310) lt!1252506)))

(declare-fun b!3623873 () Bool)

(assert (=> b!3623873 (= e!2243079 (Some!7997 (tuple2!38037 (Token!10735 (apply!9186 (transformation!5684 (rule!8446 lt!1252303)) (seqFromList!4233 (_1!22157 lt!1252510))) (rule!8446 lt!1252303) (size!29111 (seqFromList!4233 (_1!22157 lt!1252510))) (_1!22157 lt!1252510)) (_2!22157 lt!1252510))))))

(declare-fun lt!1252509 () Unit!54914)

(assert (=> b!3623873 (= lt!1252509 (longestMatchIsAcceptedByMatchOrIsEmpty!990 (regex!5684 (rule!8446 lt!1252303)) lt!1252310))))

(declare-fun res!1466766 () Bool)

(assert (=> b!3623873 (= res!1466766 (isEmpty!22559 (_1!22157 (findLongestMatchInner!1017 (regex!5684 (rule!8446 lt!1252303)) Nil!38166 (size!29114 Nil!38166) lt!1252310 lt!1252310 (size!29114 lt!1252310)))))))

(assert (=> b!3623873 (=> res!1466766 e!2243078)))

(assert (=> b!3623873 e!2243078))

(declare-fun lt!1252507 () Unit!54914)

(assert (=> b!3623873 (= lt!1252507 lt!1252509)))

(declare-fun lt!1252508 () Unit!54914)

(assert (=> b!3623873 (= lt!1252508 (lemmaSemiInverse!1435 (transformation!5684 (rule!8446 lt!1252303)) (seqFromList!4233 (_1!22157 lt!1252510))))))

(declare-fun b!3623874 () Bool)

(assert (=> b!3623874 (= e!2243077 e!2243080)))

(declare-fun res!1466764 () Bool)

(assert (=> b!3623874 (=> (not res!1466764) (not e!2243080))))

(assert (=> b!3623874 (= res!1466764 (matchR!5012 (regex!5684 (rule!8446 lt!1252303)) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252506))))))))

(declare-fun b!3623875 () Bool)

(declare-fun res!1466768 () Bool)

(assert (=> b!3623875 (=> (not res!1466768) (not e!2243080))))

(assert (=> b!3623875 (= res!1466768 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252506)))) (_2!22152 (get!12450 lt!1252506))) lt!1252310))))

(declare-fun b!3623876 () Bool)

(declare-fun res!1466770 () Bool)

(assert (=> b!3623876 (=> (not res!1466770) (not e!2243080))))

(assert (=> b!3623876 (= res!1466770 (= (value!182454 (_1!22152 (get!12450 lt!1252506))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252506)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252506)))))))))

(declare-fun b!3623877 () Bool)

(assert (=> b!3623877 (= e!2243080 (= (size!29110 (_1!22152 (get!12450 lt!1252506))) (size!29114 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252506))))))))

(declare-fun b!3623878 () Bool)

(assert (=> b!3623878 (= e!2243079 None!7997)))

(assert (= (and d!1066011 c!627087) b!3623878))

(assert (= (and d!1066011 (not c!627087)) b!3623873))

(assert (= (and b!3623873 (not res!1466766)) b!3623872))

(assert (= (and d!1066011 (not res!1466767)) b!3623874))

(assert (= (and b!3623874 res!1466764) b!3623875))

(assert (= (and b!3623875 res!1466768) b!3623871))

(assert (= (and b!3623871 res!1466769) b!3623870))

(assert (= (and b!3623870 res!1466765) b!3623876))

(assert (= (and b!3623876 res!1466770) b!3623877))

(declare-fun m!4124115 () Bool)

(assert (=> b!3623873 m!4124115))

(declare-fun m!4124117 () Bool)

(assert (=> b!3623873 m!4124117))

(assert (=> b!3623873 m!4124115))

(assert (=> b!3623873 m!4124047))

(declare-fun m!4124119 () Bool)

(assert (=> b!3623873 m!4124119))

(declare-fun m!4124121 () Bool)

(assert (=> b!3623873 m!4124121))

(assert (=> b!3623873 m!4124115))

(declare-fun m!4124123 () Bool)

(assert (=> b!3623873 m!4124123))

(declare-fun m!4124125 () Bool)

(assert (=> b!3623873 m!4124125))

(assert (=> b!3623873 m!4124119))

(assert (=> b!3623873 m!4124115))

(declare-fun m!4124127 () Bool)

(assert (=> b!3623873 m!4124127))

(declare-fun m!4124129 () Bool)

(assert (=> b!3623873 m!4124129))

(assert (=> b!3623873 m!4124047))

(declare-fun m!4124131 () Bool)

(assert (=> b!3623877 m!4124131))

(declare-fun m!4124133 () Bool)

(assert (=> b!3623877 m!4124133))

(assert (=> b!3623870 m!4124131))

(assert (=> b!3623874 m!4124131))

(declare-fun m!4124135 () Bool)

(assert (=> b!3623874 m!4124135))

(assert (=> b!3623874 m!4124135))

(declare-fun m!4124137 () Bool)

(assert (=> b!3623874 m!4124137))

(assert (=> b!3623874 m!4124137))

(declare-fun m!4124139 () Bool)

(assert (=> b!3623874 m!4124139))

(assert (=> b!3623876 m!4124131))

(declare-fun m!4124141 () Bool)

(assert (=> b!3623876 m!4124141))

(assert (=> b!3623876 m!4124141))

(declare-fun m!4124143 () Bool)

(assert (=> b!3623876 m!4124143))

(assert (=> b!3623872 m!4124047))

(assert (=> b!3623872 m!4124119))

(assert (=> b!3623872 m!4124047))

(assert (=> b!3623872 m!4124119))

(assert (=> b!3623872 m!4124121))

(declare-fun m!4124145 () Bool)

(assert (=> b!3623872 m!4124145))

(assert (=> b!3623871 m!4124131))

(declare-fun m!4124147 () Bool)

(assert (=> b!3623871 m!4124147))

(assert (=> b!3623871 m!4124119))

(assert (=> b!3623875 m!4124131))

(assert (=> b!3623875 m!4124135))

(assert (=> b!3623875 m!4124135))

(assert (=> b!3623875 m!4124137))

(assert (=> b!3623875 m!4124137))

(declare-fun m!4124149 () Bool)

(assert (=> b!3623875 m!4124149))

(declare-fun m!4124151 () Bool)

(assert (=> d!1066011 m!4124151))

(declare-fun m!4124153 () Bool)

(assert (=> d!1066011 m!4124153))

(declare-fun m!4124155 () Bool)

(assert (=> d!1066011 m!4124155))

(declare-fun m!4124157 () Bool)

(assert (=> d!1066011 m!4124157))

(assert (=> b!3622903 d!1066011))

(declare-fun d!1066013 () Bool)

(assert (=> d!1066013 (isEmpty!22563 (maxPrefixOneRule!1947 thiss!23823 (rule!8446 lt!1252303) lt!1252310))))

(declare-fun lt!1252513 () Unit!54914)

(declare-fun choose!21265 (LexerInterface!5273 Rule!11168 List!38291 List!38290) Unit!54914)

(assert (=> d!1066013 (= lt!1252513 (choose!21265 thiss!23823 (rule!8446 lt!1252303) rules!3307 lt!1252310))))

(assert (=> d!1066013 (not (isEmpty!22558 rules!3307))))

(assert (=> d!1066013 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!500 thiss!23823 (rule!8446 lt!1252303) rules!3307 lt!1252310) lt!1252513)))

(declare-fun bs!571326 () Bool)

(assert (= bs!571326 d!1066013))

(assert (=> bs!571326 m!4122895))

(assert (=> bs!571326 m!4122895))

(assert (=> bs!571326 m!4122897))

(declare-fun m!4124159 () Bool)

(assert (=> bs!571326 m!4124159))

(assert (=> bs!571326 m!4122233))

(assert (=> b!3622903 d!1066013))

(declare-fun d!1066015 () Bool)

(assert (=> d!1066015 (= (isEmpty!22563 (maxPrefixOneRule!1947 thiss!23823 (rule!8446 lt!1252303) lt!1252310)) (not ((_ is Some!7997) (maxPrefixOneRule!1947 thiss!23823 (rule!8446 lt!1252303) lt!1252310))))))

(assert (=> b!3622903 d!1066015))

(declare-fun d!1066017 () Bool)

(assert (=> d!1066017 (not (matchR!5012 (regex!5684 (rule!8446 lt!1252303)) lt!1252314))))

(declare-fun lt!1252516 () Unit!54914)

(declare-fun choose!21266 (LexerInterface!5273 Rule!11168 List!38290 List!38290) Unit!54914)

(assert (=> d!1066017 (= lt!1252516 (choose!21266 thiss!23823 (rule!8446 lt!1252303) lt!1252314 (++!9500 lt!1252088 suffix!1395)))))

(assert (=> d!1066017 (isPrefix!3047 lt!1252314 (++!9500 lt!1252088 suffix!1395))))

(assert (=> d!1066017 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!488 thiss!23823 (rule!8446 lt!1252303) lt!1252314 (++!9500 lt!1252088 suffix!1395)) lt!1252516)))

(declare-fun bs!571327 () Bool)

(assert (= bs!571327 d!1066017))

(assert (=> bs!571327 m!4122901))

(assert (=> bs!571327 m!4122277))

(declare-fun m!4124161 () Bool)

(assert (=> bs!571327 m!4124161))

(assert (=> bs!571327 m!4122277))

(declare-fun m!4124163 () Bool)

(assert (=> bs!571327 m!4124163))

(assert (=> b!3622903 d!1066017))

(assert (=> b!3622903 d!1065499))

(declare-fun d!1066019 () Bool)

(assert (=> d!1066019 true))

(declare-fun lt!1252519 () Bool)

(assert (=> d!1066019 (= lt!1252519 (rulesValidInductive!1997 thiss!23823 rules!3307))))

(declare-fun lambda!124168 () Int)

(declare-fun forall!8151 (List!38291 Int) Bool)

(assert (=> d!1066019 (= lt!1252519 (forall!8151 rules!3307 lambda!124168))))

(assert (=> d!1066019 (= (rulesValid!2168 thiss!23823 rules!3307) lt!1252519)))

(declare-fun bs!571328 () Bool)

(assert (= bs!571328 d!1066019))

(assert (=> bs!571328 m!4122689))

(declare-fun m!4124165 () Bool)

(assert (=> bs!571328 m!4124165))

(assert (=> d!1065557 d!1066019))

(assert (=> b!3622721 d!1065987))

(declare-fun d!1066021 () Bool)

(declare-fun lt!1252520 () Int)

(assert (=> d!1066021 (>= lt!1252520 0)))

(declare-fun e!2243081 () Int)

(assert (=> d!1066021 (= lt!1252520 e!2243081)))

(declare-fun c!627088 () Bool)

(assert (=> d!1066021 (= c!627088 ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1066021 (= (size!29114 lt!1252088) lt!1252520)))

(declare-fun b!3623881 () Bool)

(assert (=> b!3623881 (= e!2243081 0)))

(declare-fun b!3623882 () Bool)

(assert (=> b!3623882 (= e!2243081 (+ 1 (size!29114 (t!294261 lt!1252088))))))

(assert (= (and d!1066021 c!627088) b!3623881))

(assert (= (and d!1066021 (not c!627088)) b!3623882))

(declare-fun m!4124167 () Bool)

(assert (=> b!3623882 m!4124167))

(assert (=> b!3622721 d!1066021))

(declare-fun bs!571329 () Bool)

(declare-fun d!1066023 () Bool)

(assert (= bs!571329 (and d!1066023 d!1065451)))

(declare-fun lambda!124171 () Int)

(assert (=> bs!571329 (= (and (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (= lambda!124171 lambda!124137))))

(assert (=> d!1066023 true))

(assert (=> d!1066023 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 (h!43587 rules!3307)))) (dynLambda!16518 order!20857 lambda!124171))))

(assert (=> d!1066023 true))

(assert (=> d!1066023 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (h!43587 rules!3307)))) (dynLambda!16518 order!20857 lambda!124171))))

(declare-fun Forall!1367 (Int) Bool)

(assert (=> d!1066023 (= (semiInverseModEq!2411 (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (h!43587 rules!3307)))) (Forall!1367 lambda!124171))))

(declare-fun bs!571330 () Bool)

(assert (= bs!571330 d!1066023))

(declare-fun m!4124169 () Bool)

(assert (=> bs!571330 m!4124169))

(assert (=> d!1065555 d!1066023))

(declare-fun d!1066025 () Bool)

(declare-fun lt!1252521 () Int)

(assert (=> d!1066025 (>= lt!1252521 0)))

(declare-fun e!2243082 () Int)

(assert (=> d!1066025 (= lt!1252521 e!2243082)))

(declare-fun c!627089 () Bool)

(assert (=> d!1066025 (= c!627089 ((_ is Nil!38166) (originalCharacters!6398 token!511)))))

(assert (=> d!1066025 (= (size!29114 (originalCharacters!6398 token!511)) lt!1252521)))

(declare-fun b!3623887 () Bool)

(assert (=> b!3623887 (= e!2243082 0)))

(declare-fun b!3623888 () Bool)

(assert (=> b!3623888 (= e!2243082 (+ 1 (size!29114 (t!294261 (originalCharacters!6398 token!511)))))))

(assert (= (and d!1066025 c!627089) b!3623887))

(assert (= (and d!1066025 (not c!627089)) b!3623888))

(declare-fun m!4124171 () Bool)

(assert (=> b!3623888 m!4124171))

(assert (=> b!3622687 d!1066025))

(assert (=> b!3622708 d!1065495))

(assert (=> b!3622708 d!1065505))

(assert (=> b!3622708 d!1065579))

(declare-fun b!3623889 () Bool)

(declare-fun e!2243085 () Bool)

(declare-fun e!2243083 () Bool)

(assert (=> b!3623889 (= e!2243085 e!2243083)))

(declare-fun c!627091 () Bool)

(assert (=> b!3623889 (= c!627091 ((_ is EmptyLang!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))))

(declare-fun b!3623891 () Bool)

(declare-fun e!2243088 () Bool)

(declare-fun e!2243084 () Bool)

(assert (=> b!3623891 (= e!2243088 e!2243084)))

(declare-fun res!1466774 () Bool)

(assert (=> b!3623891 (=> res!1466774 e!2243084)))

(declare-fun call!262177 () Bool)

(assert (=> b!3623891 (= res!1466774 call!262177)))

(declare-fun e!2243089 () Bool)

(declare-fun b!3623892 () Bool)

(assert (=> b!3623892 (= e!2243089 (nullable!3613 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))))

(declare-fun b!3623893 () Bool)

(assert (=> b!3623893 (= e!2243084 (not (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (c!626792 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))))))

(declare-fun b!3623894 () Bool)

(declare-fun res!1466775 () Bool)

(declare-fun e!2243087 () Bool)

(assert (=> b!3623894 (=> (not res!1466775) (not e!2243087))))

(assert (=> b!3623894 (= res!1466775 (not call!262177))))

(declare-fun b!3623895 () Bool)

(declare-fun lt!1252522 () Bool)

(assert (=> b!3623895 (= e!2243083 (not lt!1252522))))

(declare-fun b!3623896 () Bool)

(declare-fun res!1466773 () Bool)

(assert (=> b!3623896 (=> res!1466773 e!2243084)))

(assert (=> b!3623896 (= res!1466773 (not (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3623897 () Bool)

(assert (=> b!3623897 (= e!2243085 (= lt!1252522 call!262177))))

(declare-fun b!3623898 () Bool)

(declare-fun res!1466771 () Bool)

(declare-fun e!2243086 () Bool)

(assert (=> b!3623898 (=> res!1466771 e!2243086)))

(assert (=> b!3623898 (= res!1466771 (not ((_ is ElementMatch!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))))

(assert (=> b!3623898 (= e!2243083 e!2243086)))

(declare-fun b!3623899 () Bool)

(assert (=> b!3623899 (= e!2243087 (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (c!626792 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))))

(declare-fun bm!262172 () Bool)

(assert (=> bm!262172 (= call!262177 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun b!3623900 () Bool)

(assert (=> b!3623900 (= e!2243089 (matchR!5012 (derivativeStep!3162 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun d!1066027 () Bool)

(assert (=> d!1066027 e!2243085))

(declare-fun c!627092 () Bool)

(assert (=> d!1066027 (= c!627092 ((_ is EmptyExpr!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))))

(assert (=> d!1066027 (= lt!1252522 e!2243089)))

(declare-fun c!627090 () Bool)

(assert (=> d!1066027 (= c!627090 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> d!1066027 (validRegex!4775 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(assert (=> d!1066027 (= (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) lt!1252522)))

(declare-fun b!3623890 () Bool)

(declare-fun res!1466777 () Bool)

(assert (=> b!3623890 (=> res!1466777 e!2243086)))

(assert (=> b!3623890 (= res!1466777 e!2243087)))

(declare-fun res!1466778 () Bool)

(assert (=> b!3623890 (=> (not res!1466778) (not e!2243087))))

(assert (=> b!3623890 (= res!1466778 lt!1252522)))

(declare-fun b!3623901 () Bool)

(declare-fun res!1466776 () Bool)

(assert (=> b!3623901 (=> (not res!1466776) (not e!2243087))))

(assert (=> b!3623901 (= res!1466776 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun b!3623902 () Bool)

(assert (=> b!3623902 (= e!2243086 e!2243088)))

(declare-fun res!1466772 () Bool)

(assert (=> b!3623902 (=> (not res!1466772) (not e!2243088))))

(assert (=> b!3623902 (= res!1466772 (not lt!1252522))))

(assert (= (and d!1066027 c!627090) b!3623892))

(assert (= (and d!1066027 (not c!627090)) b!3623900))

(assert (= (and d!1066027 c!627092) b!3623897))

(assert (= (and d!1066027 (not c!627092)) b!3623889))

(assert (= (and b!3623889 c!627091) b!3623895))

(assert (= (and b!3623889 (not c!627091)) b!3623898))

(assert (= (and b!3623898 (not res!1466771)) b!3623890))

(assert (= (and b!3623890 res!1466778) b!3623894))

(assert (= (and b!3623894 res!1466775) b!3623901))

(assert (= (and b!3623901 res!1466776) b!3623899))

(assert (= (and b!3623890 (not res!1466777)) b!3623902))

(assert (= (and b!3623902 res!1466772) b!3623891))

(assert (= (and b!3623891 (not res!1466774)) b!3623896))

(assert (= (and b!3623896 (not res!1466773)) b!3623893))

(assert (= (or b!3623897 b!3623891 b!3623894) bm!262172))

(assert (=> b!3623896 m!4122243))

(assert (=> b!3623896 m!4123007))

(assert (=> b!3623896 m!4123007))

(assert (=> b!3623896 m!4123009))

(assert (=> b!3623901 m!4122243))

(assert (=> b!3623901 m!4123007))

(assert (=> b!3623901 m!4123007))

(assert (=> b!3623901 m!4123009))

(assert (=> bm!262172 m!4122243))

(assert (=> bm!262172 m!4123011))

(declare-fun m!4124173 () Bool)

(assert (=> b!3623892 m!4124173))

(assert (=> b!3623899 m!4122243))

(assert (=> b!3623899 m!4123015))

(assert (=> d!1066027 m!4122243))

(assert (=> d!1066027 m!4123011))

(declare-fun m!4124175 () Bool)

(assert (=> d!1066027 m!4124175))

(assert (=> b!3623893 m!4122243))

(assert (=> b!3623893 m!4123015))

(assert (=> b!3623900 m!4122243))

(assert (=> b!3623900 m!4123015))

(assert (=> b!3623900 m!4123015))

(declare-fun m!4124177 () Bool)

(assert (=> b!3623900 m!4124177))

(assert (=> b!3623900 m!4122243))

(assert (=> b!3623900 m!4123007))

(assert (=> b!3623900 m!4124177))

(assert (=> b!3623900 m!4123007))

(declare-fun m!4124179 () Bool)

(assert (=> b!3623900 m!4124179))

(assert (=> b!3622708 d!1066027))

(assert (=> b!3622708 d!1065947))

(declare-fun b!3623906 () Bool)

(declare-fun e!2243090 () Bool)

(declare-fun lt!1252523 () List!38290)

(assert (=> b!3623906 (= e!2243090 (or (not (= (_2!22152 (get!12450 lt!1252326)) Nil!38166)) (= lt!1252523 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))))))))

(declare-fun b!3623905 () Bool)

(declare-fun res!1466779 () Bool)

(assert (=> b!3623905 (=> (not res!1466779) (not e!2243090))))

(assert (=> b!3623905 (= res!1466779 (= (size!29114 lt!1252523) (+ (size!29114 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (size!29114 (_2!22152 (get!12450 lt!1252326))))))))

(declare-fun b!3623903 () Bool)

(declare-fun e!2243091 () List!38290)

(assert (=> b!3623903 (= e!2243091 (_2!22152 (get!12450 lt!1252326)))))

(declare-fun d!1066029 () Bool)

(assert (=> d!1066029 e!2243090))

(declare-fun res!1466780 () Bool)

(assert (=> d!1066029 (=> (not res!1466780) (not e!2243090))))

(assert (=> d!1066029 (= res!1466780 (= (content!5464 lt!1252523) ((_ map or) (content!5464 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (content!5464 (_2!22152 (get!12450 lt!1252326))))))))

(assert (=> d!1066029 (= lt!1252523 e!2243091)))

(declare-fun c!627093 () Bool)

(assert (=> d!1066029 (= c!627093 ((_ is Nil!38166) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))))))

(assert (=> d!1066029 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326)))) (_2!22152 (get!12450 lt!1252326))) lt!1252523)))

(declare-fun b!3623904 () Bool)

(assert (=> b!3623904 (= e!2243091 (Cons!38166 (h!43586 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (++!9500 (t!294261 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252326))))) (_2!22152 (get!12450 lt!1252326)))))))

(assert (= (and d!1066029 c!627093) b!3623903))

(assert (= (and d!1066029 (not c!627093)) b!3623904))

(assert (= (and d!1066029 res!1466780) b!3623905))

(assert (= (and b!3623905 res!1466779) b!3623906))

(declare-fun m!4124181 () Bool)

(assert (=> b!3623905 m!4124181))

(assert (=> b!3623905 m!4122953))

(declare-fun m!4124183 () Bool)

(assert (=> b!3623905 m!4124183))

(assert (=> b!3623905 m!4122975))

(declare-fun m!4124185 () Bool)

(assert (=> d!1066029 m!4124185))

(assert (=> d!1066029 m!4122953))

(declare-fun m!4124187 () Bool)

(assert (=> d!1066029 m!4124187))

(declare-fun m!4124189 () Bool)

(assert (=> d!1066029 m!4124189))

(declare-fun m!4124191 () Bool)

(assert (=> b!3623904 m!4124191))

(assert (=> b!3622942 d!1066029))

(assert (=> b!3622942 d!1065979))

(assert (=> b!3622942 d!1065981))

(assert (=> b!3622942 d!1065939))

(declare-fun d!1066031 () Bool)

(assert (=> d!1066031 (= (isEmpty!22559 (tail!5611 lt!1252086)) ((_ is Nil!38166) (tail!5611 lt!1252086)))))

(assert (=> b!3623004 d!1066031))

(declare-fun d!1066033 () Bool)

(assert (=> d!1066033 (= (tail!5611 lt!1252086) (t!294261 lt!1252086))))

(assert (=> b!3623004 d!1066033))

(declare-fun d!1066035 () Bool)

(assert (=> d!1066035 (= (get!12450 lt!1252235) (v!37767 lt!1252235))))

(assert (=> b!3622752 d!1066035))

(declare-fun d!1066037 () Bool)

(assert (=> d!1066037 (= (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235))))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun b_lambda!107203 () Bool)

(assert (=> (not b_lambda!107203) (not d!1066037)))

(declare-fun tb!207937 () Bool)

(declare-fun t!294471 () Bool)

(assert (=> (and b!3622397 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294471) tb!207937))

(declare-fun result!253356 () Bool)

(assert (=> tb!207937 (= result!253356 (inv!21 (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235)))))))))

(declare-fun m!4124193 () Bool)

(assert (=> tb!207937 m!4124193))

(assert (=> d!1066037 t!294471))

(declare-fun b_and!265231 () Bool)

(assert (= b_and!265207 (and (=> t!294471 result!253356) b_and!265231)))

(declare-fun tb!207939 () Bool)

(declare-fun t!294473 () Bool)

(assert (=> (and b!3622399 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294473) tb!207939))

(declare-fun result!253358 () Bool)

(assert (= result!253358 result!253356))

(assert (=> d!1066037 t!294473))

(declare-fun b_and!265233 () Bool)

(assert (= b_and!265203 (and (=> t!294473 result!253358) b_and!265233)))

(declare-fun t!294475 () Bool)

(declare-fun tb!207941 () Bool)

(assert (=> (and b!3623046 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294475) tb!207941))

(declare-fun result!253360 () Bool)

(assert (= result!253360 result!253356))

(assert (=> d!1066037 t!294475))

(declare-fun b_and!265235 () Bool)

(assert (= b_and!265205 (and (=> t!294475 result!253360) b_and!265235)))

(declare-fun tb!207943 () Bool)

(declare-fun t!294477 () Bool)

(assert (=> (and b!3622375 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294477) tb!207943))

(declare-fun result!253362 () Bool)

(assert (= result!253362 result!253356))

(assert (=> d!1066037 t!294477))

(declare-fun b_and!265237 () Bool)

(assert (= b_and!265209 (and (=> t!294477 result!253362) b_and!265237)))

(declare-fun tb!207945 () Bool)

(declare-fun t!294479 () Bool)

(assert (=> (and b!3622381 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294479) tb!207945))

(declare-fun result!253364 () Bool)

(assert (= result!253364 result!253356))

(assert (=> d!1066037 t!294479))

(declare-fun b_and!265239 () Bool)

(assert (= b_and!265201 (and (=> t!294479 result!253364) b_and!265239)))

(assert (=> d!1066037 m!4122679))

(declare-fun m!4124195 () Bool)

(assert (=> d!1066037 m!4124195))

(assert (=> b!3622752 d!1066037))

(declare-fun d!1066039 () Bool)

(assert (=> d!1066039 (= (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235)))) (fromListB!1949 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235)))))))

(declare-fun bs!571331 () Bool)

(assert (= bs!571331 d!1066039))

(declare-fun m!4124197 () Bool)

(assert (=> bs!571331 m!4124197))

(assert (=> b!3622752 d!1066039))

(declare-fun d!1066041 () Bool)

(assert (=> d!1066041 (= (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))) (v!37768 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))

(assert (=> b!3622902 d!1066041))

(declare-fun b!3623907 () Bool)

(declare-fun e!2243094 () Bool)

(declare-fun lt!1252526 () Option!7999)

(assert (=> b!3623907 (= e!2243094 (= (tag!6404 (get!12451 lt!1252526)) (tag!6404 (rule!8446 lt!1252303))))))

(declare-fun b!3623908 () Bool)

(declare-fun e!2243093 () Option!7999)

(declare-fun e!2243095 () Option!7999)

(assert (=> b!3623908 (= e!2243093 e!2243095)))

(declare-fun c!627094 () Bool)

(assert (=> b!3623908 (= c!627094 (and ((_ is Cons!38167) rules!3307) (not (= (tag!6404 (h!43587 rules!3307)) (tag!6404 (rule!8446 lt!1252303))))))))

(declare-fun b!3623909 () Bool)

(declare-fun lt!1252525 () Unit!54914)

(declare-fun lt!1252524 () Unit!54914)

(assert (=> b!3623909 (= lt!1252525 lt!1252524)))

(assert (=> b!3623909 (rulesInvariant!4670 thiss!23823 (t!294262 rules!3307))))

(assert (=> b!3623909 (= lt!1252524 (lemmaInvariantOnRulesThenOnTail!543 thiss!23823 (h!43587 rules!3307) (t!294262 rules!3307)))))

(assert (=> b!3623909 (= e!2243095 (getRuleFromTag!1290 thiss!23823 (t!294262 rules!3307) (tag!6404 (rule!8446 lt!1252303))))))

(declare-fun b!3623911 () Bool)

(assert (=> b!3623911 (= e!2243093 (Some!7998 (h!43587 rules!3307)))))

(declare-fun b!3623912 () Bool)

(assert (=> b!3623912 (= e!2243095 None!7998)))

(declare-fun d!1066043 () Bool)

(declare-fun e!2243096 () Bool)

(assert (=> d!1066043 e!2243096))

(declare-fun res!1466781 () Bool)

(assert (=> d!1066043 (=> res!1466781 e!2243096)))

(assert (=> d!1066043 (= res!1466781 (isEmpty!22562 lt!1252526))))

(assert (=> d!1066043 (= lt!1252526 e!2243093)))

(declare-fun c!627095 () Bool)

(assert (=> d!1066043 (= c!627095 (and ((_ is Cons!38167) rules!3307) (= (tag!6404 (h!43587 rules!3307)) (tag!6404 (rule!8446 lt!1252303)))))))

(assert (=> d!1066043 (rulesInvariant!4670 thiss!23823 rules!3307)))

(assert (=> d!1066043 (= (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))) lt!1252526)))

(declare-fun b!3623910 () Bool)

(assert (=> b!3623910 (= e!2243096 e!2243094)))

(declare-fun res!1466782 () Bool)

(assert (=> b!3623910 (=> (not res!1466782) (not e!2243094))))

(assert (=> b!3623910 (= res!1466782 (contains!7432 rules!3307 (get!12451 lt!1252526)))))

(assert (= (and d!1066043 c!627095) b!3623911))

(assert (= (and d!1066043 (not c!627095)) b!3623908))

(assert (= (and b!3623908 c!627094) b!3623909))

(assert (= (and b!3623908 (not c!627094)) b!3623912))

(assert (= (and d!1066043 (not res!1466781)) b!3623910))

(assert (= (and b!3623910 res!1466782) b!3623907))

(declare-fun m!4124199 () Bool)

(assert (=> b!3623907 m!4124199))

(assert (=> b!3623909 m!4122771))

(assert (=> b!3623909 m!4122775))

(declare-fun m!4124201 () Bool)

(assert (=> b!3623909 m!4124201))

(declare-fun m!4124203 () Bool)

(assert (=> d!1066043 m!4124203))

(assert (=> d!1066043 m!4122217))

(assert (=> b!3623910 m!4124199))

(assert (=> b!3623910 m!4124199))

(declare-fun m!4124205 () Bool)

(assert (=> b!3623910 m!4124205))

(assert (=> b!3622902 d!1066043))

(declare-fun d!1066045 () Bool)

(declare-fun lt!1252527 () Int)

(assert (=> d!1066045 (>= lt!1252527 0)))

(declare-fun e!2243097 () Int)

(assert (=> d!1066045 (= lt!1252527 e!2243097)))

(declare-fun c!627096 () Bool)

(assert (=> d!1066045 (= c!627096 ((_ is Nil!38166) lt!1252247))))

(assert (=> d!1066045 (= (size!29114 lt!1252247) lt!1252527)))

(declare-fun b!3623913 () Bool)

(assert (=> b!3623913 (= e!2243097 0)))

(declare-fun b!3623914 () Bool)

(assert (=> b!3623914 (= e!2243097 (+ 1 (size!29114 (t!294261 lt!1252247))))))

(assert (= (and d!1066045 c!627096) b!3623913))

(assert (= (and d!1066045 (not c!627096)) b!3623914))

(declare-fun m!4124207 () Bool)

(assert (=> b!3623914 m!4124207))

(assert (=> b!3622775 d!1066045))

(assert (=> b!3622775 d!1066021))

(declare-fun d!1066047 () Bool)

(declare-fun lt!1252528 () Int)

(assert (=> d!1066047 (>= lt!1252528 0)))

(declare-fun e!2243098 () Int)

(assert (=> d!1066047 (= lt!1252528 e!2243098)))

(declare-fun c!627097 () Bool)

(assert (=> d!1066047 (= c!627097 ((_ is Nil!38166) suffix!1395))))

(assert (=> d!1066047 (= (size!29114 suffix!1395) lt!1252528)))

(declare-fun b!3623915 () Bool)

(assert (=> b!3623915 (= e!2243098 0)))

(declare-fun b!3623916 () Bool)

(assert (=> b!3623916 (= e!2243098 (+ 1 (size!29114 (t!294261 suffix!1395))))))

(assert (= (and d!1066047 c!627097) b!3623915))

(assert (= (and d!1066047 (not c!627097)) b!3623916))

(declare-fun m!4124209 () Bool)

(assert (=> b!3623916 m!4124209))

(assert (=> b!3622775 d!1066047))

(assert (=> d!1065485 d!1065487))

(assert (=> d!1065485 d!1065543))

(declare-fun d!1066049 () Bool)

(assert (=> d!1066049 (isPrefix!3047 lt!1252086 (++!9500 lt!1252086 (_2!22152 lt!1252077)))))

(assert (=> d!1066049 true))

(declare-fun _$46!1458 () Unit!54914)

(assert (=> d!1066049 (= (choose!21257 lt!1252086 (_2!22152 lt!1252077)) _$46!1458)))

(declare-fun bs!571332 () Bool)

(assert (= bs!571332 d!1066049))

(assert (=> bs!571332 m!4122263))

(assert (=> bs!571332 m!4122263))

(assert (=> bs!571332 m!4122265))

(assert (=> d!1065485 d!1066049))

(declare-fun d!1066051 () Bool)

(declare-fun lt!1252529 () Int)

(assert (=> d!1066051 (>= lt!1252529 0)))

(declare-fun e!2243099 () Int)

(assert (=> d!1066051 (= lt!1252529 e!2243099)))

(declare-fun c!627098 () Bool)

(assert (=> d!1066051 (= c!627098 ((_ is Nil!38166) lt!1252319))))

(assert (=> d!1066051 (= (size!29114 lt!1252319) lt!1252529)))

(declare-fun b!3623917 () Bool)

(assert (=> b!3623917 (= e!2243099 0)))

(declare-fun b!3623918 () Bool)

(assert (=> b!3623918 (= e!2243099 (+ 1 (size!29114 (t!294261 lt!1252319))))))

(assert (= (and d!1066051 c!627098) b!3623917))

(assert (= (and d!1066051 (not c!627098)) b!3623918))

(declare-fun m!4124211 () Bool)

(assert (=> b!3623918 m!4124211))

(assert (=> b!3622907 d!1066051))

(assert (=> b!3622907 d!1065989))

(declare-fun d!1066053 () Bool)

(declare-fun lt!1252530 () Int)

(assert (=> d!1066053 (>= lt!1252530 0)))

(declare-fun e!2243100 () Int)

(assert (=> d!1066053 (= lt!1252530 e!2243100)))

(declare-fun c!627099 () Bool)

(assert (=> d!1066053 (= c!627099 ((_ is Nil!38166) (_2!22152 lt!1252077)))))

(assert (=> d!1066053 (= (size!29114 (_2!22152 lt!1252077)) lt!1252530)))

(declare-fun b!3623919 () Bool)

(assert (=> b!3623919 (= e!2243100 0)))

(declare-fun b!3623920 () Bool)

(assert (=> b!3623920 (= e!2243100 (+ 1 (size!29114 (t!294261 (_2!22152 lt!1252077)))))))

(assert (= (and d!1066053 c!627099) b!3623919))

(assert (= (and d!1066053 (not c!627099)) b!3623920))

(declare-fun m!4124213 () Bool)

(assert (=> b!3623920 m!4124213))

(assert (=> b!3622907 d!1066053))

(declare-fun d!1066055 () Bool)

(assert (=> d!1066055 (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (h!43586 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(assert (=> b!3623016 d!1066055))

(declare-fun d!1066057 () Bool)

(declare-fun lt!1252531 () Int)

(assert (=> d!1066057 (>= lt!1252531 0)))

(declare-fun e!2243101 () Int)

(assert (=> d!1066057 (= lt!1252531 e!2243101)))

(declare-fun c!627100 () Bool)

(assert (=> d!1066057 (= c!627100 ((_ is Nil!38166) (_2!22152 (get!12450 lt!1252326))))))

(assert (=> d!1066057 (= (size!29114 (_2!22152 (get!12450 lt!1252326))) lt!1252531)))

(declare-fun b!3623921 () Bool)

(assert (=> b!3623921 (= e!2243101 0)))

(declare-fun b!3623922 () Bool)

(assert (=> b!3623922 (= e!2243101 (+ 1 (size!29114 (t!294261 (_2!22152 (get!12450 lt!1252326))))))))

(assert (= (and d!1066057 c!627100) b!3623921))

(assert (= (and d!1066057 (not c!627100)) b!3623922))

(declare-fun m!4124215 () Bool)

(assert (=> b!3623922 m!4124215))

(assert (=> b!3622938 d!1066057))

(assert (=> b!3622938 d!1065939))

(assert (=> b!3622938 d!1066021))

(declare-fun b!3623923 () Bool)

(declare-fun e!2243104 () Bool)

(declare-fun e!2243102 () Bool)

(assert (=> b!3623923 (= e!2243104 e!2243102)))

(declare-fun c!627102 () Bool)

(assert (=> b!3623923 (= c!627102 ((_ is EmptyLang!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun b!3623925 () Bool)

(declare-fun e!2243107 () Bool)

(declare-fun e!2243103 () Bool)

(assert (=> b!3623925 (= e!2243107 e!2243103)))

(declare-fun res!1466786 () Bool)

(assert (=> b!3623925 (=> res!1466786 e!2243103)))

(declare-fun call!262178 () Bool)

(assert (=> b!3623925 (= res!1466786 call!262178)))

(declare-fun b!3623926 () Bool)

(declare-fun e!2243108 () Bool)

(assert (=> b!3623926 (= e!2243108 (nullable!3613 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun b!3623927 () Bool)

(assert (=> b!3623927 (= e!2243103 (not (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (c!626792 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))))))))

(declare-fun b!3623928 () Bool)

(declare-fun res!1466787 () Bool)

(declare-fun e!2243106 () Bool)

(assert (=> b!3623928 (=> (not res!1466787) (not e!2243106))))

(assert (=> b!3623928 (= res!1466787 (not call!262178))))

(declare-fun b!3623929 () Bool)

(declare-fun lt!1252532 () Bool)

(assert (=> b!3623929 (= e!2243102 (not lt!1252532))))

(declare-fun b!3623930 () Bool)

(declare-fun res!1466785 () Bool)

(assert (=> b!3623930 (=> res!1466785 e!2243103)))

(assert (=> b!3623930 (= res!1466785 (not (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))))

(declare-fun b!3623931 () Bool)

(assert (=> b!3623931 (= e!2243104 (= lt!1252532 call!262178))))

(declare-fun b!3623932 () Bool)

(declare-fun res!1466783 () Bool)

(declare-fun e!2243105 () Bool)

(assert (=> b!3623932 (=> res!1466783 e!2243105)))

(assert (=> b!3623932 (= res!1466783 (not ((_ is ElementMatch!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))))

(assert (=> b!3623932 (= e!2243102 e!2243105)))

(declare-fun b!3623933 () Bool)

(assert (=> b!3623933 (= e!2243106 (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (c!626792 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))))

(declare-fun bm!262173 () Bool)

(assert (=> bm!262173 (= call!262178 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun b!3623934 () Bool)

(assert (=> b!3623934 (= e!2243108 (matchR!5012 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) (head!7656 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))))) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))))))))

(declare-fun d!1066059 () Bool)

(assert (=> d!1066059 e!2243104))

(declare-fun c!627103 () Bool)

(assert (=> d!1066059 (= c!627103 ((_ is EmptyExpr!10443) (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))))))

(assert (=> d!1066059 (= lt!1252532 e!2243108)))

(declare-fun c!627101 () Bool)

(assert (=> d!1066059 (= c!627101 (isEmpty!22559 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))

(assert (=> d!1066059 (validRegex!4775 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))

(assert (=> d!1066059 (= (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) lt!1252532)))

(declare-fun b!3623924 () Bool)

(declare-fun res!1466789 () Bool)

(assert (=> b!3623924 (=> res!1466789 e!2243105)))

(assert (=> b!3623924 (= res!1466789 e!2243106)))

(declare-fun res!1466790 () Bool)

(assert (=> b!3623924 (=> (not res!1466790) (not e!2243106))))

(assert (=> b!3623924 (= res!1466790 lt!1252532)))

(declare-fun b!3623935 () Bool)

(declare-fun res!1466788 () Bool)

(assert (=> b!3623935 (=> (not res!1466788) (not e!2243106))))

(assert (=> b!3623935 (= res!1466788 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))))))))

(declare-fun b!3623936 () Bool)

(assert (=> b!3623936 (= e!2243105 e!2243107)))

(declare-fun res!1466784 () Bool)

(assert (=> b!3623936 (=> (not res!1466784) (not e!2243107))))

(assert (=> b!3623936 (= res!1466784 (not lt!1252532))))

(assert (= (and d!1066059 c!627101) b!3623926))

(assert (= (and d!1066059 (not c!627101)) b!3623934))

(assert (= (and d!1066059 c!627103) b!3623931))

(assert (= (and d!1066059 (not c!627103)) b!3623923))

(assert (= (and b!3623923 c!627102) b!3623929))

(assert (= (and b!3623923 (not c!627102)) b!3623932))

(assert (= (and b!3623932 (not res!1466783)) b!3623924))

(assert (= (and b!3623924 res!1466790) b!3623928))

(assert (= (and b!3623928 res!1466787) b!3623935))

(assert (= (and b!3623935 res!1466788) b!3623933))

(assert (= (and b!3623924 (not res!1466789)) b!3623936))

(assert (= (and b!3623936 res!1466784) b!3623925))

(assert (= (and b!3623925 (not res!1466786)) b!3623930))

(assert (= (and b!3623930 (not res!1466785)) b!3623927))

(assert (= (or b!3623931 b!3623925 b!3623928) bm!262173))

(assert (=> b!3623930 m!4122675))

(declare-fun m!4124217 () Bool)

(assert (=> b!3623930 m!4124217))

(assert (=> b!3623930 m!4124217))

(declare-fun m!4124219 () Bool)

(assert (=> b!3623930 m!4124219))

(assert (=> b!3623935 m!4122675))

(assert (=> b!3623935 m!4124217))

(assert (=> b!3623935 m!4124217))

(assert (=> b!3623935 m!4124219))

(assert (=> bm!262173 m!4122675))

(declare-fun m!4124221 () Bool)

(assert (=> bm!262173 m!4124221))

(declare-fun m!4124223 () Bool)

(assert (=> b!3623926 m!4124223))

(assert (=> b!3623933 m!4122675))

(declare-fun m!4124225 () Bool)

(assert (=> b!3623933 m!4124225))

(assert (=> d!1066059 m!4122675))

(assert (=> d!1066059 m!4124221))

(declare-fun m!4124227 () Bool)

(assert (=> d!1066059 m!4124227))

(assert (=> b!3623927 m!4122675))

(assert (=> b!3623927 m!4124225))

(assert (=> b!3623934 m!4122675))

(assert (=> b!3623934 m!4124225))

(assert (=> b!3623934 m!4124225))

(declare-fun m!4124229 () Bool)

(assert (=> b!3623934 m!4124229))

(assert (=> b!3623934 m!4122675))

(assert (=> b!3623934 m!4124217))

(assert (=> b!3623934 m!4124229))

(assert (=> b!3623934 m!4124217))

(declare-fun m!4124231 () Bool)

(assert (=> b!3623934 m!4124231))

(assert (=> b!3622748 d!1066059))

(assert (=> b!3622748 d!1066035))

(declare-fun d!1066061 () Bool)

(assert (=> d!1066061 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))) (list!14091 (c!626793 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))

(declare-fun bs!571333 () Bool)

(assert (= bs!571333 d!1066061))

(declare-fun m!4124233 () Bool)

(assert (=> bs!571333 m!4124233))

(assert (=> b!3622748 d!1066061))

(declare-fun d!1066063 () Bool)

(declare-fun lt!1252533 () BalanceConc!22892)

(assert (=> d!1066063 (= (list!14088 lt!1252533) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252235))))))

(assert (=> d!1066063 (= lt!1252533 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))) (value!182454 (_1!22152 (get!12450 lt!1252235)))))))

(assert (=> d!1066063 (= (charsOf!3698 (_1!22152 (get!12450 lt!1252235))) lt!1252533)))

(declare-fun b_lambda!107205 () Bool)

(assert (=> (not b_lambda!107205) (not d!1066063)))

(declare-fun t!294481 () Bool)

(declare-fun tb!207947 () Bool)

(assert (=> (and b!3622397 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294481) tb!207947))

(declare-fun b!3623937 () Bool)

(declare-fun e!2243109 () Bool)

(declare-fun tp!1106684 () Bool)

(assert (=> b!3623937 (= e!2243109 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))) (value!182454 (_1!22152 (get!12450 lt!1252235)))))) tp!1106684))))

(declare-fun result!253366 () Bool)

(assert (=> tb!207947 (= result!253366 (and (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235))))) (value!182454 (_1!22152 (get!12450 lt!1252235))))) e!2243109))))

(assert (= tb!207947 b!3623937))

(declare-fun m!4124235 () Bool)

(assert (=> b!3623937 m!4124235))

(declare-fun m!4124237 () Bool)

(assert (=> tb!207947 m!4124237))

(assert (=> d!1066063 t!294481))

(declare-fun b_and!265241 () Bool)

(assert (= b_and!265223 (and (=> t!294481 result!253366) b_and!265241)))

(declare-fun t!294483 () Bool)

(declare-fun tb!207949 () Bool)

(assert (=> (and b!3622375 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294483) tb!207949))

(declare-fun result!253368 () Bool)

(assert (= result!253368 result!253366))

(assert (=> d!1066063 t!294483))

(declare-fun b_and!265243 () Bool)

(assert (= b_and!265227 (and (=> t!294483 result!253368) b_and!265243)))

(declare-fun tb!207951 () Bool)

(declare-fun t!294485 () Bool)

(assert (=> (and b!3623046 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294485) tb!207951))

(declare-fun result!253370 () Bool)

(assert (= result!253370 result!253366))

(assert (=> d!1066063 t!294485))

(declare-fun b_and!265245 () Bool)

(assert (= b_and!265225 (and (=> t!294485 result!253370) b_and!265245)))

(declare-fun t!294487 () Bool)

(declare-fun tb!207953 () Bool)

(assert (=> (and b!3622399 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294487) tb!207953))

(declare-fun result!253372 () Bool)

(assert (= result!253372 result!253366))

(assert (=> d!1066063 t!294487))

(declare-fun b_and!265247 () Bool)

(assert (= b_and!265221 (and (=> t!294487 result!253372) b_and!265247)))

(declare-fun t!294489 () Bool)

(declare-fun tb!207955 () Bool)

(assert (=> (and b!3622381 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294489) tb!207955))

(declare-fun result!253374 () Bool)

(assert (= result!253374 result!253366))

(assert (=> d!1066063 t!294489))

(declare-fun b_and!265249 () Bool)

(assert (= b_and!265229 (and (=> t!294489 result!253374) b_and!265249)))

(declare-fun m!4124239 () Bool)

(assert (=> d!1066063 m!4124239))

(declare-fun m!4124241 () Bool)

(assert (=> d!1066063 m!4124241))

(assert (=> b!3622748 d!1066063))

(declare-fun d!1066065 () Bool)

(declare-fun c!627106 () Bool)

(assert (=> d!1066065 (= c!627106 ((_ is Nil!38167) rules!3307))))

(declare-fun e!2243112 () (InoxSet Rule!11168))

(assert (=> d!1066065 (= (content!5465 rules!3307) e!2243112)))

(declare-fun b!3623942 () Bool)

(assert (=> b!3623942 (= e!2243112 ((as const (Array Rule!11168 Bool)) false))))

(declare-fun b!3623943 () Bool)

(assert (=> b!3623943 (= e!2243112 ((_ map or) (store ((as const (Array Rule!11168 Bool)) false) (h!43587 rules!3307) true) (content!5465 (t!294262 rules!3307))))))

(assert (= (and d!1066065 c!627106) b!3623942))

(assert (= (and d!1066065 (not c!627106)) b!3623943))

(declare-fun m!4124243 () Bool)

(assert (=> b!3623943 m!4124243))

(declare-fun m!4124245 () Bool)

(assert (=> b!3623943 m!4124245))

(assert (=> d!1065585 d!1066065))

(declare-fun d!1066067 () Bool)

(assert (=> d!1066067 (= (list!14088 lt!1252329) (list!14091 (c!626793 lt!1252329)))))

(declare-fun bs!571334 () Bool)

(assert (= bs!571334 d!1066067))

(declare-fun m!4124247 () Bool)

(assert (=> bs!571334 m!4124247))

(assert (=> d!1065565 d!1066067))

(declare-fun d!1066069 () Bool)

(assert (=> d!1066069 (= (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))) (isBalanced!3501 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))))

(declare-fun bs!571335 () Bool)

(assert (= bs!571335 d!1066069))

(declare-fun m!4124249 () Bool)

(assert (=> bs!571335 m!4124249))

(assert (=> tb!207769 d!1066069))

(declare-fun b!3623947 () Bool)

(declare-fun e!2243114 () List!38290)

(assert (=> b!3623947 (= e!2243114 (++!9500 (list!14091 (left!29795 (c!626793 (charsOf!3698 token!511)))) (list!14091 (right!30125 (c!626793 (charsOf!3698 token!511))))))))

(declare-fun b!3623945 () Bool)

(declare-fun e!2243113 () List!38290)

(assert (=> b!3623945 (= e!2243113 e!2243114)))

(declare-fun c!627108 () Bool)

(assert (=> b!3623945 (= c!627108 ((_ is Leaf!18092) (c!626793 (charsOf!3698 token!511))))))

(declare-fun b!3623946 () Bool)

(assert (=> b!3623946 (= e!2243114 (list!14094 (xs!14841 (c!626793 (charsOf!3698 token!511)))))))

(declare-fun d!1066071 () Bool)

(declare-fun c!627107 () Bool)

(assert (=> d!1066071 (= c!627107 ((_ is Empty!11639) (c!626793 (charsOf!3698 token!511))))))

(assert (=> d!1066071 (= (list!14091 (c!626793 (charsOf!3698 token!511))) e!2243113)))

(declare-fun b!3623944 () Bool)

(assert (=> b!3623944 (= e!2243113 Nil!38166)))

(assert (= (and d!1066071 c!627107) b!3623944))

(assert (= (and d!1066071 (not c!627107)) b!3623945))

(assert (= (and b!3623945 c!627108) b!3623946))

(assert (= (and b!3623945 (not c!627108)) b!3623947))

(declare-fun m!4124251 () Bool)

(assert (=> b!3623947 m!4124251))

(declare-fun m!4124253 () Bool)

(assert (=> b!3623947 m!4124253))

(assert (=> b!3623947 m!4124251))

(assert (=> b!3623947 m!4124253))

(declare-fun m!4124255 () Bool)

(assert (=> b!3623947 m!4124255))

(declare-fun m!4124257 () Bool)

(assert (=> b!3623946 m!4124257))

(assert (=> d!1065563 d!1066071))

(assert (=> b!3622996 d!1065963))

(declare-fun lt!1252534 () List!38290)

(declare-fun e!2243115 () Bool)

(declare-fun b!3623951 () Bool)

(assert (=> b!3623951 (= e!2243115 (or (not (= (ite c!626885 call!262095 call!262097) Nil!38166)) (= lt!1252534 (ite c!626885 call!262097 call!262095))))))

(declare-fun b!3623950 () Bool)

(declare-fun res!1466791 () Bool)

(assert (=> b!3623950 (=> (not res!1466791) (not e!2243115))))

(assert (=> b!3623950 (= res!1466791 (= (size!29114 lt!1252534) (+ (size!29114 (ite c!626885 call!262097 call!262095)) (size!29114 (ite c!626885 call!262095 call!262097)))))))

(declare-fun e!2243116 () List!38290)

(declare-fun b!3623948 () Bool)

(assert (=> b!3623948 (= e!2243116 (ite c!626885 call!262095 call!262097))))

(declare-fun d!1066073 () Bool)

(assert (=> d!1066073 e!2243115))

(declare-fun res!1466792 () Bool)

(assert (=> d!1066073 (=> (not res!1466792) (not e!2243115))))

(assert (=> d!1066073 (= res!1466792 (= (content!5464 lt!1252534) ((_ map or) (content!5464 (ite c!626885 call!262097 call!262095)) (content!5464 (ite c!626885 call!262095 call!262097)))))))

(assert (=> d!1066073 (= lt!1252534 e!2243116)))

(declare-fun c!627109 () Bool)

(assert (=> d!1066073 (= c!627109 ((_ is Nil!38166) (ite c!626885 call!262097 call!262095)))))

(assert (=> d!1066073 (= (++!9500 (ite c!626885 call!262097 call!262095) (ite c!626885 call!262095 call!262097)) lt!1252534)))

(declare-fun b!3623949 () Bool)

(assert (=> b!3623949 (= e!2243116 (Cons!38166 (h!43586 (ite c!626885 call!262097 call!262095)) (++!9500 (t!294261 (ite c!626885 call!262097 call!262095)) (ite c!626885 call!262095 call!262097))))))

(assert (= (and d!1066073 c!627109) b!3623948))

(assert (= (and d!1066073 (not c!627109)) b!3623949))

(assert (= (and d!1066073 res!1466792) b!3623950))

(assert (= (and b!3623950 res!1466791) b!3623951))

(declare-fun m!4124259 () Bool)

(assert (=> b!3623950 m!4124259))

(declare-fun m!4124261 () Bool)

(assert (=> b!3623950 m!4124261))

(declare-fun m!4124263 () Bool)

(assert (=> b!3623950 m!4124263))

(declare-fun m!4124265 () Bool)

(assert (=> d!1066073 m!4124265))

(declare-fun m!4124267 () Bool)

(assert (=> d!1066073 m!4124267))

(declare-fun m!4124269 () Bool)

(assert (=> d!1066073 m!4124269))

(declare-fun m!4124271 () Bool)

(assert (=> b!3623949 m!4124271))

(assert (=> bm!262092 d!1066073))

(declare-fun b!3623955 () Bool)

(declare-fun e!2243117 () Bool)

(assert (=> b!3623955 (= e!2243117 (>= (size!29114 (tail!5611 lt!1252082)) (size!29114 (tail!5611 lt!1252086))))))

(declare-fun b!3623952 () Bool)

(declare-fun e!2243119 () Bool)

(declare-fun e!2243118 () Bool)

(assert (=> b!3623952 (= e!2243119 e!2243118)))

(declare-fun res!1466796 () Bool)

(assert (=> b!3623952 (=> (not res!1466796) (not e!2243118))))

(assert (=> b!3623952 (= res!1466796 (not ((_ is Nil!38166) (tail!5611 lt!1252082))))))

(declare-fun d!1066075 () Bool)

(assert (=> d!1066075 e!2243117))

(declare-fun res!1466793 () Bool)

(assert (=> d!1066075 (=> res!1466793 e!2243117)))

(declare-fun lt!1252535 () Bool)

(assert (=> d!1066075 (= res!1466793 (not lt!1252535))))

(assert (=> d!1066075 (= lt!1252535 e!2243119)))

(declare-fun res!1466795 () Bool)

(assert (=> d!1066075 (=> res!1466795 e!2243119)))

(assert (=> d!1066075 (= res!1466795 ((_ is Nil!38166) (tail!5611 lt!1252086)))))

(assert (=> d!1066075 (= (isPrefix!3047 (tail!5611 lt!1252086) (tail!5611 lt!1252082)) lt!1252535)))

(declare-fun b!3623953 () Bool)

(declare-fun res!1466794 () Bool)

(assert (=> b!3623953 (=> (not res!1466794) (not e!2243118))))

(assert (=> b!3623953 (= res!1466794 (= (head!7656 (tail!5611 lt!1252086)) (head!7656 (tail!5611 lt!1252082))))))

(declare-fun b!3623954 () Bool)

(assert (=> b!3623954 (= e!2243118 (isPrefix!3047 (tail!5611 (tail!5611 lt!1252086)) (tail!5611 (tail!5611 lt!1252082))))))

(assert (= (and d!1066075 (not res!1466795)) b!3623952))

(assert (= (and b!3623952 res!1466796) b!3623953))

(assert (= (and b!3623953 res!1466794) b!3623954))

(assert (= (and d!1066075 (not res!1466793)) b!3623955))

(assert (=> b!3623955 m!4122649))

(declare-fun m!4124273 () Bool)

(assert (=> b!3623955 m!4124273))

(assert (=> b!3623955 m!4122663))

(declare-fun m!4124275 () Bool)

(assert (=> b!3623955 m!4124275))

(assert (=> b!3623953 m!4122663))

(declare-fun m!4124277 () Bool)

(assert (=> b!3623953 m!4124277))

(assert (=> b!3623953 m!4122649))

(declare-fun m!4124279 () Bool)

(assert (=> b!3623953 m!4124279))

(assert (=> b!3623954 m!4122663))

(declare-fun m!4124281 () Bool)

(assert (=> b!3623954 m!4124281))

(assert (=> b!3623954 m!4122649))

(declare-fun m!4124283 () Bool)

(assert (=> b!3623954 m!4124283))

(assert (=> b!3623954 m!4124281))

(assert (=> b!3623954 m!4124283))

(declare-fun m!4124285 () Bool)

(assert (=> b!3623954 m!4124285))

(assert (=> b!3622763 d!1066075))

(assert (=> b!3622763 d!1066033))

(declare-fun d!1066077 () Bool)

(assert (=> d!1066077 (= (tail!5611 lt!1252082) (t!294261 lt!1252082))))

(assert (=> b!3622763 d!1066077))

(declare-fun d!1066079 () Bool)

(assert (=> d!1066079 (= (isEmpty!22559 lt!1252088) ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1065567 d!1066079))

(declare-fun call!262185 () Bool)

(declare-fun c!627114 () Bool)

(declare-fun bm!262180 () Bool)

(declare-fun c!627115 () Bool)

(assert (=> bm!262180 (= call!262185 (validRegex!4775 (ite c!627115 (reg!10772 (regex!5684 rule!403)) (ite c!627114 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403))))))))

(declare-fun b!3623974 () Bool)

(declare-fun e!2243139 () Bool)

(assert (=> b!3623974 (= e!2243139 call!262185)))

(declare-fun b!3623975 () Bool)

(declare-fun e!2243136 () Bool)

(declare-fun call!262187 () Bool)

(assert (=> b!3623975 (= e!2243136 call!262187)))

(declare-fun d!1066081 () Bool)

(declare-fun res!1466808 () Bool)

(declare-fun e!2243140 () Bool)

(assert (=> d!1066081 (=> res!1466808 e!2243140)))

(assert (=> d!1066081 (= res!1466808 ((_ is ElementMatch!10443) (regex!5684 rule!403)))))

(assert (=> d!1066081 (= (validRegex!4775 (regex!5684 rule!403)) e!2243140)))

(declare-fun b!3623976 () Bool)

(declare-fun e!2243137 () Bool)

(assert (=> b!3623976 (= e!2243137 e!2243139)))

(declare-fun res!1466810 () Bool)

(assert (=> b!3623976 (= res!1466810 (not (nullable!3613 (reg!10772 (regex!5684 rule!403)))))))

(assert (=> b!3623976 (=> (not res!1466810) (not e!2243139))))

(declare-fun b!3623977 () Bool)

(declare-fun e!2243135 () Bool)

(declare-fun e!2243138 () Bool)

(assert (=> b!3623977 (= e!2243135 e!2243138)))

(declare-fun res!1466809 () Bool)

(assert (=> b!3623977 (=> (not res!1466809) (not e!2243138))))

(assert (=> b!3623977 (= res!1466809 call!262187)))

(declare-fun b!3623978 () Bool)

(declare-fun call!262186 () Bool)

(assert (=> b!3623978 (= e!2243138 call!262186)))

(declare-fun b!3623979 () Bool)

(assert (=> b!3623979 (= e!2243140 e!2243137)))

(assert (=> b!3623979 (= c!627115 ((_ is Star!10443) (regex!5684 rule!403)))))

(declare-fun bm!262181 () Bool)

(assert (=> bm!262181 (= call!262186 call!262185)))

(declare-fun b!3623980 () Bool)

(declare-fun res!1466811 () Bool)

(assert (=> b!3623980 (=> res!1466811 e!2243135)))

(assert (=> b!3623980 (= res!1466811 (not ((_ is Concat!16358) (regex!5684 rule!403))))))

(declare-fun e!2243134 () Bool)

(assert (=> b!3623980 (= e!2243134 e!2243135)))

(declare-fun b!3623981 () Bool)

(assert (=> b!3623981 (= e!2243137 e!2243134)))

(assert (=> b!3623981 (= c!627114 ((_ is Union!10443) (regex!5684 rule!403)))))

(declare-fun bm!262182 () Bool)

(assert (=> bm!262182 (= call!262187 (validRegex!4775 (ite c!627114 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403)))))))

(declare-fun b!3623982 () Bool)

(declare-fun res!1466807 () Bool)

(assert (=> b!3623982 (=> (not res!1466807) (not e!2243136))))

(assert (=> b!3623982 (= res!1466807 call!262186)))

(assert (=> b!3623982 (= e!2243134 e!2243136)))

(assert (= (and d!1066081 (not res!1466808)) b!3623979))

(assert (= (and b!3623979 c!627115) b!3623976))

(assert (= (and b!3623979 (not c!627115)) b!3623981))

(assert (= (and b!3623976 res!1466810) b!3623974))

(assert (= (and b!3623981 c!627114) b!3623982))

(assert (= (and b!3623981 (not c!627114)) b!3623980))

(assert (= (and b!3623982 res!1466807) b!3623975))

(assert (= (and b!3623980 (not res!1466811)) b!3623977))

(assert (= (and b!3623977 res!1466809) b!3623978))

(assert (= (or b!3623982 b!3623978) bm!262181))

(assert (= (or b!3623975 b!3623977) bm!262182))

(assert (= (or b!3623974 bm!262181) bm!262180))

(declare-fun m!4124287 () Bool)

(assert (=> bm!262180 m!4124287))

(declare-fun m!4124289 () Bool)

(assert (=> b!3623976 m!4124289))

(declare-fun m!4124291 () Bool)

(assert (=> bm!262182 m!4124291))

(assert (=> d!1065567 d!1066081))

(declare-fun d!1066083 () Bool)

(declare-fun c!627118 () Bool)

(assert (=> d!1066083 (= c!627118 ((_ is Nil!38166) lt!1252319))))

(declare-fun e!2243143 () (InoxSet C!21072))

(assert (=> d!1066083 (= (content!5464 lt!1252319) e!2243143)))

(declare-fun b!3623987 () Bool)

(assert (=> b!3623987 (= e!2243143 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3623988 () Bool)

(assert (=> b!3623988 (= e!2243143 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 lt!1252319) true) (content!5464 (t!294261 lt!1252319))))))

(assert (= (and d!1066083 c!627118) b!3623987))

(assert (= (and d!1066083 (not c!627118)) b!3623988))

(declare-fun m!4124293 () Bool)

(assert (=> b!3623988 m!4124293))

(declare-fun m!4124295 () Bool)

(assert (=> b!3623988 m!4124295))

(assert (=> d!1065543 d!1066083))

(declare-fun d!1066085 () Bool)

(declare-fun c!627119 () Bool)

(assert (=> d!1066085 (= c!627119 ((_ is Nil!38166) lt!1252086))))

(declare-fun e!2243144 () (InoxSet C!21072))

(assert (=> d!1066085 (= (content!5464 lt!1252086) e!2243144)))

(declare-fun b!3623989 () Bool)

(assert (=> b!3623989 (= e!2243144 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3623990 () Bool)

(assert (=> b!3623990 (= e!2243144 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 lt!1252086) true) (content!5464 (t!294261 lt!1252086))))))

(assert (= (and d!1066085 c!627119) b!3623989))

(assert (= (and d!1066085 (not c!627119)) b!3623990))

(declare-fun m!4124297 () Bool)

(assert (=> b!3623990 m!4124297))

(declare-fun m!4124299 () Bool)

(assert (=> b!3623990 m!4124299))

(assert (=> d!1065543 d!1066085))

(declare-fun d!1066087 () Bool)

(declare-fun c!627120 () Bool)

(assert (=> d!1066087 (= c!627120 ((_ is Nil!38166) (_2!22152 lt!1252077)))))

(declare-fun e!2243145 () (InoxSet C!21072))

(assert (=> d!1066087 (= (content!5464 (_2!22152 lt!1252077)) e!2243145)))

(declare-fun b!3623991 () Bool)

(assert (=> b!3623991 (= e!2243145 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3623992 () Bool)

(assert (=> b!3623992 (= e!2243145 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 (_2!22152 lt!1252077)) true) (content!5464 (t!294261 (_2!22152 lt!1252077)))))))

(assert (= (and d!1066087 c!627120) b!3623991))

(assert (= (and d!1066087 (not c!627120)) b!3623992))

(declare-fun m!4124301 () Bool)

(assert (=> b!3623992 m!4124301))

(declare-fun m!4124303 () Bool)

(assert (=> b!3623992 m!4124303))

(assert (=> d!1065543 d!1066087))

(declare-fun d!1066089 () Bool)

(assert (=> d!1066089 (= (get!12451 lt!1252259) (v!37768 lt!1252259))))

(assert (=> b!3622813 d!1066089))

(declare-fun b!3624001 () Bool)

(declare-fun e!2243154 () Bool)

(declare-fun call!262190 () Bool)

(assert (=> b!3624001 (= e!2243154 call!262190)))

(declare-fun b!3624002 () Bool)

(declare-fun e!2243153 () Bool)

(declare-fun e!2243152 () Bool)

(assert (=> b!3624002 (= e!2243153 e!2243152)))

(declare-fun res!1466817 () Bool)

(declare-fun rulesUseDisjointChars!369 (Rule!11168 Rule!11168) Bool)

(assert (=> b!3624002 (= res!1466817 (rulesUseDisjointChars!369 (h!43587 rules!3307) (h!43587 rules!3307)))))

(assert (=> b!3624002 (=> (not res!1466817) (not e!2243152))))

(declare-fun b!3624003 () Bool)

(assert (=> b!3624003 (= e!2243152 call!262190)))

(declare-fun d!1066091 () Bool)

(declare-fun c!627123 () Bool)

(assert (=> d!1066091 (= c!627123 (and ((_ is Cons!38167) rules!3307) (not (= (isSeparator!5684 (h!43587 rules!3307)) (isSeparator!5684 (h!43587 rules!3307))))))))

(assert (=> d!1066091 (= (ruleDisjointCharsFromAllFromOtherType!837 (h!43587 rules!3307) rules!3307) e!2243153)))

(declare-fun bm!262185 () Bool)

(assert (=> bm!262185 (= call!262190 (ruleDisjointCharsFromAllFromOtherType!837 (h!43587 rules!3307) (t!294262 rules!3307)))))

(declare-fun b!3624004 () Bool)

(assert (=> b!3624004 (= e!2243153 e!2243154)))

(declare-fun res!1466816 () Bool)

(assert (=> b!3624004 (= res!1466816 (not ((_ is Cons!38167) rules!3307)))))

(assert (=> b!3624004 (=> res!1466816 e!2243154)))

(assert (= (and d!1066091 c!627123) b!3624002))

(assert (= (and d!1066091 (not c!627123)) b!3624004))

(assert (= (and b!3624002 res!1466817) b!3624003))

(assert (= (and b!3624004 (not res!1466816)) b!3624001))

(assert (= (or b!3624003 b!3624001) bm!262185))

(declare-fun m!4124305 () Bool)

(assert (=> b!3624002 m!4124305))

(declare-fun m!4124307 () Bool)

(assert (=> bm!262185 m!4124307))

(assert (=> b!3622929 d!1066091))

(declare-fun b!3624005 () Bool)

(declare-fun e!2243157 () Bool)

(declare-fun e!2243155 () Bool)

(assert (=> b!3624005 (= e!2243157 e!2243155)))

(declare-fun c!627125 () Bool)

(assert (=> b!3624005 (= c!627125 ((_ is EmptyLang!10443) (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088))))))

(declare-fun b!3624007 () Bool)

(declare-fun e!2243160 () Bool)

(declare-fun e!2243156 () Bool)

(assert (=> b!3624007 (= e!2243160 e!2243156)))

(declare-fun res!1466821 () Bool)

(assert (=> b!3624007 (=> res!1466821 e!2243156)))

(declare-fun call!262191 () Bool)

(assert (=> b!3624007 (= res!1466821 call!262191)))

(declare-fun b!3624008 () Bool)

(declare-fun e!2243161 () Bool)

(assert (=> b!3624008 (= e!2243161 (nullable!3613 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088))))))

(declare-fun b!3624009 () Bool)

(assert (=> b!3624009 (= e!2243156 (not (= (head!7656 (tail!5611 lt!1252088)) (c!626792 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088))))))))

(declare-fun b!3624010 () Bool)

(declare-fun res!1466822 () Bool)

(declare-fun e!2243159 () Bool)

(assert (=> b!3624010 (=> (not res!1466822) (not e!2243159))))

(assert (=> b!3624010 (= res!1466822 (not call!262191))))

(declare-fun b!3624011 () Bool)

(declare-fun lt!1252536 () Bool)

(assert (=> b!3624011 (= e!2243155 (not lt!1252536))))

(declare-fun b!3624012 () Bool)

(declare-fun res!1466820 () Bool)

(assert (=> b!3624012 (=> res!1466820 e!2243156)))

(assert (=> b!3624012 (= res!1466820 (not (isEmpty!22559 (tail!5611 (tail!5611 lt!1252088)))))))

(declare-fun b!3624013 () Bool)

(assert (=> b!3624013 (= e!2243157 (= lt!1252536 call!262191))))

(declare-fun b!3624014 () Bool)

(declare-fun res!1466818 () Bool)

(declare-fun e!2243158 () Bool)

(assert (=> b!3624014 (=> res!1466818 e!2243158)))

(assert (=> b!3624014 (= res!1466818 (not ((_ is ElementMatch!10443) (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)))))))

(assert (=> b!3624014 (= e!2243155 e!2243158)))

(declare-fun b!3624015 () Bool)

(assert (=> b!3624015 (= e!2243159 (= (head!7656 (tail!5611 lt!1252088)) (c!626792 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)))))))

(declare-fun bm!262186 () Bool)

(assert (=> bm!262186 (= call!262191 (isEmpty!22559 (tail!5611 lt!1252088)))))

(declare-fun b!3624016 () Bool)

(assert (=> b!3624016 (= e!2243161 (matchR!5012 (derivativeStep!3162 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)) (head!7656 (tail!5611 lt!1252088))) (tail!5611 (tail!5611 lt!1252088))))))

(declare-fun d!1066093 () Bool)

(assert (=> d!1066093 e!2243157))

(declare-fun c!627126 () Bool)

(assert (=> d!1066093 (= c!627126 ((_ is EmptyExpr!10443) (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088))))))

(assert (=> d!1066093 (= lt!1252536 e!2243161)))

(declare-fun c!627124 () Bool)

(assert (=> d!1066093 (= c!627124 (isEmpty!22559 (tail!5611 lt!1252088)))))

(assert (=> d!1066093 (validRegex!4775 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)))))

(assert (=> d!1066093 (= (matchR!5012 (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)) (tail!5611 lt!1252088)) lt!1252536)))

(declare-fun b!3624006 () Bool)

(declare-fun res!1466824 () Bool)

(assert (=> b!3624006 (=> res!1466824 e!2243158)))

(assert (=> b!3624006 (= res!1466824 e!2243159)))

(declare-fun res!1466825 () Bool)

(assert (=> b!3624006 (=> (not res!1466825) (not e!2243159))))

(assert (=> b!3624006 (= res!1466825 lt!1252536)))

(declare-fun b!3624017 () Bool)

(declare-fun res!1466823 () Bool)

(assert (=> b!3624017 (=> (not res!1466823) (not e!2243159))))

(assert (=> b!3624017 (= res!1466823 (isEmpty!22559 (tail!5611 (tail!5611 lt!1252088))))))

(declare-fun b!3624018 () Bool)

(assert (=> b!3624018 (= e!2243158 e!2243160)))

(declare-fun res!1466819 () Bool)

(assert (=> b!3624018 (=> (not res!1466819) (not e!2243160))))

(assert (=> b!3624018 (= res!1466819 (not lt!1252536))))

(assert (= (and d!1066093 c!627124) b!3624008))

(assert (= (and d!1066093 (not c!627124)) b!3624016))

(assert (= (and d!1066093 c!627126) b!3624013))

(assert (= (and d!1066093 (not c!627126)) b!3624005))

(assert (= (and b!3624005 c!627125) b!3624011))

(assert (= (and b!3624005 (not c!627125)) b!3624014))

(assert (= (and b!3624014 (not res!1466818)) b!3624006))

(assert (= (and b!3624006 res!1466825) b!3624010))

(assert (= (and b!3624010 res!1466822) b!3624017))

(assert (= (and b!3624017 res!1466823) b!3624015))

(assert (= (and b!3624006 (not res!1466824)) b!3624018))

(assert (= (and b!3624018 res!1466819) b!3624007))

(assert (= (and b!3624007 (not res!1466821)) b!3624012))

(assert (= (and b!3624012 (not res!1466820)) b!3624009))

(assert (= (or b!3624013 b!3624007 b!3624010) bm!262186))

(assert (=> b!3624012 m!4122647))

(declare-fun m!4124309 () Bool)

(assert (=> b!3624012 m!4124309))

(assert (=> b!3624012 m!4124309))

(declare-fun m!4124311 () Bool)

(assert (=> b!3624012 m!4124311))

(assert (=> b!3624017 m!4122647))

(assert (=> b!3624017 m!4124309))

(assert (=> b!3624017 m!4124309))

(assert (=> b!3624017 m!4124311))

(assert (=> bm!262186 m!4122647))

(assert (=> bm!262186 m!4122981))

(assert (=> b!3624008 m!4122989))

(declare-fun m!4124313 () Bool)

(assert (=> b!3624008 m!4124313))

(assert (=> b!3624015 m!4122647))

(declare-fun m!4124315 () Bool)

(assert (=> b!3624015 m!4124315))

(assert (=> d!1066093 m!4122647))

(assert (=> d!1066093 m!4122981))

(assert (=> d!1066093 m!4122989))

(declare-fun m!4124317 () Bool)

(assert (=> d!1066093 m!4124317))

(assert (=> b!3624009 m!4122647))

(assert (=> b!3624009 m!4124315))

(assert (=> b!3624016 m!4122647))

(assert (=> b!3624016 m!4124315))

(assert (=> b!3624016 m!4122989))

(assert (=> b!3624016 m!4124315))

(declare-fun m!4124319 () Bool)

(assert (=> b!3624016 m!4124319))

(assert (=> b!3624016 m!4122647))

(assert (=> b!3624016 m!4124309))

(assert (=> b!3624016 m!4124319))

(assert (=> b!3624016 m!4124309))

(declare-fun m!4124321 () Bool)

(assert (=> b!3624016 m!4124321))

(assert (=> b!3622983 d!1066093))

(declare-fun b!3624039 () Bool)

(declare-fun e!2243176 () Regex!10443)

(declare-fun call!262200 () Regex!10443)

(assert (=> b!3624039 (= e!2243176 (Union!10443 (Concat!16358 call!262200 (regTwo!21398 (regex!5684 rule!403))) EmptyLang!10443))))

(declare-fun c!627138 () Bool)

(declare-fun bm!262195 () Bool)

(declare-fun c!627139 () Bool)

(declare-fun call!262201 () Regex!10443)

(assert (=> bm!262195 (= call!262201 (derivativeStep!3162 (ite c!627139 (regTwo!21399 (regex!5684 rule!403)) (ite c!627138 (reg!10772 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403)))) (head!7656 lt!1252088)))))

(declare-fun b!3624040 () Bool)

(declare-fun c!627137 () Bool)

(assert (=> b!3624040 (= c!627137 (nullable!3613 (regOne!21398 (regex!5684 rule!403))))))

(declare-fun e!2243172 () Regex!10443)

(assert (=> b!3624040 (= e!2243172 e!2243176)))

(declare-fun b!3624042 () Bool)

(declare-fun e!2243173 () Regex!10443)

(declare-fun call!262203 () Regex!10443)

(assert (=> b!3624042 (= e!2243173 (Union!10443 call!262203 call!262201))))

(declare-fun b!3624043 () Bool)

(declare-fun e!2243174 () Regex!10443)

(assert (=> b!3624043 (= e!2243174 (ite (= (head!7656 lt!1252088) (c!626792 (regex!5684 rule!403))) EmptyExpr!10443 EmptyLang!10443))))

(declare-fun bm!262196 () Bool)

(declare-fun call!262202 () Regex!10443)

(assert (=> bm!262196 (= call!262202 call!262201)))

(declare-fun b!3624044 () Bool)

(declare-fun e!2243175 () Regex!10443)

(assert (=> b!3624044 (= e!2243175 e!2243174)))

(declare-fun c!627141 () Bool)

(assert (=> b!3624044 (= c!627141 ((_ is ElementMatch!10443) (regex!5684 rule!403)))))

(declare-fun b!3624045 () Bool)

(assert (=> b!3624045 (= e!2243173 e!2243172)))

(assert (=> b!3624045 (= c!627138 ((_ is Star!10443) (regex!5684 rule!403)))))

(declare-fun b!3624046 () Bool)

(assert (=> b!3624046 (= e!2243176 (Union!10443 (Concat!16358 call!262200 (regTwo!21398 (regex!5684 rule!403))) call!262203))))

(declare-fun b!3624047 () Bool)

(assert (=> b!3624047 (= c!627139 ((_ is Union!10443) (regex!5684 rule!403)))))

(assert (=> b!3624047 (= e!2243174 e!2243173)))

(declare-fun bm!262197 () Bool)

(assert (=> bm!262197 (= call!262200 call!262202)))

(declare-fun b!3624048 () Bool)

(assert (=> b!3624048 (= e!2243175 EmptyLang!10443)))

(declare-fun bm!262198 () Bool)

(assert (=> bm!262198 (= call!262203 (derivativeStep!3162 (ite c!627139 (regOne!21399 (regex!5684 rule!403)) (regTwo!21398 (regex!5684 rule!403))) (head!7656 lt!1252088)))))

(declare-fun b!3624041 () Bool)

(assert (=> b!3624041 (= e!2243172 (Concat!16358 call!262202 (regex!5684 rule!403)))))

(declare-fun d!1066095 () Bool)

(declare-fun lt!1252539 () Regex!10443)

(assert (=> d!1066095 (validRegex!4775 lt!1252539)))

(assert (=> d!1066095 (= lt!1252539 e!2243175)))

(declare-fun c!627140 () Bool)

(assert (=> d!1066095 (= c!627140 (or ((_ is EmptyExpr!10443) (regex!5684 rule!403)) ((_ is EmptyLang!10443) (regex!5684 rule!403))))))

(assert (=> d!1066095 (validRegex!4775 (regex!5684 rule!403))))

(assert (=> d!1066095 (= (derivativeStep!3162 (regex!5684 rule!403) (head!7656 lt!1252088)) lt!1252539)))

(assert (= (and d!1066095 c!627140) b!3624048))

(assert (= (and d!1066095 (not c!627140)) b!3624044))

(assert (= (and b!3624044 c!627141) b!3624043))

(assert (= (and b!3624044 (not c!627141)) b!3624047))

(assert (= (and b!3624047 c!627139) b!3624042))

(assert (= (and b!3624047 (not c!627139)) b!3624045))

(assert (= (and b!3624045 c!627138) b!3624041))

(assert (= (and b!3624045 (not c!627138)) b!3624040))

(assert (= (and b!3624040 c!627137) b!3624046))

(assert (= (and b!3624040 (not c!627137)) b!3624039))

(assert (= (or b!3624046 b!3624039) bm!262197))

(assert (= (or b!3624041 bm!262197) bm!262196))

(assert (= (or b!3624042 bm!262196) bm!262195))

(assert (= (or b!3624042 b!3624046) bm!262198))

(assert (=> bm!262195 m!4122643))

(declare-fun m!4124323 () Bool)

(assert (=> bm!262195 m!4124323))

(declare-fun m!4124325 () Bool)

(assert (=> b!3624040 m!4124325))

(assert (=> bm!262198 m!4122643))

(declare-fun m!4124327 () Bool)

(assert (=> bm!262198 m!4124327))

(declare-fun m!4124329 () Bool)

(assert (=> d!1066095 m!4124329))

(assert (=> d!1066095 m!4122987))

(assert (=> b!3622983 d!1066095))

(declare-fun d!1066097 () Bool)

(assert (=> d!1066097 (= (head!7656 lt!1252088) (h!43586 lt!1252088))))

(assert (=> b!3622983 d!1066097))

(assert (=> b!3622983 d!1065995))

(declare-fun b!3624049 () Bool)

(declare-fun e!2243178 () List!38290)

(declare-fun call!262207 () List!38290)

(assert (=> b!3624049 (= e!2243178 call!262207)))

(declare-fun b!3624050 () Bool)

(declare-fun e!2243180 () List!38290)

(assert (=> b!3624050 (= e!2243180 Nil!38166)))

(declare-fun b!3624051 () Bool)

(declare-fun e!2243179 () List!38290)

(declare-fun call!262205 () List!38290)

(assert (=> b!3624051 (= e!2243179 call!262205)))

(declare-fun c!627142 () Bool)

(declare-fun c!627145 () Bool)

(declare-fun bm!262199 () Bool)

(assert (=> bm!262199 (= call!262207 (usedCharacters!898 (ite c!627145 (reg!10772 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) (ite c!627142 (regTwo!21399 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) (regOne!21398 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33)))))))))))

(declare-fun bm!262200 () Bool)

(declare-fun call!262204 () List!38290)

(assert (=> bm!262200 (= call!262204 call!262207)))

(declare-fun b!3624052 () Bool)

(declare-fun e!2243177 () List!38290)

(assert (=> b!3624052 (= e!2243177 (Cons!38166 (c!626792 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) Nil!38166))))

(declare-fun b!3624053 () Bool)

(assert (=> b!3624053 (= c!627145 ((_ is Star!10443) (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))))))

(assert (=> b!3624053 (= e!2243177 e!2243178)))

(declare-fun call!262206 () List!38290)

(declare-fun bm!262201 () Bool)

(assert (=> bm!262201 (= call!262205 (++!9500 (ite c!627142 call!262206 call!262204) (ite c!627142 call!262204 call!262206)))))

(declare-fun b!3624054 () Bool)

(assert (=> b!3624054 (= e!2243179 call!262205)))

(declare-fun bm!262202 () Bool)

(assert (=> bm!262202 (= call!262206 (usedCharacters!898 (ite c!627142 (regOne!21399 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) (regTwo!21398 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))))))))

(declare-fun b!3624056 () Bool)

(assert (=> b!3624056 (= e!2243178 e!2243179)))

(assert (=> b!3624056 (= c!627142 ((_ is Union!10443) (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))))))

(declare-fun b!3624055 () Bool)

(assert (=> b!3624055 (= e!2243180 e!2243177)))

(declare-fun c!627143 () Bool)

(assert (=> b!3624055 (= c!627143 ((_ is ElementMatch!10443) (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))))))

(declare-fun d!1066099 () Bool)

(declare-fun c!627144 () Bool)

(assert (=> d!1066099 (= c!627144 (or ((_ is EmptyExpr!10443) (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) ((_ is EmptyLang!10443) (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33)))))))))

(assert (=> d!1066099 (= (usedCharacters!898 (ite c!626888 (reg!10772 (regex!5684 anOtherTypeRule!33)) (ite c!626885 (regTwo!21399 (regex!5684 anOtherTypeRule!33)) (regOne!21398 (regex!5684 anOtherTypeRule!33))))) e!2243180)))

(assert (= (and d!1066099 c!627144) b!3624050))

(assert (= (and d!1066099 (not c!627144)) b!3624055))

(assert (= (and b!3624055 c!627143) b!3624052))

(assert (= (and b!3624055 (not c!627143)) b!3624053))

(assert (= (and b!3624053 c!627145) b!3624049))

(assert (= (and b!3624053 (not c!627145)) b!3624056))

(assert (= (and b!3624056 c!627142) b!3624054))

(assert (= (and b!3624056 (not c!627142)) b!3624051))

(assert (= (or b!3624054 b!3624051) bm!262202))

(assert (= (or b!3624054 b!3624051) bm!262200))

(assert (= (or b!3624054 b!3624051) bm!262201))

(assert (= (or b!3624049 bm!262200) bm!262199))

(declare-fun m!4124331 () Bool)

(assert (=> bm!262199 m!4124331))

(declare-fun m!4124333 () Bool)

(assert (=> bm!262201 m!4124333))

(declare-fun m!4124335 () Bool)

(assert (=> bm!262202 m!4124335))

(assert (=> bm!262090 d!1066099))

(declare-fun bs!571336 () Bool)

(declare-fun d!1066101 () Bool)

(assert (= bs!571336 (and d!1066101 d!1065451)))

(declare-fun lambda!124172 () Int)

(assert (=> bs!571336 (= (and (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (= lambda!124172 lambda!124137))))

(declare-fun bs!571337 () Bool)

(assert (= bs!571337 (and d!1066101 d!1066023)))

(assert (=> bs!571337 (= (and (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (h!43587 rules!3307)))) (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (h!43587 rules!3307))))) (= lambda!124172 lambda!124171))))

(assert (=> d!1066101 true))

(assert (=> d!1066101 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 (rule!8446 token!511)))) (dynLambda!16518 order!20857 lambda!124172))))

(assert (=> d!1066101 true))

(assert (=> d!1066101 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (rule!8446 token!511)))) (dynLambda!16518 order!20857 lambda!124172))))

(assert (=> d!1066101 (= (semiInverseModEq!2411 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 token!511)))) (Forall!1367 lambda!124172))))

(declare-fun bs!571338 () Bool)

(assert (= bs!571338 d!1066101))

(declare-fun m!4124337 () Bool)

(assert (=> bs!571338 m!4124337))

(assert (=> d!1065469 d!1066101))

(declare-fun b!3624060 () Bool)

(declare-fun e!2243181 () Bool)

(assert (=> b!3624060 (= e!2243181 (>= (size!29114 (tail!5611 lt!1252082)) (size!29114 (tail!5611 lt!1252088))))))

(declare-fun b!3624057 () Bool)

(declare-fun e!2243183 () Bool)

(declare-fun e!2243182 () Bool)

(assert (=> b!3624057 (= e!2243183 e!2243182)))

(declare-fun res!1466829 () Bool)

(assert (=> b!3624057 (=> (not res!1466829) (not e!2243182))))

(assert (=> b!3624057 (= res!1466829 (not ((_ is Nil!38166) (tail!5611 lt!1252082))))))

(declare-fun d!1066103 () Bool)

(assert (=> d!1066103 e!2243181))

(declare-fun res!1466826 () Bool)

(assert (=> d!1066103 (=> res!1466826 e!2243181)))

(declare-fun lt!1252540 () Bool)

(assert (=> d!1066103 (= res!1466826 (not lt!1252540))))

(assert (=> d!1066103 (= lt!1252540 e!2243183)))

(declare-fun res!1466828 () Bool)

(assert (=> d!1066103 (=> res!1466828 e!2243183)))

(assert (=> d!1066103 (= res!1466828 ((_ is Nil!38166) (tail!5611 lt!1252088)))))

(assert (=> d!1066103 (= (isPrefix!3047 (tail!5611 lt!1252088) (tail!5611 lt!1252082)) lt!1252540)))

(declare-fun b!3624058 () Bool)

(declare-fun res!1466827 () Bool)

(assert (=> b!3624058 (=> (not res!1466827) (not e!2243182))))

(assert (=> b!3624058 (= res!1466827 (= (head!7656 (tail!5611 lt!1252088)) (head!7656 (tail!5611 lt!1252082))))))

(declare-fun b!3624059 () Bool)

(assert (=> b!3624059 (= e!2243182 (isPrefix!3047 (tail!5611 (tail!5611 lt!1252088)) (tail!5611 (tail!5611 lt!1252082))))))

(assert (= (and d!1066103 (not res!1466828)) b!3624057))

(assert (= (and b!3624057 res!1466829) b!3624058))

(assert (= (and b!3624058 res!1466827) b!3624059))

(assert (= (and d!1066103 (not res!1466826)) b!3624060))

(assert (=> b!3624060 m!4122649))

(assert (=> b!3624060 m!4124273))

(assert (=> b!3624060 m!4122647))

(declare-fun m!4124339 () Bool)

(assert (=> b!3624060 m!4124339))

(assert (=> b!3624058 m!4122647))

(assert (=> b!3624058 m!4124315))

(assert (=> b!3624058 m!4122649))

(assert (=> b!3624058 m!4124279))

(assert (=> b!3624059 m!4122647))

(assert (=> b!3624059 m!4124309))

(assert (=> b!3624059 m!4122649))

(assert (=> b!3624059 m!4124283))

(assert (=> b!3624059 m!4124309))

(assert (=> b!3624059 m!4124283))

(declare-fun m!4124341 () Bool)

(assert (=> b!3624059 m!4124341))

(assert (=> b!3622720 d!1066103))

(assert (=> b!3622720 d!1065995))

(assert (=> b!3622720 d!1066077))

(assert (=> b!3622976 d!1066097))

(declare-fun d!1066105 () Bool)

(assert (=> d!1066105 (= (isEmpty!22559 lt!1252086) ((_ is Nil!38166) lt!1252086))))

(assert (=> d!1065575 d!1066105))

(declare-fun c!627146 () Bool)

(declare-fun call!262208 () Bool)

(declare-fun c!627147 () Bool)

(declare-fun bm!262203 () Bool)

(assert (=> bm!262203 (= call!262208 (validRegex!4775 (ite c!627147 (reg!10772 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (ite c!627146 (regOne!21399 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (regTwo!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))))

(declare-fun b!3624061 () Bool)

(declare-fun e!2243189 () Bool)

(assert (=> b!3624061 (= e!2243189 call!262208)))

(declare-fun b!3624062 () Bool)

(declare-fun e!2243186 () Bool)

(declare-fun call!262210 () Bool)

(assert (=> b!3624062 (= e!2243186 call!262210)))

(declare-fun d!1066107 () Bool)

(declare-fun res!1466831 () Bool)

(declare-fun e!2243190 () Bool)

(assert (=> d!1066107 (=> res!1466831 e!2243190)))

(assert (=> d!1066107 (= res!1466831 ((_ is ElementMatch!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(assert (=> d!1066107 (= (validRegex!4775 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) e!2243190)))

(declare-fun b!3624063 () Bool)

(declare-fun e!2243187 () Bool)

(assert (=> b!3624063 (= e!2243187 e!2243189)))

(declare-fun res!1466833 () Bool)

(assert (=> b!3624063 (= res!1466833 (not (nullable!3613 (reg!10772 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))))

(assert (=> b!3624063 (=> (not res!1466833) (not e!2243189))))

(declare-fun b!3624064 () Bool)

(declare-fun e!2243185 () Bool)

(declare-fun e!2243188 () Bool)

(assert (=> b!3624064 (= e!2243185 e!2243188)))

(declare-fun res!1466832 () Bool)

(assert (=> b!3624064 (=> (not res!1466832) (not e!2243188))))

(assert (=> b!3624064 (= res!1466832 call!262210)))

(declare-fun b!3624065 () Bool)

(declare-fun call!262209 () Bool)

(assert (=> b!3624065 (= e!2243188 call!262209)))

(declare-fun b!3624066 () Bool)

(assert (=> b!3624066 (= e!2243190 e!2243187)))

(assert (=> b!3624066 (= c!627147 ((_ is Star!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun bm!262204 () Bool)

(assert (=> bm!262204 (= call!262209 call!262208)))

(declare-fun b!3624067 () Bool)

(declare-fun res!1466834 () Bool)

(assert (=> b!3624067 (=> res!1466834 e!2243185)))

(assert (=> b!3624067 (= res!1466834 (not ((_ is Concat!16358) (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))

(declare-fun e!2243184 () Bool)

(assert (=> b!3624067 (= e!2243184 e!2243185)))

(declare-fun b!3624068 () Bool)

(assert (=> b!3624068 (= e!2243187 e!2243184)))

(assert (=> b!3624068 (= c!627146 ((_ is Union!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun bm!262205 () Bool)

(assert (=> bm!262205 (= call!262210 (validRegex!4775 (ite c!627146 (regTwo!21399 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (regOne!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))))

(declare-fun b!3624069 () Bool)

(declare-fun res!1466830 () Bool)

(assert (=> b!3624069 (=> (not res!1466830) (not e!2243186))))

(assert (=> b!3624069 (= res!1466830 call!262209)))

(assert (=> b!3624069 (= e!2243184 e!2243186)))

(assert (= (and d!1066107 (not res!1466831)) b!3624066))

(assert (= (and b!3624066 c!627147) b!3624063))

(assert (= (and b!3624066 (not c!627147)) b!3624068))

(assert (= (and b!3624063 res!1466833) b!3624061))

(assert (= (and b!3624068 c!627146) b!3624069))

(assert (= (and b!3624068 (not c!627146)) b!3624067))

(assert (= (and b!3624069 res!1466830) b!3624062))

(assert (= (and b!3624067 (not res!1466834)) b!3624064))

(assert (= (and b!3624064 res!1466832) b!3624065))

(assert (= (or b!3624069 b!3624065) bm!262204))

(assert (= (or b!3624062 b!3624064) bm!262205))

(assert (= (or b!3624061 bm!262204) bm!262203))

(declare-fun m!4124343 () Bool)

(assert (=> bm!262203 m!4124343))

(declare-fun m!4124345 () Bool)

(assert (=> b!3624063 m!4124345))

(declare-fun m!4124347 () Bool)

(assert (=> bm!262205 m!4124347))

(assert (=> d!1065575 d!1066107))

(assert (=> d!1065549 d!1066065))

(declare-fun d!1066109 () Bool)

(declare-fun lt!1252541 () Bool)

(assert (=> d!1066109 (= lt!1252541 (select (content!5465 (t!294262 rules!3307)) anOtherTypeRule!33))))

(declare-fun e!2243192 () Bool)

(assert (=> d!1066109 (= lt!1252541 e!2243192)))

(declare-fun res!1466835 () Bool)

(assert (=> d!1066109 (=> (not res!1466835) (not e!2243192))))

(assert (=> d!1066109 (= res!1466835 ((_ is Cons!38167) (t!294262 rules!3307)))))

(assert (=> d!1066109 (= (contains!7432 (t!294262 rules!3307) anOtherTypeRule!33) lt!1252541)))

(declare-fun b!3624070 () Bool)

(declare-fun e!2243191 () Bool)

(assert (=> b!3624070 (= e!2243192 e!2243191)))

(declare-fun res!1466836 () Bool)

(assert (=> b!3624070 (=> res!1466836 e!2243191)))

(assert (=> b!3624070 (= res!1466836 (= (h!43587 (t!294262 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3624071 () Bool)

(assert (=> b!3624071 (= e!2243191 (contains!7432 (t!294262 (t!294262 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1066109 res!1466835) b!3624070))

(assert (= (and b!3624070 (not res!1466836)) b!3624071))

(assert (=> d!1066109 m!4124245))

(declare-fun m!4124349 () Bool)

(assert (=> d!1066109 m!4124349))

(declare-fun m!4124351 () Bool)

(assert (=> b!3624071 m!4124351))

(assert (=> b!3623021 d!1066109))

(declare-fun b!3624075 () Bool)

(declare-fun e!2243193 () Bool)

(declare-fun lt!1252542 () List!38290)

(assert (=> b!3624075 (= e!2243193 (or (not (= (_2!22152 lt!1252077) Nil!38166)) (= lt!1252542 (t!294261 lt!1252086))))))

(declare-fun b!3624074 () Bool)

(declare-fun res!1466837 () Bool)

(assert (=> b!3624074 (=> (not res!1466837) (not e!2243193))))

(assert (=> b!3624074 (= res!1466837 (= (size!29114 lt!1252542) (+ (size!29114 (t!294261 lt!1252086)) (size!29114 (_2!22152 lt!1252077)))))))

(declare-fun b!3624072 () Bool)

(declare-fun e!2243194 () List!38290)

(assert (=> b!3624072 (= e!2243194 (_2!22152 lt!1252077))))

(declare-fun d!1066111 () Bool)

(assert (=> d!1066111 e!2243193))

(declare-fun res!1466838 () Bool)

(assert (=> d!1066111 (=> (not res!1466838) (not e!2243193))))

(assert (=> d!1066111 (= res!1466838 (= (content!5464 lt!1252542) ((_ map or) (content!5464 (t!294261 lt!1252086)) (content!5464 (_2!22152 lt!1252077)))))))

(assert (=> d!1066111 (= lt!1252542 e!2243194)))

(declare-fun c!627148 () Bool)

(assert (=> d!1066111 (= c!627148 ((_ is Nil!38166) (t!294261 lt!1252086)))))

(assert (=> d!1066111 (= (++!9500 (t!294261 lt!1252086) (_2!22152 lt!1252077)) lt!1252542)))

(declare-fun b!3624073 () Bool)

(assert (=> b!3624073 (= e!2243194 (Cons!38166 (h!43586 (t!294261 lt!1252086)) (++!9500 (t!294261 (t!294261 lt!1252086)) (_2!22152 lt!1252077))))))

(assert (= (and d!1066111 c!627148) b!3624072))

(assert (= (and d!1066111 (not c!627148)) b!3624073))

(assert (= (and d!1066111 res!1466838) b!3624074))

(assert (= (and b!3624074 res!1466837) b!3624075))

(declare-fun m!4124353 () Bool)

(assert (=> b!3624074 m!4124353))

(assert (=> b!3624074 m!4124025))

(assert (=> b!3624074 m!4122905))

(declare-fun m!4124355 () Bool)

(assert (=> d!1066111 m!4124355))

(assert (=> d!1066111 m!4124299))

(assert (=> d!1066111 m!4122911))

(declare-fun m!4124357 () Bool)

(assert (=> b!3624073 m!4124357))

(assert (=> b!3622906 d!1066111))

(declare-fun b!3624079 () Bool)

(declare-fun e!2243195 () Bool)

(declare-fun lt!1252543 () List!38290)

(assert (=> b!3624079 (= e!2243195 (or (not (= (_2!22152 (get!12450 lt!1252235)) Nil!38166)) (= lt!1252543 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))))))))

(declare-fun b!3624078 () Bool)

(declare-fun res!1466839 () Bool)

(assert (=> b!3624078 (=> (not res!1466839) (not e!2243195))))

(assert (=> b!3624078 (= res!1466839 (= (size!29114 lt!1252543) (+ (size!29114 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (size!29114 (_2!22152 (get!12450 lt!1252235))))))))

(declare-fun b!3624076 () Bool)

(declare-fun e!2243196 () List!38290)

(assert (=> b!3624076 (= e!2243196 (_2!22152 (get!12450 lt!1252235)))))

(declare-fun d!1066113 () Bool)

(assert (=> d!1066113 e!2243195))

(declare-fun res!1466840 () Bool)

(assert (=> d!1066113 (=> (not res!1466840) (not e!2243195))))

(assert (=> d!1066113 (= res!1466840 (= (content!5464 lt!1252543) ((_ map or) (content!5464 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (content!5464 (_2!22152 (get!12450 lt!1252235))))))))

(assert (=> d!1066113 (= lt!1252543 e!2243196)))

(declare-fun c!627149 () Bool)

(assert (=> d!1066113 (= c!627149 ((_ is Nil!38166) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))))))

(assert (=> d!1066113 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235)))) (_2!22152 (get!12450 lt!1252235))) lt!1252543)))

(declare-fun b!3624077 () Bool)

(assert (=> b!3624077 (= e!2243196 (Cons!38166 (h!43586 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (++!9500 (t!294261 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252235))))) (_2!22152 (get!12450 lt!1252235)))))))

(assert (= (and d!1066113 c!627149) b!3624076))

(assert (= (and d!1066113 (not c!627149)) b!3624077))

(assert (= (and d!1066113 res!1466840) b!3624078))

(assert (= (and b!3624078 res!1466839) b!3624079))

(declare-fun m!4124359 () Bool)

(assert (=> b!3624078 m!4124359))

(assert (=> b!3624078 m!4122675))

(declare-fun m!4124361 () Bool)

(assert (=> b!3624078 m!4124361))

(assert (=> b!3624078 m!4122699))

(declare-fun m!4124363 () Bool)

(assert (=> d!1066113 m!4124363))

(assert (=> d!1066113 m!4122675))

(declare-fun m!4124365 () Bool)

(assert (=> d!1066113 m!4124365))

(declare-fun m!4124367 () Bool)

(assert (=> d!1066113 m!4124367))

(declare-fun m!4124369 () Bool)

(assert (=> b!3624077 m!4124369))

(assert (=> b!3622751 d!1066113))

(assert (=> b!3622751 d!1066061))

(assert (=> b!3622751 d!1066063))

(assert (=> b!3622751 d!1066035))

(declare-fun d!1066115 () Bool)

(assert (=> d!1066115 (= (list!14088 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))) (list!14091 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(declare-fun bs!571339 () Bool)

(assert (= bs!571339 d!1066115))

(declare-fun m!4124371 () Bool)

(assert (=> bs!571339 m!4124371))

(assert (=> b!3622686 d!1066115))

(declare-fun e!2243197 () Bool)

(declare-fun b!3624083 () Bool)

(declare-fun lt!1252544 () List!38290)

(assert (=> b!3624083 (= e!2243197 (or (not (= suffix!1395 Nil!38166)) (= lt!1252544 (t!294261 lt!1252088))))))

(declare-fun b!3624082 () Bool)

(declare-fun res!1466841 () Bool)

(assert (=> b!3624082 (=> (not res!1466841) (not e!2243197))))

(assert (=> b!3624082 (= res!1466841 (= (size!29114 lt!1252544) (+ (size!29114 (t!294261 lt!1252088)) (size!29114 suffix!1395))))))

(declare-fun b!3624080 () Bool)

(declare-fun e!2243198 () List!38290)

(assert (=> b!3624080 (= e!2243198 suffix!1395)))

(declare-fun d!1066117 () Bool)

(assert (=> d!1066117 e!2243197))

(declare-fun res!1466842 () Bool)

(assert (=> d!1066117 (=> (not res!1466842) (not e!2243197))))

(assert (=> d!1066117 (= res!1466842 (= (content!5464 lt!1252544) ((_ map or) (content!5464 (t!294261 lt!1252088)) (content!5464 suffix!1395))))))

(assert (=> d!1066117 (= lt!1252544 e!2243198)))

(declare-fun c!627150 () Bool)

(assert (=> d!1066117 (= c!627150 ((_ is Nil!38166) (t!294261 lt!1252088)))))

(assert (=> d!1066117 (= (++!9500 (t!294261 lt!1252088) suffix!1395) lt!1252544)))

(declare-fun b!3624081 () Bool)

(assert (=> b!3624081 (= e!2243198 (Cons!38166 (h!43586 (t!294261 lt!1252088)) (++!9500 (t!294261 (t!294261 lt!1252088)) suffix!1395)))))

(assert (= (and d!1066117 c!627150) b!3624080))

(assert (= (and d!1066117 (not c!627150)) b!3624081))

(assert (= (and d!1066117 res!1466842) b!3624082))

(assert (= (and b!3624082 res!1466841) b!3624083))

(declare-fun m!4124373 () Bool)

(assert (=> b!3624082 m!4124373))

(assert (=> b!3624082 m!4124167))

(assert (=> b!3624082 m!4122723))

(declare-fun m!4124375 () Bool)

(assert (=> d!1066117 m!4124375))

(declare-fun m!4124377 () Bool)

(assert (=> d!1066117 m!4124377))

(assert (=> d!1066117 m!4122729))

(declare-fun m!4124379 () Bool)

(assert (=> b!3624081 m!4124379))

(assert (=> b!3622774 d!1066117))

(declare-fun bs!571340 () Bool)

(declare-fun d!1066119 () Bool)

(assert (= bs!571340 (and d!1066119 d!1065421)))

(declare-fun lambda!124173 () Int)

(assert (=> bs!571340 (= (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= lambda!124173 lambda!124134))))

(declare-fun bs!571341 () Bool)

(assert (= bs!571341 (and d!1066119 d!1065975)))

(assert (=> bs!571341 (= (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 rule!403))) (= lambda!124173 lambda!124164))))

(declare-fun bs!571342 () Bool)

(assert (= bs!571342 (and d!1066119 d!1066003)))

(assert (=> bs!571342 (= (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (= lambda!124173 lambda!124165))))

(assert (=> d!1066119 true))

(assert (=> d!1066119 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (h!43587 rules!3307)))) (dynLambda!16515 order!20853 lambda!124173))))

(assert (=> d!1066119 (= (equivClasses!2310 (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (h!43587 rules!3307)))) (Forall2!964 lambda!124173))))

(declare-fun bs!571343 () Bool)

(assert (= bs!571343 d!1066119))

(declare-fun m!4124381 () Bool)

(assert (=> bs!571343 m!4124381))

(assert (=> b!3622931 d!1066119))

(declare-fun d!1066121 () Bool)

(assert (=> d!1066121 (= (nullable!3613 (regex!5684 rule!403)) (nullableFct!1038 (regex!5684 rule!403)))))

(declare-fun bs!571344 () Bool)

(assert (= bs!571344 d!1066121))

(declare-fun m!4124383 () Bool)

(assert (=> bs!571344 m!4124383))

(assert (=> b!3622975 d!1066121))

(declare-fun d!1066123 () Bool)

(declare-fun lt!1252545 () Bool)

(assert (=> d!1066123 (= lt!1252545 (select (content!5465 (t!294262 rules!3307)) rule!403))))

(declare-fun e!2243200 () Bool)

(assert (=> d!1066123 (= lt!1252545 e!2243200)))

(declare-fun res!1466843 () Bool)

(assert (=> d!1066123 (=> (not res!1466843) (not e!2243200))))

(assert (=> d!1066123 (= res!1466843 ((_ is Cons!38167) (t!294262 rules!3307)))))

(assert (=> d!1066123 (= (contains!7432 (t!294262 rules!3307) rule!403) lt!1252545)))

(declare-fun b!3624084 () Bool)

(declare-fun e!2243199 () Bool)

(assert (=> b!3624084 (= e!2243200 e!2243199)))

(declare-fun res!1466844 () Bool)

(assert (=> b!3624084 (=> res!1466844 e!2243199)))

(assert (=> b!3624084 (= res!1466844 (= (h!43587 (t!294262 rules!3307)) rule!403))))

(declare-fun b!3624085 () Bool)

(assert (=> b!3624085 (= e!2243199 (contains!7432 (t!294262 (t!294262 rules!3307)) rule!403))))

(assert (= (and d!1066123 res!1466843) b!3624084))

(assert (= (and b!3624084 (not res!1466844)) b!3624085))

(assert (=> d!1066123 m!4124245))

(declare-fun m!4124385 () Bool)

(assert (=> d!1066123 m!4124385))

(declare-fun m!4124387 () Bool)

(assert (=> b!3624085 m!4124387))

(assert (=> b!3622924 d!1066123))

(declare-fun d!1066125 () Bool)

(declare-fun charsToBigInt!1 (List!38289) Int)

(assert (=> d!1066125 (= (inv!17 (value!182454 token!511)) (= (charsToBigInt!1 (text!41846 (value!182454 token!511))) (value!182446 (value!182454 token!511))))))

(declare-fun bs!571345 () Bool)

(assert (= bs!571345 d!1066125))

(declare-fun m!4124389 () Bool)

(assert (=> bs!571345 m!4124389))

(assert (=> b!3622703 d!1066125))

(assert (=> b!3622901 d!1066009))

(declare-fun b!3624086 () Bool)

(declare-fun e!2243203 () Bool)

(declare-fun e!2243201 () Bool)

(assert (=> b!3624086 (= e!2243203 e!2243201)))

(declare-fun c!627152 () Bool)

(assert (=> b!3624086 (= c!627152 ((_ is EmptyLang!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))))

(declare-fun b!3624088 () Bool)

(declare-fun e!2243206 () Bool)

(declare-fun e!2243202 () Bool)

(assert (=> b!3624088 (= e!2243206 e!2243202)))

(declare-fun res!1466848 () Bool)

(assert (=> b!3624088 (=> res!1466848 e!2243202)))

(declare-fun call!262211 () Bool)

(assert (=> b!3624088 (= res!1466848 call!262211)))

(declare-fun e!2243207 () Bool)

(declare-fun b!3624089 () Bool)

(assert (=> b!3624089 (= e!2243207 (nullable!3613 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))))

(declare-fun b!3624090 () Bool)

(assert (=> b!3624090 (= e!2243202 (not (= (head!7656 (list!14088 (charsOf!3698 lt!1252303))) (c!626792 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))))))

(declare-fun b!3624091 () Bool)

(declare-fun res!1466849 () Bool)

(declare-fun e!2243205 () Bool)

(assert (=> b!3624091 (=> (not res!1466849) (not e!2243205))))

(assert (=> b!3624091 (= res!1466849 (not call!262211))))

(declare-fun b!3624092 () Bool)

(declare-fun lt!1252546 () Bool)

(assert (=> b!3624092 (= e!2243201 (not lt!1252546))))

(declare-fun b!3624093 () Bool)

(declare-fun res!1466847 () Bool)

(assert (=> b!3624093 (=> res!1466847 e!2243202)))

(assert (=> b!3624093 (= res!1466847 (not (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 lt!1252303))))))))

(declare-fun b!3624094 () Bool)

(assert (=> b!3624094 (= e!2243203 (= lt!1252546 call!262211))))

(declare-fun b!3624095 () Bool)

(declare-fun res!1466845 () Bool)

(declare-fun e!2243204 () Bool)

(assert (=> b!3624095 (=> res!1466845 e!2243204)))

(assert (=> b!3624095 (= res!1466845 (not ((_ is ElementMatch!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))))

(assert (=> b!3624095 (= e!2243201 e!2243204)))

(declare-fun b!3624096 () Bool)

(assert (=> b!3624096 (= e!2243205 (= (head!7656 (list!14088 (charsOf!3698 lt!1252303))) (c!626792 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))))

(declare-fun bm!262206 () Bool)

(assert (=> bm!262206 (= call!262211 (isEmpty!22559 (list!14088 (charsOf!3698 lt!1252303))))))

(declare-fun b!3624097 () Bool)

(assert (=> b!3624097 (= e!2243207 (matchR!5012 (derivativeStep!3162 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))) (head!7656 (list!14088 (charsOf!3698 lt!1252303)))) (tail!5611 (list!14088 (charsOf!3698 lt!1252303)))))))

(declare-fun d!1066127 () Bool)

(assert (=> d!1066127 e!2243203))

(declare-fun c!627153 () Bool)

(assert (=> d!1066127 (= c!627153 ((_ is EmptyExpr!10443) (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))))

(assert (=> d!1066127 (= lt!1252546 e!2243207)))

(declare-fun c!627151 () Bool)

(assert (=> d!1066127 (= c!627151 (isEmpty!22559 (list!14088 (charsOf!3698 lt!1252303))))))

(assert (=> d!1066127 (validRegex!4775 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))

(assert (=> d!1066127 (= (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))) (list!14088 (charsOf!3698 lt!1252303))) lt!1252546)))

(declare-fun b!3624087 () Bool)

(declare-fun res!1466851 () Bool)

(assert (=> b!3624087 (=> res!1466851 e!2243204)))

(assert (=> b!3624087 (= res!1466851 e!2243205)))

(declare-fun res!1466852 () Bool)

(assert (=> b!3624087 (=> (not res!1466852) (not e!2243205))))

(assert (=> b!3624087 (= res!1466852 lt!1252546)))

(declare-fun b!3624098 () Bool)

(declare-fun res!1466850 () Bool)

(assert (=> b!3624098 (=> (not res!1466850) (not e!2243205))))

(assert (=> b!3624098 (= res!1466850 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 lt!1252303)))))))

(declare-fun b!3624099 () Bool)

(assert (=> b!3624099 (= e!2243204 e!2243206)))

(declare-fun res!1466846 () Bool)

(assert (=> b!3624099 (=> (not res!1466846) (not e!2243206))))

(assert (=> b!3624099 (= res!1466846 (not lt!1252546))))

(assert (= (and d!1066127 c!627151) b!3624089))

(assert (= (and d!1066127 (not c!627151)) b!3624097))

(assert (= (and d!1066127 c!627153) b!3624094))

(assert (= (and d!1066127 (not c!627153)) b!3624086))

(assert (= (and b!3624086 c!627152) b!3624092))

(assert (= (and b!3624086 (not c!627152)) b!3624095))

(assert (= (and b!3624095 (not res!1466845)) b!3624087))

(assert (= (and b!3624087 res!1466852) b!3624091))

(assert (= (and b!3624091 res!1466849) b!3624098))

(assert (= (and b!3624098 res!1466850) b!3624096))

(assert (= (and b!3624087 (not res!1466851)) b!3624099))

(assert (= (and b!3624099 res!1466846) b!3624088))

(assert (= (and b!3624088 (not res!1466848)) b!3624093))

(assert (= (and b!3624093 (not res!1466847)) b!3624090))

(assert (= (or b!3624094 b!3624088 b!3624091) bm!262206))

(assert (=> b!3624093 m!4122857))

(declare-fun m!4124391 () Bool)

(assert (=> b!3624093 m!4124391))

(assert (=> b!3624093 m!4124391))

(declare-fun m!4124393 () Bool)

(assert (=> b!3624093 m!4124393))

(assert (=> b!3624098 m!4122857))

(assert (=> b!3624098 m!4124391))

(assert (=> b!3624098 m!4124391))

(assert (=> b!3624098 m!4124393))

(assert (=> bm!262206 m!4122857))

(declare-fun m!4124395 () Bool)

(assert (=> bm!262206 m!4124395))

(declare-fun m!4124397 () Bool)

(assert (=> b!3624089 m!4124397))

(assert (=> b!3624096 m!4122857))

(declare-fun m!4124399 () Bool)

(assert (=> b!3624096 m!4124399))

(assert (=> d!1066127 m!4122857))

(assert (=> d!1066127 m!4124395))

(declare-fun m!4124401 () Bool)

(assert (=> d!1066127 m!4124401))

(assert (=> b!3624090 m!4122857))

(assert (=> b!3624090 m!4124399))

(assert (=> b!3624097 m!4122857))

(assert (=> b!3624097 m!4124399))

(assert (=> b!3624097 m!4124399))

(declare-fun m!4124403 () Bool)

(assert (=> b!3624097 m!4124403))

(assert (=> b!3624097 m!4122857))

(assert (=> b!3624097 m!4124391))

(assert (=> b!3624097 m!4124403))

(assert (=> b!3624097 m!4124391))

(declare-fun m!4124405 () Bool)

(assert (=> b!3624097 m!4124405))

(assert (=> b!3622901 d!1066127))

(assert (=> b!3622901 d!1066043))

(assert (=> b!3622901 d!1066005))

(assert (=> b!3622901 d!1066041))

(declare-fun d!1066129 () Bool)

(declare-fun lt!1252547 () Int)

(assert (=> d!1066129 (>= lt!1252547 0)))

(declare-fun e!2243208 () Int)

(assert (=> d!1066129 (= lt!1252547 e!2243208)))

(declare-fun c!627154 () Bool)

(assert (=> d!1066129 (= c!627154 ((_ is Nil!38166) (_2!22152 (get!12450 lt!1252235))))))

(assert (=> d!1066129 (= (size!29114 (_2!22152 (get!12450 lt!1252235))) lt!1252547)))

(declare-fun b!3624100 () Bool)

(assert (=> b!3624100 (= e!2243208 0)))

(declare-fun b!3624101 () Bool)

(assert (=> b!3624101 (= e!2243208 (+ 1 (size!29114 (t!294261 (_2!22152 (get!12450 lt!1252235))))))))

(assert (= (and d!1066129 c!627154) b!3624100))

(assert (= (and d!1066129 (not c!627154)) b!3624101))

(declare-fun m!4124407 () Bool)

(assert (=> b!3624101 m!4124407))

(assert (=> b!3622747 d!1066129))

(assert (=> b!3622747 d!1066035))

(assert (=> b!3622747 d!1065987))

(declare-fun bs!571346 () Bool)

(declare-fun d!1066131 () Bool)

(assert (= bs!571346 (and d!1066131 d!1065451)))

(declare-fun lambda!124174 () Int)

(assert (=> bs!571346 (= (and (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (= lambda!124174 lambda!124137))))

(declare-fun bs!571347 () Bool)

(assert (= bs!571347 (and d!1066131 d!1066023)))

(assert (=> bs!571347 (= (and (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (h!43587 rules!3307)))) (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (h!43587 rules!3307))))) (= lambda!124174 lambda!124171))))

(declare-fun bs!571348 () Bool)

(assert (= bs!571348 (and d!1066131 d!1066101)))

(assert (=> bs!571348 (= (and (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 token!511))))) (= lambda!124174 lambda!124172))))

(assert (=> d!1066131 true))

(assert (=> d!1066131 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 anOtherTypeRule!33))) (dynLambda!16518 order!20857 lambda!124174))))

(assert (=> d!1066131 true))

(assert (=> d!1066131 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (dynLambda!16518 order!20857 lambda!124174))))

(assert (=> d!1066131 (= (semiInverseModEq!2411 (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (Forall!1367 lambda!124174))))

(declare-fun bs!571349 () Bool)

(assert (= bs!571349 d!1066131))

(declare-fun m!4124409 () Bool)

(assert (=> bs!571349 m!4124409))

(assert (=> d!1065413 d!1066131))

(assert (=> b!3622937 d!1065979))

(assert (=> b!3622937 d!1065981))

(assert (=> b!3622937 d!1065939))

(declare-fun d!1066133 () Bool)

(assert (=> d!1066133 (= (isEmpty!22563 lt!1252326) (not ((_ is Some!7997) lt!1252326)))))

(assert (=> d!1065561 d!1066133))

(declare-fun b!3624105 () Bool)

(declare-fun e!2243209 () Bool)

(assert (=> b!3624105 (= e!2243209 (>= (size!29114 lt!1252088) (size!29114 lt!1252088)))))

(declare-fun b!3624102 () Bool)

(declare-fun e!2243211 () Bool)

(declare-fun e!2243210 () Bool)

(assert (=> b!3624102 (= e!2243211 e!2243210)))

(declare-fun res!1466856 () Bool)

(assert (=> b!3624102 (=> (not res!1466856) (not e!2243210))))

(assert (=> b!3624102 (= res!1466856 (not ((_ is Nil!38166) lt!1252088)))))

(declare-fun d!1066135 () Bool)

(assert (=> d!1066135 e!2243209))

(declare-fun res!1466853 () Bool)

(assert (=> d!1066135 (=> res!1466853 e!2243209)))

(declare-fun lt!1252548 () Bool)

(assert (=> d!1066135 (= res!1466853 (not lt!1252548))))

(assert (=> d!1066135 (= lt!1252548 e!2243211)))

(declare-fun res!1466855 () Bool)

(assert (=> d!1066135 (=> res!1466855 e!2243211)))

(assert (=> d!1066135 (= res!1466855 ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1066135 (= (isPrefix!3047 lt!1252088 lt!1252088) lt!1252548)))

(declare-fun b!3624103 () Bool)

(declare-fun res!1466854 () Bool)

(assert (=> b!3624103 (=> (not res!1466854) (not e!2243210))))

(assert (=> b!3624103 (= res!1466854 (= (head!7656 lt!1252088) (head!7656 lt!1252088)))))

(declare-fun b!3624104 () Bool)

(assert (=> b!3624104 (= e!2243210 (isPrefix!3047 (tail!5611 lt!1252088) (tail!5611 lt!1252088)))))

(assert (= (and d!1066135 (not res!1466855)) b!3624102))

(assert (= (and b!3624102 res!1466856) b!3624103))

(assert (= (and b!3624103 res!1466854) b!3624104))

(assert (= (and d!1066135 (not res!1466853)) b!3624105))

(assert (=> b!3624105 m!4122641))

(assert (=> b!3624105 m!4122641))

(assert (=> b!3624103 m!4122643))

(assert (=> b!3624103 m!4122643))

(assert (=> b!3624104 m!4122647))

(assert (=> b!3624104 m!4122647))

(assert (=> b!3624104 m!4122647))

(assert (=> b!3624104 m!4122647))

(declare-fun m!4124411 () Bool)

(assert (=> b!3624104 m!4124411))

(assert (=> d!1065561 d!1066135))

(declare-fun d!1066137 () Bool)

(assert (=> d!1066137 (isPrefix!3047 lt!1252088 lt!1252088)))

(declare-fun lt!1252551 () Unit!54914)

(declare-fun choose!21268 (List!38290 List!38290) Unit!54914)

(assert (=> d!1066137 (= lt!1252551 (choose!21268 lt!1252088 lt!1252088))))

(assert (=> d!1066137 (= (lemmaIsPrefixRefl!1932 lt!1252088 lt!1252088) lt!1252551)))

(declare-fun bs!571350 () Bool)

(assert (= bs!571350 d!1066137))

(assert (=> bs!571350 m!4122963))

(declare-fun m!4124413 () Bool)

(assert (=> bs!571350 m!4124413))

(assert (=> d!1065561 d!1066137))

(declare-fun bs!571351 () Bool)

(declare-fun d!1066139 () Bool)

(assert (= bs!571351 (and d!1066139 d!1066019)))

(declare-fun lambda!124177 () Int)

(assert (=> bs!571351 (= lambda!124177 lambda!124168)))

(assert (=> d!1066139 true))

(declare-fun lt!1252554 () Bool)

(assert (=> d!1066139 (= lt!1252554 (forall!8151 rules!3307 lambda!124177))))

(declare-fun e!2243217 () Bool)

(assert (=> d!1066139 (= lt!1252554 e!2243217)))

(declare-fun res!1466861 () Bool)

(assert (=> d!1066139 (=> res!1466861 e!2243217)))

(assert (=> d!1066139 (= res!1466861 (not ((_ is Cons!38167) rules!3307)))))

(assert (=> d!1066139 (= (rulesValidInductive!1997 thiss!23823 rules!3307) lt!1252554)))

(declare-fun b!3624110 () Bool)

(declare-fun e!2243216 () Bool)

(assert (=> b!3624110 (= e!2243217 e!2243216)))

(declare-fun res!1466862 () Bool)

(assert (=> b!3624110 (=> (not res!1466862) (not e!2243216))))

(assert (=> b!3624110 (= res!1466862 (ruleValid!1949 thiss!23823 (h!43587 rules!3307)))))

(declare-fun b!3624111 () Bool)

(assert (=> b!3624111 (= e!2243216 (rulesValidInductive!1997 thiss!23823 (t!294262 rules!3307)))))

(assert (= (and d!1066139 (not res!1466861)) b!3624110))

(assert (= (and b!3624110 res!1466862) b!3624111))

(declare-fun m!4124415 () Bool)

(assert (=> d!1066139 m!4124415))

(assert (=> b!3624110 m!4124085))

(assert (=> b!3624111 m!4124005))

(assert (=> d!1065561 d!1066139))

(declare-fun d!1066141 () Bool)

(declare-fun lt!1252555 () Bool)

(assert (=> d!1066141 (= lt!1252555 (select (content!5465 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))

(declare-fun e!2243219 () Bool)

(assert (=> d!1066141 (= lt!1252555 e!2243219)))

(declare-fun res!1466863 () Bool)

(assert (=> d!1066141 (=> (not res!1466863) (not e!2243219))))

(assert (=> d!1066141 (= res!1466863 ((_ is Cons!38167) rules!3307))))

(assert (=> d!1066141 (= (contains!7432 rules!3307 (rule!8446 (_1!22152 (get!12450 lt!1252326)))) lt!1252555)))

(declare-fun b!3624112 () Bool)

(declare-fun e!2243218 () Bool)

(assert (=> b!3624112 (= e!2243219 e!2243218)))

(declare-fun res!1466864 () Bool)

(assert (=> b!3624112 (=> res!1466864 e!2243218)))

(assert (=> b!3624112 (= res!1466864 (= (h!43587 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))

(declare-fun b!3624113 () Bool)

(assert (=> b!3624113 (= e!2243218 (contains!7432 (t!294262 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252326)))))))

(assert (= (and d!1066141 res!1466863) b!3624112))

(assert (= (and b!3624112 (not res!1466864)) b!3624113))

(assert (=> d!1066141 m!4122927))

(declare-fun m!4124417 () Bool)

(assert (=> d!1066141 m!4124417))

(declare-fun m!4124419 () Bool)

(assert (=> b!3624113 m!4124419))

(assert (=> b!3622941 d!1066141))

(assert (=> b!3622941 d!1065939))

(declare-fun b!3624114 () Bool)

(declare-fun e!2243222 () Bool)

(declare-fun e!2243220 () Bool)

(assert (=> b!3624114 (= e!2243222 e!2243220)))

(declare-fun c!627156 () Bool)

(assert (=> b!3624114 (= c!627156 ((_ is EmptyLang!10443) (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086))))))

(declare-fun b!3624116 () Bool)

(declare-fun e!2243225 () Bool)

(declare-fun e!2243221 () Bool)

(assert (=> b!3624116 (= e!2243225 e!2243221)))

(declare-fun res!1466868 () Bool)

(assert (=> b!3624116 (=> res!1466868 e!2243221)))

(declare-fun call!262212 () Bool)

(assert (=> b!3624116 (= res!1466868 call!262212)))

(declare-fun b!3624117 () Bool)

(declare-fun e!2243226 () Bool)

(assert (=> b!3624117 (= e!2243226 (nullable!3613 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086))))))

(declare-fun b!3624118 () Bool)

(assert (=> b!3624118 (= e!2243221 (not (= (head!7656 (tail!5611 lt!1252086)) (c!626792 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086))))))))

(declare-fun b!3624119 () Bool)

(declare-fun res!1466869 () Bool)

(declare-fun e!2243224 () Bool)

(assert (=> b!3624119 (=> (not res!1466869) (not e!2243224))))

(assert (=> b!3624119 (= res!1466869 (not call!262212))))

(declare-fun b!3624120 () Bool)

(declare-fun lt!1252556 () Bool)

(assert (=> b!3624120 (= e!2243220 (not lt!1252556))))

(declare-fun b!3624121 () Bool)

(declare-fun res!1466867 () Bool)

(assert (=> b!3624121 (=> res!1466867 e!2243221)))

(assert (=> b!3624121 (= res!1466867 (not (isEmpty!22559 (tail!5611 (tail!5611 lt!1252086)))))))

(declare-fun b!3624122 () Bool)

(assert (=> b!3624122 (= e!2243222 (= lt!1252556 call!262212))))

(declare-fun b!3624123 () Bool)

(declare-fun res!1466865 () Bool)

(declare-fun e!2243223 () Bool)

(assert (=> b!3624123 (=> res!1466865 e!2243223)))

(assert (=> b!3624123 (= res!1466865 (not ((_ is ElementMatch!10443) (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)))))))

(assert (=> b!3624123 (= e!2243220 e!2243223)))

(declare-fun b!3624124 () Bool)

(assert (=> b!3624124 (= e!2243224 (= (head!7656 (tail!5611 lt!1252086)) (c!626792 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)))))))

(declare-fun bm!262207 () Bool)

(assert (=> bm!262207 (= call!262212 (isEmpty!22559 (tail!5611 lt!1252086)))))

(declare-fun b!3624125 () Bool)

(assert (=> b!3624125 (= e!2243226 (matchR!5012 (derivativeStep!3162 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)) (head!7656 (tail!5611 lt!1252086))) (tail!5611 (tail!5611 lt!1252086))))))

(declare-fun d!1066143 () Bool)

(assert (=> d!1066143 e!2243222))

(declare-fun c!627157 () Bool)

(assert (=> d!1066143 (= c!627157 ((_ is EmptyExpr!10443) (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086))))))

(assert (=> d!1066143 (= lt!1252556 e!2243226)))

(declare-fun c!627155 () Bool)

(assert (=> d!1066143 (= c!627155 (isEmpty!22559 (tail!5611 lt!1252086)))))

(assert (=> d!1066143 (validRegex!4775 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)))))

(assert (=> d!1066143 (= (matchR!5012 (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)) (tail!5611 lt!1252086)) lt!1252556)))

(declare-fun b!3624115 () Bool)

(declare-fun res!1466871 () Bool)

(assert (=> b!3624115 (=> res!1466871 e!2243223)))

(assert (=> b!3624115 (= res!1466871 e!2243224)))

(declare-fun res!1466872 () Bool)

(assert (=> b!3624115 (=> (not res!1466872) (not e!2243224))))

(assert (=> b!3624115 (= res!1466872 lt!1252556)))

(declare-fun b!3624126 () Bool)

(declare-fun res!1466870 () Bool)

(assert (=> b!3624126 (=> (not res!1466870) (not e!2243224))))

(assert (=> b!3624126 (= res!1466870 (isEmpty!22559 (tail!5611 (tail!5611 lt!1252086))))))

(declare-fun b!3624127 () Bool)

(assert (=> b!3624127 (= e!2243223 e!2243225)))

(declare-fun res!1466866 () Bool)

(assert (=> b!3624127 (=> (not res!1466866) (not e!2243225))))

(assert (=> b!3624127 (= res!1466866 (not lt!1252556))))

(assert (= (and d!1066143 c!627155) b!3624117))

(assert (= (and d!1066143 (not c!627155)) b!3624125))

(assert (= (and d!1066143 c!627157) b!3624122))

(assert (= (and d!1066143 (not c!627157)) b!3624114))

(assert (= (and b!3624114 c!627156) b!3624120))

(assert (= (and b!3624114 (not c!627156)) b!3624123))

(assert (= (and b!3624123 (not res!1466865)) b!3624115))

(assert (= (and b!3624115 res!1466872) b!3624119))

(assert (= (and b!3624119 res!1466869) b!3624126))

(assert (= (and b!3624126 res!1466870) b!3624124))

(assert (= (and b!3624115 (not res!1466871)) b!3624127))

(assert (= (and b!3624127 res!1466866) b!3624116))

(assert (= (and b!3624116 (not res!1466868)) b!3624121))

(assert (= (and b!3624121 (not res!1466867)) b!3624118))

(assert (= (or b!3624122 b!3624116 b!3624119) bm!262207))

(assert (=> b!3624121 m!4122663))

(assert (=> b!3624121 m!4124281))

(assert (=> b!3624121 m!4124281))

(declare-fun m!4124421 () Bool)

(assert (=> b!3624121 m!4124421))

(assert (=> b!3624126 m!4122663))

(assert (=> b!3624126 m!4124281))

(assert (=> b!3624126 m!4124281))

(assert (=> b!3624126 m!4124421))

(assert (=> bm!262207 m!4122663))

(assert (=> bm!262207 m!4122995))

(assert (=> b!3624117 m!4123003))

(declare-fun m!4124423 () Bool)

(assert (=> b!3624117 m!4124423))

(assert (=> b!3624124 m!4122663))

(assert (=> b!3624124 m!4124277))

(assert (=> d!1066143 m!4122663))

(assert (=> d!1066143 m!4122995))

(assert (=> d!1066143 m!4123003))

(declare-fun m!4124425 () Bool)

(assert (=> d!1066143 m!4124425))

(assert (=> b!3624118 m!4122663))

(assert (=> b!3624118 m!4124277))

(assert (=> b!3624125 m!4122663))

(assert (=> b!3624125 m!4124277))

(assert (=> b!3624125 m!4123003))

(assert (=> b!3624125 m!4124277))

(declare-fun m!4124427 () Bool)

(assert (=> b!3624125 m!4124427))

(assert (=> b!3624125 m!4122663))

(assert (=> b!3624125 m!4124281))

(assert (=> b!3624125 m!4124427))

(assert (=> b!3624125 m!4124281))

(declare-fun m!4124429 () Bool)

(assert (=> b!3624125 m!4124429))

(assert (=> b!3623003 d!1066143))

(declare-fun b!3624128 () Bool)

(declare-fun e!2243231 () Regex!10443)

(declare-fun call!262213 () Regex!10443)

(assert (=> b!3624128 (= e!2243231 (Union!10443 (Concat!16358 call!262213 (regTwo!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))) EmptyLang!10443))))

(declare-fun c!627159 () Bool)

(declare-fun call!262214 () Regex!10443)

(declare-fun bm!262208 () Bool)

(declare-fun c!627160 () Bool)

(assert (=> bm!262208 (= call!262214 (derivativeStep!3162 (ite c!627160 (regTwo!21399 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (ite c!627159 (reg!10772 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (regOne!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))) (head!7656 lt!1252086)))))

(declare-fun b!3624129 () Bool)

(declare-fun c!627158 () Bool)

(assert (=> b!3624129 (= c!627158 (nullable!3613 (regOne!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))

(declare-fun e!2243227 () Regex!10443)

(assert (=> b!3624129 (= e!2243227 e!2243231)))

(declare-fun b!3624131 () Bool)

(declare-fun e!2243228 () Regex!10443)

(declare-fun call!262216 () Regex!10443)

(assert (=> b!3624131 (= e!2243228 (Union!10443 call!262216 call!262214))))

(declare-fun b!3624132 () Bool)

(declare-fun e!2243229 () Regex!10443)

(assert (=> b!3624132 (= e!2243229 (ite (= (head!7656 lt!1252086) (c!626792 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))) EmptyExpr!10443 EmptyLang!10443))))

(declare-fun bm!262209 () Bool)

(declare-fun call!262215 () Regex!10443)

(assert (=> bm!262209 (= call!262215 call!262214)))

(declare-fun b!3624133 () Bool)

(declare-fun e!2243230 () Regex!10443)

(assert (=> b!3624133 (= e!2243230 e!2243229)))

(declare-fun c!627162 () Bool)

(assert (=> b!3624133 (= c!627162 ((_ is ElementMatch!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3624134 () Bool)

(assert (=> b!3624134 (= e!2243228 e!2243227)))

(assert (=> b!3624134 (= c!627159 ((_ is Star!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3624135 () Bool)

(assert (=> b!3624135 (= e!2243231 (Union!10443 (Concat!16358 call!262213 (regTwo!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))) call!262216))))

(declare-fun b!3624136 () Bool)

(assert (=> b!3624136 (= c!627160 ((_ is Union!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(assert (=> b!3624136 (= e!2243229 e!2243228)))

(declare-fun bm!262210 () Bool)

(assert (=> bm!262210 (= call!262213 call!262215)))

(declare-fun b!3624137 () Bool)

(assert (=> b!3624137 (= e!2243230 EmptyLang!10443)))

(declare-fun bm!262211 () Bool)

(assert (=> bm!262211 (= call!262216 (derivativeStep!3162 (ite c!627160 (regOne!21399 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (regTwo!21398 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))) (head!7656 lt!1252086)))))

(declare-fun b!3624130 () Bool)

(assert (=> b!3624130 (= e!2243227 (Concat!16358 call!262215 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun d!1066145 () Bool)

(declare-fun lt!1252557 () Regex!10443)

(assert (=> d!1066145 (validRegex!4775 lt!1252557)))

(assert (=> d!1066145 (= lt!1252557 e!2243230)))

(declare-fun c!627161 () Bool)

(assert (=> d!1066145 (= c!627161 (or ((_ is EmptyExpr!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) ((_ is EmptyLang!10443) (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> d!1066145 (validRegex!4775 (regex!5684 (rule!8446 (_1!22152 lt!1252077))))))

(assert (=> d!1066145 (= (derivativeStep!3162 (regex!5684 (rule!8446 (_1!22152 lt!1252077))) (head!7656 lt!1252086)) lt!1252557)))

(assert (= (and d!1066145 c!627161) b!3624137))

(assert (= (and d!1066145 (not c!627161)) b!3624133))

(assert (= (and b!3624133 c!627162) b!3624132))

(assert (= (and b!3624133 (not c!627162)) b!3624136))

(assert (= (and b!3624136 c!627160) b!3624131))

(assert (= (and b!3624136 (not c!627160)) b!3624134))

(assert (= (and b!3624134 c!627159) b!3624130))

(assert (= (and b!3624134 (not c!627159)) b!3624129))

(assert (= (and b!3624129 c!627158) b!3624135))

(assert (= (and b!3624129 (not c!627158)) b!3624128))

(assert (= (or b!3624135 b!3624128) bm!262210))

(assert (= (or b!3624130 bm!262210) bm!262209))

(assert (= (or b!3624131 bm!262209) bm!262208))

(assert (= (or b!3624131 b!3624135) bm!262211))

(assert (=> bm!262208 m!4122659))

(declare-fun m!4124431 () Bool)

(assert (=> bm!262208 m!4124431))

(declare-fun m!4124433 () Bool)

(assert (=> b!3624129 m!4124433))

(assert (=> bm!262211 m!4122659))

(declare-fun m!4124435 () Bool)

(assert (=> bm!262211 m!4124435))

(declare-fun m!4124437 () Bool)

(assert (=> d!1066145 m!4124437))

(assert (=> d!1066145 m!4123001))

(assert (=> b!3623003 d!1066145))

(assert (=> b!3623003 d!1065963))

(assert (=> b!3623003 d!1066033))

(assert (=> b!3622990 d!1066121))

(declare-fun d!1066147 () Bool)

(declare-fun lt!1252558 () Int)

(assert (=> d!1066147 (>= lt!1252558 0)))

(declare-fun e!2243232 () Int)

(assert (=> d!1066147 (= lt!1252558 e!2243232)))

(declare-fun c!627163 () Bool)

(assert (=> d!1066147 (= c!627163 ((_ is Nil!38166) (originalCharacters!6398 (_1!22152 lt!1252077))))))

(assert (=> d!1066147 (= (size!29114 (originalCharacters!6398 (_1!22152 lt!1252077))) lt!1252558)))

(declare-fun b!3624138 () Bool)

(assert (=> b!3624138 (= e!2243232 0)))

(declare-fun b!3624139 () Bool)

(assert (=> b!3624139 (= e!2243232 (+ 1 (size!29114 (t!294261 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(assert (= (and d!1066147 c!627163) b!3624138))

(assert (= (and d!1066147 (not c!627163)) b!3624139))

(declare-fun m!4124439 () Bool)

(assert (=> b!3624139 m!4124439))

(assert (=> d!1065455 d!1066147))

(declare-fun d!1066149 () Bool)

(declare-fun c!627164 () Bool)

(assert (=> d!1066149 (= c!627164 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(declare-fun e!2243233 () Bool)

(assert (=> d!1066149 (= (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))) e!2243233)))

(declare-fun b!3624140 () Bool)

(assert (=> b!3624140 (= e!2243233 (inv!51571 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(declare-fun b!3624141 () Bool)

(declare-fun e!2243234 () Bool)

(assert (=> b!3624141 (= e!2243233 e!2243234)))

(declare-fun res!1466873 () Bool)

(assert (=> b!3624141 (= res!1466873 (not ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))))))

(assert (=> b!3624141 (=> res!1466873 e!2243234)))

(declare-fun b!3624142 () Bool)

(assert (=> b!3624142 (= e!2243234 (inv!51572 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(assert (= (and d!1066149 c!627164) b!3624140))

(assert (= (and d!1066149 (not c!627164)) b!3624141))

(assert (= (and b!3624141 (not res!1466873)) b!3624142))

(declare-fun m!4124441 () Bool)

(assert (=> b!3624140 m!4124441))

(declare-fun m!4124443 () Bool)

(assert (=> b!3624142 m!4124443))

(assert (=> b!3622688 d!1066149))

(assert (=> bm!262097 d!1066079))

(declare-fun d!1066151 () Bool)

(declare-fun c!627165 () Bool)

(assert (=> d!1066151 (= c!627165 ((_ is Nil!38166) (usedCharacters!898 (regex!5684 rule!403))))))

(declare-fun e!2243235 () (InoxSet C!21072))

(assert (=> d!1066151 (= (content!5464 (usedCharacters!898 (regex!5684 rule!403))) e!2243235)))

(declare-fun b!3624143 () Bool)

(assert (=> b!3624143 (= e!2243235 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3624144 () Bool)

(assert (=> b!3624144 (= e!2243235 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 (usedCharacters!898 (regex!5684 rule!403))) true) (content!5464 (t!294261 (usedCharacters!898 (regex!5684 rule!403))))))))

(assert (= (and d!1066151 c!627165) b!3624143))

(assert (= (and d!1066151 (not c!627165)) b!3624144))

(declare-fun m!4124445 () Bool)

(assert (=> b!3624144 m!4124445))

(declare-fun m!4124447 () Bool)

(assert (=> b!3624144 m!4124447))

(assert (=> d!1065461 d!1066151))

(declare-fun d!1066153 () Bool)

(assert (=> d!1066153 (= (isEmpty!22562 lt!1252085) (not ((_ is Some!7998) lt!1252085)))))

(assert (=> d!1065479 d!1066153))

(declare-fun d!1066155 () Bool)

(assert (=> d!1066155 (= (nullable!3613 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))) (nullableFct!1038 (regex!5684 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun bs!571352 () Bool)

(assert (= bs!571352 d!1066155))

(declare-fun m!4124449 () Bool)

(assert (=> bs!571352 m!4124449))

(assert (=> b!3622995 d!1066155))

(declare-fun d!1066157 () Bool)

(declare-fun lt!1252559 () Bool)

(assert (=> d!1066157 (= lt!1252559 (select (content!5464 (t!294261 (usedCharacters!898 (regex!5684 rule!403)))) lt!1252080))))

(declare-fun e!2243237 () Bool)

(assert (=> d!1066157 (= lt!1252559 e!2243237)))

(declare-fun res!1466874 () Bool)

(assert (=> d!1066157 (=> (not res!1466874) (not e!2243237))))

(assert (=> d!1066157 (= res!1466874 ((_ is Cons!38166) (t!294261 (usedCharacters!898 (regex!5684 rule!403)))))))

(assert (=> d!1066157 (= (contains!7431 (t!294261 (usedCharacters!898 (regex!5684 rule!403))) lt!1252080) lt!1252559)))

(declare-fun b!3624145 () Bool)

(declare-fun e!2243236 () Bool)

(assert (=> b!3624145 (= e!2243237 e!2243236)))

(declare-fun res!1466875 () Bool)

(assert (=> b!3624145 (=> res!1466875 e!2243236)))

(assert (=> b!3624145 (= res!1466875 (= (h!43586 (t!294261 (usedCharacters!898 (regex!5684 rule!403)))) lt!1252080))))

(declare-fun b!3624146 () Bool)

(assert (=> b!3624146 (= e!2243236 (contains!7431 (t!294261 (t!294261 (usedCharacters!898 (regex!5684 rule!403)))) lt!1252080))))

(assert (= (and d!1066157 res!1466874) b!3624145))

(assert (= (and b!3624145 (not res!1466875)) b!3624146))

(assert (=> d!1066157 m!4124447))

(declare-fun m!4124451 () Bool)

(assert (=> d!1066157 m!4124451))

(declare-fun m!4124453 () Bool)

(assert (=> b!3624146 m!4124453))

(assert (=> b!3622655 d!1066157))

(assert (=> d!1065577 d!1065957))

(declare-fun bm!262212 () Bool)

(declare-fun c!627167 () Bool)

(declare-fun call!262217 () Bool)

(declare-fun c!627166 () Bool)

(assert (=> bm!262212 (= call!262217 (validRegex!4775 (ite c!627167 (reg!10772 (regex!5684 lt!1252074)) (ite c!627166 (regOne!21399 (regex!5684 lt!1252074)) (regTwo!21398 (regex!5684 lt!1252074))))))))

(declare-fun b!3624147 () Bool)

(declare-fun e!2243243 () Bool)

(assert (=> b!3624147 (= e!2243243 call!262217)))

(declare-fun b!3624148 () Bool)

(declare-fun e!2243240 () Bool)

(declare-fun call!262219 () Bool)

(assert (=> b!3624148 (= e!2243240 call!262219)))

(declare-fun d!1066159 () Bool)

(declare-fun res!1466877 () Bool)

(declare-fun e!2243244 () Bool)

(assert (=> d!1066159 (=> res!1466877 e!2243244)))

(assert (=> d!1066159 (= res!1466877 ((_ is ElementMatch!10443) (regex!5684 lt!1252074)))))

(assert (=> d!1066159 (= (validRegex!4775 (regex!5684 lt!1252074)) e!2243244)))

(declare-fun b!3624149 () Bool)

(declare-fun e!2243241 () Bool)

(assert (=> b!3624149 (= e!2243241 e!2243243)))

(declare-fun res!1466879 () Bool)

(assert (=> b!3624149 (= res!1466879 (not (nullable!3613 (reg!10772 (regex!5684 lt!1252074)))))))

(assert (=> b!3624149 (=> (not res!1466879) (not e!2243243))))

(declare-fun b!3624150 () Bool)

(declare-fun e!2243239 () Bool)

(declare-fun e!2243242 () Bool)

(assert (=> b!3624150 (= e!2243239 e!2243242)))

(declare-fun res!1466878 () Bool)

(assert (=> b!3624150 (=> (not res!1466878) (not e!2243242))))

(assert (=> b!3624150 (= res!1466878 call!262219)))

(declare-fun b!3624151 () Bool)

(declare-fun call!262218 () Bool)

(assert (=> b!3624151 (= e!2243242 call!262218)))

(declare-fun b!3624152 () Bool)

(assert (=> b!3624152 (= e!2243244 e!2243241)))

(assert (=> b!3624152 (= c!627167 ((_ is Star!10443) (regex!5684 lt!1252074)))))

(declare-fun bm!262213 () Bool)

(assert (=> bm!262213 (= call!262218 call!262217)))

(declare-fun b!3624153 () Bool)

(declare-fun res!1466880 () Bool)

(assert (=> b!3624153 (=> res!1466880 e!2243239)))

(assert (=> b!3624153 (= res!1466880 (not ((_ is Concat!16358) (regex!5684 lt!1252074))))))

(declare-fun e!2243238 () Bool)

(assert (=> b!3624153 (= e!2243238 e!2243239)))

(declare-fun b!3624154 () Bool)

(assert (=> b!3624154 (= e!2243241 e!2243238)))

(assert (=> b!3624154 (= c!627166 ((_ is Union!10443) (regex!5684 lt!1252074)))))

(declare-fun bm!262214 () Bool)

(assert (=> bm!262214 (= call!262219 (validRegex!4775 (ite c!627166 (regTwo!21399 (regex!5684 lt!1252074)) (regOne!21398 (regex!5684 lt!1252074)))))))

(declare-fun b!3624155 () Bool)

(declare-fun res!1466876 () Bool)

(assert (=> b!3624155 (=> (not res!1466876) (not e!2243240))))

(assert (=> b!3624155 (= res!1466876 call!262218)))

(assert (=> b!3624155 (= e!2243238 e!2243240)))

(assert (= (and d!1066159 (not res!1466877)) b!3624152))

(assert (= (and b!3624152 c!627167) b!3624149))

(assert (= (and b!3624152 (not c!627167)) b!3624154))

(assert (= (and b!3624149 res!1466879) b!3624147))

(assert (= (and b!3624154 c!627166) b!3624155))

(assert (= (and b!3624154 (not c!627166)) b!3624153))

(assert (= (and b!3624155 res!1466876) b!3624148))

(assert (= (and b!3624153 (not res!1466880)) b!3624150))

(assert (= (and b!3624150 res!1466878) b!3624151))

(assert (= (or b!3624155 b!3624151) bm!262213))

(assert (= (or b!3624148 b!3624150) bm!262214))

(assert (= (or b!3624147 bm!262213) bm!262212))

(declare-fun m!4124455 () Bool)

(assert (=> bm!262212 m!4124455))

(declare-fun m!4124457 () Bool)

(assert (=> b!3624149 m!4124457))

(declare-fun m!4124459 () Bool)

(assert (=> bm!262214 m!4124459))

(assert (=> d!1065577 d!1066159))

(declare-fun d!1066161 () Bool)

(assert (=> d!1066161 (= (isDefined!6231 lt!1252326) (not (isEmpty!22563 lt!1252326)))))

(declare-fun bs!571353 () Bool)

(assert (= bs!571353 d!1066161))

(assert (=> bs!571353 m!4122961))

(assert (=> b!3622936 d!1066161))

(assert (=> b!3622999 d!1066031))

(assert (=> b!3622999 d!1066033))

(declare-fun b!3624156 () Bool)

(declare-fun e!2243246 () List!38290)

(declare-fun call!262223 () List!38290)

(assert (=> b!3624156 (= e!2243246 call!262223)))

(declare-fun b!3624157 () Bool)

(declare-fun e!2243248 () List!38290)

(assert (=> b!3624157 (= e!2243248 Nil!38166)))

(declare-fun b!3624158 () Bool)

(declare-fun e!2243247 () List!38290)

(declare-fun call!262221 () List!38290)

(assert (=> b!3624158 (= e!2243247 call!262221)))

(declare-fun c!627171 () Bool)

(declare-fun c!627168 () Bool)

(declare-fun bm!262215 () Bool)

(assert (=> bm!262215 (= call!262223 (usedCharacters!898 (ite c!627171 (reg!10772 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) (ite c!627168 (regTwo!21399 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) (regOne!21398 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33))))))))))

(declare-fun bm!262216 () Bool)

(declare-fun call!262220 () List!38290)

(assert (=> bm!262216 (= call!262220 call!262223)))

(declare-fun b!3624159 () Bool)

(declare-fun e!2243245 () List!38290)

(assert (=> b!3624159 (= e!2243245 (Cons!38166 (c!626792 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) Nil!38166))))

(declare-fun b!3624160 () Bool)

(assert (=> b!3624160 (= c!627171 ((_ is Star!10443) (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))))))

(assert (=> b!3624160 (= e!2243245 e!2243246)))

(declare-fun bm!262217 () Bool)

(declare-fun call!262222 () List!38290)

(assert (=> bm!262217 (= call!262221 (++!9500 (ite c!627168 call!262222 call!262220) (ite c!627168 call!262220 call!262222)))))

(declare-fun b!3624161 () Bool)

(assert (=> b!3624161 (= e!2243247 call!262221)))

(declare-fun bm!262218 () Bool)

(assert (=> bm!262218 (= call!262222 (usedCharacters!898 (ite c!627168 (regOne!21399 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) (regTwo!21398 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))))))))

(declare-fun b!3624163 () Bool)

(assert (=> b!3624163 (= e!2243246 e!2243247)))

(assert (=> b!3624163 (= c!627168 ((_ is Union!10443) (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))))))

(declare-fun b!3624162 () Bool)

(assert (=> b!3624162 (= e!2243248 e!2243245)))

(declare-fun c!627169 () Bool)

(assert (=> b!3624162 (= c!627169 ((_ is ElementMatch!10443) (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))))))

(declare-fun d!1066163 () Bool)

(declare-fun c!627170 () Bool)

(assert (=> d!1066163 (= c!627170 (or ((_ is EmptyExpr!10443) (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) ((_ is EmptyLang!10443) (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33))))))))

(assert (=> d!1066163 (= (usedCharacters!898 (ite c!626885 (regOne!21399 (regex!5684 anOtherTypeRule!33)) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) e!2243248)))

(assert (= (and d!1066163 c!627170) b!3624157))

(assert (= (and d!1066163 (not c!627170)) b!3624162))

(assert (= (and b!3624162 c!627169) b!3624159))

(assert (= (and b!3624162 (not c!627169)) b!3624160))

(assert (= (and b!3624160 c!627171) b!3624156))

(assert (= (and b!3624160 (not c!627171)) b!3624163))

(assert (= (and b!3624163 c!627168) b!3624161))

(assert (= (and b!3624163 (not c!627168)) b!3624158))

(assert (= (or b!3624161 b!3624158) bm!262218))

(assert (= (or b!3624161 b!3624158) bm!262216))

(assert (= (or b!3624161 b!3624158) bm!262217))

(assert (= (or b!3624156 bm!262216) bm!262215))

(declare-fun m!4124461 () Bool)

(assert (=> bm!262215 m!4124461))

(declare-fun m!4124463 () Bool)

(assert (=> bm!262217 m!4124463))

(declare-fun m!4124465 () Bool)

(assert (=> bm!262218 m!4124465))

(assert (=> bm!262093 d!1066163))

(assert (=> b!3623018 d!1065949))

(assert (=> b!3623018 d!1065951))

(declare-fun d!1066165 () Bool)

(declare-fun lt!1252560 () Int)

(assert (=> d!1066165 (>= lt!1252560 0)))

(declare-fun e!2243249 () Int)

(assert (=> d!1066165 (= lt!1252560 e!2243249)))

(declare-fun c!627172 () Bool)

(assert (=> d!1066165 (= c!627172 ((_ is Nil!38166) (++!9500 lt!1252086 (_2!22152 lt!1252077))))))

(assert (=> d!1066165 (= (size!29114 (++!9500 lt!1252086 (_2!22152 lt!1252077))) lt!1252560)))

(declare-fun b!3624164 () Bool)

(assert (=> b!3624164 (= e!2243249 0)))

(declare-fun b!3624165 () Bool)

(assert (=> b!3624165 (= e!2243249 (+ 1 (size!29114 (t!294261 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))))

(assert (= (and d!1066165 c!627172) b!3624164))

(assert (= (and d!1066165 (not c!627172)) b!3624165))

(declare-fun m!4124467 () Bool)

(assert (=> b!3624165 m!4124467))

(assert (=> b!3622725 d!1066165))

(assert (=> b!3622725 d!1065989))

(declare-fun d!1066167 () Bool)

(assert (=> d!1066167 (= (isEmpty!22559 (originalCharacters!6398 token!511)) ((_ is Nil!38166) (originalCharacters!6398 token!511)))))

(assert (=> d!1065475 d!1066167))

(assert (=> b!3622719 d!1066097))

(declare-fun d!1066169 () Bool)

(assert (=> d!1066169 (= (head!7656 lt!1252082) (h!43586 lt!1252082))))

(assert (=> b!3622719 d!1066169))

(declare-fun bs!571354 () Bool)

(declare-fun d!1066171 () Bool)

(assert (= bs!571354 (and d!1066171 d!1065421)))

(declare-fun lambda!124178 () Int)

(assert (=> bs!571354 (= (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= lambda!124178 lambda!124134))))

(declare-fun bs!571355 () Bool)

(assert (= bs!571355 (and d!1066171 d!1065975)))

(assert (=> bs!571355 (= (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 rule!403))) (= lambda!124178 lambda!124164))))

(declare-fun bs!571356 () Bool)

(assert (= bs!571356 (and d!1066171 d!1066003)))

(assert (=> bs!571356 (= (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 anOtherTypeRule!33))) (= lambda!124178 lambda!124165))))

(declare-fun bs!571357 () Bool)

(assert (= bs!571357 (and d!1066171 d!1066119)))

(assert (=> bs!571357 (= (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (h!43587 rules!3307)))) (= lambda!124178 lambda!124173))))

(assert (=> d!1066171 true))

(assert (=> d!1066171 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 (rule!8446 token!511)))) (dynLambda!16515 order!20853 lambda!124178))))

(assert (=> d!1066171 (= (equivClasses!2310 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 token!511)))) (Forall2!964 lambda!124178))))

(declare-fun bs!571358 () Bool)

(assert (= bs!571358 d!1066171))

(declare-fun m!4124469 () Bool)

(assert (=> bs!571358 m!4124469))

(assert (=> b!3622680 d!1066171))

(assert (=> b!3622762 d!1065963))

(assert (=> b!3622762 d!1066169))

(declare-fun d!1066173 () Bool)

(assert (=> d!1066173 (= (isEmpty!22563 lt!1252070) (not ((_ is Some!7997) lt!1252070)))))

(assert (=> d!1065559 d!1066173))

(assert (=> b!3622979 d!1065993))

(assert (=> b!3622979 d!1065995))

(declare-fun d!1066175 () Bool)

(assert (=> d!1066175 (= (list!14088 lt!1252241) (list!14091 (c!626793 lt!1252241)))))

(declare-fun bs!571359 () Bool)

(assert (= bs!571359 d!1066175))

(declare-fun m!4124471 () Bool)

(assert (=> bs!571359 m!4124471))

(assert (=> d!1065495 d!1066175))

(declare-fun d!1066177 () Bool)

(assert (=> d!1066177 (= (list!14088 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))) (list!14091 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))))))

(declare-fun bs!571360 () Bool)

(assert (= bs!571360 d!1066177))

(declare-fun m!4124473 () Bool)

(assert (=> bs!571360 m!4124473))

(assert (=> d!1065451 d!1066177))

(assert (=> d!1065451 d!1065493))

(declare-fun d!1066179 () Bool)

(declare-fun dynLambda!16522 (Int BalanceConc!22892) Bool)

(assert (=> d!1066179 (dynLambda!16522 lambda!124137 lt!1252071)))

(declare-fun lt!1252563 () Unit!54914)

(declare-fun choose!21269 (Int BalanceConc!22892) Unit!54914)

(assert (=> d!1066179 (= lt!1252563 (choose!21269 lambda!124137 lt!1252071))))

(assert (=> d!1066179 (Forall!1367 lambda!124137)))

(assert (=> d!1066179 (= (ForallOf!670 lambda!124137 lt!1252071) lt!1252563)))

(declare-fun b_lambda!107207 () Bool)

(assert (=> (not b_lambda!107207) (not d!1066179)))

(declare-fun bs!571361 () Bool)

(assert (= bs!571361 d!1066179))

(declare-fun m!4124475 () Bool)

(assert (=> bs!571361 m!4124475))

(declare-fun m!4124477 () Bool)

(assert (=> bs!571361 m!4124477))

(declare-fun m!4124479 () Bool)

(assert (=> bs!571361 m!4124479))

(assert (=> d!1065451 d!1066179))

(declare-fun d!1066181 () Bool)

(assert (=> d!1066181 (= (isEmpty!22563 lt!1252235) (not ((_ is Some!7997) lt!1252235)))))

(assert (=> d!1065489 d!1066181))

(declare-fun b!3624169 () Bool)

(declare-fun e!2243250 () Bool)

(assert (=> b!3624169 (= e!2243250 (>= (size!29114 lt!1252082) (size!29114 lt!1252082)))))

(declare-fun b!3624166 () Bool)

(declare-fun e!2243252 () Bool)

(declare-fun e!2243251 () Bool)

(assert (=> b!3624166 (= e!2243252 e!2243251)))

(declare-fun res!1466884 () Bool)

(assert (=> b!3624166 (=> (not res!1466884) (not e!2243251))))

(assert (=> b!3624166 (= res!1466884 (not ((_ is Nil!38166) lt!1252082)))))

(declare-fun d!1066183 () Bool)

(assert (=> d!1066183 e!2243250))

(declare-fun res!1466881 () Bool)

(assert (=> d!1066183 (=> res!1466881 e!2243250)))

(declare-fun lt!1252564 () Bool)

(assert (=> d!1066183 (= res!1466881 (not lt!1252564))))

(assert (=> d!1066183 (= lt!1252564 e!2243252)))

(declare-fun res!1466883 () Bool)

(assert (=> d!1066183 (=> res!1466883 e!2243252)))

(assert (=> d!1066183 (= res!1466883 ((_ is Nil!38166) lt!1252082))))

(assert (=> d!1066183 (= (isPrefix!3047 lt!1252082 lt!1252082) lt!1252564)))

(declare-fun b!3624167 () Bool)

(declare-fun res!1466882 () Bool)

(assert (=> b!3624167 (=> (not res!1466882) (not e!2243251))))

(assert (=> b!3624167 (= res!1466882 (= (head!7656 lt!1252082) (head!7656 lt!1252082)))))

(declare-fun b!3624168 () Bool)

(assert (=> b!3624168 (= e!2243251 (isPrefix!3047 (tail!5611 lt!1252082) (tail!5611 lt!1252082)))))

(assert (= (and d!1066183 (not res!1466883)) b!3624166))

(assert (= (and b!3624166 res!1466884) b!3624167))

(assert (= (and b!3624167 res!1466882) b!3624168))

(assert (= (and d!1066183 (not res!1466881)) b!3624169))

(assert (=> b!3624169 m!4122639))

(assert (=> b!3624169 m!4122639))

(assert (=> b!3624167 m!4122645))

(assert (=> b!3624167 m!4122645))

(assert (=> b!3624168 m!4122649))

(assert (=> b!3624168 m!4122649))

(assert (=> b!3624168 m!4122649))

(assert (=> b!3624168 m!4122649))

(declare-fun m!4124481 () Bool)

(assert (=> b!3624168 m!4124481))

(assert (=> d!1065489 d!1066183))

(declare-fun d!1066185 () Bool)

(assert (=> d!1066185 (isPrefix!3047 lt!1252082 lt!1252082)))

(declare-fun lt!1252565 () Unit!54914)

(assert (=> d!1066185 (= lt!1252565 (choose!21268 lt!1252082 lt!1252082))))

(assert (=> d!1066185 (= (lemmaIsPrefixRefl!1932 lt!1252082 lt!1252082) lt!1252565)))

(declare-fun bs!571362 () Bool)

(assert (= bs!571362 d!1066185))

(assert (=> bs!571362 m!4122685))

(declare-fun m!4124483 () Bool)

(assert (=> bs!571362 m!4124483))

(assert (=> d!1065489 d!1066185))

(assert (=> d!1065489 d!1066139))

(declare-fun d!1066187 () Bool)

(declare-fun c!627173 () Bool)

(assert (=> d!1066187 (= c!627173 ((_ is Nil!38166) lt!1252247))))

(declare-fun e!2243253 () (InoxSet C!21072))

(assert (=> d!1066187 (= (content!5464 lt!1252247) e!2243253)))

(declare-fun b!3624170 () Bool)

(assert (=> b!3624170 (= e!2243253 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3624171 () Bool)

(assert (=> b!3624171 (= e!2243253 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 lt!1252247) true) (content!5464 (t!294261 lt!1252247))))))

(assert (= (and d!1066187 c!627173) b!3624170))

(assert (= (and d!1066187 (not c!627173)) b!3624171))

(declare-fun m!4124485 () Bool)

(assert (=> b!3624171 m!4124485))

(declare-fun m!4124487 () Bool)

(assert (=> b!3624171 m!4124487))

(assert (=> d!1065499 d!1066187))

(declare-fun d!1066189 () Bool)

(declare-fun c!627174 () Bool)

(assert (=> d!1066189 (= c!627174 ((_ is Nil!38166) lt!1252088))))

(declare-fun e!2243254 () (InoxSet C!21072))

(assert (=> d!1066189 (= (content!5464 lt!1252088) e!2243254)))

(declare-fun b!3624172 () Bool)

(assert (=> b!3624172 (= e!2243254 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3624173 () Bool)

(assert (=> b!3624173 (= e!2243254 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 lt!1252088) true) (content!5464 (t!294261 lt!1252088))))))

(assert (= (and d!1066189 c!627174) b!3624172))

(assert (= (and d!1066189 (not c!627174)) b!3624173))

(declare-fun m!4124489 () Bool)

(assert (=> b!3624173 m!4124489))

(assert (=> b!3624173 m!4124377))

(assert (=> d!1065499 d!1066189))

(declare-fun d!1066191 () Bool)

(declare-fun c!627175 () Bool)

(assert (=> d!1066191 (= c!627175 ((_ is Nil!38166) suffix!1395))))

(declare-fun e!2243255 () (InoxSet C!21072))

(assert (=> d!1066191 (= (content!5464 suffix!1395) e!2243255)))

(declare-fun b!3624174 () Bool)

(assert (=> b!3624174 (= e!2243255 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3624175 () Bool)

(assert (=> b!3624175 (= e!2243255 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 suffix!1395) true) (content!5464 (t!294261 suffix!1395))))))

(assert (= (and d!1066191 c!627175) b!3624174))

(assert (= (and d!1066191 (not c!627175)) b!3624175))

(declare-fun m!4124491 () Bool)

(assert (=> b!3624175 m!4124491))

(declare-fun m!4124493 () Bool)

(assert (=> b!3624175 m!4124493))

(assert (=> d!1065499 d!1066191))

(declare-fun b!3624176 () Bool)

(declare-fun e!2243257 () List!38290)

(declare-fun call!262227 () List!38290)

(assert (=> b!3624176 (= e!2243257 call!262227)))

(declare-fun b!3624177 () Bool)

(declare-fun e!2243259 () List!38290)

(assert (=> b!3624177 (= e!2243259 Nil!38166)))

(declare-fun b!3624178 () Bool)

(declare-fun e!2243258 () List!38290)

(declare-fun call!262225 () List!38290)

(assert (=> b!3624178 (= e!2243258 call!262225)))

(declare-fun c!627179 () Bool)

(declare-fun c!627176 () Bool)

(declare-fun bm!262219 () Bool)

(assert (=> bm!262219 (= call!262227 (usedCharacters!898 (ite c!627179 (reg!10772 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) (ite c!627176 (regTwo!21399 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) (regOne!21398 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403)))))))))))

(declare-fun bm!262220 () Bool)

(declare-fun call!262224 () List!38290)

(assert (=> bm!262220 (= call!262224 call!262227)))

(declare-fun b!3624179 () Bool)

(declare-fun e!2243256 () List!38290)

(assert (=> b!3624179 (= e!2243256 (Cons!38166 (c!626792 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) Nil!38166))))

(declare-fun b!3624180 () Bool)

(assert (=> b!3624180 (= c!627179 ((_ is Star!10443) (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))))))

(assert (=> b!3624180 (= e!2243256 e!2243257)))

(declare-fun call!262226 () List!38290)

(declare-fun bm!262221 () Bool)

(assert (=> bm!262221 (= call!262225 (++!9500 (ite c!627176 call!262226 call!262224) (ite c!627176 call!262224 call!262226)))))

(declare-fun b!3624181 () Bool)

(assert (=> b!3624181 (= e!2243258 call!262225)))

(declare-fun bm!262222 () Bool)

(assert (=> bm!262222 (= call!262226 (usedCharacters!898 (ite c!627176 (regOne!21399 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) (regTwo!21398 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))))))))

(declare-fun b!3624183 () Bool)

(assert (=> b!3624183 (= e!2243257 e!2243258)))

(assert (=> b!3624183 (= c!627176 ((_ is Union!10443) (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))))))

(declare-fun b!3624182 () Bool)

(assert (=> b!3624182 (= e!2243259 e!2243256)))

(declare-fun c!627177 () Bool)

(assert (=> b!3624182 (= c!627177 ((_ is ElementMatch!10443) (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))))))

(declare-fun d!1066193 () Bool)

(declare-fun c!627178 () Bool)

(assert (=> d!1066193 (= c!627178 (or ((_ is EmptyExpr!10443) (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) ((_ is EmptyLang!10443) (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403)))))))))

(assert (=> d!1066193 (= (usedCharacters!898 (ite c!626852 (reg!10772 (regex!5684 rule!403)) (ite c!626849 (regTwo!21399 (regex!5684 rule!403)) (regOne!21398 (regex!5684 rule!403))))) e!2243259)))

(assert (= (and d!1066193 c!627178) b!3624177))

(assert (= (and d!1066193 (not c!627178)) b!3624182))

(assert (= (and b!3624182 c!627177) b!3624179))

(assert (= (and b!3624182 (not c!627177)) b!3624180))

(assert (= (and b!3624180 c!627179) b!3624176))

(assert (= (and b!3624180 (not c!627179)) b!3624183))

(assert (= (and b!3624183 c!627176) b!3624181))

(assert (= (and b!3624183 (not c!627176)) b!3624178))

(assert (= (or b!3624181 b!3624178) bm!262222))

(assert (= (or b!3624181 b!3624178) bm!262220))

(assert (= (or b!3624181 b!3624178) bm!262221))

(assert (= (or b!3624176 bm!262220) bm!262219))

(declare-fun m!4124495 () Bool)

(assert (=> bm!262219 m!4124495))

(declare-fun m!4124497 () Bool)

(assert (=> bm!262221 m!4124497))

(declare-fun m!4124499 () Bool)

(assert (=> bm!262222 m!4124499))

(assert (=> bm!262077 d!1066193))

(declare-fun b!3624187 () Bool)

(declare-fun e!2243260 () Bool)

(assert (=> b!3624187 (= e!2243260 (>= (size!29114 (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077)))) (size!29114 (tail!5611 lt!1252086))))))

(declare-fun b!3624184 () Bool)

(declare-fun e!2243262 () Bool)

(declare-fun e!2243261 () Bool)

(assert (=> b!3624184 (= e!2243262 e!2243261)))

(declare-fun res!1466888 () Bool)

(assert (=> b!3624184 (=> (not res!1466888) (not e!2243261))))

(assert (=> b!3624184 (= res!1466888 (not ((_ is Nil!38166) (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))))

(declare-fun d!1066195 () Bool)

(assert (=> d!1066195 e!2243260))

(declare-fun res!1466885 () Bool)

(assert (=> d!1066195 (=> res!1466885 e!2243260)))

(declare-fun lt!1252566 () Bool)

(assert (=> d!1066195 (= res!1466885 (not lt!1252566))))

(assert (=> d!1066195 (= lt!1252566 e!2243262)))

(declare-fun res!1466887 () Bool)

(assert (=> d!1066195 (=> res!1466887 e!2243262)))

(assert (=> d!1066195 (= res!1466887 ((_ is Nil!38166) (tail!5611 lt!1252086)))))

(assert (=> d!1066195 (= (isPrefix!3047 (tail!5611 lt!1252086) (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077)))) lt!1252566)))

(declare-fun b!3624185 () Bool)

(declare-fun res!1466886 () Bool)

(assert (=> b!3624185 (=> (not res!1466886) (not e!2243261))))

(assert (=> b!3624185 (= res!1466886 (= (head!7656 (tail!5611 lt!1252086)) (head!7656 (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))))

(declare-fun b!3624186 () Bool)

(assert (=> b!3624186 (= e!2243261 (isPrefix!3047 (tail!5611 (tail!5611 lt!1252086)) (tail!5611 (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))))

(assert (= (and d!1066195 (not res!1466887)) b!3624184))

(assert (= (and b!3624184 res!1466888) b!3624185))

(assert (= (and b!3624185 res!1466886) b!3624186))

(assert (= (and d!1066195 (not res!1466885)) b!3624187))

(assert (=> b!3624187 m!4122665))

(declare-fun m!4124501 () Bool)

(assert (=> b!3624187 m!4124501))

(assert (=> b!3624187 m!4122663))

(assert (=> b!3624187 m!4124275))

(assert (=> b!3624185 m!4122663))

(assert (=> b!3624185 m!4124277))

(assert (=> b!3624185 m!4122665))

(declare-fun m!4124503 () Bool)

(assert (=> b!3624185 m!4124503))

(assert (=> b!3624186 m!4122663))

(assert (=> b!3624186 m!4124281))

(assert (=> b!3624186 m!4122665))

(declare-fun m!4124505 () Bool)

(assert (=> b!3624186 m!4124505))

(assert (=> b!3624186 m!4124281))

(assert (=> b!3624186 m!4124505))

(declare-fun m!4124507 () Bool)

(assert (=> b!3624186 m!4124507))

(assert (=> b!3622724 d!1066195))

(assert (=> b!3622724 d!1066033))

(declare-fun d!1066197 () Bool)

(assert (=> d!1066197 (= (tail!5611 (++!9500 lt!1252086 (_2!22152 lt!1252077))) (t!294261 (++!9500 lt!1252086 (_2!22152 lt!1252077))))))

(assert (=> b!3622724 d!1066197))

(declare-fun d!1066199 () Bool)

(declare-fun charsToBigInt!0 (List!38289 Int) Int)

(assert (=> d!1066199 (= (inv!15 (value!182454 token!511)) (= (charsToBigInt!0 (text!41847 (value!182454 token!511)) 0) (value!182449 (value!182454 token!511))))))

(declare-fun bs!571363 () Bool)

(assert (= bs!571363 d!1066199))

(declare-fun m!4124509 () Bool)

(assert (=> bs!571363 m!4124509))

(assert (=> b!3622702 d!1066199))

(declare-fun bs!571364 () Bool)

(declare-fun d!1066201 () Bool)

(assert (= bs!571364 (and d!1066201 d!1065451)))

(declare-fun lambda!124179 () Int)

(assert (=> bs!571364 (= (and (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (= lambda!124179 lambda!124137))))

(declare-fun bs!571365 () Bool)

(assert (= bs!571365 (and d!1066201 d!1066023)))

(assert (=> bs!571365 (= (and (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (h!43587 rules!3307)))) (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (h!43587 rules!3307))))) (= lambda!124179 lambda!124171))))

(declare-fun bs!571366 () Bool)

(assert (= bs!571366 (and d!1066201 d!1066101)))

(assert (=> bs!571366 (= (and (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 token!511))))) (= lambda!124179 lambda!124172))))

(declare-fun bs!571367 () Bool)

(assert (= bs!571367 (and d!1066201 d!1066131)))

(assert (=> bs!571367 (= (and (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 anOtherTypeRule!33))) (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 anOtherTypeRule!33)))) (= lambda!124179 lambda!124174))))

(assert (=> d!1066201 true))

(assert (=> d!1066201 (< (dynLambda!16516 order!20855 (toChars!7827 (transformation!5684 rule!403))) (dynLambda!16518 order!20857 lambda!124179))))

(assert (=> d!1066201 true))

(assert (=> d!1066201 (< (dynLambda!16514 order!20851 (toValue!7968 (transformation!5684 rule!403))) (dynLambda!16518 order!20857 lambda!124179))))

(assert (=> d!1066201 (= (semiInverseModEq!2411 (toChars!7827 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 rule!403))) (Forall!1367 lambda!124179))))

(declare-fun bs!571368 () Bool)

(assert (= bs!571368 d!1066201))

(declare-fun m!4124511 () Bool)

(assert (=> bs!571368 m!4124511))

(assert (=> d!1065473 d!1066201))

(declare-fun d!1066203 () Bool)

(declare-fun c!627180 () Bool)

(assert (=> d!1066203 (= c!627180 ((_ is Nil!38166) (usedCharacters!898 (regex!5684 anOtherTypeRule!33))))))

(declare-fun e!2243263 () (InoxSet C!21072))

(assert (=> d!1066203 (= (content!5464 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) e!2243263)))

(declare-fun b!3624188 () Bool)

(assert (=> b!3624188 (= e!2243263 ((as const (Array C!21072 Bool)) false))))

(declare-fun b!3624189 () Bool)

(assert (=> b!3624189 (= e!2243263 ((_ map or) (store ((as const (Array C!21072 Bool)) false) (h!43586 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))) true) (content!5464 (t!294261 (usedCharacters!898 (regex!5684 anOtherTypeRule!33))))))))

(assert (= (and d!1066203 c!627180) b!3624188))

(assert (= (and d!1066203 (not c!627180)) b!3624189))

(declare-fun m!4124513 () Bool)

(assert (=> b!3624189 m!4124513))

(assert (=> b!3624189 m!4123927))

(assert (=> d!1065545 d!1066203))

(assert (=> b!3622746 d!1066061))

(assert (=> b!3622746 d!1066063))

(assert (=> b!3622746 d!1066035))

(declare-fun d!1066205 () Bool)

(declare-fun lt!1252567 () Bool)

(assert (=> d!1066205 (= lt!1252567 (select (content!5465 rules!3307) (get!12451 lt!1252259)))))

(declare-fun e!2243265 () Bool)

(assert (=> d!1066205 (= lt!1252567 e!2243265)))

(declare-fun res!1466889 () Bool)

(assert (=> d!1066205 (=> (not res!1466889) (not e!2243265))))

(assert (=> d!1066205 (= res!1466889 ((_ is Cons!38167) rules!3307))))

(assert (=> d!1066205 (= (contains!7432 rules!3307 (get!12451 lt!1252259)) lt!1252567)))

(declare-fun b!3624190 () Bool)

(declare-fun e!2243264 () Bool)

(assert (=> b!3624190 (= e!2243265 e!2243264)))

(declare-fun res!1466890 () Bool)

(assert (=> b!3624190 (=> res!1466890 e!2243264)))

(assert (=> b!3624190 (= res!1466890 (= (h!43587 rules!3307) (get!12451 lt!1252259)))))

(declare-fun b!3624191 () Bool)

(assert (=> b!3624191 (= e!2243264 (contains!7432 (t!294262 rules!3307) (get!12451 lt!1252259)))))

(assert (= (and d!1066205 res!1466889) b!3624190))

(assert (= (and b!3624190 (not res!1466890)) b!3624191))

(assert (=> d!1066205 m!4122927))

(assert (=> d!1066205 m!4122769))

(declare-fun m!4124515 () Bool)

(assert (=> d!1066205 m!4124515))

(assert (=> b!3624191 m!4122769))

(declare-fun m!4124517 () Bool)

(assert (=> b!3624191 m!4124517))

(assert (=> b!3622816 d!1066205))

(assert (=> b!3622816 d!1066089))

(declare-fun d!1066207 () Bool)

(declare-fun lt!1252568 () Bool)

(assert (=> d!1066207 (= lt!1252568 (select (content!5465 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))

(declare-fun e!2243267 () Bool)

(assert (=> d!1066207 (= lt!1252568 e!2243267)))

(declare-fun res!1466891 () Bool)

(assert (=> d!1066207 (=> (not res!1466891) (not e!2243267))))

(assert (=> d!1066207 (= res!1466891 ((_ is Cons!38167) rules!3307))))

(assert (=> d!1066207 (= (contains!7432 rules!3307 (rule!8446 (_1!22152 (get!12450 lt!1252235)))) lt!1252568)))

(declare-fun b!3624192 () Bool)

(declare-fun e!2243266 () Bool)

(assert (=> b!3624192 (= e!2243267 e!2243266)))

(declare-fun res!1466892 () Bool)

(assert (=> b!3624192 (=> res!1466892 e!2243266)))

(assert (=> b!3624192 (= res!1466892 (= (h!43587 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))

(declare-fun b!3624193 () Bool)

(assert (=> b!3624193 (= e!2243266 (contains!7432 (t!294262 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252235)))))))

(assert (= (and d!1066207 res!1466891) b!3624192))

(assert (= (and b!3624192 (not res!1466892)) b!3624193))

(assert (=> d!1066207 m!4122927))

(declare-fun m!4124519 () Bool)

(assert (=> d!1066207 m!4124519))

(declare-fun m!4124521 () Bool)

(assert (=> b!3624193 m!4124521))

(assert (=> b!3622750 d!1066207))

(assert (=> b!3622750 d!1066035))

(declare-fun d!1066209 () Bool)

(declare-fun e!2243270 () Bool)

(assert (=> d!1066209 e!2243270))

(declare-fun res!1466895 () Bool)

(assert (=> d!1066209 (=> (not res!1466895) (not e!2243270))))

(declare-fun lt!1252571 () BalanceConc!22892)

(assert (=> d!1066209 (= res!1466895 (= (list!14088 lt!1252571) (originalCharacters!6398 (_1!22152 lt!1252077))))))

(declare-fun fromList!795 (List!38290) Conc!11639)

(assert (=> d!1066209 (= lt!1252571 (BalanceConc!22893 (fromList!795 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(assert (=> d!1066209 (= (fromListB!1949 (originalCharacters!6398 (_1!22152 lt!1252077))) lt!1252571)))

(declare-fun b!3624196 () Bool)

(assert (=> b!3624196 (= e!2243270 (isBalanced!3501 (fromList!795 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(assert (= (and d!1066209 res!1466895) b!3624196))

(declare-fun m!4124523 () Bool)

(assert (=> d!1066209 m!4124523))

(declare-fun m!4124525 () Bool)

(assert (=> d!1066209 m!4124525))

(assert (=> b!3624196 m!4124525))

(assert (=> b!3624196 m!4124525))

(declare-fun m!4124527 () Bool)

(assert (=> b!3624196 m!4124527))

(assert (=> d!1065457 d!1066209))

(declare-fun d!1066211 () Bool)

(declare-fun dynLambda!16523 (Int BalanceConc!22892 BalanceConc!22892) Bool)

(assert (=> d!1066211 (dynLambda!16523 lambda!124134 lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))

(declare-fun lt!1252574 () Unit!54914)

(declare-fun choose!21270 (Int BalanceConc!22892 BalanceConc!22892) Unit!54914)

(assert (=> d!1066211 (= lt!1252574 (choose!21270 lambda!124134 lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))

(assert (=> d!1066211 (Forall2!964 lambda!124134)))

(assert (=> d!1066211 (= (Forall2of!328 lambda!124134 lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))) lt!1252574)))

(declare-fun b_lambda!107209 () Bool)

(assert (=> (not b_lambda!107209) (not d!1066211)))

(declare-fun bs!571369 () Bool)

(assert (= bs!571369 d!1066211))

(assert (=> bs!571369 m!4122207))

(declare-fun m!4124529 () Bool)

(assert (=> bs!571369 m!4124529))

(assert (=> bs!571369 m!4122207))

(declare-fun m!4124531 () Bool)

(assert (=> bs!571369 m!4124531))

(declare-fun m!4124533 () Bool)

(assert (=> bs!571369 m!4124533))

(assert (=> d!1065421 d!1066211))

(assert (=> d!1065421 d!1065493))

(declare-fun d!1066213 () Bool)

(assert (=> d!1066213 (= (list!14088 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))) (list!14091 (c!626793 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(declare-fun bs!571370 () Bool)

(assert (= bs!571370 d!1066213))

(declare-fun m!4124535 () Bool)

(assert (=> bs!571370 m!4124535))

(assert (=> d!1065421 d!1066213))

(declare-fun d!1066215 () Bool)

(declare-fun lt!1252575 () Int)

(assert (=> d!1066215 (>= lt!1252575 0)))

(declare-fun e!2243271 () Int)

(assert (=> d!1066215 (= lt!1252575 e!2243271)))

(declare-fun c!627182 () Bool)

(assert (=> d!1066215 (= c!627182 ((_ is Nil!38166) (list!14088 lt!1252071)))))

(assert (=> d!1066215 (= (size!29114 (list!14088 lt!1252071)) lt!1252575)))

(declare-fun b!3624198 () Bool)

(assert (=> b!3624198 (= e!2243271 0)))

(declare-fun b!3624199 () Bool)

(assert (=> b!3624199 (= e!2243271 (+ 1 (size!29114 (t!294261 (list!14088 lt!1252071)))))))

(assert (= (and d!1066215 c!627182) b!3624198))

(assert (= (and d!1066215 (not c!627182)) b!3624199))

(declare-fun m!4124537 () Bool)

(assert (=> b!3624199 m!4124537))

(assert (=> d!1065453 d!1066215))

(assert (=> d!1065453 d!1065493))

(declare-fun d!1066217 () Bool)

(declare-fun lt!1252578 () Int)

(assert (=> d!1066217 (= lt!1252578 (size!29114 (list!14091 (c!626793 lt!1252071))))))

(assert (=> d!1066217 (= lt!1252578 (ite ((_ is Empty!11639) (c!626793 lt!1252071)) 0 (ite ((_ is Leaf!18092) (c!626793 lt!1252071)) (csize!23509 (c!626793 lt!1252071)) (csize!23508 (c!626793 lt!1252071)))))))

(assert (=> d!1066217 (= (size!29115 (c!626793 lt!1252071)) lt!1252578)))

(declare-fun bs!571371 () Bool)

(assert (= bs!571371 d!1066217))

(assert (=> bs!571371 m!4122701))

(assert (=> bs!571371 m!4122701))

(declare-fun m!4124539 () Bool)

(assert (=> bs!571371 m!4124539))

(assert (=> d!1065453 d!1066217))

(assert (=> b!3623010 d!1066055))

(declare-fun d!1066219 () Bool)

(assert (=> d!1066219 (= (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))) (not (isEmpty!22562 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(declare-fun bs!571372 () Bool)

(assert (= bs!571372 d!1066219))

(assert (=> bs!571372 m!4122281))

(declare-fun m!4124541 () Bool)

(assert (=> bs!571372 m!4124541))

(assert (=> d!1065481 d!1066219))

(assert (=> d!1065481 d!1065505))

(declare-fun d!1066221 () Bool)

(declare-fun e!2243274 () Bool)

(assert (=> d!1066221 e!2243274))

(declare-fun res!1466900 () Bool)

(assert (=> d!1066221 (=> (not res!1466900) (not e!2243274))))

(assert (=> d!1066221 (= res!1466900 (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> d!1066221 true))

(declare-fun _$52!2070 () Unit!54914)

(assert (=> d!1066221 (= (choose!21256 thiss!23823 rules!3307 lt!1252082 (_1!22152 lt!1252077)) _$52!2070)))

(declare-fun b!3624204 () Bool)

(declare-fun res!1466901 () Bool)

(assert (=> b!3624204 (=> (not res!1466901) (not e!2243274))))

(assert (=> b!3624204 (= res!1466901 (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))) (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))

(declare-fun b!3624205 () Bool)

(assert (=> b!3624205 (= e!2243274 (= (rule!8446 (_1!22152 lt!1252077)) (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(assert (= (and d!1066221 res!1466900) b!3624204))

(assert (= (and b!3624204 res!1466901) b!3624205))

(assert (=> d!1066221 m!4122281))

(assert (=> d!1066221 m!4122281))

(assert (=> d!1066221 m!4122631))

(assert (=> b!3624204 m!4122281))

(assert (=> b!3624204 m!4122241))

(assert (=> b!3624204 m!4122243))

(assert (=> b!3624204 m!4122281))

(assert (=> b!3624204 m!4122637))

(assert (=> b!3624204 m!4122243))

(assert (=> b!3624204 m!4122635))

(assert (=> b!3624204 m!4122241))

(assert (=> b!3624205 m!4122281))

(assert (=> b!3624205 m!4122281))

(assert (=> b!3624205 m!4122637))

(assert (=> d!1065481 d!1066221))

(assert (=> d!1065481 d!1065557))

(declare-fun b!3624206 () Bool)

(declare-fun e!2243275 () Option!7998)

(declare-fun call!262228 () Option!7998)

(assert (=> b!3624206 (= e!2243275 call!262228)))

(declare-fun bm!262223 () Bool)

(assert (=> bm!262223 (= call!262228 (maxPrefixOneRule!1947 thiss!23823 (h!43587 (t!294262 rules!3307)) lt!1252088))))

(declare-fun d!1066223 () Bool)

(declare-fun e!2243277 () Bool)

(assert (=> d!1066223 e!2243277))

(declare-fun res!1466903 () Bool)

(assert (=> d!1066223 (=> res!1466903 e!2243277)))

(declare-fun lt!1252581 () Option!7998)

(assert (=> d!1066223 (= res!1466903 (isEmpty!22563 lt!1252581))))

(assert (=> d!1066223 (= lt!1252581 e!2243275)))

(declare-fun c!627183 () Bool)

(assert (=> d!1066223 (= c!627183 (and ((_ is Cons!38167) (t!294262 rules!3307)) ((_ is Nil!38167) (t!294262 (t!294262 rules!3307)))))))

(declare-fun lt!1252580 () Unit!54914)

(declare-fun lt!1252583 () Unit!54914)

(assert (=> d!1066223 (= lt!1252580 lt!1252583)))

(assert (=> d!1066223 (isPrefix!3047 lt!1252088 lt!1252088)))

(assert (=> d!1066223 (= lt!1252583 (lemmaIsPrefixRefl!1932 lt!1252088 lt!1252088))))

(assert (=> d!1066223 (rulesValidInductive!1997 thiss!23823 (t!294262 rules!3307))))

(assert (=> d!1066223 (= (maxPrefix!2807 thiss!23823 (t!294262 rules!3307) lt!1252088) lt!1252581)))

(declare-fun b!3624207 () Bool)

(declare-fun e!2243276 () Bool)

(assert (=> b!3624207 (= e!2243277 e!2243276)))

(declare-fun res!1466907 () Bool)

(assert (=> b!3624207 (=> (not res!1466907) (not e!2243276))))

(assert (=> b!3624207 (= res!1466907 (isDefined!6231 lt!1252581))))

(declare-fun b!3624208 () Bool)

(declare-fun res!1466904 () Bool)

(assert (=> b!3624208 (=> (not res!1466904) (not e!2243276))))

(assert (=> b!3624208 (= res!1466904 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252581)))) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252581)))))))

(declare-fun b!3624209 () Bool)

(declare-fun res!1466906 () Bool)

(assert (=> b!3624209 (=> (not res!1466906) (not e!2243276))))

(assert (=> b!3624209 (= res!1466906 (< (size!29114 (_2!22152 (get!12450 lt!1252581))) (size!29114 lt!1252088)))))

(declare-fun b!3624210 () Bool)

(declare-fun res!1466908 () Bool)

(assert (=> b!3624210 (=> (not res!1466908) (not e!2243276))))

(assert (=> b!3624210 (= res!1466908 (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252581)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252581))))))))

(declare-fun b!3624211 () Bool)

(declare-fun lt!1252582 () Option!7998)

(declare-fun lt!1252579 () Option!7998)

(assert (=> b!3624211 (= e!2243275 (ite (and ((_ is None!7997) lt!1252582) ((_ is None!7997) lt!1252579)) None!7997 (ite ((_ is None!7997) lt!1252579) lt!1252582 (ite ((_ is None!7997) lt!1252582) lt!1252579 (ite (>= (size!29110 (_1!22152 (v!37767 lt!1252582))) (size!29110 (_1!22152 (v!37767 lt!1252579)))) lt!1252582 lt!1252579)))))))

(assert (=> b!3624211 (= lt!1252582 call!262228)))

(assert (=> b!3624211 (= lt!1252579 (maxPrefix!2807 thiss!23823 (t!294262 (t!294262 rules!3307)) lt!1252088))))

(declare-fun b!3624212 () Bool)

(assert (=> b!3624212 (= e!2243276 (contains!7432 (t!294262 rules!3307) (rule!8446 (_1!22152 (get!12450 lt!1252581)))))))

(declare-fun b!3624213 () Bool)

(declare-fun res!1466902 () Bool)

(assert (=> b!3624213 (=> (not res!1466902) (not e!2243276))))

(assert (=> b!3624213 (= res!1466902 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252581)))) (_2!22152 (get!12450 lt!1252581))) lt!1252088))))

(declare-fun b!3624214 () Bool)

(declare-fun res!1466905 () Bool)

(assert (=> b!3624214 (=> (not res!1466905) (not e!2243276))))

(assert (=> b!3624214 (= res!1466905 (= (value!182454 (_1!22152 (get!12450 lt!1252581))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252581)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252581)))))))))

(assert (= (and d!1066223 c!627183) b!3624206))

(assert (= (and d!1066223 (not c!627183)) b!3624211))

(assert (= (or b!3624206 b!3624211) bm!262223))

(assert (= (and d!1066223 (not res!1466903)) b!3624207))

(assert (= (and b!3624207 res!1466907) b!3624208))

(assert (= (and b!3624208 res!1466904) b!3624209))

(assert (= (and b!3624209 res!1466906) b!3624213))

(assert (= (and b!3624213 res!1466902) b!3624214))

(assert (= (and b!3624214 res!1466905) b!3624210))

(assert (= (and b!3624210 res!1466908) b!3624212))

(declare-fun m!4124543 () Bool)

(assert (=> b!3624212 m!4124543))

(declare-fun m!4124545 () Bool)

(assert (=> b!3624212 m!4124545))

(assert (=> b!3624210 m!4124543))

(declare-fun m!4124547 () Bool)

(assert (=> b!3624210 m!4124547))

(assert (=> b!3624210 m!4124547))

(declare-fun m!4124549 () Bool)

(assert (=> b!3624210 m!4124549))

(assert (=> b!3624210 m!4124549))

(declare-fun m!4124551 () Bool)

(assert (=> b!3624210 m!4124551))

(assert (=> b!3624214 m!4124543))

(declare-fun m!4124553 () Bool)

(assert (=> b!3624214 m!4124553))

(assert (=> b!3624214 m!4124553))

(declare-fun m!4124555 () Bool)

(assert (=> b!3624214 m!4124555))

(declare-fun m!4124557 () Bool)

(assert (=> d!1066223 m!4124557))

(assert (=> d!1066223 m!4122963))

(assert (=> d!1066223 m!4122965))

(assert (=> d!1066223 m!4124005))

(declare-fun m!4124559 () Bool)

(assert (=> bm!262223 m!4124559))

(declare-fun m!4124561 () Bool)

(assert (=> b!3624211 m!4124561))

(assert (=> b!3624213 m!4124543))

(assert (=> b!3624213 m!4124547))

(assert (=> b!3624213 m!4124547))

(assert (=> b!3624213 m!4124549))

(assert (=> b!3624213 m!4124549))

(declare-fun m!4124563 () Bool)

(assert (=> b!3624213 m!4124563))

(assert (=> b!3624208 m!4124543))

(assert (=> b!3624208 m!4124547))

(assert (=> b!3624208 m!4124547))

(assert (=> b!3624208 m!4124549))

(declare-fun m!4124565 () Bool)

(assert (=> b!3624207 m!4124565))

(assert (=> b!3624209 m!4124543))

(declare-fun m!4124567 () Bool)

(assert (=> b!3624209 m!4124567))

(assert (=> b!3624209 m!4122641))

(assert (=> b!3622940 d!1066223))

(assert (=> bm!262098 d!1066105))

(assert (=> b!3622982 d!1066097))

(declare-fun b!3624215 () Bool)

(declare-fun res!1466910 () Bool)

(declare-fun e!2243281 () Bool)

(assert (=> b!3624215 (=> (not res!1466910) (not e!2243281))))

(declare-fun lt!1252584 () Option!7998)

(assert (=> b!3624215 (= res!1466910 (= (rule!8446 (_1!22152 (get!12450 lt!1252584))) (h!43587 rules!3307)))))

(declare-fun b!3624216 () Bool)

(declare-fun res!1466914 () Bool)

(assert (=> b!3624216 (=> (not res!1466914) (not e!2243281))))

(assert (=> b!3624216 (= res!1466914 (< (size!29114 (_2!22152 (get!12450 lt!1252584))) (size!29114 lt!1252088)))))

(declare-fun b!3624217 () Bool)

(declare-fun e!2243279 () Bool)

(assert (=> b!3624217 (= e!2243279 (matchR!5012 (regex!5684 (h!43587 rules!3307)) (_1!22157 (findLongestMatchInner!1017 (regex!5684 (h!43587 rules!3307)) Nil!38166 (size!29114 Nil!38166) lt!1252088 lt!1252088 (size!29114 lt!1252088)))))))

(declare-fun d!1066225 () Bool)

(declare-fun e!2243278 () Bool)

(assert (=> d!1066225 e!2243278))

(declare-fun res!1466912 () Bool)

(assert (=> d!1066225 (=> res!1466912 e!2243278)))

(assert (=> d!1066225 (= res!1466912 (isEmpty!22563 lt!1252584))))

(declare-fun e!2243280 () Option!7998)

(assert (=> d!1066225 (= lt!1252584 e!2243280)))

(declare-fun c!627184 () Bool)

(declare-fun lt!1252588 () tuple2!38046)

(assert (=> d!1066225 (= c!627184 (isEmpty!22559 (_1!22157 lt!1252588)))))

(assert (=> d!1066225 (= lt!1252588 (findLongestMatch!932 (regex!5684 (h!43587 rules!3307)) lt!1252088))))

(assert (=> d!1066225 (ruleValid!1949 thiss!23823 (h!43587 rules!3307))))

(assert (=> d!1066225 (= (maxPrefixOneRule!1947 thiss!23823 (h!43587 rules!3307) lt!1252088) lt!1252584)))

(declare-fun b!3624218 () Bool)

(assert (=> b!3624218 (= e!2243280 (Some!7997 (tuple2!38037 (Token!10735 (apply!9186 (transformation!5684 (h!43587 rules!3307)) (seqFromList!4233 (_1!22157 lt!1252588))) (h!43587 rules!3307) (size!29111 (seqFromList!4233 (_1!22157 lt!1252588))) (_1!22157 lt!1252588)) (_2!22157 lt!1252588))))))

(declare-fun lt!1252587 () Unit!54914)

(assert (=> b!3624218 (= lt!1252587 (longestMatchIsAcceptedByMatchOrIsEmpty!990 (regex!5684 (h!43587 rules!3307)) lt!1252088))))

(declare-fun res!1466911 () Bool)

(assert (=> b!3624218 (= res!1466911 (isEmpty!22559 (_1!22157 (findLongestMatchInner!1017 (regex!5684 (h!43587 rules!3307)) Nil!38166 (size!29114 Nil!38166) lt!1252088 lt!1252088 (size!29114 lt!1252088)))))))

(assert (=> b!3624218 (=> res!1466911 e!2243279)))

(assert (=> b!3624218 e!2243279))

(declare-fun lt!1252585 () Unit!54914)

(assert (=> b!3624218 (= lt!1252585 lt!1252587)))

(declare-fun lt!1252586 () Unit!54914)

(assert (=> b!3624218 (= lt!1252586 (lemmaSemiInverse!1435 (transformation!5684 (h!43587 rules!3307)) (seqFromList!4233 (_1!22157 lt!1252588))))))

(declare-fun b!3624219 () Bool)

(assert (=> b!3624219 (= e!2243278 e!2243281)))

(declare-fun res!1466909 () Bool)

(assert (=> b!3624219 (=> (not res!1466909) (not e!2243281))))

(assert (=> b!3624219 (= res!1466909 (matchR!5012 (regex!5684 (h!43587 rules!3307)) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252584))))))))

(declare-fun b!3624220 () Bool)

(declare-fun res!1466913 () Bool)

(assert (=> b!3624220 (=> (not res!1466913) (not e!2243281))))

(assert (=> b!3624220 (= res!1466913 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252584)))) (_2!22152 (get!12450 lt!1252584))) lt!1252088))))

(declare-fun b!3624221 () Bool)

(declare-fun res!1466915 () Bool)

(assert (=> b!3624221 (=> (not res!1466915) (not e!2243281))))

(assert (=> b!3624221 (= res!1466915 (= (value!182454 (_1!22152 (get!12450 lt!1252584))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252584)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252584)))))))))

(declare-fun b!3624222 () Bool)

(assert (=> b!3624222 (= e!2243281 (= (size!29110 (_1!22152 (get!12450 lt!1252584))) (size!29114 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252584))))))))

(declare-fun b!3624223 () Bool)

(assert (=> b!3624223 (= e!2243280 None!7997)))

(assert (= (and d!1066225 c!627184) b!3624223))

(assert (= (and d!1066225 (not c!627184)) b!3624218))

(assert (= (and b!3624218 (not res!1466911)) b!3624217))

(assert (= (and d!1066225 (not res!1466912)) b!3624219))

(assert (= (and b!3624219 res!1466909) b!3624220))

(assert (= (and b!3624220 res!1466913) b!3624216))

(assert (= (and b!3624216 res!1466914) b!3624215))

(assert (= (and b!3624215 res!1466910) b!3624221))

(assert (= (and b!3624221 res!1466915) b!3624222))

(declare-fun m!4124569 () Bool)

(assert (=> b!3624218 m!4124569))

(declare-fun m!4124571 () Bool)

(assert (=> b!3624218 m!4124571))

(assert (=> b!3624218 m!4124569))

(assert (=> b!3624218 m!4124047))

(assert (=> b!3624218 m!4122641))

(declare-fun m!4124573 () Bool)

(assert (=> b!3624218 m!4124573))

(assert (=> b!3624218 m!4124569))

(declare-fun m!4124575 () Bool)

(assert (=> b!3624218 m!4124575))

(declare-fun m!4124577 () Bool)

(assert (=> b!3624218 m!4124577))

(assert (=> b!3624218 m!4122641))

(assert (=> b!3624218 m!4124569))

(declare-fun m!4124579 () Bool)

(assert (=> b!3624218 m!4124579))

(declare-fun m!4124581 () Bool)

(assert (=> b!3624218 m!4124581))

(assert (=> b!3624218 m!4124047))

(declare-fun m!4124583 () Bool)

(assert (=> b!3624222 m!4124583))

(declare-fun m!4124585 () Bool)

(assert (=> b!3624222 m!4124585))

(assert (=> b!3624215 m!4124583))

(assert (=> b!3624219 m!4124583))

(declare-fun m!4124587 () Bool)

(assert (=> b!3624219 m!4124587))

(assert (=> b!3624219 m!4124587))

(declare-fun m!4124589 () Bool)

(assert (=> b!3624219 m!4124589))

(assert (=> b!3624219 m!4124589))

(declare-fun m!4124591 () Bool)

(assert (=> b!3624219 m!4124591))

(assert (=> b!3624221 m!4124583))

(declare-fun m!4124593 () Bool)

(assert (=> b!3624221 m!4124593))

(assert (=> b!3624221 m!4124593))

(declare-fun m!4124595 () Bool)

(assert (=> b!3624221 m!4124595))

(assert (=> b!3624217 m!4124047))

(assert (=> b!3624217 m!4122641))

(assert (=> b!3624217 m!4124047))

(assert (=> b!3624217 m!4122641))

(assert (=> b!3624217 m!4124573))

(declare-fun m!4124597 () Bool)

(assert (=> b!3624217 m!4124597))

(assert (=> b!3624216 m!4124583))

(declare-fun m!4124599 () Bool)

(assert (=> b!3624216 m!4124599))

(assert (=> b!3624216 m!4122641))

(assert (=> b!3624220 m!4124583))

(assert (=> b!3624220 m!4124587))

(assert (=> b!3624220 m!4124587))

(assert (=> b!3624220 m!4124589))

(assert (=> b!3624220 m!4124589))

(declare-fun m!4124601 () Bool)

(assert (=> b!3624220 m!4124601))

(declare-fun m!4124603 () Bool)

(assert (=> d!1066225 m!4124603))

(declare-fun m!4124605 () Bool)

(assert (=> d!1066225 m!4124605))

(declare-fun m!4124607 () Bool)

(assert (=> d!1066225 m!4124607))

(assert (=> d!1066225 m!4124085))

(assert (=> bm!262094 d!1066225))

(declare-fun d!1066227 () Bool)

(assert (=> d!1066227 (= (isEmpty!22562 lt!1252259) (not ((_ is Some!7998) lt!1252259)))))

(assert (=> d!1065505 d!1066227))

(assert (=> d!1065505 d!1065557))

(assert (=> d!1065521 d!1065561))

(declare-fun d!1066229 () Bool)

(assert (=> d!1066229 (= (head!7658 (list!14092 (_1!22154 (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088))))) (h!43590 (list!14092 (_1!22154 (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088))))))))

(assert (=> d!1065521 d!1066229))

(assert (=> d!1065521 d!1065499))

(declare-fun b!3624224 () Bool)

(declare-fun e!2243282 () Option!7998)

(declare-fun call!262229 () Option!7998)

(assert (=> b!3624224 (= e!2243282 call!262229)))

(declare-fun bm!262224 () Bool)

(assert (=> bm!262224 (= call!262229 (maxPrefixOneRule!1947 thiss!23823 (h!43587 rules!3307) (++!9500 lt!1252088 suffix!1395)))))

(declare-fun d!1066231 () Bool)

(declare-fun e!2243284 () Bool)

(assert (=> d!1066231 e!2243284))

(declare-fun res!1466917 () Bool)

(assert (=> d!1066231 (=> res!1466917 e!2243284)))

(declare-fun lt!1252591 () Option!7998)

(assert (=> d!1066231 (= res!1466917 (isEmpty!22563 lt!1252591))))

(assert (=> d!1066231 (= lt!1252591 e!2243282)))

(declare-fun c!627185 () Bool)

(assert (=> d!1066231 (= c!627185 (and ((_ is Cons!38167) rules!3307) ((_ is Nil!38167) (t!294262 rules!3307))))))

(declare-fun lt!1252590 () Unit!54914)

(declare-fun lt!1252593 () Unit!54914)

(assert (=> d!1066231 (= lt!1252590 lt!1252593)))

(assert (=> d!1066231 (isPrefix!3047 (++!9500 lt!1252088 suffix!1395) (++!9500 lt!1252088 suffix!1395))))

(assert (=> d!1066231 (= lt!1252593 (lemmaIsPrefixRefl!1932 (++!9500 lt!1252088 suffix!1395) (++!9500 lt!1252088 suffix!1395)))))

(assert (=> d!1066231 (rulesValidInductive!1997 thiss!23823 rules!3307)))

(assert (=> d!1066231 (= (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395)) lt!1252591)))

(declare-fun b!3624225 () Bool)

(declare-fun e!2243283 () Bool)

(assert (=> b!3624225 (= e!2243284 e!2243283)))

(declare-fun res!1466921 () Bool)

(assert (=> b!3624225 (=> (not res!1466921) (not e!2243283))))

(assert (=> b!3624225 (= res!1466921 (isDefined!6231 lt!1252591))))

(declare-fun b!3624226 () Bool)

(declare-fun res!1466918 () Bool)

(assert (=> b!3624226 (=> (not res!1466918) (not e!2243283))))

(assert (=> b!3624226 (= res!1466918 (= (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252591)))) (originalCharacters!6398 (_1!22152 (get!12450 lt!1252591)))))))

(declare-fun b!3624227 () Bool)

(declare-fun res!1466920 () Bool)

(assert (=> b!3624227 (=> (not res!1466920) (not e!2243283))))

(assert (=> b!3624227 (= res!1466920 (< (size!29114 (_2!22152 (get!12450 lt!1252591))) (size!29114 (++!9500 lt!1252088 suffix!1395))))))

(declare-fun b!3624228 () Bool)

(declare-fun res!1466922 () Bool)

(assert (=> b!3624228 (=> (not res!1466922) (not e!2243283))))

(assert (=> b!3624228 (= res!1466922 (matchR!5012 (regex!5684 (rule!8446 (_1!22152 (get!12450 lt!1252591)))) (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252591))))))))

(declare-fun b!3624229 () Bool)

(declare-fun lt!1252592 () Option!7998)

(declare-fun lt!1252589 () Option!7998)

(assert (=> b!3624229 (= e!2243282 (ite (and ((_ is None!7997) lt!1252592) ((_ is None!7997) lt!1252589)) None!7997 (ite ((_ is None!7997) lt!1252589) lt!1252592 (ite ((_ is None!7997) lt!1252592) lt!1252589 (ite (>= (size!29110 (_1!22152 (v!37767 lt!1252592))) (size!29110 (_1!22152 (v!37767 lt!1252589)))) lt!1252592 lt!1252589)))))))

(assert (=> b!3624229 (= lt!1252592 call!262229)))

(assert (=> b!3624229 (= lt!1252589 (maxPrefix!2807 thiss!23823 (t!294262 rules!3307) (++!9500 lt!1252088 suffix!1395)))))

(declare-fun b!3624230 () Bool)

(assert (=> b!3624230 (= e!2243283 (contains!7432 rules!3307 (rule!8446 (_1!22152 (get!12450 lt!1252591)))))))

(declare-fun b!3624231 () Bool)

(declare-fun res!1466916 () Bool)

(assert (=> b!3624231 (=> (not res!1466916) (not e!2243283))))

(assert (=> b!3624231 (= res!1466916 (= (++!9500 (list!14088 (charsOf!3698 (_1!22152 (get!12450 lt!1252591)))) (_2!22152 (get!12450 lt!1252591))) (++!9500 lt!1252088 suffix!1395)))))

(declare-fun b!3624232 () Bool)

(declare-fun res!1466919 () Bool)

(assert (=> b!3624232 (=> (not res!1466919) (not e!2243283))))

(assert (=> b!3624232 (= res!1466919 (= (value!182454 (_1!22152 (get!12450 lt!1252591))) (apply!9186 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252591)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 (get!12450 lt!1252591)))))))))

(assert (= (and d!1066231 c!627185) b!3624224))

(assert (= (and d!1066231 (not c!627185)) b!3624229))

(assert (= (or b!3624224 b!3624229) bm!262224))

(assert (= (and d!1066231 (not res!1466917)) b!3624225))

(assert (= (and b!3624225 res!1466921) b!3624226))

(assert (= (and b!3624226 res!1466918) b!3624227))

(assert (= (and b!3624227 res!1466920) b!3624231))

(assert (= (and b!3624231 res!1466916) b!3624232))

(assert (= (and b!3624232 res!1466919) b!3624228))

(assert (= (and b!3624228 res!1466922) b!3624230))

(declare-fun m!4124609 () Bool)

(assert (=> b!3624230 m!4124609))

(declare-fun m!4124611 () Bool)

(assert (=> b!3624230 m!4124611))

(assert (=> b!3624228 m!4124609))

(declare-fun m!4124613 () Bool)

(assert (=> b!3624228 m!4124613))

(assert (=> b!3624228 m!4124613))

(declare-fun m!4124615 () Bool)

(assert (=> b!3624228 m!4124615))

(assert (=> b!3624228 m!4124615))

(declare-fun m!4124617 () Bool)

(assert (=> b!3624228 m!4124617))

(assert (=> b!3624232 m!4124609))

(declare-fun m!4124619 () Bool)

(assert (=> b!3624232 m!4124619))

(assert (=> b!3624232 m!4124619))

(declare-fun m!4124621 () Bool)

(assert (=> b!3624232 m!4124621))

(declare-fun m!4124623 () Bool)

(assert (=> d!1066231 m!4124623))

(assert (=> d!1066231 m!4122277))

(assert (=> d!1066231 m!4122277))

(declare-fun m!4124625 () Bool)

(assert (=> d!1066231 m!4124625))

(assert (=> d!1066231 m!4122277))

(assert (=> d!1066231 m!4122277))

(declare-fun m!4124627 () Bool)

(assert (=> d!1066231 m!4124627))

(assert (=> d!1066231 m!4122689))

(assert (=> bm!262224 m!4122277))

(declare-fun m!4124629 () Bool)

(assert (=> bm!262224 m!4124629))

(assert (=> b!3624229 m!4122277))

(declare-fun m!4124631 () Bool)

(assert (=> b!3624229 m!4124631))

(assert (=> b!3624231 m!4124609))

(assert (=> b!3624231 m!4124613))

(assert (=> b!3624231 m!4124613))

(assert (=> b!3624231 m!4124615))

(assert (=> b!3624231 m!4124615))

(declare-fun m!4124633 () Bool)

(assert (=> b!3624231 m!4124633))

(assert (=> b!3624226 m!4124609))

(assert (=> b!3624226 m!4124613))

(assert (=> b!3624226 m!4124613))

(assert (=> b!3624226 m!4124615))

(declare-fun m!4124635 () Bool)

(assert (=> b!3624225 m!4124635))

(assert (=> b!3624227 m!4124609))

(declare-fun m!4124637 () Bool)

(assert (=> b!3624227 m!4124637))

(assert (=> b!3624227 m!4122277))

(declare-fun m!4124639 () Bool)

(assert (=> b!3624227 m!4124639))

(assert (=> d!1065521 d!1066231))

(declare-fun d!1066233 () Bool)

(assert (=> d!1066233 (= (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))) (not (isEmpty!22562 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))

(declare-fun bs!571373 () Bool)

(assert (= bs!571373 d!1066233))

(assert (=> bs!571373 m!4122853))

(declare-fun m!4124641 () Bool)

(assert (=> bs!571373 m!4124641))

(assert (=> d!1065521 d!1066233))

(assert (=> d!1065521 d!1066009))

(declare-fun d!1066235 () Bool)

(declare-fun e!2243285 () Bool)

(assert (=> d!1066235 e!2243285))

(declare-fun res!1466923 () Bool)

(assert (=> d!1066235 (=> (not res!1466923) (not e!2243285))))

(assert (=> d!1066235 (= res!1466923 (isDefined!6230 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303)))))))

(declare-fun lt!1252594 () Unit!54914)

(assert (=> d!1066235 (= lt!1252594 (choose!21256 thiss!23823 rules!3307 lt!1252088 lt!1252303))))

(assert (=> d!1066235 (rulesInvariant!4670 thiss!23823 rules!3307)))

(assert (=> d!1066235 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1290 thiss!23823 rules!3307 lt!1252088 lt!1252303) lt!1252594)))

(declare-fun b!3624233 () Bool)

(declare-fun res!1466924 () Bool)

(assert (=> b!3624233 (=> (not res!1466924) (not e!2243285))))

(assert (=> b!3624233 (= res!1466924 (matchR!5012 (regex!5684 (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))) (list!14088 (charsOf!3698 lt!1252303))))))

(declare-fun b!3624234 () Bool)

(assert (=> b!3624234 (= e!2243285 (= (rule!8446 lt!1252303) (get!12451 (getRuleFromTag!1290 thiss!23823 rules!3307 (tag!6404 (rule!8446 lt!1252303))))))))

(assert (= (and d!1066235 res!1466923) b!3624233))

(assert (= (and b!3624233 res!1466924) b!3624234))

(assert (=> d!1066235 m!4122853))

(assert (=> d!1066235 m!4122853))

(assert (=> d!1066235 m!4122879))

(declare-fun m!4124643 () Bool)

(assert (=> d!1066235 m!4124643))

(assert (=> d!1066235 m!4122217))

(assert (=> b!3624233 m!4122861))

(assert (=> b!3624233 m!4122857))

(assert (=> b!3624233 m!4122861))

(assert (=> b!3624233 m!4122853))

(assert (=> b!3624233 m!4122857))

(assert (=> b!3624233 m!4122859))

(assert (=> b!3624233 m!4122853))

(assert (=> b!3624233 m!4122855))

(assert (=> b!3624234 m!4122853))

(assert (=> b!3624234 m!4122853))

(assert (=> b!3624234 m!4122855))

(assert (=> d!1065521 d!1066235))

(declare-fun d!1066237 () Bool)

(assert (=> d!1066237 (= (seqFromList!4233 lt!1252088) (fromListB!1949 lt!1252088))))

(declare-fun bs!571374 () Bool)

(assert (= bs!571374 d!1066237))

(declare-fun m!4124645 () Bool)

(assert (=> bs!571374 m!4124645))

(assert (=> d!1065521 d!1066237))

(declare-fun b!3624238 () Bool)

(declare-fun e!2243286 () Bool)

(assert (=> b!3624238 (= e!2243286 (>= (size!29114 (++!9500 lt!1252312 lt!1252313)) (size!29114 lt!1252312)))))

(declare-fun b!3624235 () Bool)

(declare-fun e!2243288 () Bool)

(declare-fun e!2243287 () Bool)

(assert (=> b!3624235 (= e!2243288 e!2243287)))

(declare-fun res!1466928 () Bool)

(assert (=> b!3624235 (=> (not res!1466928) (not e!2243287))))

(assert (=> b!3624235 (= res!1466928 (not ((_ is Nil!38166) (++!9500 lt!1252312 lt!1252313))))))

(declare-fun d!1066239 () Bool)

(assert (=> d!1066239 e!2243286))

(declare-fun res!1466925 () Bool)

(assert (=> d!1066239 (=> res!1466925 e!2243286)))

(declare-fun lt!1252595 () Bool)

(assert (=> d!1066239 (= res!1466925 (not lt!1252595))))

(assert (=> d!1066239 (= lt!1252595 e!2243288)))

(declare-fun res!1466927 () Bool)

(assert (=> d!1066239 (=> res!1466927 e!2243288)))

(assert (=> d!1066239 (= res!1466927 ((_ is Nil!38166) lt!1252312))))

(assert (=> d!1066239 (= (isPrefix!3047 lt!1252312 (++!9500 lt!1252312 lt!1252313)) lt!1252595)))

(declare-fun b!3624236 () Bool)

(declare-fun res!1466926 () Bool)

(assert (=> b!3624236 (=> (not res!1466926) (not e!2243287))))

(assert (=> b!3624236 (= res!1466926 (= (head!7656 lt!1252312) (head!7656 (++!9500 lt!1252312 lt!1252313))))))

(declare-fun b!3624237 () Bool)

(assert (=> b!3624237 (= e!2243287 (isPrefix!3047 (tail!5611 lt!1252312) (tail!5611 (++!9500 lt!1252312 lt!1252313))))))

(assert (= (and d!1066239 (not res!1466927)) b!3624235))

(assert (= (and b!3624235 res!1466928) b!3624236))

(assert (= (and b!3624236 res!1466926) b!3624237))

(assert (= (and d!1066239 (not res!1466925)) b!3624238))

(assert (=> b!3624238 m!4122883))

(declare-fun m!4124647 () Bool)

(assert (=> b!3624238 m!4124647))

(declare-fun m!4124649 () Bool)

(assert (=> b!3624238 m!4124649))

(declare-fun m!4124651 () Bool)

(assert (=> b!3624236 m!4124651))

(assert (=> b!3624236 m!4122883))

(declare-fun m!4124653 () Bool)

(assert (=> b!3624236 m!4124653))

(declare-fun m!4124655 () Bool)

(assert (=> b!3624237 m!4124655))

(assert (=> b!3624237 m!4122883))

(declare-fun m!4124657 () Bool)

(assert (=> b!3624237 m!4124657))

(assert (=> b!3624237 m!4124655))

(assert (=> b!3624237 m!4124657))

(declare-fun m!4124659 () Bool)

(assert (=> b!3624237 m!4124659))

(assert (=> d!1065521 d!1066239))

(assert (=> d!1065521 d!1065459))

(assert (=> d!1065521 d!1066043))

(declare-fun d!1066241 () Bool)

(assert (=> d!1066241 (isPrefix!3047 lt!1252312 (++!9500 lt!1252312 lt!1252313))))

(declare-fun lt!1252596 () Unit!54914)

(assert (=> d!1066241 (= lt!1252596 (choose!21257 lt!1252312 lt!1252313))))

(assert (=> d!1066241 (= (lemmaConcatTwoListThenFirstIsPrefix!1968 lt!1252312 lt!1252313) lt!1252596)))

(declare-fun bs!571375 () Bool)

(assert (= bs!571375 d!1066241))

(assert (=> bs!571375 m!4122883))

(assert (=> bs!571375 m!4122883))

(assert (=> bs!571375 m!4122885))

(declare-fun m!4124661 () Bool)

(assert (=> bs!571375 m!4124661))

(assert (=> d!1065521 d!1066241))

(declare-fun d!1066243 () Bool)

(assert (=> d!1066243 (isPrefix!3047 lt!1252307 (++!9500 lt!1252088 suffix!1395))))

(declare-fun lt!1252599 () Unit!54914)

(declare-fun choose!21271 (List!38290 List!38290 List!38290) Unit!54914)

(assert (=> d!1066243 (= lt!1252599 (choose!21271 lt!1252307 lt!1252088 suffix!1395))))

(assert (=> d!1066243 (isPrefix!3047 lt!1252307 lt!1252088)))

(assert (=> d!1066243 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!464 lt!1252307 lt!1252088 suffix!1395) lt!1252599)))

(declare-fun bs!571376 () Bool)

(assert (= bs!571376 d!1066243))

(assert (=> bs!571376 m!4122277))

(assert (=> bs!571376 m!4122277))

(assert (=> bs!571376 m!4122873))

(declare-fun m!4124663 () Bool)

(assert (=> bs!571376 m!4124663))

(declare-fun m!4124665 () Bool)

(assert (=> bs!571376 m!4124665))

(assert (=> d!1065521 d!1066243))

(assert (=> d!1065521 d!1066005))

(declare-fun b!3624242 () Bool)

(declare-fun e!2243289 () Bool)

(assert (=> b!3624242 (= e!2243289 (>= (size!29114 (++!9500 lt!1252088 suffix!1395)) (size!29114 lt!1252307)))))

(declare-fun b!3624239 () Bool)

(declare-fun e!2243291 () Bool)

(declare-fun e!2243290 () Bool)

(assert (=> b!3624239 (= e!2243291 e!2243290)))

(declare-fun res!1466932 () Bool)

(assert (=> b!3624239 (=> (not res!1466932) (not e!2243290))))

(assert (=> b!3624239 (= res!1466932 (not ((_ is Nil!38166) (++!9500 lt!1252088 suffix!1395))))))

(declare-fun d!1066245 () Bool)

(assert (=> d!1066245 e!2243289))

(declare-fun res!1466929 () Bool)

(assert (=> d!1066245 (=> res!1466929 e!2243289)))

(declare-fun lt!1252600 () Bool)

(assert (=> d!1066245 (= res!1466929 (not lt!1252600))))

(assert (=> d!1066245 (= lt!1252600 e!2243291)))

(declare-fun res!1466931 () Bool)

(assert (=> d!1066245 (=> res!1466931 e!2243291)))

(assert (=> d!1066245 (= res!1466931 ((_ is Nil!38166) lt!1252307))))

(assert (=> d!1066245 (= (isPrefix!3047 lt!1252307 (++!9500 lt!1252088 suffix!1395)) lt!1252600)))

(declare-fun b!3624240 () Bool)

(declare-fun res!1466930 () Bool)

(assert (=> b!3624240 (=> (not res!1466930) (not e!2243290))))

(assert (=> b!3624240 (= res!1466930 (= (head!7656 lt!1252307) (head!7656 (++!9500 lt!1252088 suffix!1395))))))

(declare-fun b!3624241 () Bool)

(assert (=> b!3624241 (= e!2243290 (isPrefix!3047 (tail!5611 lt!1252307) (tail!5611 (++!9500 lt!1252088 suffix!1395))))))

(assert (= (and d!1066245 (not res!1466931)) b!3624239))

(assert (= (and b!3624239 res!1466932) b!3624240))

(assert (= (and b!3624240 res!1466930) b!3624241))

(assert (= (and d!1066245 (not res!1466929)) b!3624242))

(assert (=> b!3624242 m!4122277))

(assert (=> b!3624242 m!4124639))

(declare-fun m!4124667 () Bool)

(assert (=> b!3624242 m!4124667))

(declare-fun m!4124669 () Bool)

(assert (=> b!3624240 m!4124669))

(assert (=> b!3624240 m!4122277))

(declare-fun m!4124671 () Bool)

(assert (=> b!3624240 m!4124671))

(declare-fun m!4124673 () Bool)

(assert (=> b!3624241 m!4124673))

(assert (=> b!3624241 m!4122277))

(declare-fun m!4124675 () Bool)

(assert (=> b!3624241 m!4124675))

(assert (=> b!3624241 m!4124673))

(assert (=> b!3624241 m!4124675))

(declare-fun m!4124677 () Bool)

(assert (=> b!3624241 m!4124677))

(assert (=> d!1065521 d!1066245))

(declare-fun d!1066247 () Bool)

(assert (=> d!1066247 (= (isEmpty!22563 (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395))) (not ((_ is Some!7997) (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395)))))))

(assert (=> d!1065521 d!1066247))

(declare-fun d!1066249 () Bool)

(assert (=> d!1066249 (= (get!12450 (maxPrefix!2807 thiss!23823 rules!3307 lt!1252088)) (v!37767 (maxPrefix!2807 thiss!23823 rules!3307 lt!1252088)))))

(assert (=> d!1065521 d!1066249))

(declare-fun d!1066251 () Bool)

(declare-fun list!14096 (Conc!11641) List!38294)

(assert (=> d!1066251 (= (list!14092 (_1!22154 (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088)))) (list!14096 (c!626905 (_1!22154 (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088))))))))

(declare-fun bs!571377 () Bool)

(assert (= bs!571377 d!1066251))

(declare-fun m!4124679 () Bool)

(assert (=> bs!571377 m!4124679))

(assert (=> d!1065521 d!1066251))

(declare-fun b!3624253 () Bool)

(declare-fun res!1466939 () Bool)

(declare-fun e!2243299 () Bool)

(assert (=> b!3624253 (=> (not res!1466939) (not e!2243299))))

(declare-fun lt!1252603 () tuple2!38040)

(declare-datatypes ((tuple2!38048 0))(
  ( (tuple2!38049 (_1!22158 List!38294) (_2!22158 List!38290)) )
))
(declare-fun lexList!1512 (LexerInterface!5273 List!38291 List!38290) tuple2!38048)

(assert (=> b!3624253 (= res!1466939 (= (list!14092 (_1!22154 lt!1252603)) (_1!22158 (lexList!1512 thiss!23823 rules!3307 (list!14088 (seqFromList!4233 lt!1252088))))))))

(declare-fun b!3624254 () Bool)

(declare-fun e!2243298 () Bool)

(assert (=> b!3624254 (= e!2243298 (= (_2!22154 lt!1252603) (seqFromList!4233 lt!1252088)))))

(declare-fun d!1066253 () Bool)

(assert (=> d!1066253 e!2243299))

(declare-fun res!1466941 () Bool)

(assert (=> d!1066253 (=> (not res!1466941) (not e!2243299))))

(assert (=> d!1066253 (= res!1466941 e!2243298)))

(declare-fun c!627188 () Bool)

(declare-fun size!29117 (BalanceConc!22896) Int)

(assert (=> d!1066253 (= c!627188 (> (size!29117 (_1!22154 lt!1252603)) 0))))

(declare-fun lexTailRecV2!1118 (LexerInterface!5273 List!38291 BalanceConc!22892 BalanceConc!22892 BalanceConc!22892 BalanceConc!22896) tuple2!38040)

(assert (=> d!1066253 (= lt!1252603 (lexTailRecV2!1118 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088) (BalanceConc!22893 Empty!11639) (seqFromList!4233 lt!1252088) (BalanceConc!22897 Empty!11641)))))

(assert (=> d!1066253 (= (lex!2496 thiss!23823 rules!3307 (seqFromList!4233 lt!1252088)) lt!1252603)))

(declare-fun b!3624255 () Bool)

(assert (=> b!3624255 (= e!2243299 (= (list!14088 (_2!22154 lt!1252603)) (_2!22158 (lexList!1512 thiss!23823 rules!3307 (list!14088 (seqFromList!4233 lt!1252088))))))))

(declare-fun b!3624256 () Bool)

(declare-fun e!2243300 () Bool)

(declare-fun isEmpty!22565 (BalanceConc!22896) Bool)

(assert (=> b!3624256 (= e!2243300 (not (isEmpty!22565 (_1!22154 lt!1252603))))))

(declare-fun b!3624257 () Bool)

(assert (=> b!3624257 (= e!2243298 e!2243300)))

(declare-fun res!1466940 () Bool)

(assert (=> b!3624257 (= res!1466940 (< (size!29111 (_2!22154 lt!1252603)) (size!29111 (seqFromList!4233 lt!1252088))))))

(assert (=> b!3624257 (=> (not res!1466940) (not e!2243300))))

(assert (= (and d!1066253 c!627188) b!3624257))

(assert (= (and d!1066253 (not c!627188)) b!3624254))

(assert (= (and b!3624257 res!1466940) b!3624256))

(assert (= (and d!1066253 res!1466941) b!3624253))

(assert (= (and b!3624253 res!1466939) b!3624255))

(declare-fun m!4124681 () Bool)

(assert (=> d!1066253 m!4124681))

(assert (=> d!1066253 m!4122875))

(assert (=> d!1066253 m!4122875))

(declare-fun m!4124683 () Bool)

(assert (=> d!1066253 m!4124683))

(declare-fun m!4124685 () Bool)

(assert (=> b!3624253 m!4124685))

(assert (=> b!3624253 m!4122875))

(declare-fun m!4124687 () Bool)

(assert (=> b!3624253 m!4124687))

(assert (=> b!3624253 m!4124687))

(declare-fun m!4124689 () Bool)

(assert (=> b!3624253 m!4124689))

(declare-fun m!4124691 () Bool)

(assert (=> b!3624256 m!4124691))

(declare-fun m!4124693 () Bool)

(assert (=> b!3624255 m!4124693))

(assert (=> b!3624255 m!4122875))

(assert (=> b!3624255 m!4124687))

(assert (=> b!3624255 m!4124687))

(assert (=> b!3624255 m!4124689))

(declare-fun m!4124695 () Bool)

(assert (=> b!3624257 m!4124695))

(assert (=> b!3624257 m!4122875))

(declare-fun m!4124697 () Bool)

(assert (=> b!3624257 m!4124697))

(assert (=> d!1065521 d!1066253))

(declare-fun d!1066255 () Bool)

(assert (=> d!1066255 (= (isDefined!6231 (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395))) (not (isEmpty!22563 (maxPrefix!2807 thiss!23823 rules!3307 (++!9500 lt!1252088 suffix!1395)))))))

(declare-fun bs!571378 () Bool)

(assert (= bs!571378 d!1066255))

(assert (=> bs!571378 m!4122865))

(assert (=> bs!571378 m!4122891))

(assert (=> d!1065521 d!1066255))

(declare-fun lt!1252604 () List!38290)

(declare-fun b!3624261 () Bool)

(declare-fun e!2243301 () Bool)

(assert (=> b!3624261 (= e!2243301 (or (not (= lt!1252313 Nil!38166)) (= lt!1252604 lt!1252312)))))

(declare-fun b!3624260 () Bool)

(declare-fun res!1466942 () Bool)

(assert (=> b!3624260 (=> (not res!1466942) (not e!2243301))))

(assert (=> b!3624260 (= res!1466942 (= (size!29114 lt!1252604) (+ (size!29114 lt!1252312) (size!29114 lt!1252313))))))

(declare-fun b!3624258 () Bool)

(declare-fun e!2243302 () List!38290)

(assert (=> b!3624258 (= e!2243302 lt!1252313)))

(declare-fun d!1066257 () Bool)

(assert (=> d!1066257 e!2243301))

(declare-fun res!1466943 () Bool)

(assert (=> d!1066257 (=> (not res!1466943) (not e!2243301))))

(assert (=> d!1066257 (= res!1466943 (= (content!5464 lt!1252604) ((_ map or) (content!5464 lt!1252312) (content!5464 lt!1252313))))))

(assert (=> d!1066257 (= lt!1252604 e!2243302)))

(declare-fun c!627189 () Bool)

(assert (=> d!1066257 (= c!627189 ((_ is Nil!38166) lt!1252312))))

(assert (=> d!1066257 (= (++!9500 lt!1252312 lt!1252313) lt!1252604)))

(declare-fun b!3624259 () Bool)

(assert (=> b!3624259 (= e!2243302 (Cons!38166 (h!43586 lt!1252312) (++!9500 (t!294261 lt!1252312) lt!1252313)))))

(assert (= (and d!1066257 c!627189) b!3624258))

(assert (= (and d!1066257 (not c!627189)) b!3624259))

(assert (= (and d!1066257 res!1466943) b!3624260))

(assert (= (and b!3624260 res!1466942) b!3624261))

(declare-fun m!4124699 () Bool)

(assert (=> b!3624260 m!4124699))

(assert (=> b!3624260 m!4124649))

(declare-fun m!4124701 () Bool)

(assert (=> b!3624260 m!4124701))

(declare-fun m!4124703 () Bool)

(assert (=> d!1066257 m!4124703))

(declare-fun m!4124705 () Bool)

(assert (=> d!1066257 m!4124705))

(declare-fun m!4124707 () Bool)

(assert (=> d!1066257 m!4124707))

(declare-fun m!4124709 () Bool)

(assert (=> b!3624259 m!4124709))

(assert (=> d!1065521 d!1066257))

(assert (=> d!1065571 d!1065569))

(declare-fun d!1066259 () Bool)

(assert (=> d!1066259 (ruleValid!1949 thiss!23823 rule!403)))

(assert (=> d!1066259 true))

(declare-fun _$65!1290 () Unit!54914)

(assert (=> d!1066259 (= (choose!21258 thiss!23823 rule!403 rules!3307) _$65!1290)))

(declare-fun bs!571379 () Bool)

(assert (= bs!571379 d!1066259))

(assert (=> bs!571379 m!4122293))

(assert (=> d!1065571 d!1066259))

(assert (=> d!1065571 d!1065549))

(declare-fun d!1066261 () Bool)

(assert (=> d!1066261 (= (isDefined!6231 lt!1252235) (not (isEmpty!22563 lt!1252235)))))

(declare-fun bs!571380 () Bool)

(assert (= bs!571380 d!1066261))

(assert (=> bs!571380 m!4122683))

(assert (=> b!3622745 d!1066261))

(declare-fun d!1066263 () Bool)

(declare-fun res!1466944 () Bool)

(declare-fun e!2243303 () Bool)

(assert (=> d!1066263 (=> (not res!1466944) (not e!2243303))))

(assert (=> d!1066263 (= res!1466944 (rulesValid!2168 thiss!23823 (t!294262 rules!3307)))))

(assert (=> d!1066263 (= (rulesInvariant!4670 thiss!23823 (t!294262 rules!3307)) e!2243303)))

(declare-fun b!3624262 () Bool)

(assert (=> b!3624262 (= e!2243303 (noDuplicateTag!2164 thiss!23823 (t!294262 rules!3307) Nil!38171))))

(assert (= (and d!1066263 res!1466944) b!3624262))

(declare-fun m!4124711 () Bool)

(assert (=> d!1066263 m!4124711))

(declare-fun m!4124713 () Bool)

(assert (=> b!3624262 m!4124713))

(assert (=> b!3622815 d!1066263))

(declare-fun d!1066265 () Bool)

(assert (=> d!1066265 (rulesInvariant!4670 thiss!23823 (t!294262 rules!3307))))

(declare-fun lt!1252607 () Unit!54914)

(declare-fun choose!21272 (LexerInterface!5273 Rule!11168 List!38291) Unit!54914)

(assert (=> d!1066265 (= lt!1252607 (choose!21272 thiss!23823 (h!43587 rules!3307) (t!294262 rules!3307)))))

(assert (=> d!1066265 (rulesInvariant!4670 thiss!23823 (Cons!38167 (h!43587 rules!3307) (t!294262 rules!3307)))))

(assert (=> d!1066265 (= (lemmaInvariantOnRulesThenOnTail!543 thiss!23823 (h!43587 rules!3307) (t!294262 rules!3307)) lt!1252607)))

(declare-fun bs!571381 () Bool)

(assert (= bs!571381 d!1066265))

(assert (=> bs!571381 m!4122771))

(declare-fun m!4124715 () Bool)

(assert (=> bs!571381 m!4124715))

(declare-fun m!4124717 () Bool)

(assert (=> bs!571381 m!4124717))

(assert (=> b!3622815 d!1066265))

(declare-fun b!3624263 () Bool)

(declare-fun e!2243305 () Bool)

(declare-fun lt!1252610 () Option!7999)

(assert (=> b!3624263 (= e!2243305 (= (tag!6404 (get!12451 lt!1252610)) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3624264 () Bool)

(declare-fun e!2243304 () Option!7999)

(declare-fun e!2243306 () Option!7999)

(assert (=> b!3624264 (= e!2243304 e!2243306)))

(declare-fun c!627190 () Bool)

(assert (=> b!3624264 (= c!627190 (and ((_ is Cons!38167) (t!294262 rules!3307)) (not (= (tag!6404 (h!43587 (t!294262 rules!3307))) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))))

(declare-fun b!3624265 () Bool)

(declare-fun lt!1252609 () Unit!54914)

(declare-fun lt!1252608 () Unit!54914)

(assert (=> b!3624265 (= lt!1252609 lt!1252608)))

(assert (=> b!3624265 (rulesInvariant!4670 thiss!23823 (t!294262 (t!294262 rules!3307)))))

(assert (=> b!3624265 (= lt!1252608 (lemmaInvariantOnRulesThenOnTail!543 thiss!23823 (h!43587 (t!294262 rules!3307)) (t!294262 (t!294262 rules!3307))))))

(assert (=> b!3624265 (= e!2243306 (getRuleFromTag!1290 thiss!23823 (t!294262 (t!294262 rules!3307)) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))))))

(declare-fun b!3624267 () Bool)

(assert (=> b!3624267 (= e!2243304 (Some!7998 (h!43587 (t!294262 rules!3307))))))

(declare-fun b!3624268 () Bool)

(assert (=> b!3624268 (= e!2243306 None!7998)))

(declare-fun d!1066267 () Bool)

(declare-fun e!2243307 () Bool)

(assert (=> d!1066267 e!2243307))

(declare-fun res!1466945 () Bool)

(assert (=> d!1066267 (=> res!1466945 e!2243307)))

(assert (=> d!1066267 (= res!1466945 (isEmpty!22562 lt!1252610))))

(assert (=> d!1066267 (= lt!1252610 e!2243304)))

(declare-fun c!627191 () Bool)

(assert (=> d!1066267 (= c!627191 (and ((_ is Cons!38167) (t!294262 rules!3307)) (= (tag!6404 (h!43587 (t!294262 rules!3307))) (tag!6404 (rule!8446 (_1!22152 lt!1252077))))))))

(assert (=> d!1066267 (rulesInvariant!4670 thiss!23823 (t!294262 rules!3307))))

(assert (=> d!1066267 (= (getRuleFromTag!1290 thiss!23823 (t!294262 rules!3307) (tag!6404 (rule!8446 (_1!22152 lt!1252077)))) lt!1252610)))

(declare-fun b!3624266 () Bool)

(assert (=> b!3624266 (= e!2243307 e!2243305)))

(declare-fun res!1466946 () Bool)

(assert (=> b!3624266 (=> (not res!1466946) (not e!2243305))))

(assert (=> b!3624266 (= res!1466946 (contains!7432 (t!294262 rules!3307) (get!12451 lt!1252610)))))

(assert (= (and d!1066267 c!627191) b!3624267))

(assert (= (and d!1066267 (not c!627191)) b!3624264))

(assert (= (and b!3624264 c!627190) b!3624265))

(assert (= (and b!3624264 (not c!627190)) b!3624268))

(assert (= (and d!1066267 (not res!1466945)) b!3624266))

(assert (= (and b!3624266 res!1466946) b!3624263))

(declare-fun m!4124719 () Bool)

(assert (=> b!3624263 m!4124719))

(declare-fun m!4124721 () Bool)

(assert (=> b!3624265 m!4124721))

(declare-fun m!4124723 () Bool)

(assert (=> b!3624265 m!4124723))

(declare-fun m!4124725 () Bool)

(assert (=> b!3624265 m!4124725))

(declare-fun m!4124727 () Bool)

(assert (=> d!1066267 m!4124727))

(assert (=> d!1066267 m!4122771))

(assert (=> b!3624266 m!4124719))

(assert (=> b!3624266 m!4124719))

(declare-fun m!4124729 () Bool)

(assert (=> b!3624266 m!4124729))

(assert (=> b!3622815 d!1066267))

(assert (=> d!1065569 d!1066081))

(declare-fun d!1066269 () Bool)

(declare-fun c!627192 () Bool)

(assert (=> d!1066269 (= c!627192 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))))))

(declare-fun e!2243308 () Bool)

(assert (=> d!1066269 (= (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))) e!2243308)))

(declare-fun b!3624269 () Bool)

(assert (=> b!3624269 (= e!2243308 (inv!51571 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))))))

(declare-fun b!3624270 () Bool)

(declare-fun e!2243309 () Bool)

(assert (=> b!3624270 (= e!2243308 e!2243309)))

(declare-fun res!1466947 () Bool)

(assert (=> b!3624270 (= res!1466947 (not ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))))))

(assert (=> b!3624270 (=> res!1466947 e!2243309)))

(declare-fun b!3624271 () Bool)

(assert (=> b!3624271 (= e!2243309 (inv!51572 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))))))

(assert (= (and d!1066269 c!627192) b!3624269))

(assert (= (and d!1066269 (not c!627192)) b!3624270))

(assert (= (and b!3624270 (not res!1466947)) b!3624271))

(declare-fun m!4124731 () Bool)

(assert (=> b!3624269 m!4124731))

(declare-fun m!4124733 () Bool)

(assert (=> b!3624271 m!4124733))

(assert (=> b!3622759 d!1066269))

(declare-fun b!3624275 () Bool)

(declare-fun e!2243310 () Bool)

(assert (=> b!3624275 (= e!2243310 (>= (size!29114 (++!9500 lt!1252088 suffix!1395)) (size!29114 lt!1252088)))))

(declare-fun b!3624272 () Bool)

(declare-fun e!2243312 () Bool)

(declare-fun e!2243311 () Bool)

(assert (=> b!3624272 (= e!2243312 e!2243311)))

(declare-fun res!1466951 () Bool)

(assert (=> b!3624272 (=> (not res!1466951) (not e!2243311))))

(assert (=> b!3624272 (= res!1466951 (not ((_ is Nil!38166) (++!9500 lt!1252088 suffix!1395))))))

(declare-fun d!1066271 () Bool)

(assert (=> d!1066271 e!2243310))

(declare-fun res!1466948 () Bool)

(assert (=> d!1066271 (=> res!1466948 e!2243310)))

(declare-fun lt!1252611 () Bool)

(assert (=> d!1066271 (= res!1466948 (not lt!1252611))))

(assert (=> d!1066271 (= lt!1252611 e!2243312)))

(declare-fun res!1466950 () Bool)

(assert (=> d!1066271 (=> res!1466950 e!2243312)))

(assert (=> d!1066271 (= res!1466950 ((_ is Nil!38166) lt!1252088))))

(assert (=> d!1066271 (= (isPrefix!3047 lt!1252088 (++!9500 lt!1252088 suffix!1395)) lt!1252611)))

(declare-fun b!3624273 () Bool)

(declare-fun res!1466949 () Bool)

(assert (=> b!3624273 (=> (not res!1466949) (not e!2243311))))

(assert (=> b!3624273 (= res!1466949 (= (head!7656 lt!1252088) (head!7656 (++!9500 lt!1252088 suffix!1395))))))

(declare-fun b!3624274 () Bool)

(assert (=> b!3624274 (= e!2243311 (isPrefix!3047 (tail!5611 lt!1252088) (tail!5611 (++!9500 lt!1252088 suffix!1395))))))

(assert (= (and d!1066271 (not res!1466950)) b!3624272))

(assert (= (and b!3624272 res!1466951) b!3624273))

(assert (= (and b!3624273 res!1466949) b!3624274))

(assert (= (and d!1066271 (not res!1466948)) b!3624275))

(assert (=> b!3624275 m!4122277))

(assert (=> b!3624275 m!4124639))

(assert (=> b!3624275 m!4122641))

(assert (=> b!3624273 m!4122643))

(assert (=> b!3624273 m!4122277))

(assert (=> b!3624273 m!4124671))

(assert (=> b!3624274 m!4122647))

(assert (=> b!3624274 m!4122277))

(assert (=> b!3624274 m!4124675))

(assert (=> b!3624274 m!4122647))

(assert (=> b!3624274 m!4124675))

(declare-fun m!4124735 () Bool)

(assert (=> b!3624274 m!4124735))

(assert (=> d!1065503 d!1066271))

(assert (=> d!1065503 d!1065499))

(declare-fun d!1066273 () Bool)

(assert (=> d!1066273 (isPrefix!3047 lt!1252088 (++!9500 lt!1252088 suffix!1395))))

(assert (=> d!1066273 true))

(declare-fun _$46!1459 () Unit!54914)

(assert (=> d!1066273 (= (choose!21257 lt!1252088 suffix!1395) _$46!1459)))

(declare-fun bs!571382 () Bool)

(assert (= bs!571382 d!1066273))

(assert (=> bs!571382 m!4122277))

(assert (=> bs!571382 m!4122277))

(assert (=> bs!571382 m!4122733))

(assert (=> d!1065503 d!1066273))

(declare-fun b!3624276 () Bool)

(declare-fun e!2243315 () Bool)

(declare-fun e!2243313 () Bool)

(assert (=> b!3624276 (= e!2243315 e!2243313)))

(declare-fun c!627194 () Bool)

(assert (=> b!3624276 (= c!627194 ((_ is EmptyLang!10443) (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3624278 () Bool)

(declare-fun e!2243318 () Bool)

(declare-fun e!2243314 () Bool)

(assert (=> b!3624278 (= e!2243318 e!2243314)))

(declare-fun res!1466955 () Bool)

(assert (=> b!3624278 (=> res!1466955 e!2243314)))

(declare-fun call!262230 () Bool)

(assert (=> b!3624278 (= res!1466955 call!262230)))

(declare-fun b!3624279 () Bool)

(declare-fun e!2243319 () Bool)

(assert (=> b!3624279 (= e!2243319 (nullable!3613 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3624280 () Bool)

(assert (=> b!3624280 (= e!2243314 (not (= (head!7656 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (c!626792 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))))

(declare-fun b!3624281 () Bool)

(declare-fun res!1466956 () Bool)

(declare-fun e!2243317 () Bool)

(assert (=> b!3624281 (=> (not res!1466956) (not e!2243317))))

(assert (=> b!3624281 (= res!1466956 (not call!262230))))

(declare-fun b!3624282 () Bool)

(declare-fun lt!1252612 () Bool)

(assert (=> b!3624282 (= e!2243313 (not lt!1252612))))

(declare-fun b!3624283 () Bool)

(declare-fun res!1466954 () Bool)

(assert (=> b!3624283 (=> res!1466954 e!2243314)))

(assert (=> b!3624283 (= res!1466954 (not (isEmpty!22559 (tail!5611 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))))

(declare-fun b!3624284 () Bool)

(assert (=> b!3624284 (= e!2243315 (= lt!1252612 call!262230))))

(declare-fun b!3624285 () Bool)

(declare-fun res!1466952 () Bool)

(declare-fun e!2243316 () Bool)

(assert (=> b!3624285 (=> res!1466952 e!2243316)))

(assert (=> b!3624285 (= res!1466952 (not ((_ is ElementMatch!10443) (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))))

(assert (=> b!3624285 (= e!2243313 e!2243316)))

(declare-fun b!3624286 () Bool)

(assert (=> b!3624286 (= e!2243317 (= (head!7656 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (c!626792 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))))

(declare-fun bm!262225 () Bool)

(assert (=> bm!262225 (= call!262230 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun b!3624287 () Bool)

(assert (=> b!3624287 (= e!2243319 (matchR!5012 (derivativeStep!3162 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (head!7656 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))) (tail!5611 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun d!1066275 () Bool)

(assert (=> d!1066275 e!2243315))

(declare-fun c!627195 () Bool)

(assert (=> d!1066275 (= c!627195 ((_ is EmptyExpr!10443) (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(assert (=> d!1066275 (= lt!1252612 e!2243319)))

(declare-fun c!627193 () Bool)

(assert (=> d!1066275 (= c!627193 (isEmpty!22559 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(assert (=> d!1066275 (validRegex!4775 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(assert (=> d!1066275 (= (matchR!5012 (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) lt!1252612)))

(declare-fun b!3624277 () Bool)

(declare-fun res!1466958 () Bool)

(assert (=> b!3624277 (=> res!1466958 e!2243316)))

(assert (=> b!3624277 (= res!1466958 e!2243317)))

(declare-fun res!1466959 () Bool)

(assert (=> b!3624277 (=> (not res!1466959) (not e!2243317))))

(assert (=> b!3624277 (= res!1466959 lt!1252612)))

(declare-fun b!3624288 () Bool)

(declare-fun res!1466957 () Bool)

(assert (=> b!3624288 (=> (not res!1466957) (not e!2243317))))

(assert (=> b!3624288 (= res!1466957 (isEmpty!22559 (tail!5611 (tail!5611 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))))))))

(declare-fun b!3624289 () Bool)

(assert (=> b!3624289 (= e!2243316 e!2243318)))

(declare-fun res!1466953 () Bool)

(assert (=> b!3624289 (=> (not res!1466953) (not e!2243318))))

(assert (=> b!3624289 (= res!1466953 (not lt!1252612))))

(assert (= (and d!1066275 c!627193) b!3624279))

(assert (= (and d!1066275 (not c!627193)) b!3624287))

(assert (= (and d!1066275 c!627195) b!3624284))

(assert (= (and d!1066275 (not c!627195)) b!3624276))

(assert (= (and b!3624276 c!627194) b!3624282))

(assert (= (and b!3624276 (not c!627194)) b!3624285))

(assert (= (and b!3624285 (not res!1466952)) b!3624277))

(assert (= (and b!3624277 res!1466959) b!3624281))

(assert (= (and b!3624281 res!1466956) b!3624288))

(assert (= (and b!3624288 res!1466957) b!3624286))

(assert (= (and b!3624277 (not res!1466958)) b!3624289))

(assert (= (and b!3624289 res!1466953) b!3624278))

(assert (= (and b!3624278 (not res!1466955)) b!3624283))

(assert (= (and b!3624283 (not res!1466954)) b!3624280))

(assert (= (or b!3624284 b!3624278 b!3624281) bm!262225))

(assert (=> b!3624283 m!4123007))

(declare-fun m!4124737 () Bool)

(assert (=> b!3624283 m!4124737))

(assert (=> b!3624283 m!4124737))

(declare-fun m!4124739 () Bool)

(assert (=> b!3624283 m!4124739))

(assert (=> b!3624288 m!4123007))

(assert (=> b!3624288 m!4124737))

(assert (=> b!3624288 m!4124737))

(assert (=> b!3624288 m!4124739))

(assert (=> bm!262225 m!4123007))

(assert (=> bm!262225 m!4123009))

(assert (=> b!3624279 m!4123019))

(declare-fun m!4124741 () Bool)

(assert (=> b!3624279 m!4124741))

(assert (=> b!3624286 m!4123007))

(declare-fun m!4124743 () Bool)

(assert (=> b!3624286 m!4124743))

(assert (=> d!1066275 m!4123007))

(assert (=> d!1066275 m!4123009))

(assert (=> d!1066275 m!4123019))

(declare-fun m!4124745 () Bool)

(assert (=> d!1066275 m!4124745))

(assert (=> b!3624280 m!4123007))

(assert (=> b!3624280 m!4124743))

(assert (=> b!3624287 m!4123007))

(assert (=> b!3624287 m!4124743))

(assert (=> b!3624287 m!4123019))

(assert (=> b!3624287 m!4124743))

(declare-fun m!4124747 () Bool)

(assert (=> b!3624287 m!4124747))

(assert (=> b!3624287 m!4123007))

(assert (=> b!3624287 m!4124737))

(assert (=> b!3624287 m!4124747))

(assert (=> b!3624287 m!4124737))

(declare-fun m!4124749 () Bool)

(assert (=> b!3624287 m!4124749))

(assert (=> b!3623017 d!1066275))

(declare-fun b!3624290 () Bool)

(declare-fun e!2243324 () Regex!10443)

(declare-fun call!262231 () Regex!10443)

(assert (=> b!3624290 (= e!2243324 (Union!10443 (Concat!16358 call!262231 (regTwo!21398 (regex!5684 lt!1252074))) EmptyLang!10443))))

(declare-fun call!262232 () Regex!10443)

(declare-fun c!627198 () Bool)

(declare-fun bm!262226 () Bool)

(declare-fun c!627197 () Bool)

(assert (=> bm!262226 (= call!262232 (derivativeStep!3162 (ite c!627198 (regTwo!21399 (regex!5684 lt!1252074)) (ite c!627197 (reg!10772 (regex!5684 lt!1252074)) (regOne!21398 (regex!5684 lt!1252074)))) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun b!3624291 () Bool)

(declare-fun c!627196 () Bool)

(assert (=> b!3624291 (= c!627196 (nullable!3613 (regOne!21398 (regex!5684 lt!1252074))))))

(declare-fun e!2243320 () Regex!10443)

(assert (=> b!3624291 (= e!2243320 e!2243324)))

(declare-fun b!3624293 () Bool)

(declare-fun e!2243321 () Regex!10443)

(declare-fun call!262234 () Regex!10443)

(assert (=> b!3624293 (= e!2243321 (Union!10443 call!262234 call!262232))))

(declare-fun b!3624294 () Bool)

(declare-fun e!2243322 () Regex!10443)

(assert (=> b!3624294 (= e!2243322 (ite (= (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077)))) (c!626792 (regex!5684 lt!1252074))) EmptyExpr!10443 EmptyLang!10443))))

(declare-fun bm!262227 () Bool)

(declare-fun call!262233 () Regex!10443)

(assert (=> bm!262227 (= call!262233 call!262232)))

(declare-fun b!3624295 () Bool)

(declare-fun e!2243323 () Regex!10443)

(assert (=> b!3624295 (= e!2243323 e!2243322)))

(declare-fun c!627200 () Bool)

(assert (=> b!3624295 (= c!627200 ((_ is ElementMatch!10443) (regex!5684 lt!1252074)))))

(declare-fun b!3624296 () Bool)

(assert (=> b!3624296 (= e!2243321 e!2243320)))

(assert (=> b!3624296 (= c!627197 ((_ is Star!10443) (regex!5684 lt!1252074)))))

(declare-fun b!3624297 () Bool)

(assert (=> b!3624297 (= e!2243324 (Union!10443 (Concat!16358 call!262231 (regTwo!21398 (regex!5684 lt!1252074))) call!262234))))

(declare-fun b!3624298 () Bool)

(assert (=> b!3624298 (= c!627198 ((_ is Union!10443) (regex!5684 lt!1252074)))))

(assert (=> b!3624298 (= e!2243322 e!2243321)))

(declare-fun bm!262228 () Bool)

(assert (=> bm!262228 (= call!262231 call!262233)))

(declare-fun b!3624299 () Bool)

(assert (=> b!3624299 (= e!2243323 EmptyLang!10443)))

(declare-fun bm!262229 () Bool)

(assert (=> bm!262229 (= call!262234 (derivativeStep!3162 (ite c!627198 (regOne!21399 (regex!5684 lt!1252074)) (regTwo!21398 (regex!5684 lt!1252074))) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))))))

(declare-fun b!3624292 () Bool)

(assert (=> b!3624292 (= e!2243320 (Concat!16358 call!262233 (regex!5684 lt!1252074)))))

(declare-fun d!1066277 () Bool)

(declare-fun lt!1252613 () Regex!10443)

(assert (=> d!1066277 (validRegex!4775 lt!1252613)))

(assert (=> d!1066277 (= lt!1252613 e!2243323)))

(declare-fun c!627199 () Bool)

(assert (=> d!1066277 (= c!627199 (or ((_ is EmptyExpr!10443) (regex!5684 lt!1252074)) ((_ is EmptyLang!10443) (regex!5684 lt!1252074))))))

(assert (=> d!1066277 (validRegex!4775 (regex!5684 lt!1252074))))

(assert (=> d!1066277 (= (derivativeStep!3162 (regex!5684 lt!1252074) (head!7656 (list!14088 (charsOf!3698 (_1!22152 lt!1252077))))) lt!1252613)))

(assert (= (and d!1066277 c!627199) b!3624299))

(assert (= (and d!1066277 (not c!627199)) b!3624295))

(assert (= (and b!3624295 c!627200) b!3624294))

(assert (= (and b!3624295 (not c!627200)) b!3624298))

(assert (= (and b!3624298 c!627198) b!3624293))

(assert (= (and b!3624298 (not c!627198)) b!3624296))

(assert (= (and b!3624296 c!627197) b!3624292))

(assert (= (and b!3624296 (not c!627197)) b!3624291))

(assert (= (and b!3624291 c!627196) b!3624297))

(assert (= (and b!3624291 (not c!627196)) b!3624290))

(assert (= (or b!3624297 b!3624290) bm!262228))

(assert (= (or b!3624292 bm!262228) bm!262227))

(assert (= (or b!3624293 bm!262227) bm!262226))

(assert (= (or b!3624293 b!3624297) bm!262229))

(assert (=> bm!262226 m!4123015))

(declare-fun m!4124751 () Bool)

(assert (=> bm!262226 m!4124751))

(declare-fun m!4124753 () Bool)

(assert (=> b!3624291 m!4124753))

(assert (=> bm!262229 m!4123015))

(declare-fun m!4124755 () Bool)

(assert (=> bm!262229 m!4124755))

(declare-fun m!4124757 () Bool)

(assert (=> d!1066277 m!4124757))

(assert (=> d!1066277 m!4123017))

(assert (=> b!3623017 d!1066277))

(assert (=> b!3623017 d!1066055))

(assert (=> b!3623017 d!1065951))

(declare-fun d!1066279 () Bool)

(assert (=> d!1066279 (= (inv!51568 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))) (isBalanced!3501 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))))))

(declare-fun bs!571383 () Bool)

(assert (= bs!571383 d!1066279))

(declare-fun m!4124759 () Bool)

(assert (=> bs!571383 m!4124759))

(assert (=> tb!207777 d!1066279))

(declare-fun b!3624303 () Bool)

(declare-fun e!2243325 () Bool)

(declare-fun lt!1252614 () List!38290)

(assert (=> b!3624303 (= e!2243325 (or (not (= (ite c!626849 call!262082 call!262084) Nil!38166)) (= lt!1252614 (ite c!626849 call!262084 call!262082))))))

(declare-fun b!3624302 () Bool)

(declare-fun res!1466960 () Bool)

(assert (=> b!3624302 (=> (not res!1466960) (not e!2243325))))

(assert (=> b!3624302 (= res!1466960 (= (size!29114 lt!1252614) (+ (size!29114 (ite c!626849 call!262084 call!262082)) (size!29114 (ite c!626849 call!262082 call!262084)))))))

(declare-fun e!2243326 () List!38290)

(declare-fun b!3624300 () Bool)

(assert (=> b!3624300 (= e!2243326 (ite c!626849 call!262082 call!262084))))

(declare-fun d!1066281 () Bool)

(assert (=> d!1066281 e!2243325))

(declare-fun res!1466961 () Bool)

(assert (=> d!1066281 (=> (not res!1466961) (not e!2243325))))

(assert (=> d!1066281 (= res!1466961 (= (content!5464 lt!1252614) ((_ map or) (content!5464 (ite c!626849 call!262084 call!262082)) (content!5464 (ite c!626849 call!262082 call!262084)))))))

(assert (=> d!1066281 (= lt!1252614 e!2243326)))

(declare-fun c!627201 () Bool)

(assert (=> d!1066281 (= c!627201 ((_ is Nil!38166) (ite c!626849 call!262084 call!262082)))))

(assert (=> d!1066281 (= (++!9500 (ite c!626849 call!262084 call!262082) (ite c!626849 call!262082 call!262084)) lt!1252614)))

(declare-fun b!3624301 () Bool)

(assert (=> b!3624301 (= e!2243326 (Cons!38166 (h!43586 (ite c!626849 call!262084 call!262082)) (++!9500 (t!294261 (ite c!626849 call!262084 call!262082)) (ite c!626849 call!262082 call!262084))))))

(assert (= (and d!1066281 c!627201) b!3624300))

(assert (= (and d!1066281 (not c!627201)) b!3624301))

(assert (= (and d!1066281 res!1466961) b!3624302))

(assert (= (and b!3624302 res!1466960) b!3624303))

(declare-fun m!4124761 () Bool)

(assert (=> b!3624302 m!4124761))

(declare-fun m!4124763 () Bool)

(assert (=> b!3624302 m!4124763))

(declare-fun m!4124765 () Bool)

(assert (=> b!3624302 m!4124765))

(declare-fun m!4124767 () Bool)

(assert (=> d!1066281 m!4124767))

(declare-fun m!4124769 () Bool)

(assert (=> d!1066281 m!4124769))

(declare-fun m!4124771 () Bool)

(assert (=> d!1066281 m!4124771))

(declare-fun m!4124773 () Bool)

(assert (=> b!3624301 m!4124773))

(assert (=> bm!262079 d!1066281))

(declare-fun e!2243331 () Bool)

(declare-fun tp!1106693 () Bool)

(declare-fun b!3624312 () Bool)

(declare-fun tp!1106692 () Bool)

(assert (=> b!3624312 (= e!2243331 (and (inv!51567 (left!29795 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))) tp!1106692 (inv!51567 (right!30125 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))) tp!1106693))))

(declare-fun b!3624314 () Bool)

(declare-fun e!2243332 () Bool)

(declare-fun tp!1106691 () Bool)

(assert (=> b!3624314 (= e!2243332 tp!1106691)))

(declare-fun b!3624313 () Bool)

(declare-fun inv!51574 (IArray!23283) Bool)

(assert (=> b!3624313 (= e!2243331 (and (inv!51574 (xs!14841 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))) e!2243332))))

(assert (=> b!3622688 (= tp!1106457 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511)))) e!2243331))))

(assert (= (and b!3622688 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))) b!3624312))

(assert (= b!3624313 b!3624314))

(assert (= (and b!3622688 ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 token!511))) (value!182454 token!511))))) b!3624313))

(declare-fun m!4124775 () Bool)

(assert (=> b!3624312 m!4124775))

(declare-fun m!4124777 () Bool)

(assert (=> b!3624312 m!4124777))

(declare-fun m!4124779 () Bool)

(assert (=> b!3624313 m!4124779))

(assert (=> b!3622688 m!4122611))

(declare-fun b!3624316 () Bool)

(declare-fun e!2243333 () Bool)

(declare-fun tp!1106698 () Bool)

(declare-fun tp!1106694 () Bool)

(assert (=> b!3624316 (= e!2243333 (and tp!1106698 tp!1106694))))

(declare-fun b!3624315 () Bool)

(assert (=> b!3624315 (= e!2243333 tp_is_empty!17969)))

(declare-fun b!3624317 () Bool)

(declare-fun tp!1106696 () Bool)

(assert (=> b!3624317 (= e!2243333 tp!1106696)))

(assert (=> b!3623061 (= tp!1106551 e!2243333)))

(declare-fun b!3624318 () Bool)

(declare-fun tp!1106695 () Bool)

(declare-fun tp!1106697 () Bool)

(assert (=> b!3624318 (= e!2243333 (and tp!1106695 tp!1106697))))

(assert (= (and b!3623061 ((_ is ElementMatch!10443) (regOne!21398 (regex!5684 rule!403)))) b!3624315))

(assert (= (and b!3623061 ((_ is Concat!16358) (regOne!21398 (regex!5684 rule!403)))) b!3624316))

(assert (= (and b!3623061 ((_ is Star!10443) (regOne!21398 (regex!5684 rule!403)))) b!3624317))

(assert (= (and b!3623061 ((_ is Union!10443) (regOne!21398 (regex!5684 rule!403)))) b!3624318))

(declare-fun b!3624320 () Bool)

(declare-fun e!2243334 () Bool)

(declare-fun tp!1106703 () Bool)

(declare-fun tp!1106699 () Bool)

(assert (=> b!3624320 (= e!2243334 (and tp!1106703 tp!1106699))))

(declare-fun b!3624319 () Bool)

(assert (=> b!3624319 (= e!2243334 tp_is_empty!17969)))

(declare-fun b!3624321 () Bool)

(declare-fun tp!1106701 () Bool)

(assert (=> b!3624321 (= e!2243334 tp!1106701)))

(assert (=> b!3623061 (= tp!1106547 e!2243334)))

(declare-fun b!3624322 () Bool)

(declare-fun tp!1106700 () Bool)

(declare-fun tp!1106702 () Bool)

(assert (=> b!3624322 (= e!2243334 (and tp!1106700 tp!1106702))))

(assert (= (and b!3623061 ((_ is ElementMatch!10443) (regTwo!21398 (regex!5684 rule!403)))) b!3624319))

(assert (= (and b!3623061 ((_ is Concat!16358) (regTwo!21398 (regex!5684 rule!403)))) b!3624320))

(assert (= (and b!3623061 ((_ is Star!10443) (regTwo!21398 (regex!5684 rule!403)))) b!3624321))

(assert (= (and b!3623061 ((_ is Union!10443) (regTwo!21398 (regex!5684 rule!403)))) b!3624322))

(declare-fun b!3624324 () Bool)

(declare-fun e!2243335 () Bool)

(declare-fun tp!1106708 () Bool)

(declare-fun tp!1106704 () Bool)

(assert (=> b!3624324 (= e!2243335 (and tp!1106708 tp!1106704))))

(declare-fun b!3624323 () Bool)

(assert (=> b!3624323 (= e!2243335 tp_is_empty!17969)))

(declare-fun b!3624325 () Bool)

(declare-fun tp!1106706 () Bool)

(assert (=> b!3624325 (= e!2243335 tp!1106706)))

(assert (=> b!3623063 (= tp!1106548 e!2243335)))

(declare-fun b!3624326 () Bool)

(declare-fun tp!1106705 () Bool)

(declare-fun tp!1106707 () Bool)

(assert (=> b!3624326 (= e!2243335 (and tp!1106705 tp!1106707))))

(assert (= (and b!3623063 ((_ is ElementMatch!10443) (regOne!21399 (regex!5684 rule!403)))) b!3624323))

(assert (= (and b!3623063 ((_ is Concat!16358) (regOne!21399 (regex!5684 rule!403)))) b!3624324))

(assert (= (and b!3623063 ((_ is Star!10443) (regOne!21399 (regex!5684 rule!403)))) b!3624325))

(assert (= (and b!3623063 ((_ is Union!10443) (regOne!21399 (regex!5684 rule!403)))) b!3624326))

(declare-fun b!3624328 () Bool)

(declare-fun e!2243336 () Bool)

(declare-fun tp!1106713 () Bool)

(declare-fun tp!1106709 () Bool)

(assert (=> b!3624328 (= e!2243336 (and tp!1106713 tp!1106709))))

(declare-fun b!3624327 () Bool)

(assert (=> b!3624327 (= e!2243336 tp_is_empty!17969)))

(declare-fun b!3624329 () Bool)

(declare-fun tp!1106711 () Bool)

(assert (=> b!3624329 (= e!2243336 tp!1106711)))

(assert (=> b!3623063 (= tp!1106550 e!2243336)))

(declare-fun b!3624330 () Bool)

(declare-fun tp!1106710 () Bool)

(declare-fun tp!1106712 () Bool)

(assert (=> b!3624330 (= e!2243336 (and tp!1106710 tp!1106712))))

(assert (= (and b!3623063 ((_ is ElementMatch!10443) (regTwo!21399 (regex!5684 rule!403)))) b!3624327))

(assert (= (and b!3623063 ((_ is Concat!16358) (regTwo!21399 (regex!5684 rule!403)))) b!3624328))

(assert (= (and b!3623063 ((_ is Star!10443) (regTwo!21399 (regex!5684 rule!403)))) b!3624329))

(assert (= (and b!3623063 ((_ is Union!10443) (regTwo!21399 (regex!5684 rule!403)))) b!3624330))

(declare-fun b!3624332 () Bool)

(declare-fun e!2243337 () Bool)

(declare-fun tp!1106718 () Bool)

(declare-fun tp!1106714 () Bool)

(assert (=> b!3624332 (= e!2243337 (and tp!1106718 tp!1106714))))

(declare-fun b!3624331 () Bool)

(assert (=> b!3624331 (= e!2243337 tp_is_empty!17969)))

(declare-fun b!3624333 () Bool)

(declare-fun tp!1106716 () Bool)

(assert (=> b!3624333 (= e!2243337 tp!1106716)))

(assert (=> b!3623062 (= tp!1106549 e!2243337)))

(declare-fun b!3624334 () Bool)

(declare-fun tp!1106715 () Bool)

(declare-fun tp!1106717 () Bool)

(assert (=> b!3624334 (= e!2243337 (and tp!1106715 tp!1106717))))

(assert (= (and b!3623062 ((_ is ElementMatch!10443) (reg!10772 (regex!5684 rule!403)))) b!3624331))

(assert (= (and b!3623062 ((_ is Concat!16358) (reg!10772 (regex!5684 rule!403)))) b!3624332))

(assert (= (and b!3623062 ((_ is Star!10443) (reg!10772 (regex!5684 rule!403)))) b!3624333))

(assert (= (and b!3623062 ((_ is Union!10443) (reg!10772 (regex!5684 rule!403)))) b!3624334))

(declare-fun b!3624337 () Bool)

(declare-fun b_free!94557 () Bool)

(declare-fun b_next!95261 () Bool)

(assert (=> b!3624337 (= b_free!94557 (not b_next!95261))))

(declare-fun tb!207957 () Bool)

(declare-fun t!294492 () Bool)

(assert (=> (and b!3624337 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294492) tb!207957))

(declare-fun result!253378 () Bool)

(assert (= result!253378 result!253164))

(assert (=> d!1065421 t!294492))

(declare-fun t!294494 () Bool)

(declare-fun tb!207959 () Bool)

(assert (=> (and b!3624337 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294494) tb!207959))

(declare-fun result!253380 () Bool)

(assert (= result!253380 result!253144))

(assert (=> d!1065451 t!294494))

(assert (=> d!1065417 t!294494))

(declare-fun t!294496 () Bool)

(declare-fun tb!207961 () Bool)

(assert (=> (and b!3624337 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294496) tb!207961))

(declare-fun result!253382 () Bool)

(assert (= result!253382 result!253356))

(assert (=> d!1066037 t!294496))

(declare-fun t!294498 () Bool)

(declare-fun tb!207963 () Bool)

(assert (=> (and b!3624337 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294498) tb!207963))

(declare-fun result!253384 () Bool)

(assert (= result!253384 result!253326))

(assert (=> d!1065941 t!294498))

(assert (=> d!1065421 t!294494))

(declare-fun b_and!265251 () Bool)

(declare-fun tp!1106721 () Bool)

(assert (=> b!3624337 (= tp!1106721 (and (=> t!294492 result!253378) (=> t!294496 result!253382) (=> t!294498 result!253384) (=> t!294494 result!253380) b_and!265251))))

(declare-fun b_free!94559 () Bool)

(declare-fun b_next!95263 () Bool)

(assert (=> b!3624337 (= b_free!94559 (not b_next!95263))))

(declare-fun t!294500 () Bool)

(declare-fun tb!207965 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294500) tb!207965))

(declare-fun result!253386 () Bool)

(assert (= result!253386 result!253172))

(assert (=> d!1065451 t!294500))

(declare-fun tb!207967 () Bool)

(declare-fun t!294502 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252326)))))) t!294502) tb!207967))

(declare-fun result!253388 () Bool)

(assert (= result!253388 result!253336))

(assert (=> d!1065981 t!294502))

(declare-fun tb!207969 () Bool)

(declare-fun t!294504 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077))))) t!294504) tb!207969))

(declare-fun result!253390 () Bool)

(assert (= result!253390 result!253190))

(assert (=> d!1065495 t!294504))

(declare-fun tb!207971 () Bool)

(declare-fun t!294506 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 lt!1252303)))) t!294506) tb!207971))

(declare-fun result!253392 () Bool)

(assert (= result!253392 result!253346))

(assert (=> d!1066009 t!294506))

(declare-fun tb!207973 () Bool)

(declare-fun t!294508 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 token!511)))) t!294508) tb!207973))

(declare-fun result!253394 () Bool)

(assert (= result!253394 result!253182))

(assert (=> b!3622686 t!294508))

(declare-fun tb!207975 () Bool)

(declare-fun t!294510 () Bool)

(assert (=> (and b!3624337 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 (get!12450 lt!1252235)))))) t!294510) tb!207975))

(declare-fun result!253396 () Bool)

(assert (= result!253396 result!253366))

(assert (=> d!1066063 t!294510))

(assert (=> d!1065565 t!294508))

(declare-fun b_and!265253 () Bool)

(declare-fun tp!1106722 () Bool)

(assert (=> b!3624337 (= tp!1106722 (and (=> t!294502 result!253388) (=> t!294508 result!253394) (=> t!294506 result!253392) (=> t!294510 result!253396) (=> t!294504 result!253390) (=> t!294500 result!253386) b_and!265253))))

(declare-fun e!2243340 () Bool)

(assert (=> b!3624337 (= e!2243340 (and tp!1106721 tp!1106722))))

(declare-fun b!3624336 () Bool)

(declare-fun e!2243338 () Bool)

(declare-fun tp!1106719 () Bool)

(assert (=> b!3624336 (= e!2243338 (and tp!1106719 (inv!51560 (tag!6404 (h!43587 (t!294262 (t!294262 rules!3307))))) (inv!51563 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) e!2243340))))

(declare-fun b!3624335 () Bool)

(declare-fun e!2243341 () Bool)

(declare-fun tp!1106720 () Bool)

(assert (=> b!3624335 (= e!2243341 (and e!2243338 tp!1106720))))

(assert (=> b!3623044 (= tp!1106531 e!2243341)))

(assert (= b!3624336 b!3624337))

(assert (= b!3624335 b!3624336))

(assert (= (and b!3623044 ((_ is Cons!38167) (t!294262 (t!294262 rules!3307)))) b!3624335))

(declare-fun m!4124781 () Bool)

(assert (=> b!3624336 m!4124781))

(declare-fun m!4124783 () Bool)

(assert (=> b!3624336 m!4124783))

(declare-fun b!3624338 () Bool)

(declare-fun e!2243342 () Bool)

(declare-fun tp!1106723 () Bool)

(assert (=> b!3624338 (= e!2243342 (and tp_is_empty!17969 tp!1106723))))

(assert (=> b!3623059 (= tp!1106546 e!2243342)))

(assert (= (and b!3623059 ((_ is Cons!38166) (t!294261 (t!294261 suffix!1395)))) b!3624338))

(declare-fun tp!1106725 () Bool)

(declare-fun tp!1106726 () Bool)

(declare-fun b!3624339 () Bool)

(declare-fun e!2243343 () Bool)

(assert (=> b!3624339 (= e!2243343 (and (inv!51567 (left!29795 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))) tp!1106725 (inv!51567 (right!30125 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))) tp!1106726))))

(declare-fun b!3624341 () Bool)

(declare-fun e!2243344 () Bool)

(declare-fun tp!1106724 () Bool)

(assert (=> b!3624341 (= e!2243344 tp!1106724)))

(declare-fun b!3624340 () Bool)

(assert (=> b!3624340 (= e!2243343 (and (inv!51574 (xs!14841 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))) e!2243344))))

(assert (=> b!3622649 (= tp!1106456 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071)))) e!2243343))))

(assert (= (and b!3622649 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))) b!3624339))

(assert (= b!3624340 b!3624341))

(assert (= (and b!3622649 ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))))) b!3624340))

(declare-fun m!4124785 () Bool)

(assert (=> b!3624339 m!4124785))

(declare-fun m!4124787 () Bool)

(assert (=> b!3624339 m!4124787))

(declare-fun m!4124789 () Bool)

(assert (=> b!3624340 m!4124789))

(assert (=> b!3622649 m!4122573))

(declare-fun b!3624342 () Bool)

(declare-fun e!2243345 () Bool)

(declare-fun tp!1106729 () Bool)

(declare-fun tp!1106728 () Bool)

(assert (=> b!3624342 (= e!2243345 (and (inv!51567 (left!29795 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))) tp!1106728 (inv!51567 (right!30125 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))) tp!1106729))))

(declare-fun b!3624344 () Bool)

(declare-fun e!2243346 () Bool)

(declare-fun tp!1106727 () Bool)

(assert (=> b!3624344 (= e!2243346 tp!1106727)))

(declare-fun b!3624343 () Bool)

(assert (=> b!3624343 (= e!2243345 (and (inv!51574 (xs!14841 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))) e!2243346))))

(assert (=> b!3622759 (= tp!1106458 (and (inv!51567 (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077))))) e!2243345))))

(assert (= (and b!3622759 ((_ is Node!11639) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))) b!3624342))

(assert (= b!3624343 b!3624344))

(assert (= (and b!3622759 ((_ is Leaf!18092) (c!626793 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (value!182454 (_1!22152 lt!1252077)))))) b!3624343))

(declare-fun m!4124791 () Bool)

(assert (=> b!3624342 m!4124791))

(declare-fun m!4124793 () Bool)

(assert (=> b!3624342 m!4124793))

(declare-fun m!4124795 () Bool)

(assert (=> b!3624343 m!4124795))

(assert (=> b!3622759 m!4122703))

(declare-fun b!3624345 () Bool)

(declare-fun e!2243347 () Bool)

(declare-fun tp!1106730 () Bool)

(assert (=> b!3624345 (= e!2243347 (and tp_is_empty!17969 tp!1106730))))

(assert (=> b!3623064 (= tp!1106552 e!2243347)))

(assert (= (and b!3623064 ((_ is Cons!38166) (t!294261 (originalCharacters!6398 token!511)))) b!3624345))

(declare-fun b!3624347 () Bool)

(declare-fun e!2243348 () Bool)

(declare-fun tp!1106735 () Bool)

(declare-fun tp!1106731 () Bool)

(assert (=> b!3624347 (= e!2243348 (and tp!1106735 tp!1106731))))

(declare-fun b!3624346 () Bool)

(assert (=> b!3624346 (= e!2243348 tp_is_empty!17969)))

(declare-fun b!3624348 () Bool)

(declare-fun tp!1106733 () Bool)

(assert (=> b!3624348 (= e!2243348 tp!1106733)))

(assert (=> b!3623045 (= tp!1106530 e!2243348)))

(declare-fun b!3624349 () Bool)

(declare-fun tp!1106732 () Bool)

(declare-fun tp!1106734 () Bool)

(assert (=> b!3624349 (= e!2243348 (and tp!1106732 tp!1106734))))

(assert (= (and b!3623045 ((_ is ElementMatch!10443) (regex!5684 (h!43587 (t!294262 rules!3307))))) b!3624346))

(assert (= (and b!3623045 ((_ is Concat!16358) (regex!5684 (h!43587 (t!294262 rules!3307))))) b!3624347))

(assert (= (and b!3623045 ((_ is Star!10443) (regex!5684 (h!43587 (t!294262 rules!3307))))) b!3624348))

(assert (= (and b!3623045 ((_ is Union!10443) (regex!5684 (h!43587 (t!294262 rules!3307))))) b!3624349))

(declare-fun b!3624351 () Bool)

(declare-fun e!2243349 () Bool)

(declare-fun tp!1106740 () Bool)

(declare-fun tp!1106736 () Bool)

(assert (=> b!3624351 (= e!2243349 (and tp!1106740 tp!1106736))))

(declare-fun b!3624350 () Bool)

(assert (=> b!3624350 (= e!2243349 tp_is_empty!17969)))

(declare-fun b!3624352 () Bool)

(declare-fun tp!1106738 () Bool)

(assert (=> b!3624352 (= e!2243349 tp!1106738)))

(assert (=> b!3623052 (= tp!1106543 e!2243349)))

(declare-fun b!3624353 () Bool)

(declare-fun tp!1106737 () Bool)

(declare-fun tp!1106739 () Bool)

(assert (=> b!3624353 (= e!2243349 (and tp!1106737 tp!1106739))))

(assert (= (and b!3623052 ((_ is ElementMatch!10443) (regOne!21398 (regex!5684 (rule!8446 token!511))))) b!3624350))

(assert (= (and b!3623052 ((_ is Concat!16358) (regOne!21398 (regex!5684 (rule!8446 token!511))))) b!3624351))

(assert (= (and b!3623052 ((_ is Star!10443) (regOne!21398 (regex!5684 (rule!8446 token!511))))) b!3624352))

(assert (= (and b!3623052 ((_ is Union!10443) (regOne!21398 (regex!5684 (rule!8446 token!511))))) b!3624353))

(declare-fun b!3624355 () Bool)

(declare-fun e!2243350 () Bool)

(declare-fun tp!1106745 () Bool)

(declare-fun tp!1106741 () Bool)

(assert (=> b!3624355 (= e!2243350 (and tp!1106745 tp!1106741))))

(declare-fun b!3624354 () Bool)

(assert (=> b!3624354 (= e!2243350 tp_is_empty!17969)))

(declare-fun b!3624356 () Bool)

(declare-fun tp!1106743 () Bool)

(assert (=> b!3624356 (= e!2243350 tp!1106743)))

(assert (=> b!3623052 (= tp!1106539 e!2243350)))

(declare-fun b!3624357 () Bool)

(declare-fun tp!1106742 () Bool)

(declare-fun tp!1106744 () Bool)

(assert (=> b!3624357 (= e!2243350 (and tp!1106742 tp!1106744))))

(assert (= (and b!3623052 ((_ is ElementMatch!10443) (regTwo!21398 (regex!5684 (rule!8446 token!511))))) b!3624354))

(assert (= (and b!3623052 ((_ is Concat!16358) (regTwo!21398 (regex!5684 (rule!8446 token!511))))) b!3624355))

(assert (= (and b!3623052 ((_ is Star!10443) (regTwo!21398 (regex!5684 (rule!8446 token!511))))) b!3624356))

(assert (= (and b!3623052 ((_ is Union!10443) (regTwo!21398 (regex!5684 (rule!8446 token!511))))) b!3624357))

(declare-fun b!3624359 () Bool)

(declare-fun e!2243351 () Bool)

(declare-fun tp!1106750 () Bool)

(declare-fun tp!1106746 () Bool)

(assert (=> b!3624359 (= e!2243351 (and tp!1106750 tp!1106746))))

(declare-fun b!3624358 () Bool)

(assert (=> b!3624358 (= e!2243351 tp_is_empty!17969)))

(declare-fun b!3624360 () Bool)

(declare-fun tp!1106748 () Bool)

(assert (=> b!3624360 (= e!2243351 tp!1106748)))

(assert (=> b!3623048 (= tp!1106538 e!2243351)))

(declare-fun b!3624361 () Bool)

(declare-fun tp!1106747 () Bool)

(declare-fun tp!1106749 () Bool)

(assert (=> b!3624361 (= e!2243351 (and tp!1106747 tp!1106749))))

(assert (= (and b!3623048 ((_ is ElementMatch!10443) (regOne!21398 (regex!5684 (h!43587 rules!3307))))) b!3624358))

(assert (= (and b!3623048 ((_ is Concat!16358) (regOne!21398 (regex!5684 (h!43587 rules!3307))))) b!3624359))

(assert (= (and b!3623048 ((_ is Star!10443) (regOne!21398 (regex!5684 (h!43587 rules!3307))))) b!3624360))

(assert (= (and b!3623048 ((_ is Union!10443) (regOne!21398 (regex!5684 (h!43587 rules!3307))))) b!3624361))

(declare-fun b!3624363 () Bool)

(declare-fun e!2243352 () Bool)

(declare-fun tp!1106755 () Bool)

(declare-fun tp!1106751 () Bool)

(assert (=> b!3624363 (= e!2243352 (and tp!1106755 tp!1106751))))

(declare-fun b!3624362 () Bool)

(assert (=> b!3624362 (= e!2243352 tp_is_empty!17969)))

(declare-fun b!3624364 () Bool)

(declare-fun tp!1106753 () Bool)

(assert (=> b!3624364 (= e!2243352 tp!1106753)))

(assert (=> b!3623048 (= tp!1106534 e!2243352)))

(declare-fun b!3624365 () Bool)

(declare-fun tp!1106752 () Bool)

(declare-fun tp!1106754 () Bool)

(assert (=> b!3624365 (= e!2243352 (and tp!1106752 tp!1106754))))

(assert (= (and b!3623048 ((_ is ElementMatch!10443) (regTwo!21398 (regex!5684 (h!43587 rules!3307))))) b!3624362))

(assert (= (and b!3623048 ((_ is Concat!16358) (regTwo!21398 (regex!5684 (h!43587 rules!3307))))) b!3624363))

(assert (= (and b!3623048 ((_ is Star!10443) (regTwo!21398 (regex!5684 (h!43587 rules!3307))))) b!3624364))

(assert (= (and b!3623048 ((_ is Union!10443) (regTwo!21398 (regex!5684 (h!43587 rules!3307))))) b!3624365))

(declare-fun b!3624367 () Bool)

(declare-fun e!2243353 () Bool)

(declare-fun tp!1106760 () Bool)

(declare-fun tp!1106756 () Bool)

(assert (=> b!3624367 (= e!2243353 (and tp!1106760 tp!1106756))))

(declare-fun b!3624366 () Bool)

(assert (=> b!3624366 (= e!2243353 tp_is_empty!17969)))

(declare-fun b!3624368 () Bool)

(declare-fun tp!1106758 () Bool)

(assert (=> b!3624368 (= e!2243353 tp!1106758)))

(assert (=> b!3623050 (= tp!1106535 e!2243353)))

(declare-fun b!3624369 () Bool)

(declare-fun tp!1106757 () Bool)

(declare-fun tp!1106759 () Bool)

(assert (=> b!3624369 (= e!2243353 (and tp!1106757 tp!1106759))))

(assert (= (and b!3623050 ((_ is ElementMatch!10443) (regOne!21399 (regex!5684 (h!43587 rules!3307))))) b!3624366))

(assert (= (and b!3623050 ((_ is Concat!16358) (regOne!21399 (regex!5684 (h!43587 rules!3307))))) b!3624367))

(assert (= (and b!3623050 ((_ is Star!10443) (regOne!21399 (regex!5684 (h!43587 rules!3307))))) b!3624368))

(assert (= (and b!3623050 ((_ is Union!10443) (regOne!21399 (regex!5684 (h!43587 rules!3307))))) b!3624369))

(declare-fun b!3624371 () Bool)

(declare-fun e!2243354 () Bool)

(declare-fun tp!1106765 () Bool)

(declare-fun tp!1106761 () Bool)

(assert (=> b!3624371 (= e!2243354 (and tp!1106765 tp!1106761))))

(declare-fun b!3624370 () Bool)

(assert (=> b!3624370 (= e!2243354 tp_is_empty!17969)))

(declare-fun b!3624372 () Bool)

(declare-fun tp!1106763 () Bool)

(assert (=> b!3624372 (= e!2243354 tp!1106763)))

(assert (=> b!3623050 (= tp!1106537 e!2243354)))

(declare-fun b!3624373 () Bool)

(declare-fun tp!1106762 () Bool)

(declare-fun tp!1106764 () Bool)

(assert (=> b!3624373 (= e!2243354 (and tp!1106762 tp!1106764))))

(assert (= (and b!3623050 ((_ is ElementMatch!10443) (regTwo!21399 (regex!5684 (h!43587 rules!3307))))) b!3624370))

(assert (= (and b!3623050 ((_ is Concat!16358) (regTwo!21399 (regex!5684 (h!43587 rules!3307))))) b!3624371))

(assert (= (and b!3623050 ((_ is Star!10443) (regTwo!21399 (regex!5684 (h!43587 rules!3307))))) b!3624372))

(assert (= (and b!3623050 ((_ is Union!10443) (regTwo!21399 (regex!5684 (h!43587 rules!3307))))) b!3624373))

(declare-fun b!3624375 () Bool)

(declare-fun e!2243355 () Bool)

(declare-fun tp!1106770 () Bool)

(declare-fun tp!1106766 () Bool)

(assert (=> b!3624375 (= e!2243355 (and tp!1106770 tp!1106766))))

(declare-fun b!3624374 () Bool)

(assert (=> b!3624374 (= e!2243355 tp_is_empty!17969)))

(declare-fun b!3624376 () Bool)

(declare-fun tp!1106768 () Bool)

(assert (=> b!3624376 (= e!2243355 tp!1106768)))

(assert (=> b!3623035 (= tp!1106518 e!2243355)))

(declare-fun b!3624377 () Bool)

(declare-fun tp!1106767 () Bool)

(declare-fun tp!1106769 () Bool)

(assert (=> b!3624377 (= e!2243355 (and tp!1106767 tp!1106769))))

(assert (= (and b!3623035 ((_ is ElementMatch!10443) (regOne!21399 (regex!5684 anOtherTypeRule!33)))) b!3624374))

(assert (= (and b!3623035 ((_ is Concat!16358) (regOne!21399 (regex!5684 anOtherTypeRule!33)))) b!3624375))

(assert (= (and b!3623035 ((_ is Star!10443) (regOne!21399 (regex!5684 anOtherTypeRule!33)))) b!3624376))

(assert (= (and b!3623035 ((_ is Union!10443) (regOne!21399 (regex!5684 anOtherTypeRule!33)))) b!3624377))

(declare-fun b!3624379 () Bool)

(declare-fun e!2243356 () Bool)

(declare-fun tp!1106775 () Bool)

(declare-fun tp!1106771 () Bool)

(assert (=> b!3624379 (= e!2243356 (and tp!1106775 tp!1106771))))

(declare-fun b!3624378 () Bool)

(assert (=> b!3624378 (= e!2243356 tp_is_empty!17969)))

(declare-fun b!3624380 () Bool)

(declare-fun tp!1106773 () Bool)

(assert (=> b!3624380 (= e!2243356 tp!1106773)))

(assert (=> b!3623035 (= tp!1106520 e!2243356)))

(declare-fun b!3624381 () Bool)

(declare-fun tp!1106772 () Bool)

(declare-fun tp!1106774 () Bool)

(assert (=> b!3624381 (= e!2243356 (and tp!1106772 tp!1106774))))

(assert (= (and b!3623035 ((_ is ElementMatch!10443) (regTwo!21399 (regex!5684 anOtherTypeRule!33)))) b!3624378))

(assert (= (and b!3623035 ((_ is Concat!16358) (regTwo!21399 (regex!5684 anOtherTypeRule!33)))) b!3624379))

(assert (= (and b!3623035 ((_ is Star!10443) (regTwo!21399 (regex!5684 anOtherTypeRule!33)))) b!3624380))

(assert (= (and b!3623035 ((_ is Union!10443) (regTwo!21399 (regex!5684 anOtherTypeRule!33)))) b!3624381))

(declare-fun b!3624383 () Bool)

(declare-fun e!2243357 () Bool)

(declare-fun tp!1106780 () Bool)

(declare-fun tp!1106776 () Bool)

(assert (=> b!3624383 (= e!2243357 (and tp!1106780 tp!1106776))))

(declare-fun b!3624382 () Bool)

(assert (=> b!3624382 (= e!2243357 tp_is_empty!17969)))

(declare-fun b!3624384 () Bool)

(declare-fun tp!1106778 () Bool)

(assert (=> b!3624384 (= e!2243357 tp!1106778)))

(assert (=> b!3623053 (= tp!1106541 e!2243357)))

(declare-fun b!3624385 () Bool)

(declare-fun tp!1106777 () Bool)

(declare-fun tp!1106779 () Bool)

(assert (=> b!3624385 (= e!2243357 (and tp!1106777 tp!1106779))))

(assert (= (and b!3623053 ((_ is ElementMatch!10443) (reg!10772 (regex!5684 (rule!8446 token!511))))) b!3624382))

(assert (= (and b!3623053 ((_ is Concat!16358) (reg!10772 (regex!5684 (rule!8446 token!511))))) b!3624383))

(assert (= (and b!3623053 ((_ is Star!10443) (reg!10772 (regex!5684 (rule!8446 token!511))))) b!3624384))

(assert (= (and b!3623053 ((_ is Union!10443) (reg!10772 (regex!5684 (rule!8446 token!511))))) b!3624385))

(declare-fun b!3624387 () Bool)

(declare-fun e!2243358 () Bool)

(declare-fun tp!1106785 () Bool)

(declare-fun tp!1106781 () Bool)

(assert (=> b!3624387 (= e!2243358 (and tp!1106785 tp!1106781))))

(declare-fun b!3624386 () Bool)

(assert (=> b!3624386 (= e!2243358 tp_is_empty!17969)))

(declare-fun b!3624388 () Bool)

(declare-fun tp!1106783 () Bool)

(assert (=> b!3624388 (= e!2243358 tp!1106783)))

(assert (=> b!3623049 (= tp!1106536 e!2243358)))

(declare-fun b!3624389 () Bool)

(declare-fun tp!1106782 () Bool)

(declare-fun tp!1106784 () Bool)

(assert (=> b!3624389 (= e!2243358 (and tp!1106782 tp!1106784))))

(assert (= (and b!3623049 ((_ is ElementMatch!10443) (reg!10772 (regex!5684 (h!43587 rules!3307))))) b!3624386))

(assert (= (and b!3623049 ((_ is Concat!16358) (reg!10772 (regex!5684 (h!43587 rules!3307))))) b!3624387))

(assert (= (and b!3623049 ((_ is Star!10443) (reg!10772 (regex!5684 (h!43587 rules!3307))))) b!3624388))

(assert (= (and b!3623049 ((_ is Union!10443) (reg!10772 (regex!5684 (h!43587 rules!3307))))) b!3624389))

(declare-fun b!3624391 () Bool)

(declare-fun e!2243359 () Bool)

(declare-fun tp!1106790 () Bool)

(declare-fun tp!1106786 () Bool)

(assert (=> b!3624391 (= e!2243359 (and tp!1106790 tp!1106786))))

(declare-fun b!3624390 () Bool)

(assert (=> b!3624390 (= e!2243359 tp_is_empty!17969)))

(declare-fun b!3624392 () Bool)

(declare-fun tp!1106788 () Bool)

(assert (=> b!3624392 (= e!2243359 tp!1106788)))

(assert (=> b!3623033 (= tp!1106521 e!2243359)))

(declare-fun b!3624393 () Bool)

(declare-fun tp!1106787 () Bool)

(declare-fun tp!1106789 () Bool)

(assert (=> b!3624393 (= e!2243359 (and tp!1106787 tp!1106789))))

(assert (= (and b!3623033 ((_ is ElementMatch!10443) (regOne!21398 (regex!5684 anOtherTypeRule!33)))) b!3624390))

(assert (= (and b!3623033 ((_ is Concat!16358) (regOne!21398 (regex!5684 anOtherTypeRule!33)))) b!3624391))

(assert (= (and b!3623033 ((_ is Star!10443) (regOne!21398 (regex!5684 anOtherTypeRule!33)))) b!3624392))

(assert (= (and b!3623033 ((_ is Union!10443) (regOne!21398 (regex!5684 anOtherTypeRule!33)))) b!3624393))

(declare-fun b!3624395 () Bool)

(declare-fun e!2243360 () Bool)

(declare-fun tp!1106795 () Bool)

(declare-fun tp!1106791 () Bool)

(assert (=> b!3624395 (= e!2243360 (and tp!1106795 tp!1106791))))

(declare-fun b!3624394 () Bool)

(assert (=> b!3624394 (= e!2243360 tp_is_empty!17969)))

(declare-fun b!3624396 () Bool)

(declare-fun tp!1106793 () Bool)

(assert (=> b!3624396 (= e!2243360 tp!1106793)))

(assert (=> b!3623033 (= tp!1106517 e!2243360)))

(declare-fun b!3624397 () Bool)

(declare-fun tp!1106792 () Bool)

(declare-fun tp!1106794 () Bool)

(assert (=> b!3624397 (= e!2243360 (and tp!1106792 tp!1106794))))

(assert (= (and b!3623033 ((_ is ElementMatch!10443) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) b!3624394))

(assert (= (and b!3623033 ((_ is Concat!16358) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) b!3624395))

(assert (= (and b!3623033 ((_ is Star!10443) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) b!3624396))

(assert (= (and b!3623033 ((_ is Union!10443) (regTwo!21398 (regex!5684 anOtherTypeRule!33)))) b!3624397))

(declare-fun b!3624399 () Bool)

(declare-fun e!2243361 () Bool)

(declare-fun tp!1106800 () Bool)

(declare-fun tp!1106796 () Bool)

(assert (=> b!3624399 (= e!2243361 (and tp!1106800 tp!1106796))))

(declare-fun b!3624398 () Bool)

(assert (=> b!3624398 (= e!2243361 tp_is_empty!17969)))

(declare-fun b!3624400 () Bool)

(declare-fun tp!1106798 () Bool)

(assert (=> b!3624400 (= e!2243361 tp!1106798)))

(assert (=> b!3623034 (= tp!1106519 e!2243361)))

(declare-fun b!3624401 () Bool)

(declare-fun tp!1106797 () Bool)

(declare-fun tp!1106799 () Bool)

(assert (=> b!3624401 (= e!2243361 (and tp!1106797 tp!1106799))))

(assert (= (and b!3623034 ((_ is ElementMatch!10443) (reg!10772 (regex!5684 anOtherTypeRule!33)))) b!3624398))

(assert (= (and b!3623034 ((_ is Concat!16358) (reg!10772 (regex!5684 anOtherTypeRule!33)))) b!3624399))

(assert (= (and b!3623034 ((_ is Star!10443) (reg!10772 (regex!5684 anOtherTypeRule!33)))) b!3624400))

(assert (= (and b!3623034 ((_ is Union!10443) (reg!10772 (regex!5684 anOtherTypeRule!33)))) b!3624401))

(declare-fun b!3624403 () Bool)

(declare-fun e!2243362 () Bool)

(declare-fun tp!1106805 () Bool)

(declare-fun tp!1106801 () Bool)

(assert (=> b!3624403 (= e!2243362 (and tp!1106805 tp!1106801))))

(declare-fun b!3624402 () Bool)

(assert (=> b!3624402 (= e!2243362 tp_is_empty!17969)))

(declare-fun b!3624404 () Bool)

(declare-fun tp!1106803 () Bool)

(assert (=> b!3624404 (= e!2243362 tp!1106803)))

(assert (=> b!3623054 (= tp!1106540 e!2243362)))

(declare-fun b!3624405 () Bool)

(declare-fun tp!1106802 () Bool)

(declare-fun tp!1106804 () Bool)

(assert (=> b!3624405 (= e!2243362 (and tp!1106802 tp!1106804))))

(assert (= (and b!3623054 ((_ is ElementMatch!10443) (regOne!21399 (regex!5684 (rule!8446 token!511))))) b!3624402))

(assert (= (and b!3623054 ((_ is Concat!16358) (regOne!21399 (regex!5684 (rule!8446 token!511))))) b!3624403))

(assert (= (and b!3623054 ((_ is Star!10443) (regOne!21399 (regex!5684 (rule!8446 token!511))))) b!3624404))

(assert (= (and b!3623054 ((_ is Union!10443) (regOne!21399 (regex!5684 (rule!8446 token!511))))) b!3624405))

(declare-fun b!3624407 () Bool)

(declare-fun e!2243363 () Bool)

(declare-fun tp!1106810 () Bool)

(declare-fun tp!1106806 () Bool)

(assert (=> b!3624407 (= e!2243363 (and tp!1106810 tp!1106806))))

(declare-fun b!3624406 () Bool)

(assert (=> b!3624406 (= e!2243363 tp_is_empty!17969)))

(declare-fun b!3624408 () Bool)

(declare-fun tp!1106808 () Bool)

(assert (=> b!3624408 (= e!2243363 tp!1106808)))

(assert (=> b!3623054 (= tp!1106542 e!2243363)))

(declare-fun b!3624409 () Bool)

(declare-fun tp!1106807 () Bool)

(declare-fun tp!1106809 () Bool)

(assert (=> b!3624409 (= e!2243363 (and tp!1106807 tp!1106809))))

(assert (= (and b!3623054 ((_ is ElementMatch!10443) (regTwo!21399 (regex!5684 (rule!8446 token!511))))) b!3624406))

(assert (= (and b!3623054 ((_ is Concat!16358) (regTwo!21399 (regex!5684 (rule!8446 token!511))))) b!3624407))

(assert (= (and b!3623054 ((_ is Star!10443) (regTwo!21399 (regex!5684 (rule!8446 token!511))))) b!3624408))

(assert (= (and b!3623054 ((_ is Union!10443) (regTwo!21399 (regex!5684 (rule!8446 token!511))))) b!3624409))

(declare-fun b_lambda!107211 () Bool)

(assert (= b_lambda!107129 (or (and b!3622397 b_free!94535 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622375 b_free!94531 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94551 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94559 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94543 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94539 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107211)))

(declare-fun b_lambda!107213 () Bool)

(assert (= b_lambda!107207 (or d!1065451 b_lambda!107213)))

(declare-fun bs!571384 () Bool)

(declare-fun d!1066283 () Bool)

(assert (= bs!571384 (and d!1066283 d!1065451)))

(assert (=> bs!571384 (= (dynLambda!16522 lambda!124137 lt!1252071) (= (list!14088 (dynLambda!16519 (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071))) (list!14088 lt!1252071)))))

(declare-fun b_lambda!107227 () Bool)

(assert (=> (not b_lambda!107227) (not bs!571384)))

(assert (=> bs!571384 t!294298))

(declare-fun b_and!265255 () Bool)

(assert (= b_and!265241 (and (=> t!294298 result!253176) b_and!265255)))

(assert (=> bs!571384 t!294300))

(declare-fun b_and!265257 () Bool)

(assert (= b_and!265249 (and (=> t!294300 result!253178) b_and!265257)))

(assert (=> bs!571384 t!294296))

(declare-fun b_and!265259 () Bool)

(assert (= b_and!265243 (and (=> t!294296 result!253172) b_and!265259)))

(assert (=> bs!571384 t!294500))

(declare-fun b_and!265261 () Bool)

(assert (= b_and!265253 (and (=> t!294500 result!253386) b_and!265261)))

(assert (=> bs!571384 t!294302))

(declare-fun b_and!265263 () Bool)

(assert (= b_and!265247 (and (=> t!294302 result!253180) b_and!265263)))

(assert (=> bs!571384 t!294360))

(declare-fun b_and!265265 () Bool)

(assert (= b_and!265245 (and (=> t!294360 result!253246) b_and!265265)))

(declare-fun b_lambda!107229 () Bool)

(assert (=> (not b_lambda!107229) (not bs!571384)))

(assert (=> bs!571384 t!294278))

(declare-fun b_and!265267 () Bool)

(assert (= b_and!265233 (and (=> t!294278 result!253152) b_and!265267)))

(assert (=> bs!571384 t!294276))

(declare-fun b_and!265269 () Bool)

(assert (= b_and!265239 (and (=> t!294276 result!253150) b_and!265269)))

(assert (=> bs!571384 t!294274))

(declare-fun b_and!265271 () Bool)

(assert (= b_and!265231 (and (=> t!294274 result!253148) b_and!265271)))

(assert (=> bs!571384 t!294494))

(declare-fun b_and!265273 () Bool)

(assert (= b_and!265251 (and (=> t!294494 result!253380) b_and!265273)))

(assert (=> bs!571384 t!294356))

(declare-fun b_and!265275 () Bool)

(assert (= b_and!265235 (and (=> t!294356 result!253242) b_and!265275)))

(assert (=> bs!571384 t!294272))

(declare-fun b_and!265277 () Bool)

(assert (= b_and!265237 (and (=> t!294272 result!253144) b_and!265277)))

(assert (=> bs!571384 m!4122449))

(assert (=> bs!571384 m!4122577))

(assert (=> bs!571384 m!4122581))

(assert (=> bs!571384 m!4122449))

(assert (=> bs!571384 m!4122577))

(assert (=> bs!571384 m!4122269))

(assert (=> d!1066179 d!1066283))

(declare-fun b_lambda!107215 () Bool)

(assert (= b_lambda!107127 (or (and b!3622375 b_free!94529 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94557 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94537 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622397 b_free!94533 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94541 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94549 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107215)))

(declare-fun b_lambda!107217 () Bool)

(assert (= b_lambda!107135 (or (and b!3622397 b_free!94535 (= (toChars!7827 (transformation!5684 anOtherTypeRule!33)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622375 b_free!94531 (= (toChars!7827 (transformation!5684 (h!43587 rules!3307))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94551 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94559 (= (toChars!7827 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94543 (= (toChars!7827 (transformation!5684 (rule!8446 token!511))) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94539 (= (toChars!7827 (transformation!5684 rule!403)) (toChars!7827 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107217)))

(declare-fun b_lambda!107219 () Bool)

(assert (= b_lambda!107125 (or (and b!3622375 b_free!94529 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94557 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94537 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622397 b_free!94533 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94541 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94549 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107219)))

(declare-fun b_lambda!107221 () Bool)

(assert (= b_lambda!107209 (or d!1065421 b_lambda!107221)))

(declare-fun bs!571385 () Bool)

(declare-fun d!1066285 () Bool)

(assert (= bs!571385 (and d!1066285 d!1065421)))

(declare-fun res!1466962 () Bool)

(declare-fun e!2243364 () Bool)

(assert (=> bs!571385 (=> res!1466962 e!2243364)))

(assert (=> bs!571385 (= res!1466962 (not (= (list!14088 lt!1252071) (list!14088 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))))))))

(assert (=> bs!571385 (= (dynLambda!16523 lambda!124134 lt!1252071 (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077)))) e!2243364)))

(declare-fun b!3624410 () Bool)

(assert (=> b!3624410 (= e!2243364 (= (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) lt!1252071) (dynLambda!16510 (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))) (seqFromList!4233 (originalCharacters!6398 (_1!22152 lt!1252077))))))))

(assert (= (and bs!571385 (not res!1466962)) b!3624410))

(declare-fun b_lambda!107231 () Bool)

(assert (=> (not b_lambda!107231) (not b!3624410)))

(assert (=> b!3624410 t!294278))

(declare-fun b_and!265279 () Bool)

(assert (= b_and!265267 (and (=> t!294278 result!253152) b_and!265279)))

(assert (=> b!3624410 t!294272))

(declare-fun b_and!265281 () Bool)

(assert (= b_and!265277 (and (=> t!294272 result!253144) b_and!265281)))

(assert (=> b!3624410 t!294494))

(declare-fun b_and!265283 () Bool)

(assert (= b_and!265273 (and (=> t!294494 result!253380) b_and!265283)))

(assert (=> b!3624410 t!294356))

(declare-fun b_and!265285 () Bool)

(assert (= b_and!265275 (and (=> t!294356 result!253242) b_and!265285)))

(assert (=> b!3624410 t!294276))

(declare-fun b_and!265287 () Bool)

(assert (= b_and!265269 (and (=> t!294276 result!253150) b_and!265287)))

(assert (=> b!3624410 t!294274))

(declare-fun b_and!265289 () Bool)

(assert (= b_and!265271 (and (=> t!294274 result!253148) b_and!265289)))

(declare-fun b_lambda!107233 () Bool)

(assert (=> (not b_lambda!107233) (not b!3624410)))

(assert (=> b!3624410 t!294294))

(declare-fun b_and!265291 () Bool)

(assert (= b_and!265279 (and (=> t!294294 result!253170) b_and!265291)))

(assert (=> b!3624410 t!294290))

(declare-fun b_and!265293 () Bool)

(assert (= b_and!265289 (and (=> t!294290 result!253166) b_and!265293)))

(assert (=> b!3624410 t!294288))

(declare-fun b_and!265295 () Bool)

(assert (= b_and!265281 (and (=> t!294288 result!253164) b_and!265295)))

(assert (=> b!3624410 t!294492))

(declare-fun b_and!265297 () Bool)

(assert (= b_and!265283 (and (=> t!294492 result!253378) b_and!265297)))

(assert (=> b!3624410 t!294358))

(declare-fun b_and!265299 () Bool)

(assert (= b_and!265285 (and (=> t!294358 result!253244) b_and!265299)))

(assert (=> b!3624410 t!294292))

(declare-fun b_and!265301 () Bool)

(assert (= b_and!265287 (and (=> t!294292 result!253168) b_and!265301)))

(assert (=> bs!571385 m!4122269))

(assert (=> bs!571385 m!4122207))

(assert (=> bs!571385 m!4122567))

(assert (=> b!3624410 m!4122449))

(assert (=> b!3624410 m!4122207))

(assert (=> b!3624410 m!4122571))

(assert (=> d!1066211 d!1066285))

(declare-fun b_lambda!107223 () Bool)

(assert (= b_lambda!107121 (or (and b!3622375 b_free!94529 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94557 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94537 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622397 b_free!94533 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94541 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94549 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107223)))

(declare-fun b_lambda!107225 () Bool)

(assert (= b_lambda!107131 (or (and b!3622375 b_free!94529 (= (toValue!7968 (transformation!5684 (h!43587 rules!3307))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3624337 b_free!94557 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 (t!294262 rules!3307))))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622381 b_free!94537 (= (toValue!7968 (transformation!5684 rule!403)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622397 b_free!94533 (= (toValue!7968 (transformation!5684 anOtherTypeRule!33)) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3622399 b_free!94541 (= (toValue!7968 (transformation!5684 (rule!8446 token!511))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) (and b!3623046 b_free!94549 (= (toValue!7968 (transformation!5684 (h!43587 (t!294262 rules!3307)))) (toValue!7968 (transformation!5684 (rule!8446 (_1!22152 lt!1252077)))))) b_lambda!107225)))

(check-sat (not b!3624238) (not d!1066171) (not b!3624187) (not b!3624397) (not b_lambda!107199) (not b!3624409) (not b!3624392) (not d!1066003) (not b!3623871) (not b!3624168) (not b!3624395) (not b!3624287) (not b_lambda!107155) (not b!3624103) (not b!3624368) (not b!3624012) (not d!1066043) (not d!1066139) (not bm!262208) (not d!1066115) (not b!3624081) (not b!3623904) (not d!1066027) (not bm!262215) (not b_lambda!107211) (not b!3624333) (not d!1066207) (not b!3624396) (not d!1066069) (not d!1066117) (not b!3624189) b_and!265255 (not b!3624364) (not d!1065979) (not b!3624318) (not b_lambda!107231) (not b!3624316) (not b_next!95239) (not bm!262165) (not bm!262224) (not b_next!95237) (not b!3624345) (not b!3624280) (not b!3624111) (not d!1066241) (not d!1066049) (not b!3624393) (not b!3623896) b_and!265259 (not d!1066001) (not b!3624209) (not b_lambda!107203) (not b!3623742) (not bm!262182) (not b_next!95263) (not d!1066131) (not b!3624351) (not b!3624271) (not d!1066279) (not bm!262170) (not b!3624344) (not b!3624348) (not b!3624073) (not b!3624040) (not b!3623901) (not d!1066101) (not b!3624407) (not d!1066177) (not b!3624097) (not b!3624078) (not d!1066019) (not b!3623760) (not tb!207947) (not d!1066123) (not b!3624371) (not d!1066095) (not b_lambda!107197) (not b!3624262) (not d!1066073) (not b!3623846) (not b!3624139) (not b!3623789) (not b!3624146) (not b!3624234) (not b!3623862) (not bm!262205) (not b!3624266) (not d!1066067) (not b!3624175) b_and!265261 (not d!1066093) (not b!3624399) (not b!3624227) (not d!1066185) tp_is_empty!17969 (not d!1066209) (not b!3624017) (not b!3624400) (not d!1066119) (not b!3623947) (not b!3624207) (not b!3623867) (not b!3624071) (not b!3623976) (not b!3623792) (not b!3624199) (not b!3624388) (not b!3624353) (not b!3624360) (not b!3623933) (not d!1066023) (not b!3624405) (not b_lambda!107157) (not b!3623877) (not b!3623761) (not b!3624140) (not b!3624373) (not d!1065953) (not b!3623872) (not b!3624301) (not b!3624256) (not d!1066205) b_and!265265 (not b!3623893) (not bm!262214) (not b!3624361) (not b!3624241) (not b!3624352) (not d!1066219) (not b!3624328) (not b!3624098) (not d!1066029) (not bm!262202) (not d!1066265) (not b!3624230) (not b!3624324) (not b!3623787) (not b!3624215) (not b!3623847) (not b!3624336) (not bm!262166) (not d!1066161) (not b!3622688) (not d!1066007) (not d!1066225) (not b!3623882) (not b!3623876) (not b!3624365) (not d!1066233) (not b!3624225) (not b!3623794) (not b!3623900) (not b!3624240) (not b!3623743) (not b!3624059) (not b!3624273) (not b!3624169) (not b!3624404) (not b!3624369) (not b!3624332) (not b!3623780) (not b!3624015) (not b!3623990) (not b!3624118) (not d!1066127) (not b_lambda!107205) (not b!3624391) (not b!3624376) (not b!3624274) (not b!3623790) (not d!1066039) (not b!3623870) b_and!265295 (not b!3624314) (not d!1066155) (not bm!262173) (not b!3624220) (not bm!262206) (not b!3624372) (not d!1066121) (not b_next!95243) (not b!3623865) (not b!3623937) (not b!3623763) (not b!3624379) (not b!3624093) (not b!3624347) (not b!3623946) (not b!3623866) (not b!3624208) (not b!3624387) (not d!1065943) (not bm!262169) (not b!3624124) (not b!3623927) (not b!3624329) (not b!3624214) (not bm!262219) (not b_lambda!107223) (not b!3623810) (not d!1066013) (not bm!262221) (not b!3624104) (not b!3623785) (not b_lambda!107213) (not d!1066273) (not b!3624196) (not tb!207917) (not b!3623873) (not b!3624058) (not b!3624171) (not b!3624204) (not b!3624401) (not bm!262207) (not b!3624356) (not b!3624228) (not b!3622759) (not d!1066199) (not b!3623826) (not b!3624082) (not b!3624408) (not tb!207907) (not b!3624121) (not b!3623918) (not bm!262223) (not b!3623827) (not b!3623899) (not b!3624341) (not d!1066175) (not b!3624367) (not b!3624403) (not b!3623859) (not b!3624330) (not b!3624237) (not d!1066235) (not b!3623821) (not b!3623851) (not b!3623926) (not tb!207927) (not b_lambda!107229) (not b!3623768) (not b!3624085) (not b!3624016) (not b!3623955) (not d!1065983) (not b!3623757) (not bm!262180) (not bm!262217) (not b!3624269) (not d!1066223) (not b!3624217) (not d!1066253) (not b!3624113) (not b!3624186) (not d!1066141) (not b!3624229) (not b!3624381) (not b!3623823) (not b!3624212) (not b!3624338) (not b!3624226) (not b!3624210) (not b_lambda!107233) (not b_next!95245) (not b!3624286) (not b_next!95253) (not bm!262229) (not b!3623874) (not b!3624263) (not b!3624125) (not b!3623916) (not b!3624096) (not d!1066063) (not b!3624149) (not d!1066005) (not d!1066011) (not d!1065971) (not b!3624313) (not b_lambda!107219) (not b!3624357) (not b!3623905) (not d!1066061) (not d!1066221) (not d!1066201) (not b!3624002) (not b!3623954) (not b!3624325) (not d!1065937) (not b!3623910) (not b!3624233) (not b!3624326) (not b!3624359) (not b!3624349) (not d!1066109) (not b!3624288) (not b!3624129) (not b!3624265) (not b!3623762) (not b_next!95255) (not bs!571385) (not d!1066257) (not b!3623850) (not b!3624339) (not d!1066243) (not b!3624385) (not bm!262212) (not b!3623858) (not d!1066211) (not b!3624375) (not b!3624216) (not b!3623812) (not d!1066113) (not b!3624255) (not b!3624291) (not b!3623950) (not b!3624242) (not bm!262226) (not d!1066263) (not b!3624167) (not b!3624219) (not d!1066017) (not b!3624340) (not d!1066255) (not b!3623888) (not b!3624089) (not b!3624236) (not b!3624205) (not d!1065975) (not b!3623988) (not b!3624105) (not bm!262199) (not b!3623949) (not b!3624275) (not b!3623784) b_and!265263 (not b!3624213) (not b!3624279) (not b!3623766) (not d!1066059) (not b!3624126) (not b!3624384) (not b!3624185) (not b!3624193) (not d!1066179) b_and!265299 (not b!3623992) (not b!3623814) (not bm!262167) (not b!3624142) (not b_lambda!107221) (not b!3624380) (not b_next!95241) (not b!3624009) (not b!3624074) (not b!3624165) (not b!3623795) (not b!3623756) (not bm!262185) (not d!1066009) (not b!3624221) (not bm!262201) (not b!3624173) (not b!3623777) (not b!3624211) (not b_next!95261) (not b_lambda!107217) (not d!1065967) (not b!3623934) (not d!1066143) (not b!3623875) (not b!3624260) (not b_next!95247) (not d!1066267) (not b!3624335) (not b_lambda!107215) b_and!265293 (not bm!262195) (not b!3623852) (not b!3624077) (not d!1066259) (not b!3623869) (not bm!262211) (not d!1066213) (not b!3624110) (not b_next!95235) (not b!3624218) (not b!3623953) (not d!1066157) (not b!3624144) (not b!3624317) (not b!3624321) b_and!265291 (not b!3624363) (not b!3623796) (not b!3623909) (not b!3623935) (not d!1066251) (not bm!262225) (not b!3623776) (not d!1066275) (not bm!262198) (not b!3624259) (not b!3624302) (not b!3624283) (not b!3623943) (not b!3623922) (not bm!262172) (not b!3624342) (not b!3624222) b_and!265301 (not b!3623783) (not b!3624389) (not b!3624101) (not b_lambda!107225) (not bm!262222) (not b!3624008) (not b!3623849) (not d!1066125) (not d!1066277) (not b!3624343) (not b!3623767) (not b!3623914) (not tb!207937) (not bs!571384) (not b!3623793) (not b!3624117) (not d!1066231) (not b!3624322) (not b!3624320) (not d!1066217) (not bm!262171) (not b!3624383) (not b!3624063) (not d!1065981) (not b_next!95233) (not b_lambda!107201) (not b!3624312) (not d!1066281) (not b!3623920) (not b!3623853) (not b!3624334) (not d!1065961) (not b!3623848) (not bm!262218) (not b!3623791) (not b!3622649) (not b!3624191) (not b!3624060) (not d!1066111) (not b!3623907) (not b!3624253) (not b!3624355) b_and!265297 (not b!3624232) (not b!3624257) (not b!3624231) (not b!3623892) (not d!1066145) (not bm!262203) (not bm!262186) (not b!3623930) (not b!3623745) (not d!1066137) b_and!265257 (not b_lambda!107227) (not d!1066261) (not b!3623813) (not d!1066237) (not d!1065977) (not b!3624090) (not b!3624377))
(check-sat b_and!265255 b_and!265261 b_and!265265 b_and!265295 (not b_next!95243) (not b_next!95245) (not b_next!95253) (not b_next!95255) b_and!265263 (not b_next!95261) b_and!265301 (not b_next!95233) b_and!265297 b_and!265257 (not b_next!95239) (not b_next!95237) (not b_next!95263) b_and!265259 b_and!265299 (not b_next!95241) (not b_next!95247) b_and!265293 (not b_next!95235) b_and!265291)
