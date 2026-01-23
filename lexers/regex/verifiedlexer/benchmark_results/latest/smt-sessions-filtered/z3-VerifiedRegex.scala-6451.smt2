; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337394 () Bool)

(assert start!337394)

(declare-fun b!3622205 () Bool)

(declare-fun b_free!94497 () Bool)

(declare-fun b_next!95201 () Bool)

(assert (=> b!3622205 (= b_free!94497 (not b_next!95201))))

(declare-fun tp!1106347 () Bool)

(declare-fun b_and!264915 () Bool)

(assert (=> b!3622205 (= tp!1106347 b_and!264915)))

(declare-fun b_free!94499 () Bool)

(declare-fun b_next!95203 () Bool)

(assert (=> b!3622205 (= b_free!94499 (not b_next!95203))))

(declare-fun tp!1106351 () Bool)

(declare-fun b_and!264917 () Bool)

(assert (=> b!3622205 (= tp!1106351 b_and!264917)))

(declare-fun b!3622217 () Bool)

(declare-fun b_free!94501 () Bool)

(declare-fun b_next!95205 () Bool)

(assert (=> b!3622217 (= b_free!94501 (not b_next!95205))))

(declare-fun tp!1106353 () Bool)

(declare-fun b_and!264919 () Bool)

(assert (=> b!3622217 (= tp!1106353 b_and!264919)))

(declare-fun b_free!94503 () Bool)

(declare-fun b_next!95207 () Bool)

(assert (=> b!3622217 (= b_free!94503 (not b_next!95207))))

(declare-fun tp!1106346 () Bool)

(declare-fun b_and!264921 () Bool)

(assert (=> b!3622217 (= tp!1106346 b_and!264921)))

(declare-fun b!3622210 () Bool)

(declare-fun b_free!94505 () Bool)

(declare-fun b_next!95209 () Bool)

(assert (=> b!3622210 (= b_free!94505 (not b_next!95209))))

(declare-fun tp!1106357 () Bool)

(declare-fun b_and!264923 () Bool)

(assert (=> b!3622210 (= tp!1106357 b_and!264923)))

(declare-fun b_free!94507 () Bool)

(declare-fun b_next!95211 () Bool)

(assert (=> b!3622210 (= b_free!94507 (not b_next!95211))))

(declare-fun tp!1106350 () Bool)

(declare-fun b_and!264925 () Bool)

(assert (=> b!3622210 (= tp!1106350 b_and!264925)))

(declare-fun b!3622209 () Bool)

(declare-fun b_free!94509 () Bool)

(declare-fun b_next!95213 () Bool)

(assert (=> b!3622209 (= b_free!94509 (not b_next!95213))))

(declare-fun tp!1106358 () Bool)

(declare-fun b_and!264927 () Bool)

(assert (=> b!3622209 (= tp!1106358 b_and!264927)))

(declare-fun b_free!94511 () Bool)

(declare-fun b_next!95215 () Bool)

(assert (=> b!3622209 (= b_free!94511 (not b_next!95215))))

(declare-fun tp!1106354 () Bool)

(declare-fun b_and!264929 () Bool)

(assert (=> b!3622209 (= tp!1106354 b_and!264929)))

(declare-fun b!3622192 () Bool)

(declare-fun e!2242097 () Bool)

(assert (=> b!3622192 (= e!2242097 true)))

(declare-fun lt!1251964 () Bool)

(declare-datatypes ((List!38283 0))(
  ( (Nil!38159) (Cons!38159 (h!43579 (_ BitVec 16)) (t!294254 List!38283)) )
))
(declare-datatypes ((TokenValue!5912 0))(
  ( (FloatLiteralValue!11824 (text!41829 List!38283)) (TokenValueExt!5911 (__x!24041 Int)) (Broken!29560 (value!182371 List!38283)) (Object!6035) (End!5912) (Def!5912) (Underscore!5912) (Match!5912) (Else!5912) (Error!5912) (Case!5912) (If!5912) (Extends!5912) (Abstract!5912) (Class!5912) (Val!5912) (DelimiterValue!11824 (del!5972 List!38283)) (KeywordValue!5918 (value!182372 List!38283)) (CommentValue!11824 (value!182373 List!38283)) (WhitespaceValue!11824 (value!182374 List!38283)) (IndentationValue!5912 (value!182375 List!38283)) (String!42893) (Int32!5912) (Broken!29561 (value!182376 List!38283)) (Boolean!5913) (Unit!54907) (OperatorValue!5915 (op!5972 List!38283)) (IdentifierValue!11824 (value!182377 List!38283)) (IdentifierValue!11825 (value!182378 List!38283)) (WhitespaceValue!11825 (value!182379 List!38283)) (True!11824) (False!11824) (Broken!29562 (value!182380 List!38283)) (Broken!29563 (value!182381 List!38283)) (True!11825) (RightBrace!5912) (RightBracket!5912) (Colon!5912) (Null!5912) (Comma!5912) (LeftBracket!5912) (False!11825) (LeftBrace!5912) (ImaginaryLiteralValue!5912 (text!41830 List!38283)) (StringLiteralValue!17736 (value!182382 List!38283)) (EOFValue!5912 (value!182383 List!38283)) (IdentValue!5912 (value!182384 List!38283)) (DelimiterValue!11825 (value!182385 List!38283)) (DedentValue!5912 (value!182386 List!38283)) (NewLineValue!5912 (value!182387 List!38283)) (IntegerValue!17736 (value!182388 (_ BitVec 32)) (text!41831 List!38283)) (IntegerValue!17737 (value!182389 Int) (text!41832 List!38283)) (Times!5912) (Or!5912) (Equal!5912) (Minus!5912) (Broken!29564 (value!182390 List!38283)) (And!5912) (Div!5912) (LessEqual!5912) (Mod!5912) (Concat!16353) (Not!5912) (Plus!5912) (SpaceValue!5912 (value!182391 List!38283)) (IntegerValue!17738 (value!182392 Int) (text!41833 List!38283)) (StringLiteralValue!17737 (text!41834 List!38283)) (FloatLiteralValue!11825 (text!41835 List!38283)) (BytesLiteralValue!5912 (value!182393 List!38283)) (CommentValue!11825 (value!182394 List!38283)) (StringLiteralValue!17738 (value!182395 List!38283)) (ErrorTokenValue!5912 (msg!5973 List!38283)) )
))
(declare-datatypes ((C!21068 0))(
  ( (C!21069 (val!12582 Int)) )
))
(declare-datatypes ((Regex!10441 0))(
  ( (ElementMatch!10441 (c!626786 C!21068)) (Concat!16354 (regOne!21394 Regex!10441) (regTwo!21394 Regex!10441)) (EmptyExpr!10441) (Star!10441 (reg!10770 Regex!10441)) (EmptyLang!10441) (Union!10441 (regOne!21395 Regex!10441) (regTwo!21395 Regex!10441)) )
))
(declare-datatypes ((String!42894 0))(
  ( (String!42895 (value!182396 String)) )
))
(declare-datatypes ((List!38284 0))(
  ( (Nil!38160) (Cons!38160 (h!43580 C!21068) (t!294255 List!38284)) )
))
(declare-datatypes ((IArray!23279 0))(
  ( (IArray!23280 (innerList!11697 List!38284)) )
))
(declare-datatypes ((Conc!11637 0))(
  ( (Node!11637 (left!29792 Conc!11637) (right!30122 Conc!11637) (csize!23504 Int) (cheight!11848 Int)) (Leaf!18089 (xs!14839 IArray!23279) (csize!23505 Int)) (Empty!11637) )
))
(declare-datatypes ((BalanceConc!22888 0))(
  ( (BalanceConc!22889 (c!626787 Conc!11637)) )
))
(declare-datatypes ((TokenValueInjection!11252 0))(
  ( (TokenValueInjection!11253 (toValue!7966 Int) (toChars!7825 Int)) )
))
(declare-datatypes ((Rule!11164 0))(
  ( (Rule!11165 (regex!5682 Regex!10441) (tag!6402 String!42894) (isSeparator!5682 Bool) (transformation!5682 TokenValueInjection!11252)) )
))
(declare-datatypes ((Token!10730 0))(
  ( (Token!10731 (value!182397 TokenValue!5912) (rule!8444 Rule!11164) (size!29107 Int) (originalCharacters!6396 List!38284)) )
))
(declare-datatypes ((tuple2!38032 0))(
  ( (tuple2!38033 (_1!22150 Token!10730) (_2!22150 List!38284)) )
))
(declare-fun lt!1251960 () tuple2!38032)

(declare-fun lt!1251969 () List!38284)

(declare-fun matchR!5010 (Regex!10441 List!38284) Bool)

(assert (=> b!3622192 (= lt!1251964 (matchR!5010 (regex!5682 (rule!8444 (_1!22150 lt!1251960))) lt!1251969))))

(declare-fun b!3622193 () Bool)

(declare-fun tp!1106355 () Bool)

(declare-fun e!2242109 () Bool)

(declare-fun token!511 () Token!10730)

(declare-fun e!2242106 () Bool)

(declare-fun inv!21 (TokenValue!5912) Bool)

(assert (=> b!3622193 (= e!2242109 (and (inv!21 (value!182397 token!511)) e!2242106 tp!1106355))))

(declare-fun tp!1106349 () Bool)

(declare-fun rule!403 () Rule!11164)

(declare-fun e!2242103 () Bool)

(declare-fun b!3622194 () Bool)

(declare-fun e!2242094 () Bool)

(declare-fun inv!51553 (String!42894) Bool)

(declare-fun inv!51556 (TokenValueInjection!11252) Bool)

(assert (=> b!3622194 (= e!2242103 (and tp!1106349 (inv!51553 (tag!6402 rule!403)) (inv!51556 (transformation!5682 rule!403)) e!2242094))))

(declare-fun b!3622195 () Bool)

(declare-fun e!2242104 () Bool)

(declare-fun e!2242101 () Bool)

(assert (=> b!3622195 (= e!2242104 e!2242101)))

(declare-fun res!1465978 () Bool)

(assert (=> b!3622195 (=> (not res!1465978) (not e!2242101))))

(declare-datatypes ((Option!7994 0))(
  ( (None!7993) (Some!7993 (v!37763 tuple2!38032)) )
))
(declare-fun lt!1251963 () Option!7994)

(declare-fun isDefined!6226 (Option!7994) Bool)

(assert (=> b!3622195 (= res!1465978 (isDefined!6226 lt!1251963))))

(declare-datatypes ((List!38285 0))(
  ( (Nil!38161) (Cons!38161 (h!43581 Rule!11164) (t!294256 List!38285)) )
))
(declare-fun rules!3307 () List!38285)

(declare-fun lt!1251968 () List!38284)

(declare-datatypes ((LexerInterface!5271 0))(
  ( (LexerInterfaceExt!5268 (__x!24042 Int)) (Lexer!5269) )
))
(declare-fun thiss!23823 () LexerInterface!5271)

(declare-fun maxPrefix!2805 (LexerInterface!5271 List!38285 List!38284) Option!7994)

(assert (=> b!3622195 (= lt!1251963 (maxPrefix!2805 thiss!23823 rules!3307 lt!1251968))))

(declare-fun list!14086 (BalanceConc!22888) List!38284)

(declare-fun charsOf!3696 (Token!10730) BalanceConc!22888)

(assert (=> b!3622195 (= lt!1251968 (list!14086 (charsOf!3696 token!511)))))

(declare-fun b!3622196 () Bool)

(declare-fun e!2242092 () Bool)

(declare-fun e!2242102 () Bool)

(assert (=> b!3622196 (= e!2242092 e!2242102)))

(declare-fun res!1465982 () Bool)

(assert (=> b!3622196 (=> res!1465982 e!2242102)))

(declare-fun lt!1251972 () C!21068)

(declare-fun contains!7427 (List!38284 C!21068) Bool)

(declare-fun usedCharacters!896 (Regex!10441) List!38284)

(assert (=> b!3622196 (= res!1465982 (contains!7427 (usedCharacters!896 (regex!5682 rule!403)) lt!1251972))))

(declare-fun suffix!1395 () List!38284)

(declare-fun head!7654 (List!38284) C!21068)

(assert (=> b!3622196 (= lt!1251972 (head!7654 suffix!1395))))

(declare-fun res!1465979 () Bool)

(assert (=> start!337394 (=> (not res!1465979) (not e!2242104))))

(get-info :version)

(assert (=> start!337394 (= res!1465979 ((_ is Lexer!5269) thiss!23823))))

(assert (=> start!337394 e!2242104))

(declare-fun e!2242110 () Bool)

(assert (=> start!337394 e!2242110))

(declare-fun e!2242112 () Bool)

(assert (=> start!337394 e!2242112))

(assert (=> start!337394 true))

(declare-fun inv!51557 (Token!10730) Bool)

(assert (=> start!337394 (and (inv!51557 token!511) e!2242109)))

(assert (=> start!337394 e!2242103))

(declare-fun e!2242095 () Bool)

(assert (=> start!337394 e!2242095))

(declare-fun b!3622197 () Bool)

(declare-fun res!1465983 () Bool)

(assert (=> b!3622197 (=> res!1465983 e!2242102)))

(declare-fun anOtherTypeRule!33 () Rule!11164)

(assert (=> b!3622197 (= res!1465983 (not (contains!7427 (usedCharacters!896 (regex!5682 anOtherTypeRule!33)) lt!1251972)))))

(declare-fun b!3622198 () Bool)

(declare-fun res!1465985 () Bool)

(assert (=> b!3622198 (=> (not res!1465985) (not e!2242104))))

(declare-fun contains!7428 (List!38285 Rule!11164) Bool)

(assert (=> b!3622198 (= res!1465985 (contains!7428 rules!3307 rule!403))))

(declare-fun b!3622199 () Bool)

(declare-fun res!1465981 () Bool)

(declare-fun e!2242098 () Bool)

(assert (=> b!3622199 (=> (not res!1465981) (not e!2242098))))

(declare-fun lt!1251970 () tuple2!38032)

(declare-fun isEmpty!22554 (List!38284) Bool)

(assert (=> b!3622199 (= res!1465981 (isEmpty!22554 (_2!22150 lt!1251970)))))

(declare-fun b!3622200 () Bool)

(declare-fun res!1465987 () Bool)

(assert (=> b!3622200 (=> (not res!1465987) (not e!2242098))))

(assert (=> b!3622200 (= res!1465987 (= (rule!8444 token!511) rule!403))))

(declare-fun e!2242096 () Bool)

(declare-fun tp!1106360 () Bool)

(declare-fun b!3622201 () Bool)

(assert (=> b!3622201 (= e!2242106 (and tp!1106360 (inv!51553 (tag!6402 (rule!8444 token!511))) (inv!51556 (transformation!5682 (rule!8444 token!511))) e!2242096))))

(declare-fun b!3622202 () Bool)

(declare-fun res!1465990 () Bool)

(assert (=> b!3622202 (=> res!1465990 e!2242102)))

(declare-fun sepAndNonSepRulesDisjointChars!1852 (List!38285 List!38285) Bool)

(assert (=> b!3622202 (= res!1465990 (not (sepAndNonSepRulesDisjointChars!1852 rules!3307 rules!3307)))))

(declare-fun b!3622203 () Bool)

(declare-fun res!1465974 () Bool)

(assert (=> b!3622203 (=> (not res!1465974) (not e!2242104))))

(assert (=> b!3622203 (= res!1465974 (contains!7428 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1106348 () Bool)

(declare-fun e!2242114 () Bool)

(declare-fun b!3622204 () Bool)

(assert (=> b!3622204 (= e!2242095 (and tp!1106348 (inv!51553 (tag!6402 anOtherTypeRule!33)) (inv!51556 (transformation!5682 anOtherTypeRule!33)) e!2242114))))

(assert (=> b!3622205 (= e!2242094 (and tp!1106347 tp!1106351))))

(declare-fun b!3622206 () Bool)

(declare-fun res!1465986 () Bool)

(assert (=> b!3622206 (=> (not res!1465986) (not e!2242104))))

(assert (=> b!3622206 (= res!1465986 (not (= (isSeparator!5682 anOtherTypeRule!33) (isSeparator!5682 rule!403))))))

(declare-fun b!3622207 () Bool)

(assert (=> b!3622207 (= e!2242102 e!2242097)))

(declare-fun res!1465980 () Bool)

(assert (=> b!3622207 (=> res!1465980 e!2242097)))

(declare-fun lt!1251974 () List!38284)

(declare-fun isPrefix!3045 (List!38284 List!38284) Bool)

(assert (=> b!3622207 (= res!1465980 (not (isPrefix!3045 lt!1251969 lt!1251974)))))

(declare-fun ++!9498 (List!38284 List!38284) List!38284)

(assert (=> b!3622207 (isPrefix!3045 lt!1251969 (++!9498 lt!1251969 (_2!22150 lt!1251960)))))

(declare-datatypes ((Unit!54908 0))(
  ( (Unit!54909) )
))
(declare-fun lt!1251971 () Unit!54908)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1966 (List!38284 List!38284) Unit!54908)

(assert (=> b!3622207 (= lt!1251971 (lemmaConcatTwoListThenFirstIsPrefix!1966 lt!1251969 (_2!22150 lt!1251960)))))

(assert (=> b!3622207 (= lt!1251969 (list!14086 (charsOf!3696 (_1!22150 lt!1251960))))))

(declare-fun e!2242093 () Bool)

(assert (=> b!3622207 e!2242093))

(declare-fun res!1465989 () Bool)

(assert (=> b!3622207 (=> (not res!1465989) (not e!2242093))))

(declare-datatypes ((Option!7995 0))(
  ( (None!7994) (Some!7994 (v!37764 Rule!11164)) )
))
(declare-fun lt!1251966 () Option!7995)

(declare-fun isDefined!6227 (Option!7995) Bool)

(assert (=> b!3622207 (= res!1465989 (isDefined!6227 lt!1251966))))

(declare-fun getRuleFromTag!1288 (LexerInterface!5271 List!38285 String!42894) Option!7995)

(assert (=> b!3622207 (= lt!1251966 (getRuleFromTag!1288 thiss!23823 rules!3307 (tag!6402 (rule!8444 (_1!22150 lt!1251960)))))))

(declare-fun lt!1251962 () Unit!54908)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1288 (LexerInterface!5271 List!38285 List!38284 Token!10730) Unit!54908)

(assert (=> b!3622207 (= lt!1251962 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1288 thiss!23823 rules!3307 lt!1251974 (_1!22150 lt!1251960)))))

(declare-fun lt!1251959 () Option!7994)

(declare-fun get!12445 (Option!7994) tuple2!38032)

(assert (=> b!3622207 (= lt!1251960 (get!12445 lt!1251959))))

(declare-fun lt!1251973 () Unit!54908)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!951 (LexerInterface!5271 List!38285 List!38284 List!38284) Unit!54908)

(assert (=> b!3622207 (= lt!1251973 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!951 thiss!23823 rules!3307 lt!1251968 suffix!1395))))

(assert (=> b!3622207 (= lt!1251959 (maxPrefix!2805 thiss!23823 rules!3307 lt!1251974))))

(assert (=> b!3622207 (isPrefix!3045 lt!1251968 lt!1251974)))

(declare-fun lt!1251961 () Unit!54908)

(assert (=> b!3622207 (= lt!1251961 (lemmaConcatTwoListThenFirstIsPrefix!1966 lt!1251968 suffix!1395))))

(assert (=> b!3622207 (= lt!1251974 (++!9498 lt!1251968 suffix!1395))))

(declare-fun b!3622208 () Bool)

(assert (=> b!3622208 (= e!2242098 (not e!2242092))))

(declare-fun res!1465988 () Bool)

(assert (=> b!3622208 (=> res!1465988 e!2242092)))

(assert (=> b!3622208 (= res!1465988 (not (matchR!5010 (regex!5682 rule!403) lt!1251968)))))

(declare-fun ruleValid!1947 (LexerInterface!5271 Rule!11164) Bool)

(assert (=> b!3622208 (ruleValid!1947 thiss!23823 rule!403)))

(declare-fun lt!1251967 () Unit!54908)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1102 (LexerInterface!5271 Rule!11164 List!38285) Unit!54908)

(assert (=> b!3622208 (= lt!1251967 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1102 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2242113 () Bool)

(assert (=> b!3622209 (= e!2242113 (and tp!1106358 tp!1106354))))

(assert (=> b!3622210 (= e!2242096 (and tp!1106357 tp!1106350))))

(declare-fun b!3622211 () Bool)

(declare-fun e!2242107 () Bool)

(assert (=> b!3622211 (= e!2242093 e!2242107)))

(declare-fun res!1465977 () Bool)

(assert (=> b!3622211 (=> (not res!1465977) (not e!2242107))))

(declare-fun lt!1251965 () Rule!11164)

(assert (=> b!3622211 (= res!1465977 (matchR!5010 (regex!5682 lt!1251965) (list!14086 (charsOf!3696 (_1!22150 lt!1251960)))))))

(declare-fun get!12446 (Option!7995) Rule!11164)

(assert (=> b!3622211 (= lt!1251965 (get!12446 lt!1251966))))

(declare-fun b!3622212 () Bool)

(declare-fun res!1465991 () Bool)

(assert (=> b!3622212 (=> (not res!1465991) (not e!2242104))))

(declare-fun rulesInvariant!4668 (LexerInterface!5271 List!38285) Bool)

(assert (=> b!3622212 (= res!1465991 (rulesInvariant!4668 thiss!23823 rules!3307))))

(declare-fun b!3622213 () Bool)

(declare-fun res!1465976 () Bool)

(assert (=> b!3622213 (=> (not res!1465976) (not e!2242104))))

(declare-fun isEmpty!22555 (List!38285) Bool)

(assert (=> b!3622213 (= res!1465976 (not (isEmpty!22555 rules!3307)))))

(declare-fun b!3622214 () Bool)

(declare-fun e!2242111 () Bool)

(declare-fun tp!1106359 () Bool)

(assert (=> b!3622214 (= e!2242111 (and tp!1106359 (inv!51553 (tag!6402 (h!43581 rules!3307))) (inv!51556 (transformation!5682 (h!43581 rules!3307))) e!2242113))))

(declare-fun b!3622215 () Bool)

(declare-fun tp_is_empty!17965 () Bool)

(declare-fun tp!1106352 () Bool)

(assert (=> b!3622215 (= e!2242112 (and tp_is_empty!17965 tp!1106352))))

(declare-fun b!3622216 () Bool)

(assert (=> b!3622216 (= e!2242101 e!2242098)))

(declare-fun res!1465975 () Bool)

(assert (=> b!3622216 (=> (not res!1465975) (not e!2242098))))

(assert (=> b!3622216 (= res!1465975 (= (_1!22150 lt!1251970) token!511))))

(assert (=> b!3622216 (= lt!1251970 (get!12445 lt!1251963))))

(assert (=> b!3622217 (= e!2242114 (and tp!1106353 tp!1106346))))

(declare-fun b!3622218 () Bool)

(declare-fun tp!1106356 () Bool)

(assert (=> b!3622218 (= e!2242110 (and e!2242111 tp!1106356))))

(declare-fun b!3622219 () Bool)

(declare-fun res!1465984 () Bool)

(assert (=> b!3622219 (=> res!1465984 e!2242092)))

(assert (=> b!3622219 (= res!1465984 (isEmpty!22554 suffix!1395))))

(declare-fun b!3622220 () Bool)

(assert (=> b!3622220 (= e!2242107 (= (rule!8444 (_1!22150 lt!1251960)) lt!1251965))))

(assert (= (and start!337394 res!1465979) b!3622213))

(assert (= (and b!3622213 res!1465976) b!3622212))

(assert (= (and b!3622212 res!1465991) b!3622198))

(assert (= (and b!3622198 res!1465985) b!3622203))

(assert (= (and b!3622203 res!1465974) b!3622206))

(assert (= (and b!3622206 res!1465986) b!3622195))

(assert (= (and b!3622195 res!1465978) b!3622216))

(assert (= (and b!3622216 res!1465975) b!3622199))

(assert (= (and b!3622199 res!1465981) b!3622200))

(assert (= (and b!3622200 res!1465987) b!3622208))

(assert (= (and b!3622208 (not res!1465988)) b!3622219))

(assert (= (and b!3622219 (not res!1465984)) b!3622196))

(assert (= (and b!3622196 (not res!1465982)) b!3622197))

(assert (= (and b!3622197 (not res!1465983)) b!3622202))

(assert (= (and b!3622202 (not res!1465990)) b!3622207))

(assert (= (and b!3622207 res!1465989) b!3622211))

(assert (= (and b!3622211 res!1465977) b!3622220))

(assert (= (and b!3622207 (not res!1465980)) b!3622192))

(assert (= b!3622214 b!3622209))

(assert (= b!3622218 b!3622214))

(assert (= (and start!337394 ((_ is Cons!38161) rules!3307)) b!3622218))

(assert (= (and start!337394 ((_ is Cons!38160) suffix!1395)) b!3622215))

(assert (= b!3622201 b!3622210))

(assert (= b!3622193 b!3622201))

(assert (= start!337394 b!3622193))

(assert (= b!3622194 b!3622205))

(assert (= start!337394 b!3622194))

(assert (= b!3622204 b!3622217))

(assert (= start!337394 b!3622204))

(declare-fun m!4121989 () Bool)

(assert (=> b!3622196 m!4121989))

(assert (=> b!3622196 m!4121989))

(declare-fun m!4121991 () Bool)

(assert (=> b!3622196 m!4121991))

(declare-fun m!4121993 () Bool)

(assert (=> b!3622196 m!4121993))

(declare-fun m!4121995 () Bool)

(assert (=> b!3622202 m!4121995))

(declare-fun m!4121997 () Bool)

(assert (=> b!3622198 m!4121997))

(declare-fun m!4121999 () Bool)

(assert (=> b!3622197 m!4121999))

(assert (=> b!3622197 m!4121999))

(declare-fun m!4122001 () Bool)

(assert (=> b!3622197 m!4122001))

(declare-fun m!4122003 () Bool)

(assert (=> b!3622211 m!4122003))

(assert (=> b!3622211 m!4122003))

(declare-fun m!4122005 () Bool)

(assert (=> b!3622211 m!4122005))

(assert (=> b!3622211 m!4122005))

(declare-fun m!4122007 () Bool)

(assert (=> b!3622211 m!4122007))

(declare-fun m!4122009 () Bool)

(assert (=> b!3622211 m!4122009))

(declare-fun m!4122011 () Bool)

(assert (=> b!3622219 m!4122011))

(declare-fun m!4122013 () Bool)

(assert (=> b!3622203 m!4122013))

(declare-fun m!4122015 () Bool)

(assert (=> b!3622204 m!4122015))

(declare-fun m!4122017 () Bool)

(assert (=> b!3622204 m!4122017))

(declare-fun m!4122019 () Bool)

(assert (=> b!3622199 m!4122019))

(declare-fun m!4122021 () Bool)

(assert (=> start!337394 m!4122021))

(declare-fun m!4122023 () Bool)

(assert (=> b!3622194 m!4122023))

(declare-fun m!4122025 () Bool)

(assert (=> b!3622194 m!4122025))

(declare-fun m!4122027 () Bool)

(assert (=> b!3622208 m!4122027))

(declare-fun m!4122029 () Bool)

(assert (=> b!3622208 m!4122029))

(declare-fun m!4122031 () Bool)

(assert (=> b!3622208 m!4122031))

(declare-fun m!4122033 () Bool)

(assert (=> b!3622207 m!4122033))

(declare-fun m!4122035 () Bool)

(assert (=> b!3622207 m!4122035))

(declare-fun m!4122037 () Bool)

(assert (=> b!3622207 m!4122037))

(declare-fun m!4122039 () Bool)

(assert (=> b!3622207 m!4122039))

(declare-fun m!4122041 () Bool)

(assert (=> b!3622207 m!4122041))

(assert (=> b!3622207 m!4122003))

(declare-fun m!4122043 () Bool)

(assert (=> b!3622207 m!4122043))

(declare-fun m!4122045 () Bool)

(assert (=> b!3622207 m!4122045))

(assert (=> b!3622207 m!4122003))

(assert (=> b!3622207 m!4122005))

(declare-fun m!4122047 () Bool)

(assert (=> b!3622207 m!4122047))

(assert (=> b!3622207 m!4122039))

(declare-fun m!4122049 () Bool)

(assert (=> b!3622207 m!4122049))

(declare-fun m!4122051 () Bool)

(assert (=> b!3622207 m!4122051))

(declare-fun m!4122053 () Bool)

(assert (=> b!3622207 m!4122053))

(declare-fun m!4122055 () Bool)

(assert (=> b!3622207 m!4122055))

(declare-fun m!4122057 () Bool)

(assert (=> b!3622207 m!4122057))

(declare-fun m!4122059 () Bool)

(assert (=> b!3622212 m!4122059))

(declare-fun m!4122061 () Bool)

(assert (=> b!3622201 m!4122061))

(declare-fun m!4122063 () Bool)

(assert (=> b!3622201 m!4122063))

(declare-fun m!4122065 () Bool)

(assert (=> b!3622213 m!4122065))

(declare-fun m!4122067 () Bool)

(assert (=> b!3622195 m!4122067))

(declare-fun m!4122069 () Bool)

(assert (=> b!3622195 m!4122069))

(declare-fun m!4122071 () Bool)

(assert (=> b!3622195 m!4122071))

(assert (=> b!3622195 m!4122071))

(declare-fun m!4122073 () Bool)

(assert (=> b!3622195 m!4122073))

(declare-fun m!4122075 () Bool)

(assert (=> b!3622214 m!4122075))

(declare-fun m!4122077 () Bool)

(assert (=> b!3622214 m!4122077))

(declare-fun m!4122079 () Bool)

(assert (=> b!3622192 m!4122079))

(declare-fun m!4122081 () Bool)

(assert (=> b!3622193 m!4122081))

(declare-fun m!4122083 () Bool)

(assert (=> b!3622216 m!4122083))

(check-sat (not b_next!95207) (not b_next!95211) (not b!3622208) (not b_next!95203) (not b!3622202) (not b!3622199) (not b_next!95213) (not b!3622212) b_and!264921 tp_is_empty!17965 (not b!3622203) (not b!3622204) (not b!3622216) (not b!3622214) (not b!3622193) (not b!3622213) (not b!3622198) (not b_next!95201) (not b_next!95215) (not b!3622192) b_and!264919 (not b!3622197) (not b!3622196) (not b!3622218) b_and!264915 b_and!264923 (not b!3622195) (not start!337394) (not b!3622211) b_and!264929 (not b_next!95205) (not b!3622207) (not b!3622215) (not b!3622201) b_and!264925 (not b!3622219) (not b!3622194) b_and!264917 b_and!264927 (not b_next!95209))
(check-sat (not b_next!95207) (not b_next!95211) (not b_next!95203) b_and!264919 b_and!264915 b_and!264923 b_and!264929 (not b_next!95205) (not b_next!95213) b_and!264921 b_and!264925 b_and!264917 (not b_next!95201) (not b_next!95215) b_and!264927 (not b_next!95209))
