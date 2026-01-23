; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52476 () Bool)

(assert start!52476)

(declare-fun b!568912 () Bool)

(declare-fun b_free!15901 () Bool)

(declare-fun b_next!15917 () Bool)

(assert (=> b!568912 (= b_free!15901 (not b_next!15917))))

(declare-fun tp!179149 () Bool)

(declare-fun b_and!55427 () Bool)

(assert (=> b!568912 (= tp!179149 b_and!55427)))

(declare-fun b_free!15903 () Bool)

(declare-fun b_next!15919 () Bool)

(assert (=> b!568912 (= b_free!15903 (not b_next!15919))))

(declare-fun tp!179151 () Bool)

(declare-fun b_and!55429 () Bool)

(assert (=> b!568912 (= tp!179151 b_and!55429)))

(declare-fun b!568888 () Bool)

(declare-fun b_free!15905 () Bool)

(declare-fun b_next!15921 () Bool)

(assert (=> b!568888 (= b_free!15905 (not b_next!15921))))

(declare-fun tp!179150 () Bool)

(declare-fun b_and!55431 () Bool)

(assert (=> b!568888 (= tp!179150 b_and!55431)))

(declare-fun b_free!15907 () Bool)

(declare-fun b_next!15923 () Bool)

(assert (=> b!568888 (= b_free!15907 (not b_next!15923))))

(declare-fun tp!179146 () Bool)

(declare-fun b_and!55433 () Bool)

(assert (=> b!568888 (= tp!179146 b_and!55433)))

(declare-datatypes ((List!5634 0))(
  ( (Nil!5624) (Cons!5624 (h!11025 (_ BitVec 16)) (t!76485 List!5634)) )
))
(declare-datatypes ((TokenValue!1111 0))(
  ( (FloatLiteralValue!2222 (text!8222 List!5634)) (TokenValueExt!1110 (__x!4120 Int)) (Broken!5555 (value!35820 List!5634)) (Object!1120) (End!1111) (Def!1111) (Underscore!1111) (Match!1111) (Else!1111) (Error!1111) (Case!1111) (If!1111) (Extends!1111) (Abstract!1111) (Class!1111) (Val!1111) (DelimiterValue!2222 (del!1171 List!5634)) (KeywordValue!1117 (value!35821 List!5634)) (CommentValue!2222 (value!35822 List!5634)) (WhitespaceValue!2222 (value!35823 List!5634)) (IndentationValue!1111 (value!35824 List!5634)) (String!7298) (Int32!1111) (Broken!5556 (value!35825 List!5634)) (Boolean!1112) (Unit!10072) (OperatorValue!1114 (op!1171 List!5634)) (IdentifierValue!2222 (value!35826 List!5634)) (IdentifierValue!2223 (value!35827 List!5634)) (WhitespaceValue!2223 (value!35828 List!5634)) (True!2222) (False!2222) (Broken!5557 (value!35829 List!5634)) (Broken!5558 (value!35830 List!5634)) (True!2223) (RightBrace!1111) (RightBracket!1111) (Colon!1111) (Null!1111) (Comma!1111) (LeftBracket!1111) (False!2223) (LeftBrace!1111) (ImaginaryLiteralValue!1111 (text!8223 List!5634)) (StringLiteralValue!3333 (value!35831 List!5634)) (EOFValue!1111 (value!35832 List!5634)) (IdentValue!1111 (value!35833 List!5634)) (DelimiterValue!2223 (value!35834 List!5634)) (DedentValue!1111 (value!35835 List!5634)) (NewLineValue!1111 (value!35836 List!5634)) (IntegerValue!3333 (value!35837 (_ BitVec 32)) (text!8224 List!5634)) (IntegerValue!3334 (value!35838 Int) (text!8225 List!5634)) (Times!1111) (Or!1111) (Equal!1111) (Minus!1111) (Broken!5559 (value!35839 List!5634)) (And!1111) (Div!1111) (LessEqual!1111) (Mod!1111) (Concat!2532) (Not!1111) (Plus!1111) (SpaceValue!1111 (value!35840 List!5634)) (IntegerValue!3335 (value!35841 Int) (text!8226 List!5634)) (StringLiteralValue!3334 (text!8227 List!5634)) (FloatLiteralValue!2223 (text!8228 List!5634)) (BytesLiteralValue!1111 (value!35842 List!5634)) (CommentValue!2223 (value!35843 List!5634)) (StringLiteralValue!3335 (value!35844 List!5634)) (ErrorTokenValue!1111 (msg!1172 List!5634)) )
))
(declare-fun lt!240485 () TokenValue!1111)

(declare-datatypes ((C!3764 0))(
  ( (C!3765 (val!2108 Int)) )
))
(declare-datatypes ((Regex!1421 0))(
  ( (ElementMatch!1421 (c!106547 C!3764)) (Concat!2533 (regOne!3354 Regex!1421) (regTwo!3354 Regex!1421)) (EmptyExpr!1421) (Star!1421 (reg!1750 Regex!1421)) (EmptyLang!1421) (Union!1421 (regOne!3355 Regex!1421) (regTwo!3355 Regex!1421)) )
))
(declare-datatypes ((List!5635 0))(
  ( (Nil!5625) (Cons!5625 (h!11026 C!3764) (t!76486 List!5635)) )
))
(declare-datatypes ((IArray!3609 0))(
  ( (IArray!3610 (innerList!1862 List!5635)) )
))
(declare-datatypes ((Conc!1804 0))(
  ( (Node!1804 (left!4596 Conc!1804) (right!4926 Conc!1804) (csize!3838 Int) (cheight!2015 Int)) (Leaf!2855 (xs!4441 IArray!3609) (csize!3839 Int)) (Empty!1804) )
))
(declare-datatypes ((BalanceConc!3616 0))(
  ( (BalanceConc!3617 (c!106548 Conc!1804)) )
))
(declare-datatypes ((String!7299 0))(
  ( (String!7300 (value!35845 String)) )
))
(declare-datatypes ((TokenValueInjection!1990 0))(
  ( (TokenValueInjection!1991 (toValue!1942 Int) (toChars!1801 Int)) )
))
(declare-datatypes ((Rule!1974 0))(
  ( (Rule!1975 (regex!1087 Regex!1421) (tag!1349 String!7299) (isSeparator!1087 Bool) (transformation!1087 TokenValueInjection!1990)) )
))
(declare-datatypes ((Token!1910 0))(
  ( (Token!1911 (value!35846 TokenValue!1111) (rule!1829 Rule!1974) (size!4478 Int) (originalCharacters!1126 List!5635)) )
))
(declare-datatypes ((tuple2!6612 0))(
  ( (tuple2!6613 (_1!3570 Token!1910) (_2!3570 List!5635)) )
))
(declare-datatypes ((Option!1438 0))(
  ( (None!1437) (Some!1437 (v!16286 tuple2!6612)) )
))
(declare-fun lt!240482 () Option!1438)

(declare-fun lt!240493 () List!5635)

(declare-fun lt!240495 () tuple2!6612)

(declare-fun e!343947 () Bool)

(declare-fun b!568885 () Bool)

(declare-fun lt!240483 () Int)

(declare-fun lt!240477 () List!5635)

(assert (=> b!568885 (= e!343947 (and (= (size!4478 (_1!3570 (v!16286 lt!240482))) lt!240483) (= (originalCharacters!1126 (_1!3570 (v!16286 lt!240482))) lt!240493) (= lt!240495 (tuple2!6613 (Token!1911 lt!240485 (rule!1829 (_1!3570 (v!16286 lt!240482))) lt!240483 lt!240493) lt!240477))))))

(declare-fun token!491 () Token!1910)

(declare-fun e!343926 () Bool)

(declare-fun e!343940 () Bool)

(declare-fun tp!179152 () Bool)

(declare-fun b!568886 () Bool)

(declare-fun inv!7065 (String!7299) Bool)

(declare-fun inv!7068 (TokenValueInjection!1990) Bool)

(assert (=> b!568886 (= e!343926 (and tp!179152 (inv!7065 (tag!1349 (rule!1829 token!491))) (inv!7068 (transformation!1087 (rule!1829 token!491))) e!343940))))

(declare-fun b!568887 () Bool)

(declare-datatypes ((Unit!10073 0))(
  ( (Unit!10074) )
))
(declare-fun e!343922 () Unit!10073)

(declare-fun Unit!10075 () Unit!10073)

(assert (=> b!568887 (= e!343922 Unit!10075)))

(assert (=> b!568887 false))

(declare-fun e!343941 () Bool)

(assert (=> b!568888 (= e!343941 (and tp!179150 tp!179146))))

(declare-fun b!568889 () Bool)

(declare-fun e!343945 () Bool)

(assert (=> b!568889 (= e!343945 false)))

(declare-fun b!568891 () Bool)

(declare-fun res!244417 () Bool)

(declare-fun e!343942 () Bool)

(assert (=> b!568891 (=> (not res!244417) (not e!343942))))

(declare-datatypes ((LexerInterface!973 0))(
  ( (LexerInterfaceExt!970 (__x!4121 Int)) (Lexer!971) )
))
(declare-fun thiss!22590 () LexerInterface!973)

(declare-datatypes ((List!5636 0))(
  ( (Nil!5626) (Cons!5626 (h!11027 Rule!1974) (t!76487 List!5636)) )
))
(declare-fun rules!3103 () List!5636)

(declare-fun rulesInvariant!936 (LexerInterface!973 List!5636) Bool)

(assert (=> b!568891 (= res!244417 (rulesInvariant!936 thiss!22590 rules!3103))))

(declare-fun b!568892 () Bool)

(declare-fun res!244420 () Bool)

(declare-fun e!343934 () Bool)

(assert (=> b!568892 (=> (not res!244420) (not e!343934))))

(declare-fun size!4479 (List!5635) Int)

(assert (=> b!568892 (= res!244420 (= (size!4478 token!491) (size!4479 (originalCharacters!1126 token!491))))))

(declare-fun e!343933 () Bool)

(declare-fun input!2705 () List!5635)

(declare-fun lt!240490 () List!5635)

(declare-fun b!568893 () Bool)

(declare-fun lt!240470 () Int)

(declare-fun lt!240466 () List!5635)

(assert (=> b!568893 (= e!343933 (or (not (= lt!240483 lt!240470)) (not (= lt!240466 input!2705)) (= lt!240466 lt!240490)))))

(declare-fun lt!240465 () Unit!10073)

(declare-fun lt!240484 () BalanceConc!3616)

(declare-fun lemmaSemiInverse!190 (TokenValueInjection!1990 BalanceConc!3616) Unit!10073)

(assert (=> b!568893 (= lt!240465 (lemmaSemiInverse!190 (transformation!1087 (rule!1829 token!491)) lt!240484))))

(declare-fun lt!240494 () Unit!10073)

(declare-fun lt!240487 () BalanceConc!3616)

(assert (=> b!568893 (= lt!240494 (lemmaSemiInverse!190 (transformation!1087 (rule!1829 (_1!3570 (v!16286 lt!240482)))) lt!240487))))

(declare-fun lt!240475 () Unit!10073)

(declare-fun e!343935 () Unit!10073)

(assert (=> b!568893 (= lt!240475 e!343935)))

(declare-fun c!106546 () Bool)

(assert (=> b!568893 (= c!106546 (< lt!240483 lt!240470))))

(declare-fun e!343929 () Bool)

(assert (=> b!568893 e!343929))

(declare-fun res!244415 () Bool)

(assert (=> b!568893 (=> (not res!244415) (not e!343929))))

(declare-fun suffix!1342 () List!5635)

(declare-fun lt!240473 () List!5635)

(declare-fun lt!240486 () TokenValue!1111)

(declare-fun maxPrefixOneRule!372 (LexerInterface!973 Rule!1974 List!5635) Option!1438)

(assert (=> b!568893 (= res!244415 (= (maxPrefixOneRule!372 thiss!22590 (rule!1829 token!491) lt!240473) (Some!1437 (tuple2!6613 (Token!1911 lt!240486 (rule!1829 token!491) lt!240470 lt!240490) suffix!1342))))))

(declare-fun lt!240496 () Unit!10073)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!122 (LexerInterface!973 List!5636 List!5635 List!5635 List!5635 Rule!1974) Unit!10073)

(assert (=> b!568893 (= lt!240496 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!122 thiss!22590 rules!3103 lt!240490 lt!240473 suffix!1342 (rule!1829 token!491)))))

(assert (=> b!568893 (= (maxPrefixOneRule!372 thiss!22590 (rule!1829 (_1!3570 (v!16286 lt!240482))) input!2705) (Some!1437 (tuple2!6613 (Token!1911 lt!240485 (rule!1829 (_1!3570 (v!16286 lt!240482))) lt!240483 lt!240493) (_2!3570 (v!16286 lt!240482)))))))

(declare-fun lt!240467 () Unit!10073)

(assert (=> b!568893 (= lt!240467 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!122 thiss!22590 rules!3103 lt!240493 input!2705 (_2!3570 (v!16286 lt!240482)) (rule!1829 (_1!3570 (v!16286 lt!240482)))))))

(assert (=> b!568893 e!343934))

(declare-fun res!244425 () Bool)

(assert (=> b!568893 (=> (not res!244425) (not e!343934))))

(assert (=> b!568893 (= res!244425 (= (value!35846 token!491) lt!240486))))

(declare-fun apply!1352 (TokenValueInjection!1990 BalanceConc!3616) TokenValue!1111)

(assert (=> b!568893 (= lt!240486 (apply!1352 (transformation!1087 (rule!1829 token!491)) lt!240484))))

(declare-fun seqFromList!1275 (List!5635) BalanceConc!3616)

(assert (=> b!568893 (= lt!240484 (seqFromList!1275 lt!240490))))

(declare-fun lt!240497 () List!5635)

(assert (=> b!568893 (= suffix!1342 lt!240497)))

(declare-fun lt!240474 () Unit!10073)

(declare-fun lemmaSamePrefixThenSameSuffix!444 (List!5635 List!5635 List!5635 List!5635 List!5635) Unit!10073)

(assert (=> b!568893 (= lt!240474 (lemmaSamePrefixThenSameSuffix!444 lt!240490 suffix!1342 lt!240490 lt!240497 lt!240473))))

(declare-fun getSuffix!240 (List!5635 List!5635) List!5635)

(assert (=> b!568893 (= lt!240497 (getSuffix!240 lt!240473 lt!240490))))

(declare-fun b!568894 () Bool)

(declare-fun e!343944 () Bool)

(declare-fun e!343931 () Bool)

(assert (=> b!568894 (= e!343944 e!343931)))

(declare-fun res!244412 () Bool)

(assert (=> b!568894 (=> (not res!244412) (not e!343931))))

(declare-fun lt!240498 () Option!1438)

(declare-fun isDefined!1249 (Option!1438) Bool)

(assert (=> b!568894 (= res!244412 (isDefined!1249 lt!240498))))

(declare-fun maxPrefix!671 (LexerInterface!973 List!5636 List!5635) Option!1438)

(assert (=> b!568894 (= lt!240498 (maxPrefix!671 thiss!22590 rules!3103 lt!240473))))

(declare-fun ++!1575 (List!5635 List!5635) List!5635)

(assert (=> b!568894 (= lt!240473 (++!1575 input!2705 suffix!1342))))

(declare-fun b!568895 () Bool)

(declare-fun e!343938 () Bool)

(declare-fun e!343927 () Bool)

(assert (=> b!568895 (= e!343938 e!343927)))

(declare-fun res!244430 () Bool)

(assert (=> b!568895 (=> (not res!244430) (not e!343927))))

(declare-fun lt!240502 () List!5635)

(assert (=> b!568895 (= res!244430 (= lt!240502 lt!240473))))

(assert (=> b!568895 (= lt!240502 (++!1575 lt!240490 suffix!1342))))

(declare-fun b!568896 () Bool)

(declare-fun e!343939 () Bool)

(assert (=> b!568896 (= e!343939 (= lt!240477 (_2!3570 (v!16286 lt!240482))))))

(declare-fun b!568897 () Bool)

(declare-fun Unit!10076 () Unit!10073)

(assert (=> b!568897 (= e!343935 Unit!10076)))

(declare-fun lt!240480 () Unit!10073)

(assert (=> b!568897 (= lt!240480 (lemmaSemiInverse!190 (transformation!1087 (rule!1829 (_1!3570 (v!16286 lt!240482)))) lt!240487))))

(declare-fun lt!240499 () Unit!10073)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!46 (LexerInterface!973 List!5636 Rule!1974 List!5635 List!5635 List!5635 Rule!1974) Unit!10073)

(assert (=> b!568897 (= lt!240499 (lemmaMaxPrefixOutputsMaxPrefix!46 thiss!22590 rules!3103 (rule!1829 (_1!3570 (v!16286 lt!240482))) lt!240493 input!2705 input!2705 (rule!1829 token!491)))))

(declare-fun res!244426 () Bool)

(declare-fun matchR!568 (Regex!1421 List!5635) Bool)

(assert (=> b!568897 (= res!244426 (not (matchR!568 (regex!1087 (rule!1829 token!491)) input!2705)))))

(assert (=> b!568897 (=> (not res!244426) (not e!343945))))

(assert (=> b!568897 e!343945))

(declare-fun b!568898 () Bool)

(assert (=> b!568898 (= e!343927 (not e!343933))))

(declare-fun res!244421 () Bool)

(assert (=> b!568898 (=> res!244421 e!343933)))

(declare-fun isPrefix!721 (List!5635 List!5635) Bool)

(assert (=> b!568898 (= res!244421 (not (isPrefix!721 input!2705 lt!240502)))))

(assert (=> b!568898 (isPrefix!721 lt!240490 lt!240502)))

(declare-fun lt!240491 () Unit!10073)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!568 (List!5635 List!5635) Unit!10073)

(assert (=> b!568898 (= lt!240491 (lemmaConcatTwoListThenFirstIsPrefix!568 lt!240490 suffix!1342))))

(assert (=> b!568898 (isPrefix!721 input!2705 lt!240473)))

(declare-fun lt!240489 () Unit!10073)

(assert (=> b!568898 (= lt!240489 (lemmaConcatTwoListThenFirstIsPrefix!568 input!2705 suffix!1342))))

(assert (=> b!568898 e!343947))

(declare-fun res!244428 () Bool)

(assert (=> b!568898 (=> (not res!244428) (not e!343947))))

(assert (=> b!568898 (= res!244428 (= (value!35846 (_1!3570 (v!16286 lt!240482))) lt!240485))))

(assert (=> b!568898 (= lt!240485 (apply!1352 (transformation!1087 (rule!1829 (_1!3570 (v!16286 lt!240482)))) lt!240487))))

(assert (=> b!568898 (= lt!240487 (seqFromList!1275 lt!240493))))

(declare-fun lt!240500 () Unit!10073)

(declare-fun lemmaInv!223 (TokenValueInjection!1990) Unit!10073)

(assert (=> b!568898 (= lt!240500 (lemmaInv!223 (transformation!1087 (rule!1829 token!491))))))

(declare-fun lt!240476 () Unit!10073)

(assert (=> b!568898 (= lt!240476 (lemmaInv!223 (transformation!1087 (rule!1829 (_1!3570 (v!16286 lt!240482))))))))

(declare-fun ruleValid!297 (LexerInterface!973 Rule!1974) Bool)

(assert (=> b!568898 (ruleValid!297 thiss!22590 (rule!1829 token!491))))

(declare-fun lt!240468 () Unit!10073)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!154 (LexerInterface!973 Rule!1974 List!5636) Unit!10073)

(assert (=> b!568898 (= lt!240468 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!154 thiss!22590 (rule!1829 token!491) rules!3103))))

(assert (=> b!568898 (ruleValid!297 thiss!22590 (rule!1829 (_1!3570 (v!16286 lt!240482))))))

(declare-fun lt!240472 () Unit!10073)

(assert (=> b!568898 (= lt!240472 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!154 thiss!22590 (rule!1829 (_1!3570 (v!16286 lt!240482))) rules!3103))))

(assert (=> b!568898 (isPrefix!721 input!2705 input!2705)))

(declare-fun lt!240469 () Unit!10073)

(declare-fun lemmaIsPrefixRefl!459 (List!5635 List!5635) Unit!10073)

(assert (=> b!568898 (= lt!240469 (lemmaIsPrefixRefl!459 input!2705 input!2705))))

(assert (=> b!568898 (= (_2!3570 (v!16286 lt!240482)) lt!240477)))

(declare-fun lt!240479 () Unit!10073)

(assert (=> b!568898 (= lt!240479 (lemmaSamePrefixThenSameSuffix!444 lt!240493 (_2!3570 (v!16286 lt!240482)) lt!240493 lt!240477 input!2705))))

(assert (=> b!568898 (= lt!240477 (getSuffix!240 input!2705 lt!240493))))

(assert (=> b!568898 (isPrefix!721 lt!240493 lt!240466)))

(assert (=> b!568898 (= lt!240466 (++!1575 lt!240493 (_2!3570 (v!16286 lt!240482))))))

(declare-fun lt!240492 () Unit!10073)

(assert (=> b!568898 (= lt!240492 (lemmaConcatTwoListThenFirstIsPrefix!568 lt!240493 (_2!3570 (v!16286 lt!240482))))))

(declare-fun lt!240481 () Unit!10073)

(declare-fun lemmaCharactersSize!154 (Token!1910) Unit!10073)

(assert (=> b!568898 (= lt!240481 (lemmaCharactersSize!154 token!491))))

(declare-fun lt!240471 () Unit!10073)

(assert (=> b!568898 (= lt!240471 (lemmaCharactersSize!154 (_1!3570 (v!16286 lt!240482))))))

(declare-fun lt!240478 () Unit!10073)

(assert (=> b!568898 (= lt!240478 e!343922)))

(declare-fun c!106545 () Bool)

(assert (=> b!568898 (= c!106545 (> lt!240483 lt!240470))))

(assert (=> b!568898 (= lt!240470 (size!4479 lt!240490))))

(assert (=> b!568898 (= lt!240483 (size!4479 lt!240493))))

(declare-fun list!2333 (BalanceConc!3616) List!5635)

(declare-fun charsOf!716 (Token!1910) BalanceConc!3616)

(assert (=> b!568898 (= lt!240493 (list!2333 (charsOf!716 (_1!3570 (v!16286 lt!240482)))))))

(assert (=> b!568898 (= lt!240482 (Some!1437 lt!240495))))

(assert (=> b!568898 (= lt!240495 (tuple2!6613 (_1!3570 (v!16286 lt!240482)) (_2!3570 (v!16286 lt!240482))))))

(declare-fun lt!240501 () Unit!10073)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!164 (List!5635 List!5635 List!5635 List!5635) Unit!10073)

(assert (=> b!568898 (= lt!240501 (lemmaConcatSameAndSameSizesThenSameLists!164 lt!240490 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!568899 () Bool)

(declare-fun Unit!10077 () Unit!10073)

(assert (=> b!568899 (= e!343922 Unit!10077)))

(declare-fun b!568900 () Bool)

(assert (=> b!568900 (= e!343934 (and (= (size!4478 token!491) lt!240470) (= (originalCharacters!1126 token!491) lt!240490) (= (tuple2!6613 token!491 suffix!1342) (tuple2!6613 (Token!1911 lt!240486 (rule!1829 token!491) lt!240470 lt!240490) lt!240497))))))

(declare-fun b!568901 () Bool)

(declare-fun e!343946 () Bool)

(declare-fun e!343923 () Bool)

(declare-fun tp!179148 () Bool)

(assert (=> b!568901 (= e!343946 (and e!343923 tp!179148))))

(declare-fun b!568902 () Bool)

(declare-fun res!244427 () Bool)

(assert (=> b!568902 (=> (not res!244427) (not e!343942))))

(declare-fun isEmpty!4059 (List!5636) Bool)

(assert (=> b!568902 (= res!244427 (not (isEmpty!4059 rules!3103)))))

(declare-fun e!343936 () Bool)

(declare-fun tp!179153 () Bool)

(declare-fun b!568903 () Bool)

(declare-fun inv!21 (TokenValue!1111) Bool)

(assert (=> b!568903 (= e!343936 (and (inv!21 (value!35846 token!491)) e!343926 tp!179153))))

(declare-fun b!568904 () Bool)

(declare-fun res!244416 () Bool)

(assert (=> b!568904 (=> (not res!244416) (not e!343942))))

(declare-fun isEmpty!4060 (List!5635) Bool)

(assert (=> b!568904 (= res!244416 (not (isEmpty!4060 input!2705)))))

(declare-fun b!568905 () Bool)

(declare-fun e!343932 () Bool)

(assert (=> b!568905 (= e!343932 e!343939)))

(declare-fun res!244414 () Bool)

(assert (=> b!568905 (=> (not res!244414) (not e!343939))))

(assert (=> b!568905 (= res!244414 (isDefined!1249 lt!240482))))

(declare-fun b!568906 () Bool)

(declare-fun e!343930 () Bool)

(declare-fun tp_is_empty!3197 () Bool)

(declare-fun tp!179145 () Bool)

(assert (=> b!568906 (= e!343930 (and tp_is_empty!3197 tp!179145))))

(declare-fun b!568890 () Bool)

(assert (=> b!568890 (= e!343929 e!343932)))

(declare-fun res!244418 () Bool)

(assert (=> b!568890 (=> res!244418 e!343932)))

(assert (=> b!568890 (= res!244418 (>= lt!240483 lt!240470))))

(declare-fun res!244423 () Bool)

(assert (=> start!52476 (=> (not res!244423) (not e!343942))))

(get-info :version)

(assert (=> start!52476 (= res!244423 ((_ is Lexer!971) thiss!22590))))

(assert (=> start!52476 e!343942))

(declare-fun e!343928 () Bool)

(assert (=> start!52476 e!343928))

(assert (=> start!52476 e!343946))

(declare-fun inv!7069 (Token!1910) Bool)

(assert (=> start!52476 (and (inv!7069 token!491) e!343936)))

(assert (=> start!52476 true))

(assert (=> start!52476 e!343930))

(declare-fun b!568907 () Bool)

(declare-fun res!244429 () Bool)

(assert (=> b!568907 (=> (not res!244429) (not e!343939))))

(declare-fun get!2145 (Option!1438) tuple2!6612)

(assert (=> b!568907 (= res!244429 (= (_1!3570 (get!2145 lt!240482)) (_1!3570 (v!16286 lt!240482))))))

(declare-fun b!568908 () Bool)

(declare-fun tp!179154 () Bool)

(assert (=> b!568908 (= e!343928 (and tp_is_empty!3197 tp!179154))))

(declare-fun b!568909 () Bool)

(declare-fun e!343943 () Bool)

(assert (=> b!568909 (= e!343931 e!343943)))

(declare-fun res!244419 () Bool)

(assert (=> b!568909 (=> (not res!244419) (not e!343943))))

(declare-fun lt!240488 () tuple2!6612)

(assert (=> b!568909 (= res!244419 (and (= (_1!3570 lt!240488) token!491) (= (_2!3570 lt!240488) suffix!1342)))))

(assert (=> b!568909 (= lt!240488 (get!2145 lt!240498))))

(declare-fun tp!179147 () Bool)

(declare-fun b!568910 () Bool)

(assert (=> b!568910 (= e!343923 (and tp!179147 (inv!7065 (tag!1349 (h!11027 rules!3103))) (inv!7068 (transformation!1087 (h!11027 rules!3103))) e!343941))))

(declare-fun b!568911 () Bool)

(declare-fun Unit!10078 () Unit!10073)

(assert (=> b!568911 (= e!343935 Unit!10078)))

(assert (=> b!568912 (= e!343940 (and tp!179149 tp!179151))))

(declare-fun b!568913 () Bool)

(declare-fun res!244422 () Bool)

(assert (=> b!568913 (=> (not res!244422) (not e!343947))))

(assert (=> b!568913 (= res!244422 (= (size!4478 (_1!3570 (v!16286 lt!240482))) (size!4479 (originalCharacters!1126 (_1!3570 (v!16286 lt!240482))))))))

(declare-fun b!568914 () Bool)

(assert (=> b!568914 (= e!343942 e!343944)))

(declare-fun res!244424 () Bool)

(assert (=> b!568914 (=> (not res!244424) (not e!343944))))

(assert (=> b!568914 (= res!244424 (= lt!240490 input!2705))))

(assert (=> b!568914 (= lt!240490 (list!2333 (charsOf!716 token!491)))))

(declare-fun b!568915 () Bool)

(assert (=> b!568915 (= e!343943 e!343938)))

(declare-fun res!244413 () Bool)

(assert (=> b!568915 (=> (not res!244413) (not e!343938))))

(assert (=> b!568915 (= res!244413 ((_ is Some!1437) lt!240482))))

(assert (=> b!568915 (= lt!240482 (maxPrefix!671 thiss!22590 rules!3103 input!2705))))

(assert (= (and start!52476 res!244423) b!568902))

(assert (= (and b!568902 res!244427) b!568891))

(assert (= (and b!568891 res!244417) b!568904))

(assert (= (and b!568904 res!244416) b!568914))

(assert (= (and b!568914 res!244424) b!568894))

(assert (= (and b!568894 res!244412) b!568909))

(assert (= (and b!568909 res!244419) b!568915))

(assert (= (and b!568915 res!244413) b!568895))

(assert (= (and b!568895 res!244430) b!568898))

(assert (= (and b!568898 c!106545) b!568887))

(assert (= (and b!568898 (not c!106545)) b!568899))

(assert (= (and b!568898 res!244428) b!568913))

(assert (= (and b!568913 res!244422) b!568885))

(assert (= (and b!568898 (not res!244421)) b!568893))

(assert (= (and b!568893 res!244425) b!568892))

(assert (= (and b!568892 res!244420) b!568900))

(assert (= (and b!568893 res!244415) b!568890))

(assert (= (and b!568890 (not res!244418)) b!568905))

(assert (= (and b!568905 res!244414) b!568907))

(assert (= (and b!568907 res!244429) b!568896))

(assert (= (and b!568893 c!106546) b!568897))

(assert (= (and b!568893 (not c!106546)) b!568911))

(assert (= (and b!568897 res!244426) b!568889))

(assert (= (and start!52476 ((_ is Cons!5625) suffix!1342)) b!568908))

(assert (= b!568910 b!568888))

(assert (= b!568901 b!568910))

(assert (= (and start!52476 ((_ is Cons!5626) rules!3103)) b!568901))

(assert (= b!568886 b!568912))

(assert (= b!568903 b!568886))

(assert (= start!52476 b!568903))

(assert (= (and start!52476 ((_ is Cons!5625) input!2705)) b!568906))

(declare-fun m!823177 () Bool)

(assert (=> b!568910 m!823177))

(declare-fun m!823179 () Bool)

(assert (=> b!568910 m!823179))

(declare-fun m!823181 () Bool)

(assert (=> b!568903 m!823181))

(declare-fun m!823183 () Bool)

(assert (=> b!568913 m!823183))

(declare-fun m!823185 () Bool)

(assert (=> b!568897 m!823185))

(declare-fun m!823187 () Bool)

(assert (=> b!568897 m!823187))

(declare-fun m!823189 () Bool)

(assert (=> b!568897 m!823189))

(declare-fun m!823191 () Bool)

(assert (=> b!568894 m!823191))

(declare-fun m!823193 () Bool)

(assert (=> b!568894 m!823193))

(declare-fun m!823195 () Bool)

(assert (=> b!568894 m!823195))

(declare-fun m!823197 () Bool)

(assert (=> b!568904 m!823197))

(declare-fun m!823199 () Bool)

(assert (=> b!568886 m!823199))

(declare-fun m!823201 () Bool)

(assert (=> b!568886 m!823201))

(declare-fun m!823203 () Bool)

(assert (=> b!568907 m!823203))

(declare-fun m!823205 () Bool)

(assert (=> b!568902 m!823205))

(declare-fun m!823207 () Bool)

(assert (=> b!568915 m!823207))

(declare-fun m!823209 () Bool)

(assert (=> b!568893 m!823209))

(declare-fun m!823211 () Bool)

(assert (=> b!568893 m!823211))

(declare-fun m!823213 () Bool)

(assert (=> b!568893 m!823213))

(declare-fun m!823215 () Bool)

(assert (=> b!568893 m!823215))

(declare-fun m!823217 () Bool)

(assert (=> b!568893 m!823217))

(declare-fun m!823219 () Bool)

(assert (=> b!568893 m!823219))

(declare-fun m!823221 () Bool)

(assert (=> b!568893 m!823221))

(declare-fun m!823223 () Bool)

(assert (=> b!568893 m!823223))

(declare-fun m!823225 () Bool)

(assert (=> b!568893 m!823225))

(assert (=> b!568893 m!823185))

(declare-fun m!823227 () Bool)

(assert (=> start!52476 m!823227))

(declare-fun m!823229 () Bool)

(assert (=> b!568909 m!823229))

(declare-fun m!823231 () Bool)

(assert (=> b!568892 m!823231))

(declare-fun m!823233 () Bool)

(assert (=> b!568914 m!823233))

(assert (=> b!568914 m!823233))

(declare-fun m!823235 () Bool)

(assert (=> b!568914 m!823235))

(declare-fun m!823237 () Bool)

(assert (=> b!568898 m!823237))

(declare-fun m!823239 () Bool)

(assert (=> b!568898 m!823239))

(declare-fun m!823241 () Bool)

(assert (=> b!568898 m!823241))

(declare-fun m!823243 () Bool)

(assert (=> b!568898 m!823243))

(declare-fun m!823245 () Bool)

(assert (=> b!568898 m!823245))

(declare-fun m!823247 () Bool)

(assert (=> b!568898 m!823247))

(declare-fun m!823249 () Bool)

(assert (=> b!568898 m!823249))

(declare-fun m!823251 () Bool)

(assert (=> b!568898 m!823251))

(declare-fun m!823253 () Bool)

(assert (=> b!568898 m!823253))

(declare-fun m!823255 () Bool)

(assert (=> b!568898 m!823255))

(declare-fun m!823257 () Bool)

(assert (=> b!568898 m!823257))

(declare-fun m!823259 () Bool)

(assert (=> b!568898 m!823259))

(declare-fun m!823261 () Bool)

(assert (=> b!568898 m!823261))

(declare-fun m!823263 () Bool)

(assert (=> b!568898 m!823263))

(declare-fun m!823265 () Bool)

(assert (=> b!568898 m!823265))

(declare-fun m!823267 () Bool)

(assert (=> b!568898 m!823267))

(declare-fun m!823269 () Bool)

(assert (=> b!568898 m!823269))

(declare-fun m!823271 () Bool)

(assert (=> b!568898 m!823271))

(declare-fun m!823273 () Bool)

(assert (=> b!568898 m!823273))

(declare-fun m!823275 () Bool)

(assert (=> b!568898 m!823275))

(declare-fun m!823277 () Bool)

(assert (=> b!568898 m!823277))

(declare-fun m!823279 () Bool)

(assert (=> b!568898 m!823279))

(declare-fun m!823281 () Bool)

(assert (=> b!568898 m!823281))

(declare-fun m!823283 () Bool)

(assert (=> b!568898 m!823283))

(assert (=> b!568898 m!823257))

(declare-fun m!823285 () Bool)

(assert (=> b!568898 m!823285))

(declare-fun m!823287 () Bool)

(assert (=> b!568898 m!823287))

(declare-fun m!823289 () Bool)

(assert (=> b!568898 m!823289))

(declare-fun m!823291 () Bool)

(assert (=> b!568905 m!823291))

(declare-fun m!823293 () Bool)

(assert (=> b!568895 m!823293))

(declare-fun m!823295 () Bool)

(assert (=> b!568891 m!823295))

(check-sat (not b!568903) (not b!568904) (not b!568902) (not b!568898) (not start!52476) b_and!55429 (not b!568893) (not b!568901) b_and!55433 (not b!568908) (not b!568907) (not b!568897) (not b_next!15921) (not b!568891) (not b!568886) (not b_next!15923) (not b_next!15917) (not b!568906) (not b_next!15919) b_and!55427 (not b!568895) (not b!568910) (not b!568915) (not b!568905) b_and!55431 (not b!568894) (not b!568914) (not b!568892) (not b!568909) (not b!568913) tp_is_empty!3197)
(check-sat (not b_next!15921) (not b_next!15919) b_and!55427 b_and!55429 b_and!55431 b_and!55433 (not b_next!15923) (not b_next!15917))
