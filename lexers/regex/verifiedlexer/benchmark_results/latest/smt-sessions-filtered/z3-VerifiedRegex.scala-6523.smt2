; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344410 () Bool)

(assert start!344410)

(declare-fun b!3673468 () Bool)

(declare-fun b_free!97129 () Bool)

(declare-fun b_next!97833 () Bool)

(assert (=> b!3673468 (= b_free!97129 (not b_next!97833))))

(declare-fun tp!1117495 () Bool)

(declare-fun b_and!273819 () Bool)

(assert (=> b!3673468 (= tp!1117495 b_and!273819)))

(declare-fun b_free!97131 () Bool)

(declare-fun b_next!97835 () Bool)

(assert (=> b!3673468 (= b_free!97131 (not b_next!97835))))

(declare-fun tp!1117507 () Bool)

(declare-fun b_and!273821 () Bool)

(assert (=> b!3673468 (= tp!1117507 b_and!273821)))

(declare-fun b!3673474 () Bool)

(declare-fun b_free!97133 () Bool)

(declare-fun b_next!97837 () Bool)

(assert (=> b!3673474 (= b_free!97133 (not b_next!97837))))

(declare-fun tp!1117500 () Bool)

(declare-fun b_and!273823 () Bool)

(assert (=> b!3673474 (= tp!1117500 b_and!273823)))

(declare-fun b_free!97135 () Bool)

(declare-fun b_next!97839 () Bool)

(assert (=> b!3673474 (= b_free!97135 (not b_next!97839))))

(declare-fun tp!1117499 () Bool)

(declare-fun b_and!273825 () Bool)

(assert (=> b!3673474 (= tp!1117499 b_and!273825)))

(declare-fun b!3673463 () Bool)

(declare-fun b_free!97137 () Bool)

(declare-fun b_next!97841 () Bool)

(assert (=> b!3673463 (= b_free!97137 (not b_next!97841))))

(declare-fun tp!1117501 () Bool)

(declare-fun b_and!273827 () Bool)

(assert (=> b!3673463 (= tp!1117501 b_and!273827)))

(declare-fun b_free!97139 () Bool)

(declare-fun b_next!97843 () Bool)

(assert (=> b!3673463 (= b_free!97139 (not b_next!97843))))

(declare-fun tp!1117502 () Bool)

(declare-fun b_and!273829 () Bool)

(assert (=> b!3673463 (= tp!1117502 b_and!273829)))

(declare-fun b!3673469 () Bool)

(declare-fun b_free!97141 () Bool)

(declare-fun b_next!97845 () Bool)

(assert (=> b!3673469 (= b_free!97141 (not b_next!97845))))

(declare-fun tp!1117498 () Bool)

(declare-fun b_and!273831 () Bool)

(assert (=> b!3673469 (= tp!1117498 b_and!273831)))

(declare-fun b_free!97143 () Bool)

(declare-fun b_next!97847 () Bool)

(assert (=> b!3673469 (= b_free!97143 (not b_next!97847))))

(declare-fun tp!1117505 () Bool)

(declare-fun b_and!273833 () Bool)

(assert (=> b!3673469 (= tp!1117505 b_and!273833)))

(declare-fun b!3673427 () Bool)

(declare-fun e!2274610 () Bool)

(declare-fun e!2274583 () Bool)

(declare-fun tp!1117494 () Bool)

(assert (=> b!3673427 (= e!2274610 (and e!2274583 tp!1117494))))

(declare-fun b!3673428 () Bool)

(declare-datatypes ((Unit!56422 0))(
  ( (Unit!56423) )
))
(declare-fun e!2274587 () Unit!56422)

(declare-fun Unit!56424 () Unit!56422)

(assert (=> b!3673428 (= e!2274587 Unit!56424)))

(declare-fun b!3673429 () Bool)

(assert (=> b!3673429 false))

(declare-fun lt!1281372 () Unit!56422)

(declare-fun call!265976 () Unit!56422)

(assert (=> b!3673429 (= lt!1281372 call!265976)))

(declare-fun call!265973 () Bool)

(assert (=> b!3673429 (not call!265973)))

(declare-datatypes ((C!21356 0))(
  ( (C!21357 (val!12726 Int)) )
))
(declare-fun lt!1281387 () C!21356)

(declare-datatypes ((List!38865 0))(
  ( (Nil!38741) (Cons!38741 (h!44161 (_ BitVec 16)) (t!299940 List!38865)) )
))
(declare-datatypes ((TokenValue!6056 0))(
  ( (FloatLiteralValue!12112 (text!42837 List!38865)) (TokenValueExt!6055 (__x!24329 Int)) (Broken!30280 (value!186475 List!38865)) (Object!6179) (End!6056) (Def!6056) (Underscore!6056) (Match!6056) (Else!6056) (Error!6056) (Case!6056) (If!6056) (Extends!6056) (Abstract!6056) (Class!6056) (Val!6056) (DelimiterValue!12112 (del!6116 List!38865)) (KeywordValue!6062 (value!186476 List!38865)) (CommentValue!12112 (value!186477 List!38865)) (WhitespaceValue!12112 (value!186478 List!38865)) (IndentationValue!6056 (value!186479 List!38865)) (String!43613) (Int32!6056) (Broken!30281 (value!186480 List!38865)) (Boolean!6057) (Unit!56425) (OperatorValue!6059 (op!6116 List!38865)) (IdentifierValue!12112 (value!186481 List!38865)) (IdentifierValue!12113 (value!186482 List!38865)) (WhitespaceValue!12113 (value!186483 List!38865)) (True!12112) (False!12112) (Broken!30282 (value!186484 List!38865)) (Broken!30283 (value!186485 List!38865)) (True!12113) (RightBrace!6056) (RightBracket!6056) (Colon!6056) (Null!6056) (Comma!6056) (LeftBracket!6056) (False!12113) (LeftBrace!6056) (ImaginaryLiteralValue!6056 (text!42838 List!38865)) (StringLiteralValue!18168 (value!186486 List!38865)) (EOFValue!6056 (value!186487 List!38865)) (IdentValue!6056 (value!186488 List!38865)) (DelimiterValue!12113 (value!186489 List!38865)) (DedentValue!6056 (value!186490 List!38865)) (NewLineValue!6056 (value!186491 List!38865)) (IntegerValue!18168 (value!186492 (_ BitVec 32)) (text!42839 List!38865)) (IntegerValue!18169 (value!186493 Int) (text!42840 List!38865)) (Times!6056) (Or!6056) (Equal!6056) (Minus!6056) (Broken!30284 (value!186494 List!38865)) (And!6056) (Div!6056) (LessEqual!6056) (Mod!6056) (Concat!16641) (Not!6056) (Plus!6056) (SpaceValue!6056 (value!186495 List!38865)) (IntegerValue!18170 (value!186496 Int) (text!42841 List!38865)) (StringLiteralValue!18169 (text!42842 List!38865)) (FloatLiteralValue!12113 (text!42843 List!38865)) (BytesLiteralValue!6056 (value!186497 List!38865)) (CommentValue!12113 (value!186498 List!38865)) (StringLiteralValue!18170 (value!186499 List!38865)) (ErrorTokenValue!6056 (msg!6117 List!38865)) )
))
(declare-datatypes ((Regex!10585 0))(
  ( (ElementMatch!10585 (c!635200 C!21356)) (Concat!16642 (regOne!21682 Regex!10585) (regTwo!21682 Regex!10585)) (EmptyExpr!10585) (Star!10585 (reg!10914 Regex!10585)) (EmptyLang!10585) (Union!10585 (regOne!21683 Regex!10585) (regTwo!21683 Regex!10585)) )
))
(declare-datatypes ((String!43614 0))(
  ( (String!43615 (value!186500 String)) )
))
(declare-datatypes ((List!38866 0))(
  ( (Nil!38742) (Cons!38742 (h!44162 C!21356) (t!299941 List!38866)) )
))
(declare-datatypes ((IArray!23715 0))(
  ( (IArray!23716 (innerList!11915 List!38866)) )
))
(declare-datatypes ((Conc!11855 0))(
  ( (Node!11855 (left!30234 Conc!11855) (right!30564 Conc!11855) (csize!23940 Int) (cheight!12066 Int)) (Leaf!18379 (xs!15057 IArray!23715) (csize!23941 Int)) (Empty!11855) )
))
(declare-datatypes ((BalanceConc!23324 0))(
  ( (BalanceConc!23325 (c!635201 Conc!11855)) )
))
(declare-datatypes ((TokenValueInjection!11540 0))(
  ( (TokenValueInjection!11541 (toValue!8122 Int) (toChars!7981 Int)) )
))
(declare-datatypes ((Rule!11452 0))(
  ( (Rule!11453 (regex!5826 Regex!10585) (tag!6620 String!43614) (isSeparator!5826 Bool) (transformation!5826 TokenValueInjection!11540)) )
))
(declare-datatypes ((List!38867 0))(
  ( (Nil!38743) (Cons!38743 (h!44163 Rule!11452) (t!299942 List!38867)) )
))
(declare-fun rules!3307 () List!38867)

(declare-datatypes ((LexerInterface!5415 0))(
  ( (LexerInterfaceExt!5412 (__x!24330 Int)) (Lexer!5413) )
))
(declare-fun thiss!23823 () LexerInterface!5415)

(declare-datatypes ((Token!11018 0))(
  ( (Token!11019 (value!186501 TokenValue!6056) (rule!8654 Rule!11452) (size!29613 Int) (originalCharacters!6540 List!38866)) )
))
(declare-datatypes ((tuple2!38612 0))(
  ( (tuple2!38613 (_1!22440 Token!11018) (_2!22440 List!38866)) )
))
(declare-fun lt!1281382 () tuple2!38612)

(declare-fun rule!403 () Rule!11452)

(declare-fun lt!1281366 () Unit!56422)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!354 (LexerInterface!5415 List!38867 List!38867 Rule!11452 Rule!11452 C!21356) Unit!56422)

(assert (=> b!3673429 (= lt!1281366 (lemmaSepRuleNotContainsCharContainedInANonSepRule!354 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8654 (_1!22440 lt!1281382)) lt!1281387))))

(declare-fun e!2274604 () Unit!56422)

(declare-fun Unit!56426 () Unit!56422)

(assert (=> b!3673429 (= e!2274604 Unit!56426)))

(declare-fun tp!1117504 () Bool)

(declare-fun e!2274580 () Bool)

(declare-fun b!3673430 () Bool)

(declare-fun inv!52226 (String!43614) Bool)

(declare-fun inv!52229 (TokenValueInjection!11540) Bool)

(assert (=> b!3673430 (= e!2274583 (and tp!1117504 (inv!52226 (tag!6620 (h!44163 rules!3307))) (inv!52229 (transformation!5826 (h!44163 rules!3307))) e!2274580))))

(declare-fun b!3673431 () Bool)

(declare-fun res!1492078 () Bool)

(declare-fun e!2274579 () Bool)

(assert (=> b!3673431 (=> res!1492078 e!2274579)))

(declare-fun lt!1281374 () List!38866)

(declare-fun matchR!5154 (Regex!10585 List!38866) Bool)

(assert (=> b!3673431 (= res!1492078 (not (matchR!5154 (regex!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281374)))))

(declare-fun b!3673426 () Bool)

(declare-fun Unit!56427 () Unit!56422)

(assert (=> b!3673426 (= e!2274587 Unit!56427)))

(declare-fun lt!1281393 () Unit!56422)

(declare-fun lt!1281381 () List!38866)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!206 (List!38866) Unit!56422)

(assert (=> b!3673426 (= lt!1281393 (lemmaGetSuffixOnListWithItSelfIsEmpty!206 lt!1281381))))

(declare-fun isEmpty!22998 (List!38866) Bool)

(declare-fun getSuffix!1742 (List!38866 List!38866) List!38866)

(assert (=> b!3673426 (isEmpty!22998 (getSuffix!1742 lt!1281381 lt!1281381))))

(declare-fun lt!1281379 () Unit!56422)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!234 (LexerInterface!5415 List!38867 Rule!11452 List!38866 List!38866 Rule!11452) Unit!56422)

(assert (=> b!3673426 (= lt!1281379 (lemmaMaxPrefNoSmallerRuleMatches!234 thiss!23823 rules!3307 rule!403 lt!1281381 lt!1281381 (rule!8654 (_1!22440 lt!1281382))))))

(declare-fun res!1492074 () Bool)

(assert (=> b!3673426 (= res!1492074 (not (matchR!5154 (regex!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281381)))))

(declare-fun e!2274596 () Bool)

(assert (=> b!3673426 (=> (not res!1492074) (not e!2274596))))

(assert (=> b!3673426 e!2274596))

(declare-fun res!1492073 () Bool)

(declare-fun e!2274616 () Bool)

(assert (=> start!344410 (=> (not res!1492073) (not e!2274616))))

(get-info :version)

(assert (=> start!344410 (= res!1492073 ((_ is Lexer!5413) thiss!23823))))

(assert (=> start!344410 e!2274616))

(assert (=> start!344410 e!2274610))

(declare-fun e!2274589 () Bool)

(assert (=> start!344410 e!2274589))

(assert (=> start!344410 true))

(declare-fun token!511 () Token!11018)

(declare-fun e!2274601 () Bool)

(declare-fun inv!52230 (Token!11018) Bool)

(assert (=> start!344410 (and (inv!52230 token!511) e!2274601)))

(declare-fun e!2274598 () Bool)

(assert (=> start!344410 e!2274598))

(declare-fun e!2274597 () Bool)

(assert (=> start!344410 e!2274597))

(declare-fun bm!265966 () Bool)

(declare-fun call!265974 () List!38866)

(declare-fun usedCharacters!1038 (Regex!10585) List!38866)

(assert (=> bm!265966 (= call!265974 (usedCharacters!1038 (regex!5826 (rule!8654 (_1!22440 lt!1281382)))))))

(declare-fun b!3673432 () Bool)

(declare-fun res!1492086 () Bool)

(assert (=> b!3673432 (=> (not res!1492086) (not e!2274616))))

(declare-fun contains!7719 (List!38867 Rule!11452) Bool)

(assert (=> b!3673432 (= res!1492086 (contains!7719 rules!3307 rule!403))))

(declare-fun tp!1117496 () Bool)

(declare-fun b!3673433 () Bool)

(declare-fun e!2274600 () Bool)

(declare-fun e!2274581 () Bool)

(assert (=> b!3673433 (= e!2274600 (and tp!1117496 (inv!52226 (tag!6620 (rule!8654 token!511))) (inv!52229 (transformation!5826 (rule!8654 token!511))) e!2274581))))

(declare-fun b!3673434 () Bool)

(assert (=> b!3673434 (= e!2274596 false)))

(declare-fun b!3673435 () Bool)

(declare-fun e!2274594 () Unit!56422)

(declare-fun Unit!56428 () Unit!56422)

(assert (=> b!3673435 (= e!2274594 Unit!56428)))

(declare-fun b!3673436 () Bool)

(declare-fun e!2274591 () Unit!56422)

(declare-fun Unit!56429 () Unit!56422)

(assert (=> b!3673436 (= e!2274591 Unit!56429)))

(declare-fun lt!1281405 () List!38866)

(declare-fun lt!1281395 () Unit!56422)

(assert (=> b!3673436 (= lt!1281395 (lemmaMaxPrefNoSmallerRuleMatches!234 thiss!23823 rules!3307 (rule!8654 (_1!22440 lt!1281382)) lt!1281381 lt!1281405 rule!403))))

(assert (=> b!3673436 false))

(declare-fun b!3673437 () Bool)

(declare-fun e!2274595 () Unit!56422)

(declare-fun Unit!56430 () Unit!56422)

(assert (=> b!3673437 (= e!2274595 Unit!56430)))

(declare-fun lt!1281400 () Unit!56422)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!368 (LexerInterface!5415 List!38867 Rule!11452 List!38866 List!38866 List!38866 Rule!11452) Unit!56422)

(assert (=> b!3673437 (= lt!1281400 (lemmaMaxPrefixOutputsMaxPrefix!368 thiss!23823 rules!3307 (rule!8654 (_1!22440 lt!1281382)) lt!1281374 lt!1281405 lt!1281381 rule!403))))

(assert (=> b!3673437 false))

(declare-fun b!3673438 () Bool)

(declare-fun res!1492089 () Bool)

(declare-fun e!2274592 () Bool)

(assert (=> b!3673438 (=> (not res!1492089) (not e!2274592))))

(declare-fun lt!1281375 () tuple2!38612)

(assert (=> b!3673438 (= res!1492089 (isEmpty!22998 (_2!22440 lt!1281375)))))

(declare-fun b!3673439 () Bool)

(declare-fun e!2274608 () Bool)

(assert (=> b!3673439 (= e!2274616 e!2274608)))

(declare-fun res!1492076 () Bool)

(assert (=> b!3673439 (=> (not res!1492076) (not e!2274608))))

(declare-datatypes ((Option!8280 0))(
  ( (None!8279) (Some!8279 (v!38199 tuple2!38612)) )
))
(declare-fun lt!1281404 () Option!8280)

(declare-fun isDefined!6512 (Option!8280) Bool)

(assert (=> b!3673439 (= res!1492076 (isDefined!6512 lt!1281404))))

(declare-fun maxPrefix!2949 (LexerInterface!5415 List!38867 List!38866) Option!8280)

(assert (=> b!3673439 (= lt!1281404 (maxPrefix!2949 thiss!23823 rules!3307 lt!1281381))))

(declare-fun lt!1281386 () BalanceConc!23324)

(declare-fun list!14392 (BalanceConc!23324) List!38866)

(assert (=> b!3673439 (= lt!1281381 (list!14392 lt!1281386))))

(declare-fun charsOf!3840 (Token!11018) BalanceConc!23324)

(assert (=> b!3673439 (= lt!1281386 (charsOf!3840 token!511))))

(declare-fun b!3673440 () Bool)

(declare-fun Unit!56431 () Unit!56422)

(assert (=> b!3673440 (= e!2274604 Unit!56431)))

(declare-fun bm!265967 () Bool)

(declare-fun call!265972 () Bool)

(declare-fun lt!1281368 () C!21356)

(declare-fun contains!7720 (List!38866 C!21356) Bool)

(assert (=> bm!265967 (= call!265972 (contains!7720 call!265974 lt!1281368))))

(declare-fun b!3673441 () Bool)

(declare-fun e!2274615 () Bool)

(declare-fun e!2274609 () Bool)

(assert (=> b!3673441 (= e!2274615 e!2274609)))

(declare-fun res!1492069 () Bool)

(assert (=> b!3673441 (=> res!1492069 e!2274609)))

(assert (=> b!3673441 (= res!1492069 (not (contains!7719 rules!3307 (rule!8654 (_1!22440 lt!1281382)))))))

(declare-fun lt!1281399 () Unit!56422)

(assert (=> b!3673441 (= lt!1281399 e!2274591)))

(declare-fun c!635197 () Bool)

(declare-fun lt!1281378 () Int)

(declare-fun lt!1281407 () Int)

(assert (=> b!3673441 (= c!635197 (< lt!1281378 lt!1281407))))

(declare-fun lt!1281408 () Unit!56422)

(assert (=> b!3673441 (= lt!1281408 e!2274587)))

(declare-fun c!635193 () Bool)

(assert (=> b!3673441 (= c!635193 (< lt!1281407 lt!1281378))))

(declare-fun getIndex!494 (List!38867 Rule!11452) Int)

(assert (=> b!3673441 (= lt!1281378 (getIndex!494 rules!3307 rule!403))))

(assert (=> b!3673441 (= lt!1281407 (getIndex!494 rules!3307 (rule!8654 (_1!22440 lt!1281382))))))

(declare-fun b!3673442 () Bool)

(declare-fun e!2274611 () Bool)

(assert (=> b!3673442 (= e!2274579 e!2274611)))

(declare-fun res!1492067 () Bool)

(assert (=> b!3673442 (=> res!1492067 e!2274611)))

(declare-fun lt!1281383 () TokenValue!6056)

(declare-fun lt!1281373 () Option!8280)

(declare-fun lt!1281357 () Int)

(assert (=> b!3673442 (= res!1492067 (not (= lt!1281373 (Some!8279 (tuple2!38613 (Token!11019 lt!1281383 (rule!8654 (_1!22440 lt!1281382)) lt!1281357 lt!1281374) (_2!22440 lt!1281382))))))))

(declare-fun lt!1281392 () BalanceConc!23324)

(declare-fun size!29614 (BalanceConc!23324) Int)

(assert (=> b!3673442 (= lt!1281357 (size!29614 lt!1281392))))

(declare-fun apply!9328 (TokenValueInjection!11540 BalanceConc!23324) TokenValue!6056)

(assert (=> b!3673442 (= lt!1281383 (apply!9328 (transformation!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281392))))

(declare-fun lt!1281396 () Unit!56422)

(declare-fun lemmaCharactersSize!871 (Token!11018) Unit!56422)

(assert (=> b!3673442 (= lt!1281396 (lemmaCharactersSize!871 (_1!22440 lt!1281382)))))

(declare-fun lt!1281358 () Unit!56422)

(declare-fun lemmaEqSameImage!1009 (TokenValueInjection!11540 BalanceConc!23324 BalanceConc!23324) Unit!56422)

(declare-fun seqFromList!4375 (List!38866) BalanceConc!23324)

(assert (=> b!3673442 (= lt!1281358 (lemmaEqSameImage!1009 (transformation!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281392 (seqFromList!4375 (originalCharacters!6540 (_1!22440 lt!1281382)))))))

(declare-fun lt!1281401 () Unit!56422)

(declare-fun lemmaSemiInverse!1575 (TokenValueInjection!11540 BalanceConc!23324) Unit!56422)

(assert (=> b!3673442 (= lt!1281401 (lemmaSemiInverse!1575 (transformation!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281392))))

(declare-fun bm!265968 () Bool)

(declare-fun call!265975 () List!38866)

(assert (=> bm!265968 (= call!265975 (usedCharacters!1038 (regex!5826 (rule!8654 (_1!22440 lt!1281382)))))))

(declare-fun b!3673443 () Bool)

(declare-fun Unit!56432 () Unit!56422)

(assert (=> b!3673443 (= e!2274595 Unit!56432)))

(declare-fun b!3673444 () Bool)

(declare-fun e!2274614 () Bool)

(assert (=> b!3673444 (= e!2274614 e!2274579)))

(declare-fun res!1492082 () Bool)

(assert (=> b!3673444 (=> res!1492082 e!2274579)))

(declare-fun isPrefix!3189 (List!38866 List!38866) Bool)

(assert (=> b!3673444 (= res!1492082 (not (isPrefix!3189 lt!1281374 lt!1281405)))))

(declare-fun ++!9642 (List!38866 List!38866) List!38866)

(assert (=> b!3673444 (isPrefix!3189 lt!1281374 (++!9642 lt!1281374 (_2!22440 lt!1281382)))))

(declare-fun lt!1281377 () Unit!56422)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2108 (List!38866 List!38866) Unit!56422)

(assert (=> b!3673444 (= lt!1281377 (lemmaConcatTwoListThenFirstIsPrefix!2108 lt!1281374 (_2!22440 lt!1281382)))))

(assert (=> b!3673444 (= lt!1281374 (list!14392 lt!1281392))))

(assert (=> b!3673444 (= lt!1281392 (charsOf!3840 (_1!22440 lt!1281382)))))

(declare-fun e!2274593 () Bool)

(assert (=> b!3673444 e!2274593))

(declare-fun res!1492077 () Bool)

(assert (=> b!3673444 (=> (not res!1492077) (not e!2274593))))

(declare-datatypes ((Option!8281 0))(
  ( (None!8280) (Some!8280 (v!38200 Rule!11452)) )
))
(declare-fun lt!1281359 () Option!8281)

(declare-fun isDefined!6513 (Option!8281) Bool)

(assert (=> b!3673444 (= res!1492077 (isDefined!6513 lt!1281359))))

(declare-fun getRuleFromTag!1430 (LexerInterface!5415 List!38867 String!43614) Option!8281)

(assert (=> b!3673444 (= lt!1281359 (getRuleFromTag!1430 thiss!23823 rules!3307 (tag!6620 (rule!8654 (_1!22440 lt!1281382)))))))

(declare-fun lt!1281394 () Unit!56422)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1430 (LexerInterface!5415 List!38867 List!38866 Token!11018) Unit!56422)

(assert (=> b!3673444 (= lt!1281394 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1430 thiss!23823 rules!3307 lt!1281405 (_1!22440 lt!1281382)))))

(declare-fun get!12803 (Option!8280) tuple2!38612)

(assert (=> b!3673444 (= lt!1281382 (get!12803 lt!1281373))))

(declare-fun lt!1281371 () Unit!56422)

(declare-fun suffix!1395 () List!38866)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1093 (LexerInterface!5415 List!38867 List!38866 List!38866) Unit!56422)

(assert (=> b!3673444 (= lt!1281371 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1093 thiss!23823 rules!3307 lt!1281381 suffix!1395))))

(assert (=> b!3673444 (= lt!1281373 (maxPrefix!2949 thiss!23823 rules!3307 lt!1281405))))

(assert (=> b!3673444 (isPrefix!3189 lt!1281381 lt!1281405)))

(declare-fun lt!1281389 () Unit!56422)

(assert (=> b!3673444 (= lt!1281389 (lemmaConcatTwoListThenFirstIsPrefix!2108 lt!1281381 suffix!1395))))

(assert (=> b!3673444 (= lt!1281405 (++!9642 lt!1281381 suffix!1395))))

(declare-fun b!3673445 () Bool)

(declare-fun res!1492070 () Bool)

(assert (=> b!3673445 (=> (not res!1492070) (not e!2274616))))

(declare-fun isEmpty!22999 (List!38867) Bool)

(assert (=> b!3673445 (= res!1492070 (not (isEmpty!22999 rules!3307)))))

(declare-fun b!3673446 () Bool)

(declare-fun res!1492081 () Bool)

(assert (=> b!3673446 (=> (not res!1492081) (not e!2274616))))

(declare-fun anOtherTypeRule!33 () Rule!11452)

(assert (=> b!3673446 (= res!1492081 (not (= (isSeparator!5826 anOtherTypeRule!33) (isSeparator!5826 rule!403))))))

(declare-fun b!3673447 () Bool)

(declare-fun e!2274602 () Bool)

(assert (=> b!3673447 (= e!2274611 e!2274602)))

(declare-fun res!1492072 () Bool)

(assert (=> b!3673447 (=> res!1492072 e!2274602)))

(declare-fun lt!1281388 () Option!8280)

(declare-fun lt!1281391 () List!38866)

(assert (=> b!3673447 (= res!1492072 (or (not (= lt!1281391 (_2!22440 lt!1281382))) (not (= lt!1281388 (Some!8279 (tuple2!38613 (_1!22440 lt!1281382) lt!1281391))))))))

(assert (=> b!3673447 (= (_2!22440 lt!1281382) lt!1281391)))

(declare-fun lt!1281390 () Unit!56422)

(declare-fun lemmaSamePrefixThenSameSuffix!1516 (List!38866 List!38866 List!38866 List!38866 List!38866) Unit!56422)

(assert (=> b!3673447 (= lt!1281390 (lemmaSamePrefixThenSameSuffix!1516 lt!1281374 (_2!22440 lt!1281382) lt!1281374 lt!1281391 lt!1281405))))

(assert (=> b!3673447 (= lt!1281391 (getSuffix!1742 lt!1281405 lt!1281374))))

(declare-fun lt!1281385 () TokenValue!6056)

(declare-fun lt!1281402 () Int)

(assert (=> b!3673447 (= lt!1281388 (Some!8279 (tuple2!38613 (Token!11019 lt!1281385 (rule!8654 (_1!22440 lt!1281382)) lt!1281402 lt!1281374) (_2!22440 lt!1281382))))))

(declare-fun maxPrefixOneRule!2087 (LexerInterface!5415 Rule!11452 List!38866) Option!8280)

(assert (=> b!3673447 (= lt!1281388 (maxPrefixOneRule!2087 thiss!23823 (rule!8654 (_1!22440 lt!1281382)) lt!1281405))))

(declare-fun size!29615 (List!38866) Int)

(assert (=> b!3673447 (= lt!1281402 (size!29615 lt!1281374))))

(assert (=> b!3673447 (= lt!1281385 (apply!9328 (transformation!5826 (rule!8654 (_1!22440 lt!1281382))) (seqFromList!4375 lt!1281374)))))

(declare-fun lt!1281365 () Unit!56422)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1143 (LexerInterface!5415 List!38867 List!38866 List!38866 List!38866 Rule!11452) Unit!56422)

(assert (=> b!3673447 (= lt!1281365 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1143 thiss!23823 rules!3307 lt!1281374 lt!1281405 (_2!22440 lt!1281382) (rule!8654 (_1!22440 lt!1281382))))))

(declare-fun b!3673448 () Bool)

(declare-fun res!1492088 () Bool)

(assert (=> b!3673448 (=> res!1492088 e!2274614)))

(declare-fun sepAndNonSepRulesDisjointChars!1994 (List!38867 List!38867) Bool)

(assert (=> b!3673448 (= res!1492088 (not (sepAndNonSepRulesDisjointChars!1994 rules!3307 rules!3307)))))

(declare-fun b!3673449 () Bool)

(declare-fun e!2274612 () Unit!56422)

(declare-fun e!2274582 () Unit!56422)

(assert (=> b!3673449 (= e!2274612 e!2274582)))

(declare-fun c!635194 () Bool)

(assert (=> b!3673449 (= c!635194 (not (isSeparator!5826 (rule!8654 (_1!22440 lt!1281382)))))))

(declare-fun b!3673450 () Bool)

(declare-fun res!1492075 () Bool)

(assert (=> b!3673450 (=> (not res!1492075) (not e!2274616))))

(assert (=> b!3673450 (= res!1492075 (contains!7719 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3673451 () Bool)

(declare-fun e!2274607 () Unit!56422)

(declare-fun e!2274584 () Unit!56422)

(assert (=> b!3673451 (= e!2274607 e!2274584)))

(declare-fun lt!1281397 () Unit!56422)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!134 (List!38866 List!38866 List!38866 List!38866) Unit!56422)

(assert (=> b!3673451 (= lt!1281397 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!134 lt!1281381 suffix!1395 lt!1281374 lt!1281405))))

(assert (=> b!3673451 (contains!7720 lt!1281374 lt!1281368)))

(declare-fun c!635198 () Bool)

(assert (=> b!3673451 (= c!635198 (isSeparator!5826 rule!403))))

(declare-fun b!3673452 () Bool)

(declare-fun tp_is_empty!18253 () Bool)

(declare-fun tp!1117497 () Bool)

(assert (=> b!3673452 (= e!2274589 (and tp_is_empty!18253 tp!1117497))))

(declare-fun b!3673453 () Bool)

(declare-fun Unit!56433 () Unit!56422)

(assert (=> b!3673453 (= e!2274607 Unit!56433)))

(declare-fun b!3673454 () Bool)

(assert (=> b!3673454 false))

(declare-fun lt!1281380 () Unit!56422)

(declare-fun call!265971 () Unit!56422)

(assert (=> b!3673454 (= lt!1281380 call!265971)))

(assert (=> b!3673454 (not call!265972)))

(declare-fun lt!1281403 () Unit!56422)

(assert (=> b!3673454 (= lt!1281403 (lemmaSepRuleNotContainsCharContainedInANonSepRule!354 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8654 (_1!22440 lt!1281382)) lt!1281368))))

(declare-fun Unit!56434 () Unit!56422)

(assert (=> b!3673454 (= e!2274584 Unit!56434)))

(declare-fun b!3673455 () Bool)

(declare-fun res!1492071 () Bool)

(assert (=> b!3673455 (=> (not res!1492071) (not e!2274592))))

(assert (=> b!3673455 (= res!1492071 (= (rule!8654 token!511) rule!403))))

(declare-fun b!3673456 () Bool)

(declare-fun e!2274588 () Bool)

(assert (=> b!3673456 (= e!2274592 (not e!2274588))))

(declare-fun res!1492083 () Bool)

(assert (=> b!3673456 (=> res!1492083 e!2274588)))

(assert (=> b!3673456 (= res!1492083 (not (matchR!5154 (regex!5826 rule!403) lt!1281381)))))

(declare-fun ruleValid!2090 (LexerInterface!5415 Rule!11452) Bool)

(assert (=> b!3673456 (ruleValid!2090 thiss!23823 rule!403)))

(declare-fun lt!1281406 () Unit!56422)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1244 (LexerInterface!5415 Rule!11452 List!38867) Unit!56422)

(assert (=> b!3673456 (= lt!1281406 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1244 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3673457 () Bool)

(declare-fun res!1492087 () Bool)

(assert (=> b!3673457 (=> res!1492087 e!2274614)))

(assert (=> b!3673457 (= res!1492087 (not (contains!7720 (usedCharacters!1038 (regex!5826 anOtherTypeRule!33)) lt!1281368)))))

(declare-fun b!3673458 () Bool)

(declare-fun res!1492068 () Bool)

(assert (=> b!3673458 (=> (not res!1492068) (not e!2274616))))

(declare-fun rulesInvariant!4812 (LexerInterface!5415 List!38867) Bool)

(assert (=> b!3673458 (= res!1492068 (rulesInvariant!4812 thiss!23823 rules!3307))))

(declare-fun tp!1117506 () Bool)

(declare-fun e!2274603 () Bool)

(declare-fun b!3673459 () Bool)

(assert (=> b!3673459 (= e!2274597 (and tp!1117506 (inv!52226 (tag!6620 anOtherTypeRule!33)) (inv!52229 (transformation!5826 anOtherTypeRule!33)) e!2274603))))

(declare-fun b!3673460 () Bool)

(assert (=> b!3673460 (= e!2274609 (= lt!1281407 lt!1281378))))

(declare-fun b!3673461 () Bool)

(assert (=> b!3673461 (= e!2274588 e!2274614)))

(declare-fun res!1492066 () Bool)

(assert (=> b!3673461 (=> res!1492066 e!2274614)))

(declare-fun lt!1281409 () List!38866)

(assert (=> b!3673461 (= res!1492066 (contains!7720 lt!1281409 lt!1281368))))

(declare-fun head!7870 (List!38866) C!21356)

(assert (=> b!3673461 (= lt!1281368 (head!7870 suffix!1395))))

(assert (=> b!3673461 (= lt!1281409 (usedCharacters!1038 (regex!5826 rule!403)))))

(declare-fun b!3673462 () Bool)

(assert (=> b!3673462 false))

(declare-fun lt!1281360 () Unit!56422)

(assert (=> b!3673462 (= lt!1281360 call!265976)))

(assert (=> b!3673462 (not call!265973)))

(declare-fun lt!1281361 () Unit!56422)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!472 (LexerInterface!5415 List!38867 List!38867 Rule!11452 Rule!11452 C!21356) Unit!56422)

(assert (=> b!3673462 (= lt!1281361 (lemmaNonSepRuleNotContainsCharContainedInASepRule!472 thiss!23823 rules!3307 rules!3307 (rule!8654 (_1!22440 lt!1281382)) rule!403 lt!1281387))))

(declare-fun Unit!56435 () Unit!56422)

(assert (=> b!3673462 (= e!2274582 Unit!56435)))

(declare-fun e!2274585 () Bool)

(assert (=> b!3673463 (= e!2274585 (and tp!1117501 tp!1117502))))

(declare-fun b!3673464 () Bool)

(declare-fun e!2274606 () Bool)

(declare-fun lt!1281398 () Rule!11452)

(assert (=> b!3673464 (= e!2274606 (= (rule!8654 (_1!22440 lt!1281382)) lt!1281398))))

(declare-fun b!3673465 () Bool)

(declare-fun res!1492085 () Bool)

(assert (=> b!3673465 (=> res!1492085 e!2274588)))

(assert (=> b!3673465 (= res!1492085 (isEmpty!22998 suffix!1395))))

(declare-fun b!3673466 () Bool)

(assert (=> b!3673466 false))

(declare-fun lt!1281363 () Unit!56422)

(assert (=> b!3673466 (= lt!1281363 call!265971)))

(assert (=> b!3673466 (not call!265972)))

(declare-fun lt!1281364 () Unit!56422)

(assert (=> b!3673466 (= lt!1281364 (lemmaNonSepRuleNotContainsCharContainedInASepRule!472 thiss!23823 rules!3307 rules!3307 (rule!8654 (_1!22440 lt!1281382)) anOtherTypeRule!33 lt!1281368))))

(declare-fun Unit!56436 () Unit!56422)

(assert (=> b!3673466 (= e!2274584 Unit!56436)))

(declare-fun bm!265969 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!774 (Regex!10585 List!38866 C!21356) Unit!56422)

(assert (=> bm!265969 (= call!265971 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!774 (regex!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281374 lt!1281368))))

(declare-fun b!3673467 () Bool)

(declare-fun Unit!56437 () Unit!56422)

(assert (=> b!3673467 (= e!2274594 Unit!56437)))

(declare-fun lt!1281410 () Unit!56422)

(assert (=> b!3673467 (= lt!1281410 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!774 (regex!5826 rule!403) lt!1281381 lt!1281387))))

(assert (=> b!3673467 false))

(assert (=> b!3673468 (= e!2274603 (and tp!1117495 tp!1117507))))

(declare-fun bm!265970 () Bool)

(assert (=> bm!265970 (= call!265976 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!774 (regex!5826 (rule!8654 (_1!22440 lt!1281382))) lt!1281374 lt!1281387))))

(assert (=> b!3673469 (= e!2274580 (and tp!1117498 tp!1117505))))

(declare-fun b!3673470 () Bool)

(assert (=> b!3673470 (= e!2274612 e!2274604)))

(declare-fun c!635191 () Bool)

(assert (=> b!3673470 (= c!635191 (isSeparator!5826 (rule!8654 (_1!22440 lt!1281382))))))

(declare-fun b!3673471 () Bool)

(assert (=> b!3673471 (= e!2274593 e!2274606)))

(declare-fun res!1492080 () Bool)

(assert (=> b!3673471 (=> (not res!1492080) (not e!2274606))))

(assert (=> b!3673471 (= res!1492080 (matchR!5154 (regex!5826 lt!1281398) (list!14392 (charsOf!3840 (_1!22440 lt!1281382)))))))

(declare-fun get!12804 (Option!8281) Rule!11452)

(assert (=> b!3673471 (= lt!1281398 (get!12804 lt!1281359))))

(declare-fun b!3673472 () Bool)

(assert (=> b!3673472 (= e!2274608 e!2274592)))

(declare-fun res!1492084 () Bool)

(assert (=> b!3673472 (=> (not res!1492084) (not e!2274592))))

(assert (=> b!3673472 (= res!1492084 (= (_1!22440 lt!1281375) token!511))))

(assert (=> b!3673472 (= lt!1281375 (get!12803 lt!1281404))))

(declare-fun bm!265971 () Bool)

(assert (=> bm!265971 (= call!265973 (contains!7720 call!265975 lt!1281387))))

(declare-fun b!3673473 () Bool)

(declare-fun Unit!56438 () Unit!56422)

(assert (=> b!3673473 (= e!2274591 Unit!56438)))

(assert (=> b!3673474 (= e!2274581 (and tp!1117500 tp!1117499))))

(declare-fun b!3673475 () Bool)

(declare-fun tp!1117508 () Bool)

(assert (=> b!3673475 (= e!2274598 (and tp!1117508 (inv!52226 (tag!6620 rule!403)) (inv!52229 (transformation!5826 rule!403)) e!2274585))))

(declare-fun b!3673476 () Bool)

(assert (=> b!3673476 (= e!2274602 e!2274615)))

(declare-fun res!1492079 () Bool)

(assert (=> b!3673476 (=> res!1492079 e!2274615)))

(assert (=> b!3673476 (= res!1492079 (= (rule!8654 (_1!22440 lt!1281382)) (rule!8654 token!511)))))

(assert (=> b!3673476 (= lt!1281374 lt!1281381)))

(declare-fun lt!1281384 () Unit!56422)

(declare-fun lemmaIsPrefixSameLengthThenSameList!651 (List!38866 List!38866 List!38866) Unit!56422)

(assert (=> b!3673476 (= lt!1281384 (lemmaIsPrefixSameLengthThenSameList!651 lt!1281374 lt!1281381 lt!1281405))))

(declare-fun lt!1281362 () Unit!56422)

(assert (=> b!3673476 (= lt!1281362 e!2274595)))

(declare-fun c!635192 () Bool)

(declare-fun lt!1281369 () Int)

(assert (=> b!3673476 (= c!635192 (< lt!1281357 lt!1281369))))

(declare-fun lt!1281370 () Unit!56422)

(assert (=> b!3673476 (= lt!1281370 e!2274607)))

(declare-fun c!635195 () Bool)

(assert (=> b!3673476 (= c!635195 (> lt!1281357 lt!1281369))))

(assert (=> b!3673476 (= lt!1281369 (size!29614 lt!1281386))))

(declare-fun lt!1281376 () Unit!56422)

(assert (=> b!3673476 (= lt!1281376 e!2274612)))

(declare-fun c!635199 () Bool)

(assert (=> b!3673476 (= c!635199 (isSeparator!5826 rule!403))))

(declare-fun lt!1281367 () Unit!56422)

(assert (=> b!3673476 (= lt!1281367 e!2274594)))

(declare-fun c!635196 () Bool)

(assert (=> b!3673476 (= c!635196 (not (contains!7720 lt!1281409 lt!1281387)))))

(assert (=> b!3673476 (= lt!1281387 (head!7870 lt!1281374))))

(declare-fun b!3673477 () Bool)

(declare-fun Unit!56439 () Unit!56422)

(assert (=> b!3673477 (= e!2274582 Unit!56439)))

(declare-fun tp!1117503 () Bool)

(declare-fun b!3673478 () Bool)

(declare-fun inv!21 (TokenValue!6056) Bool)

(assert (=> b!3673478 (= e!2274601 (and (inv!21 (value!186501 token!511)) e!2274600 tp!1117503))))

(assert (= (and start!344410 res!1492073) b!3673445))

(assert (= (and b!3673445 res!1492070) b!3673458))

(assert (= (and b!3673458 res!1492068) b!3673432))

(assert (= (and b!3673432 res!1492086) b!3673450))

(assert (= (and b!3673450 res!1492075) b!3673446))

(assert (= (and b!3673446 res!1492081) b!3673439))

(assert (= (and b!3673439 res!1492076) b!3673472))

(assert (= (and b!3673472 res!1492084) b!3673438))

(assert (= (and b!3673438 res!1492089) b!3673455))

(assert (= (and b!3673455 res!1492071) b!3673456))

(assert (= (and b!3673456 (not res!1492083)) b!3673465))

(assert (= (and b!3673465 (not res!1492085)) b!3673461))

(assert (= (and b!3673461 (not res!1492066)) b!3673457))

(assert (= (and b!3673457 (not res!1492087)) b!3673448))

(assert (= (and b!3673448 (not res!1492088)) b!3673444))

(assert (= (and b!3673444 res!1492077) b!3673471))

(assert (= (and b!3673471 res!1492080) b!3673464))

(assert (= (and b!3673444 (not res!1492082)) b!3673431))

(assert (= (and b!3673431 (not res!1492078)) b!3673442))

(assert (= (and b!3673442 (not res!1492067)) b!3673447))

(assert (= (and b!3673447 (not res!1492072)) b!3673476))

(assert (= (and b!3673476 c!635196) b!3673467))

(assert (= (and b!3673476 (not c!635196)) b!3673435))

(assert (= (and b!3673476 c!635199) b!3673449))

(assert (= (and b!3673476 (not c!635199)) b!3673470))

(assert (= (and b!3673449 c!635194) b!3673462))

(assert (= (and b!3673449 (not c!635194)) b!3673477))

(assert (= (and b!3673470 c!635191) b!3673429))

(assert (= (and b!3673470 (not c!635191)) b!3673440))

(assert (= (or b!3673462 b!3673429) bm!265970))

(assert (= (or b!3673462 b!3673429) bm!265968))

(assert (= (or b!3673462 b!3673429) bm!265971))

(assert (= (and b!3673476 c!635195) b!3673451))

(assert (= (and b!3673476 (not c!635195)) b!3673453))

(assert (= (and b!3673451 c!635198) b!3673454))

(assert (= (and b!3673451 (not c!635198)) b!3673466))

(assert (= (or b!3673454 b!3673466) bm!265969))

(assert (= (or b!3673454 b!3673466) bm!265966))

(assert (= (or b!3673454 b!3673466) bm!265967))

(assert (= (and b!3673476 c!635192) b!3673437))

(assert (= (and b!3673476 (not c!635192)) b!3673443))

(assert (= (and b!3673476 (not res!1492079)) b!3673441))

(assert (= (and b!3673441 c!635193) b!3673426))

(assert (= (and b!3673441 (not c!635193)) b!3673428))

(assert (= (and b!3673426 res!1492074) b!3673434))

(assert (= (and b!3673441 c!635197) b!3673436))

(assert (= (and b!3673441 (not c!635197)) b!3673473))

(assert (= (and b!3673441 (not res!1492069)) b!3673460))

(assert (= b!3673430 b!3673469))

(assert (= b!3673427 b!3673430))

(assert (= (and start!344410 ((_ is Cons!38743) rules!3307)) b!3673427))

(assert (= (and start!344410 ((_ is Cons!38742) suffix!1395)) b!3673452))

(assert (= b!3673433 b!3673474))

(assert (= b!3673478 b!3673433))

(assert (= start!344410 b!3673478))

(assert (= b!3673475 b!3673463))

(assert (= start!344410 b!3673475))

(assert (= b!3673459 b!3673468))

(assert (= start!344410 b!3673459))

(declare-fun m!4182461 () Bool)

(assert (=> b!3673466 m!4182461))

(declare-fun m!4182463 () Bool)

(assert (=> b!3673437 m!4182463))

(declare-fun m!4182465 () Bool)

(assert (=> b!3673471 m!4182465))

(assert (=> b!3673471 m!4182465))

(declare-fun m!4182467 () Bool)

(assert (=> b!3673471 m!4182467))

(assert (=> b!3673471 m!4182467))

(declare-fun m!4182469 () Bool)

(assert (=> b!3673471 m!4182469))

(declare-fun m!4182471 () Bool)

(assert (=> b!3673471 m!4182471))

(declare-fun m!4182473 () Bool)

(assert (=> b!3673472 m!4182473))

(declare-fun m!4182475 () Bool)

(assert (=> b!3673439 m!4182475))

(declare-fun m!4182477 () Bool)

(assert (=> b!3673439 m!4182477))

(declare-fun m!4182479 () Bool)

(assert (=> b!3673439 m!4182479))

(declare-fun m!4182481 () Bool)

(assert (=> b!3673439 m!4182481))

(declare-fun m!4182483 () Bool)

(assert (=> b!3673429 m!4182483))

(declare-fun m!4182485 () Bool)

(assert (=> bm!265970 m!4182485))

(declare-fun m!4182487 () Bool)

(assert (=> b!3673442 m!4182487))

(declare-fun m!4182489 () Bool)

(assert (=> b!3673442 m!4182489))

(declare-fun m!4182491 () Bool)

(assert (=> b!3673442 m!4182491))

(declare-fun m!4182493 () Bool)

(assert (=> b!3673442 m!4182493))

(declare-fun m!4182495 () Bool)

(assert (=> b!3673442 m!4182495))

(declare-fun m!4182497 () Bool)

(assert (=> b!3673442 m!4182497))

(assert (=> b!3673442 m!4182495))

(declare-fun m!4182499 () Bool)

(assert (=> b!3673426 m!4182499))

(declare-fun m!4182501 () Bool)

(assert (=> b!3673426 m!4182501))

(declare-fun m!4182503 () Bool)

(assert (=> b!3673426 m!4182503))

(declare-fun m!4182505 () Bool)

(assert (=> b!3673426 m!4182505))

(declare-fun m!4182507 () Bool)

(assert (=> b!3673426 m!4182507))

(assert (=> b!3673426 m!4182505))

(declare-fun m!4182509 () Bool)

(assert (=> b!3673433 m!4182509))

(declare-fun m!4182511 () Bool)

(assert (=> b!3673433 m!4182511))

(declare-fun m!4182513 () Bool)

(assert (=> b!3673476 m!4182513))

(declare-fun m!4182515 () Bool)

(assert (=> b!3673476 m!4182515))

(declare-fun m!4182517 () Bool)

(assert (=> b!3673476 m!4182517))

(declare-fun m!4182519 () Bool)

(assert (=> b!3673476 m!4182519))

(declare-fun m!4182521 () Bool)

(assert (=> b!3673438 m!4182521))

(declare-fun m!4182523 () Bool)

(assert (=> bm!265968 m!4182523))

(declare-fun m!4182525 () Bool)

(assert (=> b!3673461 m!4182525))

(declare-fun m!4182527 () Bool)

(assert (=> b!3673461 m!4182527))

(declare-fun m!4182529 () Bool)

(assert (=> b!3673461 m!4182529))

(declare-fun m!4182531 () Bool)

(assert (=> b!3673454 m!4182531))

(declare-fun m!4182533 () Bool)

(assert (=> b!3673459 m!4182533))

(declare-fun m!4182535 () Bool)

(assert (=> b!3673459 m!4182535))

(declare-fun m!4182537 () Bool)

(assert (=> b!3673458 m!4182537))

(declare-fun m!4182539 () Bool)

(assert (=> bm!265969 m!4182539))

(declare-fun m!4182541 () Bool)

(assert (=> b!3673431 m!4182541))

(declare-fun m!4182543 () Bool)

(assert (=> b!3673451 m!4182543))

(declare-fun m!4182545 () Bool)

(assert (=> b!3673451 m!4182545))

(declare-fun m!4182547 () Bool)

(assert (=> b!3673456 m!4182547))

(declare-fun m!4182549 () Bool)

(assert (=> b!3673456 m!4182549))

(declare-fun m!4182551 () Bool)

(assert (=> b!3673456 m!4182551))

(declare-fun m!4182553 () Bool)

(assert (=> start!344410 m!4182553))

(assert (=> bm!265966 m!4182523))

(declare-fun m!4182555 () Bool)

(assert (=> b!3673457 m!4182555))

(assert (=> b!3673457 m!4182555))

(declare-fun m!4182557 () Bool)

(assert (=> b!3673457 m!4182557))

(declare-fun m!4182559 () Bool)

(assert (=> b!3673444 m!4182559))

(declare-fun m!4182561 () Bool)

(assert (=> b!3673444 m!4182561))

(assert (=> b!3673444 m!4182465))

(declare-fun m!4182563 () Bool)

(assert (=> b!3673444 m!4182563))

(declare-fun m!4182565 () Bool)

(assert (=> b!3673444 m!4182565))

(declare-fun m!4182567 () Bool)

(assert (=> b!3673444 m!4182567))

(declare-fun m!4182569 () Bool)

(assert (=> b!3673444 m!4182569))

(declare-fun m!4182571 () Bool)

(assert (=> b!3673444 m!4182571))

(declare-fun m!4182573 () Bool)

(assert (=> b!3673444 m!4182573))

(declare-fun m!4182575 () Bool)

(assert (=> b!3673444 m!4182575))

(declare-fun m!4182577 () Bool)

(assert (=> b!3673444 m!4182577))

(assert (=> b!3673444 m!4182571))

(declare-fun m!4182579 () Bool)

(assert (=> b!3673444 m!4182579))

(declare-fun m!4182581 () Bool)

(assert (=> b!3673444 m!4182581))

(declare-fun m!4182583 () Bool)

(assert (=> b!3673444 m!4182583))

(declare-fun m!4182585 () Bool)

(assert (=> b!3673444 m!4182585))

(declare-fun m!4182587 () Bool)

(assert (=> bm!265971 m!4182587))

(declare-fun m!4182589 () Bool)

(assert (=> b!3673478 m!4182589))

(declare-fun m!4182591 () Bool)

(assert (=> b!3673450 m!4182591))

(declare-fun m!4182593 () Bool)

(assert (=> b!3673432 m!4182593))

(declare-fun m!4182595 () Bool)

(assert (=> b!3673462 m!4182595))

(declare-fun m!4182597 () Bool)

(assert (=> b!3673445 m!4182597))

(declare-fun m!4182599 () Bool)

(assert (=> b!3673441 m!4182599))

(declare-fun m!4182601 () Bool)

(assert (=> b!3673441 m!4182601))

(declare-fun m!4182603 () Bool)

(assert (=> b!3673441 m!4182603))

(declare-fun m!4182605 () Bool)

(assert (=> bm!265967 m!4182605))

(declare-fun m!4182607 () Bool)

(assert (=> b!3673475 m!4182607))

(declare-fun m!4182609 () Bool)

(assert (=> b!3673475 m!4182609))

(declare-fun m!4182611 () Bool)

(assert (=> b!3673447 m!4182611))

(declare-fun m!4182613 () Bool)

(assert (=> b!3673447 m!4182613))

(declare-fun m!4182615 () Bool)

(assert (=> b!3673447 m!4182615))

(declare-fun m!4182617 () Bool)

(assert (=> b!3673447 m!4182617))

(declare-fun m!4182619 () Bool)

(assert (=> b!3673447 m!4182619))

(assert (=> b!3673447 m!4182613))

(declare-fun m!4182621 () Bool)

(assert (=> b!3673447 m!4182621))

(declare-fun m!4182623 () Bool)

(assert (=> b!3673447 m!4182623))

(declare-fun m!4182625 () Bool)

(assert (=> b!3673465 m!4182625))

(declare-fun m!4182627 () Bool)

(assert (=> b!3673430 m!4182627))

(declare-fun m!4182629 () Bool)

(assert (=> b!3673430 m!4182629))

(declare-fun m!4182631 () Bool)

(assert (=> b!3673467 m!4182631))

(declare-fun m!4182633 () Bool)

(assert (=> b!3673436 m!4182633))

(declare-fun m!4182635 () Bool)

(assert (=> b!3673448 m!4182635))

(check-sat (not b_next!97841) (not b!3673436) (not bm!265967) (not b!3673426) (not b_next!97845) (not b!3673447) b_and!273823 (not b!3673441) (not b!3673444) b_and!273825 (not b_next!97847) (not b!3673454) (not start!344410) (not bm!265970) (not b!3673476) (not b!3673459) (not b_next!97835) (not b!3673448) (not b!3673450) (not b_next!97839) b_and!273833 (not b_next!97837) (not b!3673472) (not b!3673467) (not bm!265971) (not b_next!97833) (not b!3673458) b_and!273821 (not b!3673445) (not b!3673456) (not b!3673475) (not b!3673452) (not b!3673438) (not b!3673462) (not b!3673478) (not b!3673432) b_and!273819 (not b!3673429) b_and!273831 (not b!3673427) (not bm!265966) (not b!3673465) (not b!3673430) (not b!3673433) (not b!3673461) tp_is_empty!18253 b_and!273829 (not b!3673442) (not b!3673431) (not b!3673466) b_and!273827 (not bm!265968) (not bm!265969) (not b!3673451) (not b!3673457) (not b_next!97843) (not b!3673437) (not b!3673439) (not b!3673471))
(check-sat (not b_next!97841) (not b_next!97835) (not b_next!97839) (not b_next!97833) b_and!273821 b_and!273819 (not b_next!97845) b_and!273831 b_and!273829 b_and!273823 b_and!273827 b_and!273825 (not b_next!97847) (not b_next!97843) b_and!273833 (not b_next!97837))
