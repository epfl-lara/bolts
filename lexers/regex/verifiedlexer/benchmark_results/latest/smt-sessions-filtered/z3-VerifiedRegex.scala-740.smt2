; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36930 () Bool)

(assert start!36930)

(declare-fun b!371725 () Bool)

(declare-fun b_free!11569 () Bool)

(declare-fun b_next!11569 () Bool)

(assert (=> b!371725 (= b_free!11569 (not b_next!11569))))

(declare-fun tp!116753 () Bool)

(declare-fun b_and!37381 () Bool)

(assert (=> b!371725 (= tp!116753 b_and!37381)))

(declare-fun b_free!11571 () Bool)

(declare-fun b_next!11571 () Bool)

(assert (=> b!371725 (= b_free!11571 (not b_next!11571))))

(declare-fun tp!116754 () Bool)

(declare-fun b_and!37383 () Bool)

(assert (=> b!371725 (= tp!116754 b_and!37383)))

(declare-fun b!371713 () Bool)

(declare-fun b_free!11573 () Bool)

(declare-fun b_next!11573 () Bool)

(assert (=> b!371713 (= b_free!11573 (not b_next!11573))))

(declare-fun tp!116756 () Bool)

(declare-fun b_and!37385 () Bool)

(assert (=> b!371713 (= tp!116756 b_and!37385)))

(declare-fun b_free!11575 () Bool)

(declare-fun b_next!11575 () Bool)

(assert (=> b!371713 (= b_free!11575 (not b_next!11575))))

(declare-fun tp!116761 () Bool)

(declare-fun b_and!37387 () Bool)

(assert (=> b!371713 (= tp!116761 b_and!37387)))

(declare-fun b!371700 () Bool)

(declare-fun b_free!11577 () Bool)

(declare-fun b_next!11577 () Bool)

(assert (=> b!371700 (= b_free!11577 (not b_next!11577))))

(declare-fun tp!116757 () Bool)

(declare-fun b_and!37389 () Bool)

(assert (=> b!371700 (= tp!116757 b_and!37389)))

(declare-fun b_free!11579 () Bool)

(declare-fun b_next!11579 () Bool)

(assert (=> b!371700 (= b_free!11579 (not b_next!11579))))

(declare-fun tp!116760 () Bool)

(declare-fun b_and!37391 () Bool)

(assert (=> b!371700 (= tp!116760 b_and!37391)))

(declare-fun bs!45112 () Bool)

(declare-fun b!371727 () Bool)

(declare-fun b!371686 () Bool)

(assert (= bs!45112 (and b!371727 b!371686)))

(declare-fun lambda!11562 () Int)

(declare-fun lambda!11561 () Int)

(assert (=> bs!45112 (not (= lambda!11562 lambda!11561))))

(declare-fun b!371742 () Bool)

(declare-fun e!228478 () Bool)

(assert (=> b!371742 (= e!228478 true)))

(declare-fun b!371741 () Bool)

(declare-fun e!228477 () Bool)

(assert (=> b!371741 (= e!228477 e!228478)))

(declare-fun b!371740 () Bool)

(declare-fun e!228476 () Bool)

(assert (=> b!371740 (= e!228476 e!228477)))

(assert (=> b!371727 e!228476))

(assert (= b!371741 b!371742))

(assert (= b!371740 b!371741))

(declare-datatypes ((C!2976 0))(
  ( (C!2977 (val!1374 Int)) )
))
(declare-datatypes ((List!4174 0))(
  ( (Nil!4164) (Cons!4164 (h!9561 (_ BitVec 16)) (t!57230 List!4174)) )
))
(declare-datatypes ((TokenValue!825 0))(
  ( (FloatLiteralValue!1650 (text!6220 List!4174)) (TokenValueExt!824 (__x!3137 Int)) (Broken!4125 (value!27175 List!4174)) (Object!834) (End!825) (Def!825) (Underscore!825) (Match!825) (Else!825) (Error!825) (Case!825) (If!825) (Extends!825) (Abstract!825) (Class!825) (Val!825) (DelimiterValue!1650 (del!885 List!4174)) (KeywordValue!831 (value!27176 List!4174)) (CommentValue!1650 (value!27177 List!4174)) (WhitespaceValue!1650 (value!27178 List!4174)) (IndentationValue!825 (value!27179 List!4174)) (String!5204) (Int32!825) (Broken!4126 (value!27180 List!4174)) (Boolean!826) (Unit!6601) (OperatorValue!828 (op!885 List!4174)) (IdentifierValue!1650 (value!27181 List!4174)) (IdentifierValue!1651 (value!27182 List!4174)) (WhitespaceValue!1651 (value!27183 List!4174)) (True!1650) (False!1650) (Broken!4127 (value!27184 List!4174)) (Broken!4128 (value!27185 List!4174)) (True!1651) (RightBrace!825) (RightBracket!825) (Colon!825) (Null!825) (Comma!825) (LeftBracket!825) (False!1651) (LeftBrace!825) (ImaginaryLiteralValue!825 (text!6221 List!4174)) (StringLiteralValue!2475 (value!27186 List!4174)) (EOFValue!825 (value!27187 List!4174)) (IdentValue!825 (value!27188 List!4174)) (DelimiterValue!1651 (value!27189 List!4174)) (DedentValue!825 (value!27190 List!4174)) (NewLineValue!825 (value!27191 List!4174)) (IntegerValue!2475 (value!27192 (_ BitVec 32)) (text!6222 List!4174)) (IntegerValue!2476 (value!27193 Int) (text!6223 List!4174)) (Times!825) (Or!825) (Equal!825) (Minus!825) (Broken!4129 (value!27194 List!4174)) (And!825) (Div!825) (LessEqual!825) (Mod!825) (Concat!1852) (Not!825) (Plus!825) (SpaceValue!825 (value!27195 List!4174)) (IntegerValue!2477 (value!27196 Int) (text!6224 List!4174)) (StringLiteralValue!2476 (text!6225 List!4174)) (FloatLiteralValue!1651 (text!6226 List!4174)) (BytesLiteralValue!825 (value!27197 List!4174)) (CommentValue!1651 (value!27198 List!4174)) (StringLiteralValue!2477 (value!27199 List!4174)) (ErrorTokenValue!825 (msg!886 List!4174)) )
))
(declare-datatypes ((List!4175 0))(
  ( (Nil!4165) (Cons!4165 (h!9562 C!2976) (t!57231 List!4175)) )
))
(declare-datatypes ((IArray!2857 0))(
  ( (IArray!2858 (innerList!1486 List!4175)) )
))
(declare-datatypes ((Conc!1428 0))(
  ( (Node!1428 (left!3476 Conc!1428) (right!3806 Conc!1428) (csize!3086 Int) (cheight!1639 Int)) (Leaf!2169 (xs!4047 IArray!2857) (csize!3087 Int)) (Empty!1428) )
))
(declare-datatypes ((BalanceConc!2864 0))(
  ( (BalanceConc!2865 (c!73188 Conc!1428)) )
))
(declare-datatypes ((TokenValueInjection!1422 0))(
  ( (TokenValueInjection!1423 (toValue!1586 Int) (toChars!1445 Int)) )
))
(declare-datatypes ((Regex!1027 0))(
  ( (ElementMatch!1027 (c!73189 C!2976)) (Concat!1853 (regOne!2566 Regex!1027) (regTwo!2566 Regex!1027)) (EmptyExpr!1027) (Star!1027 (reg!1356 Regex!1027)) (EmptyLang!1027) (Union!1027 (regOne!2567 Regex!1027) (regTwo!2567 Regex!1027)) )
))
(declare-datatypes ((String!5205 0))(
  ( (String!5206 (value!27200 String)) )
))
(declare-datatypes ((Rule!1406 0))(
  ( (Rule!1407 (regex!803 Regex!1027) (tag!1033 String!5205) (isSeparator!803 Bool) (transformation!803 TokenValueInjection!1422)) )
))
(declare-datatypes ((List!4176 0))(
  ( (Nil!4166) (Cons!4166 (h!9563 Rule!1406) (t!57232 List!4176)) )
))
(declare-fun rules!1920 () List!4176)

(get-info :version)

(assert (= (and b!371727 ((_ is Cons!4166) rules!1920)) b!371740))

(declare-fun order!3493 () Int)

(declare-fun order!3495 () Int)

(declare-fun dynLambda!2377 (Int Int) Int)

(declare-fun dynLambda!2378 (Int Int) Int)

(assert (=> b!371742 (< (dynLambda!2377 order!3493 (toValue!1586 (transformation!803 (h!9563 rules!1920)))) (dynLambda!2378 order!3495 lambda!11562))))

(declare-fun order!3497 () Int)

(declare-fun dynLambda!2379 (Int Int) Int)

(assert (=> b!371742 (< (dynLambda!2379 order!3497 (toChars!1445 (transformation!803 (h!9563 rules!1920)))) (dynLambda!2378 order!3495 lambda!11562))))

(assert (=> b!371727 true))

(declare-fun res!166282 () Bool)

(declare-fun e!228451 () Bool)

(assert (=> b!371686 (=> (not res!166282) (not e!228451))))

(declare-datatypes ((Token!1350 0))(
  ( (Token!1351 (value!27201 TokenValue!825) (rule!1448 Rule!1406) (size!3368 Int) (originalCharacters!846 List!4175)) )
))
(declare-datatypes ((List!4177 0))(
  ( (Nil!4167) (Cons!4167 (h!9564 Token!1350) (t!57233 List!4177)) )
))
(declare-fun tokens!465 () List!4177)

(declare-fun forall!1150 (List!4177 Int) Bool)

(assert (=> b!371686 (= res!166282 (forall!1150 tokens!465 lambda!11561))))

(declare-fun res!166279 () Bool)

(declare-fun e!228455 () Bool)

(assert (=> start!36930 (=> (not res!166279) (not e!228455))))

(declare-datatypes ((LexerInterface!689 0))(
  ( (LexerInterfaceExt!686 (__x!3138 Int)) (Lexer!687) )
))
(declare-fun thiss!17480 () LexerInterface!689)

(assert (=> start!36930 (= res!166279 ((_ is Lexer!687) thiss!17480))))

(assert (=> start!36930 e!228455))

(assert (=> start!36930 true))

(declare-fun e!228467 () Bool)

(assert (=> start!36930 e!228467))

(declare-fun separatorToken!170 () Token!1350)

(declare-fun e!228442 () Bool)

(declare-fun inv!5176 (Token!1350) Bool)

(assert (=> start!36930 (and (inv!5176 separatorToken!170) e!228442)))

(declare-fun e!228453 () Bool)

(assert (=> start!36930 e!228453))

(declare-fun b!371687 () Bool)

(assert (=> b!371687 (= e!228455 e!228451)))

(declare-fun res!166283 () Bool)

(assert (=> b!371687 (=> (not res!166283) (not e!228451))))

(declare-datatypes ((IArray!2859 0))(
  ( (IArray!2860 (innerList!1487 List!4177)) )
))
(declare-datatypes ((Conc!1429 0))(
  ( (Node!1429 (left!3477 Conc!1429) (right!3807 Conc!1429) (csize!3088 Int) (cheight!1640 Int)) (Leaf!2170 (xs!4048 IArray!2859) (csize!3089 Int)) (Empty!1429) )
))
(declare-datatypes ((BalanceConc!2866 0))(
  ( (BalanceConc!2867 (c!73190 Conc!1429)) )
))
(declare-fun lt!161302 () BalanceConc!2866)

(declare-fun rulesProduceEachTokenIndividually!481 (LexerInterface!689 List!4176 BalanceConc!2866) Bool)

(assert (=> b!371687 (= res!166283 (rulesProduceEachTokenIndividually!481 thiss!17480 rules!1920 lt!161302))))

(declare-fun seqFromList!971 (List!4177) BalanceConc!2866)

(assert (=> b!371687 (= lt!161302 (seqFromList!971 tokens!465))))

(declare-fun b!371688 () Bool)

(declare-fun res!166254 () Bool)

(assert (=> b!371688 (=> (not res!166254) (not e!228455))))

(declare-fun isEmpty!2960 (List!4176) Bool)

(assert (=> b!371688 (= res!166254 (not (isEmpty!2960 rules!1920)))))

(declare-fun b!371689 () Bool)

(declare-datatypes ((Unit!6602 0))(
  ( (Unit!6603) )
))
(declare-fun e!228459 () Unit!6602)

(declare-fun Unit!6604 () Unit!6602)

(assert (=> b!371689 (= e!228459 Unit!6604)))

(declare-fun b!371690 () Bool)

(declare-fun res!166267 () Bool)

(assert (=> b!371690 (=> (not res!166267) (not e!228455))))

(declare-fun rulesInvariant!655 (LexerInterface!689 List!4176) Bool)

(assert (=> b!371690 (= res!166267 (rulesInvariant!655 thiss!17480 rules!1920))))

(declare-fun b!371691 () Bool)

(declare-fun Unit!6605 () Unit!6602)

(assert (=> b!371691 (= e!228459 Unit!6605)))

(declare-fun lt!161298 () C!2976)

(declare-fun lt!161309 () Token!1350)

(declare-fun lt!161308 () List!4175)

(declare-fun lt!161336 () Unit!6602)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!82 (Regex!1027 List!4175 C!2976) Unit!6602)

(assert (=> b!371691 (= lt!161336 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!82 (regex!803 (rule!1448 lt!161309)) lt!161308 lt!161298))))

(declare-fun res!166271 () Bool)

(declare-fun matchR!345 (Regex!1027 List!4175) Bool)

(assert (=> b!371691 (= res!166271 (not (matchR!345 (regex!803 (rule!1448 lt!161309)) lt!161308)))))

(declare-fun e!228437 () Bool)

(assert (=> b!371691 (=> (not res!166271) (not e!228437))))

(assert (=> b!371691 e!228437))

(declare-fun e!228463 () Bool)

(declare-fun tp!116762 () Bool)

(declare-fun b!371692 () Bool)

(declare-fun e!228434 () Bool)

(declare-fun inv!21 (TokenValue!825) Bool)

(assert (=> b!371692 (= e!228463 (and (inv!21 (value!27201 (h!9564 tokens!465))) e!228434 tp!116762))))

(declare-fun b!371693 () Bool)

(declare-fun e!228457 () Bool)

(assert (=> b!371693 (= e!228457 true)))

(declare-fun lt!161332 () Bool)

(declare-fun lt!161333 () List!4175)

(declare-fun contains!853 (List!4175 C!2976) Bool)

(declare-fun usedCharacters!104 (Regex!1027) List!4175)

(declare-fun head!1007 (List!4175) C!2976)

(assert (=> b!371693 (= lt!161332 (contains!853 (usedCharacters!104 (regex!803 (rule!1448 separatorToken!170))) (head!1007 lt!161333)))))

(declare-fun lt!161314 () Unit!6602)

(assert (=> b!371693 (= lt!161314 e!228459)))

(declare-fun c!73187 () Bool)

(assert (=> b!371693 (= c!73187 (not (contains!853 (usedCharacters!104 (regex!803 (rule!1448 lt!161309))) lt!161298)))))

(assert (=> b!371693 (= lt!161298 (head!1007 lt!161308))))

(declare-fun e!228447 () Bool)

(assert (=> b!371693 e!228447))

(declare-fun res!166284 () Bool)

(assert (=> b!371693 (=> (not res!166284) (not e!228447))))

(declare-datatypes ((Option!991 0))(
  ( (None!990) (Some!990 (v!15113 Rule!1406)) )
))
(declare-fun lt!161322 () Option!991)

(declare-fun isDefined!830 (Option!991) Bool)

(assert (=> b!371693 (= res!166284 (isDefined!830 lt!161322))))

(declare-fun getRuleFromTag!162 (LexerInterface!689 List!4176 String!5205) Option!991)

(assert (=> b!371693 (= lt!161322 (getRuleFromTag!162 thiss!17480 rules!1920 (tag!1033 (rule!1448 lt!161309))))))

(declare-fun lt!161292 () Unit!6602)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!162 (LexerInterface!689 List!4176 List!4175 Token!1350) Unit!6602)

(assert (=> b!371693 (= lt!161292 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!162 thiss!17480 rules!1920 lt!161308 lt!161309))))

(declare-fun list!1799 (BalanceConc!2864) List!4175)

(declare-fun charsOf!446 (Token!1350) BalanceConc!2864)

(assert (=> b!371693 (= lt!161308 (list!1799 (charsOf!446 lt!161309)))))

(declare-fun lt!161306 () Unit!6602)

(declare-fun forallContained!356 (List!4177 Int Token!1350) Unit!6602)

(assert (=> b!371693 (= lt!161306 (forallContained!356 tokens!465 lambda!11562 lt!161309))))

(declare-fun e!228449 () Bool)

(assert (=> b!371693 e!228449))

(declare-fun res!166260 () Bool)

(assert (=> b!371693 (=> (not res!166260) (not e!228449))))

(declare-datatypes ((tuple2!4902 0))(
  ( (tuple2!4903 (_1!2667 BalanceConc!2866) (_2!2667 BalanceConc!2864)) )
))
(declare-fun lt!161331 () tuple2!4902)

(declare-fun size!3369 (BalanceConc!2866) Int)

(assert (=> b!371693 (= res!166260 (= (size!3369 (_1!2667 lt!161331)) 1))))

(declare-fun lt!161317 () BalanceConc!2864)

(declare-fun lex!481 (LexerInterface!689 List!4176 BalanceConc!2864) tuple2!4902)

(assert (=> b!371693 (= lt!161331 (lex!481 thiss!17480 rules!1920 lt!161317))))

(declare-fun lt!161334 () BalanceConc!2866)

(declare-fun printTailRec!375 (LexerInterface!689 BalanceConc!2866 Int BalanceConc!2864) BalanceConc!2864)

(assert (=> b!371693 (= lt!161317 (printTailRec!375 thiss!17480 lt!161334 0 (BalanceConc!2865 Empty!1428)))))

(declare-fun print!414 (LexerInterface!689 BalanceConc!2866) BalanceConc!2864)

(assert (=> b!371693 (= lt!161317 (print!414 thiss!17480 lt!161334))))

(declare-fun singletonSeq!349 (Token!1350) BalanceConc!2866)

(assert (=> b!371693 (= lt!161334 (singletonSeq!349 lt!161309))))

(declare-fun e!228438 () Bool)

(assert (=> b!371693 e!228438))

(declare-fun res!166269 () Bool)

(assert (=> b!371693 (=> (not res!166269) (not e!228438))))

(declare-fun lt!161311 () Option!991)

(assert (=> b!371693 (= res!166269 (isDefined!830 lt!161311))))

(assert (=> b!371693 (= lt!161311 (getRuleFromTag!162 thiss!17480 rules!1920 (tag!1033 (rule!1448 separatorToken!170))))))

(declare-fun lt!161294 () List!4175)

(declare-fun lt!161293 () Unit!6602)

(assert (=> b!371693 (= lt!161293 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!162 thiss!17480 rules!1920 lt!161294 separatorToken!170))))

(declare-fun e!228468 () Bool)

(assert (=> b!371693 e!228468))

(declare-fun res!166261 () Bool)

(assert (=> b!371693 (=> (not res!166261) (not e!228468))))

(declare-fun lt!161304 () tuple2!4902)

(assert (=> b!371693 (= res!166261 (= (size!3369 (_1!2667 lt!161304)) 1))))

(declare-fun lt!161318 () BalanceConc!2864)

(assert (=> b!371693 (= lt!161304 (lex!481 thiss!17480 rules!1920 lt!161318))))

(declare-fun lt!161335 () BalanceConc!2866)

(assert (=> b!371693 (= lt!161318 (printTailRec!375 thiss!17480 lt!161335 0 (BalanceConc!2865 Empty!1428)))))

(assert (=> b!371693 (= lt!161318 (print!414 thiss!17480 lt!161335))))

(assert (=> b!371693 (= lt!161335 (singletonSeq!349 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!438 (LexerInterface!689 List!4176 Token!1350) Bool)

(assert (=> b!371693 (rulesProduceIndividualToken!438 thiss!17480 rules!1920 lt!161309)))

(declare-fun lt!161313 () Unit!6602)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!152 (LexerInterface!689 List!4176 List!4177 Token!1350) Unit!6602)

(assert (=> b!371693 (= lt!161313 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!152 thiss!17480 rules!1920 tokens!465 lt!161309))))

(declare-fun head!1008 (List!4177) Token!1350)

(assert (=> b!371693 (= lt!161309 (head!1008 (t!57233 tokens!465)))))

(declare-fun lt!161329 () Unit!6602)

(declare-fun e!228464 () Unit!6602)

(assert (=> b!371693 (= lt!161329 e!228464)))

(declare-fun c!73186 () Bool)

(declare-fun isEmpty!2961 (List!4177) Bool)

(assert (=> b!371693 (= c!73186 (isEmpty!2961 (t!57233 tokens!465)))))

(declare-datatypes ((tuple2!4904 0))(
  ( (tuple2!4905 (_1!2668 Token!1350) (_2!2668 List!4175)) )
))
(declare-datatypes ((Option!992 0))(
  ( (None!991) (Some!991 (v!15114 tuple2!4904)) )
))
(declare-fun lt!161326 () Option!992)

(declare-fun lt!161295 () List!4175)

(declare-fun maxPrefix!405 (LexerInterface!689 List!4176 List!4175) Option!992)

(assert (=> b!371693 (= lt!161326 (maxPrefix!405 thiss!17480 rules!1920 lt!161295))))

(declare-fun lt!161296 () tuple2!4904)

(assert (=> b!371693 (= lt!161295 (_2!2668 lt!161296))))

(declare-fun lt!161324 () Unit!6602)

(declare-fun lt!161330 () List!4175)

(declare-fun lt!161303 () List!4175)

(declare-fun lemmaSamePrefixThenSameSuffix!248 (List!4175 List!4175 List!4175 List!4175 List!4175) Unit!6602)

(assert (=> b!371693 (= lt!161324 (lemmaSamePrefixThenSameSuffix!248 lt!161303 lt!161295 lt!161303 (_2!2668 lt!161296) lt!161330))))

(declare-fun get!1456 (Option!992) tuple2!4904)

(assert (=> b!371693 (= lt!161296 (get!1456 (maxPrefix!405 thiss!17480 rules!1920 lt!161330)))))

(declare-fun lt!161325 () List!4175)

(declare-fun isPrefix!463 (List!4175 List!4175) Bool)

(assert (=> b!371693 (isPrefix!463 lt!161303 lt!161325)))

(declare-fun lt!161321 () Unit!6602)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!354 (List!4175 List!4175) Unit!6602)

(assert (=> b!371693 (= lt!161321 (lemmaConcatTwoListThenFirstIsPrefix!354 lt!161303 lt!161295))))

(declare-fun e!228461 () Bool)

(assert (=> b!371693 e!228461))

(declare-fun res!166275 () Bool)

(assert (=> b!371693 (=> res!166275 e!228461)))

(assert (=> b!371693 (= res!166275 (isEmpty!2961 tokens!465))))

(declare-fun lt!161300 () Unit!6602)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!210 (LexerInterface!689 List!4176 List!4177 Token!1350) Unit!6602)

(assert (=> b!371693 (= lt!161300 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!210 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!371694 () Bool)

(declare-fun tp!116763 () Bool)

(declare-fun e!228456 () Bool)

(assert (=> b!371694 (= e!228442 (and (inv!21 (value!27201 separatorToken!170)) e!228456 tp!116763))))

(declare-fun b!371695 () Bool)

(declare-fun e!228450 () Bool)

(declare-fun e!228462 () Bool)

(assert (=> b!371695 (= e!228450 (not e!228462))))

(declare-fun res!166266 () Bool)

(assert (=> b!371695 (=> res!166266 e!228462)))

(declare-fun printWithSeparatorTokenWhenNeededRec!362 (LexerInterface!689 List!4176 BalanceConc!2866 Token!1350 Int) BalanceConc!2864)

(assert (=> b!371695 (= res!166266 (not (= lt!161333 (list!1799 (printWithSeparatorTokenWhenNeededRec!362 thiss!17480 rules!1920 (seqFromList!971 (t!57233 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!161310 () List!4175)

(assert (=> b!371695 (= lt!161310 lt!161325)))

(declare-fun ++!1164 (List!4175 List!4175) List!4175)

(assert (=> b!371695 (= lt!161325 (++!1164 lt!161303 lt!161295))))

(assert (=> b!371695 (= lt!161310 (++!1164 (++!1164 lt!161303 lt!161294) lt!161333))))

(declare-fun lt!161319 () Unit!6602)

(declare-fun lemmaConcatAssociativity!522 (List!4175 List!4175 List!4175) Unit!6602)

(assert (=> b!371695 (= lt!161319 (lemmaConcatAssociativity!522 lt!161303 lt!161294 lt!161333))))

(assert (=> b!371695 (= lt!161303 (list!1799 (charsOf!446 (h!9564 tokens!465))))))

(assert (=> b!371695 (= lt!161295 (++!1164 lt!161294 lt!161333))))

(declare-fun printWithSeparatorTokenWhenNeededList!370 (LexerInterface!689 List!4176 List!4177 Token!1350) List!4175)

(assert (=> b!371695 (= lt!161333 (printWithSeparatorTokenWhenNeededList!370 thiss!17480 rules!1920 (t!57233 tokens!465) separatorToken!170))))

(assert (=> b!371695 (= lt!161294 (list!1799 (charsOf!446 separatorToken!170)))))

(declare-fun b!371696 () Bool)

(declare-fun e!228440 () Bool)

(declare-fun lt!161328 () Rule!1406)

(assert (=> b!371696 (= e!228440 (= (rule!1448 lt!161309) lt!161328))))

(declare-fun b!371697 () Bool)

(declare-fun e!228465 () Bool)

(assert (=> b!371697 (= e!228461 e!228465)))

(declare-fun res!166285 () Bool)

(assert (=> b!371697 (=> (not res!166285) (not e!228465))))

(declare-fun lt!161301 () Option!992)

(declare-fun isDefined!831 (Option!992) Bool)

(assert (=> b!371697 (= res!166285 (isDefined!831 lt!161301))))

(assert (=> b!371697 (= lt!161301 (maxPrefix!405 thiss!17480 rules!1920 lt!161330))))

(declare-fun b!371698 () Bool)

(declare-fun e!228443 () Bool)

(declare-fun lt!161299 () Rule!1406)

(assert (=> b!371698 (= e!228443 (= (rule!1448 separatorToken!170) lt!161299))))

(declare-fun b!371699 () Bool)

(declare-fun e!228439 () Bool)

(assert (=> b!371699 (= e!228439 e!228457)))

(declare-fun res!166259 () Bool)

(assert (=> b!371699 (=> res!166259 e!228457)))

(declare-fun lt!161315 () Bool)

(assert (=> b!371699 (= res!166259 (not lt!161315))))

(declare-fun e!228458 () Bool)

(assert (=> b!371699 e!228458))

(declare-fun res!166272 () Bool)

(assert (=> b!371699 (=> (not res!166272) (not e!228458))))

(declare-fun lt!161312 () tuple2!4904)

(assert (=> b!371699 (= res!166272 (= (_1!2668 lt!161312) (h!9564 tokens!465)))))

(declare-fun lt!161316 () Option!992)

(assert (=> b!371699 (= lt!161312 (get!1456 lt!161316))))

(assert (=> b!371699 (isDefined!831 lt!161316)))

(assert (=> b!371699 (= lt!161316 (maxPrefix!405 thiss!17480 rules!1920 lt!161303))))

(declare-fun e!228436 () Bool)

(assert (=> b!371700 (= e!228436 (and tp!116757 tp!116760))))

(declare-fun b!371701 () Bool)

(declare-fun res!166258 () Bool)

(assert (=> b!371701 (=> (not res!166258) (not e!228468))))

(declare-fun apply!968 (BalanceConc!2866 Int) Token!1350)

(assert (=> b!371701 (= res!166258 (= (apply!968 (_1!2667 lt!161304) 0) separatorToken!170))))

(declare-fun b!371702 () Bool)

(declare-fun isEmpty!2962 (BalanceConc!2864) Bool)

(assert (=> b!371702 (= e!228468 (isEmpty!2962 (_2!2667 lt!161304)))))

(declare-fun b!371703 () Bool)

(declare-fun e!228448 () Bool)

(declare-fun e!228469 () Bool)

(assert (=> b!371703 (= e!228448 e!228469)))

(declare-fun res!166265 () Bool)

(assert (=> b!371703 (=> res!166265 e!228469)))

(declare-fun lt!161305 () List!4175)

(declare-fun lt!161323 () List!4175)

(assert (=> b!371703 (= res!166265 (or (not (= lt!161305 lt!161323)) (not (= lt!161323 lt!161303)) (not (= lt!161305 lt!161303))))))

(declare-fun printList!363 (LexerInterface!689 List!4177) List!4175)

(assert (=> b!371703 (= lt!161323 (printList!363 thiss!17480 (Cons!4167 (h!9564 tokens!465) Nil!4167)))))

(declare-fun lt!161307 () BalanceConc!2864)

(assert (=> b!371703 (= lt!161305 (list!1799 lt!161307))))

(declare-fun lt!161327 () BalanceConc!2866)

(assert (=> b!371703 (= lt!161307 (printTailRec!375 thiss!17480 lt!161327 0 (BalanceConc!2865 Empty!1428)))))

(assert (=> b!371703 (= lt!161307 (print!414 thiss!17480 lt!161327))))

(assert (=> b!371703 (= lt!161327 (singletonSeq!349 (h!9564 tokens!465)))))

(declare-fun b!371704 () Bool)

(declare-fun tp!116765 () Bool)

(assert (=> b!371704 (= e!228453 (and (inv!5176 (h!9564 tokens!465)) e!228463 tp!116765))))

(declare-fun b!371705 () Bool)

(assert (=> b!371705 (= e!228437 false)))

(declare-fun b!371706 () Bool)

(declare-fun e!228466 () Bool)

(declare-fun tp!116755 () Bool)

(declare-fun inv!5173 (String!5205) Bool)

(declare-fun inv!5177 (TokenValueInjection!1422) Bool)

(assert (=> b!371706 (= e!228466 (and tp!116755 (inv!5173 (tag!1033 (h!9563 rules!1920))) (inv!5177 (transformation!803 (h!9563 rules!1920))) e!228436))))

(declare-fun tp!116758 () Bool)

(declare-fun b!371707 () Bool)

(declare-fun e!228460 () Bool)

(assert (=> b!371707 (= e!228456 (and tp!116758 (inv!5173 (tag!1033 (rule!1448 separatorToken!170))) (inv!5177 (transformation!803 (rule!1448 separatorToken!170))) e!228460))))

(declare-fun b!371708 () Bool)

(declare-fun res!166262 () Bool)

(assert (=> b!371708 (=> res!166262 e!228469)))

(declare-fun isEmpty!2963 (BalanceConc!2866) Bool)

(declare-fun seqFromList!972 (List!4175) BalanceConc!2864)

(assert (=> b!371708 (= res!166262 (isEmpty!2963 (_1!2667 (lex!481 thiss!17480 rules!1920 (seqFromList!972 lt!161303)))))))

(declare-fun b!371709 () Bool)

(declare-fun Unit!6606 () Unit!6602)

(assert (=> b!371709 (= e!228464 Unit!6606)))

(declare-fun b!371710 () Bool)

(assert (=> b!371710 (= e!228458 (matchR!345 (regex!803 (rule!1448 (h!9564 tokens!465))) lt!161303))))

(declare-fun b!371711 () Bool)

(declare-fun res!166257 () Bool)

(assert (=> b!371711 (=> (not res!166257) (not e!228458))))

(declare-fun isEmpty!2964 (List!4175) Bool)

(assert (=> b!371711 (= res!166257 (isEmpty!2964 (_2!2668 lt!161312)))))

(declare-fun b!371712 () Bool)

(declare-fun res!166268 () Bool)

(assert (=> b!371712 (=> (not res!166268) (not e!228449))))

(assert (=> b!371712 (= res!166268 (= (apply!968 (_1!2667 lt!161331) 0) lt!161309))))

(declare-fun e!228446 () Bool)

(assert (=> b!371713 (= e!228446 (and tp!116756 tp!116761))))

(declare-fun b!371714 () Bool)

(assert (=> b!371714 (= e!228447 e!228440)))

(declare-fun res!166278 () Bool)

(assert (=> b!371714 (=> (not res!166278) (not e!228440))))

(assert (=> b!371714 (= res!166278 (matchR!345 (regex!803 lt!161328) lt!161308))))

(declare-fun get!1457 (Option!991) Rule!1406)

(assert (=> b!371714 (= lt!161328 (get!1457 lt!161322))))

(declare-fun b!371715 () Bool)

(declare-fun res!166264 () Bool)

(assert (=> b!371715 (=> (not res!166264) (not e!228451))))

(assert (=> b!371715 (= res!166264 (isSeparator!803 (rule!1448 separatorToken!170)))))

(declare-fun b!371716 () Bool)

(assert (=> b!371716 (= e!228465 (= (_1!2668 (get!1456 lt!161301)) (head!1008 tokens!465)))))

(declare-fun b!371717 () Bool)

(declare-fun res!166263 () Bool)

(assert (=> b!371717 (=> res!166263 e!228469)))

(assert (=> b!371717 (= res!166263 (not (rulesProduceIndividualToken!438 thiss!17480 rules!1920 (h!9564 tokens!465))))))

(declare-fun b!371718 () Bool)

(declare-fun res!166255 () Bool)

(assert (=> b!371718 (=> (not res!166255) (not e!228451))))

(assert (=> b!371718 (= res!166255 (rulesProduceIndividualToken!438 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!371719 () Bool)

(assert (=> b!371719 (= e!228438 e!228443)))

(declare-fun res!166281 () Bool)

(assert (=> b!371719 (=> (not res!166281) (not e!228443))))

(assert (=> b!371719 (= res!166281 (matchR!345 (regex!803 lt!161299) lt!161294))))

(assert (=> b!371719 (= lt!161299 (get!1457 lt!161311))))

(declare-fun b!371720 () Bool)

(declare-fun res!166270 () Bool)

(assert (=> b!371720 (=> (not res!166270) (not e!228451))))

(assert (=> b!371720 (= res!166270 ((_ is Cons!4167) tokens!465))))

(declare-fun b!371721 () Bool)

(assert (=> b!371721 (= e!228451 e!228450)))

(declare-fun res!166276 () Bool)

(assert (=> b!371721 (=> (not res!166276) (not e!228450))))

(declare-fun lt!161297 () List!4175)

(assert (=> b!371721 (= res!166276 (= lt!161330 lt!161297))))

(assert (=> b!371721 (= lt!161297 (list!1799 (printWithSeparatorTokenWhenNeededRec!362 thiss!17480 rules!1920 lt!161302 separatorToken!170 0)))))

(assert (=> b!371721 (= lt!161330 (printWithSeparatorTokenWhenNeededList!370 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!228435 () Bool)

(declare-fun b!371722 () Bool)

(assert (=> b!371722 (= e!228435 (not (= lt!161330 (++!1164 lt!161303 lt!161333))))))

(declare-fun b!371723 () Bool)

(assert (=> b!371723 (= e!228462 e!228448)))

(declare-fun res!166280 () Bool)

(assert (=> b!371723 (=> res!166280 e!228448)))

(assert (=> b!371723 (= res!166280 e!228435)))

(declare-fun res!166274 () Bool)

(assert (=> b!371723 (=> (not res!166274) (not e!228435))))

(assert (=> b!371723 (= res!166274 (not lt!161315))))

(assert (=> b!371723 (= lt!161315 (= lt!161330 lt!161325))))

(declare-fun b!371724 () Bool)

(declare-fun Unit!6607 () Unit!6602)

(assert (=> b!371724 (= e!228464 Unit!6607)))

(assert (=> b!371724 false))

(assert (=> b!371725 (= e!228460 (and tp!116753 tp!116754))))

(declare-fun b!371726 () Bool)

(assert (=> b!371726 (= e!228449 (isEmpty!2962 (_2!2667 lt!161331)))))

(assert (=> b!371727 (= e!228469 e!228439)))

(declare-fun res!166256 () Bool)

(assert (=> b!371727 (=> res!166256 e!228439)))

(declare-datatypes ((tuple2!4906 0))(
  ( (tuple2!4907 (_1!2669 Token!1350) (_2!2669 BalanceConc!2864)) )
))
(declare-datatypes ((Option!993 0))(
  ( (None!992) (Some!992 (v!15115 tuple2!4906)) )
))
(declare-fun isDefined!832 (Option!993) Bool)

(declare-fun maxPrefixZipperSequence!368 (LexerInterface!689 List!4176 BalanceConc!2864) Option!993)

(assert (=> b!371727 (= res!166256 (not (isDefined!832 (maxPrefixZipperSequence!368 thiss!17480 rules!1920 (seqFromList!972 (originalCharacters!846 (h!9564 tokens!465)))))))))

(declare-fun lt!161320 () Unit!6602)

(assert (=> b!371727 (= lt!161320 (forallContained!356 tokens!465 lambda!11562 (h!9564 tokens!465)))))

(assert (=> b!371727 (= lt!161303 (originalCharacters!846 (h!9564 tokens!465)))))

(declare-fun b!371728 () Bool)

(declare-fun tp!116759 () Bool)

(assert (=> b!371728 (= e!228467 (and e!228466 tp!116759))))

(declare-fun b!371729 () Bool)

(declare-fun res!166277 () Bool)

(assert (=> b!371729 (=> (not res!166277) (not e!228451))))

(declare-fun sepAndNonSepRulesDisjointChars!392 (List!4176 List!4176) Bool)

(assert (=> b!371729 (= res!166277 (sepAndNonSepRulesDisjointChars!392 rules!1920 rules!1920))))

(declare-fun b!371730 () Bool)

(declare-fun res!166273 () Bool)

(assert (=> b!371730 (=> (not res!166273) (not e!228450))))

(assert (=> b!371730 (= res!166273 (= (list!1799 (seqFromList!972 lt!161330)) lt!161297))))

(declare-fun b!371731 () Bool)

(declare-fun tp!116764 () Bool)

(assert (=> b!371731 (= e!228434 (and tp!116764 (inv!5173 (tag!1033 (rule!1448 (h!9564 tokens!465)))) (inv!5177 (transformation!803 (rule!1448 (h!9564 tokens!465)))) e!228446))))

(assert (= (and start!36930 res!166279) b!371688))

(assert (= (and b!371688 res!166254) b!371690))

(assert (= (and b!371690 res!166267) b!371687))

(assert (= (and b!371687 res!166283) b!371718))

(assert (= (and b!371718 res!166255) b!371715))

(assert (= (and b!371715 res!166264) b!371686))

(assert (= (and b!371686 res!166282) b!371729))

(assert (= (and b!371729 res!166277) b!371720))

(assert (= (and b!371720 res!166270) b!371721))

(assert (= (and b!371721 res!166276) b!371730))

(assert (= (and b!371730 res!166273) b!371695))

(assert (= (and b!371695 (not res!166266)) b!371723))

(assert (= (and b!371723 res!166274) b!371722))

(assert (= (and b!371723 (not res!166280)) b!371703))

(assert (= (and b!371703 (not res!166265)) b!371717))

(assert (= (and b!371717 (not res!166263)) b!371708))

(assert (= (and b!371708 (not res!166262)) b!371727))

(assert (= (and b!371727 (not res!166256)) b!371699))

(assert (= (and b!371699 res!166272) b!371711))

(assert (= (and b!371711 res!166257) b!371710))

(assert (= (and b!371699 (not res!166259)) b!371693))

(assert (= (and b!371693 (not res!166275)) b!371697))

(assert (= (and b!371697 res!166285) b!371716))

(assert (= (and b!371693 c!73186) b!371724))

(assert (= (and b!371693 (not c!73186)) b!371709))

(assert (= (and b!371693 res!166261) b!371701))

(assert (= (and b!371701 res!166258) b!371702))

(assert (= (and b!371693 res!166269) b!371719))

(assert (= (and b!371719 res!166281) b!371698))

(assert (= (and b!371693 res!166260) b!371712))

(assert (= (and b!371712 res!166268) b!371726))

(assert (= (and b!371693 res!166284) b!371714))

(assert (= (and b!371714 res!166278) b!371696))

(assert (= (and b!371693 c!73187) b!371691))

(assert (= (and b!371693 (not c!73187)) b!371689))

(assert (= (and b!371691 res!166271) b!371705))

(assert (= b!371706 b!371700))

(assert (= b!371728 b!371706))

(assert (= (and start!36930 ((_ is Cons!4166) rules!1920)) b!371728))

(assert (= b!371707 b!371725))

(assert (= b!371694 b!371707))

(assert (= start!36930 b!371694))

(assert (= b!371731 b!371713))

(assert (= b!371692 b!371731))

(assert (= b!371704 b!371692))

(assert (= (and start!36930 ((_ is Cons!4167) tokens!465)) b!371704))

(declare-fun m!551023 () Bool)

(assert (=> start!36930 m!551023))

(declare-fun m!551025 () Bool)

(assert (=> b!371701 m!551025))

(declare-fun m!551027 () Bool)

(assert (=> b!371695 m!551027))

(declare-fun m!551029 () Bool)

(assert (=> b!371695 m!551029))

(declare-fun m!551031 () Bool)

(assert (=> b!371695 m!551031))

(declare-fun m!551033 () Bool)

(assert (=> b!371695 m!551033))

(declare-fun m!551035 () Bool)

(assert (=> b!371695 m!551035))

(declare-fun m!551037 () Bool)

(assert (=> b!371695 m!551037))

(assert (=> b!371695 m!551033))

(declare-fun m!551039 () Bool)

(assert (=> b!371695 m!551039))

(declare-fun m!551041 () Bool)

(assert (=> b!371695 m!551041))

(assert (=> b!371695 m!551039))

(declare-fun m!551043 () Bool)

(assert (=> b!371695 m!551043))

(assert (=> b!371695 m!551027))

(declare-fun m!551045 () Bool)

(assert (=> b!371695 m!551045))

(declare-fun m!551047 () Bool)

(assert (=> b!371695 m!551047))

(assert (=> b!371695 m!551047))

(declare-fun m!551049 () Bool)

(assert (=> b!371695 m!551049))

(assert (=> b!371695 m!551045))

(declare-fun m!551051 () Bool)

(assert (=> b!371695 m!551051))

(declare-fun m!551053 () Bool)

(assert (=> b!371716 m!551053))

(declare-fun m!551055 () Bool)

(assert (=> b!371716 m!551055))

(declare-fun m!551057 () Bool)

(assert (=> b!371694 m!551057))

(declare-fun m!551059 () Bool)

(assert (=> b!371697 m!551059))

(declare-fun m!551061 () Bool)

(assert (=> b!371697 m!551061))

(declare-fun m!551063 () Bool)

(assert (=> b!371719 m!551063))

(declare-fun m!551065 () Bool)

(assert (=> b!371719 m!551065))

(declare-fun m!551067 () Bool)

(assert (=> b!371693 m!551067))

(declare-fun m!551069 () Bool)

(assert (=> b!371693 m!551069))

(declare-fun m!551071 () Bool)

(assert (=> b!371693 m!551071))

(declare-fun m!551073 () Bool)

(assert (=> b!371693 m!551073))

(declare-fun m!551075 () Bool)

(assert (=> b!371693 m!551075))

(declare-fun m!551077 () Bool)

(assert (=> b!371693 m!551077))

(declare-fun m!551079 () Bool)

(assert (=> b!371693 m!551079))

(declare-fun m!551081 () Bool)

(assert (=> b!371693 m!551081))

(declare-fun m!551083 () Bool)

(assert (=> b!371693 m!551083))

(declare-fun m!551085 () Bool)

(assert (=> b!371693 m!551085))

(declare-fun m!551087 () Bool)

(assert (=> b!371693 m!551087))

(declare-fun m!551089 () Bool)

(assert (=> b!371693 m!551089))

(declare-fun m!551091 () Bool)

(assert (=> b!371693 m!551091))

(assert (=> b!371693 m!551085))

(declare-fun m!551093 () Bool)

(assert (=> b!371693 m!551093))

(assert (=> b!371693 m!551061))

(declare-fun m!551095 () Bool)

(assert (=> b!371693 m!551095))

(declare-fun m!551097 () Bool)

(assert (=> b!371693 m!551097))

(declare-fun m!551099 () Bool)

(assert (=> b!371693 m!551099))

(declare-fun m!551101 () Bool)

(assert (=> b!371693 m!551101))

(declare-fun m!551103 () Bool)

(assert (=> b!371693 m!551103))

(declare-fun m!551105 () Bool)

(assert (=> b!371693 m!551105))

(declare-fun m!551107 () Bool)

(assert (=> b!371693 m!551107))

(declare-fun m!551109 () Bool)

(assert (=> b!371693 m!551109))

(declare-fun m!551111 () Bool)

(assert (=> b!371693 m!551111))

(declare-fun m!551113 () Bool)

(assert (=> b!371693 m!551113))

(declare-fun m!551115 () Bool)

(assert (=> b!371693 m!551115))

(assert (=> b!371693 m!551067))

(declare-fun m!551117 () Bool)

(assert (=> b!371693 m!551117))

(declare-fun m!551119 () Bool)

(assert (=> b!371693 m!551119))

(assert (=> b!371693 m!551061))

(declare-fun m!551121 () Bool)

(assert (=> b!371693 m!551121))

(declare-fun m!551123 () Bool)

(assert (=> b!371693 m!551123))

(declare-fun m!551125 () Bool)

(assert (=> b!371693 m!551125))

(declare-fun m!551127 () Bool)

(assert (=> b!371693 m!551127))

(declare-fun m!551129 () Bool)

(assert (=> b!371693 m!551129))

(declare-fun m!551131 () Bool)

(assert (=> b!371693 m!551131))

(declare-fun m!551133 () Bool)

(assert (=> b!371693 m!551133))

(declare-fun m!551135 () Bool)

(assert (=> b!371693 m!551135))

(assert (=> b!371693 m!551127))

(assert (=> b!371693 m!551079))

(declare-fun m!551137 () Bool)

(assert (=> b!371693 m!551137))

(declare-fun m!551139 () Bool)

(assert (=> b!371704 m!551139))

(declare-fun m!551141 () Bool)

(assert (=> b!371691 m!551141))

(declare-fun m!551143 () Bool)

(assert (=> b!371691 m!551143))

(declare-fun m!551145 () Bool)

(assert (=> b!371726 m!551145))

(declare-fun m!551147 () Bool)

(assert (=> b!371688 m!551147))

(declare-fun m!551149 () Bool)

(assert (=> b!371708 m!551149))

(assert (=> b!371708 m!551149))

(declare-fun m!551151 () Bool)

(assert (=> b!371708 m!551151))

(declare-fun m!551153 () Bool)

(assert (=> b!371708 m!551153))

(declare-fun m!551155 () Bool)

(assert (=> b!371729 m!551155))

(declare-fun m!551157 () Bool)

(assert (=> b!371706 m!551157))

(declare-fun m!551159 () Bool)

(assert (=> b!371706 m!551159))

(declare-fun m!551161 () Bool)

(assert (=> b!371722 m!551161))

(declare-fun m!551163 () Bool)

(assert (=> b!371707 m!551163))

(declare-fun m!551165 () Bool)

(assert (=> b!371707 m!551165))

(declare-fun m!551167 () Bool)

(assert (=> b!371712 m!551167))

(declare-fun m!551169 () Bool)

(assert (=> b!371727 m!551169))

(assert (=> b!371727 m!551169))

(declare-fun m!551171 () Bool)

(assert (=> b!371727 m!551171))

(assert (=> b!371727 m!551171))

(declare-fun m!551173 () Bool)

(assert (=> b!371727 m!551173))

(declare-fun m!551175 () Bool)

(assert (=> b!371727 m!551175))

(declare-fun m!551177 () Bool)

(assert (=> b!371686 m!551177))

(declare-fun m!551179 () Bool)

(assert (=> b!371714 m!551179))

(declare-fun m!551181 () Bool)

(assert (=> b!371714 m!551181))

(declare-fun m!551183 () Bool)

(assert (=> b!371690 m!551183))

(declare-fun m!551185 () Bool)

(assert (=> b!371687 m!551185))

(declare-fun m!551187 () Bool)

(assert (=> b!371687 m!551187))

(declare-fun m!551189 () Bool)

(assert (=> b!371731 m!551189))

(declare-fun m!551191 () Bool)

(assert (=> b!371731 m!551191))

(declare-fun m!551193 () Bool)

(assert (=> b!371703 m!551193))

(declare-fun m!551195 () Bool)

(assert (=> b!371703 m!551195))

(declare-fun m!551197 () Bool)

(assert (=> b!371703 m!551197))

(declare-fun m!551199 () Bool)

(assert (=> b!371703 m!551199))

(declare-fun m!551201 () Bool)

(assert (=> b!371703 m!551201))

(declare-fun m!551203 () Bool)

(assert (=> b!371730 m!551203))

(assert (=> b!371730 m!551203))

(declare-fun m!551205 () Bool)

(assert (=> b!371730 m!551205))

(declare-fun m!551207 () Bool)

(assert (=> b!371710 m!551207))

(declare-fun m!551209 () Bool)

(assert (=> b!371717 m!551209))

(declare-fun m!551211 () Bool)

(assert (=> b!371699 m!551211))

(declare-fun m!551213 () Bool)

(assert (=> b!371699 m!551213))

(declare-fun m!551215 () Bool)

(assert (=> b!371699 m!551215))

(declare-fun m!551217 () Bool)

(assert (=> b!371692 m!551217))

(declare-fun m!551219 () Bool)

(assert (=> b!371721 m!551219))

(assert (=> b!371721 m!551219))

(declare-fun m!551221 () Bool)

(assert (=> b!371721 m!551221))

(declare-fun m!551223 () Bool)

(assert (=> b!371721 m!551223))

(declare-fun m!551225 () Bool)

(assert (=> b!371711 m!551225))

(declare-fun m!551227 () Bool)

(assert (=> b!371702 m!551227))

(declare-fun m!551229 () Bool)

(assert (=> b!371718 m!551229))

(check-sat b_and!37385 (not b!371721) (not b!371740) (not b!371706) (not b_next!11577) (not b!371707) b_and!37383 (not b!371712) (not b!371719) (not b!371691) (not b!371730) (not b!371694) (not b!371704) (not b!371692) (not b!371722) (not b!371728) b_and!37389 (not b!371718) (not b!371716) (not b!371703) (not start!36930) (not b_next!11571) (not b!371702) b_and!37381 (not b!371688) (not b!371708) (not b!371687) (not b!371717) (not b_next!11575) (not b!371714) (not b!371686) (not b!371690) (not b!371699) b_and!37391 (not b!371711) (not b!371710) (not b!371731) b_and!37387 (not b!371727) (not b_next!11579) (not b!371693) (not b!371701) (not b!371729) (not b_next!11573) (not b!371697) (not b!371695) (not b!371726) (not b_next!11569))
(check-sat b_and!37383 b_and!37389 b_and!37385 (not b_next!11575) b_and!37391 b_and!37387 (not b_next!11579) (not b_next!11577) (not b_next!11573) (not b_next!11569) (not b_next!11571) b_and!37381)
