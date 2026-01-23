; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371152 () Bool)

(assert start!371152)

(declare-fun b!3948617 () Bool)

(declare-fun b_free!108341 () Bool)

(declare-fun b_next!109045 () Bool)

(assert (=> b!3948617 (= b_free!108341 (not b_next!109045))))

(declare-fun tp!1202479 () Bool)

(declare-fun b_and!302315 () Bool)

(assert (=> b!3948617 (= tp!1202479 b_and!302315)))

(declare-fun b_free!108343 () Bool)

(declare-fun b_next!109047 () Bool)

(assert (=> b!3948617 (= b_free!108343 (not b_next!109047))))

(declare-fun tp!1202490 () Bool)

(declare-fun b_and!302317 () Bool)

(assert (=> b!3948617 (= tp!1202490 b_and!302317)))

(declare-fun b!3948619 () Bool)

(declare-fun b_free!108345 () Bool)

(declare-fun b_next!109049 () Bool)

(assert (=> b!3948619 (= b_free!108345 (not b_next!109049))))

(declare-fun tp!1202485 () Bool)

(declare-fun b_and!302319 () Bool)

(assert (=> b!3948619 (= tp!1202485 b_and!302319)))

(declare-fun b_free!108347 () Bool)

(declare-fun b_next!109051 () Bool)

(assert (=> b!3948619 (= b_free!108347 (not b_next!109051))))

(declare-fun tp!1202486 () Bool)

(declare-fun b_and!302321 () Bool)

(assert (=> b!3948619 (= tp!1202486 b_and!302321)))

(declare-fun b!3948622 () Bool)

(declare-fun b_free!108349 () Bool)

(declare-fun b_next!109053 () Bool)

(assert (=> b!3948622 (= b_free!108349 (not b_next!109053))))

(declare-fun tp!1202487 () Bool)

(declare-fun b_and!302323 () Bool)

(assert (=> b!3948622 (= tp!1202487 b_and!302323)))

(declare-fun b_free!108351 () Bool)

(declare-fun b_next!109055 () Bool)

(assert (=> b!3948622 (= b_free!108351 (not b_next!109055))))

(declare-fun tp!1202491 () Bool)

(declare-fun b_and!302325 () Bool)

(assert (=> b!3948622 (= tp!1202491 b_and!302325)))

(declare-fun e!2443612 () Bool)

(declare-fun e!2443629 () Bool)

(declare-fun tp!1202478 () Bool)

(declare-fun b!3948604 () Bool)

(declare-datatypes ((List!42083 0))(
  ( (Nil!41959) (Cons!41959 (h!47379 (_ BitVec 16)) (t!328228 List!42083)) )
))
(declare-datatypes ((TokenValue!6794 0))(
  ( (FloatLiteralValue!13588 (text!48003 List!42083)) (TokenValueExt!6793 (__x!25805 Int)) (Broken!33970 (value!207682 List!42083)) (Object!6917) (End!6794) (Def!6794) (Underscore!6794) (Match!6794) (Else!6794) (Error!6794) (Case!6794) (If!6794) (Extends!6794) (Abstract!6794) (Class!6794) (Val!6794) (DelimiterValue!13588 (del!6854 List!42083)) (KeywordValue!6800 (value!207683 List!42083)) (CommentValue!13588 (value!207684 List!42083)) (WhitespaceValue!13588 (value!207685 List!42083)) (IndentationValue!6794 (value!207686 List!42083)) (String!47687) (Int32!6794) (Broken!33971 (value!207687 List!42083)) (Boolean!6795) (Unit!60485) (OperatorValue!6797 (op!6854 List!42083)) (IdentifierValue!13588 (value!207688 List!42083)) (IdentifierValue!13589 (value!207689 List!42083)) (WhitespaceValue!13589 (value!207690 List!42083)) (True!13588) (False!13588) (Broken!33972 (value!207691 List!42083)) (Broken!33973 (value!207692 List!42083)) (True!13589) (RightBrace!6794) (RightBracket!6794) (Colon!6794) (Null!6794) (Comma!6794) (LeftBracket!6794) (False!13589) (LeftBrace!6794) (ImaginaryLiteralValue!6794 (text!48004 List!42083)) (StringLiteralValue!20382 (value!207693 List!42083)) (EOFValue!6794 (value!207694 List!42083)) (IdentValue!6794 (value!207695 List!42083)) (DelimiterValue!13589 (value!207696 List!42083)) (DedentValue!6794 (value!207697 List!42083)) (NewLineValue!6794 (value!207698 List!42083)) (IntegerValue!20382 (value!207699 (_ BitVec 32)) (text!48005 List!42083)) (IntegerValue!20383 (value!207700 Int) (text!48006 List!42083)) (Times!6794) (Or!6794) (Equal!6794) (Minus!6794) (Broken!33974 (value!207701 List!42083)) (And!6794) (Div!6794) (LessEqual!6794) (Mod!6794) (Concat!18263) (Not!6794) (Plus!6794) (SpaceValue!6794 (value!207702 List!42083)) (IntegerValue!20384 (value!207703 Int) (text!48007 List!42083)) (StringLiteralValue!20383 (text!48008 List!42083)) (FloatLiteralValue!13589 (text!48009 List!42083)) (BytesLiteralValue!6794 (value!207704 List!42083)) (CommentValue!13589 (value!207705 List!42083)) (StringLiteralValue!20384 (value!207706 List!42083)) (ErrorTokenValue!6794 (msg!6855 List!42083)) )
))
(declare-datatypes ((C!23124 0))(
  ( (C!23125 (val!13656 Int)) )
))
(declare-datatypes ((Regex!11469 0))(
  ( (ElementMatch!11469 (c!685754 C!23124)) (Concat!18264 (regOne!23450 Regex!11469) (regTwo!23450 Regex!11469)) (EmptyExpr!11469) (Star!11469 (reg!11798 Regex!11469)) (EmptyLang!11469) (Union!11469 (regOne!23451 Regex!11469) (regTwo!23451 Regex!11469)) )
))
(declare-datatypes ((String!47688 0))(
  ( (String!47689 (value!207707 String)) )
))
(declare-datatypes ((List!42084 0))(
  ( (Nil!41960) (Cons!41960 (h!47380 C!23124) (t!328229 List!42084)) )
))
(declare-datatypes ((IArray!25555 0))(
  ( (IArray!25556 (innerList!12835 List!42084)) )
))
(declare-datatypes ((Conc!12775 0))(
  ( (Node!12775 (left!31935 Conc!12775) (right!32265 Conc!12775) (csize!25780 Int) (cheight!12986 Int)) (Leaf!19764 (xs!16081 IArray!25555) (csize!25781 Int)) (Empty!12775) )
))
(declare-datatypes ((BalanceConc!25144 0))(
  ( (BalanceConc!25145 (c!685755 Conc!12775)) )
))
(declare-datatypes ((TokenValueInjection!13016 0))(
  ( (TokenValueInjection!13017 (toValue!9040 Int) (toChars!8899 Int)) )
))
(declare-datatypes ((Rule!12928 0))(
  ( (Rule!12929 (regex!6564 Regex!11469) (tag!7424 String!47688) (isSeparator!6564 Bool) (transformation!6564 TokenValueInjection!13016)) )
))
(declare-datatypes ((Token!12266 0))(
  ( (Token!12267 (value!207708 TokenValue!6794) (rule!9530 Rule!12928) (size!31454 Int) (originalCharacters!7164 List!42084)) )
))
(declare-datatypes ((List!42085 0))(
  ( (Nil!41961) (Cons!41961 (h!47381 Token!12266) (t!328230 List!42085)) )
))
(declare-fun suffixTokens!72 () List!42085)

(declare-fun inv!21 (TokenValue!6794) Bool)

(assert (=> b!3948604 (= e!2443612 (and (inv!21 (value!207708 (h!47381 suffixTokens!72))) e!2443629 tp!1202478))))

(declare-fun e!2443624 () Bool)

(declare-fun prefixTokens!80 () List!42085)

(declare-fun b!3948605 () Bool)

(declare-fun tp!1202488 () Bool)

(declare-fun e!2443619 () Bool)

(declare-fun inv!56185 (String!47688) Bool)

(declare-fun inv!56188 (TokenValueInjection!13016) Bool)

(assert (=> b!3948605 (= e!2443624 (and tp!1202488 (inv!56185 (tag!7424 (rule!9530 (h!47381 prefixTokens!80)))) (inv!56188 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) e!2443619))))

(declare-fun b!3948606 () Bool)

(declare-fun res!1597688 () Bool)

(declare-fun e!2443623 () Bool)

(assert (=> b!3948606 (=> (not res!1597688) (not e!2443623))))

(declare-datatypes ((tuple2!41246 0))(
  ( (tuple2!41247 (_1!23757 Token!12266) (_2!23757 List!42084)) )
))
(declare-datatypes ((Option!8984 0))(
  ( (None!8983) (Some!8983 (v!39323 tuple2!41246)) )
))
(declare-fun lt!1380276 () Option!8984)

(declare-fun lt!1380274 () List!42084)

(declare-fun apply!9795 (TokenValueInjection!13016 BalanceConc!25144) TokenValue!6794)

(declare-fun seqFromList!4823 (List!42084) BalanceConc!25144)

(assert (=> b!3948606 (= res!1597688 (= (value!207708 (_1!23757 (v!39323 lt!1380276))) (apply!9795 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))) (seqFromList!4823 lt!1380274))))))

(declare-fun b!3948607 () Bool)

(declare-fun res!1597687 () Bool)

(declare-fun e!2443626 () Bool)

(assert (=> b!3948607 (=> (not res!1597687) (not e!2443626))))

(declare-fun isEmpty!25052 (List!42085) Bool)

(assert (=> b!3948607 (= res!1597687 (not (isEmpty!25052 prefixTokens!80)))))

(declare-fun b!3948608 () Bool)

(declare-fun e!2443614 () Bool)

(declare-fun tp_is_empty!19909 () Bool)

(declare-fun tp!1202482 () Bool)

(assert (=> b!3948608 (= e!2443614 (and tp_is_empty!19909 tp!1202482))))

(declare-fun b!3948609 () Bool)

(declare-fun e!2443627 () Bool)

(declare-fun tp!1202476 () Bool)

(assert (=> b!3948609 (= e!2443627 (and tp_is_empty!19909 tp!1202476))))

(declare-fun b!3948610 () Bool)

(declare-fun e!2443625 () Bool)

(declare-fun e!2443621 () Bool)

(declare-fun tp!1202480 () Bool)

(assert (=> b!3948610 (= e!2443625 (and e!2443621 tp!1202480))))

(declare-fun b!3948611 () Bool)

(declare-fun res!1597679 () Bool)

(assert (=> b!3948611 (=> (not res!1597679) (not e!2443626))))

(declare-fun prefix!426 () List!42084)

(declare-fun isEmpty!25053 (List!42084) Bool)

(assert (=> b!3948611 (= res!1597679 (not (isEmpty!25053 prefix!426)))))

(declare-fun b!3948612 () Bool)

(declare-fun res!1597681 () Bool)

(assert (=> b!3948612 (=> (not res!1597681) (not e!2443623))))

(declare-fun size!31455 (List!42084) Int)

(assert (=> b!3948612 (= res!1597681 (= (size!31454 (_1!23757 (v!39323 lt!1380276))) (size!31455 (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276))))))))

(declare-fun b!3948613 () Bool)

(assert (=> b!3948613 (= e!2443623 (= (size!31454 (_1!23757 (v!39323 lt!1380276))) (size!31455 lt!1380274)))))

(declare-fun e!2443608 () Bool)

(declare-fun e!2443615 () Bool)

(declare-fun b!3948614 () Bool)

(declare-fun tp!1202483 () Bool)

(declare-fun inv!56189 (Token!12266) Bool)

(assert (=> b!3948614 (= e!2443608 (and (inv!56189 (h!47381 prefixTokens!80)) e!2443615 tp!1202483))))

(declare-fun res!1597682 () Bool)

(assert (=> start!371152 (=> (not res!1597682) (not e!2443626))))

(declare-datatypes ((LexerInterface!6153 0))(
  ( (LexerInterfaceExt!6150 (__x!25806 Int)) (Lexer!6151) )
))
(declare-fun thiss!20629 () LexerInterface!6153)

(get-info :version)

(assert (=> start!371152 (= res!1597682 ((_ is Lexer!6151) thiss!20629))))

(assert (=> start!371152 e!2443626))

(assert (=> start!371152 e!2443627))

(assert (=> start!371152 true))

(assert (=> start!371152 e!2443614))

(assert (=> start!371152 e!2443625))

(assert (=> start!371152 e!2443608))

(declare-fun e!2443609 () Bool)

(assert (=> start!371152 e!2443609))

(declare-fun e!2443616 () Bool)

(assert (=> start!371152 e!2443616))

(declare-fun b!3948615 () Bool)

(declare-datatypes ((List!42086 0))(
  ( (Nil!41962) (Cons!41962 (h!47382 Rule!12928) (t!328231 List!42086)) )
))
(declare-fun rules!2768 () List!42086)

(declare-fun e!2443630 () Bool)

(declare-fun tp!1202489 () Bool)

(assert (=> b!3948615 (= e!2443621 (and tp!1202489 (inv!56185 (tag!7424 (h!47382 rules!2768))) (inv!56188 (transformation!6564 (h!47382 rules!2768))) e!2443630))))

(declare-fun e!2443610 () Bool)

(declare-fun tp!1202484 () Bool)

(declare-fun b!3948616 () Bool)

(assert (=> b!3948616 (= e!2443629 (and tp!1202484 (inv!56185 (tag!7424 (rule!9530 (h!47381 suffixTokens!72)))) (inv!56188 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) e!2443610))))

(assert (=> b!3948617 (= e!2443619 (and tp!1202479 tp!1202490))))

(declare-fun b!3948618 () Bool)

(declare-fun e!2443618 () Bool)

(assert (=> b!3948618 (= e!2443626 e!2443618)))

(declare-fun res!1597686 () Bool)

(assert (=> b!3948618 (=> (not res!1597686) (not e!2443618))))

(declare-fun suffixResult!91 () List!42084)

(declare-fun lt!1380277 () List!42084)

(declare-datatypes ((tuple2!41248 0))(
  ( (tuple2!41249 (_1!23758 List!42085) (_2!23758 List!42084)) )
))
(declare-fun lexList!1921 (LexerInterface!6153 List!42086 List!42084) tuple2!41248)

(declare-fun ++!10885 (List!42085 List!42085) List!42085)

(assert (=> b!3948618 (= res!1597686 (= (lexList!1921 thiss!20629 rules!2768 lt!1380277) (tuple2!41249 (++!10885 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!42084)

(declare-fun ++!10886 (List!42084 List!42084) List!42084)

(assert (=> b!3948618 (= lt!1380277 (++!10886 prefix!426 suffix!1176))))

(assert (=> b!3948619 (= e!2443630 (and tp!1202485 tp!1202486))))

(declare-fun b!3948620 () Bool)

(declare-fun res!1597684 () Bool)

(assert (=> b!3948620 (=> (not res!1597684) (not e!2443618))))

(assert (=> b!3948620 (= res!1597684 (= (lexList!1921 thiss!20629 rules!2768 suffix!1176) (tuple2!41249 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3948621 () Bool)

(declare-fun e!2443622 () Bool)

(assert (=> b!3948621 (= e!2443622 (not (= (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276))) lt!1380274)))))

(assert (=> b!3948621 e!2443623))

(declare-fun res!1597683 () Bool)

(assert (=> b!3948621 (=> (not res!1597683) (not e!2443623))))

(declare-fun lt!1380281 () List!42084)

(assert (=> b!3948621 (= res!1597683 (= (_2!23757 (v!39323 lt!1380276)) lt!1380281))))

(declare-datatypes ((Unit!60486 0))(
  ( (Unit!60487) )
))
(declare-fun lt!1380280 () Unit!60486)

(declare-fun lemmaSamePrefixThenSameSuffix!1862 (List!42084 List!42084 List!42084 List!42084 List!42084) Unit!60486)

(assert (=> b!3948621 (= lt!1380280 (lemmaSamePrefixThenSameSuffix!1862 lt!1380274 (_2!23757 (v!39323 lt!1380276)) lt!1380274 lt!1380281 lt!1380277))))

(declare-fun getSuffix!2104 (List!42084 List!42084) List!42084)

(assert (=> b!3948621 (= lt!1380281 (getSuffix!2104 lt!1380277 lt!1380274))))

(declare-fun isPrefix!3653 (List!42084 List!42084) Bool)

(assert (=> b!3948621 (isPrefix!3653 lt!1380274 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))

(declare-fun lt!1380278 () Unit!60486)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2512 (List!42084 List!42084) Unit!60486)

(assert (=> b!3948621 (= lt!1380278 (lemmaConcatTwoListThenFirstIsPrefix!2512 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))

(declare-fun list!15586 (BalanceConc!25144) List!42084)

(declare-fun charsOf!4382 (Token!12266) BalanceConc!25144)

(assert (=> b!3948621 (= lt!1380274 (list!15586 (charsOf!4382 (_1!23757 (v!39323 lt!1380276)))))))

(declare-fun ruleValid!2506 (LexerInterface!6153 Rule!12928) Bool)

(assert (=> b!3948621 (ruleValid!2506 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276))))))

(declare-fun lt!1380275 () Unit!60486)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1582 (LexerInterface!6153 Rule!12928 List!42086) Unit!60486)

(assert (=> b!3948621 (= lt!1380275 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1582 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276))) rules!2768))))

(declare-fun lt!1380279 () Unit!60486)

(declare-fun lemmaCharactersSize!1217 (Token!12266) Unit!60486)

(assert (=> b!3948621 (= lt!1380279 (lemmaCharactersSize!1217 (_1!23757 (v!39323 lt!1380276))))))

(assert (=> b!3948622 (= e!2443610 (and tp!1202487 tp!1202491))))

(declare-fun tp!1202477 () Bool)

(declare-fun b!3948623 () Bool)

(assert (=> b!3948623 (= e!2443609 (and (inv!56189 (h!47381 suffixTokens!72)) e!2443612 tp!1202477))))

(declare-fun b!3948624 () Bool)

(declare-fun tp!1202492 () Bool)

(assert (=> b!3948624 (= e!2443616 (and tp_is_empty!19909 tp!1202492))))

(declare-fun b!3948625 () Bool)

(assert (=> b!3948625 (= e!2443618 e!2443622)))

(declare-fun res!1597680 () Bool)

(assert (=> b!3948625 (=> (not res!1597680) (not e!2443622))))

(assert (=> b!3948625 (= res!1597680 ((_ is Some!8983) lt!1380276))))

(declare-fun maxPrefix!3457 (LexerInterface!6153 List!42086 List!42084) Option!8984)

(assert (=> b!3948625 (= lt!1380276 (maxPrefix!3457 thiss!20629 rules!2768 lt!1380277))))

(declare-fun b!3948626 () Bool)

(declare-fun res!1597678 () Bool)

(assert (=> b!3948626 (=> (not res!1597678) (not e!2443626))))

(declare-fun isEmpty!25054 (List!42086) Bool)

(assert (=> b!3948626 (= res!1597678 (not (isEmpty!25054 rules!2768)))))

(declare-fun tp!1202481 () Bool)

(declare-fun b!3948627 () Bool)

(assert (=> b!3948627 (= e!2443615 (and (inv!21 (value!207708 (h!47381 prefixTokens!80))) e!2443624 tp!1202481))))

(declare-fun b!3948628 () Bool)

(declare-fun res!1597685 () Bool)

(assert (=> b!3948628 (=> (not res!1597685) (not e!2443626))))

(declare-fun rulesInvariant!5496 (LexerInterface!6153 List!42086) Bool)

(assert (=> b!3948628 (= res!1597685 (rulesInvariant!5496 thiss!20629 rules!2768))))

(assert (= (and start!371152 res!1597682) b!3948626))

(assert (= (and b!3948626 res!1597678) b!3948628))

(assert (= (and b!3948628 res!1597685) b!3948607))

(assert (= (and b!3948607 res!1597687) b!3948611))

(assert (= (and b!3948611 res!1597679) b!3948618))

(assert (= (and b!3948618 res!1597686) b!3948620))

(assert (= (and b!3948620 res!1597684) b!3948625))

(assert (= (and b!3948625 res!1597680) b!3948621))

(assert (= (and b!3948621 res!1597683) b!3948606))

(assert (= (and b!3948606 res!1597688) b!3948612))

(assert (= (and b!3948612 res!1597681) b!3948613))

(assert (= (and start!371152 ((_ is Cons!41960) suffixResult!91)) b!3948609))

(assert (= (and start!371152 ((_ is Cons!41960) suffix!1176)) b!3948608))

(assert (= b!3948615 b!3948619))

(assert (= b!3948610 b!3948615))

(assert (= (and start!371152 ((_ is Cons!41962) rules!2768)) b!3948610))

(assert (= b!3948605 b!3948617))

(assert (= b!3948627 b!3948605))

(assert (= b!3948614 b!3948627))

(assert (= (and start!371152 ((_ is Cons!41961) prefixTokens!80)) b!3948614))

(assert (= b!3948616 b!3948622))

(assert (= b!3948604 b!3948616))

(assert (= b!3948623 b!3948604))

(assert (= (and start!371152 ((_ is Cons!41961) suffixTokens!72)) b!3948623))

(assert (= (and start!371152 ((_ is Cons!41960) prefix!426)) b!3948624))

(declare-fun m!4517439 () Bool)

(assert (=> b!3948614 m!4517439))

(declare-fun m!4517441 () Bool)

(assert (=> b!3948620 m!4517441))

(declare-fun m!4517443 () Bool)

(assert (=> b!3948616 m!4517443))

(declare-fun m!4517445 () Bool)

(assert (=> b!3948616 m!4517445))

(declare-fun m!4517447 () Bool)

(assert (=> b!3948612 m!4517447))

(declare-fun m!4517449 () Bool)

(assert (=> b!3948606 m!4517449))

(assert (=> b!3948606 m!4517449))

(declare-fun m!4517451 () Bool)

(assert (=> b!3948606 m!4517451))

(declare-fun m!4517453 () Bool)

(assert (=> b!3948625 m!4517453))

(declare-fun m!4517455 () Bool)

(assert (=> b!3948618 m!4517455))

(declare-fun m!4517457 () Bool)

(assert (=> b!3948618 m!4517457))

(declare-fun m!4517459 () Bool)

(assert (=> b!3948618 m!4517459))

(declare-fun m!4517461 () Bool)

(assert (=> b!3948615 m!4517461))

(declare-fun m!4517463 () Bool)

(assert (=> b!3948615 m!4517463))

(declare-fun m!4517465 () Bool)

(assert (=> b!3948626 m!4517465))

(declare-fun m!4517467 () Bool)

(assert (=> b!3948604 m!4517467))

(declare-fun m!4517469 () Bool)

(assert (=> b!3948611 m!4517469))

(declare-fun m!4517471 () Bool)

(assert (=> b!3948607 m!4517471))

(declare-fun m!4517473 () Bool)

(assert (=> b!3948621 m!4517473))

(declare-fun m!4517475 () Bool)

(assert (=> b!3948621 m!4517475))

(declare-fun m!4517477 () Bool)

(assert (=> b!3948621 m!4517477))

(assert (=> b!3948621 m!4517475))

(declare-fun m!4517479 () Bool)

(assert (=> b!3948621 m!4517479))

(declare-fun m!4517481 () Bool)

(assert (=> b!3948621 m!4517481))

(declare-fun m!4517483 () Bool)

(assert (=> b!3948621 m!4517483))

(declare-fun m!4517485 () Bool)

(assert (=> b!3948621 m!4517485))

(assert (=> b!3948621 m!4517473))

(declare-fun m!4517487 () Bool)

(assert (=> b!3948621 m!4517487))

(declare-fun m!4517489 () Bool)

(assert (=> b!3948621 m!4517489))

(declare-fun m!4517491 () Bool)

(assert (=> b!3948621 m!4517491))

(declare-fun m!4517493 () Bool)

(assert (=> b!3948628 m!4517493))

(declare-fun m!4517495 () Bool)

(assert (=> b!3948627 m!4517495))

(declare-fun m!4517497 () Bool)

(assert (=> b!3948613 m!4517497))

(declare-fun m!4517499 () Bool)

(assert (=> b!3948623 m!4517499))

(declare-fun m!4517501 () Bool)

(assert (=> b!3948605 m!4517501))

(declare-fun m!4517503 () Bool)

(assert (=> b!3948605 m!4517503))

(check-sat (not b!3948610) (not b!3948604) (not b_next!109045) b_and!302317 (not b!3948628) (not b!3948615) (not b!3948620) (not b!3948627) (not b_next!109051) b_and!302315 (not b!3948607) (not b!3948618) (not b!3948611) (not b_next!109053) (not b!3948614) (not b!3948613) (not b!3948621) b_and!302323 (not b_next!109049) (not b!3948625) (not b!3948606) (not b!3948626) b_and!302325 (not b!3948608) (not b_next!109055) tp_is_empty!19909 (not b_next!109047) b_and!302321 (not b!3948624) (not b!3948616) b_and!302319 (not b!3948609) (not b!3948612) (not b!3948605) (not b!3948623))
(check-sat b_and!302315 (not b_next!109045) (not b_next!109053) b_and!302323 (not b_next!109049) b_and!302317 b_and!302325 (not b_next!109055) (not b_next!109047) b_and!302321 b_and!302319 (not b_next!109051))
(get-model)

(declare-fun b!3948639 () Bool)

(declare-fun res!1597693 () Bool)

(declare-fun e!2443638 () Bool)

(assert (=> b!3948639 (=> res!1597693 e!2443638)))

(assert (=> b!3948639 (= res!1597693 (not ((_ is IntegerValue!20384) (value!207708 (h!47381 suffixTokens!72)))))))

(declare-fun e!2443637 () Bool)

(assert (=> b!3948639 (= e!2443637 e!2443638)))

(declare-fun b!3948640 () Bool)

(declare-fun e!2443639 () Bool)

(assert (=> b!3948640 (= e!2443639 e!2443637)))

(declare-fun c!685761 () Bool)

(assert (=> b!3948640 (= c!685761 ((_ is IntegerValue!20383) (value!207708 (h!47381 suffixTokens!72))))))

(declare-fun b!3948641 () Bool)

(declare-fun inv!17 (TokenValue!6794) Bool)

(assert (=> b!3948641 (= e!2443637 (inv!17 (value!207708 (h!47381 suffixTokens!72))))))

(declare-fun b!3948642 () Bool)

(declare-fun inv!15 (TokenValue!6794) Bool)

(assert (=> b!3948642 (= e!2443638 (inv!15 (value!207708 (h!47381 suffixTokens!72))))))

(declare-fun b!3948643 () Bool)

(declare-fun inv!16 (TokenValue!6794) Bool)

(assert (=> b!3948643 (= e!2443639 (inv!16 (value!207708 (h!47381 suffixTokens!72))))))

(declare-fun d!1171233 () Bool)

(declare-fun c!685760 () Bool)

(assert (=> d!1171233 (= c!685760 ((_ is IntegerValue!20382) (value!207708 (h!47381 suffixTokens!72))))))

(assert (=> d!1171233 (= (inv!21 (value!207708 (h!47381 suffixTokens!72))) e!2443639)))

(assert (= (and d!1171233 c!685760) b!3948643))

(assert (= (and d!1171233 (not c!685760)) b!3948640))

(assert (= (and b!3948640 c!685761) b!3948641))

(assert (= (and b!3948640 (not c!685761)) b!3948639))

(assert (= (and b!3948639 (not res!1597693)) b!3948642))

(declare-fun m!4517505 () Bool)

(assert (=> b!3948641 m!4517505))

(declare-fun m!4517507 () Bool)

(assert (=> b!3948642 m!4517507))

(declare-fun m!4517509 () Bool)

(assert (=> b!3948643 m!4517509))

(assert (=> b!3948604 d!1171233))

(declare-fun d!1171235 () Bool)

(assert (=> d!1171235 (= (inv!56185 (tag!7424 (h!47382 rules!2768))) (= (mod (str.len (value!207707 (tag!7424 (h!47382 rules!2768)))) 2) 0))))

(assert (=> b!3948615 d!1171235))

(declare-fun d!1171237 () Bool)

(declare-fun res!1597696 () Bool)

(declare-fun e!2443642 () Bool)

(assert (=> d!1171237 (=> (not res!1597696) (not e!2443642))))

(declare-fun semiInverseModEq!2830 (Int Int) Bool)

(assert (=> d!1171237 (= res!1597696 (semiInverseModEq!2830 (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toValue!9040 (transformation!6564 (h!47382 rules!2768)))))))

(assert (=> d!1171237 (= (inv!56188 (transformation!6564 (h!47382 rules!2768))) e!2443642)))

(declare-fun b!3948646 () Bool)

(declare-fun equivClasses!2729 (Int Int) Bool)

(assert (=> b!3948646 (= e!2443642 (equivClasses!2729 (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toValue!9040 (transformation!6564 (h!47382 rules!2768)))))))

(assert (= (and d!1171237 res!1597696) b!3948646))

(declare-fun m!4517511 () Bool)

(assert (=> d!1171237 m!4517511))

(declare-fun m!4517513 () Bool)

(assert (=> b!3948646 m!4517513))

(assert (=> b!3948615 d!1171237))

(declare-fun d!1171239 () Bool)

(declare-fun res!1597701 () Bool)

(declare-fun e!2443645 () Bool)

(assert (=> d!1171239 (=> (not res!1597701) (not e!2443645))))

(assert (=> d!1171239 (= res!1597701 (not (isEmpty!25053 (originalCharacters!7164 (h!47381 prefixTokens!80)))))))

(assert (=> d!1171239 (= (inv!56189 (h!47381 prefixTokens!80)) e!2443645)))

(declare-fun b!3948651 () Bool)

(declare-fun res!1597702 () Bool)

(assert (=> b!3948651 (=> (not res!1597702) (not e!2443645))))

(declare-fun dynLambda!17976 (Int TokenValue!6794) BalanceConc!25144)

(assert (=> b!3948651 (= res!1597702 (= (originalCharacters!7164 (h!47381 prefixTokens!80)) (list!15586 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (value!207708 (h!47381 prefixTokens!80))))))))

(declare-fun b!3948652 () Bool)

(assert (=> b!3948652 (= e!2443645 (= (size!31454 (h!47381 prefixTokens!80)) (size!31455 (originalCharacters!7164 (h!47381 prefixTokens!80)))))))

(assert (= (and d!1171239 res!1597701) b!3948651))

(assert (= (and b!3948651 res!1597702) b!3948652))

(declare-fun b_lambda!115507 () Bool)

(assert (=> (not b_lambda!115507) (not b!3948651)))

(declare-fun t!328233 () Bool)

(declare-fun tb!237413 () Bool)

(assert (=> (and b!3948617 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328233) tb!237413))

(declare-fun b!3948657 () Bool)

(declare-fun e!2443648 () Bool)

(declare-fun tp!1202495 () Bool)

(declare-fun inv!56190 (Conc!12775) Bool)

(assert (=> b!3948657 (= e!2443648 (and (inv!56190 (c!685755 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (value!207708 (h!47381 prefixTokens!80))))) tp!1202495))))

(declare-fun result!287530 () Bool)

(declare-fun inv!56191 (BalanceConc!25144) Bool)

(assert (=> tb!237413 (= result!287530 (and (inv!56191 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (value!207708 (h!47381 prefixTokens!80)))) e!2443648))))

(assert (= tb!237413 b!3948657))

(declare-fun m!4517515 () Bool)

(assert (=> b!3948657 m!4517515))

(declare-fun m!4517517 () Bool)

(assert (=> tb!237413 m!4517517))

(assert (=> b!3948651 t!328233))

(declare-fun b_and!302327 () Bool)

(assert (= b_and!302317 (and (=> t!328233 result!287530) b_and!302327)))

(declare-fun t!328235 () Bool)

(declare-fun tb!237415 () Bool)

(assert (=> (and b!3948619 (= (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328235) tb!237415))

(declare-fun result!287534 () Bool)

(assert (= result!287534 result!287530))

(assert (=> b!3948651 t!328235))

(declare-fun b_and!302329 () Bool)

(assert (= b_and!302321 (and (=> t!328235 result!287534) b_and!302329)))

(declare-fun t!328237 () Bool)

(declare-fun tb!237417 () Bool)

(assert (=> (and b!3948622 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328237) tb!237417))

(declare-fun result!287536 () Bool)

(assert (= result!287536 result!287530))

(assert (=> b!3948651 t!328237))

(declare-fun b_and!302331 () Bool)

(assert (= b_and!302325 (and (=> t!328237 result!287536) b_and!302331)))

(declare-fun m!4517519 () Bool)

(assert (=> d!1171239 m!4517519))

(declare-fun m!4517521 () Bool)

(assert (=> b!3948651 m!4517521))

(assert (=> b!3948651 m!4517521))

(declare-fun m!4517523 () Bool)

(assert (=> b!3948651 m!4517523))

(declare-fun m!4517525 () Bool)

(assert (=> b!3948652 m!4517525))

(assert (=> b!3948614 d!1171239))

(declare-fun b!3948685 () Bool)

(declare-fun res!1597726 () Bool)

(declare-fun e!2443663 () Bool)

(assert (=> b!3948685 (=> (not res!1597726) (not e!2443663))))

(declare-fun lt!1380298 () Option!8984)

(declare-fun matchR!5509 (Regex!11469 List!42084) Bool)

(declare-fun get!13853 (Option!8984) tuple2!41246)

(assert (=> b!3948685 (= res!1597726 (matchR!5509 (regex!6564 (rule!9530 (_1!23757 (get!13853 lt!1380298)))) (list!15586 (charsOf!4382 (_1!23757 (get!13853 lt!1380298))))))))

(declare-fun b!3948686 () Bool)

(declare-fun contains!8401 (List!42086 Rule!12928) Bool)

(assert (=> b!3948686 (= e!2443663 (contains!8401 rules!2768 (rule!9530 (_1!23757 (get!13853 lt!1380298)))))))

(declare-fun b!3948687 () Bool)

(declare-fun e!2443662 () Option!8984)

(declare-fun lt!1380295 () Option!8984)

(declare-fun lt!1380299 () Option!8984)

(assert (=> b!3948687 (= e!2443662 (ite (and ((_ is None!8983) lt!1380295) ((_ is None!8983) lt!1380299)) None!8983 (ite ((_ is None!8983) lt!1380299) lt!1380295 (ite ((_ is None!8983) lt!1380295) lt!1380299 (ite (>= (size!31454 (_1!23757 (v!39323 lt!1380295))) (size!31454 (_1!23757 (v!39323 lt!1380299)))) lt!1380295 lt!1380299)))))))

(declare-fun call!285191 () Option!8984)

(assert (=> b!3948687 (= lt!1380295 call!285191)))

(assert (=> b!3948687 (= lt!1380299 (maxPrefix!3457 thiss!20629 (t!328231 rules!2768) lt!1380277))))

(declare-fun b!3948688 () Bool)

(declare-fun res!1597722 () Bool)

(assert (=> b!3948688 (=> (not res!1597722) (not e!2443663))))

(assert (=> b!3948688 (= res!1597722 (< (size!31455 (_2!23757 (get!13853 lt!1380298))) (size!31455 lt!1380277)))))

(declare-fun d!1171241 () Bool)

(declare-fun e!2443661 () Bool)

(assert (=> d!1171241 e!2443661))

(declare-fun res!1597728 () Bool)

(assert (=> d!1171241 (=> res!1597728 e!2443661)))

(declare-fun isEmpty!25055 (Option!8984) Bool)

(assert (=> d!1171241 (= res!1597728 (isEmpty!25055 lt!1380298))))

(assert (=> d!1171241 (= lt!1380298 e!2443662)))

(declare-fun c!685767 () Bool)

(assert (=> d!1171241 (= c!685767 (and ((_ is Cons!41962) rules!2768) ((_ is Nil!41962) (t!328231 rules!2768))))))

(declare-fun lt!1380297 () Unit!60486)

(declare-fun lt!1380296 () Unit!60486)

(assert (=> d!1171241 (= lt!1380297 lt!1380296)))

(assert (=> d!1171241 (isPrefix!3653 lt!1380277 lt!1380277)))

(declare-fun lemmaIsPrefixRefl!2307 (List!42084 List!42084) Unit!60486)

(assert (=> d!1171241 (= lt!1380296 (lemmaIsPrefixRefl!2307 lt!1380277 lt!1380277))))

(declare-fun rulesValidInductive!2377 (LexerInterface!6153 List!42086) Bool)

(assert (=> d!1171241 (rulesValidInductive!2377 thiss!20629 rules!2768)))

(assert (=> d!1171241 (= (maxPrefix!3457 thiss!20629 rules!2768 lt!1380277) lt!1380298)))

(declare-fun b!3948689 () Bool)

(declare-fun res!1597723 () Bool)

(assert (=> b!3948689 (=> (not res!1597723) (not e!2443663))))

(assert (=> b!3948689 (= res!1597723 (= (++!10886 (list!15586 (charsOf!4382 (_1!23757 (get!13853 lt!1380298)))) (_2!23757 (get!13853 lt!1380298))) lt!1380277))))

(declare-fun b!3948690 () Bool)

(declare-fun res!1597724 () Bool)

(assert (=> b!3948690 (=> (not res!1597724) (not e!2443663))))

(assert (=> b!3948690 (= res!1597724 (= (value!207708 (_1!23757 (get!13853 lt!1380298))) (apply!9795 (transformation!6564 (rule!9530 (_1!23757 (get!13853 lt!1380298)))) (seqFromList!4823 (originalCharacters!7164 (_1!23757 (get!13853 lt!1380298)))))))))

(declare-fun b!3948691 () Bool)

(assert (=> b!3948691 (= e!2443661 e!2443663)))

(declare-fun res!1597725 () Bool)

(assert (=> b!3948691 (=> (not res!1597725) (not e!2443663))))

(declare-fun isDefined!6976 (Option!8984) Bool)

(assert (=> b!3948691 (= res!1597725 (isDefined!6976 lt!1380298))))

(declare-fun bm!285186 () Bool)

(declare-fun maxPrefixOneRule!2514 (LexerInterface!6153 Rule!12928 List!42084) Option!8984)

(assert (=> bm!285186 (= call!285191 (maxPrefixOneRule!2514 thiss!20629 (h!47382 rules!2768) lt!1380277))))

(declare-fun b!3948692 () Bool)

(assert (=> b!3948692 (= e!2443662 call!285191)))

(declare-fun b!3948693 () Bool)

(declare-fun res!1597727 () Bool)

(assert (=> b!3948693 (=> (not res!1597727) (not e!2443663))))

(assert (=> b!3948693 (= res!1597727 (= (list!15586 (charsOf!4382 (_1!23757 (get!13853 lt!1380298)))) (originalCharacters!7164 (_1!23757 (get!13853 lt!1380298)))))))

(assert (= (and d!1171241 c!685767) b!3948692))

(assert (= (and d!1171241 (not c!685767)) b!3948687))

(assert (= (or b!3948692 b!3948687) bm!285186))

(assert (= (and d!1171241 (not res!1597728)) b!3948691))

(assert (= (and b!3948691 res!1597725) b!3948693))

(assert (= (and b!3948693 res!1597727) b!3948688))

(assert (= (and b!3948688 res!1597722) b!3948689))

(assert (= (and b!3948689 res!1597723) b!3948690))

(assert (= (and b!3948690 res!1597724) b!3948685))

(assert (= (and b!3948685 res!1597726) b!3948686))

(declare-fun m!4517533 () Bool)

(assert (=> b!3948690 m!4517533))

(declare-fun m!4517535 () Bool)

(assert (=> b!3948690 m!4517535))

(assert (=> b!3948690 m!4517535))

(declare-fun m!4517537 () Bool)

(assert (=> b!3948690 m!4517537))

(declare-fun m!4517539 () Bool)

(assert (=> b!3948691 m!4517539))

(declare-fun m!4517541 () Bool)

(assert (=> d!1171241 m!4517541))

(declare-fun m!4517543 () Bool)

(assert (=> d!1171241 m!4517543))

(declare-fun m!4517545 () Bool)

(assert (=> d!1171241 m!4517545))

(declare-fun m!4517547 () Bool)

(assert (=> d!1171241 m!4517547))

(declare-fun m!4517549 () Bool)

(assert (=> b!3948687 m!4517549))

(assert (=> b!3948693 m!4517533))

(declare-fun m!4517551 () Bool)

(assert (=> b!3948693 m!4517551))

(assert (=> b!3948693 m!4517551))

(declare-fun m!4517553 () Bool)

(assert (=> b!3948693 m!4517553))

(assert (=> b!3948685 m!4517533))

(assert (=> b!3948685 m!4517551))

(assert (=> b!3948685 m!4517551))

(assert (=> b!3948685 m!4517553))

(assert (=> b!3948685 m!4517553))

(declare-fun m!4517555 () Bool)

(assert (=> b!3948685 m!4517555))

(assert (=> b!3948688 m!4517533))

(declare-fun m!4517557 () Bool)

(assert (=> b!3948688 m!4517557))

(declare-fun m!4517559 () Bool)

(assert (=> b!3948688 m!4517559))

(assert (=> b!3948686 m!4517533))

(declare-fun m!4517561 () Bool)

(assert (=> b!3948686 m!4517561))

(assert (=> b!3948689 m!4517533))

(assert (=> b!3948689 m!4517551))

(assert (=> b!3948689 m!4517551))

(assert (=> b!3948689 m!4517553))

(assert (=> b!3948689 m!4517553))

(declare-fun m!4517563 () Bool)

(assert (=> b!3948689 m!4517563))

(declare-fun m!4517565 () Bool)

(assert (=> bm!285186 m!4517565))

(assert (=> b!3948625 d!1171241))

(declare-fun d!1171249 () Bool)

(declare-fun lt!1380302 () Int)

(assert (=> d!1171249 (>= lt!1380302 0)))

(declare-fun e!2443666 () Int)

(assert (=> d!1171249 (= lt!1380302 e!2443666)))

(declare-fun c!685770 () Bool)

(assert (=> d!1171249 (= c!685770 ((_ is Nil!41960) lt!1380274))))

(assert (=> d!1171249 (= (size!31455 lt!1380274) lt!1380302)))

(declare-fun b!3948698 () Bool)

(assert (=> b!3948698 (= e!2443666 0)))

(declare-fun b!3948699 () Bool)

(assert (=> b!3948699 (= e!2443666 (+ 1 (size!31455 (t!328229 lt!1380274))))))

(assert (= (and d!1171249 c!685770) b!3948698))

(assert (= (and d!1171249 (not c!685770)) b!3948699))

(declare-fun m!4517567 () Bool)

(assert (=> b!3948699 m!4517567))

(assert (=> b!3948613 d!1171249))

(declare-fun d!1171251 () Bool)

(declare-fun lt!1380303 () Int)

(assert (=> d!1171251 (>= lt!1380303 0)))

(declare-fun e!2443667 () Int)

(assert (=> d!1171251 (= lt!1380303 e!2443667)))

(declare-fun c!685771 () Bool)

(assert (=> d!1171251 (= c!685771 ((_ is Nil!41960) (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276)))))))

(assert (=> d!1171251 (= (size!31455 (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276)))) lt!1380303)))

(declare-fun b!3948700 () Bool)

(assert (=> b!3948700 (= e!2443667 0)))

(declare-fun b!3948701 () Bool)

(assert (=> b!3948701 (= e!2443667 (+ 1 (size!31455 (t!328229 (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276)))))))))

(assert (= (and d!1171251 c!685771) b!3948700))

(assert (= (and d!1171251 (not c!685771)) b!3948701))

(declare-fun m!4517569 () Bool)

(assert (=> b!3948701 m!4517569))

(assert (=> b!3948612 d!1171251))

(declare-fun d!1171253 () Bool)

(declare-fun res!1597729 () Bool)

(declare-fun e!2443668 () Bool)

(assert (=> d!1171253 (=> (not res!1597729) (not e!2443668))))

(assert (=> d!1171253 (= res!1597729 (not (isEmpty!25053 (originalCharacters!7164 (h!47381 suffixTokens!72)))))))

(assert (=> d!1171253 (= (inv!56189 (h!47381 suffixTokens!72)) e!2443668)))

(declare-fun b!3948702 () Bool)

(declare-fun res!1597730 () Bool)

(assert (=> b!3948702 (=> (not res!1597730) (not e!2443668))))

(assert (=> b!3948702 (= res!1597730 (= (originalCharacters!7164 (h!47381 suffixTokens!72)) (list!15586 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (value!207708 (h!47381 suffixTokens!72))))))))

(declare-fun b!3948703 () Bool)

(assert (=> b!3948703 (= e!2443668 (= (size!31454 (h!47381 suffixTokens!72)) (size!31455 (originalCharacters!7164 (h!47381 suffixTokens!72)))))))

(assert (= (and d!1171253 res!1597729) b!3948702))

(assert (= (and b!3948702 res!1597730) b!3948703))

(declare-fun b_lambda!115509 () Bool)

(assert (=> (not b_lambda!115509) (not b!3948702)))

(declare-fun t!328239 () Bool)

(declare-fun tb!237419 () Bool)

(assert (=> (and b!3948617 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328239) tb!237419))

(declare-fun b!3948704 () Bool)

(declare-fun e!2443669 () Bool)

(declare-fun tp!1202496 () Bool)

(assert (=> b!3948704 (= e!2443669 (and (inv!56190 (c!685755 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (value!207708 (h!47381 suffixTokens!72))))) tp!1202496))))

(declare-fun result!287538 () Bool)

(assert (=> tb!237419 (= result!287538 (and (inv!56191 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (value!207708 (h!47381 suffixTokens!72)))) e!2443669))))

(assert (= tb!237419 b!3948704))

(declare-fun m!4517571 () Bool)

(assert (=> b!3948704 m!4517571))

(declare-fun m!4517573 () Bool)

(assert (=> tb!237419 m!4517573))

(assert (=> b!3948702 t!328239))

(declare-fun b_and!302333 () Bool)

(assert (= b_and!302327 (and (=> t!328239 result!287538) b_and!302333)))

(declare-fun t!328241 () Bool)

(declare-fun tb!237421 () Bool)

(assert (=> (and b!3948619 (= (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328241) tb!237421))

(declare-fun result!287540 () Bool)

(assert (= result!287540 result!287538))

(assert (=> b!3948702 t!328241))

(declare-fun b_and!302335 () Bool)

(assert (= b_and!302329 (and (=> t!328241 result!287540) b_and!302335)))

(declare-fun t!328243 () Bool)

(declare-fun tb!237423 () Bool)

(assert (=> (and b!3948622 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328243) tb!237423))

(declare-fun result!287542 () Bool)

(assert (= result!287542 result!287538))

(assert (=> b!3948702 t!328243))

(declare-fun b_and!302337 () Bool)

(assert (= b_and!302331 (and (=> t!328243 result!287542) b_and!302337)))

(declare-fun m!4517575 () Bool)

(assert (=> d!1171253 m!4517575))

(declare-fun m!4517577 () Bool)

(assert (=> b!3948702 m!4517577))

(assert (=> b!3948702 m!4517577))

(declare-fun m!4517579 () Bool)

(assert (=> b!3948702 m!4517579))

(declare-fun m!4517581 () Bool)

(assert (=> b!3948703 m!4517581))

(assert (=> b!3948623 d!1171253))

(declare-fun d!1171255 () Bool)

(assert (=> d!1171255 (= (isEmpty!25053 prefix!426) ((_ is Nil!41960) prefix!426))))

(assert (=> b!3948611 d!1171255))

(declare-fun d!1171257 () Bool)

(declare-fun lt!1380306 () List!42084)

(assert (=> d!1171257 (= (++!10886 lt!1380274 lt!1380306) lt!1380277)))

(declare-fun e!2443672 () List!42084)

(assert (=> d!1171257 (= lt!1380306 e!2443672)))

(declare-fun c!685774 () Bool)

(assert (=> d!1171257 (= c!685774 ((_ is Cons!41960) lt!1380274))))

(assert (=> d!1171257 (>= (size!31455 lt!1380277) (size!31455 lt!1380274))))

(assert (=> d!1171257 (= (getSuffix!2104 lt!1380277 lt!1380274) lt!1380306)))

(declare-fun b!3948709 () Bool)

(declare-fun tail!6114 (List!42084) List!42084)

(assert (=> b!3948709 (= e!2443672 (getSuffix!2104 (tail!6114 lt!1380277) (t!328229 lt!1380274)))))

(declare-fun b!3948710 () Bool)

(assert (=> b!3948710 (= e!2443672 lt!1380277)))

(assert (= (and d!1171257 c!685774) b!3948709))

(assert (= (and d!1171257 (not c!685774)) b!3948710))

(declare-fun m!4517583 () Bool)

(assert (=> d!1171257 m!4517583))

(assert (=> d!1171257 m!4517559))

(assert (=> d!1171257 m!4517497))

(declare-fun m!4517585 () Bool)

(assert (=> b!3948709 m!4517585))

(assert (=> b!3948709 m!4517585))

(declare-fun m!4517587 () Bool)

(assert (=> b!3948709 m!4517587))

(assert (=> b!3948621 d!1171257))

(declare-fun d!1171259 () Bool)

(assert (=> d!1171259 (= (_2!23757 (v!39323 lt!1380276)) lt!1380281)))

(declare-fun lt!1380309 () Unit!60486)

(declare-fun choose!23562 (List!42084 List!42084 List!42084 List!42084 List!42084) Unit!60486)

(assert (=> d!1171259 (= lt!1380309 (choose!23562 lt!1380274 (_2!23757 (v!39323 lt!1380276)) lt!1380274 lt!1380281 lt!1380277))))

(assert (=> d!1171259 (isPrefix!3653 lt!1380274 lt!1380277)))

(assert (=> d!1171259 (= (lemmaSamePrefixThenSameSuffix!1862 lt!1380274 (_2!23757 (v!39323 lt!1380276)) lt!1380274 lt!1380281 lt!1380277) lt!1380309)))

(declare-fun bs!586969 () Bool)

(assert (= bs!586969 d!1171259))

(declare-fun m!4517589 () Bool)

(assert (=> bs!586969 m!4517589))

(declare-fun m!4517591 () Bool)

(assert (=> bs!586969 m!4517591))

(assert (=> b!3948621 d!1171259))

(declare-fun d!1171261 () Bool)

(declare-fun list!15587 (Conc!12775) List!42084)

(assert (=> d!1171261 (= (list!15586 (charsOf!4382 (_1!23757 (v!39323 lt!1380276)))) (list!15587 (c!685755 (charsOf!4382 (_1!23757 (v!39323 lt!1380276))))))))

(declare-fun bs!586970 () Bool)

(assert (= bs!586970 d!1171261))

(declare-fun m!4517593 () Bool)

(assert (=> bs!586970 m!4517593))

(assert (=> b!3948621 d!1171261))

(declare-fun d!1171263 () Bool)

(assert (=> d!1171263 (= (size!31454 (_1!23757 (v!39323 lt!1380276))) (size!31455 (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276)))))))

(declare-fun Unit!60488 () Unit!60486)

(assert (=> d!1171263 (= (lemmaCharactersSize!1217 (_1!23757 (v!39323 lt!1380276))) Unit!60488)))

(declare-fun bs!586971 () Bool)

(assert (= bs!586971 d!1171263))

(assert (=> bs!586971 m!4517447))

(assert (=> b!3948621 d!1171263))

(declare-fun d!1171265 () Bool)

(declare-fun res!1597735 () Bool)

(declare-fun e!2443675 () Bool)

(assert (=> d!1171265 (=> (not res!1597735) (not e!2443675))))

(declare-fun validRegex!5225 (Regex!11469) Bool)

(assert (=> d!1171265 (= res!1597735 (validRegex!5225 (regex!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))))))

(assert (=> d!1171265 (= (ruleValid!2506 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276)))) e!2443675)))

(declare-fun b!3948715 () Bool)

(declare-fun res!1597736 () Bool)

(assert (=> b!3948715 (=> (not res!1597736) (not e!2443675))))

(declare-fun nullable!4026 (Regex!11469) Bool)

(assert (=> b!3948715 (= res!1597736 (not (nullable!4026 (regex!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))))))

(declare-fun b!3948716 () Bool)

(assert (=> b!3948716 (= e!2443675 (not (= (tag!7424 (rule!9530 (_1!23757 (v!39323 lt!1380276)))) (String!47689 ""))))))

(assert (= (and d!1171265 res!1597735) b!3948715))

(assert (= (and b!3948715 res!1597736) b!3948716))

(declare-fun m!4517595 () Bool)

(assert (=> d!1171265 m!4517595))

(declare-fun m!4517597 () Bool)

(assert (=> b!3948715 m!4517597))

(assert (=> b!3948621 d!1171265))

(declare-fun d!1171267 () Bool)

(declare-fun lt!1380312 () BalanceConc!25144)

(assert (=> d!1171267 (= (list!15586 lt!1380312) (originalCharacters!7164 (_1!23757 (v!39323 lt!1380276))))))

(assert (=> d!1171267 (= lt!1380312 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))) (value!207708 (_1!23757 (v!39323 lt!1380276)))))))

(assert (=> d!1171267 (= (charsOf!4382 (_1!23757 (v!39323 lt!1380276))) lt!1380312)))

(declare-fun b_lambda!115511 () Bool)

(assert (=> (not b_lambda!115511) (not d!1171267)))

(declare-fun tb!237425 () Bool)

(declare-fun t!328245 () Bool)

(assert (=> (and b!3948617 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328245) tb!237425))

(declare-fun b!3948717 () Bool)

(declare-fun e!2443676 () Bool)

(declare-fun tp!1202497 () Bool)

(assert (=> b!3948717 (= e!2443676 (and (inv!56190 (c!685755 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))) (value!207708 (_1!23757 (v!39323 lt!1380276)))))) tp!1202497))))

(declare-fun result!287544 () Bool)

(assert (=> tb!237425 (= result!287544 (and (inv!56191 (dynLambda!17976 (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))) (value!207708 (_1!23757 (v!39323 lt!1380276))))) e!2443676))))

(assert (= tb!237425 b!3948717))

(declare-fun m!4517599 () Bool)

(assert (=> b!3948717 m!4517599))

(declare-fun m!4517601 () Bool)

(assert (=> tb!237425 m!4517601))

(assert (=> d!1171267 t!328245))

(declare-fun b_and!302339 () Bool)

(assert (= b_and!302333 (and (=> t!328245 result!287544) b_and!302339)))

(declare-fun t!328247 () Bool)

(declare-fun tb!237427 () Bool)

(assert (=> (and b!3948619 (= (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328247) tb!237427))

(declare-fun result!287546 () Bool)

(assert (= result!287546 result!287544))

(assert (=> d!1171267 t!328247))

(declare-fun b_and!302341 () Bool)

(assert (= b_and!302335 (and (=> t!328247 result!287546) b_and!302341)))

(declare-fun tb!237429 () Bool)

(declare-fun t!328249 () Bool)

(assert (=> (and b!3948622 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328249) tb!237429))

(declare-fun result!287548 () Bool)

(assert (= result!287548 result!287544))

(assert (=> d!1171267 t!328249))

(declare-fun b_and!302343 () Bool)

(assert (= b_and!302337 (and (=> t!328249 result!287548) b_and!302343)))

(declare-fun m!4517603 () Bool)

(assert (=> d!1171267 m!4517603))

(declare-fun m!4517605 () Bool)

(assert (=> d!1171267 m!4517605))

(assert (=> b!3948621 d!1171267))

(declare-fun d!1171269 () Bool)

(assert (=> d!1171269 (isPrefix!3653 lt!1380274 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))

(declare-fun lt!1380321 () Unit!60486)

(declare-fun choose!23563 (List!42084 List!42084) Unit!60486)

(assert (=> d!1171269 (= lt!1380321 (choose!23563 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))

(assert (=> d!1171269 (= (lemmaConcatTwoListThenFirstIsPrefix!2512 lt!1380274 (_2!23757 (v!39323 lt!1380276))) lt!1380321)))

(declare-fun bs!586972 () Bool)

(assert (= bs!586972 d!1171269))

(assert (=> bs!586972 m!4517473))

(assert (=> bs!586972 m!4517473))

(assert (=> bs!586972 m!4517487))

(declare-fun m!4517607 () Bool)

(assert (=> bs!586972 m!4517607))

(assert (=> b!3948621 d!1171269))

(declare-fun d!1171271 () Bool)

(assert (=> d!1171271 (ruleValid!2506 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276))))))

(declare-fun lt!1380324 () Unit!60486)

(declare-fun choose!23564 (LexerInterface!6153 Rule!12928 List!42086) Unit!60486)

(assert (=> d!1171271 (= lt!1380324 (choose!23564 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276))) rules!2768))))

(assert (=> d!1171271 (contains!8401 rules!2768 (rule!9530 (_1!23757 (v!39323 lt!1380276))))))

(assert (=> d!1171271 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1582 thiss!20629 (rule!9530 (_1!23757 (v!39323 lt!1380276))) rules!2768) lt!1380324)))

(declare-fun bs!586973 () Bool)

(assert (= bs!586973 d!1171271))

(assert (=> bs!586973 m!4517491))

(declare-fun m!4517609 () Bool)

(assert (=> bs!586973 m!4517609))

(declare-fun m!4517611 () Bool)

(assert (=> bs!586973 m!4517611))

(assert (=> b!3948621 d!1171271))

(declare-fun b!3948743 () Bool)

(declare-fun res!1597745 () Bool)

(declare-fun e!2443690 () Bool)

(assert (=> b!3948743 (=> (not res!1597745) (not e!2443690))))

(declare-fun lt!1380330 () List!42084)

(assert (=> b!3948743 (= res!1597745 (= (size!31455 lt!1380330) (+ (size!31455 lt!1380274) (size!31455 (_2!23757 (v!39323 lt!1380276))))))))

(declare-fun b!3948741 () Bool)

(declare-fun e!2443691 () List!42084)

(assert (=> b!3948741 (= e!2443691 (_2!23757 (v!39323 lt!1380276)))))

(declare-fun b!3948744 () Bool)

(assert (=> b!3948744 (= e!2443690 (or (not (= (_2!23757 (v!39323 lt!1380276)) Nil!41960)) (= lt!1380330 lt!1380274)))))

(declare-fun b!3948742 () Bool)

(assert (=> b!3948742 (= e!2443691 (Cons!41960 (h!47380 lt!1380274) (++!10886 (t!328229 lt!1380274) (_2!23757 (v!39323 lt!1380276)))))))

(declare-fun d!1171273 () Bool)

(assert (=> d!1171273 e!2443690))

(declare-fun res!1597744 () Bool)

(assert (=> d!1171273 (=> (not res!1597744) (not e!2443690))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6358 (List!42084) (InoxSet C!23124))

(assert (=> d!1171273 (= res!1597744 (= (content!6358 lt!1380330) ((_ map or) (content!6358 lt!1380274) (content!6358 (_2!23757 (v!39323 lt!1380276))))))))

(assert (=> d!1171273 (= lt!1380330 e!2443691)))

(declare-fun c!685783 () Bool)

(assert (=> d!1171273 (= c!685783 ((_ is Nil!41960) lt!1380274))))

(assert (=> d!1171273 (= (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))) lt!1380330)))

(assert (= (and d!1171273 c!685783) b!3948741))

(assert (= (and d!1171273 (not c!685783)) b!3948742))

(assert (= (and d!1171273 res!1597744) b!3948743))

(assert (= (and b!3948743 res!1597745) b!3948744))

(declare-fun m!4517625 () Bool)

(assert (=> b!3948743 m!4517625))

(assert (=> b!3948743 m!4517497))

(declare-fun m!4517627 () Bool)

(assert (=> b!3948743 m!4517627))

(declare-fun m!4517629 () Bool)

(assert (=> b!3948742 m!4517629))

(declare-fun m!4517631 () Bool)

(assert (=> d!1171273 m!4517631))

(declare-fun m!4517633 () Bool)

(assert (=> d!1171273 m!4517633))

(declare-fun m!4517635 () Bool)

(assert (=> d!1171273 m!4517635))

(assert (=> b!3948621 d!1171273))

(declare-fun b!3948755 () Bool)

(declare-fun e!2443698 () Bool)

(assert (=> b!3948755 (= e!2443698 (isPrefix!3653 (tail!6114 lt!1380274) (tail!6114 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))))

(declare-fun d!1171279 () Bool)

(declare-fun e!2443699 () Bool)

(assert (=> d!1171279 e!2443699))

(declare-fun res!1597757 () Bool)

(assert (=> d!1171279 (=> res!1597757 e!2443699)))

(declare-fun lt!1380333 () Bool)

(assert (=> d!1171279 (= res!1597757 (not lt!1380333))))

(declare-fun e!2443700 () Bool)

(assert (=> d!1171279 (= lt!1380333 e!2443700)))

(declare-fun res!1597755 () Bool)

(assert (=> d!1171279 (=> res!1597755 e!2443700)))

(assert (=> d!1171279 (= res!1597755 ((_ is Nil!41960) lt!1380274))))

(assert (=> d!1171279 (= (isPrefix!3653 lt!1380274 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276)))) lt!1380333)))

(declare-fun b!3948756 () Bool)

(assert (=> b!3948756 (= e!2443699 (>= (size!31455 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276)))) (size!31455 lt!1380274)))))

(declare-fun b!3948754 () Bool)

(declare-fun res!1597756 () Bool)

(assert (=> b!3948754 (=> (not res!1597756) (not e!2443698))))

(declare-fun head!8388 (List!42084) C!23124)

(assert (=> b!3948754 (= res!1597756 (= (head!8388 lt!1380274) (head!8388 (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))))

(declare-fun b!3948753 () Bool)

(assert (=> b!3948753 (= e!2443700 e!2443698)))

(declare-fun res!1597754 () Bool)

(assert (=> b!3948753 (=> (not res!1597754) (not e!2443698))))

(assert (=> b!3948753 (= res!1597754 (not ((_ is Nil!41960) (++!10886 lt!1380274 (_2!23757 (v!39323 lt!1380276))))))))

(assert (= (and d!1171279 (not res!1597755)) b!3948753))

(assert (= (and b!3948753 res!1597754) b!3948754))

(assert (= (and b!3948754 res!1597756) b!3948755))

(assert (= (and d!1171279 (not res!1597757)) b!3948756))

(declare-fun m!4517637 () Bool)

(assert (=> b!3948755 m!4517637))

(assert (=> b!3948755 m!4517473))

(declare-fun m!4517639 () Bool)

(assert (=> b!3948755 m!4517639))

(assert (=> b!3948755 m!4517637))

(assert (=> b!3948755 m!4517639))

(declare-fun m!4517641 () Bool)

(assert (=> b!3948755 m!4517641))

(assert (=> b!3948756 m!4517473))

(declare-fun m!4517643 () Bool)

(assert (=> b!3948756 m!4517643))

(assert (=> b!3948756 m!4517497))

(declare-fun m!4517645 () Bool)

(assert (=> b!3948754 m!4517645))

(assert (=> b!3948754 m!4517473))

(declare-fun m!4517647 () Bool)

(assert (=> b!3948754 m!4517647))

(assert (=> b!3948621 d!1171279))

(declare-fun b!3948783 () Bool)

(declare-fun e!2443719 () Bool)

(declare-fun e!2443717 () Bool)

(assert (=> b!3948783 (= e!2443719 e!2443717)))

(declare-fun res!1597769 () Bool)

(declare-fun lt!1380343 () tuple2!41248)

(assert (=> b!3948783 (= res!1597769 (< (size!31455 (_2!23758 lt!1380343)) (size!31455 suffix!1176)))))

(assert (=> b!3948783 (=> (not res!1597769) (not e!2443717))))

(declare-fun b!3948784 () Bool)

(assert (=> b!3948784 (= e!2443717 (not (isEmpty!25052 (_1!23758 lt!1380343))))))

(declare-fun b!3948785 () Bool)

(declare-fun e!2443718 () tuple2!41248)

(assert (=> b!3948785 (= e!2443718 (tuple2!41249 Nil!41961 suffix!1176))))

(declare-fun b!3948786 () Bool)

(assert (=> b!3948786 (= e!2443719 (= (_2!23758 lt!1380343) suffix!1176))))

(declare-fun d!1171283 () Bool)

(assert (=> d!1171283 e!2443719))

(declare-fun c!685790 () Bool)

(declare-fun size!31457 (List!42085) Int)

(assert (=> d!1171283 (= c!685790 (> (size!31457 (_1!23758 lt!1380343)) 0))))

(assert (=> d!1171283 (= lt!1380343 e!2443718)))

(declare-fun c!685789 () Bool)

(declare-fun lt!1380342 () Option!8984)

(assert (=> d!1171283 (= c!685789 ((_ is Some!8983) lt!1380342))))

(assert (=> d!1171283 (= lt!1380342 (maxPrefix!3457 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171283 (= (lexList!1921 thiss!20629 rules!2768 suffix!1176) lt!1380343)))

(declare-fun b!3948787 () Bool)

(declare-fun lt!1380341 () tuple2!41248)

(assert (=> b!3948787 (= e!2443718 (tuple2!41249 (Cons!41961 (_1!23757 (v!39323 lt!1380342)) (_1!23758 lt!1380341)) (_2!23758 lt!1380341)))))

(assert (=> b!3948787 (= lt!1380341 (lexList!1921 thiss!20629 rules!2768 (_2!23757 (v!39323 lt!1380342))))))

(assert (= (and d!1171283 c!685789) b!3948787))

(assert (= (and d!1171283 (not c!685789)) b!3948785))

(assert (= (and d!1171283 c!685790) b!3948783))

(assert (= (and d!1171283 (not c!685790)) b!3948786))

(assert (= (and b!3948783 res!1597769) b!3948784))

(declare-fun m!4517667 () Bool)

(assert (=> b!3948783 m!4517667))

(declare-fun m!4517669 () Bool)

(assert (=> b!3948783 m!4517669))

(declare-fun m!4517671 () Bool)

(assert (=> b!3948784 m!4517671))

(declare-fun m!4517673 () Bool)

(assert (=> d!1171283 m!4517673))

(declare-fun m!4517675 () Bool)

(assert (=> d!1171283 m!4517675))

(declare-fun m!4517677 () Bool)

(assert (=> b!3948787 m!4517677))

(assert (=> b!3948620 d!1171283))

(declare-fun b!3948788 () Bool)

(declare-fun e!2443722 () Bool)

(declare-fun e!2443720 () Bool)

(assert (=> b!3948788 (= e!2443722 e!2443720)))

(declare-fun res!1597770 () Bool)

(declare-fun lt!1380346 () tuple2!41248)

(assert (=> b!3948788 (= res!1597770 (< (size!31455 (_2!23758 lt!1380346)) (size!31455 lt!1380277)))))

(assert (=> b!3948788 (=> (not res!1597770) (not e!2443720))))

(declare-fun b!3948789 () Bool)

(assert (=> b!3948789 (= e!2443720 (not (isEmpty!25052 (_1!23758 lt!1380346))))))

(declare-fun b!3948790 () Bool)

(declare-fun e!2443721 () tuple2!41248)

(assert (=> b!3948790 (= e!2443721 (tuple2!41249 Nil!41961 lt!1380277))))

(declare-fun b!3948791 () Bool)

(assert (=> b!3948791 (= e!2443722 (= (_2!23758 lt!1380346) lt!1380277))))

(declare-fun d!1171291 () Bool)

(assert (=> d!1171291 e!2443722))

(declare-fun c!685792 () Bool)

(assert (=> d!1171291 (= c!685792 (> (size!31457 (_1!23758 lt!1380346)) 0))))

(assert (=> d!1171291 (= lt!1380346 e!2443721)))

(declare-fun c!685791 () Bool)

(declare-fun lt!1380345 () Option!8984)

(assert (=> d!1171291 (= c!685791 ((_ is Some!8983) lt!1380345))))

(assert (=> d!1171291 (= lt!1380345 (maxPrefix!3457 thiss!20629 rules!2768 lt!1380277))))

(assert (=> d!1171291 (= (lexList!1921 thiss!20629 rules!2768 lt!1380277) lt!1380346)))

(declare-fun b!3948792 () Bool)

(declare-fun lt!1380344 () tuple2!41248)

(assert (=> b!3948792 (= e!2443721 (tuple2!41249 (Cons!41961 (_1!23757 (v!39323 lt!1380345)) (_1!23758 lt!1380344)) (_2!23758 lt!1380344)))))

(assert (=> b!3948792 (= lt!1380344 (lexList!1921 thiss!20629 rules!2768 (_2!23757 (v!39323 lt!1380345))))))

(assert (= (and d!1171291 c!685791) b!3948792))

(assert (= (and d!1171291 (not c!685791)) b!3948790))

(assert (= (and d!1171291 c!685792) b!3948788))

(assert (= (and d!1171291 (not c!685792)) b!3948791))

(assert (= (and b!3948788 res!1597770) b!3948789))

(declare-fun m!4517679 () Bool)

(assert (=> b!3948788 m!4517679))

(assert (=> b!3948788 m!4517559))

(declare-fun m!4517681 () Bool)

(assert (=> b!3948789 m!4517681))

(declare-fun m!4517683 () Bool)

(assert (=> d!1171291 m!4517683))

(assert (=> d!1171291 m!4517453))

(declare-fun m!4517685 () Bool)

(assert (=> b!3948792 m!4517685))

(assert (=> b!3948618 d!1171291))

(declare-fun b!3948803 () Bool)

(declare-fun res!1597775 () Bool)

(declare-fun e!2443727 () Bool)

(assert (=> b!3948803 (=> (not res!1597775) (not e!2443727))))

(declare-fun lt!1380349 () List!42085)

(assert (=> b!3948803 (= res!1597775 (= (size!31457 lt!1380349) (+ (size!31457 prefixTokens!80) (size!31457 suffixTokens!72))))))

(declare-fun b!3948802 () Bool)

(declare-fun e!2443728 () List!42085)

(assert (=> b!3948802 (= e!2443728 (Cons!41961 (h!47381 prefixTokens!80) (++!10885 (t!328230 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3948804 () Bool)

(assert (=> b!3948804 (= e!2443727 (or (not (= suffixTokens!72 Nil!41961)) (= lt!1380349 prefixTokens!80)))))

(declare-fun d!1171293 () Bool)

(assert (=> d!1171293 e!2443727))

(declare-fun res!1597776 () Bool)

(assert (=> d!1171293 (=> (not res!1597776) (not e!2443727))))

(declare-fun content!6359 (List!42085) (InoxSet Token!12266))

(assert (=> d!1171293 (= res!1597776 (= (content!6359 lt!1380349) ((_ map or) (content!6359 prefixTokens!80) (content!6359 suffixTokens!72))))))

(assert (=> d!1171293 (= lt!1380349 e!2443728)))

(declare-fun c!685795 () Bool)

(assert (=> d!1171293 (= c!685795 ((_ is Nil!41961) prefixTokens!80))))

(assert (=> d!1171293 (= (++!10885 prefixTokens!80 suffixTokens!72) lt!1380349)))

(declare-fun b!3948801 () Bool)

(assert (=> b!3948801 (= e!2443728 suffixTokens!72)))

(assert (= (and d!1171293 c!685795) b!3948801))

(assert (= (and d!1171293 (not c!685795)) b!3948802))

(assert (= (and d!1171293 res!1597776) b!3948803))

(assert (= (and b!3948803 res!1597775) b!3948804))

(declare-fun m!4517687 () Bool)

(assert (=> b!3948803 m!4517687))

(declare-fun m!4517689 () Bool)

(assert (=> b!3948803 m!4517689))

(declare-fun m!4517691 () Bool)

(assert (=> b!3948803 m!4517691))

(declare-fun m!4517693 () Bool)

(assert (=> b!3948802 m!4517693))

(declare-fun m!4517695 () Bool)

(assert (=> d!1171293 m!4517695))

(declare-fun m!4517697 () Bool)

(assert (=> d!1171293 m!4517697))

(declare-fun m!4517699 () Bool)

(assert (=> d!1171293 m!4517699))

(assert (=> b!3948618 d!1171293))

(declare-fun b!3948807 () Bool)

(declare-fun res!1597778 () Bool)

(declare-fun e!2443729 () Bool)

(assert (=> b!3948807 (=> (not res!1597778) (not e!2443729))))

(declare-fun lt!1380350 () List!42084)

(assert (=> b!3948807 (= res!1597778 (= (size!31455 lt!1380350) (+ (size!31455 prefix!426) (size!31455 suffix!1176))))))

(declare-fun b!3948805 () Bool)

(declare-fun e!2443730 () List!42084)

(assert (=> b!3948805 (= e!2443730 suffix!1176)))

(declare-fun b!3948808 () Bool)

(assert (=> b!3948808 (= e!2443729 (or (not (= suffix!1176 Nil!41960)) (= lt!1380350 prefix!426)))))

(declare-fun b!3948806 () Bool)

(assert (=> b!3948806 (= e!2443730 (Cons!41960 (h!47380 prefix!426) (++!10886 (t!328229 prefix!426) suffix!1176)))))

(declare-fun d!1171295 () Bool)

(assert (=> d!1171295 e!2443729))

(declare-fun res!1597777 () Bool)

(assert (=> d!1171295 (=> (not res!1597777) (not e!2443729))))

(assert (=> d!1171295 (= res!1597777 (= (content!6358 lt!1380350) ((_ map or) (content!6358 prefix!426) (content!6358 suffix!1176))))))

(assert (=> d!1171295 (= lt!1380350 e!2443730)))

(declare-fun c!685796 () Bool)

(assert (=> d!1171295 (= c!685796 ((_ is Nil!41960) prefix!426))))

(assert (=> d!1171295 (= (++!10886 prefix!426 suffix!1176) lt!1380350)))

(assert (= (and d!1171295 c!685796) b!3948805))

(assert (= (and d!1171295 (not c!685796)) b!3948806))

(assert (= (and d!1171295 res!1597777) b!3948807))

(assert (= (and b!3948807 res!1597778) b!3948808))

(declare-fun m!4517701 () Bool)

(assert (=> b!3948807 m!4517701))

(declare-fun m!4517703 () Bool)

(assert (=> b!3948807 m!4517703))

(assert (=> b!3948807 m!4517669))

(declare-fun m!4517705 () Bool)

(assert (=> b!3948806 m!4517705))

(declare-fun m!4517707 () Bool)

(assert (=> d!1171295 m!4517707))

(declare-fun m!4517709 () Bool)

(assert (=> d!1171295 m!4517709))

(declare-fun m!4517711 () Bool)

(assert (=> d!1171295 m!4517711))

(assert (=> b!3948618 d!1171295))

(declare-fun d!1171297 () Bool)

(declare-fun res!1597781 () Bool)

(declare-fun e!2443733 () Bool)

(assert (=> d!1171297 (=> (not res!1597781) (not e!2443733))))

(declare-fun rulesValid!2565 (LexerInterface!6153 List!42086) Bool)

(assert (=> d!1171297 (= res!1597781 (rulesValid!2565 thiss!20629 rules!2768))))

(assert (=> d!1171297 (= (rulesInvariant!5496 thiss!20629 rules!2768) e!2443733)))

(declare-fun b!3948811 () Bool)

(declare-datatypes ((List!42088 0))(
  ( (Nil!41964) (Cons!41964 (h!47384 String!47688) (t!328329 List!42088)) )
))
(declare-fun noDuplicateTag!2566 (LexerInterface!6153 List!42086 List!42088) Bool)

(assert (=> b!3948811 (= e!2443733 (noDuplicateTag!2566 thiss!20629 rules!2768 Nil!41964))))

(assert (= (and d!1171297 res!1597781) b!3948811))

(declare-fun m!4517713 () Bool)

(assert (=> d!1171297 m!4517713))

(declare-fun m!4517715 () Bool)

(assert (=> b!3948811 m!4517715))

(assert (=> b!3948628 d!1171297))

(declare-fun d!1171299 () Bool)

(assert (=> d!1171299 (= (isEmpty!25052 prefixTokens!80) ((_ is Nil!41961) prefixTokens!80))))

(assert (=> b!3948607 d!1171299))

(declare-fun d!1171301 () Bool)

(declare-fun dynLambda!17978 (Int BalanceConc!25144) TokenValue!6794)

(assert (=> d!1171301 (= (apply!9795 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))) (seqFromList!4823 lt!1380274)) (dynLambda!17978 (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))) (seqFromList!4823 lt!1380274)))))

(declare-fun b_lambda!115515 () Bool)

(assert (=> (not b_lambda!115515) (not d!1171301)))

(declare-fun tb!237437 () Bool)

(declare-fun t!328257 () Bool)

(assert (=> (and b!3948617 (= (toValue!9040 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328257) tb!237437))

(declare-fun result!287558 () Bool)

(assert (=> tb!237437 (= result!287558 (inv!21 (dynLambda!17978 (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276))))) (seqFromList!4823 lt!1380274))))))

(declare-fun m!4517717 () Bool)

(assert (=> tb!237437 m!4517717))

(assert (=> d!1171301 t!328257))

(declare-fun b_and!302351 () Bool)

(assert (= b_and!302315 (and (=> t!328257 result!287558) b_and!302351)))

(declare-fun t!328259 () Bool)

(declare-fun tb!237439 () Bool)

(assert (=> (and b!3948619 (= (toValue!9040 (transformation!6564 (h!47382 rules!2768))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328259) tb!237439))

(declare-fun result!287562 () Bool)

(assert (= result!287562 result!287558))

(assert (=> d!1171301 t!328259))

(declare-fun b_and!302353 () Bool)

(assert (= b_and!302319 (and (=> t!328259 result!287562) b_and!302353)))

(declare-fun t!328261 () Bool)

(declare-fun tb!237441 () Bool)

(assert (=> (and b!3948622 (= (toValue!9040 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328261) tb!237441))

(declare-fun result!287564 () Bool)

(assert (= result!287564 result!287558))

(assert (=> d!1171301 t!328261))

(declare-fun b_and!302355 () Bool)

(assert (= b_and!302323 (and (=> t!328261 result!287564) b_and!302355)))

(assert (=> d!1171301 m!4517449))

(declare-fun m!4517719 () Bool)

(assert (=> d!1171301 m!4517719))

(assert (=> b!3948606 d!1171301))

(declare-fun d!1171303 () Bool)

(declare-fun fromListB!2231 (List!42084) BalanceConc!25144)

(assert (=> d!1171303 (= (seqFromList!4823 lt!1380274) (fromListB!2231 lt!1380274))))

(declare-fun bs!586974 () Bool)

(assert (= bs!586974 d!1171303))

(declare-fun m!4517721 () Bool)

(assert (=> bs!586974 m!4517721))

(assert (=> b!3948606 d!1171303))

(declare-fun d!1171305 () Bool)

(assert (=> d!1171305 (= (inv!56185 (tag!7424 (rule!9530 (h!47381 suffixTokens!72)))) (= (mod (str.len (value!207707 (tag!7424 (rule!9530 (h!47381 suffixTokens!72))))) 2) 0))))

(assert (=> b!3948616 d!1171305))

(declare-fun d!1171307 () Bool)

(declare-fun res!1597782 () Bool)

(declare-fun e!2443737 () Bool)

(assert (=> d!1171307 (=> (not res!1597782) (not e!2443737))))

(assert (=> d!1171307 (= res!1597782 (semiInverseModEq!2830 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toValue!9040 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))))))

(assert (=> d!1171307 (= (inv!56188 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) e!2443737)))

(declare-fun b!3948814 () Bool)

(assert (=> b!3948814 (= e!2443737 (equivClasses!2729 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toValue!9040 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))))))

(assert (= (and d!1171307 res!1597782) b!3948814))

(declare-fun m!4517723 () Bool)

(assert (=> d!1171307 m!4517723))

(declare-fun m!4517725 () Bool)

(assert (=> b!3948814 m!4517725))

(assert (=> b!3948616 d!1171307))

(declare-fun b!3948815 () Bool)

(declare-fun res!1597783 () Bool)

(declare-fun e!2443739 () Bool)

(assert (=> b!3948815 (=> res!1597783 e!2443739)))

(assert (=> b!3948815 (= res!1597783 (not ((_ is IntegerValue!20384) (value!207708 (h!47381 prefixTokens!80)))))))

(declare-fun e!2443738 () Bool)

(assert (=> b!3948815 (= e!2443738 e!2443739)))

(declare-fun b!3948816 () Bool)

(declare-fun e!2443740 () Bool)

(assert (=> b!3948816 (= e!2443740 e!2443738)))

(declare-fun c!685798 () Bool)

(assert (=> b!3948816 (= c!685798 ((_ is IntegerValue!20383) (value!207708 (h!47381 prefixTokens!80))))))

(declare-fun b!3948817 () Bool)

(assert (=> b!3948817 (= e!2443738 (inv!17 (value!207708 (h!47381 prefixTokens!80))))))

(declare-fun b!3948818 () Bool)

(assert (=> b!3948818 (= e!2443739 (inv!15 (value!207708 (h!47381 prefixTokens!80))))))

(declare-fun b!3948819 () Bool)

(assert (=> b!3948819 (= e!2443740 (inv!16 (value!207708 (h!47381 prefixTokens!80))))))

(declare-fun d!1171309 () Bool)

(declare-fun c!685797 () Bool)

(assert (=> d!1171309 (= c!685797 ((_ is IntegerValue!20382) (value!207708 (h!47381 prefixTokens!80))))))

(assert (=> d!1171309 (= (inv!21 (value!207708 (h!47381 prefixTokens!80))) e!2443740)))

(assert (= (and d!1171309 c!685797) b!3948819))

(assert (= (and d!1171309 (not c!685797)) b!3948816))

(assert (= (and b!3948816 c!685798) b!3948817))

(assert (= (and b!3948816 (not c!685798)) b!3948815))

(assert (= (and b!3948815 (not res!1597783)) b!3948818))

(declare-fun m!4517727 () Bool)

(assert (=> b!3948817 m!4517727))

(declare-fun m!4517729 () Bool)

(assert (=> b!3948818 m!4517729))

(declare-fun m!4517731 () Bool)

(assert (=> b!3948819 m!4517731))

(assert (=> b!3948627 d!1171309))

(declare-fun d!1171311 () Bool)

(assert (=> d!1171311 (= (isEmpty!25054 rules!2768) ((_ is Nil!41962) rules!2768))))

(assert (=> b!3948626 d!1171311))

(declare-fun d!1171313 () Bool)

(assert (=> d!1171313 (= (inv!56185 (tag!7424 (rule!9530 (h!47381 prefixTokens!80)))) (= (mod (str.len (value!207707 (tag!7424 (rule!9530 (h!47381 prefixTokens!80))))) 2) 0))))

(assert (=> b!3948605 d!1171313))

(declare-fun d!1171315 () Bool)

(declare-fun res!1597784 () Bool)

(declare-fun e!2443741 () Bool)

(assert (=> d!1171315 (=> (not res!1597784) (not e!2443741))))

(assert (=> d!1171315 (= res!1597784 (semiInverseModEq!2830 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toValue!9040 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))))))

(assert (=> d!1171315 (= (inv!56188 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) e!2443741)))

(declare-fun b!3948820 () Bool)

(assert (=> b!3948820 (= e!2443741 (equivClasses!2729 (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toValue!9040 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))))))

(assert (= (and d!1171315 res!1597784) b!3948820))

(declare-fun m!4517733 () Bool)

(assert (=> d!1171315 m!4517733))

(declare-fun m!4517735 () Bool)

(assert (=> b!3948820 m!4517735))

(assert (=> b!3948605 d!1171315))

(declare-fun b!3948825 () Bool)

(declare-fun e!2443744 () Bool)

(declare-fun tp!1202503 () Bool)

(assert (=> b!3948825 (= e!2443744 (and tp_is_empty!19909 tp!1202503))))

(assert (=> b!3948604 (= tp!1202478 e!2443744)))

(assert (= (and b!3948604 ((_ is Cons!41960) (originalCharacters!7164 (h!47381 suffixTokens!72)))) b!3948825))

(declare-fun b!3948837 () Bool)

(declare-fun e!2443747 () Bool)

(declare-fun tp!1202515 () Bool)

(declare-fun tp!1202516 () Bool)

(assert (=> b!3948837 (= e!2443747 (and tp!1202515 tp!1202516))))

(declare-fun b!3948836 () Bool)

(assert (=> b!3948836 (= e!2443747 tp_is_empty!19909)))

(declare-fun b!3948839 () Bool)

(declare-fun tp!1202517 () Bool)

(declare-fun tp!1202514 () Bool)

(assert (=> b!3948839 (= e!2443747 (and tp!1202517 tp!1202514))))

(declare-fun b!3948838 () Bool)

(declare-fun tp!1202518 () Bool)

(assert (=> b!3948838 (= e!2443747 tp!1202518)))

(assert (=> b!3948615 (= tp!1202489 e!2443747)))

(assert (= (and b!3948615 ((_ is ElementMatch!11469) (regex!6564 (h!47382 rules!2768)))) b!3948836))

(assert (= (and b!3948615 ((_ is Concat!18264) (regex!6564 (h!47382 rules!2768)))) b!3948837))

(assert (= (and b!3948615 ((_ is Star!11469) (regex!6564 (h!47382 rules!2768)))) b!3948838))

(assert (= (and b!3948615 ((_ is Union!11469) (regex!6564 (h!47382 rules!2768)))) b!3948839))

(declare-fun b!3948863 () Bool)

(declare-fun b_free!108353 () Bool)

(declare-fun b_next!109057 () Bool)

(assert (=> b!3948863 (= b_free!108353 (not b_next!109057))))

(declare-fun tb!237443 () Bool)

(declare-fun t!328263 () Bool)

(assert (=> (and b!3948863 (= (toValue!9040 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328263) tb!237443))

(declare-fun result!287572 () Bool)

(assert (= result!287572 result!287558))

(assert (=> d!1171301 t!328263))

(declare-fun b_and!302357 () Bool)

(declare-fun tp!1202531 () Bool)

(assert (=> b!3948863 (= tp!1202531 (and (=> t!328263 result!287572) b_and!302357))))

(declare-fun b_free!108355 () Bool)

(declare-fun b_next!109059 () Bool)

(assert (=> b!3948863 (= b_free!108355 (not b_next!109059))))

(declare-fun t!328265 () Bool)

(declare-fun tb!237445 () Bool)

(assert (=> (and b!3948863 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328265) tb!237445))

(declare-fun result!287574 () Bool)

(assert (= result!287574 result!287530))

(assert (=> b!3948651 t!328265))

(declare-fun tb!237447 () Bool)

(declare-fun t!328267 () Bool)

(assert (=> (and b!3948863 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328267) tb!237447))

(declare-fun result!287576 () Bool)

(assert (= result!287576 result!287538))

(assert (=> b!3948702 t!328267))

(declare-fun tb!237449 () Bool)

(declare-fun t!328269 () Bool)

(assert (=> (and b!3948863 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328269) tb!237449))

(declare-fun result!287578 () Bool)

(assert (= result!287578 result!287544))

(assert (=> d!1171267 t!328269))

(declare-fun b_and!302359 () Bool)

(declare-fun tp!1202530 () Bool)

(assert (=> b!3948863 (= tp!1202530 (and (=> t!328265 result!287574) (=> t!328267 result!287576) (=> t!328269 result!287578) b_and!302359))))

(declare-fun tp!1202532 () Bool)

(declare-fun e!2443771 () Bool)

(declare-fun e!2443769 () Bool)

(declare-fun b!3948861 () Bool)

(assert (=> b!3948861 (= e!2443769 (and (inv!21 (value!207708 (h!47381 (t!328230 prefixTokens!80)))) e!2443771 tp!1202532))))

(declare-fun tp!1202529 () Bool)

(declare-fun b!3948860 () Bool)

(declare-fun e!2443768 () Bool)

(assert (=> b!3948860 (= e!2443768 (and (inv!56189 (h!47381 (t!328230 prefixTokens!80))) e!2443769 tp!1202529))))

(declare-fun e!2443767 () Bool)

(assert (=> b!3948863 (= e!2443767 (and tp!1202531 tp!1202530))))

(assert (=> b!3948614 (= tp!1202483 e!2443768)))

(declare-fun b!3948862 () Bool)

(declare-fun tp!1202533 () Bool)

(assert (=> b!3948862 (= e!2443771 (and tp!1202533 (inv!56185 (tag!7424 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (inv!56188 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) e!2443767))))

(assert (= b!3948862 b!3948863))

(assert (= b!3948861 b!3948862))

(assert (= b!3948860 b!3948861))

(assert (= (and b!3948614 ((_ is Cons!41961) (t!328230 prefixTokens!80))) b!3948860))

(declare-fun m!4517737 () Bool)

(assert (=> b!3948861 m!4517737))

(declare-fun m!4517739 () Bool)

(assert (=> b!3948860 m!4517739))

(declare-fun m!4517741 () Bool)

(assert (=> b!3948862 m!4517741))

(declare-fun m!4517743 () Bool)

(assert (=> b!3948862 m!4517743))

(declare-fun b!3948872 () Bool)

(declare-fun e!2443772 () Bool)

(declare-fun tp!1202534 () Bool)

(assert (=> b!3948872 (= e!2443772 (and tp_is_empty!19909 tp!1202534))))

(assert (=> b!3948624 (= tp!1202492 e!2443772)))

(assert (= (and b!3948624 ((_ is Cons!41960) (t!328229 prefix!426))) b!3948872))

(declare-fun b!3948876 () Bool)

(declare-fun b_free!108357 () Bool)

(declare-fun b_next!109061 () Bool)

(assert (=> b!3948876 (= b_free!108357 (not b_next!109061))))

(declare-fun tb!237451 () Bool)

(declare-fun t!328271 () Bool)

(assert (=> (and b!3948876 (= (toValue!9040 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328271) tb!237451))

(declare-fun result!287580 () Bool)

(assert (= result!287580 result!287558))

(assert (=> d!1171301 t!328271))

(declare-fun b_and!302361 () Bool)

(declare-fun tp!1202537 () Bool)

(assert (=> b!3948876 (= tp!1202537 (and (=> t!328271 result!287580) b_and!302361))))

(declare-fun b_free!108359 () Bool)

(declare-fun b_next!109063 () Bool)

(assert (=> b!3948876 (= b_free!108359 (not b_next!109063))))

(declare-fun tb!237453 () Bool)

(declare-fun t!328273 () Bool)

(assert (=> (and b!3948876 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328273) tb!237453))

(declare-fun result!287582 () Bool)

(assert (= result!287582 result!287530))

(assert (=> b!3948651 t!328273))

(declare-fun t!328275 () Bool)

(declare-fun tb!237455 () Bool)

(assert (=> (and b!3948876 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328275) tb!237455))

(declare-fun result!287584 () Bool)

(assert (= result!287584 result!287538))

(assert (=> b!3948702 t!328275))

(declare-fun t!328277 () Bool)

(declare-fun tb!237457 () Bool)

(assert (=> (and b!3948876 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328277) tb!237457))

(declare-fun result!287586 () Bool)

(assert (= result!287586 result!287544))

(assert (=> d!1171267 t!328277))

(declare-fun b_and!302363 () Bool)

(declare-fun tp!1202536 () Bool)

(assert (=> b!3948876 (= tp!1202536 (and (=> t!328273 result!287582) (=> t!328275 result!287584) (=> t!328277 result!287586) b_and!302363))))

(declare-fun e!2443776 () Bool)

(declare-fun b!3948874 () Bool)

(declare-fun tp!1202538 () Bool)

(declare-fun e!2443778 () Bool)

(assert (=> b!3948874 (= e!2443776 (and (inv!21 (value!207708 (h!47381 (t!328230 suffixTokens!72)))) e!2443778 tp!1202538))))

(declare-fun b!3948873 () Bool)

(declare-fun tp!1202535 () Bool)

(declare-fun e!2443775 () Bool)

(assert (=> b!3948873 (= e!2443775 (and (inv!56189 (h!47381 (t!328230 suffixTokens!72))) e!2443776 tp!1202535))))

(declare-fun e!2443774 () Bool)

(assert (=> b!3948876 (= e!2443774 (and tp!1202537 tp!1202536))))

(assert (=> b!3948623 (= tp!1202477 e!2443775)))

(declare-fun tp!1202539 () Bool)

(declare-fun b!3948875 () Bool)

(assert (=> b!3948875 (= e!2443778 (and tp!1202539 (inv!56185 (tag!7424 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (inv!56188 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) e!2443774))))

(assert (= b!3948875 b!3948876))

(assert (= b!3948874 b!3948875))

(assert (= b!3948873 b!3948874))

(assert (= (and b!3948623 ((_ is Cons!41961) (t!328230 suffixTokens!72))) b!3948873))

(declare-fun m!4517745 () Bool)

(assert (=> b!3948874 m!4517745))

(declare-fun m!4517747 () Bool)

(assert (=> b!3948873 m!4517747))

(declare-fun m!4517749 () Bool)

(assert (=> b!3948875 m!4517749))

(declare-fun m!4517751 () Bool)

(assert (=> b!3948875 m!4517751))

(declare-fun b!3948887 () Bool)

(declare-fun b_free!108361 () Bool)

(declare-fun b_next!109065 () Bool)

(assert (=> b!3948887 (= b_free!108361 (not b_next!109065))))

(declare-fun t!328279 () Bool)

(declare-fun tb!237459 () Bool)

(assert (=> (and b!3948887 (= (toValue!9040 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toValue!9040 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328279) tb!237459))

(declare-fun result!287590 () Bool)

(assert (= result!287590 result!287558))

(assert (=> d!1171301 t!328279))

(declare-fun tp!1202548 () Bool)

(declare-fun b_and!302365 () Bool)

(assert (=> b!3948887 (= tp!1202548 (and (=> t!328279 result!287590) b_and!302365))))

(declare-fun b_free!108363 () Bool)

(declare-fun b_next!109067 () Bool)

(assert (=> b!3948887 (= b_free!108363 (not b_next!109067))))

(declare-fun tb!237461 () Bool)

(declare-fun t!328281 () Bool)

(assert (=> (and b!3948887 (= (toChars!8899 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80))))) t!328281) tb!237461))

(declare-fun result!287592 () Bool)

(assert (= result!287592 result!287530))

(assert (=> b!3948651 t!328281))

(declare-fun tb!237463 () Bool)

(declare-fun t!328283 () Bool)

(assert (=> (and b!3948887 (= (toChars!8899 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72))))) t!328283) tb!237463))

(declare-fun result!287594 () Bool)

(assert (= result!287594 result!287538))

(assert (=> b!3948702 t!328283))

(declare-fun tb!237465 () Bool)

(declare-fun t!328285 () Bool)

(assert (=> (and b!3948887 (= (toChars!8899 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toChars!8899 (transformation!6564 (rule!9530 (_1!23757 (v!39323 lt!1380276)))))) t!328285) tb!237465))

(declare-fun result!287596 () Bool)

(assert (= result!287596 result!287544))

(assert (=> d!1171267 t!328285))

(declare-fun b_and!302367 () Bool)

(declare-fun tp!1202550 () Bool)

(assert (=> b!3948887 (= tp!1202550 (and (=> t!328281 result!287592) (=> t!328283 result!287594) (=> t!328285 result!287596) b_and!302367))))

(declare-fun e!2443789 () Bool)

(assert (=> b!3948887 (= e!2443789 (and tp!1202548 tp!1202550))))

(declare-fun tp!1202551 () Bool)

(declare-fun e!2443790 () Bool)

(declare-fun b!3948886 () Bool)

(assert (=> b!3948886 (= e!2443790 (and tp!1202551 (inv!56185 (tag!7424 (h!47382 (t!328231 rules!2768)))) (inv!56188 (transformation!6564 (h!47382 (t!328231 rules!2768)))) e!2443789))))

(declare-fun b!3948885 () Bool)

(declare-fun e!2443787 () Bool)

(declare-fun tp!1202549 () Bool)

(assert (=> b!3948885 (= e!2443787 (and e!2443790 tp!1202549))))

(assert (=> b!3948610 (= tp!1202480 e!2443787)))

(assert (= b!3948886 b!3948887))

(assert (= b!3948885 b!3948886))

(assert (= (and b!3948610 ((_ is Cons!41962) (t!328231 rules!2768))) b!3948885))

(declare-fun m!4517753 () Bool)

(assert (=> b!3948886 m!4517753))

(declare-fun m!4517755 () Bool)

(assert (=> b!3948886 m!4517755))

(declare-fun b!3948888 () Bool)

(declare-fun e!2443791 () Bool)

(declare-fun tp!1202552 () Bool)

(assert (=> b!3948888 (= e!2443791 (and tp_is_empty!19909 tp!1202552))))

(assert (=> b!3948609 (= tp!1202476 e!2443791)))

(assert (= (and b!3948609 ((_ is Cons!41960) (t!328229 suffixResult!91))) b!3948888))

(declare-fun b!3948889 () Bool)

(declare-fun e!2443792 () Bool)

(declare-fun tp!1202553 () Bool)

(assert (=> b!3948889 (= e!2443792 (and tp_is_empty!19909 tp!1202553))))

(assert (=> b!3948608 (= tp!1202482 e!2443792)))

(assert (= (and b!3948608 ((_ is Cons!41960) (t!328229 suffix!1176))) b!3948889))

(declare-fun b!3948891 () Bool)

(declare-fun e!2443793 () Bool)

(declare-fun tp!1202555 () Bool)

(declare-fun tp!1202556 () Bool)

(assert (=> b!3948891 (= e!2443793 (and tp!1202555 tp!1202556))))

(declare-fun b!3948890 () Bool)

(assert (=> b!3948890 (= e!2443793 tp_is_empty!19909)))

(declare-fun b!3948893 () Bool)

(declare-fun tp!1202557 () Bool)

(declare-fun tp!1202554 () Bool)

(assert (=> b!3948893 (= e!2443793 (and tp!1202557 tp!1202554))))

(declare-fun b!3948892 () Bool)

(declare-fun tp!1202558 () Bool)

(assert (=> b!3948892 (= e!2443793 tp!1202558)))

(assert (=> b!3948616 (= tp!1202484 e!2443793)))

(assert (= (and b!3948616 ((_ is ElementMatch!11469) (regex!6564 (rule!9530 (h!47381 suffixTokens!72))))) b!3948890))

(assert (= (and b!3948616 ((_ is Concat!18264) (regex!6564 (rule!9530 (h!47381 suffixTokens!72))))) b!3948891))

(assert (= (and b!3948616 ((_ is Star!11469) (regex!6564 (rule!9530 (h!47381 suffixTokens!72))))) b!3948892))

(assert (= (and b!3948616 ((_ is Union!11469) (regex!6564 (rule!9530 (h!47381 suffixTokens!72))))) b!3948893))

(declare-fun b!3948894 () Bool)

(declare-fun e!2443794 () Bool)

(declare-fun tp!1202559 () Bool)

(assert (=> b!3948894 (= e!2443794 (and tp_is_empty!19909 tp!1202559))))

(assert (=> b!3948627 (= tp!1202481 e!2443794)))

(assert (= (and b!3948627 ((_ is Cons!41960) (originalCharacters!7164 (h!47381 prefixTokens!80)))) b!3948894))

(declare-fun b!3948905 () Bool)

(declare-fun e!2443798 () Bool)

(declare-fun tp!1202561 () Bool)

(declare-fun tp!1202562 () Bool)

(assert (=> b!3948905 (= e!2443798 (and tp!1202561 tp!1202562))))

(declare-fun b!3948904 () Bool)

(assert (=> b!3948904 (= e!2443798 tp_is_empty!19909)))

(declare-fun b!3948907 () Bool)

(declare-fun tp!1202563 () Bool)

(declare-fun tp!1202560 () Bool)

(assert (=> b!3948907 (= e!2443798 (and tp!1202563 tp!1202560))))

(declare-fun b!3948906 () Bool)

(declare-fun tp!1202564 () Bool)

(assert (=> b!3948906 (= e!2443798 tp!1202564)))

(assert (=> b!3948605 (= tp!1202488 e!2443798)))

(assert (= (and b!3948605 ((_ is ElementMatch!11469) (regex!6564 (rule!9530 (h!47381 prefixTokens!80))))) b!3948904))

(assert (= (and b!3948605 ((_ is Concat!18264) (regex!6564 (rule!9530 (h!47381 prefixTokens!80))))) b!3948905))

(assert (= (and b!3948605 ((_ is Star!11469) (regex!6564 (rule!9530 (h!47381 prefixTokens!80))))) b!3948906))

(assert (= (and b!3948605 ((_ is Union!11469) (regex!6564 (rule!9530 (h!47381 prefixTokens!80))))) b!3948907))

(declare-fun b_lambda!115517 () Bool)

(assert (= b_lambda!115507 (or (and b!3948887 b_free!108363 (= (toChars!8899 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))))) (and b!3948622 b_free!108351 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))))) (and b!3948617 b_free!108343) (and b!3948619 b_free!108347 (= (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))))) (and b!3948863 b_free!108355 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))))) (and b!3948876 b_free!108359 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))))) b_lambda!115517)))

(declare-fun b_lambda!115519 () Bool)

(assert (= b_lambda!115509 (or (and b!3948619 b_free!108347 (= (toChars!8899 (transformation!6564 (h!47382 rules!2768))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))))) (and b!3948876 b_free!108359 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 suffixTokens!72))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))))) (and b!3948622 b_free!108351) (and b!3948617 b_free!108343 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 prefixTokens!80)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))))) (and b!3948887 b_free!108363 (= (toChars!8899 (transformation!6564 (h!47382 (t!328231 rules!2768)))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))))) (and b!3948863 b_free!108355 (= (toChars!8899 (transformation!6564 (rule!9530 (h!47381 (t!328230 prefixTokens!80))))) (toChars!8899 (transformation!6564 (rule!9530 (h!47381 suffixTokens!72)))))) b_lambda!115519)))

(check-sat (not tb!237425) (not d!1171261) (not b!3948709) (not b!3948641) (not b!3948717) (not b!3948861) (not d!1171253) (not b_next!109067) (not b!3948688) b_and!302343 (not b!3948814) (not b!3948756) (not b!3948702) (not b!3948837) (not d!1171271) (not b!3948818) (not b!3948820) (not b_next!109065) (not d!1171259) (not d!1171265) (not b_next!109045) (not d!1171257) (not b!3948873) (not b!3948819) (not b_next!109061) (not b_next!109053) (not b_lambda!115515) b_and!302353 (not b_lambda!115517) (not d!1171291) (not b!3948701) (not b!3948651) (not b!3948894) (not b_next!109063) (not b!3948906) b_and!302359 (not b!3948642) (not b!3948807) (not b!3948646) (not tb!237419) (not b_next!109049) (not d!1171283) (not b!3948891) (not b!3948860) (not b!3948811) (not b!3948691) (not bm!285186) (not b_lambda!115519) b_and!302363 (not b!3948787) (not d!1171307) (not tb!237437) (not b!3948803) (not d!1171239) (not d!1171295) (not b!3948825) (not b!3948693) (not d!1171293) (not d!1171269) (not b!3948657) (not d!1171267) b_and!302339 b_and!302367 (not b!3948789) (not b!3948689) (not b!3948792) (not b!3948889) (not b!3948885) (not b!3948699) (not b!3948743) (not b!3948685) b_and!302361 (not b!3948703) (not b!3948783) (not b!3948755) (not b_next!109055) (not d!1171315) (not b!3948742) (not b!3948643) (not b!3948888) (not b_lambda!115511) (not b!3948690) (not b!3948687) tp_is_empty!19909 (not b_next!109047) (not b!3948784) (not b!3948905) (not d!1171241) (not b!3948862) (not b_next!109057) (not b_next!109059) b_and!302355 (not b!3948838) (not b!3948754) (not d!1171273) b_and!302357 (not b!3948715) (not b!3948806) (not b!3948886) (not b!3948704) (not b!3948907) (not d!1171263) (not d!1171303) (not b!3948839) (not tb!237413) (not d!1171237) (not b!3948802) (not b!3948652) (not b!3948874) b_and!302365 (not b!3948817) (not d!1171297) (not b!3948893) (not b!3948686) (not b!3948788) b_and!302341 (not b!3948892) (not b!3948872) (not b!3948875) b_and!302351 (not b_next!109051))
(check-sat (not b_next!109067) b_and!302343 (not b_next!109065) (not b_next!109045) b_and!302353 (not b_next!109063) b_and!302359 (not b_next!109049) b_and!302363 b_and!302361 (not b_next!109055) (not b_next!109047) b_and!302357 b_and!302365 (not b_next!109061) (not b_next!109053) b_and!302339 b_and!302367 (not b_next!109057) (not b_next!109059) b_and!302355 b_and!302341 b_and!302351 (not b_next!109051))
