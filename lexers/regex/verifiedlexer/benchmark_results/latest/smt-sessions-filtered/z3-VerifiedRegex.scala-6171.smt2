; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298094 () Bool)

(assert start!298094)

(declare-fun b!3181709 () Bool)

(declare-fun b_free!83905 () Bool)

(declare-fun b_next!84609 () Bool)

(assert (=> b!3181709 (= b_free!83905 (not b_next!84609))))

(declare-fun tp!1006543 () Bool)

(declare-fun b_and!210355 () Bool)

(assert (=> b!3181709 (= tp!1006543 b_and!210355)))

(declare-fun b_free!83907 () Bool)

(declare-fun b_next!84611 () Bool)

(assert (=> b!3181709 (= b_free!83907 (not b_next!84611))))

(declare-fun tp!1006536 () Bool)

(declare-fun b_and!210357 () Bool)

(assert (=> b!3181709 (= tp!1006536 b_and!210357)))

(declare-fun b!3181717 () Bool)

(declare-fun b_free!83909 () Bool)

(declare-fun b_next!84613 () Bool)

(assert (=> b!3181717 (= b_free!83909 (not b_next!84613))))

(declare-fun tp!1006534 () Bool)

(declare-fun b_and!210359 () Bool)

(assert (=> b!3181717 (= tp!1006534 b_and!210359)))

(declare-fun b_free!83911 () Bool)

(declare-fun b_next!84615 () Bool)

(assert (=> b!3181717 (= b_free!83911 (not b_next!84615))))

(declare-fun tp!1006538 () Bool)

(declare-fun b_and!210361 () Bool)

(assert (=> b!3181717 (= tp!1006538 b_and!210361)))

(declare-fun b!3181722 () Bool)

(declare-fun b_free!83913 () Bool)

(declare-fun b_next!84617 () Bool)

(assert (=> b!3181722 (= b_free!83913 (not b_next!84617))))

(declare-fun tp!1006537 () Bool)

(declare-fun b_and!210363 () Bool)

(assert (=> b!3181722 (= tp!1006537 b_and!210363)))

(declare-fun b_free!83915 () Bool)

(declare-fun b_next!84619 () Bool)

(assert (=> b!3181722 (= b_free!83915 (not b_next!84619))))

(declare-fun tp!1006546 () Bool)

(declare-fun b_and!210365 () Bool)

(assert (=> b!3181722 (= tp!1006546 b_and!210365)))

(declare-fun b!3181707 () Bool)

(declare-fun e!1982311 () Bool)

(declare-fun e!1982335 () Bool)

(assert (=> b!3181707 (= e!1982311 e!1982335)))

(declare-fun res!1293136 () Bool)

(assert (=> b!3181707 (=> (not res!1293136) (not e!1982335))))

(declare-datatypes ((C!19948 0))(
  ( (C!19949 (val!12022 Int)) )
))
(declare-datatypes ((Regex!9881 0))(
  ( (ElementMatch!9881 (c!534396 C!19948)) (Concat!15233 (regOne!20274 Regex!9881) (regTwo!20274 Regex!9881)) (EmptyExpr!9881) (Star!9881 (reg!10210 Regex!9881)) (EmptyLang!9881) (Union!9881 (regOne!20275 Regex!9881) (regTwo!20275 Regex!9881)) )
))
(declare-datatypes ((List!35870 0))(
  ( (Nil!35746) (Cons!35746 (h!41166 (_ BitVec 16)) (t!235213 List!35870)) )
))
(declare-datatypes ((TokenValue!5352 0))(
  ( (FloatLiteralValue!10704 (text!37909 List!35870)) (TokenValueExt!5351 (__x!22921 Int)) (Broken!26760 (value!166411 List!35870)) (Object!5475) (End!5352) (Def!5352) (Underscore!5352) (Match!5352) (Else!5352) (Error!5352) (Case!5352) (If!5352) (Extends!5352) (Abstract!5352) (Class!5352) (Val!5352) (DelimiterValue!10704 (del!5412 List!35870)) (KeywordValue!5358 (value!166412 List!35870)) (CommentValue!10704 (value!166413 List!35870)) (WhitespaceValue!10704 (value!166414 List!35870)) (IndentationValue!5352 (value!166415 List!35870)) (String!40093) (Int32!5352) (Broken!26761 (value!166416 List!35870)) (Boolean!5353) (Unit!50149) (OperatorValue!5355 (op!5412 List!35870)) (IdentifierValue!10704 (value!166417 List!35870)) (IdentifierValue!10705 (value!166418 List!35870)) (WhitespaceValue!10705 (value!166419 List!35870)) (True!10704) (False!10704) (Broken!26762 (value!166420 List!35870)) (Broken!26763 (value!166421 List!35870)) (True!10705) (RightBrace!5352) (RightBracket!5352) (Colon!5352) (Null!5352) (Comma!5352) (LeftBracket!5352) (False!10705) (LeftBrace!5352) (ImaginaryLiteralValue!5352 (text!37910 List!35870)) (StringLiteralValue!16056 (value!166422 List!35870)) (EOFValue!5352 (value!166423 List!35870)) (IdentValue!5352 (value!166424 List!35870)) (DelimiterValue!10705 (value!166425 List!35870)) (DedentValue!5352 (value!166426 List!35870)) (NewLineValue!5352 (value!166427 List!35870)) (IntegerValue!16056 (value!166428 (_ BitVec 32)) (text!37911 List!35870)) (IntegerValue!16057 (value!166429 Int) (text!37912 List!35870)) (Times!5352) (Or!5352) (Equal!5352) (Minus!5352) (Broken!26764 (value!166430 List!35870)) (And!5352) (Div!5352) (LessEqual!5352) (Mod!5352) (Concat!15234) (Not!5352) (Plus!5352) (SpaceValue!5352 (value!166431 List!35870)) (IntegerValue!16058 (value!166432 Int) (text!37913 List!35870)) (StringLiteralValue!16057 (text!37914 List!35870)) (FloatLiteralValue!10705 (text!37915 List!35870)) (BytesLiteralValue!5352 (value!166433 List!35870)) (CommentValue!10705 (value!166434 List!35870)) (StringLiteralValue!16058 (value!166435 List!35870)) (ErrorTokenValue!5352 (msg!5413 List!35870)) )
))
(declare-datatypes ((List!35871 0))(
  ( (Nil!35747) (Cons!35747 (h!41167 C!19948) (t!235214 List!35871)) )
))
(declare-datatypes ((IArray!21243 0))(
  ( (IArray!21244 (innerList!10679 List!35871)) )
))
(declare-datatypes ((Conc!10619 0))(
  ( (Node!10619 (left!27802 Conc!10619) (right!28132 Conc!10619) (csize!21468 Int) (cheight!10830 Int)) (Leaf!16791 (xs!13737 IArray!21243) (csize!21469 Int)) (Empty!10619) )
))
(declare-datatypes ((BalanceConc!20852 0))(
  ( (BalanceConc!20853 (c!534397 Conc!10619)) )
))
(declare-datatypes ((String!40094 0))(
  ( (String!40095 (value!166436 String)) )
))
(declare-datatypes ((TokenValueInjection!10132 0))(
  ( (TokenValueInjection!10133 (toValue!7182 Int) (toChars!7041 Int)) )
))
(declare-datatypes ((Rule!10044 0))(
  ( (Rule!10045 (regex!5122 Regex!9881) (tag!5630 String!40094) (isSeparator!5122 Bool) (transformation!5122 TokenValueInjection!10132)) )
))
(declare-fun lt!1069649 () Rule!10044)

(declare-fun lt!1069650 () List!35871)

(declare-fun matchR!4539 (Regex!9881 List!35871) Bool)

(assert (=> b!3181707 (= res!1293136 (matchR!4539 (regex!5122 lt!1069649) lt!1069650))))

(declare-datatypes ((Option!6975 0))(
  ( (None!6974) (Some!6974 (v!35428 Rule!10044)) )
))
(declare-fun lt!1069655 () Option!6975)

(declare-fun get!11368 (Option!6975) Rule!10044)

(assert (=> b!3181707 (= lt!1069649 (get!11368 lt!1069655))))

(declare-fun b!3181708 () Bool)

(declare-fun res!1293138 () Bool)

(declare-fun e!1982331 () Bool)

(assert (=> b!3181708 (=> (not res!1293138) (not e!1982331))))

(declare-datatypes ((List!35872 0))(
  ( (Nil!35748) (Cons!35748 (h!41168 Rule!10044) (t!235215 List!35872)) )
))
(declare-fun rules!2135 () List!35872)

(declare-fun sepAndNonSepRulesDisjointChars!1316 (List!35872 List!35872) Bool)

(assert (=> b!3181708 (= res!1293138 (sepAndNonSepRulesDisjointChars!1316 rules!2135 rules!2135))))

(declare-fun e!1982330 () Bool)

(assert (=> b!3181709 (= e!1982330 (and tp!1006543 tp!1006536))))

(declare-fun e!1982333 () Bool)

(declare-fun b!3181710 () Bool)

(declare-fun tp!1006544 () Bool)

(declare-fun e!1982336 () Bool)

(declare-fun inv!48595 (String!40094) Bool)

(declare-fun inv!48598 (TokenValueInjection!10132) Bool)

(assert (=> b!3181710 (= e!1982333 (and tp!1006544 (inv!48595 (tag!5630 (h!41168 rules!2135))) (inv!48598 (transformation!5122 (h!41168 rules!2135))) e!1982336))))

(declare-fun b!3181711 () Bool)

(declare-datatypes ((Token!9610 0))(
  ( (Token!9611 (value!166437 TokenValue!5352) (rule!7536 Rule!10044) (size!26974 Int) (originalCharacters!5836 List!35871)) )
))
(declare-datatypes ((List!35873 0))(
  ( (Nil!35749) (Cons!35749 (h!41169 Token!9610) (t!235216 List!35873)) )
))
(declare-fun tokens!494 () List!35873)

(declare-fun tp!1006545 () Bool)

(declare-fun e!1982316 () Bool)

(declare-fun e!1982328 () Bool)

(declare-fun inv!48599 (Token!9610) Bool)

(assert (=> b!3181711 (= e!1982328 (and (inv!48599 (h!41169 tokens!494)) e!1982316 tp!1006545))))

(declare-fun b!3181712 () Bool)

(declare-fun res!1293133 () Bool)

(assert (=> b!3181712 (=> (not res!1293133) (not e!1982331))))

(declare-fun separatorToken!241 () Token!9610)

(assert (=> b!3181712 (= res!1293133 (isSeparator!5122 (rule!7536 separatorToken!241)))))

(declare-fun b!3181713 () Bool)

(declare-fun e!1982332 () Bool)

(assert (=> b!3181713 (= e!1982332 false)))

(declare-fun b!3181714 () Bool)

(declare-fun e!1982320 () Bool)

(declare-fun lt!1069644 () Rule!10044)

(assert (=> b!3181714 (= e!1982320 (= (rule!7536 (h!41169 tokens!494)) lt!1069644))))

(declare-fun b!3181715 () Bool)

(declare-fun e!1982310 () Bool)

(declare-fun e!1982319 () Bool)

(assert (=> b!3181715 (= e!1982310 e!1982319)))

(declare-fun res!1293139 () Bool)

(assert (=> b!3181715 (=> res!1293139 e!1982319)))

(declare-fun lt!1069647 () List!35871)

(declare-fun lt!1069658 () List!35871)

(declare-fun lt!1069641 () List!35871)

(assert (=> b!3181715 (= res!1293139 (or (not (= lt!1069641 lt!1069647)) (not (= lt!1069658 lt!1069647))))))

(declare-fun list!12687 (BalanceConc!20852) List!35871)

(declare-fun charsOf!3144 (Token!9610) BalanceConc!20852)

(assert (=> b!3181715 (= lt!1069647 (list!12687 (charsOf!3144 (h!41169 tokens!494))))))

(assert (=> b!3181717 (= e!1982336 (and tp!1006534 tp!1006538))))

(declare-fun tp!1006539 () Bool)

(declare-fun e!1982309 () Bool)

(declare-fun b!3181718 () Bool)

(declare-fun inv!21 (TokenValue!5352) Bool)

(assert (=> b!3181718 (= e!1982316 (and (inv!21 (value!166437 (h!41169 tokens!494))) e!1982309 tp!1006539))))

(declare-fun b!3181719 () Bool)

(declare-fun e!1982314 () Bool)

(assert (=> b!3181719 (= e!1982314 e!1982320)))

(declare-fun res!1293132 () Bool)

(assert (=> b!3181719 (=> (not res!1293132) (not e!1982320))))

(assert (=> b!3181719 (= res!1293132 (matchR!4539 (regex!5122 lt!1069644) lt!1069647))))

(declare-fun lt!1069654 () Option!6975)

(assert (=> b!3181719 (= lt!1069644 (get!11368 lt!1069654))))

(declare-fun b!3181720 () Bool)

(assert (=> b!3181720 (= e!1982335 (= (rule!7536 separatorToken!241) lt!1069649))))

(declare-fun b!3181721 () Bool)

(declare-fun e!1982318 () Bool)

(declare-fun e!1982326 () Bool)

(assert (=> b!3181721 (= e!1982318 e!1982326)))

(declare-fun res!1293141 () Bool)

(assert (=> b!3181721 (=> res!1293141 e!1982326)))

(assert (=> b!3181721 (= res!1293141 (isSeparator!5122 (rule!7536 (h!41169 tokens!494))))))

(declare-datatypes ((Unit!50150 0))(
  ( (Unit!50151) )
))
(declare-fun lt!1069645 () Unit!50150)

(declare-fun lambda!116423 () Int)

(declare-fun forallContained!1105 (List!35873 Int Token!9610) Unit!50150)

(assert (=> b!3181721 (= lt!1069645 (forallContained!1105 tokens!494 lambda!116423 (h!41169 tokens!494)))))

(declare-fun e!1982323 () Bool)

(assert (=> b!3181722 (= e!1982323 (and tp!1006537 tp!1006546))))

(declare-fun b!3181723 () Bool)

(declare-fun e!1982325 () Bool)

(declare-fun tp!1006535 () Bool)

(declare-fun e!1982317 () Bool)

(assert (=> b!3181723 (= e!1982317 (and (inv!21 (value!166437 separatorToken!241)) e!1982325 tp!1006535))))

(declare-fun b!3181724 () Bool)

(declare-fun e!1982321 () Unit!50150)

(declare-fun Unit!50152 () Unit!50150)

(assert (=> b!3181724 (= e!1982321 Unit!50152)))

(declare-fun lt!1069656 () C!19948)

(declare-fun lt!1069648 () Unit!50150)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!320 (Regex!9881 List!35871 C!19948) Unit!50150)

(assert (=> b!3181724 (= lt!1069648 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!320 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650 lt!1069656))))

(declare-fun res!1293143 () Bool)

(assert (=> b!3181724 (= res!1293143 (not (matchR!4539 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650)))))

(assert (=> b!3181724 (=> (not res!1293143) (not e!1982332))))

(assert (=> b!3181724 e!1982332))

(declare-fun b!3181725 () Bool)

(declare-fun e!1982322 () Bool)

(assert (=> b!3181725 (= e!1982322 e!1982331)))

(declare-fun res!1293137 () Bool)

(assert (=> b!3181725 (=> (not res!1293137) (not e!1982331))))

(declare-datatypes ((LexerInterface!4711 0))(
  ( (LexerInterfaceExt!4708 (__x!22922 Int)) (Lexer!4709) )
))
(declare-fun thiss!18206 () LexerInterface!4711)

(declare-datatypes ((IArray!21245 0))(
  ( (IArray!21246 (innerList!10680 List!35873)) )
))
(declare-datatypes ((Conc!10620 0))(
  ( (Node!10620 (left!27803 Conc!10620) (right!28133 Conc!10620) (csize!21470 Int) (cheight!10831 Int)) (Leaf!16792 (xs!13738 IArray!21245) (csize!21471 Int)) (Empty!10620) )
))
(declare-datatypes ((BalanceConc!20854 0))(
  ( (BalanceConc!20855 (c!534398 Conc!10620)) )
))
(declare-fun lt!1069646 () BalanceConc!20854)

(declare-fun rulesProduceEachTokenIndividually!1162 (LexerInterface!4711 List!35872 BalanceConc!20854) Bool)

(assert (=> b!3181725 (= res!1293137 (rulesProduceEachTokenIndividually!1162 thiss!18206 rules!2135 lt!1069646))))

(declare-fun seqFromList!3323 (List!35873) BalanceConc!20854)

(assert (=> b!3181725 (= lt!1069646 (seqFromList!3323 tokens!494))))

(declare-fun b!3181726 () Bool)

(declare-fun e!1982324 () Bool)

(assert (=> b!3181726 (= e!1982324 (not (= lt!1069650 Nil!35747)))))

(declare-fun lt!1069653 () Unit!50150)

(assert (=> b!3181726 (= lt!1069653 e!1982321)))

(declare-fun c!534395 () Bool)

(declare-fun contains!6321 (List!35871 C!19948) Bool)

(declare-fun usedCharacters!466 (Regex!9881) List!35871)

(assert (=> b!3181726 (= c!534395 (not (contains!6321 (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241))) lt!1069656)))))

(declare-fun head!6947 (List!35871) C!19948)

(assert (=> b!3181726 (= lt!1069656 (head!6947 lt!1069650))))

(declare-fun lt!1069640 () BalanceConc!20852)

(declare-datatypes ((tuple2!35086 0))(
  ( (tuple2!35087 (_1!20677 Token!9610) (_2!20677 List!35871)) )
))
(declare-datatypes ((Option!6976 0))(
  ( (None!6975) (Some!6975 (v!35429 tuple2!35086)) )
))
(declare-fun maxPrefixOneRule!1516 (LexerInterface!4711 Rule!10044 List!35871) Option!6976)

(declare-fun apply!8038 (TokenValueInjection!10132 BalanceConc!20852) TokenValue!5352)

(declare-fun size!26975 (List!35871) Int)

(assert (=> b!3181726 (= (maxPrefixOneRule!1516 thiss!18206 (rule!7536 (h!41169 tokens!494)) lt!1069647) (Some!6975 (tuple2!35087 (Token!9611 (apply!8038 (transformation!5122 (rule!7536 (h!41169 tokens!494))) lt!1069640) (rule!7536 (h!41169 tokens!494)) (size!26975 lt!1069647) lt!1069647) Nil!35747)))))

(declare-fun lt!1069652 () Unit!50150)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!629 (LexerInterface!4711 List!35872 List!35871 List!35871 List!35871 Rule!10044) Unit!50150)

(assert (=> b!3181726 (= lt!1069652 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!629 thiss!18206 rules!2135 lt!1069647 lt!1069647 Nil!35747 (rule!7536 (h!41169 tokens!494))))))

(assert (=> b!3181726 e!1982311))

(declare-fun res!1293140 () Bool)

(assert (=> b!3181726 (=> (not res!1293140) (not e!1982311))))

(declare-fun isDefined!5466 (Option!6975) Bool)

(assert (=> b!3181726 (= res!1293140 (isDefined!5466 lt!1069655))))

(declare-fun getRuleFromTag!851 (LexerInterface!4711 List!35872 String!40094) Option!6975)

(assert (=> b!3181726 (= lt!1069655 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 separatorToken!241))))))

(declare-fun lt!1069639 () Unit!50150)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!851 (LexerInterface!4711 List!35872 List!35871 Token!9610) Unit!50150)

(assert (=> b!3181726 (= lt!1069639 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!851 thiss!18206 rules!2135 lt!1069650 separatorToken!241))))

(assert (=> b!3181726 e!1982314))

(declare-fun res!1293134 () Bool)

(assert (=> b!3181726 (=> (not res!1293134) (not e!1982314))))

(assert (=> b!3181726 (= res!1293134 (isDefined!5466 lt!1069654))))

(assert (=> b!3181726 (= lt!1069654 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 (h!41169 tokens!494)))))))

(declare-fun lt!1069657 () Unit!50150)

(assert (=> b!3181726 (= lt!1069657 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!851 thiss!18206 rules!2135 lt!1069647 (h!41169 tokens!494)))))

(declare-fun lt!1069637 () Unit!50150)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!772 (LexerInterface!4711 List!35872 List!35873 Token!9610) Unit!50150)

(assert (=> b!3181726 (= lt!1069637 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!772 thiss!18206 rules!2135 tokens!494 (h!41169 tokens!494)))))

(declare-fun isEmpty!19865 (List!35871) Bool)

(declare-fun getSuffix!1338 (List!35871 List!35871) List!35871)

(assert (=> b!3181726 (isEmpty!19865 (getSuffix!1338 lt!1069647 lt!1069647))))

(declare-fun lt!1069651 () Unit!50150)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!16 (List!35871) Unit!50150)

(assert (=> b!3181726 (= lt!1069651 (lemmaGetSuffixOnListWithItSelfIsEmpty!16 lt!1069647))))

(declare-fun b!3181727 () Bool)

(declare-fun res!1293150 () Bool)

(assert (=> b!3181727 (=> (not res!1293150) (not e!1982322))))

(declare-fun rulesInvariant!4108 (LexerInterface!4711 List!35872) Bool)

(assert (=> b!3181727 (= res!1293150 (rulesInvariant!4108 thiss!18206 rules!2135))))

(declare-fun b!3181728 () Bool)

(declare-fun e!1982315 () Bool)

(declare-fun tp!1006541 () Bool)

(assert (=> b!3181728 (= e!1982315 (and e!1982333 tp!1006541))))

(declare-fun b!3181729 () Bool)

(declare-fun tp!1006542 () Bool)

(assert (=> b!3181729 (= e!1982325 (and tp!1006542 (inv!48595 (tag!5630 (rule!7536 separatorToken!241))) (inv!48598 (transformation!5122 (rule!7536 separatorToken!241))) e!1982323))))

(declare-fun b!3181730 () Bool)

(declare-fun tp!1006540 () Bool)

(assert (=> b!3181730 (= e!1982309 (and tp!1006540 (inv!48595 (tag!5630 (rule!7536 (h!41169 tokens!494)))) (inv!48598 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) e!1982330))))

(declare-fun b!3181731 () Bool)

(assert (=> b!3181731 (= e!1982326 e!1982324)))

(declare-fun res!1293146 () Bool)

(assert (=> b!3181731 (=> res!1293146 e!1982324)))

(declare-fun lt!1069643 () BalanceConc!20852)

(declare-fun ++!8546 (List!35871 List!35871) List!35871)

(assert (=> b!3181731 (= res!1293146 (not (= (list!12687 lt!1069643) (++!8546 lt!1069647 lt!1069650))))))

(assert (=> b!3181731 (= lt!1069650 (list!12687 (charsOf!3144 separatorToken!241)))))

(declare-fun printWithSeparatorToken!20 (LexerInterface!4711 BalanceConc!20854 Token!9610) BalanceConc!20852)

(assert (=> b!3181731 (= lt!1069643 (printWithSeparatorToken!20 thiss!18206 lt!1069646 separatorToken!241))))

(declare-fun b!3181732 () Bool)

(assert (=> b!3181732 (= e!1982319 e!1982318)))

(declare-fun res!1293145 () Bool)

(assert (=> b!3181732 (=> res!1293145 e!1982318)))

(declare-fun isEmpty!19866 (BalanceConc!20854) Bool)

(declare-datatypes ((tuple2!35088 0))(
  ( (tuple2!35089 (_1!20678 BalanceConc!20854) (_2!20678 BalanceConc!20852)) )
))
(declare-fun lex!2051 (LexerInterface!4711 List!35872 BalanceConc!20852) tuple2!35088)

(assert (=> b!3181732 (= res!1293145 (isEmpty!19866 (_1!20678 (lex!2051 thiss!18206 rules!2135 lt!1069640))))))

(declare-fun seqFromList!3324 (List!35871) BalanceConc!20852)

(assert (=> b!3181732 (= lt!1069640 (seqFromList!3324 lt!1069647))))

(declare-fun res!1293151 () Bool)

(assert (=> start!298094 (=> (not res!1293151) (not e!1982322))))

(get-info :version)

(assert (=> start!298094 (= res!1293151 ((_ is Lexer!4709) thiss!18206))))

(assert (=> start!298094 e!1982322))

(assert (=> start!298094 true))

(assert (=> start!298094 e!1982315))

(assert (=> start!298094 (and (inv!48599 separatorToken!241) e!1982317)))

(assert (=> start!298094 e!1982328))

(declare-fun b!3181716 () Bool)

(declare-fun res!1293142 () Bool)

(assert (=> b!3181716 (=> (not res!1293142) (not e!1982331))))

(declare-fun forall!7236 (List!35873 Int) Bool)

(assert (=> b!3181716 (= res!1293142 (forall!7236 tokens!494 lambda!116423))))

(declare-fun b!3181733 () Bool)

(declare-fun res!1293148 () Bool)

(assert (=> b!3181733 (=> (not res!1293148) (not e!1982322))))

(declare-fun isEmpty!19867 (List!35872) Bool)

(assert (=> b!3181733 (= res!1293148 (not (isEmpty!19867 rules!2135)))))

(declare-fun b!3181734 () Bool)

(declare-fun res!1293135 () Bool)

(assert (=> b!3181734 (=> (not res!1293135) (not e!1982331))))

(declare-fun rulesProduceIndividualToken!2203 (LexerInterface!4711 List!35872 Token!9610) Bool)

(assert (=> b!3181734 (= res!1293135 (rulesProduceIndividualToken!2203 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3181735 () Bool)

(declare-fun res!1293147 () Bool)

(assert (=> b!3181735 (=> (not res!1293147) (not e!1982331))))

(assert (=> b!3181735 (= res!1293147 (and (not ((_ is Nil!35749) tokens!494)) ((_ is Nil!35749) (t!235216 tokens!494))))))

(declare-fun b!3181736 () Bool)

(declare-fun res!1293149 () Bool)

(assert (=> b!3181736 (=> res!1293149 e!1982319)))

(assert (=> b!3181736 (= res!1293149 (not (rulesProduceIndividualToken!2203 thiss!18206 rules!2135 (h!41169 tokens!494))))))

(declare-fun b!3181737 () Bool)

(declare-fun Unit!50153 () Unit!50150)

(assert (=> b!3181737 (= e!1982321 Unit!50153)))

(declare-fun b!3181738 () Bool)

(assert (=> b!3181738 (= e!1982331 (not e!1982310))))

(declare-fun res!1293144 () Bool)

(assert (=> b!3181738 (=> res!1293144 e!1982310)))

(assert (=> b!3181738 (= res!1293144 (not (= lt!1069658 lt!1069641)))))

(declare-fun printList!1265 (LexerInterface!4711 List!35873) List!35871)

(assert (=> b!3181738 (= lt!1069641 (printList!1265 thiss!18206 (Cons!35749 (h!41169 tokens!494) Nil!35749)))))

(declare-fun lt!1069638 () BalanceConc!20852)

(assert (=> b!3181738 (= lt!1069658 (list!12687 lt!1069638))))

(declare-fun lt!1069642 () BalanceConc!20854)

(declare-fun printTailRec!1210 (LexerInterface!4711 BalanceConc!20854 Int BalanceConc!20852) BalanceConc!20852)

(assert (=> b!3181738 (= lt!1069638 (printTailRec!1210 thiss!18206 lt!1069642 0 (BalanceConc!20853 Empty!10619)))))

(declare-fun print!1778 (LexerInterface!4711 BalanceConc!20854) BalanceConc!20852)

(assert (=> b!3181738 (= lt!1069638 (print!1778 thiss!18206 lt!1069642))))

(declare-fun singletonSeq!2218 (Token!9610) BalanceConc!20854)

(assert (=> b!3181738 (= lt!1069642 (singletonSeq!2218 (h!41169 tokens!494)))))

(assert (= (and start!298094 res!1293151) b!3181733))

(assert (= (and b!3181733 res!1293148) b!3181727))

(assert (= (and b!3181727 res!1293150) b!3181725))

(assert (= (and b!3181725 res!1293137) b!3181734))

(assert (= (and b!3181734 res!1293135) b!3181712))

(assert (= (and b!3181712 res!1293133) b!3181716))

(assert (= (and b!3181716 res!1293142) b!3181708))

(assert (= (and b!3181708 res!1293138) b!3181735))

(assert (= (and b!3181735 res!1293147) b!3181738))

(assert (= (and b!3181738 (not res!1293144)) b!3181715))

(assert (= (and b!3181715 (not res!1293139)) b!3181736))

(assert (= (and b!3181736 (not res!1293149)) b!3181732))

(assert (= (and b!3181732 (not res!1293145)) b!3181721))

(assert (= (and b!3181721 (not res!1293141)) b!3181731))

(assert (= (and b!3181731 (not res!1293146)) b!3181726))

(assert (= (and b!3181726 res!1293134) b!3181719))

(assert (= (and b!3181719 res!1293132) b!3181714))

(assert (= (and b!3181726 res!1293140) b!3181707))

(assert (= (and b!3181707 res!1293136) b!3181720))

(assert (= (and b!3181726 c!534395) b!3181724))

(assert (= (and b!3181726 (not c!534395)) b!3181737))

(assert (= (and b!3181724 res!1293143) b!3181713))

(assert (= b!3181710 b!3181717))

(assert (= b!3181728 b!3181710))

(assert (= (and start!298094 ((_ is Cons!35748) rules!2135)) b!3181728))

(assert (= b!3181729 b!3181722))

(assert (= b!3181723 b!3181729))

(assert (= start!298094 b!3181723))

(assert (= b!3181730 b!3181709))

(assert (= b!3181718 b!3181730))

(assert (= b!3181711 b!3181718))

(assert (= (and start!298094 ((_ is Cons!35749) tokens!494)) b!3181711))

(declare-fun m!3438477 () Bool)

(assert (=> b!3181710 m!3438477))

(declare-fun m!3438479 () Bool)

(assert (=> b!3181710 m!3438479))

(declare-fun m!3438481 () Bool)

(assert (=> b!3181708 m!3438481))

(declare-fun m!3438483 () Bool)

(assert (=> b!3181711 m!3438483))

(declare-fun m!3438485 () Bool)

(assert (=> b!3181715 m!3438485))

(assert (=> b!3181715 m!3438485))

(declare-fun m!3438487 () Bool)

(assert (=> b!3181715 m!3438487))

(declare-fun m!3438489 () Bool)

(assert (=> start!298094 m!3438489))

(declare-fun m!3438491 () Bool)

(assert (=> b!3181732 m!3438491))

(declare-fun m!3438493 () Bool)

(assert (=> b!3181732 m!3438493))

(declare-fun m!3438495 () Bool)

(assert (=> b!3181732 m!3438495))

(declare-fun m!3438497 () Bool)

(assert (=> b!3181736 m!3438497))

(declare-fun m!3438499 () Bool)

(assert (=> b!3181729 m!3438499))

(declare-fun m!3438501 () Bool)

(assert (=> b!3181729 m!3438501))

(declare-fun m!3438503 () Bool)

(assert (=> b!3181721 m!3438503))

(declare-fun m!3438505 () Bool)

(assert (=> b!3181738 m!3438505))

(declare-fun m!3438507 () Bool)

(assert (=> b!3181738 m!3438507))

(declare-fun m!3438509 () Bool)

(assert (=> b!3181738 m!3438509))

(declare-fun m!3438511 () Bool)

(assert (=> b!3181738 m!3438511))

(declare-fun m!3438513 () Bool)

(assert (=> b!3181738 m!3438513))

(declare-fun m!3438515 () Bool)

(assert (=> b!3181707 m!3438515))

(declare-fun m!3438517 () Bool)

(assert (=> b!3181707 m!3438517))

(declare-fun m!3438519 () Bool)

(assert (=> b!3181727 m!3438519))

(declare-fun m!3438521 () Bool)

(assert (=> b!3181723 m!3438521))

(declare-fun m!3438523 () Bool)

(assert (=> b!3181724 m!3438523))

(declare-fun m!3438525 () Bool)

(assert (=> b!3181724 m!3438525))

(declare-fun m!3438527 () Bool)

(assert (=> b!3181731 m!3438527))

(declare-fun m!3438529 () Bool)

(assert (=> b!3181731 m!3438529))

(assert (=> b!3181731 m!3438527))

(declare-fun m!3438531 () Bool)

(assert (=> b!3181731 m!3438531))

(declare-fun m!3438533 () Bool)

(assert (=> b!3181731 m!3438533))

(declare-fun m!3438535 () Bool)

(assert (=> b!3181731 m!3438535))

(declare-fun m!3438537 () Bool)

(assert (=> b!3181734 m!3438537))

(declare-fun m!3438539 () Bool)

(assert (=> b!3181725 m!3438539))

(declare-fun m!3438541 () Bool)

(assert (=> b!3181725 m!3438541))

(declare-fun m!3438543 () Bool)

(assert (=> b!3181716 m!3438543))

(declare-fun m!3438545 () Bool)

(assert (=> b!3181733 m!3438545))

(declare-fun m!3438547 () Bool)

(assert (=> b!3181730 m!3438547))

(declare-fun m!3438549 () Bool)

(assert (=> b!3181730 m!3438549))

(declare-fun m!3438551 () Bool)

(assert (=> b!3181718 m!3438551))

(declare-fun m!3438553 () Bool)

(assert (=> b!3181719 m!3438553))

(declare-fun m!3438555 () Bool)

(assert (=> b!3181719 m!3438555))

(declare-fun m!3438557 () Bool)

(assert (=> b!3181726 m!3438557))

(declare-fun m!3438559 () Bool)

(assert (=> b!3181726 m!3438559))

(declare-fun m!3438561 () Bool)

(assert (=> b!3181726 m!3438561))

(declare-fun m!3438563 () Bool)

(assert (=> b!3181726 m!3438563))

(declare-fun m!3438565 () Bool)

(assert (=> b!3181726 m!3438565))

(declare-fun m!3438567 () Bool)

(assert (=> b!3181726 m!3438567))

(declare-fun m!3438569 () Bool)

(assert (=> b!3181726 m!3438569))

(declare-fun m!3438571 () Bool)

(assert (=> b!3181726 m!3438571))

(assert (=> b!3181726 m!3438563))

(assert (=> b!3181726 m!3438559))

(declare-fun m!3438573 () Bool)

(assert (=> b!3181726 m!3438573))

(declare-fun m!3438575 () Bool)

(assert (=> b!3181726 m!3438575))

(declare-fun m!3438577 () Bool)

(assert (=> b!3181726 m!3438577))

(declare-fun m!3438579 () Bool)

(assert (=> b!3181726 m!3438579))

(declare-fun m!3438581 () Bool)

(assert (=> b!3181726 m!3438581))

(declare-fun m!3438583 () Bool)

(assert (=> b!3181726 m!3438583))

(declare-fun m!3438585 () Bool)

(assert (=> b!3181726 m!3438585))

(declare-fun m!3438587 () Bool)

(assert (=> b!3181726 m!3438587))

(declare-fun m!3438589 () Bool)

(assert (=> b!3181726 m!3438589))

(check-sat (not b!3181716) (not b!3181725) (not b!3181729) (not b!3181727) (not start!298094) (not b!3181724) b_and!210361 (not b!3181731) b_and!210359 (not b!3181732) (not b_next!84609) (not b!3181730) b_and!210365 (not b_next!84617) (not b!3181719) b_and!210355 (not b_next!84613) (not b_next!84615) (not b!3181736) (not b!3181710) (not b!3181718) (not b!3181723) (not b!3181721) (not b!3181738) (not b!3181733) (not b!3181726) b_and!210357 (not b!3181711) b_and!210363 (not b_next!84619) (not b!3181728) (not b!3181708) (not b!3181707) (not b!3181734) (not b!3181715) (not b_next!84611))
(check-sat (not b_next!84609) b_and!210365 (not b_next!84617) (not b_next!84615) b_and!210361 b_and!210357 b_and!210359 (not b_next!84611) b_and!210355 (not b_next!84613) b_and!210363 (not b_next!84619))
(get-model)

(declare-fun d!870616 () Bool)

(assert (=> d!870616 (= (isEmpty!19867 rules!2135) ((_ is Nil!35748) rules!2135))))

(assert (=> b!3181733 d!870616))

(declare-fun d!870618 () Bool)

(declare-fun res!1293199 () Bool)

(declare-fun e!1982378 () Bool)

(assert (=> d!870618 (=> (not res!1293199) (not e!1982378))))

(assert (=> d!870618 (= res!1293199 (not (isEmpty!19865 (originalCharacters!5836 (h!41169 tokens!494)))))))

(assert (=> d!870618 (= (inv!48599 (h!41169 tokens!494)) e!1982378)))

(declare-fun b!3181812 () Bool)

(declare-fun res!1293200 () Bool)

(assert (=> b!3181812 (=> (not res!1293200) (not e!1982378))))

(declare-fun dynLambda!14411 (Int TokenValue!5352) BalanceConc!20852)

(assert (=> b!3181812 (= res!1293200 (= (originalCharacters!5836 (h!41169 tokens!494)) (list!12687 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (value!166437 (h!41169 tokens!494))))))))

(declare-fun b!3181813 () Bool)

(assert (=> b!3181813 (= e!1982378 (= (size!26974 (h!41169 tokens!494)) (size!26975 (originalCharacters!5836 (h!41169 tokens!494)))))))

(assert (= (and d!870618 res!1293199) b!3181812))

(assert (= (and b!3181812 res!1293200) b!3181813))

(declare-fun b_lambda!86659 () Bool)

(assert (=> (not b_lambda!86659) (not b!3181812)))

(declare-fun t!235219 () Bool)

(declare-fun tb!155275 () Bool)

(assert (=> (and b!3181709 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235219) tb!155275))

(declare-fun b!3181821 () Bool)

(declare-fun e!1982384 () Bool)

(declare-fun tp!1006549 () Bool)

(declare-fun inv!48602 (Conc!10619) Bool)

(assert (=> b!3181821 (= e!1982384 (and (inv!48602 (c!534397 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (value!166437 (h!41169 tokens!494))))) tp!1006549))))

(declare-fun result!197336 () Bool)

(declare-fun inv!48603 (BalanceConc!20852) Bool)

(assert (=> tb!155275 (= result!197336 (and (inv!48603 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (value!166437 (h!41169 tokens!494)))) e!1982384))))

(assert (= tb!155275 b!3181821))

(declare-fun m!3438663 () Bool)

(assert (=> b!3181821 m!3438663))

(declare-fun m!3438665 () Bool)

(assert (=> tb!155275 m!3438665))

(assert (=> b!3181812 t!235219))

(declare-fun b_and!210367 () Bool)

(assert (= b_and!210357 (and (=> t!235219 result!197336) b_and!210367)))

(declare-fun t!235221 () Bool)

(declare-fun tb!155277 () Bool)

(assert (=> (and b!3181717 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235221) tb!155277))

(declare-fun result!197340 () Bool)

(assert (= result!197340 result!197336))

(assert (=> b!3181812 t!235221))

(declare-fun b_and!210369 () Bool)

(assert (= b_and!210361 (and (=> t!235221 result!197340) b_and!210369)))

(declare-fun tb!155279 () Bool)

(declare-fun t!235223 () Bool)

(assert (=> (and b!3181722 (= (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235223) tb!155279))

(declare-fun result!197342 () Bool)

(assert (= result!197342 result!197336))

(assert (=> b!3181812 t!235223))

(declare-fun b_and!210371 () Bool)

(assert (= b_and!210365 (and (=> t!235223 result!197342) b_and!210371)))

(declare-fun m!3438667 () Bool)

(assert (=> d!870618 m!3438667))

(declare-fun m!3438669 () Bool)

(assert (=> b!3181812 m!3438669))

(assert (=> b!3181812 m!3438669))

(declare-fun m!3438671 () Bool)

(assert (=> b!3181812 m!3438671))

(declare-fun m!3438673 () Bool)

(assert (=> b!3181813 m!3438673))

(assert (=> b!3181711 d!870618))

(declare-fun lt!1069691 () Bool)

(declare-fun d!870626 () Bool)

(declare-fun isEmpty!19869 (List!35873) Bool)

(declare-fun list!12690 (BalanceConc!20854) List!35873)

(assert (=> d!870626 (= lt!1069691 (isEmpty!19869 (list!12690 (_1!20678 (lex!2051 thiss!18206 rules!2135 lt!1069640)))))))

(declare-fun isEmpty!19870 (Conc!10620) Bool)

(assert (=> d!870626 (= lt!1069691 (isEmpty!19870 (c!534398 (_1!20678 (lex!2051 thiss!18206 rules!2135 lt!1069640)))))))

(assert (=> d!870626 (= (isEmpty!19866 (_1!20678 (lex!2051 thiss!18206 rules!2135 lt!1069640))) lt!1069691)))

(declare-fun bs!539902 () Bool)

(assert (= bs!539902 d!870626))

(declare-fun m!3438683 () Bool)

(assert (=> bs!539902 m!3438683))

(assert (=> bs!539902 m!3438683))

(declare-fun m!3438685 () Bool)

(assert (=> bs!539902 m!3438685))

(declare-fun m!3438687 () Bool)

(assert (=> bs!539902 m!3438687))

(assert (=> b!3181732 d!870626))

(declare-fun b!3181900 () Bool)

(declare-fun e!1982431 () Bool)

(declare-fun lt!1069717 () tuple2!35088)

(assert (=> b!3181900 (= e!1982431 (not (isEmpty!19866 (_1!20678 lt!1069717))))))

(declare-fun b!3181902 () Bool)

(declare-fun res!1293249 () Bool)

(declare-fun e!1982430 () Bool)

(assert (=> b!3181902 (=> (not res!1293249) (not e!1982430))))

(declare-datatypes ((tuple2!35090 0))(
  ( (tuple2!35091 (_1!20679 List!35873) (_2!20679 List!35871)) )
))
(declare-fun lexList!1272 (LexerInterface!4711 List!35872 List!35871) tuple2!35090)

(assert (=> b!3181902 (= res!1293249 (= (list!12690 (_1!20678 lt!1069717)) (_1!20679 (lexList!1272 thiss!18206 rules!2135 (list!12687 lt!1069640)))))))

(declare-fun b!3181903 () Bool)

(declare-fun e!1982432 () Bool)

(assert (=> b!3181903 (= e!1982432 (= (_2!20678 lt!1069717) lt!1069640))))

(declare-fun b!3181904 () Bool)

(assert (=> b!3181904 (= e!1982430 (= (list!12687 (_2!20678 lt!1069717)) (_2!20679 (lexList!1272 thiss!18206 rules!2135 (list!12687 lt!1069640)))))))

(declare-fun b!3181901 () Bool)

(assert (=> b!3181901 (= e!1982432 e!1982431)))

(declare-fun res!1293248 () Bool)

(declare-fun size!26977 (BalanceConc!20852) Int)

(assert (=> b!3181901 (= res!1293248 (< (size!26977 (_2!20678 lt!1069717)) (size!26977 lt!1069640)))))

(assert (=> b!3181901 (=> (not res!1293248) (not e!1982431))))

(declare-fun d!870630 () Bool)

(assert (=> d!870630 e!1982430))

(declare-fun res!1293250 () Bool)

(assert (=> d!870630 (=> (not res!1293250) (not e!1982430))))

(assert (=> d!870630 (= res!1293250 e!1982432)))

(declare-fun c!534432 () Bool)

(declare-fun size!26978 (BalanceConc!20854) Int)

(assert (=> d!870630 (= c!534432 (> (size!26978 (_1!20678 lt!1069717)) 0))))

(declare-fun lexTailRecV2!910 (LexerInterface!4711 List!35872 BalanceConc!20852 BalanceConc!20852 BalanceConc!20852 BalanceConc!20854) tuple2!35088)

(assert (=> d!870630 (= lt!1069717 (lexTailRecV2!910 thiss!18206 rules!2135 lt!1069640 (BalanceConc!20853 Empty!10619) lt!1069640 (BalanceConc!20855 Empty!10620)))))

(assert (=> d!870630 (= (lex!2051 thiss!18206 rules!2135 lt!1069640) lt!1069717)))

(assert (= (and d!870630 c!534432) b!3181901))

(assert (= (and d!870630 (not c!534432)) b!3181903))

(assert (= (and b!3181901 res!1293248) b!3181900))

(assert (= (and d!870630 res!1293250) b!3181902))

(assert (= (and b!3181902 res!1293249) b!3181904))

(declare-fun m!3438799 () Bool)

(assert (=> b!3181901 m!3438799))

(declare-fun m!3438801 () Bool)

(assert (=> b!3181901 m!3438801))

(declare-fun m!3438803 () Bool)

(assert (=> d!870630 m!3438803))

(declare-fun m!3438805 () Bool)

(assert (=> d!870630 m!3438805))

(declare-fun m!3438807 () Bool)

(assert (=> b!3181900 m!3438807))

(declare-fun m!3438809 () Bool)

(assert (=> b!3181902 m!3438809))

(declare-fun m!3438811 () Bool)

(assert (=> b!3181902 m!3438811))

(assert (=> b!3181902 m!3438811))

(declare-fun m!3438813 () Bool)

(assert (=> b!3181902 m!3438813))

(declare-fun m!3438815 () Bool)

(assert (=> b!3181904 m!3438815))

(assert (=> b!3181904 m!3438811))

(assert (=> b!3181904 m!3438811))

(assert (=> b!3181904 m!3438813))

(assert (=> b!3181732 d!870630))

(declare-fun d!870666 () Bool)

(declare-fun fromListB!1496 (List!35871) BalanceConc!20852)

(assert (=> d!870666 (= (seqFromList!3324 lt!1069647) (fromListB!1496 lt!1069647))))

(declare-fun bs!539908 () Bool)

(assert (= bs!539908 d!870666))

(declare-fun m!3438817 () Bool)

(assert (=> bs!539908 m!3438817))

(assert (=> b!3181732 d!870666))

(declare-fun d!870668 () Bool)

(declare-fun dynLambda!14415 (Int Token!9610) Bool)

(assert (=> d!870668 (dynLambda!14415 lambda!116423 (h!41169 tokens!494))))

(declare-fun lt!1069720 () Unit!50150)

(declare-fun choose!18548 (List!35873 Int Token!9610) Unit!50150)

(assert (=> d!870668 (= lt!1069720 (choose!18548 tokens!494 lambda!116423 (h!41169 tokens!494)))))

(declare-fun e!1982435 () Bool)

(assert (=> d!870668 e!1982435))

(declare-fun res!1293253 () Bool)

(assert (=> d!870668 (=> (not res!1293253) (not e!1982435))))

(assert (=> d!870668 (= res!1293253 (forall!7236 tokens!494 lambda!116423))))

(assert (=> d!870668 (= (forallContained!1105 tokens!494 lambda!116423 (h!41169 tokens!494)) lt!1069720)))

(declare-fun b!3181907 () Bool)

(declare-fun contains!6322 (List!35873 Token!9610) Bool)

(assert (=> b!3181907 (= e!1982435 (contains!6322 tokens!494 (h!41169 tokens!494)))))

(assert (= (and d!870668 res!1293253) b!3181907))

(declare-fun b_lambda!86665 () Bool)

(assert (=> (not b_lambda!86665) (not d!870668)))

(declare-fun m!3438819 () Bool)

(assert (=> d!870668 m!3438819))

(declare-fun m!3438821 () Bool)

(assert (=> d!870668 m!3438821))

(assert (=> d!870668 m!3438543))

(declare-fun m!3438823 () Bool)

(assert (=> b!3181907 m!3438823))

(assert (=> b!3181721 d!870668))

(declare-fun d!870670 () Bool)

(assert (=> d!870670 (= (inv!48595 (tag!5630 (h!41168 rules!2135))) (= (mod (str.len (value!166436 (tag!5630 (h!41168 rules!2135)))) 2) 0))))

(assert (=> b!3181710 d!870670))

(declare-fun d!870672 () Bool)

(declare-fun res!1293256 () Bool)

(declare-fun e!1982438 () Bool)

(assert (=> d!870672 (=> (not res!1293256) (not e!1982438))))

(declare-fun semiInverseModEq!2133 (Int Int) Bool)

(assert (=> d!870672 (= res!1293256 (semiInverseModEq!2133 (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toValue!7182 (transformation!5122 (h!41168 rules!2135)))))))

(assert (=> d!870672 (= (inv!48598 (transformation!5122 (h!41168 rules!2135))) e!1982438)))

(declare-fun b!3181910 () Bool)

(declare-fun equivClasses!2032 (Int Int) Bool)

(assert (=> b!3181910 (= e!1982438 (equivClasses!2032 (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toValue!7182 (transformation!5122 (h!41168 rules!2135)))))))

(assert (= (and d!870672 res!1293256) b!3181910))

(declare-fun m!3438825 () Bool)

(assert (=> d!870672 m!3438825))

(declare-fun m!3438827 () Bool)

(assert (=> b!3181910 m!3438827))

(assert (=> b!3181710 d!870672))

(declare-fun lt!1069723 () List!35871)

(declare-fun e!1982444 () Bool)

(declare-fun b!3181922 () Bool)

(assert (=> b!3181922 (= e!1982444 (or (not (= lt!1069650 Nil!35747)) (= lt!1069723 lt!1069647)))))

(declare-fun b!3181921 () Bool)

(declare-fun res!1293261 () Bool)

(assert (=> b!3181921 (=> (not res!1293261) (not e!1982444))))

(assert (=> b!3181921 (= res!1293261 (= (size!26975 lt!1069723) (+ (size!26975 lt!1069647) (size!26975 lt!1069650))))))

(declare-fun b!3181920 () Bool)

(declare-fun e!1982443 () List!35871)

(assert (=> b!3181920 (= e!1982443 (Cons!35747 (h!41167 lt!1069647) (++!8546 (t!235214 lt!1069647) lt!1069650)))))

(declare-fun b!3181919 () Bool)

(assert (=> b!3181919 (= e!1982443 lt!1069650)))

(declare-fun d!870674 () Bool)

(assert (=> d!870674 e!1982444))

(declare-fun res!1293262 () Bool)

(assert (=> d!870674 (=> (not res!1293262) (not e!1982444))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4844 (List!35871) (InoxSet C!19948))

(assert (=> d!870674 (= res!1293262 (= (content!4844 lt!1069723) ((_ map or) (content!4844 lt!1069647) (content!4844 lt!1069650))))))

(assert (=> d!870674 (= lt!1069723 e!1982443)))

(declare-fun c!534435 () Bool)

(assert (=> d!870674 (= c!534435 ((_ is Nil!35747) lt!1069647))))

(assert (=> d!870674 (= (++!8546 lt!1069647 lt!1069650) lt!1069723)))

(assert (= (and d!870674 c!534435) b!3181919))

(assert (= (and d!870674 (not c!534435)) b!3181920))

(assert (= (and d!870674 res!1293262) b!3181921))

(assert (= (and b!3181921 res!1293261) b!3181922))

(declare-fun m!3438829 () Bool)

(assert (=> b!3181921 m!3438829))

(assert (=> b!3181921 m!3438567))

(declare-fun m!3438831 () Bool)

(assert (=> b!3181921 m!3438831))

(declare-fun m!3438833 () Bool)

(assert (=> b!3181920 m!3438833))

(declare-fun m!3438835 () Bool)

(assert (=> d!870674 m!3438835))

(declare-fun m!3438837 () Bool)

(assert (=> d!870674 m!3438837))

(declare-fun m!3438839 () Bool)

(assert (=> d!870674 m!3438839))

(assert (=> b!3181731 d!870674))

(declare-fun d!870676 () Bool)

(declare-fun lt!1069726 () BalanceConc!20852)

(assert (=> d!870676 (= (list!12687 lt!1069726) (originalCharacters!5836 separatorToken!241))))

(assert (=> d!870676 (= lt!1069726 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (value!166437 separatorToken!241)))))

(assert (=> d!870676 (= (charsOf!3144 separatorToken!241) lt!1069726)))

(declare-fun b_lambda!86667 () Bool)

(assert (=> (not b_lambda!86667) (not d!870676)))

(declare-fun t!235238 () Bool)

(declare-fun tb!155293 () Bool)

(assert (=> (and b!3181709 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241)))) t!235238) tb!155293))

(declare-fun b!3181923 () Bool)

(declare-fun e!1982445 () Bool)

(declare-fun tp!1006554 () Bool)

(assert (=> b!3181923 (= e!1982445 (and (inv!48602 (c!534397 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (value!166437 separatorToken!241)))) tp!1006554))))

(declare-fun result!197358 () Bool)

(assert (=> tb!155293 (= result!197358 (and (inv!48603 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (value!166437 separatorToken!241))) e!1982445))))

(assert (= tb!155293 b!3181923))

(declare-fun m!3438841 () Bool)

(assert (=> b!3181923 m!3438841))

(declare-fun m!3438843 () Bool)

(assert (=> tb!155293 m!3438843))

(assert (=> d!870676 t!235238))

(declare-fun b_and!210385 () Bool)

(assert (= b_and!210367 (and (=> t!235238 result!197358) b_and!210385)))

(declare-fun t!235240 () Bool)

(declare-fun tb!155295 () Bool)

(assert (=> (and b!3181717 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241)))) t!235240) tb!155295))

(declare-fun result!197360 () Bool)

(assert (= result!197360 result!197358))

(assert (=> d!870676 t!235240))

(declare-fun b_and!210387 () Bool)

(assert (= b_and!210369 (and (=> t!235240 result!197360) b_and!210387)))

(declare-fun t!235242 () Bool)

(declare-fun tb!155297 () Bool)

(assert (=> (and b!3181722 (= (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241)))) t!235242) tb!155297))

(declare-fun result!197362 () Bool)

(assert (= result!197362 result!197358))

(assert (=> d!870676 t!235242))

(declare-fun b_and!210389 () Bool)

(assert (= b_and!210371 (and (=> t!235242 result!197362) b_and!210389)))

(declare-fun m!3438845 () Bool)

(assert (=> d!870676 m!3438845))

(declare-fun m!3438847 () Bool)

(assert (=> d!870676 m!3438847))

(assert (=> b!3181731 d!870676))

(declare-fun d!870678 () Bool)

(declare-fun list!12691 (Conc!10619) List!35871)

(assert (=> d!870678 (= (list!12687 (charsOf!3144 separatorToken!241)) (list!12691 (c!534397 (charsOf!3144 separatorToken!241))))))

(declare-fun bs!539909 () Bool)

(assert (= bs!539909 d!870678))

(declare-fun m!3438849 () Bool)

(assert (=> bs!539909 m!3438849))

(assert (=> b!3181731 d!870678))

(declare-fun lt!1069729 () BalanceConc!20852)

(declare-fun d!870680 () Bool)

(declare-fun printWithSeparatorTokenList!92 (LexerInterface!4711 List!35873 Token!9610) List!35871)

(assert (=> d!870680 (= (list!12687 lt!1069729) (printWithSeparatorTokenList!92 thiss!18206 (list!12690 lt!1069646) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!6 (LexerInterface!4711 BalanceConc!20854 Token!9610 Int BalanceConc!20852) BalanceConc!20852)

(assert (=> d!870680 (= lt!1069729 (printWithSeparatorTokenTailRec!6 thiss!18206 lt!1069646 separatorToken!241 0 (BalanceConc!20853 Empty!10619)))))

(assert (=> d!870680 (isSeparator!5122 (rule!7536 separatorToken!241))))

(assert (=> d!870680 (= (printWithSeparatorToken!20 thiss!18206 lt!1069646 separatorToken!241) lt!1069729)))

(declare-fun bs!539910 () Bool)

(assert (= bs!539910 d!870680))

(declare-fun m!3438851 () Bool)

(assert (=> bs!539910 m!3438851))

(declare-fun m!3438853 () Bool)

(assert (=> bs!539910 m!3438853))

(assert (=> bs!539910 m!3438853))

(declare-fun m!3438855 () Bool)

(assert (=> bs!539910 m!3438855))

(declare-fun m!3438857 () Bool)

(assert (=> bs!539910 m!3438857))

(assert (=> b!3181731 d!870680))

(declare-fun d!870682 () Bool)

(assert (=> d!870682 (= (list!12687 lt!1069643) (list!12691 (c!534397 lt!1069643)))))

(declare-fun bs!539911 () Bool)

(assert (= bs!539911 d!870682))

(declare-fun m!3438859 () Bool)

(assert (=> bs!539911 m!3438859))

(assert (=> b!3181731 d!870682))

(declare-fun bs!539915 () Bool)

(declare-fun d!870684 () Bool)

(assert (= bs!539915 (and d!870684 b!3181716)))

(declare-fun lambda!116433 () Int)

(assert (=> bs!539915 (not (= lambda!116433 lambda!116423))))

(declare-fun b!3181953 () Bool)

(declare-fun e!1982469 () Bool)

(assert (=> b!3181953 (= e!1982469 true)))

(declare-fun b!3181952 () Bool)

(declare-fun e!1982468 () Bool)

(assert (=> b!3181952 (= e!1982468 e!1982469)))

(declare-fun b!3181951 () Bool)

(declare-fun e!1982467 () Bool)

(assert (=> b!3181951 (= e!1982467 e!1982468)))

(assert (=> d!870684 e!1982467))

(assert (= b!3181952 b!3181953))

(assert (= b!3181951 b!3181952))

(assert (= (and d!870684 ((_ is Cons!35748) rules!2135)) b!3181951))

(declare-fun order!18211 () Int)

(declare-fun order!18209 () Int)

(declare-fun dynLambda!14417 (Int Int) Int)

(declare-fun dynLambda!14418 (Int Int) Int)

(assert (=> b!3181953 (< (dynLambda!14417 order!18209 (toValue!7182 (transformation!5122 (h!41168 rules!2135)))) (dynLambda!14418 order!18211 lambda!116433))))

(declare-fun order!18213 () Int)

(declare-fun dynLambda!14419 (Int Int) Int)

(assert (=> b!3181953 (< (dynLambda!14419 order!18213 (toChars!7041 (transformation!5122 (h!41168 rules!2135)))) (dynLambda!14418 order!18211 lambda!116433))))

(assert (=> d!870684 true))

(declare-fun e!1982460 () Bool)

(assert (=> d!870684 e!1982460))

(declare-fun res!1293268 () Bool)

(assert (=> d!870684 (=> (not res!1293268) (not e!1982460))))

(declare-fun lt!1069738 () Bool)

(assert (=> d!870684 (= res!1293268 (= lt!1069738 (forall!7236 (list!12690 lt!1069646) lambda!116433)))))

(declare-fun forall!7238 (BalanceConc!20854 Int) Bool)

(assert (=> d!870684 (= lt!1069738 (forall!7238 lt!1069646 lambda!116433))))

(assert (=> d!870684 (not (isEmpty!19867 rules!2135))))

(assert (=> d!870684 (= (rulesProduceEachTokenIndividually!1162 thiss!18206 rules!2135 lt!1069646) lt!1069738)))

(declare-fun b!3181942 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1701 (LexerInterface!4711 List!35872 List!35873) Bool)

(assert (=> b!3181942 (= e!1982460 (= lt!1069738 (rulesProduceEachTokenIndividuallyList!1701 thiss!18206 rules!2135 (list!12690 lt!1069646))))))

(assert (= (and d!870684 res!1293268) b!3181942))

(assert (=> d!870684 m!3438853))

(assert (=> d!870684 m!3438853))

(declare-fun m!3438875 () Bool)

(assert (=> d!870684 m!3438875))

(declare-fun m!3438877 () Bool)

(assert (=> d!870684 m!3438877))

(assert (=> d!870684 m!3438545))

(assert (=> b!3181942 m!3438853))

(assert (=> b!3181942 m!3438853))

(declare-fun m!3438879 () Bool)

(assert (=> b!3181942 m!3438879))

(assert (=> b!3181725 d!870684))

(declare-fun d!870692 () Bool)

(declare-fun fromListB!1498 (List!35873) BalanceConc!20854)

(assert (=> d!870692 (= (seqFromList!3323 tokens!494) (fromListB!1498 tokens!494))))

(declare-fun bs!539916 () Bool)

(assert (= bs!539916 d!870692))

(declare-fun m!3438881 () Bool)

(assert (=> bs!539916 m!3438881))

(assert (=> b!3181725 d!870692))

(declare-fun d!870694 () Bool)

(assert (=> d!870694 (not (matchR!4539 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650))))

(declare-fun lt!1069743 () Unit!50150)

(declare-fun choose!18551 (Regex!9881 List!35871 C!19948) Unit!50150)

(assert (=> d!870694 (= lt!1069743 (choose!18551 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650 lt!1069656))))

(declare-fun validRegex!4532 (Regex!9881) Bool)

(assert (=> d!870694 (validRegex!4532 (regex!5122 (rule!7536 separatorToken!241)))))

(assert (=> d!870694 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!320 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650 lt!1069656) lt!1069743)))

(declare-fun bs!539917 () Bool)

(assert (= bs!539917 d!870694))

(assert (=> bs!539917 m!3438525))

(declare-fun m!3438883 () Bool)

(assert (=> bs!539917 m!3438883))

(declare-fun m!3438885 () Bool)

(assert (=> bs!539917 m!3438885))

(assert (=> b!3181724 d!870694))

(declare-fun b!3182014 () Bool)

(declare-fun e!1982509 () Bool)

(declare-fun e!1982508 () Bool)

(assert (=> b!3182014 (= e!1982509 e!1982508)))

(declare-fun res!1293309 () Bool)

(assert (=> b!3182014 (=> (not res!1293309) (not e!1982508))))

(declare-fun lt!1069750 () Bool)

(assert (=> b!3182014 (= res!1293309 (not lt!1069750))))

(declare-fun b!3182015 () Bool)

(declare-fun e!1982505 () Bool)

(assert (=> b!3182015 (= e!1982508 e!1982505)))

(declare-fun res!1293310 () Bool)

(assert (=> b!3182015 (=> res!1293310 e!1982505)))

(declare-fun call!230972 () Bool)

(assert (=> b!3182015 (= res!1293310 call!230972)))

(declare-fun bm!230967 () Bool)

(assert (=> bm!230967 (= call!230972 (isEmpty!19865 lt!1069650))))

(declare-fun b!3182016 () Bool)

(declare-fun res!1293314 () Bool)

(assert (=> b!3182016 (=> res!1293314 e!1982509)))

(assert (=> b!3182016 (= res!1293314 (not ((_ is ElementMatch!9881) (regex!5122 (rule!7536 separatorToken!241)))))))

(declare-fun e!1982511 () Bool)

(assert (=> b!3182016 (= e!1982511 e!1982509)))

(declare-fun b!3182017 () Bool)

(declare-fun res!1293313 () Bool)

(declare-fun e!1982506 () Bool)

(assert (=> b!3182017 (=> (not res!1293313) (not e!1982506))))

(declare-fun tail!5172 (List!35871) List!35871)

(assert (=> b!3182017 (= res!1293313 (isEmpty!19865 (tail!5172 lt!1069650)))))

(declare-fun b!3182018 () Bool)

(declare-fun res!1293311 () Bool)

(assert (=> b!3182018 (=> (not res!1293311) (not e!1982506))))

(assert (=> b!3182018 (= res!1293311 (not call!230972))))

(declare-fun b!3182019 () Bool)

(declare-fun e!1982507 () Bool)

(assert (=> b!3182019 (= e!1982507 (= lt!1069750 call!230972))))

(declare-fun b!3182020 () Bool)

(declare-fun e!1982510 () Bool)

(declare-fun nullable!3380 (Regex!9881) Bool)

(assert (=> b!3182020 (= e!1982510 (nullable!3380 (regex!5122 (rule!7536 separatorToken!241))))))

(declare-fun b!3182021 () Bool)

(assert (=> b!3182021 (= e!1982505 (not (= (head!6947 lt!1069650) (c!534396 (regex!5122 (rule!7536 separatorToken!241))))))))

(declare-fun d!870696 () Bool)

(assert (=> d!870696 e!1982507))

(declare-fun c!534446 () Bool)

(assert (=> d!870696 (= c!534446 ((_ is EmptyExpr!9881) (regex!5122 (rule!7536 separatorToken!241))))))

(assert (=> d!870696 (= lt!1069750 e!1982510)))

(declare-fun c!534448 () Bool)

(assert (=> d!870696 (= c!534448 (isEmpty!19865 lt!1069650))))

(assert (=> d!870696 (validRegex!4532 (regex!5122 (rule!7536 separatorToken!241)))))

(assert (=> d!870696 (= (matchR!4539 (regex!5122 (rule!7536 separatorToken!241)) lt!1069650) lt!1069750)))

(declare-fun b!3182022 () Bool)

(declare-fun derivativeStep!2933 (Regex!9881 C!19948) Regex!9881)

(assert (=> b!3182022 (= e!1982510 (matchR!4539 (derivativeStep!2933 (regex!5122 (rule!7536 separatorToken!241)) (head!6947 lt!1069650)) (tail!5172 lt!1069650)))))

(declare-fun b!3182023 () Bool)

(assert (=> b!3182023 (= e!1982507 e!1982511)))

(declare-fun c!534447 () Bool)

(assert (=> b!3182023 (= c!534447 ((_ is EmptyLang!9881) (regex!5122 (rule!7536 separatorToken!241))))))

(declare-fun b!3182024 () Bool)

(assert (=> b!3182024 (= e!1982506 (= (head!6947 lt!1069650) (c!534396 (regex!5122 (rule!7536 separatorToken!241)))))))

(declare-fun b!3182025 () Bool)

(declare-fun res!1293315 () Bool)

(assert (=> b!3182025 (=> res!1293315 e!1982509)))

(assert (=> b!3182025 (= res!1293315 e!1982506)))

(declare-fun res!1293316 () Bool)

(assert (=> b!3182025 (=> (not res!1293316) (not e!1982506))))

(assert (=> b!3182025 (= res!1293316 lt!1069750)))

(declare-fun b!3182026 () Bool)

(declare-fun res!1293312 () Bool)

(assert (=> b!3182026 (=> res!1293312 e!1982505)))

(assert (=> b!3182026 (= res!1293312 (not (isEmpty!19865 (tail!5172 lt!1069650))))))

(declare-fun b!3182027 () Bool)

(assert (=> b!3182027 (= e!1982511 (not lt!1069750))))

(assert (= (and d!870696 c!534448) b!3182020))

(assert (= (and d!870696 (not c!534448)) b!3182022))

(assert (= (and d!870696 c!534446) b!3182019))

(assert (= (and d!870696 (not c!534446)) b!3182023))

(assert (= (and b!3182023 c!534447) b!3182027))

(assert (= (and b!3182023 (not c!534447)) b!3182016))

(assert (= (and b!3182016 (not res!1293314)) b!3182025))

(assert (= (and b!3182025 res!1293316) b!3182018))

(assert (= (and b!3182018 res!1293311) b!3182017))

(assert (= (and b!3182017 res!1293313) b!3182024))

(assert (= (and b!3182025 (not res!1293315)) b!3182014))

(assert (= (and b!3182014 res!1293309) b!3182015))

(assert (= (and b!3182015 (not res!1293310)) b!3182026))

(assert (= (and b!3182026 (not res!1293312)) b!3182021))

(assert (= (or b!3182019 b!3182015 b!3182018) bm!230967))

(declare-fun m!3438925 () Bool)

(assert (=> b!3182026 m!3438925))

(assert (=> b!3182026 m!3438925))

(declare-fun m!3438929 () Bool)

(assert (=> b!3182026 m!3438929))

(declare-fun m!3438931 () Bool)

(assert (=> b!3182020 m!3438931))

(declare-fun m!3438933 () Bool)

(assert (=> bm!230967 m!3438933))

(assert (=> b!3182021 m!3438585))

(assert (=> b!3182017 m!3438925))

(assert (=> b!3182017 m!3438925))

(assert (=> b!3182017 m!3438929))

(assert (=> b!3182022 m!3438585))

(assert (=> b!3182022 m!3438585))

(declare-fun m!3438935 () Bool)

(assert (=> b!3182022 m!3438935))

(assert (=> b!3182022 m!3438925))

(assert (=> b!3182022 m!3438935))

(assert (=> b!3182022 m!3438925))

(declare-fun m!3438937 () Bool)

(assert (=> b!3182022 m!3438937))

(assert (=> b!3182024 m!3438585))

(assert (=> d!870696 m!3438933))

(assert (=> d!870696 m!3438885))

(assert (=> b!3181724 d!870696))

(declare-fun d!870710 () Bool)

(declare-fun lt!1069759 () Bool)

(declare-fun e!1982518 () Bool)

(assert (=> d!870710 (= lt!1069759 e!1982518)))

(declare-fun res!1293326 () Bool)

(assert (=> d!870710 (=> (not res!1293326) (not e!1982518))))

(assert (=> d!870710 (= res!1293326 (= (list!12690 (_1!20678 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 separatorToken!241))))) (list!12690 (singletonSeq!2218 separatorToken!241))))))

(declare-fun e!1982517 () Bool)

(assert (=> d!870710 (= lt!1069759 e!1982517)))

(declare-fun res!1293327 () Bool)

(assert (=> d!870710 (=> (not res!1293327) (not e!1982517))))

(declare-fun lt!1069758 () tuple2!35088)

(assert (=> d!870710 (= res!1293327 (= (size!26978 (_1!20678 lt!1069758)) 1))))

(assert (=> d!870710 (= lt!1069758 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 separatorToken!241))))))

(assert (=> d!870710 (not (isEmpty!19867 rules!2135))))

(assert (=> d!870710 (= (rulesProduceIndividualToken!2203 thiss!18206 rules!2135 separatorToken!241) lt!1069759)))

(declare-fun b!3182036 () Bool)

(declare-fun res!1293325 () Bool)

(assert (=> b!3182036 (=> (not res!1293325) (not e!1982517))))

(declare-fun apply!8041 (BalanceConc!20854 Int) Token!9610)

(assert (=> b!3182036 (= res!1293325 (= (apply!8041 (_1!20678 lt!1069758) 0) separatorToken!241))))

(declare-fun b!3182037 () Bool)

(declare-fun isEmpty!19874 (BalanceConc!20852) Bool)

(assert (=> b!3182037 (= e!1982517 (isEmpty!19874 (_2!20678 lt!1069758)))))

(declare-fun b!3182038 () Bool)

(assert (=> b!3182038 (= e!1982518 (isEmpty!19874 (_2!20678 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 separatorToken!241))))))))

(assert (= (and d!870710 res!1293327) b!3182036))

(assert (= (and b!3182036 res!1293325) b!3182037))

(assert (= (and d!870710 res!1293326) b!3182038))

(declare-fun m!3438941 () Bool)

(assert (=> d!870710 m!3438941))

(declare-fun m!3438943 () Bool)

(assert (=> d!870710 m!3438943))

(assert (=> d!870710 m!3438943))

(declare-fun m!3438945 () Bool)

(assert (=> d!870710 m!3438945))

(assert (=> d!870710 m!3438943))

(declare-fun m!3438947 () Bool)

(assert (=> d!870710 m!3438947))

(assert (=> d!870710 m!3438545))

(declare-fun m!3438949 () Bool)

(assert (=> d!870710 m!3438949))

(assert (=> d!870710 m!3438947))

(declare-fun m!3438951 () Bool)

(assert (=> d!870710 m!3438951))

(declare-fun m!3438953 () Bool)

(assert (=> b!3182036 m!3438953))

(declare-fun m!3438955 () Bool)

(assert (=> b!3182037 m!3438955))

(assert (=> b!3182038 m!3438943))

(assert (=> b!3182038 m!3438943))

(assert (=> b!3182038 m!3438947))

(assert (=> b!3182038 m!3438947))

(assert (=> b!3182038 m!3438951))

(declare-fun m!3438957 () Bool)

(assert (=> b!3182038 m!3438957))

(assert (=> b!3181734 d!870710))

(declare-fun b!3182061 () Bool)

(declare-fun e!1982534 () Bool)

(declare-fun inv!16 (TokenValue!5352) Bool)

(assert (=> b!3182061 (= e!1982534 (inv!16 (value!166437 separatorToken!241)))))

(declare-fun d!870714 () Bool)

(declare-fun c!534458 () Bool)

(assert (=> d!870714 (= c!534458 ((_ is IntegerValue!16056) (value!166437 separatorToken!241)))))

(assert (=> d!870714 (= (inv!21 (value!166437 separatorToken!241)) e!1982534)))

(declare-fun b!3182062 () Bool)

(declare-fun e!1982533 () Bool)

(assert (=> b!3182062 (= e!1982534 e!1982533)))

(declare-fun c!534457 () Bool)

(assert (=> b!3182062 (= c!534457 ((_ is IntegerValue!16057) (value!166437 separatorToken!241)))))

(declare-fun b!3182063 () Bool)

(declare-fun res!1293334 () Bool)

(declare-fun e!1982535 () Bool)

(assert (=> b!3182063 (=> res!1293334 e!1982535)))

(assert (=> b!3182063 (= res!1293334 (not ((_ is IntegerValue!16058) (value!166437 separatorToken!241))))))

(assert (=> b!3182063 (= e!1982533 e!1982535)))

(declare-fun b!3182064 () Bool)

(declare-fun inv!17 (TokenValue!5352) Bool)

(assert (=> b!3182064 (= e!1982533 (inv!17 (value!166437 separatorToken!241)))))

(declare-fun b!3182065 () Bool)

(declare-fun inv!15 (TokenValue!5352) Bool)

(assert (=> b!3182065 (= e!1982535 (inv!15 (value!166437 separatorToken!241)))))

(assert (= (and d!870714 c!534458) b!3182061))

(assert (= (and d!870714 (not c!534458)) b!3182062))

(assert (= (and b!3182062 c!534457) b!3182064))

(assert (= (and b!3182062 (not c!534457)) b!3182063))

(assert (= (and b!3182063 (not res!1293334)) b!3182065))

(declare-fun m!3438959 () Bool)

(assert (=> b!3182061 m!3438959))

(declare-fun m!3438961 () Bool)

(assert (=> b!3182064 m!3438961))

(declare-fun m!3438963 () Bool)

(assert (=> b!3182065 m!3438963))

(assert (=> b!3181723 d!870714))

(declare-fun d!870716 () Bool)

(declare-fun lt!1069774 () BalanceConc!20852)

(assert (=> d!870716 (= (list!12687 lt!1069774) (printList!1265 thiss!18206 (list!12690 lt!1069642)))))

(assert (=> d!870716 (= lt!1069774 (printTailRec!1210 thiss!18206 lt!1069642 0 (BalanceConc!20853 Empty!10619)))))

(assert (=> d!870716 (= (print!1778 thiss!18206 lt!1069642) lt!1069774)))

(declare-fun bs!539921 () Bool)

(assert (= bs!539921 d!870716))

(declare-fun m!3438983 () Bool)

(assert (=> bs!539921 m!3438983))

(declare-fun m!3438985 () Bool)

(assert (=> bs!539921 m!3438985))

(assert (=> bs!539921 m!3438985))

(declare-fun m!3438987 () Bool)

(assert (=> bs!539921 m!3438987))

(assert (=> bs!539921 m!3438509))

(assert (=> b!3181738 d!870716))

(declare-fun d!870724 () Bool)

(declare-fun lt!1069792 () BalanceConc!20852)

(declare-fun printListTailRec!539 (LexerInterface!4711 List!35873 List!35871) List!35871)

(declare-fun dropList!1056 (BalanceConc!20854 Int) List!35873)

(assert (=> d!870724 (= (list!12687 lt!1069792) (printListTailRec!539 thiss!18206 (dropList!1056 lt!1069642 0) (list!12687 (BalanceConc!20853 Empty!10619))))))

(declare-fun e!1982548 () BalanceConc!20852)

(assert (=> d!870724 (= lt!1069792 e!1982548)))

(declare-fun c!534466 () Bool)

(assert (=> d!870724 (= c!534466 (>= 0 (size!26978 lt!1069642)))))

(declare-fun e!1982547 () Bool)

(assert (=> d!870724 e!1982547))

(declare-fun res!1293339 () Bool)

(assert (=> d!870724 (=> (not res!1293339) (not e!1982547))))

(assert (=> d!870724 (= res!1293339 (>= 0 0))))

(assert (=> d!870724 (= (printTailRec!1210 thiss!18206 lt!1069642 0 (BalanceConc!20853 Empty!10619)) lt!1069792)))

(declare-fun b!3182084 () Bool)

(assert (=> b!3182084 (= e!1982547 (<= 0 (size!26978 lt!1069642)))))

(declare-fun b!3182085 () Bool)

(assert (=> b!3182085 (= e!1982548 (BalanceConc!20853 Empty!10619))))

(declare-fun b!3182086 () Bool)

(declare-fun ++!8548 (BalanceConc!20852 BalanceConc!20852) BalanceConc!20852)

(assert (=> b!3182086 (= e!1982548 (printTailRec!1210 thiss!18206 lt!1069642 (+ 0 1) (++!8548 (BalanceConc!20853 Empty!10619) (charsOf!3144 (apply!8041 lt!1069642 0)))))))

(declare-fun lt!1069794 () List!35873)

(assert (=> b!3182086 (= lt!1069794 (list!12690 lt!1069642))))

(declare-fun lt!1069791 () Unit!50150)

(declare-fun lemmaDropApply!1015 (List!35873 Int) Unit!50150)

(assert (=> b!3182086 (= lt!1069791 (lemmaDropApply!1015 lt!1069794 0))))

(declare-fun head!6949 (List!35873) Token!9610)

(declare-fun drop!1839 (List!35873 Int) List!35873)

(declare-fun apply!8042 (List!35873 Int) Token!9610)

(assert (=> b!3182086 (= (head!6949 (drop!1839 lt!1069794 0)) (apply!8042 lt!1069794 0))))

(declare-fun lt!1069793 () Unit!50150)

(assert (=> b!3182086 (= lt!1069793 lt!1069791)))

(declare-fun lt!1069789 () List!35873)

(assert (=> b!3182086 (= lt!1069789 (list!12690 lt!1069642))))

(declare-fun lt!1069790 () Unit!50150)

(declare-fun lemmaDropTail!899 (List!35873 Int) Unit!50150)

(assert (=> b!3182086 (= lt!1069790 (lemmaDropTail!899 lt!1069789 0))))

(declare-fun tail!5173 (List!35873) List!35873)

(assert (=> b!3182086 (= (tail!5173 (drop!1839 lt!1069789 0)) (drop!1839 lt!1069789 (+ 0 1)))))

(declare-fun lt!1069795 () Unit!50150)

(assert (=> b!3182086 (= lt!1069795 lt!1069790)))

(assert (= (and d!870724 res!1293339) b!3182084))

(assert (= (and d!870724 c!534466) b!3182085))

(assert (= (and d!870724 (not c!534466)) b!3182086))

(declare-fun m!3438989 () Bool)

(assert (=> d!870724 m!3438989))

(declare-fun m!3438991 () Bool)

(assert (=> d!870724 m!3438991))

(assert (=> d!870724 m!3438989))

(declare-fun m!3438993 () Bool)

(assert (=> d!870724 m!3438993))

(declare-fun m!3438995 () Bool)

(assert (=> d!870724 m!3438995))

(assert (=> d!870724 m!3438993))

(declare-fun m!3438997 () Bool)

(assert (=> d!870724 m!3438997))

(assert (=> b!3182084 m!3438991))

(declare-fun m!3438999 () Bool)

(assert (=> b!3182086 m!3438999))

(declare-fun m!3439001 () Bool)

(assert (=> b!3182086 m!3439001))

(declare-fun m!3439003 () Bool)

(assert (=> b!3182086 m!3439003))

(declare-fun m!3439005 () Bool)

(assert (=> b!3182086 m!3439005))

(assert (=> b!3182086 m!3438985))

(declare-fun m!3439007 () Bool)

(assert (=> b!3182086 m!3439007))

(declare-fun m!3439009 () Bool)

(assert (=> b!3182086 m!3439009))

(assert (=> b!3182086 m!3439005))

(declare-fun m!3439011 () Bool)

(assert (=> b!3182086 m!3439011))

(assert (=> b!3182086 m!3439003))

(declare-fun m!3439013 () Bool)

(assert (=> b!3182086 m!3439013))

(declare-fun m!3439015 () Bool)

(assert (=> b!3182086 m!3439015))

(assert (=> b!3182086 m!3438999))

(assert (=> b!3182086 m!3439015))

(declare-fun m!3439017 () Bool)

(assert (=> b!3182086 m!3439017))

(declare-fun m!3439019 () Bool)

(assert (=> b!3182086 m!3439019))

(assert (=> b!3182086 m!3439011))

(declare-fun m!3439021 () Bool)

(assert (=> b!3182086 m!3439021))

(assert (=> b!3181738 d!870724))

(declare-fun d!870726 () Bool)

(assert (=> d!870726 (= (list!12687 lt!1069638) (list!12691 (c!534397 lt!1069638)))))

(declare-fun bs!539922 () Bool)

(assert (= bs!539922 d!870726))

(declare-fun m!3439023 () Bool)

(assert (=> bs!539922 m!3439023))

(assert (=> b!3181738 d!870726))

(declare-fun d!870728 () Bool)

(declare-fun e!1982551 () Bool)

(assert (=> d!870728 e!1982551))

(declare-fun res!1293342 () Bool)

(assert (=> d!870728 (=> (not res!1293342) (not e!1982551))))

(declare-fun lt!1069798 () BalanceConc!20854)

(assert (=> d!870728 (= res!1293342 (= (list!12690 lt!1069798) (Cons!35749 (h!41169 tokens!494) Nil!35749)))))

(declare-fun singleton!972 (Token!9610) BalanceConc!20854)

(assert (=> d!870728 (= lt!1069798 (singleton!972 (h!41169 tokens!494)))))

(assert (=> d!870728 (= (singletonSeq!2218 (h!41169 tokens!494)) lt!1069798)))

(declare-fun b!3182089 () Bool)

(declare-fun isBalanced!3183 (Conc!10620) Bool)

(assert (=> b!3182089 (= e!1982551 (isBalanced!3183 (c!534398 lt!1069798)))))

(assert (= (and d!870728 res!1293342) b!3182089))

(declare-fun m!3439025 () Bool)

(assert (=> d!870728 m!3439025))

(declare-fun m!3439027 () Bool)

(assert (=> d!870728 m!3439027))

(declare-fun m!3439029 () Bool)

(assert (=> b!3182089 m!3439029))

(assert (=> b!3181738 d!870728))

(declare-fun d!870730 () Bool)

(declare-fun c!534469 () Bool)

(assert (=> d!870730 (= c!534469 ((_ is Cons!35749) (Cons!35749 (h!41169 tokens!494) Nil!35749)))))

(declare-fun e!1982554 () List!35871)

(assert (=> d!870730 (= (printList!1265 thiss!18206 (Cons!35749 (h!41169 tokens!494) Nil!35749)) e!1982554)))

(declare-fun b!3182094 () Bool)

(assert (=> b!3182094 (= e!1982554 (++!8546 (list!12687 (charsOf!3144 (h!41169 (Cons!35749 (h!41169 tokens!494) Nil!35749)))) (printList!1265 thiss!18206 (t!235216 (Cons!35749 (h!41169 tokens!494) Nil!35749)))))))

(declare-fun b!3182095 () Bool)

(assert (=> b!3182095 (= e!1982554 Nil!35747)))

(assert (= (and d!870730 c!534469) b!3182094))

(assert (= (and d!870730 (not c!534469)) b!3182095))

(declare-fun m!3439031 () Bool)

(assert (=> b!3182094 m!3439031))

(assert (=> b!3182094 m!3439031))

(declare-fun m!3439033 () Bool)

(assert (=> b!3182094 m!3439033))

(declare-fun m!3439035 () Bool)

(assert (=> b!3182094 m!3439035))

(assert (=> b!3182094 m!3439033))

(assert (=> b!3182094 m!3439035))

(declare-fun m!3439037 () Bool)

(assert (=> b!3182094 m!3439037))

(assert (=> b!3181738 d!870730))

(declare-fun d!870732 () Bool)

(declare-fun res!1293345 () Bool)

(declare-fun e!1982557 () Bool)

(assert (=> d!870732 (=> (not res!1293345) (not e!1982557))))

(declare-fun rulesValid!1893 (LexerInterface!4711 List!35872) Bool)

(assert (=> d!870732 (= res!1293345 (rulesValid!1893 thiss!18206 rules!2135))))

(assert (=> d!870732 (= (rulesInvariant!4108 thiss!18206 rules!2135) e!1982557)))

(declare-fun b!3182098 () Bool)

(declare-datatypes ((List!35875 0))(
  ( (Nil!35751) (Cons!35751 (h!41171 String!40094) (t!235292 List!35875)) )
))
(declare-fun noDuplicateTag!1889 (LexerInterface!4711 List!35872 List!35875) Bool)

(assert (=> b!3182098 (= e!1982557 (noDuplicateTag!1889 thiss!18206 rules!2135 Nil!35751))))

(assert (= (and d!870732 res!1293345) b!3182098))

(declare-fun m!3439039 () Bool)

(assert (=> d!870732 m!3439039))

(declare-fun m!3439041 () Bool)

(assert (=> b!3182098 m!3439041))

(assert (=> b!3181727 d!870732))

(declare-fun d!870734 () Bool)

(declare-fun res!1293350 () Bool)

(declare-fun e!1982562 () Bool)

(assert (=> d!870734 (=> res!1293350 e!1982562)))

(assert (=> d!870734 (= res!1293350 ((_ is Nil!35749) tokens!494))))

(assert (=> d!870734 (= (forall!7236 tokens!494 lambda!116423) e!1982562)))

(declare-fun b!3182103 () Bool)

(declare-fun e!1982563 () Bool)

(assert (=> b!3182103 (= e!1982562 e!1982563)))

(declare-fun res!1293351 () Bool)

(assert (=> b!3182103 (=> (not res!1293351) (not e!1982563))))

(assert (=> b!3182103 (= res!1293351 (dynLambda!14415 lambda!116423 (h!41169 tokens!494)))))

(declare-fun b!3182104 () Bool)

(assert (=> b!3182104 (= e!1982563 (forall!7236 (t!235216 tokens!494) lambda!116423))))

(assert (= (and d!870734 (not res!1293350)) b!3182103))

(assert (= (and b!3182103 res!1293351) b!3182104))

(declare-fun b_lambda!86677 () Bool)

(assert (=> (not b_lambda!86677) (not b!3182103)))

(assert (=> b!3182103 m!3438819))

(declare-fun m!3439043 () Bool)

(assert (=> b!3182104 m!3439043))

(assert (=> b!3181716 d!870734))

(declare-fun d!870736 () Bool)

(assert (=> d!870736 (rulesProduceIndividualToken!2203 thiss!18206 rules!2135 (h!41169 tokens!494))))

(declare-fun lt!1069835 () Unit!50150)

(declare-fun choose!18554 (LexerInterface!4711 List!35872 List!35873 Token!9610) Unit!50150)

(assert (=> d!870736 (= lt!1069835 (choose!18554 thiss!18206 rules!2135 tokens!494 (h!41169 tokens!494)))))

(assert (=> d!870736 (not (isEmpty!19867 rules!2135))))

(assert (=> d!870736 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!772 thiss!18206 rules!2135 tokens!494 (h!41169 tokens!494)) lt!1069835)))

(declare-fun bs!539927 () Bool)

(assert (= bs!539927 d!870736))

(assert (=> bs!539927 m!3438497))

(declare-fun m!3439165 () Bool)

(assert (=> bs!539927 m!3439165))

(assert (=> bs!539927 m!3438545))

(assert (=> b!3181726 d!870736))

(declare-fun d!870772 () Bool)

(assert (=> d!870772 (= (isEmpty!19865 (getSuffix!1338 lt!1069647 lt!1069647)) ((_ is Nil!35747) (getSuffix!1338 lt!1069647 lt!1069647)))))

(assert (=> b!3181726 d!870772))

(declare-fun d!870774 () Bool)

(declare-fun lt!1069838 () Bool)

(assert (=> d!870774 (= lt!1069838 (select (content!4844 (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241)))) lt!1069656))))

(declare-fun e!1982662 () Bool)

(assert (=> d!870774 (= lt!1069838 e!1982662)))

(declare-fun res!1293402 () Bool)

(assert (=> d!870774 (=> (not res!1293402) (not e!1982662))))

(assert (=> d!870774 (= res!1293402 ((_ is Cons!35747) (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241)))))))

(assert (=> d!870774 (= (contains!6321 (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241))) lt!1069656) lt!1069838)))

(declare-fun b!3182253 () Bool)

(declare-fun e!1982661 () Bool)

(assert (=> b!3182253 (= e!1982662 e!1982661)))

(declare-fun res!1293401 () Bool)

(assert (=> b!3182253 (=> res!1293401 e!1982661)))

(assert (=> b!3182253 (= res!1293401 (= (h!41167 (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241)))) lt!1069656))))

(declare-fun b!3182254 () Bool)

(assert (=> b!3182254 (= e!1982661 (contains!6321 (t!235214 (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241)))) lt!1069656))))

(assert (= (and d!870774 res!1293402) b!3182253))

(assert (= (and b!3182253 (not res!1293401)) b!3182254))

(assert (=> d!870774 m!3438559))

(declare-fun m!3439167 () Bool)

(assert (=> d!870774 m!3439167))

(declare-fun m!3439169 () Bool)

(assert (=> d!870774 m!3439169))

(declare-fun m!3439171 () Bool)

(assert (=> b!3182254 m!3439171))

(assert (=> b!3181726 d!870774))

(declare-fun d!870776 () Bool)

(declare-fun lt!1069841 () List!35871)

(assert (=> d!870776 (= (++!8546 lt!1069647 lt!1069841) lt!1069647)))

(declare-fun e!1982665 () List!35871)

(assert (=> d!870776 (= lt!1069841 e!1982665)))

(declare-fun c!534494 () Bool)

(assert (=> d!870776 (= c!534494 ((_ is Cons!35747) lt!1069647))))

(assert (=> d!870776 (>= (size!26975 lt!1069647) (size!26975 lt!1069647))))

(assert (=> d!870776 (= (getSuffix!1338 lt!1069647 lt!1069647) lt!1069841)))

(declare-fun b!3182259 () Bool)

(assert (=> b!3182259 (= e!1982665 (getSuffix!1338 (tail!5172 lt!1069647) (t!235214 lt!1069647)))))

(declare-fun b!3182260 () Bool)

(assert (=> b!3182260 (= e!1982665 lt!1069647)))

(assert (= (and d!870776 c!534494) b!3182259))

(assert (= (and d!870776 (not c!534494)) b!3182260))

(declare-fun m!3439173 () Bool)

(assert (=> d!870776 m!3439173))

(assert (=> d!870776 m!3438567))

(assert (=> d!870776 m!3438567))

(declare-fun m!3439175 () Bool)

(assert (=> b!3182259 m!3439175))

(assert (=> b!3182259 m!3439175))

(declare-fun m!3439177 () Bool)

(assert (=> b!3182259 m!3439177))

(assert (=> b!3181726 d!870776))

(declare-fun d!870778 () Bool)

(assert (=> d!870778 (= (head!6947 lt!1069650) (h!41167 lt!1069650))))

(assert (=> b!3181726 d!870778))

(declare-fun d!870780 () Bool)

(declare-fun isEmpty!19876 (Option!6975) Bool)

(assert (=> d!870780 (= (isDefined!5466 lt!1069655) (not (isEmpty!19876 lt!1069655)))))

(declare-fun bs!539928 () Bool)

(assert (= bs!539928 d!870780))

(declare-fun m!3439179 () Bool)

(assert (=> bs!539928 m!3439179))

(assert (=> b!3181726 d!870780))

(declare-fun d!870782 () Bool)

(assert (=> d!870782 (= (maxPrefixOneRule!1516 thiss!18206 (rule!7536 (h!41169 tokens!494)) lt!1069647) (Some!6975 (tuple2!35087 (Token!9611 (apply!8038 (transformation!5122 (rule!7536 (h!41169 tokens!494))) (seqFromList!3324 lt!1069647)) (rule!7536 (h!41169 tokens!494)) (size!26975 lt!1069647) lt!1069647) Nil!35747)))))

(declare-fun lt!1069844 () Unit!50150)

(declare-fun choose!18556 (LexerInterface!4711 List!35872 List!35871 List!35871 List!35871 Rule!10044) Unit!50150)

(assert (=> d!870782 (= lt!1069844 (choose!18556 thiss!18206 rules!2135 lt!1069647 lt!1069647 Nil!35747 (rule!7536 (h!41169 tokens!494))))))

(assert (=> d!870782 (not (isEmpty!19867 rules!2135))))

(assert (=> d!870782 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!629 thiss!18206 rules!2135 lt!1069647 lt!1069647 Nil!35747 (rule!7536 (h!41169 tokens!494))) lt!1069844)))

(declare-fun bs!539929 () Bool)

(assert (= bs!539929 d!870782))

(assert (=> bs!539929 m!3438567))

(assert (=> bs!539929 m!3438495))

(declare-fun m!3439181 () Bool)

(assert (=> bs!539929 m!3439181))

(assert (=> bs!539929 m!3438545))

(assert (=> bs!539929 m!3438577))

(declare-fun m!3439183 () Bool)

(assert (=> bs!539929 m!3439183))

(assert (=> bs!539929 m!3438495))

(assert (=> b!3181726 d!870782))

(declare-fun b!3182277 () Bool)

(declare-fun e!1982677 () List!35871)

(declare-fun e!1982674 () List!35871)

(assert (=> b!3182277 (= e!1982677 e!1982674)))

(declare-fun c!534506 () Bool)

(assert (=> b!3182277 (= c!534506 ((_ is ElementMatch!9881) (regex!5122 (rule!7536 separatorToken!241))))))

(declare-fun b!3182278 () Bool)

(declare-fun e!1982675 () List!35871)

(declare-fun call!230996 () List!35871)

(assert (=> b!3182278 (= e!1982675 call!230996)))

(declare-fun bm!230988 () Bool)

(declare-fun call!230995 () List!35871)

(declare-fun c!534503 () Bool)

(assert (=> bm!230988 (= call!230995 (usedCharacters!466 (ite c!534503 (regTwo!20275 (regex!5122 (rule!7536 separatorToken!241))) (regOne!20274 (regex!5122 (rule!7536 separatorToken!241))))))))

(declare-fun call!230993 () List!35871)

(declare-fun call!230994 () List!35871)

(declare-fun bm!230989 () Bool)

(assert (=> bm!230989 (= call!230994 (++!8546 (ite c!534503 call!230993 call!230995) (ite c!534503 call!230995 call!230993)))))

(declare-fun b!3182280 () Bool)

(declare-fun e!1982676 () List!35871)

(assert (=> b!3182280 (= e!1982676 call!230994)))

(declare-fun b!3182281 () Bool)

(assert (=> b!3182281 (= e!1982676 call!230994)))

(declare-fun b!3182282 () Bool)

(declare-fun c!534505 () Bool)

(assert (=> b!3182282 (= c!534505 ((_ is Star!9881) (regex!5122 (rule!7536 separatorToken!241))))))

(assert (=> b!3182282 (= e!1982674 e!1982675)))

(declare-fun b!3182283 () Bool)

(assert (=> b!3182283 (= e!1982675 e!1982676)))

(assert (=> b!3182283 (= c!534503 ((_ is Union!9881) (regex!5122 (rule!7536 separatorToken!241))))))

(declare-fun bm!230990 () Bool)

(assert (=> bm!230990 (= call!230996 (usedCharacters!466 (ite c!534505 (reg!10210 (regex!5122 (rule!7536 separatorToken!241))) (ite c!534503 (regOne!20275 (regex!5122 (rule!7536 separatorToken!241))) (regTwo!20274 (regex!5122 (rule!7536 separatorToken!241)))))))))

(declare-fun b!3182284 () Bool)

(assert (=> b!3182284 (= e!1982674 (Cons!35747 (c!534396 (regex!5122 (rule!7536 separatorToken!241))) Nil!35747))))

(declare-fun bm!230991 () Bool)

(assert (=> bm!230991 (= call!230993 call!230996)))

(declare-fun b!3182279 () Bool)

(assert (=> b!3182279 (= e!1982677 Nil!35747)))

(declare-fun d!870784 () Bool)

(declare-fun c!534504 () Bool)

(assert (=> d!870784 (= c!534504 (or ((_ is EmptyExpr!9881) (regex!5122 (rule!7536 separatorToken!241))) ((_ is EmptyLang!9881) (regex!5122 (rule!7536 separatorToken!241)))))))

(assert (=> d!870784 (= (usedCharacters!466 (regex!5122 (rule!7536 separatorToken!241))) e!1982677)))

(assert (= (and d!870784 c!534504) b!3182279))

(assert (= (and d!870784 (not c!534504)) b!3182277))

(assert (= (and b!3182277 c!534506) b!3182284))

(assert (= (and b!3182277 (not c!534506)) b!3182282))

(assert (= (and b!3182282 c!534505) b!3182278))

(assert (= (and b!3182282 (not c!534505)) b!3182283))

(assert (= (and b!3182283 c!534503) b!3182281))

(assert (= (and b!3182283 (not c!534503)) b!3182280))

(assert (= (or b!3182281 b!3182280) bm!230988))

(assert (= (or b!3182281 b!3182280) bm!230991))

(assert (= (or b!3182281 b!3182280) bm!230989))

(assert (= (or b!3182278 bm!230991) bm!230990))

(declare-fun m!3439185 () Bool)

(assert (=> bm!230988 m!3439185))

(declare-fun m!3439187 () Bool)

(assert (=> bm!230989 m!3439187))

(declare-fun m!3439189 () Bool)

(assert (=> bm!230990 m!3439189))

(assert (=> b!3181726 d!870784))

(declare-fun d!870786 () Bool)

(assert (=> d!870786 (isEmpty!19865 (getSuffix!1338 lt!1069647 lt!1069647))))

(declare-fun lt!1069847 () Unit!50150)

(declare-fun choose!18557 (List!35871) Unit!50150)

(assert (=> d!870786 (= lt!1069847 (choose!18557 lt!1069647))))

(assert (=> d!870786 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!16 lt!1069647) lt!1069847)))

(declare-fun bs!539930 () Bool)

(assert (= bs!539930 d!870786))

(assert (=> bs!539930 m!3438563))

(assert (=> bs!539930 m!3438563))

(assert (=> bs!539930 m!3438565))

(declare-fun m!3439191 () Bool)

(assert (=> bs!539930 m!3439191))

(assert (=> b!3181726 d!870786))

(declare-fun d!870788 () Bool)

(declare-fun e!1982680 () Bool)

(assert (=> d!870788 e!1982680))

(declare-fun res!1293407 () Bool)

(assert (=> d!870788 (=> (not res!1293407) (not e!1982680))))

(assert (=> d!870788 (= res!1293407 (isDefined!5466 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 (h!41169 tokens!494))))))))

(declare-fun lt!1069850 () Unit!50150)

(declare-fun choose!18558 (LexerInterface!4711 List!35872 List!35871 Token!9610) Unit!50150)

(assert (=> d!870788 (= lt!1069850 (choose!18558 thiss!18206 rules!2135 lt!1069647 (h!41169 tokens!494)))))

(assert (=> d!870788 (rulesInvariant!4108 thiss!18206 rules!2135)))

(assert (=> d!870788 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!851 thiss!18206 rules!2135 lt!1069647 (h!41169 tokens!494)) lt!1069850)))

(declare-fun b!3182289 () Bool)

(declare-fun res!1293408 () Bool)

(assert (=> b!3182289 (=> (not res!1293408) (not e!1982680))))

(assert (=> b!3182289 (= res!1293408 (matchR!4539 (regex!5122 (get!11368 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 (h!41169 tokens!494)))))) (list!12687 (charsOf!3144 (h!41169 tokens!494)))))))

(declare-fun b!3182290 () Bool)

(assert (=> b!3182290 (= e!1982680 (= (rule!7536 (h!41169 tokens!494)) (get!11368 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 (h!41169 tokens!494)))))))))

(assert (= (and d!870788 res!1293407) b!3182289))

(assert (= (and b!3182289 res!1293408) b!3182290))

(assert (=> d!870788 m!3438579))

(assert (=> d!870788 m!3438579))

(declare-fun m!3439193 () Bool)

(assert (=> d!870788 m!3439193))

(declare-fun m!3439195 () Bool)

(assert (=> d!870788 m!3439195))

(assert (=> d!870788 m!3438519))

(assert (=> b!3182289 m!3438487))

(declare-fun m!3439197 () Bool)

(assert (=> b!3182289 m!3439197))

(assert (=> b!3182289 m!3438485))

(assert (=> b!3182289 m!3438487))

(assert (=> b!3182289 m!3438579))

(assert (=> b!3182289 m!3438579))

(declare-fun m!3439199 () Bool)

(assert (=> b!3182289 m!3439199))

(assert (=> b!3182289 m!3438485))

(assert (=> b!3182290 m!3438579))

(assert (=> b!3182290 m!3438579))

(assert (=> b!3182290 m!3439199))

(assert (=> b!3181726 d!870788))

(declare-fun d!870790 () Bool)

(declare-fun lt!1069853 () Int)

(assert (=> d!870790 (>= lt!1069853 0)))

(declare-fun e!1982683 () Int)

(assert (=> d!870790 (= lt!1069853 e!1982683)))

(declare-fun c!534509 () Bool)

(assert (=> d!870790 (= c!534509 ((_ is Nil!35747) lt!1069647))))

(assert (=> d!870790 (= (size!26975 lt!1069647) lt!1069853)))

(declare-fun b!3182295 () Bool)

(assert (=> b!3182295 (= e!1982683 0)))

(declare-fun b!3182296 () Bool)

(assert (=> b!3182296 (= e!1982683 (+ 1 (size!26975 (t!235214 lt!1069647))))))

(assert (= (and d!870790 c!534509) b!3182295))

(assert (= (and d!870790 (not c!534509)) b!3182296))

(declare-fun m!3439201 () Bool)

(assert (=> b!3182296 m!3439201))

(assert (=> b!3181726 d!870790))

(declare-fun b!3182315 () Bool)

(declare-fun e!1982695 () Bool)

(declare-datatypes ((tuple2!35096 0))(
  ( (tuple2!35097 (_1!20682 List!35871) (_2!20682 List!35871)) )
))
(declare-fun findLongestMatchInner!813 (Regex!9881 List!35871 Int List!35871 List!35871 Int) tuple2!35096)

(assert (=> b!3182315 (= e!1982695 (matchR!4539 (regex!5122 (rule!7536 (h!41169 tokens!494))) (_1!20682 (findLongestMatchInner!813 (regex!5122 (rule!7536 (h!41169 tokens!494))) Nil!35747 (size!26975 Nil!35747) lt!1069647 lt!1069647 (size!26975 lt!1069647)))))))

(declare-fun b!3182316 () Bool)

(declare-fun res!1293426 () Bool)

(declare-fun e!1982693 () Bool)

(assert (=> b!3182316 (=> (not res!1293426) (not e!1982693))))

(declare-fun lt!1069866 () Option!6976)

(declare-fun get!11370 (Option!6976) tuple2!35086)

(assert (=> b!3182316 (= res!1293426 (= (rule!7536 (_1!20677 (get!11370 lt!1069866))) (rule!7536 (h!41169 tokens!494))))))

(declare-fun b!3182317 () Bool)

(declare-fun e!1982692 () Option!6976)

(declare-fun lt!1069867 () tuple2!35096)

(assert (=> b!3182317 (= e!1982692 (Some!6975 (tuple2!35087 (Token!9611 (apply!8038 (transformation!5122 (rule!7536 (h!41169 tokens!494))) (seqFromList!3324 (_1!20682 lt!1069867))) (rule!7536 (h!41169 tokens!494)) (size!26977 (seqFromList!3324 (_1!20682 lt!1069867))) (_1!20682 lt!1069867)) (_2!20682 lt!1069867))))))

(declare-fun lt!1069865 () Unit!50150)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!786 (Regex!9881 List!35871) Unit!50150)

(assert (=> b!3182317 (= lt!1069865 (longestMatchIsAcceptedByMatchOrIsEmpty!786 (regex!5122 (rule!7536 (h!41169 tokens!494))) lt!1069647))))

(declare-fun res!1293425 () Bool)

(assert (=> b!3182317 (= res!1293425 (isEmpty!19865 (_1!20682 (findLongestMatchInner!813 (regex!5122 (rule!7536 (h!41169 tokens!494))) Nil!35747 (size!26975 Nil!35747) lt!1069647 lt!1069647 (size!26975 lt!1069647)))))))

(assert (=> b!3182317 (=> res!1293425 e!1982695)))

(assert (=> b!3182317 e!1982695))

(declare-fun lt!1069864 () Unit!50150)

(assert (=> b!3182317 (= lt!1069864 lt!1069865)))

(declare-fun lt!1069868 () Unit!50150)

(declare-fun lemmaSemiInverse!1155 (TokenValueInjection!10132 BalanceConc!20852) Unit!50150)

(assert (=> b!3182317 (= lt!1069868 (lemmaSemiInverse!1155 (transformation!5122 (rule!7536 (h!41169 tokens!494))) (seqFromList!3324 (_1!20682 lt!1069867))))))

(declare-fun d!870792 () Bool)

(declare-fun e!1982694 () Bool)

(assert (=> d!870792 e!1982694))

(declare-fun res!1293429 () Bool)

(assert (=> d!870792 (=> res!1293429 e!1982694)))

(declare-fun isEmpty!19877 (Option!6976) Bool)

(assert (=> d!870792 (= res!1293429 (isEmpty!19877 lt!1069866))))

(assert (=> d!870792 (= lt!1069866 e!1982692)))

(declare-fun c!534512 () Bool)

(assert (=> d!870792 (= c!534512 (isEmpty!19865 (_1!20682 lt!1069867)))))

(declare-fun findLongestMatch!728 (Regex!9881 List!35871) tuple2!35096)

(assert (=> d!870792 (= lt!1069867 (findLongestMatch!728 (regex!5122 (rule!7536 (h!41169 tokens!494))) lt!1069647))))

(declare-fun ruleValid!1622 (LexerInterface!4711 Rule!10044) Bool)

(assert (=> d!870792 (ruleValid!1622 thiss!18206 (rule!7536 (h!41169 tokens!494)))))

(assert (=> d!870792 (= (maxPrefixOneRule!1516 thiss!18206 (rule!7536 (h!41169 tokens!494)) lt!1069647) lt!1069866)))

(declare-fun b!3182318 () Bool)

(assert (=> b!3182318 (= e!1982692 None!6975)))

(declare-fun b!3182319 () Bool)

(declare-fun res!1293423 () Bool)

(assert (=> b!3182319 (=> (not res!1293423) (not e!1982693))))

(assert (=> b!3182319 (= res!1293423 (= (value!166437 (_1!20677 (get!11370 lt!1069866))) (apply!8038 (transformation!5122 (rule!7536 (_1!20677 (get!11370 lt!1069866)))) (seqFromList!3324 (originalCharacters!5836 (_1!20677 (get!11370 lt!1069866)))))))))

(declare-fun b!3182320 () Bool)

(assert (=> b!3182320 (= e!1982694 e!1982693)))

(declare-fun res!1293427 () Bool)

(assert (=> b!3182320 (=> (not res!1293427) (not e!1982693))))

(assert (=> b!3182320 (= res!1293427 (matchR!4539 (regex!5122 (rule!7536 (h!41169 tokens!494))) (list!12687 (charsOf!3144 (_1!20677 (get!11370 lt!1069866))))))))

(declare-fun b!3182321 () Bool)

(declare-fun res!1293424 () Bool)

(assert (=> b!3182321 (=> (not res!1293424) (not e!1982693))))

(assert (=> b!3182321 (= res!1293424 (< (size!26975 (_2!20677 (get!11370 lt!1069866))) (size!26975 lt!1069647)))))

(declare-fun b!3182322 () Bool)

(declare-fun res!1293428 () Bool)

(assert (=> b!3182322 (=> (not res!1293428) (not e!1982693))))

(assert (=> b!3182322 (= res!1293428 (= (++!8546 (list!12687 (charsOf!3144 (_1!20677 (get!11370 lt!1069866)))) (_2!20677 (get!11370 lt!1069866))) lt!1069647))))

(declare-fun b!3182323 () Bool)

(assert (=> b!3182323 (= e!1982693 (= (size!26974 (_1!20677 (get!11370 lt!1069866))) (size!26975 (originalCharacters!5836 (_1!20677 (get!11370 lt!1069866))))))))

(assert (= (and d!870792 c!534512) b!3182318))

(assert (= (and d!870792 (not c!534512)) b!3182317))

(assert (= (and b!3182317 (not res!1293425)) b!3182315))

(assert (= (and d!870792 (not res!1293429)) b!3182320))

(assert (= (and b!3182320 res!1293427) b!3182322))

(assert (= (and b!3182322 res!1293428) b!3182321))

(assert (= (and b!3182321 res!1293424) b!3182316))

(assert (= (and b!3182316 res!1293426) b!3182319))

(assert (= (and b!3182319 res!1293423) b!3182323))

(declare-fun m!3439203 () Bool)

(assert (=> b!3182319 m!3439203))

(declare-fun m!3439205 () Bool)

(assert (=> b!3182319 m!3439205))

(assert (=> b!3182319 m!3439205))

(declare-fun m!3439207 () Bool)

(assert (=> b!3182319 m!3439207))

(assert (=> b!3182322 m!3439203))

(declare-fun m!3439209 () Bool)

(assert (=> b!3182322 m!3439209))

(assert (=> b!3182322 m!3439209))

(declare-fun m!3439211 () Bool)

(assert (=> b!3182322 m!3439211))

(assert (=> b!3182322 m!3439211))

(declare-fun m!3439213 () Bool)

(assert (=> b!3182322 m!3439213))

(declare-fun m!3439215 () Bool)

(assert (=> d!870792 m!3439215))

(declare-fun m!3439217 () Bool)

(assert (=> d!870792 m!3439217))

(declare-fun m!3439219 () Bool)

(assert (=> d!870792 m!3439219))

(declare-fun m!3439221 () Bool)

(assert (=> d!870792 m!3439221))

(declare-fun m!3439223 () Bool)

(assert (=> b!3182317 m!3439223))

(assert (=> b!3182317 m!3438567))

(declare-fun m!3439225 () Bool)

(assert (=> b!3182317 m!3439225))

(declare-fun m!3439227 () Bool)

(assert (=> b!3182317 m!3439227))

(declare-fun m!3439229 () Bool)

(assert (=> b!3182317 m!3439229))

(assert (=> b!3182317 m!3439229))

(declare-fun m!3439231 () Bool)

(assert (=> b!3182317 m!3439231))

(assert (=> b!3182317 m!3439223))

(assert (=> b!3182317 m!3439229))

(declare-fun m!3439233 () Bool)

(assert (=> b!3182317 m!3439233))

(assert (=> b!3182317 m!3438567))

(assert (=> b!3182317 m!3439229))

(declare-fun m!3439235 () Bool)

(assert (=> b!3182317 m!3439235))

(declare-fun m!3439237 () Bool)

(assert (=> b!3182317 m!3439237))

(assert (=> b!3182321 m!3439203))

(declare-fun m!3439239 () Bool)

(assert (=> b!3182321 m!3439239))

(assert (=> b!3182321 m!3438567))

(assert (=> b!3182320 m!3439203))

(assert (=> b!3182320 m!3439209))

(assert (=> b!3182320 m!3439209))

(assert (=> b!3182320 m!3439211))

(assert (=> b!3182320 m!3439211))

(declare-fun m!3439241 () Bool)

(assert (=> b!3182320 m!3439241))

(assert (=> b!3182323 m!3439203))

(declare-fun m!3439243 () Bool)

(assert (=> b!3182323 m!3439243))

(assert (=> b!3182315 m!3439223))

(assert (=> b!3182315 m!3438567))

(assert (=> b!3182315 m!3439223))

(assert (=> b!3182315 m!3438567))

(assert (=> b!3182315 m!3439225))

(declare-fun m!3439245 () Bool)

(assert (=> b!3182315 m!3439245))

(assert (=> b!3182316 m!3439203))

(assert (=> b!3181726 d!870792))

(declare-fun b!3182336 () Bool)

(declare-fun e!1982705 () Option!6975)

(assert (=> b!3182336 (= e!1982705 None!6974)))

(declare-fun b!3182337 () Bool)

(declare-fun e!1982704 () Option!6975)

(assert (=> b!3182337 (= e!1982704 (Some!6974 (h!41168 rules!2135)))))

(declare-fun b!3182338 () Bool)

(assert (=> b!3182338 (= e!1982704 e!1982705)))

(declare-fun c!534517 () Bool)

(assert (=> b!3182338 (= c!534517 (and ((_ is Cons!35748) rules!2135) (not (= (tag!5630 (h!41168 rules!2135)) (tag!5630 (rule!7536 (h!41169 tokens!494)))))))))

(declare-fun b!3182339 () Bool)

(declare-fun lt!1069875 () Unit!50150)

(declare-fun lt!1069877 () Unit!50150)

(assert (=> b!3182339 (= lt!1069875 lt!1069877)))

(assert (=> b!3182339 (rulesInvariant!4108 thiss!18206 (t!235215 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!332 (LexerInterface!4711 Rule!10044 List!35872) Unit!50150)

(assert (=> b!3182339 (= lt!1069877 (lemmaInvariantOnRulesThenOnTail!332 thiss!18206 (h!41168 rules!2135) (t!235215 rules!2135)))))

(assert (=> b!3182339 (= e!1982705 (getRuleFromTag!851 thiss!18206 (t!235215 rules!2135) (tag!5630 (rule!7536 (h!41169 tokens!494)))))))

(declare-fun b!3182340 () Bool)

(declare-fun e!1982706 () Bool)

(declare-fun e!1982707 () Bool)

(assert (=> b!3182340 (= e!1982706 e!1982707)))

(declare-fun res!1293435 () Bool)

(assert (=> b!3182340 (=> (not res!1293435) (not e!1982707))))

(declare-fun lt!1069876 () Option!6975)

(declare-fun contains!6325 (List!35872 Rule!10044) Bool)

(assert (=> b!3182340 (= res!1293435 (contains!6325 rules!2135 (get!11368 lt!1069876)))))

(declare-fun b!3182341 () Bool)

(assert (=> b!3182341 (= e!1982707 (= (tag!5630 (get!11368 lt!1069876)) (tag!5630 (rule!7536 (h!41169 tokens!494)))))))

(declare-fun d!870794 () Bool)

(assert (=> d!870794 e!1982706))

(declare-fun res!1293434 () Bool)

(assert (=> d!870794 (=> res!1293434 e!1982706)))

(assert (=> d!870794 (= res!1293434 (isEmpty!19876 lt!1069876))))

(assert (=> d!870794 (= lt!1069876 e!1982704)))

(declare-fun c!534518 () Bool)

(assert (=> d!870794 (= c!534518 (and ((_ is Cons!35748) rules!2135) (= (tag!5630 (h!41168 rules!2135)) (tag!5630 (rule!7536 (h!41169 tokens!494))))))))

(assert (=> d!870794 (rulesInvariant!4108 thiss!18206 rules!2135)))

(assert (=> d!870794 (= (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 (h!41169 tokens!494)))) lt!1069876)))

(assert (= (and d!870794 c!534518) b!3182337))

(assert (= (and d!870794 (not c!534518)) b!3182338))

(assert (= (and b!3182338 c!534517) b!3182339))

(assert (= (and b!3182338 (not c!534517)) b!3182336))

(assert (= (and d!870794 (not res!1293434)) b!3182340))

(assert (= (and b!3182340 res!1293435) b!3182341))

(declare-fun m!3439247 () Bool)

(assert (=> b!3182339 m!3439247))

(declare-fun m!3439249 () Bool)

(assert (=> b!3182339 m!3439249))

(declare-fun m!3439251 () Bool)

(assert (=> b!3182339 m!3439251))

(declare-fun m!3439253 () Bool)

(assert (=> b!3182340 m!3439253))

(assert (=> b!3182340 m!3439253))

(declare-fun m!3439255 () Bool)

(assert (=> b!3182340 m!3439255))

(assert (=> b!3182341 m!3439253))

(declare-fun m!3439257 () Bool)

(assert (=> d!870794 m!3439257))

(assert (=> d!870794 m!3438519))

(assert (=> b!3181726 d!870794))

(declare-fun d!870796 () Bool)

(assert (=> d!870796 (= (isDefined!5466 lt!1069654) (not (isEmpty!19876 lt!1069654)))))

(declare-fun bs!539931 () Bool)

(assert (= bs!539931 d!870796))

(declare-fun m!3439259 () Bool)

(assert (=> bs!539931 m!3439259))

(assert (=> b!3181726 d!870796))

(declare-fun b!3182342 () Bool)

(declare-fun e!1982709 () Option!6975)

(assert (=> b!3182342 (= e!1982709 None!6974)))

(declare-fun b!3182343 () Bool)

(declare-fun e!1982708 () Option!6975)

(assert (=> b!3182343 (= e!1982708 (Some!6974 (h!41168 rules!2135)))))

(declare-fun b!3182344 () Bool)

(assert (=> b!3182344 (= e!1982708 e!1982709)))

(declare-fun c!534519 () Bool)

(assert (=> b!3182344 (= c!534519 (and ((_ is Cons!35748) rules!2135) (not (= (tag!5630 (h!41168 rules!2135)) (tag!5630 (rule!7536 separatorToken!241))))))))

(declare-fun b!3182345 () Bool)

(declare-fun lt!1069878 () Unit!50150)

(declare-fun lt!1069880 () Unit!50150)

(assert (=> b!3182345 (= lt!1069878 lt!1069880)))

(assert (=> b!3182345 (rulesInvariant!4108 thiss!18206 (t!235215 rules!2135))))

(assert (=> b!3182345 (= lt!1069880 (lemmaInvariantOnRulesThenOnTail!332 thiss!18206 (h!41168 rules!2135) (t!235215 rules!2135)))))

(assert (=> b!3182345 (= e!1982709 (getRuleFromTag!851 thiss!18206 (t!235215 rules!2135) (tag!5630 (rule!7536 separatorToken!241))))))

(declare-fun b!3182346 () Bool)

(declare-fun e!1982710 () Bool)

(declare-fun e!1982711 () Bool)

(assert (=> b!3182346 (= e!1982710 e!1982711)))

(declare-fun res!1293437 () Bool)

(assert (=> b!3182346 (=> (not res!1293437) (not e!1982711))))

(declare-fun lt!1069879 () Option!6975)

(assert (=> b!3182346 (= res!1293437 (contains!6325 rules!2135 (get!11368 lt!1069879)))))

(declare-fun b!3182347 () Bool)

(assert (=> b!3182347 (= e!1982711 (= (tag!5630 (get!11368 lt!1069879)) (tag!5630 (rule!7536 separatorToken!241))))))

(declare-fun d!870798 () Bool)

(assert (=> d!870798 e!1982710))

(declare-fun res!1293436 () Bool)

(assert (=> d!870798 (=> res!1293436 e!1982710)))

(assert (=> d!870798 (= res!1293436 (isEmpty!19876 lt!1069879))))

(assert (=> d!870798 (= lt!1069879 e!1982708)))

(declare-fun c!534520 () Bool)

(assert (=> d!870798 (= c!534520 (and ((_ is Cons!35748) rules!2135) (= (tag!5630 (h!41168 rules!2135)) (tag!5630 (rule!7536 separatorToken!241)))))))

(assert (=> d!870798 (rulesInvariant!4108 thiss!18206 rules!2135)))

(assert (=> d!870798 (= (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 separatorToken!241))) lt!1069879)))

(assert (= (and d!870798 c!534520) b!3182343))

(assert (= (and d!870798 (not c!534520)) b!3182344))

(assert (= (and b!3182344 c!534519) b!3182345))

(assert (= (and b!3182344 (not c!534519)) b!3182342))

(assert (= (and d!870798 (not res!1293436)) b!3182346))

(assert (= (and b!3182346 res!1293437) b!3182347))

(assert (=> b!3182345 m!3439247))

(assert (=> b!3182345 m!3439249))

(declare-fun m!3439261 () Bool)

(assert (=> b!3182345 m!3439261))

(declare-fun m!3439263 () Bool)

(assert (=> b!3182346 m!3439263))

(assert (=> b!3182346 m!3439263))

(declare-fun m!3439265 () Bool)

(assert (=> b!3182346 m!3439265))

(assert (=> b!3182347 m!3439263))

(declare-fun m!3439267 () Bool)

(assert (=> d!870798 m!3439267))

(assert (=> d!870798 m!3438519))

(assert (=> b!3181726 d!870798))

(declare-fun d!870800 () Bool)

(declare-fun dynLambda!14421 (Int BalanceConc!20852) TokenValue!5352)

(assert (=> d!870800 (= (apply!8038 (transformation!5122 (rule!7536 (h!41169 tokens!494))) lt!1069640) (dynLambda!14421 (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) lt!1069640))))

(declare-fun b_lambda!86695 () Bool)

(assert (=> (not b_lambda!86695) (not d!870800)))

(declare-fun t!235274 () Bool)

(declare-fun tb!155317 () Bool)

(assert (=> (and b!3181709 (= (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235274) tb!155317))

(declare-fun result!197392 () Bool)

(assert (=> tb!155317 (= result!197392 (inv!21 (dynLambda!14421 (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) lt!1069640)))))

(declare-fun m!3439269 () Bool)

(assert (=> tb!155317 m!3439269))

(assert (=> d!870800 t!235274))

(declare-fun b_and!210417 () Bool)

(assert (= b_and!210355 (and (=> t!235274 result!197392) b_and!210417)))

(declare-fun t!235277 () Bool)

(declare-fun tb!155319 () Bool)

(assert (=> (and b!3181717 (= (toValue!7182 (transformation!5122 (h!41168 rules!2135))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235277) tb!155319))

(declare-fun result!197396 () Bool)

(assert (= result!197396 result!197392))

(assert (=> d!870800 t!235277))

(declare-fun b_and!210419 () Bool)

(assert (= b_and!210359 (and (=> t!235277 result!197396) b_and!210419)))

(declare-fun t!235279 () Bool)

(declare-fun tb!155321 () Bool)

(assert (=> (and b!3181722 (= (toValue!7182 (transformation!5122 (rule!7536 separatorToken!241))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235279) tb!155321))

(declare-fun result!197398 () Bool)

(assert (= result!197398 result!197392))

(assert (=> d!870800 t!235279))

(declare-fun b_and!210421 () Bool)

(assert (= b_and!210363 (and (=> t!235279 result!197398) b_and!210421)))

(declare-fun m!3439271 () Bool)

(assert (=> d!870800 m!3439271))

(assert (=> b!3181726 d!870800))

(declare-fun d!870802 () Bool)

(declare-fun e!1982715 () Bool)

(assert (=> d!870802 e!1982715))

(declare-fun res!1293438 () Bool)

(assert (=> d!870802 (=> (not res!1293438) (not e!1982715))))

(assert (=> d!870802 (= res!1293438 (isDefined!5466 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 separatorToken!241)))))))

(declare-fun lt!1069881 () Unit!50150)

(assert (=> d!870802 (= lt!1069881 (choose!18558 thiss!18206 rules!2135 lt!1069650 separatorToken!241))))

(assert (=> d!870802 (rulesInvariant!4108 thiss!18206 rules!2135)))

(assert (=> d!870802 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!851 thiss!18206 rules!2135 lt!1069650 separatorToken!241) lt!1069881)))

(declare-fun b!3182350 () Bool)

(declare-fun res!1293439 () Bool)

(assert (=> b!3182350 (=> (not res!1293439) (not e!1982715))))

(assert (=> b!3182350 (= res!1293439 (matchR!4539 (regex!5122 (get!11368 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 separatorToken!241))))) (list!12687 (charsOf!3144 separatorToken!241))))))

(declare-fun b!3182351 () Bool)

(assert (=> b!3182351 (= e!1982715 (= (rule!7536 separatorToken!241) (get!11368 (getRuleFromTag!851 thiss!18206 rules!2135 (tag!5630 (rule!7536 separatorToken!241))))))))

(assert (= (and d!870802 res!1293438) b!3182350))

(assert (= (and b!3182350 res!1293439) b!3182351))

(assert (=> d!870802 m!3438571))

(assert (=> d!870802 m!3438571))

(declare-fun m!3439273 () Bool)

(assert (=> d!870802 m!3439273))

(declare-fun m!3439275 () Bool)

(assert (=> d!870802 m!3439275))

(assert (=> d!870802 m!3438519))

(assert (=> b!3182350 m!3438531))

(declare-fun m!3439277 () Bool)

(assert (=> b!3182350 m!3439277))

(assert (=> b!3182350 m!3438527))

(assert (=> b!3182350 m!3438531))

(assert (=> b!3182350 m!3438571))

(assert (=> b!3182350 m!3438571))

(declare-fun m!3439279 () Bool)

(assert (=> b!3182350 m!3439279))

(assert (=> b!3182350 m!3438527))

(assert (=> b!3182351 m!3438571))

(assert (=> b!3182351 m!3438571))

(assert (=> b!3182351 m!3439279))

(assert (=> b!3181726 d!870802))

(declare-fun d!870804 () Bool)

(assert (=> d!870804 (= (list!12687 (charsOf!3144 (h!41169 tokens!494))) (list!12691 (c!534397 (charsOf!3144 (h!41169 tokens!494)))))))

(declare-fun bs!539932 () Bool)

(assert (= bs!539932 d!870804))

(declare-fun m!3439281 () Bool)

(assert (=> bs!539932 m!3439281))

(assert (=> b!3181715 d!870804))

(declare-fun d!870806 () Bool)

(declare-fun lt!1069882 () BalanceConc!20852)

(assert (=> d!870806 (= (list!12687 lt!1069882) (originalCharacters!5836 (h!41169 tokens!494)))))

(assert (=> d!870806 (= lt!1069882 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (value!166437 (h!41169 tokens!494))))))

(assert (=> d!870806 (= (charsOf!3144 (h!41169 tokens!494)) lt!1069882)))

(declare-fun b_lambda!86697 () Bool)

(assert (=> (not b_lambda!86697) (not d!870806)))

(assert (=> d!870806 t!235219))

(declare-fun b_and!210423 () Bool)

(assert (= b_and!210385 (and (=> t!235219 result!197336) b_and!210423)))

(assert (=> d!870806 t!235221))

(declare-fun b_and!210425 () Bool)

(assert (= b_and!210387 (and (=> t!235221 result!197340) b_and!210425)))

(assert (=> d!870806 t!235223))

(declare-fun b_and!210427 () Bool)

(assert (= b_and!210389 (and (=> t!235223 result!197342) b_and!210427)))

(declare-fun m!3439283 () Bool)

(assert (=> d!870806 m!3439283))

(assert (=> d!870806 m!3438669))

(assert (=> b!3181715 d!870806))

(declare-fun d!870808 () Bool)

(declare-fun lt!1069884 () Bool)

(declare-fun e!1982717 () Bool)

(assert (=> d!870808 (= lt!1069884 e!1982717)))

(declare-fun res!1293441 () Bool)

(assert (=> d!870808 (=> (not res!1293441) (not e!1982717))))

(assert (=> d!870808 (= res!1293441 (= (list!12690 (_1!20678 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 (h!41169 tokens!494)))))) (list!12690 (singletonSeq!2218 (h!41169 tokens!494)))))))

(declare-fun e!1982716 () Bool)

(assert (=> d!870808 (= lt!1069884 e!1982716)))

(declare-fun res!1293442 () Bool)

(assert (=> d!870808 (=> (not res!1293442) (not e!1982716))))

(declare-fun lt!1069883 () tuple2!35088)

(assert (=> d!870808 (= res!1293442 (= (size!26978 (_1!20678 lt!1069883)) 1))))

(assert (=> d!870808 (= lt!1069883 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 (h!41169 tokens!494)))))))

(assert (=> d!870808 (not (isEmpty!19867 rules!2135))))

(assert (=> d!870808 (= (rulesProduceIndividualToken!2203 thiss!18206 rules!2135 (h!41169 tokens!494)) lt!1069884)))

(declare-fun b!3182352 () Bool)

(declare-fun res!1293440 () Bool)

(assert (=> b!3182352 (=> (not res!1293440) (not e!1982716))))

(assert (=> b!3182352 (= res!1293440 (= (apply!8041 (_1!20678 lt!1069883) 0) (h!41169 tokens!494)))))

(declare-fun b!3182353 () Bool)

(assert (=> b!3182353 (= e!1982716 (isEmpty!19874 (_2!20678 lt!1069883)))))

(declare-fun b!3182354 () Bool)

(assert (=> b!3182354 (= e!1982717 (isEmpty!19874 (_2!20678 (lex!2051 thiss!18206 rules!2135 (print!1778 thiss!18206 (singletonSeq!2218 (h!41169 tokens!494)))))))))

(assert (= (and d!870808 res!1293442) b!3182352))

(assert (= (and b!3182352 res!1293440) b!3182353))

(assert (= (and d!870808 res!1293441) b!3182354))

(declare-fun m!3439285 () Bool)

(assert (=> d!870808 m!3439285))

(assert (=> d!870808 m!3438507))

(assert (=> d!870808 m!3438507))

(declare-fun m!3439287 () Bool)

(assert (=> d!870808 m!3439287))

(assert (=> d!870808 m!3438507))

(declare-fun m!3439289 () Bool)

(assert (=> d!870808 m!3439289))

(assert (=> d!870808 m!3438545))

(declare-fun m!3439291 () Bool)

(assert (=> d!870808 m!3439291))

(assert (=> d!870808 m!3439289))

(declare-fun m!3439293 () Bool)

(assert (=> d!870808 m!3439293))

(declare-fun m!3439295 () Bool)

(assert (=> b!3182352 m!3439295))

(declare-fun m!3439297 () Bool)

(assert (=> b!3182353 m!3439297))

(assert (=> b!3182354 m!3438507))

(assert (=> b!3182354 m!3438507))

(assert (=> b!3182354 m!3439289))

(assert (=> b!3182354 m!3439289))

(assert (=> b!3182354 m!3439293))

(declare-fun m!3439299 () Bool)

(assert (=> b!3182354 m!3439299))

(assert (=> b!3181736 d!870808))

(declare-fun d!870810 () Bool)

(assert (=> d!870810 (= (inv!48595 (tag!5630 (rule!7536 (h!41169 tokens!494)))) (= (mod (str.len (value!166436 (tag!5630 (rule!7536 (h!41169 tokens!494))))) 2) 0))))

(assert (=> b!3181730 d!870810))

(declare-fun d!870812 () Bool)

(declare-fun res!1293443 () Bool)

(declare-fun e!1982718 () Bool)

(assert (=> d!870812 (=> (not res!1293443) (not e!1982718))))

(assert (=> d!870812 (= res!1293443 (semiInverseModEq!2133 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))))))

(assert (=> d!870812 (= (inv!48598 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) e!1982718)))

(declare-fun b!3182355 () Bool)

(assert (=> b!3182355 (= e!1982718 (equivClasses!2032 (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))))))

(assert (= (and d!870812 res!1293443) b!3182355))

(declare-fun m!3439301 () Bool)

(assert (=> d!870812 m!3439301))

(declare-fun m!3439303 () Bool)

(assert (=> b!3182355 m!3439303))

(assert (=> b!3181730 d!870812))

(declare-fun b!3182356 () Bool)

(declare-fun e!1982723 () Bool)

(declare-fun e!1982722 () Bool)

(assert (=> b!3182356 (= e!1982723 e!1982722)))

(declare-fun res!1293444 () Bool)

(assert (=> b!3182356 (=> (not res!1293444) (not e!1982722))))

(declare-fun lt!1069885 () Bool)

(assert (=> b!3182356 (= res!1293444 (not lt!1069885))))

(declare-fun b!3182357 () Bool)

(declare-fun e!1982719 () Bool)

(assert (=> b!3182357 (= e!1982722 e!1982719)))

(declare-fun res!1293445 () Bool)

(assert (=> b!3182357 (=> res!1293445 e!1982719)))

(declare-fun call!230997 () Bool)

(assert (=> b!3182357 (= res!1293445 call!230997)))

(declare-fun bm!230992 () Bool)

(assert (=> bm!230992 (= call!230997 (isEmpty!19865 lt!1069647))))

(declare-fun b!3182358 () Bool)

(declare-fun res!1293449 () Bool)

(assert (=> b!3182358 (=> res!1293449 e!1982723)))

(assert (=> b!3182358 (= res!1293449 (not ((_ is ElementMatch!9881) (regex!5122 lt!1069644))))))

(declare-fun e!1982725 () Bool)

(assert (=> b!3182358 (= e!1982725 e!1982723)))

(declare-fun b!3182359 () Bool)

(declare-fun res!1293448 () Bool)

(declare-fun e!1982720 () Bool)

(assert (=> b!3182359 (=> (not res!1293448) (not e!1982720))))

(assert (=> b!3182359 (= res!1293448 (isEmpty!19865 (tail!5172 lt!1069647)))))

(declare-fun b!3182360 () Bool)

(declare-fun res!1293446 () Bool)

(assert (=> b!3182360 (=> (not res!1293446) (not e!1982720))))

(assert (=> b!3182360 (= res!1293446 (not call!230997))))

(declare-fun b!3182361 () Bool)

(declare-fun e!1982721 () Bool)

(assert (=> b!3182361 (= e!1982721 (= lt!1069885 call!230997))))

(declare-fun b!3182362 () Bool)

(declare-fun e!1982724 () Bool)

(assert (=> b!3182362 (= e!1982724 (nullable!3380 (regex!5122 lt!1069644)))))

(declare-fun b!3182363 () Bool)

(assert (=> b!3182363 (= e!1982719 (not (= (head!6947 lt!1069647) (c!534396 (regex!5122 lt!1069644)))))))

(declare-fun d!870814 () Bool)

(assert (=> d!870814 e!1982721))

(declare-fun c!534521 () Bool)

(assert (=> d!870814 (= c!534521 ((_ is EmptyExpr!9881) (regex!5122 lt!1069644)))))

(assert (=> d!870814 (= lt!1069885 e!1982724)))

(declare-fun c!534523 () Bool)

(assert (=> d!870814 (= c!534523 (isEmpty!19865 lt!1069647))))

(assert (=> d!870814 (validRegex!4532 (regex!5122 lt!1069644))))

(assert (=> d!870814 (= (matchR!4539 (regex!5122 lt!1069644) lt!1069647) lt!1069885)))

(declare-fun b!3182364 () Bool)

(assert (=> b!3182364 (= e!1982724 (matchR!4539 (derivativeStep!2933 (regex!5122 lt!1069644) (head!6947 lt!1069647)) (tail!5172 lt!1069647)))))

(declare-fun b!3182365 () Bool)

(assert (=> b!3182365 (= e!1982721 e!1982725)))

(declare-fun c!534522 () Bool)

(assert (=> b!3182365 (= c!534522 ((_ is EmptyLang!9881) (regex!5122 lt!1069644)))))

(declare-fun b!3182366 () Bool)

(assert (=> b!3182366 (= e!1982720 (= (head!6947 lt!1069647) (c!534396 (regex!5122 lt!1069644))))))

(declare-fun b!3182367 () Bool)

(declare-fun res!1293450 () Bool)

(assert (=> b!3182367 (=> res!1293450 e!1982723)))

(assert (=> b!3182367 (= res!1293450 e!1982720)))

(declare-fun res!1293451 () Bool)

(assert (=> b!3182367 (=> (not res!1293451) (not e!1982720))))

(assert (=> b!3182367 (= res!1293451 lt!1069885)))

(declare-fun b!3182368 () Bool)

(declare-fun res!1293447 () Bool)

(assert (=> b!3182368 (=> res!1293447 e!1982719)))

(assert (=> b!3182368 (= res!1293447 (not (isEmpty!19865 (tail!5172 lt!1069647))))))

(declare-fun b!3182369 () Bool)

(assert (=> b!3182369 (= e!1982725 (not lt!1069885))))

(assert (= (and d!870814 c!534523) b!3182362))

(assert (= (and d!870814 (not c!534523)) b!3182364))

(assert (= (and d!870814 c!534521) b!3182361))

(assert (= (and d!870814 (not c!534521)) b!3182365))

(assert (= (and b!3182365 c!534522) b!3182369))

(assert (= (and b!3182365 (not c!534522)) b!3182358))

(assert (= (and b!3182358 (not res!1293449)) b!3182367))

(assert (= (and b!3182367 res!1293451) b!3182360))

(assert (= (and b!3182360 res!1293446) b!3182359))

(assert (= (and b!3182359 res!1293448) b!3182366))

(assert (= (and b!3182367 (not res!1293450)) b!3182356))

(assert (= (and b!3182356 res!1293444) b!3182357))

(assert (= (and b!3182357 (not res!1293445)) b!3182368))

(assert (= (and b!3182368 (not res!1293447)) b!3182363))

(assert (= (or b!3182361 b!3182357 b!3182360) bm!230992))

(assert (=> b!3182368 m!3439175))

(assert (=> b!3182368 m!3439175))

(declare-fun m!3439305 () Bool)

(assert (=> b!3182368 m!3439305))

(declare-fun m!3439307 () Bool)

(assert (=> b!3182362 m!3439307))

(declare-fun m!3439309 () Bool)

(assert (=> bm!230992 m!3439309))

(declare-fun m!3439311 () Bool)

(assert (=> b!3182363 m!3439311))

(assert (=> b!3182359 m!3439175))

(assert (=> b!3182359 m!3439175))

(assert (=> b!3182359 m!3439305))

(assert (=> b!3182364 m!3439311))

(assert (=> b!3182364 m!3439311))

(declare-fun m!3439313 () Bool)

(assert (=> b!3182364 m!3439313))

(assert (=> b!3182364 m!3439175))

(assert (=> b!3182364 m!3439313))

(assert (=> b!3182364 m!3439175))

(declare-fun m!3439315 () Bool)

(assert (=> b!3182364 m!3439315))

(assert (=> b!3182366 m!3439311))

(assert (=> d!870814 m!3439309))

(declare-fun m!3439317 () Bool)

(assert (=> d!870814 m!3439317))

(assert (=> b!3181719 d!870814))

(declare-fun d!870816 () Bool)

(assert (=> d!870816 (= (get!11368 lt!1069654) (v!35428 lt!1069654))))

(assert (=> b!3181719 d!870816))

(declare-fun d!870818 () Bool)

(declare-fun res!1293456 () Bool)

(declare-fun e!1982730 () Bool)

(assert (=> d!870818 (=> res!1293456 e!1982730)))

(assert (=> d!870818 (= res!1293456 (not ((_ is Cons!35748) rules!2135)))))

(assert (=> d!870818 (= (sepAndNonSepRulesDisjointChars!1316 rules!2135 rules!2135) e!1982730)))

(declare-fun b!3182374 () Bool)

(declare-fun e!1982731 () Bool)

(assert (=> b!3182374 (= e!1982730 e!1982731)))

(declare-fun res!1293457 () Bool)

(assert (=> b!3182374 (=> (not res!1293457) (not e!1982731))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!569 (Rule!10044 List!35872) Bool)

(assert (=> b!3182374 (= res!1293457 (ruleDisjointCharsFromAllFromOtherType!569 (h!41168 rules!2135) rules!2135))))

(declare-fun b!3182375 () Bool)

(assert (=> b!3182375 (= e!1982731 (sepAndNonSepRulesDisjointChars!1316 rules!2135 (t!235215 rules!2135)))))

(assert (= (and d!870818 (not res!1293456)) b!3182374))

(assert (= (and b!3182374 res!1293457) b!3182375))

(declare-fun m!3439319 () Bool)

(assert (=> b!3182374 m!3439319))

(declare-fun m!3439321 () Bool)

(assert (=> b!3182375 m!3439321))

(assert (=> b!3181708 d!870818))

(declare-fun d!870820 () Bool)

(assert (=> d!870820 (= (inv!48595 (tag!5630 (rule!7536 separatorToken!241))) (= (mod (str.len (value!166436 (tag!5630 (rule!7536 separatorToken!241)))) 2) 0))))

(assert (=> b!3181729 d!870820))

(declare-fun d!870822 () Bool)

(declare-fun res!1293458 () Bool)

(declare-fun e!1982732 () Bool)

(assert (=> d!870822 (=> (not res!1293458) (not e!1982732))))

(assert (=> d!870822 (= res!1293458 (semiInverseModEq!2133 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toValue!7182 (transformation!5122 (rule!7536 separatorToken!241)))))))

(assert (=> d!870822 (= (inv!48598 (transformation!5122 (rule!7536 separatorToken!241))) e!1982732)))

(declare-fun b!3182376 () Bool)

(assert (=> b!3182376 (= e!1982732 (equivClasses!2032 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toValue!7182 (transformation!5122 (rule!7536 separatorToken!241)))))))

(assert (= (and d!870822 res!1293458) b!3182376))

(declare-fun m!3439323 () Bool)

(assert (=> d!870822 m!3439323))

(declare-fun m!3439325 () Bool)

(assert (=> b!3182376 m!3439325))

(assert (=> b!3181729 d!870822))

(declare-fun d!870824 () Bool)

(declare-fun res!1293459 () Bool)

(declare-fun e!1982733 () Bool)

(assert (=> d!870824 (=> (not res!1293459) (not e!1982733))))

(assert (=> d!870824 (= res!1293459 (not (isEmpty!19865 (originalCharacters!5836 separatorToken!241))))))

(assert (=> d!870824 (= (inv!48599 separatorToken!241) e!1982733)))

(declare-fun b!3182377 () Bool)

(declare-fun res!1293460 () Bool)

(assert (=> b!3182377 (=> (not res!1293460) (not e!1982733))))

(assert (=> b!3182377 (= res!1293460 (= (originalCharacters!5836 separatorToken!241) (list!12687 (dynLambda!14411 (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (value!166437 separatorToken!241)))))))

(declare-fun b!3182378 () Bool)

(assert (=> b!3182378 (= e!1982733 (= (size!26974 separatorToken!241) (size!26975 (originalCharacters!5836 separatorToken!241))))))

(assert (= (and d!870824 res!1293459) b!3182377))

(assert (= (and b!3182377 res!1293460) b!3182378))

(declare-fun b_lambda!86699 () Bool)

(assert (=> (not b_lambda!86699) (not b!3182377)))

(assert (=> b!3182377 t!235238))

(declare-fun b_and!210429 () Bool)

(assert (= b_and!210423 (and (=> t!235238 result!197358) b_and!210429)))

(assert (=> b!3182377 t!235240))

(declare-fun b_and!210431 () Bool)

(assert (= b_and!210425 (and (=> t!235240 result!197360) b_and!210431)))

(assert (=> b!3182377 t!235242))

(declare-fun b_and!210433 () Bool)

(assert (= b_and!210427 (and (=> t!235242 result!197362) b_and!210433)))

(declare-fun m!3439327 () Bool)

(assert (=> d!870824 m!3439327))

(assert (=> b!3182377 m!3438847))

(assert (=> b!3182377 m!3438847))

(declare-fun m!3439329 () Bool)

(assert (=> b!3182377 m!3439329))

(declare-fun m!3439331 () Bool)

(assert (=> b!3182378 m!3439331))

(assert (=> start!298094 d!870824))

(declare-fun b!3182379 () Bool)

(declare-fun e!1982735 () Bool)

(assert (=> b!3182379 (= e!1982735 (inv!16 (value!166437 (h!41169 tokens!494))))))

(declare-fun d!870826 () Bool)

(declare-fun c!534525 () Bool)

(assert (=> d!870826 (= c!534525 ((_ is IntegerValue!16056) (value!166437 (h!41169 tokens!494))))))

(assert (=> d!870826 (= (inv!21 (value!166437 (h!41169 tokens!494))) e!1982735)))

(declare-fun b!3182380 () Bool)

(declare-fun e!1982734 () Bool)

(assert (=> b!3182380 (= e!1982735 e!1982734)))

(declare-fun c!534524 () Bool)

(assert (=> b!3182380 (= c!534524 ((_ is IntegerValue!16057) (value!166437 (h!41169 tokens!494))))))

(declare-fun b!3182381 () Bool)

(declare-fun res!1293461 () Bool)

(declare-fun e!1982736 () Bool)

(assert (=> b!3182381 (=> res!1293461 e!1982736)))

(assert (=> b!3182381 (= res!1293461 (not ((_ is IntegerValue!16058) (value!166437 (h!41169 tokens!494)))))))

(assert (=> b!3182381 (= e!1982734 e!1982736)))

(declare-fun b!3182382 () Bool)

(assert (=> b!3182382 (= e!1982734 (inv!17 (value!166437 (h!41169 tokens!494))))))

(declare-fun b!3182383 () Bool)

(assert (=> b!3182383 (= e!1982736 (inv!15 (value!166437 (h!41169 tokens!494))))))

(assert (= (and d!870826 c!534525) b!3182379))

(assert (= (and d!870826 (not c!534525)) b!3182380))

(assert (= (and b!3182380 c!534524) b!3182382))

(assert (= (and b!3182380 (not c!534524)) b!3182381))

(assert (= (and b!3182381 (not res!1293461)) b!3182383))

(declare-fun m!3439333 () Bool)

(assert (=> b!3182379 m!3439333))

(declare-fun m!3439335 () Bool)

(assert (=> b!3182382 m!3439335))

(declare-fun m!3439337 () Bool)

(assert (=> b!3182383 m!3439337))

(assert (=> b!3181718 d!870826))

(declare-fun b!3182384 () Bool)

(declare-fun e!1982741 () Bool)

(declare-fun e!1982740 () Bool)

(assert (=> b!3182384 (= e!1982741 e!1982740)))

(declare-fun res!1293462 () Bool)

(assert (=> b!3182384 (=> (not res!1293462) (not e!1982740))))

(declare-fun lt!1069886 () Bool)

(assert (=> b!3182384 (= res!1293462 (not lt!1069886))))

(declare-fun b!3182385 () Bool)

(declare-fun e!1982737 () Bool)

(assert (=> b!3182385 (= e!1982740 e!1982737)))

(declare-fun res!1293463 () Bool)

(assert (=> b!3182385 (=> res!1293463 e!1982737)))

(declare-fun call!230998 () Bool)

(assert (=> b!3182385 (= res!1293463 call!230998)))

(declare-fun bm!230993 () Bool)

(assert (=> bm!230993 (= call!230998 (isEmpty!19865 lt!1069650))))

(declare-fun b!3182386 () Bool)

(declare-fun res!1293467 () Bool)

(assert (=> b!3182386 (=> res!1293467 e!1982741)))

(assert (=> b!3182386 (= res!1293467 (not ((_ is ElementMatch!9881) (regex!5122 lt!1069649))))))

(declare-fun e!1982743 () Bool)

(assert (=> b!3182386 (= e!1982743 e!1982741)))

(declare-fun b!3182387 () Bool)

(declare-fun res!1293466 () Bool)

(declare-fun e!1982738 () Bool)

(assert (=> b!3182387 (=> (not res!1293466) (not e!1982738))))

(assert (=> b!3182387 (= res!1293466 (isEmpty!19865 (tail!5172 lt!1069650)))))

(declare-fun b!3182388 () Bool)

(declare-fun res!1293464 () Bool)

(assert (=> b!3182388 (=> (not res!1293464) (not e!1982738))))

(assert (=> b!3182388 (= res!1293464 (not call!230998))))

(declare-fun b!3182389 () Bool)

(declare-fun e!1982739 () Bool)

(assert (=> b!3182389 (= e!1982739 (= lt!1069886 call!230998))))

(declare-fun b!3182390 () Bool)

(declare-fun e!1982742 () Bool)

(assert (=> b!3182390 (= e!1982742 (nullable!3380 (regex!5122 lt!1069649)))))

(declare-fun b!3182391 () Bool)

(assert (=> b!3182391 (= e!1982737 (not (= (head!6947 lt!1069650) (c!534396 (regex!5122 lt!1069649)))))))

(declare-fun d!870828 () Bool)

(assert (=> d!870828 e!1982739))

(declare-fun c!534526 () Bool)

(assert (=> d!870828 (= c!534526 ((_ is EmptyExpr!9881) (regex!5122 lt!1069649)))))

(assert (=> d!870828 (= lt!1069886 e!1982742)))

(declare-fun c!534528 () Bool)

(assert (=> d!870828 (= c!534528 (isEmpty!19865 lt!1069650))))

(assert (=> d!870828 (validRegex!4532 (regex!5122 lt!1069649))))

(assert (=> d!870828 (= (matchR!4539 (regex!5122 lt!1069649) lt!1069650) lt!1069886)))

(declare-fun b!3182392 () Bool)

(assert (=> b!3182392 (= e!1982742 (matchR!4539 (derivativeStep!2933 (regex!5122 lt!1069649) (head!6947 lt!1069650)) (tail!5172 lt!1069650)))))

(declare-fun b!3182393 () Bool)

(assert (=> b!3182393 (= e!1982739 e!1982743)))

(declare-fun c!534527 () Bool)

(assert (=> b!3182393 (= c!534527 ((_ is EmptyLang!9881) (regex!5122 lt!1069649)))))

(declare-fun b!3182394 () Bool)

(assert (=> b!3182394 (= e!1982738 (= (head!6947 lt!1069650) (c!534396 (regex!5122 lt!1069649))))))

(declare-fun b!3182395 () Bool)

(declare-fun res!1293468 () Bool)

(assert (=> b!3182395 (=> res!1293468 e!1982741)))

(assert (=> b!3182395 (= res!1293468 e!1982738)))

(declare-fun res!1293469 () Bool)

(assert (=> b!3182395 (=> (not res!1293469) (not e!1982738))))

(assert (=> b!3182395 (= res!1293469 lt!1069886)))

(declare-fun b!3182396 () Bool)

(declare-fun res!1293465 () Bool)

(assert (=> b!3182396 (=> res!1293465 e!1982737)))

(assert (=> b!3182396 (= res!1293465 (not (isEmpty!19865 (tail!5172 lt!1069650))))))

(declare-fun b!3182397 () Bool)

(assert (=> b!3182397 (= e!1982743 (not lt!1069886))))

(assert (= (and d!870828 c!534528) b!3182390))

(assert (= (and d!870828 (not c!534528)) b!3182392))

(assert (= (and d!870828 c!534526) b!3182389))

(assert (= (and d!870828 (not c!534526)) b!3182393))

(assert (= (and b!3182393 c!534527) b!3182397))

(assert (= (and b!3182393 (not c!534527)) b!3182386))

(assert (= (and b!3182386 (not res!1293467)) b!3182395))

(assert (= (and b!3182395 res!1293469) b!3182388))

(assert (= (and b!3182388 res!1293464) b!3182387))

(assert (= (and b!3182387 res!1293466) b!3182394))

(assert (= (and b!3182395 (not res!1293468)) b!3182384))

(assert (= (and b!3182384 res!1293462) b!3182385))

(assert (= (and b!3182385 (not res!1293463)) b!3182396))

(assert (= (and b!3182396 (not res!1293465)) b!3182391))

(assert (= (or b!3182389 b!3182385 b!3182388) bm!230993))

(assert (=> b!3182396 m!3438925))

(assert (=> b!3182396 m!3438925))

(assert (=> b!3182396 m!3438929))

(declare-fun m!3439339 () Bool)

(assert (=> b!3182390 m!3439339))

(assert (=> bm!230993 m!3438933))

(assert (=> b!3182391 m!3438585))

(assert (=> b!3182387 m!3438925))

(assert (=> b!3182387 m!3438925))

(assert (=> b!3182387 m!3438929))

(assert (=> b!3182392 m!3438585))

(assert (=> b!3182392 m!3438585))

(declare-fun m!3439341 () Bool)

(assert (=> b!3182392 m!3439341))

(assert (=> b!3182392 m!3438925))

(assert (=> b!3182392 m!3439341))

(assert (=> b!3182392 m!3438925))

(declare-fun m!3439343 () Bool)

(assert (=> b!3182392 m!3439343))

(assert (=> b!3182394 m!3438585))

(assert (=> d!870828 m!3438933))

(declare-fun m!3439345 () Bool)

(assert (=> d!870828 m!3439345))

(assert (=> b!3181707 d!870828))

(declare-fun d!870830 () Bool)

(assert (=> d!870830 (= (get!11368 lt!1069655) (v!35428 lt!1069655))))

(assert (=> b!3181707 d!870830))

(declare-fun b!3182411 () Bool)

(declare-fun b_free!83925 () Bool)

(declare-fun b_next!84629 () Bool)

(assert (=> b!3182411 (= b_free!83925 (not b_next!84629))))

(declare-fun t!235281 () Bool)

(declare-fun tb!155323 () Bool)

(assert (=> (and b!3182411 (= (toValue!7182 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235281) tb!155323))

(declare-fun result!197402 () Bool)

(assert (= result!197402 result!197392))

(assert (=> d!870800 t!235281))

(declare-fun tp!1006625 () Bool)

(declare-fun b_and!210435 () Bool)

(assert (=> b!3182411 (= tp!1006625 (and (=> t!235281 result!197402) b_and!210435))))

(declare-fun b_free!83927 () Bool)

(declare-fun b_next!84631 () Bool)

(assert (=> b!3182411 (= b_free!83927 (not b_next!84631))))

(declare-fun t!235283 () Bool)

(declare-fun tb!155325 () Bool)

(assert (=> (and b!3182411 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235283) tb!155325))

(declare-fun result!197404 () Bool)

(assert (= result!197404 result!197336))

(assert (=> b!3181812 t!235283))

(declare-fun tb!155327 () Bool)

(declare-fun t!235285 () Bool)

(assert (=> (and b!3182411 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241)))) t!235285) tb!155327))

(declare-fun result!197406 () Bool)

(assert (= result!197406 result!197358))

(assert (=> d!870676 t!235285))

(assert (=> d!870806 t!235283))

(assert (=> b!3182377 t!235285))

(declare-fun b_and!210437 () Bool)

(declare-fun tp!1006624 () Bool)

(assert (=> b!3182411 (= tp!1006624 (and (=> t!235283 result!197404) (=> t!235285 result!197406) b_and!210437))))

(declare-fun e!1982760 () Bool)

(declare-fun e!1982759 () Bool)

(declare-fun tp!1006622 () Bool)

(declare-fun b!3182410 () Bool)

(assert (=> b!3182410 (= e!1982760 (and tp!1006622 (inv!48595 (tag!5630 (rule!7536 (h!41169 (t!235216 tokens!494))))) (inv!48598 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) e!1982759))))

(declare-fun e!1982758 () Bool)

(assert (=> b!3181711 (= tp!1006545 e!1982758)))

(declare-fun b!3182408 () Bool)

(declare-fun e!1982756 () Bool)

(declare-fun tp!1006623 () Bool)

(assert (=> b!3182408 (= e!1982758 (and (inv!48599 (h!41169 (t!235216 tokens!494))) e!1982756 tp!1006623))))

(assert (=> b!3182411 (= e!1982759 (and tp!1006625 tp!1006624))))

(declare-fun tp!1006621 () Bool)

(declare-fun b!3182409 () Bool)

(assert (=> b!3182409 (= e!1982756 (and (inv!21 (value!166437 (h!41169 (t!235216 tokens!494)))) e!1982760 tp!1006621))))

(assert (= b!3182410 b!3182411))

(assert (= b!3182409 b!3182410))

(assert (= b!3182408 b!3182409))

(assert (= (and b!3181711 ((_ is Cons!35749) (t!235216 tokens!494))) b!3182408))

(declare-fun m!3439347 () Bool)

(assert (=> b!3182410 m!3439347))

(declare-fun m!3439349 () Bool)

(assert (=> b!3182410 m!3439349))

(declare-fun m!3439351 () Bool)

(assert (=> b!3182408 m!3439351))

(declare-fun m!3439353 () Bool)

(assert (=> b!3182409 m!3439353))

(declare-fun b!3182424 () Bool)

(declare-fun e!1982764 () Bool)

(declare-fun tp!1006640 () Bool)

(assert (=> b!3182424 (= e!1982764 tp!1006640)))

(declare-fun b!3182425 () Bool)

(declare-fun tp!1006639 () Bool)

(declare-fun tp!1006636 () Bool)

(assert (=> b!3182425 (= e!1982764 (and tp!1006639 tp!1006636))))

(assert (=> b!3181710 (= tp!1006544 e!1982764)))

(declare-fun b!3182422 () Bool)

(declare-fun tp_is_empty!17253 () Bool)

(assert (=> b!3182422 (= e!1982764 tp_is_empty!17253)))

(declare-fun b!3182423 () Bool)

(declare-fun tp!1006637 () Bool)

(declare-fun tp!1006638 () Bool)

(assert (=> b!3182423 (= e!1982764 (and tp!1006637 tp!1006638))))

(assert (= (and b!3181710 ((_ is ElementMatch!9881) (regex!5122 (h!41168 rules!2135)))) b!3182422))

(assert (= (and b!3181710 ((_ is Concat!15233) (regex!5122 (h!41168 rules!2135)))) b!3182423))

(assert (= (and b!3181710 ((_ is Star!9881) (regex!5122 (h!41168 rules!2135)))) b!3182424))

(assert (= (and b!3181710 ((_ is Union!9881) (regex!5122 (h!41168 rules!2135)))) b!3182425))

(declare-fun b!3182428 () Bool)

(declare-fun e!1982765 () Bool)

(declare-fun tp!1006645 () Bool)

(assert (=> b!3182428 (= e!1982765 tp!1006645)))

(declare-fun b!3182429 () Bool)

(declare-fun tp!1006644 () Bool)

(declare-fun tp!1006641 () Bool)

(assert (=> b!3182429 (= e!1982765 (and tp!1006644 tp!1006641))))

(assert (=> b!3181730 (= tp!1006540 e!1982765)))

(declare-fun b!3182426 () Bool)

(assert (=> b!3182426 (= e!1982765 tp_is_empty!17253)))

(declare-fun b!3182427 () Bool)

(declare-fun tp!1006642 () Bool)

(declare-fun tp!1006643 () Bool)

(assert (=> b!3182427 (= e!1982765 (and tp!1006642 tp!1006643))))

(assert (= (and b!3181730 ((_ is ElementMatch!9881) (regex!5122 (rule!7536 (h!41169 tokens!494))))) b!3182426))

(assert (= (and b!3181730 ((_ is Concat!15233) (regex!5122 (rule!7536 (h!41169 tokens!494))))) b!3182427))

(assert (= (and b!3181730 ((_ is Star!9881) (regex!5122 (rule!7536 (h!41169 tokens!494))))) b!3182428))

(assert (= (and b!3181730 ((_ is Union!9881) (regex!5122 (rule!7536 (h!41169 tokens!494))))) b!3182429))

(declare-fun b!3182432 () Bool)

(declare-fun e!1982766 () Bool)

(declare-fun tp!1006650 () Bool)

(assert (=> b!3182432 (= e!1982766 tp!1006650)))

(declare-fun b!3182433 () Bool)

(declare-fun tp!1006649 () Bool)

(declare-fun tp!1006646 () Bool)

(assert (=> b!3182433 (= e!1982766 (and tp!1006649 tp!1006646))))

(assert (=> b!3181729 (= tp!1006542 e!1982766)))

(declare-fun b!3182430 () Bool)

(assert (=> b!3182430 (= e!1982766 tp_is_empty!17253)))

(declare-fun b!3182431 () Bool)

(declare-fun tp!1006647 () Bool)

(declare-fun tp!1006648 () Bool)

(assert (=> b!3182431 (= e!1982766 (and tp!1006647 tp!1006648))))

(assert (= (and b!3181729 ((_ is ElementMatch!9881) (regex!5122 (rule!7536 separatorToken!241)))) b!3182430))

(assert (= (and b!3181729 ((_ is Concat!15233) (regex!5122 (rule!7536 separatorToken!241)))) b!3182431))

(assert (= (and b!3181729 ((_ is Star!9881) (regex!5122 (rule!7536 separatorToken!241)))) b!3182432))

(assert (= (and b!3181729 ((_ is Union!9881) (regex!5122 (rule!7536 separatorToken!241)))) b!3182433))

(declare-fun b!3182438 () Bool)

(declare-fun e!1982769 () Bool)

(declare-fun tp!1006653 () Bool)

(assert (=> b!3182438 (= e!1982769 (and tp_is_empty!17253 tp!1006653))))

(assert (=> b!3181718 (= tp!1006539 e!1982769)))

(assert (= (and b!3181718 ((_ is Cons!35747) (originalCharacters!5836 (h!41169 tokens!494)))) b!3182438))

(declare-fun b!3182439 () Bool)

(declare-fun e!1982770 () Bool)

(declare-fun tp!1006654 () Bool)

(assert (=> b!3182439 (= e!1982770 (and tp_is_empty!17253 tp!1006654))))

(assert (=> b!3181723 (= tp!1006535 e!1982770)))

(assert (= (and b!3181723 ((_ is Cons!35747) (originalCharacters!5836 separatorToken!241))) b!3182439))

(declare-fun b!3182450 () Bool)

(declare-fun b_free!83929 () Bool)

(declare-fun b_next!84633 () Bool)

(assert (=> b!3182450 (= b_free!83929 (not b_next!84633))))

(declare-fun t!235287 () Bool)

(declare-fun tb!155329 () Bool)

(assert (=> (and b!3182450 (= (toValue!7182 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235287) tb!155329))

(declare-fun result!197414 () Bool)

(assert (= result!197414 result!197392))

(assert (=> d!870800 t!235287))

(declare-fun b_and!210439 () Bool)

(declare-fun tp!1006666 () Bool)

(assert (=> b!3182450 (= tp!1006666 (and (=> t!235287 result!197414) b_and!210439))))

(declare-fun b_free!83931 () Bool)

(declare-fun b_next!84635 () Bool)

(assert (=> b!3182450 (= b_free!83931 (not b_next!84635))))

(declare-fun tb!155331 () Bool)

(declare-fun t!235289 () Bool)

(assert (=> (and b!3182450 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494))))) t!235289) tb!155331))

(declare-fun result!197416 () Bool)

(assert (= result!197416 result!197336))

(assert (=> b!3181812 t!235289))

(declare-fun tb!155333 () Bool)

(declare-fun t!235291 () Bool)

(assert (=> (and b!3182450 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241)))) t!235291) tb!155333))

(declare-fun result!197418 () Bool)

(assert (= result!197418 result!197358))

(assert (=> d!870676 t!235291))

(assert (=> d!870806 t!235289))

(assert (=> b!3182377 t!235291))

(declare-fun tp!1006665 () Bool)

(declare-fun b_and!210441 () Bool)

(assert (=> b!3182450 (= tp!1006665 (and (=> t!235289 result!197416) (=> t!235291 result!197418) b_and!210441))))

(declare-fun e!1982782 () Bool)

(assert (=> b!3182450 (= e!1982782 (and tp!1006666 tp!1006665))))

(declare-fun b!3182449 () Bool)

(declare-fun e!1982779 () Bool)

(declare-fun tp!1006663 () Bool)

(assert (=> b!3182449 (= e!1982779 (and tp!1006663 (inv!48595 (tag!5630 (h!41168 (t!235215 rules!2135)))) (inv!48598 (transformation!5122 (h!41168 (t!235215 rules!2135)))) e!1982782))))

(declare-fun b!3182448 () Bool)

(declare-fun e!1982780 () Bool)

(declare-fun tp!1006664 () Bool)

(assert (=> b!3182448 (= e!1982780 (and e!1982779 tp!1006664))))

(assert (=> b!3181728 (= tp!1006541 e!1982780)))

(assert (= b!3182449 b!3182450))

(assert (= b!3182448 b!3182449))

(assert (= (and b!3181728 ((_ is Cons!35748) (t!235215 rules!2135))) b!3182448))

(declare-fun m!3439355 () Bool)

(assert (=> b!3182449 m!3439355))

(declare-fun m!3439357 () Bool)

(assert (=> b!3182449 m!3439357))

(declare-fun b_lambda!86701 () Bool)

(assert (= b_lambda!86665 (or b!3181716 b_lambda!86701)))

(declare-fun bs!539933 () Bool)

(declare-fun d!870832 () Bool)

(assert (= bs!539933 (and d!870832 b!3181716)))

(assert (=> bs!539933 (= (dynLambda!14415 lambda!116423 (h!41169 tokens!494)) (not (isSeparator!5122 (rule!7536 (h!41169 tokens!494)))))))

(assert (=> d!870668 d!870832))

(declare-fun b_lambda!86703 () Bool)

(assert (= b_lambda!86699 (or (and b!3181709 b_free!83907 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3181717 b_free!83911 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3181722 b_free!83915) (and b!3182450 b_free!83931 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3182411 b_free!83927 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) b_lambda!86703)))

(declare-fun b_lambda!86705 () Bool)

(assert (= b_lambda!86695 (or (and b!3182450 b_free!83929 (= (toValue!7182 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181722 b_free!83913 (= (toValue!7182 (transformation!5122 (rule!7536 separatorToken!241))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181709 b_free!83905) (and b!3181717 b_free!83909 (= (toValue!7182 (transformation!5122 (h!41168 rules!2135))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3182411 b_free!83925 (= (toValue!7182 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toValue!7182 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) b_lambda!86705)))

(declare-fun b_lambda!86707 () Bool)

(assert (= b_lambda!86677 (or b!3181716 b_lambda!86707)))

(assert (=> b!3182103 d!870832))

(declare-fun b_lambda!86709 () Bool)

(assert (= b_lambda!86697 (or (and b!3182450 b_free!83931 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181722 b_free!83915 (= (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181717 b_free!83911 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3182411 b_free!83927 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181709 b_free!83907) b_lambda!86709)))

(declare-fun b_lambda!86711 () Bool)

(assert (= b_lambda!86667 (or (and b!3181709 b_free!83907 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3181717 b_free!83911 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3181722 b_free!83915) (and b!3182450 b_free!83931 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) (and b!3182411 b_free!83927 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))))) b_lambda!86711)))

(declare-fun b_lambda!86713 () Bool)

(assert (= b_lambda!86659 (or (and b!3182450 b_free!83931 (= (toChars!7041 (transformation!5122 (h!41168 (t!235215 rules!2135)))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181722 b_free!83915 (= (toChars!7041 (transformation!5122 (rule!7536 separatorToken!241))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181717 b_free!83911 (= (toChars!7041 (transformation!5122 (h!41168 rules!2135))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3182411 b_free!83927 (= (toChars!7041 (transformation!5122 (rule!7536 (h!41169 (t!235216 tokens!494))))) (toChars!7041 (transformation!5122 (rule!7536 (h!41169 tokens!494)))))) (and b!3181709 b_free!83907) b_lambda!86713)))

(check-sat (not d!870680) (not b!3181813) (not b!3182396) (not b!3182339) (not d!870796) (not b!3182429) (not b!3182104) (not b!3182424) (not b!3182020) (not b!3182351) (not b!3182345) (not b!3182382) (not b!3182432) (not b!3182319) (not b!3182377) (not b!3182037) (not d!870822) (not bm!230988) (not b!3182347) (not b_next!84609) (not b!3182094) (not b_lambda!86707) b_and!210437 (not b!3182341) (not b!3182086) (not b!3182378) (not d!870710) (not b!3182320) (not d!870728) (not d!870802) (not b_next!84617) (not b!3182017) (not d!870696) (not b!3182387) (not b!3182354) (not b_next!84613) (not b!3182392) (not b!3182355) (not b!3182366) (not d!870786) (not tb!155317) (not d!870672) (not b!3182254) (not b!3182352) (not b!3182061) (not b!3182374) (not b!3182427) (not d!870794) (not tb!155293) b_and!210429 (not b!3182098) (not b!3181812) (not b!3182439) (not b!3181942) b_and!210417 (not b_lambda!86705) (not b!3182038) (not b!3182026) (not b!3182340) (not b_next!84635) (not d!870812) (not b!3182364) (not d!870692) (not b!3182409) (not d!870682) (not d!870732) (not b_next!84615) (not d!870630) (not d!870788) (not b!3182379) (not b!3182408) (not b!3182433) (not bm!230992) (not b!3182359) (not b!3182376) (not b!3182448) (not b!3181920) (not d!870780) (not b!3182423) (not d!870776) (not b!3181923) (not b!3182353) (not b!3182394) (not d!870618) (not b!3182425) (not b_lambda!86701) (not b!3182315) tp_is_empty!17253 (not b!3182323) b_and!210435 (not d!870724) (not d!870726) (not b!3182390) (not b_next!84633) (not b_next!84629) (not b!3182289) (not bm!230990) (not bm!230989) (not b!3182449) (not b!3182383) (not b!3182317) (not b!3181901) (not d!870824) (not b!3181910) (not b!3181951) (not d!870798) (not b!3182350) (not b!3182084) (not b!3181907) (not tb!155275) (not d!870674) (not d!870804) (not b_lambda!86703) (not d!870694) (not b!3182024) (not b!3182368) (not b!3182065) (not d!870716) (not b!3182363) (not b_lambda!86709) (not b!3182410) (not b!3181900) (not b!3182064) (not b!3181904) (not b!3182321) (not b!3182362) (not b_lambda!86713) (not d!870736) (not b!3182022) b_and!210441 (not d!870676) (not b!3182438) (not bm!230993) (not b!3181921) (not b!3182431) (not b!3182259) (not b!3182391) (not d!870828) (not b!3182290) (not d!870814) (not d!870808) (not d!870792) (not b_next!84619) b_and!210431 b_and!210439 (not b!3181821) (not b!3182322) (not d!870626) (not b!3182296) b_and!210433 (not b!3182021) (not b!3182428) (not b!3182375) (not d!870666) b_and!210421 (not b!3182316) (not b_next!84631) (not b!3182036) (not b!3182089) b_and!210419 (not d!870678) (not d!870684) (not d!870668) (not bm!230967) (not d!870806) (not d!870782) (not b!3181902) (not b_lambda!86711) (not d!870774) (not b!3182346) (not b_next!84611))
(check-sat (not b_next!84609) b_and!210437 (not b_next!84617) (not b_next!84613) b_and!210429 (not b_next!84615) b_and!210441 b_and!210433 b_and!210421 (not b_next!84611) b_and!210417 (not b_next!84635) b_and!210435 (not b_next!84633) (not b_next!84629) (not b_next!84619) b_and!210431 b_and!210439 (not b_next!84631) b_and!210419)
