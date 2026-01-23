; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381492 () Bool)

(assert start!381492)

(declare-fun b!4045387 () Bool)

(declare-fun b_free!112617 () Bool)

(declare-fun b_next!113321 () Bool)

(assert (=> b!4045387 (= b_free!112617 (not b_next!113321))))

(declare-fun tp!1227611 () Bool)

(declare-fun b_and!311075 () Bool)

(assert (=> b!4045387 (= tp!1227611 b_and!311075)))

(declare-fun b_free!112619 () Bool)

(declare-fun b_next!113323 () Bool)

(assert (=> b!4045387 (= b_free!112619 (not b_next!113323))))

(declare-fun tp!1227610 () Bool)

(declare-fun b_and!311077 () Bool)

(assert (=> b!4045387 (= tp!1227610 b_and!311077)))

(declare-fun b!4045357 () Bool)

(declare-fun b_free!112621 () Bool)

(declare-fun b_next!113325 () Bool)

(assert (=> b!4045357 (= b_free!112621 (not b_next!113325))))

(declare-fun tp!1227618 () Bool)

(declare-fun b_and!311079 () Bool)

(assert (=> b!4045357 (= tp!1227618 b_and!311079)))

(declare-fun b_free!112623 () Bool)

(declare-fun b_next!113327 () Bool)

(assert (=> b!4045357 (= b_free!112623 (not b_next!113327))))

(declare-fun tp!1227621 () Bool)

(declare-fun b_and!311081 () Bool)

(assert (=> b!4045357 (= tp!1227621 b_and!311081)))

(declare-fun b!4045353 () Bool)

(declare-fun e!2510041 () Bool)

(declare-fun e!2510020 () Bool)

(assert (=> b!4045353 (= e!2510041 e!2510020)))

(declare-fun res!1647874 () Bool)

(assert (=> b!4045353 (=> res!1647874 e!2510020)))

(declare-datatypes ((C!23856 0))(
  ( (C!23857 (val!14022 Int)) )
))
(declare-datatypes ((List!43393 0))(
  ( (Nil!43269) (Cons!43269 (h!48689 C!23856) (t!335490 List!43393)) )
))
(declare-fun lt!1440600 () List!43393)

(declare-fun prefix!494 () List!43393)

(assert (=> b!4045353 (= res!1647874 (not (= lt!1440600 prefix!494)))))

(declare-fun lt!1440584 () List!43393)

(declare-fun lt!1440604 () List!43393)

(declare-fun ++!11332 (List!43393 List!43393) List!43393)

(assert (=> b!4045353 (= lt!1440600 (++!11332 lt!1440584 lt!1440604))))

(declare-fun getSuffix!2434 (List!43393 List!43393) List!43393)

(assert (=> b!4045353 (= lt!1440604 (getSuffix!2434 prefix!494 lt!1440584))))

(declare-fun isPrefix!4017 (List!43393 List!43393) Bool)

(assert (=> b!4045353 (isPrefix!4017 lt!1440584 prefix!494)))

(declare-datatypes ((Unit!62514 0))(
  ( (Unit!62515) )
))
(declare-fun lt!1440619 () Unit!62514)

(declare-fun lt!1440628 () List!43393)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!581 (List!43393 List!43393 List!43393) Unit!62514)

(assert (=> b!4045353 (= lt!1440619 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!581 prefix!494 lt!1440584 lt!1440628))))

(declare-fun b!4045354 () Bool)

(declare-fun res!1647859 () Bool)

(declare-fun e!2510034 () Bool)

(assert (=> b!4045354 (=> res!1647859 e!2510034)))

(declare-datatypes ((IArray!26287 0))(
  ( (IArray!26288 (innerList!13201 List!43393)) )
))
(declare-datatypes ((Conc!13141 0))(
  ( (Node!13141 (left!32588 Conc!13141) (right!32918 Conc!13141) (csize!26512 Int) (cheight!13352 Int)) (Leaf!20313 (xs!16447 IArray!26287) (csize!26513 Int)) (Empty!13141) )
))
(declare-datatypes ((BalanceConc!25876 0))(
  ( (BalanceConc!25877 (c!698878 Conc!13141)) )
))
(declare-datatypes ((List!43394 0))(
  ( (Nil!43270) (Cons!43270 (h!48690 (_ BitVec 16)) (t!335491 List!43394)) )
))
(declare-datatypes ((Regex!11835 0))(
  ( (ElementMatch!11835 (c!698879 C!23856)) (Concat!18995 (regOne!24182 Regex!11835) (regTwo!24182 Regex!11835)) (EmptyExpr!11835) (Star!11835 (reg!12164 Regex!11835)) (EmptyLang!11835) (Union!11835 (regOne!24183 Regex!11835) (regTwo!24183 Regex!11835)) )
))
(declare-datatypes ((String!49517 0))(
  ( (String!49518 (value!218113 String)) )
))
(declare-datatypes ((TokenValue!7160 0))(
  ( (FloatLiteralValue!14320 (text!50565 List!43394)) (TokenValueExt!7159 (__x!26537 Int)) (Broken!35800 (value!218114 List!43394)) (Object!7283) (End!7160) (Def!7160) (Underscore!7160) (Match!7160) (Else!7160) (Error!7160) (Case!7160) (If!7160) (Extends!7160) (Abstract!7160) (Class!7160) (Val!7160) (DelimiterValue!14320 (del!7220 List!43394)) (KeywordValue!7166 (value!218115 List!43394)) (CommentValue!14320 (value!218116 List!43394)) (WhitespaceValue!14320 (value!218117 List!43394)) (IndentationValue!7160 (value!218118 List!43394)) (String!49519) (Int32!7160) (Broken!35801 (value!218119 List!43394)) (Boolean!7161) (Unit!62516) (OperatorValue!7163 (op!7220 List!43394)) (IdentifierValue!14320 (value!218120 List!43394)) (IdentifierValue!14321 (value!218121 List!43394)) (WhitespaceValue!14321 (value!218122 List!43394)) (True!14320) (False!14320) (Broken!35802 (value!218123 List!43394)) (Broken!35803 (value!218124 List!43394)) (True!14321) (RightBrace!7160) (RightBracket!7160) (Colon!7160) (Null!7160) (Comma!7160) (LeftBracket!7160) (False!14321) (LeftBrace!7160) (ImaginaryLiteralValue!7160 (text!50566 List!43394)) (StringLiteralValue!21480 (value!218125 List!43394)) (EOFValue!7160 (value!218126 List!43394)) (IdentValue!7160 (value!218127 List!43394)) (DelimiterValue!14321 (value!218128 List!43394)) (DedentValue!7160 (value!218129 List!43394)) (NewLineValue!7160 (value!218130 List!43394)) (IntegerValue!21480 (value!218131 (_ BitVec 32)) (text!50567 List!43394)) (IntegerValue!21481 (value!218132 Int) (text!50568 List!43394)) (Times!7160) (Or!7160) (Equal!7160) (Minus!7160) (Broken!35804 (value!218133 List!43394)) (And!7160) (Div!7160) (LessEqual!7160) (Mod!7160) (Concat!18996) (Not!7160) (Plus!7160) (SpaceValue!7160 (value!218134 List!43394)) (IntegerValue!21482 (value!218135 Int) (text!50569 List!43394)) (StringLiteralValue!21481 (text!50570 List!43394)) (FloatLiteralValue!14321 (text!50571 List!43394)) (BytesLiteralValue!7160 (value!218136 List!43394)) (CommentValue!14321 (value!218137 List!43394)) (StringLiteralValue!21482 (value!218138 List!43394)) (ErrorTokenValue!7160 (msg!7221 List!43394)) )
))
(declare-datatypes ((TokenValueInjection!13748 0))(
  ( (TokenValueInjection!13749 (toValue!9478 Int) (toChars!9337 Int)) )
))
(declare-datatypes ((Rule!13660 0))(
  ( (Rule!13661 (regex!6930 Regex!11835) (tag!7790 String!49517) (isSeparator!6930 Bool) (transformation!6930 TokenValueInjection!13748)) )
))
(declare-datatypes ((List!43395 0))(
  ( (Nil!43271) (Cons!43271 (h!48691 Rule!13660) (t!335492 List!43395)) )
))
(declare-fun rules!2999 () List!43395)

(declare-datatypes ((Token!12998 0))(
  ( (Token!12999 (value!218139 TokenValue!7160) (rule!10006 Rule!13660) (size!32349 Int) (originalCharacters!7530 List!43393)) )
))
(declare-fun token!484 () Token!12998)

(declare-fun contains!8600 (List!43395 Rule!13660) Bool)

(assert (=> b!4045354 (= res!1647859 (not (contains!8600 rules!2999 (rule!10006 token!484))))))

(declare-fun b!4045355 () Bool)

(declare-fun e!2510037 () Bool)

(declare-fun e!2510022 () Bool)

(assert (=> b!4045355 (= e!2510037 (not e!2510022))))

(declare-fun res!1647869 () Bool)

(assert (=> b!4045355 (=> res!1647869 e!2510022)))

(declare-fun lt!1440589 () List!43393)

(assert (=> b!4045355 (= res!1647869 (not (= lt!1440589 lt!1440628)))))

(declare-fun suffixResult!105 () List!43393)

(assert (=> b!4045355 (= lt!1440589 (++!11332 lt!1440584 suffixResult!105))))

(declare-fun lt!1440590 () Unit!62514)

(declare-fun lemmaInv!1139 (TokenValueInjection!13748) Unit!62514)

(assert (=> b!4045355 (= lt!1440590 (lemmaInv!1139 (transformation!6930 (rule!10006 token!484))))))

(declare-datatypes ((LexerInterface!6519 0))(
  ( (LexerInterfaceExt!6516 (__x!26538 Int)) (Lexer!6517) )
))
(declare-fun thiss!21717 () LexerInterface!6519)

(declare-fun ruleValid!2860 (LexerInterface!6519 Rule!13660) Bool)

(assert (=> b!4045355 (ruleValid!2860 thiss!21717 (rule!10006 token!484))))

(declare-fun lt!1440613 () Unit!62514)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1930 (LexerInterface!6519 Rule!13660 List!43395) Unit!62514)

(assert (=> b!4045355 (= lt!1440613 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1930 thiss!21717 (rule!10006 token!484) rules!2999))))

(declare-fun b!4045356 () Bool)

(declare-fun res!1647876 () Bool)

(declare-fun e!2510035 () Bool)

(assert (=> b!4045356 (=> (not res!1647876) (not e!2510035))))

(declare-fun newSuffix!27 () List!43393)

(declare-fun suffix!1299 () List!43393)

(assert (=> b!4045356 (= res!1647876 (isPrefix!4017 newSuffix!27 suffix!1299))))

(declare-fun e!2510026 () Bool)

(assert (=> b!4045357 (= e!2510026 (and tp!1227618 tp!1227621))))

(declare-fun b!4045358 () Bool)

(declare-fun res!1647870 () Bool)

(assert (=> b!4045358 (=> (not res!1647870) (not e!2510035))))

(declare-fun isEmpty!25823 (List!43395) Bool)

(assert (=> b!4045358 (= res!1647870 (not (isEmpty!25823 rules!2999)))))

(declare-fun b!4045359 () Bool)

(declare-fun e!2510039 () Bool)

(declare-fun tp_is_empty!20641 () Bool)

(declare-fun tp!1227613 () Bool)

(assert (=> b!4045359 (= e!2510039 (and tp_is_empty!20641 tp!1227613))))

(declare-fun b!4045360 () Bool)

(declare-fun e!2510045 () Bool)

(declare-fun e!2510042 () Bool)

(assert (=> b!4045360 (= e!2510045 e!2510042)))

(declare-fun res!1647862 () Bool)

(assert (=> b!4045360 (=> res!1647862 e!2510042)))

(declare-fun lt!1440630 () List!43393)

(declare-fun lt!1440597 () List!43393)

(assert (=> b!4045360 (= res!1647862 (not (= lt!1440630 lt!1440597)))))

(declare-fun lt!1440607 () List!43393)

(declare-fun lt!1440636 () List!43393)

(assert (=> b!4045360 (= lt!1440630 (++!11332 lt!1440607 lt!1440636))))

(assert (=> b!4045360 (= lt!1440636 (getSuffix!2434 lt!1440597 lt!1440607))))

(declare-fun b!4045361 () Bool)

(declare-fun e!2510040 () Bool)

(declare-fun e!2510043 () Bool)

(assert (=> b!4045361 (= e!2510040 e!2510043)))

(declare-fun res!1647868 () Bool)

(assert (=> b!4045361 (=> res!1647868 e!2510043)))

(declare-datatypes ((tuple2!42346 0))(
  ( (tuple2!42347 (_1!24307 Token!12998) (_2!24307 List!43393)) )
))
(declare-datatypes ((Option!9344 0))(
  ( (None!9343) (Some!9343 (v!39747 tuple2!42346)) )
))
(declare-fun lt!1440583 () Option!9344)

(declare-fun lt!1440622 () Option!9344)

(assert (=> b!4045361 (= res!1647868 (not (= lt!1440583 (Some!9343 (v!39747 lt!1440622)))))))

(declare-fun newSuffixResult!27 () List!43393)

(assert (=> b!4045361 (isPrefix!4017 lt!1440607 (++!11332 lt!1440607 newSuffixResult!27))))

(declare-fun lt!1440632 () Unit!62514)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2852 (List!43393 List!43393) Unit!62514)

(assert (=> b!4045361 (= lt!1440632 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440607 newSuffixResult!27))))

(declare-fun lt!1440594 () List!43393)

(assert (=> b!4045361 (isPrefix!4017 lt!1440607 lt!1440594)))

(assert (=> b!4045361 (= lt!1440594 (++!11332 lt!1440607 (_2!24307 (v!39747 lt!1440622))))))

(declare-fun lt!1440606 () Unit!62514)

(assert (=> b!4045361 (= lt!1440606 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440607 (_2!24307 (v!39747 lt!1440622))))))

(declare-fun lt!1440637 () Int)

(declare-fun lt!1440599 () TokenValue!7160)

(assert (=> b!4045361 (= lt!1440583 (Some!9343 (tuple2!42347 (Token!12999 lt!1440599 (rule!10006 (_1!24307 (v!39747 lt!1440622))) lt!1440637 lt!1440607) (_2!24307 (v!39747 lt!1440622)))))))

(declare-fun maxPrefixOneRule!2829 (LexerInterface!6519 Rule!13660 List!43393) Option!9344)

(assert (=> b!4045361 (= lt!1440583 (maxPrefixOneRule!2829 thiss!21717 (rule!10006 (_1!24307 (v!39747 lt!1440622))) lt!1440597))))

(declare-fun size!32350 (List!43393) Int)

(assert (=> b!4045361 (= lt!1440637 (size!32350 lt!1440607))))

(declare-fun apply!10119 (TokenValueInjection!13748 BalanceConc!25876) TokenValue!7160)

(declare-fun seqFromList!5147 (List!43393) BalanceConc!25876)

(assert (=> b!4045361 (= lt!1440599 (apply!10119 (transformation!6930 (rule!10006 (_1!24307 (v!39747 lt!1440622)))) (seqFromList!5147 lt!1440607)))))

(declare-fun lt!1440623 () Unit!62514)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1635 (LexerInterface!6519 List!43395 List!43393 List!43393 List!43393 Rule!13660) Unit!62514)

(assert (=> b!4045361 (= lt!1440623 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1635 thiss!21717 rules!2999 lt!1440607 lt!1440597 (_2!24307 (v!39747 lt!1440622)) (rule!10006 (_1!24307 (v!39747 lt!1440622)))))))

(declare-fun list!16116 (BalanceConc!25876) List!43393)

(declare-fun charsOf!4746 (Token!12998) BalanceConc!25876)

(assert (=> b!4045361 (= lt!1440607 (list!16116 (charsOf!4746 (_1!24307 (v!39747 lt!1440622)))))))

(declare-fun lt!1440591 () Unit!62514)

(assert (=> b!4045361 (= lt!1440591 (lemmaInv!1139 (transformation!6930 (rule!10006 (_1!24307 (v!39747 lt!1440622))))))))

(assert (=> b!4045361 (ruleValid!2860 thiss!21717 (rule!10006 (_1!24307 (v!39747 lt!1440622))))))

(declare-fun lt!1440588 () Unit!62514)

(assert (=> b!4045361 (= lt!1440588 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1930 thiss!21717 (rule!10006 (_1!24307 (v!39747 lt!1440622))) rules!2999))))

(declare-fun lt!1440616 () Unit!62514)

(declare-fun lemmaCharactersSize!1449 (Token!12998) Unit!62514)

(assert (=> b!4045361 (= lt!1440616 (lemmaCharactersSize!1449 token!484))))

(declare-fun lt!1440635 () Unit!62514)

(assert (=> b!4045361 (= lt!1440635 (lemmaCharactersSize!1449 (_1!24307 (v!39747 lt!1440622))))))

(declare-fun b!4045362 () Bool)

(declare-fun lt!1440617 () Token!12998)

(declare-fun inv!57836 (Token!12998) Bool)

(assert (=> b!4045362 (= e!2510034 (inv!57836 lt!1440617))))

(declare-fun b!4045363 () Bool)

(declare-fun e!2510033 () Bool)

(assert (=> b!4045363 (= e!2510033 e!2510045)))

(declare-fun res!1647858 () Bool)

(assert (=> b!4045363 (=> res!1647858 e!2510045)))

(assert (=> b!4045363 (= res!1647858 (not (isPrefix!4017 lt!1440607 lt!1440628)))))

(declare-fun lt!1440629 () List!43393)

(assert (=> b!4045363 (isPrefix!4017 lt!1440607 lt!1440629)))

(declare-fun lt!1440624 () List!43393)

(declare-fun lt!1440598 () Unit!62514)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!810 (List!43393 List!43393 List!43393) Unit!62514)

(assert (=> b!4045363 (= lt!1440598 (lemmaPrefixStaysPrefixWhenAddingToSuffix!810 lt!1440607 lt!1440597 lt!1440624))))

(declare-fun b!4045364 () Bool)

(declare-fun e!2510023 () Bool)

(declare-fun tp!1227614 () Bool)

(assert (=> b!4045364 (= e!2510023 (and tp_is_empty!20641 tp!1227614))))

(declare-fun b!4045365 () Bool)

(declare-fun e!2510029 () Bool)

(declare-fun e!2510025 () Bool)

(declare-fun tp!1227617 () Bool)

(assert (=> b!4045365 (= e!2510029 (and e!2510025 tp!1227617))))

(declare-fun b!4045367 () Bool)

(declare-fun e!2510024 () Bool)

(declare-fun tp!1227612 () Bool)

(assert (=> b!4045367 (= e!2510024 (and tp_is_empty!20641 tp!1227612))))

(declare-fun b!4045368 () Bool)

(assert (=> b!4045368 (= e!2510042 e!2510034)))

(declare-fun res!1647864 () Bool)

(assert (=> b!4045368 (=> res!1647864 e!2510034)))

(declare-fun lt!1440603 () Int)

(assert (=> b!4045368 (= res!1647864 (<= lt!1440637 lt!1440603))))

(assert (=> b!4045368 (= (_2!24307 (v!39747 lt!1440622)) lt!1440636)))

(declare-fun lt!1440602 () Unit!62514)

(declare-fun lemmaSamePrefixThenSameSuffix!2178 (List!43393 List!43393 List!43393 List!43393 List!43393) Unit!62514)

(assert (=> b!4045368 (= lt!1440602 (lemmaSamePrefixThenSameSuffix!2178 lt!1440607 (_2!24307 (v!39747 lt!1440622)) lt!1440607 lt!1440636 lt!1440597))))

(assert (=> b!4045368 (isPrefix!4017 lt!1440607 lt!1440630)))

(declare-fun lt!1440627 () Unit!62514)

(assert (=> b!4045368 (= lt!1440627 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440607 lt!1440636))))

(declare-fun b!4045369 () Bool)

(declare-fun e!2510021 () Bool)

(declare-fun tp!1227615 () Bool)

(assert (=> b!4045369 (= e!2510021 (and tp_is_empty!20641 tp!1227615))))

(declare-fun b!4045370 () Bool)

(declare-fun e!2510028 () Bool)

(assert (=> b!4045370 (= e!2510028 e!2510037)))

(declare-fun res!1647857 () Bool)

(assert (=> b!4045370 (=> (not res!1647857) (not e!2510037))))

(declare-fun lt!1440625 () Option!9344)

(declare-fun maxPrefix!3817 (LexerInterface!6519 List!43395 List!43393) Option!9344)

(assert (=> b!4045370 (= res!1647857 (= (maxPrefix!3817 thiss!21717 rules!2999 lt!1440628) lt!1440625))))

(declare-fun lt!1440626 () tuple2!42346)

(assert (=> b!4045370 (= lt!1440625 (Some!9343 lt!1440626))))

(assert (=> b!4045370 (= lt!1440626 (tuple2!42347 token!484 suffixResult!105))))

(assert (=> b!4045370 (= lt!1440628 (++!11332 prefix!494 suffix!1299))))

(declare-fun b!4045371 () Bool)

(declare-fun e!2510031 () Bool)

(assert (=> b!4045371 (= e!2510043 e!2510031)))

(declare-fun res!1647851 () Bool)

(assert (=> b!4045371 (=> res!1647851 e!2510031)))

(declare-fun lt!1440586 () List!43393)

(assert (=> b!4045371 (= res!1647851 (not (= lt!1440586 suffix!1299)))))

(assert (=> b!4045371 (= lt!1440586 (++!11332 newSuffix!27 lt!1440624))))

(assert (=> b!4045371 (= lt!1440624 (getSuffix!2434 suffix!1299 newSuffix!27))))

(declare-fun b!4045372 () Bool)

(declare-fun e!2510038 () Bool)

(declare-fun e!2510017 () Bool)

(assert (=> b!4045372 (= e!2510038 e!2510017)))

(declare-fun res!1647854 () Bool)

(assert (=> b!4045372 (=> res!1647854 e!2510017)))

(declare-fun lt!1440612 () Option!9344)

(assert (=> b!4045372 (= res!1647854 (not (= lt!1440612 lt!1440625)))))

(assert (=> b!4045372 (= lt!1440612 (Some!9343 (tuple2!42347 lt!1440617 suffixResult!105)))))

(assert (=> b!4045372 (= lt!1440612 (maxPrefixOneRule!2829 thiss!21717 (rule!10006 token!484) lt!1440628))))

(declare-fun lt!1440601 () TokenValue!7160)

(assert (=> b!4045372 (= lt!1440617 (Token!12999 lt!1440601 (rule!10006 token!484) lt!1440603 lt!1440584))))

(assert (=> b!4045372 (= lt!1440601 (apply!10119 (transformation!6930 (rule!10006 token!484)) (seqFromList!5147 lt!1440584)))))

(declare-fun lt!1440610 () Unit!62514)

(assert (=> b!4045372 (= lt!1440610 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1635 thiss!21717 rules!2999 lt!1440584 lt!1440628 suffixResult!105 (rule!10006 token!484)))))

(declare-fun lt!1440620 () List!43393)

(assert (=> b!4045372 (= lt!1440620 suffixResult!105)))

(declare-fun lt!1440615 () Unit!62514)

(assert (=> b!4045372 (= lt!1440615 (lemmaSamePrefixThenSameSuffix!2178 lt!1440584 lt!1440620 lt!1440584 suffixResult!105 lt!1440628))))

(declare-fun lt!1440593 () List!43393)

(assert (=> b!4045372 (isPrefix!4017 lt!1440584 lt!1440593)))

(declare-fun lt!1440595 () Unit!62514)

(assert (=> b!4045372 (= lt!1440595 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440584 lt!1440620))))

(declare-fun b!4045373 () Bool)

(declare-fun tp!1227622 () Bool)

(declare-fun e!2510047 () Bool)

(declare-fun e!2510036 () Bool)

(declare-fun inv!21 (TokenValue!7160) Bool)

(assert (=> b!4045373 (= e!2510036 (and (inv!21 (value!218139 token!484)) e!2510047 tp!1227622))))

(declare-fun b!4045374 () Bool)

(declare-fun res!1647863 () Bool)

(declare-fun e!2510032 () Bool)

(assert (=> b!4045374 (=> (not res!1647863) (not e!2510032))))

(assert (=> b!4045374 (= res!1647863 (= (size!32349 token!484) (size!32350 (originalCharacters!7530 token!484))))))

(declare-fun b!4045375 () Bool)

(declare-fun res!1647865 () Bool)

(assert (=> b!4045375 (=> res!1647865 e!2510034)))

(assert (=> b!4045375 (= res!1647865 (not (contains!8600 rules!2999 (rule!10006 (_1!24307 (v!39747 lt!1440622))))))))

(declare-fun b!4045376 () Bool)

(declare-fun e!2510048 () Bool)

(declare-fun tp!1227619 () Bool)

(declare-fun inv!57833 (String!49517) Bool)

(declare-fun inv!57837 (TokenValueInjection!13748) Bool)

(assert (=> b!4045376 (= e!2510025 (and tp!1227619 (inv!57833 (tag!7790 (h!48691 rules!2999))) (inv!57837 (transformation!6930 (h!48691 rules!2999))) e!2510048))))

(declare-fun b!4045377 () Bool)

(declare-fun res!1647861 () Bool)

(assert (=> b!4045377 (=> (not res!1647861) (not e!2510035))))

(declare-fun rulesInvariant!5862 (LexerInterface!6519 List!43395) Bool)

(assert (=> b!4045377 (= res!1647861 (rulesInvariant!5862 thiss!21717 rules!2999))))

(declare-fun b!4045378 () Bool)

(assert (=> b!4045378 (= e!2510020 e!2510038)))

(declare-fun res!1647877 () Bool)

(assert (=> b!4045378 (=> res!1647877 e!2510038)))

(declare-fun lt!1440614 () List!43393)

(assert (=> b!4045378 (= res!1647877 (or (not (= lt!1440628 lt!1440614)) (not (= lt!1440628 lt!1440593))))))

(assert (=> b!4045378 (= lt!1440614 lt!1440593)))

(assert (=> b!4045378 (= lt!1440593 (++!11332 lt!1440584 lt!1440620))))

(assert (=> b!4045378 (= lt!1440614 (++!11332 lt!1440600 suffix!1299))))

(assert (=> b!4045378 (= lt!1440620 (++!11332 lt!1440604 suffix!1299))))

(declare-fun lt!1440605 () Unit!62514)

(declare-fun lemmaConcatAssociativity!2634 (List!43393 List!43393 List!43393) Unit!62514)

(assert (=> b!4045378 (= lt!1440605 (lemmaConcatAssociativity!2634 lt!1440584 lt!1440604 suffix!1299))))

(declare-fun b!4045379 () Bool)

(assert (=> b!4045379 (= e!2510031 e!2510033)))

(declare-fun res!1647856 () Bool)

(assert (=> b!4045379 (=> res!1647856 e!2510033)))

(assert (=> b!4045379 (= res!1647856 (not (= lt!1440629 lt!1440628)))))

(assert (=> b!4045379 (= lt!1440629 (++!11332 prefix!494 lt!1440586))))

(assert (=> b!4045379 (= lt!1440629 (++!11332 lt!1440597 lt!1440624))))

(declare-fun lt!1440631 () Unit!62514)

(assert (=> b!4045379 (= lt!1440631 (lemmaConcatAssociativity!2634 prefix!494 newSuffix!27 lt!1440624))))

(declare-fun b!4045380 () Bool)

(declare-fun e!2510019 () Bool)

(declare-fun tp!1227620 () Bool)

(assert (=> b!4045380 (= e!2510019 (and tp_is_empty!20641 tp!1227620))))

(declare-fun b!4045381 () Bool)

(declare-fun e!2510016 () Bool)

(declare-fun e!2510046 () Bool)

(assert (=> b!4045381 (= e!2510016 e!2510046)))

(declare-fun res!1647871 () Bool)

(assert (=> b!4045381 (=> res!1647871 e!2510046)))

(declare-fun lt!1440585 () List!43393)

(assert (=> b!4045381 (= res!1647871 (not (= lt!1440585 lt!1440628)))))

(declare-fun lt!1440608 () List!43393)

(assert (=> b!4045381 (= lt!1440585 (++!11332 lt!1440584 lt!1440608))))

(assert (=> b!4045381 (= lt!1440608 (getSuffix!2434 lt!1440628 lt!1440584))))

(assert (=> b!4045381 e!2510032))

(declare-fun res!1647875 () Bool)

(assert (=> b!4045381 (=> (not res!1647875) (not e!2510032))))

(assert (=> b!4045381 (= res!1647875 (isPrefix!4017 lt!1440628 lt!1440628))))

(declare-fun lt!1440621 () Unit!62514)

(declare-fun lemmaIsPrefixRefl!2584 (List!43393 List!43393) Unit!62514)

(assert (=> b!4045381 (= lt!1440621 (lemmaIsPrefixRefl!2584 lt!1440628 lt!1440628))))

(declare-fun b!4045382 () Bool)

(declare-fun res!1647866 () Bool)

(assert (=> b!4045382 (=> (not res!1647866) (not e!2510032))))

(assert (=> b!4045382 (= res!1647866 (= (value!218139 token!484) lt!1440601))))

(declare-fun b!4045383 () Bool)

(declare-fun e!2510027 () Bool)

(assert (=> b!4045383 (= e!2510027 e!2510028)))

(declare-fun res!1647855 () Bool)

(assert (=> b!4045383 (=> (not res!1647855) (not e!2510028))))

(declare-fun lt!1440587 () List!43393)

(assert (=> b!4045383 (= res!1647855 (= lt!1440587 lt!1440597))))

(assert (=> b!4045383 (= lt!1440597 (++!11332 prefix!494 newSuffix!27))))

(assert (=> b!4045383 (= lt!1440587 (++!11332 lt!1440584 newSuffixResult!27))))

(declare-fun b!4045384 () Bool)

(assert (=> b!4045384 (= e!2510046 e!2510040)))

(declare-fun res!1647879 () Bool)

(assert (=> b!4045384 (=> res!1647879 e!2510040)))

(get-info :version)

(assert (=> b!4045384 (= res!1647879 (not ((_ is Some!9343) lt!1440622)))))

(assert (=> b!4045384 (= lt!1440622 (maxPrefix!3817 thiss!21717 rules!2999 lt!1440597))))

(assert (=> b!4045384 (and (= suffixResult!105 lt!1440608) (= lt!1440626 (tuple2!42347 lt!1440617 lt!1440608)))))

(declare-fun lt!1440618 () Unit!62514)

(assert (=> b!4045384 (= lt!1440618 (lemmaSamePrefixThenSameSuffix!2178 lt!1440584 suffixResult!105 lt!1440584 lt!1440608 lt!1440628))))

(assert (=> b!4045384 (isPrefix!4017 lt!1440584 lt!1440585)))

(declare-fun lt!1440592 () Unit!62514)

(assert (=> b!4045384 (= lt!1440592 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440584 lt!1440608))))

(declare-fun b!4045385 () Bool)

(assert (=> b!4045385 (= e!2510035 e!2510027)))

(declare-fun res!1647852 () Bool)

(assert (=> b!4045385 (=> (not res!1647852) (not e!2510027))))

(declare-fun lt!1440609 () Int)

(assert (=> b!4045385 (= res!1647852 (>= lt!1440609 lt!1440603))))

(assert (=> b!4045385 (= lt!1440603 (size!32350 lt!1440584))))

(assert (=> b!4045385 (= lt!1440609 (size!32350 prefix!494))))

(assert (=> b!4045385 (= lt!1440584 (list!16116 (charsOf!4746 token!484)))))

(declare-fun b!4045386 () Bool)

(declare-fun tp!1227616 () Bool)

(assert (=> b!4045386 (= e!2510047 (and tp!1227616 (inv!57833 (tag!7790 (rule!10006 token!484))) (inv!57837 (transformation!6930 (rule!10006 token!484))) e!2510026))))

(assert (=> b!4045387 (= e!2510048 (and tp!1227611 tp!1227610))))

(declare-fun b!4045388 () Bool)

(assert (=> b!4045388 (= e!2510032 (and (= (size!32349 token!484) lt!1440603) (= (originalCharacters!7530 token!484) lt!1440584)))))

(declare-fun b!4045389 () Bool)

(assert (=> b!4045389 (= e!2510022 e!2510041)))

(declare-fun res!1647860 () Bool)

(assert (=> b!4045389 (=> res!1647860 e!2510041)))

(assert (=> b!4045389 (= res!1647860 (not (isPrefix!4017 lt!1440584 lt!1440628)))))

(assert (=> b!4045389 (isPrefix!4017 prefix!494 lt!1440628)))

(declare-fun lt!1440611 () Unit!62514)

(assert (=> b!4045389 (= lt!1440611 (lemmaConcatTwoListThenFirstIsPrefix!2852 prefix!494 suffix!1299))))

(assert (=> b!4045389 (isPrefix!4017 lt!1440584 lt!1440589)))

(declare-fun lt!1440596 () Unit!62514)

(assert (=> b!4045389 (= lt!1440596 (lemmaConcatTwoListThenFirstIsPrefix!2852 lt!1440584 suffixResult!105))))

(declare-fun b!4045390 () Bool)

(assert (=> b!4045390 (= e!2510017 e!2510016)))

(declare-fun res!1647873 () Bool)

(assert (=> b!4045390 (=> res!1647873 e!2510016)))

(declare-fun matchR!5788 (Regex!11835 List!43393) Bool)

(assert (=> b!4045390 (= res!1647873 (not (matchR!5788 (regex!6930 (rule!10006 token!484)) lt!1440584)))))

(assert (=> b!4045390 (isPrefix!4017 lt!1440584 lt!1440597)))

(declare-fun lt!1440633 () Unit!62514)

(assert (=> b!4045390 (= lt!1440633 (lemmaPrefixStaysPrefixWhenAddingToSuffix!810 lt!1440584 prefix!494 newSuffix!27))))

(declare-fun lt!1440634 () Unit!62514)

(assert (=> b!4045390 (= lt!1440634 (lemmaPrefixStaysPrefixWhenAddingToSuffix!810 lt!1440584 prefix!494 suffix!1299))))

(declare-fun b!4045391 () Bool)

(declare-fun res!1647872 () Bool)

(assert (=> b!4045391 (=> (not res!1647872) (not e!2510035))))

(assert (=> b!4045391 (= res!1647872 (>= (size!32350 suffix!1299) (size!32350 newSuffix!27)))))

(declare-fun b!4045392 () Bool)

(declare-fun res!1647867 () Bool)

(assert (=> b!4045392 (=> res!1647867 e!2510045)))

(assert (=> b!4045392 (= res!1647867 (not (= lt!1440594 lt!1440597)))))

(declare-fun b!4045366 () Bool)

(declare-fun res!1647878 () Bool)

(assert (=> b!4045366 (=> res!1647878 e!2510034)))

(assert (=> b!4045366 (= res!1647878 (not (isPrefix!4017 lt!1440607 lt!1440597)))))

(declare-fun res!1647853 () Bool)

(assert (=> start!381492 (=> (not res!1647853) (not e!2510035))))

(assert (=> start!381492 (= res!1647853 ((_ is Lexer!6517) thiss!21717))))

(assert (=> start!381492 e!2510035))

(assert (=> start!381492 e!2510023))

(assert (=> start!381492 (and (inv!57836 token!484) e!2510036)))

(assert (=> start!381492 e!2510024))

(assert (=> start!381492 e!2510039))

(assert (=> start!381492 e!2510021))

(assert (=> start!381492 true))

(assert (=> start!381492 e!2510029))

(assert (=> start!381492 e!2510019))

(assert (= (and start!381492 res!1647853) b!4045358))

(assert (= (and b!4045358 res!1647870) b!4045377))

(assert (= (and b!4045377 res!1647861) b!4045391))

(assert (= (and b!4045391 res!1647872) b!4045356))

(assert (= (and b!4045356 res!1647876) b!4045385))

(assert (= (and b!4045385 res!1647852) b!4045383))

(assert (= (and b!4045383 res!1647855) b!4045370))

(assert (= (and b!4045370 res!1647857) b!4045355))

(assert (= (and b!4045355 (not res!1647869)) b!4045389))

(assert (= (and b!4045389 (not res!1647860)) b!4045353))

(assert (= (and b!4045353 (not res!1647874)) b!4045378))

(assert (= (and b!4045378 (not res!1647877)) b!4045372))

(assert (= (and b!4045372 (not res!1647854)) b!4045390))

(assert (= (and b!4045390 (not res!1647873)) b!4045381))

(assert (= (and b!4045381 res!1647875) b!4045382))

(assert (= (and b!4045382 res!1647866) b!4045374))

(assert (= (and b!4045374 res!1647863) b!4045388))

(assert (= (and b!4045381 (not res!1647871)) b!4045384))

(assert (= (and b!4045384 (not res!1647879)) b!4045361))

(assert (= (and b!4045361 (not res!1647868)) b!4045371))

(assert (= (and b!4045371 (not res!1647851)) b!4045379))

(assert (= (and b!4045379 (not res!1647856)) b!4045363))

(assert (= (and b!4045363 (not res!1647858)) b!4045392))

(assert (= (and b!4045392 (not res!1647867)) b!4045360))

(assert (= (and b!4045360 (not res!1647862)) b!4045368))

(assert (= (and b!4045368 (not res!1647864)) b!4045366))

(assert (= (and b!4045366 (not res!1647878)) b!4045354))

(assert (= (and b!4045354 (not res!1647859)) b!4045375))

(assert (= (and b!4045375 (not res!1647865)) b!4045362))

(assert (= (and start!381492 ((_ is Cons!43269) prefix!494)) b!4045364))

(assert (= b!4045386 b!4045357))

(assert (= b!4045373 b!4045386))

(assert (= start!381492 b!4045373))

(assert (= (and start!381492 ((_ is Cons!43269) suffixResult!105)) b!4045367))

(assert (= (and start!381492 ((_ is Cons!43269) suffix!1299)) b!4045359))

(assert (= (and start!381492 ((_ is Cons!43269) newSuffix!27)) b!4045369))

(assert (= b!4045376 b!4045387))

(assert (= b!4045365 b!4045376))

(assert (= (and start!381492 ((_ is Cons!43271) rules!2999)) b!4045365))

(assert (= (and start!381492 ((_ is Cons!43269) newSuffixResult!27)) b!4045380))

(declare-fun m!4643583 () Bool)

(assert (=> b!4045361 m!4643583))

(declare-fun m!4643585 () Bool)

(assert (=> b!4045361 m!4643585))

(declare-fun m!4643587 () Bool)

(assert (=> b!4045361 m!4643587))

(declare-fun m!4643589 () Bool)

(assert (=> b!4045361 m!4643589))

(declare-fun m!4643591 () Bool)

(assert (=> b!4045361 m!4643591))

(declare-fun m!4643593 () Bool)

(assert (=> b!4045361 m!4643593))

(declare-fun m!4643595 () Bool)

(assert (=> b!4045361 m!4643595))

(declare-fun m!4643597 () Bool)

(assert (=> b!4045361 m!4643597))

(declare-fun m!4643599 () Bool)

(assert (=> b!4045361 m!4643599))

(assert (=> b!4045361 m!4643597))

(declare-fun m!4643601 () Bool)

(assert (=> b!4045361 m!4643601))

(declare-fun m!4643603 () Bool)

(assert (=> b!4045361 m!4643603))

(declare-fun m!4643605 () Bool)

(assert (=> b!4045361 m!4643605))

(assert (=> b!4045361 m!4643603))

(declare-fun m!4643607 () Bool)

(assert (=> b!4045361 m!4643607))

(declare-fun m!4643609 () Bool)

(assert (=> b!4045361 m!4643609))

(declare-fun m!4643611 () Bool)

(assert (=> b!4045361 m!4643611))

(assert (=> b!4045361 m!4643593))

(declare-fun m!4643613 () Bool)

(assert (=> b!4045361 m!4643613))

(declare-fun m!4643615 () Bool)

(assert (=> b!4045361 m!4643615))

(declare-fun m!4643617 () Bool)

(assert (=> b!4045361 m!4643617))

(declare-fun m!4643619 () Bool)

(assert (=> b!4045375 m!4643619))

(declare-fun m!4643621 () Bool)

(assert (=> b!4045384 m!4643621))

(declare-fun m!4643623 () Bool)

(assert (=> b!4045384 m!4643623))

(declare-fun m!4643625 () Bool)

(assert (=> b!4045384 m!4643625))

(declare-fun m!4643627 () Bool)

(assert (=> b!4045384 m!4643627))

(declare-fun m!4643629 () Bool)

(assert (=> b!4045372 m!4643629))

(declare-fun m!4643631 () Bool)

(assert (=> b!4045372 m!4643631))

(declare-fun m!4643633 () Bool)

(assert (=> b!4045372 m!4643633))

(declare-fun m!4643635 () Bool)

(assert (=> b!4045372 m!4643635))

(declare-fun m!4643637 () Bool)

(assert (=> b!4045372 m!4643637))

(declare-fun m!4643639 () Bool)

(assert (=> b!4045372 m!4643639))

(assert (=> b!4045372 m!4643633))

(declare-fun m!4643641 () Bool)

(assert (=> b!4045372 m!4643641))

(declare-fun m!4643643 () Bool)

(assert (=> b!4045390 m!4643643))

(declare-fun m!4643645 () Bool)

(assert (=> b!4045390 m!4643645))

(declare-fun m!4643647 () Bool)

(assert (=> b!4045390 m!4643647))

(declare-fun m!4643649 () Bool)

(assert (=> b!4045390 m!4643649))

(declare-fun m!4643651 () Bool)

(assert (=> b!4045386 m!4643651))

(declare-fun m!4643653 () Bool)

(assert (=> b!4045386 m!4643653))

(declare-fun m!4643655 () Bool)

(assert (=> start!381492 m!4643655))

(declare-fun m!4643657 () Bool)

(assert (=> b!4045353 m!4643657))

(declare-fun m!4643659 () Bool)

(assert (=> b!4045353 m!4643659))

(declare-fun m!4643661 () Bool)

(assert (=> b!4045353 m!4643661))

(declare-fun m!4643663 () Bool)

(assert (=> b!4045353 m!4643663))

(declare-fun m!4643665 () Bool)

(assert (=> b!4045363 m!4643665))

(declare-fun m!4643667 () Bool)

(assert (=> b!4045363 m!4643667))

(declare-fun m!4643669 () Bool)

(assert (=> b!4045363 m!4643669))

(declare-fun m!4643671 () Bool)

(assert (=> b!4045373 m!4643671))

(declare-fun m!4643673 () Bool)

(assert (=> b!4045368 m!4643673))

(declare-fun m!4643675 () Bool)

(assert (=> b!4045368 m!4643675))

(declare-fun m!4643677 () Bool)

(assert (=> b!4045368 m!4643677))

(declare-fun m!4643679 () Bool)

(assert (=> b!4045371 m!4643679))

(declare-fun m!4643681 () Bool)

(assert (=> b!4045371 m!4643681))

(declare-fun m!4643683 () Bool)

(assert (=> b!4045378 m!4643683))

(declare-fun m!4643685 () Bool)

(assert (=> b!4045378 m!4643685))

(declare-fun m!4643687 () Bool)

(assert (=> b!4045378 m!4643687))

(declare-fun m!4643689 () Bool)

(assert (=> b!4045378 m!4643689))

(declare-fun m!4643691 () Bool)

(assert (=> b!4045376 m!4643691))

(declare-fun m!4643693 () Bool)

(assert (=> b!4045376 m!4643693))

(declare-fun m!4643695 () Bool)

(assert (=> b!4045370 m!4643695))

(declare-fun m!4643697 () Bool)

(assert (=> b!4045370 m!4643697))

(declare-fun m!4643699 () Bool)

(assert (=> b!4045389 m!4643699))

(declare-fun m!4643701 () Bool)

(assert (=> b!4045389 m!4643701))

(declare-fun m!4643703 () Bool)

(assert (=> b!4045389 m!4643703))

(declare-fun m!4643705 () Bool)

(assert (=> b!4045389 m!4643705))

(declare-fun m!4643707 () Bool)

(assert (=> b!4045389 m!4643707))

(declare-fun m!4643709 () Bool)

(assert (=> b!4045354 m!4643709))

(declare-fun m!4643711 () Bool)

(assert (=> b!4045391 m!4643711))

(declare-fun m!4643713 () Bool)

(assert (=> b!4045391 m!4643713))

(declare-fun m!4643715 () Bool)

(assert (=> b!4045379 m!4643715))

(declare-fun m!4643717 () Bool)

(assert (=> b!4045379 m!4643717))

(declare-fun m!4643719 () Bool)

(assert (=> b!4045379 m!4643719))

(declare-fun m!4643721 () Bool)

(assert (=> b!4045355 m!4643721))

(declare-fun m!4643723 () Bool)

(assert (=> b!4045355 m!4643723))

(declare-fun m!4643725 () Bool)

(assert (=> b!4045355 m!4643725))

(declare-fun m!4643727 () Bool)

(assert (=> b!4045355 m!4643727))

(declare-fun m!4643729 () Bool)

(assert (=> b!4045362 m!4643729))

(declare-fun m!4643731 () Bool)

(assert (=> b!4045374 m!4643731))

(declare-fun m!4643733 () Bool)

(assert (=> b!4045385 m!4643733))

(declare-fun m!4643735 () Bool)

(assert (=> b!4045385 m!4643735))

(declare-fun m!4643737 () Bool)

(assert (=> b!4045385 m!4643737))

(assert (=> b!4045385 m!4643737))

(declare-fun m!4643739 () Bool)

(assert (=> b!4045385 m!4643739))

(declare-fun m!4643741 () Bool)

(assert (=> b!4045360 m!4643741))

(declare-fun m!4643743 () Bool)

(assert (=> b!4045360 m!4643743))

(declare-fun m!4643745 () Bool)

(assert (=> b!4045383 m!4643745))

(declare-fun m!4643747 () Bool)

(assert (=> b!4045383 m!4643747))

(declare-fun m!4643749 () Bool)

(assert (=> b!4045377 m!4643749))

(declare-fun m!4643751 () Bool)

(assert (=> b!4045366 m!4643751))

(declare-fun m!4643753 () Bool)

(assert (=> b!4045381 m!4643753))

(declare-fun m!4643755 () Bool)

(assert (=> b!4045381 m!4643755))

(declare-fun m!4643757 () Bool)

(assert (=> b!4045381 m!4643757))

(declare-fun m!4643759 () Bool)

(assert (=> b!4045381 m!4643759))

(declare-fun m!4643761 () Bool)

(assert (=> b!4045356 m!4643761))

(declare-fun m!4643763 () Bool)

(assert (=> b!4045358 m!4643763))

(check-sat (not b!4045377) (not b!4045356) (not b!4045371) (not b_next!113325) (not b!4045366) (not b!4045376) b_and!311079 (not b!4045370) b_and!311081 (not b!4045362) (not b_next!113323) (not b!4045373) (not b!4045358) (not b!4045355) (not b!4045380) (not b_next!113327) (not b!4045378) (not b!4045367) (not b!4045384) (not b!4045386) (not b!4045364) (not b!4045374) (not b!4045353) (not b!4045375) (not b!4045389) b_and!311077 (not b!4045360) (not b!4045385) tp_is_empty!20641 (not b_next!113321) (not b!4045383) (not b!4045379) (not b!4045354) (not b!4045381) (not b!4045363) (not start!381492) (not b!4045359) (not b!4045391) (not b!4045369) (not b!4045372) (not b!4045365) (not b!4045390) (not b!4045361) b_and!311075 (not b!4045368))
(check-sat (not b_next!113327) (not b_next!113325) b_and!311077 (not b_next!113321) b_and!311079 b_and!311081 (not b_next!113323) b_and!311075)
