; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174110 () Bool)

(assert start!174110)

(declare-fun b!1760292 () Bool)

(declare-fun b_free!48671 () Bool)

(declare-fun b_next!49375 () Bool)

(assert (=> b!1760292 (= b_free!48671 (not b_next!49375))))

(declare-fun tp!500153 () Bool)

(declare-fun b_and!132723 () Bool)

(assert (=> b!1760292 (= tp!500153 b_and!132723)))

(declare-fun b_free!48673 () Bool)

(declare-fun b_next!49377 () Bool)

(assert (=> b!1760292 (= b_free!48673 (not b_next!49377))))

(declare-fun tp!500149 () Bool)

(declare-fun b_and!132725 () Bool)

(assert (=> b!1760292 (= tp!500149 b_and!132725)))

(declare-fun b!1760298 () Bool)

(declare-fun b_free!48675 () Bool)

(declare-fun b_next!49379 () Bool)

(assert (=> b!1760298 (= b_free!48675 (not b_next!49379))))

(declare-fun tp!500144 () Bool)

(declare-fun b_and!132727 () Bool)

(assert (=> b!1760298 (= tp!500144 b_and!132727)))

(declare-fun b_free!48677 () Bool)

(declare-fun b_next!49381 () Bool)

(assert (=> b!1760298 (= b_free!48677 (not b_next!49381))))

(declare-fun tp!500146 () Bool)

(declare-fun b_and!132729 () Bool)

(assert (=> b!1760298 (= tp!500146 b_and!132729)))

(declare-fun b!1760302 () Bool)

(declare-fun b_free!48679 () Bool)

(declare-fun b_next!49383 () Bool)

(assert (=> b!1760302 (= b_free!48679 (not b_next!49383))))

(declare-fun tp!500151 () Bool)

(declare-fun b_and!132731 () Bool)

(assert (=> b!1760302 (= tp!500151 b_and!132731)))

(declare-fun b_free!48681 () Bool)

(declare-fun b_next!49385 () Bool)

(assert (=> b!1760302 (= b_free!48681 (not b_next!49385))))

(declare-fun tp!500154 () Bool)

(declare-fun b_and!132733 () Bool)

(assert (=> b!1760302 (= tp!500154 b_and!132733)))

(declare-fun b!1760320 () Bool)

(declare-fun e!1126613 () Bool)

(assert (=> b!1760320 (= e!1126613 true)))

(declare-fun b!1760319 () Bool)

(declare-fun e!1126612 () Bool)

(assert (=> b!1760319 (= e!1126612 e!1126613)))

(declare-fun b!1760318 () Bool)

(declare-fun e!1126611 () Bool)

(assert (=> b!1760318 (= e!1126611 e!1126612)))

(declare-fun b!1760284 () Bool)

(assert (=> b!1760284 e!1126611))

(assert (= b!1760319 b!1760320))

(assert (= b!1760318 b!1760319))

(assert (= b!1760284 b!1760318))

(declare-fun order!12283 () Int)

(declare-datatypes ((List!19451 0))(
  ( (Nil!19381) (Cons!19381 (h!24782 (_ BitVec 16)) (t!164034 List!19451)) )
))
(declare-datatypes ((TokenValue!3553 0))(
  ( (FloatLiteralValue!7106 (text!25316 List!19451)) (TokenValueExt!3552 (__x!12408 Int)) (Broken!17765 (value!108342 List!19451)) (Object!3622) (End!3553) (Def!3553) (Underscore!3553) (Match!3553) (Else!3553) (Error!3553) (Case!3553) (If!3553) (Extends!3553) (Abstract!3553) (Class!3553) (Val!3553) (DelimiterValue!7106 (del!3613 List!19451)) (KeywordValue!3559 (value!108343 List!19451)) (CommentValue!7106 (value!108344 List!19451)) (WhitespaceValue!7106 (value!108345 List!19451)) (IndentationValue!3553 (value!108346 List!19451)) (String!22096) (Int32!3553) (Broken!17766 (value!108347 List!19451)) (Boolean!3554) (Unit!33554) (OperatorValue!3556 (op!3613 List!19451)) (IdentifierValue!7106 (value!108348 List!19451)) (IdentifierValue!7107 (value!108349 List!19451)) (WhitespaceValue!7107 (value!108350 List!19451)) (True!7106) (False!7106) (Broken!17767 (value!108351 List!19451)) (Broken!17768 (value!108352 List!19451)) (True!7107) (RightBrace!3553) (RightBracket!3553) (Colon!3553) (Null!3553) (Comma!3553) (LeftBracket!3553) (False!7107) (LeftBrace!3553) (ImaginaryLiteralValue!3553 (text!25317 List!19451)) (StringLiteralValue!10659 (value!108353 List!19451)) (EOFValue!3553 (value!108354 List!19451)) (IdentValue!3553 (value!108355 List!19451)) (DelimiterValue!7107 (value!108356 List!19451)) (DedentValue!3553 (value!108357 List!19451)) (NewLineValue!3553 (value!108358 List!19451)) (IntegerValue!10659 (value!108359 (_ BitVec 32)) (text!25318 List!19451)) (IntegerValue!10660 (value!108360 Int) (text!25319 List!19451)) (Times!3553) (Or!3553) (Equal!3553) (Minus!3553) (Broken!17769 (value!108361 List!19451)) (And!3553) (Div!3553) (LessEqual!3553) (Mod!3553) (Concat!8344) (Not!3553) (Plus!3553) (SpaceValue!3553 (value!108362 List!19451)) (IntegerValue!10661 (value!108363 Int) (text!25320 List!19451)) (StringLiteralValue!10660 (text!25321 List!19451)) (FloatLiteralValue!7107 (text!25322 List!19451)) (BytesLiteralValue!3553 (value!108364 List!19451)) (CommentValue!7107 (value!108365 List!19451)) (StringLiteralValue!10661 (value!108366 List!19451)) (ErrorTokenValue!3553 (msg!3614 List!19451)) )
))
(declare-datatypes ((C!9756 0))(
  ( (C!9757 (val!5474 Int)) )
))
(declare-datatypes ((List!19452 0))(
  ( (Nil!19382) (Cons!19382 (h!24783 C!9756) (t!164035 List!19452)) )
))
(declare-datatypes ((String!22097 0))(
  ( (String!22098 (value!108367 String)) )
))
(declare-datatypes ((Regex!4791 0))(
  ( (ElementMatch!4791 (c!286774 C!9756)) (Concat!8345 (regOne!10094 Regex!4791) (regTwo!10094 Regex!4791)) (EmptyExpr!4791) (Star!4791 (reg!5120 Regex!4791)) (EmptyLang!4791) (Union!4791 (regOne!10095 Regex!4791) (regTwo!10095 Regex!4791)) )
))
(declare-datatypes ((IArray!12899 0))(
  ( (IArray!12900 (innerList!6507 List!19452)) )
))
(declare-datatypes ((Conc!6447 0))(
  ( (Node!6447 (left!15516 Conc!6447) (right!15846 Conc!6447) (csize!13124 Int) (cheight!6658 Int)) (Leaf!9399 (xs!9323 IArray!12899) (csize!13125 Int)) (Empty!6447) )
))
(declare-datatypes ((BalanceConc!12838 0))(
  ( (BalanceConc!12839 (c!286775 Conc!6447)) )
))
(declare-datatypes ((TokenValueInjection!6766 0))(
  ( (TokenValueInjection!6767 (toValue!4982 Int) (toChars!4841 Int)) )
))
(declare-datatypes ((Rule!6726 0))(
  ( (Rule!6727 (regex!3463 Regex!4791) (tag!3829 String!22097) (isSeparator!3463 Bool) (transformation!3463 TokenValueInjection!6766)) )
))
(declare-datatypes ((Token!6492 0))(
  ( (Token!6493 (value!108368 TokenValue!3553) (rule!5481 Rule!6726) (size!15393 Int) (originalCharacters!4277 List!19452)) )
))
(declare-datatypes ((tuple2!18990 0))(
  ( (tuple2!18991 (_1!10897 Token!6492) (_2!10897 List!19452)) )
))
(declare-fun lt!680362 () tuple2!18990)

(declare-fun lambda!70132 () Int)

(declare-fun order!12285 () Int)

(declare-fun dynLambda!9329 (Int Int) Int)

(declare-fun dynLambda!9330 (Int Int) Int)

(assert (=> b!1760320 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70132))))

(declare-fun order!12287 () Int)

(declare-fun dynLambda!9331 (Int Int) Int)

(assert (=> b!1760320 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70132))))

(declare-fun b!1760282 () Bool)

(declare-fun res!792240 () Bool)

(declare-fun e!1126603 () Bool)

(assert (=> b!1760282 (=> (not res!792240) (not e!1126603))))

(declare-datatypes ((LexerInterface!3092 0))(
  ( (LexerInterfaceExt!3089 (__x!12409 Int)) (Lexer!3090) )
))
(declare-fun thiss!24550 () LexerInterface!3092)

(declare-datatypes ((List!19453 0))(
  ( (Nil!19383) (Cons!19383 (h!24784 Rule!6726) (t!164036 List!19453)) )
))
(declare-fun rules!3447 () List!19453)

(declare-fun rulesInvariant!2761 (LexerInterface!3092 List!19453) Bool)

(assert (=> b!1760282 (= res!792240 (rulesInvariant!2761 thiss!24550 rules!3447))))

(declare-fun b!1760283 () Bool)

(declare-fun res!792237 () Bool)

(declare-fun e!1126600 () Bool)

(assert (=> b!1760283 (=> res!792237 e!1126600)))

(declare-fun lt!680349 () BalanceConc!12838)

(declare-fun dynLambda!9332 (Int TokenValue!3553) BalanceConc!12838)

(assert (=> b!1760283 (= res!792237 (not (= lt!680349 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))

(declare-fun e!1126586 () Bool)

(declare-fun e!1126598 () Bool)

(assert (=> b!1760284 (= e!1126586 e!1126598)))

(declare-fun res!792230 () Bool)

(assert (=> b!1760284 (=> res!792230 e!1126598)))

(declare-fun Forall!830 (Int) Bool)

(assert (=> b!1760284 (= res!792230 (not (Forall!830 lambda!70132)))))

(declare-datatypes ((Unit!33555 0))(
  ( (Unit!33556) )
))
(declare-fun lt!680361 () Unit!33555)

(declare-fun lemmaInv!662 (TokenValueInjection!6766) Unit!33555)

(assert (=> b!1760284 (= lt!680361 (lemmaInv!662 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1760286 () Bool)

(declare-fun e!1126599 () Bool)

(declare-fun tp_is_empty!7825 () Bool)

(declare-fun tp!500152 () Bool)

(assert (=> b!1760286 (= e!1126599 (and tp_is_empty!7825 tp!500152))))

(declare-fun b!1760287 () Bool)

(declare-fun e!1126595 () Bool)

(assert (=> b!1760287 (= e!1126595 e!1126586)))

(declare-fun res!792232 () Bool)

(assert (=> b!1760287 (=> res!792232 e!1126586)))

(declare-fun lt!680348 () List!19452)

(declare-fun lt!680363 () List!19452)

(declare-fun isPrefix!1703 (List!19452 List!19452) Bool)

(assert (=> b!1760287 (= res!792232 (not (isPrefix!1703 lt!680348 lt!680363)))))

(declare-fun ++!5287 (List!19452 List!19452) List!19452)

(assert (=> b!1760287 (isPrefix!1703 lt!680348 (++!5287 lt!680348 (_2!10897 lt!680362)))))

(declare-fun lt!680345 () Unit!33555)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1212 (List!19452 List!19452) Unit!33555)

(assert (=> b!1760287 (= lt!680345 (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680348 (_2!10897 lt!680362)))))

(declare-fun list!7861 (BalanceConc!12838) List!19452)

(assert (=> b!1760287 (= lt!680348 (list!7861 lt!680349))))

(declare-fun charsOf!2112 (Token!6492) BalanceConc!12838)

(assert (=> b!1760287 (= lt!680349 (charsOf!2112 (_1!10897 lt!680362)))))

(declare-fun e!1126596 () Bool)

(assert (=> b!1760287 e!1126596))

(declare-fun res!792239 () Bool)

(assert (=> b!1760287 (=> (not res!792239) (not e!1126596))))

(declare-datatypes ((Option!3948 0))(
  ( (None!3947) (Some!3947 (v!25408 Rule!6726)) )
))
(declare-fun lt!680359 () Option!3948)

(declare-fun isDefined!3291 (Option!3948) Bool)

(assert (=> b!1760287 (= res!792239 (isDefined!3291 lt!680359))))

(declare-fun getRuleFromTag!511 (LexerInterface!3092 List!19453 String!22097) Option!3948)

(assert (=> b!1760287 (= lt!680359 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun lt!680346 () Unit!33555)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!511 (LexerInterface!3092 List!19453 List!19452 Token!6492) Unit!33555)

(assert (=> b!1760287 (= lt!680346 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!511 thiss!24550 rules!3447 lt!680363 (_1!10897 lt!680362)))))

(declare-datatypes ((Option!3949 0))(
  ( (None!3948) (Some!3948 (v!25409 tuple2!18990)) )
))
(declare-fun lt!680354 () Option!3949)

(declare-fun get!5897 (Option!3949) tuple2!18990)

(assert (=> b!1760287 (= lt!680362 (get!5897 lt!680354))))

(declare-fun suffix!1421 () List!19452)

(declare-fun lt!680357 () Unit!33555)

(declare-fun lt!680342 () List!19452)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!614 (LexerInterface!3092 List!19453 List!19452 List!19452) Unit!33555)

(assert (=> b!1760287 (= lt!680357 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!614 thiss!24550 rules!3447 lt!680342 suffix!1421))))

(declare-fun maxPrefix!1646 (LexerInterface!3092 List!19453 List!19452) Option!3949)

(assert (=> b!1760287 (= lt!680354 (maxPrefix!1646 thiss!24550 rules!3447 lt!680363))))

(assert (=> b!1760287 (isPrefix!1703 lt!680342 lt!680363)))

(declare-fun lt!680358 () Unit!33555)

(assert (=> b!1760287 (= lt!680358 (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680342 suffix!1421))))

(assert (=> b!1760287 (= lt!680363 (++!5287 lt!680342 suffix!1421))))

(declare-fun b!1760288 () Bool)

(declare-fun e!1126602 () Bool)

(assert (=> b!1760288 (= e!1126603 e!1126602)))

(declare-fun res!792231 () Bool)

(assert (=> b!1760288 (=> (not res!792231) (not e!1126602))))

(declare-fun lt!680352 () Option!3949)

(declare-fun isDefined!3292 (Option!3949) Bool)

(assert (=> b!1760288 (= res!792231 (isDefined!3292 lt!680352))))

(assert (=> b!1760288 (= lt!680352 (maxPrefix!1646 thiss!24550 rules!3447 lt!680342))))

(declare-fun token!523 () Token!6492)

(assert (=> b!1760288 (= lt!680342 (list!7861 (charsOf!2112 token!523)))))

(declare-fun b!1760289 () Bool)

(declare-fun e!1126590 () Bool)

(declare-fun lt!680356 () Rule!6726)

(assert (=> b!1760289 (= e!1126590 (= (rule!5481 (_1!10897 lt!680362)) lt!680356))))

(declare-fun b!1760290 () Bool)

(declare-fun res!792246 () Bool)

(assert (=> b!1760290 (=> (not res!792246) (not e!1126603))))

(declare-fun isEmpty!12226 (List!19453) Bool)

(assert (=> b!1760290 (= res!792246 (not (isEmpty!12226 rules!3447)))))

(declare-fun b!1760291 () Bool)

(declare-fun e!1126594 () Bool)

(assert (=> b!1760291 (= e!1126600 e!1126594)))

(declare-fun res!792234 () Bool)

(assert (=> b!1760291 (=> res!792234 e!1126594)))

(declare-fun apply!5263 (TokenValueInjection!6766 BalanceConc!12838) TokenValue!3553)

(declare-fun size!15394 (BalanceConc!12838) Int)

(assert (=> b!1760291 (= res!792234 (not (= lt!680354 (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349) (rule!5481 (_1!10897 lt!680362)) (size!15394 lt!680349) lt!680348) (_2!10897 lt!680362))))))))

(declare-fun lt!680347 () Unit!33555)

(declare-fun lemmaCharactersSize!521 (Token!6492) Unit!33555)

(assert (=> b!1760291 (= lt!680347 (lemmaCharactersSize!521 (_1!10897 lt!680362)))))

(declare-fun lt!680355 () Unit!33555)

(declare-fun lemmaEqSameImage!374 (TokenValueInjection!6766 BalanceConc!12838 BalanceConc!12838) Unit!33555)

(declare-fun seqFromList!2432 (List!19452) BalanceConc!12838)

(assert (=> b!1760291 (= lt!680355 (lemmaEqSameImage!374 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(declare-fun e!1126601 () Bool)

(assert (=> b!1760292 (= e!1126601 (and tp!500153 tp!500149))))

(declare-fun b!1760293 () Bool)

(declare-fun res!792236 () Bool)

(assert (=> b!1760293 (=> res!792236 e!1126595)))

(declare-fun isEmpty!12227 (List!19452) Bool)

(assert (=> b!1760293 (= res!792236 (isEmpty!12227 suffix!1421))))

(declare-fun b!1760294 () Bool)

(declare-fun res!792235 () Bool)

(assert (=> b!1760294 (=> res!792235 e!1126586)))

(declare-fun matchR!2264 (Regex!4791 List!19452) Bool)

(assert (=> b!1760294 (= res!792235 (not (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680348)))))

(declare-fun b!1760295 () Bool)

(declare-fun e!1126583 () Bool)

(assert (=> b!1760295 (= e!1126602 e!1126583)))

(declare-fun res!792244 () Bool)

(assert (=> b!1760295 (=> (not res!792244) (not e!1126583))))

(declare-fun lt!680343 () tuple2!18990)

(assert (=> b!1760295 (= res!792244 (= (_1!10897 lt!680343) token!523))))

(assert (=> b!1760295 (= lt!680343 (get!5897 lt!680352))))

(declare-fun b!1760285 () Bool)

(assert (=> b!1760285 (= e!1126598 e!1126600)))

(declare-fun res!792238 () Bool)

(assert (=> b!1760285 (=> res!792238 e!1126600)))

(declare-fun dynLambda!9333 (Int BalanceConc!12838) TokenValue!3553)

(assert (=> b!1760285 (= res!792238 (not (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) lt!680348)))))

(declare-fun lt!680360 () Unit!33555)

(declare-fun lemmaSemiInverse!601 (TokenValueInjection!6766 BalanceConc!12838) Unit!33555)

(assert (=> b!1760285 (= lt!680360 (lemmaSemiInverse!601 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349))))

(declare-fun res!792229 () Bool)

(assert (=> start!174110 (=> (not res!792229) (not e!1126603))))

(get-info :version)

(assert (=> start!174110 (= res!792229 ((_ is Lexer!3090) thiss!24550))))

(assert (=> start!174110 e!1126603))

(assert (=> start!174110 e!1126599))

(declare-fun e!1126584 () Bool)

(assert (=> start!174110 e!1126584))

(assert (=> start!174110 true))

(declare-fun e!1126585 () Bool)

(declare-fun inv!25169 (Token!6492) Bool)

(assert (=> start!174110 (and (inv!25169 token!523) e!1126585)))

(declare-fun e!1126604 () Bool)

(assert (=> start!174110 e!1126604))

(declare-fun b!1760296 () Bool)

(declare-fun res!792241 () Bool)

(assert (=> b!1760296 (=> (not res!792241) (not e!1126583))))

(assert (=> b!1760296 (= res!792241 (isEmpty!12227 (_2!10897 lt!680343)))))

(declare-fun b!1760297 () Bool)

(declare-fun e!1126587 () Bool)

(declare-fun tp!500147 () Bool)

(assert (=> b!1760297 (= e!1126604 (and e!1126587 tp!500147))))

(declare-fun e!1126591 () Bool)

(assert (=> b!1760298 (= e!1126591 (and tp!500144 tp!500146))))

(declare-fun e!1126589 () Bool)

(declare-fun tp!500148 () Bool)

(declare-fun b!1760299 () Bool)

(declare-fun inv!21 (TokenValue!3553) Bool)

(assert (=> b!1760299 (= e!1126585 (and (inv!21 (value!108368 token!523)) e!1126589 tp!500148))))

(declare-fun b!1760300 () Bool)

(assert (=> b!1760300 (= e!1126596 e!1126590)))

(declare-fun res!792242 () Bool)

(assert (=> b!1760300 (=> (not res!792242) (not e!1126590))))

(assert (=> b!1760300 (= res!792242 (matchR!2264 (regex!3463 lt!680356) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun get!5898 (Option!3948) Rule!6726)

(assert (=> b!1760300 (= lt!680356 (get!5898 lt!680359))))

(declare-fun lt!680344 () List!19452)

(declare-fun lt!680364 () Option!3949)

(declare-fun b!1760301 () Bool)

(assert (=> b!1760301 (= e!1126594 (or (not (= lt!680344 (_2!10897 lt!680362))) (not (= lt!680364 (Some!3948 (tuple2!18991 (_1!10897 lt!680362) lt!680344)))) (= lt!680352 (Some!3948 (tuple2!18991 token!523 Nil!19382)))))))

(assert (=> b!1760301 (= (_2!10897 lt!680362) lt!680344)))

(declare-fun lt!680340 () Unit!33555)

(declare-fun lemmaSamePrefixThenSameSuffix!814 (List!19452 List!19452 List!19452 List!19452 List!19452) Unit!33555)

(assert (=> b!1760301 (= lt!680340 (lemmaSamePrefixThenSameSuffix!814 lt!680348 (_2!10897 lt!680362) lt!680348 lt!680344 lt!680363))))

(declare-fun getSuffix!870 (List!19452 List!19452) List!19452)

(assert (=> b!1760301 (= lt!680344 (getSuffix!870 lt!680363 lt!680348))))

(declare-fun lt!680351 () TokenValue!3553)

(declare-fun lt!680353 () Int)

(assert (=> b!1760301 (= lt!680364 (Some!3948 (tuple2!18991 (Token!6493 lt!680351 (rule!5481 (_1!10897 lt!680362)) lt!680353 lt!680348) (_2!10897 lt!680362))))))

(declare-fun maxPrefixOneRule!1015 (LexerInterface!3092 Rule!6726 List!19452) Option!3949)

(assert (=> b!1760301 (= lt!680364 (maxPrefixOneRule!1015 thiss!24550 (rule!5481 (_1!10897 lt!680362)) lt!680363))))

(declare-fun size!15395 (List!19452) Int)

(assert (=> b!1760301 (= lt!680353 (size!15395 lt!680348))))

(assert (=> b!1760301 (= lt!680351 (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 lt!680348)))))

(declare-fun lt!680341 () Unit!33555)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!393 (LexerInterface!3092 List!19453 List!19452 List!19452 List!19452 Rule!6726) Unit!33555)

(assert (=> b!1760301 (= lt!680341 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!393 thiss!24550 rules!3447 lt!680348 lt!680363 (_2!10897 lt!680362) (rule!5481 (_1!10897 lt!680362))))))

(declare-fun e!1126592 () Bool)

(assert (=> b!1760302 (= e!1126592 (and tp!500151 tp!500154))))

(declare-fun b!1760303 () Bool)

(assert (=> b!1760303 (= e!1126583 (not e!1126595))))

(declare-fun res!792245 () Bool)

(assert (=> b!1760303 (=> res!792245 e!1126595)))

(declare-fun rule!422 () Rule!6726)

(assert (=> b!1760303 (= res!792245 (not (matchR!2264 (regex!3463 rule!422) lt!680342)))))

(declare-fun ruleValid!961 (LexerInterface!3092 Rule!6726) Bool)

(assert (=> b!1760303 (ruleValid!961 thiss!24550 rule!422)))

(declare-fun lt!680350 () Unit!33555)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!484 (LexerInterface!3092 Rule!6726 List!19453) Unit!33555)

(assert (=> b!1760303 (= lt!680350 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!484 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1760304 () Bool)

(declare-fun res!792243 () Bool)

(assert (=> b!1760304 (=> (not res!792243) (not e!1126603))))

(declare-fun contains!3491 (List!19453 Rule!6726) Bool)

(assert (=> b!1760304 (= res!792243 (contains!3491 rules!3447 rule!422))))

(declare-fun b!1760305 () Bool)

(declare-fun tp!500143 () Bool)

(declare-fun inv!25164 (String!22097) Bool)

(declare-fun inv!25170 (TokenValueInjection!6766) Bool)

(assert (=> b!1760305 (= e!1126584 (and tp!500143 (inv!25164 (tag!3829 rule!422)) (inv!25170 (transformation!3463 rule!422)) e!1126591))))

(declare-fun b!1760306 () Bool)

(declare-fun tp!500145 () Bool)

(assert (=> b!1760306 (= e!1126589 (and tp!500145 (inv!25164 (tag!3829 (rule!5481 token!523))) (inv!25170 (transformation!3463 (rule!5481 token!523))) e!1126601))))

(declare-fun b!1760307 () Bool)

(declare-fun res!792228 () Bool)

(assert (=> b!1760307 (=> res!792228 e!1126595)))

(declare-fun prefixMatch!674 (Regex!4791 List!19452) Bool)

(declare-fun rulesRegex!819 (LexerInterface!3092 List!19453) Regex!4791)

(declare-fun head!4076 (List!19452) C!9756)

(assert (=> b!1760307 (= res!792228 (prefixMatch!674 (rulesRegex!819 thiss!24550 rules!3447) (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(declare-fun b!1760308 () Bool)

(declare-fun res!792233 () Bool)

(assert (=> b!1760308 (=> (not res!792233) (not e!1126583))))

(assert (=> b!1760308 (= res!792233 (= (rule!5481 token!523) rule!422))))

(declare-fun tp!500150 () Bool)

(declare-fun b!1760309 () Bool)

(assert (=> b!1760309 (= e!1126587 (and tp!500150 (inv!25164 (tag!3829 (h!24784 rules!3447))) (inv!25170 (transformation!3463 (h!24784 rules!3447))) e!1126592))))

(assert (= (and start!174110 res!792229) b!1760290))

(assert (= (and b!1760290 res!792246) b!1760282))

(assert (= (and b!1760282 res!792240) b!1760304))

(assert (= (and b!1760304 res!792243) b!1760288))

(assert (= (and b!1760288 res!792231) b!1760295))

(assert (= (and b!1760295 res!792244) b!1760296))

(assert (= (and b!1760296 res!792241) b!1760308))

(assert (= (and b!1760308 res!792233) b!1760303))

(assert (= (and b!1760303 (not res!792245)) b!1760293))

(assert (= (and b!1760293 (not res!792236)) b!1760307))

(assert (= (and b!1760307 (not res!792228)) b!1760287))

(assert (= (and b!1760287 res!792239) b!1760300))

(assert (= (and b!1760300 res!792242) b!1760289))

(assert (= (and b!1760287 (not res!792232)) b!1760294))

(assert (= (and b!1760294 (not res!792235)) b!1760284))

(assert (= (and b!1760284 (not res!792230)) b!1760285))

(assert (= (and b!1760285 (not res!792238)) b!1760283))

(assert (= (and b!1760283 (not res!792237)) b!1760291))

(assert (= (and b!1760291 (not res!792234)) b!1760301))

(assert (= (and start!174110 ((_ is Cons!19382) suffix!1421)) b!1760286))

(assert (= b!1760305 b!1760298))

(assert (= start!174110 b!1760305))

(assert (= b!1760306 b!1760292))

(assert (= b!1760299 b!1760306))

(assert (= start!174110 b!1760299))

(assert (= b!1760309 b!1760302))

(assert (= b!1760297 b!1760309))

(assert (= (and start!174110 ((_ is Cons!19383) rules!3447)) b!1760297))

(declare-fun b_lambda!56943 () Bool)

(assert (=> (not b_lambda!56943) (not b!1760283)))

(declare-fun tb!105987 () Bool)

(declare-fun t!164017 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164017) tb!105987))

(declare-fun b!1760325 () Bool)

(declare-fun e!1126616 () Bool)

(declare-fun tp!500157 () Bool)

(declare-fun inv!25171 (Conc!6447) Bool)

(assert (=> b!1760325 (= e!1126616 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) tp!500157))))

(declare-fun result!127526 () Bool)

(declare-fun inv!25172 (BalanceConc!12838) Bool)

(assert (=> tb!105987 (= result!127526 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))) e!1126616))))

(assert (= tb!105987 b!1760325))

(declare-fun m!2175981 () Bool)

(assert (=> b!1760325 m!2175981))

(declare-fun m!2175983 () Bool)

(assert (=> tb!105987 m!2175983))

(assert (=> b!1760283 t!164017))

(declare-fun b_and!132735 () Bool)

(assert (= b_and!132725 (and (=> t!164017 result!127526) b_and!132735)))

(declare-fun t!164019 () Bool)

(declare-fun tb!105989 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164019) tb!105989))

(declare-fun result!127530 () Bool)

(assert (= result!127530 result!127526))

(assert (=> b!1760283 t!164019))

(declare-fun b_and!132737 () Bool)

(assert (= b_and!132729 (and (=> t!164019 result!127530) b_and!132737)))

(declare-fun t!164021 () Bool)

(declare-fun tb!105991 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164021) tb!105991))

(declare-fun result!127532 () Bool)

(assert (= result!127532 result!127526))

(assert (=> b!1760283 t!164021))

(declare-fun b_and!132739 () Bool)

(assert (= b_and!132733 (and (=> t!164021 result!127532) b_and!132739)))

(declare-fun b_lambda!56945 () Bool)

(assert (=> (not b_lambda!56945) (not b!1760285)))

(declare-fun t!164023 () Bool)

(declare-fun tb!105993 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164023) tb!105993))

(declare-fun tp!500158 () Bool)

(declare-fun e!1126617 () Bool)

(declare-fun b!1760326 () Bool)

(assert (=> b!1760326 (= e!1126617 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) tp!500158))))

(declare-fun result!127534 () Bool)

(assert (=> tb!105993 (= result!127534 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) e!1126617))))

(assert (= tb!105993 b!1760326))

(declare-fun m!2175985 () Bool)

(assert (=> b!1760326 m!2175985))

(declare-fun m!2175987 () Bool)

(assert (=> tb!105993 m!2175987))

(assert (=> b!1760285 t!164023))

(declare-fun b_and!132741 () Bool)

(assert (= b_and!132735 (and (=> t!164023 result!127534) b_and!132741)))

(declare-fun tb!105995 () Bool)

(declare-fun t!164025 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164025) tb!105995))

(declare-fun result!127536 () Bool)

(assert (= result!127536 result!127534))

(assert (=> b!1760285 t!164025))

(declare-fun b_and!132743 () Bool)

(assert (= b_and!132737 (and (=> t!164025 result!127536) b_and!132743)))

(declare-fun tb!105997 () Bool)

(declare-fun t!164027 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164027) tb!105997))

(declare-fun result!127538 () Bool)

(assert (= result!127538 result!127534))

(assert (=> b!1760285 t!164027))

(declare-fun b_and!132745 () Bool)

(assert (= b_and!132739 (and (=> t!164027 result!127538) b_and!132745)))

(declare-fun b_lambda!56947 () Bool)

(assert (=> (not b_lambda!56947) (not b!1760285)))

(declare-fun t!164029 () Bool)

(declare-fun tb!105999 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164029) tb!105999))

(declare-fun result!127540 () Bool)

(assert (=> tb!105999 (= result!127540 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(declare-fun m!2175989 () Bool)

(assert (=> tb!105999 m!2175989))

(assert (=> b!1760285 t!164029))

(declare-fun b_and!132747 () Bool)

(assert (= b_and!132723 (and (=> t!164029 result!127540) b_and!132747)))

(declare-fun tb!106001 () Bool)

(declare-fun t!164031 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164031) tb!106001))

(declare-fun result!127544 () Bool)

(assert (= result!127544 result!127540))

(assert (=> b!1760285 t!164031))

(declare-fun b_and!132749 () Bool)

(assert (= b_and!132727 (and (=> t!164031 result!127544) b_and!132749)))

(declare-fun tb!106003 () Bool)

(declare-fun t!164033 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164033) tb!106003))

(declare-fun result!127546 () Bool)

(assert (= result!127546 result!127540))

(assert (=> b!1760285 t!164033))

(declare-fun b_and!132751 () Bool)

(assert (= b_and!132731 (and (=> t!164033 result!127546) b_and!132751)))

(declare-fun m!2175991 () Bool)

(assert (=> b!1760285 m!2175991))

(assert (=> b!1760285 m!2175991))

(declare-fun m!2175993 () Bool)

(assert (=> b!1760285 m!2175993))

(assert (=> b!1760285 m!2175993))

(declare-fun m!2175995 () Bool)

(assert (=> b!1760285 m!2175995))

(declare-fun m!2175997 () Bool)

(assert (=> b!1760285 m!2175997))

(declare-fun m!2175999 () Bool)

(assert (=> b!1760295 m!2175999))

(declare-fun m!2176001 () Bool)

(assert (=> b!1760293 m!2176001))

(declare-fun m!2176003 () Bool)

(assert (=> b!1760303 m!2176003))

(declare-fun m!2176005 () Bool)

(assert (=> b!1760303 m!2176005))

(declare-fun m!2176007 () Bool)

(assert (=> b!1760303 m!2176007))

(declare-fun m!2176009 () Bool)

(assert (=> start!174110 m!2176009))

(declare-fun m!2176011 () Bool)

(assert (=> b!1760307 m!2176011))

(declare-fun m!2176013 () Bool)

(assert (=> b!1760307 m!2176013))

(declare-fun m!2176015 () Bool)

(assert (=> b!1760307 m!2176015))

(assert (=> b!1760307 m!2176011))

(assert (=> b!1760307 m!2176015))

(declare-fun m!2176017 () Bool)

(assert (=> b!1760307 m!2176017))

(declare-fun m!2176019 () Bool)

(assert (=> b!1760287 m!2176019))

(declare-fun m!2176021 () Bool)

(assert (=> b!1760287 m!2176021))

(declare-fun m!2176023 () Bool)

(assert (=> b!1760287 m!2176023))

(declare-fun m!2176025 () Bool)

(assert (=> b!1760287 m!2176025))

(declare-fun m!2176027 () Bool)

(assert (=> b!1760287 m!2176027))

(declare-fun m!2176029 () Bool)

(assert (=> b!1760287 m!2176029))

(declare-fun m!2176031 () Bool)

(assert (=> b!1760287 m!2176031))

(declare-fun m!2176033 () Bool)

(assert (=> b!1760287 m!2176033))

(declare-fun m!2176035 () Bool)

(assert (=> b!1760287 m!2176035))

(declare-fun m!2176037 () Bool)

(assert (=> b!1760287 m!2176037))

(declare-fun m!2176039 () Bool)

(assert (=> b!1760287 m!2176039))

(declare-fun m!2176041 () Bool)

(assert (=> b!1760287 m!2176041))

(declare-fun m!2176043 () Bool)

(assert (=> b!1760287 m!2176043))

(declare-fun m!2176045 () Bool)

(assert (=> b!1760287 m!2176045))

(assert (=> b!1760287 m!2176023))

(declare-fun m!2176047 () Bool)

(assert (=> b!1760287 m!2176047))

(declare-fun m!2176049 () Bool)

(assert (=> b!1760299 m!2176049))

(declare-fun m!2176051 () Bool)

(assert (=> b!1760306 m!2176051))

(declare-fun m!2176053 () Bool)

(assert (=> b!1760306 m!2176053))

(declare-fun m!2176055 () Bool)

(assert (=> b!1760305 m!2176055))

(declare-fun m!2176057 () Bool)

(assert (=> b!1760305 m!2176057))

(declare-fun m!2176059 () Bool)

(assert (=> b!1760304 m!2176059))

(declare-fun m!2176061 () Bool)

(assert (=> b!1760284 m!2176061))

(declare-fun m!2176063 () Bool)

(assert (=> b!1760284 m!2176063))

(declare-fun m!2176065 () Bool)

(assert (=> b!1760296 m!2176065))

(assert (=> b!1760300 m!2176037))

(assert (=> b!1760300 m!2176037))

(declare-fun m!2176067 () Bool)

(assert (=> b!1760300 m!2176067))

(assert (=> b!1760300 m!2176067))

(declare-fun m!2176069 () Bool)

(assert (=> b!1760300 m!2176069))

(declare-fun m!2176071 () Bool)

(assert (=> b!1760300 m!2176071))

(declare-fun m!2176073 () Bool)

(assert (=> b!1760309 m!2176073))

(declare-fun m!2176075 () Bool)

(assert (=> b!1760309 m!2176075))

(declare-fun m!2176077 () Bool)

(assert (=> b!1760290 m!2176077))

(declare-fun m!2176079 () Bool)

(assert (=> b!1760283 m!2176079))

(declare-fun m!2176081 () Bool)

(assert (=> b!1760291 m!2176081))

(declare-fun m!2176083 () Bool)

(assert (=> b!1760291 m!2176083))

(declare-fun m!2176085 () Bool)

(assert (=> b!1760291 m!2176085))

(declare-fun m!2176087 () Bool)

(assert (=> b!1760291 m!2176087))

(assert (=> b!1760291 m!2176085))

(declare-fun m!2176089 () Bool)

(assert (=> b!1760291 m!2176089))

(declare-fun m!2176091 () Bool)

(assert (=> b!1760288 m!2176091))

(declare-fun m!2176093 () Bool)

(assert (=> b!1760288 m!2176093))

(declare-fun m!2176095 () Bool)

(assert (=> b!1760288 m!2176095))

(assert (=> b!1760288 m!2176095))

(declare-fun m!2176097 () Bool)

(assert (=> b!1760288 m!2176097))

(declare-fun m!2176099 () Bool)

(assert (=> b!1760301 m!2176099))

(declare-fun m!2176101 () Bool)

(assert (=> b!1760301 m!2176101))

(declare-fun m!2176103 () Bool)

(assert (=> b!1760301 m!2176103))

(declare-fun m!2176105 () Bool)

(assert (=> b!1760301 m!2176105))

(declare-fun m!2176107 () Bool)

(assert (=> b!1760301 m!2176107))

(assert (=> b!1760301 m!2176101))

(declare-fun m!2176109 () Bool)

(assert (=> b!1760301 m!2176109))

(declare-fun m!2176111 () Bool)

(assert (=> b!1760301 m!2176111))

(declare-fun m!2176113 () Bool)

(assert (=> b!1760294 m!2176113))

(declare-fun m!2176115 () Bool)

(assert (=> b!1760282 m!2176115))

(check-sat (not b_lambda!56943) (not b_next!49385) (not b!1760293) b_and!132741 (not b!1760307) b_and!132745 (not b_next!49383) (not b!1760288) (not b!1760306) (not b!1760291) (not b!1760294) (not b_lambda!56945) (not b_next!49379) (not b!1760296) (not b!1760287) (not b!1760290) (not tb!105987) b_and!132747 (not b!1760299) (not b_lambda!56947) b_and!132749 tp_is_empty!7825 (not b!1760309) (not tb!105993) (not tb!105999) (not b!1760285) (not b!1760282) (not b!1760305) b_and!132751 (not b!1760295) b_and!132743 (not b!1760284) (not b_next!49381) (not b!1760300) (not b!1760303) (not b!1760304) (not b!1760301) (not b_next!49375) (not b!1760297) (not b!1760326) (not b_next!49377) (not start!174110) (not b!1760286) (not b!1760325))
(check-sat (not b_next!49385) b_and!132741 b_and!132747 b_and!132745 (not b_next!49383) b_and!132749 b_and!132751 b_and!132743 (not b_next!49381) (not b_next!49375) (not b_next!49379) (not b_next!49377))
(get-model)

(declare-fun d!537592 () Bool)

(assert (=> d!537592 (= (isEmpty!12226 rules!3447) ((_ is Nil!19383) rules!3447))))

(assert (=> b!1760290 d!537592))

(declare-fun d!537594 () Bool)

(declare-fun c!286793 () Bool)

(assert (=> d!537594 (= c!286793 (isEmpty!12227 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(declare-fun e!1126666 () Bool)

(assert (=> d!537594 (= (prefixMatch!674 (rulesRegex!819 thiss!24550 rules!3447) (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))) e!1126666)))

(declare-fun b!1760413 () Bool)

(declare-fun lostCause!571 (Regex!4791) Bool)

(assert (=> b!1760413 (= e!1126666 (not (lostCause!571 (rulesRegex!819 thiss!24550 rules!3447))))))

(declare-fun b!1760414 () Bool)

(declare-fun derivativeStep!1230 (Regex!4791 C!9756) Regex!4791)

(declare-fun tail!2633 (List!19452) List!19452)

(assert (=> b!1760414 (= e!1126666 (prefixMatch!674 (derivativeStep!1230 (rulesRegex!819 thiss!24550 rules!3447) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))) (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (= (and d!537594 c!286793) b!1760413))

(assert (= (and d!537594 (not c!286793)) b!1760414))

(assert (=> d!537594 m!2176015))

(declare-fun m!2176175 () Bool)

(assert (=> d!537594 m!2176175))

(assert (=> b!1760413 m!2176011))

(declare-fun m!2176177 () Bool)

(assert (=> b!1760413 m!2176177))

(assert (=> b!1760414 m!2176015))

(declare-fun m!2176179 () Bool)

(assert (=> b!1760414 m!2176179))

(assert (=> b!1760414 m!2176011))

(assert (=> b!1760414 m!2176179))

(declare-fun m!2176181 () Bool)

(assert (=> b!1760414 m!2176181))

(assert (=> b!1760414 m!2176015))

(declare-fun m!2176183 () Bool)

(assert (=> b!1760414 m!2176183))

(assert (=> b!1760414 m!2176181))

(assert (=> b!1760414 m!2176183))

(declare-fun m!2176185 () Bool)

(assert (=> b!1760414 m!2176185))

(assert (=> b!1760307 d!537594))

(declare-fun d!537596 () Bool)

(declare-fun lt!680380 () Unit!33555)

(declare-fun lemma!384 (List!19453 LexerInterface!3092 List!19453) Unit!33555)

(assert (=> d!537596 (= lt!680380 (lemma!384 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70135 () Int)

(declare-datatypes ((List!19456 0))(
  ( (Nil!19386) (Cons!19386 (h!24787 Regex!4791) (t!164099 List!19456)) )
))
(declare-fun generalisedUnion!392 (List!19456) Regex!4791)

(declare-fun map!3995 (List!19453 Int) List!19456)

(assert (=> d!537596 (= (rulesRegex!819 thiss!24550 rules!3447) (generalisedUnion!392 (map!3995 rules!3447 lambda!70135)))))

(declare-fun bs!404007 () Bool)

(assert (= bs!404007 d!537596))

(declare-fun m!2176187 () Bool)

(assert (=> bs!404007 m!2176187))

(declare-fun m!2176189 () Bool)

(assert (=> bs!404007 m!2176189))

(assert (=> bs!404007 m!2176189))

(declare-fun m!2176191 () Bool)

(assert (=> bs!404007 m!2176191))

(assert (=> b!1760307 d!537596))

(declare-fun e!1126672 () Bool)

(declare-fun lt!680383 () List!19452)

(declare-fun b!1760426 () Bool)

(assert (=> b!1760426 (= e!1126672 (or (not (= (Cons!19382 (head!4076 suffix!1421) Nil!19382) Nil!19382)) (= lt!680383 lt!680342)))))

(declare-fun b!1760424 () Bool)

(declare-fun e!1126671 () List!19452)

(assert (=> b!1760424 (= e!1126671 (Cons!19382 (h!24783 lt!680342) (++!5287 (t!164035 lt!680342) (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(declare-fun b!1760423 () Bool)

(assert (=> b!1760423 (= e!1126671 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))

(declare-fun d!537598 () Bool)

(assert (=> d!537598 e!1126672))

(declare-fun res!792302 () Bool)

(assert (=> d!537598 (=> (not res!792302) (not e!1126672))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2798 (List!19452) (InoxSet C!9756))

(assert (=> d!537598 (= res!792302 (= (content!2798 lt!680383) ((_ map or) (content!2798 lt!680342) (content!2798 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (=> d!537598 (= lt!680383 e!1126671)))

(declare-fun c!286796 () Bool)

(assert (=> d!537598 (= c!286796 ((_ is Nil!19382) lt!680342))))

(assert (=> d!537598 (= (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)) lt!680383)))

(declare-fun b!1760425 () Bool)

(declare-fun res!792301 () Bool)

(assert (=> b!1760425 (=> (not res!792301) (not e!1126672))))

(assert (=> b!1760425 (= res!792301 (= (size!15395 lt!680383) (+ (size!15395 lt!680342) (size!15395 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (= (and d!537598 c!286796) b!1760423))

(assert (= (and d!537598 (not c!286796)) b!1760424))

(assert (= (and d!537598 res!792302) b!1760425))

(assert (= (and b!1760425 res!792301) b!1760426))

(declare-fun m!2176193 () Bool)

(assert (=> b!1760424 m!2176193))

(declare-fun m!2176195 () Bool)

(assert (=> d!537598 m!2176195))

(declare-fun m!2176197 () Bool)

(assert (=> d!537598 m!2176197))

(declare-fun m!2176199 () Bool)

(assert (=> d!537598 m!2176199))

(declare-fun m!2176201 () Bool)

(assert (=> b!1760425 m!2176201))

(declare-fun m!2176203 () Bool)

(assert (=> b!1760425 m!2176203))

(declare-fun m!2176205 () Bool)

(assert (=> b!1760425 m!2176205))

(assert (=> b!1760307 d!537598))

(declare-fun d!537600 () Bool)

(assert (=> d!537600 (= (head!4076 suffix!1421) (h!24783 suffix!1421))))

(assert (=> b!1760307 d!537600))

(declare-fun d!537602 () Bool)

(declare-fun isEmpty!12230 (Option!3949) Bool)

(assert (=> d!537602 (= (isDefined!3292 lt!680352) (not (isEmpty!12230 lt!680352)))))

(declare-fun bs!404008 () Bool)

(assert (= bs!404008 d!537602))

(declare-fun m!2176207 () Bool)

(assert (=> bs!404008 m!2176207))

(assert (=> b!1760288 d!537602))

(declare-fun b!1760505 () Bool)

(declare-fun res!792367 () Bool)

(declare-fun e!1126713 () Bool)

(assert (=> b!1760505 (=> (not res!792367) (not e!1126713))))

(declare-fun lt!680468 () Option!3949)

(assert (=> b!1760505 (= res!792367 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun b!1760506 () Bool)

(declare-fun res!792366 () Bool)

(assert (=> b!1760506 (=> (not res!792366) (not e!1126713))))

(assert (=> b!1760506 (= res!792366 (= (value!108368 (_1!10897 (get!5897 lt!680468))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun b!1760507 () Bool)

(declare-fun e!1126712 () Option!3949)

(declare-fun lt!680467 () Option!3949)

(declare-fun lt!680465 () Option!3949)

(assert (=> b!1760507 (= e!1126712 (ite (and ((_ is None!3948) lt!680467) ((_ is None!3948) lt!680465)) None!3948 (ite ((_ is None!3948) lt!680465) lt!680467 (ite ((_ is None!3948) lt!680467) lt!680465 (ite (>= (size!15393 (_1!10897 (v!25409 lt!680467))) (size!15393 (_1!10897 (v!25409 lt!680465)))) lt!680467 lt!680465)))))))

(declare-fun call!110637 () Option!3949)

(assert (=> b!1760507 (= lt!680467 call!110637)))

(assert (=> b!1760507 (= lt!680465 (maxPrefix!1646 thiss!24550 (t!164036 rules!3447) lt!680342))))

(declare-fun b!1760508 () Bool)

(declare-fun res!792370 () Bool)

(assert (=> b!1760508 (=> (not res!792370) (not e!1126713))))

(assert (=> b!1760508 (= res!792370 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))) (_2!10897 (get!5897 lt!680468))) lt!680342))))

(declare-fun bm!110632 () Bool)

(assert (=> bm!110632 (= call!110637 (maxPrefixOneRule!1015 thiss!24550 (h!24784 rules!3447) lt!680342))))

(declare-fun b!1760509 () Bool)

(declare-fun e!1126711 () Bool)

(assert (=> b!1760509 (= e!1126711 e!1126713)))

(declare-fun res!792369 () Bool)

(assert (=> b!1760509 (=> (not res!792369) (not e!1126713))))

(assert (=> b!1760509 (= res!792369 (isDefined!3292 lt!680468))))

(declare-fun d!537604 () Bool)

(assert (=> d!537604 e!1126711))

(declare-fun res!792368 () Bool)

(assert (=> d!537604 (=> res!792368 e!1126711)))

(assert (=> d!537604 (= res!792368 (isEmpty!12230 lt!680468))))

(assert (=> d!537604 (= lt!680468 e!1126712)))

(declare-fun c!286805 () Bool)

(assert (=> d!537604 (= c!286805 (and ((_ is Cons!19383) rules!3447) ((_ is Nil!19383) (t!164036 rules!3447))))))

(declare-fun lt!680466 () Unit!33555)

(declare-fun lt!680469 () Unit!33555)

(assert (=> d!537604 (= lt!680466 lt!680469)))

(assert (=> d!537604 (isPrefix!1703 lt!680342 lt!680342)))

(declare-fun lemmaIsPrefixRefl!1128 (List!19452 List!19452) Unit!33555)

(assert (=> d!537604 (= lt!680469 (lemmaIsPrefixRefl!1128 lt!680342 lt!680342))))

(declare-fun rulesValidInductive!1166 (LexerInterface!3092 List!19453) Bool)

(assert (=> d!537604 (rulesValidInductive!1166 thiss!24550 rules!3447)))

(assert (=> d!537604 (= (maxPrefix!1646 thiss!24550 rules!3447 lt!680342) lt!680468)))

(declare-fun b!1760510 () Bool)

(declare-fun res!792365 () Bool)

(assert (=> b!1760510 (=> (not res!792365) (not e!1126713))))

(assert (=> b!1760510 (= res!792365 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))) (originalCharacters!4277 (_1!10897 (get!5897 lt!680468)))))))

(declare-fun b!1760511 () Bool)

(declare-fun res!792371 () Bool)

(assert (=> b!1760511 (=> (not res!792371) (not e!1126713))))

(assert (=> b!1760511 (= res!792371 (< (size!15395 (_2!10897 (get!5897 lt!680468))) (size!15395 lt!680342)))))

(declare-fun b!1760512 () Bool)

(assert (=> b!1760512 (= e!1126712 call!110637)))

(declare-fun b!1760513 () Bool)

(assert (=> b!1760513 (= e!1126713 (contains!3491 rules!3447 (rule!5481 (_1!10897 (get!5897 lt!680468)))))))

(assert (= (and d!537604 c!286805) b!1760512))

(assert (= (and d!537604 (not c!286805)) b!1760507))

(assert (= (or b!1760512 b!1760507) bm!110632))

(assert (= (and d!537604 (not res!792368)) b!1760509))

(assert (= (and b!1760509 res!792369) b!1760510))

(assert (= (and b!1760510 res!792365) b!1760511))

(assert (= (and b!1760511 res!792371) b!1760508))

(assert (= (and b!1760508 res!792370) b!1760506))

(assert (= (and b!1760506 res!792366) b!1760505))

(assert (= (and b!1760505 res!792367) b!1760513))

(declare-fun m!2176307 () Bool)

(assert (=> b!1760508 m!2176307))

(declare-fun m!2176309 () Bool)

(assert (=> b!1760508 m!2176309))

(assert (=> b!1760508 m!2176309))

(declare-fun m!2176311 () Bool)

(assert (=> b!1760508 m!2176311))

(assert (=> b!1760508 m!2176311))

(declare-fun m!2176313 () Bool)

(assert (=> b!1760508 m!2176313))

(assert (=> b!1760510 m!2176307))

(assert (=> b!1760510 m!2176309))

(assert (=> b!1760510 m!2176309))

(assert (=> b!1760510 m!2176311))

(declare-fun m!2176315 () Bool)

(assert (=> bm!110632 m!2176315))

(assert (=> b!1760506 m!2176307))

(declare-fun m!2176317 () Bool)

(assert (=> b!1760506 m!2176317))

(assert (=> b!1760506 m!2176317))

(declare-fun m!2176319 () Bool)

(assert (=> b!1760506 m!2176319))

(assert (=> b!1760513 m!2176307))

(declare-fun m!2176321 () Bool)

(assert (=> b!1760513 m!2176321))

(declare-fun m!2176323 () Bool)

(assert (=> b!1760507 m!2176323))

(assert (=> b!1760511 m!2176307))

(declare-fun m!2176325 () Bool)

(assert (=> b!1760511 m!2176325))

(assert (=> b!1760511 m!2176203))

(declare-fun m!2176327 () Bool)

(assert (=> d!537604 m!2176327))

(declare-fun m!2176329 () Bool)

(assert (=> d!537604 m!2176329))

(declare-fun m!2176331 () Bool)

(assert (=> d!537604 m!2176331))

(declare-fun m!2176333 () Bool)

(assert (=> d!537604 m!2176333))

(assert (=> b!1760505 m!2176307))

(assert (=> b!1760505 m!2176309))

(assert (=> b!1760505 m!2176309))

(assert (=> b!1760505 m!2176311))

(assert (=> b!1760505 m!2176311))

(declare-fun m!2176353 () Bool)

(assert (=> b!1760505 m!2176353))

(declare-fun m!2176357 () Bool)

(assert (=> b!1760509 m!2176357))

(assert (=> b!1760288 d!537604))

(declare-fun d!537624 () Bool)

(declare-fun list!7864 (Conc!6447) List!19452)

(assert (=> d!537624 (= (list!7861 (charsOf!2112 token!523)) (list!7864 (c!286775 (charsOf!2112 token!523))))))

(declare-fun bs!404012 () Bool)

(assert (= bs!404012 d!537624))

(declare-fun m!2176371 () Bool)

(assert (=> bs!404012 m!2176371))

(assert (=> b!1760288 d!537624))

(declare-fun d!537630 () Bool)

(declare-fun lt!680480 () BalanceConc!12838)

(assert (=> d!537630 (= (list!7861 lt!680480) (originalCharacters!4277 token!523))))

(assert (=> d!537630 (= lt!680480 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))

(assert (=> d!537630 (= (charsOf!2112 token!523) lt!680480)))

(declare-fun b_lambda!56951 () Bool)

(assert (=> (not b_lambda!56951) (not d!537630)))

(declare-fun t!164038 () Bool)

(declare-fun tb!106005 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) t!164038) tb!106005))

(declare-fun b!1760523 () Bool)

(declare-fun e!1126717 () Bool)

(declare-fun tp!500159 () Bool)

(assert (=> b!1760523 (= e!1126717 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))) tp!500159))))

(declare-fun result!127548 () Bool)

(assert (=> tb!106005 (= result!127548 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))) e!1126717))))

(assert (= tb!106005 b!1760523))

(declare-fun m!2176375 () Bool)

(assert (=> b!1760523 m!2176375))

(declare-fun m!2176377 () Bool)

(assert (=> tb!106005 m!2176377))

(assert (=> d!537630 t!164038))

(declare-fun b_and!132759 () Bool)

(assert (= b_and!132741 (and (=> t!164038 result!127548) b_and!132759)))

(declare-fun tb!106007 () Bool)

(declare-fun t!164040 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) t!164040) tb!106007))

(declare-fun result!127550 () Bool)

(assert (= result!127550 result!127548))

(assert (=> d!537630 t!164040))

(declare-fun b_and!132761 () Bool)

(assert (= b_and!132743 (and (=> t!164040 result!127550) b_and!132761)))

(declare-fun t!164042 () Bool)

(declare-fun tb!106009 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) t!164042) tb!106009))

(declare-fun result!127552 () Bool)

(assert (= result!127552 result!127548))

(assert (=> d!537630 t!164042))

(declare-fun b_and!132763 () Bool)

(assert (= b_and!132745 (and (=> t!164042 result!127552) b_and!132763)))

(declare-fun m!2176379 () Bool)

(assert (=> d!537630 m!2176379))

(declare-fun m!2176381 () Bool)

(assert (=> d!537630 m!2176381))

(assert (=> b!1760288 d!537630))

(declare-fun d!537634 () Bool)

(assert (=> d!537634 (= (inv!25164 (tag!3829 (h!24784 rules!3447))) (= (mod (str.len (value!108367 (tag!3829 (h!24784 rules!3447)))) 2) 0))))

(assert (=> b!1760309 d!537634))

(declare-fun d!537636 () Bool)

(declare-fun res!792385 () Bool)

(declare-fun e!1126728 () Bool)

(assert (=> d!537636 (=> (not res!792385) (not e!1126728))))

(declare-fun semiInverseModEq!1376 (Int Int) Bool)

(assert (=> d!537636 (= res!792385 (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))))))

(assert (=> d!537636 (= (inv!25170 (transformation!3463 (h!24784 rules!3447))) e!1126728)))

(declare-fun b!1760538 () Bool)

(declare-fun equivClasses!1317 (Int Int) Bool)

(assert (=> b!1760538 (= e!1126728 (equivClasses!1317 (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))))))

(assert (= (and d!537636 res!792385) b!1760538))

(declare-fun m!2176383 () Bool)

(assert (=> d!537636 m!2176383))

(declare-fun m!2176385 () Bool)

(assert (=> b!1760538 m!2176385))

(assert (=> b!1760309 d!537636))

(declare-fun d!537638 () Bool)

(declare-fun isBalanced!2014 (Conc!6447) Bool)

(assert (=> d!537638 (= (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (isBalanced!2014 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(declare-fun bs!404014 () Bool)

(assert (= bs!404014 d!537638))

(declare-fun m!2176401 () Bool)

(assert (=> bs!404014 m!2176401))

(assert (=> tb!105993 d!537638))

(declare-fun b!1760558 () Bool)

(declare-fun e!1126742 () Bool)

(assert (=> b!1760558 (= e!1126742 (>= (size!15395 (++!5287 lt!680348 (_2!10897 lt!680362))) (size!15395 lt!680348)))))

(declare-fun d!537646 () Bool)

(assert (=> d!537646 e!1126742))

(declare-fun res!792401 () Bool)

(assert (=> d!537646 (=> res!792401 e!1126742)))

(declare-fun lt!680497 () Bool)

(assert (=> d!537646 (= res!792401 (not lt!680497))))

(declare-fun e!1126741 () Bool)

(assert (=> d!537646 (= lt!680497 e!1126741)))

(declare-fun res!792398 () Bool)

(assert (=> d!537646 (=> res!792398 e!1126741)))

(assert (=> d!537646 (= res!792398 ((_ is Nil!19382) lt!680348))))

(assert (=> d!537646 (= (isPrefix!1703 lt!680348 (++!5287 lt!680348 (_2!10897 lt!680362))) lt!680497)))

(declare-fun b!1760555 () Bool)

(declare-fun e!1126743 () Bool)

(assert (=> b!1760555 (= e!1126741 e!1126743)))

(declare-fun res!792400 () Bool)

(assert (=> b!1760555 (=> (not res!792400) (not e!1126743))))

(assert (=> b!1760555 (= res!792400 (not ((_ is Nil!19382) (++!5287 lt!680348 (_2!10897 lt!680362)))))))

(declare-fun b!1760557 () Bool)

(assert (=> b!1760557 (= e!1126743 (isPrefix!1703 (tail!2633 lt!680348) (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362)))))))

(declare-fun b!1760556 () Bool)

(declare-fun res!792399 () Bool)

(assert (=> b!1760556 (=> (not res!792399) (not e!1126743))))

(assert (=> b!1760556 (= res!792399 (= (head!4076 lt!680348) (head!4076 (++!5287 lt!680348 (_2!10897 lt!680362)))))))

(assert (= (and d!537646 (not res!792398)) b!1760555))

(assert (= (and b!1760555 res!792400) b!1760556))

(assert (= (and b!1760556 res!792399) b!1760557))

(assert (= (and d!537646 (not res!792401)) b!1760558))

(assert (=> b!1760558 m!2176023))

(declare-fun m!2176409 () Bool)

(assert (=> b!1760558 m!2176409))

(assert (=> b!1760558 m!2176099))

(declare-fun m!2176411 () Bool)

(assert (=> b!1760557 m!2176411))

(assert (=> b!1760557 m!2176023))

(declare-fun m!2176413 () Bool)

(assert (=> b!1760557 m!2176413))

(assert (=> b!1760557 m!2176411))

(assert (=> b!1760557 m!2176413))

(declare-fun m!2176415 () Bool)

(assert (=> b!1760557 m!2176415))

(declare-fun m!2176417 () Bool)

(assert (=> b!1760556 m!2176417))

(assert (=> b!1760556 m!2176023))

(declare-fun m!2176419 () Bool)

(assert (=> b!1760556 m!2176419))

(assert (=> b!1760287 d!537646))

(declare-fun b!1760562 () Bool)

(declare-fun e!1126745 () Bool)

(assert (=> b!1760562 (= e!1126745 (>= (size!15395 lt!680363) (size!15395 lt!680342)))))

(declare-fun d!537652 () Bool)

(assert (=> d!537652 e!1126745))

(declare-fun res!792405 () Bool)

(assert (=> d!537652 (=> res!792405 e!1126745)))

(declare-fun lt!680498 () Bool)

(assert (=> d!537652 (= res!792405 (not lt!680498))))

(declare-fun e!1126744 () Bool)

(assert (=> d!537652 (= lt!680498 e!1126744)))

(declare-fun res!792402 () Bool)

(assert (=> d!537652 (=> res!792402 e!1126744)))

(assert (=> d!537652 (= res!792402 ((_ is Nil!19382) lt!680342))))

(assert (=> d!537652 (= (isPrefix!1703 lt!680342 lt!680363) lt!680498)))

(declare-fun b!1760559 () Bool)

(declare-fun e!1126746 () Bool)

(assert (=> b!1760559 (= e!1126744 e!1126746)))

(declare-fun res!792404 () Bool)

(assert (=> b!1760559 (=> (not res!792404) (not e!1126746))))

(assert (=> b!1760559 (= res!792404 (not ((_ is Nil!19382) lt!680363)))))

(declare-fun b!1760561 () Bool)

(assert (=> b!1760561 (= e!1126746 (isPrefix!1703 (tail!2633 lt!680342) (tail!2633 lt!680363)))))

(declare-fun b!1760560 () Bool)

(declare-fun res!792403 () Bool)

(assert (=> b!1760560 (=> (not res!792403) (not e!1126746))))

(assert (=> b!1760560 (= res!792403 (= (head!4076 lt!680342) (head!4076 lt!680363)))))

(assert (= (and d!537652 (not res!792402)) b!1760559))

(assert (= (and b!1760559 res!792404) b!1760560))

(assert (= (and b!1760560 res!792403) b!1760561))

(assert (= (and d!537652 (not res!792405)) b!1760562))

(declare-fun m!2176421 () Bool)

(assert (=> b!1760562 m!2176421))

(assert (=> b!1760562 m!2176203))

(declare-fun m!2176423 () Bool)

(assert (=> b!1760561 m!2176423))

(declare-fun m!2176425 () Bool)

(assert (=> b!1760561 m!2176425))

(assert (=> b!1760561 m!2176423))

(assert (=> b!1760561 m!2176425))

(declare-fun m!2176427 () Bool)

(assert (=> b!1760561 m!2176427))

(declare-fun m!2176429 () Bool)

(assert (=> b!1760560 m!2176429))

(declare-fun m!2176431 () Bool)

(assert (=> b!1760560 m!2176431))

(assert (=> b!1760287 d!537652))

(declare-fun d!537654 () Bool)

(assert (=> d!537654 (isPrefix!1703 lt!680342 (++!5287 lt!680342 suffix!1421))))

(declare-fun lt!680502 () Unit!33555)

(declare-fun choose!10897 (List!19452 List!19452) Unit!33555)

(assert (=> d!537654 (= lt!680502 (choose!10897 lt!680342 suffix!1421))))

(assert (=> d!537654 (= (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680342 suffix!1421) lt!680502)))

(declare-fun bs!404017 () Bool)

(assert (= bs!404017 d!537654))

(assert (=> bs!404017 m!2176039))

(assert (=> bs!404017 m!2176039))

(declare-fun m!2176433 () Bool)

(assert (=> bs!404017 m!2176433))

(declare-fun m!2176435 () Bool)

(assert (=> bs!404017 m!2176435))

(assert (=> b!1760287 d!537654))

(declare-fun d!537656 () Bool)

(assert (=> d!537656 (= (list!7861 lt!680349) (list!7864 (c!286775 lt!680349)))))

(declare-fun bs!404018 () Bool)

(assert (= bs!404018 d!537656))

(declare-fun m!2176437 () Bool)

(assert (=> bs!404018 m!2176437))

(assert (=> b!1760287 d!537656))

(declare-fun b!1760571 () Bool)

(declare-fun e!1126751 () Bool)

(assert (=> b!1760571 (= e!1126751 (>= (size!15395 lt!680363) (size!15395 lt!680348)))))

(declare-fun d!537658 () Bool)

(assert (=> d!537658 e!1126751))

(declare-fun res!792409 () Bool)

(assert (=> d!537658 (=> res!792409 e!1126751)))

(declare-fun lt!680503 () Bool)

(assert (=> d!537658 (= res!792409 (not lt!680503))))

(declare-fun e!1126750 () Bool)

(assert (=> d!537658 (= lt!680503 e!1126750)))

(declare-fun res!792406 () Bool)

(assert (=> d!537658 (=> res!792406 e!1126750)))

(assert (=> d!537658 (= res!792406 ((_ is Nil!19382) lt!680348))))

(assert (=> d!537658 (= (isPrefix!1703 lt!680348 lt!680363) lt!680503)))

(declare-fun b!1760568 () Bool)

(declare-fun e!1126752 () Bool)

(assert (=> b!1760568 (= e!1126750 e!1126752)))

(declare-fun res!792408 () Bool)

(assert (=> b!1760568 (=> (not res!792408) (not e!1126752))))

(assert (=> b!1760568 (= res!792408 (not ((_ is Nil!19382) lt!680363)))))

(declare-fun b!1760570 () Bool)

(assert (=> b!1760570 (= e!1126752 (isPrefix!1703 (tail!2633 lt!680348) (tail!2633 lt!680363)))))

(declare-fun b!1760569 () Bool)

(declare-fun res!792407 () Bool)

(assert (=> b!1760569 (=> (not res!792407) (not e!1126752))))

(assert (=> b!1760569 (= res!792407 (= (head!4076 lt!680348) (head!4076 lt!680363)))))

(assert (= (and d!537658 (not res!792406)) b!1760568))

(assert (= (and b!1760568 res!792408) b!1760569))

(assert (= (and b!1760569 res!792407) b!1760570))

(assert (= (and d!537658 (not res!792409)) b!1760571))

(assert (=> b!1760571 m!2176421))

(assert (=> b!1760571 m!2176099))

(assert (=> b!1760570 m!2176411))

(assert (=> b!1760570 m!2176425))

(assert (=> b!1760570 m!2176411))

(assert (=> b!1760570 m!2176425))

(declare-fun m!2176439 () Bool)

(assert (=> b!1760570 m!2176439))

(assert (=> b!1760569 m!2176417))

(assert (=> b!1760569 m!2176431))

(assert (=> b!1760287 d!537658))

(declare-fun d!537660 () Bool)

(declare-fun e!1126759 () Bool)

(assert (=> d!537660 e!1126759))

(declare-fun res!792414 () Bool)

(assert (=> d!537660 (=> (not res!792414) (not e!1126759))))

(assert (=> d!537660 (= res!792414 (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun lt!680509 () Unit!33555)

(declare-fun choose!10898 (LexerInterface!3092 List!19453 List!19452 Token!6492) Unit!33555)

(assert (=> d!537660 (= lt!680509 (choose!10898 thiss!24550 rules!3447 lt!680363 (_1!10897 lt!680362)))))

(assert (=> d!537660 (rulesInvariant!2761 thiss!24550 rules!3447)))

(assert (=> d!537660 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!511 thiss!24550 rules!3447 lt!680363 (_1!10897 lt!680362)) lt!680509)))

(declare-fun b!1760581 () Bool)

(declare-fun res!792415 () Bool)

(assert (=> b!1760581 (=> (not res!792415) (not e!1126759))))

(assert (=> b!1760581 (= res!792415 (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun b!1760582 () Bool)

(assert (=> b!1760582 (= e!1126759 (= (rule!5481 (_1!10897 lt!680362)) (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(assert (= (and d!537660 res!792414) b!1760581))

(assert (= (and b!1760581 res!792415) b!1760582))

(assert (=> d!537660 m!2176045))

(assert (=> d!537660 m!2176045))

(declare-fun m!2176453 () Bool)

(assert (=> d!537660 m!2176453))

(declare-fun m!2176455 () Bool)

(assert (=> d!537660 m!2176455))

(assert (=> d!537660 m!2176115))

(assert (=> b!1760581 m!2176045))

(assert (=> b!1760581 m!2176037))

(assert (=> b!1760581 m!2176067))

(assert (=> b!1760581 m!2176045))

(declare-fun m!2176457 () Bool)

(assert (=> b!1760581 m!2176457))

(assert (=> b!1760581 m!2176067))

(declare-fun m!2176459 () Bool)

(assert (=> b!1760581 m!2176459))

(assert (=> b!1760581 m!2176037))

(assert (=> b!1760582 m!2176045))

(assert (=> b!1760582 m!2176045))

(assert (=> b!1760582 m!2176457))

(assert (=> b!1760287 d!537660))

(declare-fun d!537670 () Bool)

(declare-fun isEmpty!12231 (Option!3948) Bool)

(assert (=> d!537670 (= (isDefined!3291 lt!680359) (not (isEmpty!12231 lt!680359)))))

(declare-fun bs!404021 () Bool)

(assert (= bs!404021 d!537670))

(declare-fun m!2176461 () Bool)

(assert (=> bs!404021 m!2176461))

(assert (=> b!1760287 d!537670))

(declare-fun b!1760583 () Bool)

(declare-fun res!792418 () Bool)

(declare-fun e!1126762 () Bool)

(assert (=> b!1760583 (=> (not res!792418) (not e!1126762))))

(declare-fun lt!680513 () Option!3949)

(assert (=> b!1760583 (= res!792418 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun b!1760584 () Bool)

(declare-fun res!792417 () Bool)

(assert (=> b!1760584 (=> (not res!792417) (not e!1126762))))

(assert (=> b!1760584 (= res!792417 (= (value!108368 (_1!10897 (get!5897 lt!680513))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun b!1760585 () Bool)

(declare-fun e!1126761 () Option!3949)

(declare-fun lt!680512 () Option!3949)

(declare-fun lt!680510 () Option!3949)

(assert (=> b!1760585 (= e!1126761 (ite (and ((_ is None!3948) lt!680512) ((_ is None!3948) lt!680510)) None!3948 (ite ((_ is None!3948) lt!680510) lt!680512 (ite ((_ is None!3948) lt!680512) lt!680510 (ite (>= (size!15393 (_1!10897 (v!25409 lt!680512))) (size!15393 (_1!10897 (v!25409 lt!680510)))) lt!680512 lt!680510)))))))

(declare-fun call!110639 () Option!3949)

(assert (=> b!1760585 (= lt!680512 call!110639)))

(assert (=> b!1760585 (= lt!680510 (maxPrefix!1646 thiss!24550 (t!164036 rules!3447) lt!680363))))

(declare-fun b!1760586 () Bool)

(declare-fun res!792421 () Bool)

(assert (=> b!1760586 (=> (not res!792421) (not e!1126762))))

(assert (=> b!1760586 (= res!792421 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))) (_2!10897 (get!5897 lt!680513))) lt!680363))))

(declare-fun bm!110634 () Bool)

(assert (=> bm!110634 (= call!110639 (maxPrefixOneRule!1015 thiss!24550 (h!24784 rules!3447) lt!680363))))

(declare-fun b!1760587 () Bool)

(declare-fun e!1126760 () Bool)

(assert (=> b!1760587 (= e!1126760 e!1126762)))

(declare-fun res!792420 () Bool)

(assert (=> b!1760587 (=> (not res!792420) (not e!1126762))))

(assert (=> b!1760587 (= res!792420 (isDefined!3292 lt!680513))))

(declare-fun d!537672 () Bool)

(assert (=> d!537672 e!1126760))

(declare-fun res!792419 () Bool)

(assert (=> d!537672 (=> res!792419 e!1126760)))

(assert (=> d!537672 (= res!792419 (isEmpty!12230 lt!680513))))

(assert (=> d!537672 (= lt!680513 e!1126761)))

(declare-fun c!286814 () Bool)

(assert (=> d!537672 (= c!286814 (and ((_ is Cons!19383) rules!3447) ((_ is Nil!19383) (t!164036 rules!3447))))))

(declare-fun lt!680511 () Unit!33555)

(declare-fun lt!680514 () Unit!33555)

(assert (=> d!537672 (= lt!680511 lt!680514)))

(assert (=> d!537672 (isPrefix!1703 lt!680363 lt!680363)))

(assert (=> d!537672 (= lt!680514 (lemmaIsPrefixRefl!1128 lt!680363 lt!680363))))

(assert (=> d!537672 (rulesValidInductive!1166 thiss!24550 rules!3447)))

(assert (=> d!537672 (= (maxPrefix!1646 thiss!24550 rules!3447 lt!680363) lt!680513)))

(declare-fun b!1760588 () Bool)

(declare-fun res!792416 () Bool)

(assert (=> b!1760588 (=> (not res!792416) (not e!1126762))))

(assert (=> b!1760588 (= res!792416 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))) (originalCharacters!4277 (_1!10897 (get!5897 lt!680513)))))))

(declare-fun b!1760589 () Bool)

(declare-fun res!792422 () Bool)

(assert (=> b!1760589 (=> (not res!792422) (not e!1126762))))

(assert (=> b!1760589 (= res!792422 (< (size!15395 (_2!10897 (get!5897 lt!680513))) (size!15395 lt!680363)))))

(declare-fun b!1760590 () Bool)

(assert (=> b!1760590 (= e!1126761 call!110639)))

(declare-fun b!1760591 () Bool)

(assert (=> b!1760591 (= e!1126762 (contains!3491 rules!3447 (rule!5481 (_1!10897 (get!5897 lt!680513)))))))

(assert (= (and d!537672 c!286814) b!1760590))

(assert (= (and d!537672 (not c!286814)) b!1760585))

(assert (= (or b!1760590 b!1760585) bm!110634))

(assert (= (and d!537672 (not res!792419)) b!1760587))

(assert (= (and b!1760587 res!792420) b!1760588))

(assert (= (and b!1760588 res!792416) b!1760589))

(assert (= (and b!1760589 res!792422) b!1760586))

(assert (= (and b!1760586 res!792421) b!1760584))

(assert (= (and b!1760584 res!792417) b!1760583))

(assert (= (and b!1760583 res!792418) b!1760591))

(declare-fun m!2176463 () Bool)

(assert (=> b!1760586 m!2176463))

(declare-fun m!2176465 () Bool)

(assert (=> b!1760586 m!2176465))

(assert (=> b!1760586 m!2176465))

(declare-fun m!2176467 () Bool)

(assert (=> b!1760586 m!2176467))

(assert (=> b!1760586 m!2176467))

(declare-fun m!2176473 () Bool)

(assert (=> b!1760586 m!2176473))

(assert (=> b!1760588 m!2176463))

(assert (=> b!1760588 m!2176465))

(assert (=> b!1760588 m!2176465))

(assert (=> b!1760588 m!2176467))

(declare-fun m!2176475 () Bool)

(assert (=> bm!110634 m!2176475))

(assert (=> b!1760584 m!2176463))

(declare-fun m!2176477 () Bool)

(assert (=> b!1760584 m!2176477))

(assert (=> b!1760584 m!2176477))

(declare-fun m!2176479 () Bool)

(assert (=> b!1760584 m!2176479))

(assert (=> b!1760591 m!2176463))

(declare-fun m!2176481 () Bool)

(assert (=> b!1760591 m!2176481))

(declare-fun m!2176483 () Bool)

(assert (=> b!1760585 m!2176483))

(assert (=> b!1760589 m!2176463))

(declare-fun m!2176485 () Bool)

(assert (=> b!1760589 m!2176485))

(assert (=> b!1760589 m!2176421))

(declare-fun m!2176487 () Bool)

(assert (=> d!537672 m!2176487))

(declare-fun m!2176489 () Bool)

(assert (=> d!537672 m!2176489))

(declare-fun m!2176491 () Bool)

(assert (=> d!537672 m!2176491))

(assert (=> d!537672 m!2176333))

(assert (=> b!1760583 m!2176463))

(assert (=> b!1760583 m!2176465))

(assert (=> b!1760583 m!2176465))

(assert (=> b!1760583 m!2176467))

(assert (=> b!1760583 m!2176467))

(declare-fun m!2176495 () Bool)

(assert (=> b!1760583 m!2176495))

(declare-fun m!2176497 () Bool)

(assert (=> b!1760587 m!2176497))

(assert (=> b!1760287 d!537672))

(declare-fun b!1760604 () Bool)

(declare-fun lt!680515 () List!19452)

(declare-fun e!1126770 () Bool)

(assert (=> b!1760604 (= e!1126770 (or (not (= (_2!10897 lt!680362) Nil!19382)) (= lt!680515 lt!680348)))))

(declare-fun b!1760602 () Bool)

(declare-fun e!1126769 () List!19452)

(assert (=> b!1760602 (= e!1126769 (Cons!19382 (h!24783 lt!680348) (++!5287 (t!164035 lt!680348) (_2!10897 lt!680362))))))

(declare-fun b!1760601 () Bool)

(assert (=> b!1760601 (= e!1126769 (_2!10897 lt!680362))))

(declare-fun d!537678 () Bool)

(assert (=> d!537678 e!1126770))

(declare-fun res!792427 () Bool)

(assert (=> d!537678 (=> (not res!792427) (not e!1126770))))

(assert (=> d!537678 (= res!792427 (= (content!2798 lt!680515) ((_ map or) (content!2798 lt!680348) (content!2798 (_2!10897 lt!680362)))))))

(assert (=> d!537678 (= lt!680515 e!1126769)))

(declare-fun c!286818 () Bool)

(assert (=> d!537678 (= c!286818 ((_ is Nil!19382) lt!680348))))

(assert (=> d!537678 (= (++!5287 lt!680348 (_2!10897 lt!680362)) lt!680515)))

(declare-fun b!1760603 () Bool)

(declare-fun res!792426 () Bool)

(assert (=> b!1760603 (=> (not res!792426) (not e!1126770))))

(assert (=> b!1760603 (= res!792426 (= (size!15395 lt!680515) (+ (size!15395 lt!680348) (size!15395 (_2!10897 lt!680362)))))))

(assert (= (and d!537678 c!286818) b!1760601))

(assert (= (and d!537678 (not c!286818)) b!1760602))

(assert (= (and d!537678 res!792427) b!1760603))

(assert (= (and b!1760603 res!792426) b!1760604))

(declare-fun m!2176499 () Bool)

(assert (=> b!1760602 m!2176499))

(declare-fun m!2176501 () Bool)

(assert (=> d!537678 m!2176501))

(declare-fun m!2176503 () Bool)

(assert (=> d!537678 m!2176503))

(declare-fun m!2176505 () Bool)

(assert (=> d!537678 m!2176505))

(declare-fun m!2176507 () Bool)

(assert (=> b!1760603 m!2176507))

(assert (=> b!1760603 m!2176099))

(declare-fun m!2176509 () Bool)

(assert (=> b!1760603 m!2176509))

(assert (=> b!1760287 d!537678))

(declare-fun d!537680 () Bool)

(assert (=> d!537680 (= (get!5897 lt!680354) (v!25409 lt!680354))))

(assert (=> b!1760287 d!537680))

(declare-fun b!1760753 () Bool)

(declare-fun e!1126850 () Bool)

(declare-fun lt!680593 () Token!6492)

(assert (=> b!1760753 (= e!1126850 (= (rule!5481 lt!680593) (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))

(declare-fun b!1760754 () Bool)

(declare-fun e!1126849 () Unit!33555)

(declare-fun Unit!33561 () Unit!33555)

(assert (=> b!1760754 (= e!1126849 Unit!33561)))

(declare-fun lt!680603 () List!19452)

(assert (=> b!1760754 (= lt!680603 (++!5287 lt!680342 suffix!1421))))

(declare-fun lt!680598 () Unit!33555)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!319 (LexerInterface!3092 Rule!6726 List!19453 List!19452) Unit!33555)

(assert (=> b!1760754 (= lt!680598 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!319 thiss!24550 (rule!5481 lt!680593) rules!3447 lt!680603))))

(assert (=> b!1760754 (isEmpty!12230 (maxPrefixOneRule!1015 thiss!24550 (rule!5481 lt!680593) lt!680603))))

(declare-fun lt!680605 () Unit!33555)

(assert (=> b!1760754 (= lt!680605 lt!680598)))

(declare-fun lt!680596 () List!19452)

(assert (=> b!1760754 (= lt!680596 (list!7861 (charsOf!2112 lt!680593)))))

(declare-fun lt!680601 () Unit!33555)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!315 (LexerInterface!3092 Rule!6726 List!19452 List!19452) Unit!33555)

(assert (=> b!1760754 (= lt!680601 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!315 thiss!24550 (rule!5481 lt!680593) lt!680596 (++!5287 lt!680342 suffix!1421)))))

(assert (=> b!1760754 (not (matchR!2264 (regex!3463 (rule!5481 lt!680593)) lt!680596))))

(declare-fun lt!680594 () Unit!33555)

(assert (=> b!1760754 (= lt!680594 lt!680601)))

(assert (=> b!1760754 false))

(declare-fun b!1760755 () Bool)

(declare-fun Unit!33562 () Unit!33555)

(assert (=> b!1760755 (= e!1126849 Unit!33562)))

(declare-fun b!1760752 () Bool)

(declare-fun res!792492 () Bool)

(assert (=> b!1760752 (=> (not res!792492) (not e!1126850))))

(assert (=> b!1760752 (= res!792492 (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))) (list!7861 (charsOf!2112 lt!680593))))))

(declare-fun d!537682 () Bool)

(assert (=> d!537682 (isDefined!3292 (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421)))))

(declare-fun lt!680602 () Unit!33555)

(assert (=> d!537682 (= lt!680602 e!1126849)))

(declare-fun c!286847 () Bool)

(assert (=> d!537682 (= c!286847 (isEmpty!12230 (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421))))))

(declare-fun lt!680591 () Unit!33555)

(declare-fun lt!680595 () Unit!33555)

(assert (=> d!537682 (= lt!680591 lt!680595)))

(assert (=> d!537682 e!1126850))

(declare-fun res!792493 () Bool)

(assert (=> d!537682 (=> (not res!792493) (not e!1126850))))

(assert (=> d!537682 (= res!792493 (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))

(assert (=> d!537682 (= lt!680595 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!511 thiss!24550 rules!3447 lt!680342 lt!680593))))

(declare-fun lt!680607 () Unit!33555)

(declare-fun lt!680592 () Unit!33555)

(assert (=> d!537682 (= lt!680607 lt!680592)))

(declare-fun lt!680604 () List!19452)

(assert (=> d!537682 (isPrefix!1703 lt!680604 (++!5287 lt!680342 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!311 (List!19452 List!19452 List!19452) Unit!33555)

(assert (=> d!537682 (= lt!680592 (lemmaPrefixStaysPrefixWhenAddingToSuffix!311 lt!680604 lt!680342 suffix!1421))))

(assert (=> d!537682 (= lt!680604 (list!7861 (charsOf!2112 lt!680593)))))

(declare-fun lt!680600 () Unit!33555)

(declare-fun lt!680597 () Unit!33555)

(assert (=> d!537682 (= lt!680600 lt!680597)))

(declare-fun lt!680599 () List!19452)

(declare-fun lt!680606 () List!19452)

(assert (=> d!537682 (isPrefix!1703 lt!680599 (++!5287 lt!680599 lt!680606))))

(assert (=> d!537682 (= lt!680597 (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680599 lt!680606))))

(assert (=> d!537682 (= lt!680606 (_2!10897 (get!5897 (maxPrefix!1646 thiss!24550 rules!3447 lt!680342))))))

(assert (=> d!537682 (= lt!680599 (list!7861 (charsOf!2112 lt!680593)))))

(declare-datatypes ((List!19458 0))(
  ( (Nil!19388) (Cons!19388 (h!24789 Token!6492) (t!164101 List!19458)) )
))
(declare-fun head!4078 (List!19458) Token!6492)

(declare-datatypes ((IArray!12903 0))(
  ( (IArray!12904 (innerList!6509 List!19458)) )
))
(declare-datatypes ((Conc!6449 0))(
  ( (Node!6449 (left!15518 Conc!6449) (right!15848 Conc!6449) (csize!13128 Int) (cheight!6660 Int)) (Leaf!9401 (xs!9325 IArray!12903) (csize!13129 Int)) (Empty!6449) )
))
(declare-datatypes ((BalanceConc!12842 0))(
  ( (BalanceConc!12843 (c!286893 Conc!6449)) )
))
(declare-fun list!7865 (BalanceConc!12842) List!19458)

(declare-datatypes ((tuple2!18994 0))(
  ( (tuple2!18995 (_1!10899 BalanceConc!12842) (_2!10899 BalanceConc!12838)) )
))
(declare-fun lex!1450 (LexerInterface!3092 List!19453 BalanceConc!12838) tuple2!18994)

(assert (=> d!537682 (= lt!680593 (head!4078 (list!7865 (_1!10899 (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342))))))))

(assert (=> d!537682 (not (isEmpty!12226 rules!3447))))

(assert (=> d!537682 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!614 thiss!24550 rules!3447 lt!680342 suffix!1421) lt!680602)))

(assert (= (and d!537682 res!792493) b!1760752))

(assert (= (and b!1760752 res!792492) b!1760753))

(assert (= (and d!537682 c!286847) b!1760754))

(assert (= (and d!537682 (not c!286847)) b!1760755))

(declare-fun m!2176707 () Bool)

(assert (=> b!1760753 m!2176707))

(assert (=> b!1760753 m!2176707))

(declare-fun m!2176709 () Bool)

(assert (=> b!1760753 m!2176709))

(declare-fun m!2176711 () Bool)

(assert (=> b!1760754 m!2176711))

(declare-fun m!2176713 () Bool)

(assert (=> b!1760754 m!2176713))

(declare-fun m!2176715 () Bool)

(assert (=> b!1760754 m!2176715))

(assert (=> b!1760754 m!2176715))

(declare-fun m!2176717 () Bool)

(assert (=> b!1760754 m!2176717))

(assert (=> b!1760754 m!2176039))

(declare-fun m!2176719 () Bool)

(assert (=> b!1760754 m!2176719))

(declare-fun m!2176721 () Bool)

(assert (=> b!1760754 m!2176721))

(assert (=> b!1760754 m!2176719))

(assert (=> b!1760754 m!2176039))

(declare-fun m!2176723 () Bool)

(assert (=> b!1760754 m!2176723))

(assert (=> b!1760752 m!2176717))

(declare-fun m!2176725 () Bool)

(assert (=> b!1760752 m!2176725))

(assert (=> b!1760752 m!2176715))

(assert (=> b!1760752 m!2176707))

(assert (=> b!1760752 m!2176715))

(assert (=> b!1760752 m!2176717))

(assert (=> b!1760752 m!2176707))

(assert (=> b!1760752 m!2176709))

(declare-fun m!2176727 () Bool)

(assert (=> d!537682 m!2176727))

(declare-fun m!2176729 () Bool)

(assert (=> d!537682 m!2176729))

(declare-fun m!2176731 () Bool)

(assert (=> d!537682 m!2176731))

(assert (=> d!537682 m!2176715))

(assert (=> d!537682 m!2176707))

(assert (=> d!537682 m!2176731))

(declare-fun m!2176733 () Bool)

(assert (=> d!537682 m!2176733))

(declare-fun m!2176735 () Bool)

(assert (=> d!537682 m!2176735))

(assert (=> d!537682 m!2176735))

(declare-fun m!2176737 () Bool)

(assert (=> d!537682 m!2176737))

(assert (=> d!537682 m!2176707))

(declare-fun m!2176739 () Bool)

(assert (=> d!537682 m!2176739))

(assert (=> d!537682 m!2176727))

(declare-fun m!2176741 () Bool)

(assert (=> d!537682 m!2176741))

(declare-fun m!2176743 () Bool)

(assert (=> d!537682 m!2176743))

(declare-fun m!2176745 () Bool)

(assert (=> d!537682 m!2176745))

(assert (=> d!537682 m!2176093))

(declare-fun m!2176747 () Bool)

(assert (=> d!537682 m!2176747))

(assert (=> d!537682 m!2176077))

(assert (=> d!537682 m!2176093))

(assert (=> d!537682 m!2176039))

(declare-fun m!2176749 () Bool)

(assert (=> d!537682 m!2176749))

(assert (=> d!537682 m!2176743))

(declare-fun m!2176751 () Bool)

(assert (=> d!537682 m!2176751))

(declare-fun m!2176753 () Bool)

(assert (=> d!537682 m!2176753))

(declare-fun m!2176755 () Bool)

(assert (=> d!537682 m!2176755))

(assert (=> d!537682 m!2176715))

(assert (=> d!537682 m!2176717))

(assert (=> d!537682 m!2176039))

(assert (=> d!537682 m!2176039))

(assert (=> d!537682 m!2176727))

(assert (=> b!1760287 d!537682))

(declare-fun b!1760795 () Bool)

(declare-fun e!1126877 () Bool)

(declare-fun e!1126880 () Bool)

(assert (=> b!1760795 (= e!1126877 e!1126880)))

(declare-fun res!792498 () Bool)

(assert (=> b!1760795 (=> (not res!792498) (not e!1126880))))

(declare-fun lt!680615 () Option!3948)

(assert (=> b!1760795 (= res!792498 (contains!3491 rules!3447 (get!5898 lt!680615)))))

(declare-fun b!1760796 () Bool)

(declare-fun lt!680614 () Unit!33555)

(declare-fun lt!680616 () Unit!33555)

(assert (=> b!1760796 (= lt!680614 lt!680616)))

(assert (=> b!1760796 (rulesInvariant!2761 thiss!24550 (t!164036 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!190 (LexerInterface!3092 Rule!6726 List!19453) Unit!33555)

(assert (=> b!1760796 (= lt!680616 (lemmaInvariantOnRulesThenOnTail!190 thiss!24550 (h!24784 rules!3447) (t!164036 rules!3447)))))

(declare-fun e!1126879 () Option!3948)

(assert (=> b!1760796 (= e!1126879 (getRuleFromTag!511 thiss!24550 (t!164036 rules!3447) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1760797 () Bool)

(declare-fun e!1126878 () Option!3948)

(assert (=> b!1760797 (= e!1126878 e!1126879)))

(declare-fun c!286852 () Bool)

(assert (=> b!1760797 (= c!286852 (and ((_ is Cons!19383) rules!3447) (not (= (tag!3829 (h!24784 rules!3447)) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun d!537742 () Bool)

(assert (=> d!537742 e!1126877))

(declare-fun res!792499 () Bool)

(assert (=> d!537742 (=> res!792499 e!1126877)))

(assert (=> d!537742 (= res!792499 (isEmpty!12231 lt!680615))))

(assert (=> d!537742 (= lt!680615 e!1126878)))

(declare-fun c!286853 () Bool)

(assert (=> d!537742 (= c!286853 (and ((_ is Cons!19383) rules!3447) (= (tag!3829 (h!24784 rules!3447)) (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> d!537742 (rulesInvariant!2761 thiss!24550 rules!3447)))

(assert (=> d!537742 (= (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))) lt!680615)))

(declare-fun b!1760798 () Bool)

(assert (=> b!1760798 (= e!1126880 (= (tag!3829 (get!5898 lt!680615)) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1760799 () Bool)

(assert (=> b!1760799 (= e!1126879 None!3947)))

(declare-fun b!1760800 () Bool)

(assert (=> b!1760800 (= e!1126878 (Some!3947 (h!24784 rules!3447)))))

(assert (= (and d!537742 c!286853) b!1760800))

(assert (= (and d!537742 (not c!286853)) b!1760797))

(assert (= (and b!1760797 c!286852) b!1760796))

(assert (= (and b!1760797 (not c!286852)) b!1760799))

(assert (= (and d!537742 (not res!792499)) b!1760795))

(assert (= (and b!1760795 res!792498) b!1760798))

(declare-fun m!2176767 () Bool)

(assert (=> b!1760795 m!2176767))

(assert (=> b!1760795 m!2176767))

(declare-fun m!2176769 () Bool)

(assert (=> b!1760795 m!2176769))

(declare-fun m!2176771 () Bool)

(assert (=> b!1760796 m!2176771))

(declare-fun m!2176773 () Bool)

(assert (=> b!1760796 m!2176773))

(declare-fun m!2176775 () Bool)

(assert (=> b!1760796 m!2176775))

(declare-fun m!2176777 () Bool)

(assert (=> d!537742 m!2176777))

(assert (=> d!537742 m!2176115))

(assert (=> b!1760798 m!2176767))

(assert (=> b!1760287 d!537742))

(declare-fun b!1760804 () Bool)

(declare-fun e!1126882 () Bool)

(declare-fun lt!680617 () List!19452)

(assert (=> b!1760804 (= e!1126882 (or (not (= suffix!1421 Nil!19382)) (= lt!680617 lt!680342)))))

(declare-fun b!1760802 () Bool)

(declare-fun e!1126881 () List!19452)

(assert (=> b!1760802 (= e!1126881 (Cons!19382 (h!24783 lt!680342) (++!5287 (t!164035 lt!680342) suffix!1421)))))

(declare-fun b!1760801 () Bool)

(assert (=> b!1760801 (= e!1126881 suffix!1421)))

(declare-fun d!537744 () Bool)

(assert (=> d!537744 e!1126882))

(declare-fun res!792501 () Bool)

(assert (=> d!537744 (=> (not res!792501) (not e!1126882))))

(assert (=> d!537744 (= res!792501 (= (content!2798 lt!680617) ((_ map or) (content!2798 lt!680342) (content!2798 suffix!1421))))))

(assert (=> d!537744 (= lt!680617 e!1126881)))

(declare-fun c!286854 () Bool)

(assert (=> d!537744 (= c!286854 ((_ is Nil!19382) lt!680342))))

(assert (=> d!537744 (= (++!5287 lt!680342 suffix!1421) lt!680617)))

(declare-fun b!1760803 () Bool)

(declare-fun res!792500 () Bool)

(assert (=> b!1760803 (=> (not res!792500) (not e!1126882))))

(assert (=> b!1760803 (= res!792500 (= (size!15395 lt!680617) (+ (size!15395 lt!680342) (size!15395 suffix!1421))))))

(assert (= (and d!537744 c!286854) b!1760801))

(assert (= (and d!537744 (not c!286854)) b!1760802))

(assert (= (and d!537744 res!792501) b!1760803))

(assert (= (and b!1760803 res!792500) b!1760804))

(declare-fun m!2176779 () Bool)

(assert (=> b!1760802 m!2176779))

(declare-fun m!2176781 () Bool)

(assert (=> d!537744 m!2176781))

(assert (=> d!537744 m!2176197))

(declare-fun m!2176783 () Bool)

(assert (=> d!537744 m!2176783))

(declare-fun m!2176785 () Bool)

(assert (=> b!1760803 m!2176785))

(assert (=> b!1760803 m!2176203))

(declare-fun m!2176787 () Bool)

(assert (=> b!1760803 m!2176787))

(assert (=> b!1760287 d!537744))

(declare-fun d!537746 () Bool)

(declare-fun lt!680618 () BalanceConc!12838)

(assert (=> d!537746 (= (list!7861 lt!680618) (originalCharacters!4277 (_1!10897 lt!680362)))))

(assert (=> d!537746 (= lt!680618 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))

(assert (=> d!537746 (= (charsOf!2112 (_1!10897 lt!680362)) lt!680618)))

(declare-fun b_lambda!56979 () Bool)

(assert (=> (not b_lambda!56979) (not d!537746)))

(assert (=> d!537746 t!164017))

(declare-fun b_and!132817 () Bool)

(assert (= b_and!132759 (and (=> t!164017 result!127526) b_and!132817)))

(assert (=> d!537746 t!164019))

(declare-fun b_and!132819 () Bool)

(assert (= b_and!132761 (and (=> t!164019 result!127530) b_and!132819)))

(assert (=> d!537746 t!164021))

(declare-fun b_and!132821 () Bool)

(assert (= b_and!132763 (and (=> t!164021 result!127532) b_and!132821)))

(declare-fun m!2176789 () Bool)

(assert (=> d!537746 m!2176789))

(assert (=> d!537746 m!2176079))

(assert (=> b!1760287 d!537746))

(declare-fun d!537748 () Bool)

(assert (=> d!537748 (isPrefix!1703 lt!680348 (++!5287 lt!680348 (_2!10897 lt!680362)))))

(declare-fun lt!680619 () Unit!33555)

(assert (=> d!537748 (= lt!680619 (choose!10897 lt!680348 (_2!10897 lt!680362)))))

(assert (=> d!537748 (= (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680348 (_2!10897 lt!680362)) lt!680619)))

(declare-fun bs!404031 () Bool)

(assert (= bs!404031 d!537748))

(assert (=> bs!404031 m!2176023))

(assert (=> bs!404031 m!2176023))

(assert (=> bs!404031 m!2176047))

(declare-fun m!2176791 () Bool)

(assert (=> bs!404031 m!2176791))

(assert (=> b!1760287 d!537748))

(declare-fun d!537750 () Bool)

(declare-fun choose!10900 (Int) Bool)

(assert (=> d!537750 (= (Forall!830 lambda!70132) (choose!10900 lambda!70132))))

(declare-fun bs!404032 () Bool)

(assert (= bs!404032 d!537750))

(declare-fun m!2176793 () Bool)

(assert (=> bs!404032 m!2176793))

(assert (=> b!1760284 d!537750))

(declare-fun d!537752 () Bool)

(declare-fun e!1126885 () Bool)

(assert (=> d!537752 e!1126885))

(declare-fun res!792504 () Bool)

(assert (=> d!537752 (=> (not res!792504) (not e!1126885))))

(assert (=> d!537752 (= res!792504 (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun Unit!33563 () Unit!33555)

(assert (=> d!537752 (= (lemmaInv!662 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) Unit!33563)))

(declare-fun b!1760807 () Bool)

(assert (=> b!1760807 (= e!1126885 (equivClasses!1317 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))))))

(assert (= (and d!537752 res!792504) b!1760807))

(declare-fun m!2176795 () Bool)

(assert (=> d!537752 m!2176795))

(declare-fun m!2176797 () Bool)

(assert (=> b!1760807 m!2176797))

(assert (=> b!1760284 d!537752))

(declare-fun d!537754 () Bool)

(assert (=> d!537754 (= (inv!25164 (tag!3829 rule!422)) (= (mod (str.len (value!108367 (tag!3829 rule!422))) 2) 0))))

(assert (=> b!1760305 d!537754))

(declare-fun d!537756 () Bool)

(declare-fun res!792505 () Bool)

(declare-fun e!1126886 () Bool)

(assert (=> d!537756 (=> (not res!792505) (not e!1126886))))

(assert (=> d!537756 (= res!792505 (semiInverseModEq!1376 (toChars!4841 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 rule!422))))))

(assert (=> d!537756 (= (inv!25170 (transformation!3463 rule!422)) e!1126886)))

(declare-fun b!1760808 () Bool)

(assert (=> b!1760808 (= e!1126886 (equivClasses!1317 (toChars!4841 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 rule!422))))))

(assert (= (and d!537756 res!792505) b!1760808))

(declare-fun m!2176799 () Bool)

(assert (=> d!537756 m!2176799))

(declare-fun m!2176801 () Bool)

(assert (=> b!1760808 m!2176801))

(assert (=> b!1760305 d!537756))

(declare-fun d!537758 () Bool)

(assert (=> d!537758 (= (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))) (isBalanced!2014 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))

(declare-fun bs!404033 () Bool)

(assert (= bs!404033 d!537758))

(declare-fun m!2176803 () Bool)

(assert (=> bs!404033 m!2176803))

(assert (=> tb!105987 d!537758))

(declare-fun d!537760 () Bool)

(assert (=> d!537760 (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (list!7864 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(declare-fun bs!404034 () Bool)

(assert (= bs!404034 d!537760))

(declare-fun m!2176805 () Bool)

(assert (=> bs!404034 m!2176805))

(assert (=> b!1760285 d!537760))

(declare-fun bs!404035 () Bool)

(declare-fun d!537762 () Bool)

(assert (= bs!404035 (and d!537762 b!1760284)))

(declare-fun lambda!70147 () Int)

(assert (=> bs!404035 (= lambda!70147 lambda!70132)))

(declare-fun b!1760813 () Bool)

(declare-fun e!1126889 () Bool)

(assert (=> b!1760813 (= e!1126889 true)))

(assert (=> d!537762 e!1126889))

(assert (= d!537762 b!1760813))

(assert (=> b!1760813 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70147))))

(assert (=> b!1760813 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70147))))

(assert (=> d!537762 (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (list!7861 lt!680349))))

(declare-fun lt!680622 () Unit!33555)

(declare-fun ForallOf!314 (Int BalanceConc!12838) Unit!33555)

(assert (=> d!537762 (= lt!680622 (ForallOf!314 lambda!70147 lt!680349))))

(assert (=> d!537762 (= (lemmaSemiInverse!601 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349) lt!680622)))

(declare-fun b_lambda!56981 () Bool)

(assert (=> (not b_lambda!56981) (not d!537762)))

(assert (=> d!537762 t!164023))

(declare-fun b_and!132823 () Bool)

(assert (= b_and!132817 (and (=> t!164023 result!127534) b_and!132823)))

(assert (=> d!537762 t!164025))

(declare-fun b_and!132825 () Bool)

(assert (= b_and!132819 (and (=> t!164025 result!127536) b_and!132825)))

(assert (=> d!537762 t!164027))

(declare-fun b_and!132827 () Bool)

(assert (= b_and!132821 (and (=> t!164027 result!127538) b_and!132827)))

(declare-fun b_lambda!56983 () Bool)

(assert (=> (not b_lambda!56983) (not d!537762)))

(assert (=> d!537762 t!164029))

(declare-fun b_and!132829 () Bool)

(assert (= b_and!132747 (and (=> t!164029 result!127540) b_and!132829)))

(assert (=> d!537762 t!164031))

(declare-fun b_and!132831 () Bool)

(assert (= b_and!132749 (and (=> t!164031 result!127544) b_and!132831)))

(assert (=> d!537762 t!164033))

(declare-fun b_and!132833 () Bool)

(assert (= b_and!132751 (and (=> t!164033 result!127546) b_and!132833)))

(assert (=> d!537762 m!2175991))

(assert (=> d!537762 m!2175993))

(assert (=> d!537762 m!2175995))

(declare-fun m!2176807 () Bool)

(assert (=> d!537762 m!2176807))

(assert (=> d!537762 m!2175991))

(assert (=> d!537762 m!2175993))

(assert (=> d!537762 m!2176043))

(assert (=> b!1760285 d!537762))

(declare-fun d!537764 () Bool)

(assert (=> d!537764 (= (inv!25164 (tag!3829 (rule!5481 token!523))) (= (mod (str.len (value!108367 (tag!3829 (rule!5481 token!523)))) 2) 0))))

(assert (=> b!1760306 d!537764))

(declare-fun d!537766 () Bool)

(declare-fun res!792506 () Bool)

(declare-fun e!1126890 () Bool)

(assert (=> d!537766 (=> (not res!792506) (not e!1126890))))

(assert (=> d!537766 (= res!792506 (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 token!523)))))))

(assert (=> d!537766 (= (inv!25170 (transformation!3463 (rule!5481 token!523))) e!1126890)))

(declare-fun b!1760814 () Bool)

(assert (=> b!1760814 (= e!1126890 (equivClasses!1317 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 token!523)))))))

(assert (= (and d!537766 res!792506) b!1760814))

(declare-fun m!2176809 () Bool)

(assert (=> d!537766 m!2176809))

(declare-fun m!2176811 () Bool)

(assert (=> b!1760814 m!2176811))

(assert (=> b!1760306 d!537766))

(declare-fun d!537768 () Bool)

(declare-fun c!286858 () Bool)

(assert (=> d!537768 (= c!286858 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))

(declare-fun e!1126895 () Bool)

(assert (=> d!537768 (= (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) e!1126895)))

(declare-fun b!1760821 () Bool)

(declare-fun inv!25175 (Conc!6447) Bool)

(assert (=> b!1760821 (= e!1126895 (inv!25175 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))

(declare-fun b!1760822 () Bool)

(declare-fun e!1126896 () Bool)

(assert (=> b!1760822 (= e!1126895 e!1126896)))

(declare-fun res!792509 () Bool)

(assert (=> b!1760822 (= res!792509 (not ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(assert (=> b!1760822 (=> res!792509 e!1126896)))

(declare-fun b!1760823 () Bool)

(declare-fun inv!25176 (Conc!6447) Bool)

(assert (=> b!1760823 (= e!1126896 (inv!25176 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))

(assert (= (and d!537768 c!286858) b!1760821))

(assert (= (and d!537768 (not c!286858)) b!1760822))

(assert (= (and b!1760822 (not res!792509)) b!1760823))

(declare-fun m!2176813 () Bool)

(assert (=> b!1760821 m!2176813))

(declare-fun m!2176815 () Bool)

(assert (=> b!1760823 m!2176815))

(assert (=> b!1760325 d!537768))

(declare-fun d!537770 () Bool)

(declare-fun lt!680625 () Bool)

(declare-fun content!2800 (List!19453) (InoxSet Rule!6726))

(assert (=> d!537770 (= lt!680625 (select (content!2800 rules!3447) rule!422))))

(declare-fun e!1126902 () Bool)

(assert (=> d!537770 (= lt!680625 e!1126902)))

(declare-fun res!792515 () Bool)

(assert (=> d!537770 (=> (not res!792515) (not e!1126902))))

(assert (=> d!537770 (= res!792515 ((_ is Cons!19383) rules!3447))))

(assert (=> d!537770 (= (contains!3491 rules!3447 rule!422) lt!680625)))

(declare-fun b!1760828 () Bool)

(declare-fun e!1126901 () Bool)

(assert (=> b!1760828 (= e!1126902 e!1126901)))

(declare-fun res!792514 () Bool)

(assert (=> b!1760828 (=> res!792514 e!1126901)))

(assert (=> b!1760828 (= res!792514 (= (h!24784 rules!3447) rule!422))))

(declare-fun b!1760829 () Bool)

(assert (=> b!1760829 (= e!1126901 (contains!3491 (t!164036 rules!3447) rule!422))))

(assert (= (and d!537770 res!792515) b!1760828))

(assert (= (and b!1760828 (not res!792514)) b!1760829))

(declare-fun m!2176817 () Bool)

(assert (=> d!537770 m!2176817))

(declare-fun m!2176819 () Bool)

(assert (=> d!537770 m!2176819))

(declare-fun m!2176821 () Bool)

(assert (=> b!1760829 m!2176821))

(assert (=> b!1760304 d!537770))

(declare-fun d!537772 () Bool)

(declare-fun res!792518 () Bool)

(declare-fun e!1126905 () Bool)

(assert (=> d!537772 (=> (not res!792518) (not e!1126905))))

(declare-fun rulesValid!1302 (LexerInterface!3092 List!19453) Bool)

(assert (=> d!537772 (= res!792518 (rulesValid!1302 thiss!24550 rules!3447))))

(assert (=> d!537772 (= (rulesInvariant!2761 thiss!24550 rules!3447) e!1126905)))

(declare-fun b!1760832 () Bool)

(declare-datatypes ((List!19459 0))(
  ( (Nil!19389) (Cons!19389 (h!24790 String!22097) (t!164102 List!19459)) )
))
(declare-fun noDuplicateTag!1302 (LexerInterface!3092 List!19453 List!19459) Bool)

(assert (=> b!1760832 (= e!1126905 (noDuplicateTag!1302 thiss!24550 rules!3447 Nil!19389))))

(assert (= (and d!537772 res!792518) b!1760832))

(declare-fun m!2176823 () Bool)

(assert (=> d!537772 m!2176823))

(declare-fun m!2176825 () Bool)

(assert (=> b!1760832 m!2176825))

(assert (=> b!1760282 d!537772))

(declare-fun b!1760861 () Bool)

(declare-fun res!792541 () Bool)

(declare-fun e!1126920 () Bool)

(assert (=> b!1760861 (=> (not res!792541) (not e!1126920))))

(declare-fun call!110644 () Bool)

(assert (=> b!1760861 (= res!792541 (not call!110644))))

(declare-fun b!1760862 () Bool)

(declare-fun res!792536 () Bool)

(declare-fun e!1126926 () Bool)

(assert (=> b!1760862 (=> res!792536 e!1126926)))

(assert (=> b!1760862 (= res!792536 e!1126920)))

(declare-fun res!792537 () Bool)

(assert (=> b!1760862 (=> (not res!792537) (not e!1126920))))

(declare-fun lt!680628 () Bool)

(assert (=> b!1760862 (= res!792537 lt!680628)))

(declare-fun b!1760863 () Bool)

(declare-fun res!792539 () Bool)

(assert (=> b!1760863 (=> (not res!792539) (not e!1126920))))

(assert (=> b!1760863 (= res!792539 (isEmpty!12227 (tail!2633 lt!680342)))))

(declare-fun b!1760865 () Bool)

(declare-fun e!1126925 () Bool)

(declare-fun nullable!1461 (Regex!4791) Bool)

(assert (=> b!1760865 (= e!1126925 (nullable!1461 (regex!3463 rule!422)))))

(declare-fun b!1760866 () Bool)

(declare-fun res!792540 () Bool)

(assert (=> b!1760866 (=> res!792540 e!1126926)))

(assert (=> b!1760866 (= res!792540 (not ((_ is ElementMatch!4791) (regex!3463 rule!422))))))

(declare-fun e!1126922 () Bool)

(assert (=> b!1760866 (= e!1126922 e!1126926)))

(declare-fun b!1760867 () Bool)

(declare-fun res!792535 () Bool)

(declare-fun e!1126921 () Bool)

(assert (=> b!1760867 (=> res!792535 e!1126921)))

(assert (=> b!1760867 (= res!792535 (not (isEmpty!12227 (tail!2633 lt!680342))))))

(declare-fun bm!110639 () Bool)

(assert (=> bm!110639 (= call!110644 (isEmpty!12227 lt!680342))))

(declare-fun b!1760868 () Bool)

(declare-fun e!1126923 () Bool)

(assert (=> b!1760868 (= e!1126923 e!1126921)))

(declare-fun res!792542 () Bool)

(assert (=> b!1760868 (=> res!792542 e!1126921)))

(assert (=> b!1760868 (= res!792542 call!110644)))

(declare-fun b!1760869 () Bool)

(assert (=> b!1760869 (= e!1126921 (not (= (head!4076 lt!680342) (c!286774 (regex!3463 rule!422)))))))

(declare-fun b!1760870 () Bool)

(assert (=> b!1760870 (= e!1126925 (matchR!2264 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)) (tail!2633 lt!680342)))))

(declare-fun b!1760871 () Bool)

(declare-fun e!1126924 () Bool)

(assert (=> b!1760871 (= e!1126924 (= lt!680628 call!110644))))

(declare-fun b!1760872 () Bool)

(assert (=> b!1760872 (= e!1126924 e!1126922)))

(declare-fun c!286865 () Bool)

(assert (=> b!1760872 (= c!286865 ((_ is EmptyLang!4791) (regex!3463 rule!422)))))

(declare-fun b!1760873 () Bool)

(assert (=> b!1760873 (= e!1126926 e!1126923)))

(declare-fun res!792538 () Bool)

(assert (=> b!1760873 (=> (not res!792538) (not e!1126923))))

(assert (=> b!1760873 (= res!792538 (not lt!680628))))

(declare-fun b!1760874 () Bool)

(assert (=> b!1760874 (= e!1126920 (= (head!4076 lt!680342) (c!286774 (regex!3463 rule!422))))))

(declare-fun d!537774 () Bool)

(assert (=> d!537774 e!1126924))

(declare-fun c!286867 () Bool)

(assert (=> d!537774 (= c!286867 ((_ is EmptyExpr!4791) (regex!3463 rule!422)))))

(assert (=> d!537774 (= lt!680628 e!1126925)))

(declare-fun c!286866 () Bool)

(assert (=> d!537774 (= c!286866 (isEmpty!12227 lt!680342))))

(declare-fun validRegex!1935 (Regex!4791) Bool)

(assert (=> d!537774 (validRegex!1935 (regex!3463 rule!422))))

(assert (=> d!537774 (= (matchR!2264 (regex!3463 rule!422) lt!680342) lt!680628)))

(declare-fun b!1760864 () Bool)

(assert (=> b!1760864 (= e!1126922 (not lt!680628))))

(assert (= (and d!537774 c!286866) b!1760865))

(assert (= (and d!537774 (not c!286866)) b!1760870))

(assert (= (and d!537774 c!286867) b!1760871))

(assert (= (and d!537774 (not c!286867)) b!1760872))

(assert (= (and b!1760872 c!286865) b!1760864))

(assert (= (and b!1760872 (not c!286865)) b!1760866))

(assert (= (and b!1760866 (not res!792540)) b!1760862))

(assert (= (and b!1760862 res!792537) b!1760861))

(assert (= (and b!1760861 res!792541) b!1760863))

(assert (= (and b!1760863 res!792539) b!1760874))

(assert (= (and b!1760862 (not res!792536)) b!1760873))

(assert (= (and b!1760873 res!792538) b!1760868))

(assert (= (and b!1760868 (not res!792542)) b!1760867))

(assert (= (and b!1760867 (not res!792535)) b!1760869))

(assert (= (or b!1760871 b!1760861 b!1760868) bm!110639))

(declare-fun m!2176827 () Bool)

(assert (=> bm!110639 m!2176827))

(assert (=> b!1760867 m!2176423))

(assert (=> b!1760867 m!2176423))

(declare-fun m!2176829 () Bool)

(assert (=> b!1760867 m!2176829))

(declare-fun m!2176831 () Bool)

(assert (=> b!1760865 m!2176831))

(assert (=> d!537774 m!2176827))

(declare-fun m!2176833 () Bool)

(assert (=> d!537774 m!2176833))

(assert (=> b!1760863 m!2176423))

(assert (=> b!1760863 m!2176423))

(assert (=> b!1760863 m!2176829))

(assert (=> b!1760870 m!2176429))

(assert (=> b!1760870 m!2176429))

(declare-fun m!2176835 () Bool)

(assert (=> b!1760870 m!2176835))

(assert (=> b!1760870 m!2176423))

(assert (=> b!1760870 m!2176835))

(assert (=> b!1760870 m!2176423))

(declare-fun m!2176837 () Bool)

(assert (=> b!1760870 m!2176837))

(assert (=> b!1760874 m!2176429))

(assert (=> b!1760869 m!2176429))

(assert (=> b!1760303 d!537774))

(declare-fun d!537776 () Bool)

(declare-fun res!792547 () Bool)

(declare-fun e!1126929 () Bool)

(assert (=> d!537776 (=> (not res!792547) (not e!1126929))))

(assert (=> d!537776 (= res!792547 (validRegex!1935 (regex!3463 rule!422)))))

(assert (=> d!537776 (= (ruleValid!961 thiss!24550 rule!422) e!1126929)))

(declare-fun b!1760879 () Bool)

(declare-fun res!792548 () Bool)

(assert (=> b!1760879 (=> (not res!792548) (not e!1126929))))

(assert (=> b!1760879 (= res!792548 (not (nullable!1461 (regex!3463 rule!422))))))

(declare-fun b!1760880 () Bool)

(assert (=> b!1760880 (= e!1126929 (not (= (tag!3829 rule!422) (String!22098 ""))))))

(assert (= (and d!537776 res!792547) b!1760879))

(assert (= (and b!1760879 res!792548) b!1760880))

(assert (=> d!537776 m!2176833))

(assert (=> b!1760879 m!2176831))

(assert (=> b!1760303 d!537776))

(declare-fun d!537778 () Bool)

(assert (=> d!537778 (ruleValid!961 thiss!24550 rule!422)))

(declare-fun lt!680631 () Unit!33555)

(declare-fun choose!10902 (LexerInterface!3092 Rule!6726 List!19453) Unit!33555)

(assert (=> d!537778 (= lt!680631 (choose!10902 thiss!24550 rule!422 rules!3447))))

(assert (=> d!537778 (contains!3491 rules!3447 rule!422)))

(assert (=> d!537778 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!484 thiss!24550 rule!422 rules!3447) lt!680631)))

(declare-fun bs!404036 () Bool)

(assert (= bs!404036 d!537778))

(assert (=> bs!404036 m!2176005))

(declare-fun m!2176839 () Bool)

(assert (=> bs!404036 m!2176839))

(assert (=> bs!404036 m!2176059))

(assert (=> b!1760303 d!537778))

(declare-fun b!1760881 () Bool)

(declare-fun res!792555 () Bool)

(declare-fun e!1126930 () Bool)

(assert (=> b!1760881 (=> (not res!792555) (not e!1126930))))

(declare-fun call!110645 () Bool)

(assert (=> b!1760881 (= res!792555 (not call!110645))))

(declare-fun b!1760882 () Bool)

(declare-fun res!792550 () Bool)

(declare-fun e!1126936 () Bool)

(assert (=> b!1760882 (=> res!792550 e!1126936)))

(assert (=> b!1760882 (= res!792550 e!1126930)))

(declare-fun res!792551 () Bool)

(assert (=> b!1760882 (=> (not res!792551) (not e!1126930))))

(declare-fun lt!680632 () Bool)

(assert (=> b!1760882 (= res!792551 lt!680632)))

(declare-fun b!1760883 () Bool)

(declare-fun res!792553 () Bool)

(assert (=> b!1760883 (=> (not res!792553) (not e!1126930))))

(assert (=> b!1760883 (= res!792553 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1760885 () Bool)

(declare-fun e!1126935 () Bool)

(assert (=> b!1760885 (= e!1126935 (nullable!1461 (regex!3463 lt!680356)))))

(declare-fun b!1760886 () Bool)

(declare-fun res!792554 () Bool)

(assert (=> b!1760886 (=> res!792554 e!1126936)))

(assert (=> b!1760886 (= res!792554 (not ((_ is ElementMatch!4791) (regex!3463 lt!680356))))))

(declare-fun e!1126932 () Bool)

(assert (=> b!1760886 (= e!1126932 e!1126936)))

(declare-fun b!1760887 () Bool)

(declare-fun res!792549 () Bool)

(declare-fun e!1126931 () Bool)

(assert (=> b!1760887 (=> res!792549 e!1126931)))

(assert (=> b!1760887 (= res!792549 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun bm!110640 () Bool)

(assert (=> bm!110640 (= call!110645 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun b!1760888 () Bool)

(declare-fun e!1126933 () Bool)

(assert (=> b!1760888 (= e!1126933 e!1126931)))

(declare-fun res!792556 () Bool)

(assert (=> b!1760888 (=> res!792556 e!1126931)))

(assert (=> b!1760888 (= res!792556 call!110645)))

(declare-fun b!1760889 () Bool)

(assert (=> b!1760889 (= e!1126931 (not (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (c!286774 (regex!3463 lt!680356)))))))

(declare-fun b!1760890 () Bool)

(assert (=> b!1760890 (= e!1126935 (matchR!2264 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1760891 () Bool)

(declare-fun e!1126934 () Bool)

(assert (=> b!1760891 (= e!1126934 (= lt!680632 call!110645))))

(declare-fun b!1760892 () Bool)

(assert (=> b!1760892 (= e!1126934 e!1126932)))

(declare-fun c!286868 () Bool)

(assert (=> b!1760892 (= c!286868 ((_ is EmptyLang!4791) (regex!3463 lt!680356)))))

(declare-fun b!1760893 () Bool)

(assert (=> b!1760893 (= e!1126936 e!1126933)))

(declare-fun res!792552 () Bool)

(assert (=> b!1760893 (=> (not res!792552) (not e!1126933))))

(assert (=> b!1760893 (= res!792552 (not lt!680632))))

(declare-fun b!1760894 () Bool)

(assert (=> b!1760894 (= e!1126930 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (c!286774 (regex!3463 lt!680356))))))

(declare-fun d!537780 () Bool)

(assert (=> d!537780 e!1126934))

(declare-fun c!286870 () Bool)

(assert (=> d!537780 (= c!286870 ((_ is EmptyExpr!4791) (regex!3463 lt!680356)))))

(assert (=> d!537780 (= lt!680632 e!1126935)))

(declare-fun c!286869 () Bool)

(assert (=> d!537780 (= c!286869 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> d!537780 (validRegex!1935 (regex!3463 lt!680356))))

(assert (=> d!537780 (= (matchR!2264 (regex!3463 lt!680356) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) lt!680632)))

(declare-fun b!1760884 () Bool)

(assert (=> b!1760884 (= e!1126932 (not lt!680632))))

(assert (= (and d!537780 c!286869) b!1760885))

(assert (= (and d!537780 (not c!286869)) b!1760890))

(assert (= (and d!537780 c!286870) b!1760891))

(assert (= (and d!537780 (not c!286870)) b!1760892))

(assert (= (and b!1760892 c!286868) b!1760884))

(assert (= (and b!1760892 (not c!286868)) b!1760886))

(assert (= (and b!1760886 (not res!792554)) b!1760882))

(assert (= (and b!1760882 res!792551) b!1760881))

(assert (= (and b!1760881 res!792555) b!1760883))

(assert (= (and b!1760883 res!792553) b!1760894))

(assert (= (and b!1760882 (not res!792550)) b!1760893))

(assert (= (and b!1760893 res!792552) b!1760888))

(assert (= (and b!1760888 (not res!792556)) b!1760887))

(assert (= (and b!1760887 (not res!792549)) b!1760889))

(assert (= (or b!1760891 b!1760881 b!1760888) bm!110640))

(assert (=> bm!110640 m!2176067))

(declare-fun m!2176841 () Bool)

(assert (=> bm!110640 m!2176841))

(assert (=> b!1760887 m!2176067))

(declare-fun m!2176843 () Bool)

(assert (=> b!1760887 m!2176843))

(assert (=> b!1760887 m!2176843))

(declare-fun m!2176845 () Bool)

(assert (=> b!1760887 m!2176845))

(declare-fun m!2176847 () Bool)

(assert (=> b!1760885 m!2176847))

(assert (=> d!537780 m!2176067))

(assert (=> d!537780 m!2176841))

(declare-fun m!2176849 () Bool)

(assert (=> d!537780 m!2176849))

(assert (=> b!1760883 m!2176067))

(assert (=> b!1760883 m!2176843))

(assert (=> b!1760883 m!2176843))

(assert (=> b!1760883 m!2176845))

(assert (=> b!1760890 m!2176067))

(declare-fun m!2176851 () Bool)

(assert (=> b!1760890 m!2176851))

(assert (=> b!1760890 m!2176851))

(declare-fun m!2176853 () Bool)

(assert (=> b!1760890 m!2176853))

(assert (=> b!1760890 m!2176067))

(assert (=> b!1760890 m!2176843))

(assert (=> b!1760890 m!2176853))

(assert (=> b!1760890 m!2176843))

(declare-fun m!2176855 () Bool)

(assert (=> b!1760890 m!2176855))

(assert (=> b!1760894 m!2176067))

(assert (=> b!1760894 m!2176851))

(assert (=> b!1760889 m!2176067))

(assert (=> b!1760889 m!2176851))

(assert (=> b!1760300 d!537780))

(declare-fun d!537782 () Bool)

(assert (=> d!537782 (= (list!7861 (charsOf!2112 (_1!10897 lt!680362))) (list!7864 (c!286775 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun bs!404037 () Bool)

(assert (= bs!404037 d!537782))

(declare-fun m!2176857 () Bool)

(assert (=> bs!404037 m!2176857))

(assert (=> b!1760300 d!537782))

(assert (=> b!1760300 d!537746))

(declare-fun d!537784 () Bool)

(assert (=> d!537784 (= (get!5898 lt!680359) (v!25408 lt!680359))))

(assert (=> b!1760300 d!537784))

(declare-fun b!1760905 () Bool)

(declare-fun e!1126945 () Bool)

(declare-fun inv!16 (TokenValue!3553) Bool)

(assert (=> b!1760905 (= e!1126945 (inv!16 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(declare-fun b!1760906 () Bool)

(declare-fun e!1126943 () Bool)

(assert (=> b!1760906 (= e!1126945 e!1126943)))

(declare-fun c!286875 () Bool)

(assert (=> b!1760906 (= c!286875 ((_ is IntegerValue!10660) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(declare-fun d!537786 () Bool)

(declare-fun c!286876 () Bool)

(assert (=> d!537786 (= c!286876 ((_ is IntegerValue!10659) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(assert (=> d!537786 (= (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)) e!1126945)))

(declare-fun b!1760907 () Bool)

(declare-fun e!1126944 () Bool)

(declare-fun inv!15 (TokenValue!3553) Bool)

(assert (=> b!1760907 (= e!1126944 (inv!15 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(declare-fun b!1760908 () Bool)

(declare-fun inv!17 (TokenValue!3553) Bool)

(assert (=> b!1760908 (= e!1126943 (inv!17 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))

(declare-fun b!1760909 () Bool)

(declare-fun res!792559 () Bool)

(assert (=> b!1760909 (=> res!792559 e!1126944)))

(assert (=> b!1760909 (= res!792559 (not ((_ is IntegerValue!10661) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))

(assert (=> b!1760909 (= e!1126943 e!1126944)))

(assert (= (and d!537786 c!286876) b!1760905))

(assert (= (and d!537786 (not c!286876)) b!1760906))

(assert (= (and b!1760906 c!286875) b!1760908))

(assert (= (and b!1760906 (not c!286875)) b!1760909))

(assert (= (and b!1760909 (not res!792559)) b!1760907))

(declare-fun m!2176859 () Bool)

(assert (=> b!1760905 m!2176859))

(declare-fun m!2176861 () Bool)

(assert (=> b!1760907 m!2176861))

(declare-fun m!2176863 () Bool)

(assert (=> b!1760908 m!2176863))

(assert (=> tb!105999 d!537786))

(declare-fun b!1760910 () Bool)

(declare-fun e!1126948 () Bool)

(assert (=> b!1760910 (= e!1126948 (inv!16 (value!108368 token!523)))))

(declare-fun b!1760911 () Bool)

(declare-fun e!1126946 () Bool)

(assert (=> b!1760911 (= e!1126948 e!1126946)))

(declare-fun c!286877 () Bool)

(assert (=> b!1760911 (= c!286877 ((_ is IntegerValue!10660) (value!108368 token!523)))))

(declare-fun d!537788 () Bool)

(declare-fun c!286878 () Bool)

(assert (=> d!537788 (= c!286878 ((_ is IntegerValue!10659) (value!108368 token!523)))))

(assert (=> d!537788 (= (inv!21 (value!108368 token!523)) e!1126948)))

(declare-fun b!1760912 () Bool)

(declare-fun e!1126947 () Bool)

(assert (=> b!1760912 (= e!1126947 (inv!15 (value!108368 token!523)))))

(declare-fun b!1760913 () Bool)

(assert (=> b!1760913 (= e!1126946 (inv!17 (value!108368 token!523)))))

(declare-fun b!1760914 () Bool)

(declare-fun res!792560 () Bool)

(assert (=> b!1760914 (=> res!792560 e!1126947)))

(assert (=> b!1760914 (= res!792560 (not ((_ is IntegerValue!10661) (value!108368 token!523))))))

(assert (=> b!1760914 (= e!1126946 e!1126947)))

(assert (= (and d!537788 c!286878) b!1760910))

(assert (= (and d!537788 (not c!286878)) b!1760911))

(assert (= (and b!1760911 c!286877) b!1760913))

(assert (= (and b!1760911 (not c!286877)) b!1760914))

(assert (= (and b!1760914 (not res!792560)) b!1760912))

(declare-fun m!2176865 () Bool)

(assert (=> b!1760910 m!2176865))

(declare-fun m!2176867 () Bool)

(assert (=> b!1760912 m!2176867))

(declare-fun m!2176869 () Bool)

(assert (=> b!1760913 m!2176869))

(assert (=> b!1760299 d!537788))

(declare-fun d!537790 () Bool)

(assert (=> d!537790 (= (_2!10897 lt!680362) lt!680344)))

(declare-fun lt!680635 () Unit!33555)

(declare-fun choose!10903 (List!19452 List!19452 List!19452 List!19452 List!19452) Unit!33555)

(assert (=> d!537790 (= lt!680635 (choose!10903 lt!680348 (_2!10897 lt!680362) lt!680348 lt!680344 lt!680363))))

(assert (=> d!537790 (isPrefix!1703 lt!680348 lt!680363)))

(assert (=> d!537790 (= (lemmaSamePrefixThenSameSuffix!814 lt!680348 (_2!10897 lt!680362) lt!680348 lt!680344 lt!680363) lt!680635)))

(declare-fun bs!404038 () Bool)

(assert (= bs!404038 d!537790))

(declare-fun m!2176871 () Bool)

(assert (=> bs!404038 m!2176871))

(assert (=> bs!404038 m!2176021))

(assert (=> b!1760301 d!537790))

(declare-fun d!537792 () Bool)

(assert (=> d!537792 (= (maxPrefixOneRule!1015 thiss!24550 (rule!5481 (_1!10897 lt!680362)) lt!680363) (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 lt!680348)) (rule!5481 (_1!10897 lt!680362)) (size!15395 lt!680348) lt!680348) (_2!10897 lt!680362))))))

(declare-fun lt!680638 () Unit!33555)

(declare-fun choose!10904 (LexerInterface!3092 List!19453 List!19452 List!19452 List!19452 Rule!6726) Unit!33555)

(assert (=> d!537792 (= lt!680638 (choose!10904 thiss!24550 rules!3447 lt!680348 lt!680363 (_2!10897 lt!680362) (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!537792 (not (isEmpty!12226 rules!3447))))

(assert (=> d!537792 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!393 thiss!24550 rules!3447 lt!680348 lt!680363 (_2!10897 lt!680362) (rule!5481 (_1!10897 lt!680362))) lt!680638)))

(declare-fun bs!404039 () Bool)

(assert (= bs!404039 d!537792))

(assert (=> bs!404039 m!2176105))

(assert (=> bs!404039 m!2176099))

(declare-fun m!2176873 () Bool)

(assert (=> bs!404039 m!2176873))

(assert (=> bs!404039 m!2176077))

(assert (=> bs!404039 m!2176101))

(assert (=> bs!404039 m!2176101))

(assert (=> bs!404039 m!2176109))

(assert (=> b!1760301 d!537792))

(declare-fun d!537794 () Bool)

(declare-fun lt!680641 () List!19452)

(assert (=> d!537794 (= (++!5287 lt!680348 lt!680641) lt!680363)))

(declare-fun e!1126951 () List!19452)

(assert (=> d!537794 (= lt!680641 e!1126951)))

(declare-fun c!286881 () Bool)

(assert (=> d!537794 (= c!286881 ((_ is Cons!19382) lt!680348))))

(assert (=> d!537794 (>= (size!15395 lt!680363) (size!15395 lt!680348))))

(assert (=> d!537794 (= (getSuffix!870 lt!680363 lt!680348) lt!680641)))

(declare-fun b!1760919 () Bool)

(assert (=> b!1760919 (= e!1126951 (getSuffix!870 (tail!2633 lt!680363) (t!164035 lt!680348)))))

(declare-fun b!1760920 () Bool)

(assert (=> b!1760920 (= e!1126951 lt!680363)))

(assert (= (and d!537794 c!286881) b!1760919))

(assert (= (and d!537794 (not c!286881)) b!1760920))

(declare-fun m!2176875 () Bool)

(assert (=> d!537794 m!2176875))

(assert (=> d!537794 m!2176421))

(assert (=> d!537794 m!2176099))

(assert (=> b!1760919 m!2176425))

(assert (=> b!1760919 m!2176425))

(declare-fun m!2176877 () Bool)

(assert (=> b!1760919 m!2176877))

(assert (=> b!1760301 d!537794))

(declare-fun d!537796 () Bool)

(declare-fun lt!680644 () Int)

(assert (=> d!537796 (>= lt!680644 0)))

(declare-fun e!1126954 () Int)

(assert (=> d!537796 (= lt!680644 e!1126954)))

(declare-fun c!286884 () Bool)

(assert (=> d!537796 (= c!286884 ((_ is Nil!19382) lt!680348))))

(assert (=> d!537796 (= (size!15395 lt!680348) lt!680644)))

(declare-fun b!1760925 () Bool)

(assert (=> b!1760925 (= e!1126954 0)))

(declare-fun b!1760926 () Bool)

(assert (=> b!1760926 (= e!1126954 (+ 1 (size!15395 (t!164035 lt!680348))))))

(assert (= (and d!537796 c!286884) b!1760925))

(assert (= (and d!537796 (not c!286884)) b!1760926))

(declare-fun m!2176879 () Bool)

(assert (=> b!1760926 m!2176879))

(assert (=> b!1760301 d!537796))

(declare-fun b!1760945 () Bool)

(declare-fun res!792577 () Bool)

(declare-fun e!1126963 () Bool)

(assert (=> b!1760945 (=> (not res!792577) (not e!1126963))))

(declare-fun lt!680657 () Option!3949)

(assert (=> b!1760945 (= res!792577 (= (rule!5481 (_1!10897 (get!5897 lt!680657))) (rule!5481 (_1!10897 lt!680362))))))

(declare-fun b!1760946 () Bool)

(declare-fun e!1126965 () Option!3949)

(declare-datatypes ((tuple2!18998 0))(
  ( (tuple2!18999 (_1!10901 List!19452) (_2!10901 List!19452)) )
))
(declare-fun lt!680656 () tuple2!18998)

(assert (=> b!1760946 (= e!1126965 (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 (_1!10901 lt!680656))) (rule!5481 (_1!10897 lt!680362)) (size!15394 (seqFromList!2432 (_1!10901 lt!680656))) (_1!10901 lt!680656)) (_2!10901 lt!680656))))))

(declare-fun lt!680659 () Unit!33555)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!423 (Regex!4791 List!19452) Unit!33555)

(assert (=> b!1760946 (= lt!680659 (longestMatchIsAcceptedByMatchOrIsEmpty!423 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680363))))

(declare-fun res!792576 () Bool)

(declare-fun findLongestMatchInner!439 (Regex!4791 List!19452 Int List!19452 List!19452 Int) tuple2!18998)

(assert (=> b!1760946 (= res!792576 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun e!1126966 () Bool)

(assert (=> b!1760946 (=> res!792576 e!1126966)))

(assert (=> b!1760946 e!1126966))

(declare-fun lt!680655 () Unit!33555)

(assert (=> b!1760946 (= lt!680655 lt!680659)))

(declare-fun lt!680658 () Unit!33555)

(assert (=> b!1760946 (= lt!680658 (lemmaSemiInverse!601 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 (_1!10901 lt!680656))))))

(declare-fun b!1760947 () Bool)

(declare-fun res!792578 () Bool)

(assert (=> b!1760947 (=> (not res!792578) (not e!1126963))))

(assert (=> b!1760947 (= res!792578 (= (value!108368 (_1!10897 (get!5897 lt!680657))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))))))))

(declare-fun d!537798 () Bool)

(declare-fun e!1126964 () Bool)

(assert (=> d!537798 e!1126964))

(declare-fun res!792579 () Bool)

(assert (=> d!537798 (=> res!792579 e!1126964)))

(assert (=> d!537798 (= res!792579 (isEmpty!12230 lt!680657))))

(assert (=> d!537798 (= lt!680657 e!1126965)))

(declare-fun c!286888 () Bool)

(assert (=> d!537798 (= c!286888 (isEmpty!12227 (_1!10901 lt!680656)))))

(declare-fun findLongestMatch!366 (Regex!4791 List!19452) tuple2!18998)

(assert (=> d!537798 (= lt!680656 (findLongestMatch!366 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680363))))

(assert (=> d!537798 (ruleValid!961 thiss!24550 (rule!5481 (_1!10897 lt!680362)))))

(assert (=> d!537798 (= (maxPrefixOneRule!1015 thiss!24550 (rule!5481 (_1!10897 lt!680362)) lt!680363) lt!680657)))

(declare-fun b!1760948 () Bool)

(assert (=> b!1760948 (= e!1126965 None!3948)))

(declare-fun b!1760949 () Bool)

(assert (=> b!1760949 (= e!1126964 e!1126963)))

(declare-fun res!792580 () Bool)

(assert (=> b!1760949 (=> (not res!792580) (not e!1126963))))

(assert (=> b!1760949 (= res!792580 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))

(declare-fun b!1760950 () Bool)

(assert (=> b!1760950 (= e!1126963 (= (size!15393 (_1!10897 (get!5897 lt!680657))) (size!15395 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657))))))))

(declare-fun b!1760951 () Bool)

(declare-fun res!792581 () Bool)

(assert (=> b!1760951 (=> (not res!792581) (not e!1126963))))

(assert (=> b!1760951 (= res!792581 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))) (_2!10897 (get!5897 lt!680657))) lt!680363))))

(declare-fun b!1760952 () Bool)

(assert (=> b!1760952 (= e!1126966 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun b!1760953 () Bool)

(declare-fun res!792575 () Bool)

(assert (=> b!1760953 (=> (not res!792575) (not e!1126963))))

(assert (=> b!1760953 (= res!792575 (< (size!15395 (_2!10897 (get!5897 lt!680657))) (size!15395 lt!680363)))))

(assert (= (and d!537798 c!286888) b!1760948))

(assert (= (and d!537798 (not c!286888)) b!1760946))

(assert (= (and b!1760946 (not res!792576)) b!1760952))

(assert (= (and d!537798 (not res!792579)) b!1760949))

(assert (= (and b!1760949 res!792580) b!1760951))

(assert (= (and b!1760951 res!792581) b!1760953))

(assert (= (and b!1760953 res!792575) b!1760945))

(assert (= (and b!1760945 res!792577) b!1760947))

(assert (= (and b!1760947 res!792578) b!1760950))

(declare-fun m!2176881 () Bool)

(assert (=> b!1760945 m!2176881))

(assert (=> b!1760947 m!2176881))

(declare-fun m!2176883 () Bool)

(assert (=> b!1760947 m!2176883))

(assert (=> b!1760947 m!2176883))

(declare-fun m!2176885 () Bool)

(assert (=> b!1760947 m!2176885))

(assert (=> b!1760949 m!2176881))

(declare-fun m!2176887 () Bool)

(assert (=> b!1760949 m!2176887))

(assert (=> b!1760949 m!2176887))

(declare-fun m!2176889 () Bool)

(assert (=> b!1760949 m!2176889))

(assert (=> b!1760949 m!2176889))

(declare-fun m!2176891 () Bool)

(assert (=> b!1760949 m!2176891))

(assert (=> b!1760953 m!2176881))

(declare-fun m!2176893 () Bool)

(assert (=> b!1760953 m!2176893))

(assert (=> b!1760953 m!2176421))

(assert (=> b!1760950 m!2176881))

(declare-fun m!2176895 () Bool)

(assert (=> b!1760950 m!2176895))

(declare-fun m!2176897 () Bool)

(assert (=> d!537798 m!2176897))

(declare-fun m!2176899 () Bool)

(assert (=> d!537798 m!2176899))

(declare-fun m!2176901 () Bool)

(assert (=> d!537798 m!2176901))

(declare-fun m!2176903 () Bool)

(assert (=> d!537798 m!2176903))

(declare-fun m!2176905 () Bool)

(assert (=> b!1760946 m!2176905))

(declare-fun m!2176907 () Bool)

(assert (=> b!1760946 m!2176907))

(assert (=> b!1760946 m!2176905))

(declare-fun m!2176909 () Bool)

(assert (=> b!1760946 m!2176909))

(assert (=> b!1760946 m!2176905))

(assert (=> b!1760946 m!2176421))

(declare-fun m!2176911 () Bool)

(assert (=> b!1760946 m!2176911))

(assert (=> b!1760946 m!2176905))

(declare-fun m!2176913 () Bool)

(assert (=> b!1760946 m!2176913))

(declare-fun m!2176915 () Bool)

(assert (=> b!1760946 m!2176915))

(declare-fun m!2176917 () Bool)

(assert (=> b!1760946 m!2176917))

(assert (=> b!1760946 m!2176421))

(declare-fun m!2176919 () Bool)

(assert (=> b!1760946 m!2176919))

(assert (=> b!1760946 m!2176917))

(assert (=> b!1760952 m!2176917))

(assert (=> b!1760952 m!2176421))

(assert (=> b!1760952 m!2176917))

(assert (=> b!1760952 m!2176421))

(assert (=> b!1760952 m!2176919))

(declare-fun m!2176921 () Bool)

(assert (=> b!1760952 m!2176921))

(assert (=> b!1760951 m!2176881))

(assert (=> b!1760951 m!2176887))

(assert (=> b!1760951 m!2176887))

(assert (=> b!1760951 m!2176889))

(assert (=> b!1760951 m!2176889))

(declare-fun m!2176923 () Bool)

(assert (=> b!1760951 m!2176923))

(assert (=> b!1760301 d!537798))

(declare-fun d!537800 () Bool)

(assert (=> d!537800 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 lt!680348)) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348)))))

(declare-fun b_lambda!56985 () Bool)

(assert (=> (not b_lambda!56985) (not d!537800)))

(declare-fun t!164076 () Bool)

(declare-fun tb!106041 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164076) tb!106041))

(declare-fun result!127592 () Bool)

(assert (=> tb!106041 (= result!127592 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(declare-fun m!2176925 () Bool)

(assert (=> tb!106041 m!2176925))

(assert (=> d!537800 t!164076))

(declare-fun b_and!132835 () Bool)

(assert (= b_and!132829 (and (=> t!164076 result!127592) b_and!132835)))

(declare-fun t!164078 () Bool)

(declare-fun tb!106043 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164078) tb!106043))

(declare-fun result!127594 () Bool)

(assert (= result!127594 result!127592))

(assert (=> d!537800 t!164078))

(declare-fun b_and!132837 () Bool)

(assert (= b_and!132831 (and (=> t!164078 result!127594) b_and!132837)))

(declare-fun tb!106045 () Bool)

(declare-fun t!164080 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164080) tb!106045))

(declare-fun result!127596 () Bool)

(assert (= result!127596 result!127592))

(assert (=> d!537800 t!164080))

(declare-fun b_and!132839 () Bool)

(assert (= b_and!132833 (and (=> t!164080 result!127596) b_and!132839)))

(assert (=> d!537800 m!2176101))

(declare-fun m!2176927 () Bool)

(assert (=> d!537800 m!2176927))

(assert (=> b!1760301 d!537800))

(declare-fun d!537802 () Bool)

(declare-fun fromListB!1110 (List!19452) BalanceConc!12838)

(assert (=> d!537802 (= (seqFromList!2432 lt!680348) (fromListB!1110 lt!680348))))

(declare-fun bs!404040 () Bool)

(assert (= bs!404040 d!537802))

(declare-fun m!2176929 () Bool)

(assert (=> bs!404040 m!2176929))

(assert (=> b!1760301 d!537802))

(declare-fun b!1760954 () Bool)

(declare-fun res!792588 () Bool)

(declare-fun e!1126968 () Bool)

(assert (=> b!1760954 (=> (not res!792588) (not e!1126968))))

(declare-fun call!110646 () Bool)

(assert (=> b!1760954 (= res!792588 (not call!110646))))

(declare-fun b!1760955 () Bool)

(declare-fun res!792583 () Bool)

(declare-fun e!1126974 () Bool)

(assert (=> b!1760955 (=> res!792583 e!1126974)))

(assert (=> b!1760955 (= res!792583 e!1126968)))

(declare-fun res!792584 () Bool)

(assert (=> b!1760955 (=> (not res!792584) (not e!1126968))))

(declare-fun lt!680660 () Bool)

(assert (=> b!1760955 (= res!792584 lt!680660)))

(declare-fun b!1760956 () Bool)

(declare-fun res!792586 () Bool)

(assert (=> b!1760956 (=> (not res!792586) (not e!1126968))))

(assert (=> b!1760956 (= res!792586 (isEmpty!12227 (tail!2633 lt!680348)))))

(declare-fun b!1760958 () Bool)

(declare-fun e!1126973 () Bool)

(assert (=> b!1760958 (= e!1126973 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1760959 () Bool)

(declare-fun res!792587 () Bool)

(assert (=> b!1760959 (=> res!792587 e!1126974)))

(assert (=> b!1760959 (= res!792587 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun e!1126970 () Bool)

(assert (=> b!1760959 (= e!1126970 e!1126974)))

(declare-fun b!1760960 () Bool)

(declare-fun res!792582 () Bool)

(declare-fun e!1126969 () Bool)

(assert (=> b!1760960 (=> res!792582 e!1126969)))

(assert (=> b!1760960 (= res!792582 (not (isEmpty!12227 (tail!2633 lt!680348))))))

(declare-fun bm!110641 () Bool)

(assert (=> bm!110641 (= call!110646 (isEmpty!12227 lt!680348))))

(declare-fun b!1760961 () Bool)

(declare-fun e!1126971 () Bool)

(assert (=> b!1760961 (= e!1126971 e!1126969)))

(declare-fun res!792589 () Bool)

(assert (=> b!1760961 (=> res!792589 e!1126969)))

(assert (=> b!1760961 (= res!792589 call!110646)))

(declare-fun b!1760962 () Bool)

(assert (=> b!1760962 (= e!1126969 (not (= (head!4076 lt!680348) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun b!1760963 () Bool)

(assert (=> b!1760963 (= e!1126973 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)) (tail!2633 lt!680348)))))

(declare-fun b!1760964 () Bool)

(declare-fun e!1126972 () Bool)

(assert (=> b!1760964 (= e!1126972 (= lt!680660 call!110646))))

(declare-fun b!1760965 () Bool)

(assert (=> b!1760965 (= e!1126972 e!1126970)))

(declare-fun c!286889 () Bool)

(assert (=> b!1760965 (= c!286889 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1760966 () Bool)

(assert (=> b!1760966 (= e!1126974 e!1126971)))

(declare-fun res!792585 () Bool)

(assert (=> b!1760966 (=> (not res!792585) (not e!1126971))))

(assert (=> b!1760966 (= res!792585 (not lt!680660))))

(declare-fun b!1760967 () Bool)

(assert (=> b!1760967 (= e!1126968 (= (head!4076 lt!680348) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun d!537804 () Bool)

(assert (=> d!537804 e!1126972))

(declare-fun c!286891 () Bool)

(assert (=> d!537804 (= c!286891 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (=> d!537804 (= lt!680660 e!1126973)))

(declare-fun c!286890 () Bool)

(assert (=> d!537804 (= c!286890 (isEmpty!12227 lt!680348))))

(assert (=> d!537804 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!537804 (= (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680348) lt!680660)))

(declare-fun b!1760957 () Bool)

(assert (=> b!1760957 (= e!1126970 (not lt!680660))))

(assert (= (and d!537804 c!286890) b!1760958))

(assert (= (and d!537804 (not c!286890)) b!1760963))

(assert (= (and d!537804 c!286891) b!1760964))

(assert (= (and d!537804 (not c!286891)) b!1760965))

(assert (= (and b!1760965 c!286889) b!1760957))

(assert (= (and b!1760965 (not c!286889)) b!1760959))

(assert (= (and b!1760959 (not res!792587)) b!1760955))

(assert (= (and b!1760955 res!792584) b!1760954))

(assert (= (and b!1760954 res!792588) b!1760956))

(assert (= (and b!1760956 res!792586) b!1760967))

(assert (= (and b!1760955 (not res!792583)) b!1760966))

(assert (= (and b!1760966 res!792585) b!1760961))

(assert (= (and b!1760961 (not res!792589)) b!1760960))

(assert (= (and b!1760960 (not res!792582)) b!1760962))

(assert (= (or b!1760964 b!1760954 b!1760961) bm!110641))

(declare-fun m!2176931 () Bool)

(assert (=> bm!110641 m!2176931))

(assert (=> b!1760960 m!2176411))

(assert (=> b!1760960 m!2176411))

(declare-fun m!2176933 () Bool)

(assert (=> b!1760960 m!2176933))

(declare-fun m!2176935 () Bool)

(assert (=> b!1760958 m!2176935))

(assert (=> d!537804 m!2176931))

(declare-fun m!2176937 () Bool)

(assert (=> d!537804 m!2176937))

(assert (=> b!1760956 m!2176411))

(assert (=> b!1760956 m!2176411))

(assert (=> b!1760956 m!2176933))

(assert (=> b!1760963 m!2176417))

(assert (=> b!1760963 m!2176417))

(declare-fun m!2176939 () Bool)

(assert (=> b!1760963 m!2176939))

(assert (=> b!1760963 m!2176411))

(assert (=> b!1760963 m!2176939))

(assert (=> b!1760963 m!2176411))

(declare-fun m!2176941 () Bool)

(assert (=> b!1760963 m!2176941))

(assert (=> b!1760967 m!2176417))

(assert (=> b!1760962 m!2176417))

(assert (=> b!1760294 d!537804))

(declare-fun d!537806 () Bool)

(assert (=> d!537806 (= (isEmpty!12227 (_2!10897 lt!680343)) ((_ is Nil!19382) (_2!10897 lt!680343)))))

(assert (=> b!1760296 d!537806))

(declare-fun d!537808 () Bool)

(declare-fun res!792594 () Bool)

(declare-fun e!1126977 () Bool)

(assert (=> d!537808 (=> (not res!792594) (not e!1126977))))

(assert (=> d!537808 (= res!792594 (not (isEmpty!12227 (originalCharacters!4277 token!523))))))

(assert (=> d!537808 (= (inv!25169 token!523) e!1126977)))

(declare-fun b!1760972 () Bool)

(declare-fun res!792595 () Bool)

(assert (=> b!1760972 (=> (not res!792595) (not e!1126977))))

(assert (=> b!1760972 (= res!792595 (= (originalCharacters!4277 token!523) (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(declare-fun b!1760973 () Bool)

(assert (=> b!1760973 (= e!1126977 (= (size!15393 token!523) (size!15395 (originalCharacters!4277 token!523))))))

(assert (= (and d!537808 res!792594) b!1760972))

(assert (= (and b!1760972 res!792595) b!1760973))

(declare-fun b_lambda!56987 () Bool)

(assert (=> (not b_lambda!56987) (not b!1760972)))

(assert (=> b!1760972 t!164038))

(declare-fun b_and!132841 () Bool)

(assert (= b_and!132823 (and (=> t!164038 result!127548) b_and!132841)))

(assert (=> b!1760972 t!164040))

(declare-fun b_and!132843 () Bool)

(assert (= b_and!132825 (and (=> t!164040 result!127550) b_and!132843)))

(assert (=> b!1760972 t!164042))

(declare-fun b_and!132845 () Bool)

(assert (= b_and!132827 (and (=> t!164042 result!127552) b_and!132845)))

(declare-fun m!2176943 () Bool)

(assert (=> d!537808 m!2176943))

(assert (=> b!1760972 m!2176381))

(assert (=> b!1760972 m!2176381))

(declare-fun m!2176945 () Bool)

(assert (=> b!1760972 m!2176945))

(declare-fun m!2176947 () Bool)

(assert (=> b!1760973 m!2176947))

(assert (=> start!174110 d!537808))

(declare-fun d!537810 () Bool)

(assert (=> d!537810 (= (get!5897 lt!680352) (v!25409 lt!680352))))

(assert (=> b!1760295 d!537810))

(declare-fun d!537812 () Bool)

(assert (=> d!537812 (= (size!15393 (_1!10897 lt!680362)) (size!15395 (originalCharacters!4277 (_1!10897 lt!680362))))))

(declare-fun Unit!33564 () Unit!33555)

(assert (=> d!537812 (= (lemmaCharactersSize!521 (_1!10897 lt!680362)) Unit!33564)))

(declare-fun bs!404041 () Bool)

(assert (= bs!404041 d!537812))

(declare-fun m!2176949 () Bool)

(assert (=> bs!404041 m!2176949))

(assert (=> b!1760291 d!537812))

(declare-fun b!1760980 () Bool)

(declare-fun e!1126982 () Bool)

(assert (=> b!1760980 (= e!1126982 true)))

(declare-fun d!537814 () Bool)

(assert (=> d!537814 e!1126982))

(assert (= d!537814 b!1760980))

(declare-fun order!12291 () Int)

(declare-fun lambda!70150 () Int)

(declare-fun dynLambda!9335 (Int Int) Int)

(assert (=> b!1760980 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9335 order!12291 lambda!70150))))

(assert (=> b!1760980 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9335 order!12291 lambda!70150))))

(assert (=> d!537814 (= (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(declare-fun lt!680663 () Unit!33555)

(declare-fun Forall2of!123 (Int BalanceConc!12838 BalanceConc!12838) Unit!33555)

(assert (=> d!537814 (= lt!680663 (Forall2of!123 lambda!70150 lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(assert (=> d!537814 (= (list!7861 lt!680349) (list!7861 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(assert (=> d!537814 (= (lemmaEqSameImage!374 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))) lt!680663)))

(declare-fun b_lambda!56989 () Bool)

(assert (=> (not b_lambda!56989) (not d!537814)))

(assert (=> d!537814 t!164029))

(declare-fun b_and!132847 () Bool)

(assert (= b_and!132835 (and (=> t!164029 result!127540) b_and!132847)))

(assert (=> d!537814 t!164031))

(declare-fun b_and!132849 () Bool)

(assert (= b_and!132837 (and (=> t!164031 result!127544) b_and!132849)))

(assert (=> d!537814 t!164033))

(declare-fun b_and!132851 () Bool)

(assert (= b_and!132839 (and (=> t!164033 result!127546) b_and!132851)))

(declare-fun b_lambda!56991 () Bool)

(assert (=> (not b_lambda!56991) (not d!537814)))

(declare-fun tb!106047 () Bool)

(declare-fun t!164082 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164082) tb!106047))

(declare-fun result!127598 () Bool)

(assert (=> tb!106047 (= result!127598 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun m!2176951 () Bool)

(assert (=> tb!106047 m!2176951))

(assert (=> d!537814 t!164082))

(declare-fun b_and!132853 () Bool)

(assert (= b_and!132847 (and (=> t!164082 result!127598) b_and!132853)))

(declare-fun t!164084 () Bool)

(declare-fun tb!106049 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164084) tb!106049))

(declare-fun result!127600 () Bool)

(assert (= result!127600 result!127598))

(assert (=> d!537814 t!164084))

(declare-fun b_and!132855 () Bool)

(assert (= b_and!132849 (and (=> t!164084 result!127600) b_and!132855)))

(declare-fun t!164086 () Bool)

(declare-fun tb!106051 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164086) tb!106051))

(declare-fun result!127602 () Bool)

(assert (= result!127602 result!127598))

(assert (=> d!537814 t!164086))

(declare-fun b_and!132857 () Bool)

(assert (= b_and!132851 (and (=> t!164086 result!127602) b_and!132857)))

(assert (=> d!537814 m!2176085))

(declare-fun m!2176953 () Bool)

(assert (=> d!537814 m!2176953))

(assert (=> d!537814 m!2176043))

(assert (=> d!537814 m!2176085))

(declare-fun m!2176955 () Bool)

(assert (=> d!537814 m!2176955))

(assert (=> d!537814 m!2176085))

(declare-fun m!2176957 () Bool)

(assert (=> d!537814 m!2176957))

(assert (=> d!537814 m!2175991))

(assert (=> b!1760291 d!537814))

(declare-fun d!537816 () Bool)

(assert (=> d!537816 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) lt!680349) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))

(declare-fun b_lambda!56993 () Bool)

(assert (=> (not b_lambda!56993) (not d!537816)))

(assert (=> d!537816 t!164029))

(declare-fun b_and!132859 () Bool)

(assert (= b_and!132853 (and (=> t!164029 result!127540) b_and!132859)))

(assert (=> d!537816 t!164031))

(declare-fun b_and!132861 () Bool)

(assert (= b_and!132855 (and (=> t!164031 result!127544) b_and!132861)))

(assert (=> d!537816 t!164033))

(declare-fun b_and!132863 () Bool)

(assert (= b_and!132857 (and (=> t!164033 result!127546) b_and!132863)))

(assert (=> d!537816 m!2175991))

(assert (=> b!1760291 d!537816))

(declare-fun d!537818 () Bool)

(declare-fun lt!680666 () Int)

(assert (=> d!537818 (= lt!680666 (size!15395 (list!7861 lt!680349)))))

(declare-fun size!15397 (Conc!6447) Int)

(assert (=> d!537818 (= lt!680666 (size!15397 (c!286775 lt!680349)))))

(assert (=> d!537818 (= (size!15394 lt!680349) lt!680666)))

(declare-fun bs!404042 () Bool)

(assert (= bs!404042 d!537818))

(assert (=> bs!404042 m!2176043))

(assert (=> bs!404042 m!2176043))

(declare-fun m!2176959 () Bool)

(assert (=> bs!404042 m!2176959))

(declare-fun m!2176961 () Bool)

(assert (=> bs!404042 m!2176961))

(assert (=> b!1760291 d!537818))

(declare-fun d!537820 () Bool)

(assert (=> d!537820 (= (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))) (fromListB!1110 (originalCharacters!4277 (_1!10897 lt!680362))))))

(declare-fun bs!404043 () Bool)

(assert (= bs!404043 d!537820))

(declare-fun m!2176963 () Bool)

(assert (=> bs!404043 m!2176963))

(assert (=> b!1760291 d!537820))

(declare-fun d!537822 () Bool)

(assert (=> d!537822 (= (isEmpty!12227 suffix!1421) ((_ is Nil!19382) suffix!1421))))

(assert (=> b!1760293 d!537822))

(declare-fun d!537824 () Bool)

(declare-fun c!286892 () Bool)

(assert (=> d!537824 (= c!286892 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(declare-fun e!1126984 () Bool)

(assert (=> d!537824 (= (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1126984)))

(declare-fun b!1760981 () Bool)

(assert (=> b!1760981 (= e!1126984 (inv!25175 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(declare-fun b!1760982 () Bool)

(declare-fun e!1126985 () Bool)

(assert (=> b!1760982 (= e!1126984 e!1126985)))

(declare-fun res!792598 () Bool)

(assert (=> b!1760982 (= res!792598 (not ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(assert (=> b!1760982 (=> res!792598 e!1126985)))

(declare-fun b!1760983 () Bool)

(assert (=> b!1760983 (= e!1126985 (inv!25176 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(assert (= (and d!537824 c!286892) b!1760981))

(assert (= (and d!537824 (not c!286892)) b!1760982))

(assert (= (and b!1760982 (not res!792598)) b!1760983))

(declare-fun m!2176965 () Bool)

(assert (=> b!1760981 m!2176965))

(declare-fun m!2176967 () Bool)

(assert (=> b!1760983 m!2176967))

(assert (=> b!1760326 d!537824))

(declare-fun b!1760995 () Bool)

(declare-fun e!1126988 () Bool)

(declare-fun tp!500224 () Bool)

(declare-fun tp!500227 () Bool)

(assert (=> b!1760995 (= e!1126988 (and tp!500224 tp!500227))))

(declare-fun b!1760996 () Bool)

(declare-fun tp!500225 () Bool)

(assert (=> b!1760996 (= e!1126988 tp!500225)))

(declare-fun b!1760994 () Bool)

(assert (=> b!1760994 (= e!1126988 tp_is_empty!7825)))

(declare-fun b!1760997 () Bool)

(declare-fun tp!500226 () Bool)

(declare-fun tp!500228 () Bool)

(assert (=> b!1760997 (= e!1126988 (and tp!500226 tp!500228))))

(assert (=> b!1760305 (= tp!500143 e!1126988)))

(assert (= (and b!1760305 ((_ is ElementMatch!4791) (regex!3463 rule!422))) b!1760994))

(assert (= (and b!1760305 ((_ is Concat!8345) (regex!3463 rule!422))) b!1760995))

(assert (= (and b!1760305 ((_ is Star!4791) (regex!3463 rule!422))) b!1760996))

(assert (= (and b!1760305 ((_ is Union!4791) (regex!3463 rule!422))) b!1760997))

(declare-fun b!1761002 () Bool)

(declare-fun e!1126991 () Bool)

(declare-fun tp!500231 () Bool)

(assert (=> b!1761002 (= e!1126991 (and tp_is_empty!7825 tp!500231))))

(assert (=> b!1760299 (= tp!500148 e!1126991)))

(assert (= (and b!1760299 ((_ is Cons!19382) (originalCharacters!4277 token!523))) b!1761002))

(declare-fun b!1761004 () Bool)

(declare-fun e!1126992 () Bool)

(declare-fun tp!500232 () Bool)

(declare-fun tp!500235 () Bool)

(assert (=> b!1761004 (= e!1126992 (and tp!500232 tp!500235))))

(declare-fun b!1761005 () Bool)

(declare-fun tp!500233 () Bool)

(assert (=> b!1761005 (= e!1126992 tp!500233)))

(declare-fun b!1761003 () Bool)

(assert (=> b!1761003 (= e!1126992 tp_is_empty!7825)))

(declare-fun b!1761006 () Bool)

(declare-fun tp!500234 () Bool)

(declare-fun tp!500236 () Bool)

(assert (=> b!1761006 (= e!1126992 (and tp!500234 tp!500236))))

(assert (=> b!1760306 (= tp!500145 e!1126992)))

(assert (= (and b!1760306 ((_ is ElementMatch!4791) (regex!3463 (rule!5481 token!523)))) b!1761003))

(assert (= (and b!1760306 ((_ is Concat!8345) (regex!3463 (rule!5481 token!523)))) b!1761004))

(assert (= (and b!1760306 ((_ is Star!4791) (regex!3463 (rule!5481 token!523)))) b!1761005))

(assert (= (and b!1760306 ((_ is Union!4791) (regex!3463 (rule!5481 token!523)))) b!1761006))

(declare-fun b!1761017 () Bool)

(declare-fun b_free!48687 () Bool)

(declare-fun b_next!49391 () Bool)

(assert (=> b!1761017 (= b_free!48687 (not b_next!49391))))

(declare-fun tb!106053 () Bool)

(declare-fun t!164088 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164088) tb!106053))

(declare-fun result!127610 () Bool)

(assert (= result!127610 result!127540))

(assert (=> b!1760285 t!164088))

(declare-fun t!164090 () Bool)

(declare-fun tb!106055 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164090) tb!106055))

(declare-fun result!127612 () Bool)

(assert (= result!127612 result!127598))

(assert (=> d!537814 t!164090))

(assert (=> d!537762 t!164088))

(assert (=> d!537816 t!164088))

(assert (=> d!537814 t!164088))

(declare-fun t!164092 () Bool)

(declare-fun tb!106057 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164092) tb!106057))

(declare-fun result!127614 () Bool)

(assert (= result!127614 result!127592))

(assert (=> d!537800 t!164092))

(declare-fun tp!500248 () Bool)

(declare-fun b_and!132865 () Bool)

(assert (=> b!1761017 (= tp!500248 (and (=> t!164090 result!127612) (=> t!164088 result!127610) (=> t!164092 result!127614) b_and!132865))))

(declare-fun b_free!48689 () Bool)

(declare-fun b_next!49393 () Bool)

(assert (=> b!1761017 (= b_free!48689 (not b_next!49393))))

(declare-fun t!164094 () Bool)

(declare-fun tb!106059 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164094) tb!106059))

(declare-fun result!127616 () Bool)

(assert (= result!127616 result!127534))

(assert (=> d!537762 t!164094))

(declare-fun tb!106061 () Bool)

(declare-fun t!164096 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164096) tb!106061))

(declare-fun result!127618 () Bool)

(assert (= result!127618 result!127526))

(assert (=> d!537746 t!164096))

(assert (=> b!1760285 t!164094))

(declare-fun tb!106063 () Bool)

(declare-fun t!164098 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) t!164098) tb!106063))

(declare-fun result!127620 () Bool)

(assert (= result!127620 result!127548))

(assert (=> b!1760972 t!164098))

(assert (=> d!537630 t!164098))

(assert (=> b!1760283 t!164096))

(declare-fun b_and!132867 () Bool)

(declare-fun tp!500246 () Bool)

(assert (=> b!1761017 (= tp!500246 (and (=> t!164094 result!127616) (=> t!164096 result!127618) (=> t!164098 result!127620) b_and!132867))))

(declare-fun e!1127003 () Bool)

(assert (=> b!1761017 (= e!1127003 (and tp!500248 tp!500246))))

(declare-fun tp!500245 () Bool)

(declare-fun b!1761016 () Bool)

(declare-fun e!1127004 () Bool)

(assert (=> b!1761016 (= e!1127004 (and tp!500245 (inv!25164 (tag!3829 (h!24784 (t!164036 rules!3447)))) (inv!25170 (transformation!3463 (h!24784 (t!164036 rules!3447)))) e!1127003))))

(declare-fun b!1761015 () Bool)

(declare-fun e!1127001 () Bool)

(declare-fun tp!500247 () Bool)

(assert (=> b!1761015 (= e!1127001 (and e!1127004 tp!500247))))

(assert (=> b!1760297 (= tp!500147 e!1127001)))

(assert (= b!1761016 b!1761017))

(assert (= b!1761015 b!1761016))

(assert (= (and b!1760297 ((_ is Cons!19383) (t!164036 rules!3447))) b!1761015))

(declare-fun m!2176969 () Bool)

(assert (=> b!1761016 m!2176969))

(declare-fun m!2176971 () Bool)

(assert (=> b!1761016 m!2176971))

(declare-fun e!1127009 () Bool)

(declare-fun tp!500256 () Bool)

(declare-fun b!1761026 () Bool)

(declare-fun tp!500255 () Bool)

(assert (=> b!1761026 (= e!1127009 (and (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) tp!500255 (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) tp!500256))))

(declare-fun b!1761028 () Bool)

(declare-fun e!1127010 () Bool)

(declare-fun tp!500257 () Bool)

(assert (=> b!1761028 (= e!1127010 tp!500257)))

(declare-fun b!1761027 () Bool)

(declare-fun inv!25178 (IArray!12899) Bool)

(assert (=> b!1761027 (= e!1127009 (and (inv!25178 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) e!1127010))))

(assert (=> b!1760325 (= tp!500157 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) e!1127009))))

(assert (= (and b!1760325 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) b!1761026))

(assert (= b!1761027 b!1761028))

(assert (= (and b!1760325 ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) b!1761027))

(declare-fun m!2176973 () Bool)

(assert (=> b!1761026 m!2176973))

(declare-fun m!2176975 () Bool)

(assert (=> b!1761026 m!2176975))

(declare-fun m!2176977 () Bool)

(assert (=> b!1761027 m!2176977))

(assert (=> b!1760325 m!2175981))

(declare-fun b!1761029 () Bool)

(declare-fun e!1127011 () Bool)

(declare-fun tp!500258 () Bool)

(assert (=> b!1761029 (= e!1127011 (and tp_is_empty!7825 tp!500258))))

(assert (=> b!1760286 (= tp!500152 e!1127011)))

(assert (= (and b!1760286 ((_ is Cons!19382) (t!164035 suffix!1421))) b!1761029))

(declare-fun b!1761031 () Bool)

(declare-fun e!1127012 () Bool)

(declare-fun tp!500259 () Bool)

(declare-fun tp!500262 () Bool)

(assert (=> b!1761031 (= e!1127012 (and tp!500259 tp!500262))))

(declare-fun b!1761032 () Bool)

(declare-fun tp!500260 () Bool)

(assert (=> b!1761032 (= e!1127012 tp!500260)))

(declare-fun b!1761030 () Bool)

(assert (=> b!1761030 (= e!1127012 tp_is_empty!7825)))

(declare-fun b!1761033 () Bool)

(declare-fun tp!500261 () Bool)

(declare-fun tp!500263 () Bool)

(assert (=> b!1761033 (= e!1127012 (and tp!500261 tp!500263))))

(assert (=> b!1760309 (= tp!500150 e!1127012)))

(assert (= (and b!1760309 ((_ is ElementMatch!4791) (regex!3463 (h!24784 rules!3447)))) b!1761030))

(assert (= (and b!1760309 ((_ is Concat!8345) (regex!3463 (h!24784 rules!3447)))) b!1761031))

(assert (= (and b!1760309 ((_ is Star!4791) (regex!3463 (h!24784 rules!3447)))) b!1761032))

(assert (= (and b!1760309 ((_ is Union!4791) (regex!3463 (h!24784 rules!3447)))) b!1761033))

(declare-fun e!1127013 () Bool)

(declare-fun tp!500264 () Bool)

(declare-fun tp!500265 () Bool)

(declare-fun b!1761034 () Bool)

(assert (=> b!1761034 (= e!1127013 (and (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) tp!500264 (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) tp!500265))))

(declare-fun b!1761036 () Bool)

(declare-fun e!1127014 () Bool)

(declare-fun tp!500266 () Bool)

(assert (=> b!1761036 (= e!1127014 tp!500266)))

(declare-fun b!1761035 () Bool)

(assert (=> b!1761035 (= e!1127013 (and (inv!25178 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) e!1127014))))

(assert (=> b!1760326 (= tp!500158 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1127013))))

(assert (= (and b!1760326 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) b!1761034))

(assert (= b!1761035 b!1761036))

(assert (= (and b!1760326 ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) b!1761035))

(declare-fun m!2176979 () Bool)

(assert (=> b!1761034 m!2176979))

(declare-fun m!2176981 () Bool)

(assert (=> b!1761034 m!2176981))

(declare-fun m!2176983 () Bool)

(assert (=> b!1761035 m!2176983))

(assert (=> b!1760326 m!2175985))

(declare-fun b_lambda!56995 () Bool)

(assert (= b_lambda!56947 (or (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!56995)))

(declare-fun b_lambda!56997 () Bool)

(assert (= b_lambda!56987 (or (and b!1760292 b_free!48673) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) b_lambda!56997)))

(declare-fun b_lambda!56999 () Bool)

(assert (= b_lambda!56945 (or (and b!1760292 b_free!48673 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!56999)))

(declare-fun b_lambda!57001 () Bool)

(assert (= b_lambda!56943 (or (and b!1760292 b_free!48673 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57001)))

(declare-fun b_lambda!57003 () Bool)

(assert (= b_lambda!56951 (or (and b!1760292 b_free!48673) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 token!523))))) b_lambda!57003)))

(check-sat (not b!1760752) (not d!537782) (not d!537792) (not b!1760890) (not b!1760511) (not b!1760879) (not b!1761032) (not d!537656) (not b!1760913) (not b!1760946) (not d!537672) (not b_lambda!56997) (not b!1760587) (not d!537778) (not b!1760885) (not d!537804) (not b!1760865) (not b!1760814) (not b!1760556) (not b!1760802) (not b!1760956) (not b_next!49385) (not b!1760967) (not d!537598) (not d!537820) (not b!1760863) (not b!1760582) (not b!1760829) (not b!1760870) (not b!1760754) (not d!537654) (not d!537780) (not d!537682) (not b!1760983) (not b!1760798) (not b!1761016) (not b!1760795) (not d!537790) (not b!1760583) (not d!537812) (not b!1760958) (not d!537594) (not b!1760506) (not b!1760796) (not b!1760561) (not b!1760947) (not d!537742) (not d!537638) (not b!1760908) (not bm!110632) (not d!537774) (not d!537794) (not b!1760505) (not d!537758) (not b!1760424) (not b!1760869) (not tb!106005) (not b_lambda!56979) (not b!1761031) (not b!1760538) (not b!1761005) (not d!537678) (not b!1760919) (not b!1760962) (not b!1760960) (not b!1761027) (not b!1760808) (not d!537624) (not b_lambda!57003) (not b!1760907) (not b_lambda!56989) (not d!537604) (not b!1760569) (not b!1761035) (not b!1760589) (not d!537744) (not b!1760874) (not b_next!49383) (not b!1760905) (not b!1760513) (not b!1760910) b_and!132865 b_and!132843 (not b!1760953) (not d!537630) (not b!1760586) (not b!1760950) (not b_lambda!56981) (not bm!110640) (not d!537756) (not b!1760807) (not b!1760571) (not b!1760753) (not b!1760602) (not b_next!49393) (not b!1760803) (not d!537808) (not b!1760591) b_and!132861 (not b!1760963) (not b!1761029) (not b!1760523) (not d!537798) (not d!537752) tp_is_empty!7825 (not b!1761036) (not d!537818) (not b!1760973) (not b!1760912) (not b_next!49391) (not d!537760) (not d!537750) (not bm!110641) (not b!1760821) (not b_lambda!57001) (not b!1760894) (not b!1761026) (not b!1760995) (not b!1760584) (not b!1760949) (not d!537670) (not b_lambda!56995) (not b!1760414) (not b_lambda!56999) (not b!1761006) (not b!1760570) (not b!1760926) (not b!1760883) (not b!1761034) b_and!132867 (not b!1760588) (not b!1760585) (not bm!110634) (not b_next!49381) (not b!1760557) (not b_lambda!56983) b_and!132845 (not d!537636) (not b!1760867) (not b!1760510) (not b!1760603) (not b!1760560) (not b!1760823) (not b!1760952) (not b!1760972) (not b!1761004) (not b!1760997) (not b!1760562) (not b_next!49375) (not b!1761033) (not b!1760509) (not tb!106047) b_and!132863 (not d!537802) (not b!1760326) (not tb!106041) (not b!1760558) (not b!1761015) (not d!537596) (not b!1760832) b_and!132841 (not bm!110639) (not b!1760413) (not d!537766) (not b_next!49379) b_and!132859 (not d!537776) (not b!1761002) (not d!537772) (not b_lambda!56991) (not b!1760508) (not d!537748) (not b!1760981) (not d!537814) (not b!1760507) (not b!1760996) (not b!1760425) (not d!537762) (not b_lambda!56985) (not b!1760887) (not b_lambda!56993) (not d!537770) (not d!537602) (not b!1760945) (not d!537746) (not b!1760581) (not b_next!49377) (not d!537660) (not b!1761028) (not b!1760325) (not b!1760889) (not b!1760951))
(check-sat (not b_next!49385) (not b_next!49383) (not b_next!49391) (not b_next!49375) b_and!132863 b_and!132859 (not b_next!49377) b_and!132865 b_and!132843 b_and!132861 (not b_next!49393) b_and!132867 (not b_next!49381) b_and!132845 b_and!132841 (not b_next!49379))
(get-model)

(declare-fun bs!404054 () Bool)

(declare-fun d!537850 () Bool)

(assert (= bs!404054 (and d!537850 b!1760284)))

(declare-fun lambda!70162 () Int)

(assert (=> bs!404054 (= (and (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70162 lambda!70132))))

(declare-fun bs!404055 () Bool)

(assert (= bs!404055 (and d!537850 d!537762)))

(assert (=> bs!404055 (= (and (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70162 lambda!70147))))

(assert (=> d!537850 true))

(assert (=> d!537850 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (h!24784 rules!3447)))) (dynLambda!9330 order!12285 lambda!70162))))

(assert (=> d!537850 true))

(assert (=> d!537850 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (dynLambda!9330 order!12285 lambda!70162))))

(assert (=> d!537850 (= (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (Forall!830 lambda!70162))))

(declare-fun bs!404056 () Bool)

(assert (= bs!404056 d!537850))

(declare-fun m!2177037 () Bool)

(assert (=> bs!404056 m!2177037))

(assert (=> d!537636 d!537850))

(declare-fun d!537862 () Bool)

(declare-fun lt!680684 () Int)

(assert (=> d!537862 (>= lt!680684 0)))

(declare-fun e!1127037 () Int)

(assert (=> d!537862 (= lt!680684 e!1127037)))

(declare-fun c!286902 () Bool)

(assert (=> d!537862 (= c!286902 ((_ is Nil!19382) (_2!10897 (get!5897 lt!680513))))))

(assert (=> d!537862 (= (size!15395 (_2!10897 (get!5897 lt!680513))) lt!680684)))

(declare-fun b!1761083 () Bool)

(assert (=> b!1761083 (= e!1127037 0)))

(declare-fun b!1761084 () Bool)

(assert (=> b!1761084 (= e!1127037 (+ 1 (size!15395 (t!164035 (_2!10897 (get!5897 lt!680513))))))))

(assert (= (and d!537862 c!286902) b!1761083))

(assert (= (and d!537862 (not c!286902)) b!1761084))

(declare-fun m!2177039 () Bool)

(assert (=> b!1761084 m!2177039))

(assert (=> b!1760589 d!537862))

(declare-fun d!537864 () Bool)

(assert (=> d!537864 (= (get!5897 lt!680513) (v!25409 lt!680513))))

(assert (=> b!1760589 d!537864))

(declare-fun d!537866 () Bool)

(declare-fun lt!680685 () Int)

(assert (=> d!537866 (>= lt!680685 0)))

(declare-fun e!1127038 () Int)

(assert (=> d!537866 (= lt!680685 e!1127038)))

(declare-fun c!286903 () Bool)

(assert (=> d!537866 (= c!286903 ((_ is Nil!19382) lt!680363))))

(assert (=> d!537866 (= (size!15395 lt!680363) lt!680685)))

(declare-fun b!1761085 () Bool)

(assert (=> b!1761085 (= e!1127038 0)))

(declare-fun b!1761086 () Bool)

(assert (=> b!1761086 (= e!1127038 (+ 1 (size!15395 (t!164035 lt!680363))))))

(assert (= (and d!537866 c!286903) b!1761085))

(assert (= (and d!537866 (not c!286903)) b!1761086))

(declare-fun m!2177041 () Bool)

(assert (=> b!1761086 m!2177041))

(assert (=> b!1760589 d!537866))

(declare-fun d!537868 () Bool)

(declare-fun lt!680686 () Bool)

(assert (=> d!537868 (= lt!680686 (select (content!2800 (t!164036 rules!3447)) rule!422))))

(declare-fun e!1127040 () Bool)

(assert (=> d!537868 (= lt!680686 e!1127040)))

(declare-fun res!792619 () Bool)

(assert (=> d!537868 (=> (not res!792619) (not e!1127040))))

(assert (=> d!537868 (= res!792619 ((_ is Cons!19383) (t!164036 rules!3447)))))

(assert (=> d!537868 (= (contains!3491 (t!164036 rules!3447) rule!422) lt!680686)))

(declare-fun b!1761087 () Bool)

(declare-fun e!1127039 () Bool)

(assert (=> b!1761087 (= e!1127040 e!1127039)))

(declare-fun res!792618 () Bool)

(assert (=> b!1761087 (=> res!792618 e!1127039)))

(assert (=> b!1761087 (= res!792618 (= (h!24784 (t!164036 rules!3447)) rule!422))))

(declare-fun b!1761088 () Bool)

(assert (=> b!1761088 (= e!1127039 (contains!3491 (t!164036 (t!164036 rules!3447)) rule!422))))

(assert (= (and d!537868 res!792619) b!1761087))

(assert (= (and b!1761087 (not res!792618)) b!1761088))

(declare-fun m!2177043 () Bool)

(assert (=> d!537868 m!2177043))

(declare-fun m!2177045 () Bool)

(assert (=> d!537868 m!2177045))

(declare-fun m!2177047 () Bool)

(assert (=> b!1761088 m!2177047))

(assert (=> b!1760829 d!537868))

(declare-fun d!537870 () Bool)

(assert (=> d!537870 (= (get!5897 lt!680657) (v!25409 lt!680657))))

(assert (=> b!1760945 d!537870))

(declare-fun d!537872 () Bool)

(declare-fun res!792624 () Bool)

(declare-fun e!1127046 () Bool)

(assert (=> d!537872 (=> res!792624 e!1127046)))

(assert (=> d!537872 (= res!792624 ((_ is Nil!19383) rules!3447))))

(assert (=> d!537872 (= (noDuplicateTag!1302 thiss!24550 rules!3447 Nil!19389) e!1127046)))

(declare-fun b!1761095 () Bool)

(declare-fun e!1127047 () Bool)

(assert (=> b!1761095 (= e!1127046 e!1127047)))

(declare-fun res!792625 () Bool)

(assert (=> b!1761095 (=> (not res!792625) (not e!1127047))))

(declare-fun contains!3492 (List!19459 String!22097) Bool)

(assert (=> b!1761095 (= res!792625 (not (contains!3492 Nil!19389 (tag!3829 (h!24784 rules!3447)))))))

(declare-fun b!1761096 () Bool)

(assert (=> b!1761096 (= e!1127047 (noDuplicateTag!1302 thiss!24550 (t!164036 rules!3447) (Cons!19389 (tag!3829 (h!24784 rules!3447)) Nil!19389)))))

(assert (= (and d!537872 (not res!792624)) b!1761095))

(assert (= (and b!1761095 res!792625) b!1761096))

(declare-fun m!2177077 () Bool)

(assert (=> b!1761095 m!2177077))

(declare-fun m!2177079 () Bool)

(assert (=> b!1761096 m!2177079))

(assert (=> b!1760832 d!537872))

(declare-fun b!1761116 () Bool)

(declare-fun e!1127057 () List!19452)

(declare-fun list!7867 (IArray!12899) List!19452)

(assert (=> b!1761116 (= e!1127057 (list!7867 (xs!9323 (c!286775 (charsOf!2112 token!523)))))))

(declare-fun b!1761115 () Bool)

(declare-fun e!1127056 () List!19452)

(assert (=> b!1761115 (= e!1127056 e!1127057)))

(declare-fun c!286911 () Bool)

(assert (=> b!1761115 (= c!286911 ((_ is Leaf!9399) (c!286775 (charsOf!2112 token!523))))))

(declare-fun d!537882 () Bool)

(declare-fun c!286910 () Bool)

(assert (=> d!537882 (= c!286910 ((_ is Empty!6447) (c!286775 (charsOf!2112 token!523))))))

(assert (=> d!537882 (= (list!7864 (c!286775 (charsOf!2112 token!523))) e!1127056)))

(declare-fun b!1761114 () Bool)

(assert (=> b!1761114 (= e!1127056 Nil!19382)))

(declare-fun b!1761117 () Bool)

(assert (=> b!1761117 (= e!1127057 (++!5287 (list!7864 (left!15516 (c!286775 (charsOf!2112 token!523)))) (list!7864 (right!15846 (c!286775 (charsOf!2112 token!523))))))))

(assert (= (and d!537882 c!286910) b!1761114))

(assert (= (and d!537882 (not c!286910)) b!1761115))

(assert (= (and b!1761115 c!286911) b!1761116))

(assert (= (and b!1761115 (not c!286911)) b!1761117))

(declare-fun m!2177083 () Bool)

(assert (=> b!1761116 m!2177083))

(declare-fun m!2177085 () Bool)

(assert (=> b!1761117 m!2177085))

(declare-fun m!2177087 () Bool)

(assert (=> b!1761117 m!2177087))

(assert (=> b!1761117 m!2177085))

(assert (=> b!1761117 m!2177087))

(declare-fun m!2177089 () Bool)

(assert (=> b!1761117 m!2177089))

(assert (=> d!537624 d!537882))

(declare-fun d!537890 () Bool)

(assert (=> d!537890 (= (isEmpty!12230 lt!680513) (not ((_ is Some!3948) lt!680513)))))

(assert (=> d!537672 d!537890))

(declare-fun b!1761121 () Bool)

(declare-fun e!1127059 () Bool)

(assert (=> b!1761121 (= e!1127059 (>= (size!15395 lt!680363) (size!15395 lt!680363)))))

(declare-fun d!537892 () Bool)

(assert (=> d!537892 e!1127059))

(declare-fun res!792636 () Bool)

(assert (=> d!537892 (=> res!792636 e!1127059)))

(declare-fun lt!680693 () Bool)

(assert (=> d!537892 (= res!792636 (not lt!680693))))

(declare-fun e!1127058 () Bool)

(assert (=> d!537892 (= lt!680693 e!1127058)))

(declare-fun res!792633 () Bool)

(assert (=> d!537892 (=> res!792633 e!1127058)))

(assert (=> d!537892 (= res!792633 ((_ is Nil!19382) lt!680363))))

(assert (=> d!537892 (= (isPrefix!1703 lt!680363 lt!680363) lt!680693)))

(declare-fun b!1761118 () Bool)

(declare-fun e!1127060 () Bool)

(assert (=> b!1761118 (= e!1127058 e!1127060)))

(declare-fun res!792635 () Bool)

(assert (=> b!1761118 (=> (not res!792635) (not e!1127060))))

(assert (=> b!1761118 (= res!792635 (not ((_ is Nil!19382) lt!680363)))))

(declare-fun b!1761120 () Bool)

(assert (=> b!1761120 (= e!1127060 (isPrefix!1703 (tail!2633 lt!680363) (tail!2633 lt!680363)))))

(declare-fun b!1761119 () Bool)

(declare-fun res!792634 () Bool)

(assert (=> b!1761119 (=> (not res!792634) (not e!1127060))))

(assert (=> b!1761119 (= res!792634 (= (head!4076 lt!680363) (head!4076 lt!680363)))))

(assert (= (and d!537892 (not res!792633)) b!1761118))

(assert (= (and b!1761118 res!792635) b!1761119))

(assert (= (and b!1761119 res!792634) b!1761120))

(assert (= (and d!537892 (not res!792636)) b!1761121))

(assert (=> b!1761121 m!2176421))

(assert (=> b!1761121 m!2176421))

(assert (=> b!1761120 m!2176425))

(assert (=> b!1761120 m!2176425))

(assert (=> b!1761120 m!2176425))

(assert (=> b!1761120 m!2176425))

(declare-fun m!2177091 () Bool)

(assert (=> b!1761120 m!2177091))

(assert (=> b!1761119 m!2176431))

(assert (=> b!1761119 m!2176431))

(assert (=> d!537672 d!537892))

(declare-fun d!537894 () Bool)

(assert (=> d!537894 (isPrefix!1703 lt!680363 lt!680363)))

(declare-fun lt!680696 () Unit!33555)

(declare-fun choose!10906 (List!19452 List!19452) Unit!33555)

(assert (=> d!537894 (= lt!680696 (choose!10906 lt!680363 lt!680363))))

(assert (=> d!537894 (= (lemmaIsPrefixRefl!1128 lt!680363 lt!680363) lt!680696)))

(declare-fun bs!404058 () Bool)

(assert (= bs!404058 d!537894))

(assert (=> bs!404058 m!2176489))

(declare-fun m!2177105 () Bool)

(assert (=> bs!404058 m!2177105))

(assert (=> d!537672 d!537894))

(declare-fun d!537896 () Bool)

(assert (=> d!537896 true))

(declare-fun lt!680700 () Bool)

(declare-fun lambda!70165 () Int)

(declare-fun forall!4275 (List!19453 Int) Bool)

(assert (=> d!537896 (= lt!680700 (forall!4275 rules!3447 lambda!70165))))

(declare-fun e!1127067 () Bool)

(assert (=> d!537896 (= lt!680700 e!1127067)))

(declare-fun res!792641 () Bool)

(assert (=> d!537896 (=> res!792641 e!1127067)))

(assert (=> d!537896 (= res!792641 (not ((_ is Cons!19383) rules!3447)))))

(assert (=> d!537896 (= (rulesValidInductive!1166 thiss!24550 rules!3447) lt!680700)))

(declare-fun b!1761128 () Bool)

(declare-fun e!1127066 () Bool)

(assert (=> b!1761128 (= e!1127067 e!1127066)))

(declare-fun res!792642 () Bool)

(assert (=> b!1761128 (=> (not res!792642) (not e!1127066))))

(assert (=> b!1761128 (= res!792642 (ruleValid!961 thiss!24550 (h!24784 rules!3447)))))

(declare-fun b!1761129 () Bool)

(assert (=> b!1761129 (= e!1127066 (rulesValidInductive!1166 thiss!24550 (t!164036 rules!3447)))))

(assert (= (and d!537896 (not res!792641)) b!1761128))

(assert (= (and b!1761128 res!792642) b!1761129))

(declare-fun m!2177139 () Bool)

(assert (=> d!537896 m!2177139))

(declare-fun m!2177143 () Bool)

(assert (=> b!1761128 m!2177143))

(declare-fun m!2177145 () Bool)

(assert (=> b!1761129 m!2177145))

(assert (=> d!537672 d!537896))

(declare-fun lt!680703 () List!19452)

(declare-fun b!1761139 () Bool)

(declare-fun e!1127071 () Bool)

(assert (=> b!1761139 (= e!1127071 (or (not (= suffix!1421 Nil!19382)) (= lt!680703 (t!164035 lt!680342))))))

(declare-fun b!1761137 () Bool)

(declare-fun e!1127070 () List!19452)

(assert (=> b!1761137 (= e!1127070 (Cons!19382 (h!24783 (t!164035 lt!680342)) (++!5287 (t!164035 (t!164035 lt!680342)) suffix!1421)))))

(declare-fun b!1761136 () Bool)

(assert (=> b!1761136 (= e!1127070 suffix!1421)))

(declare-fun d!537908 () Bool)

(assert (=> d!537908 e!1127071))

(declare-fun res!792644 () Bool)

(assert (=> d!537908 (=> (not res!792644) (not e!1127071))))

(assert (=> d!537908 (= res!792644 (= (content!2798 lt!680703) ((_ map or) (content!2798 (t!164035 lt!680342)) (content!2798 suffix!1421))))))

(assert (=> d!537908 (= lt!680703 e!1127070)))

(declare-fun c!286915 () Bool)

(assert (=> d!537908 (= c!286915 ((_ is Nil!19382) (t!164035 lt!680342)))))

(assert (=> d!537908 (= (++!5287 (t!164035 lt!680342) suffix!1421) lt!680703)))

(declare-fun b!1761138 () Bool)

(declare-fun res!792643 () Bool)

(assert (=> b!1761138 (=> (not res!792643) (not e!1127071))))

(assert (=> b!1761138 (= res!792643 (= (size!15395 lt!680703) (+ (size!15395 (t!164035 lt!680342)) (size!15395 suffix!1421))))))

(assert (= (and d!537908 c!286915) b!1761136))

(assert (= (and d!537908 (not c!286915)) b!1761137))

(assert (= (and d!537908 res!792644) b!1761138))

(assert (= (and b!1761138 res!792643) b!1761139))

(declare-fun m!2177149 () Bool)

(assert (=> b!1761137 m!2177149))

(declare-fun m!2177151 () Bool)

(assert (=> d!537908 m!2177151))

(declare-fun m!2177153 () Bool)

(assert (=> d!537908 m!2177153))

(assert (=> d!537908 m!2176783))

(declare-fun m!2177155 () Bool)

(assert (=> b!1761138 m!2177155))

(declare-fun m!2177157 () Bool)

(assert (=> b!1761138 m!2177157))

(assert (=> b!1761138 m!2176787))

(assert (=> b!1760802 d!537908))

(declare-fun d!537912 () Bool)

(assert (=> d!537912 (= (isEmpty!12227 lt!680342) ((_ is Nil!19382) lt!680342))))

(assert (=> bm!110639 d!537912))

(declare-fun d!537914 () Bool)

(assert (=> d!537914 (= (head!4076 lt!680348) (h!24783 lt!680348))))

(assert (=> b!1760962 d!537914))

(declare-fun b!1761143 () Bool)

(declare-fun e!1127073 () Bool)

(assert (=> b!1761143 (= e!1127073 (>= (size!15395 (tail!2633 lt!680363)) (size!15395 (tail!2633 lt!680348))))))

(declare-fun d!537916 () Bool)

(assert (=> d!537916 e!1127073))

(declare-fun res!792648 () Bool)

(assert (=> d!537916 (=> res!792648 e!1127073)))

(declare-fun lt!680704 () Bool)

(assert (=> d!537916 (= res!792648 (not lt!680704))))

(declare-fun e!1127072 () Bool)

(assert (=> d!537916 (= lt!680704 e!1127072)))

(declare-fun res!792645 () Bool)

(assert (=> d!537916 (=> res!792645 e!1127072)))

(assert (=> d!537916 (= res!792645 ((_ is Nil!19382) (tail!2633 lt!680348)))))

(assert (=> d!537916 (= (isPrefix!1703 (tail!2633 lt!680348) (tail!2633 lt!680363)) lt!680704)))

(declare-fun b!1761140 () Bool)

(declare-fun e!1127074 () Bool)

(assert (=> b!1761140 (= e!1127072 e!1127074)))

(declare-fun res!792647 () Bool)

(assert (=> b!1761140 (=> (not res!792647) (not e!1127074))))

(assert (=> b!1761140 (= res!792647 (not ((_ is Nil!19382) (tail!2633 lt!680363))))))

(declare-fun b!1761142 () Bool)

(assert (=> b!1761142 (= e!1127074 (isPrefix!1703 (tail!2633 (tail!2633 lt!680348)) (tail!2633 (tail!2633 lt!680363))))))

(declare-fun b!1761141 () Bool)

(declare-fun res!792646 () Bool)

(assert (=> b!1761141 (=> (not res!792646) (not e!1127074))))

(assert (=> b!1761141 (= res!792646 (= (head!4076 (tail!2633 lt!680348)) (head!4076 (tail!2633 lt!680363))))))

(assert (= (and d!537916 (not res!792645)) b!1761140))

(assert (= (and b!1761140 res!792647) b!1761141))

(assert (= (and b!1761141 res!792646) b!1761142))

(assert (= (and d!537916 (not res!792648)) b!1761143))

(assert (=> b!1761143 m!2176425))

(declare-fun m!2177159 () Bool)

(assert (=> b!1761143 m!2177159))

(assert (=> b!1761143 m!2176411))

(declare-fun m!2177161 () Bool)

(assert (=> b!1761143 m!2177161))

(assert (=> b!1761142 m!2176411))

(declare-fun m!2177163 () Bool)

(assert (=> b!1761142 m!2177163))

(assert (=> b!1761142 m!2176425))

(declare-fun m!2177165 () Bool)

(assert (=> b!1761142 m!2177165))

(assert (=> b!1761142 m!2177163))

(assert (=> b!1761142 m!2177165))

(declare-fun m!2177167 () Bool)

(assert (=> b!1761142 m!2177167))

(assert (=> b!1761141 m!2176411))

(declare-fun m!2177169 () Bool)

(assert (=> b!1761141 m!2177169))

(assert (=> b!1761141 m!2176425))

(declare-fun m!2177171 () Bool)

(assert (=> b!1761141 m!2177171))

(assert (=> b!1760570 d!537916))

(declare-fun d!537918 () Bool)

(assert (=> d!537918 (= (tail!2633 lt!680348) (t!164035 lt!680348))))

(assert (=> b!1760570 d!537918))

(declare-fun d!537920 () Bool)

(assert (=> d!537920 (= (tail!2633 lt!680363) (t!164035 lt!680363))))

(assert (=> b!1760570 d!537920))

(declare-fun b!1761176 () Bool)

(declare-fun res!792669 () Bool)

(declare-fun e!1127097 () Bool)

(assert (=> b!1761176 (=> res!792669 e!1127097)))

(assert (=> b!1761176 (= res!792669 (not ((_ is Concat!8345) (regex!3463 rule!422))))))

(declare-fun e!1127099 () Bool)

(assert (=> b!1761176 (= e!1127099 e!1127097)))

(declare-fun bm!110650 () Bool)

(declare-fun call!110657 () Bool)

(declare-fun call!110655 () Bool)

(assert (=> bm!110650 (= call!110657 call!110655)))

(declare-fun bm!110651 () Bool)

(declare-fun c!286923 () Bool)

(declare-fun c!286924 () Bool)

(assert (=> bm!110651 (= call!110655 (validRegex!1935 (ite c!286923 (reg!5120 (regex!3463 rule!422)) (ite c!286924 (regTwo!10095 (regex!3463 rule!422)) (regOne!10094 (regex!3463 rule!422))))))))

(declare-fun b!1761178 () Bool)

(declare-fun e!1127098 () Bool)

(declare-fun call!110656 () Bool)

(assert (=> b!1761178 (= e!1127098 call!110656)))

(declare-fun b!1761179 () Bool)

(declare-fun e!1127096 () Bool)

(declare-fun e!1127101 () Bool)

(assert (=> b!1761179 (= e!1127096 e!1127101)))

(assert (=> b!1761179 (= c!286923 ((_ is Star!4791) (regex!3463 rule!422)))))

(declare-fun b!1761180 () Bool)

(declare-fun res!792668 () Bool)

(declare-fun e!1127100 () Bool)

(assert (=> b!1761180 (=> (not res!792668) (not e!1127100))))

(assert (=> b!1761180 (= res!792668 call!110656)))

(assert (=> b!1761180 (= e!1127099 e!1127100)))

(declare-fun b!1761181 () Bool)

(declare-fun e!1127102 () Bool)

(assert (=> b!1761181 (= e!1127102 call!110655)))

(declare-fun b!1761182 () Bool)

(assert (=> b!1761182 (= e!1127101 e!1127102)))

(declare-fun res!792667 () Bool)

(assert (=> b!1761182 (= res!792667 (not (nullable!1461 (reg!5120 (regex!3463 rule!422)))))))

(assert (=> b!1761182 (=> (not res!792667) (not e!1127102))))

(declare-fun b!1761183 () Bool)

(assert (=> b!1761183 (= e!1127097 e!1127098)))

(declare-fun res!792670 () Bool)

(assert (=> b!1761183 (=> (not res!792670) (not e!1127098))))

(assert (=> b!1761183 (= res!792670 call!110657)))

(declare-fun bm!110652 () Bool)

(assert (=> bm!110652 (= call!110656 (validRegex!1935 (ite c!286924 (regOne!10095 (regex!3463 rule!422)) (regTwo!10094 (regex!3463 rule!422)))))))

(declare-fun b!1761184 () Bool)

(assert (=> b!1761184 (= e!1127100 call!110657)))

(declare-fun d!537922 () Bool)

(declare-fun res!792671 () Bool)

(assert (=> d!537922 (=> res!792671 e!1127096)))

(assert (=> d!537922 (= res!792671 ((_ is ElementMatch!4791) (regex!3463 rule!422)))))

(assert (=> d!537922 (= (validRegex!1935 (regex!3463 rule!422)) e!1127096)))

(declare-fun b!1761177 () Bool)

(assert (=> b!1761177 (= e!1127101 e!1127099)))

(assert (=> b!1761177 (= c!286924 ((_ is Union!4791) (regex!3463 rule!422)))))

(assert (= (and d!537922 (not res!792671)) b!1761179))

(assert (= (and b!1761179 c!286923) b!1761182))

(assert (= (and b!1761179 (not c!286923)) b!1761177))

(assert (= (and b!1761182 res!792667) b!1761181))

(assert (= (and b!1761177 c!286924) b!1761180))

(assert (= (and b!1761177 (not c!286924)) b!1761176))

(assert (= (and b!1761180 res!792668) b!1761184))

(assert (= (and b!1761176 (not res!792669)) b!1761183))

(assert (= (and b!1761183 res!792670) b!1761178))

(assert (= (or b!1761180 b!1761178) bm!110652))

(assert (= (or b!1761184 b!1761183) bm!110650))

(assert (= (or b!1761181 bm!110650) bm!110651))

(declare-fun m!2177189 () Bool)

(assert (=> bm!110651 m!2177189))

(declare-fun m!2177191 () Bool)

(assert (=> b!1761182 m!2177191))

(declare-fun m!2177193 () Bool)

(assert (=> bm!110652 m!2177193))

(assert (=> d!537776 d!537922))

(declare-fun d!537930 () Bool)

(declare-fun lt!680706 () Int)

(assert (=> d!537930 (>= lt!680706 0)))

(declare-fun e!1127103 () Int)

(assert (=> d!537930 (= lt!680706 e!1127103)))

(declare-fun c!286925 () Bool)

(assert (=> d!537930 (= c!286925 ((_ is Nil!19382) (originalCharacters!4277 token!523)))))

(assert (=> d!537930 (= (size!15395 (originalCharacters!4277 token!523)) lt!680706)))

(declare-fun b!1761185 () Bool)

(assert (=> b!1761185 (= e!1127103 0)))

(declare-fun b!1761186 () Bool)

(assert (=> b!1761186 (= e!1127103 (+ 1 (size!15395 (t!164035 (originalCharacters!4277 token!523)))))))

(assert (= (and d!537930 c!286925) b!1761185))

(assert (= (and d!537930 (not c!286925)) b!1761186))

(declare-fun m!2177195 () Bool)

(assert (=> b!1761186 m!2177195))

(assert (=> b!1760973 d!537930))

(declare-fun d!537932 () Bool)

(assert (=> d!537932 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))) (list!7864 (c!286775 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun bs!404064 () Bool)

(assert (= bs!404064 d!537932))

(declare-fun m!2177197 () Bool)

(assert (=> bs!404064 m!2177197))

(assert (=> b!1760510 d!537932))

(declare-fun d!537934 () Bool)

(declare-fun lt!680707 () BalanceConc!12838)

(assert (=> d!537934 (= (list!7861 lt!680707) (originalCharacters!4277 (_1!10897 (get!5897 lt!680468))))))

(assert (=> d!537934 (= lt!680707 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))) (value!108368 (_1!10897 (get!5897 lt!680468)))))))

(assert (=> d!537934 (= (charsOf!2112 (_1!10897 (get!5897 lt!680468))) lt!680707)))

(declare-fun b_lambda!57009 () Bool)

(assert (=> (not b_lambda!57009) (not d!537934)))

(declare-fun tb!106081 () Bool)

(declare-fun t!164122 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164122) tb!106081))

(declare-fun b!1761187 () Bool)

(declare-fun e!1127104 () Bool)

(declare-fun tp!500268 () Bool)

(assert (=> b!1761187 (= e!1127104 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))) (value!108368 (_1!10897 (get!5897 lt!680468)))))) tp!500268))))

(declare-fun result!127640 () Bool)

(assert (=> tb!106081 (= result!127640 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))) (value!108368 (_1!10897 (get!5897 lt!680468))))) e!1127104))))

(assert (= tb!106081 b!1761187))

(declare-fun m!2177199 () Bool)

(assert (=> b!1761187 m!2177199))

(declare-fun m!2177201 () Bool)

(assert (=> tb!106081 m!2177201))

(assert (=> d!537934 t!164122))

(declare-fun b_and!132885 () Bool)

(assert (= b_and!132841 (and (=> t!164122 result!127640) b_and!132885)))

(declare-fun t!164124 () Bool)

(declare-fun tb!106083 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164124) tb!106083))

(declare-fun result!127642 () Bool)

(assert (= result!127642 result!127640))

(assert (=> d!537934 t!164124))

(declare-fun b_and!132887 () Bool)

(assert (= b_and!132843 (and (=> t!164124 result!127642) b_and!132887)))

(declare-fun t!164126 () Bool)

(declare-fun tb!106085 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164126) tb!106085))

(declare-fun result!127644 () Bool)

(assert (= result!127644 result!127640))

(assert (=> d!537934 t!164126))

(declare-fun b_and!132889 () Bool)

(assert (= b_and!132845 (and (=> t!164126 result!127644) b_and!132889)))

(declare-fun t!164128 () Bool)

(declare-fun tb!106087 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164128) tb!106087))

(declare-fun result!127646 () Bool)

(assert (= result!127646 result!127640))

(assert (=> d!537934 t!164128))

(declare-fun b_and!132891 () Bool)

(assert (= b_and!132867 (and (=> t!164128 result!127646) b_and!132891)))

(declare-fun m!2177203 () Bool)

(assert (=> d!537934 m!2177203))

(declare-fun m!2177205 () Bool)

(assert (=> d!537934 m!2177205))

(assert (=> b!1760510 d!537934))

(declare-fun d!537936 () Bool)

(assert (=> d!537936 (= (get!5897 lt!680468) (v!25409 lt!680468))))

(assert (=> b!1760510 d!537936))

(declare-fun d!537938 () Bool)

(declare-fun charsToBigInt!1 (List!19451) Int)

(assert (=> d!537938 (= (inv!17 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)) (= (charsToBigInt!1 (text!25319 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (value!108360 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))

(declare-fun bs!404065 () Bool)

(assert (= bs!404065 d!537938))

(declare-fun m!2177207 () Bool)

(assert (=> bs!404065 m!2177207))

(assert (=> b!1760908 d!537938))

(declare-fun b!1761191 () Bool)

(declare-fun e!1127106 () Bool)

(declare-fun lt!680708 () List!19452)

(assert (=> b!1761191 (= e!1127106 (or (not (= (_2!10897 lt!680362) Nil!19382)) (= lt!680708 (t!164035 lt!680348))))))

(declare-fun b!1761189 () Bool)

(declare-fun e!1127105 () List!19452)

(assert (=> b!1761189 (= e!1127105 (Cons!19382 (h!24783 (t!164035 lt!680348)) (++!5287 (t!164035 (t!164035 lt!680348)) (_2!10897 lt!680362))))))

(declare-fun b!1761188 () Bool)

(assert (=> b!1761188 (= e!1127105 (_2!10897 lt!680362))))

(declare-fun d!537940 () Bool)

(assert (=> d!537940 e!1127106))

(declare-fun res!792673 () Bool)

(assert (=> d!537940 (=> (not res!792673) (not e!1127106))))

(assert (=> d!537940 (= res!792673 (= (content!2798 lt!680708) ((_ map or) (content!2798 (t!164035 lt!680348)) (content!2798 (_2!10897 lt!680362)))))))

(assert (=> d!537940 (= lt!680708 e!1127105)))

(declare-fun c!286926 () Bool)

(assert (=> d!537940 (= c!286926 ((_ is Nil!19382) (t!164035 lt!680348)))))

(assert (=> d!537940 (= (++!5287 (t!164035 lt!680348) (_2!10897 lt!680362)) lt!680708)))

(declare-fun b!1761190 () Bool)

(declare-fun res!792672 () Bool)

(assert (=> b!1761190 (=> (not res!792672) (not e!1127106))))

(assert (=> b!1761190 (= res!792672 (= (size!15395 lt!680708) (+ (size!15395 (t!164035 lt!680348)) (size!15395 (_2!10897 lt!680362)))))))

(assert (= (and d!537940 c!286926) b!1761188))

(assert (= (and d!537940 (not c!286926)) b!1761189))

(assert (= (and d!537940 res!792673) b!1761190))

(assert (= (and b!1761190 res!792672) b!1761191))

(declare-fun m!2177209 () Bool)

(assert (=> b!1761189 m!2177209))

(declare-fun m!2177211 () Bool)

(assert (=> d!537940 m!2177211))

(declare-fun m!2177213 () Bool)

(assert (=> d!537940 m!2177213))

(assert (=> d!537940 m!2176505))

(declare-fun m!2177215 () Bool)

(assert (=> b!1761190 m!2177215))

(assert (=> b!1761190 m!2176879))

(assert (=> b!1761190 m!2176509))

(assert (=> b!1760602 d!537940))

(declare-fun d!537942 () Bool)

(declare-fun e!1127119 () Bool)

(assert (=> d!537942 e!1127119))

(declare-fun res!792676 () Bool)

(assert (=> d!537942 (=> (not res!792676) (not e!1127119))))

(declare-fun lt!680713 () BalanceConc!12838)

(assert (=> d!537942 (= res!792676 (= (list!7861 lt!680713) (originalCharacters!4277 (_1!10897 lt!680362))))))

(declare-fun fromList!443 (List!19452) Conc!6447)

(assert (=> d!537942 (= lt!680713 (BalanceConc!12839 (fromList!443 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(assert (=> d!537942 (= (fromListB!1110 (originalCharacters!4277 (_1!10897 lt!680362))) lt!680713)))

(declare-fun b!1761214 () Bool)

(assert (=> b!1761214 (= e!1127119 (isBalanced!2014 (fromList!443 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(assert (= (and d!537942 res!792676) b!1761214))

(declare-fun m!2177217 () Bool)

(assert (=> d!537942 m!2177217))

(declare-fun m!2177219 () Bool)

(assert (=> d!537942 m!2177219))

(assert (=> b!1761214 m!2177219))

(assert (=> b!1761214 m!2177219))

(declare-fun m!2177221 () Bool)

(assert (=> b!1761214 m!2177221))

(assert (=> d!537820 d!537942))

(declare-fun d!537944 () Bool)

(assert (=> d!537944 (= (isDefined!3292 (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421))) (not (isEmpty!12230 (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421)))))))

(declare-fun bs!404066 () Bool)

(assert (= bs!404066 d!537944))

(assert (=> bs!404066 m!2176727))

(assert (=> bs!404066 m!2176729))

(assert (=> d!537682 d!537944))

(declare-fun d!537946 () Bool)

(assert (=> d!537946 (= (get!5897 (maxPrefix!1646 thiss!24550 rules!3447 lt!680342)) (v!25409 (maxPrefix!1646 thiss!24550 rules!3447 lt!680342)))))

(assert (=> d!537682 d!537946))

(assert (=> d!537682 d!537744))

(declare-fun d!537948 () Bool)

(assert (=> d!537948 (isPrefix!1703 lt!680604 (++!5287 lt!680342 suffix!1421))))

(declare-fun lt!680716 () Unit!33555)

(declare-fun choose!10907 (List!19452 List!19452 List!19452) Unit!33555)

(assert (=> d!537948 (= lt!680716 (choose!10907 lt!680604 lt!680342 suffix!1421))))

(assert (=> d!537948 (isPrefix!1703 lt!680604 lt!680342)))

(assert (=> d!537948 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!311 lt!680604 lt!680342 suffix!1421) lt!680716)))

(declare-fun bs!404067 () Bool)

(assert (= bs!404067 d!537948))

(assert (=> bs!404067 m!2176039))

(assert (=> bs!404067 m!2176039))

(assert (=> bs!404067 m!2176749))

(declare-fun m!2177223 () Bool)

(assert (=> bs!404067 m!2177223))

(declare-fun m!2177225 () Bool)

(assert (=> bs!404067 m!2177225))

(assert (=> d!537682 d!537948))

(declare-fun d!537950 () Bool)

(declare-fun e!1127120 () Bool)

(assert (=> d!537950 e!1127120))

(declare-fun res!792677 () Bool)

(assert (=> d!537950 (=> (not res!792677) (not e!1127120))))

(assert (=> d!537950 (= res!792677 (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))

(declare-fun lt!680717 () Unit!33555)

(assert (=> d!537950 (= lt!680717 (choose!10898 thiss!24550 rules!3447 lt!680342 lt!680593))))

(assert (=> d!537950 (rulesInvariant!2761 thiss!24550 rules!3447)))

(assert (=> d!537950 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!511 thiss!24550 rules!3447 lt!680342 lt!680593) lt!680717)))

(declare-fun b!1761215 () Bool)

(declare-fun res!792678 () Bool)

(assert (=> b!1761215 (=> (not res!792678) (not e!1127120))))

(assert (=> b!1761215 (= res!792678 (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))) (list!7861 (charsOf!2112 lt!680593))))))

(declare-fun b!1761216 () Bool)

(assert (=> b!1761216 (= e!1127120 (= (rule!5481 lt!680593) (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))

(assert (= (and d!537950 res!792677) b!1761215))

(assert (= (and b!1761215 res!792678) b!1761216))

(assert (=> d!537950 m!2176707))

(assert (=> d!537950 m!2176707))

(assert (=> d!537950 m!2176739))

(declare-fun m!2177227 () Bool)

(assert (=> d!537950 m!2177227))

(assert (=> d!537950 m!2176115))

(assert (=> b!1761215 m!2176707))

(assert (=> b!1761215 m!2176715))

(assert (=> b!1761215 m!2176717))

(assert (=> b!1761215 m!2176707))

(assert (=> b!1761215 m!2176709))

(assert (=> b!1761215 m!2176717))

(assert (=> b!1761215 m!2176725))

(assert (=> b!1761215 m!2176715))

(assert (=> b!1761216 m!2176707))

(assert (=> b!1761216 m!2176707))

(assert (=> b!1761216 m!2176709))

(assert (=> d!537682 d!537950))

(declare-fun e!1127122 () Bool)

(declare-fun b!1761220 () Bool)

(assert (=> b!1761220 (= e!1127122 (>= (size!15395 (++!5287 lt!680342 suffix!1421)) (size!15395 lt!680604)))))

(declare-fun d!537952 () Bool)

(assert (=> d!537952 e!1127122))

(declare-fun res!792682 () Bool)

(assert (=> d!537952 (=> res!792682 e!1127122)))

(declare-fun lt!680718 () Bool)

(assert (=> d!537952 (= res!792682 (not lt!680718))))

(declare-fun e!1127121 () Bool)

(assert (=> d!537952 (= lt!680718 e!1127121)))

(declare-fun res!792679 () Bool)

(assert (=> d!537952 (=> res!792679 e!1127121)))

(assert (=> d!537952 (= res!792679 ((_ is Nil!19382) lt!680604))))

(assert (=> d!537952 (= (isPrefix!1703 lt!680604 (++!5287 lt!680342 suffix!1421)) lt!680718)))

(declare-fun b!1761217 () Bool)

(declare-fun e!1127123 () Bool)

(assert (=> b!1761217 (= e!1127121 e!1127123)))

(declare-fun res!792681 () Bool)

(assert (=> b!1761217 (=> (not res!792681) (not e!1127123))))

(assert (=> b!1761217 (= res!792681 (not ((_ is Nil!19382) (++!5287 lt!680342 suffix!1421))))))

(declare-fun b!1761219 () Bool)

(assert (=> b!1761219 (= e!1127123 (isPrefix!1703 (tail!2633 lt!680604) (tail!2633 (++!5287 lt!680342 suffix!1421))))))

(declare-fun b!1761218 () Bool)

(declare-fun res!792680 () Bool)

(assert (=> b!1761218 (=> (not res!792680) (not e!1127123))))

(assert (=> b!1761218 (= res!792680 (= (head!4076 lt!680604) (head!4076 (++!5287 lt!680342 suffix!1421))))))

(assert (= (and d!537952 (not res!792679)) b!1761217))

(assert (= (and b!1761217 res!792681) b!1761218))

(assert (= (and b!1761218 res!792680) b!1761219))

(assert (= (and d!537952 (not res!792682)) b!1761220))

(assert (=> b!1761220 m!2176039))

(declare-fun m!2177229 () Bool)

(assert (=> b!1761220 m!2177229))

(declare-fun m!2177231 () Bool)

(assert (=> b!1761220 m!2177231))

(declare-fun m!2177233 () Bool)

(assert (=> b!1761219 m!2177233))

(assert (=> b!1761219 m!2176039))

(declare-fun m!2177235 () Bool)

(assert (=> b!1761219 m!2177235))

(assert (=> b!1761219 m!2177233))

(assert (=> b!1761219 m!2177235))

(declare-fun m!2177237 () Bool)

(assert (=> b!1761219 m!2177237))

(declare-fun m!2177239 () Bool)

(assert (=> b!1761218 m!2177239))

(assert (=> b!1761218 m!2176039))

(declare-fun m!2177241 () Bool)

(assert (=> b!1761218 m!2177241))

(assert (=> d!537682 d!537952))

(assert (=> d!537682 d!537604))

(declare-fun d!537954 () Bool)

(assert (=> d!537954 (= (head!4078 (list!7865 (_1!10899 (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342))))) (h!24789 (list!7865 (_1!10899 (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342))))))))

(assert (=> d!537682 d!537954))

(declare-fun b!1761221 () Bool)

(declare-fun e!1127124 () Bool)

(declare-fun e!1127127 () Bool)

(assert (=> b!1761221 (= e!1127124 e!1127127)))

(declare-fun res!792683 () Bool)

(assert (=> b!1761221 (=> (not res!792683) (not e!1127127))))

(declare-fun lt!680720 () Option!3948)

(assert (=> b!1761221 (= res!792683 (contains!3491 rules!3447 (get!5898 lt!680720)))))

(declare-fun b!1761222 () Bool)

(declare-fun lt!680719 () Unit!33555)

(declare-fun lt!680721 () Unit!33555)

(assert (=> b!1761222 (= lt!680719 lt!680721)))

(assert (=> b!1761222 (rulesInvariant!2761 thiss!24550 (t!164036 rules!3447))))

(assert (=> b!1761222 (= lt!680721 (lemmaInvariantOnRulesThenOnTail!190 thiss!24550 (h!24784 rules!3447) (t!164036 rules!3447)))))

(declare-fun e!1127126 () Option!3948)

(assert (=> b!1761222 (= e!1127126 (getRuleFromTag!511 thiss!24550 (t!164036 rules!3447) (tag!3829 (rule!5481 lt!680593))))))

(declare-fun b!1761223 () Bool)

(declare-fun e!1127125 () Option!3948)

(assert (=> b!1761223 (= e!1127125 e!1127126)))

(declare-fun c!286938 () Bool)

(assert (=> b!1761223 (= c!286938 (and ((_ is Cons!19383) rules!3447) (not (= (tag!3829 (h!24784 rules!3447)) (tag!3829 (rule!5481 lt!680593))))))))

(declare-fun d!537956 () Bool)

(assert (=> d!537956 e!1127124))

(declare-fun res!792684 () Bool)

(assert (=> d!537956 (=> res!792684 e!1127124)))

(assert (=> d!537956 (= res!792684 (isEmpty!12231 lt!680720))))

(assert (=> d!537956 (= lt!680720 e!1127125)))

(declare-fun c!286939 () Bool)

(assert (=> d!537956 (= c!286939 (and ((_ is Cons!19383) rules!3447) (= (tag!3829 (h!24784 rules!3447)) (tag!3829 (rule!5481 lt!680593)))))))

(assert (=> d!537956 (rulesInvariant!2761 thiss!24550 rules!3447)))

(assert (=> d!537956 (= (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))) lt!680720)))

(declare-fun b!1761224 () Bool)

(assert (=> b!1761224 (= e!1127127 (= (tag!3829 (get!5898 lt!680720)) (tag!3829 (rule!5481 lt!680593))))))

(declare-fun b!1761225 () Bool)

(assert (=> b!1761225 (= e!1127126 None!3947)))

(declare-fun b!1761226 () Bool)

(assert (=> b!1761226 (= e!1127125 (Some!3947 (h!24784 rules!3447)))))

(assert (= (and d!537956 c!286939) b!1761226))

(assert (= (and d!537956 (not c!286939)) b!1761223))

(assert (= (and b!1761223 c!286938) b!1761222))

(assert (= (and b!1761223 (not c!286938)) b!1761225))

(assert (= (and d!537956 (not res!792684)) b!1761221))

(assert (= (and b!1761221 res!792683) b!1761224))

(declare-fun m!2177243 () Bool)

(assert (=> b!1761221 m!2177243))

(assert (=> b!1761221 m!2177243))

(declare-fun m!2177245 () Bool)

(assert (=> b!1761221 m!2177245))

(assert (=> b!1761222 m!2176771))

(assert (=> b!1761222 m!2176773))

(declare-fun m!2177247 () Bool)

(assert (=> b!1761222 m!2177247))

(declare-fun m!2177249 () Bool)

(assert (=> d!537956 m!2177249))

(assert (=> d!537956 m!2176115))

(assert (=> b!1761224 m!2177243))

(assert (=> d!537682 d!537956))

(declare-fun d!537958 () Bool)

(assert (=> d!537958 (= (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))) (not (isEmpty!12231 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))

(declare-fun bs!404068 () Bool)

(assert (= bs!404068 d!537958))

(assert (=> bs!404068 m!2176707))

(declare-fun m!2177251 () Bool)

(assert (=> bs!404068 m!2177251))

(assert (=> d!537682 d!537958))

(declare-fun b!1761286 () Bool)

(declare-fun e!1127161 () Bool)

(declare-fun lt!680741 () tuple2!18994)

(declare-fun isEmpty!12232 (BalanceConc!12842) Bool)

(assert (=> b!1761286 (= e!1127161 (not (isEmpty!12232 (_1!10899 lt!680741))))))

(declare-fun b!1761287 () Bool)

(declare-fun e!1127163 () Bool)

(assert (=> b!1761287 (= e!1127163 e!1127161)))

(declare-fun res!792704 () Bool)

(assert (=> b!1761287 (= res!792704 (< (size!15394 (_2!10899 lt!680741)) (size!15394 (seqFromList!2432 lt!680342))))))

(assert (=> b!1761287 (=> (not res!792704) (not e!1127161))))

(declare-fun e!1127162 () Bool)

(declare-fun b!1761288 () Bool)

(declare-datatypes ((tuple2!19000 0))(
  ( (tuple2!19001 (_1!10902 List!19458) (_2!10902 List!19452)) )
))
(declare-fun lexList!924 (LexerInterface!3092 List!19453 List!19452) tuple2!19000)

(assert (=> b!1761288 (= e!1127162 (= (list!7861 (_2!10899 lt!680741)) (_2!10902 (lexList!924 thiss!24550 rules!3447 (list!7861 (seqFromList!2432 lt!680342))))))))

(declare-fun d!537960 () Bool)

(assert (=> d!537960 e!1127162))

(declare-fun res!792706 () Bool)

(assert (=> d!537960 (=> (not res!792706) (not e!1127162))))

(assert (=> d!537960 (= res!792706 e!1127163)))

(declare-fun c!286958 () Bool)

(declare-fun size!15398 (BalanceConc!12842) Int)

(assert (=> d!537960 (= c!286958 (> (size!15398 (_1!10899 lt!680741)) 0))))

(declare-fun lexTailRecV2!647 (LexerInterface!3092 List!19453 BalanceConc!12838 BalanceConc!12838 BalanceConc!12838 BalanceConc!12842) tuple2!18994)

(assert (=> d!537960 (= lt!680741 (lexTailRecV2!647 thiss!24550 rules!3447 (seqFromList!2432 lt!680342) (BalanceConc!12839 Empty!6447) (seqFromList!2432 lt!680342) (BalanceConc!12843 Empty!6449)))))

(assert (=> d!537960 (= (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342)) lt!680741)))

(declare-fun b!1761289 () Bool)

(assert (=> b!1761289 (= e!1127163 (= (_2!10899 lt!680741) (seqFromList!2432 lt!680342)))))

(declare-fun b!1761290 () Bool)

(declare-fun res!792705 () Bool)

(assert (=> b!1761290 (=> (not res!792705) (not e!1127162))))

(assert (=> b!1761290 (= res!792705 (= (list!7865 (_1!10899 lt!680741)) (_1!10902 (lexList!924 thiss!24550 rules!3447 (list!7861 (seqFromList!2432 lt!680342))))))))

(assert (= (and d!537960 c!286958) b!1761287))

(assert (= (and d!537960 (not c!286958)) b!1761289))

(assert (= (and b!1761287 res!792704) b!1761286))

(assert (= (and d!537960 res!792706) b!1761290))

(assert (= (and b!1761290 res!792705) b!1761288))

(declare-fun m!2177373 () Bool)

(assert (=> b!1761288 m!2177373))

(assert (=> b!1761288 m!2176731))

(declare-fun m!2177375 () Bool)

(assert (=> b!1761288 m!2177375))

(assert (=> b!1761288 m!2177375))

(declare-fun m!2177377 () Bool)

(assert (=> b!1761288 m!2177377))

(declare-fun m!2177379 () Bool)

(assert (=> d!537960 m!2177379))

(assert (=> d!537960 m!2176731))

(assert (=> d!537960 m!2176731))

(declare-fun m!2177381 () Bool)

(assert (=> d!537960 m!2177381))

(declare-fun m!2177383 () Bool)

(assert (=> b!1761290 m!2177383))

(assert (=> b!1761290 m!2176731))

(assert (=> b!1761290 m!2177375))

(assert (=> b!1761290 m!2177375))

(assert (=> b!1761290 m!2177377))

(declare-fun m!2177385 () Bool)

(assert (=> b!1761286 m!2177385))

(declare-fun m!2177387 () Bool)

(assert (=> b!1761287 m!2177387))

(assert (=> b!1761287 m!2176731))

(declare-fun m!2177389 () Bool)

(assert (=> b!1761287 m!2177389))

(assert (=> d!537682 d!537960))

(declare-fun d!538010 () Bool)

(assert (=> d!538010 (= (list!7861 (charsOf!2112 lt!680593)) (list!7864 (c!286775 (charsOf!2112 lt!680593))))))

(declare-fun bs!404081 () Bool)

(assert (= bs!404081 d!538010))

(declare-fun m!2177391 () Bool)

(assert (=> bs!404081 m!2177391))

(assert (=> d!537682 d!538010))

(declare-fun d!538012 () Bool)

(declare-fun list!7868 (Conc!6449) List!19458)

(assert (=> d!538012 (= (list!7865 (_1!10899 (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342)))) (list!7868 (c!286893 (_1!10899 (lex!1450 thiss!24550 rules!3447 (seqFromList!2432 lt!680342))))))))

(declare-fun bs!404082 () Bool)

(assert (= bs!404082 d!538012))

(declare-fun m!2177393 () Bool)

(assert (=> bs!404082 m!2177393))

(assert (=> d!537682 d!538012))

(declare-fun d!538014 () Bool)

(assert (=> d!538014 (isPrefix!1703 lt!680599 (++!5287 lt!680599 lt!680606))))

(declare-fun lt!680742 () Unit!33555)

(assert (=> d!538014 (= lt!680742 (choose!10897 lt!680599 lt!680606))))

(assert (=> d!538014 (= (lemmaConcatTwoListThenFirstIsPrefix!1212 lt!680599 lt!680606) lt!680742)))

(declare-fun bs!404083 () Bool)

(assert (= bs!404083 d!538014))

(assert (=> bs!404083 m!2176735))

(assert (=> bs!404083 m!2176735))

(assert (=> bs!404083 m!2176737))

(declare-fun m!2177395 () Bool)

(assert (=> bs!404083 m!2177395))

(assert (=> d!537682 d!538014))

(declare-fun e!1127165 () Bool)

(declare-fun b!1761294 () Bool)

(declare-fun lt!680743 () List!19452)

(assert (=> b!1761294 (= e!1127165 (or (not (= lt!680606 Nil!19382)) (= lt!680743 lt!680599)))))

(declare-fun b!1761292 () Bool)

(declare-fun e!1127164 () List!19452)

(assert (=> b!1761292 (= e!1127164 (Cons!19382 (h!24783 lt!680599) (++!5287 (t!164035 lt!680599) lt!680606)))))

(declare-fun b!1761291 () Bool)

(assert (=> b!1761291 (= e!1127164 lt!680606)))

(declare-fun d!538016 () Bool)

(assert (=> d!538016 e!1127165))

(declare-fun res!792708 () Bool)

(assert (=> d!538016 (=> (not res!792708) (not e!1127165))))

(assert (=> d!538016 (= res!792708 (= (content!2798 lt!680743) ((_ map or) (content!2798 lt!680599) (content!2798 lt!680606))))))

(assert (=> d!538016 (= lt!680743 e!1127164)))

(declare-fun c!286959 () Bool)

(assert (=> d!538016 (= c!286959 ((_ is Nil!19382) lt!680599))))

(assert (=> d!538016 (= (++!5287 lt!680599 lt!680606) lt!680743)))

(declare-fun b!1761293 () Bool)

(declare-fun res!792707 () Bool)

(assert (=> b!1761293 (=> (not res!792707) (not e!1127165))))

(assert (=> b!1761293 (= res!792707 (= (size!15395 lt!680743) (+ (size!15395 lt!680599) (size!15395 lt!680606))))))

(assert (= (and d!538016 c!286959) b!1761291))

(assert (= (and d!538016 (not c!286959)) b!1761292))

(assert (= (and d!538016 res!792708) b!1761293))

(assert (= (and b!1761293 res!792707) b!1761294))

(declare-fun m!2177397 () Bool)

(assert (=> b!1761292 m!2177397))

(declare-fun m!2177399 () Bool)

(assert (=> d!538016 m!2177399))

(declare-fun m!2177401 () Bool)

(assert (=> d!538016 m!2177401))

(declare-fun m!2177403 () Bool)

(assert (=> d!538016 m!2177403))

(declare-fun m!2177405 () Bool)

(assert (=> b!1761293 m!2177405))

(declare-fun m!2177407 () Bool)

(assert (=> b!1761293 m!2177407))

(declare-fun m!2177409 () Bool)

(assert (=> b!1761293 m!2177409))

(assert (=> d!537682 d!538016))

(declare-fun d!538018 () Bool)

(declare-fun lt!680744 () BalanceConc!12838)

(assert (=> d!538018 (= (list!7861 lt!680744) (originalCharacters!4277 lt!680593))))

(assert (=> d!538018 (= lt!680744 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 lt!680593))) (value!108368 lt!680593)))))

(assert (=> d!538018 (= (charsOf!2112 lt!680593) lt!680744)))

(declare-fun b_lambda!57017 () Bool)

(assert (=> (not b_lambda!57017) (not d!538018)))

(declare-fun tb!106105 () Bool)

(declare-fun t!164147 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 lt!680593)))) t!164147) tb!106105))

(declare-fun b!1761295 () Bool)

(declare-fun e!1127166 () Bool)

(declare-fun tp!500270 () Bool)

(assert (=> b!1761295 (= e!1127166 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 lt!680593))) (value!108368 lt!680593)))) tp!500270))))

(declare-fun result!127664 () Bool)

(assert (=> tb!106105 (= result!127664 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 lt!680593))) (value!108368 lt!680593))) e!1127166))))

(assert (= tb!106105 b!1761295))

(declare-fun m!2177411 () Bool)

(assert (=> b!1761295 m!2177411))

(declare-fun m!2177413 () Bool)

(assert (=> tb!106105 m!2177413))

(assert (=> d!538018 t!164147))

(declare-fun b_and!132917 () Bool)

(assert (= b_and!132885 (and (=> t!164147 result!127664) b_and!132917)))

(declare-fun t!164149 () Bool)

(declare-fun tb!106107 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 lt!680593)))) t!164149) tb!106107))

(declare-fun result!127666 () Bool)

(assert (= result!127666 result!127664))

(assert (=> d!538018 t!164149))

(declare-fun b_and!132919 () Bool)

(assert (= b_and!132887 (and (=> t!164149 result!127666) b_and!132919)))

(declare-fun t!164151 () Bool)

(declare-fun tb!106109 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 lt!680593)))) t!164151) tb!106109))

(declare-fun result!127668 () Bool)

(assert (= result!127668 result!127664))

(assert (=> d!538018 t!164151))

(declare-fun b_and!132921 () Bool)

(assert (= b_and!132889 (and (=> t!164151 result!127668) b_and!132921)))

(declare-fun t!164153 () Bool)

(declare-fun tb!106111 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 lt!680593)))) t!164153) tb!106111))

(declare-fun result!127670 () Bool)

(assert (= result!127670 result!127664))

(assert (=> d!538018 t!164153))

(declare-fun b_and!132923 () Bool)

(assert (= b_and!132891 (and (=> t!164153 result!127670) b_and!132923)))

(declare-fun m!2177415 () Bool)

(assert (=> d!538018 m!2177415))

(declare-fun m!2177417 () Bool)

(assert (=> d!538018 m!2177417))

(assert (=> d!537682 d!538018))

(declare-fun b!1761299 () Bool)

(declare-fun e!1127168 () Bool)

(assert (=> b!1761299 (= e!1127168 (>= (size!15395 (++!5287 lt!680599 lt!680606)) (size!15395 lt!680599)))))

(declare-fun d!538020 () Bool)

(assert (=> d!538020 e!1127168))

(declare-fun res!792712 () Bool)

(assert (=> d!538020 (=> res!792712 e!1127168)))

(declare-fun lt!680745 () Bool)

(assert (=> d!538020 (= res!792712 (not lt!680745))))

(declare-fun e!1127167 () Bool)

(assert (=> d!538020 (= lt!680745 e!1127167)))

(declare-fun res!792709 () Bool)

(assert (=> d!538020 (=> res!792709 e!1127167)))

(assert (=> d!538020 (= res!792709 ((_ is Nil!19382) lt!680599))))

(assert (=> d!538020 (= (isPrefix!1703 lt!680599 (++!5287 lt!680599 lt!680606)) lt!680745)))

(declare-fun b!1761296 () Bool)

(declare-fun e!1127169 () Bool)

(assert (=> b!1761296 (= e!1127167 e!1127169)))

(declare-fun res!792711 () Bool)

(assert (=> b!1761296 (=> (not res!792711) (not e!1127169))))

(assert (=> b!1761296 (= res!792711 (not ((_ is Nil!19382) (++!5287 lt!680599 lt!680606))))))

(declare-fun b!1761298 () Bool)

(assert (=> b!1761298 (= e!1127169 (isPrefix!1703 (tail!2633 lt!680599) (tail!2633 (++!5287 lt!680599 lt!680606))))))

(declare-fun b!1761297 () Bool)

(declare-fun res!792710 () Bool)

(assert (=> b!1761297 (=> (not res!792710) (not e!1127169))))

(assert (=> b!1761297 (= res!792710 (= (head!4076 lt!680599) (head!4076 (++!5287 lt!680599 lt!680606))))))

(assert (= (and d!538020 (not res!792709)) b!1761296))

(assert (= (and b!1761296 res!792711) b!1761297))

(assert (= (and b!1761297 res!792710) b!1761298))

(assert (= (and d!538020 (not res!792712)) b!1761299))

(assert (=> b!1761299 m!2176735))

(declare-fun m!2177419 () Bool)

(assert (=> b!1761299 m!2177419))

(assert (=> b!1761299 m!2177407))

(declare-fun m!2177421 () Bool)

(assert (=> b!1761298 m!2177421))

(assert (=> b!1761298 m!2176735))

(declare-fun m!2177423 () Bool)

(assert (=> b!1761298 m!2177423))

(assert (=> b!1761298 m!2177421))

(assert (=> b!1761298 m!2177423))

(declare-fun m!2177425 () Bool)

(assert (=> b!1761298 m!2177425))

(declare-fun m!2177427 () Bool)

(assert (=> b!1761297 m!2177427))

(assert (=> b!1761297 m!2176735))

(declare-fun m!2177429 () Bool)

(assert (=> b!1761297 m!2177429))

(assert (=> d!537682 d!538020))

(declare-fun d!538022 () Bool)

(assert (=> d!538022 (= (isEmpty!12230 (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421))) (not ((_ is Some!3948) (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421)))))))

(assert (=> d!537682 d!538022))

(declare-fun b!1761300 () Bool)

(declare-fun res!792715 () Bool)

(declare-fun e!1127172 () Bool)

(assert (=> b!1761300 (=> (not res!792715) (not e!1127172))))

(declare-fun lt!680749 () Option!3949)

(assert (=> b!1761300 (= res!792715 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680749)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680749))))))))

(declare-fun b!1761301 () Bool)

(declare-fun res!792714 () Bool)

(assert (=> b!1761301 (=> (not res!792714) (not e!1127172))))

(assert (=> b!1761301 (= res!792714 (= (value!108368 (_1!10897 (get!5897 lt!680749))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680749)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680749)))))))))

(declare-fun b!1761302 () Bool)

(declare-fun e!1127171 () Option!3949)

(declare-fun lt!680748 () Option!3949)

(declare-fun lt!680746 () Option!3949)

(assert (=> b!1761302 (= e!1127171 (ite (and ((_ is None!3948) lt!680748) ((_ is None!3948) lt!680746)) None!3948 (ite ((_ is None!3948) lt!680746) lt!680748 (ite ((_ is None!3948) lt!680748) lt!680746 (ite (>= (size!15393 (_1!10897 (v!25409 lt!680748))) (size!15393 (_1!10897 (v!25409 lt!680746)))) lt!680748 lt!680746)))))))

(declare-fun call!110674 () Option!3949)

(assert (=> b!1761302 (= lt!680748 call!110674)))

(assert (=> b!1761302 (= lt!680746 (maxPrefix!1646 thiss!24550 (t!164036 rules!3447) (++!5287 lt!680342 suffix!1421)))))

(declare-fun b!1761303 () Bool)

(declare-fun res!792718 () Bool)

(assert (=> b!1761303 (=> (not res!792718) (not e!1127172))))

(assert (=> b!1761303 (= res!792718 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680749)))) (_2!10897 (get!5897 lt!680749))) (++!5287 lt!680342 suffix!1421)))))

(declare-fun bm!110669 () Bool)

(assert (=> bm!110669 (= call!110674 (maxPrefixOneRule!1015 thiss!24550 (h!24784 rules!3447) (++!5287 lt!680342 suffix!1421)))))

(declare-fun b!1761304 () Bool)

(declare-fun e!1127170 () Bool)

(assert (=> b!1761304 (= e!1127170 e!1127172)))

(declare-fun res!792717 () Bool)

(assert (=> b!1761304 (=> (not res!792717) (not e!1127172))))

(assert (=> b!1761304 (= res!792717 (isDefined!3292 lt!680749))))

(declare-fun d!538024 () Bool)

(assert (=> d!538024 e!1127170))

(declare-fun res!792716 () Bool)

(assert (=> d!538024 (=> res!792716 e!1127170)))

(assert (=> d!538024 (= res!792716 (isEmpty!12230 lt!680749))))

(assert (=> d!538024 (= lt!680749 e!1127171)))

(declare-fun c!286960 () Bool)

(assert (=> d!538024 (= c!286960 (and ((_ is Cons!19383) rules!3447) ((_ is Nil!19383) (t!164036 rules!3447))))))

(declare-fun lt!680747 () Unit!33555)

(declare-fun lt!680750 () Unit!33555)

(assert (=> d!538024 (= lt!680747 lt!680750)))

(assert (=> d!538024 (isPrefix!1703 (++!5287 lt!680342 suffix!1421) (++!5287 lt!680342 suffix!1421))))

(assert (=> d!538024 (= lt!680750 (lemmaIsPrefixRefl!1128 (++!5287 lt!680342 suffix!1421) (++!5287 lt!680342 suffix!1421)))))

(assert (=> d!538024 (rulesValidInductive!1166 thiss!24550 rules!3447)))

(assert (=> d!538024 (= (maxPrefix!1646 thiss!24550 rules!3447 (++!5287 lt!680342 suffix!1421)) lt!680749)))

(declare-fun b!1761305 () Bool)

(declare-fun res!792713 () Bool)

(assert (=> b!1761305 (=> (not res!792713) (not e!1127172))))

(assert (=> b!1761305 (= res!792713 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680749)))) (originalCharacters!4277 (_1!10897 (get!5897 lt!680749)))))))

(declare-fun b!1761306 () Bool)

(declare-fun res!792719 () Bool)

(assert (=> b!1761306 (=> (not res!792719) (not e!1127172))))

(assert (=> b!1761306 (= res!792719 (< (size!15395 (_2!10897 (get!5897 lt!680749))) (size!15395 (++!5287 lt!680342 suffix!1421))))))

(declare-fun b!1761307 () Bool)

(assert (=> b!1761307 (= e!1127171 call!110674)))

(declare-fun b!1761308 () Bool)

(assert (=> b!1761308 (= e!1127172 (contains!3491 rules!3447 (rule!5481 (_1!10897 (get!5897 lt!680749)))))))

(assert (= (and d!538024 c!286960) b!1761307))

(assert (= (and d!538024 (not c!286960)) b!1761302))

(assert (= (or b!1761307 b!1761302) bm!110669))

(assert (= (and d!538024 (not res!792716)) b!1761304))

(assert (= (and b!1761304 res!792717) b!1761305))

(assert (= (and b!1761305 res!792713) b!1761306))

(assert (= (and b!1761306 res!792719) b!1761303))

(assert (= (and b!1761303 res!792718) b!1761301))

(assert (= (and b!1761301 res!792714) b!1761300))

(assert (= (and b!1761300 res!792715) b!1761308))

(declare-fun m!2177431 () Bool)

(assert (=> b!1761303 m!2177431))

(declare-fun m!2177433 () Bool)

(assert (=> b!1761303 m!2177433))

(assert (=> b!1761303 m!2177433))

(declare-fun m!2177435 () Bool)

(assert (=> b!1761303 m!2177435))

(assert (=> b!1761303 m!2177435))

(declare-fun m!2177437 () Bool)

(assert (=> b!1761303 m!2177437))

(assert (=> b!1761305 m!2177431))

(assert (=> b!1761305 m!2177433))

(assert (=> b!1761305 m!2177433))

(assert (=> b!1761305 m!2177435))

(assert (=> bm!110669 m!2176039))

(declare-fun m!2177439 () Bool)

(assert (=> bm!110669 m!2177439))

(assert (=> b!1761301 m!2177431))

(declare-fun m!2177441 () Bool)

(assert (=> b!1761301 m!2177441))

(assert (=> b!1761301 m!2177441))

(declare-fun m!2177443 () Bool)

(assert (=> b!1761301 m!2177443))

(assert (=> b!1761308 m!2177431))

(declare-fun m!2177445 () Bool)

(assert (=> b!1761308 m!2177445))

(assert (=> b!1761302 m!2176039))

(declare-fun m!2177447 () Bool)

(assert (=> b!1761302 m!2177447))

(assert (=> b!1761306 m!2177431))

(declare-fun m!2177449 () Bool)

(assert (=> b!1761306 m!2177449))

(assert (=> b!1761306 m!2176039))

(assert (=> b!1761306 m!2177229))

(declare-fun m!2177451 () Bool)

(assert (=> d!538024 m!2177451))

(assert (=> d!538024 m!2176039))

(assert (=> d!538024 m!2176039))

(declare-fun m!2177453 () Bool)

(assert (=> d!538024 m!2177453))

(assert (=> d!538024 m!2176039))

(assert (=> d!538024 m!2176039))

(declare-fun m!2177455 () Bool)

(assert (=> d!538024 m!2177455))

(assert (=> d!538024 m!2176333))

(assert (=> b!1761300 m!2177431))

(assert (=> b!1761300 m!2177433))

(assert (=> b!1761300 m!2177433))

(assert (=> b!1761300 m!2177435))

(assert (=> b!1761300 m!2177435))

(declare-fun m!2177457 () Bool)

(assert (=> b!1761300 m!2177457))

(declare-fun m!2177459 () Bool)

(assert (=> b!1761304 m!2177459))

(assert (=> d!537682 d!538024))

(assert (=> d!537682 d!537592))

(declare-fun d!538026 () Bool)

(assert (=> d!538026 (= (seqFromList!2432 lt!680342) (fromListB!1110 lt!680342))))

(declare-fun bs!404084 () Bool)

(assert (= bs!404084 d!538026))

(declare-fun m!2177461 () Bool)

(assert (=> bs!404084 m!2177461))

(assert (=> d!537682 d!538026))

(declare-fun b!1761312 () Bool)

(declare-fun e!1127174 () Bool)

(declare-fun lt!680751 () List!19452)

(assert (=> b!1761312 (= e!1127174 (or (not (= (_2!10897 (get!5897 lt!680513)) Nil!19382)) (= lt!680751 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun b!1761310 () Bool)

(declare-fun e!1127173 () List!19452)

(assert (=> b!1761310 (= e!1127173 (Cons!19382 (h!24783 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (++!5287 (t!164035 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (_2!10897 (get!5897 lt!680513)))))))

(declare-fun b!1761309 () Bool)

(assert (=> b!1761309 (= e!1127173 (_2!10897 (get!5897 lt!680513)))))

(declare-fun d!538028 () Bool)

(assert (=> d!538028 e!1127174))

(declare-fun res!792721 () Bool)

(assert (=> d!538028 (=> (not res!792721) (not e!1127174))))

(assert (=> d!538028 (= res!792721 (= (content!2798 lt!680751) ((_ map or) (content!2798 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (content!2798 (_2!10897 (get!5897 lt!680513))))))))

(assert (=> d!538028 (= lt!680751 e!1127173)))

(declare-fun c!286961 () Bool)

(assert (=> d!538028 (= c!286961 ((_ is Nil!19382) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))

(assert (=> d!538028 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))) (_2!10897 (get!5897 lt!680513))) lt!680751)))

(declare-fun b!1761311 () Bool)

(declare-fun res!792720 () Bool)

(assert (=> b!1761311 (=> (not res!792720) (not e!1127174))))

(assert (=> b!1761311 (= res!792720 (= (size!15395 lt!680751) (+ (size!15395 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (size!15395 (_2!10897 (get!5897 lt!680513))))))))

(assert (= (and d!538028 c!286961) b!1761309))

(assert (= (and d!538028 (not c!286961)) b!1761310))

(assert (= (and d!538028 res!792721) b!1761311))

(assert (= (and b!1761311 res!792720) b!1761312))

(declare-fun m!2177463 () Bool)

(assert (=> b!1761310 m!2177463))

(declare-fun m!2177465 () Bool)

(assert (=> d!538028 m!2177465))

(assert (=> d!538028 m!2176467))

(declare-fun m!2177467 () Bool)

(assert (=> d!538028 m!2177467))

(declare-fun m!2177469 () Bool)

(assert (=> d!538028 m!2177469))

(declare-fun m!2177471 () Bool)

(assert (=> b!1761311 m!2177471))

(assert (=> b!1761311 m!2176467))

(declare-fun m!2177473 () Bool)

(assert (=> b!1761311 m!2177473))

(assert (=> b!1761311 m!2176485))

(assert (=> b!1760586 d!538028))

(declare-fun d!538030 () Bool)

(assert (=> d!538030 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))) (list!7864 (c!286775 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun bs!404085 () Bool)

(assert (= bs!404085 d!538030))

(declare-fun m!2177475 () Bool)

(assert (=> bs!404085 m!2177475))

(assert (=> b!1760586 d!538030))

(declare-fun d!538032 () Bool)

(declare-fun lt!680752 () BalanceConc!12838)

(assert (=> d!538032 (= (list!7861 lt!680752) (originalCharacters!4277 (_1!10897 (get!5897 lt!680513))))))

(assert (=> d!538032 (= lt!680752 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))) (value!108368 (_1!10897 (get!5897 lt!680513)))))))

(assert (=> d!538032 (= (charsOf!2112 (_1!10897 (get!5897 lt!680513))) lt!680752)))

(declare-fun b_lambda!57019 () Bool)

(assert (=> (not b_lambda!57019) (not d!538032)))

(declare-fun tb!106113 () Bool)

(declare-fun t!164155 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164155) tb!106113))

(declare-fun b!1761313 () Bool)

(declare-fun e!1127175 () Bool)

(declare-fun tp!500271 () Bool)

(assert (=> b!1761313 (= e!1127175 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))) (value!108368 (_1!10897 (get!5897 lt!680513)))))) tp!500271))))

(declare-fun result!127672 () Bool)

(assert (=> tb!106113 (= result!127672 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))) (value!108368 (_1!10897 (get!5897 lt!680513))))) e!1127175))))

(assert (= tb!106113 b!1761313))

(declare-fun m!2177477 () Bool)

(assert (=> b!1761313 m!2177477))

(declare-fun m!2177479 () Bool)

(assert (=> tb!106113 m!2177479))

(assert (=> d!538032 t!164155))

(declare-fun b_and!132925 () Bool)

(assert (= b_and!132917 (and (=> t!164155 result!127672) b_and!132925)))

(declare-fun t!164157 () Bool)

(declare-fun tb!106115 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164157) tb!106115))

(declare-fun result!127674 () Bool)

(assert (= result!127674 result!127672))

(assert (=> d!538032 t!164157))

(declare-fun b_and!132927 () Bool)

(assert (= b_and!132919 (and (=> t!164157 result!127674) b_and!132927)))

(declare-fun t!164159 () Bool)

(declare-fun tb!106117 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164159) tb!106117))

(declare-fun result!127676 () Bool)

(assert (= result!127676 result!127672))

(assert (=> d!538032 t!164159))

(declare-fun b_and!132929 () Bool)

(assert (= b_and!132921 (and (=> t!164159 result!127676) b_and!132929)))

(declare-fun t!164161 () Bool)

(declare-fun tb!106119 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164161) tb!106119))

(declare-fun result!127678 () Bool)

(assert (= result!127678 result!127672))

(assert (=> d!538032 t!164161))

(declare-fun b_and!132931 () Bool)

(assert (= b_and!132923 (and (=> t!164161 result!127678) b_and!132931)))

(declare-fun m!2177481 () Bool)

(assert (=> d!538032 m!2177481))

(declare-fun m!2177483 () Bool)

(assert (=> d!538032 m!2177483))

(assert (=> b!1760586 d!538032))

(assert (=> b!1760586 d!537864))

(declare-fun b!1761317 () Bool)

(declare-fun e!1127177 () Bool)

(assert (=> b!1761317 (= e!1127177 (>= (size!15395 (++!5287 lt!680342 suffix!1421)) (size!15395 lt!680342)))))

(declare-fun d!538034 () Bool)

(assert (=> d!538034 e!1127177))

(declare-fun res!792725 () Bool)

(assert (=> d!538034 (=> res!792725 e!1127177)))

(declare-fun lt!680753 () Bool)

(assert (=> d!538034 (= res!792725 (not lt!680753))))

(declare-fun e!1127176 () Bool)

(assert (=> d!538034 (= lt!680753 e!1127176)))

(declare-fun res!792722 () Bool)

(assert (=> d!538034 (=> res!792722 e!1127176)))

(assert (=> d!538034 (= res!792722 ((_ is Nil!19382) lt!680342))))

(assert (=> d!538034 (= (isPrefix!1703 lt!680342 (++!5287 lt!680342 suffix!1421)) lt!680753)))

(declare-fun b!1761314 () Bool)

(declare-fun e!1127178 () Bool)

(assert (=> b!1761314 (= e!1127176 e!1127178)))

(declare-fun res!792724 () Bool)

(assert (=> b!1761314 (=> (not res!792724) (not e!1127178))))

(assert (=> b!1761314 (= res!792724 (not ((_ is Nil!19382) (++!5287 lt!680342 suffix!1421))))))

(declare-fun b!1761316 () Bool)

(assert (=> b!1761316 (= e!1127178 (isPrefix!1703 (tail!2633 lt!680342) (tail!2633 (++!5287 lt!680342 suffix!1421))))))

(declare-fun b!1761315 () Bool)

(declare-fun res!792723 () Bool)

(assert (=> b!1761315 (=> (not res!792723) (not e!1127178))))

(assert (=> b!1761315 (= res!792723 (= (head!4076 lt!680342) (head!4076 (++!5287 lt!680342 suffix!1421))))))

(assert (= (and d!538034 (not res!792722)) b!1761314))

(assert (= (and b!1761314 res!792724) b!1761315))

(assert (= (and b!1761315 res!792723) b!1761316))

(assert (= (and d!538034 (not res!792725)) b!1761317))

(assert (=> b!1761317 m!2176039))

(assert (=> b!1761317 m!2177229))

(assert (=> b!1761317 m!2176203))

(assert (=> b!1761316 m!2176423))

(assert (=> b!1761316 m!2176039))

(assert (=> b!1761316 m!2177235))

(assert (=> b!1761316 m!2176423))

(assert (=> b!1761316 m!2177235))

(declare-fun m!2177485 () Bool)

(assert (=> b!1761316 m!2177485))

(assert (=> b!1761315 m!2176429))

(assert (=> b!1761315 m!2176039))

(assert (=> b!1761315 m!2177241))

(assert (=> d!537654 d!538034))

(assert (=> d!537654 d!537744))

(declare-fun d!538036 () Bool)

(assert (=> d!538036 (isPrefix!1703 lt!680342 (++!5287 lt!680342 suffix!1421))))

(assert (=> d!538036 true))

(declare-fun _$46!1215 () Unit!33555)

(assert (=> d!538036 (= (choose!10897 lt!680342 suffix!1421) _$46!1215)))

(declare-fun bs!404086 () Bool)

(assert (= bs!404086 d!538036))

(assert (=> bs!404086 m!2176039))

(assert (=> bs!404086 m!2176039))

(assert (=> bs!404086 m!2176433))

(assert (=> d!537654 d!538036))

(assert (=> d!537762 d!537760))

(assert (=> d!537762 d!537656))

(declare-fun d!538038 () Bool)

(declare-fun dynLambda!9336 (Int BalanceConc!12838) Bool)

(assert (=> d!538038 (dynLambda!9336 lambda!70147 lt!680349)))

(declare-fun lt!680756 () Unit!33555)

(declare-fun choose!10908 (Int BalanceConc!12838) Unit!33555)

(assert (=> d!538038 (= lt!680756 (choose!10908 lambda!70147 lt!680349))))

(assert (=> d!538038 (Forall!830 lambda!70147)))

(assert (=> d!538038 (= (ForallOf!314 lambda!70147 lt!680349) lt!680756)))

(declare-fun b_lambda!57021 () Bool)

(assert (=> (not b_lambda!57021) (not d!538038)))

(declare-fun bs!404087 () Bool)

(assert (= bs!404087 d!538038))

(declare-fun m!2177487 () Bool)

(assert (=> bs!404087 m!2177487))

(declare-fun m!2177489 () Bool)

(assert (=> bs!404087 m!2177489))

(declare-fun m!2177491 () Bool)

(assert (=> bs!404087 m!2177491))

(assert (=> d!537762 d!538038))

(declare-fun d!538040 () Bool)

(declare-fun lt!680763 () Int)

(assert (=> d!538040 (>= lt!680763 0)))

(declare-fun e!1127179 () Int)

(assert (=> d!538040 (= lt!680763 e!1127179)))

(declare-fun c!286962 () Bool)

(assert (=> d!538040 (= c!286962 ((_ is Nil!19382) (++!5287 lt!680348 (_2!10897 lt!680362))))))

(assert (=> d!538040 (= (size!15395 (++!5287 lt!680348 (_2!10897 lt!680362))) lt!680763)))

(declare-fun b!1761318 () Bool)

(assert (=> b!1761318 (= e!1127179 0)))

(declare-fun b!1761319 () Bool)

(assert (=> b!1761319 (= e!1127179 (+ 1 (size!15395 (t!164035 (++!5287 lt!680348 (_2!10897 lt!680362))))))))

(assert (= (and d!538040 c!286962) b!1761318))

(assert (= (and d!538040 (not c!286962)) b!1761319))

(declare-fun m!2177493 () Bool)

(assert (=> b!1761319 m!2177493))

(assert (=> b!1760558 d!538040))

(assert (=> b!1760558 d!537796))

(declare-fun d!538042 () Bool)

(declare-fun c!286973 () Bool)

(assert (=> d!538042 (= c!286973 ((_ is Nil!19383) rules!3447))))

(declare-fun e!1127190 () (InoxSet Rule!6726))

(assert (=> d!538042 (= (content!2800 rules!3447) e!1127190)))

(declare-fun b!1761340 () Bool)

(assert (=> b!1761340 (= e!1127190 ((as const (Array Rule!6726 Bool)) false))))

(declare-fun b!1761341 () Bool)

(assert (=> b!1761341 (= e!1127190 ((_ map or) (store ((as const (Array Rule!6726 Bool)) false) (h!24784 rules!3447) true) (content!2800 (t!164036 rules!3447))))))

(assert (= (and d!538042 c!286973) b!1761340))

(assert (= (and d!538042 (not c!286973)) b!1761341))

(declare-fun m!2177495 () Bool)

(assert (=> b!1761341 m!2177495))

(assert (=> b!1761341 m!2177043))

(assert (=> d!537770 d!538042))

(declare-fun bs!404088 () Bool)

(declare-fun d!538044 () Bool)

(assert (= bs!404088 (and d!538044 d!537596)))

(declare-fun lambda!70175 () Int)

(assert (=> bs!404088 (= lambda!70175 lambda!70135)))

(declare-fun lambda!70176 () Int)

(declare-fun forall!4276 (List!19456 Int) Bool)

(assert (=> d!538044 (forall!4276 (map!3995 rules!3447 lambda!70175) lambda!70176)))

(declare-fun lt!680818 () Unit!33555)

(declare-fun e!1127197 () Unit!33555)

(assert (=> d!538044 (= lt!680818 e!1127197)))

(declare-fun c!286980 () Bool)

(assert (=> d!538044 (= c!286980 ((_ is Nil!19383) rules!3447))))

(assert (=> d!538044 (rulesValidInductive!1166 thiss!24550 rules!3447)))

(assert (=> d!538044 (= (lemma!384 rules!3447 thiss!24550 rules!3447) lt!680818)))

(declare-fun b!1761354 () Bool)

(declare-fun Unit!33565 () Unit!33555)

(assert (=> b!1761354 (= e!1127197 Unit!33565)))

(declare-fun b!1761355 () Bool)

(declare-fun Unit!33566 () Unit!33555)

(assert (=> b!1761355 (= e!1127197 Unit!33566)))

(declare-fun lt!680819 () Unit!33555)

(assert (=> b!1761355 (= lt!680819 (lemma!384 rules!3447 thiss!24550 (t!164036 rules!3447)))))

(assert (= (and d!538044 c!286980) b!1761354))

(assert (= (and d!538044 (not c!286980)) b!1761355))

(declare-fun m!2177497 () Bool)

(assert (=> d!538044 m!2177497))

(assert (=> d!538044 m!2177497))

(declare-fun m!2177499 () Bool)

(assert (=> d!538044 m!2177499))

(assert (=> d!538044 m!2176333))

(declare-fun m!2177501 () Bool)

(assert (=> b!1761355 m!2177501))

(assert (=> d!537596 d!538044))

(declare-fun bs!404089 () Bool)

(declare-fun d!538046 () Bool)

(assert (= bs!404089 (and d!538046 d!538044)))

(declare-fun lambda!70179 () Int)

(assert (=> bs!404089 (= lambda!70179 lambda!70176)))

(declare-fun b!1761380 () Bool)

(declare-fun e!1127218 () Regex!4791)

(assert (=> b!1761380 (= e!1127218 (h!24787 (map!3995 rules!3447 lambda!70135)))))

(declare-fun b!1761381 () Bool)

(declare-fun e!1127219 () Bool)

(declare-fun lt!680822 () Regex!4791)

(declare-fun isUnion!102 (Regex!4791) Bool)

(assert (=> b!1761381 (= e!1127219 (isUnion!102 lt!680822))))

(declare-fun b!1761382 () Bool)

(declare-fun e!1127215 () Bool)

(assert (=> b!1761382 (= e!1127215 e!1127219)))

(declare-fun c!286990 () Bool)

(declare-fun isEmpty!12233 (List!19456) Bool)

(declare-fun tail!2634 (List!19456) List!19456)

(assert (=> b!1761382 (= c!286990 (isEmpty!12233 (tail!2634 (map!3995 rules!3447 lambda!70135))))))

(declare-fun e!1127214 () Bool)

(assert (=> d!538046 e!1127214))

(declare-fun res!792734 () Bool)

(assert (=> d!538046 (=> (not res!792734) (not e!1127214))))

(assert (=> d!538046 (= res!792734 (validRegex!1935 lt!680822))))

(assert (=> d!538046 (= lt!680822 e!1127218)))

(declare-fun c!286991 () Bool)

(declare-fun e!1127217 () Bool)

(assert (=> d!538046 (= c!286991 e!1127217)))

(declare-fun res!792735 () Bool)

(assert (=> d!538046 (=> (not res!792735) (not e!1127217))))

(assert (=> d!538046 (= res!792735 ((_ is Cons!19386) (map!3995 rules!3447 lambda!70135)))))

(assert (=> d!538046 (forall!4276 (map!3995 rules!3447 lambda!70135) lambda!70179)))

(assert (=> d!538046 (= (generalisedUnion!392 (map!3995 rules!3447 lambda!70135)) lt!680822)))

(declare-fun b!1761383 () Bool)

(declare-fun head!4079 (List!19456) Regex!4791)

(assert (=> b!1761383 (= e!1127219 (= lt!680822 (head!4079 (map!3995 rules!3447 lambda!70135))))))

(declare-fun b!1761384 () Bool)

(declare-fun e!1127216 () Regex!4791)

(assert (=> b!1761384 (= e!1127216 (Union!4791 (h!24787 (map!3995 rules!3447 lambda!70135)) (generalisedUnion!392 (t!164099 (map!3995 rules!3447 lambda!70135)))))))

(declare-fun b!1761385 () Bool)

(declare-fun isEmptyLang!102 (Regex!4791) Bool)

(assert (=> b!1761385 (= e!1127215 (isEmptyLang!102 lt!680822))))

(declare-fun b!1761386 () Bool)

(assert (=> b!1761386 (= e!1127217 (isEmpty!12233 (t!164099 (map!3995 rules!3447 lambda!70135))))))

(declare-fun b!1761387 () Bool)

(assert (=> b!1761387 (= e!1127216 EmptyLang!4791)))

(declare-fun b!1761388 () Bool)

(assert (=> b!1761388 (= e!1127214 e!1127215)))

(declare-fun c!286992 () Bool)

(assert (=> b!1761388 (= c!286992 (isEmpty!12233 (map!3995 rules!3447 lambda!70135)))))

(declare-fun b!1761389 () Bool)

(assert (=> b!1761389 (= e!1127218 e!1127216)))

(declare-fun c!286989 () Bool)

(assert (=> b!1761389 (= c!286989 ((_ is Cons!19386) (map!3995 rules!3447 lambda!70135)))))

(assert (= (and d!538046 res!792735) b!1761386))

(assert (= (and d!538046 c!286991) b!1761380))

(assert (= (and d!538046 (not c!286991)) b!1761389))

(assert (= (and b!1761389 c!286989) b!1761384))

(assert (= (and b!1761389 (not c!286989)) b!1761387))

(assert (= (and d!538046 res!792734) b!1761388))

(assert (= (and b!1761388 c!286992) b!1761385))

(assert (= (and b!1761388 (not c!286992)) b!1761382))

(assert (= (and b!1761382 c!286990) b!1761383))

(assert (= (and b!1761382 (not c!286990)) b!1761381))

(declare-fun m!2177503 () Bool)

(assert (=> b!1761386 m!2177503))

(declare-fun m!2177505 () Bool)

(assert (=> b!1761385 m!2177505))

(declare-fun m!2177507 () Bool)

(assert (=> d!538046 m!2177507))

(assert (=> d!538046 m!2176189))

(declare-fun m!2177509 () Bool)

(assert (=> d!538046 m!2177509))

(assert (=> b!1761388 m!2176189))

(declare-fun m!2177511 () Bool)

(assert (=> b!1761388 m!2177511))

(declare-fun m!2177513 () Bool)

(assert (=> b!1761381 m!2177513))

(assert (=> b!1761383 m!2176189))

(declare-fun m!2177515 () Bool)

(assert (=> b!1761383 m!2177515))

(declare-fun m!2177517 () Bool)

(assert (=> b!1761384 m!2177517))

(assert (=> b!1761382 m!2176189))

(declare-fun m!2177519 () Bool)

(assert (=> b!1761382 m!2177519))

(assert (=> b!1761382 m!2177519))

(declare-fun m!2177521 () Bool)

(assert (=> b!1761382 m!2177521))

(assert (=> d!537596 d!538046))

(declare-fun d!538048 () Bool)

(declare-fun lt!680853 () List!19456)

(declare-fun size!15399 (List!19456) Int)

(declare-fun size!15400 (List!19453) Int)

(assert (=> d!538048 (= (size!15399 lt!680853) (size!15400 rules!3447))))

(declare-fun e!1127230 () List!19456)

(assert (=> d!538048 (= lt!680853 e!1127230)))

(declare-fun c!287001 () Bool)

(assert (=> d!538048 (= c!287001 ((_ is Nil!19383) rules!3447))))

(assert (=> d!538048 (= (map!3995 rules!3447 lambda!70135) lt!680853)))

(declare-fun b!1761408 () Bool)

(assert (=> b!1761408 (= e!1127230 Nil!19386)))

(declare-fun b!1761409 () Bool)

(declare-fun $colon$colon!433 (List!19456 Regex!4791) List!19456)

(declare-fun dynLambda!9337 (Int Rule!6726) Regex!4791)

(assert (=> b!1761409 (= e!1127230 ($colon$colon!433 (map!3995 (t!164036 rules!3447) lambda!70135) (dynLambda!9337 lambda!70135 (h!24784 rules!3447))))))

(assert (= (and d!538048 c!287001) b!1761408))

(assert (= (and d!538048 (not c!287001)) b!1761409))

(declare-fun b_lambda!57023 () Bool)

(assert (=> (not b_lambda!57023) (not b!1761409)))

(declare-fun m!2177567 () Bool)

(assert (=> d!538048 m!2177567))

(declare-fun m!2177569 () Bool)

(assert (=> d!538048 m!2177569))

(declare-fun m!2177571 () Bool)

(assert (=> b!1761409 m!2177571))

(declare-fun m!2177573 () Bool)

(assert (=> b!1761409 m!2177573))

(assert (=> b!1761409 m!2177571))

(assert (=> b!1761409 m!2177573))

(declare-fun m!2177575 () Bool)

(assert (=> b!1761409 m!2177575))

(assert (=> d!537596 d!538048))

(declare-fun d!538054 () Bool)

(declare-fun charsToInt!0 (List!19451) (_ BitVec 32))

(assert (=> d!538054 (= (inv!16 (value!108368 token!523)) (= (charsToInt!0 (text!25318 (value!108368 token!523))) (value!108359 (value!108368 token!523))))))

(declare-fun bs!404090 () Bool)

(assert (= bs!404090 d!538054))

(declare-fun m!2177577 () Bool)

(assert (=> bs!404090 m!2177577))

(assert (=> b!1760910 d!538054))

(assert (=> b!1760506 d!537936))

(declare-fun d!538056 () Bool)

(assert (=> d!538056 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468))))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun b_lambda!57025 () Bool)

(assert (=> (not b_lambda!57025) (not d!538056)))

(declare-fun t!164163 () Bool)

(declare-fun tb!106121 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164163) tb!106121))

(declare-fun result!127680 () Bool)

(assert (=> tb!106121 (= result!127680 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun m!2177579 () Bool)

(assert (=> tb!106121 m!2177579))

(assert (=> d!538056 t!164163))

(declare-fun b_and!132933 () Bool)

(assert (= b_and!132859 (and (=> t!164163 result!127680) b_and!132933)))

(declare-fun t!164165 () Bool)

(declare-fun tb!106123 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164165) tb!106123))

(declare-fun result!127682 () Bool)

(assert (= result!127682 result!127680))

(assert (=> d!538056 t!164165))

(declare-fun b_and!132935 () Bool)

(assert (= b_and!132861 (and (=> t!164165 result!127682) b_and!132935)))

(declare-fun tb!106125 () Bool)

(declare-fun t!164167 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164167) tb!106125))

(declare-fun result!127684 () Bool)

(assert (= result!127684 result!127680))

(assert (=> d!538056 t!164167))

(declare-fun b_and!132937 () Bool)

(assert (= b_and!132863 (and (=> t!164167 result!127684) b_and!132937)))

(declare-fun tb!106127 () Bool)

(declare-fun t!164169 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164169) tb!106127))

(declare-fun result!127686 () Bool)

(assert (= result!127686 result!127680))

(assert (=> d!538056 t!164169))

(declare-fun b_and!132939 () Bool)

(assert (= b_and!132865 (and (=> t!164169 result!127686) b_and!132939)))

(assert (=> d!538056 m!2176317))

(declare-fun m!2177581 () Bool)

(assert (=> d!538056 m!2177581))

(assert (=> b!1760506 d!538056))

(declare-fun d!538058 () Bool)

(assert (=> d!538058 (= (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468)))) (fromListB!1110 (originalCharacters!4277 (_1!10897 (get!5897 lt!680468)))))))

(declare-fun bs!404091 () Bool)

(assert (= bs!404091 d!538058))

(declare-fun m!2177583 () Bool)

(assert (=> bs!404091 m!2177583))

(assert (=> b!1760506 d!538058))

(declare-fun b!1761412 () Bool)

(declare-fun e!1127233 () List!19452)

(assert (=> b!1761412 (= e!1127233 (list!7867 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun b!1761411 () Bool)

(declare-fun e!1127232 () List!19452)

(assert (=> b!1761411 (= e!1127232 e!1127233)))

(declare-fun c!287003 () Bool)

(assert (=> b!1761411 (= c!287003 ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(declare-fun d!538060 () Bool)

(declare-fun c!287002 () Bool)

(assert (=> d!538060 (= c!287002 ((_ is Empty!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))

(assert (=> d!538060 (= (list!7864 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1127232)))

(declare-fun b!1761410 () Bool)

(assert (=> b!1761410 (= e!1127232 Nil!19382)))

(declare-fun b!1761413 () Bool)

(assert (=> b!1761413 (= e!1127233 (++!5287 (list!7864 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (list!7864 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))))

(assert (= (and d!538060 c!287002) b!1761410))

(assert (= (and d!538060 (not c!287002)) b!1761411))

(assert (= (and b!1761411 c!287003) b!1761412))

(assert (= (and b!1761411 (not c!287003)) b!1761413))

(declare-fun m!2177585 () Bool)

(assert (=> b!1761412 m!2177585))

(declare-fun m!2177587 () Bool)

(assert (=> b!1761413 m!2177587))

(declare-fun m!2177589 () Bool)

(assert (=> b!1761413 m!2177589))

(assert (=> b!1761413 m!2177587))

(assert (=> b!1761413 m!2177589))

(declare-fun m!2177591 () Bool)

(assert (=> b!1761413 m!2177591))

(assert (=> d!537760 d!538060))

(declare-fun d!538062 () Bool)

(assert (=> d!538062 true))

(assert (=> d!538062 true))

(declare-fun res!792742 () Bool)

(assert (=> d!538062 (= (choose!10900 lambda!70132) res!792742)))

(assert (=> d!537750 d!538062))

(declare-fun d!538064 () Bool)

(assert (=> d!538064 (= (isEmpty!12230 lt!680352) (not ((_ is Some!3948) lt!680352)))))

(assert (=> d!537602 d!538064))

(declare-fun d!538066 () Bool)

(assert (=> d!538066 (= (inv!25164 (tag!3829 (h!24784 (t!164036 rules!3447)))) (= (mod (str.len (value!108367 (tag!3829 (h!24784 (t!164036 rules!3447))))) 2) 0))))

(assert (=> b!1761016 d!538066))

(declare-fun d!538068 () Bool)

(declare-fun res!792743 () Bool)

(declare-fun e!1127236 () Bool)

(assert (=> d!538068 (=> (not res!792743) (not e!1127236))))

(assert (=> d!538068 (= res!792743 (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447))))))))

(assert (=> d!538068 (= (inv!25170 (transformation!3463 (h!24784 (t!164036 rules!3447)))) e!1127236)))

(declare-fun b!1761416 () Bool)

(assert (=> b!1761416 (= e!1127236 (equivClasses!1317 (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447))))))))

(assert (= (and d!538068 res!792743) b!1761416))

(declare-fun m!2177593 () Bool)

(assert (=> d!538068 m!2177593))

(declare-fun m!2177595 () Bool)

(assert (=> b!1761416 m!2177595))

(assert (=> b!1761016 d!538068))

(declare-fun d!538070 () Bool)

(assert (=> d!538070 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (h!24783 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> b!1760889 d!538070))

(declare-fun b!1761417 () Bool)

(declare-fun res!792750 () Bool)

(declare-fun e!1127237 () Bool)

(assert (=> b!1761417 (=> (not res!792750) (not e!1127237))))

(declare-fun call!110699 () Bool)

(assert (=> b!1761417 (= res!792750 (not call!110699))))

(declare-fun b!1761418 () Bool)

(declare-fun res!792745 () Bool)

(declare-fun e!1127243 () Bool)

(assert (=> b!1761418 (=> res!792745 e!1127243)))

(assert (=> b!1761418 (= res!792745 e!1127237)))

(declare-fun res!792746 () Bool)

(assert (=> b!1761418 (=> (not res!792746) (not e!1127237))))

(declare-fun lt!680856 () Bool)

(assert (=> b!1761418 (= res!792746 lt!680856)))

(declare-fun b!1761419 () Bool)

(declare-fun res!792748 () Bool)

(assert (=> b!1761419 (=> (not res!792748) (not e!1127237))))

(assert (=> b!1761419 (= res!792748 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))))))))

(declare-fun b!1761421 () Bool)

(declare-fun e!1127242 () Bool)

(assert (=> b!1761421 (= e!1127242 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761422 () Bool)

(declare-fun res!792749 () Bool)

(assert (=> b!1761422 (=> res!792749 e!1127243)))

(assert (=> b!1761422 (= res!792749 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun e!1127239 () Bool)

(assert (=> b!1761422 (= e!1127239 e!1127243)))

(declare-fun b!1761423 () Bool)

(declare-fun res!792744 () Bool)

(declare-fun e!1127238 () Bool)

(assert (=> b!1761423 (=> res!792744 e!1127238)))

(assert (=> b!1761423 (= res!792744 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))))

(declare-fun bm!110694 () Bool)

(assert (=> bm!110694 (= call!110699 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))

(declare-fun b!1761424 () Bool)

(declare-fun e!1127240 () Bool)

(assert (=> b!1761424 (= e!1127240 e!1127238)))

(declare-fun res!792751 () Bool)

(assert (=> b!1761424 (=> res!792751 e!1127238)))

(assert (=> b!1761424 (= res!792751 call!110699)))

(declare-fun b!1761425 () Bool)

(assert (=> b!1761425 (= e!1127238 (not (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun b!1761426 () Bool)

(assert (=> b!1761426 (= e!1127242 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))))))))

(declare-fun b!1761427 () Bool)

(declare-fun e!1127241 () Bool)

(assert (=> b!1761427 (= e!1127241 (= lt!680856 call!110699))))

(declare-fun b!1761428 () Bool)

(assert (=> b!1761428 (= e!1127241 e!1127239)))

(declare-fun c!287004 () Bool)

(assert (=> b!1761428 (= c!287004 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761429 () Bool)

(assert (=> b!1761429 (= e!1127243 e!1127240)))

(declare-fun res!792747 () Bool)

(assert (=> b!1761429 (=> (not res!792747) (not e!1127240))))

(assert (=> b!1761429 (= res!792747 (not lt!680856))))

(declare-fun b!1761430 () Bool)

(assert (=> b!1761430 (= e!1127237 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun d!538072 () Bool)

(assert (=> d!538072 e!1127241))

(declare-fun c!287006 () Bool)

(assert (=> d!538072 (= c!287006 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (=> d!538072 (= lt!680856 e!1127242)))

(declare-fun c!287005 () Bool)

(assert (=> d!538072 (= c!287005 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))

(assert (=> d!538072 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538072 (= (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) lt!680856)))

(declare-fun b!1761420 () Bool)

(assert (=> b!1761420 (= e!1127239 (not lt!680856))))

(assert (= (and d!538072 c!287005) b!1761421))

(assert (= (and d!538072 (not c!287005)) b!1761426))

(assert (= (and d!538072 c!287006) b!1761427))

(assert (= (and d!538072 (not c!287006)) b!1761428))

(assert (= (and b!1761428 c!287004) b!1761420))

(assert (= (and b!1761428 (not c!287004)) b!1761422))

(assert (= (and b!1761422 (not res!792749)) b!1761418))

(assert (= (and b!1761418 res!792746) b!1761417))

(assert (= (and b!1761417 res!792750) b!1761419))

(assert (= (and b!1761419 res!792748) b!1761430))

(assert (= (and b!1761418 (not res!792745)) b!1761429))

(assert (= (and b!1761429 res!792747) b!1761424))

(assert (= (and b!1761424 (not res!792751)) b!1761423))

(assert (= (and b!1761423 (not res!792744)) b!1761425))

(assert (= (or b!1761427 b!1761417 b!1761424) bm!110694))

(assert (=> bm!110694 m!2176889))

(declare-fun m!2177597 () Bool)

(assert (=> bm!110694 m!2177597))

(assert (=> b!1761423 m!2176889))

(declare-fun m!2177599 () Bool)

(assert (=> b!1761423 m!2177599))

(assert (=> b!1761423 m!2177599))

(declare-fun m!2177601 () Bool)

(assert (=> b!1761423 m!2177601))

(assert (=> b!1761421 m!2176935))

(assert (=> d!538072 m!2176889))

(assert (=> d!538072 m!2177597))

(assert (=> d!538072 m!2176937))

(assert (=> b!1761419 m!2176889))

(assert (=> b!1761419 m!2177599))

(assert (=> b!1761419 m!2177599))

(assert (=> b!1761419 m!2177601))

(assert (=> b!1761426 m!2176889))

(declare-fun m!2177603 () Bool)

(assert (=> b!1761426 m!2177603))

(assert (=> b!1761426 m!2177603))

(declare-fun m!2177605 () Bool)

(assert (=> b!1761426 m!2177605))

(assert (=> b!1761426 m!2176889))

(assert (=> b!1761426 m!2177599))

(assert (=> b!1761426 m!2177605))

(assert (=> b!1761426 m!2177599))

(declare-fun m!2177609 () Bool)

(assert (=> b!1761426 m!2177609))

(assert (=> b!1761430 m!2176889))

(assert (=> b!1761430 m!2177603))

(assert (=> b!1761425 m!2176889))

(assert (=> b!1761425 m!2177603))

(assert (=> b!1760949 d!538072))

(declare-fun d!538074 () Bool)

(assert (=> d!538074 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))) (list!7864 (c!286775 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))

(declare-fun bs!404092 () Bool)

(assert (= bs!404092 d!538074))

(declare-fun m!2177611 () Bool)

(assert (=> bs!404092 m!2177611))

(assert (=> b!1760949 d!538074))

(declare-fun d!538078 () Bool)

(declare-fun lt!680858 () BalanceConc!12838)

(assert (=> d!538078 (= (list!7861 lt!680858) (originalCharacters!4277 (_1!10897 (get!5897 lt!680657))))))

(assert (=> d!538078 (= lt!680858 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657))))) (value!108368 (_1!10897 (get!5897 lt!680657)))))))

(assert (=> d!538078 (= (charsOf!2112 (_1!10897 (get!5897 lt!680657))) lt!680858)))

(declare-fun b_lambda!57027 () Bool)

(assert (=> (not b_lambda!57027) (not d!538078)))

(declare-fun tb!106129 () Bool)

(declare-fun t!164171 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164171) tb!106129))

(declare-fun b!1761438 () Bool)

(declare-fun e!1127249 () Bool)

(declare-fun tp!500272 () Bool)

(assert (=> b!1761438 (= e!1127249 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657))))) (value!108368 (_1!10897 (get!5897 lt!680657)))))) tp!500272))))

(declare-fun result!127688 () Bool)

(assert (=> tb!106129 (= result!127688 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657))))) (value!108368 (_1!10897 (get!5897 lt!680657))))) e!1127249))))

(assert (= tb!106129 b!1761438))

(declare-fun m!2177621 () Bool)

(assert (=> b!1761438 m!2177621))

(declare-fun m!2177623 () Bool)

(assert (=> tb!106129 m!2177623))

(assert (=> d!538078 t!164171))

(declare-fun b_and!132941 () Bool)

(assert (= b_and!132925 (and (=> t!164171 result!127688) b_and!132941)))

(declare-fun tb!106131 () Bool)

(declare-fun t!164173 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164173) tb!106131))

(declare-fun result!127690 () Bool)

(assert (= result!127690 result!127688))

(assert (=> d!538078 t!164173))

(declare-fun b_and!132943 () Bool)

(assert (= b_and!132927 (and (=> t!164173 result!127690) b_and!132943)))

(declare-fun t!164175 () Bool)

(declare-fun tb!106133 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164175) tb!106133))

(declare-fun result!127692 () Bool)

(assert (= result!127692 result!127688))

(assert (=> d!538078 t!164175))

(declare-fun b_and!132945 () Bool)

(assert (= b_and!132929 (and (=> t!164175 result!127692) b_and!132945)))

(declare-fun t!164177 () Bool)

(declare-fun tb!106135 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164177) tb!106135))

(declare-fun result!127694 () Bool)

(assert (= result!127694 result!127688))

(assert (=> d!538078 t!164177))

(declare-fun b_and!132947 () Bool)

(assert (= b_and!132931 (and (=> t!164177 result!127694) b_and!132947)))

(declare-fun m!2177629 () Bool)

(assert (=> d!538078 m!2177629))

(declare-fun m!2177631 () Bool)

(assert (=> d!538078 m!2177631))

(assert (=> b!1760949 d!538078))

(assert (=> b!1760949 d!537870))

(declare-fun bs!404093 () Bool)

(declare-fun d!538090 () Bool)

(assert (= bs!404093 (and d!538090 d!537896)))

(declare-fun lambda!70182 () Int)

(assert (=> bs!404093 (= lambda!70182 lambda!70165)))

(assert (=> d!538090 true))

(declare-fun lt!680862 () Bool)

(assert (=> d!538090 (= lt!680862 (rulesValidInductive!1166 thiss!24550 rules!3447))))

(assert (=> d!538090 (= lt!680862 (forall!4275 rules!3447 lambda!70182))))

(assert (=> d!538090 (= (rulesValid!1302 thiss!24550 rules!3447) lt!680862)))

(declare-fun bs!404094 () Bool)

(assert (= bs!404094 d!538090))

(assert (=> bs!404094 m!2176333))

(declare-fun m!2177643 () Bool)

(assert (=> bs!404094 m!2177643))

(assert (=> d!537772 d!538090))

(declare-fun d!538094 () Bool)

(declare-fun lt!680863 () Int)

(assert (=> d!538094 (>= lt!680863 0)))

(declare-fun e!1127258 () Int)

(assert (=> d!538094 (= lt!680863 e!1127258)))

(declare-fun c!287012 () Bool)

(assert (=> d!538094 (= c!287012 ((_ is Nil!19382) (_2!10897 (get!5897 lt!680657))))))

(assert (=> d!538094 (= (size!15395 (_2!10897 (get!5897 lt!680657))) lt!680863)))

(declare-fun b!1761454 () Bool)

(assert (=> b!1761454 (= e!1127258 0)))

(declare-fun b!1761455 () Bool)

(assert (=> b!1761455 (= e!1127258 (+ 1 (size!15395 (t!164035 (_2!10897 (get!5897 lt!680657))))))))

(assert (= (and d!538094 c!287012) b!1761454))

(assert (= (and d!538094 (not c!287012)) b!1761455))

(declare-fun m!2177645 () Bool)

(assert (=> b!1761455 m!2177645))

(assert (=> b!1760953 d!538094))

(assert (=> b!1760953 d!537870))

(assert (=> b!1760953 d!537866))

(declare-fun d!538096 () Bool)

(assert (=> d!538096 (= (inv!25178 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (<= (size!15395 (innerList!6507 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) 2147483647))))

(declare-fun bs!404095 () Bool)

(assert (= bs!404095 d!538096))

(declare-fun m!2177647 () Bool)

(assert (=> bs!404095 m!2177647))

(assert (=> b!1761035 d!538096))

(declare-fun d!538098 () Bool)

(assert (=> d!538098 (= (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))) (isBalanced!2014 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(declare-fun bs!404096 () Bool)

(assert (= bs!404096 d!538098))

(declare-fun m!2177649 () Bool)

(assert (=> bs!404096 m!2177649))

(assert (=> tb!106005 d!538098))

(declare-fun d!538100 () Bool)

(declare-fun res!792770 () Bool)

(declare-fun e!1127264 () Bool)

(assert (=> d!538100 (=> (not res!792770) (not e!1127264))))

(assert (=> d!538100 (= res!792770 (= (csize!13124 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) (+ (size!15397 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (size!15397 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))))

(assert (=> d!538100 (= (inv!25175 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1127264)))

(declare-fun b!1761468 () Bool)

(declare-fun res!792771 () Bool)

(assert (=> b!1761468 (=> (not res!792771) (not e!1127264))))

(assert (=> b!1761468 (= res!792771 (and (not (= (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) Empty!6447)) (not (= (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) Empty!6447))))))

(declare-fun b!1761469 () Bool)

(declare-fun res!792772 () Bool)

(assert (=> b!1761469 (=> (not res!792772) (not e!1127264))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1006 (Conc!6447) Int)

(assert (=> b!1761469 (= res!792772 (= (cheight!6658 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) (+ (max!0 (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) 1)))))

(declare-fun b!1761470 () Bool)

(assert (=> b!1761470 (= e!1127264 (<= 0 (cheight!6658 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(assert (= (and d!538100 res!792770) b!1761468))

(assert (= (and b!1761468 res!792771) b!1761469))

(assert (= (and b!1761469 res!792772) b!1761470))

(declare-fun m!2177657 () Bool)

(assert (=> d!538100 m!2177657))

(declare-fun m!2177659 () Bool)

(assert (=> d!538100 m!2177659))

(declare-fun m!2177661 () Bool)

(assert (=> b!1761469 m!2177661))

(declare-fun m!2177663 () Bool)

(assert (=> b!1761469 m!2177663))

(assert (=> b!1761469 m!2177661))

(assert (=> b!1761469 m!2177663))

(declare-fun m!2177665 () Bool)

(assert (=> b!1761469 m!2177665))

(assert (=> b!1760981 d!538100))

(declare-fun d!538104 () Bool)

(assert (=> d!538104 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 (_1!10901 lt!680656))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (_1!10901 lt!680656))))))

(declare-fun b_lambda!57029 () Bool)

(assert (=> (not b_lambda!57029) (not d!538104)))

(declare-fun t!164179 () Bool)

(declare-fun tb!106137 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164179) tb!106137))

(declare-fun result!127696 () Bool)

(assert (=> tb!106137 (= result!127696 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (_1!10901 lt!680656)))))))

(declare-fun m!2177667 () Bool)

(assert (=> tb!106137 m!2177667))

(assert (=> d!538104 t!164179))

(declare-fun b_and!132949 () Bool)

(assert (= b_and!132933 (and (=> t!164179 result!127696) b_and!132949)))

(declare-fun tb!106139 () Bool)

(declare-fun t!164181 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164181) tb!106139))

(declare-fun result!127698 () Bool)

(assert (= result!127698 result!127696))

(assert (=> d!538104 t!164181))

(declare-fun b_and!132951 () Bool)

(assert (= b_and!132935 (and (=> t!164181 result!127698) b_and!132951)))

(declare-fun tb!106141 () Bool)

(declare-fun t!164183 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164183) tb!106141))

(declare-fun result!127700 () Bool)

(assert (= result!127700 result!127696))

(assert (=> d!538104 t!164183))

(declare-fun b_and!132953 () Bool)

(assert (= b_and!132937 (and (=> t!164183 result!127700) b_and!132953)))

(declare-fun tb!106143 () Bool)

(declare-fun t!164185 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164185) tb!106143))

(declare-fun result!127702 () Bool)

(assert (= result!127702 result!127696))

(assert (=> d!538104 t!164185))

(declare-fun b_and!132955 () Bool)

(assert (= b_and!132939 (and (=> t!164185 result!127702) b_and!132955)))

(assert (=> d!538104 m!2176905))

(declare-fun m!2177669 () Bool)

(assert (=> d!538104 m!2177669))

(assert (=> b!1760946 d!538104))

(declare-fun b!1761548 () Bool)

(declare-fun e!1127316 () tuple2!18998)

(assert (=> b!1761548 (= e!1127316 (tuple2!18999 Nil!19382 lt!680363))))

(declare-fun b!1761549 () Bool)

(declare-fun e!1127311 () tuple2!18998)

(assert (=> b!1761549 (= e!1127311 e!1127316)))

(declare-fun lt!680958 () tuple2!18998)

(declare-fun call!110719 () tuple2!18998)

(assert (=> b!1761549 (= lt!680958 call!110719)))

(declare-fun c!287047 () Bool)

(assert (=> b!1761549 (= c!287047 (isEmpty!12227 (_1!10901 lt!680958)))))

(declare-fun b!1761550 () Bool)

(assert (=> b!1761550 (= e!1127311 call!110719)))

(declare-fun lt!680949 () List!19452)

(declare-fun bm!110713 () Bool)

(declare-fun call!110725 () List!19452)

(declare-fun call!110721 () Regex!4791)

(assert (=> bm!110713 (= call!110719 (findLongestMatchInner!439 call!110721 lt!680949 (+ (size!15395 Nil!19382) 1) call!110725 lt!680363 (size!15395 lt!680363)))))

(declare-fun bm!110714 () Bool)

(declare-fun call!110722 () C!9756)

(assert (=> bm!110714 (= call!110721 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) call!110722))))

(declare-fun b!1761551 () Bool)

(declare-fun e!1127310 () Unit!33555)

(declare-fun Unit!33570 () Unit!33555)

(assert (=> b!1761551 (= e!1127310 Unit!33570)))

(declare-fun b!1761552 () Bool)

(declare-fun e!1127312 () tuple2!18998)

(declare-fun e!1127309 () tuple2!18998)

(assert (=> b!1761552 (= e!1127312 e!1127309)))

(declare-fun c!287044 () Bool)

(assert (=> b!1761552 (= c!287044 (= (size!15395 Nil!19382) (size!15395 lt!680363)))))

(declare-fun bm!110715 () Bool)

(declare-fun call!110718 () Unit!33555)

(declare-fun lemmaIsPrefixSameLengthThenSameList!243 (List!19452 List!19452 List!19452) Unit!33555)

(assert (=> bm!110715 (= call!110718 (lemmaIsPrefixSameLengthThenSameList!243 lt!680363 Nil!19382 lt!680363))))

(declare-fun b!1761553 () Bool)

(declare-fun e!1127314 () Bool)

(declare-fun e!1127313 () Bool)

(assert (=> b!1761553 (= e!1127314 e!1127313)))

(declare-fun res!792794 () Bool)

(assert (=> b!1761553 (=> res!792794 e!1127313)))

(declare-fun lt!680947 () tuple2!18998)

(assert (=> b!1761553 (= res!792794 (isEmpty!12227 (_1!10901 lt!680947)))))

(declare-fun b!1761554 () Bool)

(declare-fun e!1127315 () tuple2!18998)

(assert (=> b!1761554 (= e!1127315 (tuple2!18999 Nil!19382 lt!680363))))

(declare-fun b!1761555 () Bool)

(assert (=> b!1761555 (= e!1127313 (>= (size!15395 (_1!10901 lt!680947)) (size!15395 Nil!19382)))))

(declare-fun d!538106 () Bool)

(assert (=> d!538106 e!1127314))

(declare-fun res!792795 () Bool)

(assert (=> d!538106 (=> (not res!792795) (not e!1127314))))

(assert (=> d!538106 (= res!792795 (= (++!5287 (_1!10901 lt!680947) (_2!10901 lt!680947)) lt!680363))))

(assert (=> d!538106 (= lt!680947 e!1127312)))

(declare-fun c!287048 () Bool)

(assert (=> d!538106 (= c!287048 (lostCause!571 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun lt!680940 () Unit!33555)

(declare-fun Unit!33571 () Unit!33555)

(assert (=> d!538106 (= lt!680940 Unit!33571)))

(assert (=> d!538106 (= (getSuffix!870 lt!680363 Nil!19382) lt!680363)))

(declare-fun lt!680943 () Unit!33555)

(declare-fun lt!680953 () Unit!33555)

(assert (=> d!538106 (= lt!680943 lt!680953)))

(declare-fun lt!680944 () List!19452)

(assert (=> d!538106 (= lt!680363 lt!680944)))

(assert (=> d!538106 (= lt!680953 (lemmaSamePrefixThenSameSuffix!814 Nil!19382 lt!680363 Nil!19382 lt!680944 lt!680363))))

(assert (=> d!538106 (= lt!680944 (getSuffix!870 lt!680363 Nil!19382))))

(declare-fun lt!680959 () Unit!33555)

(declare-fun lt!680963 () Unit!33555)

(assert (=> d!538106 (= lt!680959 lt!680963)))

(assert (=> d!538106 (isPrefix!1703 Nil!19382 (++!5287 Nil!19382 lt!680363))))

(assert (=> d!538106 (= lt!680963 (lemmaConcatTwoListThenFirstIsPrefix!1212 Nil!19382 lt!680363))))

(assert (=> d!538106 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538106 (= (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)) lt!680947)))

(declare-fun b!1761556 () Bool)

(assert (=> b!1761556 (= e!1127316 lt!680958)))

(declare-fun b!1761557 () Bool)

(declare-fun c!287046 () Bool)

(declare-fun call!110723 () Bool)

(assert (=> b!1761557 (= c!287046 call!110723)))

(declare-fun lt!680955 () Unit!33555)

(declare-fun lt!680945 () Unit!33555)

(assert (=> b!1761557 (= lt!680955 lt!680945)))

(assert (=> b!1761557 (= lt!680363 Nil!19382)))

(assert (=> b!1761557 (= lt!680945 call!110718)))

(declare-fun lt!680962 () Unit!33555)

(declare-fun lt!680954 () Unit!33555)

(assert (=> b!1761557 (= lt!680962 lt!680954)))

(declare-fun call!110724 () Bool)

(assert (=> b!1761557 call!110724))

(declare-fun call!110720 () Unit!33555)

(assert (=> b!1761557 (= lt!680954 call!110720)))

(assert (=> b!1761557 (= e!1127309 e!1127315)))

(declare-fun bm!110716 () Bool)

(assert (=> bm!110716 (= call!110723 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761558 () Bool)

(declare-fun Unit!33572 () Unit!33555)

(assert (=> b!1761558 (= e!1127310 Unit!33572)))

(declare-fun lt!680942 () Unit!33555)

(assert (=> b!1761558 (= lt!680942 call!110720)))

(assert (=> b!1761558 call!110724))

(declare-fun lt!680941 () Unit!33555)

(assert (=> b!1761558 (= lt!680941 lt!680942)))

(declare-fun lt!680956 () Unit!33555)

(assert (=> b!1761558 (= lt!680956 call!110718)))

(assert (=> b!1761558 (= lt!680363 Nil!19382)))

(declare-fun lt!680964 () Unit!33555)

(assert (=> b!1761558 (= lt!680964 lt!680956)))

(assert (=> b!1761558 false))

(declare-fun b!1761559 () Bool)

(assert (=> b!1761559 (= e!1127315 (tuple2!18999 Nil!19382 Nil!19382))))

(declare-fun bm!110717 () Bool)

(assert (=> bm!110717 (= call!110720 (lemmaIsPrefixRefl!1128 lt!680363 lt!680363))))

(declare-fun bm!110718 () Bool)

(assert (=> bm!110718 (= call!110722 (head!4076 lt!680363))))

(declare-fun bm!110719 () Bool)

(assert (=> bm!110719 (= call!110725 (tail!2633 lt!680363))))

(declare-fun b!1761560 () Bool)

(assert (=> b!1761560 (= e!1127312 (tuple2!18999 Nil!19382 lt!680363))))

(declare-fun bm!110720 () Bool)

(assert (=> bm!110720 (= call!110724 (isPrefix!1703 lt!680363 lt!680363))))

(declare-fun b!1761561 () Bool)

(declare-fun c!287045 () Bool)

(assert (=> b!1761561 (= c!287045 call!110723)))

(declare-fun lt!680938 () Unit!33555)

(declare-fun lt!680965 () Unit!33555)

(assert (=> b!1761561 (= lt!680938 lt!680965)))

(declare-fun lt!680939 () C!9756)

(declare-fun lt!680951 () List!19452)

(assert (=> b!1761561 (= (++!5287 (++!5287 Nil!19382 (Cons!19382 lt!680939 Nil!19382)) lt!680951) lt!680363)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!459 (List!19452 C!9756 List!19452 List!19452) Unit!33555)

(assert (=> b!1761561 (= lt!680965 (lemmaMoveElementToOtherListKeepsConcatEq!459 Nil!19382 lt!680939 lt!680951 lt!680363))))

(assert (=> b!1761561 (= lt!680951 (tail!2633 lt!680363))))

(assert (=> b!1761561 (= lt!680939 (head!4076 lt!680363))))

(declare-fun lt!680952 () Unit!33555)

(declare-fun lt!680960 () Unit!33555)

(assert (=> b!1761561 (= lt!680952 lt!680960)))

(assert (=> b!1761561 (isPrefix!1703 (++!5287 Nil!19382 (Cons!19382 (head!4076 (getSuffix!870 lt!680363 Nil!19382)) Nil!19382)) lt!680363)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!259 (List!19452 List!19452) Unit!33555)

(assert (=> b!1761561 (= lt!680960 (lemmaAddHeadSuffixToPrefixStillPrefix!259 Nil!19382 lt!680363))))

(declare-fun lt!680948 () Unit!33555)

(declare-fun lt!680957 () Unit!33555)

(assert (=> b!1761561 (= lt!680948 lt!680957)))

(assert (=> b!1761561 (= lt!680957 (lemmaAddHeadSuffixToPrefixStillPrefix!259 Nil!19382 lt!680363))))

(assert (=> b!1761561 (= lt!680949 (++!5287 Nil!19382 (Cons!19382 (head!4076 lt!680363) Nil!19382)))))

(declare-fun lt!680950 () Unit!33555)

(assert (=> b!1761561 (= lt!680950 e!1127310)))

(declare-fun c!287049 () Bool)

(assert (=> b!1761561 (= c!287049 (= (size!15395 Nil!19382) (size!15395 lt!680363)))))

(declare-fun lt!680946 () Unit!33555)

(declare-fun lt!680961 () Unit!33555)

(assert (=> b!1761561 (= lt!680946 lt!680961)))

(assert (=> b!1761561 (<= (size!15395 Nil!19382) (size!15395 lt!680363))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!134 (List!19452 List!19452) Unit!33555)

(assert (=> b!1761561 (= lt!680961 (lemmaIsPrefixThenSmallerEqSize!134 Nil!19382 lt!680363))))

(assert (=> b!1761561 (= e!1127309 e!1127311)))

(assert (= (and d!538106 c!287048) b!1761560))

(assert (= (and d!538106 (not c!287048)) b!1761552))

(assert (= (and b!1761552 c!287044) b!1761557))

(assert (= (and b!1761552 (not c!287044)) b!1761561))

(assert (= (and b!1761557 c!287046) b!1761559))

(assert (= (and b!1761557 (not c!287046)) b!1761554))

(assert (= (and b!1761561 c!287049) b!1761558))

(assert (= (and b!1761561 (not c!287049)) b!1761551))

(assert (= (and b!1761561 c!287045) b!1761549))

(assert (= (and b!1761561 (not c!287045)) b!1761550))

(assert (= (and b!1761549 c!287047) b!1761548))

(assert (= (and b!1761549 (not c!287047)) b!1761556))

(assert (= (or b!1761549 b!1761550) bm!110719))

(assert (= (or b!1761549 b!1761550) bm!110718))

(assert (= (or b!1761549 b!1761550) bm!110714))

(assert (= (or b!1761549 b!1761550) bm!110713))

(assert (= (or b!1761557 b!1761561) bm!110716))

(assert (= (or b!1761557 b!1761558) bm!110715))

(assert (= (or b!1761557 b!1761558) bm!110720))

(assert (= (or b!1761557 b!1761558) bm!110717))

(assert (= (and d!538106 res!792795) b!1761553))

(assert (= (and b!1761553 (not res!792794)) b!1761555))

(declare-fun m!2177747 () Bool)

(assert (=> b!1761553 m!2177747))

(declare-fun m!2177749 () Bool)

(assert (=> b!1761555 m!2177749))

(assert (=> b!1761555 m!2176917))

(assert (=> bm!110713 m!2176421))

(declare-fun m!2177751 () Bool)

(assert (=> bm!110713 m!2177751))

(assert (=> bm!110716 m!2176935))

(declare-fun m!2177753 () Bool)

(assert (=> b!1761549 m!2177753))

(declare-fun m!2177755 () Bool)

(assert (=> d!538106 m!2177755))

(assert (=> d!538106 m!2176937))

(declare-fun m!2177757 () Bool)

(assert (=> d!538106 m!2177757))

(declare-fun m!2177759 () Bool)

(assert (=> d!538106 m!2177759))

(declare-fun m!2177761 () Bool)

(assert (=> d!538106 m!2177761))

(declare-fun m!2177763 () Bool)

(assert (=> d!538106 m!2177763))

(assert (=> d!538106 m!2177761))

(declare-fun m!2177765 () Bool)

(assert (=> d!538106 m!2177765))

(declare-fun m!2177767 () Bool)

(assert (=> d!538106 m!2177767))

(assert (=> bm!110718 m!2176431))

(declare-fun m!2177769 () Bool)

(assert (=> bm!110715 m!2177769))

(assert (=> bm!110719 m!2176425))

(declare-fun m!2177771 () Bool)

(assert (=> bm!110714 m!2177771))

(declare-fun m!2177773 () Bool)

(assert (=> b!1761561 m!2177773))

(declare-fun m!2177775 () Bool)

(assert (=> b!1761561 m!2177775))

(assert (=> b!1761561 m!2177773))

(declare-fun m!2177777 () Bool)

(assert (=> b!1761561 m!2177777))

(assert (=> b!1761561 m!2176431))

(assert (=> b!1761561 m!2176425))

(declare-fun m!2177779 () Bool)

(assert (=> b!1761561 m!2177779))

(declare-fun m!2177781 () Bool)

(assert (=> b!1761561 m!2177781))

(assert (=> b!1761561 m!2176421))

(assert (=> b!1761561 m!2177775))

(declare-fun m!2177783 () Bool)

(assert (=> b!1761561 m!2177783))

(assert (=> b!1761561 m!2177757))

(assert (=> b!1761561 m!2177757))

(declare-fun m!2177785 () Bool)

(assert (=> b!1761561 m!2177785))

(declare-fun m!2177787 () Bool)

(assert (=> b!1761561 m!2177787))

(assert (=> b!1761561 m!2176917))

(declare-fun m!2177789 () Bool)

(assert (=> b!1761561 m!2177789))

(assert (=> bm!110720 m!2176489))

(assert (=> bm!110717 m!2176491))

(assert (=> b!1760946 d!538106))

(declare-fun d!538116 () Bool)

(declare-fun lt!680966 () Int)

(assert (=> d!538116 (= lt!680966 (size!15395 (list!7861 (seqFromList!2432 (_1!10901 lt!680656)))))))

(assert (=> d!538116 (= lt!680966 (size!15397 (c!286775 (seqFromList!2432 (_1!10901 lt!680656)))))))

(assert (=> d!538116 (= (size!15394 (seqFromList!2432 (_1!10901 lt!680656))) lt!680966)))

(declare-fun bs!404099 () Bool)

(assert (= bs!404099 d!538116))

(assert (=> bs!404099 m!2176905))

(declare-fun m!2177791 () Bool)

(assert (=> bs!404099 m!2177791))

(assert (=> bs!404099 m!2177791))

(declare-fun m!2177793 () Bool)

(assert (=> bs!404099 m!2177793))

(declare-fun m!2177795 () Bool)

(assert (=> bs!404099 m!2177795))

(assert (=> b!1760946 d!538116))

(declare-fun d!538118 () Bool)

(declare-fun e!1127319 () Bool)

(assert (=> d!538118 e!1127319))

(declare-fun res!792798 () Bool)

(assert (=> d!538118 (=> res!792798 e!1127319)))

(assert (=> d!538118 (= res!792798 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun lt!680969 () Unit!33555)

(declare-fun choose!10910 (Regex!4791 List!19452) Unit!33555)

(assert (=> d!538118 (= lt!680969 (choose!10910 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680363))))

(assert (=> d!538118 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538118 (= (longestMatchIsAcceptedByMatchOrIsEmpty!423 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680363) lt!680969)))

(declare-fun b!1761564 () Bool)

(assert (=> b!1761564 (= e!1127319 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(assert (= (and d!538118 (not res!792798)) b!1761564))

(assert (=> d!538118 m!2176917))

(assert (=> d!538118 m!2176421))

(assert (=> d!538118 m!2176917))

(assert (=> d!538118 m!2176421))

(assert (=> d!538118 m!2176919))

(assert (=> d!538118 m!2176937))

(assert (=> d!538118 m!2176911))

(declare-fun m!2177797 () Bool)

(assert (=> d!538118 m!2177797))

(assert (=> b!1761564 m!2176917))

(assert (=> b!1761564 m!2176421))

(assert (=> b!1761564 m!2176917))

(assert (=> b!1761564 m!2176421))

(assert (=> b!1761564 m!2176919))

(assert (=> b!1761564 m!2176921))

(assert (=> b!1760946 d!538118))

(declare-fun bs!404100 () Bool)

(declare-fun d!538120 () Bool)

(assert (= bs!404100 (and d!538120 b!1760284)))

(declare-fun lambda!70192 () Int)

(assert (=> bs!404100 (= lambda!70192 lambda!70132)))

(declare-fun bs!404101 () Bool)

(assert (= bs!404101 (and d!538120 d!537762)))

(assert (=> bs!404101 (= lambda!70192 lambda!70147)))

(declare-fun bs!404102 () Bool)

(assert (= bs!404102 (and d!538120 d!537850)))

(assert (=> bs!404102 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toChars!4841 (transformation!3463 (h!24784 rules!3447)))) (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (h!24784 rules!3447))))) (= lambda!70192 lambda!70162))))

(declare-fun b!1761575 () Bool)

(declare-fun e!1127326 () Bool)

(assert (=> b!1761575 (= e!1127326 true)))

(assert (=> d!538120 e!1127326))

(assert (= d!538120 b!1761575))

(assert (=> b!1761575 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70192))))

(assert (=> b!1761575 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70192))))

(assert (=> d!538120 (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (_1!10901 lt!680656))))) (list!7861 (seqFromList!2432 (_1!10901 lt!680656))))))

(declare-fun lt!680972 () Unit!33555)

(assert (=> d!538120 (= lt!680972 (ForallOf!314 lambda!70192 (seqFromList!2432 (_1!10901 lt!680656))))))

(assert (=> d!538120 (= (lemmaSemiInverse!601 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 (_1!10901 lt!680656))) lt!680972)))

(declare-fun b_lambda!57033 () Bool)

(assert (=> (not b_lambda!57033) (not d!538120)))

(declare-fun tb!106145 () Bool)

(declare-fun t!164187 () Bool)

(assert (=> (and b!1760292 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164187) tb!106145))

(declare-fun b!1761576 () Bool)

(declare-fun tp!500273 () Bool)

(declare-fun e!1127327 () Bool)

(assert (=> b!1761576 (= e!1127327 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (_1!10901 lt!680656)))))) tp!500273))))

(declare-fun result!127704 () Bool)

(assert (=> tb!106145 (= result!127704 (and (inv!25172 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (_1!10901 lt!680656))))) e!1127327))))

(assert (= tb!106145 b!1761576))

(declare-fun m!2177799 () Bool)

(assert (=> b!1761576 m!2177799))

(declare-fun m!2177801 () Bool)

(assert (=> tb!106145 m!2177801))

(assert (=> d!538120 t!164187))

(declare-fun b_and!132957 () Bool)

(assert (= b_and!132941 (and (=> t!164187 result!127704) b_and!132957)))

(declare-fun tb!106147 () Bool)

(declare-fun t!164189 () Bool)

(assert (=> (and b!1760298 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164189) tb!106147))

(declare-fun result!127706 () Bool)

(assert (= result!127706 result!127704))

(assert (=> d!538120 t!164189))

(declare-fun b_and!132959 () Bool)

(assert (= b_and!132943 (and (=> t!164189 result!127706) b_and!132959)))

(declare-fun tb!106149 () Bool)

(declare-fun t!164191 () Bool)

(assert (=> (and b!1760302 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164191) tb!106149))

(declare-fun result!127708 () Bool)

(assert (= result!127708 result!127704))

(assert (=> d!538120 t!164191))

(declare-fun b_and!132961 () Bool)

(assert (= b_and!132945 (and (=> t!164191 result!127708) b_and!132961)))

(declare-fun t!164193 () Bool)

(declare-fun tb!106151 () Bool)

(assert (=> (and b!1761017 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164193) tb!106151))

(declare-fun result!127710 () Bool)

(assert (= result!127710 result!127704))

(assert (=> d!538120 t!164193))

(declare-fun b_and!132963 () Bool)

(assert (= b_and!132947 (and (=> t!164193 result!127710) b_and!132963)))

(declare-fun b_lambda!57035 () Bool)

(assert (=> (not b_lambda!57035) (not d!538120)))

(assert (=> d!538120 t!164179))

(declare-fun b_and!132965 () Bool)

(assert (= b_and!132949 (and (=> t!164179 result!127696) b_and!132965)))

(assert (=> d!538120 t!164181))

(declare-fun b_and!132967 () Bool)

(assert (= b_and!132951 (and (=> t!164181 result!127698) b_and!132967)))

(assert (=> d!538120 t!164183))

(declare-fun b_and!132969 () Bool)

(assert (= b_and!132953 (and (=> t!164183 result!127700) b_and!132969)))

(assert (=> d!538120 t!164185))

(declare-fun b_and!132971 () Bool)

(assert (= b_and!132955 (and (=> t!164185 result!127702) b_and!132971)))

(assert (=> d!538120 m!2176905))

(assert (=> d!538120 m!2177669))

(declare-fun m!2177803 () Bool)

(assert (=> d!538120 m!2177803))

(declare-fun m!2177805 () Bool)

(assert (=> d!538120 m!2177805))

(assert (=> d!538120 m!2176905))

(declare-fun m!2177807 () Bool)

(assert (=> d!538120 m!2177807))

(assert (=> d!538120 m!2177669))

(assert (=> d!538120 m!2177803))

(assert (=> d!538120 m!2176905))

(assert (=> d!538120 m!2177791))

(assert (=> b!1760946 d!538120))

(declare-fun d!538122 () Bool)

(assert (=> d!538122 (= (seqFromList!2432 (_1!10901 lt!680656)) (fromListB!1110 (_1!10901 lt!680656)))))

(declare-fun bs!404103 () Bool)

(assert (= bs!404103 d!538122))

(declare-fun m!2177809 () Bool)

(assert (=> bs!404103 m!2177809))

(assert (=> b!1760946 d!538122))

(declare-fun d!538124 () Bool)

(declare-fun lt!680974 () Int)

(assert (=> d!538124 (>= lt!680974 0)))

(declare-fun e!1127331 () Int)

(assert (=> d!538124 (= lt!680974 e!1127331)))

(declare-fun c!287053 () Bool)

(assert (=> d!538124 (= c!287053 ((_ is Nil!19382) Nil!19382))))

(assert (=> d!538124 (= (size!15395 Nil!19382) lt!680974)))

(declare-fun b!1761582 () Bool)

(assert (=> b!1761582 (= e!1127331 0)))

(declare-fun b!1761583 () Bool)

(assert (=> b!1761583 (= e!1127331 (+ 1 (size!15395 (t!164035 Nil!19382))))))

(assert (= (and d!538124 c!287053) b!1761582))

(assert (= (and d!538124 (not c!287053)) b!1761583))

(declare-fun m!2177811 () Bool)

(assert (=> b!1761583 m!2177811))

(assert (=> b!1760946 d!538124))

(declare-fun d!538126 () Bool)

(assert (=> d!538126 (= (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))) ((_ is Nil!19382) (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(assert (=> b!1760946 d!538126))

(assert (=> b!1760946 d!537866))

(declare-fun d!538128 () Bool)

(declare-fun c!287054 () Bool)

(assert (=> d!538128 (= c!287054 ((_ is Node!6447) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun e!1127332 () Bool)

(assert (=> d!538128 (= (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) e!1127332)))

(declare-fun b!1761584 () Bool)

(assert (=> b!1761584 (= e!1127332 (inv!25175 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun b!1761585 () Bool)

(declare-fun e!1127333 () Bool)

(assert (=> b!1761585 (= e!1127332 e!1127333)))

(declare-fun res!792808 () Bool)

(assert (=> b!1761585 (= res!792808 (not ((_ is Leaf!9399) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))))

(assert (=> b!1761585 (=> res!792808 e!1127333)))

(declare-fun b!1761586 () Bool)

(assert (=> b!1761586 (= e!1127333 (inv!25176 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(assert (= (and d!538128 c!287054) b!1761584))

(assert (= (and d!538128 (not c!287054)) b!1761585))

(assert (= (and b!1761585 (not res!792808)) b!1761586))

(declare-fun m!2177831 () Bool)

(assert (=> b!1761584 m!2177831))

(declare-fun m!2177833 () Bool)

(assert (=> b!1761586 m!2177833))

(assert (=> b!1761026 d!538128))

(declare-fun d!538132 () Bool)

(declare-fun c!287055 () Bool)

(assert (=> d!538132 (= c!287055 ((_ is Node!6447) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun e!1127334 () Bool)

(assert (=> d!538132 (= (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) e!1127334)))

(declare-fun b!1761587 () Bool)

(assert (=> b!1761587 (= e!1127334 (inv!25175 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun b!1761588 () Bool)

(declare-fun e!1127335 () Bool)

(assert (=> b!1761588 (= e!1127334 e!1127335)))

(declare-fun res!792809 () Bool)

(assert (=> b!1761588 (= res!792809 (not ((_ is Leaf!9399) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))))

(assert (=> b!1761588 (=> res!792809 e!1127335)))

(declare-fun b!1761589 () Bool)

(assert (=> b!1761589 (= e!1127335 (inv!25176 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(assert (= (and d!538132 c!287055) b!1761587))

(assert (= (and d!538132 (not c!287055)) b!1761588))

(assert (= (and b!1761588 (not res!792809)) b!1761589))

(declare-fun m!2177837 () Bool)

(assert (=> b!1761587 m!2177837))

(declare-fun m!2177839 () Bool)

(assert (=> b!1761589 m!2177839))

(assert (=> b!1761026 d!538132))

(assert (=> b!1760571 d!537866))

(assert (=> b!1760571 d!537796))

(declare-fun b!1761590 () Bool)

(declare-fun e!1127338 () Bool)

(assert (=> b!1761590 (= e!1127338 (inv!16 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(declare-fun b!1761591 () Bool)

(declare-fun e!1127336 () Bool)

(assert (=> b!1761591 (= e!1127338 e!1127336)))

(declare-fun c!287056 () Bool)

(assert (=> b!1761591 (= c!287056 ((_ is IntegerValue!10660) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(declare-fun d!538136 () Bool)

(declare-fun c!287057 () Bool)

(assert (=> d!538136 (= c!287057 ((_ is IntegerValue!10659) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(assert (=> d!538136 (= (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))) e!1127338)))

(declare-fun b!1761592 () Bool)

(declare-fun e!1127337 () Bool)

(assert (=> b!1761592 (= e!1127337 (inv!15 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(declare-fun b!1761593 () Bool)

(assert (=> b!1761593 (= e!1127336 (inv!17 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348))))))

(declare-fun b!1761594 () Bool)

(declare-fun res!792810 () Bool)

(assert (=> b!1761594 (=> res!792810 e!1127337)))

(assert (=> b!1761594 (= res!792810 (not ((_ is IntegerValue!10661) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 lt!680348)))))))

(assert (=> b!1761594 (= e!1127336 e!1127337)))

(assert (= (and d!538136 c!287057) b!1761590))

(assert (= (and d!538136 (not c!287057)) b!1761591))

(assert (= (and b!1761591 c!287056) b!1761593))

(assert (= (and b!1761591 (not c!287056)) b!1761594))

(assert (= (and b!1761594 (not res!792810)) b!1761592))

(declare-fun m!2177841 () Bool)

(assert (=> b!1761590 m!2177841))

(declare-fun m!2177843 () Bool)

(assert (=> b!1761592 m!2177843))

(declare-fun m!2177845 () Bool)

(assert (=> b!1761593 m!2177845))

(assert (=> tb!106041 d!538136))

(declare-fun d!538140 () Bool)

(declare-fun nullableFct!333 (Regex!4791) Bool)

(assert (=> d!538140 (= (nullable!1461 (regex!3463 rule!422)) (nullableFct!333 (regex!3463 rule!422)))))

(declare-fun bs!404106 () Bool)

(assert (= bs!404106 d!538140))

(declare-fun m!2177861 () Bool)

(assert (=> bs!404106 m!2177861))

(assert (=> b!1760865 d!538140))

(declare-fun d!538148 () Bool)

(assert (=> d!538148 (= (isEmpty!12227 (tail!2633 lt!680348)) ((_ is Nil!19382) (tail!2633 lt!680348)))))

(assert (=> b!1760960 d!538148))

(assert (=> b!1760960 d!537918))

(declare-fun d!538152 () Bool)

(assert (=> d!538152 (= (head!4076 lt!680342) (h!24783 lt!680342))))

(assert (=> b!1760560 d!538152))

(declare-fun d!538154 () Bool)

(assert (=> d!538154 (= (head!4076 lt!680363) (h!24783 lt!680363))))

(assert (=> b!1760560 d!538154))

(declare-fun bs!404110 () Bool)

(declare-fun d!538156 () Bool)

(assert (= bs!404110 (and d!538156 d!537814)))

(declare-fun lambda!70195 () Int)

(assert (=> bs!404110 (= (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= lambda!70195 lambda!70150))))

(assert (=> d!538156 true))

(assert (=> d!538156 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 rule!422))) (dynLambda!9335 order!12291 lambda!70195))))

(declare-fun Forall2!561 (Int) Bool)

(assert (=> d!538156 (= (equivClasses!1317 (toChars!4841 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 rule!422))) (Forall2!561 lambda!70195))))

(declare-fun bs!404111 () Bool)

(assert (= bs!404111 d!538156))

(declare-fun m!2177869 () Bool)

(assert (=> bs!404111 m!2177869))

(assert (=> b!1760808 d!538156))

(declare-fun b!1761609 () Bool)

(declare-fun res!792825 () Bool)

(declare-fun e!1127348 () Bool)

(assert (=> b!1761609 (=> (not res!792825) (not e!1127348))))

(declare-fun call!110726 () Bool)

(assert (=> b!1761609 (= res!792825 (not call!110726))))

(declare-fun b!1761610 () Bool)

(declare-fun res!792820 () Bool)

(declare-fun e!1127354 () Bool)

(assert (=> b!1761610 (=> res!792820 e!1127354)))

(assert (=> b!1761610 (= res!792820 e!1127348)))

(declare-fun res!792821 () Bool)

(assert (=> b!1761610 (=> (not res!792821) (not e!1127348))))

(declare-fun lt!680983 () Bool)

(assert (=> b!1761610 (= res!792821 lt!680983)))

(declare-fun b!1761611 () Bool)

(declare-fun res!792823 () Bool)

(assert (=> b!1761611 (=> (not res!792823) (not e!1127348))))

(assert (=> b!1761611 (= res!792823 (isEmpty!12227 (tail!2633 (tail!2633 lt!680348))))))

(declare-fun b!1761613 () Bool)

(declare-fun e!1127353 () Bool)

(assert (=> b!1761613 (= e!1127353 (nullable!1461 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348))))))

(declare-fun b!1761614 () Bool)

(declare-fun res!792824 () Bool)

(assert (=> b!1761614 (=> res!792824 e!1127354)))

(assert (=> b!1761614 (= res!792824 (not ((_ is ElementMatch!4791) (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)))))))

(declare-fun e!1127350 () Bool)

(assert (=> b!1761614 (= e!1127350 e!1127354)))

(declare-fun b!1761615 () Bool)

(declare-fun res!792819 () Bool)

(declare-fun e!1127349 () Bool)

(assert (=> b!1761615 (=> res!792819 e!1127349)))

(assert (=> b!1761615 (= res!792819 (not (isEmpty!12227 (tail!2633 (tail!2633 lt!680348)))))))

(declare-fun bm!110721 () Bool)

(assert (=> bm!110721 (= call!110726 (isEmpty!12227 (tail!2633 lt!680348)))))

(declare-fun b!1761616 () Bool)

(declare-fun e!1127351 () Bool)

(assert (=> b!1761616 (= e!1127351 e!1127349)))

(declare-fun res!792826 () Bool)

(assert (=> b!1761616 (=> res!792826 e!1127349)))

(assert (=> b!1761616 (= res!792826 call!110726)))

(declare-fun b!1761617 () Bool)

(assert (=> b!1761617 (= e!1127349 (not (= (head!4076 (tail!2633 lt!680348)) (c!286774 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348))))))))

(declare-fun b!1761618 () Bool)

(assert (=> b!1761618 (= e!1127353 (matchR!2264 (derivativeStep!1230 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)) (head!4076 (tail!2633 lt!680348))) (tail!2633 (tail!2633 lt!680348))))))

(declare-fun b!1761619 () Bool)

(declare-fun e!1127352 () Bool)

(assert (=> b!1761619 (= e!1127352 (= lt!680983 call!110726))))

(declare-fun b!1761620 () Bool)

(assert (=> b!1761620 (= e!1127352 e!1127350)))

(declare-fun c!287060 () Bool)

(assert (=> b!1761620 (= c!287060 ((_ is EmptyLang!4791) (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348))))))

(declare-fun b!1761621 () Bool)

(assert (=> b!1761621 (= e!1127354 e!1127351)))

(declare-fun res!792822 () Bool)

(assert (=> b!1761621 (=> (not res!792822) (not e!1127351))))

(assert (=> b!1761621 (= res!792822 (not lt!680983))))

(declare-fun b!1761622 () Bool)

(assert (=> b!1761622 (= e!1127348 (= (head!4076 (tail!2633 lt!680348)) (c!286774 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)))))))

(declare-fun d!538164 () Bool)

(assert (=> d!538164 e!1127352))

(declare-fun c!287062 () Bool)

(assert (=> d!538164 (= c!287062 ((_ is EmptyExpr!4791) (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348))))))

(assert (=> d!538164 (= lt!680983 e!1127353)))

(declare-fun c!287061 () Bool)

(assert (=> d!538164 (= c!287061 (isEmpty!12227 (tail!2633 lt!680348)))))

(assert (=> d!538164 (validRegex!1935 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)))))

(assert (=> d!538164 (= (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)) (tail!2633 lt!680348)) lt!680983)))

(declare-fun b!1761612 () Bool)

(assert (=> b!1761612 (= e!1127350 (not lt!680983))))

(assert (= (and d!538164 c!287061) b!1761613))

(assert (= (and d!538164 (not c!287061)) b!1761618))

(assert (= (and d!538164 c!287062) b!1761619))

(assert (= (and d!538164 (not c!287062)) b!1761620))

(assert (= (and b!1761620 c!287060) b!1761612))

(assert (= (and b!1761620 (not c!287060)) b!1761614))

(assert (= (and b!1761614 (not res!792824)) b!1761610))

(assert (= (and b!1761610 res!792821) b!1761609))

(assert (= (and b!1761609 res!792825) b!1761611))

(assert (= (and b!1761611 res!792823) b!1761622))

(assert (= (and b!1761610 (not res!792820)) b!1761621))

(assert (= (and b!1761621 res!792822) b!1761616))

(assert (= (and b!1761616 (not res!792826)) b!1761615))

(assert (= (and b!1761615 (not res!792819)) b!1761617))

(assert (= (or b!1761619 b!1761609 b!1761616) bm!110721))

(assert (=> bm!110721 m!2176411))

(assert (=> bm!110721 m!2176933))

(assert (=> b!1761615 m!2176411))

(assert (=> b!1761615 m!2177163))

(assert (=> b!1761615 m!2177163))

(declare-fun m!2177893 () Bool)

(assert (=> b!1761615 m!2177893))

(assert (=> b!1761613 m!2176939))

(declare-fun m!2177895 () Bool)

(assert (=> b!1761613 m!2177895))

(assert (=> d!538164 m!2176411))

(assert (=> d!538164 m!2176933))

(assert (=> d!538164 m!2176939))

(declare-fun m!2177897 () Bool)

(assert (=> d!538164 m!2177897))

(assert (=> b!1761611 m!2176411))

(assert (=> b!1761611 m!2177163))

(assert (=> b!1761611 m!2177163))

(assert (=> b!1761611 m!2177893))

(assert (=> b!1761618 m!2176411))

(assert (=> b!1761618 m!2177169))

(assert (=> b!1761618 m!2176939))

(assert (=> b!1761618 m!2177169))

(declare-fun m!2177899 () Bool)

(assert (=> b!1761618 m!2177899))

(assert (=> b!1761618 m!2176411))

(assert (=> b!1761618 m!2177163))

(assert (=> b!1761618 m!2177899))

(assert (=> b!1761618 m!2177163))

(declare-fun m!2177901 () Bool)

(assert (=> b!1761618 m!2177901))

(assert (=> b!1761622 m!2176411))

(assert (=> b!1761622 m!2177169))

(assert (=> b!1761617 m!2176411))

(assert (=> b!1761617 m!2177169))

(assert (=> b!1760963 d!538164))

(declare-fun d!538172 () Bool)

(declare-fun lt!680992 () Regex!4791)

(assert (=> d!538172 (validRegex!1935 lt!680992)))

(declare-fun e!1127395 () Regex!4791)

(assert (=> d!538172 (= lt!680992 e!1127395)))

(declare-fun c!287085 () Bool)

(assert (=> d!538172 (= c!287085 (or ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))) ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> d!538172 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538172 (= (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 lt!680348)) lt!680992)))

(declare-fun e!1127397 () Regex!4791)

(declare-fun call!110745 () Regex!4791)

(declare-fun b!1761689 () Bool)

(declare-fun call!110743 () Regex!4791)

(assert (=> b!1761689 (= e!1127397 (Union!4791 (Concat!8345 call!110743 (regTwo!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362))))) call!110745))))

(declare-fun b!1761690 () Bool)

(declare-fun e!1127396 () Regex!4791)

(assert (=> b!1761690 (= e!1127396 (Concat!8345 call!110743 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761691 () Bool)

(declare-fun e!1127398 () Regex!4791)

(assert (=> b!1761691 (= e!1127398 e!1127396)))

(declare-fun c!287086 () Bool)

(assert (=> b!1761691 (= c!287086 ((_ is Star!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761692 () Bool)

(declare-fun c!287083 () Bool)

(assert (=> b!1761692 (= c!287083 ((_ is Union!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun e!1127399 () Regex!4791)

(assert (=> b!1761692 (= e!1127399 e!1127398)))

(declare-fun b!1761693 () Bool)

(assert (=> b!1761693 (= e!1127395 e!1127399)))

(declare-fun c!287082 () Bool)

(assert (=> b!1761693 (= c!287082 ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1761694 () Bool)

(assert (=> b!1761694 (= e!1127395 EmptyLang!4791)))

(declare-fun call!110742 () Regex!4791)

(declare-fun bm!110737 () Bool)

(declare-fun c!287084 () Bool)

(assert (=> bm!110737 (= call!110742 (derivativeStep!1230 (ite c!287083 (regOne!10095 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (ite c!287084 (regTwo!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (regOne!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))) (head!4076 lt!680348)))))

(declare-fun bm!110738 () Bool)

(declare-fun call!110744 () Regex!4791)

(assert (=> bm!110738 (= call!110743 call!110744)))

(declare-fun b!1761695 () Bool)

(assert (=> b!1761695 (= c!287084 (nullable!1461 (regOne!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> b!1761695 (= e!1127396 e!1127397)))

(declare-fun b!1761696 () Bool)

(assert (=> b!1761696 (= e!1127399 (ite (= (head!4076 lt!680348) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362))))) EmptyExpr!4791 EmptyLang!4791))))

(declare-fun bm!110739 () Bool)

(assert (=> bm!110739 (= call!110744 (derivativeStep!1230 (ite c!287083 (regTwo!10095 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (ite c!287086 (reg!5120 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (regOne!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))) (head!4076 lt!680348)))))

(declare-fun bm!110740 () Bool)

(assert (=> bm!110740 (= call!110745 call!110742)))

(declare-fun b!1761697 () Bool)

(assert (=> b!1761697 (= e!1127398 (Union!4791 call!110742 call!110744))))

(declare-fun b!1761698 () Bool)

(assert (=> b!1761698 (= e!1127397 (Union!4791 (Concat!8345 call!110745 (regTwo!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362))))) EmptyLang!4791))))

(assert (= (and d!538172 c!287085) b!1761694))

(assert (= (and d!538172 (not c!287085)) b!1761693))

(assert (= (and b!1761693 c!287082) b!1761696))

(assert (= (and b!1761693 (not c!287082)) b!1761692))

(assert (= (and b!1761692 c!287083) b!1761697))

(assert (= (and b!1761692 (not c!287083)) b!1761691))

(assert (= (and b!1761691 c!287086) b!1761690))

(assert (= (and b!1761691 (not c!287086)) b!1761695))

(assert (= (and b!1761695 c!287084) b!1761689))

(assert (= (and b!1761695 (not c!287084)) b!1761698))

(assert (= (or b!1761689 b!1761698) bm!110740))

(assert (= (or b!1761690 b!1761689) bm!110738))

(assert (= (or b!1761697 bm!110738) bm!110739))

(assert (= (or b!1761697 bm!110740) bm!110737))

(declare-fun m!2177941 () Bool)

(assert (=> d!538172 m!2177941))

(assert (=> d!538172 m!2176937))

(assert (=> bm!110737 m!2176417))

(declare-fun m!2177943 () Bool)

(assert (=> bm!110737 m!2177943))

(declare-fun m!2177945 () Bool)

(assert (=> b!1761695 m!2177945))

(assert (=> bm!110739 m!2176417))

(declare-fun m!2177947 () Bool)

(assert (=> bm!110739 m!2177947))

(assert (=> b!1760963 d!538172))

(assert (=> b!1760963 d!537914))

(assert (=> b!1760963 d!537918))

(declare-fun b!1761699 () Bool)

(declare-fun res!792856 () Bool)

(declare-fun e!1127400 () Bool)

(assert (=> b!1761699 (=> (not res!792856) (not e!1127400))))

(declare-fun lt!680995 () Option!3949)

(assert (=> b!1761699 (= res!792856 (= (rule!5481 (_1!10897 (get!5897 lt!680995))) (h!24784 rules!3447)))))

(declare-fun b!1761700 () Bool)

(declare-fun e!1127402 () Option!3949)

(declare-fun lt!680994 () tuple2!18998)

(assert (=> b!1761700 (= e!1127402 (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (h!24784 rules!3447)) (seqFromList!2432 (_1!10901 lt!680994))) (h!24784 rules!3447) (size!15394 (seqFromList!2432 (_1!10901 lt!680994))) (_1!10901 lt!680994)) (_2!10901 lt!680994))))))

(declare-fun lt!680997 () Unit!33555)

(assert (=> b!1761700 (= lt!680997 (longestMatchIsAcceptedByMatchOrIsEmpty!423 (regex!3463 (h!24784 rules!3447)) lt!680363))))

(declare-fun res!792855 () Bool)

(assert (=> b!1761700 (= res!792855 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (h!24784 rules!3447)) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun e!1127403 () Bool)

(assert (=> b!1761700 (=> res!792855 e!1127403)))

(assert (=> b!1761700 e!1127403))

(declare-fun lt!680993 () Unit!33555)

(assert (=> b!1761700 (= lt!680993 lt!680997)))

(declare-fun lt!680996 () Unit!33555)

(assert (=> b!1761700 (= lt!680996 (lemmaSemiInverse!601 (transformation!3463 (h!24784 rules!3447)) (seqFromList!2432 (_1!10901 lt!680994))))))

(declare-fun b!1761701 () Bool)

(declare-fun res!792857 () Bool)

(assert (=> b!1761701 (=> (not res!792857) (not e!1127400))))

(assert (=> b!1761701 (= res!792857 (= (value!108368 (_1!10897 (get!5897 lt!680995))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680995)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680995)))))))))

(declare-fun d!538196 () Bool)

(declare-fun e!1127401 () Bool)

(assert (=> d!538196 e!1127401))

(declare-fun res!792858 () Bool)

(assert (=> d!538196 (=> res!792858 e!1127401)))

(assert (=> d!538196 (= res!792858 (isEmpty!12230 lt!680995))))

(assert (=> d!538196 (= lt!680995 e!1127402)))

(declare-fun c!287087 () Bool)

(assert (=> d!538196 (= c!287087 (isEmpty!12227 (_1!10901 lt!680994)))))

(assert (=> d!538196 (= lt!680994 (findLongestMatch!366 (regex!3463 (h!24784 rules!3447)) lt!680363))))

(assert (=> d!538196 (ruleValid!961 thiss!24550 (h!24784 rules!3447))))

(assert (=> d!538196 (= (maxPrefixOneRule!1015 thiss!24550 (h!24784 rules!3447) lt!680363) lt!680995)))

(declare-fun b!1761702 () Bool)

(assert (=> b!1761702 (= e!1127402 None!3948)))

(declare-fun b!1761703 () Bool)

(assert (=> b!1761703 (= e!1127401 e!1127400)))

(declare-fun res!792859 () Bool)

(assert (=> b!1761703 (=> (not res!792859) (not e!1127400))))

(assert (=> b!1761703 (= res!792859 (matchR!2264 (regex!3463 (h!24784 rules!3447)) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680995))))))))

(declare-fun b!1761704 () Bool)

(assert (=> b!1761704 (= e!1127400 (= (size!15393 (_1!10897 (get!5897 lt!680995))) (size!15395 (originalCharacters!4277 (_1!10897 (get!5897 lt!680995))))))))

(declare-fun b!1761705 () Bool)

(declare-fun res!792860 () Bool)

(assert (=> b!1761705 (=> (not res!792860) (not e!1127400))))

(assert (=> b!1761705 (= res!792860 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680995)))) (_2!10897 (get!5897 lt!680995))) lt!680363))))

(declare-fun b!1761706 () Bool)

(assert (=> b!1761706 (= e!1127403 (matchR!2264 (regex!3463 (h!24784 rules!3447)) (_1!10901 (findLongestMatchInner!439 (regex!3463 (h!24784 rules!3447)) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun b!1761707 () Bool)

(declare-fun res!792854 () Bool)

(assert (=> b!1761707 (=> (not res!792854) (not e!1127400))))

(assert (=> b!1761707 (= res!792854 (< (size!15395 (_2!10897 (get!5897 lt!680995))) (size!15395 lt!680363)))))

(assert (= (and d!538196 c!287087) b!1761702))

(assert (= (and d!538196 (not c!287087)) b!1761700))

(assert (= (and b!1761700 (not res!792855)) b!1761706))

(assert (= (and d!538196 (not res!792858)) b!1761703))

(assert (= (and b!1761703 res!792859) b!1761705))

(assert (= (and b!1761705 res!792860) b!1761707))

(assert (= (and b!1761707 res!792854) b!1761699))

(assert (= (and b!1761699 res!792856) b!1761701))

(assert (= (and b!1761701 res!792857) b!1761704))

(declare-fun m!2177955 () Bool)

(assert (=> b!1761699 m!2177955))

(assert (=> b!1761701 m!2177955))

(declare-fun m!2177957 () Bool)

(assert (=> b!1761701 m!2177957))

(assert (=> b!1761701 m!2177957))

(declare-fun m!2177959 () Bool)

(assert (=> b!1761701 m!2177959))

(assert (=> b!1761703 m!2177955))

(declare-fun m!2177961 () Bool)

(assert (=> b!1761703 m!2177961))

(assert (=> b!1761703 m!2177961))

(declare-fun m!2177963 () Bool)

(assert (=> b!1761703 m!2177963))

(assert (=> b!1761703 m!2177963))

(declare-fun m!2177971 () Bool)

(assert (=> b!1761703 m!2177971))

(assert (=> b!1761707 m!2177955))

(declare-fun m!2177973 () Bool)

(assert (=> b!1761707 m!2177973))

(assert (=> b!1761707 m!2176421))

(assert (=> b!1761704 m!2177955))

(declare-fun m!2177975 () Bool)

(assert (=> b!1761704 m!2177975))

(declare-fun m!2177977 () Bool)

(assert (=> d!538196 m!2177977))

(declare-fun m!2177979 () Bool)

(assert (=> d!538196 m!2177979))

(declare-fun m!2177983 () Bool)

(assert (=> d!538196 m!2177983))

(assert (=> d!538196 m!2177143))

(declare-fun m!2177985 () Bool)

(assert (=> b!1761700 m!2177985))

(declare-fun m!2177987 () Bool)

(assert (=> b!1761700 m!2177987))

(assert (=> b!1761700 m!2177985))

(declare-fun m!2177989 () Bool)

(assert (=> b!1761700 m!2177989))

(assert (=> b!1761700 m!2177985))

(assert (=> b!1761700 m!2176421))

(declare-fun m!2177993 () Bool)

(assert (=> b!1761700 m!2177993))

(assert (=> b!1761700 m!2177985))

(declare-fun m!2177997 () Bool)

(assert (=> b!1761700 m!2177997))

(declare-fun m!2177999 () Bool)

(assert (=> b!1761700 m!2177999))

(assert (=> b!1761700 m!2176917))

(assert (=> b!1761700 m!2176421))

(declare-fun m!2178003 () Bool)

(assert (=> b!1761700 m!2178003))

(assert (=> b!1761700 m!2176917))

(assert (=> b!1761706 m!2176917))

(assert (=> b!1761706 m!2176421))

(assert (=> b!1761706 m!2176917))

(assert (=> b!1761706 m!2176421))

(assert (=> b!1761706 m!2178003))

(declare-fun m!2178005 () Bool)

(assert (=> b!1761706 m!2178005))

(assert (=> b!1761705 m!2177955))

(assert (=> b!1761705 m!2177961))

(assert (=> b!1761705 m!2177961))

(assert (=> b!1761705 m!2177963))

(assert (=> b!1761705 m!2177963))

(declare-fun m!2178007 () Bool)

(assert (=> b!1761705 m!2178007))

(assert (=> bm!110634 d!538196))

(declare-fun d!538202 () Bool)

(declare-fun lt!681000 () Int)

(assert (=> d!538202 (>= lt!681000 0)))

(declare-fun e!1127423 () Int)

(assert (=> d!538202 (= lt!681000 e!1127423)))

(declare-fun c!287098 () Bool)

(assert (=> d!538202 (= c!287098 ((_ is Nil!19382) lt!680617))))

(assert (=> d!538202 (= (size!15395 lt!680617) lt!681000)))

(declare-fun b!1761741 () Bool)

(assert (=> b!1761741 (= e!1127423 0)))

(declare-fun b!1761742 () Bool)

(assert (=> b!1761742 (= e!1127423 (+ 1 (size!15395 (t!164035 lt!680617))))))

(assert (= (and d!538202 c!287098) b!1761741))

(assert (= (and d!538202 (not c!287098)) b!1761742))

(declare-fun m!2178009 () Bool)

(assert (=> b!1761742 m!2178009))

(assert (=> b!1760803 d!538202))

(declare-fun d!538204 () Bool)

(declare-fun lt!681001 () Int)

(assert (=> d!538204 (>= lt!681001 0)))

(declare-fun e!1127424 () Int)

(assert (=> d!538204 (= lt!681001 e!1127424)))

(declare-fun c!287099 () Bool)

(assert (=> d!538204 (= c!287099 ((_ is Nil!19382) lt!680342))))

(assert (=> d!538204 (= (size!15395 lt!680342) lt!681001)))

(declare-fun b!1761743 () Bool)

(assert (=> b!1761743 (= e!1127424 0)))

(declare-fun b!1761744 () Bool)

(assert (=> b!1761744 (= e!1127424 (+ 1 (size!15395 (t!164035 lt!680342))))))

(assert (= (and d!538204 c!287099) b!1761743))

(assert (= (and d!538204 (not c!287099)) b!1761744))

(assert (=> b!1761744 m!2177157))

(assert (=> b!1760803 d!538204))

(declare-fun d!538206 () Bool)

(declare-fun lt!681002 () Int)

(assert (=> d!538206 (>= lt!681002 0)))

(declare-fun e!1127425 () Int)

(assert (=> d!538206 (= lt!681002 e!1127425)))

(declare-fun c!287100 () Bool)

(assert (=> d!538206 (= c!287100 ((_ is Nil!19382) suffix!1421))))

(assert (=> d!538206 (= (size!15395 suffix!1421) lt!681002)))

(declare-fun b!1761745 () Bool)

(assert (=> b!1761745 (= e!1127425 0)))

(declare-fun b!1761746 () Bool)

(assert (=> b!1761746 (= e!1127425 (+ 1 (size!15395 (t!164035 suffix!1421))))))

(assert (= (and d!538206 c!287100) b!1761745))

(assert (= (and d!538206 (not c!287100)) b!1761746))

(declare-fun m!2178019 () Bool)

(assert (=> b!1761746 m!2178019))

(assert (=> b!1760803 d!538206))

(assert (=> d!537778 d!537776))

(declare-fun d!538210 () Bool)

(assert (=> d!538210 (ruleValid!961 thiss!24550 rule!422)))

(assert (=> d!538210 true))

(declare-fun _$65!942 () Unit!33555)

(assert (=> d!538210 (= (choose!10902 thiss!24550 rule!422 rules!3447) _$65!942)))

(declare-fun bs!404121 () Bool)

(assert (= bs!404121 d!538210))

(assert (=> bs!404121 m!2176005))

(assert (=> d!537778 d!538210))

(assert (=> d!537778 d!537770))

(declare-fun d!538220 () Bool)

(assert (=> d!538220 (= (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) ((_ is Nil!19382) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(assert (=> b!1760887 d!538220))

(declare-fun d!538222 () Bool)

(assert (=> d!538222 (= (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (t!164035 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> b!1760887 d!538222))

(assert (=> d!537792 d!537798))

(assert (=> d!537792 d!537800))

(declare-fun d!538224 () Bool)

(assert (=> d!538224 (= (maxPrefixOneRule!1015 thiss!24550 (rule!5481 (_1!10897 lt!680362)) lt!680363) (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (rule!5481 (_1!10897 lt!680362))) (seqFromList!2432 lt!680348)) (rule!5481 (_1!10897 lt!680362)) (size!15395 lt!680348) lt!680348) (_2!10897 lt!680362))))))

(assert (=> d!538224 true))

(declare-fun _$59!284 () Unit!33555)

(assert (=> d!538224 (= (choose!10904 thiss!24550 rules!3447 lt!680348 lt!680363 (_2!10897 lt!680362) (rule!5481 (_1!10897 lt!680362))) _$59!284)))

(declare-fun bs!404125 () Bool)

(assert (= bs!404125 d!538224))

(assert (=> bs!404125 m!2176105))

(assert (=> bs!404125 m!2176101))

(assert (=> bs!404125 m!2176101))

(assert (=> bs!404125 m!2176109))

(assert (=> bs!404125 m!2176099))

(assert (=> d!537792 d!538224))

(assert (=> d!537792 d!537796))

(assert (=> d!537792 d!537592))

(assert (=> d!537792 d!537802))

(declare-fun d!538246 () Bool)

(assert (=> d!538246 (= (get!5898 lt!680615) (v!25408 lt!680615))))

(assert (=> b!1760798 d!538246))

(declare-fun d!538248 () Bool)

(declare-fun lt!681013 () List!19452)

(assert (=> d!538248 (= (++!5287 (t!164035 lt!680348) lt!681013) (tail!2633 lt!680363))))

(declare-fun e!1127450 () List!19452)

(assert (=> d!538248 (= lt!681013 e!1127450)))

(declare-fun c!287112 () Bool)

(assert (=> d!538248 (= c!287112 ((_ is Cons!19382) (t!164035 lt!680348)))))

(assert (=> d!538248 (>= (size!15395 (tail!2633 lt!680363)) (size!15395 (t!164035 lt!680348)))))

(assert (=> d!538248 (= (getSuffix!870 (tail!2633 lt!680363) (t!164035 lt!680348)) lt!681013)))

(declare-fun b!1761790 () Bool)

(assert (=> b!1761790 (= e!1127450 (getSuffix!870 (tail!2633 (tail!2633 lt!680363)) (t!164035 (t!164035 lt!680348))))))

(declare-fun b!1761791 () Bool)

(assert (=> b!1761791 (= e!1127450 (tail!2633 lt!680363))))

(assert (= (and d!538248 c!287112) b!1761790))

(assert (= (and d!538248 (not c!287112)) b!1761791))

(declare-fun m!2178065 () Bool)

(assert (=> d!538248 m!2178065))

(assert (=> d!538248 m!2176425))

(assert (=> d!538248 m!2177159))

(assert (=> d!538248 m!2176879))

(assert (=> b!1761790 m!2176425))

(assert (=> b!1761790 m!2177165))

(assert (=> b!1761790 m!2177165))

(declare-fun m!2178067 () Bool)

(assert (=> b!1761790 m!2178067))

(assert (=> b!1760919 d!538248))

(assert (=> b!1760919 d!537920))

(assert (=> b!1760956 d!538148))

(assert (=> b!1760956 d!537918))

(declare-fun d!538250 () Bool)

(declare-fun lostCauseFct!188 (Regex!4791) Bool)

(assert (=> d!538250 (= (lostCause!571 (rulesRegex!819 thiss!24550 rules!3447)) (lostCauseFct!188 (rulesRegex!819 thiss!24550 rules!3447)))))

(declare-fun bs!404126 () Bool)

(assert (= bs!404126 d!538250))

(assert (=> bs!404126 m!2176011))

(declare-fun m!2178085 () Bool)

(assert (=> bs!404126 m!2178085))

(assert (=> b!1760413 d!538250))

(declare-fun d!538256 () Bool)

(declare-fun lt!681015 () Int)

(assert (=> d!538256 (>= lt!681015 0)))

(declare-fun e!1127453 () Int)

(assert (=> d!538256 (= lt!681015 e!1127453)))

(declare-fun c!287114 () Bool)

(assert (=> d!538256 (= c!287114 ((_ is Nil!19382) (_2!10897 (get!5897 lt!680468))))))

(assert (=> d!538256 (= (size!15395 (_2!10897 (get!5897 lt!680468))) lt!681015)))

(declare-fun b!1761796 () Bool)

(assert (=> b!1761796 (= e!1127453 0)))

(declare-fun b!1761797 () Bool)

(assert (=> b!1761797 (= e!1127453 (+ 1 (size!15395 (t!164035 (_2!10897 (get!5897 lt!680468))))))))

(assert (= (and d!538256 c!287114) b!1761796))

(assert (= (and d!538256 (not c!287114)) b!1761797))

(declare-fun m!2178099 () Bool)

(assert (=> b!1761797 m!2178099))

(assert (=> b!1760511 d!538256))

(assert (=> b!1760511 d!537936))

(assert (=> b!1760511 d!538204))

(declare-fun d!538260 () Bool)

(declare-fun lt!681016 () Int)

(assert (=> d!538260 (>= lt!681016 0)))

(declare-fun e!1127454 () Int)

(assert (=> d!538260 (= lt!681016 e!1127454)))

(declare-fun c!287115 () Bool)

(assert (=> d!538260 (= c!287115 ((_ is Nil!19382) lt!680515))))

(assert (=> d!538260 (= (size!15395 lt!680515) lt!681016)))

(declare-fun b!1761798 () Bool)

(assert (=> b!1761798 (= e!1127454 0)))

(declare-fun b!1761799 () Bool)

(assert (=> b!1761799 (= e!1127454 (+ 1 (size!15395 (t!164035 lt!680515))))))

(assert (= (and d!538260 c!287115) b!1761798))

(assert (= (and d!538260 (not c!287115)) b!1761799))

(declare-fun m!2178103 () Bool)

(assert (=> b!1761799 m!2178103))

(assert (=> b!1760603 d!538260))

(assert (=> b!1760603 d!537796))

(declare-fun d!538264 () Bool)

(declare-fun lt!681018 () Int)

(assert (=> d!538264 (>= lt!681018 0)))

(declare-fun e!1127455 () Int)

(assert (=> d!538264 (= lt!681018 e!1127455)))

(declare-fun c!287116 () Bool)

(assert (=> d!538264 (= c!287116 ((_ is Nil!19382) (_2!10897 lt!680362)))))

(assert (=> d!538264 (= (size!15395 (_2!10897 lt!680362)) lt!681018)))

(declare-fun b!1761800 () Bool)

(assert (=> b!1761800 (= e!1127455 0)))

(declare-fun b!1761801 () Bool)

(assert (=> b!1761801 (= e!1127455 (+ 1 (size!15395 (t!164035 (_2!10897 lt!680362)))))))

(assert (= (and d!538264 c!287116) b!1761800))

(assert (= (and d!538264 (not c!287116)) b!1761801))

(declare-fun m!2178105 () Bool)

(assert (=> b!1761801 m!2178105))

(assert (=> b!1760603 d!538264))

(declare-fun b!1761806 () Bool)

(declare-fun e!1127458 () Bool)

(declare-fun lt!681019 () List!19452)

(assert (=> b!1761806 (= e!1127458 (or (not (= (_2!10897 (get!5897 lt!680468)) Nil!19382)) (= lt!681019 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun b!1761804 () Bool)

(declare-fun e!1127457 () List!19452)

(assert (=> b!1761804 (= e!1127457 (Cons!19382 (h!24783 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (++!5287 (t!164035 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (_2!10897 (get!5897 lt!680468)))))))

(declare-fun b!1761803 () Bool)

(assert (=> b!1761803 (= e!1127457 (_2!10897 (get!5897 lt!680468)))))

(declare-fun d!538266 () Bool)

(assert (=> d!538266 e!1127458))

(declare-fun res!792899 () Bool)

(assert (=> d!538266 (=> (not res!792899) (not e!1127458))))

(assert (=> d!538266 (= res!792899 (= (content!2798 lt!681019) ((_ map or) (content!2798 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (content!2798 (_2!10897 (get!5897 lt!680468))))))))

(assert (=> d!538266 (= lt!681019 e!1127457)))

(declare-fun c!287117 () Bool)

(assert (=> d!538266 (= c!287117 ((_ is Nil!19382) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))

(assert (=> d!538266 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))) (_2!10897 (get!5897 lt!680468))) lt!681019)))

(declare-fun b!1761805 () Bool)

(declare-fun res!792898 () Bool)

(assert (=> b!1761805 (=> (not res!792898) (not e!1127458))))

(assert (=> b!1761805 (= res!792898 (= (size!15395 lt!681019) (+ (size!15395 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (size!15395 (_2!10897 (get!5897 lt!680468))))))))

(assert (= (and d!538266 c!287117) b!1761803))

(assert (= (and d!538266 (not c!287117)) b!1761804))

(assert (= (and d!538266 res!792899) b!1761805))

(assert (= (and b!1761805 res!792898) b!1761806))

(declare-fun m!2178115 () Bool)

(assert (=> b!1761804 m!2178115))

(declare-fun m!2178117 () Bool)

(assert (=> d!538266 m!2178117))

(assert (=> d!538266 m!2176311))

(declare-fun m!2178119 () Bool)

(assert (=> d!538266 m!2178119))

(declare-fun m!2178121 () Bool)

(assert (=> d!538266 m!2178121))

(declare-fun m!2178123 () Bool)

(assert (=> b!1761805 m!2178123))

(assert (=> b!1761805 m!2176311))

(declare-fun m!2178125 () Bool)

(assert (=> b!1761805 m!2178125))

(assert (=> b!1761805 m!2176325))

(assert (=> b!1760508 d!538266))

(assert (=> b!1760508 d!537932))

(assert (=> b!1760508 d!537934))

(assert (=> b!1760508 d!537936))

(declare-fun d!538270 () Bool)

(declare-fun lt!681020 () Int)

(assert (=> d!538270 (>= lt!681020 0)))

(declare-fun e!1127459 () Int)

(assert (=> d!538270 (= lt!681020 e!1127459)))

(declare-fun c!287118 () Bool)

(assert (=> d!538270 (= c!287118 ((_ is Nil!19382) (originalCharacters!4277 (_1!10897 lt!680362))))))

(assert (=> d!538270 (= (size!15395 (originalCharacters!4277 (_1!10897 lt!680362))) lt!681020)))

(declare-fun b!1761807 () Bool)

(assert (=> b!1761807 (= e!1127459 0)))

(declare-fun b!1761808 () Bool)

(assert (=> b!1761808 (= e!1127459 (+ 1 (size!15395 (t!164035 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(assert (= (and d!538270 c!287118) b!1761807))

(assert (= (and d!538270 (not c!287118)) b!1761808))

(declare-fun m!2178127 () Bool)

(assert (=> b!1761808 m!2178127))

(assert (=> d!537812 d!538270))

(assert (=> b!1760883 d!538220))

(assert (=> b!1760883 d!538222))

(declare-fun b!1761809 () Bool)

(declare-fun res!792906 () Bool)

(declare-fun e!1127460 () Bool)

(assert (=> b!1761809 (=> (not res!792906) (not e!1127460))))

(declare-fun call!110756 () Bool)

(assert (=> b!1761809 (= res!792906 (not call!110756))))

(declare-fun b!1761810 () Bool)

(declare-fun res!792901 () Bool)

(declare-fun e!1127466 () Bool)

(assert (=> b!1761810 (=> res!792901 e!1127466)))

(assert (=> b!1761810 (= res!792901 e!1127460)))

(declare-fun res!792902 () Bool)

(assert (=> b!1761810 (=> (not res!792902) (not e!1127460))))

(declare-fun lt!681021 () Bool)

(assert (=> b!1761810 (= res!792902 lt!681021)))

(declare-fun b!1761811 () Bool)

(declare-fun res!792904 () Bool)

(assert (=> b!1761811 (=> (not res!792904) (not e!1127460))))

(assert (=> b!1761811 (= res!792904 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun b!1761813 () Bool)

(declare-fun e!1127465 () Bool)

(assert (=> b!1761813 (= e!1127465 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun b!1761814 () Bool)

(declare-fun res!792905 () Bool)

(assert (=> b!1761814 (=> res!792905 e!1127466)))

(assert (=> b!1761814 (= res!792905 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun e!1127462 () Bool)

(assert (=> b!1761814 (= e!1127462 e!1127466)))

(declare-fun b!1761815 () Bool)

(declare-fun res!792900 () Bool)

(declare-fun e!1127461 () Bool)

(assert (=> b!1761815 (=> res!792900 e!1127461)))

(assert (=> b!1761815 (= res!792900 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))))

(declare-fun bm!110751 () Bool)

(assert (=> bm!110751 (= call!110756 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun b!1761816 () Bool)

(declare-fun e!1127463 () Bool)

(assert (=> b!1761816 (= e!1127463 e!1127461)))

(declare-fun res!792907 () Bool)

(assert (=> b!1761816 (=> res!792907 e!1127461)))

(assert (=> b!1761816 (= res!792907 call!110756)))

(declare-fun b!1761817 () Bool)

(assert (=> b!1761817 (= e!1127461 (not (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))))))))

(declare-fun b!1761818 () Bool)

(assert (=> b!1761818 (= e!1127465 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun b!1761819 () Bool)

(declare-fun e!1127464 () Bool)

(assert (=> b!1761819 (= e!1127464 (= lt!681021 call!110756))))

(declare-fun b!1761820 () Bool)

(assert (=> b!1761820 (= e!1127464 e!1127462)))

(declare-fun c!287119 () Bool)

(assert (=> b!1761820 (= c!287119 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun b!1761821 () Bool)

(assert (=> b!1761821 (= e!1127466 e!1127463)))

(declare-fun res!792903 () Bool)

(assert (=> b!1761821 (=> (not res!792903) (not e!1127463))))

(assert (=> b!1761821 (= res!792903 (not lt!681021))))

(declare-fun b!1761822 () Bool)

(assert (=> b!1761822 (= e!1127460 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun d!538272 () Bool)

(assert (=> d!538272 e!1127464))

(declare-fun c!287121 () Bool)

(assert (=> d!538272 (= c!287121 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))))))

(assert (=> d!538272 (= lt!681021 e!1127465)))

(declare-fun c!287120 () Bool)

(assert (=> d!538272 (= c!287120 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))))))

(assert (=> d!538272 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))))

(assert (=> d!538272 (= (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680513))))) lt!681021)))

(declare-fun b!1761812 () Bool)

(assert (=> b!1761812 (= e!1127462 (not lt!681021))))

(assert (= (and d!538272 c!287120) b!1761813))

(assert (= (and d!538272 (not c!287120)) b!1761818))

(assert (= (and d!538272 c!287121) b!1761819))

(assert (= (and d!538272 (not c!287121)) b!1761820))

(assert (= (and b!1761820 c!287119) b!1761812))

(assert (= (and b!1761820 (not c!287119)) b!1761814))

(assert (= (and b!1761814 (not res!792905)) b!1761810))

(assert (= (and b!1761810 res!792902) b!1761809))

(assert (= (and b!1761809 res!792906) b!1761811))

(assert (= (and b!1761811 res!792904) b!1761822))

(assert (= (and b!1761810 (not res!792901)) b!1761821))

(assert (= (and b!1761821 res!792903) b!1761816))

(assert (= (and b!1761816 (not res!792907)) b!1761815))

(assert (= (and b!1761815 (not res!792900)) b!1761817))

(assert (= (or b!1761819 b!1761809 b!1761816) bm!110751))

(assert (=> bm!110751 m!2176467))

(declare-fun m!2178129 () Bool)

(assert (=> bm!110751 m!2178129))

(assert (=> b!1761815 m!2176467))

(declare-fun m!2178131 () Bool)

(assert (=> b!1761815 m!2178131))

(assert (=> b!1761815 m!2178131))

(declare-fun m!2178133 () Bool)

(assert (=> b!1761815 m!2178133))

(declare-fun m!2178135 () Bool)

(assert (=> b!1761813 m!2178135))

(assert (=> d!538272 m!2176467))

(assert (=> d!538272 m!2178129))

(declare-fun m!2178137 () Bool)

(assert (=> d!538272 m!2178137))

(assert (=> b!1761811 m!2176467))

(assert (=> b!1761811 m!2178131))

(assert (=> b!1761811 m!2178131))

(assert (=> b!1761811 m!2178133))

(assert (=> b!1761818 m!2176467))

(declare-fun m!2178139 () Bool)

(assert (=> b!1761818 m!2178139))

(assert (=> b!1761818 m!2178139))

(declare-fun m!2178141 () Bool)

(assert (=> b!1761818 m!2178141))

(assert (=> b!1761818 m!2176467))

(assert (=> b!1761818 m!2178131))

(assert (=> b!1761818 m!2178141))

(assert (=> b!1761818 m!2178131))

(declare-fun m!2178143 () Bool)

(assert (=> b!1761818 m!2178143))

(assert (=> b!1761822 m!2176467))

(assert (=> b!1761822 m!2178139))

(assert (=> b!1761817 m!2176467))

(assert (=> b!1761817 m!2178139))

(assert (=> b!1760583 d!538272))

(assert (=> b!1760583 d!537864))

(assert (=> b!1760583 d!538030))

(assert (=> b!1760583 d!538032))

(declare-fun d!538274 () Bool)

(assert (=> d!538274 (= (isEmpty!12231 lt!680359) (not ((_ is Some!3947) lt!680359)))))

(assert (=> d!537670 d!538274))

(declare-fun d!538282 () Bool)

(declare-fun c!287124 () Bool)

(assert (=> d!538282 (= c!287124 ((_ is Nil!19382) lt!680617))))

(declare-fun e!1127472 () (InoxSet C!9756))

(assert (=> d!538282 (= (content!2798 lt!680617) e!1127472)))

(declare-fun b!1761833 () Bool)

(assert (=> b!1761833 (= e!1127472 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761834 () Bool)

(assert (=> b!1761834 (= e!1127472 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 lt!680617) true) (content!2798 (t!164035 lt!680617))))))

(assert (= (and d!538282 c!287124) b!1761833))

(assert (= (and d!538282 (not c!287124)) b!1761834))

(declare-fun m!2178149 () Bool)

(assert (=> b!1761834 m!2178149))

(declare-fun m!2178151 () Bool)

(assert (=> b!1761834 m!2178151))

(assert (=> d!537744 d!538282))

(declare-fun d!538284 () Bool)

(declare-fun c!287125 () Bool)

(assert (=> d!538284 (= c!287125 ((_ is Nil!19382) lt!680342))))

(declare-fun e!1127473 () (InoxSet C!9756))

(assert (=> d!538284 (= (content!2798 lt!680342) e!1127473)))

(declare-fun b!1761835 () Bool)

(assert (=> b!1761835 (= e!1127473 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761836 () Bool)

(assert (=> b!1761836 (= e!1127473 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 lt!680342) true) (content!2798 (t!164035 lt!680342))))))

(assert (= (and d!538284 c!287125) b!1761835))

(assert (= (and d!538284 (not c!287125)) b!1761836))

(declare-fun m!2178153 () Bool)

(assert (=> b!1761836 m!2178153))

(assert (=> b!1761836 m!2177153))

(assert (=> d!537744 d!538284))

(declare-fun d!538286 () Bool)

(declare-fun c!287126 () Bool)

(assert (=> d!538286 (= c!287126 ((_ is Nil!19382) suffix!1421))))

(declare-fun e!1127474 () (InoxSet C!9756))

(assert (=> d!538286 (= (content!2798 suffix!1421) e!1127474)))

(declare-fun b!1761837 () Bool)

(assert (=> b!1761837 (= e!1127474 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761838 () Bool)

(assert (=> b!1761838 (= e!1127474 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 suffix!1421) true) (content!2798 (t!164035 suffix!1421))))))

(assert (= (and d!538286 c!287126) b!1761837))

(assert (= (and d!538286 (not c!287126)) b!1761838))

(declare-fun m!2178155 () Bool)

(assert (=> b!1761838 m!2178155))

(declare-fun m!2178157 () Bool)

(assert (=> b!1761838 m!2178157))

(assert (=> d!537744 d!538286))

(assert (=> b!1760752 d!538010))

(declare-fun d!538288 () Bool)

(assert (=> d!538288 (= (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))) (v!25408 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))

(assert (=> b!1760752 d!538288))

(assert (=> b!1760752 d!538018))

(declare-fun b!1761839 () Bool)

(declare-fun res!792920 () Bool)

(declare-fun e!1127475 () Bool)

(assert (=> b!1761839 (=> (not res!792920) (not e!1127475))))

(declare-fun call!110757 () Bool)

(assert (=> b!1761839 (= res!792920 (not call!110757))))

(declare-fun b!1761840 () Bool)

(declare-fun res!792915 () Bool)

(declare-fun e!1127481 () Bool)

(assert (=> b!1761840 (=> res!792915 e!1127481)))

(assert (=> b!1761840 (= res!792915 e!1127475)))

(declare-fun res!792916 () Bool)

(assert (=> b!1761840 (=> (not res!792916) (not e!1127475))))

(declare-fun lt!681022 () Bool)

(assert (=> b!1761840 (= res!792916 lt!681022)))

(declare-fun b!1761841 () Bool)

(declare-fun res!792918 () Bool)

(assert (=> b!1761841 (=> (not res!792918) (not e!1127475))))

(assert (=> b!1761841 (= res!792918 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 lt!680593)))))))

(declare-fun b!1761843 () Bool)

(declare-fun e!1127480 () Bool)

(assert (=> b!1761843 (= e!1127480 (nullable!1461 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))))

(declare-fun b!1761844 () Bool)

(declare-fun res!792919 () Bool)

(assert (=> b!1761844 (=> res!792919 e!1127481)))

(assert (=> b!1761844 (= res!792919 (not ((_ is ElementMatch!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))))

(declare-fun e!1127477 () Bool)

(assert (=> b!1761844 (= e!1127477 e!1127481)))

(declare-fun b!1761845 () Bool)

(declare-fun res!792914 () Bool)

(declare-fun e!1127476 () Bool)

(assert (=> b!1761845 (=> res!792914 e!1127476)))

(assert (=> b!1761845 (= res!792914 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 lt!680593))))))))

(declare-fun bm!110752 () Bool)

(assert (=> bm!110752 (= call!110757 (isEmpty!12227 (list!7861 (charsOf!2112 lt!680593))))))

(declare-fun b!1761846 () Bool)

(declare-fun e!1127478 () Bool)

(assert (=> b!1761846 (= e!1127478 e!1127476)))

(declare-fun res!792921 () Bool)

(assert (=> b!1761846 (=> res!792921 e!1127476)))

(assert (=> b!1761846 (= res!792921 call!110757)))

(declare-fun b!1761847 () Bool)

(assert (=> b!1761847 (= e!1127476 (not (= (head!4076 (list!7861 (charsOf!2112 lt!680593))) (c!286774 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))))))

(declare-fun b!1761848 () Bool)

(assert (=> b!1761848 (= e!1127480 (matchR!2264 (derivativeStep!1230 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))) (head!4076 (list!7861 (charsOf!2112 lt!680593)))) (tail!2633 (list!7861 (charsOf!2112 lt!680593)))))))

(declare-fun b!1761849 () Bool)

(declare-fun e!1127479 () Bool)

(assert (=> b!1761849 (= e!1127479 (= lt!681022 call!110757))))

(declare-fun b!1761850 () Bool)

(assert (=> b!1761850 (= e!1127479 e!1127477)))

(declare-fun c!287127 () Bool)

(assert (=> b!1761850 (= c!287127 ((_ is EmptyLang!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))))

(declare-fun b!1761851 () Bool)

(assert (=> b!1761851 (= e!1127481 e!1127478)))

(declare-fun res!792917 () Bool)

(assert (=> b!1761851 (=> (not res!792917) (not e!1127478))))

(assert (=> b!1761851 (= res!792917 (not lt!681022))))

(declare-fun b!1761852 () Bool)

(assert (=> b!1761852 (= e!1127475 (= (head!4076 (list!7861 (charsOf!2112 lt!680593))) (c!286774 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))))

(declare-fun d!538290 () Bool)

(assert (=> d!538290 e!1127479))

(declare-fun c!287129 () Bool)

(assert (=> d!538290 (= c!287129 ((_ is EmptyExpr!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593)))))))))

(assert (=> d!538290 (= lt!681022 e!1127480)))

(declare-fun c!287128 () Bool)

(assert (=> d!538290 (= c!287128 (isEmpty!12227 (list!7861 (charsOf!2112 lt!680593))))))

(assert (=> d!538290 (validRegex!1935 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))))))

(assert (=> d!538290 (= (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 lt!680593))))) (list!7861 (charsOf!2112 lt!680593))) lt!681022)))

(declare-fun b!1761842 () Bool)

(assert (=> b!1761842 (= e!1127477 (not lt!681022))))

(assert (= (and d!538290 c!287128) b!1761843))

(assert (= (and d!538290 (not c!287128)) b!1761848))

(assert (= (and d!538290 c!287129) b!1761849))

(assert (= (and d!538290 (not c!287129)) b!1761850))

(assert (= (and b!1761850 c!287127) b!1761842))

(assert (= (and b!1761850 (not c!287127)) b!1761844))

(assert (= (and b!1761844 (not res!792919)) b!1761840))

(assert (= (and b!1761840 res!792916) b!1761839))

(assert (= (and b!1761839 res!792920) b!1761841))

(assert (= (and b!1761841 res!792918) b!1761852))

(assert (= (and b!1761840 (not res!792915)) b!1761851))

(assert (= (and b!1761851 res!792917) b!1761846))

(assert (= (and b!1761846 (not res!792921)) b!1761845))

(assert (= (and b!1761845 (not res!792914)) b!1761847))

(assert (= (or b!1761849 b!1761839 b!1761846) bm!110752))

(assert (=> bm!110752 m!2176717))

(declare-fun m!2178159 () Bool)

(assert (=> bm!110752 m!2178159))

(assert (=> b!1761845 m!2176717))

(declare-fun m!2178161 () Bool)

(assert (=> b!1761845 m!2178161))

(assert (=> b!1761845 m!2178161))

(declare-fun m!2178163 () Bool)

(assert (=> b!1761845 m!2178163))

(declare-fun m!2178165 () Bool)

(assert (=> b!1761843 m!2178165))

(assert (=> d!538290 m!2176717))

(assert (=> d!538290 m!2178159))

(declare-fun m!2178167 () Bool)

(assert (=> d!538290 m!2178167))

(assert (=> b!1761841 m!2176717))

(assert (=> b!1761841 m!2178161))

(assert (=> b!1761841 m!2178161))

(assert (=> b!1761841 m!2178163))

(assert (=> b!1761848 m!2176717))

(declare-fun m!2178169 () Bool)

(assert (=> b!1761848 m!2178169))

(assert (=> b!1761848 m!2178169))

(declare-fun m!2178171 () Bool)

(assert (=> b!1761848 m!2178171))

(assert (=> b!1761848 m!2176717))

(assert (=> b!1761848 m!2178161))

(assert (=> b!1761848 m!2178171))

(assert (=> b!1761848 m!2178161))

(declare-fun m!2178173 () Bool)

(assert (=> b!1761848 m!2178173))

(assert (=> b!1761852 m!2176717))

(assert (=> b!1761852 m!2178169))

(assert (=> b!1761847 m!2176717))

(assert (=> b!1761847 m!2178169))

(assert (=> b!1760752 d!538290))

(assert (=> b!1760752 d!537956))

(declare-fun b!1761853 () Bool)

(declare-fun res!792924 () Bool)

(declare-fun e!1127484 () Bool)

(assert (=> b!1761853 (=> (not res!792924) (not e!1127484))))

(declare-fun lt!681026 () Option!3949)

(assert (=> b!1761853 (= res!792924 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!681026)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681026))))))))

(declare-fun b!1761854 () Bool)

(declare-fun res!792923 () Bool)

(assert (=> b!1761854 (=> (not res!792923) (not e!1127484))))

(assert (=> b!1761854 (= res!792923 (= (value!108368 (_1!10897 (get!5897 lt!681026))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!681026)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!681026)))))))))

(declare-fun b!1761855 () Bool)

(declare-fun e!1127483 () Option!3949)

(declare-fun lt!681025 () Option!3949)

(declare-fun lt!681023 () Option!3949)

(assert (=> b!1761855 (= e!1127483 (ite (and ((_ is None!3948) lt!681025) ((_ is None!3948) lt!681023)) None!3948 (ite ((_ is None!3948) lt!681023) lt!681025 (ite ((_ is None!3948) lt!681025) lt!681023 (ite (>= (size!15393 (_1!10897 (v!25409 lt!681025))) (size!15393 (_1!10897 (v!25409 lt!681023)))) lt!681025 lt!681023)))))))

(declare-fun call!110758 () Option!3949)

(assert (=> b!1761855 (= lt!681025 call!110758)))

(assert (=> b!1761855 (= lt!681023 (maxPrefix!1646 thiss!24550 (t!164036 (t!164036 rules!3447)) lt!680342))))

(declare-fun b!1761856 () Bool)

(declare-fun res!792927 () Bool)

(assert (=> b!1761856 (=> (not res!792927) (not e!1127484))))

(assert (=> b!1761856 (= res!792927 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681026)))) (_2!10897 (get!5897 lt!681026))) lt!680342))))

(declare-fun bm!110753 () Bool)

(assert (=> bm!110753 (= call!110758 (maxPrefixOneRule!1015 thiss!24550 (h!24784 (t!164036 rules!3447)) lt!680342))))

(declare-fun b!1761857 () Bool)

(declare-fun e!1127482 () Bool)

(assert (=> b!1761857 (= e!1127482 e!1127484)))

(declare-fun res!792926 () Bool)

(assert (=> b!1761857 (=> (not res!792926) (not e!1127484))))

(assert (=> b!1761857 (= res!792926 (isDefined!3292 lt!681026))))

(declare-fun d!538292 () Bool)

(assert (=> d!538292 e!1127482))

(declare-fun res!792925 () Bool)

(assert (=> d!538292 (=> res!792925 e!1127482)))

(assert (=> d!538292 (= res!792925 (isEmpty!12230 lt!681026))))

(assert (=> d!538292 (= lt!681026 e!1127483)))

(declare-fun c!287130 () Bool)

(assert (=> d!538292 (= c!287130 (and ((_ is Cons!19383) (t!164036 rules!3447)) ((_ is Nil!19383) (t!164036 (t!164036 rules!3447)))))))

(declare-fun lt!681024 () Unit!33555)

(declare-fun lt!681027 () Unit!33555)

(assert (=> d!538292 (= lt!681024 lt!681027)))

(assert (=> d!538292 (isPrefix!1703 lt!680342 lt!680342)))

(assert (=> d!538292 (= lt!681027 (lemmaIsPrefixRefl!1128 lt!680342 lt!680342))))

(assert (=> d!538292 (rulesValidInductive!1166 thiss!24550 (t!164036 rules!3447))))

(assert (=> d!538292 (= (maxPrefix!1646 thiss!24550 (t!164036 rules!3447) lt!680342) lt!681026)))

(declare-fun b!1761858 () Bool)

(declare-fun res!792922 () Bool)

(assert (=> b!1761858 (=> (not res!792922) (not e!1127484))))

(assert (=> b!1761858 (= res!792922 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681026)))) (originalCharacters!4277 (_1!10897 (get!5897 lt!681026)))))))

(declare-fun b!1761859 () Bool)

(declare-fun res!792928 () Bool)

(assert (=> b!1761859 (=> (not res!792928) (not e!1127484))))

(assert (=> b!1761859 (= res!792928 (< (size!15395 (_2!10897 (get!5897 lt!681026))) (size!15395 lt!680342)))))

(declare-fun b!1761860 () Bool)

(assert (=> b!1761860 (= e!1127483 call!110758)))

(declare-fun b!1761861 () Bool)

(assert (=> b!1761861 (= e!1127484 (contains!3491 (t!164036 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!681026)))))))

(assert (= (and d!538292 c!287130) b!1761860))

(assert (= (and d!538292 (not c!287130)) b!1761855))

(assert (= (or b!1761860 b!1761855) bm!110753))

(assert (= (and d!538292 (not res!792925)) b!1761857))

(assert (= (and b!1761857 res!792926) b!1761858))

(assert (= (and b!1761858 res!792922) b!1761859))

(assert (= (and b!1761859 res!792928) b!1761856))

(assert (= (and b!1761856 res!792927) b!1761854))

(assert (= (and b!1761854 res!792923) b!1761853))

(assert (= (and b!1761853 res!792924) b!1761861))

(declare-fun m!2178175 () Bool)

(assert (=> b!1761856 m!2178175))

(declare-fun m!2178177 () Bool)

(assert (=> b!1761856 m!2178177))

(assert (=> b!1761856 m!2178177))

(declare-fun m!2178179 () Bool)

(assert (=> b!1761856 m!2178179))

(assert (=> b!1761856 m!2178179))

(declare-fun m!2178181 () Bool)

(assert (=> b!1761856 m!2178181))

(assert (=> b!1761858 m!2178175))

(assert (=> b!1761858 m!2178177))

(assert (=> b!1761858 m!2178177))

(assert (=> b!1761858 m!2178179))

(declare-fun m!2178183 () Bool)

(assert (=> bm!110753 m!2178183))

(assert (=> b!1761854 m!2178175))

(declare-fun m!2178185 () Bool)

(assert (=> b!1761854 m!2178185))

(assert (=> b!1761854 m!2178185))

(declare-fun m!2178187 () Bool)

(assert (=> b!1761854 m!2178187))

(assert (=> b!1761861 m!2178175))

(declare-fun m!2178189 () Bool)

(assert (=> b!1761861 m!2178189))

(declare-fun m!2178191 () Bool)

(assert (=> b!1761855 m!2178191))

(assert (=> b!1761859 m!2178175))

(declare-fun m!2178193 () Bool)

(assert (=> b!1761859 m!2178193))

(assert (=> b!1761859 m!2176203))

(declare-fun m!2178195 () Bool)

(assert (=> d!538292 m!2178195))

(assert (=> d!538292 m!2176329))

(assert (=> d!538292 m!2176331))

(assert (=> d!538292 m!2177145))

(assert (=> b!1761853 m!2178175))

(assert (=> b!1761853 m!2178177))

(assert (=> b!1761853 m!2178177))

(assert (=> b!1761853 m!2178179))

(assert (=> b!1761853 m!2178179))

(declare-fun m!2178197 () Bool)

(assert (=> b!1761853 m!2178197))

(declare-fun m!2178199 () Bool)

(assert (=> b!1761857 m!2178199))

(assert (=> b!1760507 d!538292))

(declare-fun d!538294 () Bool)

(declare-fun res!792929 () Bool)

(declare-fun e!1127485 () Bool)

(assert (=> d!538294 (=> (not res!792929) (not e!1127485))))

(assert (=> d!538294 (= res!792929 (= (csize!13124 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) (+ (size!15397 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) (size!15397 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))))

(assert (=> d!538294 (= (inv!25175 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) e!1127485)))

(declare-fun b!1761862 () Bool)

(declare-fun res!792930 () Bool)

(assert (=> b!1761862 (=> (not res!792930) (not e!1127485))))

(assert (=> b!1761862 (= res!792930 (and (not (= (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) Empty!6447)) (not (= (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) Empty!6447))))))

(declare-fun b!1761863 () Bool)

(declare-fun res!792931 () Bool)

(assert (=> b!1761863 (=> (not res!792931) (not e!1127485))))

(assert (=> b!1761863 (= res!792931 (= (cheight!6658 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) (+ (max!0 (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) 1)))))

(declare-fun b!1761864 () Bool)

(assert (=> b!1761864 (= e!1127485 (<= 0 (cheight!6658 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(assert (= (and d!538294 res!792929) b!1761862))

(assert (= (and b!1761862 res!792930) b!1761863))

(assert (= (and b!1761863 res!792931) b!1761864))

(declare-fun m!2178201 () Bool)

(assert (=> d!538294 m!2178201))

(declare-fun m!2178203 () Bool)

(assert (=> d!538294 m!2178203))

(declare-fun m!2178205 () Bool)

(assert (=> b!1761863 m!2178205))

(declare-fun m!2178207 () Bool)

(assert (=> b!1761863 m!2178207))

(assert (=> b!1761863 m!2178205))

(assert (=> b!1761863 m!2178207))

(declare-fun m!2178209 () Bool)

(assert (=> b!1761863 m!2178209))

(assert (=> b!1760821 d!538294))

(assert (=> b!1760894 d!538070))

(declare-fun d!538296 () Bool)

(declare-fun c!287131 () Bool)

(assert (=> d!538296 (= c!287131 ((_ is Nil!19382) lt!680515))))

(declare-fun e!1127486 () (InoxSet C!9756))

(assert (=> d!538296 (= (content!2798 lt!680515) e!1127486)))

(declare-fun b!1761865 () Bool)

(assert (=> b!1761865 (= e!1127486 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761866 () Bool)

(assert (=> b!1761866 (= e!1127486 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 lt!680515) true) (content!2798 (t!164035 lt!680515))))))

(assert (= (and d!538296 c!287131) b!1761865))

(assert (= (and d!538296 (not c!287131)) b!1761866))

(declare-fun m!2178211 () Bool)

(assert (=> b!1761866 m!2178211))

(declare-fun m!2178213 () Bool)

(assert (=> b!1761866 m!2178213))

(assert (=> d!537678 d!538296))

(declare-fun d!538298 () Bool)

(declare-fun c!287132 () Bool)

(assert (=> d!538298 (= c!287132 ((_ is Nil!19382) lt!680348))))

(declare-fun e!1127487 () (InoxSet C!9756))

(assert (=> d!538298 (= (content!2798 lt!680348) e!1127487)))

(declare-fun b!1761867 () Bool)

(assert (=> b!1761867 (= e!1127487 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761868 () Bool)

(assert (=> b!1761868 (= e!1127487 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 lt!680348) true) (content!2798 (t!164035 lt!680348))))))

(assert (= (and d!538298 c!287132) b!1761867))

(assert (= (and d!538298 (not c!287132)) b!1761868))

(declare-fun m!2178215 () Bool)

(assert (=> b!1761868 m!2178215))

(assert (=> b!1761868 m!2177213))

(assert (=> d!537678 d!538298))

(declare-fun d!538300 () Bool)

(declare-fun c!287133 () Bool)

(assert (=> d!538300 (= c!287133 ((_ is Nil!19382) (_2!10897 lt!680362)))))

(declare-fun e!1127488 () (InoxSet C!9756))

(assert (=> d!538300 (= (content!2798 (_2!10897 lt!680362)) e!1127488)))

(declare-fun b!1761869 () Bool)

(assert (=> b!1761869 (= e!1127488 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1761870 () Bool)

(assert (=> b!1761870 (= e!1127488 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 (_2!10897 lt!680362)) true) (content!2798 (t!164035 (_2!10897 lt!680362)))))))

(assert (= (and d!538300 c!287133) b!1761869))

(assert (= (and d!538300 (not c!287133)) b!1761870))

(declare-fun m!2178217 () Bool)

(assert (=> b!1761870 m!2178217))

(declare-fun m!2178219 () Bool)

(assert (=> b!1761870 m!2178219))

(assert (=> d!537678 d!538300))

(declare-fun bs!404128 () Bool)

(declare-fun d!538302 () Bool)

(assert (= bs!404128 (and d!538302 d!537814)))

(declare-fun lambda!70197 () Int)

(assert (=> bs!404128 (= (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= lambda!70197 lambda!70150))))

(declare-fun bs!404129 () Bool)

(assert (= bs!404129 (and d!538302 d!538156)))

(assert (=> bs!404129 (= (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 rule!422))) (= lambda!70197 lambda!70195))))

(assert (=> d!538302 true))

(assert (=> d!538302 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (dynLambda!9335 order!12291 lambda!70197))))

(assert (=> d!538302 (= (equivClasses!1317 (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (Forall2!561 lambda!70197))))

(declare-fun bs!404130 () Bool)

(assert (= bs!404130 d!538302))

(declare-fun m!2178221 () Bool)

(assert (=> bs!404130 m!2178221))

(assert (=> b!1760538 d!538302))

(declare-fun d!538304 () Bool)

(assert (=> d!538304 (= (isEmpty!12231 lt!680615) (not ((_ is Some!3947) lt!680615)))))

(assert (=> d!537742 d!538304))

(assert (=> d!537742 d!537772))

(declare-fun d!538306 () Bool)

(declare-fun c!287134 () Bool)

(assert (=> d!538306 (= c!287134 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(declare-fun e!1127489 () Bool)

(assert (=> d!538306 (= (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))) e!1127489)))

(declare-fun b!1761871 () Bool)

(assert (=> b!1761871 (= e!1127489 (inv!25175 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(declare-fun b!1761872 () Bool)

(declare-fun e!1127490 () Bool)

(assert (=> b!1761872 (= e!1127489 e!1127490)))

(declare-fun res!792932 () Bool)

(assert (=> b!1761872 (= res!792932 (not ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))))))

(assert (=> b!1761872 (=> res!792932 e!1127490)))

(declare-fun b!1761873 () Bool)

(assert (=> b!1761873 (= e!1127490 (inv!25176 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(assert (= (and d!538306 c!287134) b!1761871))

(assert (= (and d!538306 (not c!287134)) b!1761872))

(assert (= (and b!1761872 (not res!792932)) b!1761873))

(declare-fun m!2178223 () Bool)

(assert (=> b!1761871 m!2178223))

(declare-fun m!2178225 () Bool)

(assert (=> b!1761873 m!2178225))

(assert (=> b!1760523 d!538306))

(declare-fun d!538308 () Bool)

(declare-fun dynLambda!9339 (Int BalanceConc!12838 BalanceConc!12838) Bool)

(assert (=> d!538308 (dynLambda!9339 lambda!70150 lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))

(declare-fun lt!681059 () Unit!33555)

(declare-fun choose!10912 (Int BalanceConc!12838 BalanceConc!12838) Unit!33555)

(assert (=> d!538308 (= lt!681059 (choose!10912 lambda!70150 lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))

(assert (=> d!538308 (Forall2!561 lambda!70150)))

(assert (=> d!538308 (= (Forall2of!123 lambda!70150 lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))) lt!681059)))

(declare-fun b_lambda!57045 () Bool)

(assert (=> (not b_lambda!57045) (not d!538308)))

(declare-fun bs!404132 () Bool)

(assert (= bs!404132 d!538308))

(assert (=> bs!404132 m!2176085))

(declare-fun m!2178243 () Bool)

(assert (=> bs!404132 m!2178243))

(assert (=> bs!404132 m!2176085))

(declare-fun m!2178245 () Bool)

(assert (=> bs!404132 m!2178245))

(declare-fun m!2178247 () Bool)

(assert (=> bs!404132 m!2178247))

(assert (=> d!537814 d!538308))

(assert (=> d!537814 d!537656))

(declare-fun d!538314 () Bool)

(assert (=> d!538314 (= (list!7861 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))) (list!7864 (c!286775 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun bs!404133 () Bool)

(assert (= bs!404133 d!538314))

(declare-fun m!2178249 () Bool)

(assert (=> bs!404133 m!2178249))

(assert (=> d!537814 d!538314))

(declare-fun b!1761886 () Bool)

(declare-fun res!792948 () Bool)

(declare-fun e!1127495 () Bool)

(assert (=> b!1761886 (=> (not res!792948) (not e!1127495))))

(declare-fun call!110760 () Bool)

(assert (=> b!1761886 (= res!792948 (not call!110760))))

(declare-fun b!1761887 () Bool)

(declare-fun res!792943 () Bool)

(declare-fun e!1127501 () Bool)

(assert (=> b!1761887 (=> res!792943 e!1127501)))

(assert (=> b!1761887 (= res!792943 e!1127495)))

(declare-fun res!792944 () Bool)

(assert (=> b!1761887 (=> (not res!792944) (not e!1127495))))

(declare-fun lt!681060 () Bool)

(assert (=> b!1761887 (= res!792944 lt!681060)))

(declare-fun b!1761888 () Bool)

(declare-fun res!792946 () Bool)

(assert (=> b!1761888 (=> (not res!792946) (not e!1127495))))

(assert (=> b!1761888 (= res!792946 (isEmpty!12227 (tail!2633 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun b!1761890 () Bool)

(declare-fun e!1127500 () Bool)

(assert (=> b!1761890 (= e!1127500 (nullable!1461 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun b!1761891 () Bool)

(declare-fun res!792947 () Bool)

(assert (=> b!1761891 (=> res!792947 e!1127501)))

(assert (=> b!1761891 (= res!792947 (not ((_ is ElementMatch!4791) (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))))

(declare-fun e!1127497 () Bool)

(assert (=> b!1761891 (= e!1127497 e!1127501)))

(declare-fun b!1761892 () Bool)

(declare-fun res!792942 () Bool)

(declare-fun e!1127496 () Bool)

(assert (=> b!1761892 (=> res!792942 e!1127496)))

(assert (=> b!1761892 (= res!792942 (not (isEmpty!12227 (tail!2633 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))))

(declare-fun bm!110755 () Bool)

(assert (=> bm!110755 (= call!110760 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1761893 () Bool)

(declare-fun e!1127498 () Bool)

(assert (=> b!1761893 (= e!1127498 e!1127496)))

(declare-fun res!792949 () Bool)

(assert (=> b!1761893 (=> res!792949 e!1127496)))

(assert (=> b!1761893 (= res!792949 call!110760)))

(declare-fun b!1761894 () Bool)

(assert (=> b!1761894 (= e!1127496 (not (= (head!4076 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (c!286774 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))))

(declare-fun b!1761895 () Bool)

(assert (=> b!1761895 (= e!1127500 (matchR!2264 (derivativeStep!1230 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (head!4076 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))) (tail!2633 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun b!1761896 () Bool)

(declare-fun e!1127499 () Bool)

(assert (=> b!1761896 (= e!1127499 (= lt!681060 call!110760))))

(declare-fun b!1761897 () Bool)

(assert (=> b!1761897 (= e!1127499 e!1127497)))

(declare-fun c!287136 () Bool)

(assert (=> b!1761897 (= c!287136 ((_ is EmptyLang!4791) (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun b!1761898 () Bool)

(assert (=> b!1761898 (= e!1127501 e!1127498)))

(declare-fun res!792945 () Bool)

(assert (=> b!1761898 (=> (not res!792945) (not e!1127498))))

(assert (=> b!1761898 (= res!792945 (not lt!681060))))

(declare-fun b!1761899 () Bool)

(assert (=> b!1761899 (= e!1127495 (= (head!4076 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (c!286774 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))))

(declare-fun d!538316 () Bool)

(assert (=> d!538316 e!1127499))

(declare-fun c!287138 () Bool)

(assert (=> d!538316 (= c!287138 ((_ is EmptyExpr!4791) (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(assert (=> d!538316 (= lt!681060 e!1127500)))

(declare-fun c!287137 () Bool)

(assert (=> d!538316 (= c!287137 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(assert (=> d!538316 (validRegex!1935 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(assert (=> d!538316 (= (matchR!2264 (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) lt!681060)))

(declare-fun b!1761889 () Bool)

(assert (=> b!1761889 (= e!1127497 (not lt!681060))))

(assert (= (and d!538316 c!287137) b!1761890))

(assert (= (and d!538316 (not c!287137)) b!1761895))

(assert (= (and d!538316 c!287138) b!1761896))

(assert (= (and d!538316 (not c!287138)) b!1761897))

(assert (= (and b!1761897 c!287136) b!1761889))

(assert (= (and b!1761897 (not c!287136)) b!1761891))

(assert (= (and b!1761891 (not res!792947)) b!1761887))

(assert (= (and b!1761887 res!792944) b!1761886))

(assert (= (and b!1761886 res!792948) b!1761888))

(assert (= (and b!1761888 res!792946) b!1761899))

(assert (= (and b!1761887 (not res!792943)) b!1761898))

(assert (= (and b!1761898 res!792945) b!1761893))

(assert (= (and b!1761893 (not res!792949)) b!1761892))

(assert (= (and b!1761892 (not res!792942)) b!1761894))

(assert (= (or b!1761896 b!1761886 b!1761893) bm!110755))

(assert (=> bm!110755 m!2176843))

(assert (=> bm!110755 m!2176845))

(assert (=> b!1761892 m!2176843))

(declare-fun m!2178269 () Bool)

(assert (=> b!1761892 m!2178269))

(assert (=> b!1761892 m!2178269))

(declare-fun m!2178271 () Bool)

(assert (=> b!1761892 m!2178271))

(assert (=> b!1761890 m!2176853))

(declare-fun m!2178275 () Bool)

(assert (=> b!1761890 m!2178275))

(assert (=> d!538316 m!2176843))

(assert (=> d!538316 m!2176845))

(assert (=> d!538316 m!2176853))

(declare-fun m!2178277 () Bool)

(assert (=> d!538316 m!2178277))

(assert (=> b!1761888 m!2176843))

(assert (=> b!1761888 m!2178269))

(assert (=> b!1761888 m!2178269))

(assert (=> b!1761888 m!2178271))

(assert (=> b!1761895 m!2176843))

(declare-fun m!2178279 () Bool)

(assert (=> b!1761895 m!2178279))

(assert (=> b!1761895 m!2176853))

(assert (=> b!1761895 m!2178279))

(declare-fun m!2178283 () Bool)

(assert (=> b!1761895 m!2178283))

(assert (=> b!1761895 m!2176843))

(assert (=> b!1761895 m!2178269))

(assert (=> b!1761895 m!2178283))

(assert (=> b!1761895 m!2178269))

(declare-fun m!2178287 () Bool)

(assert (=> b!1761895 m!2178287))

(assert (=> b!1761899 m!2176843))

(assert (=> b!1761899 m!2178279))

(assert (=> b!1761894 m!2176843))

(assert (=> b!1761894 m!2178279))

(assert (=> b!1760890 d!538316))

(declare-fun d!538320 () Bool)

(declare-fun lt!681061 () Regex!4791)

(assert (=> d!538320 (validRegex!1935 lt!681061)))

(declare-fun e!1127502 () Regex!4791)

(assert (=> d!538320 (= lt!681061 e!1127502)))

(declare-fun c!287142 () Bool)

(assert (=> d!538320 (= c!287142 (or ((_ is EmptyExpr!4791) (regex!3463 lt!680356)) ((_ is EmptyLang!4791) (regex!3463 lt!680356))))))

(assert (=> d!538320 (validRegex!1935 (regex!3463 lt!680356))))

(assert (=> d!538320 (= (derivativeStep!1230 (regex!3463 lt!680356) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) lt!681061)))

(declare-fun call!110762 () Regex!4791)

(declare-fun b!1761900 () Bool)

(declare-fun e!1127504 () Regex!4791)

(declare-fun call!110764 () Regex!4791)

(assert (=> b!1761900 (= e!1127504 (Union!4791 (Concat!8345 call!110762 (regTwo!10094 (regex!3463 lt!680356))) call!110764))))

(declare-fun b!1761901 () Bool)

(declare-fun e!1127503 () Regex!4791)

(assert (=> b!1761901 (= e!1127503 (Concat!8345 call!110762 (regex!3463 lt!680356)))))

(declare-fun b!1761902 () Bool)

(declare-fun e!1127505 () Regex!4791)

(assert (=> b!1761902 (= e!1127505 e!1127503)))

(declare-fun c!287143 () Bool)

(assert (=> b!1761902 (= c!287143 ((_ is Star!4791) (regex!3463 lt!680356)))))

(declare-fun b!1761903 () Bool)

(declare-fun c!287140 () Bool)

(assert (=> b!1761903 (= c!287140 ((_ is Union!4791) (regex!3463 lt!680356)))))

(declare-fun e!1127506 () Regex!4791)

(assert (=> b!1761903 (= e!1127506 e!1127505)))

(declare-fun b!1761904 () Bool)

(assert (=> b!1761904 (= e!1127502 e!1127506)))

(declare-fun c!287139 () Bool)

(assert (=> b!1761904 (= c!287139 ((_ is ElementMatch!4791) (regex!3463 lt!680356)))))

(declare-fun b!1761905 () Bool)

(assert (=> b!1761905 (= e!1127502 EmptyLang!4791)))

(declare-fun bm!110756 () Bool)

(declare-fun call!110761 () Regex!4791)

(declare-fun c!287141 () Bool)

(assert (=> bm!110756 (= call!110761 (derivativeStep!1230 (ite c!287140 (regOne!10095 (regex!3463 lt!680356)) (ite c!287141 (regTwo!10094 (regex!3463 lt!680356)) (regOne!10094 (regex!3463 lt!680356)))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun bm!110757 () Bool)

(declare-fun call!110763 () Regex!4791)

(assert (=> bm!110757 (= call!110762 call!110763)))

(declare-fun b!1761906 () Bool)

(assert (=> b!1761906 (= c!287141 (nullable!1461 (regOne!10094 (regex!3463 lt!680356))))))

(assert (=> b!1761906 (= e!1127503 e!1127504)))

(declare-fun b!1761907 () Bool)

(assert (=> b!1761907 (= e!1127506 (ite (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (c!286774 (regex!3463 lt!680356))) EmptyExpr!4791 EmptyLang!4791))))

(declare-fun bm!110758 () Bool)

(assert (=> bm!110758 (= call!110763 (derivativeStep!1230 (ite c!287140 (regTwo!10095 (regex!3463 lt!680356)) (ite c!287143 (reg!5120 (regex!3463 lt!680356)) (regOne!10094 (regex!3463 lt!680356)))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun bm!110759 () Bool)

(assert (=> bm!110759 (= call!110764 call!110761)))

(declare-fun b!1761908 () Bool)

(assert (=> b!1761908 (= e!1127505 (Union!4791 call!110761 call!110763))))

(declare-fun b!1761909 () Bool)

(assert (=> b!1761909 (= e!1127504 (Union!4791 (Concat!8345 call!110764 (regTwo!10094 (regex!3463 lt!680356))) EmptyLang!4791))))

(assert (= (and d!538320 c!287142) b!1761905))

(assert (= (and d!538320 (not c!287142)) b!1761904))

(assert (= (and b!1761904 c!287139) b!1761907))

(assert (= (and b!1761904 (not c!287139)) b!1761903))

(assert (= (and b!1761903 c!287140) b!1761908))

(assert (= (and b!1761903 (not c!287140)) b!1761902))

(assert (= (and b!1761902 c!287143) b!1761901))

(assert (= (and b!1761902 (not c!287143)) b!1761906))

(assert (= (and b!1761906 c!287141) b!1761900))

(assert (= (and b!1761906 (not c!287141)) b!1761909))

(assert (= (or b!1761900 b!1761909) bm!110759))

(assert (= (or b!1761901 b!1761900) bm!110757))

(assert (= (or b!1761908 bm!110757) bm!110758))

(assert (= (or b!1761908 bm!110759) bm!110756))

(declare-fun m!2178293 () Bool)

(assert (=> d!538320 m!2178293))

(assert (=> d!538320 m!2176849))

(assert (=> bm!110756 m!2176851))

(declare-fun m!2178295 () Bool)

(assert (=> bm!110756 m!2178295))

(declare-fun m!2178299 () Bool)

(assert (=> b!1761906 m!2178299))

(assert (=> bm!110758 m!2176851))

(declare-fun m!2178301 () Bool)

(assert (=> bm!110758 m!2178301))

(assert (=> b!1760890 d!538320))

(assert (=> b!1760890 d!538070))

(assert (=> b!1760890 d!538222))

(assert (=> b!1760950 d!537870))

(declare-fun d!538328 () Bool)

(declare-fun lt!681063 () Int)

(assert (=> d!538328 (>= lt!681063 0)))

(declare-fun e!1127509 () Int)

(assert (=> d!538328 (= lt!681063 e!1127509)))

(declare-fun c!287144 () Bool)

(assert (=> d!538328 (= c!287144 ((_ is Nil!19382) (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))))))

(assert (=> d!538328 (= (size!15395 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))) lt!681063)))

(declare-fun b!1761911 () Bool)

(assert (=> b!1761911 (= e!1127509 0)))

(declare-fun b!1761912 () Bool)

(assert (=> b!1761912 (= e!1127509 (+ 1 (size!15395 (t!164035 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))))))))

(assert (= (and d!538328 c!287144) b!1761911))

(assert (= (and d!538328 (not c!287144)) b!1761912))

(declare-fun m!2178309 () Bool)

(assert (=> b!1761912 m!2178309))

(assert (=> b!1760950 d!538328))

(assert (=> b!1760967 d!537914))

(declare-fun d!538330 () Bool)

(assert (=> d!538330 (= (isEmpty!12227 lt!680348) ((_ is Nil!19382) lt!680348))))

(assert (=> bm!110641 d!538330))

(declare-fun bs!404135 () Bool)

(declare-fun d!538334 () Bool)

(assert (= bs!404135 (and d!538334 d!537814)))

(declare-fun lambda!70198 () Int)

(assert (=> bs!404135 (= (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= lambda!70198 lambda!70150))))

(declare-fun bs!404136 () Bool)

(assert (= bs!404136 (and d!538334 d!538156)))

(assert (=> bs!404136 (= (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 rule!422))) (= lambda!70198 lambda!70195))))

(declare-fun bs!404137 () Bool)

(assert (= bs!404137 (and d!538334 d!538302)))

(assert (=> bs!404137 (= (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (= lambda!70198 lambda!70197))))

(assert (=> d!538334 true))

(assert (=> d!538334 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 token!523)))) (dynLambda!9335 order!12291 lambda!70198))))

(assert (=> d!538334 (= (equivClasses!1317 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 token!523)))) (Forall2!561 lambda!70198))))

(declare-fun bs!404138 () Bool)

(assert (= bs!404138 d!538334))

(declare-fun m!2178317 () Bool)

(assert (=> bs!404138 m!2178317))

(assert (=> b!1760814 d!538334))

(assert (=> b!1760879 d!538140))

(declare-fun d!538338 () Bool)

(declare-fun c!287145 () Bool)

(assert (=> d!538338 (= c!287145 (isEmpty!12227 (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(declare-fun e!1127511 () Bool)

(assert (=> d!538338 (= (prefixMatch!674 (derivativeStep!1230 (rulesRegex!819 thiss!24550 rules!3447) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))) (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))) e!1127511)))

(declare-fun b!1761914 () Bool)

(assert (=> b!1761914 (= e!1127511 (not (lostCause!571 (derivativeStep!1230 (rulesRegex!819 thiss!24550 rules!3447) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))))

(declare-fun b!1761915 () Bool)

(assert (=> b!1761915 (= e!1127511 (prefixMatch!674 (derivativeStep!1230 (derivativeStep!1230 (rulesRegex!819 thiss!24550 rules!3447) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))) (head!4076 (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))) (tail!2633 (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))))

(assert (= (and d!538338 c!287145) b!1761914))

(assert (= (and d!538338 (not c!287145)) b!1761915))

(assert (=> d!538338 m!2176183))

(declare-fun m!2178319 () Bool)

(assert (=> d!538338 m!2178319))

(assert (=> b!1761914 m!2176181))

(declare-fun m!2178321 () Bool)

(assert (=> b!1761914 m!2178321))

(assert (=> b!1761915 m!2176183))

(declare-fun m!2178323 () Bool)

(assert (=> b!1761915 m!2178323))

(assert (=> b!1761915 m!2176181))

(assert (=> b!1761915 m!2178323))

(declare-fun m!2178325 () Bool)

(assert (=> b!1761915 m!2178325))

(assert (=> b!1761915 m!2176183))

(declare-fun m!2178327 () Bool)

(assert (=> b!1761915 m!2178327))

(assert (=> b!1761915 m!2178325))

(assert (=> b!1761915 m!2178327))

(declare-fun m!2178329 () Bool)

(assert (=> b!1761915 m!2178329))

(assert (=> b!1760414 d!538338))

(declare-fun d!538340 () Bool)

(declare-fun lt!681064 () Regex!4791)

(assert (=> d!538340 (validRegex!1935 lt!681064)))

(declare-fun e!1127512 () Regex!4791)

(assert (=> d!538340 (= lt!681064 e!1127512)))

(declare-fun c!287149 () Bool)

(assert (=> d!538340 (= c!287149 (or ((_ is EmptyExpr!4791) (rulesRegex!819 thiss!24550 rules!3447)) ((_ is EmptyLang!4791) (rulesRegex!819 thiss!24550 rules!3447))))))

(assert (=> d!538340 (validRegex!1935 (rulesRegex!819 thiss!24550 rules!3447))))

(assert (=> d!538340 (= (derivativeStep!1230 (rulesRegex!819 thiss!24550 rules!3447) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))) lt!681064)))

(declare-fun call!110768 () Regex!4791)

(declare-fun e!1127514 () Regex!4791)

(declare-fun call!110766 () Regex!4791)

(declare-fun b!1761916 () Bool)

(assert (=> b!1761916 (= e!1127514 (Union!4791 (Concat!8345 call!110766 (regTwo!10094 (rulesRegex!819 thiss!24550 rules!3447))) call!110768))))

(declare-fun e!1127513 () Regex!4791)

(declare-fun b!1761917 () Bool)

(assert (=> b!1761917 (= e!1127513 (Concat!8345 call!110766 (rulesRegex!819 thiss!24550 rules!3447)))))

(declare-fun b!1761918 () Bool)

(declare-fun e!1127515 () Regex!4791)

(assert (=> b!1761918 (= e!1127515 e!1127513)))

(declare-fun c!287150 () Bool)

(assert (=> b!1761918 (= c!287150 ((_ is Star!4791) (rulesRegex!819 thiss!24550 rules!3447)))))

(declare-fun b!1761919 () Bool)

(declare-fun c!287147 () Bool)

(assert (=> b!1761919 (= c!287147 ((_ is Union!4791) (rulesRegex!819 thiss!24550 rules!3447)))))

(declare-fun e!1127516 () Regex!4791)

(assert (=> b!1761919 (= e!1127516 e!1127515)))

(declare-fun b!1761920 () Bool)

(assert (=> b!1761920 (= e!1127512 e!1127516)))

(declare-fun c!287146 () Bool)

(assert (=> b!1761920 (= c!287146 ((_ is ElementMatch!4791) (rulesRegex!819 thiss!24550 rules!3447)))))

(declare-fun b!1761921 () Bool)

(assert (=> b!1761921 (= e!1127512 EmptyLang!4791)))

(declare-fun c!287148 () Bool)

(declare-fun bm!110760 () Bool)

(declare-fun call!110765 () Regex!4791)

(assert (=> bm!110760 (= call!110765 (derivativeStep!1230 (ite c!287147 (regOne!10095 (rulesRegex!819 thiss!24550 rules!3447)) (ite c!287148 (regTwo!10094 (rulesRegex!819 thiss!24550 rules!3447)) (regOne!10094 (rulesRegex!819 thiss!24550 rules!3447)))) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(declare-fun bm!110761 () Bool)

(declare-fun call!110767 () Regex!4791)

(assert (=> bm!110761 (= call!110766 call!110767)))

(declare-fun b!1761922 () Bool)

(assert (=> b!1761922 (= c!287148 (nullable!1461 (regOne!10094 (rulesRegex!819 thiss!24550 rules!3447))))))

(assert (=> b!1761922 (= e!1127513 e!1127514)))

(declare-fun b!1761923 () Bool)

(assert (=> b!1761923 (= e!1127516 (ite (= (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))) (c!286774 (rulesRegex!819 thiss!24550 rules!3447))) EmptyExpr!4791 EmptyLang!4791))))

(declare-fun bm!110762 () Bool)

(assert (=> bm!110762 (= call!110767 (derivativeStep!1230 (ite c!287147 (regTwo!10095 (rulesRegex!819 thiss!24550 rules!3447)) (ite c!287150 (reg!5120 (rulesRegex!819 thiss!24550 rules!3447)) (regOne!10094 (rulesRegex!819 thiss!24550 rules!3447)))) (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(declare-fun bm!110763 () Bool)

(assert (=> bm!110763 (= call!110768 call!110765)))

(declare-fun b!1761924 () Bool)

(assert (=> b!1761924 (= e!1127515 (Union!4791 call!110765 call!110767))))

(declare-fun b!1761925 () Bool)

(assert (=> b!1761925 (= e!1127514 (Union!4791 (Concat!8345 call!110768 (regTwo!10094 (rulesRegex!819 thiss!24550 rules!3447))) EmptyLang!4791))))

(assert (= (and d!538340 c!287149) b!1761921))

(assert (= (and d!538340 (not c!287149)) b!1761920))

(assert (= (and b!1761920 c!287146) b!1761923))

(assert (= (and b!1761920 (not c!287146)) b!1761919))

(assert (= (and b!1761919 c!287147) b!1761924))

(assert (= (and b!1761919 (not c!287147)) b!1761918))

(assert (= (and b!1761918 c!287150) b!1761917))

(assert (= (and b!1761918 (not c!287150)) b!1761922))

(assert (= (and b!1761922 c!287148) b!1761916))

(assert (= (and b!1761922 (not c!287148)) b!1761925))

(assert (= (or b!1761916 b!1761925) bm!110763))

(assert (= (or b!1761917 b!1761916) bm!110761))

(assert (= (or b!1761924 bm!110761) bm!110762))

(assert (= (or b!1761924 bm!110763) bm!110760))

(declare-fun m!2178331 () Bool)

(assert (=> d!538340 m!2178331))

(assert (=> d!538340 m!2176011))

(declare-fun m!2178333 () Bool)

(assert (=> d!538340 m!2178333))

(assert (=> bm!110760 m!2176179))

(declare-fun m!2178335 () Bool)

(assert (=> bm!110760 m!2178335))

(declare-fun m!2178337 () Bool)

(assert (=> b!1761922 m!2178337))

(assert (=> bm!110762 m!2176179))

(declare-fun m!2178339 () Bool)

(assert (=> bm!110762 m!2178339))

(assert (=> b!1760414 d!538340))

(declare-fun d!538342 () Bool)

(assert (=> d!538342 (= (head!4076 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))) (h!24783 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(assert (=> b!1760414 d!538342))

(declare-fun d!538344 () Bool)

(assert (=> d!538344 (= (tail!2633 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))) (t!164035 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(assert (=> b!1760414 d!538344))

(declare-fun d!538346 () Bool)

(assert (=> d!538346 (= (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) ((_ is Nil!19382) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> bm!110640 d!538346))

(declare-fun d!538348 () Bool)

(assert (=> d!538348 (= (isDefined!3292 lt!680513) (not (isEmpty!12230 lt!680513)))))

(declare-fun bs!404140 () Bool)

(assert (= bs!404140 d!538348))

(assert (=> bs!404140 m!2176487))

(assert (=> b!1760587 d!538348))

(declare-fun d!538352 () Bool)

(assert (=> d!538352 (= (inv!25178 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) (<= (size!15395 (innerList!6507 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) 2147483647))))

(declare-fun bs!404141 () Bool)

(assert (= bs!404141 d!538352))

(declare-fun m!2178345 () Bool)

(assert (=> bs!404141 m!2178345))

(assert (=> b!1761027 d!538352))

(declare-fun b!1761935 () Bool)

(declare-fun e!1127522 () Bool)

(assert (=> b!1761935 (= e!1127522 (>= (size!15395 (tail!2633 lt!680363)) (size!15395 (tail!2633 lt!680342))))))

(declare-fun d!538354 () Bool)

(assert (=> d!538354 e!1127522))

(declare-fun res!792957 () Bool)

(assert (=> d!538354 (=> res!792957 e!1127522)))

(declare-fun lt!681071 () Bool)

(assert (=> d!538354 (= res!792957 (not lt!681071))))

(declare-fun e!1127521 () Bool)

(assert (=> d!538354 (= lt!681071 e!1127521)))

(declare-fun res!792954 () Bool)

(assert (=> d!538354 (=> res!792954 e!1127521)))

(assert (=> d!538354 (= res!792954 ((_ is Nil!19382) (tail!2633 lt!680342)))))

(assert (=> d!538354 (= (isPrefix!1703 (tail!2633 lt!680342) (tail!2633 lt!680363)) lt!681071)))

(declare-fun b!1761932 () Bool)

(declare-fun e!1127523 () Bool)

(assert (=> b!1761932 (= e!1127521 e!1127523)))

(declare-fun res!792956 () Bool)

(assert (=> b!1761932 (=> (not res!792956) (not e!1127523))))

(assert (=> b!1761932 (= res!792956 (not ((_ is Nil!19382) (tail!2633 lt!680363))))))

(declare-fun b!1761934 () Bool)

(assert (=> b!1761934 (= e!1127523 (isPrefix!1703 (tail!2633 (tail!2633 lt!680342)) (tail!2633 (tail!2633 lt!680363))))))

(declare-fun b!1761933 () Bool)

(declare-fun res!792955 () Bool)

(assert (=> b!1761933 (=> (not res!792955) (not e!1127523))))

(assert (=> b!1761933 (= res!792955 (= (head!4076 (tail!2633 lt!680342)) (head!4076 (tail!2633 lt!680363))))))

(assert (= (and d!538354 (not res!792954)) b!1761932))

(assert (= (and b!1761932 res!792956) b!1761933))

(assert (= (and b!1761933 res!792955) b!1761934))

(assert (= (and d!538354 (not res!792957)) b!1761935))

(assert (=> b!1761935 m!2176425))

(assert (=> b!1761935 m!2177159))

(assert (=> b!1761935 m!2176423))

(declare-fun m!2178347 () Bool)

(assert (=> b!1761935 m!2178347))

(assert (=> b!1761934 m!2176423))

(declare-fun m!2178351 () Bool)

(assert (=> b!1761934 m!2178351))

(assert (=> b!1761934 m!2176425))

(assert (=> b!1761934 m!2177165))

(assert (=> b!1761934 m!2178351))

(assert (=> b!1761934 m!2177165))

(declare-fun m!2178357 () Bool)

(assert (=> b!1761934 m!2178357))

(assert (=> b!1761933 m!2176423))

(declare-fun m!2178361 () Bool)

(assert (=> b!1761933 m!2178361))

(assert (=> b!1761933 m!2176425))

(assert (=> b!1761933 m!2177171))

(assert (=> b!1760561 d!538354))

(declare-fun d!538356 () Bool)

(assert (=> d!538356 (= (tail!2633 lt!680342) (t!164035 lt!680342))))

(assert (=> b!1760561 d!538356))

(assert (=> b!1760561 d!537920))

(assert (=> b!1760947 d!537870))

(declare-fun d!538360 () Bool)

(assert (=> d!538360 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657))))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657))))))))

(declare-fun b_lambda!57049 () Bool)

(assert (=> (not b_lambda!57049) (not d!538360)))

(declare-fun t!164227 () Bool)

(declare-fun tb!106185 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164227) tb!106185))

(declare-fun result!127744 () Bool)

(assert (=> tb!106185 (= result!127744 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))))))))

(declare-fun m!2178367 () Bool)

(assert (=> tb!106185 m!2178367))

(assert (=> d!538360 t!164227))

(declare-fun b_and!133005 () Bool)

(assert (= b_and!132965 (and (=> t!164227 result!127744) b_and!133005)))

(declare-fun t!164229 () Bool)

(declare-fun tb!106187 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164229) tb!106187))

(declare-fun result!127746 () Bool)

(assert (= result!127746 result!127744))

(assert (=> d!538360 t!164229))

(declare-fun b_and!133007 () Bool)

(assert (= b_and!132967 (and (=> t!164229 result!127746) b_and!133007)))

(declare-fun t!164231 () Bool)

(declare-fun tb!106189 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164231) tb!106189))

(declare-fun result!127748 () Bool)

(assert (= result!127748 result!127744))

(assert (=> d!538360 t!164231))

(declare-fun b_and!133009 () Bool)

(assert (= b_and!132969 (and (=> t!164231 result!127748) b_and!133009)))

(declare-fun tb!106191 () Bool)

(declare-fun t!164233 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164233) tb!106191))

(declare-fun result!127750 () Bool)

(assert (= result!127750 result!127744))

(assert (=> d!538360 t!164233))

(declare-fun b_and!133011 () Bool)

(assert (= b_and!132971 (and (=> t!164233 result!127750) b_and!133011)))

(assert (=> d!538360 m!2176883))

(declare-fun m!2178369 () Bool)

(assert (=> d!538360 m!2178369))

(assert (=> b!1760947 d!538360))

(declare-fun d!538362 () Bool)

(assert (=> d!538362 (= (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))) (fromListB!1110 (originalCharacters!4277 (_1!10897 (get!5897 lt!680657)))))))

(declare-fun bs!404142 () Bool)

(assert (= bs!404142 d!538362))

(declare-fun m!2178371 () Bool)

(assert (=> bs!404142 m!2178371))

(assert (=> b!1760947 d!538362))

(declare-fun d!538364 () Bool)

(declare-fun lt!681072 () Int)

(assert (=> d!538364 (>= lt!681072 0)))

(declare-fun e!1127527 () Int)

(assert (=> d!538364 (= lt!681072 e!1127527)))

(declare-fun c!287155 () Bool)

(assert (=> d!538364 (= c!287155 ((_ is Nil!19382) (list!7861 lt!680349)))))

(assert (=> d!538364 (= (size!15395 (list!7861 lt!680349)) lt!681072)))

(declare-fun b!1761940 () Bool)

(assert (=> b!1761940 (= e!1127527 0)))

(declare-fun b!1761941 () Bool)

(assert (=> b!1761941 (= e!1127527 (+ 1 (size!15395 (t!164035 (list!7861 lt!680349)))))))

(assert (= (and d!538364 c!287155) b!1761940))

(assert (= (and d!538364 (not c!287155)) b!1761941))

(declare-fun m!2178373 () Bool)

(assert (=> b!1761941 m!2178373))

(assert (=> d!537818 d!538364))

(assert (=> d!537818 d!537656))

(declare-fun d!538366 () Bool)

(declare-fun lt!681075 () Int)

(assert (=> d!538366 (= lt!681075 (size!15395 (list!7864 (c!286775 lt!680349))))))

(assert (=> d!538366 (= lt!681075 (ite ((_ is Empty!6447) (c!286775 lt!680349)) 0 (ite ((_ is Leaf!9399) (c!286775 lt!680349)) (csize!13125 (c!286775 lt!680349)) (csize!13124 (c!286775 lt!680349)))))))

(assert (=> d!538366 (= (size!15397 (c!286775 lt!680349)) lt!681075)))

(declare-fun bs!404144 () Bool)

(assert (= bs!404144 d!538366))

(assert (=> bs!404144 m!2176437))

(assert (=> bs!404144 m!2176437))

(declare-fun m!2178395 () Bool)

(assert (=> bs!404144 m!2178395))

(assert (=> d!537818 d!538366))

(assert (=> b!1760584 d!537864))

(declare-fun d!538380 () Bool)

(assert (=> d!538380 (= (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513))))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513))))))))

(declare-fun b_lambda!57051 () Bool)

(assert (=> (not b_lambda!57051) (not d!538380)))

(declare-fun t!164236 () Bool)

(declare-fun tb!106193 () Bool)

(assert (=> (and b!1760292 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164236) tb!106193))

(declare-fun result!127752 () Bool)

(assert (=> tb!106193 (= result!127752 (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513))))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513)))))))))

(declare-fun m!2178397 () Bool)

(assert (=> tb!106193 m!2178397))

(assert (=> d!538380 t!164236))

(declare-fun b_and!133013 () Bool)

(assert (= b_and!133005 (and (=> t!164236 result!127752) b_and!133013)))

(declare-fun t!164238 () Bool)

(declare-fun tb!106195 () Bool)

(assert (=> (and b!1760298 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164238) tb!106195))

(declare-fun result!127754 () Bool)

(assert (= result!127754 result!127752))

(assert (=> d!538380 t!164238))

(declare-fun b_and!133015 () Bool)

(assert (= b_and!133007 (and (=> t!164238 result!127754) b_and!133015)))

(declare-fun tb!106197 () Bool)

(declare-fun t!164240 () Bool)

(assert (=> (and b!1760302 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164240) tb!106197))

(declare-fun result!127756 () Bool)

(assert (= result!127756 result!127752))

(assert (=> d!538380 t!164240))

(declare-fun b_and!133017 () Bool)

(assert (= b_and!133009 (and (=> t!164240 result!127756) b_and!133017)))

(declare-fun t!164242 () Bool)

(declare-fun tb!106199 () Bool)

(assert (=> (and b!1761017 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164242) tb!106199))

(declare-fun result!127758 () Bool)

(assert (= result!127758 result!127752))

(assert (=> d!538380 t!164242))

(declare-fun b_and!133019 () Bool)

(assert (= b_and!133011 (and (=> t!164242 result!127758) b_and!133019)))

(assert (=> d!538380 m!2176477))

(declare-fun m!2178399 () Bool)

(assert (=> d!538380 m!2178399))

(assert (=> b!1760584 d!538380))

(declare-fun d!538382 () Bool)

(assert (=> d!538382 (= (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513)))) (fromListB!1110 (originalCharacters!4277 (_1!10897 (get!5897 lt!680513)))))))

(declare-fun bs!404145 () Bool)

(assert (= bs!404145 d!538382))

(declare-fun m!2178401 () Bool)

(assert (=> bs!404145 m!2178401))

(assert (=> b!1760584 d!538382))

(declare-fun bs!404146 () Bool)

(declare-fun d!538384 () Bool)

(assert (= bs!404146 (and d!538384 b!1760284)))

(declare-fun lambda!70199 () Int)

(assert (=> bs!404146 (= (and (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70199 lambda!70132))))

(declare-fun bs!404147 () Bool)

(assert (= bs!404147 (and d!538384 d!537762)))

(assert (=> bs!404147 (= (and (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70199 lambda!70147))))

(declare-fun bs!404148 () Bool)

(assert (= bs!404148 (and d!538384 d!537850)))

(assert (=> bs!404148 (= (and (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (h!24784 rules!3447)))) (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (h!24784 rules!3447))))) (= lambda!70199 lambda!70162))))

(declare-fun bs!404149 () Bool)

(assert (= bs!404149 (and d!538384 d!538120)))

(assert (=> bs!404149 (= (and (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70199 lambda!70192))))

(assert (=> d!538384 true))

(assert (=> d!538384 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 rule!422))) (dynLambda!9330 order!12285 lambda!70199))))

(assert (=> d!538384 true))

(assert (=> d!538384 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 rule!422))) (dynLambda!9330 order!12285 lambda!70199))))

(assert (=> d!538384 (= (semiInverseModEq!1376 (toChars!4841 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 rule!422))) (Forall!830 lambda!70199))))

(declare-fun bs!404150 () Bool)

(assert (= bs!404150 d!538384))

(declare-fun m!2178403 () Bool)

(assert (=> bs!404150 m!2178403))

(assert (=> d!537756 d!538384))

(assert (=> b!1760581 d!537742))

(assert (=> b!1760581 d!537782))

(declare-fun b!1761960 () Bool)

(declare-fun res!792972 () Bool)

(declare-fun e!1127538 () Bool)

(assert (=> b!1761960 (=> (not res!792972) (not e!1127538))))

(declare-fun call!110769 () Bool)

(assert (=> b!1761960 (= res!792972 (not call!110769))))

(declare-fun b!1761961 () Bool)

(declare-fun res!792967 () Bool)

(declare-fun e!1127544 () Bool)

(assert (=> b!1761961 (=> res!792967 e!1127544)))

(assert (=> b!1761961 (= res!792967 e!1127538)))

(declare-fun res!792968 () Bool)

(assert (=> b!1761961 (=> (not res!792968) (not e!1127538))))

(declare-fun lt!681076 () Bool)

(assert (=> b!1761961 (= res!792968 lt!681076)))

(declare-fun b!1761962 () Bool)

(declare-fun res!792970 () Bool)

(assert (=> b!1761962 (=> (not res!792970) (not e!1127538))))

(assert (=> b!1761962 (= res!792970 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1761964 () Bool)

(declare-fun e!1127543 () Bool)

(assert (=> b!1761964 (= e!1127543 (nullable!1461 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))))

(declare-fun b!1761965 () Bool)

(declare-fun res!792971 () Bool)

(assert (=> b!1761965 (=> res!792971 e!1127544)))

(assert (=> b!1761965 (= res!792971 (not ((_ is ElementMatch!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))))

(declare-fun e!1127540 () Bool)

(assert (=> b!1761965 (= e!1127540 e!1127544)))

(declare-fun b!1761966 () Bool)

(declare-fun res!792966 () Bool)

(declare-fun e!1127539 () Bool)

(assert (=> b!1761966 (=> res!792966 e!1127539)))

(assert (=> b!1761966 (= res!792966 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))))

(declare-fun bm!110764 () Bool)

(assert (=> bm!110764 (= call!110769 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun b!1761967 () Bool)

(declare-fun e!1127541 () Bool)

(assert (=> b!1761967 (= e!1127541 e!1127539)))

(declare-fun res!792973 () Bool)

(assert (=> b!1761967 (=> res!792973 e!1127539)))

(assert (=> b!1761967 (= res!792973 call!110769)))

(declare-fun b!1761968 () Bool)

(assert (=> b!1761968 (= e!1127539 (not (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (c!286774 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))))))

(declare-fun b!1761969 () Bool)

(assert (=> b!1761969 (= e!1127543 (matchR!2264 (derivativeStep!1230 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1761970 () Bool)

(declare-fun e!1127542 () Bool)

(assert (=> b!1761970 (= e!1127542 (= lt!681076 call!110769))))

(declare-fun b!1761971 () Bool)

(assert (=> b!1761971 (= e!1127542 e!1127540)))

(declare-fun c!287161 () Bool)

(assert (=> b!1761971 (= c!287161 ((_ is EmptyLang!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))))

(declare-fun b!1761972 () Bool)

(assert (=> b!1761972 (= e!1127544 e!1127541)))

(declare-fun res!792969 () Bool)

(assert (=> b!1761972 (=> (not res!792969) (not e!1127541))))

(assert (=> b!1761972 (= res!792969 (not lt!681076))))

(declare-fun b!1761973 () Bool)

(assert (=> b!1761973 (= e!1127538 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) (c!286774 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))))

(declare-fun d!538386 () Bool)

(assert (=> d!538386 e!1127542))

(declare-fun c!287163 () Bool)

(assert (=> d!538386 (= c!287163 ((_ is EmptyExpr!4791) (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))))

(assert (=> d!538386 (= lt!681076 e!1127543)))

(declare-fun c!287162 () Bool)

(assert (=> d!538386 (= c!287162 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> d!538386 (validRegex!1935 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(assert (=> d!538386 (= (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))) lt!681076)))

(declare-fun b!1761963 () Bool)

(assert (=> b!1761963 (= e!1127540 (not lt!681076))))

(assert (= (and d!538386 c!287162) b!1761964))

(assert (= (and d!538386 (not c!287162)) b!1761969))

(assert (= (and d!538386 c!287163) b!1761970))

(assert (= (and d!538386 (not c!287163)) b!1761971))

(assert (= (and b!1761971 c!287161) b!1761963))

(assert (= (and b!1761971 (not c!287161)) b!1761965))

(assert (= (and b!1761965 (not res!792971)) b!1761961))

(assert (= (and b!1761961 res!792968) b!1761960))

(assert (= (and b!1761960 res!792972) b!1761962))

(assert (= (and b!1761962 res!792970) b!1761973))

(assert (= (and b!1761961 (not res!792967)) b!1761972))

(assert (= (and b!1761972 res!792969) b!1761967))

(assert (= (and b!1761967 (not res!792973)) b!1761966))

(assert (= (and b!1761966 (not res!792966)) b!1761968))

(assert (= (or b!1761970 b!1761960 b!1761967) bm!110764))

(assert (=> bm!110764 m!2176067))

(assert (=> bm!110764 m!2176841))

(assert (=> b!1761966 m!2176067))

(assert (=> b!1761966 m!2176843))

(assert (=> b!1761966 m!2176843))

(assert (=> b!1761966 m!2176845))

(declare-fun m!2178405 () Bool)

(assert (=> b!1761964 m!2178405))

(assert (=> d!538386 m!2176067))

(assert (=> d!538386 m!2176841))

(declare-fun m!2178407 () Bool)

(assert (=> d!538386 m!2178407))

(assert (=> b!1761962 m!2176067))

(assert (=> b!1761962 m!2176843))

(assert (=> b!1761962 m!2176843))

(assert (=> b!1761962 m!2176845))

(assert (=> b!1761969 m!2176067))

(assert (=> b!1761969 m!2176851))

(assert (=> b!1761969 m!2176851))

(declare-fun m!2178409 () Bool)

(assert (=> b!1761969 m!2178409))

(assert (=> b!1761969 m!2176067))

(assert (=> b!1761969 m!2176843))

(assert (=> b!1761969 m!2178409))

(assert (=> b!1761969 m!2176843))

(declare-fun m!2178411 () Bool)

(assert (=> b!1761969 m!2178411))

(assert (=> b!1761973 m!2176067))

(assert (=> b!1761973 m!2176851))

(assert (=> b!1761968 m!2176067))

(assert (=> b!1761968 m!2176851))

(assert (=> b!1760581 d!538386))

(assert (=> b!1760581 d!537746))

(declare-fun d!538388 () Bool)

(assert (=> d!538388 (= (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))) (v!25408 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> b!1760581 d!538388))

(assert (=> b!1760754 d!538010))

(assert (=> b!1760754 d!537744))

(declare-fun d!538390 () Bool)

(assert (=> d!538390 (not (matchR!2264 (regex!3463 (rule!5481 lt!680593)) lt!680596))))

(declare-fun lt!681079 () Unit!33555)

(declare-fun choose!10914 (LexerInterface!3092 Rule!6726 List!19452 List!19452) Unit!33555)

(assert (=> d!538390 (= lt!681079 (choose!10914 thiss!24550 (rule!5481 lt!680593) lt!680596 (++!5287 lt!680342 suffix!1421)))))

(assert (=> d!538390 (isPrefix!1703 lt!680596 (++!5287 lt!680342 suffix!1421))))

(assert (=> d!538390 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!315 thiss!24550 (rule!5481 lt!680593) lt!680596 (++!5287 lt!680342 suffix!1421)) lt!681079)))

(declare-fun bs!404152 () Bool)

(assert (= bs!404152 d!538390))

(assert (=> bs!404152 m!2176711))

(assert (=> bs!404152 m!2176039))

(declare-fun m!2178425 () Bool)

(assert (=> bs!404152 m!2178425))

(assert (=> bs!404152 m!2176039))

(declare-fun m!2178427 () Bool)

(assert (=> bs!404152 m!2178427))

(assert (=> b!1760754 d!538390))

(declare-fun b!1761989 () Bool)

(declare-fun res!792995 () Bool)

(declare-fun e!1127550 () Bool)

(assert (=> b!1761989 (=> (not res!792995) (not e!1127550))))

(declare-fun call!110770 () Bool)

(assert (=> b!1761989 (= res!792995 (not call!110770))))

(declare-fun b!1761990 () Bool)

(declare-fun res!792990 () Bool)

(declare-fun e!1127556 () Bool)

(assert (=> b!1761990 (=> res!792990 e!1127556)))

(assert (=> b!1761990 (= res!792990 e!1127550)))

(declare-fun res!792991 () Bool)

(assert (=> b!1761990 (=> (not res!792991) (not e!1127550))))

(declare-fun lt!681080 () Bool)

(assert (=> b!1761990 (= res!792991 lt!681080)))

(declare-fun b!1761991 () Bool)

(declare-fun res!792993 () Bool)

(assert (=> b!1761991 (=> (not res!792993) (not e!1127550))))

(assert (=> b!1761991 (= res!792993 (isEmpty!12227 (tail!2633 lt!680596)))))

(declare-fun b!1761993 () Bool)

(declare-fun e!1127555 () Bool)

(assert (=> b!1761993 (= e!1127555 (nullable!1461 (regex!3463 (rule!5481 lt!680593))))))

(declare-fun b!1761994 () Bool)

(declare-fun res!792994 () Bool)

(assert (=> b!1761994 (=> res!792994 e!1127556)))

(assert (=> b!1761994 (= res!792994 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 lt!680593)))))))

(declare-fun e!1127552 () Bool)

(assert (=> b!1761994 (= e!1127552 e!1127556)))

(declare-fun b!1761995 () Bool)

(declare-fun res!792989 () Bool)

(declare-fun e!1127551 () Bool)

(assert (=> b!1761995 (=> res!792989 e!1127551)))

(assert (=> b!1761995 (= res!792989 (not (isEmpty!12227 (tail!2633 lt!680596))))))

(declare-fun bm!110765 () Bool)

(assert (=> bm!110765 (= call!110770 (isEmpty!12227 lt!680596))))

(declare-fun b!1761996 () Bool)

(declare-fun e!1127553 () Bool)

(assert (=> b!1761996 (= e!1127553 e!1127551)))

(declare-fun res!792996 () Bool)

(assert (=> b!1761996 (=> res!792996 e!1127551)))

(assert (=> b!1761996 (= res!792996 call!110770)))

(declare-fun b!1761997 () Bool)

(assert (=> b!1761997 (= e!1127551 (not (= (head!4076 lt!680596) (c!286774 (regex!3463 (rule!5481 lt!680593))))))))

(declare-fun b!1761998 () Bool)

(assert (=> b!1761998 (= e!1127555 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 lt!680593)) (head!4076 lt!680596)) (tail!2633 lt!680596)))))

(declare-fun b!1761999 () Bool)

(declare-fun e!1127554 () Bool)

(assert (=> b!1761999 (= e!1127554 (= lt!681080 call!110770))))

(declare-fun b!1762000 () Bool)

(assert (=> b!1762000 (= e!1127554 e!1127552)))

(declare-fun c!287164 () Bool)

(assert (=> b!1762000 (= c!287164 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 lt!680593))))))

(declare-fun b!1762001 () Bool)

(assert (=> b!1762001 (= e!1127556 e!1127553)))

(declare-fun res!792992 () Bool)

(assert (=> b!1762001 (=> (not res!792992) (not e!1127553))))

(assert (=> b!1762001 (= res!792992 (not lt!681080))))

(declare-fun b!1762002 () Bool)

(assert (=> b!1762002 (= e!1127550 (= (head!4076 lt!680596) (c!286774 (regex!3463 (rule!5481 lt!680593)))))))

(declare-fun d!538396 () Bool)

(assert (=> d!538396 e!1127554))

(declare-fun c!287166 () Bool)

(assert (=> d!538396 (= c!287166 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 lt!680593))))))

(assert (=> d!538396 (= lt!681080 e!1127555)))

(declare-fun c!287165 () Bool)

(assert (=> d!538396 (= c!287165 (isEmpty!12227 lt!680596))))

(assert (=> d!538396 (validRegex!1935 (regex!3463 (rule!5481 lt!680593)))))

(assert (=> d!538396 (= (matchR!2264 (regex!3463 (rule!5481 lt!680593)) lt!680596) lt!681080)))

(declare-fun b!1761992 () Bool)

(assert (=> b!1761992 (= e!1127552 (not lt!681080))))

(assert (= (and d!538396 c!287165) b!1761993))

(assert (= (and d!538396 (not c!287165)) b!1761998))

(assert (= (and d!538396 c!287166) b!1761999))

(assert (= (and d!538396 (not c!287166)) b!1762000))

(assert (= (and b!1762000 c!287164) b!1761992))

(assert (= (and b!1762000 (not c!287164)) b!1761994))

(assert (= (and b!1761994 (not res!792994)) b!1761990))

(assert (= (and b!1761990 res!792991) b!1761989))

(assert (= (and b!1761989 res!792995) b!1761991))

(assert (= (and b!1761991 res!792993) b!1762002))

(assert (= (and b!1761990 (not res!792990)) b!1762001))

(assert (= (and b!1762001 res!792992) b!1761996))

(assert (= (and b!1761996 (not res!792996)) b!1761995))

(assert (= (and b!1761995 (not res!792989)) b!1761997))

(assert (= (or b!1761999 b!1761989 b!1761996) bm!110765))

(declare-fun m!2178429 () Bool)

(assert (=> bm!110765 m!2178429))

(declare-fun m!2178431 () Bool)

(assert (=> b!1761995 m!2178431))

(assert (=> b!1761995 m!2178431))

(declare-fun m!2178433 () Bool)

(assert (=> b!1761995 m!2178433))

(declare-fun m!2178435 () Bool)

(assert (=> b!1761993 m!2178435))

(assert (=> d!538396 m!2178429))

(declare-fun m!2178437 () Bool)

(assert (=> d!538396 m!2178437))

(assert (=> b!1761991 m!2178431))

(assert (=> b!1761991 m!2178431))

(assert (=> b!1761991 m!2178433))

(declare-fun m!2178439 () Bool)

(assert (=> b!1761998 m!2178439))

(assert (=> b!1761998 m!2178439))

(declare-fun m!2178441 () Bool)

(assert (=> b!1761998 m!2178441))

(assert (=> b!1761998 m!2178431))

(assert (=> b!1761998 m!2178441))

(assert (=> b!1761998 m!2178431))

(declare-fun m!2178443 () Bool)

(assert (=> b!1761998 m!2178443))

(assert (=> b!1762002 m!2178439))

(assert (=> b!1761997 m!2178439))

(assert (=> b!1760754 d!538396))

(assert (=> b!1760754 d!538018))

(declare-fun d!538398 () Bool)

(assert (=> d!538398 (= (isEmpty!12230 (maxPrefixOneRule!1015 thiss!24550 (rule!5481 lt!680593) lt!680603)) (not ((_ is Some!3948) (maxPrefixOneRule!1015 thiss!24550 (rule!5481 lt!680593) lt!680603))))))

(assert (=> b!1760754 d!538398))

(declare-fun d!538400 () Bool)

(assert (=> d!538400 (isEmpty!12230 (maxPrefixOneRule!1015 thiss!24550 (rule!5481 lt!680593) lt!680603))))

(declare-fun lt!681085 () Unit!33555)

(declare-fun choose!10915 (LexerInterface!3092 Rule!6726 List!19453 List!19452) Unit!33555)

(assert (=> d!538400 (= lt!681085 (choose!10915 thiss!24550 (rule!5481 lt!680593) rules!3447 lt!680603))))

(assert (=> d!538400 (not (isEmpty!12226 rules!3447))))

(assert (=> d!538400 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!319 thiss!24550 (rule!5481 lt!680593) rules!3447 lt!680603) lt!681085)))

(declare-fun bs!404155 () Bool)

(assert (= bs!404155 d!538400))

(assert (=> bs!404155 m!2176719))

(assert (=> bs!404155 m!2176719))

(assert (=> bs!404155 m!2176721))

(declare-fun m!2178475 () Bool)

(assert (=> bs!404155 m!2178475))

(assert (=> bs!404155 m!2176077))

(assert (=> b!1760754 d!538400))

(declare-fun b!1762019 () Bool)

(declare-fun res!793014 () Bool)

(declare-fun e!1127566 () Bool)

(assert (=> b!1762019 (=> (not res!793014) (not e!1127566))))

(declare-fun lt!681088 () Option!3949)

(assert (=> b!1762019 (= res!793014 (= (rule!5481 (_1!10897 (get!5897 lt!681088))) (rule!5481 lt!680593)))))

(declare-fun b!1762020 () Bool)

(declare-fun e!1127568 () Option!3949)

(declare-fun lt!681087 () tuple2!18998)

(assert (=> b!1762020 (= e!1127568 (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (rule!5481 lt!680593)) (seqFromList!2432 (_1!10901 lt!681087))) (rule!5481 lt!680593) (size!15394 (seqFromList!2432 (_1!10901 lt!681087))) (_1!10901 lt!681087)) (_2!10901 lt!681087))))))

(declare-fun lt!681090 () Unit!33555)

(assert (=> b!1762020 (= lt!681090 (longestMatchIsAcceptedByMatchOrIsEmpty!423 (regex!3463 (rule!5481 lt!680593)) lt!680603))))

(declare-fun res!793013 () Bool)

(assert (=> b!1762020 (= res!793013 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 lt!680593)) Nil!19382 (size!15395 Nil!19382) lt!680603 lt!680603 (size!15395 lt!680603)))))))

(declare-fun e!1127569 () Bool)

(assert (=> b!1762020 (=> res!793013 e!1127569)))

(assert (=> b!1762020 e!1127569))

(declare-fun lt!681086 () Unit!33555)

(assert (=> b!1762020 (= lt!681086 lt!681090)))

(declare-fun lt!681089 () Unit!33555)

(assert (=> b!1762020 (= lt!681089 (lemmaSemiInverse!601 (transformation!3463 (rule!5481 lt!680593)) (seqFromList!2432 (_1!10901 lt!681087))))))

(declare-fun b!1762021 () Bool)

(declare-fun res!793015 () Bool)

(assert (=> b!1762021 (=> (not res!793015) (not e!1127566))))

(assert (=> b!1762021 (= res!793015 (= (value!108368 (_1!10897 (get!5897 lt!681088))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!681088)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!681088)))))))))

(declare-fun d!538418 () Bool)

(declare-fun e!1127567 () Bool)

(assert (=> d!538418 e!1127567))

(declare-fun res!793016 () Bool)

(assert (=> d!538418 (=> res!793016 e!1127567)))

(assert (=> d!538418 (= res!793016 (isEmpty!12230 lt!681088))))

(assert (=> d!538418 (= lt!681088 e!1127568)))

(declare-fun c!287169 () Bool)

(assert (=> d!538418 (= c!287169 (isEmpty!12227 (_1!10901 lt!681087)))))

(assert (=> d!538418 (= lt!681087 (findLongestMatch!366 (regex!3463 (rule!5481 lt!680593)) lt!680603))))

(assert (=> d!538418 (ruleValid!961 thiss!24550 (rule!5481 lt!680593))))

(assert (=> d!538418 (= (maxPrefixOneRule!1015 thiss!24550 (rule!5481 lt!680593) lt!680603) lt!681088)))

(declare-fun b!1762022 () Bool)

(assert (=> b!1762022 (= e!1127568 None!3948)))

(declare-fun b!1762023 () Bool)

(assert (=> b!1762023 (= e!1127567 e!1127566)))

(declare-fun res!793017 () Bool)

(assert (=> b!1762023 (=> (not res!793017) (not e!1127566))))

(assert (=> b!1762023 (= res!793017 (matchR!2264 (regex!3463 (rule!5481 lt!680593)) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681088))))))))

(declare-fun b!1762024 () Bool)

(assert (=> b!1762024 (= e!1127566 (= (size!15393 (_1!10897 (get!5897 lt!681088))) (size!15395 (originalCharacters!4277 (_1!10897 (get!5897 lt!681088))))))))

(declare-fun b!1762025 () Bool)

(declare-fun res!793018 () Bool)

(assert (=> b!1762025 (=> (not res!793018) (not e!1127566))))

(assert (=> b!1762025 (= res!793018 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681088)))) (_2!10897 (get!5897 lt!681088))) lt!680603))))

(declare-fun b!1762026 () Bool)

(assert (=> b!1762026 (= e!1127569 (matchR!2264 (regex!3463 (rule!5481 lt!680593)) (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 lt!680593)) Nil!19382 (size!15395 Nil!19382) lt!680603 lt!680603 (size!15395 lt!680603)))))))

(declare-fun b!1762027 () Bool)

(declare-fun res!793012 () Bool)

(assert (=> b!1762027 (=> (not res!793012) (not e!1127566))))

(assert (=> b!1762027 (= res!793012 (< (size!15395 (_2!10897 (get!5897 lt!681088))) (size!15395 lt!680603)))))

(assert (= (and d!538418 c!287169) b!1762022))

(assert (= (and d!538418 (not c!287169)) b!1762020))

(assert (= (and b!1762020 (not res!793013)) b!1762026))

(assert (= (and d!538418 (not res!793016)) b!1762023))

(assert (= (and b!1762023 res!793017) b!1762025))

(assert (= (and b!1762025 res!793018) b!1762027))

(assert (= (and b!1762027 res!793012) b!1762019))

(assert (= (and b!1762019 res!793014) b!1762021))

(assert (= (and b!1762021 res!793015) b!1762024))

(declare-fun m!2178477 () Bool)

(assert (=> b!1762019 m!2178477))

(assert (=> b!1762021 m!2178477))

(declare-fun m!2178479 () Bool)

(assert (=> b!1762021 m!2178479))

(assert (=> b!1762021 m!2178479))

(declare-fun m!2178481 () Bool)

(assert (=> b!1762021 m!2178481))

(assert (=> b!1762023 m!2178477))

(declare-fun m!2178483 () Bool)

(assert (=> b!1762023 m!2178483))

(assert (=> b!1762023 m!2178483))

(declare-fun m!2178485 () Bool)

(assert (=> b!1762023 m!2178485))

(assert (=> b!1762023 m!2178485))

(declare-fun m!2178487 () Bool)

(assert (=> b!1762023 m!2178487))

(assert (=> b!1762027 m!2178477))

(declare-fun m!2178489 () Bool)

(assert (=> b!1762027 m!2178489))

(declare-fun m!2178491 () Bool)

(assert (=> b!1762027 m!2178491))

(assert (=> b!1762024 m!2178477))

(declare-fun m!2178493 () Bool)

(assert (=> b!1762024 m!2178493))

(declare-fun m!2178495 () Bool)

(assert (=> d!538418 m!2178495))

(declare-fun m!2178497 () Bool)

(assert (=> d!538418 m!2178497))

(declare-fun m!2178499 () Bool)

(assert (=> d!538418 m!2178499))

(declare-fun m!2178501 () Bool)

(assert (=> d!538418 m!2178501))

(declare-fun m!2178503 () Bool)

(assert (=> b!1762020 m!2178503))

(declare-fun m!2178505 () Bool)

(assert (=> b!1762020 m!2178505))

(assert (=> b!1762020 m!2178503))

(declare-fun m!2178507 () Bool)

(assert (=> b!1762020 m!2178507))

(assert (=> b!1762020 m!2178503))

(assert (=> b!1762020 m!2178491))

(declare-fun m!2178509 () Bool)

(assert (=> b!1762020 m!2178509))

(assert (=> b!1762020 m!2178503))

(declare-fun m!2178511 () Bool)

(assert (=> b!1762020 m!2178511))

(declare-fun m!2178513 () Bool)

(assert (=> b!1762020 m!2178513))

(assert (=> b!1762020 m!2176917))

(assert (=> b!1762020 m!2178491))

(declare-fun m!2178515 () Bool)

(assert (=> b!1762020 m!2178515))

(assert (=> b!1762020 m!2176917))

(assert (=> b!1762026 m!2176917))

(assert (=> b!1762026 m!2178491))

(assert (=> b!1762026 m!2176917))

(assert (=> b!1762026 m!2178491))

(assert (=> b!1762026 m!2178515))

(declare-fun m!2178517 () Bool)

(assert (=> b!1762026 m!2178517))

(assert (=> b!1762025 m!2178477))

(assert (=> b!1762025 m!2178483))

(assert (=> b!1762025 m!2178483))

(assert (=> b!1762025 m!2178485))

(assert (=> b!1762025 m!2178485))

(declare-fun m!2178519 () Bool)

(assert (=> b!1762025 m!2178519))

(assert (=> b!1760754 d!538418))

(declare-fun d!538420 () Bool)

(declare-fun lt!681091 () Bool)

(assert (=> d!538420 (= lt!681091 (select (content!2800 rules!3447) (get!5898 lt!680615)))))

(declare-fun e!1127571 () Bool)

(assert (=> d!538420 (= lt!681091 e!1127571)))

(declare-fun res!793020 () Bool)

(assert (=> d!538420 (=> (not res!793020) (not e!1127571))))

(assert (=> d!538420 (= res!793020 ((_ is Cons!19383) rules!3447))))

(assert (=> d!538420 (= (contains!3491 rules!3447 (get!5898 lt!680615)) lt!681091)))

(declare-fun b!1762028 () Bool)

(declare-fun e!1127570 () Bool)

(assert (=> b!1762028 (= e!1127571 e!1127570)))

(declare-fun res!793019 () Bool)

(assert (=> b!1762028 (=> res!793019 e!1127570)))

(assert (=> b!1762028 (= res!793019 (= (h!24784 rules!3447) (get!5898 lt!680615)))))

(declare-fun b!1762029 () Bool)

(assert (=> b!1762029 (= e!1127570 (contains!3491 (t!164036 rules!3447) (get!5898 lt!680615)))))

(assert (= (and d!538420 res!793020) b!1762028))

(assert (= (and b!1762028 (not res!793019)) b!1762029))

(assert (=> d!538420 m!2176817))

(assert (=> d!538420 m!2176767))

(declare-fun m!2178521 () Bool)

(assert (=> d!538420 m!2178521))

(assert (=> b!1762029 m!2176767))

(declare-fun m!2178523 () Bool)

(assert (=> b!1762029 m!2178523))

(assert (=> b!1760795 d!538420))

(assert (=> b!1760795 d!538246))

(assert (=> b!1760325 d!537768))

(declare-fun b!1762030 () Bool)

(declare-fun res!793023 () Bool)

(declare-fun e!1127572 () Bool)

(assert (=> b!1762030 (=> (not res!793023) (not e!1127572))))

(declare-fun lt!681094 () Option!3949)

(assert (=> b!1762030 (= res!793023 (= (rule!5481 (_1!10897 (get!5897 lt!681094))) (h!24784 rules!3447)))))

(declare-fun b!1762031 () Bool)

(declare-fun e!1127574 () Option!3949)

(declare-fun lt!681093 () tuple2!18998)

(assert (=> b!1762031 (= e!1127574 (Some!3948 (tuple2!18991 (Token!6493 (apply!5263 (transformation!3463 (h!24784 rules!3447)) (seqFromList!2432 (_1!10901 lt!681093))) (h!24784 rules!3447) (size!15394 (seqFromList!2432 (_1!10901 lt!681093))) (_1!10901 lt!681093)) (_2!10901 lt!681093))))))

(declare-fun lt!681096 () Unit!33555)

(assert (=> b!1762031 (= lt!681096 (longestMatchIsAcceptedByMatchOrIsEmpty!423 (regex!3463 (h!24784 rules!3447)) lt!680342))))

(declare-fun res!793022 () Bool)

(assert (=> b!1762031 (= res!793022 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (h!24784 rules!3447)) Nil!19382 (size!15395 Nil!19382) lt!680342 lt!680342 (size!15395 lt!680342)))))))

(declare-fun e!1127575 () Bool)

(assert (=> b!1762031 (=> res!793022 e!1127575)))

(assert (=> b!1762031 e!1127575))

(declare-fun lt!681092 () Unit!33555)

(assert (=> b!1762031 (= lt!681092 lt!681096)))

(declare-fun lt!681095 () Unit!33555)

(assert (=> b!1762031 (= lt!681095 (lemmaSemiInverse!601 (transformation!3463 (h!24784 rules!3447)) (seqFromList!2432 (_1!10901 lt!681093))))))

(declare-fun b!1762032 () Bool)

(declare-fun res!793024 () Bool)

(assert (=> b!1762032 (=> (not res!793024) (not e!1127572))))

(assert (=> b!1762032 (= res!793024 (= (value!108368 (_1!10897 (get!5897 lt!681094))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!681094)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!681094)))))))))

(declare-fun d!538422 () Bool)

(declare-fun e!1127573 () Bool)

(assert (=> d!538422 e!1127573))

(declare-fun res!793025 () Bool)

(assert (=> d!538422 (=> res!793025 e!1127573)))

(assert (=> d!538422 (= res!793025 (isEmpty!12230 lt!681094))))

(assert (=> d!538422 (= lt!681094 e!1127574)))

(declare-fun c!287170 () Bool)

(assert (=> d!538422 (= c!287170 (isEmpty!12227 (_1!10901 lt!681093)))))

(assert (=> d!538422 (= lt!681093 (findLongestMatch!366 (regex!3463 (h!24784 rules!3447)) lt!680342))))

(assert (=> d!538422 (ruleValid!961 thiss!24550 (h!24784 rules!3447))))

(assert (=> d!538422 (= (maxPrefixOneRule!1015 thiss!24550 (h!24784 rules!3447) lt!680342) lt!681094)))

(declare-fun b!1762033 () Bool)

(assert (=> b!1762033 (= e!1127574 None!3948)))

(declare-fun b!1762034 () Bool)

(assert (=> b!1762034 (= e!1127573 e!1127572)))

(declare-fun res!793026 () Bool)

(assert (=> b!1762034 (=> (not res!793026) (not e!1127572))))

(assert (=> b!1762034 (= res!793026 (matchR!2264 (regex!3463 (h!24784 rules!3447)) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681094))))))))

(declare-fun b!1762035 () Bool)

(assert (=> b!1762035 (= e!1127572 (= (size!15393 (_1!10897 (get!5897 lt!681094))) (size!15395 (originalCharacters!4277 (_1!10897 (get!5897 lt!681094))))))))

(declare-fun b!1762036 () Bool)

(declare-fun res!793027 () Bool)

(assert (=> b!1762036 (=> (not res!793027) (not e!1127572))))

(assert (=> b!1762036 (= res!793027 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681094)))) (_2!10897 (get!5897 lt!681094))) lt!680342))))

(declare-fun b!1762037 () Bool)

(assert (=> b!1762037 (= e!1127575 (matchR!2264 (regex!3463 (h!24784 rules!3447)) (_1!10901 (findLongestMatchInner!439 (regex!3463 (h!24784 rules!3447)) Nil!19382 (size!15395 Nil!19382) lt!680342 lt!680342 (size!15395 lt!680342)))))))

(declare-fun b!1762038 () Bool)

(declare-fun res!793021 () Bool)

(assert (=> b!1762038 (=> (not res!793021) (not e!1127572))))

(assert (=> b!1762038 (= res!793021 (< (size!15395 (_2!10897 (get!5897 lt!681094))) (size!15395 lt!680342)))))

(assert (= (and d!538422 c!287170) b!1762033))

(assert (= (and d!538422 (not c!287170)) b!1762031))

(assert (= (and b!1762031 (not res!793022)) b!1762037))

(assert (= (and d!538422 (not res!793025)) b!1762034))

(assert (= (and b!1762034 res!793026) b!1762036))

(assert (= (and b!1762036 res!793027) b!1762038))

(assert (= (and b!1762038 res!793021) b!1762030))

(assert (= (and b!1762030 res!793023) b!1762032))

(assert (= (and b!1762032 res!793024) b!1762035))

(declare-fun m!2178525 () Bool)

(assert (=> b!1762030 m!2178525))

(assert (=> b!1762032 m!2178525))

(declare-fun m!2178527 () Bool)

(assert (=> b!1762032 m!2178527))

(assert (=> b!1762032 m!2178527))

(declare-fun m!2178529 () Bool)

(assert (=> b!1762032 m!2178529))

(assert (=> b!1762034 m!2178525))

(declare-fun m!2178531 () Bool)

(assert (=> b!1762034 m!2178531))

(assert (=> b!1762034 m!2178531))

(declare-fun m!2178533 () Bool)

(assert (=> b!1762034 m!2178533))

(assert (=> b!1762034 m!2178533))

(declare-fun m!2178535 () Bool)

(assert (=> b!1762034 m!2178535))

(assert (=> b!1762038 m!2178525))

(declare-fun m!2178539 () Bool)

(assert (=> b!1762038 m!2178539))

(assert (=> b!1762038 m!2176203))

(assert (=> b!1762035 m!2178525))

(declare-fun m!2178545 () Bool)

(assert (=> b!1762035 m!2178545))

(declare-fun m!2178547 () Bool)

(assert (=> d!538422 m!2178547))

(declare-fun m!2178551 () Bool)

(assert (=> d!538422 m!2178551))

(declare-fun m!2178553 () Bool)

(assert (=> d!538422 m!2178553))

(assert (=> d!538422 m!2177143))

(declare-fun m!2178555 () Bool)

(assert (=> b!1762031 m!2178555))

(declare-fun m!2178557 () Bool)

(assert (=> b!1762031 m!2178557))

(assert (=> b!1762031 m!2178555))

(declare-fun m!2178559 () Bool)

(assert (=> b!1762031 m!2178559))

(assert (=> b!1762031 m!2178555))

(assert (=> b!1762031 m!2176203))

(declare-fun m!2178563 () Bool)

(assert (=> b!1762031 m!2178563))

(assert (=> b!1762031 m!2178555))

(declare-fun m!2178565 () Bool)

(assert (=> b!1762031 m!2178565))

(declare-fun m!2178567 () Bool)

(assert (=> b!1762031 m!2178567))

(assert (=> b!1762031 m!2176917))

(assert (=> b!1762031 m!2176203))

(declare-fun m!2178571 () Bool)

(assert (=> b!1762031 m!2178571))

(assert (=> b!1762031 m!2176917))

(assert (=> b!1762037 m!2176917))

(assert (=> b!1762037 m!2176203))

(assert (=> b!1762037 m!2176917))

(assert (=> b!1762037 m!2176203))

(assert (=> b!1762037 m!2178571))

(declare-fun m!2178573 () Bool)

(assert (=> b!1762037 m!2178573))

(assert (=> b!1762036 m!2178525))

(assert (=> b!1762036 m!2178531))

(assert (=> b!1762036 m!2178531))

(assert (=> b!1762036 m!2178533))

(assert (=> b!1762036 m!2178533))

(declare-fun m!2178577 () Bool)

(assert (=> b!1762036 m!2178577))

(assert (=> bm!110632 d!538422))

(declare-fun lt!681099 () List!19452)

(declare-fun e!1127584 () Bool)

(declare-fun b!1762056 () Bool)

(assert (=> b!1762056 (= e!1127584 (or (not (= lt!680641 Nil!19382)) (= lt!681099 lt!680348)))))

(declare-fun b!1762054 () Bool)

(declare-fun e!1127583 () List!19452)

(assert (=> b!1762054 (= e!1127583 (Cons!19382 (h!24783 lt!680348) (++!5287 (t!164035 lt!680348) lt!680641)))))

(declare-fun b!1762053 () Bool)

(assert (=> b!1762053 (= e!1127583 lt!680641)))

(declare-fun d!538430 () Bool)

(assert (=> d!538430 e!1127584))

(declare-fun res!793037 () Bool)

(assert (=> d!538430 (=> (not res!793037) (not e!1127584))))

(assert (=> d!538430 (= res!793037 (= (content!2798 lt!681099) ((_ map or) (content!2798 lt!680348) (content!2798 lt!680641))))))

(assert (=> d!538430 (= lt!681099 e!1127583)))

(declare-fun c!287174 () Bool)

(assert (=> d!538430 (= c!287174 ((_ is Nil!19382) lt!680348))))

(assert (=> d!538430 (= (++!5287 lt!680348 lt!680641) lt!681099)))

(declare-fun b!1762055 () Bool)

(declare-fun res!793036 () Bool)

(assert (=> b!1762055 (=> (not res!793036) (not e!1127584))))

(assert (=> b!1762055 (= res!793036 (= (size!15395 lt!681099) (+ (size!15395 lt!680348) (size!15395 lt!680641))))))

(assert (= (and d!538430 c!287174) b!1762053))

(assert (= (and d!538430 (not c!287174)) b!1762054))

(assert (= (and d!538430 res!793037) b!1762055))

(assert (= (and b!1762055 res!793036) b!1762056))

(declare-fun m!2178579 () Bool)

(assert (=> b!1762054 m!2178579))

(declare-fun m!2178581 () Bool)

(assert (=> d!538430 m!2178581))

(assert (=> d!538430 m!2176503))

(declare-fun m!2178583 () Bool)

(assert (=> d!538430 m!2178583))

(declare-fun m!2178585 () Bool)

(assert (=> b!1762055 m!2178585))

(assert (=> b!1762055 m!2176099))

(declare-fun m!2178587 () Bool)

(assert (=> b!1762055 m!2178587))

(assert (=> d!537794 d!538430))

(assert (=> d!537794 d!537866))

(assert (=> d!537794 d!537796))

(declare-fun d!538432 () Bool)

(assert (=> d!538432 (= (list!7861 lt!680618) (list!7864 (c!286775 lt!680618)))))

(declare-fun bs!404158 () Bool)

(assert (= bs!404158 d!538432))

(declare-fun m!2178593 () Bool)

(assert (=> bs!404158 m!2178593))

(assert (=> d!537746 d!538432))

(assert (=> b!1760753 d!538288))

(assert (=> b!1760753 d!537956))

(declare-fun d!538434 () Bool)

(assert (=> d!538434 (= (inv!16 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)) (= (charsToInt!0 (text!25318 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (value!108359 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))

(declare-fun bs!404159 () Bool)

(assert (= bs!404159 d!538434))

(declare-fun m!2178595 () Bool)

(assert (=> bs!404159 m!2178595))

(assert (=> b!1760905 d!538434))

(declare-fun d!538436 () Bool)

(declare-fun charsToBigInt!0 (List!19451 Int) Int)

(assert (=> d!538436 (= (inv!15 (value!108368 token!523)) (= (charsToBigInt!0 (text!25320 (value!108368 token!523)) 0) (value!108363 (value!108368 token!523))))))

(declare-fun bs!404160 () Bool)

(assert (= bs!404160 d!538436))

(declare-fun m!2178607 () Bool)

(assert (=> bs!404160 m!2178607))

(assert (=> b!1760912 d!538436))

(declare-fun b!1762066 () Bool)

(declare-fun e!1127593 () List!19452)

(assert (=> b!1762066 (= e!1127593 (list!7867 (xs!9323 (c!286775 (charsOf!2112 (_1!10897 lt!680362))))))))

(declare-fun b!1762065 () Bool)

(declare-fun e!1127592 () List!19452)

(assert (=> b!1762065 (= e!1127592 e!1127593)))

(declare-fun c!287176 () Bool)

(assert (=> b!1762065 (= c!287176 ((_ is Leaf!9399) (c!286775 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun d!538442 () Bool)

(declare-fun c!287175 () Bool)

(assert (=> d!538442 (= c!287175 ((_ is Empty!6447) (c!286775 (charsOf!2112 (_1!10897 lt!680362)))))))

(assert (=> d!538442 (= (list!7864 (c!286775 (charsOf!2112 (_1!10897 lt!680362)))) e!1127592)))

(declare-fun b!1762064 () Bool)

(assert (=> b!1762064 (= e!1127592 Nil!19382)))

(declare-fun b!1762067 () Bool)

(assert (=> b!1762067 (= e!1127593 (++!5287 (list!7864 (left!15516 (c!286775 (charsOf!2112 (_1!10897 lt!680362))))) (list!7864 (right!15846 (c!286775 (charsOf!2112 (_1!10897 lt!680362)))))))))

(assert (= (and d!538442 c!287175) b!1762064))

(assert (= (and d!538442 (not c!287175)) b!1762065))

(assert (= (and b!1762065 c!287176) b!1762066))

(assert (= (and b!1762065 (not c!287176)) b!1762067))

(declare-fun m!2178609 () Bool)

(assert (=> b!1762066 m!2178609))

(declare-fun m!2178611 () Bool)

(assert (=> b!1762067 m!2178611))

(declare-fun m!2178613 () Bool)

(assert (=> b!1762067 m!2178613))

(assert (=> b!1762067 m!2178611))

(assert (=> b!1762067 m!2178613))

(declare-fun m!2178615 () Bool)

(assert (=> b!1762067 m!2178615))

(assert (=> d!537782 d!538442))

(declare-fun b!1762071 () Bool)

(declare-fun e!1127595 () Bool)

(declare-fun lt!681101 () List!19452)

(assert (=> b!1762071 (= e!1127595 (or (not (= (_2!10897 (get!5897 lt!680657)) Nil!19382)) (= lt!681101 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))))))))

(declare-fun b!1762069 () Bool)

(declare-fun e!1127594 () List!19452)

(assert (=> b!1762069 (= e!1127594 (Cons!19382 (h!24783 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (++!5287 (t!164035 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (_2!10897 (get!5897 lt!680657)))))))

(declare-fun b!1762068 () Bool)

(assert (=> b!1762068 (= e!1127594 (_2!10897 (get!5897 lt!680657)))))

(declare-fun d!538444 () Bool)

(assert (=> d!538444 e!1127595))

(declare-fun res!793045 () Bool)

(assert (=> d!538444 (=> (not res!793045) (not e!1127595))))

(assert (=> d!538444 (= res!793045 (= (content!2798 lt!681101) ((_ map or) (content!2798 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (content!2798 (_2!10897 (get!5897 lt!680657))))))))

(assert (=> d!538444 (= lt!681101 e!1127594)))

(declare-fun c!287177 () Bool)

(assert (=> d!538444 (= c!287177 ((_ is Nil!19382) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))))))

(assert (=> d!538444 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657)))) (_2!10897 (get!5897 lt!680657))) lt!681101)))

(declare-fun b!1762070 () Bool)

(declare-fun res!793044 () Bool)

(assert (=> b!1762070 (=> (not res!793044) (not e!1127595))))

(assert (=> b!1762070 (= res!793044 (= (size!15395 lt!681101) (+ (size!15395 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680657))))) (size!15395 (_2!10897 (get!5897 lt!680657))))))))

(assert (= (and d!538444 c!287177) b!1762068))

(assert (= (and d!538444 (not c!287177)) b!1762069))

(assert (= (and d!538444 res!793045) b!1762070))

(assert (= (and b!1762070 res!793044) b!1762071))

(declare-fun m!2178619 () Bool)

(assert (=> b!1762069 m!2178619))

(declare-fun m!2178623 () Bool)

(assert (=> d!538444 m!2178623))

(assert (=> d!538444 m!2176889))

(declare-fun m!2178625 () Bool)

(assert (=> d!538444 m!2178625))

(declare-fun m!2178627 () Bool)

(assert (=> d!538444 m!2178627))

(declare-fun m!2178629 () Bool)

(assert (=> b!1762070 m!2178629))

(assert (=> b!1762070 m!2176889))

(declare-fun m!2178631 () Bool)

(assert (=> b!1762070 m!2178631))

(assert (=> b!1762070 m!2176893))

(assert (=> b!1760951 d!538444))

(assert (=> b!1760951 d!538074))

(assert (=> b!1760951 d!538078))

(assert (=> b!1760951 d!537870))

(assert (=> d!537774 d!537912))

(assert (=> d!537774 d!537922))

(assert (=> b!1760869 d!538152))

(declare-fun d!538448 () Bool)

(declare-fun lt!681102 () Bool)

(assert (=> d!538448 (= lt!681102 (select (content!2800 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680513)))))))

(declare-fun e!1127599 () Bool)

(assert (=> d!538448 (= lt!681102 e!1127599)))

(declare-fun res!793049 () Bool)

(assert (=> d!538448 (=> (not res!793049) (not e!1127599))))

(assert (=> d!538448 (= res!793049 ((_ is Cons!19383) rules!3447))))

(assert (=> d!538448 (= (contains!3491 rules!3447 (rule!5481 (_1!10897 (get!5897 lt!680513)))) lt!681102)))

(declare-fun b!1762074 () Bool)

(declare-fun e!1127598 () Bool)

(assert (=> b!1762074 (= e!1127599 e!1127598)))

(declare-fun res!793048 () Bool)

(assert (=> b!1762074 (=> res!793048 e!1127598)))

(assert (=> b!1762074 (= res!793048 (= (h!24784 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680513)))))))

(declare-fun b!1762075 () Bool)

(assert (=> b!1762075 (= e!1127598 (contains!3491 (t!164036 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680513)))))))

(assert (= (and d!538448 res!793049) b!1762074))

(assert (= (and b!1762074 (not res!793048)) b!1762075))

(assert (=> d!538448 m!2176817))

(declare-fun m!2178633 () Bool)

(assert (=> d!538448 m!2178633))

(declare-fun m!2178635 () Bool)

(assert (=> b!1762075 m!2178635))

(assert (=> b!1760591 d!538448))

(assert (=> b!1760591 d!537864))

(declare-fun d!538450 () Bool)

(declare-fun res!793064 () Bool)

(declare-fun e!1127611 () Bool)

(assert (=> d!538450 (=> (not res!793064) (not e!1127611))))

(assert (=> d!538450 (= res!793064 (<= (size!15395 (list!7867 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) 512))))

(assert (=> d!538450 (= (inv!25176 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1127611)))

(declare-fun b!1762098 () Bool)

(declare-fun res!793065 () Bool)

(assert (=> b!1762098 (=> (not res!793065) (not e!1127611))))

(assert (=> b!1762098 (= res!793065 (= (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) (size!15395 (list!7867 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))))

(declare-fun b!1762099 () Bool)

(assert (=> b!1762099 (= e!1127611 (and (> (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) 0) (<= (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) 512)))))

(assert (= (and d!538450 res!793064) b!1762098))

(assert (= (and b!1762098 res!793065) b!1762099))

(assert (=> d!538450 m!2177585))

(assert (=> d!538450 m!2177585))

(declare-fun m!2178651 () Bool)

(assert (=> d!538450 m!2178651))

(assert (=> b!1762098 m!2177585))

(assert (=> b!1762098 m!2177585))

(assert (=> b!1762098 m!2178651))

(assert (=> b!1760983 d!538450))

(assert (=> d!537748 d!537646))

(assert (=> d!537748 d!537678))

(declare-fun d!538460 () Bool)

(assert (=> d!538460 (isPrefix!1703 lt!680348 (++!5287 lt!680348 (_2!10897 lt!680362)))))

(assert (=> d!538460 true))

(declare-fun _$46!1216 () Unit!33555)

(assert (=> d!538460 (= (choose!10897 lt!680348 (_2!10897 lt!680362)) _$46!1216)))

(declare-fun bs!404168 () Bool)

(assert (= bs!404168 d!538460))

(assert (=> bs!404168 m!2176023))

(assert (=> bs!404168 m!2176023))

(assert (=> bs!404168 m!2176047))

(assert (=> d!537748 d!538460))

(declare-fun b!1762103 () Bool)

(declare-fun e!1127613 () Bool)

(declare-fun lt!681105 () List!19452)

(assert (=> b!1762103 (= e!1127613 (or (not (= (Cons!19382 (head!4076 suffix!1421) Nil!19382) Nil!19382)) (= lt!681105 (t!164035 lt!680342))))))

(declare-fun b!1762101 () Bool)

(declare-fun e!1127612 () List!19452)

(assert (=> b!1762101 (= e!1127612 (Cons!19382 (h!24783 (t!164035 lt!680342)) (++!5287 (t!164035 (t!164035 lt!680342)) (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(declare-fun b!1762100 () Bool)

(assert (=> b!1762100 (= e!1127612 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))

(declare-fun d!538462 () Bool)

(assert (=> d!538462 e!1127613))

(declare-fun res!793067 () Bool)

(assert (=> d!538462 (=> (not res!793067) (not e!1127613))))

(assert (=> d!538462 (= res!793067 (= (content!2798 lt!681105) ((_ map or) (content!2798 (t!164035 lt!680342)) (content!2798 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (=> d!538462 (= lt!681105 e!1127612)))

(declare-fun c!287182 () Bool)

(assert (=> d!538462 (= c!287182 ((_ is Nil!19382) (t!164035 lt!680342)))))

(assert (=> d!538462 (= (++!5287 (t!164035 lt!680342) (Cons!19382 (head!4076 suffix!1421) Nil!19382)) lt!681105)))

(declare-fun b!1762102 () Bool)

(declare-fun res!793066 () Bool)

(assert (=> b!1762102 (=> (not res!793066) (not e!1127613))))

(assert (=> b!1762102 (= res!793066 (= (size!15395 lt!681105) (+ (size!15395 (t!164035 lt!680342)) (size!15395 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (= (and d!538462 c!287182) b!1762100))

(assert (= (and d!538462 (not c!287182)) b!1762101))

(assert (= (and d!538462 res!793067) b!1762102))

(assert (= (and b!1762102 res!793066) b!1762103))

(declare-fun m!2178663 () Bool)

(assert (=> b!1762101 m!2178663))

(declare-fun m!2178665 () Bool)

(assert (=> d!538462 m!2178665))

(assert (=> d!538462 m!2177153))

(assert (=> d!538462 m!2176199))

(declare-fun m!2178667 () Bool)

(assert (=> b!1762102 m!2178667))

(assert (=> b!1762102 m!2177157))

(assert (=> b!1762102 m!2176205))

(assert (=> b!1760424 d!538462))

(assert (=> b!1760326 d!537824))

(declare-fun d!538464 () Bool)

(assert (=> d!538464 (= (isEmpty!12227 (tail!2633 lt!680342)) ((_ is Nil!19382) (tail!2633 lt!680342)))))

(assert (=> b!1760867 d!538464))

(assert (=> b!1760867 d!538356))

(assert (=> b!1760588 d!538030))

(assert (=> b!1760588 d!538032))

(assert (=> b!1760588 d!537864))

(declare-fun d!538466 () Bool)

(assert (=> d!538466 (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))) (list!7864 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))))))

(declare-fun bs!404169 () Bool)

(assert (= bs!404169 d!538466))

(declare-fun m!2178675 () Bool)

(assert (=> bs!404169 m!2178675))

(assert (=> b!1760972 d!538466))

(declare-fun d!538472 () Bool)

(assert (=> d!538472 (= (nullable!1461 (regex!3463 lt!680356)) (nullableFct!333 (regex!3463 lt!680356)))))

(declare-fun bs!404170 () Bool)

(assert (= bs!404170 d!538472))

(declare-fun m!2178677 () Bool)

(assert (=> bs!404170 m!2178677))

(assert (=> b!1760885 d!538472))

(declare-fun d!538474 () Bool)

(assert (=> d!538474 (= (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))) (not (isEmpty!12231 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun bs!404171 () Bool)

(assert (= bs!404171 d!538474))

(assert (=> bs!404171 m!2176045))

(declare-fun m!2178679 () Bool)

(assert (=> bs!404171 m!2178679))

(assert (=> d!537660 d!538474))

(assert (=> d!537660 d!537742))

(declare-fun d!538476 () Bool)

(declare-fun e!1127643 () Bool)

(assert (=> d!538476 e!1127643))

(declare-fun res!793088 () Bool)

(assert (=> d!538476 (=> (not res!793088) (not e!1127643))))

(assert (=> d!538476 (= res!793088 (isDefined!3291 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> d!538476 true))

(declare-fun _$52!1115 () Unit!33555)

(assert (=> d!538476 (= (choose!10898 thiss!24550 rules!3447 lt!680363 (_1!10897 lt!680362)) _$52!1115)))

(declare-fun b!1762150 () Bool)

(declare-fun res!793089 () Bool)

(assert (=> b!1762150 (=> (not res!793089) (not e!1127643))))

(assert (=> b!1762150 (= res!793089 (matchR!2264 (regex!3463 (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))) (list!7861 (charsOf!2112 (_1!10897 lt!680362)))))))

(declare-fun b!1762151 () Bool)

(assert (=> b!1762151 (= e!1127643 (= (rule!5481 (_1!10897 lt!680362)) (get!5898 (getRuleFromTag!511 thiss!24550 rules!3447 (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(assert (= (and d!538476 res!793088) b!1762150))

(assert (= (and b!1762150 res!793089) b!1762151))

(assert (=> d!538476 m!2176045))

(assert (=> d!538476 m!2176045))

(assert (=> d!538476 m!2176453))

(assert (=> b!1762150 m!2176045))

(assert (=> b!1762150 m!2176457))

(assert (=> b!1762150 m!2176037))

(assert (=> b!1762150 m!2176067))

(assert (=> b!1762150 m!2176067))

(assert (=> b!1762150 m!2176459))

(assert (=> b!1762150 m!2176037))

(assert (=> b!1762150 m!2176045))

(assert (=> b!1762151 m!2176045))

(assert (=> b!1762151 m!2176045))

(assert (=> b!1762151 m!2176457))

(assert (=> d!537660 d!538476))

(assert (=> d!537660 d!537772))

(declare-fun b!1762158 () Bool)

(declare-fun e!1127650 () Bool)

(assert (=> b!1762158 (= e!1127650 (inv!16 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun b!1762159 () Bool)

(declare-fun e!1127648 () Bool)

(assert (=> b!1762159 (= e!1127650 e!1127648)))

(declare-fun c!287197 () Bool)

(assert (=> b!1762159 (= c!287197 ((_ is IntegerValue!10660) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun d!538514 () Bool)

(declare-fun c!287198 () Bool)

(assert (=> d!538514 (= c!287198 ((_ is IntegerValue!10659) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(assert (=> d!538514 (= (inv!21 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))) e!1127650)))

(declare-fun b!1762160 () Bool)

(declare-fun e!1127649 () Bool)

(assert (=> b!1762160 (= e!1127649 (inv!15 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun b!1762161 () Bool)

(assert (=> b!1762161 (= e!1127648 (inv!17 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(declare-fun b!1762162 () Bool)

(declare-fun res!793094 () Bool)

(assert (=> b!1762162 (=> res!793094 e!1127649)))

(assert (=> b!1762162 (= res!793094 (not ((_ is IntegerValue!10661) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))))

(assert (=> b!1762162 (= e!1127648 e!1127649)))

(assert (= (and d!538514 c!287198) b!1762158))

(assert (= (and d!538514 (not c!287198)) b!1762159))

(assert (= (and b!1762159 c!287197) b!1762161))

(assert (= (and b!1762159 (not c!287197)) b!1762162))

(assert (= (and b!1762162 (not res!793094)) b!1762160))

(declare-fun m!2178741 () Bool)

(assert (=> b!1762158 m!2178741))

(declare-fun m!2178745 () Bool)

(assert (=> b!1762160 m!2178745))

(declare-fun m!2178747 () Bool)

(assert (=> b!1762161 m!2178747))

(assert (=> tb!106047 d!538514))

(declare-fun d!538516 () Bool)

(declare-fun lt!681113 () Bool)

(assert (=> d!538516 (= lt!681113 (select (content!2800 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680468)))))))

(declare-fun e!1127652 () Bool)

(assert (=> d!538516 (= lt!681113 e!1127652)))

(declare-fun res!793096 () Bool)

(assert (=> d!538516 (=> (not res!793096) (not e!1127652))))

(assert (=> d!538516 (= res!793096 ((_ is Cons!19383) rules!3447))))

(assert (=> d!538516 (= (contains!3491 rules!3447 (rule!5481 (_1!10897 (get!5897 lt!680468)))) lt!681113)))

(declare-fun b!1762163 () Bool)

(declare-fun e!1127651 () Bool)

(assert (=> b!1762163 (= e!1127652 e!1127651)))

(declare-fun res!793095 () Bool)

(assert (=> b!1762163 (=> res!793095 e!1127651)))

(assert (=> b!1762163 (= res!793095 (= (h!24784 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680468)))))))

(declare-fun b!1762164 () Bool)

(assert (=> b!1762164 (= e!1127651 (contains!3491 (t!164036 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!680468)))))))

(assert (= (and d!538516 res!793096) b!1762163))

(assert (= (and b!1762163 (not res!793095)) b!1762164))

(assert (=> d!538516 m!2176817))

(declare-fun m!2178759 () Bool)

(assert (=> d!538516 m!2178759))

(declare-fun m!2178763 () Bool)

(assert (=> b!1762164 m!2178763))

(assert (=> b!1760513 d!538516))

(assert (=> b!1760513 d!537936))

(declare-fun bs!404178 () Bool)

(declare-fun d!538522 () Bool)

(assert (= bs!404178 (and d!538522 b!1760284)))

(declare-fun lambda!70202 () Int)

(assert (=> bs!404178 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70202 lambda!70132))))

(declare-fun bs!404179 () Bool)

(assert (= bs!404179 (and d!538522 d!538120)))

(assert (=> bs!404179 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70202 lambda!70192))))

(declare-fun bs!404180 () Bool)

(assert (= bs!404180 (and d!538522 d!537850)))

(assert (=> bs!404180 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (h!24784 rules!3447)))) (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (h!24784 rules!3447))))) (= lambda!70202 lambda!70162))))

(declare-fun bs!404181 () Bool)

(assert (= bs!404181 (and d!538522 d!538384)))

(assert (=> bs!404181 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 rule!422))) (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 rule!422)))) (= lambda!70202 lambda!70199))))

(declare-fun bs!404182 () Bool)

(assert (= bs!404182 (and d!538522 d!537762)))

(assert (=> bs!404182 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (= lambda!70202 lambda!70147))))

(assert (=> d!538522 true))

(assert (=> d!538522 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 token!523)))) (dynLambda!9330 order!12285 lambda!70202))))

(assert (=> d!538522 true))

(assert (=> d!538522 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 token!523)))) (dynLambda!9330 order!12285 lambda!70202))))

(assert (=> d!538522 (= (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 token!523)))) (Forall!830 lambda!70202))))

(declare-fun bs!404183 () Bool)

(assert (= bs!404183 d!538522))

(declare-fun m!2178777 () Bool)

(assert (=> bs!404183 m!2178777))

(assert (=> d!537766 d!538522))

(assert (=> b!1760569 d!537914))

(assert (=> b!1760569 d!538154))

(declare-fun d!538532 () Bool)

(assert (=> d!538532 (= (_2!10897 lt!680362) lt!680344)))

(assert (=> d!538532 true))

(declare-fun _$63!773 () Unit!33555)

(assert (=> d!538532 (= (choose!10903 lt!680348 (_2!10897 lt!680362) lt!680348 lt!680344 lt!680363) _$63!773)))

(assert (=> d!537790 d!538532))

(assert (=> d!537790 d!537658))

(assert (=> b!1760562 d!537866))

(assert (=> b!1760562 d!538204))

(declare-fun d!538538 () Bool)

(assert (=> d!538538 (= (list!7861 lt!680480) (list!7864 (c!286775 lt!680480)))))

(declare-fun bs!404184 () Bool)

(assert (= bs!404184 d!538538))

(declare-fun m!2178785 () Bool)

(assert (=> bs!404184 m!2178785))

(assert (=> d!537630 d!538538))

(declare-fun bs!404185 () Bool)

(declare-fun d!538540 () Bool)

(assert (= bs!404185 (and d!538540 b!1760284)))

(declare-fun lambda!70203 () Int)

(assert (=> bs!404185 (= lambda!70203 lambda!70132)))

(declare-fun bs!404186 () Bool)

(assert (= bs!404186 (and d!538540 d!538120)))

(assert (=> bs!404186 (= lambda!70203 lambda!70192)))

(declare-fun bs!404187 () Bool)

(assert (= bs!404187 (and d!538540 d!537850)))

(assert (=> bs!404187 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toChars!4841 (transformation!3463 (h!24784 rules!3447)))) (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (h!24784 rules!3447))))) (= lambda!70203 lambda!70162))))

(declare-fun bs!404188 () Bool)

(assert (= bs!404188 (and d!538540 d!538384)))

(assert (=> bs!404188 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toChars!4841 (transformation!3463 rule!422))) (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 rule!422)))) (= lambda!70203 lambda!70199))))

(declare-fun bs!404189 () Bool)

(assert (= bs!404189 (and d!538540 d!538522)))

(assert (=> bs!404189 (= (and (= (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 token!523))))) (= lambda!70203 lambda!70202))))

(declare-fun bs!404190 () Bool)

(assert (= bs!404190 (and d!538540 d!537762)))

(assert (=> bs!404190 (= lambda!70203 lambda!70147)))

(assert (=> d!538540 true))

(assert (=> d!538540 (< (dynLambda!9331 order!12287 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70203))))

(assert (=> d!538540 true))

(assert (=> d!538540 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9330 order!12285 lambda!70203))))

(assert (=> d!538540 (= (semiInverseModEq!1376 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (Forall!830 lambda!70203))))

(declare-fun bs!404192 () Bool)

(assert (= bs!404192 d!538540))

(declare-fun m!2178793 () Bool)

(assert (=> bs!404192 m!2178793))

(assert (=> d!537752 d!538540))

(declare-fun d!538544 () Bool)

(assert (=> d!538544 (= (inv!15 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)) (= (charsToBigInt!0 (text!25320 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)) 0) (value!108363 (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))

(declare-fun bs!404193 () Bool)

(assert (= bs!404193 d!538544))

(declare-fun m!2178795 () Bool)

(assert (=> bs!404193 m!2178795))

(assert (=> b!1760907 d!538544))

(declare-fun b!1762184 () Bool)

(declare-fun res!793106 () Bool)

(declare-fun e!1127667 () Bool)

(assert (=> b!1762184 (=> (not res!793106) (not e!1127667))))

(declare-fun lt!681124 () Option!3949)

(assert (=> b!1762184 (= res!793106 (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!681124)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681124))))))))

(declare-fun b!1762185 () Bool)

(declare-fun res!793105 () Bool)

(assert (=> b!1762185 (=> (not res!793105) (not e!1127667))))

(assert (=> b!1762185 (= res!793105 (= (value!108368 (_1!10897 (get!5897 lt!681124))) (apply!5263 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!681124)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 (get!5897 lt!681124)))))))))

(declare-fun b!1762186 () Bool)

(declare-fun e!1127666 () Option!3949)

(declare-fun lt!681123 () Option!3949)

(declare-fun lt!681121 () Option!3949)

(assert (=> b!1762186 (= e!1127666 (ite (and ((_ is None!3948) lt!681123) ((_ is None!3948) lt!681121)) None!3948 (ite ((_ is None!3948) lt!681121) lt!681123 (ite ((_ is None!3948) lt!681123) lt!681121 (ite (>= (size!15393 (_1!10897 (v!25409 lt!681123))) (size!15393 (_1!10897 (v!25409 lt!681121)))) lt!681123 lt!681121)))))))

(declare-fun call!110779 () Option!3949)

(assert (=> b!1762186 (= lt!681123 call!110779)))

(assert (=> b!1762186 (= lt!681121 (maxPrefix!1646 thiss!24550 (t!164036 (t!164036 rules!3447)) lt!680363))))

(declare-fun b!1762187 () Bool)

(declare-fun res!793109 () Bool)

(assert (=> b!1762187 (=> (not res!793109) (not e!1127667))))

(assert (=> b!1762187 (= res!793109 (= (++!5287 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681124)))) (_2!10897 (get!5897 lt!681124))) lt!680363))))

(declare-fun bm!110774 () Bool)

(assert (=> bm!110774 (= call!110779 (maxPrefixOneRule!1015 thiss!24550 (h!24784 (t!164036 rules!3447)) lt!680363))))

(declare-fun b!1762188 () Bool)

(declare-fun e!1127665 () Bool)

(assert (=> b!1762188 (= e!1127665 e!1127667)))

(declare-fun res!793108 () Bool)

(assert (=> b!1762188 (=> (not res!793108) (not e!1127667))))

(assert (=> b!1762188 (= res!793108 (isDefined!3292 lt!681124))))

(declare-fun d!538546 () Bool)

(assert (=> d!538546 e!1127665))

(declare-fun res!793107 () Bool)

(assert (=> d!538546 (=> res!793107 e!1127665)))

(assert (=> d!538546 (= res!793107 (isEmpty!12230 lt!681124))))

(assert (=> d!538546 (= lt!681124 e!1127666)))

(declare-fun c!287205 () Bool)

(assert (=> d!538546 (= c!287205 (and ((_ is Cons!19383) (t!164036 rules!3447)) ((_ is Nil!19383) (t!164036 (t!164036 rules!3447)))))))

(declare-fun lt!681122 () Unit!33555)

(declare-fun lt!681125 () Unit!33555)

(assert (=> d!538546 (= lt!681122 lt!681125)))

(assert (=> d!538546 (isPrefix!1703 lt!680363 lt!680363)))

(assert (=> d!538546 (= lt!681125 (lemmaIsPrefixRefl!1128 lt!680363 lt!680363))))

(assert (=> d!538546 (rulesValidInductive!1166 thiss!24550 (t!164036 rules!3447))))

(assert (=> d!538546 (= (maxPrefix!1646 thiss!24550 (t!164036 rules!3447) lt!680363) lt!681124)))

(declare-fun b!1762189 () Bool)

(declare-fun res!793104 () Bool)

(assert (=> b!1762189 (=> (not res!793104) (not e!1127667))))

(assert (=> b!1762189 (= res!793104 (= (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!681124)))) (originalCharacters!4277 (_1!10897 (get!5897 lt!681124)))))))

(declare-fun b!1762190 () Bool)

(declare-fun res!793110 () Bool)

(assert (=> b!1762190 (=> (not res!793110) (not e!1127667))))

(assert (=> b!1762190 (= res!793110 (< (size!15395 (_2!10897 (get!5897 lt!681124))) (size!15395 lt!680363)))))

(declare-fun b!1762191 () Bool)

(assert (=> b!1762191 (= e!1127666 call!110779)))

(declare-fun b!1762192 () Bool)

(assert (=> b!1762192 (= e!1127667 (contains!3491 (t!164036 rules!3447) (rule!5481 (_1!10897 (get!5897 lt!681124)))))))

(assert (= (and d!538546 c!287205) b!1762191))

(assert (= (and d!538546 (not c!287205)) b!1762186))

(assert (= (or b!1762191 b!1762186) bm!110774))

(assert (= (and d!538546 (not res!793107)) b!1762188))

(assert (= (and b!1762188 res!793108) b!1762189))

(assert (= (and b!1762189 res!793104) b!1762190))

(assert (= (and b!1762190 res!793110) b!1762187))

(assert (= (and b!1762187 res!793109) b!1762185))

(assert (= (and b!1762185 res!793105) b!1762184))

(assert (= (and b!1762184 res!793106) b!1762192))

(declare-fun m!2178807 () Bool)

(assert (=> b!1762187 m!2178807))

(declare-fun m!2178811 () Bool)

(assert (=> b!1762187 m!2178811))

(assert (=> b!1762187 m!2178811))

(declare-fun m!2178817 () Bool)

(assert (=> b!1762187 m!2178817))

(assert (=> b!1762187 m!2178817))

(declare-fun m!2178821 () Bool)

(assert (=> b!1762187 m!2178821))

(assert (=> b!1762189 m!2178807))

(assert (=> b!1762189 m!2178811))

(assert (=> b!1762189 m!2178811))

(assert (=> b!1762189 m!2178817))

(declare-fun m!2178829 () Bool)

(assert (=> bm!110774 m!2178829))

(assert (=> b!1762185 m!2178807))

(declare-fun m!2178831 () Bool)

(assert (=> b!1762185 m!2178831))

(assert (=> b!1762185 m!2178831))

(declare-fun m!2178833 () Bool)

(assert (=> b!1762185 m!2178833))

(assert (=> b!1762192 m!2178807))

(declare-fun m!2178835 () Bool)

(assert (=> b!1762192 m!2178835))

(declare-fun m!2178837 () Bool)

(assert (=> b!1762186 m!2178837))

(assert (=> b!1762190 m!2178807))

(declare-fun m!2178839 () Bool)

(assert (=> b!1762190 m!2178839))

(assert (=> b!1762190 m!2176421))

(declare-fun m!2178841 () Bool)

(assert (=> d!538546 m!2178841))

(assert (=> d!538546 m!2176489))

(assert (=> d!538546 m!2176491))

(assert (=> d!538546 m!2177145))

(assert (=> b!1762184 m!2178807))

(assert (=> b!1762184 m!2178811))

(assert (=> b!1762184 m!2178811))

(assert (=> b!1762184 m!2178817))

(assert (=> b!1762184 m!2178817))

(declare-fun m!2178843 () Bool)

(assert (=> b!1762184 m!2178843))

(declare-fun m!2178845 () Bool)

(assert (=> b!1762188 m!2178845))

(assert (=> b!1760585 d!538546))

(assert (=> b!1760582 d!538388))

(assert (=> b!1760582 d!537742))

(assert (=> d!537804 d!538330))

(declare-fun b!1762207 () Bool)

(declare-fun res!793121 () Bool)

(declare-fun e!1127676 () Bool)

(assert (=> b!1762207 (=> res!793121 e!1127676)))

(assert (=> b!1762207 (= res!793121 (not ((_ is Concat!8345) (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun e!1127678 () Bool)

(assert (=> b!1762207 (= e!1127678 e!1127676)))

(declare-fun bm!110776 () Bool)

(declare-fun call!110783 () Bool)

(declare-fun call!110781 () Bool)

(assert (=> bm!110776 (= call!110783 call!110781)))

(declare-fun bm!110777 () Bool)

(declare-fun c!287210 () Bool)

(declare-fun c!287209 () Bool)

(assert (=> bm!110777 (= call!110781 (validRegex!1935 (ite c!287209 (reg!5120 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (ite c!287210 (regTwo!10095 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (regOne!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))))

(declare-fun b!1762209 () Bool)

(declare-fun e!1127677 () Bool)

(declare-fun call!110782 () Bool)

(assert (=> b!1762209 (= e!1127677 call!110782)))

(declare-fun b!1762210 () Bool)

(declare-fun e!1127675 () Bool)

(declare-fun e!1127680 () Bool)

(assert (=> b!1762210 (= e!1127675 e!1127680)))

(assert (=> b!1762210 (= c!287209 ((_ is Star!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1762211 () Bool)

(declare-fun res!793120 () Bool)

(declare-fun e!1127679 () Bool)

(assert (=> b!1762211 (=> (not res!793120) (not e!1127679))))

(assert (=> b!1762211 (= res!793120 call!110782)))

(assert (=> b!1762211 (= e!1127678 e!1127679)))

(declare-fun b!1762212 () Bool)

(declare-fun e!1127681 () Bool)

(assert (=> b!1762212 (= e!1127681 call!110781)))

(declare-fun b!1762213 () Bool)

(assert (=> b!1762213 (= e!1127680 e!1127681)))

(declare-fun res!793119 () Bool)

(assert (=> b!1762213 (= res!793119 (not (nullable!1461 (reg!5120 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))))

(assert (=> b!1762213 (=> (not res!793119) (not e!1127681))))

(declare-fun b!1762214 () Bool)

(assert (=> b!1762214 (= e!1127676 e!1127677)))

(declare-fun res!793122 () Bool)

(assert (=> b!1762214 (=> (not res!793122) (not e!1127677))))

(assert (=> b!1762214 (= res!793122 call!110783)))

(declare-fun bm!110778 () Bool)

(assert (=> bm!110778 (= call!110782 (validRegex!1935 (ite c!287210 (regOne!10095 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (regTwo!10094 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun b!1762215 () Bool)

(assert (=> b!1762215 (= e!1127679 call!110783)))

(declare-fun d!538556 () Bool)

(declare-fun res!793123 () Bool)

(assert (=> d!538556 (=> res!793123 e!1127675)))

(assert (=> d!538556 (= res!793123 ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (=> d!538556 (= (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) e!1127675)))

(declare-fun b!1762208 () Bool)

(assert (=> b!1762208 (= e!1127680 e!1127678)))

(assert (=> b!1762208 (= c!287210 ((_ is Union!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (= (and d!538556 (not res!793123)) b!1762210))

(assert (= (and b!1762210 c!287209) b!1762213))

(assert (= (and b!1762210 (not c!287209)) b!1762208))

(assert (= (and b!1762213 res!793119) b!1762212))

(assert (= (and b!1762208 c!287210) b!1762211))

(assert (= (and b!1762208 (not c!287210)) b!1762207))

(assert (= (and b!1762211 res!793120) b!1762215))

(assert (= (and b!1762207 (not res!793121)) b!1762214))

(assert (= (and b!1762214 res!793122) b!1762209))

(assert (= (or b!1762211 b!1762209) bm!110778))

(assert (= (or b!1762215 b!1762214) bm!110776))

(assert (= (or b!1762212 bm!110776) bm!110777))

(declare-fun m!2178847 () Bool)

(assert (=> bm!110777 m!2178847))

(declare-fun m!2178849 () Bool)

(assert (=> b!1762213 m!2178849))

(declare-fun m!2178851 () Bool)

(assert (=> bm!110778 m!2178851))

(assert (=> d!537804 d!538556))

(declare-fun d!538558 () Bool)

(assert (=> d!538558 (= (isEmpty!12230 lt!680468) (not ((_ is Some!3948) lt!680468)))))

(assert (=> d!537604 d!538558))

(declare-fun b!1762219 () Bool)

(declare-fun e!1127683 () Bool)

(assert (=> b!1762219 (= e!1127683 (>= (size!15395 lt!680342) (size!15395 lt!680342)))))

(declare-fun d!538560 () Bool)

(assert (=> d!538560 e!1127683))

(declare-fun res!793127 () Bool)

(assert (=> d!538560 (=> res!793127 e!1127683)))

(declare-fun lt!681127 () Bool)

(assert (=> d!538560 (= res!793127 (not lt!681127))))

(declare-fun e!1127682 () Bool)

(assert (=> d!538560 (= lt!681127 e!1127682)))

(declare-fun res!793124 () Bool)

(assert (=> d!538560 (=> res!793124 e!1127682)))

(assert (=> d!538560 (= res!793124 ((_ is Nil!19382) lt!680342))))

(assert (=> d!538560 (= (isPrefix!1703 lt!680342 lt!680342) lt!681127)))

(declare-fun b!1762216 () Bool)

(declare-fun e!1127684 () Bool)

(assert (=> b!1762216 (= e!1127682 e!1127684)))

(declare-fun res!793126 () Bool)

(assert (=> b!1762216 (=> (not res!793126) (not e!1127684))))

(assert (=> b!1762216 (= res!793126 (not ((_ is Nil!19382) lt!680342)))))

(declare-fun b!1762218 () Bool)

(assert (=> b!1762218 (= e!1127684 (isPrefix!1703 (tail!2633 lt!680342) (tail!2633 lt!680342)))))

(declare-fun b!1762217 () Bool)

(declare-fun res!793125 () Bool)

(assert (=> b!1762217 (=> (not res!793125) (not e!1127684))))

(assert (=> b!1762217 (= res!793125 (= (head!4076 lt!680342) (head!4076 lt!680342)))))

(assert (= (and d!538560 (not res!793124)) b!1762216))

(assert (= (and b!1762216 res!793126) b!1762217))

(assert (= (and b!1762217 res!793125) b!1762218))

(assert (= (and d!538560 (not res!793127)) b!1762219))

(assert (=> b!1762219 m!2176203))

(assert (=> b!1762219 m!2176203))

(assert (=> b!1762218 m!2176423))

(assert (=> b!1762218 m!2176423))

(assert (=> b!1762218 m!2176423))

(assert (=> b!1762218 m!2176423))

(declare-fun m!2178853 () Bool)

(assert (=> b!1762218 m!2178853))

(assert (=> b!1762217 m!2176429))

(assert (=> b!1762217 m!2176429))

(assert (=> d!537604 d!538560))

(declare-fun d!538562 () Bool)

(assert (=> d!538562 (isPrefix!1703 lt!680342 lt!680342)))

(declare-fun lt!681128 () Unit!33555)

(assert (=> d!538562 (= lt!681128 (choose!10906 lt!680342 lt!680342))))

(assert (=> d!538562 (= (lemmaIsPrefixRefl!1128 lt!680342 lt!680342) lt!681128)))

(declare-fun bs!404195 () Bool)

(assert (= bs!404195 d!538562))

(assert (=> bs!404195 m!2176329))

(declare-fun m!2178855 () Bool)

(assert (=> bs!404195 m!2178855))

(assert (=> d!537604 d!538562))

(assert (=> d!537604 d!537896))

(declare-fun b!1762223 () Bool)

(declare-fun e!1127686 () Bool)

(assert (=> b!1762223 (= e!1127686 (>= (size!15395 (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362)))) (size!15395 (tail!2633 lt!680348))))))

(declare-fun d!538564 () Bool)

(assert (=> d!538564 e!1127686))

(declare-fun res!793131 () Bool)

(assert (=> d!538564 (=> res!793131 e!1127686)))

(declare-fun lt!681129 () Bool)

(assert (=> d!538564 (= res!793131 (not lt!681129))))

(declare-fun e!1127685 () Bool)

(assert (=> d!538564 (= lt!681129 e!1127685)))

(declare-fun res!793128 () Bool)

(assert (=> d!538564 (=> res!793128 e!1127685)))

(assert (=> d!538564 (= res!793128 ((_ is Nil!19382) (tail!2633 lt!680348)))))

(assert (=> d!538564 (= (isPrefix!1703 (tail!2633 lt!680348) (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362)))) lt!681129)))

(declare-fun b!1762220 () Bool)

(declare-fun e!1127687 () Bool)

(assert (=> b!1762220 (= e!1127685 e!1127687)))

(declare-fun res!793130 () Bool)

(assert (=> b!1762220 (=> (not res!793130) (not e!1127687))))

(assert (=> b!1762220 (= res!793130 (not ((_ is Nil!19382) (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362))))))))

(declare-fun b!1762222 () Bool)

(assert (=> b!1762222 (= e!1127687 (isPrefix!1703 (tail!2633 (tail!2633 lt!680348)) (tail!2633 (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362))))))))

(declare-fun b!1762221 () Bool)

(declare-fun res!793129 () Bool)

(assert (=> b!1762221 (=> (not res!793129) (not e!1127687))))

(assert (=> b!1762221 (= res!793129 (= (head!4076 (tail!2633 lt!680348)) (head!4076 (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362))))))))

(assert (= (and d!538564 (not res!793128)) b!1762220))

(assert (= (and b!1762220 res!793130) b!1762221))

(assert (= (and b!1762221 res!793129) b!1762222))

(assert (= (and d!538564 (not res!793131)) b!1762223))

(assert (=> b!1762223 m!2176413))

(declare-fun m!2178857 () Bool)

(assert (=> b!1762223 m!2178857))

(assert (=> b!1762223 m!2176411))

(assert (=> b!1762223 m!2177161))

(assert (=> b!1762222 m!2176411))

(assert (=> b!1762222 m!2177163))

(assert (=> b!1762222 m!2176413))

(declare-fun m!2178859 () Bool)

(assert (=> b!1762222 m!2178859))

(assert (=> b!1762222 m!2177163))

(assert (=> b!1762222 m!2178859))

(declare-fun m!2178861 () Bool)

(assert (=> b!1762222 m!2178861))

(assert (=> b!1762221 m!2176411))

(assert (=> b!1762221 m!2177169))

(assert (=> b!1762221 m!2176413))

(declare-fun m!2178863 () Bool)

(assert (=> b!1762221 m!2178863))

(assert (=> b!1760557 d!538564))

(assert (=> b!1760557 d!537918))

(declare-fun d!538566 () Bool)

(assert (=> d!538566 (= (tail!2633 (++!5287 lt!680348 (_2!10897 lt!680362))) (t!164035 (++!5287 lt!680348 (_2!10897 lt!680362))))))

(assert (=> b!1760557 d!538566))

(declare-fun d!538568 () Bool)

(declare-fun res!793132 () Bool)

(declare-fun e!1127688 () Bool)

(assert (=> d!538568 (=> (not res!793132) (not e!1127688))))

(assert (=> d!538568 (= res!793132 (rulesValid!1302 thiss!24550 (t!164036 rules!3447)))))

(assert (=> d!538568 (= (rulesInvariant!2761 thiss!24550 (t!164036 rules!3447)) e!1127688)))

(declare-fun b!1762224 () Bool)

(assert (=> b!1762224 (= e!1127688 (noDuplicateTag!1302 thiss!24550 (t!164036 rules!3447) Nil!19389))))

(assert (= (and d!538568 res!793132) b!1762224))

(declare-fun m!2178865 () Bool)

(assert (=> d!538568 m!2178865))

(declare-fun m!2178867 () Bool)

(assert (=> b!1762224 m!2178867))

(assert (=> b!1760796 d!538568))

(declare-fun d!538570 () Bool)

(assert (=> d!538570 (rulesInvariant!2761 thiss!24550 (t!164036 rules!3447))))

(declare-fun lt!681132 () Unit!33555)

(declare-fun choose!10917 (LexerInterface!3092 Rule!6726 List!19453) Unit!33555)

(assert (=> d!538570 (= lt!681132 (choose!10917 thiss!24550 (h!24784 rules!3447) (t!164036 rules!3447)))))

(assert (=> d!538570 (rulesInvariant!2761 thiss!24550 (Cons!19383 (h!24784 rules!3447) (t!164036 rules!3447)))))

(assert (=> d!538570 (= (lemmaInvariantOnRulesThenOnTail!190 thiss!24550 (h!24784 rules!3447) (t!164036 rules!3447)) lt!681132)))

(declare-fun bs!404196 () Bool)

(assert (= bs!404196 d!538570))

(assert (=> bs!404196 m!2176771))

(declare-fun m!2178869 () Bool)

(assert (=> bs!404196 m!2178869))

(declare-fun m!2178871 () Bool)

(assert (=> bs!404196 m!2178871))

(assert (=> b!1760796 d!538570))

(declare-fun b!1762225 () Bool)

(declare-fun e!1127689 () Bool)

(declare-fun e!1127692 () Bool)

(assert (=> b!1762225 (= e!1127689 e!1127692)))

(declare-fun res!793133 () Bool)

(assert (=> b!1762225 (=> (not res!793133) (not e!1127692))))

(declare-fun lt!681134 () Option!3948)

(assert (=> b!1762225 (= res!793133 (contains!3491 (t!164036 rules!3447) (get!5898 lt!681134)))))

(declare-fun b!1762226 () Bool)

(declare-fun lt!681133 () Unit!33555)

(declare-fun lt!681135 () Unit!33555)

(assert (=> b!1762226 (= lt!681133 lt!681135)))

(assert (=> b!1762226 (rulesInvariant!2761 thiss!24550 (t!164036 (t!164036 rules!3447)))))

(assert (=> b!1762226 (= lt!681135 (lemmaInvariantOnRulesThenOnTail!190 thiss!24550 (h!24784 (t!164036 rules!3447)) (t!164036 (t!164036 rules!3447))))))

(declare-fun e!1127691 () Option!3948)

(assert (=> b!1762226 (= e!1127691 (getRuleFromTag!511 thiss!24550 (t!164036 (t!164036 rules!3447)) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1762227 () Bool)

(declare-fun e!1127690 () Option!3948)

(assert (=> b!1762227 (= e!1127690 e!1127691)))

(declare-fun c!287211 () Bool)

(assert (=> b!1762227 (= c!287211 (and ((_ is Cons!19383) (t!164036 rules!3447)) (not (= (tag!3829 (h!24784 (t!164036 rules!3447))) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun d!538572 () Bool)

(assert (=> d!538572 e!1127689))

(declare-fun res!793134 () Bool)

(assert (=> d!538572 (=> res!793134 e!1127689)))

(assert (=> d!538572 (= res!793134 (isEmpty!12231 lt!681134))))

(assert (=> d!538572 (= lt!681134 e!1127690)))

(declare-fun c!287212 () Bool)

(assert (=> d!538572 (= c!287212 (and ((_ is Cons!19383) (t!164036 rules!3447)) (= (tag!3829 (h!24784 (t!164036 rules!3447))) (tag!3829 (rule!5481 (_1!10897 lt!680362))))))))

(assert (=> d!538572 (rulesInvariant!2761 thiss!24550 (t!164036 rules!3447))))

(assert (=> d!538572 (= (getRuleFromTag!511 thiss!24550 (t!164036 rules!3447) (tag!3829 (rule!5481 (_1!10897 lt!680362)))) lt!681134)))

(declare-fun b!1762228 () Bool)

(assert (=> b!1762228 (= e!1127692 (= (tag!3829 (get!5898 lt!681134)) (tag!3829 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1762229 () Bool)

(assert (=> b!1762229 (= e!1127691 None!3947)))

(declare-fun b!1762230 () Bool)

(assert (=> b!1762230 (= e!1127690 (Some!3947 (h!24784 (t!164036 rules!3447))))))

(assert (= (and d!538572 c!287212) b!1762230))

(assert (= (and d!538572 (not c!287212)) b!1762227))

(assert (= (and b!1762227 c!287211) b!1762226))

(assert (= (and b!1762227 (not c!287211)) b!1762229))

(assert (= (and d!538572 (not res!793134)) b!1762225))

(assert (= (and b!1762225 res!793133) b!1762228))

(declare-fun m!2178873 () Bool)

(assert (=> b!1762225 m!2178873))

(assert (=> b!1762225 m!2178873))

(declare-fun m!2178875 () Bool)

(assert (=> b!1762225 m!2178875))

(declare-fun m!2178877 () Bool)

(assert (=> b!1762226 m!2178877))

(declare-fun m!2178879 () Bool)

(assert (=> b!1762226 m!2178879))

(declare-fun m!2178881 () Bool)

(assert (=> b!1762226 m!2178881))

(declare-fun m!2178883 () Bool)

(assert (=> d!538572 m!2178883))

(assert (=> d!538572 m!2176771))

(assert (=> b!1762228 m!2178873))

(assert (=> b!1760796 d!538572))

(declare-fun d!538574 () Bool)

(declare-fun c!287213 () Bool)

(assert (=> d!538574 (= c!287213 ((_ is Nil!19382) lt!680383))))

(declare-fun e!1127693 () (InoxSet C!9756))

(assert (=> d!538574 (= (content!2798 lt!680383) e!1127693)))

(declare-fun b!1762231 () Bool)

(assert (=> b!1762231 (= e!1127693 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1762232 () Bool)

(assert (=> b!1762232 (= e!1127693 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 lt!680383) true) (content!2798 (t!164035 lt!680383))))))

(assert (= (and d!538574 c!287213) b!1762231))

(assert (= (and d!538574 (not c!287213)) b!1762232))

(declare-fun m!2178885 () Bool)

(assert (=> b!1762232 m!2178885))

(declare-fun m!2178887 () Bool)

(assert (=> b!1762232 m!2178887))

(assert (=> d!537598 d!538574))

(assert (=> d!537598 d!538284))

(declare-fun d!538576 () Bool)

(declare-fun c!287214 () Bool)

(assert (=> d!538576 (= c!287214 ((_ is Nil!19382) (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))

(declare-fun e!1127694 () (InoxSet C!9756))

(assert (=> d!538576 (= (content!2798 (Cons!19382 (head!4076 suffix!1421) Nil!19382)) e!1127694)))

(declare-fun b!1762233 () Bool)

(assert (=> b!1762233 (= e!1127694 ((as const (Array C!9756 Bool)) false))))

(declare-fun b!1762234 () Bool)

(assert (=> b!1762234 (= e!1127694 ((_ map or) (store ((as const (Array C!9756 Bool)) false) (h!24783 (Cons!19382 (head!4076 suffix!1421) Nil!19382)) true) (content!2798 (t!164035 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (= (and d!538576 c!287214) b!1762233))

(assert (= (and d!538576 (not c!287214)) b!1762234))

(declare-fun m!2178889 () Bool)

(assert (=> b!1762234 m!2178889))

(declare-fun m!2178891 () Bool)

(assert (=> b!1762234 m!2178891))

(assert (=> d!537598 d!538576))

(assert (=> b!1760863 d!538464))

(assert (=> b!1760863 d!538356))

(declare-fun d!538578 () Bool)

(assert (=> d!538578 (= (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362)))) (nullableFct!333 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun bs!404197 () Bool)

(assert (= bs!404197 d!538578))

(declare-fun m!2178893 () Bool)

(assert (=> bs!404197 m!2178893))

(assert (=> b!1760958 d!538578))

(declare-fun d!538580 () Bool)

(assert (=> d!538580 (= (isDefined!3292 lt!680468) (not (isEmpty!12230 lt!680468)))))

(declare-fun bs!404198 () Bool)

(assert (= bs!404198 d!538580))

(assert (=> bs!404198 m!2176327))

(assert (=> b!1760509 d!538580))

(assert (=> d!537780 d!538346))

(declare-fun b!1762235 () Bool)

(declare-fun res!793137 () Bool)

(declare-fun e!1127696 () Bool)

(assert (=> b!1762235 (=> res!793137 e!1127696)))

(assert (=> b!1762235 (= res!793137 (not ((_ is Concat!8345) (regex!3463 lt!680356))))))

(declare-fun e!1127698 () Bool)

(assert (=> b!1762235 (= e!1127698 e!1127696)))

(declare-fun bm!110779 () Bool)

(declare-fun call!110786 () Bool)

(declare-fun call!110784 () Bool)

(assert (=> bm!110779 (= call!110786 call!110784)))

(declare-fun c!287215 () Bool)

(declare-fun c!287216 () Bool)

(declare-fun bm!110780 () Bool)

(assert (=> bm!110780 (= call!110784 (validRegex!1935 (ite c!287215 (reg!5120 (regex!3463 lt!680356)) (ite c!287216 (regTwo!10095 (regex!3463 lt!680356)) (regOne!10094 (regex!3463 lt!680356))))))))

(declare-fun b!1762237 () Bool)

(declare-fun e!1127697 () Bool)

(declare-fun call!110785 () Bool)

(assert (=> b!1762237 (= e!1127697 call!110785)))

(declare-fun b!1762238 () Bool)

(declare-fun e!1127695 () Bool)

(declare-fun e!1127700 () Bool)

(assert (=> b!1762238 (= e!1127695 e!1127700)))

(assert (=> b!1762238 (= c!287215 ((_ is Star!4791) (regex!3463 lt!680356)))))

(declare-fun b!1762239 () Bool)

(declare-fun res!793136 () Bool)

(declare-fun e!1127699 () Bool)

(assert (=> b!1762239 (=> (not res!793136) (not e!1127699))))

(assert (=> b!1762239 (= res!793136 call!110785)))

(assert (=> b!1762239 (= e!1127698 e!1127699)))

(declare-fun b!1762240 () Bool)

(declare-fun e!1127701 () Bool)

(assert (=> b!1762240 (= e!1127701 call!110784)))

(declare-fun b!1762241 () Bool)

(assert (=> b!1762241 (= e!1127700 e!1127701)))

(declare-fun res!793135 () Bool)

(assert (=> b!1762241 (= res!793135 (not (nullable!1461 (reg!5120 (regex!3463 lt!680356)))))))

(assert (=> b!1762241 (=> (not res!793135) (not e!1127701))))

(declare-fun b!1762242 () Bool)

(assert (=> b!1762242 (= e!1127696 e!1127697)))

(declare-fun res!793138 () Bool)

(assert (=> b!1762242 (=> (not res!793138) (not e!1127697))))

(assert (=> b!1762242 (= res!793138 call!110786)))

(declare-fun bm!110781 () Bool)

(assert (=> bm!110781 (= call!110785 (validRegex!1935 (ite c!287216 (regOne!10095 (regex!3463 lt!680356)) (regTwo!10094 (regex!3463 lt!680356)))))))

(declare-fun b!1762243 () Bool)

(assert (=> b!1762243 (= e!1127699 call!110786)))

(declare-fun d!538582 () Bool)

(declare-fun res!793139 () Bool)

(assert (=> d!538582 (=> res!793139 e!1127695)))

(assert (=> d!538582 (= res!793139 ((_ is ElementMatch!4791) (regex!3463 lt!680356)))))

(assert (=> d!538582 (= (validRegex!1935 (regex!3463 lt!680356)) e!1127695)))

(declare-fun b!1762236 () Bool)

(assert (=> b!1762236 (= e!1127700 e!1127698)))

(assert (=> b!1762236 (= c!287216 ((_ is Union!4791) (regex!3463 lt!680356)))))

(assert (= (and d!538582 (not res!793139)) b!1762238))

(assert (= (and b!1762238 c!287215) b!1762241))

(assert (= (and b!1762238 (not c!287215)) b!1762236))

(assert (= (and b!1762241 res!793135) b!1762240))

(assert (= (and b!1762236 c!287216) b!1762239))

(assert (= (and b!1762236 (not c!287216)) b!1762235))

(assert (= (and b!1762239 res!793136) b!1762243))

(assert (= (and b!1762235 (not res!793137)) b!1762242))

(assert (= (and b!1762242 res!793138) b!1762237))

(assert (= (or b!1762239 b!1762237) bm!110781))

(assert (= (or b!1762243 b!1762242) bm!110779))

(assert (= (or b!1762240 bm!110779) bm!110780))

(declare-fun m!2178895 () Bool)

(assert (=> bm!110780 m!2178895))

(declare-fun m!2178897 () Bool)

(assert (=> b!1762241 m!2178897))

(declare-fun m!2178899 () Bool)

(assert (=> bm!110781 m!2178899))

(assert (=> d!537780 d!538582))

(declare-fun d!538584 () Bool)

(declare-fun res!793140 () Bool)

(declare-fun e!1127702 () Bool)

(assert (=> d!538584 (=> (not res!793140) (not e!1127702))))

(assert (=> d!538584 (= res!793140 (<= (size!15395 (list!7867 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) 512))))

(assert (=> d!538584 (= (inv!25176 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) e!1127702)))

(declare-fun b!1762244 () Bool)

(declare-fun res!793141 () Bool)

(assert (=> b!1762244 (=> (not res!793141) (not e!1127702))))

(assert (=> b!1762244 (= res!793141 (= (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) (size!15395 (list!7867 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))))

(declare-fun b!1762245 () Bool)

(assert (=> b!1762245 (= e!1127702 (and (> (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) 0) (<= (csize!13125 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) 512)))))

(assert (= (and d!538584 res!793140) b!1762244))

(assert (= (and b!1762244 res!793141) b!1762245))

(declare-fun m!2178901 () Bool)

(assert (=> d!538584 m!2178901))

(assert (=> d!538584 m!2178901))

(declare-fun m!2178903 () Bool)

(assert (=> d!538584 m!2178903))

(assert (=> b!1762244 m!2178901))

(assert (=> b!1762244 m!2178901))

(assert (=> b!1762244 m!2178903))

(assert (=> b!1760823 d!538584))

(assert (=> b!1760556 d!537914))

(declare-fun d!538586 () Bool)

(assert (=> d!538586 (= (head!4076 (++!5287 lt!680348 (_2!10897 lt!680362))) (h!24783 (++!5287 lt!680348 (_2!10897 lt!680362))))))

(assert (=> b!1760556 d!538586))

(declare-fun bs!404199 () Bool)

(declare-fun d!538588 () Bool)

(assert (= bs!404199 (and d!538588 d!537814)))

(declare-fun lambda!70204 () Int)

(assert (=> bs!404199 (= lambda!70204 lambda!70150)))

(declare-fun bs!404200 () Bool)

(assert (= bs!404200 (and d!538588 d!538156)))

(assert (=> bs!404200 (= (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 rule!422))) (= lambda!70204 lambda!70195))))

(declare-fun bs!404201 () Bool)

(assert (= bs!404201 (and d!538588 d!538302)))

(assert (=> bs!404201 (= (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (h!24784 rules!3447)))) (= lambda!70204 lambda!70197))))

(declare-fun bs!404203 () Bool)

(assert (= bs!404203 (and d!538588 d!538334)))

(assert (=> bs!404203 (= (= (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 token!523)))) (= lambda!70204 lambda!70198))))

(assert (=> d!538588 true))

(assert (=> d!538588 (< (dynLambda!9329 order!12283 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (dynLambda!9335 order!12291 lambda!70204))))

(assert (=> d!538588 (= (equivClasses!1317 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) (Forall2!561 lambda!70204))))

(declare-fun bs!404204 () Bool)

(assert (= bs!404204 d!538588))

(declare-fun m!2178907 () Bool)

(assert (=> bs!404204 m!2178907))

(assert (=> b!1760807 d!538588))

(declare-fun d!538592 () Bool)

(assert (=> d!538592 (= (inv!17 (value!108368 token!523)) (= (charsToBigInt!1 (text!25319 (value!108368 token!523))) (value!108360 (value!108368 token!523))))))

(declare-fun bs!404205 () Bool)

(assert (= bs!404205 d!538592))

(declare-fun m!2178909 () Bool)

(assert (=> bs!404205 m!2178909))

(assert (=> b!1760913 d!538592))

(declare-fun b!1762255 () Bool)

(declare-fun res!793155 () Bool)

(declare-fun e!1127707 () Bool)

(assert (=> b!1762255 (=> (not res!793155) (not e!1127707))))

(declare-fun call!110787 () Bool)

(assert (=> b!1762255 (= res!793155 (not call!110787))))

(declare-fun b!1762256 () Bool)

(declare-fun res!793150 () Bool)

(declare-fun e!1127713 () Bool)

(assert (=> b!1762256 (=> res!793150 e!1127713)))

(assert (=> b!1762256 (= res!793150 e!1127707)))

(declare-fun res!793151 () Bool)

(assert (=> b!1762256 (=> (not res!793151) (not e!1127707))))

(declare-fun lt!681144 () Bool)

(assert (=> b!1762256 (= res!793151 lt!681144)))

(declare-fun b!1762257 () Bool)

(declare-fun res!793153 () Bool)

(assert (=> b!1762257 (=> (not res!793153) (not e!1127707))))

(assert (=> b!1762257 (= res!793153 (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun b!1762259 () Bool)

(declare-fun e!1127712 () Bool)

(assert (=> b!1762259 (= e!1127712 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun b!1762260 () Bool)

(declare-fun res!793154 () Bool)

(assert (=> b!1762260 (=> res!793154 e!1127713)))

(assert (=> b!1762260 (= res!793154 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun e!1127709 () Bool)

(assert (=> b!1762260 (= e!1127709 e!1127713)))

(declare-fun b!1762261 () Bool)

(declare-fun res!793149 () Bool)

(declare-fun e!1127708 () Bool)

(assert (=> b!1762261 (=> res!793149 e!1127708)))

(assert (=> b!1762261 (= res!793149 (not (isEmpty!12227 (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))))

(declare-fun bm!110782 () Bool)

(assert (=> bm!110782 (= call!110787 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun b!1762262 () Bool)

(declare-fun e!1127710 () Bool)

(assert (=> b!1762262 (= e!1127710 e!1127708)))

(declare-fun res!793156 () Bool)

(assert (=> b!1762262 (=> res!793156 e!1127708)))

(assert (=> b!1762262 (= res!793156 call!110787)))

(declare-fun b!1762263 () Bool)

(assert (=> b!1762263 (= e!1127708 (not (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))))))))

(declare-fun b!1762264 () Bool)

(assert (=> b!1762264 (= e!1127712 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))) (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))))) (tail!2633 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun b!1762265 () Bool)

(declare-fun e!1127711 () Bool)

(assert (=> b!1762265 (= e!1127711 (= lt!681144 call!110787))))

(declare-fun b!1762266 () Bool)

(assert (=> b!1762266 (= e!1127711 e!1127709)))

(declare-fun c!287218 () Bool)

(assert (=> b!1762266 (= c!287218 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))))))

(declare-fun b!1762267 () Bool)

(assert (=> b!1762267 (= e!1127713 e!1127710)))

(declare-fun res!793152 () Bool)

(assert (=> b!1762267 (=> (not res!793152) (not e!1127710))))

(assert (=> b!1762267 (= res!793152 (not lt!681144))))

(declare-fun b!1762268 () Bool)

(assert (=> b!1762268 (= e!1127707 (= (head!4076 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) (c!286774 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))))))

(declare-fun d!538594 () Bool)

(assert (=> d!538594 e!1127711))

(declare-fun c!287220 () Bool)

(assert (=> d!538594 (= c!287220 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468))))))))

(assert (=> d!538594 (= lt!681144 e!1127712)))

(declare-fun c!287219 () Bool)

(assert (=> d!538594 (= c!287219 (isEmpty!12227 (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))))))

(assert (=> d!538594 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))))

(assert (=> d!538594 (= (matchR!2264 (regex!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))) (list!7861 (charsOf!2112 (_1!10897 (get!5897 lt!680468))))) lt!681144)))

(declare-fun b!1762258 () Bool)

(assert (=> b!1762258 (= e!1127709 (not lt!681144))))

(assert (= (and d!538594 c!287219) b!1762259))

(assert (= (and d!538594 (not c!287219)) b!1762264))

(assert (= (and d!538594 c!287220) b!1762265))

(assert (= (and d!538594 (not c!287220)) b!1762266))

(assert (= (and b!1762266 c!287218) b!1762258))

(assert (= (and b!1762266 (not c!287218)) b!1762260))

(assert (= (and b!1762260 (not res!793154)) b!1762256))

(assert (= (and b!1762256 res!793151) b!1762255))

(assert (= (and b!1762255 res!793155) b!1762257))

(assert (= (and b!1762257 res!793153) b!1762268))

(assert (= (and b!1762256 (not res!793150)) b!1762267))

(assert (= (and b!1762267 res!793152) b!1762262))

(assert (= (and b!1762262 (not res!793156)) b!1762261))

(assert (= (and b!1762261 (not res!793149)) b!1762263))

(assert (= (or b!1762265 b!1762255 b!1762262) bm!110782))

(assert (=> bm!110782 m!2176311))

(declare-fun m!2178911 () Bool)

(assert (=> bm!110782 m!2178911))

(assert (=> b!1762261 m!2176311))

(declare-fun m!2178913 () Bool)

(assert (=> b!1762261 m!2178913))

(assert (=> b!1762261 m!2178913))

(declare-fun m!2178915 () Bool)

(assert (=> b!1762261 m!2178915))

(declare-fun m!2178917 () Bool)

(assert (=> b!1762259 m!2178917))

(assert (=> d!538594 m!2176311))

(assert (=> d!538594 m!2178911))

(declare-fun m!2178919 () Bool)

(assert (=> d!538594 m!2178919))

(assert (=> b!1762257 m!2176311))

(assert (=> b!1762257 m!2178913))

(assert (=> b!1762257 m!2178913))

(assert (=> b!1762257 m!2178915))

(assert (=> b!1762264 m!2176311))

(declare-fun m!2178921 () Bool)

(assert (=> b!1762264 m!2178921))

(assert (=> b!1762264 m!2178921))

(declare-fun m!2178923 () Bool)

(assert (=> b!1762264 m!2178923))

(assert (=> b!1762264 m!2176311))

(assert (=> b!1762264 m!2178913))

(assert (=> b!1762264 m!2178923))

(assert (=> b!1762264 m!2178913))

(declare-fun m!2178927 () Bool)

(assert (=> b!1762264 m!2178927))

(assert (=> b!1762268 m!2176311))

(assert (=> b!1762268 m!2178921))

(assert (=> b!1762263 m!2176311))

(assert (=> b!1762263 m!2178921))

(assert (=> b!1760505 d!538594))

(assert (=> b!1760505 d!537936))

(assert (=> b!1760505 d!537932))

(assert (=> b!1760505 d!537934))

(declare-fun b!1762283 () Bool)

(declare-fun res!793172 () Bool)

(declare-fun e!1127720 () Bool)

(assert (=> b!1762283 (=> (not res!793172) (not e!1127720))))

(declare-fun isEmpty!12237 (Conc!6447) Bool)

(assert (=> b!1762283 (= res!793172 (not (isEmpty!12237 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))))

(declare-fun b!1762284 () Bool)

(declare-fun res!793169 () Bool)

(assert (=> b!1762284 (=> (not res!793169) (not e!1127720))))

(assert (=> b!1762284 (= res!793169 (<= (- (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) 1))))

(declare-fun b!1762285 () Bool)

(assert (=> b!1762285 (= e!1127720 (not (isEmpty!12237 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))))

(declare-fun b!1762286 () Bool)

(declare-fun e!1127719 () Bool)

(assert (=> b!1762286 (= e!1127719 e!1127720)))

(declare-fun res!793173 () Bool)

(assert (=> b!1762286 (=> (not res!793173) (not e!1127720))))

(assert (=> b!1762286 (= res!793173 (<= (- 1) (- (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))))

(declare-fun b!1762287 () Bool)

(declare-fun res!793171 () Bool)

(assert (=> b!1762287 (=> (not res!793171) (not e!1127720))))

(assert (=> b!1762287 (= res!793171 (isBalanced!2014 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun b!1762288 () Bool)

(declare-fun res!793170 () Bool)

(assert (=> b!1762288 (=> (not res!793170) (not e!1127720))))

(assert (=> b!1762288 (= res!793170 (isBalanced!2014 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun d!538596 () Bool)

(declare-fun res!793174 () Bool)

(assert (=> d!538596 (=> res!793174 e!1127719)))

(assert (=> d!538596 (= res!793174 (not ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(assert (=> d!538596 (= (isBalanced!2014 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))) e!1127719)))

(assert (= (and d!538596 (not res!793174)) b!1762286))

(assert (= (and b!1762286 res!793173) b!1762284))

(assert (= (and b!1762284 res!793169) b!1762288))

(assert (= (and b!1762288 res!793170) b!1762287))

(assert (= (and b!1762287 res!793171) b!1762283))

(assert (= (and b!1762283 res!793172) b!1762285))

(assert (=> b!1762286 m!2177661))

(assert (=> b!1762286 m!2177663))

(declare-fun m!2178983 () Bool)

(assert (=> b!1762285 m!2178983))

(declare-fun m!2178987 () Bool)

(assert (=> b!1762287 m!2178987))

(declare-fun m!2178989 () Bool)

(assert (=> b!1762288 m!2178989))

(declare-fun m!2178991 () Bool)

(assert (=> b!1762283 m!2178991))

(assert (=> b!1762284 m!2177661))

(assert (=> b!1762284 m!2177663))

(assert (=> d!537638 d!538596))

(declare-fun d!538612 () Bool)

(declare-fun e!1127724 () Bool)

(assert (=> d!538612 e!1127724))

(declare-fun res!793175 () Bool)

(assert (=> d!538612 (=> (not res!793175) (not e!1127724))))

(declare-fun lt!681152 () BalanceConc!12838)

(assert (=> d!538612 (= res!793175 (= (list!7861 lt!681152) lt!680348))))

(assert (=> d!538612 (= lt!681152 (BalanceConc!12839 (fromList!443 lt!680348)))))

(assert (=> d!538612 (= (fromListB!1110 lt!680348) lt!681152)))

(declare-fun b!1762295 () Bool)

(assert (=> b!1762295 (= e!1127724 (isBalanced!2014 (fromList!443 lt!680348)))))

(assert (= (and d!538612 res!793175) b!1762295))

(declare-fun m!2178995 () Bool)

(assert (=> d!538612 m!2178995))

(declare-fun m!2178997 () Bool)

(assert (=> d!538612 m!2178997))

(assert (=> b!1762295 m!2178997))

(assert (=> b!1762295 m!2178997))

(declare-fun m!2179001 () Bool)

(assert (=> b!1762295 m!2179001))

(assert (=> d!537802 d!538612))

(declare-fun d!538618 () Bool)

(declare-fun lt!681154 () Int)

(assert (=> d!538618 (>= lt!681154 0)))

(declare-fun e!1127726 () Int)

(assert (=> d!538618 (= lt!681154 e!1127726)))

(declare-fun c!287226 () Bool)

(assert (=> d!538618 (= c!287226 ((_ is Nil!19382) lt!680383))))

(assert (=> d!538618 (= (size!15395 lt!680383) lt!681154)))

(declare-fun b!1762298 () Bool)

(assert (=> b!1762298 (= e!1127726 0)))

(declare-fun b!1762299 () Bool)

(assert (=> b!1762299 (= e!1127726 (+ 1 (size!15395 (t!164035 lt!680383))))))

(assert (= (and d!538618 c!287226) b!1762298))

(assert (= (and d!538618 (not c!287226)) b!1762299))

(declare-fun m!2179005 () Bool)

(assert (=> b!1762299 m!2179005))

(assert (=> b!1760425 d!538618))

(assert (=> b!1760425 d!538204))

(declare-fun d!538622 () Bool)

(declare-fun lt!681155 () Int)

(assert (=> d!538622 (>= lt!681155 0)))

(declare-fun e!1127727 () Int)

(assert (=> d!538622 (= lt!681155 e!1127727)))

(declare-fun c!287227 () Bool)

(assert (=> d!538622 (= c!287227 ((_ is Nil!19382) (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))

(assert (=> d!538622 (= (size!15395 (Cons!19382 (head!4076 suffix!1421) Nil!19382)) lt!681155)))

(declare-fun b!1762300 () Bool)

(assert (=> b!1762300 (= e!1127727 0)))

(declare-fun b!1762301 () Bool)

(assert (=> b!1762301 (= e!1127727 (+ 1 (size!15395 (t!164035 (Cons!19382 (head!4076 suffix!1421) Nil!19382)))))))

(assert (= (and d!538622 c!287227) b!1762300))

(assert (= (and d!538622 (not c!287227)) b!1762301))

(declare-fun m!2179007 () Bool)

(assert (=> b!1762301 m!2179007))

(assert (=> b!1760425 d!538622))

(declare-fun b!1762302 () Bool)

(declare-fun res!793182 () Bool)

(declare-fun e!1127728 () Bool)

(assert (=> b!1762302 (=> (not res!793182) (not e!1127728))))

(declare-fun call!110788 () Bool)

(assert (=> b!1762302 (= res!793182 (not call!110788))))

(declare-fun b!1762303 () Bool)

(declare-fun res!793177 () Bool)

(declare-fun e!1127734 () Bool)

(assert (=> b!1762303 (=> res!793177 e!1127734)))

(assert (=> b!1762303 (= res!793177 e!1127728)))

(declare-fun res!793178 () Bool)

(assert (=> b!1762303 (=> (not res!793178) (not e!1127728))))

(declare-fun lt!681156 () Bool)

(assert (=> b!1762303 (= res!793178 lt!681156)))

(declare-fun b!1762304 () Bool)

(declare-fun res!793180 () Bool)

(assert (=> b!1762304 (=> (not res!793180) (not e!1127728))))

(assert (=> b!1762304 (= res!793180 (isEmpty!12227 (tail!2633 (tail!2633 lt!680342))))))

(declare-fun b!1762306 () Bool)

(declare-fun e!1127733 () Bool)

(assert (=> b!1762306 (= e!1127733 (nullable!1461 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342))))))

(declare-fun b!1762307 () Bool)

(declare-fun res!793181 () Bool)

(assert (=> b!1762307 (=> res!793181 e!1127734)))

(assert (=> b!1762307 (= res!793181 (not ((_ is ElementMatch!4791) (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)))))))

(declare-fun e!1127730 () Bool)

(assert (=> b!1762307 (= e!1127730 e!1127734)))

(declare-fun b!1762308 () Bool)

(declare-fun res!793176 () Bool)

(declare-fun e!1127729 () Bool)

(assert (=> b!1762308 (=> res!793176 e!1127729)))

(assert (=> b!1762308 (= res!793176 (not (isEmpty!12227 (tail!2633 (tail!2633 lt!680342)))))))

(declare-fun bm!110783 () Bool)

(assert (=> bm!110783 (= call!110788 (isEmpty!12227 (tail!2633 lt!680342)))))

(declare-fun b!1762309 () Bool)

(declare-fun e!1127731 () Bool)

(assert (=> b!1762309 (= e!1127731 e!1127729)))

(declare-fun res!793183 () Bool)

(assert (=> b!1762309 (=> res!793183 e!1127729)))

(assert (=> b!1762309 (= res!793183 call!110788)))

(declare-fun b!1762310 () Bool)

(assert (=> b!1762310 (= e!1127729 (not (= (head!4076 (tail!2633 lt!680342)) (c!286774 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342))))))))

(declare-fun b!1762311 () Bool)

(assert (=> b!1762311 (= e!1127733 (matchR!2264 (derivativeStep!1230 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)) (head!4076 (tail!2633 lt!680342))) (tail!2633 (tail!2633 lt!680342))))))

(declare-fun b!1762312 () Bool)

(declare-fun e!1127732 () Bool)

(assert (=> b!1762312 (= e!1127732 (= lt!681156 call!110788))))

(declare-fun b!1762313 () Bool)

(assert (=> b!1762313 (= e!1127732 e!1127730)))

(declare-fun c!287228 () Bool)

(assert (=> b!1762313 (= c!287228 ((_ is EmptyLang!4791) (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342))))))

(declare-fun b!1762314 () Bool)

(assert (=> b!1762314 (= e!1127734 e!1127731)))

(declare-fun res!793179 () Bool)

(assert (=> b!1762314 (=> (not res!793179) (not e!1127731))))

(assert (=> b!1762314 (= res!793179 (not lt!681156))))

(declare-fun b!1762315 () Bool)

(assert (=> b!1762315 (= e!1127728 (= (head!4076 (tail!2633 lt!680342)) (c!286774 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)))))))

(declare-fun d!538624 () Bool)

(assert (=> d!538624 e!1127732))

(declare-fun c!287230 () Bool)

(assert (=> d!538624 (= c!287230 ((_ is EmptyExpr!4791) (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342))))))

(assert (=> d!538624 (= lt!681156 e!1127733)))

(declare-fun c!287229 () Bool)

(assert (=> d!538624 (= c!287229 (isEmpty!12227 (tail!2633 lt!680342)))))

(assert (=> d!538624 (validRegex!1935 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)))))

(assert (=> d!538624 (= (matchR!2264 (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)) (tail!2633 lt!680342)) lt!681156)))

(declare-fun b!1762305 () Bool)

(assert (=> b!1762305 (= e!1127730 (not lt!681156))))

(assert (= (and d!538624 c!287229) b!1762306))

(assert (= (and d!538624 (not c!287229)) b!1762311))

(assert (= (and d!538624 c!287230) b!1762312))

(assert (= (and d!538624 (not c!287230)) b!1762313))

(assert (= (and b!1762313 c!287228) b!1762305))

(assert (= (and b!1762313 (not c!287228)) b!1762307))

(assert (= (and b!1762307 (not res!793181)) b!1762303))

(assert (= (and b!1762303 res!793178) b!1762302))

(assert (= (and b!1762302 res!793182) b!1762304))

(assert (= (and b!1762304 res!793180) b!1762315))

(assert (= (and b!1762303 (not res!793177)) b!1762314))

(assert (= (and b!1762314 res!793179) b!1762309))

(assert (= (and b!1762309 (not res!793183)) b!1762308))

(assert (= (and b!1762308 (not res!793176)) b!1762310))

(assert (= (or b!1762312 b!1762302 b!1762309) bm!110783))

(assert (=> bm!110783 m!2176423))

(assert (=> bm!110783 m!2176829))

(assert (=> b!1762308 m!2176423))

(assert (=> b!1762308 m!2178351))

(assert (=> b!1762308 m!2178351))

(declare-fun m!2179009 () Bool)

(assert (=> b!1762308 m!2179009))

(assert (=> b!1762306 m!2176835))

(declare-fun m!2179011 () Bool)

(assert (=> b!1762306 m!2179011))

(assert (=> d!538624 m!2176423))

(assert (=> d!538624 m!2176829))

(assert (=> d!538624 m!2176835))

(declare-fun m!2179013 () Bool)

(assert (=> d!538624 m!2179013))

(assert (=> b!1762304 m!2176423))

(assert (=> b!1762304 m!2178351))

(assert (=> b!1762304 m!2178351))

(assert (=> b!1762304 m!2179009))

(assert (=> b!1762311 m!2176423))

(assert (=> b!1762311 m!2178361))

(assert (=> b!1762311 m!2176835))

(assert (=> b!1762311 m!2178361))

(declare-fun m!2179015 () Bool)

(assert (=> b!1762311 m!2179015))

(assert (=> b!1762311 m!2176423))

(assert (=> b!1762311 m!2178351))

(assert (=> b!1762311 m!2179015))

(assert (=> b!1762311 m!2178351))

(declare-fun m!2179017 () Bool)

(assert (=> b!1762311 m!2179017))

(assert (=> b!1762315 m!2176423))

(assert (=> b!1762315 m!2178361))

(assert (=> b!1762310 m!2176423))

(assert (=> b!1762310 m!2178361))

(assert (=> b!1760870 d!538624))

(declare-fun d!538626 () Bool)

(declare-fun lt!681157 () Regex!4791)

(assert (=> d!538626 (validRegex!1935 lt!681157)))

(declare-fun e!1127735 () Regex!4791)

(assert (=> d!538626 (= lt!681157 e!1127735)))

(declare-fun c!287234 () Bool)

(assert (=> d!538626 (= c!287234 (or ((_ is EmptyExpr!4791) (regex!3463 rule!422)) ((_ is EmptyLang!4791) (regex!3463 rule!422))))))

(assert (=> d!538626 (validRegex!1935 (regex!3463 rule!422))))

(assert (=> d!538626 (= (derivativeStep!1230 (regex!3463 rule!422) (head!4076 lt!680342)) lt!681157)))

(declare-fun b!1762316 () Bool)

(declare-fun call!110790 () Regex!4791)

(declare-fun e!1127737 () Regex!4791)

(declare-fun call!110792 () Regex!4791)

(assert (=> b!1762316 (= e!1127737 (Union!4791 (Concat!8345 call!110790 (regTwo!10094 (regex!3463 rule!422))) call!110792))))

(declare-fun b!1762317 () Bool)

(declare-fun e!1127736 () Regex!4791)

(assert (=> b!1762317 (= e!1127736 (Concat!8345 call!110790 (regex!3463 rule!422)))))

(declare-fun b!1762318 () Bool)

(declare-fun e!1127738 () Regex!4791)

(assert (=> b!1762318 (= e!1127738 e!1127736)))

(declare-fun c!287235 () Bool)

(assert (=> b!1762318 (= c!287235 ((_ is Star!4791) (regex!3463 rule!422)))))

(declare-fun b!1762319 () Bool)

(declare-fun c!287232 () Bool)

(assert (=> b!1762319 (= c!287232 ((_ is Union!4791) (regex!3463 rule!422)))))

(declare-fun e!1127739 () Regex!4791)

(assert (=> b!1762319 (= e!1127739 e!1127738)))

(declare-fun b!1762320 () Bool)

(assert (=> b!1762320 (= e!1127735 e!1127739)))

(declare-fun c!287231 () Bool)

(assert (=> b!1762320 (= c!287231 ((_ is ElementMatch!4791) (regex!3463 rule!422)))))

(declare-fun b!1762321 () Bool)

(assert (=> b!1762321 (= e!1127735 EmptyLang!4791)))

(declare-fun c!287233 () Bool)

(declare-fun bm!110784 () Bool)

(declare-fun call!110789 () Regex!4791)

(assert (=> bm!110784 (= call!110789 (derivativeStep!1230 (ite c!287232 (regOne!10095 (regex!3463 rule!422)) (ite c!287233 (regTwo!10094 (regex!3463 rule!422)) (regOne!10094 (regex!3463 rule!422)))) (head!4076 lt!680342)))))

(declare-fun bm!110785 () Bool)

(declare-fun call!110791 () Regex!4791)

(assert (=> bm!110785 (= call!110790 call!110791)))

(declare-fun b!1762322 () Bool)

(assert (=> b!1762322 (= c!287233 (nullable!1461 (regOne!10094 (regex!3463 rule!422))))))

(assert (=> b!1762322 (= e!1127736 e!1127737)))

(declare-fun b!1762323 () Bool)

(assert (=> b!1762323 (= e!1127739 (ite (= (head!4076 lt!680342) (c!286774 (regex!3463 rule!422))) EmptyExpr!4791 EmptyLang!4791))))

(declare-fun bm!110786 () Bool)

(assert (=> bm!110786 (= call!110791 (derivativeStep!1230 (ite c!287232 (regTwo!10095 (regex!3463 rule!422)) (ite c!287235 (reg!5120 (regex!3463 rule!422)) (regOne!10094 (regex!3463 rule!422)))) (head!4076 lt!680342)))))

(declare-fun bm!110787 () Bool)

(assert (=> bm!110787 (= call!110792 call!110789)))

(declare-fun b!1762324 () Bool)

(assert (=> b!1762324 (= e!1127738 (Union!4791 call!110789 call!110791))))

(declare-fun b!1762325 () Bool)

(assert (=> b!1762325 (= e!1127737 (Union!4791 (Concat!8345 call!110792 (regTwo!10094 (regex!3463 rule!422))) EmptyLang!4791))))

(assert (= (and d!538626 c!287234) b!1762321))

(assert (= (and d!538626 (not c!287234)) b!1762320))

(assert (= (and b!1762320 c!287231) b!1762323))

(assert (= (and b!1762320 (not c!287231)) b!1762319))

(assert (= (and b!1762319 c!287232) b!1762324))

(assert (= (and b!1762319 (not c!287232)) b!1762318))

(assert (= (and b!1762318 c!287235) b!1762317))

(assert (= (and b!1762318 (not c!287235)) b!1762322))

(assert (= (and b!1762322 c!287233) b!1762316))

(assert (= (and b!1762322 (not c!287233)) b!1762325))

(assert (= (or b!1762316 b!1762325) bm!110787))

(assert (= (or b!1762317 b!1762316) bm!110785))

(assert (= (or b!1762324 bm!110785) bm!110786))

(assert (= (or b!1762324 bm!110787) bm!110784))

(declare-fun m!2179019 () Bool)

(assert (=> d!538626 m!2179019))

(assert (=> d!538626 m!2176833))

(assert (=> bm!110784 m!2176429))

(declare-fun m!2179021 () Bool)

(assert (=> bm!110784 m!2179021))

(declare-fun m!2179023 () Bool)

(assert (=> b!1762322 m!2179023))

(assert (=> bm!110786 m!2176429))

(declare-fun m!2179025 () Bool)

(assert (=> bm!110786 m!2179025))

(assert (=> b!1760870 d!538626))

(assert (=> b!1760870 d!538152))

(assert (=> b!1760870 d!538356))

(declare-fun d!538628 () Bool)

(declare-fun lt!681158 () Int)

(assert (=> d!538628 (>= lt!681158 0)))

(declare-fun e!1127740 () Int)

(assert (=> d!538628 (= lt!681158 e!1127740)))

(declare-fun c!287236 () Bool)

(assert (=> d!538628 (= c!287236 ((_ is Nil!19382) (t!164035 lt!680348)))))

(assert (=> d!538628 (= (size!15395 (t!164035 lt!680348)) lt!681158)))

(declare-fun b!1762326 () Bool)

(assert (=> b!1762326 (= e!1127740 0)))

(declare-fun b!1762327 () Bool)

(assert (=> b!1762327 (= e!1127740 (+ 1 (size!15395 (t!164035 (t!164035 lt!680348)))))))

(assert (= (and d!538628 c!287236) b!1762326))

(assert (= (and d!538628 (not c!287236)) b!1762327))

(declare-fun m!2179027 () Bool)

(assert (=> b!1762327 m!2179027))

(assert (=> b!1760926 d!538628))

(declare-fun d!538630 () Bool)

(assert (=> d!538630 (= (isEmpty!12227 (originalCharacters!4277 token!523)) ((_ is Nil!19382) (originalCharacters!4277 token!523)))))

(assert (=> d!537808 d!538630))

(declare-fun b!1762330 () Bool)

(declare-fun e!1127742 () List!19452)

(assert (=> b!1762330 (= e!1127742 (list!7867 (xs!9323 (c!286775 lt!680349))))))

(declare-fun b!1762329 () Bool)

(declare-fun e!1127741 () List!19452)

(assert (=> b!1762329 (= e!1127741 e!1127742)))

(declare-fun c!287238 () Bool)

(assert (=> b!1762329 (= c!287238 ((_ is Leaf!9399) (c!286775 lt!680349)))))

(declare-fun d!538632 () Bool)

(declare-fun c!287237 () Bool)

(assert (=> d!538632 (= c!287237 ((_ is Empty!6447) (c!286775 lt!680349)))))

(assert (=> d!538632 (= (list!7864 (c!286775 lt!680349)) e!1127741)))

(declare-fun b!1762328 () Bool)

(assert (=> b!1762328 (= e!1127741 Nil!19382)))

(declare-fun b!1762331 () Bool)

(assert (=> b!1762331 (= e!1127742 (++!5287 (list!7864 (left!15516 (c!286775 lt!680349))) (list!7864 (right!15846 (c!286775 lt!680349)))))))

(assert (= (and d!538632 c!287237) b!1762328))

(assert (= (and d!538632 (not c!287237)) b!1762329))

(assert (= (and b!1762329 c!287238) b!1762330))

(assert (= (and b!1762329 (not c!287238)) b!1762331))

(declare-fun m!2179029 () Bool)

(assert (=> b!1762330 m!2179029))

(declare-fun m!2179031 () Bool)

(assert (=> b!1762331 m!2179031))

(declare-fun m!2179033 () Bool)

(assert (=> b!1762331 m!2179033))

(assert (=> b!1762331 m!2179031))

(assert (=> b!1762331 m!2179033))

(declare-fun m!2179035 () Bool)

(assert (=> b!1762331 m!2179035))

(assert (=> d!537656 d!538632))

(assert (=> b!1760874 d!538152))

(declare-fun d!538634 () Bool)

(assert (=> d!538634 (= (isEmpty!12230 lt!680657) (not ((_ is Some!3948) lt!680657)))))

(assert (=> d!537798 d!538634))

(declare-fun d!538636 () Bool)

(assert (=> d!538636 (= (isEmpty!12227 (_1!10901 lt!680656)) ((_ is Nil!19382) (_1!10901 lt!680656)))))

(assert (=> d!537798 d!538636))

(declare-fun d!538638 () Bool)

(declare-fun lt!681183 () tuple2!18998)

(assert (=> d!538638 (= (++!5287 (_1!10901 lt!681183) (_2!10901 lt!681183)) lt!680363)))

(declare-fun sizeTr!62 (List!19452 Int) Int)

(assert (=> d!538638 (= lt!681183 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 0 lt!680363 lt!680363 (sizeTr!62 lt!680363 0)))))

(declare-fun lt!681177 () Unit!33555)

(declare-fun lt!681176 () Unit!33555)

(assert (=> d!538638 (= lt!681177 lt!681176)))

(declare-fun lt!681182 () List!19452)

(declare-fun lt!681179 () Int)

(assert (=> d!538638 (= (sizeTr!62 lt!681182 lt!681179) (+ (size!15395 lt!681182) lt!681179))))

(declare-fun lemmaSizeTrEqualsSize!62 (List!19452 Int) Unit!33555)

(assert (=> d!538638 (= lt!681176 (lemmaSizeTrEqualsSize!62 lt!681182 lt!681179))))

(assert (=> d!538638 (= lt!681179 0)))

(assert (=> d!538638 (= lt!681182 Nil!19382)))

(declare-fun lt!681178 () Unit!33555)

(declare-fun lt!681181 () Unit!33555)

(assert (=> d!538638 (= lt!681178 lt!681181)))

(declare-fun lt!681180 () Int)

(assert (=> d!538638 (= (sizeTr!62 lt!680363 lt!681180) (+ (size!15395 lt!680363) lt!681180))))

(assert (=> d!538638 (= lt!681181 (lemmaSizeTrEqualsSize!62 lt!680363 lt!681180))))

(assert (=> d!538638 (= lt!681180 0)))

(assert (=> d!538638 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538638 (= (findLongestMatch!366 (regex!3463 (rule!5481 (_1!10897 lt!680362))) lt!680363) lt!681183)))

(declare-fun bs!404218 () Bool)

(assert (= bs!404218 d!538638))

(declare-fun m!2179079 () Bool)

(assert (=> bs!404218 m!2179079))

(declare-fun m!2179081 () Bool)

(assert (=> bs!404218 m!2179081))

(declare-fun m!2179083 () Bool)

(assert (=> bs!404218 m!2179083))

(assert (=> bs!404218 m!2176937))

(declare-fun m!2179085 () Bool)

(assert (=> bs!404218 m!2179085))

(declare-fun m!2179087 () Bool)

(assert (=> bs!404218 m!2179087))

(assert (=> bs!404218 m!2179079))

(declare-fun m!2179089 () Bool)

(assert (=> bs!404218 m!2179089))

(declare-fun m!2179091 () Bool)

(assert (=> bs!404218 m!2179091))

(assert (=> bs!404218 m!2176421))

(declare-fun m!2179093 () Bool)

(assert (=> bs!404218 m!2179093))

(assert (=> d!537798 d!538638))

(declare-fun d!538660 () Bool)

(declare-fun res!793211 () Bool)

(declare-fun e!1127764 () Bool)

(assert (=> d!538660 (=> (not res!793211) (not e!1127764))))

(assert (=> d!538660 (= res!793211 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (=> d!538660 (= (ruleValid!961 thiss!24550 (rule!5481 (_1!10897 lt!680362))) e!1127764)))

(declare-fun b!1762377 () Bool)

(declare-fun res!793212 () Bool)

(assert (=> b!1762377 (=> (not res!793212) (not e!1127764))))

(assert (=> b!1762377 (= res!793212 (not (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun b!1762378 () Bool)

(assert (=> b!1762378 (= e!1127764 (not (= (tag!3829 (rule!5481 (_1!10897 lt!680362))) (String!22098 ""))))))

(assert (= (and d!538660 res!793211) b!1762377))

(assert (= (and b!1762377 res!793212) b!1762378))

(assert (=> d!538660 m!2176937))

(assert (=> b!1762377 m!2176935))

(assert (=> d!537798 d!538660))

(declare-fun d!538662 () Bool)

(assert (=> d!538662 (= (isEmpty!12227 (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))) ((_ is Nil!19382) (++!5287 lt!680342 (Cons!19382 (head!4076 suffix!1421) Nil!19382))))))

(assert (=> d!537594 d!538662))

(declare-fun b!1762379 () Bool)

(declare-fun res!793216 () Bool)

(declare-fun e!1127766 () Bool)

(assert (=> b!1762379 (=> (not res!793216) (not e!1127766))))

(assert (=> b!1762379 (= res!793216 (not (isEmpty!12237 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))))

(declare-fun b!1762380 () Bool)

(declare-fun res!793213 () Bool)

(assert (=> b!1762380 (=> (not res!793213) (not e!1127766))))

(assert (=> b!1762380 (= res!793213 (<= (- (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) 1))))

(declare-fun b!1762381 () Bool)

(assert (=> b!1762381 (= e!1127766 (not (isEmpty!12237 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))))))

(declare-fun b!1762382 () Bool)

(declare-fun e!1127765 () Bool)

(assert (=> b!1762382 (= e!1127765 e!1127766)))

(declare-fun res!793217 () Bool)

(assert (=> b!1762382 (=> (not res!793217) (not e!1127766))))

(assert (=> b!1762382 (= res!793217 (<= (- 1) (- (height!1006 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) (height!1006 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))))

(declare-fun b!1762383 () Bool)

(declare-fun res!793215 () Bool)

(assert (=> b!1762383 (=> (not res!793215) (not e!1127766))))

(assert (=> b!1762383 (= res!793215 (isBalanced!2014 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun b!1762384 () Bool)

(declare-fun res!793214 () Bool)

(assert (=> b!1762384 (=> (not res!793214) (not e!1127766))))

(assert (=> b!1762384 (= res!793214 (isBalanced!2014 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(declare-fun d!538664 () Bool)

(declare-fun res!793218 () Bool)

(assert (=> d!538664 (=> res!793218 e!1127765)))

(assert (=> d!538664 (= res!793218 (not ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))))

(assert (=> d!538664 (= (isBalanced!2014 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))) e!1127765)))

(assert (= (and d!538664 (not res!793218)) b!1762382))

(assert (= (and b!1762382 res!793217) b!1762380))

(assert (= (and b!1762380 res!793213) b!1762384))

(assert (= (and b!1762384 res!793214) b!1762383))

(assert (= (and b!1762383 res!793215) b!1762379))

(assert (= (and b!1762379 res!793216) b!1762381))

(assert (=> b!1762382 m!2178205))

(assert (=> b!1762382 m!2178207))

(declare-fun m!2179105 () Bool)

(assert (=> b!1762381 m!2179105))

(declare-fun m!2179107 () Bool)

(assert (=> b!1762383 m!2179107))

(declare-fun m!2179109 () Bool)

(assert (=> b!1762384 m!2179109))

(declare-fun m!2179111 () Bool)

(assert (=> b!1762379 m!2179111))

(assert (=> b!1762380 m!2178205))

(assert (=> b!1762380 m!2178207))

(assert (=> d!537758 d!538664))

(declare-fun b!1762395 () Bool)

(declare-fun res!793225 () Bool)

(declare-fun e!1127772 () Bool)

(assert (=> b!1762395 (=> (not res!793225) (not e!1127772))))

(declare-fun call!110798 () Bool)

(assert (=> b!1762395 (= res!793225 (not call!110798))))

(declare-fun b!1762396 () Bool)

(declare-fun res!793220 () Bool)

(declare-fun e!1127778 () Bool)

(assert (=> b!1762396 (=> res!793220 e!1127778)))

(assert (=> b!1762396 (= res!793220 e!1127772)))

(declare-fun res!793221 () Bool)

(assert (=> b!1762396 (=> (not res!793221) (not e!1127772))))

(declare-fun lt!681186 () Bool)

(assert (=> b!1762396 (= res!793221 lt!681186)))

(declare-fun b!1762397 () Bool)

(declare-fun res!793223 () Bool)

(assert (=> b!1762397 (=> (not res!793223) (not e!1127772))))

(assert (=> b!1762397 (= res!793223 (isEmpty!12227 (tail!2633 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363))))))))

(declare-fun b!1762399 () Bool)

(declare-fun e!1127777 () Bool)

(assert (=> b!1762399 (= e!1127777 (nullable!1461 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1762400 () Bool)

(declare-fun res!793224 () Bool)

(assert (=> b!1762400 (=> res!793224 e!1127778)))

(assert (=> b!1762400 (= res!793224 (not ((_ is ElementMatch!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun e!1127774 () Bool)

(assert (=> b!1762400 (= e!1127774 e!1127778)))

(declare-fun b!1762401 () Bool)

(declare-fun res!793219 () Bool)

(declare-fun e!1127773 () Bool)

(assert (=> b!1762401 (=> res!793219 e!1127773)))

(assert (=> b!1762401 (= res!793219 (not (isEmpty!12227 (tail!2633 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))))

(declare-fun bm!110793 () Bool)

(assert (=> bm!110793 (= call!110798 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(declare-fun b!1762402 () Bool)

(declare-fun e!1127775 () Bool)

(assert (=> b!1762402 (= e!1127775 e!1127773)))

(declare-fun res!793226 () Bool)

(assert (=> b!1762402 (=> res!793226 e!1127773)))

(assert (=> b!1762402 (= res!793226 call!110798)))

(declare-fun b!1762403 () Bool)

(assert (=> b!1762403 (= e!1127773 (not (= (head!4076 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))))

(declare-fun b!1762404 () Bool)

(assert (=> b!1762404 (= e!1127777 (matchR!2264 (derivativeStep!1230 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (head!4076 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363))))) (tail!2633 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363))))))))

(declare-fun b!1762405 () Bool)

(declare-fun e!1127776 () Bool)

(assert (=> b!1762405 (= e!1127776 (= lt!681186 call!110798))))

(declare-fun b!1762406 () Bool)

(assert (=> b!1762406 (= e!1127776 e!1127774)))

(declare-fun c!287253 () Bool)

(assert (=> b!1762406 (= c!287253 ((_ is EmptyLang!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(declare-fun b!1762407 () Bool)

(assert (=> b!1762407 (= e!1127778 e!1127775)))

(declare-fun res!793222 () Bool)

(assert (=> b!1762407 (=> (not res!793222) (not e!1127775))))

(assert (=> b!1762407 (= res!793222 (not lt!681186))))

(declare-fun b!1762408 () Bool)

(assert (=> b!1762408 (= e!1127772 (= (head!4076 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))) (c!286774 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))))

(declare-fun d!538668 () Bool)

(assert (=> d!538668 e!1127776))

(declare-fun c!287255 () Bool)

(assert (=> d!538668 (= c!287255 ((_ is EmptyExpr!4791) (regex!3463 (rule!5481 (_1!10897 lt!680362)))))))

(assert (=> d!538668 (= lt!681186 e!1127777)))

(declare-fun c!287254 () Bool)

(assert (=> d!538668 (= c!287254 (isEmpty!12227 (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))))))

(assert (=> d!538668 (validRegex!1935 (regex!3463 (rule!5481 (_1!10897 lt!680362))))))

(assert (=> d!538668 (= (matchR!2264 (regex!3463 (rule!5481 (_1!10897 lt!680362))) (_1!10901 (findLongestMatchInner!439 (regex!3463 (rule!5481 (_1!10897 lt!680362))) Nil!19382 (size!15395 Nil!19382) lt!680363 lt!680363 (size!15395 lt!680363)))) lt!681186)))

(declare-fun b!1762398 () Bool)

(assert (=> b!1762398 (= e!1127774 (not lt!681186))))

(assert (= (and d!538668 c!287254) b!1762399))

(assert (= (and d!538668 (not c!287254)) b!1762404))

(assert (= (and d!538668 c!287255) b!1762405))

(assert (= (and d!538668 (not c!287255)) b!1762406))

(assert (= (and b!1762406 c!287253) b!1762398))

(assert (= (and b!1762406 (not c!287253)) b!1762400))

(assert (= (and b!1762400 (not res!793224)) b!1762396))

(assert (= (and b!1762396 res!793221) b!1762395))

(assert (= (and b!1762395 res!793225) b!1762397))

(assert (= (and b!1762397 res!793223) b!1762408))

(assert (= (and b!1762396 (not res!793220)) b!1762407))

(assert (= (and b!1762407 res!793222) b!1762402))

(assert (= (and b!1762402 (not res!793226)) b!1762401))

(assert (= (and b!1762401 (not res!793219)) b!1762403))

(assert (= (or b!1762405 b!1762395 b!1762402) bm!110793))

(assert (=> bm!110793 m!2176911))

(declare-fun m!2179121 () Bool)

(assert (=> b!1762401 m!2179121))

(assert (=> b!1762401 m!2179121))

(declare-fun m!2179123 () Bool)

(assert (=> b!1762401 m!2179123))

(assert (=> b!1762399 m!2176935))

(assert (=> d!538668 m!2176911))

(assert (=> d!538668 m!2176937))

(assert (=> b!1762397 m!2179121))

(assert (=> b!1762397 m!2179121))

(assert (=> b!1762397 m!2179123))

(declare-fun m!2179125 () Bool)

(assert (=> b!1762404 m!2179125))

(assert (=> b!1762404 m!2179125))

(declare-fun m!2179127 () Bool)

(assert (=> b!1762404 m!2179127))

(assert (=> b!1762404 m!2179121))

(assert (=> b!1762404 m!2179127))

(assert (=> b!1762404 m!2179121))

(declare-fun m!2179129 () Bool)

(assert (=> b!1762404 m!2179129))

(assert (=> b!1762408 m!2179125))

(assert (=> b!1762403 m!2179125))

(assert (=> b!1760952 d!538668))

(assert (=> b!1760952 d!538106))

(assert (=> b!1760952 d!538124))

(assert (=> b!1760952 d!537866))

(declare-fun d!538672 () Bool)

(declare-fun c!287256 () Bool)

(assert (=> d!538672 (= c!287256 ((_ is Node!6447) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun e!1127779 () Bool)

(assert (=> d!538672 (= (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) e!1127779)))

(declare-fun b!1762409 () Bool)

(assert (=> b!1762409 (= e!1127779 (inv!25175 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun b!1762410 () Bool)

(declare-fun e!1127780 () Bool)

(assert (=> b!1762410 (= e!1127779 e!1127780)))

(declare-fun res!793227 () Bool)

(assert (=> b!1762410 (= res!793227 (not ((_ is Leaf!9399) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))))

(assert (=> b!1762410 (=> res!793227 e!1127780)))

(declare-fun b!1762411 () Bool)

(assert (=> b!1762411 (= e!1127780 (inv!25176 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(assert (= (and d!538672 c!287256) b!1762409))

(assert (= (and d!538672 (not c!287256)) b!1762410))

(assert (= (and b!1762410 (not res!793227)) b!1762411))

(declare-fun m!2179133 () Bool)

(assert (=> b!1762409 m!2179133))

(declare-fun m!2179135 () Bool)

(assert (=> b!1762411 m!2179135))

(assert (=> b!1761034 d!538672))

(declare-fun d!538676 () Bool)

(declare-fun c!287257 () Bool)

(assert (=> d!538676 (= c!287257 ((_ is Node!6447) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun e!1127781 () Bool)

(assert (=> d!538676 (= (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) e!1127781)))

(declare-fun b!1762412 () Bool)

(assert (=> b!1762412 (= e!1127781 (inv!25175 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(declare-fun b!1762413 () Bool)

(declare-fun e!1127782 () Bool)

(assert (=> b!1762413 (= e!1127781 e!1127782)))

(declare-fun res!793228 () Bool)

(assert (=> b!1762413 (= res!793228 (not ((_ is Leaf!9399) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))))))

(assert (=> b!1762413 (=> res!793228 e!1127782)))

(declare-fun b!1762414 () Bool)

(assert (=> b!1762414 (= e!1127782 (inv!25176 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))))

(assert (= (and d!538676 c!287257) b!1762412))

(assert (= (and d!538676 (not c!287257)) b!1762413))

(assert (= (and b!1762413 (not res!793228)) b!1762414))

(declare-fun m!2179137 () Bool)

(assert (=> b!1762412 m!2179137))

(declare-fun m!2179139 () Bool)

(assert (=> b!1762414 m!2179139))

(assert (=> b!1761034 d!538676))

(declare-fun b!1762428 () Bool)

(declare-fun e!1127786 () Bool)

(declare-fun tp!500292 () Bool)

(declare-fun tp!500295 () Bool)

(assert (=> b!1762428 (= e!1127786 (and tp!500292 tp!500295))))

(declare-fun b!1762429 () Bool)

(declare-fun tp!500293 () Bool)

(assert (=> b!1762429 (= e!1127786 tp!500293)))

(declare-fun b!1762427 () Bool)

(assert (=> b!1762427 (= e!1127786 tp_is_empty!7825)))

(declare-fun b!1762430 () Bool)

(declare-fun tp!500294 () Bool)

(declare-fun tp!500296 () Bool)

(assert (=> b!1762430 (= e!1127786 (and tp!500294 tp!500296))))

(assert (=> b!1761033 (= tp!500261 e!1127786)))

(assert (= (and b!1761033 ((_ is ElementMatch!4791) (regOne!10095 (regex!3463 (h!24784 rules!3447))))) b!1762427))

(assert (= (and b!1761033 ((_ is Concat!8345) (regOne!10095 (regex!3463 (h!24784 rules!3447))))) b!1762428))

(assert (= (and b!1761033 ((_ is Star!4791) (regOne!10095 (regex!3463 (h!24784 rules!3447))))) b!1762429))

(assert (= (and b!1761033 ((_ is Union!4791) (regOne!10095 (regex!3463 (h!24784 rules!3447))))) b!1762430))

(declare-fun b!1762436 () Bool)

(declare-fun e!1127788 () Bool)

(declare-fun tp!500302 () Bool)

(declare-fun tp!500305 () Bool)

(assert (=> b!1762436 (= e!1127788 (and tp!500302 tp!500305))))

(declare-fun b!1762437 () Bool)

(declare-fun tp!500303 () Bool)

(assert (=> b!1762437 (= e!1127788 tp!500303)))

(declare-fun b!1762435 () Bool)

(assert (=> b!1762435 (= e!1127788 tp_is_empty!7825)))

(declare-fun b!1762438 () Bool)

(declare-fun tp!500304 () Bool)

(declare-fun tp!500306 () Bool)

(assert (=> b!1762438 (= e!1127788 (and tp!500304 tp!500306))))

(assert (=> b!1761033 (= tp!500263 e!1127788)))

(assert (= (and b!1761033 ((_ is ElementMatch!4791) (regTwo!10095 (regex!3463 (h!24784 rules!3447))))) b!1762435))

(assert (= (and b!1761033 ((_ is Concat!8345) (regTwo!10095 (regex!3463 (h!24784 rules!3447))))) b!1762436))

(assert (= (and b!1761033 ((_ is Star!4791) (regTwo!10095 (regex!3463 (h!24784 rules!3447))))) b!1762437))

(assert (= (and b!1761033 ((_ is Union!4791) (regTwo!10095 (regex!3463 (h!24784 rules!3447))))) b!1762438))

(declare-fun e!1127790 () Bool)

(declare-fun tp!500312 () Bool)

(declare-fun b!1762443 () Bool)

(declare-fun tp!500313 () Bool)

(assert (=> b!1762443 (= e!1127790 (and (inv!25171 (left!15516 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) tp!500312 (inv!25171 (right!15846 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) tp!500313))))

(declare-fun b!1762445 () Bool)

(declare-fun e!1127791 () Bool)

(declare-fun tp!500314 () Bool)

(assert (=> b!1762445 (= e!1127791 tp!500314)))

(declare-fun b!1762444 () Bool)

(assert (=> b!1762444 (= e!1127790 (and (inv!25178 (xs!9323 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) e!1127791))))

(assert (=> b!1761026 (= tp!500255 (and (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) e!1127790))))

(assert (= (and b!1761026 ((_ is Node!6447) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) b!1762443))

(assert (= b!1762444 b!1762445))

(assert (= (and b!1761026 ((_ is Leaf!9399) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) b!1762444))

(declare-fun m!2179141 () Bool)

(assert (=> b!1762443 m!2179141))

(declare-fun m!2179143 () Bool)

(assert (=> b!1762443 m!2179143))

(declare-fun m!2179145 () Bool)

(assert (=> b!1762444 m!2179145))

(assert (=> b!1761026 m!2176973))

(declare-fun b!1762454 () Bool)

(declare-fun tp!500326 () Bool)

(declare-fun e!1127794 () Bool)

(declare-fun tp!500325 () Bool)

(assert (=> b!1762454 (= e!1127794 (and (inv!25171 (left!15516 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) tp!500325 (inv!25171 (right!15846 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) tp!500326))))

(declare-fun b!1762456 () Bool)

(declare-fun e!1127795 () Bool)

(declare-fun tp!500327 () Bool)

(assert (=> b!1762456 (= e!1127795 tp!500327)))

(declare-fun b!1762455 () Bool)

(assert (=> b!1762455 (= e!1127794 (and (inv!25178 (xs!9323 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) e!1127795))))

(assert (=> b!1761026 (= tp!500256 (and (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))) e!1127794))))

(assert (= (and b!1761026 ((_ is Node!6447) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) b!1762454))

(assert (= b!1762455 b!1762456))

(assert (= (and b!1761026 ((_ is Leaf!9399) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362))))))) b!1762455))

(declare-fun m!2179147 () Bool)

(assert (=> b!1762454 m!2179147))

(declare-fun m!2179149 () Bool)

(assert (=> b!1762454 m!2179149))

(declare-fun m!2179151 () Bool)

(assert (=> b!1762455 m!2179151))

(assert (=> b!1761026 m!2176975))

(declare-fun b!1762465 () Bool)

(declare-fun e!1127798 () Bool)

(declare-fun tp!500338 () Bool)

(assert (=> b!1762465 (= e!1127798 (and tp_is_empty!7825 tp!500338))))

(assert (=> b!1761002 (= tp!500231 e!1127798)))

(assert (= (and b!1761002 ((_ is Cons!19382) (t!164035 (originalCharacters!4277 token!523)))) b!1762465))

(declare-fun b!1762471 () Bool)

(declare-fun e!1127800 () Bool)

(declare-fun tp!500344 () Bool)

(declare-fun tp!500347 () Bool)

(assert (=> b!1762471 (= e!1127800 (and tp!500344 tp!500347))))

(declare-fun b!1762472 () Bool)

(declare-fun tp!500345 () Bool)

(assert (=> b!1762472 (= e!1127800 tp!500345)))

(declare-fun b!1762470 () Bool)

(assert (=> b!1762470 (= e!1127800 tp_is_empty!7825)))

(declare-fun b!1762473 () Bool)

(declare-fun tp!500346 () Bool)

(declare-fun tp!500348 () Bool)

(assert (=> b!1762473 (= e!1127800 (and tp!500346 tp!500348))))

(assert (=> b!1761006 (= tp!500234 e!1127800)))

(assert (= (and b!1761006 ((_ is ElementMatch!4791) (regOne!10095 (regex!3463 (rule!5481 token!523))))) b!1762470))

(assert (= (and b!1761006 ((_ is Concat!8345) (regOne!10095 (regex!3463 (rule!5481 token!523))))) b!1762471))

(assert (= (and b!1761006 ((_ is Star!4791) (regOne!10095 (regex!3463 (rule!5481 token!523))))) b!1762472))

(assert (= (and b!1761006 ((_ is Union!4791) (regOne!10095 (regex!3463 (rule!5481 token!523))))) b!1762473))

(declare-fun b!1762479 () Bool)

(declare-fun e!1127802 () Bool)

(declare-fun tp!500354 () Bool)

(declare-fun tp!500357 () Bool)

(assert (=> b!1762479 (= e!1127802 (and tp!500354 tp!500357))))

(declare-fun b!1762480 () Bool)

(declare-fun tp!500355 () Bool)

(assert (=> b!1762480 (= e!1127802 tp!500355)))

(declare-fun b!1762478 () Bool)

(assert (=> b!1762478 (= e!1127802 tp_is_empty!7825)))

(declare-fun b!1762481 () Bool)

(declare-fun tp!500356 () Bool)

(declare-fun tp!500358 () Bool)

(assert (=> b!1762481 (= e!1127802 (and tp!500356 tp!500358))))

(assert (=> b!1761006 (= tp!500236 e!1127802)))

(assert (= (and b!1761006 ((_ is ElementMatch!4791) (regTwo!10095 (regex!3463 (rule!5481 token!523))))) b!1762478))

(assert (= (and b!1761006 ((_ is Concat!8345) (regTwo!10095 (regex!3463 (rule!5481 token!523))))) b!1762479))

(assert (= (and b!1761006 ((_ is Star!4791) (regTwo!10095 (regex!3463 (rule!5481 token!523))))) b!1762480))

(assert (= (and b!1761006 ((_ is Union!4791) (regTwo!10095 (regex!3463 (rule!5481 token!523))))) b!1762481))

(declare-fun b!1762486 () Bool)

(declare-fun e!1127805 () Bool)

(declare-fun tp!500362 () Bool)

(declare-fun tp!500365 () Bool)

(assert (=> b!1762486 (= e!1127805 (and tp!500362 tp!500365))))

(declare-fun b!1762487 () Bool)

(declare-fun tp!500363 () Bool)

(assert (=> b!1762487 (= e!1127805 tp!500363)))

(declare-fun b!1762485 () Bool)

(assert (=> b!1762485 (= e!1127805 tp_is_empty!7825)))

(declare-fun b!1762488 () Bool)

(declare-fun tp!500364 () Bool)

(declare-fun tp!500366 () Bool)

(assert (=> b!1762488 (= e!1127805 (and tp!500364 tp!500366))))

(assert (=> b!1761032 (= tp!500260 e!1127805)))

(assert (= (and b!1761032 ((_ is ElementMatch!4791) (reg!5120 (regex!3463 (h!24784 rules!3447))))) b!1762485))

(assert (= (and b!1761032 ((_ is Concat!8345) (reg!5120 (regex!3463 (h!24784 rules!3447))))) b!1762486))

(assert (= (and b!1761032 ((_ is Star!4791) (reg!5120 (regex!3463 (h!24784 rules!3447))))) b!1762487))

(assert (= (and b!1761032 ((_ is Union!4791) (reg!5120 (regex!3463 (h!24784 rules!3447))))) b!1762488))

(declare-fun b!1762490 () Bool)

(declare-fun e!1127806 () Bool)

(declare-fun tp!500367 () Bool)

(declare-fun tp!500370 () Bool)

(assert (=> b!1762490 (= e!1127806 (and tp!500367 tp!500370))))

(declare-fun b!1762491 () Bool)

(declare-fun tp!500368 () Bool)

(assert (=> b!1762491 (= e!1127806 tp!500368)))

(declare-fun b!1762489 () Bool)

(assert (=> b!1762489 (= e!1127806 tp_is_empty!7825)))

(declare-fun b!1762492 () Bool)

(declare-fun tp!500369 () Bool)

(declare-fun tp!500371 () Bool)

(assert (=> b!1762492 (= e!1127806 (and tp!500369 tp!500371))))

(assert (=> b!1761031 (= tp!500259 e!1127806)))

(assert (= (and b!1761031 ((_ is ElementMatch!4791) (regOne!10094 (regex!3463 (h!24784 rules!3447))))) b!1762489))

(assert (= (and b!1761031 ((_ is Concat!8345) (regOne!10094 (regex!3463 (h!24784 rules!3447))))) b!1762490))

(assert (= (and b!1761031 ((_ is Star!4791) (regOne!10094 (regex!3463 (h!24784 rules!3447))))) b!1762491))

(assert (= (and b!1761031 ((_ is Union!4791) (regOne!10094 (regex!3463 (h!24784 rules!3447))))) b!1762492))

(declare-fun b!1762495 () Bool)

(declare-fun e!1127808 () Bool)

(declare-fun tp!500373 () Bool)

(declare-fun tp!500376 () Bool)

(assert (=> b!1762495 (= e!1127808 (and tp!500373 tp!500376))))

(declare-fun b!1762496 () Bool)

(declare-fun tp!500374 () Bool)

(assert (=> b!1762496 (= e!1127808 tp!500374)))

(declare-fun b!1762494 () Bool)

(assert (=> b!1762494 (= e!1127808 tp_is_empty!7825)))

(declare-fun b!1762497 () Bool)

(declare-fun tp!500375 () Bool)

(declare-fun tp!500377 () Bool)

(assert (=> b!1762497 (= e!1127808 (and tp!500375 tp!500377))))

(assert (=> b!1761031 (= tp!500262 e!1127808)))

(assert (= (and b!1761031 ((_ is ElementMatch!4791) (regTwo!10094 (regex!3463 (h!24784 rules!3447))))) b!1762494))

(assert (= (and b!1761031 ((_ is Concat!8345) (regTwo!10094 (regex!3463 (h!24784 rules!3447))))) b!1762495))

(assert (= (and b!1761031 ((_ is Star!4791) (regTwo!10094 (regex!3463 (h!24784 rules!3447))))) b!1762496))

(assert (= (and b!1761031 ((_ is Union!4791) (regTwo!10094 (regex!3463 (h!24784 rules!3447))))) b!1762497))

(declare-fun b!1762502 () Bool)

(declare-fun e!1127810 () Bool)

(declare-fun tp!500383 () Bool)

(assert (=> b!1762502 (= e!1127810 (and tp_is_empty!7825 tp!500383))))

(assert (=> b!1761028 (= tp!500257 e!1127810)))

(assert (= (and b!1761028 ((_ is Cons!19382) (innerList!6507 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (value!108368 (_1!10897 lt!680362)))))))) b!1762502))

(declare-fun b!1762507 () Bool)

(declare-fun e!1127812 () Bool)

(declare-fun tp!500389 () Bool)

(assert (=> b!1762507 (= e!1127812 (and tp_is_empty!7825 tp!500389))))

(assert (=> b!1761029 (= tp!500258 e!1127812)))

(assert (= (and b!1761029 ((_ is Cons!19382) (t!164035 (t!164035 suffix!1421)))) b!1762507))

(declare-fun e!1127813 () Bool)

(declare-fun tp!500390 () Bool)

(declare-fun b!1762508 () Bool)

(declare-fun tp!500391 () Bool)

(assert (=> b!1762508 (= e!1127813 (and (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))) tp!500390 (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))) tp!500391))))

(declare-fun b!1762510 () Bool)

(declare-fun e!1127814 () Bool)

(declare-fun tp!500392 () Bool)

(assert (=> b!1762510 (= e!1127814 tp!500392)))

(declare-fun b!1762509 () Bool)

(assert (=> b!1762509 (= e!1127813 (and (inv!25178 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))) e!1127814))))

(assert (=> b!1760523 (= tp!500159 (and (inv!25171 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523)))) e!1127813))))

(assert (= (and b!1760523 ((_ is Node!6447) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))) b!1762508))

(assert (= b!1762509 b!1762510))

(assert (= (and b!1760523 ((_ is Leaf!9399) (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 token!523))) (value!108368 token!523))))) b!1762509))

(declare-fun m!2179159 () Bool)

(assert (=> b!1762508 m!2179159))

(declare-fun m!2179161 () Bool)

(assert (=> b!1762508 m!2179161))

(declare-fun m!2179163 () Bool)

(assert (=> b!1762509 m!2179163))

(assert (=> b!1760523 m!2176375))

(declare-fun b!1762518 () Bool)

(declare-fun e!1127818 () Bool)

(declare-fun tp!500400 () Bool)

(declare-fun tp!500403 () Bool)

(assert (=> b!1762518 (= e!1127818 (and tp!500400 tp!500403))))

(declare-fun b!1762519 () Bool)

(declare-fun tp!500401 () Bool)

(assert (=> b!1762519 (= e!1127818 tp!500401)))

(declare-fun b!1762517 () Bool)

(assert (=> b!1762517 (= e!1127818 tp_is_empty!7825)))

(declare-fun b!1762520 () Bool)

(declare-fun tp!500402 () Bool)

(declare-fun tp!500404 () Bool)

(assert (=> b!1762520 (= e!1127818 (and tp!500402 tp!500404))))

(assert (=> b!1760997 (= tp!500226 e!1127818)))

(assert (= (and b!1760997 ((_ is ElementMatch!4791) (regOne!10095 (regex!3463 rule!422)))) b!1762517))

(assert (= (and b!1760997 ((_ is Concat!8345) (regOne!10095 (regex!3463 rule!422)))) b!1762518))

(assert (= (and b!1760997 ((_ is Star!4791) (regOne!10095 (regex!3463 rule!422)))) b!1762519))

(assert (= (and b!1760997 ((_ is Union!4791) (regOne!10095 (regex!3463 rule!422)))) b!1762520))

(declare-fun b!1762526 () Bool)

(declare-fun e!1127820 () Bool)

(declare-fun tp!500410 () Bool)

(declare-fun tp!500413 () Bool)

(assert (=> b!1762526 (= e!1127820 (and tp!500410 tp!500413))))

(declare-fun b!1762527 () Bool)

(declare-fun tp!500411 () Bool)

(assert (=> b!1762527 (= e!1127820 tp!500411)))

(declare-fun b!1762525 () Bool)

(assert (=> b!1762525 (= e!1127820 tp_is_empty!7825)))

(declare-fun b!1762528 () Bool)

(declare-fun tp!500412 () Bool)

(declare-fun tp!500414 () Bool)

(assert (=> b!1762528 (= e!1127820 (and tp!500412 tp!500414))))

(assert (=> b!1760997 (= tp!500228 e!1127820)))

(assert (= (and b!1760997 ((_ is ElementMatch!4791) (regTwo!10095 (regex!3463 rule!422)))) b!1762525))

(assert (= (and b!1760997 ((_ is Concat!8345) (regTwo!10095 (regex!3463 rule!422)))) b!1762526))

(assert (= (and b!1760997 ((_ is Star!4791) (regTwo!10095 (regex!3463 rule!422)))) b!1762527))

(assert (= (and b!1760997 ((_ is Union!4791) (regTwo!10095 (regex!3463 rule!422)))) b!1762528))

(declare-fun b!1762533 () Bool)

(declare-fun e!1127823 () Bool)

(declare-fun tp!500418 () Bool)

(declare-fun tp!500421 () Bool)

(assert (=> b!1762533 (= e!1127823 (and tp!500418 tp!500421))))

(declare-fun b!1762534 () Bool)

(declare-fun tp!500419 () Bool)

(assert (=> b!1762534 (= e!1127823 tp!500419)))

(declare-fun b!1762532 () Bool)

(assert (=> b!1762532 (= e!1127823 tp_is_empty!7825)))

(declare-fun b!1762535 () Bool)

(declare-fun tp!500420 () Bool)

(declare-fun tp!500422 () Bool)

(assert (=> b!1762535 (= e!1127823 (and tp!500420 tp!500422))))

(assert (=> b!1760996 (= tp!500225 e!1127823)))

(assert (= (and b!1760996 ((_ is ElementMatch!4791) (reg!5120 (regex!3463 rule!422)))) b!1762532))

(assert (= (and b!1760996 ((_ is Concat!8345) (reg!5120 (regex!3463 rule!422)))) b!1762533))

(assert (= (and b!1760996 ((_ is Star!4791) (reg!5120 (regex!3463 rule!422)))) b!1762534))

(assert (= (and b!1760996 ((_ is Union!4791) (reg!5120 (regex!3463 rule!422)))) b!1762535))

(declare-fun b!1762537 () Bool)

(declare-fun e!1127824 () Bool)

(declare-fun tp!500423 () Bool)

(declare-fun tp!500426 () Bool)

(assert (=> b!1762537 (= e!1127824 (and tp!500423 tp!500426))))

(declare-fun b!1762538 () Bool)

(declare-fun tp!500424 () Bool)

(assert (=> b!1762538 (= e!1127824 tp!500424)))

(declare-fun b!1762536 () Bool)

(assert (=> b!1762536 (= e!1127824 tp_is_empty!7825)))

(declare-fun b!1762539 () Bool)

(declare-fun tp!500425 () Bool)

(declare-fun tp!500427 () Bool)

(assert (=> b!1762539 (= e!1127824 (and tp!500425 tp!500427))))

(assert (=> b!1761016 (= tp!500245 e!1127824)))

(assert (= (and b!1761016 ((_ is ElementMatch!4791) (regex!3463 (h!24784 (t!164036 rules!3447))))) b!1762536))

(assert (= (and b!1761016 ((_ is Concat!8345) (regex!3463 (h!24784 (t!164036 rules!3447))))) b!1762537))

(assert (= (and b!1761016 ((_ is Star!4791) (regex!3463 (h!24784 (t!164036 rules!3447))))) b!1762538))

(assert (= (and b!1761016 ((_ is Union!4791) (regex!3463 (h!24784 (t!164036 rules!3447))))) b!1762539))

(declare-fun b!1762544 () Bool)

(declare-fun e!1127827 () Bool)

(declare-fun tp!500431 () Bool)

(declare-fun tp!500434 () Bool)

(assert (=> b!1762544 (= e!1127827 (and tp!500431 tp!500434))))

(declare-fun b!1762545 () Bool)

(declare-fun tp!500432 () Bool)

(assert (=> b!1762545 (= e!1127827 tp!500432)))

(declare-fun b!1762543 () Bool)

(assert (=> b!1762543 (= e!1127827 tp_is_empty!7825)))

(declare-fun b!1762546 () Bool)

(declare-fun tp!500433 () Bool)

(declare-fun tp!500435 () Bool)

(assert (=> b!1762546 (= e!1127827 (and tp!500433 tp!500435))))

(assert (=> b!1760995 (= tp!500224 e!1127827)))

(assert (= (and b!1760995 ((_ is ElementMatch!4791) (regOne!10094 (regex!3463 rule!422)))) b!1762543))

(assert (= (and b!1760995 ((_ is Concat!8345) (regOne!10094 (regex!3463 rule!422)))) b!1762544))

(assert (= (and b!1760995 ((_ is Star!4791) (regOne!10094 (regex!3463 rule!422)))) b!1762545))

(assert (= (and b!1760995 ((_ is Union!4791) (regOne!10094 (regex!3463 rule!422)))) b!1762546))

(declare-fun b!1762548 () Bool)

(declare-fun e!1127828 () Bool)

(declare-fun tp!500436 () Bool)

(declare-fun tp!500439 () Bool)

(assert (=> b!1762548 (= e!1127828 (and tp!500436 tp!500439))))

(declare-fun b!1762549 () Bool)

(declare-fun tp!500437 () Bool)

(assert (=> b!1762549 (= e!1127828 tp!500437)))

(declare-fun b!1762547 () Bool)

(assert (=> b!1762547 (= e!1127828 tp_is_empty!7825)))

(declare-fun b!1762550 () Bool)

(declare-fun tp!500438 () Bool)

(declare-fun tp!500440 () Bool)

(assert (=> b!1762550 (= e!1127828 (and tp!500438 tp!500440))))

(assert (=> b!1760995 (= tp!500227 e!1127828)))

(assert (= (and b!1760995 ((_ is ElementMatch!4791) (regTwo!10094 (regex!3463 rule!422)))) b!1762547))

(assert (= (and b!1760995 ((_ is Concat!8345) (regTwo!10094 (regex!3463 rule!422)))) b!1762548))

(assert (= (and b!1760995 ((_ is Star!4791) (regTwo!10094 (regex!3463 rule!422)))) b!1762549))

(assert (= (and b!1760995 ((_ is Union!4791) (regTwo!10094 (regex!3463 rule!422)))) b!1762550))

(declare-fun b!1762556 () Bool)

(declare-fun b_free!48693 () Bool)

(declare-fun b_next!49397 () Bool)

(assert (=> b!1762556 (= b_free!48693 (not b_next!49397))))

(declare-fun t!164256 () Bool)

(declare-fun tb!106211 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164256) tb!106211))

(declare-fun result!127770 () Bool)

(assert (= result!127770 result!127540))

(assert (=> b!1760285 t!164256))

(declare-fun t!164260 () Bool)

(declare-fun tb!106215 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164260) tb!106215))

(declare-fun result!127774 () Bool)

(assert (= result!127774 result!127680))

(assert (=> d!538056 t!164260))

(declare-fun t!164264 () Bool)

(declare-fun tb!106219 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164264) tb!106219))

(declare-fun result!127778 () Bool)

(assert (= result!127778 result!127752))

(assert (=> d!538380 t!164264))

(assert (=> d!537762 t!164256))

(declare-fun t!164268 () Bool)

(declare-fun tb!106223 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164268) tb!106223))

(declare-fun result!127782 () Bool)

(assert (= result!127782 result!127696))

(assert (=> d!538120 t!164268))

(assert (=> d!537816 t!164256))

(declare-fun t!164272 () Bool)

(declare-fun tb!106227 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164272) tb!106227))

(declare-fun result!127786 () Bool)

(assert (= result!127786 result!127744))

(assert (=> d!538360 t!164272))

(declare-fun tb!106231 () Bool)

(declare-fun t!164276 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164276) tb!106231))

(declare-fun result!127790 () Bool)

(assert (= result!127790 result!127598))

(assert (=> d!537814 t!164276))

(assert (=> d!538104 t!164268))

(assert (=> d!537814 t!164256))

(declare-fun tb!106235 () Bool)

(declare-fun t!164280 () Bool)

(assert (=> (and b!1762556 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164280) tb!106235))

(declare-fun result!127794 () Bool)

(assert (= result!127794 result!127592))

(assert (=> d!537800 t!164280))

(declare-fun tp!500448 () Bool)

(declare-fun b_and!133031 () Bool)

(assert (=> b!1762556 (= tp!500448 (and (=> t!164260 result!127774) (=> t!164264 result!127778) (=> t!164280 result!127794) (=> t!164272 result!127786) (=> t!164256 result!127770) (=> t!164276 result!127790) (=> t!164268 result!127782) b_and!133031))))

(declare-fun b_free!48697 () Bool)

(declare-fun b_next!49401 () Bool)

(assert (=> b!1762556 (= b_free!48697 (not b_next!49401))))

(declare-fun tb!106241 () Bool)

(declare-fun t!164286 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164286) tb!106241))

(declare-fun result!127800 () Bool)

(assert (= result!127800 result!127534))

(assert (=> d!537762 t!164286))

(declare-fun t!164290 () Bool)

(declare-fun tb!106245 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680513)))))) t!164290) tb!106245))

(declare-fun result!127804 () Bool)

(assert (= result!127804 result!127672))

(assert (=> d!538032 t!164290))

(declare-fun t!164294 () Bool)

(declare-fun tb!106249 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 lt!680593)))) t!164294) tb!106249))

(declare-fun result!127808 () Bool)

(assert (= result!127808 result!127664))

(assert (=> d!538018 t!164294))

(declare-fun t!164298 () Bool)

(declare-fun tb!106253 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164298) tb!106253))

(declare-fun result!127812 () Bool)

(assert (= result!127812 result!127526))

(assert (=> d!537746 t!164298))

(declare-fun t!164302 () Bool)

(declare-fun tb!106257 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362))))) t!164302) tb!106257))

(declare-fun result!127816 () Bool)

(assert (= result!127816 result!127704))

(assert (=> d!538120 t!164302))

(assert (=> b!1760285 t!164286))

(declare-fun tb!106261 () Bool)

(declare-fun t!164306 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680468)))))) t!164306) tb!106261))

(declare-fun result!127820 () Bool)

(assert (= result!127820 result!127640))

(assert (=> d!537934 t!164306))

(declare-fun tb!106264 () Bool)

(declare-fun t!164310 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 token!523)))) t!164310) tb!106264))

(declare-fun result!127822 () Bool)

(assert (= result!127822 result!127548))

(assert (=> b!1760972 t!164310))

(assert (=> d!537630 t!164310))

(assert (=> b!1760283 t!164298))

(declare-fun t!164312 () Bool)

(declare-fun tb!106267 () Bool)

(assert (=> (and b!1762556 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 (get!5897 lt!680657)))))) t!164312) tb!106267))

(declare-fun result!127826 () Bool)

(assert (= result!127826 result!127688))

(assert (=> d!538078 t!164312))

(declare-fun tp!500446 () Bool)

(declare-fun b_and!133035 () Bool)

(assert (=> b!1762556 (= tp!500446 (and (=> t!164294 result!127808) (=> t!164306 result!127820) (=> t!164298 result!127812) (=> t!164302 result!127816) (=> t!164290 result!127804) (=> t!164312 result!127826) (=> t!164310 result!127822) (=> t!164286 result!127800) b_and!133035))))

(declare-fun e!1127835 () Bool)

(assert (=> b!1762556 (= e!1127835 (and tp!500448 tp!500446))))

(declare-fun tp!500445 () Bool)

(declare-fun e!1127836 () Bool)

(declare-fun b!1762555 () Bool)

(assert (=> b!1762555 (= e!1127836 (and tp!500445 (inv!25164 (tag!3829 (h!24784 (t!164036 (t!164036 rules!3447))))) (inv!25170 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) e!1127835))))

(declare-fun b!1762554 () Bool)

(declare-fun e!1127833 () Bool)

(declare-fun tp!500447 () Bool)

(assert (=> b!1762554 (= e!1127833 (and e!1127836 tp!500447))))

(assert (=> b!1761015 (= tp!500247 e!1127833)))

(assert (= b!1762555 b!1762556))

(assert (= b!1762554 b!1762555))

(assert (= (and b!1761015 ((_ is Cons!19383) (t!164036 (t!164036 rules!3447)))) b!1762554))

(declare-fun m!2179181 () Bool)

(assert (=> b!1762555 m!2179181))

(declare-fun m!2179183 () Bool)

(assert (=> b!1762555 m!2179183))

(declare-fun b!1762562 () Bool)

(declare-fun e!1127838 () Bool)

(declare-fun tp!500454 () Bool)

(declare-fun tp!500457 () Bool)

(assert (=> b!1762562 (= e!1127838 (and tp!500454 tp!500457))))

(declare-fun b!1762563 () Bool)

(declare-fun tp!500455 () Bool)

(assert (=> b!1762563 (= e!1127838 tp!500455)))

(declare-fun b!1762561 () Bool)

(assert (=> b!1762561 (= e!1127838 tp_is_empty!7825)))

(declare-fun b!1762564 () Bool)

(declare-fun tp!500456 () Bool)

(declare-fun tp!500458 () Bool)

(assert (=> b!1762564 (= e!1127838 (and tp!500456 tp!500458))))

(assert (=> b!1761005 (= tp!500233 e!1127838)))

(assert (= (and b!1761005 ((_ is ElementMatch!4791) (reg!5120 (regex!3463 (rule!5481 token!523))))) b!1762561))

(assert (= (and b!1761005 ((_ is Concat!8345) (reg!5120 (regex!3463 (rule!5481 token!523))))) b!1762562))

(assert (= (and b!1761005 ((_ is Star!4791) (reg!5120 (regex!3463 (rule!5481 token!523))))) b!1762563))

(assert (= (and b!1761005 ((_ is Union!4791) (reg!5120 (regex!3463 (rule!5481 token!523))))) b!1762564))

(declare-fun b!1762568 () Bool)

(declare-fun e!1127841 () Bool)

(declare-fun tp!500462 () Bool)

(assert (=> b!1762568 (= e!1127841 (and tp_is_empty!7825 tp!500462))))

(assert (=> b!1761036 (= tp!500266 e!1127841)))

(assert (= (and b!1761036 ((_ is Cons!19382) (innerList!6507 (xs!9323 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))))) b!1762568))

(declare-fun b!1762570 () Bool)

(declare-fun e!1127842 () Bool)

(declare-fun tp!500463 () Bool)

(declare-fun tp!500466 () Bool)

(assert (=> b!1762570 (= e!1127842 (and tp!500463 tp!500466))))

(declare-fun b!1762571 () Bool)

(declare-fun tp!500464 () Bool)

(assert (=> b!1762571 (= e!1127842 tp!500464)))

(declare-fun b!1762569 () Bool)

(assert (=> b!1762569 (= e!1127842 tp_is_empty!7825)))

(declare-fun b!1762572 () Bool)

(declare-fun tp!500465 () Bool)

(declare-fun tp!500467 () Bool)

(assert (=> b!1762572 (= e!1127842 (and tp!500465 tp!500467))))

(assert (=> b!1761004 (= tp!500232 e!1127842)))

(assert (= (and b!1761004 ((_ is ElementMatch!4791) (regOne!10094 (regex!3463 (rule!5481 token!523))))) b!1762569))

(assert (= (and b!1761004 ((_ is Concat!8345) (regOne!10094 (regex!3463 (rule!5481 token!523))))) b!1762570))

(assert (= (and b!1761004 ((_ is Star!4791) (regOne!10094 (regex!3463 (rule!5481 token!523))))) b!1762571))

(assert (= (and b!1761004 ((_ is Union!4791) (regOne!10094 (regex!3463 (rule!5481 token!523))))) b!1762572))

(declare-fun b!1762574 () Bool)

(declare-fun e!1127843 () Bool)

(declare-fun tp!500468 () Bool)

(declare-fun tp!500471 () Bool)

(assert (=> b!1762574 (= e!1127843 (and tp!500468 tp!500471))))

(declare-fun b!1762575 () Bool)

(declare-fun tp!500469 () Bool)

(assert (=> b!1762575 (= e!1127843 tp!500469)))

(declare-fun b!1762573 () Bool)

(assert (=> b!1762573 (= e!1127843 tp_is_empty!7825)))

(declare-fun b!1762576 () Bool)

(declare-fun tp!500470 () Bool)

(declare-fun tp!500472 () Bool)

(assert (=> b!1762576 (= e!1127843 (and tp!500470 tp!500472))))

(assert (=> b!1761004 (= tp!500235 e!1127843)))

(assert (= (and b!1761004 ((_ is ElementMatch!4791) (regTwo!10094 (regex!3463 (rule!5481 token!523))))) b!1762573))

(assert (= (and b!1761004 ((_ is Concat!8345) (regTwo!10094 (regex!3463 (rule!5481 token!523))))) b!1762574))

(assert (= (and b!1761004 ((_ is Star!4791) (regTwo!10094 (regex!3463 (rule!5481 token!523))))) b!1762575))

(assert (= (and b!1761004 ((_ is Union!4791) (regTwo!10094 (regex!3463 (rule!5481 token!523))))) b!1762576))

(declare-fun e!1127846 () Bool)

(declare-fun tp!500477 () Bool)

(declare-fun b!1762580 () Bool)

(declare-fun tp!500476 () Bool)

(assert (=> b!1762580 (= e!1127846 (and (inv!25171 (left!15516 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) tp!500476 (inv!25171 (right!15846 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) tp!500477))))

(declare-fun b!1762582 () Bool)

(declare-fun e!1127847 () Bool)

(declare-fun tp!500478 () Bool)

(assert (=> b!1762582 (= e!1127847 tp!500478)))

(declare-fun b!1762581 () Bool)

(assert (=> b!1762581 (= e!1127846 (and (inv!25178 (xs!9323 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) e!1127847))))

(assert (=> b!1761034 (= tp!500264 (and (inv!25171 (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) e!1127846))))

(assert (= (and b!1761034 ((_ is Node!6447) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) b!1762580))

(assert (= b!1762581 b!1762582))

(assert (= (and b!1761034 ((_ is Leaf!9399) (left!15516 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) b!1762581))

(declare-fun m!2179197 () Bool)

(assert (=> b!1762580 m!2179197))

(declare-fun m!2179199 () Bool)

(assert (=> b!1762580 m!2179199))

(declare-fun m!2179201 () Bool)

(assert (=> b!1762581 m!2179201))

(assert (=> b!1761034 m!2176979))

(declare-fun e!1127849 () Bool)

(declare-fun tp!500481 () Bool)

(declare-fun tp!500480 () Bool)

(declare-fun b!1762584 () Bool)

(assert (=> b!1762584 (= e!1127849 (and (inv!25171 (left!15516 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) tp!500480 (inv!25171 (right!15846 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) tp!500481))))

(declare-fun b!1762586 () Bool)

(declare-fun e!1127850 () Bool)

(declare-fun tp!500482 () Bool)

(assert (=> b!1762586 (= e!1127850 tp!500482)))

(declare-fun b!1762585 () Bool)

(assert (=> b!1762585 (= e!1127849 (and (inv!25178 (xs!9323 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) e!1127850))))

(assert (=> b!1761034 (= tp!500265 (and (inv!25171 (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))))) e!1127849))))

(assert (= (and b!1761034 ((_ is Node!6447) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) b!1762584))

(assert (= b!1762585 b!1762586))

(assert (= (and b!1761034 ((_ is Leaf!9399) (right!15846 (c!286775 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349)))))) b!1762585))

(declare-fun m!2179203 () Bool)

(assert (=> b!1762584 m!2179203))

(declare-fun m!2179205 () Bool)

(assert (=> b!1762584 m!2179205))

(declare-fun m!2179207 () Bool)

(assert (=> b!1762585 m!2179207))

(assert (=> b!1761034 m!2176981))

(declare-fun b_lambda!57077 () Bool)

(assert (= b_lambda!57021 (or d!537762 b_lambda!57077)))

(declare-fun bs!404225 () Bool)

(declare-fun d!538680 () Bool)

(assert (= bs!404225 (and d!538680 d!537762)))

(assert (=> bs!404225 (= (dynLambda!9336 lambda!70147 lt!680349) (= (list!7861 (dynLambda!9332 (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349))) (list!7861 lt!680349)))))

(declare-fun b_lambda!57099 () Bool)

(assert (=> (not b_lambda!57099) (not bs!404225)))

(assert (=> bs!404225 t!164286))

(declare-fun b_and!133049 () Bool)

(assert (= b_and!133035 (and (=> t!164286 result!127800) b_and!133049)))

(assert (=> bs!404225 t!164027))

(declare-fun b_and!133053 () Bool)

(assert (= b_and!132961 (and (=> t!164027 result!127538) b_and!133053)))

(assert (=> bs!404225 t!164025))

(declare-fun b_and!133057 () Bool)

(assert (= b_and!132959 (and (=> t!164025 result!127536) b_and!133057)))

(assert (=> bs!404225 t!164094))

(declare-fun b_and!133063 () Bool)

(assert (= b_and!132963 (and (=> t!164094 result!127616) b_and!133063)))

(assert (=> bs!404225 t!164023))

(declare-fun b_and!133065 () Bool)

(assert (= b_and!132957 (and (=> t!164023 result!127534) b_and!133065)))

(declare-fun b_lambda!57103 () Bool)

(assert (=> (not b_lambda!57103) (not bs!404225)))

(assert (=> bs!404225 t!164088))

(declare-fun b_and!133067 () Bool)

(assert (= b_and!133019 (and (=> t!164088 result!127610) b_and!133067)))

(assert (=> bs!404225 t!164031))

(declare-fun b_and!133069 () Bool)

(assert (= b_and!133015 (and (=> t!164031 result!127544) b_and!133069)))

(assert (=> bs!404225 t!164033))

(declare-fun b_and!133071 () Bool)

(assert (= b_and!133017 (and (=> t!164033 result!127546) b_and!133071)))

(assert (=> bs!404225 t!164029))

(declare-fun b_and!133073 () Bool)

(assert (= b_and!133013 (and (=> t!164029 result!127540) b_and!133073)))

(assert (=> bs!404225 t!164256))

(declare-fun b_and!133075 () Bool)

(assert (= b_and!133031 (and (=> t!164256 result!127770) b_and!133075)))

(assert (=> bs!404225 m!2175993))

(assert (=> bs!404225 m!2175995))

(assert (=> bs!404225 m!2176043))

(assert (=> bs!404225 m!2175991))

(assert (=> bs!404225 m!2175991))

(assert (=> bs!404225 m!2175993))

(assert (=> d!538038 d!538680))

(declare-fun b_lambda!57079 () Bool)

(assert (= b_lambda!56993 (or (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48693 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57079)))

(declare-fun b_lambda!57081 () Bool)

(assert (= b_lambda!56979 (or (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48697 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48673 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57081)))

(declare-fun b_lambda!57083 () Bool)

(assert (= b_lambda!57023 (or d!537596 b_lambda!57083)))

(declare-fun bs!404228 () Bool)

(declare-fun d!538686 () Bool)

(assert (= bs!404228 (and d!538686 d!537596)))

(assert (=> bs!404228 (= (dynLambda!9337 lambda!70135 (h!24784 rules!3447)) (regex!3463 (h!24784 rules!3447)))))

(assert (=> b!1761409 d!538686))

(declare-fun b_lambda!57085 () Bool)

(assert (= b_lambda!56989 (or (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48693 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57085)))

(declare-fun b_lambda!57087 () Bool)

(assert (= b_lambda!57045 (or d!537814 b_lambda!57087)))

(declare-fun bs!404229 () Bool)

(declare-fun d!538688 () Bool)

(assert (= bs!404229 (and d!538688 d!537814)))

(declare-fun res!793230 () Bool)

(declare-fun e!1127852 () Bool)

(assert (=> bs!404229 (=> res!793230 e!1127852)))

(assert (=> bs!404229 (= res!793230 (not (= (list!7861 lt!680349) (list!7861 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))))))))

(assert (=> bs!404229 (= (dynLambda!9339 lambda!70150 lt!680349 (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362)))) e!1127852)))

(declare-fun b!1762588 () Bool)

(assert (=> b!1762588 (= e!1127852 (= (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) lt!680349) (dynLambda!9333 (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))) (seqFromList!2432 (originalCharacters!4277 (_1!10897 lt!680362))))))))

(assert (= (and bs!404229 (not res!793230)) b!1762588))

(declare-fun b_lambda!57109 () Bool)

(assert (=> (not b_lambda!57109) (not b!1762588)))

(assert (=> b!1762588 t!164256))

(declare-fun b_and!133089 () Bool)

(assert (= b_and!133075 (and (=> t!164256 result!127770) b_and!133089)))

(assert (=> b!1762588 t!164088))

(declare-fun b_and!133093 () Bool)

(assert (= b_and!133067 (and (=> t!164088 result!127610) b_and!133093)))

(assert (=> b!1762588 t!164031))

(declare-fun b_and!133097 () Bool)

(assert (= b_and!133069 (and (=> t!164031 result!127544) b_and!133097)))

(assert (=> b!1762588 t!164029))

(declare-fun b_and!133101 () Bool)

(assert (= b_and!133073 (and (=> t!164029 result!127540) b_and!133101)))

(assert (=> b!1762588 t!164033))

(declare-fun b_and!133105 () Bool)

(assert (= b_and!133071 (and (=> t!164033 result!127546) b_and!133105)))

(declare-fun b_lambda!57111 () Bool)

(assert (=> (not b_lambda!57111) (not b!1762588)))

(assert (=> b!1762588 t!164276))

(declare-fun b_and!133107 () Bool)

(assert (= b_and!133089 (and (=> t!164276 result!127790) b_and!133107)))

(assert (=> b!1762588 t!164082))

(declare-fun b_and!133109 () Bool)

(assert (= b_and!133101 (and (=> t!164082 result!127598) b_and!133109)))

(assert (=> b!1762588 t!164086))

(declare-fun b_and!133111 () Bool)

(assert (= b_and!133105 (and (=> t!164086 result!127602) b_and!133111)))

(assert (=> b!1762588 t!164084))

(declare-fun b_and!133113 () Bool)

(assert (= b_and!133097 (and (=> t!164084 result!127600) b_and!133113)))

(assert (=> b!1762588 t!164090))

(declare-fun b_and!133115 () Bool)

(assert (= b_and!133093 (and (=> t!164090 result!127612) b_and!133115)))

(assert (=> bs!404229 m!2176043))

(assert (=> bs!404229 m!2176085))

(assert (=> bs!404229 m!2176955))

(assert (=> b!1762588 m!2175991))

(assert (=> b!1762588 m!2176085))

(assert (=> b!1762588 m!2176957))

(assert (=> d!538308 d!538688))

(declare-fun b_lambda!57089 () Bool)

(assert (= b_lambda!56983 (or (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48693 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57089)))

(declare-fun b_lambda!57091 () Bool)

(assert (= b_lambda!56981 (or (and b!1760302 b_free!48681 (= (toChars!4841 (transformation!3463 (h!24784 rules!3447))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760298 b_free!48677 (= (toChars!4841 (transformation!3463 rule!422)) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48697 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48673 (= (toChars!4841 (transformation!3463 (rule!5481 token!523))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48689 (= (toChars!4841 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toChars!4841 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57091)))

(declare-fun b_lambda!57093 () Bool)

(assert (= b_lambda!56985 (or (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48693 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57093)))

(declare-fun b_lambda!57095 () Bool)

(assert (= b_lambda!56991 (or (and b!1760298 b_free!48675 (= (toValue!4982 (transformation!3463 rule!422)) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1762556 b_free!48693 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 (t!164036 rules!3447))))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760292 b_free!48671 (= (toValue!4982 (transformation!3463 (rule!5481 token!523))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1761017 b_free!48687 (= (toValue!4982 (transformation!3463 (h!24784 (t!164036 rules!3447)))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) (and b!1760302 b_free!48679 (= (toValue!4982 (transformation!3463 (h!24784 rules!3447))) (toValue!4982 (transformation!3463 (rule!5481 (_1!10897 lt!680362)))))) b_lambda!57095)))

(check-sat (not b!1761705) (not b!1762528) (not d!538572) (not b!1762232) (not d!537944) (not b!1761088) (not bm!110714) (not b!1762161) (not b!1761855) (not bm!110781) b_and!133107 (not b!1762437) (not d!537940) (not b!1762575) (not b!1762287) (not d!538272) (not d!538540) (not tb!106081) (not b!1761129) (not d!538118) (not b!1762519) (not d!537942) (not b!1762032) (not b!1761095) (not b!1761912) (not b_lambda!57089) (not b!1762311) (not d!538578) (not bs!404229) (not b!1761968) (not b!1762025) (not b!1762429) b_and!133065 (not bm!110758) (not b!1761622) (not b!1761355) (not d!538116) (not b!1762537) (not d!538316) (not b!1761699) (not d!538038) (not d!538584) (not b!1761706) (not bm!110717) (not b!1761995) (not b!1761815) (not b!1762509) (not d!538036) (not b_lambda!56997) (not b!1762574) (not b!1762568) (not d!538074) (not b!1762580) (not b_lambda!57099) (not b_next!49385) (not d!538044) (not b!1761137) (not bm!110783) (not b!1761413) (not d!538462) (not b!1761385) (not d!538018) (not bm!110752) (not b!1762526) (not b!1762259) (not d!538098) (not b!1762412) (not b!1762507) (not b!1761813) (not b!1762544) (not b!1761301) (not b!1761086) (not b!1762570) (not b!1761455) (not b!1761998) (not b!1762582) (not b!1762428) (not bm!110651) (not d!538026) (not b!1762327) (not b!1761561) (not b!1762102) (not b_lambda!57081) (not d!538422) (not b!1762002) (not d!537958) (not b!1762192) (not b!1761583) (not b!1762438) (not d!538012) (not d!538660) (not b_lambda!57035) (not d!538010) (not b!1762471) (not d!538096) (not b!1761224) (not b!1761744) (not b!1761182) (not b!1761421) (not b!1761817) (not b!1762401) (not b!1762409) (not b!1762035) (not b!1762020) (not b!1762190) (not b!1762263) (not b!1762454) (not d!538466) (not b!1761287) (not b!1762550) (not d!538396) (not b_lambda!57087) (not b!1761290) (not d!538450) (not b_lambda!57093) (not b!1762571) (not b!1762098) (not d!538430) (not b!1761215) (not b!1761298) (not d!538580) (not b!1762492) (not b!1762411) (not b!1761892) (not b!1762479) (not d!537934) (not d!538100) (not b_lambda!57109) (not d!538072) (not b!1761861) (not b!1761845) (not d!538668) (not b!1762310) (not b!1761303) (not b!1761117) (not d!538472) (not d!538140) (not b!1762481) (not b!1762465) (not bm!110778) (not b!1761584) (not b!1762330) (not bm!110755) (not b!1761220) (not b_lambda!57085) (not b!1762473) (not b!1761426) (not b!1761617) (not b!1762487) b_and!133049 (not bm!110780) (not b!1762160) (not d!538028) (not b!1762257) (not b!1762404) (not b!1762037) (not b!1762380) (not b!1762436) (not bm!110774) (not bm!110719) (not b!1762486) (not b!1761116) (not d!538420) (not b!1762480) (not b!1762286) (not b!1761857) (not b!1761190) (not b!1762188) (not b!1762488) (not b!1762381) (not b!1761848) (not b!1761858) (not b!1762066) (not b!1761299) (not b!1762295) (not d!538544) (not d!538224) (not b!1762495) (not b!1762219) (not d!538568) (not b!1762533) (not b!1762261) b_and!133053 (not b!1761469) (not b!1761119) (not b!1761590) (not b!1762029) (not bm!110713) (not b!1761922) (not b!1761993) (not b!1762408) (not b!1761128) (not b!1761915) (not b!1762021) (not b!1761341) (not b!1761564) (not b!1761409) (not b!1761310) (not b!1762299) (not d!537932) (not b!1762283) (not d!537894) (not b_lambda!57003) (not b!1761941) (not b!1762535) (not d!538594) (not bm!110760) (not b!1762075) (not d!538474) (not b_next!49383) (not d!538546) (not b!1762308) (not b!1761863) (not b_lambda!57083) (not b!1761914) (not b!1762226) (not d!538638) (not b!1761222) (not d!538448) (not tb!106113) (not b!1761852) (not bm!110784) (not b!1761300) (not b!1762101) (not tb!106193) (not b!1762306) (not b!1762496) (not d!538106) (not b!1761934) (not bm!110694) (not b!1762584) (not b!1761899) (not bm!110753) (not b!1762315) (not b!1761962) (not d!537896) (not b!1761382) (not d!538122) (not d!538418) (not d!538320) (not b!1761189) (not b_lambda!57091) (not b!1761811) (not d!538292) (not d!538016) (not d!538432) (not d!538014) (not b!1762331) (not b_next!49393) (not d!538058) (not b!1762189) (not d!538156) (not b!1762585) (not b!1761746) (not b!1761973) (not b!1762545) (not b!1762055) (not b!1761700) (not bm!110764) (not d!537868) (not b!1761576) (not b!1760523) (not b!1762150) (not b!1761141) (not tb!106185) (not b!1761292) (not b!1761615) (not tb!106121) (not b!1761305) (not d!538210) (not b!1761804) (not b!1762038) (not b!1761592) (not b!1762151) (not tb!106137) (not b_lambda!57029) (not b!1762445) b_and!133063 (not b!1761423) (not b!1762539) (not b_lambda!57049) b_and!133111 (not d!538516) (not b!1762222) (not d!538400) (not b!1762548) tp_is_empty!7825 (not b!1762414) (not d!538120) (not b!1762379) (not bm!110751) (not b!1762508) (not b!1761701) (not b!1761384) (not d!538196) (not b!1761388) (not b_next!49391) (not b!1762285) (not b!1761888) (not b!1762444) (not b!1761808) (not b_lambda!57027) (not d!537950) (not b!1761790) (not b!1761894) (not d!538302) (not b!1762383) (not b!1762399) (not b!1762443) (not bm!110793) (not b_lambda!57001) (not d!538048) (not b!1761313) (not b!1761026) (not b_next!49397) (not b!1761593) (not d!538030) (not bm!110652) (not b!1761742) (not b!1762502) (not d!538266) (not b!1761302) (not bs!404225) (not b!1762384) (not d!537956) (not b!1761219) (not d!538090) (not b!1761847) (not bm!110715) (not b_lambda!57095) (not bm!110669) (not b!1762185) (not bm!110777) (not b!1761096) (not d!538250) (not b!1761138) (not b_next!49401) (not d!538384) (not d!538626) (not b!1762030) (not d!538054) (not b!1761589) (not d!538588) (not b!1762070) (not b!1761707) (not b!1761120) (not b!1762026) (not b!1761311) (not b_lambda!56995) (not b!1761834) (not d!538592) (not b!1761587) (not d!538366) (not b!1762581) (not b!1761218) (not d!538434) (not b_lambda!57051) (not d!538164) (not b!1762576) (not bm!110720) (not b!1761308) (not b_lambda!56999) (not d!537908) (not b!1762228) (not bm!110737) (not bm!110721) (not d!538436) (not b!1761695) (not b!1762564) (not d!538612) (not d!537850) (not d!538294) (not b!1762572) (not d!538032) (not b!1761221) (not b!1762023) (not b!1761838) (not b!1761933) (not b!1762213) (not b!1762225) (not b_lambda!57077) (not b!1762241) (not d!537938) (not b!1761890) (not b!1762288) (not b!1761381) (not b!1762067) (not b!1761997) (not b!1761969) (not b!1762549) (not b!1761805) (not b!1761187) (not b!1761419) (not b!1761315) (not b!1762527) (not d!538290) (not b!1761549) (not b!1762186) (not b!1761870) (not b!1761034) (not b!1762520) (not b!1761906) (not b!1761214) (not b!1761216) (not b!1762455) (not b!1762546) (not b!1761319) (not b!1762304) (not d!538522) (not b!1762301) (not d!538562) (not b_next!49381) (not b!1761991) (not d!538248) (not d!537960) (not b_lambda!57111) (not b!1761618) (not b!1762224) (not d!538334) (not b!1761797) (not bm!110756) (not d!538476) (not d!538390) (not b!1762268) (not b!1761293) (not b!1761297) (not b!1762322) (not b!1761859) (not b!1761836) (not b_lambda!57103) (not b!1761555) (not b!1761316) (not b!1761383) b_and!133113 (not b!1761871) (not d!538308) (not b!1762538) (not bm!110765) (not b!1761873) (not b!1761964) (not d!538340) (not b!1762490) (not d!538314) (not bm!110786) (not bm!110716) (not b!1761553) (not b!1761613) (not b!1761304) (not b!1761143) (not tb!106145) (not b!1762019) (not b_next!49375) (not b!1762218) (not b_lambda!57009) (not b!1762027) (not b!1762069) (not b!1762036) (not b_lambda!57025) (not b!1761856) (not d!538078) (not bm!110739) (not b!1761386) (not d!537948) (not bm!110782) (not b!1761425) b_and!133109 (not d!538024) (not b!1762472) (not d!538570) (not d!538624) (not d!538352) (not b!1761818) (not b!1762031) (not b!1761306) (not b_lambda!57019) (not b_next!49379) (not d!538362) (not b!1761438) (not b!1762164) (not b!1761295) (not b!1762403) (not b!1762554) (not b!1761868) (not b!1761286) (not b!1762284) (not b!1762534) (not b!1762377) (not b!1761854) (not b!1762510) (not b!1762034) (not b!1761703) (not b!1762223) (not b!1762217) (not b!1762187) (not b!1762491) (not b!1761084) (not b_lambda!57033) (not b_lambda!57017) (not d!538068) (not d!538538) (not d!538348) (not b!1762234) (not b!1762555) (not b!1761288) (not d!538460) b_and!133057 (not b!1761412) (not b!1762456) (not d!538338) (not b!1762382) (not b!1762054) (not b!1761866) (not d!538444) (not b!1761704) (not d!538382) (not tb!106105) (not b!1761317) (not b!1762497) b_and!133115 (not b!1761853) (not d!538046) (not b!1762024) (not b_next!49377) (not b!1762264) (not b!1761843) (not b!1761799) (not b!1761586) (not b!1761142) (not d!538386) (not b!1761822) (not b!1761895) (not b!1761416) (not b!1762244) (not bm!110762) (not b!1762586) (not b_lambda!57079) (not b!1761430) (not b!1761121) (not b!1762563) (not b!1761935) (not b!1762221) (not b!1761841) (not b!1761801) (not b!1761966) (not b!1762430) (not tb!106129) (not b!1761611) (not b!1762518) (not d!538172) (not b!1762397) (not b!1762158) (not b!1762562) (not b!1762184) (not b!1761186) (not bm!110718))
(check-sat b_and!133107 b_and!133065 (not b_next!49385) b_and!133049 b_and!133053 (not b_next!49383) (not b_next!49393) (not b_next!49391) (not b_next!49397) (not b_next!49401) (not b_next!49381) b_and!133113 (not b_next!49375) b_and!133109 (not b_next!49379) b_and!133057 b_and!133063 b_and!133111 b_and!133115 (not b_next!49377))
