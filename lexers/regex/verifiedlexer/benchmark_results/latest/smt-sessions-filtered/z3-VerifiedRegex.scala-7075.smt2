; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375108 () Bool)

(assert start!375108)

(declare-fun b!3985667 () Bool)

(declare-fun b_free!110673 () Bool)

(declare-fun b_next!111377 () Bool)

(assert (=> b!3985667 (= b_free!110673 (not b_next!111377))))

(declare-fun tp!1214587 () Bool)

(declare-fun b_and!306303 () Bool)

(assert (=> b!3985667 (= tp!1214587 b_and!306303)))

(declare-fun b_free!110675 () Bool)

(declare-fun b_next!111379 () Bool)

(assert (=> b!3985667 (= b_free!110675 (not b_next!111379))))

(declare-fun tp!1214585 () Bool)

(declare-fun b_and!306305 () Bool)

(assert (=> b!3985667 (= tp!1214585 b_and!306305)))

(declare-fun b!3985679 () Bool)

(declare-fun b_free!110677 () Bool)

(declare-fun b_next!111381 () Bool)

(assert (=> b!3985679 (= b_free!110677 (not b_next!111381))))

(declare-fun tp!1214584 () Bool)

(declare-fun b_and!306307 () Bool)

(assert (=> b!3985679 (= tp!1214584 b_and!306307)))

(declare-fun b_free!110679 () Bool)

(declare-fun b_next!111383 () Bool)

(assert (=> b!3985679 (= b_free!110679 (not b_next!111383))))

(declare-fun tp!1214589 () Bool)

(declare-fun b_and!306309 () Bool)

(assert (=> b!3985679 (= tp!1214589 b_and!306309)))

(declare-fun b!3985642 () Bool)

(declare-fun e!2470329 () Bool)

(declare-fun e!2470345 () Bool)

(assert (=> b!3985642 (= e!2470329 e!2470345)))

(declare-fun res!1616397 () Bool)

(assert (=> b!3985642 (=> (not res!1616397) (not e!2470345))))

(declare-fun lt!1402455 () Int)

(declare-fun lt!1402431 () Int)

(assert (=> b!3985642 (= res!1616397 (>= lt!1402455 lt!1402431))))

(declare-datatypes ((C!23472 0))(
  ( (C!23473 (val!13830 Int)) )
))
(declare-datatypes ((List!42746 0))(
  ( (Nil!42622) (Cons!42622 (h!48042 C!23472) (t!331545 List!42746)) )
))
(declare-fun lt!1402472 () List!42746)

(declare-fun size!31880 (List!42746) Int)

(assert (=> b!3985642 (= lt!1402431 (size!31880 lt!1402472))))

(declare-fun prefix!494 () List!42746)

(assert (=> b!3985642 (= lt!1402455 (size!31880 prefix!494))))

(declare-datatypes ((IArray!25903 0))(
  ( (IArray!25904 (innerList!13009 List!42746)) )
))
(declare-datatypes ((Conc!12949 0))(
  ( (Node!12949 (left!32220 Conc!12949) (right!32550 Conc!12949) (csize!26128 Int) (cheight!13160 Int)) (Leaf!20025 (xs!16255 IArray!25903) (csize!26129 Int)) (Empty!12949) )
))
(declare-datatypes ((BalanceConc!25492 0))(
  ( (BalanceConc!25493 (c!690110 Conc!12949)) )
))
(declare-datatypes ((List!42747 0))(
  ( (Nil!42623) (Cons!42623 (h!48043 (_ BitVec 16)) (t!331546 List!42747)) )
))
(declare-datatypes ((TokenValue!6968 0))(
  ( (FloatLiteralValue!13936 (text!49221 List!42747)) (TokenValueExt!6967 (__x!26153 Int)) (Broken!34840 (value!212641 List!42747)) (Object!7091) (End!6968) (Def!6968) (Underscore!6968) (Match!6968) (Else!6968) (Error!6968) (Case!6968) (If!6968) (Extends!6968) (Abstract!6968) (Class!6968) (Val!6968) (DelimiterValue!13936 (del!7028 List!42747)) (KeywordValue!6974 (value!212642 List!42747)) (CommentValue!13936 (value!212643 List!42747)) (WhitespaceValue!13936 (value!212644 List!42747)) (IndentationValue!6968 (value!212645 List!42747)) (String!48557) (Int32!6968) (Broken!34841 (value!212646 List!42747)) (Boolean!6969) (Unit!61307) (OperatorValue!6971 (op!7028 List!42747)) (IdentifierValue!13936 (value!212647 List!42747)) (IdentifierValue!13937 (value!212648 List!42747)) (WhitespaceValue!13937 (value!212649 List!42747)) (True!13936) (False!13936) (Broken!34842 (value!212650 List!42747)) (Broken!34843 (value!212651 List!42747)) (True!13937) (RightBrace!6968) (RightBracket!6968) (Colon!6968) (Null!6968) (Comma!6968) (LeftBracket!6968) (False!13937) (LeftBrace!6968) (ImaginaryLiteralValue!6968 (text!49222 List!42747)) (StringLiteralValue!20904 (value!212652 List!42747)) (EOFValue!6968 (value!212653 List!42747)) (IdentValue!6968 (value!212654 List!42747)) (DelimiterValue!13937 (value!212655 List!42747)) (DedentValue!6968 (value!212656 List!42747)) (NewLineValue!6968 (value!212657 List!42747)) (IntegerValue!20904 (value!212658 (_ BitVec 32)) (text!49223 List!42747)) (IntegerValue!20905 (value!212659 Int) (text!49224 List!42747)) (Times!6968) (Or!6968) (Equal!6968) (Minus!6968) (Broken!34844 (value!212660 List!42747)) (And!6968) (Div!6968) (LessEqual!6968) (Mod!6968) (Concat!18611) (Not!6968) (Plus!6968) (SpaceValue!6968 (value!212661 List!42747)) (IntegerValue!20906 (value!212662 Int) (text!49225 List!42747)) (StringLiteralValue!20905 (text!49226 List!42747)) (FloatLiteralValue!13937 (text!49227 List!42747)) (BytesLiteralValue!6968 (value!212663 List!42747)) (CommentValue!13937 (value!212664 List!42747)) (StringLiteralValue!20906 (value!212665 List!42747)) (ErrorTokenValue!6968 (msg!7029 List!42747)) )
))
(declare-datatypes ((Regex!11643 0))(
  ( (ElementMatch!11643 (c!690111 C!23472)) (Concat!18612 (regOne!23798 Regex!11643) (regTwo!23798 Regex!11643)) (EmptyExpr!11643) (Star!11643 (reg!11972 Regex!11643)) (EmptyLang!11643) (Union!11643 (regOne!23799 Regex!11643) (regTwo!23799 Regex!11643)) )
))
(declare-datatypes ((String!48558 0))(
  ( (String!48559 (value!212666 String)) )
))
(declare-datatypes ((TokenValueInjection!13364 0))(
  ( (TokenValueInjection!13365 (toValue!9226 Int) (toChars!9085 Int)) )
))
(declare-datatypes ((Rule!13276 0))(
  ( (Rule!13277 (regex!6738 Regex!11643) (tag!7598 String!48558) (isSeparator!6738 Bool) (transformation!6738 TokenValueInjection!13364)) )
))
(declare-datatypes ((Token!12614 0))(
  ( (Token!12615 (value!212667 TokenValue!6968) (rule!9750 Rule!13276) (size!31881 Int) (originalCharacters!7338 List!42746)) )
))
(declare-fun token!484 () Token!12614)

(declare-fun list!15822 (BalanceConc!25492) List!42746)

(declare-fun charsOf!4554 (Token!12614) BalanceConc!25492)

(assert (=> b!3985642 (= lt!1402472 (list!15822 (charsOf!4554 token!484)))))

(declare-fun res!1616406 () Bool)

(assert (=> start!375108 (=> (not res!1616406) (not e!2470329))))

(declare-datatypes ((LexerInterface!6327 0))(
  ( (LexerInterfaceExt!6324 (__x!26154 Int)) (Lexer!6325) )
))
(declare-fun thiss!21717 () LexerInterface!6327)

(get-info :version)

(assert (=> start!375108 (= res!1616406 ((_ is Lexer!6325) thiss!21717))))

(assert (=> start!375108 e!2470329))

(declare-fun e!2470353 () Bool)

(assert (=> start!375108 e!2470353))

(declare-fun e!2470333 () Bool)

(declare-fun inv!56934 (Token!12614) Bool)

(assert (=> start!375108 (and (inv!56934 token!484) e!2470333)))

(declare-fun e!2470352 () Bool)

(assert (=> start!375108 e!2470352))

(declare-fun e!2470340 () Bool)

(assert (=> start!375108 e!2470340))

(declare-fun e!2470334 () Bool)

(assert (=> start!375108 e!2470334))

(assert (=> start!375108 true))

(declare-fun e!2470328 () Bool)

(assert (=> start!375108 e!2470328))

(declare-fun e!2470355 () Bool)

(assert (=> start!375108 e!2470355))

(declare-fun b!3985643 () Bool)

(declare-fun res!1616404 () Bool)

(declare-fun e!2470347 () Bool)

(assert (=> b!3985643 (=> res!1616404 e!2470347)))

(declare-fun lt!1402449 () List!42746)

(declare-fun lt!1402453 () List!42746)

(assert (=> b!3985643 (= res!1616404 (not (= lt!1402449 lt!1402453)))))

(declare-fun b!3985644 () Bool)

(declare-fun res!1616418 () Bool)

(declare-fun e!2470336 () Bool)

(assert (=> b!3985644 (=> (not res!1616418) (not e!2470336))))

(declare-fun lt!1402454 () TokenValue!6968)

(assert (=> b!3985644 (= res!1616418 (= (value!212667 token!484) lt!1402454))))

(declare-fun b!3985645 () Bool)

(declare-fun e!2470330 () Bool)

(declare-fun e!2470327 () Bool)

(assert (=> b!3985645 (= e!2470330 e!2470327)))

(declare-fun res!1616420 () Bool)

(assert (=> b!3985645 (=> res!1616420 e!2470327)))

(declare-fun lt!1402451 () List!42746)

(declare-fun lt!1402433 () List!42746)

(assert (=> b!3985645 (= res!1616420 (not (= lt!1402451 lt!1402433)))))

(declare-fun lt!1402439 () List!42746)

(declare-fun ++!11140 (List!42746 List!42746) List!42746)

(assert (=> b!3985645 (= lt!1402451 (++!11140 prefix!494 lt!1402439))))

(declare-fun lt!1402437 () List!42746)

(assert (=> b!3985645 (= lt!1402451 (++!11140 lt!1402453 lt!1402437))))

(declare-fun newSuffix!27 () List!42746)

(declare-datatypes ((Unit!61308 0))(
  ( (Unit!61309) )
))
(declare-fun lt!1402432 () Unit!61308)

(declare-fun lemmaConcatAssociativity!2460 (List!42746 List!42746 List!42746) Unit!61308)

(assert (=> b!3985645 (= lt!1402432 (lemmaConcatAssociativity!2460 prefix!494 newSuffix!27 lt!1402437))))

(declare-fun b!3985646 () Bool)

(declare-fun e!2470346 () Bool)

(declare-fun e!2470326 () Bool)

(assert (=> b!3985646 (= e!2470346 e!2470326)))

(declare-fun res!1616417 () Bool)

(assert (=> b!3985646 (=> res!1616417 e!2470326)))

(declare-fun lt!1402456 () List!42746)

(assert (=> b!3985646 (= res!1616417 (not (= lt!1402456 lt!1402433)))))

(declare-fun lt!1402429 () List!42746)

(assert (=> b!3985646 (= lt!1402456 (++!11140 lt!1402472 lt!1402429))))

(declare-fun getSuffix!2256 (List!42746 List!42746) List!42746)

(assert (=> b!3985646 (= lt!1402429 (getSuffix!2256 lt!1402433 lt!1402472))))

(assert (=> b!3985646 e!2470336))

(declare-fun res!1616394 () Bool)

(assert (=> b!3985646 (=> (not res!1616394) (not e!2470336))))

(declare-fun isPrefix!3825 (List!42746 List!42746) Bool)

(assert (=> b!3985646 (= res!1616394 (isPrefix!3825 lt!1402433 lt!1402433))))

(declare-fun lt!1402470 () Unit!61308)

(declare-fun lemmaIsPrefixRefl!2417 (List!42746 List!42746) Unit!61308)

(assert (=> b!3985646 (= lt!1402470 (lemmaIsPrefixRefl!2417 lt!1402433 lt!1402433))))

(declare-fun b!3985647 () Bool)

(declare-fun e!2470351 () Bool)

(declare-fun e!2470339 () Bool)

(assert (=> b!3985647 (= e!2470351 (not e!2470339))))

(declare-fun res!1616395 () Bool)

(assert (=> b!3985647 (=> res!1616395 e!2470339)))

(declare-fun lt!1402416 () List!42746)

(assert (=> b!3985647 (= res!1616395 (not (= lt!1402416 lt!1402433)))))

(declare-fun suffixResult!105 () List!42746)

(assert (=> b!3985647 (= lt!1402416 (++!11140 lt!1402472 suffixResult!105))))

(declare-fun lt!1402446 () Unit!61308)

(declare-fun lemmaInv!953 (TokenValueInjection!13364) Unit!61308)

(assert (=> b!3985647 (= lt!1402446 (lemmaInv!953 (transformation!6738 (rule!9750 token!484))))))

(declare-fun ruleValid!2670 (LexerInterface!6327 Rule!13276) Bool)

(assert (=> b!3985647 (ruleValid!2670 thiss!21717 (rule!9750 token!484))))

(declare-fun lt!1402435 () Unit!61308)

(declare-datatypes ((List!42748 0))(
  ( (Nil!42624) (Cons!42624 (h!48044 Rule!13276) (t!331547 List!42748)) )
))
(declare-fun rules!2999 () List!42748)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1744 (LexerInterface!6327 Rule!13276 List!42748) Unit!61308)

(assert (=> b!3985647 (= lt!1402435 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1744 thiss!21717 (rule!9750 token!484) rules!2999))))

(declare-fun b!3985648 () Bool)

(declare-fun res!1616408 () Bool)

(declare-fun e!2470349 () Bool)

(assert (=> b!3985648 (=> res!1616408 e!2470349)))

(declare-fun lt!1402438 () List!42746)

(assert (=> b!3985648 (= res!1616408 (not (isPrefix!3825 lt!1402438 lt!1402453)))))

(declare-fun b!3985649 () Bool)

(declare-fun e!2470354 () Bool)

(declare-fun e!2470325 () Bool)

(assert (=> b!3985649 (= e!2470354 e!2470325)))

(declare-fun res!1616402 () Bool)

(assert (=> b!3985649 (=> res!1616402 e!2470325)))

(declare-fun lt!1402465 () List!42746)

(assert (=> b!3985649 (= res!1616402 (not (= lt!1402465 prefix!494)))))

(declare-fun lt!1402426 () List!42746)

(assert (=> b!3985649 (= lt!1402465 (++!11140 lt!1402472 lt!1402426))))

(assert (=> b!3985649 (= lt!1402426 (getSuffix!2256 prefix!494 lt!1402472))))

(assert (=> b!3985649 (isPrefix!3825 lt!1402472 prefix!494)))

(declare-fun lt!1402461 () Unit!61308)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!403 (List!42746 List!42746 List!42746) Unit!61308)

(assert (=> b!3985649 (= lt!1402461 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!403 prefix!494 lt!1402472 lt!1402433))))

(declare-fun b!3985650 () Bool)

(assert (=> b!3985650 (= e!2470349 true)))

(declare-fun lt!1402447 () Unit!61308)

(declare-fun lt!1402419 () BalanceConc!25492)

(declare-fun lemmaSemiInverse!1840 (TokenValueInjection!13364 BalanceConc!25492) Unit!61308)

(assert (=> b!3985650 (= lt!1402447 (lemmaSemiInverse!1840 (transformation!6738 (rule!9750 token!484)) lt!1402419))))

(declare-fun b!3985651 () Bool)

(declare-fun tp_is_empty!20257 () Bool)

(declare-fun tp!1214579 () Bool)

(assert (=> b!3985651 (= e!2470352 (and tp_is_empty!20257 tp!1214579))))

(declare-fun b!3985652 () Bool)

(declare-fun res!1616400 () Bool)

(assert (=> b!3985652 (=> (not res!1616400) (not e!2470329))))

(declare-fun rulesInvariant!5670 (LexerInterface!6327 List!42748) Bool)

(assert (=> b!3985652 (= res!1616400 (rulesInvariant!5670 thiss!21717 rules!2999))))

(declare-fun b!3985653 () Bool)

(declare-fun res!1616412 () Bool)

(assert (=> b!3985653 (=> res!1616412 e!2470349)))

(declare-datatypes ((tuple2!41836 0))(
  ( (tuple2!41837 (_1!24052 Token!12614) (_2!24052 List!42746)) )
))
(declare-datatypes ((Option!9152 0))(
  ( (None!9151) (Some!9151 (v!39503 tuple2!41836)) )
))
(declare-fun lt!1402430 () Option!9152)

(declare-fun contains!8483 (List!42748 Rule!13276) Bool)

(assert (=> b!3985653 (= res!1616412 (not (contains!8483 rules!2999 (rule!9750 (_1!24052 (v!39503 lt!1402430))))))))

(declare-fun b!3985654 () Bool)

(declare-fun e!2470348 () Bool)

(assert (=> b!3985654 (= e!2470348 e!2470346)))

(declare-fun res!1616411 () Bool)

(assert (=> b!3985654 (=> res!1616411 e!2470346)))

(declare-fun matchR!5620 (Regex!11643 List!42746) Bool)

(assert (=> b!3985654 (= res!1616411 (not (matchR!5620 (regex!6738 (rule!9750 token!484)) lt!1402472)))))

(assert (=> b!3985654 (isPrefix!3825 lt!1402472 lt!1402453)))

(declare-fun lt!1402442 () Unit!61308)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!658 (List!42746 List!42746 List!42746) Unit!61308)

(assert (=> b!3985654 (= lt!1402442 (lemmaPrefixStaysPrefixWhenAddingToSuffix!658 lt!1402472 prefix!494 newSuffix!27))))

(declare-fun lt!1402434 () Unit!61308)

(declare-fun suffix!1299 () List!42746)

(assert (=> b!3985654 (= lt!1402434 (lemmaPrefixStaysPrefixWhenAddingToSuffix!658 lt!1402472 prefix!494 suffix!1299))))

(declare-fun b!3985655 () Bool)

(declare-fun res!1616403 () Bool)

(assert (=> b!3985655 (=> (not res!1616403) (not e!2470329))))

(assert (=> b!3985655 (= res!1616403 (isPrefix!3825 newSuffix!27 suffix!1299))))

(declare-fun b!3985656 () Bool)

(assert (=> b!3985656 (= e!2470336 (and (= (size!31881 token!484) lt!1402431) (= (originalCharacters!7338 token!484) lt!1402472)))))

(declare-fun b!3985657 () Bool)

(declare-fun tp!1214586 () Bool)

(assert (=> b!3985657 (= e!2470355 (and tp_is_empty!20257 tp!1214586))))

(declare-fun b!3985658 () Bool)

(declare-fun e!2470356 () Bool)

(assert (=> b!3985658 (= e!2470356 e!2470351)))

(declare-fun res!1616399 () Bool)

(assert (=> b!3985658 (=> (not res!1616399) (not e!2470351))))

(declare-fun lt!1402440 () Option!9152)

(declare-fun lt!1402463 () Option!9152)

(assert (=> b!3985658 (= res!1616399 (= lt!1402440 lt!1402463))))

(declare-fun lt!1402462 () tuple2!41836)

(assert (=> b!3985658 (= lt!1402463 (Some!9151 lt!1402462))))

(declare-fun maxPrefix!3625 (LexerInterface!6327 List!42748 List!42746) Option!9152)

(assert (=> b!3985658 (= lt!1402440 (maxPrefix!3625 thiss!21717 rules!2999 lt!1402433))))

(assert (=> b!3985658 (= lt!1402462 (tuple2!41837 token!484 suffixResult!105))))

(assert (=> b!3985658 (= lt!1402433 (++!11140 prefix!494 suffix!1299))))

(declare-fun b!3985659 () Bool)

(declare-fun res!1616393 () Bool)

(assert (=> b!3985659 (=> res!1616393 e!2470349)))

(declare-fun lt!1402457 () Token!12614)

(assert (=> b!3985659 (= res!1616393 (not (= lt!1402440 (Some!9151 (tuple2!41837 lt!1402457 lt!1402429)))))))

(declare-fun b!3985660 () Bool)

(declare-fun e!2470335 () Bool)

(declare-fun e!2470338 () Bool)

(assert (=> b!3985660 (= e!2470335 e!2470338)))

(declare-fun res!1616396 () Bool)

(assert (=> b!3985660 (=> res!1616396 e!2470338)))

(declare-fun lt!1402423 () Option!9152)

(assert (=> b!3985660 (= res!1616396 (not (= lt!1402423 (Some!9151 (v!39503 lt!1402430)))))))

(declare-fun newSuffixResult!27 () List!42746)

(assert (=> b!3985660 (isPrefix!3825 lt!1402438 (++!11140 lt!1402438 newSuffixResult!27))))

(declare-fun lt!1402464 () Unit!61308)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2668 (List!42746 List!42746) Unit!61308)

(assert (=> b!3985660 (= lt!1402464 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402438 newSuffixResult!27))))

(assert (=> b!3985660 (isPrefix!3825 lt!1402438 lt!1402449)))

(assert (=> b!3985660 (= lt!1402449 (++!11140 lt!1402438 (_2!24052 (v!39503 lt!1402430))))))

(declare-fun lt!1402460 () Unit!61308)

(assert (=> b!3985660 (= lt!1402460 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402438 (_2!24052 (v!39503 lt!1402430))))))

(declare-fun lt!1402422 () TokenValue!6968)

(declare-fun lt!1402443 () Int)

(assert (=> b!3985660 (= lt!1402423 (Some!9151 (tuple2!41837 (Token!12615 lt!1402422 (rule!9750 (_1!24052 (v!39503 lt!1402430))) lt!1402443 lt!1402438) (_2!24052 (v!39503 lt!1402430)))))))

(declare-fun maxPrefixOneRule!2659 (LexerInterface!6327 Rule!13276 List!42746) Option!9152)

(assert (=> b!3985660 (= lt!1402423 (maxPrefixOneRule!2659 thiss!21717 (rule!9750 (_1!24052 (v!39503 lt!1402430))) lt!1402453))))

(assert (=> b!3985660 (= lt!1402443 (size!31880 lt!1402438))))

(declare-fun apply!9949 (TokenValueInjection!13364 BalanceConc!25492) TokenValue!6968)

(declare-fun seqFromList!4977 (List!42746) BalanceConc!25492)

(assert (=> b!3985660 (= lt!1402422 (apply!9949 (transformation!6738 (rule!9750 (_1!24052 (v!39503 lt!1402430)))) (seqFromList!4977 lt!1402438)))))

(declare-fun lt!1402452 () Unit!61308)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1481 (LexerInterface!6327 List!42748 List!42746 List!42746 List!42746 Rule!13276) Unit!61308)

(assert (=> b!3985660 (= lt!1402452 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1481 thiss!21717 rules!2999 lt!1402438 lt!1402453 (_2!24052 (v!39503 lt!1402430)) (rule!9750 (_1!24052 (v!39503 lt!1402430)))))))

(assert (=> b!3985660 (= lt!1402438 (list!15822 (charsOf!4554 (_1!24052 (v!39503 lt!1402430)))))))

(declare-fun lt!1402473 () Unit!61308)

(assert (=> b!3985660 (= lt!1402473 (lemmaInv!953 (transformation!6738 (rule!9750 (_1!24052 (v!39503 lt!1402430))))))))

(assert (=> b!3985660 (ruleValid!2670 thiss!21717 (rule!9750 (_1!24052 (v!39503 lt!1402430))))))

(declare-fun lt!1402459 () Unit!61308)

(assert (=> b!3985660 (= lt!1402459 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1744 thiss!21717 (rule!9750 (_1!24052 (v!39503 lt!1402430))) rules!2999))))

(declare-fun lt!1402444 () Unit!61308)

(declare-fun lemmaCharactersSize!1333 (Token!12614) Unit!61308)

(assert (=> b!3985660 (= lt!1402444 (lemmaCharactersSize!1333 token!484))))

(declare-fun lt!1402441 () Unit!61308)

(assert (=> b!3985660 (= lt!1402441 (lemmaCharactersSize!1333 (_1!24052 (v!39503 lt!1402430))))))

(declare-fun b!3985661 () Bool)

(declare-fun res!1616413 () Bool)

(assert (=> b!3985661 (=> (not res!1616413) (not e!2470329))))

(assert (=> b!3985661 (= res!1616413 (>= (size!31880 suffix!1299) (size!31880 newSuffix!27)))))

(declare-fun b!3985662 () Bool)

(declare-fun tp!1214590 () Bool)

(assert (=> b!3985662 (= e!2470334 (and tp_is_empty!20257 tp!1214590))))

(declare-fun b!3985663 () Bool)

(declare-fun res!1616416 () Bool)

(assert (=> b!3985663 (=> (not res!1616416) (not e!2470336))))

(assert (=> b!3985663 (= res!1616416 (= (size!31881 token!484) (size!31880 (originalCharacters!7338 token!484))))))

(declare-fun b!3985664 () Bool)

(declare-fun e!2470343 () Bool)

(declare-fun tp!1214582 () Bool)

(declare-fun inv!21 (TokenValue!6968) Bool)

(assert (=> b!3985664 (= e!2470333 (and (inv!21 (value!212667 token!484)) e!2470343 tp!1214582))))

(declare-fun b!3985665 () Bool)

(declare-fun res!1616398 () Bool)

(assert (=> b!3985665 (=> (not res!1616398) (not e!2470329))))

(declare-fun isEmpty!25478 (List!42748) Bool)

(assert (=> b!3985665 (= res!1616398 (not (isEmpty!25478 rules!2999)))))

(declare-fun b!3985666 () Bool)

(assert (=> b!3985666 (= e!2470345 e!2470356)))

(declare-fun res!1616415 () Bool)

(assert (=> b!3985666 (=> (not res!1616415) (not e!2470356))))

(declare-fun lt!1402418 () List!42746)

(assert (=> b!3985666 (= res!1616415 (= lt!1402418 lt!1402453))))

(assert (=> b!3985666 (= lt!1402453 (++!11140 prefix!494 newSuffix!27))))

(assert (=> b!3985666 (= lt!1402418 (++!11140 lt!1402472 newSuffixResult!27))))

(declare-fun e!2470332 () Bool)

(assert (=> b!3985667 (= e!2470332 (and tp!1214587 tp!1214585))))

(declare-fun b!3985668 () Bool)

(declare-fun e!2470350 () Bool)

(assert (=> b!3985668 (= e!2470325 e!2470350)))

(declare-fun res!1616407 () Bool)

(assert (=> b!3985668 (=> res!1616407 e!2470350)))

(declare-fun lt!1402425 () List!42746)

(declare-fun lt!1402469 () List!42746)

(assert (=> b!3985668 (= res!1616407 (or (not (= lt!1402433 lt!1402425)) (not (= lt!1402433 lt!1402469))))))

(assert (=> b!3985668 (= lt!1402425 lt!1402469)))

(declare-fun lt!1402417 () List!42746)

(assert (=> b!3985668 (= lt!1402469 (++!11140 lt!1402472 lt!1402417))))

(assert (=> b!3985668 (= lt!1402425 (++!11140 lt!1402465 suffix!1299))))

(assert (=> b!3985668 (= lt!1402417 (++!11140 lt!1402426 suffix!1299))))

(declare-fun lt!1402471 () Unit!61308)

(assert (=> b!3985668 (= lt!1402471 (lemmaConcatAssociativity!2460 lt!1402472 lt!1402426 suffix!1299))))

(declare-fun b!3985669 () Bool)

(assert (=> b!3985669 (= e!2470339 e!2470354)))

(declare-fun res!1616409 () Bool)

(assert (=> b!3985669 (=> res!1616409 e!2470354)))

(assert (=> b!3985669 (= res!1616409 (not (isPrefix!3825 lt!1402472 lt!1402433)))))

(assert (=> b!3985669 (isPrefix!3825 prefix!494 lt!1402433)))

(declare-fun lt!1402445 () Unit!61308)

(assert (=> b!3985669 (= lt!1402445 (lemmaConcatTwoListThenFirstIsPrefix!2668 prefix!494 suffix!1299))))

(assert (=> b!3985669 (isPrefix!3825 lt!1402472 lt!1402416)))

(declare-fun lt!1402421 () Unit!61308)

(assert (=> b!3985669 (= lt!1402421 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402472 suffixResult!105))))

(declare-fun b!3985670 () Bool)

(declare-fun tp!1214580 () Bool)

(declare-fun inv!56931 (String!48558) Bool)

(declare-fun inv!56935 (TokenValueInjection!13364) Bool)

(assert (=> b!3985670 (= e!2470343 (and tp!1214580 (inv!56931 (tag!7598 (rule!9750 token!484))) (inv!56935 (transformation!6738 (rule!9750 token!484))) e!2470332))))

(declare-fun b!3985671 () Bool)

(declare-fun e!2470344 () Bool)

(assert (=> b!3985671 (= e!2470347 e!2470344)))

(declare-fun res!1616419 () Bool)

(assert (=> b!3985671 (=> res!1616419 e!2470344)))

(declare-fun lt!1402450 () List!42746)

(assert (=> b!3985671 (= res!1616419 (not (= lt!1402450 lt!1402453)))))

(declare-fun lt!1402424 () List!42746)

(assert (=> b!3985671 (= lt!1402450 (++!11140 lt!1402438 lt!1402424))))

(assert (=> b!3985671 (= lt!1402424 (getSuffix!2256 lt!1402453 lt!1402438))))

(declare-fun b!3985672 () Bool)

(assert (=> b!3985672 (= e!2470338 e!2470330)))

(declare-fun res!1616410 () Bool)

(assert (=> b!3985672 (=> res!1616410 e!2470330)))

(assert (=> b!3985672 (= res!1616410 (not (= lt!1402439 suffix!1299)))))

(assert (=> b!3985672 (= lt!1402439 (++!11140 newSuffix!27 lt!1402437))))

(assert (=> b!3985672 (= lt!1402437 (getSuffix!2256 suffix!1299 newSuffix!27))))

(declare-fun b!3985673 () Bool)

(assert (=> b!3985673 (= e!2470344 e!2470349)))

(declare-fun res!1616401 () Bool)

(assert (=> b!3985673 (=> res!1616401 e!2470349)))

(assert (=> b!3985673 (= res!1616401 (<= lt!1402443 lt!1402431))))

(assert (=> b!3985673 (= (_2!24052 (v!39503 lt!1402430)) lt!1402424)))

(declare-fun lt!1402448 () Unit!61308)

(declare-fun lemmaSamePrefixThenSameSuffix!2012 (List!42746 List!42746 List!42746 List!42746 List!42746) Unit!61308)

(assert (=> b!3985673 (= lt!1402448 (lemmaSamePrefixThenSameSuffix!2012 lt!1402438 (_2!24052 (v!39503 lt!1402430)) lt!1402438 lt!1402424 lt!1402453))))

(assert (=> b!3985673 (isPrefix!3825 lt!1402438 lt!1402450)))

(declare-fun lt!1402468 () Unit!61308)

(assert (=> b!3985673 (= lt!1402468 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402438 lt!1402424))))

(declare-fun b!3985674 () Bool)

(assert (=> b!3985674 (= e!2470327 e!2470347)))

(declare-fun res!1616392 () Bool)

(assert (=> b!3985674 (=> res!1616392 e!2470347)))

(assert (=> b!3985674 (= res!1616392 (not (isPrefix!3825 lt!1402438 lt!1402433)))))

(assert (=> b!3985674 (isPrefix!3825 lt!1402438 lt!1402451)))

(declare-fun lt!1402458 () Unit!61308)

(assert (=> b!3985674 (= lt!1402458 (lemmaPrefixStaysPrefixWhenAddingToSuffix!658 lt!1402438 lt!1402453 lt!1402437))))

(declare-fun b!3985675 () Bool)

(declare-fun tp!1214588 () Bool)

(declare-fun e!2470324 () Bool)

(declare-fun e!2470331 () Bool)

(assert (=> b!3985675 (= e!2470324 (and tp!1214588 (inv!56931 (tag!7598 (h!48044 rules!2999))) (inv!56935 (transformation!6738 (h!48044 rules!2999))) e!2470331))))

(declare-fun b!3985676 () Bool)

(declare-fun tp!1214578 () Bool)

(assert (=> b!3985676 (= e!2470340 (and tp_is_empty!20257 tp!1214578))))

(declare-fun b!3985677 () Bool)

(assert (=> b!3985677 (= e!2470350 e!2470348)))

(declare-fun res!1616391 () Bool)

(assert (=> b!3985677 (=> res!1616391 e!2470348)))

(declare-fun lt!1402427 () Option!9152)

(assert (=> b!3985677 (= res!1616391 (not (= lt!1402427 lt!1402463)))))

(assert (=> b!3985677 (= lt!1402427 (Some!9151 (tuple2!41837 lt!1402457 suffixResult!105)))))

(assert (=> b!3985677 (= lt!1402427 (maxPrefixOneRule!2659 thiss!21717 (rule!9750 token!484) lt!1402433))))

(assert (=> b!3985677 (= lt!1402457 (Token!12615 lt!1402454 (rule!9750 token!484) lt!1402431 lt!1402472))))

(assert (=> b!3985677 (= lt!1402454 (apply!9949 (transformation!6738 (rule!9750 token!484)) lt!1402419))))

(assert (=> b!3985677 (= lt!1402419 (seqFromList!4977 lt!1402472))))

(declare-fun lt!1402467 () Unit!61308)

(assert (=> b!3985677 (= lt!1402467 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1481 thiss!21717 rules!2999 lt!1402472 lt!1402433 suffixResult!105 (rule!9750 token!484)))))

(assert (=> b!3985677 (= lt!1402417 suffixResult!105)))

(declare-fun lt!1402420 () Unit!61308)

(assert (=> b!3985677 (= lt!1402420 (lemmaSamePrefixThenSameSuffix!2012 lt!1402472 lt!1402417 lt!1402472 suffixResult!105 lt!1402433))))

(assert (=> b!3985677 (isPrefix!3825 lt!1402472 lt!1402469)))

(declare-fun lt!1402436 () Unit!61308)

(assert (=> b!3985677 (= lt!1402436 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402472 lt!1402417))))

(declare-fun b!3985678 () Bool)

(declare-fun res!1616414 () Bool)

(assert (=> b!3985678 (=> res!1616414 e!2470349)))

(assert (=> b!3985678 (= res!1616414 (not (contains!8483 rules!2999 (rule!9750 token!484))))))

(assert (=> b!3985679 (= e!2470331 (and tp!1214584 tp!1214589))))

(declare-fun b!3985680 () Bool)

(assert (=> b!3985680 (= e!2470326 e!2470335)))

(declare-fun res!1616405 () Bool)

(assert (=> b!3985680 (=> res!1616405 e!2470335)))

(assert (=> b!3985680 (= res!1616405 (not ((_ is Some!9151) lt!1402430)))))

(assert (=> b!3985680 (= lt!1402430 (maxPrefix!3625 thiss!21717 rules!2999 lt!1402453))))

(assert (=> b!3985680 (and (= suffixResult!105 lt!1402429) (= lt!1402462 (tuple2!41837 lt!1402457 lt!1402429)))))

(declare-fun lt!1402428 () Unit!61308)

(assert (=> b!3985680 (= lt!1402428 (lemmaSamePrefixThenSameSuffix!2012 lt!1402472 suffixResult!105 lt!1402472 lt!1402429 lt!1402433))))

(assert (=> b!3985680 (isPrefix!3825 lt!1402472 lt!1402456)))

(declare-fun lt!1402466 () Unit!61308)

(assert (=> b!3985680 (= lt!1402466 (lemmaConcatTwoListThenFirstIsPrefix!2668 lt!1402472 lt!1402429))))

(declare-fun b!3985681 () Bool)

(declare-fun tp!1214581 () Bool)

(assert (=> b!3985681 (= e!2470353 (and tp_is_empty!20257 tp!1214581))))

(declare-fun b!3985682 () Bool)

(declare-fun tp!1214583 () Bool)

(assert (=> b!3985682 (= e!2470328 (and e!2470324 tp!1214583))))

(assert (= (and start!375108 res!1616406) b!3985665))

(assert (= (and b!3985665 res!1616398) b!3985652))

(assert (= (and b!3985652 res!1616400) b!3985661))

(assert (= (and b!3985661 res!1616413) b!3985655))

(assert (= (and b!3985655 res!1616403) b!3985642))

(assert (= (and b!3985642 res!1616397) b!3985666))

(assert (= (and b!3985666 res!1616415) b!3985658))

(assert (= (and b!3985658 res!1616399) b!3985647))

(assert (= (and b!3985647 (not res!1616395)) b!3985669))

(assert (= (and b!3985669 (not res!1616409)) b!3985649))

(assert (= (and b!3985649 (not res!1616402)) b!3985668))

(assert (= (and b!3985668 (not res!1616407)) b!3985677))

(assert (= (and b!3985677 (not res!1616391)) b!3985654))

(assert (= (and b!3985654 (not res!1616411)) b!3985646))

(assert (= (and b!3985646 res!1616394) b!3985644))

(assert (= (and b!3985644 res!1616418) b!3985663))

(assert (= (and b!3985663 res!1616416) b!3985656))

(assert (= (and b!3985646 (not res!1616417)) b!3985680))

(assert (= (and b!3985680 (not res!1616405)) b!3985660))

(assert (= (and b!3985660 (not res!1616396)) b!3985672))

(assert (= (and b!3985672 (not res!1616410)) b!3985645))

(assert (= (and b!3985645 (not res!1616420)) b!3985674))

(assert (= (and b!3985674 (not res!1616392)) b!3985643))

(assert (= (and b!3985643 (not res!1616404)) b!3985671))

(assert (= (and b!3985671 (not res!1616419)) b!3985673))

(assert (= (and b!3985673 (not res!1616401)) b!3985648))

(assert (= (and b!3985648 (not res!1616408)) b!3985678))

(assert (= (and b!3985678 (not res!1616414)) b!3985653))

(assert (= (and b!3985653 (not res!1616412)) b!3985659))

(assert (= (and b!3985659 (not res!1616393)) b!3985650))

(assert (= (and start!375108 ((_ is Cons!42622) prefix!494)) b!3985681))

(assert (= b!3985670 b!3985667))

(assert (= b!3985664 b!3985670))

(assert (= start!375108 b!3985664))

(assert (= (and start!375108 ((_ is Cons!42622) suffixResult!105)) b!3985651))

(assert (= (and start!375108 ((_ is Cons!42622) suffix!1299)) b!3985676))

(assert (= (and start!375108 ((_ is Cons!42622) newSuffix!27)) b!3985662))

(assert (= b!3985675 b!3985679))

(assert (= b!3985682 b!3985675))

(assert (= (and start!375108 ((_ is Cons!42624) rules!2999)) b!3985682))

(assert (= (and start!375108 ((_ is Cons!42622) newSuffixResult!27)) b!3985657))

(declare-fun m!4561607 () Bool)

(assert (=> b!3985666 m!4561607))

(declare-fun m!4561609 () Bool)

(assert (=> b!3985666 m!4561609))

(declare-fun m!4561611 () Bool)

(assert (=> b!3985650 m!4561611))

(declare-fun m!4561613 () Bool)

(assert (=> b!3985673 m!4561613))

(declare-fun m!4561615 () Bool)

(assert (=> b!3985673 m!4561615))

(declare-fun m!4561617 () Bool)

(assert (=> b!3985673 m!4561617))

(declare-fun m!4561619 () Bool)

(assert (=> b!3985649 m!4561619))

(declare-fun m!4561621 () Bool)

(assert (=> b!3985649 m!4561621))

(declare-fun m!4561623 () Bool)

(assert (=> b!3985649 m!4561623))

(declare-fun m!4561625 () Bool)

(assert (=> b!3985649 m!4561625))

(declare-fun m!4561627 () Bool)

(assert (=> b!3985670 m!4561627))

(declare-fun m!4561629 () Bool)

(assert (=> b!3985670 m!4561629))

(declare-fun m!4561631 () Bool)

(assert (=> b!3985678 m!4561631))

(declare-fun m!4561633 () Bool)

(assert (=> b!3985675 m!4561633))

(declare-fun m!4561635 () Bool)

(assert (=> b!3985675 m!4561635))

(declare-fun m!4561637 () Bool)

(assert (=> b!3985668 m!4561637))

(declare-fun m!4561639 () Bool)

(assert (=> b!3985668 m!4561639))

(declare-fun m!4561641 () Bool)

(assert (=> b!3985668 m!4561641))

(declare-fun m!4561643 () Bool)

(assert (=> b!3985668 m!4561643))

(declare-fun m!4561645 () Bool)

(assert (=> b!3985647 m!4561645))

(declare-fun m!4561647 () Bool)

(assert (=> b!3985647 m!4561647))

(declare-fun m!4561649 () Bool)

(assert (=> b!3985647 m!4561649))

(declare-fun m!4561651 () Bool)

(assert (=> b!3985647 m!4561651))

(declare-fun m!4561653 () Bool)

(assert (=> b!3985655 m!4561653))

(declare-fun m!4561655 () Bool)

(assert (=> b!3985660 m!4561655))

(declare-fun m!4561657 () Bool)

(assert (=> b!3985660 m!4561657))

(declare-fun m!4561659 () Bool)

(assert (=> b!3985660 m!4561659))

(declare-fun m!4561661 () Bool)

(assert (=> b!3985660 m!4561661))

(declare-fun m!4561663 () Bool)

(assert (=> b!3985660 m!4561663))

(declare-fun m!4561665 () Bool)

(assert (=> b!3985660 m!4561665))

(assert (=> b!3985660 m!4561659))

(declare-fun m!4561667 () Bool)

(assert (=> b!3985660 m!4561667))

(declare-fun m!4561669 () Bool)

(assert (=> b!3985660 m!4561669))

(declare-fun m!4561671 () Bool)

(assert (=> b!3985660 m!4561671))

(assert (=> b!3985660 m!4561657))

(declare-fun m!4561673 () Bool)

(assert (=> b!3985660 m!4561673))

(declare-fun m!4561675 () Bool)

(assert (=> b!3985660 m!4561675))

(declare-fun m!4561677 () Bool)

(assert (=> b!3985660 m!4561677))

(declare-fun m!4561679 () Bool)

(assert (=> b!3985660 m!4561679))

(declare-fun m!4561681 () Bool)

(assert (=> b!3985660 m!4561681))

(declare-fun m!4561683 () Bool)

(assert (=> b!3985660 m!4561683))

(assert (=> b!3985660 m!4561677))

(declare-fun m!4561685 () Bool)

(assert (=> b!3985660 m!4561685))

(declare-fun m!4561687 () Bool)

(assert (=> b!3985660 m!4561687))

(declare-fun m!4561689 () Bool)

(assert (=> b!3985660 m!4561689))

(declare-fun m!4561691 () Bool)

(assert (=> b!3985645 m!4561691))

(declare-fun m!4561693 () Bool)

(assert (=> b!3985645 m!4561693))

(declare-fun m!4561695 () Bool)

(assert (=> b!3985645 m!4561695))

(declare-fun m!4561697 () Bool)

(assert (=> b!3985642 m!4561697))

(declare-fun m!4561699 () Bool)

(assert (=> b!3985642 m!4561699))

(declare-fun m!4561701 () Bool)

(assert (=> b!3985642 m!4561701))

(assert (=> b!3985642 m!4561701))

(declare-fun m!4561703 () Bool)

(assert (=> b!3985642 m!4561703))

(declare-fun m!4561705 () Bool)

(assert (=> b!3985665 m!4561705))

(declare-fun m!4561707 () Bool)

(assert (=> b!3985672 m!4561707))

(declare-fun m!4561709 () Bool)

(assert (=> b!3985672 m!4561709))

(declare-fun m!4561711 () Bool)

(assert (=> b!3985653 m!4561711))

(declare-fun m!4561713 () Bool)

(assert (=> b!3985671 m!4561713))

(declare-fun m!4561715 () Bool)

(assert (=> b!3985671 m!4561715))

(declare-fun m!4561717 () Bool)

(assert (=> b!3985661 m!4561717))

(declare-fun m!4561719 () Bool)

(assert (=> b!3985661 m!4561719))

(declare-fun m!4561721 () Bool)

(assert (=> start!375108 m!4561721))

(declare-fun m!4561723 () Bool)

(assert (=> b!3985680 m!4561723))

(declare-fun m!4561725 () Bool)

(assert (=> b!3985680 m!4561725))

(declare-fun m!4561727 () Bool)

(assert (=> b!3985680 m!4561727))

(declare-fun m!4561729 () Bool)

(assert (=> b!3985680 m!4561729))

(declare-fun m!4561731 () Bool)

(assert (=> b!3985669 m!4561731))

(declare-fun m!4561733 () Bool)

(assert (=> b!3985669 m!4561733))

(declare-fun m!4561735 () Bool)

(assert (=> b!3985669 m!4561735))

(declare-fun m!4561737 () Bool)

(assert (=> b!3985669 m!4561737))

(declare-fun m!4561739 () Bool)

(assert (=> b!3985669 m!4561739))

(declare-fun m!4561741 () Bool)

(assert (=> b!3985658 m!4561741))

(declare-fun m!4561743 () Bool)

(assert (=> b!3985658 m!4561743))

(declare-fun m!4561745 () Bool)

(assert (=> b!3985652 m!4561745))

(declare-fun m!4561747 () Bool)

(assert (=> b!3985664 m!4561747))

(declare-fun m!4561749 () Bool)

(assert (=> b!3985654 m!4561749))

(declare-fun m!4561751 () Bool)

(assert (=> b!3985654 m!4561751))

(declare-fun m!4561753 () Bool)

(assert (=> b!3985654 m!4561753))

(declare-fun m!4561755 () Bool)

(assert (=> b!3985654 m!4561755))

(declare-fun m!4561757 () Bool)

(assert (=> b!3985663 m!4561757))

(declare-fun m!4561759 () Bool)

(assert (=> b!3985648 m!4561759))

(declare-fun m!4561761 () Bool)

(assert (=> b!3985674 m!4561761))

(declare-fun m!4561763 () Bool)

(assert (=> b!3985674 m!4561763))

(declare-fun m!4561765 () Bool)

(assert (=> b!3985674 m!4561765))

(declare-fun m!4561767 () Bool)

(assert (=> b!3985677 m!4561767))

(declare-fun m!4561769 () Bool)

(assert (=> b!3985677 m!4561769))

(declare-fun m!4561771 () Bool)

(assert (=> b!3985677 m!4561771))

(declare-fun m!4561773 () Bool)

(assert (=> b!3985677 m!4561773))

(declare-fun m!4561775 () Bool)

(assert (=> b!3985677 m!4561775))

(declare-fun m!4561777 () Bool)

(assert (=> b!3985677 m!4561777))

(declare-fun m!4561779 () Bool)

(assert (=> b!3985677 m!4561779))

(declare-fun m!4561781 () Bool)

(assert (=> b!3985646 m!4561781))

(declare-fun m!4561783 () Bool)

(assert (=> b!3985646 m!4561783))

(declare-fun m!4561785 () Bool)

(assert (=> b!3985646 m!4561785))

(declare-fun m!4561787 () Bool)

(assert (=> b!3985646 m!4561787))

(check-sat (not b!3985651) (not b!3985661) (not b!3985670) b_and!306303 (not b!3985676) (not b!3985647) (not b!3985655) (not b!3985663) (not b_next!111377) (not b!3985669) (not b!3985658) (not b!3985660) (not b_next!111381) (not b!3985650) (not b!3985654) (not b_next!111383) (not b!3985672) (not b!3985677) b_and!306307 (not b!3985675) (not b!3985662) (not b!3985645) (not b!3985665) (not b!3985668) (not b!3985653) (not b!3985646) b_and!306309 (not b!3985648) (not b!3985671) (not b!3985673) (not b!3985649) (not b!3985681) (not b!3985666) (not b!3985680) (not b!3985664) (not b_next!111379) (not b!3985642) (not b!3985678) b_and!306305 (not start!375108) (not b!3985652) (not b!3985674) (not b!3985657) (not b!3985682) tp_is_empty!20257)
(check-sat (not b_next!111381) (not b_next!111383) b_and!306307 b_and!306309 (not b_next!111379) b_and!306305 b_and!306303 (not b_next!111377))
