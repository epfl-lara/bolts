; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345438 () Bool)

(assert start!345438)

(declare-fun b!3681612 () Bool)

(declare-fun b_free!97553 () Bool)

(declare-fun b_next!98257 () Bool)

(assert (=> b!3681612 (= b_free!97553 (not b_next!98257))))

(declare-fun tp!1119100 () Bool)

(declare-fun b_and!275043 () Bool)

(assert (=> b!3681612 (= tp!1119100 b_and!275043)))

(declare-fun b_free!97555 () Bool)

(declare-fun b_next!98259 () Bool)

(assert (=> b!3681612 (= b_free!97555 (not b_next!98259))))

(declare-fun tp!1119099 () Bool)

(declare-fun b_and!275045 () Bool)

(assert (=> b!3681612 (= tp!1119099 b_and!275045)))

(declare-fun b!3681606 () Bool)

(declare-fun b_free!97557 () Bool)

(declare-fun b_next!98261 () Bool)

(assert (=> b!3681606 (= b_free!97557 (not b_next!98261))))

(declare-fun tp!1119089 () Bool)

(declare-fun b_and!275047 () Bool)

(assert (=> b!3681606 (= tp!1119089 b_and!275047)))

(declare-fun b_free!97559 () Bool)

(declare-fun b_next!98263 () Bool)

(assert (=> b!3681606 (= b_free!97559 (not b_next!98263))))

(declare-fun tp!1119094 () Bool)

(declare-fun b_and!275049 () Bool)

(assert (=> b!3681606 (= tp!1119094 b_and!275049)))

(declare-fun b!3681595 () Bool)

(declare-fun b_free!97561 () Bool)

(declare-fun b_next!98265 () Bool)

(assert (=> b!3681595 (= b_free!97561 (not b_next!98265))))

(declare-fun tp!1119086 () Bool)

(declare-fun b_and!275051 () Bool)

(assert (=> b!3681595 (= tp!1119086 b_and!275051)))

(declare-fun b_free!97563 () Bool)

(declare-fun b_next!98267 () Bool)

(assert (=> b!3681595 (= b_free!97563 (not b_next!98267))))

(declare-fun tp!1119092 () Bool)

(declare-fun b_and!275053 () Bool)

(assert (=> b!3681595 (= tp!1119092 b_and!275053)))

(declare-fun b!3681588 () Bool)

(declare-fun b_free!97565 () Bool)

(declare-fun b_next!98269 () Bool)

(assert (=> b!3681588 (= b_free!97565 (not b_next!98269))))

(declare-fun tp!1119095 () Bool)

(declare-fun b_and!275055 () Bool)

(assert (=> b!3681588 (= tp!1119095 b_and!275055)))

(declare-fun b_free!97567 () Bool)

(declare-fun b_next!98271 () Bool)

(assert (=> b!3681588 (= b_free!97567 (not b_next!98271))))

(declare-fun tp!1119096 () Bool)

(declare-fun b_and!275057 () Bool)

(assert (=> b!3681588 (= tp!1119096 b_and!275057)))

(declare-fun b!3681565 () Bool)

(declare-datatypes ((Unit!56926 0))(
  ( (Unit!56927) )
))
(declare-fun e!2279756 () Unit!56926)

(declare-fun Unit!56928 () Unit!56926)

(assert (=> b!3681565 (= e!2279756 Unit!56928)))

(declare-datatypes ((C!21404 0))(
  ( (C!21405 (val!12750 Int)) )
))
(declare-fun lt!1287555 () C!21404)

(declare-datatypes ((List!38957 0))(
  ( (Nil!38833) (Cons!38833 (h!44253 (_ BitVec 16)) (t!300712 List!38957)) )
))
(declare-datatypes ((TokenValue!6080 0))(
  ( (FloatLiteralValue!12160 (text!43005 List!38957)) (TokenValueExt!6079 (__x!24377 Int)) (Broken!30400 (value!187159 List!38957)) (Object!6203) (End!6080) (Def!6080) (Underscore!6080) (Match!6080) (Else!6080) (Error!6080) (Case!6080) (If!6080) (Extends!6080) (Abstract!6080) (Class!6080) (Val!6080) (DelimiterValue!12160 (del!6140 List!38957)) (KeywordValue!6086 (value!187160 List!38957)) (CommentValue!12160 (value!187161 List!38957)) (WhitespaceValue!12160 (value!187162 List!38957)) (IndentationValue!6080 (value!187163 List!38957)) (String!43733) (Int32!6080) (Broken!30401 (value!187164 List!38957)) (Boolean!6081) (Unit!56929) (OperatorValue!6083 (op!6140 List!38957)) (IdentifierValue!12160 (value!187165 List!38957)) (IdentifierValue!12161 (value!187166 List!38957)) (WhitespaceValue!12161 (value!187167 List!38957)) (True!12160) (False!12160) (Broken!30402 (value!187168 List!38957)) (Broken!30403 (value!187169 List!38957)) (True!12161) (RightBrace!6080) (RightBracket!6080) (Colon!6080) (Null!6080) (Comma!6080) (LeftBracket!6080) (False!12161) (LeftBrace!6080) (ImaginaryLiteralValue!6080 (text!43006 List!38957)) (StringLiteralValue!18240 (value!187170 List!38957)) (EOFValue!6080 (value!187171 List!38957)) (IdentValue!6080 (value!187172 List!38957)) (DelimiterValue!12161 (value!187173 List!38957)) (DedentValue!6080 (value!187174 List!38957)) (NewLineValue!6080 (value!187175 List!38957)) (IntegerValue!18240 (value!187176 (_ BitVec 32)) (text!43007 List!38957)) (IntegerValue!18241 (value!187177 Int) (text!43008 List!38957)) (Times!6080) (Or!6080) (Equal!6080) (Minus!6080) (Broken!30404 (value!187178 List!38957)) (And!6080) (Div!6080) (LessEqual!6080) (Mod!6080) (Concat!16689) (Not!6080) (Plus!6080) (SpaceValue!6080 (value!187179 List!38957)) (IntegerValue!18242 (value!187180 Int) (text!43009 List!38957)) (StringLiteralValue!18241 (text!43010 List!38957)) (FloatLiteralValue!12161 (text!43011 List!38957)) (BytesLiteralValue!6080 (value!187181 List!38957)) (CommentValue!12161 (value!187182 List!38957)) (StringLiteralValue!18242 (value!187183 List!38957)) (ErrorTokenValue!6080 (msg!6141 List!38957)) )
))
(declare-datatypes ((Regex!10609 0))(
  ( (ElementMatch!10609 (c!636854 C!21404)) (Concat!16690 (regOne!21730 Regex!10609) (regTwo!21730 Regex!10609)) (EmptyExpr!10609) (Star!10609 (reg!10938 Regex!10609)) (EmptyLang!10609) (Union!10609 (regOne!21731 Regex!10609) (regTwo!21731 Regex!10609)) )
))
(declare-datatypes ((String!43734 0))(
  ( (String!43735 (value!187184 String)) )
))
(declare-datatypes ((List!38958 0))(
  ( (Nil!38834) (Cons!38834 (h!44254 C!21404) (t!300713 List!38958)) )
))
(declare-datatypes ((IArray!23783 0))(
  ( (IArray!23784 (innerList!11949 List!38958)) )
))
(declare-datatypes ((Conc!11889 0))(
  ( (Node!11889 (left!30300 Conc!11889) (right!30630 Conc!11889) (csize!24008 Int) (cheight!12100 Int)) (Leaf!18425 (xs!15091 IArray!23783) (csize!24009 Int)) (Empty!11889) )
))
(declare-datatypes ((BalanceConc!23392 0))(
  ( (BalanceConc!23393 (c!636855 Conc!11889)) )
))
(declare-datatypes ((TokenValueInjection!11588 0))(
  ( (TokenValueInjection!11589 (toValue!8146 Int) (toChars!8005 Int)) )
))
(declare-datatypes ((Rule!11500 0))(
  ( (Rule!11501 (regex!5850 Regex!10609) (tag!6654 String!43734) (isSeparator!5850 Bool) (transformation!5850 TokenValueInjection!11588)) )
))
(declare-fun rule!403 () Rule!11500)

(declare-fun lt!1287594 () Unit!56926)

(declare-fun lt!1287575 () List!38958)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (Regex!10609 List!38958 C!21404) Unit!56926)

(assert (=> b!3681565 (= lt!1287594 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 rule!403) lt!1287575 lt!1287555))))

(assert (=> b!3681565 false))

(declare-fun b!3681566 () Bool)

(declare-fun e!2279741 () Unit!56926)

(declare-fun Unit!56930 () Unit!56926)

(assert (=> b!3681566 (= e!2279741 Unit!56930)))

(declare-datatypes ((List!38959 0))(
  ( (Nil!38835) (Cons!38835 (h!44255 Rule!11500) (t!300714 List!38959)) )
))
(declare-fun rules!3307 () List!38959)

(declare-datatypes ((LexerInterface!5439 0))(
  ( (LexerInterfaceExt!5436 (__x!24378 Int)) (Lexer!5437) )
))
(declare-fun thiss!23823 () LexerInterface!5439)

(declare-fun lt!1287598 () Unit!56926)

(declare-fun lt!1287589 () List!38958)

(declare-fun lt!1287597 () List!38958)

(declare-datatypes ((Token!11066 0))(
  ( (Token!11067 (value!187185 TokenValue!6080) (rule!8688 Rule!11500) (size!29695 Int) (originalCharacters!6564 List!38958)) )
))
(declare-datatypes ((tuple2!38700 0))(
  ( (tuple2!38701 (_1!22484 Token!11066) (_2!22484 List!38958)) )
))
(declare-fun lt!1287573 () tuple2!38700)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!392 (LexerInterface!5439 List!38959 Rule!11500 List!38958 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> b!3681566 (= lt!1287598 (lemmaMaxPrefixOutputsMaxPrefix!392 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287589 lt!1287597 lt!1287575 rule!403))))

(assert (=> b!3681566 false))

(declare-fun res!1495782 () Bool)

(declare-fun e!2279733 () Bool)

(assert (=> start!345438 (=> (not res!1495782) (not e!2279733))))

(get-info :version)

(assert (=> start!345438 (= res!1495782 ((_ is Lexer!5437) thiss!23823))))

(assert (=> start!345438 e!2279733))

(declare-fun e!2279740 () Bool)

(assert (=> start!345438 e!2279740))

(declare-fun e!2279758 () Bool)

(assert (=> start!345438 e!2279758))

(assert (=> start!345438 true))

(declare-fun token!511 () Token!11066)

(declare-fun e!2279750 () Bool)

(declare-fun inv!52333 (Token!11066) Bool)

(assert (=> start!345438 (and (inv!52333 token!511) e!2279750)))

(declare-fun e!2279764 () Bool)

(assert (=> start!345438 e!2279764))

(declare-fun e!2279738 () Bool)

(assert (=> start!345438 e!2279738))

(declare-fun b!3681567 () Bool)

(assert (=> b!3681567 false))

(declare-fun lt!1287556 () Unit!56926)

(declare-fun call!266706 () Unit!56926)

(assert (=> b!3681567 (= lt!1287556 call!266706)))

(declare-fun call!266704 () Bool)

(assert (=> b!3681567 (not call!266704)))

(declare-fun lt!1287564 () Unit!56926)

(declare-fun anOtherTypeRule!33 () Rule!11500)

(declare-fun lt!1287559 () C!21404)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!378 (LexerInterface!5439 List!38959 List!38959 Rule!11500 Rule!11500 C!21404) Unit!56926)

(assert (=> b!3681567 (= lt!1287564 (lemmaSepRuleNotContainsCharContainedInANonSepRule!378 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8688 (_1!22484 lt!1287573)) lt!1287559))))

(declare-fun e!2279748 () Unit!56926)

(declare-fun Unit!56931 () Unit!56926)

(assert (=> b!3681567 (= e!2279748 Unit!56931)))

(declare-fun b!3681568 () Bool)

(declare-fun e!2279734 () Bool)

(declare-fun e!2279743 () Bool)

(assert (=> b!3681568 (= e!2279734 e!2279743)))

(declare-fun res!1495778 () Bool)

(assert (=> b!3681568 (=> (not res!1495778) (not e!2279743))))

(declare-fun lt!1287558 () tuple2!38700)

(assert (=> b!3681568 (= res!1495778 (= (_1!22484 lt!1287558) token!511))))

(declare-datatypes ((Option!8328 0))(
  ( (None!8327) (Some!8327 (v!38267 tuple2!38700)) )
))
(declare-fun lt!1287570 () Option!8328)

(declare-fun get!12863 (Option!8328) tuple2!38700)

(assert (=> b!3681568 (= lt!1287558 (get!12863 lt!1287570))))

(declare-fun b!3681569 () Bool)

(declare-fun res!1495764 () Bool)

(assert (=> b!3681569 (=> (not res!1495764) (not e!2279733))))

(declare-fun contains!7767 (List!38959 Rule!11500) Bool)

(assert (=> b!3681569 (= res!1495764 (contains!7767 rules!3307 rule!403))))

(declare-fun b!3681570 () Bool)

(declare-fun res!1495763 () Bool)

(assert (=> b!3681570 (=> (not res!1495763) (not e!2279733))))

(assert (=> b!3681570 (= res!1495763 (not (= (isSeparator!5850 anOtherTypeRule!33) (isSeparator!5850 rule!403))))))

(declare-fun b!3681571 () Bool)

(assert (=> b!3681571 false))

(declare-fun lt!1287568 () Unit!56926)

(assert (=> b!3681571 (= lt!1287568 call!266706)))

(assert (=> b!3681571 (not call!266704)))

(declare-fun lt!1287551 () Unit!56926)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!496 (LexerInterface!5439 List!38959 List!38959 Rule!11500 Rule!11500 C!21404) Unit!56926)

(assert (=> b!3681571 (= lt!1287551 (lemmaNonSepRuleNotContainsCharContainedInASepRule!496 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) anOtherTypeRule!33 lt!1287559))))

(declare-fun Unit!56932 () Unit!56926)

(assert (=> b!3681571 (= e!2279748 Unit!56932)))

(declare-fun tp!1119097 () Bool)

(declare-fun b!3681572 () Bool)

(declare-fun e!2279747 () Bool)

(declare-fun e!2279739 () Bool)

(declare-fun inv!52330 (String!43734) Bool)

(declare-fun inv!52334 (TokenValueInjection!11588) Bool)

(assert (=> b!3681572 (= e!2279747 (and tp!1119097 (inv!52330 (tag!6654 (h!44255 rules!3307))) (inv!52334 (transformation!5850 (h!44255 rules!3307))) e!2279739))))

(declare-fun b!3681573 () Bool)

(declare-fun e!2279752 () Unit!56926)

(declare-fun Unit!56933 () Unit!56926)

(assert (=> b!3681573 (= e!2279752 Unit!56933)))

(declare-fun b!3681574 () Bool)

(declare-fun e!2279742 () Bool)

(declare-fun e!2279760 () Bool)

(assert (=> b!3681574 (= e!2279742 e!2279760)))

(declare-fun res!1495771 () Bool)

(assert (=> b!3681574 (=> res!1495771 e!2279760)))

(declare-fun lt!1287595 () Option!8328)

(declare-fun lt!1287576 () Int)

(declare-fun lt!1287563 () TokenValue!6080)

(assert (=> b!3681574 (= res!1495771 (not (= lt!1287595 (Some!8327 (tuple2!38701 (Token!11067 lt!1287563 (rule!8688 (_1!22484 lt!1287573)) lt!1287576 lt!1287589) (_2!22484 lt!1287573))))))))

(declare-fun lt!1287546 () BalanceConc!23392)

(declare-fun size!29696 (BalanceConc!23392) Int)

(assert (=> b!3681574 (= lt!1287576 (size!29696 lt!1287546))))

(declare-fun apply!9352 (TokenValueInjection!11588 BalanceConc!23392) TokenValue!6080)

(assert (=> b!3681574 (= lt!1287563 (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546))))

(declare-fun lt!1287571 () Unit!56926)

(declare-fun lemmaCharactersSize!895 (Token!11066) Unit!56926)

(assert (=> b!3681574 (= lt!1287571 (lemmaCharactersSize!895 (_1!22484 lt!1287573)))))

(declare-fun lt!1287600 () Unit!56926)

(declare-fun lemmaEqSameImage!1033 (TokenValueInjection!11588 BalanceConc!23392 BalanceConc!23392) Unit!56926)

(declare-fun seqFromList!4399 (List!38958) BalanceConc!23392)

(assert (=> b!3681574 (= lt!1287600 (lemmaEqSameImage!1033 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546 (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573)))))))

(declare-fun lt!1287566 () Unit!56926)

(declare-fun lemmaSemiInverse!1599 (TokenValueInjection!11588 BalanceConc!23392) Unit!56926)

(assert (=> b!3681574 (= lt!1287566 (lemmaSemiInverse!1599 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546))))

(declare-fun b!3681575 () Bool)

(declare-fun e!2279745 () Bool)

(declare-fun e!2279735 () Bool)

(assert (=> b!3681575 (= e!2279745 e!2279735)))

(declare-fun res!1495762 () Bool)

(assert (=> b!3681575 (=> res!1495762 e!2279735)))

(declare-fun lt!1287540 () List!38958)

(assert (=> b!3681575 (= res!1495762 (or (not (= lt!1287540 lt!1287597)) (not (= lt!1287575 lt!1287589))))))

(declare-fun lt!1287553 () List!38958)

(assert (=> b!3681575 (= lt!1287553 (_2!22484 lt!1287573))))

(declare-fun lt!1287543 () Unit!56926)

(declare-fun lemmaSamePrefixThenSameSuffix!1540 (List!38958 List!38958 List!38958 List!38958 List!38958) Unit!56926)

(assert (=> b!3681575 (= lt!1287543 (lemmaSamePrefixThenSameSuffix!1540 lt!1287575 lt!1287553 lt!1287589 (_2!22484 lt!1287573) lt!1287597))))

(declare-fun maxPrefixOneRule!2111 (LexerInterface!5439 Rule!11500 List!38958) Option!8328)

(declare-fun size!29697 (List!38958) Int)

(assert (=> b!3681575 (= (maxPrefixOneRule!2111 thiss!23823 rule!403 lt!1287597) (Some!8327 (tuple2!38701 (Token!11067 (apply!9352 (transformation!5850 rule!403) (seqFromList!4399 lt!1287575)) rule!403 (size!29697 lt!1287575) lt!1287575) lt!1287553)))))

(declare-fun lt!1287565 () Unit!56926)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1167 (LexerInterface!5439 List!38959 List!38958 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> b!3681575 (= lt!1287565 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1167 thiss!23823 rules!3307 lt!1287575 lt!1287597 lt!1287553 rule!403))))

(declare-fun getSuffix!1766 (List!38958 List!38958) List!38958)

(assert (=> b!3681575 (= lt!1287553 (getSuffix!1766 lt!1287597 lt!1287575))))

(declare-fun lt!1287542 () Unit!56926)

(assert (=> b!3681575 (= lt!1287542 e!2279752)))

(declare-fun c!636850 () Bool)

(assert (=> b!3681575 (= c!636850 (not (= (rule!8688 (_1!22484 lt!1287573)) (rule!8688 token!511))))))

(assert (=> b!3681575 (= lt!1287589 lt!1287575)))

(declare-fun lt!1287587 () Unit!56926)

(declare-fun lemmaIsPrefixSameLengthThenSameList!675 (List!38958 List!38958 List!38958) Unit!56926)

(assert (=> b!3681575 (= lt!1287587 (lemmaIsPrefixSameLengthThenSameList!675 lt!1287589 lt!1287575 lt!1287597))))

(declare-fun lt!1287572 () Unit!56926)

(assert (=> b!3681575 (= lt!1287572 e!2279741)))

(declare-fun c!636844 () Bool)

(declare-fun lt!1287578 () Int)

(assert (=> b!3681575 (= c!636844 (< lt!1287576 lt!1287578))))

(declare-fun lt!1287567 () Unit!56926)

(declare-fun e!2279736 () Unit!56926)

(assert (=> b!3681575 (= lt!1287567 e!2279736)))

(declare-fun c!636847 () Bool)

(assert (=> b!3681575 (= c!636847 (> lt!1287576 lt!1287578))))

(declare-fun lt!1287581 () BalanceConc!23392)

(assert (=> b!3681575 (= lt!1287578 (size!29696 lt!1287581))))

(declare-fun lt!1287561 () Unit!56926)

(declare-fun e!2279753 () Unit!56926)

(assert (=> b!3681575 (= lt!1287561 e!2279753)))

(declare-fun c!636848 () Bool)

(assert (=> b!3681575 (= c!636848 (isSeparator!5850 rule!403))))

(declare-fun lt!1287554 () Unit!56926)

(assert (=> b!3681575 (= lt!1287554 e!2279756)))

(declare-fun c!636846 () Bool)

(declare-fun lt!1287549 () List!38958)

(declare-fun contains!7768 (List!38958 C!21404) Bool)

(assert (=> b!3681575 (= c!636846 (not (contains!7768 lt!1287549 lt!1287555)))))

(declare-fun head!7904 (List!38958) C!21404)

(assert (=> b!3681575 (= lt!1287555 (head!7904 lt!1287589))))

(declare-fun b!3681576 () Bool)

(declare-fun e!2279762 () Bool)

(assert (=> b!3681576 e!2279762))

(declare-fun res!1495784 () Bool)

(assert (=> b!3681576 (=> (not res!1495784) (not e!2279762))))

(declare-fun matchR!5178 (Regex!10609 List!38958) Bool)

(assert (=> b!3681576 (= res!1495784 (not (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287575)))))

(declare-fun lt!1287552 () Unit!56926)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!258 (LexerInterface!5439 List!38959 Rule!11500 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> b!3681576 (= lt!1287552 (lemmaMaxPrefNoSmallerRuleMatches!258 thiss!23823 rules!3307 rule!403 lt!1287575 lt!1287575 (rule!8688 (_1!22484 lt!1287573))))))

(declare-fun isEmpty!23066 (List!38958) Bool)

(assert (=> b!3681576 (isEmpty!23066 (getSuffix!1766 lt!1287575 lt!1287575))))

(declare-fun lt!1287550 () Unit!56926)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!230 (List!38958) Unit!56926)

(assert (=> b!3681576 (= lt!1287550 (lemmaGetSuffixOnListWithItSelfIsEmpty!230 lt!1287575))))

(declare-fun e!2279765 () Unit!56926)

(declare-fun Unit!56934 () Unit!56926)

(assert (=> b!3681576 (= e!2279765 Unit!56934)))

(declare-fun b!3681577 () Bool)

(declare-fun Unit!56935 () Unit!56926)

(assert (=> b!3681577 (= e!2279756 Unit!56935)))

(declare-fun b!3681578 () Bool)

(declare-fun e!2279768 () Unit!56926)

(declare-fun Unit!56936 () Unit!56926)

(assert (=> b!3681578 (= e!2279768 Unit!56936)))

(declare-fun b!3681579 () Bool)

(assert (=> b!3681579 false))

(declare-fun lt!1287579 () Unit!56926)

(assert (=> b!3681579 (= lt!1287579 (lemmaMaxPrefNoSmallerRuleMatches!258 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287575 lt!1287597 rule!403))))

(declare-fun e!2279755 () Unit!56926)

(declare-fun Unit!56937 () Unit!56926)

(assert (=> b!3681579 (= e!2279755 Unit!56937)))

(declare-fun b!3681580 () Bool)

(declare-fun Unit!56938 () Unit!56926)

(assert (=> b!3681580 (= e!2279755 Unit!56938)))

(declare-fun bm!266698 () Bool)

(declare-fun call!266708 () List!38958)

(assert (=> bm!266698 (= call!266704 (contains!7768 call!266708 lt!1287559))))

(declare-fun b!3681581 () Bool)

(declare-fun e!2279763 () Bool)

(declare-fun e!2279751 () Bool)

(assert (=> b!3681581 (= e!2279763 e!2279751)))

(declare-fun res!1495779 () Bool)

(assert (=> b!3681581 (=> res!1495779 e!2279751)))

(assert (=> b!3681581 (= res!1495779 (contains!7768 lt!1287549 lt!1287559))))

(declare-fun suffix!1395 () List!38958)

(assert (=> b!3681581 (= lt!1287559 (head!7904 suffix!1395))))

(declare-fun usedCharacters!1062 (Regex!10609) List!38958)

(assert (=> b!3681581 (= lt!1287549 (usedCharacters!1062 (regex!5850 rule!403)))))

(declare-fun b!3681582 () Bool)

(assert (=> b!3681582 (= e!2279733 e!2279734)))

(declare-fun res!1495781 () Bool)

(assert (=> b!3681582 (=> (not res!1495781) (not e!2279734))))

(declare-fun isDefined!6560 (Option!8328) Bool)

(assert (=> b!3681582 (= res!1495781 (isDefined!6560 lt!1287570))))

(declare-fun maxPrefix!2973 (LexerInterface!5439 List!38959 List!38958) Option!8328)

(assert (=> b!3681582 (= lt!1287570 (maxPrefix!2973 thiss!23823 rules!3307 lt!1287575))))

(declare-fun list!14436 (BalanceConc!23392) List!38958)

(assert (=> b!3681582 (= lt!1287575 (list!14436 lt!1287581))))

(declare-fun charsOf!3864 (Token!11066) BalanceConc!23392)

(assert (=> b!3681582 (= lt!1287581 (charsOf!3864 token!511))))

(declare-fun b!3681583 () Bool)

(declare-fun e!2279757 () Bool)

(declare-fun lt!1287585 () Rule!11500)

(assert (=> b!3681583 (= e!2279757 (= (rule!8688 (_1!22484 lt!1287573)) lt!1287585))))

(declare-fun b!3681584 () Bool)

(assert (=> b!3681584 (= e!2279751 e!2279742)))

(declare-fun res!1495775 () Bool)

(assert (=> b!3681584 (=> res!1495775 e!2279742)))

(declare-fun isPrefix!3213 (List!38958 List!38958) Bool)

(assert (=> b!3681584 (= res!1495775 (not (isPrefix!3213 lt!1287589 lt!1287597)))))

(assert (=> b!3681584 (isPrefix!3213 lt!1287589 lt!1287540)))

(declare-fun ++!9666 (List!38958 List!38958) List!38958)

(assert (=> b!3681584 (= lt!1287540 (++!9666 lt!1287589 (_2!22484 lt!1287573)))))

(declare-fun lt!1287560 () Unit!56926)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2132 (List!38958 List!38958) Unit!56926)

(assert (=> b!3681584 (= lt!1287560 (lemmaConcatTwoListThenFirstIsPrefix!2132 lt!1287589 (_2!22484 lt!1287573)))))

(assert (=> b!3681584 (= lt!1287589 (list!14436 lt!1287546))))

(assert (=> b!3681584 (= lt!1287546 (charsOf!3864 (_1!22484 lt!1287573)))))

(declare-fun e!2279767 () Bool)

(assert (=> b!3681584 e!2279767))

(declare-fun res!1495773 () Bool)

(assert (=> b!3681584 (=> (not res!1495773) (not e!2279767))))

(declare-datatypes ((Option!8329 0))(
  ( (None!8328) (Some!8328 (v!38268 Rule!11500)) )
))
(declare-fun lt!1287582 () Option!8329)

(declare-fun isDefined!6561 (Option!8329) Bool)

(assert (=> b!3681584 (= res!1495773 (isDefined!6561 lt!1287582))))

(declare-fun getRuleFromTag!1454 (LexerInterface!5439 List!38959 String!43734) Option!8329)

(assert (=> b!3681584 (= lt!1287582 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun lt!1287586 () Unit!56926)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1454 (LexerInterface!5439 List!38959 List!38958 Token!11066) Unit!56926)

(assert (=> b!3681584 (= lt!1287586 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1454 thiss!23823 rules!3307 lt!1287597 (_1!22484 lt!1287573)))))

(assert (=> b!3681584 (= lt!1287573 (get!12863 lt!1287595))))

(declare-fun lt!1287584 () Unit!56926)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1117 (LexerInterface!5439 List!38959 List!38958 List!38958) Unit!56926)

(assert (=> b!3681584 (= lt!1287584 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1117 thiss!23823 rules!3307 lt!1287575 suffix!1395))))

(assert (=> b!3681584 (= lt!1287595 (maxPrefix!2973 thiss!23823 rules!3307 lt!1287597))))

(assert (=> b!3681584 (isPrefix!3213 lt!1287575 lt!1287597)))

(declare-fun lt!1287547 () Unit!56926)

(assert (=> b!3681584 (= lt!1287547 (lemmaConcatTwoListThenFirstIsPrefix!2132 lt!1287575 suffix!1395))))

(assert (=> b!3681584 (= lt!1287597 (++!9666 lt!1287575 suffix!1395))))

(declare-fun b!3681585 () Bool)

(declare-fun res!1495765 () Bool)

(assert (=> b!3681585 (=> (not res!1495765) (not e!2279733))))

(declare-fun isEmpty!23067 (List!38959) Bool)

(assert (=> b!3681585 (= res!1495765 (not (isEmpty!23067 rules!3307)))))

(declare-fun b!3681586 () Bool)

(declare-fun Unit!56939 () Unit!56926)

(assert (=> b!3681586 (= e!2279765 Unit!56939)))

(declare-fun b!3681587 () Bool)

(assert (=> b!3681587 (= e!2279736 e!2279748)))

(declare-fun lt!1287562 () Unit!56926)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!158 (List!38958 List!38958 List!38958 List!38958) Unit!56926)

(assert (=> b!3681587 (= lt!1287562 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!158 lt!1287575 suffix!1395 lt!1287589 lt!1287597))))

(assert (=> b!3681587 (contains!7768 lt!1287589 lt!1287559)))

(declare-fun c!636853 () Bool)

(assert (=> b!3681587 (= c!636853 (isSeparator!5850 rule!403))))

(declare-fun bm!266699 () Bool)

(assert (=> bm!266699 (= call!266706 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287559))))

(declare-fun e!2279766 () Bool)

(assert (=> b!3681588 (= e!2279766 (and tp!1119095 tp!1119096))))

(declare-fun b!3681589 () Bool)

(declare-fun res!1495768 () Bool)

(assert (=> b!3681589 (=> (not res!1495768) (not e!2279733))))

(declare-fun rulesInvariant!4836 (LexerInterface!5439 List!38959) Bool)

(assert (=> b!3681589 (= res!1495768 (rulesInvariant!4836 thiss!23823 rules!3307))))

(declare-fun e!2279737 () Bool)

(declare-fun tp!1119091 () Bool)

(declare-fun b!3681590 () Bool)

(declare-fun inv!21 (TokenValue!6080) Bool)

(assert (=> b!3681590 (= e!2279750 (and (inv!21 (value!187185 token!511)) e!2279737 tp!1119091))))

(declare-fun bm!266700 () Bool)

(assert (=> bm!266700 (= call!266708 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681591 () Bool)

(assert (=> b!3681591 false))

(declare-fun lt!1287592 () Unit!56926)

(declare-fun call!266705 () Unit!56926)

(assert (=> b!3681591 (= lt!1287592 call!266705)))

(declare-fun call!266707 () Bool)

(assert (=> b!3681591 (not call!266707)))

(declare-fun lt!1287577 () Unit!56926)

(assert (=> b!3681591 (= lt!1287577 (lemmaNonSepRuleNotContainsCharContainedInASepRule!496 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403 lt!1287555))))

(declare-fun Unit!56940 () Unit!56926)

(assert (=> b!3681591 (= e!2279768 Unit!56940)))

(declare-fun b!3681592 () Bool)

(declare-fun res!1495777 () Bool)

(assert (=> b!3681592 (=> (not res!1495777) (not e!2279743))))

(assert (=> b!3681592 (= res!1495777 (= (rule!8688 token!511) rule!403))))

(declare-fun b!3681593 () Bool)

(declare-fun res!1495769 () Bool)

(assert (=> b!3681593 (=> res!1495769 e!2279751)))

(declare-fun sepAndNonSepRulesDisjointChars!2018 (List!38959 List!38959) Bool)

(assert (=> b!3681593 (= res!1495769 (not (sepAndNonSepRulesDisjointChars!2018 rules!3307 rules!3307)))))

(declare-fun b!3681594 () Bool)

(declare-fun Unit!56941 () Unit!56926)

(assert (=> b!3681594 (= e!2279736 Unit!56941)))

(assert (=> b!3681595 (= e!2279739 (and tp!1119086 tp!1119092))))

(declare-fun bm!266701 () Bool)

(assert (=> bm!266701 (= call!266705 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287555))))

(declare-fun b!3681596 () Bool)

(declare-fun res!1495772 () Bool)

(assert (=> b!3681596 (=> (not res!1495772) (not e!2279733))))

(assert (=> b!3681596 (= res!1495772 (contains!7767 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3681597 () Bool)

(assert (=> b!3681597 (= e!2279735 (= lt!1287595 (Some!8327 (tuple2!38701 token!511 suffix!1395))))))

(assert (=> b!3681597 (= suffix!1395 (_2!22484 lt!1287573))))

(declare-fun lt!1287590 () Unit!56926)

(assert (=> b!3681597 (= lt!1287590 (lemmaSamePrefixThenSameSuffix!1540 lt!1287575 suffix!1395 lt!1287589 (_2!22484 lt!1287573) lt!1287597))))

(declare-fun b!3681598 () Bool)

(declare-fun Unit!56942 () Unit!56926)

(assert (=> b!3681598 (= e!2279741 Unit!56942)))

(declare-fun b!3681599 () Bool)

(declare-fun res!1495774 () Bool)

(assert (=> b!3681599 (=> res!1495774 e!2279751)))

(assert (=> b!3681599 (= res!1495774 (not (contains!7768 (usedCharacters!1062 (regex!5850 anOtherTypeRule!33)) lt!1287559)))))

(declare-fun b!3681600 () Bool)

(declare-fun e!2279732 () Unit!56926)

(assert (=> b!3681600 (= e!2279753 e!2279732)))

(declare-fun c!636845 () Bool)

(assert (=> b!3681600 (= c!636845 (isSeparator!5850 (rule!8688 (_1!22484 lt!1287573))))))

(declare-fun b!3681601 () Bool)

(assert (=> b!3681601 (= e!2279760 e!2279745)))

(declare-fun res!1495766 () Bool)

(assert (=> b!3681601 (=> res!1495766 e!2279745)))

(declare-fun lt!1287557 () Option!8328)

(declare-fun lt!1287548 () List!38958)

(assert (=> b!3681601 (= res!1495766 (or (not (= lt!1287548 (_2!22484 lt!1287573))) (not (= lt!1287557 (Some!8327 (tuple2!38701 (_1!22484 lt!1287573) lt!1287548))))))))

(assert (=> b!3681601 (= (_2!22484 lt!1287573) lt!1287548)))

(declare-fun lt!1287545 () Unit!56926)

(assert (=> b!3681601 (= lt!1287545 (lemmaSamePrefixThenSameSuffix!1540 lt!1287589 (_2!22484 lt!1287573) lt!1287589 lt!1287548 lt!1287597))))

(assert (=> b!3681601 (= lt!1287548 (getSuffix!1766 lt!1287597 lt!1287589))))

(declare-fun lt!1287580 () TokenValue!6080)

(declare-fun lt!1287596 () Int)

(assert (=> b!3681601 (= lt!1287557 (Some!8327 (tuple2!38701 (Token!11067 lt!1287580 (rule!8688 (_1!22484 lt!1287573)) lt!1287596 lt!1287589) (_2!22484 lt!1287573))))))

(assert (=> b!3681601 (= lt!1287557 (maxPrefixOneRule!2111 thiss!23823 (rule!8688 (_1!22484 lt!1287573)) lt!1287597))))

(assert (=> b!3681601 (= lt!1287596 (size!29697 lt!1287589))))

(assert (=> b!3681601 (= lt!1287580 (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) (seqFromList!4399 lt!1287589)))))

(declare-fun lt!1287599 () Unit!56926)

(assert (=> b!3681601 (= lt!1287599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1167 thiss!23823 rules!3307 lt!1287589 lt!1287597 (_2!22484 lt!1287573) (rule!8688 (_1!22484 lt!1287573))))))

(declare-fun b!3681602 () Bool)

(assert (=> b!3681602 (= e!2279762 false)))

(declare-fun bm!266702 () Bool)

(declare-fun call!266703 () List!38958)

(assert (=> bm!266702 (= call!266703 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681603 () Bool)

(declare-fun tp_is_empty!18301 () Bool)

(declare-fun tp!1119093 () Bool)

(assert (=> b!3681603 (= e!2279758 (and tp_is_empty!18301 tp!1119093))))

(declare-fun b!3681604 () Bool)

(assert (=> b!3681604 (= e!2279753 e!2279768)))

(declare-fun c!636849 () Bool)

(assert (=> b!3681604 (= c!636849 (not (isSeparator!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681605 () Bool)

(declare-fun Unit!56943 () Unit!56926)

(assert (=> b!3681605 (= e!2279752 Unit!56943)))

(declare-fun lt!1287541 () Int)

(declare-fun getIndex!518 (List!38959 Rule!11500) Int)

(assert (=> b!3681605 (= lt!1287541 (getIndex!518 rules!3307 (rule!8688 (_1!22484 lt!1287573))))))

(declare-fun lt!1287591 () Int)

(assert (=> b!3681605 (= lt!1287591 (getIndex!518 rules!3307 rule!403))))

(declare-fun c!636851 () Bool)

(assert (=> b!3681605 (= c!636851 (< lt!1287541 lt!1287591))))

(declare-fun lt!1287574 () Unit!56926)

(assert (=> b!3681605 (= lt!1287574 e!2279765)))

(declare-fun c!636852 () Bool)

(assert (=> b!3681605 (= c!636852 (< lt!1287591 lt!1287541))))

(declare-fun lt!1287569 () Unit!56926)

(assert (=> b!3681605 (= lt!1287569 e!2279755)))

(declare-fun lt!1287583 () Unit!56926)

(declare-fun lemmaSameIndexThenSameElement!250 (List!38959 Rule!11500 Rule!11500) Unit!56926)

(assert (=> b!3681605 (= lt!1287583 (lemmaSameIndexThenSameElement!250 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403))))

(assert (=> b!3681605 false))

(declare-fun e!2279749 () Bool)

(assert (=> b!3681606 (= e!2279749 (and tp!1119089 tp!1119094))))

(declare-fun b!3681607 () Bool)

(declare-fun tp!1119090 () Bool)

(assert (=> b!3681607 (= e!2279737 (and tp!1119090 (inv!52330 (tag!6654 (rule!8688 token!511))) (inv!52334 (transformation!5850 (rule!8688 token!511))) e!2279749))))

(declare-fun b!3681608 () Bool)

(assert (=> b!3681608 false))

(declare-fun lt!1287544 () Unit!56926)

(assert (=> b!3681608 (= lt!1287544 call!266705)))

(assert (=> b!3681608 (not call!266707)))

(declare-fun lt!1287588 () Unit!56926)

(assert (=> b!3681608 (= lt!1287588 (lemmaSepRuleNotContainsCharContainedInANonSepRule!378 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8688 (_1!22484 lt!1287573)) lt!1287555))))

(declare-fun Unit!56944 () Unit!56926)

(assert (=> b!3681608 (= e!2279732 Unit!56944)))

(declare-fun b!3681609 () Bool)

(declare-fun Unit!56945 () Unit!56926)

(assert (=> b!3681609 (= e!2279732 Unit!56945)))

(declare-fun b!3681610 () Bool)

(declare-fun res!1495776 () Bool)

(assert (=> b!3681610 (=> (not res!1495776) (not e!2279743))))

(assert (=> b!3681610 (= res!1495776 (isEmpty!23066 (_2!22484 lt!1287558)))))

(declare-fun b!3681611 () Bool)

(assert (=> b!3681611 (= e!2279767 e!2279757)))

(declare-fun res!1495783 () Bool)

(assert (=> b!3681611 (=> (not res!1495783) (not e!2279757))))

(assert (=> b!3681611 (= res!1495783 (matchR!5178 (regex!5850 lt!1287585) (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))))))

(declare-fun get!12864 (Option!8329) Rule!11500)

(assert (=> b!3681611 (= lt!1287585 (get!12864 lt!1287582))))

(declare-fun e!2279731 () Bool)

(assert (=> b!3681612 (= e!2279731 (and tp!1119100 tp!1119099))))

(declare-fun b!3681613 () Bool)

(declare-fun res!1495780 () Bool)

(assert (=> b!3681613 (=> res!1495780 e!2279763)))

(assert (=> b!3681613 (= res!1495780 (isEmpty!23066 suffix!1395))))

(declare-fun b!3681614 () Bool)

(declare-fun tp!1119098 () Bool)

(assert (=> b!3681614 (= e!2279764 (and tp!1119098 (inv!52330 (tag!6654 rule!403)) (inv!52334 (transformation!5850 rule!403)) e!2279731))))

(declare-fun b!3681615 () Bool)

(declare-fun res!1495767 () Bool)

(assert (=> b!3681615 (=> res!1495767 e!2279742)))

(assert (=> b!3681615 (= res!1495767 (not (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589)))))

(declare-fun b!3681616 () Bool)

(assert (=> b!3681616 (= e!2279743 (not e!2279763))))

(declare-fun res!1495770 () Bool)

(assert (=> b!3681616 (=> res!1495770 e!2279763)))

(assert (=> b!3681616 (= res!1495770 (not (matchR!5178 (regex!5850 rule!403) lt!1287575)))))

(declare-fun ruleValid!2114 (LexerInterface!5439 Rule!11500) Bool)

(assert (=> b!3681616 (ruleValid!2114 thiss!23823 rule!403)))

(declare-fun lt!1287593 () Unit!56926)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1268 (LexerInterface!5439 Rule!11500 List!38959) Unit!56926)

(assert (=> b!3681616 (= lt!1287593 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1268 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!266703 () Bool)

(assert (=> bm!266703 (= call!266707 (contains!7768 call!266703 lt!1287555))))

(declare-fun b!3681617 () Bool)

(declare-fun tp!1119087 () Bool)

(assert (=> b!3681617 (= e!2279740 (and e!2279747 tp!1119087))))

(declare-fun b!3681618 () Bool)

(declare-fun tp!1119088 () Bool)

(assert (=> b!3681618 (= e!2279738 (and tp!1119088 (inv!52330 (tag!6654 anOtherTypeRule!33)) (inv!52334 (transformation!5850 anOtherTypeRule!33)) e!2279766))))

(assert (= (and start!345438 res!1495782) b!3681585))

(assert (= (and b!3681585 res!1495765) b!3681589))

(assert (= (and b!3681589 res!1495768) b!3681569))

(assert (= (and b!3681569 res!1495764) b!3681596))

(assert (= (and b!3681596 res!1495772) b!3681570))

(assert (= (and b!3681570 res!1495763) b!3681582))

(assert (= (and b!3681582 res!1495781) b!3681568))

(assert (= (and b!3681568 res!1495778) b!3681610))

(assert (= (and b!3681610 res!1495776) b!3681592))

(assert (= (and b!3681592 res!1495777) b!3681616))

(assert (= (and b!3681616 (not res!1495770)) b!3681613))

(assert (= (and b!3681613 (not res!1495780)) b!3681581))

(assert (= (and b!3681581 (not res!1495779)) b!3681599))

(assert (= (and b!3681599 (not res!1495774)) b!3681593))

(assert (= (and b!3681593 (not res!1495769)) b!3681584))

(assert (= (and b!3681584 res!1495773) b!3681611))

(assert (= (and b!3681611 res!1495783) b!3681583))

(assert (= (and b!3681584 (not res!1495775)) b!3681615))

(assert (= (and b!3681615 (not res!1495767)) b!3681574))

(assert (= (and b!3681574 (not res!1495771)) b!3681601))

(assert (= (and b!3681601 (not res!1495766)) b!3681575))

(assert (= (and b!3681575 c!636846) b!3681565))

(assert (= (and b!3681575 (not c!636846)) b!3681577))

(assert (= (and b!3681575 c!636848) b!3681604))

(assert (= (and b!3681575 (not c!636848)) b!3681600))

(assert (= (and b!3681604 c!636849) b!3681591))

(assert (= (and b!3681604 (not c!636849)) b!3681578))

(assert (= (and b!3681600 c!636845) b!3681608))

(assert (= (and b!3681600 (not c!636845)) b!3681609))

(assert (= (or b!3681591 b!3681608) bm!266701))

(assert (= (or b!3681591 b!3681608) bm!266702))

(assert (= (or b!3681591 b!3681608) bm!266703))

(assert (= (and b!3681575 c!636847) b!3681587))

(assert (= (and b!3681575 (not c!636847)) b!3681594))

(assert (= (and b!3681587 c!636853) b!3681567))

(assert (= (and b!3681587 (not c!636853)) b!3681571))

(assert (= (or b!3681567 b!3681571) bm!266699))

(assert (= (or b!3681567 b!3681571) bm!266700))

(assert (= (or b!3681567 b!3681571) bm!266698))

(assert (= (and b!3681575 c!636844) b!3681566))

(assert (= (and b!3681575 (not c!636844)) b!3681598))

(assert (= (and b!3681575 c!636850) b!3681605))

(assert (= (and b!3681575 (not c!636850)) b!3681573))

(assert (= (and b!3681605 c!636851) b!3681576))

(assert (= (and b!3681605 (not c!636851)) b!3681586))

(assert (= (and b!3681576 res!1495784) b!3681602))

(assert (= (and b!3681605 c!636852) b!3681579))

(assert (= (and b!3681605 (not c!636852)) b!3681580))

(assert (= (and b!3681575 (not res!1495762)) b!3681597))

(assert (= b!3681572 b!3681595))

(assert (= b!3681617 b!3681572))

(assert (= (and start!345438 ((_ is Cons!38835) rules!3307)) b!3681617))

(assert (= (and start!345438 ((_ is Cons!38834) suffix!1395)) b!3681603))

(assert (= b!3681607 b!3681606))

(assert (= b!3681590 b!3681607))

(assert (= start!345438 b!3681590))

(assert (= b!3681614 b!3681612))

(assert (= start!345438 b!3681614))

(assert (= b!3681618 b!3681588))

(assert (= start!345438 b!3681618))

(declare-fun m!4192233 () Bool)

(assert (=> b!3681607 m!4192233))

(declare-fun m!4192235 () Bool)

(assert (=> b!3681607 m!4192235))

(declare-fun m!4192237 () Bool)

(assert (=> b!3681579 m!4192237))

(declare-fun m!4192239 () Bool)

(assert (=> bm!266698 m!4192239))

(declare-fun m!4192241 () Bool)

(assert (=> b!3681571 m!4192241))

(declare-fun m!4192243 () Bool)

(assert (=> b!3681614 m!4192243))

(declare-fun m!4192245 () Bool)

(assert (=> b!3681614 m!4192245))

(declare-fun m!4192247 () Bool)

(assert (=> b!3681611 m!4192247))

(assert (=> b!3681611 m!4192247))

(declare-fun m!4192249 () Bool)

(assert (=> b!3681611 m!4192249))

(assert (=> b!3681611 m!4192249))

(declare-fun m!4192251 () Bool)

(assert (=> b!3681611 m!4192251))

(declare-fun m!4192253 () Bool)

(assert (=> b!3681611 m!4192253))

(declare-fun m!4192255 () Bool)

(assert (=> bm!266700 m!4192255))

(declare-fun m!4192257 () Bool)

(assert (=> bm!266699 m!4192257))

(declare-fun m!4192259 () Bool)

(assert (=> b!3681574 m!4192259))

(declare-fun m!4192261 () Bool)

(assert (=> b!3681574 m!4192261))

(declare-fun m!4192263 () Bool)

(assert (=> b!3681574 m!4192263))

(declare-fun m!4192265 () Bool)

(assert (=> b!3681574 m!4192265))

(assert (=> b!3681574 m!4192263))

(declare-fun m!4192267 () Bool)

(assert (=> b!3681574 m!4192267))

(declare-fun m!4192269 () Bool)

(assert (=> b!3681574 m!4192269))

(declare-fun m!4192271 () Bool)

(assert (=> b!3681599 m!4192271))

(assert (=> b!3681599 m!4192271))

(declare-fun m!4192273 () Bool)

(assert (=> b!3681599 m!4192273))

(declare-fun m!4192275 () Bool)

(assert (=> b!3681587 m!4192275))

(declare-fun m!4192277 () Bool)

(assert (=> b!3681587 m!4192277))

(declare-fun m!4192279 () Bool)

(assert (=> b!3681567 m!4192279))

(declare-fun m!4192281 () Bool)

(assert (=> start!345438 m!4192281))

(declare-fun m!4192283 () Bool)

(assert (=> b!3681581 m!4192283))

(declare-fun m!4192285 () Bool)

(assert (=> b!3681581 m!4192285))

(declare-fun m!4192287 () Bool)

(assert (=> b!3681581 m!4192287))

(declare-fun m!4192289 () Bool)

(assert (=> b!3681572 m!4192289))

(declare-fun m!4192291 () Bool)

(assert (=> b!3681572 m!4192291))

(declare-fun m!4192293 () Bool)

(assert (=> b!3681616 m!4192293))

(declare-fun m!4192295 () Bool)

(assert (=> b!3681616 m!4192295))

(declare-fun m!4192297 () Bool)

(assert (=> b!3681616 m!4192297))

(assert (=> bm!266702 m!4192255))

(declare-fun m!4192299 () Bool)

(assert (=> b!3681593 m!4192299))

(declare-fun m!4192301 () Bool)

(assert (=> b!3681605 m!4192301))

(declare-fun m!4192303 () Bool)

(assert (=> b!3681605 m!4192303))

(declare-fun m!4192305 () Bool)

(assert (=> b!3681605 m!4192305))

(declare-fun m!4192307 () Bool)

(assert (=> bm!266703 m!4192307))

(declare-fun m!4192309 () Bool)

(assert (=> b!3681565 m!4192309))

(declare-fun m!4192311 () Bool)

(assert (=> b!3681575 m!4192311))

(declare-fun m!4192313 () Bool)

(assert (=> b!3681575 m!4192313))

(declare-fun m!4192315 () Bool)

(assert (=> b!3681575 m!4192315))

(declare-fun m!4192317 () Bool)

(assert (=> b!3681575 m!4192317))

(declare-fun m!4192319 () Bool)

(assert (=> b!3681575 m!4192319))

(declare-fun m!4192321 () Bool)

(assert (=> b!3681575 m!4192321))

(assert (=> b!3681575 m!4192313))

(declare-fun m!4192323 () Bool)

(assert (=> b!3681575 m!4192323))

(declare-fun m!4192325 () Bool)

(assert (=> b!3681575 m!4192325))

(declare-fun m!4192327 () Bool)

(assert (=> b!3681575 m!4192327))

(declare-fun m!4192329 () Bool)

(assert (=> b!3681575 m!4192329))

(declare-fun m!4192331 () Bool)

(assert (=> b!3681575 m!4192331))

(declare-fun m!4192333 () Bool)

(assert (=> b!3681569 m!4192333))

(declare-fun m!4192335 () Bool)

(assert (=> b!3681601 m!4192335))

(declare-fun m!4192337 () Bool)

(assert (=> b!3681601 m!4192337))

(declare-fun m!4192339 () Bool)

(assert (=> b!3681601 m!4192339))

(declare-fun m!4192341 () Bool)

(assert (=> b!3681601 m!4192341))

(declare-fun m!4192343 () Bool)

(assert (=> b!3681601 m!4192343))

(declare-fun m!4192345 () Bool)

(assert (=> b!3681601 m!4192345))

(assert (=> b!3681601 m!4192337))

(declare-fun m!4192347 () Bool)

(assert (=> b!3681601 m!4192347))

(declare-fun m!4192349 () Bool)

(assert (=> b!3681610 m!4192349))

(declare-fun m!4192351 () Bool)

(assert (=> b!3681566 m!4192351))

(declare-fun m!4192353 () Bool)

(assert (=> b!3681582 m!4192353))

(declare-fun m!4192355 () Bool)

(assert (=> b!3681582 m!4192355))

(declare-fun m!4192357 () Bool)

(assert (=> b!3681582 m!4192357))

(declare-fun m!4192359 () Bool)

(assert (=> b!3681582 m!4192359))

(declare-fun m!4192361 () Bool)

(assert (=> b!3681568 m!4192361))

(declare-fun m!4192363 () Bool)

(assert (=> b!3681615 m!4192363))

(declare-fun m!4192365 () Bool)

(assert (=> b!3681613 m!4192365))

(declare-fun m!4192367 () Bool)

(assert (=> b!3681585 m!4192367))

(declare-fun m!4192369 () Bool)

(assert (=> b!3681576 m!4192369))

(assert (=> b!3681576 m!4192369))

(declare-fun m!4192371 () Bool)

(assert (=> b!3681576 m!4192371))

(declare-fun m!4192373 () Bool)

(assert (=> b!3681576 m!4192373))

(declare-fun m!4192375 () Bool)

(assert (=> b!3681576 m!4192375))

(declare-fun m!4192377 () Bool)

(assert (=> b!3681576 m!4192377))

(declare-fun m!4192379 () Bool)

(assert (=> b!3681584 m!4192379))

(declare-fun m!4192381 () Bool)

(assert (=> b!3681584 m!4192381))

(assert (=> b!3681584 m!4192247))

(declare-fun m!4192383 () Bool)

(assert (=> b!3681584 m!4192383))

(declare-fun m!4192385 () Bool)

(assert (=> b!3681584 m!4192385))

(declare-fun m!4192387 () Bool)

(assert (=> b!3681584 m!4192387))

(declare-fun m!4192389 () Bool)

(assert (=> b!3681584 m!4192389))

(declare-fun m!4192391 () Bool)

(assert (=> b!3681584 m!4192391))

(declare-fun m!4192393 () Bool)

(assert (=> b!3681584 m!4192393))

(declare-fun m!4192395 () Bool)

(assert (=> b!3681584 m!4192395))

(declare-fun m!4192397 () Bool)

(assert (=> b!3681584 m!4192397))

(declare-fun m!4192399 () Bool)

(assert (=> b!3681584 m!4192399))

(declare-fun m!4192401 () Bool)

(assert (=> b!3681584 m!4192401))

(declare-fun m!4192403 () Bool)

(assert (=> b!3681584 m!4192403))

(declare-fun m!4192405 () Bool)

(assert (=> b!3681584 m!4192405))

(declare-fun m!4192407 () Bool)

(assert (=> b!3681597 m!4192407))

(declare-fun m!4192409 () Bool)

(assert (=> b!3681590 m!4192409))

(declare-fun m!4192411 () Bool)

(assert (=> b!3681596 m!4192411))

(declare-fun m!4192413 () Bool)

(assert (=> b!3681618 m!4192413))

(declare-fun m!4192415 () Bool)

(assert (=> b!3681618 m!4192415))

(declare-fun m!4192417 () Bool)

(assert (=> bm!266701 m!4192417))

(declare-fun m!4192419 () Bool)

(assert (=> b!3681591 m!4192419))

(declare-fun m!4192421 () Bool)

(assert (=> b!3681608 m!4192421))

(declare-fun m!4192423 () Bool)

(assert (=> b!3681589 m!4192423))

(check-sat (not bm!266700) (not bm!266699) (not b_next!98263) (not b!3681585) (not b!3681618) (not b_next!98257) (not b_next!98267) (not b!3681616) (not b!3681605) (not b!3681610) b_and!275057 (not bm!266702) (not b_next!98265) (not b!3681611) b_and!275049 (not b!3681579) (not b!3681566) (not b!3681568) b_and!275047 (not b_next!98271) (not b!3681615) (not b!3681601) b_and!275053 (not bm!266701) (not b!3681582) (not b!3681603) (not b!3681572) (not b_next!98261) (not b!3681590) (not start!345438) (not b!3681569) (not b!3681581) b_and!275051 (not b!3681614) (not b!3681574) tp_is_empty!18301 b_and!275045 (not b!3681596) (not b!3681576) (not b_next!98269) b_and!275055 (not b!3681571) (not b!3681565) (not b!3681575) (not b!3681587) b_and!275043 (not bm!266703) (not b!3681607) (not b!3681617) (not b!3681584) (not b!3681599) (not b!3681597) (not b!3681593) (not b!3681589) (not b!3681591) (not b!3681608) (not b_next!98259) (not b!3681613) (not b!3681567) (not bm!266698))
(check-sat b_and!275057 (not b_next!98265) b_and!275049 b_and!275053 (not b_next!98261) b_and!275051 (not b_next!98263) b_and!275045 b_and!275043 (not b_next!98257) (not b_next!98267) (not b_next!98259) b_and!275047 (not b_next!98271) (not b_next!98269) b_and!275055)
(get-model)

(declare-fun d!1080578 () Bool)

(assert (=> d!1080578 (= (get!12863 lt!1287570) (v!38267 lt!1287570))))

(assert (=> b!3681568 d!1080578))

(declare-fun b!3681629 () Bool)

(declare-fun e!2279775 () Int)

(assert (=> b!3681629 (= e!2279775 (+ 1 (getIndex!518 (t!300714 rules!3307) (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681627 () Bool)

(declare-fun e!2279774 () Int)

(assert (=> b!3681627 (= e!2279774 0)))

(declare-fun d!1080580 () Bool)

(declare-fun lt!1287603 () Int)

(assert (=> d!1080580 (>= lt!1287603 0)))

(assert (=> d!1080580 (= lt!1287603 e!2279774)))

(declare-fun c!636860 () Bool)

(assert (=> d!1080580 (= c!636860 (and ((_ is Cons!38835) rules!3307) (= (h!44255 rules!3307) (rule!8688 (_1!22484 lt!1287573)))))))

(assert (=> d!1080580 (contains!7767 rules!3307 (rule!8688 (_1!22484 lt!1287573)))))

(assert (=> d!1080580 (= (getIndex!518 rules!3307 (rule!8688 (_1!22484 lt!1287573))) lt!1287603)))

(declare-fun b!3681630 () Bool)

(assert (=> b!3681630 (= e!2279775 (- 1))))

(declare-fun b!3681628 () Bool)

(assert (=> b!3681628 (= e!2279774 e!2279775)))

(declare-fun c!636861 () Bool)

(assert (=> b!3681628 (= c!636861 (and ((_ is Cons!38835) rules!3307) (not (= (h!44255 rules!3307) (rule!8688 (_1!22484 lt!1287573))))))))

(assert (= (and d!1080580 c!636860) b!3681627))

(assert (= (and d!1080580 (not c!636860)) b!3681628))

(assert (= (and b!3681628 c!636861) b!3681629))

(assert (= (and b!3681628 (not c!636861)) b!3681630))

(declare-fun m!4192425 () Bool)

(assert (=> b!3681629 m!4192425))

(declare-fun m!4192427 () Bool)

(assert (=> d!1080580 m!4192427))

(assert (=> b!3681605 d!1080580))

(declare-fun b!3681633 () Bool)

(declare-fun e!2279777 () Int)

(assert (=> b!3681633 (= e!2279777 (+ 1 (getIndex!518 (t!300714 rules!3307) rule!403)))))

(declare-fun b!3681631 () Bool)

(declare-fun e!2279776 () Int)

(assert (=> b!3681631 (= e!2279776 0)))

(declare-fun d!1080582 () Bool)

(declare-fun lt!1287604 () Int)

(assert (=> d!1080582 (>= lt!1287604 0)))

(assert (=> d!1080582 (= lt!1287604 e!2279776)))

(declare-fun c!636862 () Bool)

(assert (=> d!1080582 (= c!636862 (and ((_ is Cons!38835) rules!3307) (= (h!44255 rules!3307) rule!403)))))

(assert (=> d!1080582 (contains!7767 rules!3307 rule!403)))

(assert (=> d!1080582 (= (getIndex!518 rules!3307 rule!403) lt!1287604)))

(declare-fun b!3681634 () Bool)

(assert (=> b!3681634 (= e!2279777 (- 1))))

(declare-fun b!3681632 () Bool)

(assert (=> b!3681632 (= e!2279776 e!2279777)))

(declare-fun c!636863 () Bool)

(assert (=> b!3681632 (= c!636863 (and ((_ is Cons!38835) rules!3307) (not (= (h!44255 rules!3307) rule!403))))))

(assert (= (and d!1080582 c!636862) b!3681631))

(assert (= (and d!1080582 (not c!636862)) b!3681632))

(assert (= (and b!3681632 c!636863) b!3681633))

(assert (= (and b!3681632 (not c!636863)) b!3681634))

(declare-fun m!4192429 () Bool)

(assert (=> b!3681633 m!4192429))

(assert (=> d!1080582 m!4192333))

(assert (=> b!3681605 d!1080582))

(declare-fun d!1080588 () Bool)

(assert (=> d!1080588 (= (rule!8688 (_1!22484 lt!1287573)) rule!403)))

(declare-fun lt!1287612 () Unit!56926)

(declare-fun choose!22016 (List!38959 Rule!11500 Rule!11500) Unit!56926)

(assert (=> d!1080588 (= lt!1287612 (choose!22016 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403))))

(assert (=> d!1080588 (contains!7767 rules!3307 (rule!8688 (_1!22484 lt!1287573)))))

(assert (=> d!1080588 (= (lemmaSameIndexThenSameElement!250 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403) lt!1287612)))

(declare-fun bs!573601 () Bool)

(assert (= bs!573601 d!1080588))

(declare-fun m!4192433 () Bool)

(assert (=> bs!573601 m!4192433))

(assert (=> bs!573601 m!4192427))

(assert (=> b!3681605 d!1080588))

(declare-fun d!1080592 () Bool)

(assert (=> d!1080592 (not (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589))))

(declare-fun lt!1287619 () Unit!56926)

(declare-fun choose!22017 (Regex!10609 List!38958 C!21404) Unit!56926)

(assert (=> d!1080592 (= lt!1287619 (choose!22017 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287559))))

(declare-fun validRegex!4858 (Regex!10609) Bool)

(assert (=> d!1080592 (validRegex!4858 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080592 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287559) lt!1287619)))

(declare-fun bs!573603 () Bool)

(assert (= bs!573603 d!1080592))

(assert (=> bs!573603 m!4192363))

(declare-fun m!4192445 () Bool)

(assert (=> bs!573603 m!4192445))

(declare-fun m!4192447 () Bool)

(assert (=> bs!573603 m!4192447))

(assert (=> bm!266699 d!1080592))

(declare-fun d!1080598 () Bool)

(assert (=> d!1080598 (contains!7768 lt!1287589 (head!7904 suffix!1395))))

(declare-fun lt!1287622 () Unit!56926)

(declare-fun choose!22018 (List!38958 List!38958 List!38958 List!38958) Unit!56926)

(assert (=> d!1080598 (= lt!1287622 (choose!22018 lt!1287575 suffix!1395 lt!1287589 lt!1287597))))

(assert (=> d!1080598 (isPrefix!3213 lt!1287589 lt!1287597)))

(assert (=> d!1080598 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!158 lt!1287575 suffix!1395 lt!1287589 lt!1287597) lt!1287622)))

(declare-fun bs!573604 () Bool)

(assert (= bs!573604 d!1080598))

(assert (=> bs!573604 m!4192285))

(assert (=> bs!573604 m!4192285))

(declare-fun m!4192449 () Bool)

(assert (=> bs!573604 m!4192449))

(declare-fun m!4192451 () Bool)

(assert (=> bs!573604 m!4192451))

(assert (=> bs!573604 m!4192381))

(assert (=> b!3681587 d!1080598))

(declare-fun d!1080600 () Bool)

(declare-fun lt!1287627 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5632 (List!38958) (InoxSet C!21404))

(assert (=> d!1080600 (= lt!1287627 (select (content!5632 lt!1287589) lt!1287559))))

(declare-fun e!2279800 () Bool)

(assert (=> d!1080600 (= lt!1287627 e!2279800)))

(declare-fun res!1495813 () Bool)

(assert (=> d!1080600 (=> (not res!1495813) (not e!2279800))))

(assert (=> d!1080600 (= res!1495813 ((_ is Cons!38834) lt!1287589))))

(assert (=> d!1080600 (= (contains!7768 lt!1287589 lt!1287559) lt!1287627)))

(declare-fun b!3681673 () Bool)

(declare-fun e!2279799 () Bool)

(assert (=> b!3681673 (= e!2279800 e!2279799)))

(declare-fun res!1495814 () Bool)

(assert (=> b!3681673 (=> res!1495814 e!2279799)))

(assert (=> b!3681673 (= res!1495814 (= (h!44254 lt!1287589) lt!1287559))))

(declare-fun b!3681674 () Bool)

(assert (=> b!3681674 (= e!2279799 (contains!7768 (t!300713 lt!1287589) lt!1287559))))

(assert (= (and d!1080600 res!1495813) b!3681673))

(assert (= (and b!3681673 (not res!1495814)) b!3681674))

(declare-fun m!4192453 () Bool)

(assert (=> d!1080600 m!4192453))

(declare-fun m!4192455 () Bool)

(assert (=> d!1080600 m!4192455))

(declare-fun m!4192457 () Bool)

(assert (=> b!3681674 m!4192457))

(assert (=> b!3681587 d!1080600))

(declare-fun d!1080602 () Bool)

(assert (=> d!1080602 (not (contains!7768 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287559))))

(declare-fun lt!1287633 () Unit!56926)

(declare-fun choose!22019 (LexerInterface!5439 List!38959 List!38959 Rule!11500 Rule!11500 C!21404) Unit!56926)

(assert (=> d!1080602 (= lt!1287633 (choose!22019 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8688 (_1!22484 lt!1287573)) lt!1287559))))

(assert (=> d!1080602 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080602 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!378 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8688 (_1!22484 lt!1287573)) lt!1287559) lt!1287633)))

(declare-fun bs!573605 () Bool)

(assert (= bs!573605 d!1080602))

(assert (=> bs!573605 m!4192255))

(assert (=> bs!573605 m!4192255))

(declare-fun m!4192485 () Bool)

(assert (=> bs!573605 m!4192485))

(declare-fun m!4192487 () Bool)

(assert (=> bs!573605 m!4192487))

(assert (=> bs!573605 m!4192423))

(assert (=> b!3681567 d!1080602))

(declare-fun d!1080608 () Bool)

(assert (=> d!1080608 (not (matchR!5178 (regex!5850 rule!403) lt!1287575))))

(declare-fun lt!1287637 () Unit!56926)

(declare-fun choose!22020 (LexerInterface!5439 List!38959 Rule!11500 List!38958 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> d!1080608 (= lt!1287637 (choose!22020 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287589 lt!1287597 lt!1287575 rule!403))))

(assert (=> d!1080608 (isPrefix!3213 lt!1287589 lt!1287597)))

(assert (=> d!1080608 (= (lemmaMaxPrefixOutputsMaxPrefix!392 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287589 lt!1287597 lt!1287575 rule!403) lt!1287637)))

(declare-fun bs!573606 () Bool)

(assert (= bs!573606 d!1080608))

(assert (=> bs!573606 m!4192293))

(declare-fun m!4192495 () Bool)

(assert (=> bs!573606 m!4192495))

(assert (=> bs!573606 m!4192381))

(assert (=> b!3681566 d!1080608))

(declare-fun d!1080614 () Bool)

(assert (=> d!1080614 (= (isEmpty!23067 rules!3307) ((_ is Nil!38835) rules!3307))))

(assert (=> b!3681585 d!1080614))

(declare-fun d!1080616 () Bool)

(assert (=> d!1080616 (not (matchR!5178 (regex!5850 rule!403) lt!1287575))))

(declare-fun lt!1287638 () Unit!56926)

(assert (=> d!1080616 (= lt!1287638 (choose!22017 (regex!5850 rule!403) lt!1287575 lt!1287555))))

(assert (=> d!1080616 (validRegex!4858 (regex!5850 rule!403))))

(assert (=> d!1080616 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 rule!403) lt!1287575 lt!1287555) lt!1287638)))

(declare-fun bs!573607 () Bool)

(assert (= bs!573607 d!1080616))

(assert (=> bs!573607 m!4192293))

(declare-fun m!4192503 () Bool)

(assert (=> bs!573607 m!4192503))

(declare-fun m!4192505 () Bool)

(assert (=> bs!573607 m!4192505))

(assert (=> b!3681565 d!1080616))

(declare-fun b!3681748 () Bool)

(declare-fun c!636901 () Bool)

(assert (=> b!3681748 (= c!636901 ((_ is Star!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun e!2279844 () List!38958)

(declare-fun e!2279843 () List!38958)

(assert (=> b!3681748 (= e!2279844 e!2279843)))

(declare-fun b!3681749 () Bool)

(declare-fun e!2279842 () List!38958)

(declare-fun call!266733 () List!38958)

(assert (=> b!3681749 (= e!2279842 call!266733)))

(declare-fun bm!266727 () Bool)

(declare-fun call!266735 () List!38958)

(declare-fun call!266734 () List!38958)

(assert (=> bm!266727 (= call!266735 call!266734)))

(declare-fun call!266732 () List!38958)

(declare-fun c!636902 () Bool)

(declare-fun bm!266728 () Bool)

(assert (=> bm!266728 (= call!266733 (++!9666 (ite c!636902 call!266732 call!266735) (ite c!636902 call!266735 call!266732)))))

(declare-fun b!3681751 () Bool)

(assert (=> b!3681751 (= e!2279843 e!2279842)))

(assert (=> b!3681751 (= c!636902 ((_ is Union!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun bm!266729 () Bool)

(assert (=> bm!266729 (= call!266732 (usedCharacters!1062 (ite c!636902 (regOne!21731 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) (regTwo!21730 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))))

(declare-fun bm!266730 () Bool)

(assert (=> bm!266730 (= call!266734 (usedCharacters!1062 (ite c!636901 (reg!10938 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) (ite c!636902 (regTwo!21731 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) (regOne!21730 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))))

(declare-fun b!3681752 () Bool)

(declare-fun e!2279841 () List!38958)

(assert (=> b!3681752 (= e!2279841 e!2279844)))

(declare-fun c!636903 () Bool)

(assert (=> b!3681752 (= c!636903 ((_ is ElementMatch!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681753 () Bool)

(assert (=> b!3681753 (= e!2279844 (Cons!38834 (c!636854 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) Nil!38834))))

(declare-fun b!3681750 () Bool)

(assert (=> b!3681750 (= e!2279842 call!266733)))

(declare-fun d!1080620 () Bool)

(declare-fun c!636900 () Bool)

(assert (=> d!1080620 (= c!636900 (or ((_ is EmptyExpr!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) ((_ is EmptyLang!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))

(assert (=> d!1080620 (= (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) e!2279841)))

(declare-fun b!3681754 () Bool)

(assert (=> b!3681754 (= e!2279843 call!266734)))

(declare-fun b!3681755 () Bool)

(assert (=> b!3681755 (= e!2279841 Nil!38834)))

(assert (= (and d!1080620 c!636900) b!3681755))

(assert (= (and d!1080620 (not c!636900)) b!3681752))

(assert (= (and b!3681752 c!636903) b!3681753))

(assert (= (and b!3681752 (not c!636903)) b!3681748))

(assert (= (and b!3681748 c!636901) b!3681754))

(assert (= (and b!3681748 (not c!636901)) b!3681751))

(assert (= (and b!3681751 c!636902) b!3681749))

(assert (= (and b!3681751 (not c!636902)) b!3681750))

(assert (= (or b!3681749 b!3681750) bm!266729))

(assert (= (or b!3681749 b!3681750) bm!266727))

(assert (= (or b!3681749 b!3681750) bm!266728))

(assert (= (or b!3681754 bm!266727) bm!266730))

(declare-fun m!4192521 () Bool)

(assert (=> bm!266728 m!4192521))

(declare-fun m!4192523 () Bool)

(assert (=> bm!266729 m!4192523))

(declare-fun m!4192525 () Bool)

(assert (=> bm!266730 m!4192525))

(assert (=> bm!266702 d!1080620))

(declare-fun b!3681765 () Bool)

(declare-fun res!1495844 () Bool)

(declare-fun e!2279853 () Bool)

(assert (=> b!3681765 (=> (not res!1495844) (not e!2279853))))

(assert (=> b!3681765 (= res!1495844 (= (head!7904 lt!1287589) (head!7904 lt!1287540)))))

(declare-fun b!3681766 () Bool)

(declare-fun tail!5695 (List!38958) List!38958)

(assert (=> b!3681766 (= e!2279853 (isPrefix!3213 (tail!5695 lt!1287589) (tail!5695 lt!1287540)))))

(declare-fun b!3681764 () Bool)

(declare-fun e!2279851 () Bool)

(assert (=> b!3681764 (= e!2279851 e!2279853)))

(declare-fun res!1495843 () Bool)

(assert (=> b!3681764 (=> (not res!1495843) (not e!2279853))))

(assert (=> b!3681764 (= res!1495843 (not ((_ is Nil!38834) lt!1287540)))))

(declare-fun d!1080628 () Bool)

(declare-fun e!2279852 () Bool)

(assert (=> d!1080628 e!2279852))

(declare-fun res!1495845 () Bool)

(assert (=> d!1080628 (=> res!1495845 e!2279852)))

(declare-fun lt!1287648 () Bool)

(assert (=> d!1080628 (= res!1495845 (not lt!1287648))))

(assert (=> d!1080628 (= lt!1287648 e!2279851)))

(declare-fun res!1495846 () Bool)

(assert (=> d!1080628 (=> res!1495846 e!2279851)))

(assert (=> d!1080628 (= res!1495846 ((_ is Nil!38834) lt!1287589))))

(assert (=> d!1080628 (= (isPrefix!3213 lt!1287589 lt!1287540) lt!1287648)))

(declare-fun b!3681767 () Bool)

(assert (=> b!3681767 (= e!2279852 (>= (size!29697 lt!1287540) (size!29697 lt!1287589)))))

(assert (= (and d!1080628 (not res!1495846)) b!3681764))

(assert (= (and b!3681764 res!1495843) b!3681765))

(assert (= (and b!3681765 res!1495844) b!3681766))

(assert (= (and d!1080628 (not res!1495845)) b!3681767))

(assert (=> b!3681765 m!4192323))

(declare-fun m!4192527 () Bool)

(assert (=> b!3681765 m!4192527))

(declare-fun m!4192529 () Bool)

(assert (=> b!3681766 m!4192529))

(declare-fun m!4192531 () Bool)

(assert (=> b!3681766 m!4192531))

(assert (=> b!3681766 m!4192529))

(assert (=> b!3681766 m!4192531))

(declare-fun m!4192533 () Bool)

(assert (=> b!3681766 m!4192533))

(declare-fun m!4192535 () Bool)

(assert (=> b!3681767 m!4192535))

(assert (=> b!3681767 m!4192341))

(assert (=> b!3681584 d!1080628))

(declare-fun b!3681769 () Bool)

(declare-fun res!1495848 () Bool)

(declare-fun e!2279856 () Bool)

(assert (=> b!3681769 (=> (not res!1495848) (not e!2279856))))

(assert (=> b!3681769 (= res!1495848 (= (head!7904 lt!1287575) (head!7904 lt!1287597)))))

(declare-fun b!3681770 () Bool)

(assert (=> b!3681770 (= e!2279856 (isPrefix!3213 (tail!5695 lt!1287575) (tail!5695 lt!1287597)))))

(declare-fun b!3681768 () Bool)

(declare-fun e!2279854 () Bool)

(assert (=> b!3681768 (= e!2279854 e!2279856)))

(declare-fun res!1495847 () Bool)

(assert (=> b!3681768 (=> (not res!1495847) (not e!2279856))))

(assert (=> b!3681768 (= res!1495847 (not ((_ is Nil!38834) lt!1287597)))))

(declare-fun d!1080630 () Bool)

(declare-fun e!2279855 () Bool)

(assert (=> d!1080630 e!2279855))

(declare-fun res!1495849 () Bool)

(assert (=> d!1080630 (=> res!1495849 e!2279855)))

(declare-fun lt!1287649 () Bool)

(assert (=> d!1080630 (= res!1495849 (not lt!1287649))))

(assert (=> d!1080630 (= lt!1287649 e!2279854)))

(declare-fun res!1495850 () Bool)

(assert (=> d!1080630 (=> res!1495850 e!2279854)))

(assert (=> d!1080630 (= res!1495850 ((_ is Nil!38834) lt!1287575))))

(assert (=> d!1080630 (= (isPrefix!3213 lt!1287575 lt!1287597) lt!1287649)))

(declare-fun b!3681771 () Bool)

(assert (=> b!3681771 (= e!2279855 (>= (size!29697 lt!1287597) (size!29697 lt!1287575)))))

(assert (= (and d!1080630 (not res!1495850)) b!3681768))

(assert (= (and b!3681768 res!1495847) b!3681769))

(assert (= (and b!3681769 res!1495848) b!3681770))

(assert (= (and d!1080630 (not res!1495849)) b!3681771))

(declare-fun m!4192537 () Bool)

(assert (=> b!3681769 m!4192537))

(declare-fun m!4192539 () Bool)

(assert (=> b!3681769 m!4192539))

(declare-fun m!4192541 () Bool)

(assert (=> b!3681770 m!4192541))

(declare-fun m!4192543 () Bool)

(assert (=> b!3681770 m!4192543))

(assert (=> b!3681770 m!4192541))

(assert (=> b!3681770 m!4192543))

(declare-fun m!4192545 () Bool)

(assert (=> b!3681770 m!4192545))

(declare-fun m!4192547 () Bool)

(assert (=> b!3681771 m!4192547))

(assert (=> b!3681771 m!4192327))

(assert (=> b!3681584 d!1080630))

(declare-fun d!1080632 () Bool)

(declare-fun lt!1287652 () BalanceConc!23392)

(assert (=> d!1080632 (= (list!14436 lt!1287652) (originalCharacters!6564 (_1!22484 lt!1287573)))))

(declare-fun dynLambda!17027 (Int TokenValue!6080) BalanceConc!23392)

(assert (=> d!1080632 (= lt!1287652 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (value!187185 (_1!22484 lt!1287573))))))

(assert (=> d!1080632 (= (charsOf!3864 (_1!22484 lt!1287573)) lt!1287652)))

(declare-fun b_lambda!109353 () Bool)

(assert (=> (not b_lambda!109353) (not d!1080632)))

(declare-fun tb!213517 () Bool)

(declare-fun t!300724 () Bool)

(assert (=> (and b!3681612 (= (toChars!8005 (transformation!5850 rule!403)) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300724) tb!213517))

(declare-fun b!3681776 () Bool)

(declare-fun e!2279859 () Bool)

(declare-fun tp!1119106 () Bool)

(declare-fun inv!52337 (Conc!11889) Bool)

(assert (=> b!3681776 (= e!2279859 (and (inv!52337 (c!636855 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (value!187185 (_1!22484 lt!1287573))))) tp!1119106))))

(declare-fun result!259784 () Bool)

(declare-fun inv!52338 (BalanceConc!23392) Bool)

(assert (=> tb!213517 (= result!259784 (and (inv!52338 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (value!187185 (_1!22484 lt!1287573)))) e!2279859))))

(assert (= tb!213517 b!3681776))

(declare-fun m!4192549 () Bool)

(assert (=> b!3681776 m!4192549))

(declare-fun m!4192551 () Bool)

(assert (=> tb!213517 m!4192551))

(assert (=> d!1080632 t!300724))

(declare-fun b_and!275067 () Bool)

(assert (= b_and!275045 (and (=> t!300724 result!259784) b_and!275067)))

(declare-fun t!300726 () Bool)

(declare-fun tb!213519 () Bool)

(assert (=> (and b!3681606 (= (toChars!8005 (transformation!5850 (rule!8688 token!511))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300726) tb!213519))

(declare-fun result!259788 () Bool)

(assert (= result!259788 result!259784))

(assert (=> d!1080632 t!300726))

(declare-fun b_and!275069 () Bool)

(assert (= b_and!275049 (and (=> t!300726 result!259788) b_and!275069)))

(declare-fun t!300728 () Bool)

(declare-fun tb!213521 () Bool)

(assert (=> (and b!3681595 (= (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300728) tb!213521))

(declare-fun result!259790 () Bool)

(assert (= result!259790 result!259784))

(assert (=> d!1080632 t!300728))

(declare-fun b_and!275071 () Bool)

(assert (= b_and!275053 (and (=> t!300728 result!259790) b_and!275071)))

(declare-fun tb!213523 () Bool)

(declare-fun t!300730 () Bool)

(assert (=> (and b!3681588 (= (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300730) tb!213523))

(declare-fun result!259792 () Bool)

(assert (= result!259792 result!259784))

(assert (=> d!1080632 t!300730))

(declare-fun b_and!275073 () Bool)

(assert (= b_and!275057 (and (=> t!300730 result!259792) b_and!275073)))

(declare-fun m!4192553 () Bool)

(assert (=> d!1080632 m!4192553))

(declare-fun m!4192555 () Bool)

(assert (=> d!1080632 m!4192555))

(assert (=> b!3681584 d!1080632))

(declare-fun bm!266733 () Bool)

(declare-fun call!266738 () Option!8328)

(assert (=> bm!266733 (= call!266738 (maxPrefixOneRule!2111 thiss!23823 (h!44255 rules!3307) lt!1287597))))

(declare-fun b!3681813 () Bool)

(declare-fun e!2279874 () Option!8328)

(assert (=> b!3681813 (= e!2279874 call!266738)))

(declare-fun b!3681814 () Bool)

(declare-fun res!1495880 () Bool)

(declare-fun e!2279876 () Bool)

(assert (=> b!3681814 (=> (not res!1495880) (not e!2279876))))

(declare-fun lt!1287673 () Option!8328)

(assert (=> b!3681814 (= res!1495880 (< (size!29697 (_2!22484 (get!12863 lt!1287673))) (size!29697 lt!1287597)))))

(declare-fun d!1080634 () Bool)

(declare-fun e!2279875 () Bool)

(assert (=> d!1080634 e!2279875))

(declare-fun res!1495883 () Bool)

(assert (=> d!1080634 (=> res!1495883 e!2279875)))

(declare-fun isEmpty!23068 (Option!8328) Bool)

(assert (=> d!1080634 (= res!1495883 (isEmpty!23068 lt!1287673))))

(assert (=> d!1080634 (= lt!1287673 e!2279874)))

(declare-fun c!636908 () Bool)

(assert (=> d!1080634 (= c!636908 (and ((_ is Cons!38835) rules!3307) ((_ is Nil!38835) (t!300714 rules!3307))))))

(declare-fun lt!1287675 () Unit!56926)

(declare-fun lt!1287676 () Unit!56926)

(assert (=> d!1080634 (= lt!1287675 lt!1287676)))

(assert (=> d!1080634 (isPrefix!3213 lt!1287597 lt!1287597)))

(declare-fun lemmaIsPrefixRefl!2019 (List!38958 List!38958) Unit!56926)

(assert (=> d!1080634 (= lt!1287676 (lemmaIsPrefixRefl!2019 lt!1287597 lt!1287597))))

(declare-fun rulesValidInductive!2082 (LexerInterface!5439 List!38959) Bool)

(assert (=> d!1080634 (rulesValidInductive!2082 thiss!23823 rules!3307)))

(assert (=> d!1080634 (= (maxPrefix!2973 thiss!23823 rules!3307 lt!1287597) lt!1287673)))

(declare-fun b!3681815 () Bool)

(assert (=> b!3681815 (= e!2279875 e!2279876)))

(declare-fun res!1495885 () Bool)

(assert (=> b!3681815 (=> (not res!1495885) (not e!2279876))))

(assert (=> b!3681815 (= res!1495885 (isDefined!6560 lt!1287673))))

(declare-fun b!3681816 () Bool)

(assert (=> b!3681816 (= e!2279876 (contains!7767 rules!3307 (rule!8688 (_1!22484 (get!12863 lt!1287673)))))))

(declare-fun b!3681817 () Bool)

(declare-fun res!1495884 () Bool)

(assert (=> b!3681817 (=> (not res!1495884) (not e!2279876))))

(assert (=> b!3681817 (= res!1495884 (= (value!187185 (_1!22484 (get!12863 lt!1287673))) (apply!9352 (transformation!5850 (rule!8688 (_1!22484 (get!12863 lt!1287673)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287673)))))))))

(declare-fun b!3681818 () Bool)

(declare-fun res!1495879 () Bool)

(assert (=> b!3681818 (=> (not res!1495879) (not e!2279876))))

(assert (=> b!3681818 (= res!1495879 (= (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287673)))) (originalCharacters!6564 (_1!22484 (get!12863 lt!1287673)))))))

(declare-fun b!3681819 () Bool)

(declare-fun lt!1287674 () Option!8328)

(declare-fun lt!1287677 () Option!8328)

(assert (=> b!3681819 (= e!2279874 (ite (and ((_ is None!8327) lt!1287674) ((_ is None!8327) lt!1287677)) None!8327 (ite ((_ is None!8327) lt!1287677) lt!1287674 (ite ((_ is None!8327) lt!1287674) lt!1287677 (ite (>= (size!29695 (_1!22484 (v!38267 lt!1287674))) (size!29695 (_1!22484 (v!38267 lt!1287677)))) lt!1287674 lt!1287677)))))))

(assert (=> b!3681819 (= lt!1287674 call!266738)))

(assert (=> b!3681819 (= lt!1287677 (maxPrefix!2973 thiss!23823 (t!300714 rules!3307) lt!1287597))))

(declare-fun b!3681820 () Bool)

(declare-fun res!1495881 () Bool)

(assert (=> b!3681820 (=> (not res!1495881) (not e!2279876))))

(assert (=> b!3681820 (= res!1495881 (= (++!9666 (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287673)))) (_2!22484 (get!12863 lt!1287673))) lt!1287597))))

(declare-fun b!3681821 () Bool)

(declare-fun res!1495882 () Bool)

(assert (=> b!3681821 (=> (not res!1495882) (not e!2279876))))

(assert (=> b!3681821 (= res!1495882 (matchR!5178 (regex!5850 (rule!8688 (_1!22484 (get!12863 lt!1287673)))) (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287673))))))))

(assert (= (and d!1080634 c!636908) b!3681813))

(assert (= (and d!1080634 (not c!636908)) b!3681819))

(assert (= (or b!3681813 b!3681819) bm!266733))

(assert (= (and d!1080634 (not res!1495883)) b!3681815))

(assert (= (and b!3681815 res!1495885) b!3681818))

(assert (= (and b!3681818 res!1495879) b!3681814))

(assert (= (and b!3681814 res!1495880) b!3681820))

(assert (= (and b!3681820 res!1495881) b!3681817))

(assert (= (and b!3681817 res!1495884) b!3681821))

(assert (= (and b!3681821 res!1495882) b!3681816))

(declare-fun m!4192557 () Bool)

(assert (=> b!3681821 m!4192557))

(declare-fun m!4192559 () Bool)

(assert (=> b!3681821 m!4192559))

(assert (=> b!3681821 m!4192559))

(declare-fun m!4192561 () Bool)

(assert (=> b!3681821 m!4192561))

(assert (=> b!3681821 m!4192561))

(declare-fun m!4192563 () Bool)

(assert (=> b!3681821 m!4192563))

(declare-fun m!4192565 () Bool)

(assert (=> b!3681815 m!4192565))

(assert (=> b!3681817 m!4192557))

(declare-fun m!4192567 () Bool)

(assert (=> b!3681817 m!4192567))

(assert (=> b!3681817 m!4192567))

(declare-fun m!4192569 () Bool)

(assert (=> b!3681817 m!4192569))

(declare-fun m!4192571 () Bool)

(assert (=> b!3681819 m!4192571))

(declare-fun m!4192573 () Bool)

(assert (=> d!1080634 m!4192573))

(declare-fun m!4192575 () Bool)

(assert (=> d!1080634 m!4192575))

(declare-fun m!4192577 () Bool)

(assert (=> d!1080634 m!4192577))

(declare-fun m!4192579 () Bool)

(assert (=> d!1080634 m!4192579))

(declare-fun m!4192581 () Bool)

(assert (=> bm!266733 m!4192581))

(assert (=> b!3681814 m!4192557))

(declare-fun m!4192583 () Bool)

(assert (=> b!3681814 m!4192583))

(assert (=> b!3681814 m!4192547))

(assert (=> b!3681820 m!4192557))

(assert (=> b!3681820 m!4192559))

(assert (=> b!3681820 m!4192559))

(assert (=> b!3681820 m!4192561))

(assert (=> b!3681820 m!4192561))

(declare-fun m!4192585 () Bool)

(assert (=> b!3681820 m!4192585))

(assert (=> b!3681816 m!4192557))

(declare-fun m!4192587 () Bool)

(assert (=> b!3681816 m!4192587))

(assert (=> b!3681818 m!4192557))

(assert (=> b!3681818 m!4192559))

(assert (=> b!3681818 m!4192559))

(assert (=> b!3681818 m!4192561))

(assert (=> b!3681584 d!1080634))

(declare-fun b!3681839 () Bool)

(declare-fun e!2279886 () List!38958)

(assert (=> b!3681839 (= e!2279886 (_2!22484 lt!1287573))))

(declare-fun b!3681841 () Bool)

(declare-fun res!1495897 () Bool)

(declare-fun e!2279885 () Bool)

(assert (=> b!3681841 (=> (not res!1495897) (not e!2279885))))

(declare-fun lt!1287685 () List!38958)

(assert (=> b!3681841 (= res!1495897 (= (size!29697 lt!1287685) (+ (size!29697 lt!1287589) (size!29697 (_2!22484 lt!1287573)))))))

(declare-fun b!3681840 () Bool)

(assert (=> b!3681840 (= e!2279886 (Cons!38834 (h!44254 lt!1287589) (++!9666 (t!300713 lt!1287589) (_2!22484 lt!1287573))))))

(declare-fun d!1080636 () Bool)

(assert (=> d!1080636 e!2279885))

(declare-fun res!1495898 () Bool)

(assert (=> d!1080636 (=> (not res!1495898) (not e!2279885))))

(assert (=> d!1080636 (= res!1495898 (= (content!5632 lt!1287685) ((_ map or) (content!5632 lt!1287589) (content!5632 (_2!22484 lt!1287573)))))))

(assert (=> d!1080636 (= lt!1287685 e!2279886)))

(declare-fun c!636912 () Bool)

(assert (=> d!1080636 (= c!636912 ((_ is Nil!38834) lt!1287589))))

(assert (=> d!1080636 (= (++!9666 lt!1287589 (_2!22484 lt!1287573)) lt!1287685)))

(declare-fun b!3681842 () Bool)

(assert (=> b!3681842 (= e!2279885 (or (not (= (_2!22484 lt!1287573) Nil!38834)) (= lt!1287685 lt!1287589)))))

(assert (= (and d!1080636 c!636912) b!3681839))

(assert (= (and d!1080636 (not c!636912)) b!3681840))

(assert (= (and d!1080636 res!1495898) b!3681841))

(assert (= (and b!3681841 res!1495897) b!3681842))

(declare-fun m!4192631 () Bool)

(assert (=> b!3681841 m!4192631))

(assert (=> b!3681841 m!4192341))

(declare-fun m!4192633 () Bool)

(assert (=> b!3681841 m!4192633))

(declare-fun m!4192635 () Bool)

(assert (=> b!3681840 m!4192635))

(declare-fun m!4192637 () Bool)

(assert (=> d!1080636 m!4192637))

(assert (=> d!1080636 m!4192453))

(declare-fun m!4192639 () Bool)

(assert (=> d!1080636 m!4192639))

(assert (=> b!3681584 d!1080636))

(declare-fun d!1080640 () Bool)

(declare-fun list!14437 (Conc!11889) List!38958)

(assert (=> d!1080640 (= (list!14436 lt!1287546) (list!14437 (c!636855 lt!1287546)))))

(declare-fun bs!573610 () Bool)

(assert (= bs!573610 d!1080640))

(declare-fun m!4192641 () Bool)

(assert (=> bs!573610 m!4192641))

(assert (=> b!3681584 d!1080640))

(declare-fun d!1080642 () Bool)

(declare-fun e!2279889 () Bool)

(assert (=> d!1080642 e!2279889))

(declare-fun res!1495903 () Bool)

(assert (=> d!1080642 (=> (not res!1495903) (not e!2279889))))

(assert (=> d!1080642 (= res!1495903 (isDefined!6561 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 (_1!22484 lt!1287573))))))))

(declare-fun lt!1287688 () Unit!56926)

(declare-fun choose!22023 (LexerInterface!5439 List!38959 List!38958 Token!11066) Unit!56926)

(assert (=> d!1080642 (= lt!1287688 (choose!22023 thiss!23823 rules!3307 lt!1287597 (_1!22484 lt!1287573)))))

(assert (=> d!1080642 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080642 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1454 thiss!23823 rules!3307 lt!1287597 (_1!22484 lt!1287573)) lt!1287688)))

(declare-fun b!3681847 () Bool)

(declare-fun res!1495904 () Bool)

(assert (=> b!3681847 (=> (not res!1495904) (not e!2279889))))

(assert (=> b!3681847 (= res!1495904 (matchR!5178 (regex!5850 (get!12864 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))) (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))))))

(declare-fun b!3681848 () Bool)

(assert (=> b!3681848 (= e!2279889 (= (rule!8688 (_1!22484 lt!1287573)) (get!12864 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))))))

(assert (= (and d!1080642 res!1495903) b!3681847))

(assert (= (and b!3681847 res!1495904) b!3681848))

(assert (=> d!1080642 m!4192395))

(assert (=> d!1080642 m!4192395))

(declare-fun m!4192643 () Bool)

(assert (=> d!1080642 m!4192643))

(declare-fun m!4192645 () Bool)

(assert (=> d!1080642 m!4192645))

(assert (=> d!1080642 m!4192423))

(assert (=> b!3681847 m!4192395))

(declare-fun m!4192647 () Bool)

(assert (=> b!3681847 m!4192647))

(assert (=> b!3681847 m!4192249))

(declare-fun m!4192649 () Bool)

(assert (=> b!3681847 m!4192649))

(assert (=> b!3681847 m!4192395))

(assert (=> b!3681847 m!4192247))

(assert (=> b!3681847 m!4192249))

(assert (=> b!3681847 m!4192247))

(assert (=> b!3681848 m!4192395))

(assert (=> b!3681848 m!4192395))

(assert (=> b!3681848 m!4192647))

(assert (=> b!3681584 d!1080642))

(declare-fun d!1080644 () Bool)

(assert (=> d!1080644 (isPrefix!3213 lt!1287575 (++!9666 lt!1287575 suffix!1395))))

(declare-fun lt!1287694 () Unit!56926)

(declare-fun choose!22025 (List!38958 List!38958) Unit!56926)

(assert (=> d!1080644 (= lt!1287694 (choose!22025 lt!1287575 suffix!1395))))

(assert (=> d!1080644 (= (lemmaConcatTwoListThenFirstIsPrefix!2132 lt!1287575 suffix!1395) lt!1287694)))

(declare-fun bs!573612 () Bool)

(assert (= bs!573612 d!1080644))

(assert (=> bs!573612 m!4192385))

(assert (=> bs!573612 m!4192385))

(declare-fun m!4192653 () Bool)

(assert (=> bs!573612 m!4192653))

(declare-fun m!4192655 () Bool)

(assert (=> bs!573612 m!4192655))

(assert (=> b!3681584 d!1080644))

(declare-fun b!3681899 () Bool)

(declare-fun e!2279922 () Unit!56926)

(declare-fun Unit!56946 () Unit!56926)

(assert (=> b!3681899 (= e!2279922 Unit!56946)))

(declare-fun lt!1287763 () List!38958)

(assert (=> b!3681899 (= lt!1287763 (++!9666 lt!1287575 suffix!1395))))

(declare-fun lt!1287753 () Unit!56926)

(declare-fun lt!1287765 () Token!11066)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!583 (LexerInterface!5439 Rule!11500 List!38959 List!38958) Unit!56926)

(assert (=> b!3681899 (= lt!1287753 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!583 thiss!23823 (rule!8688 lt!1287765) rules!3307 lt!1287763))))

(assert (=> b!3681899 (isEmpty!23068 (maxPrefixOneRule!2111 thiss!23823 (rule!8688 lt!1287765) lt!1287763))))

(declare-fun lt!1287762 () Unit!56926)

(assert (=> b!3681899 (= lt!1287762 lt!1287753)))

(declare-fun lt!1287764 () List!38958)

(assert (=> b!3681899 (= lt!1287764 (list!14436 (charsOf!3864 lt!1287765)))))

(declare-fun lt!1287751 () Unit!56926)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!571 (LexerInterface!5439 Rule!11500 List!38958 List!38958) Unit!56926)

(assert (=> b!3681899 (= lt!1287751 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!571 thiss!23823 (rule!8688 lt!1287765) lt!1287764 (++!9666 lt!1287575 suffix!1395)))))

(assert (=> b!3681899 (not (matchR!5178 (regex!5850 (rule!8688 lt!1287765)) lt!1287764))))

(declare-fun lt!1287754 () Unit!56926)

(assert (=> b!3681899 (= lt!1287754 lt!1287751)))

(assert (=> b!3681899 false))

(declare-fun d!1080648 () Bool)

(assert (=> d!1080648 (isDefined!6560 (maxPrefix!2973 thiss!23823 rules!3307 (++!9666 lt!1287575 suffix!1395)))))

(declare-fun lt!1287757 () Unit!56926)

(assert (=> d!1080648 (= lt!1287757 e!2279922)))

(declare-fun c!636926 () Bool)

(assert (=> d!1080648 (= c!636926 (isEmpty!23068 (maxPrefix!2973 thiss!23823 rules!3307 (++!9666 lt!1287575 suffix!1395))))))

(declare-fun lt!1287755 () Unit!56926)

(declare-fun lt!1287760 () Unit!56926)

(assert (=> d!1080648 (= lt!1287755 lt!1287760)))

(declare-fun e!2279921 () Bool)

(assert (=> d!1080648 e!2279921))

(declare-fun res!1495927 () Bool)

(assert (=> d!1080648 (=> (not res!1495927) (not e!2279921))))

(assert (=> d!1080648 (= res!1495927 (isDefined!6561 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 lt!1287765)))))))

(assert (=> d!1080648 (= lt!1287760 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1454 thiss!23823 rules!3307 lt!1287575 lt!1287765))))

(declare-fun lt!1287750 () Unit!56926)

(declare-fun lt!1287756 () Unit!56926)

(assert (=> d!1080648 (= lt!1287750 lt!1287756)))

(declare-fun lt!1287758 () List!38958)

(assert (=> d!1080648 (isPrefix!3213 lt!1287758 (++!9666 lt!1287575 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!547 (List!38958 List!38958 List!38958) Unit!56926)

(assert (=> d!1080648 (= lt!1287756 (lemmaPrefixStaysPrefixWhenAddingToSuffix!547 lt!1287758 lt!1287575 suffix!1395))))

(assert (=> d!1080648 (= lt!1287758 (list!14436 (charsOf!3864 lt!1287765)))))

(declare-fun lt!1287749 () Unit!56926)

(declare-fun lt!1287759 () Unit!56926)

(assert (=> d!1080648 (= lt!1287749 lt!1287759)))

(declare-fun lt!1287752 () List!38958)

(declare-fun lt!1287761 () List!38958)

(assert (=> d!1080648 (isPrefix!3213 lt!1287752 (++!9666 lt!1287752 lt!1287761))))

(assert (=> d!1080648 (= lt!1287759 (lemmaConcatTwoListThenFirstIsPrefix!2132 lt!1287752 lt!1287761))))

(assert (=> d!1080648 (= lt!1287761 (_2!22484 (get!12863 (maxPrefix!2973 thiss!23823 rules!3307 lt!1287575))))))

(assert (=> d!1080648 (= lt!1287752 (list!14436 (charsOf!3864 lt!1287765)))))

(declare-datatypes ((List!38960 0))(
  ( (Nil!38836) (Cons!38836 (h!44256 Token!11066) (t!300855 List!38960)) )
))
(declare-fun head!7905 (List!38960) Token!11066)

(declare-datatypes ((IArray!23785 0))(
  ( (IArray!23786 (innerList!11950 List!38960)) )
))
(declare-datatypes ((Conc!11890 0))(
  ( (Node!11890 (left!30305 Conc!11890) (right!30635 Conc!11890) (csize!24010 Int) (cheight!12101 Int)) (Leaf!18426 (xs!15092 IArray!23785) (csize!24011 Int)) (Empty!11890) )
))
(declare-datatypes ((BalanceConc!23394 0))(
  ( (BalanceConc!23395 (c!637028 Conc!11890)) )
))
(declare-fun list!14438 (BalanceConc!23394) List!38960)

(declare-datatypes ((tuple2!38704 0))(
  ( (tuple2!38705 (_1!22486 BalanceConc!23394) (_2!22486 BalanceConc!23392)) )
))
(declare-fun lex!2579 (LexerInterface!5439 List!38959 BalanceConc!23392) tuple2!38704)

(assert (=> d!1080648 (= lt!1287765 (head!7905 (list!14438 (_1!22486 (lex!2579 thiss!23823 rules!3307 (seqFromList!4399 lt!1287575))))))))

(assert (=> d!1080648 (not (isEmpty!23067 rules!3307))))

(assert (=> d!1080648 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1117 thiss!23823 rules!3307 lt!1287575 suffix!1395) lt!1287757)))

(declare-fun b!3681897 () Bool)

(declare-fun res!1495928 () Bool)

(assert (=> b!3681897 (=> (not res!1495928) (not e!2279921))))

(assert (=> b!3681897 (= res!1495928 (matchR!5178 (regex!5850 (get!12864 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 lt!1287765))))) (list!14436 (charsOf!3864 lt!1287765))))))

(declare-fun b!3681900 () Bool)

(declare-fun Unit!56947 () Unit!56926)

(assert (=> b!3681900 (= e!2279922 Unit!56947)))

(declare-fun b!3681898 () Bool)

(assert (=> b!3681898 (= e!2279921 (= (rule!8688 lt!1287765) (get!12864 (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 lt!1287765))))))))

(assert (= (and d!1080648 res!1495927) b!3681897))

(assert (= (and b!3681897 res!1495928) b!3681898))

(assert (= (and d!1080648 c!636926) b!3681899))

(assert (= (and d!1080648 (not c!636926)) b!3681900))

(declare-fun m!4192705 () Bool)

(assert (=> b!3681899 m!4192705))

(declare-fun m!4192707 () Bool)

(assert (=> b!3681899 m!4192707))

(declare-fun m!4192709 () Bool)

(assert (=> b!3681899 m!4192709))

(declare-fun m!4192711 () Bool)

(assert (=> b!3681899 m!4192711))

(assert (=> b!3681899 m!4192385))

(declare-fun m!4192713 () Bool)

(assert (=> b!3681899 m!4192713))

(assert (=> b!3681899 m!4192385))

(assert (=> b!3681899 m!4192707))

(assert (=> b!3681899 m!4192705))

(declare-fun m!4192715 () Bool)

(assert (=> b!3681899 m!4192715))

(declare-fun m!4192717 () Bool)

(assert (=> b!3681899 m!4192717))

(assert (=> d!1080648 m!4192355))

(assert (=> d!1080648 m!4192355))

(declare-fun m!4192719 () Bool)

(assert (=> d!1080648 m!4192719))

(declare-fun m!4192721 () Bool)

(assert (=> d!1080648 m!4192721))

(assert (=> d!1080648 m!4192313))

(assert (=> d!1080648 m!4192367))

(declare-fun m!4192723 () Bool)

(assert (=> d!1080648 m!4192723))

(declare-fun m!4192725 () Bool)

(assert (=> d!1080648 m!4192725))

(assert (=> d!1080648 m!4192721))

(declare-fun m!4192727 () Bool)

(assert (=> d!1080648 m!4192727))

(assert (=> d!1080648 m!4192385))

(declare-fun m!4192729 () Bool)

(assert (=> d!1080648 m!4192729))

(declare-fun m!4192731 () Bool)

(assert (=> d!1080648 m!4192731))

(assert (=> d!1080648 m!4192723))

(assert (=> d!1080648 m!4192705))

(assert (=> d!1080648 m!4192715))

(declare-fun m!4192733 () Bool)

(assert (=> d!1080648 m!4192733))

(assert (=> d!1080648 m!4192733))

(declare-fun m!4192735 () Bool)

(assert (=> d!1080648 m!4192735))

(declare-fun m!4192737 () Bool)

(assert (=> d!1080648 m!4192737))

(assert (=> d!1080648 m!4192705))

(assert (=> d!1080648 m!4192729))

(declare-fun m!4192739 () Bool)

(assert (=> d!1080648 m!4192739))

(declare-fun m!4192741 () Bool)

(assert (=> d!1080648 m!4192741))

(assert (=> d!1080648 m!4192385))

(assert (=> d!1080648 m!4192313))

(declare-fun m!4192743 () Bool)

(assert (=> d!1080648 m!4192743))

(assert (=> d!1080648 m!4192385))

(declare-fun m!4192745 () Bool)

(assert (=> d!1080648 m!4192745))

(assert (=> d!1080648 m!4192729))

(declare-fun m!4192747 () Bool)

(assert (=> d!1080648 m!4192747))

(assert (=> b!3681897 m!4192733))

(assert (=> b!3681897 m!4192705))

(assert (=> b!3681897 m!4192733))

(declare-fun m!4192749 () Bool)

(assert (=> b!3681897 m!4192749))

(assert (=> b!3681897 m!4192715))

(declare-fun m!4192751 () Bool)

(assert (=> b!3681897 m!4192751))

(assert (=> b!3681897 m!4192705))

(assert (=> b!3681897 m!4192715))

(assert (=> b!3681898 m!4192733))

(assert (=> b!3681898 m!4192733))

(assert (=> b!3681898 m!4192749))

(assert (=> b!3681584 d!1080648))

(declare-fun d!1080674 () Bool)

(declare-fun isEmpty!23070 (Option!8329) Bool)

(assert (=> d!1080674 (= (isDefined!6561 lt!1287582) (not (isEmpty!23070 lt!1287582)))))

(declare-fun bs!573617 () Bool)

(assert (= bs!573617 d!1080674))

(declare-fun m!4192753 () Bool)

(assert (=> bs!573617 m!4192753))

(assert (=> b!3681584 d!1080674))

(declare-fun b!3681901 () Bool)

(declare-fun e!2279924 () List!38958)

(assert (=> b!3681901 (= e!2279924 suffix!1395)))

(declare-fun b!3681903 () Bool)

(declare-fun res!1495929 () Bool)

(declare-fun e!2279923 () Bool)

(assert (=> b!3681903 (=> (not res!1495929) (not e!2279923))))

(declare-fun lt!1287766 () List!38958)

(assert (=> b!3681903 (= res!1495929 (= (size!29697 lt!1287766) (+ (size!29697 lt!1287575) (size!29697 suffix!1395))))))

(declare-fun b!3681902 () Bool)

(assert (=> b!3681902 (= e!2279924 (Cons!38834 (h!44254 lt!1287575) (++!9666 (t!300713 lt!1287575) suffix!1395)))))

(declare-fun d!1080676 () Bool)

(assert (=> d!1080676 e!2279923))

(declare-fun res!1495930 () Bool)

(assert (=> d!1080676 (=> (not res!1495930) (not e!2279923))))

(assert (=> d!1080676 (= res!1495930 (= (content!5632 lt!1287766) ((_ map or) (content!5632 lt!1287575) (content!5632 suffix!1395))))))

(assert (=> d!1080676 (= lt!1287766 e!2279924)))

(declare-fun c!636927 () Bool)

(assert (=> d!1080676 (= c!636927 ((_ is Nil!38834) lt!1287575))))

(assert (=> d!1080676 (= (++!9666 lt!1287575 suffix!1395) lt!1287766)))

(declare-fun b!3681904 () Bool)

(assert (=> b!3681904 (= e!2279923 (or (not (= suffix!1395 Nil!38834)) (= lt!1287766 lt!1287575)))))

(assert (= (and d!1080676 c!636927) b!3681901))

(assert (= (and d!1080676 (not c!636927)) b!3681902))

(assert (= (and d!1080676 res!1495930) b!3681903))

(assert (= (and b!3681903 res!1495929) b!3681904))

(declare-fun m!4192755 () Bool)

(assert (=> b!3681903 m!4192755))

(assert (=> b!3681903 m!4192327))

(declare-fun m!4192757 () Bool)

(assert (=> b!3681903 m!4192757))

(declare-fun m!4192759 () Bool)

(assert (=> b!3681902 m!4192759))

(declare-fun m!4192761 () Bool)

(assert (=> d!1080676 m!4192761))

(declare-fun m!4192763 () Bool)

(assert (=> d!1080676 m!4192763))

(declare-fun m!4192765 () Bool)

(assert (=> d!1080676 m!4192765))

(assert (=> b!3681584 d!1080676))

(declare-fun b!3681906 () Bool)

(declare-fun res!1495932 () Bool)

(declare-fun e!2279927 () Bool)

(assert (=> b!3681906 (=> (not res!1495932) (not e!2279927))))

(assert (=> b!3681906 (= res!1495932 (= (head!7904 lt!1287589) (head!7904 lt!1287597)))))

(declare-fun b!3681907 () Bool)

(assert (=> b!3681907 (= e!2279927 (isPrefix!3213 (tail!5695 lt!1287589) (tail!5695 lt!1287597)))))

(declare-fun b!3681905 () Bool)

(declare-fun e!2279925 () Bool)

(assert (=> b!3681905 (= e!2279925 e!2279927)))

(declare-fun res!1495931 () Bool)

(assert (=> b!3681905 (=> (not res!1495931) (not e!2279927))))

(assert (=> b!3681905 (= res!1495931 (not ((_ is Nil!38834) lt!1287597)))))

(declare-fun d!1080678 () Bool)

(declare-fun e!2279926 () Bool)

(assert (=> d!1080678 e!2279926))

(declare-fun res!1495933 () Bool)

(assert (=> d!1080678 (=> res!1495933 e!2279926)))

(declare-fun lt!1287767 () Bool)

(assert (=> d!1080678 (= res!1495933 (not lt!1287767))))

(assert (=> d!1080678 (= lt!1287767 e!2279925)))

(declare-fun res!1495934 () Bool)

(assert (=> d!1080678 (=> res!1495934 e!2279925)))

(assert (=> d!1080678 (= res!1495934 ((_ is Nil!38834) lt!1287589))))

(assert (=> d!1080678 (= (isPrefix!3213 lt!1287589 lt!1287597) lt!1287767)))

(declare-fun b!3681908 () Bool)

(assert (=> b!3681908 (= e!2279926 (>= (size!29697 lt!1287597) (size!29697 lt!1287589)))))

(assert (= (and d!1080678 (not res!1495934)) b!3681905))

(assert (= (and b!3681905 res!1495931) b!3681906))

(assert (= (and b!3681906 res!1495932) b!3681907))

(assert (= (and d!1080678 (not res!1495933)) b!3681908))

(assert (=> b!3681906 m!4192323))

(assert (=> b!3681906 m!4192539))

(assert (=> b!3681907 m!4192529))

(assert (=> b!3681907 m!4192543))

(assert (=> b!3681907 m!4192529))

(assert (=> b!3681907 m!4192543))

(declare-fun m!4192767 () Bool)

(assert (=> b!3681907 m!4192767))

(assert (=> b!3681908 m!4192547))

(assert (=> b!3681908 m!4192341))

(assert (=> b!3681584 d!1080678))

(declare-fun b!3681921 () Bool)

(declare-fun e!2279937 () Option!8329)

(assert (=> b!3681921 (= e!2279937 None!8328)))

(declare-fun b!3681922 () Bool)

(declare-fun e!2279939 () Option!8329)

(assert (=> b!3681922 (= e!2279939 (Some!8328 (h!44255 rules!3307)))))

(declare-fun b!3681923 () Bool)

(assert (=> b!3681923 (= e!2279939 e!2279937)))

(declare-fun c!636933 () Bool)

(assert (=> b!3681923 (= c!636933 (and ((_ is Cons!38835) rules!3307) (not (= (tag!6654 (h!44255 rules!3307)) (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))))))

(declare-fun b!3681924 () Bool)

(declare-fun e!2279938 () Bool)

(declare-fun e!2279936 () Bool)

(assert (=> b!3681924 (= e!2279938 e!2279936)))

(declare-fun res!1495939 () Bool)

(assert (=> b!3681924 (=> (not res!1495939) (not e!2279936))))

(declare-fun lt!1287774 () Option!8329)

(assert (=> b!3681924 (= res!1495939 (contains!7767 rules!3307 (get!12864 lt!1287774)))))

(declare-fun d!1080680 () Bool)

(assert (=> d!1080680 e!2279938))

(declare-fun res!1495940 () Bool)

(assert (=> d!1080680 (=> res!1495940 e!2279938)))

(assert (=> d!1080680 (= res!1495940 (isEmpty!23070 lt!1287774))))

(assert (=> d!1080680 (= lt!1287774 e!2279939)))

(declare-fun c!636932 () Bool)

(assert (=> d!1080680 (= c!636932 (and ((_ is Cons!38835) rules!3307) (= (tag!6654 (h!44255 rules!3307)) (tag!6654 (rule!8688 (_1!22484 lt!1287573))))))))

(assert (=> d!1080680 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080680 (= (getRuleFromTag!1454 thiss!23823 rules!3307 (tag!6654 (rule!8688 (_1!22484 lt!1287573)))) lt!1287774)))

(declare-fun b!3681925 () Bool)

(declare-fun lt!1287776 () Unit!56926)

(declare-fun lt!1287775 () Unit!56926)

(assert (=> b!3681925 (= lt!1287776 lt!1287775)))

(assert (=> b!3681925 (rulesInvariant!4836 thiss!23823 (t!300714 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!626 (LexerInterface!5439 Rule!11500 List!38959) Unit!56926)

(assert (=> b!3681925 (= lt!1287775 (lemmaInvariantOnRulesThenOnTail!626 thiss!23823 (h!44255 rules!3307) (t!300714 rules!3307)))))

(assert (=> b!3681925 (= e!2279937 (getRuleFromTag!1454 thiss!23823 (t!300714 rules!3307) (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3681926 () Bool)

(assert (=> b!3681926 (= e!2279936 (= (tag!6654 (get!12864 lt!1287774)) (tag!6654 (rule!8688 (_1!22484 lt!1287573)))))))

(assert (= (and d!1080680 c!636932) b!3681922))

(assert (= (and d!1080680 (not c!636932)) b!3681923))

(assert (= (and b!3681923 c!636933) b!3681925))

(assert (= (and b!3681923 (not c!636933)) b!3681921))

(assert (= (and d!1080680 (not res!1495940)) b!3681924))

(assert (= (and b!3681924 res!1495939) b!3681926))

(declare-fun m!4192769 () Bool)

(assert (=> b!3681924 m!4192769))

(assert (=> b!3681924 m!4192769))

(declare-fun m!4192771 () Bool)

(assert (=> b!3681924 m!4192771))

(declare-fun m!4192773 () Bool)

(assert (=> d!1080680 m!4192773))

(assert (=> d!1080680 m!4192423))

(declare-fun m!4192775 () Bool)

(assert (=> b!3681925 m!4192775))

(declare-fun m!4192777 () Bool)

(assert (=> b!3681925 m!4192777))

(declare-fun m!4192779 () Bool)

(assert (=> b!3681925 m!4192779))

(assert (=> b!3681926 m!4192769))

(assert (=> b!3681584 d!1080680))

(declare-fun d!1080682 () Bool)

(assert (=> d!1080682 (= (get!12863 lt!1287595) (v!38267 lt!1287595))))

(assert (=> b!3681584 d!1080682))

(declare-fun d!1080684 () Bool)

(assert (=> d!1080684 (isPrefix!3213 lt!1287589 (++!9666 lt!1287589 (_2!22484 lt!1287573)))))

(declare-fun lt!1287777 () Unit!56926)

(assert (=> d!1080684 (= lt!1287777 (choose!22025 lt!1287589 (_2!22484 lt!1287573)))))

(assert (=> d!1080684 (= (lemmaConcatTwoListThenFirstIsPrefix!2132 lt!1287589 (_2!22484 lt!1287573)) lt!1287777)))

(declare-fun bs!573618 () Bool)

(assert (= bs!573618 d!1080684))

(assert (=> bs!573618 m!4192379))

(assert (=> bs!573618 m!4192379))

(declare-fun m!4192781 () Bool)

(assert (=> bs!573618 m!4192781))

(declare-fun m!4192783 () Bool)

(assert (=> bs!573618 m!4192783))

(assert (=> b!3681584 d!1080684))

(declare-fun d!1080686 () Bool)

(declare-fun lt!1287780 () Int)

(assert (=> d!1080686 (>= lt!1287780 0)))

(declare-fun e!2279942 () Int)

(assert (=> d!1080686 (= lt!1287780 e!2279942)))

(declare-fun c!636936 () Bool)

(assert (=> d!1080686 (= c!636936 ((_ is Nil!38834) lt!1287589))))

(assert (=> d!1080686 (= (size!29697 lt!1287589) lt!1287780)))

(declare-fun b!3681931 () Bool)

(assert (=> b!3681931 (= e!2279942 0)))

(declare-fun b!3681932 () Bool)

(assert (=> b!3681932 (= e!2279942 (+ 1 (size!29697 (t!300713 lt!1287589))))))

(assert (= (and d!1080686 c!636936) b!3681931))

(assert (= (and d!1080686 (not c!636936)) b!3681932))

(declare-fun m!4192785 () Bool)

(assert (=> b!3681932 m!4192785))

(assert (=> b!3681601 d!1080686))

(declare-fun b!3681951 () Bool)

(declare-fun res!1495956 () Bool)

(declare-fun e!2279953 () Bool)

(assert (=> b!3681951 (=> (not res!1495956) (not e!2279953))))

(declare-fun lt!1287792 () Option!8328)

(assert (=> b!3681951 (= res!1495956 (= (value!187185 (_1!22484 (get!12863 lt!1287792))) (apply!9352 (transformation!5850 (rule!8688 (_1!22484 (get!12863 lt!1287792)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287792)))))))))

(declare-fun b!3681952 () Bool)

(assert (=> b!3681952 (= e!2279953 (= (size!29695 (_1!22484 (get!12863 lt!1287792))) (size!29697 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287792))))))))

(declare-fun b!3681953 () Bool)

(declare-fun e!2279954 () Option!8328)

(assert (=> b!3681953 (= e!2279954 None!8327)))

(declare-fun b!3681954 () Bool)

(declare-fun e!2279952 () Bool)

(declare-datatypes ((tuple2!38706 0))(
  ( (tuple2!38707 (_1!22487 List!38958) (_2!22487 List!38958)) )
))
(declare-fun findLongestMatchInner!1093 (Regex!10609 List!38958 Int List!38958 List!38958 Int) tuple2!38706)

(assert (=> b!3681954 (= e!2279952 (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) (_1!22487 (findLongestMatchInner!1093 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) Nil!38834 (size!29697 Nil!38834) lt!1287597 lt!1287597 (size!29697 lt!1287597)))))))

(declare-fun b!3681955 () Bool)

(declare-fun res!1495961 () Bool)

(assert (=> b!3681955 (=> (not res!1495961) (not e!2279953))))

(assert (=> b!3681955 (= res!1495961 (= (rule!8688 (_1!22484 (get!12863 lt!1287792))) (rule!8688 (_1!22484 lt!1287573))))))

(declare-fun d!1080688 () Bool)

(declare-fun e!2279951 () Bool)

(assert (=> d!1080688 e!2279951))

(declare-fun res!1495957 () Bool)

(assert (=> d!1080688 (=> res!1495957 e!2279951)))

(assert (=> d!1080688 (= res!1495957 (isEmpty!23068 lt!1287792))))

(assert (=> d!1080688 (= lt!1287792 e!2279954)))

(declare-fun c!636939 () Bool)

(declare-fun lt!1287795 () tuple2!38706)

(assert (=> d!1080688 (= c!636939 (isEmpty!23066 (_1!22487 lt!1287795)))))

(declare-fun findLongestMatch!1008 (Regex!10609 List!38958) tuple2!38706)

(assert (=> d!1080688 (= lt!1287795 (findLongestMatch!1008 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287597))))

(assert (=> d!1080688 (ruleValid!2114 thiss!23823 (rule!8688 (_1!22484 lt!1287573)))))

(assert (=> d!1080688 (= (maxPrefixOneRule!2111 thiss!23823 (rule!8688 (_1!22484 lt!1287573)) lt!1287597) lt!1287792)))

(declare-fun b!3681956 () Bool)

(declare-fun res!1495959 () Bool)

(assert (=> b!3681956 (=> (not res!1495959) (not e!2279953))))

(assert (=> b!3681956 (= res!1495959 (= (++!9666 (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287792)))) (_2!22484 (get!12863 lt!1287792))) lt!1287597))))

(declare-fun b!3681957 () Bool)

(declare-fun res!1495955 () Bool)

(assert (=> b!3681957 (=> (not res!1495955) (not e!2279953))))

(assert (=> b!3681957 (= res!1495955 (< (size!29697 (_2!22484 (get!12863 lt!1287792))) (size!29697 lt!1287597)))))

(declare-fun b!3681958 () Bool)

(assert (=> b!3681958 (= e!2279954 (Some!8327 (tuple2!38701 (Token!11067 (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) (seqFromList!4399 (_1!22487 lt!1287795))) (rule!8688 (_1!22484 lt!1287573)) (size!29696 (seqFromList!4399 (_1!22487 lt!1287795))) (_1!22487 lt!1287795)) (_2!22487 lt!1287795))))))

(declare-fun lt!1287794 () Unit!56926)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1066 (Regex!10609 List!38958) Unit!56926)

(assert (=> b!3681958 (= lt!1287794 (longestMatchIsAcceptedByMatchOrIsEmpty!1066 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287597))))

(declare-fun res!1495960 () Bool)

(assert (=> b!3681958 (= res!1495960 (isEmpty!23066 (_1!22487 (findLongestMatchInner!1093 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) Nil!38834 (size!29697 Nil!38834) lt!1287597 lt!1287597 (size!29697 lt!1287597)))))))

(assert (=> b!3681958 (=> res!1495960 e!2279952)))

(assert (=> b!3681958 e!2279952))

(declare-fun lt!1287793 () Unit!56926)

(assert (=> b!3681958 (= lt!1287793 lt!1287794)))

(declare-fun lt!1287791 () Unit!56926)

(assert (=> b!3681958 (= lt!1287791 (lemmaSemiInverse!1599 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) (seqFromList!4399 (_1!22487 lt!1287795))))))

(declare-fun b!3681959 () Bool)

(assert (=> b!3681959 (= e!2279951 e!2279953)))

(declare-fun res!1495958 () Bool)

(assert (=> b!3681959 (=> (not res!1495958) (not e!2279953))))

(assert (=> b!3681959 (= res!1495958 (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287792))))))))

(assert (= (and d!1080688 c!636939) b!3681953))

(assert (= (and d!1080688 (not c!636939)) b!3681958))

(assert (= (and b!3681958 (not res!1495960)) b!3681954))

(assert (= (and d!1080688 (not res!1495957)) b!3681959))

(assert (= (and b!3681959 res!1495958) b!3681956))

(assert (= (and b!3681956 res!1495959) b!3681957))

(assert (= (and b!3681957 res!1495955) b!3681955))

(assert (= (and b!3681955 res!1495961) b!3681951))

(assert (= (and b!3681951 res!1495956) b!3681952))

(declare-fun m!4192787 () Bool)

(assert (=> b!3681957 m!4192787))

(declare-fun m!4192789 () Bool)

(assert (=> b!3681957 m!4192789))

(assert (=> b!3681957 m!4192547))

(assert (=> b!3681952 m!4192787))

(declare-fun m!4192791 () Bool)

(assert (=> b!3681952 m!4192791))

(assert (=> b!3681956 m!4192787))

(declare-fun m!4192793 () Bool)

(assert (=> b!3681956 m!4192793))

(assert (=> b!3681956 m!4192793))

(declare-fun m!4192795 () Bool)

(assert (=> b!3681956 m!4192795))

(assert (=> b!3681956 m!4192795))

(declare-fun m!4192797 () Bool)

(assert (=> b!3681956 m!4192797))

(declare-fun m!4192799 () Bool)

(assert (=> b!3681958 m!4192799))

(declare-fun m!4192801 () Bool)

(assert (=> b!3681958 m!4192801))

(assert (=> b!3681958 m!4192799))

(assert (=> b!3681958 m!4192799))

(declare-fun m!4192803 () Bool)

(assert (=> b!3681958 m!4192803))

(declare-fun m!4192805 () Bool)

(assert (=> b!3681958 m!4192805))

(assert (=> b!3681958 m!4192547))

(declare-fun m!4192807 () Bool)

(assert (=> b!3681958 m!4192807))

(assert (=> b!3681958 m!4192547))

(declare-fun m!4192809 () Bool)

(assert (=> b!3681958 m!4192809))

(assert (=> b!3681958 m!4192799))

(declare-fun m!4192811 () Bool)

(assert (=> b!3681958 m!4192811))

(declare-fun m!4192813 () Bool)

(assert (=> b!3681958 m!4192813))

(assert (=> b!3681958 m!4192805))

(assert (=> b!3681954 m!4192805))

(assert (=> b!3681954 m!4192547))

(assert (=> b!3681954 m!4192805))

(assert (=> b!3681954 m!4192547))

(assert (=> b!3681954 m!4192807))

(declare-fun m!4192815 () Bool)

(assert (=> b!3681954 m!4192815))

(assert (=> b!3681955 m!4192787))

(assert (=> b!3681951 m!4192787))

(declare-fun m!4192817 () Bool)

(assert (=> b!3681951 m!4192817))

(assert (=> b!3681951 m!4192817))

(declare-fun m!4192819 () Bool)

(assert (=> b!3681951 m!4192819))

(declare-fun m!4192821 () Bool)

(assert (=> d!1080688 m!4192821))

(declare-fun m!4192823 () Bool)

(assert (=> d!1080688 m!4192823))

(declare-fun m!4192825 () Bool)

(assert (=> d!1080688 m!4192825))

(declare-fun m!4192827 () Bool)

(assert (=> d!1080688 m!4192827))

(assert (=> b!3681959 m!4192787))

(assert (=> b!3681959 m!4192793))

(assert (=> b!3681959 m!4192793))

(assert (=> b!3681959 m!4192795))

(assert (=> b!3681959 m!4192795))

(declare-fun m!4192829 () Bool)

(assert (=> b!3681959 m!4192829))

(assert (=> b!3681601 d!1080688))

(declare-fun d!1080690 () Bool)

(assert (=> d!1080690 (= (_2!22484 lt!1287573) lt!1287548)))

(declare-fun lt!1287798 () Unit!56926)

(declare-fun choose!22028 (List!38958 List!38958 List!38958 List!38958 List!38958) Unit!56926)

(assert (=> d!1080690 (= lt!1287798 (choose!22028 lt!1287589 (_2!22484 lt!1287573) lt!1287589 lt!1287548 lt!1287597))))

(assert (=> d!1080690 (isPrefix!3213 lt!1287589 lt!1287597)))

(assert (=> d!1080690 (= (lemmaSamePrefixThenSameSuffix!1540 lt!1287589 (_2!22484 lt!1287573) lt!1287589 lt!1287548 lt!1287597) lt!1287798)))

(declare-fun bs!573619 () Bool)

(assert (= bs!573619 d!1080690))

(declare-fun m!4192831 () Bool)

(assert (=> bs!573619 m!4192831))

(assert (=> bs!573619 m!4192381))

(assert (=> b!3681601 d!1080690))

(declare-fun d!1080692 () Bool)

(declare-fun fromListB!2033 (List!38958) BalanceConc!23392)

(assert (=> d!1080692 (= (seqFromList!4399 lt!1287589) (fromListB!2033 lt!1287589))))

(declare-fun bs!573620 () Bool)

(assert (= bs!573620 d!1080692))

(declare-fun m!4192833 () Bool)

(assert (=> bs!573620 m!4192833))

(assert (=> b!3681601 d!1080692))

(declare-fun d!1080694 () Bool)

(declare-fun dynLambda!17033 (Int BalanceConc!23392) TokenValue!6080)

(assert (=> d!1080694 (= (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) (seqFromList!4399 lt!1287589)) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (seqFromList!4399 lt!1287589)))))

(declare-fun b_lambda!109357 () Bool)

(assert (=> (not b_lambda!109357) (not d!1080694)))

(declare-fun t!300740 () Bool)

(declare-fun tb!213533 () Bool)

(assert (=> (and b!3681612 (= (toValue!8146 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300740) tb!213533))

(declare-fun result!259804 () Bool)

(assert (=> tb!213533 (= result!259804 (inv!21 (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (seqFromList!4399 lt!1287589))))))

(declare-fun m!4192835 () Bool)

(assert (=> tb!213533 m!4192835))

(assert (=> d!1080694 t!300740))

(declare-fun b_and!275083 () Bool)

(assert (= b_and!275043 (and (=> t!300740 result!259804) b_and!275083)))

(declare-fun t!300742 () Bool)

(declare-fun tb!213535 () Bool)

(assert (=> (and b!3681606 (= (toValue!8146 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300742) tb!213535))

(declare-fun result!259808 () Bool)

(assert (= result!259808 result!259804))

(assert (=> d!1080694 t!300742))

(declare-fun b_and!275085 () Bool)

(assert (= b_and!275047 (and (=> t!300742 result!259808) b_and!275085)))

(declare-fun tb!213537 () Bool)

(declare-fun t!300744 () Bool)

(assert (=> (and b!3681595 (= (toValue!8146 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300744) tb!213537))

(declare-fun result!259810 () Bool)

(assert (= result!259810 result!259804))

(assert (=> d!1080694 t!300744))

(declare-fun b_and!275087 () Bool)

(assert (= b_and!275051 (and (=> t!300744 result!259810) b_and!275087)))

(declare-fun tb!213539 () Bool)

(declare-fun t!300746 () Bool)

(assert (=> (and b!3681588 (= (toValue!8146 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300746) tb!213539))

(declare-fun result!259812 () Bool)

(assert (= result!259812 result!259804))

(assert (=> d!1080694 t!300746))

(declare-fun b_and!275089 () Bool)

(assert (= b_and!275055 (and (=> t!300746 result!259812) b_and!275089)))

(assert (=> d!1080694 m!4192337))

(declare-fun m!4192837 () Bool)

(assert (=> d!1080694 m!4192837))

(assert (=> b!3681601 d!1080694))

(declare-fun d!1080696 () Bool)

(declare-fun lt!1287801 () List!38958)

(assert (=> d!1080696 (= (++!9666 lt!1287589 lt!1287801) lt!1287597)))

(declare-fun e!2279960 () List!38958)

(assert (=> d!1080696 (= lt!1287801 e!2279960)))

(declare-fun c!636942 () Bool)

(assert (=> d!1080696 (= c!636942 ((_ is Cons!38834) lt!1287589))))

(assert (=> d!1080696 (>= (size!29697 lt!1287597) (size!29697 lt!1287589))))

(assert (=> d!1080696 (= (getSuffix!1766 lt!1287597 lt!1287589) lt!1287801)))

(declare-fun b!3681966 () Bool)

(assert (=> b!3681966 (= e!2279960 (getSuffix!1766 (tail!5695 lt!1287597) (t!300713 lt!1287589)))))

(declare-fun b!3681967 () Bool)

(assert (=> b!3681967 (= e!2279960 lt!1287597)))

(assert (= (and d!1080696 c!636942) b!3681966))

(assert (= (and d!1080696 (not c!636942)) b!3681967))

(declare-fun m!4192839 () Bool)

(assert (=> d!1080696 m!4192839))

(assert (=> d!1080696 m!4192547))

(assert (=> d!1080696 m!4192341))

(assert (=> b!3681966 m!4192543))

(assert (=> b!3681966 m!4192543))

(declare-fun m!4192841 () Bool)

(assert (=> b!3681966 m!4192841))

(assert (=> b!3681601 d!1080696))

(declare-fun d!1080698 () Bool)

(assert (=> d!1080698 (= (maxPrefixOneRule!2111 thiss!23823 (rule!8688 (_1!22484 lt!1287573)) lt!1287597) (Some!8327 (tuple2!38701 (Token!11067 (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) (seqFromList!4399 lt!1287589)) (rule!8688 (_1!22484 lt!1287573)) (size!29697 lt!1287589) lt!1287589) (_2!22484 lt!1287573))))))

(declare-fun lt!1287804 () Unit!56926)

(declare-fun choose!22029 (LexerInterface!5439 List!38959 List!38958 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> d!1080698 (= lt!1287804 (choose!22029 thiss!23823 rules!3307 lt!1287589 lt!1287597 (_2!22484 lt!1287573) (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080698 (not (isEmpty!23067 rules!3307))))

(assert (=> d!1080698 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1167 thiss!23823 rules!3307 lt!1287589 lt!1287597 (_2!22484 lt!1287573) (rule!8688 (_1!22484 lt!1287573))) lt!1287804)))

(declare-fun bs!573621 () Bool)

(assert (= bs!573621 d!1080698))

(assert (=> bs!573621 m!4192337))

(assert (=> bs!573621 m!4192367))

(declare-fun m!4192843 () Bool)

(assert (=> bs!573621 m!4192843))

(assert (=> bs!573621 m!4192347))

(assert (=> bs!573621 m!4192337))

(assert (=> bs!573621 m!4192339))

(assert (=> bs!573621 m!4192341))

(assert (=> b!3681601 d!1080698))

(declare-fun d!1080700 () Bool)

(assert (=> d!1080700 (= (isDefined!6560 lt!1287570) (not (isEmpty!23068 lt!1287570)))))

(declare-fun bs!573622 () Bool)

(assert (= bs!573622 d!1080700))

(declare-fun m!4192845 () Bool)

(assert (=> bs!573622 m!4192845))

(assert (=> b!3681582 d!1080700))

(declare-fun bm!266739 () Bool)

(declare-fun call!266744 () Option!8328)

(assert (=> bm!266739 (= call!266744 (maxPrefixOneRule!2111 thiss!23823 (h!44255 rules!3307) lt!1287575))))

(declare-fun b!3681968 () Bool)

(declare-fun e!2279961 () Option!8328)

(assert (=> b!3681968 (= e!2279961 call!266744)))

(declare-fun b!3681969 () Bool)

(declare-fun res!1495963 () Bool)

(declare-fun e!2279963 () Bool)

(assert (=> b!3681969 (=> (not res!1495963) (not e!2279963))))

(declare-fun lt!1287805 () Option!8328)

(assert (=> b!3681969 (= res!1495963 (< (size!29697 (_2!22484 (get!12863 lt!1287805))) (size!29697 lt!1287575)))))

(declare-fun d!1080702 () Bool)

(declare-fun e!2279962 () Bool)

(assert (=> d!1080702 e!2279962))

(declare-fun res!1495966 () Bool)

(assert (=> d!1080702 (=> res!1495966 e!2279962)))

(assert (=> d!1080702 (= res!1495966 (isEmpty!23068 lt!1287805))))

(assert (=> d!1080702 (= lt!1287805 e!2279961)))

(declare-fun c!636943 () Bool)

(assert (=> d!1080702 (= c!636943 (and ((_ is Cons!38835) rules!3307) ((_ is Nil!38835) (t!300714 rules!3307))))))

(declare-fun lt!1287807 () Unit!56926)

(declare-fun lt!1287808 () Unit!56926)

(assert (=> d!1080702 (= lt!1287807 lt!1287808)))

(assert (=> d!1080702 (isPrefix!3213 lt!1287575 lt!1287575)))

(assert (=> d!1080702 (= lt!1287808 (lemmaIsPrefixRefl!2019 lt!1287575 lt!1287575))))

(assert (=> d!1080702 (rulesValidInductive!2082 thiss!23823 rules!3307)))

(assert (=> d!1080702 (= (maxPrefix!2973 thiss!23823 rules!3307 lt!1287575) lt!1287805)))

(declare-fun b!3681970 () Bool)

(assert (=> b!3681970 (= e!2279962 e!2279963)))

(declare-fun res!1495968 () Bool)

(assert (=> b!3681970 (=> (not res!1495968) (not e!2279963))))

(assert (=> b!3681970 (= res!1495968 (isDefined!6560 lt!1287805))))

(declare-fun b!3681971 () Bool)

(assert (=> b!3681971 (= e!2279963 (contains!7767 rules!3307 (rule!8688 (_1!22484 (get!12863 lt!1287805)))))))

(declare-fun b!3681972 () Bool)

(declare-fun res!1495967 () Bool)

(assert (=> b!3681972 (=> (not res!1495967) (not e!2279963))))

(assert (=> b!3681972 (= res!1495967 (= (value!187185 (_1!22484 (get!12863 lt!1287805))) (apply!9352 (transformation!5850 (rule!8688 (_1!22484 (get!12863 lt!1287805)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287805)))))))))

(declare-fun b!3681973 () Bool)

(declare-fun res!1495962 () Bool)

(assert (=> b!3681973 (=> (not res!1495962) (not e!2279963))))

(assert (=> b!3681973 (= res!1495962 (= (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287805)))) (originalCharacters!6564 (_1!22484 (get!12863 lt!1287805)))))))

(declare-fun b!3681974 () Bool)

(declare-fun lt!1287806 () Option!8328)

(declare-fun lt!1287809 () Option!8328)

(assert (=> b!3681974 (= e!2279961 (ite (and ((_ is None!8327) lt!1287806) ((_ is None!8327) lt!1287809)) None!8327 (ite ((_ is None!8327) lt!1287809) lt!1287806 (ite ((_ is None!8327) lt!1287806) lt!1287809 (ite (>= (size!29695 (_1!22484 (v!38267 lt!1287806))) (size!29695 (_1!22484 (v!38267 lt!1287809)))) lt!1287806 lt!1287809)))))))

(assert (=> b!3681974 (= lt!1287806 call!266744)))

(assert (=> b!3681974 (= lt!1287809 (maxPrefix!2973 thiss!23823 (t!300714 rules!3307) lt!1287575))))

(declare-fun b!3681975 () Bool)

(declare-fun res!1495964 () Bool)

(assert (=> b!3681975 (=> (not res!1495964) (not e!2279963))))

(assert (=> b!3681975 (= res!1495964 (= (++!9666 (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287805)))) (_2!22484 (get!12863 lt!1287805))) lt!1287575))))

(declare-fun b!3681976 () Bool)

(declare-fun res!1495965 () Bool)

(assert (=> b!3681976 (=> (not res!1495965) (not e!2279963))))

(assert (=> b!3681976 (= res!1495965 (matchR!5178 (regex!5850 (rule!8688 (_1!22484 (get!12863 lt!1287805)))) (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287805))))))))

(assert (= (and d!1080702 c!636943) b!3681968))

(assert (= (and d!1080702 (not c!636943)) b!3681974))

(assert (= (or b!3681968 b!3681974) bm!266739))

(assert (= (and d!1080702 (not res!1495966)) b!3681970))

(assert (= (and b!3681970 res!1495968) b!3681973))

(assert (= (and b!3681973 res!1495962) b!3681969))

(assert (= (and b!3681969 res!1495963) b!3681975))

(assert (= (and b!3681975 res!1495964) b!3681972))

(assert (= (and b!3681972 res!1495967) b!3681976))

(assert (= (and b!3681976 res!1495965) b!3681971))

(declare-fun m!4192847 () Bool)

(assert (=> b!3681976 m!4192847))

(declare-fun m!4192849 () Bool)

(assert (=> b!3681976 m!4192849))

(assert (=> b!3681976 m!4192849))

(declare-fun m!4192851 () Bool)

(assert (=> b!3681976 m!4192851))

(assert (=> b!3681976 m!4192851))

(declare-fun m!4192853 () Bool)

(assert (=> b!3681976 m!4192853))

(declare-fun m!4192855 () Bool)

(assert (=> b!3681970 m!4192855))

(assert (=> b!3681972 m!4192847))

(declare-fun m!4192857 () Bool)

(assert (=> b!3681972 m!4192857))

(assert (=> b!3681972 m!4192857))

(declare-fun m!4192859 () Bool)

(assert (=> b!3681972 m!4192859))

(declare-fun m!4192861 () Bool)

(assert (=> b!3681974 m!4192861))

(declare-fun m!4192863 () Bool)

(assert (=> d!1080702 m!4192863))

(declare-fun m!4192865 () Bool)

(assert (=> d!1080702 m!4192865))

(declare-fun m!4192867 () Bool)

(assert (=> d!1080702 m!4192867))

(assert (=> d!1080702 m!4192579))

(declare-fun m!4192869 () Bool)

(assert (=> bm!266739 m!4192869))

(assert (=> b!3681969 m!4192847))

(declare-fun m!4192871 () Bool)

(assert (=> b!3681969 m!4192871))

(assert (=> b!3681969 m!4192327))

(assert (=> b!3681975 m!4192847))

(assert (=> b!3681975 m!4192849))

(assert (=> b!3681975 m!4192849))

(assert (=> b!3681975 m!4192851))

(assert (=> b!3681975 m!4192851))

(declare-fun m!4192873 () Bool)

(assert (=> b!3681975 m!4192873))

(assert (=> b!3681971 m!4192847))

(declare-fun m!4192875 () Bool)

(assert (=> b!3681971 m!4192875))

(assert (=> b!3681973 m!4192847))

(assert (=> b!3681973 m!4192849))

(assert (=> b!3681973 m!4192849))

(assert (=> b!3681973 m!4192851))

(assert (=> b!3681582 d!1080702))

(declare-fun d!1080704 () Bool)

(assert (=> d!1080704 (= (list!14436 lt!1287581) (list!14437 (c!636855 lt!1287581)))))

(declare-fun bs!573623 () Bool)

(assert (= bs!573623 d!1080704))

(declare-fun m!4192877 () Bool)

(assert (=> bs!573623 m!4192877))

(assert (=> b!3681582 d!1080704))

(declare-fun d!1080706 () Bool)

(declare-fun lt!1287810 () BalanceConc!23392)

(assert (=> d!1080706 (= (list!14436 lt!1287810) (originalCharacters!6564 token!511))))

(assert (=> d!1080706 (= lt!1287810 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (value!187185 token!511)))))

(assert (=> d!1080706 (= (charsOf!3864 token!511) lt!1287810)))

(declare-fun b_lambda!109359 () Bool)

(assert (=> (not b_lambda!109359) (not d!1080706)))

(declare-fun tb!213541 () Bool)

(declare-fun t!300748 () Bool)

(assert (=> (and b!3681612 (= (toChars!8005 (transformation!5850 rule!403)) (toChars!8005 (transformation!5850 (rule!8688 token!511)))) t!300748) tb!213541))

(declare-fun b!3681977 () Bool)

(declare-fun e!2279964 () Bool)

(declare-fun tp!1119107 () Bool)

(assert (=> b!3681977 (= e!2279964 (and (inv!52337 (c!636855 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (value!187185 token!511)))) tp!1119107))))

(declare-fun result!259814 () Bool)

(assert (=> tb!213541 (= result!259814 (and (inv!52338 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (value!187185 token!511))) e!2279964))))

(assert (= tb!213541 b!3681977))

(declare-fun m!4192879 () Bool)

(assert (=> b!3681977 m!4192879))

(declare-fun m!4192881 () Bool)

(assert (=> tb!213541 m!4192881))

(assert (=> d!1080706 t!300748))

(declare-fun b_and!275091 () Bool)

(assert (= b_and!275067 (and (=> t!300748 result!259814) b_and!275091)))

(declare-fun t!300750 () Bool)

(declare-fun tb!213543 () Bool)

(assert (=> (and b!3681606 (= (toChars!8005 (transformation!5850 (rule!8688 token!511))) (toChars!8005 (transformation!5850 (rule!8688 token!511)))) t!300750) tb!213543))

(declare-fun result!259816 () Bool)

(assert (= result!259816 result!259814))

(assert (=> d!1080706 t!300750))

(declare-fun b_and!275093 () Bool)

(assert (= b_and!275069 (and (=> t!300750 result!259816) b_and!275093)))

(declare-fun t!300752 () Bool)

(declare-fun tb!213545 () Bool)

(assert (=> (and b!3681595 (= (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toChars!8005 (transformation!5850 (rule!8688 token!511)))) t!300752) tb!213545))

(declare-fun result!259818 () Bool)

(assert (= result!259818 result!259814))

(assert (=> d!1080706 t!300752))

(declare-fun b_and!275095 () Bool)

(assert (= b_and!275071 (and (=> t!300752 result!259818) b_and!275095)))

(declare-fun tb!213547 () Bool)

(declare-fun t!300754 () Bool)

(assert (=> (and b!3681588 (= (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toChars!8005 (transformation!5850 (rule!8688 token!511)))) t!300754) tb!213547))

(declare-fun result!259820 () Bool)

(assert (= result!259820 result!259814))

(assert (=> d!1080706 t!300754))

(declare-fun b_and!275097 () Bool)

(assert (= b_and!275073 (and (=> t!300754 result!259820) b_and!275097)))

(declare-fun m!4192883 () Bool)

(assert (=> d!1080706 m!4192883))

(declare-fun m!4192885 () Bool)

(assert (=> d!1080706 m!4192885))

(assert (=> b!3681582 d!1080706))

(declare-fun d!1080708 () Bool)

(declare-fun lt!1287811 () Bool)

(assert (=> d!1080708 (= lt!1287811 (select (content!5632 lt!1287549) lt!1287559))))

(declare-fun e!2279966 () Bool)

(assert (=> d!1080708 (= lt!1287811 e!2279966)))

(declare-fun res!1495969 () Bool)

(assert (=> d!1080708 (=> (not res!1495969) (not e!2279966))))

(assert (=> d!1080708 (= res!1495969 ((_ is Cons!38834) lt!1287549))))

(assert (=> d!1080708 (= (contains!7768 lt!1287549 lt!1287559) lt!1287811)))

(declare-fun b!3681978 () Bool)

(declare-fun e!2279965 () Bool)

(assert (=> b!3681978 (= e!2279966 e!2279965)))

(declare-fun res!1495970 () Bool)

(assert (=> b!3681978 (=> res!1495970 e!2279965)))

(assert (=> b!3681978 (= res!1495970 (= (h!44254 lt!1287549) lt!1287559))))

(declare-fun b!3681979 () Bool)

(assert (=> b!3681979 (= e!2279965 (contains!7768 (t!300713 lt!1287549) lt!1287559))))

(assert (= (and d!1080708 res!1495969) b!3681978))

(assert (= (and b!3681978 (not res!1495970)) b!3681979))

(declare-fun m!4192887 () Bool)

(assert (=> d!1080708 m!4192887))

(declare-fun m!4192889 () Bool)

(assert (=> d!1080708 m!4192889))

(declare-fun m!4192891 () Bool)

(assert (=> b!3681979 m!4192891))

(assert (=> b!3681581 d!1080708))

(declare-fun d!1080710 () Bool)

(assert (=> d!1080710 (= (head!7904 suffix!1395) (h!44254 suffix!1395))))

(assert (=> b!3681581 d!1080710))

(declare-fun b!3681980 () Bool)

(declare-fun c!636945 () Bool)

(assert (=> b!3681980 (= c!636945 ((_ is Star!10609) (regex!5850 rule!403)))))

(declare-fun e!2279970 () List!38958)

(declare-fun e!2279969 () List!38958)

(assert (=> b!3681980 (= e!2279970 e!2279969)))

(declare-fun b!3681981 () Bool)

(declare-fun e!2279968 () List!38958)

(declare-fun call!266746 () List!38958)

(assert (=> b!3681981 (= e!2279968 call!266746)))

(declare-fun bm!266740 () Bool)

(declare-fun call!266748 () List!38958)

(declare-fun call!266747 () List!38958)

(assert (=> bm!266740 (= call!266748 call!266747)))

(declare-fun bm!266741 () Bool)

(declare-fun call!266745 () List!38958)

(declare-fun c!636946 () Bool)

(assert (=> bm!266741 (= call!266746 (++!9666 (ite c!636946 call!266745 call!266748) (ite c!636946 call!266748 call!266745)))))

(declare-fun b!3681983 () Bool)

(assert (=> b!3681983 (= e!2279969 e!2279968)))

(assert (=> b!3681983 (= c!636946 ((_ is Union!10609) (regex!5850 rule!403)))))

(declare-fun bm!266742 () Bool)

(assert (=> bm!266742 (= call!266745 (usedCharacters!1062 (ite c!636946 (regOne!21731 (regex!5850 rule!403)) (regTwo!21730 (regex!5850 rule!403)))))))

(declare-fun bm!266743 () Bool)

(assert (=> bm!266743 (= call!266747 (usedCharacters!1062 (ite c!636945 (reg!10938 (regex!5850 rule!403)) (ite c!636946 (regTwo!21731 (regex!5850 rule!403)) (regOne!21730 (regex!5850 rule!403))))))))

(declare-fun b!3681984 () Bool)

(declare-fun e!2279967 () List!38958)

(assert (=> b!3681984 (= e!2279967 e!2279970)))

(declare-fun c!636947 () Bool)

(assert (=> b!3681984 (= c!636947 ((_ is ElementMatch!10609) (regex!5850 rule!403)))))

(declare-fun b!3681985 () Bool)

(assert (=> b!3681985 (= e!2279970 (Cons!38834 (c!636854 (regex!5850 rule!403)) Nil!38834))))

(declare-fun b!3681982 () Bool)

(assert (=> b!3681982 (= e!2279968 call!266746)))

(declare-fun d!1080712 () Bool)

(declare-fun c!636944 () Bool)

(assert (=> d!1080712 (= c!636944 (or ((_ is EmptyExpr!10609) (regex!5850 rule!403)) ((_ is EmptyLang!10609) (regex!5850 rule!403))))))

(assert (=> d!1080712 (= (usedCharacters!1062 (regex!5850 rule!403)) e!2279967)))

(declare-fun b!3681986 () Bool)

(assert (=> b!3681986 (= e!2279969 call!266747)))

(declare-fun b!3681987 () Bool)

(assert (=> b!3681987 (= e!2279967 Nil!38834)))

(assert (= (and d!1080712 c!636944) b!3681987))

(assert (= (and d!1080712 (not c!636944)) b!3681984))

(assert (= (and b!3681984 c!636947) b!3681985))

(assert (= (and b!3681984 (not c!636947)) b!3681980))

(assert (= (and b!3681980 c!636945) b!3681986))

(assert (= (and b!3681980 (not c!636945)) b!3681983))

(assert (= (and b!3681983 c!636946) b!3681981))

(assert (= (and b!3681983 (not c!636946)) b!3681982))

(assert (= (or b!3681981 b!3681982) bm!266742))

(assert (= (or b!3681981 b!3681982) bm!266740))

(assert (= (or b!3681981 b!3681982) bm!266741))

(assert (= (or b!3681986 bm!266740) bm!266743))

(declare-fun m!4192893 () Bool)

(assert (=> bm!266741 m!4192893))

(declare-fun m!4192895 () Bool)

(assert (=> bm!266742 m!4192895))

(declare-fun m!4192897 () Bool)

(assert (=> bm!266743 m!4192897))

(assert (=> b!3681581 d!1080712))

(declare-fun d!1080714 () Bool)

(assert (=> d!1080714 (= (inv!52330 (tag!6654 anOtherTypeRule!33)) (= (mod (str.len (value!187184 (tag!6654 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3681618 d!1080714))

(declare-fun d!1080716 () Bool)

(declare-fun res!1495973 () Bool)

(declare-fun e!2279973 () Bool)

(assert (=> d!1080716 (=> (not res!1495973) (not e!2279973))))

(declare-fun semiInverseModEq!2496 (Int Int) Bool)

(assert (=> d!1080716 (= res!1495973 (semiInverseModEq!2496 (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 anOtherTypeRule!33))))))

(assert (=> d!1080716 (= (inv!52334 (transformation!5850 anOtherTypeRule!33)) e!2279973)))

(declare-fun b!3681990 () Bool)

(declare-fun equivClasses!2395 (Int Int) Bool)

(assert (=> b!3681990 (= e!2279973 (equivClasses!2395 (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 anOtherTypeRule!33))))))

(assert (= (and d!1080716 res!1495973) b!3681990))

(declare-fun m!4192899 () Bool)

(assert (=> d!1080716 m!4192899))

(declare-fun m!4192901 () Bool)

(assert (=> b!3681990 m!4192901))

(assert (=> b!3681618 d!1080716))

(declare-fun d!1080718 () Bool)

(declare-fun lt!1287812 () Bool)

(assert (=> d!1080718 (= lt!1287812 (select (content!5632 (usedCharacters!1062 (regex!5850 anOtherTypeRule!33))) lt!1287559))))

(declare-fun e!2279975 () Bool)

(assert (=> d!1080718 (= lt!1287812 e!2279975)))

(declare-fun res!1495974 () Bool)

(assert (=> d!1080718 (=> (not res!1495974) (not e!2279975))))

(assert (=> d!1080718 (= res!1495974 ((_ is Cons!38834) (usedCharacters!1062 (regex!5850 anOtherTypeRule!33))))))

(assert (=> d!1080718 (= (contains!7768 (usedCharacters!1062 (regex!5850 anOtherTypeRule!33)) lt!1287559) lt!1287812)))

(declare-fun b!3681991 () Bool)

(declare-fun e!2279974 () Bool)

(assert (=> b!3681991 (= e!2279975 e!2279974)))

(declare-fun res!1495975 () Bool)

(assert (=> b!3681991 (=> res!1495975 e!2279974)))

(assert (=> b!3681991 (= res!1495975 (= (h!44254 (usedCharacters!1062 (regex!5850 anOtherTypeRule!33))) lt!1287559))))

(declare-fun b!3681992 () Bool)

(assert (=> b!3681992 (= e!2279974 (contains!7768 (t!300713 (usedCharacters!1062 (regex!5850 anOtherTypeRule!33))) lt!1287559))))

(assert (= (and d!1080718 res!1495974) b!3681991))

(assert (= (and b!3681991 (not res!1495975)) b!3681992))

(assert (=> d!1080718 m!4192271))

(declare-fun m!4192903 () Bool)

(assert (=> d!1080718 m!4192903))

(declare-fun m!4192905 () Bool)

(assert (=> d!1080718 m!4192905))

(declare-fun m!4192907 () Bool)

(assert (=> b!3681992 m!4192907))

(assert (=> b!3681599 d!1080718))

(declare-fun b!3681993 () Bool)

(declare-fun c!636949 () Bool)

(assert (=> b!3681993 (= c!636949 ((_ is Star!10609) (regex!5850 anOtherTypeRule!33)))))

(declare-fun e!2279979 () List!38958)

(declare-fun e!2279978 () List!38958)

(assert (=> b!3681993 (= e!2279979 e!2279978)))

(declare-fun b!3681994 () Bool)

(declare-fun e!2279977 () List!38958)

(declare-fun call!266750 () List!38958)

(assert (=> b!3681994 (= e!2279977 call!266750)))

(declare-fun bm!266744 () Bool)

(declare-fun call!266752 () List!38958)

(declare-fun call!266751 () List!38958)

(assert (=> bm!266744 (= call!266752 call!266751)))

(declare-fun c!636950 () Bool)

(declare-fun bm!266745 () Bool)

(declare-fun call!266749 () List!38958)

(assert (=> bm!266745 (= call!266750 (++!9666 (ite c!636950 call!266749 call!266752) (ite c!636950 call!266752 call!266749)))))

(declare-fun b!3681996 () Bool)

(assert (=> b!3681996 (= e!2279978 e!2279977)))

(assert (=> b!3681996 (= c!636950 ((_ is Union!10609) (regex!5850 anOtherTypeRule!33)))))

(declare-fun bm!266746 () Bool)

(assert (=> bm!266746 (= call!266749 (usedCharacters!1062 (ite c!636950 (regOne!21731 (regex!5850 anOtherTypeRule!33)) (regTwo!21730 (regex!5850 anOtherTypeRule!33)))))))

(declare-fun bm!266747 () Bool)

(assert (=> bm!266747 (= call!266751 (usedCharacters!1062 (ite c!636949 (reg!10938 (regex!5850 anOtherTypeRule!33)) (ite c!636950 (regTwo!21731 (regex!5850 anOtherTypeRule!33)) (regOne!21730 (regex!5850 anOtherTypeRule!33))))))))

(declare-fun b!3681997 () Bool)

(declare-fun e!2279976 () List!38958)

(assert (=> b!3681997 (= e!2279976 e!2279979)))

(declare-fun c!636951 () Bool)

(assert (=> b!3681997 (= c!636951 ((_ is ElementMatch!10609) (regex!5850 anOtherTypeRule!33)))))

(declare-fun b!3681998 () Bool)

(assert (=> b!3681998 (= e!2279979 (Cons!38834 (c!636854 (regex!5850 anOtherTypeRule!33)) Nil!38834))))

(declare-fun b!3681995 () Bool)

(assert (=> b!3681995 (= e!2279977 call!266750)))

(declare-fun d!1080720 () Bool)

(declare-fun c!636948 () Bool)

(assert (=> d!1080720 (= c!636948 (or ((_ is EmptyExpr!10609) (regex!5850 anOtherTypeRule!33)) ((_ is EmptyLang!10609) (regex!5850 anOtherTypeRule!33))))))

(assert (=> d!1080720 (= (usedCharacters!1062 (regex!5850 anOtherTypeRule!33)) e!2279976)))

(declare-fun b!3681999 () Bool)

(assert (=> b!3681999 (= e!2279978 call!266751)))

(declare-fun b!3682000 () Bool)

(assert (=> b!3682000 (= e!2279976 Nil!38834)))

(assert (= (and d!1080720 c!636948) b!3682000))

(assert (= (and d!1080720 (not c!636948)) b!3681997))

(assert (= (and b!3681997 c!636951) b!3681998))

(assert (= (and b!3681997 (not c!636951)) b!3681993))

(assert (= (and b!3681993 c!636949) b!3681999))

(assert (= (and b!3681993 (not c!636949)) b!3681996))

(assert (= (and b!3681996 c!636950) b!3681994))

(assert (= (and b!3681996 (not c!636950)) b!3681995))

(assert (= (or b!3681994 b!3681995) bm!266746))

(assert (= (or b!3681994 b!3681995) bm!266744))

(assert (= (or b!3681994 b!3681995) bm!266745))

(assert (= (or b!3681999 bm!266744) bm!266747))

(declare-fun m!4192909 () Bool)

(assert (=> bm!266745 m!4192909))

(declare-fun m!4192911 () Bool)

(assert (=> bm!266746 m!4192911))

(declare-fun m!4192913 () Bool)

(assert (=> bm!266747 m!4192913))

(assert (=> b!3681599 d!1080720))

(declare-fun d!1080722 () Bool)

(declare-fun lt!1287813 () Bool)

(assert (=> d!1080722 (= lt!1287813 (select (content!5632 call!266708) lt!1287559))))

(declare-fun e!2279981 () Bool)

(assert (=> d!1080722 (= lt!1287813 e!2279981)))

(declare-fun res!1495976 () Bool)

(assert (=> d!1080722 (=> (not res!1495976) (not e!2279981))))

(assert (=> d!1080722 (= res!1495976 ((_ is Cons!38834) call!266708))))

(assert (=> d!1080722 (= (contains!7768 call!266708 lt!1287559) lt!1287813)))

(declare-fun b!3682001 () Bool)

(declare-fun e!2279980 () Bool)

(assert (=> b!3682001 (= e!2279981 e!2279980)))

(declare-fun res!1495977 () Bool)

(assert (=> b!3682001 (=> res!1495977 e!2279980)))

(assert (=> b!3682001 (= res!1495977 (= (h!44254 call!266708) lt!1287559))))

(declare-fun b!3682002 () Bool)

(assert (=> b!3682002 (= e!2279980 (contains!7768 (t!300713 call!266708) lt!1287559))))

(assert (= (and d!1080722 res!1495976) b!3682001))

(assert (= (and b!3682001 (not res!1495977)) b!3682002))

(declare-fun m!4192915 () Bool)

(assert (=> d!1080722 m!4192915))

(declare-fun m!4192917 () Bool)

(assert (=> d!1080722 m!4192917))

(declare-fun m!4192919 () Bool)

(assert (=> b!3682002 m!4192919))

(assert (=> bm!266698 d!1080722))

(declare-fun d!1080724 () Bool)

(declare-fun lt!1287814 () Bool)

(assert (=> d!1080724 (= lt!1287814 (select (content!5632 call!266703) lt!1287555))))

(declare-fun e!2279983 () Bool)

(assert (=> d!1080724 (= lt!1287814 e!2279983)))

(declare-fun res!1495978 () Bool)

(assert (=> d!1080724 (=> (not res!1495978) (not e!2279983))))

(assert (=> d!1080724 (= res!1495978 ((_ is Cons!38834) call!266703))))

(assert (=> d!1080724 (= (contains!7768 call!266703 lt!1287555) lt!1287814)))

(declare-fun b!3682003 () Bool)

(declare-fun e!2279982 () Bool)

(assert (=> b!3682003 (= e!2279983 e!2279982)))

(declare-fun res!1495979 () Bool)

(assert (=> b!3682003 (=> res!1495979 e!2279982)))

(assert (=> b!3682003 (= res!1495979 (= (h!44254 call!266703) lt!1287555))))

(declare-fun b!3682004 () Bool)

(assert (=> b!3682004 (= e!2279982 (contains!7768 (t!300713 call!266703) lt!1287555))))

(assert (= (and d!1080724 res!1495978) b!3682003))

(assert (= (and b!3682003 (not res!1495979)) b!3682004))

(declare-fun m!4192921 () Bool)

(assert (=> d!1080724 m!4192921))

(declare-fun m!4192923 () Bool)

(assert (=> d!1080724 m!4192923))

(declare-fun m!4192925 () Bool)

(assert (=> b!3682004 m!4192925))

(assert (=> bm!266703 d!1080724))

(declare-fun d!1080726 () Bool)

(declare-fun res!1495984 () Bool)

(declare-fun e!2279986 () Bool)

(assert (=> d!1080726 (=> (not res!1495984) (not e!2279986))))

(assert (=> d!1080726 (= res!1495984 (not (isEmpty!23066 (originalCharacters!6564 token!511))))))

(assert (=> d!1080726 (= (inv!52333 token!511) e!2279986)))

(declare-fun b!3682009 () Bool)

(declare-fun res!1495985 () Bool)

(assert (=> b!3682009 (=> (not res!1495985) (not e!2279986))))

(assert (=> b!3682009 (= res!1495985 (= (originalCharacters!6564 token!511) (list!14436 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (value!187185 token!511)))))))

(declare-fun b!3682010 () Bool)

(assert (=> b!3682010 (= e!2279986 (= (size!29695 token!511) (size!29697 (originalCharacters!6564 token!511))))))

(assert (= (and d!1080726 res!1495984) b!3682009))

(assert (= (and b!3682009 res!1495985) b!3682010))

(declare-fun b_lambda!109361 () Bool)

(assert (=> (not b_lambda!109361) (not b!3682009)))

(assert (=> b!3682009 t!300748))

(declare-fun b_and!275099 () Bool)

(assert (= b_and!275091 (and (=> t!300748 result!259814) b_and!275099)))

(assert (=> b!3682009 t!300750))

(declare-fun b_and!275101 () Bool)

(assert (= b_and!275093 (and (=> t!300750 result!259816) b_and!275101)))

(assert (=> b!3682009 t!300752))

(declare-fun b_and!275103 () Bool)

(assert (= b_and!275095 (and (=> t!300752 result!259818) b_and!275103)))

(assert (=> b!3682009 t!300754))

(declare-fun b_and!275105 () Bool)

(assert (= b_and!275097 (and (=> t!300754 result!259820) b_and!275105)))

(declare-fun m!4192927 () Bool)

(assert (=> d!1080726 m!4192927))

(assert (=> b!3682009 m!4192885))

(assert (=> b!3682009 m!4192885))

(declare-fun m!4192929 () Bool)

(assert (=> b!3682009 m!4192929))

(declare-fun m!4192931 () Bool)

(assert (=> b!3682010 m!4192931))

(assert (=> start!345438 d!1080726))

(declare-fun d!1080728 () Bool)

(assert (=> d!1080728 (= suffix!1395 (_2!22484 lt!1287573))))

(declare-fun lt!1287815 () Unit!56926)

(assert (=> d!1080728 (= lt!1287815 (choose!22028 lt!1287575 suffix!1395 lt!1287589 (_2!22484 lt!1287573) lt!1287597))))

(assert (=> d!1080728 (isPrefix!3213 lt!1287575 lt!1287597)))

(assert (=> d!1080728 (= (lemmaSamePrefixThenSameSuffix!1540 lt!1287575 suffix!1395 lt!1287589 (_2!22484 lt!1287573) lt!1287597) lt!1287815)))

(declare-fun bs!573624 () Bool)

(assert (= bs!573624 d!1080728))

(declare-fun m!4192933 () Bool)

(assert (=> bs!573624 m!4192933))

(assert (=> bs!573624 m!4192397))

(assert (=> b!3681597 d!1080728))

(declare-fun d!1080730 () Bool)

(declare-fun lt!1287818 () Bool)

(declare-fun content!5635 (List!38959) (InoxSet Rule!11500))

(assert (=> d!1080730 (= lt!1287818 (select (content!5635 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2279991 () Bool)

(assert (=> d!1080730 (= lt!1287818 e!2279991)))

(declare-fun res!1495990 () Bool)

(assert (=> d!1080730 (=> (not res!1495990) (not e!2279991))))

(assert (=> d!1080730 (= res!1495990 ((_ is Cons!38835) rules!3307))))

(assert (=> d!1080730 (= (contains!7767 rules!3307 anOtherTypeRule!33) lt!1287818)))

(declare-fun b!3682015 () Bool)

(declare-fun e!2279992 () Bool)

(assert (=> b!3682015 (= e!2279991 e!2279992)))

(declare-fun res!1495991 () Bool)

(assert (=> b!3682015 (=> res!1495991 e!2279992)))

(assert (=> b!3682015 (= res!1495991 (= (h!44255 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3682016 () Bool)

(assert (=> b!3682016 (= e!2279992 (contains!7767 (t!300714 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1080730 res!1495990) b!3682015))

(assert (= (and b!3682015 (not res!1495991)) b!3682016))

(declare-fun m!4192935 () Bool)

(assert (=> d!1080730 m!4192935))

(declare-fun m!4192937 () Bool)

(assert (=> d!1080730 m!4192937))

(declare-fun m!4192939 () Bool)

(assert (=> b!3682016 m!4192939))

(assert (=> b!3681596 d!1080730))

(declare-fun d!1080732 () Bool)

(assert (=> d!1080732 (not (matchR!5178 (regex!5850 rule!403) lt!1287575))))

(declare-fun lt!1287822 () Unit!56926)

(declare-fun choose!22032 (LexerInterface!5439 List!38959 Rule!11500 List!38958 List!38958 Rule!11500) Unit!56926)

(assert (=> d!1080732 (= lt!1287822 (choose!22032 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287575 lt!1287597 rule!403))))

(assert (=> d!1080732 (isPrefix!3213 lt!1287575 lt!1287597)))

(assert (=> d!1080732 (= (lemmaMaxPrefNoSmallerRuleMatches!258 thiss!23823 rules!3307 (rule!8688 (_1!22484 lt!1287573)) lt!1287575 lt!1287597 rule!403) lt!1287822)))

(declare-fun bs!573625 () Bool)

(assert (= bs!573625 d!1080732))

(assert (=> bs!573625 m!4192293))

(declare-fun m!4192955 () Bool)

(assert (=> bs!573625 m!4192955))

(assert (=> bs!573625 m!4192397))

(assert (=> b!3681579 d!1080732))

(declare-fun b!3682058 () Bool)

(declare-fun e!2280019 () Bool)

(declare-fun lt!1287829 () Bool)

(declare-fun call!266755 () Bool)

(assert (=> b!3682058 (= e!2280019 (= lt!1287829 call!266755))))

(declare-fun b!3682059 () Bool)

(declare-fun res!1496016 () Bool)

(declare-fun e!2280024 () Bool)

(assert (=> b!3682059 (=> (not res!1496016) (not e!2280024))))

(assert (=> b!3682059 (= res!1496016 (not call!266755))))

(declare-fun b!3682060 () Bool)

(declare-fun e!2280023 () Bool)

(declare-fun e!2280021 () Bool)

(assert (=> b!3682060 (= e!2280023 e!2280021)))

(declare-fun res!1496010 () Bool)

(assert (=> b!3682060 (=> res!1496010 e!2280021)))

(assert (=> b!3682060 (= res!1496010 call!266755)))

(declare-fun b!3682061 () Bool)

(declare-fun res!1496017 () Bool)

(assert (=> b!3682061 (=> res!1496017 e!2280021)))

(assert (=> b!3682061 (= res!1496017 (not (isEmpty!23066 (tail!5695 lt!1287575))))))

(declare-fun b!3682062 () Bool)

(declare-fun res!1496013 () Bool)

(assert (=> b!3682062 (=> (not res!1496013) (not e!2280024))))

(assert (=> b!3682062 (= res!1496013 (isEmpty!23066 (tail!5695 lt!1287575)))))

(declare-fun b!3682063 () Bool)

(declare-fun e!2280022 () Bool)

(assert (=> b!3682063 (= e!2280019 e!2280022)))

(declare-fun c!636960 () Bool)

(assert (=> b!3682063 (= c!636960 ((_ is EmptyLang!10609) (regex!5850 rule!403)))))

(declare-fun bm!266750 () Bool)

(assert (=> bm!266750 (= call!266755 (isEmpty!23066 lt!1287575))))

(declare-fun b!3682064 () Bool)

(declare-fun e!2280018 () Bool)

(declare-fun nullable!3697 (Regex!10609) Bool)

(assert (=> b!3682064 (= e!2280018 (nullable!3697 (regex!5850 rule!403)))))

(declare-fun b!3682065 () Bool)

(declare-fun res!1496012 () Bool)

(declare-fun e!2280020 () Bool)

(assert (=> b!3682065 (=> res!1496012 e!2280020)))

(assert (=> b!3682065 (= res!1496012 (not ((_ is ElementMatch!10609) (regex!5850 rule!403))))))

(assert (=> b!3682065 (= e!2280022 e!2280020)))

(declare-fun b!3682066 () Bool)

(declare-fun res!1496011 () Bool)

(assert (=> b!3682066 (=> res!1496011 e!2280020)))

(assert (=> b!3682066 (= res!1496011 e!2280024)))

(declare-fun res!1496014 () Bool)

(assert (=> b!3682066 (=> (not res!1496014) (not e!2280024))))

(assert (=> b!3682066 (= res!1496014 lt!1287829)))

(declare-fun b!3682067 () Bool)

(assert (=> b!3682067 (= e!2280020 e!2280023)))

(declare-fun res!1496015 () Bool)

(assert (=> b!3682067 (=> (not res!1496015) (not e!2280023))))

(assert (=> b!3682067 (= res!1496015 (not lt!1287829))))

(declare-fun d!1080736 () Bool)

(assert (=> d!1080736 e!2280019))

(declare-fun c!636958 () Bool)

(assert (=> d!1080736 (= c!636958 ((_ is EmptyExpr!10609) (regex!5850 rule!403)))))

(assert (=> d!1080736 (= lt!1287829 e!2280018)))

(declare-fun c!636959 () Bool)

(assert (=> d!1080736 (= c!636959 (isEmpty!23066 lt!1287575))))

(assert (=> d!1080736 (validRegex!4858 (regex!5850 rule!403))))

(assert (=> d!1080736 (= (matchR!5178 (regex!5850 rule!403) lt!1287575) lt!1287829)))

(declare-fun b!3682068 () Bool)

(declare-fun derivativeStep!3246 (Regex!10609 C!21404) Regex!10609)

(assert (=> b!3682068 (= e!2280018 (matchR!5178 (derivativeStep!3246 (regex!5850 rule!403) (head!7904 lt!1287575)) (tail!5695 lt!1287575)))))

(declare-fun b!3682069 () Bool)

(assert (=> b!3682069 (= e!2280022 (not lt!1287829))))

(declare-fun b!3682070 () Bool)

(assert (=> b!3682070 (= e!2280024 (= (head!7904 lt!1287575) (c!636854 (regex!5850 rule!403))))))

(declare-fun b!3682071 () Bool)

(assert (=> b!3682071 (= e!2280021 (not (= (head!7904 lt!1287575) (c!636854 (regex!5850 rule!403)))))))

(assert (= (and d!1080736 c!636959) b!3682064))

(assert (= (and d!1080736 (not c!636959)) b!3682068))

(assert (= (and d!1080736 c!636958) b!3682058))

(assert (= (and d!1080736 (not c!636958)) b!3682063))

(assert (= (and b!3682063 c!636960) b!3682069))

(assert (= (and b!3682063 (not c!636960)) b!3682065))

(assert (= (and b!3682065 (not res!1496012)) b!3682066))

(assert (= (and b!3682066 res!1496014) b!3682059))

(assert (= (and b!3682059 res!1496016) b!3682062))

(assert (= (and b!3682062 res!1496013) b!3682070))

(assert (= (and b!3682066 (not res!1496011)) b!3682067))

(assert (= (and b!3682067 res!1496015) b!3682060))

(assert (= (and b!3682060 (not res!1496010)) b!3682061))

(assert (= (and b!3682061 (not res!1496017)) b!3682071))

(assert (= (or b!3682058 b!3682059 b!3682060) bm!266750))

(assert (=> b!3682062 m!4192541))

(assert (=> b!3682062 m!4192541))

(declare-fun m!4192973 () Bool)

(assert (=> b!3682062 m!4192973))

(declare-fun m!4192975 () Bool)

(assert (=> bm!266750 m!4192975))

(declare-fun m!4192977 () Bool)

(assert (=> b!3682064 m!4192977))

(assert (=> b!3682068 m!4192537))

(assert (=> b!3682068 m!4192537))

(declare-fun m!4192979 () Bool)

(assert (=> b!3682068 m!4192979))

(assert (=> b!3682068 m!4192541))

(assert (=> b!3682068 m!4192979))

(assert (=> b!3682068 m!4192541))

(declare-fun m!4192981 () Bool)

(assert (=> b!3682068 m!4192981))

(assert (=> d!1080736 m!4192975))

(assert (=> d!1080736 m!4192505))

(assert (=> b!3682070 m!4192537))

(assert (=> b!3682061 m!4192541))

(assert (=> b!3682061 m!4192541))

(assert (=> b!3682061 m!4192973))

(assert (=> b!3682071 m!4192537))

(assert (=> b!3681616 d!1080736))

(declare-fun d!1080748 () Bool)

(declare-fun res!1496029 () Bool)

(declare-fun e!2280031 () Bool)

(assert (=> d!1080748 (=> (not res!1496029) (not e!2280031))))

(assert (=> d!1080748 (= res!1496029 (validRegex!4858 (regex!5850 rule!403)))))

(assert (=> d!1080748 (= (ruleValid!2114 thiss!23823 rule!403) e!2280031)))

(declare-fun b!3682085 () Bool)

(declare-fun res!1496030 () Bool)

(assert (=> b!3682085 (=> (not res!1496030) (not e!2280031))))

(assert (=> b!3682085 (= res!1496030 (not (nullable!3697 (regex!5850 rule!403))))))

(declare-fun b!3682086 () Bool)

(assert (=> b!3682086 (= e!2280031 (not (= (tag!6654 rule!403) (String!43735 ""))))))

(assert (= (and d!1080748 res!1496029) b!3682085))

(assert (= (and b!3682085 res!1496030) b!3682086))

(assert (=> d!1080748 m!4192505))

(assert (=> b!3682085 m!4192977))

(assert (=> b!3681616 d!1080748))

(declare-fun d!1080750 () Bool)

(assert (=> d!1080750 (ruleValid!2114 thiss!23823 rule!403)))

(declare-fun lt!1287841 () Unit!56926)

(declare-fun choose!22033 (LexerInterface!5439 Rule!11500 List!38959) Unit!56926)

(assert (=> d!1080750 (= lt!1287841 (choose!22033 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1080750 (contains!7767 rules!3307 rule!403)))

(assert (=> d!1080750 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1268 thiss!23823 rule!403 rules!3307) lt!1287841)))

(declare-fun bs!573632 () Bool)

(assert (= bs!573632 d!1080750))

(assert (=> bs!573632 m!4192295))

(declare-fun m!4193041 () Bool)

(assert (=> bs!573632 m!4193041))

(assert (=> bs!573632 m!4192333))

(assert (=> b!3681616 d!1080750))

(declare-fun b!3682091 () Bool)

(declare-fun e!2280036 () Bool)

(declare-fun lt!1287842 () Bool)

(declare-fun call!266756 () Bool)

(assert (=> b!3682091 (= e!2280036 (= lt!1287842 call!266756))))

(declare-fun b!3682092 () Bool)

(declare-fun res!1496037 () Bool)

(declare-fun e!2280041 () Bool)

(assert (=> b!3682092 (=> (not res!1496037) (not e!2280041))))

(assert (=> b!3682092 (= res!1496037 (not call!266756))))

(declare-fun b!3682093 () Bool)

(declare-fun e!2280040 () Bool)

(declare-fun e!2280038 () Bool)

(assert (=> b!3682093 (= e!2280040 e!2280038)))

(declare-fun res!1496031 () Bool)

(assert (=> b!3682093 (=> res!1496031 e!2280038)))

(assert (=> b!3682093 (= res!1496031 call!266756)))

(declare-fun b!3682094 () Bool)

(declare-fun res!1496038 () Bool)

(assert (=> b!3682094 (=> res!1496038 e!2280038)))

(assert (=> b!3682094 (= res!1496038 (not (isEmpty!23066 (tail!5695 lt!1287589))))))

(declare-fun b!3682095 () Bool)

(declare-fun res!1496034 () Bool)

(assert (=> b!3682095 (=> (not res!1496034) (not e!2280041))))

(assert (=> b!3682095 (= res!1496034 (isEmpty!23066 (tail!5695 lt!1287589)))))

(declare-fun b!3682096 () Bool)

(declare-fun e!2280039 () Bool)

(assert (=> b!3682096 (= e!2280036 e!2280039)))

(declare-fun c!636966 () Bool)

(assert (=> b!3682096 (= c!636966 ((_ is EmptyLang!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun bm!266751 () Bool)

(assert (=> bm!266751 (= call!266756 (isEmpty!23066 lt!1287589))))

(declare-fun b!3682097 () Bool)

(declare-fun e!2280035 () Bool)

(assert (=> b!3682097 (= e!2280035 (nullable!3697 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3682098 () Bool)

(declare-fun res!1496033 () Bool)

(declare-fun e!2280037 () Bool)

(assert (=> b!3682098 (=> res!1496033 e!2280037)))

(assert (=> b!3682098 (= res!1496033 (not ((_ is ElementMatch!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))

(assert (=> b!3682098 (= e!2280039 e!2280037)))

(declare-fun b!3682099 () Bool)

(declare-fun res!1496032 () Bool)

(assert (=> b!3682099 (=> res!1496032 e!2280037)))

(assert (=> b!3682099 (= res!1496032 e!2280041)))

(declare-fun res!1496035 () Bool)

(assert (=> b!3682099 (=> (not res!1496035) (not e!2280041))))

(assert (=> b!3682099 (= res!1496035 lt!1287842)))

(declare-fun b!3682100 () Bool)

(assert (=> b!3682100 (= e!2280037 e!2280040)))

(declare-fun res!1496036 () Bool)

(assert (=> b!3682100 (=> (not res!1496036) (not e!2280040))))

(assert (=> b!3682100 (= res!1496036 (not lt!1287842))))

(declare-fun d!1080768 () Bool)

(assert (=> d!1080768 e!2280036))

(declare-fun c!636964 () Bool)

(assert (=> d!1080768 (= c!636964 ((_ is EmptyExpr!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(assert (=> d!1080768 (= lt!1287842 e!2280035)))

(declare-fun c!636965 () Bool)

(assert (=> d!1080768 (= c!636965 (isEmpty!23066 lt!1287589))))

(assert (=> d!1080768 (validRegex!4858 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080768 (= (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589) lt!1287842)))

(declare-fun b!3682101 () Bool)

(assert (=> b!3682101 (= e!2280035 (matchR!5178 (derivativeStep!3246 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) (head!7904 lt!1287589)) (tail!5695 lt!1287589)))))

(declare-fun b!3682102 () Bool)

(assert (=> b!3682102 (= e!2280039 (not lt!1287842))))

(declare-fun b!3682103 () Bool)

(assert (=> b!3682103 (= e!2280041 (= (head!7904 lt!1287589) (c!636854 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))

(declare-fun b!3682104 () Bool)

(assert (=> b!3682104 (= e!2280038 (not (= (head!7904 lt!1287589) (c!636854 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))))

(assert (= (and d!1080768 c!636965) b!3682097))

(assert (= (and d!1080768 (not c!636965)) b!3682101))

(assert (= (and d!1080768 c!636964) b!3682091))

(assert (= (and d!1080768 (not c!636964)) b!3682096))

(assert (= (and b!3682096 c!636966) b!3682102))

(assert (= (and b!3682096 (not c!636966)) b!3682098))

(assert (= (and b!3682098 (not res!1496033)) b!3682099))

(assert (= (and b!3682099 res!1496035) b!3682092))

(assert (= (and b!3682092 res!1496037) b!3682095))

(assert (= (and b!3682095 res!1496034) b!3682103))

(assert (= (and b!3682099 (not res!1496032)) b!3682100))

(assert (= (and b!3682100 res!1496036) b!3682093))

(assert (= (and b!3682093 (not res!1496031)) b!3682094))

(assert (= (and b!3682094 (not res!1496038)) b!3682104))

(assert (= (or b!3682091 b!3682092 b!3682093) bm!266751))

(assert (=> b!3682095 m!4192529))

(assert (=> b!3682095 m!4192529))

(declare-fun m!4193043 () Bool)

(assert (=> b!3682095 m!4193043))

(declare-fun m!4193045 () Bool)

(assert (=> bm!266751 m!4193045))

(declare-fun m!4193047 () Bool)

(assert (=> b!3682097 m!4193047))

(assert (=> b!3682101 m!4192323))

(assert (=> b!3682101 m!4192323))

(declare-fun m!4193049 () Bool)

(assert (=> b!3682101 m!4193049))

(assert (=> b!3682101 m!4192529))

(assert (=> b!3682101 m!4193049))

(assert (=> b!3682101 m!4192529))

(declare-fun m!4193051 () Bool)

(assert (=> b!3682101 m!4193051))

(assert (=> d!1080768 m!4193045))

(assert (=> d!1080768 m!4192447))

(assert (=> b!3682103 m!4192323))

(assert (=> b!3682094 m!4192529))

(assert (=> b!3682094 m!4192529))

(assert (=> b!3682094 m!4193043))

(assert (=> b!3682104 m!4192323))

(assert (=> b!3681615 d!1080768))

(declare-fun d!1080770 () Bool)

(assert (=> d!1080770 (not (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589))))

(declare-fun lt!1287843 () Unit!56926)

(assert (=> d!1080770 (= lt!1287843 (choose!22017 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287555))))

(assert (=> d!1080770 (validRegex!4858 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080770 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!798 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287589 lt!1287555) lt!1287843)))

(declare-fun bs!573633 () Bool)

(assert (= bs!573633 d!1080770))

(assert (=> bs!573633 m!4192363))

(declare-fun m!4193053 () Bool)

(assert (=> bs!573633 m!4193053))

(assert (=> bs!573633 m!4192447))

(assert (=> bm!266701 d!1080770))

(declare-fun d!1080772 () Bool)

(assert (=> d!1080772 (not (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287575))))

(declare-fun lt!1287844 () Unit!56926)

(assert (=> d!1080772 (= lt!1287844 (choose!22032 thiss!23823 rules!3307 rule!403 lt!1287575 lt!1287575 (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080772 (isPrefix!3213 lt!1287575 lt!1287575)))

(assert (=> d!1080772 (= (lemmaMaxPrefNoSmallerRuleMatches!258 thiss!23823 rules!3307 rule!403 lt!1287575 lt!1287575 (rule!8688 (_1!22484 lt!1287573))) lt!1287844)))

(declare-fun bs!573634 () Bool)

(assert (= bs!573634 d!1080772))

(assert (=> bs!573634 m!4192375))

(declare-fun m!4193055 () Bool)

(assert (=> bs!573634 m!4193055))

(assert (=> bs!573634 m!4192865))

(assert (=> b!3681576 d!1080772))

(declare-fun b!3682105 () Bool)

(declare-fun e!2280043 () Bool)

(declare-fun lt!1287845 () Bool)

(declare-fun call!266757 () Bool)

(assert (=> b!3682105 (= e!2280043 (= lt!1287845 call!266757))))

(declare-fun b!3682106 () Bool)

(declare-fun res!1496045 () Bool)

(declare-fun e!2280048 () Bool)

(assert (=> b!3682106 (=> (not res!1496045) (not e!2280048))))

(assert (=> b!3682106 (= res!1496045 (not call!266757))))

(declare-fun b!3682107 () Bool)

(declare-fun e!2280047 () Bool)

(declare-fun e!2280045 () Bool)

(assert (=> b!3682107 (= e!2280047 e!2280045)))

(declare-fun res!1496039 () Bool)

(assert (=> b!3682107 (=> res!1496039 e!2280045)))

(assert (=> b!3682107 (= res!1496039 call!266757)))

(declare-fun b!3682108 () Bool)

(declare-fun res!1496046 () Bool)

(assert (=> b!3682108 (=> res!1496046 e!2280045)))

(assert (=> b!3682108 (= res!1496046 (not (isEmpty!23066 (tail!5695 lt!1287575))))))

(declare-fun b!3682109 () Bool)

(declare-fun res!1496042 () Bool)

(assert (=> b!3682109 (=> (not res!1496042) (not e!2280048))))

(assert (=> b!3682109 (= res!1496042 (isEmpty!23066 (tail!5695 lt!1287575)))))

(declare-fun b!3682110 () Bool)

(declare-fun e!2280046 () Bool)

(assert (=> b!3682110 (= e!2280043 e!2280046)))

(declare-fun c!636969 () Bool)

(assert (=> b!3682110 (= c!636969 ((_ is EmptyLang!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun bm!266752 () Bool)

(assert (=> bm!266752 (= call!266757 (isEmpty!23066 lt!1287575))))

(declare-fun b!3682111 () Bool)

(declare-fun e!2280042 () Bool)

(assert (=> b!3682111 (= e!2280042 (nullable!3697 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(declare-fun b!3682112 () Bool)

(declare-fun res!1496041 () Bool)

(declare-fun e!2280044 () Bool)

(assert (=> b!3682112 (=> res!1496041 e!2280044)))

(assert (=> b!3682112 (= res!1496041 (not ((_ is ElementMatch!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))

(assert (=> b!3682112 (= e!2280046 e!2280044)))

(declare-fun b!3682113 () Bool)

(declare-fun res!1496040 () Bool)

(assert (=> b!3682113 (=> res!1496040 e!2280044)))

(assert (=> b!3682113 (= res!1496040 e!2280048)))

(declare-fun res!1496043 () Bool)

(assert (=> b!3682113 (=> (not res!1496043) (not e!2280048))))

(assert (=> b!3682113 (= res!1496043 lt!1287845)))

(declare-fun b!3682114 () Bool)

(assert (=> b!3682114 (= e!2280044 e!2280047)))

(declare-fun res!1496044 () Bool)

(assert (=> b!3682114 (=> (not res!1496044) (not e!2280047))))

(assert (=> b!3682114 (= res!1496044 (not lt!1287845))))

(declare-fun d!1080774 () Bool)

(assert (=> d!1080774 e!2280043))

(declare-fun c!636967 () Bool)

(assert (=> d!1080774 (= c!636967 ((_ is EmptyExpr!10609) (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))

(assert (=> d!1080774 (= lt!1287845 e!2280042)))

(declare-fun c!636968 () Bool)

(assert (=> d!1080774 (= c!636968 (isEmpty!23066 lt!1287575))))

(assert (=> d!1080774 (validRegex!4858 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))

(assert (=> d!1080774 (= (matchR!5178 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287575) lt!1287845)))

(declare-fun b!3682115 () Bool)

(assert (=> b!3682115 (= e!2280042 (matchR!5178 (derivativeStep!3246 (regex!5850 (rule!8688 (_1!22484 lt!1287573))) (head!7904 lt!1287575)) (tail!5695 lt!1287575)))))

(declare-fun b!3682116 () Bool)

(assert (=> b!3682116 (= e!2280046 (not lt!1287845))))

(declare-fun b!3682117 () Bool)

(assert (=> b!3682117 (= e!2280048 (= (head!7904 lt!1287575) (c!636854 (regex!5850 (rule!8688 (_1!22484 lt!1287573))))))))

(declare-fun b!3682118 () Bool)

(assert (=> b!3682118 (= e!2280045 (not (= (head!7904 lt!1287575) (c!636854 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))))))))

(assert (= (and d!1080774 c!636968) b!3682111))

(assert (= (and d!1080774 (not c!636968)) b!3682115))

(assert (= (and d!1080774 c!636967) b!3682105))

(assert (= (and d!1080774 (not c!636967)) b!3682110))

(assert (= (and b!3682110 c!636969) b!3682116))

(assert (= (and b!3682110 (not c!636969)) b!3682112))

(assert (= (and b!3682112 (not res!1496041)) b!3682113))

(assert (= (and b!3682113 res!1496043) b!3682106))

(assert (= (and b!3682106 res!1496045) b!3682109))

(assert (= (and b!3682109 res!1496042) b!3682117))

(assert (= (and b!3682113 (not res!1496040)) b!3682114))

(assert (= (and b!3682114 res!1496044) b!3682107))

(assert (= (and b!3682107 (not res!1496039)) b!3682108))

(assert (= (and b!3682108 (not res!1496046)) b!3682118))

(assert (= (or b!3682105 b!3682106 b!3682107) bm!266752))

(assert (=> b!3682109 m!4192541))

(assert (=> b!3682109 m!4192541))

(assert (=> b!3682109 m!4192973))

(assert (=> bm!266752 m!4192975))

(assert (=> b!3682111 m!4193047))

(assert (=> b!3682115 m!4192537))

(assert (=> b!3682115 m!4192537))

(declare-fun m!4193057 () Bool)

(assert (=> b!3682115 m!4193057))

(assert (=> b!3682115 m!4192541))

(assert (=> b!3682115 m!4193057))

(assert (=> b!3682115 m!4192541))

(declare-fun m!4193059 () Bool)

(assert (=> b!3682115 m!4193059))

(assert (=> d!1080774 m!4192975))

(assert (=> d!1080774 m!4192447))

(assert (=> b!3682117 m!4192537))

(assert (=> b!3682108 m!4192541))

(assert (=> b!3682108 m!4192541))

(assert (=> b!3682108 m!4192973))

(assert (=> b!3682118 m!4192537))

(assert (=> b!3681576 d!1080774))

(declare-fun d!1080776 () Bool)

(assert (=> d!1080776 (= (isEmpty!23066 (getSuffix!1766 lt!1287575 lt!1287575)) ((_ is Nil!38834) (getSuffix!1766 lt!1287575 lt!1287575)))))

(assert (=> b!3681576 d!1080776))

(declare-fun d!1080778 () Bool)

(declare-fun lt!1287848 () List!38958)

(assert (=> d!1080778 (= (++!9666 lt!1287575 lt!1287848) lt!1287575)))

(declare-fun e!2280049 () List!38958)

(assert (=> d!1080778 (= lt!1287848 e!2280049)))

(declare-fun c!636971 () Bool)

(assert (=> d!1080778 (= c!636971 ((_ is Cons!38834) lt!1287575))))

(assert (=> d!1080778 (>= (size!29697 lt!1287575) (size!29697 lt!1287575))))

(assert (=> d!1080778 (= (getSuffix!1766 lt!1287575 lt!1287575) lt!1287848)))

(declare-fun b!3682119 () Bool)

(assert (=> b!3682119 (= e!2280049 (getSuffix!1766 (tail!5695 lt!1287575) (t!300713 lt!1287575)))))

(declare-fun b!3682120 () Bool)

(assert (=> b!3682120 (= e!2280049 lt!1287575)))

(assert (= (and d!1080778 c!636971) b!3682119))

(assert (= (and d!1080778 (not c!636971)) b!3682120))

(declare-fun m!4193061 () Bool)

(assert (=> d!1080778 m!4193061))

(assert (=> d!1080778 m!4192327))

(assert (=> d!1080778 m!4192327))

(assert (=> b!3682119 m!4192541))

(assert (=> b!3682119 m!4192541))

(declare-fun m!4193063 () Bool)

(assert (=> b!3682119 m!4193063))

(assert (=> b!3681576 d!1080778))

(declare-fun d!1080780 () Bool)

(assert (=> d!1080780 (isEmpty!23066 (getSuffix!1766 lt!1287575 lt!1287575))))

(declare-fun lt!1287851 () Unit!56926)

(declare-fun choose!22035 (List!38958) Unit!56926)

(assert (=> d!1080780 (= lt!1287851 (choose!22035 lt!1287575))))

(assert (=> d!1080780 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!230 lt!1287575) lt!1287851)))

(declare-fun bs!573635 () Bool)

(assert (= bs!573635 d!1080780))

(assert (=> bs!573635 m!4192369))

(assert (=> bs!573635 m!4192369))

(assert (=> bs!573635 m!4192371))

(declare-fun m!4193065 () Bool)

(assert (=> bs!573635 m!4193065))

(assert (=> b!3681576 d!1080780))

(declare-fun d!1080782 () Bool)

(assert (=> d!1080782 (= (inv!52330 (tag!6654 rule!403)) (= (mod (str.len (value!187184 (tag!6654 rule!403))) 2) 0))))

(assert (=> b!3681614 d!1080782))

(declare-fun d!1080784 () Bool)

(declare-fun res!1496047 () Bool)

(declare-fun e!2280050 () Bool)

(assert (=> d!1080784 (=> (not res!1496047) (not e!2280050))))

(assert (=> d!1080784 (= res!1496047 (semiInverseModEq!2496 (toChars!8005 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 rule!403))))))

(assert (=> d!1080784 (= (inv!52334 (transformation!5850 rule!403)) e!2280050)))

(declare-fun b!3682121 () Bool)

(assert (=> b!3682121 (= e!2280050 (equivClasses!2395 (toChars!8005 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 rule!403))))))

(assert (= (and d!1080784 res!1496047) b!3682121))

(declare-fun m!4193067 () Bool)

(assert (=> d!1080784 m!4193067))

(declare-fun m!4193069 () Bool)

(assert (=> b!3682121 m!4193069))

(assert (=> b!3681614 d!1080784))

(declare-fun d!1080786 () Bool)

(assert (=> d!1080786 (= (isEmpty!23066 suffix!1395) ((_ is Nil!38834) suffix!1395))))

(assert (=> b!3681613 d!1080786))

(declare-fun d!1080788 () Bool)

(declare-fun res!1496052 () Bool)

(declare-fun e!2280055 () Bool)

(assert (=> d!1080788 (=> res!1496052 e!2280055)))

(assert (=> d!1080788 (= res!1496052 (not ((_ is Cons!38835) rules!3307)))))

(assert (=> d!1080788 (= (sepAndNonSepRulesDisjointChars!2018 rules!3307 rules!3307) e!2280055)))

(declare-fun b!3682126 () Bool)

(declare-fun e!2280056 () Bool)

(assert (=> b!3682126 (= e!2280055 e!2280056)))

(declare-fun res!1496053 () Bool)

(assert (=> b!3682126 (=> (not res!1496053) (not e!2280056))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!920 (Rule!11500 List!38959) Bool)

(assert (=> b!3682126 (= res!1496053 (ruleDisjointCharsFromAllFromOtherType!920 (h!44255 rules!3307) rules!3307))))

(declare-fun b!3682127 () Bool)

(assert (=> b!3682127 (= e!2280056 (sepAndNonSepRulesDisjointChars!2018 rules!3307 (t!300714 rules!3307)))))

(assert (= (and d!1080788 (not res!1496052)) b!3682126))

(assert (= (and b!3682126 res!1496053) b!3682127))

(declare-fun m!4193071 () Bool)

(assert (=> b!3682126 m!4193071))

(declare-fun m!4193073 () Bool)

(assert (=> b!3682127 m!4193073))

(assert (=> b!3681593 d!1080788))

(declare-fun d!1080790 () Bool)

(assert (=> d!1080790 (= lt!1287553 (_2!22484 lt!1287573))))

(declare-fun lt!1287852 () Unit!56926)

(assert (=> d!1080790 (= lt!1287852 (choose!22028 lt!1287575 lt!1287553 lt!1287589 (_2!22484 lt!1287573) lt!1287597))))

(assert (=> d!1080790 (isPrefix!3213 lt!1287575 lt!1287597)))

(assert (=> d!1080790 (= (lemmaSamePrefixThenSameSuffix!1540 lt!1287575 lt!1287553 lt!1287589 (_2!22484 lt!1287573) lt!1287597) lt!1287852)))

(declare-fun bs!573636 () Bool)

(assert (= bs!573636 d!1080790))

(declare-fun m!4193075 () Bool)

(assert (=> bs!573636 m!4193075))

(assert (=> bs!573636 m!4192397))

(assert (=> b!3681575 d!1080790))

(declare-fun d!1080792 () Bool)

(declare-fun lt!1287853 () Bool)

(assert (=> d!1080792 (= lt!1287853 (select (content!5632 lt!1287549) lt!1287555))))

(declare-fun e!2280058 () Bool)

(assert (=> d!1080792 (= lt!1287853 e!2280058)))

(declare-fun res!1496054 () Bool)

(assert (=> d!1080792 (=> (not res!1496054) (not e!2280058))))

(assert (=> d!1080792 (= res!1496054 ((_ is Cons!38834) lt!1287549))))

(assert (=> d!1080792 (= (contains!7768 lt!1287549 lt!1287555) lt!1287853)))

(declare-fun b!3682128 () Bool)

(declare-fun e!2280057 () Bool)

(assert (=> b!3682128 (= e!2280058 e!2280057)))

(declare-fun res!1496055 () Bool)

(assert (=> b!3682128 (=> res!1496055 e!2280057)))

(assert (=> b!3682128 (= res!1496055 (= (h!44254 lt!1287549) lt!1287555))))

(declare-fun b!3682129 () Bool)

(assert (=> b!3682129 (= e!2280057 (contains!7768 (t!300713 lt!1287549) lt!1287555))))

(assert (= (and d!1080792 res!1496054) b!3682128))

(assert (= (and b!3682128 (not res!1496055)) b!3682129))

(assert (=> d!1080792 m!4192887))

(declare-fun m!4193077 () Bool)

(assert (=> d!1080792 m!4193077))

(declare-fun m!4193079 () Bool)

(assert (=> b!3682129 m!4193079))

(assert (=> b!3681575 d!1080792))

(declare-fun d!1080794 () Bool)

(declare-fun lt!1287856 () Int)

(assert (=> d!1080794 (= lt!1287856 (size!29697 (list!14436 lt!1287581)))))

(declare-fun size!29699 (Conc!11889) Int)

(assert (=> d!1080794 (= lt!1287856 (size!29699 (c!636855 lt!1287581)))))

(assert (=> d!1080794 (= (size!29696 lt!1287581) lt!1287856)))

(declare-fun bs!573637 () Bool)

(assert (= bs!573637 d!1080794))

(assert (=> bs!573637 m!4192357))

(assert (=> bs!573637 m!4192357))

(declare-fun m!4193081 () Bool)

(assert (=> bs!573637 m!4193081))

(declare-fun m!4193083 () Bool)

(assert (=> bs!573637 m!4193083))

(assert (=> b!3681575 d!1080794))

(declare-fun d!1080796 () Bool)

(assert (=> d!1080796 (= lt!1287589 lt!1287575)))

(declare-fun lt!1287859 () Unit!56926)

(declare-fun choose!22037 (List!38958 List!38958 List!38958) Unit!56926)

(assert (=> d!1080796 (= lt!1287859 (choose!22037 lt!1287589 lt!1287575 lt!1287597))))

(assert (=> d!1080796 (isPrefix!3213 lt!1287589 lt!1287597)))

(assert (=> d!1080796 (= (lemmaIsPrefixSameLengthThenSameList!675 lt!1287589 lt!1287575 lt!1287597) lt!1287859)))

(declare-fun bs!573638 () Bool)

(assert (= bs!573638 d!1080796))

(declare-fun m!4193085 () Bool)

(assert (=> bs!573638 m!4193085))

(assert (=> bs!573638 m!4192381))

(assert (=> b!3681575 d!1080796))

(declare-fun d!1080798 () Bool)

(assert (=> d!1080798 (= (maxPrefixOneRule!2111 thiss!23823 rule!403 lt!1287597) (Some!8327 (tuple2!38701 (Token!11067 (apply!9352 (transformation!5850 rule!403) (seqFromList!4399 lt!1287575)) rule!403 (size!29697 lt!1287575) lt!1287575) lt!1287553)))))

(declare-fun lt!1287860 () Unit!56926)

(assert (=> d!1080798 (= lt!1287860 (choose!22029 thiss!23823 rules!3307 lt!1287575 lt!1287597 lt!1287553 rule!403))))

(assert (=> d!1080798 (not (isEmpty!23067 rules!3307))))

(assert (=> d!1080798 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1167 thiss!23823 rules!3307 lt!1287575 lt!1287597 lt!1287553 rule!403) lt!1287860)))

(declare-fun bs!573639 () Bool)

(assert (= bs!573639 d!1080798))

(assert (=> bs!573639 m!4192313))

(assert (=> bs!573639 m!4192367))

(declare-fun m!4193087 () Bool)

(assert (=> bs!573639 m!4193087))

(assert (=> bs!573639 m!4192321))

(assert (=> bs!573639 m!4192313))

(assert (=> bs!573639 m!4192315))

(assert (=> bs!573639 m!4192327))

(assert (=> b!3681575 d!1080798))

(declare-fun d!1080800 () Bool)

(assert (=> d!1080800 (= (head!7904 lt!1287589) (h!44254 lt!1287589))))

(assert (=> b!3681575 d!1080800))

(declare-fun d!1080802 () Bool)

(declare-fun lt!1287861 () List!38958)

(assert (=> d!1080802 (= (++!9666 lt!1287575 lt!1287861) lt!1287597)))

(declare-fun e!2280059 () List!38958)

(assert (=> d!1080802 (= lt!1287861 e!2280059)))

(declare-fun c!636972 () Bool)

(assert (=> d!1080802 (= c!636972 ((_ is Cons!38834) lt!1287575))))

(assert (=> d!1080802 (>= (size!29697 lt!1287597) (size!29697 lt!1287575))))

(assert (=> d!1080802 (= (getSuffix!1766 lt!1287597 lt!1287575) lt!1287861)))

(declare-fun b!3682130 () Bool)

(assert (=> b!3682130 (= e!2280059 (getSuffix!1766 (tail!5695 lt!1287597) (t!300713 lt!1287575)))))

(declare-fun b!3682131 () Bool)

(assert (=> b!3682131 (= e!2280059 lt!1287597)))

(assert (= (and d!1080802 c!636972) b!3682130))

(assert (= (and d!1080802 (not c!636972)) b!3682131))

(declare-fun m!4193089 () Bool)

(assert (=> d!1080802 m!4193089))

(assert (=> d!1080802 m!4192547))

(assert (=> d!1080802 m!4192327))

(assert (=> b!3682130 m!4192543))

(assert (=> b!3682130 m!4192543))

(declare-fun m!4193091 () Bool)

(assert (=> b!3682130 m!4193091))

(assert (=> b!3681575 d!1080802))

(declare-fun d!1080804 () Bool)

(declare-fun lt!1287862 () Int)

(assert (=> d!1080804 (>= lt!1287862 0)))

(declare-fun e!2280060 () Int)

(assert (=> d!1080804 (= lt!1287862 e!2280060)))

(declare-fun c!636973 () Bool)

(assert (=> d!1080804 (= c!636973 ((_ is Nil!38834) lt!1287575))))

(assert (=> d!1080804 (= (size!29697 lt!1287575) lt!1287862)))

(declare-fun b!3682132 () Bool)

(assert (=> b!3682132 (= e!2280060 0)))

(declare-fun b!3682133 () Bool)

(assert (=> b!3682133 (= e!2280060 (+ 1 (size!29697 (t!300713 lt!1287575))))))

(assert (= (and d!1080804 c!636973) b!3682132))

(assert (= (and d!1080804 (not c!636973)) b!3682133))

(declare-fun m!4193093 () Bool)

(assert (=> b!3682133 m!4193093))

(assert (=> b!3681575 d!1080804))

(declare-fun d!1080806 () Bool)

(assert (=> d!1080806 (= (seqFromList!4399 lt!1287575) (fromListB!2033 lt!1287575))))

(declare-fun bs!573640 () Bool)

(assert (= bs!573640 d!1080806))

(declare-fun m!4193095 () Bool)

(assert (=> bs!573640 m!4193095))

(assert (=> b!3681575 d!1080806))

(declare-fun b!3682134 () Bool)

(declare-fun res!1496057 () Bool)

(declare-fun e!2280063 () Bool)

(assert (=> b!3682134 (=> (not res!1496057) (not e!2280063))))

(declare-fun lt!1287864 () Option!8328)

(assert (=> b!3682134 (= res!1496057 (= (value!187185 (_1!22484 (get!12863 lt!1287864))) (apply!9352 (transformation!5850 (rule!8688 (_1!22484 (get!12863 lt!1287864)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287864)))))))))

(declare-fun b!3682135 () Bool)

(assert (=> b!3682135 (= e!2280063 (= (size!29695 (_1!22484 (get!12863 lt!1287864))) (size!29697 (originalCharacters!6564 (_1!22484 (get!12863 lt!1287864))))))))

(declare-fun b!3682136 () Bool)

(declare-fun e!2280064 () Option!8328)

(assert (=> b!3682136 (= e!2280064 None!8327)))

(declare-fun b!3682137 () Bool)

(declare-fun e!2280062 () Bool)

(assert (=> b!3682137 (= e!2280062 (matchR!5178 (regex!5850 rule!403) (_1!22487 (findLongestMatchInner!1093 (regex!5850 rule!403) Nil!38834 (size!29697 Nil!38834) lt!1287597 lt!1287597 (size!29697 lt!1287597)))))))

(declare-fun b!3682138 () Bool)

(declare-fun res!1496062 () Bool)

(assert (=> b!3682138 (=> (not res!1496062) (not e!2280063))))

(assert (=> b!3682138 (= res!1496062 (= (rule!8688 (_1!22484 (get!12863 lt!1287864))) rule!403))))

(declare-fun d!1080808 () Bool)

(declare-fun e!2280061 () Bool)

(assert (=> d!1080808 e!2280061))

(declare-fun res!1496058 () Bool)

(assert (=> d!1080808 (=> res!1496058 e!2280061)))

(assert (=> d!1080808 (= res!1496058 (isEmpty!23068 lt!1287864))))

(assert (=> d!1080808 (= lt!1287864 e!2280064)))

(declare-fun c!636974 () Bool)

(declare-fun lt!1287867 () tuple2!38706)

(assert (=> d!1080808 (= c!636974 (isEmpty!23066 (_1!22487 lt!1287867)))))

(assert (=> d!1080808 (= lt!1287867 (findLongestMatch!1008 (regex!5850 rule!403) lt!1287597))))

(assert (=> d!1080808 (ruleValid!2114 thiss!23823 rule!403)))

(assert (=> d!1080808 (= (maxPrefixOneRule!2111 thiss!23823 rule!403 lt!1287597) lt!1287864)))

(declare-fun b!3682139 () Bool)

(declare-fun res!1496060 () Bool)

(assert (=> b!3682139 (=> (not res!1496060) (not e!2280063))))

(assert (=> b!3682139 (= res!1496060 (= (++!9666 (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287864)))) (_2!22484 (get!12863 lt!1287864))) lt!1287597))))

(declare-fun b!3682140 () Bool)

(declare-fun res!1496056 () Bool)

(assert (=> b!3682140 (=> (not res!1496056) (not e!2280063))))

(assert (=> b!3682140 (= res!1496056 (< (size!29697 (_2!22484 (get!12863 lt!1287864))) (size!29697 lt!1287597)))))

(declare-fun b!3682141 () Bool)

(assert (=> b!3682141 (= e!2280064 (Some!8327 (tuple2!38701 (Token!11067 (apply!9352 (transformation!5850 rule!403) (seqFromList!4399 (_1!22487 lt!1287867))) rule!403 (size!29696 (seqFromList!4399 (_1!22487 lt!1287867))) (_1!22487 lt!1287867)) (_2!22487 lt!1287867))))))

(declare-fun lt!1287866 () Unit!56926)

(assert (=> b!3682141 (= lt!1287866 (longestMatchIsAcceptedByMatchOrIsEmpty!1066 (regex!5850 rule!403) lt!1287597))))

(declare-fun res!1496061 () Bool)

(assert (=> b!3682141 (= res!1496061 (isEmpty!23066 (_1!22487 (findLongestMatchInner!1093 (regex!5850 rule!403) Nil!38834 (size!29697 Nil!38834) lt!1287597 lt!1287597 (size!29697 lt!1287597)))))))

(assert (=> b!3682141 (=> res!1496061 e!2280062)))

(assert (=> b!3682141 e!2280062))

(declare-fun lt!1287865 () Unit!56926)

(assert (=> b!3682141 (= lt!1287865 lt!1287866)))

(declare-fun lt!1287863 () Unit!56926)

(assert (=> b!3682141 (= lt!1287863 (lemmaSemiInverse!1599 (transformation!5850 rule!403) (seqFromList!4399 (_1!22487 lt!1287867))))))

(declare-fun b!3682142 () Bool)

(assert (=> b!3682142 (= e!2280061 e!2280063)))

(declare-fun res!1496059 () Bool)

(assert (=> b!3682142 (=> (not res!1496059) (not e!2280063))))

(assert (=> b!3682142 (= res!1496059 (matchR!5178 (regex!5850 rule!403) (list!14436 (charsOf!3864 (_1!22484 (get!12863 lt!1287864))))))))

(assert (= (and d!1080808 c!636974) b!3682136))

(assert (= (and d!1080808 (not c!636974)) b!3682141))

(assert (= (and b!3682141 (not res!1496061)) b!3682137))

(assert (= (and d!1080808 (not res!1496058)) b!3682142))

(assert (= (and b!3682142 res!1496059) b!3682139))

(assert (= (and b!3682139 res!1496060) b!3682140))

(assert (= (and b!3682140 res!1496056) b!3682138))

(assert (= (and b!3682138 res!1496062) b!3682134))

(assert (= (and b!3682134 res!1496057) b!3682135))

(declare-fun m!4193101 () Bool)

(assert (=> b!3682140 m!4193101))

(declare-fun m!4193103 () Bool)

(assert (=> b!3682140 m!4193103))

(assert (=> b!3682140 m!4192547))

(assert (=> b!3682135 m!4193101))

(declare-fun m!4193107 () Bool)

(assert (=> b!3682135 m!4193107))

(assert (=> b!3682139 m!4193101))

(declare-fun m!4193109 () Bool)

(assert (=> b!3682139 m!4193109))

(assert (=> b!3682139 m!4193109))

(declare-fun m!4193111 () Bool)

(assert (=> b!3682139 m!4193111))

(assert (=> b!3682139 m!4193111))

(declare-fun m!4193113 () Bool)

(assert (=> b!3682139 m!4193113))

(declare-fun m!4193115 () Bool)

(assert (=> b!3682141 m!4193115))

(declare-fun m!4193117 () Bool)

(assert (=> b!3682141 m!4193117))

(assert (=> b!3682141 m!4193115))

(assert (=> b!3682141 m!4193115))

(declare-fun m!4193123 () Bool)

(assert (=> b!3682141 m!4193123))

(assert (=> b!3682141 m!4192805))

(assert (=> b!3682141 m!4192547))

(declare-fun m!4193125 () Bool)

(assert (=> b!3682141 m!4193125))

(assert (=> b!3682141 m!4192547))

(declare-fun m!4193127 () Bool)

(assert (=> b!3682141 m!4193127))

(assert (=> b!3682141 m!4193115))

(declare-fun m!4193129 () Bool)

(assert (=> b!3682141 m!4193129))

(declare-fun m!4193131 () Bool)

(assert (=> b!3682141 m!4193131))

(assert (=> b!3682141 m!4192805))

(assert (=> b!3682137 m!4192805))

(assert (=> b!3682137 m!4192547))

(assert (=> b!3682137 m!4192805))

(assert (=> b!3682137 m!4192547))

(assert (=> b!3682137 m!4193125))

(declare-fun m!4193133 () Bool)

(assert (=> b!3682137 m!4193133))

(assert (=> b!3682138 m!4193101))

(assert (=> b!3682134 m!4193101))

(declare-fun m!4193135 () Bool)

(assert (=> b!3682134 m!4193135))

(assert (=> b!3682134 m!4193135))

(declare-fun m!4193137 () Bool)

(assert (=> b!3682134 m!4193137))

(declare-fun m!4193139 () Bool)

(assert (=> d!1080808 m!4193139))

(declare-fun m!4193141 () Bool)

(assert (=> d!1080808 m!4193141))

(declare-fun m!4193143 () Bool)

(assert (=> d!1080808 m!4193143))

(assert (=> d!1080808 m!4192295))

(assert (=> b!3682142 m!4193101))

(assert (=> b!3682142 m!4193109))

(assert (=> b!3682142 m!4193109))

(assert (=> b!3682142 m!4193111))

(assert (=> b!3682142 m!4193111))

(declare-fun m!4193145 () Bool)

(assert (=> b!3682142 m!4193145))

(assert (=> b!3681575 d!1080808))

(declare-fun d!1080816 () Bool)

(assert (=> d!1080816 (= (apply!9352 (transformation!5850 rule!403) (seqFromList!4399 lt!1287575)) (dynLambda!17033 (toValue!8146 (transformation!5850 rule!403)) (seqFromList!4399 lt!1287575)))))

(declare-fun b_lambda!109375 () Bool)

(assert (=> (not b_lambda!109375) (not d!1080816)))

(declare-fun t!300788 () Bool)

(declare-fun tb!213581 () Bool)

(assert (=> (and b!3681612 (= (toValue!8146 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 rule!403))) t!300788) tb!213581))

(declare-fun result!259854 () Bool)

(assert (=> tb!213581 (= result!259854 (inv!21 (dynLambda!17033 (toValue!8146 (transformation!5850 rule!403)) (seqFromList!4399 lt!1287575))))))

(declare-fun m!4193147 () Bool)

(assert (=> tb!213581 m!4193147))

(assert (=> d!1080816 t!300788))

(declare-fun b_and!275155 () Bool)

(assert (= b_and!275083 (and (=> t!300788 result!259854) b_and!275155)))

(declare-fun tb!213583 () Bool)

(declare-fun t!300790 () Bool)

(assert (=> (and b!3681606 (= (toValue!8146 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 rule!403))) t!300790) tb!213583))

(declare-fun result!259856 () Bool)

(assert (= result!259856 result!259854))

(assert (=> d!1080816 t!300790))

(declare-fun b_and!275157 () Bool)

(assert (= b_and!275085 (and (=> t!300790 result!259856) b_and!275157)))

(declare-fun t!300792 () Bool)

(declare-fun tb!213585 () Bool)

(assert (=> (and b!3681595 (= (toValue!8146 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 rule!403))) t!300792) tb!213585))

(declare-fun result!259858 () Bool)

(assert (= result!259858 result!259854))

(assert (=> d!1080816 t!300792))

(declare-fun b_and!275159 () Bool)

(assert (= b_and!275087 (and (=> t!300792 result!259858) b_and!275159)))

(declare-fun tb!213587 () Bool)

(declare-fun t!300794 () Bool)

(assert (=> (and b!3681588 (= (toValue!8146 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 rule!403))) t!300794) tb!213587))

(declare-fun result!259860 () Bool)

(assert (= result!259860 result!259854))

(assert (=> d!1080816 t!300794))

(declare-fun b_and!275161 () Bool)

(assert (= b_and!275089 (and (=> t!300794 result!259860) b_and!275161)))

(assert (=> d!1080816 m!4192313))

(declare-fun m!4193149 () Bool)

(assert (=> d!1080816 m!4193149))

(assert (=> b!3681575 d!1080816))

(declare-fun d!1080818 () Bool)

(assert (=> d!1080818 (= (size!29695 (_1!22484 lt!1287573)) (size!29697 (originalCharacters!6564 (_1!22484 lt!1287573))))))

(declare-fun Unit!56951 () Unit!56926)

(assert (=> d!1080818 (= (lemmaCharactersSize!895 (_1!22484 lt!1287573)) Unit!56951)))

(declare-fun bs!573644 () Bool)

(assert (= bs!573644 d!1080818))

(declare-fun m!4193151 () Bool)

(assert (=> bs!573644 m!4193151))

(assert (=> b!3681574 d!1080818))

(declare-fun b!3682310 () Bool)

(declare-fun e!2280160 () Bool)

(assert (=> b!3682310 (= e!2280160 true)))

(declare-fun d!1080820 () Bool)

(assert (=> d!1080820 e!2280160))

(assert (= d!1080820 b!3682310))

(declare-fun order!21531 () Int)

(declare-fun lambda!124774 () Int)

(declare-fun order!21533 () Int)

(declare-fun dynLambda!17034 (Int Int) Int)

(declare-fun dynLambda!17035 (Int Int) Int)

(assert (=> b!3682310 (< (dynLambda!17034 order!21531 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) (dynLambda!17035 order!21533 lambda!124774))))

(declare-fun order!21535 () Int)

(declare-fun dynLambda!17036 (Int Int) Int)

(assert (=> b!3682310 (< (dynLambda!17036 order!21535 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) (dynLambda!17035 order!21533 lambda!124774))))

(assert (=> d!1080820 (= (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573)))))))

(declare-fun lt!1287981 () Unit!56926)

(declare-fun Forall2of!412 (Int BalanceConc!23392 BalanceConc!23392) Unit!56926)

(assert (=> d!1080820 (= lt!1287981 (Forall2of!412 lambda!124774 lt!1287546 (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573)))))))

(assert (=> d!1080820 (= (list!14436 lt!1287546) (list!14436 (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573)))))))

(assert (=> d!1080820 (= (lemmaEqSameImage!1033 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546 (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573)))) lt!1287981)))

(declare-fun b_lambda!109379 () Bool)

(assert (=> (not b_lambda!109379) (not d!1080820)))

(declare-fun tb!213597 () Bool)

(declare-fun t!300804 () Bool)

(assert (=> (and b!3681612 (= (toValue!8146 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300804) tb!213597))

(declare-fun result!259870 () Bool)

(assert (=> tb!213597 (= result!259870 (inv!21 (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546)))))

(declare-fun m!4193369 () Bool)

(assert (=> tb!213597 m!4193369))

(assert (=> d!1080820 t!300804))

(declare-fun b_and!275171 () Bool)

(assert (= b_and!275155 (and (=> t!300804 result!259870) b_and!275171)))

(declare-fun t!300806 () Bool)

(declare-fun tb!213599 () Bool)

(assert (=> (and b!3681606 (= (toValue!8146 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300806) tb!213599))

(declare-fun result!259872 () Bool)

(assert (= result!259872 result!259870))

(assert (=> d!1080820 t!300806))

(declare-fun b_and!275173 () Bool)

(assert (= b_and!275157 (and (=> t!300806 result!259872) b_and!275173)))

(declare-fun t!300808 () Bool)

(declare-fun tb!213601 () Bool)

(assert (=> (and b!3681595 (= (toValue!8146 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300808) tb!213601))

(declare-fun result!259874 () Bool)

(assert (= result!259874 result!259870))

(assert (=> d!1080820 t!300808))

(declare-fun b_and!275175 () Bool)

(assert (= b_and!275159 (and (=> t!300808 result!259874) b_and!275175)))

(declare-fun tb!213603 () Bool)

(declare-fun t!300810 () Bool)

(assert (=> (and b!3681588 (= (toValue!8146 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300810) tb!213603))

(declare-fun result!259876 () Bool)

(assert (= result!259876 result!259870))

(assert (=> d!1080820 t!300810))

(declare-fun b_and!275177 () Bool)

(assert (= b_and!275161 (and (=> t!300810 result!259876) b_and!275177)))

(declare-fun b_lambda!109381 () Bool)

(assert (=> (not b_lambda!109381) (not d!1080820)))

(declare-fun tb!213605 () Bool)

(declare-fun t!300812 () Bool)

(assert (=> (and b!3681612 (= (toValue!8146 (transformation!5850 rule!403)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300812) tb!213605))

(declare-fun result!259878 () Bool)

(assert (=> tb!213605 (= result!259878 (inv!21 (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573))))))))

(declare-fun m!4193371 () Bool)

(assert (=> tb!213605 m!4193371))

(assert (=> d!1080820 t!300812))

(declare-fun b_and!275179 () Bool)

(assert (= b_and!275171 (and (=> t!300812 result!259878) b_and!275179)))

(declare-fun tb!213607 () Bool)

(declare-fun t!300814 () Bool)

(assert (=> (and b!3681606 (= (toValue!8146 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300814) tb!213607))

(declare-fun result!259880 () Bool)

(assert (= result!259880 result!259878))

(assert (=> d!1080820 t!300814))

(declare-fun b_and!275181 () Bool)

(assert (= b_and!275173 (and (=> t!300814 result!259880) b_and!275181)))

(declare-fun tb!213609 () Bool)

(declare-fun t!300816 () Bool)

(assert (=> (and b!3681595 (= (toValue!8146 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300816) tb!213609))

(declare-fun result!259882 () Bool)

(assert (= result!259882 result!259878))

(assert (=> d!1080820 t!300816))

(declare-fun b_and!275183 () Bool)

(assert (= b_and!275175 (and (=> t!300816 result!259882) b_and!275183)))

(declare-fun tb!213611 () Bool)

(declare-fun t!300818 () Bool)

(assert (=> (and b!3681588 (= (toValue!8146 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300818) tb!213611))

(declare-fun result!259884 () Bool)

(assert (= result!259884 result!259878))

(assert (=> d!1080820 t!300818))

(declare-fun b_and!275185 () Bool)

(assert (= b_and!275177 (and (=> t!300818 result!259884) b_and!275185)))

(assert (=> d!1080820 m!4192263))

(declare-fun m!4193373 () Bool)

(assert (=> d!1080820 m!4193373))

(assert (=> d!1080820 m!4192399))

(assert (=> d!1080820 m!4192263))

(declare-fun m!4193375 () Bool)

(assert (=> d!1080820 m!4193375))

(declare-fun m!4193377 () Bool)

(assert (=> d!1080820 m!4193377))

(assert (=> d!1080820 m!4192263))

(declare-fun m!4193379 () Bool)

(assert (=> d!1080820 m!4193379))

(assert (=> b!3681574 d!1080820))

(declare-fun d!1080886 () Bool)

(declare-fun lt!1287983 () Int)

(assert (=> d!1080886 (= lt!1287983 (size!29697 (list!14436 lt!1287546)))))

(assert (=> d!1080886 (= lt!1287983 (size!29699 (c!636855 lt!1287546)))))

(assert (=> d!1080886 (= (size!29696 lt!1287546) lt!1287983)))

(declare-fun bs!573652 () Bool)

(assert (= bs!573652 d!1080886))

(assert (=> bs!573652 m!4192399))

(assert (=> bs!573652 m!4192399))

(declare-fun m!4193381 () Bool)

(assert (=> bs!573652 m!4193381))

(declare-fun m!4193383 () Bool)

(assert (=> bs!573652 m!4193383))

(assert (=> b!3681574 d!1080886))

(declare-fun d!1080888 () Bool)

(assert (=> d!1080888 (= (apply!9352 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546))))

(declare-fun b_lambda!109383 () Bool)

(assert (=> (not b_lambda!109383) (not d!1080888)))

(assert (=> d!1080888 t!300804))

(declare-fun b_and!275187 () Bool)

(assert (= b_and!275179 (and (=> t!300804 result!259870) b_and!275187)))

(assert (=> d!1080888 t!300806))

(declare-fun b_and!275189 () Bool)

(assert (= b_and!275181 (and (=> t!300806 result!259872) b_and!275189)))

(assert (=> d!1080888 t!300808))

(declare-fun b_and!275191 () Bool)

(assert (= b_and!275183 (and (=> t!300808 result!259874) b_and!275191)))

(assert (=> d!1080888 t!300810))

(declare-fun b_and!275193 () Bool)

(assert (= b_and!275185 (and (=> t!300810 result!259876) b_and!275193)))

(assert (=> d!1080888 m!4193377))

(assert (=> b!3681574 d!1080888))

(declare-fun b!3682336 () Bool)

(declare-fun e!2280177 () Bool)

(assert (=> b!3682336 (= e!2280177 true)))

(declare-fun d!1080890 () Bool)

(assert (=> d!1080890 e!2280177))

(assert (= d!1080890 b!3682336))

(declare-fun order!21537 () Int)

(declare-fun lambda!124777 () Int)

(declare-fun dynLambda!17037 (Int Int) Int)

(assert (=> b!3682336 (< (dynLambda!17034 order!21531 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) (dynLambda!17037 order!21537 lambda!124777))))

(assert (=> b!3682336 (< (dynLambda!17036 order!21535 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) (dynLambda!17037 order!21537 lambda!124777))))

(assert (=> d!1080890 (= (list!14436 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546))) (list!14436 lt!1287546))))

(declare-fun lt!1287990 () Unit!56926)

(declare-fun ForallOf!754 (Int BalanceConc!23392) Unit!56926)

(assert (=> d!1080890 (= lt!1287990 (ForallOf!754 lambda!124777 lt!1287546))))

(assert (=> d!1080890 (= (lemmaSemiInverse!1599 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))) lt!1287546) lt!1287990)))

(declare-fun b_lambda!109385 () Bool)

(assert (=> (not b_lambda!109385) (not d!1080890)))

(declare-fun tb!213613 () Bool)

(declare-fun t!300820 () Bool)

(assert (=> (and b!3681612 (= (toChars!8005 (transformation!5850 rule!403)) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300820) tb!213613))

(declare-fun b!3682337 () Bool)

(declare-fun tp!1119110 () Bool)

(declare-fun e!2280178 () Bool)

(assert (=> b!3682337 (= e!2280178 (and (inv!52337 (c!636855 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546)))) tp!1119110))))

(declare-fun result!259886 () Bool)

(assert (=> tb!213613 (= result!259886 (and (inv!52338 (dynLambda!17027 (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) (dynLambda!17033 (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287546))) e!2280178))))

(assert (= tb!213613 b!3682337))

(declare-fun m!4193395 () Bool)

(assert (=> b!3682337 m!4193395))

(declare-fun m!4193397 () Bool)

(assert (=> tb!213613 m!4193397))

(assert (=> d!1080890 t!300820))

(declare-fun b_and!275195 () Bool)

(assert (= b_and!275099 (and (=> t!300820 result!259886) b_and!275195)))

(declare-fun t!300822 () Bool)

(declare-fun tb!213615 () Bool)

(assert (=> (and b!3681606 (= (toChars!8005 (transformation!5850 (rule!8688 token!511))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300822) tb!213615))

(declare-fun result!259888 () Bool)

(assert (= result!259888 result!259886))

(assert (=> d!1080890 t!300822))

(declare-fun b_and!275197 () Bool)

(assert (= b_and!275101 (and (=> t!300822 result!259888) b_and!275197)))

(declare-fun t!300824 () Bool)

(declare-fun tb!213617 () Bool)

(assert (=> (and b!3681595 (= (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300824) tb!213617))

(declare-fun result!259890 () Bool)

(assert (= result!259890 result!259886))

(assert (=> d!1080890 t!300824))

(declare-fun b_and!275199 () Bool)

(assert (= b_and!275103 (and (=> t!300824 result!259890) b_and!275199)))

(declare-fun tb!213619 () Bool)

(declare-fun t!300826 () Bool)

(assert (=> (and b!3681588 (= (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300826) tb!213619))

(declare-fun result!259892 () Bool)

(assert (= result!259892 result!259886))

(assert (=> d!1080890 t!300826))

(declare-fun b_and!275201 () Bool)

(assert (= b_and!275105 (and (=> t!300826 result!259892) b_and!275201)))

(declare-fun b_lambda!109387 () Bool)

(assert (=> (not b_lambda!109387) (not d!1080890)))

(assert (=> d!1080890 t!300804))

(declare-fun b_and!275203 () Bool)

(assert (= b_and!275187 (and (=> t!300804 result!259870) b_and!275203)))

(assert (=> d!1080890 t!300806))

(declare-fun b_and!275205 () Bool)

(assert (= b_and!275189 (and (=> t!300806 result!259872) b_and!275205)))

(assert (=> d!1080890 t!300808))

(declare-fun b_and!275207 () Bool)

(assert (= b_and!275191 (and (=> t!300808 result!259874) b_and!275207)))

(assert (=> d!1080890 t!300810))

(declare-fun b_and!275209 () Bool)

(assert (= b_and!275193 (and (=> t!300810 result!259876) b_and!275209)))

(assert (=> d!1080890 m!4193377))

(declare-fun m!4193399 () Bool)

(assert (=> d!1080890 m!4193399))

(declare-fun m!4193401 () Bool)

(assert (=> d!1080890 m!4193401))

(assert (=> d!1080890 m!4193377))

(assert (=> d!1080890 m!4192399))

(assert (=> d!1080890 m!4193399))

(declare-fun m!4193403 () Bool)

(assert (=> d!1080890 m!4193403))

(assert (=> b!3681574 d!1080890))

(declare-fun d!1080898 () Bool)

(assert (=> d!1080898 (= (seqFromList!4399 (originalCharacters!6564 (_1!22484 lt!1287573))) (fromListB!2033 (originalCharacters!6564 (_1!22484 lt!1287573))))))

(declare-fun bs!573655 () Bool)

(assert (= bs!573655 d!1080898))

(declare-fun m!4193405 () Bool)

(assert (=> bs!573655 m!4193405))

(assert (=> b!3681574 d!1080898))

(declare-fun b!3682344 () Bool)

(declare-fun e!2280186 () Bool)

(declare-fun lt!1287991 () Bool)

(declare-fun call!266767 () Bool)

(assert (=> b!3682344 (= e!2280186 (= lt!1287991 call!266767))))

(declare-fun b!3682345 () Bool)

(declare-fun res!1496178 () Bool)

(declare-fun e!2280191 () Bool)

(assert (=> b!3682345 (=> (not res!1496178) (not e!2280191))))

(assert (=> b!3682345 (= res!1496178 (not call!266767))))

(declare-fun b!3682346 () Bool)

(declare-fun e!2280190 () Bool)

(declare-fun e!2280188 () Bool)

(assert (=> b!3682346 (= e!2280190 e!2280188)))

(declare-fun res!1496172 () Bool)

(assert (=> b!3682346 (=> res!1496172 e!2280188)))

(assert (=> b!3682346 (= res!1496172 call!266767)))

(declare-fun b!3682347 () Bool)

(declare-fun res!1496179 () Bool)

(assert (=> b!3682347 (=> res!1496179 e!2280188)))

(assert (=> b!3682347 (= res!1496179 (not (isEmpty!23066 (tail!5695 (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))))))))

(declare-fun b!3682348 () Bool)

(declare-fun res!1496175 () Bool)

(assert (=> b!3682348 (=> (not res!1496175) (not e!2280191))))

(assert (=> b!3682348 (= res!1496175 (isEmpty!23066 (tail!5695 (list!14436 (charsOf!3864 (_1!22484 lt!1287573))))))))

(declare-fun b!3682349 () Bool)

(declare-fun e!2280189 () Bool)

(assert (=> b!3682349 (= e!2280186 e!2280189)))

(declare-fun c!637019 () Bool)

(assert (=> b!3682349 (= c!637019 ((_ is EmptyLang!10609) (regex!5850 lt!1287585)))))

(declare-fun bm!266762 () Bool)

(assert (=> bm!266762 (= call!266767 (isEmpty!23066 (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))))))

(declare-fun b!3682350 () Bool)

(declare-fun e!2280185 () Bool)

(assert (=> b!3682350 (= e!2280185 (nullable!3697 (regex!5850 lt!1287585)))))

(declare-fun b!3682351 () Bool)

(declare-fun res!1496174 () Bool)

(declare-fun e!2280187 () Bool)

(assert (=> b!3682351 (=> res!1496174 e!2280187)))

(assert (=> b!3682351 (= res!1496174 (not ((_ is ElementMatch!10609) (regex!5850 lt!1287585))))))

(assert (=> b!3682351 (= e!2280189 e!2280187)))

(declare-fun b!3682352 () Bool)

(declare-fun res!1496173 () Bool)

(assert (=> b!3682352 (=> res!1496173 e!2280187)))

(assert (=> b!3682352 (= res!1496173 e!2280191)))

(declare-fun res!1496176 () Bool)

(assert (=> b!3682352 (=> (not res!1496176) (not e!2280191))))

(assert (=> b!3682352 (= res!1496176 lt!1287991)))

(declare-fun b!3682353 () Bool)

(assert (=> b!3682353 (= e!2280187 e!2280190)))

(declare-fun res!1496177 () Bool)

(assert (=> b!3682353 (=> (not res!1496177) (not e!2280190))))

(assert (=> b!3682353 (= res!1496177 (not lt!1287991))))

(declare-fun d!1080900 () Bool)

(assert (=> d!1080900 e!2280186))

(declare-fun c!637017 () Bool)

(assert (=> d!1080900 (= c!637017 ((_ is EmptyExpr!10609) (regex!5850 lt!1287585)))))

(assert (=> d!1080900 (= lt!1287991 e!2280185)))

(declare-fun c!637018 () Bool)

(assert (=> d!1080900 (= c!637018 (isEmpty!23066 (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))))))

(assert (=> d!1080900 (validRegex!4858 (regex!5850 lt!1287585))))

(assert (=> d!1080900 (= (matchR!5178 (regex!5850 lt!1287585) (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))) lt!1287991)))

(declare-fun b!3682354 () Bool)

(assert (=> b!3682354 (= e!2280185 (matchR!5178 (derivativeStep!3246 (regex!5850 lt!1287585) (head!7904 (list!14436 (charsOf!3864 (_1!22484 lt!1287573))))) (tail!5695 (list!14436 (charsOf!3864 (_1!22484 lt!1287573))))))))

(declare-fun b!3682355 () Bool)

(assert (=> b!3682355 (= e!2280189 (not lt!1287991))))

(declare-fun b!3682356 () Bool)

(assert (=> b!3682356 (= e!2280191 (= (head!7904 (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))) (c!636854 (regex!5850 lt!1287585))))))

(declare-fun b!3682357 () Bool)

(assert (=> b!3682357 (= e!2280188 (not (= (head!7904 (list!14436 (charsOf!3864 (_1!22484 lt!1287573)))) (c!636854 (regex!5850 lt!1287585)))))))

(assert (= (and d!1080900 c!637018) b!3682350))

(assert (= (and d!1080900 (not c!637018)) b!3682354))

(assert (= (and d!1080900 c!637017) b!3682344))

(assert (= (and d!1080900 (not c!637017)) b!3682349))

(assert (= (and b!3682349 c!637019) b!3682355))

(assert (= (and b!3682349 (not c!637019)) b!3682351))

(assert (= (and b!3682351 (not res!1496174)) b!3682352))

(assert (= (and b!3682352 res!1496176) b!3682345))

(assert (= (and b!3682345 res!1496178) b!3682348))

(assert (= (and b!3682348 res!1496175) b!3682356))

(assert (= (and b!3682352 (not res!1496173)) b!3682353))

(assert (= (and b!3682353 res!1496177) b!3682346))

(assert (= (and b!3682346 (not res!1496172)) b!3682347))

(assert (= (and b!3682347 (not res!1496179)) b!3682357))

(assert (= (or b!3682344 b!3682345 b!3682346) bm!266762))

(assert (=> b!3682348 m!4192249))

(declare-fun m!4193417 () Bool)

(assert (=> b!3682348 m!4193417))

(assert (=> b!3682348 m!4193417))

(declare-fun m!4193419 () Bool)

(assert (=> b!3682348 m!4193419))

(assert (=> bm!266762 m!4192249))

(declare-fun m!4193421 () Bool)

(assert (=> bm!266762 m!4193421))

(declare-fun m!4193423 () Bool)

(assert (=> b!3682350 m!4193423))

(assert (=> b!3682354 m!4192249))

(declare-fun m!4193425 () Bool)

(assert (=> b!3682354 m!4193425))

(assert (=> b!3682354 m!4193425))

(declare-fun m!4193427 () Bool)

(assert (=> b!3682354 m!4193427))

(assert (=> b!3682354 m!4192249))

(assert (=> b!3682354 m!4193417))

(assert (=> b!3682354 m!4193427))

(assert (=> b!3682354 m!4193417))

(declare-fun m!4193429 () Bool)

(assert (=> b!3682354 m!4193429))

(assert (=> d!1080900 m!4192249))

(assert (=> d!1080900 m!4193421))

(declare-fun m!4193431 () Bool)

(assert (=> d!1080900 m!4193431))

(assert (=> b!3682356 m!4192249))

(assert (=> b!3682356 m!4193425))

(assert (=> b!3682347 m!4192249))

(assert (=> b!3682347 m!4193417))

(assert (=> b!3682347 m!4193417))

(assert (=> b!3682347 m!4193419))

(assert (=> b!3682357 m!4192249))

(assert (=> b!3682357 m!4193425))

(assert (=> b!3681611 d!1080900))

(declare-fun d!1080910 () Bool)

(assert (=> d!1080910 (= (list!14436 (charsOf!3864 (_1!22484 lt!1287573))) (list!14437 (c!636855 (charsOf!3864 (_1!22484 lt!1287573)))))))

(declare-fun bs!573657 () Bool)

(assert (= bs!573657 d!1080910))

(declare-fun m!4193433 () Bool)

(assert (=> bs!573657 m!4193433))

(assert (=> b!3681611 d!1080910))

(assert (=> b!3681611 d!1080632))

(declare-fun d!1080912 () Bool)

(assert (=> d!1080912 (= (get!12864 lt!1287582) (v!38268 lt!1287582))))

(assert (=> b!3681611 d!1080912))

(declare-fun d!1080914 () Bool)

(assert (=> d!1080914 (not (contains!7768 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287555))))

(declare-fun lt!1288001 () Unit!56926)

(declare-fun choose!22040 (LexerInterface!5439 List!38959 List!38959 Rule!11500 Rule!11500 C!21404) Unit!56926)

(assert (=> d!1080914 (= lt!1288001 (choose!22040 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403 lt!1287555))))

(assert (=> d!1080914 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080914 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!496 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) rule!403 lt!1287555) lt!1288001)))

(declare-fun bs!573660 () Bool)

(assert (= bs!573660 d!1080914))

(assert (=> bs!573660 m!4192255))

(assert (=> bs!573660 m!4192255))

(declare-fun m!4193475 () Bool)

(assert (=> bs!573660 m!4193475))

(declare-fun m!4193477 () Bool)

(assert (=> bs!573660 m!4193477))

(assert (=> bs!573660 m!4192423))

(assert (=> b!3681591 d!1080914))

(declare-fun d!1080930 () Bool)

(assert (=> d!1080930 (= (inv!52330 (tag!6654 (h!44255 rules!3307))) (= (mod (str.len (value!187184 (tag!6654 (h!44255 rules!3307)))) 2) 0))))

(assert (=> b!3681572 d!1080930))

(declare-fun d!1080932 () Bool)

(declare-fun res!1496189 () Bool)

(declare-fun e!2280197 () Bool)

(assert (=> d!1080932 (=> (not res!1496189) (not e!2280197))))

(assert (=> d!1080932 (= res!1496189 (semiInverseModEq!2496 (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 (h!44255 rules!3307)))))))

(assert (=> d!1080932 (= (inv!52334 (transformation!5850 (h!44255 rules!3307))) e!2280197)))

(declare-fun b!3682369 () Bool)

(assert (=> b!3682369 (= e!2280197 (equivClasses!2395 (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 (h!44255 rules!3307)))))))

(assert (= (and d!1080932 res!1496189) b!3682369))

(declare-fun m!4193479 () Bool)

(assert (=> d!1080932 m!4193479))

(declare-fun m!4193481 () Bool)

(assert (=> b!3682369 m!4193481))

(assert (=> b!3681572 d!1080932))

(declare-fun d!1080934 () Bool)

(assert (=> d!1080934 (= (isEmpty!23066 (_2!22484 lt!1287558)) ((_ is Nil!38834) (_2!22484 lt!1287558)))))

(assert (=> b!3681610 d!1080934))

(assert (=> bm!266700 d!1080620))

(declare-fun b!3682383 () Bool)

(declare-fun e!2280207 () Bool)

(declare-fun e!2280208 () Bool)

(assert (=> b!3682383 (= e!2280207 e!2280208)))

(declare-fun c!637027 () Bool)

(assert (=> b!3682383 (= c!637027 ((_ is IntegerValue!18241) (value!187185 token!511)))))

(declare-fun b!3682384 () Bool)

(declare-fun inv!16 (TokenValue!6080) Bool)

(assert (=> b!3682384 (= e!2280207 (inv!16 (value!187185 token!511)))))

(declare-fun b!3682385 () Bool)

(declare-fun res!1496195 () Bool)

(declare-fun e!2280209 () Bool)

(assert (=> b!3682385 (=> res!1496195 e!2280209)))

(assert (=> b!3682385 (= res!1496195 (not ((_ is IntegerValue!18242) (value!187185 token!511))))))

(assert (=> b!3682385 (= e!2280208 e!2280209)))

(declare-fun b!3682386 () Bool)

(declare-fun inv!15 (TokenValue!6080) Bool)

(assert (=> b!3682386 (= e!2280209 (inv!15 (value!187185 token!511)))))

(declare-fun b!3682387 () Bool)

(declare-fun inv!17 (TokenValue!6080) Bool)

(assert (=> b!3682387 (= e!2280208 (inv!17 (value!187185 token!511)))))

(declare-fun d!1080936 () Bool)

(declare-fun c!637026 () Bool)

(assert (=> d!1080936 (= c!637026 ((_ is IntegerValue!18240) (value!187185 token!511)))))

(assert (=> d!1080936 (= (inv!21 (value!187185 token!511)) e!2280207)))

(assert (= (and d!1080936 c!637026) b!3682384))

(assert (= (and d!1080936 (not c!637026)) b!3682383))

(assert (= (and b!3682383 c!637027) b!3682387))

(assert (= (and b!3682383 (not c!637027)) b!3682385))

(assert (= (and b!3682385 (not res!1496195)) b!3682386))

(declare-fun m!4193499 () Bool)

(assert (=> b!3682384 m!4193499))

(declare-fun m!4193501 () Bool)

(assert (=> b!3682386 m!4193501))

(declare-fun m!4193503 () Bool)

(assert (=> b!3682387 m!4193503))

(assert (=> b!3681590 d!1080936))

(declare-fun d!1080950 () Bool)

(assert (=> d!1080950 (not (contains!7768 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287559))))

(declare-fun lt!1288008 () Unit!56926)

(assert (=> d!1080950 (= lt!1288008 (choose!22040 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) anOtherTypeRule!33 lt!1287559))))

(assert (=> d!1080950 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080950 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!496 thiss!23823 rules!3307 rules!3307 (rule!8688 (_1!22484 lt!1287573)) anOtherTypeRule!33 lt!1287559) lt!1288008)))

(declare-fun bs!573664 () Bool)

(assert (= bs!573664 d!1080950))

(assert (=> bs!573664 m!4192255))

(assert (=> bs!573664 m!4192255))

(assert (=> bs!573664 m!4192485))

(declare-fun m!4193505 () Bool)

(assert (=> bs!573664 m!4193505))

(assert (=> bs!573664 m!4192423))

(assert (=> b!3681571 d!1080950))

(declare-fun d!1080952 () Bool)

(assert (=> d!1080952 (not (contains!7768 (usedCharacters!1062 (regex!5850 (rule!8688 (_1!22484 lt!1287573)))) lt!1287555))))

(declare-fun lt!1288009 () Unit!56926)

(assert (=> d!1080952 (= lt!1288009 (choose!22019 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8688 (_1!22484 lt!1287573)) lt!1287555))))

(assert (=> d!1080952 (rulesInvariant!4836 thiss!23823 rules!3307)))

(assert (=> d!1080952 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!378 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8688 (_1!22484 lt!1287573)) lt!1287555) lt!1288009)))

(declare-fun bs!573665 () Bool)

(assert (= bs!573665 d!1080952))

(assert (=> bs!573665 m!4192255))

(assert (=> bs!573665 m!4192255))

(assert (=> bs!573665 m!4193475))

(declare-fun m!4193507 () Bool)

(assert (=> bs!573665 m!4193507))

(assert (=> bs!573665 m!4192423))

(assert (=> b!3681608 d!1080952))

(declare-fun d!1080954 () Bool)

(assert (=> d!1080954 (= (inv!52330 (tag!6654 (rule!8688 token!511))) (= (mod (str.len (value!187184 (tag!6654 (rule!8688 token!511)))) 2) 0))))

(assert (=> b!3681607 d!1080954))

(declare-fun d!1080956 () Bool)

(declare-fun res!1496198 () Bool)

(declare-fun e!2280212 () Bool)

(assert (=> d!1080956 (=> (not res!1496198) (not e!2280212))))

(assert (=> d!1080956 (= res!1496198 (semiInverseModEq!2496 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 (rule!8688 token!511)))))))

(assert (=> d!1080956 (= (inv!52334 (transformation!5850 (rule!8688 token!511))) e!2280212)))

(declare-fun b!3682390 () Bool)

(assert (=> b!3682390 (= e!2280212 (equivClasses!2395 (toChars!8005 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 (rule!8688 token!511)))))))

(assert (= (and d!1080956 res!1496198) b!3682390))

(declare-fun m!4193509 () Bool)

(assert (=> d!1080956 m!4193509))

(declare-fun m!4193511 () Bool)

(assert (=> b!3682390 m!4193511))

(assert (=> b!3681607 d!1080956))

(declare-fun d!1080958 () Bool)

(declare-fun res!1496202 () Bool)

(declare-fun e!2280222 () Bool)

(assert (=> d!1080958 (=> (not res!1496202) (not e!2280222))))

(declare-fun rulesValid!2254 (LexerInterface!5439 List!38959) Bool)

(assert (=> d!1080958 (= res!1496202 (rulesValid!2254 thiss!23823 rules!3307))))

(assert (=> d!1080958 (= (rulesInvariant!4836 thiss!23823 rules!3307) e!2280222)))

(declare-fun b!3682400 () Bool)

(declare-datatypes ((List!38963 0))(
  ( (Nil!38839) (Cons!38839 (h!44259 String!43734) (t!300858 List!38963)) )
))
(declare-fun noDuplicateTag!2250 (LexerInterface!5439 List!38959 List!38963) Bool)

(assert (=> b!3682400 (= e!2280222 (noDuplicateTag!2250 thiss!23823 rules!3307 Nil!38839))))

(assert (= (and d!1080958 res!1496202) b!3682400))

(declare-fun m!4193517 () Bool)

(assert (=> d!1080958 m!4193517))

(declare-fun m!4193519 () Bool)

(assert (=> b!3682400 m!4193519))

(assert (=> b!3681589 d!1080958))

(declare-fun d!1080960 () Bool)

(declare-fun lt!1288010 () Bool)

(assert (=> d!1080960 (= lt!1288010 (select (content!5635 rules!3307) rule!403))))

(declare-fun e!2280225 () Bool)

(assert (=> d!1080960 (= lt!1288010 e!2280225)))

(declare-fun res!1496203 () Bool)

(assert (=> d!1080960 (=> (not res!1496203) (not e!2280225))))

(assert (=> d!1080960 (= res!1496203 ((_ is Cons!38835) rules!3307))))

(assert (=> d!1080960 (= (contains!7767 rules!3307 rule!403) lt!1288010)))

(declare-fun b!3682403 () Bool)

(declare-fun e!2280226 () Bool)

(assert (=> b!3682403 (= e!2280225 e!2280226)))

(declare-fun res!1496204 () Bool)

(assert (=> b!3682403 (=> res!1496204 e!2280226)))

(assert (=> b!3682403 (= res!1496204 (= (h!44255 rules!3307) rule!403))))

(declare-fun b!3682404 () Bool)

(assert (=> b!3682404 (= e!2280226 (contains!7767 (t!300714 rules!3307) rule!403))))

(assert (= (and d!1080960 res!1496203) b!3682403))

(assert (= (and b!3682403 (not res!1496204)) b!3682404))

(assert (=> d!1080960 m!4192935))

(declare-fun m!4193521 () Bool)

(assert (=> d!1080960 m!4193521))

(declare-fun m!4193523 () Bool)

(assert (=> b!3682404 m!4193523))

(assert (=> b!3681569 d!1080960))

(declare-fun e!2280233 () Bool)

(assert (=> b!3681572 (= tp!1119097 e!2280233)))

(declare-fun b!3682419 () Bool)

(declare-fun tp!1119133 () Bool)

(declare-fun tp!1119135 () Bool)

(assert (=> b!3682419 (= e!2280233 (and tp!1119133 tp!1119135))))

(declare-fun b!3682421 () Bool)

(declare-fun tp!1119134 () Bool)

(declare-fun tp!1119137 () Bool)

(assert (=> b!3682421 (= e!2280233 (and tp!1119134 tp!1119137))))

(declare-fun b!3682420 () Bool)

(declare-fun tp!1119136 () Bool)

(assert (=> b!3682420 (= e!2280233 tp!1119136)))

(declare-fun b!3682418 () Bool)

(assert (=> b!3682418 (= e!2280233 tp_is_empty!18301)))

(assert (= (and b!3681572 ((_ is ElementMatch!10609) (regex!5850 (h!44255 rules!3307)))) b!3682418))

(assert (= (and b!3681572 ((_ is Concat!16690) (regex!5850 (h!44255 rules!3307)))) b!3682419))

(assert (= (and b!3681572 ((_ is Star!10609) (regex!5850 (h!44255 rules!3307)))) b!3682420))

(assert (= (and b!3681572 ((_ is Union!10609) (regex!5850 (h!44255 rules!3307)))) b!3682421))

(declare-fun e!2280234 () Bool)

(assert (=> b!3681618 (= tp!1119088 e!2280234)))

(declare-fun b!3682423 () Bool)

(declare-fun tp!1119138 () Bool)

(declare-fun tp!1119140 () Bool)

(assert (=> b!3682423 (= e!2280234 (and tp!1119138 tp!1119140))))

(declare-fun b!3682425 () Bool)

(declare-fun tp!1119139 () Bool)

(declare-fun tp!1119142 () Bool)

(assert (=> b!3682425 (= e!2280234 (and tp!1119139 tp!1119142))))

(declare-fun b!3682424 () Bool)

(declare-fun tp!1119141 () Bool)

(assert (=> b!3682424 (= e!2280234 tp!1119141)))

(declare-fun b!3682422 () Bool)

(assert (=> b!3682422 (= e!2280234 tp_is_empty!18301)))

(assert (= (and b!3681618 ((_ is ElementMatch!10609) (regex!5850 anOtherTypeRule!33))) b!3682422))

(assert (= (and b!3681618 ((_ is Concat!16690) (regex!5850 anOtherTypeRule!33))) b!3682423))

(assert (= (and b!3681618 ((_ is Star!10609) (regex!5850 anOtherTypeRule!33))) b!3682424))

(assert (= (and b!3681618 ((_ is Union!10609) (regex!5850 anOtherTypeRule!33))) b!3682425))

(declare-fun b!3682434 () Bool)

(declare-fun e!2280239 () Bool)

(declare-fun tp!1119147 () Bool)

(assert (=> b!3682434 (= e!2280239 (and tp_is_empty!18301 tp!1119147))))

(assert (=> b!3681603 (= tp!1119093 e!2280239)))

(assert (= (and b!3681603 ((_ is Cons!38834) (t!300713 suffix!1395))) b!3682434))

(declare-fun b!3682436 () Bool)

(declare-fun e!2280241 () Bool)

(declare-fun tp!1119149 () Bool)

(assert (=> b!3682436 (= e!2280241 (and tp_is_empty!18301 tp!1119149))))

(assert (=> b!3681590 (= tp!1119091 e!2280241)))

(assert (= (and b!3681590 ((_ is Cons!38834) (originalCharacters!6564 token!511))) b!3682436))

(declare-fun e!2280244 () Bool)

(assert (=> b!3681614 (= tp!1119098 e!2280244)))

(declare-fun b!3682442 () Bool)

(declare-fun tp!1119150 () Bool)

(declare-fun tp!1119152 () Bool)

(assert (=> b!3682442 (= e!2280244 (and tp!1119150 tp!1119152))))

(declare-fun b!3682446 () Bool)

(declare-fun tp!1119151 () Bool)

(declare-fun tp!1119154 () Bool)

(assert (=> b!3682446 (= e!2280244 (and tp!1119151 tp!1119154))))

(declare-fun b!3682444 () Bool)

(declare-fun tp!1119153 () Bool)

(assert (=> b!3682444 (= e!2280244 tp!1119153)))

(declare-fun b!3682441 () Bool)

(assert (=> b!3682441 (= e!2280244 tp_is_empty!18301)))

(assert (= (and b!3681614 ((_ is ElementMatch!10609) (regex!5850 rule!403))) b!3682441))

(assert (= (and b!3681614 ((_ is Concat!16690) (regex!5850 rule!403))) b!3682442))

(assert (= (and b!3681614 ((_ is Star!10609) (regex!5850 rule!403))) b!3682444))

(assert (= (and b!3681614 ((_ is Union!10609) (regex!5850 rule!403))) b!3682446))

(declare-fun e!2280245 () Bool)

(assert (=> b!3681607 (= tp!1119090 e!2280245)))

(declare-fun b!3682452 () Bool)

(declare-fun tp!1119161 () Bool)

(declare-fun tp!1119163 () Bool)

(assert (=> b!3682452 (= e!2280245 (and tp!1119161 tp!1119163))))

(declare-fun b!3682454 () Bool)

(declare-fun tp!1119162 () Bool)

(declare-fun tp!1119167 () Bool)

(assert (=> b!3682454 (= e!2280245 (and tp!1119162 tp!1119167))))

(declare-fun b!3682453 () Bool)

(declare-fun tp!1119164 () Bool)

(assert (=> b!3682453 (= e!2280245 tp!1119164)))

(declare-fun b!3682451 () Bool)

(assert (=> b!3682451 (= e!2280245 tp_is_empty!18301)))

(assert (= (and b!3681607 ((_ is ElementMatch!10609) (regex!5850 (rule!8688 token!511)))) b!3682451))

(assert (= (and b!3681607 ((_ is Concat!16690) (regex!5850 (rule!8688 token!511)))) b!3682452))

(assert (= (and b!3681607 ((_ is Star!10609) (regex!5850 (rule!8688 token!511)))) b!3682453))

(assert (= (and b!3681607 ((_ is Union!10609) (regex!5850 (rule!8688 token!511)))) b!3682454))

(declare-fun b!3682482 () Bool)

(declare-fun b_free!97573 () Bool)

(declare-fun b_next!98277 () Bool)

(assert (=> b!3682482 (= b_free!97573 (not b_next!98277))))

(declare-fun tb!213635 () Bool)

(declare-fun t!300842 () Bool)

(assert (=> (and b!3682482 (= (toValue!8146 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300842) tb!213635))

(declare-fun result!259920 () Bool)

(assert (= result!259920 result!259804))

(assert (=> d!1080694 t!300842))

(declare-fun tb!213637 () Bool)

(declare-fun t!300844 () Bool)

(assert (=> (and b!3682482 (= (toValue!8146 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300844) tb!213637))

(declare-fun result!259922 () Bool)

(assert (= result!259922 result!259870))

(assert (=> d!1080890 t!300844))

(assert (=> d!1080820 t!300844))

(declare-fun t!300846 () Bool)

(declare-fun tb!213639 () Bool)

(assert (=> (and b!3682482 (= (toValue!8146 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toValue!8146 (transformation!5850 rule!403))) t!300846) tb!213639))

(declare-fun result!259924 () Bool)

(assert (= result!259924 result!259854))

(assert (=> d!1080816 t!300846))

(assert (=> d!1080888 t!300844))

(declare-fun t!300848 () Bool)

(declare-fun tb!213641 () Bool)

(assert (=> (and b!3682482 (= (toValue!8146 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toValue!8146 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300848) tb!213641))

(declare-fun result!259926 () Bool)

(assert (= result!259926 result!259878))

(assert (=> d!1080820 t!300848))

(declare-fun tp!1119200 () Bool)

(declare-fun b_and!275223 () Bool)

(assert (=> b!3682482 (= tp!1119200 (and (=> t!300848 result!259926) (=> t!300842 result!259920) (=> t!300846 result!259924) (=> t!300844 result!259922) b_and!275223))))

(declare-fun b_free!97575 () Bool)

(declare-fun b_next!98279 () Bool)

(assert (=> b!3682482 (= b_free!97575 (not b_next!98279))))

(declare-fun t!300850 () Bool)

(declare-fun tb!213643 () Bool)

(assert (=> (and b!3682482 (= (toChars!8005 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300850) tb!213643))

(declare-fun result!259928 () Bool)

(assert (= result!259928 result!259784))

(assert (=> d!1080632 t!300850))

(declare-fun t!300852 () Bool)

(declare-fun tb!213645 () Bool)

(assert (=> (and b!3682482 (= (toChars!8005 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toChars!8005 (transformation!5850 (rule!8688 token!511)))) t!300852) tb!213645))

(declare-fun result!259930 () Bool)

(assert (= result!259930 result!259814))

(assert (=> d!1080706 t!300852))

(assert (=> b!3682009 t!300852))

(declare-fun tb!213647 () Bool)

(declare-fun t!300854 () Bool)

(assert (=> (and b!3682482 (= (toChars!8005 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toChars!8005 (transformation!5850 (rule!8688 (_1!22484 lt!1287573))))) t!300854) tb!213647))

(declare-fun result!259932 () Bool)

(assert (= result!259932 result!259886))

(assert (=> d!1080890 t!300854))

(declare-fun tp!1119199 () Bool)

(declare-fun b_and!275225 () Bool)

(assert (=> b!3682482 (= tp!1119199 (and (=> t!300850 result!259928) (=> t!300852 result!259930) (=> t!300854 result!259932) b_and!275225))))

(declare-fun e!2280260 () Bool)

(assert (=> b!3682482 (= e!2280260 (and tp!1119200 tp!1119199))))

(declare-fun b!3682481 () Bool)

(declare-fun tp!1119201 () Bool)

(declare-fun e!2280262 () Bool)

(assert (=> b!3682481 (= e!2280262 (and tp!1119201 (inv!52330 (tag!6654 (h!44255 (t!300714 rules!3307)))) (inv!52334 (transformation!5850 (h!44255 (t!300714 rules!3307)))) e!2280260))))

(declare-fun b!3682480 () Bool)

(declare-fun e!2280261 () Bool)

(declare-fun tp!1119202 () Bool)

(assert (=> b!3682480 (= e!2280261 (and e!2280262 tp!1119202))))

(assert (=> b!3681617 (= tp!1119087 e!2280261)))

(assert (= b!3682481 b!3682482))

(assert (= b!3682480 b!3682481))

(assert (= (and b!3681617 ((_ is Cons!38835) (t!300714 rules!3307))) b!3682480))

(declare-fun m!4193529 () Bool)

(assert (=> b!3682481 m!4193529))

(declare-fun m!4193531 () Bool)

(assert (=> b!3682481 m!4193531))

(declare-fun b_lambda!109397 () Bool)

(assert (= b_lambda!109375 (or (and b!3681595 b_free!97561 (= (toValue!8146 (transformation!5850 (h!44255 rules!3307))) (toValue!8146 (transformation!5850 rule!403)))) (and b!3681606 b_free!97557 (= (toValue!8146 (transformation!5850 (rule!8688 token!511))) (toValue!8146 (transformation!5850 rule!403)))) (and b!3681612 b_free!97553) (and b!3681588 b_free!97565 (= (toValue!8146 (transformation!5850 anOtherTypeRule!33)) (toValue!8146 (transformation!5850 rule!403)))) (and b!3682482 b_free!97573 (= (toValue!8146 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toValue!8146 (transformation!5850 rule!403)))) b_lambda!109397)))

(declare-fun b_lambda!109399 () Bool)

(assert (= b_lambda!109359 (or (and b!3682482 b_free!97575 (= (toChars!8005 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681588 b_free!97567 (= (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681606 b_free!97559) (and b!3681595 b_free!97563 (= (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681612 b_free!97555 (= (toChars!8005 (transformation!5850 rule!403)) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) b_lambda!109399)))

(declare-fun b_lambda!109401 () Bool)

(assert (= b_lambda!109361 (or (and b!3682482 b_free!97575 (= (toChars!8005 (transformation!5850 (h!44255 (t!300714 rules!3307)))) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681588 b_free!97567 (= (toChars!8005 (transformation!5850 anOtherTypeRule!33)) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681606 b_free!97559) (and b!3681595 b_free!97563 (= (toChars!8005 (transformation!5850 (h!44255 rules!3307))) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) (and b!3681612 b_free!97555 (= (toChars!8005 (transformation!5850 rule!403)) (toChars!8005 (transformation!5850 (rule!8688 token!511))))) b_lambda!109401)))

(check-sat (not b!3682387) (not b!3682356) (not b!3682141) (not bm!266747) (not b!3682010) (not b!3681816) (not d!1080958) (not b_next!98265) (not d!1080898) (not bm!266728) (not b!3682004) (not b!3682104) (not b!3682068) (not b!3681766) (not b!3681814) (not d!1080956) (not b!3681906) (not d!1080598) (not d!1080820) b_and!275205 (not b!3681674) (not b!3682369) (not b!3682103) (not d!1080642) (not b!3682481) (not bm!266750) (not d!1080728) (not b!3682337) (not d!1080592) b_and!275199 (not d!1080648) (not b!3681765) (not b!3682386) (not d!1080702) (not b!3681969) (not b_next!98271) (not d!1080608) (not b!3681975) (not bm!266729) (not b!3682424) (not d!1080636) (not d!1080616) (not b!3681966) (not b!3682070) (not b_lambda!109357) (not b!3682111) (not b_lambda!109397) (not b!3681903) (not d!1080688) b_and!275201 (not d!1080900) (not d!1080588) (not d!1080676) (not bm!266739) (not b!3682097) (not b!3681848) b_and!275203 (not d!1080784) (not b!3682434) (not b!3682138) (not d!1080632) (not b!3681956) (not d!1080778) (not b!3681847) (not b!3682420) (not d!1080794) (not b!3681992) (not b!3682129) (not b!3682400) (not b!3682009) (not b_next!98261) (not d!1080730) (not b_lambda!109379) (not b_lambda!109383) (not d!1080692) b_and!275207 (not d!1080706) b_and!275195 (not d!1080780) (not b!3681973) (not b!3681951) (not b!3681767) (not d!1080802) (not b!3682442) (not b!3682121) (not b!3682350) (not b!3682115) (not bm!266746) (not b!3682454) (not b!3681818) (not b!3681841) (not d!1080950) (not d!1080680) (not b!3682064) (not bm!266730) (not b!3682071) (not b!3682421) (not d!1080914) (not d!1080704) (not b!3682002) (not b!3682127) (not d!1080640) (not b!3681926) (not d!1080790) (not b_lambda!109353) (not d!1080732) (not b!3682404) (not b!3681819) (not b!3682384) (not b_next!98279) (not b!3682140) (not d!1080806) (not b!3681899) (not b!3681771) (not d!1080796) (not bm!266751) (not tb!213605) (not b!3681770) (not bm!266733) (not b!3681840) (not b_lambda!109385) (not b!3682347) (not b!3681898) (not b!3681979) (not d!1080674) (not b!3682117) (not b!3682016) (not b!3681769) (not b!3681925) (not b_next!98263) (not b!3681957) (not b!3682480) (not bm!266743) (not b!3681629) (not b!3681820) (not d!1080750) (not b!3682137) (not d!1080792) tp_is_empty!18301 (not d!1080700) (not d!1080722) (not b!3681954) (not d!1080886) (not bm!266745) (not d!1080580) (not b!3682348) (not tb!213581) (not d!1080768) (not b!3681990) b_and!275209 (not d!1080726) (not d!1080600) (not b_next!98269) (not tb!213613) b_and!275197 (not d!1080774) (not b!3682139) (not b!3681974) (not b!3681633) (not d!1080582) (not b_next!98277) (not b!3682101) (not d!1080960) (not b!3681958) (not b!3682357) (not b!3681902) (not tb!213597) (not b!3681908) (not b!3682062) (not d!1080716) (not b!3682118) (not b!3681776) (not d!1080724) (not b!3682436) (not d!1080818) (not b!3681976) (not b_lambda!109401) b_and!275225 (not b!3681815) (not b_lambda!109381) (not b!3682119) (not d!1080932) (not bm!266742) (not b_next!98257) (not b!3681897) (not d!1080708) (not b!3681924) (not d!1080772) (not d!1080634) (not b!3682142) (not b!3682453) (not b!3681817) (not b!3682109) (not b!3681971) (not b!3682094) (not b!3681955) (not b!3682419) (not d!1080718) (not b!3682134) (not b!3681977) (not b!3682390) (not b!3682354) (not tb!213533) (not bm!266762) (not b!3681952) (not b!3682085) (not d!1080684) (not b!3682130) (not b!3682126) (not d!1080890) (not d!1080736) (not b_next!98267) (not d!1080910) (not bm!266752) (not d!1080698) (not d!1080602) (not b!3682446) (not b_next!98259) (not b!3682061) (not b!3682095) (not b!3681821) (not b!3682444) (not d!1080748) (not b!3681959) (not d!1080644) (not b!3681932) (not bm!266741) (not d!1080696) (not b!3682135) (not b!3681970) (not d!1080952) (not d!1080798) (not b_lambda!109387) b_and!275223 (not tb!213541) (not b!3682108) (not b!3682133) (not b!3682423) (not b_lambda!109399) (not d!1080808) (not b!3681907) (not tb!213517) (not b!3682425) (not d!1080770) (not b!3681972) (not d!1080690) (not b!3682452))
(check-sat (not b_next!98265) b_and!275205 b_and!275201 b_and!275203 (not b_next!98279) (not b_next!98263) b_and!275209 (not b_next!98277) b_and!275225 (not b_next!98257) (not b_next!98267) (not b_next!98259) b_and!275223 b_and!275199 (not b_next!98271) (not b_next!98261) b_and!275207 b_and!275195 (not b_next!98269) b_and!275197)
