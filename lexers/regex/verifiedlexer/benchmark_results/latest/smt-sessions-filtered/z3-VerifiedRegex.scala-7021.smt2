; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372888 () Bool)

(assert start!372888)

(declare-fun b!3963724 () Bool)

(declare-fun b_free!109533 () Bool)

(declare-fun b_next!110237 () Bool)

(assert (=> b!3963724 (= b_free!109533 (not b_next!110237))))

(declare-fun tp!1208186 () Bool)

(declare-fun b_and!304411 () Bool)

(assert (=> b!3963724 (= tp!1208186 b_and!304411)))

(declare-fun b_free!109535 () Bool)

(declare-fun b_next!110239 () Bool)

(assert (=> b!3963724 (= b_free!109535 (not b_next!110239))))

(declare-fun tp!1208179 () Bool)

(declare-fun b_and!304413 () Bool)

(assert (=> b!3963724 (= tp!1208179 b_and!304413)))

(declare-fun b!3963742 () Bool)

(declare-fun b_free!109537 () Bool)

(declare-fun b_next!110241 () Bool)

(assert (=> b!3963742 (= b_free!109537 (not b_next!110241))))

(declare-fun tp!1208193 () Bool)

(declare-fun b_and!304415 () Bool)

(assert (=> b!3963742 (= tp!1208193 b_and!304415)))

(declare-fun b_free!109539 () Bool)

(declare-fun b_next!110243 () Bool)

(assert (=> b!3963742 (= b_free!109539 (not b_next!110243))))

(declare-fun tp!1208181 () Bool)

(declare-fun b_and!304417 () Bool)

(assert (=> b!3963742 (= tp!1208181 b_and!304417)))

(declare-fun b!3963741 () Bool)

(declare-fun b_free!109541 () Bool)

(declare-fun b_next!110245 () Bool)

(assert (=> b!3963741 (= b_free!109541 (not b_next!110245))))

(declare-fun tp!1208189 () Bool)

(declare-fun b_and!304419 () Bool)

(assert (=> b!3963741 (= tp!1208189 b_and!304419)))

(declare-fun b_free!109543 () Bool)

(declare-fun b_next!110247 () Bool)

(assert (=> b!3963741 (= b_free!109543 (not b_next!110247))))

(declare-fun tp!1208191 () Bool)

(declare-fun b_and!304421 () Bool)

(assert (=> b!3963741 (= tp!1208191 b_and!304421)))

(declare-fun tp!1208185 () Bool)

(declare-datatypes ((List!42373 0))(
  ( (Nil!42249) (Cons!42249 (h!47669 (_ BitVec 16)) (t!330132 List!42373)) )
))
(declare-datatypes ((TokenValue!6860 0))(
  ( (FloatLiteralValue!13720 (text!48465 List!42373)) (TokenValueExt!6859 (__x!25937 Int)) (Broken!34300 (value!209563 List!42373)) (Object!6983) (End!6860) (Def!6860) (Underscore!6860) (Match!6860) (Else!6860) (Error!6860) (Case!6860) (If!6860) (Extends!6860) (Abstract!6860) (Class!6860) (Val!6860) (DelimiterValue!13720 (del!6920 List!42373)) (KeywordValue!6866 (value!209564 List!42373)) (CommentValue!13720 (value!209565 List!42373)) (WhitespaceValue!13720 (value!209566 List!42373)) (IndentationValue!6860 (value!209567 List!42373)) (String!48017) (Int32!6860) (Broken!34301 (value!209568 List!42373)) (Boolean!6861) (Unit!60836) (OperatorValue!6863 (op!6920 List!42373)) (IdentifierValue!13720 (value!209569 List!42373)) (IdentifierValue!13721 (value!209570 List!42373)) (WhitespaceValue!13721 (value!209571 List!42373)) (True!13720) (False!13720) (Broken!34302 (value!209572 List!42373)) (Broken!34303 (value!209573 List!42373)) (True!13721) (RightBrace!6860) (RightBracket!6860) (Colon!6860) (Null!6860) (Comma!6860) (LeftBracket!6860) (False!13721) (LeftBrace!6860) (ImaginaryLiteralValue!6860 (text!48466 List!42373)) (StringLiteralValue!20580 (value!209574 List!42373)) (EOFValue!6860 (value!209575 List!42373)) (IdentValue!6860 (value!209576 List!42373)) (DelimiterValue!13721 (value!209577 List!42373)) (DedentValue!6860 (value!209578 List!42373)) (NewLineValue!6860 (value!209579 List!42373)) (IntegerValue!20580 (value!209580 (_ BitVec 32)) (text!48467 List!42373)) (IntegerValue!20581 (value!209581 Int) (text!48468 List!42373)) (Times!6860) (Or!6860) (Equal!6860) (Minus!6860) (Broken!34304 (value!209582 List!42373)) (And!6860) (Div!6860) (LessEqual!6860) (Mod!6860) (Concat!18395) (Not!6860) (Plus!6860) (SpaceValue!6860 (value!209583 List!42373)) (IntegerValue!20582 (value!209584 Int) (text!48469 List!42373)) (StringLiteralValue!20581 (text!48470 List!42373)) (FloatLiteralValue!13721 (text!48471 List!42373)) (BytesLiteralValue!6860 (value!209585 List!42373)) (CommentValue!13721 (value!209586 List!42373)) (StringLiteralValue!20582 (value!209587 List!42373)) (ErrorTokenValue!6860 (msg!6921 List!42373)) )
))
(declare-datatypes ((C!23256 0))(
  ( (C!23257 (val!13722 Int)) )
))
(declare-datatypes ((Regex!11535 0))(
  ( (ElementMatch!11535 (c!687700 C!23256)) (Concat!18396 (regOne!23582 Regex!11535) (regTwo!23582 Regex!11535)) (EmptyExpr!11535) (Star!11535 (reg!11864 Regex!11535)) (EmptyLang!11535) (Union!11535 (regOne!23583 Regex!11535) (regTwo!23583 Regex!11535)) )
))
(declare-datatypes ((String!48018 0))(
  ( (String!48019 (value!209588 String)) )
))
(declare-datatypes ((List!42374 0))(
  ( (Nil!42250) (Cons!42250 (h!47670 C!23256) (t!330133 List!42374)) )
))
(declare-datatypes ((IArray!25687 0))(
  ( (IArray!25688 (innerList!12901 List!42374)) )
))
(declare-datatypes ((Conc!12841 0))(
  ( (Node!12841 (left!32038 Conc!12841) (right!32368 Conc!12841) (csize!25912 Int) (cheight!13052 Int)) (Leaf!19863 (xs!16147 IArray!25687) (csize!25913 Int)) (Empty!12841) )
))
(declare-datatypes ((BalanceConc!25276 0))(
  ( (BalanceConc!25277 (c!687701 Conc!12841)) )
))
(declare-datatypes ((TokenValueInjection!13148 0))(
  ( (TokenValueInjection!13149 (toValue!9110 Int) (toChars!8969 Int)) )
))
(declare-datatypes ((Rule!13060 0))(
  ( (Rule!13061 (regex!6630 Regex!11535) (tag!7490 String!48018) (isSeparator!6630 Bool) (transformation!6630 TokenValueInjection!13148)) )
))
(declare-datatypes ((Token!12398 0))(
  ( (Token!12399 (value!209589 TokenValue!6860) (rule!9614 Rule!13060) (size!31630 Int) (originalCharacters!7230 List!42374)) )
))
(declare-datatypes ((List!42375 0))(
  ( (Nil!42251) (Cons!42251 (h!47671 Token!12398) (t!330134 List!42375)) )
))
(declare-fun suffixTokens!72 () List!42375)

(declare-fun e!2454788 () Bool)

(declare-fun e!2454755 () Bool)

(declare-fun b!3963713 () Bool)

(declare-fun inv!56474 (String!48018) Bool)

(declare-fun inv!56477 (TokenValueInjection!13148) Bool)

(assert (=> b!3963713 (= e!2454788 (and tp!1208185 (inv!56474 (tag!7490 (rule!9614 (h!47671 suffixTokens!72)))) (inv!56477 (transformation!6630 (rule!9614 (h!47671 suffixTokens!72)))) e!2454755))))

(declare-fun b!3963714 () Bool)

(declare-fun e!2454752 () Bool)

(declare-fun e!2454759 () Bool)

(declare-fun tp!1208180 () Bool)

(assert (=> b!3963714 (= e!2454752 (and e!2454759 tp!1208180))))

(declare-fun e!2454787 () Bool)

(declare-fun prefixTokens!80 () List!42375)

(declare-fun b!3963715 () Bool)

(declare-fun e!2454774 () Bool)

(declare-fun tp!1208183 () Bool)

(declare-fun inv!56478 (Token!12398) Bool)

(assert (=> b!3963715 (= e!2454774 (and (inv!56478 (h!47671 prefixTokens!80)) e!2454787 tp!1208183))))

(declare-fun b!3963716 () Bool)

(declare-fun e!2454771 () Bool)

(declare-fun tp_is_empty!20041 () Bool)

(declare-fun tp!1208187 () Bool)

(assert (=> b!3963716 (= e!2454771 (and tp_is_empty!20041 tp!1208187))))

(declare-fun bm!285455 () Bool)

(declare-datatypes ((LexerInterface!6219 0))(
  ( (LexerInterfaceExt!6216 (__x!25938 Int)) (Lexer!6217) )
))
(declare-fun thiss!20629 () LexerInterface!6219)

(declare-datatypes ((List!42376 0))(
  ( (Nil!42252) (Cons!42252 (h!47672 Rule!13060) (t!330135 List!42376)) )
))
(declare-fun rules!2768 () List!42376)

(declare-datatypes ((tuple2!41546 0))(
  ( (tuple2!41547 (_1!23907 Token!12398) (_2!23907 List!42374)) )
))
(declare-fun lt!1387444 () tuple2!41546)

(declare-datatypes ((tuple2!41548 0))(
  ( (tuple2!41549 (_1!23908 List!42375) (_2!23908 List!42374)) )
))
(declare-fun call!285460 () tuple2!41548)

(declare-fun lexList!1987 (LexerInterface!6219 List!42376 List!42374) tuple2!41548)

(assert (=> bm!285455 (= call!285460 (lexList!1987 thiss!20629 rules!2768 (_2!23907 lt!1387444)))))

(declare-fun b!3963717 () Bool)

(declare-fun res!1604349 () Bool)

(declare-fun e!2454784 () Bool)

(assert (=> b!3963717 (=> (not res!1604349) (not e!2454784))))

(declare-fun prefix!426 () List!42374)

(declare-fun isEmpty!25276 (List!42374) Bool)

(assert (=> b!3963717 (= res!1604349 (not (isEmpty!25276 prefix!426)))))

(declare-fun b!3963718 () Bool)

(declare-fun e!2454753 () Bool)

(declare-fun tp!1208188 () Bool)

(assert (=> b!3963718 (= e!2454753 (and tp_is_empty!20041 tp!1208188))))

(declare-fun b!3963719 () Bool)

(declare-datatypes ((Unit!60837 0))(
  ( (Unit!60838) )
))
(declare-fun e!2454775 () Unit!60837)

(declare-fun Unit!60839 () Unit!60837)

(assert (=> b!3963719 (= e!2454775 Unit!60839)))

(declare-fun lt!1387441 () Unit!60837)

(declare-fun suffix!1176 () List!42374)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2578 (List!42374 List!42374) Unit!60837)

(assert (=> b!3963719 (= lt!1387441 (lemmaConcatTwoListThenFirstIsPrefix!2578 prefix!426 suffix!1176))))

(declare-fun lt!1387443 () List!42374)

(declare-fun isPrefix!3719 (List!42374 List!42374) Bool)

(assert (=> b!3963719 (isPrefix!3719 prefix!426 lt!1387443)))

(declare-fun lt!1387449 () Unit!60837)

(declare-fun lt!1387460 () List!42374)

(declare-fun lemmaIsPrefixSameLengthThenSameList!841 (List!42374 List!42374 List!42374) Unit!60837)

(assert (=> b!3963719 (= lt!1387449 (lemmaIsPrefixSameLengthThenSameList!841 lt!1387460 prefix!426 lt!1387443))))

(assert (=> b!3963719 (= lt!1387460 prefix!426)))

(declare-datatypes ((Option!9050 0))(
  ( (None!9049) (Some!9049 (v!39395 tuple2!41546)) )
))
(declare-fun lt!1387440 () Option!9050)

(declare-fun lt!1387463 () Unit!60837)

(declare-fun lemmaSamePrefixThenSameSuffix!1928 (List!42374 List!42374 List!42374 List!42374 List!42374) Unit!60837)

(assert (=> b!3963719 (= lt!1387463 (lemmaSamePrefixThenSameSuffix!1928 lt!1387460 (_2!23907 (v!39395 lt!1387440)) prefix!426 suffix!1176 lt!1387443))))

(assert (=> b!3963719 false))

(declare-fun e!2454785 () Bool)

(declare-fun b!3963720 () Bool)

(declare-fun tp!1208190 () Bool)

(declare-fun inv!21 (TokenValue!6860) Bool)

(assert (=> b!3963720 (= e!2454787 (and (inv!21 (value!209589 (h!47671 prefixTokens!80))) e!2454785 tp!1208190))))

(declare-fun b!3963721 () Bool)

(declare-fun e!2454766 () Bool)

(declare-fun e!2454782 () Bool)

(assert (=> b!3963721 (= e!2454766 e!2454782)))

(declare-fun res!1604348 () Bool)

(assert (=> b!3963721 (=> res!1604348 e!2454782)))

(declare-fun lt!1387467 () List!42374)

(declare-fun lt!1387457 () List!42374)

(assert (=> b!3963721 (= res!1604348 (or (not (= lt!1387467 lt!1387443)) (not (= lt!1387467 lt!1387457))))))

(declare-fun lt!1387434 () List!42374)

(declare-fun ++!11017 (List!42374 List!42374) List!42374)

(assert (=> b!3963721 (= lt!1387467 (++!11017 lt!1387434 suffix!1176))))

(declare-fun b!3963722 () Bool)

(declare-fun e!2454783 () Bool)

(declare-fun e!2454757 () Bool)

(assert (=> b!3963722 (= e!2454783 e!2454757)))

(declare-fun res!1604357 () Bool)

(assert (=> b!3963722 (=> res!1604357 e!2454757)))

(declare-fun lt!1387435 () List!42374)

(assert (=> b!3963722 (= res!1604357 (not (= lt!1387435 (_2!23907 (v!39395 lt!1387440)))))))

(assert (=> b!3963722 (= (_2!23907 (v!39395 lt!1387440)) lt!1387435)))

(declare-fun lt!1387442 () Unit!60837)

(assert (=> b!3963722 (= lt!1387442 (lemmaSamePrefixThenSameSuffix!1928 lt!1387460 (_2!23907 (v!39395 lt!1387440)) lt!1387460 lt!1387435 lt!1387443))))

(declare-fun lt!1387428 () List!42374)

(assert (=> b!3963722 (isPrefix!3719 lt!1387460 lt!1387428)))

(declare-fun lt!1387461 () Unit!60837)

(assert (=> b!3963722 (= lt!1387461 (lemmaConcatTwoListThenFirstIsPrefix!2578 lt!1387460 lt!1387435))))

(declare-fun b!3963723 () Bool)

(declare-fun res!1604353 () Bool)

(assert (=> b!3963723 (=> (not res!1604353) (not e!2454784))))

(declare-fun isEmpty!25277 (List!42376) Bool)

(assert (=> b!3963723 (= res!1604353 (not (isEmpty!25277 rules!2768)))))

(declare-fun e!2454762 () Bool)

(assert (=> b!3963724 (= e!2454762 (and tp!1208186 tp!1208179))))

(declare-fun b!3963725 () Bool)

(declare-fun e!2454756 () Bool)

(declare-fun tp!1208194 () Bool)

(assert (=> b!3963725 (= e!2454756 (and tp_is_empty!20041 tp!1208194))))

(declare-fun b!3963726 () Bool)

(declare-fun res!1604360 () Bool)

(declare-fun e!2454769 () Bool)

(assert (=> b!3963726 (=> res!1604360 e!2454769)))

(declare-fun lt!1387426 () tuple2!41548)

(declare-fun lt!1387466 () tuple2!41548)

(declare-fun lt!1387432 () List!42375)

(assert (=> b!3963726 (= res!1604360 (or (not (= prefixTokens!80 lt!1387432)) (not (= lt!1387466 lt!1387426))))))

(declare-fun b!3963727 () Bool)

(declare-fun e!2454754 () Unit!60837)

(declare-fun Unit!60840 () Unit!60837)

(assert (=> b!3963727 (= e!2454754 Unit!60840)))

(declare-fun suffixResult!91 () List!42374)

(declare-fun lt!1387459 () Unit!60837)

(declare-fun lt!1387462 () List!42375)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!158 (LexerInterface!6219 List!42376 List!42374 List!42374 List!42375 List!42374 List!42375) Unit!60837)

(assert (=> b!3963727 (= lt!1387459 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!158 thiss!20629 rules!2768 suffix!1176 (_2!23907 lt!1387444) suffixTokens!72 suffixResult!91 lt!1387462))))

(declare-fun res!1604362 () Bool)

(declare-fun ++!11018 (List!42375 List!42375) List!42375)

(assert (=> b!3963727 (= res!1604362 (not (= call!285460 (tuple2!41549 (++!11018 lt!1387462 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2454778 () Bool)

(assert (=> b!3963727 (=> (not res!1604362) (not e!2454778))))

(assert (=> b!3963727 e!2454778))

(declare-fun b!3963728 () Bool)

(declare-fun e!2454767 () Unit!60837)

(declare-fun Unit!60841 () Unit!60837)

(assert (=> b!3963728 (= e!2454767 Unit!60841)))

(declare-fun lt!1387455 () Int)

(declare-fun size!31631 (List!42374) Int)

(assert (=> b!3963728 (= lt!1387455 (size!31631 lt!1387443))))

(declare-fun lt!1387430 () Unit!60837)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1399 (LexerInterface!6219 List!42376 List!42374 List!42374 List!42374 Rule!13060) Unit!60837)

(assert (=> b!3963728 (= lt!1387430 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1399 thiss!20629 rules!2768 lt!1387460 lt!1387443 (_2!23907 (v!39395 lt!1387440)) (rule!9614 (_1!23907 (v!39395 lt!1387440)))))))

(declare-fun lt!1387436 () Int)

(declare-fun lt!1387429 () TokenValue!6860)

(declare-fun maxPrefixOneRule!2573 (LexerInterface!6219 Rule!13060 List!42374) Option!9050)

(assert (=> b!3963728 (= (maxPrefixOneRule!2573 thiss!20629 (rule!9614 (_1!23907 (v!39395 lt!1387440))) lt!1387443) (Some!9049 (tuple2!41547 (Token!12399 lt!1387429 (rule!9614 (_1!23907 (v!39395 lt!1387440))) lt!1387436 lt!1387460) (_2!23907 (v!39395 lt!1387440)))))))

(declare-fun get!13935 (Option!9050) tuple2!41546)

(assert (=> b!3963728 (= lt!1387444 (get!13935 lt!1387440))))

(declare-fun c!687697 () Bool)

(declare-fun lt!1387431 () Int)

(assert (=> b!3963728 (= c!687697 (< (size!31631 (_2!23907 lt!1387444)) lt!1387431))))

(declare-fun lt!1387453 () Unit!60837)

(declare-fun e!2454764 () Unit!60837)

(assert (=> b!3963728 (= lt!1387453 e!2454764)))

(assert (=> b!3963728 false))

(declare-fun b!3963729 () Bool)

(declare-fun c!687699 () Bool)

(declare-fun isEmpty!25278 (List!42375) Bool)

(assert (=> b!3963729 (= c!687699 (isEmpty!25278 lt!1387462))))

(declare-fun tail!6173 (List!42375) List!42375)

(assert (=> b!3963729 (= lt!1387462 (tail!6173 prefixTokens!80))))

(assert (=> b!3963729 (= e!2454764 e!2454754)))

(declare-fun b!3963730 () Bool)

(declare-fun tp!1208184 () Bool)

(assert (=> b!3963730 (= e!2454785 (and tp!1208184 (inv!56474 (tag!7490 (rule!9614 (h!47671 prefixTokens!80)))) (inv!56477 (transformation!6630 (rule!9614 (h!47671 prefixTokens!80)))) e!2454762))))

(declare-fun b!3963731 () Bool)

(declare-fun e!2454789 () Bool)

(declare-fun e!2454776 () Bool)

(assert (=> b!3963731 (= e!2454789 e!2454776)))

(declare-fun res!1604363 () Bool)

(assert (=> b!3963731 (=> (not res!1604363) (not e!2454776))))

(get-info :version)

(assert (=> b!3963731 (= res!1604363 ((_ is Some!9049) lt!1387440))))

(declare-fun maxPrefix!3523 (LexerInterface!6219 List!42376 List!42374) Option!9050)

(assert (=> b!3963731 (= lt!1387440 (maxPrefix!3523 thiss!20629 rules!2768 lt!1387443))))

(declare-fun b!3963732 () Bool)

(declare-fun e!2454770 () Bool)

(declare-fun e!2454758 () Bool)

(assert (=> b!3963732 (= e!2454770 e!2454758)))

(declare-fun res!1604343 () Bool)

(assert (=> b!3963732 (=> res!1604343 e!2454758)))

(declare-fun lt!1387433 () Int)

(assert (=> b!3963732 (= res!1604343 (<= lt!1387433 lt!1387431))))

(declare-fun lt!1387452 () Unit!60837)

(assert (=> b!3963732 (= lt!1387452 e!2454775)))

(declare-fun c!687698 () Bool)

(assert (=> b!3963732 (= c!687698 (= lt!1387433 lt!1387431))))

(declare-fun lt!1387445 () Unit!60837)

(assert (=> b!3963732 (= lt!1387445 e!2454767)))

(declare-fun c!687696 () Bool)

(assert (=> b!3963732 (= c!687696 (< lt!1387433 lt!1387431))))

(assert (=> b!3963732 (= lt!1387431 (size!31631 suffix!1176))))

(assert (=> b!3963732 (= lt!1387433 (size!31631 (_2!23907 (v!39395 lt!1387440))))))

(declare-fun b!3963733 () Bool)

(declare-fun e!2454765 () Bool)

(assert (=> b!3963733 (= e!2454765 (= (size!31630 (_1!23907 (v!39395 lt!1387440))) (size!31631 (originalCharacters!7230 (_1!23907 (v!39395 lt!1387440))))))))

(declare-fun b!3963734 () Bool)

(declare-fun Unit!60842 () Unit!60837)

(assert (=> b!3963734 (= e!2454767 Unit!60842)))

(declare-fun b!3963735 () Bool)

(declare-fun e!2454761 () Bool)

(assert (=> b!3963735 (= e!2454784 e!2454761)))

(declare-fun res!1604344 () Bool)

(assert (=> b!3963735 (=> (not res!1604344) (not e!2454761))))

(declare-fun lt!1387458 () List!42375)

(declare-fun lt!1387424 () tuple2!41548)

(assert (=> b!3963735 (= res!1604344 (= lt!1387424 (tuple2!41549 lt!1387458 suffixResult!91)))))

(assert (=> b!3963735 (= lt!1387424 (lexList!1987 thiss!20629 rules!2768 lt!1387443))))

(assert (=> b!3963735 (= lt!1387458 (++!11018 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3963735 (= lt!1387443 (++!11017 prefix!426 suffix!1176))))

(declare-fun b!3963736 () Bool)

(declare-fun res!1604347 () Bool)

(assert (=> b!3963736 (=> (not res!1604347) (not e!2454784))))

(assert (=> b!3963736 (= res!1604347 (not (isEmpty!25278 prefixTokens!80)))))

(declare-fun b!3963737 () Bool)

(declare-fun e!2454760 () Bool)

(assert (=> b!3963737 (= e!2454760 false)))

(declare-fun b!3963738 () Bool)

(assert (=> b!3963738 (= e!2454769 true)))

(assert (=> b!3963738 false))

(declare-fun lt!1387456 () Unit!60837)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!158 (LexerInterface!6219 List!42376 List!42374 List!42374 List!42375 List!42374) Unit!60837)

(assert (=> b!3963738 (= lt!1387456 (lemmaLexWithSmallerInputCannotProduceSameResults!158 thiss!20629 rules!2768 (_2!23907 (v!39395 lt!1387440)) suffix!1176 suffixTokens!72 suffixResult!91))))

(declare-fun b!3963739 () Bool)

(assert (=> b!3963739 (= e!2454757 e!2454769)))

(declare-fun res!1604364 () Bool)

(assert (=> b!3963739 (=> res!1604364 e!2454769)))

(declare-fun lt!1387438 () List!42375)

(assert (=> b!3963739 (= res!1604364 (not (= lt!1387466 (tuple2!41549 (++!11018 lt!1387438 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3963739 (= lt!1387438 (tail!6173 prefixTokens!80))))

(declare-fun lt!1387425 () List!42374)

(assert (=> b!3963739 (isPrefix!3719 lt!1387425 lt!1387435)))

(declare-fun lt!1387439 () Unit!60837)

(assert (=> b!3963739 (= lt!1387439 (lemmaConcatTwoListThenFirstIsPrefix!2578 lt!1387425 suffix!1176))))

(declare-fun res!1604358 () Bool)

(assert (=> start!372888 (=> (not res!1604358) (not e!2454784))))

(assert (=> start!372888 (= res!1604358 ((_ is Lexer!6217) thiss!20629))))

(assert (=> start!372888 e!2454784))

(assert (=> start!372888 e!2454753))

(assert (=> start!372888 true))

(assert (=> start!372888 e!2454771))

(assert (=> start!372888 e!2454752))

(assert (=> start!372888 e!2454774))

(declare-fun e!2454786 () Bool)

(assert (=> start!372888 e!2454786))

(assert (=> start!372888 e!2454756))

(declare-fun b!3963740 () Bool)

(declare-fun res!1604361 () Bool)

(assert (=> b!3963740 (=> res!1604361 e!2454758)))

(declare-fun head!8441 (List!42375) Token!12398)

(assert (=> b!3963740 (= res!1604361 (not (= (head!8441 prefixTokens!80) (_1!23907 (v!39395 lt!1387440)))))))

(assert (=> b!3963741 (= e!2454755 (and tp!1208189 tp!1208191))))

(declare-fun e!2454777 () Bool)

(assert (=> b!3963742 (= e!2454777 (and tp!1208193 tp!1208181))))

(declare-fun b!3963743 () Bool)

(declare-fun res!1604345 () Bool)

(assert (=> b!3963743 (=> (not res!1604345) (not e!2454784))))

(declare-fun rulesInvariant!5562 (LexerInterface!6219 List!42376) Bool)

(assert (=> b!3963743 (= res!1604345 (rulesInvariant!5562 thiss!20629 rules!2768))))

(declare-fun b!3963744 () Bool)

(declare-fun Unit!60843 () Unit!60837)

(assert (=> b!3963744 (= e!2454754 Unit!60843)))

(declare-fun lt!1387446 () Unit!60837)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!624 (List!42374 List!42374 List!42374 List!42374) Unit!60837)

(assert (=> b!3963744 (= lt!1387446 (lemmaConcatSameAndSameSizesThenSameLists!624 lt!1387460 (_2!23907 (v!39395 lt!1387440)) lt!1387460 (_2!23907 lt!1387444)))))

(assert (=> b!3963744 (= (_2!23907 (v!39395 lt!1387440)) (_2!23907 lt!1387444))))

(declare-fun lt!1387437 () Unit!60837)

(assert (=> b!3963744 (= lt!1387437 (lemmaLexWithSmallerInputCannotProduceSameResults!158 thiss!20629 rules!2768 suffix!1176 (_2!23907 lt!1387444) suffixTokens!72 suffixResult!91))))

(declare-fun res!1604354 () Bool)

(assert (=> b!3963744 (= res!1604354 (not (= call!285460 lt!1387426)))))

(assert (=> b!3963744 (=> (not res!1604354) (not e!2454760))))

(assert (=> b!3963744 e!2454760))

(declare-fun b!3963745 () Bool)

(declare-fun res!1604351 () Bool)

(assert (=> b!3963745 (=> res!1604351 e!2454770)))

(assert (=> b!3963745 (= res!1604351 (or (not (= lt!1387466 (tuple2!41549 (_1!23908 lt!1387466) (_2!23908 lt!1387466)))) (= (_2!23907 (v!39395 lt!1387440)) suffix!1176)))))

(declare-fun b!3963746 () Bool)

(declare-fun e!2454790 () Bool)

(assert (=> b!3963746 (= e!2454790 e!2454766)))

(declare-fun res!1604342 () Bool)

(assert (=> b!3963746 (=> res!1604342 e!2454766)))

(assert (=> b!3963746 (= res!1604342 (not (= lt!1387434 prefix!426)))))

(assert (=> b!3963746 (= lt!1387434 (++!11017 lt!1387460 lt!1387425))))

(declare-fun getSuffix!2170 (List!42374 List!42374) List!42374)

(assert (=> b!3963746 (= lt!1387425 (getSuffix!2170 prefix!426 lt!1387460))))

(declare-fun b!3963747 () Bool)

(assert (=> b!3963747 (= e!2454778 false)))

(declare-fun tp!1208182 () Bool)

(declare-fun b!3963748 () Bool)

(assert (=> b!3963748 (= e!2454759 (and tp!1208182 (inv!56474 (tag!7490 (h!47672 rules!2768))) (inv!56477 (transformation!6630 (h!47672 rules!2768))) e!2454777))))

(declare-fun b!3963749 () Bool)

(declare-fun e!2454781 () Bool)

(assert (=> b!3963749 (= e!2454776 (not e!2454781))))

(declare-fun res!1604359 () Bool)

(assert (=> b!3963749 (=> res!1604359 e!2454781)))

(assert (=> b!3963749 (= res!1604359 (not (= lt!1387457 lt!1387443)))))

(assert (=> b!3963749 (= lt!1387466 (lexList!1987 thiss!20629 rules!2768 (_2!23907 (v!39395 lt!1387440))))))

(declare-fun lt!1387448 () List!42374)

(assert (=> b!3963749 (and (= (size!31630 (_1!23907 (v!39395 lt!1387440))) lt!1387436) (= (originalCharacters!7230 (_1!23907 (v!39395 lt!1387440))) lt!1387460) (= (v!39395 lt!1387440) (tuple2!41547 (Token!12399 lt!1387429 (rule!9614 (_1!23907 (v!39395 lt!1387440))) lt!1387436 lt!1387460) lt!1387448)))))

(assert (=> b!3963749 (= lt!1387436 (size!31631 lt!1387460))))

(assert (=> b!3963749 e!2454765))

(declare-fun res!1604341 () Bool)

(assert (=> b!3963749 (=> (not res!1604341) (not e!2454765))))

(assert (=> b!3963749 (= res!1604341 (= (value!209589 (_1!23907 (v!39395 lt!1387440))) lt!1387429))))

(declare-fun apply!9861 (TokenValueInjection!13148 BalanceConc!25276) TokenValue!6860)

(declare-fun seqFromList!4889 (List!42374) BalanceConc!25276)

(assert (=> b!3963749 (= lt!1387429 (apply!9861 (transformation!6630 (rule!9614 (_1!23907 (v!39395 lt!1387440)))) (seqFromList!4889 lt!1387460)))))

(assert (=> b!3963749 (= (_2!23907 (v!39395 lt!1387440)) lt!1387448)))

(declare-fun lt!1387427 () Unit!60837)

(assert (=> b!3963749 (= lt!1387427 (lemmaSamePrefixThenSameSuffix!1928 lt!1387460 (_2!23907 (v!39395 lt!1387440)) lt!1387460 lt!1387448 lt!1387443))))

(assert (=> b!3963749 (= lt!1387448 (getSuffix!2170 lt!1387443 lt!1387460))))

(assert (=> b!3963749 (isPrefix!3719 lt!1387460 lt!1387457)))

(assert (=> b!3963749 (= lt!1387457 (++!11017 lt!1387460 (_2!23907 (v!39395 lt!1387440))))))

(declare-fun lt!1387465 () Unit!60837)

(assert (=> b!3963749 (= lt!1387465 (lemmaConcatTwoListThenFirstIsPrefix!2578 lt!1387460 (_2!23907 (v!39395 lt!1387440))))))

(declare-fun list!15680 (BalanceConc!25276) List!42374)

(declare-fun charsOf!4448 (Token!12398) BalanceConc!25276)

(assert (=> b!3963749 (= lt!1387460 (list!15680 (charsOf!4448 (_1!23907 (v!39395 lt!1387440)))))))

(declare-fun ruleValid!2572 (LexerInterface!6219 Rule!13060) Bool)

(assert (=> b!3963749 (ruleValid!2572 thiss!20629 (rule!9614 (_1!23907 (v!39395 lt!1387440))))))

(declare-fun lt!1387464 () Unit!60837)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1648 (LexerInterface!6219 Rule!13060 List!42376) Unit!60837)

(assert (=> b!3963749 (= lt!1387464 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1648 thiss!20629 (rule!9614 (_1!23907 (v!39395 lt!1387440))) rules!2768))))

(declare-fun lt!1387454 () Unit!60837)

(declare-fun lemmaCharactersSize!1283 (Token!12398) Unit!60837)

(assert (=> b!3963749 (= lt!1387454 (lemmaCharactersSize!1283 (_1!23907 (v!39395 lt!1387440))))))

(declare-fun b!3963750 () Bool)

(declare-fun tp!1208178 () Bool)

(declare-fun e!2454768 () Bool)

(assert (=> b!3963750 (= e!2454786 (and (inv!56478 (h!47671 suffixTokens!72)) e!2454768 tp!1208178))))

(declare-fun b!3963751 () Bool)

(declare-fun tp!1208192 () Bool)

(assert (=> b!3963751 (= e!2454768 (and (inv!21 (value!209589 (h!47671 suffixTokens!72))) e!2454788 tp!1208192))))

(declare-fun b!3963752 () Bool)

(assert (=> b!3963752 (= e!2454761 e!2454789)))

(declare-fun res!1604355 () Bool)

(assert (=> b!3963752 (=> (not res!1604355) (not e!2454789))))

(assert (=> b!3963752 (= res!1604355 (= (lexList!1987 thiss!20629 rules!2768 suffix!1176) lt!1387426))))

(assert (=> b!3963752 (= lt!1387426 (tuple2!41549 suffixTokens!72 suffixResult!91))))

(declare-fun b!3963753 () Bool)

(declare-fun Unit!60844 () Unit!60837)

(assert (=> b!3963753 (= e!2454764 Unit!60844)))

(declare-fun b!3963754 () Bool)

(declare-fun res!1604352 () Bool)

(assert (=> b!3963754 (=> res!1604352 e!2454769)))

(assert (=> b!3963754 (= res!1604352 (not (isEmpty!25278 lt!1387438)))))

(declare-fun b!3963755 () Bool)

(assert (=> b!3963755 (= e!2454781 e!2454770)))

(declare-fun res!1604346 () Bool)

(assert (=> b!3963755 (=> res!1604346 e!2454770)))

(assert (=> b!3963755 (= res!1604346 (not (= lt!1387424 (tuple2!41549 (++!11018 lt!1387432 (_1!23908 lt!1387466)) (_2!23908 lt!1387466)))))))

(assert (=> b!3963755 (= lt!1387432 (Cons!42251 (_1!23907 (v!39395 lt!1387440)) Nil!42251))))

(declare-fun b!3963756 () Bool)

(declare-fun Unit!60845 () Unit!60837)

(assert (=> b!3963756 (= e!2454775 Unit!60845)))

(declare-fun b!3963757 () Bool)

(assert (=> b!3963757 (= e!2454782 e!2454783)))

(declare-fun res!1604356 () Bool)

(assert (=> b!3963757 (=> res!1604356 e!2454783)))

(assert (=> b!3963757 (= res!1604356 (or (not (= lt!1387443 lt!1387467)) (not (= lt!1387443 lt!1387428)) (not (= lt!1387457 lt!1387428))))))

(assert (=> b!3963757 (= lt!1387467 lt!1387428)))

(assert (=> b!3963757 (= lt!1387428 (++!11017 lt!1387460 lt!1387435))))

(assert (=> b!3963757 (= lt!1387435 (++!11017 lt!1387425 suffix!1176))))

(declare-fun lt!1387451 () Unit!60837)

(declare-fun lemmaConcatAssociativity!2364 (List!42374 List!42374 List!42374) Unit!60837)

(assert (=> b!3963757 (= lt!1387451 (lemmaConcatAssociativity!2364 lt!1387460 lt!1387425 suffix!1176))))

(declare-fun b!3963758 () Bool)

(assert (=> b!3963758 (= e!2454758 e!2454790)))

(declare-fun res!1604350 () Bool)

(assert (=> b!3963758 (=> res!1604350 e!2454790)))

(assert (=> b!3963758 (= res!1604350 (>= lt!1387436 (size!31631 prefix!426)))))

(assert (=> b!3963758 (isPrefix!3719 lt!1387460 prefix!426)))

(declare-fun lt!1387447 () Unit!60837)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!315 (List!42374 List!42374 List!42374) Unit!60837)

(assert (=> b!3963758 (= lt!1387447 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!315 prefix!426 lt!1387460 lt!1387443))))

(assert (=> b!3963758 (isPrefix!3719 prefix!426 lt!1387443)))

(declare-fun lt!1387450 () Unit!60837)

(assert (=> b!3963758 (= lt!1387450 (lemmaConcatTwoListThenFirstIsPrefix!2578 prefix!426 suffix!1176))))

(assert (= (and start!372888 res!1604358) b!3963723))

(assert (= (and b!3963723 res!1604353) b!3963743))

(assert (= (and b!3963743 res!1604345) b!3963736))

(assert (= (and b!3963736 res!1604347) b!3963717))

(assert (= (and b!3963717 res!1604349) b!3963735))

(assert (= (and b!3963735 res!1604344) b!3963752))

(assert (= (and b!3963752 res!1604355) b!3963731))

(assert (= (and b!3963731 res!1604363) b!3963749))

(assert (= (and b!3963749 res!1604341) b!3963733))

(assert (= (and b!3963749 (not res!1604359)) b!3963755))

(assert (= (and b!3963755 (not res!1604346)) b!3963745))

(assert (= (and b!3963745 (not res!1604351)) b!3963732))

(assert (= (and b!3963732 c!687696) b!3963728))

(assert (= (and b!3963732 (not c!687696)) b!3963734))

(assert (= (and b!3963728 c!687697) b!3963729))

(assert (= (and b!3963728 (not c!687697)) b!3963753))

(assert (= (and b!3963729 c!687699) b!3963744))

(assert (= (and b!3963729 (not c!687699)) b!3963727))

(assert (= (and b!3963744 res!1604354) b!3963737))

(assert (= (and b!3963727 res!1604362) b!3963747))

(assert (= (or b!3963744 b!3963727) bm!285455))

(assert (= (and b!3963732 c!687698) b!3963719))

(assert (= (and b!3963732 (not c!687698)) b!3963756))

(assert (= (and b!3963732 (not res!1604343)) b!3963740))

(assert (= (and b!3963740 (not res!1604361)) b!3963758))

(assert (= (and b!3963758 (not res!1604350)) b!3963746))

(assert (= (and b!3963746 (not res!1604342)) b!3963721))

(assert (= (and b!3963721 (not res!1604348)) b!3963757))

(assert (= (and b!3963757 (not res!1604356)) b!3963722))

(assert (= (and b!3963722 (not res!1604357)) b!3963739))

(assert (= (and b!3963739 (not res!1604364)) b!3963754))

(assert (= (and b!3963754 (not res!1604352)) b!3963726))

(assert (= (and b!3963726 (not res!1604360)) b!3963738))

(assert (= (and start!372888 ((_ is Cons!42250) suffixResult!91)) b!3963718))

(assert (= (and start!372888 ((_ is Cons!42250) suffix!1176)) b!3963716))

(assert (= b!3963748 b!3963742))

(assert (= b!3963714 b!3963748))

(assert (= (and start!372888 ((_ is Cons!42252) rules!2768)) b!3963714))

(assert (= b!3963730 b!3963724))

(assert (= b!3963720 b!3963730))

(assert (= b!3963715 b!3963720))

(assert (= (and start!372888 ((_ is Cons!42251) prefixTokens!80)) b!3963715))

(assert (= b!3963713 b!3963741))

(assert (= b!3963751 b!3963713))

(assert (= b!3963750 b!3963751))

(assert (= (and start!372888 ((_ is Cons!42251) suffixTokens!72)) b!3963750))

(assert (= (and start!372888 ((_ is Cons!42250) prefix!426)) b!3963725))

(declare-fun m!4533007 () Bool)

(assert (=> bm!285455 m!4533007))

(declare-fun m!4533009 () Bool)

(assert (=> b!3963758 m!4533009))

(declare-fun m!4533011 () Bool)

(assert (=> b!3963758 m!4533011))

(declare-fun m!4533013 () Bool)

(assert (=> b!3963758 m!4533013))

(declare-fun m!4533015 () Bool)

(assert (=> b!3963758 m!4533015))

(declare-fun m!4533017 () Bool)

(assert (=> b!3963758 m!4533017))

(declare-fun m!4533019 () Bool)

(assert (=> b!3963748 m!4533019))

(declare-fun m!4533021 () Bool)

(assert (=> b!3963748 m!4533021))

(declare-fun m!4533023 () Bool)

(assert (=> b!3963721 m!4533023))

(declare-fun m!4533025 () Bool)

(assert (=> b!3963731 m!4533025))

(declare-fun m!4533027 () Bool)

(assert (=> b!3963727 m!4533027))

(declare-fun m!4533029 () Bool)

(assert (=> b!3963727 m!4533029))

(declare-fun m!4533031 () Bool)

(assert (=> b!3963752 m!4533031))

(declare-fun m!4533033 () Bool)

(assert (=> b!3963750 m!4533033))

(declare-fun m!4533035 () Bool)

(assert (=> b!3963735 m!4533035))

(declare-fun m!4533037 () Bool)

(assert (=> b!3963735 m!4533037))

(declare-fun m!4533039 () Bool)

(assert (=> b!3963735 m!4533039))

(declare-fun m!4533041 () Bool)

(assert (=> b!3963720 m!4533041))

(declare-fun m!4533043 () Bool)

(assert (=> b!3963755 m!4533043))

(declare-fun m!4533045 () Bool)

(assert (=> b!3963729 m!4533045))

(declare-fun m!4533047 () Bool)

(assert (=> b!3963729 m!4533047))

(declare-fun m!4533049 () Bool)

(assert (=> b!3963751 m!4533049))

(declare-fun m!4533051 () Bool)

(assert (=> b!3963739 m!4533051))

(assert (=> b!3963739 m!4533047))

(declare-fun m!4533053 () Bool)

(assert (=> b!3963739 m!4533053))

(declare-fun m!4533055 () Bool)

(assert (=> b!3963739 m!4533055))

(declare-fun m!4533057 () Bool)

(assert (=> b!3963749 m!4533057))

(declare-fun m!4533059 () Bool)

(assert (=> b!3963749 m!4533059))

(declare-fun m!4533061 () Bool)

(assert (=> b!3963749 m!4533061))

(declare-fun m!4533063 () Bool)

(assert (=> b!3963749 m!4533063))

(declare-fun m!4533065 () Bool)

(assert (=> b!3963749 m!4533065))

(declare-fun m!4533067 () Bool)

(assert (=> b!3963749 m!4533067))

(declare-fun m!4533069 () Bool)

(assert (=> b!3963749 m!4533069))

(declare-fun m!4533071 () Bool)

(assert (=> b!3963749 m!4533071))

(declare-fun m!4533073 () Bool)

(assert (=> b!3963749 m!4533073))

(declare-fun m!4533075 () Bool)

(assert (=> b!3963749 m!4533075))

(declare-fun m!4533077 () Bool)

(assert (=> b!3963749 m!4533077))

(assert (=> b!3963749 m!4533071))

(assert (=> b!3963749 m!4533069))

(declare-fun m!4533079 () Bool)

(assert (=> b!3963749 m!4533079))

(declare-fun m!4533081 () Bool)

(assert (=> b!3963749 m!4533081))

(declare-fun m!4533083 () Bool)

(assert (=> b!3963749 m!4533083))

(declare-fun m!4533085 () Bool)

(assert (=> b!3963754 m!4533085))

(assert (=> b!3963719 m!4533017))

(assert (=> b!3963719 m!4533013))

(declare-fun m!4533087 () Bool)

(assert (=> b!3963719 m!4533087))

(declare-fun m!4533089 () Bool)

(assert (=> b!3963719 m!4533089))

(declare-fun m!4533091 () Bool)

(assert (=> b!3963736 m!4533091))

(declare-fun m!4533093 () Bool)

(assert (=> b!3963740 m!4533093))

(declare-fun m!4533095 () Bool)

(assert (=> b!3963733 m!4533095))

(declare-fun m!4533097 () Bool)

(assert (=> b!3963713 m!4533097))

(declare-fun m!4533099 () Bool)

(assert (=> b!3963713 m!4533099))

(declare-fun m!4533101 () Bool)

(assert (=> b!3963743 m!4533101))

(declare-fun m!4533103 () Bool)

(assert (=> b!3963728 m!4533103))

(declare-fun m!4533105 () Bool)

(assert (=> b!3963728 m!4533105))

(declare-fun m!4533107 () Bool)

(assert (=> b!3963728 m!4533107))

(declare-fun m!4533109 () Bool)

(assert (=> b!3963728 m!4533109))

(declare-fun m!4533111 () Bool)

(assert (=> b!3963728 m!4533111))

(declare-fun m!4533113 () Bool)

(assert (=> b!3963717 m!4533113))

(declare-fun m!4533115 () Bool)

(assert (=> b!3963746 m!4533115))

(declare-fun m!4533117 () Bool)

(assert (=> b!3963746 m!4533117))

(declare-fun m!4533119 () Bool)

(assert (=> b!3963715 m!4533119))

(declare-fun m!4533121 () Bool)

(assert (=> b!3963722 m!4533121))

(declare-fun m!4533123 () Bool)

(assert (=> b!3963722 m!4533123))

(declare-fun m!4533125 () Bool)

(assert (=> b!3963722 m!4533125))

(declare-fun m!4533127 () Bool)

(assert (=> b!3963730 m!4533127))

(declare-fun m!4533129 () Bool)

(assert (=> b!3963730 m!4533129))

(declare-fun m!4533131 () Bool)

(assert (=> b!3963723 m!4533131))

(declare-fun m!4533133 () Bool)

(assert (=> b!3963744 m!4533133))

(declare-fun m!4533135 () Bool)

(assert (=> b!3963744 m!4533135))

(declare-fun m!4533137 () Bool)

(assert (=> b!3963738 m!4533137))

(declare-fun m!4533139 () Bool)

(assert (=> b!3963757 m!4533139))

(declare-fun m!4533141 () Bool)

(assert (=> b!3963757 m!4533141))

(declare-fun m!4533143 () Bool)

(assert (=> b!3963757 m!4533143))

(declare-fun m!4533145 () Bool)

(assert (=> b!3963732 m!4533145))

(declare-fun m!4533147 () Bool)

(assert (=> b!3963732 m!4533147))

(check-sat (not b_next!110245) (not b!3963735) b_and!304411 (not b!3963719) b_and!304419 (not b!3963721) (not b!3963752) (not b!3963727) (not b!3963746) (not b!3963755) (not b!3963728) (not b!3963722) (not b!3963754) (not b!3963751) (not b!3963720) (not b!3963716) (not b!3963743) (not b!3963738) (not b!3963725) (not b!3963713) (not b_next!110247) (not b!3963730) (not b_next!110241) (not b!3963750) (not b!3963758) (not bm!285455) (not b_next!110239) (not b!3963740) tp_is_empty!20041 (not b!3963736) (not b!3963732) (not b!3963757) (not b!3963733) (not b!3963731) (not b_next!110237) (not b!3963744) b_and!304417 (not b!3963749) (not b!3963714) (not b_next!110243) b_and!304415 (not b!3963723) (not b!3963717) b_and!304413 b_and!304421 (not b!3963715) (not b!3963729) (not b!3963739) (not b!3963718) (not b!3963748))
(check-sat (not b_next!110245) (not b_next!110247) b_and!304411 (not b_next!110241) (not b_next!110239) b_and!304419 (not b_next!110243) b_and!304415 b_and!304413 b_and!304421 (not b_next!110237) b_and!304417)
