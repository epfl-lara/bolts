; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!340794 () Bool)

(assert start!340794)

(declare-fun b!3646393 () Bool)

(declare-fun b_free!95761 () Bool)

(declare-fun b_next!96465 () Bool)

(assert (=> b!3646393 (= b_free!95761 (not b_next!96465))))

(declare-fun tp!1111974 () Bool)

(declare-fun b_and!269307 () Bool)

(assert (=> b!3646393 (= tp!1111974 b_and!269307)))

(declare-fun b_free!95763 () Bool)

(declare-fun b_next!96467 () Bool)

(assert (=> b!3646393 (= b_free!95763 (not b_next!96467))))

(declare-fun tp!1111967 () Bool)

(declare-fun b_and!269309 () Bool)

(assert (=> b!3646393 (= tp!1111967 b_and!269309)))

(declare-fun b!3646407 () Bool)

(declare-fun b_free!95765 () Bool)

(declare-fun b_next!96469 () Bool)

(assert (=> b!3646407 (= b_free!95765 (not b_next!96469))))

(declare-fun tp!1111970 () Bool)

(declare-fun b_and!269311 () Bool)

(assert (=> b!3646407 (= tp!1111970 b_and!269311)))

(declare-fun b_free!95767 () Bool)

(declare-fun b_next!96471 () Bool)

(assert (=> b!3646407 (= b_free!95767 (not b_next!96471))))

(declare-fun tp!1111964 () Bool)

(declare-fun b_and!269313 () Bool)

(assert (=> b!3646407 (= tp!1111964 b_and!269313)))

(declare-fun b!3646388 () Bool)

(declare-fun b_free!95769 () Bool)

(declare-fun b_next!96473 () Bool)

(assert (=> b!3646388 (= b_free!95769 (not b_next!96473))))

(declare-fun tp!1111960 () Bool)

(declare-fun b_and!269315 () Bool)

(assert (=> b!3646388 (= tp!1111960 b_and!269315)))

(declare-fun b_free!95771 () Bool)

(declare-fun b_next!96475 () Bool)

(assert (=> b!3646388 (= b_free!95771 (not b_next!96475))))

(declare-fun tp!1111971 () Bool)

(declare-fun b_and!269317 () Bool)

(assert (=> b!3646388 (= tp!1111971 b_and!269317)))

(declare-fun b!3646415 () Bool)

(declare-fun b_free!95773 () Bool)

(declare-fun b_next!96477 () Bool)

(assert (=> b!3646415 (= b_free!95773 (not b_next!96477))))

(declare-fun tp!1111968 () Bool)

(declare-fun b_and!269319 () Bool)

(assert (=> b!3646415 (= tp!1111968 b_and!269319)))

(declare-fun b_free!95775 () Bool)

(declare-fun b_next!96479 () Bool)

(assert (=> b!3646415 (= b_free!95775 (not b_next!96479))))

(declare-fun tp!1111972 () Bool)

(declare-fun b_and!269321 () Bool)

(assert (=> b!3646415 (= tp!1111972 b_and!269321)))

(declare-fun b!3646386 () Bool)

(declare-fun res!1478768 () Bool)

(declare-fun e!2257410 () Bool)

(assert (=> b!3646386 (=> (not res!1478768) (not e!2257410))))

(declare-datatypes ((List!38565 0))(
  ( (Nil!38441) (Cons!38441 (h!43861 (_ BitVec 16)) (t!297068 List!38565)) )
))
(declare-datatypes ((TokenValue!5980 0))(
  ( (FloatLiteralValue!11960 (text!42305 List!38565)) (TokenValueExt!5979 (__x!24177 Int)) (Broken!29900 (value!184309 List!38565)) (Object!6103) (End!5980) (Def!5980) (Underscore!5980) (Match!5980) (Else!5980) (Error!5980) (Case!5980) (If!5980) (Extends!5980) (Abstract!5980) (Class!5980) (Val!5980) (DelimiterValue!11960 (del!6040 List!38565)) (KeywordValue!5986 (value!184310 List!38565)) (CommentValue!11960 (value!184311 List!38565)) (WhitespaceValue!11960 (value!184312 List!38565)) (IndentationValue!5980 (value!184313 List!38565)) (String!43233) (Int32!5980) (Broken!29901 (value!184314 List!38565)) (Boolean!5981) (Unit!55343) (OperatorValue!5983 (op!6040 List!38565)) (IdentifierValue!11960 (value!184315 List!38565)) (IdentifierValue!11961 (value!184316 List!38565)) (WhitespaceValue!11961 (value!184317 List!38565)) (True!11960) (False!11960) (Broken!29902 (value!184318 List!38565)) (Broken!29903 (value!184319 List!38565)) (True!11961) (RightBrace!5980) (RightBracket!5980) (Colon!5980) (Null!5980) (Comma!5980) (LeftBracket!5980) (False!11961) (LeftBrace!5980) (ImaginaryLiteralValue!5980 (text!42306 List!38565)) (StringLiteralValue!17940 (value!184320 List!38565)) (EOFValue!5980 (value!184321 List!38565)) (IdentValue!5980 (value!184322 List!38565)) (DelimiterValue!11961 (value!184323 List!38565)) (DedentValue!5980 (value!184324 List!38565)) (NewLineValue!5980 (value!184325 List!38565)) (IntegerValue!17940 (value!184326 (_ BitVec 32)) (text!42307 List!38565)) (IntegerValue!17941 (value!184327 Int) (text!42308 List!38565)) (Times!5980) (Or!5980) (Equal!5980) (Minus!5980) (Broken!29904 (value!184328 List!38565)) (And!5980) (Div!5980) (LessEqual!5980) (Mod!5980) (Concat!16489) (Not!5980) (Plus!5980) (SpaceValue!5980 (value!184329 List!38565)) (IntegerValue!17942 (value!184330 Int) (text!42309 List!38565)) (StringLiteralValue!17941 (text!42310 List!38565)) (FloatLiteralValue!11961 (text!42311 List!38565)) (BytesLiteralValue!5980 (value!184331 List!38565)) (CommentValue!11961 (value!184332 List!38565)) (StringLiteralValue!17942 (value!184333 List!38565)) (ErrorTokenValue!5980 (msg!6041 List!38565)) )
))
(declare-datatypes ((String!43234 0))(
  ( (String!43235 (value!184334 String)) )
))
(declare-datatypes ((C!21204 0))(
  ( (C!21205 (val!12650 Int)) )
))
(declare-datatypes ((Regex!10509 0))(
  ( (ElementMatch!10509 (c!630318 C!21204)) (Concat!16490 (regOne!21530 Regex!10509) (regTwo!21530 Regex!10509)) (EmptyExpr!10509) (Star!10509 (reg!10838 Regex!10509)) (EmptyLang!10509) (Union!10509 (regOne!21531 Regex!10509) (regTwo!21531 Regex!10509)) )
))
(declare-datatypes ((List!38566 0))(
  ( (Nil!38442) (Cons!38442 (h!43862 C!21204) (t!297069 List!38566)) )
))
(declare-datatypes ((IArray!23491 0))(
  ( (IArray!23492 (innerList!11803 List!38566)) )
))
(declare-datatypes ((Conc!11743 0))(
  ( (Node!11743 (left!30012 Conc!11743) (right!30342 Conc!11743) (csize!23716 Int) (cheight!11954 Int)) (Leaf!18229 (xs!14945 IArray!23491) (csize!23717 Int)) (Empty!11743) )
))
(declare-datatypes ((BalanceConc!23100 0))(
  ( (BalanceConc!23101 (c!630319 Conc!11743)) )
))
(declare-datatypes ((TokenValueInjection!11388 0))(
  ( (TokenValueInjection!11389 (toValue!8042 Int) (toChars!7901 Int)) )
))
(declare-datatypes ((Rule!11300 0))(
  ( (Rule!11301 (regex!5750 Regex!10509) (tag!6508 String!43234) (isSeparator!5750 Bool) (transformation!5750 TokenValueInjection!11388)) )
))
(declare-datatypes ((Token!10866 0))(
  ( (Token!10867 (value!184335 TokenValue!5980) (rule!8542 Rule!11300) (size!29347 Int) (originalCharacters!6464 List!38566)) )
))
(declare-fun token!511 () Token!10866)

(declare-fun rule!403 () Rule!11300)

(assert (=> b!3646386 (= res!1478768 (= (rule!8542 token!511) rule!403))))

(declare-fun b!3646387 () Bool)

(assert (=> b!3646387 false))

(declare-datatypes ((Unit!55344 0))(
  ( (Unit!55345) )
))
(declare-fun lt!1263707 () Unit!55344)

(declare-fun call!263518 () Unit!55344)

(assert (=> b!3646387 (= lt!1263707 call!263518)))

(declare-fun call!263517 () Bool)

(assert (=> b!3646387 (not call!263517)))

(declare-datatypes ((tuple2!38312 0))(
  ( (tuple2!38313 (_1!22290 Token!10866) (_2!22290 List!38566)) )
))
(declare-fun lt!1263731 () tuple2!38312)

(declare-datatypes ((List!38567 0))(
  ( (Nil!38443) (Cons!38443 (h!43863 Rule!11300) (t!297070 List!38567)) )
))
(declare-fun rules!3307 () List!38567)

(declare-fun lt!1263710 () C!21204)

(declare-datatypes ((LexerInterface!5339 0))(
  ( (LexerInterfaceExt!5336 (__x!24178 Int)) (Lexer!5337) )
))
(declare-fun thiss!23823 () LexerInterface!5339)

(declare-fun lt!1263725 () Unit!55344)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!396 (LexerInterface!5339 List!38567 List!38567 Rule!11300 Rule!11300 C!21204) Unit!55344)

(assert (=> b!3646387 (= lt!1263725 (lemmaNonSepRuleNotContainsCharContainedInASepRule!396 thiss!23823 rules!3307 rules!3307 (rule!8542 (_1!22290 lt!1263731)) rule!403 lt!1263710))))

(declare-fun e!2257422 () Unit!55344)

(declare-fun Unit!55346 () Unit!55344)

(assert (=> b!3646387 (= e!2257422 Unit!55346)))

(declare-fun e!2257408 () Bool)

(assert (=> b!3646388 (= e!2257408 (and tp!1111960 tp!1111971))))

(declare-fun b!3646389 () Bool)

(declare-fun res!1478770 () Bool)

(declare-fun e!2257429 () Bool)

(assert (=> b!3646389 (=> res!1478770 e!2257429)))

(declare-fun anOtherTypeRule!33 () Rule!11300)

(declare-fun lt!1263715 () C!21204)

(declare-fun contains!7565 (List!38566 C!21204) Bool)

(declare-fun usedCharacters!962 (Regex!10509) List!38566)

(assert (=> b!3646389 (= res!1478770 (not (contains!7565 (usedCharacters!962 (regex!5750 anOtherTypeRule!33)) lt!1263715)))))

(declare-fun b!3646390 () Bool)

(declare-fun e!2257405 () Bool)

(assert (=> b!3646390 (= e!2257405 e!2257429)))

(declare-fun res!1478771 () Bool)

(assert (=> b!3646390 (=> res!1478771 e!2257429)))

(declare-fun lt!1263727 () List!38566)

(assert (=> b!3646390 (= res!1478771 (contains!7565 lt!1263727 lt!1263715))))

(declare-fun suffix!1395 () List!38566)

(declare-fun head!7758 (List!38566) C!21204)

(assert (=> b!3646390 (= lt!1263715 (head!7758 suffix!1395))))

(assert (=> b!3646390 (= lt!1263727 (usedCharacters!962 (regex!5750 rule!403)))))

(declare-fun b!3646391 () Bool)

(declare-fun e!2257409 () Bool)

(declare-fun tp_is_empty!18101 () Bool)

(declare-fun tp!1111965 () Bool)

(assert (=> b!3646391 (= e!2257409 (and tp_is_empty!18101 tp!1111965))))

(declare-fun b!3646392 () Bool)

(declare-fun e!2257427 () Bool)

(declare-fun e!2257420 () Bool)

(assert (=> b!3646392 (= e!2257427 e!2257420)))

(declare-fun res!1478767 () Bool)

(assert (=> b!3646392 (=> (not res!1478767) (not e!2257420))))

(declare-fun lt!1263721 () Rule!11300)

(declare-fun matchR!5078 (Regex!10509 List!38566) Bool)

(declare-fun list!14240 (BalanceConc!23100) List!38566)

(declare-fun charsOf!3764 (Token!10866) BalanceConc!23100)

(assert (=> b!3646392 (= res!1478767 (matchR!5078 (regex!5750 lt!1263721) (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))))))

(declare-datatypes ((Option!8128 0))(
  ( (None!8127) (Some!8127 (v!37975 Rule!11300)) )
))
(declare-fun lt!1263712 () Option!8128)

(declare-fun get!12613 (Option!8128) Rule!11300)

(assert (=> b!3646392 (= lt!1263721 (get!12613 lt!1263712))))

(declare-fun e!2257412 () Bool)

(assert (=> b!3646393 (= e!2257412 (and tp!1111974 tp!1111967))))

(declare-fun b!3646394 () Bool)

(declare-fun e!2257426 () Bool)

(declare-fun e!2257425 () Bool)

(declare-fun tp!1111963 () Bool)

(assert (=> b!3646394 (= e!2257426 (and e!2257425 tp!1111963))))

(declare-fun b!3646395 () Bool)

(declare-fun e!2257418 () Bool)

(declare-fun e!2257403 () Bool)

(assert (=> b!3646395 (= e!2257418 e!2257403)))

(declare-fun res!1478780 () Bool)

(assert (=> b!3646395 (=> (not res!1478780) (not e!2257403))))

(declare-datatypes ((Option!8129 0))(
  ( (None!8128) (Some!8128 (v!37976 tuple2!38312)) )
))
(declare-fun lt!1263726 () Option!8129)

(declare-fun isDefined!6360 (Option!8129) Bool)

(assert (=> b!3646395 (= res!1478780 (isDefined!6360 lt!1263726))))

(declare-fun lt!1263730 () List!38566)

(declare-fun maxPrefix!2873 (LexerInterface!5339 List!38567 List!38566) Option!8129)

(assert (=> b!3646395 (= lt!1263726 (maxPrefix!2873 thiss!23823 rules!3307 lt!1263730))))

(declare-fun lt!1263736 () BalanceConc!23100)

(assert (=> b!3646395 (= lt!1263730 (list!14240 lt!1263736))))

(assert (=> b!3646395 (= lt!1263736 (charsOf!3764 token!511))))

(declare-fun lt!1263711 () List!38566)

(declare-fun bm!263512 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!698 (Regex!10509 List!38566 C!21204) Unit!55344)

(assert (=> bm!263512 (= call!263518 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!698 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711 lt!1263710))))

(declare-fun b!3646396 () Bool)

(declare-fun res!1478779 () Bool)

(declare-fun e!2257428 () Bool)

(assert (=> b!3646396 (=> res!1478779 e!2257428)))

(assert (=> b!3646396 (= res!1478779 (not (matchR!5078 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711)))))

(declare-fun tp!1111969 () Bool)

(declare-fun b!3646397 () Bool)

(declare-fun e!2257430 () Bool)

(declare-fun inv!51882 (String!43234) Bool)

(declare-fun inv!51885 (TokenValueInjection!11388) Bool)

(assert (=> b!3646397 (= e!2257425 (and tp!1111969 (inv!51882 (tag!6508 (h!43863 rules!3307))) (inv!51885 (transformation!5750 (h!43863 rules!3307))) e!2257430))))

(declare-fun b!3646398 () Bool)

(assert (=> b!3646398 (= e!2257403 e!2257410)))

(declare-fun res!1478769 () Bool)

(assert (=> b!3646398 (=> (not res!1478769) (not e!2257410))))

(declare-fun lt!1263704 () tuple2!38312)

(assert (=> b!3646398 (= res!1478769 (= (_1!22290 lt!1263704) token!511))))

(declare-fun get!12614 (Option!8129) tuple2!38312)

(assert (=> b!3646398 (= lt!1263704 (get!12614 lt!1263726))))

(declare-fun b!3646399 () Bool)

(declare-fun Unit!55347 () Unit!55344)

(assert (=> b!3646399 (= e!2257422 Unit!55347)))

(declare-fun b!3646400 () Bool)

(declare-fun e!2257419 () Bool)

(assert (=> b!3646400 (= e!2257428 e!2257419)))

(declare-fun res!1478781 () Bool)

(assert (=> b!3646400 (=> res!1478781 e!2257419)))

(declare-fun lt!1263729 () Int)

(declare-fun lt!1263708 () Option!8129)

(declare-fun lt!1263735 () TokenValue!5980)

(assert (=> b!3646400 (= res!1478781 (not (= lt!1263708 (Some!8128 (tuple2!38313 (Token!10867 lt!1263735 (rule!8542 (_1!22290 lt!1263731)) lt!1263729 lt!1263711) (_2!22290 lt!1263731))))))))

(declare-fun lt!1263700 () BalanceConc!23100)

(declare-fun size!29348 (BalanceConc!23100) Int)

(assert (=> b!3646400 (= lt!1263729 (size!29348 lt!1263700))))

(declare-fun apply!9252 (TokenValueInjection!11388 BalanceConc!23100) TokenValue!5980)

(assert (=> b!3646400 (= lt!1263735 (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700))))

(declare-fun lt!1263723 () Unit!55344)

(declare-fun lemmaCharactersSize!795 (Token!10866) Unit!55344)

(assert (=> b!3646400 (= lt!1263723 (lemmaCharactersSize!795 (_1!22290 lt!1263731)))))

(declare-fun lt!1263717 () Unit!55344)

(declare-fun lemmaEqSameImage!933 (TokenValueInjection!11388 BalanceConc!23100 BalanceConc!23100) Unit!55344)

(declare-fun seqFromList!4299 (List!38566) BalanceConc!23100)

(assert (=> b!3646400 (= lt!1263717 (lemmaEqSameImage!933 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700 (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731)))))))

(declare-fun lt!1263709 () Unit!55344)

(declare-fun lemmaSemiInverse!1499 (TokenValueInjection!11388 BalanceConc!23100) Unit!55344)

(assert (=> b!3646400 (= lt!1263709 (lemmaSemiInverse!1499 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700))))

(declare-fun e!2257423 () Bool)

(declare-fun e!2257400 () Bool)

(declare-fun tp!1111973 () Bool)

(declare-fun b!3646401 () Bool)

(assert (=> b!3646401 (= e!2257423 (and tp!1111973 (inv!51882 (tag!6508 (rule!8542 token!511))) (inv!51885 (transformation!5750 (rule!8542 token!511))) e!2257400))))

(declare-fun b!3646402 () Bool)

(declare-fun e!2257424 () Bool)

(assert (=> b!3646402 (= e!2257419 e!2257424)))

(declare-fun res!1478774 () Bool)

(assert (=> b!3646402 (=> res!1478774 e!2257424)))

(declare-fun lt!1263734 () List!38566)

(declare-fun lt!1263718 () Option!8129)

(assert (=> b!3646402 (= res!1478774 (or (not (= lt!1263734 (_2!22290 lt!1263731))) (not (= lt!1263718 (Some!8128 (tuple2!38313 (_1!22290 lt!1263731) lt!1263734))))))))

(assert (=> b!3646402 (= (_2!22290 lt!1263731) lt!1263734)))

(declare-fun lt!1263728 () Unit!55344)

(declare-fun lt!1263703 () List!38566)

(declare-fun lemmaSamePrefixThenSameSuffix!1440 (List!38566 List!38566 List!38566 List!38566 List!38566) Unit!55344)

(assert (=> b!3646402 (= lt!1263728 (lemmaSamePrefixThenSameSuffix!1440 lt!1263711 (_2!22290 lt!1263731) lt!1263711 lt!1263734 lt!1263703))))

(declare-fun getSuffix!1666 (List!38566 List!38566) List!38566)

(assert (=> b!3646402 (= lt!1263734 (getSuffix!1666 lt!1263703 lt!1263711))))

(declare-fun lt!1263713 () TokenValue!5980)

(declare-fun lt!1263702 () Int)

(assert (=> b!3646402 (= lt!1263718 (Some!8128 (tuple2!38313 (Token!10867 lt!1263713 (rule!8542 (_1!22290 lt!1263731)) lt!1263702 lt!1263711) (_2!22290 lt!1263731))))))

(declare-fun maxPrefixOneRule!2011 (LexerInterface!5339 Rule!11300 List!38566) Option!8129)

(assert (=> b!3646402 (= lt!1263718 (maxPrefixOneRule!2011 thiss!23823 (rule!8542 (_1!22290 lt!1263731)) lt!1263703))))

(declare-fun size!29349 (List!38566) Int)

(assert (=> b!3646402 (= lt!1263702 (size!29349 lt!1263711))))

(assert (=> b!3646402 (= lt!1263713 (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) (seqFromList!4299 lt!1263711)))))

(declare-fun lt!1263701 () Unit!55344)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1067 (LexerInterface!5339 List!38567 List!38566 List!38566 List!38566 Rule!11300) Unit!55344)

(assert (=> b!3646402 (= lt!1263701 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1067 thiss!23823 rules!3307 lt!1263711 lt!1263703 (_2!22290 lt!1263731) (rule!8542 (_1!22290 lt!1263731))))))

(declare-fun b!3646403 () Bool)

(declare-fun res!1478763 () Bool)

(assert (=> b!3646403 (=> (not res!1478763) (not e!2257418))))

(declare-fun isEmpty!22772 (List!38567) Bool)

(assert (=> b!3646403 (= res!1478763 (not (isEmpty!22772 rules!3307)))))

(declare-fun res!1478765 () Bool)

(assert (=> start!340794 (=> (not res!1478765) (not e!2257418))))

(get-info :version)

(assert (=> start!340794 (= res!1478765 ((_ is Lexer!5337) thiss!23823))))

(assert (=> start!340794 e!2257418))

(assert (=> start!340794 e!2257426))

(assert (=> start!340794 e!2257409))

(assert (=> start!340794 true))

(declare-fun e!2257402 () Bool)

(declare-fun inv!51886 (Token!10866) Bool)

(assert (=> start!340794 (and (inv!51886 token!511) e!2257402)))

(declare-fun e!2257415 () Bool)

(assert (=> start!340794 e!2257415))

(declare-fun e!2257406 () Bool)

(assert (=> start!340794 e!2257406))

(declare-fun bm!263511 () Bool)

(declare-fun call!263516 () List!38566)

(assert (=> bm!263511 (= call!263517 (contains!7565 call!263516 lt!1263710))))

(declare-fun b!3646404 () Bool)

(declare-fun res!1478776 () Bool)

(assert (=> b!3646404 (=> (not res!1478776) (not e!2257418))))

(declare-fun contains!7566 (List!38567 Rule!11300) Bool)

(assert (=> b!3646404 (= res!1478776 (contains!7566 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3646405 () Bool)

(assert (=> b!3646405 (= e!2257420 (= (rule!8542 (_1!22290 lt!1263731)) lt!1263721))))

(declare-fun b!3646406 () Bool)

(declare-fun res!1478764 () Bool)

(assert (=> b!3646406 (=> res!1478764 e!2257405)))

(declare-fun isEmpty!22773 (List!38566) Bool)

(assert (=> b!3646406 (= res!1478764 (isEmpty!22773 suffix!1395))))

(declare-fun bm!263513 () Bool)

(assert (=> bm!263513 (= call!263516 (usedCharacters!962 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(assert (=> b!3646407 (= e!2257400 (and tp!1111970 tp!1111964))))

(declare-fun b!3646408 () Bool)

(declare-fun e!2257413 () Unit!55344)

(declare-fun Unit!55348 () Unit!55344)

(assert (=> b!3646408 (= e!2257413 Unit!55348)))

(declare-fun lt!1263719 () Unit!55344)

(assert (=> b!3646408 (= lt!1263719 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!698 (regex!5750 rule!403) lt!1263730 lt!1263710))))

(assert (=> b!3646408 false))

(declare-fun b!3646409 () Bool)

(declare-fun e!2257416 () Unit!55344)

(declare-fun Unit!55349 () Unit!55344)

(assert (=> b!3646409 (= e!2257416 Unit!55349)))

(declare-fun b!3646410 () Bool)

(declare-fun res!1478766 () Bool)

(assert (=> b!3646410 (=> (not res!1478766) (not e!2257418))))

(assert (=> b!3646410 (= res!1478766 (contains!7566 rules!3307 rule!403))))

(declare-fun b!3646411 () Bool)

(declare-fun e!2257404 () Unit!55344)

(assert (=> b!3646411 (= e!2257404 e!2257422)))

(declare-fun c!630317 () Bool)

(assert (=> b!3646411 (= c!630317 (not (isSeparator!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3646412 () Bool)

(declare-fun res!1478762 () Bool)

(assert (=> b!3646412 (=> (not res!1478762) (not e!2257410))))

(assert (=> b!3646412 (= res!1478762 (isEmpty!22773 (_2!22290 lt!1263704)))))

(declare-fun b!3646413 () Bool)

(declare-fun tp!1111966 () Bool)

(assert (=> b!3646413 (= e!2257415 (and tp!1111966 (inv!51882 (tag!6508 rule!403)) (inv!51885 (transformation!5750 rule!403)) e!2257412))))

(declare-fun b!3646414 () Bool)

(declare-fun res!1478772 () Bool)

(assert (=> b!3646414 (=> res!1478772 e!2257429)))

(declare-fun sepAndNonSepRulesDisjointChars!1918 (List!38567 List!38567) Bool)

(assert (=> b!3646414 (= res!1478772 (not (sepAndNonSepRulesDisjointChars!1918 rules!3307 rules!3307)))))

(assert (=> b!3646415 (= e!2257430 (and tp!1111968 tp!1111972))))

(declare-fun b!3646416 () Bool)

(assert (=> b!3646416 false))

(declare-fun lt!1263733 () Unit!55344)

(assert (=> b!3646416 (= lt!1263733 call!263518)))

(assert (=> b!3646416 (not call!263517)))

(declare-fun lt!1263720 () Unit!55344)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!278 (LexerInterface!5339 List!38567 List!38567 Rule!11300 Rule!11300 C!21204) Unit!55344)

(assert (=> b!3646416 (= lt!1263720 (lemmaSepRuleNotContainsCharContainedInANonSepRule!278 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8542 (_1!22290 lt!1263731)) lt!1263710))))

(declare-fun Unit!55350 () Unit!55344)

(assert (=> b!3646416 (= e!2257416 Unit!55350)))

(declare-fun tp!1111961 () Bool)

(declare-fun b!3646417 () Bool)

(declare-fun inv!21 (TokenValue!5980) Bool)

(assert (=> b!3646417 (= e!2257402 (and (inv!21 (value!184335 token!511)) e!2257423 tp!1111961))))

(declare-fun b!3646418 () Bool)

(declare-fun tp!1111962 () Bool)

(assert (=> b!3646418 (= e!2257406 (and tp!1111962 (inv!51882 (tag!6508 anOtherTypeRule!33)) (inv!51885 (transformation!5750 anOtherTypeRule!33)) e!2257408))))

(declare-fun b!3646419 () Bool)

(assert (=> b!3646419 (= e!2257410 (not e!2257405))))

(declare-fun res!1478782 () Bool)

(assert (=> b!3646419 (=> res!1478782 e!2257405)))

(assert (=> b!3646419 (= res!1478782 (not (matchR!5078 (regex!5750 rule!403) lt!1263730)))))

(declare-fun ruleValid!2014 (LexerInterface!5339 Rule!11300) Bool)

(assert (=> b!3646419 (ruleValid!2014 thiss!23823 rule!403)))

(declare-fun lt!1263722 () Unit!55344)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1168 (LexerInterface!5339 Rule!11300 List!38567) Unit!55344)

(assert (=> b!3646419 (= lt!1263722 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1168 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3646420 () Bool)

(assert (=> b!3646420 (= e!2257429 e!2257428)))

(declare-fun res!1478773 () Bool)

(assert (=> b!3646420 (=> res!1478773 e!2257428)))

(declare-fun isPrefix!3113 (List!38566 List!38566) Bool)

(assert (=> b!3646420 (= res!1478773 (not (isPrefix!3113 lt!1263711 lt!1263703)))))

(declare-fun ++!9566 (List!38566 List!38566) List!38566)

(assert (=> b!3646420 (isPrefix!3113 lt!1263711 (++!9566 lt!1263711 (_2!22290 lt!1263731)))))

(declare-fun lt!1263732 () Unit!55344)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2032 (List!38566 List!38566) Unit!55344)

(assert (=> b!3646420 (= lt!1263732 (lemmaConcatTwoListThenFirstIsPrefix!2032 lt!1263711 (_2!22290 lt!1263731)))))

(assert (=> b!3646420 (= lt!1263711 (list!14240 lt!1263700))))

(assert (=> b!3646420 (= lt!1263700 (charsOf!3764 (_1!22290 lt!1263731)))))

(assert (=> b!3646420 e!2257427))

(declare-fun res!1478778 () Bool)

(assert (=> b!3646420 (=> (not res!1478778) (not e!2257427))))

(declare-fun isDefined!6361 (Option!8128) Bool)

(assert (=> b!3646420 (= res!1478778 (isDefined!6361 lt!1263712))))

(declare-fun getRuleFromTag!1354 (LexerInterface!5339 List!38567 String!43234) Option!8128)

(assert (=> b!3646420 (= lt!1263712 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun lt!1263716 () Unit!55344)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1354 (LexerInterface!5339 List!38567 List!38566 Token!10866) Unit!55344)

(assert (=> b!3646420 (= lt!1263716 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1354 thiss!23823 rules!3307 lt!1263703 (_1!22290 lt!1263731)))))

(assert (=> b!3646420 (= lt!1263731 (get!12614 lt!1263708))))

(declare-fun lt!1263706 () Unit!55344)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1017 (LexerInterface!5339 List!38567 List!38566 List!38566) Unit!55344)

(assert (=> b!3646420 (= lt!1263706 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1017 thiss!23823 rules!3307 lt!1263730 suffix!1395))))

(assert (=> b!3646420 (= lt!1263708 (maxPrefix!2873 thiss!23823 rules!3307 lt!1263703))))

(assert (=> b!3646420 (isPrefix!3113 lt!1263730 lt!1263703)))

(declare-fun lt!1263724 () Unit!55344)

(assert (=> b!3646420 (= lt!1263724 (lemmaConcatTwoListThenFirstIsPrefix!2032 lt!1263730 suffix!1395))))

(assert (=> b!3646420 (= lt!1263703 (++!9566 lt!1263730 suffix!1395))))

(declare-fun b!3646421 () Bool)

(declare-fun e!2257401 () Bool)

(assert (=> b!3646421 (= e!2257424 e!2257401)))

(declare-fun res!1478777 () Bool)

(assert (=> b!3646421 (=> res!1478777 e!2257401)))

(assert (=> b!3646421 (= res!1478777 (<= lt!1263729 (size!29348 lt!1263736)))))

(declare-fun lt!1263705 () Unit!55344)

(assert (=> b!3646421 (= lt!1263705 e!2257404)))

(declare-fun c!630314 () Bool)

(assert (=> b!3646421 (= c!630314 (isSeparator!5750 rule!403))))

(declare-fun lt!1263714 () Unit!55344)

(assert (=> b!3646421 (= lt!1263714 e!2257413)))

(declare-fun c!630316 () Bool)

(assert (=> b!3646421 (= c!630316 (not (contains!7565 lt!1263727 lt!1263710)))))

(assert (=> b!3646421 (= lt!1263710 (head!7758 lt!1263711))))

(declare-fun b!3646422 () Bool)

(declare-fun res!1478783 () Bool)

(assert (=> b!3646422 (=> (not res!1478783) (not e!2257418))))

(assert (=> b!3646422 (= res!1478783 (not (= (isSeparator!5750 anOtherTypeRule!33) (isSeparator!5750 rule!403))))))

(declare-fun b!3646423 () Bool)

(declare-fun res!1478775 () Bool)

(assert (=> b!3646423 (=> (not res!1478775) (not e!2257418))))

(declare-fun rulesInvariant!4736 (LexerInterface!5339 List!38567) Bool)

(assert (=> b!3646423 (= res!1478775 (rulesInvariant!4736 thiss!23823 rules!3307))))

(declare-fun b!3646424 () Bool)

(declare-fun Unit!55351 () Unit!55344)

(assert (=> b!3646424 (= e!2257413 Unit!55351)))

(declare-fun b!3646425 () Bool)

(assert (=> b!3646425 (= e!2257404 e!2257416)))

(declare-fun c!630315 () Bool)

(assert (=> b!3646425 (= c!630315 (isSeparator!5750 (rule!8542 (_1!22290 lt!1263731))))))

(declare-fun b!3646426 () Bool)

(assert (=> b!3646426 (= e!2257401 (< (size!29349 lt!1263730) lt!1263702))))

(assert (= (and start!340794 res!1478765) b!3646403))

(assert (= (and b!3646403 res!1478763) b!3646423))

(assert (= (and b!3646423 res!1478775) b!3646410))

(assert (= (and b!3646410 res!1478766) b!3646404))

(assert (= (and b!3646404 res!1478776) b!3646422))

(assert (= (and b!3646422 res!1478783) b!3646395))

(assert (= (and b!3646395 res!1478780) b!3646398))

(assert (= (and b!3646398 res!1478769) b!3646412))

(assert (= (and b!3646412 res!1478762) b!3646386))

(assert (= (and b!3646386 res!1478768) b!3646419))

(assert (= (and b!3646419 (not res!1478782)) b!3646406))

(assert (= (and b!3646406 (not res!1478764)) b!3646390))

(assert (= (and b!3646390 (not res!1478771)) b!3646389))

(assert (= (and b!3646389 (not res!1478770)) b!3646414))

(assert (= (and b!3646414 (not res!1478772)) b!3646420))

(assert (= (and b!3646420 res!1478778) b!3646392))

(assert (= (and b!3646392 res!1478767) b!3646405))

(assert (= (and b!3646420 (not res!1478773)) b!3646396))

(assert (= (and b!3646396 (not res!1478779)) b!3646400))

(assert (= (and b!3646400 (not res!1478781)) b!3646402))

(assert (= (and b!3646402 (not res!1478774)) b!3646421))

(assert (= (and b!3646421 c!630316) b!3646408))

(assert (= (and b!3646421 (not c!630316)) b!3646424))

(assert (= (and b!3646421 c!630314) b!3646411))

(assert (= (and b!3646421 (not c!630314)) b!3646425))

(assert (= (and b!3646411 c!630317) b!3646387))

(assert (= (and b!3646411 (not c!630317)) b!3646399))

(assert (= (and b!3646425 c!630315) b!3646416))

(assert (= (and b!3646425 (not c!630315)) b!3646409))

(assert (= (or b!3646387 b!3646416) bm!263512))

(assert (= (or b!3646387 b!3646416) bm!263513))

(assert (= (or b!3646387 b!3646416) bm!263511))

(assert (= (and b!3646421 (not res!1478777)) b!3646426))

(assert (= b!3646397 b!3646415))

(assert (= b!3646394 b!3646397))

(assert (= (and start!340794 ((_ is Cons!38443) rules!3307)) b!3646394))

(assert (= (and start!340794 ((_ is Cons!38442) suffix!1395)) b!3646391))

(assert (= b!3646401 b!3646407))

(assert (= b!3646417 b!3646401))

(assert (= start!340794 b!3646417))

(assert (= b!3646413 b!3646393))

(assert (= start!340794 b!3646413))

(assert (= b!3646418 b!3646388))

(assert (= start!340794 b!3646418))

(declare-fun m!4150201 () Bool)

(assert (=> b!3646416 m!4150201))

(declare-fun m!4150203 () Bool)

(assert (=> b!3646418 m!4150203))

(declare-fun m!4150205 () Bool)

(assert (=> b!3646418 m!4150205))

(declare-fun m!4150207 () Bool)

(assert (=> b!3646403 m!4150207))

(declare-fun m!4150209 () Bool)

(assert (=> b!3646396 m!4150209))

(declare-fun m!4150211 () Bool)

(assert (=> b!3646414 m!4150211))

(declare-fun m!4150213 () Bool)

(assert (=> b!3646392 m!4150213))

(assert (=> b!3646392 m!4150213))

(declare-fun m!4150215 () Bool)

(assert (=> b!3646392 m!4150215))

(assert (=> b!3646392 m!4150215))

(declare-fun m!4150217 () Bool)

(assert (=> b!3646392 m!4150217))

(declare-fun m!4150219 () Bool)

(assert (=> b!3646392 m!4150219))

(declare-fun m!4150221 () Bool)

(assert (=> b!3646402 m!4150221))

(declare-fun m!4150223 () Bool)

(assert (=> b!3646402 m!4150223))

(declare-fun m!4150225 () Bool)

(assert (=> b!3646402 m!4150225))

(declare-fun m!4150227 () Bool)

(assert (=> b!3646402 m!4150227))

(assert (=> b!3646402 m!4150221))

(declare-fun m!4150229 () Bool)

(assert (=> b!3646402 m!4150229))

(declare-fun m!4150231 () Bool)

(assert (=> b!3646402 m!4150231))

(declare-fun m!4150233 () Bool)

(assert (=> b!3646402 m!4150233))

(declare-fun m!4150235 () Bool)

(assert (=> bm!263512 m!4150235))

(declare-fun m!4150237 () Bool)

(assert (=> b!3646387 m!4150237))

(declare-fun m!4150239 () Bool)

(assert (=> b!3646397 m!4150239))

(declare-fun m!4150241 () Bool)

(assert (=> b!3646397 m!4150241))

(declare-fun m!4150243 () Bool)

(assert (=> b!3646406 m!4150243))

(declare-fun m!4150245 () Bool)

(assert (=> b!3646426 m!4150245))

(declare-fun m!4150247 () Bool)

(assert (=> b!3646413 m!4150247))

(declare-fun m!4150249 () Bool)

(assert (=> b!3646413 m!4150249))

(declare-fun m!4150251 () Bool)

(assert (=> b!3646412 m!4150251))

(declare-fun m!4150253 () Bool)

(assert (=> b!3646419 m!4150253))

(declare-fun m!4150255 () Bool)

(assert (=> b!3646419 m!4150255))

(declare-fun m!4150257 () Bool)

(assert (=> b!3646419 m!4150257))

(declare-fun m!4150259 () Bool)

(assert (=> b!3646390 m!4150259))

(declare-fun m!4150261 () Bool)

(assert (=> b!3646390 m!4150261))

(declare-fun m!4150263 () Bool)

(assert (=> b!3646390 m!4150263))

(declare-fun m!4150265 () Bool)

(assert (=> b!3646400 m!4150265))

(declare-fun m!4150267 () Bool)

(assert (=> b!3646400 m!4150267))

(declare-fun m!4150269 () Bool)

(assert (=> b!3646400 m!4150269))

(declare-fun m!4150271 () Bool)

(assert (=> b!3646400 m!4150271))

(declare-fun m!4150273 () Bool)

(assert (=> b!3646400 m!4150273))

(assert (=> b!3646400 m!4150271))

(declare-fun m!4150275 () Bool)

(assert (=> b!3646400 m!4150275))

(declare-fun m!4150277 () Bool)

(assert (=> b!3646408 m!4150277))

(declare-fun m!4150279 () Bool)

(assert (=> bm!263511 m!4150279))

(declare-fun m!4150281 () Bool)

(assert (=> b!3646410 m!4150281))

(declare-fun m!4150283 () Bool)

(assert (=> b!3646423 m!4150283))

(declare-fun m!4150285 () Bool)

(assert (=> b!3646420 m!4150285))

(declare-fun m!4150287 () Bool)

(assert (=> b!3646420 m!4150287))

(declare-fun m!4150289 () Bool)

(assert (=> b!3646420 m!4150289))

(declare-fun m!4150291 () Bool)

(assert (=> b!3646420 m!4150291))

(assert (=> b!3646420 m!4150285))

(declare-fun m!4150293 () Bool)

(assert (=> b!3646420 m!4150293))

(declare-fun m!4150295 () Bool)

(assert (=> b!3646420 m!4150295))

(declare-fun m!4150297 () Bool)

(assert (=> b!3646420 m!4150297))

(declare-fun m!4150299 () Bool)

(assert (=> b!3646420 m!4150299))

(declare-fun m!4150301 () Bool)

(assert (=> b!3646420 m!4150301))

(declare-fun m!4150303 () Bool)

(assert (=> b!3646420 m!4150303))

(assert (=> b!3646420 m!4150213))

(declare-fun m!4150305 () Bool)

(assert (=> b!3646420 m!4150305))

(declare-fun m!4150307 () Bool)

(assert (=> b!3646420 m!4150307))

(declare-fun m!4150309 () Bool)

(assert (=> b!3646420 m!4150309))

(declare-fun m!4150311 () Bool)

(assert (=> b!3646420 m!4150311))

(declare-fun m!4150313 () Bool)

(assert (=> b!3646421 m!4150313))

(declare-fun m!4150315 () Bool)

(assert (=> b!3646421 m!4150315))

(declare-fun m!4150317 () Bool)

(assert (=> b!3646421 m!4150317))

(declare-fun m!4150319 () Bool)

(assert (=> b!3646389 m!4150319))

(assert (=> b!3646389 m!4150319))

(declare-fun m!4150321 () Bool)

(assert (=> b!3646389 m!4150321))

(declare-fun m!4150323 () Bool)

(assert (=> b!3646417 m!4150323))

(declare-fun m!4150325 () Bool)

(assert (=> b!3646398 m!4150325))

(declare-fun m!4150327 () Bool)

(assert (=> b!3646401 m!4150327))

(declare-fun m!4150329 () Bool)

(assert (=> b!3646401 m!4150329))

(declare-fun m!4150331 () Bool)

(assert (=> start!340794 m!4150331))

(declare-fun m!4150333 () Bool)

(assert (=> bm!263513 m!4150333))

(declare-fun m!4150335 () Bool)

(assert (=> b!3646395 m!4150335))

(declare-fun m!4150337 () Bool)

(assert (=> b!3646395 m!4150337))

(declare-fun m!4150339 () Bool)

(assert (=> b!3646395 m!4150339))

(declare-fun m!4150341 () Bool)

(assert (=> b!3646395 m!4150341))

(declare-fun m!4150343 () Bool)

(assert (=> b!3646404 m!4150343))

(check-sat b_and!269315 (not b!3646421) (not b!3646394) (not b_next!96475) b_and!269309 (not bm!263513) b_and!269321 (not b_next!96465) b_and!269307 b_and!269313 (not b!3646397) (not b!3646417) (not b_next!96467) (not b!3646413) (not b!3646403) (not b_next!96473) (not b!3646396) (not b!3646408) (not b_next!96477) b_and!269311 (not b!3646426) b_and!269319 (not b!3646406) (not bm!263511) (not b_next!96469) (not b!3646412) (not b!3646416) (not b!3646419) (not b!3646420) (not b!3646414) (not b!3646423) (not b!3646392) (not b!3646401) (not b!3646402) tp_is_empty!18101 b_and!269317 (not b!3646390) (not b!3646418) (not b!3646395) (not b!3646400) (not b_next!96471) (not b!3646410) (not start!340794) (not b_next!96479) (not b!3646387) (not bm!263512) (not b!3646389) (not b!3646391) (not b!3646404) (not b!3646398))
(check-sat b_and!269315 (not b_next!96473) b_and!269319 (not b_next!96469) (not b_next!96475) b_and!269309 b_and!269317 (not b_next!96471) b_and!269321 (not b_next!96465) (not b_next!96479) b_and!269307 b_and!269313 (not b_next!96467) (not b_next!96477) b_and!269311)
(get-model)

(declare-fun d!1071726 () Bool)

(declare-fun res!1478822 () Bool)

(declare-fun e!2257458 () Bool)

(assert (=> d!1071726 (=> res!1478822 e!2257458)))

(assert (=> d!1071726 (= res!1478822 (not ((_ is Cons!38443) rules!3307)))))

(assert (=> d!1071726 (= (sepAndNonSepRulesDisjointChars!1918 rules!3307 rules!3307) e!2257458)))

(declare-fun b!3646477 () Bool)

(declare-fun e!2257459 () Bool)

(assert (=> b!3646477 (= e!2257458 e!2257459)))

(declare-fun res!1478823 () Bool)

(assert (=> b!3646477 (=> (not res!1478823) (not e!2257459))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!874 (Rule!11300 List!38567) Bool)

(assert (=> b!3646477 (= res!1478823 (ruleDisjointCharsFromAllFromOtherType!874 (h!43863 rules!3307) rules!3307))))

(declare-fun b!3646478 () Bool)

(assert (=> b!3646478 (= e!2257459 (sepAndNonSepRulesDisjointChars!1918 rules!3307 (t!297070 rules!3307)))))

(assert (= (and d!1071726 (not res!1478822)) b!3646477))

(assert (= (and b!3646477 res!1478823) b!3646478))

(declare-fun m!4150361 () Bool)

(assert (=> b!3646477 m!4150361))

(declare-fun m!4150363 () Bool)

(assert (=> b!3646478 m!4150363))

(assert (=> b!3646414 d!1071726))

(declare-fun d!1071732 () Bool)

(declare-fun isEmpty!22774 (Option!8129) Bool)

(assert (=> d!1071732 (= (isDefined!6360 lt!1263726) (not (isEmpty!22774 lt!1263726)))))

(declare-fun bs!572100 () Bool)

(assert (= bs!572100 d!1071732))

(declare-fun m!4150365 () Bool)

(assert (=> bs!572100 m!4150365))

(assert (=> b!3646395 d!1071732))

(declare-fun bm!263539 () Bool)

(declare-fun call!263544 () Option!8129)

(assert (=> bm!263539 (= call!263544 (maxPrefixOneRule!2011 thiss!23823 (h!43863 rules!3307) lt!1263730))))

(declare-fun b!3646623 () Bool)

(declare-fun res!1478901 () Bool)

(declare-fun e!2257540 () Bool)

(assert (=> b!3646623 (=> (not res!1478901) (not e!2257540))))

(declare-fun lt!1263791 () Option!8129)

(assert (=> b!3646623 (= res!1478901 (< (size!29349 (_2!22290 (get!12614 lt!1263791))) (size!29349 lt!1263730)))))

(declare-fun d!1071734 () Bool)

(declare-fun e!2257539 () Bool)

(assert (=> d!1071734 e!2257539))

(declare-fun res!1478904 () Bool)

(assert (=> d!1071734 (=> res!1478904 e!2257539)))

(assert (=> d!1071734 (= res!1478904 (isEmpty!22774 lt!1263791))))

(declare-fun e!2257541 () Option!8129)

(assert (=> d!1071734 (= lt!1263791 e!2257541)))

(declare-fun c!630364 () Bool)

(assert (=> d!1071734 (= c!630364 (and ((_ is Cons!38443) rules!3307) ((_ is Nil!38443) (t!297070 rules!3307))))))

(declare-fun lt!1263793 () Unit!55344)

(declare-fun lt!1263794 () Unit!55344)

(assert (=> d!1071734 (= lt!1263793 lt!1263794)))

(assert (=> d!1071734 (isPrefix!3113 lt!1263730 lt!1263730)))

(declare-fun lemmaIsPrefixRefl!1971 (List!38566 List!38566) Unit!55344)

(assert (=> d!1071734 (= lt!1263794 (lemmaIsPrefixRefl!1971 lt!1263730 lt!1263730))))

(declare-fun rulesValidInductive!2036 (LexerInterface!5339 List!38567) Bool)

(assert (=> d!1071734 (rulesValidInductive!2036 thiss!23823 rules!3307)))

(assert (=> d!1071734 (= (maxPrefix!2873 thiss!23823 rules!3307 lt!1263730) lt!1263791)))

(declare-fun b!3646624 () Bool)

(declare-fun res!1478900 () Bool)

(assert (=> b!3646624 (=> (not res!1478900) (not e!2257540))))

(assert (=> b!3646624 (= res!1478900 (matchR!5078 (regex!5750 (rule!8542 (_1!22290 (get!12614 lt!1263791)))) (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263791))))))))

(declare-fun b!3646625 () Bool)

(declare-fun lt!1263795 () Option!8129)

(declare-fun lt!1263792 () Option!8129)

(assert (=> b!3646625 (= e!2257541 (ite (and ((_ is None!8128) lt!1263795) ((_ is None!8128) lt!1263792)) None!8128 (ite ((_ is None!8128) lt!1263792) lt!1263795 (ite ((_ is None!8128) lt!1263795) lt!1263792 (ite (>= (size!29347 (_1!22290 (v!37976 lt!1263795))) (size!29347 (_1!22290 (v!37976 lt!1263792)))) lt!1263795 lt!1263792)))))))

(assert (=> b!3646625 (= lt!1263795 call!263544)))

(assert (=> b!3646625 (= lt!1263792 (maxPrefix!2873 thiss!23823 (t!297070 rules!3307) lt!1263730))))

(declare-fun b!3646626 () Bool)

(declare-fun res!1478906 () Bool)

(assert (=> b!3646626 (=> (not res!1478906) (not e!2257540))))

(assert (=> b!3646626 (= res!1478906 (= (value!184335 (_1!22290 (get!12614 lt!1263791))) (apply!9252 (transformation!5750 (rule!8542 (_1!22290 (get!12614 lt!1263791)))) (seqFromList!4299 (originalCharacters!6464 (_1!22290 (get!12614 lt!1263791)))))))))

(declare-fun b!3646627 () Bool)

(declare-fun res!1478903 () Bool)

(assert (=> b!3646627 (=> (not res!1478903) (not e!2257540))))

(assert (=> b!3646627 (= res!1478903 (= (++!9566 (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263791)))) (_2!22290 (get!12614 lt!1263791))) lt!1263730))))

(declare-fun b!3646628 () Bool)

(assert (=> b!3646628 (= e!2257539 e!2257540)))

(declare-fun res!1478902 () Bool)

(assert (=> b!3646628 (=> (not res!1478902) (not e!2257540))))

(assert (=> b!3646628 (= res!1478902 (isDefined!6360 lt!1263791))))

(declare-fun b!3646629 () Bool)

(assert (=> b!3646629 (= e!2257540 (contains!7566 rules!3307 (rule!8542 (_1!22290 (get!12614 lt!1263791)))))))

(declare-fun b!3646630 () Bool)

(assert (=> b!3646630 (= e!2257541 call!263544)))

(declare-fun b!3646631 () Bool)

(declare-fun res!1478905 () Bool)

(assert (=> b!3646631 (=> (not res!1478905) (not e!2257540))))

(assert (=> b!3646631 (= res!1478905 (= (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263791)))) (originalCharacters!6464 (_1!22290 (get!12614 lt!1263791)))))))

(assert (= (and d!1071734 c!630364) b!3646630))

(assert (= (and d!1071734 (not c!630364)) b!3646625))

(assert (= (or b!3646630 b!3646625) bm!263539))

(assert (= (and d!1071734 (not res!1478904)) b!3646628))

(assert (= (and b!3646628 res!1478902) b!3646631))

(assert (= (and b!3646631 res!1478905) b!3646623))

(assert (= (and b!3646623 res!1478901) b!3646627))

(assert (= (and b!3646627 res!1478903) b!3646626))

(assert (= (and b!3646626 res!1478906) b!3646624))

(assert (= (and b!3646624 res!1478900) b!3646629))

(declare-fun m!4150515 () Bool)

(assert (=> b!3646626 m!4150515))

(declare-fun m!4150517 () Bool)

(assert (=> b!3646626 m!4150517))

(assert (=> b!3646626 m!4150517))

(declare-fun m!4150519 () Bool)

(assert (=> b!3646626 m!4150519))

(assert (=> b!3646627 m!4150515))

(declare-fun m!4150521 () Bool)

(assert (=> b!3646627 m!4150521))

(assert (=> b!3646627 m!4150521))

(declare-fun m!4150523 () Bool)

(assert (=> b!3646627 m!4150523))

(assert (=> b!3646627 m!4150523))

(declare-fun m!4150525 () Bool)

(assert (=> b!3646627 m!4150525))

(declare-fun m!4150527 () Bool)

(assert (=> b!3646628 m!4150527))

(assert (=> b!3646631 m!4150515))

(assert (=> b!3646631 m!4150521))

(assert (=> b!3646631 m!4150521))

(assert (=> b!3646631 m!4150523))

(declare-fun m!4150529 () Bool)

(assert (=> b!3646625 m!4150529))

(declare-fun m!4150531 () Bool)

(assert (=> d!1071734 m!4150531))

(declare-fun m!4150533 () Bool)

(assert (=> d!1071734 m!4150533))

(declare-fun m!4150535 () Bool)

(assert (=> d!1071734 m!4150535))

(declare-fun m!4150537 () Bool)

(assert (=> d!1071734 m!4150537))

(assert (=> b!3646623 m!4150515))

(declare-fun m!4150539 () Bool)

(assert (=> b!3646623 m!4150539))

(assert (=> b!3646623 m!4150245))

(assert (=> b!3646624 m!4150515))

(assert (=> b!3646624 m!4150521))

(assert (=> b!3646624 m!4150521))

(assert (=> b!3646624 m!4150523))

(assert (=> b!3646624 m!4150523))

(declare-fun m!4150541 () Bool)

(assert (=> b!3646624 m!4150541))

(declare-fun m!4150543 () Bool)

(assert (=> bm!263539 m!4150543))

(assert (=> b!3646629 m!4150515))

(declare-fun m!4150545 () Bool)

(assert (=> b!3646629 m!4150545))

(assert (=> b!3646395 d!1071734))

(declare-fun d!1071800 () Bool)

(declare-fun list!14241 (Conc!11743) List!38566)

(assert (=> d!1071800 (= (list!14240 lt!1263736) (list!14241 (c!630319 lt!1263736)))))

(declare-fun bs!572106 () Bool)

(assert (= bs!572106 d!1071800))

(declare-fun m!4150559 () Bool)

(assert (=> bs!572106 m!4150559))

(assert (=> b!3646395 d!1071800))

(declare-fun d!1071804 () Bool)

(declare-fun lt!1263804 () BalanceConc!23100)

(assert (=> d!1071804 (= (list!14240 lt!1263804) (originalCharacters!6464 token!511))))

(declare-fun dynLambda!16747 (Int TokenValue!5980) BalanceConc!23100)

(assert (=> d!1071804 (= lt!1263804 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (value!184335 token!511)))))

(assert (=> d!1071804 (= (charsOf!3764 token!511) lt!1263804)))

(declare-fun b_lambda!108123 () Bool)

(assert (=> (not b_lambda!108123) (not d!1071804)))

(declare-fun tb!210277 () Bool)

(declare-fun t!297088 () Bool)

(assert (=> (and b!3646393 (= (toChars!7901 (transformation!5750 rule!403)) (toChars!7901 (transformation!5750 (rule!8542 token!511)))) t!297088) tb!210277))

(declare-fun b!3646660 () Bool)

(declare-fun e!2257559 () Bool)

(declare-fun tp!1111981 () Bool)

(declare-fun inv!51889 (Conc!11743) Bool)

(assert (=> b!3646660 (= e!2257559 (and (inv!51889 (c!630319 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (value!184335 token!511)))) tp!1111981))))

(declare-fun result!256080 () Bool)

(declare-fun inv!51890 (BalanceConc!23100) Bool)

(assert (=> tb!210277 (= result!256080 (and (inv!51890 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (value!184335 token!511))) e!2257559))))

(assert (= tb!210277 b!3646660))

(declare-fun m!4150573 () Bool)

(assert (=> b!3646660 m!4150573))

(declare-fun m!4150575 () Bool)

(assert (=> tb!210277 m!4150575))

(assert (=> d!1071804 t!297088))

(declare-fun b_and!269339 () Bool)

(assert (= b_and!269309 (and (=> t!297088 result!256080) b_and!269339)))

(declare-fun t!297090 () Bool)

(declare-fun tb!210279 () Bool)

(assert (=> (and b!3646407 (= (toChars!7901 (transformation!5750 (rule!8542 token!511))) (toChars!7901 (transformation!5750 (rule!8542 token!511)))) t!297090) tb!210279))

(declare-fun result!256084 () Bool)

(assert (= result!256084 result!256080))

(assert (=> d!1071804 t!297090))

(declare-fun b_and!269341 () Bool)

(assert (= b_and!269313 (and (=> t!297090 result!256084) b_and!269341)))

(declare-fun t!297092 () Bool)

(declare-fun tb!210281 () Bool)

(assert (=> (and b!3646388 (= (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toChars!7901 (transformation!5750 (rule!8542 token!511)))) t!297092) tb!210281))

(declare-fun result!256086 () Bool)

(assert (= result!256086 result!256080))

(assert (=> d!1071804 t!297092))

(declare-fun b_and!269343 () Bool)

(assert (= b_and!269317 (and (=> t!297092 result!256086) b_and!269343)))

(declare-fun t!297094 () Bool)

(declare-fun tb!210283 () Bool)

(assert (=> (and b!3646415 (= (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toChars!7901 (transformation!5750 (rule!8542 token!511)))) t!297094) tb!210283))

(declare-fun result!256088 () Bool)

(assert (= result!256088 result!256080))

(assert (=> d!1071804 t!297094))

(declare-fun b_and!269345 () Bool)

(assert (= b_and!269321 (and (=> t!297094 result!256088) b_and!269345)))

(declare-fun m!4150577 () Bool)

(assert (=> d!1071804 m!4150577))

(declare-fun m!4150579 () Bool)

(assert (=> d!1071804 m!4150579))

(assert (=> b!3646395 d!1071804))

(declare-fun b!3646713 () Bool)

(declare-fun e!2257592 () Bool)

(declare-fun lt!1263823 () Bool)

(assert (=> b!3646713 (= e!2257592 (not lt!1263823))))

(declare-fun b!3646714 () Bool)

(declare-fun e!2257594 () Bool)

(assert (=> b!3646714 (= e!2257594 e!2257592)))

(declare-fun c!630382 () Bool)

(assert (=> b!3646714 (= c!630382 ((_ is EmptyLang!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3646716 () Bool)

(declare-fun res!1478959 () Bool)

(declare-fun e!2257590 () Bool)

(assert (=> b!3646716 (=> (not res!1478959) (not e!2257590))))

(declare-fun tail!5649 (List!38566) List!38566)

(assert (=> b!3646716 (= res!1478959 (isEmpty!22773 (tail!5649 lt!1263711)))))

(declare-fun b!3646718 () Bool)

(declare-fun e!2257589 () Bool)

(declare-fun derivativeStep!3200 (Regex!10509 C!21204) Regex!10509)

(assert (=> b!3646718 (= e!2257589 (matchR!5078 (derivativeStep!3200 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) (head!7758 lt!1263711)) (tail!5649 lt!1263711)))))

(declare-fun b!3646720 () Bool)

(declare-fun e!2257591 () Bool)

(assert (=> b!3646720 (= e!2257591 (not (= (head!7758 lt!1263711) (c!630318 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))))

(declare-fun b!3646722 () Bool)

(declare-fun e!2257593 () Bool)

(assert (=> b!3646722 (= e!2257593 e!2257591)))

(declare-fun res!1478955 () Bool)

(assert (=> b!3646722 (=> res!1478955 e!2257591)))

(declare-fun call!263547 () Bool)

(assert (=> b!3646722 (= res!1478955 call!263547)))

(declare-fun d!1071810 () Bool)

(assert (=> d!1071810 e!2257594))

(declare-fun c!630381 () Bool)

(assert (=> d!1071810 (= c!630381 ((_ is EmptyExpr!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(assert (=> d!1071810 (= lt!1263823 e!2257589)))

(declare-fun c!630380 () Bool)

(assert (=> d!1071810 (= c!630380 (isEmpty!22773 lt!1263711))))

(declare-fun validRegex!4813 (Regex!10509) Bool)

(assert (=> d!1071810 (validRegex!4813 (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))

(assert (=> d!1071810 (= (matchR!5078 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711) lt!1263823)))

(declare-fun b!3646723 () Bool)

(declare-fun res!1478957 () Bool)

(declare-fun e!2257595 () Bool)

(assert (=> b!3646723 (=> res!1478957 e!2257595)))

(assert (=> b!3646723 (= res!1478957 e!2257590)))

(declare-fun res!1478962 () Bool)

(assert (=> b!3646723 (=> (not res!1478962) (not e!2257590))))

(assert (=> b!3646723 (= res!1478962 lt!1263823)))

(declare-fun b!3646724 () Bool)

(assert (=> b!3646724 (= e!2257595 e!2257593)))

(declare-fun res!1478954 () Bool)

(assert (=> b!3646724 (=> (not res!1478954) (not e!2257593))))

(assert (=> b!3646724 (= res!1478954 (not lt!1263823))))

(declare-fun b!3646725 () Bool)

(assert (=> b!3646725 (= e!2257590 (= (head!7758 lt!1263711) (c!630318 (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))))

(declare-fun b!3646726 () Bool)

(assert (=> b!3646726 (= e!2257594 (= lt!1263823 call!263547))))

(declare-fun b!3646727 () Bool)

(declare-fun res!1478963 () Bool)

(assert (=> b!3646727 (=> (not res!1478963) (not e!2257590))))

(assert (=> b!3646727 (= res!1478963 (not call!263547))))

(declare-fun b!3646728 () Bool)

(declare-fun res!1478956 () Bool)

(assert (=> b!3646728 (=> res!1478956 e!2257591)))

(assert (=> b!3646728 (= res!1478956 (not (isEmpty!22773 (tail!5649 lt!1263711))))))

(declare-fun b!3646729 () Bool)

(declare-fun nullable!3651 (Regex!10509) Bool)

(assert (=> b!3646729 (= e!2257589 (nullable!3651 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3646730 () Bool)

(declare-fun res!1478953 () Bool)

(assert (=> b!3646730 (=> res!1478953 e!2257595)))

(assert (=> b!3646730 (= res!1478953 (not ((_ is ElementMatch!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))))

(assert (=> b!3646730 (= e!2257592 e!2257595)))

(declare-fun bm!263542 () Bool)

(assert (=> bm!263542 (= call!263547 (isEmpty!22773 lt!1263711))))

(assert (= (and d!1071810 c!630380) b!3646729))

(assert (= (and d!1071810 (not c!630380)) b!3646718))

(assert (= (and d!1071810 c!630381) b!3646726))

(assert (= (and d!1071810 (not c!630381)) b!3646714))

(assert (= (and b!3646714 c!630382) b!3646713))

(assert (= (and b!3646714 (not c!630382)) b!3646730))

(assert (= (and b!3646730 (not res!1478953)) b!3646723))

(assert (= (and b!3646723 res!1478962) b!3646727))

(assert (= (and b!3646727 res!1478963) b!3646716))

(assert (= (and b!3646716 res!1478959) b!3646725))

(assert (= (and b!3646723 (not res!1478957)) b!3646724))

(assert (= (and b!3646724 res!1478954) b!3646722))

(assert (= (and b!3646722 (not res!1478955)) b!3646728))

(assert (= (and b!3646728 (not res!1478956)) b!3646720))

(assert (= (or b!3646726 b!3646722 b!3646727) bm!263542))

(declare-fun m!4150627 () Bool)

(assert (=> b!3646716 m!4150627))

(assert (=> b!3646716 m!4150627))

(declare-fun m!4150629 () Bool)

(assert (=> b!3646716 m!4150629))

(declare-fun m!4150631 () Bool)

(assert (=> bm!263542 m!4150631))

(assert (=> b!3646718 m!4150317))

(assert (=> b!3646718 m!4150317))

(declare-fun m!4150633 () Bool)

(assert (=> b!3646718 m!4150633))

(assert (=> b!3646718 m!4150627))

(assert (=> b!3646718 m!4150633))

(assert (=> b!3646718 m!4150627))

(declare-fun m!4150635 () Bool)

(assert (=> b!3646718 m!4150635))

(assert (=> b!3646720 m!4150317))

(declare-fun m!4150637 () Bool)

(assert (=> b!3646729 m!4150637))

(assert (=> d!1071810 m!4150631))

(declare-fun m!4150639 () Bool)

(assert (=> d!1071810 m!4150639))

(assert (=> b!3646728 m!4150627))

(assert (=> b!3646728 m!4150627))

(assert (=> b!3646728 m!4150629))

(assert (=> b!3646725 m!4150317))

(assert (=> b!3646396 d!1071810))

(declare-fun d!1071826 () Bool)

(assert (=> d!1071826 (not (matchR!5078 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711))))

(declare-fun lt!1263828 () Unit!55344)

(declare-fun choose!21469 (Regex!10509 List!38566 C!21204) Unit!55344)

(assert (=> d!1071826 (= lt!1263828 (choose!21469 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711 lt!1263710))))

(assert (=> d!1071826 (validRegex!4813 (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))

(assert (=> d!1071826 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!698 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263711 lt!1263710) lt!1263828)))

(declare-fun bs!572110 () Bool)

(assert (= bs!572110 d!1071826))

(assert (=> bs!572110 m!4150209))

(declare-fun m!4150641 () Bool)

(assert (=> bs!572110 m!4150641))

(assert (=> bs!572110 m!4150639))

(assert (=> bm!263512 d!1071826))

(declare-fun d!1071828 () Bool)

(assert (=> d!1071828 (not (contains!7565 (usedCharacters!962 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263710))))

(declare-fun lt!1263831 () Unit!55344)

(declare-fun choose!21470 (LexerInterface!5339 List!38567 List!38567 Rule!11300 Rule!11300 C!21204) Unit!55344)

(assert (=> d!1071828 (= lt!1263831 (choose!21470 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8542 (_1!22290 lt!1263731)) lt!1263710))))

(assert (=> d!1071828 (rulesInvariant!4736 thiss!23823 rules!3307)))

(assert (=> d!1071828 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!278 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8542 (_1!22290 lt!1263731)) lt!1263710) lt!1263831)))

(declare-fun bs!572111 () Bool)

(assert (= bs!572111 d!1071828))

(assert (=> bs!572111 m!4150333))

(assert (=> bs!572111 m!4150333))

(declare-fun m!4150643 () Bool)

(assert (=> bs!572111 m!4150643))

(declare-fun m!4150645 () Bool)

(assert (=> bs!572111 m!4150645))

(assert (=> bs!572111 m!4150283))

(assert (=> b!3646416 d!1071828))

(declare-fun d!1071830 () Bool)

(assert (=> d!1071830 (= (inv!51882 (tag!6508 (h!43863 rules!3307))) (= (mod (str.len (value!184334 (tag!6508 (h!43863 rules!3307)))) 2) 0))))

(assert (=> b!3646397 d!1071830))

(declare-fun d!1071832 () Bool)

(declare-fun res!1478969 () Bool)

(declare-fun e!2257603 () Bool)

(assert (=> d!1071832 (=> (not res!1478969) (not e!2257603))))

(declare-fun semiInverseModEq!2451 (Int Int) Bool)

(assert (=> d!1071832 (= res!1478969 (semiInverseModEq!2451 (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toValue!8042 (transformation!5750 (h!43863 rules!3307)))))))

(assert (=> d!1071832 (= (inv!51885 (transformation!5750 (h!43863 rules!3307))) e!2257603)))

(declare-fun b!3646737 () Bool)

(declare-fun equivClasses!2350 (Int Int) Bool)

(assert (=> b!3646737 (= e!2257603 (equivClasses!2350 (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toValue!8042 (transformation!5750 (h!43863 rules!3307)))))))

(assert (= (and d!1071832 res!1478969) b!3646737))

(declare-fun m!4150647 () Bool)

(assert (=> d!1071832 m!4150647))

(declare-fun m!4150649 () Bool)

(assert (=> b!3646737 m!4150649))

(assert (=> b!3646397 d!1071832))

(declare-fun b!3646748 () Bool)

(declare-fun res!1478972 () Bool)

(declare-fun e!2257611 () Bool)

(assert (=> b!3646748 (=> res!1478972 e!2257611)))

(assert (=> b!3646748 (= res!1478972 (not ((_ is IntegerValue!17942) (value!184335 token!511))))))

(declare-fun e!2257612 () Bool)

(assert (=> b!3646748 (= e!2257612 e!2257611)))

(declare-fun b!3646749 () Bool)

(declare-fun e!2257610 () Bool)

(declare-fun inv!16 (TokenValue!5980) Bool)

(assert (=> b!3646749 (= e!2257610 (inv!16 (value!184335 token!511)))))

(declare-fun b!3646751 () Bool)

(declare-fun inv!17 (TokenValue!5980) Bool)

(assert (=> b!3646751 (= e!2257612 (inv!17 (value!184335 token!511)))))

(declare-fun b!3646752 () Bool)

(assert (=> b!3646752 (= e!2257610 e!2257612)))

(declare-fun c!630390 () Bool)

(assert (=> b!3646752 (= c!630390 ((_ is IntegerValue!17941) (value!184335 token!511)))))

(declare-fun d!1071834 () Bool)

(declare-fun c!630391 () Bool)

(assert (=> d!1071834 (= c!630391 ((_ is IntegerValue!17940) (value!184335 token!511)))))

(assert (=> d!1071834 (= (inv!21 (value!184335 token!511)) e!2257610)))

(declare-fun b!3646750 () Bool)

(declare-fun inv!15 (TokenValue!5980) Bool)

(assert (=> b!3646750 (= e!2257611 (inv!15 (value!184335 token!511)))))

(assert (= (and d!1071834 c!630391) b!3646749))

(assert (= (and d!1071834 (not c!630391)) b!3646752))

(assert (= (and b!3646752 c!630390) b!3646751))

(assert (= (and b!3646752 (not c!630390)) b!3646748))

(assert (= (and b!3646748 (not res!1478972)) b!3646750))

(declare-fun m!4150651 () Bool)

(assert (=> b!3646749 m!4150651))

(declare-fun m!4150653 () Bool)

(assert (=> b!3646751 m!4150653))

(declare-fun m!4150655 () Bool)

(assert (=> b!3646750 m!4150655))

(assert (=> b!3646417 d!1071834))

(declare-fun d!1071836 () Bool)

(assert (=> d!1071836 (= (inv!51882 (tag!6508 anOtherTypeRule!33)) (= (mod (str.len (value!184334 (tag!6508 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3646418 d!1071836))

(declare-fun d!1071838 () Bool)

(declare-fun res!1478973 () Bool)

(declare-fun e!2257613 () Bool)

(assert (=> d!1071838 (=> (not res!1478973) (not e!2257613))))

(assert (=> d!1071838 (= res!1478973 (semiInverseModEq!2451 (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toValue!8042 (transformation!5750 anOtherTypeRule!33))))))

(assert (=> d!1071838 (= (inv!51885 (transformation!5750 anOtherTypeRule!33)) e!2257613)))

(declare-fun b!3646753 () Bool)

(assert (=> b!3646753 (= e!2257613 (equivClasses!2350 (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toValue!8042 (transformation!5750 anOtherTypeRule!33))))))

(assert (= (and d!1071838 res!1478973) b!3646753))

(declare-fun m!4150657 () Bool)

(assert (=> d!1071838 m!4150657))

(declare-fun m!4150659 () Bool)

(assert (=> b!3646753 m!4150659))

(assert (=> b!3646418 d!1071838))

(declare-fun b!3646754 () Bool)

(declare-fun e!2257617 () Bool)

(declare-fun lt!1263832 () Bool)

(assert (=> b!3646754 (= e!2257617 (not lt!1263832))))

(declare-fun b!3646755 () Bool)

(declare-fun e!2257619 () Bool)

(assert (=> b!3646755 (= e!2257619 e!2257617)))

(declare-fun c!630394 () Bool)

(assert (=> b!3646755 (= c!630394 ((_ is EmptyLang!10509) (regex!5750 rule!403)))))

(declare-fun b!3646756 () Bool)

(declare-fun res!1478979 () Bool)

(declare-fun e!2257615 () Bool)

(assert (=> b!3646756 (=> (not res!1478979) (not e!2257615))))

(assert (=> b!3646756 (= res!1478979 (isEmpty!22773 (tail!5649 lt!1263730)))))

(declare-fun b!3646757 () Bool)

(declare-fun e!2257614 () Bool)

(assert (=> b!3646757 (= e!2257614 (matchR!5078 (derivativeStep!3200 (regex!5750 rule!403) (head!7758 lt!1263730)) (tail!5649 lt!1263730)))))

(declare-fun b!3646758 () Bool)

(declare-fun e!2257616 () Bool)

(assert (=> b!3646758 (= e!2257616 (not (= (head!7758 lt!1263730) (c!630318 (regex!5750 rule!403)))))))

(declare-fun b!3646759 () Bool)

(declare-fun e!2257618 () Bool)

(assert (=> b!3646759 (= e!2257618 e!2257616)))

(declare-fun res!1478976 () Bool)

(assert (=> b!3646759 (=> res!1478976 e!2257616)))

(declare-fun call!263548 () Bool)

(assert (=> b!3646759 (= res!1478976 call!263548)))

(declare-fun d!1071840 () Bool)

(assert (=> d!1071840 e!2257619))

(declare-fun c!630393 () Bool)

(assert (=> d!1071840 (= c!630393 ((_ is EmptyExpr!10509) (regex!5750 rule!403)))))

(assert (=> d!1071840 (= lt!1263832 e!2257614)))

(declare-fun c!630392 () Bool)

(assert (=> d!1071840 (= c!630392 (isEmpty!22773 lt!1263730))))

(assert (=> d!1071840 (validRegex!4813 (regex!5750 rule!403))))

(assert (=> d!1071840 (= (matchR!5078 (regex!5750 rule!403) lt!1263730) lt!1263832)))

(declare-fun b!3646760 () Bool)

(declare-fun res!1478978 () Bool)

(declare-fun e!2257620 () Bool)

(assert (=> b!3646760 (=> res!1478978 e!2257620)))

(assert (=> b!3646760 (= res!1478978 e!2257615)))

(declare-fun res!1478980 () Bool)

(assert (=> b!3646760 (=> (not res!1478980) (not e!2257615))))

(assert (=> b!3646760 (= res!1478980 lt!1263832)))

(declare-fun b!3646761 () Bool)

(assert (=> b!3646761 (= e!2257620 e!2257618)))

(declare-fun res!1478975 () Bool)

(assert (=> b!3646761 (=> (not res!1478975) (not e!2257618))))

(assert (=> b!3646761 (= res!1478975 (not lt!1263832))))

(declare-fun b!3646762 () Bool)

(assert (=> b!3646762 (= e!2257615 (= (head!7758 lt!1263730) (c!630318 (regex!5750 rule!403))))))

(declare-fun b!3646763 () Bool)

(assert (=> b!3646763 (= e!2257619 (= lt!1263832 call!263548))))

(declare-fun b!3646764 () Bool)

(declare-fun res!1478981 () Bool)

(assert (=> b!3646764 (=> (not res!1478981) (not e!2257615))))

(assert (=> b!3646764 (= res!1478981 (not call!263548))))

(declare-fun b!3646765 () Bool)

(declare-fun res!1478977 () Bool)

(assert (=> b!3646765 (=> res!1478977 e!2257616)))

(assert (=> b!3646765 (= res!1478977 (not (isEmpty!22773 (tail!5649 lt!1263730))))))

(declare-fun b!3646766 () Bool)

(assert (=> b!3646766 (= e!2257614 (nullable!3651 (regex!5750 rule!403)))))

(declare-fun b!3646767 () Bool)

(declare-fun res!1478974 () Bool)

(assert (=> b!3646767 (=> res!1478974 e!2257620)))

(assert (=> b!3646767 (= res!1478974 (not ((_ is ElementMatch!10509) (regex!5750 rule!403))))))

(assert (=> b!3646767 (= e!2257617 e!2257620)))

(declare-fun bm!263543 () Bool)

(assert (=> bm!263543 (= call!263548 (isEmpty!22773 lt!1263730))))

(assert (= (and d!1071840 c!630392) b!3646766))

(assert (= (and d!1071840 (not c!630392)) b!3646757))

(assert (= (and d!1071840 c!630393) b!3646763))

(assert (= (and d!1071840 (not c!630393)) b!3646755))

(assert (= (and b!3646755 c!630394) b!3646754))

(assert (= (and b!3646755 (not c!630394)) b!3646767))

(assert (= (and b!3646767 (not res!1478974)) b!3646760))

(assert (= (and b!3646760 res!1478980) b!3646764))

(assert (= (and b!3646764 res!1478981) b!3646756))

(assert (= (and b!3646756 res!1478979) b!3646762))

(assert (= (and b!3646760 (not res!1478978)) b!3646761))

(assert (= (and b!3646761 res!1478975) b!3646759))

(assert (= (and b!3646759 (not res!1478976)) b!3646765))

(assert (= (and b!3646765 (not res!1478977)) b!3646758))

(assert (= (or b!3646763 b!3646759 b!3646764) bm!263543))

(declare-fun m!4150661 () Bool)

(assert (=> b!3646756 m!4150661))

(assert (=> b!3646756 m!4150661))

(declare-fun m!4150663 () Bool)

(assert (=> b!3646756 m!4150663))

(declare-fun m!4150665 () Bool)

(assert (=> bm!263543 m!4150665))

(declare-fun m!4150667 () Bool)

(assert (=> b!3646757 m!4150667))

(assert (=> b!3646757 m!4150667))

(declare-fun m!4150669 () Bool)

(assert (=> b!3646757 m!4150669))

(assert (=> b!3646757 m!4150661))

(assert (=> b!3646757 m!4150669))

(assert (=> b!3646757 m!4150661))

(declare-fun m!4150671 () Bool)

(assert (=> b!3646757 m!4150671))

(assert (=> b!3646758 m!4150667))

(declare-fun m!4150673 () Bool)

(assert (=> b!3646766 m!4150673))

(assert (=> d!1071840 m!4150665))

(declare-fun m!4150675 () Bool)

(assert (=> d!1071840 m!4150675))

(assert (=> b!3646765 m!4150661))

(assert (=> b!3646765 m!4150661))

(assert (=> b!3646765 m!4150663))

(assert (=> b!3646762 m!4150667))

(assert (=> b!3646419 d!1071840))

(declare-fun d!1071842 () Bool)

(declare-fun res!1478986 () Bool)

(declare-fun e!2257623 () Bool)

(assert (=> d!1071842 (=> (not res!1478986) (not e!2257623))))

(assert (=> d!1071842 (= res!1478986 (validRegex!4813 (regex!5750 rule!403)))))

(assert (=> d!1071842 (= (ruleValid!2014 thiss!23823 rule!403) e!2257623)))

(declare-fun b!3646772 () Bool)

(declare-fun res!1478987 () Bool)

(assert (=> b!3646772 (=> (not res!1478987) (not e!2257623))))

(assert (=> b!3646772 (= res!1478987 (not (nullable!3651 (regex!5750 rule!403))))))

(declare-fun b!3646773 () Bool)

(assert (=> b!3646773 (= e!2257623 (not (= (tag!6508 rule!403) (String!43235 ""))))))

(assert (= (and d!1071842 res!1478986) b!3646772))

(assert (= (and b!3646772 res!1478987) b!3646773))

(assert (=> d!1071842 m!4150675))

(assert (=> b!3646772 m!4150673))

(assert (=> b!3646419 d!1071842))

(declare-fun d!1071844 () Bool)

(assert (=> d!1071844 (ruleValid!2014 thiss!23823 rule!403)))

(declare-fun lt!1263835 () Unit!55344)

(declare-fun choose!21471 (LexerInterface!5339 Rule!11300 List!38567) Unit!55344)

(assert (=> d!1071844 (= lt!1263835 (choose!21471 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1071844 (contains!7566 rules!3307 rule!403)))

(assert (=> d!1071844 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1168 thiss!23823 rule!403 rules!3307) lt!1263835)))

(declare-fun bs!572112 () Bool)

(assert (= bs!572112 d!1071844))

(assert (=> bs!572112 m!4150255))

(declare-fun m!4150677 () Bool)

(assert (=> bs!572112 m!4150677))

(assert (=> bs!572112 m!4150281))

(assert (=> b!3646419 d!1071844))

(declare-fun d!1071846 () Bool)

(assert (=> d!1071846 (= (get!12614 lt!1263726) (v!37976 lt!1263726))))

(assert (=> b!3646398 d!1071846))

(declare-fun d!1071848 () Bool)

(declare-fun dynLambda!16748 (Int BalanceConc!23100) TokenValue!5980)

(assert (=> d!1071848 (= (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700))))

(declare-fun b_lambda!108125 () Bool)

(assert (=> (not b_lambda!108125) (not d!1071848)))

(declare-fun tb!210285 () Bool)

(declare-fun t!297096 () Bool)

(assert (=> (and b!3646393 (= (toValue!8042 (transformation!5750 rule!403)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297096) tb!210285))

(declare-fun result!256090 () Bool)

(assert (=> tb!210285 (= result!256090 (inv!21 (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700)))))

(declare-fun m!4150679 () Bool)

(assert (=> tb!210285 m!4150679))

(assert (=> d!1071848 t!297096))

(declare-fun b_and!269347 () Bool)

(assert (= b_and!269307 (and (=> t!297096 result!256090) b_and!269347)))

(declare-fun tb!210287 () Bool)

(declare-fun t!297098 () Bool)

(assert (=> (and b!3646407 (= (toValue!8042 (transformation!5750 (rule!8542 token!511))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297098) tb!210287))

(declare-fun result!256094 () Bool)

(assert (= result!256094 result!256090))

(assert (=> d!1071848 t!297098))

(declare-fun b_and!269349 () Bool)

(assert (= b_and!269311 (and (=> t!297098 result!256094) b_and!269349)))

(declare-fun t!297100 () Bool)

(declare-fun tb!210289 () Bool)

(assert (=> (and b!3646388 (= (toValue!8042 (transformation!5750 anOtherTypeRule!33)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297100) tb!210289))

(declare-fun result!256096 () Bool)

(assert (= result!256096 result!256090))

(assert (=> d!1071848 t!297100))

(declare-fun b_and!269351 () Bool)

(assert (= b_and!269315 (and (=> t!297100 result!256096) b_and!269351)))

(declare-fun t!297102 () Bool)

(declare-fun tb!210291 () Bool)

(assert (=> (and b!3646415 (= (toValue!8042 (transformation!5750 (h!43863 rules!3307))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297102) tb!210291))

(declare-fun result!256098 () Bool)

(assert (= result!256098 result!256090))

(assert (=> d!1071848 t!297102))

(declare-fun b_and!269353 () Bool)

(assert (= b_and!269319 (and (=> t!297102 result!256098) b_and!269353)))

(declare-fun m!4150681 () Bool)

(assert (=> d!1071848 m!4150681))

(assert (=> b!3646400 d!1071848))

(declare-fun d!1071850 () Bool)

(assert (=> d!1071850 (= (size!29347 (_1!22290 lt!1263731)) (size!29349 (originalCharacters!6464 (_1!22290 lt!1263731))))))

(declare-fun Unit!55352 () Unit!55344)

(assert (=> d!1071850 (= (lemmaCharactersSize!795 (_1!22290 lt!1263731)) Unit!55352)))

(declare-fun bs!572113 () Bool)

(assert (= bs!572113 d!1071850))

(declare-fun m!4150683 () Bool)

(assert (=> bs!572113 m!4150683))

(assert (=> b!3646400 d!1071850))

(declare-fun d!1071852 () Bool)

(declare-fun fromListB!1986 (List!38566) BalanceConc!23100)

(assert (=> d!1071852 (= (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731))) (fromListB!1986 (originalCharacters!6464 (_1!22290 lt!1263731))))))

(declare-fun bs!572114 () Bool)

(assert (= bs!572114 d!1071852))

(declare-fun m!4150685 () Bool)

(assert (=> bs!572114 m!4150685))

(assert (=> b!3646400 d!1071852))

(declare-fun d!1071854 () Bool)

(declare-fun lt!1263838 () Int)

(assert (=> d!1071854 (= lt!1263838 (size!29349 (list!14240 lt!1263700)))))

(declare-fun size!29351 (Conc!11743) Int)

(assert (=> d!1071854 (= lt!1263838 (size!29351 (c!630319 lt!1263700)))))

(assert (=> d!1071854 (= (size!29348 lt!1263700) lt!1263838)))

(declare-fun bs!572115 () Bool)

(assert (= bs!572115 d!1071854))

(assert (=> bs!572115 m!4150291))

(assert (=> bs!572115 m!4150291))

(declare-fun m!4150687 () Bool)

(assert (=> bs!572115 m!4150687))

(declare-fun m!4150689 () Bool)

(assert (=> bs!572115 m!4150689))

(assert (=> b!3646400 d!1071854))

(declare-fun b!3646800 () Bool)

(declare-fun e!2257643 () Bool)

(assert (=> b!3646800 (= e!2257643 true)))

(declare-fun d!1071856 () Bool)

(assert (=> d!1071856 e!2257643))

(assert (= d!1071856 b!3646800))

(declare-fun lambda!124442 () Int)

(declare-fun order!21157 () Int)

(declare-fun order!21155 () Int)

(declare-fun dynLambda!16749 (Int Int) Int)

(declare-fun dynLambda!16750 (Int Int) Int)

(assert (=> b!3646800 (< (dynLambda!16749 order!21155 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) (dynLambda!16750 order!21157 lambda!124442))))

(declare-fun order!21159 () Int)

(declare-fun dynLambda!16751 (Int Int) Int)

(assert (=> b!3646800 (< (dynLambda!16751 order!21159 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) (dynLambda!16750 order!21157 lambda!124442))))

(assert (=> d!1071856 (= (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731)))))))

(declare-fun lt!1263895 () Unit!55344)

(declare-fun Forall2of!365 (Int BalanceConc!23100 BalanceConc!23100) Unit!55344)

(assert (=> d!1071856 (= lt!1263895 (Forall2of!365 lambda!124442 lt!1263700 (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731)))))))

(assert (=> d!1071856 (= (list!14240 lt!1263700) (list!14240 (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731)))))))

(assert (=> d!1071856 (= (lemmaEqSameImage!933 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700 (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731)))) lt!1263895)))

(declare-fun b_lambda!108129 () Bool)

(assert (=> (not b_lambda!108129) (not d!1071856)))

(assert (=> d!1071856 t!297096))

(declare-fun b_and!269363 () Bool)

(assert (= b_and!269347 (and (=> t!297096 result!256090) b_and!269363)))

(assert (=> d!1071856 t!297098))

(declare-fun b_and!269365 () Bool)

(assert (= b_and!269349 (and (=> t!297098 result!256094) b_and!269365)))

(assert (=> d!1071856 t!297100))

(declare-fun b_and!269367 () Bool)

(assert (= b_and!269351 (and (=> t!297100 result!256096) b_and!269367)))

(assert (=> d!1071856 t!297102))

(declare-fun b_and!269369 () Bool)

(assert (= b_and!269353 (and (=> t!297102 result!256098) b_and!269369)))

(declare-fun b_lambda!108131 () Bool)

(assert (=> (not b_lambda!108131) (not d!1071856)))

(declare-fun tb!210301 () Bool)

(declare-fun t!297112 () Bool)

(assert (=> (and b!3646393 (= (toValue!8042 (transformation!5750 rule!403)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297112) tb!210301))

(declare-fun result!256110 () Bool)

(assert (=> tb!210301 (= result!256110 (inv!21 (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (seqFromList!4299 (originalCharacters!6464 (_1!22290 lt!1263731))))))))

(declare-fun m!4150749 () Bool)

(assert (=> tb!210301 m!4150749))

(assert (=> d!1071856 t!297112))

(declare-fun b_and!269371 () Bool)

(assert (= b_and!269363 (and (=> t!297112 result!256110) b_and!269371)))

(declare-fun tb!210303 () Bool)

(declare-fun t!297114 () Bool)

(assert (=> (and b!3646407 (= (toValue!8042 (transformation!5750 (rule!8542 token!511))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297114) tb!210303))

(declare-fun result!256112 () Bool)

(assert (= result!256112 result!256110))

(assert (=> d!1071856 t!297114))

(declare-fun b_and!269373 () Bool)

(assert (= b_and!269365 (and (=> t!297114 result!256112) b_and!269373)))

(declare-fun tb!210305 () Bool)

(declare-fun t!297116 () Bool)

(assert (=> (and b!3646388 (= (toValue!8042 (transformation!5750 anOtherTypeRule!33)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297116) tb!210305))

(declare-fun result!256114 () Bool)

(assert (= result!256114 result!256110))

(assert (=> d!1071856 t!297116))

(declare-fun b_and!269375 () Bool)

(assert (= b_and!269367 (and (=> t!297116 result!256114) b_and!269375)))

(declare-fun t!297118 () Bool)

(declare-fun tb!210307 () Bool)

(assert (=> (and b!3646415 (= (toValue!8042 (transformation!5750 (h!43863 rules!3307))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297118) tb!210307))

(declare-fun result!256116 () Bool)

(assert (= result!256116 result!256110))

(assert (=> d!1071856 t!297118))

(declare-fun b_and!269377 () Bool)

(assert (= b_and!269369 (and (=> t!297118 result!256116) b_and!269377)))

(assert (=> d!1071856 m!4150271))

(declare-fun m!4150751 () Bool)

(assert (=> d!1071856 m!4150751))

(assert (=> d!1071856 m!4150291))

(assert (=> d!1071856 m!4150271))

(declare-fun m!4150753 () Bool)

(assert (=> d!1071856 m!4150753))

(assert (=> d!1071856 m!4150271))

(declare-fun m!4150755 () Bool)

(assert (=> d!1071856 m!4150755))

(assert (=> d!1071856 m!4150681))

(assert (=> b!3646400 d!1071856))

(declare-fun b!3646805 () Bool)

(declare-fun e!2257647 () Bool)

(assert (=> b!3646805 (= e!2257647 true)))

(declare-fun d!1071866 () Bool)

(assert (=> d!1071866 e!2257647))

(assert (= d!1071866 b!3646805))

(declare-fun lambda!124445 () Int)

(declare-fun order!21161 () Int)

(declare-fun dynLambda!16752 (Int Int) Int)

(assert (=> b!3646805 (< (dynLambda!16749 order!21155 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) (dynLambda!16752 order!21161 lambda!124445))))

(assert (=> b!3646805 (< (dynLambda!16751 order!21159 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) (dynLambda!16752 order!21161 lambda!124445))))

(assert (=> d!1071866 (= (list!14240 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700))) (list!14240 lt!1263700))))

(declare-fun lt!1263898 () Unit!55344)

(declare-fun ForallOf!707 (Int BalanceConc!23100) Unit!55344)

(assert (=> d!1071866 (= lt!1263898 (ForallOf!707 lambda!124445 lt!1263700))))

(assert (=> d!1071866 (= (lemmaSemiInverse!1499 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263700) lt!1263898)))

(declare-fun b_lambda!108133 () Bool)

(assert (=> (not b_lambda!108133) (not d!1071866)))

(declare-fun tb!210309 () Bool)

(declare-fun t!297120 () Bool)

(assert (=> (and b!3646393 (= (toChars!7901 (transformation!5750 rule!403)) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297120) tb!210309))

(declare-fun tp!1111982 () Bool)

(declare-fun b!3646806 () Bool)

(declare-fun e!2257648 () Bool)

(assert (=> b!3646806 (= e!2257648 (and (inv!51889 (c!630319 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700)))) tp!1111982))))

(declare-fun result!256118 () Bool)

(assert (=> tb!210309 (= result!256118 (and (inv!51890 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263700))) e!2257648))))

(assert (= tb!210309 b!3646806))

(declare-fun m!4150757 () Bool)

(assert (=> b!3646806 m!4150757))

(declare-fun m!4150759 () Bool)

(assert (=> tb!210309 m!4150759))

(assert (=> d!1071866 t!297120))

(declare-fun b_and!269379 () Bool)

(assert (= b_and!269339 (and (=> t!297120 result!256118) b_and!269379)))

(declare-fun t!297122 () Bool)

(declare-fun tb!210311 () Bool)

(assert (=> (and b!3646407 (= (toChars!7901 (transformation!5750 (rule!8542 token!511))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297122) tb!210311))

(declare-fun result!256120 () Bool)

(assert (= result!256120 result!256118))

(assert (=> d!1071866 t!297122))

(declare-fun b_and!269381 () Bool)

(assert (= b_and!269341 (and (=> t!297122 result!256120) b_and!269381)))

(declare-fun t!297124 () Bool)

(declare-fun tb!210313 () Bool)

(assert (=> (and b!3646388 (= (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297124) tb!210313))

(declare-fun result!256122 () Bool)

(assert (= result!256122 result!256118))

(assert (=> d!1071866 t!297124))

(declare-fun b_and!269383 () Bool)

(assert (= b_and!269343 (and (=> t!297124 result!256122) b_and!269383)))

(declare-fun tb!210315 () Bool)

(declare-fun t!297126 () Bool)

(assert (=> (and b!3646415 (= (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297126) tb!210315))

(declare-fun result!256124 () Bool)

(assert (= result!256124 result!256118))

(assert (=> d!1071866 t!297126))

(declare-fun b_and!269385 () Bool)

(assert (= b_and!269345 (and (=> t!297126 result!256124) b_and!269385)))

(declare-fun b_lambda!108135 () Bool)

(assert (=> (not b_lambda!108135) (not d!1071866)))

(assert (=> d!1071866 t!297096))

(declare-fun b_and!269387 () Bool)

(assert (= b_and!269371 (and (=> t!297096 result!256090) b_and!269387)))

(assert (=> d!1071866 t!297098))

(declare-fun b_and!269389 () Bool)

(assert (= b_and!269373 (and (=> t!297098 result!256094) b_and!269389)))

(assert (=> d!1071866 t!297100))

(declare-fun b_and!269391 () Bool)

(assert (= b_and!269375 (and (=> t!297100 result!256096) b_and!269391)))

(assert (=> d!1071866 t!297102))

(declare-fun b_and!269393 () Bool)

(assert (= b_and!269377 (and (=> t!297102 result!256098) b_and!269393)))

(declare-fun m!4150761 () Bool)

(assert (=> d!1071866 m!4150761))

(assert (=> d!1071866 m!4150291))

(assert (=> d!1071866 m!4150681))

(assert (=> d!1071866 m!4150681))

(declare-fun m!4150763 () Bool)

(assert (=> d!1071866 m!4150763))

(assert (=> d!1071866 m!4150763))

(declare-fun m!4150765 () Bool)

(assert (=> d!1071866 m!4150765))

(assert (=> b!3646400 d!1071866))

(declare-fun call!263549 () Option!8129)

(declare-fun bm!263544 () Bool)

(assert (=> bm!263544 (= call!263549 (maxPrefixOneRule!2011 thiss!23823 (h!43863 rules!3307) lt!1263703))))

(declare-fun b!3646807 () Bool)

(declare-fun res!1479001 () Bool)

(declare-fun e!2257650 () Bool)

(assert (=> b!3646807 (=> (not res!1479001) (not e!2257650))))

(declare-fun lt!1263899 () Option!8129)

(assert (=> b!3646807 (= res!1479001 (< (size!29349 (_2!22290 (get!12614 lt!1263899))) (size!29349 lt!1263703)))))

(declare-fun d!1071868 () Bool)

(declare-fun e!2257649 () Bool)

(assert (=> d!1071868 e!2257649))

(declare-fun res!1479004 () Bool)

(assert (=> d!1071868 (=> res!1479004 e!2257649)))

(assert (=> d!1071868 (= res!1479004 (isEmpty!22774 lt!1263899))))

(declare-fun e!2257651 () Option!8129)

(assert (=> d!1071868 (= lt!1263899 e!2257651)))

(declare-fun c!630400 () Bool)

(assert (=> d!1071868 (= c!630400 (and ((_ is Cons!38443) rules!3307) ((_ is Nil!38443) (t!297070 rules!3307))))))

(declare-fun lt!1263901 () Unit!55344)

(declare-fun lt!1263902 () Unit!55344)

(assert (=> d!1071868 (= lt!1263901 lt!1263902)))

(assert (=> d!1071868 (isPrefix!3113 lt!1263703 lt!1263703)))

(assert (=> d!1071868 (= lt!1263902 (lemmaIsPrefixRefl!1971 lt!1263703 lt!1263703))))

(assert (=> d!1071868 (rulesValidInductive!2036 thiss!23823 rules!3307)))

(assert (=> d!1071868 (= (maxPrefix!2873 thiss!23823 rules!3307 lt!1263703) lt!1263899)))

(declare-fun b!3646808 () Bool)

(declare-fun res!1479000 () Bool)

(assert (=> b!3646808 (=> (not res!1479000) (not e!2257650))))

(assert (=> b!3646808 (= res!1479000 (matchR!5078 (regex!5750 (rule!8542 (_1!22290 (get!12614 lt!1263899)))) (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263899))))))))

(declare-fun b!3646809 () Bool)

(declare-fun lt!1263903 () Option!8129)

(declare-fun lt!1263900 () Option!8129)

(assert (=> b!3646809 (= e!2257651 (ite (and ((_ is None!8128) lt!1263903) ((_ is None!8128) lt!1263900)) None!8128 (ite ((_ is None!8128) lt!1263900) lt!1263903 (ite ((_ is None!8128) lt!1263903) lt!1263900 (ite (>= (size!29347 (_1!22290 (v!37976 lt!1263903))) (size!29347 (_1!22290 (v!37976 lt!1263900)))) lt!1263903 lt!1263900)))))))

(assert (=> b!3646809 (= lt!1263903 call!263549)))

(assert (=> b!3646809 (= lt!1263900 (maxPrefix!2873 thiss!23823 (t!297070 rules!3307) lt!1263703))))

(declare-fun b!3646810 () Bool)

(declare-fun res!1479006 () Bool)

(assert (=> b!3646810 (=> (not res!1479006) (not e!2257650))))

(assert (=> b!3646810 (= res!1479006 (= (value!184335 (_1!22290 (get!12614 lt!1263899))) (apply!9252 (transformation!5750 (rule!8542 (_1!22290 (get!12614 lt!1263899)))) (seqFromList!4299 (originalCharacters!6464 (_1!22290 (get!12614 lt!1263899)))))))))

(declare-fun b!3646811 () Bool)

(declare-fun res!1479003 () Bool)

(assert (=> b!3646811 (=> (not res!1479003) (not e!2257650))))

(assert (=> b!3646811 (= res!1479003 (= (++!9566 (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263899)))) (_2!22290 (get!12614 lt!1263899))) lt!1263703))))

(declare-fun b!3646812 () Bool)

(assert (=> b!3646812 (= e!2257649 e!2257650)))

(declare-fun res!1479002 () Bool)

(assert (=> b!3646812 (=> (not res!1479002) (not e!2257650))))

(assert (=> b!3646812 (= res!1479002 (isDefined!6360 lt!1263899))))

(declare-fun b!3646813 () Bool)

(assert (=> b!3646813 (= e!2257650 (contains!7566 rules!3307 (rule!8542 (_1!22290 (get!12614 lt!1263899)))))))

(declare-fun b!3646814 () Bool)

(assert (=> b!3646814 (= e!2257651 call!263549)))

(declare-fun b!3646815 () Bool)

(declare-fun res!1479005 () Bool)

(assert (=> b!3646815 (=> (not res!1479005) (not e!2257650))))

(assert (=> b!3646815 (= res!1479005 (= (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1263899)))) (originalCharacters!6464 (_1!22290 (get!12614 lt!1263899)))))))

(assert (= (and d!1071868 c!630400) b!3646814))

(assert (= (and d!1071868 (not c!630400)) b!3646809))

(assert (= (or b!3646814 b!3646809) bm!263544))

(assert (= (and d!1071868 (not res!1479004)) b!3646812))

(assert (= (and b!3646812 res!1479002) b!3646815))

(assert (= (and b!3646815 res!1479005) b!3646807))

(assert (= (and b!3646807 res!1479001) b!3646811))

(assert (= (and b!3646811 res!1479003) b!3646810))

(assert (= (and b!3646810 res!1479006) b!3646808))

(assert (= (and b!3646808 res!1479000) b!3646813))

(declare-fun m!4150767 () Bool)

(assert (=> b!3646810 m!4150767))

(declare-fun m!4150769 () Bool)

(assert (=> b!3646810 m!4150769))

(assert (=> b!3646810 m!4150769))

(declare-fun m!4150771 () Bool)

(assert (=> b!3646810 m!4150771))

(assert (=> b!3646811 m!4150767))

(declare-fun m!4150773 () Bool)

(assert (=> b!3646811 m!4150773))

(assert (=> b!3646811 m!4150773))

(declare-fun m!4150775 () Bool)

(assert (=> b!3646811 m!4150775))

(assert (=> b!3646811 m!4150775))

(declare-fun m!4150777 () Bool)

(assert (=> b!3646811 m!4150777))

(declare-fun m!4150779 () Bool)

(assert (=> b!3646812 m!4150779))

(assert (=> b!3646815 m!4150767))

(assert (=> b!3646815 m!4150773))

(assert (=> b!3646815 m!4150773))

(assert (=> b!3646815 m!4150775))

(declare-fun m!4150781 () Bool)

(assert (=> b!3646809 m!4150781))

(declare-fun m!4150783 () Bool)

(assert (=> d!1071868 m!4150783))

(declare-fun m!4150785 () Bool)

(assert (=> d!1071868 m!4150785))

(declare-fun m!4150787 () Bool)

(assert (=> d!1071868 m!4150787))

(assert (=> d!1071868 m!4150537))

(assert (=> b!3646807 m!4150767))

(declare-fun m!4150789 () Bool)

(assert (=> b!3646807 m!4150789))

(declare-fun m!4150791 () Bool)

(assert (=> b!3646807 m!4150791))

(assert (=> b!3646808 m!4150767))

(assert (=> b!3646808 m!4150773))

(assert (=> b!3646808 m!4150773))

(assert (=> b!3646808 m!4150775))

(assert (=> b!3646808 m!4150775))

(declare-fun m!4150793 () Bool)

(assert (=> b!3646808 m!4150793))

(declare-fun m!4150795 () Bool)

(assert (=> bm!263544 m!4150795))

(assert (=> b!3646813 m!4150767))

(declare-fun m!4150797 () Bool)

(assert (=> b!3646813 m!4150797))

(assert (=> b!3646420 d!1071868))

(declare-fun b!3646887 () Bool)

(declare-fun e!2257694 () Unit!55344)

(declare-fun Unit!55355 () Unit!55344)

(assert (=> b!3646887 (= e!2257694 Unit!55355)))

(declare-fun lt!1263964 () List!38566)

(assert (=> b!3646887 (= lt!1263964 (++!9566 lt!1263730 suffix!1395))))

(declare-fun lt!1263967 () Token!10866)

(declare-fun lt!1263965 () Unit!55344)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!538 (LexerInterface!5339 Rule!11300 List!38567 List!38566) Unit!55344)

(assert (=> b!3646887 (= lt!1263965 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!538 thiss!23823 (rule!8542 lt!1263967) rules!3307 lt!1263964))))

(assert (=> b!3646887 (isEmpty!22774 (maxPrefixOneRule!2011 thiss!23823 (rule!8542 lt!1263967) lt!1263964))))

(declare-fun lt!1263969 () Unit!55344)

(assert (=> b!3646887 (= lt!1263969 lt!1263965)))

(declare-fun lt!1263961 () List!38566)

(assert (=> b!3646887 (= lt!1263961 (list!14240 (charsOf!3764 lt!1263967)))))

(declare-fun lt!1263962 () Unit!55344)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!526 (LexerInterface!5339 Rule!11300 List!38566 List!38566) Unit!55344)

(assert (=> b!3646887 (= lt!1263962 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!526 thiss!23823 (rule!8542 lt!1263967) lt!1263961 (++!9566 lt!1263730 suffix!1395)))))

(assert (=> b!3646887 (not (matchR!5078 (regex!5750 (rule!8542 lt!1263967)) lt!1263961))))

(declare-fun lt!1263966 () Unit!55344)

(assert (=> b!3646887 (= lt!1263966 lt!1263962)))

(assert (=> b!3646887 false))

(declare-fun b!3646888 () Bool)

(declare-fun Unit!55356 () Unit!55344)

(assert (=> b!3646888 (= e!2257694 Unit!55356)))

(declare-fun b!3646885 () Bool)

(declare-fun res!1479046 () Bool)

(declare-fun e!2257695 () Bool)

(assert (=> b!3646885 (=> (not res!1479046) (not e!2257695))))

(assert (=> b!3646885 (= res!1479046 (matchR!5078 (regex!5750 (get!12613 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 lt!1263967))))) (list!14240 (charsOf!3764 lt!1263967))))))

(declare-fun b!3646886 () Bool)

(assert (=> b!3646886 (= e!2257695 (= (rule!8542 lt!1263967) (get!12613 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 lt!1263967))))))))

(declare-fun d!1071870 () Bool)

(assert (=> d!1071870 (isDefined!6360 (maxPrefix!2873 thiss!23823 rules!3307 (++!9566 lt!1263730 suffix!1395)))))

(declare-fun lt!1263957 () Unit!55344)

(assert (=> d!1071870 (= lt!1263957 e!2257694)))

(declare-fun c!630412 () Bool)

(assert (=> d!1071870 (= c!630412 (isEmpty!22774 (maxPrefix!2873 thiss!23823 rules!3307 (++!9566 lt!1263730 suffix!1395))))))

(declare-fun lt!1263973 () Unit!55344)

(declare-fun lt!1263963 () Unit!55344)

(assert (=> d!1071870 (= lt!1263973 lt!1263963)))

(assert (=> d!1071870 e!2257695))

(declare-fun res!1479045 () Bool)

(assert (=> d!1071870 (=> (not res!1479045) (not e!2257695))))

(assert (=> d!1071870 (= res!1479045 (isDefined!6361 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 lt!1263967)))))))

(assert (=> d!1071870 (= lt!1263963 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1354 thiss!23823 rules!3307 lt!1263730 lt!1263967))))

(declare-fun lt!1263959 () Unit!55344)

(declare-fun lt!1263971 () Unit!55344)

(assert (=> d!1071870 (= lt!1263959 lt!1263971)))

(declare-fun lt!1263972 () List!38566)

(assert (=> d!1071870 (isPrefix!3113 lt!1263972 (++!9566 lt!1263730 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!502 (List!38566 List!38566 List!38566) Unit!55344)

(assert (=> d!1071870 (= lt!1263971 (lemmaPrefixStaysPrefixWhenAddingToSuffix!502 lt!1263972 lt!1263730 suffix!1395))))

(assert (=> d!1071870 (= lt!1263972 (list!14240 (charsOf!3764 lt!1263967)))))

(declare-fun lt!1263958 () Unit!55344)

(declare-fun lt!1263960 () Unit!55344)

(assert (=> d!1071870 (= lt!1263958 lt!1263960)))

(declare-fun lt!1263968 () List!38566)

(declare-fun lt!1263970 () List!38566)

(assert (=> d!1071870 (isPrefix!3113 lt!1263968 (++!9566 lt!1263968 lt!1263970))))

(assert (=> d!1071870 (= lt!1263960 (lemmaConcatTwoListThenFirstIsPrefix!2032 lt!1263968 lt!1263970))))

(assert (=> d!1071870 (= lt!1263970 (_2!22290 (get!12614 (maxPrefix!2873 thiss!23823 rules!3307 lt!1263730))))))

(assert (=> d!1071870 (= lt!1263968 (list!14240 (charsOf!3764 lt!1263967)))))

(declare-datatypes ((List!38569 0))(
  ( (Nil!38445) (Cons!38445 (h!43865 Token!10866) (t!297192 List!38569)) )
))
(declare-fun head!7760 (List!38569) Token!10866)

(declare-datatypes ((IArray!23495 0))(
  ( (IArray!23496 (innerList!11805 List!38569)) )
))
(declare-datatypes ((Conc!11745 0))(
  ( (Node!11745 (left!30018 Conc!11745) (right!30348 Conc!11745) (csize!23720 Int) (cheight!11956 Int)) (Leaf!18231 (xs!14947 IArray!23495) (csize!23721 Int)) (Empty!11745) )
))
(declare-datatypes ((BalanceConc!23104 0))(
  ( (BalanceConc!23105 (c!630465 Conc!11745)) )
))
(declare-fun list!14244 (BalanceConc!23104) List!38569)

(declare-datatypes ((tuple2!38316 0))(
  ( (tuple2!38317 (_1!22292 BalanceConc!23104) (_2!22292 BalanceConc!23100)) )
))
(declare-fun lex!2534 (LexerInterface!5339 List!38567 BalanceConc!23100) tuple2!38316)

(assert (=> d!1071870 (= lt!1263967 (head!7760 (list!14244 (_1!22292 (lex!2534 thiss!23823 rules!3307 (seqFromList!4299 lt!1263730))))))))

(assert (=> d!1071870 (not (isEmpty!22772 rules!3307))))

(assert (=> d!1071870 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1017 thiss!23823 rules!3307 lt!1263730 suffix!1395) lt!1263957)))

(assert (= (and d!1071870 res!1479045) b!3646885))

(assert (= (and b!3646885 res!1479046) b!3646886))

(assert (= (and d!1071870 c!630412) b!3646887))

(assert (= (and d!1071870 (not c!630412)) b!3646888))

(declare-fun m!4150893 () Bool)

(assert (=> b!3646887 m!4150893))

(declare-fun m!4150895 () Bool)

(assert (=> b!3646887 m!4150895))

(declare-fun m!4150897 () Bool)

(assert (=> b!3646887 m!4150897))

(assert (=> b!3646887 m!4150309))

(declare-fun m!4150899 () Bool)

(assert (=> b!3646887 m!4150899))

(declare-fun m!4150901 () Bool)

(assert (=> b!3646887 m!4150901))

(declare-fun m!4150903 () Bool)

(assert (=> b!3646887 m!4150903))

(assert (=> b!3646887 m!4150893))

(assert (=> b!3646887 m!4150309))

(assert (=> b!3646887 m!4150897))

(declare-fun m!4150905 () Bool)

(assert (=> b!3646887 m!4150905))

(assert (=> b!3646885 m!4150893))

(declare-fun m!4150907 () Bool)

(assert (=> b!3646885 m!4150907))

(assert (=> b!3646885 m!4150893))

(assert (=> b!3646885 m!4150895))

(assert (=> b!3646885 m!4150895))

(declare-fun m!4150909 () Bool)

(assert (=> b!3646885 m!4150909))

(assert (=> b!3646885 m!4150907))

(declare-fun m!4150911 () Bool)

(assert (=> b!3646885 m!4150911))

(assert (=> b!3646886 m!4150907))

(assert (=> b!3646886 m!4150907))

(assert (=> b!3646886 m!4150911))

(assert (=> d!1071870 m!4150907))

(declare-fun m!4150913 () Bool)

(assert (=> d!1071870 m!4150913))

(assert (=> d!1071870 m!4150337))

(declare-fun m!4150915 () Bool)

(assert (=> d!1071870 m!4150915))

(declare-fun m!4150917 () Bool)

(assert (=> d!1071870 m!4150917))

(declare-fun m!4150919 () Bool)

(assert (=> d!1071870 m!4150919))

(declare-fun m!4150921 () Bool)

(assert (=> d!1071870 m!4150921))

(assert (=> d!1071870 m!4150907))

(declare-fun m!4150923 () Bool)

(assert (=> d!1071870 m!4150923))

(declare-fun m!4150925 () Bool)

(assert (=> d!1071870 m!4150925))

(declare-fun m!4150927 () Bool)

(assert (=> d!1071870 m!4150927))

(assert (=> d!1071870 m!4150913))

(declare-fun m!4150929 () Bool)

(assert (=> d!1071870 m!4150929))

(assert (=> d!1071870 m!4150309))

(declare-fun m!4150931 () Bool)

(assert (=> d!1071870 m!4150931))

(declare-fun m!4150933 () Bool)

(assert (=> d!1071870 m!4150933))

(assert (=> d!1071870 m!4150309))

(assert (=> d!1071870 m!4150925))

(declare-fun m!4150935 () Bool)

(assert (=> d!1071870 m!4150935))

(declare-fun m!4150937 () Bool)

(assert (=> d!1071870 m!4150937))

(assert (=> d!1071870 m!4150893))

(assert (=> d!1071870 m!4150917))

(assert (=> d!1071870 m!4150309))

(assert (=> d!1071870 m!4150893))

(assert (=> d!1071870 m!4150895))

(assert (=> d!1071870 m!4150207))

(declare-fun m!4150939 () Bool)

(assert (=> d!1071870 m!4150939))

(assert (=> d!1071870 m!4150935))

(assert (=> d!1071870 m!4150337))

(assert (=> d!1071870 m!4150925))

(declare-fun m!4150941 () Bool)

(assert (=> d!1071870 m!4150941))

(assert (=> b!3646420 d!1071870))

(declare-fun b!3646898 () Bool)

(declare-fun res!1479055 () Bool)

(declare-fun e!2257703 () Bool)

(assert (=> b!3646898 (=> (not res!1479055) (not e!2257703))))

(assert (=> b!3646898 (= res!1479055 (= (head!7758 lt!1263711) (head!7758 (++!9566 lt!1263711 (_2!22290 lt!1263731)))))))

(declare-fun b!3646899 () Bool)

(assert (=> b!3646899 (= e!2257703 (isPrefix!3113 (tail!5649 lt!1263711) (tail!5649 (++!9566 lt!1263711 (_2!22290 lt!1263731)))))))

(declare-fun d!1071906 () Bool)

(declare-fun e!2257704 () Bool)

(assert (=> d!1071906 e!2257704))

(declare-fun res!1479058 () Bool)

(assert (=> d!1071906 (=> res!1479058 e!2257704)))

(declare-fun lt!1263979 () Bool)

(assert (=> d!1071906 (= res!1479058 (not lt!1263979))))

(declare-fun e!2257702 () Bool)

(assert (=> d!1071906 (= lt!1263979 e!2257702)))

(declare-fun res!1479056 () Bool)

(assert (=> d!1071906 (=> res!1479056 e!2257702)))

(assert (=> d!1071906 (= res!1479056 ((_ is Nil!38442) lt!1263711))))

(assert (=> d!1071906 (= (isPrefix!3113 lt!1263711 (++!9566 lt!1263711 (_2!22290 lt!1263731))) lt!1263979)))

(declare-fun b!3646900 () Bool)

(assert (=> b!3646900 (= e!2257704 (>= (size!29349 (++!9566 lt!1263711 (_2!22290 lt!1263731))) (size!29349 lt!1263711)))))

(declare-fun b!3646897 () Bool)

(assert (=> b!3646897 (= e!2257702 e!2257703)))

(declare-fun res!1479057 () Bool)

(assert (=> b!3646897 (=> (not res!1479057) (not e!2257703))))

(assert (=> b!3646897 (= res!1479057 (not ((_ is Nil!38442) (++!9566 lt!1263711 (_2!22290 lt!1263731)))))))

(assert (= (and d!1071906 (not res!1479056)) b!3646897))

(assert (= (and b!3646897 res!1479057) b!3646898))

(assert (= (and b!3646898 res!1479055) b!3646899))

(assert (= (and d!1071906 (not res!1479058)) b!3646900))

(assert (=> b!3646898 m!4150317))

(assert (=> b!3646898 m!4150285))

(declare-fun m!4150947 () Bool)

(assert (=> b!3646898 m!4150947))

(assert (=> b!3646899 m!4150627))

(assert (=> b!3646899 m!4150285))

(declare-fun m!4150949 () Bool)

(assert (=> b!3646899 m!4150949))

(assert (=> b!3646899 m!4150627))

(assert (=> b!3646899 m!4150949))

(declare-fun m!4150951 () Bool)

(assert (=> b!3646899 m!4150951))

(assert (=> b!3646900 m!4150285))

(declare-fun m!4150953 () Bool)

(assert (=> b!3646900 m!4150953))

(assert (=> b!3646900 m!4150231))

(assert (=> b!3646420 d!1071906))

(declare-fun b!3646915 () Bool)

(declare-fun e!2257718 () Option!8128)

(declare-fun e!2257716 () Option!8128)

(assert (=> b!3646915 (= e!2257718 e!2257716)))

(declare-fun c!630419 () Bool)

(assert (=> b!3646915 (= c!630419 (and ((_ is Cons!38443) rules!3307) (not (= (tag!6508 (h!43863 rules!3307)) (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))))))

(declare-fun d!1071912 () Bool)

(declare-fun e!2257717 () Bool)

(assert (=> d!1071912 e!2257717))

(declare-fun res!1479063 () Bool)

(assert (=> d!1071912 (=> res!1479063 e!2257717)))

(declare-fun lt!1263991 () Option!8128)

(declare-fun isEmpty!22777 (Option!8128) Bool)

(assert (=> d!1071912 (= res!1479063 (isEmpty!22777 lt!1263991))))

(assert (=> d!1071912 (= lt!1263991 e!2257718)))

(declare-fun c!630418 () Bool)

(assert (=> d!1071912 (= c!630418 (and ((_ is Cons!38443) rules!3307) (= (tag!6508 (h!43863 rules!3307)) (tag!6508 (rule!8542 (_1!22290 lt!1263731))))))))

(assert (=> d!1071912 (rulesInvariant!4736 thiss!23823 rules!3307)))

(assert (=> d!1071912 (= (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 (_1!22290 lt!1263731)))) lt!1263991)))

(declare-fun b!3646916 () Bool)

(declare-fun e!2257715 () Bool)

(assert (=> b!3646916 (= e!2257717 e!2257715)))

(declare-fun res!1479064 () Bool)

(assert (=> b!3646916 (=> (not res!1479064) (not e!2257715))))

(assert (=> b!3646916 (= res!1479064 (contains!7566 rules!3307 (get!12613 lt!1263991)))))

(declare-fun b!3646917 () Bool)

(assert (=> b!3646917 (= e!2257715 (= (tag!6508 (get!12613 lt!1263991)) (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3646918 () Bool)

(assert (=> b!3646918 (= e!2257716 None!8127)))

(declare-fun b!3646919 () Bool)

(declare-fun lt!1263990 () Unit!55344)

(declare-fun lt!1263992 () Unit!55344)

(assert (=> b!3646919 (= lt!1263990 lt!1263992)))

(assert (=> b!3646919 (rulesInvariant!4736 thiss!23823 (t!297070 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!581 (LexerInterface!5339 Rule!11300 List!38567) Unit!55344)

(assert (=> b!3646919 (= lt!1263992 (lemmaInvariantOnRulesThenOnTail!581 thiss!23823 (h!43863 rules!3307) (t!297070 rules!3307)))))

(assert (=> b!3646919 (= e!2257716 (getRuleFromTag!1354 thiss!23823 (t!297070 rules!3307) (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3646920 () Bool)

(assert (=> b!3646920 (= e!2257718 (Some!8127 (h!43863 rules!3307)))))

(assert (= (and d!1071912 c!630418) b!3646920))

(assert (= (and d!1071912 (not c!630418)) b!3646915))

(assert (= (and b!3646915 c!630419) b!3646919))

(assert (= (and b!3646915 (not c!630419)) b!3646918))

(assert (= (and d!1071912 (not res!1479063)) b!3646916))

(assert (= (and b!3646916 res!1479064) b!3646917))

(declare-fun m!4150961 () Bool)

(assert (=> d!1071912 m!4150961))

(assert (=> d!1071912 m!4150283))

(declare-fun m!4150963 () Bool)

(assert (=> b!3646916 m!4150963))

(assert (=> b!3646916 m!4150963))

(declare-fun m!4150965 () Bool)

(assert (=> b!3646916 m!4150965))

(assert (=> b!3646917 m!4150963))

(declare-fun m!4150967 () Bool)

(assert (=> b!3646919 m!4150967))

(declare-fun m!4150969 () Bool)

(assert (=> b!3646919 m!4150969))

(declare-fun m!4150971 () Bool)

(assert (=> b!3646919 m!4150971))

(assert (=> b!3646420 d!1071912))

(declare-fun d!1071918 () Bool)

(declare-fun e!2257723 () Bool)

(assert (=> d!1071918 e!2257723))

(declare-fun res!1479069 () Bool)

(assert (=> d!1071918 (=> (not res!1479069) (not e!2257723))))

(declare-fun lt!1263995 () List!38566)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5542 (List!38566) (InoxSet C!21204))

(assert (=> d!1071918 (= res!1479069 (= (content!5542 lt!1263995) ((_ map or) (content!5542 lt!1263730) (content!5542 suffix!1395))))))

(declare-fun e!2257724 () List!38566)

(assert (=> d!1071918 (= lt!1263995 e!2257724)))

(declare-fun c!630422 () Bool)

(assert (=> d!1071918 (= c!630422 ((_ is Nil!38442) lt!1263730))))

(assert (=> d!1071918 (= (++!9566 lt!1263730 suffix!1395) lt!1263995)))

(declare-fun b!3646930 () Bool)

(assert (=> b!3646930 (= e!2257724 (Cons!38442 (h!43862 lt!1263730) (++!9566 (t!297069 lt!1263730) suffix!1395)))))

(declare-fun b!3646929 () Bool)

(assert (=> b!3646929 (= e!2257724 suffix!1395)))

(declare-fun b!3646931 () Bool)

(declare-fun res!1479070 () Bool)

(assert (=> b!3646931 (=> (not res!1479070) (not e!2257723))))

(assert (=> b!3646931 (= res!1479070 (= (size!29349 lt!1263995) (+ (size!29349 lt!1263730) (size!29349 suffix!1395))))))

(declare-fun b!3646932 () Bool)

(assert (=> b!3646932 (= e!2257723 (or (not (= suffix!1395 Nil!38442)) (= lt!1263995 lt!1263730)))))

(assert (= (and d!1071918 c!630422) b!3646929))

(assert (= (and d!1071918 (not c!630422)) b!3646930))

(assert (= (and d!1071918 res!1479069) b!3646931))

(assert (= (and b!3646931 res!1479070) b!3646932))

(declare-fun m!4150973 () Bool)

(assert (=> d!1071918 m!4150973))

(declare-fun m!4150975 () Bool)

(assert (=> d!1071918 m!4150975))

(declare-fun m!4150977 () Bool)

(assert (=> d!1071918 m!4150977))

(declare-fun m!4150979 () Bool)

(assert (=> b!3646930 m!4150979))

(declare-fun m!4150981 () Bool)

(assert (=> b!3646931 m!4150981))

(assert (=> b!3646931 m!4150245))

(declare-fun m!4150983 () Bool)

(assert (=> b!3646931 m!4150983))

(assert (=> b!3646420 d!1071918))

(declare-fun d!1071920 () Bool)

(declare-fun lt!1263996 () BalanceConc!23100)

(assert (=> d!1071920 (= (list!14240 lt!1263996) (originalCharacters!6464 (_1!22290 lt!1263731)))))

(assert (=> d!1071920 (= lt!1263996 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (value!184335 (_1!22290 lt!1263731))))))

(assert (=> d!1071920 (= (charsOf!3764 (_1!22290 lt!1263731)) lt!1263996)))

(declare-fun b_lambda!108149 () Bool)

(assert (=> (not b_lambda!108149) (not d!1071920)))

(declare-fun t!297152 () Bool)

(declare-fun tb!210341 () Bool)

(assert (=> (and b!3646393 (= (toChars!7901 (transformation!5750 rule!403)) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297152) tb!210341))

(declare-fun b!3646933 () Bool)

(declare-fun e!2257725 () Bool)

(declare-fun tp!1111984 () Bool)

(assert (=> b!3646933 (= e!2257725 (and (inv!51889 (c!630319 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (value!184335 (_1!22290 lt!1263731))))) tp!1111984))))

(declare-fun result!256150 () Bool)

(assert (=> tb!210341 (= result!256150 (and (inv!51890 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (value!184335 (_1!22290 lt!1263731)))) e!2257725))))

(assert (= tb!210341 b!3646933))

(declare-fun m!4150985 () Bool)

(assert (=> b!3646933 m!4150985))

(declare-fun m!4150987 () Bool)

(assert (=> tb!210341 m!4150987))

(assert (=> d!1071920 t!297152))

(declare-fun b_and!269443 () Bool)

(assert (= b_and!269379 (and (=> t!297152 result!256150) b_and!269443)))

(declare-fun t!297154 () Bool)

(declare-fun tb!210343 () Bool)

(assert (=> (and b!3646407 (= (toChars!7901 (transformation!5750 (rule!8542 token!511))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297154) tb!210343))

(declare-fun result!256152 () Bool)

(assert (= result!256152 result!256150))

(assert (=> d!1071920 t!297154))

(declare-fun b_and!269445 () Bool)

(assert (= b_and!269381 (and (=> t!297154 result!256152) b_and!269445)))

(declare-fun t!297156 () Bool)

(declare-fun tb!210345 () Bool)

(assert (=> (and b!3646388 (= (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297156) tb!210345))

(declare-fun result!256154 () Bool)

(assert (= result!256154 result!256150))

(assert (=> d!1071920 t!297156))

(declare-fun b_and!269447 () Bool)

(assert (= b_and!269383 (and (=> t!297156 result!256154) b_and!269447)))

(declare-fun t!297158 () Bool)

(declare-fun tb!210347 () Bool)

(assert (=> (and b!3646415 (= (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297158) tb!210347))

(declare-fun result!256156 () Bool)

(assert (= result!256156 result!256150))

(assert (=> d!1071920 t!297158))

(declare-fun b_and!269449 () Bool)

(assert (= b_and!269385 (and (=> t!297158 result!256156) b_and!269449)))

(declare-fun m!4150989 () Bool)

(assert (=> d!1071920 m!4150989))

(declare-fun m!4150991 () Bool)

(assert (=> d!1071920 m!4150991))

(assert (=> b!3646420 d!1071920))

(declare-fun d!1071922 () Bool)

(declare-fun e!2257728 () Bool)

(assert (=> d!1071922 e!2257728))

(declare-fun res!1479075 () Bool)

(assert (=> d!1071922 (=> (not res!1479075) (not e!2257728))))

(assert (=> d!1071922 (= res!1479075 (isDefined!6361 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 (_1!22290 lt!1263731))))))))

(declare-fun lt!1263999 () Unit!55344)

(declare-fun choose!21474 (LexerInterface!5339 List!38567 List!38566 Token!10866) Unit!55344)

(assert (=> d!1071922 (= lt!1263999 (choose!21474 thiss!23823 rules!3307 lt!1263703 (_1!22290 lt!1263731)))))

(assert (=> d!1071922 (rulesInvariant!4736 thiss!23823 rules!3307)))

(assert (=> d!1071922 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1354 thiss!23823 rules!3307 lt!1263703 (_1!22290 lt!1263731)) lt!1263999)))

(declare-fun b!3646938 () Bool)

(declare-fun res!1479076 () Bool)

(assert (=> b!3646938 (=> (not res!1479076) (not e!2257728))))

(assert (=> b!3646938 (= res!1479076 (matchR!5078 (regex!5750 (get!12613 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))) (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))))))

(declare-fun b!3646939 () Bool)

(assert (=> b!3646939 (= e!2257728 (= (rule!8542 (_1!22290 lt!1263731)) (get!12613 (getRuleFromTag!1354 thiss!23823 rules!3307 (tag!6508 (rule!8542 (_1!22290 lt!1263731)))))))))

(assert (= (and d!1071922 res!1479075) b!3646938))

(assert (= (and b!3646938 res!1479076) b!3646939))

(assert (=> d!1071922 m!4150295))

(assert (=> d!1071922 m!4150295))

(declare-fun m!4150993 () Bool)

(assert (=> d!1071922 m!4150993))

(declare-fun m!4150995 () Bool)

(assert (=> d!1071922 m!4150995))

(assert (=> d!1071922 m!4150283))

(assert (=> b!3646938 m!4150213))

(assert (=> b!3646938 m!4150215))

(assert (=> b!3646938 m!4150295))

(assert (=> b!3646938 m!4150213))

(assert (=> b!3646938 m!4150295))

(declare-fun m!4150997 () Bool)

(assert (=> b!3646938 m!4150997))

(assert (=> b!3646938 m!4150215))

(declare-fun m!4150999 () Bool)

(assert (=> b!3646938 m!4150999))

(assert (=> b!3646939 m!4150295))

(assert (=> b!3646939 m!4150295))

(assert (=> b!3646939 m!4150997))

(assert (=> b!3646420 d!1071922))

(declare-fun d!1071924 () Bool)

(assert (=> d!1071924 (isPrefix!3113 lt!1263711 (++!9566 lt!1263711 (_2!22290 lt!1263731)))))

(declare-fun lt!1264002 () Unit!55344)

(declare-fun choose!21475 (List!38566 List!38566) Unit!55344)

(assert (=> d!1071924 (= lt!1264002 (choose!21475 lt!1263711 (_2!22290 lt!1263731)))))

(assert (=> d!1071924 (= (lemmaConcatTwoListThenFirstIsPrefix!2032 lt!1263711 (_2!22290 lt!1263731)) lt!1264002)))

(declare-fun bs!572126 () Bool)

(assert (= bs!572126 d!1071924))

(assert (=> bs!572126 m!4150285))

(assert (=> bs!572126 m!4150285))

(assert (=> bs!572126 m!4150287))

(declare-fun m!4151001 () Bool)

(assert (=> bs!572126 m!4151001))

(assert (=> b!3646420 d!1071924))

(declare-fun d!1071926 () Bool)

(assert (=> d!1071926 (= (list!14240 lt!1263700) (list!14241 (c!630319 lt!1263700)))))

(declare-fun bs!572127 () Bool)

(assert (= bs!572127 d!1071926))

(declare-fun m!4151003 () Bool)

(assert (=> bs!572127 m!4151003))

(assert (=> b!3646420 d!1071926))

(declare-fun b!3646941 () Bool)

(declare-fun res!1479077 () Bool)

(declare-fun e!2257730 () Bool)

(assert (=> b!3646941 (=> (not res!1479077) (not e!2257730))))

(assert (=> b!3646941 (= res!1479077 (= (head!7758 lt!1263730) (head!7758 lt!1263703)))))

(declare-fun b!3646942 () Bool)

(assert (=> b!3646942 (= e!2257730 (isPrefix!3113 (tail!5649 lt!1263730) (tail!5649 lt!1263703)))))

(declare-fun d!1071928 () Bool)

(declare-fun e!2257731 () Bool)

(assert (=> d!1071928 e!2257731))

(declare-fun res!1479080 () Bool)

(assert (=> d!1071928 (=> res!1479080 e!2257731)))

(declare-fun lt!1264003 () Bool)

(assert (=> d!1071928 (= res!1479080 (not lt!1264003))))

(declare-fun e!2257729 () Bool)

(assert (=> d!1071928 (= lt!1264003 e!2257729)))

(declare-fun res!1479078 () Bool)

(assert (=> d!1071928 (=> res!1479078 e!2257729)))

(assert (=> d!1071928 (= res!1479078 ((_ is Nil!38442) lt!1263730))))

(assert (=> d!1071928 (= (isPrefix!3113 lt!1263730 lt!1263703) lt!1264003)))

(declare-fun b!3646943 () Bool)

(assert (=> b!3646943 (= e!2257731 (>= (size!29349 lt!1263703) (size!29349 lt!1263730)))))

(declare-fun b!3646940 () Bool)

(assert (=> b!3646940 (= e!2257729 e!2257730)))

(declare-fun res!1479079 () Bool)

(assert (=> b!3646940 (=> (not res!1479079) (not e!2257730))))

(assert (=> b!3646940 (= res!1479079 (not ((_ is Nil!38442) lt!1263703)))))

(assert (= (and d!1071928 (not res!1479078)) b!3646940))

(assert (= (and b!3646940 res!1479079) b!3646941))

(assert (= (and b!3646941 res!1479077) b!3646942))

(assert (= (and d!1071928 (not res!1479080)) b!3646943))

(assert (=> b!3646941 m!4150667))

(declare-fun m!4151005 () Bool)

(assert (=> b!3646941 m!4151005))

(assert (=> b!3646942 m!4150661))

(declare-fun m!4151007 () Bool)

(assert (=> b!3646942 m!4151007))

(assert (=> b!3646942 m!4150661))

(assert (=> b!3646942 m!4151007))

(declare-fun m!4151009 () Bool)

(assert (=> b!3646942 m!4151009))

(assert (=> b!3646943 m!4150791))

(assert (=> b!3646943 m!4150245))

(assert (=> b!3646420 d!1071928))

(declare-fun b!3646945 () Bool)

(declare-fun res!1479081 () Bool)

(declare-fun e!2257733 () Bool)

(assert (=> b!3646945 (=> (not res!1479081) (not e!2257733))))

(assert (=> b!3646945 (= res!1479081 (= (head!7758 lt!1263711) (head!7758 lt!1263703)))))

(declare-fun b!3646946 () Bool)

(assert (=> b!3646946 (= e!2257733 (isPrefix!3113 (tail!5649 lt!1263711) (tail!5649 lt!1263703)))))

(declare-fun d!1071930 () Bool)

(declare-fun e!2257734 () Bool)

(assert (=> d!1071930 e!2257734))

(declare-fun res!1479084 () Bool)

(assert (=> d!1071930 (=> res!1479084 e!2257734)))

(declare-fun lt!1264004 () Bool)

(assert (=> d!1071930 (= res!1479084 (not lt!1264004))))

(declare-fun e!2257732 () Bool)

(assert (=> d!1071930 (= lt!1264004 e!2257732)))

(declare-fun res!1479082 () Bool)

(assert (=> d!1071930 (=> res!1479082 e!2257732)))

(assert (=> d!1071930 (= res!1479082 ((_ is Nil!38442) lt!1263711))))

(assert (=> d!1071930 (= (isPrefix!3113 lt!1263711 lt!1263703) lt!1264004)))

(declare-fun b!3646947 () Bool)

(assert (=> b!3646947 (= e!2257734 (>= (size!29349 lt!1263703) (size!29349 lt!1263711)))))

(declare-fun b!3646944 () Bool)

(assert (=> b!3646944 (= e!2257732 e!2257733)))

(declare-fun res!1479083 () Bool)

(assert (=> b!3646944 (=> (not res!1479083) (not e!2257733))))

(assert (=> b!3646944 (= res!1479083 (not ((_ is Nil!38442) lt!1263703)))))

(assert (= (and d!1071930 (not res!1479082)) b!3646944))

(assert (= (and b!3646944 res!1479083) b!3646945))

(assert (= (and b!3646945 res!1479081) b!3646946))

(assert (= (and d!1071930 (not res!1479084)) b!3646947))

(assert (=> b!3646945 m!4150317))

(assert (=> b!3646945 m!4151005))

(assert (=> b!3646946 m!4150627))

(assert (=> b!3646946 m!4151007))

(assert (=> b!3646946 m!4150627))

(assert (=> b!3646946 m!4151007))

(declare-fun m!4151011 () Bool)

(assert (=> b!3646946 m!4151011))

(assert (=> b!3646947 m!4150791))

(assert (=> b!3646947 m!4150231))

(assert (=> b!3646420 d!1071930))

(declare-fun d!1071932 () Bool)

(assert (=> d!1071932 (isPrefix!3113 lt!1263730 (++!9566 lt!1263730 suffix!1395))))

(declare-fun lt!1264005 () Unit!55344)

(assert (=> d!1071932 (= lt!1264005 (choose!21475 lt!1263730 suffix!1395))))

(assert (=> d!1071932 (= (lemmaConcatTwoListThenFirstIsPrefix!2032 lt!1263730 suffix!1395) lt!1264005)))

(declare-fun bs!572128 () Bool)

(assert (= bs!572128 d!1071932))

(assert (=> bs!572128 m!4150309))

(assert (=> bs!572128 m!4150309))

(declare-fun m!4151013 () Bool)

(assert (=> bs!572128 m!4151013))

(declare-fun m!4151015 () Bool)

(assert (=> bs!572128 m!4151015))

(assert (=> b!3646420 d!1071932))

(declare-fun d!1071934 () Bool)

(declare-fun e!2257735 () Bool)

(assert (=> d!1071934 e!2257735))

(declare-fun res!1479085 () Bool)

(assert (=> d!1071934 (=> (not res!1479085) (not e!2257735))))

(declare-fun lt!1264006 () List!38566)

(assert (=> d!1071934 (= res!1479085 (= (content!5542 lt!1264006) ((_ map or) (content!5542 lt!1263711) (content!5542 (_2!22290 lt!1263731)))))))

(declare-fun e!2257736 () List!38566)

(assert (=> d!1071934 (= lt!1264006 e!2257736)))

(declare-fun c!630423 () Bool)

(assert (=> d!1071934 (= c!630423 ((_ is Nil!38442) lt!1263711))))

(assert (=> d!1071934 (= (++!9566 lt!1263711 (_2!22290 lt!1263731)) lt!1264006)))

(declare-fun b!3646949 () Bool)

(assert (=> b!3646949 (= e!2257736 (Cons!38442 (h!43862 lt!1263711) (++!9566 (t!297069 lt!1263711) (_2!22290 lt!1263731))))))

(declare-fun b!3646948 () Bool)

(assert (=> b!3646948 (= e!2257736 (_2!22290 lt!1263731))))

(declare-fun b!3646950 () Bool)

(declare-fun res!1479086 () Bool)

(assert (=> b!3646950 (=> (not res!1479086) (not e!2257735))))

(assert (=> b!3646950 (= res!1479086 (= (size!29349 lt!1264006) (+ (size!29349 lt!1263711) (size!29349 (_2!22290 lt!1263731)))))))

(declare-fun b!3646951 () Bool)

(assert (=> b!3646951 (= e!2257735 (or (not (= (_2!22290 lt!1263731) Nil!38442)) (= lt!1264006 lt!1263711)))))

(assert (= (and d!1071934 c!630423) b!3646948))

(assert (= (and d!1071934 (not c!630423)) b!3646949))

(assert (= (and d!1071934 res!1479085) b!3646950))

(assert (= (and b!3646950 res!1479086) b!3646951))

(declare-fun m!4151017 () Bool)

(assert (=> d!1071934 m!4151017))

(declare-fun m!4151019 () Bool)

(assert (=> d!1071934 m!4151019))

(declare-fun m!4151021 () Bool)

(assert (=> d!1071934 m!4151021))

(declare-fun m!4151023 () Bool)

(assert (=> b!3646949 m!4151023))

(declare-fun m!4151025 () Bool)

(assert (=> b!3646950 m!4151025))

(assert (=> b!3646950 m!4150231))

(declare-fun m!4151027 () Bool)

(assert (=> b!3646950 m!4151027))

(assert (=> b!3646420 d!1071934))

(declare-fun d!1071936 () Bool)

(assert (=> d!1071936 (= (isDefined!6361 lt!1263712) (not (isEmpty!22777 lt!1263712)))))

(declare-fun bs!572129 () Bool)

(assert (= bs!572129 d!1071936))

(declare-fun m!4151029 () Bool)

(assert (=> bs!572129 m!4151029))

(assert (=> b!3646420 d!1071936))

(declare-fun d!1071938 () Bool)

(assert (=> d!1071938 (= (get!12614 lt!1263708) (v!37976 lt!1263708))))

(assert (=> b!3646420 d!1071938))

(declare-fun d!1071940 () Bool)

(assert (=> d!1071940 (= (inv!51882 (tag!6508 (rule!8542 token!511))) (= (mod (str.len (value!184334 (tag!6508 (rule!8542 token!511)))) 2) 0))))

(assert (=> b!3646401 d!1071940))

(declare-fun d!1071942 () Bool)

(declare-fun res!1479087 () Bool)

(declare-fun e!2257737 () Bool)

(assert (=> d!1071942 (=> (not res!1479087) (not e!2257737))))

(assert (=> d!1071942 (= res!1479087 (semiInverseModEq!2451 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (toValue!8042 (transformation!5750 (rule!8542 token!511)))))))

(assert (=> d!1071942 (= (inv!51885 (transformation!5750 (rule!8542 token!511))) e!2257737)))

(declare-fun b!3646952 () Bool)

(assert (=> b!3646952 (= e!2257737 (equivClasses!2350 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (toValue!8042 (transformation!5750 (rule!8542 token!511)))))))

(assert (= (and d!1071942 res!1479087) b!3646952))

(declare-fun m!4151031 () Bool)

(assert (=> d!1071942 m!4151031))

(declare-fun m!4151033 () Bool)

(assert (=> b!3646952 m!4151033))

(assert (=> b!3646401 d!1071942))

(declare-fun d!1071944 () Bool)

(declare-fun lt!1264007 () Int)

(assert (=> d!1071944 (= lt!1264007 (size!29349 (list!14240 lt!1263736)))))

(assert (=> d!1071944 (= lt!1264007 (size!29351 (c!630319 lt!1263736)))))

(assert (=> d!1071944 (= (size!29348 lt!1263736) lt!1264007)))

(declare-fun bs!572130 () Bool)

(assert (= bs!572130 d!1071944))

(assert (=> bs!572130 m!4150339))

(assert (=> bs!572130 m!4150339))

(declare-fun m!4151035 () Bool)

(assert (=> bs!572130 m!4151035))

(declare-fun m!4151037 () Bool)

(assert (=> bs!572130 m!4151037))

(assert (=> b!3646421 d!1071944))

(declare-fun d!1071946 () Bool)

(declare-fun lt!1264010 () Bool)

(assert (=> d!1071946 (= lt!1264010 (select (content!5542 lt!1263727) lt!1263710))))

(declare-fun e!2257743 () Bool)

(assert (=> d!1071946 (= lt!1264010 e!2257743)))

(declare-fun res!1479092 () Bool)

(assert (=> d!1071946 (=> (not res!1479092) (not e!2257743))))

(assert (=> d!1071946 (= res!1479092 ((_ is Cons!38442) lt!1263727))))

(assert (=> d!1071946 (= (contains!7565 lt!1263727 lt!1263710) lt!1264010)))

(declare-fun b!3646957 () Bool)

(declare-fun e!2257742 () Bool)

(assert (=> b!3646957 (= e!2257743 e!2257742)))

(declare-fun res!1479093 () Bool)

(assert (=> b!3646957 (=> res!1479093 e!2257742)))

(assert (=> b!3646957 (= res!1479093 (= (h!43862 lt!1263727) lt!1263710))))

(declare-fun b!3646958 () Bool)

(assert (=> b!3646958 (= e!2257742 (contains!7565 (t!297069 lt!1263727) lt!1263710))))

(assert (= (and d!1071946 res!1479092) b!3646957))

(assert (= (and b!3646957 (not res!1479093)) b!3646958))

(declare-fun m!4151039 () Bool)

(assert (=> d!1071946 m!4151039))

(declare-fun m!4151041 () Bool)

(assert (=> d!1071946 m!4151041))

(declare-fun m!4151043 () Bool)

(assert (=> b!3646958 m!4151043))

(assert (=> b!3646421 d!1071946))

(declare-fun d!1071948 () Bool)

(assert (=> d!1071948 (= (head!7758 lt!1263711) (h!43862 lt!1263711))))

(assert (=> b!3646421 d!1071948))

(declare-fun d!1071950 () Bool)

(declare-fun res!1479096 () Bool)

(declare-fun e!2257746 () Bool)

(assert (=> d!1071950 (=> (not res!1479096) (not e!2257746))))

(declare-fun rulesValid!2208 (LexerInterface!5339 List!38567) Bool)

(assert (=> d!1071950 (= res!1479096 (rulesValid!2208 thiss!23823 rules!3307))))

(assert (=> d!1071950 (= (rulesInvariant!4736 thiss!23823 rules!3307) e!2257746)))

(declare-fun b!3646961 () Bool)

(declare-datatypes ((List!38571 0))(
  ( (Nil!38447) (Cons!38447 (h!43867 String!43234) (t!297194 List!38571)) )
))
(declare-fun noDuplicateTag!2204 (LexerInterface!5339 List!38567 List!38571) Bool)

(assert (=> b!3646961 (= e!2257746 (noDuplicateTag!2204 thiss!23823 rules!3307 Nil!38447))))

(assert (= (and d!1071950 res!1479096) b!3646961))

(declare-fun m!4151045 () Bool)

(assert (=> d!1071950 m!4151045))

(declare-fun m!4151047 () Bool)

(assert (=> b!3646961 m!4151047))

(assert (=> b!3646423 d!1071950))

(declare-fun b!3647056 () Bool)

(declare-fun e!2257795 () Bool)

(declare-fun e!2257792 () Bool)

(assert (=> b!3647056 (= e!2257795 e!2257792)))

(declare-fun res!1479134 () Bool)

(assert (=> b!3647056 (=> (not res!1479134) (not e!2257792))))

(declare-fun lt!1264039 () Option!8129)

(assert (=> b!3647056 (= res!1479134 (matchR!5078 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1264039))))))))

(declare-fun d!1071952 () Bool)

(assert (=> d!1071952 e!2257795))

(declare-fun res!1479138 () Bool)

(assert (=> d!1071952 (=> res!1479138 e!2257795)))

(assert (=> d!1071952 (= res!1479138 (isEmpty!22774 lt!1264039))))

(declare-fun e!2257794 () Option!8129)

(assert (=> d!1071952 (= lt!1264039 e!2257794)))

(declare-fun c!630432 () Bool)

(declare-datatypes ((tuple2!38318 0))(
  ( (tuple2!38319 (_1!22293 List!38566) (_2!22293 List!38566)) )
))
(declare-fun lt!1264041 () tuple2!38318)

(assert (=> d!1071952 (= c!630432 (isEmpty!22773 (_1!22293 lt!1264041)))))

(declare-fun findLongestMatch!961 (Regex!10509 List!38566) tuple2!38318)

(assert (=> d!1071952 (= lt!1264041 (findLongestMatch!961 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263703))))

(assert (=> d!1071952 (ruleValid!2014 thiss!23823 (rule!8542 (_1!22290 lt!1263731)))))

(assert (=> d!1071952 (= (maxPrefixOneRule!2011 thiss!23823 (rule!8542 (_1!22290 lt!1263731)) lt!1263703) lt!1264039)))

(declare-fun b!3647057 () Bool)

(assert (=> b!3647057 (= e!2257792 (= (size!29347 (_1!22290 (get!12614 lt!1264039))) (size!29349 (originalCharacters!6464 (_1!22290 (get!12614 lt!1264039))))))))

(declare-fun b!3647058 () Bool)

(declare-fun res!1479136 () Bool)

(assert (=> b!3647058 (=> (not res!1479136) (not e!2257792))))

(assert (=> b!3647058 (= res!1479136 (= (++!9566 (list!14240 (charsOf!3764 (_1!22290 (get!12614 lt!1264039)))) (_2!22290 (get!12614 lt!1264039))) lt!1263703))))

(declare-fun b!3647059 () Bool)

(declare-fun res!1479135 () Bool)

(assert (=> b!3647059 (=> (not res!1479135) (not e!2257792))))

(assert (=> b!3647059 (= res!1479135 (< (size!29349 (_2!22290 (get!12614 lt!1264039))) (size!29349 lt!1263703)))))

(declare-fun b!3647060 () Bool)

(declare-fun res!1479137 () Bool)

(assert (=> b!3647060 (=> (not res!1479137) (not e!2257792))))

(assert (=> b!3647060 (= res!1479137 (= (value!184335 (_1!22290 (get!12614 lt!1264039))) (apply!9252 (transformation!5750 (rule!8542 (_1!22290 (get!12614 lt!1264039)))) (seqFromList!4299 (originalCharacters!6464 (_1!22290 (get!12614 lt!1264039)))))))))

(declare-fun b!3647061 () Bool)

(assert (=> b!3647061 (= e!2257794 (Some!8128 (tuple2!38313 (Token!10867 (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) (seqFromList!4299 (_1!22293 lt!1264041))) (rule!8542 (_1!22290 lt!1263731)) (size!29348 (seqFromList!4299 (_1!22293 lt!1264041))) (_1!22293 lt!1264041)) (_2!22293 lt!1264041))))))

(declare-fun lt!1264040 () Unit!55344)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1019 (Regex!10509 List!38566) Unit!55344)

(assert (=> b!3647061 (= lt!1264040 (longestMatchIsAcceptedByMatchOrIsEmpty!1019 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) lt!1263703))))

(declare-fun res!1479133 () Bool)

(declare-fun findLongestMatchInner!1046 (Regex!10509 List!38566 Int List!38566 List!38566 Int) tuple2!38318)

(assert (=> b!3647061 (= res!1479133 (isEmpty!22773 (_1!22293 (findLongestMatchInner!1046 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) Nil!38442 (size!29349 Nil!38442) lt!1263703 lt!1263703 (size!29349 lt!1263703)))))))

(declare-fun e!2257793 () Bool)

(assert (=> b!3647061 (=> res!1479133 e!2257793)))

(assert (=> b!3647061 e!2257793))

(declare-fun lt!1264043 () Unit!55344)

(assert (=> b!3647061 (= lt!1264043 lt!1264040)))

(declare-fun lt!1264042 () Unit!55344)

(assert (=> b!3647061 (= lt!1264042 (lemmaSemiInverse!1499 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) (seqFromList!4299 (_1!22293 lt!1264041))))))

(declare-fun b!3647062 () Bool)

(assert (=> b!3647062 (= e!2257793 (matchR!5078 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) (_1!22293 (findLongestMatchInner!1046 (regex!5750 (rule!8542 (_1!22290 lt!1263731))) Nil!38442 (size!29349 Nil!38442) lt!1263703 lt!1263703 (size!29349 lt!1263703)))))))

(declare-fun b!3647063 () Bool)

(declare-fun res!1479132 () Bool)

(assert (=> b!3647063 (=> (not res!1479132) (not e!2257792))))

(assert (=> b!3647063 (= res!1479132 (= (rule!8542 (_1!22290 (get!12614 lt!1264039))) (rule!8542 (_1!22290 lt!1263731))))))

(declare-fun b!3647064 () Bool)

(assert (=> b!3647064 (= e!2257794 None!8128)))

(assert (= (and d!1071952 c!630432) b!3647064))

(assert (= (and d!1071952 (not c!630432)) b!3647061))

(assert (= (and b!3647061 (not res!1479133)) b!3647062))

(assert (= (and d!1071952 (not res!1479138)) b!3647056))

(assert (= (and b!3647056 res!1479134) b!3647058))

(assert (= (and b!3647058 res!1479136) b!3647059))

(assert (= (and b!3647059 res!1479135) b!3647063))

(assert (= (and b!3647063 res!1479132) b!3647060))

(assert (= (and b!3647060 res!1479137) b!3647057))

(declare-fun m!4151103 () Bool)

(assert (=> b!3647059 m!4151103))

(declare-fun m!4151105 () Bool)

(assert (=> b!3647059 m!4151105))

(assert (=> b!3647059 m!4150791))

(declare-fun m!4151107 () Bool)

(assert (=> b!3647062 m!4151107))

(assert (=> b!3647062 m!4150791))

(assert (=> b!3647062 m!4151107))

(assert (=> b!3647062 m!4150791))

(declare-fun m!4151109 () Bool)

(assert (=> b!3647062 m!4151109))

(declare-fun m!4151111 () Bool)

(assert (=> b!3647062 m!4151111))

(assert (=> b!3647057 m!4151103))

(declare-fun m!4151113 () Bool)

(assert (=> b!3647057 m!4151113))

(declare-fun m!4151115 () Bool)

(assert (=> b!3647061 m!4151115))

(declare-fun m!4151117 () Bool)

(assert (=> b!3647061 m!4151117))

(declare-fun m!4151119 () Bool)

(assert (=> b!3647061 m!4151119))

(declare-fun m!4151121 () Bool)

(assert (=> b!3647061 m!4151121))

(assert (=> b!3647061 m!4151117))

(declare-fun m!4151123 () Bool)

(assert (=> b!3647061 m!4151123))

(assert (=> b!3647061 m!4151107))

(assert (=> b!3647061 m!4150791))

(assert (=> b!3647061 m!4151109))

(assert (=> b!3647061 m!4150791))

(assert (=> b!3647061 m!4151117))

(declare-fun m!4151125 () Bool)

(assert (=> b!3647061 m!4151125))

(assert (=> b!3647061 m!4151107))

(assert (=> b!3647061 m!4151117))

(assert (=> b!3647060 m!4151103))

(declare-fun m!4151127 () Bool)

(assert (=> b!3647060 m!4151127))

(assert (=> b!3647060 m!4151127))

(declare-fun m!4151129 () Bool)

(assert (=> b!3647060 m!4151129))

(declare-fun m!4151131 () Bool)

(assert (=> d!1071952 m!4151131))

(declare-fun m!4151133 () Bool)

(assert (=> d!1071952 m!4151133))

(declare-fun m!4151135 () Bool)

(assert (=> d!1071952 m!4151135))

(declare-fun m!4151137 () Bool)

(assert (=> d!1071952 m!4151137))

(assert (=> b!3647063 m!4151103))

(assert (=> b!3647058 m!4151103))

(declare-fun m!4151139 () Bool)

(assert (=> b!3647058 m!4151139))

(assert (=> b!3647058 m!4151139))

(declare-fun m!4151141 () Bool)

(assert (=> b!3647058 m!4151141))

(assert (=> b!3647058 m!4151141))

(declare-fun m!4151143 () Bool)

(assert (=> b!3647058 m!4151143))

(assert (=> b!3647056 m!4151103))

(assert (=> b!3647056 m!4151139))

(assert (=> b!3647056 m!4151139))

(assert (=> b!3647056 m!4151141))

(assert (=> b!3647056 m!4151141))

(declare-fun m!4151145 () Bool)

(assert (=> b!3647056 m!4151145))

(assert (=> b!3646402 d!1071952))

(declare-fun d!1071958 () Bool)

(assert (=> d!1071958 (= (maxPrefixOneRule!2011 thiss!23823 (rule!8542 (_1!22290 lt!1263731)) lt!1263703) (Some!8128 (tuple2!38313 (Token!10867 (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) (seqFromList!4299 lt!1263711)) (rule!8542 (_1!22290 lt!1263731)) (size!29349 lt!1263711) lt!1263711) (_2!22290 lt!1263731))))))

(declare-fun lt!1264046 () Unit!55344)

(declare-fun choose!21478 (LexerInterface!5339 List!38567 List!38566 List!38566 List!38566 Rule!11300) Unit!55344)

(assert (=> d!1071958 (= lt!1264046 (choose!21478 thiss!23823 rules!3307 lt!1263711 lt!1263703 (_2!22290 lt!1263731) (rule!8542 (_1!22290 lt!1263731))))))

(assert (=> d!1071958 (not (isEmpty!22772 rules!3307))))

(assert (=> d!1071958 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1067 thiss!23823 rules!3307 lt!1263711 lt!1263703 (_2!22290 lt!1263731) (rule!8542 (_1!22290 lt!1263731))) lt!1264046)))

(declare-fun bs!572132 () Bool)

(assert (= bs!572132 d!1071958))

(assert (=> bs!572132 m!4150221))

(assert (=> bs!572132 m!4150231))

(assert (=> bs!572132 m!4150221))

(assert (=> bs!572132 m!4150223))

(assert (=> bs!572132 m!4150227))

(assert (=> bs!572132 m!4150207))

(declare-fun m!4151147 () Bool)

(assert (=> bs!572132 m!4151147))

(assert (=> b!3646402 d!1071958))

(declare-fun d!1071960 () Bool)

(declare-fun lt!1264049 () List!38566)

(assert (=> d!1071960 (= (++!9566 lt!1263711 lt!1264049) lt!1263703)))

(declare-fun e!2257798 () List!38566)

(assert (=> d!1071960 (= lt!1264049 e!2257798)))

(declare-fun c!630435 () Bool)

(assert (=> d!1071960 (= c!630435 ((_ is Cons!38442) lt!1263711))))

(assert (=> d!1071960 (>= (size!29349 lt!1263703) (size!29349 lt!1263711))))

(assert (=> d!1071960 (= (getSuffix!1666 lt!1263703 lt!1263711) lt!1264049)))

(declare-fun b!3647069 () Bool)

(assert (=> b!3647069 (= e!2257798 (getSuffix!1666 (tail!5649 lt!1263703) (t!297069 lt!1263711)))))

(declare-fun b!3647070 () Bool)

(assert (=> b!3647070 (= e!2257798 lt!1263703)))

(assert (= (and d!1071960 c!630435) b!3647069))

(assert (= (and d!1071960 (not c!630435)) b!3647070))

(declare-fun m!4151149 () Bool)

(assert (=> d!1071960 m!4151149))

(assert (=> d!1071960 m!4150791))

(assert (=> d!1071960 m!4150231))

(assert (=> b!3647069 m!4151007))

(assert (=> b!3647069 m!4151007))

(declare-fun m!4151151 () Bool)

(assert (=> b!3647069 m!4151151))

(assert (=> b!3646402 d!1071960))

(declare-fun d!1071962 () Bool)

(assert (=> d!1071962 (= (apply!9252 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))) (seqFromList!4299 lt!1263711)) (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (seqFromList!4299 lt!1263711)))))

(declare-fun b_lambda!108155 () Bool)

(assert (=> (not b_lambda!108155) (not d!1071962)))

(declare-fun t!297172 () Bool)

(declare-fun tb!210361 () Bool)

(assert (=> (and b!3646393 (= (toValue!8042 (transformation!5750 rule!403)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297172) tb!210361))

(declare-fun result!256176 () Bool)

(assert (=> tb!210361 (= result!256176 (inv!21 (dynLambda!16748 (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731)))) (seqFromList!4299 lt!1263711))))))

(declare-fun m!4151153 () Bool)

(assert (=> tb!210361 m!4151153))

(assert (=> d!1071962 t!297172))

(declare-fun b_and!269455 () Bool)

(assert (= b_and!269387 (and (=> t!297172 result!256176) b_and!269455)))

(declare-fun t!297174 () Bool)

(declare-fun tb!210363 () Bool)

(assert (=> (and b!3646407 (= (toValue!8042 (transformation!5750 (rule!8542 token!511))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297174) tb!210363))

(declare-fun result!256178 () Bool)

(assert (= result!256178 result!256176))

(assert (=> d!1071962 t!297174))

(declare-fun b_and!269457 () Bool)

(assert (= b_and!269389 (and (=> t!297174 result!256178) b_and!269457)))

(declare-fun t!297176 () Bool)

(declare-fun tb!210365 () Bool)

(assert (=> (and b!3646388 (= (toValue!8042 (transformation!5750 anOtherTypeRule!33)) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297176) tb!210365))

(declare-fun result!256180 () Bool)

(assert (= result!256180 result!256176))

(assert (=> d!1071962 t!297176))

(declare-fun b_and!269459 () Bool)

(assert (= b_and!269391 (and (=> t!297176 result!256180) b_and!269459)))

(declare-fun t!297178 () Bool)

(declare-fun tb!210367 () Bool)

(assert (=> (and b!3646415 (= (toValue!8042 (transformation!5750 (h!43863 rules!3307))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297178) tb!210367))

(declare-fun result!256182 () Bool)

(assert (= result!256182 result!256176))

(assert (=> d!1071962 t!297178))

(declare-fun b_and!269461 () Bool)

(assert (= b_and!269393 (and (=> t!297178 result!256182) b_and!269461)))

(assert (=> d!1071962 m!4150221))

(declare-fun m!4151155 () Bool)

(assert (=> d!1071962 m!4151155))

(assert (=> b!3646402 d!1071962))

(declare-fun d!1071964 () Bool)

(assert (=> d!1071964 (= (seqFromList!4299 lt!1263711) (fromListB!1986 lt!1263711))))

(declare-fun bs!572133 () Bool)

(assert (= bs!572133 d!1071964))

(declare-fun m!4151157 () Bool)

(assert (=> bs!572133 m!4151157))

(assert (=> b!3646402 d!1071964))

(declare-fun d!1071966 () Bool)

(declare-fun lt!1264052 () Int)

(assert (=> d!1071966 (>= lt!1264052 0)))

(declare-fun e!2257802 () Int)

(assert (=> d!1071966 (= lt!1264052 e!2257802)))

(declare-fun c!630438 () Bool)

(assert (=> d!1071966 (= c!630438 ((_ is Nil!38442) lt!1263711))))

(assert (=> d!1071966 (= (size!29349 lt!1263711) lt!1264052)))

(declare-fun b!3647075 () Bool)

(assert (=> b!3647075 (= e!2257802 0)))

(declare-fun b!3647076 () Bool)

(assert (=> b!3647076 (= e!2257802 (+ 1 (size!29349 (t!297069 lt!1263711))))))

(assert (= (and d!1071966 c!630438) b!3647075))

(assert (= (and d!1071966 (not c!630438)) b!3647076))

(declare-fun m!4151159 () Bool)

(assert (=> b!3647076 m!4151159))

(assert (=> b!3646402 d!1071966))

(declare-fun d!1071968 () Bool)

(assert (=> d!1071968 (= (_2!22290 lt!1263731) lt!1263734)))

(declare-fun lt!1264055 () Unit!55344)

(declare-fun choose!21480 (List!38566 List!38566 List!38566 List!38566 List!38566) Unit!55344)

(assert (=> d!1071968 (= lt!1264055 (choose!21480 lt!1263711 (_2!22290 lt!1263731) lt!1263711 lt!1263734 lt!1263703))))

(assert (=> d!1071968 (isPrefix!3113 lt!1263711 lt!1263703)))

(assert (=> d!1071968 (= (lemmaSamePrefixThenSameSuffix!1440 lt!1263711 (_2!22290 lt!1263731) lt!1263711 lt!1263734 lt!1263703) lt!1264055)))

(declare-fun bs!572134 () Bool)

(assert (= bs!572134 d!1071968))

(declare-fun m!4151161 () Bool)

(assert (=> bs!572134 m!4151161))

(assert (=> bs!572134 m!4150301))

(assert (=> b!3646402 d!1071968))

(declare-fun d!1071970 () Bool)

(declare-fun res!1479143 () Bool)

(declare-fun e!2257805 () Bool)

(assert (=> d!1071970 (=> (not res!1479143) (not e!2257805))))

(assert (=> d!1071970 (= res!1479143 (not (isEmpty!22773 (originalCharacters!6464 token!511))))))

(assert (=> d!1071970 (= (inv!51886 token!511) e!2257805)))

(declare-fun b!3647081 () Bool)

(declare-fun res!1479144 () Bool)

(assert (=> b!3647081 (=> (not res!1479144) (not e!2257805))))

(assert (=> b!3647081 (= res!1479144 (= (originalCharacters!6464 token!511) (list!14240 (dynLambda!16747 (toChars!7901 (transformation!5750 (rule!8542 token!511))) (value!184335 token!511)))))))

(declare-fun b!3647082 () Bool)

(assert (=> b!3647082 (= e!2257805 (= (size!29347 token!511) (size!29349 (originalCharacters!6464 token!511))))))

(assert (= (and d!1071970 res!1479143) b!3647081))

(assert (= (and b!3647081 res!1479144) b!3647082))

(declare-fun b_lambda!108157 () Bool)

(assert (=> (not b_lambda!108157) (not b!3647081)))

(assert (=> b!3647081 t!297088))

(declare-fun b_and!269463 () Bool)

(assert (= b_and!269443 (and (=> t!297088 result!256080) b_and!269463)))

(assert (=> b!3647081 t!297090))

(declare-fun b_and!269465 () Bool)

(assert (= b_and!269445 (and (=> t!297090 result!256084) b_and!269465)))

(assert (=> b!3647081 t!297092))

(declare-fun b_and!269467 () Bool)

(assert (= b_and!269447 (and (=> t!297092 result!256086) b_and!269467)))

(assert (=> b!3647081 t!297094))

(declare-fun b_and!269469 () Bool)

(assert (= b_and!269449 (and (=> t!297094 result!256088) b_and!269469)))

(declare-fun m!4151163 () Bool)

(assert (=> d!1071970 m!4151163))

(assert (=> b!3647081 m!4150579))

(assert (=> b!3647081 m!4150579))

(declare-fun m!4151165 () Bool)

(assert (=> b!3647081 m!4151165))

(declare-fun m!4151167 () Bool)

(assert (=> b!3647082 m!4151167))

(assert (=> start!340794 d!1071970))

(declare-fun d!1071972 () Bool)

(declare-fun lt!1264058 () Bool)

(declare-fun content!5543 (List!38567) (InoxSet Rule!11300))

(assert (=> d!1071972 (= lt!1264058 (select (content!5543 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2257811 () Bool)

(assert (=> d!1071972 (= lt!1264058 e!2257811)))

(declare-fun res!1479149 () Bool)

(assert (=> d!1071972 (=> (not res!1479149) (not e!2257811))))

(assert (=> d!1071972 (= res!1479149 ((_ is Cons!38443) rules!3307))))

(assert (=> d!1071972 (= (contains!7566 rules!3307 anOtherTypeRule!33) lt!1264058)))

(declare-fun b!3647087 () Bool)

(declare-fun e!2257810 () Bool)

(assert (=> b!3647087 (= e!2257811 e!2257810)))

(declare-fun res!1479150 () Bool)

(assert (=> b!3647087 (=> res!1479150 e!2257810)))

(assert (=> b!3647087 (= res!1479150 (= (h!43863 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3647088 () Bool)

(assert (=> b!3647088 (= e!2257810 (contains!7566 (t!297070 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1071972 res!1479149) b!3647087))

(assert (= (and b!3647087 (not res!1479150)) b!3647088))

(declare-fun m!4151169 () Bool)

(assert (=> d!1071972 m!4151169))

(declare-fun m!4151171 () Bool)

(assert (=> d!1071972 m!4151171))

(declare-fun m!4151173 () Bool)

(assert (=> b!3647088 m!4151173))

(assert (=> b!3646404 d!1071972))

(declare-fun d!1071974 () Bool)

(assert (=> d!1071974 (= (isEmpty!22772 rules!3307) ((_ is Nil!38443) rules!3307))))

(assert (=> b!3646403 d!1071974))

(declare-fun d!1071976 () Bool)

(declare-fun lt!1264059 () Bool)

(assert (=> d!1071976 (= lt!1264059 (select (content!5542 call!263516) lt!1263710))))

(declare-fun e!2257813 () Bool)

(assert (=> d!1071976 (= lt!1264059 e!2257813)))

(declare-fun res!1479151 () Bool)

(assert (=> d!1071976 (=> (not res!1479151) (not e!2257813))))

(assert (=> d!1071976 (= res!1479151 ((_ is Cons!38442) call!263516))))

(assert (=> d!1071976 (= (contains!7565 call!263516 lt!1263710) lt!1264059)))

(declare-fun b!3647089 () Bool)

(declare-fun e!2257812 () Bool)

(assert (=> b!3647089 (= e!2257813 e!2257812)))

(declare-fun res!1479152 () Bool)

(assert (=> b!3647089 (=> res!1479152 e!2257812)))

(assert (=> b!3647089 (= res!1479152 (= (h!43862 call!263516) lt!1263710))))

(declare-fun b!3647090 () Bool)

(assert (=> b!3647090 (= e!2257812 (contains!7565 (t!297069 call!263516) lt!1263710))))

(assert (= (and d!1071976 res!1479151) b!3647089))

(assert (= (and b!3647089 (not res!1479152)) b!3647090))

(declare-fun m!4151175 () Bool)

(assert (=> d!1071976 m!4151175))

(declare-fun m!4151177 () Bool)

(assert (=> d!1071976 m!4151177))

(declare-fun m!4151179 () Bool)

(assert (=> b!3647090 m!4151179))

(assert (=> bm!263511 d!1071976))

(declare-fun d!1071978 () Bool)

(declare-fun lt!1264060 () Int)

(assert (=> d!1071978 (>= lt!1264060 0)))

(declare-fun e!2257814 () Int)

(assert (=> d!1071978 (= lt!1264060 e!2257814)))

(declare-fun c!630439 () Bool)

(assert (=> d!1071978 (= c!630439 ((_ is Nil!38442) lt!1263730))))

(assert (=> d!1071978 (= (size!29349 lt!1263730) lt!1264060)))

(declare-fun b!3647091 () Bool)

(assert (=> b!3647091 (= e!2257814 0)))

(declare-fun b!3647092 () Bool)

(assert (=> b!3647092 (= e!2257814 (+ 1 (size!29349 (t!297069 lt!1263730))))))

(assert (= (and d!1071978 c!630439) b!3647091))

(assert (= (and d!1071978 (not c!630439)) b!3647092))

(declare-fun m!4151181 () Bool)

(assert (=> b!3647092 m!4151181))

(assert (=> b!3646426 d!1071978))

(declare-fun d!1071980 () Bool)

(assert (=> d!1071980 (= (isEmpty!22773 suffix!1395) ((_ is Nil!38442) suffix!1395))))

(assert (=> b!3646406 d!1071980))

(declare-fun bm!263559 () Bool)

(declare-fun call!263567 () List!38566)

(declare-fun call!263564 () List!38566)

(assert (=> bm!263559 (= call!263567 call!263564)))

(declare-fun b!3647109 () Bool)

(declare-fun e!2257824 () List!38566)

(assert (=> b!3647109 (= e!2257824 (Cons!38442 (c!630318 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) Nil!38442))))

(declare-fun b!3647110 () Bool)

(declare-fun e!2257826 () List!38566)

(declare-fun call!263566 () List!38566)

(assert (=> b!3647110 (= e!2257826 call!263566)))

(declare-fun b!3647111 () Bool)

(declare-fun e!2257823 () List!38566)

(assert (=> b!3647111 (= e!2257823 e!2257824)))

(declare-fun c!630449 () Bool)

(assert (=> b!3647111 (= c!630449 ((_ is ElementMatch!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun bm!263560 () Bool)

(declare-fun call!263565 () List!38566)

(declare-fun c!630450 () Bool)

(assert (=> bm!263560 (= call!263565 (usedCharacters!962 (ite c!630450 (regTwo!21531 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) (regOne!21530 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))))

(declare-fun b!3647112 () Bool)

(declare-fun c!630451 () Bool)

(assert (=> b!3647112 (= c!630451 ((_ is Star!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun e!2257825 () List!38566)

(assert (=> b!3647112 (= e!2257824 e!2257825)))

(declare-fun d!1071982 () Bool)

(declare-fun c!630448 () Bool)

(assert (=> d!1071982 (= c!630448 (or ((_ is EmptyExpr!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) ((_ is EmptyLang!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))))

(assert (=> d!1071982 (= (usedCharacters!962 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) e!2257823)))

(declare-fun b!3647113 () Bool)

(assert (=> b!3647113 (= e!2257825 e!2257826)))

(assert (=> b!3647113 (= c!630450 ((_ is Union!10509) (regex!5750 (rule!8542 (_1!22290 lt!1263731)))))))

(declare-fun b!3647114 () Bool)

(assert (=> b!3647114 (= e!2257823 Nil!38442)))

(declare-fun bm!263561 () Bool)

(assert (=> bm!263561 (= call!263566 (++!9566 (ite c!630450 call!263567 call!263565) (ite c!630450 call!263565 call!263567)))))

(declare-fun b!3647115 () Bool)

(assert (=> b!3647115 (= e!2257826 call!263566)))

(declare-fun b!3647116 () Bool)

(assert (=> b!3647116 (= e!2257825 call!263564)))

(declare-fun bm!263562 () Bool)

(assert (=> bm!263562 (= call!263564 (usedCharacters!962 (ite c!630451 (reg!10838 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) (ite c!630450 (regOne!21531 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) (regTwo!21530 (regex!5750 (rule!8542 (_1!22290 lt!1263731))))))))))

(assert (= (and d!1071982 c!630448) b!3647114))

(assert (= (and d!1071982 (not c!630448)) b!3647111))

(assert (= (and b!3647111 c!630449) b!3647109))

(assert (= (and b!3647111 (not c!630449)) b!3647112))

(assert (= (and b!3647112 c!630451) b!3647116))

(assert (= (and b!3647112 (not c!630451)) b!3647113))

(assert (= (and b!3647113 c!630450) b!3647110))

(assert (= (and b!3647113 (not c!630450)) b!3647115))

(assert (= (or b!3647110 b!3647115) bm!263559))

(assert (= (or b!3647110 b!3647115) bm!263560))

(assert (= (or b!3647110 b!3647115) bm!263561))

(assert (= (or b!3647116 bm!263559) bm!263562))

(declare-fun m!4151183 () Bool)

(assert (=> bm!263560 m!4151183))

(declare-fun m!4151185 () Bool)

(assert (=> bm!263561 m!4151185))

(declare-fun m!4151187 () Bool)

(assert (=> bm!263562 m!4151187))

(assert (=> bm!263513 d!1071982))

(declare-fun d!1071984 () Bool)

(assert (=> d!1071984 (not (contains!7565 (usedCharacters!962 (regex!5750 (rule!8542 (_1!22290 lt!1263731)))) lt!1263710))))

(declare-fun lt!1264063 () Unit!55344)

(declare-fun choose!21482 (LexerInterface!5339 List!38567 List!38567 Rule!11300 Rule!11300 C!21204) Unit!55344)

(assert (=> d!1071984 (= lt!1264063 (choose!21482 thiss!23823 rules!3307 rules!3307 (rule!8542 (_1!22290 lt!1263731)) rule!403 lt!1263710))))

(assert (=> d!1071984 (rulesInvariant!4736 thiss!23823 rules!3307)))

(assert (=> d!1071984 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!396 thiss!23823 rules!3307 rules!3307 (rule!8542 (_1!22290 lt!1263731)) rule!403 lt!1263710) lt!1264063)))

(declare-fun bs!572135 () Bool)

(assert (= bs!572135 d!1071984))

(assert (=> bs!572135 m!4150333))

(assert (=> bs!572135 m!4150333))

(assert (=> bs!572135 m!4150643))

(declare-fun m!4151189 () Bool)

(assert (=> bs!572135 m!4151189))

(assert (=> bs!572135 m!4150283))

(assert (=> b!3646387 d!1071984))

(declare-fun d!1071986 () Bool)

(assert (=> d!1071986 (not (matchR!5078 (regex!5750 rule!403) lt!1263730))))

(declare-fun lt!1264064 () Unit!55344)

(assert (=> d!1071986 (= lt!1264064 (choose!21469 (regex!5750 rule!403) lt!1263730 lt!1263710))))

(assert (=> d!1071986 (validRegex!4813 (regex!5750 rule!403))))

(assert (=> d!1071986 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!698 (regex!5750 rule!403) lt!1263730 lt!1263710) lt!1264064)))

(declare-fun bs!572136 () Bool)

(assert (= bs!572136 d!1071986))

(assert (=> bs!572136 m!4150253))

(declare-fun m!4151191 () Bool)

(assert (=> bs!572136 m!4151191))

(assert (=> bs!572136 m!4150675))

(assert (=> b!3646408 d!1071986))

(declare-fun d!1071988 () Bool)

(declare-fun lt!1264065 () Bool)

(assert (=> d!1071988 (= lt!1264065 (select (content!5542 (usedCharacters!962 (regex!5750 anOtherTypeRule!33))) lt!1263715))))

(declare-fun e!2257828 () Bool)

(assert (=> d!1071988 (= lt!1264065 e!2257828)))

(declare-fun res!1479153 () Bool)

(assert (=> d!1071988 (=> (not res!1479153) (not e!2257828))))

(assert (=> d!1071988 (= res!1479153 ((_ is Cons!38442) (usedCharacters!962 (regex!5750 anOtherTypeRule!33))))))

(assert (=> d!1071988 (= (contains!7565 (usedCharacters!962 (regex!5750 anOtherTypeRule!33)) lt!1263715) lt!1264065)))

(declare-fun b!3647117 () Bool)

(declare-fun e!2257827 () Bool)

(assert (=> b!3647117 (= e!2257828 e!2257827)))

(declare-fun res!1479154 () Bool)

(assert (=> b!3647117 (=> res!1479154 e!2257827)))

(assert (=> b!3647117 (= res!1479154 (= (h!43862 (usedCharacters!962 (regex!5750 anOtherTypeRule!33))) lt!1263715))))

(declare-fun b!3647118 () Bool)

(assert (=> b!3647118 (= e!2257827 (contains!7565 (t!297069 (usedCharacters!962 (regex!5750 anOtherTypeRule!33))) lt!1263715))))

(assert (= (and d!1071988 res!1479153) b!3647117))

(assert (= (and b!3647117 (not res!1479154)) b!3647118))

(assert (=> d!1071988 m!4150319))

(declare-fun m!4151193 () Bool)

(assert (=> d!1071988 m!4151193))

(declare-fun m!4151195 () Bool)

(assert (=> d!1071988 m!4151195))

(declare-fun m!4151197 () Bool)

(assert (=> b!3647118 m!4151197))

(assert (=> b!3646389 d!1071988))

(declare-fun bm!263563 () Bool)

(declare-fun call!263571 () List!38566)

(declare-fun call!263568 () List!38566)

(assert (=> bm!263563 (= call!263571 call!263568)))

(declare-fun b!3647119 () Bool)

(declare-fun e!2257830 () List!38566)

(assert (=> b!3647119 (= e!2257830 (Cons!38442 (c!630318 (regex!5750 anOtherTypeRule!33)) Nil!38442))))

(declare-fun b!3647120 () Bool)

(declare-fun e!2257832 () List!38566)

(declare-fun call!263570 () List!38566)

(assert (=> b!3647120 (= e!2257832 call!263570)))

(declare-fun b!3647121 () Bool)

(declare-fun e!2257829 () List!38566)

(assert (=> b!3647121 (= e!2257829 e!2257830)))

(declare-fun c!630454 () Bool)

(assert (=> b!3647121 (= c!630454 ((_ is ElementMatch!10509) (regex!5750 anOtherTypeRule!33)))))

(declare-fun bm!263564 () Bool)

(declare-fun call!263569 () List!38566)

(declare-fun c!630455 () Bool)

(assert (=> bm!263564 (= call!263569 (usedCharacters!962 (ite c!630455 (regTwo!21531 (regex!5750 anOtherTypeRule!33)) (regOne!21530 (regex!5750 anOtherTypeRule!33)))))))

(declare-fun b!3647122 () Bool)

(declare-fun c!630456 () Bool)

(assert (=> b!3647122 (= c!630456 ((_ is Star!10509) (regex!5750 anOtherTypeRule!33)))))

(declare-fun e!2257831 () List!38566)

(assert (=> b!3647122 (= e!2257830 e!2257831)))

(declare-fun d!1071990 () Bool)

(declare-fun c!630453 () Bool)

(assert (=> d!1071990 (= c!630453 (or ((_ is EmptyExpr!10509) (regex!5750 anOtherTypeRule!33)) ((_ is EmptyLang!10509) (regex!5750 anOtherTypeRule!33))))))

(assert (=> d!1071990 (= (usedCharacters!962 (regex!5750 anOtherTypeRule!33)) e!2257829)))

(declare-fun b!3647123 () Bool)

(assert (=> b!3647123 (= e!2257831 e!2257832)))

(assert (=> b!3647123 (= c!630455 ((_ is Union!10509) (regex!5750 anOtherTypeRule!33)))))

(declare-fun b!3647124 () Bool)

(assert (=> b!3647124 (= e!2257829 Nil!38442)))

(declare-fun bm!263565 () Bool)

(assert (=> bm!263565 (= call!263570 (++!9566 (ite c!630455 call!263571 call!263569) (ite c!630455 call!263569 call!263571)))))

(declare-fun b!3647125 () Bool)

(assert (=> b!3647125 (= e!2257832 call!263570)))

(declare-fun b!3647126 () Bool)

(assert (=> b!3647126 (= e!2257831 call!263568)))

(declare-fun bm!263566 () Bool)

(assert (=> bm!263566 (= call!263568 (usedCharacters!962 (ite c!630456 (reg!10838 (regex!5750 anOtherTypeRule!33)) (ite c!630455 (regOne!21531 (regex!5750 anOtherTypeRule!33)) (regTwo!21530 (regex!5750 anOtherTypeRule!33))))))))

(assert (= (and d!1071990 c!630453) b!3647124))

(assert (= (and d!1071990 (not c!630453)) b!3647121))

(assert (= (and b!3647121 c!630454) b!3647119))

(assert (= (and b!3647121 (not c!630454)) b!3647122))

(assert (= (and b!3647122 c!630456) b!3647126))

(assert (= (and b!3647122 (not c!630456)) b!3647123))

(assert (= (and b!3647123 c!630455) b!3647120))

(assert (= (and b!3647123 (not c!630455)) b!3647125))

(assert (= (or b!3647120 b!3647125) bm!263563))

(assert (= (or b!3647120 b!3647125) bm!263564))

(assert (= (or b!3647120 b!3647125) bm!263565))

(assert (= (or b!3647126 bm!263563) bm!263566))

(declare-fun m!4151199 () Bool)

(assert (=> bm!263564 m!4151199))

(declare-fun m!4151201 () Bool)

(assert (=> bm!263565 m!4151201))

(declare-fun m!4151203 () Bool)

(assert (=> bm!263566 m!4151203))

(assert (=> b!3646389 d!1071990))

(declare-fun d!1071992 () Bool)

(declare-fun lt!1264066 () Bool)

(assert (=> d!1071992 (= lt!1264066 (select (content!5542 lt!1263727) lt!1263715))))

(declare-fun e!2257834 () Bool)

(assert (=> d!1071992 (= lt!1264066 e!2257834)))

(declare-fun res!1479155 () Bool)

(assert (=> d!1071992 (=> (not res!1479155) (not e!2257834))))

(assert (=> d!1071992 (= res!1479155 ((_ is Cons!38442) lt!1263727))))

(assert (=> d!1071992 (= (contains!7565 lt!1263727 lt!1263715) lt!1264066)))

(declare-fun b!3647127 () Bool)

(declare-fun e!2257833 () Bool)

(assert (=> b!3647127 (= e!2257834 e!2257833)))

(declare-fun res!1479156 () Bool)

(assert (=> b!3647127 (=> res!1479156 e!2257833)))

(assert (=> b!3647127 (= res!1479156 (= (h!43862 lt!1263727) lt!1263715))))

(declare-fun b!3647128 () Bool)

(assert (=> b!3647128 (= e!2257833 (contains!7565 (t!297069 lt!1263727) lt!1263715))))

(assert (= (and d!1071992 res!1479155) b!3647127))

(assert (= (and b!3647127 (not res!1479156)) b!3647128))

(assert (=> d!1071992 m!4151039))

(declare-fun m!4151205 () Bool)

(assert (=> d!1071992 m!4151205))

(declare-fun m!4151207 () Bool)

(assert (=> b!3647128 m!4151207))

(assert (=> b!3646390 d!1071992))

(declare-fun d!1071994 () Bool)

(assert (=> d!1071994 (= (head!7758 suffix!1395) (h!43862 suffix!1395))))

(assert (=> b!3646390 d!1071994))

(declare-fun bm!263567 () Bool)

(declare-fun call!263575 () List!38566)

(declare-fun call!263572 () List!38566)

(assert (=> bm!263567 (= call!263575 call!263572)))

(declare-fun b!3647129 () Bool)

(declare-fun e!2257836 () List!38566)

(assert (=> b!3647129 (= e!2257836 (Cons!38442 (c!630318 (regex!5750 rule!403)) Nil!38442))))

(declare-fun b!3647130 () Bool)

(declare-fun e!2257838 () List!38566)

(declare-fun call!263574 () List!38566)

(assert (=> b!3647130 (= e!2257838 call!263574)))

(declare-fun b!3647131 () Bool)

(declare-fun e!2257835 () List!38566)

(assert (=> b!3647131 (= e!2257835 e!2257836)))

(declare-fun c!630458 () Bool)

(assert (=> b!3647131 (= c!630458 ((_ is ElementMatch!10509) (regex!5750 rule!403)))))

(declare-fun bm!263568 () Bool)

(declare-fun call!263573 () List!38566)

(declare-fun c!630459 () Bool)

(assert (=> bm!263568 (= call!263573 (usedCharacters!962 (ite c!630459 (regTwo!21531 (regex!5750 rule!403)) (regOne!21530 (regex!5750 rule!403)))))))

(declare-fun b!3647132 () Bool)

(declare-fun c!630460 () Bool)

(assert (=> b!3647132 (= c!630460 ((_ is Star!10509) (regex!5750 rule!403)))))

(declare-fun e!2257837 () List!38566)

(assert (=> b!3647132 (= e!2257836 e!2257837)))

(declare-fun d!1071996 () Bool)

(declare-fun c!630457 () Bool)

(assert (=> d!1071996 (= c!630457 (or ((_ is EmptyExpr!10509) (regex!5750 rule!403)) ((_ is EmptyLang!10509) (regex!5750 rule!403))))))

(assert (=> d!1071996 (= (usedCharacters!962 (regex!5750 rule!403)) e!2257835)))

(declare-fun b!3647133 () Bool)

(assert (=> b!3647133 (= e!2257837 e!2257838)))

(assert (=> b!3647133 (= c!630459 ((_ is Union!10509) (regex!5750 rule!403)))))

(declare-fun b!3647134 () Bool)

(assert (=> b!3647134 (= e!2257835 Nil!38442)))

(declare-fun bm!263569 () Bool)

(assert (=> bm!263569 (= call!263574 (++!9566 (ite c!630459 call!263575 call!263573) (ite c!630459 call!263573 call!263575)))))

(declare-fun b!3647135 () Bool)

(assert (=> b!3647135 (= e!2257838 call!263574)))

(declare-fun b!3647136 () Bool)

(assert (=> b!3647136 (= e!2257837 call!263572)))

(declare-fun bm!263570 () Bool)

(assert (=> bm!263570 (= call!263572 (usedCharacters!962 (ite c!630460 (reg!10838 (regex!5750 rule!403)) (ite c!630459 (regOne!21531 (regex!5750 rule!403)) (regTwo!21530 (regex!5750 rule!403))))))))

(assert (= (and d!1071996 c!630457) b!3647134))

(assert (= (and d!1071996 (not c!630457)) b!3647131))

(assert (= (and b!3647131 c!630458) b!3647129))

(assert (= (and b!3647131 (not c!630458)) b!3647132))

(assert (= (and b!3647132 c!630460) b!3647136))

(assert (= (and b!3647132 (not c!630460)) b!3647133))

(assert (= (and b!3647133 c!630459) b!3647130))

(assert (= (and b!3647133 (not c!630459)) b!3647135))

(assert (= (or b!3647130 b!3647135) bm!263567))

(assert (= (or b!3647130 b!3647135) bm!263568))

(assert (= (or b!3647130 b!3647135) bm!263569))

(assert (= (or b!3647136 bm!263567) bm!263570))

(declare-fun m!4151209 () Bool)

(assert (=> bm!263568 m!4151209))

(declare-fun m!4151211 () Bool)

(assert (=> bm!263569 m!4151211))

(declare-fun m!4151213 () Bool)

(assert (=> bm!263570 m!4151213))

(assert (=> b!3646390 d!1071996))

(declare-fun d!1071998 () Bool)

(declare-fun lt!1264067 () Bool)

(assert (=> d!1071998 (= lt!1264067 (select (content!5543 rules!3307) rule!403))))

(declare-fun e!2257840 () Bool)

(assert (=> d!1071998 (= lt!1264067 e!2257840)))

(declare-fun res!1479157 () Bool)

(assert (=> d!1071998 (=> (not res!1479157) (not e!2257840))))

(assert (=> d!1071998 (= res!1479157 ((_ is Cons!38443) rules!3307))))

(assert (=> d!1071998 (= (contains!7566 rules!3307 rule!403) lt!1264067)))

(declare-fun b!3647137 () Bool)

(declare-fun e!2257839 () Bool)

(assert (=> b!3647137 (= e!2257840 e!2257839)))

(declare-fun res!1479158 () Bool)

(assert (=> b!3647137 (=> res!1479158 e!2257839)))

(assert (=> b!3647137 (= res!1479158 (= (h!43863 rules!3307) rule!403))))

(declare-fun b!3647138 () Bool)

(assert (=> b!3647138 (= e!2257839 (contains!7566 (t!297070 rules!3307) rule!403))))

(assert (= (and d!1071998 res!1479157) b!3647137))

(assert (= (and b!3647137 (not res!1479158)) b!3647138))

(assert (=> d!1071998 m!4151169))

(declare-fun m!4151215 () Bool)

(assert (=> d!1071998 m!4151215))

(declare-fun m!4151217 () Bool)

(assert (=> b!3647138 m!4151217))

(assert (=> b!3646410 d!1071998))

(declare-fun b!3647139 () Bool)

(declare-fun e!2257844 () Bool)

(declare-fun lt!1264068 () Bool)

(assert (=> b!3647139 (= e!2257844 (not lt!1264068))))

(declare-fun b!3647140 () Bool)

(declare-fun e!2257846 () Bool)

(assert (=> b!3647140 (= e!2257846 e!2257844)))

(declare-fun c!630463 () Bool)

(assert (=> b!3647140 (= c!630463 ((_ is EmptyLang!10509) (regex!5750 lt!1263721)))))

(declare-fun b!3647141 () Bool)

(declare-fun res!1479164 () Bool)

(declare-fun e!2257842 () Bool)

(assert (=> b!3647141 (=> (not res!1479164) (not e!2257842))))

(assert (=> b!3647141 (= res!1479164 (isEmpty!22773 (tail!5649 (list!14240 (charsOf!3764 (_1!22290 lt!1263731))))))))

(declare-fun b!3647142 () Bool)

(declare-fun e!2257841 () Bool)

(assert (=> b!3647142 (= e!2257841 (matchR!5078 (derivativeStep!3200 (regex!5750 lt!1263721) (head!7758 (list!14240 (charsOf!3764 (_1!22290 lt!1263731))))) (tail!5649 (list!14240 (charsOf!3764 (_1!22290 lt!1263731))))))))

(declare-fun b!3647143 () Bool)

(declare-fun e!2257843 () Bool)

(assert (=> b!3647143 (= e!2257843 (not (= (head!7758 (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))) (c!630318 (regex!5750 lt!1263721)))))))

(declare-fun b!3647144 () Bool)

(declare-fun e!2257845 () Bool)

(assert (=> b!3647144 (= e!2257845 e!2257843)))

(declare-fun res!1479161 () Bool)

(assert (=> b!3647144 (=> res!1479161 e!2257843)))

(declare-fun call!263576 () Bool)

(assert (=> b!3647144 (= res!1479161 call!263576)))

(declare-fun d!1072000 () Bool)

(assert (=> d!1072000 e!2257846))

(declare-fun c!630462 () Bool)

(assert (=> d!1072000 (= c!630462 ((_ is EmptyExpr!10509) (regex!5750 lt!1263721)))))

(assert (=> d!1072000 (= lt!1264068 e!2257841)))

(declare-fun c!630461 () Bool)

(assert (=> d!1072000 (= c!630461 (isEmpty!22773 (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))))))

(assert (=> d!1072000 (validRegex!4813 (regex!5750 lt!1263721))))

(assert (=> d!1072000 (= (matchR!5078 (regex!5750 lt!1263721) (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))) lt!1264068)))

(declare-fun b!3647145 () Bool)

(declare-fun res!1479163 () Bool)

(declare-fun e!2257847 () Bool)

(assert (=> b!3647145 (=> res!1479163 e!2257847)))

(assert (=> b!3647145 (= res!1479163 e!2257842)))

(declare-fun res!1479165 () Bool)

(assert (=> b!3647145 (=> (not res!1479165) (not e!2257842))))

(assert (=> b!3647145 (= res!1479165 lt!1264068)))

(declare-fun b!3647146 () Bool)

(assert (=> b!3647146 (= e!2257847 e!2257845)))

(declare-fun res!1479160 () Bool)

(assert (=> b!3647146 (=> (not res!1479160) (not e!2257845))))

(assert (=> b!3647146 (= res!1479160 (not lt!1264068))))

(declare-fun b!3647147 () Bool)

(assert (=> b!3647147 (= e!2257842 (= (head!7758 (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))) (c!630318 (regex!5750 lt!1263721))))))

(declare-fun b!3647148 () Bool)

(assert (=> b!3647148 (= e!2257846 (= lt!1264068 call!263576))))

(declare-fun b!3647149 () Bool)

(declare-fun res!1479166 () Bool)

(assert (=> b!3647149 (=> (not res!1479166) (not e!2257842))))

(assert (=> b!3647149 (= res!1479166 (not call!263576))))

(declare-fun b!3647150 () Bool)

(declare-fun res!1479162 () Bool)

(assert (=> b!3647150 (=> res!1479162 e!2257843)))

(assert (=> b!3647150 (= res!1479162 (not (isEmpty!22773 (tail!5649 (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))))))))

(declare-fun b!3647151 () Bool)

(assert (=> b!3647151 (= e!2257841 (nullable!3651 (regex!5750 lt!1263721)))))

(declare-fun b!3647152 () Bool)

(declare-fun res!1479159 () Bool)

(assert (=> b!3647152 (=> res!1479159 e!2257847)))

(assert (=> b!3647152 (= res!1479159 (not ((_ is ElementMatch!10509) (regex!5750 lt!1263721))))))

(assert (=> b!3647152 (= e!2257844 e!2257847)))

(declare-fun bm!263571 () Bool)

(assert (=> bm!263571 (= call!263576 (isEmpty!22773 (list!14240 (charsOf!3764 (_1!22290 lt!1263731)))))))

(assert (= (and d!1072000 c!630461) b!3647151))

(assert (= (and d!1072000 (not c!630461)) b!3647142))

(assert (= (and d!1072000 c!630462) b!3647148))

(assert (= (and d!1072000 (not c!630462)) b!3647140))

(assert (= (and b!3647140 c!630463) b!3647139))

(assert (= (and b!3647140 (not c!630463)) b!3647152))

(assert (= (and b!3647152 (not res!1479159)) b!3647145))

(assert (= (and b!3647145 res!1479165) b!3647149))

(assert (= (and b!3647149 res!1479166) b!3647141))

(assert (= (and b!3647141 res!1479164) b!3647147))

(assert (= (and b!3647145 (not res!1479163)) b!3647146))

(assert (= (and b!3647146 res!1479160) b!3647144))

(assert (= (and b!3647144 (not res!1479161)) b!3647150))

(assert (= (and b!3647150 (not res!1479162)) b!3647143))

(assert (= (or b!3647148 b!3647144 b!3647149) bm!263571))

(assert (=> b!3647141 m!4150215))

(declare-fun m!4151219 () Bool)

(assert (=> b!3647141 m!4151219))

(assert (=> b!3647141 m!4151219))

(declare-fun m!4151221 () Bool)

(assert (=> b!3647141 m!4151221))

(assert (=> bm!263571 m!4150215))

(declare-fun m!4151223 () Bool)

(assert (=> bm!263571 m!4151223))

(assert (=> b!3647142 m!4150215))

(declare-fun m!4151225 () Bool)

(assert (=> b!3647142 m!4151225))

(assert (=> b!3647142 m!4151225))

(declare-fun m!4151227 () Bool)

(assert (=> b!3647142 m!4151227))

(assert (=> b!3647142 m!4150215))

(assert (=> b!3647142 m!4151219))

(assert (=> b!3647142 m!4151227))

(assert (=> b!3647142 m!4151219))

(declare-fun m!4151229 () Bool)

(assert (=> b!3647142 m!4151229))

(assert (=> b!3647143 m!4150215))

(assert (=> b!3647143 m!4151225))

(declare-fun m!4151231 () Bool)

(assert (=> b!3647151 m!4151231))

(assert (=> d!1072000 m!4150215))

(assert (=> d!1072000 m!4151223))

(declare-fun m!4151233 () Bool)

(assert (=> d!1072000 m!4151233))

(assert (=> b!3647150 m!4150215))

(assert (=> b!3647150 m!4151219))

(assert (=> b!3647150 m!4151219))

(assert (=> b!3647150 m!4151221))

(assert (=> b!3647147 m!4150215))

(assert (=> b!3647147 m!4151225))

(assert (=> b!3646392 d!1072000))

(declare-fun d!1072002 () Bool)

(assert (=> d!1072002 (= (list!14240 (charsOf!3764 (_1!22290 lt!1263731))) (list!14241 (c!630319 (charsOf!3764 (_1!22290 lt!1263731)))))))

(declare-fun bs!572137 () Bool)

(assert (= bs!572137 d!1072002))

(declare-fun m!4151235 () Bool)

(assert (=> bs!572137 m!4151235))

(assert (=> b!3646392 d!1072002))

(assert (=> b!3646392 d!1071920))

(declare-fun d!1072004 () Bool)

(assert (=> d!1072004 (= (get!12613 lt!1263712) (v!37975 lt!1263712))))

(assert (=> b!3646392 d!1072004))

(declare-fun d!1072006 () Bool)

(assert (=> d!1072006 (= (isEmpty!22773 (_2!22290 lt!1263704)) ((_ is Nil!38442) (_2!22290 lt!1263704)))))

(assert (=> b!3646412 d!1072006))

(declare-fun d!1072008 () Bool)

(assert (=> d!1072008 (= (inv!51882 (tag!6508 rule!403)) (= (mod (str.len (value!184334 (tag!6508 rule!403))) 2) 0))))

(assert (=> b!3646413 d!1072008))

(declare-fun d!1072010 () Bool)

(declare-fun res!1479167 () Bool)

(declare-fun e!2257848 () Bool)

(assert (=> d!1072010 (=> (not res!1479167) (not e!2257848))))

(assert (=> d!1072010 (= res!1479167 (semiInverseModEq!2451 (toChars!7901 (transformation!5750 rule!403)) (toValue!8042 (transformation!5750 rule!403))))))

(assert (=> d!1072010 (= (inv!51885 (transformation!5750 rule!403)) e!2257848)))

(declare-fun b!3647153 () Bool)

(assert (=> b!3647153 (= e!2257848 (equivClasses!2350 (toChars!7901 (transformation!5750 rule!403)) (toValue!8042 (transformation!5750 rule!403))))))

(assert (= (and d!1072010 res!1479167) b!3647153))

(declare-fun m!4151237 () Bool)

(assert (=> d!1072010 m!4151237))

(declare-fun m!4151239 () Bool)

(assert (=> b!3647153 m!4151239))

(assert (=> b!3646413 d!1072010))

(declare-fun e!2257851 () Bool)

(assert (=> b!3646401 (= tp!1111973 e!2257851)))

(declare-fun b!3647165 () Bool)

(declare-fun tp!1112043 () Bool)

(declare-fun tp!1112042 () Bool)

(assert (=> b!3647165 (= e!2257851 (and tp!1112043 tp!1112042))))

(declare-fun b!3647164 () Bool)

(assert (=> b!3647164 (= e!2257851 tp_is_empty!18101)))

(declare-fun b!3647167 () Bool)

(declare-fun tp!1112045 () Bool)

(declare-fun tp!1112044 () Bool)

(assert (=> b!3647167 (= e!2257851 (and tp!1112045 tp!1112044))))

(declare-fun b!3647166 () Bool)

(declare-fun tp!1112041 () Bool)

(assert (=> b!3647166 (= e!2257851 tp!1112041)))

(assert (= (and b!3646401 ((_ is ElementMatch!10509) (regex!5750 (rule!8542 token!511)))) b!3647164))

(assert (= (and b!3646401 ((_ is Concat!16490) (regex!5750 (rule!8542 token!511)))) b!3647165))

(assert (= (and b!3646401 ((_ is Star!10509) (regex!5750 (rule!8542 token!511)))) b!3647166))

(assert (= (and b!3646401 ((_ is Union!10509) (regex!5750 (rule!8542 token!511)))) b!3647167))

(declare-fun b!3647172 () Bool)

(declare-fun e!2257854 () Bool)

(declare-fun tp!1112048 () Bool)

(assert (=> b!3647172 (= e!2257854 (and tp_is_empty!18101 tp!1112048))))

(assert (=> b!3646391 (= tp!1111965 e!2257854)))

(assert (= (and b!3646391 ((_ is Cons!38442) (t!297069 suffix!1395))) b!3647172))

(declare-fun e!2257855 () Bool)

(assert (=> b!3646397 (= tp!1111969 e!2257855)))

(declare-fun b!3647174 () Bool)

(declare-fun tp!1112051 () Bool)

(declare-fun tp!1112050 () Bool)

(assert (=> b!3647174 (= e!2257855 (and tp!1112051 tp!1112050))))

(declare-fun b!3647173 () Bool)

(assert (=> b!3647173 (= e!2257855 tp_is_empty!18101)))

(declare-fun b!3647176 () Bool)

(declare-fun tp!1112053 () Bool)

(declare-fun tp!1112052 () Bool)

(assert (=> b!3647176 (= e!2257855 (and tp!1112053 tp!1112052))))

(declare-fun b!3647175 () Bool)

(declare-fun tp!1112049 () Bool)

(assert (=> b!3647175 (= e!2257855 tp!1112049)))

(assert (= (and b!3646397 ((_ is ElementMatch!10509) (regex!5750 (h!43863 rules!3307)))) b!3647173))

(assert (= (and b!3646397 ((_ is Concat!16490) (regex!5750 (h!43863 rules!3307)))) b!3647174))

(assert (= (and b!3646397 ((_ is Star!10509) (regex!5750 (h!43863 rules!3307)))) b!3647175))

(assert (= (and b!3646397 ((_ is Union!10509) (regex!5750 (h!43863 rules!3307)))) b!3647176))

(declare-fun b!3647177 () Bool)

(declare-fun e!2257856 () Bool)

(declare-fun tp!1112054 () Bool)

(assert (=> b!3647177 (= e!2257856 (and tp_is_empty!18101 tp!1112054))))

(assert (=> b!3646417 (= tp!1111961 e!2257856)))

(assert (= (and b!3646417 ((_ is Cons!38442) (originalCharacters!6464 token!511))) b!3647177))

(declare-fun b!3647188 () Bool)

(declare-fun b_free!95781 () Bool)

(declare-fun b_next!96485 () Bool)

(assert (=> b!3647188 (= b_free!95781 (not b_next!96485))))

(declare-fun t!297180 () Bool)

(declare-fun tb!210369 () Bool)

(assert (=> (and b!3647188 (= (toValue!8042 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297180) tb!210369))

(declare-fun result!256190 () Bool)

(assert (= result!256190 result!256110))

(assert (=> d!1071856 t!297180))

(declare-fun t!297182 () Bool)

(declare-fun tb!210371 () Bool)

(assert (=> (and b!3647188 (= (toValue!8042 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297182) tb!210371))

(declare-fun result!256192 () Bool)

(assert (= result!256192 result!256090))

(assert (=> d!1071856 t!297182))

(assert (=> d!1071866 t!297182))

(declare-fun tb!210373 () Bool)

(declare-fun t!297184 () Bool)

(assert (=> (and b!3647188 (= (toValue!8042 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toValue!8042 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297184) tb!210373))

(declare-fun result!256194 () Bool)

(assert (= result!256194 result!256176))

(assert (=> d!1071962 t!297184))

(assert (=> d!1071848 t!297182))

(declare-fun b_and!269471 () Bool)

(declare-fun tp!1112065 () Bool)

(assert (=> b!3647188 (= tp!1112065 (and (=> t!297184 result!256194) (=> t!297180 result!256190) (=> t!297182 result!256192) b_and!269471))))

(declare-fun b_free!95783 () Bool)

(declare-fun b_next!96487 () Bool)

(assert (=> b!3647188 (= b_free!95783 (not b_next!96487))))

(declare-fun t!297186 () Bool)

(declare-fun tb!210375 () Bool)

(assert (=> (and b!3647188 (= (toChars!7901 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toChars!7901 (transformation!5750 (rule!8542 token!511)))) t!297186) tb!210375))

(declare-fun result!256196 () Bool)

(assert (= result!256196 result!256080))

(assert (=> d!1071804 t!297186))

(declare-fun t!297188 () Bool)

(declare-fun tb!210377 () Bool)

(assert (=> (and b!3647188 (= (toChars!7901 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297188) tb!210377))

(declare-fun result!256198 () Bool)

(assert (= result!256198 result!256118))

(assert (=> d!1071866 t!297188))

(declare-fun tb!210379 () Bool)

(declare-fun t!297190 () Bool)

(assert (=> (and b!3647188 (= (toChars!7901 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toChars!7901 (transformation!5750 (rule!8542 (_1!22290 lt!1263731))))) t!297190) tb!210379))

(declare-fun result!256200 () Bool)

(assert (= result!256200 result!256150))

(assert (=> d!1071920 t!297190))

(assert (=> b!3647081 t!297186))

(declare-fun tp!1112063 () Bool)

(declare-fun b_and!269473 () Bool)

(assert (=> b!3647188 (= tp!1112063 (and (=> t!297186 result!256196) (=> t!297188 result!256198) (=> t!297190 result!256200) b_and!269473))))

(declare-fun e!2257866 () Bool)

(assert (=> b!3647188 (= e!2257866 (and tp!1112065 tp!1112063))))

(declare-fun b!3647187 () Bool)

(declare-fun tp!1112064 () Bool)

(declare-fun e!2257867 () Bool)

(assert (=> b!3647187 (= e!2257867 (and tp!1112064 (inv!51882 (tag!6508 (h!43863 (t!297070 rules!3307)))) (inv!51885 (transformation!5750 (h!43863 (t!297070 rules!3307)))) e!2257866))))

(declare-fun b!3647186 () Bool)

(declare-fun e!2257865 () Bool)

(declare-fun tp!1112066 () Bool)

(assert (=> b!3647186 (= e!2257865 (and e!2257867 tp!1112066))))

(assert (=> b!3646394 (= tp!1111963 e!2257865)))

(assert (= b!3647187 b!3647188))

(assert (= b!3647186 b!3647187))

(assert (= (and b!3646394 ((_ is Cons!38443) (t!297070 rules!3307))) b!3647186))

(declare-fun m!4151241 () Bool)

(assert (=> b!3647187 m!4151241))

(declare-fun m!4151243 () Bool)

(assert (=> b!3647187 m!4151243))

(declare-fun e!2257869 () Bool)

(assert (=> b!3646413 (= tp!1111966 e!2257869)))

(declare-fun b!3647190 () Bool)

(declare-fun tp!1112069 () Bool)

(declare-fun tp!1112068 () Bool)

(assert (=> b!3647190 (= e!2257869 (and tp!1112069 tp!1112068))))

(declare-fun b!3647189 () Bool)

(assert (=> b!3647189 (= e!2257869 tp_is_empty!18101)))

(declare-fun b!3647192 () Bool)

(declare-fun tp!1112071 () Bool)

(declare-fun tp!1112070 () Bool)

(assert (=> b!3647192 (= e!2257869 (and tp!1112071 tp!1112070))))

(declare-fun b!3647191 () Bool)

(declare-fun tp!1112067 () Bool)

(assert (=> b!3647191 (= e!2257869 tp!1112067)))

(assert (= (and b!3646413 ((_ is ElementMatch!10509) (regex!5750 rule!403))) b!3647189))

(assert (= (and b!3646413 ((_ is Concat!16490) (regex!5750 rule!403))) b!3647190))

(assert (= (and b!3646413 ((_ is Star!10509) (regex!5750 rule!403))) b!3647191))

(assert (= (and b!3646413 ((_ is Union!10509) (regex!5750 rule!403))) b!3647192))

(declare-fun e!2257870 () Bool)

(assert (=> b!3646418 (= tp!1111962 e!2257870)))

(declare-fun b!3647194 () Bool)

(declare-fun tp!1112074 () Bool)

(declare-fun tp!1112073 () Bool)

(assert (=> b!3647194 (= e!2257870 (and tp!1112074 tp!1112073))))

(declare-fun b!3647193 () Bool)

(assert (=> b!3647193 (= e!2257870 tp_is_empty!18101)))

(declare-fun b!3647196 () Bool)

(declare-fun tp!1112076 () Bool)

(declare-fun tp!1112075 () Bool)

(assert (=> b!3647196 (= e!2257870 (and tp!1112076 tp!1112075))))

(declare-fun b!3647195 () Bool)

(declare-fun tp!1112072 () Bool)

(assert (=> b!3647195 (= e!2257870 tp!1112072)))

(assert (= (and b!3646418 ((_ is ElementMatch!10509) (regex!5750 anOtherTypeRule!33))) b!3647193))

(assert (= (and b!3646418 ((_ is Concat!16490) (regex!5750 anOtherTypeRule!33))) b!3647194))

(assert (= (and b!3646418 ((_ is Star!10509) (regex!5750 anOtherTypeRule!33))) b!3647195))

(assert (= (and b!3646418 ((_ is Union!10509) (regex!5750 anOtherTypeRule!33))) b!3647196))

(declare-fun b_lambda!108159 () Bool)

(assert (= b_lambda!108157 (or (and b!3646388 b_free!95771 (= (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646407 b_free!95767) (and b!3647188 b_free!95783 (= (toChars!7901 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646415 b_free!95775 (= (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646393 b_free!95763 (= (toChars!7901 (transformation!5750 rule!403)) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) b_lambda!108159)))

(declare-fun b_lambda!108161 () Bool)

(assert (= b_lambda!108123 (or (and b!3646388 b_free!95771 (= (toChars!7901 (transformation!5750 anOtherTypeRule!33)) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646407 b_free!95767) (and b!3647188 b_free!95783 (= (toChars!7901 (transformation!5750 (h!43863 (t!297070 rules!3307)))) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646415 b_free!95775 (= (toChars!7901 (transformation!5750 (h!43863 rules!3307))) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) (and b!3646393 b_free!95763 (= (toChars!7901 (transformation!5750 rule!403)) (toChars!7901 (transformation!5750 (rule!8542 token!511))))) b_lambda!108161)))

(check-sat (not d!1072010) (not d!1072002) (not b_next!96467) (not d!1071832) (not b!3646808) (not d!1071810) (not b!3646938) (not d!1071970) (not b!3646762) (not b!3647151) (not b!3646812) (not b_lambda!108155) (not tb!210341) (not b!3647174) (not d!1071800) (not b!3646947) b_and!269471 (not bm!263570) (not bm!263561) (not b!3647190) (not bm!263571) (not d!1071828) (not b!3646478) (not d!1071936) (not b!3647153) (not b_lambda!108159) (not b!3647176) b_and!269459 (not d!1071920) b_and!269467 (not b!3646930) (not b!3646772) (not b!3646737) (not d!1071732) (not b_lambda!108131) (not b!3647187) (not d!1071826) (not d!1071950) (not b!3647090) (not d!1071946) (not b!3646945) (not b!3647175) (not b_next!96473) (not d!1071866) b_and!269463 (not b!3646810) (not b!3646720) (not d!1071844) (not d!1071870) (not b_next!96477) (not b!3646627) (not bm!263564) (not d!1071944) (not b!3646725) (not b!3647165) (not b!3646728) (not d!1071854) (not d!1071922) (not b!3646916) (not b!3646887) (not b!3647062) (not d!1071998) (not b!3646885) (not b!3647060) (not d!1071960) (not b!3646806) (not b!3646946) (not b!3646660) (not b_lambda!108135) (not b_lambda!108125) (not b!3646718) (not b!3647147) (not b_next!96469) (not b!3646626) (not b!3646716) (not tb!210277) (not b!3646961) (not b!3646629) (not b!3646807) (not b!3646939) (not b!3646749) (not b!3647128) (not d!1071804) b_and!269473 (not b!3647088) (not b_next!96487) (not d!1071932) (not b_next!96485) (not b!3646631) (not b!3646809) (not d!1071838) (not d!1071968) (not tb!210309) (not b!3647081) (not d!1071964) (not b!3646949) (not b!3646958) (not b!3647058) (not b!3646750) (not b!3646758) (not d!1071992) b_and!269455 (not b!3647177) (not b!3646477) (not b!3646766) (not d!1071988) (not b!3646813) (not b!3646898) (not b!3647092) (not d!1071934) (not d!1071868) (not d!1071986) (not tb!210361) (not d!1071734) (not b!3646624) (not b!3647057) (not bm!263562) (not d!1071942) (not b!3647194) (not b_next!96475) (not d!1072000) (not d!1071918) (not b!3647059) (not b!3646815) (not b!3647172) (not b!3646751) (not d!1071952) (not b!3646886) b_and!269457 (not d!1071972) (not b!3646765) (not bm!263560) (not b!3646942) tp_is_empty!18101 (not b!3646899) (not b!3646931) (not bm!263539) (not b_lambda!108133) (not bm!263566) (not bm!263544) (not d!1071856) b_and!269461 (not d!1071926) (not b!3646919) (not d!1071850) (not b_lambda!108161) (not b!3646625) (not b!3647061) (not b!3647186) (not b!3647143) (not b!3647166) (not b!3647191) (not bm!263569) (not b!3646811) (not b_next!96471) (not d!1071924) (not b!3646628) (not d!1071852) (not b!3646952) (not b!3647196) b_and!269465 (not bm!263565) (not b!3646941) (not bm!263568) (not b!3646900) (not bm!263543) (not b!3647141) (not bm!263542) (not b!3646623) (not b!3647142) (not b!3646943) (not b!3647195) (not b!3647138) (not b!3647118) (not b!3647082) (not b!3647063) (not b!3646917) (not b_lambda!108149) (not b!3647192) (not b!3646753) (not b!3647150) (not b!3646729) (not d!1071958) (not b!3647069) (not b_next!96465) (not b_next!96479) (not d!1071984) (not d!1071912) (not d!1071976) (not b!3646933) (not b!3647056) (not b!3647167) (not d!1071840) (not tb!210285) (not b_lambda!108129) (not b!3646757) (not d!1071842) (not b!3647076) (not b!3646950) (not b!3646756) (not tb!210301) b_and!269469)
(check-sat (not b_next!96467) b_and!269471 b_and!269459 b_and!269467 (not b_next!96477) (not b_next!96469) b_and!269455 (not b_next!96475) b_and!269457 b_and!269461 (not b_next!96471) b_and!269465 (not b_next!96465) (not b_next!96479) b_and!269469 (not b_next!96473) b_and!269463 b_and!269473 (not b_next!96487) (not b_next!96485))
