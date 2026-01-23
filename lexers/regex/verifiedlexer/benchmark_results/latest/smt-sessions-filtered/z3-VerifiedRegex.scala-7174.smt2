; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!381772 () Bool)

(assert start!381772)

(declare-fun b!4048507 () Bool)

(declare-fun b_free!112681 () Bool)

(declare-fun b_next!113385 () Bool)

(assert (=> b!4048507 (= b_free!112681 (not b_next!113385))))

(declare-fun tp!1228107 () Bool)

(declare-fun b_and!311347 () Bool)

(assert (=> b!4048507 (= tp!1228107 b_and!311347)))

(declare-fun b_free!112683 () Bool)

(declare-fun b_next!113387 () Bool)

(assert (=> b!4048507 (= b_free!112683 (not b_next!113387))))

(declare-fun tp!1228098 () Bool)

(declare-fun b_and!311349 () Bool)

(assert (=> b!4048507 (= tp!1228098 b_and!311349)))

(declare-fun b!4048534 () Bool)

(declare-fun b_free!112685 () Bool)

(declare-fun b_next!113389 () Bool)

(assert (=> b!4048534 (= b_free!112685 (not b_next!113389))))

(declare-fun tp!1228099 () Bool)

(declare-fun b_and!311351 () Bool)

(assert (=> b!4048534 (= tp!1228099 b_and!311351)))

(declare-fun b_free!112687 () Bool)

(declare-fun b_next!113391 () Bool)

(assert (=> b!4048534 (= b_free!112687 (not b_next!113391))))

(declare-fun tp!1228100 () Bool)

(declare-fun b_and!311353 () Bool)

(assert (=> b!4048534 (= tp!1228100 b_and!311353)))

(declare-fun b!4048504 () Bool)

(declare-fun e!2512002 () Bool)

(declare-fun e!2512032 () Bool)

(assert (=> b!4048504 (= e!2512002 e!2512032)))

(declare-fun res!1649480 () Bool)

(assert (=> b!4048504 (=> res!1649480 e!2512032)))

(declare-datatypes ((C!23868 0))(
  ( (C!23869 (val!14028 Int)) )
))
(declare-datatypes ((List!43413 0))(
  ( (Nil!43289) (Cons!43289 (h!48709 C!23868) (t!335768 List!43413)) )
))
(declare-datatypes ((IArray!26299 0))(
  ( (IArray!26300 (innerList!13207 List!43413)) )
))
(declare-datatypes ((Conc!13147 0))(
  ( (Node!13147 (left!32601 Conc!13147) (right!32931 Conc!13147) (csize!26524 Int) (cheight!13358 Int)) (Leaf!20322 (xs!16453 IArray!26299) (csize!26525 Int)) (Empty!13147) )
))
(declare-datatypes ((BalanceConc!25888 0))(
  ( (BalanceConc!25889 (c!699442 Conc!13147)) )
))
(declare-datatypes ((List!43414 0))(
  ( (Nil!43290) (Cons!43290 (h!48710 (_ BitVec 16)) (t!335769 List!43414)) )
))
(declare-datatypes ((TokenValue!7166 0))(
  ( (FloatLiteralValue!14332 (text!50607 List!43414)) (TokenValueExt!7165 (__x!26549 Int)) (Broken!35830 (value!218284 List!43414)) (Object!7289) (End!7166) (Def!7166) (Underscore!7166) (Match!7166) (Else!7166) (Error!7166) (Case!7166) (If!7166) (Extends!7166) (Abstract!7166) (Class!7166) (Val!7166) (DelimiterValue!14332 (del!7226 List!43414)) (KeywordValue!7172 (value!218285 List!43414)) (CommentValue!14332 (value!218286 List!43414)) (WhitespaceValue!14332 (value!218287 List!43414)) (IndentationValue!7166 (value!218288 List!43414)) (String!49547) (Int32!7166) (Broken!35831 (value!218289 List!43414)) (Boolean!7167) (Unit!62554) (OperatorValue!7169 (op!7226 List!43414)) (IdentifierValue!14332 (value!218290 List!43414)) (IdentifierValue!14333 (value!218291 List!43414)) (WhitespaceValue!14333 (value!218292 List!43414)) (True!14332) (False!14332) (Broken!35832 (value!218293 List!43414)) (Broken!35833 (value!218294 List!43414)) (True!14333) (RightBrace!7166) (RightBracket!7166) (Colon!7166) (Null!7166) (Comma!7166) (LeftBracket!7166) (False!14333) (LeftBrace!7166) (ImaginaryLiteralValue!7166 (text!50608 List!43414)) (StringLiteralValue!21498 (value!218295 List!43414)) (EOFValue!7166 (value!218296 List!43414)) (IdentValue!7166 (value!218297 List!43414)) (DelimiterValue!14333 (value!218298 List!43414)) (DedentValue!7166 (value!218299 List!43414)) (NewLineValue!7166 (value!218300 List!43414)) (IntegerValue!21498 (value!218301 (_ BitVec 32)) (text!50609 List!43414)) (IntegerValue!21499 (value!218302 Int) (text!50610 List!43414)) (Times!7166) (Or!7166) (Equal!7166) (Minus!7166) (Broken!35834 (value!218303 List!43414)) (And!7166) (Div!7166) (LessEqual!7166) (Mod!7166) (Concat!19007) (Not!7166) (Plus!7166) (SpaceValue!7166 (value!218304 List!43414)) (IntegerValue!21500 (value!218305 Int) (text!50611 List!43414)) (StringLiteralValue!21499 (text!50612 List!43414)) (FloatLiteralValue!14333 (text!50613 List!43414)) (BytesLiteralValue!7166 (value!218306 List!43414)) (CommentValue!14333 (value!218307 List!43414)) (StringLiteralValue!21500 (value!218308 List!43414)) (ErrorTokenValue!7166 (msg!7227 List!43414)) )
))
(declare-datatypes ((Regex!11841 0))(
  ( (ElementMatch!11841 (c!699443 C!23868)) (Concat!19008 (regOne!24194 Regex!11841) (regTwo!24194 Regex!11841)) (EmptyExpr!11841) (Star!11841 (reg!12170 Regex!11841)) (EmptyLang!11841) (Union!11841 (regOne!24195 Regex!11841) (regTwo!24195 Regex!11841)) )
))
(declare-datatypes ((String!49548 0))(
  ( (String!49549 (value!218309 String)) )
))
(declare-datatypes ((TokenValueInjection!13760 0))(
  ( (TokenValueInjection!13761 (toValue!9488 Int) (toChars!9347 Int)) )
))
(declare-datatypes ((Rule!13672 0))(
  ( (Rule!13673 (regex!6936 Regex!11841) (tag!7796 String!49548) (isSeparator!6936 Bool) (transformation!6936 TokenValueInjection!13760)) )
))
(declare-datatypes ((Token!13010 0))(
  ( (Token!13011 (value!218310 TokenValue!7166) (rule!10014 Rule!13672) (size!32365 Int) (originalCharacters!7536 List!43413)) )
))
(declare-fun token!484 () Token!13010)

(declare-fun lt!1442546 () List!43413)

(declare-fun matchR!5794 (Regex!11841 List!43413) Bool)

(assert (=> b!4048504 (= res!1649480 (not (matchR!5794 (regex!6936 (rule!10014 token!484)) lt!1442546)))))

(declare-fun lt!1442539 () List!43413)

(declare-fun isPrefix!4023 (List!43413 List!43413) Bool)

(assert (=> b!4048504 (isPrefix!4023 lt!1442546 lt!1442539)))

(declare-fun prefix!494 () List!43413)

(declare-fun newSuffix!27 () List!43413)

(declare-datatypes ((Unit!62555 0))(
  ( (Unit!62556) )
))
(declare-fun lt!1442529 () Unit!62555)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!816 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> b!4048504 (= lt!1442529 (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442546 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43413)

(declare-fun lt!1442541 () Unit!62555)

(assert (=> b!4048504 (= lt!1442541 (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442546 prefix!494 suffix!1299))))

(declare-fun b!4048505 () Bool)

(declare-fun res!1649481 () Bool)

(declare-fun e!2512014 () Bool)

(assert (=> b!4048505 (=> (not res!1649481) (not e!2512014))))

(declare-datatypes ((List!43415 0))(
  ( (Nil!43291) (Cons!43291 (h!48711 Rule!13672) (t!335770 List!43415)) )
))
(declare-fun rules!2999 () List!43415)

(declare-fun isEmpty!25833 (List!43415) Bool)

(assert (=> b!4048505 (= res!1649481 (not (isEmpty!25833 rules!2999)))))

(declare-fun b!4048506 () Bool)

(declare-fun e!2512028 () Bool)

(assert (=> b!4048506 (= e!2512014 e!2512028)))

(declare-fun res!1649471 () Bool)

(assert (=> b!4048506 (=> (not res!1649471) (not e!2512028))))

(declare-fun lt!1442572 () Int)

(declare-fun lt!1442524 () Int)

(assert (=> b!4048506 (= res!1649471 (>= lt!1442572 lt!1442524))))

(declare-fun size!32366 (List!43413) Int)

(assert (=> b!4048506 (= lt!1442524 (size!32366 lt!1442546))))

(assert (=> b!4048506 (= lt!1442572 (size!32366 prefix!494))))

(declare-fun list!16126 (BalanceConc!25888) List!43413)

(declare-fun charsOf!4752 (Token!13010) BalanceConc!25888)

(assert (=> b!4048506 (= lt!1442546 (list!16126 (charsOf!4752 token!484)))))

(declare-fun e!2512007 () Bool)

(assert (=> b!4048507 (= e!2512007 (and tp!1228107 tp!1228098))))

(declare-fun b!4048508 () Bool)

(declare-fun e!2512001 () Bool)

(declare-fun e!2512000 () Bool)

(assert (=> b!4048508 (= e!2512001 e!2512000)))

(declare-fun res!1649470 () Bool)

(assert (=> b!4048508 (=> res!1649470 e!2512000)))

(declare-datatypes ((tuple2!42362 0))(
  ( (tuple2!42363 (_1!24315 Token!13010) (_2!24315 List!43413)) )
))
(declare-datatypes ((Option!9350 0))(
  ( (None!9349) (Some!9349 (v!39755 tuple2!42362)) )
))
(declare-fun lt!1442568 () Option!9350)

(declare-fun lt!1442555 () Option!9350)

(assert (=> b!4048508 (= res!1649470 (not (= lt!1442568 (Some!9349 (v!39755 lt!1442555)))))))

(declare-fun lt!1442536 () List!43413)

(declare-fun newSuffixResult!27 () List!43413)

(declare-fun ++!11338 (List!43413 List!43413) List!43413)

(assert (=> b!4048508 (isPrefix!4023 lt!1442536 (++!11338 lt!1442536 newSuffixResult!27))))

(declare-fun lt!1442526 () Unit!62555)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2858 (List!43413 List!43413) Unit!62555)

(assert (=> b!4048508 (= lt!1442526 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 newSuffixResult!27))))

(declare-fun lt!1442545 () List!43413)

(assert (=> b!4048508 (isPrefix!4023 lt!1442536 lt!1442545)))

(assert (=> b!4048508 (= lt!1442545 (++!11338 lt!1442536 (_2!24315 (v!39755 lt!1442555))))))

(declare-fun lt!1442534 () Unit!62555)

(assert (=> b!4048508 (= lt!1442534 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 (_2!24315 (v!39755 lt!1442555))))))

(declare-fun lt!1442544 () Int)

(declare-fun lt!1442569 () TokenValue!7166)

(assert (=> b!4048508 (= lt!1442568 (Some!9349 (tuple2!42363 (Token!13011 lt!1442569 (rule!10014 (_1!24315 (v!39755 lt!1442555))) lt!1442544 lt!1442536) (_2!24315 (v!39755 lt!1442555)))))))

(declare-datatypes ((LexerInterface!6525 0))(
  ( (LexerInterfaceExt!6522 (__x!26550 Int)) (Lexer!6523) )
))
(declare-fun thiss!21717 () LexerInterface!6525)

(declare-fun maxPrefixOneRule!2835 (LexerInterface!6525 Rule!13672 List!43413) Option!9350)

(assert (=> b!4048508 (= lt!1442568 (maxPrefixOneRule!2835 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) lt!1442539))))

(assert (=> b!4048508 (= lt!1442544 (size!32366 lt!1442536))))

(declare-fun apply!10125 (TokenValueInjection!13760 BalanceConc!25888) TokenValue!7166)

(declare-fun seqFromList!5153 (List!43413) BalanceConc!25888)

(assert (=> b!4048508 (= lt!1442569 (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (seqFromList!5153 lt!1442536)))))

(declare-fun lt!1442531 () Unit!62555)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1641 (LexerInterface!6525 List!43415 List!43413 List!43413 List!43413 Rule!13672) Unit!62555)

(assert (=> b!4048508 (= lt!1442531 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1641 thiss!21717 rules!2999 lt!1442536 lt!1442539 (_2!24315 (v!39755 lt!1442555)) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(assert (=> b!4048508 (= lt!1442536 (list!16126 (charsOf!4752 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun lt!1442562 () Unit!62555)

(declare-fun lemmaInv!1145 (TokenValueInjection!13760) Unit!62555)

(assert (=> b!4048508 (= lt!1442562 (lemmaInv!1145 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))

(declare-fun ruleValid!2866 (LexerInterface!6525 Rule!13672) Bool)

(assert (=> b!4048508 (ruleValid!2866 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))

(declare-fun lt!1442550 () Unit!62555)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1936 (LexerInterface!6525 Rule!13672 List!43415) Unit!62555)

(assert (=> b!4048508 (= lt!1442550 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1936 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) rules!2999))))

(declare-fun lt!1442573 () Unit!62555)

(declare-fun lemmaCharactersSize!1455 (Token!13010) Unit!62555)

(assert (=> b!4048508 (= lt!1442573 (lemmaCharactersSize!1455 token!484))))

(declare-fun lt!1442565 () Unit!62555)

(assert (=> b!4048508 (= lt!1442565 (lemmaCharactersSize!1455 (_1!24315 (v!39755 lt!1442555))))))

(declare-fun b!4048509 () Bool)

(declare-fun e!2512009 () Bool)

(declare-fun e!2512011 () Bool)

(assert (=> b!4048509 (= e!2512009 e!2512011)))

(declare-fun res!1649482 () Bool)

(assert (=> b!4048509 (=> res!1649482 e!2512011)))

(declare-fun lt!1442553 () List!43413)

(assert (=> b!4048509 (= res!1649482 (not (= lt!1442553 prefix!494)))))

(declare-fun lt!1442560 () List!43413)

(assert (=> b!4048509 (= lt!1442553 (++!11338 lt!1442546 lt!1442560))))

(declare-fun getSuffix!2440 (List!43413 List!43413) List!43413)

(assert (=> b!4048509 (= lt!1442560 (getSuffix!2440 prefix!494 lt!1442546))))

(assert (=> b!4048509 (isPrefix!4023 lt!1442546 prefix!494)))

(declare-fun lt!1442532 () Unit!62555)

(declare-fun lt!1442575 () List!43413)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!587 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> b!4048509 (= lt!1442532 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!587 prefix!494 lt!1442546 lt!1442575))))

(declare-fun b!4048511 () Bool)

(declare-fun e!2512005 () Bool)

(assert (=> b!4048511 (= e!2512000 e!2512005)))

(declare-fun res!1649466 () Bool)

(assert (=> b!4048511 (=> res!1649466 e!2512005)))

(declare-fun lt!1442522 () List!43413)

(assert (=> b!4048511 (= res!1649466 (not (= lt!1442522 suffix!1299)))))

(declare-fun lt!1442533 () List!43413)

(assert (=> b!4048511 (= lt!1442522 (++!11338 newSuffix!27 lt!1442533))))

(assert (=> b!4048511 (= lt!1442533 (getSuffix!2440 suffix!1299 newSuffix!27))))

(declare-fun b!4048512 () Bool)

(declare-fun e!2512004 () Bool)

(declare-fun e!2512012 () Bool)

(assert (=> b!4048512 (= e!2512004 (not e!2512012))))

(declare-fun res!1649474 () Bool)

(assert (=> b!4048512 (=> res!1649474 e!2512012)))

(declare-fun lt!1442528 () List!43413)

(assert (=> b!4048512 (= res!1649474 (not (= lt!1442528 lt!1442575)))))

(declare-fun suffixResult!105 () List!43413)

(assert (=> b!4048512 (= lt!1442528 (++!11338 lt!1442546 suffixResult!105))))

(declare-fun lt!1442537 () Unit!62555)

(assert (=> b!4048512 (= lt!1442537 (lemmaInv!1145 (transformation!6936 (rule!10014 token!484))))))

(assert (=> b!4048512 (ruleValid!2866 thiss!21717 (rule!10014 token!484))))

(declare-fun lt!1442549 () Unit!62555)

(assert (=> b!4048512 (= lt!1442549 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1936 thiss!21717 (rule!10014 token!484) rules!2999))))

(declare-fun b!4048513 () Bool)

(declare-fun e!2512021 () Bool)

(assert (=> b!4048513 (= e!2512028 e!2512021)))

(declare-fun res!1649489 () Bool)

(assert (=> b!4048513 (=> (not res!1649489) (not e!2512021))))

(declare-fun lt!1442530 () List!43413)

(assert (=> b!4048513 (= res!1649489 (= lt!1442530 lt!1442539))))

(assert (=> b!4048513 (= lt!1442539 (++!11338 prefix!494 newSuffix!27))))

(assert (=> b!4048513 (= lt!1442530 (++!11338 lt!1442546 newSuffixResult!27))))

(declare-fun b!4048514 () Bool)

(declare-fun res!1649486 () Bool)

(declare-fun e!2512029 () Bool)

(assert (=> b!4048514 (=> res!1649486 e!2512029)))

(assert (=> b!4048514 (= res!1649486 (not (isPrefix!4023 lt!1442536 lt!1442539)))))

(declare-fun b!4048515 () Bool)

(declare-fun e!2512025 () Bool)

(assert (=> b!4048515 (= e!2512032 e!2512025)))

(declare-fun res!1649485 () Bool)

(assert (=> b!4048515 (=> res!1649485 e!2512025)))

(declare-fun lt!1442547 () List!43413)

(assert (=> b!4048515 (= res!1649485 (not (= lt!1442547 lt!1442575)))))

(declare-fun lt!1442542 () List!43413)

(assert (=> b!4048515 (= lt!1442547 (++!11338 lt!1442546 lt!1442542))))

(assert (=> b!4048515 (= lt!1442542 (getSuffix!2440 lt!1442575 lt!1442546))))

(declare-fun e!2512020 () Bool)

(assert (=> b!4048515 e!2512020))

(declare-fun res!1649469 () Bool)

(assert (=> b!4048515 (=> (not res!1649469) (not e!2512020))))

(assert (=> b!4048515 (= res!1649469 (isPrefix!4023 lt!1442575 lt!1442575))))

(declare-fun lt!1442535 () Unit!62555)

(declare-fun lemmaIsPrefixRefl!2590 (List!43413 List!43413) Unit!62555)

(assert (=> b!4048515 (= lt!1442535 (lemmaIsPrefixRefl!2590 lt!1442575 lt!1442575))))

(declare-fun b!4048516 () Bool)

(declare-fun res!1649463 () Bool)

(assert (=> b!4048516 (=> (not res!1649463) (not e!2512014))))

(assert (=> b!4048516 (= res!1649463 (>= (size!32366 suffix!1299) (size!32366 newSuffix!27)))))

(declare-fun b!4048517 () Bool)

(declare-fun e!2512017 () Unit!62555)

(declare-fun Unit!62557 () Unit!62555)

(assert (=> b!4048517 (= e!2512017 Unit!62557)))

(declare-fun lt!1442521 () Unit!62555)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!462 (LexerInterface!6525 List!43415 Rule!13672 List!43413 List!43413 List!43413 Rule!13672) Unit!62555)

(assert (=> b!4048517 (= lt!1442521 (lemmaMaxPrefixOutputsMaxPrefix!462 thiss!21717 rules!2999 (rule!10014 token!484) lt!1442546 lt!1442575 lt!1442536 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun res!1649479 () Bool)

(assert (=> b!4048517 (= res!1649479 (not (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442536)))))

(declare-fun e!2512023 () Bool)

(assert (=> b!4048517 (=> (not res!1649479) (not e!2512023))))

(assert (=> b!4048517 e!2512023))

(declare-fun b!4048518 () Bool)

(declare-fun e!2512031 () Bool)

(declare-fun e!2512034 () Bool)

(declare-fun tp!1228106 () Bool)

(assert (=> b!4048518 (= e!2512031 (and e!2512034 tp!1228106))))

(declare-fun b!4048519 () Bool)

(assert (=> b!4048519 (= e!2512020 (and (= (size!32365 token!484) lt!1442524) (= (originalCharacters!7536 token!484) lt!1442546)))))

(declare-fun b!4048520 () Bool)

(declare-fun res!1649476 () Bool)

(assert (=> b!4048520 (=> (not res!1649476) (not e!2512020))))

(assert (=> b!4048520 (= res!1649476 (= (size!32365 token!484) (size!32366 (originalCharacters!7536 token!484))))))

(declare-fun b!4048521 () Bool)

(declare-fun e!2512015 () Bool)

(declare-fun tp_is_empty!20653 () Bool)

(declare-fun tp!1228110 () Bool)

(assert (=> b!4048521 (= e!2512015 (and tp_is_empty!20653 tp!1228110))))

(declare-fun b!4048522 () Bool)

(declare-fun e!2512030 () Bool)

(declare-fun e!2512033 () Bool)

(assert (=> b!4048522 (= e!2512030 e!2512033)))

(declare-fun res!1649472 () Bool)

(assert (=> b!4048522 (=> res!1649472 e!2512033)))

(assert (=> b!4048522 (= res!1649472 (not (isPrefix!4023 lt!1442536 lt!1442575)))))

(declare-fun lt!1442523 () List!43413)

(assert (=> b!4048522 (isPrefix!4023 lt!1442536 lt!1442523)))

(declare-fun lt!1442571 () Unit!62555)

(assert (=> b!4048522 (= lt!1442571 (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442536 lt!1442539 lt!1442533))))

(declare-fun b!4048523 () Bool)

(declare-fun res!1649488 () Bool)

(assert (=> b!4048523 (=> (not res!1649488) (not e!2512020))))

(declare-fun lt!1442576 () TokenValue!7166)

(assert (=> b!4048523 (= res!1649488 (= (value!218310 token!484) lt!1442576))))

(declare-fun b!4048524 () Bool)

(declare-fun e!2512013 () Bool)

(assert (=> b!4048524 (= e!2512011 e!2512013)))

(declare-fun res!1649487 () Bool)

(assert (=> b!4048524 (=> res!1649487 e!2512013)))

(declare-fun lt!1442561 () List!43413)

(declare-fun lt!1442525 () List!43413)

(assert (=> b!4048524 (= res!1649487 (or (not (= lt!1442575 lt!1442561)) (not (= lt!1442575 lt!1442525))))))

(assert (=> b!4048524 (= lt!1442561 lt!1442525)))

(declare-fun lt!1442554 () List!43413)

(assert (=> b!4048524 (= lt!1442525 (++!11338 lt!1442546 lt!1442554))))

(assert (=> b!4048524 (= lt!1442561 (++!11338 lt!1442553 suffix!1299))))

(assert (=> b!4048524 (= lt!1442554 (++!11338 lt!1442560 suffix!1299))))

(declare-fun lt!1442538 () Unit!62555)

(declare-fun lemmaConcatAssociativity!2640 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> b!4048524 (= lt!1442538 (lemmaConcatAssociativity!2640 lt!1442546 lt!1442560 suffix!1299))))

(declare-fun b!4048525 () Bool)

(declare-fun e!2512003 () Bool)

(assert (=> b!4048525 (= e!2512003 e!2512029)))

(declare-fun res!1649467 () Bool)

(assert (=> b!4048525 (=> res!1649467 e!2512029)))

(assert (=> b!4048525 (= res!1649467 (>= lt!1442544 lt!1442524))))

(declare-fun lt!1442543 () Unit!62555)

(assert (=> b!4048525 (= lt!1442543 e!2512017)))

(declare-fun c!699441 () Bool)

(assert (=> b!4048525 (= c!699441 (> lt!1442544 lt!1442524))))

(declare-fun lt!1442552 () List!43413)

(assert (=> b!4048525 (= (_2!24315 (v!39755 lt!1442555)) lt!1442552)))

(declare-fun lt!1442548 () Unit!62555)

(declare-fun lemmaSamePrefixThenSameSuffix!2184 (List!43413 List!43413 List!43413 List!43413 List!43413) Unit!62555)

(assert (=> b!4048525 (= lt!1442548 (lemmaSamePrefixThenSameSuffix!2184 lt!1442536 (_2!24315 (v!39755 lt!1442555)) lt!1442536 lt!1442552 lt!1442539))))

(declare-fun lt!1442564 () List!43413)

(assert (=> b!4048525 (isPrefix!4023 lt!1442536 lt!1442564)))

(declare-fun lt!1442567 () Unit!62555)

(assert (=> b!4048525 (= lt!1442567 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 lt!1442552))))

(declare-fun b!4048526 () Bool)

(declare-fun Unit!62558 () Unit!62555)

(assert (=> b!4048526 (= e!2512017 Unit!62558)))

(declare-fun b!4048527 () Bool)

(declare-fun res!1649484 () Bool)

(assert (=> b!4048527 (=> (not res!1649484) (not e!2512014))))

(declare-fun rulesInvariant!5868 (LexerInterface!6525 List!43415) Bool)

(assert (=> b!4048527 (= res!1649484 (rulesInvariant!5868 thiss!21717 rules!2999))))

(declare-fun b!4048528 () Bool)

(declare-fun contains!8608 (List!43415 Rule!13672) Bool)

(assert (=> b!4048528 (= e!2512029 (contains!8608 rules!2999 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun b!4048529 () Bool)

(assert (=> b!4048529 (= e!2512005 e!2512030)))

(declare-fun res!1649468 () Bool)

(assert (=> b!4048529 (=> res!1649468 e!2512030)))

(assert (=> b!4048529 (= res!1649468 (not (= lt!1442523 lt!1442575)))))

(assert (=> b!4048529 (= lt!1442523 (++!11338 prefix!494 lt!1442522))))

(assert (=> b!4048529 (= lt!1442523 (++!11338 lt!1442539 lt!1442533))))

(declare-fun lt!1442574 () Unit!62555)

(assert (=> b!4048529 (= lt!1442574 (lemmaConcatAssociativity!2640 prefix!494 newSuffix!27 lt!1442533))))

(declare-fun b!4048530 () Bool)

(assert (=> b!4048530 (= e!2512012 e!2512009)))

(declare-fun res!1649477 () Bool)

(assert (=> b!4048530 (=> res!1649477 e!2512009)))

(assert (=> b!4048530 (= res!1649477 (not (isPrefix!4023 lt!1442546 lt!1442575)))))

(assert (=> b!4048530 (isPrefix!4023 prefix!494 lt!1442575)))

(declare-fun lt!1442558 () Unit!62555)

(assert (=> b!4048530 (= lt!1442558 (lemmaConcatTwoListThenFirstIsPrefix!2858 prefix!494 suffix!1299))))

(assert (=> b!4048530 (isPrefix!4023 lt!1442546 lt!1442528)))

(declare-fun lt!1442577 () Unit!62555)

(assert (=> b!4048530 (= lt!1442577 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 suffixResult!105))))

(declare-fun tp!1228103 () Bool)

(declare-fun e!2512006 () Bool)

(declare-fun b!4048531 () Bool)

(declare-fun e!2512022 () Bool)

(declare-fun inv!21 (TokenValue!7166) Bool)

(assert (=> b!4048531 (= e!2512006 (and (inv!21 (value!218310 token!484)) e!2512022 tp!1228103))))

(declare-fun b!4048532 () Bool)

(assert (=> b!4048532 (= e!2512013 e!2512002)))

(declare-fun res!1649478 () Bool)

(assert (=> b!4048532 (=> res!1649478 e!2512002)))

(declare-fun lt!1442557 () Option!9350)

(declare-fun lt!1442566 () Option!9350)

(assert (=> b!4048532 (= res!1649478 (not (= lt!1442557 lt!1442566)))))

(declare-fun lt!1442559 () Token!13010)

(assert (=> b!4048532 (= lt!1442557 (Some!9349 (tuple2!42363 lt!1442559 suffixResult!105)))))

(assert (=> b!4048532 (= lt!1442557 (maxPrefixOneRule!2835 thiss!21717 (rule!10014 token!484) lt!1442575))))

(assert (=> b!4048532 (= lt!1442559 (Token!13011 lt!1442576 (rule!10014 token!484) lt!1442524 lt!1442546))))

(assert (=> b!4048532 (= lt!1442576 (apply!10125 (transformation!6936 (rule!10014 token!484)) (seqFromList!5153 lt!1442546)))))

(declare-fun lt!1442563 () Unit!62555)

(assert (=> b!4048532 (= lt!1442563 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1641 thiss!21717 rules!2999 lt!1442546 lt!1442575 suffixResult!105 (rule!10014 token!484)))))

(assert (=> b!4048532 (= lt!1442554 suffixResult!105)))

(declare-fun lt!1442540 () Unit!62555)

(assert (=> b!4048532 (= lt!1442540 (lemmaSamePrefixThenSameSuffix!2184 lt!1442546 lt!1442554 lt!1442546 suffixResult!105 lt!1442575))))

(assert (=> b!4048532 (isPrefix!4023 lt!1442546 lt!1442525)))

(declare-fun lt!1442556 () Unit!62555)

(assert (=> b!4048532 (= lt!1442556 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 lt!1442554))))

(declare-fun b!4048533 () Bool)

(assert (=> b!4048533 (= e!2512025 e!2512001)))

(declare-fun res!1649483 () Bool)

(assert (=> b!4048533 (=> res!1649483 e!2512001)))

(get-info :version)

(assert (=> b!4048533 (= res!1649483 (not ((_ is Some!9349) lt!1442555)))))

(declare-fun maxPrefix!3823 (LexerInterface!6525 List!43415 List!43413) Option!9350)

(assert (=> b!4048533 (= lt!1442555 (maxPrefix!3823 thiss!21717 rules!2999 lt!1442539))))

(declare-fun lt!1442570 () tuple2!42362)

(assert (=> b!4048533 (and (= suffixResult!105 lt!1442542) (= lt!1442570 (tuple2!42363 lt!1442559 lt!1442542)))))

(declare-fun lt!1442551 () Unit!62555)

(assert (=> b!4048533 (= lt!1442551 (lemmaSamePrefixThenSameSuffix!2184 lt!1442546 suffixResult!105 lt!1442546 lt!1442542 lt!1442575))))

(assert (=> b!4048533 (isPrefix!4023 lt!1442546 lt!1442547)))

(declare-fun lt!1442527 () Unit!62555)

(assert (=> b!4048533 (= lt!1442527 (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 lt!1442542))))

(declare-fun e!2512018 () Bool)

(assert (=> b!4048534 (= e!2512018 (and tp!1228099 tp!1228100))))

(declare-fun b!4048535 () Bool)

(declare-fun tp!1228108 () Bool)

(declare-fun inv!57864 (String!49548) Bool)

(declare-fun inv!57867 (TokenValueInjection!13760) Bool)

(assert (=> b!4048535 (= e!2512034 (and tp!1228108 (inv!57864 (tag!7796 (h!48711 rules!2999))) (inv!57867 (transformation!6936 (h!48711 rules!2999))) e!2512018))))

(declare-fun b!4048536 () Bool)

(declare-fun e!2512019 () Bool)

(declare-fun tp!1228101 () Bool)

(assert (=> b!4048536 (= e!2512019 (and tp_is_empty!20653 tp!1228101))))

(declare-fun b!4048537 () Bool)

(declare-fun e!2512027 () Bool)

(declare-fun tp!1228109 () Bool)

(assert (=> b!4048537 (= e!2512027 (and tp_is_empty!20653 tp!1228109))))

(declare-fun b!4048538 () Bool)

(declare-fun res!1649464 () Bool)

(assert (=> b!4048538 (=> res!1649464 e!2512033)))

(assert (=> b!4048538 (= res!1649464 (not (= lt!1442545 lt!1442539)))))

(declare-fun b!4048539 () Bool)

(declare-fun e!2512026 () Bool)

(declare-fun tp!1228104 () Bool)

(assert (=> b!4048539 (= e!2512026 (and tp_is_empty!20653 tp!1228104))))

(declare-fun b!4048540 () Bool)

(assert (=> b!4048540 (= e!2512023 false)))

(declare-fun b!4048541 () Bool)

(declare-fun res!1649473 () Bool)

(assert (=> b!4048541 (=> (not res!1649473) (not e!2512014))))

(assert (=> b!4048541 (= res!1649473 (isPrefix!4023 newSuffix!27 suffix!1299))))

(declare-fun b!4048510 () Bool)

(declare-fun e!2512016 () Bool)

(declare-fun tp!1228102 () Bool)

(assert (=> b!4048510 (= e!2512016 (and tp_is_empty!20653 tp!1228102))))

(declare-fun res!1649465 () Bool)

(assert (=> start!381772 (=> (not res!1649465) (not e!2512014))))

(assert (=> start!381772 (= res!1649465 ((_ is Lexer!6523) thiss!21717))))

(assert (=> start!381772 e!2512014))

(assert (=> start!381772 e!2512019))

(declare-fun inv!57868 (Token!13010) Bool)

(assert (=> start!381772 (and (inv!57868 token!484) e!2512006)))

(assert (=> start!381772 e!2512016))

(assert (=> start!381772 e!2512015))

(assert (=> start!381772 e!2512026))

(assert (=> start!381772 true))

(assert (=> start!381772 e!2512031))

(assert (=> start!381772 e!2512027))

(declare-fun b!4048542 () Bool)

(assert (=> b!4048542 (= e!2512021 e!2512004)))

(declare-fun res!1649462 () Bool)

(assert (=> b!4048542 (=> (not res!1649462) (not e!2512004))))

(assert (=> b!4048542 (= res!1649462 (= (maxPrefix!3823 thiss!21717 rules!2999 lt!1442575) lt!1442566))))

(assert (=> b!4048542 (= lt!1442566 (Some!9349 lt!1442570))))

(assert (=> b!4048542 (= lt!1442570 (tuple2!42363 token!484 suffixResult!105))))

(assert (=> b!4048542 (= lt!1442575 (++!11338 prefix!494 suffix!1299))))

(declare-fun b!4048543 () Bool)

(assert (=> b!4048543 (= e!2512033 e!2512003)))

(declare-fun res!1649475 () Bool)

(assert (=> b!4048543 (=> res!1649475 e!2512003)))

(assert (=> b!4048543 (= res!1649475 (not (= lt!1442564 lt!1442539)))))

(assert (=> b!4048543 (= lt!1442564 (++!11338 lt!1442536 lt!1442552))))

(assert (=> b!4048543 (= lt!1442552 (getSuffix!2440 lt!1442539 lt!1442536))))

(declare-fun tp!1228105 () Bool)

(declare-fun b!4048544 () Bool)

(assert (=> b!4048544 (= e!2512022 (and tp!1228105 (inv!57864 (tag!7796 (rule!10014 token!484))) (inv!57867 (transformation!6936 (rule!10014 token!484))) e!2512007))))

(assert (= (and start!381772 res!1649465) b!4048505))

(assert (= (and b!4048505 res!1649481) b!4048527))

(assert (= (and b!4048527 res!1649484) b!4048516))

(assert (= (and b!4048516 res!1649463) b!4048541))

(assert (= (and b!4048541 res!1649473) b!4048506))

(assert (= (and b!4048506 res!1649471) b!4048513))

(assert (= (and b!4048513 res!1649489) b!4048542))

(assert (= (and b!4048542 res!1649462) b!4048512))

(assert (= (and b!4048512 (not res!1649474)) b!4048530))

(assert (= (and b!4048530 (not res!1649477)) b!4048509))

(assert (= (and b!4048509 (not res!1649482)) b!4048524))

(assert (= (and b!4048524 (not res!1649487)) b!4048532))

(assert (= (and b!4048532 (not res!1649478)) b!4048504))

(assert (= (and b!4048504 (not res!1649480)) b!4048515))

(assert (= (and b!4048515 res!1649469) b!4048523))

(assert (= (and b!4048523 res!1649488) b!4048520))

(assert (= (and b!4048520 res!1649476) b!4048519))

(assert (= (and b!4048515 (not res!1649485)) b!4048533))

(assert (= (and b!4048533 (not res!1649483)) b!4048508))

(assert (= (and b!4048508 (not res!1649470)) b!4048511))

(assert (= (and b!4048511 (not res!1649466)) b!4048529))

(assert (= (and b!4048529 (not res!1649468)) b!4048522))

(assert (= (and b!4048522 (not res!1649472)) b!4048538))

(assert (= (and b!4048538 (not res!1649464)) b!4048543))

(assert (= (and b!4048543 (not res!1649475)) b!4048525))

(assert (= (and b!4048525 c!699441) b!4048517))

(assert (= (and b!4048525 (not c!699441)) b!4048526))

(assert (= (and b!4048517 res!1649479) b!4048540))

(assert (= (and b!4048525 (not res!1649467)) b!4048514))

(assert (= (and b!4048514 (not res!1649486)) b!4048528))

(assert (= (and start!381772 ((_ is Cons!43289) prefix!494)) b!4048536))

(assert (= b!4048544 b!4048507))

(assert (= b!4048531 b!4048544))

(assert (= start!381772 b!4048531))

(assert (= (and start!381772 ((_ is Cons!43289) suffixResult!105)) b!4048510))

(assert (= (and start!381772 ((_ is Cons!43289) suffix!1299)) b!4048521))

(assert (= (and start!381772 ((_ is Cons!43289) newSuffix!27)) b!4048539))

(assert (= b!4048535 b!4048534))

(assert (= b!4048518 b!4048535))

(assert (= (and start!381772 ((_ is Cons!43291) rules!2999)) b!4048518))

(assert (= (and start!381772 ((_ is Cons!43289) newSuffixResult!27)) b!4048537))

(declare-fun m!4648355 () Bool)

(assert (=> b!4048530 m!4648355))

(declare-fun m!4648357 () Bool)

(assert (=> b!4048530 m!4648357))

(declare-fun m!4648359 () Bool)

(assert (=> b!4048530 m!4648359))

(declare-fun m!4648361 () Bool)

(assert (=> b!4048530 m!4648361))

(declare-fun m!4648363 () Bool)

(assert (=> b!4048530 m!4648363))

(declare-fun m!4648365 () Bool)

(assert (=> b!4048512 m!4648365))

(declare-fun m!4648367 () Bool)

(assert (=> b!4048512 m!4648367))

(declare-fun m!4648369 () Bool)

(assert (=> b!4048512 m!4648369))

(declare-fun m!4648371 () Bool)

(assert (=> b!4048512 m!4648371))

(declare-fun m!4648373 () Bool)

(assert (=> b!4048541 m!4648373))

(declare-fun m!4648375 () Bool)

(assert (=> b!4048509 m!4648375))

(declare-fun m!4648377 () Bool)

(assert (=> b!4048509 m!4648377))

(declare-fun m!4648379 () Bool)

(assert (=> b!4048509 m!4648379))

(declare-fun m!4648381 () Bool)

(assert (=> b!4048509 m!4648381))

(declare-fun m!4648383 () Bool)

(assert (=> b!4048544 m!4648383))

(declare-fun m!4648385 () Bool)

(assert (=> b!4048544 m!4648385))

(declare-fun m!4648387 () Bool)

(assert (=> start!381772 m!4648387))

(declare-fun m!4648389 () Bool)

(assert (=> b!4048533 m!4648389))

(declare-fun m!4648391 () Bool)

(assert (=> b!4048533 m!4648391))

(declare-fun m!4648393 () Bool)

(assert (=> b!4048533 m!4648393))

(declare-fun m!4648395 () Bool)

(assert (=> b!4048533 m!4648395))

(declare-fun m!4648397 () Bool)

(assert (=> b!4048522 m!4648397))

(declare-fun m!4648399 () Bool)

(assert (=> b!4048522 m!4648399))

(declare-fun m!4648401 () Bool)

(assert (=> b!4048522 m!4648401))

(declare-fun m!4648403 () Bool)

(assert (=> b!4048508 m!4648403))

(declare-fun m!4648405 () Bool)

(assert (=> b!4048508 m!4648405))

(declare-fun m!4648407 () Bool)

(assert (=> b!4048508 m!4648407))

(declare-fun m!4648409 () Bool)

(assert (=> b!4048508 m!4648409))

(declare-fun m!4648411 () Bool)

(assert (=> b!4048508 m!4648411))

(declare-fun m!4648413 () Bool)

(assert (=> b!4048508 m!4648413))

(declare-fun m!4648415 () Bool)

(assert (=> b!4048508 m!4648415))

(declare-fun m!4648417 () Bool)

(assert (=> b!4048508 m!4648417))

(declare-fun m!4648419 () Bool)

(assert (=> b!4048508 m!4648419))

(declare-fun m!4648421 () Bool)

(assert (=> b!4048508 m!4648421))

(declare-fun m!4648423 () Bool)

(assert (=> b!4048508 m!4648423))

(declare-fun m!4648425 () Bool)

(assert (=> b!4048508 m!4648425))

(declare-fun m!4648427 () Bool)

(assert (=> b!4048508 m!4648427))

(declare-fun m!4648429 () Bool)

(assert (=> b!4048508 m!4648429))

(assert (=> b!4048508 m!4648409))

(declare-fun m!4648431 () Bool)

(assert (=> b!4048508 m!4648431))

(declare-fun m!4648433 () Bool)

(assert (=> b!4048508 m!4648433))

(assert (=> b!4048508 m!4648403))

(declare-fun m!4648435 () Bool)

(assert (=> b!4048508 m!4648435))

(declare-fun m!4648437 () Bool)

(assert (=> b!4048508 m!4648437))

(assert (=> b!4048508 m!4648419))

(declare-fun m!4648439 () Bool)

(assert (=> b!4048506 m!4648439))

(declare-fun m!4648441 () Bool)

(assert (=> b!4048506 m!4648441))

(declare-fun m!4648443 () Bool)

(assert (=> b!4048506 m!4648443))

(assert (=> b!4048506 m!4648443))

(declare-fun m!4648445 () Bool)

(assert (=> b!4048506 m!4648445))

(declare-fun m!4648447 () Bool)

(assert (=> b!4048531 m!4648447))

(declare-fun m!4648449 () Bool)

(assert (=> b!4048513 m!4648449))

(declare-fun m!4648451 () Bool)

(assert (=> b!4048513 m!4648451))

(declare-fun m!4648453 () Bool)

(assert (=> b!4048527 m!4648453))

(declare-fun m!4648455 () Bool)

(assert (=> b!4048532 m!4648455))

(declare-fun m!4648457 () Bool)

(assert (=> b!4048532 m!4648457))

(declare-fun m!4648459 () Bool)

(assert (=> b!4048532 m!4648459))

(declare-fun m!4648461 () Bool)

(assert (=> b!4048532 m!4648461))

(declare-fun m!4648463 () Bool)

(assert (=> b!4048532 m!4648463))

(declare-fun m!4648465 () Bool)

(assert (=> b!4048532 m!4648465))

(declare-fun m!4648467 () Bool)

(assert (=> b!4048532 m!4648467))

(assert (=> b!4048532 m!4648455))

(declare-fun m!4648469 () Bool)

(assert (=> b!4048517 m!4648469))

(declare-fun m!4648471 () Bool)

(assert (=> b!4048517 m!4648471))

(declare-fun m!4648473 () Bool)

(assert (=> b!4048528 m!4648473))

(declare-fun m!4648475 () Bool)

(assert (=> b!4048516 m!4648475))

(declare-fun m!4648477 () Bool)

(assert (=> b!4048516 m!4648477))

(declare-fun m!4648479 () Bool)

(assert (=> b!4048529 m!4648479))

(declare-fun m!4648481 () Bool)

(assert (=> b!4048529 m!4648481))

(declare-fun m!4648483 () Bool)

(assert (=> b!4048529 m!4648483))

(declare-fun m!4648485 () Bool)

(assert (=> b!4048511 m!4648485))

(declare-fun m!4648487 () Bool)

(assert (=> b!4048511 m!4648487))

(declare-fun m!4648489 () Bool)

(assert (=> b!4048520 m!4648489))

(declare-fun m!4648491 () Bool)

(assert (=> b!4048514 m!4648491))

(declare-fun m!4648493 () Bool)

(assert (=> b!4048542 m!4648493))

(declare-fun m!4648495 () Bool)

(assert (=> b!4048542 m!4648495))

(declare-fun m!4648497 () Bool)

(assert (=> b!4048504 m!4648497))

(declare-fun m!4648499 () Bool)

(assert (=> b!4048504 m!4648499))

(declare-fun m!4648501 () Bool)

(assert (=> b!4048504 m!4648501))

(declare-fun m!4648503 () Bool)

(assert (=> b!4048504 m!4648503))

(declare-fun m!4648505 () Bool)

(assert (=> b!4048515 m!4648505))

(declare-fun m!4648507 () Bool)

(assert (=> b!4048515 m!4648507))

(declare-fun m!4648509 () Bool)

(assert (=> b!4048515 m!4648509))

(declare-fun m!4648511 () Bool)

(assert (=> b!4048515 m!4648511))

(declare-fun m!4648513 () Bool)

(assert (=> b!4048524 m!4648513))

(declare-fun m!4648515 () Bool)

(assert (=> b!4048524 m!4648515))

(declare-fun m!4648517 () Bool)

(assert (=> b!4048524 m!4648517))

(declare-fun m!4648519 () Bool)

(assert (=> b!4048524 m!4648519))

(declare-fun m!4648521 () Bool)

(assert (=> b!4048535 m!4648521))

(declare-fun m!4648523 () Bool)

(assert (=> b!4048535 m!4648523))

(declare-fun m!4648525 () Bool)

(assert (=> b!4048525 m!4648525))

(declare-fun m!4648527 () Bool)

(assert (=> b!4048525 m!4648527))

(declare-fun m!4648529 () Bool)

(assert (=> b!4048525 m!4648529))

(declare-fun m!4648531 () Bool)

(assert (=> b!4048543 m!4648531))

(declare-fun m!4648533 () Bool)

(assert (=> b!4048543 m!4648533))

(declare-fun m!4648535 () Bool)

(assert (=> b!4048505 m!4648535))

(check-sat (not b!4048522) (not b!4048533) (not b!4048532) (not b!4048537) (not b!4048542) (not b!4048513) b_and!311347 (not b!4048528) (not b!4048530) (not b_next!113389) (not b!4048544) (not b!4048516) (not b_next!113385) (not b!4048527) b_and!311351 (not b!4048511) (not b!4048525) (not b!4048505) (not b!4048506) (not b!4048521) (not b!4048520) (not b!4048543) (not b!4048539) (not b!4048510) (not b!4048512) (not b!4048517) (not b!4048529) (not b!4048518) (not b!4048524) (not b_next!113391) (not b!4048508) (not b!4048509) b_and!311353 (not b_next!113387) (not b!4048514) (not b!4048504) (not start!381772) (not b!4048515) (not b!4048531) b_and!311349 (not b!4048535) (not b!4048536) (not b!4048541) tp_is_empty!20653)
(check-sat (not b_next!113389) (not b_next!113385) b_and!311351 (not b_next!113391) b_and!311347 b_and!311353 (not b_next!113387) b_and!311349)
(get-model)

(declare-fun d!1202183 () Bool)

(assert (=> d!1202183 (= (inv!57864 (tag!7796 (rule!10014 token!484))) (= (mod (str.len (value!218309 (tag!7796 (rule!10014 token!484)))) 2) 0))))

(assert (=> b!4048544 d!1202183))

(declare-fun d!1202185 () Bool)

(declare-fun res!1649496 () Bool)

(declare-fun e!2512037 () Bool)

(assert (=> d!1202185 (=> (not res!1649496) (not e!2512037))))

(declare-fun semiInverseModEq!2963 (Int Int) Bool)

(assert (=> d!1202185 (= res!1649496 (semiInverseModEq!2963 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))))))

(assert (=> d!1202185 (= (inv!57867 (transformation!6936 (rule!10014 token!484))) e!2512037)))

(declare-fun b!4048547 () Bool)

(declare-fun equivClasses!2862 (Int Int) Bool)

(assert (=> b!4048547 (= e!2512037 (equivClasses!2862 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))))))

(assert (= (and d!1202185 res!1649496) b!4048547))

(declare-fun m!4648537 () Bool)

(assert (=> d!1202185 m!4648537))

(declare-fun m!4648539 () Bool)

(assert (=> b!4048547 m!4648539))

(assert (=> b!4048544 d!1202185))

(declare-fun b!4048558 () Bool)

(declare-fun res!1649501 () Bool)

(declare-fun e!2512043 () Bool)

(assert (=> b!4048558 (=> (not res!1649501) (not e!2512043))))

(declare-fun lt!1442580 () List!43413)

(assert (=> b!4048558 (= res!1649501 (= (size!32366 lt!1442580) (+ (size!32366 lt!1442546) (size!32366 lt!1442554))))))

(declare-fun b!4048559 () Bool)

(assert (=> b!4048559 (= e!2512043 (or (not (= lt!1442554 Nil!43289)) (= lt!1442580 lt!1442546)))))

(declare-fun b!4048556 () Bool)

(declare-fun e!2512042 () List!43413)

(assert (=> b!4048556 (= e!2512042 lt!1442554)))

(declare-fun b!4048557 () Bool)

(assert (=> b!4048557 (= e!2512042 (Cons!43289 (h!48709 lt!1442546) (++!11338 (t!335768 lt!1442546) lt!1442554)))))

(declare-fun d!1202187 () Bool)

(assert (=> d!1202187 e!2512043))

(declare-fun res!1649502 () Bool)

(assert (=> d!1202187 (=> (not res!1649502) (not e!2512043))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6588 (List!43413) (InoxSet C!23868))

(assert (=> d!1202187 (= res!1649502 (= (content!6588 lt!1442580) ((_ map or) (content!6588 lt!1442546) (content!6588 lt!1442554))))))

(assert (=> d!1202187 (= lt!1442580 e!2512042)))

(declare-fun c!699446 () Bool)

(assert (=> d!1202187 (= c!699446 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202187 (= (++!11338 lt!1442546 lt!1442554) lt!1442580)))

(assert (= (and d!1202187 c!699446) b!4048556))

(assert (= (and d!1202187 (not c!699446)) b!4048557))

(assert (= (and d!1202187 res!1649502) b!4048558))

(assert (= (and b!4048558 res!1649501) b!4048559))

(declare-fun m!4648541 () Bool)

(assert (=> b!4048558 m!4648541))

(assert (=> b!4048558 m!4648439))

(declare-fun m!4648543 () Bool)

(assert (=> b!4048558 m!4648543))

(declare-fun m!4648545 () Bool)

(assert (=> b!4048557 m!4648545))

(declare-fun m!4648547 () Bool)

(assert (=> d!1202187 m!4648547))

(declare-fun m!4648549 () Bool)

(assert (=> d!1202187 m!4648549))

(declare-fun m!4648551 () Bool)

(assert (=> d!1202187 m!4648551))

(assert (=> b!4048524 d!1202187))

(declare-fun b!4048562 () Bool)

(declare-fun res!1649503 () Bool)

(declare-fun e!2512045 () Bool)

(assert (=> b!4048562 (=> (not res!1649503) (not e!2512045))))

(declare-fun lt!1442581 () List!43413)

(assert (=> b!4048562 (= res!1649503 (= (size!32366 lt!1442581) (+ (size!32366 lt!1442553) (size!32366 suffix!1299))))))

(declare-fun b!4048563 () Bool)

(assert (=> b!4048563 (= e!2512045 (or (not (= suffix!1299 Nil!43289)) (= lt!1442581 lt!1442553)))))

(declare-fun b!4048560 () Bool)

(declare-fun e!2512044 () List!43413)

(assert (=> b!4048560 (= e!2512044 suffix!1299)))

(declare-fun b!4048561 () Bool)

(assert (=> b!4048561 (= e!2512044 (Cons!43289 (h!48709 lt!1442553) (++!11338 (t!335768 lt!1442553) suffix!1299)))))

(declare-fun d!1202189 () Bool)

(assert (=> d!1202189 e!2512045))

(declare-fun res!1649504 () Bool)

(assert (=> d!1202189 (=> (not res!1649504) (not e!2512045))))

(assert (=> d!1202189 (= res!1649504 (= (content!6588 lt!1442581) ((_ map or) (content!6588 lt!1442553) (content!6588 suffix!1299))))))

(assert (=> d!1202189 (= lt!1442581 e!2512044)))

(declare-fun c!699447 () Bool)

(assert (=> d!1202189 (= c!699447 ((_ is Nil!43289) lt!1442553))))

(assert (=> d!1202189 (= (++!11338 lt!1442553 suffix!1299) lt!1442581)))

(assert (= (and d!1202189 c!699447) b!4048560))

(assert (= (and d!1202189 (not c!699447)) b!4048561))

(assert (= (and d!1202189 res!1649504) b!4048562))

(assert (= (and b!4048562 res!1649503) b!4048563))

(declare-fun m!4648553 () Bool)

(assert (=> b!4048562 m!4648553))

(declare-fun m!4648555 () Bool)

(assert (=> b!4048562 m!4648555))

(assert (=> b!4048562 m!4648475))

(declare-fun m!4648557 () Bool)

(assert (=> b!4048561 m!4648557))

(declare-fun m!4648559 () Bool)

(assert (=> d!1202189 m!4648559))

(declare-fun m!4648561 () Bool)

(assert (=> d!1202189 m!4648561))

(declare-fun m!4648563 () Bool)

(assert (=> d!1202189 m!4648563))

(assert (=> b!4048524 d!1202189))

(declare-fun b!4048566 () Bool)

(declare-fun res!1649505 () Bool)

(declare-fun e!2512047 () Bool)

(assert (=> b!4048566 (=> (not res!1649505) (not e!2512047))))

(declare-fun lt!1442582 () List!43413)

(assert (=> b!4048566 (= res!1649505 (= (size!32366 lt!1442582) (+ (size!32366 lt!1442560) (size!32366 suffix!1299))))))

(declare-fun b!4048567 () Bool)

(assert (=> b!4048567 (= e!2512047 (or (not (= suffix!1299 Nil!43289)) (= lt!1442582 lt!1442560)))))

(declare-fun b!4048564 () Bool)

(declare-fun e!2512046 () List!43413)

(assert (=> b!4048564 (= e!2512046 suffix!1299)))

(declare-fun b!4048565 () Bool)

(assert (=> b!4048565 (= e!2512046 (Cons!43289 (h!48709 lt!1442560) (++!11338 (t!335768 lt!1442560) suffix!1299)))))

(declare-fun d!1202191 () Bool)

(assert (=> d!1202191 e!2512047))

(declare-fun res!1649506 () Bool)

(assert (=> d!1202191 (=> (not res!1649506) (not e!2512047))))

(assert (=> d!1202191 (= res!1649506 (= (content!6588 lt!1442582) ((_ map or) (content!6588 lt!1442560) (content!6588 suffix!1299))))))

(assert (=> d!1202191 (= lt!1442582 e!2512046)))

(declare-fun c!699448 () Bool)

(assert (=> d!1202191 (= c!699448 ((_ is Nil!43289) lt!1442560))))

(assert (=> d!1202191 (= (++!11338 lt!1442560 suffix!1299) lt!1442582)))

(assert (= (and d!1202191 c!699448) b!4048564))

(assert (= (and d!1202191 (not c!699448)) b!4048565))

(assert (= (and d!1202191 res!1649506) b!4048566))

(assert (= (and b!4048566 res!1649505) b!4048567))

(declare-fun m!4648565 () Bool)

(assert (=> b!4048566 m!4648565))

(declare-fun m!4648567 () Bool)

(assert (=> b!4048566 m!4648567))

(assert (=> b!4048566 m!4648475))

(declare-fun m!4648569 () Bool)

(assert (=> b!4048565 m!4648569))

(declare-fun m!4648571 () Bool)

(assert (=> d!1202191 m!4648571))

(declare-fun m!4648573 () Bool)

(assert (=> d!1202191 m!4648573))

(assert (=> d!1202191 m!4648563))

(assert (=> b!4048524 d!1202191))

(declare-fun d!1202193 () Bool)

(assert (=> d!1202193 (= (++!11338 (++!11338 lt!1442546 lt!1442560) suffix!1299) (++!11338 lt!1442546 (++!11338 lt!1442560 suffix!1299)))))

(declare-fun lt!1442585 () Unit!62555)

(declare-fun choose!24537 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> d!1202193 (= lt!1442585 (choose!24537 lt!1442546 lt!1442560 suffix!1299))))

(assert (=> d!1202193 (= (lemmaConcatAssociativity!2640 lt!1442546 lt!1442560 suffix!1299) lt!1442585)))

(declare-fun bs!591393 () Bool)

(assert (= bs!591393 d!1202193))

(declare-fun m!4648575 () Bool)

(assert (=> bs!591393 m!4648575))

(assert (=> bs!591393 m!4648375))

(declare-fun m!4648577 () Bool)

(assert (=> bs!591393 m!4648577))

(assert (=> bs!591393 m!4648517))

(declare-fun m!4648579 () Bool)

(assert (=> bs!591393 m!4648579))

(assert (=> bs!591393 m!4648375))

(assert (=> bs!591393 m!4648517))

(assert (=> b!4048524 d!1202193))

(declare-fun d!1202195 () Bool)

(assert (=> d!1202195 (= (_2!24315 (v!39755 lt!1442555)) lt!1442552)))

(declare-fun lt!1442588 () Unit!62555)

(declare-fun choose!24538 (List!43413 List!43413 List!43413 List!43413 List!43413) Unit!62555)

(assert (=> d!1202195 (= lt!1442588 (choose!24538 lt!1442536 (_2!24315 (v!39755 lt!1442555)) lt!1442536 lt!1442552 lt!1442539))))

(assert (=> d!1202195 (isPrefix!4023 lt!1442536 lt!1442539)))

(assert (=> d!1202195 (= (lemmaSamePrefixThenSameSuffix!2184 lt!1442536 (_2!24315 (v!39755 lt!1442555)) lt!1442536 lt!1442552 lt!1442539) lt!1442588)))

(declare-fun bs!591394 () Bool)

(assert (= bs!591394 d!1202195))

(declare-fun m!4648581 () Bool)

(assert (=> bs!591394 m!4648581))

(assert (=> bs!591394 m!4648491))

(assert (=> b!4048525 d!1202195))

(declare-fun d!1202197 () Bool)

(declare-fun e!2512054 () Bool)

(assert (=> d!1202197 e!2512054))

(declare-fun res!1649516 () Bool)

(assert (=> d!1202197 (=> res!1649516 e!2512054)))

(declare-fun lt!1442591 () Bool)

(assert (=> d!1202197 (= res!1649516 (not lt!1442591))))

(declare-fun e!2512055 () Bool)

(assert (=> d!1202197 (= lt!1442591 e!2512055)))

(declare-fun res!1649517 () Bool)

(assert (=> d!1202197 (=> res!1649517 e!2512055)))

(assert (=> d!1202197 (= res!1649517 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202197 (= (isPrefix!4023 lt!1442536 lt!1442564) lt!1442591)))

(declare-fun b!4048579 () Bool)

(assert (=> b!4048579 (= e!2512054 (>= (size!32366 lt!1442564) (size!32366 lt!1442536)))))

(declare-fun b!4048578 () Bool)

(declare-fun e!2512056 () Bool)

(declare-fun tail!6290 (List!43413) List!43413)

(assert (=> b!4048578 (= e!2512056 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 lt!1442564)))))

(declare-fun b!4048576 () Bool)

(assert (=> b!4048576 (= e!2512055 e!2512056)))

(declare-fun res!1649515 () Bool)

(assert (=> b!4048576 (=> (not res!1649515) (not e!2512056))))

(assert (=> b!4048576 (= res!1649515 (not ((_ is Nil!43289) lt!1442564)))))

(declare-fun b!4048577 () Bool)

(declare-fun res!1649518 () Bool)

(assert (=> b!4048577 (=> (not res!1649518) (not e!2512056))))

(declare-fun head!8558 (List!43413) C!23868)

(assert (=> b!4048577 (= res!1649518 (= (head!8558 lt!1442536) (head!8558 lt!1442564)))))

(assert (= (and d!1202197 (not res!1649517)) b!4048576))

(assert (= (and b!4048576 res!1649515) b!4048577))

(assert (= (and b!4048577 res!1649518) b!4048578))

(assert (= (and d!1202197 (not res!1649516)) b!4048579))

(declare-fun m!4648583 () Bool)

(assert (=> b!4048579 m!4648583))

(assert (=> b!4048579 m!4648431))

(declare-fun m!4648585 () Bool)

(assert (=> b!4048578 m!4648585))

(declare-fun m!4648587 () Bool)

(assert (=> b!4048578 m!4648587))

(assert (=> b!4048578 m!4648585))

(assert (=> b!4048578 m!4648587))

(declare-fun m!4648589 () Bool)

(assert (=> b!4048578 m!4648589))

(declare-fun m!4648591 () Bool)

(assert (=> b!4048577 m!4648591))

(declare-fun m!4648593 () Bool)

(assert (=> b!4048577 m!4648593))

(assert (=> b!4048525 d!1202197))

(declare-fun d!1202199 () Bool)

(assert (=> d!1202199 (isPrefix!4023 lt!1442536 (++!11338 lt!1442536 lt!1442552))))

(declare-fun lt!1442594 () Unit!62555)

(declare-fun choose!24539 (List!43413 List!43413) Unit!62555)

(assert (=> d!1202199 (= lt!1442594 (choose!24539 lt!1442536 lt!1442552))))

(assert (=> d!1202199 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 lt!1442552) lt!1442594)))

(declare-fun bs!591395 () Bool)

(assert (= bs!591395 d!1202199))

(assert (=> bs!591395 m!4648531))

(assert (=> bs!591395 m!4648531))

(declare-fun m!4648595 () Bool)

(assert (=> bs!591395 m!4648595))

(declare-fun m!4648597 () Bool)

(assert (=> bs!591395 m!4648597))

(assert (=> b!4048525 d!1202199))

(declare-fun b!4048608 () Bool)

(declare-fun e!2512074 () Bool)

(declare-fun e!2512072 () Bool)

(assert (=> b!4048608 (= e!2512074 e!2512072)))

(declare-fun res!1649540 () Bool)

(assert (=> b!4048608 (=> (not res!1649540) (not e!2512072))))

(declare-fun lt!1442597 () Bool)

(assert (=> b!4048608 (= res!1649540 (not lt!1442597))))

(declare-fun b!4048609 () Bool)

(declare-fun e!2512071 () Bool)

(declare-fun e!2512073 () Bool)

(assert (=> b!4048609 (= e!2512071 e!2512073)))

(declare-fun c!699455 () Bool)

(assert (=> b!4048609 (= c!699455 ((_ is EmptyLang!11841) (regex!6936 (rule!10014 token!484))))))

(declare-fun b!4048610 () Bool)

(declare-fun e!2512076 () Bool)

(assert (=> b!4048610 (= e!2512072 e!2512076)))

(declare-fun res!1649537 () Bool)

(assert (=> b!4048610 (=> res!1649537 e!2512076)))

(declare-fun call!287817 () Bool)

(assert (=> b!4048610 (= res!1649537 call!287817)))

(declare-fun b!4048611 () Bool)

(declare-fun res!1649541 () Bool)

(assert (=> b!4048611 (=> res!1649541 e!2512074)))

(assert (=> b!4048611 (= res!1649541 (not ((_ is ElementMatch!11841) (regex!6936 (rule!10014 token!484)))))))

(assert (=> b!4048611 (= e!2512073 e!2512074)))

(declare-fun b!4048612 () Bool)

(declare-fun res!1649535 () Bool)

(assert (=> b!4048612 (=> res!1649535 e!2512076)))

(declare-fun isEmpty!25834 (List!43413) Bool)

(assert (=> b!4048612 (= res!1649535 (not (isEmpty!25834 (tail!6290 lt!1442546))))))

(declare-fun b!4048613 () Bool)

(declare-fun res!1649539 () Bool)

(declare-fun e!2512075 () Bool)

(assert (=> b!4048613 (=> (not res!1649539) (not e!2512075))))

(assert (=> b!4048613 (= res!1649539 (isEmpty!25834 (tail!6290 lt!1442546)))))

(declare-fun bm!287812 () Bool)

(assert (=> bm!287812 (= call!287817 (isEmpty!25834 lt!1442546))))

(declare-fun d!1202201 () Bool)

(assert (=> d!1202201 e!2512071))

(declare-fun c!699457 () Bool)

(assert (=> d!1202201 (= c!699457 ((_ is EmptyExpr!11841) (regex!6936 (rule!10014 token!484))))))

(declare-fun e!2512077 () Bool)

(assert (=> d!1202201 (= lt!1442597 e!2512077)))

(declare-fun c!699456 () Bool)

(assert (=> d!1202201 (= c!699456 (isEmpty!25834 lt!1442546))))

(declare-fun validRegex!5355 (Regex!11841) Bool)

(assert (=> d!1202201 (validRegex!5355 (regex!6936 (rule!10014 token!484)))))

(assert (=> d!1202201 (= (matchR!5794 (regex!6936 (rule!10014 token!484)) lt!1442546) lt!1442597)))

(declare-fun b!4048614 () Bool)

(assert (=> b!4048614 (= e!2512071 (= lt!1442597 call!287817))))

(declare-fun b!4048615 () Bool)

(assert (=> b!4048615 (= e!2512073 (not lt!1442597))))

(declare-fun b!4048616 () Bool)

(declare-fun derivativeStep!3560 (Regex!11841 C!23868) Regex!11841)

(assert (=> b!4048616 (= e!2512077 (matchR!5794 (derivativeStep!3560 (regex!6936 (rule!10014 token!484)) (head!8558 lt!1442546)) (tail!6290 lt!1442546)))))

(declare-fun b!4048617 () Bool)

(declare-fun nullable!4155 (Regex!11841) Bool)

(assert (=> b!4048617 (= e!2512077 (nullable!4155 (regex!6936 (rule!10014 token!484))))))

(declare-fun b!4048618 () Bool)

(declare-fun res!1649538 () Bool)

(assert (=> b!4048618 (=> (not res!1649538) (not e!2512075))))

(assert (=> b!4048618 (= res!1649538 (not call!287817))))

(declare-fun b!4048619 () Bool)

(assert (=> b!4048619 (= e!2512076 (not (= (head!8558 lt!1442546) (c!699443 (regex!6936 (rule!10014 token!484))))))))

(declare-fun b!4048620 () Bool)

(assert (=> b!4048620 (= e!2512075 (= (head!8558 lt!1442546) (c!699443 (regex!6936 (rule!10014 token!484)))))))

(declare-fun b!4048621 () Bool)

(declare-fun res!1649542 () Bool)

(assert (=> b!4048621 (=> res!1649542 e!2512074)))

(assert (=> b!4048621 (= res!1649542 e!2512075)))

(declare-fun res!1649536 () Bool)

(assert (=> b!4048621 (=> (not res!1649536) (not e!2512075))))

(assert (=> b!4048621 (= res!1649536 lt!1442597)))

(assert (= (and d!1202201 c!699456) b!4048617))

(assert (= (and d!1202201 (not c!699456)) b!4048616))

(assert (= (and d!1202201 c!699457) b!4048614))

(assert (= (and d!1202201 (not c!699457)) b!4048609))

(assert (= (and b!4048609 c!699455) b!4048615))

(assert (= (and b!4048609 (not c!699455)) b!4048611))

(assert (= (and b!4048611 (not res!1649541)) b!4048621))

(assert (= (and b!4048621 res!1649536) b!4048618))

(assert (= (and b!4048618 res!1649538) b!4048613))

(assert (= (and b!4048613 res!1649539) b!4048620))

(assert (= (and b!4048621 (not res!1649542)) b!4048608))

(assert (= (and b!4048608 res!1649540) b!4048610))

(assert (= (and b!4048610 (not res!1649537)) b!4048612))

(assert (= (and b!4048612 (not res!1649535)) b!4048619))

(assert (= (or b!4048614 b!4048610 b!4048618) bm!287812))

(declare-fun m!4648599 () Bool)

(assert (=> b!4048616 m!4648599))

(assert (=> b!4048616 m!4648599))

(declare-fun m!4648601 () Bool)

(assert (=> b!4048616 m!4648601))

(declare-fun m!4648603 () Bool)

(assert (=> b!4048616 m!4648603))

(assert (=> b!4048616 m!4648601))

(assert (=> b!4048616 m!4648603))

(declare-fun m!4648605 () Bool)

(assert (=> b!4048616 m!4648605))

(declare-fun m!4648607 () Bool)

(assert (=> bm!287812 m!4648607))

(assert (=> b!4048620 m!4648599))

(assert (=> b!4048612 m!4648603))

(assert (=> b!4048612 m!4648603))

(declare-fun m!4648609 () Bool)

(assert (=> b!4048612 m!4648609))

(declare-fun m!4648611 () Bool)

(assert (=> b!4048617 m!4648611))

(assert (=> d!1202201 m!4648607))

(declare-fun m!4648613 () Bool)

(assert (=> d!1202201 m!4648613))

(assert (=> b!4048619 m!4648599))

(assert (=> b!4048613 m!4648603))

(assert (=> b!4048613 m!4648603))

(assert (=> b!4048613 m!4648609))

(assert (=> b!4048504 d!1202201))

(declare-fun d!1202203 () Bool)

(declare-fun e!2512078 () Bool)

(assert (=> d!1202203 e!2512078))

(declare-fun res!1649544 () Bool)

(assert (=> d!1202203 (=> res!1649544 e!2512078)))

(declare-fun lt!1442598 () Bool)

(assert (=> d!1202203 (= res!1649544 (not lt!1442598))))

(declare-fun e!2512079 () Bool)

(assert (=> d!1202203 (= lt!1442598 e!2512079)))

(declare-fun res!1649545 () Bool)

(assert (=> d!1202203 (=> res!1649545 e!2512079)))

(assert (=> d!1202203 (= res!1649545 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202203 (= (isPrefix!4023 lt!1442546 lt!1442539) lt!1442598)))

(declare-fun b!4048625 () Bool)

(assert (=> b!4048625 (= e!2512078 (>= (size!32366 lt!1442539) (size!32366 lt!1442546)))))

(declare-fun b!4048624 () Bool)

(declare-fun e!2512080 () Bool)

(assert (=> b!4048624 (= e!2512080 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 lt!1442539)))))

(declare-fun b!4048622 () Bool)

(assert (=> b!4048622 (= e!2512079 e!2512080)))

(declare-fun res!1649543 () Bool)

(assert (=> b!4048622 (=> (not res!1649543) (not e!2512080))))

(assert (=> b!4048622 (= res!1649543 (not ((_ is Nil!43289) lt!1442539)))))

(declare-fun b!4048623 () Bool)

(declare-fun res!1649546 () Bool)

(assert (=> b!4048623 (=> (not res!1649546) (not e!2512080))))

(assert (=> b!4048623 (= res!1649546 (= (head!8558 lt!1442546) (head!8558 lt!1442539)))))

(assert (= (and d!1202203 (not res!1649545)) b!4048622))

(assert (= (and b!4048622 res!1649543) b!4048623))

(assert (= (and b!4048623 res!1649546) b!4048624))

(assert (= (and d!1202203 (not res!1649544)) b!4048625))

(declare-fun m!4648615 () Bool)

(assert (=> b!4048625 m!4648615))

(assert (=> b!4048625 m!4648439))

(assert (=> b!4048624 m!4648603))

(declare-fun m!4648617 () Bool)

(assert (=> b!4048624 m!4648617))

(assert (=> b!4048624 m!4648603))

(assert (=> b!4048624 m!4648617))

(declare-fun m!4648619 () Bool)

(assert (=> b!4048624 m!4648619))

(assert (=> b!4048623 m!4648599))

(declare-fun m!4648621 () Bool)

(assert (=> b!4048623 m!4648621))

(assert (=> b!4048504 d!1202203))

(declare-fun d!1202205 () Bool)

(assert (=> d!1202205 (isPrefix!4023 lt!1442546 (++!11338 prefix!494 newSuffix!27))))

(declare-fun lt!1442601 () Unit!62555)

(declare-fun choose!24540 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> d!1202205 (= lt!1442601 (choose!24540 lt!1442546 prefix!494 newSuffix!27))))

(assert (=> d!1202205 (isPrefix!4023 lt!1442546 prefix!494)))

(assert (=> d!1202205 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442546 prefix!494 newSuffix!27) lt!1442601)))

(declare-fun bs!591396 () Bool)

(assert (= bs!591396 d!1202205))

(assert (=> bs!591396 m!4648449))

(assert (=> bs!591396 m!4648449))

(declare-fun m!4648623 () Bool)

(assert (=> bs!591396 m!4648623))

(declare-fun m!4648625 () Bool)

(assert (=> bs!591396 m!4648625))

(assert (=> bs!591396 m!4648379))

(assert (=> b!4048504 d!1202205))

(declare-fun d!1202207 () Bool)

(assert (=> d!1202207 (isPrefix!4023 lt!1442546 (++!11338 prefix!494 suffix!1299))))

(declare-fun lt!1442602 () Unit!62555)

(assert (=> d!1202207 (= lt!1442602 (choose!24540 lt!1442546 prefix!494 suffix!1299))))

(assert (=> d!1202207 (isPrefix!4023 lt!1442546 prefix!494)))

(assert (=> d!1202207 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442546 prefix!494 suffix!1299) lt!1442602)))

(declare-fun bs!591397 () Bool)

(assert (= bs!591397 d!1202207))

(assert (=> bs!591397 m!4648495))

(assert (=> bs!591397 m!4648495))

(declare-fun m!4648627 () Bool)

(assert (=> bs!591397 m!4648627))

(declare-fun m!4648629 () Bool)

(assert (=> bs!591397 m!4648629))

(assert (=> bs!591397 m!4648379))

(assert (=> b!4048504 d!1202207))

(declare-fun d!1202209 () Bool)

(assert (=> d!1202209 (= (isEmpty!25833 rules!2999) ((_ is Nil!43291) rules!2999))))

(assert (=> b!4048505 d!1202209))

(declare-fun d!1202211 () Bool)

(declare-fun res!1649549 () Bool)

(declare-fun e!2512083 () Bool)

(assert (=> d!1202211 (=> (not res!1649549) (not e!2512083))))

(declare-fun rulesValid!2697 (LexerInterface!6525 List!43415) Bool)

(assert (=> d!1202211 (= res!1649549 (rulesValid!2697 thiss!21717 rules!2999))))

(assert (=> d!1202211 (= (rulesInvariant!5868 thiss!21717 rules!2999) e!2512083)))

(declare-fun b!4048628 () Bool)

(declare-datatypes ((List!43416 0))(
  ( (Nil!43292) (Cons!43292 (h!48712 String!49548) (t!335811 List!43416)) )
))
(declare-fun noDuplicateTag!2698 (LexerInterface!6525 List!43415 List!43416) Bool)

(assert (=> b!4048628 (= e!2512083 (noDuplicateTag!2698 thiss!21717 rules!2999 Nil!43292))))

(assert (= (and d!1202211 res!1649549) b!4048628))

(declare-fun m!4648631 () Bool)

(assert (=> d!1202211 m!4648631))

(declare-fun m!4648633 () Bool)

(assert (=> b!4048628 m!4648633))

(assert (=> b!4048527 d!1202211))

(declare-fun d!1202213 () Bool)

(declare-fun lt!1442605 () Int)

(assert (=> d!1202213 (>= lt!1442605 0)))

(declare-fun e!2512086 () Int)

(assert (=> d!1202213 (= lt!1442605 e!2512086)))

(declare-fun c!699460 () Bool)

(assert (=> d!1202213 (= c!699460 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202213 (= (size!32366 lt!1442546) lt!1442605)))

(declare-fun b!4048633 () Bool)

(assert (=> b!4048633 (= e!2512086 0)))

(declare-fun b!4048634 () Bool)

(assert (=> b!4048634 (= e!2512086 (+ 1 (size!32366 (t!335768 lt!1442546))))))

(assert (= (and d!1202213 c!699460) b!4048633))

(assert (= (and d!1202213 (not c!699460)) b!4048634))

(declare-fun m!4648635 () Bool)

(assert (=> b!4048634 m!4648635))

(assert (=> b!4048506 d!1202213))

(declare-fun d!1202215 () Bool)

(declare-fun lt!1442606 () Int)

(assert (=> d!1202215 (>= lt!1442606 0)))

(declare-fun e!2512087 () Int)

(assert (=> d!1202215 (= lt!1442606 e!2512087)))

(declare-fun c!699461 () Bool)

(assert (=> d!1202215 (= c!699461 ((_ is Nil!43289) prefix!494))))

(assert (=> d!1202215 (= (size!32366 prefix!494) lt!1442606)))

(declare-fun b!4048635 () Bool)

(assert (=> b!4048635 (= e!2512087 0)))

(declare-fun b!4048636 () Bool)

(assert (=> b!4048636 (= e!2512087 (+ 1 (size!32366 (t!335768 prefix!494))))))

(assert (= (and d!1202215 c!699461) b!4048635))

(assert (= (and d!1202215 (not c!699461)) b!4048636))

(declare-fun m!4648637 () Bool)

(assert (=> b!4048636 m!4648637))

(assert (=> b!4048506 d!1202215))

(declare-fun d!1202217 () Bool)

(declare-fun list!16127 (Conc!13147) List!43413)

(assert (=> d!1202217 (= (list!16126 (charsOf!4752 token!484)) (list!16127 (c!699442 (charsOf!4752 token!484))))))

(declare-fun bs!591398 () Bool)

(assert (= bs!591398 d!1202217))

(declare-fun m!4648639 () Bool)

(assert (=> bs!591398 m!4648639))

(assert (=> b!4048506 d!1202217))

(declare-fun d!1202219 () Bool)

(declare-fun lt!1442609 () BalanceConc!25888)

(assert (=> d!1202219 (= (list!16126 lt!1442609) (originalCharacters!7536 token!484))))

(declare-fun dynLambda!18391 (Int TokenValue!7166) BalanceConc!25888)

(assert (=> d!1202219 (= lt!1442609 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (value!218310 token!484)))))

(assert (=> d!1202219 (= (charsOf!4752 token!484) lt!1442609)))

(declare-fun b_lambda!118303 () Bool)

(assert (=> (not b_lambda!118303) (not d!1202219)))

(declare-fun t!335772 () Bool)

(declare-fun tb!243585 () Bool)

(assert (=> (and b!4048507 (= (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toChars!9347 (transformation!6936 (rule!10014 token!484)))) t!335772) tb!243585))

(declare-fun b!4048641 () Bool)

(declare-fun e!2512090 () Bool)

(declare-fun tp!1228113 () Bool)

(declare-fun inv!57869 (Conc!13147) Bool)

(assert (=> b!4048641 (= e!2512090 (and (inv!57869 (c!699442 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (value!218310 token!484)))) tp!1228113))))

(declare-fun result!295154 () Bool)

(declare-fun inv!57870 (BalanceConc!25888) Bool)

(assert (=> tb!243585 (= result!295154 (and (inv!57870 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (value!218310 token!484))) e!2512090))))

(assert (= tb!243585 b!4048641))

(declare-fun m!4648641 () Bool)

(assert (=> b!4048641 m!4648641))

(declare-fun m!4648643 () Bool)

(assert (=> tb!243585 m!4648643))

(assert (=> d!1202219 t!335772))

(declare-fun b_and!311355 () Bool)

(assert (= b_and!311349 (and (=> t!335772 result!295154) b_and!311355)))

(declare-fun t!335774 () Bool)

(declare-fun tb!243587 () Bool)

(assert (=> (and b!4048534 (= (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toChars!9347 (transformation!6936 (rule!10014 token!484)))) t!335774) tb!243587))

(declare-fun result!295158 () Bool)

(assert (= result!295158 result!295154))

(assert (=> d!1202219 t!335774))

(declare-fun b_and!311357 () Bool)

(assert (= b_and!311353 (and (=> t!335774 result!295158) b_and!311357)))

(declare-fun m!4648645 () Bool)

(assert (=> d!1202219 m!4648645))

(declare-fun m!4648647 () Bool)

(assert (=> d!1202219 m!4648647))

(assert (=> b!4048506 d!1202219))

(declare-fun d!1202221 () Bool)

(declare-fun res!1649554 () Bool)

(declare-fun e!2512093 () Bool)

(assert (=> d!1202221 (=> (not res!1649554) (not e!2512093))))

(assert (=> d!1202221 (= res!1649554 (not (isEmpty!25834 (originalCharacters!7536 token!484))))))

(assert (=> d!1202221 (= (inv!57868 token!484) e!2512093)))

(declare-fun b!4048646 () Bool)

(declare-fun res!1649555 () Bool)

(assert (=> b!4048646 (=> (not res!1649555) (not e!2512093))))

(assert (=> b!4048646 (= res!1649555 (= (originalCharacters!7536 token!484) (list!16126 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (value!218310 token!484)))))))

(declare-fun b!4048647 () Bool)

(assert (=> b!4048647 (= e!2512093 (= (size!32365 token!484) (size!32366 (originalCharacters!7536 token!484))))))

(assert (= (and d!1202221 res!1649554) b!4048646))

(assert (= (and b!4048646 res!1649555) b!4048647))

(declare-fun b_lambda!118305 () Bool)

(assert (=> (not b_lambda!118305) (not b!4048646)))

(assert (=> b!4048646 t!335772))

(declare-fun b_and!311359 () Bool)

(assert (= b_and!311355 (and (=> t!335772 result!295154) b_and!311359)))

(assert (=> b!4048646 t!335774))

(declare-fun b_and!311361 () Bool)

(assert (= b_and!311357 (and (=> t!335774 result!295158) b_and!311361)))

(declare-fun m!4648649 () Bool)

(assert (=> d!1202221 m!4648649))

(assert (=> b!4048646 m!4648647))

(assert (=> b!4048646 m!4648647))

(declare-fun m!4648651 () Bool)

(assert (=> b!4048646 m!4648651))

(assert (=> b!4048647 m!4648489))

(assert (=> start!381772 d!1202221))

(declare-fun d!1202223 () Bool)

(declare-fun lt!1442612 () Bool)

(declare-fun content!6589 (List!43415) (InoxSet Rule!13672))

(assert (=> d!1202223 (= lt!1442612 (select (content!6589 rules!2999) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun e!2512099 () Bool)

(assert (=> d!1202223 (= lt!1442612 e!2512099)))

(declare-fun res!1649561 () Bool)

(assert (=> d!1202223 (=> (not res!1649561) (not e!2512099))))

(assert (=> d!1202223 (= res!1649561 ((_ is Cons!43291) rules!2999))))

(assert (=> d!1202223 (= (contains!8608 rules!2999 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442612)))

(declare-fun b!4048652 () Bool)

(declare-fun e!2512098 () Bool)

(assert (=> b!4048652 (= e!2512099 e!2512098)))

(declare-fun res!1649560 () Bool)

(assert (=> b!4048652 (=> res!1649560 e!2512098)))

(assert (=> b!4048652 (= res!1649560 (= (h!48711 rules!2999) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun b!4048653 () Bool)

(assert (=> b!4048653 (= e!2512098 (contains!8608 (t!335770 rules!2999) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(assert (= (and d!1202223 res!1649561) b!4048652))

(assert (= (and b!4048652 (not res!1649560)) b!4048653))

(declare-fun m!4648653 () Bool)

(assert (=> d!1202223 m!4648653))

(declare-fun m!4648655 () Bool)

(assert (=> d!1202223 m!4648655))

(declare-fun m!4648657 () Bool)

(assert (=> b!4048653 m!4648657))

(assert (=> b!4048528 d!1202223))

(declare-fun b!4048656 () Bool)

(declare-fun res!1649562 () Bool)

(declare-fun e!2512101 () Bool)

(assert (=> b!4048656 (=> (not res!1649562) (not e!2512101))))

(declare-fun lt!1442613 () List!43413)

(assert (=> b!4048656 (= res!1649562 (= (size!32366 lt!1442613) (+ (size!32366 prefix!494) (size!32366 lt!1442522))))))

(declare-fun b!4048657 () Bool)

(assert (=> b!4048657 (= e!2512101 (or (not (= lt!1442522 Nil!43289)) (= lt!1442613 prefix!494)))))

(declare-fun b!4048654 () Bool)

(declare-fun e!2512100 () List!43413)

(assert (=> b!4048654 (= e!2512100 lt!1442522)))

(declare-fun b!4048655 () Bool)

(assert (=> b!4048655 (= e!2512100 (Cons!43289 (h!48709 prefix!494) (++!11338 (t!335768 prefix!494) lt!1442522)))))

(declare-fun d!1202225 () Bool)

(assert (=> d!1202225 e!2512101))

(declare-fun res!1649563 () Bool)

(assert (=> d!1202225 (=> (not res!1649563) (not e!2512101))))

(assert (=> d!1202225 (= res!1649563 (= (content!6588 lt!1442613) ((_ map or) (content!6588 prefix!494) (content!6588 lt!1442522))))))

(assert (=> d!1202225 (= lt!1442613 e!2512100)))

(declare-fun c!699462 () Bool)

(assert (=> d!1202225 (= c!699462 ((_ is Nil!43289) prefix!494))))

(assert (=> d!1202225 (= (++!11338 prefix!494 lt!1442522) lt!1442613)))

(assert (= (and d!1202225 c!699462) b!4048654))

(assert (= (and d!1202225 (not c!699462)) b!4048655))

(assert (= (and d!1202225 res!1649563) b!4048656))

(assert (= (and b!4048656 res!1649562) b!4048657))

(declare-fun m!4648659 () Bool)

(assert (=> b!4048656 m!4648659))

(assert (=> b!4048656 m!4648441))

(declare-fun m!4648661 () Bool)

(assert (=> b!4048656 m!4648661))

(declare-fun m!4648663 () Bool)

(assert (=> b!4048655 m!4648663))

(declare-fun m!4648665 () Bool)

(assert (=> d!1202225 m!4648665))

(declare-fun m!4648667 () Bool)

(assert (=> d!1202225 m!4648667))

(declare-fun m!4648669 () Bool)

(assert (=> d!1202225 m!4648669))

(assert (=> b!4048529 d!1202225))

(declare-fun b!4048660 () Bool)

(declare-fun res!1649564 () Bool)

(declare-fun e!2512103 () Bool)

(assert (=> b!4048660 (=> (not res!1649564) (not e!2512103))))

(declare-fun lt!1442614 () List!43413)

(assert (=> b!4048660 (= res!1649564 (= (size!32366 lt!1442614) (+ (size!32366 lt!1442539) (size!32366 lt!1442533))))))

(declare-fun b!4048661 () Bool)

(assert (=> b!4048661 (= e!2512103 (or (not (= lt!1442533 Nil!43289)) (= lt!1442614 lt!1442539)))))

(declare-fun b!4048658 () Bool)

(declare-fun e!2512102 () List!43413)

(assert (=> b!4048658 (= e!2512102 lt!1442533)))

(declare-fun b!4048659 () Bool)

(assert (=> b!4048659 (= e!2512102 (Cons!43289 (h!48709 lt!1442539) (++!11338 (t!335768 lt!1442539) lt!1442533)))))

(declare-fun d!1202227 () Bool)

(assert (=> d!1202227 e!2512103))

(declare-fun res!1649565 () Bool)

(assert (=> d!1202227 (=> (not res!1649565) (not e!2512103))))

(assert (=> d!1202227 (= res!1649565 (= (content!6588 lt!1442614) ((_ map or) (content!6588 lt!1442539) (content!6588 lt!1442533))))))

(assert (=> d!1202227 (= lt!1442614 e!2512102)))

(declare-fun c!699463 () Bool)

(assert (=> d!1202227 (= c!699463 ((_ is Nil!43289) lt!1442539))))

(assert (=> d!1202227 (= (++!11338 lt!1442539 lt!1442533) lt!1442614)))

(assert (= (and d!1202227 c!699463) b!4048658))

(assert (= (and d!1202227 (not c!699463)) b!4048659))

(assert (= (and d!1202227 res!1649565) b!4048660))

(assert (= (and b!4048660 res!1649564) b!4048661))

(declare-fun m!4648671 () Bool)

(assert (=> b!4048660 m!4648671))

(assert (=> b!4048660 m!4648615))

(declare-fun m!4648673 () Bool)

(assert (=> b!4048660 m!4648673))

(declare-fun m!4648675 () Bool)

(assert (=> b!4048659 m!4648675))

(declare-fun m!4648677 () Bool)

(assert (=> d!1202227 m!4648677))

(declare-fun m!4648679 () Bool)

(assert (=> d!1202227 m!4648679))

(declare-fun m!4648681 () Bool)

(assert (=> d!1202227 m!4648681))

(assert (=> b!4048529 d!1202227))

(declare-fun d!1202229 () Bool)

(assert (=> d!1202229 (= (++!11338 (++!11338 prefix!494 newSuffix!27) lt!1442533) (++!11338 prefix!494 (++!11338 newSuffix!27 lt!1442533)))))

(declare-fun lt!1442615 () Unit!62555)

(assert (=> d!1202229 (= lt!1442615 (choose!24537 prefix!494 newSuffix!27 lt!1442533))))

(assert (=> d!1202229 (= (lemmaConcatAssociativity!2640 prefix!494 newSuffix!27 lt!1442533) lt!1442615)))

(declare-fun bs!591399 () Bool)

(assert (= bs!591399 d!1202229))

(declare-fun m!4648683 () Bool)

(assert (=> bs!591399 m!4648683))

(assert (=> bs!591399 m!4648449))

(declare-fun m!4648685 () Bool)

(assert (=> bs!591399 m!4648685))

(assert (=> bs!591399 m!4648485))

(declare-fun m!4648687 () Bool)

(assert (=> bs!591399 m!4648687))

(assert (=> bs!591399 m!4648449))

(assert (=> bs!591399 m!4648485))

(assert (=> b!4048529 d!1202229))

(declare-fun b!4048740 () Bool)

(declare-fun e!2512148 () Option!9350)

(declare-datatypes ((tuple2!42364 0))(
  ( (tuple2!42365 (_1!24316 List!43413) (_2!24316 List!43413)) )
))
(declare-fun lt!1442640 () tuple2!42364)

(declare-fun size!32367 (BalanceConc!25888) Int)

(assert (=> b!4048740 (= e!2512148 (Some!9349 (tuple2!42363 (Token!13011 (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (seqFromList!5153 (_1!24316 lt!1442640))) (rule!10014 (_1!24315 (v!39755 lt!1442555))) (size!32367 (seqFromList!5153 (_1!24316 lt!1442640))) (_1!24316 lt!1442640)) (_2!24316 lt!1442640))))))

(declare-fun lt!1442641 () Unit!62555)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1365 (Regex!11841 List!43413) Unit!62555)

(assert (=> b!4048740 (= lt!1442641 (longestMatchIsAcceptedByMatchOrIsEmpty!1365 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442539))))

(declare-fun res!1649626 () Bool)

(declare-fun findLongestMatchInner!1392 (Regex!11841 List!43413 Int List!43413 List!43413 Int) tuple2!42364)

(assert (=> b!4048740 (= res!1649626 (isEmpty!25834 (_1!24316 (findLongestMatchInner!1392 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) Nil!43289 (size!32366 Nil!43289) lt!1442539 lt!1442539 (size!32366 lt!1442539)))))))

(declare-fun e!2512151 () Bool)

(assert (=> b!4048740 (=> res!1649626 e!2512151)))

(assert (=> b!4048740 e!2512151))

(declare-fun lt!1442642 () Unit!62555)

(assert (=> b!4048740 (= lt!1442642 lt!1442641)))

(declare-fun lt!1442638 () Unit!62555)

(declare-fun lemmaSemiInverse!1914 (TokenValueInjection!13760 BalanceConc!25888) Unit!62555)

(assert (=> b!4048740 (= lt!1442638 (lemmaSemiInverse!1914 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (seqFromList!5153 (_1!24316 lt!1442640))))))

(declare-fun b!4048741 () Bool)

(declare-fun res!1649631 () Bool)

(declare-fun e!2512149 () Bool)

(assert (=> b!4048741 (=> (not res!1649631) (not e!2512149))))

(declare-fun lt!1442639 () Option!9350)

(declare-fun get!14201 (Option!9350) tuple2!42362)

(assert (=> b!4048741 (= res!1649631 (= (++!11338 (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442639)))) (_2!24315 (get!14201 lt!1442639))) lt!1442539))))

(declare-fun d!1202231 () Bool)

(declare-fun e!2512150 () Bool)

(assert (=> d!1202231 e!2512150))

(declare-fun res!1649628 () Bool)

(assert (=> d!1202231 (=> res!1649628 e!2512150)))

(declare-fun isEmpty!25836 (Option!9350) Bool)

(assert (=> d!1202231 (= res!1649628 (isEmpty!25836 lt!1442639))))

(assert (=> d!1202231 (= lt!1442639 e!2512148)))

(declare-fun c!699475 () Bool)

(assert (=> d!1202231 (= c!699475 (isEmpty!25834 (_1!24316 lt!1442640)))))

(declare-fun findLongestMatch!1305 (Regex!11841 List!43413) tuple2!42364)

(assert (=> d!1202231 (= lt!1442640 (findLongestMatch!1305 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442539))))

(assert (=> d!1202231 (ruleValid!2866 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))

(assert (=> d!1202231 (= (maxPrefixOneRule!2835 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) lt!1442539) lt!1442639)))

(declare-fun b!4048742 () Bool)

(assert (=> b!4048742 (= e!2512150 e!2512149)))

(declare-fun res!1649632 () Bool)

(assert (=> b!4048742 (=> (not res!1649632) (not e!2512149))))

(assert (=> b!4048742 (= res!1649632 (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442639))))))))

(declare-fun b!4048743 () Bool)

(declare-fun res!1649630 () Bool)

(assert (=> b!4048743 (=> (not res!1649630) (not e!2512149))))

(assert (=> b!4048743 (= res!1649630 (= (rule!10014 (_1!24315 (get!14201 lt!1442639))) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun b!4048744 () Bool)

(assert (=> b!4048744 (= e!2512149 (= (size!32365 (_1!24315 (get!14201 lt!1442639))) (size!32366 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442639))))))))

(declare-fun b!4048745 () Bool)

(assert (=> b!4048745 (= e!2512151 (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (_1!24316 (findLongestMatchInner!1392 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) Nil!43289 (size!32366 Nil!43289) lt!1442539 lt!1442539 (size!32366 lt!1442539)))))))

(declare-fun b!4048746 () Bool)

(declare-fun res!1649629 () Bool)

(assert (=> b!4048746 (=> (not res!1649629) (not e!2512149))))

(assert (=> b!4048746 (= res!1649629 (< (size!32366 (_2!24315 (get!14201 lt!1442639))) (size!32366 lt!1442539)))))

(declare-fun b!4048747 () Bool)

(assert (=> b!4048747 (= e!2512148 None!9349)))

(declare-fun b!4048748 () Bool)

(declare-fun res!1649627 () Bool)

(assert (=> b!4048748 (=> (not res!1649627) (not e!2512149))))

(assert (=> b!4048748 (= res!1649627 (= (value!218310 (_1!24315 (get!14201 lt!1442639))) (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (get!14201 lt!1442639)))) (seqFromList!5153 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442639)))))))))

(assert (= (and d!1202231 c!699475) b!4048747))

(assert (= (and d!1202231 (not c!699475)) b!4048740))

(assert (= (and b!4048740 (not res!1649626)) b!4048745))

(assert (= (and d!1202231 (not res!1649628)) b!4048742))

(assert (= (and b!4048742 res!1649632) b!4048741))

(assert (= (and b!4048741 res!1649631) b!4048746))

(assert (= (and b!4048746 res!1649629) b!4048743))

(assert (= (and b!4048743 res!1649630) b!4048748))

(assert (= (and b!4048748 res!1649627) b!4048744))

(declare-fun m!4648723 () Bool)

(assert (=> b!4048748 m!4648723))

(declare-fun m!4648725 () Bool)

(assert (=> b!4048748 m!4648725))

(assert (=> b!4048748 m!4648725))

(declare-fun m!4648727 () Bool)

(assert (=> b!4048748 m!4648727))

(declare-fun m!4648729 () Bool)

(assert (=> d!1202231 m!4648729))

(declare-fun m!4648731 () Bool)

(assert (=> d!1202231 m!4648731))

(declare-fun m!4648733 () Bool)

(assert (=> d!1202231 m!4648733))

(assert (=> d!1202231 m!4648437))

(assert (=> b!4048740 m!4648615))

(declare-fun m!4648735 () Bool)

(assert (=> b!4048740 m!4648735))

(declare-fun m!4648737 () Bool)

(assert (=> b!4048740 m!4648737))

(assert (=> b!4048740 m!4648735))

(declare-fun m!4648739 () Bool)

(assert (=> b!4048740 m!4648739))

(declare-fun m!4648741 () Bool)

(assert (=> b!4048740 m!4648741))

(assert (=> b!4048740 m!4648735))

(declare-fun m!4648743 () Bool)

(assert (=> b!4048740 m!4648743))

(declare-fun m!4648745 () Bool)

(assert (=> b!4048740 m!4648745))

(assert (=> b!4048740 m!4648615))

(declare-fun m!4648747 () Bool)

(assert (=> b!4048740 m!4648747))

(assert (=> b!4048740 m!4648735))

(declare-fun m!4648749 () Bool)

(assert (=> b!4048740 m!4648749))

(assert (=> b!4048740 m!4648745))

(assert (=> b!4048745 m!4648745))

(assert (=> b!4048745 m!4648615))

(assert (=> b!4048745 m!4648745))

(assert (=> b!4048745 m!4648615))

(assert (=> b!4048745 m!4648747))

(declare-fun m!4648751 () Bool)

(assert (=> b!4048745 m!4648751))

(assert (=> b!4048741 m!4648723))

(declare-fun m!4648753 () Bool)

(assert (=> b!4048741 m!4648753))

(assert (=> b!4048741 m!4648753))

(declare-fun m!4648755 () Bool)

(assert (=> b!4048741 m!4648755))

(assert (=> b!4048741 m!4648755))

(declare-fun m!4648757 () Bool)

(assert (=> b!4048741 m!4648757))

(assert (=> b!4048743 m!4648723))

(assert (=> b!4048742 m!4648723))

(assert (=> b!4048742 m!4648753))

(assert (=> b!4048742 m!4648753))

(assert (=> b!4048742 m!4648755))

(assert (=> b!4048742 m!4648755))

(declare-fun m!4648759 () Bool)

(assert (=> b!4048742 m!4648759))

(assert (=> b!4048744 m!4648723))

(declare-fun m!4648761 () Bool)

(assert (=> b!4048744 m!4648761))

(assert (=> b!4048746 m!4648723))

(declare-fun m!4648763 () Bool)

(assert (=> b!4048746 m!4648763))

(assert (=> b!4048746 m!4648615))

(assert (=> b!4048508 d!1202231))

(declare-fun b!4048759 () Bool)

(declare-fun res!1649637 () Bool)

(declare-fun e!2512157 () Bool)

(assert (=> b!4048759 (=> (not res!1649637) (not e!2512157))))

(declare-fun lt!1442645 () List!43413)

(assert (=> b!4048759 (= res!1649637 (= (size!32366 lt!1442645) (+ (size!32366 lt!1442536) (size!32366 (_2!24315 (v!39755 lt!1442555))))))))

(declare-fun b!4048760 () Bool)

(assert (=> b!4048760 (= e!2512157 (or (not (= (_2!24315 (v!39755 lt!1442555)) Nil!43289)) (= lt!1442645 lt!1442536)))))

(declare-fun b!4048757 () Bool)

(declare-fun e!2512156 () List!43413)

(assert (=> b!4048757 (= e!2512156 (_2!24315 (v!39755 lt!1442555)))))

(declare-fun b!4048758 () Bool)

(assert (=> b!4048758 (= e!2512156 (Cons!43289 (h!48709 lt!1442536) (++!11338 (t!335768 lt!1442536) (_2!24315 (v!39755 lt!1442555)))))))

(declare-fun d!1202243 () Bool)

(assert (=> d!1202243 e!2512157))

(declare-fun res!1649638 () Bool)

(assert (=> d!1202243 (=> (not res!1649638) (not e!2512157))))

(assert (=> d!1202243 (= res!1649638 (= (content!6588 lt!1442645) ((_ map or) (content!6588 lt!1442536) (content!6588 (_2!24315 (v!39755 lt!1442555))))))))

(assert (=> d!1202243 (= lt!1442645 e!2512156)))

(declare-fun c!699478 () Bool)

(assert (=> d!1202243 (= c!699478 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202243 (= (++!11338 lt!1442536 (_2!24315 (v!39755 lt!1442555))) lt!1442645)))

(assert (= (and d!1202243 c!699478) b!4048757))

(assert (= (and d!1202243 (not c!699478)) b!4048758))

(assert (= (and d!1202243 res!1649638) b!4048759))

(assert (= (and b!4048759 res!1649637) b!4048760))

(declare-fun m!4648765 () Bool)

(assert (=> b!4048759 m!4648765))

(assert (=> b!4048759 m!4648431))

(declare-fun m!4648767 () Bool)

(assert (=> b!4048759 m!4648767))

(declare-fun m!4648769 () Bool)

(assert (=> b!4048758 m!4648769))

(declare-fun m!4648771 () Bool)

(assert (=> d!1202243 m!4648771))

(declare-fun m!4648773 () Bool)

(assert (=> d!1202243 m!4648773))

(declare-fun m!4648775 () Bool)

(assert (=> d!1202243 m!4648775))

(assert (=> b!4048508 d!1202243))

(declare-fun d!1202245 () Bool)

(declare-fun lt!1442646 () BalanceConc!25888)

(assert (=> d!1202245 (= (list!16126 lt!1442646) (originalCharacters!7536 (_1!24315 (v!39755 lt!1442555))))))

(assert (=> d!1202245 (= lt!1442646 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (value!218310 (_1!24315 (v!39755 lt!1442555)))))))

(assert (=> d!1202245 (= (charsOf!4752 (_1!24315 (v!39755 lt!1442555))) lt!1442646)))

(declare-fun b_lambda!118307 () Bool)

(assert (=> (not b_lambda!118307) (not d!1202245)))

(declare-fun tb!243589 () Bool)

(declare-fun t!335776 () Bool)

(assert (=> (and b!4048507 (= (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335776) tb!243589))

(declare-fun b!4048761 () Bool)

(declare-fun e!2512158 () Bool)

(declare-fun tp!1228114 () Bool)

(assert (=> b!4048761 (= e!2512158 (and (inv!57869 (c!699442 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (value!218310 (_1!24315 (v!39755 lt!1442555)))))) tp!1228114))))

(declare-fun result!295160 () Bool)

(assert (=> tb!243589 (= result!295160 (and (inv!57870 (dynLambda!18391 (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (value!218310 (_1!24315 (v!39755 lt!1442555))))) e!2512158))))

(assert (= tb!243589 b!4048761))

(declare-fun m!4648777 () Bool)

(assert (=> b!4048761 m!4648777))

(declare-fun m!4648779 () Bool)

(assert (=> tb!243589 m!4648779))

(assert (=> d!1202245 t!335776))

(declare-fun b_and!311363 () Bool)

(assert (= b_and!311359 (and (=> t!335776 result!295160) b_and!311363)))

(declare-fun t!335778 () Bool)

(declare-fun tb!243591 () Bool)

(assert (=> (and b!4048534 (= (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335778) tb!243591))

(declare-fun result!295162 () Bool)

(assert (= result!295162 result!295160))

(assert (=> d!1202245 t!335778))

(declare-fun b_and!311365 () Bool)

(assert (= b_and!311361 (and (=> t!335778 result!295162) b_and!311365)))

(declare-fun m!4648781 () Bool)

(assert (=> d!1202245 m!4648781))

(declare-fun m!4648783 () Bool)

(assert (=> d!1202245 m!4648783))

(assert (=> b!4048508 d!1202245))

(declare-fun d!1202247 () Bool)

(assert (=> d!1202247 (ruleValid!2866 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))

(declare-fun lt!1442651 () Unit!62555)

(declare-fun choose!24542 (LexerInterface!6525 Rule!13672 List!43415) Unit!62555)

(assert (=> d!1202247 (= lt!1442651 (choose!24542 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) rules!2999))))

(assert (=> d!1202247 (contains!8608 rules!2999 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))

(assert (=> d!1202247 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1936 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) rules!2999) lt!1442651)))

(declare-fun bs!591401 () Bool)

(assert (= bs!591401 d!1202247))

(assert (=> bs!591401 m!4648437))

(declare-fun m!4648807 () Bool)

(assert (=> bs!591401 m!4648807))

(assert (=> bs!591401 m!4648473))

(assert (=> b!4048508 d!1202247))

(declare-fun d!1202255 () Bool)

(declare-fun e!2512168 () Bool)

(assert (=> d!1202255 e!2512168))

(declare-fun res!1649648 () Bool)

(assert (=> d!1202255 (=> (not res!1649648) (not e!2512168))))

(assert (=> d!1202255 (= res!1649648 (semiInverseModEq!2963 (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))))

(declare-fun Unit!62559 () Unit!62555)

(assert (=> d!1202255 (= (lemmaInv!1145 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) Unit!62559)))

(declare-fun b!4048775 () Bool)

(assert (=> b!4048775 (= e!2512168 (equivClasses!2862 (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))))

(assert (= (and d!1202255 res!1649648) b!4048775))

(declare-fun m!4648813 () Bool)

(assert (=> d!1202255 m!4648813))

(declare-fun m!4648815 () Bool)

(assert (=> b!4048775 m!4648815))

(assert (=> b!4048508 d!1202255))

(declare-fun d!1202259 () Bool)

(declare-fun e!2512169 () Bool)

(assert (=> d!1202259 e!2512169))

(declare-fun res!1649650 () Bool)

(assert (=> d!1202259 (=> res!1649650 e!2512169)))

(declare-fun lt!1442652 () Bool)

(assert (=> d!1202259 (= res!1649650 (not lt!1442652))))

(declare-fun e!2512170 () Bool)

(assert (=> d!1202259 (= lt!1442652 e!2512170)))

(declare-fun res!1649651 () Bool)

(assert (=> d!1202259 (=> res!1649651 e!2512170)))

(assert (=> d!1202259 (= res!1649651 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202259 (= (isPrefix!4023 lt!1442536 (++!11338 lt!1442536 newSuffixResult!27)) lt!1442652)))

(declare-fun b!4048779 () Bool)

(assert (=> b!4048779 (= e!2512169 (>= (size!32366 (++!11338 lt!1442536 newSuffixResult!27)) (size!32366 lt!1442536)))))

(declare-fun b!4048778 () Bool)

(declare-fun e!2512171 () Bool)

(assert (=> b!4048778 (= e!2512171 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 (++!11338 lt!1442536 newSuffixResult!27))))))

(declare-fun b!4048776 () Bool)

(assert (=> b!4048776 (= e!2512170 e!2512171)))

(declare-fun res!1649649 () Bool)

(assert (=> b!4048776 (=> (not res!1649649) (not e!2512171))))

(assert (=> b!4048776 (= res!1649649 (not ((_ is Nil!43289) (++!11338 lt!1442536 newSuffixResult!27))))))

(declare-fun b!4048777 () Bool)

(declare-fun res!1649652 () Bool)

(assert (=> b!4048777 (=> (not res!1649652) (not e!2512171))))

(assert (=> b!4048777 (= res!1649652 (= (head!8558 lt!1442536) (head!8558 (++!11338 lt!1442536 newSuffixResult!27))))))

(assert (= (and d!1202259 (not res!1649651)) b!4048776))

(assert (= (and b!4048776 res!1649649) b!4048777))

(assert (= (and b!4048777 res!1649652) b!4048778))

(assert (= (and d!1202259 (not res!1649650)) b!4048779))

(assert (=> b!4048779 m!4648409))

(declare-fun m!4648817 () Bool)

(assert (=> b!4048779 m!4648817))

(assert (=> b!4048779 m!4648431))

(assert (=> b!4048778 m!4648585))

(assert (=> b!4048778 m!4648409))

(declare-fun m!4648819 () Bool)

(assert (=> b!4048778 m!4648819))

(assert (=> b!4048778 m!4648585))

(assert (=> b!4048778 m!4648819))

(declare-fun m!4648821 () Bool)

(assert (=> b!4048778 m!4648821))

(assert (=> b!4048777 m!4648591))

(assert (=> b!4048777 m!4648409))

(declare-fun m!4648823 () Bool)

(assert (=> b!4048777 m!4648823))

(assert (=> b!4048508 d!1202259))

(declare-fun d!1202261 () Bool)

(declare-fun res!1649657 () Bool)

(declare-fun e!2512174 () Bool)

(assert (=> d!1202261 (=> (not res!1649657) (not e!2512174))))

(assert (=> d!1202261 (= res!1649657 (validRegex!5355 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))

(assert (=> d!1202261 (= (ruleValid!2866 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) e!2512174)))

(declare-fun b!4048784 () Bool)

(declare-fun res!1649658 () Bool)

(assert (=> b!4048784 (=> (not res!1649658) (not e!2512174))))

(assert (=> b!4048784 (= res!1649658 (not (nullable!4155 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))))

(declare-fun b!4048785 () Bool)

(assert (=> b!4048785 (= e!2512174 (not (= (tag!7796 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (String!49549 ""))))))

(assert (= (and d!1202261 res!1649657) b!4048784))

(assert (= (and b!4048784 res!1649658) b!4048785))

(declare-fun m!4648825 () Bool)

(assert (=> d!1202261 m!4648825))

(declare-fun m!4648827 () Bool)

(assert (=> b!4048784 m!4648827))

(assert (=> b!4048508 d!1202261))

(declare-fun d!1202263 () Bool)

(assert (=> d!1202263 (= (list!16126 (charsOf!4752 (_1!24315 (v!39755 lt!1442555)))) (list!16127 (c!699442 (charsOf!4752 (_1!24315 (v!39755 lt!1442555))))))))

(declare-fun bs!591402 () Bool)

(assert (= bs!591402 d!1202263))

(declare-fun m!4648829 () Bool)

(assert (=> bs!591402 m!4648829))

(assert (=> b!4048508 d!1202263))

(declare-fun d!1202265 () Bool)

(declare-fun e!2512175 () Bool)

(assert (=> d!1202265 e!2512175))

(declare-fun res!1649660 () Bool)

(assert (=> d!1202265 (=> res!1649660 e!2512175)))

(declare-fun lt!1442653 () Bool)

(assert (=> d!1202265 (= res!1649660 (not lt!1442653))))

(declare-fun e!2512176 () Bool)

(assert (=> d!1202265 (= lt!1442653 e!2512176)))

(declare-fun res!1649661 () Bool)

(assert (=> d!1202265 (=> res!1649661 e!2512176)))

(assert (=> d!1202265 (= res!1649661 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202265 (= (isPrefix!4023 lt!1442536 lt!1442545) lt!1442653)))

(declare-fun b!4048789 () Bool)

(assert (=> b!4048789 (= e!2512175 (>= (size!32366 lt!1442545) (size!32366 lt!1442536)))))

(declare-fun b!4048788 () Bool)

(declare-fun e!2512177 () Bool)

(assert (=> b!4048788 (= e!2512177 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 lt!1442545)))))

(declare-fun b!4048786 () Bool)

(assert (=> b!4048786 (= e!2512176 e!2512177)))

(declare-fun res!1649659 () Bool)

(assert (=> b!4048786 (=> (not res!1649659) (not e!2512177))))

(assert (=> b!4048786 (= res!1649659 (not ((_ is Nil!43289) lt!1442545)))))

(declare-fun b!4048787 () Bool)

(declare-fun res!1649662 () Bool)

(assert (=> b!4048787 (=> (not res!1649662) (not e!2512177))))

(assert (=> b!4048787 (= res!1649662 (= (head!8558 lt!1442536) (head!8558 lt!1442545)))))

(assert (= (and d!1202265 (not res!1649661)) b!4048786))

(assert (= (and b!4048786 res!1649659) b!4048787))

(assert (= (and b!4048787 res!1649662) b!4048788))

(assert (= (and d!1202265 (not res!1649660)) b!4048789))

(declare-fun m!4648831 () Bool)

(assert (=> b!4048789 m!4648831))

(assert (=> b!4048789 m!4648431))

(assert (=> b!4048788 m!4648585))

(declare-fun m!4648833 () Bool)

(assert (=> b!4048788 m!4648833))

(assert (=> b!4048788 m!4648585))

(assert (=> b!4048788 m!4648833))

(declare-fun m!4648835 () Bool)

(assert (=> b!4048788 m!4648835))

(assert (=> b!4048787 m!4648591))

(declare-fun m!4648837 () Bool)

(assert (=> b!4048787 m!4648837))

(assert (=> b!4048508 d!1202265))

(declare-fun d!1202267 () Bool)

(assert (=> d!1202267 (= (size!32365 token!484) (size!32366 (originalCharacters!7536 token!484)))))

(declare-fun Unit!62560 () Unit!62555)

(assert (=> d!1202267 (= (lemmaCharactersSize!1455 token!484) Unit!62560)))

(declare-fun bs!591403 () Bool)

(assert (= bs!591403 d!1202267))

(assert (=> bs!591403 m!4648489))

(assert (=> b!4048508 d!1202267))

(declare-fun d!1202269 () Bool)

(declare-fun dynLambda!18392 (Int BalanceConc!25888) TokenValue!7166)

(assert (=> d!1202269 (= (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (seqFromList!5153 lt!1442536)) (dynLambda!18392 (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (seqFromList!5153 lt!1442536)))))

(declare-fun b_lambda!118309 () Bool)

(assert (=> (not b_lambda!118309) (not d!1202269)))

(declare-fun t!335780 () Bool)

(declare-fun tb!243593 () Bool)

(assert (=> (and b!4048507 (= (toValue!9488 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335780) tb!243593))

(declare-fun result!295164 () Bool)

(assert (=> tb!243593 (= result!295164 (inv!21 (dynLambda!18392 (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))) (seqFromList!5153 lt!1442536))))))

(declare-fun m!4648839 () Bool)

(assert (=> tb!243593 m!4648839))

(assert (=> d!1202269 t!335780))

(declare-fun b_and!311367 () Bool)

(assert (= b_and!311347 (and (=> t!335780 result!295164) b_and!311367)))

(declare-fun tb!243595 () Bool)

(declare-fun t!335782 () Bool)

(assert (=> (and b!4048534 (= (toValue!9488 (transformation!6936 (h!48711 rules!2999))) (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335782) tb!243595))

(declare-fun result!295168 () Bool)

(assert (= result!295168 result!295164))

(assert (=> d!1202269 t!335782))

(declare-fun b_and!311369 () Bool)

(assert (= b_and!311351 (and (=> t!335782 result!295168) b_and!311369)))

(assert (=> d!1202269 m!4648403))

(declare-fun m!4648841 () Bool)

(assert (=> d!1202269 m!4648841))

(assert (=> b!4048508 d!1202269))

(declare-fun d!1202271 () Bool)

(declare-fun lt!1442654 () Int)

(assert (=> d!1202271 (>= lt!1442654 0)))

(declare-fun e!2512181 () Int)

(assert (=> d!1202271 (= lt!1442654 e!2512181)))

(declare-fun c!699481 () Bool)

(assert (=> d!1202271 (= c!699481 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202271 (= (size!32366 lt!1442536) lt!1442654)))

(declare-fun b!4048792 () Bool)

(assert (=> b!4048792 (= e!2512181 0)))

(declare-fun b!4048793 () Bool)

(assert (=> b!4048793 (= e!2512181 (+ 1 (size!32366 (t!335768 lt!1442536))))))

(assert (= (and d!1202271 c!699481) b!4048792))

(assert (= (and d!1202271 (not c!699481)) b!4048793))

(declare-fun m!4648843 () Bool)

(assert (=> b!4048793 m!4648843))

(assert (=> b!4048508 d!1202271))

(declare-fun d!1202273 () Bool)

(assert (=> d!1202273 (isPrefix!4023 lt!1442536 (++!11338 lt!1442536 newSuffixResult!27))))

(declare-fun lt!1442655 () Unit!62555)

(assert (=> d!1202273 (= lt!1442655 (choose!24539 lt!1442536 newSuffixResult!27))))

(assert (=> d!1202273 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 newSuffixResult!27) lt!1442655)))

(declare-fun bs!591404 () Bool)

(assert (= bs!591404 d!1202273))

(assert (=> bs!591404 m!4648409))

(assert (=> bs!591404 m!4648409))

(assert (=> bs!591404 m!4648411))

(declare-fun m!4648845 () Bool)

(assert (=> bs!591404 m!4648845))

(assert (=> b!4048508 d!1202273))

(declare-fun d!1202275 () Bool)

(declare-fun fromListB!2349 (List!43413) BalanceConc!25888)

(assert (=> d!1202275 (= (seqFromList!5153 lt!1442536) (fromListB!2349 lt!1442536))))

(declare-fun bs!591405 () Bool)

(assert (= bs!591405 d!1202275))

(declare-fun m!4648847 () Bool)

(assert (=> bs!591405 m!4648847))

(assert (=> b!4048508 d!1202275))

(declare-fun d!1202277 () Bool)

(assert (=> d!1202277 (= (size!32365 (_1!24315 (v!39755 lt!1442555))) (size!32366 (originalCharacters!7536 (_1!24315 (v!39755 lt!1442555)))))))

(declare-fun Unit!62561 () Unit!62555)

(assert (=> d!1202277 (= (lemmaCharactersSize!1455 (_1!24315 (v!39755 lt!1442555))) Unit!62561)))

(declare-fun bs!591406 () Bool)

(assert (= bs!591406 d!1202277))

(declare-fun m!4648849 () Bool)

(assert (=> bs!591406 m!4648849))

(assert (=> b!4048508 d!1202277))

(declare-fun d!1202279 () Bool)

(assert (=> d!1202279 (= (maxPrefixOneRule!2835 thiss!21717 (rule!10014 (_1!24315 (v!39755 lt!1442555))) lt!1442539) (Some!9349 (tuple2!42363 (Token!13011 (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (seqFromList!5153 lt!1442536)) (rule!10014 (_1!24315 (v!39755 lt!1442555))) (size!32366 lt!1442536) lt!1442536) (_2!24315 (v!39755 lt!1442555)))))))

(declare-fun lt!1442658 () Unit!62555)

(declare-fun choose!24545 (LexerInterface!6525 List!43415 List!43413 List!43413 List!43413 Rule!13672) Unit!62555)

(assert (=> d!1202279 (= lt!1442658 (choose!24545 thiss!21717 rules!2999 lt!1442536 lt!1442539 (_2!24315 (v!39755 lt!1442555)) (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(assert (=> d!1202279 (not (isEmpty!25833 rules!2999))))

(assert (=> d!1202279 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1641 thiss!21717 rules!2999 lt!1442536 lt!1442539 (_2!24315 (v!39755 lt!1442555)) (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442658)))

(declare-fun bs!591407 () Bool)

(assert (= bs!591407 d!1202279))

(assert (=> bs!591407 m!4648413))

(assert (=> bs!591407 m!4648535))

(declare-fun m!4648851 () Bool)

(assert (=> bs!591407 m!4648851))

(assert (=> bs!591407 m!4648403))

(assert (=> bs!591407 m!4648435))

(assert (=> bs!591407 m!4648403))

(assert (=> bs!591407 m!4648431))

(assert (=> b!4048508 d!1202279))

(declare-fun b!4048796 () Bool)

(declare-fun res!1649663 () Bool)

(declare-fun e!2512183 () Bool)

(assert (=> b!4048796 (=> (not res!1649663) (not e!2512183))))

(declare-fun lt!1442659 () List!43413)

(assert (=> b!4048796 (= res!1649663 (= (size!32366 lt!1442659) (+ (size!32366 lt!1442536) (size!32366 newSuffixResult!27))))))

(declare-fun b!4048797 () Bool)

(assert (=> b!4048797 (= e!2512183 (or (not (= newSuffixResult!27 Nil!43289)) (= lt!1442659 lt!1442536)))))

(declare-fun b!4048794 () Bool)

(declare-fun e!2512182 () List!43413)

(assert (=> b!4048794 (= e!2512182 newSuffixResult!27)))

(declare-fun b!4048795 () Bool)

(assert (=> b!4048795 (= e!2512182 (Cons!43289 (h!48709 lt!1442536) (++!11338 (t!335768 lt!1442536) newSuffixResult!27)))))

(declare-fun d!1202281 () Bool)

(assert (=> d!1202281 e!2512183))

(declare-fun res!1649664 () Bool)

(assert (=> d!1202281 (=> (not res!1649664) (not e!2512183))))

(assert (=> d!1202281 (= res!1649664 (= (content!6588 lt!1442659) ((_ map or) (content!6588 lt!1442536) (content!6588 newSuffixResult!27))))))

(assert (=> d!1202281 (= lt!1442659 e!2512182)))

(declare-fun c!699482 () Bool)

(assert (=> d!1202281 (= c!699482 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202281 (= (++!11338 lt!1442536 newSuffixResult!27) lt!1442659)))

(assert (= (and d!1202281 c!699482) b!4048794))

(assert (= (and d!1202281 (not c!699482)) b!4048795))

(assert (= (and d!1202281 res!1649664) b!4048796))

(assert (= (and b!4048796 res!1649663) b!4048797))

(declare-fun m!4648853 () Bool)

(assert (=> b!4048796 m!4648853))

(assert (=> b!4048796 m!4648431))

(declare-fun m!4648855 () Bool)

(assert (=> b!4048796 m!4648855))

(declare-fun m!4648857 () Bool)

(assert (=> b!4048795 m!4648857))

(declare-fun m!4648859 () Bool)

(assert (=> d!1202281 m!4648859))

(assert (=> d!1202281 m!4648773))

(declare-fun m!4648861 () Bool)

(assert (=> d!1202281 m!4648861))

(assert (=> b!4048508 d!1202281))

(declare-fun d!1202283 () Bool)

(assert (=> d!1202283 (isPrefix!4023 lt!1442536 (++!11338 lt!1442536 (_2!24315 (v!39755 lt!1442555))))))

(declare-fun lt!1442666 () Unit!62555)

(assert (=> d!1202283 (= lt!1442666 (choose!24539 lt!1442536 (_2!24315 (v!39755 lt!1442555))))))

(assert (=> d!1202283 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442536 (_2!24315 (v!39755 lt!1442555))) lt!1442666)))

(declare-fun bs!591408 () Bool)

(assert (= bs!591408 d!1202283))

(assert (=> bs!591408 m!4648429))

(assert (=> bs!591408 m!4648429))

(declare-fun m!4648863 () Bool)

(assert (=> bs!591408 m!4648863))

(declare-fun m!4648865 () Bool)

(assert (=> bs!591408 m!4648865))

(assert (=> b!4048508 d!1202283))

(declare-fun d!1202285 () Bool)

(assert (=> d!1202285 (isPrefix!4023 lt!1442546 (++!11338 lt!1442546 suffixResult!105))))

(declare-fun lt!1442671 () Unit!62555)

(assert (=> d!1202285 (= lt!1442671 (choose!24539 lt!1442546 suffixResult!105))))

(assert (=> d!1202285 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 suffixResult!105) lt!1442671)))

(declare-fun bs!591409 () Bool)

(assert (= bs!591409 d!1202285))

(assert (=> bs!591409 m!4648365))

(assert (=> bs!591409 m!4648365))

(declare-fun m!4648867 () Bool)

(assert (=> bs!591409 m!4648867))

(declare-fun m!4648869 () Bool)

(assert (=> bs!591409 m!4648869))

(assert (=> b!4048530 d!1202285))

(declare-fun d!1202287 () Bool)

(declare-fun e!2512186 () Bool)

(assert (=> d!1202287 e!2512186))

(declare-fun res!1649666 () Bool)

(assert (=> d!1202287 (=> res!1649666 e!2512186)))

(declare-fun lt!1442672 () Bool)

(assert (=> d!1202287 (= res!1649666 (not lt!1442672))))

(declare-fun e!2512187 () Bool)

(assert (=> d!1202287 (= lt!1442672 e!2512187)))

(declare-fun res!1649667 () Bool)

(assert (=> d!1202287 (=> res!1649667 e!2512187)))

(assert (=> d!1202287 (= res!1649667 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202287 (= (isPrefix!4023 lt!1442546 lt!1442575) lt!1442672)))

(declare-fun b!4048805 () Bool)

(assert (=> b!4048805 (= e!2512186 (>= (size!32366 lt!1442575) (size!32366 lt!1442546)))))

(declare-fun b!4048804 () Bool)

(declare-fun e!2512188 () Bool)

(assert (=> b!4048804 (= e!2512188 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 lt!1442575)))))

(declare-fun b!4048802 () Bool)

(assert (=> b!4048802 (= e!2512187 e!2512188)))

(declare-fun res!1649665 () Bool)

(assert (=> b!4048802 (=> (not res!1649665) (not e!2512188))))

(assert (=> b!4048802 (= res!1649665 (not ((_ is Nil!43289) lt!1442575)))))

(declare-fun b!4048803 () Bool)

(declare-fun res!1649668 () Bool)

(assert (=> b!4048803 (=> (not res!1649668) (not e!2512188))))

(assert (=> b!4048803 (= res!1649668 (= (head!8558 lt!1442546) (head!8558 lt!1442575)))))

(assert (= (and d!1202287 (not res!1649667)) b!4048802))

(assert (= (and b!4048802 res!1649665) b!4048803))

(assert (= (and b!4048803 res!1649668) b!4048804))

(assert (= (and d!1202287 (not res!1649666)) b!4048805))

(declare-fun m!4648871 () Bool)

(assert (=> b!4048805 m!4648871))

(assert (=> b!4048805 m!4648439))

(assert (=> b!4048804 m!4648603))

(declare-fun m!4648873 () Bool)

(assert (=> b!4048804 m!4648873))

(assert (=> b!4048804 m!4648603))

(assert (=> b!4048804 m!4648873))

(declare-fun m!4648875 () Bool)

(assert (=> b!4048804 m!4648875))

(assert (=> b!4048803 m!4648599))

(declare-fun m!4648877 () Bool)

(assert (=> b!4048803 m!4648877))

(assert (=> b!4048530 d!1202287))

(declare-fun d!1202289 () Bool)

(declare-fun e!2512189 () Bool)

(assert (=> d!1202289 e!2512189))

(declare-fun res!1649670 () Bool)

(assert (=> d!1202289 (=> res!1649670 e!2512189)))

(declare-fun lt!1442673 () Bool)

(assert (=> d!1202289 (= res!1649670 (not lt!1442673))))

(declare-fun e!2512190 () Bool)

(assert (=> d!1202289 (= lt!1442673 e!2512190)))

(declare-fun res!1649671 () Bool)

(assert (=> d!1202289 (=> res!1649671 e!2512190)))

(assert (=> d!1202289 (= res!1649671 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202289 (= (isPrefix!4023 lt!1442546 lt!1442528) lt!1442673)))

(declare-fun b!4048809 () Bool)

(assert (=> b!4048809 (= e!2512189 (>= (size!32366 lt!1442528) (size!32366 lt!1442546)))))

(declare-fun b!4048808 () Bool)

(declare-fun e!2512191 () Bool)

(assert (=> b!4048808 (= e!2512191 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 lt!1442528)))))

(declare-fun b!4048806 () Bool)

(assert (=> b!4048806 (= e!2512190 e!2512191)))

(declare-fun res!1649669 () Bool)

(assert (=> b!4048806 (=> (not res!1649669) (not e!2512191))))

(assert (=> b!4048806 (= res!1649669 (not ((_ is Nil!43289) lt!1442528)))))

(declare-fun b!4048807 () Bool)

(declare-fun res!1649672 () Bool)

(assert (=> b!4048807 (=> (not res!1649672) (not e!2512191))))

(assert (=> b!4048807 (= res!1649672 (= (head!8558 lt!1442546) (head!8558 lt!1442528)))))

(assert (= (and d!1202289 (not res!1649671)) b!4048806))

(assert (= (and b!4048806 res!1649669) b!4048807))

(assert (= (and b!4048807 res!1649672) b!4048808))

(assert (= (and d!1202289 (not res!1649670)) b!4048809))

(declare-fun m!4648879 () Bool)

(assert (=> b!4048809 m!4648879))

(assert (=> b!4048809 m!4648439))

(assert (=> b!4048808 m!4648603))

(declare-fun m!4648881 () Bool)

(assert (=> b!4048808 m!4648881))

(assert (=> b!4048808 m!4648603))

(assert (=> b!4048808 m!4648881))

(declare-fun m!4648883 () Bool)

(assert (=> b!4048808 m!4648883))

(assert (=> b!4048807 m!4648599))

(declare-fun m!4648885 () Bool)

(assert (=> b!4048807 m!4648885))

(assert (=> b!4048530 d!1202289))

(declare-fun d!1202291 () Bool)

(declare-fun e!2512196 () Bool)

(assert (=> d!1202291 e!2512196))

(declare-fun res!1649686 () Bool)

(assert (=> d!1202291 (=> res!1649686 e!2512196)))

(declare-fun lt!1442674 () Bool)

(assert (=> d!1202291 (= res!1649686 (not lt!1442674))))

(declare-fun e!2512197 () Bool)

(assert (=> d!1202291 (= lt!1442674 e!2512197)))

(declare-fun res!1649687 () Bool)

(assert (=> d!1202291 (=> res!1649687 e!2512197)))

(assert (=> d!1202291 (= res!1649687 ((_ is Nil!43289) prefix!494))))

(assert (=> d!1202291 (= (isPrefix!4023 prefix!494 lt!1442575) lt!1442674)))

(declare-fun b!4048823 () Bool)

(assert (=> b!4048823 (= e!2512196 (>= (size!32366 lt!1442575) (size!32366 prefix!494)))))

(declare-fun b!4048822 () Bool)

(declare-fun e!2512198 () Bool)

(assert (=> b!4048822 (= e!2512198 (isPrefix!4023 (tail!6290 prefix!494) (tail!6290 lt!1442575)))))

(declare-fun b!4048820 () Bool)

(assert (=> b!4048820 (= e!2512197 e!2512198)))

(declare-fun res!1649685 () Bool)

(assert (=> b!4048820 (=> (not res!1649685) (not e!2512198))))

(assert (=> b!4048820 (= res!1649685 (not ((_ is Nil!43289) lt!1442575)))))

(declare-fun b!4048821 () Bool)

(declare-fun res!1649688 () Bool)

(assert (=> b!4048821 (=> (not res!1649688) (not e!2512198))))

(assert (=> b!4048821 (= res!1649688 (= (head!8558 prefix!494) (head!8558 lt!1442575)))))

(assert (= (and d!1202291 (not res!1649687)) b!4048820))

(assert (= (and b!4048820 res!1649685) b!4048821))

(assert (= (and b!4048821 res!1649688) b!4048822))

(assert (= (and d!1202291 (not res!1649686)) b!4048823))

(assert (=> b!4048823 m!4648871))

(assert (=> b!4048823 m!4648441))

(declare-fun m!4648887 () Bool)

(assert (=> b!4048822 m!4648887))

(assert (=> b!4048822 m!4648873))

(assert (=> b!4048822 m!4648887))

(assert (=> b!4048822 m!4648873))

(declare-fun m!4648889 () Bool)

(assert (=> b!4048822 m!4648889))

(declare-fun m!4648891 () Bool)

(assert (=> b!4048821 m!4648891))

(assert (=> b!4048821 m!4648877))

(assert (=> b!4048530 d!1202291))

(declare-fun d!1202293 () Bool)

(assert (=> d!1202293 (isPrefix!4023 prefix!494 (++!11338 prefix!494 suffix!1299))))

(declare-fun lt!1442675 () Unit!62555)

(assert (=> d!1202293 (= lt!1442675 (choose!24539 prefix!494 suffix!1299))))

(assert (=> d!1202293 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 prefix!494 suffix!1299) lt!1442675)))

(declare-fun bs!591410 () Bool)

(assert (= bs!591410 d!1202293))

(assert (=> bs!591410 m!4648495))

(assert (=> bs!591410 m!4648495))

(declare-fun m!4648893 () Bool)

(assert (=> bs!591410 m!4648893))

(declare-fun m!4648895 () Bool)

(assert (=> bs!591410 m!4648895))

(assert (=> b!4048530 d!1202293))

(declare-fun b!4048830 () Bool)

(declare-fun res!1649691 () Bool)

(declare-fun e!2512200 () Bool)

(assert (=> b!4048830 (=> (not res!1649691) (not e!2512200))))

(declare-fun lt!1442676 () List!43413)

(assert (=> b!4048830 (= res!1649691 (= (size!32366 lt!1442676) (+ (size!32366 lt!1442546) (size!32366 lt!1442560))))))

(declare-fun b!4048831 () Bool)

(assert (=> b!4048831 (= e!2512200 (or (not (= lt!1442560 Nil!43289)) (= lt!1442676 lt!1442546)))))

(declare-fun b!4048828 () Bool)

(declare-fun e!2512199 () List!43413)

(assert (=> b!4048828 (= e!2512199 lt!1442560)))

(declare-fun b!4048829 () Bool)

(assert (=> b!4048829 (= e!2512199 (Cons!43289 (h!48709 lt!1442546) (++!11338 (t!335768 lt!1442546) lt!1442560)))))

(declare-fun d!1202295 () Bool)

(assert (=> d!1202295 e!2512200))

(declare-fun res!1649692 () Bool)

(assert (=> d!1202295 (=> (not res!1649692) (not e!2512200))))

(assert (=> d!1202295 (= res!1649692 (= (content!6588 lt!1442676) ((_ map or) (content!6588 lt!1442546) (content!6588 lt!1442560))))))

(assert (=> d!1202295 (= lt!1442676 e!2512199)))

(declare-fun c!699485 () Bool)

(assert (=> d!1202295 (= c!699485 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202295 (= (++!11338 lt!1442546 lt!1442560) lt!1442676)))

(assert (= (and d!1202295 c!699485) b!4048828))

(assert (= (and d!1202295 (not c!699485)) b!4048829))

(assert (= (and d!1202295 res!1649692) b!4048830))

(assert (= (and b!4048830 res!1649691) b!4048831))

(declare-fun m!4648897 () Bool)

(assert (=> b!4048830 m!4648897))

(assert (=> b!4048830 m!4648439))

(assert (=> b!4048830 m!4648567))

(declare-fun m!4648899 () Bool)

(assert (=> b!4048829 m!4648899))

(declare-fun m!4648901 () Bool)

(assert (=> d!1202295 m!4648901))

(assert (=> d!1202295 m!4648549))

(assert (=> d!1202295 m!4648573))

(assert (=> b!4048509 d!1202295))

(declare-fun d!1202297 () Bool)

(declare-fun lt!1442679 () List!43413)

(assert (=> d!1202297 (= (++!11338 lt!1442546 lt!1442679) prefix!494)))

(declare-fun e!2512203 () List!43413)

(assert (=> d!1202297 (= lt!1442679 e!2512203)))

(declare-fun c!699488 () Bool)

(assert (=> d!1202297 (= c!699488 ((_ is Cons!43289) lt!1442546))))

(assert (=> d!1202297 (>= (size!32366 prefix!494) (size!32366 lt!1442546))))

(assert (=> d!1202297 (= (getSuffix!2440 prefix!494 lt!1442546) lt!1442679)))

(declare-fun b!4048836 () Bool)

(assert (=> b!4048836 (= e!2512203 (getSuffix!2440 (tail!6290 prefix!494) (t!335768 lt!1442546)))))

(declare-fun b!4048837 () Bool)

(assert (=> b!4048837 (= e!2512203 prefix!494)))

(assert (= (and d!1202297 c!699488) b!4048836))

(assert (= (and d!1202297 (not c!699488)) b!4048837))

(declare-fun m!4648903 () Bool)

(assert (=> d!1202297 m!4648903))

(assert (=> d!1202297 m!4648441))

(assert (=> d!1202297 m!4648439))

(assert (=> b!4048836 m!4648887))

(assert (=> b!4048836 m!4648887))

(declare-fun m!4648905 () Bool)

(assert (=> b!4048836 m!4648905))

(assert (=> b!4048509 d!1202297))

(declare-fun d!1202299 () Bool)

(declare-fun e!2512204 () Bool)

(assert (=> d!1202299 e!2512204))

(declare-fun res!1649694 () Bool)

(assert (=> d!1202299 (=> res!1649694 e!2512204)))

(declare-fun lt!1442680 () Bool)

(assert (=> d!1202299 (= res!1649694 (not lt!1442680))))

(declare-fun e!2512205 () Bool)

(assert (=> d!1202299 (= lt!1442680 e!2512205)))

(declare-fun res!1649695 () Bool)

(assert (=> d!1202299 (=> res!1649695 e!2512205)))

(assert (=> d!1202299 (= res!1649695 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202299 (= (isPrefix!4023 lt!1442546 prefix!494) lt!1442680)))

(declare-fun b!4048841 () Bool)

(assert (=> b!4048841 (= e!2512204 (>= (size!32366 prefix!494) (size!32366 lt!1442546)))))

(declare-fun b!4048840 () Bool)

(declare-fun e!2512206 () Bool)

(assert (=> b!4048840 (= e!2512206 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 prefix!494)))))

(declare-fun b!4048838 () Bool)

(assert (=> b!4048838 (= e!2512205 e!2512206)))

(declare-fun res!1649693 () Bool)

(assert (=> b!4048838 (=> (not res!1649693) (not e!2512206))))

(assert (=> b!4048838 (= res!1649693 (not ((_ is Nil!43289) prefix!494)))))

(declare-fun b!4048839 () Bool)

(declare-fun res!1649696 () Bool)

(assert (=> b!4048839 (=> (not res!1649696) (not e!2512206))))

(assert (=> b!4048839 (= res!1649696 (= (head!8558 lt!1442546) (head!8558 prefix!494)))))

(assert (= (and d!1202299 (not res!1649695)) b!4048838))

(assert (= (and b!4048838 res!1649693) b!4048839))

(assert (= (and b!4048839 res!1649696) b!4048840))

(assert (= (and d!1202299 (not res!1649694)) b!4048841))

(assert (=> b!4048841 m!4648441))

(assert (=> b!4048841 m!4648439))

(assert (=> b!4048840 m!4648603))

(assert (=> b!4048840 m!4648887))

(assert (=> b!4048840 m!4648603))

(assert (=> b!4048840 m!4648887))

(declare-fun m!4648907 () Bool)

(assert (=> b!4048840 m!4648907))

(assert (=> b!4048839 m!4648599))

(assert (=> b!4048839 m!4648891))

(assert (=> b!4048509 d!1202299))

(declare-fun d!1202301 () Bool)

(assert (=> d!1202301 (isPrefix!4023 lt!1442546 prefix!494)))

(declare-fun lt!1442688 () Unit!62555)

(declare-fun choose!24548 (List!43413 List!43413 List!43413) Unit!62555)

(assert (=> d!1202301 (= lt!1442688 (choose!24548 prefix!494 lt!1442546 lt!1442575))))

(assert (=> d!1202301 (isPrefix!4023 prefix!494 lt!1442575)))

(assert (=> d!1202301 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!587 prefix!494 lt!1442546 lt!1442575) lt!1442688)))

(declare-fun bs!591411 () Bool)

(assert (= bs!591411 d!1202301))

(assert (=> bs!591411 m!4648379))

(declare-fun m!4648909 () Bool)

(assert (=> bs!591411 m!4648909))

(assert (=> bs!591411 m!4648363))

(assert (=> b!4048509 d!1202301))

(declare-fun b!4048861 () Bool)

(declare-fun e!2512217 () Bool)

(declare-fun e!2512216 () Bool)

(assert (=> b!4048861 (= e!2512217 e!2512216)))

(declare-fun c!699495 () Bool)

(assert (=> b!4048861 (= c!699495 ((_ is IntegerValue!21499) (value!218310 token!484)))))

(declare-fun b!4048862 () Bool)

(declare-fun e!2512218 () Bool)

(declare-fun inv!15 (TokenValue!7166) Bool)

(assert (=> b!4048862 (= e!2512218 (inv!15 (value!218310 token!484)))))

(declare-fun b!4048863 () Bool)

(declare-fun inv!17 (TokenValue!7166) Bool)

(assert (=> b!4048863 (= e!2512216 (inv!17 (value!218310 token!484)))))

(declare-fun b!4048864 () Bool)

(declare-fun inv!16 (TokenValue!7166) Bool)

(assert (=> b!4048864 (= e!2512217 (inv!16 (value!218310 token!484)))))

(declare-fun b!4048865 () Bool)

(declare-fun res!1649706 () Bool)

(assert (=> b!4048865 (=> res!1649706 e!2512218)))

(assert (=> b!4048865 (= res!1649706 (not ((_ is IntegerValue!21500) (value!218310 token!484))))))

(assert (=> b!4048865 (= e!2512216 e!2512218)))

(declare-fun d!1202303 () Bool)

(declare-fun c!699494 () Bool)

(assert (=> d!1202303 (= c!699494 ((_ is IntegerValue!21498) (value!218310 token!484)))))

(assert (=> d!1202303 (= (inv!21 (value!218310 token!484)) e!2512217)))

(assert (= (and d!1202303 c!699494) b!4048864))

(assert (= (and d!1202303 (not c!699494)) b!4048861))

(assert (= (and b!4048861 c!699495) b!4048863))

(assert (= (and b!4048861 (not c!699495)) b!4048865))

(assert (= (and b!4048865 (not res!1649706)) b!4048862))

(declare-fun m!4648947 () Bool)

(assert (=> b!4048862 m!4648947))

(declare-fun m!4648949 () Bool)

(assert (=> b!4048863 m!4648949))

(declare-fun m!4648951 () Bool)

(assert (=> b!4048864 m!4648951))

(assert (=> b!4048531 d!1202303))

(declare-fun d!1202309 () Bool)

(declare-fun e!2512222 () Bool)

(assert (=> d!1202309 e!2512222))

(declare-fun res!1649712 () Bool)

(assert (=> d!1202309 (=> res!1649712 e!2512222)))

(declare-fun lt!1442693 () Bool)

(assert (=> d!1202309 (= res!1649712 (not lt!1442693))))

(declare-fun e!2512223 () Bool)

(assert (=> d!1202309 (= lt!1442693 e!2512223)))

(declare-fun res!1649713 () Bool)

(assert (=> d!1202309 (=> res!1649713 e!2512223)))

(assert (=> d!1202309 (= res!1649713 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202309 (= (isPrefix!4023 lt!1442546 lt!1442525) lt!1442693)))

(declare-fun b!4048873 () Bool)

(assert (=> b!4048873 (= e!2512222 (>= (size!32366 lt!1442525) (size!32366 lt!1442546)))))

(declare-fun b!4048872 () Bool)

(declare-fun e!2512224 () Bool)

(assert (=> b!4048872 (= e!2512224 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 lt!1442525)))))

(declare-fun b!4048870 () Bool)

(assert (=> b!4048870 (= e!2512223 e!2512224)))

(declare-fun res!1649711 () Bool)

(assert (=> b!4048870 (=> (not res!1649711) (not e!2512224))))

(assert (=> b!4048870 (= res!1649711 (not ((_ is Nil!43289) lt!1442525)))))

(declare-fun b!4048871 () Bool)

(declare-fun res!1649714 () Bool)

(assert (=> b!4048871 (=> (not res!1649714) (not e!2512224))))

(assert (=> b!4048871 (= res!1649714 (= (head!8558 lt!1442546) (head!8558 lt!1442525)))))

(assert (= (and d!1202309 (not res!1649713)) b!4048870))

(assert (= (and b!4048870 res!1649711) b!4048871))

(assert (= (and b!4048871 res!1649714) b!4048872))

(assert (= (and d!1202309 (not res!1649712)) b!4048873))

(declare-fun m!4648965 () Bool)

(assert (=> b!4048873 m!4648965))

(assert (=> b!4048873 m!4648439))

(assert (=> b!4048872 m!4648603))

(declare-fun m!4648967 () Bool)

(assert (=> b!4048872 m!4648967))

(assert (=> b!4048872 m!4648603))

(assert (=> b!4048872 m!4648967))

(declare-fun m!4648969 () Bool)

(assert (=> b!4048872 m!4648969))

(assert (=> b!4048871 m!4648599))

(declare-fun m!4648971 () Bool)

(assert (=> b!4048871 m!4648971))

(assert (=> b!4048532 d!1202309))

(declare-fun d!1202313 () Bool)

(assert (=> d!1202313 (= lt!1442554 suffixResult!105)))

(declare-fun lt!1442694 () Unit!62555)

(assert (=> d!1202313 (= lt!1442694 (choose!24538 lt!1442546 lt!1442554 lt!1442546 suffixResult!105 lt!1442575))))

(assert (=> d!1202313 (isPrefix!4023 lt!1442546 lt!1442575)))

(assert (=> d!1202313 (= (lemmaSamePrefixThenSameSuffix!2184 lt!1442546 lt!1442554 lt!1442546 suffixResult!105 lt!1442575) lt!1442694)))

(declare-fun bs!591413 () Bool)

(assert (= bs!591413 d!1202313))

(declare-fun m!4648973 () Bool)

(assert (=> bs!591413 m!4648973))

(assert (=> bs!591413 m!4648361))

(assert (=> b!4048532 d!1202313))

(declare-fun d!1202315 () Bool)

(assert (=> d!1202315 (isPrefix!4023 lt!1442546 (++!11338 lt!1442546 lt!1442554))))

(declare-fun lt!1442695 () Unit!62555)

(assert (=> d!1202315 (= lt!1442695 (choose!24539 lt!1442546 lt!1442554))))

(assert (=> d!1202315 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 lt!1442554) lt!1442695)))

(declare-fun bs!591414 () Bool)

(assert (= bs!591414 d!1202315))

(assert (=> bs!591414 m!4648513))

(assert (=> bs!591414 m!4648513))

(declare-fun m!4648975 () Bool)

(assert (=> bs!591414 m!4648975))

(declare-fun m!4648977 () Bool)

(assert (=> bs!591414 m!4648977))

(assert (=> b!4048532 d!1202315))

(declare-fun d!1202317 () Bool)

(assert (=> d!1202317 (= (apply!10125 (transformation!6936 (rule!10014 token!484)) (seqFromList!5153 lt!1442546)) (dynLambda!18392 (toValue!9488 (transformation!6936 (rule!10014 token!484))) (seqFromList!5153 lt!1442546)))))

(declare-fun b_lambda!118311 () Bool)

(assert (=> (not b_lambda!118311) (not d!1202317)))

(declare-fun t!335784 () Bool)

(declare-fun tb!243597 () Bool)

(assert (=> (and b!4048507 (= (toValue!9488 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))) t!335784) tb!243597))

(declare-fun result!295170 () Bool)

(assert (=> tb!243597 (= result!295170 (inv!21 (dynLambda!18392 (toValue!9488 (transformation!6936 (rule!10014 token!484))) (seqFromList!5153 lt!1442546))))))

(declare-fun m!4648979 () Bool)

(assert (=> tb!243597 m!4648979))

(assert (=> d!1202317 t!335784))

(declare-fun b_and!311371 () Bool)

(assert (= b_and!311367 (and (=> t!335784 result!295170) b_and!311371)))

(declare-fun t!335786 () Bool)

(declare-fun tb!243599 () Bool)

(assert (=> (and b!4048534 (= (toValue!9488 (transformation!6936 (h!48711 rules!2999))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))) t!335786) tb!243599))

(declare-fun result!295172 () Bool)

(assert (= result!295172 result!295170))

(assert (=> d!1202317 t!335786))

(declare-fun b_and!311373 () Bool)

(assert (= b_and!311369 (and (=> t!335786 result!295172) b_and!311373)))

(assert (=> d!1202317 m!4648455))

(declare-fun m!4648981 () Bool)

(assert (=> d!1202317 m!4648981))

(assert (=> b!4048532 d!1202317))

(declare-fun d!1202319 () Bool)

(assert (=> d!1202319 (= (seqFromList!5153 lt!1442546) (fromListB!2349 lt!1442546))))

(declare-fun bs!591415 () Bool)

(assert (= bs!591415 d!1202319))

(declare-fun m!4648983 () Bool)

(assert (=> bs!591415 m!4648983))

(assert (=> b!4048532 d!1202319))

(declare-fun d!1202321 () Bool)

(assert (=> d!1202321 (= (maxPrefixOneRule!2835 thiss!21717 (rule!10014 token!484) lt!1442575) (Some!9349 (tuple2!42363 (Token!13011 (apply!10125 (transformation!6936 (rule!10014 token!484)) (seqFromList!5153 lt!1442546)) (rule!10014 token!484) (size!32366 lt!1442546) lt!1442546) suffixResult!105)))))

(declare-fun lt!1442699 () Unit!62555)

(assert (=> d!1202321 (= lt!1442699 (choose!24545 thiss!21717 rules!2999 lt!1442546 lt!1442575 suffixResult!105 (rule!10014 token!484)))))

(assert (=> d!1202321 (not (isEmpty!25833 rules!2999))))

(assert (=> d!1202321 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1641 thiss!21717 rules!2999 lt!1442546 lt!1442575 suffixResult!105 (rule!10014 token!484)) lt!1442699)))

(declare-fun bs!591417 () Bool)

(assert (= bs!591417 d!1202321))

(assert (=> bs!591417 m!4648465))

(assert (=> bs!591417 m!4648535))

(declare-fun m!4648989 () Bool)

(assert (=> bs!591417 m!4648989))

(assert (=> bs!591417 m!4648455))

(assert (=> bs!591417 m!4648457))

(assert (=> bs!591417 m!4648455))

(assert (=> bs!591417 m!4648439))

(assert (=> b!4048532 d!1202321))

(declare-fun b!4048878 () Bool)

(declare-fun e!2512229 () Option!9350)

(declare-fun lt!1442703 () tuple2!42364)

(assert (=> b!4048878 (= e!2512229 (Some!9349 (tuple2!42363 (Token!13011 (apply!10125 (transformation!6936 (rule!10014 token!484)) (seqFromList!5153 (_1!24316 lt!1442703))) (rule!10014 token!484) (size!32367 (seqFromList!5153 (_1!24316 lt!1442703))) (_1!24316 lt!1442703)) (_2!24316 lt!1442703))))))

(declare-fun lt!1442704 () Unit!62555)

(assert (=> b!4048878 (= lt!1442704 (longestMatchIsAcceptedByMatchOrIsEmpty!1365 (regex!6936 (rule!10014 token!484)) lt!1442575))))

(declare-fun res!1649719 () Bool)

(assert (=> b!4048878 (= res!1649719 (isEmpty!25834 (_1!24316 (findLongestMatchInner!1392 (regex!6936 (rule!10014 token!484)) Nil!43289 (size!32366 Nil!43289) lt!1442575 lt!1442575 (size!32366 lt!1442575)))))))

(declare-fun e!2512232 () Bool)

(assert (=> b!4048878 (=> res!1649719 e!2512232)))

(assert (=> b!4048878 e!2512232))

(declare-fun lt!1442705 () Unit!62555)

(assert (=> b!4048878 (= lt!1442705 lt!1442704)))

(declare-fun lt!1442701 () Unit!62555)

(assert (=> b!4048878 (= lt!1442701 (lemmaSemiInverse!1914 (transformation!6936 (rule!10014 token!484)) (seqFromList!5153 (_1!24316 lt!1442703))))))

(declare-fun b!4048879 () Bool)

(declare-fun res!1649724 () Bool)

(declare-fun e!2512230 () Bool)

(assert (=> b!4048879 (=> (not res!1649724) (not e!2512230))))

(declare-fun lt!1442702 () Option!9350)

(assert (=> b!4048879 (= res!1649724 (= (++!11338 (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442702)))) (_2!24315 (get!14201 lt!1442702))) lt!1442575))))

(declare-fun d!1202325 () Bool)

(declare-fun e!2512231 () Bool)

(assert (=> d!1202325 e!2512231))

(declare-fun res!1649721 () Bool)

(assert (=> d!1202325 (=> res!1649721 e!2512231)))

(assert (=> d!1202325 (= res!1649721 (isEmpty!25836 lt!1442702))))

(assert (=> d!1202325 (= lt!1442702 e!2512229)))

(declare-fun c!699496 () Bool)

(assert (=> d!1202325 (= c!699496 (isEmpty!25834 (_1!24316 lt!1442703)))))

(assert (=> d!1202325 (= lt!1442703 (findLongestMatch!1305 (regex!6936 (rule!10014 token!484)) lt!1442575))))

(assert (=> d!1202325 (ruleValid!2866 thiss!21717 (rule!10014 token!484))))

(assert (=> d!1202325 (= (maxPrefixOneRule!2835 thiss!21717 (rule!10014 token!484) lt!1442575) lt!1442702)))

(declare-fun b!4048880 () Bool)

(assert (=> b!4048880 (= e!2512231 e!2512230)))

(declare-fun res!1649725 () Bool)

(assert (=> b!4048880 (=> (not res!1649725) (not e!2512230))))

(assert (=> b!4048880 (= res!1649725 (matchR!5794 (regex!6936 (rule!10014 token!484)) (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442702))))))))

(declare-fun b!4048881 () Bool)

(declare-fun res!1649723 () Bool)

(assert (=> b!4048881 (=> (not res!1649723) (not e!2512230))))

(assert (=> b!4048881 (= res!1649723 (= (rule!10014 (_1!24315 (get!14201 lt!1442702))) (rule!10014 token!484)))))

(declare-fun b!4048882 () Bool)

(assert (=> b!4048882 (= e!2512230 (= (size!32365 (_1!24315 (get!14201 lt!1442702))) (size!32366 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442702))))))))

(declare-fun b!4048883 () Bool)

(assert (=> b!4048883 (= e!2512232 (matchR!5794 (regex!6936 (rule!10014 token!484)) (_1!24316 (findLongestMatchInner!1392 (regex!6936 (rule!10014 token!484)) Nil!43289 (size!32366 Nil!43289) lt!1442575 lt!1442575 (size!32366 lt!1442575)))))))

(declare-fun b!4048884 () Bool)

(declare-fun res!1649722 () Bool)

(assert (=> b!4048884 (=> (not res!1649722) (not e!2512230))))

(assert (=> b!4048884 (= res!1649722 (< (size!32366 (_2!24315 (get!14201 lt!1442702))) (size!32366 lt!1442575)))))

(declare-fun b!4048885 () Bool)

(assert (=> b!4048885 (= e!2512229 None!9349)))

(declare-fun b!4048886 () Bool)

(declare-fun res!1649720 () Bool)

(assert (=> b!4048886 (=> (not res!1649720) (not e!2512230))))

(assert (=> b!4048886 (= res!1649720 (= (value!218310 (_1!24315 (get!14201 lt!1442702))) (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (get!14201 lt!1442702)))) (seqFromList!5153 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442702)))))))))

(assert (= (and d!1202325 c!699496) b!4048885))

(assert (= (and d!1202325 (not c!699496)) b!4048878))

(assert (= (and b!4048878 (not res!1649719)) b!4048883))

(assert (= (and d!1202325 (not res!1649721)) b!4048880))

(assert (= (and b!4048880 res!1649725) b!4048879))

(assert (= (and b!4048879 res!1649724) b!4048884))

(assert (= (and b!4048884 res!1649722) b!4048881))

(assert (= (and b!4048881 res!1649723) b!4048886))

(assert (= (and b!4048886 res!1649720) b!4048882))

(declare-fun m!4648997 () Bool)

(assert (=> b!4048886 m!4648997))

(declare-fun m!4648999 () Bool)

(assert (=> b!4048886 m!4648999))

(assert (=> b!4048886 m!4648999))

(declare-fun m!4649001 () Bool)

(assert (=> b!4048886 m!4649001))

(declare-fun m!4649003 () Bool)

(assert (=> d!1202325 m!4649003))

(declare-fun m!4649005 () Bool)

(assert (=> d!1202325 m!4649005))

(declare-fun m!4649007 () Bool)

(assert (=> d!1202325 m!4649007))

(assert (=> d!1202325 m!4648369))

(assert (=> b!4048878 m!4648871))

(declare-fun m!4649009 () Bool)

(assert (=> b!4048878 m!4649009))

(declare-fun m!4649011 () Bool)

(assert (=> b!4048878 m!4649011))

(assert (=> b!4048878 m!4649009))

(declare-fun m!4649013 () Bool)

(assert (=> b!4048878 m!4649013))

(declare-fun m!4649015 () Bool)

(assert (=> b!4048878 m!4649015))

(assert (=> b!4048878 m!4649009))

(declare-fun m!4649017 () Bool)

(assert (=> b!4048878 m!4649017))

(assert (=> b!4048878 m!4648745))

(assert (=> b!4048878 m!4648871))

(declare-fun m!4649019 () Bool)

(assert (=> b!4048878 m!4649019))

(assert (=> b!4048878 m!4649009))

(declare-fun m!4649021 () Bool)

(assert (=> b!4048878 m!4649021))

(assert (=> b!4048878 m!4648745))

(assert (=> b!4048883 m!4648745))

(assert (=> b!4048883 m!4648871))

(assert (=> b!4048883 m!4648745))

(assert (=> b!4048883 m!4648871))

(assert (=> b!4048883 m!4649019))

(declare-fun m!4649023 () Bool)

(assert (=> b!4048883 m!4649023))

(assert (=> b!4048879 m!4648997))

(declare-fun m!4649025 () Bool)

(assert (=> b!4048879 m!4649025))

(assert (=> b!4048879 m!4649025))

(declare-fun m!4649027 () Bool)

(assert (=> b!4048879 m!4649027))

(assert (=> b!4048879 m!4649027))

(declare-fun m!4649029 () Bool)

(assert (=> b!4048879 m!4649029))

(assert (=> b!4048881 m!4648997))

(assert (=> b!4048880 m!4648997))

(assert (=> b!4048880 m!4649025))

(assert (=> b!4048880 m!4649025))

(assert (=> b!4048880 m!4649027))

(assert (=> b!4048880 m!4649027))

(declare-fun m!4649031 () Bool)

(assert (=> b!4048880 m!4649031))

(assert (=> b!4048882 m!4648997))

(declare-fun m!4649033 () Bool)

(assert (=> b!4048882 m!4649033))

(assert (=> b!4048884 m!4648997))

(declare-fun m!4649035 () Bool)

(assert (=> b!4048884 m!4649035))

(assert (=> b!4048884 m!4648871))

(assert (=> b!4048532 d!1202325))

(declare-fun b!4048899 () Bool)

(declare-fun res!1649728 () Bool)

(declare-fun e!2512240 () Bool)

(assert (=> b!4048899 (=> (not res!1649728) (not e!2512240))))

(declare-fun lt!1442706 () List!43413)

(assert (=> b!4048899 (= res!1649728 (= (size!32366 lt!1442706) (+ (size!32366 newSuffix!27) (size!32366 lt!1442533))))))

(declare-fun b!4048900 () Bool)

(assert (=> b!4048900 (= e!2512240 (or (not (= lt!1442533 Nil!43289)) (= lt!1442706 newSuffix!27)))))

(declare-fun b!4048897 () Bool)

(declare-fun e!2512239 () List!43413)

(assert (=> b!4048897 (= e!2512239 lt!1442533)))

(declare-fun b!4048898 () Bool)

(assert (=> b!4048898 (= e!2512239 (Cons!43289 (h!48709 newSuffix!27) (++!11338 (t!335768 newSuffix!27) lt!1442533)))))

(declare-fun d!1202329 () Bool)

(assert (=> d!1202329 e!2512240))

(declare-fun res!1649729 () Bool)

(assert (=> d!1202329 (=> (not res!1649729) (not e!2512240))))

(assert (=> d!1202329 (= res!1649729 (= (content!6588 lt!1442706) ((_ map or) (content!6588 newSuffix!27) (content!6588 lt!1442533))))))

(assert (=> d!1202329 (= lt!1442706 e!2512239)))

(declare-fun c!699501 () Bool)

(assert (=> d!1202329 (= c!699501 ((_ is Nil!43289) newSuffix!27))))

(assert (=> d!1202329 (= (++!11338 newSuffix!27 lt!1442533) lt!1442706)))

(assert (= (and d!1202329 c!699501) b!4048897))

(assert (= (and d!1202329 (not c!699501)) b!4048898))

(assert (= (and d!1202329 res!1649729) b!4048899))

(assert (= (and b!4048899 res!1649728) b!4048900))

(declare-fun m!4649037 () Bool)

(assert (=> b!4048899 m!4649037))

(assert (=> b!4048899 m!4648477))

(assert (=> b!4048899 m!4648673))

(declare-fun m!4649039 () Bool)

(assert (=> b!4048898 m!4649039))

(declare-fun m!4649041 () Bool)

(assert (=> d!1202329 m!4649041))

(declare-fun m!4649043 () Bool)

(assert (=> d!1202329 m!4649043))

(assert (=> d!1202329 m!4648681))

(assert (=> b!4048511 d!1202329))

(declare-fun d!1202331 () Bool)

(declare-fun lt!1442707 () List!43413)

(assert (=> d!1202331 (= (++!11338 newSuffix!27 lt!1442707) suffix!1299)))

(declare-fun e!2512244 () List!43413)

(assert (=> d!1202331 (= lt!1442707 e!2512244)))

(declare-fun c!699504 () Bool)

(assert (=> d!1202331 (= c!699504 ((_ is Cons!43289) newSuffix!27))))

(assert (=> d!1202331 (>= (size!32366 suffix!1299) (size!32366 newSuffix!27))))

(assert (=> d!1202331 (= (getSuffix!2440 suffix!1299 newSuffix!27) lt!1442707)))

(declare-fun b!4048906 () Bool)

(assert (=> b!4048906 (= e!2512244 (getSuffix!2440 (tail!6290 suffix!1299) (t!335768 newSuffix!27)))))

(declare-fun b!4048907 () Bool)

(assert (=> b!4048907 (= e!2512244 suffix!1299)))

(assert (= (and d!1202331 c!699504) b!4048906))

(assert (= (and d!1202331 (not c!699504)) b!4048907))

(declare-fun m!4649049 () Bool)

(assert (=> d!1202331 m!4649049))

(assert (=> d!1202331 m!4648475))

(assert (=> d!1202331 m!4648477))

(declare-fun m!4649053 () Bool)

(assert (=> b!4048906 m!4649053))

(assert (=> b!4048906 m!4649053))

(declare-fun m!4649055 () Bool)

(assert (=> b!4048906 m!4649055))

(assert (=> b!4048511 d!1202331))

(declare-fun b!4048954 () Bool)

(declare-fun e!2512269 () Option!9350)

(declare-fun call!287826 () Option!9350)

(assert (=> b!4048954 (= e!2512269 call!287826)))

(declare-fun b!4048955 () Bool)

(declare-fun res!1649754 () Bool)

(declare-fun e!2512267 () Bool)

(assert (=> b!4048955 (=> (not res!1649754) (not e!2512267))))

(declare-fun lt!1442741 () Option!9350)

(assert (=> b!4048955 (= res!1649754 (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (get!14201 lt!1442741)))) (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442741))))))))

(declare-fun b!4048956 () Bool)

(declare-fun lt!1442740 () Option!9350)

(declare-fun lt!1442742 () Option!9350)

(assert (=> b!4048956 (= e!2512269 (ite (and ((_ is None!9349) lt!1442740) ((_ is None!9349) lt!1442742)) None!9349 (ite ((_ is None!9349) lt!1442742) lt!1442740 (ite ((_ is None!9349) lt!1442740) lt!1442742 (ite (>= (size!32365 (_1!24315 (v!39755 lt!1442740))) (size!32365 (_1!24315 (v!39755 lt!1442742)))) lt!1442740 lt!1442742)))))))

(assert (=> b!4048956 (= lt!1442740 call!287826)))

(assert (=> b!4048956 (= lt!1442742 (maxPrefix!3823 thiss!21717 (t!335770 rules!2999) lt!1442539))))

(declare-fun d!1202335 () Bool)

(declare-fun e!2512268 () Bool)

(assert (=> d!1202335 e!2512268))

(declare-fun res!1649755 () Bool)

(assert (=> d!1202335 (=> res!1649755 e!2512268)))

(assert (=> d!1202335 (= res!1649755 (isEmpty!25836 lt!1442741))))

(assert (=> d!1202335 (= lt!1442741 e!2512269)))

(declare-fun c!699515 () Bool)

(assert (=> d!1202335 (= c!699515 (and ((_ is Cons!43291) rules!2999) ((_ is Nil!43291) (t!335770 rules!2999))))))

(declare-fun lt!1442738 () Unit!62555)

(declare-fun lt!1442739 () Unit!62555)

(assert (=> d!1202335 (= lt!1442738 lt!1442739)))

(assert (=> d!1202335 (isPrefix!4023 lt!1442539 lt!1442539)))

(assert (=> d!1202335 (= lt!1442739 (lemmaIsPrefixRefl!2590 lt!1442539 lt!1442539))))

(declare-fun rulesValidInductive!2531 (LexerInterface!6525 List!43415) Bool)

(assert (=> d!1202335 (rulesValidInductive!2531 thiss!21717 rules!2999)))

(assert (=> d!1202335 (= (maxPrefix!3823 thiss!21717 rules!2999 lt!1442539) lt!1442741)))

(declare-fun b!4048957 () Bool)

(declare-fun res!1649751 () Bool)

(assert (=> b!4048957 (=> (not res!1649751) (not e!2512267))))

(assert (=> b!4048957 (= res!1649751 (= (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442741)))) (originalCharacters!7536 (_1!24315 (get!14201 lt!1442741)))))))

(declare-fun bm!287821 () Bool)

(assert (=> bm!287821 (= call!287826 (maxPrefixOneRule!2835 thiss!21717 (h!48711 rules!2999) lt!1442539))))

(declare-fun b!4048958 () Bool)

(declare-fun res!1649752 () Bool)

(assert (=> b!4048958 (=> (not res!1649752) (not e!2512267))))

(assert (=> b!4048958 (= res!1649752 (< (size!32366 (_2!24315 (get!14201 lt!1442741))) (size!32366 lt!1442539)))))

(declare-fun b!4048959 () Bool)

(assert (=> b!4048959 (= e!2512268 e!2512267)))

(declare-fun res!1649756 () Bool)

(assert (=> b!4048959 (=> (not res!1649756) (not e!2512267))))

(declare-fun isDefined!7110 (Option!9350) Bool)

(assert (=> b!4048959 (= res!1649756 (isDefined!7110 lt!1442741))))

(declare-fun b!4048960 () Bool)

(declare-fun res!1649757 () Bool)

(assert (=> b!4048960 (=> (not res!1649757) (not e!2512267))))

(assert (=> b!4048960 (= res!1649757 (= (value!218310 (_1!24315 (get!14201 lt!1442741))) (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (get!14201 lt!1442741)))) (seqFromList!5153 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442741)))))))))

(declare-fun b!4048961 () Bool)

(declare-fun res!1649753 () Bool)

(assert (=> b!4048961 (=> (not res!1649753) (not e!2512267))))

(assert (=> b!4048961 (= res!1649753 (= (++!11338 (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442741)))) (_2!24315 (get!14201 lt!1442741))) lt!1442539))))

(declare-fun b!4048962 () Bool)

(assert (=> b!4048962 (= e!2512267 (contains!8608 rules!2999 (rule!10014 (_1!24315 (get!14201 lt!1442741)))))))

(assert (= (and d!1202335 c!699515) b!4048954))

(assert (= (and d!1202335 (not c!699515)) b!4048956))

(assert (= (or b!4048954 b!4048956) bm!287821))

(assert (= (and d!1202335 (not res!1649755)) b!4048959))

(assert (= (and b!4048959 res!1649756) b!4048957))

(assert (= (and b!4048957 res!1649751) b!4048958))

(assert (= (and b!4048958 res!1649752) b!4048961))

(assert (= (and b!4048961 res!1649753) b!4048960))

(assert (= (and b!4048960 res!1649757) b!4048955))

(assert (= (and b!4048955 res!1649754) b!4048962))

(declare-fun m!4649113 () Bool)

(assert (=> b!4048960 m!4649113))

(declare-fun m!4649115 () Bool)

(assert (=> b!4048960 m!4649115))

(assert (=> b!4048960 m!4649115))

(declare-fun m!4649117 () Bool)

(assert (=> b!4048960 m!4649117))

(declare-fun m!4649119 () Bool)

(assert (=> b!4048959 m!4649119))

(declare-fun m!4649121 () Bool)

(assert (=> b!4048956 m!4649121))

(assert (=> b!4048955 m!4649113))

(declare-fun m!4649123 () Bool)

(assert (=> b!4048955 m!4649123))

(assert (=> b!4048955 m!4649123))

(declare-fun m!4649129 () Bool)

(assert (=> b!4048955 m!4649129))

(assert (=> b!4048955 m!4649129))

(declare-fun m!4649137 () Bool)

(assert (=> b!4048955 m!4649137))

(assert (=> b!4048957 m!4649113))

(assert (=> b!4048957 m!4649123))

(assert (=> b!4048957 m!4649123))

(assert (=> b!4048957 m!4649129))

(assert (=> b!4048958 m!4649113))

(declare-fun m!4649139 () Bool)

(assert (=> b!4048958 m!4649139))

(assert (=> b!4048958 m!4648615))

(declare-fun m!4649141 () Bool)

(assert (=> bm!287821 m!4649141))

(declare-fun m!4649143 () Bool)

(assert (=> d!1202335 m!4649143))

(declare-fun m!4649145 () Bool)

(assert (=> d!1202335 m!4649145))

(declare-fun m!4649147 () Bool)

(assert (=> d!1202335 m!4649147))

(declare-fun m!4649149 () Bool)

(assert (=> d!1202335 m!4649149))

(assert (=> b!4048962 m!4649113))

(declare-fun m!4649151 () Bool)

(assert (=> b!4048962 m!4649151))

(assert (=> b!4048961 m!4649113))

(assert (=> b!4048961 m!4649123))

(assert (=> b!4048961 m!4649123))

(assert (=> b!4048961 m!4649129))

(assert (=> b!4048961 m!4649129))

(declare-fun m!4649153 () Bool)

(assert (=> b!4048961 m!4649153))

(assert (=> b!4048533 d!1202335))

(declare-fun d!1202365 () Bool)

(assert (=> d!1202365 (= suffixResult!105 lt!1442542)))

(declare-fun lt!1442744 () Unit!62555)

(assert (=> d!1202365 (= lt!1442744 (choose!24538 lt!1442546 suffixResult!105 lt!1442546 lt!1442542 lt!1442575))))

(assert (=> d!1202365 (isPrefix!4023 lt!1442546 lt!1442575)))

(assert (=> d!1202365 (= (lemmaSamePrefixThenSameSuffix!2184 lt!1442546 suffixResult!105 lt!1442546 lt!1442542 lt!1442575) lt!1442744)))

(declare-fun bs!591423 () Bool)

(assert (= bs!591423 d!1202365))

(declare-fun m!4649155 () Bool)

(assert (=> bs!591423 m!4649155))

(assert (=> bs!591423 m!4648361))

(assert (=> b!4048533 d!1202365))

(declare-fun d!1202367 () Bool)

(declare-fun e!2512277 () Bool)

(assert (=> d!1202367 e!2512277))

(declare-fun res!1649764 () Bool)

(assert (=> d!1202367 (=> res!1649764 e!2512277)))

(declare-fun lt!1442745 () Bool)

(assert (=> d!1202367 (= res!1649764 (not lt!1442745))))

(declare-fun e!2512278 () Bool)

(assert (=> d!1202367 (= lt!1442745 e!2512278)))

(declare-fun res!1649765 () Bool)

(assert (=> d!1202367 (=> res!1649765 e!2512278)))

(assert (=> d!1202367 (= res!1649765 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202367 (= (isPrefix!4023 lt!1442546 lt!1442547) lt!1442745)))

(declare-fun b!4048975 () Bool)

(assert (=> b!4048975 (= e!2512277 (>= (size!32366 lt!1442547) (size!32366 lt!1442546)))))

(declare-fun b!4048974 () Bool)

(declare-fun e!2512279 () Bool)

(assert (=> b!4048974 (= e!2512279 (isPrefix!4023 (tail!6290 lt!1442546) (tail!6290 lt!1442547)))))

(declare-fun b!4048972 () Bool)

(assert (=> b!4048972 (= e!2512278 e!2512279)))

(declare-fun res!1649763 () Bool)

(assert (=> b!4048972 (=> (not res!1649763) (not e!2512279))))

(assert (=> b!4048972 (= res!1649763 (not ((_ is Nil!43289) lt!1442547)))))

(declare-fun b!4048973 () Bool)

(declare-fun res!1649766 () Bool)

(assert (=> b!4048973 (=> (not res!1649766) (not e!2512279))))

(assert (=> b!4048973 (= res!1649766 (= (head!8558 lt!1442546) (head!8558 lt!1442547)))))

(assert (= (and d!1202367 (not res!1649765)) b!4048972))

(assert (= (and b!4048972 res!1649763) b!4048973))

(assert (= (and b!4048973 res!1649766) b!4048974))

(assert (= (and d!1202367 (not res!1649764)) b!4048975))

(declare-fun m!4649159 () Bool)

(assert (=> b!4048975 m!4649159))

(assert (=> b!4048975 m!4648439))

(assert (=> b!4048974 m!4648603))

(declare-fun m!4649161 () Bool)

(assert (=> b!4048974 m!4649161))

(assert (=> b!4048974 m!4648603))

(assert (=> b!4048974 m!4649161))

(declare-fun m!4649163 () Bool)

(assert (=> b!4048974 m!4649163))

(assert (=> b!4048973 m!4648599))

(declare-fun m!4649165 () Bool)

(assert (=> b!4048973 m!4649165))

(assert (=> b!4048533 d!1202367))

(declare-fun d!1202369 () Bool)

(assert (=> d!1202369 (isPrefix!4023 lt!1442546 (++!11338 lt!1442546 lt!1442542))))

(declare-fun lt!1442746 () Unit!62555)

(assert (=> d!1202369 (= lt!1442746 (choose!24539 lt!1442546 lt!1442542))))

(assert (=> d!1202369 (= (lemmaConcatTwoListThenFirstIsPrefix!2858 lt!1442546 lt!1442542) lt!1442746)))

(declare-fun bs!591424 () Bool)

(assert (= bs!591424 d!1202369))

(assert (=> bs!591424 m!4648505))

(assert (=> bs!591424 m!4648505))

(declare-fun m!4649169 () Bool)

(assert (=> bs!591424 m!4649169))

(declare-fun m!4649171 () Bool)

(assert (=> bs!591424 m!4649171))

(assert (=> b!4048533 d!1202369))

(declare-fun b!4048978 () Bool)

(declare-fun res!1649767 () Bool)

(declare-fun e!2512282 () Bool)

(assert (=> b!4048978 (=> (not res!1649767) (not e!2512282))))

(declare-fun lt!1442748 () List!43413)

(assert (=> b!4048978 (= res!1649767 (= (size!32366 lt!1442748) (+ (size!32366 lt!1442546) (size!32366 suffixResult!105))))))

(declare-fun b!4048979 () Bool)

(assert (=> b!4048979 (= e!2512282 (or (not (= suffixResult!105 Nil!43289)) (= lt!1442748 lt!1442546)))))

(declare-fun b!4048976 () Bool)

(declare-fun e!2512281 () List!43413)

(assert (=> b!4048976 (= e!2512281 suffixResult!105)))

(declare-fun b!4048977 () Bool)

(assert (=> b!4048977 (= e!2512281 (Cons!43289 (h!48709 lt!1442546) (++!11338 (t!335768 lt!1442546) suffixResult!105)))))

(declare-fun d!1202373 () Bool)

(assert (=> d!1202373 e!2512282))

(declare-fun res!1649768 () Bool)

(assert (=> d!1202373 (=> (not res!1649768) (not e!2512282))))

(assert (=> d!1202373 (= res!1649768 (= (content!6588 lt!1442748) ((_ map or) (content!6588 lt!1442546) (content!6588 suffixResult!105))))))

(assert (=> d!1202373 (= lt!1442748 e!2512281)))

(declare-fun c!699517 () Bool)

(assert (=> d!1202373 (= c!699517 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202373 (= (++!11338 lt!1442546 suffixResult!105) lt!1442748)))

(assert (= (and d!1202373 c!699517) b!4048976))

(assert (= (and d!1202373 (not c!699517)) b!4048977))

(assert (= (and d!1202373 res!1649768) b!4048978))

(assert (= (and b!4048978 res!1649767) b!4048979))

(declare-fun m!4649177 () Bool)

(assert (=> b!4048978 m!4649177))

(assert (=> b!4048978 m!4648439))

(declare-fun m!4649179 () Bool)

(assert (=> b!4048978 m!4649179))

(declare-fun m!4649181 () Bool)

(assert (=> b!4048977 m!4649181))

(declare-fun m!4649183 () Bool)

(assert (=> d!1202373 m!4649183))

(assert (=> d!1202373 m!4648549))

(declare-fun m!4649185 () Bool)

(assert (=> d!1202373 m!4649185))

(assert (=> b!4048512 d!1202373))

(declare-fun d!1202377 () Bool)

(declare-fun e!2512283 () Bool)

(assert (=> d!1202377 e!2512283))

(declare-fun res!1649769 () Bool)

(assert (=> d!1202377 (=> (not res!1649769) (not e!2512283))))

(assert (=> d!1202377 (= res!1649769 (semiInverseModEq!2963 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))))))

(declare-fun Unit!62565 () Unit!62555)

(assert (=> d!1202377 (= (lemmaInv!1145 (transformation!6936 (rule!10014 token!484))) Unit!62565)))

(declare-fun b!4048980 () Bool)

(assert (=> b!4048980 (= e!2512283 (equivClasses!2862 (toChars!9347 (transformation!6936 (rule!10014 token!484))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))))))

(assert (= (and d!1202377 res!1649769) b!4048980))

(assert (=> d!1202377 m!4648537))

(assert (=> b!4048980 m!4648539))

(assert (=> b!4048512 d!1202377))

(declare-fun d!1202379 () Bool)

(declare-fun res!1649770 () Bool)

(declare-fun e!2512284 () Bool)

(assert (=> d!1202379 (=> (not res!1649770) (not e!2512284))))

(assert (=> d!1202379 (= res!1649770 (validRegex!5355 (regex!6936 (rule!10014 token!484))))))

(assert (=> d!1202379 (= (ruleValid!2866 thiss!21717 (rule!10014 token!484)) e!2512284)))

(declare-fun b!4048981 () Bool)

(declare-fun res!1649771 () Bool)

(assert (=> b!4048981 (=> (not res!1649771) (not e!2512284))))

(assert (=> b!4048981 (= res!1649771 (not (nullable!4155 (regex!6936 (rule!10014 token!484)))))))

(declare-fun b!4048982 () Bool)

(assert (=> b!4048982 (= e!2512284 (not (= (tag!7796 (rule!10014 token!484)) (String!49549 ""))))))

(assert (= (and d!1202379 res!1649770) b!4048981))

(assert (= (and b!4048981 res!1649771) b!4048982))

(assert (=> d!1202379 m!4648613))

(assert (=> b!4048981 m!4648611))

(assert (=> b!4048512 d!1202379))

(declare-fun d!1202381 () Bool)

(assert (=> d!1202381 (ruleValid!2866 thiss!21717 (rule!10014 token!484))))

(declare-fun lt!1442749 () Unit!62555)

(assert (=> d!1202381 (= lt!1442749 (choose!24542 thiss!21717 (rule!10014 token!484) rules!2999))))

(assert (=> d!1202381 (contains!8608 rules!2999 (rule!10014 token!484))))

(assert (=> d!1202381 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1936 thiss!21717 (rule!10014 token!484) rules!2999) lt!1442749)))

(declare-fun bs!591426 () Bool)

(assert (= bs!591426 d!1202381))

(assert (=> bs!591426 m!4648369))

(declare-fun m!4649187 () Bool)

(assert (=> bs!591426 m!4649187))

(declare-fun m!4649189 () Bool)

(assert (=> bs!591426 m!4649189))

(assert (=> b!4048512 d!1202381))

(declare-fun b!4048985 () Bool)

(declare-fun res!1649772 () Bool)

(declare-fun e!2512286 () Bool)

(assert (=> b!4048985 (=> (not res!1649772) (not e!2512286))))

(declare-fun lt!1442750 () List!43413)

(assert (=> b!4048985 (= res!1649772 (= (size!32366 lt!1442750) (+ (size!32366 prefix!494) (size!32366 newSuffix!27))))))

(declare-fun b!4048986 () Bool)

(assert (=> b!4048986 (= e!2512286 (or (not (= newSuffix!27 Nil!43289)) (= lt!1442750 prefix!494)))))

(declare-fun b!4048983 () Bool)

(declare-fun e!2512285 () List!43413)

(assert (=> b!4048983 (= e!2512285 newSuffix!27)))

(declare-fun b!4048984 () Bool)

(assert (=> b!4048984 (= e!2512285 (Cons!43289 (h!48709 prefix!494) (++!11338 (t!335768 prefix!494) newSuffix!27)))))

(declare-fun d!1202383 () Bool)

(assert (=> d!1202383 e!2512286))

(declare-fun res!1649773 () Bool)

(assert (=> d!1202383 (=> (not res!1649773) (not e!2512286))))

(assert (=> d!1202383 (= res!1649773 (= (content!6588 lt!1442750) ((_ map or) (content!6588 prefix!494) (content!6588 newSuffix!27))))))

(assert (=> d!1202383 (= lt!1442750 e!2512285)))

(declare-fun c!699518 () Bool)

(assert (=> d!1202383 (= c!699518 ((_ is Nil!43289) prefix!494))))

(assert (=> d!1202383 (= (++!11338 prefix!494 newSuffix!27) lt!1442750)))

(assert (= (and d!1202383 c!699518) b!4048983))

(assert (= (and d!1202383 (not c!699518)) b!4048984))

(assert (= (and d!1202383 res!1649773) b!4048985))

(assert (= (and b!4048985 res!1649772) b!4048986))

(declare-fun m!4649191 () Bool)

(assert (=> b!4048985 m!4649191))

(assert (=> b!4048985 m!4648441))

(assert (=> b!4048985 m!4648477))

(declare-fun m!4649193 () Bool)

(assert (=> b!4048984 m!4649193))

(declare-fun m!4649195 () Bool)

(assert (=> d!1202383 m!4649195))

(assert (=> d!1202383 m!4648667))

(assert (=> d!1202383 m!4649043))

(assert (=> b!4048513 d!1202383))

(declare-fun b!4048989 () Bool)

(declare-fun res!1649774 () Bool)

(declare-fun e!2512288 () Bool)

(assert (=> b!4048989 (=> (not res!1649774) (not e!2512288))))

(declare-fun lt!1442751 () List!43413)

(assert (=> b!4048989 (= res!1649774 (= (size!32366 lt!1442751) (+ (size!32366 lt!1442546) (size!32366 newSuffixResult!27))))))

(declare-fun b!4048990 () Bool)

(assert (=> b!4048990 (= e!2512288 (or (not (= newSuffixResult!27 Nil!43289)) (= lt!1442751 lt!1442546)))))

(declare-fun b!4048987 () Bool)

(declare-fun e!2512287 () List!43413)

(assert (=> b!4048987 (= e!2512287 newSuffixResult!27)))

(declare-fun b!4048988 () Bool)

(assert (=> b!4048988 (= e!2512287 (Cons!43289 (h!48709 lt!1442546) (++!11338 (t!335768 lt!1442546) newSuffixResult!27)))))

(declare-fun d!1202385 () Bool)

(assert (=> d!1202385 e!2512288))

(declare-fun res!1649775 () Bool)

(assert (=> d!1202385 (=> (not res!1649775) (not e!2512288))))

(assert (=> d!1202385 (= res!1649775 (= (content!6588 lt!1442751) ((_ map or) (content!6588 lt!1442546) (content!6588 newSuffixResult!27))))))

(assert (=> d!1202385 (= lt!1442751 e!2512287)))

(declare-fun c!699519 () Bool)

(assert (=> d!1202385 (= c!699519 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202385 (= (++!11338 lt!1442546 newSuffixResult!27) lt!1442751)))

(assert (= (and d!1202385 c!699519) b!4048987))

(assert (= (and d!1202385 (not c!699519)) b!4048988))

(assert (= (and d!1202385 res!1649775) b!4048989))

(assert (= (and b!4048989 res!1649774) b!4048990))

(declare-fun m!4649197 () Bool)

(assert (=> b!4048989 m!4649197))

(assert (=> b!4048989 m!4648439))

(assert (=> b!4048989 m!4648855))

(declare-fun m!4649199 () Bool)

(assert (=> b!4048988 m!4649199))

(declare-fun m!4649201 () Bool)

(assert (=> d!1202385 m!4649201))

(assert (=> d!1202385 m!4648549))

(assert (=> d!1202385 m!4648861))

(assert (=> b!4048513 d!1202385))

(declare-fun d!1202387 () Bool)

(assert (=> d!1202387 (= (inv!57864 (tag!7796 (h!48711 rules!2999))) (= (mod (str.len (value!218309 (tag!7796 (h!48711 rules!2999)))) 2) 0))))

(assert (=> b!4048535 d!1202387))

(declare-fun d!1202389 () Bool)

(declare-fun res!1649776 () Bool)

(declare-fun e!2512289 () Bool)

(assert (=> d!1202389 (=> (not res!1649776) (not e!2512289))))

(assert (=> d!1202389 (= res!1649776 (semiInverseModEq!2963 (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toValue!9488 (transformation!6936 (h!48711 rules!2999)))))))

(assert (=> d!1202389 (= (inv!57867 (transformation!6936 (h!48711 rules!2999))) e!2512289)))

(declare-fun b!4048991 () Bool)

(assert (=> b!4048991 (= e!2512289 (equivClasses!2862 (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toValue!9488 (transformation!6936 (h!48711 rules!2999)))))))

(assert (= (and d!1202389 res!1649776) b!4048991))

(declare-fun m!4649203 () Bool)

(assert (=> d!1202389 m!4649203))

(declare-fun m!4649205 () Bool)

(assert (=> b!4048991 m!4649205))

(assert (=> b!4048535 d!1202389))

(declare-fun d!1202391 () Bool)

(declare-fun e!2512290 () Bool)

(assert (=> d!1202391 e!2512290))

(declare-fun res!1649778 () Bool)

(assert (=> d!1202391 (=> res!1649778 e!2512290)))

(declare-fun lt!1442752 () Bool)

(assert (=> d!1202391 (= res!1649778 (not lt!1442752))))

(declare-fun e!2512291 () Bool)

(assert (=> d!1202391 (= lt!1442752 e!2512291)))

(declare-fun res!1649779 () Bool)

(assert (=> d!1202391 (=> res!1649779 e!2512291)))

(assert (=> d!1202391 (= res!1649779 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202391 (= (isPrefix!4023 lt!1442536 lt!1442539) lt!1442752)))

(declare-fun b!4048995 () Bool)

(assert (=> b!4048995 (= e!2512290 (>= (size!32366 lt!1442539) (size!32366 lt!1442536)))))

(declare-fun b!4048994 () Bool)

(declare-fun e!2512292 () Bool)

(assert (=> b!4048994 (= e!2512292 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 lt!1442539)))))

(declare-fun b!4048992 () Bool)

(assert (=> b!4048992 (= e!2512291 e!2512292)))

(declare-fun res!1649777 () Bool)

(assert (=> b!4048992 (=> (not res!1649777) (not e!2512292))))

(assert (=> b!4048992 (= res!1649777 (not ((_ is Nil!43289) lt!1442539)))))

(declare-fun b!4048993 () Bool)

(declare-fun res!1649780 () Bool)

(assert (=> b!4048993 (=> (not res!1649780) (not e!2512292))))

(assert (=> b!4048993 (= res!1649780 (= (head!8558 lt!1442536) (head!8558 lt!1442539)))))

(assert (= (and d!1202391 (not res!1649779)) b!4048992))

(assert (= (and b!4048992 res!1649777) b!4048993))

(assert (= (and b!4048993 res!1649780) b!4048994))

(assert (= (and d!1202391 (not res!1649778)) b!4048995))

(assert (=> b!4048995 m!4648615))

(assert (=> b!4048995 m!4648431))

(assert (=> b!4048994 m!4648585))

(assert (=> b!4048994 m!4648617))

(assert (=> b!4048994 m!4648585))

(assert (=> b!4048994 m!4648617))

(declare-fun m!4649207 () Bool)

(assert (=> b!4048994 m!4649207))

(assert (=> b!4048993 m!4648591))

(assert (=> b!4048993 m!4648621))

(assert (=> b!4048514 d!1202391))

(declare-fun b!4048998 () Bool)

(declare-fun res!1649781 () Bool)

(declare-fun e!2512294 () Bool)

(assert (=> b!4048998 (=> (not res!1649781) (not e!2512294))))

(declare-fun lt!1442753 () List!43413)

(assert (=> b!4048998 (= res!1649781 (= (size!32366 lt!1442753) (+ (size!32366 lt!1442546) (size!32366 lt!1442542))))))

(declare-fun b!4048999 () Bool)

(assert (=> b!4048999 (= e!2512294 (or (not (= lt!1442542 Nil!43289)) (= lt!1442753 lt!1442546)))))

(declare-fun b!4048996 () Bool)

(declare-fun e!2512293 () List!43413)

(assert (=> b!4048996 (= e!2512293 lt!1442542)))

(declare-fun b!4048997 () Bool)

(assert (=> b!4048997 (= e!2512293 (Cons!43289 (h!48709 lt!1442546) (++!11338 (t!335768 lt!1442546) lt!1442542)))))

(declare-fun d!1202393 () Bool)

(assert (=> d!1202393 e!2512294))

(declare-fun res!1649782 () Bool)

(assert (=> d!1202393 (=> (not res!1649782) (not e!2512294))))

(assert (=> d!1202393 (= res!1649782 (= (content!6588 lt!1442753) ((_ map or) (content!6588 lt!1442546) (content!6588 lt!1442542))))))

(assert (=> d!1202393 (= lt!1442753 e!2512293)))

(declare-fun c!699520 () Bool)

(assert (=> d!1202393 (= c!699520 ((_ is Nil!43289) lt!1442546))))

(assert (=> d!1202393 (= (++!11338 lt!1442546 lt!1442542) lt!1442753)))

(assert (= (and d!1202393 c!699520) b!4048996))

(assert (= (and d!1202393 (not c!699520)) b!4048997))

(assert (= (and d!1202393 res!1649782) b!4048998))

(assert (= (and b!4048998 res!1649781) b!4048999))

(declare-fun m!4649209 () Bool)

(assert (=> b!4048998 m!4649209))

(assert (=> b!4048998 m!4648439))

(declare-fun m!4649211 () Bool)

(assert (=> b!4048998 m!4649211))

(declare-fun m!4649213 () Bool)

(assert (=> b!4048997 m!4649213))

(declare-fun m!4649215 () Bool)

(assert (=> d!1202393 m!4649215))

(assert (=> d!1202393 m!4648549))

(declare-fun m!4649217 () Bool)

(assert (=> d!1202393 m!4649217))

(assert (=> b!4048515 d!1202393))

(declare-fun d!1202395 () Bool)

(declare-fun lt!1442754 () List!43413)

(assert (=> d!1202395 (= (++!11338 lt!1442546 lt!1442754) lt!1442575)))

(declare-fun e!2512295 () List!43413)

(assert (=> d!1202395 (= lt!1442754 e!2512295)))

(declare-fun c!699521 () Bool)

(assert (=> d!1202395 (= c!699521 ((_ is Cons!43289) lt!1442546))))

(assert (=> d!1202395 (>= (size!32366 lt!1442575) (size!32366 lt!1442546))))

(assert (=> d!1202395 (= (getSuffix!2440 lt!1442575 lt!1442546) lt!1442754)))

(declare-fun b!4049000 () Bool)

(assert (=> b!4049000 (= e!2512295 (getSuffix!2440 (tail!6290 lt!1442575) (t!335768 lt!1442546)))))

(declare-fun b!4049001 () Bool)

(assert (=> b!4049001 (= e!2512295 lt!1442575)))

(assert (= (and d!1202395 c!699521) b!4049000))

(assert (= (and d!1202395 (not c!699521)) b!4049001))

(declare-fun m!4649219 () Bool)

(assert (=> d!1202395 m!4649219))

(assert (=> d!1202395 m!4648871))

(assert (=> d!1202395 m!4648439))

(assert (=> b!4049000 m!4648873))

(assert (=> b!4049000 m!4648873))

(declare-fun m!4649221 () Bool)

(assert (=> b!4049000 m!4649221))

(assert (=> b!4048515 d!1202395))

(declare-fun d!1202397 () Bool)

(declare-fun e!2512296 () Bool)

(assert (=> d!1202397 e!2512296))

(declare-fun res!1649784 () Bool)

(assert (=> d!1202397 (=> res!1649784 e!2512296)))

(declare-fun lt!1442755 () Bool)

(assert (=> d!1202397 (= res!1649784 (not lt!1442755))))

(declare-fun e!2512297 () Bool)

(assert (=> d!1202397 (= lt!1442755 e!2512297)))

(declare-fun res!1649785 () Bool)

(assert (=> d!1202397 (=> res!1649785 e!2512297)))

(assert (=> d!1202397 (= res!1649785 ((_ is Nil!43289) lt!1442575))))

(assert (=> d!1202397 (= (isPrefix!4023 lt!1442575 lt!1442575) lt!1442755)))

(declare-fun b!4049005 () Bool)

(assert (=> b!4049005 (= e!2512296 (>= (size!32366 lt!1442575) (size!32366 lt!1442575)))))

(declare-fun b!4049004 () Bool)

(declare-fun e!2512298 () Bool)

(assert (=> b!4049004 (= e!2512298 (isPrefix!4023 (tail!6290 lt!1442575) (tail!6290 lt!1442575)))))

(declare-fun b!4049002 () Bool)

(assert (=> b!4049002 (= e!2512297 e!2512298)))

(declare-fun res!1649783 () Bool)

(assert (=> b!4049002 (=> (not res!1649783) (not e!2512298))))

(assert (=> b!4049002 (= res!1649783 (not ((_ is Nil!43289) lt!1442575)))))

(declare-fun b!4049003 () Bool)

(declare-fun res!1649786 () Bool)

(assert (=> b!4049003 (=> (not res!1649786) (not e!2512298))))

(assert (=> b!4049003 (= res!1649786 (= (head!8558 lt!1442575) (head!8558 lt!1442575)))))

(assert (= (and d!1202397 (not res!1649785)) b!4049002))

(assert (= (and b!4049002 res!1649783) b!4049003))

(assert (= (and b!4049003 res!1649786) b!4049004))

(assert (= (and d!1202397 (not res!1649784)) b!4049005))

(assert (=> b!4049005 m!4648871))

(assert (=> b!4049005 m!4648871))

(assert (=> b!4049004 m!4648873))

(assert (=> b!4049004 m!4648873))

(assert (=> b!4049004 m!4648873))

(assert (=> b!4049004 m!4648873))

(declare-fun m!4649223 () Bool)

(assert (=> b!4049004 m!4649223))

(assert (=> b!4049003 m!4648877))

(assert (=> b!4049003 m!4648877))

(assert (=> b!4048515 d!1202397))

(declare-fun d!1202399 () Bool)

(assert (=> d!1202399 (isPrefix!4023 lt!1442575 lt!1442575)))

(declare-fun lt!1442758 () Unit!62555)

(declare-fun choose!24551 (List!43413 List!43413) Unit!62555)

(assert (=> d!1202399 (= lt!1442758 (choose!24551 lt!1442575 lt!1442575))))

(assert (=> d!1202399 (= (lemmaIsPrefixRefl!2590 lt!1442575 lt!1442575) lt!1442758)))

(declare-fun bs!591427 () Bool)

(assert (= bs!591427 d!1202399))

(assert (=> bs!591427 m!4648509))

(declare-fun m!4649225 () Bool)

(assert (=> bs!591427 m!4649225))

(assert (=> b!4048515 d!1202399))

(declare-fun d!1202401 () Bool)

(declare-fun lt!1442759 () Int)

(assert (=> d!1202401 (>= lt!1442759 0)))

(declare-fun e!2512299 () Int)

(assert (=> d!1202401 (= lt!1442759 e!2512299)))

(declare-fun c!699522 () Bool)

(assert (=> d!1202401 (= c!699522 ((_ is Nil!43289) suffix!1299))))

(assert (=> d!1202401 (= (size!32366 suffix!1299) lt!1442759)))

(declare-fun b!4049006 () Bool)

(assert (=> b!4049006 (= e!2512299 0)))

(declare-fun b!4049007 () Bool)

(assert (=> b!4049007 (= e!2512299 (+ 1 (size!32366 (t!335768 suffix!1299))))))

(assert (= (and d!1202401 c!699522) b!4049006))

(assert (= (and d!1202401 (not c!699522)) b!4049007))

(declare-fun m!4649227 () Bool)

(assert (=> b!4049007 m!4649227))

(assert (=> b!4048516 d!1202401))

(declare-fun d!1202403 () Bool)

(declare-fun lt!1442760 () Int)

(assert (=> d!1202403 (>= lt!1442760 0)))

(declare-fun e!2512300 () Int)

(assert (=> d!1202403 (= lt!1442760 e!2512300)))

(declare-fun c!699523 () Bool)

(assert (=> d!1202403 (= c!699523 ((_ is Nil!43289) newSuffix!27))))

(assert (=> d!1202403 (= (size!32366 newSuffix!27) lt!1442760)))

(declare-fun b!4049008 () Bool)

(assert (=> b!4049008 (= e!2512300 0)))

(declare-fun b!4049009 () Bool)

(assert (=> b!4049009 (= e!2512300 (+ 1 (size!32366 (t!335768 newSuffix!27))))))

(assert (= (and d!1202403 c!699523) b!4049008))

(assert (= (and d!1202403 (not c!699523)) b!4049009))

(declare-fun m!4649229 () Bool)

(assert (=> b!4049009 m!4649229))

(assert (=> b!4048516 d!1202403))

(declare-fun d!1202405 () Bool)

(assert (=> d!1202405 (not (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442536))))

(declare-fun lt!1442763 () Unit!62555)

(declare-fun choose!24552 (LexerInterface!6525 List!43415 Rule!13672 List!43413 List!43413 List!43413 Rule!13672) Unit!62555)

(assert (=> d!1202405 (= lt!1442763 (choose!24552 thiss!21717 rules!2999 (rule!10014 token!484) lt!1442546 lt!1442575 lt!1442536 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(assert (=> d!1202405 (isPrefix!4023 lt!1442546 lt!1442575)))

(assert (=> d!1202405 (= (lemmaMaxPrefixOutputsMaxPrefix!462 thiss!21717 rules!2999 (rule!10014 token!484) lt!1442546 lt!1442575 lt!1442536 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442763)))

(declare-fun bs!591428 () Bool)

(assert (= bs!591428 d!1202405))

(assert (=> bs!591428 m!4648471))

(declare-fun m!4649231 () Bool)

(assert (=> bs!591428 m!4649231))

(assert (=> bs!591428 m!4648361))

(assert (=> b!4048517 d!1202405))

(declare-fun b!4049010 () Bool)

(declare-fun e!2512304 () Bool)

(declare-fun e!2512302 () Bool)

(assert (=> b!4049010 (= e!2512304 e!2512302)))

(declare-fun res!1649792 () Bool)

(assert (=> b!4049010 (=> (not res!1649792) (not e!2512302))))

(declare-fun lt!1442764 () Bool)

(assert (=> b!4049010 (= res!1649792 (not lt!1442764))))

(declare-fun b!4049011 () Bool)

(declare-fun e!2512301 () Bool)

(declare-fun e!2512303 () Bool)

(assert (=> b!4049011 (= e!2512301 e!2512303)))

(declare-fun c!699524 () Bool)

(assert (=> b!4049011 (= c!699524 ((_ is EmptyLang!11841) (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))

(declare-fun b!4049012 () Bool)

(declare-fun e!2512306 () Bool)

(assert (=> b!4049012 (= e!2512302 e!2512306)))

(declare-fun res!1649789 () Bool)

(assert (=> b!4049012 (=> res!1649789 e!2512306)))

(declare-fun call!287827 () Bool)

(assert (=> b!4049012 (= res!1649789 call!287827)))

(declare-fun b!4049013 () Bool)

(declare-fun res!1649793 () Bool)

(assert (=> b!4049013 (=> res!1649793 e!2512304)))

(assert (=> b!4049013 (= res!1649793 (not ((_ is ElementMatch!11841) (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))))

(assert (=> b!4049013 (= e!2512303 e!2512304)))

(declare-fun b!4049014 () Bool)

(declare-fun res!1649787 () Bool)

(assert (=> b!4049014 (=> res!1649787 e!2512306)))

(assert (=> b!4049014 (= res!1649787 (not (isEmpty!25834 (tail!6290 lt!1442536))))))

(declare-fun b!4049015 () Bool)

(declare-fun res!1649791 () Bool)

(declare-fun e!2512305 () Bool)

(assert (=> b!4049015 (=> (not res!1649791) (not e!2512305))))

(assert (=> b!4049015 (= res!1649791 (isEmpty!25834 (tail!6290 lt!1442536)))))

(declare-fun bm!287822 () Bool)

(assert (=> bm!287822 (= call!287827 (isEmpty!25834 lt!1442536))))

(declare-fun d!1202407 () Bool)

(assert (=> d!1202407 e!2512301))

(declare-fun c!699526 () Bool)

(assert (=> d!1202407 (= c!699526 ((_ is EmptyExpr!11841) (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))

(declare-fun e!2512307 () Bool)

(assert (=> d!1202407 (= lt!1442764 e!2512307)))

(declare-fun c!699525 () Bool)

(assert (=> d!1202407 (= c!699525 (isEmpty!25834 lt!1442536))))

(assert (=> d!1202407 (validRegex!5355 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))

(assert (=> d!1202407 (= (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) lt!1442536) lt!1442764)))

(declare-fun b!4049016 () Bool)

(assert (=> b!4049016 (= e!2512301 (= lt!1442764 call!287827))))

(declare-fun b!4049017 () Bool)

(assert (=> b!4049017 (= e!2512303 (not lt!1442764))))

(declare-fun b!4049018 () Bool)

(assert (=> b!4049018 (= e!2512307 (matchR!5794 (derivativeStep!3560 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))) (head!8558 lt!1442536)) (tail!6290 lt!1442536)))))

(declare-fun b!4049019 () Bool)

(assert (=> b!4049019 (= e!2512307 (nullable!4155 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))

(declare-fun b!4049020 () Bool)

(declare-fun res!1649790 () Bool)

(assert (=> b!4049020 (=> (not res!1649790) (not e!2512305))))

(assert (=> b!4049020 (= res!1649790 (not call!287827))))

(declare-fun b!4049021 () Bool)

(assert (=> b!4049021 (= e!2512306 (not (= (head!8558 lt!1442536) (c!699443 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555))))))))))

(declare-fun b!4049022 () Bool)

(assert (=> b!4049022 (= e!2512305 (= (head!8558 lt!1442536) (c!699443 (regex!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))))))

(declare-fun b!4049023 () Bool)

(declare-fun res!1649794 () Bool)

(assert (=> b!4049023 (=> res!1649794 e!2512304)))

(assert (=> b!4049023 (= res!1649794 e!2512305)))

(declare-fun res!1649788 () Bool)

(assert (=> b!4049023 (=> (not res!1649788) (not e!2512305))))

(assert (=> b!4049023 (= res!1649788 lt!1442764)))

(assert (= (and d!1202407 c!699525) b!4049019))

(assert (= (and d!1202407 (not c!699525)) b!4049018))

(assert (= (and d!1202407 c!699526) b!4049016))

(assert (= (and d!1202407 (not c!699526)) b!4049011))

(assert (= (and b!4049011 c!699524) b!4049017))

(assert (= (and b!4049011 (not c!699524)) b!4049013))

(assert (= (and b!4049013 (not res!1649793)) b!4049023))

(assert (= (and b!4049023 res!1649788) b!4049020))

(assert (= (and b!4049020 res!1649790) b!4049015))

(assert (= (and b!4049015 res!1649791) b!4049022))

(assert (= (and b!4049023 (not res!1649794)) b!4049010))

(assert (= (and b!4049010 res!1649792) b!4049012))

(assert (= (and b!4049012 (not res!1649789)) b!4049014))

(assert (= (and b!4049014 (not res!1649787)) b!4049021))

(assert (= (or b!4049016 b!4049012 b!4049020) bm!287822))

(assert (=> b!4049018 m!4648591))

(assert (=> b!4049018 m!4648591))

(declare-fun m!4649233 () Bool)

(assert (=> b!4049018 m!4649233))

(assert (=> b!4049018 m!4648585))

(assert (=> b!4049018 m!4649233))

(assert (=> b!4049018 m!4648585))

(declare-fun m!4649235 () Bool)

(assert (=> b!4049018 m!4649235))

(declare-fun m!4649237 () Bool)

(assert (=> bm!287822 m!4649237))

(assert (=> b!4049022 m!4648591))

(assert (=> b!4049014 m!4648585))

(assert (=> b!4049014 m!4648585))

(declare-fun m!4649239 () Bool)

(assert (=> b!4049014 m!4649239))

(assert (=> b!4049019 m!4648827))

(assert (=> d!1202407 m!4649237))

(assert (=> d!1202407 m!4648825))

(assert (=> b!4049021 m!4648591))

(assert (=> b!4049015 m!4648585))

(assert (=> b!4049015 m!4648585))

(assert (=> b!4049015 m!4649239))

(assert (=> b!4048517 d!1202407))

(declare-fun d!1202409 () Bool)

(declare-fun e!2512308 () Bool)

(assert (=> d!1202409 e!2512308))

(declare-fun res!1649796 () Bool)

(assert (=> d!1202409 (=> res!1649796 e!2512308)))

(declare-fun lt!1442765 () Bool)

(assert (=> d!1202409 (= res!1649796 (not lt!1442765))))

(declare-fun e!2512309 () Bool)

(assert (=> d!1202409 (= lt!1442765 e!2512309)))

(declare-fun res!1649797 () Bool)

(assert (=> d!1202409 (=> res!1649797 e!2512309)))

(assert (=> d!1202409 (= res!1649797 ((_ is Nil!43289) newSuffix!27))))

(assert (=> d!1202409 (= (isPrefix!4023 newSuffix!27 suffix!1299) lt!1442765)))

(declare-fun b!4049027 () Bool)

(assert (=> b!4049027 (= e!2512308 (>= (size!32366 suffix!1299) (size!32366 newSuffix!27)))))

(declare-fun b!4049026 () Bool)

(declare-fun e!2512310 () Bool)

(assert (=> b!4049026 (= e!2512310 (isPrefix!4023 (tail!6290 newSuffix!27) (tail!6290 suffix!1299)))))

(declare-fun b!4049024 () Bool)

(assert (=> b!4049024 (= e!2512309 e!2512310)))

(declare-fun res!1649795 () Bool)

(assert (=> b!4049024 (=> (not res!1649795) (not e!2512310))))

(assert (=> b!4049024 (= res!1649795 (not ((_ is Nil!43289) suffix!1299)))))

(declare-fun b!4049025 () Bool)

(declare-fun res!1649798 () Bool)

(assert (=> b!4049025 (=> (not res!1649798) (not e!2512310))))

(assert (=> b!4049025 (= res!1649798 (= (head!8558 newSuffix!27) (head!8558 suffix!1299)))))

(assert (= (and d!1202409 (not res!1649797)) b!4049024))

(assert (= (and b!4049024 res!1649795) b!4049025))

(assert (= (and b!4049025 res!1649798) b!4049026))

(assert (= (and d!1202409 (not res!1649796)) b!4049027))

(assert (=> b!4049027 m!4648475))

(assert (=> b!4049027 m!4648477))

(declare-fun m!4649241 () Bool)

(assert (=> b!4049026 m!4649241))

(assert (=> b!4049026 m!4649053))

(assert (=> b!4049026 m!4649241))

(assert (=> b!4049026 m!4649053))

(declare-fun m!4649243 () Bool)

(assert (=> b!4049026 m!4649243))

(declare-fun m!4649245 () Bool)

(assert (=> b!4049025 m!4649245))

(declare-fun m!4649247 () Bool)

(assert (=> b!4049025 m!4649247))

(assert (=> b!4048541 d!1202409))

(declare-fun d!1202411 () Bool)

(declare-fun lt!1442766 () Int)

(assert (=> d!1202411 (>= lt!1442766 0)))

(declare-fun e!2512311 () Int)

(assert (=> d!1202411 (= lt!1442766 e!2512311)))

(declare-fun c!699527 () Bool)

(assert (=> d!1202411 (= c!699527 ((_ is Nil!43289) (originalCharacters!7536 token!484)))))

(assert (=> d!1202411 (= (size!32366 (originalCharacters!7536 token!484)) lt!1442766)))

(declare-fun b!4049028 () Bool)

(assert (=> b!4049028 (= e!2512311 0)))

(declare-fun b!4049029 () Bool)

(assert (=> b!4049029 (= e!2512311 (+ 1 (size!32366 (t!335768 (originalCharacters!7536 token!484)))))))

(assert (= (and d!1202411 c!699527) b!4049028))

(assert (= (and d!1202411 (not c!699527)) b!4049029))

(declare-fun m!4649249 () Bool)

(assert (=> b!4049029 m!4649249))

(assert (=> b!4048520 d!1202411))

(declare-fun b!4049030 () Bool)

(declare-fun e!2512314 () Option!9350)

(declare-fun call!287828 () Option!9350)

(assert (=> b!4049030 (= e!2512314 call!287828)))

(declare-fun b!4049031 () Bool)

(declare-fun res!1649802 () Bool)

(declare-fun e!2512312 () Bool)

(assert (=> b!4049031 (=> (not res!1649802) (not e!2512312))))

(declare-fun lt!1442770 () Option!9350)

(assert (=> b!4049031 (= res!1649802 (matchR!5794 (regex!6936 (rule!10014 (_1!24315 (get!14201 lt!1442770)))) (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442770))))))))

(declare-fun b!4049032 () Bool)

(declare-fun lt!1442769 () Option!9350)

(declare-fun lt!1442771 () Option!9350)

(assert (=> b!4049032 (= e!2512314 (ite (and ((_ is None!9349) lt!1442769) ((_ is None!9349) lt!1442771)) None!9349 (ite ((_ is None!9349) lt!1442771) lt!1442769 (ite ((_ is None!9349) lt!1442769) lt!1442771 (ite (>= (size!32365 (_1!24315 (v!39755 lt!1442769))) (size!32365 (_1!24315 (v!39755 lt!1442771)))) lt!1442769 lt!1442771)))))))

(assert (=> b!4049032 (= lt!1442769 call!287828)))

(assert (=> b!4049032 (= lt!1442771 (maxPrefix!3823 thiss!21717 (t!335770 rules!2999) lt!1442575))))

(declare-fun d!1202413 () Bool)

(declare-fun e!2512313 () Bool)

(assert (=> d!1202413 e!2512313))

(declare-fun res!1649803 () Bool)

(assert (=> d!1202413 (=> res!1649803 e!2512313)))

(assert (=> d!1202413 (= res!1649803 (isEmpty!25836 lt!1442770))))

(assert (=> d!1202413 (= lt!1442770 e!2512314)))

(declare-fun c!699528 () Bool)

(assert (=> d!1202413 (= c!699528 (and ((_ is Cons!43291) rules!2999) ((_ is Nil!43291) (t!335770 rules!2999))))))

(declare-fun lt!1442767 () Unit!62555)

(declare-fun lt!1442768 () Unit!62555)

(assert (=> d!1202413 (= lt!1442767 lt!1442768)))

(assert (=> d!1202413 (isPrefix!4023 lt!1442575 lt!1442575)))

(assert (=> d!1202413 (= lt!1442768 (lemmaIsPrefixRefl!2590 lt!1442575 lt!1442575))))

(assert (=> d!1202413 (rulesValidInductive!2531 thiss!21717 rules!2999)))

(assert (=> d!1202413 (= (maxPrefix!3823 thiss!21717 rules!2999 lt!1442575) lt!1442770)))

(declare-fun b!4049033 () Bool)

(declare-fun res!1649799 () Bool)

(assert (=> b!4049033 (=> (not res!1649799) (not e!2512312))))

(assert (=> b!4049033 (= res!1649799 (= (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442770)))) (originalCharacters!7536 (_1!24315 (get!14201 lt!1442770)))))))

(declare-fun bm!287823 () Bool)

(assert (=> bm!287823 (= call!287828 (maxPrefixOneRule!2835 thiss!21717 (h!48711 rules!2999) lt!1442575))))

(declare-fun b!4049034 () Bool)

(declare-fun res!1649800 () Bool)

(assert (=> b!4049034 (=> (not res!1649800) (not e!2512312))))

(assert (=> b!4049034 (= res!1649800 (< (size!32366 (_2!24315 (get!14201 lt!1442770))) (size!32366 lt!1442575)))))

(declare-fun b!4049035 () Bool)

(assert (=> b!4049035 (= e!2512313 e!2512312)))

(declare-fun res!1649804 () Bool)

(assert (=> b!4049035 (=> (not res!1649804) (not e!2512312))))

(assert (=> b!4049035 (= res!1649804 (isDefined!7110 lt!1442770))))

(declare-fun b!4049036 () Bool)

(declare-fun res!1649805 () Bool)

(assert (=> b!4049036 (=> (not res!1649805) (not e!2512312))))

(assert (=> b!4049036 (= res!1649805 (= (value!218310 (_1!24315 (get!14201 lt!1442770))) (apply!10125 (transformation!6936 (rule!10014 (_1!24315 (get!14201 lt!1442770)))) (seqFromList!5153 (originalCharacters!7536 (_1!24315 (get!14201 lt!1442770)))))))))

(declare-fun b!4049037 () Bool)

(declare-fun res!1649801 () Bool)

(assert (=> b!4049037 (=> (not res!1649801) (not e!2512312))))

(assert (=> b!4049037 (= res!1649801 (= (++!11338 (list!16126 (charsOf!4752 (_1!24315 (get!14201 lt!1442770)))) (_2!24315 (get!14201 lt!1442770))) lt!1442575))))

(declare-fun b!4049038 () Bool)

(assert (=> b!4049038 (= e!2512312 (contains!8608 rules!2999 (rule!10014 (_1!24315 (get!14201 lt!1442770)))))))

(assert (= (and d!1202413 c!699528) b!4049030))

(assert (= (and d!1202413 (not c!699528)) b!4049032))

(assert (= (or b!4049030 b!4049032) bm!287823))

(assert (= (and d!1202413 (not res!1649803)) b!4049035))

(assert (= (and b!4049035 res!1649804) b!4049033))

(assert (= (and b!4049033 res!1649799) b!4049034))

(assert (= (and b!4049034 res!1649800) b!4049037))

(assert (= (and b!4049037 res!1649801) b!4049036))

(assert (= (and b!4049036 res!1649805) b!4049031))

(assert (= (and b!4049031 res!1649802) b!4049038))

(declare-fun m!4649251 () Bool)

(assert (=> b!4049036 m!4649251))

(declare-fun m!4649253 () Bool)

(assert (=> b!4049036 m!4649253))

(assert (=> b!4049036 m!4649253))

(declare-fun m!4649255 () Bool)

(assert (=> b!4049036 m!4649255))

(declare-fun m!4649257 () Bool)

(assert (=> b!4049035 m!4649257))

(declare-fun m!4649259 () Bool)

(assert (=> b!4049032 m!4649259))

(assert (=> b!4049031 m!4649251))

(declare-fun m!4649261 () Bool)

(assert (=> b!4049031 m!4649261))

(assert (=> b!4049031 m!4649261))

(declare-fun m!4649263 () Bool)

(assert (=> b!4049031 m!4649263))

(assert (=> b!4049031 m!4649263))

(declare-fun m!4649265 () Bool)

(assert (=> b!4049031 m!4649265))

(assert (=> b!4049033 m!4649251))

(assert (=> b!4049033 m!4649261))

(assert (=> b!4049033 m!4649261))

(assert (=> b!4049033 m!4649263))

(assert (=> b!4049034 m!4649251))

(declare-fun m!4649267 () Bool)

(assert (=> b!4049034 m!4649267))

(assert (=> b!4049034 m!4648871))

(declare-fun m!4649269 () Bool)

(assert (=> bm!287823 m!4649269))

(declare-fun m!4649271 () Bool)

(assert (=> d!1202413 m!4649271))

(assert (=> d!1202413 m!4648509))

(assert (=> d!1202413 m!4648511))

(assert (=> d!1202413 m!4649149))

(assert (=> b!4049038 m!4649251))

(declare-fun m!4649273 () Bool)

(assert (=> b!4049038 m!4649273))

(assert (=> b!4049037 m!4649251))

(assert (=> b!4049037 m!4649261))

(assert (=> b!4049037 m!4649261))

(assert (=> b!4049037 m!4649263))

(assert (=> b!4049037 m!4649263))

(declare-fun m!4649275 () Bool)

(assert (=> b!4049037 m!4649275))

(assert (=> b!4048542 d!1202413))

(declare-fun b!4049041 () Bool)

(declare-fun res!1649806 () Bool)

(declare-fun e!2512316 () Bool)

(assert (=> b!4049041 (=> (not res!1649806) (not e!2512316))))

(declare-fun lt!1442772 () List!43413)

(assert (=> b!4049041 (= res!1649806 (= (size!32366 lt!1442772) (+ (size!32366 prefix!494) (size!32366 suffix!1299))))))

(declare-fun b!4049042 () Bool)

(assert (=> b!4049042 (= e!2512316 (or (not (= suffix!1299 Nil!43289)) (= lt!1442772 prefix!494)))))

(declare-fun b!4049039 () Bool)

(declare-fun e!2512315 () List!43413)

(assert (=> b!4049039 (= e!2512315 suffix!1299)))

(declare-fun b!4049040 () Bool)

(assert (=> b!4049040 (= e!2512315 (Cons!43289 (h!48709 prefix!494) (++!11338 (t!335768 prefix!494) suffix!1299)))))

(declare-fun d!1202415 () Bool)

(assert (=> d!1202415 e!2512316))

(declare-fun res!1649807 () Bool)

(assert (=> d!1202415 (=> (not res!1649807) (not e!2512316))))

(assert (=> d!1202415 (= res!1649807 (= (content!6588 lt!1442772) ((_ map or) (content!6588 prefix!494) (content!6588 suffix!1299))))))

(assert (=> d!1202415 (= lt!1442772 e!2512315)))

(declare-fun c!699529 () Bool)

(assert (=> d!1202415 (= c!699529 ((_ is Nil!43289) prefix!494))))

(assert (=> d!1202415 (= (++!11338 prefix!494 suffix!1299) lt!1442772)))

(assert (= (and d!1202415 c!699529) b!4049039))

(assert (= (and d!1202415 (not c!699529)) b!4049040))

(assert (= (and d!1202415 res!1649807) b!4049041))

(assert (= (and b!4049041 res!1649806) b!4049042))

(declare-fun m!4649277 () Bool)

(assert (=> b!4049041 m!4649277))

(assert (=> b!4049041 m!4648441))

(assert (=> b!4049041 m!4648475))

(declare-fun m!4649279 () Bool)

(assert (=> b!4049040 m!4649279))

(declare-fun m!4649281 () Bool)

(assert (=> d!1202415 m!4649281))

(assert (=> d!1202415 m!4648667))

(assert (=> d!1202415 m!4648563))

(assert (=> b!4048542 d!1202415))

(declare-fun b!4049045 () Bool)

(declare-fun res!1649808 () Bool)

(declare-fun e!2512318 () Bool)

(assert (=> b!4049045 (=> (not res!1649808) (not e!2512318))))

(declare-fun lt!1442773 () List!43413)

(assert (=> b!4049045 (= res!1649808 (= (size!32366 lt!1442773) (+ (size!32366 lt!1442536) (size!32366 lt!1442552))))))

(declare-fun b!4049046 () Bool)

(assert (=> b!4049046 (= e!2512318 (or (not (= lt!1442552 Nil!43289)) (= lt!1442773 lt!1442536)))))

(declare-fun b!4049043 () Bool)

(declare-fun e!2512317 () List!43413)

(assert (=> b!4049043 (= e!2512317 lt!1442552)))

(declare-fun b!4049044 () Bool)

(assert (=> b!4049044 (= e!2512317 (Cons!43289 (h!48709 lt!1442536) (++!11338 (t!335768 lt!1442536) lt!1442552)))))

(declare-fun d!1202417 () Bool)

(assert (=> d!1202417 e!2512318))

(declare-fun res!1649809 () Bool)

(assert (=> d!1202417 (=> (not res!1649809) (not e!2512318))))

(assert (=> d!1202417 (= res!1649809 (= (content!6588 lt!1442773) ((_ map or) (content!6588 lt!1442536) (content!6588 lt!1442552))))))

(assert (=> d!1202417 (= lt!1442773 e!2512317)))

(declare-fun c!699530 () Bool)

(assert (=> d!1202417 (= c!699530 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202417 (= (++!11338 lt!1442536 lt!1442552) lt!1442773)))

(assert (= (and d!1202417 c!699530) b!4049043))

(assert (= (and d!1202417 (not c!699530)) b!4049044))

(assert (= (and d!1202417 res!1649809) b!4049045))

(assert (= (and b!4049045 res!1649808) b!4049046))

(declare-fun m!4649283 () Bool)

(assert (=> b!4049045 m!4649283))

(assert (=> b!4049045 m!4648431))

(declare-fun m!4649285 () Bool)

(assert (=> b!4049045 m!4649285))

(declare-fun m!4649287 () Bool)

(assert (=> b!4049044 m!4649287))

(declare-fun m!4649289 () Bool)

(assert (=> d!1202417 m!4649289))

(assert (=> d!1202417 m!4648773))

(declare-fun m!4649291 () Bool)

(assert (=> d!1202417 m!4649291))

(assert (=> b!4048543 d!1202417))

(declare-fun d!1202419 () Bool)

(declare-fun lt!1442774 () List!43413)

(assert (=> d!1202419 (= (++!11338 lt!1442536 lt!1442774) lt!1442539)))

(declare-fun e!2512319 () List!43413)

(assert (=> d!1202419 (= lt!1442774 e!2512319)))

(declare-fun c!699531 () Bool)

(assert (=> d!1202419 (= c!699531 ((_ is Cons!43289) lt!1442536))))

(assert (=> d!1202419 (>= (size!32366 lt!1442539) (size!32366 lt!1442536))))

(assert (=> d!1202419 (= (getSuffix!2440 lt!1442539 lt!1442536) lt!1442774)))

(declare-fun b!4049047 () Bool)

(assert (=> b!4049047 (= e!2512319 (getSuffix!2440 (tail!6290 lt!1442539) (t!335768 lt!1442536)))))

(declare-fun b!4049048 () Bool)

(assert (=> b!4049048 (= e!2512319 lt!1442539)))

(assert (= (and d!1202419 c!699531) b!4049047))

(assert (= (and d!1202419 (not c!699531)) b!4049048))

(declare-fun m!4649293 () Bool)

(assert (=> d!1202419 m!4649293))

(assert (=> d!1202419 m!4648615))

(assert (=> d!1202419 m!4648431))

(assert (=> b!4049047 m!4648617))

(assert (=> b!4049047 m!4648617))

(declare-fun m!4649295 () Bool)

(assert (=> b!4049047 m!4649295))

(assert (=> b!4048543 d!1202419))

(declare-fun d!1202421 () Bool)

(declare-fun e!2512320 () Bool)

(assert (=> d!1202421 e!2512320))

(declare-fun res!1649811 () Bool)

(assert (=> d!1202421 (=> res!1649811 e!2512320)))

(declare-fun lt!1442775 () Bool)

(assert (=> d!1202421 (= res!1649811 (not lt!1442775))))

(declare-fun e!2512321 () Bool)

(assert (=> d!1202421 (= lt!1442775 e!2512321)))

(declare-fun res!1649812 () Bool)

(assert (=> d!1202421 (=> res!1649812 e!2512321)))

(assert (=> d!1202421 (= res!1649812 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202421 (= (isPrefix!4023 lt!1442536 lt!1442575) lt!1442775)))

(declare-fun b!4049052 () Bool)

(assert (=> b!4049052 (= e!2512320 (>= (size!32366 lt!1442575) (size!32366 lt!1442536)))))

(declare-fun b!4049051 () Bool)

(declare-fun e!2512322 () Bool)

(assert (=> b!4049051 (= e!2512322 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 lt!1442575)))))

(declare-fun b!4049049 () Bool)

(assert (=> b!4049049 (= e!2512321 e!2512322)))

(declare-fun res!1649810 () Bool)

(assert (=> b!4049049 (=> (not res!1649810) (not e!2512322))))

(assert (=> b!4049049 (= res!1649810 (not ((_ is Nil!43289) lt!1442575)))))

(declare-fun b!4049050 () Bool)

(declare-fun res!1649813 () Bool)

(assert (=> b!4049050 (=> (not res!1649813) (not e!2512322))))

(assert (=> b!4049050 (= res!1649813 (= (head!8558 lt!1442536) (head!8558 lt!1442575)))))

(assert (= (and d!1202421 (not res!1649812)) b!4049049))

(assert (= (and b!4049049 res!1649810) b!4049050))

(assert (= (and b!4049050 res!1649813) b!4049051))

(assert (= (and d!1202421 (not res!1649811)) b!4049052))

(assert (=> b!4049052 m!4648871))

(assert (=> b!4049052 m!4648431))

(assert (=> b!4049051 m!4648585))

(assert (=> b!4049051 m!4648873))

(assert (=> b!4049051 m!4648585))

(assert (=> b!4049051 m!4648873))

(declare-fun m!4649297 () Bool)

(assert (=> b!4049051 m!4649297))

(assert (=> b!4049050 m!4648591))

(assert (=> b!4049050 m!4648877))

(assert (=> b!4048522 d!1202421))

(declare-fun d!1202423 () Bool)

(declare-fun e!2512323 () Bool)

(assert (=> d!1202423 e!2512323))

(declare-fun res!1649815 () Bool)

(assert (=> d!1202423 (=> res!1649815 e!2512323)))

(declare-fun lt!1442776 () Bool)

(assert (=> d!1202423 (= res!1649815 (not lt!1442776))))

(declare-fun e!2512324 () Bool)

(assert (=> d!1202423 (= lt!1442776 e!2512324)))

(declare-fun res!1649816 () Bool)

(assert (=> d!1202423 (=> res!1649816 e!2512324)))

(assert (=> d!1202423 (= res!1649816 ((_ is Nil!43289) lt!1442536))))

(assert (=> d!1202423 (= (isPrefix!4023 lt!1442536 lt!1442523) lt!1442776)))

(declare-fun b!4049056 () Bool)

(assert (=> b!4049056 (= e!2512323 (>= (size!32366 lt!1442523) (size!32366 lt!1442536)))))

(declare-fun b!4049055 () Bool)

(declare-fun e!2512325 () Bool)

(assert (=> b!4049055 (= e!2512325 (isPrefix!4023 (tail!6290 lt!1442536) (tail!6290 lt!1442523)))))

(declare-fun b!4049053 () Bool)

(assert (=> b!4049053 (= e!2512324 e!2512325)))

(declare-fun res!1649814 () Bool)

(assert (=> b!4049053 (=> (not res!1649814) (not e!2512325))))

(assert (=> b!4049053 (= res!1649814 (not ((_ is Nil!43289) lt!1442523)))))

(declare-fun b!4049054 () Bool)

(declare-fun res!1649817 () Bool)

(assert (=> b!4049054 (=> (not res!1649817) (not e!2512325))))

(assert (=> b!4049054 (= res!1649817 (= (head!8558 lt!1442536) (head!8558 lt!1442523)))))

(assert (= (and d!1202423 (not res!1649816)) b!4049053))

(assert (= (and b!4049053 res!1649814) b!4049054))

(assert (= (and b!4049054 res!1649817) b!4049055))

(assert (= (and d!1202423 (not res!1649815)) b!4049056))

(declare-fun m!4649299 () Bool)

(assert (=> b!4049056 m!4649299))

(assert (=> b!4049056 m!4648431))

(assert (=> b!4049055 m!4648585))

(declare-fun m!4649301 () Bool)

(assert (=> b!4049055 m!4649301))

(assert (=> b!4049055 m!4648585))

(assert (=> b!4049055 m!4649301))

(declare-fun m!4649303 () Bool)

(assert (=> b!4049055 m!4649303))

(assert (=> b!4049054 m!4648591))

(declare-fun m!4649305 () Bool)

(assert (=> b!4049054 m!4649305))

(assert (=> b!4048522 d!1202423))

(declare-fun d!1202425 () Bool)

(assert (=> d!1202425 (isPrefix!4023 lt!1442536 (++!11338 lt!1442539 lt!1442533))))

(declare-fun lt!1442777 () Unit!62555)

(assert (=> d!1202425 (= lt!1442777 (choose!24540 lt!1442536 lt!1442539 lt!1442533))))

(assert (=> d!1202425 (isPrefix!4023 lt!1442536 lt!1442539)))

(assert (=> d!1202425 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!816 lt!1442536 lt!1442539 lt!1442533) lt!1442777)))

(declare-fun bs!591429 () Bool)

(assert (= bs!591429 d!1202425))

(assert (=> bs!591429 m!4648481))

(assert (=> bs!591429 m!4648481))

(declare-fun m!4649307 () Bool)

(assert (=> bs!591429 m!4649307))

(declare-fun m!4649309 () Bool)

(assert (=> bs!591429 m!4649309))

(assert (=> bs!591429 m!4648491))

(assert (=> b!4048522 d!1202425))

(declare-fun b!4049069 () Bool)

(declare-fun e!2512328 () Bool)

(declare-fun tp!1228130 () Bool)

(assert (=> b!4049069 (= e!2512328 tp!1228130)))

(declare-fun b!4049068 () Bool)

(declare-fun tp!1228132 () Bool)

(declare-fun tp!1228131 () Bool)

(assert (=> b!4049068 (= e!2512328 (and tp!1228132 tp!1228131))))

(assert (=> b!4048544 (= tp!1228105 e!2512328)))

(declare-fun b!4049070 () Bool)

(declare-fun tp!1228129 () Bool)

(declare-fun tp!1228133 () Bool)

(assert (=> b!4049070 (= e!2512328 (and tp!1228129 tp!1228133))))

(declare-fun b!4049067 () Bool)

(assert (=> b!4049067 (= e!2512328 tp_is_empty!20653)))

(assert (= (and b!4048544 ((_ is ElementMatch!11841) (regex!6936 (rule!10014 token!484)))) b!4049067))

(assert (= (and b!4048544 ((_ is Concat!19008) (regex!6936 (rule!10014 token!484)))) b!4049068))

(assert (= (and b!4048544 ((_ is Star!11841) (regex!6936 (rule!10014 token!484)))) b!4049069))

(assert (= (and b!4048544 ((_ is Union!11841) (regex!6936 (rule!10014 token!484)))) b!4049070))

(declare-fun b!4049075 () Bool)

(declare-fun e!2512331 () Bool)

(declare-fun tp!1228136 () Bool)

(assert (=> b!4049075 (= e!2512331 (and tp_is_empty!20653 tp!1228136))))

(assert (=> b!4048539 (= tp!1228104 e!2512331)))

(assert (= (and b!4048539 ((_ is Cons!43289) (t!335768 newSuffix!27))) b!4049075))

(declare-fun b!4049086 () Bool)

(declare-fun b_free!112689 () Bool)

(declare-fun b_next!113393 () Bool)

(assert (=> b!4049086 (= b_free!112689 (not b_next!113393))))

(declare-fun tb!243613 () Bool)

(declare-fun t!335800 () Bool)

(assert (=> (and b!4049086 (= (toValue!9488 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toValue!9488 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335800) tb!243613))

(declare-fun result!295196 () Bool)

(assert (= result!295196 result!295164))

(assert (=> d!1202269 t!335800))

(declare-fun t!335802 () Bool)

(declare-fun tb!243615 () Bool)

(assert (=> (and b!4049086 (= (toValue!9488 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toValue!9488 (transformation!6936 (rule!10014 token!484)))) t!335802) tb!243615))

(declare-fun result!295198 () Bool)

(assert (= result!295198 result!295170))

(assert (=> d!1202317 t!335802))

(declare-fun b_and!311387 () Bool)

(declare-fun tp!1228147 () Bool)

(assert (=> b!4049086 (= tp!1228147 (and (=> t!335800 result!295196) (=> t!335802 result!295198) b_and!311387))))

(declare-fun b_free!112691 () Bool)

(declare-fun b_next!113395 () Bool)

(assert (=> b!4049086 (= b_free!112691 (not b_next!113395))))

(declare-fun t!335804 () Bool)

(declare-fun tb!243617 () Bool)

(assert (=> (and b!4049086 (= (toChars!9347 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toChars!9347 (transformation!6936 (rule!10014 token!484)))) t!335804) tb!243617))

(declare-fun result!295200 () Bool)

(assert (= result!295200 result!295154))

(assert (=> d!1202219 t!335804))

(assert (=> b!4048646 t!335804))

(declare-fun tb!243619 () Bool)

(declare-fun t!335806 () Bool)

(assert (=> (and b!4049086 (= (toChars!9347 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toChars!9347 (transformation!6936 (rule!10014 (_1!24315 (v!39755 lt!1442555)))))) t!335806) tb!243619))

(declare-fun result!295202 () Bool)

(assert (= result!295202 result!295160))

(assert (=> d!1202245 t!335806))

(declare-fun b_and!311389 () Bool)

(declare-fun tp!1228148 () Bool)

(assert (=> b!4049086 (= tp!1228148 (and (=> t!335804 result!295200) (=> t!335806 result!295202) b_and!311389))))

(declare-fun e!2512341 () Bool)

(assert (=> b!4049086 (= e!2512341 (and tp!1228147 tp!1228148))))

(declare-fun b!4049085 () Bool)

(declare-fun e!2512340 () Bool)

(declare-fun tp!1228145 () Bool)

(assert (=> b!4049085 (= e!2512340 (and tp!1228145 (inv!57864 (tag!7796 (h!48711 (t!335770 rules!2999)))) (inv!57867 (transformation!6936 (h!48711 (t!335770 rules!2999)))) e!2512341))))

(declare-fun b!4049084 () Bool)

(declare-fun e!2512343 () Bool)

(declare-fun tp!1228146 () Bool)

(assert (=> b!4049084 (= e!2512343 (and e!2512340 tp!1228146))))

(assert (=> b!4048518 (= tp!1228106 e!2512343)))

(assert (= b!4049085 b!4049086))

(assert (= b!4049084 b!4049085))

(assert (= (and b!4048518 ((_ is Cons!43291) (t!335770 rules!2999))) b!4049084))

(declare-fun m!4649311 () Bool)

(assert (=> b!4049085 m!4649311))

(declare-fun m!4649313 () Bool)

(assert (=> b!4049085 m!4649313))

(declare-fun b!4049089 () Bool)

(declare-fun e!2512344 () Bool)

(declare-fun tp!1228150 () Bool)

(assert (=> b!4049089 (= e!2512344 tp!1228150)))

(declare-fun b!4049088 () Bool)

(declare-fun tp!1228152 () Bool)

(declare-fun tp!1228151 () Bool)

(assert (=> b!4049088 (= e!2512344 (and tp!1228152 tp!1228151))))

(assert (=> b!4048535 (= tp!1228108 e!2512344)))

(declare-fun b!4049090 () Bool)

(declare-fun tp!1228149 () Bool)

(declare-fun tp!1228153 () Bool)

(assert (=> b!4049090 (= e!2512344 (and tp!1228149 tp!1228153))))

(declare-fun b!4049087 () Bool)

(assert (=> b!4049087 (= e!2512344 tp_is_empty!20653)))

(assert (= (and b!4048535 ((_ is ElementMatch!11841) (regex!6936 (h!48711 rules!2999)))) b!4049087))

(assert (= (and b!4048535 ((_ is Concat!19008) (regex!6936 (h!48711 rules!2999)))) b!4049088))

(assert (= (and b!4048535 ((_ is Star!11841) (regex!6936 (h!48711 rules!2999)))) b!4049089))

(assert (= (and b!4048535 ((_ is Union!11841) (regex!6936 (h!48711 rules!2999)))) b!4049090))

(declare-fun b!4049091 () Bool)

(declare-fun e!2512345 () Bool)

(declare-fun tp!1228154 () Bool)

(assert (=> b!4049091 (= e!2512345 (and tp_is_empty!20653 tp!1228154))))

(assert (=> b!4048536 (= tp!1228101 e!2512345)))

(assert (= (and b!4048536 ((_ is Cons!43289) (t!335768 prefix!494))) b!4049091))

(declare-fun b!4049092 () Bool)

(declare-fun e!2512346 () Bool)

(declare-fun tp!1228155 () Bool)

(assert (=> b!4049092 (= e!2512346 (and tp_is_empty!20653 tp!1228155))))

(assert (=> b!4048531 (= tp!1228103 e!2512346)))

(assert (= (and b!4048531 ((_ is Cons!43289) (originalCharacters!7536 token!484))) b!4049092))

(declare-fun b!4049093 () Bool)

(declare-fun e!2512347 () Bool)

(declare-fun tp!1228156 () Bool)

(assert (=> b!4049093 (= e!2512347 (and tp_is_empty!20653 tp!1228156))))

(assert (=> b!4048510 (= tp!1228102 e!2512347)))

(assert (= (and b!4048510 ((_ is Cons!43289) (t!335768 suffixResult!105))) b!4049093))

(declare-fun b!4049094 () Bool)

(declare-fun e!2512348 () Bool)

(declare-fun tp!1228157 () Bool)

(assert (=> b!4049094 (= e!2512348 (and tp_is_empty!20653 tp!1228157))))

(assert (=> b!4048521 (= tp!1228110 e!2512348)))

(assert (= (and b!4048521 ((_ is Cons!43289) (t!335768 suffix!1299))) b!4049094))

(declare-fun b!4049095 () Bool)

(declare-fun e!2512349 () Bool)

(declare-fun tp!1228158 () Bool)

(assert (=> b!4049095 (= e!2512349 (and tp_is_empty!20653 tp!1228158))))

(assert (=> b!4048537 (= tp!1228109 e!2512349)))

(assert (= (and b!4048537 ((_ is Cons!43289) (t!335768 newSuffixResult!27))) b!4049095))

(declare-fun b_lambda!118319 () Bool)

(assert (= b_lambda!118305 (or (and b!4048507 b_free!112683) (and b!4048534 b_free!112687 (= (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toChars!9347 (transformation!6936 (rule!10014 token!484))))) (and b!4049086 b_free!112691 (= (toChars!9347 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toChars!9347 (transformation!6936 (rule!10014 token!484))))) b_lambda!118319)))

(declare-fun b_lambda!118321 () Bool)

(assert (= b_lambda!118303 (or (and b!4048507 b_free!112683) (and b!4048534 b_free!112687 (= (toChars!9347 (transformation!6936 (h!48711 rules!2999))) (toChars!9347 (transformation!6936 (rule!10014 token!484))))) (and b!4049086 b_free!112691 (= (toChars!9347 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toChars!9347 (transformation!6936 (rule!10014 token!484))))) b_lambda!118321)))

(declare-fun b_lambda!118323 () Bool)

(assert (= b_lambda!118311 (or (and b!4048507 b_free!112681) (and b!4048534 b_free!112685 (= (toValue!9488 (transformation!6936 (h!48711 rules!2999))) (toValue!9488 (transformation!6936 (rule!10014 token!484))))) (and b!4049086 b_free!112689 (= (toValue!9488 (transformation!6936 (h!48711 (t!335770 rules!2999)))) (toValue!9488 (transformation!6936 (rule!10014 token!484))))) b_lambda!118323)))

(check-sat (not b!4049070) (not b!4048882) b_and!311365 (not b!4049037) (not b_next!113389) (not d!1202399) (not d!1202313) (not b!4049026) (not b!4049034) (not b!4048805) (not b!4048779) (not b!4048988) (not d!1202275) (not b!4048899) (not tb!243589) (not b!4048879) (not b!4048653) b_and!311373 (not b!4048804) (not b!4048624) (not b!4048960) (not b!4048748) (not b!4048745) (not d!1202221) (not b!4049069) b_and!311387 (not b!4049014) (not b!4048647) (not b!4048840) (not d!1202245) (not b!4048565) (not d!1202263) (not d!1202365) (not d!1202331) (not d!1202405) (not b!4048880) (not b!4048995) (not b!4048579) (not d!1202373) (not b!4048778) (not d!1202199) (not b!4049084) (not b_next!113395) (not b!4048619) (not d!1202195) (not b!4049091) (not d!1202297) (not b!4048807) (not d!1202187) (not d!1202417) (not b!4049095) (not b!4048980) (not b!4049056) (not b!4048578) (not b!4048878) (not b!4048961) (not b!4049000) (not b!4048886) (not b!4048997) (not b!4048981) (not d!1202227) (not d!1202325) (not b_lambda!118307) (not b_next!113385) (not b!4048625) (not bm!287821) (not b!4049055) (not b!4048872) (not b!4048793) (not b!4048646) (not b!4049044) (not b!4048796) (not d!1202223) (not b!4049021) (not b!4049047) (not b!4048863) (not b!4048962) (not d!1202185) (not b!4048547) (not b!4048841) (not b!4048777) (not b!4049033) (not b!4048984) (not b!4048787) (not d!1202211) (not b!4049029) (not b!4048759) (not b!4048884) (not d!1202319) (not d!1202283) (not b_lambda!118319) (not d!1202389) b_and!311363 (not b!4048957) (not d!1202193) (not b!4048975) (not d!1202217) (not d!1202407) (not b!4049036) (not b!4048617) (not b!4048613) (not b!4049007) (not d!1202207) (not b!4049019) (not b!4049004) (not b!4048994) (not b!4049092) (not b!4048744) (not b!4049009) (not b!4049038) (not d!1202393) (not b!4048557) (not d!1202281) (not b_lambda!118323) (not b!4048977) (not tb!243597) (not d!1202225) (not b!4048623) (not b!4049089) (not b!4049032) (not bm!287823) (not b!4048740) (not d!1202273) (not b!4048864) (not d!1202301) (not b!4049088) (not b!4048741) (not b!4048612) (not b!4048822) (not d!1202385) (not b!4048955) (not b!4048641) (not b!4048656) (not b!4048742) (not d!1202267) (not b!4048836) (not d!1202261) (not d!1202243) (not b!4048659) (not b!4049090) (not d!1202369) (not b!4048577) (not d!1202277) (not b!4048978) (not b!4048566) (not b!4048746) (not b!4048660) (not b!4048628) (not b!4049040) (not d!1202413) (not b_lambda!118321) (not b!4048561) (not d!1202219) (not b!4048956) (not b!4048803) (not b!4048998) (not b!4048823) (not b_next!113391) (not b!4049041) (not b!4048974) (not b!4048873) (not d!1202419) b_and!311389 (not b!4049025) (not b!4048789) (not b!4048558) (not b!4049068) (not b!4048973) (not b!4049050) (not d!1202201) (not b!4048758) (not b!4048959) (not b_lambda!118309) (not b!4048830) (not b!4048985) (not d!1202329) (not b!4049054) (not d!1202377) (not d!1202205) (not d!1202295) (not b!4049005) (not b!4049051) (not d!1202381) (not d!1202383) (not bm!287822) (not b!4048881) (not b!4049052) (not b!4049018) (not d!1202335) (not b!4048991) (not d!1202279) (not bm!287812) (not d!1202321) (not d!1202379) (not b!4048862) (not b!4048616) (not b!4048883) (not b!4048784) (not b!4048775) (not b!4048829) (not b!4048993) (not b!4049027) (not b!4049003) (not b!4048809) (not d!1202191) (not b!4049035) (not b!4048871) (not b!4048898) (not b!4049085) (not tb!243585) (not d!1202255) (not d!1202293) (not b!4048562) (not b!4049031) (not b!4048636) (not b!4048743) (not d!1202425) (not b!4048839) (not b_next!113387) (not d!1202189) (not b!4049022) (not b!4048620) (not b!4049045) (not b!4048761) b_and!311371 (not b!4049094) (not d!1202247) (not b_next!113393) (not d!1202229) (not b!4048788) (not b!4048958) (not tb!243593) (not b!4049093) (not b!4049015) (not b!4048634) (not b!4048821) (not d!1202231) (not b!4048906) tp_is_empty!20653 (not b!4048795) (not b!4049075) (not d!1202315) (not b!4048808) (not b!4048655) (not d!1202395) (not d!1202415) (not b!4048989) (not d!1202285))
(check-sat b_and!311373 b_and!311387 (not b_next!113395) (not b_next!113385) b_and!311363 (not b_next!113387) b_and!311365 (not b_next!113389) (not b_next!113391) b_and!311389 b_and!311371 (not b_next!113393))
