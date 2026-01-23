; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75934 () Bool)

(assert start!75934)

(declare-fun b!849645 () Bool)

(declare-fun b_free!25649 () Bool)

(declare-fun b_next!25713 () Bool)

(assert (=> b!849645 (= b_free!25649 (not b_next!25713))))

(declare-fun tp!267575 () Bool)

(declare-fun b_and!74341 () Bool)

(assert (=> b!849645 (= tp!267575 b_and!74341)))

(declare-fun b_free!25651 () Bool)

(declare-fun b_next!25715 () Bool)

(assert (=> b!849645 (= b_free!25651 (not b_next!25715))))

(declare-fun tp!267578 () Bool)

(declare-fun b_and!74343 () Bool)

(assert (=> b!849645 (= tp!267578 b_and!74343)))

(declare-fun b!849665 () Bool)

(declare-fun b_free!25653 () Bool)

(declare-fun b_next!25717 () Bool)

(assert (=> b!849665 (= b_free!25653 (not b_next!25717))))

(declare-fun tp!267581 () Bool)

(declare-fun b_and!74345 () Bool)

(assert (=> b!849665 (= tp!267581 b_and!74345)))

(declare-fun b_free!25655 () Bool)

(declare-fun b_next!25719 () Bool)

(assert (=> b!849665 (= b_free!25655 (not b_next!25719))))

(declare-fun tp!267573 () Bool)

(declare-fun b_and!74347 () Bool)

(assert (=> b!849665 (= tp!267573 b_and!74347)))

(declare-fun b!849659 () Bool)

(declare-fun b_free!25657 () Bool)

(declare-fun b_next!25721 () Bool)

(assert (=> b!849659 (= b_free!25657 (not b_next!25721))))

(declare-fun tp!267584 () Bool)

(declare-fun b_and!74349 () Bool)

(assert (=> b!849659 (= tp!267584 b_and!74349)))

(declare-fun b_free!25659 () Bool)

(declare-fun b_next!25723 () Bool)

(assert (=> b!849659 (= b_free!25659 (not b_next!25723))))

(declare-fun tp!267583 () Bool)

(declare-fun b_and!74351 () Bool)

(assert (=> b!849659 (= tp!267583 b_and!74351)))

(declare-fun b!849641 () Bool)

(declare-fun e!559160 () Bool)

(declare-fun tp!267572 () Bool)

(declare-datatypes ((List!9184 0))(
  ( (Nil!9168) (Cons!9168 (h!14569 (_ BitVec 16)) (t!95234 List!9184)) )
))
(declare-datatypes ((TokenValue!1786 0))(
  ( (FloatLiteralValue!3572 (text!12947 List!9184)) (TokenValueExt!1785 (__x!7303 Int)) (Broken!8930 (value!55693 List!9184)) (Object!1801) (End!1786) (Def!1786) (Underscore!1786) (Match!1786) (Else!1786) (Error!1786) (Case!1786) (If!1786) (Extends!1786) (Abstract!1786) (Class!1786) (Val!1786) (DelimiterValue!3572 (del!1846 List!9184)) (KeywordValue!1792 (value!55694 List!9184)) (CommentValue!3572 (value!55695 List!9184)) (WhitespaceValue!3572 (value!55696 List!9184)) (IndentationValue!1786 (value!55697 List!9184)) (String!10827) (Int32!1786) (Broken!8931 (value!55698 List!9184)) (Boolean!1787) (Unit!13652) (OperatorValue!1789 (op!1846 List!9184)) (IdentifierValue!3572 (value!55699 List!9184)) (IdentifierValue!3573 (value!55700 List!9184)) (WhitespaceValue!3573 (value!55701 List!9184)) (True!3572) (False!3572) (Broken!8932 (value!55702 List!9184)) (Broken!8933 (value!55703 List!9184)) (True!3573) (RightBrace!1786) (RightBracket!1786) (Colon!1786) (Null!1786) (Comma!1786) (LeftBracket!1786) (False!3573) (LeftBrace!1786) (ImaginaryLiteralValue!1786 (text!12948 List!9184)) (StringLiteralValue!5358 (value!55704 List!9184)) (EOFValue!1786 (value!55705 List!9184)) (IdentValue!1786 (value!55706 List!9184)) (DelimiterValue!3573 (value!55707 List!9184)) (DedentValue!1786 (value!55708 List!9184)) (NewLineValue!1786 (value!55709 List!9184)) (IntegerValue!5358 (value!55710 (_ BitVec 32)) (text!12949 List!9184)) (IntegerValue!5359 (value!55711 Int) (text!12950 List!9184)) (Times!1786) (Or!1786) (Equal!1786) (Minus!1786) (Broken!8934 (value!55712 List!9184)) (And!1786) (Div!1786) (LessEqual!1786) (Mod!1786) (Concat!3939) (Not!1786) (Plus!1786) (SpaceValue!1786 (value!55713 List!9184)) (IntegerValue!5360 (value!55714 Int) (text!12951 List!9184)) (StringLiteralValue!5359 (text!12952 List!9184)) (FloatLiteralValue!3573 (text!12953 List!9184)) (BytesLiteralValue!1786 (value!55715 List!9184)) (CommentValue!3573 (value!55716 List!9184)) (StringLiteralValue!5360 (value!55717 List!9184)) (ErrorTokenValue!1786 (msg!1847 List!9184)) )
))
(declare-datatypes ((C!4876 0))(
  ( (C!4877 (val!2686 Int)) )
))
(declare-datatypes ((Regex!2153 0))(
  ( (ElementMatch!2153 (c!137982 C!4876)) (Concat!3940 (regOne!4818 Regex!2153) (regTwo!4818 Regex!2153)) (EmptyExpr!2153) (Star!2153 (reg!2482 Regex!2153)) (EmptyLang!2153) (Union!2153 (regOne!4819 Regex!2153) (regTwo!4819 Regex!2153)) )
))
(declare-datatypes ((String!10828 0))(
  ( (String!10829 (value!55718 String)) )
))
(declare-datatypes ((List!9185 0))(
  ( (Nil!9169) (Cons!9169 (h!14570 C!4876) (t!95235 List!9185)) )
))
(declare-datatypes ((IArray!6081 0))(
  ( (IArray!6082 (innerList!3098 List!9185)) )
))
(declare-datatypes ((Conc!3038 0))(
  ( (Node!3038 (left!6783 Conc!3038) (right!7113 Conc!3038) (csize!6306 Int) (cheight!3249 Int)) (Leaf!4486 (xs!5727 IArray!6081) (csize!6307 Int)) (Empty!3038) )
))
(declare-datatypes ((BalanceConc!6090 0))(
  ( (BalanceConc!6091 (c!137983 Conc!3038)) )
))
(declare-datatypes ((TokenValueInjection!3272 0))(
  ( (TokenValueInjection!3273 (toValue!2753 Int) (toChars!2612 Int)) )
))
(declare-datatypes ((Rule!3240 0))(
  ( (Rule!3241 (regex!1720 Regex!2153) (tag!1982 String!10828) (isSeparator!1720 Bool) (transformation!1720 TokenValueInjection!3272)) )
))
(declare-datatypes ((Token!3106 0))(
  ( (Token!3107 (value!55719 TokenValue!1786) (rule!3143 Rule!3240) (size!7637 Int) (originalCharacters!2276 List!9185)) )
))
(declare-datatypes ((List!9186 0))(
  ( (Nil!9170) (Cons!9170 (h!14571 Token!3106) (t!95236 List!9186)) )
))
(declare-fun l!5107 () List!9186)

(declare-fun e!559170 () Bool)

(declare-fun inv!11651 (Token!3106) Bool)

(assert (=> b!849641 (= e!559170 (and (inv!11651 (h!14571 l!5107)) e!559160 tp!267572))))

(declare-fun b!849642 () Bool)

(declare-fun e!559173 () Bool)

(declare-fun e!559172 () Bool)

(assert (=> b!849642 (= e!559173 e!559172)))

(declare-fun res!388382 () Bool)

(assert (=> b!849642 (=> res!388382 e!559172)))

(declare-fun lt!321979 () List!9186)

(declare-fun isEmpty!5416 (List!9186) Bool)

(assert (=> b!849642 (= res!388382 (isEmpty!5416 (t!95236 (t!95236 lt!321979))))))

(declare-fun e!559167 () Bool)

(assert (=> b!849642 e!559167))

(declare-fun res!388383 () Bool)

(assert (=> b!849642 (=> (not res!388383) (not e!559167))))

(declare-fun lt!321975 () List!9186)

(declare-datatypes ((List!9187 0))(
  ( (Nil!9171) (Cons!9171 (h!14572 Rule!3240) (t!95237 List!9187)) )
))
(declare-fun rules!2621 () List!9187)

(declare-datatypes ((LexerInterface!1522 0))(
  ( (LexerInterfaceExt!1519 (__x!7304 Int)) (Lexer!1520) )
))
(declare-fun thiss!20117 () LexerInterface!1522)

(declare-fun rulesProduceEachTokenIndividuallyList!410 (LexerInterface!1522 List!9187 List!9186) Bool)

(assert (=> b!849642 (= res!388383 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321975))))

(declare-datatypes ((Unit!13653 0))(
  ( (Unit!13654) )
))
(declare-fun lt!321973 () Unit!13653)

(declare-fun separatorToken!297 () Token!3106)

(declare-fun lt!321981 () List!9186)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!52 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> b!849642 (= lt!321973 (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(declare-fun lt!321977 () Unit!13653)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!28 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> b!849642 (= lt!321977 (printWithSeparatorTokenImpliesSeparableTokensList!28 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(declare-fun separableTokensPredicate!62 (LexerInterface!1522 Token!3106 Token!3106 List!9187) Bool)

(assert (=> b!849642 (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621)))

(declare-fun lt!321980 () Unit!13653)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!44 (LexerInterface!1522 Token!3106 Token!3106 List!9187) Unit!13653)

(assert (=> b!849642 (= lt!321980 (lemmaTokensOfDifferentKindsAreSeparable!44 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621))))

(declare-fun b!849644 () Bool)

(declare-fun res!388375 () Bool)

(declare-fun e!559162 () Bool)

(assert (=> b!849644 (=> (not res!388375) (not e!559162))))

(assert (=> b!849644 (= res!388375 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 l!5107))))

(declare-fun e!559156 () Bool)

(assert (=> b!849645 (= e!559156 (and tp!267575 tp!267578))))

(declare-fun b!849646 () Bool)

(declare-fun res!388384 () Bool)

(assert (=> b!849646 (=> res!388384 e!559173)))

(assert (=> b!849646 (= res!388384 (not (= (h!14571 (t!95236 lt!321979)) separatorToken!297)))))

(declare-fun b!849647 () Bool)

(declare-fun res!388376 () Bool)

(assert (=> b!849647 (=> (not res!388376) (not e!559162))))

(declare-fun lambda!25358 () Int)

(declare-fun forall!2155 (List!9186 Int) Bool)

(assert (=> b!849647 (= res!388376 (forall!2155 l!5107 lambda!25358))))

(declare-fun b!849648 () Bool)

(declare-fun res!388386 () Bool)

(assert (=> b!849648 (=> (not res!388386) (not e!559162))))

(declare-fun rulesInvariant!1398 (LexerInterface!1522 List!9187) Bool)

(assert (=> b!849648 (= res!388386 (rulesInvariant!1398 thiss!20117 rules!2621))))

(declare-fun b!849649 () Bool)

(declare-fun tp!267580 () Bool)

(declare-fun e!559158 () Bool)

(declare-fun inv!21 (TokenValue!1786) Bool)

(assert (=> b!849649 (= e!559160 (and (inv!21 (value!55719 (h!14571 l!5107))) e!559158 tp!267580))))

(declare-fun b!849650 () Bool)

(declare-fun res!388387 () Bool)

(assert (=> b!849650 (=> (not res!388387) (not e!559162))))

(declare-fun rulesProduceIndividualToken!586 (LexerInterface!1522 List!9187 Token!3106) Bool)

(assert (=> b!849650 (= res!388387 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!849651 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!44 (LexerInterface!1522 List!9186 List!9187) Bool)

(assert (=> b!849651 (= e!559167 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 lt!321975 rules!2621))))

(declare-fun e!559164 () Bool)

(declare-fun tp!267577 () Bool)

(declare-fun b!849652 () Bool)

(declare-fun inv!11648 (String!10828) Bool)

(declare-fun inv!11652 (TokenValueInjection!3272) Bool)

(assert (=> b!849652 (= e!559158 (and tp!267577 (inv!11648 (tag!1982 (rule!3143 (h!14571 l!5107)))) (inv!11652 (transformation!1720 (rule!3143 (h!14571 l!5107)))) e!559164))))

(declare-fun tp!267576 () Bool)

(declare-fun e!559157 () Bool)

(declare-fun b!849653 () Bool)

(declare-fun e!559169 () Bool)

(assert (=> b!849653 (= e!559157 (and tp!267576 (inv!11648 (tag!1982 (h!14572 rules!2621))) (inv!11652 (transformation!1720 (h!14572 rules!2621))) e!559169))))

(declare-fun b!849654 () Bool)

(declare-fun e!559161 () Bool)

(declare-datatypes ((IArray!6083 0))(
  ( (IArray!6084 (innerList!3099 List!9186)) )
))
(declare-datatypes ((Conc!3039 0))(
  ( (Node!3039 (left!6784 Conc!3039) (right!7114 Conc!3039) (csize!6308 Int) (cheight!3250 Int)) (Leaf!4487 (xs!5728 IArray!6083) (csize!6309 Int)) (Empty!3039) )
))
(declare-datatypes ((BalanceConc!6092 0))(
  ( (BalanceConc!6093 (c!137984 Conc!3039)) )
))
(declare-fun rulesProduceEachTokenIndividually!609 (LexerInterface!1522 List!9187 BalanceConc!6092) Bool)

(declare-fun seqFromList!1524 (List!9186) BalanceConc!6092)

(assert (=> b!849654 (= e!559161 (rulesProduceEachTokenIndividually!609 thiss!20117 rules!2621 (seqFromList!1524 lt!321979)))))

(declare-fun b!849655 () Bool)

(declare-fun res!388379 () Bool)

(assert (=> b!849655 (=> (not res!388379) (not e!559162))))

(assert (=> b!849655 (= res!388379 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(declare-fun res!388388 () Bool)

(assert (=> start!75934 (=> (not res!388388) (not e!559162))))

(get-info :version)

(assert (=> start!75934 (= res!388388 ((_ is Lexer!1520) thiss!20117))))

(assert (=> start!75934 e!559162))

(assert (=> start!75934 true))

(declare-fun e!559155 () Bool)

(assert (=> start!75934 e!559155))

(assert (=> start!75934 e!559170))

(declare-fun e!559168 () Bool)

(assert (=> start!75934 (and (inv!11651 separatorToken!297) e!559168)))

(declare-fun e!559163 () Bool)

(declare-fun b!849643 () Bool)

(declare-fun tp!267579 () Bool)

(assert (=> b!849643 (= e!559168 (and (inv!21 (value!55719 separatorToken!297)) e!559163 tp!267579))))

(declare-fun b!849656 () Bool)

(declare-fun e!559166 () Bool)

(assert (=> b!849656 (= e!559166 e!559173)))

(declare-fun res!388378 () Bool)

(assert (=> b!849656 (=> res!388378 e!559173)))

(assert (=> b!849656 (= res!388378 (not (= (t!95236 (t!95236 lt!321979)) lt!321975)))))

(declare-fun withSeparatorTokenList!52 (LexerInterface!1522 List!9186 Token!3106) List!9186)

(assert (=> b!849656 (= lt!321975 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))

(declare-fun tail!1038 (List!9186) List!9186)

(assert (=> b!849656 (= lt!321981 (tail!1038 l!5107))))

(declare-fun b!849657 () Bool)

(assert (=> b!849657 (= e!559172 e!559161)))

(declare-fun res!388377 () Bool)

(assert (=> b!849657 (=> res!388377 e!559161)))

(assert (=> b!849657 (= res!388377 (not (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 lt!321979 rules!2621)))))

(declare-fun lt!321974 () Token!3106)

(assert (=> b!849657 (separableTokensPredicate!62 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621)))

(declare-fun lt!321976 () Unit!13653)

(assert (=> b!849657 (= lt!321976 (lemmaTokensOfDifferentKindsAreSeparable!44 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621))))

(declare-fun head!1480 (List!9186) Token!3106)

(assert (=> b!849657 (= lt!321974 (head!1480 (t!95236 (t!95236 lt!321979))))))

(declare-fun b!849658 () Bool)

(declare-fun res!388374 () Bool)

(assert (=> b!849658 (=> (not res!388374) (not e!559162))))

(declare-fun isEmpty!5417 (List!9187) Bool)

(assert (=> b!849658 (= res!388374 (not (isEmpty!5417 rules!2621)))))

(assert (=> b!849659 (= e!559164 (and tp!267584 tp!267583))))

(declare-fun b!849660 () Bool)

(assert (=> b!849660 (= e!559162 (not e!559166))))

(declare-fun res!388385 () Bool)

(assert (=> b!849660 (=> res!388385 e!559166)))

(assert (=> b!849660 (= res!388385 (or (not ((_ is Cons!9170) lt!321979)) (not ((_ is Cons!9170) (t!95236 lt!321979)))))))

(assert (=> b!849660 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321979)))

(assert (=> b!849660 (= lt!321979 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!321978 () Unit!13653)

(assert (=> b!849660 (= lt!321978 (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!267574 () Bool)

(declare-fun b!849661 () Bool)

(assert (=> b!849661 (= e!559163 (and tp!267574 (inv!11648 (tag!1982 (rule!3143 separatorToken!297))) (inv!11652 (transformation!1720 (rule!3143 separatorToken!297))) e!559156))))

(declare-fun b!849662 () Bool)

(declare-fun res!388380 () Bool)

(assert (=> b!849662 (=> res!388380 e!559173)))

(assert (=> b!849662 (= res!388380 (not (= (head!1480 l!5107) (h!14571 lt!321979))))))

(declare-fun b!849663 () Bool)

(declare-fun res!388381 () Bool)

(assert (=> b!849663 (=> (not res!388381) (not e!559162))))

(declare-fun sepAndNonSepRulesDisjointChars!520 (List!9187 List!9187) Bool)

(assert (=> b!849663 (= res!388381 (sepAndNonSepRulesDisjointChars!520 rules!2621 rules!2621))))

(declare-fun b!849664 () Bool)

(declare-fun tp!267582 () Bool)

(assert (=> b!849664 (= e!559155 (and e!559157 tp!267582))))

(assert (=> b!849665 (= e!559169 (and tp!267581 tp!267573))))

(assert (= (and start!75934 res!388388) b!849658))

(assert (= (and b!849658 res!388374) b!849648))

(assert (= (and b!849648 res!388386) b!849644))

(assert (= (and b!849644 res!388375) b!849650))

(assert (= (and b!849650 res!388387) b!849655))

(assert (= (and b!849655 res!388379) b!849647))

(assert (= (and b!849647 res!388376) b!849663))

(assert (= (and b!849663 res!388381) b!849660))

(assert (= (and b!849660 (not res!388385)) b!849656))

(assert (= (and b!849656 (not res!388378)) b!849662))

(assert (= (and b!849662 (not res!388380)) b!849646))

(assert (= (and b!849646 (not res!388384)) b!849642))

(assert (= (and b!849642 res!388383) b!849651))

(assert (= (and b!849642 (not res!388382)) b!849657))

(assert (= (and b!849657 (not res!388377)) b!849654))

(assert (= b!849653 b!849665))

(assert (= b!849664 b!849653))

(assert (= (and start!75934 ((_ is Cons!9171) rules!2621)) b!849664))

(assert (= b!849652 b!849659))

(assert (= b!849649 b!849652))

(assert (= b!849641 b!849649))

(assert (= (and start!75934 ((_ is Cons!9170) l!5107)) b!849641))

(assert (= b!849661 b!849645))

(assert (= b!849643 b!849661))

(assert (= start!75934 b!849643))

(declare-fun m!1087439 () Bool)

(assert (=> b!849658 m!1087439))

(declare-fun m!1087441 () Bool)

(assert (=> b!849648 m!1087441))

(declare-fun m!1087443 () Bool)

(assert (=> b!849642 m!1087443))

(declare-fun m!1087445 () Bool)

(assert (=> b!849642 m!1087445))

(declare-fun m!1087447 () Bool)

(assert (=> b!849642 m!1087447))

(declare-fun m!1087449 () Bool)

(assert (=> b!849642 m!1087449))

(declare-fun m!1087451 () Bool)

(assert (=> b!849642 m!1087451))

(declare-fun m!1087453 () Bool)

(assert (=> b!849642 m!1087453))

(declare-fun m!1087455 () Bool)

(assert (=> b!849663 m!1087455))

(declare-fun m!1087457 () Bool)

(assert (=> b!849647 m!1087457))

(declare-fun m!1087459 () Bool)

(assert (=> b!849662 m!1087459))

(declare-fun m!1087461 () Bool)

(assert (=> b!849661 m!1087461))

(declare-fun m!1087463 () Bool)

(assert (=> b!849661 m!1087463))

(declare-fun m!1087465 () Bool)

(assert (=> b!849660 m!1087465))

(declare-fun m!1087467 () Bool)

(assert (=> b!849660 m!1087467))

(declare-fun m!1087469 () Bool)

(assert (=> b!849660 m!1087469))

(declare-fun m!1087471 () Bool)

(assert (=> b!849656 m!1087471))

(declare-fun m!1087473 () Bool)

(assert (=> b!849656 m!1087473))

(declare-fun m!1087475 () Bool)

(assert (=> b!849641 m!1087475))

(declare-fun m!1087477 () Bool)

(assert (=> b!849643 m!1087477))

(declare-fun m!1087479 () Bool)

(assert (=> b!849649 m!1087479))

(declare-fun m!1087481 () Bool)

(assert (=> b!849657 m!1087481))

(declare-fun m!1087483 () Bool)

(assert (=> b!849657 m!1087483))

(declare-fun m!1087485 () Bool)

(assert (=> b!849657 m!1087485))

(declare-fun m!1087487 () Bool)

(assert (=> b!849657 m!1087487))

(declare-fun m!1087489 () Bool)

(assert (=> b!849654 m!1087489))

(assert (=> b!849654 m!1087489))

(declare-fun m!1087491 () Bool)

(assert (=> b!849654 m!1087491))

(declare-fun m!1087493 () Bool)

(assert (=> b!849650 m!1087493))

(declare-fun m!1087495 () Bool)

(assert (=> b!849652 m!1087495))

(declare-fun m!1087497 () Bool)

(assert (=> b!849652 m!1087497))

(declare-fun m!1087499 () Bool)

(assert (=> start!75934 m!1087499))

(declare-fun m!1087501 () Bool)

(assert (=> b!849644 m!1087501))

(declare-fun m!1087503 () Bool)

(assert (=> b!849651 m!1087503))

(declare-fun m!1087505 () Bool)

(assert (=> b!849653 m!1087505))

(declare-fun m!1087507 () Bool)

(assert (=> b!849653 m!1087507))

(check-sat (not b_next!25721) b_and!74345 (not b!849654) (not b!849644) (not b!849656) b_and!74351 (not b!849651) b_and!74347 (not b!849643) (not b!849649) (not b_next!25717) (not b!849652) (not b!849641) (not b!849650) (not start!75934) b_and!74341 (not b_next!25715) (not b!849647) (not b!849660) b_and!74349 (not b!849663) (not b!849657) (not b!849661) (not b!849658) (not b!849653) (not b!849648) b_and!74343 (not b_next!25713) (not b_next!25723) (not b!849642) (not b_next!25719) (not b!849662) (not b!849664))
(check-sat (not b_next!25721) b_and!74345 b_and!74349 b_and!74351 b_and!74347 (not b_next!25717) b_and!74341 (not b_next!25715) b_and!74343 (not b_next!25713) (not b_next!25723) (not b_next!25719))
(get-model)

(declare-fun bs!230969 () Bool)

(declare-fun d!264934 () Bool)

(assert (= bs!230969 (and d!264934 b!849647)))

(declare-fun lambda!25363 () Int)

(assert (=> bs!230969 (not (= lambda!25363 lambda!25358))))

(declare-fun b!849689 () Bool)

(declare-fun e!559197 () Bool)

(assert (=> b!849689 (= e!559197 true)))

(declare-fun b!849688 () Bool)

(declare-fun e!559196 () Bool)

(assert (=> b!849688 (= e!559196 e!559197)))

(declare-fun b!849687 () Bool)

(declare-fun e!559195 () Bool)

(assert (=> b!849687 (= e!559195 e!559196)))

(assert (=> d!264934 e!559195))

(assert (= b!849688 b!849689))

(assert (= b!849687 b!849688))

(assert (= (and d!264934 ((_ is Cons!9171) rules!2621)) b!849687))

(declare-fun order!5857 () Int)

(declare-fun order!5859 () Int)

(declare-fun dynLambda!4263 (Int Int) Int)

(declare-fun dynLambda!4264 (Int Int) Int)

(assert (=> b!849689 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25363))))

(declare-fun order!5861 () Int)

(declare-fun dynLambda!4265 (Int Int) Int)

(assert (=> b!849689 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25363))))

(assert (=> d!264934 true))

(declare-fun e!559188 () Bool)

(assert (=> d!264934 e!559188))

(declare-fun res!388408 () Bool)

(assert (=> d!264934 (=> (not res!388408) (not e!559188))))

(declare-fun lt!322013 () Bool)

(declare-fun list!3597 (BalanceConc!6092) List!9186)

(assert (=> d!264934 (= res!388408 (= lt!322013 (forall!2155 (list!3597 (seqFromList!1524 lt!321979)) lambda!25363)))))

(declare-fun forall!2157 (BalanceConc!6092 Int) Bool)

(assert (=> d!264934 (= lt!322013 (forall!2157 (seqFromList!1524 lt!321979) lambda!25363))))

(assert (=> d!264934 (not (isEmpty!5417 rules!2621))))

(assert (=> d!264934 (= (rulesProduceEachTokenIndividually!609 thiss!20117 rules!2621 (seqFromList!1524 lt!321979)) lt!322013)))

(declare-fun b!849678 () Bool)

(assert (=> b!849678 (= e!559188 (= lt!322013 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (list!3597 (seqFromList!1524 lt!321979)))))))

(assert (= (and d!264934 res!388408) b!849678))

(assert (=> d!264934 m!1087489))

(declare-fun m!1087541 () Bool)

(assert (=> d!264934 m!1087541))

(assert (=> d!264934 m!1087541))

(declare-fun m!1087543 () Bool)

(assert (=> d!264934 m!1087543))

(assert (=> d!264934 m!1087489))

(declare-fun m!1087545 () Bool)

(assert (=> d!264934 m!1087545))

(assert (=> d!264934 m!1087439))

(assert (=> b!849678 m!1087489))

(assert (=> b!849678 m!1087541))

(assert (=> b!849678 m!1087541))

(declare-fun m!1087547 () Bool)

(assert (=> b!849678 m!1087547))

(assert (=> b!849654 d!264934))

(declare-fun d!264948 () Bool)

(declare-fun fromListB!671 (List!9186) BalanceConc!6092)

(assert (=> d!264948 (= (seqFromList!1524 lt!321979) (fromListB!671 lt!321979))))

(declare-fun bs!230970 () Bool)

(assert (= bs!230970 d!264948))

(declare-fun m!1087549 () Bool)

(assert (=> bs!230970 m!1087549))

(assert (=> b!849654 d!264948))

(declare-fun bs!230972 () Bool)

(declare-fun d!264950 () Bool)

(assert (= bs!230972 (and d!264950 b!849647)))

(declare-fun lambda!25369 () Int)

(assert (=> bs!230972 (not (= lambda!25369 lambda!25358))))

(declare-fun bs!230973 () Bool)

(assert (= bs!230973 (and d!264950 d!264934)))

(assert (=> bs!230973 (= lambda!25369 lambda!25363)))

(declare-fun b!849715 () Bool)

(declare-fun e!559217 () Bool)

(assert (=> b!849715 (= e!559217 true)))

(declare-fun b!849714 () Bool)

(declare-fun e!559216 () Bool)

(assert (=> b!849714 (= e!559216 e!559217)))

(declare-fun b!849713 () Bool)

(declare-fun e!559215 () Bool)

(assert (=> b!849713 (= e!559215 e!559216)))

(assert (=> d!264950 e!559215))

(assert (= b!849714 b!849715))

(assert (= b!849713 b!849714))

(assert (= (and d!264950 ((_ is Cons!9171) rules!2621)) b!849713))

(assert (=> b!849715 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25369))))

(assert (=> b!849715 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25369))))

(assert (=> d!264950 true))

(declare-fun lt!322017 () Bool)

(assert (=> d!264950 (= lt!322017 (forall!2155 l!5107 lambda!25369))))

(declare-fun e!559213 () Bool)

(assert (=> d!264950 (= lt!322017 e!559213)))

(declare-fun res!388416 () Bool)

(assert (=> d!264950 (=> res!388416 e!559213)))

(assert (=> d!264950 (= res!388416 (not ((_ is Cons!9170) l!5107)))))

(assert (=> d!264950 (not (isEmpty!5417 rules!2621))))

(assert (=> d!264950 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 l!5107) lt!322017)))

(declare-fun b!849711 () Bool)

(declare-fun e!559214 () Bool)

(assert (=> b!849711 (= e!559213 e!559214)))

(declare-fun res!388415 () Bool)

(assert (=> b!849711 (=> (not res!388415) (not e!559214))))

(assert (=> b!849711 (= res!388415 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 l!5107)))))

(declare-fun b!849712 () Bool)

(assert (=> b!849712 (= e!559214 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 l!5107)))))

(assert (= (and d!264950 (not res!388416)) b!849711))

(assert (= (and b!849711 res!388415) b!849712))

(declare-fun m!1087557 () Bool)

(assert (=> d!264950 m!1087557))

(assert (=> d!264950 m!1087439))

(declare-fun m!1087559 () Bool)

(assert (=> b!849711 m!1087559))

(declare-fun m!1087561 () Bool)

(assert (=> b!849712 m!1087561))

(assert (=> b!849644 d!264950))

(declare-fun d!264954 () Bool)

(assert (=> d!264954 (= (inv!11648 (tag!1982 (h!14572 rules!2621))) (= (mod (str.len (value!55718 (tag!1982 (h!14572 rules!2621)))) 2) 0))))

(assert (=> b!849653 d!264954))

(declare-fun d!264956 () Bool)

(declare-fun res!388419 () Bool)

(declare-fun e!559220 () Bool)

(assert (=> d!264956 (=> (not res!388419) (not e!559220))))

(declare-fun semiInverseModEq!668 (Int Int) Bool)

(assert (=> d!264956 (= res!388419 (semiInverseModEq!668 (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (h!14572 rules!2621)))))))

(assert (=> d!264956 (= (inv!11652 (transformation!1720 (h!14572 rules!2621))) e!559220)))

(declare-fun b!849718 () Bool)

(declare-fun equivClasses!635 (Int Int) Bool)

(assert (=> b!849718 (= e!559220 (equivClasses!635 (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (h!14572 rules!2621)))))))

(assert (= (and d!264956 res!388419) b!849718))

(declare-fun m!1087563 () Bool)

(assert (=> d!264956 m!1087563))

(declare-fun m!1087565 () Bool)

(assert (=> b!849718 m!1087565))

(assert (=> b!849653 d!264956))

(declare-fun bs!230974 () Bool)

(declare-fun d!264958 () Bool)

(assert (= bs!230974 (and d!264958 b!849647)))

(declare-fun lambda!25370 () Int)

(assert (=> bs!230974 (not (= lambda!25370 lambda!25358))))

(declare-fun bs!230975 () Bool)

(assert (= bs!230975 (and d!264958 d!264934)))

(assert (=> bs!230975 (= lambda!25370 lambda!25363)))

(declare-fun bs!230976 () Bool)

(assert (= bs!230976 (and d!264958 d!264950)))

(assert (=> bs!230976 (= lambda!25370 lambda!25369)))

(declare-fun b!849723 () Bool)

(declare-fun e!559225 () Bool)

(assert (=> b!849723 (= e!559225 true)))

(declare-fun b!849722 () Bool)

(declare-fun e!559224 () Bool)

(assert (=> b!849722 (= e!559224 e!559225)))

(declare-fun b!849721 () Bool)

(declare-fun e!559223 () Bool)

(assert (=> b!849721 (= e!559223 e!559224)))

(assert (=> d!264958 e!559223))

(assert (= b!849722 b!849723))

(assert (= b!849721 b!849722))

(assert (= (and d!264958 ((_ is Cons!9171) rules!2621)) b!849721))

(assert (=> b!849723 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25370))))

(assert (=> b!849723 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25370))))

(assert (=> d!264958 true))

(declare-fun lt!322018 () Bool)

(assert (=> d!264958 (= lt!322018 (forall!2155 lt!321975 lambda!25370))))

(declare-fun e!559221 () Bool)

(assert (=> d!264958 (= lt!322018 e!559221)))

(declare-fun res!388421 () Bool)

(assert (=> d!264958 (=> res!388421 e!559221)))

(assert (=> d!264958 (= res!388421 (not ((_ is Cons!9170) lt!321975)))))

(assert (=> d!264958 (not (isEmpty!5417 rules!2621))))

(assert (=> d!264958 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321975) lt!322018)))

(declare-fun b!849719 () Bool)

(declare-fun e!559222 () Bool)

(assert (=> b!849719 (= e!559221 e!559222)))

(declare-fun res!388420 () Bool)

(assert (=> b!849719 (=> (not res!388420) (not e!559222))))

(assert (=> b!849719 (= res!388420 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975)))))

(declare-fun b!849720 () Bool)

(assert (=> b!849720 (= e!559222 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 lt!321975)))))

(assert (= (and d!264958 (not res!388421)) b!849719))

(assert (= (and b!849719 res!388420) b!849720))

(declare-fun m!1087567 () Bool)

(assert (=> d!264958 m!1087567))

(assert (=> d!264958 m!1087439))

(declare-fun m!1087569 () Bool)

(assert (=> b!849719 m!1087569))

(declare-fun m!1087571 () Bool)

(assert (=> b!849720 m!1087571))

(assert (=> b!849642 d!264958))

(declare-fun b!849769 () Bool)

(declare-fun res!388453 () Bool)

(declare-fun e!559243 () Bool)

(assert (=> b!849769 (=> (not res!388453) (not e!559243))))

(assert (=> b!849769 (= res!388453 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321981))))

(declare-fun b!849770 () Bool)

(declare-fun res!388451 () Bool)

(assert (=> b!849770 (=> (not res!388451) (not e!559243))))

(assert (=> b!849770 (= res!388451 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!849771 () Bool)

(assert (=> b!849771 (= e!559243 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) rules!2621))))

(declare-fun lt!322035 () Unit!13653)

(declare-fun lt!322036 () Unit!13653)

(assert (=> b!849771 (= lt!322035 lt!322036)))

(assert (=> b!849771 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))

(assert (=> b!849771 (= lt!322036 (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(declare-fun b!849772 () Bool)

(declare-fun res!388454 () Bool)

(assert (=> b!849772 (=> (not res!388454) (not e!559243))))

(assert (=> b!849772 (= res!388454 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(declare-fun d!264960 () Bool)

(assert (=> d!264960 e!559243))

(declare-fun res!388452 () Bool)

(assert (=> d!264960 (=> (not res!388452) (not e!559243))))

(assert (=> d!264960 (= res!388452 ((_ is Lexer!1520) thiss!20117))))

(declare-fun lt!322037 () Unit!13653)

(declare-fun choose!5018 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> d!264960 (= lt!322037 (choose!5018 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(assert (=> d!264960 (not (isEmpty!5417 rules!2621))))

(assert (=> d!264960 (= (printWithSeparatorTokenImpliesSeparableTokensList!28 thiss!20117 rules!2621 lt!321981 separatorToken!297) lt!322037)))

(declare-fun b!849773 () Bool)

(declare-fun res!388455 () Bool)

(assert (=> b!849773 (=> (not res!388455) (not e!559243))))

(assert (=> b!849773 (= res!388455 (rulesInvariant!1398 thiss!20117 rules!2621))))

(assert (= (and d!264960 res!388452) b!849773))

(assert (= (and b!849773 res!388455) b!849769))

(assert (= (and b!849769 res!388453) b!849770))

(assert (= (and b!849770 res!388451) b!849772))

(assert (= (and b!849772 res!388454) b!849771))

(assert (=> b!849773 m!1087441))

(declare-fun m!1087603 () Bool)

(assert (=> b!849769 m!1087603))

(declare-fun m!1087605 () Bool)

(assert (=> d!264960 m!1087605))

(assert (=> d!264960 m!1087439))

(assert (=> b!849771 m!1087471))

(assert (=> b!849771 m!1087471))

(declare-fun m!1087607 () Bool)

(assert (=> b!849771 m!1087607))

(assert (=> b!849771 m!1087471))

(declare-fun m!1087609 () Bool)

(assert (=> b!849771 m!1087609))

(assert (=> b!849771 m!1087451))

(assert (=> b!849770 m!1087493))

(assert (=> b!849642 d!264960))

(declare-fun d!264974 () Bool)

(assert (=> d!264974 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))

(declare-fun lt!322068 () Unit!13653)

(declare-fun choose!5019 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> d!264974 (= lt!322068 (choose!5019 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(assert (=> d!264974 (not (isEmpty!5417 rules!2621))))

(assert (=> d!264974 (= (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 lt!321981 separatorToken!297) lt!322068)))

(declare-fun bs!230985 () Bool)

(assert (= bs!230985 d!264974))

(assert (=> bs!230985 m!1087471))

(assert (=> bs!230985 m!1087471))

(assert (=> bs!230985 m!1087609))

(declare-fun m!1087707 () Bool)

(assert (=> bs!230985 m!1087707))

(assert (=> bs!230985 m!1087439))

(assert (=> b!849642 d!264974))

(declare-fun d!264996 () Bool)

(declare-fun prefixMatchZipperSequence!31 (Regex!2153 BalanceConc!6090) Bool)

(declare-fun rulesRegex!22 (LexerInterface!1522 List!9187) Regex!2153)

(declare-fun ++!2375 (BalanceConc!6090 BalanceConc!6090) BalanceConc!6090)

(declare-fun charsOf!989 (Token!3106) BalanceConc!6090)

(declare-fun singletonSeq!536 (C!4876) BalanceConc!6090)

(declare-fun apply!1878 (BalanceConc!6090 Int) C!4876)

(assert (=> d!264996 (= (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621) (not (prefixMatchZipperSequence!31 (rulesRegex!22 thiss!20117 rules!2621) (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))))))

(declare-fun bs!230991 () Bool)

(assert (= bs!230991 d!264996))

(declare-fun m!1087795 () Bool)

(assert (=> bs!230991 m!1087795))

(declare-fun m!1087797 () Bool)

(assert (=> bs!230991 m!1087797))

(declare-fun m!1087799 () Bool)

(assert (=> bs!230991 m!1087799))

(declare-fun m!1087801 () Bool)

(assert (=> bs!230991 m!1087801))

(declare-fun m!1087803 () Bool)

(assert (=> bs!230991 m!1087803))

(declare-fun m!1087805 () Bool)

(assert (=> bs!230991 m!1087805))

(assert (=> bs!230991 m!1087795))

(declare-fun m!1087807 () Bool)

(assert (=> bs!230991 m!1087807))

(assert (=> bs!230991 m!1087797))

(assert (=> bs!230991 m!1087801))

(assert (=> bs!230991 m!1087799))

(assert (=> bs!230991 m!1087807))

(assert (=> bs!230991 m!1087805))

(assert (=> b!849642 d!264996))

(declare-fun d!265020 () Bool)

(assert (=> d!265020 (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621)))

(declare-fun lt!322088 () Unit!13653)

(declare-fun choose!5020 (LexerInterface!1522 Token!3106 Token!3106 List!9187) Unit!13653)

(assert (=> d!265020 (= lt!322088 (choose!5020 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621))))

(assert (=> d!265020 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265020 (= (lemmaTokensOfDifferentKindsAreSeparable!44 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621) lt!322088)))

(declare-fun bs!230992 () Bool)

(assert (= bs!230992 d!265020))

(assert (=> bs!230992 m!1087443))

(declare-fun m!1087809 () Bool)

(assert (=> bs!230992 m!1087809))

(assert (=> bs!230992 m!1087439))

(assert (=> b!849642 d!265020))

(declare-fun d!265022 () Bool)

(assert (=> d!265022 (= (isEmpty!5416 (t!95236 (t!95236 lt!321979))) ((_ is Nil!9170) (t!95236 (t!95236 lt!321979))))))

(assert (=> b!849642 d!265022))

(declare-fun d!265024 () Bool)

(declare-fun c!138010 () Bool)

(assert (=> d!265024 (= c!138010 ((_ is IntegerValue!5358) (value!55719 separatorToken!297)))))

(declare-fun e!559320 () Bool)

(assert (=> d!265024 (= (inv!21 (value!55719 separatorToken!297)) e!559320)))

(declare-fun b!849876 () Bool)

(declare-fun e!559322 () Bool)

(declare-fun inv!15 (TokenValue!1786) Bool)

(assert (=> b!849876 (= e!559322 (inv!15 (value!55719 separatorToken!297)))))

(declare-fun b!849877 () Bool)

(declare-fun e!559321 () Bool)

(declare-fun inv!17 (TokenValue!1786) Bool)

(assert (=> b!849877 (= e!559321 (inv!17 (value!55719 separatorToken!297)))))

(declare-fun b!849878 () Bool)

(declare-fun inv!16 (TokenValue!1786) Bool)

(assert (=> b!849878 (= e!559320 (inv!16 (value!55719 separatorToken!297)))))

(declare-fun b!849879 () Bool)

(assert (=> b!849879 (= e!559320 e!559321)))

(declare-fun c!138009 () Bool)

(assert (=> b!849879 (= c!138009 ((_ is IntegerValue!5359) (value!55719 separatorToken!297)))))

(declare-fun b!849880 () Bool)

(declare-fun res!388511 () Bool)

(assert (=> b!849880 (=> res!388511 e!559322)))

(assert (=> b!849880 (= res!388511 (not ((_ is IntegerValue!5360) (value!55719 separatorToken!297))))))

(assert (=> b!849880 (= e!559321 e!559322)))

(assert (= (and d!265024 c!138010) b!849878))

(assert (= (and d!265024 (not c!138010)) b!849879))

(assert (= (and b!849879 c!138009) b!849877))

(assert (= (and b!849879 (not c!138009)) b!849880))

(assert (= (and b!849880 (not res!388511)) b!849876))

(declare-fun m!1087811 () Bool)

(assert (=> b!849876 m!1087811))

(declare-fun m!1087813 () Bool)

(assert (=> b!849877 m!1087813))

(declare-fun m!1087815 () Bool)

(assert (=> b!849878 m!1087815))

(assert (=> b!849643 d!265024))

(declare-fun d!265026 () Bool)

(declare-fun res!388516 () Bool)

(declare-fun e!559325 () Bool)

(assert (=> d!265026 (=> (not res!388516) (not e!559325))))

(declare-fun isEmpty!5420 (List!9185) Bool)

(assert (=> d!265026 (= res!388516 (not (isEmpty!5420 (originalCharacters!2276 (h!14571 l!5107)))))))

(assert (=> d!265026 (= (inv!11651 (h!14571 l!5107)) e!559325)))

(declare-fun b!849885 () Bool)

(declare-fun res!388517 () Bool)

(assert (=> b!849885 (=> (not res!388517) (not e!559325))))

(declare-fun list!3598 (BalanceConc!6090) List!9185)

(declare-fun dynLambda!4266 (Int TokenValue!1786) BalanceConc!6090)

(assert (=> b!849885 (= res!388517 (= (originalCharacters!2276 (h!14571 l!5107)) (list!3598 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(declare-fun b!849886 () Bool)

(declare-fun size!7641 (List!9185) Int)

(assert (=> b!849886 (= e!559325 (= (size!7637 (h!14571 l!5107)) (size!7641 (originalCharacters!2276 (h!14571 l!5107)))))))

(assert (= (and d!265026 res!388516) b!849885))

(assert (= (and b!849885 res!388517) b!849886))

(declare-fun b_lambda!28241 () Bool)

(assert (=> (not b_lambda!28241) (not b!849885)))

(declare-fun t!95263 () Bool)

(declare-fun tb!59453 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95263) tb!59453))

(declare-fun b!849891 () Bool)

(declare-fun e!559328 () Bool)

(declare-fun tp!267591 () Bool)

(declare-fun inv!11655 (Conc!3038) Bool)

(assert (=> b!849891 (= e!559328 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))) tp!267591))))

(declare-fun result!68892 () Bool)

(declare-fun inv!11656 (BalanceConc!6090) Bool)

(assert (=> tb!59453 (= result!68892 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))) e!559328))))

(assert (= tb!59453 b!849891))

(declare-fun m!1087817 () Bool)

(assert (=> b!849891 m!1087817))

(declare-fun m!1087819 () Bool)

(assert (=> tb!59453 m!1087819))

(assert (=> b!849885 t!95263))

(declare-fun b_and!74365 () Bool)

(assert (= b_and!74343 (and (=> t!95263 result!68892) b_and!74365)))

(declare-fun tb!59455 () Bool)

(declare-fun t!95265 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95265) tb!59455))

(declare-fun result!68896 () Bool)

(assert (= result!68896 result!68892))

(assert (=> b!849885 t!95265))

(declare-fun b_and!74367 () Bool)

(assert (= b_and!74347 (and (=> t!95265 result!68896) b_and!74367)))

(declare-fun t!95267 () Bool)

(declare-fun tb!59457 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95267) tb!59457))

(declare-fun result!68898 () Bool)

(assert (= result!68898 result!68892))

(assert (=> b!849885 t!95267))

(declare-fun b_and!74369 () Bool)

(assert (= b_and!74351 (and (=> t!95267 result!68898) b_and!74369)))

(declare-fun m!1087821 () Bool)

(assert (=> d!265026 m!1087821))

(declare-fun m!1087823 () Bool)

(assert (=> b!849885 m!1087823))

(assert (=> b!849885 m!1087823))

(declare-fun m!1087825 () Bool)

(assert (=> b!849885 m!1087825))

(declare-fun m!1087827 () Bool)

(assert (=> b!849886 m!1087827))

(assert (=> b!849641 d!265026))

(declare-fun d!265028 () Bool)

(assert (=> d!265028 (= (head!1480 l!5107) (h!14571 l!5107))))

(assert (=> b!849662 d!265028))

(declare-fun d!265030 () Bool)

(declare-fun res!388518 () Bool)

(declare-fun e!559329 () Bool)

(assert (=> d!265030 (=> (not res!388518) (not e!559329))))

(assert (=> d!265030 (= res!388518 (not (isEmpty!5420 (originalCharacters!2276 separatorToken!297))))))

(assert (=> d!265030 (= (inv!11651 separatorToken!297) e!559329)))

(declare-fun b!849892 () Bool)

(declare-fun res!388519 () Bool)

(assert (=> b!849892 (=> (not res!388519) (not e!559329))))

(assert (=> b!849892 (= res!388519 (= (originalCharacters!2276 separatorToken!297) (list!3598 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(declare-fun b!849893 () Bool)

(assert (=> b!849893 (= e!559329 (= (size!7637 separatorToken!297) (size!7641 (originalCharacters!2276 separatorToken!297))))))

(assert (= (and d!265030 res!388518) b!849892))

(assert (= (and b!849892 res!388519) b!849893))

(declare-fun b_lambda!28243 () Bool)

(assert (=> (not b_lambda!28243) (not b!849892)))

(declare-fun t!95269 () Bool)

(declare-fun tb!59459 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95269) tb!59459))

(declare-fun b!849894 () Bool)

(declare-fun e!559330 () Bool)

(declare-fun tp!267592 () Bool)

(assert (=> b!849894 (= e!559330 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))) tp!267592))))

(declare-fun result!68900 () Bool)

(assert (=> tb!59459 (= result!68900 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))) e!559330))))

(assert (= tb!59459 b!849894))

(declare-fun m!1087829 () Bool)

(assert (=> b!849894 m!1087829))

(declare-fun m!1087831 () Bool)

(assert (=> tb!59459 m!1087831))

(assert (=> b!849892 t!95269))

(declare-fun b_and!74371 () Bool)

(assert (= b_and!74365 (and (=> t!95269 result!68900) b_and!74371)))

(declare-fun t!95271 () Bool)

(declare-fun tb!59461 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95271) tb!59461))

(declare-fun result!68902 () Bool)

(assert (= result!68902 result!68900))

(assert (=> b!849892 t!95271))

(declare-fun b_and!74373 () Bool)

(assert (= b_and!74367 (and (=> t!95271 result!68902) b_and!74373)))

(declare-fun t!95273 () Bool)

(declare-fun tb!59463 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95273) tb!59463))

(declare-fun result!68904 () Bool)

(assert (= result!68904 result!68900))

(assert (=> b!849892 t!95273))

(declare-fun b_and!74375 () Bool)

(assert (= b_and!74369 (and (=> t!95273 result!68904) b_and!74375)))

(declare-fun m!1087833 () Bool)

(assert (=> d!265030 m!1087833))

(declare-fun m!1087835 () Bool)

(assert (=> b!849892 m!1087835))

(assert (=> b!849892 m!1087835))

(declare-fun m!1087837 () Bool)

(assert (=> b!849892 m!1087837))

(declare-fun m!1087839 () Bool)

(assert (=> b!849893 m!1087839))

(assert (=> start!75934 d!265030))

(declare-fun d!265032 () Bool)

(declare-fun res!388524 () Bool)

(declare-fun e!559335 () Bool)

(assert (=> d!265032 (=> res!388524 e!559335)))

(assert (=> d!265032 (= res!388524 (not ((_ is Cons!9171) rules!2621)))))

(assert (=> d!265032 (= (sepAndNonSepRulesDisjointChars!520 rules!2621 rules!2621) e!559335)))

(declare-fun b!849899 () Bool)

(declare-fun e!559336 () Bool)

(assert (=> b!849899 (= e!559335 e!559336)))

(declare-fun res!388525 () Bool)

(assert (=> b!849899 (=> (not res!388525) (not e!559336))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!235 (Rule!3240 List!9187) Bool)

(assert (=> b!849899 (= res!388525 (ruleDisjointCharsFromAllFromOtherType!235 (h!14572 rules!2621) rules!2621))))

(declare-fun b!849900 () Bool)

(assert (=> b!849900 (= e!559336 (sepAndNonSepRulesDisjointChars!520 rules!2621 (t!95237 rules!2621)))))

(assert (= (and d!265032 (not res!388524)) b!849899))

(assert (= (and b!849899 res!388525) b!849900))

(declare-fun m!1087841 () Bool)

(assert (=> b!849899 m!1087841))

(declare-fun m!1087843 () Bool)

(assert (=> b!849900 m!1087843))

(assert (=> b!849663 d!265032))

(declare-fun d!265034 () Bool)

(assert (=> d!265034 (= (inv!11648 (tag!1982 (rule!3143 (h!14571 l!5107)))) (= (mod (str.len (value!55718 (tag!1982 (rule!3143 (h!14571 l!5107))))) 2) 0))))

(assert (=> b!849652 d!265034))

(declare-fun d!265036 () Bool)

(declare-fun res!388526 () Bool)

(declare-fun e!559337 () Bool)

(assert (=> d!265036 (=> (not res!388526) (not e!559337))))

(assert (=> d!265036 (= res!388526 (semiInverseModEq!668 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))))))

(assert (=> d!265036 (= (inv!11652 (transformation!1720 (rule!3143 (h!14571 l!5107)))) e!559337)))

(declare-fun b!849901 () Bool)

(assert (=> b!849901 (= e!559337 (equivClasses!635 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))))))

(assert (= (and d!265036 res!388526) b!849901))

(declare-fun m!1087845 () Bool)

(assert (=> d!265036 m!1087845))

(declare-fun m!1087847 () Bool)

(assert (=> b!849901 m!1087847))

(assert (=> b!849652 d!265036))

(declare-fun d!265038 () Bool)

(assert (=> d!265038 (= (inv!11648 (tag!1982 (rule!3143 separatorToken!297))) (= (mod (str.len (value!55718 (tag!1982 (rule!3143 separatorToken!297)))) 2) 0))))

(assert (=> b!849661 d!265038))

(declare-fun d!265040 () Bool)

(declare-fun res!388527 () Bool)

(declare-fun e!559338 () Bool)

(assert (=> d!265040 (=> (not res!388527) (not e!559338))))

(assert (=> d!265040 (= res!388527 (semiInverseModEq!668 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))))))

(assert (=> d!265040 (= (inv!11652 (transformation!1720 (rule!3143 separatorToken!297))) e!559338)))

(declare-fun b!849902 () Bool)

(assert (=> b!849902 (= e!559338 (equivClasses!635 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))))))

(assert (= (and d!265040 res!388527) b!849902))

(declare-fun m!1087849 () Bool)

(assert (=> d!265040 m!1087849))

(declare-fun m!1087851 () Bool)

(assert (=> b!849902 m!1087851))

(assert (=> b!849661 d!265040))

(declare-fun d!265042 () Bool)

(declare-fun lt!322099 () Bool)

(declare-fun e!559389 () Bool)

(assert (=> d!265042 (= lt!322099 e!559389)))

(declare-fun res!388545 () Bool)

(assert (=> d!265042 (=> (not res!388545) (not e!559389))))

(declare-datatypes ((tuple2!10372 0))(
  ( (tuple2!10373 (_1!6012 BalanceConc!6092) (_2!6012 BalanceConc!6090)) )
))
(declare-fun lex!616 (LexerInterface!1522 List!9187 BalanceConc!6090) tuple2!10372)

(declare-fun print!553 (LexerInterface!1522 BalanceConc!6092) BalanceConc!6090)

(declare-fun singletonSeq!537 (Token!3106) BalanceConc!6092)

(assert (=> d!265042 (= res!388545 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))) (list!3597 (singletonSeq!537 separatorToken!297))))))

(declare-fun e!559388 () Bool)

(assert (=> d!265042 (= lt!322099 e!559388)))

(declare-fun res!388543 () Bool)

(assert (=> d!265042 (=> (not res!388543) (not e!559388))))

(declare-fun lt!322100 () tuple2!10372)

(declare-fun size!7642 (BalanceConc!6092) Int)

(assert (=> d!265042 (= res!388543 (= (size!7642 (_1!6012 lt!322100)) 1))))

(assert (=> d!265042 (= lt!322100 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))))

(assert (=> d!265042 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265042 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 separatorToken!297) lt!322099)))

(declare-fun b!849971 () Bool)

(declare-fun res!388544 () Bool)

(assert (=> b!849971 (=> (not res!388544) (not e!559388))))

(declare-fun apply!1879 (BalanceConc!6092 Int) Token!3106)

(assert (=> b!849971 (= res!388544 (= (apply!1879 (_1!6012 lt!322100) 0) separatorToken!297))))

(declare-fun b!849972 () Bool)

(declare-fun isEmpty!5421 (BalanceConc!6090) Bool)

(assert (=> b!849972 (= e!559388 (isEmpty!5421 (_2!6012 lt!322100)))))

(declare-fun b!849973 () Bool)

(assert (=> b!849973 (= e!559389 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))))))

(assert (= (and d!265042 res!388543) b!849971))

(assert (= (and b!849971 res!388544) b!849972))

(assert (= (and d!265042 res!388545) b!849973))

(declare-fun m!1087883 () Bool)

(assert (=> d!265042 m!1087883))

(declare-fun m!1087885 () Bool)

(assert (=> d!265042 m!1087885))

(declare-fun m!1087887 () Bool)

(assert (=> d!265042 m!1087887))

(assert (=> d!265042 m!1087439))

(declare-fun m!1087889 () Bool)

(assert (=> d!265042 m!1087889))

(assert (=> d!265042 m!1087889))

(declare-fun m!1087891 () Bool)

(assert (=> d!265042 m!1087891))

(assert (=> d!265042 m!1087889))

(assert (=> d!265042 m!1087883))

(declare-fun m!1087893 () Bool)

(assert (=> d!265042 m!1087893))

(declare-fun m!1087895 () Bool)

(assert (=> b!849971 m!1087895))

(declare-fun m!1087897 () Bool)

(assert (=> b!849972 m!1087897))

(assert (=> b!849973 m!1087889))

(assert (=> b!849973 m!1087889))

(assert (=> b!849973 m!1087883))

(assert (=> b!849973 m!1087883))

(assert (=> b!849973 m!1087885))

(declare-fun m!1087899 () Bool)

(assert (=> b!849973 m!1087899))

(assert (=> b!849650 d!265042))

(declare-fun d!265046 () Bool)

(declare-fun res!388550 () Bool)

(declare-fun e!559395 () Bool)

(assert (=> d!265046 (=> res!388550 e!559395)))

(assert (=> d!265046 (= res!388550 (or (not ((_ is Cons!9170) lt!321975)) (not ((_ is Cons!9170) (t!95236 lt!321975)))))))

(assert (=> d!265046 (= (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 lt!321975 rules!2621) e!559395)))

(declare-fun b!849978 () Bool)

(declare-fun e!559394 () Bool)

(assert (=> b!849978 (= e!559395 e!559394)))

(declare-fun res!388551 () Bool)

(assert (=> b!849978 (=> (not res!388551) (not e!559394))))

(assert (=> b!849978 (= res!388551 (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321975) (h!14571 (t!95236 lt!321975)) rules!2621))))

(declare-fun lt!322119 () Unit!13653)

(declare-fun Unit!13661 () Unit!13653)

(assert (=> b!849978 (= lt!322119 Unit!13661)))

(declare-fun size!7643 (BalanceConc!6090) Int)

(assert (=> b!849978 (> (size!7643 (charsOf!989 (h!14571 (t!95236 lt!321975)))) 0)))

(declare-fun lt!322115 () Unit!13653)

(declare-fun Unit!13662 () Unit!13653)

(assert (=> b!849978 (= lt!322115 Unit!13662)))

(assert (=> b!849978 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321975)))))

(declare-fun lt!322121 () Unit!13653)

(declare-fun Unit!13663 () Unit!13653)

(assert (=> b!849978 (= lt!322121 Unit!13663)))

(assert (=> b!849978 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975))))

(declare-fun lt!322116 () Unit!13653)

(declare-fun lt!322120 () Unit!13653)

(assert (=> b!849978 (= lt!322116 lt!322120)))

(assert (=> b!849978 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321975)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> b!849978 (= lt!322120 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321975 (h!14571 (t!95236 lt!321975))))))

(declare-fun lt!322118 () Unit!13653)

(declare-fun lt!322117 () Unit!13653)

(assert (=> b!849978 (= lt!322118 lt!322117)))

(assert (=> b!849978 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975))))

(assert (=> b!849978 (= lt!322117 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321975 (h!14571 lt!321975)))))

(declare-fun b!849979 () Bool)

(assert (=> b!849979 (= e!559394 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))) rules!2621))))

(assert (= (and d!265046 (not res!388550)) b!849978))

(assert (= (and b!849978 res!388551) b!849979))

(declare-fun m!1087901 () Bool)

(assert (=> b!849978 m!1087901))

(declare-fun m!1087903 () Bool)

(assert (=> b!849978 m!1087903))

(declare-fun m!1087905 () Bool)

(assert (=> b!849978 m!1087905))

(assert (=> b!849978 m!1087569))

(declare-fun m!1087907 () Bool)

(assert (=> b!849978 m!1087907))

(declare-fun m!1087909 () Bool)

(assert (=> b!849978 m!1087909))

(assert (=> b!849978 m!1087909))

(declare-fun m!1087911 () Bool)

(assert (=> b!849978 m!1087911))

(declare-fun m!1087913 () Bool)

(assert (=> b!849979 m!1087913))

(assert (=> b!849651 d!265046))

(declare-fun d!265048 () Bool)

(declare-fun c!138012 () Bool)

(assert (=> d!265048 (= c!138012 ((_ is IntegerValue!5358) (value!55719 (h!14571 l!5107))))))

(declare-fun e!559396 () Bool)

(assert (=> d!265048 (= (inv!21 (value!55719 (h!14571 l!5107))) e!559396)))

(declare-fun b!849980 () Bool)

(declare-fun e!559398 () Bool)

(assert (=> b!849980 (= e!559398 (inv!15 (value!55719 (h!14571 l!5107))))))

(declare-fun b!849981 () Bool)

(declare-fun e!559397 () Bool)

(assert (=> b!849981 (= e!559397 (inv!17 (value!55719 (h!14571 l!5107))))))

(declare-fun b!849982 () Bool)

(assert (=> b!849982 (= e!559396 (inv!16 (value!55719 (h!14571 l!5107))))))

(declare-fun b!849983 () Bool)

(assert (=> b!849983 (= e!559396 e!559397)))

(declare-fun c!138011 () Bool)

(assert (=> b!849983 (= c!138011 ((_ is IntegerValue!5359) (value!55719 (h!14571 l!5107))))))

(declare-fun b!849984 () Bool)

(declare-fun res!388552 () Bool)

(assert (=> b!849984 (=> res!388552 e!559398)))

(assert (=> b!849984 (= res!388552 (not ((_ is IntegerValue!5360) (value!55719 (h!14571 l!5107)))))))

(assert (=> b!849984 (= e!559397 e!559398)))

(assert (= (and d!265048 c!138012) b!849982))

(assert (= (and d!265048 (not c!138012)) b!849983))

(assert (= (and b!849983 c!138011) b!849981))

(assert (= (and b!849983 (not c!138011)) b!849984))

(assert (= (and b!849984 (not res!388552)) b!849980))

(declare-fun m!1087915 () Bool)

(assert (=> b!849980 m!1087915))

(declare-fun m!1087917 () Bool)

(assert (=> b!849981 m!1087917))

(declare-fun m!1087919 () Bool)

(assert (=> b!849982 m!1087919))

(assert (=> b!849649 d!265048))

(declare-fun bs!230994 () Bool)

(declare-fun d!265050 () Bool)

(assert (= bs!230994 (and d!265050 b!849647)))

(declare-fun lambda!25378 () Int)

(assert (=> bs!230994 (not (= lambda!25378 lambda!25358))))

(declare-fun bs!230995 () Bool)

(assert (= bs!230995 (and d!265050 d!264934)))

(assert (=> bs!230995 (= lambda!25378 lambda!25363)))

(declare-fun bs!230996 () Bool)

(assert (= bs!230996 (and d!265050 d!264950)))

(assert (=> bs!230996 (= lambda!25378 lambda!25369)))

(declare-fun bs!230997 () Bool)

(assert (= bs!230997 (and d!265050 d!264958)))

(assert (=> bs!230997 (= lambda!25378 lambda!25370)))

(declare-fun b!849989 () Bool)

(declare-fun e!559403 () Bool)

(assert (=> b!849989 (= e!559403 true)))

(declare-fun b!849988 () Bool)

(declare-fun e!559402 () Bool)

(assert (=> b!849988 (= e!559402 e!559403)))

(declare-fun b!849987 () Bool)

(declare-fun e!559401 () Bool)

(assert (=> b!849987 (= e!559401 e!559402)))

(assert (=> d!265050 e!559401))

(assert (= b!849988 b!849989))

(assert (= b!849987 b!849988))

(assert (= (and d!265050 ((_ is Cons!9171) rules!2621)) b!849987))

(assert (=> b!849989 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25378))))

(assert (=> b!849989 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25378))))

(assert (=> d!265050 true))

(declare-fun lt!322122 () Bool)

(assert (=> d!265050 (= lt!322122 (forall!2155 lt!321979 lambda!25378))))

(declare-fun e!559399 () Bool)

(assert (=> d!265050 (= lt!322122 e!559399)))

(declare-fun res!388554 () Bool)

(assert (=> d!265050 (=> res!388554 e!559399)))

(assert (=> d!265050 (= res!388554 (not ((_ is Cons!9170) lt!321979)))))

(assert (=> d!265050 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265050 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321979) lt!322122)))

(declare-fun b!849985 () Bool)

(declare-fun e!559400 () Bool)

(assert (=> b!849985 (= e!559399 e!559400)))

(declare-fun res!388553 () Bool)

(assert (=> b!849985 (=> (not res!388553) (not e!559400))))

(assert (=> b!849985 (= res!388553 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979)))))

(declare-fun b!849986 () Bool)

(assert (=> b!849986 (= e!559400 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 lt!321979)))))

(assert (= (and d!265050 (not res!388554)) b!849985))

(assert (= (and b!849985 res!388553) b!849986))

(declare-fun m!1087921 () Bool)

(assert (=> d!265050 m!1087921))

(assert (=> d!265050 m!1087439))

(declare-fun m!1087923 () Bool)

(assert (=> b!849985 m!1087923))

(declare-fun m!1087925 () Bool)

(assert (=> b!849986 m!1087925))

(assert (=> b!849660 d!265050))

(declare-fun b!850010 () Bool)

(declare-fun e!559417 () List!9185)

(assert (=> b!850010 (= e!559417 Nil!9169)))

(declare-fun d!265052 () Bool)

(declare-fun lt!322146 () List!9186)

(declare-fun printList!472 (LexerInterface!1522 List!9186) List!9185)

(declare-fun printWithSeparatorTokenList!30 (LexerInterface!1522 List!9186 Token!3106) List!9185)

(assert (=> d!265052 (= (printList!472 thiss!20117 lt!322146) (printWithSeparatorTokenList!30 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!559418 () List!9186)

(assert (=> d!265052 (= lt!322146 e!559418)))

(declare-fun c!138019 () Bool)

(assert (=> d!265052 (= c!138019 ((_ is Cons!9170) l!5107))))

(declare-fun e!559420 () Bool)

(assert (=> d!265052 e!559420))

(declare-fun res!388563 () Bool)

(assert (=> d!265052 (=> (not res!388563) (not e!559420))))

(assert (=> d!265052 (= res!388563 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(assert (=> d!265052 (= (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297) lt!322146)))

(declare-fun b!850011 () Bool)

(declare-fun e!559419 () Bool)

(declare-fun $colon$colon!85 (List!9186 Token!3106) List!9186)

(assert (=> b!850011 (= e!559419 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107))) e!559417))))

(declare-fun c!138020 () Bool)

(declare-fun lt!322144 () List!9186)

(assert (=> b!850011 (= c!138020 ((_ is Cons!9170) lt!322144))))

(assert (=> b!850011 (= lt!322144 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107)))))

(declare-fun b!850012 () Bool)

(declare-fun res!388566 () Bool)

(assert (=> b!850012 (=> (not res!388566) (not e!559420))))

(assert (=> b!850012 (= res!388566 e!559419)))

(declare-fun res!388564 () Bool)

(assert (=> b!850012 (=> res!388564 e!559419)))

(assert (=> b!850012 (= res!388564 (not ((_ is Cons!9170) l!5107)))))

(declare-fun b!850013 () Bool)

(declare-fun e!559421 () Bool)

(assert (=> b!850013 (= e!559420 e!559421)))

(declare-fun res!388565 () Bool)

(assert (=> b!850013 (=> res!388565 e!559421)))

(assert (=> b!850013 (= res!388565 (not ((_ is Cons!9170) l!5107)))))

(declare-fun b!850014 () Bool)

(assert (=> b!850014 (= e!559418 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107)))))

(declare-fun lt!322145 () List!9185)

(assert (=> b!850014 (= lt!322145 (list!3598 (charsOf!989 (h!14571 l!5107))))))

(declare-fun lt!322142 () List!9185)

(assert (=> b!850014 (= lt!322142 (list!3598 (charsOf!989 separatorToken!297)))))

(declare-fun lt!322143 () List!9185)

(assert (=> b!850014 (= lt!322143 (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)))))

(declare-fun lt!322141 () Unit!13653)

(declare-fun lemmaConcatAssociativity!747 (List!9185 List!9185 List!9185) Unit!13653)

(assert (=> b!850014 (= lt!322141 (lemmaConcatAssociativity!747 lt!322145 lt!322142 lt!322143))))

(declare-fun ++!2376 (List!9185 List!9185) List!9185)

(assert (=> b!850014 (= (++!2376 (++!2376 lt!322145 lt!322142) lt!322143) (++!2376 lt!322145 (++!2376 lt!322142 lt!322143)))))

(declare-fun lt!322139 () Unit!13653)

(assert (=> b!850014 (= lt!322139 lt!322141)))

(declare-fun b!850015 () Bool)

(assert (=> b!850015 (= e!559417 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322144))) (printList!472 thiss!20117 (t!95236 lt!322144))))))

(declare-fun b!850016 () Bool)

(declare-fun e!559416 () List!9185)

(assert (=> b!850016 (= e!559416 Nil!9169)))

(declare-fun b!850017 () Bool)

(assert (=> b!850017 (= e!559421 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)) e!559416))))

(declare-fun c!138021 () Bool)

(declare-fun lt!322140 () List!9186)

(assert (=> b!850017 (= c!138021 ((_ is Cons!9170) lt!322140))))

(assert (=> b!850017 (= lt!322140 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!850018 () Bool)

(assert (=> b!850018 (= e!559416 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322140))) (printList!472 thiss!20117 (t!95236 lt!322140))))))

(declare-fun b!850019 () Bool)

(assert (=> b!850019 (= e!559418 Nil!9170)))

(assert (= (and d!265052 res!388563) b!850012))

(assert (= (and b!850012 (not res!388564)) b!850011))

(assert (= (and b!850011 c!138020) b!850015))

(assert (= (and b!850011 (not c!138020)) b!850010))

(assert (= (and b!850012 res!388566) b!850013))

(assert (= (and b!850013 (not res!388565)) b!850017))

(assert (= (and b!850017 c!138021) b!850018))

(assert (= (and b!850017 (not c!138021)) b!850016))

(assert (= (and d!265052 c!138019) b!850014))

(assert (= (and d!265052 (not c!138019)) b!850019))

(declare-fun m!1087927 () Bool)

(assert (=> b!850017 m!1087927))

(assert (=> b!850017 m!1087927))

(declare-fun m!1087929 () Bool)

(assert (=> b!850017 m!1087929))

(assert (=> b!850017 m!1087929))

(declare-fun m!1087931 () Bool)

(assert (=> b!850017 m!1087931))

(declare-fun m!1087933 () Bool)

(assert (=> b!850015 m!1087933))

(assert (=> b!850015 m!1087933))

(declare-fun m!1087935 () Bool)

(assert (=> b!850015 m!1087935))

(declare-fun m!1087937 () Bool)

(assert (=> b!850015 m!1087937))

(assert (=> b!850015 m!1087935))

(assert (=> b!850015 m!1087937))

(declare-fun m!1087939 () Bool)

(assert (=> b!850015 m!1087939))

(assert (=> b!850014 m!1087929))

(declare-fun m!1087941 () Bool)

(assert (=> b!850014 m!1087941))

(declare-fun m!1087943 () Bool)

(assert (=> b!850014 m!1087943))

(declare-fun m!1087945 () Bool)

(assert (=> b!850014 m!1087945))

(declare-fun m!1087947 () Bool)

(assert (=> b!850014 m!1087947))

(declare-fun m!1087949 () Bool)

(assert (=> b!850014 m!1087949))

(declare-fun m!1087951 () Bool)

(assert (=> b!850014 m!1087951))

(assert (=> b!850014 m!1087927))

(assert (=> b!850014 m!1087929))

(declare-fun m!1087953 () Bool)

(assert (=> b!850014 m!1087953))

(assert (=> b!850014 m!1087927))

(assert (=> b!850014 m!1087951))

(declare-fun m!1087955 () Bool)

(assert (=> b!850014 m!1087955))

(assert (=> b!850014 m!1087927))

(declare-fun m!1087957 () Bool)

(assert (=> b!850014 m!1087957))

(declare-fun m!1087959 () Bool)

(assert (=> b!850014 m!1087959))

(assert (=> b!850014 m!1087953))

(declare-fun m!1087961 () Bool)

(assert (=> b!850014 m!1087961))

(assert (=> b!850014 m!1087947))

(assert (=> b!850014 m!1087943))

(assert (=> b!850011 m!1087927))

(assert (=> b!850011 m!1087927))

(assert (=> b!850011 m!1087929))

(assert (=> b!850011 m!1087929))

(assert (=> b!850011 m!1087941))

(assert (=> b!850011 m!1087941))

(declare-fun m!1087963 () Bool)

(assert (=> b!850011 m!1087963))

(declare-fun m!1087965 () Bool)

(assert (=> d!265052 m!1087965))

(declare-fun m!1087967 () Bool)

(assert (=> d!265052 m!1087967))

(declare-fun m!1087969 () Bool)

(assert (=> b!850018 m!1087969))

(assert (=> b!850018 m!1087969))

(declare-fun m!1087971 () Bool)

(assert (=> b!850018 m!1087971))

(declare-fun m!1087973 () Bool)

(assert (=> b!850018 m!1087973))

(assert (=> b!850018 m!1087971))

(assert (=> b!850018 m!1087973))

(declare-fun m!1087975 () Bool)

(assert (=> b!850018 m!1087975))

(assert (=> b!849660 d!265052))

(declare-fun d!265054 () Bool)

(assert (=> d!265054 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!322147 () Unit!13653)

(assert (=> d!265054 (= lt!322147 (choose!5019 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!265054 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265054 (= (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!322147)))

(declare-fun bs!230998 () Bool)

(assert (= bs!230998 d!265054))

(assert (=> bs!230998 m!1087467))

(assert (=> bs!230998 m!1087467))

(declare-fun m!1087977 () Bool)

(assert (=> bs!230998 m!1087977))

(declare-fun m!1087979 () Bool)

(assert (=> bs!230998 m!1087979))

(assert (=> bs!230998 m!1087439))

(assert (=> b!849660 d!265054))

(declare-fun d!265056 () Bool)

(assert (=> d!265056 (= (isEmpty!5417 rules!2621) ((_ is Nil!9171) rules!2621))))

(assert (=> b!849658 d!265056))

(declare-fun d!265058 () Bool)

(declare-fun res!388569 () Bool)

(declare-fun e!559424 () Bool)

(assert (=> d!265058 (=> (not res!388569) (not e!559424))))

(declare-fun rulesValid!599 (LexerInterface!1522 List!9187) Bool)

(assert (=> d!265058 (= res!388569 (rulesValid!599 thiss!20117 rules!2621))))

(assert (=> d!265058 (= (rulesInvariant!1398 thiss!20117 rules!2621) e!559424)))

(declare-fun b!850022 () Bool)

(declare-datatypes ((List!9189 0))(
  ( (Nil!9173) (Cons!9173 (h!14574 String!10828) (t!95293 List!9189)) )
))
(declare-fun noDuplicateTag!599 (LexerInterface!1522 List!9187 List!9189) Bool)

(assert (=> b!850022 (= e!559424 (noDuplicateTag!599 thiss!20117 rules!2621 Nil!9173))))

(assert (= (and d!265058 res!388569) b!850022))

(declare-fun m!1087981 () Bool)

(assert (=> d!265058 m!1087981))

(declare-fun m!1087983 () Bool)

(assert (=> b!850022 m!1087983))

(assert (=> b!849648 d!265058))

(declare-fun d!265060 () Bool)

(declare-fun res!388570 () Bool)

(declare-fun e!559426 () Bool)

(assert (=> d!265060 (=> res!388570 e!559426)))

(assert (=> d!265060 (= res!388570 (or (not ((_ is Cons!9170) lt!321979)) (not ((_ is Cons!9170) (t!95236 lt!321979)))))))

(assert (=> d!265060 (= (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 lt!321979 rules!2621) e!559426)))

(declare-fun b!850023 () Bool)

(declare-fun e!559425 () Bool)

(assert (=> b!850023 (= e!559426 e!559425)))

(declare-fun res!388571 () Bool)

(assert (=> b!850023 (=> (not res!388571) (not e!559425))))

(assert (=> b!850023 (= res!388571 (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621))))

(declare-fun lt!322152 () Unit!13653)

(declare-fun Unit!13664 () Unit!13653)

(assert (=> b!850023 (= lt!322152 Unit!13664)))

(assert (=> b!850023 (> (size!7643 (charsOf!989 (h!14571 (t!95236 lt!321979)))) 0)))

(declare-fun lt!322148 () Unit!13653)

(declare-fun Unit!13665 () Unit!13653)

(assert (=> b!850023 (= lt!322148 Unit!13665)))

(assert (=> b!850023 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321979)))))

(declare-fun lt!322154 () Unit!13653)

(declare-fun Unit!13666 () Unit!13653)

(assert (=> b!850023 (= lt!322154 Unit!13666)))

(assert (=> b!850023 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979))))

(declare-fun lt!322149 () Unit!13653)

(declare-fun lt!322153 () Unit!13653)

(assert (=> b!850023 (= lt!322149 lt!322153)))

(assert (=> b!850023 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321979)))))

(assert (=> b!850023 (= lt!322153 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321979 (h!14571 (t!95236 lt!321979))))))

(declare-fun lt!322151 () Unit!13653)

(declare-fun lt!322150 () Unit!13653)

(assert (=> b!850023 (= lt!322151 lt!322150)))

(assert (=> b!850023 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979))))

(assert (=> b!850023 (= lt!322150 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321979 (h!14571 lt!321979)))))

(declare-fun b!850024 () Bool)

(assert (=> b!850024 (= e!559425 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))) rules!2621))))

(assert (= (and d!265060 (not res!388570)) b!850023))

(assert (= (and b!850023 res!388571) b!850024))

(assert (=> b!850023 m!1087443))

(declare-fun m!1087985 () Bool)

(assert (=> b!850023 m!1087985))

(declare-fun m!1087987 () Bool)

(assert (=> b!850023 m!1087987))

(assert (=> b!850023 m!1087923))

(declare-fun m!1087989 () Bool)

(assert (=> b!850023 m!1087989))

(assert (=> b!850023 m!1087805))

(assert (=> b!850023 m!1087805))

(declare-fun m!1087991 () Bool)

(assert (=> b!850023 m!1087991))

(declare-fun m!1087993 () Bool)

(assert (=> b!850024 m!1087993))

(assert (=> b!849657 d!265060))

(declare-fun d!265062 () Bool)

(assert (=> d!265062 (= (separableTokensPredicate!62 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621) (not (prefixMatchZipperSequence!31 (rulesRegex!22 thiss!20117 rules!2621) (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))))))

(declare-fun bs!230999 () Bool)

(assert (= bs!230999 d!265062))

(declare-fun m!1087995 () Bool)

(assert (=> bs!230999 m!1087995))

(declare-fun m!1087997 () Bool)

(assert (=> bs!230999 m!1087997))

(assert (=> bs!230999 m!1087799))

(declare-fun m!1087999 () Bool)

(assert (=> bs!230999 m!1087999))

(declare-fun m!1088001 () Bool)

(assert (=> bs!230999 m!1088001))

(declare-fun m!1088003 () Bool)

(assert (=> bs!230999 m!1088003))

(assert (=> bs!230999 m!1087995))

(assert (=> bs!230999 m!1087805))

(assert (=> bs!230999 m!1087997))

(assert (=> bs!230999 m!1087999))

(assert (=> bs!230999 m!1087799))

(assert (=> bs!230999 m!1087805))

(assert (=> bs!230999 m!1088003))

(assert (=> b!849657 d!265062))

(declare-fun d!265064 () Bool)

(assert (=> d!265064 (separableTokensPredicate!62 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621)))

(declare-fun lt!322155 () Unit!13653)

(assert (=> d!265064 (= lt!322155 (choose!5020 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621))))

(assert (=> d!265064 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265064 (= (lemmaTokensOfDifferentKindsAreSeparable!44 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621) lt!322155)))

(declare-fun bs!231000 () Bool)

(assert (= bs!231000 d!265064))

(assert (=> bs!231000 m!1087483))

(declare-fun m!1088005 () Bool)

(assert (=> bs!231000 m!1088005))

(assert (=> bs!231000 m!1087439))

(assert (=> b!849657 d!265064))

(declare-fun d!265066 () Bool)

(assert (=> d!265066 (= (head!1480 (t!95236 (t!95236 lt!321979))) (h!14571 (t!95236 (t!95236 lt!321979))))))

(assert (=> b!849657 d!265066))

(declare-fun d!265068 () Bool)

(declare-fun res!388576 () Bool)

(declare-fun e!559431 () Bool)

(assert (=> d!265068 (=> res!388576 e!559431)))

(assert (=> d!265068 (= res!388576 ((_ is Nil!9170) l!5107))))

(assert (=> d!265068 (= (forall!2155 l!5107 lambda!25358) e!559431)))

(declare-fun b!850029 () Bool)

(declare-fun e!559432 () Bool)

(assert (=> b!850029 (= e!559431 e!559432)))

(declare-fun res!388577 () Bool)

(assert (=> b!850029 (=> (not res!388577) (not e!559432))))

(declare-fun dynLambda!4267 (Int Token!3106) Bool)

(assert (=> b!850029 (= res!388577 (dynLambda!4267 lambda!25358 (h!14571 l!5107)))))

(declare-fun b!850030 () Bool)

(assert (=> b!850030 (= e!559432 (forall!2155 (t!95236 l!5107) lambda!25358))))

(assert (= (and d!265068 (not res!388576)) b!850029))

(assert (= (and b!850029 res!388577) b!850030))

(declare-fun b_lambda!28251 () Bool)

(assert (=> (not b_lambda!28251) (not b!850029)))

(declare-fun m!1088007 () Bool)

(assert (=> b!850029 m!1088007))

(declare-fun m!1088009 () Bool)

(assert (=> b!850030 m!1088009))

(assert (=> b!849647 d!265068))

(declare-fun b!850031 () Bool)

(declare-fun e!559434 () List!9185)

(assert (=> b!850031 (= e!559434 Nil!9169)))

(declare-fun d!265070 () Bool)

(declare-fun lt!322163 () List!9186)

(assert (=> d!265070 (= (printList!472 thiss!20117 lt!322163) (printWithSeparatorTokenList!30 thiss!20117 lt!321981 separatorToken!297))))

(declare-fun e!559435 () List!9186)

(assert (=> d!265070 (= lt!322163 e!559435)))

(declare-fun c!138022 () Bool)

(assert (=> d!265070 (= c!138022 ((_ is Cons!9170) lt!321981))))

(declare-fun e!559437 () Bool)

(assert (=> d!265070 e!559437))

(declare-fun res!388578 () Bool)

(assert (=> d!265070 (=> (not res!388578) (not e!559437))))

(assert (=> d!265070 (= res!388578 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(assert (=> d!265070 (= (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) lt!322163)))

(declare-fun b!850032 () Bool)

(declare-fun e!559436 () Bool)

(assert (=> b!850032 (= e!559436 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981))) e!559434))))

(declare-fun c!138023 () Bool)

(declare-fun lt!322161 () List!9186)

(assert (=> b!850032 (= c!138023 ((_ is Cons!9170) lt!322161))))

(assert (=> b!850032 (= lt!322161 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981)))))

(declare-fun b!850033 () Bool)

(declare-fun res!388581 () Bool)

(assert (=> b!850033 (=> (not res!388581) (not e!559437))))

(assert (=> b!850033 (= res!388581 e!559436)))

(declare-fun res!388579 () Bool)

(assert (=> b!850033 (=> res!388579 e!559436)))

(assert (=> b!850033 (= res!388579 (not ((_ is Cons!9170) lt!321981)))))

(declare-fun b!850034 () Bool)

(declare-fun e!559438 () Bool)

(assert (=> b!850034 (= e!559437 e!559438)))

(declare-fun res!388580 () Bool)

(assert (=> b!850034 (=> res!388580 e!559438)))

(assert (=> b!850034 (= res!388580 (not ((_ is Cons!9170) lt!321981)))))

(declare-fun b!850035 () Bool)

(assert (=> b!850035 (= e!559435 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981)))))

(declare-fun lt!322162 () List!9185)

(assert (=> b!850035 (= lt!322162 (list!3598 (charsOf!989 (h!14571 lt!321981))))))

(declare-fun lt!322159 () List!9185)

(assert (=> b!850035 (= lt!322159 (list!3598 (charsOf!989 separatorToken!297)))))

(declare-fun lt!322160 () List!9185)

(assert (=> b!850035 (= lt!322160 (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)))))

(declare-fun lt!322158 () Unit!13653)

(assert (=> b!850035 (= lt!322158 (lemmaConcatAssociativity!747 lt!322162 lt!322159 lt!322160))))

(assert (=> b!850035 (= (++!2376 (++!2376 lt!322162 lt!322159) lt!322160) (++!2376 lt!322162 (++!2376 lt!322159 lt!322160)))))

(declare-fun lt!322156 () Unit!13653)

(assert (=> b!850035 (= lt!322156 lt!322158)))

(declare-fun b!850036 () Bool)

(assert (=> b!850036 (= e!559434 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322161))) (printList!472 thiss!20117 (t!95236 lt!322161))))))

(declare-fun b!850037 () Bool)

(declare-fun e!559433 () List!9185)

(assert (=> b!850037 (= e!559433 Nil!9169)))

(declare-fun b!850038 () Bool)

(assert (=> b!850038 (= e!559438 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)) e!559433))))

(declare-fun c!138024 () Bool)

(declare-fun lt!322157 () List!9186)

(assert (=> b!850038 (= c!138024 ((_ is Cons!9170) lt!322157))))

(assert (=> b!850038 (= lt!322157 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297))))

(declare-fun b!850039 () Bool)

(assert (=> b!850039 (= e!559433 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322157))) (printList!472 thiss!20117 (t!95236 lt!322157))))))

(declare-fun b!850040 () Bool)

(assert (=> b!850040 (= e!559435 Nil!9170)))

(assert (= (and d!265070 res!388578) b!850033))

(assert (= (and b!850033 (not res!388579)) b!850032))

(assert (= (and b!850032 c!138023) b!850036))

(assert (= (and b!850032 (not c!138023)) b!850031))

(assert (= (and b!850033 res!388581) b!850034))

(assert (= (and b!850034 (not res!388580)) b!850038))

(assert (= (and b!850038 c!138024) b!850039))

(assert (= (and b!850038 (not c!138024)) b!850037))

(assert (= (and d!265070 c!138022) b!850035))

(assert (= (and d!265070 (not c!138022)) b!850040))

(declare-fun m!1088011 () Bool)

(assert (=> b!850038 m!1088011))

(assert (=> b!850038 m!1088011))

(declare-fun m!1088013 () Bool)

(assert (=> b!850038 m!1088013))

(assert (=> b!850038 m!1088013))

(declare-fun m!1088015 () Bool)

(assert (=> b!850038 m!1088015))

(declare-fun m!1088017 () Bool)

(assert (=> b!850036 m!1088017))

(assert (=> b!850036 m!1088017))

(declare-fun m!1088019 () Bool)

(assert (=> b!850036 m!1088019))

(declare-fun m!1088021 () Bool)

(assert (=> b!850036 m!1088021))

(assert (=> b!850036 m!1088019))

(assert (=> b!850036 m!1088021))

(declare-fun m!1088023 () Bool)

(assert (=> b!850036 m!1088023))

(assert (=> b!850035 m!1088013))

(declare-fun m!1088025 () Bool)

(assert (=> b!850035 m!1088025))

(declare-fun m!1088027 () Bool)

(assert (=> b!850035 m!1088027))

(declare-fun m!1088029 () Bool)

(assert (=> b!850035 m!1088029))

(declare-fun m!1088031 () Bool)

(assert (=> b!850035 m!1088031))

(declare-fun m!1088033 () Bool)

(assert (=> b!850035 m!1088033))

(assert (=> b!850035 m!1087951))

(assert (=> b!850035 m!1088011))

(assert (=> b!850035 m!1088013))

(declare-fun m!1088035 () Bool)

(assert (=> b!850035 m!1088035))

(assert (=> b!850035 m!1088011))

(assert (=> b!850035 m!1087951))

(assert (=> b!850035 m!1087955))

(assert (=> b!850035 m!1088011))

(declare-fun m!1088037 () Bool)

(assert (=> b!850035 m!1088037))

(declare-fun m!1088039 () Bool)

(assert (=> b!850035 m!1088039))

(assert (=> b!850035 m!1088035))

(declare-fun m!1088041 () Bool)

(assert (=> b!850035 m!1088041))

(assert (=> b!850035 m!1088031))

(assert (=> b!850035 m!1088027))

(assert (=> b!850032 m!1088011))

(assert (=> b!850032 m!1088011))

(assert (=> b!850032 m!1088013))

(assert (=> b!850032 m!1088013))

(assert (=> b!850032 m!1088025))

(assert (=> b!850032 m!1088025))

(declare-fun m!1088043 () Bool)

(assert (=> b!850032 m!1088043))

(declare-fun m!1088045 () Bool)

(assert (=> d!265070 m!1088045))

(declare-fun m!1088047 () Bool)

(assert (=> d!265070 m!1088047))

(declare-fun m!1088049 () Bool)

(assert (=> b!850039 m!1088049))

(assert (=> b!850039 m!1088049))

(declare-fun m!1088051 () Bool)

(assert (=> b!850039 m!1088051))

(declare-fun m!1088053 () Bool)

(assert (=> b!850039 m!1088053))

(assert (=> b!850039 m!1088051))

(assert (=> b!850039 m!1088053))

(declare-fun m!1088055 () Bool)

(assert (=> b!850039 m!1088055))

(assert (=> b!849656 d!265070))

(declare-fun d!265072 () Bool)

(assert (=> d!265072 (= (tail!1038 l!5107) (t!95236 l!5107))))

(assert (=> b!849656 d!265072))

(declare-fun e!559441 () Bool)

(assert (=> b!849653 (= tp!267576 e!559441)))

(declare-fun b!850053 () Bool)

(declare-fun tp!267662 () Bool)

(assert (=> b!850053 (= e!559441 tp!267662)))

(declare-fun b!850051 () Bool)

(declare-fun tp_is_empty!3969 () Bool)

(assert (=> b!850051 (= e!559441 tp_is_empty!3969)))

(declare-fun b!850054 () Bool)

(declare-fun tp!267660 () Bool)

(declare-fun tp!267661 () Bool)

(assert (=> b!850054 (= e!559441 (and tp!267660 tp!267661))))

(declare-fun b!850052 () Bool)

(declare-fun tp!267659 () Bool)

(declare-fun tp!267663 () Bool)

(assert (=> b!850052 (= e!559441 (and tp!267659 tp!267663))))

(assert (= (and b!849653 ((_ is ElementMatch!2153) (regex!1720 (h!14572 rules!2621)))) b!850051))

(assert (= (and b!849653 ((_ is Concat!3940) (regex!1720 (h!14572 rules!2621)))) b!850052))

(assert (= (and b!849653 ((_ is Star!2153) (regex!1720 (h!14572 rules!2621)))) b!850053))

(assert (= (and b!849653 ((_ is Union!2153) (regex!1720 (h!14572 rules!2621)))) b!850054))

(declare-fun b!850059 () Bool)

(declare-fun e!559444 () Bool)

(declare-fun tp!267666 () Bool)

(assert (=> b!850059 (= e!559444 (and tp_is_empty!3969 tp!267666))))

(assert (=> b!849643 (= tp!267579 e!559444)))

(assert (= (and b!849643 ((_ is Cons!9169) (originalCharacters!2276 separatorToken!297))) b!850059))

(declare-fun b!850070 () Bool)

(declare-fun b_free!25669 () Bool)

(declare-fun b_next!25733 () Bool)

(assert (=> b!850070 (= b_free!25669 (not b_next!25733))))

(declare-fun tp!267677 () Bool)

(declare-fun b_and!74385 () Bool)

(assert (=> b!850070 (= tp!267677 b_and!74385)))

(declare-fun b_free!25671 () Bool)

(declare-fun b_next!25735 () Bool)

(assert (=> b!850070 (= b_free!25671 (not b_next!25735))))

(declare-fun t!95286 () Bool)

(declare-fun tb!59473 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95286) tb!59473))

(declare-fun result!68928 () Bool)

(assert (= result!68928 result!68892))

(assert (=> b!849885 t!95286))

(declare-fun t!95288 () Bool)

(declare-fun tb!59475 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95288) tb!59475))

(declare-fun result!68930 () Bool)

(assert (= result!68930 result!68900))

(assert (=> b!849892 t!95288))

(declare-fun b_and!74387 () Bool)

(declare-fun tp!267675 () Bool)

(assert (=> b!850070 (= tp!267675 (and (=> t!95286 result!68928) (=> t!95288 result!68930) b_and!74387))))

(declare-fun e!559455 () Bool)

(assert (=> b!850070 (= e!559455 (and tp!267677 tp!267675))))

(declare-fun b!850069 () Bool)

(declare-fun tp!267676 () Bool)

(declare-fun e!559454 () Bool)

(assert (=> b!850069 (= e!559454 (and tp!267676 (inv!11648 (tag!1982 (h!14572 (t!95237 rules!2621)))) (inv!11652 (transformation!1720 (h!14572 (t!95237 rules!2621)))) e!559455))))

(declare-fun b!850068 () Bool)

(declare-fun e!559456 () Bool)

(declare-fun tp!267678 () Bool)

(assert (=> b!850068 (= e!559456 (and e!559454 tp!267678))))

(assert (=> b!849664 (= tp!267582 e!559456)))

(assert (= b!850069 b!850070))

(assert (= b!850068 b!850069))

(assert (= (and b!849664 ((_ is Cons!9171) (t!95237 rules!2621))) b!850068))

(declare-fun m!1088057 () Bool)

(assert (=> b!850069 m!1088057))

(declare-fun m!1088059 () Bool)

(assert (=> b!850069 m!1088059))

(declare-fun b!850084 () Bool)

(declare-fun b_free!25673 () Bool)

(declare-fun b_next!25737 () Bool)

(assert (=> b!850084 (= b_free!25673 (not b_next!25737))))

(declare-fun tp!267690 () Bool)

(declare-fun b_and!74389 () Bool)

(assert (=> b!850084 (= tp!267690 b_and!74389)))

(declare-fun b_free!25675 () Bool)

(declare-fun b_next!25739 () Bool)

(assert (=> b!850084 (= b_free!25675 (not b_next!25739))))

(declare-fun t!95290 () Bool)

(declare-fun tb!59477 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95290) tb!59477))

(declare-fun result!68934 () Bool)

(assert (= result!68934 result!68892))

(assert (=> b!849885 t!95290))

(declare-fun t!95292 () Bool)

(declare-fun tb!59479 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95292) tb!59479))

(declare-fun result!68936 () Bool)

(assert (= result!68936 result!68900))

(assert (=> b!849892 t!95292))

(declare-fun b_and!74391 () Bool)

(declare-fun tp!267691 () Bool)

(assert (=> b!850084 (= tp!267691 (and (=> t!95290 result!68934) (=> t!95292 result!68936) b_and!74391))))

(declare-fun e!559470 () Bool)

(declare-fun tp!267693 () Bool)

(declare-fun b!850083 () Bool)

(declare-fun e!559472 () Bool)

(assert (=> b!850083 (= e!559470 (and tp!267693 (inv!11648 (tag!1982 (rule!3143 (h!14571 (t!95236 l!5107))))) (inv!11652 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) e!559472))))

(declare-fun b!850082 () Bool)

(declare-fun e!559471 () Bool)

(declare-fun tp!267692 () Bool)

(assert (=> b!850082 (= e!559471 (and (inv!21 (value!55719 (h!14571 (t!95236 l!5107)))) e!559470 tp!267692))))

(assert (=> b!850084 (= e!559472 (and tp!267690 tp!267691))))

(declare-fun e!559474 () Bool)

(declare-fun tp!267689 () Bool)

(declare-fun b!850081 () Bool)

(assert (=> b!850081 (= e!559474 (and (inv!11651 (h!14571 (t!95236 l!5107))) e!559471 tp!267689))))

(assert (=> b!849641 (= tp!267572 e!559474)))

(assert (= b!850083 b!850084))

(assert (= b!850082 b!850083))

(assert (= b!850081 b!850082))

(assert (= (and b!849641 ((_ is Cons!9170) (t!95236 l!5107))) b!850081))

(declare-fun m!1088061 () Bool)

(assert (=> b!850083 m!1088061))

(declare-fun m!1088063 () Bool)

(assert (=> b!850083 m!1088063))

(declare-fun m!1088065 () Bool)

(assert (=> b!850082 m!1088065))

(declare-fun m!1088067 () Bool)

(assert (=> b!850081 m!1088067))

(declare-fun e!559475 () Bool)

(assert (=> b!849652 (= tp!267577 e!559475)))

(declare-fun b!850087 () Bool)

(declare-fun tp!267697 () Bool)

(assert (=> b!850087 (= e!559475 tp!267697)))

(declare-fun b!850085 () Bool)

(assert (=> b!850085 (= e!559475 tp_is_empty!3969)))

(declare-fun b!850088 () Bool)

(declare-fun tp!267695 () Bool)

(declare-fun tp!267696 () Bool)

(assert (=> b!850088 (= e!559475 (and tp!267695 tp!267696))))

(declare-fun b!850086 () Bool)

(declare-fun tp!267694 () Bool)

(declare-fun tp!267698 () Bool)

(assert (=> b!850086 (= e!559475 (and tp!267694 tp!267698))))

(assert (= (and b!849652 ((_ is ElementMatch!2153) (regex!1720 (rule!3143 (h!14571 l!5107))))) b!850085))

(assert (= (and b!849652 ((_ is Concat!3940) (regex!1720 (rule!3143 (h!14571 l!5107))))) b!850086))

(assert (= (and b!849652 ((_ is Star!2153) (regex!1720 (rule!3143 (h!14571 l!5107))))) b!850087))

(assert (= (and b!849652 ((_ is Union!2153) (regex!1720 (rule!3143 (h!14571 l!5107))))) b!850088))

(declare-fun e!559476 () Bool)

(assert (=> b!849661 (= tp!267574 e!559476)))

(declare-fun b!850091 () Bool)

(declare-fun tp!267702 () Bool)

(assert (=> b!850091 (= e!559476 tp!267702)))

(declare-fun b!850089 () Bool)

(assert (=> b!850089 (= e!559476 tp_is_empty!3969)))

(declare-fun b!850092 () Bool)

(declare-fun tp!267700 () Bool)

(declare-fun tp!267701 () Bool)

(assert (=> b!850092 (= e!559476 (and tp!267700 tp!267701))))

(declare-fun b!850090 () Bool)

(declare-fun tp!267699 () Bool)

(declare-fun tp!267703 () Bool)

(assert (=> b!850090 (= e!559476 (and tp!267699 tp!267703))))

(assert (= (and b!849661 ((_ is ElementMatch!2153) (regex!1720 (rule!3143 separatorToken!297)))) b!850089))

(assert (= (and b!849661 ((_ is Concat!3940) (regex!1720 (rule!3143 separatorToken!297)))) b!850090))

(assert (= (and b!849661 ((_ is Star!2153) (regex!1720 (rule!3143 separatorToken!297)))) b!850091))

(assert (= (and b!849661 ((_ is Union!2153) (regex!1720 (rule!3143 separatorToken!297)))) b!850092))

(declare-fun b!850093 () Bool)

(declare-fun e!559477 () Bool)

(declare-fun tp!267704 () Bool)

(assert (=> b!850093 (= e!559477 (and tp_is_empty!3969 tp!267704))))

(assert (=> b!849649 (= tp!267580 e!559477)))

(assert (= (and b!849649 ((_ is Cons!9169) (originalCharacters!2276 (h!14571 l!5107)))) b!850093))

(declare-fun b_lambda!28253 () Bool)

(assert (= b_lambda!28241 (or (and b!849645 b_free!25651 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!849665 b_free!25655 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!850084 b_free!25675 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!850070 b_free!25671 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!849659 b_free!25659) b_lambda!28253)))

(declare-fun b_lambda!28255 () Bool)

(assert (= b_lambda!28243 (or (and b!849665 b_free!25655 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!849645 b_free!25651) (and b!850070 b_free!25671 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!850084 b_free!25675 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!849659 b_free!25659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) b_lambda!28255)))

(declare-fun b_lambda!28257 () Bool)

(assert (= b_lambda!28251 (or b!849647 b_lambda!28257)))

(declare-fun bs!231001 () Bool)

(declare-fun d!265074 () Bool)

(assert (= bs!231001 (and d!265074 b!849647)))

(assert (=> bs!231001 (= (dynLambda!4267 lambda!25358 (h!14571 l!5107)) (not (isSeparator!1720 (rule!3143 (h!14571 l!5107)))))))

(assert (=> b!850029 d!265074))

(check-sat (not b!849973) (not b!849972) (not b!849678) (not b!849877) (not b!850090) (not d!264958) (not d!264956) (not d!265042) (not b!850039) b_and!74375 (not b_next!25733) (not d!264948) (not d!265030) (not b!849987) b_and!74341 (not b_next!25715) (not b!849900) (not b!849770) b_and!74387 (not b_next!25721) (not b!849719) (not b!849712) (not b!850093) (not b!850030) b_and!74389 (not d!264996) (not b!849986) (not b!849902) (not d!265036) (not b_next!25739) b_and!74345 b_and!74385 (not b!850017) (not d!265064) (not d!265050) (not b_lambda!28253) (not b!850082) b_and!74349 (not b!850015) (not b!850083) (not b!849971) (not b!850086) b_and!74371 (not tb!59453) (not b!849981) (not d!265054) (not b!849980) (not b!850059) (not b!849886) (not b!850092) (not b!850036) (not b!849878) b_and!74373 (not b!850024) (not b!849718) (not b!849885) (not b!849771) (not b!850011) (not b_next!25713) (not b!849893) (not b!850068) (not d!265040) (not b!850032) (not b!850014) (not b!849876) (not b_lambda!28255) (not b_lambda!28257) (not b!850052) (not b!850022) (not b!850087) (not b!849687) (not b!849721) tp_is_empty!3969 (not d!265052) (not b_next!25723) (not d!264934) (not b_next!25719) (not d!264974) (not d!265070) (not tb!59459) (not b!850053) (not d!265026) (not b!849901) (not b_next!25737) (not b!850018) (not b!850035) (not d!264950) (not b!849892) (not d!265058) (not b!849978) (not b!849891) (not b!849894) (not b!849982) (not b!849720) (not d!264960) (not b_next!25717) (not b!850091) (not b!849711) (not b!850088) (not b!849713) (not b!849773) (not b_next!25735) (not b!849979) (not b!850081) (not b!849769) b_and!74391 (not b!849985) (not d!265020) (not d!265062) (not b!850038) (not b!850054) (not b!850023) (not b!849899) (not b!850069))
(check-sat b_and!74387 (not b_next!25721) b_and!74389 b_and!74385 b_and!74349 b_and!74371 b_and!74373 (not b_next!25713) (not b_next!25737) (not b_next!25717) (not b_next!25735) b_and!74391 b_and!74375 (not b_next!25733) b_and!74341 (not b_next!25715) (not b_next!25739) b_and!74345 (not b_next!25723) (not b_next!25719))
(get-model)

(declare-fun d!265102 () Bool)

(declare-fun res!388617 () Bool)

(declare-fun e!559511 () Bool)

(assert (=> d!265102 (=> res!388617 e!559511)))

(assert (=> d!265102 (= res!388617 (not ((_ is Cons!9171) (t!95237 rules!2621))))))

(assert (=> d!265102 (= (sepAndNonSepRulesDisjointChars!520 rules!2621 (t!95237 rules!2621)) e!559511)))

(declare-fun b!850142 () Bool)

(declare-fun e!559512 () Bool)

(assert (=> b!850142 (= e!559511 e!559512)))

(declare-fun res!388618 () Bool)

(assert (=> b!850142 (=> (not res!388618) (not e!559512))))

(assert (=> b!850142 (= res!388618 (ruleDisjointCharsFromAllFromOtherType!235 (h!14572 (t!95237 rules!2621)) rules!2621))))

(declare-fun b!850143 () Bool)

(assert (=> b!850143 (= e!559512 (sepAndNonSepRulesDisjointChars!520 rules!2621 (t!95237 (t!95237 rules!2621))))))

(assert (= (and d!265102 (not res!388617)) b!850142))

(assert (= (and b!850142 res!388618) b!850143))

(declare-fun m!1088203 () Bool)

(assert (=> b!850142 m!1088203))

(declare-fun m!1088205 () Bool)

(assert (=> b!850143 m!1088205))

(assert (=> b!849900 d!265102))

(declare-fun d!265104 () Bool)

(declare-fun c!138037 () Bool)

(assert (=> d!265104 (= c!138037 ((_ is Node!3038) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(declare-fun e!559517 () Bool)

(assert (=> d!265104 (= (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))) e!559517)))

(declare-fun b!850150 () Bool)

(declare-fun inv!11657 (Conc!3038) Bool)

(assert (=> b!850150 (= e!559517 (inv!11657 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(declare-fun b!850151 () Bool)

(declare-fun e!559518 () Bool)

(assert (=> b!850151 (= e!559517 e!559518)))

(declare-fun res!388621 () Bool)

(assert (=> b!850151 (= res!388621 (not ((_ is Leaf!4486) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))))))

(assert (=> b!850151 (=> res!388621 e!559518)))

(declare-fun b!850152 () Bool)

(declare-fun inv!11658 (Conc!3038) Bool)

(assert (=> b!850152 (= e!559518 (inv!11658 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(assert (= (and d!265104 c!138037) b!850150))

(assert (= (and d!265104 (not c!138037)) b!850151))

(assert (= (and b!850151 (not res!388621)) b!850152))

(declare-fun m!1088207 () Bool)

(assert (=> b!850150 m!1088207))

(declare-fun m!1088209 () Bool)

(assert (=> b!850152 m!1088209))

(assert (=> b!849891 d!265104))

(declare-fun d!265106 () Bool)

(assert (=> d!265106 (= (inv!11648 (tag!1982 (h!14572 (t!95237 rules!2621)))) (= (mod (str.len (value!55718 (tag!1982 (h!14572 (t!95237 rules!2621))))) 2) 0))))

(assert (=> b!850069 d!265106))

(declare-fun d!265108 () Bool)

(declare-fun res!388622 () Bool)

(declare-fun e!559519 () Bool)

(assert (=> d!265108 (=> (not res!388622) (not e!559519))))

(assert (=> d!265108 (= res!388622 (semiInverseModEq!668 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))))))

(assert (=> d!265108 (= (inv!11652 (transformation!1720 (h!14572 (t!95237 rules!2621)))) e!559519)))

(declare-fun b!850153 () Bool)

(assert (=> b!850153 (= e!559519 (equivClasses!635 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))))))

(assert (= (and d!265108 res!388622) b!850153))

(declare-fun m!1088211 () Bool)

(assert (=> d!265108 m!1088211))

(declare-fun m!1088213 () Bool)

(assert (=> b!850153 m!1088213))

(assert (=> b!850069 d!265108))

(declare-fun d!265110 () Bool)

(declare-fun lt!322192 () Int)

(assert (=> d!265110 (>= lt!322192 0)))

(declare-fun e!559522 () Int)

(assert (=> d!265110 (= lt!322192 e!559522)))

(declare-fun c!138040 () Bool)

(assert (=> d!265110 (= c!138040 ((_ is Nil!9169) (originalCharacters!2276 separatorToken!297)))))

(assert (=> d!265110 (= (size!7641 (originalCharacters!2276 separatorToken!297)) lt!322192)))

(declare-fun b!850158 () Bool)

(assert (=> b!850158 (= e!559522 0)))

(declare-fun b!850159 () Bool)

(assert (=> b!850159 (= e!559522 (+ 1 (size!7641 (t!95235 (originalCharacters!2276 separatorToken!297)))))))

(assert (= (and d!265110 c!138040) b!850158))

(assert (= (and d!265110 (not c!138040)) b!850159))

(declare-fun m!1088215 () Bool)

(assert (=> b!850159 m!1088215))

(assert (=> b!849893 d!265110))

(declare-fun lt!322198 () List!9185)

(declare-fun b!850174 () Bool)

(declare-fun e!559530 () Bool)

(assert (=> b!850174 (= e!559530 (or (not (= (++!2376 lt!322159 lt!322160) Nil!9169)) (= lt!322198 lt!322162)))))

(declare-fun d!265114 () Bool)

(assert (=> d!265114 e!559530))

(declare-fun res!388631 () Bool)

(assert (=> d!265114 (=> (not res!388631) (not e!559530))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1342 (List!9185) (InoxSet C!4876))

(assert (=> d!265114 (= res!388631 (= (content!1342 lt!322198) ((_ map or) (content!1342 lt!322162) (content!1342 (++!2376 lt!322159 lt!322160)))))))

(declare-fun e!559531 () List!9185)

(assert (=> d!265114 (= lt!322198 e!559531)))

(declare-fun c!138043 () Bool)

(assert (=> d!265114 (= c!138043 ((_ is Nil!9169) lt!322162))))

(assert (=> d!265114 (= (++!2376 lt!322162 (++!2376 lt!322159 lt!322160)) lt!322198)))

(declare-fun b!850173 () Bool)

(declare-fun res!388630 () Bool)

(assert (=> b!850173 (=> (not res!388630) (not e!559530))))

(assert (=> b!850173 (= res!388630 (= (size!7641 lt!322198) (+ (size!7641 lt!322162) (size!7641 (++!2376 lt!322159 lt!322160)))))))

(declare-fun b!850172 () Bool)

(assert (=> b!850172 (= e!559531 (Cons!9169 (h!14570 lt!322162) (++!2376 (t!95235 lt!322162) (++!2376 lt!322159 lt!322160))))))

(declare-fun b!850171 () Bool)

(assert (=> b!850171 (= e!559531 (++!2376 lt!322159 lt!322160))))

(assert (= (and d!265114 c!138043) b!850171))

(assert (= (and d!265114 (not c!138043)) b!850172))

(assert (= (and d!265114 res!388631) b!850173))

(assert (= (and b!850173 res!388630) b!850174))

(declare-fun m!1088223 () Bool)

(assert (=> d!265114 m!1088223))

(declare-fun m!1088225 () Bool)

(assert (=> d!265114 m!1088225))

(assert (=> d!265114 m!1088035))

(declare-fun m!1088227 () Bool)

(assert (=> d!265114 m!1088227))

(declare-fun m!1088229 () Bool)

(assert (=> b!850173 m!1088229))

(declare-fun m!1088231 () Bool)

(assert (=> b!850173 m!1088231))

(assert (=> b!850173 m!1088035))

(declare-fun m!1088233 () Bool)

(assert (=> b!850173 m!1088233))

(assert (=> b!850172 m!1088035))

(declare-fun m!1088235 () Bool)

(assert (=> b!850172 m!1088235))

(assert (=> b!850035 d!265114))

(declare-fun d!265118 () Bool)

(declare-fun list!3601 (Conc!3038) List!9185)

(assert (=> d!265118 (= (list!3598 (charsOf!989 (h!14571 lt!321981))) (list!3601 (c!137983 (charsOf!989 (h!14571 lt!321981)))))))

(declare-fun bs!231012 () Bool)

(assert (= bs!231012 d!265118))

(declare-fun m!1088243 () Bool)

(assert (=> bs!231012 m!1088243))

(assert (=> b!850035 d!265118))

(declare-fun d!265122 () Bool)

(assert (=> d!265122 (= ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981)) (Cons!9170 (h!14571 lt!321981) ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)))))

(assert (=> b!850035 d!265122))

(declare-fun d!265124 () Bool)

(declare-fun lt!322207 () BalanceConc!6090)

(assert (=> d!265124 (= (list!3598 lt!322207) (originalCharacters!2276 separatorToken!297))))

(assert (=> d!265124 (= lt!322207 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))

(assert (=> d!265124 (= (charsOf!989 separatorToken!297) lt!322207)))

(declare-fun b_lambda!28263 () Bool)

(assert (=> (not b_lambda!28263) (not d!265124)))

(assert (=> d!265124 t!95269))

(declare-fun b_and!74413 () Bool)

(assert (= b_and!74371 (and (=> t!95269 result!68900) b_and!74413)))

(assert (=> d!265124 t!95292))

(declare-fun b_and!74415 () Bool)

(assert (= b_and!74391 (and (=> t!95292 result!68936) b_and!74415)))

(assert (=> d!265124 t!95271))

(declare-fun b_and!74417 () Bool)

(assert (= b_and!74373 (and (=> t!95271 result!68902) b_and!74417)))

(assert (=> d!265124 t!95288))

(declare-fun b_and!74419 () Bool)

(assert (= b_and!74387 (and (=> t!95288 result!68930) b_and!74419)))

(assert (=> d!265124 t!95273))

(declare-fun b_and!74421 () Bool)

(assert (= b_and!74375 (and (=> t!95273 result!68904) b_and!74421)))

(declare-fun m!1088253 () Bool)

(assert (=> d!265124 m!1088253))

(assert (=> d!265124 m!1087835))

(assert (=> b!850035 d!265124))

(declare-fun b!850176 () Bool)

(declare-fun e!559534 () List!9185)

(assert (=> b!850176 (= e!559534 Nil!9169)))

(declare-fun d!265128 () Bool)

(declare-fun lt!322215 () List!9186)

(assert (=> d!265128 (= (printList!472 thiss!20117 lt!322215) (printWithSeparatorTokenList!30 thiss!20117 (t!95236 lt!321981) separatorToken!297))))

(declare-fun e!559535 () List!9186)

(assert (=> d!265128 (= lt!322215 e!559535)))

(declare-fun c!138044 () Bool)

(assert (=> d!265128 (= c!138044 ((_ is Cons!9170) (t!95236 lt!321981)))))

(declare-fun e!559537 () Bool)

(assert (=> d!265128 e!559537))

(declare-fun res!388632 () Bool)

(assert (=> d!265128 (=> (not res!388632) (not e!559537))))

(assert (=> d!265128 (= res!388632 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(assert (=> d!265128 (= (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) lt!322215)))

(declare-fun e!559536 () Bool)

(declare-fun b!850177 () Bool)

(assert (=> b!850177 (= e!559536 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 lt!321981)))) e!559534))))

(declare-fun c!138045 () Bool)

(declare-fun lt!322213 () List!9186)

(assert (=> b!850177 (= c!138045 ((_ is Cons!9170) lt!322213))))

(assert (=> b!850177 (= lt!322213 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 lt!321981))))))

(declare-fun b!850178 () Bool)

(declare-fun res!388635 () Bool)

(assert (=> b!850178 (=> (not res!388635) (not e!559537))))

(assert (=> b!850178 (= res!388635 e!559536)))

(declare-fun res!388633 () Bool)

(assert (=> b!850178 (=> res!388633 e!559536)))

(assert (=> b!850178 (= res!388633 (not ((_ is Cons!9170) (t!95236 lt!321981))))))

(declare-fun b!850179 () Bool)

(declare-fun e!559538 () Bool)

(assert (=> b!850179 (= e!559537 e!559538)))

(declare-fun res!388634 () Bool)

(assert (=> b!850179 (=> res!388634 e!559538)))

(assert (=> b!850179 (= res!388634 (not ((_ is Cons!9170) (t!95236 lt!321981))))))

(declare-fun b!850180 () Bool)

(assert (=> b!850180 (= e!559535 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 lt!321981))))))

(declare-fun lt!322214 () List!9185)

(assert (=> b!850180 (= lt!322214 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!321981)))))))

(declare-fun lt!322211 () List!9185)

(assert (=> b!850180 (= lt!322211 (list!3598 (charsOf!989 separatorToken!297)))))

(declare-fun lt!322212 () List!9185)

(assert (=> b!850180 (= lt!322212 (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297)))))

(declare-fun lt!322210 () Unit!13653)

(assert (=> b!850180 (= lt!322210 (lemmaConcatAssociativity!747 lt!322214 lt!322211 lt!322212))))

(assert (=> b!850180 (= (++!2376 (++!2376 lt!322214 lt!322211) lt!322212) (++!2376 lt!322214 (++!2376 lt!322211 lt!322212)))))

(declare-fun lt!322208 () Unit!13653)

(assert (=> b!850180 (= lt!322208 lt!322210)))

(declare-fun b!850181 () Bool)

(assert (=> b!850181 (= e!559534 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322213))) (printList!472 thiss!20117 (t!95236 lt!322213))))))

(declare-fun b!850182 () Bool)

(declare-fun e!559533 () List!9185)

(assert (=> b!850182 (= e!559533 Nil!9169)))

(declare-fun b!850183 () Bool)

(assert (=> b!850183 (= e!559538 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297) separatorToken!297)) e!559533))))

(declare-fun c!138046 () Bool)

(declare-fun lt!322209 () List!9186)

(assert (=> b!850183 (= c!138046 ((_ is Cons!9170) lt!322209))))

(assert (=> b!850183 (= lt!322209 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 lt!321981)) separatorToken!297) separatorToken!297))))

(declare-fun b!850184 () Bool)

(assert (=> b!850184 (= e!559533 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322209))) (printList!472 thiss!20117 (t!95236 lt!322209))))))

(declare-fun b!850185 () Bool)

(assert (=> b!850185 (= e!559535 Nil!9170)))

(assert (= (and d!265128 res!388632) b!850178))

(assert (= (and b!850178 (not res!388633)) b!850177))

(assert (= (and b!850177 c!138045) b!850181))

(assert (= (and b!850177 (not c!138045)) b!850176))

(assert (= (and b!850178 res!388635) b!850179))

(assert (= (and b!850179 (not res!388634)) b!850183))

(assert (= (and b!850183 c!138046) b!850184))

(assert (= (and b!850183 (not c!138046)) b!850182))

(assert (= (and d!265128 c!138044) b!850180))

(assert (= (and d!265128 (not c!138044)) b!850185))

(declare-fun m!1088255 () Bool)

(assert (=> b!850183 m!1088255))

(assert (=> b!850183 m!1088255))

(declare-fun m!1088257 () Bool)

(assert (=> b!850183 m!1088257))

(assert (=> b!850183 m!1088257))

(declare-fun m!1088259 () Bool)

(assert (=> b!850183 m!1088259))

(declare-fun m!1088261 () Bool)

(assert (=> b!850181 m!1088261))

(assert (=> b!850181 m!1088261))

(declare-fun m!1088263 () Bool)

(assert (=> b!850181 m!1088263))

(declare-fun m!1088265 () Bool)

(assert (=> b!850181 m!1088265))

(assert (=> b!850181 m!1088263))

(assert (=> b!850181 m!1088265))

(declare-fun m!1088267 () Bool)

(assert (=> b!850181 m!1088267))

(assert (=> b!850180 m!1088257))

(declare-fun m!1088269 () Bool)

(assert (=> b!850180 m!1088269))

(declare-fun m!1088271 () Bool)

(assert (=> b!850180 m!1088271))

(declare-fun m!1088273 () Bool)

(assert (=> b!850180 m!1088273))

(declare-fun m!1088275 () Bool)

(assert (=> b!850180 m!1088275))

(declare-fun m!1088277 () Bool)

(assert (=> b!850180 m!1088277))

(assert (=> b!850180 m!1087951))

(assert (=> b!850180 m!1088255))

(assert (=> b!850180 m!1088257))

(declare-fun m!1088279 () Bool)

(assert (=> b!850180 m!1088279))

(assert (=> b!850180 m!1088255))

(assert (=> b!850180 m!1087951))

(assert (=> b!850180 m!1087955))

(assert (=> b!850180 m!1088255))

(declare-fun m!1088281 () Bool)

(assert (=> b!850180 m!1088281))

(declare-fun m!1088283 () Bool)

(assert (=> b!850180 m!1088283))

(assert (=> b!850180 m!1088279))

(declare-fun m!1088285 () Bool)

(assert (=> b!850180 m!1088285))

(assert (=> b!850180 m!1088275))

(assert (=> b!850180 m!1088271))

(assert (=> b!850177 m!1088255))

(assert (=> b!850177 m!1088255))

(assert (=> b!850177 m!1088257))

(assert (=> b!850177 m!1088257))

(assert (=> b!850177 m!1088269))

(assert (=> b!850177 m!1088269))

(declare-fun m!1088287 () Bool)

(assert (=> b!850177 m!1088287))

(declare-fun m!1088289 () Bool)

(assert (=> d!265128 m!1088289))

(declare-fun m!1088291 () Bool)

(assert (=> d!265128 m!1088291))

(declare-fun m!1088293 () Bool)

(assert (=> b!850184 m!1088293))

(assert (=> b!850184 m!1088293))

(declare-fun m!1088295 () Bool)

(assert (=> b!850184 m!1088295))

(declare-fun m!1088297 () Bool)

(assert (=> b!850184 m!1088297))

(assert (=> b!850184 m!1088295))

(assert (=> b!850184 m!1088297))

(declare-fun m!1088299 () Bool)

(assert (=> b!850184 m!1088299))

(assert (=> b!850035 d!265128))

(declare-fun d!265130 () Bool)

(assert (=> d!265130 (= (list!3598 (charsOf!989 separatorToken!297)) (list!3601 (c!137983 (charsOf!989 separatorToken!297))))))

(declare-fun bs!231013 () Bool)

(assert (= bs!231013 d!265130))

(declare-fun m!1088301 () Bool)

(assert (=> bs!231013 m!1088301))

(assert (=> b!850035 d!265130))

(declare-fun d!265132 () Bool)

(declare-fun c!138049 () Bool)

(assert (=> d!265132 (= c!138049 ((_ is Cons!9170) (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)))))

(declare-fun e!559541 () List!9185)

(assert (=> d!265132 (= (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)) e!559541)))

(declare-fun b!850190 () Bool)

(assert (=> b!850190 (= e!559541 (++!2376 (list!3598 (charsOf!989 (h!14571 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)))) (printList!472 thiss!20117 (t!95236 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)))))))

(declare-fun b!850191 () Bool)

(assert (=> b!850191 (= e!559541 Nil!9169)))

(assert (= (and d!265132 c!138049) b!850190))

(assert (= (and d!265132 (not c!138049)) b!850191))

(declare-fun m!1088303 () Bool)

(assert (=> b!850190 m!1088303))

(assert (=> b!850190 m!1088303))

(declare-fun m!1088305 () Bool)

(assert (=> b!850190 m!1088305))

(declare-fun m!1088307 () Bool)

(assert (=> b!850190 m!1088307))

(assert (=> b!850190 m!1088305))

(assert (=> b!850190 m!1088307))

(declare-fun m!1088309 () Bool)

(assert (=> b!850190 m!1088309))

(assert (=> b!850035 d!265132))

(declare-fun d!265134 () Bool)

(assert (=> d!265134 (= ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (Cons!9170 separatorToken!297 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297)))))

(assert (=> b!850035 d!265134))

(declare-fun b!850195 () Bool)

(declare-fun e!559542 () Bool)

(declare-fun lt!322216 () List!9185)

(assert (=> b!850195 (= e!559542 (or (not (= lt!322160 Nil!9169)) (= lt!322216 (++!2376 lt!322162 lt!322159))))))

(declare-fun d!265136 () Bool)

(assert (=> d!265136 e!559542))

(declare-fun res!388637 () Bool)

(assert (=> d!265136 (=> (not res!388637) (not e!559542))))

(assert (=> d!265136 (= res!388637 (= (content!1342 lt!322216) ((_ map or) (content!1342 (++!2376 lt!322162 lt!322159)) (content!1342 lt!322160))))))

(declare-fun e!559543 () List!9185)

(assert (=> d!265136 (= lt!322216 e!559543)))

(declare-fun c!138050 () Bool)

(assert (=> d!265136 (= c!138050 ((_ is Nil!9169) (++!2376 lt!322162 lt!322159)))))

(assert (=> d!265136 (= (++!2376 (++!2376 lt!322162 lt!322159) lt!322160) lt!322216)))

(declare-fun b!850194 () Bool)

(declare-fun res!388636 () Bool)

(assert (=> b!850194 (=> (not res!388636) (not e!559542))))

(assert (=> b!850194 (= res!388636 (= (size!7641 lt!322216) (+ (size!7641 (++!2376 lt!322162 lt!322159)) (size!7641 lt!322160))))))

(declare-fun b!850193 () Bool)

(assert (=> b!850193 (= e!559543 (Cons!9169 (h!14570 (++!2376 lt!322162 lt!322159)) (++!2376 (t!95235 (++!2376 lt!322162 lt!322159)) lt!322160)))))

(declare-fun b!850192 () Bool)

(assert (=> b!850192 (= e!559543 lt!322160)))

(assert (= (and d!265136 c!138050) b!850192))

(assert (= (and d!265136 (not c!138050)) b!850193))

(assert (= (and d!265136 res!388637) b!850194))

(assert (= (and b!850194 res!388636) b!850195))

(declare-fun m!1088311 () Bool)

(assert (=> d!265136 m!1088311))

(assert (=> d!265136 m!1088027))

(declare-fun m!1088313 () Bool)

(assert (=> d!265136 m!1088313))

(declare-fun m!1088315 () Bool)

(assert (=> d!265136 m!1088315))

(declare-fun m!1088317 () Bool)

(assert (=> b!850194 m!1088317))

(assert (=> b!850194 m!1088027))

(declare-fun m!1088319 () Bool)

(assert (=> b!850194 m!1088319))

(declare-fun m!1088321 () Bool)

(assert (=> b!850194 m!1088321))

(declare-fun m!1088323 () Bool)

(assert (=> b!850193 m!1088323))

(assert (=> b!850035 d!265136))

(declare-fun e!559544 () Bool)

(declare-fun lt!322217 () List!9185)

(declare-fun b!850199 () Bool)

(assert (=> b!850199 (= e!559544 (or (not (= lt!322159 Nil!9169)) (= lt!322217 lt!322162)))))

(declare-fun d!265138 () Bool)

(assert (=> d!265138 e!559544))

(declare-fun res!388639 () Bool)

(assert (=> d!265138 (=> (not res!388639) (not e!559544))))

(assert (=> d!265138 (= res!388639 (= (content!1342 lt!322217) ((_ map or) (content!1342 lt!322162) (content!1342 lt!322159))))))

(declare-fun e!559545 () List!9185)

(assert (=> d!265138 (= lt!322217 e!559545)))

(declare-fun c!138051 () Bool)

(assert (=> d!265138 (= c!138051 ((_ is Nil!9169) lt!322162))))

(assert (=> d!265138 (= (++!2376 lt!322162 lt!322159) lt!322217)))

(declare-fun b!850198 () Bool)

(declare-fun res!388638 () Bool)

(assert (=> b!850198 (=> (not res!388638) (not e!559544))))

(assert (=> b!850198 (= res!388638 (= (size!7641 lt!322217) (+ (size!7641 lt!322162) (size!7641 lt!322159))))))

(declare-fun b!850197 () Bool)

(assert (=> b!850197 (= e!559545 (Cons!9169 (h!14570 lt!322162) (++!2376 (t!95235 lt!322162) lt!322159)))))

(declare-fun b!850196 () Bool)

(assert (=> b!850196 (= e!559545 lt!322159)))

(assert (= (and d!265138 c!138051) b!850196))

(assert (= (and d!265138 (not c!138051)) b!850197))

(assert (= (and d!265138 res!388639) b!850198))

(assert (= (and b!850198 res!388638) b!850199))

(declare-fun m!1088325 () Bool)

(assert (=> d!265138 m!1088325))

(assert (=> d!265138 m!1088225))

(declare-fun m!1088327 () Bool)

(assert (=> d!265138 m!1088327))

(declare-fun m!1088329 () Bool)

(assert (=> b!850198 m!1088329))

(assert (=> b!850198 m!1088231))

(declare-fun m!1088331 () Bool)

(assert (=> b!850198 m!1088331))

(declare-fun m!1088333 () Bool)

(assert (=> b!850197 m!1088333))

(assert (=> b!850035 d!265138))

(declare-fun d!265140 () Bool)

(assert (=> d!265140 (= (++!2376 (++!2376 lt!322162 lt!322159) lt!322160) (++!2376 lt!322162 (++!2376 lt!322159 lt!322160)))))

(declare-fun lt!322220 () Unit!13653)

(declare-fun choose!5022 (List!9185 List!9185 List!9185) Unit!13653)

(assert (=> d!265140 (= lt!322220 (choose!5022 lt!322162 lt!322159 lt!322160))))

(assert (=> d!265140 (= (lemmaConcatAssociativity!747 lt!322162 lt!322159 lt!322160) lt!322220)))

(declare-fun bs!231014 () Bool)

(assert (= bs!231014 d!265140))

(declare-fun m!1088335 () Bool)

(assert (=> bs!231014 m!1088335))

(assert (=> bs!231014 m!1088027))

(assert (=> bs!231014 m!1088029))

(assert (=> bs!231014 m!1088035))

(assert (=> bs!231014 m!1088041))

(assert (=> bs!231014 m!1088027))

(assert (=> bs!231014 m!1088035))

(assert (=> b!850035 d!265140))

(declare-fun d!265142 () Bool)

(declare-fun lt!322221 () BalanceConc!6090)

(assert (=> d!265142 (= (list!3598 lt!322221) (originalCharacters!2276 (h!14571 lt!321981)))))

(assert (=> d!265142 (= lt!322221 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981)))) (value!55719 (h!14571 lt!321981))))))

(assert (=> d!265142 (= (charsOf!989 (h!14571 lt!321981)) lt!322221)))

(declare-fun b_lambda!28265 () Bool)

(assert (=> (not b_lambda!28265) (not d!265142)))

(declare-fun t!95318 () Bool)

(declare-fun tb!59501 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95318) tb!59501))

(declare-fun b!850200 () Bool)

(declare-fun e!559546 () Bool)

(declare-fun tp!267707 () Bool)

(assert (=> b!850200 (= e!559546 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981)))) (value!55719 (h!14571 lt!321981))))) tp!267707))))

(declare-fun result!68958 () Bool)

(assert (=> tb!59501 (= result!68958 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981)))) (value!55719 (h!14571 lt!321981)))) e!559546))))

(assert (= tb!59501 b!850200))

(declare-fun m!1088337 () Bool)

(assert (=> b!850200 m!1088337))

(declare-fun m!1088339 () Bool)

(assert (=> tb!59501 m!1088339))

(assert (=> d!265142 t!95318))

(declare-fun b_and!74423 () Bool)

(assert (= b_and!74419 (and (=> t!95318 result!68958) b_and!74423)))

(declare-fun tb!59503 () Bool)

(declare-fun t!95320 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95320) tb!59503))

(declare-fun result!68960 () Bool)

(assert (= result!68960 result!68958))

(assert (=> d!265142 t!95320))

(declare-fun b_and!74425 () Bool)

(assert (= b_and!74413 (and (=> t!95320 result!68960) b_and!74425)))

(declare-fun t!95322 () Bool)

(declare-fun tb!59505 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95322) tb!59505))

(declare-fun result!68962 () Bool)

(assert (= result!68962 result!68958))

(assert (=> d!265142 t!95322))

(declare-fun b_and!74427 () Bool)

(assert (= b_and!74421 (and (=> t!95322 result!68962) b_and!74427)))

(declare-fun t!95324 () Bool)

(declare-fun tb!59507 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95324) tb!59507))

(declare-fun result!68964 () Bool)

(assert (= result!68964 result!68958))

(assert (=> d!265142 t!95324))

(declare-fun b_and!74429 () Bool)

(assert (= b_and!74417 (and (=> t!95324 result!68964) b_and!74429)))

(declare-fun t!95326 () Bool)

(declare-fun tb!59509 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95326) tb!59509))

(declare-fun result!68966 () Bool)

(assert (= result!68966 result!68958))

(assert (=> d!265142 t!95326))

(declare-fun b_and!74431 () Bool)

(assert (= b_and!74415 (and (=> t!95326 result!68966) b_and!74431)))

(declare-fun m!1088341 () Bool)

(assert (=> d!265142 m!1088341))

(declare-fun m!1088343 () Bool)

(assert (=> d!265142 m!1088343))

(assert (=> b!850035 d!265142))

(declare-fun b!850204 () Bool)

(declare-fun e!559547 () Bool)

(declare-fun lt!322222 () List!9185)

(assert (=> b!850204 (= e!559547 (or (not (= lt!322160 Nil!9169)) (= lt!322222 lt!322159)))))

(declare-fun d!265144 () Bool)

(assert (=> d!265144 e!559547))

(declare-fun res!388641 () Bool)

(assert (=> d!265144 (=> (not res!388641) (not e!559547))))

(assert (=> d!265144 (= res!388641 (= (content!1342 lt!322222) ((_ map or) (content!1342 lt!322159) (content!1342 lt!322160))))))

(declare-fun e!559548 () List!9185)

(assert (=> d!265144 (= lt!322222 e!559548)))

(declare-fun c!138052 () Bool)

(assert (=> d!265144 (= c!138052 ((_ is Nil!9169) lt!322159))))

(assert (=> d!265144 (= (++!2376 lt!322159 lt!322160) lt!322222)))

(declare-fun b!850203 () Bool)

(declare-fun res!388640 () Bool)

(assert (=> b!850203 (=> (not res!388640) (not e!559547))))

(assert (=> b!850203 (= res!388640 (= (size!7641 lt!322222) (+ (size!7641 lt!322159) (size!7641 lt!322160))))))

(declare-fun b!850202 () Bool)

(assert (=> b!850202 (= e!559548 (Cons!9169 (h!14570 lt!322159) (++!2376 (t!95235 lt!322159) lt!322160)))))

(declare-fun b!850201 () Bool)

(assert (=> b!850201 (= e!559548 lt!322160)))

(assert (= (and d!265144 c!138052) b!850201))

(assert (= (and d!265144 (not c!138052)) b!850202))

(assert (= (and d!265144 res!388641) b!850203))

(assert (= (and b!850203 res!388640) b!850204))

(declare-fun m!1088345 () Bool)

(assert (=> d!265144 m!1088345))

(assert (=> d!265144 m!1088327))

(assert (=> d!265144 m!1088315))

(declare-fun m!1088347 () Bool)

(assert (=> b!850203 m!1088347))

(assert (=> b!850203 m!1088331))

(assert (=> b!850203 m!1088321))

(declare-fun m!1088349 () Bool)

(assert (=> b!850202 m!1088349))

(assert (=> b!850035 d!265144))

(declare-fun d!265146 () Bool)

(declare-fun lt!322223 () Bool)

(declare-fun e!559550 () Bool)

(assert (=> d!265146 (= lt!322223 e!559550)))

(declare-fun res!388644 () Bool)

(assert (=> d!265146 (=> (not res!388644) (not e!559550))))

(assert (=> d!265146 (= res!388644 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 l!5107)))))) (list!3597 (singletonSeq!537 (h!14571 l!5107)))))))

(declare-fun e!559549 () Bool)

(assert (=> d!265146 (= lt!322223 e!559549)))

(declare-fun res!388642 () Bool)

(assert (=> d!265146 (=> (not res!388642) (not e!559549))))

(declare-fun lt!322224 () tuple2!10372)

(assert (=> d!265146 (= res!388642 (= (size!7642 (_1!6012 lt!322224)) 1))))

(assert (=> d!265146 (= lt!322224 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 l!5107)))))))

(assert (=> d!265146 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265146 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 l!5107)) lt!322223)))

(declare-fun b!850205 () Bool)

(declare-fun res!388643 () Bool)

(assert (=> b!850205 (=> (not res!388643) (not e!559549))))

(assert (=> b!850205 (= res!388643 (= (apply!1879 (_1!6012 lt!322224) 0) (h!14571 l!5107)))))

(declare-fun b!850206 () Bool)

(assert (=> b!850206 (= e!559549 (isEmpty!5421 (_2!6012 lt!322224)))))

(declare-fun b!850207 () Bool)

(assert (=> b!850207 (= e!559550 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 l!5107)))))))))

(assert (= (and d!265146 res!388642) b!850205))

(assert (= (and b!850205 res!388643) b!850206))

(assert (= (and d!265146 res!388644) b!850207))

(declare-fun m!1088351 () Bool)

(assert (=> d!265146 m!1088351))

(declare-fun m!1088353 () Bool)

(assert (=> d!265146 m!1088353))

(declare-fun m!1088355 () Bool)

(assert (=> d!265146 m!1088355))

(assert (=> d!265146 m!1087439))

(declare-fun m!1088357 () Bool)

(assert (=> d!265146 m!1088357))

(assert (=> d!265146 m!1088357))

(declare-fun m!1088359 () Bool)

(assert (=> d!265146 m!1088359))

(assert (=> d!265146 m!1088357))

(assert (=> d!265146 m!1088351))

(declare-fun m!1088361 () Bool)

(assert (=> d!265146 m!1088361))

(declare-fun m!1088363 () Bool)

(assert (=> b!850205 m!1088363))

(declare-fun m!1088365 () Bool)

(assert (=> b!850206 m!1088365))

(assert (=> b!850207 m!1088357))

(assert (=> b!850207 m!1088357))

(assert (=> b!850207 m!1088351))

(assert (=> b!850207 m!1088351))

(assert (=> b!850207 m!1088353))

(declare-fun m!1088367 () Bool)

(assert (=> b!850207 m!1088367))

(assert (=> b!849711 d!265146))

(declare-fun d!265148 () Bool)

(declare-fun lt!322227 () Int)

(assert (=> d!265148 (= lt!322227 (size!7641 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!321979))))))))

(declare-fun size!7645 (Conc!3038) Int)

(assert (=> d!265148 (= lt!322227 (size!7645 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979))))))))

(assert (=> d!265148 (= (size!7643 (charsOf!989 (h!14571 (t!95236 lt!321979)))) lt!322227)))

(declare-fun bs!231015 () Bool)

(assert (= bs!231015 d!265148))

(assert (=> bs!231015 m!1087805))

(declare-fun m!1088369 () Bool)

(assert (=> bs!231015 m!1088369))

(assert (=> bs!231015 m!1088369))

(declare-fun m!1088371 () Bool)

(assert (=> bs!231015 m!1088371))

(declare-fun m!1088373 () Bool)

(assert (=> bs!231015 m!1088373))

(assert (=> b!850023 d!265148))

(declare-fun d!265150 () Bool)

(declare-fun lt!322228 () BalanceConc!6090)

(assert (=> d!265150 (= (list!3598 lt!322228) (originalCharacters!2276 (h!14571 (t!95236 lt!321979))))))

(assert (=> d!265150 (= lt!322228 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979))))) (value!55719 (h!14571 (t!95236 lt!321979)))))))

(assert (=> d!265150 (= (charsOf!989 (h!14571 (t!95236 lt!321979))) lt!322228)))

(declare-fun b_lambda!28267 () Bool)

(assert (=> (not b_lambda!28267) (not d!265150)))

(declare-fun t!95328 () Bool)

(declare-fun tb!59511 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95328) tb!59511))

(declare-fun b!850208 () Bool)

(declare-fun e!559551 () Bool)

(declare-fun tp!267708 () Bool)

(assert (=> b!850208 (= e!559551 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979))))) (value!55719 (h!14571 (t!95236 lt!321979)))))) tp!267708))))

(declare-fun result!68968 () Bool)

(assert (=> tb!59511 (= result!68968 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979))))) (value!55719 (h!14571 (t!95236 lt!321979))))) e!559551))))

(assert (= tb!59511 b!850208))

(declare-fun m!1088375 () Bool)

(assert (=> b!850208 m!1088375))

(declare-fun m!1088377 () Bool)

(assert (=> tb!59511 m!1088377))

(assert (=> d!265150 t!95328))

(declare-fun b_and!74433 () Bool)

(assert (= b_and!74429 (and (=> t!95328 result!68968) b_and!74433)))

(declare-fun t!95330 () Bool)

(declare-fun tb!59513 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95330) tb!59513))

(declare-fun result!68970 () Bool)

(assert (= result!68970 result!68968))

(assert (=> d!265150 t!95330))

(declare-fun b_and!74435 () Bool)

(assert (= b_and!74425 (and (=> t!95330 result!68970) b_and!74435)))

(declare-fun tb!59515 () Bool)

(declare-fun t!95332 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95332) tb!59515))

(declare-fun result!68972 () Bool)

(assert (= result!68972 result!68968))

(assert (=> d!265150 t!95332))

(declare-fun b_and!74437 () Bool)

(assert (= b_and!74423 (and (=> t!95332 result!68972) b_and!74437)))

(declare-fun t!95334 () Bool)

(declare-fun tb!59517 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95334) tb!59517))

(declare-fun result!68974 () Bool)

(assert (= result!68974 result!68968))

(assert (=> d!265150 t!95334))

(declare-fun b_and!74439 () Bool)

(assert (= b_and!74431 (and (=> t!95334 result!68974) b_and!74439)))

(declare-fun t!95336 () Bool)

(declare-fun tb!59519 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95336) tb!59519))

(declare-fun result!68976 () Bool)

(assert (= result!68976 result!68968))

(assert (=> d!265150 t!95336))

(declare-fun b_and!74441 () Bool)

(assert (= b_and!74427 (and (=> t!95336 result!68976) b_and!74441)))

(declare-fun m!1088379 () Bool)

(assert (=> d!265150 m!1088379))

(declare-fun m!1088381 () Bool)

(assert (=> d!265150 m!1088381))

(assert (=> b!850023 d!265150))

(declare-fun d!265152 () Bool)

(assert (=> d!265152 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321979)))))

(declare-fun lt!322243 () Unit!13653)

(declare-fun choose!5023 (LexerInterface!1522 List!9187 List!9186 Token!3106) Unit!13653)

(assert (=> d!265152 (= lt!322243 (choose!5023 thiss!20117 rules!2621 lt!321979 (h!14571 (t!95236 lt!321979))))))

(assert (=> d!265152 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265152 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321979 (h!14571 (t!95236 lt!321979))) lt!322243)))

(declare-fun bs!231021 () Bool)

(assert (= bs!231021 d!265152))

(assert (=> bs!231021 m!1087989))

(declare-fun m!1088479 () Bool)

(assert (=> bs!231021 m!1088479))

(assert (=> bs!231021 m!1087439))

(assert (=> b!850023 d!265152))

(assert (=> b!850023 d!264996))

(declare-fun d!265180 () Bool)

(assert (=> d!265180 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979))))

(declare-fun lt!322244 () Unit!13653)

(assert (=> d!265180 (= lt!322244 (choose!5023 thiss!20117 rules!2621 lt!321979 (h!14571 lt!321979)))))

(assert (=> d!265180 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265180 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321979 (h!14571 lt!321979)) lt!322244)))

(declare-fun bs!231022 () Bool)

(assert (= bs!231022 d!265180))

(assert (=> bs!231022 m!1087923))

(declare-fun m!1088481 () Bool)

(assert (=> bs!231022 m!1088481))

(assert (=> bs!231022 m!1087439))

(assert (=> b!850023 d!265180))

(declare-fun d!265182 () Bool)

(declare-fun lt!322245 () Bool)

(declare-fun e!559577 () Bool)

(assert (=> d!265182 (= lt!322245 e!559577)))

(declare-fun res!388668 () Bool)

(assert (=> d!265182 (=> (not res!388668) (not e!559577))))

(assert (=> d!265182 (= res!388668 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321979)))))) (list!3597 (singletonSeq!537 (h!14571 lt!321979)))))))

(declare-fun e!559576 () Bool)

(assert (=> d!265182 (= lt!322245 e!559576)))

(declare-fun res!388666 () Bool)

(assert (=> d!265182 (=> (not res!388666) (not e!559576))))

(declare-fun lt!322246 () tuple2!10372)

(assert (=> d!265182 (= res!388666 (= (size!7642 (_1!6012 lt!322246)) 1))))

(assert (=> d!265182 (= lt!322246 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321979)))))))

(assert (=> d!265182 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265182 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979)) lt!322245)))

(declare-fun b!850245 () Bool)

(declare-fun res!388667 () Bool)

(assert (=> b!850245 (=> (not res!388667) (not e!559576))))

(assert (=> b!850245 (= res!388667 (= (apply!1879 (_1!6012 lt!322246) 0) (h!14571 lt!321979)))))

(declare-fun b!850246 () Bool)

(assert (=> b!850246 (= e!559576 (isEmpty!5421 (_2!6012 lt!322246)))))

(declare-fun b!850247 () Bool)

(assert (=> b!850247 (= e!559577 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321979)))))))))

(assert (= (and d!265182 res!388666) b!850245))

(assert (= (and b!850245 res!388667) b!850246))

(assert (= (and d!265182 res!388668) b!850247))

(declare-fun m!1088483 () Bool)

(assert (=> d!265182 m!1088483))

(declare-fun m!1088485 () Bool)

(assert (=> d!265182 m!1088485))

(declare-fun m!1088487 () Bool)

(assert (=> d!265182 m!1088487))

(assert (=> d!265182 m!1087439))

(declare-fun m!1088489 () Bool)

(assert (=> d!265182 m!1088489))

(assert (=> d!265182 m!1088489))

(declare-fun m!1088491 () Bool)

(assert (=> d!265182 m!1088491))

(assert (=> d!265182 m!1088489))

(assert (=> d!265182 m!1088483))

(declare-fun m!1088493 () Bool)

(assert (=> d!265182 m!1088493))

(declare-fun m!1088495 () Bool)

(assert (=> b!850245 m!1088495))

(declare-fun m!1088497 () Bool)

(assert (=> b!850246 m!1088497))

(assert (=> b!850247 m!1088489))

(assert (=> b!850247 m!1088489))

(assert (=> b!850247 m!1088483))

(assert (=> b!850247 m!1088483))

(assert (=> b!850247 m!1088485))

(declare-fun m!1088499 () Bool)

(assert (=> b!850247 m!1088499))

(assert (=> b!850023 d!265182))

(declare-fun d!265184 () Bool)

(declare-fun lt!322247 () Bool)

(declare-fun e!559579 () Bool)

(assert (=> d!265184 (= lt!322247 e!559579)))

(declare-fun res!388671 () Bool)

(assert (=> d!265184 (=> (not res!388671) (not e!559579))))

(assert (=> d!265184 (= res!388671 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321979))))))) (list!3597 (singletonSeq!537 (h!14571 (t!95236 lt!321979))))))))

(declare-fun e!559578 () Bool)

(assert (=> d!265184 (= lt!322247 e!559578)))

(declare-fun res!388669 () Bool)

(assert (=> d!265184 (=> (not res!388669) (not e!559578))))

(declare-fun lt!322248 () tuple2!10372)

(assert (=> d!265184 (= res!388669 (= (size!7642 (_1!6012 lt!322248)) 1))))

(assert (=> d!265184 (= lt!322248 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321979))))))))

(assert (=> d!265184 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265184 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321979))) lt!322247)))

(declare-fun b!850248 () Bool)

(declare-fun res!388670 () Bool)

(assert (=> b!850248 (=> (not res!388670) (not e!559578))))

(assert (=> b!850248 (= res!388670 (= (apply!1879 (_1!6012 lt!322248) 0) (h!14571 (t!95236 lt!321979))))))

(declare-fun b!850249 () Bool)

(assert (=> b!850249 (= e!559578 (isEmpty!5421 (_2!6012 lt!322248)))))

(declare-fun b!850250 () Bool)

(assert (=> b!850250 (= e!559579 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321979))))))))))

(assert (= (and d!265184 res!388669) b!850248))

(assert (= (and b!850248 res!388670) b!850249))

(assert (= (and d!265184 res!388671) b!850250))

(declare-fun m!1088501 () Bool)

(assert (=> d!265184 m!1088501))

(declare-fun m!1088503 () Bool)

(assert (=> d!265184 m!1088503))

(declare-fun m!1088505 () Bool)

(assert (=> d!265184 m!1088505))

(assert (=> d!265184 m!1087439))

(declare-fun m!1088507 () Bool)

(assert (=> d!265184 m!1088507))

(assert (=> d!265184 m!1088507))

(declare-fun m!1088509 () Bool)

(assert (=> d!265184 m!1088509))

(assert (=> d!265184 m!1088507))

(assert (=> d!265184 m!1088501))

(declare-fun m!1088511 () Bool)

(assert (=> d!265184 m!1088511))

(declare-fun m!1088513 () Bool)

(assert (=> b!850248 m!1088513))

(declare-fun m!1088515 () Bool)

(assert (=> b!850249 m!1088515))

(assert (=> b!850250 m!1088507))

(assert (=> b!850250 m!1088507))

(assert (=> b!850250 m!1088501))

(assert (=> b!850250 m!1088501))

(assert (=> b!850250 m!1088503))

(declare-fun m!1088519 () Bool)

(assert (=> b!850250 m!1088519))

(assert (=> b!850023 d!265184))

(declare-fun d!265186 () Bool)

(declare-fun lt!322249 () Int)

(assert (=> d!265186 (>= lt!322249 0)))

(declare-fun e!559580 () Int)

(assert (=> d!265186 (= lt!322249 e!559580)))

(declare-fun c!138060 () Bool)

(assert (=> d!265186 (= c!138060 ((_ is Nil!9169) (originalCharacters!2276 (h!14571 l!5107))))))

(assert (=> d!265186 (= (size!7641 (originalCharacters!2276 (h!14571 l!5107))) lt!322249)))

(declare-fun b!850253 () Bool)

(assert (=> b!850253 (= e!559580 0)))

(declare-fun b!850254 () Bool)

(assert (=> b!850254 (= e!559580 (+ 1 (size!7641 (t!95235 (originalCharacters!2276 (h!14571 l!5107))))))))

(assert (= (and d!265186 c!138060) b!850253))

(assert (= (and d!265186 (not c!138060)) b!850254))

(declare-fun m!1088521 () Bool)

(assert (=> b!850254 m!1088521))

(assert (=> b!849886 d!265186))

(declare-fun d!265190 () Bool)

(assert (=> d!265190 true))

(declare-fun order!5871 () Int)

(declare-fun lambda!25385 () Int)

(declare-fun dynLambda!4270 (Int Int) Int)

(assert (=> d!265190 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) (dynLambda!4270 order!5871 lambda!25385))))

(assert (=> d!265190 true))

(assert (=> d!265190 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))) (dynLambda!4270 order!5871 lambda!25385))))

(declare-fun Forall!409 (Int) Bool)

(assert (=> d!265190 (= (semiInverseModEq!668 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))) (Forall!409 lambda!25385))))

(declare-fun bs!231024 () Bool)

(assert (= bs!231024 d!265190))

(declare-fun m!1088535 () Bool)

(assert (=> bs!231024 m!1088535))

(assert (=> d!265040 d!265190))

(declare-fun bs!231025 () Bool)

(declare-fun d!265194 () Bool)

(assert (= bs!231025 (and d!265194 b!849647)))

(declare-fun lambda!25386 () Int)

(assert (=> bs!231025 (not (= lambda!25386 lambda!25358))))

(declare-fun bs!231026 () Bool)

(assert (= bs!231026 (and d!265194 d!264950)))

(assert (=> bs!231026 (= lambda!25386 lambda!25369)))

(declare-fun bs!231027 () Bool)

(assert (= bs!231027 (and d!265194 d!265050)))

(assert (=> bs!231027 (= lambda!25386 lambda!25378)))

(declare-fun bs!231028 () Bool)

(assert (= bs!231028 (and d!265194 d!264934)))

(assert (=> bs!231028 (= lambda!25386 lambda!25363)))

(declare-fun bs!231029 () Bool)

(assert (= bs!231029 (and d!265194 d!264958)))

(assert (=> bs!231029 (= lambda!25386 lambda!25370)))

(declare-fun b!850274 () Bool)

(declare-fun e!559591 () Bool)

(assert (=> b!850274 (= e!559591 true)))

(declare-fun b!850273 () Bool)

(declare-fun e!559590 () Bool)

(assert (=> b!850273 (= e!559590 e!559591)))

(declare-fun b!850272 () Bool)

(declare-fun e!559589 () Bool)

(assert (=> b!850272 (= e!559589 e!559590)))

(assert (=> d!265194 e!559589))

(assert (= b!850273 b!850274))

(assert (= b!850272 b!850273))

(assert (= (and d!265194 ((_ is Cons!9171) rules!2621)) b!850272))

(assert (=> b!850274 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25386))))

(assert (=> b!850274 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25386))))

(assert (=> d!265194 true))

(declare-fun lt!322250 () Bool)

(assert (=> d!265194 (= lt!322250 (forall!2155 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) lambda!25386))))

(declare-fun e!559586 () Bool)

(assert (=> d!265194 (= lt!322250 e!559586)))

(declare-fun res!388673 () Bool)

(assert (=> d!265194 (=> res!388673 e!559586)))

(assert (=> d!265194 (= res!388673 (not ((_ is Cons!9170) (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(assert (=> d!265194 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265194 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)) lt!322250)))

(declare-fun b!850267 () Bool)

(declare-fun e!559588 () Bool)

(assert (=> b!850267 (= e!559586 e!559588)))

(declare-fun res!388672 () Bool)

(assert (=> b!850267 (=> (not res!388672) (not e!559588))))

(assert (=> b!850267 (= res!388672 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(declare-fun b!850269 () Bool)

(assert (=> b!850269 (= e!559588 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(assert (= (and d!265194 (not res!388673)) b!850267))

(assert (= (and b!850267 res!388672) b!850269))

(assert (=> d!265194 m!1087471))

(declare-fun m!1088543 () Bool)

(assert (=> d!265194 m!1088543))

(assert (=> d!265194 m!1087439))

(declare-fun m!1088545 () Bool)

(assert (=> b!850267 m!1088545))

(declare-fun m!1088549 () Bool)

(assert (=> b!850269 m!1088549))

(assert (=> d!264974 d!265194))

(assert (=> d!264974 d!265070))

(declare-fun d!265202 () Bool)

(assert (=> d!265202 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))

(assert (=> d!265202 true))

(declare-fun _$32!319 () Unit!13653)

(assert (=> d!265202 (= (choose!5019 thiss!20117 rules!2621 lt!321981 separatorToken!297) _$32!319)))

(declare-fun bs!231038 () Bool)

(assert (= bs!231038 d!265202))

(assert (=> bs!231038 m!1087471))

(assert (=> bs!231038 m!1087471))

(assert (=> bs!231038 m!1087609))

(assert (=> d!264974 d!265202))

(assert (=> d!264974 d!265056))

(declare-fun bs!231039 () Bool)

(declare-fun d!265210 () Bool)

(assert (= bs!231039 (and d!265210 b!849647)))

(declare-fun lambda!25391 () Int)

(assert (=> bs!231039 (not (= lambda!25391 lambda!25358))))

(declare-fun bs!231040 () Bool)

(assert (= bs!231040 (and d!265210 d!265050)))

(assert (=> bs!231040 (= lambda!25391 lambda!25378)))

(declare-fun bs!231041 () Bool)

(assert (= bs!231041 (and d!265210 d!264934)))

(assert (=> bs!231041 (= lambda!25391 lambda!25363)))

(declare-fun bs!231042 () Bool)

(assert (= bs!231042 (and d!265210 d!264958)))

(assert (=> bs!231042 (= lambda!25391 lambda!25370)))

(declare-fun bs!231043 () Bool)

(assert (= bs!231043 (and d!265210 d!264950)))

(assert (=> bs!231043 (= lambda!25391 lambda!25369)))

(declare-fun bs!231044 () Bool)

(assert (= bs!231044 (and d!265210 d!265194)))

(assert (=> bs!231044 (= lambda!25391 lambda!25386)))

(declare-fun b!850294 () Bool)

(declare-fun e!559604 () Bool)

(assert (=> b!850294 (= e!559604 true)))

(declare-fun b!850293 () Bool)

(declare-fun e!559603 () Bool)

(assert (=> b!850293 (= e!559603 e!559604)))

(declare-fun b!850292 () Bool)

(declare-fun e!559602 () Bool)

(assert (=> b!850292 (= e!559602 e!559603)))

(assert (=> d!265210 e!559602))

(assert (= b!850293 b!850294))

(assert (= b!850292 b!850293))

(assert (= (and d!265210 ((_ is Cons!9171) rules!2621)) b!850292))

(assert (=> b!850294 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25391))))

(assert (=> b!850294 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25391))))

(assert (=> d!265210 true))

(declare-fun lt!322255 () Bool)

(assert (=> d!265210 (= lt!322255 (forall!2155 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297) lambda!25391))))

(declare-fun e!559600 () Bool)

(assert (=> d!265210 (= lt!322255 e!559600)))

(declare-fun res!388678 () Bool)

(assert (=> d!265210 (=> res!388678 e!559600)))

(assert (=> d!265210 (= res!388678 (not ((_ is Cons!9170) (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!265210 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265210 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297)) lt!322255)))

(declare-fun b!850290 () Bool)

(declare-fun e!559601 () Bool)

(assert (=> b!850290 (= e!559600 e!559601)))

(declare-fun res!388677 () Bool)

(assert (=> b!850290 (=> (not res!388677) (not e!559601))))

(assert (=> b!850290 (= res!388677 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!850291 () Bool)

(assert (=> b!850291 (= e!559601 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!265210 (not res!388678)) b!850290))

(assert (= (and b!850290 res!388677) b!850291))

(assert (=> d!265210 m!1087467))

(declare-fun m!1088561 () Bool)

(assert (=> d!265210 m!1088561))

(assert (=> d!265210 m!1087439))

(declare-fun m!1088563 () Bool)

(assert (=> b!850290 m!1088563))

(declare-fun m!1088565 () Bool)

(assert (=> b!850291 m!1088565))

(assert (=> d!265054 d!265210))

(assert (=> d!265054 d!265052))

(declare-fun d!265212 () Bool)

(assert (=> d!265212 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!265212 true))

(declare-fun _$32!320 () Unit!13653)

(assert (=> d!265212 (= (choose!5019 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!320)))

(declare-fun bs!231045 () Bool)

(assert (= bs!231045 d!265212))

(assert (=> bs!231045 m!1087467))

(assert (=> bs!231045 m!1087467))

(assert (=> bs!231045 m!1087977))

(assert (=> d!265054 d!265212))

(assert (=> d!265054 d!265056))

(declare-fun d!265214 () Bool)

(declare-fun c!138070 () Bool)

(assert (=> d!265214 (= c!138070 ((_ is IntegerValue!5358) (value!55719 (h!14571 (t!95236 l!5107)))))))

(declare-fun e!559605 () Bool)

(assert (=> d!265214 (= (inv!21 (value!55719 (h!14571 (t!95236 l!5107)))) e!559605)))

(declare-fun b!850295 () Bool)

(declare-fun e!559607 () Bool)

(assert (=> b!850295 (= e!559607 (inv!15 (value!55719 (h!14571 (t!95236 l!5107)))))))

(declare-fun b!850296 () Bool)

(declare-fun e!559606 () Bool)

(assert (=> b!850296 (= e!559606 (inv!17 (value!55719 (h!14571 (t!95236 l!5107)))))))

(declare-fun b!850297 () Bool)

(assert (=> b!850297 (= e!559605 (inv!16 (value!55719 (h!14571 (t!95236 l!5107)))))))

(declare-fun b!850298 () Bool)

(assert (=> b!850298 (= e!559605 e!559606)))

(declare-fun c!138069 () Bool)

(assert (=> b!850298 (= c!138069 ((_ is IntegerValue!5359) (value!55719 (h!14571 (t!95236 l!5107)))))))

(declare-fun b!850299 () Bool)

(declare-fun res!388679 () Bool)

(assert (=> b!850299 (=> res!388679 e!559607)))

(assert (=> b!850299 (= res!388679 (not ((_ is IntegerValue!5360) (value!55719 (h!14571 (t!95236 l!5107))))))))

(assert (=> b!850299 (= e!559606 e!559607)))

(assert (= (and d!265214 c!138070) b!850297))

(assert (= (and d!265214 (not c!138070)) b!850298))

(assert (= (and b!850298 c!138069) b!850296))

(assert (= (and b!850298 (not c!138069)) b!850299))

(assert (= (and b!850299 (not res!388679)) b!850295))

(declare-fun m!1088567 () Bool)

(assert (=> b!850295 m!1088567))

(declare-fun m!1088569 () Bool)

(assert (=> b!850296 m!1088569))

(declare-fun m!1088571 () Bool)

(assert (=> b!850297 m!1088571))

(assert (=> b!850082 d!265214))

(declare-fun d!265216 () Bool)

(declare-fun charsToBigInt!1 (List!9184) Int)

(assert (=> d!265216 (= (inv!17 (value!55719 separatorToken!297)) (= (charsToBigInt!1 (text!12950 (value!55719 separatorToken!297))) (value!55711 (value!55719 separatorToken!297))))))

(declare-fun bs!231046 () Bool)

(assert (= bs!231046 d!265216))

(declare-fun m!1088573 () Bool)

(assert (=> bs!231046 m!1088573))

(assert (=> b!849877 d!265216))

(declare-fun d!265218 () Bool)

(declare-fun c!138071 () Bool)

(assert (=> d!265218 (= c!138071 ((_ is Node!3038) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(declare-fun e!559608 () Bool)

(assert (=> d!265218 (= (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))) e!559608)))

(declare-fun b!850300 () Bool)

(assert (=> b!850300 (= e!559608 (inv!11657 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(declare-fun b!850301 () Bool)

(declare-fun e!559609 () Bool)

(assert (=> b!850301 (= e!559608 e!559609)))

(declare-fun res!388680 () Bool)

(assert (=> b!850301 (= res!388680 (not ((_ is Leaf!4486) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))))))

(assert (=> b!850301 (=> res!388680 e!559609)))

(declare-fun b!850302 () Bool)

(assert (=> b!850302 (= e!559609 (inv!11658 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(assert (= (and d!265218 c!138071) b!850300))

(assert (= (and d!265218 (not c!138071)) b!850301))

(assert (= (and b!850301 (not res!388680)) b!850302))

(declare-fun m!1088575 () Bool)

(assert (=> b!850300 m!1088575))

(declare-fun m!1088577 () Bool)

(assert (=> b!850302 m!1088577))

(assert (=> b!849894 d!265218))

(declare-fun d!265220 () Bool)

(assert (=> d!265220 (= (inv!17 (value!55719 (h!14571 l!5107))) (= (charsToBigInt!1 (text!12950 (value!55719 (h!14571 l!5107)))) (value!55711 (value!55719 (h!14571 l!5107)))))))

(declare-fun bs!231047 () Bool)

(assert (= bs!231047 d!265220))

(declare-fun m!1088579 () Bool)

(assert (=> bs!231047 m!1088579))

(assert (=> b!849981 d!265220))

(declare-fun lt!322289 () Bool)

(declare-fun d!265222 () Bool)

(declare-fun prefixMatch!10 (Regex!2153 List!9185) Bool)

(assert (=> d!265222 (= lt!322289 (prefixMatch!10 (rulesRegex!22 thiss!20117 rules!2621) (list!3598 (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))))))

(declare-datatypes ((List!9192 0))(
  ( (Nil!9176) (Cons!9176 (h!14577 Regex!2153) (t!95600 List!9192)) )
))
(declare-datatypes ((Context!870 0))(
  ( (Context!871 (exprs!935 List!9192)) )
))
(declare-fun prefixMatchZipperSequence!33 ((InoxSet Context!870) BalanceConc!6090 Int) Bool)

(declare-fun focus!30 (Regex!2153) (InoxSet Context!870))

(assert (=> d!265222 (= lt!322289 (prefixMatchZipperSequence!33 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)) (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))) 0))))

(declare-fun lt!322293 () Unit!13653)

(declare-fun lt!322296 () Unit!13653)

(assert (=> d!265222 (= lt!322293 lt!322296)))

(declare-fun lt!322294 () (InoxSet Context!870))

(declare-fun lt!322291 () List!9185)

(declare-fun prefixMatchZipper!10 ((InoxSet Context!870) List!9185) Bool)

(assert (=> d!265222 (= (prefixMatch!10 (rulesRegex!22 thiss!20117 rules!2621) lt!322291) (prefixMatchZipper!10 lt!322294 lt!322291))))

(declare-datatypes ((List!9193 0))(
  ( (Nil!9177) (Cons!9177 (h!14578 Context!870) (t!95601 List!9193)) )
))
(declare-fun lt!322295 () List!9193)

(declare-fun prefixMatchZipperRegexEquiv!10 ((InoxSet Context!870) List!9193 Regex!2153 List!9185) Unit!13653)

(assert (=> d!265222 (= lt!322296 (prefixMatchZipperRegexEquiv!10 lt!322294 lt!322295 (rulesRegex!22 thiss!20117 rules!2621) lt!322291))))

(assert (=> d!265222 (= lt!322291 (list!3598 (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0)))))))

(declare-fun toList!576 ((InoxSet Context!870)) List!9193)

(assert (=> d!265222 (= lt!322295 (toList!576 (focus!30 (rulesRegex!22 thiss!20117 rules!2621))))))

(assert (=> d!265222 (= lt!322294 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)))))

(declare-fun lt!322292 () Unit!13653)

(declare-fun lt!322290 () Unit!13653)

(assert (=> d!265222 (= lt!322292 lt!322290)))

(declare-fun lt!322298 () Int)

(declare-fun lt!322297 () (InoxSet Context!870))

(declare-fun dropList!272 (BalanceConc!6090 Int) List!9185)

(assert (=> d!265222 (= (prefixMatchZipper!10 lt!322297 (dropList!272 (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))) lt!322298)) (prefixMatchZipperSequence!33 lt!322297 (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))) lt!322298))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!10 ((InoxSet Context!870) BalanceConc!6090 Int) Unit!13653)

(assert (=> d!265222 (= lt!322290 (lemmaprefixMatchZipperSequenceEquivalent!10 lt!322297 (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))) lt!322298))))

(assert (=> d!265222 (= lt!322298 0)))

(assert (=> d!265222 (= lt!322297 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)))))

(declare-fun validRegex!660 (Regex!2153) Bool)

(assert (=> d!265222 (validRegex!660 (rulesRegex!22 thiss!20117 rules!2621))))

(assert (=> d!265222 (= (prefixMatchZipperSequence!31 (rulesRegex!22 thiss!20117 rules!2621) (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0)))) lt!322289)))

(declare-fun bs!231052 () Bool)

(assert (= bs!231052 d!265222))

(assert (=> bs!231052 m!1087999))

(declare-fun m!1088665 () Bool)

(assert (=> bs!231052 m!1088665))

(assert (=> bs!231052 m!1087999))

(declare-fun m!1088667 () Bool)

(assert (=> bs!231052 m!1088667))

(declare-fun m!1088669 () Bool)

(assert (=> bs!231052 m!1088669))

(declare-fun m!1088671 () Bool)

(assert (=> bs!231052 m!1088671))

(assert (=> bs!231052 m!1087999))

(declare-fun m!1088673 () Bool)

(assert (=> bs!231052 m!1088673))

(assert (=> bs!231052 m!1087799))

(declare-fun m!1088675 () Bool)

(assert (=> bs!231052 m!1088675))

(assert (=> bs!231052 m!1087999))

(declare-fun m!1088677 () Bool)

(assert (=> bs!231052 m!1088677))

(assert (=> bs!231052 m!1087799))

(declare-fun m!1088679 () Bool)

(assert (=> bs!231052 m!1088679))

(assert (=> bs!231052 m!1087999))

(declare-fun m!1088681 () Bool)

(assert (=> bs!231052 m!1088681))

(assert (=> bs!231052 m!1087799))

(assert (=> bs!231052 m!1088665))

(declare-fun m!1088683 () Bool)

(assert (=> bs!231052 m!1088683))

(assert (=> bs!231052 m!1087799))

(declare-fun m!1088685 () Bool)

(assert (=> bs!231052 m!1088685))

(assert (=> bs!231052 m!1087799))

(assert (=> bs!231052 m!1088671))

(assert (=> bs!231052 m!1088681))

(declare-fun m!1088687 () Bool)

(assert (=> bs!231052 m!1088687))

(assert (=> bs!231052 m!1088671))

(declare-fun m!1088689 () Bool)

(assert (=> bs!231052 m!1088689))

(assert (=> d!265062 d!265222))

(assert (=> d!265062 d!265150))

(declare-fun d!265246 () Bool)

(declare-fun lt!322301 () Unit!13653)

(declare-fun lemma!12 (List!9187 LexerInterface!1522 List!9187) Unit!13653)

(assert (=> d!265246 (= lt!322301 (lemma!12 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25397 () Int)

(declare-fun generalisedUnion!16 (List!9192) Regex!2153)

(declare-fun map!1904 (List!9187 Int) List!9192)

(assert (=> d!265246 (= (rulesRegex!22 thiss!20117 rules!2621) (generalisedUnion!16 (map!1904 rules!2621 lambda!25397)))))

(declare-fun bs!231053 () Bool)

(assert (= bs!231053 d!265246))

(declare-fun m!1088691 () Bool)

(assert (=> bs!231053 m!1088691))

(declare-fun m!1088693 () Bool)

(assert (=> bs!231053 m!1088693))

(assert (=> bs!231053 m!1088693))

(declare-fun m!1088695 () Bool)

(assert (=> bs!231053 m!1088695))

(assert (=> d!265062 d!265246))

(declare-fun b!850337 () Bool)

(declare-fun res!388708 () Bool)

(declare-fun e!559624 () Bool)

(assert (=> b!850337 (=> (not res!388708) (not e!559624))))

(declare-fun height!400 (Conc!3038) Int)

(declare-fun ++!2378 (Conc!3038 Conc!3038) Conc!3038)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!850337 (= res!388708 (>= (height!400 (++!2378 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))) (max!0 (height!400 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979))))) (height!400 (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0)))))))))

(declare-fun b!850335 () Bool)

(declare-fun res!388709 () Bool)

(assert (=> b!850335 (=> (not res!388709) (not e!559624))))

(declare-fun isBalanced!828 (Conc!3038) Bool)

(assert (=> b!850335 (= res!388709 (isBalanced!828 (++!2378 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))))))

(declare-fun d!265248 () Bool)

(assert (=> d!265248 e!559624))

(declare-fun res!388706 () Bool)

(assert (=> d!265248 (=> (not res!388706) (not e!559624))))

(declare-fun appendAssocInst!196 (Conc!3038 Conc!3038) Bool)

(assert (=> d!265248 (= res!388706 (appendAssocInst!196 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0)))))))

(declare-fun lt!322304 () BalanceConc!6090)

(assert (=> d!265248 (= lt!322304 (BalanceConc!6091 (++!2378 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))))))

(assert (=> d!265248 (= (++!2375 (charsOf!989 (h!14571 (t!95236 lt!321979))) (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))) lt!322304)))

(declare-fun b!850338 () Bool)

(assert (=> b!850338 (= e!559624 (= (list!3598 lt!322304) (++!2376 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (list!3598 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))))))

(declare-fun b!850336 () Bool)

(declare-fun res!388707 () Bool)

(assert (=> b!850336 (=> (not res!388707) (not e!559624))))

(assert (=> b!850336 (= res!388707 (<= (height!400 (++!2378 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))) (+ (max!0 (height!400 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979))))) (height!400 (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0))))) 1)))))

(assert (= (and d!265248 res!388706) b!850335))

(assert (= (and b!850335 res!388709) b!850336))

(assert (= (and b!850336 res!388707) b!850337))

(assert (= (and b!850337 res!388708) b!850338))

(declare-fun m!1088697 () Bool)

(assert (=> d!265248 m!1088697))

(declare-fun m!1088699 () Bool)

(assert (=> d!265248 m!1088699))

(declare-fun m!1088701 () Bool)

(assert (=> b!850338 m!1088701))

(assert (=> b!850338 m!1087805))

(assert (=> b!850338 m!1088369))

(assert (=> b!850338 m!1087997))

(declare-fun m!1088703 () Bool)

(assert (=> b!850338 m!1088703))

(assert (=> b!850338 m!1088369))

(assert (=> b!850338 m!1088703))

(declare-fun m!1088705 () Bool)

(assert (=> b!850338 m!1088705))

(declare-fun m!1088707 () Bool)

(assert (=> b!850336 m!1088707))

(declare-fun m!1088709 () Bool)

(assert (=> b!850336 m!1088709))

(assert (=> b!850336 m!1088699))

(assert (=> b!850336 m!1088709))

(assert (=> b!850336 m!1088707))

(declare-fun m!1088711 () Bool)

(assert (=> b!850336 m!1088711))

(assert (=> b!850336 m!1088699))

(declare-fun m!1088713 () Bool)

(assert (=> b!850336 m!1088713))

(assert (=> b!850335 m!1088699))

(assert (=> b!850335 m!1088699))

(declare-fun m!1088715 () Bool)

(assert (=> b!850335 m!1088715))

(assert (=> b!850337 m!1088707))

(assert (=> b!850337 m!1088709))

(assert (=> b!850337 m!1088699))

(assert (=> b!850337 m!1088709))

(assert (=> b!850337 m!1088707))

(assert (=> b!850337 m!1088711))

(assert (=> b!850337 m!1088699))

(assert (=> b!850337 m!1088713))

(assert (=> d!265062 d!265248))

(declare-fun d!265250 () Bool)

(declare-fun lt!322307 () C!4876)

(declare-fun apply!1884 (List!9185 Int) C!4876)

(assert (=> d!265250 (= lt!322307 (apply!1884 (list!3598 (charsOf!989 lt!321974)) 0))))

(declare-fun apply!1885 (Conc!3038 Int) C!4876)

(assert (=> d!265250 (= lt!322307 (apply!1885 (c!137983 (charsOf!989 lt!321974)) 0))))

(declare-fun e!559627 () Bool)

(assert (=> d!265250 e!559627))

(declare-fun res!388712 () Bool)

(assert (=> d!265250 (=> (not res!388712) (not e!559627))))

(assert (=> d!265250 (= res!388712 (<= 0 0))))

(assert (=> d!265250 (= (apply!1878 (charsOf!989 lt!321974) 0) lt!322307)))

(declare-fun b!850341 () Bool)

(assert (=> b!850341 (= e!559627 (< 0 (size!7643 (charsOf!989 lt!321974))))))

(assert (= (and d!265250 res!388712) b!850341))

(assert (=> d!265250 m!1088003))

(declare-fun m!1088717 () Bool)

(assert (=> d!265250 m!1088717))

(assert (=> d!265250 m!1088717))

(declare-fun m!1088719 () Bool)

(assert (=> d!265250 m!1088719))

(declare-fun m!1088721 () Bool)

(assert (=> d!265250 m!1088721))

(assert (=> b!850341 m!1088003))

(declare-fun m!1088723 () Bool)

(assert (=> b!850341 m!1088723))

(assert (=> d!265062 d!265250))

(declare-fun d!265252 () Bool)

(declare-fun e!559630 () Bool)

(assert (=> d!265252 e!559630))

(declare-fun res!388715 () Bool)

(assert (=> d!265252 (=> (not res!388715) (not e!559630))))

(declare-fun lt!322330 () BalanceConc!6090)

(assert (=> d!265252 (= res!388715 (= (list!3598 lt!322330) (Cons!9169 (apply!1878 (charsOf!989 lt!321974) 0) Nil!9169)))))

(declare-fun singleton!257 (C!4876) BalanceConc!6090)

(assert (=> d!265252 (= lt!322330 (singleton!257 (apply!1878 (charsOf!989 lt!321974) 0)))))

(assert (=> d!265252 (= (singletonSeq!536 (apply!1878 (charsOf!989 lt!321974) 0)) lt!322330)))

(declare-fun b!850344 () Bool)

(assert (=> b!850344 (= e!559630 (isBalanced!828 (c!137983 lt!322330)))))

(assert (= (and d!265252 res!388715) b!850344))

(declare-fun m!1088725 () Bool)

(assert (=> d!265252 m!1088725))

(assert (=> d!265252 m!1087995))

(declare-fun m!1088727 () Bool)

(assert (=> d!265252 m!1088727))

(declare-fun m!1088729 () Bool)

(assert (=> b!850344 m!1088729))

(assert (=> d!265062 d!265252))

(declare-fun d!265254 () Bool)

(declare-fun lt!322341 () BalanceConc!6090)

(assert (=> d!265254 (= (list!3598 lt!322341) (originalCharacters!2276 lt!321974))))

(assert (=> d!265254 (= lt!322341 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 lt!321974))) (value!55719 lt!321974)))))

(assert (=> d!265254 (= (charsOf!989 lt!321974) lt!322341)))

(declare-fun b_lambda!28281 () Bool)

(assert (=> (not b_lambda!28281) (not d!265254)))

(declare-fun tb!59561 () Bool)

(declare-fun t!95382 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95382) tb!59561))

(declare-fun b!850345 () Bool)

(declare-fun e!559631 () Bool)

(declare-fun tp!267713 () Bool)

(assert (=> b!850345 (= e!559631 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 lt!321974))) (value!55719 lt!321974)))) tp!267713))))

(declare-fun result!69018 () Bool)

(assert (=> tb!59561 (= result!69018 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 lt!321974))) (value!55719 lt!321974))) e!559631))))

(assert (= tb!59561 b!850345))

(declare-fun m!1088737 () Bool)

(assert (=> b!850345 m!1088737))

(declare-fun m!1088739 () Bool)

(assert (=> tb!59561 m!1088739))

(assert (=> d!265254 t!95382))

(declare-fun b_and!74483 () Bool)

(assert (= b_and!74439 (and (=> t!95382 result!69018) b_and!74483)))

(declare-fun t!95384 () Bool)

(declare-fun tb!59563 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95384) tb!59563))

(declare-fun result!69020 () Bool)

(assert (= result!69020 result!69018))

(assert (=> d!265254 t!95384))

(declare-fun b_and!74485 () Bool)

(assert (= b_and!74441 (and (=> t!95384 result!69020) b_and!74485)))

(declare-fun t!95386 () Bool)

(declare-fun tb!59565 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95386) tb!59565))

(declare-fun result!69022 () Bool)

(assert (= result!69022 result!69018))

(assert (=> d!265254 t!95386))

(declare-fun b_and!74487 () Bool)

(assert (= b_and!74433 (and (=> t!95386 result!69022) b_and!74487)))

(declare-fun tb!59567 () Bool)

(declare-fun t!95388 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95388) tb!59567))

(declare-fun result!69024 () Bool)

(assert (= result!69024 result!69018))

(assert (=> d!265254 t!95388))

(declare-fun b_and!74489 () Bool)

(assert (= b_and!74437 (and (=> t!95388 result!69024) b_and!74489)))

(declare-fun t!95390 () Bool)

(declare-fun tb!59569 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95390) tb!59569))

(declare-fun result!69026 () Bool)

(assert (= result!69026 result!69018))

(assert (=> d!265254 t!95390))

(declare-fun b_and!74491 () Bool)

(assert (= b_and!74435 (and (=> t!95390 result!69026) b_and!74491)))

(declare-fun m!1088749 () Bool)

(assert (=> d!265254 m!1088749))

(declare-fun m!1088751 () Bool)

(assert (=> d!265254 m!1088751))

(assert (=> d!265062 d!265254))

(declare-fun d!265256 () Bool)

(assert (=> d!265256 true))

(declare-fun order!5875 () Int)

(declare-fun lambda!25400 () Int)

(declare-fun dynLambda!4271 (Int Int) Int)

(assert (=> d!265256 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (dynLambda!4271 order!5875 lambda!25400))))

(declare-fun Forall2!319 (Int) Bool)

(assert (=> d!265256 (= (equivClasses!635 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (Forall2!319 lambda!25400))))

(declare-fun bs!231055 () Bool)

(assert (= bs!231055 d!265256))

(declare-fun m!1088765 () Bool)

(assert (=> bs!231055 m!1088765))

(assert (=> b!849901 d!265256))

(declare-fun d!265260 () Bool)

(assert (=> d!265260 true))

(declare-fun lt!322355 () Bool)

(declare-fun rulesValidInductive!606 (LexerInterface!1522 List!9187) Bool)

(assert (=> d!265260 (= lt!322355 (rulesValidInductive!606 thiss!20117 rules!2621))))

(declare-fun lambda!25404 () Int)

(declare-fun forall!2158 (List!9187 Int) Bool)

(assert (=> d!265260 (= lt!322355 (forall!2158 rules!2621 lambda!25404))))

(assert (=> d!265260 (= (rulesValid!599 thiss!20117 rules!2621) lt!322355)))

(declare-fun bs!231062 () Bool)

(assert (= bs!231062 d!265260))

(declare-fun m!1088789 () Bool)

(assert (=> bs!231062 m!1088789))

(declare-fun m!1088791 () Bool)

(assert (=> bs!231062 m!1088791))

(assert (=> d!265058 d!265260))

(declare-fun d!265266 () Bool)

(declare-fun lt!322359 () Bool)

(assert (=> d!265266 (= lt!322359 (isEmpty!5420 (list!3598 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))))

(declare-fun isEmpty!5424 (Conc!3038) Bool)

(assert (=> d!265266 (= lt!322359 (isEmpty!5424 (c!137983 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))))

(assert (=> d!265266 (= (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))) lt!322359)))

(declare-fun bs!231072 () Bool)

(assert (= bs!231072 d!265266))

(declare-fun m!1088797 () Bool)

(assert (=> bs!231072 m!1088797))

(assert (=> bs!231072 m!1088797))

(declare-fun m!1088801 () Bool)

(assert (=> bs!231072 m!1088801))

(declare-fun m!1088803 () Bool)

(assert (=> bs!231072 m!1088803))

(assert (=> b!849973 d!265266))

(declare-fun lt!322362 () tuple2!10372)

(declare-fun b!850377 () Bool)

(declare-fun e!559656 () Bool)

(declare-datatypes ((tuple2!10376 0))(
  ( (tuple2!10377 (_1!6014 List!9186) (_2!6014 List!9185)) )
))
(declare-fun lexList!386 (LexerInterface!1522 List!9187 List!9185) tuple2!10376)

(assert (=> b!850377 (= e!559656 (= (list!3598 (_2!6012 lt!322362)) (_2!6014 (lexList!386 thiss!20117 rules!2621 (list!3598 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))))

(declare-fun b!850378 () Bool)

(declare-fun e!559657 () Bool)

(declare-fun e!559655 () Bool)

(assert (=> b!850378 (= e!559657 e!559655)))

(declare-fun res!388734 () Bool)

(assert (=> b!850378 (= res!388734 (< (size!7643 (_2!6012 lt!322362)) (size!7643 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))

(assert (=> b!850378 (=> (not res!388734) (not e!559655))))

(declare-fun b!850379 () Bool)

(declare-fun isEmpty!5425 (BalanceConc!6092) Bool)

(assert (=> b!850379 (= e!559655 (not (isEmpty!5425 (_1!6012 lt!322362))))))

(declare-fun d!265270 () Bool)

(assert (=> d!265270 e!559656))

(declare-fun res!388735 () Bool)

(assert (=> d!265270 (=> (not res!388735) (not e!559656))))

(assert (=> d!265270 (= res!388735 e!559657)))

(declare-fun c!138082 () Bool)

(assert (=> d!265270 (= c!138082 (> (size!7642 (_1!6012 lt!322362)) 0))))

(declare-fun lexTailRecV2!293 (LexerInterface!1522 List!9187 BalanceConc!6090 BalanceConc!6090 BalanceConc!6090 BalanceConc!6092) tuple2!10372)

(assert (=> d!265270 (= lt!322362 (lexTailRecV2!293 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)) (BalanceConc!6091 Empty!3038) (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)) (BalanceConc!6093 Empty!3039)))))

(assert (=> d!265270 (= (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))) lt!322362)))

(declare-fun b!850380 () Bool)

(declare-fun res!388733 () Bool)

(assert (=> b!850380 (=> (not res!388733) (not e!559656))))

(assert (=> b!850380 (= res!388733 (= (list!3597 (_1!6012 lt!322362)) (_1!6014 (lexList!386 thiss!20117 rules!2621 (list!3598 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))))

(declare-fun b!850381 () Bool)

(assert (=> b!850381 (= e!559657 (= (_2!6012 lt!322362) (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))))

(assert (= (and d!265270 c!138082) b!850378))

(assert (= (and d!265270 (not c!138082)) b!850381))

(assert (= (and b!850378 res!388734) b!850379))

(assert (= (and d!265270 res!388735) b!850380))

(assert (= (and b!850380 res!388733) b!850377))

(declare-fun m!1088809 () Bool)

(assert (=> b!850377 m!1088809))

(assert (=> b!850377 m!1087883))

(declare-fun m!1088811 () Bool)

(assert (=> b!850377 m!1088811))

(assert (=> b!850377 m!1088811))

(declare-fun m!1088813 () Bool)

(assert (=> b!850377 m!1088813))

(declare-fun m!1088815 () Bool)

(assert (=> b!850379 m!1088815))

(declare-fun m!1088817 () Bool)

(assert (=> b!850378 m!1088817))

(assert (=> b!850378 m!1087883))

(declare-fun m!1088819 () Bool)

(assert (=> b!850378 m!1088819))

(declare-fun m!1088821 () Bool)

(assert (=> d!265270 m!1088821))

(assert (=> d!265270 m!1087883))

(assert (=> d!265270 m!1087883))

(declare-fun m!1088823 () Bool)

(assert (=> d!265270 m!1088823))

(declare-fun m!1088825 () Bool)

(assert (=> b!850380 m!1088825))

(assert (=> b!850380 m!1087883))

(assert (=> b!850380 m!1088811))

(assert (=> b!850380 m!1088811))

(assert (=> b!850380 m!1088813))

(assert (=> b!849973 d!265270))

(declare-fun d!265274 () Bool)

(declare-fun lt!322376 () BalanceConc!6090)

(assert (=> d!265274 (= (list!3598 lt!322376) (printList!472 thiss!20117 (list!3597 (singletonSeq!537 separatorToken!297))))))

(declare-fun printTailRec!468 (LexerInterface!1522 BalanceConc!6092 Int BalanceConc!6090) BalanceConc!6090)

(assert (=> d!265274 (= lt!322376 (printTailRec!468 thiss!20117 (singletonSeq!537 separatorToken!297) 0 (BalanceConc!6091 Empty!3038)))))

(assert (=> d!265274 (= (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)) lt!322376)))

(declare-fun bs!231074 () Bool)

(assert (= bs!231074 d!265274))

(declare-fun m!1088883 () Bool)

(assert (=> bs!231074 m!1088883))

(assert (=> bs!231074 m!1087889))

(assert (=> bs!231074 m!1087891))

(assert (=> bs!231074 m!1087891))

(declare-fun m!1088885 () Bool)

(assert (=> bs!231074 m!1088885))

(assert (=> bs!231074 m!1087889))

(declare-fun m!1088887 () Bool)

(assert (=> bs!231074 m!1088887))

(assert (=> b!849973 d!265274))

(declare-fun d!265292 () Bool)

(declare-fun e!559676 () Bool)

(assert (=> d!265292 e!559676))

(declare-fun res!388750 () Bool)

(assert (=> d!265292 (=> (not res!388750) (not e!559676))))

(declare-fun lt!322390 () BalanceConc!6092)

(assert (=> d!265292 (= res!388750 (= (list!3597 lt!322390) (Cons!9170 separatorToken!297 Nil!9170)))))

(declare-fun singleton!258 (Token!3106) BalanceConc!6092)

(assert (=> d!265292 (= lt!322390 (singleton!258 separatorToken!297))))

(assert (=> d!265292 (= (singletonSeq!537 separatorToken!297) lt!322390)))

(declare-fun b!850411 () Bool)

(declare-fun isBalanced!829 (Conc!3039) Bool)

(assert (=> b!850411 (= e!559676 (isBalanced!829 (c!137984 lt!322390)))))

(assert (= (and d!265292 res!388750) b!850411))

(declare-fun m!1088895 () Bool)

(assert (=> d!265292 m!1088895))

(declare-fun m!1088897 () Bool)

(assert (=> d!265292 m!1088897))

(declare-fun m!1088899 () Bool)

(assert (=> b!850411 m!1088899))

(assert (=> b!849973 d!265292))

(assert (=> b!849985 d!265182))

(declare-fun c!138090 () Bool)

(declare-fun d!265304 () Bool)

(assert (=> d!265304 (= c!138090 ((_ is Cons!9170) ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!559677 () List!9185)

(assert (=> d!265304 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)) e!559677)))

(declare-fun b!850412 () Bool)

(assert (=> b!850412 (= e!559677 (++!2376 (list!3598 (charsOf!989 (h!14571 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)))) (printList!472 thiss!20117 (t!95236 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!850413 () Bool)

(assert (=> b!850413 (= e!559677 Nil!9169)))

(assert (= (and d!265304 c!138090) b!850412))

(assert (= (and d!265304 (not c!138090)) b!850413))

(declare-fun m!1088901 () Bool)

(assert (=> b!850412 m!1088901))

(assert (=> b!850412 m!1088901))

(declare-fun m!1088903 () Bool)

(assert (=> b!850412 m!1088903))

(declare-fun m!1088905 () Bool)

(assert (=> b!850412 m!1088905))

(assert (=> b!850412 m!1088903))

(assert (=> b!850412 m!1088905))

(declare-fun m!1088909 () Bool)

(assert (=> b!850412 m!1088909))

(assert (=> b!850017 d!265304))

(declare-fun d!265306 () Bool)

(assert (=> d!265306 (= ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (Cons!9170 separatorToken!297 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)))))

(assert (=> b!850017 d!265306))

(declare-fun b!850414 () Bool)

(declare-fun e!559679 () List!9185)

(assert (=> b!850414 (= e!559679 Nil!9169)))

(declare-fun d!265308 () Bool)

(declare-fun lt!322398 () List!9186)

(assert (=> d!265308 (= (printList!472 thiss!20117 lt!322398) (printWithSeparatorTokenList!30 thiss!20117 (t!95236 l!5107) separatorToken!297))))

(declare-fun e!559680 () List!9186)

(assert (=> d!265308 (= lt!322398 e!559680)))

(declare-fun c!138091 () Bool)

(assert (=> d!265308 (= c!138091 ((_ is Cons!9170) (t!95236 l!5107)))))

(declare-fun e!559682 () Bool)

(assert (=> d!265308 e!559682))

(declare-fun res!388751 () Bool)

(assert (=> d!265308 (=> (not res!388751) (not e!559682))))

(assert (=> d!265308 (= res!388751 (isSeparator!1720 (rule!3143 separatorToken!297)))))

(assert (=> d!265308 (= (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) lt!322398)))

(declare-fun b!850415 () Bool)

(declare-fun e!559681 () Bool)

(assert (=> b!850415 (= e!559681 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 l!5107)))) e!559679))))

(declare-fun c!138092 () Bool)

(declare-fun lt!322396 () List!9186)

(assert (=> b!850415 (= c!138092 ((_ is Cons!9170) lt!322396))))

(assert (=> b!850415 (= lt!322396 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 l!5107))))))

(declare-fun b!850416 () Bool)

(declare-fun res!388754 () Bool)

(assert (=> b!850416 (=> (not res!388754) (not e!559682))))

(assert (=> b!850416 (= res!388754 e!559681)))

(declare-fun res!388752 () Bool)

(assert (=> b!850416 (=> res!388752 e!559681)))

(assert (=> b!850416 (= res!388752 (not ((_ is Cons!9170) (t!95236 l!5107))))))

(declare-fun b!850417 () Bool)

(declare-fun e!559683 () Bool)

(assert (=> b!850417 (= e!559682 e!559683)))

(declare-fun res!388753 () Bool)

(assert (=> b!850417 (=> res!388753 e!559683)))

(assert (=> b!850417 (= res!388753 (not ((_ is Cons!9170) (t!95236 l!5107))))))

(declare-fun b!850418 () Bool)

(assert (=> b!850418 (= e!559680 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297) separatorToken!297) (h!14571 (t!95236 l!5107))))))

(declare-fun lt!322397 () List!9185)

(assert (=> b!850418 (= lt!322397 (list!3598 (charsOf!989 (h!14571 (t!95236 l!5107)))))))

(declare-fun lt!322394 () List!9185)

(assert (=> b!850418 (= lt!322394 (list!3598 (charsOf!989 separatorToken!297)))))

(declare-fun lt!322395 () List!9185)

(assert (=> b!850418 (= lt!322395 (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297)))))

(declare-fun lt!322393 () Unit!13653)

(assert (=> b!850418 (= lt!322393 (lemmaConcatAssociativity!747 lt!322397 lt!322394 lt!322395))))

(assert (=> b!850418 (= (++!2376 (++!2376 lt!322397 lt!322394) lt!322395) (++!2376 lt!322397 (++!2376 lt!322394 lt!322395)))))

(declare-fun lt!322391 () Unit!13653)

(assert (=> b!850418 (= lt!322391 lt!322393)))

(declare-fun b!850419 () Bool)

(assert (=> b!850419 (= e!559679 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322396))) (printList!472 thiss!20117 (t!95236 lt!322396))))))

(declare-fun b!850420 () Bool)

(declare-fun e!559678 () List!9185)

(assert (=> b!850420 (= e!559678 Nil!9169)))

(declare-fun b!850421 () Bool)

(assert (=> b!850421 (= e!559683 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297) separatorToken!297)) e!559678))))

(declare-fun c!138093 () Bool)

(declare-fun lt!322392 () List!9186)

(assert (=> b!850421 (= c!138093 ((_ is Cons!9170) lt!322392))))

(assert (=> b!850421 (= lt!322392 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 (t!95236 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!850422 () Bool)

(assert (=> b!850422 (= e!559678 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322392))) (printList!472 thiss!20117 (t!95236 lt!322392))))))

(declare-fun b!850423 () Bool)

(assert (=> b!850423 (= e!559680 Nil!9170)))

(assert (= (and d!265308 res!388751) b!850416))

(assert (= (and b!850416 (not res!388752)) b!850415))

(assert (= (and b!850415 c!138092) b!850419))

(assert (= (and b!850415 (not c!138092)) b!850414))

(assert (= (and b!850416 res!388754) b!850417))

(assert (= (and b!850417 (not res!388753)) b!850421))

(assert (= (and b!850421 c!138093) b!850422))

(assert (= (and b!850421 (not c!138093)) b!850420))

(assert (= (and d!265308 c!138091) b!850418))

(assert (= (and d!265308 (not c!138091)) b!850423))

(declare-fun m!1088963 () Bool)

(assert (=> b!850421 m!1088963))

(assert (=> b!850421 m!1088963))

(declare-fun m!1088965 () Bool)

(assert (=> b!850421 m!1088965))

(assert (=> b!850421 m!1088965))

(declare-fun m!1088967 () Bool)

(assert (=> b!850421 m!1088967))

(declare-fun m!1088969 () Bool)

(assert (=> b!850419 m!1088969))

(assert (=> b!850419 m!1088969))

(declare-fun m!1088971 () Bool)

(assert (=> b!850419 m!1088971))

(declare-fun m!1088973 () Bool)

(assert (=> b!850419 m!1088973))

(assert (=> b!850419 m!1088971))

(assert (=> b!850419 m!1088973))

(declare-fun m!1088977 () Bool)

(assert (=> b!850419 m!1088977))

(assert (=> b!850418 m!1088965))

(declare-fun m!1088979 () Bool)

(assert (=> b!850418 m!1088979))

(declare-fun m!1088981 () Bool)

(assert (=> b!850418 m!1088981))

(declare-fun m!1088983 () Bool)

(assert (=> b!850418 m!1088983))

(declare-fun m!1088985 () Bool)

(assert (=> b!850418 m!1088985))

(declare-fun m!1088987 () Bool)

(assert (=> b!850418 m!1088987))

(assert (=> b!850418 m!1087951))

(assert (=> b!850418 m!1088963))

(assert (=> b!850418 m!1088965))

(declare-fun m!1088989 () Bool)

(assert (=> b!850418 m!1088989))

(assert (=> b!850418 m!1088963))

(assert (=> b!850418 m!1087951))

(assert (=> b!850418 m!1087955))

(assert (=> b!850418 m!1088963))

(declare-fun m!1088991 () Bool)

(assert (=> b!850418 m!1088991))

(declare-fun m!1088993 () Bool)

(assert (=> b!850418 m!1088993))

(assert (=> b!850418 m!1088989))

(declare-fun m!1088995 () Bool)

(assert (=> b!850418 m!1088995))

(assert (=> b!850418 m!1088985))

(assert (=> b!850418 m!1088981))

(assert (=> b!850415 m!1088963))

(assert (=> b!850415 m!1088963))

(assert (=> b!850415 m!1088965))

(assert (=> b!850415 m!1088965))

(assert (=> b!850415 m!1088979))

(assert (=> b!850415 m!1088979))

(declare-fun m!1089003 () Bool)

(assert (=> b!850415 m!1089003))

(declare-fun m!1089007 () Bool)

(assert (=> d!265308 m!1089007))

(declare-fun m!1089009 () Bool)

(assert (=> d!265308 m!1089009))

(declare-fun m!1089013 () Bool)

(assert (=> b!850422 m!1089013))

(assert (=> b!850422 m!1089013))

(declare-fun m!1089015 () Bool)

(assert (=> b!850422 m!1089015))

(declare-fun m!1089019 () Bool)

(assert (=> b!850422 m!1089019))

(assert (=> b!850422 m!1089015))

(assert (=> b!850422 m!1089019))

(declare-fun m!1089025 () Bool)

(assert (=> b!850422 m!1089025))

(assert (=> b!850017 d!265308))

(declare-fun c!138095 () Bool)

(declare-fun d!265316 () Bool)

(assert (=> d!265316 (= c!138095 ((_ is Cons!9170) ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)))))

(declare-fun e!559688 () List!9185)

(assert (=> d!265316 (= (printList!472 thiss!20117 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)) e!559688)))

(declare-fun b!850431 () Bool)

(assert (=> b!850431 (= e!559688 (++!2376 (list!3598 (charsOf!989 (h!14571 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)))) (printList!472 thiss!20117 (t!95236 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297)))))))

(declare-fun b!850432 () Bool)

(assert (=> b!850432 (= e!559688 Nil!9169)))

(assert (= (and d!265316 c!138095) b!850431))

(assert (= (and d!265316 (not c!138095)) b!850432))

(declare-fun m!1089029 () Bool)

(assert (=> b!850431 m!1089029))

(assert (=> b!850431 m!1089029))

(declare-fun m!1089035 () Bool)

(assert (=> b!850431 m!1089035))

(declare-fun m!1089037 () Bool)

(assert (=> b!850431 m!1089037))

(assert (=> b!850431 m!1089035))

(assert (=> b!850431 m!1089037))

(declare-fun m!1089039 () Bool)

(assert (=> b!850431 m!1089039))

(assert (=> b!850038 d!265316))

(assert (=> b!850038 d!265134))

(assert (=> b!850038 d!265128))

(declare-fun d!265322 () Bool)

(declare-fun res!388760 () Bool)

(declare-fun e!559689 () Bool)

(assert (=> d!265322 (=> res!388760 e!559689)))

(assert (=> d!265322 (= res!388760 ((_ is Nil!9170) l!5107))))

(assert (=> d!265322 (= (forall!2155 l!5107 lambda!25369) e!559689)))

(declare-fun b!850433 () Bool)

(declare-fun e!559690 () Bool)

(assert (=> b!850433 (= e!559689 e!559690)))

(declare-fun res!388761 () Bool)

(assert (=> b!850433 (=> (not res!388761) (not e!559690))))

(assert (=> b!850433 (= res!388761 (dynLambda!4267 lambda!25369 (h!14571 l!5107)))))

(declare-fun b!850434 () Bool)

(assert (=> b!850434 (= e!559690 (forall!2155 (t!95236 l!5107) lambda!25369))))

(assert (= (and d!265322 (not res!388760)) b!850433))

(assert (= (and b!850433 res!388761) b!850434))

(declare-fun b_lambda!28287 () Bool)

(assert (=> (not b_lambda!28287) (not b!850433)))

(declare-fun m!1089045 () Bool)

(assert (=> b!850433 m!1089045))

(declare-fun m!1089047 () Bool)

(assert (=> b!850434 m!1089047))

(assert (=> d!264950 d!265322))

(assert (=> d!264950 d!265056))

(declare-fun d!265328 () Bool)

(declare-fun lt!322405 () Bool)

(declare-fun e!559692 () Bool)

(assert (=> d!265328 (= lt!322405 e!559692)))

(declare-fun res!388764 () Bool)

(assert (=> d!265328 (=> (not res!388764) (not e!559692))))

(assert (=> d!265328 (= res!388764 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321975)))))) (list!3597 (singletonSeq!537 (h!14571 lt!321975)))))))

(declare-fun e!559691 () Bool)

(assert (=> d!265328 (= lt!322405 e!559691)))

(declare-fun res!388762 () Bool)

(assert (=> d!265328 (=> (not res!388762) (not e!559691))))

(declare-fun lt!322406 () tuple2!10372)

(assert (=> d!265328 (= res!388762 (= (size!7642 (_1!6012 lt!322406)) 1))))

(assert (=> d!265328 (= lt!322406 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321975)))))))

(assert (=> d!265328 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265328 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975)) lt!322405)))

(declare-fun b!850435 () Bool)

(declare-fun res!388763 () Bool)

(assert (=> b!850435 (=> (not res!388763) (not e!559691))))

(assert (=> b!850435 (= res!388763 (= (apply!1879 (_1!6012 lt!322406) 0) (h!14571 lt!321975)))))

(declare-fun b!850436 () Bool)

(assert (=> b!850436 (= e!559691 (isEmpty!5421 (_2!6012 lt!322406)))))

(declare-fun b!850437 () Bool)

(assert (=> b!850437 (= e!559692 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 lt!321975)))))))))

(assert (= (and d!265328 res!388762) b!850435))

(assert (= (and b!850435 res!388763) b!850436))

(assert (= (and d!265328 res!388764) b!850437))

(declare-fun m!1089051 () Bool)

(assert (=> d!265328 m!1089051))

(declare-fun m!1089053 () Bool)

(assert (=> d!265328 m!1089053))

(declare-fun m!1089055 () Bool)

(assert (=> d!265328 m!1089055))

(assert (=> d!265328 m!1087439))

(declare-fun m!1089057 () Bool)

(assert (=> d!265328 m!1089057))

(assert (=> d!265328 m!1089057))

(declare-fun m!1089059 () Bool)

(assert (=> d!265328 m!1089059))

(assert (=> d!265328 m!1089057))

(assert (=> d!265328 m!1089051))

(declare-fun m!1089061 () Bool)

(assert (=> d!265328 m!1089061))

(declare-fun m!1089063 () Bool)

(assert (=> b!850435 m!1089063))

(declare-fun m!1089065 () Bool)

(assert (=> b!850436 m!1089065))

(assert (=> b!850437 m!1089057))

(assert (=> b!850437 m!1089057))

(assert (=> b!850437 m!1089051))

(assert (=> b!850437 m!1089051))

(assert (=> b!850437 m!1089053))

(declare-fun m!1089067 () Bool)

(assert (=> b!850437 m!1089067))

(assert (=> b!849719 d!265328))

(assert (=> d!265042 d!265274))

(assert (=> d!265042 d!265270))

(declare-fun d!265332 () Bool)

(declare-fun list!3602 (Conc!3039) List!9186)

(assert (=> d!265332 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297))))) (list!3602 (c!137984 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 separatorToken!297)))))))))

(declare-fun bs!231084 () Bool)

(assert (= bs!231084 d!265332))

(declare-fun m!1089069 () Bool)

(assert (=> bs!231084 m!1089069))

(assert (=> d!265042 d!265332))

(assert (=> d!265042 d!265056))

(declare-fun d!265334 () Bool)

(declare-fun lt!322412 () Int)

(declare-fun size!7646 (List!9186) Int)

(assert (=> d!265334 (= lt!322412 (size!7646 (list!3597 (_1!6012 lt!322100))))))

(declare-fun size!7647 (Conc!3039) Int)

(assert (=> d!265334 (= lt!322412 (size!7647 (c!137984 (_1!6012 lt!322100))))))

(assert (=> d!265334 (= (size!7642 (_1!6012 lt!322100)) lt!322412)))

(declare-fun bs!231086 () Bool)

(assert (= bs!231086 d!265334))

(declare-fun m!1089075 () Bool)

(assert (=> bs!231086 m!1089075))

(assert (=> bs!231086 m!1089075))

(declare-fun m!1089077 () Bool)

(assert (=> bs!231086 m!1089077))

(declare-fun m!1089079 () Bool)

(assert (=> bs!231086 m!1089079))

(assert (=> d!265042 d!265334))

(declare-fun d!265338 () Bool)

(assert (=> d!265338 (= (list!3597 (singletonSeq!537 separatorToken!297)) (list!3602 (c!137984 (singletonSeq!537 separatorToken!297))))))

(declare-fun bs!231088 () Bool)

(assert (= bs!231088 d!265338))

(declare-fun m!1089081 () Bool)

(assert (=> bs!231088 m!1089081))

(assert (=> d!265042 d!265338))

(assert (=> d!265042 d!265292))

(assert (=> b!849773 d!265058))

(declare-fun d!265340 () Bool)

(declare-fun lt!322413 () BalanceConc!6090)

(assert (=> d!265340 (= (list!3598 lt!322413) (originalCharacters!2276 (h!14571 (t!95236 lt!321975))))))

(assert (=> d!265340 (= lt!322413 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975))))) (value!55719 (h!14571 (t!95236 lt!321975)))))))

(assert (=> d!265340 (= (charsOf!989 (h!14571 (t!95236 lt!321975))) lt!322413)))

(declare-fun b_lambda!28289 () Bool)

(assert (=> (not b_lambda!28289) (not d!265340)))

(declare-fun tb!59581 () Bool)

(declare-fun t!95403 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95403) tb!59581))

(declare-fun b!850443 () Bool)

(declare-fun e!559695 () Bool)

(declare-fun tp!267715 () Bool)

(assert (=> b!850443 (= e!559695 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975))))) (value!55719 (h!14571 (t!95236 lt!321975)))))) tp!267715))))

(declare-fun result!69038 () Bool)

(assert (=> tb!59581 (= result!69038 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975))))) (value!55719 (h!14571 (t!95236 lt!321975))))) e!559695))))

(assert (= tb!59581 b!850443))

(declare-fun m!1089085 () Bool)

(assert (=> b!850443 m!1089085))

(declare-fun m!1089087 () Bool)

(assert (=> tb!59581 m!1089087))

(assert (=> d!265340 t!95403))

(declare-fun b_and!74513 () Bool)

(assert (= b_and!74491 (and (=> t!95403 result!69038) b_and!74513)))

(declare-fun tb!59583 () Bool)

(declare-fun t!95405 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95405) tb!59583))

(declare-fun result!69040 () Bool)

(assert (= result!69040 result!69038))

(assert (=> d!265340 t!95405))

(declare-fun b_and!74515 () Bool)

(assert (= b_and!74483 (and (=> t!95405 result!69040) b_and!74515)))

(declare-fun t!95407 () Bool)

(declare-fun tb!59585 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95407) tb!59585))

(declare-fun result!69042 () Bool)

(assert (= result!69042 result!69038))

(assert (=> d!265340 t!95407))

(declare-fun b_and!74517 () Bool)

(assert (= b_and!74487 (and (=> t!95407 result!69042) b_and!74517)))

(declare-fun tb!59587 () Bool)

(declare-fun t!95409 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95409) tb!59587))

(declare-fun result!69044 () Bool)

(assert (= result!69044 result!69038))

(assert (=> d!265340 t!95409))

(declare-fun b_and!74519 () Bool)

(assert (= b_and!74485 (and (=> t!95409 result!69044) b_and!74519)))

(declare-fun t!95411 () Bool)

(declare-fun tb!59589 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95411) tb!59589))

(declare-fun result!69046 () Bool)

(assert (= result!69046 result!69038))

(assert (=> d!265340 t!95411))

(declare-fun b_and!74521 () Bool)

(assert (= b_and!74489 (and (=> t!95411 result!69046) b_and!74521)))

(declare-fun m!1089099 () Bool)

(assert (=> d!265340 m!1089099))

(declare-fun m!1089103 () Bool)

(assert (=> d!265340 m!1089103))

(assert (=> b!849978 d!265340))

(assert (=> b!849978 d!265328))

(declare-fun d!265344 () Bool)

(assert (=> d!265344 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321975)))))

(declare-fun lt!322416 () Unit!13653)

(assert (=> d!265344 (= lt!322416 (choose!5023 thiss!20117 rules!2621 lt!321975 (h!14571 (t!95236 lt!321975))))))

(assert (=> d!265344 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265344 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321975 (h!14571 (t!95236 lt!321975))) lt!322416)))

(declare-fun bs!231090 () Bool)

(assert (= bs!231090 d!265344))

(assert (=> bs!231090 m!1087907))

(declare-fun m!1089111 () Bool)

(assert (=> bs!231090 m!1089111))

(assert (=> bs!231090 m!1087439))

(assert (=> b!849978 d!265344))

(declare-fun d!265348 () Bool)

(declare-fun lt!322418 () Int)

(assert (=> d!265348 (= lt!322418 (size!7641 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!321975))))))))

(assert (=> d!265348 (= lt!322418 (size!7645 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321975))))))))

(assert (=> d!265348 (= (size!7643 (charsOf!989 (h!14571 (t!95236 lt!321975)))) lt!322418)))

(declare-fun bs!231091 () Bool)

(assert (= bs!231091 d!265348))

(assert (=> bs!231091 m!1087909))

(declare-fun m!1089113 () Bool)

(assert (=> bs!231091 m!1089113))

(assert (=> bs!231091 m!1089113))

(declare-fun m!1089115 () Bool)

(assert (=> bs!231091 m!1089115))

(declare-fun m!1089117 () Bool)

(assert (=> bs!231091 m!1089117))

(assert (=> b!849978 d!265348))

(declare-fun d!265350 () Bool)

(assert (=> d!265350 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975))))

(declare-fun lt!322419 () Unit!13653)

(assert (=> d!265350 (= lt!322419 (choose!5023 thiss!20117 rules!2621 lt!321975 (h!14571 lt!321975)))))

(assert (=> d!265350 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265350 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 lt!321975 (h!14571 lt!321975)) lt!322419)))

(declare-fun bs!231092 () Bool)

(assert (= bs!231092 d!265350))

(assert (=> bs!231092 m!1087569))

(declare-fun m!1089125 () Bool)

(assert (=> bs!231092 m!1089125))

(assert (=> bs!231092 m!1087439))

(assert (=> b!849978 d!265350))

(declare-fun d!265352 () Bool)

(assert (=> d!265352 (= (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321975) (h!14571 (t!95236 lt!321975)) rules!2621) (not (prefixMatchZipperSequence!31 (rulesRegex!22 thiss!20117 rules!2621) (++!2375 (charsOf!989 (h!14571 lt!321975)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321975))) 0))))))))

(declare-fun bs!231094 () Bool)

(assert (= bs!231094 d!265352))

(declare-fun m!1089137 () Bool)

(assert (=> bs!231094 m!1089137))

(declare-fun m!1089139 () Bool)

(assert (=> bs!231094 m!1089139))

(assert (=> bs!231094 m!1087799))

(declare-fun m!1089141 () Bool)

(assert (=> bs!231094 m!1089141))

(declare-fun m!1089143 () Bool)

(assert (=> bs!231094 m!1089143))

(assert (=> bs!231094 m!1087909))

(assert (=> bs!231094 m!1089137))

(declare-fun m!1089145 () Bool)

(assert (=> bs!231094 m!1089145))

(assert (=> bs!231094 m!1089139))

(assert (=> bs!231094 m!1089141))

(assert (=> bs!231094 m!1087799))

(assert (=> bs!231094 m!1089145))

(assert (=> bs!231094 m!1087909))

(assert (=> b!849978 d!265352))

(declare-fun d!265358 () Bool)

(declare-fun lt!322421 () Bool)

(declare-fun e!559700 () Bool)

(assert (=> d!265358 (= lt!322421 e!559700)))

(declare-fun res!388772 () Bool)

(assert (=> d!265358 (=> (not res!388772) (not e!559700))))

(assert (=> d!265358 (= res!388772 (= (list!3597 (_1!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321975))))))) (list!3597 (singletonSeq!537 (h!14571 (t!95236 lt!321975))))))))

(declare-fun e!559699 () Bool)

(assert (=> d!265358 (= lt!322421 e!559699)))

(declare-fun res!388770 () Bool)

(assert (=> d!265358 (=> (not res!388770) (not e!559699))))

(declare-fun lt!322422 () tuple2!10372)

(assert (=> d!265358 (= res!388770 (= (size!7642 (_1!6012 lt!322422)) 1))))

(assert (=> d!265358 (= lt!322422 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321975))))))))

(assert (=> d!265358 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265358 (= (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321975))) lt!322421)))

(declare-fun b!850449 () Bool)

(declare-fun res!388771 () Bool)

(assert (=> b!850449 (=> (not res!388771) (not e!559699))))

(assert (=> b!850449 (= res!388771 (= (apply!1879 (_1!6012 lt!322422) 0) (h!14571 (t!95236 lt!321975))))))

(declare-fun b!850450 () Bool)

(assert (=> b!850450 (= e!559699 (isEmpty!5421 (_2!6012 lt!322422)))))

(declare-fun b!850451 () Bool)

(assert (=> b!850451 (= e!559700 (isEmpty!5421 (_2!6012 (lex!616 thiss!20117 rules!2621 (print!553 thiss!20117 (singletonSeq!537 (h!14571 (t!95236 lt!321975))))))))))

(assert (= (and d!265358 res!388770) b!850449))

(assert (= (and b!850449 res!388771) b!850450))

(assert (= (and d!265358 res!388772) b!850451))

(declare-fun m!1089157 () Bool)

(assert (=> d!265358 m!1089157))

(declare-fun m!1089159 () Bool)

(assert (=> d!265358 m!1089159))

(declare-fun m!1089165 () Bool)

(assert (=> d!265358 m!1089165))

(assert (=> d!265358 m!1087439))

(declare-fun m!1089167 () Bool)

(assert (=> d!265358 m!1089167))

(assert (=> d!265358 m!1089167))

(declare-fun m!1089169 () Bool)

(assert (=> d!265358 m!1089169))

(assert (=> d!265358 m!1089167))

(assert (=> d!265358 m!1089157))

(declare-fun m!1089173 () Bool)

(assert (=> d!265358 m!1089173))

(declare-fun m!1089175 () Bool)

(assert (=> b!850449 m!1089175))

(declare-fun m!1089177 () Bool)

(assert (=> b!850450 m!1089177))

(assert (=> b!850451 m!1089167))

(assert (=> b!850451 m!1089167))

(assert (=> b!850451 m!1089157))

(assert (=> b!850451 m!1089157))

(assert (=> b!850451 m!1089159))

(declare-fun m!1089179 () Bool)

(assert (=> b!850451 m!1089179))

(assert (=> b!849978 d!265358))

(declare-fun d!265364 () Bool)

(declare-fun res!388775 () Bool)

(declare-fun e!559705 () Bool)

(assert (=> d!265364 (=> res!388775 e!559705)))

(assert (=> d!265364 (= res!388775 (or (not ((_ is Cons!9170) (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))) (not ((_ is Cons!9170) (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))))

(assert (=> d!265364 (= (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) rules!2621) e!559705)))

(declare-fun b!850458 () Bool)

(declare-fun e!559704 () Bool)

(assert (=> b!850458 (= e!559705 e!559704)))

(declare-fun res!388776 () Bool)

(assert (=> b!850458 (=> (not res!388776) (not e!559704))))

(assert (=> b!850458 (= res!388776 (separableTokensPredicate!62 thiss!20117 (h!14571 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)) (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))) rules!2621))))

(declare-fun lt!322428 () Unit!13653)

(declare-fun Unit!13670 () Unit!13653)

(assert (=> b!850458 (= lt!322428 Unit!13670)))

(assert (=> b!850458 (> (size!7643 (charsOf!989 (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))) 0)))

(declare-fun lt!322424 () Unit!13653)

(declare-fun Unit!13671 () Unit!13653)

(assert (=> b!850458 (= lt!322424 Unit!13671)))

(assert (=> b!850458 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(declare-fun lt!322430 () Unit!13653)

(declare-fun Unit!13672 () Unit!13653)

(assert (=> b!850458 (= lt!322430 Unit!13672)))

(assert (=> b!850458 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)))))

(declare-fun lt!322425 () Unit!13653)

(declare-fun lt!322429 () Unit!13653)

(assert (=> b!850458 (= lt!322425 lt!322429)))

(assert (=> b!850458 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(assert (=> b!850458 (= lt!322429 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)))))))

(declare-fun lt!322427 () Unit!13653)

(declare-fun lt!322426 () Unit!13653)

(assert (=> b!850458 (= lt!322427 lt!322426)))

(assert (=> b!850458 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)))))

(assert (=> b!850458 (= lt!322426 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) (h!14571 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))))

(declare-fun b!850459 () Bool)

(assert (=> b!850459 (= e!559704 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))) (t!95236 (t!95236 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297)))) rules!2621))))

(assert (= (and d!265364 (not res!388775)) b!850458))

(assert (= (and b!850458 res!388776) b!850459))

(declare-fun m!1089195 () Bool)

(assert (=> b!850458 m!1089195))

(assert (=> b!850458 m!1087471))

(declare-fun m!1089199 () Bool)

(assert (=> b!850458 m!1089199))

(assert (=> b!850458 m!1087471))

(declare-fun m!1089205 () Bool)

(assert (=> b!850458 m!1089205))

(assert (=> b!850458 m!1088545))

(declare-fun m!1089211 () Bool)

(assert (=> b!850458 m!1089211))

(declare-fun m!1089213 () Bool)

(assert (=> b!850458 m!1089213))

(assert (=> b!850458 m!1089213))

(declare-fun m!1089215 () Bool)

(assert (=> b!850458 m!1089215))

(declare-fun m!1089217 () Bool)

(assert (=> b!850459 m!1089217))

(assert (=> b!849771 d!265364))

(assert (=> b!849771 d!265070))

(assert (=> b!849771 d!265194))

(assert (=> b!849771 d!264974))

(declare-fun e!559709 () Bool)

(declare-fun lt!322432 () List!9185)

(declare-fun b!850469 () Bool)

(assert (=> b!850469 (= e!559709 (or (not (= (printList!472 thiss!20117 (t!95236 lt!322161)) Nil!9169)) (= lt!322432 (list!3598 (charsOf!989 (h!14571 lt!322161))))))))

(declare-fun d!265372 () Bool)

(assert (=> d!265372 e!559709))

(declare-fun res!388780 () Bool)

(assert (=> d!265372 (=> (not res!388780) (not e!559709))))

(assert (=> d!265372 (= res!388780 (= (content!1342 lt!322432) ((_ map or) (content!1342 (list!3598 (charsOf!989 (h!14571 lt!322161)))) (content!1342 (printList!472 thiss!20117 (t!95236 lt!322161))))))))

(declare-fun e!559710 () List!9185)

(assert (=> d!265372 (= lt!322432 e!559710)))

(declare-fun c!138101 () Bool)

(assert (=> d!265372 (= c!138101 ((_ is Nil!9169) (list!3598 (charsOf!989 (h!14571 lt!322161)))))))

(assert (=> d!265372 (= (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322161))) (printList!472 thiss!20117 (t!95236 lt!322161))) lt!322432)))

(declare-fun b!850468 () Bool)

(declare-fun res!388779 () Bool)

(assert (=> b!850468 (=> (not res!388779) (not e!559709))))

(assert (=> b!850468 (= res!388779 (= (size!7641 lt!322432) (+ (size!7641 (list!3598 (charsOf!989 (h!14571 lt!322161)))) (size!7641 (printList!472 thiss!20117 (t!95236 lt!322161))))))))

(declare-fun b!850467 () Bool)

(assert (=> b!850467 (= e!559710 (Cons!9169 (h!14570 (list!3598 (charsOf!989 (h!14571 lt!322161)))) (++!2376 (t!95235 (list!3598 (charsOf!989 (h!14571 lt!322161)))) (printList!472 thiss!20117 (t!95236 lt!322161)))))))

(declare-fun b!850466 () Bool)

(assert (=> b!850466 (= e!559710 (printList!472 thiss!20117 (t!95236 lt!322161)))))

(assert (= (and d!265372 c!138101) b!850466))

(assert (= (and d!265372 (not c!138101)) b!850467))

(assert (= (and d!265372 res!388780) b!850468))

(assert (= (and b!850468 res!388779) b!850469))

(declare-fun m!1089227 () Bool)

(assert (=> d!265372 m!1089227))

(assert (=> d!265372 m!1088019))

(declare-fun m!1089229 () Bool)

(assert (=> d!265372 m!1089229))

(assert (=> d!265372 m!1088021))

(declare-fun m!1089235 () Bool)

(assert (=> d!265372 m!1089235))

(declare-fun m!1089237 () Bool)

(assert (=> b!850468 m!1089237))

(assert (=> b!850468 m!1088019))

(declare-fun m!1089243 () Bool)

(assert (=> b!850468 m!1089243))

(assert (=> b!850468 m!1088021))

(declare-fun m!1089247 () Bool)

(assert (=> b!850468 m!1089247))

(assert (=> b!850467 m!1088021))

(declare-fun m!1089249 () Bool)

(assert (=> b!850467 m!1089249))

(assert (=> b!850036 d!265372))

(declare-fun d!265378 () Bool)

(assert (=> d!265378 (= (list!3598 (charsOf!989 (h!14571 lt!322161))) (list!3601 (c!137983 (charsOf!989 (h!14571 lt!322161)))))))

(declare-fun bs!231096 () Bool)

(assert (= bs!231096 d!265378))

(declare-fun m!1089251 () Bool)

(assert (=> bs!231096 m!1089251))

(assert (=> b!850036 d!265378))

(declare-fun d!265380 () Bool)

(declare-fun lt!322435 () BalanceConc!6090)

(assert (=> d!265380 (= (list!3598 lt!322435) (originalCharacters!2276 (h!14571 lt!322161)))))

(assert (=> d!265380 (= lt!322435 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161)))) (value!55719 (h!14571 lt!322161))))))

(assert (=> d!265380 (= (charsOf!989 (h!14571 lt!322161)) lt!322435)))

(declare-fun b_lambda!28293 () Bool)

(assert (=> (not b_lambda!28293) (not d!265380)))

(declare-fun t!95423 () Bool)

(declare-fun tb!59601 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95423) tb!59601))

(declare-fun b!850474 () Bool)

(declare-fun e!559713 () Bool)

(declare-fun tp!267717 () Bool)

(assert (=> b!850474 (= e!559713 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161)))) (value!55719 (h!14571 lt!322161))))) tp!267717))))

(declare-fun result!69058 () Bool)

(assert (=> tb!59601 (= result!69058 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161)))) (value!55719 (h!14571 lt!322161)))) e!559713))))

(assert (= tb!59601 b!850474))

(declare-fun m!1089257 () Bool)

(assert (=> b!850474 m!1089257))

(declare-fun m!1089259 () Bool)

(assert (=> tb!59601 m!1089259))

(assert (=> d!265380 t!95423))

(declare-fun b_and!74533 () Bool)

(assert (= b_and!74521 (and (=> t!95423 result!69058) b_and!74533)))

(declare-fun tb!59603 () Bool)

(declare-fun t!95425 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95425) tb!59603))

(declare-fun result!69060 () Bool)

(assert (= result!69060 result!69058))

(assert (=> d!265380 t!95425))

(declare-fun b_and!74535 () Bool)

(assert (= b_and!74515 (and (=> t!95425 result!69060) b_and!74535)))

(declare-fun tb!59605 () Bool)

(declare-fun t!95427 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95427) tb!59605))

(declare-fun result!69062 () Bool)

(assert (= result!69062 result!69058))

(assert (=> d!265380 t!95427))

(declare-fun b_and!74537 () Bool)

(assert (= b_and!74519 (and (=> t!95427 result!69062) b_and!74537)))

(declare-fun t!95429 () Bool)

(declare-fun tb!59607 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95429) tb!59607))

(declare-fun result!69064 () Bool)

(assert (= result!69064 result!69058))

(assert (=> d!265380 t!95429))

(declare-fun b_and!74539 () Bool)

(assert (= b_and!74517 (and (=> t!95429 result!69064) b_and!74539)))

(declare-fun tb!59609 () Bool)

(declare-fun t!95431 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95431) tb!59609))

(declare-fun result!69066 () Bool)

(assert (= result!69066 result!69058))

(assert (=> d!265380 t!95431))

(declare-fun b_and!74541 () Bool)

(assert (= b_and!74513 (and (=> t!95431 result!69066) b_and!74541)))

(declare-fun m!1089269 () Bool)

(assert (=> d!265380 m!1089269))

(declare-fun m!1089273 () Bool)

(assert (=> d!265380 m!1089273))

(assert (=> b!850036 d!265380))

(declare-fun d!265388 () Bool)

(declare-fun c!138104 () Bool)

(assert (=> d!265388 (= c!138104 ((_ is Cons!9170) (t!95236 lt!322161)))))

(declare-fun e!559716 () List!9185)

(assert (=> d!265388 (= (printList!472 thiss!20117 (t!95236 lt!322161)) e!559716)))

(declare-fun b!850479 () Bool)

(assert (=> b!850479 (= e!559716 (++!2376 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!322161)))) (printList!472 thiss!20117 (t!95236 (t!95236 lt!322161)))))))

(declare-fun b!850480 () Bool)

(assert (=> b!850480 (= e!559716 Nil!9169)))

(assert (= (and d!265388 c!138104) b!850479))

(assert (= (and d!265388 (not c!138104)) b!850480))

(declare-fun m!1089275 () Bool)

(assert (=> b!850479 m!1089275))

(assert (=> b!850479 m!1089275))

(declare-fun m!1089277 () Bool)

(assert (=> b!850479 m!1089277))

(declare-fun m!1089279 () Bool)

(assert (=> b!850479 m!1089279))

(assert (=> b!850479 m!1089277))

(assert (=> b!850479 m!1089279))

(declare-fun m!1089281 () Bool)

(assert (=> b!850479 m!1089281))

(assert (=> b!850036 d!265388))

(declare-fun d!265392 () Bool)

(assert (=> d!265392 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297) rules!2621)))

(declare-fun lt!322483 () Unit!13653)

(declare-fun lt!322484 () Unit!13653)

(assert (=> d!265392 (= lt!322483 lt!322484)))

(assert (=> d!265392 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (withSeparatorTokenList!52 thiss!20117 lt!321981 separatorToken!297))))

(assert (=> d!265392 (= lt!322484 (withSeparatorTokenListPreservesRulesProduceTokens!52 thiss!20117 rules!2621 lt!321981 separatorToken!297))))

(assert (=> d!265392 true))

(declare-fun _$39!214 () Unit!13653)

(assert (=> d!265392 (= (choose!5018 thiss!20117 rules!2621 lt!321981 separatorToken!297) _$39!214)))

(declare-fun bs!231154 () Bool)

(assert (= bs!231154 d!265392))

(assert (=> bs!231154 m!1087471))

(assert (=> bs!231154 m!1087471))

(assert (=> bs!231154 m!1087607))

(assert (=> bs!231154 m!1087471))

(assert (=> bs!231154 m!1087609))

(assert (=> bs!231154 m!1087451))

(assert (=> d!264960 d!265392))

(assert (=> d!264960 d!265056))

(assert (=> d!265020 d!264996))

(declare-fun d!265496 () Bool)

(assert (=> d!265496 (separableTokensPredicate!62 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621)))

(assert (=> d!265496 true))

(declare-fun _$37!223 () Unit!13653)

(assert (=> d!265496 (= (choose!5020 thiss!20117 (h!14571 lt!321979) (h!14571 (t!95236 lt!321979)) rules!2621) _$37!223)))

(declare-fun bs!231155 () Bool)

(assert (= bs!231155 d!265496))

(assert (=> bs!231155 m!1087443))

(assert (=> d!265020 d!265496))

(assert (=> d!265020 d!265056))

(declare-fun d!265498 () Bool)

(declare-fun lt!322487 () Token!3106)

(declare-fun apply!1886 (List!9186 Int) Token!3106)

(assert (=> d!265498 (= lt!322487 (apply!1886 (list!3597 (_1!6012 lt!322100)) 0))))

(declare-fun apply!1887 (Conc!3039 Int) Token!3106)

(assert (=> d!265498 (= lt!322487 (apply!1887 (c!137984 (_1!6012 lt!322100)) 0))))

(declare-fun e!559828 () Bool)

(assert (=> d!265498 e!559828))

(declare-fun res!388826 () Bool)

(assert (=> d!265498 (=> (not res!388826) (not e!559828))))

(assert (=> d!265498 (= res!388826 (<= 0 0))))

(assert (=> d!265498 (= (apply!1879 (_1!6012 lt!322100) 0) lt!322487)))

(declare-fun b!850663 () Bool)

(assert (=> b!850663 (= e!559828 (< 0 (size!7642 (_1!6012 lt!322100))))))

(assert (= (and d!265498 res!388826) b!850663))

(assert (=> d!265498 m!1089075))

(assert (=> d!265498 m!1089075))

(declare-fun m!1089553 () Bool)

(assert (=> d!265498 m!1089553))

(declare-fun m!1089555 () Bool)

(assert (=> d!265498 m!1089555))

(assert (=> b!850663 m!1087887))

(assert (=> b!849971 d!265498))

(declare-fun e!559829 () Bool)

(declare-fun lt!322488 () List!9185)

(declare-fun b!850667 () Bool)

(assert (=> b!850667 (= e!559829 (or (not (= (printList!472 thiss!20117 (t!95236 lt!322144)) Nil!9169)) (= lt!322488 (list!3598 (charsOf!989 (h!14571 lt!322144))))))))

(declare-fun d!265500 () Bool)

(assert (=> d!265500 e!559829))

(declare-fun res!388828 () Bool)

(assert (=> d!265500 (=> (not res!388828) (not e!559829))))

(assert (=> d!265500 (= res!388828 (= (content!1342 lt!322488) ((_ map or) (content!1342 (list!3598 (charsOf!989 (h!14571 lt!322144)))) (content!1342 (printList!472 thiss!20117 (t!95236 lt!322144))))))))

(declare-fun e!559830 () List!9185)

(assert (=> d!265500 (= lt!322488 e!559830)))

(declare-fun c!138118 () Bool)

(assert (=> d!265500 (= c!138118 ((_ is Nil!9169) (list!3598 (charsOf!989 (h!14571 lt!322144)))))))

(assert (=> d!265500 (= (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322144))) (printList!472 thiss!20117 (t!95236 lt!322144))) lt!322488)))

(declare-fun b!850666 () Bool)

(declare-fun res!388827 () Bool)

(assert (=> b!850666 (=> (not res!388827) (not e!559829))))

(assert (=> b!850666 (= res!388827 (= (size!7641 lt!322488) (+ (size!7641 (list!3598 (charsOf!989 (h!14571 lt!322144)))) (size!7641 (printList!472 thiss!20117 (t!95236 lt!322144))))))))

(declare-fun b!850665 () Bool)

(assert (=> b!850665 (= e!559830 (Cons!9169 (h!14570 (list!3598 (charsOf!989 (h!14571 lt!322144)))) (++!2376 (t!95235 (list!3598 (charsOf!989 (h!14571 lt!322144)))) (printList!472 thiss!20117 (t!95236 lt!322144)))))))

(declare-fun b!850664 () Bool)

(assert (=> b!850664 (= e!559830 (printList!472 thiss!20117 (t!95236 lt!322144)))))

(assert (= (and d!265500 c!138118) b!850664))

(assert (= (and d!265500 (not c!138118)) b!850665))

(assert (= (and d!265500 res!388828) b!850666))

(assert (= (and b!850666 res!388827) b!850667))

(declare-fun m!1089557 () Bool)

(assert (=> d!265500 m!1089557))

(assert (=> d!265500 m!1087935))

(declare-fun m!1089559 () Bool)

(assert (=> d!265500 m!1089559))

(assert (=> d!265500 m!1087937))

(declare-fun m!1089561 () Bool)

(assert (=> d!265500 m!1089561))

(declare-fun m!1089563 () Bool)

(assert (=> b!850666 m!1089563))

(assert (=> b!850666 m!1087935))

(declare-fun m!1089565 () Bool)

(assert (=> b!850666 m!1089565))

(assert (=> b!850666 m!1087937))

(declare-fun m!1089567 () Bool)

(assert (=> b!850666 m!1089567))

(assert (=> b!850665 m!1087937))

(declare-fun m!1089569 () Bool)

(assert (=> b!850665 m!1089569))

(assert (=> b!850015 d!265500))

(declare-fun d!265502 () Bool)

(assert (=> d!265502 (= (list!3598 (charsOf!989 (h!14571 lt!322144))) (list!3601 (c!137983 (charsOf!989 (h!14571 lt!322144)))))))

(declare-fun bs!231156 () Bool)

(assert (= bs!231156 d!265502))

(declare-fun m!1089571 () Bool)

(assert (=> bs!231156 m!1089571))

(assert (=> b!850015 d!265502))

(declare-fun d!265504 () Bool)

(declare-fun lt!322489 () BalanceConc!6090)

(assert (=> d!265504 (= (list!3598 lt!322489) (originalCharacters!2276 (h!14571 lt!322144)))))

(assert (=> d!265504 (= lt!322489 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144)))) (value!55719 (h!14571 lt!322144))))))

(assert (=> d!265504 (= (charsOf!989 (h!14571 lt!322144)) lt!322489)))

(declare-fun b_lambda!28323 () Bool)

(assert (=> (not b_lambda!28323) (not d!265504)))

(declare-fun tb!59679 () Bool)

(declare-fun t!95501 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95501) tb!59679))

(declare-fun b!850668 () Bool)

(declare-fun e!559831 () Bool)

(declare-fun tp!267829 () Bool)

(assert (=> b!850668 (= e!559831 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144)))) (value!55719 (h!14571 lt!322144))))) tp!267829))))

(declare-fun result!69138 () Bool)

(assert (=> tb!59679 (= result!69138 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144)))) (value!55719 (h!14571 lt!322144)))) e!559831))))

(assert (= tb!59679 b!850668))

(declare-fun m!1089573 () Bool)

(assert (=> b!850668 m!1089573))

(declare-fun m!1089575 () Bool)

(assert (=> tb!59679 m!1089575))

(assert (=> d!265504 t!95501))

(declare-fun b_and!74581 () Bool)

(assert (= b_and!74539 (and (=> t!95501 result!69138) b_and!74581)))

(declare-fun tb!59681 () Bool)

(declare-fun t!95503 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95503) tb!59681))

(declare-fun result!69140 () Bool)

(assert (= result!69140 result!69138))

(assert (=> d!265504 t!95503))

(declare-fun b_and!74583 () Bool)

(assert (= b_and!74535 (and (=> t!95503 result!69140) b_and!74583)))

(declare-fun tb!59683 () Bool)

(declare-fun t!95505 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95505) tb!59683))

(declare-fun result!69142 () Bool)

(assert (= result!69142 result!69138))

(assert (=> d!265504 t!95505))

(declare-fun b_and!74585 () Bool)

(assert (= b_and!74533 (and (=> t!95505 result!69142) b_and!74585)))

(declare-fun t!95507 () Bool)

(declare-fun tb!59685 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95507) tb!59685))

(declare-fun result!69144 () Bool)

(assert (= result!69144 result!69138))

(assert (=> d!265504 t!95507))

(declare-fun b_and!74587 () Bool)

(assert (= b_and!74541 (and (=> t!95507 result!69144) b_and!74587)))

(declare-fun tb!59687 () Bool)

(declare-fun t!95509 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95509) tb!59687))

(declare-fun result!69146 () Bool)

(assert (= result!69146 result!69138))

(assert (=> d!265504 t!95509))

(declare-fun b_and!74589 () Bool)

(assert (= b_and!74537 (and (=> t!95509 result!69146) b_and!74589)))

(declare-fun m!1089577 () Bool)

(assert (=> d!265504 m!1089577))

(declare-fun m!1089579 () Bool)

(assert (=> d!265504 m!1089579))

(assert (=> b!850015 d!265504))

(declare-fun d!265506 () Bool)

(declare-fun c!138119 () Bool)

(assert (=> d!265506 (= c!138119 ((_ is Cons!9170) (t!95236 lt!322144)))))

(declare-fun e!559832 () List!9185)

(assert (=> d!265506 (= (printList!472 thiss!20117 (t!95236 lt!322144)) e!559832)))

(declare-fun b!850669 () Bool)

(assert (=> b!850669 (= e!559832 (++!2376 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!322144)))) (printList!472 thiss!20117 (t!95236 (t!95236 lt!322144)))))))

(declare-fun b!850670 () Bool)

(assert (=> b!850670 (= e!559832 Nil!9169)))

(assert (= (and d!265506 c!138119) b!850669))

(assert (= (and d!265506 (not c!138119)) b!850670))

(declare-fun m!1089581 () Bool)

(assert (=> b!850669 m!1089581))

(assert (=> b!850669 m!1089581))

(declare-fun m!1089583 () Bool)

(assert (=> b!850669 m!1089583))

(declare-fun m!1089585 () Bool)

(assert (=> b!850669 m!1089585))

(assert (=> b!850669 m!1089583))

(assert (=> b!850669 m!1089585))

(declare-fun m!1089587 () Bool)

(assert (=> b!850669 m!1089587))

(assert (=> b!850015 d!265506))

(declare-fun d!265508 () Bool)

(declare-fun res!388833 () Bool)

(declare-fun e!559837 () Bool)

(assert (=> d!265508 (=> res!388833 e!559837)))

(assert (=> d!265508 (= res!388833 ((_ is Nil!9171) rules!2621))))

(assert (=> d!265508 (= (noDuplicateTag!599 thiss!20117 rules!2621 Nil!9173) e!559837)))

(declare-fun b!850675 () Bool)

(declare-fun e!559838 () Bool)

(assert (=> b!850675 (= e!559837 e!559838)))

(declare-fun res!388834 () Bool)

(assert (=> b!850675 (=> (not res!388834) (not e!559838))))

(declare-fun contains!1695 (List!9189 String!10828) Bool)

(assert (=> b!850675 (= res!388834 (not (contains!1695 Nil!9173 (tag!1982 (h!14572 rules!2621)))))))

(declare-fun b!850676 () Bool)

(assert (=> b!850676 (= e!559838 (noDuplicateTag!599 thiss!20117 (t!95237 rules!2621) (Cons!9173 (tag!1982 (h!14572 rules!2621)) Nil!9173)))))

(assert (= (and d!265508 (not res!388833)) b!850675))

(assert (= (and b!850675 res!388834) b!850676))

(declare-fun m!1089589 () Bool)

(assert (=> b!850675 m!1089589))

(declare-fun m!1089591 () Bool)

(assert (=> b!850676 m!1089591))

(assert (=> b!850022 d!265508))

(declare-fun bs!231157 () Bool)

(declare-fun d!265510 () Bool)

(assert (= bs!231157 (and d!265510 b!849647)))

(declare-fun lambda!25416 () Int)

(assert (=> bs!231157 (not (= lambda!25416 lambda!25358))))

(declare-fun bs!231158 () Bool)

(assert (= bs!231158 (and d!265510 d!265210)))

(assert (=> bs!231158 (= lambda!25416 lambda!25391)))

(declare-fun bs!231159 () Bool)

(assert (= bs!231159 (and d!265510 d!265050)))

(assert (=> bs!231159 (= lambda!25416 lambda!25378)))

(declare-fun bs!231160 () Bool)

(assert (= bs!231160 (and d!265510 d!264934)))

(assert (=> bs!231160 (= lambda!25416 lambda!25363)))

(declare-fun bs!231161 () Bool)

(assert (= bs!231161 (and d!265510 d!264958)))

(assert (=> bs!231161 (= lambda!25416 lambda!25370)))

(declare-fun bs!231162 () Bool)

(assert (= bs!231162 (and d!265510 d!264950)))

(assert (=> bs!231162 (= lambda!25416 lambda!25369)))

(declare-fun bs!231163 () Bool)

(assert (= bs!231163 (and d!265510 d!265194)))

(assert (=> bs!231163 (= lambda!25416 lambda!25386)))

(declare-fun b!850681 () Bool)

(declare-fun e!559843 () Bool)

(assert (=> b!850681 (= e!559843 true)))

(declare-fun b!850680 () Bool)

(declare-fun e!559842 () Bool)

(assert (=> b!850680 (= e!559842 e!559843)))

(declare-fun b!850679 () Bool)

(declare-fun e!559841 () Bool)

(assert (=> b!850679 (= e!559841 e!559842)))

(assert (=> d!265510 e!559841))

(assert (= b!850680 b!850681))

(assert (= b!850679 b!850680))

(assert (= (and d!265510 ((_ is Cons!9171) rules!2621)) b!850679))

(assert (=> b!850681 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25416))))

(assert (=> b!850681 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25416))))

(assert (=> d!265510 true))

(declare-fun lt!322490 () Bool)

(assert (=> d!265510 (= lt!322490 (forall!2155 (t!95236 l!5107) lambda!25416))))

(declare-fun e!559839 () Bool)

(assert (=> d!265510 (= lt!322490 e!559839)))

(declare-fun res!388836 () Bool)

(assert (=> d!265510 (=> res!388836 e!559839)))

(assert (=> d!265510 (= res!388836 (not ((_ is Cons!9170) (t!95236 l!5107))))))

(assert (=> d!265510 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265510 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 l!5107)) lt!322490)))

(declare-fun b!850677 () Bool)

(declare-fun e!559840 () Bool)

(assert (=> b!850677 (= e!559839 e!559840)))

(declare-fun res!388835 () Bool)

(assert (=> b!850677 (=> (not res!388835) (not e!559840))))

(assert (=> b!850677 (= res!388835 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 l!5107))))))

(declare-fun b!850678 () Bool)

(assert (=> b!850678 (= e!559840 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (t!95236 l!5107))))))

(assert (= (and d!265510 (not res!388836)) b!850677))

(assert (= (and b!850677 res!388835) b!850678))

(declare-fun m!1089593 () Bool)

(assert (=> d!265510 m!1089593))

(assert (=> d!265510 m!1087439))

(declare-fun m!1089595 () Bool)

(assert (=> b!850677 m!1089595))

(declare-fun m!1089597 () Bool)

(assert (=> b!850678 m!1089597))

(assert (=> b!849712 d!265510))

(declare-fun bs!231164 () Bool)

(declare-fun d!265512 () Bool)

(assert (= bs!231164 (and d!265512 b!849647)))

(declare-fun lambda!25417 () Int)

(assert (=> bs!231164 (not (= lambda!25417 lambda!25358))))

(declare-fun bs!231165 () Bool)

(assert (= bs!231165 (and d!265512 d!265510)))

(assert (=> bs!231165 (= lambda!25417 lambda!25416)))

(declare-fun bs!231166 () Bool)

(assert (= bs!231166 (and d!265512 d!265210)))

(assert (=> bs!231166 (= lambda!25417 lambda!25391)))

(declare-fun bs!231167 () Bool)

(assert (= bs!231167 (and d!265512 d!265050)))

(assert (=> bs!231167 (= lambda!25417 lambda!25378)))

(declare-fun bs!231168 () Bool)

(assert (= bs!231168 (and d!265512 d!264934)))

(assert (=> bs!231168 (= lambda!25417 lambda!25363)))

(declare-fun bs!231169 () Bool)

(assert (= bs!231169 (and d!265512 d!264958)))

(assert (=> bs!231169 (= lambda!25417 lambda!25370)))

(declare-fun bs!231170 () Bool)

(assert (= bs!231170 (and d!265512 d!264950)))

(assert (=> bs!231170 (= lambda!25417 lambda!25369)))

(declare-fun bs!231171 () Bool)

(assert (= bs!231171 (and d!265512 d!265194)))

(assert (=> bs!231171 (= lambda!25417 lambda!25386)))

(declare-fun b!850686 () Bool)

(declare-fun e!559848 () Bool)

(assert (=> b!850686 (= e!559848 true)))

(declare-fun b!850685 () Bool)

(declare-fun e!559847 () Bool)

(assert (=> b!850685 (= e!559847 e!559848)))

(declare-fun b!850684 () Bool)

(declare-fun e!559846 () Bool)

(assert (=> b!850684 (= e!559846 e!559847)))

(assert (=> d!265512 e!559846))

(assert (= b!850685 b!850686))

(assert (= b!850684 b!850685))

(assert (= (and d!265512 ((_ is Cons!9171) rules!2621)) b!850684))

(assert (=> b!850686 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25417))))

(assert (=> b!850686 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25417))))

(assert (=> d!265512 true))

(declare-fun lt!322491 () Bool)

(assert (=> d!265512 (= lt!322491 (forall!2155 lt!321981 lambda!25417))))

(declare-fun e!559844 () Bool)

(assert (=> d!265512 (= lt!322491 e!559844)))

(declare-fun res!388838 () Bool)

(assert (=> d!265512 (=> res!388838 e!559844)))

(assert (=> d!265512 (= res!388838 (not ((_ is Cons!9170) lt!321981)))))

(assert (=> d!265512 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265512 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 lt!321981) lt!322491)))

(declare-fun b!850682 () Bool)

(declare-fun e!559845 () Bool)

(assert (=> b!850682 (= e!559844 e!559845)))

(declare-fun res!388837 () Bool)

(assert (=> b!850682 (=> (not res!388837) (not e!559845))))

(assert (=> b!850682 (= res!388837 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321981)))))

(declare-fun b!850683 () Bool)

(assert (=> b!850683 (= e!559845 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 lt!321981)))))

(assert (= (and d!265512 (not res!388838)) b!850682))

(assert (= (and b!850682 res!388837) b!850683))

(declare-fun m!1089599 () Bool)

(assert (=> d!265512 m!1089599))

(assert (=> d!265512 m!1087439))

(declare-fun m!1089601 () Bool)

(assert (=> b!850682 m!1089601))

(declare-fun m!1089603 () Bool)

(assert (=> b!850683 m!1089603))

(assert (=> b!849769 d!265512))

(declare-fun d!265514 () Bool)

(declare-fun res!388839 () Bool)

(declare-fun e!559849 () Bool)

(assert (=> d!265514 (=> res!388839 e!559849)))

(assert (=> d!265514 (= res!388839 ((_ is Nil!9170) lt!321979))))

(assert (=> d!265514 (= (forall!2155 lt!321979 lambda!25378) e!559849)))

(declare-fun b!850687 () Bool)

(declare-fun e!559850 () Bool)

(assert (=> b!850687 (= e!559849 e!559850)))

(declare-fun res!388840 () Bool)

(assert (=> b!850687 (=> (not res!388840) (not e!559850))))

(assert (=> b!850687 (= res!388840 (dynLambda!4267 lambda!25378 (h!14571 lt!321979)))))

(declare-fun b!850688 () Bool)

(assert (=> b!850688 (= e!559850 (forall!2155 (t!95236 lt!321979) lambda!25378))))

(assert (= (and d!265514 (not res!388839)) b!850687))

(assert (= (and b!850687 res!388840) b!850688))

(declare-fun b_lambda!28325 () Bool)

(assert (=> (not b_lambda!28325) (not b!850687)))

(declare-fun m!1089605 () Bool)

(assert (=> b!850687 m!1089605))

(declare-fun m!1089607 () Bool)

(assert (=> b!850688 m!1089607))

(assert (=> d!265050 d!265514))

(assert (=> d!265050 d!265056))

(declare-fun c!138120 () Bool)

(declare-fun d!265516 () Bool)

(assert (=> d!265516 (= c!138120 ((_ is Cons!9170) ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107))))))

(declare-fun e!559851 () List!9185)

(assert (=> d!265516 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107))) e!559851)))

(declare-fun b!850689 () Bool)

(assert (=> b!850689 (= e!559851 (++!2376 (list!3598 (charsOf!989 (h!14571 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107))))) (printList!472 thiss!20117 (t!95236 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107))))))))

(declare-fun b!850690 () Bool)

(assert (=> b!850690 (= e!559851 Nil!9169)))

(assert (= (and d!265516 c!138120) b!850689))

(assert (= (and d!265516 (not c!138120)) b!850690))

(declare-fun m!1089609 () Bool)

(assert (=> b!850689 m!1089609))

(assert (=> b!850689 m!1089609))

(declare-fun m!1089611 () Bool)

(assert (=> b!850689 m!1089611))

(declare-fun m!1089613 () Bool)

(assert (=> b!850689 m!1089613))

(assert (=> b!850689 m!1089611))

(assert (=> b!850689 m!1089613))

(declare-fun m!1089615 () Bool)

(assert (=> b!850689 m!1089615))

(assert (=> b!850011 d!265516))

(declare-fun d!265518 () Bool)

(assert (=> d!265518 (= ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297) (h!14571 l!5107)) (Cons!9170 (h!14571 l!5107) ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!850011 d!265518))

(assert (=> b!850011 d!265306))

(assert (=> b!850011 d!265308))

(declare-fun d!265520 () Bool)

(assert (=> d!265520 (= (isEmpty!5420 (originalCharacters!2276 (h!14571 l!5107))) ((_ is Nil!9169) (originalCharacters!2276 (h!14571 l!5107))))))

(assert (=> d!265026 d!265520))

(declare-fun bm!50496 () Bool)

(declare-fun call!50501 () Bool)

(assert (=> bm!50496 (= call!50501 (ruleDisjointCharsFromAllFromOtherType!235 (h!14572 rules!2621) (t!95237 rules!2621)))))

(declare-fun b!850699 () Bool)

(declare-fun e!559860 () Bool)

(declare-fun e!559858 () Bool)

(assert (=> b!850699 (= e!559860 e!559858)))

(declare-fun res!388846 () Bool)

(assert (=> b!850699 (= res!388846 (not ((_ is Cons!9171) rules!2621)))))

(assert (=> b!850699 (=> res!388846 e!559858)))

(declare-fun b!850700 () Bool)

(assert (=> b!850700 (= e!559858 call!50501)))

(declare-fun d!265522 () Bool)

(declare-fun c!138123 () Bool)

(assert (=> d!265522 (= c!138123 (and ((_ is Cons!9171) rules!2621) (not (= (isSeparator!1720 (h!14572 rules!2621)) (isSeparator!1720 (h!14572 rules!2621))))))))

(assert (=> d!265522 (= (ruleDisjointCharsFromAllFromOtherType!235 (h!14572 rules!2621) rules!2621) e!559860)))

(declare-fun b!850701 () Bool)

(declare-fun e!559859 () Bool)

(assert (=> b!850701 (= e!559859 call!50501)))

(declare-fun b!850702 () Bool)

(assert (=> b!850702 (= e!559860 e!559859)))

(declare-fun res!388845 () Bool)

(declare-fun rulesUseDisjointChars!115 (Rule!3240 Rule!3240) Bool)

(assert (=> b!850702 (= res!388845 (rulesUseDisjointChars!115 (h!14572 rules!2621) (h!14572 rules!2621)))))

(assert (=> b!850702 (=> (not res!388845) (not e!559859))))

(assert (= (and d!265522 c!138123) b!850702))

(assert (= (and d!265522 (not c!138123)) b!850699))

(assert (= (and b!850702 res!388845) b!850701))

(assert (= (and b!850699 (not res!388846)) b!850700))

(assert (= (or b!850701 b!850700) bm!50496))

(declare-fun m!1089617 () Bool)

(assert (=> bm!50496 m!1089617))

(declare-fun m!1089619 () Bool)

(assert (=> b!850702 m!1089619))

(assert (=> b!849899 d!265522))

(assert (=> d!265064 d!265062))

(declare-fun d!265524 () Bool)

(assert (=> d!265524 (separableTokensPredicate!62 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621)))

(assert (=> d!265524 true))

(declare-fun _$37!224 () Unit!13653)

(assert (=> d!265524 (= (choose!5020 thiss!20117 (h!14571 (t!95236 lt!321979)) lt!321974 rules!2621) _$37!224)))

(declare-fun bs!231172 () Bool)

(assert (= bs!231172 d!265524))

(assert (=> bs!231172 m!1087483))

(assert (=> d!265064 d!265524))

(assert (=> d!265064 d!265056))

(declare-fun d!265526 () Bool)

(declare-fun e!559861 () Bool)

(assert (=> d!265526 e!559861))

(declare-fun res!388847 () Bool)

(assert (=> d!265526 (=> (not res!388847) (not e!559861))))

(declare-fun lt!322492 () BalanceConc!6090)

(assert (=> d!265526 (= res!388847 (= (list!3598 lt!322492) (Cons!9169 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0) Nil!9169)))))

(assert (=> d!265526 (= lt!322492 (singleton!257 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)))))

(assert (=> d!265526 (= (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)) lt!322492)))

(declare-fun b!850703 () Bool)

(assert (=> b!850703 (= e!559861 (isBalanced!828 (c!137983 lt!322492)))))

(assert (= (and d!265526 res!388847) b!850703))

(declare-fun m!1089621 () Bool)

(assert (=> d!265526 m!1089621))

(assert (=> d!265526 m!1087795))

(declare-fun m!1089623 () Bool)

(assert (=> d!265526 m!1089623))

(declare-fun m!1089625 () Bool)

(assert (=> b!850703 m!1089625))

(assert (=> d!264996 d!265526))

(assert (=> d!264996 d!265150))

(declare-fun d!265528 () Bool)

(declare-fun lt!322493 () C!4876)

(assert (=> d!265528 (= lt!322493 (apply!1884 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!321979)))) 0))))

(assert (=> d!265528 (= lt!322493 (apply!1885 (c!137983 (charsOf!989 (h!14571 (t!95236 lt!321979)))) 0))))

(declare-fun e!559862 () Bool)

(assert (=> d!265528 e!559862))

(declare-fun res!388848 () Bool)

(assert (=> d!265528 (=> (not res!388848) (not e!559862))))

(assert (=> d!265528 (= res!388848 (<= 0 0))))

(assert (=> d!265528 (= (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0) lt!322493)))

(declare-fun b!850704 () Bool)

(assert (=> b!850704 (= e!559862 (< 0 (size!7643 (charsOf!989 (h!14571 (t!95236 lt!321979))))))))

(assert (= (and d!265528 res!388848) b!850704))

(assert (=> d!265528 m!1087805))

(assert (=> d!265528 m!1088369))

(assert (=> d!265528 m!1088369))

(declare-fun m!1089627 () Bool)

(assert (=> d!265528 m!1089627))

(declare-fun m!1089629 () Bool)

(assert (=> d!265528 m!1089629))

(assert (=> b!850704 m!1087805))

(assert (=> b!850704 m!1087991))

(assert (=> d!264996 d!265528))

(declare-fun d!265530 () Bool)

(declare-fun lt!322494 () Bool)

(assert (=> d!265530 (= lt!322494 (prefixMatch!10 (rulesRegex!22 thiss!20117 rules!2621) (list!3598 (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))))))

(assert (=> d!265530 (= lt!322494 (prefixMatchZipperSequence!33 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)) (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))) 0))))

(declare-fun lt!322498 () Unit!13653)

(declare-fun lt!322501 () Unit!13653)

(assert (=> d!265530 (= lt!322498 lt!322501)))

(declare-fun lt!322499 () (InoxSet Context!870))

(declare-fun lt!322496 () List!9185)

(assert (=> d!265530 (= (prefixMatch!10 (rulesRegex!22 thiss!20117 rules!2621) lt!322496) (prefixMatchZipper!10 lt!322499 lt!322496))))

(declare-fun lt!322500 () List!9193)

(assert (=> d!265530 (= lt!322501 (prefixMatchZipperRegexEquiv!10 lt!322499 lt!322500 (rulesRegex!22 thiss!20117 rules!2621) lt!322496))))

(assert (=> d!265530 (= lt!322496 (list!3598 (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)))))))

(assert (=> d!265530 (= lt!322500 (toList!576 (focus!30 (rulesRegex!22 thiss!20117 rules!2621))))))

(assert (=> d!265530 (= lt!322499 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)))))

(declare-fun lt!322497 () Unit!13653)

(declare-fun lt!322495 () Unit!13653)

(assert (=> d!265530 (= lt!322497 lt!322495)))

(declare-fun lt!322502 () (InoxSet Context!870))

(declare-fun lt!322503 () Int)

(assert (=> d!265530 (= (prefixMatchZipper!10 lt!322502 (dropList!272 (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))) lt!322503)) (prefixMatchZipperSequence!33 lt!322502 (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))) lt!322503))))

(assert (=> d!265530 (= lt!322495 (lemmaprefixMatchZipperSequenceEquivalent!10 lt!322502 (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))) lt!322503))))

(assert (=> d!265530 (= lt!322503 0)))

(assert (=> d!265530 (= lt!322502 (focus!30 (rulesRegex!22 thiss!20117 rules!2621)))))

(assert (=> d!265530 (validRegex!660 (rulesRegex!22 thiss!20117 rules!2621))))

(assert (=> d!265530 (= (prefixMatchZipperSequence!31 (rulesRegex!22 thiss!20117 rules!2621) (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)))) lt!322494)))

(declare-fun bs!231173 () Bool)

(assert (= bs!231173 d!265530))

(assert (=> bs!231173 m!1087801))

(declare-fun m!1089631 () Bool)

(assert (=> bs!231173 m!1089631))

(assert (=> bs!231173 m!1087801))

(declare-fun m!1089633 () Bool)

(assert (=> bs!231173 m!1089633))

(declare-fun m!1089635 () Bool)

(assert (=> bs!231173 m!1089635))

(assert (=> bs!231173 m!1088671))

(assert (=> bs!231173 m!1087801))

(declare-fun m!1089637 () Bool)

(assert (=> bs!231173 m!1089637))

(assert (=> bs!231173 m!1087799))

(declare-fun m!1089639 () Bool)

(assert (=> bs!231173 m!1089639))

(assert (=> bs!231173 m!1087801))

(declare-fun m!1089641 () Bool)

(assert (=> bs!231173 m!1089641))

(assert (=> bs!231173 m!1087799))

(assert (=> bs!231173 m!1088679))

(assert (=> bs!231173 m!1087801))

(declare-fun m!1089643 () Bool)

(assert (=> bs!231173 m!1089643))

(assert (=> bs!231173 m!1087799))

(assert (=> bs!231173 m!1089631))

(declare-fun m!1089645 () Bool)

(assert (=> bs!231173 m!1089645))

(assert (=> bs!231173 m!1087799))

(declare-fun m!1089647 () Bool)

(assert (=> bs!231173 m!1089647))

(assert (=> bs!231173 m!1087799))

(assert (=> bs!231173 m!1088671))

(assert (=> bs!231173 m!1089643))

(declare-fun m!1089649 () Bool)

(assert (=> bs!231173 m!1089649))

(assert (=> bs!231173 m!1088671))

(assert (=> bs!231173 m!1088689))

(assert (=> d!264996 d!265530))

(assert (=> d!264996 d!265246))

(declare-fun b!850707 () Bool)

(declare-fun res!388851 () Bool)

(declare-fun e!559863 () Bool)

(assert (=> b!850707 (=> (not res!388851) (not e!559863))))

(assert (=> b!850707 (= res!388851 (>= (height!400 (++!2378 (c!137983 (charsOf!989 (h!14571 lt!321979))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))) (max!0 (height!400 (c!137983 (charsOf!989 (h!14571 lt!321979)))) (height!400 (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)))))))))

(declare-fun b!850705 () Bool)

(declare-fun res!388852 () Bool)

(assert (=> b!850705 (=> (not res!388852) (not e!559863))))

(assert (=> b!850705 (= res!388852 (isBalanced!828 (++!2378 (c!137983 (charsOf!989 (h!14571 lt!321979))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))))))

(declare-fun d!265532 () Bool)

(assert (=> d!265532 e!559863))

(declare-fun res!388849 () Bool)

(assert (=> d!265532 (=> (not res!388849) (not e!559863))))

(assert (=> d!265532 (= res!388849 (appendAssocInst!196 (c!137983 (charsOf!989 (h!14571 lt!321979))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0)))))))

(declare-fun lt!322504 () BalanceConc!6090)

(assert (=> d!265532 (= lt!322504 (BalanceConc!6091 (++!2378 (c!137983 (charsOf!989 (h!14571 lt!321979))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))))))

(assert (=> d!265532 (= (++!2375 (charsOf!989 (h!14571 lt!321979)) (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))) lt!322504)))

(declare-fun b!850708 () Bool)

(assert (=> b!850708 (= e!559863 (= (list!3598 lt!322504) (++!2376 (list!3598 (charsOf!989 (h!14571 lt!321979))) (list!3598 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))))))

(declare-fun b!850706 () Bool)

(declare-fun res!388850 () Bool)

(assert (=> b!850706 (=> (not res!388850) (not e!559863))))

(assert (=> b!850706 (= res!388850 (<= (height!400 (++!2378 (c!137983 (charsOf!989 (h!14571 lt!321979))) (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))) (+ (max!0 (height!400 (c!137983 (charsOf!989 (h!14571 lt!321979)))) (height!400 (c!137983 (singletonSeq!536 (apply!1878 (charsOf!989 (h!14571 (t!95236 lt!321979))) 0))))) 1)))))

(assert (= (and d!265532 res!388849) b!850705))

(assert (= (and b!850705 res!388852) b!850706))

(assert (= (and b!850706 res!388850) b!850707))

(assert (= (and b!850707 res!388851) b!850708))

(declare-fun m!1089651 () Bool)

(assert (=> d!265532 m!1089651))

(declare-fun m!1089653 () Bool)

(assert (=> d!265532 m!1089653))

(declare-fun m!1089655 () Bool)

(assert (=> b!850708 m!1089655))

(assert (=> b!850708 m!1087807))

(declare-fun m!1089657 () Bool)

(assert (=> b!850708 m!1089657))

(assert (=> b!850708 m!1087797))

(declare-fun m!1089659 () Bool)

(assert (=> b!850708 m!1089659))

(assert (=> b!850708 m!1089657))

(assert (=> b!850708 m!1089659))

(declare-fun m!1089661 () Bool)

(assert (=> b!850708 m!1089661))

(declare-fun m!1089663 () Bool)

(assert (=> b!850706 m!1089663))

(declare-fun m!1089665 () Bool)

(assert (=> b!850706 m!1089665))

(assert (=> b!850706 m!1089653))

(assert (=> b!850706 m!1089665))

(assert (=> b!850706 m!1089663))

(declare-fun m!1089667 () Bool)

(assert (=> b!850706 m!1089667))

(assert (=> b!850706 m!1089653))

(declare-fun m!1089669 () Bool)

(assert (=> b!850706 m!1089669))

(assert (=> b!850705 m!1089653))

(assert (=> b!850705 m!1089653))

(declare-fun m!1089671 () Bool)

(assert (=> b!850705 m!1089671))

(assert (=> b!850707 m!1089663))

(assert (=> b!850707 m!1089665))

(assert (=> b!850707 m!1089653))

(assert (=> b!850707 m!1089665))

(assert (=> b!850707 m!1089663))

(assert (=> b!850707 m!1089667))

(assert (=> b!850707 m!1089653))

(assert (=> b!850707 m!1089669))

(assert (=> d!264996 d!265532))

(declare-fun d!265534 () Bool)

(declare-fun lt!322505 () BalanceConc!6090)

(assert (=> d!265534 (= (list!3598 lt!322505) (originalCharacters!2276 (h!14571 lt!321979)))))

(assert (=> d!265534 (= lt!322505 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979)))) (value!55719 (h!14571 lt!321979))))))

(assert (=> d!265534 (= (charsOf!989 (h!14571 lt!321979)) lt!322505)))

(declare-fun b_lambda!28327 () Bool)

(assert (=> (not b_lambda!28327) (not d!265534)))

(declare-fun tb!59689 () Bool)

(declare-fun t!95511 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95511) tb!59689))

(declare-fun b!850709 () Bool)

(declare-fun e!559864 () Bool)

(declare-fun tp!267830 () Bool)

(assert (=> b!850709 (= e!559864 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979)))) (value!55719 (h!14571 lt!321979))))) tp!267830))))

(declare-fun result!69148 () Bool)

(assert (=> tb!59689 (= result!69148 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979)))) (value!55719 (h!14571 lt!321979)))) e!559864))))

(assert (= tb!59689 b!850709))

(declare-fun m!1089673 () Bool)

(assert (=> b!850709 m!1089673))

(declare-fun m!1089675 () Bool)

(assert (=> tb!59689 m!1089675))

(assert (=> d!265534 t!95511))

(declare-fun b_and!74591 () Bool)

(assert (= b_and!74587 (and (=> t!95511 result!69148) b_and!74591)))

(declare-fun t!95513 () Bool)

(declare-fun tb!59691 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95513) tb!59691))

(declare-fun result!69150 () Bool)

(assert (= result!69150 result!69148))

(assert (=> d!265534 t!95513))

(declare-fun b_and!74593 () Bool)

(assert (= b_and!74589 (and (=> t!95513 result!69150) b_and!74593)))

(declare-fun tb!59693 () Bool)

(declare-fun t!95515 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95515) tb!59693))

(declare-fun result!69152 () Bool)

(assert (= result!69152 result!69148))

(assert (=> d!265534 t!95515))

(declare-fun b_and!74595 () Bool)

(assert (= b_and!74583 (and (=> t!95515 result!69152) b_and!74595)))

(declare-fun tb!59695 () Bool)

(declare-fun t!95517 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95517) tb!59695))

(declare-fun result!69154 () Bool)

(assert (= result!69154 result!69148))

(assert (=> d!265534 t!95517))

(declare-fun b_and!74597 () Bool)

(assert (= b_and!74585 (and (=> t!95517 result!69154) b_and!74597)))

(declare-fun tb!59697 () Bool)

(declare-fun t!95519 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95519) tb!59697))

(declare-fun result!69156 () Bool)

(assert (= result!69156 result!69148))

(assert (=> d!265534 t!95519))

(declare-fun b_and!74599 () Bool)

(assert (= b_and!74581 (and (=> t!95519 result!69156) b_and!74599)))

(declare-fun m!1089677 () Bool)

(assert (=> d!265534 m!1089677))

(declare-fun m!1089679 () Bool)

(assert (=> d!265534 m!1089679))

(assert (=> d!264996 d!265534))

(declare-fun bs!231174 () Bool)

(declare-fun d!265536 () Bool)

(assert (= bs!231174 (and d!265536 d!265256)))

(declare-fun lambda!25418 () Int)

(assert (=> bs!231174 (= (= (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (= lambda!25418 lambda!25400))))

(assert (=> d!265536 true))

(assert (=> d!265536 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))) (dynLambda!4271 order!5875 lambda!25418))))

(assert (=> d!265536 (= (equivClasses!635 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))) (Forall2!319 lambda!25418))))

(declare-fun bs!231175 () Bool)

(assert (= bs!231175 d!265536))

(declare-fun m!1089681 () Bool)

(assert (=> bs!231175 m!1089681))

(assert (=> b!849902 d!265536))

(declare-fun d!265538 () Bool)

(assert (=> d!265538 (= (list!3598 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))) (list!3601 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(declare-fun bs!231176 () Bool)

(assert (= bs!231176 d!265538))

(declare-fun m!1089683 () Bool)

(assert (=> bs!231176 m!1089683))

(assert (=> b!849885 d!265538))

(declare-fun d!265540 () Bool)

(declare-fun res!388853 () Bool)

(declare-fun e!559865 () Bool)

(assert (=> d!265540 (=> res!388853 e!559865)))

(assert (=> d!265540 (= res!388853 ((_ is Nil!9170) lt!321975))))

(assert (=> d!265540 (= (forall!2155 lt!321975 lambda!25370) e!559865)))

(declare-fun b!850710 () Bool)

(declare-fun e!559866 () Bool)

(assert (=> b!850710 (= e!559865 e!559866)))

(declare-fun res!388854 () Bool)

(assert (=> b!850710 (=> (not res!388854) (not e!559866))))

(assert (=> b!850710 (= res!388854 (dynLambda!4267 lambda!25370 (h!14571 lt!321975)))))

(declare-fun b!850711 () Bool)

(assert (=> b!850711 (= e!559866 (forall!2155 (t!95236 lt!321975) lambda!25370))))

(assert (= (and d!265540 (not res!388853)) b!850710))

(assert (= (and b!850710 res!388854) b!850711))

(declare-fun b_lambda!28329 () Bool)

(assert (=> (not b_lambda!28329) (not b!850710)))

(declare-fun m!1089685 () Bool)

(assert (=> b!850710 m!1089685))

(declare-fun m!1089687 () Bool)

(assert (=> b!850711 m!1089687))

(assert (=> d!264958 d!265540))

(assert (=> d!264958 d!265056))

(declare-fun d!265542 () Bool)

(declare-fun c!138124 () Bool)

(assert (=> d!265542 (= c!138124 ((_ is Cons!9170) lt!322163))))

(declare-fun e!559867 () List!9185)

(assert (=> d!265542 (= (printList!472 thiss!20117 lt!322163) e!559867)))

(declare-fun b!850712 () Bool)

(assert (=> b!850712 (= e!559867 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322163))) (printList!472 thiss!20117 (t!95236 lt!322163))))))

(declare-fun b!850713 () Bool)

(assert (=> b!850713 (= e!559867 Nil!9169)))

(assert (= (and d!265542 c!138124) b!850712))

(assert (= (and d!265542 (not c!138124)) b!850713))

(declare-fun m!1089689 () Bool)

(assert (=> b!850712 m!1089689))

(assert (=> b!850712 m!1089689))

(declare-fun m!1089691 () Bool)

(assert (=> b!850712 m!1089691))

(declare-fun m!1089693 () Bool)

(assert (=> b!850712 m!1089693))

(assert (=> b!850712 m!1089691))

(assert (=> b!850712 m!1089693))

(declare-fun m!1089695 () Bool)

(assert (=> b!850712 m!1089695))

(assert (=> d!265070 d!265542))

(declare-fun d!265544 () Bool)

(declare-fun c!138127 () Bool)

(assert (=> d!265544 (= c!138127 ((_ is Cons!9170) lt!321981))))

(declare-fun e!559870 () List!9185)

(assert (=> d!265544 (= (printWithSeparatorTokenList!30 thiss!20117 lt!321981 separatorToken!297) e!559870)))

(declare-fun b!850718 () Bool)

(assert (=> b!850718 (= e!559870 (++!2376 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!321981))) (list!3598 (charsOf!989 separatorToken!297))) (printWithSeparatorTokenList!30 thiss!20117 (t!95236 lt!321981) separatorToken!297)))))

(declare-fun b!850719 () Bool)

(assert (=> b!850719 (= e!559870 Nil!9169)))

(assert (= (and d!265544 c!138127) b!850718))

(assert (= (and d!265544 (not c!138127)) b!850719))

(declare-fun m!1089697 () Bool)

(assert (=> b!850718 m!1089697))

(assert (=> b!850718 m!1088291))

(declare-fun m!1089699 () Bool)

(assert (=> b!850718 m!1089699))

(assert (=> b!850718 m!1088031))

(assert (=> b!850718 m!1088033))

(assert (=> b!850718 m!1088033))

(assert (=> b!850718 m!1087955))

(assert (=> b!850718 m!1089697))

(assert (=> b!850718 m!1088291))

(assert (=> b!850718 m!1087951))

(assert (=> b!850718 m!1087955))

(assert (=> b!850718 m!1088031))

(assert (=> b!850718 m!1087951))

(assert (=> d!265070 d!265544))

(declare-fun d!265546 () Bool)

(declare-fun e!559873 () Bool)

(assert (=> d!265546 e!559873))

(declare-fun res!388857 () Bool)

(assert (=> d!265546 (=> (not res!388857) (not e!559873))))

(declare-fun lt!322508 () BalanceConc!6092)

(assert (=> d!265546 (= res!388857 (= (list!3597 lt!322508) lt!321979))))

(declare-fun fromList!312 (List!9186) Conc!3039)

(assert (=> d!265546 (= lt!322508 (BalanceConc!6093 (fromList!312 lt!321979)))))

(assert (=> d!265546 (= (fromListB!671 lt!321979) lt!322508)))

(declare-fun b!850722 () Bool)

(assert (=> b!850722 (= e!559873 (isBalanced!829 (fromList!312 lt!321979)))))

(assert (= (and d!265546 res!388857) b!850722))

(declare-fun m!1089701 () Bool)

(assert (=> d!265546 m!1089701))

(declare-fun m!1089703 () Bool)

(assert (=> d!265546 m!1089703))

(assert (=> b!850722 m!1089703))

(assert (=> b!850722 m!1089703))

(declare-fun m!1089705 () Bool)

(assert (=> b!850722 m!1089705))

(assert (=> d!264948 d!265546))

(declare-fun c!138129 () Bool)

(declare-fun d!265548 () Bool)

(assert (=> d!265548 (= c!138129 ((_ is Cons!9170) ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981))))))

(declare-fun e!559874 () List!9185)

(assert (=> d!265548 (= (printList!472 thiss!20117 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981))) e!559874)))

(declare-fun b!850723 () Bool)

(assert (=> b!850723 (= e!559874 (++!2376 (list!3598 (charsOf!989 (h!14571 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981))))) (printList!472 thiss!20117 (t!95236 ($colon$colon!85 ($colon$colon!85 (withSeparatorTokenList!52 thiss!20117 (t!95236 lt!321981) separatorToken!297) separatorToken!297) (h!14571 lt!321981))))))))

(declare-fun b!850724 () Bool)

(assert (=> b!850724 (= e!559874 Nil!9169)))

(assert (= (and d!265548 c!138129) b!850723))

(assert (= (and d!265548 (not c!138129)) b!850724))

(declare-fun m!1089707 () Bool)

(assert (=> b!850723 m!1089707))

(assert (=> b!850723 m!1089707))

(declare-fun m!1089709 () Bool)

(assert (=> b!850723 m!1089709))

(declare-fun m!1089711 () Bool)

(assert (=> b!850723 m!1089711))

(assert (=> b!850723 m!1089709))

(assert (=> b!850723 m!1089711))

(declare-fun m!1089713 () Bool)

(assert (=> b!850723 m!1089713))

(assert (=> b!850032 d!265548))

(assert (=> b!850032 d!265122))

(assert (=> b!850032 d!265134))

(assert (=> b!850032 d!265128))

(declare-fun d!265550 () Bool)

(assert (=> d!265550 (= (list!3598 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))) (list!3601 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(declare-fun bs!231177 () Bool)

(assert (= bs!231177 d!265550))

(declare-fun m!1089715 () Bool)

(assert (=> bs!231177 m!1089715))

(assert (=> b!849892 d!265550))

(declare-fun d!265552 () Bool)

(declare-fun res!388858 () Bool)

(declare-fun e!559876 () Bool)

(assert (=> d!265552 (=> res!388858 e!559876)))

(assert (=> d!265552 (= res!388858 (or (not ((_ is Cons!9170) (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))) (not ((_ is Cons!9170) (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))))))))

(assert (=> d!265552 (= (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))) rules!2621) e!559876)))

(declare-fun b!850725 () Bool)

(declare-fun e!559875 () Bool)

(assert (=> b!850725 (= e!559876 e!559875)))

(declare-fun res!388859 () Bool)

(assert (=> b!850725 (=> (not res!388859) (not e!559875))))

(assert (=> b!850725 (= res!388859 (separableTokensPredicate!62 thiss!20117 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979)))) (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))) rules!2621))))

(declare-fun lt!322513 () Unit!13653)

(declare-fun Unit!13679 () Unit!13653)

(assert (=> b!850725 (= lt!322513 Unit!13679)))

(assert (=> b!850725 (> (size!7643 (charsOf!989 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))))) 0)))

(declare-fun lt!322509 () Unit!13653)

(declare-fun Unit!13680 () Unit!13653)

(assert (=> b!850725 (= lt!322509 Unit!13680)))

(assert (=> b!850725 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))))))

(declare-fun lt!322515 () Unit!13653)

(declare-fun Unit!13681 () Unit!13653)

(assert (=> b!850725 (= lt!322515 Unit!13681)))

(assert (=> b!850725 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979)))))))

(declare-fun lt!322510 () Unit!13653)

(declare-fun lt!322514 () Unit!13653)

(assert (=> b!850725 (= lt!322510 lt!322514)))

(assert (=> b!850725 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))))))

(assert (=> b!850725 (= lt!322514 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))) (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979)))))))))

(declare-fun lt!322512 () Unit!13653)

(declare-fun lt!322511 () Unit!13653)

(assert (=> b!850725 (= lt!322512 lt!322511)))

(assert (=> b!850725 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979)))))))

(assert (=> b!850725 (= lt!322511 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))) (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))))))

(declare-fun b!850726 () Bool)

(assert (=> b!850726 (= e!559875 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979))))) (t!95236 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321979)) (t!95236 (t!95236 lt!321979)))))) rules!2621))))

(assert (= (and d!265552 (not res!388858)) b!850725))

(assert (= (and b!850725 res!388859) b!850726))

(declare-fun m!1089717 () Bool)

(assert (=> b!850725 m!1089717))

(declare-fun m!1089719 () Bool)

(assert (=> b!850725 m!1089719))

(declare-fun m!1089721 () Bool)

(assert (=> b!850725 m!1089721))

(declare-fun m!1089723 () Bool)

(assert (=> b!850725 m!1089723))

(declare-fun m!1089725 () Bool)

(assert (=> b!850725 m!1089725))

(declare-fun m!1089727 () Bool)

(assert (=> b!850725 m!1089727))

(assert (=> b!850725 m!1089727))

(declare-fun m!1089729 () Bool)

(assert (=> b!850725 m!1089729))

(declare-fun m!1089731 () Bool)

(assert (=> b!850726 m!1089731))

(assert (=> b!850024 d!265552))

(declare-fun d!265554 () Bool)

(assert (=> d!265554 (= (isEmpty!5420 (originalCharacters!2276 separatorToken!297)) ((_ is Nil!9169) (originalCharacters!2276 separatorToken!297)))))

(assert (=> d!265030 d!265554))

(declare-fun bs!231178 () Bool)

(declare-fun d!265556 () Bool)

(assert (= bs!231178 (and d!265556 d!265256)))

(declare-fun lambda!25419 () Int)

(assert (=> bs!231178 (= (= (toValue!2753 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (= lambda!25419 lambda!25400))))

(declare-fun bs!231179 () Bool)

(assert (= bs!231179 (and d!265556 d!265536)))

(assert (=> bs!231179 (= (= (toValue!2753 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297)))) (= lambda!25419 lambda!25418))))

(assert (=> d!265556 true))

(assert (=> d!265556 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4271 order!5875 lambda!25419))))

(assert (=> d!265556 (= (equivClasses!635 (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (Forall2!319 lambda!25419))))

(declare-fun bs!231180 () Bool)

(assert (= bs!231180 d!265556))

(declare-fun m!1089733 () Bool)

(assert (=> bs!231180 m!1089733))

(assert (=> b!849718 d!265556))

(declare-fun d!265558 () Bool)

(declare-fun charsToInt!0 (List!9184) (_ BitVec 32))

(assert (=> d!265558 (= (inv!16 (value!55719 separatorToken!297)) (= (charsToInt!0 (text!12949 (value!55719 separatorToken!297))) (value!55710 (value!55719 separatorToken!297))))))

(declare-fun bs!231181 () Bool)

(assert (= bs!231181 d!265558))

(declare-fun m!1089735 () Bool)

(assert (=> bs!231181 m!1089735))

(assert (=> b!849878 d!265558))

(declare-fun d!265560 () Bool)

(assert (=> d!265560 (= (inv!11648 (tag!1982 (rule!3143 (h!14571 (t!95236 l!5107))))) (= (mod (str.len (value!55718 (tag!1982 (rule!3143 (h!14571 (t!95236 l!5107)))))) 2) 0))))

(assert (=> b!850083 d!265560))

(declare-fun d!265562 () Bool)

(declare-fun res!388860 () Bool)

(declare-fun e!559877 () Bool)

(assert (=> d!265562 (=> (not res!388860) (not e!559877))))

(assert (=> d!265562 (= res!388860 (semiInverseModEq!668 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))))))

(assert (=> d!265562 (= (inv!11652 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) e!559877)))

(declare-fun b!850727 () Bool)

(assert (=> b!850727 (= e!559877 (equivClasses!635 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))))))

(assert (= (and d!265562 res!388860) b!850727))

(declare-fun m!1089737 () Bool)

(assert (=> d!265562 m!1089737))

(declare-fun m!1089739 () Bool)

(assert (=> b!850727 m!1089739))

(assert (=> b!850083 d!265562))

(declare-fun d!265564 () Bool)

(assert (=> d!265564 (= (inv!16 (value!55719 (h!14571 l!5107))) (= (charsToInt!0 (text!12949 (value!55719 (h!14571 l!5107)))) (value!55710 (value!55719 (h!14571 l!5107)))))))

(declare-fun bs!231182 () Bool)

(assert (= bs!231182 d!265564))

(declare-fun m!1089741 () Bool)

(assert (=> bs!231182 m!1089741))

(assert (=> b!849982 d!265564))

(declare-fun d!265566 () Bool)

(declare-fun res!388861 () Bool)

(declare-fun e!559878 () Bool)

(assert (=> d!265566 (=> res!388861 e!559878)))

(assert (=> d!265566 (= res!388861 ((_ is Nil!9170) (t!95236 l!5107)))))

(assert (=> d!265566 (= (forall!2155 (t!95236 l!5107) lambda!25358) e!559878)))

(declare-fun b!850728 () Bool)

(declare-fun e!559879 () Bool)

(assert (=> b!850728 (= e!559878 e!559879)))

(declare-fun res!388862 () Bool)

(assert (=> b!850728 (=> (not res!388862) (not e!559879))))

(assert (=> b!850728 (= res!388862 (dynLambda!4267 lambda!25358 (h!14571 (t!95236 l!5107))))))

(declare-fun b!850729 () Bool)

(assert (=> b!850729 (= e!559879 (forall!2155 (t!95236 (t!95236 l!5107)) lambda!25358))))

(assert (= (and d!265566 (not res!388861)) b!850728))

(assert (= (and b!850728 res!388862) b!850729))

(declare-fun b_lambda!28331 () Bool)

(assert (=> (not b_lambda!28331) (not b!850728)))

(declare-fun m!1089743 () Bool)

(assert (=> b!850728 m!1089743))

(declare-fun m!1089745 () Bool)

(assert (=> b!850729 m!1089745))

(assert (=> b!850030 d!265566))

(declare-fun d!265568 () Bool)

(declare-fun res!388863 () Bool)

(declare-fun e!559880 () Bool)

(assert (=> d!265568 (=> (not res!388863) (not e!559880))))

(assert (=> d!265568 (= res!388863 (not (isEmpty!5420 (originalCharacters!2276 (h!14571 (t!95236 l!5107))))))))

(assert (=> d!265568 (= (inv!11651 (h!14571 (t!95236 l!5107))) e!559880)))

(declare-fun b!850730 () Bool)

(declare-fun res!388864 () Bool)

(assert (=> b!850730 (=> (not res!388864) (not e!559880))))

(assert (=> b!850730 (= res!388864 (= (originalCharacters!2276 (h!14571 (t!95236 l!5107))) (list!3598 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (value!55719 (h!14571 (t!95236 l!5107)))))))))

(declare-fun b!850731 () Bool)

(assert (=> b!850731 (= e!559880 (= (size!7637 (h!14571 (t!95236 l!5107))) (size!7641 (originalCharacters!2276 (h!14571 (t!95236 l!5107))))))))

(assert (= (and d!265568 res!388863) b!850730))

(assert (= (and b!850730 res!388864) b!850731))

(declare-fun b_lambda!28333 () Bool)

(assert (=> (not b_lambda!28333) (not b!850730)))

(declare-fun t!95521 () Bool)

(declare-fun tb!59699 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95521) tb!59699))

(declare-fun b!850732 () Bool)

(declare-fun e!559881 () Bool)

(declare-fun tp!267831 () Bool)

(assert (=> b!850732 (= e!559881 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (value!55719 (h!14571 (t!95236 l!5107)))))) tp!267831))))

(declare-fun result!69158 () Bool)

(assert (=> tb!59699 (= result!69158 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (value!55719 (h!14571 (t!95236 l!5107))))) e!559881))))

(assert (= tb!59699 b!850732))

(declare-fun m!1089747 () Bool)

(assert (=> b!850732 m!1089747))

(declare-fun m!1089749 () Bool)

(assert (=> tb!59699 m!1089749))

(assert (=> b!850730 t!95521))

(declare-fun b_and!74601 () Bool)

(assert (= b_and!74591 (and (=> t!95521 result!69158) b_and!74601)))

(declare-fun t!95523 () Bool)

(declare-fun tb!59701 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95523) tb!59701))

(declare-fun result!69160 () Bool)

(assert (= result!69160 result!69158))

(assert (=> b!850730 t!95523))

(declare-fun b_and!74603 () Bool)

(assert (= b_and!74593 (and (=> t!95523 result!69160) b_and!74603)))

(declare-fun t!95525 () Bool)

(declare-fun tb!59703 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95525) tb!59703))

(declare-fun result!69162 () Bool)

(assert (= result!69162 result!69158))

(assert (=> b!850730 t!95525))

(declare-fun b_and!74605 () Bool)

(assert (= b_and!74599 (and (=> t!95525 result!69162) b_and!74605)))

(declare-fun tb!59705 () Bool)

(declare-fun t!95527 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95527) tb!59705))

(declare-fun result!69164 () Bool)

(assert (= result!69164 result!69158))

(assert (=> b!850730 t!95527))

(declare-fun b_and!74607 () Bool)

(assert (= b_and!74597 (and (=> t!95527 result!69164) b_and!74607)))

(declare-fun t!95529 () Bool)

(declare-fun tb!59707 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95529) tb!59707))

(declare-fun result!69166 () Bool)

(assert (= result!69166 result!69158))

(assert (=> b!850730 t!95529))

(declare-fun b_and!74609 () Bool)

(assert (= b_and!74595 (and (=> t!95529 result!69166) b_and!74609)))

(declare-fun m!1089751 () Bool)

(assert (=> d!265568 m!1089751))

(declare-fun m!1089753 () Bool)

(assert (=> b!850730 m!1089753))

(assert (=> b!850730 m!1089753))

(declare-fun m!1089755 () Bool)

(assert (=> b!850730 m!1089755))

(declare-fun m!1089757 () Bool)

(assert (=> b!850731 m!1089757))

(assert (=> b!850081 d!265568))

(declare-fun d!265570 () Bool)

(declare-fun charsToBigInt!0 (List!9184 Int) Int)

(assert (=> d!265570 (= (inv!15 (value!55719 separatorToken!297)) (= (charsToBigInt!0 (text!12951 (value!55719 separatorToken!297)) 0) (value!55714 (value!55719 separatorToken!297))))))

(declare-fun bs!231183 () Bool)

(assert (= bs!231183 d!265570))

(declare-fun m!1089759 () Bool)

(assert (=> bs!231183 m!1089759))

(assert (=> b!849876 d!265570))

(declare-fun bs!231184 () Bool)

(declare-fun d!265572 () Bool)

(assert (= bs!231184 (and d!265572 d!265190)))

(declare-fun lambda!25420 () Int)

(assert (=> bs!231184 (= (and (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) (= (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297))))) (= lambda!25420 lambda!25385))))

(assert (=> d!265572 true))

(assert (=> d!265572 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (dynLambda!4270 order!5871 lambda!25420))))

(assert (=> d!265572 true))

(assert (=> d!265572 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (dynLambda!4270 order!5871 lambda!25420))))

(assert (=> d!265572 (= (semiInverseModEq!668 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (Forall!409 lambda!25420))))

(declare-fun bs!231185 () Bool)

(assert (= bs!231185 d!265572))

(declare-fun m!1089761 () Bool)

(assert (=> bs!231185 m!1089761))

(assert (=> d!265036 d!265572))

(declare-fun d!265574 () Bool)

(declare-fun res!388865 () Bool)

(declare-fun e!559883 () Bool)

(assert (=> d!265574 (=> res!388865 e!559883)))

(assert (=> d!265574 (= res!388865 (or (not ((_ is Cons!9170) (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))) (not ((_ is Cons!9170) (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))))))))

(assert (=> d!265574 (= (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))) rules!2621) e!559883)))

(declare-fun b!850733 () Bool)

(declare-fun e!559882 () Bool)

(assert (=> b!850733 (= e!559883 e!559882)))

(declare-fun res!388866 () Bool)

(assert (=> b!850733 (=> (not res!388866) (not e!559882))))

(assert (=> b!850733 (= res!388866 (separableTokensPredicate!62 thiss!20117 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975)))) (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))) rules!2621))))

(declare-fun lt!322520 () Unit!13653)

(declare-fun Unit!13682 () Unit!13653)

(assert (=> b!850733 (= lt!322520 Unit!13682)))

(assert (=> b!850733 (> (size!7643 (charsOf!989 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))))) 0)))

(declare-fun lt!322516 () Unit!13653)

(declare-fun Unit!13683 () Unit!13653)

(assert (=> b!850733 (= lt!322516 Unit!13683)))

(assert (=> b!850733 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))))))

(declare-fun lt!322522 () Unit!13653)

(declare-fun Unit!13684 () Unit!13653)

(assert (=> b!850733 (= lt!322522 Unit!13684)))

(assert (=> b!850733 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975)))))))

(declare-fun lt!322517 () Unit!13653)

(declare-fun lt!322521 () Unit!13653)

(assert (=> b!850733 (= lt!322517 lt!322521)))

(assert (=> b!850733 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))))))

(assert (=> b!850733 (= lt!322521 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))) (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975)))))))))

(declare-fun lt!322519 () Unit!13653)

(declare-fun lt!322518 () Unit!13653)

(assert (=> b!850733 (= lt!322519 lt!322518)))

(assert (=> b!850733 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975)))))))

(assert (=> b!850733 (= lt!322518 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!230 thiss!20117 rules!2621 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))) (h!14571 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))))))

(declare-fun b!850734 () Bool)

(assert (=> b!850734 (= e!559882 (tokensListTwoByTwoPredicateSeparableList!44 thiss!20117 (Cons!9170 (h!14571 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975))))) (t!95236 (t!95236 (Cons!9170 (h!14571 (t!95236 lt!321975)) (t!95236 (t!95236 lt!321975)))))) rules!2621))))

(assert (= (and d!265574 (not res!388865)) b!850733))

(assert (= (and b!850733 res!388866) b!850734))

(declare-fun m!1089763 () Bool)

(assert (=> b!850733 m!1089763))

(declare-fun m!1089765 () Bool)

(assert (=> b!850733 m!1089765))

(declare-fun m!1089767 () Bool)

(assert (=> b!850733 m!1089767))

(declare-fun m!1089769 () Bool)

(assert (=> b!850733 m!1089769))

(declare-fun m!1089771 () Bool)

(assert (=> b!850733 m!1089771))

(declare-fun m!1089773 () Bool)

(assert (=> b!850733 m!1089773))

(assert (=> b!850733 m!1089773))

(declare-fun m!1089775 () Bool)

(assert (=> b!850733 m!1089775))

(declare-fun m!1089777 () Bool)

(assert (=> b!850734 m!1089777))

(assert (=> b!849979 d!265574))

(declare-fun d!265576 () Bool)

(assert (=> d!265576 (= (inv!15 (value!55719 (h!14571 l!5107))) (= (charsToBigInt!0 (text!12951 (value!55719 (h!14571 l!5107))) 0) (value!55714 (value!55719 (h!14571 l!5107)))))))

(declare-fun bs!231186 () Bool)

(assert (= bs!231186 d!265576))

(declare-fun m!1089779 () Bool)

(assert (=> bs!231186 m!1089779))

(assert (=> b!849980 d!265576))

(declare-fun b!850738 () Bool)

(declare-fun e!559884 () Bool)

(declare-fun lt!322523 () List!9185)

(assert (=> b!850738 (= e!559884 (or (not (= (printList!472 thiss!20117 (t!95236 lt!322157)) Nil!9169)) (= lt!322523 (list!3598 (charsOf!989 (h!14571 lt!322157))))))))

(declare-fun d!265578 () Bool)

(assert (=> d!265578 e!559884))

(declare-fun res!388868 () Bool)

(assert (=> d!265578 (=> (not res!388868) (not e!559884))))

(assert (=> d!265578 (= res!388868 (= (content!1342 lt!322523) ((_ map or) (content!1342 (list!3598 (charsOf!989 (h!14571 lt!322157)))) (content!1342 (printList!472 thiss!20117 (t!95236 lt!322157))))))))

(declare-fun e!559885 () List!9185)

(assert (=> d!265578 (= lt!322523 e!559885)))

(declare-fun c!138130 () Bool)

(assert (=> d!265578 (= c!138130 ((_ is Nil!9169) (list!3598 (charsOf!989 (h!14571 lt!322157)))))))

(assert (=> d!265578 (= (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322157))) (printList!472 thiss!20117 (t!95236 lt!322157))) lt!322523)))

(declare-fun b!850737 () Bool)

(declare-fun res!388867 () Bool)

(assert (=> b!850737 (=> (not res!388867) (not e!559884))))

(assert (=> b!850737 (= res!388867 (= (size!7641 lt!322523) (+ (size!7641 (list!3598 (charsOf!989 (h!14571 lt!322157)))) (size!7641 (printList!472 thiss!20117 (t!95236 lt!322157))))))))

(declare-fun b!850736 () Bool)

(assert (=> b!850736 (= e!559885 (Cons!9169 (h!14570 (list!3598 (charsOf!989 (h!14571 lt!322157)))) (++!2376 (t!95235 (list!3598 (charsOf!989 (h!14571 lt!322157)))) (printList!472 thiss!20117 (t!95236 lt!322157)))))))

(declare-fun b!850735 () Bool)

(assert (=> b!850735 (= e!559885 (printList!472 thiss!20117 (t!95236 lt!322157)))))

(assert (= (and d!265578 c!138130) b!850735))

(assert (= (and d!265578 (not c!138130)) b!850736))

(assert (= (and d!265578 res!388868) b!850737))

(assert (= (and b!850737 res!388867) b!850738))

(declare-fun m!1089781 () Bool)

(assert (=> d!265578 m!1089781))

(assert (=> d!265578 m!1088051))

(declare-fun m!1089783 () Bool)

(assert (=> d!265578 m!1089783))

(assert (=> d!265578 m!1088053))

(declare-fun m!1089785 () Bool)

(assert (=> d!265578 m!1089785))

(declare-fun m!1089787 () Bool)

(assert (=> b!850737 m!1089787))

(assert (=> b!850737 m!1088051))

(declare-fun m!1089789 () Bool)

(assert (=> b!850737 m!1089789))

(assert (=> b!850737 m!1088053))

(declare-fun m!1089791 () Bool)

(assert (=> b!850737 m!1089791))

(assert (=> b!850736 m!1088053))

(declare-fun m!1089793 () Bool)

(assert (=> b!850736 m!1089793))

(assert (=> b!850039 d!265578))

(declare-fun d!265580 () Bool)

(assert (=> d!265580 (= (list!3598 (charsOf!989 (h!14571 lt!322157))) (list!3601 (c!137983 (charsOf!989 (h!14571 lt!322157)))))))

(declare-fun bs!231187 () Bool)

(assert (= bs!231187 d!265580))

(declare-fun m!1089795 () Bool)

(assert (=> bs!231187 m!1089795))

(assert (=> b!850039 d!265580))

(declare-fun d!265582 () Bool)

(declare-fun lt!322524 () BalanceConc!6090)

(assert (=> d!265582 (= (list!3598 lt!322524) (originalCharacters!2276 (h!14571 lt!322157)))))

(assert (=> d!265582 (= lt!322524 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157)))) (value!55719 (h!14571 lt!322157))))))

(assert (=> d!265582 (= (charsOf!989 (h!14571 lt!322157)) lt!322524)))

(declare-fun b_lambda!28335 () Bool)

(assert (=> (not b_lambda!28335) (not d!265582)))

(declare-fun t!95531 () Bool)

(declare-fun tb!59709 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95531) tb!59709))

(declare-fun b!850739 () Bool)

(declare-fun e!559886 () Bool)

(declare-fun tp!267832 () Bool)

(assert (=> b!850739 (= e!559886 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157)))) (value!55719 (h!14571 lt!322157))))) tp!267832))))

(declare-fun result!69168 () Bool)

(assert (=> tb!59709 (= result!69168 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157)))) (value!55719 (h!14571 lt!322157)))) e!559886))))

(assert (= tb!59709 b!850739))

(declare-fun m!1089797 () Bool)

(assert (=> b!850739 m!1089797))

(declare-fun m!1089799 () Bool)

(assert (=> tb!59709 m!1089799))

(assert (=> d!265582 t!95531))

(declare-fun b_and!74611 () Bool)

(assert (= b_and!74607 (and (=> t!95531 result!69168) b_and!74611)))

(declare-fun t!95533 () Bool)

(declare-fun tb!59711 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95533) tb!59711))

(declare-fun result!69170 () Bool)

(assert (= result!69170 result!69168))

(assert (=> d!265582 t!95533))

(declare-fun b_and!74613 () Bool)

(assert (= b_and!74605 (and (=> t!95533 result!69170) b_and!74613)))

(declare-fun tb!59713 () Bool)

(declare-fun t!95535 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95535) tb!59713))

(declare-fun result!69172 () Bool)

(assert (= result!69172 result!69168))

(assert (=> d!265582 t!95535))

(declare-fun b_and!74615 () Bool)

(assert (= b_and!74609 (and (=> t!95535 result!69172) b_and!74615)))

(declare-fun t!95537 () Bool)

(declare-fun tb!59715 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95537) tb!59715))

(declare-fun result!69174 () Bool)

(assert (= result!69174 result!69168))

(assert (=> d!265582 t!95537))

(declare-fun b_and!74617 () Bool)

(assert (= b_and!74601 (and (=> t!95537 result!69174) b_and!74617)))

(declare-fun tb!59717 () Bool)

(declare-fun t!95539 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95539) tb!59717))

(declare-fun result!69176 () Bool)

(assert (= result!69176 result!69168))

(assert (=> d!265582 t!95539))

(declare-fun b_and!74619 () Bool)

(assert (= b_and!74603 (and (=> t!95539 result!69176) b_and!74619)))

(declare-fun m!1089801 () Bool)

(assert (=> d!265582 m!1089801))

(declare-fun m!1089803 () Bool)

(assert (=> d!265582 m!1089803))

(assert (=> b!850039 d!265582))

(declare-fun d!265584 () Bool)

(declare-fun c!138131 () Bool)

(assert (=> d!265584 (= c!138131 ((_ is Cons!9170) (t!95236 lt!322157)))))

(declare-fun e!559887 () List!9185)

(assert (=> d!265584 (= (printList!472 thiss!20117 (t!95236 lt!322157)) e!559887)))

(declare-fun b!850740 () Bool)

(assert (=> b!850740 (= e!559887 (++!2376 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!322157)))) (printList!472 thiss!20117 (t!95236 (t!95236 lt!322157)))))))

(declare-fun b!850741 () Bool)

(assert (=> b!850741 (= e!559887 Nil!9169)))

(assert (= (and d!265584 c!138131) b!850740))

(assert (= (and d!265584 (not c!138131)) b!850741))

(declare-fun m!1089805 () Bool)

(assert (=> b!850740 m!1089805))

(assert (=> b!850740 m!1089805))

(declare-fun m!1089807 () Bool)

(assert (=> b!850740 m!1089807))

(declare-fun m!1089809 () Bool)

(assert (=> b!850740 m!1089809))

(assert (=> b!850740 m!1089807))

(assert (=> b!850740 m!1089809))

(declare-fun m!1089811 () Bool)

(assert (=> b!850740 m!1089811))

(assert (=> b!850039 d!265584))

(declare-fun d!265586 () Bool)

(assert (=> d!265586 (= (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))) (isBalanced!828 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))))))

(declare-fun bs!231188 () Bool)

(assert (= bs!231188 d!265586))

(declare-fun m!1089813 () Bool)

(assert (=> bs!231188 m!1089813))

(assert (=> tb!59459 d!265586))

(declare-fun d!265588 () Bool)

(declare-fun lt!322525 () Bool)

(assert (=> d!265588 (= lt!322525 (isEmpty!5420 (list!3598 (_2!6012 lt!322100))))))

(assert (=> d!265588 (= lt!322525 (isEmpty!5424 (c!137983 (_2!6012 lt!322100))))))

(assert (=> d!265588 (= (isEmpty!5421 (_2!6012 lt!322100)) lt!322525)))

(declare-fun bs!231189 () Bool)

(assert (= bs!231189 d!265588))

(declare-fun m!1089815 () Bool)

(assert (=> bs!231189 m!1089815))

(assert (=> bs!231189 m!1089815))

(declare-fun m!1089817 () Bool)

(assert (=> bs!231189 m!1089817))

(declare-fun m!1089819 () Bool)

(assert (=> bs!231189 m!1089819))

(assert (=> b!849972 d!265588))

(declare-fun bs!231190 () Bool)

(declare-fun d!265590 () Bool)

(assert (= bs!231190 (and d!265590 b!849647)))

(declare-fun lambda!25421 () Int)

(assert (=> bs!231190 (not (= lambda!25421 lambda!25358))))

(declare-fun bs!231191 () Bool)

(assert (= bs!231191 (and d!265590 d!265510)))

(assert (=> bs!231191 (= lambda!25421 lambda!25416)))

(declare-fun bs!231192 () Bool)

(assert (= bs!231192 (and d!265590 d!265210)))

(assert (=> bs!231192 (= lambda!25421 lambda!25391)))

(declare-fun bs!231193 () Bool)

(assert (= bs!231193 (and d!265590 d!265050)))

(assert (=> bs!231193 (= lambda!25421 lambda!25378)))

(declare-fun bs!231194 () Bool)

(assert (= bs!231194 (and d!265590 d!264934)))

(assert (=> bs!231194 (= lambda!25421 lambda!25363)))

(declare-fun bs!231195 () Bool)

(assert (= bs!231195 (and d!265590 d!264958)))

(assert (=> bs!231195 (= lambda!25421 lambda!25370)))

(declare-fun bs!231196 () Bool)

(assert (= bs!231196 (and d!265590 d!265512)))

(assert (=> bs!231196 (= lambda!25421 lambda!25417)))

(declare-fun bs!231197 () Bool)

(assert (= bs!231197 (and d!265590 d!264950)))

(assert (=> bs!231197 (= lambda!25421 lambda!25369)))

(declare-fun bs!231198 () Bool)

(assert (= bs!231198 (and d!265590 d!265194)))

(assert (=> bs!231198 (= lambda!25421 lambda!25386)))

(declare-fun b!850746 () Bool)

(declare-fun e!559892 () Bool)

(assert (=> b!850746 (= e!559892 true)))

(declare-fun b!850745 () Bool)

(declare-fun e!559891 () Bool)

(assert (=> b!850745 (= e!559891 e!559892)))

(declare-fun b!850744 () Bool)

(declare-fun e!559890 () Bool)

(assert (=> b!850744 (= e!559890 e!559891)))

(assert (=> d!265590 e!559890))

(assert (= b!850745 b!850746))

(assert (= b!850744 b!850745))

(assert (= (and d!265590 ((_ is Cons!9171) rules!2621)) b!850744))

(assert (=> b!850746 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25421))))

(assert (=> b!850746 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25421))))

(assert (=> d!265590 true))

(declare-fun lt!322526 () Bool)

(assert (=> d!265590 (= lt!322526 (forall!2155 (t!95236 lt!321979) lambda!25421))))

(declare-fun e!559888 () Bool)

(assert (=> d!265590 (= lt!322526 e!559888)))

(declare-fun res!388870 () Bool)

(assert (=> d!265590 (=> res!388870 e!559888)))

(assert (=> d!265590 (= res!388870 (not ((_ is Cons!9170) (t!95236 lt!321979))))))

(assert (=> d!265590 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265590 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 lt!321979)) lt!322526)))

(declare-fun b!850742 () Bool)

(declare-fun e!559889 () Bool)

(assert (=> b!850742 (= e!559888 e!559889)))

(declare-fun res!388869 () Bool)

(assert (=> b!850742 (=> (not res!388869) (not e!559889))))

(assert (=> b!850742 (= res!388869 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321979))))))

(declare-fun b!850743 () Bool)

(assert (=> b!850743 (= e!559889 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (t!95236 lt!321979))))))

(assert (= (and d!265590 (not res!388870)) b!850742))

(assert (= (and b!850742 res!388869) b!850743))

(declare-fun m!1089821 () Bool)

(assert (=> d!265590 m!1089821))

(assert (=> d!265590 m!1087439))

(assert (=> b!850742 m!1087989))

(declare-fun m!1089823 () Bool)

(assert (=> b!850743 m!1089823))

(assert (=> b!849986 d!265590))

(declare-fun lt!322527 () List!9185)

(declare-fun e!559893 () Bool)

(declare-fun b!850750 () Bool)

(assert (=> b!850750 (= e!559893 (or (not (= (printList!472 thiss!20117 (t!95236 lt!322140)) Nil!9169)) (= lt!322527 (list!3598 (charsOf!989 (h!14571 lt!322140))))))))

(declare-fun d!265592 () Bool)

(assert (=> d!265592 e!559893))

(declare-fun res!388872 () Bool)

(assert (=> d!265592 (=> (not res!388872) (not e!559893))))

(assert (=> d!265592 (= res!388872 (= (content!1342 lt!322527) ((_ map or) (content!1342 (list!3598 (charsOf!989 (h!14571 lt!322140)))) (content!1342 (printList!472 thiss!20117 (t!95236 lt!322140))))))))

(declare-fun e!559894 () List!9185)

(assert (=> d!265592 (= lt!322527 e!559894)))

(declare-fun c!138132 () Bool)

(assert (=> d!265592 (= c!138132 ((_ is Nil!9169) (list!3598 (charsOf!989 (h!14571 lt!322140)))))))

(assert (=> d!265592 (= (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322140))) (printList!472 thiss!20117 (t!95236 lt!322140))) lt!322527)))

(declare-fun b!850749 () Bool)

(declare-fun res!388871 () Bool)

(assert (=> b!850749 (=> (not res!388871) (not e!559893))))

(assert (=> b!850749 (= res!388871 (= (size!7641 lt!322527) (+ (size!7641 (list!3598 (charsOf!989 (h!14571 lt!322140)))) (size!7641 (printList!472 thiss!20117 (t!95236 lt!322140))))))))

(declare-fun b!850748 () Bool)

(assert (=> b!850748 (= e!559894 (Cons!9169 (h!14570 (list!3598 (charsOf!989 (h!14571 lt!322140)))) (++!2376 (t!95235 (list!3598 (charsOf!989 (h!14571 lt!322140)))) (printList!472 thiss!20117 (t!95236 lt!322140)))))))

(declare-fun b!850747 () Bool)

(assert (=> b!850747 (= e!559894 (printList!472 thiss!20117 (t!95236 lt!322140)))))

(assert (= (and d!265592 c!138132) b!850747))

(assert (= (and d!265592 (not c!138132)) b!850748))

(assert (= (and d!265592 res!388872) b!850749))

(assert (= (and b!850749 res!388871) b!850750))

(declare-fun m!1089825 () Bool)

(assert (=> d!265592 m!1089825))

(assert (=> d!265592 m!1087971))

(declare-fun m!1089827 () Bool)

(assert (=> d!265592 m!1089827))

(assert (=> d!265592 m!1087973))

(declare-fun m!1089829 () Bool)

(assert (=> d!265592 m!1089829))

(declare-fun m!1089831 () Bool)

(assert (=> b!850749 m!1089831))

(assert (=> b!850749 m!1087971))

(declare-fun m!1089833 () Bool)

(assert (=> b!850749 m!1089833))

(assert (=> b!850749 m!1087973))

(declare-fun m!1089835 () Bool)

(assert (=> b!850749 m!1089835))

(assert (=> b!850748 m!1087973))

(declare-fun m!1089837 () Bool)

(assert (=> b!850748 m!1089837))

(assert (=> b!850018 d!265592))

(declare-fun d!265594 () Bool)

(assert (=> d!265594 (= (list!3598 (charsOf!989 (h!14571 lt!322140))) (list!3601 (c!137983 (charsOf!989 (h!14571 lt!322140)))))))

(declare-fun bs!231199 () Bool)

(assert (= bs!231199 d!265594))

(declare-fun m!1089839 () Bool)

(assert (=> bs!231199 m!1089839))

(assert (=> b!850018 d!265594))

(declare-fun d!265596 () Bool)

(declare-fun lt!322528 () BalanceConc!6090)

(assert (=> d!265596 (= (list!3598 lt!322528) (originalCharacters!2276 (h!14571 lt!322140)))))

(assert (=> d!265596 (= lt!322528 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140)))) (value!55719 (h!14571 lt!322140))))))

(assert (=> d!265596 (= (charsOf!989 (h!14571 lt!322140)) lt!322528)))

(declare-fun b_lambda!28337 () Bool)

(assert (=> (not b_lambda!28337) (not d!265596)))

(declare-fun t!95541 () Bool)

(declare-fun tb!59719 () Bool)

(assert (=> (and b!849645 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95541) tb!59719))

(declare-fun b!850751 () Bool)

(declare-fun e!559895 () Bool)

(declare-fun tp!267833 () Bool)

(assert (=> b!850751 (= e!559895 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140)))) (value!55719 (h!14571 lt!322140))))) tp!267833))))

(declare-fun result!69178 () Bool)

(assert (=> tb!59719 (= result!69178 (and (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140)))) (value!55719 (h!14571 lt!322140)))) e!559895))))

(assert (= tb!59719 b!850751))

(declare-fun m!1089841 () Bool)

(assert (=> b!850751 m!1089841))

(declare-fun m!1089843 () Bool)

(assert (=> tb!59719 m!1089843))

(assert (=> d!265596 t!95541))

(declare-fun b_and!74621 () Bool)

(assert (= b_and!74617 (and (=> t!95541 result!69178) b_and!74621)))

(declare-fun t!95543 () Bool)

(declare-fun tb!59721 () Bool)

(assert (=> (and b!850070 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95543) tb!59721))

(declare-fun result!69180 () Bool)

(assert (= result!69180 result!69178))

(assert (=> d!265596 t!95543))

(declare-fun b_and!74623 () Bool)

(assert (= b_and!74611 (and (=> t!95543 result!69180) b_and!74623)))

(declare-fun t!95545 () Bool)

(declare-fun tb!59723 () Bool)

(assert (=> (and b!850084 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95545) tb!59723))

(declare-fun result!69182 () Bool)

(assert (= result!69182 result!69178))

(assert (=> d!265596 t!95545))

(declare-fun b_and!74625 () Bool)

(assert (= b_and!74615 (and (=> t!95545 result!69182) b_and!74625)))

(declare-fun tb!59725 () Bool)

(declare-fun t!95547 () Bool)

(assert (=> (and b!849659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95547) tb!59725))

(declare-fun result!69184 () Bool)

(assert (= result!69184 result!69178))

(assert (=> d!265596 t!95547))

(declare-fun b_and!74627 () Bool)

(assert (= b_and!74619 (and (=> t!95547 result!69184) b_and!74627)))

(declare-fun t!95549 () Bool)

(declare-fun tb!59727 () Bool)

(assert (=> (and b!849665 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95549) tb!59727))

(declare-fun result!69186 () Bool)

(assert (= result!69186 result!69178))

(assert (=> d!265596 t!95549))

(declare-fun b_and!74629 () Bool)

(assert (= b_and!74613 (and (=> t!95549 result!69186) b_and!74629)))

(declare-fun m!1089845 () Bool)

(assert (=> d!265596 m!1089845))

(declare-fun m!1089847 () Bool)

(assert (=> d!265596 m!1089847))

(assert (=> b!850018 d!265596))

(declare-fun d!265598 () Bool)

(declare-fun c!138133 () Bool)

(assert (=> d!265598 (= c!138133 ((_ is Cons!9170) (t!95236 lt!322140)))))

(declare-fun e!559896 () List!9185)

(assert (=> d!265598 (= (printList!472 thiss!20117 (t!95236 lt!322140)) e!559896)))

(declare-fun b!850752 () Bool)

(assert (=> b!850752 (= e!559896 (++!2376 (list!3598 (charsOf!989 (h!14571 (t!95236 lt!322140)))) (printList!472 thiss!20117 (t!95236 (t!95236 lt!322140)))))))

(declare-fun b!850753 () Bool)

(assert (=> b!850753 (= e!559896 Nil!9169)))

(assert (= (and d!265598 c!138133) b!850752))

(assert (= (and d!265598 (not c!138133)) b!850753))

(declare-fun m!1089849 () Bool)

(assert (=> b!850752 m!1089849))

(assert (=> b!850752 m!1089849))

(declare-fun m!1089851 () Bool)

(assert (=> b!850752 m!1089851))

(declare-fun m!1089853 () Bool)

(assert (=> b!850752 m!1089853))

(assert (=> b!850752 m!1089851))

(assert (=> b!850752 m!1089853))

(declare-fun m!1089855 () Bool)

(assert (=> b!850752 m!1089855))

(assert (=> b!850018 d!265598))

(declare-fun d!265600 () Bool)

(declare-fun res!388873 () Bool)

(declare-fun e!559897 () Bool)

(assert (=> d!265600 (=> res!388873 e!559897)))

(assert (=> d!265600 (= res!388873 ((_ is Nil!9170) (list!3597 (seqFromList!1524 lt!321979))))))

(assert (=> d!265600 (= (forall!2155 (list!3597 (seqFromList!1524 lt!321979)) lambda!25363) e!559897)))

(declare-fun b!850754 () Bool)

(declare-fun e!559898 () Bool)

(assert (=> b!850754 (= e!559897 e!559898)))

(declare-fun res!388874 () Bool)

(assert (=> b!850754 (=> (not res!388874) (not e!559898))))

(assert (=> b!850754 (= res!388874 (dynLambda!4267 lambda!25363 (h!14571 (list!3597 (seqFromList!1524 lt!321979)))))))

(declare-fun b!850755 () Bool)

(assert (=> b!850755 (= e!559898 (forall!2155 (t!95236 (list!3597 (seqFromList!1524 lt!321979))) lambda!25363))))

(assert (= (and d!265600 (not res!388873)) b!850754))

(assert (= (and b!850754 res!388874) b!850755))

(declare-fun b_lambda!28339 () Bool)

(assert (=> (not b_lambda!28339) (not b!850754)))

(declare-fun m!1089857 () Bool)

(assert (=> b!850754 m!1089857))

(declare-fun m!1089859 () Bool)

(assert (=> b!850755 m!1089859))

(assert (=> d!264934 d!265600))

(declare-fun d!265602 () Bool)

(assert (=> d!265602 (= (list!3597 (seqFromList!1524 lt!321979)) (list!3602 (c!137984 (seqFromList!1524 lt!321979))))))

(declare-fun bs!231200 () Bool)

(assert (= bs!231200 d!265602))

(declare-fun m!1089861 () Bool)

(assert (=> bs!231200 m!1089861))

(assert (=> d!264934 d!265602))

(declare-fun d!265604 () Bool)

(declare-fun lt!322531 () Bool)

(assert (=> d!265604 (= lt!322531 (forall!2155 (list!3597 (seqFromList!1524 lt!321979)) lambda!25363))))

(declare-fun forall!2161 (Conc!3039 Int) Bool)

(assert (=> d!265604 (= lt!322531 (forall!2161 (c!137984 (seqFromList!1524 lt!321979)) lambda!25363))))

(assert (=> d!265604 (= (forall!2157 (seqFromList!1524 lt!321979) lambda!25363) lt!322531)))

(declare-fun bs!231201 () Bool)

(assert (= bs!231201 d!265604))

(assert (=> bs!231201 m!1087489))

(assert (=> bs!231201 m!1087541))

(assert (=> bs!231201 m!1087541))

(assert (=> bs!231201 m!1087543))

(declare-fun m!1089863 () Bool)

(assert (=> bs!231201 m!1089863))

(assert (=> d!264934 d!265604))

(assert (=> d!264934 d!265056))

(declare-fun bs!231202 () Bool)

(declare-fun d!265606 () Bool)

(assert (= bs!231202 (and d!265606 b!849647)))

(declare-fun lambda!25422 () Int)

(assert (=> bs!231202 (not (= lambda!25422 lambda!25358))))

(declare-fun bs!231203 () Bool)

(assert (= bs!231203 (and d!265606 d!265510)))

(assert (=> bs!231203 (= lambda!25422 lambda!25416)))

(declare-fun bs!231204 () Bool)

(assert (= bs!231204 (and d!265606 d!265210)))

(assert (=> bs!231204 (= lambda!25422 lambda!25391)))

(declare-fun bs!231205 () Bool)

(assert (= bs!231205 (and d!265606 d!265050)))

(assert (=> bs!231205 (= lambda!25422 lambda!25378)))

(declare-fun bs!231206 () Bool)

(assert (= bs!231206 (and d!265606 d!264958)))

(assert (=> bs!231206 (= lambda!25422 lambda!25370)))

(declare-fun bs!231207 () Bool)

(assert (= bs!231207 (and d!265606 d!265512)))

(assert (=> bs!231207 (= lambda!25422 lambda!25417)))

(declare-fun bs!231208 () Bool)

(assert (= bs!231208 (and d!265606 d!264950)))

(assert (=> bs!231208 (= lambda!25422 lambda!25369)))

(declare-fun bs!231209 () Bool)

(assert (= bs!231209 (and d!265606 d!265194)))

(assert (=> bs!231209 (= lambda!25422 lambda!25386)))

(declare-fun bs!231210 () Bool)

(assert (= bs!231210 (and d!265606 d!265590)))

(assert (=> bs!231210 (= lambda!25422 lambda!25421)))

(declare-fun bs!231211 () Bool)

(assert (= bs!231211 (and d!265606 d!264934)))

(assert (=> bs!231211 (= lambda!25422 lambda!25363)))

(declare-fun b!850760 () Bool)

(declare-fun e!559903 () Bool)

(assert (=> b!850760 (= e!559903 true)))

(declare-fun b!850759 () Bool)

(declare-fun e!559902 () Bool)

(assert (=> b!850759 (= e!559902 e!559903)))

(declare-fun b!850758 () Bool)

(declare-fun e!559901 () Bool)

(assert (=> b!850758 (= e!559901 e!559902)))

(assert (=> d!265606 e!559901))

(assert (= b!850759 b!850760))

(assert (= b!850758 b!850759))

(assert (= (and d!265606 ((_ is Cons!9171) rules!2621)) b!850758))

(assert (=> b!850760 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25422))))

(assert (=> b!850760 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25422))))

(assert (=> d!265606 true))

(declare-fun lt!322532 () Bool)

(assert (=> d!265606 (= lt!322532 (forall!2155 (t!95236 lt!321975) lambda!25422))))

(declare-fun e!559899 () Bool)

(assert (=> d!265606 (= lt!322532 e!559899)))

(declare-fun res!388876 () Bool)

(assert (=> d!265606 (=> res!388876 e!559899)))

(assert (=> d!265606 (= res!388876 (not ((_ is Cons!9170) (t!95236 lt!321975))))))

(assert (=> d!265606 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265606 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 lt!321975)) lt!322532)))

(declare-fun b!850756 () Bool)

(declare-fun e!559900 () Bool)

(assert (=> b!850756 (= e!559899 e!559900)))

(declare-fun res!388875 () Bool)

(assert (=> b!850756 (=> (not res!388875) (not e!559900))))

(assert (=> b!850756 (= res!388875 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (t!95236 lt!321975))))))

(declare-fun b!850757 () Bool)

(assert (=> b!850757 (= e!559900 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (t!95236 lt!321975))))))

(assert (= (and d!265606 (not res!388876)) b!850756))

(assert (= (and b!850756 res!388875) b!850757))

(declare-fun m!1089865 () Bool)

(assert (=> d!265606 m!1089865))

(assert (=> d!265606 m!1087439))

(assert (=> b!850756 m!1087907))

(declare-fun m!1089867 () Bool)

(assert (=> b!850757 m!1089867))

(assert (=> b!849720 d!265606))

(declare-fun d!265608 () Bool)

(declare-fun c!138134 () Bool)

(assert (=> d!265608 (= c!138134 ((_ is Cons!9170) (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)))))

(declare-fun e!559904 () List!9185)

(assert (=> d!265608 (= (printList!472 thiss!20117 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)) e!559904)))

(declare-fun b!850761 () Bool)

(assert (=> b!850761 (= e!559904 (++!2376 (list!3598 (charsOf!989 (h!14571 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)))) (printList!472 thiss!20117 (t!95236 (withSeparatorTokenList!52 thiss!20117 (t!95236 l!5107) separatorToken!297)))))))

(declare-fun b!850762 () Bool)

(assert (=> b!850762 (= e!559904 Nil!9169)))

(assert (= (and d!265608 c!138134) b!850761))

(assert (= (and d!265608 (not c!138134)) b!850762))

(declare-fun m!1089869 () Bool)

(assert (=> b!850761 m!1089869))

(assert (=> b!850761 m!1089869))

(declare-fun m!1089871 () Bool)

(assert (=> b!850761 m!1089871))

(declare-fun m!1089873 () Bool)

(assert (=> b!850761 m!1089873))

(assert (=> b!850761 m!1089871))

(assert (=> b!850761 m!1089873))

(declare-fun m!1089875 () Bool)

(assert (=> b!850761 m!1089875))

(assert (=> b!850014 d!265608))

(declare-fun lt!322533 () List!9185)

(declare-fun e!559905 () Bool)

(declare-fun b!850766 () Bool)

(assert (=> b!850766 (= e!559905 (or (not (= (++!2376 lt!322142 lt!322143) Nil!9169)) (= lt!322533 lt!322145)))))

(declare-fun d!265610 () Bool)

(assert (=> d!265610 e!559905))

(declare-fun res!388878 () Bool)

(assert (=> d!265610 (=> (not res!388878) (not e!559905))))

(assert (=> d!265610 (= res!388878 (= (content!1342 lt!322533) ((_ map or) (content!1342 lt!322145) (content!1342 (++!2376 lt!322142 lt!322143)))))))

(declare-fun e!559906 () List!9185)

(assert (=> d!265610 (= lt!322533 e!559906)))

(declare-fun c!138135 () Bool)

(assert (=> d!265610 (= c!138135 ((_ is Nil!9169) lt!322145))))

(assert (=> d!265610 (= (++!2376 lt!322145 (++!2376 lt!322142 lt!322143)) lt!322533)))

(declare-fun b!850765 () Bool)

(declare-fun res!388877 () Bool)

(assert (=> b!850765 (=> (not res!388877) (not e!559905))))

(assert (=> b!850765 (= res!388877 (= (size!7641 lt!322533) (+ (size!7641 lt!322145) (size!7641 (++!2376 lt!322142 lt!322143)))))))

(declare-fun b!850764 () Bool)

(assert (=> b!850764 (= e!559906 (Cons!9169 (h!14570 lt!322145) (++!2376 (t!95235 lt!322145) (++!2376 lt!322142 lt!322143))))))

(declare-fun b!850763 () Bool)

(assert (=> b!850763 (= e!559906 (++!2376 lt!322142 lt!322143))))

(assert (= (and d!265610 c!138135) b!850763))

(assert (= (and d!265610 (not c!138135)) b!850764))

(assert (= (and d!265610 res!388878) b!850765))

(assert (= (and b!850765 res!388877) b!850766))

(declare-fun m!1089877 () Bool)

(assert (=> d!265610 m!1089877))

(declare-fun m!1089879 () Bool)

(assert (=> d!265610 m!1089879))

(assert (=> d!265610 m!1087953))

(declare-fun m!1089881 () Bool)

(assert (=> d!265610 m!1089881))

(declare-fun m!1089883 () Bool)

(assert (=> b!850765 m!1089883))

(declare-fun m!1089885 () Bool)

(assert (=> b!850765 m!1089885))

(assert (=> b!850765 m!1087953))

(declare-fun m!1089887 () Bool)

(assert (=> b!850765 m!1089887))

(assert (=> b!850764 m!1087953))

(declare-fun m!1089889 () Bool)

(assert (=> b!850764 m!1089889))

(assert (=> b!850014 d!265610))

(declare-fun e!559907 () Bool)

(declare-fun lt!322534 () List!9185)

(declare-fun b!850770 () Bool)

(assert (=> b!850770 (= e!559907 (or (not (= lt!322143 Nil!9169)) (= lt!322534 lt!322142)))))

(declare-fun d!265612 () Bool)

(assert (=> d!265612 e!559907))

(declare-fun res!388880 () Bool)

(assert (=> d!265612 (=> (not res!388880) (not e!559907))))

(assert (=> d!265612 (= res!388880 (= (content!1342 lt!322534) ((_ map or) (content!1342 lt!322142) (content!1342 lt!322143))))))

(declare-fun e!559908 () List!9185)

(assert (=> d!265612 (= lt!322534 e!559908)))

(declare-fun c!138136 () Bool)

(assert (=> d!265612 (= c!138136 ((_ is Nil!9169) lt!322142))))

(assert (=> d!265612 (= (++!2376 lt!322142 lt!322143) lt!322534)))

(declare-fun b!850769 () Bool)

(declare-fun res!388879 () Bool)

(assert (=> b!850769 (=> (not res!388879) (not e!559907))))

(assert (=> b!850769 (= res!388879 (= (size!7641 lt!322534) (+ (size!7641 lt!322142) (size!7641 lt!322143))))))

(declare-fun b!850768 () Bool)

(assert (=> b!850768 (= e!559908 (Cons!9169 (h!14570 lt!322142) (++!2376 (t!95235 lt!322142) lt!322143)))))

(declare-fun b!850767 () Bool)

(assert (=> b!850767 (= e!559908 lt!322143)))

(assert (= (and d!265612 c!138136) b!850767))

(assert (= (and d!265612 (not c!138136)) b!850768))

(assert (= (and d!265612 res!388880) b!850769))

(assert (= (and b!850769 res!388879) b!850770))

(declare-fun m!1089891 () Bool)

(assert (=> d!265612 m!1089891))

(declare-fun m!1089893 () Bool)

(assert (=> d!265612 m!1089893))

(declare-fun m!1089895 () Bool)

(assert (=> d!265612 m!1089895))

(declare-fun m!1089897 () Bool)

(assert (=> b!850769 m!1089897))

(declare-fun m!1089899 () Bool)

(assert (=> b!850769 m!1089899))

(declare-fun m!1089901 () Bool)

(assert (=> b!850769 m!1089901))

(declare-fun m!1089903 () Bool)

(assert (=> b!850768 m!1089903))

(assert (=> b!850014 d!265612))

(assert (=> b!850014 d!265130))

(declare-fun e!559909 () Bool)

(declare-fun b!850774 () Bool)

(declare-fun lt!322535 () List!9185)

(assert (=> b!850774 (= e!559909 (or (not (= lt!322143 Nil!9169)) (= lt!322535 (++!2376 lt!322145 lt!322142))))))

(declare-fun d!265614 () Bool)

(assert (=> d!265614 e!559909))

(declare-fun res!388882 () Bool)

(assert (=> d!265614 (=> (not res!388882) (not e!559909))))

(assert (=> d!265614 (= res!388882 (= (content!1342 lt!322535) ((_ map or) (content!1342 (++!2376 lt!322145 lt!322142)) (content!1342 lt!322143))))))

(declare-fun e!559910 () List!9185)

(assert (=> d!265614 (= lt!322535 e!559910)))

(declare-fun c!138137 () Bool)

(assert (=> d!265614 (= c!138137 ((_ is Nil!9169) (++!2376 lt!322145 lt!322142)))))

(assert (=> d!265614 (= (++!2376 (++!2376 lt!322145 lt!322142) lt!322143) lt!322535)))

(declare-fun b!850773 () Bool)

(declare-fun res!388881 () Bool)

(assert (=> b!850773 (=> (not res!388881) (not e!559909))))

(assert (=> b!850773 (= res!388881 (= (size!7641 lt!322535) (+ (size!7641 (++!2376 lt!322145 lt!322142)) (size!7641 lt!322143))))))

(declare-fun b!850772 () Bool)

(assert (=> b!850772 (= e!559910 (Cons!9169 (h!14570 (++!2376 lt!322145 lt!322142)) (++!2376 (t!95235 (++!2376 lt!322145 lt!322142)) lt!322143)))))

(declare-fun b!850771 () Bool)

(assert (=> b!850771 (= e!559910 lt!322143)))

(assert (= (and d!265614 c!138137) b!850771))

(assert (= (and d!265614 (not c!138137)) b!850772))

(assert (= (and d!265614 res!388882) b!850773))

(assert (= (and b!850773 res!388881) b!850774))

(declare-fun m!1089905 () Bool)

(assert (=> d!265614 m!1089905))

(assert (=> d!265614 m!1087943))

(declare-fun m!1089907 () Bool)

(assert (=> d!265614 m!1089907))

(assert (=> d!265614 m!1089895))

(declare-fun m!1089909 () Bool)

(assert (=> b!850773 m!1089909))

(assert (=> b!850773 m!1087943))

(declare-fun m!1089911 () Bool)

(assert (=> b!850773 m!1089911))

(assert (=> b!850773 m!1089901))

(declare-fun m!1089913 () Bool)

(assert (=> b!850772 m!1089913))

(assert (=> b!850014 d!265614))

(declare-fun d!265616 () Bool)

(assert (=> d!265616 (= (++!2376 (++!2376 lt!322145 lt!322142) lt!322143) (++!2376 lt!322145 (++!2376 lt!322142 lt!322143)))))

(declare-fun lt!322536 () Unit!13653)

(assert (=> d!265616 (= lt!322536 (choose!5022 lt!322145 lt!322142 lt!322143))))

(assert (=> d!265616 (= (lemmaConcatAssociativity!747 lt!322145 lt!322142 lt!322143) lt!322536)))

(declare-fun bs!231212 () Bool)

(assert (= bs!231212 d!265616))

(declare-fun m!1089915 () Bool)

(assert (=> bs!231212 m!1089915))

(assert (=> bs!231212 m!1087943))

(assert (=> bs!231212 m!1087945))

(assert (=> bs!231212 m!1087953))

(assert (=> bs!231212 m!1087961))

(assert (=> bs!231212 m!1087943))

(assert (=> bs!231212 m!1087953))

(assert (=> b!850014 d!265616))

(declare-fun d!265618 () Bool)

(assert (=> d!265618 (= (list!3598 (charsOf!989 (h!14571 l!5107))) (list!3601 (c!137983 (charsOf!989 (h!14571 l!5107)))))))

(declare-fun bs!231213 () Bool)

(assert (= bs!231213 d!265618))

(declare-fun m!1089917 () Bool)

(assert (=> bs!231213 m!1089917))

(assert (=> b!850014 d!265618))

(assert (=> b!850014 d!265518))

(declare-fun d!265620 () Bool)

(declare-fun lt!322537 () BalanceConc!6090)

(assert (=> d!265620 (= (list!3598 lt!322537) (originalCharacters!2276 (h!14571 l!5107)))))

(assert (=> d!265620 (= lt!322537 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))

(assert (=> d!265620 (= (charsOf!989 (h!14571 l!5107)) lt!322537)))

(declare-fun b_lambda!28341 () Bool)

(assert (=> (not b_lambda!28341) (not d!265620)))

(assert (=> d!265620 t!95265))

(declare-fun b_and!74631 () Bool)

(assert (= b_and!74629 (and (=> t!95265 result!68896) b_and!74631)))

(assert (=> d!265620 t!95263))

(declare-fun b_and!74633 () Bool)

(assert (= b_and!74621 (and (=> t!95263 result!68892) b_and!74633)))

(assert (=> d!265620 t!95286))

(declare-fun b_and!74635 () Bool)

(assert (= b_and!74623 (and (=> t!95286 result!68928) b_and!74635)))

(assert (=> d!265620 t!95290))

(declare-fun b_and!74637 () Bool)

(assert (= b_and!74625 (and (=> t!95290 result!68934) b_and!74637)))

(assert (=> d!265620 t!95267))

(declare-fun b_and!74639 () Bool)

(assert (= b_and!74627 (and (=> t!95267 result!68898) b_and!74639)))

(declare-fun m!1089919 () Bool)

(assert (=> d!265620 m!1089919))

(assert (=> d!265620 m!1087823))

(assert (=> b!850014 d!265620))

(declare-fun lt!322538 () List!9185)

(declare-fun e!559911 () Bool)

(declare-fun b!850778 () Bool)

(assert (=> b!850778 (= e!559911 (or (not (= lt!322142 Nil!9169)) (= lt!322538 lt!322145)))))

(declare-fun d!265622 () Bool)

(assert (=> d!265622 e!559911))

(declare-fun res!388884 () Bool)

(assert (=> d!265622 (=> (not res!388884) (not e!559911))))

(assert (=> d!265622 (= res!388884 (= (content!1342 lt!322538) ((_ map or) (content!1342 lt!322145) (content!1342 lt!322142))))))

(declare-fun e!559912 () List!9185)

(assert (=> d!265622 (= lt!322538 e!559912)))

(declare-fun c!138138 () Bool)

(assert (=> d!265622 (= c!138138 ((_ is Nil!9169) lt!322145))))

(assert (=> d!265622 (= (++!2376 lt!322145 lt!322142) lt!322538)))

(declare-fun b!850777 () Bool)

(declare-fun res!388883 () Bool)

(assert (=> b!850777 (=> (not res!388883) (not e!559911))))

(assert (=> b!850777 (= res!388883 (= (size!7641 lt!322538) (+ (size!7641 lt!322145) (size!7641 lt!322142))))))

(declare-fun b!850776 () Bool)

(assert (=> b!850776 (= e!559912 (Cons!9169 (h!14570 lt!322145) (++!2376 (t!95235 lt!322145) lt!322142)))))

(declare-fun b!850775 () Bool)

(assert (=> b!850775 (= e!559912 lt!322142)))

(assert (= (and d!265622 c!138138) b!850775))

(assert (= (and d!265622 (not c!138138)) b!850776))

(assert (= (and d!265622 res!388884) b!850777))

(assert (= (and b!850777 res!388883) b!850778))

(declare-fun m!1089921 () Bool)

(assert (=> d!265622 m!1089921))

(assert (=> d!265622 m!1089879))

(assert (=> d!265622 m!1089893))

(declare-fun m!1089923 () Bool)

(assert (=> b!850777 m!1089923))

(assert (=> b!850777 m!1089885))

(assert (=> b!850777 m!1089899))

(declare-fun m!1089925 () Bool)

(assert (=> b!850776 m!1089925))

(assert (=> b!850014 d!265622))

(assert (=> b!850014 d!265124))

(assert (=> b!850014 d!265306))

(assert (=> b!850014 d!265308))

(declare-fun bs!231214 () Bool)

(declare-fun d!265624 () Bool)

(assert (= bs!231214 (and d!265624 d!265190)))

(declare-fun lambda!25423 () Int)

(assert (=> bs!231214 (= (and (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) (= (toValue!2753 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (rule!3143 separatorToken!297))))) (= lambda!25423 lambda!25385))))

(declare-fun bs!231215 () Bool)

(assert (= bs!231215 (and d!265624 d!265572)))

(assert (=> bs!231215 (= (and (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) (= (toValue!2753 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (= lambda!25423 lambda!25420))))

(assert (=> d!265624 true))

(assert (=> d!265624 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4270 order!5871 lambda!25423))))

(assert (=> d!265624 true))

(assert (=> d!265624 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4270 order!5871 lambda!25423))))

(assert (=> d!265624 (= (semiInverseModEq!668 (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (Forall!409 lambda!25423))))

(declare-fun bs!231216 () Bool)

(assert (= bs!231216 d!265624))

(declare-fun m!1089927 () Bool)

(assert (=> bs!231216 m!1089927))

(assert (=> d!264956 d!265624))

(declare-fun d!265626 () Bool)

(assert (=> d!265626 (= (inv!11656 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))) (isBalanced!828 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))))))

(declare-fun bs!231217 () Bool)

(assert (= bs!231217 d!265626))

(declare-fun m!1089929 () Bool)

(assert (=> bs!231217 m!1089929))

(assert (=> tb!59453 d!265626))

(declare-fun d!265628 () Bool)

(declare-fun c!138139 () Bool)

(assert (=> d!265628 (= c!138139 ((_ is Cons!9170) lt!322146))))

(declare-fun e!559913 () List!9185)

(assert (=> d!265628 (= (printList!472 thiss!20117 lt!322146) e!559913)))

(declare-fun b!850779 () Bool)

(assert (=> b!850779 (= e!559913 (++!2376 (list!3598 (charsOf!989 (h!14571 lt!322146))) (printList!472 thiss!20117 (t!95236 lt!322146))))))

(declare-fun b!850780 () Bool)

(assert (=> b!850780 (= e!559913 Nil!9169)))

(assert (= (and d!265628 c!138139) b!850779))

(assert (= (and d!265628 (not c!138139)) b!850780))

(declare-fun m!1089931 () Bool)

(assert (=> b!850779 m!1089931))

(assert (=> b!850779 m!1089931))

(declare-fun m!1089933 () Bool)

(assert (=> b!850779 m!1089933))

(declare-fun m!1089935 () Bool)

(assert (=> b!850779 m!1089935))

(assert (=> b!850779 m!1089933))

(assert (=> b!850779 m!1089935))

(declare-fun m!1089937 () Bool)

(assert (=> b!850779 m!1089937))

(assert (=> d!265052 d!265628))

(declare-fun d!265630 () Bool)

(declare-fun c!138140 () Bool)

(assert (=> d!265630 (= c!138140 ((_ is Cons!9170) l!5107))))

(declare-fun e!559914 () List!9185)

(assert (=> d!265630 (= (printWithSeparatorTokenList!30 thiss!20117 l!5107 separatorToken!297) e!559914)))

(declare-fun b!850781 () Bool)

(assert (=> b!850781 (= e!559914 (++!2376 (++!2376 (list!3598 (charsOf!989 (h!14571 l!5107))) (list!3598 (charsOf!989 separatorToken!297))) (printWithSeparatorTokenList!30 thiss!20117 (t!95236 l!5107) separatorToken!297)))))

(declare-fun b!850782 () Bool)

(assert (=> b!850782 (= e!559914 Nil!9169)))

(assert (= (and d!265630 c!138140) b!850781))

(assert (= (and d!265630 (not c!138140)) b!850782))

(declare-fun m!1089939 () Bool)

(assert (=> b!850781 m!1089939))

(assert (=> b!850781 m!1089009))

(declare-fun m!1089941 () Bool)

(assert (=> b!850781 m!1089941))

(assert (=> b!850781 m!1087947))

(assert (=> b!850781 m!1087949))

(assert (=> b!850781 m!1087949))

(assert (=> b!850781 m!1087955))

(assert (=> b!850781 m!1089939))

(assert (=> b!850781 m!1089009))

(assert (=> b!850781 m!1087951))

(assert (=> b!850781 m!1087955))

(assert (=> b!850781 m!1087947))

(assert (=> b!850781 m!1087951))

(assert (=> d!265052 d!265630))

(assert (=> b!849770 d!265042))

(declare-fun bs!231218 () Bool)

(declare-fun d!265632 () Bool)

(assert (= bs!231218 (and d!265632 d!265510)))

(declare-fun lambda!25424 () Int)

(assert (=> bs!231218 (= lambda!25424 lambda!25416)))

(declare-fun bs!231219 () Bool)

(assert (= bs!231219 (and d!265632 d!265210)))

(assert (=> bs!231219 (= lambda!25424 lambda!25391)))

(declare-fun bs!231220 () Bool)

(assert (= bs!231220 (and d!265632 d!265050)))

(assert (=> bs!231220 (= lambda!25424 lambda!25378)))

(declare-fun bs!231221 () Bool)

(assert (= bs!231221 (and d!265632 d!264958)))

(assert (=> bs!231221 (= lambda!25424 lambda!25370)))

(declare-fun bs!231222 () Bool)

(assert (= bs!231222 (and d!265632 d!265512)))

(assert (=> bs!231222 (= lambda!25424 lambda!25417)))

(declare-fun bs!231223 () Bool)

(assert (= bs!231223 (and d!265632 d!265606)))

(assert (=> bs!231223 (= lambda!25424 lambda!25422)))

(declare-fun bs!231224 () Bool)

(assert (= bs!231224 (and d!265632 b!849647)))

(assert (=> bs!231224 (not (= lambda!25424 lambda!25358))))

(declare-fun bs!231225 () Bool)

(assert (= bs!231225 (and d!265632 d!264950)))

(assert (=> bs!231225 (= lambda!25424 lambda!25369)))

(declare-fun bs!231226 () Bool)

(assert (= bs!231226 (and d!265632 d!265194)))

(assert (=> bs!231226 (= lambda!25424 lambda!25386)))

(declare-fun bs!231227 () Bool)

(assert (= bs!231227 (and d!265632 d!265590)))

(assert (=> bs!231227 (= lambda!25424 lambda!25421)))

(declare-fun bs!231228 () Bool)

(assert (= bs!231228 (and d!265632 d!264934)))

(assert (=> bs!231228 (= lambda!25424 lambda!25363)))

(declare-fun b!850787 () Bool)

(declare-fun e!559919 () Bool)

(assert (=> b!850787 (= e!559919 true)))

(declare-fun b!850786 () Bool)

(declare-fun e!559918 () Bool)

(assert (=> b!850786 (= e!559918 e!559919)))

(declare-fun b!850785 () Bool)

(declare-fun e!559917 () Bool)

(assert (=> b!850785 (= e!559917 e!559918)))

(assert (=> d!265632 e!559917))

(assert (= b!850786 b!850787))

(assert (= b!850785 b!850786))

(assert (= (and d!265632 ((_ is Cons!9171) rules!2621)) b!850785))

(assert (=> b!850787 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25424))))

(assert (=> b!850787 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 rules!2621)))) (dynLambda!4264 order!5859 lambda!25424))))

(assert (=> d!265632 true))

(declare-fun lt!322539 () Bool)

(assert (=> d!265632 (= lt!322539 (forall!2155 (list!3597 (seqFromList!1524 lt!321979)) lambda!25424))))

(declare-fun e!559915 () Bool)

(assert (=> d!265632 (= lt!322539 e!559915)))

(declare-fun res!388886 () Bool)

(assert (=> d!265632 (=> res!388886 e!559915)))

(assert (=> d!265632 (= res!388886 (not ((_ is Cons!9170) (list!3597 (seqFromList!1524 lt!321979)))))))

(assert (=> d!265632 (not (isEmpty!5417 rules!2621))))

(assert (=> d!265632 (= (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (list!3597 (seqFromList!1524 lt!321979))) lt!322539)))

(declare-fun b!850783 () Bool)

(declare-fun e!559916 () Bool)

(assert (=> b!850783 (= e!559915 e!559916)))

(declare-fun res!388885 () Bool)

(assert (=> b!850783 (=> (not res!388885) (not e!559916))))

(assert (=> b!850783 (= res!388885 (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (list!3597 (seqFromList!1524 lt!321979)))))))

(declare-fun b!850784 () Bool)

(assert (=> b!850784 (= e!559916 (rulesProduceEachTokenIndividuallyList!410 thiss!20117 rules!2621 (t!95236 (list!3597 (seqFromList!1524 lt!321979)))))))

(assert (= (and d!265632 (not res!388886)) b!850783))

(assert (= (and b!850783 res!388885) b!850784))

(assert (=> d!265632 m!1087541))

(declare-fun m!1089943 () Bool)

(assert (=> d!265632 m!1089943))

(assert (=> d!265632 m!1087439))

(declare-fun m!1089945 () Bool)

(assert (=> b!850783 m!1089945))

(declare-fun m!1089947 () Bool)

(assert (=> b!850784 m!1089947))

(assert (=> b!849678 d!265632))

(assert (=> b!849678 d!265602))

(declare-fun e!559924 () Bool)

(declare-fun b!850796 () Bool)

(declare-fun tp!267840 () Bool)

(declare-fun tp!267842 () Bool)

(assert (=> b!850796 (= e!559924 (and (inv!11655 (left!6783 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))) tp!267840 (inv!11655 (right!7113 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))) tp!267842))))

(declare-fun b!850798 () Bool)

(declare-fun e!559925 () Bool)

(declare-fun tp!267841 () Bool)

(assert (=> b!850798 (= e!559925 tp!267841)))

(declare-fun b!850797 () Bool)

(declare-fun inv!11662 (IArray!6081) Bool)

(assert (=> b!850797 (= e!559924 (and (inv!11662 (xs!5727 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))) e!559925))))

(assert (=> b!849891 (= tp!267591 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107))))) e!559924))))

(assert (= (and b!849891 ((_ is Node!3038) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))) b!850796))

(assert (= b!850797 b!850798))

(assert (= (and b!849891 ((_ is Leaf!4486) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (value!55719 (h!14571 l!5107)))))) b!850797))

(declare-fun m!1089949 () Bool)

(assert (=> b!850796 m!1089949))

(declare-fun m!1089951 () Bool)

(assert (=> b!850796 m!1089951))

(declare-fun m!1089953 () Bool)

(assert (=> b!850797 m!1089953))

(assert (=> b!849891 m!1087817))

(declare-fun e!559926 () Bool)

(assert (=> b!850069 (= tp!267676 e!559926)))

(declare-fun b!850801 () Bool)

(declare-fun tp!267846 () Bool)

(assert (=> b!850801 (= e!559926 tp!267846)))

(declare-fun b!850799 () Bool)

(assert (=> b!850799 (= e!559926 tp_is_empty!3969)))

(declare-fun b!850802 () Bool)

(declare-fun tp!267844 () Bool)

(declare-fun tp!267845 () Bool)

(assert (=> b!850802 (= e!559926 (and tp!267844 tp!267845))))

(declare-fun b!850800 () Bool)

(declare-fun tp!267843 () Bool)

(declare-fun tp!267847 () Bool)

(assert (=> b!850800 (= e!559926 (and tp!267843 tp!267847))))

(assert (= (and b!850069 ((_ is ElementMatch!2153) (regex!1720 (h!14572 (t!95237 rules!2621))))) b!850799))

(assert (= (and b!850069 ((_ is Concat!3940) (regex!1720 (h!14572 (t!95237 rules!2621))))) b!850800))

(assert (= (and b!850069 ((_ is Star!2153) (regex!1720 (h!14572 (t!95237 rules!2621))))) b!850801))

(assert (= (and b!850069 ((_ is Union!2153) (regex!1720 (h!14572 (t!95237 rules!2621))))) b!850802))

(declare-fun e!559927 () Bool)

(assert (=> b!850090 (= tp!267699 e!559927)))

(declare-fun b!850805 () Bool)

(declare-fun tp!267851 () Bool)

(assert (=> b!850805 (= e!559927 tp!267851)))

(declare-fun b!850803 () Bool)

(assert (=> b!850803 (= e!559927 tp_is_empty!3969)))

(declare-fun b!850806 () Bool)

(declare-fun tp!267849 () Bool)

(declare-fun tp!267850 () Bool)

(assert (=> b!850806 (= e!559927 (and tp!267849 tp!267850))))

(declare-fun b!850804 () Bool)

(declare-fun tp!267848 () Bool)

(declare-fun tp!267852 () Bool)

(assert (=> b!850804 (= e!559927 (and tp!267848 tp!267852))))

(assert (= (and b!850090 ((_ is ElementMatch!2153) (regOne!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850803))

(assert (= (and b!850090 ((_ is Concat!3940) (regOne!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850804))

(assert (= (and b!850090 ((_ is Star!2153) (regOne!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850805))

(assert (= (and b!850090 ((_ is Union!2153) (regOne!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850806))

(declare-fun e!559928 () Bool)

(assert (=> b!850090 (= tp!267703 e!559928)))

(declare-fun b!850809 () Bool)

(declare-fun tp!267856 () Bool)

(assert (=> b!850809 (= e!559928 tp!267856)))

(declare-fun b!850807 () Bool)

(assert (=> b!850807 (= e!559928 tp_is_empty!3969)))

(declare-fun b!850810 () Bool)

(declare-fun tp!267854 () Bool)

(declare-fun tp!267855 () Bool)

(assert (=> b!850810 (= e!559928 (and tp!267854 tp!267855))))

(declare-fun b!850808 () Bool)

(declare-fun tp!267853 () Bool)

(declare-fun tp!267857 () Bool)

(assert (=> b!850808 (= e!559928 (and tp!267853 tp!267857))))

(assert (= (and b!850090 ((_ is ElementMatch!2153) (regTwo!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850807))

(assert (= (and b!850090 ((_ is Concat!3940) (regTwo!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850808))

(assert (= (and b!850090 ((_ is Star!2153) (regTwo!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850809))

(assert (= (and b!850090 ((_ is Union!2153) (regTwo!4818 (regex!1720 (rule!3143 separatorToken!297))))) b!850810))

(declare-fun b!850813 () Bool)

(declare-fun e!559931 () Bool)

(assert (=> b!850813 (= e!559931 true)))

(declare-fun b!850812 () Bool)

(declare-fun e!559930 () Bool)

(assert (=> b!850812 (= e!559930 e!559931)))

(declare-fun b!850811 () Bool)

(declare-fun e!559929 () Bool)

(assert (=> b!850811 (= e!559929 e!559930)))

(assert (=> b!849687 e!559929))

(assert (= b!850812 b!850813))

(assert (= b!850811 b!850812))

(assert (= (and b!849687 ((_ is Cons!9171) (t!95237 rules!2621))) b!850811))

(assert (=> b!850813 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25363))))

(assert (=> b!850813 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25363))))

(declare-fun b!850816 () Bool)

(declare-fun b_free!25685 () Bool)

(declare-fun b_next!25749 () Bool)

(assert (=> b!850816 (= b_free!25685 (not b_next!25749))))

(declare-fun tp!267860 () Bool)

(declare-fun b_and!74641 () Bool)

(assert (=> b!850816 (= tp!267860 b_and!74641)))

(declare-fun b_free!25687 () Bool)

(declare-fun b_next!25751 () Bool)

(assert (=> b!850816 (= b_free!25687 (not b_next!25751))))

(declare-fun tb!59729 () Bool)

(declare-fun t!95551 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95551) tb!59729))

(declare-fun result!69190 () Bool)

(assert (= result!69190 result!68892))

(assert (=> d!265620 t!95551))

(assert (=> b!849885 t!95551))

(declare-fun t!95553 () Bool)

(declare-fun tb!59731 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95553) tb!59731))

(declare-fun result!69192 () Bool)

(assert (= result!69192 result!69158))

(assert (=> b!850730 t!95553))

(declare-fun t!95555 () Bool)

(declare-fun tb!59733 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95555) tb!59733))

(declare-fun result!69194 () Bool)

(assert (= result!69194 result!69038))

(assert (=> d!265340 t!95555))

(declare-fun tb!59735 () Bool)

(declare-fun t!95557 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95557) tb!59735))

(declare-fun result!69196 () Bool)

(assert (= result!69196 result!69148))

(assert (=> d!265534 t!95557))

(declare-fun t!95559 () Bool)

(declare-fun tb!59737 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95559) tb!59737))

(declare-fun result!69198 () Bool)

(assert (= result!69198 result!69058))

(assert (=> d!265380 t!95559))

(declare-fun tb!59739 () Bool)

(declare-fun t!95561 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95561) tb!59739))

(declare-fun result!69200 () Bool)

(assert (= result!69200 result!68900))

(assert (=> d!265124 t!95561))

(declare-fun tb!59741 () Bool)

(declare-fun t!95563 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95563) tb!59741))

(declare-fun result!69202 () Bool)

(assert (= result!69202 result!68968))

(assert (=> d!265150 t!95563))

(declare-fun t!95565 () Bool)

(declare-fun tb!59743 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95565) tb!59743))

(declare-fun result!69204 () Bool)

(assert (= result!69204 result!69178))

(assert (=> d!265596 t!95565))

(assert (=> b!849892 t!95561))

(declare-fun t!95567 () Bool)

(declare-fun tb!59745 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95567) tb!59745))

(declare-fun result!69206 () Bool)

(assert (= result!69206 result!69168))

(assert (=> d!265582 t!95567))

(declare-fun tb!59747 () Bool)

(declare-fun t!95569 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95569) tb!59747))

(declare-fun result!69208 () Bool)

(assert (= result!69208 result!69018))

(assert (=> d!265254 t!95569))

(declare-fun t!95571 () Bool)

(declare-fun tb!59749 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95571) tb!59749))

(declare-fun result!69210 () Bool)

(assert (= result!69210 result!69138))

(assert (=> d!265504 t!95571))

(declare-fun t!95573 () Bool)

(declare-fun tb!59751 () Bool)

(assert (=> (and b!850816 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95573) tb!59751))

(declare-fun result!69212 () Bool)

(assert (= result!69212 result!68958))

(assert (=> d!265142 t!95573))

(declare-fun tp!267858 () Bool)

(declare-fun b_and!74643 () Bool)

(assert (=> b!850816 (= tp!267858 (and (=> t!95561 result!69200) (=> t!95551 result!69190) (=> t!95571 result!69210) (=> t!95563 result!69202) (=> t!95565 result!69204) (=> t!95567 result!69206) (=> t!95559 result!69198) (=> t!95569 result!69208) (=> t!95557 result!69196) (=> t!95555 result!69194) (=> t!95573 result!69212) (=> t!95553 result!69192) b_and!74643))))

(declare-fun e!559934 () Bool)

(assert (=> b!850816 (= e!559934 (and tp!267860 tp!267858))))

(declare-fun e!559933 () Bool)

(declare-fun tp!267859 () Bool)

(declare-fun b!850815 () Bool)

(assert (=> b!850815 (= e!559933 (and tp!267859 (inv!11648 (tag!1982 (h!14572 (t!95237 (t!95237 rules!2621))))) (inv!11652 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) e!559934))))

(declare-fun b!850814 () Bool)

(declare-fun e!559935 () Bool)

(declare-fun tp!267861 () Bool)

(assert (=> b!850814 (= e!559935 (and e!559933 tp!267861))))

(assert (=> b!850068 (= tp!267678 e!559935)))

(assert (= b!850815 b!850816))

(assert (= b!850814 b!850815))

(assert (= (and b!850068 ((_ is Cons!9171) (t!95237 (t!95237 rules!2621)))) b!850814))

(declare-fun m!1089955 () Bool)

(assert (=> b!850815 m!1089955))

(declare-fun m!1089957 () Bool)

(assert (=> b!850815 m!1089957))

(declare-fun b!850817 () Bool)

(declare-fun e!559936 () Bool)

(declare-fun tp!267862 () Bool)

(assert (=> b!850817 (= e!559936 (and tp_is_empty!3969 tp!267862))))

(assert (=> b!850082 (= tp!267692 e!559936)))

(assert (= (and b!850082 ((_ is Cons!9169) (originalCharacters!2276 (h!14571 (t!95236 l!5107))))) b!850817))

(declare-fun e!559937 () Bool)

(assert (=> b!850087 (= tp!267697 e!559937)))

(declare-fun b!850820 () Bool)

(declare-fun tp!267866 () Bool)

(assert (=> b!850820 (= e!559937 tp!267866)))

(declare-fun b!850818 () Bool)

(assert (=> b!850818 (= e!559937 tp_is_empty!3969)))

(declare-fun b!850821 () Bool)

(declare-fun tp!267864 () Bool)

(declare-fun tp!267865 () Bool)

(assert (=> b!850821 (= e!559937 (and tp!267864 tp!267865))))

(declare-fun b!850819 () Bool)

(declare-fun tp!267863 () Bool)

(declare-fun tp!267867 () Bool)

(assert (=> b!850819 (= e!559937 (and tp!267863 tp!267867))))

(assert (= (and b!850087 ((_ is ElementMatch!2153) (reg!2482 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850818))

(assert (= (and b!850087 ((_ is Concat!3940) (reg!2482 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850819))

(assert (= (and b!850087 ((_ is Star!2153) (reg!2482 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850820))

(assert (= (and b!850087 ((_ is Union!2153) (reg!2482 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850821))

(declare-fun e!559938 () Bool)

(assert (=> b!850086 (= tp!267694 e!559938)))

(declare-fun b!850824 () Bool)

(declare-fun tp!267871 () Bool)

(assert (=> b!850824 (= e!559938 tp!267871)))

(declare-fun b!850822 () Bool)

(assert (=> b!850822 (= e!559938 tp_is_empty!3969)))

(declare-fun b!850825 () Bool)

(declare-fun tp!267869 () Bool)

(declare-fun tp!267870 () Bool)

(assert (=> b!850825 (= e!559938 (and tp!267869 tp!267870))))

(declare-fun b!850823 () Bool)

(declare-fun tp!267868 () Bool)

(declare-fun tp!267872 () Bool)

(assert (=> b!850823 (= e!559938 (and tp!267868 tp!267872))))

(assert (= (and b!850086 ((_ is ElementMatch!2153) (regOne!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850822))

(assert (= (and b!850086 ((_ is Concat!3940) (regOne!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850823))

(assert (= (and b!850086 ((_ is Star!2153) (regOne!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850824))

(assert (= (and b!850086 ((_ is Union!2153) (regOne!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850825))

(declare-fun e!559939 () Bool)

(assert (=> b!850086 (= tp!267698 e!559939)))

(declare-fun b!850828 () Bool)

(declare-fun tp!267876 () Bool)

(assert (=> b!850828 (= e!559939 tp!267876)))

(declare-fun b!850826 () Bool)

(assert (=> b!850826 (= e!559939 tp_is_empty!3969)))

(declare-fun b!850829 () Bool)

(declare-fun tp!267874 () Bool)

(declare-fun tp!267875 () Bool)

(assert (=> b!850829 (= e!559939 (and tp!267874 tp!267875))))

(declare-fun b!850827 () Bool)

(declare-fun tp!267873 () Bool)

(declare-fun tp!267877 () Bool)

(assert (=> b!850827 (= e!559939 (and tp!267873 tp!267877))))

(assert (= (and b!850086 ((_ is ElementMatch!2153) (regTwo!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850826))

(assert (= (and b!850086 ((_ is Concat!3940) (regTwo!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850827))

(assert (= (and b!850086 ((_ is Star!2153) (regTwo!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850828))

(assert (= (and b!850086 ((_ is Union!2153) (regTwo!4818 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850829))

(declare-fun e!559940 () Bool)

(assert (=> b!850088 (= tp!267695 e!559940)))

(declare-fun b!850832 () Bool)

(declare-fun tp!267881 () Bool)

(assert (=> b!850832 (= e!559940 tp!267881)))

(declare-fun b!850830 () Bool)

(assert (=> b!850830 (= e!559940 tp_is_empty!3969)))

(declare-fun b!850833 () Bool)

(declare-fun tp!267879 () Bool)

(declare-fun tp!267880 () Bool)

(assert (=> b!850833 (= e!559940 (and tp!267879 tp!267880))))

(declare-fun b!850831 () Bool)

(declare-fun tp!267878 () Bool)

(declare-fun tp!267882 () Bool)

(assert (=> b!850831 (= e!559940 (and tp!267878 tp!267882))))

(assert (= (and b!850088 ((_ is ElementMatch!2153) (regOne!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850830))

(assert (= (and b!850088 ((_ is Concat!3940) (regOne!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850831))

(assert (= (and b!850088 ((_ is Star!2153) (regOne!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850832))

(assert (= (and b!850088 ((_ is Union!2153) (regOne!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850833))

(declare-fun e!559941 () Bool)

(assert (=> b!850088 (= tp!267696 e!559941)))

(declare-fun b!850836 () Bool)

(declare-fun tp!267886 () Bool)

(assert (=> b!850836 (= e!559941 tp!267886)))

(declare-fun b!850834 () Bool)

(assert (=> b!850834 (= e!559941 tp_is_empty!3969)))

(declare-fun b!850837 () Bool)

(declare-fun tp!267884 () Bool)

(declare-fun tp!267885 () Bool)

(assert (=> b!850837 (= e!559941 (and tp!267884 tp!267885))))

(declare-fun b!850835 () Bool)

(declare-fun tp!267883 () Bool)

(declare-fun tp!267887 () Bool)

(assert (=> b!850835 (= e!559941 (and tp!267883 tp!267887))))

(assert (= (and b!850088 ((_ is ElementMatch!2153) (regTwo!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850834))

(assert (= (and b!850088 ((_ is Concat!3940) (regTwo!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850835))

(assert (= (and b!850088 ((_ is Star!2153) (regTwo!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850836))

(assert (= (and b!850088 ((_ is Union!2153) (regTwo!4819 (regex!1720 (rule!3143 (h!14571 l!5107)))))) b!850837))

(declare-fun e!559942 () Bool)

(assert (=> b!850083 (= tp!267693 e!559942)))

(declare-fun b!850840 () Bool)

(declare-fun tp!267891 () Bool)

(assert (=> b!850840 (= e!559942 tp!267891)))

(declare-fun b!850838 () Bool)

(assert (=> b!850838 (= e!559942 tp_is_empty!3969)))

(declare-fun b!850841 () Bool)

(declare-fun tp!267889 () Bool)

(declare-fun tp!267890 () Bool)

(assert (=> b!850841 (= e!559942 (and tp!267889 tp!267890))))

(declare-fun b!850839 () Bool)

(declare-fun tp!267888 () Bool)

(declare-fun tp!267892 () Bool)

(assert (=> b!850839 (= e!559942 (and tp!267888 tp!267892))))

(assert (= (and b!850083 ((_ is ElementMatch!2153) (regex!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) b!850838))

(assert (= (and b!850083 ((_ is Concat!3940) (regex!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) b!850839))

(assert (= (and b!850083 ((_ is Star!2153) (regex!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) b!850840))

(assert (= (and b!850083 ((_ is Union!2153) (regex!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) b!850841))

(declare-fun e!559943 () Bool)

(declare-fun b!850842 () Bool)

(declare-fun tp!267893 () Bool)

(declare-fun tp!267895 () Bool)

(assert (=> b!850842 (= e!559943 (and (inv!11655 (left!6783 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))) tp!267893 (inv!11655 (right!7113 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))) tp!267895))))

(declare-fun b!850844 () Bool)

(declare-fun e!559944 () Bool)

(declare-fun tp!267894 () Bool)

(assert (=> b!850844 (= e!559944 tp!267894)))

(declare-fun b!850843 () Bool)

(assert (=> b!850843 (= e!559943 (and (inv!11662 (xs!5727 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))) e!559944))))

(assert (=> b!849894 (= tp!267592 (and (inv!11655 (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297)))) e!559943))))

(assert (= (and b!849894 ((_ is Node!3038) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))) b!850842))

(assert (= b!850843 b!850844))

(assert (= (and b!849894 ((_ is Leaf!4486) (c!137983 (dynLambda!4266 (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (value!55719 separatorToken!297))))) b!850843))

(declare-fun m!1089959 () Bool)

(assert (=> b!850842 m!1089959))

(declare-fun m!1089961 () Bool)

(assert (=> b!850842 m!1089961))

(declare-fun m!1089963 () Bool)

(assert (=> b!850843 m!1089963))

(assert (=> b!849894 m!1087829))

(declare-fun e!559945 () Bool)

(assert (=> b!850054 (= tp!267660 e!559945)))

(declare-fun b!850847 () Bool)

(declare-fun tp!267899 () Bool)

(assert (=> b!850847 (= e!559945 tp!267899)))

(declare-fun b!850845 () Bool)

(assert (=> b!850845 (= e!559945 tp_is_empty!3969)))

(declare-fun b!850848 () Bool)

(declare-fun tp!267897 () Bool)

(declare-fun tp!267898 () Bool)

(assert (=> b!850848 (= e!559945 (and tp!267897 tp!267898))))

(declare-fun b!850846 () Bool)

(declare-fun tp!267896 () Bool)

(declare-fun tp!267900 () Bool)

(assert (=> b!850846 (= e!559945 (and tp!267896 tp!267900))))

(assert (= (and b!850054 ((_ is ElementMatch!2153) (regOne!4819 (regex!1720 (h!14572 rules!2621))))) b!850845))

(assert (= (and b!850054 ((_ is Concat!3940) (regOne!4819 (regex!1720 (h!14572 rules!2621))))) b!850846))

(assert (= (and b!850054 ((_ is Star!2153) (regOne!4819 (regex!1720 (h!14572 rules!2621))))) b!850847))

(assert (= (and b!850054 ((_ is Union!2153) (regOne!4819 (regex!1720 (h!14572 rules!2621))))) b!850848))

(declare-fun e!559946 () Bool)

(assert (=> b!850054 (= tp!267661 e!559946)))

(declare-fun b!850851 () Bool)

(declare-fun tp!267904 () Bool)

(assert (=> b!850851 (= e!559946 tp!267904)))

(declare-fun b!850849 () Bool)

(assert (=> b!850849 (= e!559946 tp_is_empty!3969)))

(declare-fun b!850852 () Bool)

(declare-fun tp!267902 () Bool)

(declare-fun tp!267903 () Bool)

(assert (=> b!850852 (= e!559946 (and tp!267902 tp!267903))))

(declare-fun b!850850 () Bool)

(declare-fun tp!267901 () Bool)

(declare-fun tp!267905 () Bool)

(assert (=> b!850850 (= e!559946 (and tp!267901 tp!267905))))

(assert (= (and b!850054 ((_ is ElementMatch!2153) (regTwo!4819 (regex!1720 (h!14572 rules!2621))))) b!850849))

(assert (= (and b!850054 ((_ is Concat!3940) (regTwo!4819 (regex!1720 (h!14572 rules!2621))))) b!850850))

(assert (= (and b!850054 ((_ is Star!2153) (regTwo!4819 (regex!1720 (h!14572 rules!2621))))) b!850851))

(assert (= (and b!850054 ((_ is Union!2153) (regTwo!4819 (regex!1720 (h!14572 rules!2621))))) b!850852))

(declare-fun b!850856 () Bool)

(declare-fun b_free!25689 () Bool)

(declare-fun b_next!25753 () Bool)

(assert (=> b!850856 (= b_free!25689 (not b_next!25753))))

(declare-fun tp!267907 () Bool)

(declare-fun b_and!74645 () Bool)

(assert (=> b!850856 (= tp!267907 b_and!74645)))

(declare-fun b_free!25691 () Bool)

(declare-fun b_next!25755 () Bool)

(assert (=> b!850856 (= b_free!25691 (not b_next!25755))))

(declare-fun t!95575 () Bool)

(declare-fun tb!59753 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107))))) t!95575) tb!59753))

(declare-fun result!69214 () Bool)

(assert (= result!69214 result!68892))

(assert (=> d!265620 t!95575))

(assert (=> b!849885 t!95575))

(declare-fun t!95577 () Bool)

(declare-fun tb!59755 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107)))))) t!95577) tb!59755))

(declare-fun result!69216 () Bool)

(assert (= result!69216 result!69158))

(assert (=> b!850730 t!95577))

(declare-fun t!95579 () Bool)

(declare-fun tb!59757 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321975)))))) t!95579) tb!59757))

(declare-fun result!69218 () Bool)

(assert (= result!69218 result!69038))

(assert (=> d!265340 t!95579))

(declare-fun t!95581 () Bool)

(declare-fun tb!59759 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321979))))) t!95581) tb!59759))

(declare-fun result!69220 () Bool)

(assert (= result!69220 result!69148))

(assert (=> d!265534 t!95581))

(declare-fun tb!59761 () Bool)

(declare-fun t!95583 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322161))))) t!95583) tb!59761))

(declare-fun result!69222 () Bool)

(assert (= result!69222 result!69058))

(assert (=> d!265380 t!95583))

(declare-fun tb!59763 () Bool)

(declare-fun t!95585 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297)))) t!95585) tb!59763))

(declare-fun result!69224 () Bool)

(assert (= result!69224 result!68900))

(assert (=> d!265124 t!95585))

(declare-fun tb!59765 () Bool)

(declare-fun t!95587 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 lt!321979)))))) t!95587) tb!59765))

(declare-fun result!69226 () Bool)

(assert (= result!69226 result!68968))

(assert (=> d!265150 t!95587))

(declare-fun t!95589 () Bool)

(declare-fun tb!59767 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322140))))) t!95589) tb!59767))

(declare-fun result!69228 () Bool)

(assert (= result!69228 result!69178))

(assert (=> d!265596 t!95589))

(assert (=> b!849892 t!95585))

(declare-fun tb!59769 () Bool)

(declare-fun t!95591 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322157))))) t!95591) tb!59769))

(declare-fun result!69230 () Bool)

(assert (= result!69230 result!69168))

(assert (=> d!265582 t!95591))

(declare-fun tb!59771 () Bool)

(declare-fun t!95593 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 lt!321974)))) t!95593) tb!59771))

(declare-fun result!69232 () Bool)

(assert (= result!69232 result!69018))

(assert (=> d!265254 t!95593))

(declare-fun tb!59773 () Bool)

(declare-fun t!95595 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!322144))))) t!95595) tb!59773))

(declare-fun result!69234 () Bool)

(assert (= result!69234 result!69138))

(assert (=> d!265504 t!95595))

(declare-fun t!95597 () Bool)

(declare-fun tb!59775 () Bool)

(assert (=> (and b!850856 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 lt!321981))))) t!95597) tb!59775))

(declare-fun result!69236 () Bool)

(assert (= result!69236 result!68958))

(assert (=> d!265142 t!95597))

(declare-fun b_and!74647 () Bool)

(declare-fun tp!267908 () Bool)

(assert (=> b!850856 (= tp!267908 (and (=> t!95575 result!69214) (=> t!95593 result!69232) (=> t!95587 result!69226) (=> t!95595 result!69234) (=> t!95591 result!69230) (=> t!95577 result!69216) (=> t!95579 result!69218) (=> t!95585 result!69224) (=> t!95581 result!69220) (=> t!95589 result!69228) (=> t!95583 result!69222) (=> t!95597 result!69236) b_and!74647))))

(declare-fun e!559948 () Bool)

(declare-fun b!850855 () Bool)

(declare-fun tp!267910 () Bool)

(declare-fun e!559950 () Bool)

(assert (=> b!850855 (= e!559948 (and tp!267910 (inv!11648 (tag!1982 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (inv!11652 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) e!559950))))

(declare-fun b!850854 () Bool)

(declare-fun e!559949 () Bool)

(declare-fun tp!267909 () Bool)

(assert (=> b!850854 (= e!559949 (and (inv!21 (value!55719 (h!14571 (t!95236 (t!95236 l!5107))))) e!559948 tp!267909))))

(assert (=> b!850856 (= e!559950 (and tp!267907 tp!267908))))

(declare-fun b!850853 () Bool)

(declare-fun e!559952 () Bool)

(declare-fun tp!267906 () Bool)

(assert (=> b!850853 (= e!559952 (and (inv!11651 (h!14571 (t!95236 (t!95236 l!5107)))) e!559949 tp!267906))))

(assert (=> b!850081 (= tp!267689 e!559952)))

(assert (= b!850855 b!850856))

(assert (= b!850854 b!850855))

(assert (= b!850853 b!850854))

(assert (= (and b!850081 ((_ is Cons!9170) (t!95236 (t!95236 l!5107)))) b!850853))

(declare-fun m!1089965 () Bool)

(assert (=> b!850855 m!1089965))

(declare-fun m!1089967 () Bool)

(assert (=> b!850855 m!1089967))

(declare-fun m!1089969 () Bool)

(assert (=> b!850854 m!1089969))

(declare-fun m!1089971 () Bool)

(assert (=> b!850853 m!1089971))

(declare-fun b!850859 () Bool)

(declare-fun e!559955 () Bool)

(assert (=> b!850859 (= e!559955 true)))

(declare-fun b!850858 () Bool)

(declare-fun e!559954 () Bool)

(assert (=> b!850858 (= e!559954 e!559955)))

(declare-fun b!850857 () Bool)

(declare-fun e!559953 () Bool)

(assert (=> b!850857 (= e!559953 e!559954)))

(assert (=> b!849721 e!559953))

(assert (= b!850858 b!850859))

(assert (= b!850857 b!850858))

(assert (= (and b!849721 ((_ is Cons!9171) (t!95237 rules!2621))) b!850857))

(assert (=> b!850859 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25370))))

(assert (=> b!850859 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25370))))

(declare-fun b!850862 () Bool)

(declare-fun e!559958 () Bool)

(assert (=> b!850862 (= e!559958 true)))

(declare-fun b!850861 () Bool)

(declare-fun e!559957 () Bool)

(assert (=> b!850861 (= e!559957 e!559958)))

(declare-fun b!850860 () Bool)

(declare-fun e!559956 () Bool)

(assert (=> b!850860 (= e!559956 e!559957)))

(assert (=> b!849987 e!559956))

(assert (= b!850861 b!850862))

(assert (= b!850860 b!850861))

(assert (= (and b!849987 ((_ is Cons!9171) (t!95237 rules!2621))) b!850860))

(assert (=> b!850862 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25378))))

(assert (=> b!850862 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25378))))

(declare-fun e!559959 () Bool)

(assert (=> b!850052 (= tp!267659 e!559959)))

(declare-fun b!850865 () Bool)

(declare-fun tp!267914 () Bool)

(assert (=> b!850865 (= e!559959 tp!267914)))

(declare-fun b!850863 () Bool)

(assert (=> b!850863 (= e!559959 tp_is_empty!3969)))

(declare-fun b!850866 () Bool)

(declare-fun tp!267912 () Bool)

(declare-fun tp!267913 () Bool)

(assert (=> b!850866 (= e!559959 (and tp!267912 tp!267913))))

(declare-fun b!850864 () Bool)

(declare-fun tp!267911 () Bool)

(declare-fun tp!267915 () Bool)

(assert (=> b!850864 (= e!559959 (and tp!267911 tp!267915))))

(assert (= (and b!850052 ((_ is ElementMatch!2153) (regOne!4818 (regex!1720 (h!14572 rules!2621))))) b!850863))

(assert (= (and b!850052 ((_ is Concat!3940) (regOne!4818 (regex!1720 (h!14572 rules!2621))))) b!850864))

(assert (= (and b!850052 ((_ is Star!2153) (regOne!4818 (regex!1720 (h!14572 rules!2621))))) b!850865))

(assert (= (and b!850052 ((_ is Union!2153) (regOne!4818 (regex!1720 (h!14572 rules!2621))))) b!850866))

(declare-fun e!559960 () Bool)

(assert (=> b!850052 (= tp!267663 e!559960)))

(declare-fun b!850869 () Bool)

(declare-fun tp!267919 () Bool)

(assert (=> b!850869 (= e!559960 tp!267919)))

(declare-fun b!850867 () Bool)

(assert (=> b!850867 (= e!559960 tp_is_empty!3969)))

(declare-fun b!850870 () Bool)

(declare-fun tp!267917 () Bool)

(declare-fun tp!267918 () Bool)

(assert (=> b!850870 (= e!559960 (and tp!267917 tp!267918))))

(declare-fun b!850868 () Bool)

(declare-fun tp!267916 () Bool)

(declare-fun tp!267920 () Bool)

(assert (=> b!850868 (= e!559960 (and tp!267916 tp!267920))))

(assert (= (and b!850052 ((_ is ElementMatch!2153) (regTwo!4818 (regex!1720 (h!14572 rules!2621))))) b!850867))

(assert (= (and b!850052 ((_ is Concat!3940) (regTwo!4818 (regex!1720 (h!14572 rules!2621))))) b!850868))

(assert (= (and b!850052 ((_ is Star!2153) (regTwo!4818 (regex!1720 (h!14572 rules!2621))))) b!850869))

(assert (= (and b!850052 ((_ is Union!2153) (regTwo!4818 (regex!1720 (h!14572 rules!2621))))) b!850870))

(declare-fun e!559961 () Bool)

(assert (=> b!850053 (= tp!267662 e!559961)))

(declare-fun b!850873 () Bool)

(declare-fun tp!267924 () Bool)

(assert (=> b!850873 (= e!559961 tp!267924)))

(declare-fun b!850871 () Bool)

(assert (=> b!850871 (= e!559961 tp_is_empty!3969)))

(declare-fun b!850874 () Bool)

(declare-fun tp!267922 () Bool)

(declare-fun tp!267923 () Bool)

(assert (=> b!850874 (= e!559961 (and tp!267922 tp!267923))))

(declare-fun b!850872 () Bool)

(declare-fun tp!267921 () Bool)

(declare-fun tp!267925 () Bool)

(assert (=> b!850872 (= e!559961 (and tp!267921 tp!267925))))

(assert (= (and b!850053 ((_ is ElementMatch!2153) (reg!2482 (regex!1720 (h!14572 rules!2621))))) b!850871))

(assert (= (and b!850053 ((_ is Concat!3940) (reg!2482 (regex!1720 (h!14572 rules!2621))))) b!850872))

(assert (= (and b!850053 ((_ is Star!2153) (reg!2482 (regex!1720 (h!14572 rules!2621))))) b!850873))

(assert (= (and b!850053 ((_ is Union!2153) (reg!2482 (regex!1720 (h!14572 rules!2621))))) b!850874))

(declare-fun b!850877 () Bool)

(declare-fun e!559964 () Bool)

(assert (=> b!850877 (= e!559964 true)))

(declare-fun b!850876 () Bool)

(declare-fun e!559963 () Bool)

(assert (=> b!850876 (= e!559963 e!559964)))

(declare-fun b!850875 () Bool)

(declare-fun e!559962 () Bool)

(assert (=> b!850875 (= e!559962 e!559963)))

(assert (=> b!849713 e!559962))

(assert (= b!850876 b!850877))

(assert (= b!850875 b!850876))

(assert (= (and b!849713 ((_ is Cons!9171) (t!95237 rules!2621))) b!850875))

(assert (=> b!850877 (< (dynLambda!4263 order!5857 (toValue!2753 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25369))))

(assert (=> b!850877 (< (dynLambda!4265 order!5861 (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621))))) (dynLambda!4264 order!5859 lambda!25369))))

(declare-fun b!850878 () Bool)

(declare-fun e!559965 () Bool)

(declare-fun tp!267926 () Bool)

(assert (=> b!850878 (= e!559965 (and tp_is_empty!3969 tp!267926))))

(assert (=> b!850093 (= tp!267704 e!559965)))

(assert (= (and b!850093 ((_ is Cons!9169) (t!95235 (originalCharacters!2276 (h!14571 l!5107))))) b!850878))

(declare-fun e!559966 () Bool)

(assert (=> b!850091 (= tp!267702 e!559966)))

(declare-fun b!850881 () Bool)

(declare-fun tp!267930 () Bool)

(assert (=> b!850881 (= e!559966 tp!267930)))

(declare-fun b!850879 () Bool)

(assert (=> b!850879 (= e!559966 tp_is_empty!3969)))

(declare-fun b!850882 () Bool)

(declare-fun tp!267928 () Bool)

(declare-fun tp!267929 () Bool)

(assert (=> b!850882 (= e!559966 (and tp!267928 tp!267929))))

(declare-fun b!850880 () Bool)

(declare-fun tp!267927 () Bool)

(declare-fun tp!267931 () Bool)

(assert (=> b!850880 (= e!559966 (and tp!267927 tp!267931))))

(assert (= (and b!850091 ((_ is ElementMatch!2153) (reg!2482 (regex!1720 (rule!3143 separatorToken!297))))) b!850879))

(assert (= (and b!850091 ((_ is Concat!3940) (reg!2482 (regex!1720 (rule!3143 separatorToken!297))))) b!850880))

(assert (= (and b!850091 ((_ is Star!2153) (reg!2482 (regex!1720 (rule!3143 separatorToken!297))))) b!850881))

(assert (= (and b!850091 ((_ is Union!2153) (reg!2482 (regex!1720 (rule!3143 separatorToken!297))))) b!850882))

(declare-fun b!850883 () Bool)

(declare-fun e!559967 () Bool)

(declare-fun tp!267932 () Bool)

(assert (=> b!850883 (= e!559967 (and tp_is_empty!3969 tp!267932))))

(assert (=> b!850059 (= tp!267666 e!559967)))

(assert (= (and b!850059 ((_ is Cons!9169) (t!95235 (originalCharacters!2276 separatorToken!297)))) b!850883))

(declare-fun e!559968 () Bool)

(assert (=> b!850092 (= tp!267700 e!559968)))

(declare-fun b!850886 () Bool)

(declare-fun tp!267936 () Bool)

(assert (=> b!850886 (= e!559968 tp!267936)))

(declare-fun b!850884 () Bool)

(assert (=> b!850884 (= e!559968 tp_is_empty!3969)))

(declare-fun b!850887 () Bool)

(declare-fun tp!267934 () Bool)

(declare-fun tp!267935 () Bool)

(assert (=> b!850887 (= e!559968 (and tp!267934 tp!267935))))

(declare-fun b!850885 () Bool)

(declare-fun tp!267933 () Bool)

(declare-fun tp!267937 () Bool)

(assert (=> b!850885 (= e!559968 (and tp!267933 tp!267937))))

(assert (= (and b!850092 ((_ is ElementMatch!2153) (regOne!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850884))

(assert (= (and b!850092 ((_ is Concat!3940) (regOne!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850885))

(assert (= (and b!850092 ((_ is Star!2153) (regOne!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850886))

(assert (= (and b!850092 ((_ is Union!2153) (regOne!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850887))

(declare-fun e!559969 () Bool)

(assert (=> b!850092 (= tp!267701 e!559969)))

(declare-fun b!850890 () Bool)

(declare-fun tp!267941 () Bool)

(assert (=> b!850890 (= e!559969 tp!267941)))

(declare-fun b!850888 () Bool)

(assert (=> b!850888 (= e!559969 tp_is_empty!3969)))

(declare-fun b!850891 () Bool)

(declare-fun tp!267939 () Bool)

(declare-fun tp!267940 () Bool)

(assert (=> b!850891 (= e!559969 (and tp!267939 tp!267940))))

(declare-fun b!850889 () Bool)

(declare-fun tp!267938 () Bool)

(declare-fun tp!267942 () Bool)

(assert (=> b!850889 (= e!559969 (and tp!267938 tp!267942))))

(assert (= (and b!850092 ((_ is ElementMatch!2153) (regTwo!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850888))

(assert (= (and b!850092 ((_ is Concat!3940) (regTwo!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850889))

(assert (= (and b!850092 ((_ is Star!2153) (regTwo!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850890))

(assert (= (and b!850092 ((_ is Union!2153) (regTwo!4819 (regex!1720 (rule!3143 separatorToken!297))))) b!850891))

(declare-fun b_lambda!28343 () Bool)

(assert (= b_lambda!28287 (or d!264950 b_lambda!28343)))

(declare-fun bs!231229 () Bool)

(declare-fun d!265634 () Bool)

(assert (= bs!231229 (and d!265634 d!264950)))

(assert (=> bs!231229 (= (dynLambda!4267 lambda!25369 (h!14571 l!5107)) (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 l!5107)))))

(assert (=> bs!231229 m!1087559))

(assert (=> b!850433 d!265634))

(declare-fun b_lambda!28345 () Bool)

(assert (= b_lambda!28339 (or d!264934 b_lambda!28345)))

(declare-fun bs!231230 () Bool)

(declare-fun d!265636 () Bool)

(assert (= bs!231230 (and d!265636 d!264934)))

(assert (=> bs!231230 (= (dynLambda!4267 lambda!25363 (h!14571 (list!3597 (seqFromList!1524 lt!321979)))) (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 (list!3597 (seqFromList!1524 lt!321979)))))))

(assert (=> bs!231230 m!1089945))

(assert (=> b!850754 d!265636))

(declare-fun b_lambda!28347 () Bool)

(assert (= b_lambda!28263 (or (and b!849665 b_free!25655 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!850070 b_free!25671 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!850816 b_free!25687 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!850084 b_free!25675 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!849659 b_free!25659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!850856 b_free!25691 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))))) (and b!849645 b_free!25651) b_lambda!28347)))

(declare-fun b_lambda!28349 () Bool)

(assert (= b_lambda!28329 (or d!264958 b_lambda!28349)))

(declare-fun bs!231231 () Bool)

(declare-fun d!265638 () Bool)

(assert (= bs!231231 (and d!265638 d!264958)))

(assert (=> bs!231231 (= (dynLambda!4267 lambda!25370 (h!14571 lt!321975)) (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321975)))))

(assert (=> bs!231231 m!1087569))

(assert (=> b!850710 d!265638))

(declare-fun b_lambda!28351 () Bool)

(assert (= b_lambda!28333 (or (and b!849659 b_free!25659 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) (and b!849665 b_free!25655 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) (and b!850070 b_free!25671 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) (and b!849645 b_free!25651 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) (and b!850816 b_free!25687 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) (and b!850084 b_free!25675) (and b!850856 b_free!25691 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))) b_lambda!28351)))

(declare-fun b_lambda!28353 () Bool)

(assert (= b_lambda!28325 (or d!265050 b_lambda!28353)))

(declare-fun bs!231232 () Bool)

(declare-fun d!265640 () Bool)

(assert (= bs!231232 (and d!265640 d!265050)))

(assert (=> bs!231232 (= (dynLambda!4267 lambda!25378 (h!14571 lt!321979)) (rulesProduceIndividualToken!586 thiss!20117 rules!2621 (h!14571 lt!321979)))))

(assert (=> bs!231232 m!1087923))

(assert (=> b!850687 d!265640))

(declare-fun b_lambda!28355 () Bool)

(assert (= b_lambda!28331 (or b!849647 b_lambda!28355)))

(declare-fun bs!231233 () Bool)

(declare-fun d!265642 () Bool)

(assert (= bs!231233 (and d!265642 b!849647)))

(assert (=> bs!231233 (= (dynLambda!4267 lambda!25358 (h!14571 (t!95236 l!5107))) (not (isSeparator!1720 (rule!3143 (h!14571 (t!95236 l!5107))))))))

(assert (=> b!850728 d!265642))

(declare-fun b_lambda!28357 () Bool)

(assert (= b_lambda!28341 (or (and b!849665 b_free!25655 (= (toChars!2612 (transformation!1720 (h!14572 rules!2621))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!850084 b_free!25675 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 l!5107))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!850070 b_free!25671 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 rules!2621)))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!849659 b_free!25659) (and b!850816 b_free!25687 (= (toChars!2612 (transformation!1720 (h!14572 (t!95237 (t!95237 rules!2621))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!850856 b_free!25691 (= (toChars!2612 (transformation!1720 (rule!3143 (h!14571 (t!95236 (t!95236 l!5107)))))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) (and b!849645 b_free!25651 (= (toChars!2612 (transformation!1720 (rule!3143 separatorToken!297))) (toChars!2612 (transformation!1720 (rule!3143 (h!14571 l!5107)))))) b_lambda!28357)))

(check-sat (not b!850421) (not b!850459) (not d!265358) (not b!850814) (not d!265260) (not d!265130) (not b!850870) (not b!850705) (not b!850153) (not b!850173) b_and!74645 (not d!265594) (not d!265572) (not b!850180) (not b_lambda!28345) (not b!850181) (not b!850723) (not b!850172) (not b!850860) (not b!850890) (not b!850197) (not bs!231229) (not b_next!25733) (not b!850749) (not b!850688) (not b!850291) (not b!850479) (not b!850809) (not d!265526) (not d!265266) (not b!850773) (not tb!59581) (not d!265556) (not b_lambda!28355) (not b!850866) (not b!850740) b_and!74341 (not b!850245) (not b_next!25715) (not b!850756) b_and!74647 (not b!850206) (not d!265352) (not b!850732) (not b!850704) (not b!850669) (not b!850842) (not d!265604) (not b!850437) (not b!850840) (not b!850198) (not b!850246) (not b_next!25721) (not d!265550) (not d!265596) (not b!850880) (not b_next!25753) (not d!265624) (not d!265248) (not b!850743) (not tb!59511) (not b!850811) (not b!850380) (not b!850194) b_and!74389 (not b!850431) (not d!265124) (not b!850829) (not d!265220) (not b!850827) (not b!850768) (not b_lambda!28343) (not b!850706) (not b!850873) (not d!265212) (not b!850739) (not b_next!25739) b_and!74345 (not b!850712) (not b!850883) (not b!850730) (not d!265602) b_and!74385 (not tb!59709) (not b!850886) (not b!850798) (not b!850415) (not d!265380) (not b!850825) (not b!850272) (not d!265274) (not b!850889) (not b!850851) (not b!850203) (not d!265530) (not b!850736) (not d!265620) (not b!850703) (not d!265152) (not b!850150) (not b!850290) (not b_lambda!28253) (not b_lambda!28293) (not b!850689) (not b_lambda!28351) (not b!850193) (not d!265246) b_and!74349 (not d!265136) (not b!850853) (not b!850824) (not b!850247) (not d!265570) (not tb!59679) (not d!265496) (not d!265622) (not b!850843) (not d!265582) (not b!850800) (not d!265146) (not b!850676) (not b!850269) (not b!850875) (not d!265586) (not d!265616) (not b!850751) (not b!850159) b_and!74637 (not b!850338) (not b!850709) (not b_lambda!28335) (not b_lambda!28327) (not b!850855) (not d!265392) (not d!265626) (not b!850152) (not d!265618) (not d!265510) (not b!850451) (not b!850864) (not b!850254) (not b!850419) (not b!850885) (not b!850781) (not b!850820) (not b!850839) (not b!850874) (not b!850249) (not d!265606) (not b_lambda!28267) (not d!265568) (not b!850467) (not b!850297) (not d!265532) (not b!850202) (not b!850337) (not b!850292) (not b!850443) (not tb!59719) (not b!850450) (not b!850765) (not b!850684) (not d!265190) (not b!850823) (not b!850434) (not b!850848) (not b!850772) (not b!850436) (not d!265256) (not b!850887) (not b_lambda!28337) (not d!265150) (not d!265562) (not d!265222) (not b!850777) (not b!850726) (not b!850250) (not d!265254) (not b!850345) (not b!850804) (not b!850869) (not b!850377) (not tb!59689) (not b!850296) (not b!850882) (not b!850761) (not b_next!25713) (not d!265216) (not d!265140) (not tb!59501) (not b!850474) (not b!850727) (not b!850449) (not b!850857) (not d!265512) (not d!265340) (not b!850200) (not bm!50496) b_and!74641 (not b!850729) (not b_lambda!28257) (not b!850411) (not d!265138) (not d!265202) (not d!265502) (not b!850784) (not d!265114) (not b!850142) (not b!850183) (not d!265128) (not b_lambda!28255) (not b!850675) (not d!265546) (not b!850764) (not b!850810) (not b!850379) (not b!850663) (not b!850802) (not b!850708) (not b!850707) (not b!850833) (not b!850801) (not b!850734) (not d!265182) (not b!850783) (not b_next!25755) (not tb!59601) (not d!265592) tp_is_empty!3969 (not b!850755) b_and!74643 (not b!850836) (not b!850868) (not b!850821) (not d!265524) (not b_next!25719) (not b!850865) (not b_next!25751) (not b_next!25723) (not d!265614) (not d!265350) (not b!850248) (not b!850815) (not b!850828) (not d!265108) (not b!850785) (not b!850302) (not b!850806) (not b_lambda!28281) (not b!850731) (not b_lambda!28289) (not b!850702) (not d!265576) (not b!850435) (not b!850835) (not b!850665) (not d!265252) (not b!850335) (not d!265344) (not b!850808) (not b!850878) b_and!74635 (not b!850683) (not b!850852) (not b!850832) (not b_next!25737) (not b!850677) (not d!265194) (not b!850378) (not b!850737) (not d!265270) (not b!850678) (not b!850841) (not b!850831) b_and!74633 (not tb!59699) (not b!850733) (not b!850143) (not b!850468) (not d!265250) (not d!265610) (not b!850336) (not bs!231231) (not d!265210) (not b!850769) (not d!265148) (not d!265378) (not b!850412) (not b!850722) (not d!265334) (not b!849891) (not b!849894) (not b!850666) (not b!850797) (not b!850850) (not d!265528) (not b_next!25717) (not b!850205) (not b!850725) (not bs!231232) (not d!265180) (not b!850718) (not d!265338) (not b!850177) (not d!265578) (not b!850758) (not b!850679) (not b_lambda!28265) (not b!850844) (not d!265348) (not b!850190) (not b!850847) (not d!265308) (not b_next!25735) (not d!265590) (not b!850344) (not b!850779) (not b!850837) (not b!850742) (not b!850796) (not d!265184) (not b!850295) (not d!265144) (not b!850267) (not d!265372) (not b!850748) (not b!850682) (not d!265292) (not d!265500) (not d!265612) (not b!850757) (not b!850872) (not d!265504) (not b!850846) (not b!850422) (not b_lambda!28349) (not b!850752) (not b!850711) b_and!74631 (not b_lambda!28357) b_and!74639 (not b_lambda!28347) (not b!850854) (not b!850776) (not d!265588) (not b!850458) (not b!850891) (not b_lambda!28353) (not b!850184) (not d!265580) (not b!850819) (not b!850300) (not d!265118) (not b!850881) (not d!265142) (not b_next!25749) (not b!850817) (not d!265632) (not tb!59561) (not b_lambda!28323) (not b!850668) (not d!265538) (not b!850744) (not b!850208) (not b!850341) (not d!265558) (not d!265498) (not d!265534) (not b!850418) (not bs!231230) (not d!265328) (not b!850805) (not d!265332) (not b!850207) (not d!265564) (not d!265536))
(check-sat b_and!74645 (not b_next!25733) b_and!74647 b_and!74389 b_and!74385 b_and!74349 b_and!74637 (not b_next!25713) b_and!74641 (not b_next!25755) b_and!74633 (not b_next!25717) (not b_next!25735) (not b_next!25749) b_and!74341 (not b_next!25715) (not b_next!25721) (not b_next!25753) (not b_next!25739) b_and!74345 (not b_next!25751) b_and!74643 (not b_next!25723) (not b_next!25719) b_and!74635 (not b_next!25737) b_and!74631 b_and!74639)
