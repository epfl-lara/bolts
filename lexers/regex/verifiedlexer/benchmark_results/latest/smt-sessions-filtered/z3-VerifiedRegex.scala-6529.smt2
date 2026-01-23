; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345022 () Bool)

(assert start!345022)

(declare-fun b!3677928 () Bool)

(declare-fun b_free!97345 () Bool)

(declare-fun b_next!98049 () Bool)

(assert (=> b!3677928 (= b_free!97345 (not b_next!98049))))

(declare-fun tp!1118353 () Bool)

(declare-fun b_and!274515 () Bool)

(assert (=> b!3677928 (= tp!1118353 b_and!274515)))

(declare-fun b_free!97347 () Bool)

(declare-fun b_next!98051 () Bool)

(assert (=> b!3677928 (= b_free!97347 (not b_next!98051))))

(declare-fun tp!1118354 () Bool)

(declare-fun b_and!274517 () Bool)

(assert (=> b!3677928 (= tp!1118354 b_and!274517)))

(declare-fun b!3677925 () Bool)

(declare-fun b_free!97349 () Bool)

(declare-fun b_next!98053 () Bool)

(assert (=> b!3677925 (= b_free!97349 (not b_next!98053))))

(declare-fun tp!1118342 () Bool)

(declare-fun b_and!274519 () Bool)

(assert (=> b!3677925 (= tp!1118342 b_and!274519)))

(declare-fun b_free!97351 () Bool)

(declare-fun b_next!98055 () Bool)

(assert (=> b!3677925 (= b_free!97351 (not b_next!98055))))

(declare-fun tp!1118347 () Bool)

(declare-fun b_and!274521 () Bool)

(assert (=> b!3677925 (= tp!1118347 b_and!274521)))

(declare-fun b!3677931 () Bool)

(declare-fun b_free!97353 () Bool)

(declare-fun b_next!98057 () Bool)

(assert (=> b!3677931 (= b_free!97353 (not b_next!98057))))

(declare-fun tp!1118348 () Bool)

(declare-fun b_and!274523 () Bool)

(assert (=> b!3677931 (= tp!1118348 b_and!274523)))

(declare-fun b_free!97355 () Bool)

(declare-fun b_next!98059 () Bool)

(assert (=> b!3677931 (= b_free!97355 (not b_next!98059))))

(declare-fun tp!1118356 () Bool)

(declare-fun b_and!274525 () Bool)

(assert (=> b!3677931 (= tp!1118356 b_and!274525)))

(declare-fun b!3677908 () Bool)

(declare-fun b_free!97357 () Bool)

(declare-fun b_next!98061 () Bool)

(assert (=> b!3677908 (= b_free!97357 (not b_next!98061))))

(declare-fun tp!1118349 () Bool)

(declare-fun b_and!274527 () Bool)

(assert (=> b!3677908 (= tp!1118349 b_and!274527)))

(declare-fun b_free!97359 () Bool)

(declare-fun b_next!98063 () Bool)

(assert (=> b!3677908 (= b_free!97359 (not b_next!98063))))

(declare-fun tp!1118343 () Bool)

(declare-fun b_and!274529 () Bool)

(assert (=> b!3677908 (= tp!1118343 b_and!274529)))

(declare-fun b!3677904 () Bool)

(declare-fun res!1494126 () Bool)

(declare-fun e!2277390 () Bool)

(assert (=> b!3677904 (=> (not res!1494126) (not e!2277390))))

(declare-datatypes ((List!38913 0))(
  ( (Nil!38789) (Cons!38789 (h!44209 (_ BitVec 16)) (t!300388 List!38913)) )
))
(declare-datatypes ((TokenValue!6068 0))(
  ( (FloatLiteralValue!12136 (text!42921 List!38913)) (TokenValueExt!6067 (__x!24353 Int)) (Broken!30340 (value!186817 List!38913)) (Object!6191) (End!6068) (Def!6068) (Underscore!6068) (Match!6068) (Else!6068) (Error!6068) (Case!6068) (If!6068) (Extends!6068) (Abstract!6068) (Class!6068) (Val!6068) (DelimiterValue!12136 (del!6128 List!38913)) (KeywordValue!6074 (value!186818 List!38913)) (CommentValue!12136 (value!186819 List!38913)) (WhitespaceValue!12136 (value!186820 List!38913)) (IndentationValue!6068 (value!186821 List!38913)) (String!43673) (Int32!6068) (Broken!30341 (value!186822 List!38913)) (Boolean!6069) (Unit!56674) (OperatorValue!6071 (op!6128 List!38913)) (IdentifierValue!12136 (value!186823 List!38913)) (IdentifierValue!12137 (value!186824 List!38913)) (WhitespaceValue!12137 (value!186825 List!38913)) (True!12136) (False!12136) (Broken!30342 (value!186826 List!38913)) (Broken!30343 (value!186827 List!38913)) (True!12137) (RightBrace!6068) (RightBracket!6068) (Colon!6068) (Null!6068) (Comma!6068) (LeftBracket!6068) (False!12137) (LeftBrace!6068) (ImaginaryLiteralValue!6068 (text!42922 List!38913)) (StringLiteralValue!18204 (value!186828 List!38913)) (EOFValue!6068 (value!186829 List!38913)) (IdentValue!6068 (value!186830 List!38913)) (DelimiterValue!12137 (value!186831 List!38913)) (DedentValue!6068 (value!186832 List!38913)) (NewLineValue!6068 (value!186833 List!38913)) (IntegerValue!18204 (value!186834 (_ BitVec 32)) (text!42923 List!38913)) (IntegerValue!18205 (value!186835 Int) (text!42924 List!38913)) (Times!6068) (Or!6068) (Equal!6068) (Minus!6068) (Broken!30344 (value!186836 List!38913)) (And!6068) (Div!6068) (LessEqual!6068) (Mod!6068) (Concat!16665) (Not!6068) (Plus!6068) (SpaceValue!6068 (value!186837 List!38913)) (IntegerValue!18206 (value!186838 Int) (text!42925 List!38913)) (StringLiteralValue!18205 (text!42926 List!38913)) (FloatLiteralValue!12137 (text!42927 List!38913)) (BytesLiteralValue!6068 (value!186839 List!38913)) (CommentValue!12137 (value!186840 List!38913)) (StringLiteralValue!18206 (value!186841 List!38913)) (ErrorTokenValue!6068 (msg!6129 List!38913)) )
))
(declare-datatypes ((C!21380 0))(
  ( (C!21381 (val!12738 Int)) )
))
(declare-datatypes ((Regex!10597 0))(
  ( (ElementMatch!10597 (c!636108 C!21380)) (Concat!16666 (regOne!21706 Regex!10597) (regTwo!21706 Regex!10597)) (EmptyExpr!10597) (Star!10597 (reg!10926 Regex!10597)) (EmptyLang!10597) (Union!10597 (regOne!21707 Regex!10597) (regTwo!21707 Regex!10597)) )
))
(declare-datatypes ((String!43674 0))(
  ( (String!43675 (value!186842 String)) )
))
(declare-datatypes ((List!38914 0))(
  ( (Nil!38790) (Cons!38790 (h!44210 C!21380) (t!300389 List!38914)) )
))
(declare-datatypes ((IArray!23751 0))(
  ( (IArray!23752 (innerList!11933 List!38914)) )
))
(declare-datatypes ((Conc!11873 0))(
  ( (Node!11873 (left!30270 Conc!11873) (right!30600 Conc!11873) (csize!23976 Int) (cheight!12084 Int)) (Leaf!18403 (xs!15075 IArray!23751) (csize!23977 Int)) (Empty!11873) )
))
(declare-datatypes ((BalanceConc!23360 0))(
  ( (BalanceConc!23361 (c!636109 Conc!11873)) )
))
(declare-datatypes ((TokenValueInjection!11564 0))(
  ( (TokenValueInjection!11565 (toValue!8134 Int) (toChars!7993 Int)) )
))
(declare-datatypes ((Rule!11476 0))(
  ( (Rule!11477 (regex!5838 Regex!10597) (tag!6638 String!43674) (isSeparator!5838 Bool) (transformation!5838 TokenValueInjection!11564)) )
))
(declare-datatypes ((Token!11042 0))(
  ( (Token!11043 (value!186843 TokenValue!6068) (rule!8672 Rule!11476) (size!29655 Int) (originalCharacters!6552 List!38914)) )
))
(declare-fun token!511 () Token!11042)

(declare-fun rule!403 () Rule!11476)

(assert (=> b!3677904 (= res!1494126 (= (rule!8672 token!511) rule!403))))

(declare-fun b!3677905 () Bool)

(declare-fun res!1494127 () Bool)

(declare-fun e!2277401 () Bool)

(assert (=> b!3677905 (=> (not res!1494127) (not e!2277401))))

(declare-datatypes ((List!38915 0))(
  ( (Nil!38791) (Cons!38791 (h!44211 Rule!11476) (t!300390 List!38915)) )
))
(declare-fun rules!3307 () List!38915)

(declare-fun anOtherTypeRule!33 () Rule!11476)

(declare-fun contains!7743 (List!38915 Rule!11476) Bool)

(assert (=> b!3677905 (= res!1494127 (contains!7743 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3677906 () Bool)

(declare-fun res!1494123 () Bool)

(declare-fun e!2277419 () Bool)

(assert (=> b!3677906 (=> res!1494123 e!2277419)))

(declare-fun lt!1284638 () C!21380)

(declare-fun contains!7744 (List!38914 C!21380) Bool)

(declare-fun usedCharacters!1050 (Regex!10597) List!38914)

(assert (=> b!3677906 (= res!1494123 (not (contains!7744 (usedCharacters!1050 (regex!5838 anOtherTypeRule!33)) lt!1284638)))))

(declare-fun b!3677907 () Bool)

(declare-fun e!2277408 () Bool)

(declare-fun e!2277411 () Bool)

(declare-fun tp!1118355 () Bool)

(declare-fun inv!52280 (String!43674) Bool)

(declare-fun inv!52283 (TokenValueInjection!11564) Bool)

(assert (=> b!3677907 (= e!2277408 (and tp!1118355 (inv!52280 (tag!6638 (rule!8672 token!511))) (inv!52283 (transformation!5838 (rule!8672 token!511))) e!2277411))))

(declare-fun e!2277425 () Bool)

(assert (=> b!3677908 (= e!2277425 (and tp!1118349 tp!1118343))))

(declare-fun b!3677909 () Bool)

(declare-datatypes ((Unit!56675 0))(
  ( (Unit!56676) )
))
(declare-fun e!2277396 () Unit!56675)

(declare-fun e!2277405 () Unit!56675)

(assert (=> b!3677909 (= e!2277396 e!2277405)))

(declare-fun c!636101 () Bool)

(declare-datatypes ((tuple2!38660 0))(
  ( (tuple2!38661 (_1!22464 Token!11042) (_2!22464 List!38914)) )
))
(declare-fun lt!1284621 () tuple2!38660)

(assert (=> b!3677909 (= c!636101 (isSeparator!5838 (rule!8672 (_1!22464 lt!1284621))))))

(declare-fun b!3677910 () Bool)

(declare-fun Unit!56677 () Unit!56675)

(assert (=> b!3677910 (= e!2277405 Unit!56677)))

(declare-fun bm!266362 () Bool)

(declare-fun call!266368 () List!38914)

(assert (=> bm!266362 (= call!266368 (usedCharacters!1050 (regex!5838 (rule!8672 (_1!22464 lt!1284621)))))))

(declare-fun b!3677911 () Bool)

(declare-fun e!2277407 () Bool)

(assert (=> b!3677911 (= e!2277407 true)))

(declare-fun lt!1284617 () List!38914)

(declare-datatypes ((LexerInterface!5427 0))(
  ( (LexerInterfaceExt!5424 (__x!24354 Int)) (Lexer!5425) )
))
(declare-fun thiss!23823 () LexerInterface!5427)

(declare-fun lt!1284590 () List!38914)

(declare-fun lt!1284603 () List!38914)

(declare-datatypes ((Option!8304 0))(
  ( (None!8303) (Some!8303 (v!38235 tuple2!38660)) )
))
(declare-fun maxPrefixOneRule!2099 (LexerInterface!5427 Rule!11476 List!38914) Option!8304)

(declare-fun apply!9340 (TokenValueInjection!11564 BalanceConc!23360) TokenValue!6068)

(declare-fun seqFromList!4387 (List!38914) BalanceConc!23360)

(declare-fun size!29656 (List!38914) Int)

(assert (=> b!3677911 (= (maxPrefixOneRule!2099 thiss!23823 rule!403 lt!1284590) (Some!8303 (tuple2!38661 (Token!11043 (apply!9340 (transformation!5838 rule!403) (seqFromList!4387 lt!1284603)) rule!403 (size!29656 lt!1284603) lt!1284603) lt!1284617)))))

(declare-fun lt!1284608 () Unit!56675)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1155 (LexerInterface!5427 List!38915 List!38914 List!38914 List!38914 Rule!11476) Unit!56675)

(assert (=> b!3677911 (= lt!1284608 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1155 thiss!23823 rules!3307 lt!1284603 lt!1284590 lt!1284617 rule!403))))

(declare-fun getSuffix!1754 (List!38914 List!38914) List!38914)

(assert (=> b!3677911 (= lt!1284617 (getSuffix!1754 lt!1284590 lt!1284603))))

(declare-fun lt!1284632 () Unit!56675)

(declare-fun e!2277392 () Unit!56675)

(assert (=> b!3677911 (= lt!1284632 e!2277392)))

(declare-fun c!636105 () Bool)

(assert (=> b!3677911 (= c!636105 (not (= (rule!8672 (_1!22464 lt!1284621)) (rule!8672 token!511))))))

(declare-fun lt!1284591 () List!38914)

(assert (=> b!3677911 (= lt!1284591 lt!1284603)))

(declare-fun lt!1284622 () Unit!56675)

(declare-fun lemmaIsPrefixSameLengthThenSameList!663 (List!38914 List!38914 List!38914) Unit!56675)

(assert (=> b!3677911 (= lt!1284622 (lemmaIsPrefixSameLengthThenSameList!663 lt!1284591 lt!1284603 lt!1284590))))

(declare-fun lt!1284599 () Unit!56675)

(declare-fun e!2277415 () Unit!56675)

(assert (=> b!3677911 (= lt!1284599 e!2277415)))

(declare-fun c!636103 () Bool)

(declare-fun lt!1284611 () Int)

(declare-fun lt!1284598 () Int)

(assert (=> b!3677911 (= c!636103 (< lt!1284611 lt!1284598))))

(declare-fun lt!1284585 () Unit!56675)

(declare-fun e!2277410 () Unit!56675)

(assert (=> b!3677911 (= lt!1284585 e!2277410)))

(declare-fun c!636099 () Bool)

(assert (=> b!3677911 (= c!636099 (> lt!1284611 lt!1284598))))

(declare-fun lt!1284586 () BalanceConc!23360)

(declare-fun size!29657 (BalanceConc!23360) Int)

(assert (=> b!3677911 (= lt!1284598 (size!29657 lt!1284586))))

(declare-fun lt!1284600 () Unit!56675)

(assert (=> b!3677911 (= lt!1284600 e!2277396)))

(declare-fun c!636100 () Bool)

(assert (=> b!3677911 (= c!636100 (isSeparator!5838 rule!403))))

(declare-fun lt!1284588 () Unit!56675)

(declare-fun e!2277393 () Unit!56675)

(assert (=> b!3677911 (= lt!1284588 e!2277393)))

(declare-fun c!636098 () Bool)

(declare-fun lt!1284596 () List!38914)

(declare-fun lt!1284609 () C!21380)

(assert (=> b!3677911 (= c!636098 (not (contains!7744 lt!1284596 lt!1284609)))))

(declare-fun head!7888 (List!38914) C!21380)

(assert (=> b!3677911 (= lt!1284609 (head!7888 lt!1284591))))

(declare-fun b!3677912 () Bool)

(declare-fun e!2277398 () Bool)

(declare-fun e!2277394 () Bool)

(assert (=> b!3677912 (= e!2277398 e!2277394)))

(declare-fun res!1494120 () Bool)

(assert (=> b!3677912 (=> (not res!1494120) (not e!2277394))))

(declare-fun lt!1284615 () Rule!11476)

(declare-fun matchR!5166 (Regex!10597 List!38914) Bool)

(declare-fun list!14416 (BalanceConc!23360) List!38914)

(declare-fun charsOf!3852 (Token!11042) BalanceConc!23360)

(assert (=> b!3677912 (= res!1494120 (matchR!5166 (regex!5838 lt!1284615) (list!14416 (charsOf!3852 (_1!22464 lt!1284621)))))))

(declare-datatypes ((Option!8305 0))(
  ( (None!8304) (Some!8304 (v!38236 Rule!11476)) )
))
(declare-fun lt!1284616 () Option!8305)

(declare-fun get!12833 (Option!8305) Rule!11476)

(assert (=> b!3677912 (= lt!1284615 (get!12833 lt!1284616))))

(declare-fun bm!266363 () Bool)

(declare-fun call!266367 () List!38914)

(assert (=> bm!266363 (= call!266367 (usedCharacters!1050 (regex!5838 (rule!8672 (_1!22464 lt!1284621)))))))

(declare-fun b!3677914 () Bool)

(declare-fun Unit!56678 () Unit!56675)

(assert (=> b!3677914 (= e!2277393 Unit!56678)))

(declare-fun lt!1284630 () Unit!56675)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!786 (Regex!10597 List!38914 C!21380) Unit!56675)

(assert (=> b!3677914 (= lt!1284630 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!786 (regex!5838 rule!403) lt!1284603 lt!1284609))))

(assert (=> b!3677914 false))

(declare-fun b!3677915 () Bool)

(declare-fun e!2277422 () Bool)

(declare-fun tp!1118346 () Bool)

(assert (=> b!3677915 (= e!2277422 (and tp!1118346 (inv!52280 (tag!6638 rule!403)) (inv!52283 (transformation!5838 rule!403)) e!2277425))))

(declare-fun b!3677916 () Bool)

(declare-fun e!2277417 () Unit!56675)

(assert (=> b!3677916 (= e!2277410 e!2277417)))

(declare-fun lt!1284639 () Unit!56675)

(declare-fun suffix!1395 () List!38914)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!146 (List!38914 List!38914 List!38914 List!38914) Unit!56675)

(assert (=> b!3677916 (= lt!1284639 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!146 lt!1284603 suffix!1395 lt!1284591 lt!1284590))))

(assert (=> b!3677916 (contains!7744 lt!1284591 lt!1284638)))

(declare-fun c!636102 () Bool)

(assert (=> b!3677916 (= c!636102 (isSeparator!5838 rule!403))))

(declare-fun bm!266364 () Bool)

(declare-fun call!266371 () Unit!56675)

(assert (=> bm!266364 (= call!266371 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!786 (regex!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284591 lt!1284638))))

(declare-fun b!3677917 () Bool)

(declare-fun e!2277400 () Unit!56675)

(declare-fun Unit!56679 () Unit!56675)

(assert (=> b!3677917 (= e!2277400 Unit!56679)))

(declare-fun b!3677918 () Bool)

(declare-fun e!2277403 () Bool)

(assert (=> b!3677918 (= e!2277390 (not e!2277403))))

(declare-fun res!1494131 () Bool)

(assert (=> b!3677918 (=> res!1494131 e!2277403)))

(assert (=> b!3677918 (= res!1494131 (not (matchR!5166 (regex!5838 rule!403) lt!1284603)))))

(declare-fun ruleValid!2102 (LexerInterface!5427 Rule!11476) Bool)

(assert (=> b!3677918 (ruleValid!2102 thiss!23823 rule!403)))

(declare-fun lt!1284589 () Unit!56675)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1256 (LexerInterface!5427 Rule!11476 List!38915) Unit!56675)

(assert (=> b!3677918 (= lt!1284589 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1256 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3677919 () Bool)

(assert (=> b!3677919 false))

(declare-fun lt!1284631 () Unit!56675)

(declare-fun call!266372 () Unit!56675)

(assert (=> b!3677919 (= lt!1284631 call!266372)))

(declare-fun call!266369 () Bool)

(assert (=> b!3677919 (not call!266369)))

(declare-fun lt!1284610 () Unit!56675)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!484 (LexerInterface!5427 List!38915 List!38915 Rule!11476 Rule!11476 C!21380) Unit!56675)

(assert (=> b!3677919 (= lt!1284610 (lemmaNonSepRuleNotContainsCharContainedInASepRule!484 thiss!23823 rules!3307 rules!3307 (rule!8672 (_1!22464 lt!1284621)) rule!403 lt!1284609))))

(declare-fun Unit!56680 () Unit!56675)

(assert (=> b!3677919 (= e!2277400 Unit!56680)))

(declare-fun b!3677920 () Bool)

(declare-fun e!2277421 () Bool)

(declare-fun e!2277399 () Bool)

(declare-fun tp!1118344 () Bool)

(assert (=> b!3677920 (= e!2277399 (and tp!1118344 (inv!52280 (tag!6638 anOtherTypeRule!33)) (inv!52283 (transformation!5838 anOtherTypeRule!33)) e!2277421))))

(declare-fun b!3677921 () Bool)

(declare-fun e!2277402 () Bool)

(assert (=> b!3677921 (= e!2277402 e!2277390)))

(declare-fun res!1494113 () Bool)

(assert (=> b!3677921 (=> (not res!1494113) (not e!2277390))))

(declare-fun lt!1284637 () tuple2!38660)

(assert (=> b!3677921 (= res!1494113 (= (_1!22464 lt!1284637) token!511))))

(declare-fun lt!1284636 () Option!8304)

(declare-fun get!12834 (Option!8304) tuple2!38660)

(assert (=> b!3677921 (= lt!1284637 (get!12834 lt!1284636))))

(declare-fun b!3677922 () Bool)

(declare-fun Unit!56681 () Unit!56675)

(assert (=> b!3677922 (= e!2277392 Unit!56681)))

(declare-fun lt!1284629 () Int)

(declare-fun getIndex!506 (List!38915 Rule!11476) Int)

(assert (=> b!3677922 (= lt!1284629 (getIndex!506 rules!3307 (rule!8672 (_1!22464 lt!1284621))))))

(declare-fun lt!1284587 () Int)

(assert (=> b!3677922 (= lt!1284587 (getIndex!506 rules!3307 rule!403))))

(declare-fun c!636106 () Bool)

(assert (=> b!3677922 (= c!636106 (< lt!1284629 lt!1284587))))

(declare-fun lt!1284642 () Unit!56675)

(declare-fun e!2277404 () Unit!56675)

(assert (=> b!3677922 (= lt!1284642 e!2277404)))

(declare-fun c!636104 () Bool)

(assert (=> b!3677922 (= c!636104 (< lt!1284587 lt!1284629))))

(declare-fun lt!1284641 () Unit!56675)

(declare-fun e!2277424 () Unit!56675)

(assert (=> b!3677922 (= lt!1284641 e!2277424)))

(declare-fun lt!1284634 () Unit!56675)

(declare-fun lemmaSameIndexThenSameElement!238 (List!38915 Rule!11476 Rule!11476) Unit!56675)

(assert (=> b!3677922 (= lt!1284634 (lemmaSameIndexThenSameElement!238 rules!3307 (rule!8672 (_1!22464 lt!1284621)) rule!403))))

(assert (=> b!3677922 false))

(declare-fun b!3677923 () Bool)

(declare-fun res!1494117 () Bool)

(declare-fun e!2277414 () Bool)

(assert (=> b!3677923 (=> res!1494117 e!2277414)))

(assert (=> b!3677923 (= res!1494117 (not (matchR!5166 (regex!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284591)))))

(declare-fun b!3677924 () Bool)

(assert (=> b!3677924 (= e!2277396 e!2277400)))

(declare-fun c!636107 () Bool)

(assert (=> b!3677924 (= c!636107 (not (isSeparator!5838 (rule!8672 (_1!22464 lt!1284621)))))))

(declare-fun e!2277413 () Bool)

(assert (=> b!3677925 (= e!2277413 (and tp!1118342 tp!1118347))))

(declare-fun b!3677926 () Bool)

(assert (=> b!3677926 false))

(declare-fun lt!1284601 () Unit!56675)

(assert (=> b!3677926 (= lt!1284601 call!266372)))

(assert (=> b!3677926 (not call!266369)))

(declare-fun lt!1284627 () Unit!56675)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!366 (LexerInterface!5427 List!38915 List!38915 Rule!11476 Rule!11476 C!21380) Unit!56675)

(assert (=> b!3677926 (= lt!1284627 (lemmaSepRuleNotContainsCharContainedInANonSepRule!366 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8672 (_1!22464 lt!1284621)) lt!1284609))))

(declare-fun Unit!56682 () Unit!56675)

(assert (=> b!3677926 (= e!2277405 Unit!56682)))

(declare-fun b!3677927 () Bool)

(declare-fun res!1494122 () Bool)

(assert (=> b!3677927 (=> (not res!1494122) (not e!2277401))))

(declare-fun isEmpty!23034 (List!38915) Bool)

(assert (=> b!3677927 (= res!1494122 (not (isEmpty!23034 rules!3307)))))

(assert (=> b!3677928 (= e!2277421 (and tp!1118353 tp!1118354))))

(declare-fun b!3677929 () Bool)

(declare-fun e!2277406 () Bool)

(assert (=> b!3677929 (= e!2277406 e!2277407)))

(declare-fun res!1494128 () Bool)

(assert (=> b!3677929 (=> res!1494128 e!2277407)))

(declare-fun lt!1284604 () List!38914)

(declare-fun lt!1284625 () Option!8304)

(assert (=> b!3677929 (= res!1494128 (or (not (= lt!1284604 (_2!22464 lt!1284621))) (not (= lt!1284625 (Some!8303 (tuple2!38661 (_1!22464 lt!1284621) lt!1284604))))))))

(assert (=> b!3677929 (= (_2!22464 lt!1284621) lt!1284604)))

(declare-fun lt!1284607 () Unit!56675)

(declare-fun lemmaSamePrefixThenSameSuffix!1528 (List!38914 List!38914 List!38914 List!38914 List!38914) Unit!56675)

(assert (=> b!3677929 (= lt!1284607 (lemmaSamePrefixThenSameSuffix!1528 lt!1284591 (_2!22464 lt!1284621) lt!1284591 lt!1284604 lt!1284590))))

(assert (=> b!3677929 (= lt!1284604 (getSuffix!1754 lt!1284590 lt!1284591))))

(declare-fun lt!1284628 () TokenValue!6068)

(declare-fun lt!1284635 () Int)

(assert (=> b!3677929 (= lt!1284625 (Some!8303 (tuple2!38661 (Token!11043 lt!1284628 (rule!8672 (_1!22464 lt!1284621)) lt!1284635 lt!1284591) (_2!22464 lt!1284621))))))

(assert (=> b!3677929 (= lt!1284625 (maxPrefixOneRule!2099 thiss!23823 (rule!8672 (_1!22464 lt!1284621)) lt!1284590))))

(assert (=> b!3677929 (= lt!1284635 (size!29656 lt!1284591))))

(assert (=> b!3677929 (= lt!1284628 (apply!9340 (transformation!5838 (rule!8672 (_1!22464 lt!1284621))) (seqFromList!4387 lt!1284591)))))

(declare-fun lt!1284613 () Unit!56675)

(assert (=> b!3677929 (= lt!1284613 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1155 thiss!23823 rules!3307 lt!1284591 lt!1284590 (_2!22464 lt!1284621) (rule!8672 (_1!22464 lt!1284621))))))

(declare-fun b!3677930 () Bool)

(declare-fun res!1494115 () Bool)

(assert (=> b!3677930 (=> (not res!1494115) (not e!2277401))))

(declare-fun rulesInvariant!4824 (LexerInterface!5427 List!38915) Bool)

(assert (=> b!3677930 (= res!1494115 (rulesInvariant!4824 thiss!23823 rules!3307))))

(assert (=> b!3677931 (= e!2277411 (and tp!1118348 tp!1118356))))

(declare-fun tp!1118352 () Bool)

(declare-fun e!2277391 () Bool)

(declare-fun b!3677932 () Bool)

(declare-fun inv!21 (TokenValue!6068) Bool)

(assert (=> b!3677932 (= e!2277391 (and (inv!21 (value!186843 token!511)) e!2277408 tp!1118352))))

(declare-fun b!3677933 () Bool)

(declare-fun Unit!56683 () Unit!56675)

(assert (=> b!3677933 (= e!2277415 Unit!56683)))

(declare-fun b!3677934 () Bool)

(assert (=> b!3677934 false))

(declare-fun lt!1284605 () Unit!56675)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!246 (LexerInterface!5427 List!38915 Rule!11476 List!38914 List!38914 Rule!11476) Unit!56675)

(assert (=> b!3677934 (= lt!1284605 (lemmaMaxPrefNoSmallerRuleMatches!246 thiss!23823 rules!3307 (rule!8672 (_1!22464 lt!1284621)) lt!1284603 lt!1284590 rule!403))))

(declare-fun Unit!56684 () Unit!56675)

(assert (=> b!3677934 (= e!2277424 Unit!56684)))

(declare-fun b!3677935 () Bool)

(declare-fun Unit!56685 () Unit!56675)

(assert (=> b!3677935 (= e!2277404 Unit!56685)))

(declare-fun b!3677936 () Bool)

(declare-fun Unit!56686 () Unit!56675)

(assert (=> b!3677936 (= e!2277393 Unit!56686)))

(declare-fun b!3677937 () Bool)

(assert (=> b!3677937 (= e!2277414 e!2277406)))

(declare-fun res!1494124 () Bool)

(assert (=> b!3677937 (=> res!1494124 e!2277406)))

(declare-fun lt!1284640 () TokenValue!6068)

(declare-fun lt!1284602 () Option!8304)

(assert (=> b!3677937 (= res!1494124 (not (= lt!1284602 (Some!8303 (tuple2!38661 (Token!11043 lt!1284640 (rule!8672 (_1!22464 lt!1284621)) lt!1284611 lt!1284591) (_2!22464 lt!1284621))))))))

(declare-fun lt!1284623 () BalanceConc!23360)

(assert (=> b!3677937 (= lt!1284611 (size!29657 lt!1284623))))

(assert (=> b!3677937 (= lt!1284640 (apply!9340 (transformation!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284623))))

(declare-fun lt!1284620 () Unit!56675)

(declare-fun lemmaCharactersSize!883 (Token!11042) Unit!56675)

(assert (=> b!3677937 (= lt!1284620 (lemmaCharactersSize!883 (_1!22464 lt!1284621)))))

(declare-fun lt!1284624 () Unit!56675)

(declare-fun lemmaEqSameImage!1021 (TokenValueInjection!11564 BalanceConc!23360 BalanceConc!23360) Unit!56675)

(assert (=> b!3677937 (= lt!1284624 (lemmaEqSameImage!1021 (transformation!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284623 (seqFromList!4387 (originalCharacters!6552 (_1!22464 lt!1284621)))))))

(declare-fun lt!1284597 () Unit!56675)

(declare-fun lemmaSemiInverse!1587 (TokenValueInjection!11564 BalanceConc!23360) Unit!56675)

(assert (=> b!3677937 (= lt!1284597 (lemmaSemiInverse!1587 (transformation!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284623))))

(declare-fun b!3677938 () Bool)

(declare-fun Unit!56687 () Unit!56675)

(assert (=> b!3677938 (= e!2277410 Unit!56687)))

(declare-fun b!3677939 () Bool)

(declare-fun e!2277397 () Bool)

(declare-fun e!2277418 () Bool)

(declare-fun tp!1118351 () Bool)

(assert (=> b!3677939 (= e!2277397 (and e!2277418 tp!1118351))))

(declare-fun bm!266365 () Bool)

(assert (=> bm!266365 (= call!266369 (contains!7744 call!266368 lt!1284609))))

(declare-fun b!3677940 () Bool)

(assert (=> b!3677940 (= e!2277403 e!2277419)))

(declare-fun res!1494125 () Bool)

(assert (=> b!3677940 (=> res!1494125 e!2277419)))

(assert (=> b!3677940 (= res!1494125 (contains!7744 lt!1284596 lt!1284638))))

(assert (=> b!3677940 (= lt!1284638 (head!7888 suffix!1395))))

(assert (=> b!3677940 (= lt!1284596 (usedCharacters!1050 (regex!5838 rule!403)))))

(declare-fun b!3677941 () Bool)

(assert (=> b!3677941 (= e!2277401 e!2277402)))

(declare-fun res!1494129 () Bool)

(assert (=> b!3677941 (=> (not res!1494129) (not e!2277402))))

(declare-fun isDefined!6536 (Option!8304) Bool)

(assert (=> b!3677941 (= res!1494129 (isDefined!6536 lt!1284636))))

(declare-fun maxPrefix!2961 (LexerInterface!5427 List!38915 List!38914) Option!8304)

(assert (=> b!3677941 (= lt!1284636 (maxPrefix!2961 thiss!23823 rules!3307 lt!1284603))))

(assert (=> b!3677941 (= lt!1284603 (list!14416 lt!1284586))))

(assert (=> b!3677941 (= lt!1284586 (charsOf!3852 token!511))))

(declare-fun bm!266366 () Bool)

(assert (=> bm!266366 (= call!266372 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!786 (regex!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284591 lt!1284609))))

(declare-fun b!3677942 () Bool)

(declare-fun Unit!56688 () Unit!56675)

(assert (=> b!3677942 (= e!2277415 Unit!56688)))

(declare-fun lt!1284593 () Unit!56675)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!380 (LexerInterface!5427 List!38915 Rule!11476 List!38914 List!38914 List!38914 Rule!11476) Unit!56675)

(assert (=> b!3677942 (= lt!1284593 (lemmaMaxPrefixOutputsMaxPrefix!380 thiss!23823 rules!3307 (rule!8672 (_1!22464 lt!1284621)) lt!1284591 lt!1284590 lt!1284603 rule!403))))

(assert (=> b!3677942 false))

(declare-fun b!3677943 () Bool)

(assert (=> b!3677943 false))

(declare-fun lt!1284594 () Unit!56675)

(assert (=> b!3677943 (= lt!1284594 call!266371)))

(declare-fun call!266370 () Bool)

(assert (=> b!3677943 (not call!266370)))

(declare-fun lt!1284618 () Unit!56675)

(assert (=> b!3677943 (= lt!1284618 (lemmaNonSepRuleNotContainsCharContainedInASepRule!484 thiss!23823 rules!3307 rules!3307 (rule!8672 (_1!22464 lt!1284621)) anOtherTypeRule!33 lt!1284638))))

(declare-fun Unit!56689 () Unit!56675)

(assert (=> b!3677943 (= e!2277417 Unit!56689)))

(declare-fun b!3677944 () Bool)

(declare-fun Unit!56690 () Unit!56675)

(assert (=> b!3677944 (= e!2277392 Unit!56690)))

(declare-fun b!3677945 () Bool)

(assert (=> b!3677945 (= e!2277394 (= (rule!8672 (_1!22464 lt!1284621)) lt!1284615))))

(declare-fun b!3677946 () Bool)

(assert (=> b!3677946 false))

(declare-fun lt!1284592 () Unit!56675)

(assert (=> b!3677946 (= lt!1284592 call!266371)))

(assert (=> b!3677946 (not call!266370)))

(declare-fun lt!1284626 () Unit!56675)

(assert (=> b!3677946 (= lt!1284626 (lemmaSepRuleNotContainsCharContainedInANonSepRule!366 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8672 (_1!22464 lt!1284621)) lt!1284638))))

(declare-fun Unit!56691 () Unit!56675)

(assert (=> b!3677946 (= e!2277417 Unit!56691)))

(declare-fun b!3677947 () Bool)

(declare-fun res!1494130 () Bool)

(assert (=> b!3677947 (=> (not res!1494130) (not e!2277401))))

(assert (=> b!3677947 (= res!1494130 (contains!7743 rules!3307 rule!403))))

(declare-fun b!3677948 () Bool)

(declare-fun e!2277420 () Bool)

(assert (=> b!3677948 e!2277420))

(declare-fun res!1494119 () Bool)

(assert (=> b!3677948 (=> (not res!1494119) (not e!2277420))))

(assert (=> b!3677948 (= res!1494119 (not (matchR!5166 (regex!5838 (rule!8672 (_1!22464 lt!1284621))) lt!1284603)))))

(declare-fun lt!1284612 () Unit!56675)

(assert (=> b!3677948 (= lt!1284612 (lemmaMaxPrefNoSmallerRuleMatches!246 thiss!23823 rules!3307 rule!403 lt!1284603 lt!1284603 (rule!8672 (_1!22464 lt!1284621))))))

(declare-fun isEmpty!23035 (List!38914) Bool)

(assert (=> b!3677948 (isEmpty!23035 (getSuffix!1754 lt!1284603 lt!1284603))))

(declare-fun lt!1284619 () Unit!56675)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!218 (List!38914) Unit!56675)

(assert (=> b!3677948 (= lt!1284619 (lemmaGetSuffixOnListWithItSelfIsEmpty!218 lt!1284603))))

(declare-fun Unit!56692 () Unit!56675)

(assert (=> b!3677948 (= e!2277404 Unit!56692)))

(declare-fun bm!266367 () Bool)

(assert (=> bm!266367 (= call!266370 (contains!7744 call!266367 lt!1284638))))

(declare-fun b!3677949 () Bool)

(assert (=> b!3677949 (= e!2277419 e!2277414)))

(declare-fun res!1494132 () Bool)

(assert (=> b!3677949 (=> res!1494132 e!2277414)))

(declare-fun isPrefix!3201 (List!38914 List!38914) Bool)

(assert (=> b!3677949 (= res!1494132 (not (isPrefix!3201 lt!1284591 lt!1284590)))))

(declare-fun ++!9654 (List!38914 List!38914) List!38914)

(assert (=> b!3677949 (isPrefix!3201 lt!1284591 (++!9654 lt!1284591 (_2!22464 lt!1284621)))))

(declare-fun lt!1284633 () Unit!56675)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2120 (List!38914 List!38914) Unit!56675)

(assert (=> b!3677949 (= lt!1284633 (lemmaConcatTwoListThenFirstIsPrefix!2120 lt!1284591 (_2!22464 lt!1284621)))))

(assert (=> b!3677949 (= lt!1284591 (list!14416 lt!1284623))))

(assert (=> b!3677949 (= lt!1284623 (charsOf!3852 (_1!22464 lt!1284621)))))

(assert (=> b!3677949 e!2277398))

(declare-fun res!1494116 () Bool)

(assert (=> b!3677949 (=> (not res!1494116) (not e!2277398))))

(declare-fun isDefined!6537 (Option!8305) Bool)

(assert (=> b!3677949 (= res!1494116 (isDefined!6537 lt!1284616))))

(declare-fun getRuleFromTag!1442 (LexerInterface!5427 List!38915 String!43674) Option!8305)

(assert (=> b!3677949 (= lt!1284616 (getRuleFromTag!1442 thiss!23823 rules!3307 (tag!6638 (rule!8672 (_1!22464 lt!1284621)))))))

(declare-fun lt!1284595 () Unit!56675)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1442 (LexerInterface!5427 List!38915 List!38914 Token!11042) Unit!56675)

(assert (=> b!3677949 (= lt!1284595 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1442 thiss!23823 rules!3307 lt!1284590 (_1!22464 lt!1284621)))))

(assert (=> b!3677949 (= lt!1284621 (get!12834 lt!1284602))))

(declare-fun lt!1284614 () Unit!56675)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1105 (LexerInterface!5427 List!38915 List!38914 List!38914) Unit!56675)

(assert (=> b!3677949 (= lt!1284614 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1105 thiss!23823 rules!3307 lt!1284603 suffix!1395))))

(assert (=> b!3677949 (= lt!1284602 (maxPrefix!2961 thiss!23823 rules!3307 lt!1284590))))

(assert (=> b!3677949 (isPrefix!3201 lt!1284603 lt!1284590)))

(declare-fun lt!1284606 () Unit!56675)

(assert (=> b!3677949 (= lt!1284606 (lemmaConcatTwoListThenFirstIsPrefix!2120 lt!1284603 suffix!1395))))

(assert (=> b!3677949 (= lt!1284590 (++!9654 lt!1284603 suffix!1395))))

(declare-fun b!3677950 () Bool)

(declare-fun res!1494118 () Bool)

(assert (=> b!3677950 (=> (not res!1494118) (not e!2277401))))

(assert (=> b!3677950 (= res!1494118 (not (= (isSeparator!5838 anOtherTypeRule!33) (isSeparator!5838 rule!403))))))

(declare-fun b!3677913 () Bool)

(declare-fun res!1494121 () Bool)

(assert (=> b!3677913 (=> res!1494121 e!2277403)))

(assert (=> b!3677913 (= res!1494121 (isEmpty!23035 suffix!1395))))

(declare-fun res!1494111 () Bool)

(assert (=> start!345022 (=> (not res!1494111) (not e!2277401))))

(get-info :version)

(assert (=> start!345022 (= res!1494111 ((_ is Lexer!5425) thiss!23823))))

(assert (=> start!345022 e!2277401))

(assert (=> start!345022 e!2277397))

(declare-fun e!2277423 () Bool)

(assert (=> start!345022 e!2277423))

(assert (=> start!345022 true))

(declare-fun inv!52284 (Token!11042) Bool)

(assert (=> start!345022 (and (inv!52284 token!511) e!2277391)))

(assert (=> start!345022 e!2277422))

(assert (=> start!345022 e!2277399))

(declare-fun b!3677951 () Bool)

(declare-fun Unit!56693 () Unit!56675)

(assert (=> b!3677951 (= e!2277424 Unit!56693)))

(declare-fun b!3677952 () Bool)

(declare-fun res!1494112 () Bool)

(assert (=> b!3677952 (=> res!1494112 e!2277419)))

(declare-fun sepAndNonSepRulesDisjointChars!2006 (List!38915 List!38915) Bool)

(assert (=> b!3677952 (= res!1494112 (not (sepAndNonSepRulesDisjointChars!2006 rules!3307 rules!3307)))))

(declare-fun tp!1118350 () Bool)

(declare-fun b!3677953 () Bool)

(assert (=> b!3677953 (= e!2277418 (and tp!1118350 (inv!52280 (tag!6638 (h!44211 rules!3307))) (inv!52283 (transformation!5838 (h!44211 rules!3307))) e!2277413))))

(declare-fun b!3677954 () Bool)

(declare-fun res!1494114 () Bool)

(assert (=> b!3677954 (=> (not res!1494114) (not e!2277390))))

(assert (=> b!3677954 (= res!1494114 (isEmpty!23035 (_2!22464 lt!1284637)))))

(declare-fun b!3677955 () Bool)

(declare-fun tp_is_empty!18277 () Bool)

(declare-fun tp!1118345 () Bool)

(assert (=> b!3677955 (= e!2277423 (and tp_is_empty!18277 tp!1118345))))

(declare-fun b!3677956 () Bool)

(assert (=> b!3677956 (= e!2277420 false)))

(assert (= (and start!345022 res!1494111) b!3677927))

(assert (= (and b!3677927 res!1494122) b!3677930))

(assert (= (and b!3677930 res!1494115) b!3677947))

(assert (= (and b!3677947 res!1494130) b!3677905))

(assert (= (and b!3677905 res!1494127) b!3677950))

(assert (= (and b!3677950 res!1494118) b!3677941))

(assert (= (and b!3677941 res!1494129) b!3677921))

(assert (= (and b!3677921 res!1494113) b!3677954))

(assert (= (and b!3677954 res!1494114) b!3677904))

(assert (= (and b!3677904 res!1494126) b!3677918))

(assert (= (and b!3677918 (not res!1494131)) b!3677913))

(assert (= (and b!3677913 (not res!1494121)) b!3677940))

(assert (= (and b!3677940 (not res!1494125)) b!3677906))

(assert (= (and b!3677906 (not res!1494123)) b!3677952))

(assert (= (and b!3677952 (not res!1494112)) b!3677949))

(assert (= (and b!3677949 res!1494116) b!3677912))

(assert (= (and b!3677912 res!1494120) b!3677945))

(assert (= (and b!3677949 (not res!1494132)) b!3677923))

(assert (= (and b!3677923 (not res!1494117)) b!3677937))

(assert (= (and b!3677937 (not res!1494124)) b!3677929))

(assert (= (and b!3677929 (not res!1494128)) b!3677911))

(assert (= (and b!3677911 c!636098) b!3677914))

(assert (= (and b!3677911 (not c!636098)) b!3677936))

(assert (= (and b!3677911 c!636100) b!3677924))

(assert (= (and b!3677911 (not c!636100)) b!3677909))

(assert (= (and b!3677924 c!636107) b!3677919))

(assert (= (and b!3677924 (not c!636107)) b!3677917))

(assert (= (and b!3677909 c!636101) b!3677926))

(assert (= (and b!3677909 (not c!636101)) b!3677910))

(assert (= (or b!3677919 b!3677926) bm!266366))

(assert (= (or b!3677919 b!3677926) bm!266362))

(assert (= (or b!3677919 b!3677926) bm!266365))

(assert (= (and b!3677911 c!636099) b!3677916))

(assert (= (and b!3677911 (not c!636099)) b!3677938))

(assert (= (and b!3677916 c!636102) b!3677946))

(assert (= (and b!3677916 (not c!636102)) b!3677943))

(assert (= (or b!3677946 b!3677943) bm!266364))

(assert (= (or b!3677946 b!3677943) bm!266363))

(assert (= (or b!3677946 b!3677943) bm!266367))

(assert (= (and b!3677911 c!636103) b!3677942))

(assert (= (and b!3677911 (not c!636103)) b!3677933))

(assert (= (and b!3677911 c!636105) b!3677922))

(assert (= (and b!3677911 (not c!636105)) b!3677944))

(assert (= (and b!3677922 c!636106) b!3677948))

(assert (= (and b!3677922 (not c!636106)) b!3677935))

(assert (= (and b!3677948 res!1494119) b!3677956))

(assert (= (and b!3677922 c!636104) b!3677934))

(assert (= (and b!3677922 (not c!636104)) b!3677951))

(assert (= b!3677953 b!3677925))

(assert (= b!3677939 b!3677953))

(assert (= (and start!345022 ((_ is Cons!38791) rules!3307)) b!3677939))

(assert (= (and start!345022 ((_ is Cons!38790) suffix!1395)) b!3677955))

(assert (= b!3677907 b!3677931))

(assert (= b!3677932 b!3677907))

(assert (= start!345022 b!3677932))

(assert (= b!3677915 b!3677908))

(assert (= start!345022 b!3677915))

(assert (= b!3677920 b!3677928))

(assert (= start!345022 b!3677920))

(declare-fun m!4187733 () Bool)

(assert (=> b!3677947 m!4187733))

(declare-fun m!4187735 () Bool)

(assert (=> b!3677926 m!4187735))

(declare-fun m!4187737 () Bool)

(assert (=> b!3677934 m!4187737))

(declare-fun m!4187739 () Bool)

(assert (=> bm!266364 m!4187739))

(declare-fun m!4187741 () Bool)

(assert (=> b!3677927 m!4187741))

(declare-fun m!4187743 () Bool)

(assert (=> b!3677906 m!4187743))

(assert (=> b!3677906 m!4187743))

(declare-fun m!4187745 () Bool)

(assert (=> b!3677906 m!4187745))

(declare-fun m!4187747 () Bool)

(assert (=> b!3677937 m!4187747))

(declare-fun m!4187749 () Bool)

(assert (=> b!3677937 m!4187749))

(declare-fun m!4187751 () Bool)

(assert (=> b!3677937 m!4187751))

(declare-fun m!4187753 () Bool)

(assert (=> b!3677937 m!4187753))

(assert (=> b!3677937 m!4187747))

(declare-fun m!4187755 () Bool)

(assert (=> b!3677937 m!4187755))

(declare-fun m!4187757 () Bool)

(assert (=> b!3677937 m!4187757))

(declare-fun m!4187759 () Bool)

(assert (=> start!345022 m!4187759))

(declare-fun m!4187761 () Bool)

(assert (=> b!3677930 m!4187761))

(declare-fun m!4187763 () Bool)

(assert (=> b!3677920 m!4187763))

(declare-fun m!4187765 () Bool)

(assert (=> b!3677920 m!4187765))

(declare-fun m!4187767 () Bool)

(assert (=> b!3677916 m!4187767))

(declare-fun m!4187769 () Bool)

(assert (=> b!3677916 m!4187769))

(declare-fun m!4187771 () Bool)

(assert (=> b!3677948 m!4187771))

(declare-fun m!4187773 () Bool)

(assert (=> b!3677948 m!4187773))

(declare-fun m!4187775 () Bool)

(assert (=> b!3677948 m!4187775))

(assert (=> b!3677948 m!4187771))

(declare-fun m!4187777 () Bool)

(assert (=> b!3677948 m!4187777))

(declare-fun m!4187779 () Bool)

(assert (=> b!3677948 m!4187779))

(declare-fun m!4187781 () Bool)

(assert (=> b!3677911 m!4187781))

(declare-fun m!4187783 () Bool)

(assert (=> b!3677911 m!4187783))

(declare-fun m!4187785 () Bool)

(assert (=> b!3677911 m!4187785))

(declare-fun m!4187787 () Bool)

(assert (=> b!3677911 m!4187787))

(declare-fun m!4187789 () Bool)

(assert (=> b!3677911 m!4187789))

(declare-fun m!4187791 () Bool)

(assert (=> b!3677911 m!4187791))

(assert (=> b!3677911 m!4187787))

(declare-fun m!4187793 () Bool)

(assert (=> b!3677911 m!4187793))

(declare-fun m!4187795 () Bool)

(assert (=> b!3677911 m!4187795))

(declare-fun m!4187797 () Bool)

(assert (=> b!3677911 m!4187797))

(declare-fun m!4187799 () Bool)

(assert (=> b!3677911 m!4187799))

(declare-fun m!4187801 () Bool)

(assert (=> b!3677940 m!4187801))

(declare-fun m!4187803 () Bool)

(assert (=> b!3677940 m!4187803))

(declare-fun m!4187805 () Bool)

(assert (=> b!3677940 m!4187805))

(declare-fun m!4187807 () Bool)

(assert (=> bm!266365 m!4187807))

(declare-fun m!4187809 () Bool)

(assert (=> b!3677941 m!4187809))

(declare-fun m!4187811 () Bool)

(assert (=> b!3677941 m!4187811))

(declare-fun m!4187813 () Bool)

(assert (=> b!3677941 m!4187813))

(declare-fun m!4187815 () Bool)

(assert (=> b!3677941 m!4187815))

(declare-fun m!4187817 () Bool)

(assert (=> b!3677912 m!4187817))

(assert (=> b!3677912 m!4187817))

(declare-fun m!4187819 () Bool)

(assert (=> b!3677912 m!4187819))

(assert (=> b!3677912 m!4187819))

(declare-fun m!4187821 () Bool)

(assert (=> b!3677912 m!4187821))

(declare-fun m!4187823 () Bool)

(assert (=> b!3677912 m!4187823))

(declare-fun m!4187825 () Bool)

(assert (=> b!3677952 m!4187825))

(declare-fun m!4187827 () Bool)

(assert (=> b!3677915 m!4187827))

(declare-fun m!4187829 () Bool)

(assert (=> b!3677915 m!4187829))

(declare-fun m!4187831 () Bool)

(assert (=> b!3677923 m!4187831))

(declare-fun m!4187833 () Bool)

(assert (=> b!3677949 m!4187833))

(declare-fun m!4187835 () Bool)

(assert (=> b!3677949 m!4187835))

(declare-fun m!4187837 () Bool)

(assert (=> b!3677949 m!4187837))

(declare-fun m!4187839 () Bool)

(assert (=> b!3677949 m!4187839))

(declare-fun m!4187841 () Bool)

(assert (=> b!3677949 m!4187841))

(declare-fun m!4187843 () Bool)

(assert (=> b!3677949 m!4187843))

(declare-fun m!4187845 () Bool)

(assert (=> b!3677949 m!4187845))

(declare-fun m!4187847 () Bool)

(assert (=> b!3677949 m!4187847))

(assert (=> b!3677949 m!4187817))

(assert (=> b!3677949 m!4187845))

(declare-fun m!4187849 () Bool)

(assert (=> b!3677949 m!4187849))

(declare-fun m!4187851 () Bool)

(assert (=> b!3677949 m!4187851))

(declare-fun m!4187853 () Bool)

(assert (=> b!3677949 m!4187853))

(declare-fun m!4187855 () Bool)

(assert (=> b!3677949 m!4187855))

(declare-fun m!4187857 () Bool)

(assert (=> b!3677949 m!4187857))

(declare-fun m!4187859 () Bool)

(assert (=> b!3677949 m!4187859))

(declare-fun m!4187861 () Bool)

(assert (=> b!3677929 m!4187861))

(declare-fun m!4187863 () Bool)

(assert (=> b!3677929 m!4187863))

(declare-fun m!4187865 () Bool)

(assert (=> b!3677929 m!4187865))

(declare-fun m!4187867 () Bool)

(assert (=> b!3677929 m!4187867))

(declare-fun m!4187869 () Bool)

(assert (=> b!3677929 m!4187869))

(declare-fun m!4187871 () Bool)

(assert (=> b!3677929 m!4187871))

(declare-fun m!4187873 () Bool)

(assert (=> b!3677929 m!4187873))

(assert (=> b!3677929 m!4187871))

(declare-fun m!4187875 () Bool)

(assert (=> b!3677943 m!4187875))

(declare-fun m!4187877 () Bool)

(assert (=> bm!266363 m!4187877))

(declare-fun m!4187879 () Bool)

(assert (=> bm!266366 m!4187879))

(declare-fun m!4187881 () Bool)

(assert (=> b!3677921 m!4187881))

(declare-fun m!4187883 () Bool)

(assert (=> b!3677922 m!4187883))

(declare-fun m!4187885 () Bool)

(assert (=> b!3677922 m!4187885))

(declare-fun m!4187887 () Bool)

(assert (=> b!3677922 m!4187887))

(declare-fun m!4187889 () Bool)

(assert (=> b!3677942 m!4187889))

(declare-fun m!4187891 () Bool)

(assert (=> b!3677913 m!4187891))

(declare-fun m!4187893 () Bool)

(assert (=> b!3677918 m!4187893))

(declare-fun m!4187895 () Bool)

(assert (=> b!3677918 m!4187895))

(declare-fun m!4187897 () Bool)

(assert (=> b!3677918 m!4187897))

(declare-fun m!4187899 () Bool)

(assert (=> b!3677919 m!4187899))

(declare-fun m!4187901 () Bool)

(assert (=> bm!266367 m!4187901))

(declare-fun m!4187903 () Bool)

(assert (=> b!3677914 m!4187903))

(declare-fun m!4187905 () Bool)

(assert (=> b!3677905 m!4187905))

(assert (=> bm!266362 m!4187877))

(declare-fun m!4187907 () Bool)

(assert (=> b!3677932 m!4187907))

(declare-fun m!4187909 () Bool)

(assert (=> b!3677953 m!4187909))

(declare-fun m!4187911 () Bool)

(assert (=> b!3677953 m!4187911))

(declare-fun m!4187913 () Bool)

(assert (=> b!3677954 m!4187913))

(declare-fun m!4187915 () Bool)

(assert (=> b!3677907 m!4187915))

(declare-fun m!4187917 () Bool)

(assert (=> b!3677907 m!4187917))

(declare-fun m!4187919 () Bool)

(assert (=> b!3677946 m!4187919))

(check-sat (not b!3677914) (not b!3677919) (not b_next!98059) (not b!3677954) (not b!3677949) (not b!3677916) b_and!274515 (not b!3677923) (not b!3677920) (not b!3677940) b_and!274519 (not b!3677922) (not b!3677937) (not b!3677906) (not b!3677932) (not b!3677915) (not b!3677942) (not bm!266363) (not bm!266362) (not b!3677921) (not b!3677926) (not b!3677946) (not b!3677941) (not b!3677955) (not b_next!98057) b_and!274527 (not b!3677930) (not b!3677952) tp_is_empty!18277 (not b!3677953) (not b!3677929) b_and!274521 (not b_next!98055) (not b!3677947) (not b_next!98063) (not bm!266365) (not b!3677939) (not b!3677907) (not b!3677948) b_and!274529 (not b!3677943) (not b_next!98051) b_and!274525 (not b!3677911) (not b_next!98053) (not b!3677912) (not bm!266366) (not bm!266364) (not b_next!98061) (not b!3677913) b_and!274517 (not b!3677934) (not start!345022) (not b!3677905) b_and!274523 (not bm!266367) (not b_next!98049) (not b!3677927) (not b!3677918))
(check-sat (not b_next!98059) (not b_next!98063) b_and!274529 (not b_next!98053) b_and!274515 b_and!274523 (not b_next!98049) b_and!274519 (not b_next!98057) b_and!274527 b_and!274521 (not b_next!98055) (not b_next!98051) b_and!274525 (not b_next!98061) b_and!274517)
